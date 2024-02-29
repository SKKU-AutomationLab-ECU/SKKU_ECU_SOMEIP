/*
 * System_Configuration.c
 *
 *  Created on: 2018. 8. 9.
 *      Author: JW_Park
 */




#include "System_Configuration.h"

void Configuration_System(void)
{
	printf_SysLog("Configuring the MultiCore\t-> Start...\r\n");
	Initialize_Task_Cores();

	/* To do... */
//	printf_SysLog("  => PBSW operated by  <100ms-Task> in Core0.\r\n");
//	printf_SysLog("  => dxl  operated by <1000ms-Task> in Core1.\r\n");
//	printf_SysLog("  => LCD  operated by   <10ms-Task> in Core2.\r\n");

	printf_SysLog("Configuring the MultiCore\t -> Done.\r\n");
}
