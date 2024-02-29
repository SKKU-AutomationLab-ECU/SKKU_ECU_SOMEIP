/**
 * \file ConfigurationIsr.h
 * \brief Interrupts configuration.
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
 * \defgroup IfxLld_Demo_AsclinAsc_SrcDoc_InterruptConfig Interrupt configuration
 * \ingroup IfxLld_Demo_AsclinAsc_SrcDoc
 */

#ifndef CONFIGURATIONISR_H
#define CONFIGURATIONISR_H

#include "IfxSrc_cfg.h"



#define ISR_PRIORITY_Task00			41
#define ISR_PRIORITY_Task01			44
#define ISR_PRIORITY_Task10			42
#define ISR_PRIORITY_Task11			45
#define ISR_PRIORITY_Task20			43
#define ISR_PRIORITY_Task21			46

#define ISR_PRIORITY_ASCLIN0_TX		64
#define ISR_PRIORITY_ASCLIN0_RX		68
#define ISR_PRIORITY_ASCLIN0_ER		72
#define ISR_PRIORITY_ASCLIN1_TX		8
#define ISR_PRIORITY_ASCLIN1_RX		9
#define ISR_PRIORITY_ASCLIN1_ER		73
#define ISR_PRIORITY_ASCLIN3_TX		67
#define ISR_PRIORITY_ASCLIN3_RX		71
#define ISR_PRIORITY_ASCLIN3_ER		75

#define ISR_PRIORITY_EtherNet_RX	7

#define INTPRIO_CAN_MsgObj_RX0		10
#define INTPRIO_CAN_MsgObj_RX1		11
#define INTPRIO_CAN_MsgObj_RX2		12
#define INTPRIO_CAN_MsgObj_RX3		13
#define INTPRIO_CAN_MsgObj_RX4		14
#define INTPRIO_CAN_MsgObj_RX5		15
#define INTPRIO_CAN_MsgObj_RX6		16
#define INTPRIO_CAN_MsgObj_RX7		17

#define ISR_PRIORITY_QSPI0_TX       18
#define ISR_PRIORITY_QSPI0_RX       19
#define ISR_PRIORITY_QSPI0_ER       20

#define ISR_PRIORITY_ERAY_INT0		30
#define ISR_PRIORITY_ERAY_INT1		31
#define ISR_PRIORITY_ERAY_NDAT1		32

#define ISR_PRIORITY_SCUERU_0		3
#define ISR_PRIORITY_SCUERU_2		4


#define ISR_PRIORITY_ASCLIN0_ISR_Provider IfxSrc_Tos_cpu0
#define ISR_PRIORITY_ASCLIN1_ISR_Provider IfxSrc_Tos_cpu1
#define ISR_PRIORITY_ASCLIN3_ISR_Provider IfxSrc_Tos_cpu0

#define ISR_PRIORITY_EtherNet_ISR_Provider	IfxSrc_Tos_cpu1

#define ISR_PRIORITY_QSPI0_ISR_Provider IfxSrc_Tos_cpu1

#define ISR_PRIORITY_ERAY_ISR_Provider IfxSrc_Tos_cpu0

#define ISR_PRIORITY_SCUERU_0_ISR_Provider IfxSrc_Tos_cpu1
#define ISR_PRIORITY_SCUERU_2_ISR_Provider IfxSrc_Tos_cpu0

#endif
