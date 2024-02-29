/**
 * \file Cpu0_Main.c
 * \brief System initialization and main program implementation.
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
#include "System_Configuration.h"

#include "Device_IF.h"
#include "SysCFG_Log.h"

/**
 * Includes for TCP/IP
 * added by kys
 */
#include "Configuration.h"
#include "Ifx_Lwip.h"

#include "someip.h"
#include "some_service.h"

#include "Application.h"
#include "Peripherals_ETH.h"

App_Cpu0 g_AppCpu0; /**< \brief CPU 0 global data */
int core_sync = 0;

int core0_main(void)
{
	/* !!WATCHDOG0 AND SAFETY WATCHDOG ARE DISABLED HERE!! -------------------*/
    IfxScuWdt_disableCpuWatchdog(IfxScuWdt_getCpuWatchdogPassword());
    IfxScuWdt_disableSafetyWatchdog(IfxScuWdt_getSafetyWatchdogPassword());

    /* Enable the Global Interrupts of this CPU ------------------------------*/
    IfxCpu_enableInterrupts();

    /* Initialize Setting for System Log Line --------------------------------*/
    IO_Set_SysLog();

    /* Print System Log Line -------------------------------------------------*/
    printf_SysLog("\x1b[2JHello World!\r\n\n");
    printf_SysLog("This is Automotive Embedded System.\r\n");
    printf_SysLog("Created by SKKU Automation Lab.\r\n");
    printf_SysLog("HYUNDAI NGV Corporation.\r\n\n");
    printf_SysLog("MCU run...\r\n\n");

	/* initialize the TCP/IP stack */
	/* Define a MAC Address */
	eth_addr_t ethAddr;
	ethAddr.addr[0] = 0x00;
	ethAddr.addr[1] = 0x11;
	ethAddr.addr[2] = 0x22;
	ethAddr.addr[3] = 0x33;
	ethAddr.addr[4] = 0x44;
	ethAddr.addr[5] = 0x55;
	printf_SysLog("MAC Address: 00:11:22:33:44:55\r\n\n");

	/* initialize the lwip stack with unique id */
	IfxCpu_disableInterrupts();
	Ifx_Lwip_init(ethAddr);
	IfxCpu_enableInterrupts();

#if SOMEIP_Opt
	//someip_service_init();
	printf_SysLog("initialize the SOME/IP stack!\r\n");
#endif

	/** This is UDP Task **/
#if UDP_Opt
	udp_echo_init();
	printf_SysLog("initialize the UDP/IP stack\r\n");
#endif

    /* Enable(Disable) Core 0 */
#if Enable_Core0
	__enable();
#else
	__disable();
#endif

    initTime();

    core_sync = SetMCU();

    while(core_sync == 0)   __nop();

    /* background endless loop */
    while (TRUE)
    {
    	//sys_check_timeouts();
    	Core0_free();
    	__nop();
    }
    return 0;
}


__inline void delay_tic(unsigned int tic)
{
	unsigned int tic_sub1, tic_sub2;
		for( tic_sub1 = 0; tic_sub1 < tic; tic_sub1++ )
			for( tic_sub2 = 0; tic_sub2 < 61; tic_sub2++ )
				__nop();
}


__inline void delay_ms(unsigned int tic_ms)
{
	unsigned int tic_sub1, tic_sub2;
	unsigned int tic_start, tic_temp = 0;

	for( tic_sub1 = 0; tic_sub1 < tic_ms; tic_sub1++ )
	{
		for( tic_sub2 = 0; tic_sub2 < 4000; tic_sub2++ )
		{
			tic_start = IO_getSTM0Tic();
			while(tic_temp < 1000)
			{
				tic_temp = IO_getSTM0Tic() - tic_start;
				if(tic_temp < 0) tic_start = 0;
				__nop();
			}
		}
	}
}

/** \} */