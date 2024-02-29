/**
 * \file IfxMtu.h
 * \brief MTU  basic functionality
 * \ingroup IfxLld_Mtu
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
 *
 *
 * \defgroup IfxLld_Mtu_Std_Utility Utility Functions
 * \ingroup IfxLld_Mtu_Std
 * \defgroup IfxLld_Mtu_Std_Operative MBIST Operations
 * \ingroup IfxLld_Mtu_Std
 * \defgroup IfxLld_Mtu_Std_ErrorTracking MBIST Error Tracking
 * \ingroup IfxLld_Mtu_Std
 */

#ifndef IFXMTU_H
#define IFXMTU_H 1

/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/

#include "_Impl/IfxMtu_cfg.h"
#include "IfxMc_bf.h"
#include "IfxMtu_reg.h"
#include "IfxMc_reg.h"
#include "IfxScu_reg.h"
#include "_Utilities/Ifx_Assert.h"
#include "Scu/Std/IfxScuWdt.h"
#include "Scu/Std/IfxScuCcu.h"
/** \addtogroup IfxLld_Mtu_Std_Utility
 * \{ */

/******************************************************************************/
/*-------------------------Inline Function Prototypes-------------------------*/
/******************************************************************************/

/** \brief Enables the MTU module
 * \return None
 */
IFX_INLINE void IfxMtu_enableModule(void);

/** \brief Returns the status of whether the module is enabled or not
 * \return
 */
IFX_INLINE boolean IfxMtu_isModuleEnabled(void);

/******************************************************************************/
/*-------------------------Global Function Prototypes-------------------------*/
/******************************************************************************/

/** \brief Disables the MBIST Shell of the given SRAM
 * \param mbistSel Memory Selection
 * \return None
 *
 * Usage Example
 * \code
 *
 *     IfxMtu_disableMbistShell(IfxMtu_MbistSel_cpu0Dtag);
 *
 *     // Note: Wait for Auto-initilisation to be completed for auto-init memories like cpu-Dtag, cpu-Ptag,  Cpu-Dcache, Cpu-Pcache
 *     while (IfxMtu_isAutoInitRunning(IfxMtu_MbistSel_cpu0Dtag))
 *     {}
 * \endcode
 *
 */
IFX_EXTERN void IfxMtu_disableMbistShell(IfxMtu_MbistSel mbistSel);

/** \brief Enables the MBIST Shell of the given SRAM.
 * \param mbistSel Memory Selection
 * \return None
 *
 * Usage Example
 * \code
 *     // Enable MTU clock
 *     {
 *         uint16 password = IfxScuWdt_getCpuWatchdogPassword();
 *         IfxScuWdt_clearCpuEndinit(password);
 *         IfxMtu_enableModule();
 *         IfxScuWdt_setCpuEndinit(password);
 *     }
 *
 *     {
 *       IfxMtu_enableMbistShell(IfxMtu_MbistSel_cpu0Dtag);
 *
 *       // Note: Wait for Auto-initilisation to be completed for auto-init memories like cpu-Dtag, cpu-Ptag,  Cpu-Dcache, Cpu-Pcache,
 *       while (IfxMtu_isAutoInitRunning(IfxMtu_MbistSel_cpu0Dtag))
 *       {}
 *     }
 * \endcode
 *
 */
IFX_EXTERN void IfxMtu_enableMbistShell(IfxMtu_MbistSel mbistSel);

/** \brief Returns TRUE if Auto-Initialisation is running for the given SRAM.
 *
 * Should be polled after MBIST enableMbistShell to ensure that an auto-init operation is finished before starting a new operation.
 * \param mbistSel Memory Selection
 * \return TRUE if auto-initialisation running.
 */
IFX_EXTERN boolean IfxMtu_isAutoInitRunning(IfxMtu_MbistSel mbistSel);

/** \} */

/** \addtogroup IfxLld_Mtu_Std_Operative
 * \{ */

/******************************************************************************/
/*-------------------------Global Function Prototypes-------------------------*/
/******************************************************************************/

/** \brief Function to Clear the MBIST SRAM.
 * Note: The function clears & sets safety endinit bit while running the test to prevent watchdog TO and automatically restores the endinit state (same state at the time of entering the function) at the end.
 * \param mbistSel Memory Selection
 * \return None
 *
 * Usage Example for clearing all ERAY and GTM SRAMs:
 * \code
 *     // Enable MTU clock
 *     {
 *         uint16 password = IfxScuWdt_getCpuWatchdogPassword();
 *         IfxScuWdt_clearCpuEndinit(password);
 *         IfxMtu_enableModule();
 *         IfxScuWdt_setCpuEndinit(password);
 *     }
 *
 *     // Note: clearSram functions will trap with bus error if wrong ECC is initialized
 *     {
 *         uint16 password = IfxScuWdt_getSafetyWatchdogPassword();
 *         IfxScuWdt_clearSafetyEndinit(password);
 *
 *         IfxMtu_clearSram(IfxMtu_MbistSel_gtmFifo);
 *         IfxMtu_clearSram(IfxMtu_MbistSel_gtmMcs0);
 *         IfxMtu_clearSram(IfxMtu_MbistSel_gtmMcs1);
 *         IfxMtu_clearSram(IfxMtu_MbistSel_gtmDpll1a);
 *         IfxMtu_clearSram(IfxMtu_MbistSel_gtmDpll1b);
 *         IfxMtu_clearSram(IfxMtu_MbistSel_gtmDpll2);
 *
 *         IfxMtu_clearSram(IfxMtu_MbistSel_erayObf);
 *         IfxMtu_clearSram(IfxMtu_MbistSel_erayIbfTbf);
 *         IfxMtu_clearSram(IfxMtu_MbistSel_erayMbf);
 *
 *         IfxScuWdt_setSafetyEndinit(password);
 *     }
 * \endcode
 *
 */
IFX_EXTERN void IfxMtu_clearSram(IfxMtu_MbistSel mbistSel);

/**
 * \param mbistSel Memory Selection
 * \param sramAddress SRAM address which should be read
 * \return None
 */
IFX_EXTERN void IfxMtu_readSramAddress(IfxMtu_MbistSel mbistSel, uint16 sramAddress);

/** \brief Run CheckerBoard test.  This test consists of writing the physical checkerboard pattern into the memory, then reading it back for verification
 * Note: The function clears & sets safety endinit bit while running the test to prevent watchdog TO and automatically restores the endinit state (same state at the time of entering the function) at the end.
 * \param mbistSel Memory Selection
 * \param rangeSel enable/disable range Selection (0 - disable, 1- enable)
 * \param rangeAddrUp when range mode is enabled, it specifies the upper logical block address limit in 64 word increments.
 * \param rangeAddrLow when range mode is enabled, it specifies the lower logical block address limit.
 * \param errorAddr If the test fails, it contains the error address (bit0 - bit12) and memory block index (Bit13 - Bit15)
 * \return Test Status (0-PASS, 1- FAIL)
 *
 * Usage Example:
 * \code
 *     // Enable MTU clock
 *     {
 *         uint16 password = IfxScuWdt_getCpuWatchdogPassword();
 *         IfxScuWdt_clearCpuEndinit(password);
 *         IfxMtu_enableModule();
 *         IfxScuWdt_setCpuEndinit(password);
 *     }
 *
 *
 *     {
 *         uint16 password = IfxScuWdt_getSafetyWatchdogPassword();
 *         uint16 errAddr = 0;
 *         IfxScuWdt_clearSafetyEndinit(password);
 *        // run checkerboard test for cpu0 DSPR memory (Range selection disabled)
 *         IfxMtu_runCheckerBoardTest(IfxMtu_MbistSel_cpu0Dspr, 0, 0xFFFF, 0, &errAddr, 0);
 *
 *         IfxScuWdt_setSafetyEndinit(password);
 *     }
 * \endcode
 *
 */
IFX_EXTERN uint8 IfxMtu_runCheckerBoardTest(IfxMtu_MbistSel mbistSel, uint8 rangeSel, uint8 rangeAddrUp, uint8 rangeAddrLow, uint16 *errorAddr, uint32 numberRedundancyLines);

/** \brief Run March U test.  This test MARCHES 0 and 1 values through the memory array in an up and down direction. More precisely, 0 and 1 values are propagated through the memory in each direction; i.e. a single bit cell toggles into each direction with the neighboring cells having a given value and, in another run, the inverse given value.
 * Note: The function clears & sets safety endinit bit while running the test to prevent watchdog TO and automatically restores the endinit state (same state at the time of entering the function) at the end.
 * \param mbistSel Memory Selection
 * \param rangeSel enable/disable range Selection (0 - disable, 1- enable)
 * \param rangeAddrUp when range mode is enabled, it specifies the upper logical block address limit in 64 word increments.
 * \param rangeAddrLow when range mode is enabled, it specifies the lower logical block address limit.
 * \param errorAddr If the test fails, it contains the error address (bit0 - bit12) and memory block index (Bit13 - Bit15)
 * \return Test Status (0-PASS, 1- FAIL)
 *
 * Usage Example:
 * \code
 *     // Enable MTU clock
 *     {
 *         uint16 password = IfxScuWdt_getCpuWatchdogPassword();
 *         IfxScuWdt_clearCpuEndinit(password);
 *         IfxMtu_enableModule();
 *         IfxScuWdt_setCpuEndinit(password);
 *     }
 *
 *
 *     {
 *         uint16 password = IfxScuWdt_getSafetyWatchdogPassword();
 *         uint16 errAddr = 0;
 *         IfxScuWdt_clearSafetyEndinit(password);
 *        // run March U test for cpu0 DSPR memory (Range selection disabled)
 *         IfxMtu_runMarchUTest(IfxMtu_MbistSel_cpu0Dspr, 0, 0xFFFF, 0, &errAddr);
 *
 *         IfxScuWdt_setSafetyEndinit(password);
 *     }
 * \endcode
 *
 */
IFX_EXTERN uint8 IfxMtu_runMarchUTest(IfxMtu_MbistSel mbistSel, uint8 rangeSel, uint8 rangeAddrUp, uint8 rangeAddrLow, uint16 *errorAddr);

/** \brief This function runs the Non-Destructive Inversion test algorithm.
 * Non-Destructive Inversion test can be considered as a simple linear test that is able to find all Stuck-At faults (the cell remains stuck at a value for any operation) without destroying any user data. The test accesses every Word in the address range defined by the RANGE register, four times.
 * Test Steps:
 * 1. Read data Word including check bits
 * 2. write back all bits inverted
 * 3. Read data Word including check bits
 * 4. Write back all bits inverted
 * At the end of this procedure the user data remains unchanged and and every bit has been set to 0 and 1. Any single Stuck-At error will be visible as a correctable error.
 * Note: The function clears & sets safety endinit bit while running the test to prevent watchdog TO and automatically restores the endinit state (same state at the time of entering the function) at the end.
 * \param mbistSel Memory Selection
 * \param rangeSel enable/disable range Selection (0 - disable, 1- enable)
 * \param rangeAddrUp when range mode is enabled, it specifies the upper logical block address limit in 64 word increments.
 * \param rangeAddrLow when range mode is enabled, it specifies the lower logical block address limit.
 * \param errorAddr If the test fails, it contains the error address (bit0 - bit12) and memory block index (Bit13 - Bit15)
 * \return Test Status (0-PASS, 1- FAIL)
 *
 * Usage Example:
 * \code
 *     // Enable MTU clock
 *     {
 *         uint16 password = IfxScuWdt_getCpuWatchdogPassword();
 *         IfxScuWdt_clearCpuEndinit(password);
 *         IfxMtu_enableModule();
 *         IfxScuWdt_setCpuEndinit(password);
 *     }
 *
 *
 *     {
 *         uint16 password = IfxScuWdt_getSafetyWatchdogPassword();
 *         uint16 errAddr = 0;
 *         IfxScuWdt_clearSafetyEndinit(password);
 *
 *        // run Non distructive inversion test for cpu0 DSPR memory (Range selection disabled)
 *         IfxMtu_runNonDestructiveInversionTest(IfxMtu_MbistSel_cpu0Dspr, 0, 0xFFFF, 0, &errAddr);
 *
 *         IfxScuWdt_setSafetyEndinit(password);
 *     }
 * \endcode
 *
 */
IFX_EXTERN uint8 IfxMtu_runNonDestructiveInversionTest(IfxMtu_MbistSel mbistSel, uint8 rangeSel, uint8 rangeAddrUp, uint8 rangeAddrLow, uint16 *errorAddr);

/**
 * \param mbistSel Memory Selection
 * \param sramAddress SRAM address which should be written
 * \return None
 */
IFX_EXTERN void IfxMtu_writeSramAddress(IfxMtu_MbistSel mbistSel, uint16 sramAddress);

/** \} */

/** \addtogroup IfxLld_Mtu_Std_ErrorTracking
 * \{ */

/******************************************************************************/
/*-------------------------Global Function Prototypes-------------------------*/
/******************************************************************************/

/** \brief Clears the error tracking registers (ETRR), valid and overflow bits.
 * CAUTION: This function should be called after enabling Mbist Shell (Refer Errata: MTU_TC.005).
 * \param mbistSel Memory Selection
 * \return None
 */
IFX_EXTERN void IfxMtu_clearErrorTracking(IfxMtu_MbistSel mbistSel);

/** \brief Enables the tracking of SRAM errors.
 * \param mbistSel Memory Selection
 * \param enable TRUE to enable error tracking, FALSE to disable error tracking.
 * \return None
 */
IFX_EXTERN void IfxMtu_enableErrorTracking(IfxMtu_MbistSel mbistSel, boolean enable);

/** \brief Returns the descrambled system address based on a tracked SRAM error which consists of ADDR and MBI (SRAM address and block)
 *
 * Please note that not all memories of the system are supported by this function.
 * Additional memories will be considered on request.
 * \param mbistSel Memory Selection
 * \param trackedSramAddress tracked SRAM address which consists of an ADDR and MBI field (SRAM address and block)
 * \return descrambled system address if supported by this function, otherwise 0
 *
 * Example usage: see \ref IfxMtu_getTrackedSramAddresses
 *
 */
IFX_EXTERN uint32 IfxMtu_getSystemAddress(IfxMtu_MbistSel mbistSel, Ifx_MC_ETRR trackedSramAddress);

/** \brief Returns the tracked SRAM error addresses and memory blocks which are stored in the MBIST ETRR registers.
 * CAUTION: This function should be called after enabling Mbist Shell (Refer Errata: MTU_TC.005).
 * \param mbistSel Memory Selection
 * \param trackedSramAddresses will contain the tracked error addresses in trackedSramAdresses[x].B.ADDR and affected blocks in sramAddresses[x].B.MBI
 *
 * The array size shall be IFXMTU_MAX_TRACKED_ADDRESSES
 * \return number of tracked errors (0..IFXMTU_MAX_TRACKED_ADDRESSES)
 *
 * Example usage to print out tracked errors of a given memory:
 *
 * We assume that the MTU clock has already been enabled, and that the MBIST instance has been selected; e.g. for LMU:
 * \code
 *     uint16 password = IfxScuWdt_getCpuWatchdogPassword();
 *     IfxScuWdt_clearCpuEndinit(password);
 *
 *     IfxMtu_enableModule();
 *
 *     IfxMtu_MbistSel mbistSel = IfxMtu_MbistSel_lmu;
 *
 *     IfxMtu_enableMbistShell(mbistSel);
 *
 *     // for auto-init memories: wait for the end of the clear operation
 *     while (IfxMtu_isAutoInitRunning(mbistSel))
 *         {}
 * \endcode
 *
 * Now the tracking information can be retrieved with:
 *
 * \code
 *     {
 *         Ifx_MC_ETRR trackedSramAddresses[IFXMTU_MAX_TRACKED_ADDRESSES];
 *         uint8  numTrackedAddresses = IfxMtu_getTrackedSramAddresses(mbistSel, trackedSramAddresses);
 *
 *         clib_ver_printf("Tracked addresses: %d (Overflow: %d)\n",
 *                         numTrackedAddresses,
 *                         IfxMtu_isErrorTrackingOverflow(mbistSel) ? 1 : 0);
 *
 *         for(int i=0; i<numTrackedAddresses; ++i) {
 *             clib_ver_printf("%d: A:0x%04x MBI:%d -> SystemAddress: 0x%08x\n",
 *                             i,
 *                             trackedSramAddresses[i].B.ADDR,
 *                             trackedSramAddresses[i].B.MBI,
 *                             IfxMtu_getSystemAddress(mbistSel, trackedSramAddresses[i]));
 *         }
 *     }
 * \endcode
 *
 */
IFX_EXTERN uint8 IfxMtu_getTrackedSramAddresses(IfxMtu_MbistSel mbistSel, Ifx_MC_ETRR *trackedSramAddresses);

/** \brief Returns the status of the error tracking
 * \param mbistSel Memory Selection
 * \return TRUE if error tracking enabled.
 */
IFX_EXTERN boolean IfxMtu_isErrorTrackingEnabled(IfxMtu_MbistSel mbistSel);

/** \brief Returns the error tracking overflow status.
 * CAUTION: This function should be called after enabling Mbist Shell (Refer Errata: MTU_TC.005).
 * \param mbistSel Memory Selection
 * \return TRUE if more errors were detected since last clear than error tracking registers are available, or if more than one memory block was in error at the same time.
 */
IFX_EXTERN boolean IfxMtu_isErrorTrackingOverflow(IfxMtu_MbistSel mbistSel);

/** \} */

/******************************************************************************/
/*---------------------Inline Function Implementations------------------------*/
/******************************************************************************/

IFX_INLINE void IfxMtu_enableModule(void)
{
    // MTU clock enable
    MTU_CLC.U = 0x0;
}


IFX_INLINE boolean IfxMtu_isModuleEnabled(void)
{
    return MTU_CLC.B.DISS == 0;
}


#endif /* IFXMTU_H */
