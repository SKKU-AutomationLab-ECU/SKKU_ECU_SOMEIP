/*
 * Device_IF_LED.c
 *
 *  Created on: 2018. 8. 9.
 *      Author: JW_Park
 */

#include "Device_IF.h"
#include "Peripherals_GPIO.h"





/* Initialize Device of LED --------------------------------------------------*/
void IO_set_LED(void)
{
	/* Input	: none. ------------------------------------------------------*/
	/* Output	: none. ------------------------------------------------------*/
	/* Jobs		: Device setting for LED line. -------------------------------*/

	#if SysLog /* System Log -------------------------------------------------*/
	printf_SysLog("IO_Set_LED\t\t\t-> ");
	#endif /*-----------------------------------------------------------------*/

	/* IO Settings for LED ---------------------------------------------------*/
	setPort_GPIO_LED();

	#if SysLog /* System Log -------------------------------------------------*/
	printf_SysLog("Done.\r\n");
	#endif /*-----------------------------------------------------------------*/
}
/*----------------------------------------------------------------------------*/

/* Sets LED by Byte unit -----------------------------------------------------*/
void IO_setByte_LED(uint8 byte_LED)
{
	/* Input	: Byte value to LED. -----------------------------------------*/
	/* Output	: none. ------------------------------------------------------*/
	/* Jobs		: Out value to LED. byte -------------------------------------*/

	/* Enter byte data to LED ------------------------------------------------*/
	setByte_GPIO_LED(byte_LED);

	#if SysLog_state_LED /* System Log state of LED --------------------------*/
	printf_SysLog("SetByte_LED\t\t-> ");
	printf_SysLog_state_LED();
	#endif /*-----------------------------------------------------------------*/
}
/*----------------------------------------------------------------------------*/

/* Sets LED by Bit unit ------------------------------------------------------*/
void IO_setBit_LED(uint8 num_LED, uint8 Bit_LED)
{
	/* Input	: Number of Bit and Bit value to LED. ------------------------*/
	/* Output	: none. ------------------------------------------------------*/
	/* Jobs		: Out value to LED. bit --------------------------------------*/

	/* Define variable for state of LED --------------------------------------*/
	int State_LED = 0;

	/* set bit of LED --------------------------------------------------------*/
	State_LED = setBit_GPIO_LED(num_LED, Bit_LED);

	#if SysLog_state_LED /* System Log state of LED --------------------------*/
	printf_SysLog("SetBit_LED\t\t-> ");
	switch(State_LED)
	{
		case -1 :
		{	/* 'LED Number' wrong, check again your input. -------------------*/
			printf_SysLog("Fail SetBit LED : LED Number wrong.\r\n");
		}break;
		case -2 :
		{	/* 'LED bit value' wrong, check again your input. ----------------*/
			printf_SysLog("Fail SetBit LED : Bit value wrong.\r\n");
		}break;
		default :
		{
			printf_SysLog_state_LED();
		}
	}
	#endif /*-----------------------------------------------------------------*/
}
/*----------------------------------------------------------------------------*/

#if SysLog_state_LED /* System Log state of LED ------------------------------*/
/* print System Log function for LED state -----------------------------------*/
void printf_SysLog_state_LED()
{
	/* Input	: none. ------------------------------------------------------*/
	/* Output	: none. ------------------------------------------------------*/
	/* Jobs		: print System Log for LED state -----------------------------*/

	char view_mask_led[8];
	int State_LED = getState_LED();

	view_mask_led[7] = ((State_LED % 256) / 128) + '0';
	view_mask_led[6] = ((State_LED % 128) /  64) + '0';
	view_mask_led[5] = ((State_LED %  64) /  32) + '0';
	view_mask_led[4] = ((State_LED %  32) /  16) + '0';
	view_mask_led[3] = ((State_LED %  16) /   8) + '0';
	view_mask_led[2] = ((State_LED %   8) /   4) + '0';
	view_mask_led[1] = ((State_LED %   4) /   2) + '0';
	view_mask_led[0] = ((State_LED %   2) /   1) + '0';

	printf_SysLog("State : LED Value = ");
	printf_SysLog(view_mask_led);
	printf_SysLog(".\r\n");
}
/*----------------------------------------------------------------------------*/
#else if !SysLog_state_LED /* dummy ------------------------------------------*/
/*----------------------------------------------------------------------------*/
void printf_SysLog_state_LED() {}
/*----------------------------------------------------------------------------*/
#endif /*---------------------------------------------------------------------*/
/*----------------------------------------------------------------------------*/
