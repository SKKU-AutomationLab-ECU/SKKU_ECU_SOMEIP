/*
 * g_endian.c
 *
 *  Created on: 2023. 7. 31.
 *      Author: JaebumPark
 */

#include "g_endian.h"


uint16 swap_uint16(uint16 val)
{
    return (uint16)(val << 8) | (val >> 8);
}

uint32 swap_uint32(uint32 val)
{
    val = ((val << 8) & 0xFF00FF00) | ((val >> 8) & 0xFF00FF);
    return (val << 16) | (val >> 16);
}
