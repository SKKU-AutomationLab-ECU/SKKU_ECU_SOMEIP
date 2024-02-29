	.file	"def.c"
.section .text,"ax",@progbits
.Ltext0:
	.align 1
	.global	lwip_htons
	.type	lwip_htons, @function
lwip_htons:
.LFB0:
	.file 1 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/def.c"
	.loc 1 65 0
.LVL0:
	.loc 1 66 0
	sh	%d2, %d4, 8
	sh	%d4, -8
.LVL1:
	or	%d2, %d4
	.loc 1 67 0
	extr.u	%d2, %d2, 0, 16
	ret
.LFE0:
	.size	lwip_htons, .-lwip_htons
	.align 1
	.global	lwip_ntohs
	.type	lwip_ntohs, @function
lwip_ntohs:
.LFB1:
	.loc 1 77 0
.LVL2:
.LBB6:
.LBB7:
	.loc 1 66 0
	sh	%d2, %d4, 8
	sh	%d4, -8
.LVL3:
	or	%d2, %d4
.LBE7:
.LBE6:
	.loc 1 79 0
	extr.u	%d2, %d2, 0, 16
	ret
.LFE1:
	.size	lwip_ntohs, .-lwip_ntohs
	.align 1
	.global	lwip_htonl
	.type	lwip_htonl, @function
lwip_htonl:
.LFB2:
	.loc 1 89 0
.LVL4:
	.loc 1 93 0
	sh	%d2, %d4, -24
	.loc 1 90 0
	sh	%d15, %d4, 24
	or	%d3, %d2, %d15
	.loc 1 91 0
	mov.u	%d2, 65280
	and	%d2, %d4
	sh	%d15, %d2, 8
	or	%d2, %d3, %d15
	.loc 1 92 0
	movh	%d15, 255
	and	%d4, %d15
.LVL5:
	sh	%d4, -8
	.loc 1 94 0
	or	%d2, %d4
	ret
.LFE2:
	.size	lwip_htonl, .-lwip_htonl
	.align 1
	.global	lwip_ntohl
	.type	lwip_ntohl, @function
lwip_ntohl:
.LFB3:
	.loc 1 104 0
.LVL6:
.LBB8:
.LBB9:
	.loc 1 93 0
	sh	%d2, %d4, -24
	.loc 1 90 0
	sh	%d15, %d4, 24
	or	%d3, %d2, %d15
	.loc 1 91 0
	mov.u	%d2, 65280
	and	%d2, %d4
	sh	%d15, %d2, 8
	or	%d2, %d3, %d15
	.loc 1 92 0
	movh	%d15, 255
	and	%d4, %d15
.LVL7:
	sh	%d4, -8
.LBE9:
.LBE8:
	.loc 1 106 0
	or	%d2, %d4
	ret
.LFE3:
	.size	lwip_ntohl, .-lwip_ntohl
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
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB2
	.uaword	.LFE2-.LFB2
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB3
	.uaword	.LFE3-.LFB3
	.align 2
.LEFDE6:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "./0_Src/4_McHal/Tricore/Cpu/Std/Platform_Types.h"
	.file 3 "./0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/port/include/arch/cc.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x393
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9."
	.string	"4 build on 2018-04-18 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -msmall-const=8 -mtc161 -g -g -O2 -fno-common -fno-short-enums -fsingle-precision-constant -fstrict-volatile-bitfields"
	.byte	0x1
	.string	"0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/def.c"
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
	.uaword	0x200
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"uint32"
	.byte	0x2
	.byte	0x5d
	.uaword	0x1a9
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
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x3
	.string	"u16_t"
	.byte	0x3
	.byte	0x8
	.uaword	0x1f2
	.uleb128 0x3
	.string	"u32_t"
	.byte	0x3
	.byte	0x9
	.uaword	0x216
	.uleb128 0x4
	.byte	0x1
	.string	"lwip_htons"
	.byte	0x1
	.byte	0x40
	.byte	0x1
	.uaword	0x26a
	.byte	0x1
	.uaword	0x2a7
	.uleb128 0x5
	.string	"n"
	.byte	0x1
	.byte	0x40
	.uaword	0x26a
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.string	"lwip_htonl"
	.byte	0x1
	.byte	0x58
	.byte	0x1
	.uaword	0x277
	.byte	0x1
	.uaword	0x2ca
	.uleb128 0x5
	.string	"n"
	.byte	0x1
	.byte	0x58
	.uaword	0x277
	.byte	0
	.uleb128 0x6
	.uaword	0x284
	.uaword	.LFB0
	.uaword	.LFE0
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2e8
	.uleb128 0x7
	.uaword	0x29d
	.uaword	.LLST0
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.string	"lwip_ntohs"
	.byte	0x1
	.byte	0x4c
	.byte	0x1
	.uaword	0x26a
	.uaword	.LFB1
	.uaword	.LFE1
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x332
	.uleb128 0x9
	.string	"n"
	.byte	0x1
	.byte	0x4c
	.uaword	0x26a
	.uaword	.LLST1
	.uleb128 0xa
	.uaword	0x284
	.uaword	.LBB6
	.uaword	.LBE6
	.byte	0x1
	.byte	0x4e
	.uleb128 0x7
	.uaword	0x29d
	.uaword	.LLST2
	.byte	0
	.byte	0
	.uleb128 0x6
	.uaword	0x2a7
	.uaword	.LFB2
	.uaword	.LFE2
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x350
	.uleb128 0x7
	.uaword	0x2c0
	.uaword	.LLST3
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.string	"lwip_ntohl"
	.byte	0x1
	.byte	0x67
	.byte	0x1
	.uaword	0x277
	.uaword	.LFB3
	.uaword	.LFE3
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x9
	.string	"n"
	.byte	0x1
	.byte	0x67
	.uaword	0x277
	.uaword	.LLST4
	.uleb128 0xa
	.uaword	0x2a7
	.uaword	.LBB8
	.uaword	.LBE8
	.byte	0x1
	.byte	0x69
	.uleb128 0x7
	.uaword	0x2c0
	.uaword	.LLST4
	.byte	0
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x5
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
	.uleb128 0x6
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
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
	.uleb128 0x7
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x5
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
	.uleb128 0xa
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0-.Ltext0
	.uaword	.LVL1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL1-.Ltext0
	.uaword	.LFE0-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL2-.Ltext0
	.uaword	.LVL3-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL3-.Ltext0
	.uaword	.LFE1-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL2-.Ltext0
	.uaword	.LVL3-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL4-.Ltext0
	.uaword	.LVL5-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL5-.Ltext0
	.uaword	.LFE2-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL6-.Ltext0
	.uaword	.LVL7-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL7-.Ltext0
	.uaword	.LFE3-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
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
