/*
 * Task_Init.h
 *
 *  Created on: 2017. 8. 13.
 *      Author: Hyunsu.An
 */

#ifndef TASK_INIT_H_
#define TASK_INIT_H_


/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/
#include <Ifx_Types.h>
#include <Stm/Std/IfxStm.h>
#include <Src/Std/IfxSrc.h>
#include "System_ISR_Priority.h"
#include "Cpu/Irq/IfxCpu_Irq.h"
#include "IfxPort.h"
#include "CpuX_Main.h"
#include "Cpu/Irq/IfxCpu_Irq.h"
#include "IfxPort.h"

#include "Application.h"


/******************************************************************************/
/*-----------------------------------Macros-----------------------------------*/
/******************************************************************************/
/* Enable Core */
#define Enable_Core0			1
#define Enable_Core1			1
#define Enable_Core2			1


/* Enable Task */
#define _Enable_STM_Task00		0
#define _Enable_STM_Task01		0
#define _Enable_STM_Task10		0
#define _Enable_STM_Task11		0
#define _Enable_STM_Task20		0
#define _Enable_STM_Task21		0

#define TimeConst_500us		TimeConst_100us*5
#define TimeConst_2ms		TimeConst_1ms*2
#define TimeConst_3ms		TimeConst_1ms*3
#define TimeConst_20ms		TimeConst_1ms*20
#define TimeConst_30ms		TimeConst_1ms*30
#define TimeConst_40ms		TimeConst_1ms*40
#define TimeConst_50ms		TimeConst_1ms*50
#define TimeConst_5s		TimeConst_1s*5

/******************************************************************************/
/*-------------------------Function Prototypes--------------------------------*/
/******************************************************************************/
void Initialize_Task_Cores(void);

void Enable_STM_Task00(void);
void Enable_STM_Task01(void);
void Enable_STM_Task10(void);
void Enable_STM_Task11(void);
void Enable_STM_Task20(void);
void Enable_STM_Task21(void);

void ISR_STM_Task00(void);
void ISR_STM_Task01(void);
void ISR_STM_Task10(void);
void ISR_STM_Task11(void);
void ISR_STM_Task20(void);
void ISR_STM_Task21(void);

IFX_EXTERN unsigned int IO_getSTM0Tic(void);
IFX_EXTERN unsigned int IO_getSTM1Tic(void);
IFX_EXTERN unsigned int IO_getSTM2Tic(void);

#endif /* TASK_INIT_H_ */
