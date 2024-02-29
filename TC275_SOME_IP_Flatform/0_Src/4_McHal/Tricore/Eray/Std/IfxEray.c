/**
 * \file IfxEray.c
 * \brief ERAY  basic functionality
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

/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/

#include "IfxEray.h"

/******************************************************************************/
/*-------------------------Function Implementations---------------------------*/
/******************************************************************************/

uint16 IfxEray_calcHeaderCrc(uint8 payloadLength, uint16 frameId, boolean startupFrameIndicator, boolean syncFrameIndicator)
{
    uint32 headerValue = ((syncFrameIndicator & 0x1) << 19) | ((startupFrameIndicator & 0x1) << 18) | ((frameId & 0x7FF) << 7) | (payloadLength &
                                                                                                                                  0x7F);

    uint32 crcInit = 0x1A;
    uint32 length  = 20;
    uint32 crcNext;
    uint32 crcPoly = 0x385;
    uint32 crcRegX = crcInit;
    uint32 headerTemp, regTemp;

    headerValue <<= 11;
    crcRegX     <<= 21;
    crcPoly     <<= 21;

    while (length--)
    {
        headerValue <<= 1;
        headerTemp    = headerValue & 0x80000000;
        regTemp       = crcRegX & 0x80000000;

        if (headerTemp ^ regTemp) // Step 1
        {
            crcNext = 1;
        }
        else
        {
            crcNext = 0;
        }

        crcRegX <<= 1;          // Step 2

        if (crcNext)
        {
            crcRegX ^= crcPoly; // Step 3
        }
    }

    crcRegX >>= 21;

    return (uint16)crcRegX;
}


boolean IfxEray_changePocState(Ifx_ERAY *eray, IfxEray_PocCommand pocCommand)
{
    boolean result;

    // wait if Communication controller is busy
    while (eray->SUCC1.B.PBSY == 1)
    {}

    eray->SUCC1.B.CMD = pocCommand;

    // if command not accepted, return FALSE
    if (eray->SUCC1.B.CMD == 0)
    {
        result = FALSE;
    }
    else
    {
        result = TRUE;
    }

    return result;
}


void IfxEray_clearAllFlags(Ifx_ERAY *eray)
{
    eray->EIR.U  = 0xFFFFFFFFU;   /* Clear Error Int.                        */
    eray->SIR.U  = 0xFFFFFFFFU;   /* Clear Status Int.                       */
    eray->EIER.U = 0xFFFFFFFFU;   /* Disable all Error Int.                  */
    eray->SIER.U = 0xFFFFFFFFU;   /* Disable all Status Int.                 */
    eray->MHDS.U = 0x7F7F7FFFU;   /* Clear Error Int.                        */
}


void IfxEray_enableInterruptLines(Ifx_ERAY *eray)
{
    eray->ILE.U   = 0x00000003U; // enable both the interrupt lines (INT0SRC, INT1SRC)
    eray->EILS.U  = 0x00000000U; // all interrupt lines to INT0SRC (Error Service Request Line Select)
    eray->SILS.U  = 0x00000800U; // TOBC(Transfer Output Buffer Completed) interrupt line to INT1SRC
    eray->SIES.U  = 0x0303FFFFU; // all status interrupts are enabled
    eray->EIES.U  = 0x07070FFFU; // all error interrupts are enabled
    eray->NDIC1.U = 0x00000000U; // all interrupt lines to NADT0SRC (New Data Interrupt Control)
    eray->NDIC2.U = 0x00000000U; // all interrupt lines to NADT0SRC
    eray->NDIC3.U = 0x00000000U; // all interrupt lines to NADT0SRC
    eray->NDIC4.U = 0x00000000U; // all interrupt lines to NADT0SRC
    eray->MSIC1.U = 0x00000000U; // all interrupt lines to MBSC0SRC (Message Buffer Status Changed Interrupt Control)
    eray->MSIC2.U = 0x00000000U; // all interrupt lines to MBSC0SRC
    eray->MSIC3.U = 0x00000000U; // all interrupt lines to MBSC0SRC
    eray->MSIC4.U = 0x00000000U; // all interrupt lines to MBSC0SRC
}


void IfxEray_readData(Ifx_ERAY *eray, uint32 *data, uint8 payloadLength)
{
    if (data != NULL_PTR)
    {
        uint16 length = (payloadLength + 1) / 2;
        uint8  index;

        for (index = 0; index < length; index++)
        {
            *data++ = eray->RDDS_1S[index].U;
        }
    }
}

void IfxEray_readData_Byte(Ifx_ERAY *eray, uint8 *data, uint8 payloadLength)
{
    if (data != NULL_PTR)
    {
        uint16 length = (payloadLength + 1) / 2;
        uint8  index;

        for (index = 0; index < length; index++)
        {
            *data++ = eray->RDDS_1S[index].B.MDRB0;
        }
    }
}

void IfxEray_readFrame(Ifx_ERAY *eray, IfxEray_ReceivedHeader *header, uint32 *data, Ifx_SizeT maxPayloadLength)
{
    {
        Ifx_ERAY_RDHS1 rdhs1;
        rdhs1.U                          = eray->RDHS1.U;
        Ifx_ERAY_RDHS2 rdhs2;
        rdhs2.U                          = eray->RDHS2.U;
        Ifx_ERAY_RDHS3 rdhs3;
        rdhs3.U                          = eray->RDHS3.U;

        header->frameId                  = rdhs1.B.FID;
        header->payloadLength            = rdhs2.B.PLR;
        header->headerCrc                = rdhs2.B.CRC;
        header->reservedBit              = rdhs3.B.RES;
        header->payloadPreambleIndicator = rdhs3.B.PPI;
        header->nullFrameIndicator       = rdhs3.B.NFI;
        header->syncFrame                = rdhs3.B.SYN;
        header->startupFrame             = rdhs3.B.SFI;
        header->cycleNumber              = rdhs3.B.RCC;
    }

    IfxEray_readData(eray, data, (header->payloadLength > maxPayloadLength) ? maxPayloadLength : header->payloadLength);
}


void IfxEray_resetModule(Ifx_ERAY *eray)
{
    eray->KRST1.B.RST = 1;      /* Only if both Kernel reset bits are set a reset is executed */
    eray->KRST0.B.RST = 1;

    while (eray->KRST0.B.RSTSTAT == 0)
    {
        /* Wait until reset is executed */
    }

    eray->KRSTCLR.B.CLR = 1;     /* Clear Kernel reset status bit */
}


void IfxEray_setMessageBufferInterruptDestination(Ifx_ERAY *eray, uint8 messageBuffer, uint8 messageBufferDestination)
{
    uint8           ix      = messageBuffer / 32;
    uint32          mask    = 1 << (messageBuffer % 32);
    Ifx_ERAY_MSIC1 *msicSFR = (Ifx_ERAY_MSIC1 *)((uint32)&eray->MSIC1 + 4 * ix);

    if (messageBufferDestination == FALSE)
    {
        msicSFR->U &= ~mask;
    }
    else
    {
        msicSFR->U |= mask;
    }
}


void IfxEray_setNewDataInterruptDestination(Ifx_ERAY *eray, uint8 ndat, uint8 ndatDestination)
{
    uint8           ix      = ndat / 32;
    uint32          mask    = 1 << (ndat % 32);
    Ifx_ERAY_NDIC1 *ndicSFR = (Ifx_ERAY_NDIC1 *)((uint32)&eray->NDIC1 + 4 * ix);

    if (ndatDestination == FALSE)
    {
        ndicSFR->U &= ~mask;
    }
    else
    {
        ndicSFR->U |= mask;
    }
}


void IfxEray_setPocReady(Ifx_ERAY *eray)
{
    // wait CC is busy
    while (eray->SUCC1.B.PBSY == 1)
    {}

    // Ready unlock sequence
    eray->LCK.B.CLK   = 0xCE;
    eray->LCK.B.CLK   = 0x31;
    eray->SUCC1.B.CMD = IfxEray_PocCommand_ready;
}


void IfxEray_setSlot(Ifx_ERAY *eray, IfxEray_Header *header, uint32 *data, IfxEray_SlotConfig *slotConfig)
{
    // wait if Host is busy with another transfer
    while (IfxEray_getInputBufferBusyHostStatus(eray) == TRUE)
    {}

    if (header != NULL_PTR)
    {
        {
            Ifx_ERAY_WRHS1 wrhs1;
            wrhs1.U       = 0;
            wrhs1.B.FID   = header->frameId;
            wrhs1.B.CYC   = header->cycleCode;
            wrhs1.B.CHA   = header->channelAFiltered;
            wrhs1.B.CHB   = header->channelBFiltered;
            wrhs1.B.CFG   = header->bufferDirection;
            wrhs1.B.PPIT  = header->transmitPayloadIndicatior;
            wrhs1.B.TXM   = header->transmissionMode;
            wrhs1.B.MBI   = header->bufferServiceEnabled;
            eray->WRHS1.U = wrhs1.U;
        }
        {
            Ifx_ERAY_WRHS2 wrhs2;
            wrhs2.U = 0;

            if (header->bufferDirection == IfxEray_BufferDirection_transmit)
            {
                wrhs2.B.CRC = IfxEray_calcHeaderCrc(header->payloadLength, header->frameId, header->startupFrameIndicator, header->syncFrameIndicator);
            }

            wrhs2.B.PLC   = header->payloadLength;
            eray->WRHS2.U = wrhs2.U;
        }

        eray->WRHS3.U = header->dataPointer;
    }

    IfxEray_writeData(eray, data, header->payloadLength);

    eray->IBCM.B.LHSH  = slotConfig->headerTransfered;
    eray->IBCM.B.LDSH  = slotConfig->dataTransfered;
    eray->IBCM.B.STXRH = slotConfig->transferRequested;
    eray->IBCR.B.IBRH  = slotConfig->bufferIndex; // Trigger for transfer (Input Buffer -> Message Buffer)

    // wait if Shadow is busy with another transfer
    while (IfxEray_getInputBufferBusyShadowStatus(eray) == TRUE)
    {}

    while (IfxEray_getInputBufferBusyHostStatus(eray) == TRUE)
    {}
}


void IfxEray_writeData(Ifx_ERAY *eray, uint32 *data, uint8 payloadLength)
{
    if (data != NULL_PTR)
    {
        uint16 length = (payloadLength + 1) / 2;
        uint8  index;

        for (index = 0; index < length; index++)
        {
            eray->WRDS_1S[index].U = *data++;
        }
    }
}
