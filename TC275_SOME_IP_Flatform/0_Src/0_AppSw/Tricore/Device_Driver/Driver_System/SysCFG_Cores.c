/*
 * Task_Init.c
 *
 *  Created on: 2017. 8. 13.
 *      Author: Hyunsu.An
 */


#include "CpuX_Main.h"
#include <Ifx_Types.h>
#include "SysCFG_Cores.h"
#include "Cpu/Irq/IfxCpu_Irq.h"
#include "System_Configuration.h"
#include "Timed_Trigger.h"


void Initialize_Task_Cores(void)
{
#if Enable_Core0
	#if SysLog_Core
	printf_SysLog("SysCFG_Core0 -> Enabled.\r\n");
	/* To do more... */
	#endif
#endif

#if Enable_Core1
	#if SysLog_Core
	printf_SysLog("SysCFG_Core1 -> Enabled.\r\n");
	/* To do more... */
	#endif
#endif

#if Enable_Core2
	#if SysLog_Core
	printf_SysLog("SysCFG_Core2 -> Enabled.\r\n");
	/* To do more... */
	#endif
#endif


#if _Enable_STM_Task00
	Enable_STM_Task00();
	#if SysLog_Core
	printf_SysLog(" -> <Task00> is activated in Core0.\r\n");
	#endif
	/* To do more... */
#endif

#if _Enable_STM_Task01
	Enable_STM_Task01();
	#if SysLog_Core
	printf_SysLog(" -> <Task01> is activated in Core0.\r\n");
	#endif
	/* To do more... */
#endif

#if _Enable_STM_Task10
	Enable_STM_Task10();
	#if SysLog_Core
	printf_SysLog(" -> <Task10> is activated in Core1.\r\n");
	#endif
	/* To do more... */
#endif

#if _Enable_STM_Task11
	Enable_STM_Task11();
	#if SysLog_Core
	printf_SysLog(" -> <Task11> is activated in Core1.\r\n");
	#endif
	/* To do more... */
#endif

#if _Enable_STM_Task20
	Enable_STM_Task20();
	#if SysLog_Core
	printf_SysLog(" -> <Task20> is activated in Core2.\r\n");
	#endif
	/* To do more... */
#endif

#if _Enable_STM_Task21
	Enable_STM_Task21();
	#if SysLog_Core
	printf_SysLog(" -> <Task21> is activated in Core2.\r\n");
	#endif
	/* To do more... */
#endif
}


void Enable_STM_Task00(void)
{
	boolean interruptState = IfxCpu_disableInterrupts();

	initTime();

	IfxCpu_Irq_installInterruptHandler(ISR_STM_Task00, ISR_PRIORITY_Task00);

	Ifx_STM *stm00;
	stm00 = &MODULE_STM0;
	stm00->CMCON.B.MSIZE0 = 31; 		// compare size
	stm00->CMCON.B.MSTART0 = 0;			// compare offset
	stm00->ICR.B.CMP0OS = 0;			// conf interrupt

	volatile Ifx_SRC_SRCR *srcr00;
	srcr00 = &MODULE_SRC.STM.STM[0].SR0;
	srcr00->B.SRPN = ISR_PRIORITY_Task00;

#if _Enable_STM_Task00 && Enable_Core0
	srcr00->B.TOS = IfxSrc_Tos_cpu0;	// To Core0
#endif

	srcr00->B.CLRR = 1;
	srcr00->B.SRE = 1;

	stm00->CMP[0].U = IfxStm_getOffsetTimer(stm00, 0);
	stm00->ISCR.B.CMP0IRR = 1U;
	stm00->ICR.B.CMP0EN = 1U;
	stm00->CMP[0].U = IfxStm_getOffsetTimer(stm00, 0) + TimeConst_1s;

    IfxCpu_restoreInterrupts(interruptState);


}

void Enable_STM_Task01(void)
{
	boolean interruptState = IfxCpu_disableInterrupts();

	initTime();

	IfxCpu_Irq_installInterruptHandler(ISR_STM_Task01, ISR_PRIORITY_Task01);

	Ifx_STM *stm01;
	stm01 = &MODULE_STM0;
	stm01->CMCON.B.MSIZE1 = 31; 		// compare size
	stm01->CMCON.B.MSTART1 = 0;			// compare offset
	stm01->ICR.B.CMP1OS = 1;			// conf interrupt

	volatile Ifx_SRC_SRCR *srcr01;
	srcr01 = &MODULE_SRC.STM.STM[0].SR1;
	srcr01->B.SRPN = ISR_PRIORITY_Task01;

#if _Enable_STM_Task11 && Enable_Core1
	srcr01->B.TOS = IfxSrc_Tos_cpu1;	// To Core1
#endif

	srcr01->B.CLRR = 1;
	srcr01->B.SRE = 1;

	stm01->CMP[1].U = IfxStm_getOffsetTimer(stm01, 0);
	stm01->ISCR.B.CMP1IRR = 1U;
	stm01->ICR.B.CMP1EN = 1U;
	stm01->CMP[1].U = IfxStm_getOffsetTimer(stm01, 0) + TimeConst_100ms;

    IfxCpu_restoreInterrupts(interruptState);
}

void Enable_STM_Task10(void)
{
	boolean interruptState = IfxCpu_disableInterrupts();

	initTime();

	IfxCpu_Irq_installInterruptHandler(ISR_STM_Task10, ISR_PRIORITY_Task10);

	Ifx_STM *stm10;
	stm10 = &MODULE_STM1;
	stm10->CMCON.B.MSIZE0 = 31; 		// compare size
	stm10->CMCON.B.MSTART0 = 0;			// compare offset
	stm10->ICR.B.CMP0OS = 0;			// conf interrupt

	volatile Ifx_SRC_SRCR *srcr10;
	srcr10 = &MODULE_SRC.STM.STM[1].SR0;
	srcr10->B.SRPN = ISR_PRIORITY_Task10;

#if _Enable_STM_Task10 && Enable_Core1
	srcr10->B.TOS = IfxSrc_Tos_cpu1;	// To Core2
#endif

	srcr10->B.CLRR = 1;
	srcr10->B.SRE = 1;

	stm10->CMP[0].U = IfxStm_getOffsetTimer(stm10, 0);
	stm10->ISCR.B.CMP0IRR = 1U;
	stm10->ICR.B.CMP0EN = 1U;
	stm10->CMP[0].U = IfxStm_getOffsetTimer(stm10, 0) + TimeConst_100ms;

    IfxCpu_restoreInterrupts(interruptState);
}

void Enable_STM_Task11(void)
{
	boolean interruptState = IfxCpu_disableInterrupts();

	initTime();

	IfxCpu_Irq_installInterruptHandler(ISR_STM_Task11, ISR_PRIORITY_Task11);

	Ifx_STM *stm11;
	stm11 = &MODULE_STM1;
	stm11->CMCON.B.MSIZE1 = 31; 		// compare size
	stm11->CMCON.B.MSTART1 = 0;			// compare offset
	stm11->ICR.B.CMP1OS = 1;			// conf interrupt

	volatile Ifx_SRC_SRCR *srcr11;
	srcr11 = &MODULE_SRC.STM.STM[1].SR1;
	srcr11->B.SRPN = ISR_PRIORITY_Task11;

#if _Enable_STM_Task11 && Enable_Core1
	srcr11->B.TOS = IfxSrc_Tos_cpu1;	// To Core1
#endif

	srcr11->B.CLRR = 1;
	srcr11->B.SRE = 1;

	stm11->CMP[1].U = IfxStm_getOffsetTimer(stm11, 0);
	stm11->ISCR.B.CMP1IRR = 1U;
	stm11->ICR.B.CMP1EN = 1U;
	stm11->CMP[1].U = IfxStm_getOffsetTimer(stm11, 0) + TimeConst_100ms;

    IfxCpu_restoreInterrupts(interruptState);
}

void Enable_STM_Task20(void)
{
	boolean interruptState = IfxCpu_disableInterrupts();

	initTime();

	IfxCpu_Irq_installInterruptHandler(ISR_STM_Task20, ISR_PRIORITY_Task20);

	Ifx_STM *stm20;
	stm20 = &MODULE_STM2;
	stm20->CMCON.B.MSIZE0 = 31; 		// compare size
	stm20->CMCON.B.MSTART0 = 0;		// compare offset
	stm20->ICR.B.CMP0OS = 0;			// conf interrupt

	volatile Ifx_SRC_SRCR *srcr20;
	srcr20 = &MODULE_SRC.STM.STM[2].SR0;
	//&MODULE_SRC.STM.STM[2].SR0.B.SRPN = ISR_PRIORITY_Task20;
	srcr20->B.SRPN = ISR_PRIORITY_Task20;

#if _Enable_STM_Task20 && Enable_Core2
	srcr20->B.TOS = IfxSrc_Tos_cpu2;	// To Core2
#endif

	srcr20->B.CLRR = 1;
	srcr20->B.SRE = 1;

	stm20->CMP[0].U = IfxStm_getOffsetTimer(stm20, 0);
	stm20->ISCR.B.CMP0IRR = 1U;
   	stm20->ICR.B.CMP0EN = 1U;
    stm20->CMP[0].U = IfxStm_getOffsetTimer(stm20, 0) + TimeConst_100ms;

    IfxCpu_restoreInterrupts(interruptState);
}

void Enable_STM_Task21(void)
{
	boolean interruptState = IfxCpu_disableInterrupts();

	initTime();

	IfxCpu_Irq_installInterruptHandler(ISR_STM_Task21, ISR_PRIORITY_Task21);

	Ifx_STM *stm21;
	stm21 = &MODULE_STM2;
	stm21->CMCON.B.MSIZE1 = 31; 		// compare size
	stm21->CMCON.B.MSTART1 = 0;			// compare offset
	stm21->ICR.B.CMP1OS = 1;			// conf interrupt

	volatile Ifx_SRC_SRCR *srcr21;
	srcr21 = &MODULE_SRC.STM.STM[2].SR1;
	srcr21->B.SRPN = ISR_PRIORITY_Task21;

#if _Enable_STM_Task21 && Enable_Core2
	srcr21->B.TOS = IfxSrc_Tos_cpu2;	// To Core1
#endif

	srcr21->B.CLRR = 1;
	srcr21->B.SRE = 1;

	stm21->CMP[1].U = IfxStm_getOffsetTimer(stm21, 0);
	stm21->ISCR.B.CMP1IRR = 1U;
	stm21->ICR.B.CMP1EN = 1U;
	stm21->CMP[1].U = IfxStm_getOffsetTimer(stm21, 0) + TimeConst_100ms;

    IfxCpu_restoreInterrupts(interruptState);
}


unsigned int IO_getSTM0Tic(void)
{
	Ifx_STM *stm0;
	stm0 = &MODULE_STM0;
	return stm0->TIM0.U;
}

unsigned int IO_getSTM1Tic(void)
{
	Ifx_STM *stm1;
	stm1 = &MODULE_STM1;
	return stm1->TIM1.U;
}

unsigned int IO_getSTM2Tic(void)
{
	Ifx_STM *stm2;
	stm2 = &MODULE_STM2;
	return stm2->TIM2.U;
}

void ISR_STM_Task00(void)
{
	Ifx_STM *stm00;
	stm00 = &MODULE_STM0;
	stm00->ISCR.B.CMP0IRR = 1U;
	stm00->CMP[0].B.CMPVAL = stm00->TIM0.U + TimeConst_1s;

    IfxCpu_enableInterrupts();
    ServiceHandler_STM00();
}

void ISR_STM_Task01(void)
{
	Ifx_STM *stm01;
	stm01 = &MODULE_STM0;
	stm01->ISCR.B.CMP1IRR = 1U;
	stm01->CMP[1].B.CMPVAL = stm01->TIM0.U + TimeConst_100ms;

    IfxCpu_enableInterrupts();
    ServiceHandler_STM01();
}


void ISR_STM_Task10(void)
{
	Ifx_STM *stm10;
	stm10 = &MODULE_STM1;
	stm10->ISCR.B.CMP0IRR = 1U;
	stm10->CMP[0].B.CMPVAL = stm10->TIM0.U + TimeConst_100ms;

    IfxCpu_enableInterrupts();
    ServiceHandler_STM10();
}

void ISR_STM_Task11(void)
{
	Ifx_STM *stm11;
	stm11 = &MODULE_STM1;
	stm11->ISCR.B.CMP1IRR = 1U;
	stm11->CMP[1].B.CMPVAL = stm11->TIM0.U + TimeConst_100ms;

    IfxCpu_enableInterrupts();
    ServiceHandler_STM11();
}

void ISR_STM_Task20(void)
{
	Ifx_STM *stm20;
	stm20 = &MODULE_STM2;
	stm20->ISCR.B.CMP0IRR = 1U;
	stm20->CMP[0].B.CMPVAL = stm20->TIM0.U + TimeConst_100ms;

    IfxCpu_enableInterrupts();
    ServiceHandler_STM20();
}

void ISR_STM_Task21(void)
{
	Ifx_STM *stm21;
	stm21 = &MODULE_STM2;
	stm21->ISCR.B.CMP1IRR = 1U;
	stm21->CMP[1].B.CMPVAL = stm21->TIM0.U + TimeConst_100ms;

    IfxCpu_enableInterrupts();
    ServiceHandler_STM21();
}



