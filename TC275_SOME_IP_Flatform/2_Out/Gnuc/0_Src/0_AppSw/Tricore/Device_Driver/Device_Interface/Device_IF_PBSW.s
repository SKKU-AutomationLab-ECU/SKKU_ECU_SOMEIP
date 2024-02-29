	.file	"Device_IF_PBSW.c"
.section .text,"ax",@progbits
.Ltext0:
.section .rodata,"a",@progbits
.LC0:
	.string	"IO_Set_Push Button SW\t\t-> "
.section .srodata,"as",@progbits
.LC1:
	.string	"Done.\r\n"
.section .text,"ax",@progbits
	.align 1
	.global	IO_set_PBSW
	.type	IO_set_PBSW, @function
IO_set_PBSW:
.LFB401:
	.file 1 "0_Src/0_AppSw/Tricore/Device_Driver/Device_Interface/Device_IF_PBSW.c"
	.loc 1 19 0
	.loc 1 25 0
	movh.a	%a4, hi:.LC0
	lea	%a4, [%a4] lo:.LC0
	call	printf_SysLog
.LVL0:
	.loc 1 29 0
	call	setPort_GPIO_PBSW
.LVL1:
	.loc 1 30 0
	call	setPort_SCUERU22
.LVL2:
	.loc 1 33 0
	lea	%a4, [%A0] SM:.LC1
	j	printf_SysLog
.LVL3:
.LFE401:
	.size	IO_set_PBSW, .-IO_set_PBSW
	.align 1
	.global	IO_get_PBSW
	.type	IO_get_PBSW, @function
IO_get_PBSW:
.LFB402:
	.loc 1 41 0
.LVL4:
	.loc 1 46 0
	and	%d3, %d5, 255
	.loc 1 41 0
	mov	%d8, %d4
	mov	%d15, %d5
	.loc 1 48 0
	mov	%d2, -2
	.loc 1 46 0
	jge.u	%d3, 2, .L17
	.loc 1 55 0
	and	%d4, %d4, 255
.LVL5:
	call	getState_PBSW
.LVL6:
	jz	%d2, .L5
	jeq	%d2, 1, .L6
	.loc 1 75 0
	mov	%d15, -1
	eq	%d2, %d2, -1
	sel	%d2, %d2, %d15, -2
	ret
.LVL7:
.L17:
	.loc 1 112 0
	ret
.LVL8:
.L6:
	.loc 1 64 0
	jz	%d15, .L7
.L8:
.LVL9:
	.loc 1 82 0
	movh.a	%a15, hi:f_PBSW
	lea	%a2, [%a15] lo:f_PBSW
	addsc.a	%a15, %a2, %d8, 0
	ld.b	%d15, [%a15]0
	lea	%a15, 60
	jz	%d15, .L10
.L9:
.LBB24:
.LBB25:
.LBB26:
.LBB27:
.LBB28:
	.file 2 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
	.loc 2 1369 0
#APP
	# 1369 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	nop
	# 0 "" 2
.LVL10:
#NO_APP
	loop	%a15, .L9
.LBE28:
.LBE27:
.LBE26:
.LBE25:
	.loc 1 85 0
	mov	%d2, 2
	ret
.LVL11:
.L5:
.LBE24:
	.loc 1 59 0
	jz	%d15, .L8
.L7:
.LVL12:
	.loc 1 99 0
	movh.a	%a15, hi:f_PBSW
	lea	%a2, [%a15] lo:f_PBSW
	addsc.a	%a15, %a2, %d8, 0
	mov	%d15, 61
	ld.b	%d2, [%a15]0
	lea	%a15, 60
	jz	%d2, .L24
.L12:
.LVL13:
.LBB29:
.LBB30:
.LBB31:
.LBB32:
.LBB33:
	.loc 2 1369 0
#APP
	# 1369 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	nop
	# 0 "" 2
.LVL14:
#NO_APP
	add	%d15, -1
.LVL15:
	loop	%a15, .L12
.LVL16:
.LBE33:
.LBE32:
.LBE31:
.LBE30:
	.loc 1 107 0
	addsc.a	%a15, %a2, %d8, 0
	.loc 1 108 0
	mov	%d2, 3
	.loc 1 107 0
	st.b	[%a15]0, %d15
	.loc 1 108 0
	ret
.LVL17:
.L10:
.LBE29:
.LBB34:
.LBB35:
.LBB36:
.LBB37:
.LBB38:
	.loc 2 1369 0
#APP
	# 1369 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	nop
	# 0 "" 2
.LVL18:
#NO_APP
	loop	%a15, .L10
.LVL19:
.LBE38:
.LBE37:
.LBE36:
.LBE35:
	.loc 1 92 0
	mov	%d15, 1
	addsc.a	%a15, %a2, %d8, 0
	.loc 1 93 0
	mov	%d2, 1
	.loc 1 92 0
	st.b	[%a15]0, %d15
	.loc 1 93 0
	ret
.LVL20:
.L24:
.LBE34:
	lea	%a15, 60
.L11:
.LBB39:
.LBB40:
.LBB41:
.LBB42:
.LBB43:
	.loc 2 1369 0
#APP
	# 1369 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	nop
	# 0 "" 2
.LVL21:
#NO_APP
	loop	%a15, .L11
	ret
.LBE43:
.LBE42:
.LBE41:
.LBE40:
.LBE39:
.LFE402:
	.size	IO_get_PBSW, .-IO_get_PBSW
	.align 1
	.global	delay_PBSW
	.type	delay_PBSW, @function
delay_PBSW:
.LFB403:
	.loc 1 117 0
.LVL22:
	.loc 1 117 0
	mov.a	%a2, %d4
	add.a	%a2, -1
	.loc 1 119 0
	jz	%d4, .L33
.LVL23:
.L32:
	.loc 1 117 0
	lea	%a15, 60
.LVL24:
.L27:
.LBB44:
.LBB45:
	.loc 2 1369 0
#APP
	# 1369 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	nop
	# 0 "" 2
#NO_APP
	loop	%a15, .L27
.LBE45:
.LBE44:
	.loc 1 119 0 discriminator 2
	loop	%a2, .L32
	ret
.LVL25:
.L33:
	ret
.LFE403:
	.size	delay_PBSW, .-delay_PBSW
	.local	f_PBSW
.section .bss,"aw",@nobits
	.align 0
	.type		 f_PBSW,@object
	.size		 f_PBSW,4
f_PBSW:
	.space	4
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
	.uaword	.LFB401
	.uaword	.LFE401-.LFB401
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB402
	.uaword	.LFE402-.LFB402
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB403
	.uaword	.LFE403-.LFB403
	.align 2
.LEFDE4:
.section .text,"ax",@progbits
.Letext0:
	.file 3 "./0_Src/0_AppSw/Tricore/System/Systems/SysCFG_Log.h"
	.file 4 "./0_Src/0_AppSw/Tricore/Device_Driver/Driver_IO/Peripherals_GPIO.h"
	.file 5 "./0_Src/4_McHal/Tricore/Cpu/Std/Platform_Types.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x5e6
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9."
	.string	"4 build on 2018-04-18 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -msmall-const=8 -mtc161 -g -g -O2 -fno-common -fno-short-enums -fsingle-precision-constant -fstrict-volatile-bitfields"
	.byte	0x1
	.string	"0_Src/0_AppSw/Tricore/Device_Driver/Device_Interface/Device_IF_PBSW.c"
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
	.uleb128 0x3
	.string	"uint8"
	.byte	0x5
	.byte	0x59
	.uaword	0x1ef
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
	.uleb128 0x4
	.byte	0x4
	.uaword	0x261
	.uleb128 0x5
	.string	"__nop"
	.byte	0x2
	.uahalf	0x557
	.byte	0x1
	.byte	0x3
	.uleb128 0x6
	.byte	0x1
	.uaword	.LASF0
	.byte	0x1
	.byte	0x74
	.byte	0x1
	.byte	0x3
	.uaword	0x2d4
	.uleb128 0x7
	.string	"tic_us"
	.byte	0x1
	.byte	0x74
	.uaword	0x269
	.uleb128 0x8
	.string	"tic_sub1"
	.byte	0x1
	.byte	0x76
	.uaword	0x269
	.uleb128 0x8
	.string	"tic_sub2"
	.byte	0x1
	.byte	0x76
	.uaword	0x269
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.string	"IO_set_PBSW"
	.byte	0x1
	.byte	0x12
	.byte	0x1
	.uaword	.LFB401
	.uaword	.LFE401
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x345
	.uleb128 0xa
	.byte	0x1
	.uaword	.LASF1
	.byte	0x1
	.byte	0x1e
	.uaword	0x1cc
	.byte	0x1
	.uaword	0x307
	.uleb128 0xb
	.byte	0
	.uleb128 0xc
	.uaword	.LVL0
	.uaword	0x581
	.uaword	0x31e
	.uleb128 0xd
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	.LC0
	.byte	0
	.uleb128 0xe
	.uaword	.LVL1
	.uaword	0x5a0
	.uleb128 0xe
	.uaword	.LVL2
	.uaword	0x5b8
	.uleb128 0xf
	.uaword	.LVL3
	.byte	0x1
	.uaword	0x581
	.uleb128 0xd
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	.LC1
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.string	"IO_get_PBSW"
	.byte	0x1
	.byte	0x28
	.byte	0x1
	.uaword	0x261
	.uaword	.LFB402
	.uaword	.LFE402
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x520
	.uleb128 0x11
	.string	"number"
	.byte	0x1
	.byte	0x28
	.uaword	0x1cc
	.uaword	.LLST0
	.uleb128 0x11
	.string	"direction"
	.byte	0x1
	.byte	0x28
	.uaword	0x261
	.uaword	.LLST1
	.uleb128 0x12
	.string	"key"
	.byte	0x1
	.byte	0x34
	.uaword	0x1ef
	.uaword	.LLST2
	.uleb128 0x13
	.uaword	.LBB24
	.uaword	.LBE24
	.uaword	0x3f8
	.uleb128 0xa
	.byte	0x1
	.uaword	.LASF0
	.byte	0x1
	.byte	0x54
	.uaword	0x1cc
	.byte	0x1
	.uaword	0x3bf
	.uleb128 0xb
	.byte	0
	.uleb128 0x14
	.uaword	0x297
	.uaword	.LBB25
	.uaword	.LBE25
	.byte	0x1
	.byte	0x54
	.uleb128 0x15
	.uaword	0x2a5
	.uleb128 0x16
	.uaword	.LBB26
	.uaword	.LBE26
	.uleb128 0x17
	.uaword	0x2b3
	.uleb128 0x17
	.uaword	0x2c3
	.uleb128 0x18
	.uaword	0x28b
	.uaword	.LBB27
	.uaword	.LBE27
	.byte	0x1
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x13
	.uaword	.LBB29
	.uaword	.LBE29
	.uaword	0x459
	.uleb128 0xa
	.byte	0x1
	.uaword	.LASF0
	.byte	0x1
	.byte	0x54
	.uaword	0x1cc
	.byte	0x1
	.uaword	0x418
	.uleb128 0xb
	.byte	0
	.uleb128 0x14
	.uaword	0x297
	.uaword	.LBB30
	.uaword	.LBE30
	.byte	0x1
	.byte	0x6a
	.uleb128 0x15
	.uaword	0x2a5
	.uleb128 0x16
	.uaword	.LBB31
	.uaword	.LBE31
	.uleb128 0x19
	.uaword	0x2b3
	.uaword	.LLST3
	.uleb128 0x19
	.uaword	0x2c3
	.uaword	.LLST4
	.uleb128 0x18
	.uaword	0x28b
	.uaword	.LBB32
	.uaword	.LBE32
	.byte	0x1
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x13
	.uaword	.LBB34
	.uaword	.LBE34
	.uaword	0x4b6
	.uleb128 0xa
	.byte	0x1
	.uaword	.LASF0
	.byte	0x1
	.byte	0x54
	.uaword	0x1cc
	.byte	0x1
	.uaword	0x479
	.uleb128 0xb
	.byte	0
	.uleb128 0x14
	.uaword	0x297
	.uaword	.LBB35
	.uaword	.LBE35
	.byte	0x1
	.byte	0x5b
	.uleb128 0x15
	.uaword	0x2a5
	.uleb128 0x16
	.uaword	.LBB36
	.uaword	.LBE36
	.uleb128 0x19
	.uaword	0x2b3
	.uaword	.LLST5
	.uleb128 0x17
	.uaword	0x2c3
	.uleb128 0x18
	.uaword	0x28b
	.uaword	.LBB37
	.uaword	.LBE37
	.byte	0x1
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x13
	.uaword	.LBB39
	.uaword	.LBE39
	.uaword	0x50f
	.uleb128 0xa
	.byte	0x1
	.uaword	.LASF0
	.byte	0x1
	.byte	0x54
	.uaword	0x1cc
	.byte	0x1
	.uaword	0x4d6
	.uleb128 0xb
	.byte	0
	.uleb128 0x14
	.uaword	0x297
	.uaword	.LBB40
	.uaword	.LBE40
	.byte	0x1
	.byte	0x65
	.uleb128 0x15
	.uaword	0x2a5
	.uleb128 0x16
	.uaword	.LBB41
	.uaword	.LBE41
	.uleb128 0x17
	.uaword	0x2b3
	.uleb128 0x17
	.uaword	0x2c3
	.uleb128 0x18
	.uaword	0x28b
	.uaword	.LBB42
	.uaword	.LBE42
	.byte	0x1
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uaword	.LVL6
	.uaword	0x5cb
	.uleb128 0xd
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uaword	0x297
	.uaword	.LFB403
	.uaword	.LFE403
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x55d
	.uleb128 0x1c
	.uaword	0x2a5
	.byte	0x1
	.byte	0x54
	.uleb128 0x19
	.uaword	0x2b3
	.uaword	.LLST6
	.uleb128 0x19
	.uaword	0x2c3
	.uaword	.LLST7
	.uleb128 0x18
	.uaword	0x28b
	.uaword	.LBB44
	.uaword	.LBE44
	.byte	0x1
	.byte	0x79
	.byte	0
	.uleb128 0x1d
	.uaword	0x261
	.uaword	0x56d
	.uleb128 0x1e
	.uaword	0x279
	.byte	0x3
	.byte	0
	.uleb128 0x1f
	.string	"f_PBSW"
	.byte	0x1
	.byte	0xf
	.uaword	0x55d
	.byte	0x5
	.byte	0x3
	.uaword	f_PBSW
	.uleb128 0x20
	.byte	0x1
	.string	"printf_SysLog"
	.byte	0x3
	.byte	0x13
	.byte	0x1
	.byte	0x1
	.uaword	0x5a0
	.uleb128 0x21
	.uaword	0x285
	.uleb128 0xb
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.string	"setPort_GPIO_PBSW"
	.byte	0x4
	.byte	0x25
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.byte	0x1
	.uaword	.LASF1
	.byte	0x1
	.byte	0x1e
	.uaword	0x1cc
	.byte	0x1
	.uaword	0x5cb
	.uleb128 0xb
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.string	"getState_PBSW"
	.byte	0x4
	.byte	0x26
	.byte	0x1
	.uaword	0x1cc
	.byte	0x1
	.uleb128 0x21
	.uaword	0x1e2
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
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x1d
	.byte	0
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
	.uleb128 0x19
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL4-.Ltext0
	.uaword	.LVL5-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL5-.Ltext0
	.uaword	.LVL7-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL7-.Ltext0
	.uaword	.LVL8-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL8-.Ltext0
	.uaword	.LFE402-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL4-.Ltext0
	.uaword	.LVL6-1-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL6-1-.Ltext0
	.uaword	.LVL7-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL7-.Ltext0
	.uaword	.LVL8-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL8-.Ltext0
	.uaword	.LFE402-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL9-.Ltext0
	.uaword	.LVL11-.Ltext0
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL12-.Ltext0
	.uaword	.LVL17-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL17-.Ltext0
	.uaword	.LVL20-.Ltext0
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL20-.Ltext0
	.uaword	.LFE402-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL16-.Ltext0
	.uaword	.LVL17-.Ltext0
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL13-.Ltext0
	.uaword	.LVL14-.Ltext0
	.uahalf	0x6
	.byte	0x8
	.byte	0x3d
	.byte	0x7f
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL14-.Ltext0
	.uaword	.LVL15-.Ltext0
	.uahalf	0x6
	.byte	0x8
	.byte	0x3e
	.byte	0x7f
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL15-.Ltext0
	.uaword	.LVL17-.Ltext0
	.uahalf	0x6
	.byte	0x8
	.byte	0x3d
	.byte	0x7f
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL19-.Ltext0
	.uaword	.LVL20-.Ltext0
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL22-.Ltext0
	.uaword	.LVL23-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL25-.Ltext0
	.uaword	.LFE403-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL23-.Ltext0
	.uaword	.LVL24-.Ltext0
	.uahalf	0x2
	.byte	0x30
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
.LASF0:
	.string	"delay_PBSW"
.LASF1:
	.string	"setPort_SCUERU22"
	.extern	getState_PBSW,STT_FUNC,0
	.extern	setPort_SCUERU22,STT_FUNC,0
	.extern	setPort_GPIO_PBSW,STT_FUNC,0
	.extern	printf_SysLog,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.1.0-infineon-2.0-df254e8) 4.9.4 build on 2018-04-18"
