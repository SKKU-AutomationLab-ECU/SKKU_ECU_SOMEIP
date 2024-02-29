/**
 * \file IfxDsadc_Dsadc.h
 * \brief DSADC DSADC details
 * \ingroup IfxLld_Dsadc
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
 * \defgroup IfxLld_Dsadc_Dsadc_Usage How to use the DSADC Interface driver?
 * \ingroup IfxLld_Dsadc
 *
 * The DSADC interface driver provides a default DSADC configuration for converting analog data streams inputs from external modulators via digital input channels, into digital values by using the on-chip demodulator channels.
 *
 * In the following sections it will be described, how to integrate the driver into the application framework.
 *
 * \section IfxLld_Dsadc_Dsadc_Preparation Preparation
 * \subsection IfxLld_Dsadc_Dsadc_Include Include Files
 *
 * Include following header file into your C code:
 * \code
 *     #include <Dsadc/Dsadc/IfxDsadc_Dsadc.h>
 *
 * \endcode
 *
 * \subsection IfxLld_Dsadc_Dsadc_Variables Variables
 *
 * Declare the DSADC channel handle and available channels as global variables in your C code:
 *
 * \code
 *     static IfxDsadc_Dsadc dsadc;
 *     IfxDsadc_Dsadc_Channel dsadcChannel[IFXDSADC_NUM_CHANNELS];
 *
 *     #if defined(DERIVATIVE_TC22x) || defined(DERIVATIVE_TC23x) || defined(DERIVATIVE_TC24x)
 *     uint8 dsadcChannelAvailable[IFXDSADC_NUM_CHANNELS] = { 1, 0, 0, 1 };
 *
 *     #elif defined(DERIVATIVE_TC27x) || defined(DERIVATIVE_TC27xB) || defined(DERIVATIVE_TC27xC) || defined(DERIVATIVE_TC27xD)
 *     uint8 dsadcChannelAvailable[IFXDSADC_NUM_CHANNELS] = { 1, 1, 1, 1, 1, 1 };
 *
 *     #elif defined(DERIVATIVE_TC26x) || defined(DERIVATIVE_TC26xB)
 *     uint8 dsadcChannelAvailable[IFXDSADC_NUM_CHANNELS] = { 1, 0, 1, 1 };
 *
 *     #elif defined(DERIVATIVE_TC29x) || defined(DERIVATIVE_TC29xB)
 *     uint8 dsadcChannelAvailable[IFXDSADC_NUM_CHANNELS] = { 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 };
 *
 *     #else
 *     # error "Testcase not prepared for this derivative!"
 *     #endif
 * \endcode
 *
 *
 * \subsection IfxLld_Dsadc_Dsadc_Init Module Initialisation
 *
 * The module initialisation can be done in the same function. Here an example:
 * \code
 *
 *     // create module config
 *     IfxDsadc_Dsadc_Config dsadcConfig;
 *     IfxDsadc_Dsadc_initModuleConfig(&dsadcConfig, &MODULE_DSADC);
 *
 *     // initialize module
 *
 *     IfxDsadc_Dsadc_initModule(&dsadc, &dsadcConfig);
 *
 *     // create channel config
 *     IfxDsadc_Dsadc_ChannelConfig dsadcChannelConfig;
 *     IfxDsadc_Dsadc_initChannelConfig(&dsadcChannelConfig, &dsadc);
 *
 *     // modify default configuration
 *     dsadcChannelConfig.modulator.positiveInput      = IfxDsadc_InputConfig_inputPin;
 *     dsadcChannelConfig.modulator.negativeInput      = IfxDsadc_InputConfig_inputPin;
 *     dsadcChannelConfig.modulator.inputGain          = IfxDsadc_InputGain_factor1;
 *     dsadcChannelConfig.modulator.inputPin           = IfxDsadc_InputPin_a;
 *     dsadcChannelConfig.modulator.modulatorClockFreq = 10.0e6;
 *     dsadcChannelConfig.modulator.commonModeVoltage  = IfxDsadc_CommonModeVoltage_c;
 *
 *     dsadcChannelConfig.combFilter.bypassed          = FALSE;
 *     dsadcChannelConfig.combFilter.combFilterType    = IfxDsadc_MainCombFilterType_comb3;
 *     dsadcChannelConfig.combFilter.combFilterShift   = IfxDsadc_MainCombFilterShift_noShift;
 *     dsadcChannelConfig.combFilter.serviceRequest    = IfxDsadc_MainServiceRequest_everyNewResult;
 *     dsadcChannelConfig.combFilter.decimationFactor  = 32;
 *     dsadcChannelConfig.combFilter.startValue        = 32;
 *
 *     dsadcChannelConfig.firFilter.fir0Enabled        = TRUE;
 *     dsadcChannelConfig.firFilter.fir1Enabled        = TRUE;
 *     dsadcChannelConfig.firFilter.offsetCompensation = FALSE;
 *     dsadcChannelConfig.firFilter.dataShift          = IfxDsadc_FirDataShift_shiftBy2;
 *     dsadcChannelConfig.firFilter.internalShift      = IfxDsadc_FirInternalShift_shiftBy1;
 *
 *
 *     // initialize channels
 *     for(int chn=0; chn<IFXDSADC_NUM_CHANNELS; ++chn) {
 *         if( dsadcChannelAvailable[chn] ) {
 *             dsadcChannelConfig.channelId = (IfxDsadc_ChannelId)chn;
 *
 *             IfxDsadc_Dsadc_initChannel(&dsadcChannel[chn], &dsadcChannelConfig);
 *         }
 *     }
 * \endcode
 *
 * The DSADC is ready for use now!
 *
 *
 * \section IfxLld_Dsadc_Dsadc_Conversions Conversions
 *
 * The DSADC driver provides simple to use Conversion function,
 *
 * \code
 *     // start conversions
 *     IfxDsadc_Dsadc_startScan(&dsadc, 0x3f, 0x3f);
 *
 *     // results are now available in IFXDSADC(ds).CH[x].RESM.B.RESULT (x=0..5)
 * \endcode
 *
 * The converted data can be collected using the following function
 *
 * \code
 *     // declared globally
 *     // sint16 result[];
 *     for(int chn=0; chn<IFXDSADC_NUM_CHANNELS; ++chn) {
 *         if( dsadcChannelAvailable[chn] ) {
 *     result = IfxDsadc_Dsadc_getMainResult(&dsadcChannel[chn]));
 *      }
 * }
 * \endcode
 *
 * \defgroup IfxLld_Dsadc_Dsadc DSADC
 * \ingroup IfxLld_Dsadc
 * \defgroup IfxLld_Dsadc_Dsadc_DataStructures Data Structures
 * \ingroup IfxLld_Dsadc_Dsadc
 * \defgroup IfxLld_Dsadc_Dsadc_Module Module Functions
 * \ingroup IfxLld_Dsadc_Dsadc
 * \defgroup IfxLld_Dsadc_Dsadc_Channel Channel Functions
 * \ingroup IfxLld_Dsadc_Dsadc
 * \defgroup IfxLld_Dsadc_Dsadc_Operative Operative Functions
 * \ingroup IfxLld_Dsadc_Dsadc
 * \defgroup IfxLld_Dsadc_Dsadc_Results Result Functions
 * \ingroup IfxLld_Dsadc_Dsadc
 * \defgroup IfxLld_Dsadc_Dsadc_Interrupt Interrupt Functions
 * \ingroup IfxLld_Dsadc_Dsadc
 */

#ifndef IFXDSADC_DSADC_H
#define IFXDSADC_DSADC_H 1

/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/

#include "Dsadc/Std/IfxDsadc.h"
#include "Scu/Std/IfxScuWdt.h"

/******************************************************************************/
/*-----------------------------Data Structures--------------------------------*/
/******************************************************************************/

/** \addtogroup IfxLld_Dsadc_Dsadc_DataStructures
 * \{ */
/** \brief Auxiliary comb filter configuration structure
 */
typedef struct
{
    boolean                     bypassed;
    IfxDsadc_AuxCombFilterType  combFilterType;       /**< \brief Comb Filter (auxiliary) configuration/type */
    IfxDsadc_AuxCombFilterShift combFilterShift;      /**< \brief Comb Filter (auxiliary) shift control */
    IfxDsadc_AuxServiceRequest  serviceRequest;       /**< \brief Service request generation (auxiliary) */
    IfxDsadc_AuxEvent           eventSelect;          /**< \brief Service request generation (auxiliary) */
    IfxDsadc_AuxGate            eventGate;            /**< \brief Service request generation (auxiliary) */
    uint8                       decimationFactor;     /**< \brief CIC Filter (Auxiliary) decimation factor (4 .. 32) */
} IfxDsadc_Dsadc_AuxFilterConfig;

/** \brief Channel Pins Configuration structure
 */
typedef struct
{
    const IfxDsadc_Cin_In *cin;         /**< \brief the CIN Pin which should be configured */
    IfxPort_InputMode      cinMode;     /**< \brief the CIN pin input mode which should be configured */
    const IfxDsadc_Din_In *din;         /**< \brief the DIN Pin which should be configured */
    IfxPort_InputMode      dinMode;     /**< \brief the DIN pin input mode which should be configured */
    const IfxDsadc_Itr_In *itr;         /**< \brief the ITR Pin which should be configured */
    IfxPort_InputMode      itrMode;     /**< \brief the ITR pin input mode which should be configured */
    const IfxDsadc_Dsn_In *dsn;         /**< \brief the DSN Pin which should be configured */
    IfxPort_InputMode      dsnMode;     /**< \brief the DSN pin output mode which should be configured */
    const IfxDsadc_Dsp_In *dsp;         /**< \brief the DSP Pin which should be configured */
    IfxPort_InputMode      dspMode;     /**< \brief the DSP pin output mode which should be configured */
} IfxDsadc_Dsadc_ChannelPins;

/** \brief Comb filter configuration structure
 */
typedef struct
{
    boolean                      bypassed;             /**< \brief CIC Filter enable/bypass selection */
    IfxDsadc_MainCombFilterType  combFilterType;       /**< \brief Comb Filter (Main Chain) configuration/type */
    IfxDsadc_MainCombFilterShift combFilterShift;      /**< \brief Comb Filter (Main Chain) shift control */
    IfxDsadc_MainServiceRequest  serviceRequest;       /**< \brief Service request generation (main chain) */
    uint16                       decimationFactor;     /**< \brief 4 .. 256 */
    uint16                       startValue;           /**< \brief 4 .. decimationFactor */
} IfxDsadc_Dsadc_CombFilterConfig;

/** \brief Demodulator configuration structure
 */
typedef struct
{
    IfxDsadc_InputDataSource   inputDataSource;        /**< \brief Demodulator input data source selection */
    IfxDsadc_TriggerInput      triggerInput;           /**< \brief Trigger selection */
    IfxDsadc_IntegratorTrigger integrationTrigger;     /**< \brief Integrator trigger mode selection */
    IfxDsadc_TimestampTrigger  timestampTrigger;       /**< \brief Timestamp trigger mode selection */
    IfxDsadc_SampleClockSource sampleClockSource;      /**< \brief Demodulator sample clock source selection */
    IfxDsadc_SampleStrobe      sampleStrobe;           /**< \brief Demodulator data strobe generation mode selection */
} IfxDsadc_Dsadc_DemodulatorConfig;

/** \brief FIR filters configuration structure
 */
typedef struct
{
    boolean                   fir0Enabled;            /**< \brief FIR filter 0 enable/disable selection */
    boolean                   fir1Enabled;            /**< \brief FIR filter 0 enable/disable selection */
    boolean                   offsetCompensation;     /**< \brief Offset Compensation Filter enable/disable selection */
    IfxDsadc_FirDataShift     dataShift;              /**< \brief FIR data shift control selection */
    IfxDsadc_FirInternalShift internalShift;          /**< \brief FIR shift control selction */
} IfxDsadc_Dsadc_FirFilterConfig;

/** \brief Integrator configuration structure
 */
typedef struct
{
    IfxDsadc_IntegrationWindowSize windowSize;            /**< \brief Integrator window size */
    uint16                         discardCount;          /**< \brief Number of discarded values to after active trigger: 1 .. 64 */
    uint16                         integrationCount;      /**< \brief Number of integrated values after discard step: 1 .. 64 */
    uint16                         integrationCycles;     /**< \brief Number of integration cycles: 1 .. 16. Used only when \ref IfxDsadc_IntegrationWindowSize_internalControl */
} IfxDsadc_Dsadc_IntegratorConfig;

/** \brief Modulator configuration structure
 */
typedef struct
{
    IfxDsadc_InputConfig       positiveInput;          /**< \brief Modulator configuration of positive input line */
    IfxDsadc_InputConfig       negativeInput;          /**< \brief Modulator configuration of negative input line */
    IfxDsadc_InputGain         inputGain;              /**< \brief Modulator gain select of analog input path */
    IfxDsadc_InputPin          inputPin;               /**< \brief Modulator input pin selection */
    float32                    modulatorClockFreq;     /**< \brief Modulator clock frequency */
    IfxDsadc_CommonModeVoltage commonModeVoltage;      /**< \brief Modulator common mode voltage selection */
} IfxDsadc_Dsadc_ModulatorConfig;

/** \brief Rectifier configuration structure
 */
typedef struct
{
    boolean                      enabled;        /**< \brief Rectification enable/disable selection */
    IfxDsadc_RectifierSignSource signSource;     /**< \brief Rectifier sign source */
    uint8                        signDelay;      /**< \brief Sign delay value */
    uint8                        signPeriod;     /**< \brief Sign period */
} IfxDsadc_Dsadc_RectifierConfig;

/** \} */

/** \addtogroup IfxLld_Dsadc_Dsadc_DataStructures
 * \{ */
/** \brief DSADC handle data structure
 */
typedef struct
{
    Ifx_DSADC *dsadc;     /**< \brief Specifies the pointer to the DSADC module registers */
} IfxDsadc_Dsadc;

/** \brief Carrier generation configuration structure
 */
typedef struct
{
    IfxDsadc_CarrierWaveformMode carrierWaveformMode;     /**< \brief Carrier generation mode */
    boolean                      inverted;                /**< \brief Signal polarity (Normal / Inverted) selection */
    boolean                      bitReversed;             /**< \brief Bit-Reverse PWM Generation (Normal / Bit reverse mode) selection */
    float32                      frequency;               /**< \brief Expected excitation frequency in Hz. */
    const IfxDsadc_Cgpwm_Out    *pinPos;                  /**< \brief Positive-carrier pin configuration */
    const IfxDsadc_Cgpwm_Out    *pinNeg;                  /**< \brief Negative-carrier pin configuration */
    IfxPort_OutputMode           pinMode;                 /**< \brief Carrier pins output mode */
    IfxPort_PadDriver            pinDriver;               /**< \brief Carrier pins pad driver */
} IfxDsadc_Dsadc_CarrierGenConfig;

/** \brief Channel handle structure
 */
typedef struct
{
    Ifx_DSADC         *module;        /**< \brief Specifies the pointer to the DSADC module registers */
    Ifx_DSADC_CH      *channel;       /**< \brief Specifies the pointer to the DSADC channel registers */
    IfxDsadc_ChannelId channelId;     /**< \brief Channel Id */
} IfxDsadc_Dsadc_Channel;

/** \brief Single channel configuration structure
 */
typedef struct
{
    Ifx_DSADC                        *module;          /**< \brief Specifies the pointer to the DSADC module registers */
    IfxDsadc_ChannelId                channelId;       /**< \brief Channel Id */
    IfxDsadc_Dsadc_ModulatorConfig    modulator;       /**< \brief Modulator configuration structure */
    IfxDsadc_Dsadc_DemodulatorConfig  demodulator;     /**< \brief Demodulator configuration structure */
    IfxDsadc_Dsadc_CombFilterConfig   combFilter;      /**< \brief Comb filter configuration structure */
    IfxDsadc_Dsadc_FirFilterConfig    firFilter;       /**< \brief FIR filters configuration structure */
    IfxDsadc_Dsadc_IntegratorConfig   integrator;      /**< \brief Integrator configuration structure */
    IfxDsadc_Dsadc_AuxFilterConfig    auxFilter;       /**< \brief Auxiliary comb filter configuration structure */
    IfxDsadc_Dsadc_RectifierConfig    rectifier;       /**< \brief Rectifier configuration structure */
    const IfxDsadc_Dsadc_ChannelPins *channelPins;     /**< \brief Channel Pins Configuration structure */
} IfxDsadc_Dsadc_ChannelConfig;

/** \brief Clock configuration data structure
 */
typedef struct
{
    Ifx_DSADC              *dsadc;                    /**< \brief Specifies the pointer to the DSADC module registers */
    IfxDsadc_ModulatorClock modulatorClockSelect;     /**< \brief Modulator clock selection */
    IfxDsadc_LowPowerSupply lowPowerSupply;           /**< \brief Low power supply voltage selection */
} IfxDsadc_Dsadc_Config;

/** \} */

/** \addtogroup IfxLld_Dsadc_Dsadc_Module
 * \{ */

/******************************************************************************/
/*-------------------------Global Function Prototypes-------------------------*/
/******************************************************************************/

/** \brief Initialise the DSADC carrier generator
 * \param dsadc pointer to the DSADC handle (it will be initialized by this function)
 * \param config pointer to the DSADC carrier configuration
 * \return None
 */
IFX_EXTERN void IfxDsadc_Dsadc_initCarrierGen(IfxDsadc_Dsadc *dsadc, IfxDsadc_Dsadc_CarrierGenConfig *config);

/** \brief Initialise the DSADC with the supplied configuration
 * \param dsadc pointer to the DSADC handle (it will be initialized by this function)
 * \param config pointer to the DSADC module configuration
 * \return None
 *
 * A coding example can be found in \ref IfxLld_Dsadc_Dsadc_Usage
 *
 */
IFX_EXTERN void IfxDsadc_Dsadc_initModule(IfxDsadc_Dsadc *dsadc, IfxDsadc_Dsadc_Config *config);

/** \brief Initialise the config struct with default DSADC configuration
 * \param config pointer to the DSADC module configuration
 * \param dsadc base address of the DSADC register space
 * \return None
 *
 * A coding example can be found in \ref IfxLld_Dsadc_Dsadc_Usage
 *
 */
IFX_EXTERN void IfxDsadc_Dsadc_initModuleConfig(IfxDsadc_Dsadc_Config *config, Ifx_DSADC *dsadc);

/** \} */

/** \addtogroup IfxLld_Dsadc_Dsadc_Channel
 * \{ */

/******************************************************************************/
/*-------------------------Global Function Prototypes-------------------------*/
/******************************************************************************/

/** \brief Initialise a DSADC channel with the supplied configuration
 * \param channel pointer to the DSADC channel handle (it will be initialized by this function)
 * \param config pointer to the DSADC Channel configuration
 * \return None
 *
 * A coding example can be found in \ref IfxLld_Dsadc_Dsadc_Usage
 *
 */
IFX_EXTERN void IfxDsadc_Dsadc_initChannel(IfxDsadc_Dsadc_Channel *channel, const IfxDsadc_Dsadc_ChannelConfig *config);

/** \brief Initialise the config struct with default DSADC channel configuration
 * \param config pointer to the DSADC Channel configuration (it will be initialized by this function)
 * \param dsadc pointer to the DSADC handle
 * \return None
 *
 * A coding example can be found in \ref IfxLld_Dsadc_Dsadc_Usage
 *
 */
IFX_EXTERN void IfxDsadc_Dsadc_initChannelConfig(IfxDsadc_Dsadc_ChannelConfig *config, IfxDsadc_Dsadc *dsadc);

/** \} */

/** \addtogroup IfxLld_Dsadc_Dsadc_Operative
 * \{ */

/******************************************************************************/
/*-------------------------Inline Function Prototypes-------------------------*/
/******************************************************************************/

/** \brief Enables the conversion of multiple channels
 * \param dsadc Pointer to the DSADC handle
 * \param modulatorMask the modulator which should be running (bitwise selection)
 * \param channelMask the channels which should be scanned (bitwise selection)
 * \return None
 *
 * A coding example can be found in \ref IfxLld_Dsadc_Dsadc_Usage
 *
 */
IFX_INLINE void IfxDsadc_Dsadc_startScan(IfxDsadc_Dsadc *dsadc, uint32 modulatorMask, uint32 channelMask);

/** \brief Disables the conversion of multiple channels
 * \param dsadc Pointer to the DSADC handle
 * \param modulatorMask the modulator which should be running (bitwise selection)
 * \return None
 *
 * \code
 *     // disable the modulators of all 6 DSADC channels
 *     IfxDsadc_Dsadc_stopScan(&dsadc, 0x3f);
 * \endcode
 *
 */
IFX_INLINE void IfxDsadc_Dsadc_stopScan(IfxDsadc_Dsadc *dsadc, uint32 modulatorMask);

/** \} */

/** \addtogroup IfxLld_Dsadc_Dsadc_Results
 * \{ */

/******************************************************************************/
/*-------------------------Inline Function Prototypes-------------------------*/
/******************************************************************************/

/** \brief Get result from the main chain
 * \param channel Pointer to the DSADC channel handle
 * \return result from the main chain
 */
IFX_INLINE sint16 IfxDsadc_Dsadc_getMainResult(IfxDsadc_Dsadc_Channel *channel);

/******************************************************************************/
/*-------------------------Global Function Prototypes-------------------------*/
/******************************************************************************/

/** \brief Get result from the auxilary chain
 * \param channel Pointer to the DSADC channel handle
 * \return result from the auxiliary chain
 */
IFX_EXTERN sint16 IfxDsadc_Dsadc_getAuxResult(IfxDsadc_Dsadc_Channel *channel);

/** \} */

/** \addtogroup IfxLld_Dsadc_Dsadc_Interrupt
 * \{ */

/******************************************************************************/
/*-------------------------Inline Function Prototypes-------------------------*/
/******************************************************************************/

/** \brief Get the interrupt source register for a Aux event
 * \param channel Pointer to the DSADC channel handle
 * \return Address/pointer to the interrupt source register
 */
IFX_INLINE volatile Ifx_SRC_SRCR *IfxDsadc_Dsadc_getAuxSrc(IfxDsadc_Dsadc_Channel *channel);

/** \brief Get the interrupt source register for a Main event
 * \param channel Pointer to the DSADC channel handle
 * \return Address/pointer to the interrupt source register
 */
IFX_INLINE volatile Ifx_SRC_SRCR *IfxDsadc_Dsadc_getMainSrc(IfxDsadc_Dsadc_Channel *channel);

/** \} */

/******************************************************************************/
/*-------------------------Global Function Prototypes-------------------------*/
/******************************************************************************/

/**
 * \param config Pointer to DSADC Carrier Configuration
 * \return None
 */
IFX_EXTERN void IfxDsadc_Dsadc_initCarrierGenConfig(IfxDsadc_Dsadc_CarrierGenConfig *config);

/******************************************************************************/
/*---------------------Inline Function Implementations------------------------*/
/******************************************************************************/

IFX_INLINE volatile Ifx_SRC_SRCR *IfxDsadc_Dsadc_getAuxSrc(IfxDsadc_Dsadc_Channel *channel)
{
    return IfxDsadc_getAuxSrc(channel->module, channel->channelId);
}


IFX_INLINE sint16 IfxDsadc_Dsadc_getMainResult(IfxDsadc_Dsadc_Channel *channel)
{
    return IfxDsadc_getMainResult(channel->module, channel->channelId);
}


IFX_INLINE volatile Ifx_SRC_SRCR *IfxDsadc_Dsadc_getMainSrc(IfxDsadc_Dsadc_Channel *channel)
{
    return IfxDsadc_getMainSrc(channel->module, channel->channelId);
}


IFX_INLINE void IfxDsadc_Dsadc_startScan(IfxDsadc_Dsadc *dsadc, uint32 modulatorMask, uint32 channelMask)
{
    IfxDsadc_startScan(dsadc->dsadc, modulatorMask, channelMask);
}


IFX_INLINE void IfxDsadc_Dsadc_stopScan(IfxDsadc_Dsadc *dsadc, uint32 modulatorMask)
{
    IfxDsadc_stopScan(dsadc->dsadc, modulatorMask);
}


#endif /* IFXDSADC_DSADC_H */
