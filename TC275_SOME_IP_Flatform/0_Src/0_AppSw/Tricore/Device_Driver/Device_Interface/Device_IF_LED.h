/*
 * Device_IF_LED.h
 *
 *  Created on: 2018. 8. 9.
 *      Author: JW_Park
 */

#ifndef DEVICE_IF_LED_H_
#define DEVICE_IF_LED_H_



#include <Ifx_Types.h>


void IO_set_LED(void);
void IO_setByte_LED(uint8 byte_LED);
void IO_setBit_LED(uint8 num_LED, uint8 Bit_LED);
void printf_SysLog_state_LED();



#endif /* DEVICE_IF_LED_H_ */
