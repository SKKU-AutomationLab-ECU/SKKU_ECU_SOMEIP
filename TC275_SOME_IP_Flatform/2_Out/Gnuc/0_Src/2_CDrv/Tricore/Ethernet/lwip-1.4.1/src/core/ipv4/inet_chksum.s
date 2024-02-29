	.file	"inet_chksum.c"
.section .text,"ax",@progbits
.Ltext0:
	.align 1
	.type	lwip_standard_chksum, @function
lwip_standard_chksum:
.LFB0:
	.file 1 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/ipv4/inet_chksum.c"
	.loc 1 136 0
.LVL0:
	.loc 1 138 0
	mov	%d15, 0
	.loc 1 136 0
	sub.a	%SP, 8
.LCFI0:
	.loc 1 140 0
	mov.d	%d5, %a4
	.loc 1 138 0
	st.h	[%SP] 6, %d15
.LVL1:
	.loc 1 140 0
	and	%d3, %d5, 1
.LVL2:
	.loc 1 143 0
	ge	%d15, %d4, 1
	and	%d15, %d3
	jz	%d15, .L2
.LVL3:
	.loc 1 144 0
	ld.bu	%d15, [%a4]0
	st.b	[%SP] 7, %d15
	.loc 1 145 0
	add	%d4, -1
.LVL4:
	.loc 1 144 0
	add.a	%a4, 1
.LVL5:
.L2:
	.loc 1 139 0
	mov	%d2, 0
	.loc 1 150 0
	jlt	%d4, 2, .L3
	add	%d15, %d4, -2
	sh	%d5, %d15, -1
.LVL6:
	ge	%d15, %d15, 0
	sel	%d15, %d15, %d5, 0
	mov.a	%a15, %d15
	mov.aa	%a2, %a4
.LVL7:
.L4:
	.loc 1 151 0
	ld.hu	%d15, [%a2]0
	add.a	%a2, 2
.LVL8:
	add	%d2, %d15
.LVL9:
	loop	%a15, .L4
	add	%d4, -2
	sh	%d15, %d4, -1
	add	%d5, %d15, 1
	mul	%d15, %d15, -2
	addsc.a	%a4, %a4, %d5, 1
.LVL10:
	add	%d4, %d15
.LVL11:
.L3:
	.loc 1 156 0
	jne	%d4, 1, .L5
	.loc 1 157 0
	ld.bu	%d15, [%a4]0
	st.b	[%SP] 6, %d15
.L5:
	.loc 1 161 0
	ld.hu	%d15, [%SP] 6
	add	%d2, %d15
.LVL12:
	.loc 1 165 0
	sh	%d4, %d2, -16
	insert	%d2, %d2, 0, 16, 16
.LVL13:
	add	%d15, %d2, %d4
.LVL14:
	.loc 1 166 0
	insert	%d2, %d15, 0, 16, 16
	sh	%d4, %d15, -16
	add	%d2, %d4
.LVL15:
	.loc 1 169 0
	jz	%d3, .L6
	.loc 1 170 0
	sh	%d15, %d2, 8
	insert	%d15, %d15, 0, 16, 16
	extr.u	%d2, %d2, 8, 8
.LVL16:
	or	%d2, %d15
.LVL17:
.L6:
	.loc 1 174 0
	extr.u	%d2, %d2, 0, 16
.LVL18:
	ret
.LFE0:
	.size	lwip_standard_chksum, .-lwip_standard_chksum
	.align 1
	.global	inet_chksum_pseudo
	.type	inet_chksum_pseudo, @function
inet_chksum_pseudo:
.LFB1:
	.loc 1 275 0
.LVL19:
	.loc 1 275 0
	mov.aa	%a15, %a4
	mov.aa	%a13, %a5
	mov.aa	%a12, %a6
	mov	%d9, %d4
	mov	%d10, %d5
	.loc 1 281 0
	mov	%d15, 0
	.loc 1 284 0
	jz.a	%a4, .L18
	mov	%d8, 0
.LVL20:
.L20:
	.loc 1 287 0
	ld.a	%a4, [%a15] 4
	ld.hu	%d4, [%a15] 10
	call	lwip_standard_chksum
.LVL21:
	add	%d2, %d15
.LVL22:
	.loc 1 291 0
	sh	%d3, %d2, -16
	insert	%d15, %d2, 0, 16, 16
	.loc 1 292 0
	ld.h	%d2, [%a15] 10
.LVL23:
	.loc 1 291 0
	add	%d15, %d3
.LVL24:
	.loc 1 292 0
	jz.t	%d2, 0, .L19
	.loc 1 294 0
	sh	%d2, %d15, 8
	insert	%d2, %d2, 0, 16, 16
	extr.u	%d15, %d15, 8, 8
.LVL25:
	.loc 1 293 0
	rsub	%d8, %d8, 1
.LVL26:
	and	%d8, %d8, 255
.LVL27:
	.loc 1 294 0
	or	%d15, %d2
.LVL28:
.L19:
	.loc 1 284 0 discriminator 2
	ld.a	%a15, [%a15]0
.LVL29:
	jnz.a	%a15, .L20
	.loc 1 299 0
	jz	%d8, .L18
	.loc 1 300 0
	sh	%d2, %d15, 8
	insert	%d2, %d2, 0, 16, 16
	extr.u	%d15, %d15, 8, 8
.LVL30:
	or	%d15, %d2
.LVL31:
.L18:
	.loc 1 302 0
	ld.w	%d2, [%a13]0
.LVL32:
	.loc 1 305 0
	ld.w	%d3, [%a12]0
.LVL33:
	.loc 1 304 0
	sh	%d4, %d2, -16
.LVL34:
	.loc 1 303 0
	insert	%d2, %d2, 0, 16, 16
.LVL35:
	add	%d2, %d4
	.loc 1 306 0
	insert	%d4, %d3, 0, 16, 16
.LVL36:
	.loc 1 307 0
	sh	%d3, %d3, -16
.LVL37:
	add	%d4, %d2
.LVL38:
	add	%d3, %d4
	.loc 1 308 0
	mov	%d4, %d9
	.loc 1 307 0
	add	%d15, %d3
.LVL39:
	.loc 1 308 0
	call	lwip_htons
.LVL40:
	.loc 1 309 0
	mov	%d4, %d10
	.loc 1 308 0
	add	%d15, %d2
.LVL41:
	.loc 1 309 0
	call	lwip_htons
.LVL42:
	add	%d2, %d15
.LVL43:
	.loc 1 313 0
	sh	%d3, %d2, -16
	insert	%d2, %d2, 0, 16, 16
.LVL44:
	add	%d2, %d3
.LVL45:
	.loc 1 314 0
	sh	%d15, %d2, -16
	insert	%d2, %d2, 0, 16, 16
.LVL46:
	add	%d2, %d15
.LVL47:
	.loc 1 316 0
	not	%d2
.LVL48:
	.loc 1 317 0
	extr.u	%d2, %d2, 0, 16
.LVL49:
	ret
.LFE1:
	.size	inet_chksum_pseudo, .-inet_chksum_pseudo
.section .rodata,"a",@progbits
.LC0:
	.string	"Assertion \"%s\" failed at line %d in %s\n"
.LC1:
	.string	"delete me"
.LC2:
	.string	"0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/ipv4/inet_chksum.c"
.section .text,"ax",@progbits
	.align 1
	.global	inet_chksum_pseudo_partial
	.type	inet_chksum_pseudo_partial, @function
inet_chksum_pseudo_partial:
.LFB2:
	.loc 1 335 0
.LVL50:
	sub.a	%SP, 24
.LCFI1:
	.loc 1 345 0
	mov.d	%d3, %a4
	ne	%d2, %d6, 0
	.loc 1 335 0
	st.w	[%SP] 20, %d5
	.loc 1 345 0
	and.ne	%d2, %d3, 0
	.loc 1 335 0
	mov.aa	%a15, %a4
	mov.aa	%a13, %a5
	mov.aa	%a14, %a6
	mov	%d14, %d4
	mov	%d15, %d6
	.loc 1 342 0
	mov	%d8, 0
	.loc 1 345 0
	jz	%d2, .L31
	.loc 1 354 0
	movh.a	%a12, hi:.LC0
	movh	%d13, hi:.LC1
	movh	%d12, hi:.LC2
	.loc 1 345 0
	mov	%d10, 0
	.loc 1 354 0
	mov	%d11, 32767
	lea	%a12, [%a12] lo:.LC0
	addi	%d13, %d13, lo:.LC1
	addi	%d12, %d12, lo:.LC2
	j	.L34
.LVL51:
.L32:
	.loc 1 357 0
	sh	%d2, %d8, -16
	insert	%d8, %d8, 0, 16, 16
.LVL52:
	add	%d8, %d2
.LVL53:
	.loc 1 358 0
	ld.h	%d2, [%a15] 10
	jz.t	%d2, 0, .L33
	.loc 1 360 0
	sh	%d2, %d8, 8
	insert	%d2, %d2, 0, 16, 16
	extr.u	%d8, %d8, 8, 8
.LVL54:
	.loc 1 359 0
	rsub	%d10, %d10, 1
.LVL55:
	and	%d10, %d10, 255
.LVL56:
	.loc 1 360 0
	or	%d8, %d2
.LVL57:
.L33:
	.loc 1 345 0 discriminator 2
	ld.a	%a15, [%a15]0
.LVL58:
	mov.d	%d3, %a15
	ne	%d2, %d3, 0
	and.ne	%d2, %d15, 0
	jz	%d2, .L44
.LVL59:
.L34:
	.loc 1 348 0
	ld.hu	%d9, [%a15] 10
.LVL60:
	.loc 1 352 0
	ld.a	%a4, [%a15] 4
	min.u	%d9, %d15, %d9
.LVL61:
	.loc 1 353 0
	sub	%d15, %d9
.LVL62:
	.loc 1 352 0
	mov	%d4, %d9
	.loc 1 353 0
	extr.u	%d15, %d15, 0, 16
	.loc 1 352 0
	call	lwip_standard_chksum
.LVL63:
	add	%d8, %d2
.LVL64:
	.loc 1 354 0
	jlt.u	%d15, %d11, .L32
	.loc 1 354 0 is_stmt 0 discriminator 1
	mov	%d2, 354
	st.w	[%SP]0, %d13
	st.w	[%SP] 8, %d12
	st.w	[%SP] 4, %d2
	mov.aa	%a4, %a12
	call	Ifx_Lwip_printf
.LVL65:
	j	.L32
.LVL66:
.L44:
	.loc 1 365 0 is_stmt 1
	jz	%d10, .L31
	.loc 1 366 0
	sh	%d15, %d8, 8
.LVL67:
	insert	%d15, %d15, 0, 16, 16
	extr.u	%d8, %d8, 8, 8
.LVL68:
	or	%d8, %d15
.LVL69:
.L31:
	.loc 1 368 0
	ld.w	%d2, [%a13]0
.LVL70:
	.loc 1 371 0
	ld.w	%d15, [%a14]0
.LVL71:
	.loc 1 370 0
	sh	%d3, %d2, -16
.LVL72:
	.loc 1 369 0
	insert	%d2, %d2, 0, 16, 16
.LVL73:
	.loc 1 374 0
	mov	%d4, %d14
	add	%d2, %d3
	.loc 1 372 0
	insert	%d3, %d15, 0, 16, 16
.LVL74:
	.loc 1 373 0
	sh	%d15, %d15, -16
.LVL75:
	add	%d3, %d2
.LVL76:
	add	%d15, %d3
	.loc 1 374 0
	call	lwip_htons
.LVL77:
	.loc 1 375 0
	ld.w	%d4, [%SP] 20
	.loc 1 373 0
	add	%d8, %d15
.LVL78:
	.loc 1 374 0
	add	%d8, %d2
.LVL79:
	.loc 1 375 0
	call	lwip_htons
.LVL80:
	add	%d2, %d8
.LVL81:
	.loc 1 379 0
	sh	%d15, %d2, -16
	insert	%d2, %d2, 0, 16, 16
.LVL82:
	add	%d2, %d15
.LVL83:
	.loc 1 380 0
	sh	%d15, %d2, -16
	insert	%d2, %d2, 0, 16, 16
.LVL84:
	add	%d2, %d15
.LVL85:
	.loc 1 382 0
	not	%d2
.LVL86:
	.loc 1 383 0
	extr.u	%d2, %d2, 0, 16
.LVL87:
	ret
.LFE2:
	.size	inet_chksum_pseudo_partial, .-inet_chksum_pseudo_partial
	.align 1
	.global	inet_chksum
	.type	inet_chksum, @function
inet_chksum:
.LFB3:
	.loc 1 397 0
.LVL88:
	.loc 1 398 0
	call	lwip_standard_chksum
.LVL89:
	not	%d2
	.loc 1 399 0
	extr.u	%d2, %d2, 0, 16
	ret
.LFE3:
	.size	inet_chksum, .-inet_chksum
	.align 1
	.global	inet_chksum_pbuf
	.type	inet_chksum_pbuf, @function
inet_chksum_pbuf:
.LFB4:
	.loc 1 410 0
.LVL90:
	.loc 1 410 0
	mov.aa	%a15, %a4
	.loc 1 417 0
	mov.u	%d2, 65535
	jz.a	%a4, .L47
	mov	%d8, 0
	mov	%d15, 0
.LVL91:
.L49:
	.loc 1 418 0
	ld.a	%a4, [%a15] 4
	ld.hu	%d4, [%a15] 10
	call	lwip_standard_chksum
.LVL92:
	add	%d2, %d15
.LVL93:
	.loc 1 419 0
	sh	%d3, %d2, -16
	insert	%d15, %d2, 0, 16, 16
	.loc 1 420 0
	ld.h	%d2, [%a15] 10
.LVL94:
	.loc 1 419 0
	add	%d15, %d3
.LVL95:
	.loc 1 420 0
	jz.t	%d2, 0, .L48
	.loc 1 422 0
	sh	%d2, %d15, 8
	insert	%d2, %d2, 0, 16, 16
	extr.u	%d15, %d15, 8, 8
.LVL96:
	.loc 1 421 0
	rsub	%d8, %d8, 1
.LVL97:
	and	%d8, %d8, 255
.LVL98:
	.loc 1 422 0
	or	%d15, %d2
.LVL99:
.L48:
	.loc 1 417 0 discriminator 2
	ld.a	%a15, [%a15]0
.LVL100:
	jnz.a	%a15, .L49
	.loc 1 427 0
	sh	%d2, %d15, 8
	insert	%d2, %d2, 0, 16, 16
	extr.u	%d3, %d15, 8, 8
.LVL101:
	or	%d2, %d3
.LVL102:
	not	%d2
.LVL103:
	extr.u	%d2, %d2, 0, 16
.LVL104:
	.loc 1 426 0
	jz	%d8, .L57
.LVL105:
.L47:
	.loc 1 430 0
	ret
.LVL106:
.L57:
	not	%d15
.LVL107:
	extr.u	%d2, %d15, 0, 16
.LVL108:
	ret
.LFE4:
	.size	inet_chksum_pbuf, .-inet_chksum_pbuf
	.align 1
	.global	lwip_chksum_copy
	.type	lwip_chksum_copy, @function
lwip_chksum_copy:
.LFB5:
	.loc 1 446 0
.LVL109:
	.loc 1 447 0
	mov.a	%a15, %d4
	mov.aa	%a2, %a4
		# #chunks=%a15, chunksize=1, remains=0
	j	1f
	0:
	ld.bu	%d15, [%a5+]1
	st.b	[%a2+]1, %d15
	1:
	loop	%a15, 0b
.LVL110:
	.loc 1 448 0
	j	lwip_standard_chksum
.LVL111:
.LFE5:
	.size	lwip_chksum_copy, .-lwip_chksum_copy
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
	.uleb128 0x8
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
	.byte	0x4
	.uaword	.LCFI1-.LFB2
	.byte	0xe
	.uleb128 0x18
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
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB4
	.uaword	.LFE4-.LFB4
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB5
	.uaword	.LFE5-.LFB5
	.align 2
.LEFDE10:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "./0_Src/4_McHal/Tricore/Cpu/Std/Platform_Types.h"
	.file 3 "./0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/port/include/arch/cc.h"
	.file 4 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/pbuf.h"
	.file 5 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/ipv4/lwip/ip_addr.h"
	.file 6 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/def.h"
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
	.string	"0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/ipv4/inet_chksum.c"
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
	.uaword	0x1df
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x3
	.string	"uint8"
	.byte	0x2
	.byte	0x59
	.uaword	0x1fb
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x3
	.string	"sint16"
	.byte	0x2
	.byte	0x5a
	.uaword	0x21a
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x3
	.string	"uint16"
	.byte	0x2
	.byte	0x5b
	.uaword	0x235
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
	.uleb128 0x4
	.byte	0x4
	.uaword	0x29d
	.uleb128 0x5
	.uaword	0x2a2
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
	.uaword	0x1ee
	.uleb128 0x3
	.string	"u16_t"
	.byte	0x3
	.byte	0x8
	.uaword	0x227
	.uleb128 0x3
	.string	"u32_t"
	.byte	0x3
	.byte	0x9
	.uaword	0x24b
	.uleb128 0x3
	.string	"s8_t"
	.byte	0x3
	.byte	0xa
	.uaword	0x1d2
	.uleb128 0x3
	.string	"s16_t"
	.byte	0x3
	.byte	0xb
	.uaword	0x20c
	.uleb128 0x3
	.string	"mem_ptr_t"
	.byte	0x3
	.byte	0xe
	.uaword	0x2c5
	.uleb128 0x7
	.string	"pbuf"
	.byte	0x10
	.byte	0x4
	.byte	0x4f
	.uaword	0x36a
	.uleb128 0x8
	.string	"next"
	.byte	0x4
	.byte	0x51
	.uaword	0x36a
	.byte	0
	.uleb128 0x8
	.string	"payload"
	.byte	0x4
	.byte	0x54
	.uaword	0x2aa
	.byte	0x4
	.uleb128 0x8
	.string	"tot_len"
	.byte	0x4
	.byte	0x5d
	.uaword	0x2b8
	.byte	0x8
	.uleb128 0x8
	.string	"len"
	.byte	0x4
	.byte	0x60
	.uaword	0x2b8
	.byte	0xa
	.uleb128 0x8
	.string	"type"
	.byte	0x4
	.byte	0x63
	.uaword	0x2ac
	.byte	0xc
	.uleb128 0x8
	.string	"flags"
	.byte	0x4
	.byte	0x66
	.uaword	0x2ac
	.byte	0xd
	.uleb128 0x8
	.string	"ref"
	.byte	0x4
	.byte	0x6d
	.uaword	0x2b8
	.byte	0xe
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x2fc
	.uleb128 0x7
	.string	"ip_addr"
	.byte	0x4
	.byte	0x5
	.byte	0x2c
	.uaword	0x38e
	.uleb128 0x8
	.string	"addr"
	.byte	0x5
	.byte	0x2d
	.uaword	0x2c5
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"ip_addr_t"
	.byte	0x5
	.byte	0x40
	.uaword	0x370
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x9
	.string	"lwip_standard_chksum"
	.byte	0x1
	.byte	0x87
	.byte	0x1
	.uaword	0x2b8
	.uaword	.LFB0
	.uaword	.LFE0
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x44e
	.uleb128 0xa
	.string	"dataptr"
	.byte	0x1
	.byte	0x87
	.uaword	0x2aa
	.uaword	.LLST0
	.uleb128 0xa
	.string	"len"
	.byte	0x1
	.byte	0x87
	.uaword	0x1cb
	.uaword	.LLST1
	.uleb128 0xb
	.string	"pb"
	.byte	0x1
	.byte	0x89
	.uaword	0x44e
	.uaword	.LLST2
	.uleb128 0xb
	.string	"ps"
	.byte	0x1
	.byte	0x8a
	.uaword	0x454
	.uaword	.LLST3
	.uleb128 0xc
	.string	"t"
	.byte	0x1
	.byte	0x8a
	.uaword	0x2b8
	.byte	0x2
	.byte	0x91
	.sleb128 -2
	.uleb128 0xb
	.string	"sum"
	.byte	0x1
	.byte	0x8b
	.uaword	0x2c5
	.uaword	.LLST4
	.uleb128 0xc
	.string	"odd"
	.byte	0x1
	.byte	0x8c
	.uaword	0x1cb
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x2ac
	.uleb128 0x4
	.byte	0x4
	.uaword	0x2b8
	.uleb128 0xd
	.byte	0x1
	.string	"inet_chksum_pseudo"
	.byte	0x1
	.uahalf	0x110
	.byte	0x1
	.uaword	0x2b8
	.uaword	.LFB1
	.uaword	.LFE1
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x544
	.uleb128 0xe
	.string	"p"
	.byte	0x1
	.uahalf	0x110
	.uaword	0x36a
	.uaword	.LLST5
	.uleb128 0xe
	.string	"src"
	.byte	0x1
	.uahalf	0x111
	.uaword	0x544
	.uaword	.LLST6
	.uleb128 0xe
	.string	"dest"
	.byte	0x1
	.uahalf	0x111
	.uaword	0x544
	.uaword	.LLST7
	.uleb128 0xe
	.string	"proto"
	.byte	0x1
	.uahalf	0x112
	.uaword	0x2ac
	.uaword	.LLST8
	.uleb128 0xf
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x112
	.uaword	0x2b8
	.uaword	.LLST9
	.uleb128 0x10
	.string	"acc"
	.byte	0x1
	.uahalf	0x114
	.uaword	0x2c5
	.uaword	.LLST10
	.uleb128 0x10
	.string	"addr"
	.byte	0x1
	.uahalf	0x115
	.uaword	0x2c5
	.uaword	.LLST11
	.uleb128 0x10
	.string	"q"
	.byte	0x1
	.uahalf	0x116
	.uaword	0x36a
	.uaword	.LLST12
	.uleb128 0x11
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x117
	.uaword	0x2ac
	.uaword	.LLST13
	.uleb128 0x12
	.uaword	.LVL21
	.uaword	0x3bb
	.uleb128 0x13
	.uaword	.LVL40
	.uaword	0x7dc
	.uaword	0x533
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.uaword	.LVL42
	.uaword	0x7dc
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x38e
	.uleb128 0xd
	.byte	0x1
	.string	"inet_chksum_pseudo_partial"
	.byte	0x1
	.uahalf	0x14c
	.byte	0x1
	.uaword	0x2b8
	.uaword	.LFB2
	.uaword	.LFE2
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x69d
	.uleb128 0xe
	.string	"p"
	.byte	0x1
	.uahalf	0x14c
	.uaword	0x36a
	.uaword	.LLST14
	.uleb128 0xe
	.string	"src"
	.byte	0x1
	.uahalf	0x14d
	.uaword	0x544
	.uaword	.LLST15
	.uleb128 0xe
	.string	"dest"
	.byte	0x1
	.uahalf	0x14d
	.uaword	0x544
	.uaword	.LLST16
	.uleb128 0xe
	.string	"proto"
	.byte	0x1
	.uahalf	0x14e
	.uaword	0x2ac
	.uaword	.LLST17
	.uleb128 0xf
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x14e
	.uaword	0x2b8
	.uaword	.LLST18
	.uleb128 0xe
	.string	"chksum_len"
	.byte	0x1
	.uahalf	0x14e
	.uaword	0x2b8
	.uaword	.LLST19
	.uleb128 0x10
	.string	"acc"
	.byte	0x1
	.uahalf	0x150
	.uaword	0x2c5
	.uaword	.LLST20
	.uleb128 0x10
	.string	"addr"
	.byte	0x1
	.uahalf	0x151
	.uaword	0x2c5
	.uaword	.LLST21
	.uleb128 0x10
	.string	"q"
	.byte	0x1
	.uahalf	0x152
	.uaword	0x36a
	.uaword	.LLST22
	.uleb128 0x11
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x153
	.uaword	0x2ac
	.uaword	.LLST23
	.uleb128 0x10
	.string	"chklen"
	.byte	0x1
	.uahalf	0x154
	.uaword	0x2b8
	.uaword	.LLST24
	.uleb128 0x13
	.uaword	.LVL63
	.uaword	0x3bb
	.uaword	0x64c
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.uaword	.LVL65
	.uaword	0x7fb
	.uaword	0x676
	.uleb128 0x14
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0x14
	.byte	0x2
	.byte	0x8a
	.sleb128 8
	.byte	0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x14
	.byte	0x2
	.byte	0x8a
	.sleb128 4
	.byte	0x3
	.byte	0xa
	.uahalf	0x162
	.uleb128 0x14
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.uaword	.LVL77
	.uaword	0x7dc
	.uaword	0x68a
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.uaword	.LVL80
	.uaword	0x7dc
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x4
	.byte	0x91
	.sleb128 -4
	.byte	0x94
	.byte	0x2
	.byte	0
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.string	"inet_chksum"
	.byte	0x1
	.uahalf	0x18c
	.byte	0x1
	.uaword	0x2b8
	.uaword	.LFB3
	.uaword	.LFE3
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x6f8
	.uleb128 0xe
	.string	"dataptr"
	.byte	0x1
	.uahalf	0x18c
	.uaword	0x2aa
	.uaword	.LLST25
	.uleb128 0xe
	.string	"len"
	.byte	0x1
	.uahalf	0x18c
	.uaword	0x2b8
	.uaword	.LLST26
	.uleb128 0x15
	.uaword	.LVL89
	.uaword	0x3bb
	.uleb128 0x14
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.string	"inet_chksum_pbuf"
	.byte	0x1
	.uahalf	0x199
	.byte	0x1
	.uaword	0x2b8
	.uaword	.LFB4
	.uaword	.LFE4
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x768
	.uleb128 0xe
	.string	"p"
	.byte	0x1
	.uahalf	0x199
	.uaword	0x36a
	.uaword	.LLST27
	.uleb128 0x10
	.string	"acc"
	.byte	0x1
	.uahalf	0x19b
	.uaword	0x2c5
	.uaword	.LLST28
	.uleb128 0x10
	.string	"q"
	.byte	0x1
	.uahalf	0x19c
	.uaword	0x36a
	.uaword	.LLST29
	.uleb128 0x11
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x19d
	.uaword	0x2ac
	.uaword	.LLST30
	.uleb128 0x12
	.uaword	.LVL92
	.uaword	0x3bb
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.string	"lwip_chksum_copy"
	.byte	0x1
	.uahalf	0x1bd
	.byte	0x1
	.uaword	0x2b8
	.uaword	.LFB5
	.uaword	.LFE5
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x7d5
	.uleb128 0xe
	.string	"dst"
	.byte	0x1
	.uahalf	0x1bd
	.uaword	0x2aa
	.uaword	.LLST31
	.uleb128 0xe
	.string	"src"
	.byte	0x1
	.uahalf	0x1bd
	.uaword	0x7d5
	.uaword	.LLST32
	.uleb128 0xe
	.string	"len"
	.byte	0x1
	.uahalf	0x1bd
	.uaword	0x2b8
	.uaword	.LLST33
	.uleb128 0x16
	.uaword	.LVL111
	.byte	0x1
	.uaword	0x3bb
	.uleb128 0x14
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x7db
	.uleb128 0x17
	.uleb128 0x18
	.byte	0x1
	.string	"lwip_htons"
	.byte	0x6
	.byte	0x63
	.byte	0x1
	.uaword	0x2b8
	.byte	0x1
	.uaword	0x7fb
	.uleb128 0x19
	.uaword	0x2b8
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.string	"Ifx_Lwip_printf"
	.byte	0x3
	.byte	0x2c
	.byte	0x1
	.uaword	0x2d2
	.byte	0x1
	.uleb128 0x19
	.uaword	0x297
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x11
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
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
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0-.Ltext0
	.uaword	.LVL5-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL5-.Ltext0
	.uaword	.LVL6-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL6-.Ltext0
	.uaword	.LFE0-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0-.Ltext0
	.uaword	.LVL4-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL4-.Ltext0
	.uaword	.LVL7-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL0-.Ltext0
	.uaword	.LVL3-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL3-.Ltext0
	.uaword	.LVL5-.Ltext0
	.uahalf	0x3
	.byte	0x84
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL5-.Ltext0
	.uaword	.LVL10-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL5-.Ltext0
	.uaword	.LVL7-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL7-.Ltext0
	.uaword	.LVL8-.Ltext0
	.uahalf	0x3
	.byte	0x82
	.sleb128 2
	.byte	0x9f
	.uaword	.LVL8-.Ltext0
	.uaword	.LVL9-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL1-.Ltext0
	.uaword	.LVL7-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL7-.Ltext0
	.uaword	.LVL11-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL12-.Ltext0
	.uaword	.LVL13-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL14-.Ltext0
	.uaword	.LVL15-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL15-.Ltext0
	.uaword	.LVL16-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL17-.Ltext0
	.uaword	.LVL18-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL19-.Ltext0
	.uaword	.LVL20-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL20-.Ltext0
	.uaword	.LFE1-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL19-.Ltext0
	.uaword	.LVL20-.Ltext0
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL20-.Ltext0
	.uaword	.LFE1-.Ltext0
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL19-.Ltext0
	.uaword	.LVL20-.Ltext0
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL20-.Ltext0
	.uaword	.LFE1-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL19-.Ltext0
	.uaword	.LVL20-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL20-.Ltext0
	.uaword	.LFE1-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL19-.Ltext0
	.uaword	.LVL20-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL20-.Ltext0
	.uaword	.LFE1-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL19-.Ltext0
	.uaword	.LVL20-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL20-.Ltext0
	.uaword	.LVL22-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL22-.Ltext0
	.uaword	.LVL23-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL24-.Ltext0
	.uaword	.LVL25-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL28-.Ltext0
	.uaword	.LVL30-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL31-.Ltext0
	.uaword	.LVL32-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL32-.Ltext0
	.uaword	.LVL33-.Ltext0
	.uahalf	0xf
	.byte	0x72
	.sleb128 0
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x7f
	.sleb128 0
	.byte	0x22
	.byte	0x72
	.sleb128 0
	.byte	0x40
	.byte	0x25
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL33-.Ltext0
	.uaword	.LVL34-.Ltext0
	.uahalf	0x16
	.byte	0x72
	.sleb128 0
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x7f
	.sleb128 0
	.byte	0x22
	.byte	0x72
	.sleb128 0
	.byte	0x40
	.byte	0x25
	.byte	0x22
	.byte	0x73
	.sleb128 0
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL34-.Ltext0
	.uaword	.LVL35-.Ltext0
	.uahalf	0x14
	.byte	0x72
	.sleb128 0
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x7f
	.sleb128 0
	.byte	0x22
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x73
	.sleb128 0
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL35-.Ltext0
	.uaword	.LVL36-.Ltext0
	.uahalf	0x15
	.byte	0x8d
	.sleb128 0
	.byte	0x6
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x7f
	.sleb128 0
	.byte	0x22
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x73
	.sleb128 0
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL36-.Ltext0
	.uaword	.LVL38-.Ltext0
	.uahalf	0x14
	.byte	0x8d
	.sleb128 0
	.byte	0x6
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x8d
	.sleb128 0
	.byte	0x6
	.byte	0x40
	.byte	0x25
	.byte	0x22
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x7f
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL38-.Ltext0
	.uaword	.LVL39-.Ltext0
	.uahalf	0x19
	.byte	0x8d
	.sleb128 0
	.byte	0x6
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x7f
	.sleb128 0
	.byte	0x22
	.byte	0x8d
	.sleb128 0
	.byte	0x6
	.byte	0x40
	.byte	0x25
	.byte	0x22
	.byte	0x8c
	.sleb128 0
	.byte	0x6
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL39-.Ltext0
	.uaword	.LVL43-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL43-.Ltext0
	.uaword	.LVL44-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL45-.Ltext0
	.uaword	.LVL46-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL46-.Ltext0
	.uaword	.LVL47-.Ltext0
	.uahalf	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL47-.Ltext0
	.uaword	.LVL48-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL48-.Ltext0
	.uaword	.LVL49-.Ltext0
	.uahalf	0x4
	.byte	0x72
	.sleb128 0
	.byte	0x20
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL32-.Ltext0
	.uaword	.LVL33-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL33-.Ltext0
	.uaword	.LVL37-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL37-.Ltext0
	.uaword	.LVL40-1-.Ltext0
	.uahalf	0x2
	.byte	0x8c
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL19-.Ltext0
	.uaword	.LVL20-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL20-.Ltext0
	.uaword	.LFE1-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL19-.Ltext0
	.uaword	.LVL20-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL20-.Ltext0
	.uaword	.LVL26-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL27-.Ltext0
	.uaword	.LVL31-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL50-.Ltext0
	.uaword	.LVL51-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL51-.Ltext0
	.uaword	.LFE2-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL50-.Ltext0
	.uaword	.LVL51-.Ltext0
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL51-.Ltext0
	.uaword	.LFE2-.Ltext0
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL50-.Ltext0
	.uaword	.LVL51-.Ltext0
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL51-.Ltext0
	.uaword	.LFE2-.Ltext0
	.uahalf	0x1
	.byte	0x6e
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL50-.Ltext0
	.uaword	.LVL51-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL51-.Ltext0
	.uaword	.LFE2-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL50-.Ltext0
	.uaword	.LVL51-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL51-.Ltext0
	.uaword	.LFE2-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL50-.Ltext0
	.uaword	.LVL51-.Ltext0
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL51-.Ltext0
	.uaword	.LVL62-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL64-.Ltext0
	.uaword	.LVL67-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL50-.Ltext0
	.uaword	.LVL51-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL51-.Ltext0
	.uaword	.LVL52-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL53-.Ltext0
	.uaword	.LVL54-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL57-.Ltext0
	.uaword	.LVL68-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL69-.Ltext0
	.uaword	.LVL70-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL70-.Ltext0
	.uaword	.LVL71-.Ltext0
	.uahalf	0xf
	.byte	0x72
	.sleb128 0
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x72
	.sleb128 0
	.byte	0x40
	.byte	0x25
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL71-.Ltext0
	.uaword	.LVL72-.Ltext0
	.uahalf	0x16
	.byte	0x72
	.sleb128 0
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x72
	.sleb128 0
	.byte	0x40
	.byte	0x25
	.byte	0x22
	.byte	0x7f
	.sleb128 0
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL72-.Ltext0
	.uaword	.LVL73-.Ltext0
	.uahalf	0x14
	.byte	0x72
	.sleb128 0
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x7f
	.sleb128 0
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL73-.Ltext0
	.uaword	.LVL74-.Ltext0
	.uahalf	0x15
	.byte	0x8d
	.sleb128 0
	.byte	0x6
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x7f
	.sleb128 0
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL74-.Ltext0
	.uaword	.LVL76-.Ltext0
	.uahalf	0x14
	.byte	0x8d
	.sleb128 0
	.byte	0x6
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x8d
	.sleb128 0
	.byte	0x6
	.byte	0x40
	.byte	0x25
	.byte	0x22
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL76-.Ltext0
	.uaword	.LVL77-1-.Ltext0
	.uahalf	0x19
	.byte	0x8d
	.sleb128 0
	.byte	0x6
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x8d
	.sleb128 0
	.byte	0x6
	.byte	0x40
	.byte	0x25
	.byte	0x22
	.byte	0x8e
	.sleb128 0
	.byte	0x6
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL78-.Ltext0
	.uaword	.LVL81-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL81-.Ltext0
	.uaword	.LVL82-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL83-.Ltext0
	.uaword	.LVL84-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL84-.Ltext0
	.uaword	.LVL85-.Ltext0
	.uahalf	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL85-.Ltext0
	.uaword	.LVL86-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL86-.Ltext0
	.uaword	.LVL87-.Ltext0
	.uahalf	0x4
	.byte	0x72
	.sleb128 0
	.byte	0x20
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL70-.Ltext0
	.uaword	.LVL71-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL71-.Ltext0
	.uaword	.LVL75-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL75-.Ltext0
	.uaword	.LVL77-1-.Ltext0
	.uahalf	0x2
	.byte	0x8e
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL50-.Ltext0
	.uaword	.LVL51-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL51-.Ltext0
	.uaword	.LVL59-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL59-.Ltext0
	.uaword	.LVL63-1-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL63-1-.Ltext0
	.uaword	.LVL66-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL66-.Ltext0
	.uaword	.LVL72-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL72-.Ltext0
	.uaword	.LFE2-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL50-.Ltext0
	.uaword	.LVL51-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL51-.Ltext0
	.uaword	.LVL55-.Ltext0
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL56-.Ltext0
	.uaword	.LVL69-.Ltext0
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL51-.Ltext0
	.uaword	.LVL59-.Ltext0
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL60-.Ltext0
	.uaword	.LVL61-.Ltext0
	.uahalf	0x2
	.byte	0x73
	.sleb128 10
	.uaword	.LVL61-.Ltext0
	.uaword	.LVL69-.Ltext0
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL88-.Ltext0
	.uaword	.LVL89-1-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL89-1-.Ltext0
	.uaword	.LFE3-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL88-.Ltext0
	.uaword	.LVL89-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL89-1-.Ltext0
	.uaword	.LFE3-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL90-.Ltext0
	.uaword	.LVL91-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL91-.Ltext0
	.uaword	.LFE4-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL90-.Ltext0
	.uaword	.LVL91-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL91-.Ltext0
	.uaword	.LVL93-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL93-.Ltext0
	.uaword	.LVL94-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL95-.Ltext0
	.uaword	.LVL96-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL99-.Ltext0
	.uaword	.LVL101-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL101-.Ltext0
	.uaword	.LVL102-.Ltext0
	.uahalf	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x21
	.byte	0x9f
	.uaword	.LVL102-.Ltext0
	.uaword	.LVL103-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL103-.Ltext0
	.uaword	.LVL104-.Ltext0
	.uahalf	0x4
	.byte	0x72
	.sleb128 0
	.byte	0x20
	.byte	0x9f
	.uaword	.LVL104-.Ltext0
	.uaword	.LVL105-.Ltext0
	.uahalf	0xc
	.byte	0x7f
	.sleb128 0
	.byte	0x38
	.byte	0x24
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x73
	.sleb128 0
	.byte	0x21
	.byte	0x9f
	.uaword	.LVL106-.Ltext0
	.uaword	.LVL107-.Ltext0
	.uahalf	0xc
	.byte	0x7f
	.sleb128 0
	.byte	0x38
	.byte	0x24
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x73
	.sleb128 0
	.byte	0x21
	.byte	0x9f
	.uaword	.LVL107-.Ltext0
	.uaword	.LVL108-.Ltext0
	.uahalf	0xd
	.byte	0x7f
	.sleb128 0
	.byte	0x20
	.byte	0x38
	.byte	0x24
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x73
	.sleb128 0
	.byte	0x21
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL90-.Ltext0
	.uaword	.LVL91-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL91-.Ltext0
	.uaword	.LFE4-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL90-.Ltext0
	.uaword	.LVL91-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL91-.Ltext0
	.uaword	.LVL97-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL98-.Ltext0
	.uaword	.LVL105-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL106-.Ltext0
	.uaword	.LFE4-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL109-.Ltext0
	.uaword	.LVL111-1-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL111-1-.Ltext0
	.uaword	.LFE5-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL109-.Ltext0
	.uaword	.LVL110-.Ltext0
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL109-.Ltext0
	.uaword	.LVL111-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL111-1-.Ltext0
	.uaword	.LFE5-.Ltext0
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
.LASF1:
	.string	"swapped"
.LASF0:
	.string	"proto_len"
	.extern	Ifx_Lwip_printf,STT_FUNC,0
	.extern	lwip_htons,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.1.0-infineon-2.0-df254e8) 4.9.4 build on 2018-04-18"
