/*
 * some_client.h
 *
 *  Created on: 2024. 2. 29.
 *      Author: Sungbhin Oh
 */

#ifndef SOME_CLIENT_H_
#define SOME_CLIENT_H_

#include "Application.h"

/******************************************************************************/
/*------------------------------Global variables------------------------------*/
/******************************************************************************/
IFX_EXTERN struct udp_pcb *some_client_pcb;
/******************************************************************************/
/*-------------------------Function Prototypes--------------------------------*/
/******************************************************************************/
void someip_client_init (void);

void someip_find_service();

void someip_offer_callback();
void someip_subACK_callback();

#endif /* SOME_CLIENT_H_ */
