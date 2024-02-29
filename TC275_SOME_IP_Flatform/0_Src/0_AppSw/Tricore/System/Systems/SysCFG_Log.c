/*
 * System_Log.c
 *
 *  Created on: 2018. 8. 9.
 *      Author: JW_Park
 */

#include "SysCFG_Log.h"

#include <stdarg.h>
#include <stdio.h>

void IO_Set_SysLog(void)
{
	Set_UART_SysLog();
}

void printf_SysLog(char *fmt, ...)
{
	/* Define temp address of the data ---------------------------------------*/
	char buffer[100];
	va_list ap;

	/* Get start address of the data -----------------------------------------*/
	va_start(ap, fmt);

	/* Copy data input to buffer ---------------------------------------------*/
	vsprintf(buffer, fmt, ap);

	/* Get end address of the data -------------------------------------------*/
	va_end(ap);

	/* Get length of the Tx data ---------------------------------------------*/
	sint16 length = 0;
	length = strlen(buffer);

	printf_UART_SysLog(buffer, length);
}

