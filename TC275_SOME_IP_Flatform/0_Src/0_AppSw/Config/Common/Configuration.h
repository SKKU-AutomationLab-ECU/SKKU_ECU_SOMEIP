/**
 * \file Configuration.h
 * \brief Global configuration
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
 * \defgroup IfxLld_Demo_SrcSwIntDemo_SrcDoc_Config Application configuration
 * \ingroup IfxLld_Demo_SrcSwIntDemo_SrcDoc
 *
 *
 */

#ifndef CONFIGURATION_H
#define CONFIGURATION_H
/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/
#include "Ifx_Cfg.h"
#include "System_ISR_Priority.h"
#include "_Impl/IfxGlobal_cfg.h"

/******************************************************************************/
/*-----------------------------------Macros-----------------------------------*/
/******************************************************************************/

/* we define here the pins for ethernet phy RMII connection */
#define ETH_CRSDIV_PIN              IfxEth_CRSDVA_P11_11_IN
#define ETH_REFCLK_PIN              IfxEth_REFCLK_P11_12_IN
#define ETH_RXD0_PIN                IfxEth_RXD0_P11_10_IN
#define ETH_RXD1_PIN                IfxEth_RXD1_P11_9_IN
#define ETH_MDC_PIN                 IfxEth_MDC_P21_2_OUT
#define ETH_MDIO_PIN                IfxEth_MDIO_P21_1_INOUT
#define ETH_TXD0_PIN                IfxEth_TXD0_P11_3_OUT
#define ETH_TXD1_PIN                IfxEth_TXD1_P11_2_OUT
#define ETH_TXEN_PIN                IfxEth_TXEN_P11_6_OUT

/** \addtogroup IfxLld_Demo_SrcSwIntDemo_SrcDoc_Config
 * \{ */
/*______________________________________________________________________________
** Help Macros
**____________________________________________________________________________*/
/**
 * \name Macros for Regression Runs
 * \{
 */
#ifndef REGRESSION_RUN_STOP_PASS
#define REGRESSION_RUN_STOP_PASS
#endif

#ifndef REGRESSION_RUN_STOP_FAIL
#define REGRESSION_RUN_STOP_FAIL
#endif
/** \} */

/** \} */

#endif
