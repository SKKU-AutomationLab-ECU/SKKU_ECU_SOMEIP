/*
 * Device_IF_ETH.c
 *
 *  Created on: 2018. 8. 27.
 *      Author: JW_Park
 */


#include "Device_IF.h"
#include "Peripherals_ETH.h"

uint8 SRC_mMAC[6] = {0x00, 0x11, 0x22, 0x33, 0x44, 0x55}; //SA
uint8 DES_mMAC[6] = {0xE0, 0xCB, 0x4E, 0xEC, 0xEF, 0x73}; //DA
uint8 ETH_mDATA[10];


/* Initialize Device of EtherNet ---------------------------------------------*/
void IO_set_ETH(void)
{
	/* Input	: none. ------------------------------------------------------*/
	/* Output	: none. ------------------------------------------------------*/
	/* Jobs		: Device setting for EtherNet line. --------------------------*/

	#if SysLog /* System Log -------------------------------------------------*/
	printf_SysLog("IO_Set_EtherNet\t\t\t-> ");
	#endif /*-----------------------------------------------------------------*/


	setPort_ETH();


	#if SysLog /* System Log -------------------------------------------------*/
	printf_SysLog("Done.\r\n");
	#endif /*-----------------------------------------------------------------*/
}
