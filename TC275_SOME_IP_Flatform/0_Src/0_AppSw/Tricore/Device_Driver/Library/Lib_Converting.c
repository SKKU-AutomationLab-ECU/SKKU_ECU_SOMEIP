/*
 * Lib_Converting.c
 *
 *  Created on: Oct 16, 2018
 *      Author: HaNguyen
 */


#include "Lib_Converting.h"
#include <stdarg.h>
#include <stdio.h>

/* itoa:  convert n to characters in s */
void itoa(int n, unsigned char s[])
{
    int i, sign;

    if ((sign = n) < 0)  /* record sign */
        n = -n;          /* make n positive */
    i = 0;

    do
    {       /* generate digits in reverse order */
        s[i++] = n % 10 + '0';   /* get next digit */
    } while ((n /= 10) > 0);     /* delete it */

    if (sign < 0)
        s[i++] = '-';
    s[i] = '\0';

    reverse(s);
}

/* reverse:  reverse string s in place */
void reverse(unsigned char s[])
{
    int i, j;
    char c;

    for (i = 0, j = strlength(s)-1; i<j; i++, j--) {
        c = s[i];
        s[i] = s[j];
        s[j] = c;
    }
}

/* strlen: return length of s */
int strlength(unsigned char s[])
{
    int i = 0;
    while (s[i] != '\0')
        ++i;
    return i;
}

/* atoi: convert s to integer */
int atoi(unsigned char s[])
{
    int i, n;
    n = 0;
    for (i = 0; s[i] >= '0' && s[i] <= '9'; ++i)
        n = 10 * n + (s[i] - '0');
    return n;
}



void convert_str(char buffer[], char *fmt, ...)
{
	/* Input	: Transmit Buffer address. -----------------------------------*/
	/* Output	: none. ------------------------------------------------------*/
	/* Jobs		: Tx data transmit for System Log ----------------------------*/

	/* Define temp address of the data ---------------------------------------*/

	va_list ap;

	/* Get start address of the data -----------------------------------------*/
	va_start(ap, fmt);

	/* Copy data input to buffer ---------------------------------------------*/
	vsprintf(buffer, fmt, ap);

	/* Get end address of str -------------------------------------------*/
	va_end(ap);

	/* Get length of the str ---------------------------------------------*/
	sint16 length = 0;
	length = strlen(buffer);
}


