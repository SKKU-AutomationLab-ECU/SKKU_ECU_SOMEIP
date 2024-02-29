/*
 * Peripherals_GPIO.h
 *
 *  Created on: 2018. 8. 9.
 *      Author: JW_Park
 */

#ifndef PERIPHERALS_GPIO_LED_H_
#define PERIPHERALS_GPIO_LED_H_



#include <Ifx_Types.h>
#include "IfxPort_regdef.h"
#include "IfxPort_reg.h"





/******************************************************************************/
/*----------------------------- GPIO_LED -------------------------------------*/
/******************************************************************************/
void setPort_GPIO_LED(void);
int setByte_GPIO_LED(uint8 value);
int setBit_GPIO_LED(uint8 number, uint8 value);
int getState_LED(void);
/******************************************************************************/





/******************************************************************************/
/*----------------------------- GPIO_PBSW ------------------------------------*/
/******************************************************************************/
void setPort_GPIO_PBSW(void);
int getState_PBSW(uint8 number);
/******************************************************************************/





/******************************************************************************/
/*----------------------------- GPIO_LCD -------------------------------------*/
/******************************************************************************/
void setPort_GPIO_LCD(void);
uint16 getWord_GPIO_LCD_d(void);
uint16 setWord_GPIO_LCD_d(uint16 value);
int setBit_GPIO_LCD_d(uint8 number, uint8 value);
int setBit_GPIO_LCD_ctl(uint8 number, uint8 value);
int setBit_GPIO_LCD_bl(uint8 number, uint8 value);
int getBit_LCD_IRQ(void);


// Changed by Ton
void f_Cs(int bit);
void f_Rs(int bit);
void f_nWr(int bit);
void f_nRd(int bit);
void f_reset(int bit);
void f_BLCNT(int bit);
void f_chip_select(int bit);


void config_chip_select_IO(void);

/******************************************************************************/





/******************************************************************************/
/*----------------------------- GPIO_dxl -------------------------------------*/
/******************************************************************************/
void setPort_GPIO_dxl(void);
int setBit_GPIO_dxl(uint8 value);
/******************************************************************************/





__inline void Delay_ms_GPIO(unsigned int tic_ms);





#endif /* PERIPHERALS_GPIO_LED_H_ */
