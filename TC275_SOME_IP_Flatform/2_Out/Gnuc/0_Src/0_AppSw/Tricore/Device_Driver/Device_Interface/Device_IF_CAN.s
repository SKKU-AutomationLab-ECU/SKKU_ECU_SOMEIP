	.file	"Device_IF_CAN.c"
.section .text,"ax",@progbits
.Ltext0:
.section .rodata,"a",@progbits
.LC0:
	.string	"IO_Set_CAN\t\t\t-> "
.section .srodata,"as",@progbits
.LC1:
	.string	"%s"
.section .rodata,"a",@progbits
.LC2:
	.string	"CAN_A OK!"
.LC3:
	.string	"CAN_B OK!"
.LC4:
	.string	"CAN_C OK!"
.LC5:
	.string	"CAN_D OK!"
.section .srodata,"as",@progbits
.LC6:
	.string	"Done.\r\n"
.section .text,"ax",@progbits
	.align 1
	.global	IO_set_CAN
	.type	IO_set_CAN, @function
IO_set_CAN:
.LFB400:
	.file 1 "0_Src/0_AppSw/Tricore/Device_Driver/Device_Interface/Device_IF_CAN.c"
	.loc 1 17 0
	.loc 1 24 0
	movh.a	%a4, hi:.LC0
	.loc 1 17 0
	sub.a	%SP, 16
.LCFI0:
	.loc 1 24 0
	lea	%a4, [%a4] lo:.LC0
	call	printf_SysLog
.LVL0:
.LBB44:
.LBB45:
	.loc 1 79 0
	call	Set_CAN_Module
.LVL1:
.LBE45:
.LBE44:
.LBB46:
.LBB47:
	.loc 1 94 0
	movh	%d5, 8
.LBE47:
.LBE46:
.LBB49:
.LBB50:
	.loc 1 103 0
	mov	%d15, 0
	mov	%d8, 7000
.LBE50:
.LBE49:
.LBB52:
.LBB48:
	.loc 1 94 0
	addi	%d5, %d5, -24288
	sh	%d6, %d5, 2
	mov	%d4, 0
	call	Set_CAN_BitRate
.LVL2:
.LBE48:
.LBE52:
.LBB53:
.LBB51:
	.loc 1 103 0
	mov	%d7, 8000
	st.w	[%SP]0, %d8
	st.w	[%SP] 4, %d15
	mov	%d4, 0
	mov	%d5, 2000
	mov	%d6, 7500
	call	Set_CAN_BitTiming
.LVL3:
.LBE51:
.LBE53:
.LBB54:
.LBB55:
	.loc 1 94 0
	movh	%d5, 8
	addi	%d5, %d5, -24288
	sh	%d6, %d5, 2
	mov	%d4, 1
	call	Set_CAN_BitRate
.LVL4:
.LBE55:
.LBE54:
.LBB56:
.LBB57:
	.loc 1 103 0
	mov	%d7, 8000
	st.w	[%SP]0, %d8
	st.w	[%SP] 4, %d15
	mov	%d4, 1
	mov	%d5, 2000
	mov	%d6, 7500
	call	Set_CAN_BitTiming
.LVL5:
.LBE57:
.LBE56:
.LBB58:
.LBB59:
	.loc 1 94 0
	movh	%d5, 8
	addi	%d5, %d5, -24288
	sh	%d6, %d5, 2
	mov	%d4, 2
	call	Set_CAN_BitRate
.LVL6:
.LBE59:
.LBE58:
.LBB60:
.LBB61:
	.loc 1 103 0
	mov	%d7, 8000
	st.w	[%SP]0, %d8
	st.w	[%SP] 4, %d15
	mov	%d4, 2
	mov	%d5, 2000
	mov	%d6, 7500
	call	Set_CAN_BitTiming
.LVL7:
.LBE61:
.LBE60:
.LBB62:
.LBB63:
	.loc 1 94 0
	movh	%d5, 8
	addi	%d5, %d5, -24288
	sh	%d6, %d5, 2
	mov	%d4, 3
	call	Set_CAN_BitRate
.LVL8:
.LBE63:
.LBE62:
.LBB64:
.LBB65:
	.loc 1 103 0
	mov	%d6, 7500
	mov	%d7, 8000
	st.w	[%SP]0, %d8
	st.w	[%SP] 4, %d15
	mov	%d4, 3
	mov	%d5, 2000
	call	Set_CAN_BitTiming
.LVL9:
.LBE65:
.LBE64:
.LBB66:
.LBB67:
	.loc 1 87 0
	mov	%e4, 0
	call	Set_CAN_Enable
.LVL10:
.LBE67:
.LBE66:
.LBB68:
.LBB69:
	mov	%e4, 1
	call	Set_CAN_Enable
.LVL11:
.LBE69:
.LBE68:
.LBB70:
.LBB71:
	mov	%e4, 2
	call	Set_CAN_Enable
.LVL12:
.LBE71:
.LBE70:
.LBB72:
.LBB73:
	mov	%e4, 3
	call	Set_CAN_Enable
.LVL13:
.LBE73:
.LBE72:
.LBB74:
.LBB75:
	.loc 1 110 0
	mov	%e4, 0
	st.w	[%SP]0, %d15
	mov	%d6, 1
	mov	%d7, 8
	call	Set_CAN_msgObject
.LVL14:
.LBE75:
.LBE74:
.LBB76:
.LBB77:
	mov	%d4, 1
	st.w	[%SP]0, %d15
	mov	%d5, 1
	mov	%d6, 2
	mov	%d7, 8
	call	Set_CAN_msgObject
.LVL15:
.LBE77:
.LBE76:
.LBB78:
.LBB79:
	mov	%d4, 2
	st.w	[%SP]0, %d15
	mov	%d5, 2
	mov	%d6, 3
	mov	%d7, 8
	call	Set_CAN_msgObject
.LVL16:
.LBE79:
.LBE78:
.LBB80:
.LBB81:
	mov	%d4, 3
	st.w	[%SP]0, %d15
	mov	%d5, 3
	mov	%d6, 4
	mov	%d7, 8
	call	Set_CAN_msgObject
.LVL17:
.LBE81:
.LBE80:
.LBB82:
.LBB83:
	.loc 1 124 0
	mov	%d8, 1
	mov	%d2, 10
	movh.a	%a4, hi:ISR_CAN_msgObj_0
	st.w	[%SP]0, %d15
	st.w	[%SP] 4, %d15
	mov	%e4, 20
	st.w	[%SP] 8, %d2
	st.w	[%SP] 12, %d8
	mov	%d6, 0
	mov	%d7, -1
	lea	%a4, [%a4] lo:ISR_CAN_msgObj_0
	call	Set_CAN_Rx
.LVL18:
.LBE83:
.LBE82:
.LBB84:
.LBB85:
	mov	%d2, 11
	movh.a	%a4, hi:ISR_CAN_msgObj_1
	st.w	[%SP]0, %d15
	st.w	[%SP] 4, %d15
	st.w	[%SP] 8, %d2
	st.w	[%SP] 12, %d8
	mov	%d4, 21
	mov	%d5, 1
	mov	%d6, 0
	mov	%d7, -1
	lea	%a4, [%a4] lo:ISR_CAN_msgObj_1
	call	Set_CAN_Rx
.LVL19:
.LBE85:
.LBE84:
.LBB86:
.LBB87:
	mov	%d2, 12
	movh.a	%a4, hi:ISR_CAN_msgObj_2
	st.w	[%SP]0, %d15
	st.w	[%SP] 4, %d15
	st.w	[%SP] 8, %d2
	st.w	[%SP] 12, %d8
	mov	%d4, 22
	mov	%d5, 2
	mov	%d6, 0
	mov	%d7, -1
	lea	%a4, [%a4] lo:ISR_CAN_msgObj_2
	call	Set_CAN_Rx
.LVL20:
.LBE87:
.LBE86:
.LBB88:
.LBB89:
	st.w	[%SP]0, %d15
	st.w	[%SP] 4, %d15
	mov	%d15, 13
	movh.a	%a4, hi:ISR_CAN_msgObj_3
	mov	%d5, 3
	st.w	[%SP] 8, %d15
.LBE89:
.LBE88:
	.loc 1 65 0
	movh	%d15, hi:.LC2
	addi	%d15, %d15, lo:.LC2
.LBB91:
.LBB90:
	.loc 1 124 0
	mov	%d6, 0
	mov	%d7, -1
	st.w	[%SP] 12, %d8
	mov	%d4, 23
	lea	%a4, [%a4] lo:ISR_CAN_msgObj_3
	call	Set_CAN_Rx
.LVL21:
.LBE90:
.LBE91:
	.loc 1 65 0
	st.w	[%SP]0, %d15
	.loc 1 66 0
	movh	%d15, hi:.LC3
	addi	%d15, %d15, lo:.LC3
	.loc 1 65 0
	mov	%d4, 0
	lea	%a4, [%A0] SM:.LC1
	call	printf_CAN
.LVL22:
	.loc 1 66 0
	st.w	[%SP]0, %d15
	.loc 1 67 0
	movh	%d15, hi:.LC4
	addi	%d15, %d15, lo:.LC4
	.loc 1 66 0
	mov	%d4, 1
	lea	%a4, [%A0] SM:.LC1
	call	printf_CAN
.LVL23:
	.loc 1 67 0
	st.w	[%SP]0, %d15
	.loc 1 68 0
	movh	%d15, hi:.LC5
	addi	%d15, %d15, lo:.LC5
	.loc 1 67 0
	mov	%d4, 2
	lea	%a4, [%A0] SM:.LC1
	call	printf_CAN
.LVL24:
	.loc 1 68 0
	lea	%a4, [%A0] SM:.LC1
	st.w	[%SP]0, %d15
	mov	%d4, 3
	call	printf_CAN
.LVL25:
	.loc 1 71 0
	lea	%a4, [%A0] SM:.LC6
	.loc 1 73 0
	lea	%SP, [%SP] 16
	.loc 1 71 0
	j	printf_SysLog
.LVL26:
.LFE400:
	.size	IO_set_CAN, .-IO_set_CAN
	.align 1
	.global	IO_set_CAN_Module_Enable
	.type	IO_set_CAN_Module_Enable, @function
IO_set_CAN_Module_Enable:
.LFB401:
	.loc 1 78 0
	.loc 1 79 0
	j	Set_CAN_Module
.LVL27:
.LFE401:
	.size	IO_set_CAN_Module_Enable, .-IO_set_CAN_Module_Enable
	.align 1
	.global	IO_set_CAN_Enable
	.type	IO_set_CAN_Enable, @function
IO_set_CAN_Enable:
.LFB402:
	.loc 1 86 0
.LVL28:
	.loc 1 87 0
	j	Set_CAN_Enable
.LVL29:
.LFE402:
	.size	IO_set_CAN_Enable, .-IO_set_CAN_Enable
	.align 1
	.global	IO_set_CAN_BitRate
	.type	IO_set_CAN_BitRate, @function
IO_set_CAN_BitRate:
.LFB403:
	.loc 1 93 0
.LVL30:
	.loc 1 94 0
	j	Set_CAN_BitRate
.LVL31:
.LFE403:
	.size	IO_set_CAN_BitRate, .-IO_set_CAN_BitRate
	.align 1
	.global	IO_set_CAN_BitTiming
	.type	IO_set_CAN_BitTiming, @function
IO_set_CAN_BitTiming:
.LFB404:
	.loc 1 102 0
.LVL32:
	.loc 1 102 0
	ld.bu	%d15, [%SP] 4
	.loc 1 103 0
	st.w	[%SP] 4, %d15
.LVL33:
	j	Set_CAN_BitTiming
.LVL34:
.LFE404:
	.size	IO_set_CAN_BitTiming, .-IO_set_CAN_BitTiming
	.align 1
	.global	IO_set_CAN_msgObject
	.type	IO_set_CAN_msgObject, @function
IO_set_CAN_msgObject:
.LFB405:
	.loc 1 109 0
.LVL35:
	.loc 1 109 0
	ld.bu	%d15, [%SP]0
	.loc 1 110 0
	st.w	[%SP]0, %d15
.LVL36:
	j	Set_CAN_msgObject
.LVL37:
.LFE405:
	.size	IO_set_CAN_msgObject, .-IO_set_CAN_msgObject
	.align 1
	.global	IO_get_CAN_RxBuffer
	.type	IO_get_CAN_RxBuffer, @function
IO_get_CAN_RxBuffer:
.LFB406:
	.loc 1 115 0
.LVL38:
	.loc 1 116 0
	j	Get_CAN_RxBuffer
.LVL39:
.LFE406:
	.size	IO_get_CAN_RxBuffer, .-IO_get_CAN_RxBuffer
	.align 1
	.global	ISR_set_CAN_Rx
	.type	ISR_set_CAN_Rx, @function
ISR_set_CAN_Rx:
.LFB407:
	.loc 1 123 0
.LVL40:
	.loc 1 123 0
	ld.bu	%d0, [%SP]0
	ld.bu	%d3, [%SP] 4
	ld.hu	%d15, [%SP] 8
	ld.bu	%d2, [%SP] 12
	.loc 1 124 0
	st.w	[%SP]0, %d0
.LVL41:
	st.w	[%SP] 4, %d3
.LVL42:
	st.w	[%SP] 8, %d15
.LVL43:
	st.w	[%SP] 12, %d2
.LVL44:
	j	Set_CAN_Rx
.LVL45:
.LFE407:
	.size	ISR_set_CAN_Rx, .-ISR_set_CAN_Rx
	.global	IO_CAN_Rx
.section .bss,"aw",@nobits
	.type	IO_CAN_Rx, @object
	.size	IO_CAN_Rx, 64
IO_CAN_Rx:
	.zero	64
	.global	IO_CAN_Tx
	.type	IO_CAN_Tx, @object
	.size	IO_CAN_Tx, 64
IO_CAN_Tx:
	.zero	64
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
	.byte	0x4
	.uaword	.LCFI0-.LFB400
	.byte	0xe
	.uleb128 0x10
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB401
	.uaword	.LFE401-.LFB401
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB402
	.uaword	.LFE402-.LFB402
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB403
	.uaword	.LFE403-.LFB403
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB404
	.uaword	.LFE404-.LFB404
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB405
	.uaword	.LFE405-.LFB405
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB406
	.uaword	.LFE406-.LFB406
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB407
	.uaword	.LFE407-.LFB407
	.align 2
.LEFDE14:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "./0_Src/4_McHal/Tricore/Cpu/Std/Platform_Types.h"
	.file 3 "./0_Src/0_AppSw/Tricore/System/Systems/SysCFG_Log.h"
	.file 4 "0_Src/0_AppSw/Tricore/Device_Driver/Device_Interface/Device_IF_CAN.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x11ce
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9."
	.string	"4 build on 2018-04-18 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -msmall-const=8 -mtc161 -g -g -O2 -fno-common -fno-short-enums -fsingle-precision-constant -fstrict-volatile-bitfields"
	.byte	0x1
	.string	"0_Src/0_AppSw/Tricore/Device_Driver/Device_Interface/Device_IF_CAN.c"
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
	.byte	0x2
	.byte	0x59
	.uaword	0x1ee
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
	.uaword	0x21a
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"uint32"
	.byte	0x2
	.byte	0x5d
	.uaword	0x1b6
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
	.uleb128 0x4
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x5
	.uaword	0x1ee
	.uaword	0x2b2
	.uleb128 0x6
	.uaword	0x296
	.byte	0x3f
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.uaword	0x27c
	.uleb128 0x8
	.byte	0x1
	.string	"IO_set_CAN_Module_Enable"
	.byte	0x1
	.byte	0x4d
	.byte	0x1
	.byte	0x1
	.uaword	0x2ec
	.uleb128 0x9
	.byte	0x1
	.uaword	.LASF2
	.byte	0x1
	.byte	0x4f
	.uaword	0x1cb
	.byte	0
	.uleb128 0xa
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.uaword	.LASF0
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x1
	.uaword	0x33f
	.uleb128 0xc
	.uaword	.LASF1
	.byte	0x1
	.byte	0x5c
	.uaword	0x1e1
	.uleb128 0xd
	.string	"nom_Baudrate"
	.byte	0x1
	.byte	0x5c
	.uaword	0x230
	.uleb128 0xd
	.string	"fast_Baudrate"
	.byte	0x1
	.byte	0x5c
	.uaword	0x230
	.uleb128 0x9
	.byte	0x1
	.uaword	.LASF3
	.byte	0x1
	.byte	0x5e
	.uaword	0x1cb
	.byte	0
	.uleb128 0xa
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.string	"IO_set_CAN_BitTiming"
	.byte	0x1
	.byte	0x62
	.byte	0x1
	.byte	0x1
	.uaword	0x3c1
	.uleb128 0xc
	.uaword	.LASF1
	.byte	0x1
	.byte	0x62
	.uaword	0x1e1
	.uleb128 0xd
	.string	"nom_SJW"
	.byte	0x1
	.byte	0x63
	.uaword	0x230
	.uleb128 0xd
	.string	"nom_SP"
	.byte	0x1
	.byte	0x63
	.uaword	0x230
	.uleb128 0xd
	.string	"fast_SJW"
	.byte	0x1
	.byte	0x64
	.uaword	0x230
	.uleb128 0xd
	.string	"fast_SP"
	.byte	0x1
	.byte	0x64
	.uaword	0x230
	.uleb128 0xd
	.string	"LDO"
	.byte	0x1
	.byte	0x65
	.uaword	0x1e1
	.uleb128 0x9
	.byte	0x1
	.uaword	.LASF4
	.byte	0x1
	.byte	0x67
	.uaword	0x1cb
	.byte	0
	.uleb128 0xa
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.string	"IO_set_CAN_Enable"
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x1
	.uaword	0x403
	.uleb128 0xc
	.uaword	.LASF1
	.byte	0x1
	.byte	0x55
	.uaword	0x1e1
	.uleb128 0xd
	.string	"FD"
	.byte	0x1
	.byte	0x55
	.uaword	0x1e1
	.uleb128 0x9
	.byte	0x1
	.uaword	.LASF5
	.byte	0x1
	.byte	0x57
	.uaword	0x1cb
	.byte	0
	.uleb128 0xa
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.string	"IO_set_CAN_msgObject"
	.byte	0x1
	.byte	0x6b
	.byte	0x1
	.byte	0x1
	.uaword	0x472
	.uleb128 0xc
	.uaword	.LASF6
	.byte	0x1
	.byte	0x6b
	.uaword	0x1e1
	.uleb128 0xc
	.uaword	.LASF1
	.byte	0x1
	.byte	0x6b
	.uaword	0x1e1
	.uleb128 0xd
	.string	"ID"
	.byte	0x1
	.byte	0x6b
	.uaword	0x230
	.uleb128 0xd
	.string	"size_frame"
	.byte	0x1
	.byte	0x6c
	.uaword	0x1e1
	.uleb128 0xd
	.string	"FD_on"
	.byte	0x1
	.byte	0x6c
	.uaword	0x1e1
	.uleb128 0x9
	.byte	0x1
	.uaword	.LASF7
	.byte	0x1
	.byte	0x6e
	.uaword	0x1cb
	.byte	0
	.uleb128 0xa
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.string	"ISR_set_CAN_Rx"
	.byte	0x1
	.byte	0x78
	.byte	0x1
	.byte	0x1
	.uaword	0x525
	.uleb128 0xc
	.uaword	.LASF6
	.byte	0x1
	.byte	0x78
	.uaword	0x1e1
	.uleb128 0xc
	.uaword	.LASF1
	.byte	0x1
	.byte	0x78
	.uaword	0x1e1
	.uleb128 0xd
	.string	"ID_mask"
	.byte	0x1
	.byte	0x78
	.uaword	0x230
	.uleb128 0xd
	.string	"ID_accept"
	.byte	0x1
	.byte	0x78
	.uaword	0x230
	.uleb128 0xd
	.string	"frame_extend"
	.byte	0x1
	.byte	0x79
	.uaword	0x1e1
	.uleb128 0xd
	.string	"FD_on"
	.byte	0x1
	.byte	0x79
	.uaword	0x1e1
	.uleb128 0xd
	.string	"isrFuncPointer"
	.byte	0x1
	.byte	0x7a
	.uaword	0x284
	.uleb128 0xd
	.string	"priority"
	.byte	0x1
	.byte	0x7a
	.uaword	0x20c
	.uleb128 0xd
	.string	"core"
	.byte	0x1
	.byte	0x7a
	.uaword	0x1e1
	.uleb128 0x9
	.byte	0x1
	.uaword	.LASF8
	.byte	0x1
	.byte	0x7c
	.uaword	0x1cb
	.byte	0
	.uleb128 0xa
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.string	"IO_set_CAN"
	.byte	0x1
	.byte	0x10
	.byte	0x1
	.uaword	.LFB400
	.uaword	.LFE400
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xe2c
	.uleb128 0xf
	.byte	0x1
	.uaword	.LASF0
	.byte	0x1
	.byte	0x1f
	.uaword	0x1cb
	.byte	0x1
	.uaword	0x557
	.uleb128 0xa
	.byte	0
	.uleb128 0x10
	.uaword	0x2b8
	.uaword	.LBB44
	.uaword	.LBE44
	.byte	0x1
	.byte	0x1c
	.uaword	0x57e
	.uleb128 0x11
	.uaword	.LBB45
	.uaword	.LBE45
	.uleb128 0x12
	.uaword	.LVL1
	.uaword	0x1110
	.byte	0
	.byte	0
	.uleb128 0x13
	.uaword	0x2ec
	.uaword	.LBB46
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x1f
	.uaword	0x5d2
	.uleb128 0x14
	.uaword	0x319
	.uaword	0x1e8480
	.uleb128 0x14
	.uaword	0x305
	.uaword	0x7a120
	.uleb128 0x15
	.uaword	0x2fa
	.byte	0
	.uleb128 0x16
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x17
	.uaword	.LVL2
	.uaword	0x1123
	.uleb128 0x18
	.byte	0x1
	.byte	0x56
	.byte	0x5
	.byte	0xc
	.uaword	0x1e8480
	.uleb128 0x18
	.byte	0x1
	.byte	0x55
	.byte	0x5
	.byte	0xc
	.uaword	0x7a120
	.uleb128 0x18
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x13
	.uaword	0x33f
	.uaword	.LBB49
	.uaword	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0x20
	.uaword	0x647
	.uleb128 0x15
	.uaword	0x3a5
	.byte	0
	.uleb128 0x19
	.uaword	0x396
	.uahalf	0x1b58
	.uleb128 0x19
	.uaword	0x386
	.uahalf	0x1f40
	.uleb128 0x19
	.uaword	0x378
	.uahalf	0x1d4c
	.uleb128 0x19
	.uaword	0x369
	.uahalf	0x7d0
	.uleb128 0x15
	.uaword	0x35e
	.byte	0
	.uleb128 0x16
	.uaword	.Ldebug_ranges0+0x18
	.uleb128 0x17
	.uaword	.LVL3
	.uaword	0x1136
	.uleb128 0x18
	.byte	0x1
	.byte	0x57
	.byte	0x3
	.byte	0xa
	.uahalf	0x1f40
	.uleb128 0x18
	.byte	0x1
	.byte	0x56
	.byte	0x3
	.byte	0xa
	.uahalf	0x1d4c
	.uleb128 0x18
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0xa
	.uahalf	0x7d0
	.uleb128 0x18
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x18
	.byte	0x2
	.byte	0x8a
	.sleb128 4
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x18
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.uaword	0x2ec
	.uaword	.LBB54
	.uaword	.LBE54
	.byte	0x1
	.byte	0x22
	.uaword	0x69e
	.uleb128 0x14
	.uaword	0x319
	.uaword	0x1e8480
	.uleb128 0x14
	.uaword	0x305
	.uaword	0x7a120
	.uleb128 0x15
	.uaword	0x2fa
	.byte	0x1
	.uleb128 0x11
	.uaword	.LBB55
	.uaword	.LBE55
	.uleb128 0x17
	.uaword	.LVL4
	.uaword	0x1123
	.uleb128 0x18
	.byte	0x1
	.byte	0x56
	.byte	0x5
	.byte	0xc
	.uaword	0x1e8480
	.uleb128 0x18
	.byte	0x1
	.byte	0x55
	.byte	0x5
	.byte	0xc
	.uaword	0x7a120
	.uleb128 0x18
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.uaword	0x33f
	.uaword	.LBB56
	.uaword	.LBE56
	.byte	0x1
	.byte	0x23
	.uaword	0x716
	.uleb128 0x15
	.uaword	0x3a5
	.byte	0
	.uleb128 0x19
	.uaword	0x396
	.uahalf	0x1b58
	.uleb128 0x19
	.uaword	0x386
	.uahalf	0x1f40
	.uleb128 0x19
	.uaword	0x378
	.uahalf	0x1d4c
	.uleb128 0x19
	.uaword	0x369
	.uahalf	0x7d0
	.uleb128 0x15
	.uaword	0x35e
	.byte	0x1
	.uleb128 0x11
	.uaword	.LBB57
	.uaword	.LBE57
	.uleb128 0x17
	.uaword	.LVL5
	.uaword	0x1136
	.uleb128 0x18
	.byte	0x1
	.byte	0x57
	.byte	0x3
	.byte	0xa
	.uahalf	0x1f40
	.uleb128 0x18
	.byte	0x1
	.byte	0x56
	.byte	0x3
	.byte	0xa
	.uahalf	0x1d4c
	.uleb128 0x18
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0xa
	.uahalf	0x7d0
	.uleb128 0x18
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.uleb128 0x18
	.byte	0x2
	.byte	0x8a
	.sleb128 4
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x18
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.uaword	0x2ec
	.uaword	.LBB58
	.uaword	.LBE58
	.byte	0x1
	.byte	0x25
	.uaword	0x76d
	.uleb128 0x14
	.uaword	0x319
	.uaword	0x1e8480
	.uleb128 0x14
	.uaword	0x305
	.uaword	0x7a120
	.uleb128 0x15
	.uaword	0x2fa
	.byte	0x2
	.uleb128 0x11
	.uaword	.LBB59
	.uaword	.LBE59
	.uleb128 0x17
	.uaword	.LVL6
	.uaword	0x1123
	.uleb128 0x18
	.byte	0x1
	.byte	0x56
	.byte	0x5
	.byte	0xc
	.uaword	0x1e8480
	.uleb128 0x18
	.byte	0x1
	.byte	0x55
	.byte	0x5
	.byte	0xc
	.uaword	0x7a120
	.uleb128 0x18
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.uaword	0x33f
	.uaword	.LBB60
	.uaword	.LBE60
	.byte	0x1
	.byte	0x26
	.uaword	0x7e5
	.uleb128 0x15
	.uaword	0x3a5
	.byte	0
	.uleb128 0x19
	.uaword	0x396
	.uahalf	0x1b58
	.uleb128 0x19
	.uaword	0x386
	.uahalf	0x1f40
	.uleb128 0x19
	.uaword	0x378
	.uahalf	0x1d4c
	.uleb128 0x19
	.uaword	0x369
	.uahalf	0x7d0
	.uleb128 0x15
	.uaword	0x35e
	.byte	0x2
	.uleb128 0x11
	.uaword	.LBB61
	.uaword	.LBE61
	.uleb128 0x17
	.uaword	.LVL7
	.uaword	0x1136
	.uleb128 0x18
	.byte	0x1
	.byte	0x57
	.byte	0x3
	.byte	0xa
	.uahalf	0x1f40
	.uleb128 0x18
	.byte	0x1
	.byte	0x56
	.byte	0x3
	.byte	0xa
	.uahalf	0x1d4c
	.uleb128 0x18
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0xa
	.uahalf	0x7d0
	.uleb128 0x18
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.uleb128 0x18
	.byte	0x2
	.byte	0x8a
	.sleb128 4
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x18
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.uaword	0x2ec
	.uaword	.LBB62
	.uaword	.LBE62
	.byte	0x1
	.byte	0x28
	.uaword	0x83c
	.uleb128 0x14
	.uaword	0x319
	.uaword	0x1e8480
	.uleb128 0x14
	.uaword	0x305
	.uaword	0x7a120
	.uleb128 0x15
	.uaword	0x2fa
	.byte	0x3
	.uleb128 0x11
	.uaword	.LBB63
	.uaword	.LBE63
	.uleb128 0x17
	.uaword	.LVL8
	.uaword	0x1123
	.uleb128 0x18
	.byte	0x1
	.byte	0x56
	.byte	0x5
	.byte	0xc
	.uaword	0x1e8480
	.uleb128 0x18
	.byte	0x1
	.byte	0x55
	.byte	0x5
	.byte	0xc
	.uaword	0x7a120
	.uleb128 0x18
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.uaword	0x33f
	.uaword	.LBB64
	.uaword	.LBE64
	.byte	0x1
	.byte	0x29
	.uaword	0x8b4
	.uleb128 0x15
	.uaword	0x3a5
	.byte	0
	.uleb128 0x19
	.uaword	0x396
	.uahalf	0x1b58
	.uleb128 0x19
	.uaword	0x386
	.uahalf	0x1f40
	.uleb128 0x19
	.uaword	0x378
	.uahalf	0x1d4c
	.uleb128 0x19
	.uaword	0x369
	.uahalf	0x7d0
	.uleb128 0x15
	.uaword	0x35e
	.byte	0x3
	.uleb128 0x11
	.uaword	.LBB65
	.uaword	.LBE65
	.uleb128 0x17
	.uaword	.LVL9
	.uaword	0x1136
	.uleb128 0x18
	.byte	0x1
	.byte	0x57
	.byte	0x3
	.byte	0xa
	.uahalf	0x1f40
	.uleb128 0x18
	.byte	0x1
	.byte	0x56
	.byte	0x3
	.byte	0xa
	.uahalf	0x1d4c
	.uleb128 0x18
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0xa
	.uahalf	0x7d0
	.uleb128 0x18
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x33
	.uleb128 0x18
	.byte	0x2
	.byte	0x8a
	.sleb128 4
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x18
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.uaword	0x3c1
	.uaword	.LBB66
	.uaword	.LBE66
	.byte	0x1
	.byte	0x2b
	.uaword	0x8f4
	.uleb128 0x15
	.uaword	0x3e8
	.byte	0
	.uleb128 0x15
	.uaword	0x3dd
	.byte	0
	.uleb128 0x11
	.uaword	.LBB67
	.uaword	.LBE67
	.uleb128 0x17
	.uaword	.LVL10
	.uaword	0x1149
	.uleb128 0x18
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x18
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.uaword	0x3c1
	.uaword	.LBB68
	.uaword	.LBE68
	.byte	0x1
	.byte	0x2c
	.uaword	0x933
	.uleb128 0x15
	.uaword	0x3e8
	.byte	0
	.uleb128 0x15
	.uaword	0x3dd
	.byte	0x1
	.uleb128 0x11
	.uaword	.LBB69
	.uaword	.LBE69
	.uleb128 0x17
	.uaword	.LVL11
	.uaword	0x1149
	.uleb128 0x18
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x18
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.uaword	0x3c1
	.uaword	.LBB70
	.uaword	.LBE70
	.byte	0x1
	.byte	0x2d
	.uaword	0x972
	.uleb128 0x15
	.uaword	0x3e8
	.byte	0
	.uleb128 0x15
	.uaword	0x3dd
	.byte	0x2
	.uleb128 0x11
	.uaword	.LBB71
	.uaword	.LBE71
	.uleb128 0x17
	.uaword	.LVL12
	.uaword	0x1149
	.uleb128 0x18
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x18
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.uaword	0x3c1
	.uaword	.LBB72
	.uaword	.LBE72
	.byte	0x1
	.byte	0x2e
	.uaword	0x9b1
	.uleb128 0x15
	.uaword	0x3e8
	.byte	0
	.uleb128 0x15
	.uaword	0x3dd
	.byte	0x3
	.uleb128 0x11
	.uaword	.LBB73
	.uaword	.LBE73
	.uleb128 0x17
	.uaword	.LVL13
	.uaword	0x1149
	.uleb128 0x18
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x18
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.uaword	0x403
	.uaword	.LBB74
	.uaword	.LBE74
	.byte	0x1
	.byte	0x30
	.uaword	0xa14
	.uleb128 0x15
	.uaword	0x454
	.byte	0
	.uleb128 0x15
	.uaword	0x442
	.byte	0x8
	.uleb128 0x15
	.uaword	0x438
	.byte	0x1
	.uleb128 0x15
	.uaword	0x42d
	.byte	0
	.uleb128 0x15
	.uaword	0x422
	.byte	0
	.uleb128 0x11
	.uaword	.LBB75
	.uaword	.LBE75
	.uleb128 0x17
	.uaword	.LVL14
	.uaword	0x115c
	.uleb128 0x18
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x38
	.uleb128 0x18
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x31
	.uleb128 0x18
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x18
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x18
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.uaword	0x403
	.uaword	.LBB76
	.uaword	.LBE76
	.byte	0x1
	.byte	0x31
	.uaword	0xa75
	.uleb128 0x15
	.uaword	0x454
	.byte	0
	.uleb128 0x15
	.uaword	0x442
	.byte	0x8
	.uleb128 0x15
	.uaword	0x438
	.byte	0x2
	.uleb128 0x15
	.uaword	0x42d
	.byte	0x1
	.uleb128 0x15
	.uaword	0x422
	.byte	0x1
	.uleb128 0x11
	.uaword	.LBB77
	.uaword	.LBE77
	.uleb128 0x17
	.uaword	.LVL15
	.uaword	0x115c
	.uleb128 0x18
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x38
	.uleb128 0x18
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x32
	.uleb128 0x18
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x31
	.uleb128 0x18
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.uleb128 0x18
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.uaword	0x403
	.uaword	.LBB78
	.uaword	.LBE78
	.byte	0x1
	.byte	0x32
	.uaword	0xad6
	.uleb128 0x15
	.uaword	0x454
	.byte	0
	.uleb128 0x15
	.uaword	0x442
	.byte	0x8
	.uleb128 0x15
	.uaword	0x438
	.byte	0x3
	.uleb128 0x15
	.uaword	0x42d
	.byte	0x2
	.uleb128 0x15
	.uaword	0x422
	.byte	0x2
	.uleb128 0x11
	.uaword	.LBB79
	.uaword	.LBE79
	.uleb128 0x17
	.uaword	.LVL16
	.uaword	0x115c
	.uleb128 0x18
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x38
	.uleb128 0x18
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x33
	.uleb128 0x18
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x32
	.uleb128 0x18
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.uleb128 0x18
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.uaword	0x403
	.uaword	.LBB80
	.uaword	.LBE80
	.byte	0x1
	.byte	0x33
	.uaword	0xb37
	.uleb128 0x15
	.uaword	0x454
	.byte	0
	.uleb128 0x15
	.uaword	0x442
	.byte	0x8
	.uleb128 0x15
	.uaword	0x438
	.byte	0x4
	.uleb128 0x15
	.uaword	0x42d
	.byte	0x3
	.uleb128 0x15
	.uaword	0x422
	.byte	0x3
	.uleb128 0x11
	.uaword	.LBB81
	.uaword	.LBE81
	.uleb128 0x17
	.uaword	.LVL17
	.uaword	0x115c
	.uleb128 0x18
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x38
	.uleb128 0x18
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x34
	.uleb128 0x18
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x33
	.uleb128 0x18
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x33
	.uleb128 0x18
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.uaword	0x472
	.uaword	.LBB82
	.uaword	.LBE82
	.byte	0x1
	.byte	0x35
	.uaword	0xbc6
	.uleb128 0x15
	.uaword	0x508
	.byte	0x1
	.uleb128 0x15
	.uaword	0x4f8
	.byte	0xa
	.uleb128 0x1a
	.uaword	0x4e2
	.uleb128 0x15
	.uaword	0x4d5
	.byte	0
	.uleb128 0x15
	.uaword	0x4c1
	.byte	0
	.uleb128 0x1b
	.uaword	0x4b0
	.sleb128 -1
	.uleb128 0x15
	.uaword	0x4a1
	.byte	0
	.uleb128 0x15
	.uaword	0x496
	.byte	0
	.uleb128 0x15
	.uaword	0x48b
	.byte	0x14
	.uleb128 0x11
	.uaword	.LBB83
	.uaword	.LBE83
	.uleb128 0x17
	.uaword	.LVL18
	.uaword	0x116f
	.uleb128 0x18
	.byte	0x1
	.byte	0x57
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x18
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x18
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x18
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x44
	.uleb128 0x18
	.byte	0x2
	.byte	0x8a
	.sleb128 12
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x18
	.byte	0x2
	.byte	0x8a
	.sleb128 8
	.byte	0x1
	.byte	0x3a
	.uleb128 0x18
	.byte	0x2
	.byte	0x8a
	.sleb128 4
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x18
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.uaword	0x472
	.uaword	.LBB84
	.uaword	.LBE84
	.byte	0x1
	.byte	0x38
	.uaword	0xc55
	.uleb128 0x15
	.uaword	0x508
	.byte	0x1
	.uleb128 0x15
	.uaword	0x4f8
	.byte	0xb
	.uleb128 0x1a
	.uaword	0x4e2
	.uleb128 0x15
	.uaword	0x4d5
	.byte	0
	.uleb128 0x15
	.uaword	0x4c1
	.byte	0
	.uleb128 0x1b
	.uaword	0x4b0
	.sleb128 -1
	.uleb128 0x15
	.uaword	0x4a1
	.byte	0
	.uleb128 0x15
	.uaword	0x496
	.byte	0x1
	.uleb128 0x15
	.uaword	0x48b
	.byte	0x15
	.uleb128 0x11
	.uaword	.LBB85
	.uaword	.LBE85
	.uleb128 0x17
	.uaword	.LVL19
	.uaword	0x116f
	.uleb128 0x18
	.byte	0x1
	.byte	0x57
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x18
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x18
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x18
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x45
	.uleb128 0x18
	.byte	0x2
	.byte	0x8a
	.sleb128 12
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x18
	.byte	0x2
	.byte	0x8a
	.sleb128 8
	.byte	0x1
	.byte	0x3b
	.uleb128 0x18
	.byte	0x2
	.byte	0x8a
	.sleb128 4
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x18
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.uaword	0x472
	.uaword	.LBB86
	.uaword	.LBE86
	.byte	0x1
	.byte	0x3b
	.uaword	0xce3
	.uleb128 0x15
	.uaword	0x508
	.byte	0x1
	.uleb128 0x15
	.uaword	0x4f8
	.byte	0xc
	.uleb128 0x1a
	.uaword	0x4e2
	.uleb128 0x15
	.uaword	0x4d5
	.byte	0
	.uleb128 0x15
	.uaword	0x4c1
	.byte	0
	.uleb128 0x1b
	.uaword	0x4b0
	.sleb128 -1
	.uleb128 0x15
	.uaword	0x4a1
	.byte	0
	.uleb128 0x15
	.uaword	0x496
	.byte	0x2
	.uleb128 0x15
	.uaword	0x48b
	.byte	0x16
	.uleb128 0x11
	.uaword	.LBB87
	.uaword	.LBE87
	.uleb128 0x17
	.uaword	.LVL20
	.uaword	0x116f
	.uleb128 0x18
	.byte	0x1
	.byte	0x57
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x18
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x18
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x32
	.uleb128 0x18
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x46
	.uleb128 0x18
	.byte	0x2
	.byte	0x8a
	.sleb128 12
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x18
	.byte	0x2
	.byte	0x8a
	.sleb128 8
	.byte	0x1
	.byte	0x3c
	.uleb128 0x18
	.byte	0x2
	.byte	0x8a
	.sleb128 4
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x18
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x13
	.uaword	0x472
	.uaword	.LBB88
	.uaword	.Ldebug_ranges0+0x30
	.byte	0x1
	.byte	0x3e
	.uaword	0xd6a
	.uleb128 0x15
	.uaword	0x508
	.byte	0x1
	.uleb128 0x15
	.uaword	0x4f8
	.byte	0xd
	.uleb128 0x1a
	.uaword	0x4e2
	.uleb128 0x15
	.uaword	0x4d5
	.byte	0
	.uleb128 0x15
	.uaword	0x4c1
	.byte	0
	.uleb128 0x1b
	.uaword	0x4b0
	.sleb128 -1
	.uleb128 0x15
	.uaword	0x4a1
	.byte	0
	.uleb128 0x15
	.uaword	0x496
	.byte	0x3
	.uleb128 0x15
	.uaword	0x48b
	.byte	0x17
	.uleb128 0x16
	.uaword	.Ldebug_ranges0+0x30
	.uleb128 0x17
	.uaword	.LVL21
	.uaword	0x116f
	.uleb128 0x18
	.byte	0x1
	.byte	0x57
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x18
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x30
	.uleb128 0x18
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x33
	.uleb128 0x18
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x47
	.uleb128 0x18
	.byte	0x2
	.byte	0x8a
	.sleb128 12
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x18
	.byte	0x2
	.byte	0x8a
	.sleb128 8
	.byte	0x1
	.byte	0x3d
	.uleb128 0x18
	.byte	0x2
	.byte	0x8a
	.sleb128 4
	.byte	0x1
	.byte	0x30
	.uleb128 0x18
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uaword	.LVL0
	.uaword	0x1182
	.uaword	0xd81
	.uleb128 0x18
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	.LC0
	.byte	0
	.uleb128 0x1c
	.uaword	.LVL22
	.uaword	0x11a1
	.uaword	0xda7
	.uleb128 0x18
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	.LC1
	.uleb128 0x18
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.uleb128 0x18
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x5
	.byte	0x3
	.uaword	.LC2
	.byte	0
	.uleb128 0x1c
	.uaword	.LVL23
	.uaword	0x11a1
	.uaword	0xdce
	.uleb128 0x18
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	.LC1
	.uleb128 0x18
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x18
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x5
	.byte	0x3
	.uaword	.LC3
	.byte	0
	.uleb128 0x1c
	.uaword	.LVL24
	.uaword	0x11a1
	.uaword	0xdf4
	.uleb128 0x18
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	.LC1
	.uleb128 0x18
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.uleb128 0x18
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x5
	.byte	0x3
	.uaword	.LC4
	.byte	0
	.uleb128 0x1c
	.uaword	.LVL25
	.uaword	0x11a1
	.uaword	0xe17
	.uleb128 0x18
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	.LC1
	.uleb128 0x18
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x33
	.uleb128 0x18
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL26
	.byte	0x1
	.uaword	0x1182
	.uleb128 0x18
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	.LC6
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uaword	0x2b8
	.uaword	.LFB401
	.uaword	.LFE401
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xe56
	.uleb128 0x1f
	.uaword	0x2db
	.uaword	0xe4b
	.uleb128 0xa
	.byte	0
	.uleb128 0x20
	.uaword	.LVL27
	.byte	0x1
	.uaword	0x1110
	.byte	0
	.uleb128 0x1e
	.uaword	0x3c1
	.uaword	.LFB402
	.uaword	.LFE402
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xe92
	.uleb128 0x21
	.uaword	0x3dd
	.uaword	.LLST0
	.uleb128 0x21
	.uaword	0x3e8
	.uaword	.LLST1
	.uleb128 0x1f
	.uaword	0x3f2
	.uaword	0xe87
	.uleb128 0xa
	.byte	0
	.uleb128 0x20
	.uaword	.LVL29
	.byte	0x1
	.uaword	0x1149
	.byte	0
	.uleb128 0x1e
	.uaword	0x2ec
	.uaword	.LFB403
	.uaword	.LFE403
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xee6
	.uleb128 0x21
	.uaword	0x2fa
	.uaword	.LLST2
	.uleb128 0x21
	.uaword	0x305
	.uaword	.LLST3
	.uleb128 0x21
	.uaword	0x319
	.uaword	.LLST4
	.uleb128 0x1f
	.uaword	0x32e
	.uaword	0xecc
	.uleb128 0xa
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL31
	.byte	0x1
	.uaword	0x1123
	.uleb128 0x18
	.byte	0x1
	.byte	0x56
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x18
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uaword	0x33f
	.uaword	.LFB404
	.uaword	.LFE404
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xf62
	.uleb128 0x21
	.uaword	0x35e
	.uaword	.LLST5
	.uleb128 0x21
	.uaword	0x369
	.uaword	.LLST6
	.uleb128 0x21
	.uaword	0x378
	.uaword	.LLST7
	.uleb128 0x21
	.uaword	0x386
	.uaword	.LLST8
	.uleb128 0x22
	.uaword	0x396
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x21
	.uaword	0x3a5
	.uaword	.LLST9
	.uleb128 0x1f
	.uaword	0x3b0
	.uaword	0xf3a
	.uleb128 0xa
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL34
	.byte	0x1
	.uaword	0x1136
	.uleb128 0x18
	.byte	0x1
	.byte	0x57
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x18
	.byte	0x1
	.byte	0x56
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x18
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x18
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uaword	0x403
	.uaword	.LFB405
	.uaword	.LFE405
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xfc8
	.uleb128 0x21
	.uaword	0x422
	.uaword	.LLST10
	.uleb128 0x21
	.uaword	0x42d
	.uaword	.LLST11
	.uleb128 0x21
	.uaword	0x438
	.uaword	.LLST12
	.uleb128 0x21
	.uaword	0x442
	.uaword	.LLST13
	.uleb128 0x21
	.uaword	0x454
	.uaword	.LLST14
	.uleb128 0x1f
	.uaword	0x461
	.uaword	0xfae
	.uleb128 0xa
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL37
	.byte	0x1
	.uaword	0x115c
	.uleb128 0x18
	.byte	0x1
	.byte	0x56
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x18
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.string	"IO_get_CAN_RxBuffer"
	.byte	0x1
	.byte	0x72
	.byte	0x1
	.uaword	0x230
	.uaword	.LFB406
	.uaword	.LFE406
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1042
	.uleb128 0x24
	.string	"num_MsgObj"
	.byte	0x1
	.byte	0x72
	.uaword	0x1e1
	.uaword	.LLST15
	.uleb128 0x24
	.string	"buffer"
	.byte	0x1
	.byte	0x72
	.uaword	0x1042
	.uaword	.LLST16
	.uleb128 0xf
	.byte	0x1
	.uaword	.LASF9
	.byte	0x1
	.byte	0x74
	.uaword	0x1cb
	.byte	0x1
	.uaword	0x102f
	.uleb128 0xa
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL39
	.byte	0x1
	.uaword	0x11c2
	.uleb128 0x18
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.uaword	0x1e1
	.uleb128 0x1e
	.uaword	0x472
	.uaword	.LFB407
	.uaword	.LFE407
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x10e0
	.uleb128 0x21
	.uaword	0x48b
	.uaword	.LLST17
	.uleb128 0x21
	.uaword	0x496
	.uaword	.LLST18
	.uleb128 0x21
	.uaword	0x4a1
	.uaword	.LLST19
	.uleb128 0x21
	.uaword	0x4b0
	.uaword	.LLST20
	.uleb128 0x21
	.uaword	0x4c1
	.uaword	.LLST21
	.uleb128 0x21
	.uaword	0x4d5
	.uaword	.LLST22
	.uleb128 0x21
	.uaword	0x4e2
	.uaword	.LLST23
	.uleb128 0x21
	.uaword	0x4f8
	.uaword	.LLST24
	.uleb128 0x21
	.uaword	0x508
	.uaword	.LLST25
	.uleb128 0x1f
	.uaword	0x514
	.uaword	0x10b8
	.uleb128 0xa
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL45
	.byte	0x1
	.uaword	0x116f
	.uleb128 0x18
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.uleb128 0x18
	.byte	0x1
	.byte	0x57
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x18
	.byte	0x1
	.byte	0x56
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x18
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x25
	.string	"IO_CAN_Tx"
	.byte	0x1
	.byte	0xc
	.uaword	0x2a2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	IO_CAN_Tx
	.uleb128 0x25
	.string	"IO_CAN_Rx"
	.byte	0x1
	.byte	0xd
	.uaword	0x2a2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	IO_CAN_Rx
	.uleb128 0xf
	.byte	0x1
	.uaword	.LASF2
	.byte	0x1
	.byte	0x4f
	.uaword	0x1cb
	.byte	0x1
	.uaword	0x1123
	.uleb128 0xa
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.uaword	.LASF3
	.byte	0x1
	.byte	0x5e
	.uaword	0x1cb
	.byte	0x1
	.uaword	0x1136
	.uleb128 0xa
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.uaword	.LASF4
	.byte	0x1
	.byte	0x67
	.uaword	0x1cb
	.byte	0x1
	.uaword	0x1149
	.uleb128 0xa
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.uaword	.LASF5
	.byte	0x1
	.byte	0x57
	.uaword	0x1cb
	.byte	0x1
	.uaword	0x115c
	.uleb128 0xa
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.uaword	.LASF7
	.byte	0x1
	.byte	0x6e
	.uaword	0x1cb
	.byte	0x1
	.uaword	0x116f
	.uleb128 0xa
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.uaword	.LASF8
	.byte	0x1
	.byte	0x7c
	.uaword	0x1cb
	.byte	0x1
	.uaword	0x1182
	.uleb128 0xa
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.string	"printf_SysLog"
	.byte	0x3
	.byte	0x13
	.byte	0x1
	.byte	0x1
	.uaword	0x11a1
	.uleb128 0x27
	.uaword	0x2b2
	.uleb128 0xa
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.string	"printf_CAN"
	.byte	0x4
	.byte	0x48
	.byte	0x1
	.byte	0x1
	.uaword	0x11c2
	.uleb128 0x27
	.uaword	0x1e1
	.uleb128 0x27
	.uaword	0x1042
	.uleb128 0xa
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.uaword	.LASF9
	.byte	0x1
	.byte	0x74
	.uaword	0x1cb
	.byte	0x1
	.uleb128 0xa
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
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
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
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL28-.Ltext0
	.uaword	.LVL29-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL29-1-.Ltext0
	.uaword	.LFE402-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL28-.Ltext0
	.uaword	.LVL29-1-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL29-1-.Ltext0
	.uaword	.LFE402-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL30-.Ltext0
	.uaword	.LVL31-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL31-1-.Ltext0
	.uaword	.LFE403-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL30-.Ltext0
	.uaword	.LVL31-1-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL31-1-.Ltext0
	.uaword	.LFE403-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL30-.Ltext0
	.uaword	.LVL31-1-.Ltext0
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL31-1-.Ltext0
	.uaword	.LFE403-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL32-.Ltext0
	.uaword	.LVL34-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL34-1-.Ltext0
	.uaword	.LFE404-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL32-.Ltext0
	.uaword	.LVL34-1-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL34-1-.Ltext0
	.uaword	.LFE404-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL32-.Ltext0
	.uaword	.LVL34-1-.Ltext0
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL34-1-.Ltext0
	.uaword	.LFE404-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL32-.Ltext0
	.uaword	.LVL34-1-.Ltext0
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL34-1-.Ltext0
	.uaword	.LFE404-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL32-.Ltext0
	.uaword	.LVL33-.Ltext0
	.uahalf	0x2
	.byte	0x91
	.sleb128 4
	.uaword	.LVL33-.Ltext0
	.uaword	.LFE404-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL35-.Ltext0
	.uaword	.LVL37-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL37-1-.Ltext0
	.uaword	.LFE405-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL35-.Ltext0
	.uaword	.LVL37-1-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL37-1-.Ltext0
	.uaword	.LFE405-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL35-.Ltext0
	.uaword	.LVL37-1-.Ltext0
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL37-1-.Ltext0
	.uaword	.LFE405-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL35-.Ltext0
	.uaword	.LVL37-1-.Ltext0
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL37-1-.Ltext0
	.uaword	.LFE405-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL35-.Ltext0
	.uaword	.LVL36-.Ltext0
	.uahalf	0x2
	.byte	0x91
	.sleb128 0
	.uaword	.LVL36-.Ltext0
	.uaword	.LFE405-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL38-.Ltext0
	.uaword	.LVL39-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL39-1-.Ltext0
	.uaword	.LFE406-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL38-.Ltext0
	.uaword	.LVL39-1-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL39-1-.Ltext0
	.uaword	.LFE406-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL40-.Ltext0
	.uaword	.LVL45-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL45-1-.Ltext0
	.uaword	.LFE407-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL40-.Ltext0
	.uaword	.LVL45-1-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL45-1-.Ltext0
	.uaword	.LFE407-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL40-.Ltext0
	.uaword	.LVL45-1-.Ltext0
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL45-1-.Ltext0
	.uaword	.LFE407-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL40-.Ltext0
	.uaword	.LVL45-1-.Ltext0
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL45-1-.Ltext0
	.uaword	.LFE407-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL40-.Ltext0
	.uaword	.LVL41-.Ltext0
	.uahalf	0x2
	.byte	0x91
	.sleb128 0
	.uaword	.LVL41-.Ltext0
	.uaword	.LVL45-1-.Ltext0
	.uahalf	0x1
	.byte	0x50
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL40-.Ltext0
	.uaword	.LVL42-.Ltext0
	.uahalf	0x2
	.byte	0x91
	.sleb128 4
	.uaword	.LVL42-.Ltext0
	.uaword	.LVL45-1-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL40-.Ltext0
	.uaword	.LVL45-1-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL45-1-.Ltext0
	.uaword	.LFE407-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL40-.Ltext0
	.uaword	.LVL43-.Ltext0
	.uahalf	0x2
	.byte	0x91
	.sleb128 8
	.uaword	.LVL43-.Ltext0
	.uaword	.LFE407-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL40-.Ltext0
	.uaword	.LVL44-.Ltext0
	.uahalf	0x2
	.byte	0x91
	.sleb128 12
	.uaword	.LVL44-.Ltext0
	.uaword	.LVL45-1-.Ltext0
	.uahalf	0x1
	.byte	0x52
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
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB46-.Ltext0
	.uaword	.LBE46-.Ltext0
	.uaword	.LBB52-.Ltext0
	.uaword	.LBE52-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB49-.Ltext0
	.uaword	.LBE49-.Ltext0
	.uaword	.LBB53-.Ltext0
	.uaword	.LBE53-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB88-.Ltext0
	.uaword	.LBE88-.Ltext0
	.uaword	.LBB91-.Ltext0
	.uaword	.LBE91-.Ltext0
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF0:
	.string	"IO_set_CAN_BitRate"
.LASF9:
	.string	"Get_CAN_RxBuffer"
.LASF4:
	.string	"Set_CAN_BitTiming"
.LASF1:
	.string	"num_ch"
.LASF2:
	.string	"Set_CAN_Module"
.LASF3:
	.string	"Set_CAN_BitRate"
.LASF5:
	.string	"Set_CAN_Enable"
.LASF7:
	.string	"Set_CAN_msgObject"
.LASF8:
	.string	"Set_CAN_Rx"
.LASF6:
	.string	"num_msgObj"
	.extern	Get_CAN_RxBuffer,STT_FUNC,0
	.extern	printf_CAN,STT_FUNC,0
	.extern	ISR_CAN_msgObj_3,STT_FUNC,0
	.extern	ISR_CAN_msgObj_2,STT_FUNC,0
	.extern	ISR_CAN_msgObj_1,STT_FUNC,0
	.extern	Set_CAN_Rx,STT_FUNC,0
	.extern	ISR_CAN_msgObj_0,STT_FUNC,0
	.extern	Set_CAN_msgObject,STT_FUNC,0
	.extern	Set_CAN_Enable,STT_FUNC,0
	.extern	Set_CAN_BitTiming,STT_FUNC,0
	.extern	Set_CAN_BitRate,STT_FUNC,0
	.extern	Set_CAN_Module,STT_FUNC,0
	.extern	printf_SysLog,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.1.0-infineon-2.0-df254e8) 4.9.4 build on 2018-04-18"
