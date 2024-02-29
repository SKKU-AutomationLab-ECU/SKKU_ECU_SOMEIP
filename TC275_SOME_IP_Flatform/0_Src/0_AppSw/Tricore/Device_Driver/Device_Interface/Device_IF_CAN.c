/*
 * Device_IF_CAN.c
 *
 *  Created on: 2018. 8. 27.
 *      Author: JW_Park
 */

#include "Device_IF.h"
#include "Application.h"

/* Tx & Rx Variable ----------------------------------------------------------*/
unsigned char IO_CAN_Tx[64] = {0, };
unsigned char IO_CAN_Rx[64] = {0, };

/* Initialize Device of CAN --------------------------------------------------*/
void IO_set_CAN(void)
{
	/* Input	: none. ------------------------------------------------------*/
	/* Output	: none. ------------------------------------------------------*/
	/* Jobs		: Device setting for CAN line. -------------------------------*/


	#if SysLog /* System Log -------------------------------------------------*/
	printf_SysLog("IO_Set_CAN\t\t\t-> ");
	#endif /*-----------------------------------------------------------------*/

	/* IO Settings for CAN Module --------------------------------------------*/
	IO_set_CAN_Module_Enable();


	IO_set_CAN_BitRate(CAN_A, 500000, 2000000);
	IO_set_CAN_BitTiming(CAN_A, 2000, 7500, 8000, 7000, 0);

	IO_set_CAN_BitRate(CAN_B, 500000, 2000000);
	IO_set_CAN_BitTiming(CAN_B, 2000, 7500, 8000, 7000, 0);

	IO_set_CAN_BitRate(CAN_C, 500000, 2000000);
	IO_set_CAN_BitTiming(CAN_C, 2000, 7500, 8000, 7000, 0);

	IO_set_CAN_BitRate(CAN_D, 500000, 2000000);
	IO_set_CAN_BitTiming(CAN_D, 2000, 7500, 8000, 7000, 0);

	IO_set_CAN_Enable(CAN_A, FALSE);
	IO_set_CAN_Enable(CAN_B, FALSE);
	IO_set_CAN_Enable(CAN_C, FALSE);
	IO_set_CAN_Enable(CAN_D, FALSE);

	IO_set_CAN_msgObject(CAN_Tx_msgObj_0, CAN_A, 0x01, 8, FALSE);
	IO_set_CAN_msgObject(CAN_Tx_msgObj_1, CAN_B, 0x02, 8, FALSE);
	IO_set_CAN_msgObject(CAN_Tx_msgObj_2, CAN_C, 0x03, 8, FALSE);
	IO_set_CAN_msgObject(CAN_Tx_msgObj_3, CAN_D, 0x04, 8, FALSE);

	ISR_set_CAN_Rx(	CAN_Rx_msgObj_0, CAN_A, 0x00000000, 0xFFFFFFFF, FALSE, FALSE,
					ISR_CAN_msgObj_0, INTPRIO_CAN_MsgObj_RX0, 1);

	ISR_set_CAN_Rx(	CAN_Rx_msgObj_1, CAN_B, 0x00000000, 0xFFFFFFFF, FALSE, FALSE,
					ISR_CAN_msgObj_1, INTPRIO_CAN_MsgObj_RX1, 1);

	ISR_set_CAN_Rx(	CAN_Rx_msgObj_2, CAN_C, 0x00000000, 0xFFFFFFFF, FALSE, FALSE,
					ISR_CAN_msgObj_2, INTPRIO_CAN_MsgObj_RX2, 1);

	ISR_set_CAN_Rx(	CAN_Rx_msgObj_3, CAN_D, 0x00000000, 0xFFFFFFFF, FALSE, FALSE,
					ISR_CAN_msgObj_3, INTPRIO_CAN_MsgObj_RX3, 1);

	printf_CAN(0, "%s", "CAN_A OK!");
	printf_CAN(1, "%s", "CAN_B OK!");
	printf_CAN(2, "%s", "CAN_C OK!");
	printf_CAN(3, "%s", "CAN_D OK!");

	#if SysLog /* System Log -------------------------------------------------*/
	printf_SysLog("Done.\r\n");
	#endif /*-----------------------------------------------------------------*/
}
/*----------------------------------------------------------------------------*/

/* Sets CAN Enable -----------------------------------------------------------*/
void IO_set_CAN_Module_Enable(void)
{
	Set_CAN_Module();
}
/*----------------------------------------------------------------------------*/


/* Sets CAN Enable -----------------------------------------------------------*/
void IO_set_CAN_Enable(uint8 num_ch, uint8 FD)
{
	Set_CAN_Enable(num_ch, FD);
}
/*----------------------------------------------------------------------------*/

/* Sets CAN Bit Rate ---------------------------------------------------------*/
void IO_set_CAN_BitRate(uint8 num_ch, uint32 nom_Baudrate, uint32 fast_Baudrate)
{
	Set_CAN_BitRate(num_ch, nom_Baudrate, fast_Baudrate);
}
/*----------------------------------------------------------------------------*/

void IO_set_CAN_BitTiming(	uint8 num_ch,
							uint32 nom_SJW, uint32 nom_SP,
							uint32 fast_SJW, uint32 fast_SP,
							uint8 LDO)
{
	Set_CAN_BitTiming(num_ch, nom_SJW, nom_SP, fast_SJW, fast_SP, LDO);
}
/*----------------------------------------------------------------------------*/

void IO_set_CAN_msgObject(	uint8 num_msgObj, uint8 num_ch, uint32 ID,
							uint8 size_frame, uint8 FD_on)
{
	Set_CAN_msgObject(num_msgObj, num_ch, ID, size_frame, FD_on);
}
/*----------------------------------------------------------------------------*/

uint32 IO_get_CAN_RxBuffer(uint8 num_MsgObj, uint8 *buffer)
{
	return Get_CAN_RxBuffer(num_MsgObj, buffer);
}
/*----------------------------------------------------------------------------*/

void ISR_set_CAN_Rx(uint8 num_msgObj, uint8 num_ch, uint32 ID_mask, uint32 ID_accept,
					uint8 frame_extend, uint8 FD_on,
					void *isrFuncPointer, uint16 priority, uint8 core)
{
	Set_CAN_Rx(	num_msgObj, num_ch, ID_mask, ID_accept,
				frame_extend, FD_on,
				isrFuncPointer, priority, core);
}
/*----------------------------------------------------------------------------*/

