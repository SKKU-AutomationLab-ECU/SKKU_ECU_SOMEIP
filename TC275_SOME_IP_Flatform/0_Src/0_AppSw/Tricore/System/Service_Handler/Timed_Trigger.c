/*
 * ISR.c
 *
 *  Created on: 2018. 8. 27.
 *      Author: JW_Park
 */



#include "SysCFG_Cores.h"
#include "Cpu/Irq/IfxCpu_Irq.h"
#include "IfxPort.h"
#include "Application.h"

void ServiceHandler_STM00(void)
{
	Process_Mapping[Map_STM_Runn[0][0]]();
}

void ServiceHandler_STM01(void)
{
	Process_Mapping[Map_STM_Runn[0][1]]();
}

void ServiceHandler_STM10(void)
{
	Process_Mapping[Map_STM_Runn[1][0]]();
}

void ServiceHandler_STM11(void)
{
	Process_Mapping[Map_STM_Runn[1][1]]();
}

void ServiceHandler_STM20(void)
{
	Process_Mapping[Map_STM_Runn[2][0]]();
}

void ServiceHandler_STM21(void)
{
	Process_Mapping[Map_STM_Runn[2][1]]();
}

