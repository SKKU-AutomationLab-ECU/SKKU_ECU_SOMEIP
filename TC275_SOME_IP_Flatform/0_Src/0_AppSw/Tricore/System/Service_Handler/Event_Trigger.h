/*
 * Event_Trigger.h
 *
 *  Created on: 2018. 10. 18.
 *      Author: JW_Park
 */

#ifndef EVENT_TRIGGER_H_
#define EVENT_TRIGGER_H_

#include <Ifx_Types.h>
#include "Configuration.h"

IFX_EXTERN void ISR_UART_Rx_SysCom(char *buffer);
void convert_serial(void);
IFX_EXTERN void ISR_SCUERU_SWinput(void);
IFX_EXTERN void ISR_EtherNet_Rx(int len, unsigned char *buffer);
IFX_EXTERN void ISR_UART_Rx_WiFi(int len, char *buffer);

IFX_EXTERN void ISR_CAN_msgObj_0(void);
IFX_EXTERN void ISR_CAN_msgObj_1(void);
IFX_EXTERN void ISR_CAN_msgObj_2(void);
IFX_EXTERN void ISR_CAN_msgObj_3(void);
IFX_EXTERN void ISR_CAN_msgObj_4(void);
IFX_EXTERN void ISR_CAN_msgObj_5(void);
IFX_EXTERN void ISR_CAN_msgObj_6(void);
IFX_EXTERN void ISR_CAN_msgObj_7(void);


#endif /* EVENT_TRIGGER_H_ */
