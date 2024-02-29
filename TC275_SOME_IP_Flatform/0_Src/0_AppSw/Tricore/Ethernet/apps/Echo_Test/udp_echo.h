/*
 * udp_echo.h
 *
 *  Created on: 2024. 2. 29.
 *      Author: Sungbhin Oh
 */

#ifndef UDP_ECHO_H_
#define UDP_ECHO_H_

/******************************************************************************/
/*------------------------------Global variables------------------------------*/
/******************************************************************************/

/******************************************************************************/
/*-------------------------Function Prototypes--------------------------------*/
/******************************************************************************/
void udp_echo_init(void);
void udp_echo(struct pbuf *rec_pbuf);
void udp_echoserver_receive_callback(void *arg, struct udp_pcb *upcb, struct pbuf *p, const ip_addr_t *addr, u16_t port);


#endif /* UDP_ECHO_H_ */
