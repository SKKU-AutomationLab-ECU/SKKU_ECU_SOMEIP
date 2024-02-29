	.file	"memp.c"
.section .text,"ax",@progbits
.Ltext0:
	.align 1
	.global	memp_init
	.type	memp_init, @function
memp_init:
.LFB0:
	.file 1 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/memp.c"
	.loc 1 339 0
.LVL0:
	movh	%d3, hi:lwip_stats
	movh.a	%a5, hi:memp_num
	.loc 1 339 0
	mov	%d2, 0
	addi	%d3, %d3, lo:lwip_stats
	lea	%a5, [%a5] lo:memp_num
	.loc 1 344 0
	mov	%d15, 0
	mov.a	%a15, 9
.LVL1:
.L2:
	.loc 1 344 0 is_stmt 0 discriminator 3
	madd	%d4, %d3, %d2, 16
	mov.a	%a3, %d4
	.loc 1 345 0 is_stmt 1 discriminator 3
	addi	%d4, %d2, 12
	madd	%d5, %d3, %d4, 16
	.loc 1 344 0 discriminator 3
	st.h	[%a3] 190, %d15
	.loc 1 345 0 discriminator 3
	mov.a	%a2, %d5
	st.h	[%a2]0, %d15
	.loc 1 346 0 discriminator 3
	st.h	[%a2] 2, %d15
	.loc 1 347 0 discriminator 3
	addsc.a	%a2, %a5, %d2, 1
	add	%d2, 1
.LVL2:
	ld.h	%d4, [%a2]0
	st.h	[%a3] 188, %d4
.LVL3:
	.loc 1 343 0 discriminator 3
	loop	%a15, .L2
	.loc 1 351 0
	movh	%d6, hi:memp_memory
	addi	%d6, %d6, lo:memp_memory
	add	%d6, 3
	movh	%d1, hi:memp_tab
	movh	%d8, hi:memp_sizes
	andn	%d6, %d6, ~(-4)
.LVL4:
	mov	%d5, 0
	addi	%d1, %d1, lo:memp_tab
	.loc 1 355 0
	mov	%d0, 0
	addi	%d8, %d8, lo:memp_sizes
	mov.a	%a4, 9
.LVL5:
.L5:
	mov.a	%a2, %d1
	sh	%d7, %d5, 2
	addsc.a	%a15, %a2, %d7, 0
	.loc 1 360 0
	sh	%d15, %d5, 1
	.loc 1 355 0
	st.w	[%a15]0, %d0
.LVL6:
	.loc 1 360 0
	addsc.a	%a15, %a5, %d15, 0
	ld.hu	%d3, [%a15]0
	jz	%d3, .L3
	mov.a	%a2, %d8
	addsc.a	%a15, %a2, %d15, 0
	mov	%d15, 0
	ld.hu	%d4, [%a15]0
	mov.a	%a2, 0
	mov.a	%a15, %d6
	j	.L4
.LVL7:
.L6:
	.loc 1 363 0
	mov.aa	%a15, %a3
.LVL8:
.L4:
	add	%d15, 1
.LVL9:
	.loc 1 360 0 discriminator 3
	extr.u	%d2, %d15, 0, 16
	.loc 1 361 0 discriminator 3
	st.a	[%a15]0, %a2
	.loc 1 363 0 discriminator 3
	addsc.a	%a3, %a15, %d4, 0
.LVL10:
	mov.aa	%a2, %a15
	.loc 1 360 0 discriminator 3
	jlt.u	%d2, %d3, .L6
	add	%d3, -1
	extr.u	%d3, %d3, 0, 16
	mov.a	%a2, %d1
	madd	%d15, %d6, %d3, %d4
	madd	%d4, %d4, %d3, %d4
	addsc.a	%a15, %a2, %d7, 0
	add	%d6, %d4
	st.w	[%a15]0, %d15
.LVL11:
.L3:
	add	%d5, 1
.LVL12:
	.loc 1 354 0 discriminator 2
	loop	%a4, .L5
	.loc 1 375 0
	ret
.LFE0:
	.size	memp_init, .-memp_init
.section .rodata,"a",@progbits
.LC0:
	.string	"Assertion \"%s\" failed at line %d in %s\n"
.LC1:
	.string	"memp_malloc: type < MEMP_MAX"
.LC2:
	.string	"0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/memp.c"
.LC3:
	.string	"memp_malloc: memp properly aligned"
.section .text,"ax",@progbits
	.align 1
	.global	memp_malloc
	.type	memp_malloc, @function
memp_malloc:
.LFB1:
	.loc 1 394 0
.LVL13:
	sub.a	%SP, 16
.LCFI0:
	.loc 1 398 0
	jge.u	%d4, 10, .L20
	.loc 1 405 0
	movh.a	%a15, hi:memp_tab
	lea	%a15, [%a15] lo:memp_tab
	addsc.a	%a15, %a15, %d4, 2
	ld.a	%a2, [%a15]0
.LVL14:
	.loc 1 407 0
	jz.a	%a2, .L16
	.loc 1 408 0
	ld.w	%d2, [%a2]0
	st.w	[%a15]0, %d2
	.loc 1 414 0
	movh.a	%a15, hi:lwip_stats
	mov.d	%d3, %a15
	addi	%d2, %d3, lo:lwip_stats
	madd	%d15, %d2, %d4, 16
	addi	%d4, %d4, 12
.LVL15:
	madd	%d3, %d2, %d4, 16
	mov.a	%a3, %d15
	ld.h	%d15, [%a3] 190
	mov.a	%a15, %d3
	add	%d15, 1
	extr.u	%d15, %d15, 0, 16
	ld.hu	%d2, [%a15]0
	st.h	[%a3] 190, %d15
	jlt.u	%d2, %d15, .L21
	.loc 1 415 0
	mov.d	%d2, %a2
	and	%d15, %d2, 3
	mov.aa	%a15, %a2
	jnz	%d15, .L22
.LVL16:
.L15:
	.loc 1 426 0
	mov.aa	%a2, %a15
	ret
.LVL17:
.L21:
	.loc 1 415 0 discriminator 1
	mov.d	%d2, %a2
	.loc 1 414 0 discriminator 1
	st.h	[%a15]0, %d15
	.loc 1 415 0 discriminator 1
	and	%d15, %d2, 3
	mov.aa	%a15, %a2
	jz	%d15, .L15
.LVL18:
.L22:
	movh	%d15, hi:.LC3
	addi	%d15, %d15, lo:.LC3
	movh.a	%a4, hi:.LC0
	lea	%a4, [%a4] lo:.LC0
	st.w	[%SP]0, %d15
	mov	%d15, 416
	st.w	[%SP] 4, %d15
	movh	%d15, hi:.LC2
	addi	%d15, %d15, lo:.LC2
	st.w	[%SP] 8, %d15
	call	Ifx_Lwip_printf
.LVL19:
	.loc 1 426 0 discriminator 1
	mov.aa	%a2, %a15
	ret
.LVL20:
.L16:
	.loc 1 420 0
	movh.a	%a15, hi:lwip_stats
	mov.d	%d3, %a15
	addi	%d15, %d3, lo:lwip_stats
	addi	%d4, %d4, 12
.LVL21:
	madd	%d2, %d15, %d4, 16
	mov.a	%a15, %d2
	ld.h	%d15, [%a15] 2
	add	%d15, 1
	st.h	[%a15] 2, %d15
	mov.a	%a15, 0
	.loc 1 426 0
	mov.aa	%a2, %a15
.LVL22:
	ret
.LVL23:
.L20:
	.loc 1 398 0 discriminator 1
	movh	%d15, hi:.LC1
	addi	%d15, %d15, lo:.LC1
	movh.a	%a4, hi:.LC0
	lea	%a4, [%a4] lo:.LC0
	st.w	[%SP]0, %d15
	mov	%d15, 398
	mov.a	%a15, 0
	st.w	[%SP] 4, %d15
	movh	%d15, hi:.LC2
	addi	%d15, %d15, lo:.LC2
	st.w	[%SP] 8, %d15
	call	Ifx_Lwip_printf
.LVL24:
	j	.L15
.LFE1:
	.size	memp_malloc, .-memp_malloc
.section .rodata,"a",@progbits
.LC4:
	.string	"memp_free: mem properly aligned"
.section .text,"ax",@progbits
	.align 1
	.global	memp_free
	.type	memp_free, @function
memp_free:
.LFB2:
	.loc 1 436 0
.LVL25:
	sub.a	%SP, 16
.LCFI1:
	.loc 1 440 0
	jz.a	%a4, .L23
	.loc 1 443 0
	mov.d	%d3, %a4
	and	%d2, %d3, 3
	mov.aa	%a15, %a4
	mov	%d15, %d4
	jnz	%d2, .L32
.LVL26:
.L25:
	.loc 1 458 0
	movh	%d2, hi:lwip_stats
	addi	%d2, %d2, lo:lwip_stats
	madd	%d2, %d2, %d15, 16
	.loc 1 460 0
	movh.a	%a2, hi:memp_tab
	lea	%a2, [%a2] lo:memp_tab
	.loc 1 458 0
	mov.a	%a3, %d2
	.loc 1 460 0
	addsc.a	%a2, %a2, %d15, 2
	.loc 1 458 0
	ld.h	%d2, [%a3] 190
	.loc 1 460 0
	ld.w	%d3, [%a2]0
	.loc 1 458 0
	add	%d2, -1
	.loc 1 461 0
	st.a	[%a2]0, %a15
	.loc 1 458 0
	st.h	[%a3] 190, %d2
	.loc 1 460 0
	st.w	[%a15]0, %d3
.LVL27:
.L23:
	ret
.LVL28:
.L32:
	.loc 1 443 0 discriminator 1
	movh	%d2, hi:.LC4
	addi	%d2, %d2, lo:.LC4
	movh.a	%a4, hi:.LC0
	lea	%a4, [%a4] lo:.LC0
	st.w	[%SP]0, %d2
	mov	%d2, 444
	st.w	[%SP] 4, %d2
	movh	%d2, hi:.LC2
	addi	%d2, %d2, lo:.LC2
	st.w	[%SP] 8, %d2
	call	Ifx_Lwip_printf
.LVL29:
	j	.L25
.LFE2:
	.size	memp_free, .-memp_free
	.local	memp_memory
.section .bss,"aw",@nobits
	.align 0
	.type		 memp_memory,@object
	.size		 memp_memory,36259
memp_memory:
	.space	36259
.section .rodata,"a",@progbits
	.align 1
	.type	memp_num, @object
	.size	memp_num, 20
memp_num:
	.short	4
	.short	4
	.short	10
	.short	8
	.short	16
	.short	5
	.short	15
	.short	3
	.short	16
	.short	16
	.align 1
	.type	memp_sizes, @object
	.size	memp_sizes, 20
memp_sizes:
	.short	28
	.short	32
	.short	156
	.short	36
	.short	20
	.short	32
	.short	24
	.short	16
	.short	16
	.short	2064
	.local	memp_tab
.section .bss,"aw",@nobits
	.align 2
	.type		 memp_tab,@object
	.size		 memp_tab,40
memp_tab:
	.space	40
.section .debug_frame,"",@progbits
.Lframe0:
	.uaword	.LECIE0-.LSCIE0
.LSCIE0:
	.uaword	0xffffffff
	.byte	0x3
	.string	""
	.uleb128 0x1
	.sleb128 1
	.uleb128 0x1b
	.byte	0xc
	.uleb128 0x1a
	.uleb128 0
	.align 2
.LECIE0:
.LSFDE0:
	.uaword	.LEFDE0-.LASFDE0
.LASFDE0:
	.uaword	.Lframe0
	.uaword	.LFB0
	.uaword	.LFE0-.LFB0
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB1
	.uaword	.LFE1-.LFB1
	.byte	0x4
	.uaword	.LCFI0-.LFB1
	.byte	0xe
	.uleb128 0x10
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB2
	.uaword	.LFE2-.LFB2
	.byte	0x4
	.uaword	.LCFI1-.LFB2
	.byte	0xe
	.uleb128 0x10
	.align 2
.LEFDE4:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "./0_Src/4_McHal/Tricore/Cpu/Std/Platform_Types.h"
	.file 3 "./0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/port/include/arch/cc.h"
	.file 4 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/memp.h"
	.file 5 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/mem.h"
	.file 6 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/stats.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x819
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9."
	.string	"4 build on 2018-04-18 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -msmall-const=8 -mtc161 -g -g -O2 -fno-common -fno-short-enums -fsingle-precision-constant -fstrict-volatile-bitfields"
	.byte	0x1
	.string	"0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/memp.c"
	.string	"D:\\\\00.Workspace\\\\TC275\\\\SKKU_ECU_SOMEIP\\\\TC275_SOME_IP_Flatform"
	.uaword	.Ltext0
	.uaword	.Letext0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.string	"sint8"
	.byte	0x2
	.byte	0x58
	.uaword	0x1d3
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x3
	.string	"uint8"
	.byte	0x2
	.byte	0x59
	.uaword	0x1ef
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x3
	.string	"sint16"
	.byte	0x2
	.byte	0x5a
	.uaword	0x20e
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x3
	.string	"uint16"
	.byte	0x2
	.byte	0x5b
	.uaword	0x229
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"uint32"
	.byte	0x2
	.byte	0x5d
	.uaword	0x1aa
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.string	"float"
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.string	"double"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.uleb128 0x4
	.byte	0x4
	.uaword	0x291
	.uleb128 0x5
	.uaword	0x296
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x6
	.byte	0x4
	.uleb128 0x3
	.string	"u8_t"
	.byte	0x3
	.byte	0x7
	.uaword	0x1e2
	.uleb128 0x3
	.string	"u16_t"
	.byte	0x3
	.byte	0x8
	.uaword	0x21b
	.uleb128 0x3
	.string	"u32_t"
	.byte	0x3
	.byte	0x9
	.uaword	0x23f
	.uleb128 0x3
	.string	"s8_t"
	.byte	0x3
	.byte	0xa
	.uaword	0x1c6
	.uleb128 0x3
	.string	"s16_t"
	.byte	0x3
	.byte	0xb
	.uaword	0x200
	.uleb128 0x3
	.string	"mem_ptr_t"
	.byte	0x3
	.byte	0xe
	.uaword	0x2b9
	.uleb128 0x7
	.byte	0x4
	.byte	0x4
	.byte	0x2b
	.uaword	0x3a8
	.uleb128 0x8
	.string	"MEMP_RAW_PCB"
	.sleb128 0
	.uleb128 0x8
	.string	"MEMP_UDP_PCB"
	.sleb128 1
	.uleb128 0x8
	.string	"MEMP_TCP_PCB"
	.sleb128 2
	.uleb128 0x8
	.string	"MEMP_TCP_PCB_LISTEN"
	.sleb128 3
	.uleb128 0x8
	.string	"MEMP_TCP_SEG"
	.sleb128 4
	.uleb128 0x8
	.string	"MEMP_REASSDATA"
	.sleb128 5
	.uleb128 0x8
	.string	"MEMP_FRAG_PBUF"
	.sleb128 6
	.uleb128 0x8
	.string	"MEMP_SYS_TIMEOUT"
	.sleb128 7
	.uleb128 0x8
	.string	"MEMP_PBUF"
	.sleb128 8
	.uleb128 0x8
	.string	"MEMP_PBUF_POOL"
	.sleb128 9
	.uleb128 0x8
	.string	"MEMP_MAX"
	.sleb128 10
	.byte	0
	.uleb128 0x3
	.string	"memp_t"
	.byte	0x4
	.byte	0x2f
	.uaword	0x2f0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x3
	.string	"mem_size_t"
	.byte	0x5
	.byte	0x4c
	.uaword	0x2ac
	.uleb128 0x9
	.string	"stats_proto"
	.byte	0x18
	.byte	0x6
	.byte	0x3a
	.uaword	0x492
	.uleb128 0xa
	.string	"xmit"
	.byte	0x6
	.byte	0x3b
	.uaword	0x2ac
	.byte	0
	.uleb128 0xa
	.string	"recv"
	.byte	0x6
	.byte	0x3c
	.uaword	0x2ac
	.byte	0x2
	.uleb128 0xa
	.string	"fw"
	.byte	0x6
	.byte	0x3d
	.uaword	0x2ac
	.byte	0x4
	.uleb128 0xa
	.string	"drop"
	.byte	0x6
	.byte	0x3e
	.uaword	0x2ac
	.byte	0x6
	.uleb128 0xa
	.string	"chkerr"
	.byte	0x6
	.byte	0x3f
	.uaword	0x2ac
	.byte	0x8
	.uleb128 0xa
	.string	"lenerr"
	.byte	0x6
	.byte	0x40
	.uaword	0x2ac
	.byte	0xa
	.uleb128 0xa
	.string	"memerr"
	.byte	0x6
	.byte	0x41
	.uaword	0x2ac
	.byte	0xc
	.uleb128 0xa
	.string	"rterr"
	.byte	0x6
	.byte	0x42
	.uaword	0x2ac
	.byte	0xe
	.uleb128 0xa
	.string	"proterr"
	.byte	0x6
	.byte	0x43
	.uaword	0x2ac
	.byte	0x10
	.uleb128 0xa
	.string	"opterr"
	.byte	0x6
	.byte	0x44
	.uaword	0x2ac
	.byte	0x12
	.uleb128 0xa
	.string	"err"
	.byte	0x6
	.byte	0x45
	.uaword	0x2ac
	.byte	0x14
	.uleb128 0xa
	.string	"cachehit"
	.byte	0x6
	.byte	0x46
	.uaword	0x2ac
	.byte	0x16
	.byte	0
	.uleb128 0x9
	.string	"stats_mem"
	.byte	0x10
	.byte	0x6
	.byte	0x5a
	.uaword	0x4f5
	.uleb128 0xa
	.string	"name"
	.byte	0x6
	.byte	0x5c
	.uaword	0x28b
	.byte	0
	.uleb128 0xa
	.string	"avail"
	.byte	0x6
	.byte	0x5e
	.uaword	0x3c2
	.byte	0x4
	.uleb128 0xa
	.string	"used"
	.byte	0x6
	.byte	0x5f
	.uaword	0x3c2
	.byte	0x6
	.uleb128 0xa
	.string	"max"
	.byte	0x6
	.byte	0x60
	.uaword	0x3c2
	.byte	0x8
	.uleb128 0xa
	.string	"err"
	.byte	0x6
	.byte	0x61
	.uaword	0x2ac
	.byte	0xa
	.uleb128 0xa
	.string	"illegal"
	.byte	0x6
	.byte	0x62
	.uaword	0x2ac
	.byte	0xc
	.byte	0
	.uleb128 0xb
	.string	"stats_"
	.uahalf	0x158
	.byte	0x6
	.byte	0x71
	.uaword	0x57b
	.uleb128 0xa
	.string	"link"
	.byte	0x6
	.byte	0x73
	.uaword	0x3d4
	.byte	0
	.uleb128 0xa
	.string	"etharp"
	.byte	0x6
	.byte	0x76
	.uaword	0x3d4
	.byte	0x18
	.uleb128 0xa
	.string	"ip_frag"
	.byte	0x6
	.byte	0x79
	.uaword	0x3d4
	.byte	0x30
	.uleb128 0xa
	.string	"ip"
	.byte	0x6
	.byte	0x7c
	.uaword	0x3d4
	.byte	0x48
	.uleb128 0xa
	.string	"icmp"
	.byte	0x6
	.byte	0x7f
	.uaword	0x3d4
	.byte	0x60
	.uleb128 0xa
	.string	"udp"
	.byte	0x6
	.byte	0x85
	.uaword	0x3d4
	.byte	0x78
	.uleb128 0xa
	.string	"tcp"
	.byte	0x6
	.byte	0x88
	.uaword	0x3d4
	.byte	0x90
	.uleb128 0xa
	.string	"mem"
	.byte	0x6
	.byte	0x8b
	.uaword	0x492
	.byte	0xa8
	.uleb128 0xa
	.string	"memp"
	.byte	0x6
	.byte	0x8e
	.uaword	0x57b
	.byte	0xb8
	.byte	0
	.uleb128 0xc
	.uaword	0x492
	.uaword	0x58b
	.uleb128 0xd
	.uaword	0x3b6
	.byte	0x9
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x9
	.string	"memp"
	.byte	0x4
	.byte	0x1
	.byte	0x42
	.uaword	0x5b6
	.uleb128 0xa
	.string	"next"
	.byte	0x1
	.byte	0x43
	.uaword	0x5b6
	.byte	0
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x59b
	.uleb128 0xe
	.byte	0x1
	.string	"memp_init"
	.byte	0x1
	.uahalf	0x152
	.byte	0x1
	.uaword	.LFB0
	.uaword	.LFE0
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x609
	.uleb128 0xf
	.string	"memp"
	.byte	0x1
	.uahalf	0x154
	.uaword	0x5b6
	.uaword	.LLST0
	.uleb128 0xf
	.string	"i"
	.byte	0x1
	.uahalf	0x155
	.uaword	0x2ac
	.uaword	.LLST1
	.uleb128 0xf
	.string	"j"
	.byte	0x1
	.uahalf	0x155
	.uaword	0x2ac
	.uaword	.LLST2
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.string	"memp_malloc"
	.byte	0x1
	.uahalf	0x186
	.byte	0x1
	.uaword	0x29e
	.uaword	.LFB1
	.uaword	.LFE1
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x6ad
	.uleb128 0x11
	.string	"type"
	.byte	0x1
	.uahalf	0x186
	.uaword	0x3a8
	.uaword	.LLST3
	.uleb128 0xf
	.string	"memp"
	.byte	0x1
	.uahalf	0x18b
	.uaword	0x5b6
	.uaword	.LLST4
	.uleb128 0x12
	.uaword	.LVL19
	.uaword	0x7fb
	.uaword	0x680
	.uleb128 0x13
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	.LC0
	.uleb128 0x13
	.byte	0x2
	.byte	0x8a
	.sleb128 8
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x13
	.byte	0x2
	.byte	0x8a
	.sleb128 4
	.byte	0x3
	.byte	0xa
	.uahalf	0x1a0
	.uleb128 0x13
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x5
	.byte	0x3
	.uaword	.LC3
	.byte	0
	.uleb128 0x14
	.uaword	.LVL24
	.uaword	0x7fb
	.uleb128 0x13
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	.LC0
	.uleb128 0x13
	.byte	0x2
	.byte	0x8a
	.sleb128 8
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x13
	.byte	0x2
	.byte	0x8a
	.sleb128 4
	.byte	0x3
	.byte	0xa
	.uahalf	0x18e
	.uleb128 0x13
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x5
	.byte	0x3
	.uaword	.LC1
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.string	"memp_free"
	.byte	0x1
	.uahalf	0x1b3
	.byte	0x1
	.uaword	.LFB2
	.uaword	.LFE2
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x72e
	.uleb128 0x11
	.string	"type"
	.byte	0x1
	.uahalf	0x1b3
	.uaword	0x3a8
	.uaword	.LLST5
	.uleb128 0x11
	.string	"mem"
	.byte	0x1
	.uahalf	0x1b3
	.uaword	0x29e
	.uaword	.LLST6
	.uleb128 0xf
	.string	"memp"
	.byte	0x1
	.uahalf	0x1b5
	.uaword	0x5b6
	.uaword	.LLST7
	.uleb128 0x14
	.uaword	.LVL29
	.uaword	0x7fb
	.uleb128 0x13
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	.LC0
	.uleb128 0x13
	.byte	0x2
	.byte	0x8a
	.sleb128 8
	.byte	0x5
	.byte	0x3
	.uaword	.LC2
	.uleb128 0x13
	.byte	0x2
	.byte	0x8a
	.sleb128 4
	.byte	0x3
	.byte	0xa
	.uahalf	0x1bc
	.uleb128 0x13
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x5
	.byte	0x3
	.uaword	.LC4
	.byte	0
	.byte	0
	.uleb128 0xc
	.uaword	0x5b6
	.uaword	0x73e
	.uleb128 0xd
	.uaword	0x3b6
	.byte	0x9
	.byte	0
	.uleb128 0x15
	.string	"memp_tab"
	.byte	0x1
	.byte	0x75
	.uaword	0x72e
	.byte	0x5
	.byte	0x3
	.uaword	memp_tab
	.uleb128 0xc
	.uaword	0x2ac
	.uaword	0x764
	.uleb128 0xd
	.uaword	0x3b6
	.byte	0x9
	.byte	0
	.uleb128 0x15
	.string	"memp_sizes"
	.byte	0x1
	.byte	0x81
	.uaword	0x77c
	.byte	0x5
	.byte	0x3
	.uaword	memp_sizes
	.uleb128 0x5
	.uaword	0x754
	.uleb128 0x15
	.string	"memp_num"
	.byte	0x1
	.byte	0x89
	.uaword	0x797
	.byte	0x5
	.byte	0x3
	.uaword	memp_num
	.uleb128 0x5
	.uaword	0x754
	.uleb128 0xc
	.uaword	0x28b
	.uaword	0x7ac
	.uleb128 0xd
	.uaword	0x3b6
	.byte	0x9
	.byte	0
	.uleb128 0x16
	.string	"memp_desc"
	.byte	0x1
	.byte	0x90
	.uaword	0x79c
	.uleb128 0xc
	.uaword	0x2a0
	.uaword	0x7ce
	.uleb128 0x17
	.uaword	0x3b6
	.uahalf	0x8da2
	.byte	0
	.uleb128 0x15
	.string	"memp_memory"
	.byte	0x1
	.byte	0xaa
	.uaword	0x7bd
	.byte	0x5
	.byte	0x3
	.uaword	memp_memory
	.uleb128 0x18
	.string	"lwip_stats"
	.byte	0x6
	.byte	0x95
	.uaword	0x4f5
	.byte	0x1
	.byte	0x1
	.uleb128 0x19
	.byte	0x1
	.string	"Ifx_Lwip_printf"
	.byte	0x3
	.byte	0x2c
	.byte	0x1
	.uaword	0x2c6
	.byte	0x1
	.uleb128 0x1a
	.uaword	0x28b
	.uleb128 0x1b
	.byte	0
	.byte	0
.section .debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0x8
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1b
	.uleb128 0x8
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x4
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL4-.Ltext0
	.uaword	.LVL7-.Ltext0
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL7-.Ltext0
	.uaword	.LVL8-.Ltext0
	.uahalf	0x1
	.byte	0x63
	.uaword	.LVL8-.Ltext0
	.uaword	.LVL10-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL10-.Ltext0
	.uaword	.LVL11-.Ltext0
	.uahalf	0x1
	.byte	0x63
	.uaword	.LVL11-.Ltext0
	.uaword	.LFE0-.Ltext0
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0-.Ltext0
	.uaword	.LVL1-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL1-.Ltext0
	.uaword	.LVL2-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL2-.Ltext0
	.uaword	.LVL3-.Ltext0
	.uahalf	0x3
	.byte	0x72
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL4-.Ltext0
	.uaword	.LVL5-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL5-.Ltext0
	.uaword	.LVL11-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL11-.Ltext0
	.uaword	.LVL12-.Ltext0
	.uahalf	0x3
	.byte	0x75
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL12-.Ltext0
	.uaword	.LFE0-.Ltext0
	.uahalf	0x3
	.byte	0x75
	.sleb128 0
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL6-.Ltext0
	.uaword	.LVL7-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL8-.Ltext0
	.uaword	.LVL9-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL9-.Ltext0
	.uaword	.LVL10-.Ltext0
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL13-.Ltext0
	.uaword	.LVL15-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL15-.Ltext0
	.uaword	.LVL16-.Ltext0
	.uahalf	0x3
	.byte	0x74
	.sleb128 -12
	.byte	0x9f
	.uaword	.LVL16-.Ltext0
	.uaword	.LVL20-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL20-.Ltext0
	.uaword	.LVL21-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL21-.Ltext0
	.uaword	.LVL23-.Ltext0
	.uahalf	0x3
	.byte	0x74
	.sleb128 -12
	.byte	0x9f
	.uaword	.LVL23-.Ltext0
	.uaword	.LVL24-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL24-1-.Ltext0
	.uaword	.LFE1-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL14-.Ltext0
	.uaword	.LVL16-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL17-.Ltext0
	.uaword	.LVL18-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL18-.Ltext0
	.uaword	.LVL19-1-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL19-1-.Ltext0
	.uaword	.LVL20-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL20-.Ltext0
	.uaword	.LVL22-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL22-.Ltext0
	.uaword	.LVL23-.Ltext0
	.uahalf	0xa
	.byte	0x74
	.sleb128 -12
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.uaword	memp_tab
	.byte	0x22
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL25-.Ltext0
	.uaword	.LVL26-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL26-.Ltext0
	.uaword	.LVL27-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL27-.Ltext0
	.uaword	.LVL28-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL28-.Ltext0
	.uaword	.LVL29-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL29-1-.Ltext0
	.uaword	.LFE2-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL25-.Ltext0
	.uaword	.LVL26-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL26-.Ltext0
	.uaword	.LVL27-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL27-.Ltext0
	.uaword	.LVL28-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL28-.Ltext0
	.uaword	.LVL29-1-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL29-1-.Ltext0
	.uaword	.LFE2-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL26-.Ltext0
	.uaword	.LVL27-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x1c
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.Ltext0
	.uaword	.Letext0-.Ltext0
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
	.extern	Ifx_Lwip_printf,STT_FUNC,0
	.extern	lwip_stats,STT_OBJECT,344
	.ident	"GCC: (HighTec Release HDP-v4.9.1.0-infineon-2.0-df254e8) 4.9.4 build on 2018-04-18"
