/*
 * System_Log.h
 *
 *  Created on: 2018. 8. 9.
 *      Author: JW_Park
 */

#ifndef SYSTEM_LOG_H_
#define SYSTEM_LOG_H_


#include "Peripherals_UART.h"






void printf_SysLog(char *fmt, ...);
void IO_Set_SysLog(void);

#endif /* SYSTEM_LOG_H_ */
