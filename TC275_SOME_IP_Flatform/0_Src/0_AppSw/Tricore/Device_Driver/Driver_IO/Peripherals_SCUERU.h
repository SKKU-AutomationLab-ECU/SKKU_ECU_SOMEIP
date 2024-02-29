/*
 * Peripherals_SCUERU.h
 *
 *  Created on: 2018. 11. 26.
 *      Author: JW_Park
 */

#ifndef PERIPHERALS_SCUERU_H_
#define PERIPHERALS_SCUERU_H_

/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/

#include <Ifx_Types.h>
#include "Configuration.h"

#include <Scu/Std/IfxScuEru.h>


void setPort_SCUERU02(void);
void setPort_SCUERU02_edge(int dir);
void get_USvalue_Mechanism(void);
float get_USvalue_KalmanF(float input);
IFX_EXTERN void ISR_SCUERU_02(void);
IFX_EXTERN unsigned int get_USvalue(void);

#endif /* PERIPHERALS_SCUERU_H_ */
