/*
 * Peripherals_GPIO_LED.c
 *
 *  Created on: 2018. 8. 9.
 *      Author: JW_Park
 */

#include "IfxCpu_Irq.h"
#include "Peripherals_GPIO.h"
#include "Peripherals.h"



/******************************************************************************/
#if GPIO_LED /*-------------------- GPIO_LED ---------------------------------*/
/******************************************************************************/

/* Module Address ------------------------------------------------------------*/
static Ifx_P * const pGPIO_LED_L = (Ifx_P *)&MODULE_P13;
static Ifx_P * const pGPIO_LED_H = (Ifx_P *)&MODULE_P22;

/*----------------------------------------------------------------------------*/

/* Mask Variable Static ------------------------------------------------------*/
static uint8 mask_LED;
/*----------------------------------------------------------------------------*/

/* Initialize GPIO for LED ---------------------------------------------------*/
void setPort_GPIO_LED(void)
{
	/* Input	: none. ------------------------------------------------------*/
	/* Output	: none. ------------------------------------------------------*/
	/* Jobs		: Ports setting for LED line. P13_0~3 and P22_0~3. -----------*/

	/* Set Port to output ----------------------------------------------------*/
	pGPIO_LED_L->IOCR0.B.PC0 = 0b10000;	// LED 0 : ID_LD0
	pGPIO_LED_L->IOCR0.B.PC1 = 0b10000;	// LED 1 : IO_LD1
	pGPIO_LED_L->IOCR0.B.PC2 = 0b10000;	// LED 2 : IO_LD2
	pGPIO_LED_L->IOCR0.B.PC3 = 0b10000;	// LED 3 : IO_LD3
	pGPIO_LED_H->IOCR0.B.PC0 = 0b10000;	// LED 4 : IO_LD4
	pGPIO_LED_H->IOCR0.B.PC1 = 0b10000;	// LED 5 : IO_LD5
	pGPIO_LED_H->IOCR0.B.PC2 = 0b10000;	// LED 6 : IO_LD6
	pGPIO_LED_H->IOCR0.B.PC3 = 0b10000;	// LED 7 : IO_LD7

	/* Initial Value is High	: LED off ------------------------------------*/
    pGPIO_LED_L->OUT.B.P0 = 1;
    pGPIO_LED_L->OUT.B.P1 = 1;
    pGPIO_LED_L->OUT.B.P2 = 1;
    pGPIO_LED_L->OUT.B.P3 = 1;
    pGPIO_LED_H->OUT.B.P0 = 1;
    pGPIO_LED_H->OUT.B.P1 = 1;
    pGPIO_LED_H->OUT.B.P2 = 1;
    pGPIO_LED_H->OUT.B.P3 = 1;

    /* Synchronize Mask value ------------------------------------------------*/
    mask_LED = 0xFF;
}
/*----------------------------------------------------------------------------*/

/* Sets GPIO by Byte unit ----------------------------------------------------*/
int setByte_GPIO_LED(uint8 value)
{
	/* Input	: Byte value to LED. -----------------------------------------*/
	/* Output	: Mask value of LED. -----------------------------------------*/
	/* Jobs		: Out value to LED. by P13_0~3 and P22_0~3. ------------------*/

	/* Synchronize Mask value ------------------------------------------------*/
	mask_LED = value;

	/* Ports out -------------------------------------------------------------*/
	pGPIO_LED_L->OUT.U = mask_LED & 0b00001111;
	pGPIO_LED_H->OUT.U = (mask_LED & 0b11110000) >> 4;

	/* Return Mask value -----------------------------------------------------*/
	return mask_LED;
}
/*----------------------------------------------------------------------------*/

/* Sets GPIO by Bit unit -----------------------------------------------------*/
int setBit_GPIO_LED(uint8 number, uint8 value)
{
	/* Input	: Number of Bit and Bit value to LED. ------------------------*/
	/* Output	: Mask value of LED. -----------------------------------------*/
	/* Jobs		: Out value to LED. by P13_0~3 and P22_0~3. ------------------*/

	/* Detects error case ----------------------------------------------------*/
	if( (number < 0) | (7 < number) )
	{	/* Error case : number */
		/* To do */
		return -1; /* Return error : Entered the wrong number ----------------*/
	}

	/* Shift for bit masking -------------------------------------------------*/
	uint8 temp = (0b00000001 << number);

	/* Synchronize Mask value ------------------------------------------------*/
	switch(value)
	{
		case 0 :
		{	/* Reset case */
			mask_LED = ( mask_LED & (~temp));
		} break;
		case 1 :
		{	/* Set case */
			mask_LED = ( mask_LED | (temp));
		} break;
		default :
		{	/* Error case : bit value */
			/* To do */
			return -2; /* Return error : entered the wrong bit value -*/
		} break;
	}

	/* Ports out -------------------------------------------------------------*/
	pGPIO_LED_L->OUT.U = (mask_LED & 0b00001111);
	pGPIO_LED_H->OUT.U = (mask_LED & 0b11110000) >> 4;

	/* Return Mask value -----------------------------------------------------*/
	return mask_LED;
}
/*----------------------------------------------------------------------------*/

/* Gets State of LED ---------------------------------------------------------*/
int getState_LED(void)
{
	/* Input	: none. ------------------------------------------------------*/
	/* Output	: Mask value of LED. -----------------------------------------*/
	/* Jobs		: Return Mask value. -----------------------------------------*/
	return mask_LED;
}
/*----------------------------------------------------------------------------*/

/******************************************************************************/
#else if !GPIO_LED /*---------------GPIO_LED dummy ---------------------------*/
/******************************************************************************/
void setPort_GPIO_LED(void) {}
int setByte_GPIO_LED(uint8 value) {}
int setBit_GPIO_LED(uint8 number, uint8 value) {}
int getState_LED(void) {}
/******************************************************************************/
#endif /*---------------------------------------------------------------------*/
/******************************************************************************/










/******************************************************************************/
#if GPIO_PBSW /*--------------- GPIO_PBSW ------------------------------------*/
/******************************************************************************/

/* Module Address ------------------------------------------------------------*/
static Ifx_P * const pGPIO_PBSW	 = (Ifx_P *)&MODULE_P00;

/*----------------------------------------------------------------------------*/
static uint8 mask_PBSW;
/*----------------------------------------------------------------------------*/

/* Initialize GPIO for Push Button Switch ------------------------------------*/
void setPort_GPIO_PBSW(void)
{
	/* Input	: none. ------------------------------------------------------*/
	/* Output	: none. ------------------------------------------------------*/
	/* Jobs		: Ports setting for PBSW line. P00_6, P02_6, P10_2 and 3. ----*/

	/* Set Port to input -----------------------------------------------------*/
	pGPIO_PBSW->IOCR0.B.PC0	= 0b00000;
	pGPIO_PBSW->IOCR0.B.PC1	= 0b00000;
	pGPIO_PBSW->IOCR4.B.PC6	= 0b00000;
	pGPIO_PBSW->IOCR4.B.PC5	= 0b00000;
}
/*----------------------------------------------------------------------------*/

/* Gets State of Push Button Switch ------------------------------------------*/
int getState_PBSW(uint8 number)
{
	/* Input	: Bit number. ------------------------------------------------*/
	/* Output	: Result of Push Button Switch. ------------------------------*/
	/* Jobs		: Ports setting for PBSW line. P00_6, P02_6, P10_2 and 3. ----*/

	/* Synchronize Mask value ------------------------------------------------*/
	/* Bits shifting by number -----------------------------------------------*/
	switch(number)
	{
		case 0 :
		{
			if(pGPIO_PBSW->IN.B.P0)
			{
				mask_PBSW = mask_PBSW | 0b00000001;
				return 1;
			}
			else
			{
				mask_PBSW = mask_PBSW & 0b11111110;
				return 0;
			}
		} break;
		case 1 :
		{
			if(pGPIO_PBSW->IN.B.P1)
			{
				mask_PBSW = mask_PBSW | 0b00000010;
				return 1;
			}
			else
			{
				mask_PBSW = mask_PBSW & 0b11111101;
				return 0;
			}
		} break;
		case 2 :
		{
			if(pGPIO_PBSW->IN.B.P6)
			{
				mask_PBSW = mask_PBSW | 0b00000100;
				return 1;
			}
			else
			{
				mask_PBSW = mask_PBSW & 0b11111011;
				return 0;
			}
		} break;
		case 3 :
		{
			if(pGPIO_PBSW->IN.B.P4)
			{
				mask_PBSW = mask_PBSW | 0b00001000;
				return 1;
			}
			else
			{
				mask_PBSW = mask_PBSW & 0b11110111;
				return 0;
			}
		} break;
		default :
		{	/* Error case : number */
			return -1; /* Return error : Entered the wrong number ------------*/
		}
	}

	/* Return Mask value -----------------------------------------------------*/
	return mask_PBSW;
}
/*----------------------------------------------------------------------------*/

/******************************************************************************/
#else if !GPIO_PBSW /*------------- GPIO_LED dummy ---------------------------*/
/******************************************************************************/
void setPort_GPIO_PBSW(void) {}
int getState_PBSW(uint8 number) {}
/******************************************************************************/
#endif /*---------------------------------------------------------------------*/
/******************************************************************************/










/******************************************************************************/
#if GPIO_LCD /*-------------------- GPIO_UART_LCD ----------------------------*/
/******************************************************************************/

/* Module Address ------------------------------------------------------------*/
static Ifx_P * const pGPIO_LCD_d0013	= (Ifx_P *)&MODULE_P33;
static Ifx_P * const pGPIO_LCD_d1415	= (Ifx_P *)&MODULE_P20;
static Ifx_P * const pGPIO_LCD_CTL		= (Ifx_P *)&MODULE_P21;
static Ifx_P * const pGPIO_LCD_BL		= (Ifx_P *)&MODULE_P32;
static Ifx_P * const pGPIO_LCD_IRQ		= (Ifx_P *)&MODULE_P20;

// Changed by Ton
static Ifx_P * const pGPIO_LCD_chip_select   = (Ifx_P *)&MODULE_P20;		// chip select
/*----------------------------------------------------------------------------*/

/* Mask Variable Static ------------------------------------------------------*/
static uint16 mask_LCD_d;
static uint8 mask_LCD_ctl;
static uint8 mask_LCD_bl;
/*----------------------------------------------------------------------------*/

void config_chip_select_IO(void)
{
	pGPIO_LCD_chip_select->IOCR0.B.PC3  = 0b10000;	// use for chip select
}

/* Initialize GPIO for LCD ---------------------------------------------------*/
void setPort_GPIO_LCD(void)
{
	/* Input	: none. ------------------------------------------------------*/
	/* Output	: none. ------------------------------------------------------*/
	/* Jobs		: Ports setting for dxl UART flow control --------------------*/

	/* Set Port to output ----------------------------------------------------*/
	pGPIO_LCD_d0013->IOCR0.B.PC0	= 0b10000;	// LCD D00
	pGPIO_LCD_d0013->IOCR0.B.PC1	= 0b10000;	// LCD D01
	pGPIO_LCD_d0013->IOCR0.B.PC2	= 0b10000;	// LCD D02
	pGPIO_LCD_d0013->IOCR0.B.PC3	= 0b10000;	// LCD D03
	pGPIO_LCD_d0013->IOCR4.B.PC4	= 0b10000;	// LCD D04
	pGPIO_LCD_d0013->IOCR4.B.PC5	= 0b10000;	// LCD D05
	pGPIO_LCD_d0013->IOCR4.B.PC6	= 0b10000;	// LCD D06
	pGPIO_LCD_d0013->IOCR4.B.PC7	= 0b10000;	// LCD D07
	pGPIO_LCD_d0013->IOCR8.B.PC8	= 0b10000;	// LCD D08
	pGPIO_LCD_d0013->IOCR8.B.PC9	= 0b10000;	// LCD D09
	pGPIO_LCD_d0013->IOCR8.B.PC10	= 0b10000;	// LCD D10
	pGPIO_LCD_d0013->IOCR8.B.PC11	= 0b10000;	// LCD D11
	pGPIO_LCD_d0013->IOCR12.B.PC12	= 0b10000;	// LCD D12
	pGPIO_LCD_d0013->IOCR12.B.PC13	= 0b10000;	// LCD D13
	pGPIO_LCD_d1415->IOCR0.B.PC0	= 0b10000;	// LCD D14
	pGPIO_LCD_d1415->IOCR0.B.PC1	= 0b10000;	// LCD D15

	pGPIO_LCD_CTL->IOCR0.B.PC0		= 0b10000;	// LCD Cs
	pGPIO_LCD_CTL->IOCR0.B.PC2		= 0b10000;	// LCD Reset
	pGPIO_LCD_CTL->IOCR0.B.PC3		= 0b10000;	// LCD Rs
	pGPIO_LCD_CTL->IOCR4.B.PC4		= 0b10000;	// LCD nWr
	pGPIO_LCD_CTL->IOCR4.B.PC5		= 0b10000;	// LCD nRd

	pGPIO_LCD_BL->IOCR4.B.PC4		= 0b10000;	// LCD Back Light

	pGPIO_LCD_IRQ->IOCR8.B.PC9		= 0b00000;  // LCD TFT IRQ

	Delay_ms_GPIO(10);

	/* Initialize Value ------------------------------------------------------*/
	mask_LCD_d = 0x00;
	mask_LCD_ctl = 0x00;
	mask_LCD_bl = 0x00;
	setWord_GPIO_LCD_d(0xFFFF);
	setBit_GPIO_LCD_ctl(0, 1);
	setBit_GPIO_LCD_ctl(2, 1);
	setBit_GPIO_LCD_ctl(3, 1);
	setBit_GPIO_LCD_ctl(4, 1);
	setBit_GPIO_LCD_ctl(5, 1);
	setBit_GPIO_LCD_bl(4, 1);

}


/*----------------------------------------------------------------------------*/

/* Gets GPIO by Word unit ----------------------------------------------------*/
uint16 getWord_GPIO_LCD_d(void)
{
	/* Input	: none. ------------------------------------------------------*/
	/* Output	: Mask value of LCD Data. ------------------------------------*/
	/* Jobs		: Read value to LCD Data. by P33_00~13 and P20_14~15. --------*/

	setBit_GPIO_LCD_ctl(3, 1);
	setBit_GPIO_LCD_ctl(4, 1);
	setBit_GPIO_LCD_ctl(5, 0);

	Delay_ms_GPIO(10);

	pGPIO_LCD_d0013->IOCR0.B.PC0	= 0b10000;	// LCD D00
	pGPIO_LCD_d0013->IOCR0.B.PC1	= 0b10000;	// LCD D01
	pGPIO_LCD_d0013->IOCR0.B.PC2	= 0b10000;	// LCD D02
	pGPIO_LCD_d0013->IOCR0.B.PC3	= 0b10000;	// LCD D03
	pGPIO_LCD_d0013->IOCR4.B.PC4	= 0b10000;	// LCD D04
	pGPIO_LCD_d0013->IOCR4.B.PC5	= 0b10000;	// LCD D05
	pGPIO_LCD_d0013->IOCR4.B.PC6	= 0b10000;	// LCD D06
	pGPIO_LCD_d0013->IOCR4.B.PC7	= 0b10000;	// LCD D07
	pGPIO_LCD_d0013->IOCR8.B.PC8	= 0b10000;	// LCD D08
	pGPIO_LCD_d0013->IOCR8.B.PC9	= 0b10000;	// LCD D09
	pGPIO_LCD_d0013->IOCR8.B.PC10	= 0b10000;	// LCD D10
	pGPIO_LCD_d0013->IOCR8.B.PC11	= 0b10000;	// LCD D11
	pGPIO_LCD_d0013->IOCR12.B.PC12	= 0b10000;	// LCD D12
	pGPIO_LCD_d0013->IOCR12.B.PC13	= 0b10000;	// LCD D13
	pGPIO_LCD_d1415->IOCR0.B.PC0	= 0b10000;	// LCD D14
	pGPIO_LCD_d1415->IOCR0.B.PC1	= 0b10000;	// LCD D15

	Delay_ms_GPIO(10);

	mask_LCD_d = (pGPIO_LCD_d0013->IN.U & 0b0011111111111111);
	if(pGPIO_LCD_d1415->IN.B.P0 == 1) mask_LCD_d += 0b0100000000000000;
	if(pGPIO_LCD_d1415->IN.B.P1 == 1) mask_LCD_d += 0b1000000000000000;


	Delay_ms_GPIO(10);

	pGPIO_LCD_d0013->IOCR0.B.PC0	= 0b10000;	// LCD D00
	pGPIO_LCD_d0013->IOCR0.B.PC1	= 0b10000;	// LCD D01
	pGPIO_LCD_d0013->IOCR0.B.PC2	= 0b10000;	// LCD D02
	pGPIO_LCD_d0013->IOCR0.B.PC3	= 0b10000;	// LCD D03
	pGPIO_LCD_d0013->IOCR4.B.PC4	= 0b10000;	// LCD D04
	pGPIO_LCD_d0013->IOCR4.B.PC5	= 0b10000;	// LCD D05
	pGPIO_LCD_d0013->IOCR4.B.PC6	= 0b10000;	// LCD D06
	pGPIO_LCD_d0013->IOCR4.B.PC7	= 0b10000;	// LCD D07
	pGPIO_LCD_d0013->IOCR8.B.PC8	= 0b10000;	// LCD D08
	pGPIO_LCD_d0013->IOCR8.B.PC9	= 0b10000;	// LCD D09
	pGPIO_LCD_d0013->IOCR8.B.PC10	= 0b10000;	// LCD D10
	pGPIO_LCD_d0013->IOCR8.B.PC11	= 0b10000;	// LCD D11
	pGPIO_LCD_d0013->IOCR12.B.PC12	= 0b10000;	// LCD D12
	pGPIO_LCD_d0013->IOCR12.B.PC13	= 0b10000;	// LCD D13
	pGPIO_LCD_d1415->IOCR0.B.PC0	= 0b10000;	// LCD D14
	pGPIO_LCD_d1415->IOCR0.B.PC1	= 0b10000;	// LCD D15

	Delay_ms_GPIO(10);

    setBit_GPIO_LCD_ctl(5, 1);

    return mask_LCD_d;
}
/*----------------------------------------------------------------------------*/

/* Sets GPIO by Word unit ----------------------------------------------------*/
uint16 setWord_GPIO_LCD_d(uint16 value)
{
	/* Input	: Word value to LCD Data. ------------------------------------*/
	/* Output	: Mask value of LCD Data. ------------------------------------*/
	/* Jobs		: Out value to LCD Data. by P33_00~13 and P20_14~15. ---------*/

	/* Synchronize Mask value ------------------------------------------------*/
	mask_LCD_d = value;

	/* Ports out -------------------------------------------------------------*/
	pGPIO_LCD_d0013->OUT.U = mask_LCD_d; // LCD D00 ~ LCD D13
	(0x4000 == (mask_LCD_d & 0x4000)) ? (pGPIO_LCD_d1415->OUT.B.P0 = 1) : (pGPIO_LCD_d1415->OUT.B.P0 = 0); // LCD D14
	(0x8000 == (mask_LCD_d & 0x8000)) ? (pGPIO_LCD_d1415->OUT.B.P1 = 1) : (pGPIO_LCD_d1415->OUT.B.P1 = 0); // LCD D15

	/* Return Mask value -----------------------------------------------------*/
	return mask_LCD_d;
}
/*----------------------------------------------------------------------------*/

/* Sets GPIO by Bit unit -----------------------------------------------------*/
int setBit_GPIO_LCD_d(uint8 number, uint8 value)
{
	/* Input	: Number of Bit and Bit value to LCD Data. -------------------*/
	/* Output	: Mask value of LCD Data. ------------------------------------*/
	/* Jobs		: Out value to LCD Data. by P33_00~13 and P20_14~15. ---------*/

	/* Detects error case ----------------------------------------------------*/
	if( (number < 0) | (15 < number) )
	{	/* Error case : number */
		/* To do */
		return -1; /* Return error : Entered the wrong number ----------------*/
	}

	/* Shift for bit masking -------------------------------------------------*/
	uint16 temp = (0b0000000000000001 << number);

	/* Synchronize Mask value ------------------------------------------------*/
	switch(value)
	{
		case 0 :
		{	/* Reset case */
			mask_LCD_d = ( mask_LCD_d & (~temp));
		} break;
		case 1 :
		{	/* Set case */
			mask_LCD_d = ( mask_LCD_d | (temp));
		} break;
		default :
		{	/* Error case : bit value */
			/* To do */
			return -2; /* Return error : entered the wrong bit value -*/
		} break;
	}

	/* Ports out -------------------------------------------------------------*/
	pGPIO_LCD_d0013->OUT.U = mask_LCD_d; // LCD D00 ~ LCD D13
	(0x4000 == (mask_LCD_d & 0x4000)) ? (pGPIO_LCD_d1415->OUT.B.P0 = 1) : (pGPIO_LCD_d1415->OUT.B.P0 = 0); // LCD D14
	(0x8000 == (mask_LCD_d & 0x8000)) ? (pGPIO_LCD_d1415->OUT.B.P1 = 1) : (pGPIO_LCD_d1415->OUT.B.P1 = 0); // LCD D15

	/* Return Mask value -----------------------------------------------------*/
	return mask_LCD_d;
}
/*----------------------------------------------------------------------------*/

/* Sets GPIO by Bit unit -----------------------------------------------------*/
int setBit_GPIO_LCD_ctl(uint8 number, uint8 value)
{
	/* Input	: Number of Bit and Bit value to LCD Control. ----------------*/
	/* Output	: Mask value of LCD Control. ---------------------------------*/
	/* Jobs		: Out value to LED. by P20_0, 2, 3, 4 and 5. -----------------*/

	/* Detects error case ----------------------------------------------------*/
	if( (number < 0) | (5 < number) )
	{	/* Error case : number */
		/* To do */
		return -1; /* Return error : Entered the wrong number ----------------*/
	}
	if( (number == 1) )
	{	/* Error case : number */
		/* To do */
		return -1; /* Return error : Entered the wrong number ----------------*/
	}

	/* Shift for bit masking -------------------------------------------------*/
	uint8 temp = (0b00000001 << number);

	/* Synchronize Mask value ------------------------------------------------*/
	switch(value)
	{
		case 0 :
		{	/* Reset case */
			mask_LCD_ctl = ( mask_LCD_ctl & (~temp));
		} break;
		case 1 :
		{	/* Set case */
			mask_LCD_ctl = ( mask_LCD_ctl | (temp));
		} break;
		default :
		{	/* Error case : bit value */
			/* To do */
			return -2; /* Return error : entered the wrong bit value -*/
		} break;
	}

	/* Ports out -------------------------------------------------------------*/
	switch (number)
	{
		case 0 : pGPIO_LCD_CTL->OUT.B.P0 = value; break;
		case 2 : pGPIO_LCD_CTL->OUT.B.P2 = value; break;
		case 3 : pGPIO_LCD_CTL->OUT.B.P3 = value; break;
		case 4 : pGPIO_LCD_CTL->OUT.B.P4 = value; break;
		case 5 : pGPIO_LCD_CTL->OUT.B.P5 = value; break;
		default : break;
	}

	/* Return Mask value -----------------------------------------------------*/
	return mask_LCD_ctl;
}
/*----------------------------------------------------------------------------*/

/* Sets GPIO by Bit unit -----------------------------------------------------*/
int setBit_GPIO_LCD_bl(uint8 number, uint8 value)
{
	/* Input	: Number of Bit and Bit value to LCD Back Light. -------------*/
	/* Output	: Mask value of LCD Back Light. ------------------------------*/
	/* Jobs		: Out value to LED. by P32_4. --------------------------------*/

	/* Detects error case ----------------------------------------------------*/
	if( (number != 4) )
	{	/* Error case : number */
		/* To do */
		return -1; /* Return error : Entered the wrong number ----------------*/
	}

	/* Shift for bit masking -------------------------------------------------*/
	uint8 temp = (0b00000001 << number);

	/* Synchronize Mask value ------------------------------------------------*/
	switch(value)
	{
		case 0 :
		{	/* Reset case */
			mask_LCD_bl = ( mask_LCD_bl & (~temp));
		} break;
		case 1 :
		{	/* Set case */
			mask_LCD_bl = ( mask_LCD_bl | (temp));
		} break;
		default :
		{	/* Error case : bit value */
			/* To do */
			return -2; /* Return error : entered the wrong bit value -*/
		} break;
	}

	/* Ports out -------------------------------------------------------------*/
	switch (number)
	{
		case 4 : pGPIO_LCD_BL->OUT.B.P4 = value; break;
		default : break;
	}

	/* Return Mask value -----------------------------------------------------*/
	return mask_LCD_bl;
}
/*----------------------------------------------------------------------------*/

int getBit_LCD_IRQ(void)
{
	if(pGPIO_LCD_IRQ->IN.B.P9)
		return 1;
	else
		return 0;
}

/* Sets GPIO by Bit unit for LCD ---------------------------------------------*/
void f_Cs(int bit)		{pGPIO_LCD_CTL->OUT.B.P0 = bit;}
void f_Rs(int bit)		{pGPIO_LCD_CTL->OUT.B.P3 = bit;}
void f_nWr(int bit)		{pGPIO_LCD_CTL->OUT.B.P4 = bit;}
void f_nRd(int bit)		{pGPIO_LCD_CTL->OUT.B.P5 = bit;}
void f_reset(int bit)	{pGPIO_LCD_CTL->OUT.B.P2 = bit;}
void f_BLCNT(int bit)	{pGPIO_LCD_BL->OUT.B.P4	 = bit;}

// Changed by Ton
//void f_chip_select(int bit) {pGPIO_LCD_chip_select->OUT.B.P6 = bit;}
void f_chip_select(int bit) {pGPIO_LCD_chip_select->OUT.B.P3 = bit;}
/*----------------------------------------------------------------------------*/

/******************************************************************************/
#else if !GPIO_LCD /*-------------- GPIO_UART_LCD dummy ----------------------*/
/******************************************************************************/
void setPort_GPIO_LCD(void) {}
uint16 setWord_GPIO_LCD_d(uint8 value) {}
uint16 getPort_GPIO_LCD(void) {}
int setBit_GPIO_LCD_d(uint8 value) {}
int setBit_GPIO_LCD_ctl(uint8 value) {}
int setBit_GPIO_LCD_bl(uint8 value) {}
/******************************************************************************/
#endif /*---------------------------------------------------------------------*/
/******************************************************************************/










/******************************************************************************/
#if UART_dxl /*-------------------- GPIO_UART_dxl ----------------------------*/
/******************************************************************************/

/* Module Address ------------------------------------------------------------*/
static Ifx_P * const pGPIO_dxl = (Ifx_P *)&MODULE_P00;

/*----------------------------------------------------------------------------*/

/* Mask Variable Static ------------------------------------------------------*/
static uint8 mask_dxl;
/*----------------------------------------------------------------------------*/

/* Initialize GPIO for LED ---------------------------------------------------*/
void setPort_GPIO_dxl(void)
{
	/* Input	: none. ------------------------------------------------------*/
	/* Output	: none. ------------------------------------------------------*/
	/* Jobs		: Ports setting for dxl UART flow control --------------------*/

	/* Set Port to output ----------------------------------------------------*/
	pGPIO_dxl->IOCR4.B.PC5 = 0b10000;	// dxl flow control 0

	/* Initial Value is High--------------------------------------------------*/
	pGPIO_dxl->OUT.B.P5 = 1;

    /* Synchronize Mask value ------------------------------------------------*/
	mask_dxl = 1;
}
/*----------------------------------------------------------------------------*/

/* Sets GPIO by Bit unit -----------------------------------------------------*/
int setBit_GPIO_dxl(uint8 value)
{
	/* Input	: none. ------------------------------------------------------*/
	/* Output	: Mask value of dxl UART flow control ------------------------*/
	/* Jobs		: Out value to dxl UART flow control -------------------------*/

	/* Detects error case ----------------------------------------------------*/
	if( (0 != value) & (1 != value) )
	{	/* Error case : value */
		/* To do */
		return -1; /* Return error : Entered the wrong value -----------------*/
	}

	/* Synchronize Mask value ------------------------------------------------*/
	mask_dxl = value;

	/* Ports out -------------------------------------------------------------*/
	pGPIO_dxl->OUT.B.P5 = mask_dxl;

	/* Return Mask value -----------------------------------------------------*/
	return mask_dxl;
}
/*----------------------------------------------------------------------------*/

/******************************************************************************/
#else if !UART_dxl /*-------------- GPIO_UART_dxl dummy ----------------------*/
/******************************************************************************/
void setPort_GPIO_dxl(void) {}
int setBit_GPIO_dxl(uint8 number) {}
/******************************************************************************/
#endif /*---------------------------------------------------------------------*/
/******************************************************************************/










__inline void Delay_ms_GPIO(unsigned int tic_ms)
{
	unsigned int tic_sub1, tic_sub2, tic_sub3;
		for( tic_sub1 = 0; tic_sub1 < tic_ms; tic_sub1++ )
			for( tic_sub2 = 0; tic_sub2 < 1000; tic_sub2++ )
				for( tic_sub3 = 0; tic_sub3 < 61; tic_sub3++ )
				__nop();
}
