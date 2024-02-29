/**
 * \file Cpu1_Main.c
 * \brief CPU1 functions.
 *
 * \version iLLD_Demos_1_0_0_8_0
 * \copyright Copyright (c) 2014 Infineon Technologies AG. All rights reserved.
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
 */

#include "CpuX_Main.h"
#include <SysSe/Bsp/Bsp.h>
#include "SysSe/Time/Ifx_DateTime.h"
#include "IfxLldVersion.h"
#include "SysCFG_Cores.h"

extern int core_sync;

int core2_main(void)
{
	/* !!WATCHDOG0 AND SAFETY WATCHDOG ARE DISABLED HERE!! -------------------*/
    IfxScuWdt_disableCpuWatchdog(IfxScuWdt_getCpuWatchdogPassword());
    IfxScuWdt_disableSafetyWatchdog(IfxScuWdt_getSafetyWatchdogPassword());

    /* Enable the global interrupts of this CPU */
    IfxCpu_enableInterrupts();

    /* Enable(Disable) Core 2 */
#if Enable_Core2
    __enable();
#else
    __disable();
#endif

    initTime();

    while(core_sync == 0)  	__nop();

    /* background endless loop */
    while (TRUE)
    {
    	Core2_free();
    	__nop();
    }

    return 0;
}


__inline void delay2_ms(unsigned int tic_ms)
{
	unsigned int tic_sub1, tic_sub2;
	unsigned int tic_start, tic_temp = 0;

	for( tic_sub1 = 0; tic_sub1 < tic_ms; tic_sub1++ )
	{
		for( tic_sub2 = 0; tic_sub2 < 4000; tic_sub2++ )
		{
			tic_start = IO_getSTM2Tic();
			while(tic_temp < 1000)
			{
				tic_temp = IO_getSTM2Tic() - tic_start;
				if(tic_temp < 0) tic_start = 0;
				__nop();
			}
		}
	}
}
