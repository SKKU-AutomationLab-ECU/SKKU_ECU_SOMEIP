/**
 * \file IfxQspi_PinMap.h
 * \brief QSPI I/O map
 * \ingroup IfxLld_Qspi
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
 * \defgroup IfxLld_Qspi_pinmap QSPI Pin Mapping
 * \ingroup IfxLld_Qspi
 */

#ifndef IFXQSPI_PINMAP_H
#define IFXQSPI_PINMAP_H

#include <_Reg/IfxQspi_reg.h>
#include <_Impl/IfxQspi_cfg.h>
#include <Port/Std/IfxPort.h>

/** \addtogroup IfxLld_Qspi_pinmap
 * \{ */

/** \brief MRST pin mapping structure */
typedef const struct
{
    Ifx_QSPI*         module;   /**< \brief Base address */
    IfxPort_Pin       pin;      /**< \brief Port pin */
    Ifx_RxSel         select;   /**< \brief Input multiplexer value */
} IfxQspi_Mrst_In;

/** \brief MTSR pin mapping structure */
typedef const struct
{
    Ifx_QSPI*         module;   /**< \brief Base address */
    IfxPort_Pin       pin;      /**< \brief Port pin */
    Ifx_RxSel         select;   /**< \brief Input multiplexer value */
} IfxQspi_Mtsr_In;

/** \brief SCLK pin mapping structure */
typedef const struct
{
    Ifx_QSPI*         module;   /**< \brief Base address */
    IfxPort_Pin       pin;      /**< \brief Port pin */
    Ifx_RxSel         select;   /**< \brief Input multiplexer value */
} IfxQspi_Sclk_In;

/** \brief SLSI pin mapping structure */
typedef const struct
{
    Ifx_QSPI*         module;   /**< \brief Base address */
    IfxPort_Pin       pin;      /**< \brief Port pin */
    Ifx_RxSel         select;   /**< \brief Input multiplexer value */
} IfxQspi_Slsi_In;

/** \brief HSICIN pin mapping structure */
typedef const struct
{
    Ifx_QSPI*         module;   /**< \brief Base address */
    IfxPort_Pin       pin;      /**< \brief Port pin */
    Ifx_RxSel         select;   /**< \brief Input multiplexer value */
} IfxQspi_Hsicin_In;

/** \brief MRST pin mapping structure */
typedef const struct
{
    Ifx_QSPI*         module;   /**< \brief Base address */
    IfxPort_Pin       pin;      /**< \brief Port pin */
    IfxPort_OutputIdx select;   /**< \brief Port control code */
} IfxQspi_Mrst_Out;

/** \brief MTSR pin mapping structure */
typedef const struct
{
    Ifx_QSPI*         module;   /**< \brief Base address */
    IfxPort_Pin       pin;      /**< \brief Port pin */
    IfxPort_OutputIdx select;   /**< \brief Port control code */
} IfxQspi_Mtsr_Out;

/** \brief SCLK pin mapping structure */
typedef const struct
{
    Ifx_QSPI*         module;   /**< \brief Base address */
    IfxPort_Pin       pin;      /**< \brief Port pin */
    IfxPort_OutputIdx select;   /**< \brief Port control code */
} IfxQspi_Sclk_Out;

/** \brief SLSO pin mapping structure */
typedef const struct
{
    Ifx_QSPI*         module;   /**< \brief Base address */
    sint32            slsoNr;   /**< \brief Slave Select */
    IfxPort_Pin       pin;      /**< \brief Port pin */
    IfxPort_OutputIdx select;   /**< \brief Port control code */
} IfxQspi_Slso_Out;

IFX_EXTERN IfxQspi_Mrst_In IfxQspi0_MRSTA_P20_12_IN;  /**< \brief QSPI0_MRSTA: QSPI0 input */
IFX_EXTERN IfxQspi_Mrst_In IfxQspi0_MRSTB_P22_9_IN;  /**< \brief QSPI0_MRSTB: QSPI0 input */
IFX_EXTERN IfxQspi_Mrst_In IfxQspi0_MRSTC_P22_6_IN;  /**< \brief QSPI0_MRSTC: QSPI0 input */
IFX_EXTERN IfxQspi_Mrst_In IfxQspi1_MRSTA_P10_1_IN;  /**< \brief QSPI1_MRSTA: QSPI1 input */
IFX_EXTERN IfxQspi_Mrst_In IfxQspi1_MRSTB_P11_3_IN;  /**< \brief QSPI1_MRSTB: QSPI1 input */
IFX_EXTERN IfxQspi_Mrst_In IfxQspi2_MRSTA_P15_4_IN;  /**< \brief QSPI2_MRSTA: QSPI2 input */
IFX_EXTERN IfxQspi_Mrst_In IfxQspi2_MRSTB_P15_7_IN;  /**< \brief QSPI2_MRSTB: QSPI2 input */
IFX_EXTERN IfxQspi_Mrst_In IfxQspi2_MRSTCN_P21_2_IN;  /**< \brief QSPI2_MRSTCN: QSPI2 input (LVDS) */
IFX_EXTERN IfxQspi_Mrst_In IfxQspi2_MRSTCP_P21_3_IN;  /**< \brief QSPI2_MRSTCP: QSPI2 input (LVDS) */
IFX_EXTERN IfxQspi_Mrst_In IfxQspi2_MRSTD_P34_4_IN;  /**< \brief QSPI2_MRSTD: QSPI2 input */
IFX_EXTERN IfxQspi_Mrst_In IfxQspi2_MRSTE_P15_2_IN;  /**< \brief QSPI2_MRSTE: QSPI2 input */
IFX_EXTERN IfxQspi_Mrst_In IfxQspi3_MRSTA_P02_5_IN;  /**< \brief QSPI3_MRSTA: QSPI3 input */
IFX_EXTERN IfxQspi_Mrst_In IfxQspi3_MRSTB_P10_7_IN;  /**< \brief QSPI3_MRSTB: QSPI3 input */
IFX_EXTERN IfxQspi_Mrst_In IfxQspi3_MRSTC_P01_5_IN;  /**< \brief QSPI3_MRSTC: QSPI3 input */
IFX_EXTERN IfxQspi_Mrst_In IfxQspi3_MRSTD_P33_13_IN;  /**< \brief QSPI3_MRSTD: QSPI3 input */
IFX_EXTERN IfxQspi_Mrst_In IfxQspi3_MRSTE_P22_1_IN;  /**< \brief QSPI3_MRSTE: QSPI3 input */
IFX_EXTERN IfxQspi_Mrst_In IfxQspi3_MRSTFN_P21_2_IN;  /**< \brief QSPI3_MRSTFN: QSPI3 input (LVDS) */
IFX_EXTERN IfxQspi_Mrst_In IfxQspi3_MRSTFP_P21_3_IN;  /**< \brief QSPI3_MRSTFP: QSPI3 input (LVDS) */
IFX_EXTERN IfxQspi_Mrst_Out IfxQspi0_MRST_P20_12_OUT;  /**< \brief QSPI0_MRST: QSPI0 output */
IFX_EXTERN IfxQspi_Mrst_Out IfxQspi0_MRST_P22_6_OUT;  /**< \brief QSPI0_MRST: QSPI0 output */
IFX_EXTERN IfxQspi_Mrst_Out IfxQspi0_MRST_P22_9_OUT;  /**< \brief QSPI0_MRST: QSPI0 output */
IFX_EXTERN IfxQspi_Mrst_Out IfxQspi1_MRST_P10_1_OUT;  /**< \brief QSPI1_MRST: QSPI1 output */
IFX_EXTERN IfxQspi_Mrst_Out IfxQspi1_MRST_P10_6_OUT;  /**< \brief QSPI1_MRST: QSPI1 output */
IFX_EXTERN IfxQspi_Mrst_Out IfxQspi1_MRST_P11_3_OUT;  /**< \brief QSPI1_MRST: QSPI1 output */
IFX_EXTERN IfxQspi_Mrst_Out IfxQspi2_MRST_P15_4_OUT;  /**< \brief QSPI2_MRST: QSPI2 output */
IFX_EXTERN IfxQspi_Mrst_Out IfxQspi2_MRST_P15_7_OUT;  /**< \brief QSPI2_MRST: QSPI2 output */
IFX_EXTERN IfxQspi_Mrst_Out IfxQspi2_MRST_P34_4_OUT;  /**< \brief QSPI2_MRST: QSPI2 output */
IFX_EXTERN IfxQspi_Mrst_Out IfxQspi3_MRST_P01_5_OUT;  /**< \brief QSPI3_MRST: QSPI3 output */
IFX_EXTERN IfxQspi_Mrst_Out IfxQspi3_MRST_P02_5_OUT;  /**< \brief QSPI3_MRST: QSPI3 output */
IFX_EXTERN IfxQspi_Mrst_Out IfxQspi3_MRST_P10_7_OUT;  /**< \brief QSPI3_MRST: QSPI3 output */
IFX_EXTERN IfxQspi_Mrst_Out IfxQspi3_MRST_P22_1_OUT;  /**< \brief QSPI3_MRST: QSPI3 output */
IFX_EXTERN IfxQspi_Mrst_Out IfxQspi3_MRST_P33_13_OUT;  /**< \brief QSPI3_MRST: QSPI3 output */
IFX_EXTERN IfxQspi_Mtsr_In IfxQspi0_MTSRA_P20_14_IN;  /**< \brief QSPI0_MTSRA: QSPI0 input */
IFX_EXTERN IfxQspi_Mtsr_In IfxQspi0_MTSRB_P22_10_IN;  /**< \brief QSPI0_MTSRB: QSPI0 input */
IFX_EXTERN IfxQspi_Mtsr_In IfxQspi0_MTSRC_P22_5_IN;  /**< \brief QSPI0_MTSRC: QSPI0 input */
IFX_EXTERN IfxQspi_Mtsr_In IfxQspi1_MTSRA_P10_3_IN;  /**< \brief QSPI1_MTSRA: QSPI1 input */
IFX_EXTERN IfxQspi_Mtsr_In IfxQspi1_MTSRB_P11_9_IN;  /**< \brief QSPI1_MTSRB: QSPI1 input */
IFX_EXTERN IfxQspi_Mtsr_In IfxQspi1_MTSRC_P10_4_IN;  /**< \brief QSPI1_MTSRC: QSPI1 input */
IFX_EXTERN IfxQspi_Mtsr_In IfxQspi2_MTSRA_P15_5_IN;  /**< \brief QSPI2_MTSRA: QSPI2 input */
IFX_EXTERN IfxQspi_Mtsr_In IfxQspi2_MTSRB_P15_6_IN;  /**< \brief QSPI2_MTSRB: QSPI2 input */
IFX_EXTERN IfxQspi_Mtsr_In IfxQspi2_MTSRD_P34_5_IN;  /**< \brief QSPI2_MTSRD: QSPI2 input */
IFX_EXTERN IfxQspi_Mtsr_In IfxQspi3_MTSRA_P02_6_IN;  /**< \brief QSPI3_MTSRA: QSPI3 input */
IFX_EXTERN IfxQspi_Mtsr_In IfxQspi3_MTSRB_P10_6_IN;  /**< \brief QSPI3_MTSRB: QSPI3 input */
IFX_EXTERN IfxQspi_Mtsr_In IfxQspi3_MTSRC_P01_6_IN;  /**< \brief QSPI3_MTSRC: QSPI3 input */
IFX_EXTERN IfxQspi_Mtsr_In IfxQspi3_MTSRD_P33_12_IN;  /**< \brief QSPI3_MTSRD: QSPI3 input */
IFX_EXTERN IfxQspi_Mtsr_In IfxQspi3_MTSRE_P22_0_IN;  /**< \brief QSPI3_MTSRE: QSPI3 input */
IFX_EXTERN IfxQspi_Mtsr_Out IfxQspi0_MTSR_P20_12_OUT;  /**< \brief QSPI0_MTSR: QSPI0 output */
IFX_EXTERN IfxQspi_Mtsr_Out IfxQspi0_MTSR_P20_14_OUT;  /**< \brief QSPI0_MTSR: QSPI0 output */
IFX_EXTERN IfxQspi_Mtsr_Out IfxQspi0_MTSR_P22_10_OUT;  /**< \brief QSPI0_MTSR: QSPI0 output */
IFX_EXTERN IfxQspi_Mtsr_Out IfxQspi0_MTSR_P22_5_OUT;  /**< \brief QSPI0_MTSR: QSPI0 output */
IFX_EXTERN IfxQspi_Mtsr_Out IfxQspi1_MTSR_P10_1_OUT;  /**< \brief QSPI1_MTSR: QSPI1 output */
IFX_EXTERN IfxQspi_Mtsr_Out IfxQspi1_MTSR_P10_3_OUT;  /**< \brief QSPI1_MTSR: QSPI1 output */
IFX_EXTERN IfxQspi_Mtsr_Out IfxQspi1_MTSR_P10_4_OUT;  /**< \brief QSPI1_MTSR: QSPI1 output */
IFX_EXTERN IfxQspi_Mtsr_Out IfxQspi1_MTSR_P11_9_OUT;  /**< \brief QSPI1_MTSR: QSPI1 output */
IFX_EXTERN IfxQspi_Mtsr_Out IfxQspi2_MTSRN_P13_2_OUT;  /**< \brief QSPI2_MTSRN: QSPI2 output (LVDS) */
IFX_EXTERN IfxQspi_Mtsr_Out IfxQspi2_MTSRP_P13_3_OUT;  /**< \brief QSPI2_MTSRP: QSPI2 output (LVDS) */
IFX_EXTERN IfxQspi_Mtsr_Out IfxQspi2_MTSR_P15_5_OUT;  /**< \brief QSPI2_MTSR: QSPI2 output */
IFX_EXTERN IfxQspi_Mtsr_Out IfxQspi2_MTSR_P15_6_OUT;  /**< \brief QSPI2_MTSR: QSPI2 output */
IFX_EXTERN IfxQspi_Mtsr_Out IfxQspi2_MTSR_P34_5_OUT;  /**< \brief QSPI2_MTSR: QSPI2 output */
IFX_EXTERN IfxQspi_Mtsr_Out IfxQspi3_MTSRN_P22_2_OUT;  /**< \brief QSPI3_MTSRN: QSPI3 output (LVDS) */
IFX_EXTERN IfxQspi_Mtsr_Out IfxQspi3_MTSRP_P22_3_OUT;  /**< \brief QSPI3_MTSRP: QSPI3 output (LVDS) */
IFX_EXTERN IfxQspi_Mtsr_Out IfxQspi3_MTSR_P01_6_OUT;  /**< \brief QSPI3_MTSR: QSPI3 output */
IFX_EXTERN IfxQspi_Mtsr_Out IfxQspi3_MTSR_P02_6_OUT;  /**< \brief QSPI3_MTSR: QSPI3 output */
IFX_EXTERN IfxQspi_Mtsr_Out IfxQspi3_MTSR_P10_6_OUT;  /**< \brief QSPI3_MTSR: QSPI3 output */
IFX_EXTERN IfxQspi_Mtsr_Out IfxQspi3_MTSR_P22_0_OUT;  /**< \brief QSPI3_MTSR: QSPI3 output */
IFX_EXTERN IfxQspi_Mtsr_Out IfxQspi3_MTSR_P33_12_OUT;  /**< \brief QSPI3_MTSR: QSPI3 output */
IFX_EXTERN IfxQspi_Sclk_In IfxQspi0_SCLKA_P20_11_IN;  /**< \brief QSPI0_SCLKA: QSPI0 input */
IFX_EXTERN IfxQspi_Sclk_In IfxQspi0_SCLKB_P22_8_IN;  /**< \brief QSPI0_SCLKB: QSPI0 input */
IFX_EXTERN IfxQspi_Sclk_In IfxQspi0_SCLKC_P22_7_IN;  /**< \brief QSPI0_SCLKC: QSPI0 input */
IFX_EXTERN IfxQspi_Sclk_In IfxQspi1_SCLKA_P10_2_IN;  /**< \brief QSPI1_SCLKA: QSPI1 input */
IFX_EXTERN IfxQspi_Sclk_In IfxQspi1_SCLKB_P11_6_IN;  /**< \brief QSPI1_SCLKB: QSPI1 input */
IFX_EXTERN IfxQspi_Sclk_In IfxQspi2_SCLKA_P15_3_IN;  /**< \brief QSPI2_SCLKA: QSPI2 input */
IFX_EXTERN IfxQspi_Sclk_In IfxQspi2_SCLKB_P15_8_IN;  /**< \brief QSPI2_SCLKB: QSPI2 input */
IFX_EXTERN IfxQspi_Sclk_In IfxQspi2_SCLKD_P33_14_IN;  /**< \brief QSPI2_SCLKD: QSPI2 input */
IFX_EXTERN IfxQspi_Sclk_In IfxQspi3_SCLKA_P02_7_IN;  /**< \brief QSPI3_SCLKA: QSPI3 input */
IFX_EXTERN IfxQspi_Sclk_In IfxQspi3_SCLKB_P10_8_IN;  /**< \brief QSPI3_SCLKB: QSPI3 input */
IFX_EXTERN IfxQspi_Sclk_In IfxQspi3_SCLKC_P01_7_IN;  /**< \brief QSPI3_SCLKC: QSPI3 input */
IFX_EXTERN IfxQspi_Sclk_In IfxQspi3_SCLKD_P33_11_IN;  /**< \brief QSPI3_SCLKD: QSPI3 input */
IFX_EXTERN IfxQspi_Sclk_In IfxQspi3_SCLKE_P22_3_IN;  /**< \brief QSPI3_SCLKE: QSPI3 input */
IFX_EXTERN IfxQspi_Sclk_Out IfxQspi0_SCLK_P20_11_OUT;  /**< \brief QSPI0_SCLK: QSPI0 output */
IFX_EXTERN IfxQspi_Sclk_Out IfxQspi0_SCLK_P20_13_OUT;  /**< \brief QSPI0_SCLK: QSPI0 output */
IFX_EXTERN IfxQspi_Sclk_Out IfxQspi0_SCLK_P22_7_OUT;  /**< \brief QSPI0_SCLK: QSPI0 output */
IFX_EXTERN IfxQspi_Sclk_Out IfxQspi0_SCLK_P22_8_OUT;  /**< \brief QSPI0_SCLK: QSPI0 output */
IFX_EXTERN IfxQspi_Sclk_Out IfxQspi1_SCLK_P10_2_OUT;  /**< \brief QSPI1_SCLK: QSPI1 output */
IFX_EXTERN IfxQspi_Sclk_Out IfxQspi1_SCLK_P11_6_OUT;  /**< \brief QSPI1_SCLK: QSPI1 output */
IFX_EXTERN IfxQspi_Sclk_Out IfxQspi2_SCLKN_P13_0_OUT;  /**< \brief QSPI2_SCLKN: QSPI2 output (LVDS) */
IFX_EXTERN IfxQspi_Sclk_Out IfxQspi2_SCLKP_P13_1_OUT;  /**< \brief QSPI2_SCLKP: QSPI2 output (LVDS) */
IFX_EXTERN IfxQspi_Sclk_Out IfxQspi2_SCLK_P15_3_OUT;  /**< \brief QSPI2_SCLK: QSPI2 output */
IFX_EXTERN IfxQspi_Sclk_Out IfxQspi2_SCLK_P15_6_OUT;  /**< \brief QSPI2_SCLK: QSPI2 output */
IFX_EXTERN IfxQspi_Sclk_Out IfxQspi2_SCLK_P15_8_OUT;  /**< \brief QSPI2_SCLK: QSPI2 output */
IFX_EXTERN IfxQspi_Sclk_Out IfxQspi2_SCLK_P33_14_OUT;  /**< \brief QSPI2_SCLK: QSPI2 output */
IFX_EXTERN IfxQspi_Sclk_Out IfxQspi3_SCLKN_P22_0_OUT;  /**< \brief QSPI3_SCLKN: QSPI3 output (LVDS) */
IFX_EXTERN IfxQspi_Sclk_Out IfxQspi3_SCLKP_P22_1_OUT;  /**< \brief QSPI3_SCLKP: QSPI3 output (LVDS) */
IFX_EXTERN IfxQspi_Sclk_Out IfxQspi3_SCLK_P01_7_OUT;  /**< \brief QSPI3_SCLK: QSPI3 output */
IFX_EXTERN IfxQspi_Sclk_Out IfxQspi3_SCLK_P02_7_OUT;  /**< \brief QSPI3_SCLK: QSPI3 output */
IFX_EXTERN IfxQspi_Sclk_Out IfxQspi3_SCLK_P10_8_OUT;  /**< \brief QSPI3_SCLK: QSPI3 output */
IFX_EXTERN IfxQspi_Sclk_Out IfxQspi3_SCLK_P22_3_OUT;  /**< \brief QSPI3_SCLK: QSPI3 output */
IFX_EXTERN IfxQspi_Sclk_Out IfxQspi3_SCLK_P33_11_OUT;  /**< \brief QSPI3_SCLK: QSPI3 output */
IFX_EXTERN IfxQspi_Slsi_In IfxQspi0_SLSIA_P20_13_IN;  /**< \brief QSPI0_SLSIA: QSPI0 input */
IFX_EXTERN IfxQspi_Slsi_In IfxQspi0_SLSIB_P20_9_IN;  /**< \brief QSPI0_SLSIB: QSPI0 input */
IFX_EXTERN IfxQspi_Slsi_In IfxQspi1_SLSIA_P11_10_IN;  /**< \brief QSPI1_SLSIA: QSPI1 input */
IFX_EXTERN IfxQspi_Slsi_In IfxQspi2_SLSIA_P15_2_IN;  /**< \brief QSPI2_SLSIA: QSPI2 input */
IFX_EXTERN IfxQspi_Slsi_In IfxQspi2_SLSIB_P15_1_IN;  /**< \brief QSPI2_SLSIB: QSPI2 input */
IFX_EXTERN IfxQspi_Slsi_In IfxQspi3_SLSIA_P02_4_IN;  /**< \brief QSPI3_SLSIA: QSPI3 input */
IFX_EXTERN IfxQspi_Slsi_In IfxQspi3_SLSIB_P01_3_IN;  /**< \brief QSPI3_SLSIB: QSPI3 input */
IFX_EXTERN IfxQspi_Slsi_In IfxQspi3_SLSIC_P33_10_IN;  /**< \brief QSPI3_SLSIC: QSPI3 input */
IFX_EXTERN IfxQspi_Slsi_In IfxQspi3_SLSID_P22_2_IN;  /**< \brief QSPI3_SLSID: QSPI3 input */
IFX_EXTERN IfxQspi_Slso_Out IfxQspi0_SLSO0_P20_8_OUT;  /**< \brief QSPI0_SLSO0: QSPI0 output */
IFX_EXTERN IfxQspi_Slso_Out IfxQspi0_SLSO10_P22_11_OUT;  /**< \brief QSPI0_SLSO10: QSPI0 output */
IFX_EXTERN IfxQspi_Slso_Out IfxQspi0_SLSO11_P23_6_OUT;  /**< \brief QSPI0_SLSO11: QSPI0 output */
IFX_EXTERN IfxQspi_Slso_Out IfxQspi0_SLSO12_P22_4_OUT;  /**< \brief QSPI0_SLSO12: QSPI0 output */
IFX_EXTERN IfxQspi_Slso_Out IfxQspi0_SLSO13_P15_0_OUT;  /**< \brief QSPI0_SLSO13: QSPI0 output */
IFX_EXTERN IfxQspi_Slso_Out IfxQspi0_SLSO1_P20_9_OUT;  /**< \brief QSPI0_SLSO1: QSPI0 output */
IFX_EXTERN IfxQspi_Slso_Out IfxQspi0_SLSO2_P20_13_OUT;  /**< \brief QSPI0_SLSO2: QSPI0 output */
IFX_EXTERN IfxQspi_Slso_Out IfxQspi0_SLSO3_P11_10_OUT;  /**< \brief QSPI0_SLSO3: QSPI0 output */
IFX_EXTERN IfxQspi_Slso_Out IfxQspi0_SLSO4_P11_11_OUT;  /**< \brief QSPI0_SLSO4: QSPI0 output */
IFX_EXTERN IfxQspi_Slso_Out IfxQspi0_SLSO5_P11_2_OUT;  /**< \brief QSPI0_SLSO5: QSPI0 output */
IFX_EXTERN IfxQspi_Slso_Out IfxQspi0_SLSO6_P20_10_OUT;  /**< \brief QSPI0_SLSO6: QSPI0 output */
IFX_EXTERN IfxQspi_Slso_Out IfxQspi0_SLSO7_P33_5_OUT;  /**< \brief QSPI0_SLSO7: QSPI0 output */
IFX_EXTERN IfxQspi_Slso_Out IfxQspi0_SLSO8_P20_6_OUT;  /**< \brief QSPI0_SLSO8: QSPI0 output */
IFX_EXTERN IfxQspi_Slso_Out IfxQspi0_SLSO9_P20_3_OUT;  /**< \brief QSPI0_SLSO9: QSPI0 output */
IFX_EXTERN IfxQspi_Slso_Out IfxQspi1_SLSO0_P20_8_OUT;  /**< \brief QSPI1_SLSO0: QSPI1 output */
IFX_EXTERN IfxQspi_Slso_Out IfxQspi1_SLSO10_P10_0_OUT;  /**< \brief QSPI1_SLSO10: QSPI1 output */
IFX_EXTERN IfxQspi_Slso_Out IfxQspi1_SLSO1_P20_9_OUT;  /**< \brief QSPI1_SLSO1: QSPI1 output */
IFX_EXTERN IfxQspi_Slso_Out IfxQspi1_SLSO2_P20_13_OUT;  /**< \brief QSPI1_SLSO2: QSPI1 output */
IFX_EXTERN IfxQspi_Slso_Out IfxQspi1_SLSO3_P11_10_OUT;  /**< \brief QSPI1_SLSO3: QSPI1 output */
IFX_EXTERN IfxQspi_Slso_Out IfxQspi1_SLSO4_P11_11_OUT;  /**< \brief QSPI1_SLSO4: QSPI1 output */
IFX_EXTERN IfxQspi_Slso_Out IfxQspi1_SLSO5_P11_2_OUT;  /**< \brief QSPI1_SLSO5: QSPI1 output */
IFX_EXTERN IfxQspi_Slso_Out IfxQspi1_SLSO6_P33_10_OUT;  /**< \brief QSPI1_SLSO6: QSPI1 output */
IFX_EXTERN IfxQspi_Slso_Out IfxQspi1_SLSO7_P33_5_OUT;  /**< \brief QSPI1_SLSO7: QSPI1 output */
IFX_EXTERN IfxQspi_Slso_Out IfxQspi1_SLSO8_P10_4_OUT;  /**< \brief QSPI1_SLSO8: QSPI1 output */
IFX_EXTERN IfxQspi_Slso_Out IfxQspi1_SLSO9_P10_5_OUT;  /**< \brief QSPI1_SLSO9: QSPI1 output */
IFX_EXTERN IfxQspi_Slso_Out IfxQspi2_SLSO0_P15_2_OUT;  /**< \brief QSPI2_SLSO0: QSPI2 output */
IFX_EXTERN IfxQspi_Slso_Out IfxQspi2_SLSO10_P34_3_OUT;  /**< \brief QSPI2_SLSO10: QSPI2 output */
IFX_EXTERN IfxQspi_Slso_Out IfxQspi2_SLSO11_P33_15_OUT;  /**< \brief QSPI2_SLSO11: QSPI2 output */
IFX_EXTERN IfxQspi_Slso_Out IfxQspi2_SLSO12_P32_6_OUT;  /**< \brief QSPI2_SLSO12: QSPI2 output */
IFX_EXTERN IfxQspi_Slso_Out IfxQspi2_SLSO1_P14_2_OUT;  /**< \brief QSPI2_SLSO1: QSPI2 output */
IFX_EXTERN IfxQspi_Slso_Out IfxQspi2_SLSO2_P14_6_OUT;  /**< \brief QSPI2_SLSO2: QSPI2 output */
IFX_EXTERN IfxQspi_Slso_Out IfxQspi2_SLSO3_P14_3_OUT;  /**< \brief QSPI2_SLSO3: QSPI2 output */
IFX_EXTERN IfxQspi_Slso_Out IfxQspi2_SLSO4_P14_7_OUT;  /**< \brief QSPI2_SLSO4: QSPI2 output */
IFX_EXTERN IfxQspi_Slso_Out IfxQspi2_SLSO5_P15_1_OUT;  /**< \brief QSPI2_SLSO5: QSPI2 output */
IFX_EXTERN IfxQspi_Slso_Out IfxQspi2_SLSO6_P33_13_OUT;  /**< \brief QSPI2_SLSO6: QSPI2 output */
IFX_EXTERN IfxQspi_Slso_Out IfxQspi2_SLSO7_P20_10_OUT;  /**< \brief QSPI2_SLSO7: QSPI2 output */
IFX_EXTERN IfxQspi_Slso_Out IfxQspi2_SLSO8_P20_6_OUT;  /**< \brief QSPI2_SLSO8: QSPI2 output */
IFX_EXTERN IfxQspi_Slso_Out IfxQspi2_SLSO9_P20_3_OUT;  /**< \brief QSPI2_SLSO9: QSPI2 output */
IFX_EXTERN IfxQspi_Slso_Out IfxQspi3_SLSO0_P02_4_OUT;  /**< \brief QSPI3_SLSO0: QSPI3 output */
IFX_EXTERN IfxQspi_Slso_Out IfxQspi3_SLSO10_P01_4_OUT;  /**< \brief QSPI3_SLSO10: QSPI3 output */
IFX_EXTERN IfxQspi_Slso_Out IfxQspi3_SLSO11_P33_10_OUT;  /**< \brief QSPI3_SLSO11: QSPI3 output */
IFX_EXTERN IfxQspi_Slso_Out IfxQspi3_SLSO12_P22_2_OUT;  /**< \brief QSPI3_SLSO12: QSPI3 output */
IFX_EXTERN IfxQspi_Slso_Out IfxQspi3_SLSO13_P23_1_OUT;  /**< \brief QSPI3_SLSO13: QSPI3 output */
IFX_EXTERN IfxQspi_Slso_Out IfxQspi3_SLSO1_P02_0_OUT;  /**< \brief QSPI3_SLSO1: QSPI3 output */
IFX_EXTERN IfxQspi_Slso_Out IfxQspi3_SLSO1_P33_9_OUT;  /**< \brief QSPI3_SLSO1: QSPI3 output */
IFX_EXTERN IfxQspi_Slso_Out IfxQspi3_SLSO2_P02_1_OUT;  /**< \brief QSPI3_SLSO2: QSPI3 output */
IFX_EXTERN IfxQspi_Slso_Out IfxQspi3_SLSO2_P33_8_OUT;  /**< \brief QSPI3_SLSO2: QSPI3 output */
IFX_EXTERN IfxQspi_Slso_Out IfxQspi3_SLSO3_P02_2_OUT;  /**< \brief QSPI3_SLSO3: QSPI3 output */
IFX_EXTERN IfxQspi_Slso_Out IfxQspi3_SLSO4_P02_3_OUT;  /**< \brief QSPI3_SLSO4: QSPI3 output */
IFX_EXTERN IfxQspi_Slso_Out IfxQspi3_SLSO4_P23_5_OUT;  /**< \brief QSPI3_SLSO4: QSPI3 output */
IFX_EXTERN IfxQspi_Slso_Out IfxQspi3_SLSO5_P02_8_OUT;  /**< \brief QSPI3_SLSO5: QSPI3 output */
IFX_EXTERN IfxQspi_Slso_Out IfxQspi3_SLSO5_P23_4_OUT;  /**< \brief QSPI3_SLSO5: QSPI3 output */
IFX_EXTERN IfxQspi_Slso_Out IfxQspi3_SLSO6_P00_8_OUT;  /**< \brief QSPI3_SLSO6: QSPI3 output */
IFX_EXTERN IfxQspi_Slso_Out IfxQspi3_SLSO7_P00_9_OUT;  /**< \brief QSPI3_SLSO7: QSPI3 output */
IFX_EXTERN IfxQspi_Slso_Out IfxQspi3_SLSO7_P33_7_OUT;  /**< \brief QSPI3_SLSO7: QSPI3 output */
IFX_EXTERN IfxQspi_Slso_Out IfxQspi3_SLSO8_P10_5_OUT;  /**< \brief QSPI3_SLSO8: QSPI3 output */
IFX_EXTERN IfxQspi_Slso_Out IfxQspi3_SLSO9_P01_3_OUT;  /**< \brief QSPI3_SLSO9: QSPI3 output */

/** \brief Table dimensions */
#define IFXQSPI_PINMAP_NUM_MODULES 4
#define IFXQSPI_PINMAP_NUM_SLAVESELECTS 14
#define IFXQSPI_PINMAP_MRST_IN_NUM_ITEMS 6
#define IFXQSPI_PINMAP_MRST_OUT_NUM_ITEMS 5
#define IFXQSPI_PINMAP_MTSR_IN_NUM_ITEMS 5
#define IFXQSPI_PINMAP_MTSR_OUT_NUM_ITEMS 7
#define IFXQSPI_PINMAP_SCLK_IN_NUM_ITEMS 5
#define IFXQSPI_PINMAP_SCLK_OUT_NUM_ITEMS 7
#define IFXQSPI_PINMAP_SLSI_IN_NUM_ITEMS 4
#define IFXQSPI_PINMAP_SLSO_OUT_NUM_ITEMS 2


/** \brief IfxQspi_Mrst_In table */
IFX_EXTERN const IfxQspi_Mrst_In *IfxQspi_Mrst_In_pinTable[IFXQSPI_PINMAP_NUM_MODULES][IFXQSPI_PINMAP_MRST_IN_NUM_ITEMS];

/** \brief IfxQspi_Mrst_Out table */
IFX_EXTERN const IfxQspi_Mrst_Out *IfxQspi_Mrst_Out_pinTable[IFXQSPI_PINMAP_NUM_MODULES][IFXQSPI_PINMAP_MRST_OUT_NUM_ITEMS];

/** \brief IfxQspi_Mtsr_In table */
IFX_EXTERN const IfxQspi_Mtsr_In *IfxQspi_Mtsr_In_pinTable[IFXQSPI_PINMAP_NUM_MODULES][IFXQSPI_PINMAP_MTSR_IN_NUM_ITEMS];

/** \brief IfxQspi_Mtsr_Out table */
IFX_EXTERN const IfxQspi_Mtsr_Out *IfxQspi_Mtsr_Out_pinTable[IFXQSPI_PINMAP_NUM_MODULES][IFXQSPI_PINMAP_MTSR_OUT_NUM_ITEMS];

/** \brief IfxQspi_Sclk_In table */
IFX_EXTERN const IfxQspi_Sclk_In *IfxQspi_Sclk_In_pinTable[IFXQSPI_PINMAP_NUM_MODULES][IFXQSPI_PINMAP_SCLK_IN_NUM_ITEMS];

/** \brief IfxQspi_Sclk_Out table */
IFX_EXTERN const IfxQspi_Sclk_Out *IfxQspi_Sclk_Out_pinTable[IFXQSPI_PINMAP_NUM_MODULES][IFXQSPI_PINMAP_SCLK_OUT_NUM_ITEMS];

/** \brief IfxQspi_Slsi_In table */
IFX_EXTERN const IfxQspi_Slsi_In *IfxQspi_Slsi_In_pinTable[IFXQSPI_PINMAP_NUM_MODULES][IFXQSPI_PINMAP_SLSI_IN_NUM_ITEMS];

/** \brief IfxQspi_Slso_Out table */
IFX_EXTERN const IfxQspi_Slso_Out *IfxQspi_Slso_Out_pinTable[IFXQSPI_PINMAP_NUM_MODULES][IFXQSPI_PINMAP_NUM_SLAVESELECTS][IFXQSPI_PINMAP_SLSO_OUT_NUM_ITEMS];

/** \} */

#endif /* IFXQSPI_PINMAP_H */
