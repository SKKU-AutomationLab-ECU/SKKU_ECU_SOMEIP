/*
 * Device_Interface.c
 *
 *  Created on: 2018. 8. 9.
 *      Author: JW_Park
 */



#include "Device_IF.h"
#include "Application.h"

/* Initialize Device ---------------------------------------------------------*/
void Device_IF_Setup(void)
{
	/* Input	: none. ------------------------------------------------------*/
	/* Output	: none. ------------------------------------------------------*/
	/* Jobs 	: Device Interface Settings. ---------------------------------*/

	#if SysLog /* System Log -------------------------------------------------*/
	printf_SysLog("Set Device Interface\t\t-> Start...\r\n");
	#endif /*-----------------------------------------------------------------*/

	IO_set_LED();			delay_ms(100); /* LEDs Setup ---------------------*/
	IO_set_PBSW();			delay_ms(100); /* Push Button Switch Setup -------*/
//	IO_set_LCD();			delay_ms(100); /* LCD Setup ----------------------*/
//	IO_set_PWM();			delay_ms(100); /* PWM Setup ----------------------*/
//	IO_set_dxl();			delay_ms(100); /* dynamixel Setup ----------------*/
	IO_set_CAN();			delay_ms(100); /* CAN Setup ----------------------*/
	IO_set_ETH();			delay_ms(100); /* Ethernet Setup -----------------*/

	#if SysLog /* System Log -------------------------------------------------*/
	printf_SysLog("Set Device Interface\t\t-> Done.\r\n\n");
	#endif /*-----------------------------------------------------------------*/
}

/*----------------------------------------------------------------------------*/
