	.file	"raw.c"
.section .text,"ax",@progbits
.Ltext0:
	.align 1
	.global	raw_input
	.type	raw_input, @function
raw_input:
.LFB0:
	.file 1 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/raw.c"
	.loc 1 77 0
.LVL0:
	.loc 1 86 0
	ld.a	%a15, [%a4] 4
	.loc 1 89 0
	movh.a	%a14, hi:raw_pcbs
	.loc 1 104 0
	movh	%d10, hi:current_iphdr_src
	.loc 1 86 0
	ld.bu	%d8, [%a15] 9
.LVL1:
	.loc 1 89 0
	ld.a	%a15, [%a14] lo:raw_pcbs
.LVL2:
	.loc 1 95 0
	movh	%d9, hi:current_iphdr_dest
	.loc 1 77 0
	mov.aa	%a13, %a4
	.loc 1 92 0
	mov.a	%a12, 0
	.loc 1 104 0
	addi	%d10, %d10, lo:current_iphdr_src
	.loc 1 95 0
	addi	%d9, %d9, lo:current_iphdr_dest
	.loc 1 92 0
	jnz.a	%a15, .L22
	j	.L8
.LVL3:
.L4:
	.loc 1 122 0
	ld.a	%a2, [%a15] 12
.LVL4:
	mov.aa	%a12, %a15
	.loc 1 92 0
	jz.a	%a2, .L8
.LVL5:
	mov.aa	%a15, %a2
.LVL6:
.L22:
	.loc 1 93 0
	ld.bu	%d15, [%a15] 16
	jne	%d15, %d8, .L4
	.loc 1 94 0 discriminator 1
	ld.w	%d15, [%a15]0
	jz	%d15, .L5
	mov.a	%a2, %d9
	ld.w	%d2, [%a2]0
	jne	%d15, %d2, .L4
.L5:
	.loc 1 102 0
	ld.a	%a2, [%a15] 20
	jz.a	%a2, .L4
	.loc 1 104 0
	ld.a	%a4, [%a15] 24
	mov.a	%a7, %d10
	mov.aa	%a5, %a15
	mov.aa	%a6, %a13
	calli	%a2
.LVL7:
	jz	%d2, .L4
.LVL8:
	.loc 1 108 0
	jz.a	%a12, .L6
	.loc 1 111 0
	ld.w	%d15, [%a15] 12
	st.w	[%a12] 12, %d15
	.loc 1 112 0
	ld.w	%d15, [%a14] lo:raw_pcbs
	st.w	[%a15] 12, %d15
	.loc 1 113 0
	st.a	[%a14] lo:raw_pcbs, %a15
.L6:
.LVL9:
	mov	%d2, 1
	.loc 1 125 0
	ret
.LVL10:
.L8:
	.loc 1 81 0
	mov	%d2, 0
	ret
.LFE0:
	.size	raw_input, .-raw_input
	.align 1
	.global	raw_bind
	.type	raw_bind, @function
raw_bind:
.LFB1:
	.loc 1 143 0
.LVL11:
	.loc 1 144 0
	mov	%d15, 0
	jz.a	%a5, .L26
	.loc 1 144 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a5]0
.L26:
	.loc 1 144 0 discriminator 4
	st.w	[%a4]0, %d15
	.loc 1 146 0 is_stmt 1 discriminator 4
	mov	%d2, 0
	ret
.LFE1:
	.size	raw_bind, .-raw_bind
	.align 1
	.global	raw_connect
	.type	raw_connect, @function
raw_connect:
.LFB2:
	.loc 1 163 0
.LVL12:
	.loc 1 164 0
	mov	%d15, 0
	jz.a	%a5, .L30
	.loc 1 164 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a5]0
.L30:
	.loc 1 164 0 discriminator 4
	st.w	[%a4] 4, %d15
	.loc 1 166 0 is_stmt 1 discriminator 4
	mov	%d2, 0
	ret
.LFE2:
	.size	raw_connect, .-raw_connect
	.align 1
	.global	raw_recv
	.type	raw_recv, @function
raw_recv:
.LFB3:
	.loc 1 184 0
.LVL13:
	.loc 1 186 0
	st.a	[%a4] 20, %a5
	.loc 1 187 0
	st.a	[%a4] 24, %a6
	ret
.LFE3:
	.size	raw_recv, .-raw_recv
.section .rodata,"a",@progbits
.LC0:
	.string	"Assertion \"%s\" failed at line %d in %s\n"
.LC1:
	.string	"Can't restore header we just removed!"
.LC2:
	.string	"0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/raw.c"
.section .text,"ax",@progbits
	.align 1
	.global	raw_sendto
	.type	raw_sendto, @function
raw_sendto:
.LFB4:
	.loc 1 204 0
.LVL14:
	sub.a	%SP, 16
.LCFI0:
	.loc 1 204 0
	mov.aa	%a15, %a4
	mov.aa	%a14, %a6
	.loc 1 213 0
	mov.aa	%a4, %a5
.LVL15:
	mov	%d4, 20
	.loc 1 204 0
	mov.aa	%a12, %a5
	.loc 1 213 0
	call	pbuf_header
.LVL16:
	jz	%d2, .L35
	.loc 1 215 0
	mov	%e4, 1
	mov	%d6, 0
	call	pbuf_alloc
.LVL17:
	mov.aa	%a13, %a2
.LVL18:
	.loc 1 219 0
	mov	%d15, -1
	.loc 1 217 0
	jz.a	%a2, .L52
	.loc 1 221 0
	ld.hu	%d15, [%a12] 8
	jnz	%d15, .L58
.LVL19:
.L37:
	.loc 1 236 0
	mov.aa	%a4, %a14
	call	ip_route
.LVL20:
	jz.a	%a2, .L59
.L39:
	.loc 1 258 0
	mov.aa	%a5, %a15
	jz.a	%a15, .L41
.LVL21:
	.loc 1 258 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a15]0
	jnz	%d15, .L42
.L41:
	.loc 1 260 0 is_stmt 1
	lea	%a5, [%a2] 4
.LVL22:
.L42:
	.loc 1 267 0
	ld.bu	%d4, [%a15] 10
	ld.bu	%d5, [%a15] 9
	ld.bu	%d6, [%a15] 16
	mov.aa	%a4, %a13
	mov.aa	%a6, %a14
	mov.aa	%a7, %a2
	call	ip_output_if
.LVL23:
	mov	%d15, %d2
.LVL24:
	.loc 1 271 0
	jeq.a	%a13, %a12, .L52
	.loc 1 273 0
	mov.aa	%a4, %a13
	call	pbuf_free
.LVL25:
.L52:
	.loc 1 276 0
	mov	%d2, %d15
	ret
.L35:
.LVL26:
	.loc 1 230 0
	mov.aa	%a4, %a12
	mov	%d4, -20
	call	pbuf_header
.LVL27:
	jnz	%d2, .L60
	.loc 1 236 0
	mov.aa	%a4, %a14
	call	ip_route
.LVL28:
	mov.aa	%a13, %a12
	jnz.a	%a2, .L39
.LVL29:
.L57:
	.loc 1 243 0
	mov	%d15, -4
.LVL30:
.L61:
	.loc 1 276 0
	mov	%d2, %d15
	ret
.LVL31:
.L59:
	.loc 1 240 0
	jeq.a	%a12, %a13, .L57
	.loc 1 241 0
	mov.aa	%a4, %a13
	call	pbuf_free
.LVL32:
	.loc 1 243 0
	mov	%d15, -4
	j	.L61
.LVL33:
.L58:
	.loc 1 223 0
	mov.aa	%a4, %a2
	mov.aa	%a5, %a12
	call	pbuf_chain
.LVL34:
	j	.L37
.LVL35:
.L60:
	.loc 1 231 0 discriminator 1
	movh	%d15, hi:.LC1
	addi	%d15, %d15, lo:.LC1
	movh.a	%a4, hi:.LC0
	lea	%a4, [%a4] lo:.LC0
	st.w	[%SP]0, %d15
	mov	%d15, 231
	st.w	[%SP] 4, %d15
	movh	%d15, hi:.LC2
	addi	%d15, %d15, lo:.LC2
	st.w	[%SP] 8, %d15
	call	Ifx_Lwip_printf
.LVL36:
	.loc 1 232 0 discriminator 1
	mov	%d15, -1
	j	.L52
.LFE4:
	.size	raw_sendto, .-raw_sendto
	.align 1
	.global	raw_send
	.type	raw_send, @function
raw_send:
.LFB5:
	.loc 1 287 0
.LVL37:
	.loc 1 288 0
	lea	%a6, [%a4] 4
	j	raw_sendto
.LVL38:
.LFE5:
	.size	raw_send, .-raw_send
	.align 1
	.global	raw_remove
	.type	raw_remove, @function
raw_remove:
.LFB6:
	.loc 1 301 0
.LVL39:
	.loc 1 304 0
	movh.a	%a2, hi:raw_pcbs
	ld.a	%a15, [%a2] lo:raw_pcbs
	.loc 1 301 0
	mov.d	%d2, %a4
	.loc 1 304 0
	mov.d	%d15, %a15
	jeq	%d15, %d2, .L73
.L67:
.LVL40:
	.loc 1 309 0 discriminator 2
	jz.a	%a15, .L66
.L71:
	.loc 1 311 0
	ld.w	%d15, [%a15] 12
	ne	%d3, %d15, 0
	and.eq	%d3, %d2, %d15
	jnz	%d3, .L74
	mov.a	%a15, %d15
.LVL41:
	.loc 1 309 0
	jnz.a	%a15, .L71
.LVL42:
.L66:
	.loc 1 317 0
	mov.a	%a4, %d2
.LVL43:
	mov	%d4, 0
	j	memp_free
.LVL44:
.L74:
	.loc 1 313 0
	mov.a	%a3, %d2
	ld.a	%a2, [%a3] 12
	st.a	[%a15] 12, %a2
	mov.aa	%a15, %a2
.LVL45:
	j	.L67
.L73:
	.loc 1 306 0
	ld.w	%d15, [%a4] 12
	.loc 1 317 0
	mov.a	%a4, %d2
	mov	%d4, 0
	.loc 1 306 0
	st.w	[%a2] lo:raw_pcbs, %d15
	.loc 1 317 0
	j	memp_free
.LVL46:
.LFE6:
	.size	raw_remove, .-raw_remove
	.align 1
	.global	raw_new
	.type	raw_new, @function
raw_new:
.LFB7:
	.loc 1 332 0
.LVL47:
	.loc 1 332 0
	mov	%d15, %d4
	.loc 1 337 0
	mov	%d4, 0
.LVL48:
	call	memp_malloc
.LVL49:
	.loc 1 339 0
	jz.a	%a2, .L76
	.loc 1 341 0
	mov.aa	%a3, %a2
	mov	%d2, 0
	lea	%a15, 28-1
	0:
	st.b	[%a3+]1, %d2
	loop	%a15, 0b
	.loc 1 342 0
	st.b	[%a2] 16, %d15
	.loc 1 343 0
	mov	%d15, -1
	.loc 1 344 0
	movh.a	%a15, hi:raw_pcbs
	ld.w	%d2, [%a15] lo:raw_pcbs
	.loc 1 343 0
	st.b	[%a2] 10, %d15
	.loc 1 344 0
	st.w	[%a2] 12, %d2
	.loc 1 345 0
	st.a	[%a15] lo:raw_pcbs, %a2
.L76:
	.loc 1 348 0
	ret
.LFE7:
	.size	raw_new, .-raw_new
	.local	raw_pcbs
.section .bss,"aw",@nobits
	.align 2
	.type		 raw_pcbs,@object
	.size		 raw_pcbs,4
raw_pcbs:
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
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB4
	.uaword	.LFE4-.LFB4
	.byte	0x4
	.uaword	.LCFI0-.LFB4
	.byte	0xe
	.uleb128 0x10
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
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB6
	.uaword	.LFE6-.LFB6
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB7
	.uaword	.LFE7-.LFB7
	.align 2
.LEFDE14:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "./0_Src/4_McHal/Tricore/Cpu/Std/Platform_Types.h"
	.file 3 "./0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/port/include/arch/cc.h"
	.file 4 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/memp.h"
	.file 5 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/ipv4/lwip/ip_addr.h"
	.file 6 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/err.h"
	.file 7 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/pbuf.h"
	.file 8 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/netif.h"
	.file 9 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/ipv4/lwip/ip.h"
	.file 10 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/raw.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0xe12
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9."
	.string	"4 build on 2018-04-18 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -msmall-const=8 -mtc161 -g -g -O2 -fno-common -fno-short-enums -fsingle-precision-constant -fstrict-volatile-bitfields"
	.byte	0x1
	.string	"0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/raw.c"
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
	.uaword	0x1d2
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
	.uleb128 0x3
	.string	"sint16"
	.byte	0x2
	.byte	0x5a
	.uaword	0x20d
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x3
	.string	"uint16"
	.byte	0x2
	.byte	0x5b
	.uaword	0x228
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
	.uleb128 0x4
	.byte	0x4
	.uaword	0x290
	.uleb128 0x5
	.uaword	0x295
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
	.uaword	0x1e1
	.uleb128 0x3
	.string	"u16_t"
	.byte	0x3
	.byte	0x8
	.uaword	0x21a
	.uleb128 0x3
	.string	"u32_t"
	.byte	0x3
	.byte	0x9
	.uaword	0x23e
	.uleb128 0x3
	.string	"s8_t"
	.byte	0x3
	.byte	0xa
	.uaword	0x1c5
	.uleb128 0x3
	.string	"s16_t"
	.byte	0x3
	.byte	0xb
	.uaword	0x1ff
	.uleb128 0x7
	.byte	0x4
	.byte	0x4
	.byte	0x2b
	.uaword	0x396
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
	.uaword	0x2de
	.uleb128 0x9
	.string	"ip_addr"
	.byte	0x4
	.byte	0x5
	.byte	0x2c
	.uaword	0x3c2
	.uleb128 0xa
	.string	"addr"
	.byte	0x5
	.byte	0x2d
	.uaword	0x2b8
	.byte	0
	.byte	0
	.uleb128 0x9
	.string	"ip_addr_packed"
	.byte	0x4
	.byte	0x5
	.byte	0x36
	.uaword	0x3e7
	.uleb128 0xa
	.string	"addr"
	.byte	0x5
	.byte	0x37
	.uaword	0x2b8
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"ip_addr_t"
	.byte	0x5
	.byte	0x40
	.uaword	0x3a4
	.uleb128 0x3
	.string	"ip_addr_p_t"
	.byte	0x5
	.byte	0x41
	.uaword	0x3c2
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x3
	.string	"err_t"
	.byte	0x6
	.byte	0x2f
	.uaword	0x2c5
	.uleb128 0x7
	.byte	0x4
	.byte	0x7
	.byte	0x32
	.uaword	0x45f
	.uleb128 0x8
	.string	"PBUF_TRANSPORT"
	.sleb128 0
	.uleb128 0x8
	.string	"PBUF_IP"
	.sleb128 1
	.uleb128 0x8
	.string	"PBUF_LINK"
	.sleb128 2
	.uleb128 0x8
	.string	"PBUF_RAW"
	.sleb128 3
	.byte	0
	.uleb128 0x3
	.string	"pbuf_layer"
	.byte	0x7
	.byte	0x37
	.uaword	0x424
	.uleb128 0x7
	.byte	0x4
	.byte	0x7
	.byte	0x39
	.uaword	0x4a7
	.uleb128 0x8
	.string	"PBUF_RAM"
	.sleb128 0
	.uleb128 0x8
	.string	"PBUF_ROM"
	.sleb128 1
	.uleb128 0x8
	.string	"PBUF_REF"
	.sleb128 2
	.uleb128 0x8
	.string	"PBUF_POOL"
	.sleb128 3
	.byte	0
	.uleb128 0x3
	.string	"pbuf_type"
	.byte	0x7
	.byte	0x3e
	.uaword	0x471
	.uleb128 0x9
	.string	"pbuf"
	.byte	0x10
	.byte	0x7
	.byte	0x4f
	.uaword	0x526
	.uleb128 0xa
	.string	"next"
	.byte	0x7
	.byte	0x51
	.uaword	0x526
	.byte	0
	.uleb128 0xa
	.string	"payload"
	.byte	0x7
	.byte	0x54
	.uaword	0x29d
	.byte	0x4
	.uleb128 0xa
	.string	"tot_len"
	.byte	0x7
	.byte	0x5d
	.uaword	0x2ab
	.byte	0x8
	.uleb128 0xa
	.string	"len"
	.byte	0x7
	.byte	0x60
	.uaword	0x2ab
	.byte	0xa
	.uleb128 0xa
	.string	"type"
	.byte	0x7
	.byte	0x63
	.uaword	0x29f
	.byte	0xc
	.uleb128 0xa
	.string	"flags"
	.byte	0x7
	.byte	0x66
	.uaword	0x29f
	.byte	0xd
	.uleb128 0xa
	.string	"ref"
	.byte	0x7
	.byte	0x6d
	.uaword	0x2ab
	.byte	0xe
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x4b8
	.uleb128 0x4
	.byte	0x4
	.uaword	0x532
	.uleb128 0x9
	.string	"netif"
	.byte	0x30
	.byte	0x8
	.byte	0x88
	.uaword	0x60c
	.uleb128 0xa
	.string	"next"
	.byte	0x8
	.byte	0x8a
	.uaword	0x52c
	.byte	0
	.uleb128 0xa
	.string	"ip_addr"
	.byte	0x8
	.byte	0x8d
	.uaword	0x3e7
	.byte	0x4
	.uleb128 0xa
	.string	"netmask"
	.byte	0x8
	.byte	0x8e
	.uaword	0x3e7
	.byte	0x8
	.uleb128 0xa
	.string	"gw"
	.byte	0x8
	.byte	0x8f
	.uaword	0x3e7
	.byte	0xc
	.uleb128 0xa
	.string	"input"
	.byte	0x8
	.byte	0x93
	.uaword	0x60c
	.byte	0x10
	.uleb128 0xa
	.string	"output"
	.byte	0x8
	.byte	0x97
	.uaword	0x63d
	.byte	0x14
	.uleb128 0xa
	.string	"linkoutput"
	.byte	0x8
	.byte	0x9b
	.uaword	0x67f
	.byte	0x18
	.uleb128 0xa
	.string	"state"
	.byte	0x8
	.byte	0xac
	.uaword	0x29d
	.byte	0x1c
	.uleb128 0xa
	.string	"mtu"
	.byte	0x8
	.byte	0xba
	.uaword	0x2ab
	.byte	0x20
	.uleb128 0xa
	.string	"hwaddr_len"
	.byte	0x8
	.byte	0xbc
	.uaword	0x29f
	.byte	0x22
	.uleb128 0xa
	.string	"hwaddr"
	.byte	0x8
	.byte	0xbe
	.uaword	0x6bb
	.byte	0x23
	.uleb128 0xa
	.string	"flags"
	.byte	0x8
	.byte	0xc0
	.uaword	0x29f
	.byte	0x29
	.uleb128 0xa
	.string	"name"
	.byte	0x8
	.byte	0xc2
	.uaword	0x6cb
	.byte	0x2a
	.uleb128 0xa
	.string	"num"
	.byte	0x8
	.byte	0xc4
	.uaword	0x29f
	.byte	0x2c
	.byte	0
	.uleb128 0x3
	.string	"netif_input_fn"
	.byte	0x8
	.byte	0x6d
	.uaword	0x622
	.uleb128 0x4
	.byte	0x4
	.uaword	0x628
	.uleb128 0xb
	.byte	0x1
	.uaword	0x417
	.uaword	0x63d
	.uleb128 0xc
	.uaword	0x526
	.uleb128 0xc
	.uaword	0x52c
	.byte	0
	.uleb128 0x3
	.string	"netif_output_fn"
	.byte	0x8
	.byte	0x76
	.uaword	0x654
	.uleb128 0x4
	.byte	0x4
	.uaword	0x65a
	.uleb128 0xb
	.byte	0x1
	.uaword	0x417
	.uaword	0x674
	.uleb128 0xc
	.uaword	0x52c
	.uleb128 0xc
	.uaword	0x526
	.uleb128 0xc
	.uaword	0x674
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x67a
	.uleb128 0x5
	.uaword	0x3e7
	.uleb128 0x3
	.string	"netif_linkoutput_fn"
	.byte	0x8
	.byte	0x7e
	.uaword	0x69a
	.uleb128 0x4
	.byte	0x4
	.uaword	0x6a0
	.uleb128 0xb
	.byte	0x1
	.uaword	0x417
	.uaword	0x6b5
	.uleb128 0xc
	.uaword	0x52c
	.uleb128 0xc
	.uaword	0x526
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x3e7
	.uleb128 0xd
	.uaword	0x29f
	.uaword	0x6cb
	.uleb128 0xe
	.uaword	0x40b
	.byte	0x5
	.byte	0
	.uleb128 0xd
	.uaword	0x295
	.uaword	0x6db
	.uleb128 0xe
	.uaword	0x40b
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.string	"ip_hdr"
	.byte	0x14
	.byte	0x9
	.byte	0x74
	.uaword	0x774
	.uleb128 0xa
	.string	"_v_hl"
	.byte	0x9
	.byte	0x76
	.uaword	0x29f
	.byte	0
	.uleb128 0xa
	.string	"_tos"
	.byte	0x9
	.byte	0x78
	.uaword	0x29f
	.byte	0x1
	.uleb128 0xa
	.string	"_len"
	.byte	0x9
	.byte	0x7a
	.uaword	0x2ab
	.byte	0x2
	.uleb128 0xa
	.string	"_id"
	.byte	0x9
	.byte	0x7c
	.uaword	0x2ab
	.byte	0x4
	.uleb128 0xa
	.string	"_offset"
	.byte	0x9
	.byte	0x7e
	.uaword	0x2ab
	.byte	0x6
	.uleb128 0xa
	.string	"_ttl"
	.byte	0x9
	.byte	0x84
	.uaword	0x29f
	.byte	0x8
	.uleb128 0xa
	.string	"_proto"
	.byte	0x9
	.byte	0x86
	.uaword	0x29f
	.byte	0x9
	.uleb128 0xa
	.string	"_chksum"
	.byte	0x9
	.byte	0x88
	.uaword	0x2ab
	.byte	0xa
	.uleb128 0xa
	.string	"src"
	.byte	0x9
	.byte	0x8a
	.uaword	0x3f8
	.byte	0xc
	.uleb128 0xa
	.string	"dest"
	.byte	0x9
	.byte	0x8b
	.uaword	0x3f8
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.string	"raw_recv_fn"
	.byte	0xa
	.byte	0x3c
	.uaword	0x787
	.uleb128 0x4
	.byte	0x4
	.uaword	0x78d
	.uleb128 0xb
	.byte	0x1
	.uaword	0x29f
	.uaword	0x7ac
	.uleb128 0xc
	.uaword	0x29d
	.uleb128 0xc
	.uaword	0x7ac
	.uleb128 0xc
	.uaword	0x526
	.uleb128 0xc
	.uaword	0x6b5
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x7b2
	.uleb128 0x9
	.string	"raw_pcb"
	.byte	0x1c
	.byte	0xa
	.byte	0x3f
	.uaword	0x848
	.uleb128 0xa
	.string	"local_ip"
	.byte	0xa
	.byte	0x41
	.uaword	0x3e7
	.byte	0
	.uleb128 0xa
	.string	"remote_ip"
	.byte	0xa
	.byte	0x41
	.uaword	0x3e7
	.byte	0x4
	.uleb128 0xa
	.string	"so_options"
	.byte	0xa
	.byte	0x41
	.uaword	0x29f
	.byte	0x8
	.uleb128 0xa
	.string	"tos"
	.byte	0xa
	.byte	0x41
	.uaword	0x29f
	.byte	0x9
	.uleb128 0xa
	.string	"ttl"
	.byte	0xa
	.byte	0x41
	.uaword	0x29f
	.byte	0xa
	.uleb128 0xa
	.string	"next"
	.byte	0xa
	.byte	0x43
	.uaword	0x7ac
	.byte	0xc
	.uleb128 0xa
	.string	"protocol"
	.byte	0xa
	.byte	0x45
	.uaword	0x29f
	.byte	0x10
	.uleb128 0xa
	.string	"recv"
	.byte	0xa
	.byte	0x48
	.uaword	0x774
	.byte	0x14
	.uleb128 0xf
	.uaword	.LASF0
	.byte	0xa
	.byte	0x4a
	.uaword	0x29d
	.byte	0x18
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x10
	.byte	0x1
	.string	"raw_input"
	.byte	0x1
	.byte	0x4c
	.byte	0x1
	.uaword	0x29f
	.uaword	.LFB0
	.uaword	.LFE0
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x904
	.uleb128 0x11
	.string	"p"
	.byte	0x1
	.byte	0x4c
	.uaword	0x526
	.uaword	.LLST0
	.uleb128 0x11
	.string	"inp"
	.byte	0x1
	.byte	0x4c
	.uaword	0x52c
	.uaword	.LLST1
	.uleb128 0x12
	.string	"pcb"
	.byte	0x1
	.byte	0x4e
	.uaword	0x7ac
	.uaword	.LLST2
	.uleb128 0x12
	.string	"prev"
	.byte	0x1
	.byte	0x4e
	.uaword	0x7ac
	.uaword	.LLST3
	.uleb128 0x12
	.string	"iphdr"
	.byte	0x1
	.byte	0x4f
	.uaword	0x904
	.uaword	.LLST4
	.uleb128 0x13
	.string	"proto"
	.byte	0x1
	.byte	0x50
	.uaword	0x2d1
	.byte	0x6
	.byte	0x78
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uleb128 0x12
	.string	"eaten"
	.byte	0x1
	.byte	0x51
	.uaword	0x29f
	.uaword	.LLST5
	.uleb128 0x14
	.uaword	.LVL7
	.uleb128 0x15
	.byte	0x1
	.byte	0x67
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x15
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.uleb128 0x15
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x6db
	.uleb128 0x10
	.byte	0x1
	.string	"raw_bind"
	.byte	0x1
	.byte	0x8e
	.byte	0x1
	.uaword	0x417
	.uaword	.LFB1
	.uaword	.LFE1
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x946
	.uleb128 0x16
	.string	"pcb"
	.byte	0x1
	.byte	0x8e
	.uaword	0x7ac
	.byte	0x1
	.byte	0x64
	.uleb128 0x17
	.uaword	.LASF1
	.byte	0x1
	.byte	0x8e
	.uaword	0x6b5
	.byte	0x1
	.byte	0x65
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.string	"raw_connect"
	.byte	0x1
	.byte	0xa2
	.byte	0x1
	.uaword	0x417
	.uaword	.LFB2
	.uaword	.LFE2
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x985
	.uleb128 0x16
	.string	"pcb"
	.byte	0x1
	.byte	0xa2
	.uaword	0x7ac
	.byte	0x1
	.byte	0x64
	.uleb128 0x17
	.uaword	.LASF1
	.byte	0x1
	.byte	0xa2
	.uaword	0x6b5
	.byte	0x1
	.byte	0x65
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.string	"raw_recv"
	.byte	0x1
	.byte	0xb7
	.byte	0x1
	.uaword	.LFB3
	.uaword	.LFE3
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x9cb
	.uleb128 0x16
	.string	"pcb"
	.byte	0x1
	.byte	0xb7
	.uaword	0x7ac
	.byte	0x1
	.byte	0x64
	.uleb128 0x16
	.string	"recv"
	.byte	0x1
	.byte	0xb7
	.uaword	0x774
	.byte	0x1
	.byte	0x65
	.uleb128 0x17
	.uaword	.LASF0
	.byte	0x1
	.byte	0xb7
	.uaword	0x29d
	.byte	0x1
	.byte	0x66
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.string	"raw_sendto"
	.byte	0x1
	.byte	0xcb
	.byte	0x1
	.uaword	0x417
	.uaword	.LFB4
	.uaword	.LFE4
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xb58
	.uleb128 0x11
	.string	"pcb"
	.byte	0x1
	.byte	0xcb
	.uaword	0x7ac
	.uaword	.LLST6
	.uleb128 0x11
	.string	"p"
	.byte	0x1
	.byte	0xcb
	.uaword	0x526
	.uaword	.LLST7
	.uleb128 0x19
	.uaword	.LASF1
	.byte	0x1
	.byte	0xcb
	.uaword	0x6b5
	.uaword	.LLST8
	.uleb128 0x12
	.string	"err"
	.byte	0x1
	.byte	0xcd
	.uaword	0x417
	.uaword	.LLST9
	.uleb128 0x12
	.string	"netif"
	.byte	0x1
	.byte	0xce
	.uaword	0x52c
	.uaword	.LLST10
	.uleb128 0x12
	.string	"src_ip"
	.byte	0x1
	.byte	0xcf
	.uaword	0x6b5
	.uaword	.LLST11
	.uleb128 0x12
	.string	"q"
	.byte	0x1
	.byte	0xd0
	.uaword	0x526
	.uaword	.LLST12
	.uleb128 0x1a
	.uaword	.LVL16
	.uaword	0xccd
	.uaword	0xa71
	.uleb128 0x15
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x44
	.uleb128 0x15
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.uaword	.LVL17
	.uaword	0xcf2
	.uaword	0xa8e
	.uleb128 0x15
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x30
	.uleb128 0x15
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x15
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x1a
	.uaword	.LVL20
	.uaword	0xd1b
	.uaword	0xaa2
	.uleb128 0x15
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.uaword	.LVL23
	.uaword	0xd38
	.uaword	0xabc
	.uleb128 0x15
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.uleb128 0x15
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.uaword	.LVL25
	.uaword	0xd77
	.uaword	0xad0
	.uleb128 0x15
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.uaword	.LVL27
	.uaword	0xccd
	.uaword	0xaea
	.uleb128 0x15
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x9
	.byte	0xec
	.uleb128 0x15
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.uaword	.LVL28
	.uaword	0xd1b
	.uaword	0xafe
	.uleb128 0x15
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.uaword	.LVL32
	.uaword	0xd77
	.uaword	0xb12
	.uleb128 0x15
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.uaword	.LVL34
	.uaword	0xd95
	.uaword	0xb2c
	.uleb128 0x15
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0x15
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.uaword	.LVL36
	.uaword	0xdb5
	.uleb128 0x15
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	.LC0
	.uleb128 0x15
	.byte	0x2
	.byte	0x8a
	.sleb128 8
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x15
	.byte	0x2
	.byte	0x8a
	.sleb128 4
	.byte	0x2
	.byte	0x8
	.byte	0xe7
	.uleb128 0x15
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x5
	.byte	0x3
	.uaword	.LC1
	.byte	0
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.string	"raw_send"
	.byte	0x1
	.uahalf	0x11e
	.byte	0x1
	.uaword	0x417
	.uaword	.LFB5
	.uaword	.LFE5
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xbbb
	.uleb128 0x1d
	.string	"pcb"
	.byte	0x1
	.uahalf	0x11e
	.uaword	0x7ac
	.uaword	.LLST13
	.uleb128 0x1d
	.string	"p"
	.byte	0x1
	.uahalf	0x11e
	.uaword	0x526
	.uaword	.LLST14
	.uleb128 0x1e
	.uaword	.LVL38
	.byte	0x1
	.uaword	0x9cb
	.uleb128 0x15
	.byte	0x1
	.byte	0x66
	.byte	0x5
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x15
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.uleb128 0x15
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.string	"raw_remove"
	.byte	0x1
	.uahalf	0x12c
	.byte	0x1
	.uaword	.LFB6
	.uaword	.LFE6
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xc2f
	.uleb128 0x1d
	.string	"pcb"
	.byte	0x1
	.uahalf	0x12c
	.uaword	0x7ac
	.uaword	.LLST15
	.uleb128 0x20
	.string	"pcb2"
	.byte	0x1
	.uahalf	0x12e
	.uaword	0x7ac
	.uaword	.LLST16
	.uleb128 0x21
	.uaword	.LVL44
	.byte	0x1
	.uaword	0xdda
	.uaword	0xc17
	.uleb128 0x15
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.uleb128 0x15
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1e
	.uaword	.LVL46
	.byte	0x1
	.uaword	0xdda
	.uleb128 0x15
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.uleb128 0x15
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.string	"raw_new"
	.byte	0x1
	.uahalf	0x14b
	.byte	0x1
	.uaword	0x7ac
	.uaword	.LFB7
	.uaword	.LFE7
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xc80
	.uleb128 0x1d
	.string	"proto"
	.byte	0x1
	.uahalf	0x14b
	.uaword	0x29f
	.uaword	.LLST17
	.uleb128 0x22
	.string	"pcb"
	.byte	0x1
	.uahalf	0x14d
	.uaword	0x7ac
	.byte	0x1
	.byte	0x62
	.uleb128 0x1b
	.uaword	.LVL49
	.uaword	0xdf9
	.uleb128 0x15
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x13
	.string	"raw_pcbs"
	.byte	0x1
	.byte	0x38
	.uaword	0x7ac
	.byte	0x5
	.byte	0x3
	.uaword	raw_pcbs
	.uleb128 0x23
	.string	"current_iphdr_src"
	.byte	0x9
	.byte	0xaa
	.uaword	0x3e7
	.byte	0x1
	.byte	0x1
	.uleb128 0x23
	.string	"current_iphdr_dest"
	.byte	0x9
	.byte	0xac
	.uaword	0x3e7
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.byte	0x1
	.string	"pbuf_header"
	.byte	0x7
	.byte	0x99
	.byte	0x1
	.uaword	0x29f
	.byte	0x1
	.uaword	0xcf2
	.uleb128 0xc
	.uaword	0x526
	.uleb128 0xc
	.uaword	0x2d1
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.string	"pbuf_alloc"
	.byte	0x7
	.byte	0x92
	.byte	0x1
	.uaword	0x526
	.byte	0x1
	.uaword	0xd1b
	.uleb128 0xc
	.uaword	0x45f
	.uleb128 0xc
	.uaword	0x2ab
	.uleb128 0xc
	.uaword	0x4a7
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.string	"ip_route"
	.byte	0x9
	.byte	0xaf
	.byte	0x1
	.uaword	0x52c
	.byte	0x1
	.uaword	0xd38
	.uleb128 0xc
	.uaword	0x6b5
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.string	"ip_output_if"
	.byte	0x9
	.byte	0xb3
	.byte	0x1
	.uaword	0x417
	.byte	0x1
	.uaword	0xd77
	.uleb128 0xc
	.uaword	0x526
	.uleb128 0xc
	.uaword	0x6b5
	.uleb128 0xc
	.uaword	0x674
	.uleb128 0xc
	.uaword	0x29f
	.uleb128 0xc
	.uaword	0x29f
	.uleb128 0xc
	.uaword	0x29f
	.uleb128 0xc
	.uaword	0x52c
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.string	"pbuf_free"
	.byte	0x7
	.byte	0x9b
	.byte	0x1
	.uaword	0x29f
	.byte	0x1
	.uaword	0xd95
	.uleb128 0xc
	.uaword	0x526
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.string	"pbuf_chain"
	.byte	0x7
	.byte	0x9e
	.byte	0x1
	.byte	0x1
	.uaword	0xdb5
	.uleb128 0xc
	.uaword	0x526
	.uleb128 0xc
	.uaword	0x526
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.string	"Ifx_Lwip_printf"
	.byte	0x3
	.byte	0x2c
	.byte	0x1
	.uaword	0x2c5
	.byte	0x1
	.uaword	0xdda
	.uleb128 0xc
	.uaword	0x28a
	.uleb128 0x26
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.string	"memp_free"
	.byte	0x4
	.byte	0x6c
	.byte	0x1
	.byte	0x1
	.uaword	0xdf9
	.uleb128 0xc
	.uaword	0x396
	.uleb128 0xc
	.uaword	0x29d
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.string	"memp_malloc"
	.byte	0x4
	.byte	0x6a
	.byte	0x1
	.uaword	0x29d
	.byte	0x1
	.uleb128 0xc
	.uaword	0x396
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
	.uleb128 0xc
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x14
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x19
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uaword	.LVL0-.Ltext0
	.uaword	.LVL3-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL8-.Ltext0
	.uaword	.LVL10-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0-.Ltext0
	.uaword	.LVL3-.Ltext0
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL3-.Ltext0
	.uaword	.LFE0-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL2-.Ltext0
	.uaword	.LVL4-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL4-.Ltext0
	.uaword	.LVL6-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL6-.Ltext0
	.uaword	.LVL9-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL9-.Ltext0
	.uaword	.LVL10-.Ltext0
	.uahalf	0x2
	.byte	0x8f
	.sleb128 12
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL1-.Ltext0
	.uaword	.LVL3-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL3-.Ltext0
	.uaword	.LVL5-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL5-.Ltext0
	.uaword	.LVL6-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL9-.Ltext0
	.uaword	.LVL10-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL0-.Ltext0
	.uaword	.LVL3-.Ltext0
	.uahalf	0x2
	.byte	0x84
	.sleb128 4
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL0-.Ltext0
	.uaword	.LVL8-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL8-.Ltext0
	.uaword	.LVL10-.Ltext0
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL10-.Ltext0
	.uaword	.LFE0-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL14-.Ltext0
	.uaword	.LVL15-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL15-.Ltext0
	.uaword	.LVL21-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL21-.Ltext0
	.uaword	.LVL22-.Ltext0
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL22-.Ltext0
	.uaword	.LFE4-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL14-.Ltext0
	.uaword	.LVL16-1-.Ltext0
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL16-1-.Ltext0
	.uaword	.LFE4-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL14-.Ltext0
	.uaword	.LVL16-1-.Ltext0
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL16-1-.Ltext0
	.uaword	.LFE4-.Ltext0
	.uahalf	0x1
	.byte	0x6e
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL24-.Ltext0
	.uaword	.LVL25-1-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL25-1-.Ltext0
	.uaword	.LVL25-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL20-.Ltext0
	.uaword	.LVL23-1-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL28-.Ltext0
	.uaword	.LVL30-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL31-.Ltext0
	.uaword	.LVL32-1-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL22-.Ltext0
	.uaword	.LVL23-1-.Ltext0
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL18-.Ltext0
	.uaword	.LVL19-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL19-.Ltext0
	.uaword	.LVL25-.Ltext0
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL26-.Ltext0
	.uaword	.LVL29-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL29-.Ltext0
	.uaword	.LVL33-.Ltext0
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL33-.Ltext0
	.uaword	.LVL34-1-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL34-1-.Ltext0
	.uaword	.LVL35-.Ltext0
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL35-.Ltext0
	.uaword	.LFE4-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL37-.Ltext0
	.uaword	.LVL38-1-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL38-1-.Ltext0
	.uaword	.LFE5-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL37-.Ltext0
	.uaword	.LVL38-1-.Ltext0
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL38-1-.Ltext0
	.uaword	.LFE5-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL39-.Ltext0
	.uaword	.LVL43-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL43-.Ltext0
	.uaword	.LVL44-1-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL44-1-.Ltext0
	.uaword	.LVL44-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL44-.Ltext0
	.uaword	.LVL46-1-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL46-1-.Ltext0
	.uaword	.LFE6-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL40-.Ltext0
	.uaword	.LVL41-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL41-.Ltext0
	.uaword	.LVL42-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL42-.Ltext0
	.uaword	.LVL45-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL47-.Ltext0
	.uaword	.LVL48-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL48-.Ltext0
	.uaword	.LFE7-.Ltext0
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
.LASF0:
	.string	"recv_arg"
.LASF1:
	.string	"ipaddr"
	.extern	memp_malloc,STT_FUNC,0
	.extern	memp_free,STT_FUNC,0
	.extern	Ifx_Lwip_printf,STT_FUNC,0
	.extern	pbuf_chain,STT_FUNC,0
	.extern	pbuf_free,STT_FUNC,0
	.extern	ip_output_if,STT_FUNC,0
	.extern	ip_route,STT_FUNC,0
	.extern	pbuf_alloc,STT_FUNC,0
	.extern	pbuf_header,STT_FUNC,0
	.extern	current_iphdr_dest,STT_OBJECT,4
	.extern	current_iphdr_src,STT_OBJECT,4
	.ident	"GCC: (HighTec Release HDP-v4.9.1.0-infineon-2.0-df254e8) 4.9.4 build on 2018-04-18"
