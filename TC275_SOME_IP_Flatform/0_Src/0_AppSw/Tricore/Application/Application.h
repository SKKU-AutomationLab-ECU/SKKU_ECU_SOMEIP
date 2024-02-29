/*
 * Runnable.h
 *
 *  Created on: 2018. 8. 10.
 *      Author: JW_Park
 */

#ifndef RUNNABLE_H_
#define RUNNABLE_H_


/******************************************************************************/
/*------------------------------Global variables------------------------------*/
/******************************************************************************/


/************************************************************************/
/*--------------------------------Option--------------------------------*/
/************************************************************************/
// This is Network Stack Option
// If you will use UDP Client Option,
// Make UDP_Opt 1.

#define UDP_Opt	 				0

#define SOMEIP_Opt				1
#define SOMEIP_Server_Opt		1
#define SOMEIP_Client_Opt		0

extern uint8 Map_STM_Runn[3][2];

extern void (*Process_Mapping[12])(void);

int SetMCU(void);
int setCFGMCU(uint8* CFGMCU);
void Core0_free(void);
void Core1_free(void);
void Core2_free(void);
void Runn00(void);
void Runn01(void);
void Runn10(void);
void Runn11(void);
void Runn20(void);
void Runn21(void);
void Runn_Dummy(void);

void App_CHAT_Receive(uint16 length, uint8 *RxData);

#endif /* RUNNABLE_H_ */