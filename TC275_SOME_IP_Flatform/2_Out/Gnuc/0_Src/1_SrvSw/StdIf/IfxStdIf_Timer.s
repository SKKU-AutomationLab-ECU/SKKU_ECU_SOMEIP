	.file	"IfxStdIf_Timer.c"
.section .text,"ax",@progbits
.Ltext0:
	.align 1
	.global	IfxStdIf_Timer_initConfig
	.type	IfxStdIf_Timer_initConfig, @function
IfxStdIf_Timer_initConfig:
.LFB194:
	.file 1 "0_Src/1_SrvSw/StdIf/IfxStdIf_Timer.c"
	.loc 1 29 0
.LVL0:
	.loc 1 30 0
	movh	%d15, 17530
	.loc 1 31 0
	mov	%d2, 0
	.loc 1 33 0
	mov	%d3, 0
	.loc 1 30 0
	st.w	[%a4]0, %d15
	.loc 1 34 0
	mov	%d4, 128
	.loc 1 32 0
	mov	%d15, 0
	.loc 1 31 0
	st.h	[%a4] 4, %d2
	.loc 1 33 0
	st.w	[%a4] 12, %d3
	.loc 1 32 0
	st.w	[%a4] 8, %d15
	.loc 1 34 0
	st.w	[%a4] 32, %d4
	.loc 1 35 0
	st.w	[%a4] 36, %d15
	.loc 1 36 0
	st.b	[%a4] 40, %d2
	.loc 1 37 0
	st.b	[%a4] 41, %d2
	.loc 1 38 0
	st.b	[%a4] 16, %d2
	.loc 1 39 0
	st.w	[%a4] 20, %d15
	.loc 1 40 0
	st.h	[%a4] 24, %d15
	.loc 1 41 0
	st.w	[%a4] 28, %d15
	.loc 1 42 0
	st.w	[%a4] 44, %d15
	.loc 1 43 0
	st.w	[%a4] 48, %d3
	ret
.LFE194:
	.size	IfxStdIf_Timer_initConfig, .-IfxStdIf_Timer_initConfig
	.align 1
	.global	IfxStdIf_Timer_initConfig1
	.type	IfxStdIf_Timer_initConfig1, @function
IfxStdIf_Timer_initConfig1:
.LFB195:
	.loc 1 47 0
.LVL1:
	.loc 1 48 0
	movh	%d15, 17530
	.loc 1 51 0
	mov	%d3, 0
	.loc 1 49 0
	mov	%d2, 0
	.loc 1 48 0
	st.w	[%a4]0, %d15
	.loc 1 50 0
	mov	%d15, 0
	.loc 1 51 0
	st.w	[%a4] 12, %d3
	.loc 1 52 0
	mov	%d3, 128
	.loc 1 50 0
	st.w	[%a4] 8, %d15
	.loc 1 53 0
	st.w	[%a4] 36, %d15
	.loc 1 57 0
	st.w	[%a4] 20, %d15
	.loc 1 58 0
	st.h	[%a4] 24, %d15
	.loc 1 59 0
	st.w	[%a4] 28, %d15
	.loc 1 60 0
	st.w	[%a4] 44, %d15
	.loc 1 61 0
	movh	%d15, 16000
	.loc 1 49 0
	st.h	[%a4] 4, %d2
	.loc 1 52 0
	st.w	[%a4] 32, %d3
	.loc 1 54 0
	st.b	[%a4] 40, %d2
	.loc 1 55 0
	st.b	[%a4] 41, %d2
	.loc 1 56 0
	st.b	[%a4] 16, %d2
	.loc 1 61 0
	st.w	[%a4] 48, %d15
	ret
.LFE195:
	.size	IfxStdIf_Timer_initConfig1, .-IfxStdIf_Timer_initConfig1
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
	.uaword	.LFB194
	.uaword	.LFE194-.LFB194
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB195
	.uaword	.LFE195-.LFB195
	.align 2
.LEFDE2:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "./0_Src/4_McHal/Tricore/Cpu/Std/Platform_Types.h"
	.file 3 "./0_Src/4_McHal/Tricore/Cpu/Std/Ifx_Types.h"
	.file 4 "./0_Src/4_McHal/Tricore/_Impl/IfxSrc_cfg.h"
	.file 5 "./0_Src/4_McHal/Tricore/Port/Std/IfxPort.h"
	.file 6 "0_Src/1_SrvSw/StdIf/IfxStdIf_Timer.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x7a2
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9."
	.string	"4 build on 2018-04-18 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -msmall-const=8 -mtc161 -g -g -O2 -fno-common -fno-short-enums -fsingle-precision-constant -fstrict-volatile-bitfields"
	.byte	0x1
	.string	"0_Src/1_SrvSw/StdIf/IfxStdIf_Timer.c"
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
	.uaword	0x1ed
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"uint32"
	.byte	0x2
	.byte	0x5d
	.uaword	0x196
	.uleb128 0x3
	.string	"float32"
	.byte	0x2
	.byte	0x5e
	.uaword	0x220
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.string	"float"
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.string	"double"
	.uleb128 0x3
	.string	"boolean"
	.byte	0x2
	.byte	0x68
	.uaword	0x1c1
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
	.string	"Ifx_Priority"
	.byte	0x3
	.byte	0x43
	.uaword	0x1df
	.uleb128 0x3
	.string	"Ifx_TimerValue"
	.byte	0x3
	.byte	0x44
	.uaword	0x203
	.uleb128 0x4
	.byte	0x4
	.byte	0x4
	.byte	0x32
	.uaword	0x2ef
	.uleb128 0x5
	.string	"IfxSrc_Tos_cpu0"
	.sleb128 0
	.uleb128 0x5
	.string	"IfxSrc_Tos_cpu1"
	.sleb128 1
	.uleb128 0x5
	.string	"IfxSrc_Tos_cpu2"
	.sleb128 2
	.uleb128 0x5
	.string	"IfxSrc_Tos_dma"
	.sleb128 3
	.byte	0
	.uleb128 0x3
	.string	"IfxSrc_Tos"
	.byte	0x4
	.byte	0x37
	.uaword	0x29f
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.byte	0x73
	.uaword	0x365
	.uleb128 0x5
	.string	"IfxPort_OutputMode_pushPull"
	.sleb128 128
	.uleb128 0x5
	.string	"IfxPort_OutputMode_openDrain"
	.sleb128 192
	.byte	0
	.uleb128 0x3
	.string	"IfxPort_OutputMode"
	.byte	0x5
	.byte	0x76
	.uaword	0x31d
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.byte	0x7d
	.uaword	0x520
	.uleb128 0x5
	.string	"IfxPort_PadDriver_cmosAutomotiveSpeed1"
	.sleb128 0
	.uleb128 0x5
	.string	"IfxPort_PadDriver_cmosAutomotiveSpeed2"
	.sleb128 1
	.uleb128 0x5
	.string	"IfxPort_PadDriver_cmosAutomotiveSpeed3"
	.sleb128 2
	.uleb128 0x5
	.string	"IfxPort_PadDriver_cmosAutomotiveSpeed4"
	.sleb128 3
	.uleb128 0x5
	.string	"IfxPort_PadDriver_lvdsSpeed1"
	.sleb128 4
	.uleb128 0x5
	.string	"IfxPort_PadDriver_lvdsSpeed2"
	.sleb128 5
	.uleb128 0x5
	.string	"IfxPort_PadDriver_lvdsSpeed3"
	.sleb128 6
	.uleb128 0x5
	.string	"IfxPort_PadDriver_lvdsSpeed4"
	.sleb128 7
	.uleb128 0x5
	.string	"IfxPort_PadDriver_ttlSpeed1"
	.sleb128 8
	.uleb128 0x5
	.string	"IfxPort_PadDriver_ttlSpeed2"
	.sleb128 9
	.uleb128 0x5
	.string	"IfxPort_PadDriver_ttlSpeed3"
	.sleb128 10
	.uleb128 0x5
	.string	"IfxPort_PadDriver_ttlSpeed4"
	.sleb128 11
	.byte	0
	.uleb128 0x3
	.string	"IfxPort_PadDriver"
	.byte	0x5
	.byte	0x8a
	.uaword	0x37f
	.uleb128 0x4
	.byte	0x4
	.byte	0x6
	.byte	0x45
	.uaword	0x5a2
	.uleb128 0x5
	.string	"IfxStdIf_Timer_CountDir_up"
	.sleb128 0
	.uleb128 0x5
	.string	"IfxStdIf_Timer_CountDir_upAndDown"
	.sleb128 1
	.uleb128 0x5
	.string	"IfxStdIf_Timer_CountDir_down"
	.sleb128 2
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_Timer_CountDir"
	.byte	0x6
	.byte	0x49
	.uaword	0x539
	.uleb128 0x6
	.byte	0x1c
	.byte	0x6
	.byte	0xf2
	.uaword	0x660
	.uleb128 0x7
	.string	"enabled"
	.byte	0x6
	.byte	0xf4
	.uaword	0x233
	.byte	0
	.uleb128 0x7
	.string	"triggerPoint"
	.byte	0x6
	.byte	0xf5
	.uaword	0x289
	.byte	0x4
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x6
	.byte	0xf6
	.uaword	0x275
	.byte	0x8
	.uleb128 0x8
	.uaword	.LASF1
	.byte	0x6
	.byte	0xf7
	.uaword	0x2ef
	.byte	0xc
	.uleb128 0x7
	.string	"outputMode"
	.byte	0x6
	.byte	0xf8
	.uaword	0x365
	.byte	0x10
	.uleb128 0x7
	.string	"outputDriver"
	.byte	0x6
	.byte	0xf9
	.uaword	0x520
	.byte	0x14
	.uleb128 0x7
	.string	"risingEdgeAtPeriod"
	.byte	0x6
	.byte	0xfa
	.uaword	0x233
	.byte	0x18
	.uleb128 0x7
	.string	"outputEnabled"
	.byte	0x6
	.byte	0xfb
	.uaword	0x233
	.byte	0x19
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_Timer_TrigConfig"
	.byte	0x6
	.byte	0xfc
	.uaword	0x5c1
	.uleb128 0x6
	.byte	0x34
	.byte	0x6
	.byte	0xff
	.uaword	0x706
	.uleb128 0x9
	.string	"frequency"
	.byte	0x6
	.uahalf	0x101
	.uaword	0x211
	.byte	0
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x6
	.uahalf	0x102
	.uaword	0x275
	.byte	0x4
	.uleb128 0xa
	.uaword	.LASF1
	.byte	0x6
	.uahalf	0x103
	.uaword	0x2ef
	.byte	0x8
	.uleb128 0x9
	.string	"minResolution"
	.byte	0x6
	.uahalf	0x104
	.uaword	0x211
	.byte	0xc
	.uleb128 0x9
	.string	"trigger"
	.byte	0x6
	.uahalf	0x105
	.uaword	0x660
	.byte	0x10
	.uleb128 0x9
	.string	"countDir"
	.byte	0x6
	.uahalf	0x106
	.uaword	0x5a2
	.byte	0x2c
	.uleb128 0x9
	.string	"startOffset"
	.byte	0x6
	.uahalf	0x107
	.uaword	0x211
	.byte	0x30
	.byte	0
	.uleb128 0xb
	.string	"IfxStdIf_Timer_Config"
	.byte	0x6
	.uahalf	0x108
	.uaword	0x681
	.uleb128 0xc
	.byte	0x1
	.string	"IfxStdIf_Timer_initConfig"
	.byte	0x1
	.byte	0x1c
	.byte	0x1
	.uaword	.LFB194
	.uaword	.LFE194
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x763
	.uleb128 0xd
	.string	"config"
	.byte	0x1
	.byte	0x1c
	.uaword	0x763
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.uaword	0x706
	.uleb128 0xf
	.byte	0x1
	.string	"IfxStdIf_Timer_initConfig1"
	.byte	0x1
	.byte	0x2e
	.byte	0x1
	.uaword	.LFB195
	.uaword	.LFE195
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0xd
	.string	"config"
	.byte	0x1
	.byte	0x2e
	.uaword	0x763
	.byte	0x1
	.byte	0x64
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
	.uleb128 0x5
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x13
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
	.uleb128 0x8
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x9
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.string	"isrPriority"
.LASF1:
	.string	"isrProvider"
	.ident	"GCC: (HighTec Release HDP-v4.9.1.0-infineon-2.0-df254e8) 4.9.4 build on 2018-04-18"
