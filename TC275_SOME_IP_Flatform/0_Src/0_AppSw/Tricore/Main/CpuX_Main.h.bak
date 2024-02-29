/**
 * \file Cpu0_Main.h
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
 *
 * \defgroup IfxLld_Demo_SrcSwIntDemo_SrcDoc Source code documentation
 * \ingroup IfxLld_Demo_SrcSwIntDemo
 */

#ifndef CPUX_MAIN_H
#define CPUX_MAIN_H

#include "Configuration.h"
#include "Cpu/Std/Ifx_Types.h"
#include "IfxScuWdt.h"
#include "SysSe/Bsp/Bsp.h"
#include "Src/Std/IfxSrc.h"
#include "SysCFG_Cores.h"
#include "Peripherals_UART.h"
#include "Peripherals_ETH.h"
#include "Peripherals_CAN.h"

typedef struct
{
    float32 sysFreq;                /**< \brief Actual SPB frequency */
    float32 cpuFreq;                /**< \brief Actual CPU frequency */
    float32 pllFreq;                /**< \brief Actual PLL frequency */
    float32 stmFreq;                /**< \brief Actual STM frequency */
} AppInfo;



__inline void delay_tic(unsigned int tic);
__inline void delay_ms(unsigned int tic_ms);
__inline void delay1_ms(unsigned int tic_ms);
__inline void delay2_ms(unsigned int tic_ms);

#endif
