/**
 * \file CompilerDcc.h
 *
 * \version iLLD_1_0_0_8_0
 * \copyright Copyright (c) 2013 Infineon Technologies AG. All rights reserved.
 *
 *
 *                                 IMPORTANT NOTICE
 *
 *
 * Infineon Technologies AG (Infineon) is supplying this file for use
 * exclusively with Infineon's microcontroller products. This file can be freely
 * distributed within development tools that are supporting such microcontroller
 * products.
 *
 * THIS SOFTWARE IS PROVIDED "AS IS".  NO WARRANTIES, WHETHER EXPRESS, IMPLIED
 * OR STATUTORY, INCLUDING, BUT NOT LIMITED TO, IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE APPLY TO THIS SOFTWARE.
 * INFINEON SHALL NOT, IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL,
 * OR CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER.
 *
 */

#ifndef COMPILERDCC_H
#define COMPILERDCC_H 1

/******************************************************************************/

#include <stddef.h>

/*Linker definitions which are specific to Dcc */
/* IFX_CFG_USE_COMPILER_DEFAULT_LINKER shall be defined in Ifx_Cfg.h
 * to use the default compiler linker varaibles and startup */
#ifndef IFX_CFG_USE_COMPILER_DEFAULT_LINKER

/*Start: Core 0 definitions ********************************************** */

/*C extern defintions */
#define IFXCOMPILER_CORE_LINKER_SYMBOLS(cpu)                                  \
    extern unsigned int __USTACK##cpu[];      /**< user stack end */          \
    extern unsigned int __ISTACK##cpu[];      /**< interrupt stack end */     \
    extern unsigned int __INTTAB_CPU##cpu[];  /**< interrupt vector table */  \
    extern unsigned int __TRAPTAB_CPU##cpu[]; /**< trap vector table */       \
    extern unsigned int __CSA##cpu[];         /**< context save area begin */ \
    extern unsigned int __CSA##cpu##_END[];   /**< context save area end   */

#define __USTACK(cpu)      __USTACK##cpu
#define __ISTACK(cpu)      __ISTACK##cpu
#define __INTTAB_CPU(cpu)  __INTTAB_CPU##cpu
#define __TRAPTAB_CPU(cpu) __TRAPTAB_CPU##cpu
#define __CSA(cpu)         __CSA##cpu
#define __CSA_END(cpu)     __CSA##cpu##_END

#define IFXCOMPILER_COMMON_LINKER_SYMBOLS() \
    __asm("\t .weak __A8_MEM, __A9_MEM");  /**< ASM extern definitions */

/*Wrapper macros for the tool specific definitions */
#if defined(IFX_USE_SW_MANAGED_INT)
#define __INTTAB(cpu)      ((unsigned int)__INTTAB_CPU##cpu | (unsigned int)0x1FE0)
#else
#define __INTTAB(cpu)      __INTTAB_CPU##cpu
#endif /*defined(IFX_USE_SW_MANAGED_INT) */

#define __TRAPTAB(cpu)     __TRAPTAB_CPU##cpu

#define __SDATA1(cpu)      _SMALL_DATA_
#define __SDATA2(cpu)      _LITERAL_DATA_
#define __SDATA3(cpu)      __A8_MEM
#define __SDATA4(cpu)      __A9_MEM

#endif /*IFX_CFG_USE_COMPILER_DEFAULT_LINKER*/

/******************************************************************************/
#define IFX_INLINE         __inline__

/* FXIME check how to pack structure members */
#define IFX_PACKED

#define COMPILER_NAME      "DCC"
#define COMPILER_VERSION   __VERSION__

#define COMPILER_REVISION  0
#define IFX_INTERRUPT_FAST IFX_INTERRUPT

#if defined(IFX_USE_SW_MANAGED_INT)

#ifndef IFX_INTERRUPT
#define IFX_INTERRUPT(isr, vectabNum, prio) void isr(void)
#endif

#else
/* *INDENT-OFF* */

#ifndef IFX_INTERRUPT
#define IFX_INTERRUPT(isr, vectabNum, prio) IFX_INTERRUPT_INTERNAL(isr, vectabNum, prio)
#endif
#endif /*defined(IFX_USE_SW_MANAGED_INT)*/

#ifndef IFX_INTERRUPT_INTERNAL
#define IFX_INTERRUPT_INTERNAL(isr, vectabNum, prio)                \
void __interrupt(prio) __vector_table(vectabNum) isr(void)
#endif

/*Macro IFX_INTERRUPT_LEGACY is to be used for compiler version pror to 5.9.3.0*/
#define IFX_INTERRUPT_LEGACY(isr, vectabNum, prio) \
__asm ("\t.align\t 5\n\t\
.section .int."#prio"\n \t.sectionlink  .inttab"#vectabNum".intvec."#prio"\n\
#$$bf\n\
__intvec_tc"#vectabNum"_"#prio":\n\
    movh.a\t %a14,"#isr"@ha\n\
    lea\t %a14,[%a14]"#isr"@l\n\
    ji\t %a14\n\
#$$ef\n\t\
.section .intend."#prio"\n \t.sectionlink   .text");\
__interrupt__ void isr (void)

/* *INDENT-ON* */

/******************************************************************************/

#define IFX_ALIGN(n) __attribute__ ((aligned(n)))

/******************************************************************************/
/*Memory qualifiers*/
#ifndef IFX_FAR_ABS
#define IFX_FAR_ABS
#endif

#ifndef IFX_NEAR_ABS
#define IFX_NEAR_ABS
#endif

#ifndef IFX_REL_A0
#define IFX_REL_A0
#endif

#ifndef IFX_REL_A1
#define IFX_REL_A1
#endif

#ifndef IFX_REL_A1
#define IFX_REL_A1
#endif

#ifndef IFX_REL_A9
#define IFX_REL_A9
#endif
/******************************************************************************/

#endif /* COMPILERDCC_H */
