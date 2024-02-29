/*
 * Lib_Converting.h
 *
 *  Created on: Oct 16, 2018
 *      Author: HaNguyen
 */

#ifndef LIB_CONVERTING_H_
#define LIB_CONVERTING_H_

#include "CpuX_Main.h"

void itoa(int n, unsigned char s[]);
void reverse(unsigned char s[]);
int strlength(unsigned char s[]);
int atoi(unsigned char s[]);
void convert_str(char buffer[], char *fmt, ...);


#endif /* LIB_CONVERTING_H_ */
