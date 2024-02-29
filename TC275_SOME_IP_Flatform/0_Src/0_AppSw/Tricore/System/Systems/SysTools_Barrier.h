/*
 * barrier.h
 *
 *  Created on: 2017. 11. 15.
 *      Author: Hyunsu.An
 */

#ifndef BARRIER_H_
#define BARRIER_H_

#include <Ifx_Types.h>

typedef struct bar_type{
	volatile int cnt;
	volatile int flag;
}bar_name;

void barrier(bar_name *bar, int p);

#endif /* BARRIER_H_ */
