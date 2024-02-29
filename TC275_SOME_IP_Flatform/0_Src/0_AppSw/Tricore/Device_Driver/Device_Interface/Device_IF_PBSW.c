/*
 * Device_IF_PBSW.c
 *
 *  Created on: 2018. 8. 11.
 *      Author: JW_Park
 */

#include "Device_IF.h"
#include "Peripherals_GPIO.h"
#include "Peripherals_SCUERU.h"



/* Define flag of Push Button Switch -----------------------------------------*/
static char f_PBSW[4] = {0,};

/* Initialize Device of Push Button Switch -----------------------------------*/
void IO_set_PBSW(void)
{
	/* Input	: none. ------------------------------------------------------*/
	/* Output	: none. ------------------------------------------------------*/
	/* Jobs		: Device setting for Push Button Switch line. ----------------*/

	#if SysLog /* System Log -------------------------------------------------*/
	printf_SysLog("IO_Set_Push Button SW\t\t-> ");
	#endif /*-----------------------------------------------------------------*/

	/* IO Settings for LED ---------------------------------------------------*/
	setPort_GPIO_PBSW();
	setPort_SCUERU22();

	#if SysLog /* System Log -------------------------------------------------*/
	printf_SysLog("Done.\r\n");
	#endif /*-----------------------------------------------------------------*/
}
/*----------------------------------------------------------------------------*/


/* Gets State of Push Button Switch ------------------------------------------*/
char IO_get_PBSW(int number, char direction)
{
	/* Input	: none. ------------------------------------------------------*/
	/* Output	: none. ------------------------------------------------------*/
	/* Jobs		: Device setting for Push Button Switch line. ----------------*/

	if( (direction != 0) && (direction != 1) )
	{	/* Error case : Entered the wrong direction --------------------------*/
		return -2; /* return -2 ----------------------------------------------*/
	}

	/* Define variable of key ------------------------------------------------*/
	unsigned char key;

	/* Get switch input (high or low) ----------------------------------------*/
	switch(getState_PBSW(number))
	{
		case 0 :
		{	/* Detect switch input Low ---------------------------------------*/
			if(direction)	key = 0;
			else			key = 1;
		}break;
		case 1 :
		{	/* Detect switch input High --------------------------------------*/
			if(direction)	key = 1;
			else			key = 0;
		}break;
		case -1 :
		{	/* Error case : Entered the wrong number -------------------------*/

			return -1;	/* return -1 -----------------------------------------*/
		}break;
		default :
		{	/* Error case : dummy --------------------------------------------*/

			return -2;	/* return -2 -----------------------------------------*/
		}break;
	}

	/* Determine state of Push Button Switch ---------------------------------*/
	if(key)
	{	/* The moment you release -> press." or "Pressed switch." ------------*/
		if(f_PBSW[number])
		{	/* The switch was pressed before. you just kept it pressed. ------*/
			delay_PBSW(1);
			return 2;		/* return 2 --------------------------------------*/
			/* -> You must execute a function about kept it pressed switch. --*/
		}

		else
		{	/* If you press switch! ------------------------------------------*/
			delay_PBSW(1);	/* you have to remove bounce! --------------------*/
			f_PBSW[number] = 1;	/* Change flag -----------------------------------*/
			return 1;		/* return 1 --------------------------------------*/
			/* -> You must execute a function about first-pressed switch. ----*/
		}
	}
	else
	{	/* The moment you press -> release." or "Do not press switch." -------*/
		if(!(f_PBSW[number]))
		{	/* If continuous key, treat as no key input. ---------------------*/
			delay_PBSW(1);
			return 0;		/* return 0 -> The switch was not pressed. -------*/
		}
		else
		{	/* If you release switch! ----------------------------------------*/
			delay_PBSW(1);	/* you have to remove bounce! --------------------*/
			f_PBSW[number] = 0;	/* Change flag -----------------------------------*/
			return 3;		/* return 3 --------------------------------------*/
			/* -> You must execute a function about released switch. ---------*/
		}
	}
}
/*----------------------------------------------------------------------------*/

/* Delay function to remove Push Button Switch noise -------------------------*/
__inline void delay_PBSW(unsigned int tic_us)
{
	unsigned int tic_sub1, tic_sub2;
		for( tic_sub1 = 0; tic_sub1 < tic_us; tic_sub1++ )
			for( tic_sub2 = 0; tic_sub2 < 61; tic_sub2++ )
				__nop();
}
/*----------------------------------------------------------------------------*/
