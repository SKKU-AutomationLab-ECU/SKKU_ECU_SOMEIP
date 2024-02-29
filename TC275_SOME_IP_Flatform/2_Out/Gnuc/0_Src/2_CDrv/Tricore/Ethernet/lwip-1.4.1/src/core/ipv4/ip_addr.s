	.file	"ip_addr.c"
.section .text,"ax",@progbits
.Ltext0:
	.align 1
	.global	ip4_addr_isbroadcast
	.type	ip4_addr_isbroadcast, @function
ip4_addr_isbroadcast:
.LFB0:
	.file 1 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/ipv4/ip_addr.c"
	.loc 1 56 0
.LVL0:
	.loc 1 61 0
	addi	%d3, %d4, -1
	mov	%d15, -3
	.loc 1 63 0
	mov	%d2, 1
	.loc 1 61 0
	jlt.u	%d15, %d3, .L2
	.loc 1 65 0
	ld.bu	%d2, [%a4] 41
	and	%d2, %d2, 2
	and	%d2, %d2, 255
	jz	%d2, .L2
	.loc 1 70 0
	ld.w	%d15, [%a4] 4
	.loc 1 68 0
	mov	%d2, 0
	.loc 1 70 0
	jeq	%d15, %d4, .L2
	.loc 1 73 0
	ld.w	%d3, [%a4] 8
	xor	%d15, %d4
	and	%d15, %d3
	jnz	%d15, .L2
	.loc 1 75 0
	not	%d3
	and	%d2, %d4, %d3
	.loc 1 63 0
	eq	%d2, %d3, %d2
.L2:
	.loc 1 82 0
	ret
.LFE0:
	.size	ip4_addr_isbroadcast, .-ip4_addr_isbroadcast
	.align 1
	.global	ip4_addr_netmask_valid
	.type	ip4_addr_netmask_valid, @function
ip4_addr_netmask_valid:
.LFB1:
	.loc 1 91 0
.LVL1:
	.loc 1 93 0
	call	lwip_htonl
.LVL2:
	.loc 1 96 0
	movh	%d15, 32768
	lea	%a15, 31
.LVL3:
.L12:
	.loc 1 97 0
	and	%d3, %d15, %d2
	jz	%d3, .L11
	.loc 1 96 0 discriminator 2
	sh	%d15, -1
.LVL4:
	loop	%a15, .L12
.LVL5:
.L21:
	.loc 1 109 0
	mov	%d2, 1
.LVL6:
	.loc 1 110 0
	ret
.LVL7:
.L11:
	.loc 1 102 0
	jnz	%d15, .L19
	j	.L21
.L15:
	.loc 1 103 0
	and	%d3, %d2, %d15
	jnz	%d3, .L17
.LVL8:
.L19:
	.loc 1 102 0
	sh	%d15, -1
.LVL9:
	jnz	%d15, .L15
	j	.L21
.L17:
	.loc 1 105 0
	mov	%d2, 0
.LVL10:
	ret
.LFE1:
	.size	ip4_addr_netmask_valid, .-ip4_addr_netmask_valid
.section .rodata,"a",@progbits
.LC0:
	.string	"Assertion \"%s\" failed at line %d in %s\n"
.LC1:
	.string	"unhandled"
.LC2:
	.string	"0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/ipv4/ip_addr.c"
.section .text,"ax",@progbits
	.align 1
	.global	ipaddr_aton
	.type	ipaddr_aton, @function
ipaddr_aton:
.LFB3:
	.loc 1 153 0
.LVL11:
	.loc 1 160 0
	ld.b	%d15, [%a4]0
	.loc 1 153 0
	sub.a	%SP, 40
.LCFI0:
.LVL12:
	.loc 1 167 0
	addi	%d2, %d15, -48
	and	%d2, %d2, 255
	mov	%d1, 0
	lea	%a6, [%SP] 24
.LVL13:
	.loc 1 184 0
	mov	%d0, 97
	mov.a	%a2, 3
	.loc 1 167 0
	jge.u	%d2, 10, .L46
	.loc 1 171 0
	ne	%d2, %d15, 48
	addsc.a	%a3, %a6, %d1, 0
.LVL14:
	.loc 1 170 0
	mov	%d5, 10
	.loc 1 171 0
	jz	%d2, .L57
.LVL15:
.L25:
	.loc 1 180 0
	and	%d3, %d15, 255
	add.a	%a4, 1
	addi	%d4, %d3, -48
	.loc 1 174 0
	mov	%d2, 0
	ne	%d7, %d5, 16
	lea	%a15, [%a4] -1
.LVL16:
	.loc 1 180 0
	jge.u	%d4, 10, .L28
.LVL17:
.L58:
	.loc 1 181 0
	madd	%d2, %d15, %d2, %d5
.LVL18:
	.loc 1 182 0
	ld.b	%d15, [%a15] 1
	add.a	%a4, 1
	.loc 1 181 0
	addi	%d2, %d2, -48
.LVL19:
.L59:
	.loc 1 180 0
	and	%d3, %d15, 255
	addi	%d4, %d3, -48
	lea	%a15, [%a4] -1
.LVL20:
	jlt.u	%d4, 10, .L58
.LVL21:
.L28:
	.loc 1 183 0
	jnz	%d7, .L44
	.loc 1 183 0 is_stmt 0 discriminator 1
	andn	%d4, %d3, ~(-33)
	addi	%d6, %d3, -97
	addi	%d4, %d4, -65
	and	%d6, %d6, 255
	jge.u	%d4, 6, .L44
	.loc 1 184 0 is_stmt 1
	lt.u	%d3, %d6, 26
	addi	%d15, %d15, 10
	sel	%d3, %d3, %d0, 65
	sub	%d3, %d15, %d3
	sh	%d2, 4
.LVL22:
	or	%d2, %d3
.LVL23:
	.loc 1 185 0
	ld.b	%d15, [%a15] 1
.LVL24:
	add.a	%a4, 1
.LVL25:
	j	.L59
.LVL26:
.L44:
	.loc 1 189 0
	ne	%d4, %d15, 46
	mov	%d8, %d2
	jnz	%d4, .L32
	.loc 1 196 0
	loop	%a2, .L52
.LVL27:
.L46:
	.loc 1 217 0
	mov	%d15, 0
.LVL28:
.L24:
	.loc 1 250 0
	mov	%d2, %d15
	ret
.LVL29:
.L52:
	.loc 1 200 0
	ld.b	%d15, [%a15] 1
	.loc 1 199 0
	st.w	[%a3]0, %d2
	.loc 1 167 0
	addi	%d2, %d15, -48
.LVL30:
	and	%d2, %d2, 255
	.loc 1 200 0
	lea	%a4, [%a15] 1
.LVL31:
	add	%d1, 4
.LVL32:
	.loc 1 167 0
	jge.u	%d2, 10, .L46
	.loc 1 171 0
	ne	%d2, %d15, 48
	addsc.a	%a3, %a6, %d1, 0
.LVL33:
	.loc 1 170 0
	mov	%d5, 10
	.loc 1 171 0
	jnz	%d2, .L25
.LVL34:
.L57:
	.loc 1 172 0
	ld.b	%d15, [%a4] 1
.LVL35:
	.loc 1 173 0
	andn	%d2, %d15, ~(-33)
	eq	%d2, %d2, 88
	jz	%d2, .L60
.LVL36:
	.loc 1 175 0
	ld.b	%d15, [%a4] 2
.LVL37:
	.loc 1 174 0
	mov	%d5, 16
	.loc 1 175 0
	add.a	%a4, 2
.LVL38:
	j	.L25
.LVL39:
.L60:
	.loc 1 172 0
	add.a	%a4, 1
.LVL40:
	.loc 1 177 0
	mov	%d5, 8
	j	.L25
.LVL41:
.L32:
	.loc 1 207 0
	andn	%d15, %d15, ~(-33)
	jz	%d15, .L35
	.loc 1 207 0 is_stmt 0 discriminator 3
	addi	%d3, %d3, -9
	jge.u	%d3, 5, .L46
.L35:
	.loc 1 214 0 is_stmt 1
	sub.a	%a6, %a3, %a6
	mov.d	%d15, %a6
	sha	%d15, -2
	add	%d15, 1
	jlt.u	%d15, 5, .L61
	.loc 1 243 0 discriminator 1
	movh	%d15, hi:.LC1
	addi	%d15, %d15, lo:.LC1
	movh.a	%a4, hi:.LC0
	lea	%a4, [%a4] lo:.LC0
	st.w	[%SP]0, %d15
	mov	%d15, 243
	st.a	[%SP] 20, %a5
	st.w	[%SP] 4, %d15
	movh	%d15, hi:.LC2
	addi	%d15, %d15, lo:.LC2
	st.w	[%SP] 8, %d15
	call	Ifx_Lwip_printf
.LVL42:
	ld.a	%a5, [%SP] 20
.LVL43:
.L38:
	.loc 1 249 0
	mov	%d15, 1
	.loc 1 246 0
	jz.a	%a5, .L24
	.loc 1 247 0
	mov	%d4, %d8
	st.a	[%SP] 20, %a5
	call	lwip_htonl
.LVL44:
	ld.a	%a5, [%SP] 20
	st.w	[%a5]0, %d2
	j	.L24
.LVL45:
.L61:
	.loc 1 214 0
	movh.a	%a15, hi:.L37
.LVL46:
	lea	%a15, [%a15] lo:.L37
	addsc.a	%a15, %a15, %d15, 2
	ji	%a15
	.align 2
	.align 2
.L37:
	.code32
	j	.L46
	.code32
	j	.L38
	.code32
	j	.L39
	.code32
	j	.L40
	.code32
	j	.L41
.L40:
	.loc 1 230 0
	movh	%d15, 1
	jge.u	%d2, %d15, .L46
	.loc 1 233 0
	ld.w	%d8, [%SP] 28
	ld.w	%d15, [%SP] 24
	sh	%d8, %d8, 16
	sh	%d15, %d15, 24
	or	%d8, %d15
	or	%d8, %d2
.LVL47:
	.loc 1 234 0
	j	.L38
.LVL48:
.L39:
	.loc 1 226 0
	ld.w	%d8, [%SP] 24
	.loc 1 223 0
	movh	%d15, 256
	.loc 1 226 0
	sh	%d8, %d8, 24
	or	%d8, %d2
	.loc 1 223 0
	jlt.u	%d2, %d15, .L38
	j	.L46
.L41:
	.loc 1 237 0
	ge.u	%d15, %d2, 256
	jnz	%d15, .L46
	.loc 1 240 0
	ld.w	%d8, [%SP] 28
	ld.w	%d15, [%SP] 24
	sh	%d8, %d8, 16
	sh	%d15, %d15, 24
	or	%d8, %d15
	ld.w	%d15, [%SP] 32
	sh	%d15, %d15, 8
	or	%d8, %d15
	or	%d8, %d2
.LVL49:
	.loc 1 241 0
	j	.L38
.LFE3:
	.size	ipaddr_aton, .-ipaddr_aton
	.align 1
	.global	ipaddr_addr
	.type	ipaddr_addr, @function
ipaddr_addr:
.LFB2:
	.loc 1 131 0
.LVL50:
	sub.a	%SP, 8
.LCFI1:
	.loc 1 134 0
	lea	%a5, [%SP] 4
	call	ipaddr_aton
.LVL51:
	.loc 1 138 0
	ld.w	%d15, [%SP] 4
	sel	%d2, %d2, %d15, -1
	ret
.LFE2:
	.size	ipaddr_addr, .-ipaddr_addr
	.align 1
	.global	ipaddr_ntoa_r
	.type	ipaddr_ntoa_r, @function
ipaddr_ntoa_r:
.LFB5:
	.loc 1 277 0
.LVL52:
	sub.a	%SP, 8
.LCFI2:
	.loc 1 287 0
	ld.w	%d15, [%a4]0
	lea	%a14, [%SP] 8
	st.w	[+%a14]-4, %d15
.LVL53:
	.loc 1 289 0
	mov.aa	%a4, %a5
.LVL54:
	.loc 1 287 0
	mov	%d8, 0
	.loc 1 285 0
	mov	%d1, 0
	.loc 1 307 0
	mov	%d9, 46
	mov.a	%a7, 3
.LVL55:
.L72:
	addsc.a	%a3, %a14, %d8, 0
.LVL56:
	.loc 1 285 0
	mov	%d6, 0
	ld.bu	%d5, [%a3]0
.L66:
	.loc 1 294 0 discriminator 1
	movh	%d2, 52429
	addi	%d2, %d2, -13107
	mul.u	%e2, %d5, %d2
	.loc 1 296 0 discriminator 1
	lea	%a2, [%SP] 1
	and	%d7, %d6, 255
.LVL57:
	.loc 1 294 0 discriminator 1
	sh	%d2, %d3, -3
	mul	%d15, %d2, 10
	addi	%d3, %d7, 1
	and	%d0, %d3, 255
	sub	%d15, %d5, %d15
.LVL58:
	.loc 1 296 0 discriminator 1
	addi	%d15, %d15, 48
.LVL59:
	extr	%d15, %d15, 0, 8
.LVL60:
	.loc 1 295 0 discriminator 1
	and	%d5, %d2, 255
.LVL61:
	and	%d2, %d6, 255
	.loc 1 296 0 discriminator 1
	addsc.a	%a15, %a2, %d2, 0
	add	%d6, 1
	st.b	[%a15]0, %d15
	.loc 1 297 0 discriminator 1
	jnz	%d5, .L66
	st.b	[%a3]0, %d5
.LVL62:
	.loc 1 298 0
	jz	%d0, .L73
	.loc 1 299 0
	addi	%d2, %d1, 1
.LVL63:
	jge	%d1, %d4, .L68
	addsc.a	%a12, %a4, %d3, 0
	mov.d	%d3, %a4
	sub	%d1, %d4, %d1
	add	%d7, %d3
	not	%d3
	addsc.a	%a6, %a4, %d1, 0
	addsc.a	%a15, %a12, %d3, 0
.LVL64:
.L69:
	.loc 1 302 0
	lea	%a3, [%a4] 1
.LVL65:
	mov.d	%d3, %a3
	st.b	[%a4]0, %d15
	sub	%d15, %d7, %d3
	and	%d15, 255
.LVL66:
	loop	%a15, .L71
.LVL67:
.L67:
	.loc 1 304 0
	addi	%d1, %d2, 1
.LVL68:
	jge	%d2, %d4, .L68
	.loc 1 307 0 discriminator 2
	st.b	[%a12]0, %d9
	lea	%a4, [%a12] 1
.LVL69:
	add	%d8, 1
.LVL70:
	loop	%a7, .L72
.LVL71:
	.loc 1 310 0
	mov	%d15, 0
	.loc 1 311 0
	mov.aa	%a2, %a5
	.loc 1 310 0
	st.b	[%a4] -1, %d15
	.loc 1 312 0
	ret
.LVL72:
.L71:
	.loc 1 299 0
	add	%d2, 1
.LVL73:
	jeq.a	%a3, %a6, .L68
	lea	%a2, [%SP] 1
	addsc.a	%a4, %a2, %d15, 0
	ld.b	%d15, [%a4]0
.LVL74:
	mov.aa	%a4, %a3
	j	.L69
.LVL75:
.L68:
	.loc 1 300 0
	mov.a	%a2, 0
	ret
.LVL76:
.L73:
	.loc 1 298 0
	mov	%d2, %d1
	mov.aa	%a12, %a4
	j	.L67
.LFE5:
	.size	ipaddr_ntoa_r, .-ipaddr_ntoa_r
	.align 1
	.global	ipaddr_ntoa
	.type	ipaddr_ntoa, @function
ipaddr_ntoa:
.LFB4:
	.loc 1 262 0
.LVL77:
	.loc 1 264 0
	movh.a	%a5, hi:str.1753
	lea	%a5, [%a5] lo:str.1753
	mov	%d4, 16
	j	ipaddr_ntoa_r
.LVL78:
.LFE4:
	.size	ipaddr_ntoa, .-ipaddr_ntoa
	.local	str.1753
.section .bss,"aw",@nobits
	.align 0
	.type		 str.1753,@object
	.size		 str.1753,16
str.1753:
	.space	16
	.global	ip_addr_broadcast
.section .srodata,"as",@progbits
	.align 2
	.type	ip_addr_broadcast, @object
	.size	ip_addr_broadcast, 4
ip_addr_broadcast:
	.word	-1
	.global	ip_addr_any
	.align 2
	.type	ip_addr_any, @object
	.size	ip_addr_any, 4
ip_addr_any:
	.zero	4
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
	.uaword	.LFB3
	.uaword	.LFE3-.LFB3
	.byte	0x4
	.uaword	.LCFI0-.LFB3
	.byte	0xe
	.uleb128 0x28
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB2
	.uaword	.LFE2-.LFB2
	.byte	0x4
	.uaword	.LCFI1-.LFB2
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB5
	.uaword	.LFE5-.LFB5
	.byte	0x4
	.uaword	.LCFI2-.LFB5
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB4
	.uaword	.LFE4-.LFB4
	.align 2
.LEFDE10:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "./0_Src/4_McHal/Tricore/Cpu/Std/Platform_Types.h"
	.file 3 "./0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/port/include/arch/cc.h"
	.file 4 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/ipv4/lwip/ip_addr.h"
	.file 5 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/err.h"
	.file 6 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/pbuf.h"
	.file 7 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/netif.h"
	.file 8 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/def.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x934
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9."
	.string	"4 build on 2018-04-18 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -msmall-const=8 -mtc161 -g -g -O2 -fno-common -fno-short-enums -fsingle-precision-constant -fstrict-volatile-bitfields"
	.byte	0x1
	.string	"0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/ipv4/ip_addr.c"
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
	.uaword	0x1db
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x3
	.string	"uint8"
	.byte	0x2
	.byte	0x59
	.uaword	0x1f7
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
	.uaword	0x223
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"uint32"
	.byte	0x2
	.byte	0x5d
	.uaword	0x1b2
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
	.uaword	0x28b
	.uleb128 0x5
	.uaword	0x290
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
	.uaword	0x1ea
	.uleb128 0x3
	.string	"u16_t"
	.byte	0x3
	.byte	0x8
	.uaword	0x215
	.uleb128 0x3
	.string	"u32_t"
	.byte	0x3
	.byte	0x9
	.uaword	0x239
	.uleb128 0x3
	.string	"s8_t"
	.byte	0x3
	.byte	0xa
	.uaword	0x1ce
	.uleb128 0x7
	.string	"ip_addr"
	.byte	0x4
	.byte	0x4
	.byte	0x2c
	.uaword	0x2ea
	.uleb128 0x8
	.string	"addr"
	.byte	0x4
	.byte	0x2d
	.uaword	0x2b3
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"ip_addr_t"
	.byte	0x4
	.byte	0x40
	.uaword	0x2cc
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x3
	.string	"err_t"
	.byte	0x5
	.byte	0x2f
	.uaword	0x2c0
	.uleb128 0x7
	.string	"pbuf"
	.byte	0x10
	.byte	0x6
	.byte	0x4f
	.uaword	0x382
	.uleb128 0x8
	.string	"next"
	.byte	0x6
	.byte	0x51
	.uaword	0x382
	.byte	0
	.uleb128 0x8
	.string	"payload"
	.byte	0x6
	.byte	0x54
	.uaword	0x298
	.byte	0x4
	.uleb128 0x8
	.string	"tot_len"
	.byte	0x6
	.byte	0x5d
	.uaword	0x2a6
	.byte	0x8
	.uleb128 0x8
	.string	"len"
	.byte	0x6
	.byte	0x60
	.uaword	0x2a6
	.byte	0xa
	.uleb128 0x8
	.string	"type"
	.byte	0x6
	.byte	0x63
	.uaword	0x29a
	.byte	0xc
	.uleb128 0x8
	.string	"flags"
	.byte	0x6
	.byte	0x66
	.uaword	0x29a
	.byte	0xd
	.uleb128 0x8
	.string	"ref"
	.byte	0x6
	.byte	0x6d
	.uaword	0x2a6
	.byte	0xe
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x314
	.uleb128 0x4
	.byte	0x4
	.uaword	0x38e
	.uleb128 0x7
	.string	"netif"
	.byte	0x30
	.byte	0x7
	.byte	0x88
	.uaword	0x468
	.uleb128 0x8
	.string	"next"
	.byte	0x7
	.byte	0x8a
	.uaword	0x388
	.byte	0
	.uleb128 0x8
	.string	"ip_addr"
	.byte	0x7
	.byte	0x8d
	.uaword	0x2ea
	.byte	0x4
	.uleb128 0x8
	.string	"netmask"
	.byte	0x7
	.byte	0x8e
	.uaword	0x2ea
	.byte	0x8
	.uleb128 0x8
	.string	"gw"
	.byte	0x7
	.byte	0x8f
	.uaword	0x2ea
	.byte	0xc
	.uleb128 0x8
	.string	"input"
	.byte	0x7
	.byte	0x93
	.uaword	0x468
	.byte	0x10
	.uleb128 0x8
	.string	"output"
	.byte	0x7
	.byte	0x97
	.uaword	0x499
	.byte	0x14
	.uleb128 0x8
	.string	"linkoutput"
	.byte	0x7
	.byte	0x9b
	.uaword	0x4db
	.byte	0x18
	.uleb128 0x8
	.string	"state"
	.byte	0x7
	.byte	0xac
	.uaword	0x298
	.byte	0x1c
	.uleb128 0x8
	.string	"mtu"
	.byte	0x7
	.byte	0xba
	.uaword	0x2a6
	.byte	0x20
	.uleb128 0x8
	.string	"hwaddr_len"
	.byte	0x7
	.byte	0xbc
	.uaword	0x29a
	.byte	0x22
	.uleb128 0x8
	.string	"hwaddr"
	.byte	0x7
	.byte	0xbe
	.uaword	0x517
	.byte	0x23
	.uleb128 0x8
	.string	"flags"
	.byte	0x7
	.byte	0xc0
	.uaword	0x29a
	.byte	0x29
	.uleb128 0x8
	.string	"name"
	.byte	0x7
	.byte	0xc2
	.uaword	0x527
	.byte	0x2a
	.uleb128 0x8
	.string	"num"
	.byte	0x7
	.byte	0xc4
	.uaword	0x29a
	.byte	0x2c
	.byte	0
	.uleb128 0x3
	.string	"netif_input_fn"
	.byte	0x7
	.byte	0x6d
	.uaword	0x47e
	.uleb128 0x4
	.byte	0x4
	.uaword	0x484
	.uleb128 0x9
	.byte	0x1
	.uaword	0x307
	.uaword	0x499
	.uleb128 0xa
	.uaword	0x382
	.uleb128 0xa
	.uaword	0x388
	.byte	0
	.uleb128 0x3
	.string	"netif_output_fn"
	.byte	0x7
	.byte	0x76
	.uaword	0x4b0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x4b6
	.uleb128 0x9
	.byte	0x1
	.uaword	0x307
	.uaword	0x4d0
	.uleb128 0xa
	.uaword	0x388
	.uleb128 0xa
	.uaword	0x382
	.uleb128 0xa
	.uaword	0x4d0
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x4d6
	.uleb128 0x5
	.uaword	0x2ea
	.uleb128 0x3
	.string	"netif_linkoutput_fn"
	.byte	0x7
	.byte	0x7e
	.uaword	0x4f6
	.uleb128 0x4
	.byte	0x4
	.uaword	0x4fc
	.uleb128 0x9
	.byte	0x1
	.uaword	0x307
	.uaword	0x511
	.uleb128 0xa
	.uaword	0x388
	.uleb128 0xa
	.uaword	0x382
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x2ea
	.uleb128 0xb
	.uaword	0x29a
	.uaword	0x527
	.uleb128 0xc
	.uaword	0x2fb
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.uaword	0x290
	.uaword	0x537
	.uleb128 0xc
	.uaword	0x2fb
	.byte	0x1
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.string	"ip4_addr_isbroadcast"
	.byte	0x1
	.byte	0x37
	.byte	0x1
	.uaword	0x29a
	.uaword	.LFB0
	.uaword	.LFE0
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x594
	.uleb128 0xe
	.string	"addr"
	.byte	0x1
	.byte	0x37
	.uaword	0x2b3
	.byte	0x1
	.byte	0x54
	.uleb128 0xe
	.string	"netif"
	.byte	0x1
	.byte	0x37
	.uaword	0x594
	.byte	0x1
	.byte	0x64
	.uleb128 0xf
	.string	"ipaddr"
	.byte	0x1
	.byte	0x39
	.uaword	0x2ea
	.byte	0x3
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x59a
	.uleb128 0x5
	.uaword	0x38e
	.uleb128 0xd
	.byte	0x1
	.string	"ip4_addr_netmask_valid"
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.uaword	0x29a
	.uaword	.LFB1
	.uaword	.LFE1
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x61b
	.uleb128 0x10
	.string	"netmask"
	.byte	0x1
	.byte	0x5a
	.uaword	0x2b3
	.uaword	.LLST0
	.uleb128 0x11
	.string	"mask"
	.byte	0x1
	.byte	0x5c
	.uaword	0x2b3
	.uaword	.LLST1
	.uleb128 0x11
	.string	"nm_hostorder"
	.byte	0x1
	.byte	0x5d
	.uaword	0x2b3
	.uaword	.LLST2
	.uleb128 0x12
	.uaword	.LVL2
	.uaword	0x8f7
	.uleb128 0x13
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.string	"ipaddr_aton"
	.byte	0x1
	.byte	0x98
	.byte	0x1
	.uaword	0x1c7
	.uaword	.LFB3
	.uaword	.LFE3
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x6e7
	.uleb128 0x10
	.string	"cp"
	.byte	0x1
	.byte	0x98
	.uaword	0x285
	.uaword	.LLST3
	.uleb128 0x10
	.string	"addr"
	.byte	0x1
	.byte	0x98
	.uaword	0x511
	.uaword	.LLST4
	.uleb128 0x11
	.string	"val"
	.byte	0x1
	.byte	0x9a
	.uaword	0x2b3
	.uaword	.LLST5
	.uleb128 0x11
	.string	"base"
	.byte	0x1
	.byte	0x9b
	.uaword	0x29a
	.uaword	.LLST6
	.uleb128 0x11
	.string	"c"
	.byte	0x1
	.byte	0x9c
	.uaword	0x290
	.uaword	.LLST7
	.uleb128 0xf
	.string	"parts"
	.byte	0x1
	.byte	0x9d
	.uaword	0x6e7
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x11
	.string	"pp"
	.byte	0x1
	.byte	0x9e
	.uaword	0x6f7
	.uaword	.LLST8
	.uleb128 0x14
	.uaword	.LVL42
	.uaword	0x916
	.uaword	0x6d6
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
	.byte	0x2
	.byte	0x8
	.byte	0xf3
	.uleb128 0x13
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x5
	.byte	0x3
	.uaword	.LC1
	.byte	0
	.uleb128 0x12
	.uaword	.LVL44
	.uaword	0x8f7
	.uleb128 0x13
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xb
	.uaword	0x2b3
	.uaword	0x6f7
	.uleb128 0xc
	.uaword	0x2fb
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x2b3
	.uleb128 0xd
	.byte	0x1
	.string	"ipaddr_addr"
	.byte	0x1
	.byte	0x82
	.byte	0x1
	.uaword	0x2b3
	.uaword	.LFB2
	.uaword	.LFE2
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x755
	.uleb128 0x10
	.string	"cp"
	.byte	0x1
	.byte	0x82
	.uaword	0x285
	.uaword	.LLST9
	.uleb128 0xf
	.string	"val"
	.byte	0x1
	.byte	0x84
	.uaword	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x12
	.uaword	.LVL51
	.uaword	0x61b
	.uleb128 0x13
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x13
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.string	"ipaddr_ntoa_r"
	.byte	0x1
	.uahalf	0x114
	.byte	0x1
	.uaword	0x828
	.uaword	.LFB5
	.uaword	.LFE5
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x828
	.uleb128 0x16
	.string	"addr"
	.byte	0x1
	.uahalf	0x114
	.uaword	0x4d0
	.uaword	.LLST10
	.uleb128 0x17
	.string	"buf"
	.byte	0x1
	.uahalf	0x114
	.uaword	0x828
	.byte	0x1
	.byte	0x65
	.uleb128 0x17
	.string	"buflen"
	.byte	0x1
	.uahalf	0x114
	.uaword	0x1c7
	.byte	0x1
	.byte	0x54
	.uleb128 0x18
	.string	"s_addr"
	.byte	0x1
	.uahalf	0x116
	.uaword	0x2b3
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x18
	.string	"inv"
	.byte	0x1
	.uahalf	0x117
	.uaword	0x82e
	.byte	0x2
	.byte	0x91
	.sleb128 -7
	.uleb128 0x19
	.string	"rp"
	.byte	0x1
	.uahalf	0x118
	.uaword	0x828
	.uaword	.LLST11
	.uleb128 0x19
	.string	"ap"
	.byte	0x1
	.uahalf	0x119
	.uaword	0x83e
	.uaword	.LLST12
	.uleb128 0x19
	.string	"rem"
	.byte	0x1
	.uahalf	0x11a
	.uaword	0x29a
	.uaword	.LLST13
	.uleb128 0x19
	.string	"n"
	.byte	0x1
	.uahalf	0x11b
	.uaword	0x29a
	.uaword	.LLST14
	.uleb128 0x19
	.string	"i"
	.byte	0x1
	.uahalf	0x11c
	.uaword	0x29a
	.uaword	.LLST15
	.uleb128 0x19
	.string	"len"
	.byte	0x1
	.uahalf	0x11d
	.uaword	0x1c7
	.uaword	.LLST16
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x290
	.uleb128 0xb
	.uaword	0x290
	.uaword	0x83e
	.uleb128 0xc
	.uaword	0x2fb
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x29a
	.uleb128 0x15
	.byte	0x1
	.string	"ipaddr_ntoa"
	.byte	0x1
	.uahalf	0x105
	.byte	0x1
	.uaword	0x828
	.uaword	.LFB4
	.uaword	.LFE4
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x8ad
	.uleb128 0x16
	.string	"addr"
	.byte	0x1
	.uahalf	0x105
	.uaword	0x4d0
	.uaword	.LLST17
	.uleb128 0x18
	.string	"str"
	.byte	0x1
	.uahalf	0x107
	.uaword	0x8ad
	.byte	0x5
	.byte	0x3
	.uaword	str.1753
	.uleb128 0x1a
	.uaword	.LVL78
	.byte	0x1
	.uaword	0x755
	.uleb128 0x13
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x40
	.uleb128 0x13
	.byte	0x1
	.byte	0x65
	.byte	0x5
	.byte	0x3
	.uaword	str.1753
	.uleb128 0x13
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0
	.byte	0
	.uleb128 0xb
	.uaword	0x290
	.uaword	0x8bd
	.uleb128 0xc
	.uaword	0x2fb
	.byte	0xf
	.byte	0
	.uleb128 0x1b
	.string	"ip_addr_any"
	.byte	0x1
	.byte	0x2c
	.uaword	0x4d6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	ip_addr_any
	.uleb128 0x1b
	.string	"ip_addr_broadcast"
	.byte	0x1
	.byte	0x2d
	.uaword	0x4d6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	ip_addr_broadcast
	.uleb128 0x1c
	.byte	0x1
	.string	"lwip_htonl"
	.byte	0x8
	.byte	0x65
	.byte	0x1
	.uaword	0x2b3
	.byte	0x1
	.uaword	0x916
	.uleb128 0xa
	.uaword	0x2b3
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.string	"Ifx_Lwip_printf"
	.byte	0x3
	.byte	0x2c
	.byte	0x1
	.uaword	0x2c0
	.byte	0x1
	.uleb128 0xa
	.uaword	0x285
	.uleb128 0x1e
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0xa
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL1-.Ltext0
	.uaword	.LVL2-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL2-1-.Ltext0
	.uaword	.LFE1-.Ltext0
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
	.uahalf	0x5
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x1f
	.byte	0x9f
	.uaword	.LVL3-.Ltext0
	.uaword	.LVL5-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL7-.Ltext0
	.uaword	.LFE1-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL2-.Ltext0
	.uaword	.LVL6-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL7-.Ltext0
	.uaword	.LVL10-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL11-.Ltext0
	.uaword	.LVL15-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL16-.Ltext0
	.uaword	.LVL19-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL20-.Ltext0
	.uaword	.LVL23-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL23-.Ltext0
	.uaword	.LVL25-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL25-.Ltext0
	.uaword	.LVL26-.Ltext0
	.uahalf	0x3
	.byte	0x84
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL26-.Ltext0
	.uaword	.LVL27-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL29-.Ltext0
	.uaword	.LVL31-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL31-.Ltext0
	.uaword	.LVL34-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL34-.Ltext0
	.uaword	.LVL36-.Ltext0
	.uahalf	0x3
	.byte	0x84
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL36-.Ltext0
	.uaword	.LVL38-.Ltext0
	.uahalf	0x3
	.byte	0x84
	.sleb128 2
	.byte	0x9f
	.uaword	.LVL38-.Ltext0
	.uaword	.LVL39-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL39-.Ltext0
	.uaword	.LVL40-.Ltext0
	.uahalf	0x3
	.byte	0x84
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL40-.Ltext0
	.uaword	.LVL41-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL41-.Ltext0
	.uaword	.LVL43-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL45-.Ltext0
	.uaword	.LVL46-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL11-.Ltext0
	.uaword	.LVL28-.Ltext0
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL28-.Ltext0
	.uaword	.LVL29-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	.LVL29-.Ltext0
	.uaword	.LVL42-1-.Ltext0
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL42-1-.Ltext0
	.uaword	.LVL45-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	.LVL45-.Ltext0
	.uaword	.LFE3-.Ltext0
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL14-.Ltext0
	.uaword	.LVL16-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL16-.Ltext0
	.uaword	.LVL18-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL19-.Ltext0
	.uaword	.LVL22-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL23-.Ltext0
	.uaword	.LVL27-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL29-.Ltext0
	.uaword	.LVL30-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL30-.Ltext0
	.uaword	.LVL33-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL33-.Ltext0
	.uaword	.LVL41-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL41-.Ltext0
	.uaword	.LVL42-1-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL42-1-.Ltext0
	.uaword	.LVL45-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL45-.Ltext0
	.uaword	.LVL47-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL47-.Ltext0
	.uaword	.LVL48-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL48-.Ltext0
	.uaword	.LVL49-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL49-.Ltext0
	.uaword	.LFE3-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL14-.Ltext0
	.uaword	.LVL15-.Ltext0
	.uahalf	0x2
	.byte	0x3a
	.byte	0x9f
	.uaword	.LVL33-.Ltext0
	.uaword	.LVL36-.Ltext0
	.uahalf	0x2
	.byte	0x3a
	.byte	0x9f
	.uaword	.LVL36-.Ltext0
	.uaword	.LVL39-.Ltext0
	.uahalf	0x2
	.byte	0x40
	.byte	0x9f
	.uaword	.LVL39-.Ltext0
	.uaword	.LVL41-.Ltext0
	.uahalf	0x2
	.byte	0x3a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL12-.Ltext0
	.uaword	.LVL15-.Ltext0
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	.LVL16-.Ltext0
	.uaword	.LVL17-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL20-.Ltext0
	.uaword	.LVL21-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL24-.Ltext0
	.uaword	.LVL26-.Ltext0
	.uahalf	0x2
	.byte	0x8f
	.sleb128 1
	.uaword	.LVL31-.Ltext0
	.uaword	.LVL34-.Ltext0
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	.LVL35-.Ltext0
	.uaword	.LVL37-.Ltext0
	.uahalf	0x2
	.byte	0x84
	.sleb128 1
	.uaword	.LVL37-.Ltext0
	.uaword	.LVL38-.Ltext0
	.uahalf	0x2
	.byte	0x84
	.sleb128 2
	.uaword	.LVL38-.Ltext0
	.uaword	.LVL39-.Ltext0
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	.LVL39-.Ltext0
	.uaword	.LVL40-.Ltext0
	.uahalf	0x2
	.byte	0x84
	.sleb128 1
	.uaword	.LVL40-.Ltext0
	.uaword	.LVL41-.Ltext0
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL12-.Ltext0
	.uaword	.LVL13-.Ltext0
	.uahalf	0x3
	.byte	0x91
	.sleb128 -16
	.byte	0x9f
	.uaword	.LVL13-.Ltext0
	.uaword	.LVL14-.Ltext0
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL14-.Ltext0
	.uaword	.LVL27-.Ltext0
	.uahalf	0x1
	.byte	0x63
	.uaword	.LVL29-.Ltext0
	.uaword	.LVL32-.Ltext0
	.uahalf	0x8
	.byte	0x91
	.sleb128 0
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x3c
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL32-.Ltext0
	.uaword	.LVL33-.Ltext0
	.uahalf	0x8
	.byte	0x91
	.sleb128 0
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x40
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL33-.Ltext0
	.uaword	.LVL42-1-.Ltext0
	.uahalf	0x1
	.byte	0x63
	.uaword	.LVL45-.Ltext0
	.uaword	.LFE3-.Ltext0
	.uahalf	0x1
	.byte	0x63
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL50-.Ltext0
	.uaword	.LVL51-1-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL51-1-.Ltext0
	.uaword	.LFE2-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL52-.Ltext0
	.uaword	.LVL54-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL54-.Ltext0
	.uaword	.LFE5-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL53-.Ltext0
	.uaword	.LVL55-.Ltext0
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL56-.Ltext0
	.uaword	.LVL65-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL65-.Ltext0
	.uaword	.LVL67-.Ltext0
	.uahalf	0x1
	.byte	0x63
	.uaword	.LVL69-.Ltext0
	.uaword	.LVL71-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL71-.Ltext0
	.uaword	.LVL72-.Ltext0
	.uahalf	0x3
	.byte	0x84
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL72-.Ltext0
	.uaword	.LVL75-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL76-.Ltext0
	.uaword	.LFE5-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL53-.Ltext0
	.uaword	.LVL55-.Ltext0
	.uahalf	0x1
	.byte	0x6e
	.uaword	.LVL56-.Ltext0
	.uaword	.LVL64-.Ltext0
	.uahalf	0x1
	.byte	0x63
	.uaword	.LVL64-.Ltext0
	.uaword	.LVL69-.Ltext0
	.uahalf	0x6
	.byte	0x8e
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL69-.Ltext0
	.uaword	.LVL70-.Ltext0
	.uahalf	0x8
	.byte	0x8e
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.uaword	.LVL70-.Ltext0
	.uaword	.LVL76-.Ltext0
	.uahalf	0x6
	.byte	0x8e
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL76-.Ltext0
	.uaword	.LFE5-.Ltext0
	.uahalf	0x1
	.byte	0x63
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL58-.Ltext0
	.uaword	.LVL59-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL59-.Ltext0
	.uaword	.LVL60-.Ltext0
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -48
	.byte	0x9f
	.uaword	.LVL60-.Ltext0
	.uaword	.LVL61-.Ltext0
	.uahalf	0x8
	.byte	0x75
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x3a
	.byte	0x1e
	.byte	0x1c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL53-.Ltext0
	.uaword	.LVL55-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL56-.Ltext0
	.uaword	.LVL69-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL69-.Ltext0
	.uaword	.LVL70-.Ltext0
	.uahalf	0x3
	.byte	0x78
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL70-.Ltext0
	.uaword	.LVL72-.Ltext0
	.uahalf	0x3
	.byte	0x78
	.sleb128 0
	.byte	0x9f
	.uaword	.LVL72-.Ltext0
	.uaword	.LFE5-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL57-.Ltext0
	.uaword	.LVL58-.Ltext0
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL58-.Ltext0
	.uaword	.LVL62-.Ltext0
	.uahalf	0x1
	.byte	0x50
	.uaword	.LVL62-.Ltext0
	.uaword	.LVL64-.Ltext0
	.uahalf	0x3
	.byte	0x76
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL66-.Ltext0
	.uaword	.LVL67-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL72-.Ltext0
	.uaword	.LVL74-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL74-.Ltext0
	.uaword	.LVL75-.Ltext0
	.uahalf	0x6
	.byte	0x77
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL76-.Ltext0
	.uaword	.LFE5-.Ltext0
	.uahalf	0x3
	.byte	0x76
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL52-.Ltext0
	.uaword	.LVL55-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL56-.Ltext0
	.uaword	.LVL63-.Ltext0
	.uahalf	0x1
	.byte	0x51
	.uaword	.LVL63-.Ltext0
	.uaword	.LVL68-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL68-.Ltext0
	.uaword	.LVL72-.Ltext0
	.uahalf	0x1
	.byte	0x51
	.uaword	.LVL72-.Ltext0
	.uaword	.LVL75-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL76-.Ltext0
	.uaword	.LFE5-.Ltext0
	.uahalf	0x1
	.byte	0x51
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL77-.Ltext0
	.uaword	.LVL78-1-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL78-1-.Ltext0
	.uaword	.LFE4-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
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
	.extern	Ifx_Lwip_printf,STT_FUNC,0
	.extern	lwip_htonl,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.1.0-infineon-2.0-df254e8) 4.9.4 build on 2018-04-18"
