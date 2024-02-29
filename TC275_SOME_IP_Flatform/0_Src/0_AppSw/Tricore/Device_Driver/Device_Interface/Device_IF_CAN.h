/*
 * Device_IF_CAN.h
 *
 *  Created on: 2018. 8. 27.
 *      Author: JW_Park
 */

#ifndef DEVICE_IF_CAN_H_
#define DEVICE_IF_CAN_H_

#include <Ifx_Types.h>

#define CAN_A 0
#define CAN_B 1
#define CAN_C 2
#define CAN_D 3

#define CAN_Tx_msgObj_0		0
#define CAN_Tx_msgObj_1		1
#define CAN_Tx_msgObj_2		2
#define CAN_Tx_msgObj_3		3
#define CAN_Tx_msgObj_4		4
#define CAN_Tx_msgObj_5		5
#define CAN_Tx_msgObj_6		6
#define CAN_Tx_msgObj_7		7
#define CAN_Tx_msgObj_8		8
#define CAN_Tx_msgObj_9		9
#define CAN_Tx_msgObj_10	10
#define CAN_Tx_msgObj_11	11
#define CAN_Tx_msgObj_12	12
#define CAN_Tx_msgObj_13	13
#define CAN_Tx_msgObj_14	14
#define CAN_Tx_msgObj_15	15
#define CAN_Tx_msgObj_16	16
#define CAN_Tx_msgObj_17	17
#define CAN_Tx_msgObj_18	18
#define CAN_Tx_msgObj_19	19

#define CAN_Rx_msgObj_0		20
#define CAN_Rx_msgObj_1		21
#define CAN_Rx_msgObj_2		22
#define CAN_Rx_msgObj_3		23
#define CAN_Rx_msgObj_4		24
#define CAN_Rx_msgObj_5		25
#define CAN_Rx_msgObj_6		26
#define CAN_Rx_msgObj_7		27
#define CAN_Rx_msgObj_8		28
#define CAN_Rx_msgObj_9		29
#define CAN_Rx_msgObj_10	30
#define CAN_Rx_msgObj_11	31
#define CAN_Rx_msgObj_12	32
#define CAN_Rx_msgObj_13	33
#define CAN_Rx_msgObj_14	34
#define CAN_Rx_msgObj_15	35
#define CAN_Rx_msgObj_16	36
#define CAN_Rx_msgObj_17	37
#define CAN_Rx_msgObj_18	38
#define CAN_Rx_msgObj_19	39



void IO_set_CAN(void);
void IO_set_CAN_Module_Enable(void);
void IO_set_CAN_Enable(uint8 num_ch, uint8 FD);
void IO_set_CAN_Bit(uint8 num_ch, uint32 nom_Baudrate, uint32 fast_Baudrate);
void IO_set_CAN_BitTiming(	uint8 num_ch,
							uint32 nom_SJW, uint32 nom_SP,
							uint32 fast_SJW, uint32 fast_SP,
							uint8 LDO);
void IO_set_CAN_msgObject(	uint8 num_msgObj, uint8 num_ch, uint32 ID,
							uint8 size_frame, uint8 FD_on);
extern void printf_CAN(uint8 number_MsgObj, uint8 *fmt, ...);
void IO_set_CAN_RxBuffer(uint8 num_MsgObj, uint8 *buffer);
void ISR_set_CAN_Rx(uint8 num_msgObj, uint8 num_ch, uint32 ID_mask, uint32 ID_accept,
					uint8 frame_extend, uint8 FD_on,
					void *isrFuncPointer, uint16 priority, uint8 core);

uint32 IO_get_CAN_RxBuffer(uint8 num_MsgObj, uint8 *buffer);

#endif /* DEVICE_IF_CAN_H_ */
