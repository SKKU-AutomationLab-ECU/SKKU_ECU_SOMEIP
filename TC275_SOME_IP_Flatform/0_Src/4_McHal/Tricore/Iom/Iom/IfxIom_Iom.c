/**
 * \file IfxIom_Iom.c
 * \brief IOM IOM details
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
 *
 */

/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/

#include "IfxIom_Iom.h"

/******************************************************************************/
/*-------------------------Function Implementations---------------------------*/
/******************************************************************************/

void IfxIom_Iom_clearFpcEdges(IfxIom_Iom_FpcConfig *fpcConfig, IfxIom_Iom *iom)
{
    Ifx_IOM *iomSFR    = iom->iom;
    uint8    channelId = (IfxIom_FpcChannelId)fpcConfig->channelId;

    if (fpcConfig->edgeType == IfxIom_EdgeClearType_rising) /* to clear rising edge */
    {
        Ifx_IOM_FPCESR tempFPCESR;
        tempFPCESR.U     = (1 << (channelId + 16U));
        iomSFR->FPCESR.U = tempFPCESR.U;
    }
    else if (fpcConfig->edgeType == IfxIom_EdgeClearType_falling) /* to clear falling edge */
    {
        Ifx_IOM_FPCESR tempFPCESR;
        tempFPCESR.U     = (1 << channelId);
        iomSFR->FPCESR.U = tempFPCESR.U;
    }
    else if (fpcConfig->edgeType == IfxIom_EdgeClearType_risingFalling) /* to clear both edges */
    {
        Ifx_IOM_FPCESR tempFPCESR;
        tempFPCESR.U     = (1 << channelId);
        tempFPCESR.U    |= (1 << (channelId + 16U));
        iomSFR->FPCESR.U = tempFPCESR.U;
    }
    else
    {
        /* do nothing */
    }
}


void IfxIom_Iom_deInitModule(IfxIom_Iom *iom)
{
    IfxIom_resetModule(iom->iom);
}


boolean IfxIom_Iom_initAnalyser(IfxIom_Iom *iom, const IfxIom_Iom_LamConfig *lamConfig)
{
    boolean  status = TRUE;

    Ifx_IOM *iomSFR = iom->iom;
    uint8    lamId  = (IfxIom_LamId)lamConfig->lamId;
    {
        Ifx_IOM_LAMCFG tempLAMCFG;
        tempLAMCFG.U            = 0;
        tempLAMCFG.B.IVR        = lamConfig->referenceSignalInverted;
        tempLAMCFG.B.IVM        = lamConfig->monitorSignalInverted;
        tempLAMCFG.B.MOS        = lamConfig->lamMonitorSource;
        tempLAMCFG.B.RMS        = lamConfig->lamMode;
        tempLAMCFG.B.EWS        = lamConfig->eventSource;
        tempLAMCFG.B.EDS        = lamConfig->eventActiveEdgeSelection;
        tempLAMCFG.B.IVW        = lamConfig->eventWindowInverted;
        tempLAMCFG.B.MCS        = lamConfig->lamMonitorInputChannel;
        tempLAMCFG.B.RCS        = lamConfig->lamReferenceInputChannel;
        iomSFR->LAMCFG[lamId].U = tempLAMCFG.U;
    }

    {
        Ifx_IOM_LAMEWS tempLAMEWS;
        tempLAMEWS.U            = 0;
        tempLAMEWS.B.THR        = lamConfig->eventWindowThreshold;
        iomSFR->LAMEWS[lamId].U = tempLAMEWS.U;
    }
    return status;
}


void IfxIom_Iom_initAnalyserConfig(IfxIom_Iom_LamConfig *lamConfig)
{
    lamConfig->lamId                    = IfxIom_LamId_0;
    lamConfig->lamMode                  = IfxIom_LamRunMode_freeRunning;
    lamConfig->lamMonitorInputChannel   = IfxIom_LamMonitorInputChannel_0;
    lamConfig->lamReferenceInputChannel = IfxIom_LamReferenceInputChannel_0;
    lamConfig->eventWindowThreshold     = 15;
    lamConfig->monitorSignalInverted    = TRUE;
    lamConfig->referenceSignalInverted  = TRUE;
    lamConfig->eventSource              = IfxIom_EventSource_reference;
    lamConfig->lamMonitorSource         = IfxIom_LamMonitorSource_directFpcMonitor;
    lamConfig->eventWindowInverted      = TRUE;
    lamConfig->eventActiveEdgeSelection = IfxIom_EventActiveEdgeSelection_positiveGateEitherClear;
}


boolean IfxIom_Iom_initCombiner(IfxIom_Iom *iom, const IfxIom_Iom_EcmConfig *ecmConfig)
{
    boolean  status = TRUE;
    Ifx_IOM *iomSFR = iom->iom;
    {
        Ifx_IOM_ECMCCFG tempECMCCFG;
        tempECMCCFG.U       = 0;
        tempECMCCFG.B.SELC0 = ecmConfig->eventCounter[0].input;
        tempECMCCFG.B.THRC0 = ecmConfig->eventCounter[0].threshold;
        tempECMCCFG.B.SELC1 = ecmConfig->eventCounter[1].input;
        tempECMCCFG.B.THCR1 = ecmConfig->eventCounter[1].threshold;
        tempECMCCFG.B.SELC2 = ecmConfig->eventCounter[2].input;
        tempECMCCFG.B.THCR2 = ecmConfig->eventCounter[2].threshold;
        tempECMCCFG.B.SELC3 = ecmConfig->eventCounter[3].input;
        tempECMCCFG.B.THCR3 = ecmConfig->eventCounter[3].threshold;
        iomSFR->ECMCCFG.U   = tempECMCCFG.U;
    }

    {
        iomSFR->ECMSELR.U = ecmConfig->globalEventSelection.U;
    }
    return status;
}


void IfxIom_Iom_initCombinerConfig(IfxIom_Iom_EcmConfig *ecmConfig)
{
    uint8 counterId;
    ecmConfig->globalEventSelection.U = 0;

    for (counterId = 0; counterId <= 3; counterId++)
    {
        ecmConfig->eventCounter[counterId].input     = IfxIom_EventCounterChannel_0;
        ecmConfig->eventCounter[counterId].threshold = IfxIom_EventCounterThreshold_disable;
    }
}


boolean IfxIom_Iom_initFpcChannel(IfxIom_Iom *iom, const IfxIom_Iom_FpcConfig *fpcConfig)
{
    boolean  status = TRUE;

    Ifx_IOM *iomSFR = iom->iom;
    uint8    exorInput;

    {
        uint8          channelId = (IfxIom_FpcChannelId)fpcConfig->channelId;
        Ifx_IOM_FPCCTR tempFPCCTR;
        tempFPCCTR.U                = 0;
        tempFPCCTR.B.CMP            = fpcConfig->comparatorThreshold;
        tempFPCCTR.B.MOD            = fpcConfig->filterMode;
        tempFPCCTR.B.ISM            = fpcConfig->monitorSignal;
        tempFPCCTR.B.RTG            = fpcConfig->timerReset;
        tempFPCCTR.B.ISR            = fpcConfig->referenceSignal;
        iomSFR->FPCCTR[channelId].U = tempFPCCTR.U;
    }

    {
        Ifx_IOM_GTMEXR tempGTMEXR;
        tempGTMEXR.U = 0;

        for (exorInput = 0; exorInput <= 7; exorInput++)
        {
            if (fpcConfig->exorInputEnable[exorInput])
            {
                tempGTMEXR.U |= (1 << exorInput);
            }
            else
            {
                tempGTMEXR.U &= ~(1 << exorInput);
            }
        }

        iomSFR->GTMEXR.U = tempGTMEXR.U;
    }
    return status;
}


void IfxIom_Iom_initFpcChannelConfig(IfxIom_Iom_FpcConfig *fpcConfig)
{
    uint8 exorInput;
    fpcConfig->channelId           = IfxIom_FpcChannelId_0;
    fpcConfig->filterMode          = IfxIom_FilterMode_delayedDebounce;
    fpcConfig->referenceSignal     = IfxIom_ReferenceSignal_portLogic;
    fpcConfig->monitorSignal       = IfxIom_MonitorSignal_portLogic;
    fpcConfig->comparatorThreshold = 15;
    fpcConfig->timerReset          = TRUE;
    fpcConfig->edgeType            = IfxIom_EdgeClearType_risingFalling;

    for (exorInput = 0; exorInput <= 7; exorInput++)
    {
        fpcConfig->exorInputEnable[exorInput] = FALSE;
    }
}


boolean IfxIom_Iom_initModule(IfxIom_Iom *iom)
{
    boolean  status = TRUE;

    Ifx_IOM *iomSFR = iom->iom;
    {
        Ifx_IOM_CLC tempCLC;
        tempCLC.U      = 0;
        tempCLC.B.EDIS = 0;
        tempCLC.B.RMC  = 1;
        uint16      passwd = IfxScuWdt_getCpuWatchdogPassword();
        IfxScuWdt_clearCpuEndinit(passwd);
        iomSFR->CLC.U = tempCLC.U;
        IfxIom_enableModule(iomSFR);
        IfxScuWdt_setCpuEndinit(passwd);
    }

    return status;
}


void IfxIom_Iom_initModuleConfig(IfxIom_Iom *iom, Ifx_IOM *module)
{
    iom->iom = module;
}
