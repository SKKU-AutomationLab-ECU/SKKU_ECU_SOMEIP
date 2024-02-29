	.file	"stats.c"
.section .text,"ax",@progbits
.Ltext0:
.section .srodata,"as",@progbits
.LC12:
	.string	"MEM"
.LC0:
	.string	"RAW_PCB"
.LC1:
	.string	"UDP_PCB"
.LC2:
	.string	"TCP_PCB"
.section .rodata,"a",@progbits
.LC3:
	.string	"TCP_PCB_LISTEN"
.section .srodata,"as",@progbits
.LC4:
	.string	"TCP_SEG"
.section .rodata,"a",@progbits
.LC5:
	.string	"REASSDATA"
.LC6:
	.string	"FRAG_PBUF"
.LC7:
	.string	"SYS_TIMEOUT"
.LC8:
	.string	"PBUF_REF/ROM"
.LC9:
	.string	"PBUF_POOL"
	.align 2
.LC11:
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.word	.LC4
	.word	.LC5
	.word	.LC6
	.word	.LC7
	.word	.LC8
	.word	.LC9
.section .text,"ax",@progbits
	.align 1
	.global	stats_init
	.type	stats_init, @function
stats_init:
.LFB0:
	.file 1 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/stats.c"
	.loc 1 52 0
	.loc 1 55 0
	movh	%d2, hi:.LC11
	mov.a	%a3, %d2
	.loc 1 52 0
	sub.a	%SP, 40
.LCFI0:
	.loc 1 55 0
	mov.aa	%a15, %SP
	lea	%a2, [%a3] lo:.LC11
		# #chunks=5, chunksize=8, remains=0
	lea	%a5, 5-1
	0:
	ld.d	%e2, [%a2+]8
	st.d	[%a15+]8, %e2
	loop	%a5, 0b
.LVL0:
	movh	%d2, hi:lwip_stats
	addi	%d2, %d2, lo:lwip_stats
	.loc 1 61 0
	mov.a	%a4, %d2
	.loc 1 60 0
	mov	%d15, 0
	.loc 1 61 0
	mov.a	%a15, 9
.LVL1:
.L2:
	.loc 1 61 0 is_stmt 0 discriminator 3
	madd	%d3, %d2, %d15, 16
	lea	%a5, [%SP] 40
	addsc.a	%a2, %a5, %d15, 2
	mov.a	%a3, %d3
	ld.w	%d3, [%a2] -40
	st.w	[%a3] 184, %d3
	.loc 1 60 0 is_stmt 1 discriminator 3
	add	%d15, 1
.LVL2:
	loop	%a15, .L2
	.loc 1 65 0
	lea	%a15, [%A0] SM:.LC12
	st.a	[%a4] 168, %a15
	ret
.LFE0:
	.size	stats_init, .-stats_init
	.global	lwip_stats
.section .bss,"aw",@nobits
	.align 2
	.type	lwip_stats, @object
	.size	lwip_stats, 344
lwip_stats:
	.zero	344
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
	.byte	0x4
	.uaword	.LCFI0-.LFB0
	.byte	0xe
	.uleb128 0x28
	.align 2
.LEFDE0:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "./0_Src/4_McHal/Tricore/Cpu/Std/Platform_Types.h"
	.file 3 "./0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/port/include/arch/cc.h"
	.file 4 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/mem.h"
	.file 5 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/stats.h"
	.file 6 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/memp.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x57b
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9."
	.string	"4 build on 2018-04-18 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -msmall-const=8 -mtc161 -g -g -O2 -fno-common -fno-short-enums -fsingle-precision-constant -fstrict-volatile-bitfields"
	.byte	0x1
	.string	"0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/stats.c"
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
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x3
	.string	"uint16"
	.byte	0x2
	.byte	0x5b
	.uaword	0x202
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
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
	.uaword	0x25c
	.uleb128 0x5
	.uaword	0x261
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x3
	.string	"u16_t"
	.byte	0x3
	.byte	0x8
	.uaword	0x1f4
	.uleb128 0x3
	.string	"mem_size_t"
	.byte	0x4
	.byte	0x4c
	.uaword	0x269
	.uleb128 0x6
	.byte	0x4
	.byte	0x6
	.byte	0x2b
	.uaword	0x340
	.uleb128 0x7
	.string	"MEMP_RAW_PCB"
	.sleb128 0
	.uleb128 0x7
	.string	"MEMP_UDP_PCB"
	.sleb128 1
	.uleb128 0x7
	.string	"MEMP_TCP_PCB"
	.sleb128 2
	.uleb128 0x7
	.string	"MEMP_TCP_PCB_LISTEN"
	.sleb128 3
	.uleb128 0x7
	.string	"MEMP_TCP_SEG"
	.sleb128 4
	.uleb128 0x7
	.string	"MEMP_REASSDATA"
	.sleb128 5
	.uleb128 0x7
	.string	"MEMP_FRAG_PBUF"
	.sleb128 6
	.uleb128 0x7
	.string	"MEMP_SYS_TIMEOUT"
	.sleb128 7
	.uleb128 0x7
	.string	"MEMP_PBUF"
	.sleb128 8
	.uleb128 0x7
	.string	"MEMP_PBUF_POOL"
	.sleb128 9
	.uleb128 0x7
	.string	"MEMP_MAX"
	.sleb128 10
	.byte	0
	.uleb128 0x8
	.string	"stats_proto"
	.byte	0x18
	.byte	0x5
	.byte	0x3a
	.uaword	0x3fe
	.uleb128 0x9
	.string	"xmit"
	.byte	0x5
	.byte	0x3b
	.uaword	0x269
	.byte	0
	.uleb128 0x9
	.string	"recv"
	.byte	0x5
	.byte	0x3c
	.uaword	0x269
	.byte	0x2
	.uleb128 0x9
	.string	"fw"
	.byte	0x5
	.byte	0x3d
	.uaword	0x269
	.byte	0x4
	.uleb128 0x9
	.string	"drop"
	.byte	0x5
	.byte	0x3e
	.uaword	0x269
	.byte	0x6
	.uleb128 0x9
	.string	"chkerr"
	.byte	0x5
	.byte	0x3f
	.uaword	0x269
	.byte	0x8
	.uleb128 0x9
	.string	"lenerr"
	.byte	0x5
	.byte	0x40
	.uaword	0x269
	.byte	0xa
	.uleb128 0x9
	.string	"memerr"
	.byte	0x5
	.byte	0x41
	.uaword	0x269
	.byte	0xc
	.uleb128 0x9
	.string	"rterr"
	.byte	0x5
	.byte	0x42
	.uaword	0x269
	.byte	0xe
	.uleb128 0x9
	.string	"proterr"
	.byte	0x5
	.byte	0x43
	.uaword	0x269
	.byte	0x10
	.uleb128 0x9
	.string	"opterr"
	.byte	0x5
	.byte	0x44
	.uaword	0x269
	.byte	0x12
	.uleb128 0x9
	.string	"err"
	.byte	0x5
	.byte	0x45
	.uaword	0x269
	.byte	0x14
	.uleb128 0x9
	.string	"cachehit"
	.byte	0x5
	.byte	0x46
	.uaword	0x269
	.byte	0x16
	.byte	0
	.uleb128 0x8
	.string	"stats_mem"
	.byte	0x10
	.byte	0x5
	.byte	0x5a
	.uaword	0x461
	.uleb128 0x9
	.string	"name"
	.byte	0x5
	.byte	0x5c
	.uaword	0x256
	.byte	0
	.uleb128 0x9
	.string	"avail"
	.byte	0x5
	.byte	0x5e
	.uaword	0x276
	.byte	0x4
	.uleb128 0x9
	.string	"used"
	.byte	0x5
	.byte	0x5f
	.uaword	0x276
	.byte	0x6
	.uleb128 0x9
	.string	"max"
	.byte	0x5
	.byte	0x60
	.uaword	0x276
	.byte	0x8
	.uleb128 0x9
	.string	"err"
	.byte	0x5
	.byte	0x61
	.uaword	0x269
	.byte	0xa
	.uleb128 0x9
	.string	"illegal"
	.byte	0x5
	.byte	0x62
	.uaword	0x269
	.byte	0xc
	.byte	0
	.uleb128 0xa
	.string	"stats_"
	.uahalf	0x158
	.byte	0x5
	.byte	0x71
	.uaword	0x4e7
	.uleb128 0x9
	.string	"link"
	.byte	0x5
	.byte	0x73
	.uaword	0x340
	.byte	0
	.uleb128 0x9
	.string	"etharp"
	.byte	0x5
	.byte	0x76
	.uaword	0x340
	.byte	0x18
	.uleb128 0x9
	.string	"ip_frag"
	.byte	0x5
	.byte	0x79
	.uaword	0x340
	.byte	0x30
	.uleb128 0x9
	.string	"ip"
	.byte	0x5
	.byte	0x7c
	.uaword	0x340
	.byte	0x48
	.uleb128 0x9
	.string	"icmp"
	.byte	0x5
	.byte	0x7f
	.uaword	0x340
	.byte	0x60
	.uleb128 0x9
	.string	"udp"
	.byte	0x5
	.byte	0x85
	.uaword	0x340
	.byte	0x78
	.uleb128 0x9
	.string	"tcp"
	.byte	0x5
	.byte	0x88
	.uaword	0x340
	.byte	0x90
	.uleb128 0x9
	.string	"mem"
	.byte	0x5
	.byte	0x8b
	.uaword	0x3fe
	.byte	0xa8
	.uleb128 0x9
	.string	"memp"
	.byte	0x5
	.byte	0x8e
	.uaword	0x4e7
	.byte	0xb8
	.byte	0
	.uleb128 0xb
	.uaword	0x3fe
	.uaword	0x4f7
	.uleb128 0xc
	.uaword	0x4f7
	.byte	0x9
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0xd
	.byte	0x1
	.string	"stats_init"
	.byte	0x1
	.byte	0x33
	.byte	0x1
	.uaword	.LFB0
	.uaword	.LFE0
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x555
	.uleb128 0xe
	.string	"memp_names"
	.byte	0x1
	.byte	0x37
	.uaword	0x555
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xf
	.string	"i"
	.byte	0x1
	.byte	0x3b
	.uaword	0x1c0
	.uaword	.LLST0
	.byte	0
	.uleb128 0xb
	.uaword	0x256
	.uaword	0x565
	.uleb128 0xc
	.uaword	0x4f7
	.byte	0x9
	.byte	0
	.uleb128 0x10
	.string	"lwip_stats"
	.byte	0x1
	.byte	0x31
	.uaword	0x461
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	lwip_stats
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
	.uleb128 0x7
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0-.Ltext0
	.uaword	.LVL1-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL1-.Ltext0
	.uaword	.LFE0-.Ltext0
	.uahalf	0x1
	.byte	0x5f
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
	.ident	"GCC: (HighTec Release HDP-v4.9.1.0-infineon-2.0-df254e8) 4.9.4 build on 2018-04-18"
