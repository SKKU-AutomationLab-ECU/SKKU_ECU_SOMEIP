	.file	"Device_IF.c"
.section .text,"ax",@progbits
.Ltext0:
.section .rodata,"a",@progbits
.LC0:
	.string	"Set Device Interface\t\t-> Start...\r\n"
.LC1:
	.string	"Set Device Interface\t\t-> Done.\r\n\n"
.section .text,"ax",@progbits
	.align 1
	.global	Device_IF_Setup
	.type	Device_IF_Setup, @function
Device_IF_Setup:
.LFB400:
	.file 1 "0_Src/0_AppSw/Tricore/Device_Driver/Device_Interface/Device_IF.c"
	.loc 1 15 0
	.loc 1 21 0
	movh.a	%a4, hi:.LC0
	lea	%a4, [%a4] lo:.LC0
	call	printf_SysLog
.LVL0:
	.loc 1 24 0
	call	IO_set_LED
.LVL1:
	mov	%d4, 100
	call	delay_ms
.LVL2:
	.loc 1 25 0
	call	IO_set_PBSW
.LVL3:
	mov	%d4, 100
	call	delay_ms
.LVL4:
	.loc 1 29 0
	call	IO_set_CAN
.LVL5:
	mov	%d4, 100
	call	delay_ms
.LVL6:
	.loc 1 30 0
	call	IO_set_ETH
.LVL7:
	mov	%d4, 100
	call	delay_ms
.LVL8:
	.loc 1 33 0
	movh.a	%a4, hi:.LC1
	lea	%a4, [%a4] lo:.LC1
	j	printf_SysLog
.LVL9:
.LFE400:
	.size	Device_IF_Setup, .-Device_IF_Setup
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
	.uaword	.LFB400
	.uaword	.LFE400-.LFB400
	.align 2
.LEFDE0:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "0_Src/0_AppSw/Tricore/Device_Driver/Device_Interface/Device_IF_LED.h"
	.file 3 "0_Src/0_AppSw/Tricore/Device_Driver/Device_Interface/Device_IF_PBSW.h"
	.file 4 "0_Src/0_AppSw/Tricore/Device_Driver/Device_Interface/Device_IF_CAN.h"
	.file 5 "./0_Src/0_AppSw/Tricore/System/Systems/SysCFG_Log.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x3d5
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9."
	.string	"4 build on 2018-04-18 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -msmall-const=8 -mtc161 -g -g -O2 -fno-common -fno-short-enums -fsingle-precision-constant -fstrict-volatile-bitfields"
	.byte	0x1
	.string	"0_Src/0_AppSw/Tricore/Device_Driver/Device_Interface/Device_IF.c"
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
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x3
	.byte	0x4
	.uaword	0x24f
	.uleb128 0x4
	.byte	0x1
	.string	"Device_IF_Setup"
	.byte	0x1
	.byte	0xe
	.byte	0x1
	.uaword	.LFB400
	.uaword	.LFE400
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x363
	.uleb128 0x5
	.byte	0x1
	.uaword	.LASF0
	.byte	0x1
	.byte	0x18
	.uaword	0x1c7
	.byte	0x1
	.uaword	0x2b0
	.uleb128 0x6
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.uaword	.LASF1
	.byte	0x1
	.byte	0x1e
	.uaword	0x1c7
	.byte	0x1
	.uaword	0x2c3
	.uleb128 0x6
	.byte	0
	.uleb128 0x7
	.uaword	.LVL0
	.uaword	0x363
	.uaword	0x2da
	.uleb128 0x8
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	.LC0
	.byte	0
	.uleb128 0x9
	.uaword	.LVL1
	.uaword	0x382
	.uleb128 0x7
	.uaword	.LVL2
	.uaword	0x393
	.uaword	0x2f7
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x64
	.byte	0
	.uleb128 0x9
	.uaword	.LVL3
	.uaword	0x3a6
	.uleb128 0x7
	.uaword	.LVL4
	.uaword	0x393
	.uaword	0x314
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x64
	.byte	0
	.uleb128 0x9
	.uaword	.LVL5
	.uaword	0x3b8
	.uleb128 0x7
	.uaword	.LVL6
	.uaword	0x393
	.uaword	0x331
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x64
	.byte	0
	.uleb128 0x9
	.uaword	.LVL7
	.uaword	0x3c9
	.uleb128 0x7
	.uaword	.LVL8
	.uaword	0x393
	.uaword	0x34e
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x64
	.byte	0
	.uleb128 0xa
	.uaword	.LVL9
	.byte	0x1
	.uaword	0x363
	.uleb128 0x8
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	.LC1
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.string	"printf_SysLog"
	.byte	0x5
	.byte	0x13
	.byte	0x1
	.byte	0x1
	.uaword	0x382
	.uleb128 0xc
	.uaword	0x273
	.uleb128 0x6
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.string	"IO_set_LED"
	.byte	0x2
	.byte	0x10
	.byte	0x1
	.byte	0x1
	.uleb128 0x5
	.byte	0x1
	.uaword	.LASF0
	.byte	0x1
	.byte	0x18
	.uaword	0x1c7
	.byte	0x1
	.uaword	0x3a6
	.uleb128 0x6
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.string	"IO_set_PBSW"
	.byte	0x3
	.byte	0xd
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.byte	0x1
	.string	"IO_set_CAN"
	.byte	0x4
	.byte	0x3e
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.byte	0x1
	.uaword	.LASF1
	.byte	0x1
	.byte	0x1e
	.uaword	0x1c7
	.byte	0x1
	.uleb128 0x6
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
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
	.uleb128 0x5
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.byte	0
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
.LASF0:
	.string	"delay_ms"
.LASF1:
	.string	"IO_set_ETH"
	.extern	IO_set_ETH,STT_FUNC,0
	.extern	IO_set_CAN,STT_FUNC,0
	.extern	IO_set_PBSW,STT_FUNC,0
	.extern	delay_ms,STT_FUNC,0
	.extern	IO_set_LED,STT_FUNC,0
	.extern	printf_SysLog,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.1.0-infineon-2.0-df254e8) 4.9.4 build on 2018-04-18"
