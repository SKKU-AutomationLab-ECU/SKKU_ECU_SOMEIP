/*
 * Event_Trigger.c
 *
 *  Created on: 2018. 10. 18.
 *      Author: JW_Park
 */

#include <Ifx_Types.h>
#include "IfxCan_reg.h"
#include "Peripherals_UART.h";
#include "Application.h"
#include "Peripherals_CAN.h"
#include "Device_IF_CAN.h"
#include "Peripherals_ETH.h"

#include "def.h"
#include "pbuf.h"
#include "ip_addr.h"


/**               DoCAN                **/
uint8 Sort_Frame = 0;
uint32 UDS_SF_Length = 0;
static uint8 RxData_CAN[64];

//uint8 SRC_mMAC[6] = {0x00, 0x11, 0x22, 0x33, 0x44, 0x55};
//uint8 DES_mMAC[6] = {0x00, 0x11, 0x22, 0x33, 0x44, 0x00};

extern uint8 SRC_MAC[6] = {0x00, 0x11, 0x22, 0x33, 0x44, 0x55};
extern uint8 DES_MAC[6] = {0x00, 0x11, 0x22, 0x33, 0x44, 0x00};

char buffer_serial[300];
uint32 serial_msg_len = 0;
unsigned char mode_Flag = 0;

/* UART Receive Function -----------------------------------------------------*/
void ISR_UART_Rx_SysCom(char *buffer)
{
	/* Input	: Receive Buffer address. ------------------------------------*/
	/* Output	: none. ------------------------------------------------------*/
	/* Jobs		: Rx data receive and Application ----------------------------*/

	/* Test echo -------------------------------------------------------------*/
	//printf_SysLog("%s", buffer);
}

uint8 Click_Flagg = 0;
uint8 LED_Flag = 0;
/* UART Receive Function -----------------------------------------------------*/
void ISR_SCUERU_SWinput(void)
{
	/* Input	: Do not care. -----------------------------------------------*/
	/* Output	: none. ------------------------------------------------------*/
	/* Jobs		: SW input Trigger -------------------------------------------*/

	IO_setByte_LED(LED_Flag);
	LED_Flag ^= 0xFF;

/*	IO_set_CAN_msgObject(CAN_Tx_msgObj_0, CAN_A, 0x01, 8, FALSE);
	printf_CAN(0, "%s", "CAN_A OK!");*/

/*	int serial_Payload[64] = {0,};
	printf_ETH(SRC_MAC, DES_MAC, serial_Payload, 64);*/
	
/*
 * CANoe MAC  	: 02:16:81:2E:7A:00
 * CANoe IP	  	: 192 . 168 .  0 . 100
 * CANoe PORT 	: 30400
 *
 * ECU MAC    	: 00:11:22:33:44:55
 * ECU IP	  	: 192 . 168 .  0 . 111
 * ECU PORT   	: 30400
 */

/*	// UDP Send
	ip_addr_t dest_ip;
	u16_t dest_port = 30400;
	uint8 data[5] = {1,2,3,4,5};
	Set_desIPaddr(&dest_ip, 192, 168, 0, 100);
	UDP_Send_to(&dest_ip, dest_port, data);*/

}

/* EtherNet Receive Function -------------------------------------------------*/
void ISR_EtherNet_Rx(int len, unsigned char *buffer)
{
	printf_ETH(DES_MAC, SRC_MAC, buffer+12, 49);
	printf_SysLog("The Ethernet packet has arrived!\r\nn");

}

/* WiFi UART Receive Function ------------------------------------------------*/
void ISR_UART_Rx_WiFi(int len, char *buffer)
{
	/* Input	: Received Buffer address. -----------------------------------*/
	/* Output	: none. ------------------------------------------------------*/
	/* Jobs		: Rx data Receive and Application ----------------------------*/





	/* Test echo -------------------------------------------------------------*/
	// printf_SysLog("WiFi Rx\t-> %s\r\n", buffer);
}


/* CAN Receive Function -----------------------------------------------------*/
void ISR_CAN_msgObj_0(void)
{
	int number_MessageObject = 20;
	uint32 rxID = Get_CAN_RxBuffer(number_MessageObject, RxData_CAN);

	IO_setByte_LED(LED_Flag);
	LED_Flag ^= 0xFF;

	// To do...


   // printf_SysLog("CAN Rx0, ID : 0x%.8x OK!\r\n", rxID);
}


void ISR_CAN_msgObj_1(void)
{
	int number_MessageObject = 21;
	uint32 rxID = Get_CAN_RxBuffer(number_MessageObject, RxData_CAN);
	// To do...


	//printf_SysLog("CAN Rx1, ID : 0x%.8x OK!\r\n", rxID);
}


void ISR_CAN_msgObj_2(void)
{
	int number_MessageObject = 22;
	uint32 rxID = Get_CAN_RxBuffer(number_MessageObject, RxData_CAN);


	// To do...


    printf_SysLog("CAN Rx2, ID : 0x%.8x OK!\r\n", rxID);
}


void ISR_CAN_msgObj_3(void)
{
	int number_MessageObject = 23;
	uint32 rxID = Get_CAN_RxBuffer(number_MessageObject, RxData_CAN);


	// To do...

    printf_SysLog("CAN Rx3, ID : 0x%.8x OK!\r\n", rxID);
}

void ISR_CAN_msgObj_4(void)
{
	int number_MessageObject = 24;
	uint32 rxID = Get_CAN_RxBuffer(number_MessageObject, RxData_CAN);


	// To do...


    //printf_SysLog("CAN Rx4, ID : 0x%.8x OK!\r\n", rxID);
}

void ISR_CAN_msgObj_5(void)
{
	int number_MessageObject = 25;
	uint32 rxID = Get_CAN_RxBuffer(number_MessageObject, RxData_CAN);


	// To do...


    //printf_SysLog("CAN Rx5, ID : 0x%.8x OK!\r\n", rxID);
}

void ISR_CAN_msgObj_6(void)
{
	int number_MessageObject = 26;
	uint32 rxID = Get_CAN_RxBuffer(number_MessageObject, RxData_CAN);

	// To do...


    //printf_SysLog("CAN Rx6, ID : 0x%.8x OK!\r\n", rxID);
}

void ISR_CAN_msgObj_7(void)
{
	int number_MessageObject = 27;
	uint32 rxID = Get_CAN_RxBuffer(number_MessageObject, RxData_CAN);

	// To do...


    // printf_SysLog("CAN Rx7, ID : 0x%.8x OK!\r\n", rxID);
}


