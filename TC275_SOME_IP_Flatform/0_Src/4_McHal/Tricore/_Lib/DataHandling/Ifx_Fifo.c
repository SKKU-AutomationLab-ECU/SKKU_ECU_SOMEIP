/**
 * \file Ifx_Fifo.c
 * \brief FIFO functions
 *
 * \version iLLD_1_0_0_8_0
 * \copyright Copyright (c) 2013 Infineon Technologies AG. All rights reserved.
 *
 *
 *                                 IMPORTANT NOTICE
 *
 *
 * Infineon Technologies AG (Infineon) is supplying this file for use
 * exclusively with Infineon's microcontroller products. This file can be freely
 * distributed within development tools that are supporting such microcontroller
 * products.
 *
 * THIS SOFTWARE IS PROVIDED "AS IS".  NO WARRANTIES, WHETHER EXPRESS, IMPLIED
 * OR STATUTORY, INCLUDING, BUT NOT LIMITED TO, IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE APPLY TO THIS SOFTWARE.
 * INFINEON SHALL NOT, IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL,
 * OR CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER.
 *
 */

//------------------------------------------------------------------------------
#include "Ifx_Fifo.h"
#include <stdlib.h>
#include "Ifx_CircularBuffer.h"
#include "_Utilities/Ifx_Assert.h"
#include "Cpu/Std/IfxCpu.h"
#include "SysSe/Bsp/Bsp.h"
//------------------------------------------------------------------------------
/*
 * Note: the fifo function can be used to exchange data between the main task and interrupts:
 * - a mutex using the interrupt enable / disable is implemented to insure
 * data consitancy
 * - it is supposed that all access to 8, 16, 32 bit data are atomic and are
 * therefore not protected by a critical section
 * - the following is possible
 * reader(main) -- writer(main)
 * reader(main) -- writer(interrupt)
 * reader(interrupt) -- writer(main)
 * reader(interrupt) -- writer(interrupt)
 * - Only one reader and one writer are allowed by FIFO, no nested read write
 * Implementation note: as an interrupt runs at a higher cpu level than the thread
 * the interrupt is not disabled in the IntfifoXXX() functions
 * This is valid is an OS is used.
 *
 */
//------------------------------------------------------------------------------
Ifx_Fifo *Ifx_Fifo_create(Ifx_SizeT size, Ifx_SizeT elementSize)
{
    Ifx_Fifo *fifo = NULL_PTR;

    size = Ifx_AlignOn32(size);                 /* data transfer is optimised for 32 bit access */

    fifo = malloc(size + sizeof(Ifx_Fifo) + 8); /* +8 because of padding in case the pointer is not aligned on 64 */

    if (IFX_VALIDATE(IFX_VERBOSE_LEVEL_ERROR, (fifo != NULL_PTR)))
    {
        fifo = Ifx_Fifo_init(fifo, size, elementSize);
    }

    return fifo;
}


void Ifx_Fifo_destroy(Ifx_Fifo *fifo)
{
    free(fifo);
}


Ifx_Fifo *Ifx_Fifo_init(void *buffer, Ifx_SizeT size, Ifx_SizeT elementSize)
{
    Ifx_Fifo *fifo = NULL_PTR;

    size = Ifx_AlignOn32(size);     /* data transfer is optimised for 32 bit access */
    IFX_ASSERT(IFX_VERBOSE_LEVEL_ERROR, elementSize <= size);
    /* Check size over maximum FIFO size */
    IFX_ASSERT(IFX_VERBOSE_LEVEL_ERROR, (size <= IFX_SIZET_MAX)); 

    {
        fifo                     = (Ifx_Fifo *)buffer;
        fifo->eventReader        = FALSE;
        fifo->eventWriter        = TRUE;
        fifo->buffer             = (uint8 *)Ifx_AlignOn64(((uint32)fifo) + sizeof(Ifx_Fifo));
        fifo->shared.count       = 0;
        fifo->shared.maxcount    = 0;
        fifo->shared.readerWaitx = fifo->shared.writerWaitx = 0;
        fifo->startIndex         = fifo->endIndex = 0;
        fifo->size               = size;
        fifo->elementSize        = elementSize;
    }

    return fifo;
}


/**
 * \param count in bytes
 */
static Ifx_SizeT Ifx_Fifo_beginRead(Ifx_Fifo *fifo, Ifx_SizeT count)
{
    boolean   interruptState;
    Ifx_SizeT blockSize;

    interruptState           = IfxCpu_disableInterrupts();
    blockSize                = __min(count, Ifx_Fifo_readCount(fifo));
    blockSize               -= blockSize % fifo->elementSize;
    fifo->eventReader        = FALSE;
    fifo->shared.readerWaitx = __min(count - blockSize, fifo->size);
    IfxCpu_restoreInterrupts(interruptState);

    return blockSize;
}


boolean Ifx_Fifo_canReadCount(Ifx_Fifo *fifo, Ifx_SizeT count, Ifx_TickTime timeout)
{
    boolean result;

    IFX_ASSERT(IFX_VERBOSE_LEVEL_ERROR, fifo != NULL_PTR);

    if (count < fifo->elementSize)
    {                           /* Only complete elements can be read from the buffer */
        result = FALSE;
    }
    else
    {
        boolean interruptState;
        sint32  waitCount;
        count          = __min(count, fifo->size);
        interruptState = IfxCpu_disableInterrupts();
        waitCount      = count - Ifx_Fifo_readCount(fifo);

        if (waitCount <= 0)
        {
            fifo->shared.readerWaitx = 0;
            fifo->eventReader        = TRUE;
            IfxCpu_restoreInterrupts(interruptState);
            result                   = TRUE;
        }
        else
        {
            Ifx_TickTime DeadLine = getDeadLine(timeout);
            fifo->eventReader        = FALSE;
            fifo->shared.readerWaitx = waitCount;
            IfxCpu_restoreInterrupts(interruptState);

            while ((fifo->eventReader == FALSE) && (isDeadLine(DeadLine) == FALSE))
            {}

            result = fifo->eventReader == TRUE;
        }
    }

    return result;
}


/**
 * \param count in bytes
 */
static Ifx_SizeT Ifx_Fifo_readEnd(Ifx_Fifo *fifo, Ifx_SizeT count, Ifx_SizeT blockSize)
{
    boolean interruptState;

    /* Set the shared values */
    interruptState      = IfxCpu_disableInterrupts();

    fifo->shared.count -= blockSize;

    if (fifo->shared.writerWaitx != 0)
    {
        fifo->shared.writerWaitx -= blockSize;

        if (fifo->shared.writerWaitx <= 0)
        {
            fifo->shared.writerWaitx = 0;
            fifo->eventWriter        = TRUE; /* Signal the writer */
        }
    }

    IfxCpu_restoreInterrupts(interruptState);

    return count - blockSize;
}


Ifx_SizeT Ifx_Fifo_read(Ifx_Fifo *fifo, void *data, Ifx_SizeT count, Ifx_TickTime timeout)
{
    Ifx_TickTime       DeadLine;
    Ifx_SizeT          blockSize;
    Ifx_CircularBuffer buffer;
    boolean            Stop = FALSE;

    IFX_ASSERT(IFX_VERBOSE_LEVEL_ERROR, fifo != NULL_PTR);
    IFX_ASSERT(IFX_VERBOSE_LEVEL_ERROR, data != NULL_PTR);

    if (count != 0)
    {
        buffer.base   = fifo->buffer;
        buffer.length = (uint16)fifo->size;         /* size always fit into 16 bit */
        buffer.index  = (uint16)fifo->startIndex;   /* startIndex always fit into size */
        DeadLine      = getDeadLine(timeout);

        do
        {
            blockSize = Ifx_Fifo_beginRead(fifo, count);

            if (blockSize != 0)
            {
                /* read element from the buffer */
                data  = Ifx_CircularBuffer_read8(&buffer, data, blockSize);
                count = Ifx_Fifo_readEnd(fifo, count, blockSize);
            }

            if ((Stop != FALSE) || (isDeadLine(DeadLine) != FALSE))
            {
                break;
            }

            if (count != 0)
            {
                while ((fifo->eventReader == FALSE) && (isDeadLine(DeadLine) == FALSE))
                {}

                Stop = (fifo->eventReader == FALSE);    /* If the function timeout, the maximum number of characters are read before returning */
            }
        } while (count != 0);

        fifo->startIndex = buffer.index;
    }

    return count;
}


void Ifx_Fifo_clear(Ifx_Fifo *fifo)
{
    boolean interruptState;

    interruptState = IfxCpu_disableInterrupts();

    if (fifo->shared.writerWaitx != 0)
    {
        fifo->shared.writerWaitx = 0;
        fifo->eventWriter        = TRUE; /* Signal the writer */
    }

    fifo->eventReader        = FALSE;
    fifo->shared.readerWaitx = 0;
    fifo->shared.count       = 0;
    fifo->shared.maxcount    = 0;
    fifo->startIndex         = fifo->endIndex;
    IfxCpu_restoreInterrupts(interruptState);
}


static Ifx_SizeT Ifx_Fifo_beginWrite(Ifx_Fifo *fifo, Ifx_SizeT count)
{
    Ifx_SizeT blockSize;
    boolean   interruptState;

    interruptState           = IfxCpu_disableInterrupts();
    blockSize                = __min(count, fifo->size - Ifx_Fifo_readCount(fifo));
    blockSize               -= blockSize % fifo->elementSize;
    fifo->eventWriter        = FALSE;
    fifo->shared.writerWaitx = __min(count - blockSize, fifo->size);
    IfxCpu_restoreInterrupts(interruptState);

    return blockSize;
}


boolean Ifx_Fifo_canWriteCount(Ifx_Fifo *fifo, Ifx_SizeT count, Ifx_TickTime timeout)
{
    boolean result;

    IFX_ASSERT(IFX_VERBOSE_LEVEL_ERROR, fifo != NULL_PTR);
    count = __min(count, fifo->size);

    if (count < fifo->elementSize)
    {                           /* Only complete elements can be written to the buffer */
        result = FALSE;
    }
    else
    {
        boolean interruptState;
        interruptState = IfxCpu_disableInterrupts();

        if ((fifo->size - Ifx_Fifo_readCount(fifo)) >= count)
        {
            fifo->shared.writerWaitx = 0;
            fifo->eventWriter        = TRUE;
            IfxCpu_restoreInterrupts(interruptState);
            result                   = TRUE;
        }
        else
        {
            Ifx_TickTime DeadLine = getDeadLine(timeout);
            fifo->eventWriter        = FALSE;
            fifo->shared.writerWaitx = __max(0, count - (fifo->size - Ifx_Fifo_readCount(fifo)));
            IfxCpu_restoreInterrupts(interruptState);

            while ((fifo->eventWriter == FALSE) && (isDeadLine(DeadLine) == FALSE))
            {}

            result = fifo->eventWriter == TRUE;
        }
    }

    return result;
}


static Ifx_SizeT Ifx_Fifo_endWrite(Ifx_Fifo *fifo, Ifx_SizeT count, Ifx_SizeT blockSize)
{
    boolean interruptState;

    /* Set the shared values */
    interruptState        = IfxCpu_disableInterrupts();

    fifo->shared.count   += blockSize;
    fifo->shared.maxcount = __max(fifo->shared.maxcount, fifo->shared.count);   /* Update maximum value */

    if (fifo->shared.readerWaitx != 0)
    {
        fifo->shared.readerWaitx -= blockSize;

        if (fifo->shared.readerWaitx <= 0)
        {
            fifo->shared.readerWaitx = 0;
            fifo->eventReader        = TRUE; /* Signal the reader - a re-scheduling may occur at this point! */
        }
    }

    IfxCpu_restoreInterrupts(interruptState);

    return count - blockSize;
}


Ifx_SizeT Ifx_Fifo_write(Ifx_Fifo *fifo, const void *data, Ifx_SizeT count, Ifx_TickTime timeout)
{
    Ifx_TickTime       DeadLine;
    Ifx_SizeT          blockSize;
    Ifx_CircularBuffer buffer;
    boolean            Stop = FALSE;

    IFX_ASSERT(IFX_VERBOSE_LEVEL_ERROR, fifo != NULL_PTR);
    IFX_ASSERT(IFX_VERBOSE_LEVEL_ERROR, data != NULL_PTR);

    if (count != 0)
    {
        buffer.base   = fifo->buffer;
        buffer.length = (uint16)fifo->size;     /* size always fit into 16 bit */
        buffer.index  = (uint16)fifo->endIndex; /* startIndex always fit into size */
        DeadLine      = getDeadLine(timeout);

        do
        {
            blockSize = Ifx_Fifo_beginWrite(fifo, count);

            if (blockSize != 0)
            {
                /* write element to the buffer */
                data  = Ifx_CircularBuffer_write8(&buffer, data, blockSize);
                count = Ifx_Fifo_endWrite(fifo, count, blockSize);
            }

            if ((Stop != FALSE) || (isDeadLine(DeadLine) != FALSE))
            {
                break;
            }

            if (count != 0)
            {
                while ((fifo->eventWriter == FALSE) && (isDeadLine(DeadLine) == FALSE))
                {}

                Stop = fifo->eventWriter == FALSE;  /* If the function timeout, the maximum number of characters are written before returning */
            }
        } while (count != 0);

        fifo->endIndex = buffer.index;
    }

    return count;
}


//------------------------------------------------------------------------------
