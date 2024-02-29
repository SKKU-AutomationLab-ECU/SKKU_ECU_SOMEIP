	.file	"tcp_in.c"
.section .text,"ax",@progbits
.Ltext0:
	.align 1
	.type	tcp_oos_insert_segment, @function
tcp_oos_insert_segment:
.LFB4:
	.file 1 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_in.c"
	.loc 1 801 0
.LVL0:
	.loc 1 804 0
	ld.a	%a15, [%a4] 16
	.loc 1 801 0
	mov.aa	%a14, %a4
	mov.aa	%a13, %a5
	.loc 1 804 0
	ld.bu	%d15, [%a15] 13
	ld.bu	%d4, [%a15] 12
	sh	%d15, %d15, 8
	or	%d4, %d15
	call	lwip_ntohs
.LVL1:
	jnz.t	%d2, 0, .L2
	.loc 1 812 0
	jz.a	%a13, .L20
	.loc 1 813 0
	ld.a	%a15, [%a13] 16
	movh.a	%a2, hi:seqno
	ld.w	%d4, [%a2] lo:seqno
	ld.bu	%d3, [%a15] 5
	ld.bu	%d2, [%a15] 4
	sh	%d15, %d3, 8
	or	%d3, %d15, %d2
	ld.bu	%d15, [%a15] 6
	mov.d	%d5, %a2
	sh	%d15, %d15, 16
	or	%d2, %d15, %d3
	ld.bu	%d15, [%a15] 7
	ld.hu	%d3, [%a14] 8
	sh	%d15, %d15, 24
	or	%d15, %d2
	sub	%d3, %d15
	ld.hu	%d2, [%a13] 8
	add	%d3, %d4
	sub	%d2, %d3, %d2
	addi	%d8, %d5, lo:seqno
	.loc 1 812 0
	mov.aa	%a12, %a13
	jgez	%d2, .L18
	j	.L6
.LVL2:
.L7:
	.loc 1 820 0
	ld.a	%a12, [%a13]0
.LVL3:
	.loc 1 821 0
	mov.aa	%a4, %a13
	call	tcp_seg_free
.LVL4:
	.loc 1 812 0
	jz.a	%a12, .L20
.L22:
	.loc 1 813 0 discriminator 1
	mov.a	%a15, %d8
	ld.w	%d4, [%a15]0
	ld.a	%a15, [%a12] 16
	ld.bu	%d2, [%a15] 5
	ld.bu	%d15, [%a15] 4
	sh	%d2, %d2, 8
	or	%d3, %d2, %d15
	ld.bu	%d15, [%a15] 6
	sh	%d15, %d15, 16
	or	%d2, %d15, %d3
	ld.bu	%d15, [%a15] 7
	sh	%d15, %d15, 24
	or	%d15, %d2
	ld.hu	%d2, [%a14] 8
	sub	%d2, %d15
	add	%d3, %d2, %d4
	ld.hu	%d2, [%a12] 8
	sub	%d2, %d3, %d2
	.loc 1 812 0 discriminator 1
	jltz	%d2, .L6
	mov.aa	%a13, %a12
.LVL5:
.L18:
	.loc 1 816 0
	ld.bu	%d15, [%a15] 13
	ld.bu	%d4, [%a15] 12
	sh	%d15, %d15, 8
	or	%d4, %d15
	call	lwip_ntohs
.LVL6:
	jz.t	%d2, 0, .L7
	.loc 1 817 0
	ld.a	%a15, [%a14] 16
	mov	%d4, 1
	ld.bu	%d15, [%a15] 13
	ld.bu	%d2, [%a15] 12
	sh	%d15, %d15, 8
	or	%d15, %d2
	call	lwip_htons
.LVL7:
	or	%d2, %d15
	extr.u	%d2, %d2, 0, 16
	.loc 1 820 0
	ld.a	%a12, [%a13]0
.LVL8:
	.loc 1 821 0
	mov.aa	%a4, %a13
	.loc 1 817 0
	st.b	[%a15] 12, %d2
	sh	%d2, -8
	st.b	[%a15] 13, %d2
.LVL9:
	.loc 1 821 0
	call	tcp_seg_free
.LVL10:
	.loc 1 812 0
	jnz.a	%a12, .L22
.LVL11:
.L20:
	.loc 1 807 0
	mov.a	%a12, 0
.LVL12:
.L4:
	.loc 1 830 0
	st.a	[%a14]0, %a12
	ret
.L6:
	.loc 1 823 0
	jlez	%d3, .L4
	.loc 1 826 0
	sub	%d4, %d15, %d4
	extr.u	%d4, %d4, 0, 16
	.loc 1 827 0
	ld.a	%a4, [%a14] 4
	.loc 1 826 0
	st.h	[%a14] 8, %d4
	.loc 1 827 0
	call	pbuf_realloc
.LVL13:
	.loc 1 830 0
	st.a	[%a14]0, %a12
	ret
.LVL14:
.L2:
	.loc 1 806 0
	mov.aa	%a4, %a13
	call	tcp_segs_free
.LVL15:
	j	.L20
.LFE4:
	.size	tcp_oos_insert_segment, .-tcp_oos_insert_segment
.section .rodata,"a",@progbits
.LC0:
	.string	"Assertion \"%s\" failed at line %d in %s\n"
.LC1:
	.string	"tcp_receive: wrong state"
.LC2:
	.string	"0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_in.c"
.LC3:
	.string	"pcb->snd_queuelen >= pbuf_clen(next->p)"
.LC4:
	.string	"tcp_receive: valid queue length"
.LC5:
	.string	"inseg.p != NULL"
.LC6:
	.string	"insane offset!"
.LC7:
	.string	"pbuf too short!"
.LC8:
	.string	"pbuf_header failed"
.LC9:
	.string	"tcp_receive: segment not trimmed correctly to rcv_wnd\n"
.LC10:
	.string	"tcp_receive: segment not trimmed correctly to ooseq queue\n"
.LC11:
	.string	"tcp_receive: tcplen > rcv_wnd\n"
.LC12:
	.string	"tcp_receive: ooseq tcplen > rcv_wnd\n"
.section .text,"ax",@progbits
	.align 1
	.type	tcp_receive, @function
tcp_receive:
.LFB5:
	.loc 1 848 0
.LVL16:
	.loc 1 864 0
	ld.w	%d15, [%a4] 24
	.loc 1 848 0
	sub.a	%SP, 16
.LCFI0:
	.loc 1 848 0
	mov.aa	%a15, %a4
	.loc 1 864 0
	jlt.u	%d15, 4, .L216
.LVL17:
.L24:
	.loc 1 866 0
	movh.a	%a2, hi:flags
	ld.bu	%d15, [%a2] lo:flags
	movh.a	%a14, hi:seqno
	movh	%d9, hi:tcplen
	jz.t	%d15, 4, .L26
	.loc 1 870 0
	movh.a	%a14, hi:seqno
	ld.w	%d2, [%a15] 88
	ld.w	%d3, [%a14] lo:seqno
	.loc 1 867 0
	ld.hu	%d5, [%a15] 100
	.loc 1 870 0
	sub	%d15, %d2, %d3
	.loc 1 867 0
	ld.w	%d4, [%a15] 92
.LVL18:
	.loc 1 870 0
	jltz	%d15, .L217
	.loc 1 871 0 discriminator 1
	movh	%d14, hi:ackno
	.loc 1 870 0 discriminator 1
	jeq	%d2, %d3, .L29
	mov.a	%a3, %d14
	ld.w	%d2, [%a3] lo:ackno
.L30:
	.loc 1 871 0 discriminator 1
	jeq	%d4, %d2, .L218
.L31:
	.loc 1 924 0
	ld.w	%d3, [%a15] 76
	sub	%d15, %d2, %d3
	jlez	%d15, .L219
	.loc 1 957 0
	ld.w	%d3, [%a15] 84
	sub	%d3, %d2, %d3
	jlez	%d3, .L220
	.loc 1 1046 0
	mov	%d15, 0
	movh	%d9, hi:tcplen
	st.h	[%a15] 104, %d15
.LVL19:
.L53:
	.loc 1 1056 0
	mov.a	%a3, %d14
	ld.a	%a2, [%a15] 112
	.loc 1 1070 0
	movh	%d12, hi:.LC0
	movh	%d13, hi:.LC3
	movh	%d11, hi:.LC2
	.loc 1 1056 0
	lea	%a13, [%a3] lo:ackno
	.loc 1 1070 0
	addi	%d12, %d12, lo:.LC0
	addi	%d13, %d13, lo:.LC3
	addi	%d11, %d11, lo:.LC2
.L38:
	.loc 1 1055 0
	jz.a	%a2, .L65
.L62:
	.loc 1 1056 0 discriminator 1
	ld.a	%a2, [%a2] 16
	ld.w	%d10, [%a13]0
	ld.bu	%d3, [%a2] 5
	ld.bu	%d2, [%a2] 4
	sh	%d3, %d3, 8
	or	%d3, %d2
	ld.bu	%d2, [%a2] 6
	ld.bu	%d4, [%a2] 7
	sh	%d2, %d2, 16
	or	%d2, %d3
	sh	%d4, %d4, 24
	or	%d4, %d2
	call	lwip_ntohl
.LVL20:
	ld.a	%a2, [%a15] 112
	mov	%d15, %d2
	sub	%d15, %d10, %d15
	ld.hu	%d8, [%a2] 8
	ld.a	%a2, [%a2] 16
	ld.bu	%d2, [%a2] 13
	ld.bu	%d4, [%a2] 12
	sh	%d2, %d2, 8
	or	%d4, %d2
	call	lwip_ntohs
.LVL21:
	and	%d2, %d2, 3
	cadd	%d2, %d2, %d8, 1
	sub	%d2, %d15, %d2
	.loc 1 1055 0 discriminator 1
	jltz	%d2, .L65
	.loc 1 1056 0
	ld.w	%d15, [%a15] 84
	ld.w	%d3, [%a13]0
	sub	%d15, %d3, %d15
	jgtz	%d15, .L65
	.loc 1 1062 0
	ld.a	%a12, [%a15] 112
.LVL22:
	.loc 1 1063 0
	ld.w	%d15, [%a12]0
	st.w	[%a15] 112, %d15
	.loc 1 1065 0
	jz	%d15, .L221
.L54:
	.loc 1 1070 0
	ld.a	%a4, [%a12] 4
	ld.hu	%d15, [%a15] 108
	call	pbuf_clen
.LVL23:
	extr.u	%d2, %d2, 0, 16
	jlt.u	%d15, %d2, .L222
.L55:
	.loc 1 1072 0
	ld.hu	%d15, [%a15] 104
	jnz	%d15, .L223
.L57:
	.loc 1 1075 0
	ld.a	%a4, [%a12] 4
	call	pbuf_clen
.LVL24:
	ld.h	%d15, [%a15] 108
	.loc 1 1076 0
	mov.aa	%a4, %a12
	.loc 1 1075 0
	sub	%d2, %d15, %d2
	st.h	[%a15] 108, %d2
	.loc 1 1076 0
	call	tcp_seg_free
.LVL25:
	.loc 1 1078 0
	ld.hu	%d15, [%a15] 108
	jz	%d15, .L210
	.loc 1 1079 0
	ld.w	%d15, [%a15] 116
	jz	%d15, .L224
.L210:
	ld.a	%a2, [%a15] 112
	.loc 1 1055 0 discriminator 2
	jnz.a	%a2, .L62
.LVL26:
.L65:
	.loc 1 1091 0
	ld.w	%d4, [%a15] 60
	jz	%d4, .L26
	.loc 1 1091 0 is_stmt 0 discriminator 1
	mov.a	%a2, %d14
	ld.w	%d15, [%a15] 64
	ld.w	%d2, [%a2] lo:ackno
	sub	%d2, %d15, %d2
	jltz	%d2, .L225
.L26:
	.loc 1 1120 0 is_stmt 1
	mov.a	%a2, %d9
	ld.hu	%d15, [%a2] lo:tcplen
	jz	%d15, .L68
	.loc 1 1120 0 is_stmt 0 discriminator 1
	ld.w	%d2, [%a15] 24
	jlt.u	%d2, 7, .L226
.L68:
	.loc 1 1527 0 is_stmt 1
	ld.w	%d2, [%a14] lo:seqno
	ld.w	%d15, [%a15] 44
	sub	%d3, %d2, %d15
	jltz	%d3, .L130
	add	%d2, 1
	sub	%d15, %d2, %d15
	.loc 1 1527 0 is_stmt 0 discriminator 1
	ld.hu	%d2, [%a15] 48
	sub	%d2, %d15, %d2
	jlez	%d2, .L23
.L130:
	.loc 1 1528 0 is_stmt 1
	ld.bu	%d15, [%a15] 34
	or	%d15, %d15, 2
	st.b	[%a15] 34, %d15
	ret
.LVL27:
.L234:
	.loc 1 1454 0 discriminator 1
	sub	%d15, %d4, %d15
	.loc 1 1453 0 discriminator 1
	jgtz	%d15, .L227
.LVL28:
.L23:
	ret
.LVL29:
.L226:
	.loc 1 1151 0
	ld.w	%d3, [%a15] 44
	ld.w	%d2, [%a14] lo:seqno
	sub	%d10, %d3, %d2
	addi	%d4, %d10, -1
	jltz	%d4, .L69
	addi	%d4, %d3, 1
	sub	%d4, %d2
	.loc 1 1151 0 is_stmt 0 discriminator 1
	sub	%d15, %d4, %d15
	jlez	%d15, .L228
.L69:
	.loc 1 1202 0 is_stmt 1
	sub	%d15, %d2, %d3
	jltz	%d15, .L229
.L79:
	.loc 1 1214 0 discriminator 1
	ld.hu	%d15, [%a15] 48
	rsub	%d15, %d15, 1
	add	%d15, %d2
	sub	%d15, %d3
	jlez	%d15, .L230
.L80:
	.loc 1 1531 0
	.loc 1 1520 0
	mov.aa	%a4, %a15
	.loc 1 1531 0
	lea	%SP, [%SP] 16
	.loc 1 1520 0
	j	tcp_send_empty_ack
.LVL30:
.L223:
	.loc 1 1072 0 discriminator 1
	ld.a	%a2, [%a12] 16
	ld.bu	%d15, [%a2] 13
	ld.bu	%d4, [%a2] 12
	sh	%d15, %d15, 8
	or	%d4, %d15
	call	lwip_ntohs
.LVL31:
	jz.t	%d2, 0, .L57
	.loc 1 1073 0
	ld.h	%d15, [%a15] 104
	add	%d15, -1
	st.h	[%a15] 104, %d15
	j	.L57
.L222:
	.loc 1 1070 0 discriminator 1
	mov	%d15, 1070
	mov.a	%a4, %d12
	st.w	[%SP]0, %d13
	st.w	[%SP] 4, %d15
	st.w	[%SP] 8, %d11
	call	Ifx_Lwip_printf
.LVL32:
	j	.L55
.L221:
	.loc 1 1066 0
	st.h	[%a15] 110, %d15
	j	.L54
.L224:
	.loc 1 1079 0 discriminator 1
	ld.a	%a2, [%a15] 112
	jnz.a	%a2, .L38
	.loc 1 1079 0 is_stmt 0 discriminator 2
	movh	%d15, hi:.LC4
	addi	%d15, %d15, lo:.LC4
	mov.a	%a4, %d12
	st.w	[%SP] 8, %d11
	st.w	[%SP]0, %d15
	mov	%d15, 1080
	st.w	[%SP] 4, %d15
	call	Ifx_Lwip_printf
.LVL33:
	j	.L210
.LVL34:
.L216:
	.loc 1 864 0 is_stmt 1 discriminator 1
	movh	%d15, hi:.LC1
	addi	%d15, %d15, lo:.LC1
	movh.a	%a4, hi:.LC0
.LVL35:
	lea	%a4, [%a4] lo:.LC0
	st.w	[%SP]0, %d15
	mov	%d15, 864
	st.w	[%SP] 4, %d15
	movh	%d15, hi:.LC2
	addi	%d15, %d15, lo:.LC2
	st.w	[%SP] 8, %d15
	call	Ifx_Lwip_printf
.LVL36:
	j	.L24
.LVL37:
.L217:
	movh.a	%a2, hi:tcphdr
	ld.a	%a2, [%a2] lo:tcphdr
	movh	%d14, hi:ackno
	ld.bu	%d15, [%a2] 15
	ld.bu	%d2, [%a2] 14
	mov.a	%a2, %d14
	sh	%d15, %d15, 8
	or	%d15, %d2
	ld.w	%d2, [%a2] lo:ackno
.L28:
	.loc 1 876 0
	ld.hu	%d6, [%a15] 102
	.loc 1 873 0
	st.h	[%a15] 100, %d15
	.loc 1 876 0
	jge.u	%d6, %d15, .L32
	.loc 1 877 0
	st.h	[%a15] 102, %d15
.L32:
	.loc 1 879 0
	st.w	[%a15] 88, %d3
	.loc 1 880 0
	st.w	[%a15] 92, %d2
	.loc 1 881 0
	jnz	%d15, .L33
	.loc 1 882 0
	ld.bu	%d3, [%a15] 153
	jnz	%d3, .L31
	.loc 1 884 0
	st.b	[%a15] 152, %d15
	.loc 1 885 0
	mov	%d15, 1
	st.b	[%a15] 153, %d15
	j	.L31
.LVL38:
.L230:
	.loc 1 1216 0
	jeq	%d2, %d3, .L231
	.loc 1 1369 0
	mov.aa	%a4, %a15
	call	tcp_send_empty_ack
.LVL39:
	.loc 1 1372 0
	ld.a	%a12, [%a15] 120
	ld.w	%d4, [%a14] lo:seqno
	mov.a	%a13, 0
	addi	%d6, %d4, -1
	addi	%d7, %d4, 1
	jnz.a	%a12, .L205
	j	.L232
.LVL40:
.L124:
	.loc 1 1431 0
	ld.a	%a3, [%a13] 16
	ld.bu	%d5, [%a3] 5
	ld.bu	%d3, [%a3] 4
	sh	%d2, %d5, 8
	or	%d5, %d2, %d3
	ld.bu	%d2, [%a3] 6
	sh	%d2, %d2, 16
	or	%d3, %d2, %d5
	ld.bu	%d2, [%a3] 7
	sh	%d2, %d2, 24
	or	%d2, %d3
	sub	%d2, %d6, %d2
	jltz	%d2, .L125
	.loc 1 1431 0 is_stmt 0 discriminator 1
	sub	%d2, %d7, %d15
	jlez	%d2, .L233
.L125:
	.loc 1 1453 0 is_stmt 1
	ld.a	%a3, [%a12]0
	mov.aa	%a13, %a12
.LVL41:
	jz.a	%a3, .L234
	mov.aa	%a12, %a3
.LVL42:
.L205:
	.loc 1 1389 0
	ld.a	%a2, [%a12] 16
	ld.bu	%d2, [%a2] 5
	ld.bu	%d15, [%a2] 4
	sh	%d2, %d2, 8
	or	%d3, %d2, %d15
	ld.bu	%d15, [%a2] 6
	sh	%d15, %d15, 16
	or	%d2, %d15, %d3
	ld.bu	%d15, [%a2] 7
	sh	%d15, %d15, 24
	or	%d15, %d2
	jeq	%d15, %d4, .L235
	.loc 1 1415 0
	jnz.a	%a13, .L124
	.loc 1 1416 0
	sub	%d2, %d4, %d15
	jgez	%d2, .L125
	.loc 1 1421 0
	movh.a	%a4, hi:inseg
	lea	%a4, [%a4] lo:inseg
	call	tcp_seg_copy
.LVL43:
	.loc 1 1422 0
	jz.a	%a2, .L23
.L122:
	.loc 1 1403 0
	st.a	[%a15] 120, %a2
.L123:
	.loc 1 1531 0
	.loc 1 1405 0
	mov.aa	%a4, %a2
	mov.aa	%a5, %a12
	.loc 1 1531 0
	lea	%SP, [%SP] 16
	.loc 1 1405 0
	j	tcp_oos_insert_segment
.LVL44:
.L225:
	.loc 1 1094 0
	movh.a	%a2, hi:tcp_ticks
	.loc 1 1100 0
	ld.h	%d3, [%a15] 68
	.loc 1 1094 0
	ld.w	%d2, [%a2] lo:tcp_ticks
	sub	%d15, %d2, %d4
	.loc 1 1100 0
	sha	%d2, %d3, -3
	sub	%d2, %d15, %d2
	extr.u	%d2, %d2, 0, 16
	.loc 1 1101 0
	add	%d3, %d2
	extr	%d3, %d3, 0, 16
	.loc 1 1100 0
	extr	%d15, %d2, 0, 16
.LVL45:
	.loc 1 1101 0
	st.h	[%a15] 68, %d3
	.loc 1 1102 0
	jltz	%d15, .L236
.LVL46:
.L67:
	.loc 1 1105 0
	ld.h	%d2, [%a15] 70
.LVL47:
	.loc 1 1107 0
	sha	%d3, -3
	.loc 1 1105 0
	sha	%d4, %d2, -2
	sub	%d2, %d4
.LVL48:
	.loc 1 1106 0
	add	%d15, %d2
.LVL49:
	extr.u	%d15, %d15, 0, 16
	st.h	[%a15] 70, %d15
	.loc 1 1107 0
	add	%d15, %d3
	st.h	[%a15] 72, %d15
	.loc 1 1112 0
	mov	%d15, 0
	st.w	[%a15] 60, %d15
	j	.L26
.L229:
	.loc 1 1207 0
	ld.bu	%d15, [%a15] 34
	or	%d15, %d15, 2
	st.b	[%a15] 34, %d15
	j	.L80
.LVL50:
.L219:
	.loc 1 925 0
	mov	%d15, 0
	.loc 1 927 0
	movh	%d9, hi:tcplen
	mov.a	%a3, %d9
	.loc 1 925 0
	st.h	[%a15] 104, %d15
	.loc 1 927 0
	ld.hu	%d15, [%a3] lo:tcplen
	jnz	%d15, .L34
	.loc 1 929 0
	ld.hu	%d15, [%a15] 100
	ld.w	%d6, [%a15] 92
	.loc 1 867 0
	add	%d4, %d5
.LVL51:
	.loc 1 929 0
	add	%d15, %d6
	jeq	%d15, %d4, .L237
.L34:
	.loc 1 955 0
	mov	%d15, 0
	st.b	[%a15] 75, %d15
	j	.L53
.LVL52:
.L33:
	.loc 1 887 0
	ld.bu	%d15, [%a15] 153
	jz	%d15, .L31
	.loc 1 889 0
	mov	%d15, 0
	st.b	[%a15] 153, %d15
	j	.L31
.L29:
	.loc 1 871 0
	mov.a	%a2, %d14
	ld.w	%d2, [%a2] lo:ackno
	sub	%d15, %d4, %d2
	jgez	%d15, .L30
	movh.a	%a2, hi:tcphdr
	ld.a	%a2, [%a2] lo:tcphdr
	ld.bu	%d15, [%a2] 15
	ld.bu	%d6, [%a2] 14
	sh	%d15, %d15, 8
	or	%d15, %d6
	j	.L28
.L218:
	.loc 1 872 0
	movh.a	%a2, hi:tcphdr
	ld.a	%a2, [%a2] lo:tcphdr
	ld.bu	%d15, [%a2] 15
	ld.bu	%d2, [%a2] 14
	sh	%d15, %d15, 8
	or	%d15, %d2
	mov	%d2, %d4
	jge.u	%d5, %d15, .L31
.LVL53:
	j	.L28
.LVL54:
.L220:
	.loc 1 963 0
	ld.bu	%d3, [%a15] 34
	jz.t	%d3, 2, .L39
	.loc 1 964 0
	andn	%d3, %d3, ~(-5)
	st.b	[%a15] 34, %d3
	.loc 1 965 0
	ld.h	%d3, [%a15] 82
	st.h	[%a15] 80, %d3
.L39:
	.loc 1 972 0
	ld.h	%d4, [%a15] 68
.LVL55:
	ld.h	%d5, [%a15] 70
	sha	%d4, -3
	add	%d4, %d5
	.loc 1 975 0
	extr.u	%d15, %d15, 0, 16
	.loc 1 969 0
	mov	%d3, 0
	.loc 1 972 0
	st.h	[%a15] 72, %d4
	.loc 1 977 0
	ld.h	%d4, [%a15] 106
	.loc 1 975 0
	st.h	[%a15] 104, %d15
	.loc 1 977 0
	add	%d15, %d4
	.loc 1 969 0
	st.b	[%a15] 74, %d3
	.loc 1 980 0
	st.b	[%a15] 75, %d3
	.loc 1 977 0
	st.h	[%a15] 106, %d15
	.loc 1 985 0
	ld.w	%d15, [%a15] 24
	.loc 1 981 0
	st.w	[%a15] 76, %d2
	.loc 1 985 0
	jlt.u	%d15, 4, .L40
	.loc 1 986 0
	ld.hu	%d15, [%a15] 80
	ld.hu	%d2, [%a15] 82
	jge.u	%d15, %d2, .L41
	.loc 1 987 0
	ld.h	%d2, [%a15] 58
	add	%d2, %d15
	extr.u	%d2, %d2, 0, 16
	jge.u	%d15, %d2, .L40
.L209:
.LBB2:
	.loc 1 994 0
	st.h	[%a15] 80, %d2
.L40:
.LBE2:
	.loc 1 1009 0
	mov.a	%a3, %d14
	ld.a	%a2, [%a15] 116
	.loc 1 1020 0
	movh	%d11, hi:.LC0
	movh	%d12, hi:.LC3
	movh	%d10, hi:.LC2
	.loc 1 1009 0
	lea	%a13, [%a3] lo:ackno
	.loc 1 1020 0
	addi	%d11, %d11, lo:.LC0
	addi	%d12, %d12, lo:.LC3
	addi	%d10, %d10, lo:.LC2
.L42:
	.loc 1 1008 0
	jz.a	%a2, .L52
	.loc 1 1009 0 discriminator 1
	ld.a	%a2, [%a2] 16
	ld.bu	%d15, [%a2] 5
	ld.bu	%d3, [%a2] 4
	sh	%d15, %d15, 8
	or	%d2, %d15, %d3
	ld.bu	%d15, [%a2] 6
	ld.bu	%d4, [%a2] 7
	sh	%d15, %d15, 16
	or	%d15, %d2
	sh	%d4, %d4, 24
	or	%d4, %d15
	call	lwip_ntohl
.LVL56:
	ld.a	%a2, [%a15] 116
	mov	%d9, %d2
	ld.hu	%d8, [%a2] 8
	ld.a	%a2, [%a2] 16
	ld.bu	%d15, [%a2] 13
	ld.bu	%d4, [%a2] 12
	sh	%d15, %d15, 8
	or	%d4, %d15
	call	lwip_ntohs
.LVL57:
	ld.w	%d15, [%a13]0
	and	%d2, %d2, 3
	sub	%d9, %d15
	cadd	%d8, %d2, %d8, 1
	add	%d2, %d9, %d8
	.loc 1 1008 0 discriminator 1
	jgtz	%d2, .L238
	.loc 1 1016 0
	ld.a	%a12, [%a15] 116
.LVL58:
	.loc 1 1020 0
	ld.hu	%d15, [%a15] 108
	ld.a	%a4, [%a12] 4
	.loc 1 1017 0
	ld.w	%d2, [%a12]0
	st.w	[%a15] 116, %d2
	.loc 1 1020 0
	call	pbuf_clen
.LVL59:
	extr.u	%d2, %d2, 0, 16
	jlt.u	%d15, %d2, .L239
.L43:
	.loc 1 1022 0
	ld.hu	%d15, [%a15] 104
	jnz	%d15, .L240
.L45:
	.loc 1 1026 0
	ld.a	%a4, [%a12] 4
	call	pbuf_clen
.LVL60:
	ld.h	%d15, [%a15] 108
	.loc 1 1027 0
	mov.aa	%a4, %a12
	.loc 1 1026 0
	sub	%d2, %d15, %d2
	st.h	[%a15] 108, %d2
	.loc 1 1027 0
	call	tcp_seg_free
.LVL61:
	.loc 1 1030 0
	ld.hu	%d15, [%a15] 108
	.loc 1 1031 0
	ld.a	%a2, [%a15] 116
	.loc 1 1030 0
	jz	%d15, .L42
	.loc 1 1031 0
	jnz.a	%a2, .L42
	.loc 1 1031 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a15] 112
	jz	%d15, .L241
.LVL62:
.L52:
	.loc 1 1039 0 is_stmt 1
	mov	%d15, -1
	st.h	[%a15] 56, %d15
.L50:
	.loc 1 1043 0
	mov	%d15, 0
	movh	%d9, hi:tcplen
	st.b	[%a15] 35, %d15
	j	.L53
.LVL63:
.L240:
	.loc 1 1022 0 discriminator 1
	ld.a	%a2, [%a12] 16
	ld.bu	%d15, [%a2] 13
	ld.bu	%d4, [%a2] 12
	sh	%d15, %d15, 8
	or	%d4, %d15
	call	lwip_ntohs
.LVL64:
	jz.t	%d2, 0, .L45
	.loc 1 1023 0
	ld.h	%d15, [%a15] 104
	add	%d15, -1
	st.h	[%a15] 104, %d15
	j	.L45
.L239:
	.loc 1 1020 0 discriminator 1
	mov	%d15, 1020
	mov.a	%a4, %d11
	st.w	[%SP]0, %d12
	st.w	[%SP] 4, %d15
	st.w	[%SP] 8, %d10
	call	Ifx_Lwip_printf
.LVL65:
	j	.L43
.LVL66:
.L228:
	.loc 1 1173 0
	movh.a	%a13, hi:inseg
	lea	%a13, [%a13] lo:inseg
	ld.a	%a12, [%a13] 4
	.loc 1 1172 0
	mov	%d8, %d10
.LVL67:
	.loc 1 1174 0
	jz.a	%a12, .L242
.LVL68:
.L70:
	.loc 1 1175 0
	mov	%d15, 32767
	jge	%d10, %d15, .L243
.L71:
	.loc 1 1176 0
	ld.a	%a4, [%a13] 4
	ld.hu	%d15, [%a4] 10
	jge	%d15, %d10, .L72
	.loc 1 1177 0
	ld.hu	%d2, [%a4] 8
	jlt	%d2, %d10, .L244
.L73:
	.loc 1 1179 0
	ld.hu	%d15, [%a12] 10
	.loc 1 1178 0
	sub	%d2, %d10
	extr.u	%d2, %d2, 0, 16
.LVL69:
	.loc 1 1179 0
	jge	%d15, %d10, .L74
	.loc 1 1185 0
	mov	%d3, 0
.LVL70:
.L75:
	st.h	[%a12] 10, %d3
	.loc 1 1184 0
	st.h	[%a12] 8, %d2
	.loc 1 1186 0
	ld.a	%a12, [%a12]0
.LVL71:
	.loc 1 1180 0
	sub	%d8, %d15
.LVL72:
	.loc 1 1179 0
	ld.hu	%d15, [%a12] 10
	jlt	%d15, %d8, .L75
.LVL73:
.L74:
	.loc 1 1188 0
	rsub	%d4, %d8, 0
	extr	%d4, %d4, 0, 16
	mov.aa	%a4, %a12
	call	pbuf_header
.LVL74:
	jnz	%d2, .L245
.L77:
	ld.h	%d15, [%a13] 8
	ld.w	%d3, [%a14] lo:seqno
	.loc 1 1198 0
	ld.w	%d2, [%a15] 44
	add	%d15, %d3
	sub	%d15, %d2
	.loc 1 1199 0
	ld.a	%a2, [%a13] 16
	ld.w	%d3, [%a15] 44
	.loc 1 1198 0
	st.h	[%a13] 8, %d15
	.loc 1 1199 0
	extr.u	%d15, %d2, 8, 8
	st.w	[%a14] lo:seqno, %d2
	st.b	[%a2] 4, %d2
	st.b	[%a2] 5, %d15
	extr.u	%d15, %d2, 16, 8
	st.b	[%a2] 6, %d15
	sh	%d15, %d2, -24
	st.b	[%a2] 7, %d15
	sub	%d15, %d2, %d3
	.loc 1 1214 0
	jgez	%d15, .L79
	j	.L80
.LVL75:
.L237:
	.loc 1 931 0
	ld.h	%d15, [%a15] 56
	.loc 1 933 0
	eq	%d2, %d3, %d2
	.loc 1 931 0
	nand.t	%d15, %d15,15, %d15,15
	.loc 1 933 0
	and	%d2, %d15
	jz	%d2, .L34
.LVL76:
	.loc 1 935 0
	ld.bu	%d15, [%a15] 75
	add	%d2, %d15, 1
	and	%d2, %d2, 255
	jge.u	%d15, %d2, .L35
	.loc 1 936 0
	st.b	[%a15] 75, %d2
	mov	%d15, %d2
.L35:
	.loc 1 938 0
	jlt.u	%d15, 4, .L36
	.loc 1 941 0
	ld.hu	%d2, [%a15] 80
	ld.h	%d15, [%a15] 58
	add	%d15, %d2
	extr.u	%d15, %d15, 0, 16
	jge.u	%d2, %d15, .L53
	.loc 1 942 0
	st.h	[%a15] 80, %d15
	j	.L53
.LVL77:
.L236:
	.loc 1 1103 0
	rsub	%d15, %d2, 0
	extr	%d15, %d15, 0, 16
.LVL78:
	j	.L67
.LVL79:
.L227:
	.loc 1 1455 0
	ld.bu	%d15, [%a2] 13
	ld.bu	%d4, [%a2] 12
	sh	%d15, %d15, 8
	or	%d4, %d15
	call	lwip_ntohs
.LVL80:
	jnz.t	%d2, 0, .L23
	.loc 1 1459 0
	movh.a	%a4, hi:inseg
	lea	%a4, [%a4] lo:inseg
	call	tcp_seg_copy
.LVL81:
	st.a	[%a12]0, %a2
	.loc 1 1460 0
	jz.a	%a2, .L23
	.loc 1 1461 0
	ld.a	%a2, [%a12] 16
	ld.bu	%d15, [%a2] 5
	ld.bu	%d4, [%a2] 4
	sh	%d15, %d15, 8
	or	%d2, %d15, %d4
	ld.bu	%d4, [%a2] 6
	sh	%d4, %d4, 16
	or	%d15, %d4, %d2
	ld.bu	%d4, [%a2] 7
	ld.hu	%d2, [%a12] 8
	sh	%d4, %d4, 24
	or	%d4, %d15
	ld.w	%d15, [%a14] lo:seqno
	sub	%d2, %d15
	add	%d2, %d4
	jlez	%d2, .L128
	.loc 1 1463 0
	sub	%d4, %d15, %d4
	extr.u	%d4, %d4, 0, 16
	.loc 1 1464 0
	ld.a	%a4, [%a12] 4
	.loc 1 1463 0
	st.h	[%a12] 8, %d4
	.loc 1 1464 0
	call	pbuf_realloc
.LVL82:
	ld.w	%d15, [%a14] lo:seqno
.L128:
	.loc 1 1467 0
	mov.a	%a2, %d9
	ld.w	%d3, [%a15] 44
	ld.hu	%d2, [%a2] lo:tcplen
	add	%d15, %d2
	ld.hu	%d2, [%a15] 48
	add	%d2, %d3
	jge.u	%d2, %d15, .L23
	.loc 1 1472 0
	ld.a	%a2, [%a12]0
	ld.a	%a2, [%a2] 16
	ld.bu	%d15, [%a2] 13
	ld.bu	%d4, [%a2] 12
	sh	%d15, %d15, 8
	or	%d4, %d15
	call	lwip_ntohs
.LVL83:
	jnz.t	%d2, 0, .L246
.L129:
	.loc 1 1478 0
	ld.h	%d15, [%a15] 48
	ld.w	%d4, [%a15] 44
	ld.a	%a2, [%a12]0
	add	%d4, %d15
	ld.w	%d15, [%a14] lo:seqno
	.loc 1 1479 0
	ld.a	%a4, [%a2] 4
	.loc 1 1478 0
	sub	%d4, %d15
	extr.u	%d4, %d4, 0, 16
	st.h	[%a2] 8, %d4
	.loc 1 1479 0
	call	pbuf_realloc
.LVL84:
	.loc 1 1480 0
	ld.a	%a2, [%a12]0
	ld.hu	%d15, [%a2] 8
	ld.a	%a2, [%a2] 16
	ld.bu	%d2, [%a2] 13
	ld.bu	%d4, [%a2] 12
	sh	%d2, %d2, 8
	or	%d4, %d2
	call	lwip_ntohs
.LVL85:
	and	%d2, %d2, 3
	cadd	%d15, %d2, %d15, 1
	extr.u	%d15, %d15, 0, 16
	.loc 1 1481 0
	ld.w	%d2, [%a14] lo:seqno
	.loc 1 1480 0
	mov.a	%a2, %d9
	.loc 1 1481 0
	ld.w	%d3, [%a15] 44
	.loc 1 1480 0
	st.h	[%a2] lo:tcplen, %d15
	.loc 1 1481 0
	add	%d15, %d2
	ld.hu	%d2, [%a15] 48
	add	%d2, %d3
	jeq	%d15, %d2, .L23
	.loc 1 1481 0 is_stmt 0 discriminator 1
	movh	%d15, hi:.LC9
	addi	%d15, %d15, lo:.LC9
	movh.a	%a4, hi:.LC0
	lea	%a4, [%a4] lo:.LC0
	st.w	[%SP]0, %d15
	mov	%d15, 1482
	st.w	[%SP] 4, %d15
	movh	%d15, hi:.LC2
	addi	%d15, %d15, lo:.LC2
	st.w	[%SP] 8, %d15
	j	Ifx_Lwip_printf
.LVL86:
.L238:
	.loc 1 1038 0 is_stmt 1
	ld.w	%d15, [%a15] 116
	jz	%d15, .L52
	.loc 1 1041 0
	mov	%d15, 0
	st.h	[%a15] 56, %d15
	j	.L50
.LVL87:
.L231:
	.loc 1 1220 0
	movh.a	%a13, hi:inseg
	lea	%a13, [%a13] lo:inseg
	ld.a	%a2, [%a13] 16
	ld.hu	%d15, [%a13] 8
	ld.bu	%d2, [%a2] 13
	ld.bu	%d4, [%a2] 12
	sh	%d2, %d2, 8
	or	%d4, %d2
	call	lwip_ntohs
.LVL88:
	and	%d2, %d2, 3
	cadd	%d15, %d2, %d15, 1
	extr.u	%d15, %d15, 0, 16
	mov.a	%a2, %d9
	.loc 1 1222 0
	ld.hu	%d2, [%a15] 48
	.loc 1 1220 0
	st.h	[%a2] lo:tcplen, %d15
	.loc 1 1222 0
	jlt.u	%d2, %d15, .L247
.L83:
	.loc 1 1246 0
	ld.w	%d15, [%a15] 120
	jz	%d15, .L212
	.loc 1 1247 0
	ld.a	%a2, [%a13] 16
	ld.bu	%d15, [%a2] 13
	ld.bu	%d4, [%a2] 12
	sh	%d15, %d15, 8
	or	%d4, %d15
	call	lwip_ntohs
.LVL89:
	jz.t	%d2, 0, .L90
	mov.a	%a3, %d9
	.loc 1 1253 0
	ld.a	%a4, [%a15] 120
	ld.hu	%d15, [%a3] lo:tcplen
	ld.w	%d2, [%a14] lo:seqno
	add	%d2, %d15
	jz.a	%a4, .L89
.L180:
.LVL90:
.LBB3:
	.loc 1 1255 0
	ld.w	%d2, [%a4]0
	st.w	[%a15] 120, %d2
	.loc 1 1256 0
	call	tcp_seg_free
.LVL91:
.LBE3:
	.loc 1 1253 0
	ld.a	%a4, [%a15] 120
	jnz.a	%a4, .L180
.L212:
	mov.a	%a2, %d9
	ld.w	%d2, [%a14] lo:seqno
	ld.hu	%d15, [%a2] lo:tcplen
	add	%d2, %d15
.L89:
	.loc 1 1295 0
	st.w	[%a15] 44, %d2
	.loc 1 1298 0
	ld.hu	%d2, [%a15] 48
	jlt.u	%d2, %d15, .L248
.L102:
	.loc 1 1299 0
	sub	%d15, %d2, %d15
	.loc 1 1301 0
	mov.aa	%a4, %a15
	.loc 1 1299 0
	st.h	[%a15] 48, %d15
	.loc 1 1301 0
	call	tcp_update_rcv_ann_wnd
.LVL92:
	.loc 1 1312 0
	ld.a	%a2, [%a13] 4
	ld.hu	%d15, [%a2] 8
	jz	%d15, .L103
	.loc 1 1317 0
	mov	%d15, 0
	.loc 1 1313 0
	movh.a	%a3, hi:recv_data
	st.a	[%a3] lo:recv_data, %a2
	.loc 1 1317 0
	st.w	[%a13] 4, %d15
.L103:
	.loc 1 1319 0
	ld.a	%a2, [%a13] 16
	ld.bu	%d15, [%a2] 13
	ld.bu	%d4, [%a2] 12
	sh	%d15, %d15, 8
	or	%d4, %d15
	call	lwip_ntohs
.LVL93:
	jz.t	%d2, 0, .L104
	.loc 1 1321 0
	movh.a	%a2, hi:recv_flags
	ld.bu	%d15, [%a2] lo:recv_flags
	or	%d15, %d15, 32
	st.b	[%a2] lo:recv_flags, %d15
.L104:
	.loc 1 1327 0
	ld.a	%a12, [%a15] 120
	jz.a	%a12, .L108
	.loc 1 1328 0
	ld.a	%a2, [%a12] 16
	ld.w	%d15, [%a15] 44
	ld.bu	%d4, [%a2] 5
	ld.bu	%d3, [%a2] 4
	sh	%d2, %d4, 8
	or	%d4, %d2, %d3
	ld.bu	%d2, [%a2] 6
	sh	%d2, %d2, 16
	or	%d3, %d2, %d4
	ld.bu	%d2, [%a2] 7
	sh	%d2, %d2, 24
	or	%d2, %d3
	.loc 1 1327 0
	jne	%d2, %d15, .L108
	movh.a	%a13, hi:seqno
	.loc 1 1334 0
	movh.a	%a14, hi:.LC0
	movh	%d12, hi:.LC12
	movh	%d11, hi:.LC2
	lea	%a13, [%a13] lo:seqno
	lea	%a14, [%a14] lo:.LC0
	addi	%d12, %d12, lo:.LC12
	mov	%d10, 1335
	addi	%d11, %d11, lo:.LC2
	j	.L116
.LVL94:
.L109:
	.loc 1 1336 0
	ld.a	%a2, [%a12] 16
	ld.hu	%d8, [%a12] 8
	ld.bu	%d15, [%a2] 13
	ld.bu	%d4, [%a2] 12
	sh	%d15, %d15, 8
	or	%d4, %d15
	call	lwip_ntohs
.LVL95:
	and	%d2, %d2, 3
	cadd	%d15, %d2, %d8, 1
	ld.h	%d2, [%a15] 48
	.loc 1 1338 0
	mov.aa	%a4, %a15
	.loc 1 1336 0
	sub	%d15, %d2, %d15
	st.h	[%a15] 48, %d15
	.loc 1 1338 0
	call	tcp_update_rcv_ann_wnd
.LVL96:
	.loc 1 1340 0
	ld.a	%a5, [%a12] 4
	ld.hu	%d15, [%a5] 8
	jz	%d15, .L110
	.loc 1 1343 0
	movh.a	%a2, hi:recv_data
	ld.a	%a4, [%a2] lo:recv_data
	jz.a	%a4, .L111
	.loc 1 1344 0
	call	pbuf_cat
.LVL97:
.L112:
	.loc 1 1348 0
	mov	%d15, 0
	st.w	[%a12] 4, %d15
.L110:
	.loc 1 1350 0
	ld.a	%a2, [%a12] 16
	ld.bu	%d15, [%a2] 13
	ld.bu	%d4, [%a2] 12
	sh	%d15, %d15, 8
	or	%d4, %d15
	call	lwip_ntohs
.LVL98:
	jz.t	%d2, 0, .L114
	.loc 1 1352 0
	movh.a	%a2, hi:recv_flags
	ld.bu	%d15, [%a2] lo:recv_flags
	or	%d15, %d15, 32
	st.b	[%a2] lo:recv_flags, %d15
	.loc 1 1353 0
	ld.w	%d15, [%a15] 24
	jeq	%d15, 4, .L249
.L114:
	.loc 1 1358 0
	ld.w	%d3, [%a12]0
	.loc 1 1359 0
	mov.aa	%a4, %a12
	.loc 1 1358 0
	st.w	[%a15] 120, %d3
	.loc 1 1359 0
	call	tcp_seg_free
.LVL99:
	.loc 1 1327 0
	ld.a	%a12, [%a15] 120
.LVL100:
	jz.a	%a12, .L108
	.loc 1 1328 0 discriminator 1
	ld.a	%a2, [%a12] 16
	ld.bu	%d3, [%a2] 5
	ld.bu	%d2, [%a2] 4
	sh	%d15, %d3, 8
	or	%d3, %d15, %d2
	ld.bu	%d15, [%a2] 6
	sh	%d15, %d15, 16
	or	%d2, %d15, %d3
	ld.bu	%d15, [%a2] 7
	sh	%d15, %d15, 24
	or	%d15, %d2
	.loc 1 1327 0 discriminator 1
	ld.w	%d2, [%a15] 44
	jne	%d15, %d2, .L108
.L116:
.LVL101:
	.loc 1 1331 0
	st.w	[%a13]0, %d15
	.loc 1 1333 0
	ld.bu	%d15, [%a2] 13
	ld.bu	%d4, [%a2] 12
	sh	%d15, %d15, 8
	or	%d4, %d15
	ld.hu	%d8, [%a12] 8
	call	lwip_ntohs
.LVL102:
	and	%d2, %d2, 3
	cadd	%d15, %d2, %d8, 1
	ld.w	%d2, [%a15] 44
	.loc 1 1334 0
	ld.a	%a2, [%a12] 16
	.loc 1 1333 0
	add	%d15, %d2
	.loc 1 1334 0
	ld.hu	%d9, [%a12] 8
	ld.hu	%d8, [%a15] 48
	.loc 1 1333 0
	st.w	[%a15] 44, %d15
	.loc 1 1334 0
	ld.bu	%d15, [%a2] 13
	ld.bu	%d4, [%a2] 12
	sh	%d15, %d15, 8
	or	%d4, %d15
	call	lwip_ntohs
.LVL103:
	and	%d2, %d2, 3
	cadd	%d15, %d2, %d9, 1
	jge	%d8, %d15, .L109
	.loc 1 1334 0 is_stmt 0 discriminator 1
	st.w	[%SP]0, %d12
	st.w	[%SP] 4, %d10
	st.w	[%SP] 8, %d11
	mov.aa	%a4, %a14
	call	Ifx_Lwip_printf
.LVL104:
	j	.L109
.L111:
	.loc 1 1346 0 is_stmt 1
	st.a	[%a2] lo:recv_data, %a5
	j	.L112
.L249:
	.loc 1 1354 0
	mov	%d15, 7
	st.w	[%a15] 24, %d15
	j	.L114
.LVL105:
.L108:
	.loc 1 1365 0
	ld.bu	%d15, [%a15] 34
	jz.t	%d15, 0, .L250
	.loc 1 1365 0 is_stmt 0 discriminator 1
	andn	%d15, %d15, ~(-2)
	or	%d15, %d15, 2
	st.b	[%a15] 34, %d15
	ret
.LVL106:
.L235:
	.loc 1 1394 0 is_stmt 1
	movh.a	%a4, hi:inseg
	lea	%a4, [%a4] lo:inseg
	ld.hu	%d15, [%a4] 8
	ld.hu	%d2, [%a12] 8
	jge.u	%d2, %d15, .L23
	.loc 1 1398 0
	call	tcp_seg_copy
.LVL107:
	.loc 1 1399 0
	jz.a	%a2, .L23
	.loc 1 1400 0
	jz.a	%a13, .L122
	.loc 1 1401 0
	st.a	[%a13]0, %a2
	j	.L123
.LVL108:
.L41:
.LBB4:
	.loc 1 992 0
	ld.hu	%d2, [%a15] 58
	mul	%d2, %d2
	div	%e2, %d2, %d15
	add	%d2, %d15
	extr.u	%d2, %d2, 0, 16
.LVL109:
	.loc 1 993 0
	jge.u	%d15, %d2, .L40
	j	.L209
.LVL110:
.L72:
.LBE4:
	.loc 1 1193 0
	rsub	%d4, %d10, 0
	extr	%d4, %d4, 0, 16
	call	pbuf_header
.LVL111:
	jz	%d2, .L77
	.loc 1 1195 0 discriminator 1
	movh	%d15, hi:.LC8
	addi	%d15, %d15, lo:.LC8
	st.w	[%SP]0, %d15
	mov	%d15, 1195
.LVL112:
.L211:
	st.w	[%SP] 4, %d15
	movh	%d15, hi:.LC2
	addi	%d15, %d15, lo:.LC2
	movh.a	%a4, hi:.LC0
	lea	%a4, [%a4] lo:.LC0
	st.w	[%SP] 8, %d15
	call	Ifx_Lwip_printf
.LVL113:
	j	.L77
.LVL114:
.L243:
	.loc 1 1175 0 discriminator 1
	movh	%d15, hi:.LC6
	addi	%d15, %d15, lo:.LC6
	movh.a	%a4, hi:.LC0
	lea	%a4, [%a4] lo:.LC0
	st.w	[%SP]0, %d15
	mov	%d15, 1175
	st.w	[%SP] 4, %d15
	movh	%d15, hi:.LC2
	addi	%d15, %d15, lo:.LC2
	st.w	[%SP] 8, %d15
	call	Ifx_Lwip_printf
.LVL115:
	j	.L71
.LVL116:
.L233:
	.loc 1 1437 0
	movh.a	%a4, hi:inseg
	lea	%a4, [%a4] lo:inseg
	call	tcp_seg_copy
.LVL117:
	mov.aa	%a15, %a2
.LVL118:
	.loc 1 1438 0
	jz.a	%a2, .L23
	.loc 1 1439 0
	ld.a	%a2, [%a13] 16
.LVL119:
	ld.w	%d4, [%a14] lo:seqno
	ld.bu	%d3, [%a2] 5
	ld.bu	%d2, [%a2] 4
	sh	%d15, %d3, 8
	or	%d3, %d15, %d2
	ld.bu	%d15, [%a2] 6
	sh	%d15, %d15, 16
	or	%d2, %d15, %d3
	ld.bu	%d15, [%a2] 7
	sh	%d15, %d15, 24
	or	%d15, %d2
	ld.hu	%d2, [%a13] 8
	sub	%d2, %d4
	add	%d2, %d15
	jlez	%d2, .L126
	.loc 1 1441 0
	sub	%d4, %d15
	extr.u	%d4, %d4, 0, 16
	.loc 1 1442 0
	ld.a	%a4, [%a13] 4
	.loc 1 1441 0
	st.h	[%a13] 8, %d4
	.loc 1 1442 0
	call	pbuf_realloc
.LVL120:
.L126:
	.loc 1 1444 0
	st.a	[%a13]0, %a15
	.loc 1 1531 0
	.loc 1 1445 0
	mov.aa	%a4, %a15
	mov.aa	%a5, %a12
	.loc 1 1531 0
	lea	%SP, [%SP] 16
	.loc 1 1445 0
	j	tcp_oos_insert_segment
.LVL121:
.L250:
	.loc 1 1365 0 discriminator 2
	or	%d15, %d15, 1
	st.b	[%a15] 34, %d15
	ret
.LVL122:
.L244:
	.loc 1 1177 0 discriminator 1
	movh	%d15, hi:.LC7
	addi	%d15, %d15, lo:.LC7
	movh.a	%a4, hi:.LC0
	lea	%a4, [%a4] lo:.LC0
	st.w	[%SP]0, %d15
	mov	%d15, 1177
	st.w	[%SP] 4, %d15
	movh	%d15, hi:.LC2
	addi	%d15, %d15, lo:.LC2
	st.w	[%SP] 8, %d15
	call	Ifx_Lwip_printf
.LVL123:
	ld.a	%a2, [%a13] 4
	ld.hu	%d2, [%a2] 8
	j	.L73
.LVL124:
.L245:
	.loc 1 1190 0 discriminator 1
	movh	%d15, hi:.LC8
	addi	%d15, %d15, lo:.LC8
	st.w	[%SP]0, %d15
	mov	%d15, 1190
	j	.L211
.LVL125:
.L90:
	.loc 1 1259 0
	ld.w	%d8, [%a15] 120
.LVL126:
	.loc 1 1262 0
	jz	%d8, .L93
	.loc 1 1263 0
	mov.a	%a3, %d9
	ld.w	%d5, [%a14] lo:seqno
	ld.hu	%d15, [%a3] lo:tcplen
	mov.a	%a3, %d8
	ld.a	%a2, [%a3] 16
	ld.bu	%d4, [%a2] 5
	ld.bu	%d3, [%a2] 4
	sh	%d2, %d4, 8
	or	%d4, %d2, %d3
	ld.bu	%d2, [%a2] 6
	sh	%d2, %d2, 16
	or	%d3, %d2, %d4
	ld.bu	%d2, [%a2] 7
	sh	%d2, %d2, 24
	or	%d2, %d3
	sub	%d4, %d15, %d2
	ld.hu	%d3, [%a3] 8
	add	%d4, %d5
	sub	%d3, %d4, %d3
	.loc 1 1262 0
	jltz	%d3, .L137
	.loc 1 1263 0
	mov.d	%d2, %a14
	.loc 1 1267 0
	mov.d	%d12, %a13
	.loc 1 1269 0
	addi	%d10, %d9, lo:tcplen
	.loc 1 1263 0
	addi	%d11, %d2, lo:seqno
	j	.L98
.L96:
.LVL127:
	.loc 1 1272 0
	mov.a	%a3, %d8
	.loc 1 1273 0
	mov.a	%a4, %d8
	.loc 1 1272 0
	ld.a	%a12, [%a3]0
.LVL128:
	.loc 1 1273 0
	call	tcp_seg_free
.LVL129:
	.loc 1 1262 0
	jz.a	%a12, .L93
	.loc 1 1263 0 discriminator 1
	mov.a	%a2, %d10
	mov.a	%a3, %d11
	ld.hu	%d15, [%a2]0
	ld.a	%a2, [%a12] 16
	ld.w	%d5, [%a3]0
	ld.bu	%d3, [%a2] 5
	ld.bu	%d2, [%a2] 4
	sh	%d3, %d3, 8
	or	%d4, %d3, %d2
	ld.bu	%d3, [%a2] 6
	ld.bu	%d2, [%a2] 7
	sh	%d3, %d3, 16
	or	%d3, %d4
	sh	%d2, %d2, 24
	or	%d2, %d3
	sub	%d4, %d15, %d2
	ld.hu	%d3, [%a12] 8
	add	%d4, %d5
	sub	%d3, %d4, %d3
	.loc 1 1262 0 discriminator 1
	jltz	%d3, .L94
	mov.d	%d8, %a12
.LVL130:
.L98:
	.loc 1 1266 0
	ld.bu	%d15, [%a2] 13
	ld.bu	%d4, [%a2] 12
	sh	%d15, %d15, 8
	or	%d4, %d15
	call	lwip_ntohs
.LVL131:
	jz.t	%d2, 0, .L96
	.loc 1 1267 0 discriminator 1
	ld.a	%a2, [%a13] 16
	ld.bu	%d15, [%a2] 13
	ld.bu	%d4, [%a2] 12
	sh	%d15, %d15, 8
	or	%d4, %d15
	call	lwip_ntohs
.LVL132:
	.loc 1 1266 0 discriminator 1
	jnz.t	%d2, 1, .L96
	.loc 1 1268 0
	mov.a	%a2, %d12
	mov	%d4, 1
	ld.a	%a12, [%a2] 16
	ld.bu	%d15, [%a12] 13
	ld.bu	%d2, [%a12] 12
	sh	%d15, %d15, 8
	or	%d15, %d2
	call	lwip_htons
.LVL133:
	or	%d2, %d15
	extr.u	%d2, %d2, 0, 16
	.loc 1 1269 0
	mov.a	%a3, %d12
	ld.a	%a2, [%a3] 16
	.loc 1 1268 0
	st.b	[%a12] 12, %d2
	sh	%d2, -8
	.loc 1 1269 0
	ld.hu	%d13, [%a3] 8
	.loc 1 1268 0
	st.b	[%a12] 13, %d2
	.loc 1 1269 0
	ld.bu	%d15, [%a2] 13
	ld.bu	%d4, [%a2] 12
	sh	%d15, %d15, 8
	or	%d4, %d15
	call	lwip_ntohs
.LVL134:
	and	%d2, %d2, 3
	cadd	%d2, %d2, %d13, 1
	mov.a	%a2, %d10
	st.h	[%a2]0, %d2
	j	.L96
.LVL135:
.L248:
	.loc 1 1298 0 discriminator 1
	movh	%d15, hi:.LC11
	addi	%d15, %d15, lo:.LC11
	movh.a	%a4, hi:.LC0
	lea	%a4, [%a4] lo:.LC0
	st.w	[%SP]0, %d15
	mov	%d15, 1298
	st.w	[%SP] 4, %d15
	movh	%d15, hi:.LC2
	addi	%d15, %d15, lo:.LC2
	st.w	[%SP] 8, %d15
	call	Ifx_Lwip_printf
.LVL136:
	mov.a	%a2, %d9
	ld.hu	%d2, [%a15] 48
	ld.hu	%d15, [%a2] lo:tcplen
	j	.L102
.L247:
	.loc 1 1227 0
	ld.a	%a2, [%a13] 16
	ld.bu	%d15, [%a2] 13
	ld.bu	%d4, [%a2] 12
	sh	%d15, %d15, 8
	or	%d4, %d15
	call	lwip_ntohs
.LVL137:
	jnz.t	%d2, 0, .L251
.L84:
	.loc 1 1234 0
	ld.a	%a2, [%a13] 16
	.loc 1 1233 0
	ld.h	%d15, [%a15] 48
	st.h	[%a13] 8, %d15
	.loc 1 1234 0
	ld.bu	%d15, [%a2] 13
	ld.bu	%d4, [%a2] 12
	sh	%d15, %d15, 8
	or	%d4, %d15
	call	lwip_ntohs
.LVL138:
	jnz.t	%d2, 1, .L85
	ld.hu	%d4, [%a13] 8
.L86:
	.loc 1 1237 0
	ld.a	%a4, [%a13] 4
	call	pbuf_realloc
.LVL139:
	.loc 1 1238 0
	ld.a	%a2, [%a13] 16
	ld.hu	%d15, [%a13] 8
	ld.bu	%d2, [%a2] 13
	ld.bu	%d4, [%a2] 12
	sh	%d2, %d2, 8
	or	%d4, %d2
	call	lwip_ntohs
.LVL140:
	and	%d2, %d2, 3
	cadd	%d15, %d2, %d15, 1
	extr.u	%d15, %d15, 0, 16
	.loc 1 1239 0
	ld.w	%d2, [%a14] lo:seqno
	.loc 1 1238 0
	mov.a	%a3, %d9
	.loc 1 1239 0
	ld.w	%d3, [%a15] 44
	.loc 1 1238 0
	st.h	[%a3] lo:tcplen, %d15
	.loc 1 1239 0
	add	%d15, %d2
	ld.hu	%d2, [%a15] 48
	add	%d2, %d3
	jeq	%d15, %d2, .L83
	.loc 1 1239 0 is_stmt 0 discriminator 1
	movh	%d15, hi:.LC9
	addi	%d15, %d15, lo:.LC9
	movh.a	%a4, hi:.LC0
	lea	%a4, [%a4] lo:.LC0
	st.w	[%SP]0, %d15
	mov	%d15, 1240
	st.w	[%SP] 4, %d15
	movh	%d15, hi:.LC2
	addi	%d15, %d15, lo:.LC2
	st.w	[%SP] 8, %d15
	call	Ifx_Lwip_printf
.LVL141:
	j	.L83
.L93:
	mov.a	%a3, %d9
	ld.w	%d2, [%a14] lo:seqno
	ld.hu	%d15, [%a3] lo:tcplen
	mov.a	%a12, 0
	add	%d2, %d15
.L101:
	.loc 1 1290 0 is_stmt 1
	st.a	[%a15] 120, %a12
	j	.L89
.LVL142:
.L137:
	.loc 1 1262 0
	mov.a	%a12, %d8
.LVL143:
.L94:
	.loc 1 1277 0
	jgtz	%d4, .L135
	add	%d2, %d15, %d5
	j	.L101
.LVL144:
.L241:
	.loc 1 1031 0 discriminator 2
	movh	%d15, hi:.LC4
	addi	%d15, %d15, lo:.LC4
	mov.a	%a4, %d11
	st.w	[%SP] 8, %d10
	st.w	[%SP]0, %d15
	mov	%d15, 1032
	st.w	[%SP] 4, %d15
	call	Ifx_Lwip_printf
.LVL145:
	ld.a	%a2, [%a15] 116
	j	.L42
.LVL146:
.L242:
	.loc 1 1174 0 discriminator 1
	movh	%d15, hi:.LC5
	addi	%d15, %d15, lo:.LC5
	movh.a	%a4, hi:.LC0
	lea	%a4, [%a4] lo:.LC0
	st.w	[%SP]0, %d15
	mov	%d15, 1174
	st.w	[%SP] 4, %d15
	movh	%d15, hi:.LC2
	addi	%d15, %d15, lo:.LC2
	st.w	[%SP] 8, %d15
	call	Ifx_Lwip_printf
.LVL147:
	j	.L70
.LVL148:
.L85:
	.loc 1 1235 0
	ld.h	%d4, [%a13] 8
	add	%d4, -1
	extr.u	%d4, %d4, 0, 16
	st.h	[%a13] 8, %d4
	j	.L86
.LVL149:
.L135:
	.loc 1 1281 0
	sub	%d2, %d5
	.loc 1 1282 0
	ld.a	%a2, [%a13] 16
	.loc 1 1281 0
	st.h	[%a13] 8, %d2
	.loc 1 1282 0
	ld.bu	%d15, [%a2] 13
	ld.bu	%d4, [%a2] 12
	sh	%d15, %d15, 8
	or	%d4, %d15
	call	lwip_ntohs
.LVL150:
	jnz.t	%d2, 1, .L99
	ld.hu	%d4, [%a13] 8
.L100:
	.loc 1 1285 0
	ld.a	%a4, [%a13] 4
	call	pbuf_realloc
.LVL151:
	.loc 1 1286 0
	ld.a	%a2, [%a13] 16
	ld.hu	%d15, [%a13] 8
	ld.bu	%d2, [%a2] 13
	ld.bu	%d4, [%a2] 12
	sh	%d2, %d2, 8
	or	%d4, %d2
	call	lwip_ntohs
.LVL152:
	and	%d2, %d2, 3
	cadd	%d15, %d2, %d15, 1
	extr.u	%d15, %d15, 0, 16
	mov.a	%a2, %d9
	st.h	[%a2] lo:tcplen, %d15
	.loc 1 1287 0
	ld.a	%a2, [%a12] 16
	ld.bu	%d4, [%a2] 5
	ld.bu	%d3, [%a2] 4
	sh	%d2, %d4, 8
	or	%d4, %d2, %d3
	ld.bu	%d2, [%a2] 6
	sh	%d2, %d2, 16
	or	%d3, %d2, %d4
	ld.bu	%d2, [%a2] 7
	sh	%d2, %d2, 24
	or	%d2, %d3
	ld.w	%d3, [%a14] lo:seqno
	add	%d3, %d15
	jeq	%d3, %d2, .L101
	.loc 1 1287 0 is_stmt 0 discriminator 1
	movh	%d15, hi:.LC10
	addi	%d15, %d15, lo:.LC10
	movh.a	%a4, hi:.LC0
	lea	%a4, [%a4] lo:.LC0
	st.w	[%SP]0, %d15
	mov	%d15, 1288
	st.w	[%SP] 4, %d15
	movh	%d15, hi:.LC2
	addi	%d15, %d15, lo:.LC2
	st.w	[%SP] 8, %d15
	call	Ifx_Lwip_printf
.LVL153:
	mov.a	%a3, %d9
	ld.w	%d2, [%a14] lo:seqno
	ld.hu	%d15, [%a3] lo:tcplen
	add	%d2, %d15
	j	.L101
.LVL154:
.L232:
	.loc 1 1373 0 is_stmt 1
	movh.a	%a4, hi:inseg
	lea	%a4, [%a4] lo:inseg
	call	tcp_seg_copy
.LVL155:
	st.a	[%a15] 120, %a2
	ret
.LVL156:
.L36:
	.loc 1 944 0
	jne	%d15, 3, .L53
	.loc 1 946 0
	mov.aa	%a4, %a15
	call	tcp_rexmit_fast
.LVL157:
	j	.L53
.LVL158:
.L251:
	.loc 1 1230 0
	ld.a	%a12, [%a13] 16
	ld.bu	%d15, [%a12] 13
	ld.bu	%d2, [%a12] 12
	sh	%d15, %d15, 8
	or	%d15, %d2
	mov	%d4, %d15
	call	lwip_ntohs
.LVL159:
	and	%d4, %d2, 62
	insert	%d15, %d15, 0, 8, 6
	call	lwip_htons
.LVL160:
	or	%d2, %d15
	extr.u	%d2, %d2, 0, 16
	st.b	[%a12] 12, %d2
	sh	%d2, -8
	st.b	[%a12] 13, %d2
	j	.L84
.LVL161:
.L99:
	.loc 1 1283 0
	ld.h	%d4, [%a13] 8
	add	%d4, -1
	extr.u	%d4, %d4, 0, 16
	st.h	[%a13] 8, %d4
	j	.L100
.L246:
	.loc 1 1475 0
	ld.a	%a2, [%a12]0
	ld.a	%a13, [%a2] 16
	ld.bu	%d15, [%a13] 13
	ld.bu	%d2, [%a13] 12
	sh	%d15, %d15, 8
	or	%d15, %d2
	mov	%d4, %d15
	call	lwip_ntohs
.LVL162:
	and	%d4, %d2, 62
	insert	%d15, %d15, 0, 8, 6
	call	lwip_htons
.LVL163:
	or	%d2, %d15
	extr.u	%d2, %d2, 0, 16
	st.b	[%a13] 12, %d2
	sh	%d2, -8
	st.b	[%a13] 13, %d2
	j	.L129
.LFE5:
	.size	tcp_receive, .-tcp_receive
	.align 1
	.type	tcp_parseopt.isra.0, @function
tcp_parseopt.isra.0:
.LFB7:
	.loc 1 1542 0
.LVL164:
	.loc 1 1551 0
	movh.a	%a12, hi:tcphdr
	ld.a	%a15, [%a12] lo:tcphdr
.LVL165:
	.loc 1 1542 0
	mov.aa	%a13, %a4
	.loc 1 1554 0
	ld.bu	%d15, [%a15] 13
	ld.bu	%d4, [%a15] 12
	sh	%d15, %d15, 8
	or	%d4, %d15
	call	lwip_ntohs
.LVL166:
	extr.u	%d2, %d2, 12, 16
	jge.u	%d2, 6, .L276
.LVL167:
.L252:
	ret
.LVL168:
.L276:
	.loc 1 1555 0
	ld.a	%a2, [%a12] lo:tcphdr
	ld.bu	%d15, [%a2] 13
	ld.bu	%d4, [%a2] 12
	sh	%d15, %d15, 8
	or	%d4, %d15
	call	lwip_ntohs
.LVL169:
	sh	%d2, %d2, -12
	addi	%d3, %d2, -5
	sh	%d3, 2
	extr.u	%d3, %d3, 0, 16
.LVL170:
	.loc 1 1556 0
	jz	%d3, .L252
	.loc 1 1551 0
	lea	%a2, [%a15] 20
	mov	%d2, 0
.LVL171:
	.loc 1 1557 0
	addsc.a	%a15, %a2, %d2, 0
.LVL172:
	.loc 1 1558 0
	ld.bu	%d15, [%a15]0
	jeq	%d15, 1, .L257
.LVL173:
.L278:
	jz	%d15, .L252
	jne	%d15, 2, .L277
	.loc 1 1570 0
	ld.bu	%d15, [%a15] 1
	jne	%d15, 4, .L252
	add	%d15, %d2, 3
	jge	%d15, %d3, .L252
	.loc 1 1576 0
	ld.bu	%d15, [%a15] 2
	ld.bu	%d4, [%a15] 3
	sh	%d15, %d15, 8
	or	%d15, %d4
.LVL174:
	.loc 1 1578 0
	add	%d4, %d15, -1
	mov	%d5, 1460
	lt.u	%d4, %d4, %d5
	sel	%d15, %d4, %d15, %d5
.LVL175:
	.loc 1 1580 0
	add	%d2, 4
	extr.u	%d2, %d2, 0, 16
.LVL176:
	.loc 1 1578 0
	st.h	[%a13]0, %d15
.LVL177:
	.loc 1 1556 0
	jge.u	%d2, %d3, .L252
.LVL178:
.L275:
	.loc 1 1557 0
	addsc.a	%a15, %a2, %d2, 0
.LVL179:
	.loc 1 1558 0
	ld.bu	%d15, [%a15]0
	jne	%d15, 1, .L278
.LVL180:
.L257:
	.loc 1 1565 0
	add	%d2, 1
	extr.u	%d2, %d2, 0, 16
.LVL181:
	.loc 1 1556 0
	jlt.u	%d2, %d3, .L275
	j	.L252
.LVL182:
.L277:
	.loc 1 1605 0
	ld.bu	%d15, [%a15] 1
	jz	%d15, .L252
	.loc 1 1613 0
	add	%d2, %d15
	extr.u	%d2, %d2, 0, 16
.LVL183:
	.loc 1 1556 0
	jlt.u	%d2, %d3, .L275
	j	.L252
.LFE7:
	.size	tcp_parseopt.isra.0, .-tcp_parseopt.isra.0
.section .rodata,"a",@progbits
.LC13:
	.string	"tcp_input: active pcb->state != CLOSED"
.LC14:
	.string	"tcp_input: active pcb->state != TIME-WAIT"
.LC15:
	.string	"tcp_input: active pcb->state != LISTEN"
.LC16:
	.string	"tcp_input: pcb->next != pcb (before cache)"
.LC17:
	.string	"tcp_input: pcb->next != pcb (after cache)"
.LC18:
	.string	"tcp_input: TIME-WAIT pcb->state == TIME-WAIT"
.LC19:
	.string	"tcp_input: pcb->state != CLOSED"
.LC20:
	.string	"pcb->snd_queuelen > 0"
.LC21:
	.string	"pcb->accept != NULL"
.LC22:
	.string	"pcb->refused_data == NULL"
.section .text,"ax",@progbits
	.align 1
	.global	tcp_input
	.type	tcp_input, @function
tcp_input:
.LFB0:
	.loc 1 93 0
.LVL184:
	.loc 1 105 0
	movh.a	%a15, hi:lwip_stats
	lea	%a15, [%a15] lo:lwip_stats
	ld.h	%d15, [%a15] 146
	.loc 1 108 0
	ld.a	%a2, [%a4] 4
	.loc 1 105 0
	add	%d15, 1
	.loc 1 108 0
	movh.a	%a3, hi:iphdr
	st.a	[%a3] lo:iphdr, %a2
	.loc 1 105 0
	st.h	[%a15] 146, %d15
	.loc 1 109 0
	ld.bu	%d4, [%a2]0
	.loc 1 93 0
	sub.a	%SP, 32
.LCFI1:
	.loc 1 109 0
	and	%d4, %d4, 15
	sh	%d4, 2
	addsc.a	%a2, %a2, %d4, 0
	movh.a	%a13, hi:tcphdr
	.loc 1 93 0
	mov.aa	%a14, %a5
	.loc 1 116 0
	rsub	%d4
	.loc 1 93 0
	mov.aa	%a12, %a4
	.loc 1 109 0
	st.a	[%a13] lo:tcphdr, %a2
	.loc 1 116 0
	call	pbuf_header
.LVL185:
	jnz	%d2, .L495
	.loc 1 116 0 is_stmt 0 discriminator 1
	ld.hu	%d15, [%a12] 8
	ge.u	%d15, %d15, 20
	jnz	%d15, .L503
.L495:
	.loc 1 151 0 is_stmt 1
	ld.h	%d15, [%a15] 154
	add	%d15, 1
	st.h	[%a15] 154, %d15
.L282:
	.loc 1 422 0
	ld.h	%d15, [%a15] 150
	add	%d15, 1
	st.h	[%a15] 150, %d15
.LVL186:
.L496:
	.loc 1 425 0
	.loc 1 424 0
	mov.aa	%a4, %a12
	.loc 1 425 0
	lea	%SP, [%SP] 32
	.loc 1 424 0
	j	pbuf_free
.LVL187:
.L503:
	.loc 1 124 0
	movh	%d15, hi:current_iphdr_dest
	mov.a	%a2, %d15
	mov.aa	%a4, %a14
	ld.w	%d4, [%a2] lo:current_iphdr_dest
	addi	%d11, %d15, lo:current_iphdr_dest
	call	ip4_addr_isbroadcast
.LVL188:
	jnz	%d2, .L283
	.loc 1 125 0 discriminator 1
	mov.a	%a3, %d15
	ld.w	%d2, [%a3] lo:current_iphdr_dest
	and	%d2, %d2, 240
	.loc 1 124 0 discriminator 1
	ne	%d2, %d2, 224
	jz	%d2, .L283
	.loc 1 132 0
	movh	%d2, hi:current_iphdr_src
	addi	%d8, %d2, lo:current_iphdr_src
	mov.a	%a5, %d8
	mov.a	%a6, %d11
	ld.hu	%d5, [%a12] 8
	mov.aa	%a4, %a12
	mov	%d4, 6
	call	inet_chksum_pseudo
.LVL189:
	jz	%d2, .L285
	.loc 1 140 0
	ld.h	%d15, [%a15] 152
	add	%d15, 1
	st.h	[%a15] 152, %d15
	.loc 1 141 0
	j	.L282
.L283:
	.loc 1 126 0
	ld.h	%d15, [%a15] 160
	add	%d15, 1
	st.h	[%a15] 160, %d15
	.loc 1 127 0
	j	.L282
.L285:
	.loc 1 147 0
	ld.a	%a2, [%a13] lo:tcphdr
	ld.bu	%d2, [%a2] 13
	ld.bu	%d4, [%a2] 12
	sh	%d2, %d2, 8
	or	%d4, %d2
	call	lwip_ntohs
.LVL190:
	sh	%d2, %d2, -12
.LVL191:
	.loc 1 148 0
	mul	%d4, %d2, -4
	mov.aa	%a4, %a12
	extr	%d4, %d4, 0, 16
	call	pbuf_header
.LVL192:
	jnz	%d2, .L495
	.loc 1 156 0
	ld.a	%a14, [%a13] lo:tcphdr
.LVL193:
	ld.bu	%d2, [%a14] 1
	ld.bu	%d4, [%a14]0
	sh	%d2, %d2, 8
	or	%d4, %d2
	call	lwip_ntohs
.LVL194:
	st.b	[%a14]0, %d2
	extr.u	%d2, %d2, 8, 16
	st.b	[%a14] 1, %d2
	.loc 1 157 0
	ld.a	%a14, [%a13] lo:tcphdr
	ld.bu	%d2, [%a14] 3
	ld.bu	%d4, [%a14] 2
	sh	%d2, %d2, 8
	or	%d4, %d2
	call	lwip_ntohs
.LVL195:
	st.b	[%a14] 2, %d2
	extr.u	%d2, %d2, 8, 16
	st.b	[%a14] 3, %d2
	.loc 1 158 0
	ld.a	%a14, [%a13] lo:tcphdr
	ld.bu	%d2, [%a14] 5
	ld.bu	%d4, [%a14] 4
	sh	%d2, %d2, 8
	or	%d3, %d2, %d4
	ld.bu	%d2, [%a14] 6
	ld.bu	%d4, [%a14] 7
	sh	%d2, %d2, 16
	or	%d2, %d3
	sh	%d4, %d4, 24
	or	%d4, %d2
	call	lwip_ntohl
.LVL196:
	extr.u	%d3, %d2, 8, 8
	st.b	[%a14] 4, %d2
	movh.a	%a2, hi:seqno
	st.w	[%a2] lo:seqno, %d2
	st.b	[%a14] 5, %d3
	extr.u	%d3, %d2, 16, 8
	st.b	[%a14] 6, %d3
	sh	%d3, %d2, -24
	st.b	[%a14] 7, %d3
	.loc 1 159 0
	ld.a	%a14, [%a13] lo:tcphdr
	ld.bu	%d2, [%a14] 9
	ld.bu	%d4, [%a14] 8
	sh	%d2, %d2, 8
	or	%d3, %d2, %d4
	ld.bu	%d2, [%a14] 10
	ld.bu	%d4, [%a14] 11
	sh	%d2, %d2, 16
	or	%d2, %d3
	sh	%d4, %d4, 24
	or	%d4, %d2
	call	lwip_ntohl
.LVL197:
	extr.u	%d3, %d2, 8, 8
	st.b	[%a14] 8, %d2
	movh.a	%a2, hi:ackno
	st.w	[%a2] lo:ackno, %d2
	st.b	[%a14] 9, %d3
	extr.u	%d3, %d2, 16, 8
	st.b	[%a14] 10, %d3
	sh	%d3, %d2, -24
	st.b	[%a14] 11, %d3
	.loc 1 160 0
	ld.a	%a14, [%a13] lo:tcphdr
	ld.bu	%d2, [%a14] 15
	ld.bu	%d4, [%a14] 14
	sh	%d2, %d2, 8
	or	%d4, %d2
	call	lwip_ntohs
.LVL198:
	st.b	[%a14] 14, %d2
	extr.u	%d2, %d2, 8, 16
	.loc 1 162 0
	ld.a	%a2, [%a13] lo:tcphdr
	.loc 1 160 0
	st.b	[%a14] 15, %d2
	.loc 1 162 0
	ld.bu	%d2, [%a2] 13
	ld.bu	%d4, [%a2] 12
	sh	%d2, %d2, 8
	or	%d4, %d2
	call	lwip_ntohs
.LVL199:
	and	%d2, %d2, 255
	and	%d3, %d2, 63
	movh.a	%a3, hi:flags
	.loc 1 163 0
	and	%d2, %d2, 3
	.loc 1 162 0
	st.b	[%a3] lo:flags, %d3
	.loc 1 163 0
	ld.h	%d3, [%a12] 8
	.loc 1 170 0
	movh.a	%a2, hi:tcp_active_pcbs
	.loc 1 163 0
	cadd	%d2, %d2, %d3, 1
	.loc 1 170 0
	ld.a	%a14, [%a2] lo:tcp_active_pcbs
	.loc 1 163 0
	movh.a	%a4, hi:tcplen
	st.h	[%a4] lo:tcplen, %d2
.LVL200:
	.loc 1 170 0
	jz.a	%a14, .L287
	mov.d	%d2, %a13
	.loc 1 171 0
	movh	%d13, hi:.LC0
	movh	%d12, hi:.LC2
	.loc 1 170 0
	mov	%d10, 0
	addi	%d9, %d2, lo:tcphdr
	.loc 1 171 0
	addi	%d13, %d13, lo:.LC0
	mov	%d14, 171
	addi	%d12, %d12, lo:.LC2
.LVL201:
.L295:
	ld.w	%d2, [%a14] 24
	jz	%d2, .L504
.L288:
	.loc 1 172 0
	ne	%d3, %d2, 10
	jz	%d3, .L505
.L289:
	.loc 1 173 0
	jeq	%d2, 1, .L506
.L290:
	.loc 1 174 0
	mov.a	%a3, %d9
	ld.hu	%d3, [%a14] 32
	ld.a	%a2, [%a3]0
	ld.bu	%d2, [%a2] 1
	ld.bu	%d4, [%a2]0
	sh	%d2, %d2, 8
	or	%d2, %d4
	jeq	%d3, %d2, .L507
.L291:
.LVL202:
	.loc 1 170 0 discriminator 2
	ld.a	%a2, [%a14] 12
.LVL203:
	mov.d	%d10, %a14
	jz.a	%a2, .L287
.LVL204:
	mov.aa	%a14, %a2
	j	.L295
.LVL205:
.L505:
	.loc 1 172 0 discriminator 1
	movh	%d2, hi:.LC14
	addi	%d2, %d2, lo:.LC14
	mov.a	%a4, %d13
	st.w	[%SP] 8, %d12
	st.w	[%SP]0, %d2
	mov	%d2, 172
	st.w	[%SP] 4, %d2
	call	Ifx_Lwip_printf
.LVL206:
	ld.w	%d2, [%a14] 24
	j	.L289
.L504:
	.loc 1 171 0 discriminator 1
	movh.a	%a2, hi:.LC13
	lea	%a2, [%a2] lo:.LC13
	mov.a	%a4, %d13
	st.a	[%SP]0, %a2
	st.w	[%SP] 4, %d14
	st.w	[%SP] 8, %d12
	call	Ifx_Lwip_printf
.LVL207:
	ld.w	%d2, [%a14] 24
	j	.L288
.L507:
	.loc 1 175 0 discriminator 1
	ld.bu	%d2, [%a2] 3
	ld.bu	%d4, [%a2] 2
	sh	%d2, %d2, 8
	.loc 1 174 0 discriminator 1
	ld.hu	%d3, [%a14] 30
	or	%d2, %d4
	jne	%d3, %d2, .L291
	.loc 1 175 0
	mov.a	%a4, %d8
	ld.w	%d3, [%a14] 4
	ld.w	%d2, [%a4]0
	jne	%d3, %d2, .L291
	.loc 1 176 0
	mov.a	%a2, %d11
	ld.w	%d3, [%a14]0
	ld.w	%d2, [%a2]0
	jne	%d3, %d2, .L291
	.loc 1 182 0
	ld.a	%a2, [%a14] 12
	jeq.a	%a2, %a14, .L508
.L292:
	.loc 1 183 0
	jz	%d10, .L293
	.loc 1 184 0
	mov.a	%a3, %d10
	st.a	[%a3] 12, %a2
	.loc 1 185 0
	movh.a	%a3, hi:tcp_active_pcbs
	ld.a	%a2, [%a3] lo:tcp_active_pcbs
	.loc 1 186 0
	st.a	[%a3] lo:tcp_active_pcbs, %a14
	.loc 1 185 0
	st.a	[%a14] 12, %a2
.L293:
	.loc 1 188 0
	jeq.a	%a2, %a14, .L509
.L294:
	.loc 1 280 0
	movh.a	%a2, hi:inseg
	mov.d	%d2, %a2
	addi	%d10, %d2, lo:inseg
	mov	%d2, 0
	.loc 1 281 0
	ld.h	%d15, [%a12] 8
	.loc 1 283 0
	ld.w	%d3, [%a13] lo:tcphdr
	.loc 1 280 0
	st.w	[%a2] lo:inseg, %d2
	.loc 1 281 0
	mov.a	%a2, %d10
	.loc 1 285 0
	movh	%d9, hi:recv_data
	.loc 1 281 0
	st.h	[%a2] 8, %d15
	.loc 1 285 0
	mov	%d15, 0
	.loc 1 282 0
	st.a	[%a2] 4, %a12
	.loc 1 283 0
	st.w	[%a2] 16, %d3
	.loc 1 285 0
	mov.a	%a2, %d9
	.loc 1 288 0
	movh.a	%a4, hi:flags
	.loc 1 285 0
	st.w	[%a2] lo:recv_data, %d15
	.loc 1 286 0
	movh	%d15, hi:recv_flags
	mov.a	%a3, %d15
	st.b	[%a3] lo:recv_flags, %d2
	.loc 1 288 0
	ld.bu	%d2, [%a4] lo:flags
	jz.t	%d2, 3, .L386
	.loc 1 289 0
	ld.bu	%d2, [%a12] 13
	or	%d2, %d2, 1
	st.b	[%a12] 13, %d2
.L386:
	.loc 1 293 0
	ld.w	%d2, [%a14] 124
	jz	%d2, .L311
	.loc 1 294 0
	mov.aa	%a4, %a14
	call	tcp_process_refused_data
.LVL208:
	eq	%d2, %d2, -10
	jnz	%d2, .L312
	.loc 1 294 0 is_stmt 0 discriminator 1
	ld.w	%d2, [%a14] 124
	jz	%d2, .L311
	.loc 1 295 0 is_stmt 1
	movh.a	%a2, hi:tcplen
	ld.hu	%d2, [%a2] lo:tcplen
	jz	%d2, .L311
.L312:
	.loc 1 298 0
	ld.h	%d15, [%a15] 150
	movh.a	%a12, hi:tcp_input_pcb
.LVL209:
	add	%d15, 1
	st.h	[%a15] 150, %d15
.L313:
	.loc 1 398 0
	mov.a	%a3, %d10
	.loc 1 394 0
	mov	%d15, 0
	.loc 1 395 0
	mov	%d2, 0
	mov.a	%a2, %d9
	.loc 1 398 0
	ld.a	%a4, [%a3] 4
	.loc 1 394 0
	st.w	[%a12] lo:tcp_input_pcb, %d15
	.loc 1 395 0
	st.w	[%a2] lo:recv_data, %d2
	.loc 1 398 0
	jz.a	%a4, .L279
	.loc 1 400 0
	call	pbuf_free
.LVL210:
	.loc 1 401 0
	mov	%d2, 0
	mov.a	%a2, %d10
	st.w	[%a2] 4, %d2
	ret
.LVL211:
.L506:
	.loc 1 173 0 discriminator 1
	movh	%d2, hi:.LC15
	addi	%d2, %d2, lo:.LC15
	mov.a	%a4, %d13
	st.w	[%SP] 8, %d12
	st.w	[%SP]0, %d2
	mov	%d2, 173
	st.w	[%SP] 4, %d2
	call	Ifx_Lwip_printf
.LVL212:
	j	.L290
.LVL213:
.L287:
	.loc 1 198 0
	movh	%d2, hi:.LC0
	.loc 1 197 0
	movh.a	%a2, hi:tcp_tw_pcbs
	.loc 1 198 0
	addi	%d2, %d2, lo:.LC0
	.loc 1 197 0
	ld.a	%a14, [%a2] lo:tcp_tw_pcbs
.LVL214:
	movh	%d9, hi:tcphdr
	.loc 1 198 0
	movh	%d13, hi:.LC18
	movh	%d12, hi:.LC2
	st.w	[%SP] 28, %d2
	addi	%d9, %d9, lo:tcphdr
	addi	%d13, %d13, lo:.LC18
	mov	%d10, 198
	addi	%d12, %d12, lo:.LC2
	.loc 1 197 0
	jnz.a	%a14, .L458
	j	.L384
.L297:
	.loc 1 197 0 is_stmt 0 discriminator 2
	ld.a	%a14, [%a14] 12
.LVL215:
	jz.a	%a14, .L384
.L458:
	.loc 1 198 0 is_stmt 1
	ld.w	%d2, [%a14] 24
	eq	%d2, %d2, 10
	jnz	%d2, .L296
	.loc 1 198 0 is_stmt 0 discriminator 1
	ld.a	%a4, [%SP] 28
	st.w	[%SP]0, %d13
	st.w	[%SP] 4, %d10
	st.w	[%SP] 8, %d12
	call	Ifx_Lwip_printf
.LVL216:
.L296:
	.loc 1 199 0 is_stmt 1
	mov.a	%a3, %d9
	ld.hu	%d7, [%a14] 32
	ld.a	%a2, [%a3]0
	ld.bu	%d2, [%a2] 1
	ld.bu	%d3, [%a2]0
	sh	%d2, %d2, 8
	or	%d2, %d3
	jne	%d7, %d2, .L297
	.loc 1 200 0 discriminator 1
	ld.bu	%d2, [%a2] 3
	ld.bu	%d3, [%a2] 2
	sh	%d2, %d2, 8
	ld.hu	%d6, [%a14] 30
	.loc 1 199 0 discriminator 1
	or	%d2, %d3
	jne	%d6, %d2, .L297
	.loc 1 200 0
	mov.a	%a4, %d8
	ld.w	%d3, [%a14] 4
	ld.w	%d2, [%a4]0
	jne	%d3, %d2, .L297
	.loc 1 201 0
	mov.a	%a2, %d11
	ld.w	%d3, [%a14]0
	ld.w	%d2, [%a2]0
	jne	%d3, %d2, .L297
.LVL217:
.LBB12:
.LBB13:
	.loc 1 536 0
	movh.a	%a3, hi:flags
	ld.bu	%d15, [%a3] lo:flags
	jnz.t	%d15, 2, .L496
	.loc 1 540 0
	jz.t	%d15, 1, .L300
	.loc 1 543 0
	movh.a	%a4, hi:seqno
	ld.w	%d5, [%a4] lo:seqno
	ld.w	%d2, [%a14] 44
	sub	%d2, %d5, %d2
	jltz	%d2, .L301
	ld.hu	%d15, [%a14] 48
	sub	%d15, %d2, %d15
	jlez	%d15, .L510
.L301:
	.loc 1 555 0
	movh.a	%a2, hi:tcplen
	ld.hu	%d15, [%a2] lo:tcplen
	jz	%d15, .L496
	.loc 1 557 0
	ld.bu	%d15, [%a14] 34
	.loc 1 558 0
	mov.aa	%a4, %a14
	.loc 1 557 0
	or	%d15, %d15, 2
	st.b	[%a14] 34, %d15
.LVL218:
.L497:
	.loc 1 558 0
	call	tcp_output
.LVL219:
	j	.L496
.LVL220:
.L279:
	ret
.LVL221:
.L311:
.LBE13:
.LBE12:
.LBB16:
.LBB17:
	.loc 1 584 0
	movh.a	%a3, hi:flags
.LBE17:
.LBE16:
	.loc 1 303 0
	movh.a	%a12, hi:tcp_input_pcb
.LVL222:
.LBB28:
.LBB21:
	.loc 1 584 0
	ld.bu	%d2, [%a3] lo:flags
.LBE21:
.LBE28:
	.loc 1 303 0
	st.a	[%a12] lo:tcp_input_pcb, %a14
.LVL223:
.LBB29:
.LBB22:
	.loc 1 584 0
	jz.t	%d2, 2, .L314
.LVL224:
	.loc 1 586 0
	ld.w	%d2, [%a14] 24
	jeq	%d2, 2, .L511
	.loc 1 591 0
	movh.a	%a15, hi:seqno
	ld.w	%d4, [%a15] lo:seqno
	ld.w	%d3, [%a14] 44
	sub	%d4, %d3
	jltz	%d4, .L317
	ld.hu	%d3, [%a14] 48
	sub	%d3, %d4, %d3
	jlez	%d3, .L512
.LVL225:
.L317:
.LBE22:
.LBE29:
	.loc 1 308 0
	mov.a	%a15, %d15
	ld.bu	%d2, [%a15] lo:recv_flags
	jz.t	%d2, 3, .L363
	.loc 1 313 0
	ld.a	%a15, [%a14] 144
	jz.a	%a15, .L364
	.loc 1 313 0 is_stmt 0 discriminator 1
	ld.a	%a4, [%a14] 16
	mov	%d4, -11
	calli	%a15
.LVL226:
.L364:
	.loc 1 314 0 is_stmt 1
	movh.a	%a2, hi:tcp_active_pcbs
	lea	%a4, [%a2] lo:tcp_active_pcbs
.L493:
	.loc 1 325 0
	mov.aa	%a5, %a14
	call	tcp_pcb_remove
.LVL227:
	.loc 1 326 0
	mov	%d4, 2
	mov.aa	%a4, %a14
	call	memp_free
.LVL228:
	j	.L313
.LVL229:
.L314:
.LBB30:
.LBB23:
	.loc 1 612 0
	jz.t	%d2, 1, .L320
	ld.w	%d2, [%a14] 24
	add	%d2, -2
	jlt.u	%d2, 2, .L320
.LVL230:
.L337:
	.loc 1 674 0
	ld.bu	%d2, [%a14] 34
	or	%d2, %d2, 2
	st.b	[%a14] 34, %d2
	j	.L317
.LVL231:
.L363:
.LBE23:
.LBE30:
	.loc 1 316 0
	jz.t	%d2, 4, .L365
	.loc 1 319 0
	ld.bu	%d15, [%a14] 34
	jnz.t	%d15, 4, .L366
	.loc 1 323 0
	ld.a	%a15, [%a14] 144
	jz.a	%a15, .L366
	.loc 1 323 0 is_stmt 0 discriminator 1
	ld.a	%a4, [%a14] 16
	mov	%d4, -12
	calli	%a15
.LVL232:
.L366:
	.loc 1 325 0 is_stmt 1
	movh.a	%a3, hi:tcp_active_pcbs
	lea	%a4, [%a3] lo:tcp_active_pcbs
	j	.L493
.LVL233:
.L384:
	.loc 1 216 0
	movh.a	%a6, hi:tcp_listen_pcbs
	ld.a	%a5, [%a6] lo:tcp_listen_pcbs
.LVL234:
	jz.a	%a5, .L304
	ld.a	%a4, [%a13] lo:tcphdr
	.loc 1 228 0
	mov.a	%a3, %d15
	mov.aa	%a14, %a5
.LVL235:
	ld.bu	%d6, [%a4] 3
	ld.bu	%d3, [%a4] 2
	sh	%d2, %d6, 8
	or	%d6, %d2, %d3
	ld.w	%d3, [%a3] lo:current_iphdr_dest
	mov.a	%a3, 0
	j	.L307
.LVL236:
.L305:
	.loc 1 216 0 discriminator 2
	ld.a	%a2, [%a14] 12
.LVL237:
	mov.aa	%a3, %a14
	jz.a	%a2, .L304
.LVL238:
	mov.aa	%a14, %a2
.LVL239:
.L307:
	.loc 1 217 0
	ld.hu	%d2, [%a14] 30
	jne	%d2, %d6, .L305
	.loc 1 228 0
	ld.w	%d4, [%a14]0
	.loc 1 229 0
	eq	%d2, %d4, %d3
	or.eq	%d2, %d4, 0
	jz	%d2, .L305
	.loc 1 249 0
	jz.a	%a3, .L388
	.loc 1 250 0
	ld.w	%d2, [%a14] 12
	st.w	[%a3] 12, %d2
	.loc 1 252 0
	st.a	[%a14] 12, %a5
	.loc 1 254 0
	st.a	[%a6] lo:tcp_listen_pcbs, %a14
.L388:
.LVL240:
.LBB31:
.LBB32:
	.loc 1 445 0
	movh.a	%a2, hi:flags
	ld.bu	%d2, [%a2] lo:flags
	jnz.t	%d2, 2, .L496
	.loc 1 452 0
	jnz.t	%d2, 4, .L513
	.loc 1 458 0
	jz.t	%d2, 1, .L496
	.loc 1 461 0
	ld.bu	%d3, [%a14] 33
	ld.bu	%d2, [%a14] 32
	jge.u	%d3, %d2, .L496
	.loc 1 466 0
	ld.bu	%d4, [%a14] 28
	call	tcp_alloc
.LVL241:
	mov.d	%d8, %a2
.LVL242:
	.loc 1 470 0
	jz	%d8, .L514
	.loc 1 476 0
	ld.bu	%d2, [%a14] 33
	.loc 1 479 0
	mov.a	%a3, %d15
	.loc 1 476 0
	add	%d2, 1
	.loc 1 482 0
	ld.a	%a15, [%a13] lo:tcphdr
	.loc 1 479 0
	ld.w	%d15, [%a3] lo:current_iphdr_dest
	.loc 1 476 0
	st.b	[%a14] 33, %d2
	.loc 1 479 0
	st.w	[%a2]0, %d15
	.loc 1 480 0
	ld.h	%d15, [%a14] 30
	st.h	[%a2] 30, %d15
	.loc 1 479 0
	mov.aa	%a3, %a2
	.loc 1 481 0
	movh.a	%a2, hi:current_iphdr_src
	.loc 1 482 0
	ld.bu	%d15, [%a15] 1
	.loc 1 481 0
	ld.w	%d2, [%a2] lo:current_iphdr_src
	st.w	[%a3] 4, %d2
	.loc 1 482 0
	ld.bu	%d2, [%a15]0
	sh	%d15, %d15, 8
	or	%d15, %d2
	.loc 1 484 0
	movh.a	%a2, hi:seqno
	.loc 1 483 0
	mov	%d2, 3
	.loc 1 484 0
	ld.w	%d3, [%a2] lo:seqno
	.loc 1 482 0
	st.h	[%a3] 32, %d15
	.loc 1 483 0
	st.w	[%a3] 24, %d2
	.loc 1 484 0
	addi	%d2, %d3, 1
	.loc 1 489 0
	add	%d3, -1
	.loc 1 498 0
	movh.a	%a2, hi:tcp_active_pcbs
	.loc 1 484 0
	st.w	[%a3] 44, %d2
	.loc 1 485 0
	st.w	[%a3] 52, %d2
	.loc 1 486 0
	ld.bu	%d15, [%a15] 15
	ld.bu	%d2, [%a15] 14
	sh	%d15, %d15, 8
	or	%d15, %d2
	.loc 1 492 0
	ld.w	%d2, [%a14] 20
	.loc 1 489 0
	st.w	[%a3] 88, %d3
	.loc 1 486 0
	st.h	[%a3] 100, %d15
	.loc 1 487 0
	st.h	[%a3] 102, %d15
	.loc 1 488 0
	st.h	[%a3] 82, %d15
	.loc 1 490 0
	ld.w	%d15, [%a14] 16
	st.w	[%a3] 16, %d15
	.loc 1 492 0
	st.w	[%a3] 20, %d2
	.loc 1 495 0
	ld.bu	%d15, [%a14] 8
	.loc 1 498 0
	ld.w	%d3, [%a2] lo:tcp_active_pcbs
	.loc 1 495 0
	andn	%d15, %d15, ~(-116)
	.loc 1 498 0
	st.w	[%a3] 12, %d3
	st.w	[%SP] 24, %d3
	.loc 1 495 0
	st.b	[%a3] 8, %d15
	.loc 1 498 0
	st.w	[%a2] lo:tcp_active_pcbs, %d8
	call	tcp_timer_needed
.LVL243:
	.loc 1 501 0
	mov.a	%a2, %d8
	.loc 1 498 0
	mov	%d15, 1
	.loc 1 501 0
	lea	%a4, [%a2] 58
	.loc 1 498 0
	movh.a	%a15, hi:tcp_active_pcbs_changed
	st.b	[%a15] lo:tcp_active_pcbs_changed, %d15
	.loc 1 501 0
	call	tcp_parseopt.isra.0
.LVL244:
	.loc 1 503 0
	mov.a	%a3, %d8
	mov.a	%a4, %d8
	ld.hu	%d4, [%a3] 58
	add.a	%a4, 4
	call	tcp_eff_send_mss
.LVL245:
	mov.a	%a4, %d8
	.loc 1 509 0
	mov	%d4, 18
	.loc 1 503 0
	st.h	[%a4] 58, %d2
	.loc 1 509 0
	call	tcp_enqueue_flags
.LVL246:
	.loc 1 511 0
	mov.a	%a4, %d8
	.loc 1 510 0
	jz	%d2, .L497
	.loc 1 511 0
	mov	%d4, 0
	call	tcp_abandon
.LVL247:
	j	.L496
.LVL248:
.L320:
.LBE32:
.LBE31:
.LBB34:
.LBB24:
	.loc 1 618 0
	ld.bu	%d2, [%a14] 34
	jnz.t	%d2, 4, .L321
	.loc 1 620 0
	movh.a	%a15, hi:tcp_ticks
	ld.w	%d2, [%a15] lo:tcp_ticks
	st.w	[%a14] 40, %d2
.L321:
	.loc 1 622 0
	mov	%d2, 0
	.loc 1 624 0
	lea	%a4, [%a14] 58
	.loc 1 622 0
	st.b	[%a14] 154, %d2
	.loc 1 624 0
	call	tcp_parseopt.isra.0
.LVL249:
	.loc 1 627 0
	ld.w	%d2, [%a14] 24
	add	%d2, -2
	jge.u	%d2, 8, .L317
	movh.a	%a15, hi:.L323
	lea	%a15, [%a15] lo:.L323
	addsc.a	%a15, %a15, %d2, 2
	ji	%a15
	.align 2
	.align 2
.L323:
	.code32
	j	.L322
	.code32
	j	.L324
	.code32
	j	.L325
	.code32
	j	.L326
	.code32
	j	.L327
	.code32
	j	.L325
	.code32
	j	.L328
	.code32
	j	.L329
.L511:
	.loc 1 587 0
	movh.a	%a4, hi:ackno
	ld.w	%d3, [%a14] 84
	ld.w	%d2, [%a4] lo:ackno
	jne	%d3, %d2, .L317
.LVL250:
.L316:
	.loc 1 600 0
	mov.a	%a2, %d15
	ld.bu	%d2, [%a2] lo:recv_flags
	or	%d2, %d2, 8
	st.b	[%a2] lo:recv_flags, %d2
	.loc 1 601 0
	ld.bu	%d2, [%a14] 34
	andn	%d2, %d2, ~(-2)
	st.b	[%a14] 34, %d2
	j	.L317
.LVL251:
.L365:
.LBE24:
.LBE34:
	.loc 1 332 0
	ld.hu	%d4, [%a14] 104
	jz	%d4, .L370
	.loc 1 333 0
	ld.a	%a15, [%a14] 128
	jz.a	%a15, .L370
	.loc 1 333 0 is_stmt 0 discriminator 1
	ld.a	%a4, [%a14] 16
	mov.aa	%a5, %a14
	calli	%a15
.LVL252:
	.loc 1 334 0 is_stmt 1 discriminator 1
	ne	%d2, %d2, -10
.LVL253:
	jz	%d2, .L313
.L370:
	.loc 1 339 0
	mov.a	%a4, %d9
	ld.w	%d2, [%a4] lo:recv_data
	jz	%d2, .L371
	.loc 1 340 0
	ld.w	%d2, [%a14] 124
	jz	%d2, .L372
	.loc 1 340 0 is_stmt 0 discriminator 1
	movh	%d2, hi:.LC22
	addi	%d2, %d2, lo:.LC22
	movh.a	%a4, hi:.LC0
	lea	%a4, [%a4] lo:.LC0
	st.w	[%SP]0, %d2
	mov	%d2, 340
	st.w	[%SP] 4, %d2
	movh	%d2, hi:.LC2
	addi	%d2, %d2, lo:.LC2
	st.w	[%SP] 8, %d2
	call	Ifx_Lwip_printf
.LVL254:
.L372:
	.loc 1 341 0 is_stmt 1
	ld.bu	%d2, [%a14] 34
	jnz.t	%d2, 4, .L515
	.loc 1 350 0
	ld.a	%a15, [%a14] 132
	jz.a	%a15, .L374
	.loc 1 350 0 is_stmt 0 discriminator 1
	mov.a	%a2, %d9
	ld.a	%a4, [%a14] 16
	ld.a	%a6, [%a2] lo:recv_data
	mov.aa	%a5, %a14
	mov	%d4, 0
	calli	%a15
.LVL255:
.L375:
	.loc 1 351 0 is_stmt 1
	eq	%d3, %d2, -10
	jnz	%d3, .L313
	.loc 1 356 0
	jz	%d2, .L371
	.loc 1 357 0
	mov.a	%a2, %d9
	ld.w	%d2, [%a2] lo:recv_data
.LVL256:
	st.w	[%a14] 124, %d2
.L371:
	.loc 1 364 0
	mov.a	%a3, %d15
	ld.bu	%d15, [%a3] lo:recv_flags
	jz.t	%d15, 5, .L378
	.loc 1 365 0
	ld.a	%a15, [%a14] 124
	jz.a	%a15, .L379
	.loc 1 367 0
	ld.bu	%d15, [%a15] 13
	or	%d15, %d15, 32
	st.b	[%a15] 13, %d15
.L378:
	.loc 1 381 0
	mov	%d15, 0
	.loc 1 383 0
	mov.aa	%a4, %a14
	.loc 1 381 0
	st.w	[%a12] lo:tcp_input_pcb, %d15
	.loc 1 383 0
	call	tcp_output
.LVL257:
	j	.L313
.LVL258:
.L304:
	.loc 1 408 0
	ld.a	%a2, [%a13] lo:tcphdr
	ld.bu	%d15, [%a2] 13
	ld.bu	%d4, [%a2] 12
	sh	%d15, %d15, 8
	or	%d4, %d15
	call	lwip_ntohs
.LVL259:
	jnz.t	%d2, 2, .L496
	.loc 1 409 0
	ld.h	%d15, [%a15] 160
	.loc 1 411 0
	movh.a	%a3, hi:tcplen
	.loc 1 409 0
	add	%d15, 1
	.loc 1 411 0
	movh.a	%a4, hi:seqno
	ld.hu	%d3, [%a3] lo:tcplen
	.loc 1 409 0
	st.h	[%a15] 160, %d15
	.loc 1 410 0
	ld.h	%d15, [%a15] 150
	.loc 1 411 0
	ld.w	%d5, [%a4] lo:seqno
	.loc 1 410 0
	add	%d15, 1
	.loc 1 411 0
	mov.a	%a4, %d11
	mov.a	%a5, %d8
	.loc 1 410 0
	st.h	[%a15] 150, %d15
	.loc 1 413 0
	movh.a	%a15, hi:tcphdr
	ld.a	%a15, [%a15] lo:tcphdr
	.loc 1 411 0
	add	%d5, %d3
	ld.bu	%d2, [%a15] 3
	ld.bu	%d15, [%a15] 1
	ld.bu	%d6, [%a15] 2
	ld.bu	%d7, [%a15]0
	movh.a	%a15, hi:ackno
	sh	%d2, %d2, 8
	sh	%d15, %d15, 8
	ld.w	%d4, [%a15] lo:ackno
	or	%d6, %d2
	or	%d7, %d15
	call	tcp_rst
.LVL260:
	j	.L496
.LVL261:
.L328:
.LBB35:
.LBB25:
	.loc 1 770 0
	mov.aa	%a4, %a14
	call	tcp_receive
.LVL262:
	.loc 1 771 0
	movh.a	%a2, hi:flags
	ld.bu	%d2, [%a2] lo:flags
	jz.t	%d2, 4, .L317
	movh.a	%a3, hi:ackno
	ld.w	%d3, [%a14] 84
	ld.w	%d2, [%a3] lo:ackno
	jne	%d3, %d2, .L317
	.loc 1 773 0
	mov.aa	%a4, %a14
	call	tcp_pcb_purge
.LVL263:
	.loc 1 774 0
	movh.a	%a4, hi:tcp_active_pcbs
	ld.a	%a2, [%a4] lo:tcp_active_pcbs
	jeq.a	%a2, %a14, .L516
	movh.a	%a15, hi:tcp_tmp_pcb
	st.a	[%a15] lo:tcp_tmp_pcb, %a2
.L361:
	jz.a	%a2, .L498
	ld.a	%a3, [%a2] 12
	jeq.a	%a3, %a14, .L499
	mov.aa	%a2, %a3
	j	.L361
.L322:
	.loc 1 632 0
	movh.a	%a2, hi:flags
	ld.bu	%d2, [%a2] lo:flags
	and	%d2, %d2, 18
	ne	%d2, %d2, 18
	jz	%d2, .L517
.L330:
	.loc 1 677 0
	movh.a	%a2, hi:flags
	ld.bu	%d2, [%a2] lo:flags
	jz.t	%d2, 4, .L317
	.loc 1 680 0
	ld.a	%a15, [%a13] lo:tcphdr
	.loc 1 679 0
	movh.a	%a3, hi:tcplen
	movh.a	%a4, hi:seqno
	ld.bu	%d3, [%a15] 3
	ld.bu	%d2, [%a15] 1
	ld.bu	%d6, [%a15] 2
	ld.bu	%d7, [%a15]0
	movh.a	%a15, hi:ackno
	ld.hu	%d5, [%a3] lo:tcplen
	ld.w	%d0, [%a4] lo:seqno
	ld.w	%d4, [%a15] lo:ackno
	sh	%d3, %d3, 8
	sh	%d2, %d2, 8
.L491:
	.loc 1 722 0
	mov.a	%a4, %d11
	mov.a	%a5, %d8
	add	%d5, %d0
	or	%d6, %d3
	or	%d7, %d2
	call	tcp_rst
.LVL264:
	j	.L317
.L329:
	.loc 1 780 0
	mov.aa	%a4, %a14
	call	tcp_receive
.LVL265:
	.loc 1 781 0
	movh.a	%a2, hi:flags
	ld.bu	%d2, [%a2] lo:flags
	jz.t	%d2, 4, .L317
	movh.a	%a3, hi:ackno
	ld.w	%d3, [%a14] 84
	ld.w	%d2, [%a3] lo:ackno
	jne	%d3, %d2, .L317
	.loc 1 784 0
	mov.a	%a4, %d15
	ld.bu	%d2, [%a4] lo:recv_flags
	or	%d2, %d2, 16
	st.b	[%a4] lo:recv_flags, %d2
	j	.L317
.L327:
	.loc 1 759 0
	mov.aa	%a4, %a14
	call	tcp_receive
.LVL266:
	.loc 1 760 0
	mov.a	%a4, %d15
	ld.bu	%d2, [%a4] lo:recv_flags
	jz.t	%d2, 5, .L317
	.loc 1 762 0
	ld.bu	%d2, [%a14] 34
	.loc 1 763 0
	mov.aa	%a4, %a14
	.loc 1 762 0
	or	%d2, %d2, 2
	.loc 1 764 0
	movh.a	%a15, hi:tcp_active_pcbs
	.loc 1 762 0
	st.b	[%a14] 34, %d2
	.loc 1 763 0
	call	tcp_pcb_purge
.LVL267:
	.loc 1 764 0
	ld.a	%a2, [%a15] lo:tcp_active_pcbs
	jeq.a	%a2, %a14, .L500
	movh.a	%a15, hi:tcp_tmp_pcb
	st.a	[%a15] lo:tcp_tmp_pcb, %a2
.L357:
	jz.a	%a2, .L498
	ld.a	%a3, [%a2] 12
	jeq.a	%a3, %a14, .L499
	mov.aa	%a2, %a3
	j	.L357
.L326:
	.loc 1 740 0
	mov.aa	%a4, %a14
	call	tcp_receive
.LVL268:
	.loc 1 741 0
	mov.a	%a2, %d15
	ld.bu	%d2, [%a2] lo:recv_flags
	jz.t	%d2, 5, .L349
	.loc 1 742 0
	movh.a	%a3, hi:flags
	ld.bu	%d2, [%a3] lo:flags
	jz.t	%d2, 4, .L350
	movh.a	%a4, hi:ackno
	ld.w	%d3, [%a14] 84
	ld.w	%d2, [%a4] lo:ackno
	jeq	%d3, %d2, .L518
.L350:
	.loc 1 751 0
	ld.bu	%d2, [%a14] 34
	or	%d2, %d2, 2
	st.b	[%a14] 34, %d2
	.loc 1 752 0
	mov	%d2, 8
	st.w	[%a14] 24, %d2
	j	.L317
.L325:
	.loc 1 733 0
	mov.aa	%a4, %a14
	.loc 1 734 0
	mov.a	%a15, %d15
	.loc 1 733 0
	call	tcp_receive
.LVL269:
	.loc 1 734 0
	ld.bu	%d2, [%a15] lo:recv_flags
	jz.t	%d2, 5, .L317
.LVL270:
.L492:
	.loc 1 735 0
	ld.bu	%d2, [%a14] 34
	or	%d2, %d2, 2
	st.b	[%a14] 34, %d2
	.loc 1 736 0
	mov	%d2, 7
	st.w	[%a14] 24, %d2
	j	.L317
.LVL271:
.L324:
	.loc 1 684 0
	movh.a	%a2, hi:flags
	ld.bu	%d2, [%a2] lo:flags
	jz.t	%d2, 4, .L339
	.loc 1 686 0
	movh.a	%a3, hi:ackno
	ld.w	%d4, [%a3] lo:ackno
	ld.w	%d3, [%a14] 76
	addi	%d2, %d4, -1
	sub	%d2, %d3
	jltz	%d2, .L340
	ld.w	%d2, [%a14] 84
	sub	%d2, %d4, %d2
	jlez	%d2, .L519
.L340:
	.loc 1 723 0
	ld.a	%a15, [%a13] lo:tcphdr
	.loc 1 722 0
	movh.a	%a2, hi:tcplen
	movh.a	%a3, hi:seqno
	ld.bu	%d3, [%a15] 3
	ld.bu	%d2, [%a15] 1
	ld.hu	%d5, [%a2] lo:tcplen
	ld.w	%d0, [%a3] lo:seqno
	ld.bu	%d6, [%a15] 2
	sh	%d3, %d3, 8
	ld.bu	%d7, [%a15]0
	sh	%d2, %d2, 8
	j	.L491
.L339:
	.loc 1 725 0
	jz.t	%d2, 1, .L317
	ld.w	%d2, [%a14] 44
	movh.a	%a4, hi:seqno
	ld.w	%d3, [%a4] lo:seqno
	add	%d2, -1
	jne	%d2, %d3, .L317
	.loc 1 727 0
	mov.aa	%a4, %a14
	call	tcp_rexmit
.LVL272:
	j	.L317
.L519:
.LBB18:
	.loc 1 688 0
	mov	%d2, 4
	.loc 1 691 0
	ld.a	%a15, [%a14] 20
	.loc 1 688 0
	st.w	[%a14] 24, %d2
	.loc 1 691 0
	jz.a	%a15, .L520
.L341:
	.loc 1 694 0
	ld.a	%a4, [%a14] 16
	mov.aa	%a5, %a14
	mov	%d4, 0
	calli	%a15
.LVL273:
	.loc 1 695 0
	jz	%d2, .L343
	.loc 1 699 0
	ne	%d2, %d2, -10
.LVL274:
	jz	%d2, .L313
.LVL275:
.L494:
.LBE18:
.LBE25:
.LBE35:
	.loc 1 345 0
	mov.aa	%a4, %a14
	call	tcp_abort
.LVL276:
	.loc 1 346 0
	j	.L313
.LVL277:
.L516:
.LBB36:
.LBB26:
	.loc 1 774 0
	mov.aa	%a15, %a4
.L500:
	ld.w	%d2, [%a14] 12
	st.w	[%a15] lo:tcp_active_pcbs, %d2
.L360:
	mov	%d2, 1
	movh.a	%a15, hi:tcp_active_pcbs_changed
	st.b	[%a15] lo:tcp_active_pcbs_changed, %d2
	.loc 1 775 0
	mov	%d2, 10
	.loc 1 776 0
	movh.a	%a15, hi:tcp_tw_pcbs
	.loc 1 775 0
	st.w	[%a14] 24, %d2
	.loc 1 776 0
	ld.w	%d2, [%a15] lo:tcp_tw_pcbs
	st.w	[%a14] 12, %d2
	st.a	[%a15] lo:tcp_tw_pcbs, %a14
	call	tcp_timer_needed
.LVL278:
	j	.L317
.L517:
	.loc 1 633 0
	ld.a	%a15, [%a14] 116
	ld.a	%a15, [%a15] 16
	ld.bu	%d2, [%a15] 5
	ld.bu	%d4, [%a15] 4
	sh	%d2, %d2, 8
	or	%d3, %d2, %d4
	ld.bu	%d2, [%a15] 6
	ld.bu	%d4, [%a15] 7
	sh	%d2, %d2, 16
	or	%d2, %d3
	sh	%d4, %d4, 24
	or	%d4, %d2
	call	lwip_ntohl
.LVL279:
	movh.a	%a3, hi:ackno
	ld.w	%d3, [%a3] lo:ackno
	add	%d2, 1
	jne	%d2, %d3, .L330
	.loc 1 634 0
	ld.h	%d3, [%a14] 106
	.loc 1 635 0
	movh.a	%a4, hi:seqno
	.loc 1 634 0
	add	%d3, 1
	.loc 1 635 0
	ld.w	%d4, [%a4] lo:seqno
	.loc 1 638 0
	ld.a	%a15, [%a13] lo:tcphdr
	.loc 1 634 0
	st.h	[%a14] 106, %d3
	.loc 1 635 0
	addi	%d3, %d4, 1
	.loc 1 637 0
	st.w	[%a14] 76, %d2
	.loc 1 644 0
	lea	%a4, [%a14] 4
	.loc 1 635 0
	st.w	[%a14] 44, %d3
	.loc 1 636 0
	st.w	[%a14] 52, %d3
	.loc 1 638 0
	ld.bu	%d2, [%a15] 15
	ld.bu	%d3, [%a15] 14
	sh	%d2, %d2, 8
	or	%d2, %d3
	st.h	[%a14] 100, %d2
	.loc 1 639 0
	st.h	[%a14] 102, %d2
	.loc 1 640 0
	addi	%d2, %d4, -1
	.loc 1 644 0
	ld.hu	%d4, [%a14] 58
	.loc 1 640 0
	st.w	[%a14] 88, %d2
	.loc 1 641 0
	mov	%d2, 4
	st.w	[%a14] 24, %d2
	.loc 1 644 0
	call	tcp_eff_send_mss
.LVL280:
	.loc 1 649 0
	mul	%d3, %d2, 10
	.loc 1 644 0
	st.h	[%a14] 58, %d2
	.loc 1 649 0
	st.h	[%a14] 82, %d3
	.loc 1 651 0
	ld.hu	%d3, [%a14] 80
	jne	%d3, 1, .L331
	sh	%d2, 1
	extr.u	%d2, %d2, 0, 16
.L331:
	st.h	[%a14] 80, %d2
	.loc 1 652 0
	ld.hu	%d2, [%a14] 108
	jnz	%d2, .L332
	movh	%d2, hi:.LC20
	addi	%d2, %d2, lo:.LC20
	movh.a	%a4, hi:.LC0
	lea	%a4, [%a4] lo:.LC0
	st.w	[%SP]0, %d2
	mov	%d2, 652
	st.w	[%SP] 4, %d2
	movh	%d2, hi:.LC2
	addi	%d2, %d2, lo:.LC2
	st.w	[%SP] 8, %d2
	call	Ifx_Lwip_printf
.LVL281:
.L332:
	.loc 1 653 0
	ld.h	%d2, [%a14] 108
	.loc 1 655 0
	ld.a	%a4, [%a14] 116
.LVL282:
	.loc 1 653 0
	add	%d2, -1
	st.h	[%a14] 108, %d2
	.loc 1 656 0
	ld.w	%d2, [%a4]0
	st.w	[%a14] 116, %d2
	.loc 1 657 0
	call	tcp_seg_free
.LVL283:
	.loc 1 661 0
	ld.w	%d2, [%a14] 116
	jz	%d2, .L521
	.loc 1 664 0
	mov	%d2, 0
	st.h	[%a14] 56, %d2
	.loc 1 665 0
	st.b	[%a14] 74, %d2
.L334:
	.loc 1 670 0
	ld.a	%a15, [%a14] 136
	jz.a	%a15, .L337
	ld.a	%a4, [%a14] 16
	mov.aa	%a5, %a14
	mov	%d4, 0
	calli	%a15
.LVL284:
	.loc 1 671 0
	eq	%d2, %d2, -10
.LVL285:
	jz	%d2, .L337
	j	.L313
.LVL286:
.L343:
.LBB19:
	.loc 1 707 0
	mov.aa	%a4, %a14
	.loc 1 704 0
	ld.hu	%d8, [%a14] 80
.LVL287:
	.loc 1 707 0
	call	tcp_receive
.LVL288:
	.loc 1 710 0
	ld.hu	%d2, [%a14] 104
	jz	%d2, .L345
	.loc 1 711 0
	add	%d2, -1
	st.h	[%a14] 104, %d2
.L345:
	.loc 1 714 0
	jeq	%d8, 1, .L522
	ld.hu	%d2, [%a14] 58
.L347:
	.loc 1 716 0
	mov.a	%a4, %d15
	.loc 1 714 0
	st.h	[%a14] 80, %d2
	.loc 1 716 0
	ld.bu	%d2, [%a4] lo:recv_flags
	jz.t	%d2, 5, .L317
	j	.L492
.LVL289:
.L520:
	.loc 1 691 0
	movh	%d2, hi:.LC21
	addi	%d2, %d2, lo:.LC21
	movh.a	%a4, hi:.LC0
	lea	%a4, [%a4] lo:.LC0
	st.w	[%SP]0, %d2
	mov	%d2, 691
	st.w	[%SP] 4, %d2
	movh	%d2, hi:.LC2
	addi	%d2, %d2, lo:.LC2
	st.w	[%SP] 8, %d2
	call	Ifx_Lwip_printf
.LVL290:
	.loc 1 694 0
	ld.a	%a15, [%a14] 20
	jnz.a	%a15, .L341
	j	.L494
.L521:
.LBE19:
	.loc 1 662 0
	mov	%d2, -1
	st.h	[%a14] 56, %d2
	j	.L334
.LVL291:
.L522:
.LBB20:
	.loc 1 714 0
	ld.h	%d2, [%a14] 58
	sh	%d2, 1
	extr.u	%d2, %d2, 0, 16
	j	.L347
.LVL292:
.L349:
.LBE20:
	.loc 1 754 0
	movh.a	%a2, hi:flags
	ld.bu	%d2, [%a2] lo:flags
	jz.t	%d2, 4, .L317
	movh.a	%a3, hi:ackno
	ld.w	%d3, [%a14] 84
	ld.w	%d2, [%a3] lo:ackno
	jne	%d3, %d2, .L317
	.loc 1 755 0
	mov	%d2, 6
	st.w	[%a14] 24, %d2
	j	.L317
.L518:
	.loc 1 745 0
	ld.bu	%d2, [%a14] 34
	.loc 1 746 0
	mov.aa	%a4, %a14
	.loc 1 745 0
	or	%d2, %d2, 2
	.loc 1 747 0
	movh.a	%a15, hi:tcp_active_pcbs
	.loc 1 745 0
	st.b	[%a14] 34, %d2
	.loc 1 746 0
	call	tcp_pcb_purge
.LVL293:
	.loc 1 747 0
	ld.a	%a2, [%a15] lo:tcp_active_pcbs
	jeq.a	%a2, %a14, .L500
	movh.a	%a15, hi:tcp_tmp_pcb
	st.a	[%a15] lo:tcp_tmp_pcb, %a2
.L353:
	jz.a	%a2, .L498
	ld.a	%a3, [%a2] 12
	jeq.a	%a3, %a14, .L499
	mov.aa	%a2, %a3
	j	.L353
.L512:
.LVL294:
	.loc 1 599 0
	jnz	%d2, .L316
	movh	%d2, hi:.LC19
	addi	%d2, %d2, lo:.LC19
	movh.a	%a4, hi:.LC0
	lea	%a4, [%a4] lo:.LC0
	st.w	[%SP]0, %d2
	mov	%d2, 599
	st.w	[%SP] 4, %d2
	movh	%d2, hi:.LC2
	addi	%d2, %d2, lo:.LC2
	st.w	[%SP] 8, %d2
	call	Ifx_Lwip_printf
.LVL295:
	j	.L316
.LVL296:
.L374:
.LBE26:
.LBE36:
	.loc 1 350 0 discriminator 2
	mov.a	%a3, %d9
	mov.a	%a4, 0
	ld.a	%a6, [%a3] lo:recv_data
	mov.aa	%a5, %a14
	mov	%d4, 0
	call	tcp_recv_null
.LVL297:
	j	.L375
.LVL298:
.L515:
	.loc 1 344 0
	mov.a	%a15, %d9
	ld.a	%a4, [%a15] lo:recv_data
	call	pbuf_free
.LVL299:
	j	.L494
.LVL300:
.L499:
	st.a	[%a15] lo:tcp_tmp_pcb, %a2
.LBB37:
.LBB27:
	.loc 1 774 0
	ld.w	%d3, [%a14] 12
	st.w	[%a2] 12, %d3
	j	.L360
.L498:
	st.a	[%a15] lo:tcp_tmp_pcb, %a2
	j	.L360
.LVL301:
.L379:
.LBE27:
.LBE37:
	.loc 1 371 0
	ld.hu	%d15, [%a14] 48
	mov	%d2, 5840
	jeq	%d15, %d2, .L380
	.loc 1 372 0
	add	%d15, 1
	st.h	[%a14] 48, %d15
.L380:
	.loc 1 374 0
	ld.a	%a15, [%a14] 132
	jz.a	%a15, .L378
	.loc 1 374 0 is_stmt 0 discriminator 1
	ld.a	%a4, [%a14] 16
	mov.aa	%a5, %a14
	mov.a	%a6, 0
	mov	%d4, 0
	calli	%a15
.LVL302:
	.loc 1 375 0 is_stmt 1 discriminator 1
	eq	%d2, %d2, -10
.LVL303:
	jz	%d2, .L378
	j	.L313
.LVL304:
.L510:
.LBB38:
.LBB14:
	.loc 1 545 0
	movh.a	%a15, hi:tcplen
	ld.hu	%d15, [%a15] lo:tcplen
	movh.a	%a2, hi:ackno
	ld.w	%d4, [%a2] lo:ackno
	mov.a	%a4, %d11
	mov.a	%a5, %d8
	add	%d5, %d15
	call	tcp_rst
.LVL305:
	j	.L496
.LVL306:
.L509:
.LBE14:
.LBE38:
	.loc 1 188 0 discriminator 1
	movh	%d15, hi:.LC17
	addi	%d15, %d15, lo:.LC17
	movh.a	%a4, hi:.LC0
	lea	%a4, [%a4] lo:.LC0
	st.w	[%SP]0, %d15
	mov	%d15, 188
	st.w	[%SP] 4, %d15
	movh	%d15, hi:.LC2
	addi	%d15, %d15, lo:.LC2
	st.w	[%SP] 8, %d15
	call	Ifx_Lwip_printf
.LVL307:
	j	.L294
.L508:
	.loc 1 182 0 discriminator 1
	movh	%d15, hi:.LC16
	addi	%d15, %d15, lo:.LC16
	movh.a	%a4, hi:.LC0
	lea	%a4, [%a4] lo:.LC0
	st.w	[%SP]0, %d15
	mov	%d15, 182
	st.w	[%SP] 4, %d15
	movh	%d15, hi:.LC2
	addi	%d15, %d15, lo:.LC2
	st.w	[%SP] 8, %d15
	call	Ifx_Lwip_printf
.LVL308:
	ld.a	%a2, [%a14] 12
	j	.L292
.LVL309:
.L514:
.LBB39:
.LBB33:
	.loc 1 472 0
	ld.h	%d15, [%a15] 156
	add	%d15, 1
	st.h	[%a15] 156, %d15
	j	.L496
.LVL310:
.L513:
	.loc 1 456 0
	movh.a	%a3, hi:tcplen
	movh.a	%a15, hi:seqno
	ld.bu	%d15, [%a4] 1
	ld.hu	%d2, [%a3] lo:tcplen
	ld.w	%d5, [%a15] lo:seqno
	ld.bu	%d7, [%a4]0
	movh.a	%a2, hi:ackno
	sh	%d15, %d15, 8
	ld.w	%d4, [%a2] lo:ackno
	mov.a	%a4, %d11
	mov.a	%a5, %d8
	add	%d5, %d2
	or	%d7, %d15
	call	tcp_rst
.LVL311:
	j	.L496
.LVL312:
.L300:
.LBE33:
.LBE39:
.LBB40:
.LBB15:
	.loc 1 549 0
	jz.t	%d15, 0, .L301
	.loc 1 552 0
	movh.a	%a15, hi:tcp_ticks
	ld.w	%d2, [%a15] lo:tcp_ticks
	st.w	[%a14] 40, %d2
	j	.L301
.LBE15:
.LBE40:
.LFE0:
	.size	tcp_input, .-tcp_input
	.global	tcp_input_pcb
.section .bss,"aw",@nobits
	.align 2
	.type	tcp_input_pcb, @object
	.size	tcp_input_pcb, 4
tcp_input_pcb:
	.zero	4
	.local	recv_data
	.align 2
	.type		 recv_data,@object
	.size		 recv_data,4
recv_data:
	.space	4
	.local	recv_flags
	.align 0
	.type		 recv_flags,@object
	.size		 recv_flags,1
recv_flags:
	.space	1
	.local	tcplen
	.align 1
	.type		 tcplen,@object
	.size		 tcplen,2
tcplen:
	.space	2
	.local	flags
	.align 0
	.type		 flags,@object
	.size		 flags,1
flags:
	.space	1
	.local	ackno
	.align 2
	.type		 ackno,@object
	.size		 ackno,4
ackno:
	.space	4
	.local	seqno
	.align 2
	.type		 seqno,@object
	.size		 seqno,4
seqno:
	.space	4
	.local	iphdr
	.align 2
	.type		 iphdr,@object
	.size		 iphdr,4
iphdr:
	.space	4
	.local	tcphdr
	.align 2
	.type		 tcphdr,@object
	.size		 tcphdr,4
tcphdr:
	.space	4
	.local	inseg
	.align 2
	.type		 inseg,@object
	.size		 inseg,20
inseg:
	.space	20
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
	.uaword	.LFB4
	.uaword	.LFE4-.LFB4
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB5
	.uaword	.LFE5-.LFB5
	.byte	0x4
	.uaword	.LCFI0-.LFB5
	.byte	0xe
	.uleb128 0x10
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB7
	.uaword	.LFE7-.LFB7
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB0
	.uaword	.LFE0-.LFB0
	.byte	0x4
	.uaword	.LCFI1-.LFB0
	.byte	0xe
	.uleb128 0x20
	.align 2
.LEFDE6:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "./0_Src/4_McHal/Tricore/Cpu/Std/Platform_Types.h"
	.file 3 "./0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/port/include/arch/cc.h"
	.file 4 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/mem.h"
	.file 5 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/err.h"
	.file 6 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/pbuf.h"
	.file 7 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/ipv4/lwip/ip_addr.h"
	.file 8 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/netif.h"
	.file 9 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/ipv4/lwip/ip.h"
	.file 10 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/tcp.h"
	.file 11 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/tcp_impl.h"
	.file 12 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/memp.h"
	.file 13 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/stats.h"
	.file 14 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/def.h"
	.file 15 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/ipv4/lwip/inet_chksum.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x263e
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9."
	.string	"4 build on 2018-04-18 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -msmall-const=8 -mtc161 -g -g -O2 -fno-common -fno-short-enums -fsingle-precision-constant -fstrict-volatile-bitfields"
	.byte	0x1
	.string	"0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_in.c"
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
	.uaword	0x1d5
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x3
	.string	"uint8"
	.byte	0x2
	.byte	0x59
	.uaword	0x1f1
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x3
	.string	"sint16"
	.byte	0x2
	.byte	0x5a
	.uaword	0x210
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x3
	.string	"uint16"
	.byte	0x2
	.byte	0x5b
	.uaword	0x22b
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"sint32"
	.byte	0x2
	.byte	0x5c
	.uaword	0x1a0
	.uleb128 0x3
	.string	"uint32"
	.byte	0x2
	.byte	0x5d
	.uaword	0x1ac
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
	.uaword	0x2a1
	.uleb128 0x5
	.uaword	0x2a6
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
	.uaword	0x1e4
	.uleb128 0x3
	.string	"u16_t"
	.byte	0x3
	.byte	0x8
	.uaword	0x21d
	.uleb128 0x3
	.string	"u32_t"
	.byte	0x3
	.byte	0x9
	.uaword	0x24f
	.uleb128 0x3
	.string	"s8_t"
	.byte	0x3
	.byte	0xa
	.uaword	0x1c8
	.uleb128 0x3
	.string	"s16_t"
	.byte	0x3
	.byte	0xb
	.uaword	0x202
	.uleb128 0x3
	.string	"s32_t"
	.byte	0x3
	.byte	0xc
	.uaword	0x241
	.uleb128 0x3
	.string	"mem_size_t"
	.byte	0x4
	.byte	0x4c
	.uaword	0x2bc
	.uleb128 0x3
	.string	"err_t"
	.byte	0x5
	.byte	0x2f
	.uaword	0x2d6
	.uleb128 0x7
	.string	"pbuf"
	.byte	0x10
	.byte	0x6
	.byte	0x4f
	.uaword	0x386
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x6
	.byte	0x51
	.uaword	0x386
	.byte	0
	.uleb128 0x9
	.string	"payload"
	.byte	0x6
	.byte	0x54
	.uaword	0x2ae
	.byte	0x4
	.uleb128 0x9
	.string	"tot_len"
	.byte	0x6
	.byte	0x5d
	.uaword	0x2bc
	.byte	0x8
	.uleb128 0x9
	.string	"len"
	.byte	0x6
	.byte	0x60
	.uaword	0x2bc
	.byte	0xa
	.uleb128 0x9
	.string	"type"
	.byte	0x6
	.byte	0x63
	.uaword	0x2b0
	.byte	0xc
	.uleb128 0x8
	.uaword	.LASF1
	.byte	0x6
	.byte	0x66
	.uaword	0x2b0
	.byte	0xd
	.uleb128 0x9
	.string	"ref"
	.byte	0x6
	.byte	0x6d
	.uaword	0x2bc
	.byte	0xe
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x31b
	.uleb128 0x7
	.string	"ip_addr"
	.byte	0x4
	.byte	0x7
	.byte	0x2c
	.uaword	0x3aa
	.uleb128 0x9
	.string	"addr"
	.byte	0x7
	.byte	0x2d
	.uaword	0x2c9
	.byte	0
	.byte	0
	.uleb128 0x7
	.string	"ip_addr_packed"
	.byte	0x4
	.byte	0x7
	.byte	0x36
	.uaword	0x3cf
	.uleb128 0x9
	.string	"addr"
	.byte	0x7
	.byte	0x37
	.uaword	0x2c9
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"ip_addr_t"
	.byte	0x7
	.byte	0x40
	.uaword	0x38c
	.uleb128 0x3
	.string	"ip_addr_p_t"
	.byte	0x7
	.byte	0x41
	.uaword	0x3aa
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x4
	.byte	0x4
	.uaword	0x405
	.uleb128 0x7
	.string	"netif"
	.byte	0x30
	.byte	0x8
	.byte	0x88
	.uaword	0x4dc
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x8
	.byte	0x8a
	.uaword	0x3ff
	.byte	0
	.uleb128 0x9
	.string	"ip_addr"
	.byte	0x8
	.byte	0x8d
	.uaword	0x3cf
	.byte	0x4
	.uleb128 0x9
	.string	"netmask"
	.byte	0x8
	.byte	0x8e
	.uaword	0x3cf
	.byte	0x8
	.uleb128 0x9
	.string	"gw"
	.byte	0x8
	.byte	0x8f
	.uaword	0x3cf
	.byte	0xc
	.uleb128 0x9
	.string	"input"
	.byte	0x8
	.byte	0x93
	.uaword	0x4dc
	.byte	0x10
	.uleb128 0x9
	.string	"output"
	.byte	0x8
	.byte	0x97
	.uaword	0x50d
	.byte	0x14
	.uleb128 0x9
	.string	"linkoutput"
	.byte	0x8
	.byte	0x9b
	.uaword	0x54f
	.byte	0x18
	.uleb128 0x9
	.string	"state"
	.byte	0x8
	.byte	0xac
	.uaword	0x2ae
	.byte	0x1c
	.uleb128 0x9
	.string	"mtu"
	.byte	0x8
	.byte	0xba
	.uaword	0x2bc
	.byte	0x20
	.uleb128 0x9
	.string	"hwaddr_len"
	.byte	0x8
	.byte	0xbc
	.uaword	0x2b0
	.byte	0x22
	.uleb128 0x9
	.string	"hwaddr"
	.byte	0x8
	.byte	0xbe
	.uaword	0x58b
	.byte	0x23
	.uleb128 0x8
	.uaword	.LASF1
	.byte	0x8
	.byte	0xc0
	.uaword	0x2b0
	.byte	0x29
	.uleb128 0x9
	.string	"name"
	.byte	0x8
	.byte	0xc2
	.uaword	0x59b
	.byte	0x2a
	.uleb128 0x9
	.string	"num"
	.byte	0x8
	.byte	0xc4
	.uaword	0x2b0
	.byte	0x2c
	.byte	0
	.uleb128 0x3
	.string	"netif_input_fn"
	.byte	0x8
	.byte	0x6d
	.uaword	0x4f2
	.uleb128 0x4
	.byte	0x4
	.uaword	0x4f8
	.uleb128 0xa
	.byte	0x1
	.uaword	0x30e
	.uaword	0x50d
	.uleb128 0xb
	.uaword	0x386
	.uleb128 0xb
	.uaword	0x3ff
	.byte	0
	.uleb128 0x3
	.string	"netif_output_fn"
	.byte	0x8
	.byte	0x76
	.uaword	0x524
	.uleb128 0x4
	.byte	0x4
	.uaword	0x52a
	.uleb128 0xa
	.byte	0x1
	.uaword	0x30e
	.uaword	0x544
	.uleb128 0xb
	.uaword	0x3ff
	.uleb128 0xb
	.uaword	0x386
	.uleb128 0xb
	.uaword	0x544
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x54a
	.uleb128 0x5
	.uaword	0x3cf
	.uleb128 0x3
	.string	"netif_linkoutput_fn"
	.byte	0x8
	.byte	0x7e
	.uaword	0x56a
	.uleb128 0x4
	.byte	0x4
	.uaword	0x570
	.uleb128 0xa
	.byte	0x1
	.uaword	0x30e
	.uaword	0x585
	.uleb128 0xb
	.uaword	0x3ff
	.uleb128 0xb
	.uaword	0x386
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x3cf
	.uleb128 0xc
	.uaword	0x2b0
	.uaword	0x59b
	.uleb128 0xd
	.uaword	0x3f3
	.byte	0x5
	.byte	0
	.uleb128 0xc
	.uaword	0x2a6
	.uaword	0x5ab
	.uleb128 0xd
	.uaword	0x3f3
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.string	"ip_hdr"
	.byte	0x14
	.byte	0x9
	.byte	0x74
	.uaword	0x644
	.uleb128 0x9
	.string	"_v_hl"
	.byte	0x9
	.byte	0x76
	.uaword	0x2b0
	.byte	0
	.uleb128 0x9
	.string	"_tos"
	.byte	0x9
	.byte	0x78
	.uaword	0x2b0
	.byte	0x1
	.uleb128 0x9
	.string	"_len"
	.byte	0x9
	.byte	0x7a
	.uaword	0x2bc
	.byte	0x2
	.uleb128 0x9
	.string	"_id"
	.byte	0x9
	.byte	0x7c
	.uaword	0x2bc
	.byte	0x4
	.uleb128 0x9
	.string	"_offset"
	.byte	0x9
	.byte	0x7e
	.uaword	0x2bc
	.byte	0x6
	.uleb128 0x9
	.string	"_ttl"
	.byte	0x9
	.byte	0x84
	.uaword	0x2b0
	.byte	0x8
	.uleb128 0x9
	.string	"_proto"
	.byte	0x9
	.byte	0x86
	.uaword	0x2b0
	.byte	0x9
	.uleb128 0x9
	.string	"_chksum"
	.byte	0x9
	.byte	0x88
	.uaword	0x2bc
	.byte	0xa
	.uleb128 0x9
	.string	"src"
	.byte	0x9
	.byte	0x8a
	.uaword	0x3e0
	.byte	0xc
	.uleb128 0x9
	.string	"dest"
	.byte	0x9
	.byte	0x8b
	.uaword	0x3e0
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.string	"tcp_accept_fn"
	.byte	0xa
	.byte	0x3c
	.uaword	0x659
	.uleb128 0x4
	.byte	0x4
	.uaword	0x65f
	.uleb128 0xa
	.byte	0x1
	.uaword	0x30e
	.uaword	0x679
	.uleb128 0xb
	.uaword	0x2ae
	.uleb128 0xb
	.uaword	0x679
	.uleb128 0xb
	.uaword	0x30e
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x67f
	.uleb128 0x7
	.string	"tcp_pcb"
	.byte	0x9c
	.byte	0xa
	.byte	0xa8
	.uaword	0xa03
	.uleb128 0x8
	.uaword	.LASF2
	.byte	0xa
	.byte	0xaa
	.uaword	0x3cf
	.byte	0
	.uleb128 0x8
	.uaword	.LASF3
	.byte	0xa
	.byte	0xaa
	.uaword	0x3cf
	.byte	0x4
	.uleb128 0x8
	.uaword	.LASF4
	.byte	0xa
	.byte	0xaa
	.uaword	0x2b0
	.byte	0x8
	.uleb128 0x9
	.string	"tos"
	.byte	0xa
	.byte	0xaa
	.uaword	0x2b0
	.byte	0x9
	.uleb128 0x9
	.string	"ttl"
	.byte	0xa
	.byte	0xaa
	.uaword	0x2b0
	.byte	0xa
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0xa
	.byte	0xac
	.uaword	0x679
	.byte	0xc
	.uleb128 0x8
	.uaword	.LASF5
	.byte	0xa
	.byte	0xac
	.uaword	0x2ae
	.byte	0x10
	.uleb128 0x9
	.string	"accept"
	.byte	0xa
	.byte	0xac
	.uaword	0x644
	.byte	0x14
	.uleb128 0x9
	.string	"state"
	.byte	0xa
	.byte	0xac
	.uaword	0xadd
	.byte	0x18
	.uleb128 0x9
	.string	"prio"
	.byte	0xa
	.byte	0xac
	.uaword	0x2b0
	.byte	0x1c
	.uleb128 0x8
	.uaword	.LASF6
	.byte	0xa
	.byte	0xac
	.uaword	0x2bc
	.byte	0x1e
	.uleb128 0x9
	.string	"remote_port"
	.byte	0xa
	.byte	0xaf
	.uaword	0x2bc
	.byte	0x20
	.uleb128 0x8
	.uaword	.LASF1
	.byte	0xa
	.byte	0xb1
	.uaword	0x2b0
	.byte	0x22
	.uleb128 0x9
	.string	"polltmr"
	.byte	0xa
	.byte	0xbf
	.uaword	0x2b0
	.byte	0x23
	.uleb128 0x9
	.string	"pollinterval"
	.byte	0xa
	.byte	0xbf
	.uaword	0x2b0
	.byte	0x24
	.uleb128 0x9
	.string	"last_timer"
	.byte	0xa
	.byte	0xc0
	.uaword	0x2b0
	.byte	0x25
	.uleb128 0x9
	.string	"tmr"
	.byte	0xa
	.byte	0xc1
	.uaword	0x2c9
	.byte	0x28
	.uleb128 0x9
	.string	"rcv_nxt"
	.byte	0xa
	.byte	0xc4
	.uaword	0x2c9
	.byte	0x2c
	.uleb128 0x9
	.string	"rcv_wnd"
	.byte	0xa
	.byte	0xc5
	.uaword	0x2bc
	.byte	0x30
	.uleb128 0x9
	.string	"rcv_ann_wnd"
	.byte	0xa
	.byte	0xc6
	.uaword	0x2bc
	.byte	0x32
	.uleb128 0x9
	.string	"rcv_ann_right_edge"
	.byte	0xa
	.byte	0xc7
	.uaword	0x2c9
	.byte	0x34
	.uleb128 0x9
	.string	"rtime"
	.byte	0xa
	.byte	0xca
	.uaword	0x2e2
	.byte	0x38
	.uleb128 0x9
	.string	"mss"
	.byte	0xa
	.byte	0xcc
	.uaword	0x2bc
	.byte	0x3a
	.uleb128 0x9
	.string	"rttest"
	.byte	0xa
	.byte	0xcf
	.uaword	0x2c9
	.byte	0x3c
	.uleb128 0x9
	.string	"rtseq"
	.byte	0xa
	.byte	0xd0
	.uaword	0x2c9
	.byte	0x40
	.uleb128 0x9
	.string	"sa"
	.byte	0xa
	.byte	0xd1
	.uaword	0x2e2
	.byte	0x44
	.uleb128 0x9
	.string	"sv"
	.byte	0xa
	.byte	0xd1
	.uaword	0x2e2
	.byte	0x46
	.uleb128 0x9
	.string	"rto"
	.byte	0xa
	.byte	0xd3
	.uaword	0x2e2
	.byte	0x48
	.uleb128 0x9
	.string	"nrtx"
	.byte	0xa
	.byte	0xd4
	.uaword	0x2b0
	.byte	0x4a
	.uleb128 0x9
	.string	"dupacks"
	.byte	0xa
	.byte	0xd7
	.uaword	0x2b0
	.byte	0x4b
	.uleb128 0x9
	.string	"lastack"
	.byte	0xa
	.byte	0xd8
	.uaword	0x2c9
	.byte	0x4c
	.uleb128 0x9
	.string	"cwnd"
	.byte	0xa
	.byte	0xdb
	.uaword	0x2bc
	.byte	0x50
	.uleb128 0x9
	.string	"ssthresh"
	.byte	0xa
	.byte	0xdc
	.uaword	0x2bc
	.byte	0x52
	.uleb128 0x9
	.string	"snd_nxt"
	.byte	0xa
	.byte	0xdf
	.uaword	0x2c9
	.byte	0x54
	.uleb128 0x9
	.string	"snd_wl1"
	.byte	0xa
	.byte	0xe0
	.uaword	0x2c9
	.byte	0x58
	.uleb128 0x9
	.string	"snd_wl2"
	.byte	0xa
	.byte	0xe0
	.uaword	0x2c9
	.byte	0x5c
	.uleb128 0x9
	.string	"snd_lbb"
	.byte	0xa
	.byte	0xe2
	.uaword	0x2c9
	.byte	0x60
	.uleb128 0x9
	.string	"snd_wnd"
	.byte	0xa
	.byte	0xe3
	.uaword	0x2bc
	.byte	0x64
	.uleb128 0x9
	.string	"snd_wnd_max"
	.byte	0xa
	.byte	0xe4
	.uaword	0x2bc
	.byte	0x66
	.uleb128 0x9
	.string	"acked"
	.byte	0xa
	.byte	0xe6
	.uaword	0x2bc
	.byte	0x68
	.uleb128 0x9
	.string	"snd_buf"
	.byte	0xa
	.byte	0xe8
	.uaword	0x2bc
	.byte	0x6a
	.uleb128 0x9
	.string	"snd_queuelen"
	.byte	0xa
	.byte	0xea
	.uaword	0x2bc
	.byte	0x6c
	.uleb128 0x9
	.string	"unsent_oversize"
	.byte	0xa
	.byte	0xee
	.uaword	0x2bc
	.byte	0x6e
	.uleb128 0x9
	.string	"unsent"
	.byte	0xa
	.byte	0xf2
	.uaword	0xc01
	.byte	0x70
	.uleb128 0x9
	.string	"unacked"
	.byte	0xa
	.byte	0xf3
	.uaword	0xc01
	.byte	0x74
	.uleb128 0x9
	.string	"ooseq"
	.byte	0xa
	.byte	0xf5
	.uaword	0xc01
	.byte	0x78
	.uleb128 0x9
	.string	"refused_data"
	.byte	0xa
	.byte	0xf8
	.uaword	0x386
	.byte	0x7c
	.uleb128 0x9
	.string	"sent"
	.byte	0xa
	.byte	0xfc
	.uaword	0xa3b
	.byte	0x80
	.uleb128 0x9
	.string	"recv"
	.byte	0xa
	.byte	0xfe
	.uaword	0xa03
	.byte	0x84
	.uleb128 0xe
	.string	"connected"
	.byte	0xa
	.uahalf	0x100
	.uaword	0xac5
	.byte	0x88
	.uleb128 0xe
	.string	"poll"
	.byte	0xa
	.uahalf	0x102
	.uaword	0xa6e
	.byte	0x8c
	.uleb128 0xe
	.string	"errf"
	.byte	0xa
	.uahalf	0x104
	.uaword	0xa9c
	.byte	0x90
	.uleb128 0xe
	.string	"keep_idle"
	.byte	0xa
	.uahalf	0x10d
	.uaword	0x2c9
	.byte	0x94
	.uleb128 0xe
	.string	"persist_cnt"
	.byte	0xa
	.uahalf	0x114
	.uaword	0x2b0
	.byte	0x98
	.uleb128 0xe
	.string	"persist_backoff"
	.byte	0xa
	.uahalf	0x116
	.uaword	0x2b0
	.byte	0x99
	.uleb128 0xe
	.string	"keep_cnt_sent"
	.byte	0xa
	.uahalf	0x119
	.uaword	0x2b0
	.byte	0x9a
	.byte	0
	.uleb128 0x3
	.string	"tcp_recv_fn"
	.byte	0xa
	.byte	0x48
	.uaword	0xa16
	.uleb128 0x4
	.byte	0x4
	.uaword	0xa1c
	.uleb128 0xa
	.byte	0x1
	.uaword	0x30e
	.uaword	0xa3b
	.uleb128 0xb
	.uaword	0x2ae
	.uleb128 0xb
	.uaword	0x679
	.uleb128 0xb
	.uaword	0x386
	.uleb128 0xb
	.uaword	0x30e
	.byte	0
	.uleb128 0x3
	.string	"tcp_sent_fn"
	.byte	0xa
	.byte	0x56
	.uaword	0xa4e
	.uleb128 0x4
	.byte	0x4
	.uaword	0xa54
	.uleb128 0xa
	.byte	0x1
	.uaword	0x30e
	.uaword	0xa6e
	.uleb128 0xb
	.uaword	0x2ae
	.uleb128 0xb
	.uaword	0x679
	.uleb128 0xb
	.uaword	0x2bc
	.byte	0
	.uleb128 0x3
	.string	"tcp_poll_fn"
	.byte	0xa
	.byte	0x62
	.uaword	0xa81
	.uleb128 0x4
	.byte	0x4
	.uaword	0xa87
	.uleb128 0xa
	.byte	0x1
	.uaword	0x30e
	.uaword	0xa9c
	.uleb128 0xb
	.uaword	0x2ae
	.uleb128 0xb
	.uaword	0x679
	.byte	0
	.uleb128 0x3
	.string	"tcp_err_fn"
	.byte	0xa
	.byte	0x6e
	.uaword	0xaae
	.uleb128 0x4
	.byte	0x4
	.uaword	0xab4
	.uleb128 0xf
	.byte	0x1
	.uaword	0xac5
	.uleb128 0xb
	.uaword	0x2ae
	.uleb128 0xb
	.uaword	0x30e
	.byte	0
	.uleb128 0x3
	.string	"tcp_connected_fn"
	.byte	0xa
	.byte	0x7c
	.uaword	0x659
	.uleb128 0x10
	.string	"tcp_state"
	.byte	0x4
	.byte	0xa
	.byte	0x7e
	.uaword	0xb6e
	.uleb128 0x11
	.string	"CLOSED"
	.sleb128 0
	.uleb128 0x11
	.string	"LISTEN"
	.sleb128 1
	.uleb128 0x11
	.string	"SYN_SENT"
	.sleb128 2
	.uleb128 0x11
	.string	"SYN_RCVD"
	.sleb128 3
	.uleb128 0x11
	.string	"ESTABLISHED"
	.sleb128 4
	.uleb128 0x11
	.string	"FIN_WAIT_1"
	.sleb128 5
	.uleb128 0x11
	.string	"FIN_WAIT_2"
	.sleb128 6
	.uleb128 0x11
	.string	"CLOSE_WAIT"
	.sleb128 7
	.uleb128 0x11
	.string	"CLOSING"
	.sleb128 8
	.uleb128 0x11
	.string	"LAST_ACK"
	.sleb128 9
	.uleb128 0x11
	.string	"TIME_WAIT"
	.sleb128 10
	.byte	0
	.uleb128 0x12
	.string	"tcp_seg"
	.byte	0x14
	.byte	0xb
	.uahalf	0x115
	.uaword	0xc01
	.uleb128 0x13
	.uaword	.LASF0
	.byte	0xb
	.uahalf	0x116
	.uaword	0xc01
	.byte	0
	.uleb128 0xe
	.string	"p"
	.byte	0xb
	.uahalf	0x117
	.uaword	0x386
	.byte	0x4
	.uleb128 0xe
	.string	"len"
	.byte	0xb
	.uahalf	0x118
	.uaword	0x2bc
	.byte	0x8
	.uleb128 0xe
	.string	"oversize_left"
	.byte	0xb
	.uahalf	0x11a
	.uaword	0x2bc
	.byte	0xa
	.uleb128 0xe
	.string	"chksum"
	.byte	0xb
	.uahalf	0x11f
	.uaword	0x2bc
	.byte	0xc
	.uleb128 0xe
	.string	"chksum_swapped"
	.byte	0xb
	.uahalf	0x120
	.uaword	0x2b0
	.byte	0xe
	.uleb128 0x13
	.uaword	.LASF1
	.byte	0xb
	.uahalf	0x122
	.uaword	0x2b0
	.byte	0xf
	.uleb128 0xe
	.string	"tcphdr"
	.byte	0xb
	.uahalf	0x127
	.uaword	0xd6e
	.byte	0x10
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0xb6e
	.uleb128 0x12
	.string	"tcp_pcb_listen"
	.byte	0x24
	.byte	0xa
	.uahalf	0x11c
	.uaword	0xcdf
	.uleb128 0x13
	.uaword	.LASF2
	.byte	0xa
	.uahalf	0x11e
	.uaword	0x3cf
	.byte	0
	.uleb128 0x13
	.uaword	.LASF3
	.byte	0xa
	.uahalf	0x11e
	.uaword	0x3cf
	.byte	0x4
	.uleb128 0x13
	.uaword	.LASF4
	.byte	0xa
	.uahalf	0x11e
	.uaword	0x2b0
	.byte	0x8
	.uleb128 0xe
	.string	"tos"
	.byte	0xa
	.uahalf	0x11e
	.uaword	0x2b0
	.byte	0x9
	.uleb128 0xe
	.string	"ttl"
	.byte	0xa
	.uahalf	0x11e
	.uaword	0x2b0
	.byte	0xa
	.uleb128 0x13
	.uaword	.LASF0
	.byte	0xa
	.uahalf	0x120
	.uaword	0xcdf
	.byte	0xc
	.uleb128 0x13
	.uaword	.LASF5
	.byte	0xa
	.uahalf	0x120
	.uaword	0x2ae
	.byte	0x10
	.uleb128 0xe
	.string	"accept"
	.byte	0xa
	.uahalf	0x120
	.uaword	0x644
	.byte	0x14
	.uleb128 0xe
	.string	"state"
	.byte	0xa
	.uahalf	0x120
	.uaword	0xadd
	.byte	0x18
	.uleb128 0xe
	.string	"prio"
	.byte	0xa
	.uahalf	0x120
	.uaword	0x2b0
	.byte	0x1c
	.uleb128 0x13
	.uaword	.LASF6
	.byte	0xa
	.uahalf	0x120
	.uaword	0x2bc
	.byte	0x1e
	.uleb128 0xe
	.string	"backlog"
	.byte	0xa
	.uahalf	0x123
	.uaword	0x2b0
	.byte	0x20
	.uleb128 0xe
	.string	"accepts_pending"
	.byte	0xa
	.uahalf	0x124
	.uaword	0x2b0
	.byte	0x21
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0xc07
	.uleb128 0x7
	.string	"tcp_hdr"
	.byte	0x14
	.byte	0xb
	.byte	0x9f
	.uaword	0xd6e
	.uleb128 0x9
	.string	"src"
	.byte	0xb
	.byte	0xa0
	.uaword	0x2bc
	.byte	0
	.uleb128 0x9
	.string	"dest"
	.byte	0xb
	.byte	0xa1
	.uaword	0x2bc
	.byte	0x2
	.uleb128 0x9
	.string	"seqno"
	.byte	0xb
	.byte	0xa2
	.uaword	0x2c9
	.byte	0x4
	.uleb128 0x9
	.string	"ackno"
	.byte	0xb
	.byte	0xa3
	.uaword	0x2c9
	.byte	0x8
	.uleb128 0x9
	.string	"_hdrlen_rsvd_flags"
	.byte	0xb
	.byte	0xa4
	.uaword	0x2bc
	.byte	0xc
	.uleb128 0x9
	.string	"wnd"
	.byte	0xb
	.byte	0xa5
	.uaword	0x2bc
	.byte	0xe
	.uleb128 0x9
	.string	"chksum"
	.byte	0xb
	.byte	0xa6
	.uaword	0x2bc
	.byte	0x10
	.uleb128 0x9
	.string	"urgp"
	.byte	0xb
	.byte	0xa7
	.uaword	0x2bc
	.byte	0x12
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0xce5
	.uleb128 0x14
	.string	"tcp_listen_pcbs_t"
	.byte	0x4
	.byte	0xb
	.uahalf	0x137
	.uaword	0xdb1
	.uleb128 0x15
	.string	"listen_pcbs"
	.byte	0xb
	.uahalf	0x138
	.uaword	0xcdf
	.uleb128 0x15
	.string	"pcbs"
	.byte	0xb
	.uahalf	0x139
	.uaword	0x679
	.byte	0
	.uleb128 0x16
	.byte	0x4
	.byte	0xc
	.byte	0x2b
	.uaword	0xe69
	.uleb128 0x11
	.string	"MEMP_RAW_PCB"
	.sleb128 0
	.uleb128 0x11
	.string	"MEMP_UDP_PCB"
	.sleb128 1
	.uleb128 0x11
	.string	"MEMP_TCP_PCB"
	.sleb128 2
	.uleb128 0x11
	.string	"MEMP_TCP_PCB_LISTEN"
	.sleb128 3
	.uleb128 0x11
	.string	"MEMP_TCP_SEG"
	.sleb128 4
	.uleb128 0x11
	.string	"MEMP_REASSDATA"
	.sleb128 5
	.uleb128 0x11
	.string	"MEMP_FRAG_PBUF"
	.sleb128 6
	.uleb128 0x11
	.string	"MEMP_SYS_TIMEOUT"
	.sleb128 7
	.uleb128 0x11
	.string	"MEMP_PBUF"
	.sleb128 8
	.uleb128 0x11
	.string	"MEMP_PBUF_POOL"
	.sleb128 9
	.uleb128 0x11
	.string	"MEMP_MAX"
	.sleb128 10
	.byte	0
	.uleb128 0x3
	.string	"memp_t"
	.byte	0xc
	.byte	0x2f
	.uaword	0xdb1
	.uleb128 0x7
	.string	"stats_proto"
	.byte	0x18
	.byte	0xd
	.byte	0x3a
	.uaword	0xf35
	.uleb128 0x9
	.string	"xmit"
	.byte	0xd
	.byte	0x3b
	.uaword	0x2bc
	.byte	0
	.uleb128 0x9
	.string	"recv"
	.byte	0xd
	.byte	0x3c
	.uaword	0x2bc
	.byte	0x2
	.uleb128 0x9
	.string	"fw"
	.byte	0xd
	.byte	0x3d
	.uaword	0x2bc
	.byte	0x4
	.uleb128 0x9
	.string	"drop"
	.byte	0xd
	.byte	0x3e
	.uaword	0x2bc
	.byte	0x6
	.uleb128 0x9
	.string	"chkerr"
	.byte	0xd
	.byte	0x3f
	.uaword	0x2bc
	.byte	0x8
	.uleb128 0x9
	.string	"lenerr"
	.byte	0xd
	.byte	0x40
	.uaword	0x2bc
	.byte	0xa
	.uleb128 0x9
	.string	"memerr"
	.byte	0xd
	.byte	0x41
	.uaword	0x2bc
	.byte	0xc
	.uleb128 0x9
	.string	"rterr"
	.byte	0xd
	.byte	0x42
	.uaword	0x2bc
	.byte	0xe
	.uleb128 0x9
	.string	"proterr"
	.byte	0xd
	.byte	0x43
	.uaword	0x2bc
	.byte	0x10
	.uleb128 0x9
	.string	"opterr"
	.byte	0xd
	.byte	0x44
	.uaword	0x2bc
	.byte	0x12
	.uleb128 0x9
	.string	"err"
	.byte	0xd
	.byte	0x45
	.uaword	0x2bc
	.byte	0x14
	.uleb128 0x9
	.string	"cachehit"
	.byte	0xd
	.byte	0x46
	.uaword	0x2bc
	.byte	0x16
	.byte	0
	.uleb128 0x7
	.string	"stats_mem"
	.byte	0x10
	.byte	0xd
	.byte	0x5a
	.uaword	0xf98
	.uleb128 0x9
	.string	"name"
	.byte	0xd
	.byte	0x5c
	.uaword	0x29b
	.byte	0
	.uleb128 0x9
	.string	"avail"
	.byte	0xd
	.byte	0x5e
	.uaword	0x2fc
	.byte	0x4
	.uleb128 0x9
	.string	"used"
	.byte	0xd
	.byte	0x5f
	.uaword	0x2fc
	.byte	0x6
	.uleb128 0x9
	.string	"max"
	.byte	0xd
	.byte	0x60
	.uaword	0x2fc
	.byte	0x8
	.uleb128 0x9
	.string	"err"
	.byte	0xd
	.byte	0x61
	.uaword	0x2bc
	.byte	0xa
	.uleb128 0x9
	.string	"illegal"
	.byte	0xd
	.byte	0x62
	.uaword	0x2bc
	.byte	0xc
	.byte	0
	.uleb128 0x17
	.string	"stats_"
	.uahalf	0x158
	.byte	0xd
	.byte	0x71
	.uaword	0x101e
	.uleb128 0x9
	.string	"link"
	.byte	0xd
	.byte	0x73
	.uaword	0xe77
	.byte	0
	.uleb128 0x9
	.string	"etharp"
	.byte	0xd
	.byte	0x76
	.uaword	0xe77
	.byte	0x18
	.uleb128 0x9
	.string	"ip_frag"
	.byte	0xd
	.byte	0x79
	.uaword	0xe77
	.byte	0x30
	.uleb128 0x9
	.string	"ip"
	.byte	0xd
	.byte	0x7c
	.uaword	0xe77
	.byte	0x48
	.uleb128 0x9
	.string	"icmp"
	.byte	0xd
	.byte	0x7f
	.uaword	0xe77
	.byte	0x60
	.uleb128 0x9
	.string	"udp"
	.byte	0xd
	.byte	0x85
	.uaword	0xe77
	.byte	0x78
	.uleb128 0x9
	.string	"tcp"
	.byte	0xd
	.byte	0x88
	.uaword	0xe77
	.byte	0x90
	.uleb128 0x9
	.string	"mem"
	.byte	0xd
	.byte	0x8b
	.uaword	0xf35
	.byte	0xa8
	.uleb128 0x9
	.string	"memp"
	.byte	0xd
	.byte	0x8e
	.uaword	0x101e
	.byte	0xb8
	.byte	0
	.uleb128 0xc
	.uaword	0xf35
	.uaword	0x102e
	.uleb128 0xd
	.uaword	0x3f3
	.byte	0x9
	.byte	0
	.uleb128 0x18
	.string	"tcp_parseopt"
	.byte	0x1
	.uahalf	0x606
	.byte	0x1
	.byte	0x1
	.uaword	0x108f
	.uleb128 0x19
	.string	"pcb"
	.byte	0x1
	.uahalf	0x606
	.uaword	0x679
	.uleb128 0x1a
	.string	"c"
	.byte	0x1
	.uahalf	0x608
	.uaword	0x2bc
	.uleb128 0x1a
	.string	"max_c"
	.byte	0x1
	.uahalf	0x608
	.uaword	0x2bc
	.uleb128 0x1a
	.string	"mss"
	.byte	0x1
	.uahalf	0x609
	.uaword	0x2bc
	.uleb128 0x1a
	.string	"opts"
	.byte	0x1
	.uahalf	0x60a
	.uaword	0x108f
	.uleb128 0x1a
	.string	"opt"
	.byte	0x1
	.uahalf	0x60a
	.uaword	0x2b0
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x2b0
	.uleb128 0x1b
	.string	"tcp_oos_insert_segment"
	.byte	0x1
	.uahalf	0x320
	.byte	0x1
	.uaword	.LFB4
	.uaword	.LFE4
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x115c
	.uleb128 0x1c
	.string	"cseg"
	.byte	0x1
	.uahalf	0x320
	.uaword	0xc01
	.uaword	.LLST0
	.uleb128 0x1d
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x320
	.uaword	0xc01
	.uaword	.LLST1
	.uleb128 0x1e
	.string	"old_seg"
	.byte	0x1
	.uahalf	0x322
	.uaword	0xc01
	.uaword	.LLST2
	.uleb128 0x1f
	.uaword	.LVL1
	.uaword	0x21df
	.uleb128 0x20
	.uaword	.LVL4
	.uaword	0x21fe
	.uaword	0x1112
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.uaword	.LVL6
	.uaword	0x21df
	.uleb128 0x20
	.uaword	.LVL7
	.uaword	0x221c
	.uaword	0x112e
	.uleb128 0x21
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x20
	.uaword	.LVL10
	.uaword	0x21fe
	.uaword	0x1142
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.uaword	.LVL13
	.uaword	0x223b
	.uleb128 0x22
	.uaword	.LVL15
	.uaword	0x225d
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.string	"tcp_receive"
	.byte	0x1
	.uahalf	0x34f
	.byte	0x1
	.uaword	.LFB5
	.uaword	.LFE5
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x17fc
	.uleb128 0x1c
	.string	"pcb"
	.byte	0x1
	.uahalf	0x34f
	.uaword	0x679
	.uaword	.LLST3
	.uleb128 0x23
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x351
	.uaword	0xc01
	.uaword	.LLST4
	.uleb128 0x1e
	.string	"prev"
	.byte	0x1
	.uahalf	0x353
	.uaword	0xc01
	.uaword	.LLST5
	.uleb128 0x1e
	.string	"cseg"
	.byte	0x1
	.uahalf	0x353
	.uaword	0xc01
	.uaword	.LLST6
	.uleb128 0x1e
	.string	"p"
	.byte	0x1
	.uahalf	0x355
	.uaword	0x386
	.uaword	.LLST7
	.uleb128 0x1e
	.string	"off"
	.byte	0x1
	.uahalf	0x356
	.uaword	0x2ef
	.uaword	.LLST8
	.uleb128 0x1e
	.string	"m"
	.byte	0x1
	.uahalf	0x357
	.uaword	0x2e2
	.uaword	.LLST9
	.uleb128 0x1e
	.string	"right_wnd_edge"
	.byte	0x1
	.uahalf	0x358
	.uaword	0x2c9
	.uaword	.LLST10
	.uleb128 0x1e
	.string	"new_tot_len"
	.byte	0x1
	.uahalf	0x359
	.uaword	0x2bc
	.uaword	.LLST11
	.uleb128 0x1e
	.string	"found_dupack"
	.byte	0x1
	.uahalf	0x35a
	.uaword	0x1c1
	.uaword	.LLST12
	.uleb128 0x24
	.uaword	.Ldebug_ranges0+0
	.uaword	0x1255
	.uleb128 0x1e
	.string	"new_cwnd"
	.byte	0x1
	.uahalf	0x3e0
	.uaword	0x2bc
	.uaword	.LLST13
	.byte	0
	.uleb128 0x25
	.uaword	.LBB3
	.uaword	.LBE3
	.uaword	0x1282
	.uleb128 0x1e
	.string	"old_ooseq"
	.byte	0x1
	.uahalf	0x4e6
	.uaword	0xc01
	.uaword	.LLST14
	.uleb128 0x1f
	.uaword	.LVL91
	.uaword	0x21fe
	.byte	0
	.uleb128 0x1f
	.uaword	.LVL20
	.uaword	0x227c
	.uleb128 0x1f
	.uaword	.LVL21
	.uaword	0x21df
	.uleb128 0x1f
	.uaword	.LVL23
	.uaword	0x229b
	.uleb128 0x1f
	.uaword	.LVL24
	.uaword	0x229b
	.uleb128 0x20
	.uaword	.LVL25
	.uaword	0x21fe
	.uaword	0x12ba
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.uaword	.LVL30
	.byte	0x1
	.uaword	0x22b9
	.uaword	0x12cf
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.uaword	.LVL31
	.uaword	0x21df
	.uleb128 0x20
	.uaword	.LVL32
	.uaword	0x22e0
	.uaword	0x1301
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x21
	.byte	0x2
	.byte	0x8a
	.sleb128 8
	.byte	0x2
	.byte	0x7b
	.sleb128 0
	.uleb128 0x21
	.byte	0x2
	.byte	0x8a
	.sleb128 4
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x21
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.uaword	.LVL33
	.uaword	0x22e0
	.uaword	0x132d
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x21
	.byte	0x2
	.byte	0x8a
	.sleb128 8
	.byte	0x2
	.byte	0x7b
	.sleb128 0
	.uleb128 0x21
	.byte	0x2
	.byte	0x8a
	.sleb128 4
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x21
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x5
	.byte	0x3
	.uaword	.LC4
	.byte	0
	.uleb128 0x20
	.uaword	.LVL36
	.uaword	0x22e0
	.uaword	0x135d
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	.LC0
	.uleb128 0x21
	.byte	0x2
	.byte	0x8a
	.sleb128 8
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x21
	.byte	0x2
	.byte	0x8a
	.sleb128 4
	.byte	0x3
	.byte	0xa
	.uahalf	0x360
	.uleb128 0x21
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x5
	.byte	0x3
	.uaword	.LC1
	.byte	0
	.uleb128 0x20
	.uaword	.LVL39
	.uaword	0x22b9
	.uaword	0x1371
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.uaword	.LVL43
	.uaword	0x2305
	.uaword	0x1388
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	inseg
	.byte	0
	.uleb128 0x26
	.uaword	.LVL44
	.byte	0x1
	.uaword	0x1095
	.uaword	0x139d
	.uleb128 0x21
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.uaword	.LVL56
	.uaword	0x227c
	.uleb128 0x1f
	.uaword	.LVL57
	.uaword	0x21df
	.uleb128 0x1f
	.uaword	.LVL59
	.uaword	0x229b
	.uleb128 0x1f
	.uaword	.LVL60
	.uaword	0x229b
	.uleb128 0x20
	.uaword	.LVL61
	.uaword	0x21fe
	.uaword	0x13d5
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.uaword	.LVL64
	.uaword	0x21df
	.uleb128 0x20
	.uaword	.LVL65
	.uaword	0x22e0
	.uaword	0x1407
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x7b
	.sleb128 0
	.uleb128 0x21
	.byte	0x2
	.byte	0x8a
	.sleb128 8
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x21
	.byte	0x2
	.byte	0x8a
	.sleb128 4
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x21
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.uaword	.LVL74
	.uaword	0x2327
	.uaword	0x1422
	.uleb128 0x21
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0x78
	.sleb128 0
	.byte	0x1f
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.uaword	.LVL80
	.uaword	0x21df
	.uleb128 0x20
	.uaword	.LVL81
	.uaword	0x2305
	.uaword	0x1442
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	inseg
	.byte	0
	.uleb128 0x1f
	.uaword	.LVL82
	.uaword	0x223b
	.uleb128 0x1f
	.uaword	.LVL83
	.uaword	0x21df
	.uleb128 0x1f
	.uaword	.LVL84
	.uaword	0x223b
	.uleb128 0x1f
	.uaword	.LVL85
	.uaword	0x21df
	.uleb128 0x26
	.uaword	.LVL86
	.byte	0x1
	.uaword	0x22e0
	.uaword	0x1497
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	.LC0
	.uleb128 0x21
	.byte	0x2
	.byte	0x8a
	.sleb128 8
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x21
	.byte	0x2
	.byte	0x8a
	.sleb128 4
	.byte	0x3
	.byte	0xa
	.uahalf	0x5ca
	.uleb128 0x21
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x5
	.byte	0x3
	.uaword	.LC9
	.byte	0
	.uleb128 0x1f
	.uaword	.LVL88
	.uaword	0x21df
	.uleb128 0x1f
	.uaword	.LVL89
	.uaword	0x21df
	.uleb128 0x20
	.uaword	.LVL92
	.uaword	0x234c
	.uaword	0x14bd
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.uaword	.LVL93
	.uaword	0x21df
	.uleb128 0x1f
	.uaword	.LVL95
	.uaword	0x21df
	.uleb128 0x20
	.uaword	.LVL96
	.uaword	0x234c
	.uaword	0x14e3
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.uaword	.LVL97
	.uaword	0x2377
	.uleb128 0x1f
	.uaword	.LVL98
	.uaword	0x21df
	.uleb128 0x20
	.uaword	.LVL99
	.uaword	0x21fe
	.uaword	0x1509
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.uaword	.LVL102
	.uaword	0x21df
	.uleb128 0x1f
	.uaword	.LVL103
	.uaword	0x21df
	.uleb128 0x20
	.uaword	.LVL104
	.uaword	0x22e0
	.uaword	0x1544
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.uleb128 0x21
	.byte	0x2
	.byte	0x8a
	.sleb128 8
	.byte	0x2
	.byte	0x7b
	.sleb128 0
	.uleb128 0x21
	.byte	0x2
	.byte	0x8a
	.sleb128 4
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x21
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.uaword	.LVL107
	.uaword	0x2305
	.uaword	0x155b
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	inseg
	.byte	0
	.uleb128 0x20
	.uaword	.LVL111
	.uaword	0x2327
	.uaword	0x1570
	.uleb128 0x21
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0x78
	.sleb128 0
	.byte	0x1f
	.byte	0
	.uleb128 0x20
	.uaword	.LVL113
	.uaword	0x22e0
	.uaword	0x158e
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	.LC0
	.uleb128 0x21
	.byte	0x2
	.byte	0x8a
	.sleb128 8
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.uaword	.LVL115
	.uaword	0x22e0
	.uaword	0x15be
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	.LC0
	.uleb128 0x21
	.byte	0x2
	.byte	0x8a
	.sleb128 8
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x21
	.byte	0x2
	.byte	0x8a
	.sleb128 4
	.byte	0x3
	.byte	0xa
	.uahalf	0x497
	.uleb128 0x21
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x5
	.byte	0x3
	.uaword	.LC6
	.byte	0
	.uleb128 0x20
	.uaword	.LVL117
	.uaword	0x2305
	.uaword	0x15d5
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	inseg
	.byte	0
	.uleb128 0x1f
	.uaword	.LVL120
	.uaword	0x223b
	.uleb128 0x26
	.uaword	.LVL121
	.byte	0x1
	.uaword	0x1095
	.uaword	0x15f9
	.uleb128 0x21
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.uaword	.LVL123
	.uaword	0x22e0
	.uaword	0x1629
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	.LC0
	.uleb128 0x21
	.byte	0x2
	.byte	0x8a
	.sleb128 8
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x21
	.byte	0x2
	.byte	0x8a
	.sleb128 4
	.byte	0x3
	.byte	0xa
	.uahalf	0x499
	.uleb128 0x21
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x5
	.byte	0x3
	.uaword	.LC7
	.byte	0
	.uleb128 0x20
	.uaword	.LVL129
	.uaword	0x21fe
	.uaword	0x163d
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.uaword	.LVL131
	.uaword	0x21df
	.uleb128 0x1f
	.uaword	.LVL132
	.uaword	0x21df
	.uleb128 0x20
	.uaword	.LVL133
	.uaword	0x221c
	.uaword	0x1662
	.uleb128 0x21
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x1f
	.uaword	.LVL134
	.uaword	0x21df
	.uleb128 0x20
	.uaword	.LVL136
	.uaword	0x22e0
	.uaword	0x169b
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	.LC0
	.uleb128 0x21
	.byte	0x2
	.byte	0x8a
	.sleb128 8
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x21
	.byte	0x2
	.byte	0x8a
	.sleb128 4
	.byte	0x3
	.byte	0xa
	.uahalf	0x512
	.uleb128 0x21
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x5
	.byte	0x3
	.uaword	.LC11
	.byte	0
	.uleb128 0x1f
	.uaword	.LVL137
	.uaword	0x21df
	.uleb128 0x1f
	.uaword	.LVL138
	.uaword	0x21df
	.uleb128 0x1f
	.uaword	.LVL139
	.uaword	0x223b
	.uleb128 0x1f
	.uaword	.LVL140
	.uaword	0x21df
	.uleb128 0x20
	.uaword	.LVL141
	.uaword	0x22e0
	.uaword	0x16ef
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	.LC0
	.uleb128 0x21
	.byte	0x2
	.byte	0x8a
	.sleb128 8
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x21
	.byte	0x2
	.byte	0x8a
	.sleb128 4
	.byte	0x3
	.byte	0xa
	.uahalf	0x4d8
	.uleb128 0x21
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x5
	.byte	0x3
	.uaword	.LC9
	.byte	0
	.uleb128 0x20
	.uaword	.LVL145
	.uaword	0x22e0
	.uaword	0x171b
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x7b
	.sleb128 0
	.uleb128 0x21
	.byte	0x2
	.byte	0x8a
	.sleb128 8
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x21
	.byte	0x2
	.byte	0x8a
	.sleb128 4
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x21
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x5
	.byte	0x3
	.uaword	.LC4
	.byte	0
	.uleb128 0x20
	.uaword	.LVL147
	.uaword	0x22e0
	.uaword	0x174b
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	.LC0
	.uleb128 0x21
	.byte	0x2
	.byte	0x8a
	.sleb128 8
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x21
	.byte	0x2
	.byte	0x8a
	.sleb128 4
	.byte	0x3
	.byte	0xa
	.uahalf	0x496
	.uleb128 0x21
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x5
	.byte	0x3
	.uaword	.LC5
	.byte	0
	.uleb128 0x1f
	.uaword	.LVL150
	.uaword	0x21df
	.uleb128 0x1f
	.uaword	.LVL151
	.uaword	0x223b
	.uleb128 0x1f
	.uaword	.LVL152
	.uaword	0x21df
	.uleb128 0x20
	.uaword	.LVL153
	.uaword	0x22e0
	.uaword	0x1796
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	.LC0
	.uleb128 0x21
	.byte	0x2
	.byte	0x8a
	.sleb128 8
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x21
	.byte	0x2
	.byte	0x8a
	.sleb128 4
	.byte	0x3
	.byte	0xa
	.uahalf	0x508
	.uleb128 0x21
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x5
	.byte	0x3
	.uaword	.LC10
	.byte	0
	.uleb128 0x20
	.uaword	.LVL155
	.uaword	0x2305
	.uaword	0x17ad
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	inseg
	.byte	0
	.uleb128 0x20
	.uaword	.LVL157
	.uaword	0x2395
	.uaword	0x17c1
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.uaword	.LVL159
	.uaword	0x21df
	.uaword	0x17d5
	.uleb128 0x21
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.uaword	.LVL160
	.uaword	0x221c
	.uleb128 0x20
	.uaword	.LVL162
	.uaword	0x21df
	.uaword	0x17f2
	.uleb128 0x21
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.uaword	.LVL163
	.uaword	0x221c
	.byte	0
	.uleb128 0x27
	.uaword	0x102e
	.uaword	.LFB7
	.uaword	.LFE7
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x185a
	.uleb128 0x28
	.uaword	0x1045
	.byte	0x6
	.byte	0xfa
	.uaword	0x1045
	.byte	0x9f
	.uleb128 0x29
	.uaword	0x1051
	.uaword	.LLST15
	.uleb128 0x2a
	.uaword	0x105b
	.byte	0x1
	.byte	0x53
	.uleb128 0x29
	.uaword	0x1069
	.uaword	.LLST16
	.uleb128 0x29
	.uaword	0x1075
	.uaword	.LLST17
	.uleb128 0x29
	.uaword	0x1082
	.uaword	.LLST18
	.uleb128 0x1f
	.uaword	.LVL166
	.uaword	0x21df
	.uleb128 0x1f
	.uaword	.LVL169
	.uaword	0x21df
	.byte	0
	.uleb128 0x2b
	.string	"tcp_timewait_input"
	.byte	0x1
	.uahalf	0x211
	.byte	0x1
	.uaword	0x30e
	.byte	0x1
	.uaword	0x1888
	.uleb128 0x19
	.string	"pcb"
	.byte	0x1
	.uahalf	0x211
	.uaword	0x679
	.byte	0
	.uleb128 0x2b
	.string	"tcp_listen_input"
	.byte	0x1
	.uahalf	0x1b8
	.byte	0x1
	.uaword	0x30e
	.byte	0x1
	.uaword	0x18cc
	.uleb128 0x19
	.string	"pcb"
	.byte	0x1
	.uahalf	0x1b8
	.uaword	0xcdf
	.uleb128 0x1a
	.string	"npcb"
	.byte	0x1
	.uahalf	0x1ba
	.uaword	0x679
	.uleb128 0x1a
	.string	"rc"
	.byte	0x1
	.uahalf	0x1bb
	.uaword	0x30e
	.byte	0
	.uleb128 0x2b
	.string	"tcp_process"
	.byte	0x1
	.uahalf	0x23f
	.byte	0x1
	.uaword	0x30e
	.byte	0x1
	.uaword	0x1932
	.uleb128 0x19
	.string	"pcb"
	.byte	0x1
	.uahalf	0x23f
	.uaword	0x679
	.uleb128 0x1a
	.string	"rseg"
	.byte	0x1
	.uahalf	0x241
	.uaword	0xc01
	.uleb128 0x1a
	.string	"acceptable"
	.byte	0x1
	.uahalf	0x242
	.uaword	0x2b0
	.uleb128 0x1a
	.string	"err"
	.byte	0x1
	.uahalf	0x243
	.uaword	0x30e
	.uleb128 0x2c
	.uleb128 0x1a
	.string	"old_cwnd"
	.byte	0x1
	.uahalf	0x2af
	.uaword	0x2bc
	.byte	0
	.byte	0
	.uleb128 0x2d
	.byte	0x1
	.string	"tcp_input"
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.uaword	.LFB0
	.uaword	.LFE0
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2028
	.uleb128 0x2e
	.string	"p"
	.byte	0x1
	.byte	0x5c
	.uaword	0x386
	.uaword	.LLST19
	.uleb128 0x2e
	.string	"inp"
	.byte	0x1
	.byte	0x5c
	.uaword	0x3ff
	.uaword	.LLST20
	.uleb128 0x2f
	.string	"pcb"
	.byte	0x1
	.byte	0x5e
	.uaword	0x679
	.uaword	.LLST21
	.uleb128 0x2f
	.string	"prev"
	.byte	0x1
	.byte	0x5e
	.uaword	0x679
	.uaword	.LLST22
	.uleb128 0x2f
	.string	"lpcb"
	.byte	0x1
	.byte	0x5f
	.uaword	0xcdf
	.uaword	.LLST23
	.uleb128 0x2f
	.string	"hdrlen"
	.byte	0x1
	.byte	0x64
	.uaword	0x2b0
	.uaword	.LLST24
	.uleb128 0x2f
	.string	"err"
	.byte	0x1
	.byte	0x65
	.uaword	0x30e
	.uaword	.LLST25
	.uleb128 0x30
	.string	"dropped"
	.byte	0x1
	.uahalf	0x1a5
	.uaword	.L282
	.uleb128 0x30
	.string	"aborted"
	.byte	0x1
	.uahalf	0x189
	.uaword	.L313
	.uleb128 0x31
	.uaword	0x185a
	.uaword	.LBB12
	.uaword	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0xcf
	.uaword	0x1a18
	.uleb128 0x32
	.uaword	0x187b
	.uaword	.LLST26
	.uleb128 0x1f
	.uaword	.LVL219
	.uaword	0x23b5
	.uleb128 0x22
	.uaword	.LVL305
	.uaword	0x23d5
	.uleb128 0x21
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x7b
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x33
	.uaword	0x18cc
	.uaword	.LBB16
	.uaword	.Ldebug_ranges0+0x38
	.byte	0x1
	.uahalf	0x130
	.uaword	0x1c4d
	.uleb128 0x32
	.uaword	0x18e6
	.uaword	.LLST27
	.uleb128 0x34
	.uaword	.Ldebug_ranges0+0x38
	.uleb128 0x29
	.uaword	0x18f2
	.uaword	.LLST28
	.uleb128 0x29
	.uaword	0x18ff
	.uaword	.LLST29
	.uleb128 0x29
	.uaword	0x1912
	.uaword	.LLST30
	.uleb128 0x24
	.uaword	.Ldebug_ranges0+0x80
	.uaword	0x1ac0
	.uleb128 0x29
	.uaword	0x191f
	.uaword	.LLST31
	.uleb128 0x35
	.uaword	.LVL273
	.uaword	0x1a7c
	.uleb128 0x21
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.uleb128 0x21
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.uaword	.LVL288
	.uaword	0x115c
	.uaword	0x1a90
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.uaword	.LVL290
	.uaword	0x22e0
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	.LC0
	.uleb128 0x21
	.byte	0x2
	.byte	0x8a
	.sleb128 8
	.byte	0x5
	.byte	0x3
	.uaword	.LC2
	.uleb128 0x21
	.byte	0x2
	.byte	0x8a
	.sleb128 4
	.byte	0x3
	.byte	0xa
	.uahalf	0x2b3
	.uleb128 0x21
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x5
	.byte	0x3
	.uaword	.LC21
	.byte	0
	.byte	0
	.uleb128 0x20
	.uaword	.LVL249
	.uaword	0x17fc
	.uaword	0x1ad4
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8e
	.sleb128 58
	.byte	0
	.uleb128 0x20
	.uaword	.LVL262
	.uaword	0x115c
	.uaword	0x1ae8
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.uaword	.LVL263
	.uaword	0x2407
	.uaword	0x1afc
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.uaword	.LVL264
	.uaword	0x23d5
	.uaword	0x1b16
	.uleb128 0x21
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x7b
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.uaword	.LVL265
	.uaword	0x115c
	.uaword	0x1b2a
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.uaword	.LVL266
	.uaword	0x115c
	.uaword	0x1b3e
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.uaword	.LVL267
	.uaword	0x2407
	.uaword	0x1b52
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.uaword	.LVL268
	.uaword	0x115c
	.uaword	0x1b66
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.uaword	.LVL269
	.uaword	0x115c
	.uaword	0x1b7a
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.uaword	.LVL272
	.uaword	0x2426
	.uaword	0x1b8e
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.uaword	.LVL278
	.uaword	0x2441
	.uleb128 0x1f
	.uaword	.LVL279
	.uaword	0x227c
	.uleb128 0x20
	.uaword	.LVL280
	.uaword	0x2459
	.uaword	0x1bb4
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8e
	.sleb128 4
	.byte	0
	.uleb128 0x20
	.uaword	.LVL281
	.uaword	0x22e0
	.uaword	0x1be7
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	.LC0
	.uleb128 0x21
	.byte	0x2
	.byte	0x8a
	.sleb128 8
	.byte	0x5
	.byte	0x3
	.uaword	.LC2
	.uleb128 0x21
	.byte	0x2
	.byte	0x8a
	.sleb128 4
	.byte	0x3
	.byte	0xa
	.uahalf	0x28c
	.uleb128 0x21
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x5
	.byte	0x3
	.uaword	.LC20
	.byte	0
	.uleb128 0x1f
	.uaword	.LVL283
	.uaword	0x21fe
	.uleb128 0x36
	.uaword	.LVL284
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	0x1c08
	.uleb128 0x21
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.uleb128 0x21
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.uaword	.LVL293
	.uaword	0x2407
	.uaword	0x1c1c
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.uaword	.LVL295
	.uaword	0x22e0
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	.LC0
	.uleb128 0x21
	.byte	0x2
	.byte	0x8a
	.sleb128 8
	.byte	0x5
	.byte	0x3
	.uaword	.LC2
	.uleb128 0x21
	.byte	0x2
	.byte	0x8a
	.sleb128 4
	.byte	0x3
	.byte	0xa
	.uahalf	0x257
	.uleb128 0x21
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x5
	.byte	0x3
	.uaword	.LC19
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x33
	.uaword	0x1888
	.uaword	.LBB31
	.uaword	.Ldebug_ranges0+0xa0
	.byte	0x1
	.uahalf	0x102
	.uaword	0x1d0d
	.uleb128 0x32
	.uaword	0x18a7
	.uaword	.LLST32
	.uleb128 0x34
	.uaword	.Ldebug_ranges0+0xa0
	.uleb128 0x29
	.uaword	0x18b3
	.uaword	.LLST33
	.uleb128 0x29
	.uaword	0x18c0
	.uaword	.LLST34
	.uleb128 0x1f
	.uaword	.LVL241
	.uaword	0x2484
	.uleb128 0x1f
	.uaword	.LVL243
	.uaword	0x2441
	.uleb128 0x20
	.uaword	.LVL244
	.uaword	0x17fc
	.uaword	0x1caf
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x78
	.sleb128 58
	.uleb128 0x37
	.uaword	0x1045
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.uaword	.LVL245
	.uaword	0x2459
	.uaword	0x1cc3
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x78
	.sleb128 4
	.byte	0
	.uleb128 0x20
	.uaword	.LVL246
	.uaword	0x24a2
	.uaword	0x1cdc
	.uleb128 0x21
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x42
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.uaword	.LVL247
	.uaword	0x24ce
	.uaword	0x1cf5
	.uleb128 0x21
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.uaword	.LVL311
	.uaword	0x23d5
	.uleb128 0x21
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x7b
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
	.uaword	.LVL185
	.uaword	0x2327
	.uaword	0x1d21
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.uaword	.LVL187
	.byte	0x1
	.uaword	0x24ef
	.uaword	0x1d36
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.uaword	.LVL188
	.uaword	0x250d
	.uaword	0x1d4a
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.uaword	.LVL189
	.uaword	0x2546
	.uaword	0x1d6f
	.uleb128 0x21
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x36
	.uleb128 0x21
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x7b
	.sleb128 0
	.uleb128 0x21
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.uaword	.LVL190
	.uaword	0x21df
	.uleb128 0x20
	.uaword	.LVL192
	.uaword	0x2327
	.uaword	0x1d8c
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.uaword	.LVL194
	.uaword	0x21df
	.uleb128 0x1f
	.uaword	.LVL195
	.uaword	0x21df
	.uleb128 0x1f
	.uaword	.LVL196
	.uaword	0x227c
	.uleb128 0x1f
	.uaword	.LVL197
	.uaword	0x227c
	.uleb128 0x1f
	.uaword	.LVL198
	.uaword	0x21df
	.uleb128 0x1f
	.uaword	.LVL199
	.uaword	0x21df
	.uleb128 0x20
	.uaword	.LVL206
	.uaword	0x22e0
	.uaword	0x1dee
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x21
	.byte	0x2
	.byte	0x8a
	.sleb128 8
	.byte	0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x21
	.byte	0x2
	.byte	0x8a
	.sleb128 4
	.byte	0x2
	.byte	0x8
	.byte	0xac
	.uleb128 0x21
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x5
	.byte	0x3
	.uaword	.LC14
	.byte	0
	.uleb128 0x20
	.uaword	.LVL207
	.uaword	0x22e0
	.uaword	0x1e1a
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x21
	.byte	0x2
	.byte	0x8a
	.sleb128 8
	.byte	0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x21
	.byte	0x2
	.byte	0x8a
	.sleb128 4
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x21
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x5
	.byte	0x3
	.uaword	.LC13
	.byte	0
	.uleb128 0x20
	.uaword	.LVL208
	.uaword	0x2581
	.uaword	0x1e2e
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.uaword	.LVL210
	.uaword	0x24ef
	.uleb128 0x20
	.uaword	.LVL212
	.uaword	0x22e0
	.uaword	0x1e63
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x21
	.byte	0x2
	.byte	0x8a
	.sleb128 8
	.byte	0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x21
	.byte	0x2
	.byte	0x8a
	.sleb128 4
	.byte	0x2
	.byte	0x8
	.byte	0xad
	.uleb128 0x21
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x5
	.byte	0x3
	.uaword	.LC15
	.byte	0
	.uleb128 0x20
	.uaword	.LVL216
	.uaword	0x22e0
	.uaword	0x1e8d
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 -4
	.byte	0x6
	.uleb128 0x21
	.byte	0x2
	.byte	0x8a
	.sleb128 8
	.byte	0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x21
	.byte	0x2
	.byte	0x8a
	.sleb128 4
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x21
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x36
	.uaword	.LVL226
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	0x1ea0
	.uleb128 0x21
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x9
	.byte	0xf5
	.byte	0
	.uleb128 0x20
	.uaword	.LVL227
	.uaword	0x25ae
	.uaword	0x1eb4
	.uleb128 0x21
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.uaword	.LVL228
	.uaword	0x25d9
	.uaword	0x1ecd
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.uleb128 0x21
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x36
	.uaword	.LVL232
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	0x1ee0
	.uleb128 0x21
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x9
	.byte	0xf4
	.byte	0
	.uleb128 0x36
	.uaword	.LVL252
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	0x1ef3
	.uleb128 0x21
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.uaword	.LVL254
	.uaword	0x22e0
	.uaword	0x1f26
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	.LC0
	.uleb128 0x21
	.byte	0x2
	.byte	0x8a
	.sleb128 8
	.byte	0x5
	.byte	0x3
	.uaword	.LC2
	.uleb128 0x21
	.byte	0x2
	.byte	0x8a
	.sleb128 4
	.byte	0x3
	.byte	0xa
	.uahalf	0x154
	.uleb128 0x21
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x5
	.byte	0x3
	.uaword	.LC22
	.byte	0
	.uleb128 0x36
	.uaword	.LVL255
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	0x1f3e
	.uleb128 0x21
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.uleb128 0x21
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.uaword	.LVL257
	.uaword	0x23b5
	.uaword	0x1f52
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.uaword	.LVL259
	.uaword	0x21df
	.uleb128 0x20
	.uaword	.LVL260
	.uaword	0x23d5
	.uaword	0x1f75
	.uleb128 0x21
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x7b
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.uaword	.LVL276
	.uaword	0x25f8
	.uaword	0x1f89
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.uaword	.LVL297
	.uaword	0x2613
	.uaword	0x1fa7
	.uleb128 0x21
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.uleb128 0x21
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1f
	.uaword	.LVL299
	.uaword	0x24ef
	.uleb128 0x36
	.uaword	.LVL302
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	0x1fcd
	.uleb128 0x21
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.uleb128 0x21
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x30
	.uleb128 0x21
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.uaword	.LVL307
	.uaword	0x22e0
	.uaword	0x1ffc
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	.LC0
	.uleb128 0x21
	.byte	0x2
	.byte	0x8a
	.sleb128 8
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x21
	.byte	0x2
	.byte	0x8a
	.sleb128 4
	.byte	0x2
	.byte	0x8
	.byte	0xbc
	.uleb128 0x21
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x5
	.byte	0x3
	.uaword	.LC17
	.byte	0
	.uleb128 0x22
	.uaword	.LVL308
	.uaword	0x22e0
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	.LC0
	.uleb128 0x21
	.byte	0x2
	.byte	0x8a
	.sleb128 8
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x21
	.byte	0x2
	.byte	0x8a
	.sleb128 4
	.byte	0x2
	.byte	0x8
	.byte	0xb6
	.uleb128 0x21
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x5
	.byte	0x3
	.uaword	.LC16
	.byte	0
	.byte	0
	.uleb128 0x38
	.string	"inseg"
	.byte	0x1
	.byte	0x3e
	.uaword	0xb6e
	.byte	0x5
	.byte	0x3
	.uaword	inseg
	.uleb128 0x38
	.string	"tcphdr"
	.byte	0x1
	.byte	0x3f
	.uaword	0xd6e
	.byte	0x5
	.byte	0x3
	.uaword	tcphdr
	.uleb128 0x38
	.string	"iphdr"
	.byte	0x1
	.byte	0x40
	.uaword	0x2062
	.byte	0x5
	.byte	0x3
	.uaword	iphdr
	.uleb128 0x4
	.byte	0x4
	.uaword	0x5ab
	.uleb128 0x38
	.string	"seqno"
	.byte	0x1
	.byte	0x41
	.uaword	0x2c9
	.byte	0x5
	.byte	0x3
	.uaword	seqno
	.uleb128 0x38
	.string	"ackno"
	.byte	0x1
	.byte	0x41
	.uaword	0x2c9
	.byte	0x5
	.byte	0x3
	.uaword	ackno
	.uleb128 0x39
	.uaword	.LASF1
	.byte	0x1
	.byte	0x42
	.uaword	0x2b0
	.byte	0x5
	.byte	0x3
	.uaword	flags
	.uleb128 0x38
	.string	"tcplen"
	.byte	0x1
	.byte	0x43
	.uaword	0x2bc
	.byte	0x5
	.byte	0x3
	.uaword	tcplen
	.uleb128 0x38
	.string	"recv_flags"
	.byte	0x1
	.byte	0x45
	.uaword	0x2b0
	.byte	0x5
	.byte	0x3
	.uaword	recv_flags
	.uleb128 0x38
	.string	"recv_data"
	.byte	0x1
	.byte	0x46
	.uaword	0x386
	.byte	0x5
	.byte	0x3
	.uaword	recv_data
	.uleb128 0x3a
	.string	"current_iphdr_src"
	.byte	0x9
	.byte	0xaa
	.uaword	0x3cf
	.byte	0x1
	.byte	0x1
	.uleb128 0x3a
	.string	"current_iphdr_dest"
	.byte	0x9
	.byte	0xac
	.uaword	0x3cf
	.byte	0x1
	.byte	0x1
	.uleb128 0x3b
	.string	"tcp_input_pcb"
	.byte	0x1
	.byte	0x48
	.uaword	0x679
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	tcp_input_pcb
	.uleb128 0x3c
	.string	"tcp_ticks"
	.byte	0xb
	.uahalf	0x133
	.uaword	0x2c9
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.string	"tcp_active_pcbs_changed"
	.byte	0xb
	.uahalf	0x134
	.uaword	0x2b0
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.string	"tcp_listen_pcbs"
	.byte	0xb
	.uahalf	0x13c
	.uaword	0xd74
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.string	"tcp_active_pcbs"
	.byte	0xb
	.uahalf	0x13d
	.uaword	0x679
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.string	"tcp_tw_pcbs"
	.byte	0xb
	.uahalf	0x140
	.uaword	0x679
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.string	"tcp_tmp_pcb"
	.byte	0xb
	.uahalf	0x142
	.uaword	0x679
	.byte	0x1
	.byte	0x1
	.uleb128 0x3a
	.string	"lwip_stats"
	.byte	0xd
	.byte	0x95
	.uaword	0xf98
	.byte	0x1
	.byte	0x1
	.uleb128 0x3d
	.byte	0x1
	.string	"lwip_ntohs"
	.byte	0xe
	.byte	0x64
	.byte	0x1
	.uaword	0x2bc
	.byte	0x1
	.uaword	0x21fe
	.uleb128 0xb
	.uaword	0x2bc
	.byte	0
	.uleb128 0x3e
	.byte	0x1
	.string	"tcp_seg_free"
	.byte	0xb
	.uahalf	0x1a4
	.byte	0x1
	.byte	0x1
	.uaword	0x221c
	.uleb128 0xb
	.uaword	0xc01
	.byte	0
	.uleb128 0x3d
	.byte	0x1
	.string	"lwip_htons"
	.byte	0xe
	.byte	0x63
	.byte	0x1
	.uaword	0x2bc
	.byte	0x1
	.uaword	0x223b
	.uleb128 0xb
	.uaword	0x2bc
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.string	"pbuf_realloc"
	.byte	0x6
	.byte	0x98
	.byte	0x1
	.byte	0x1
	.uaword	0x225d
	.uleb128 0xb
	.uaword	0x386
	.uleb128 0xb
	.uaword	0x2bc
	.byte	0
	.uleb128 0x3e
	.byte	0x1
	.string	"tcp_segs_free"
	.byte	0xb
	.uahalf	0x1a3
	.byte	0x1
	.byte	0x1
	.uaword	0x227c
	.uleb128 0xb
	.uaword	0xc01
	.byte	0
	.uleb128 0x3d
	.byte	0x1
	.string	"lwip_ntohl"
	.byte	0xe
	.byte	0x66
	.byte	0x1
	.uaword	0x2c9
	.byte	0x1
	.uaword	0x229b
	.uleb128 0xb
	.uaword	0x2c9
	.byte	0
	.uleb128 0x3d
	.byte	0x1
	.string	"pbuf_clen"
	.byte	0x6
	.byte	0x9c
	.byte	0x1
	.uaword	0x2b0
	.byte	0x1
	.uaword	0x22b9
	.uleb128 0xb
	.uaword	0x386
	.byte	0
	.uleb128 0x3d
	.byte	0x1
	.string	"tcp_send_empty_ack"
	.byte	0xb
	.byte	0x44
	.byte	0x1
	.uaword	0x30e
	.byte	0x1
	.uaword	0x22e0
	.uleb128 0xb
	.uaword	0x679
	.byte	0
	.uleb128 0x3d
	.byte	0x1
	.string	"Ifx_Lwip_printf"
	.byte	0x3
	.byte	0x2c
	.byte	0x1
	.uaword	0x2d6
	.byte	0x1
	.uaword	0x2305
	.uleb128 0xb
	.uaword	0x29b
	.uleb128 0x40
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.string	"tcp_seg_copy"
	.byte	0xb
	.uahalf	0x1a5
	.byte	0x1
	.uaword	0xc01
	.byte	0x1
	.uaword	0x2327
	.uleb128 0xb
	.uaword	0xc01
	.byte	0
	.uleb128 0x3d
	.byte	0x1
	.string	"pbuf_header"
	.byte	0x6
	.byte	0x99
	.byte	0x1
	.uaword	0x2b0
	.byte	0x1
	.uaword	0x234c
	.uleb128 0xb
	.uaword	0x386
	.uleb128 0xb
	.uaword	0x2e2
	.byte	0
	.uleb128 0x3d
	.byte	0x1
	.string	"tcp_update_rcv_ann_wnd"
	.byte	0xb
	.byte	0x48
	.byte	0x1
	.uaword	0x2c9
	.byte	0x1
	.uaword	0x2377
	.uleb128 0xb
	.uaword	0x679
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.string	"pbuf_cat"
	.byte	0x6
	.byte	0x9d
	.byte	0x1
	.byte	0x1
	.uaword	0x2395
	.uleb128 0xb
	.uaword	0x386
	.uleb128 0xb
	.uaword	0x386
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.string	"tcp_rexmit_fast"
	.byte	0xb
	.byte	0x47
	.byte	0x1
	.byte	0x1
	.uaword	0x23b5
	.uleb128 0xb
	.uaword	0x679
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.string	"tcp_output"
	.byte	0xa
	.uahalf	0x16f
	.byte	0x1
	.uaword	0x30e
	.byte	0x1
	.uaword	0x23d5
	.uleb128 0xb
	.uaword	0x679
	.byte	0
	.uleb128 0x3e
	.byte	0x1
	.string	"tcp_rst"
	.byte	0xb
	.uahalf	0x1bc
	.byte	0x1
	.byte	0x1
	.uaword	0x2407
	.uleb128 0xb
	.uaword	0x2c9
	.uleb128 0xb
	.uaword	0x2c9
	.uleb128 0xb
	.uaword	0x585
	.uleb128 0xb
	.uaword	0x585
	.uleb128 0xb
	.uaword	0x2bc
	.uleb128 0xb
	.uaword	0x2bc
	.byte	0
	.uleb128 0x3e
	.byte	0x1
	.string	"tcp_pcb_purge"
	.byte	0xb
	.uahalf	0x1a0
	.byte	0x1
	.byte	0x1
	.uaword	0x2426
	.uleb128 0xb
	.uaword	0x679
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.string	"tcp_rexmit"
	.byte	0xb
	.byte	0x45
	.byte	0x1
	.byte	0x1
	.uaword	0x2441
	.uleb128 0xb
	.uaword	0x679
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.string	"tcp_timer_needed"
	.byte	0xb
	.uahalf	0x1dd
	.byte	0x1
	.byte	0x1
	.uleb128 0x41
	.byte	0x1
	.string	"tcp_eff_send_mss"
	.byte	0xb
	.uahalf	0x1c6
	.byte	0x1
	.uaword	0x2bc
	.byte	0x1
	.uaword	0x2484
	.uleb128 0xb
	.uaword	0x2bc
	.uleb128 0xb
	.uaword	0x585
	.byte	0
	.uleb128 0x3d
	.byte	0x1
	.string	"tcp_alloc"
	.byte	0xb
	.byte	0x42
	.byte	0x1
	.uaword	0x679
	.byte	0x1
	.uaword	0x24a2
	.uleb128 0xb
	.uaword	0x2b0
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.string	"tcp_enqueue_flags"
	.byte	0xb
	.uahalf	0x1b8
	.byte	0x1
	.uaword	0x30e
	.byte	0x1
	.uaword	0x24ce
	.uleb128 0xb
	.uaword	0x679
	.uleb128 0xb
	.uaword	0x2b0
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.string	"tcp_abandon"
	.byte	0xb
	.byte	0x43
	.byte	0x1
	.byte	0x1
	.uaword	0x24ef
	.uleb128 0xb
	.uaword	0x679
	.uleb128 0xb
	.uaword	0x1c1
	.byte	0
	.uleb128 0x3d
	.byte	0x1
	.string	"pbuf_free"
	.byte	0x6
	.byte	0x9b
	.byte	0x1
	.uaword	0x2b0
	.byte	0x1
	.uaword	0x250d
	.uleb128 0xb
	.uaword	0x386
	.byte	0
	.uleb128 0x3d
	.byte	0x1
	.string	"ip4_addr_isbroadcast"
	.byte	0x7
	.byte	0xcb
	.byte	0x1
	.uaword	0x2b0
	.byte	0x1
	.uaword	0x253b
	.uleb128 0xb
	.uaword	0x2c9
	.uleb128 0xb
	.uaword	0x253b
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x2541
	.uleb128 0x5
	.uaword	0x405
	.uleb128 0x3d
	.byte	0x1
	.string	"inet_chksum_pseudo"
	.byte	0xf
	.byte	0x4b
	.byte	0x1
	.uaword	0x2bc
	.byte	0x1
	.uaword	0x2581
	.uleb128 0xb
	.uaword	0x386
	.uleb128 0xb
	.uaword	0x585
	.uleb128 0xb
	.uaword	0x585
	.uleb128 0xb
	.uaword	0x2b0
	.uleb128 0xb
	.uaword	0x2bc
	.byte	0
	.uleb128 0x3d
	.byte	0x1
	.string	"tcp_process_refused_data"
	.byte	0xb
	.byte	0x49
	.byte	0x1
	.uaword	0x30e
	.byte	0x1
	.uaword	0x25ae
	.uleb128 0xb
	.uaword	0x679
	.byte	0
	.uleb128 0x3e
	.byte	0x1
	.string	"tcp_pcb_remove"
	.byte	0xb
	.uahalf	0x1a1
	.byte	0x1
	.byte	0x1
	.uaword	0x25d3
	.uleb128 0xb
	.uaword	0x25d3
	.uleb128 0xb
	.uaword	0x679
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x679
	.uleb128 0x3f
	.byte	0x1
	.string	"memp_free"
	.byte	0xc
	.byte	0x6c
	.byte	0x1
	.byte	0x1
	.uaword	0x25f8
	.uleb128 0xb
	.uaword	0xe69
	.uleb128 0xb
	.uaword	0x2ae
	.byte	0
	.uleb128 0x3e
	.byte	0x1
	.string	"tcp_abort"
	.byte	0xa
	.uahalf	0x15e
	.byte	0x1
	.byte	0x1
	.uaword	0x2613
	.uleb128 0xb
	.uaword	0x679
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.string	"tcp_recv_null"
	.byte	0xb
	.uahalf	0x1ca
	.byte	0x1
	.uaword	0x30e
	.byte	0x1
	.uleb128 0xb
	.uaword	0x2ae
	.uleb128 0xb
	.uaword	0x679
	.uleb128 0xb
	.uaword	0x386
	.uleb128 0xb
	.uaword	0x30e
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
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
	.uleb128 0xf
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x4
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
	.uleb128 0x11
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x17
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x32
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0xa
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x37
	.uleb128 0x410a
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x38
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
	.uleb128 0x39
	.uleb128 0x34
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
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3f
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
	.uleb128 0x40
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x41
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
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x42
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x43
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0-.Ltext0
	.uaword	.LVL1-1-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL1-1-.Ltext0
	.uaword	.LFE4-.Ltext0
	.uahalf	0x1
	.byte	0x6e
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0-.Ltext0
	.uaword	.LVL1-1-.Ltext0
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL1-1-.Ltext0
	.uaword	.LVL2-.Ltext0
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL2-.Ltext0
	.uaword	.LVL8-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL8-.Ltext0
	.uaword	.LVL9-.Ltext0
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL9-.Ltext0
	.uaword	.LVL11-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL11-.Ltext0
	.uaword	.LVL12-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL12-.Ltext0
	.uaword	.LVL14-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL14-.Ltext0
	.uaword	.LFE4-.Ltext0
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL2-.Ltext0
	.uaword	.LVL3-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL3-.Ltext0
	.uaword	.LVL5-.Ltext0
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL9-.Ltext0
	.uaword	.LVL11-.Ltext0
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL16-.Ltext0
	.uaword	.LVL17-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL17-.Ltext0
	.uaword	.LVL28-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL28-.Ltext0
	.uaword	.LVL29-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL29-.Ltext0
	.uaword	.LVL34-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL34-.Ltext0
	.uaword	.LVL35-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL35-.Ltext0
	.uaword	.LVL118-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL118-.Ltext0
	.uaword	.LVL121-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL121-.Ltext0
	.uaword	.LFE5-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL22-.Ltext0
	.uaword	.LVL26-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL27-.Ltext0
	.uaword	.LVL28-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL30-.Ltext0
	.uaword	.LVL34-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL40-.Ltext0
	.uaword	.LVL44-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL58-.Ltext0
	.uaword	.LVL62-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL63-.Ltext0
	.uaword	.LVL66-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL79-.Ltext0
	.uaword	.LVL86-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL106-.Ltext0
	.uaword	.LVL108-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL116-.Ltext0
	.uaword	.LVL121-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL126-.Ltext0
	.uaword	.LVL128-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL128-.Ltext0
	.uaword	.LVL130-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL130-.Ltext0
	.uaword	.LVL135-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL142-.Ltext0
	.uaword	.LVL143-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL143-.Ltext0
	.uaword	.LVL146-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL149-.Ltext0
	.uaword	.LVL154-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL161-.Ltext0
	.uaword	.LFE5-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL40-.Ltext0
	.uaword	.LVL41-.Ltext0
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL42-.Ltext0
	.uaword	.LVL44-.Ltext0
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL106-.Ltext0
	.uaword	.LVL108-.Ltext0
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL116-.Ltext0
	.uaword	.LVL121-.Ltext0
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL127-.Ltext0
	.uaword	.LVL130-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL43-.Ltext0
	.uaword	.LVL44-1-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL94-.Ltext0
	.uaword	.LVL100-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL101-.Ltext0
	.uaword	.LVL105-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL107-.Ltext0
	.uaword	.LVL108-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL118-.Ltext0
	.uaword	.LVL119-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL119-.Ltext0
	.uaword	.LVL121-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL67-.Ltext0
	.uaword	.LVL71-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL72-.Ltext0
	.uaword	.LVL75-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL110-.Ltext0
	.uaword	.LVL116-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL122-.Ltext0
	.uaword	.LVL125-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL146-.Ltext0
	.uaword	.LVL148-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL67-.Ltext0
	.uaword	.LVL68-.Ltext0
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL68-.Ltext0
	.uaword	.LVL73-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL110-.Ltext0
	.uaword	.LVL112-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL114-.Ltext0
	.uaword	.LVL116-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL122-.Ltext0
	.uaword	.LVL124-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL146-.Ltext0
	.uaword	.LVL148-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL45-.Ltext0
	.uaword	.LVL46-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL46-.Ltext0
	.uaword	.LVL47-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL47-.Ltext0
	.uaword	.LVL48-.Ltext0
	.uahalf	0x8
	.byte	0x7f
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x32
	.byte	0x26
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL48-.Ltext0
	.uaword	.LVL49-.Ltext0
	.uahalf	0xb
	.byte	0x7f
	.sleb128 0
	.byte	0x8f
	.sleb128 70
	.byte	0x94
	.byte	0x2
	.byte	0x32
	.byte	0x26
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL77-.Ltext0
	.uaword	.LVL78-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL78-.Ltext0
	.uaword	.LVL79-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL18-.Ltext0
	.uaword	.LVL19-.Ltext0
	.uahalf	0x6
	.byte	0x75
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL37-.Ltext0
	.uaword	.LVL38-.Ltext0
	.uahalf	0x6
	.byte	0x75
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL50-.Ltext0
	.uaword	.LVL51-.Ltext0
	.uahalf	0x6
	.byte	0x75
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL52-.Ltext0
	.uaword	.LVL53-.Ltext0
	.uahalf	0x6
	.byte	0x75
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL53-.Ltext0
	.uaword	.LVL54-.Ltext0
	.uahalf	0x6
	.byte	0x75
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL54-.Ltext0
	.uaword	.LVL55-.Ltext0
	.uahalf	0x6
	.byte	0x75
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL69-.Ltext0
	.uaword	.LVL74-1-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL16-.Ltext0
	.uaword	.LVL19-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL34-.Ltext0
	.uaword	.LVL38-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL50-.Ltext0
	.uaword	.LVL66-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL75-.Ltext0
	.uaword	.LVL76-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL76-.Ltext0
	.uaword	.LVL77-.Ltext0
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL86-.Ltext0
	.uaword	.LVL87-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL108-.Ltext0
	.uaword	.LVL110-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL144-.Ltext0
	.uaword	.LVL146-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL156-.Ltext0
	.uaword	.LVL158-.Ltext0
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL109-.Ltext0
	.uaword	.LVL110-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL90-.Ltext0
	.uaword	.LVL91-1-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL170-.Ltext0
	.uaword	.LVL171-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL171-.Ltext0
	.uaword	.LVL173-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL176-.Ltext0
	.uaword	.LVL180-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL181-.Ltext0
	.uaword	.LVL182-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL183-.Ltext0
	.uaword	.LFE7-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL174-.Ltext0
	.uaword	.LVL175-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL175-.Ltext0
	.uaword	.LVL177-.Ltext0
	.uahalf	0x12
	.byte	0x8f
	.sleb128 2
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x38
	.byte	0x24
	.byte	0x8f
	.sleb128 3
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x21
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL165-.Ltext0
	.uaword	.LVL167-.Ltext0
	.uahalf	0x3
	.byte	0x8f
	.sleb128 20
	.byte	0x9f
	.uaword	.LVL168-.Ltext0
	.uaword	.LVL172-.Ltext0
	.uahalf	0x3
	.byte	0x8f
	.sleb128 20
	.byte	0x9f
	.uaword	.LVL172-.Ltext0
	.uaword	.LFE7-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL171-.Ltext0
	.uaword	.LVL172-.Ltext0
	.uahalf	0x5
	.byte	0x82
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.uaword	.LVL172-.Ltext0
	.uaword	.LVL173-.Ltext0
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	.LVL178-.Ltext0
	.uaword	.LVL179-.Ltext0
	.uahalf	0x5
	.byte	0x82
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.uaword	.LVL179-.Ltext0
	.uaword	.LVL180-.Ltext0
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL184-.Ltext0
	.uaword	.LVL185-1-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL185-1-.Ltext0
	.uaword	.LVL209-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL209-.Ltext0
	.uaword	.LVL211-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL211-.Ltext0
	.uaword	.LVL220-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL220-.Ltext0
	.uaword	.LVL221-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL221-.Ltext0
	.uaword	.LVL222-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL222-.Ltext0
	.uaword	.LVL233-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL233-.Ltext0
	.uaword	.LVL248-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL248-.Ltext0
	.uaword	.LVL258-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL258-.Ltext0
	.uaword	.LVL261-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL261-.Ltext0
	.uaword	.LVL304-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL304-.Ltext0
	.uaword	.LFE0-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL184-.Ltext0
	.uaword	.LVL185-1-.Ltext0
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL185-1-.Ltext0
	.uaword	.LVL186-.Ltext0
	.uahalf	0x1
	.byte	0x6e
	.uaword	.LVL186-.Ltext0
	.uaword	.LVL187-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	.LVL187-.Ltext0
	.uaword	.LVL193-.Ltext0
	.uahalf	0x1
	.byte	0x6e
	.uaword	.LVL193-.Ltext0
	.uaword	.LFE0-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL200-.Ltext0
	.uaword	.LVL203-.Ltext0
	.uahalf	0x1
	.byte	0x6e
	.uaword	.LVL203-.Ltext0
	.uaword	.LVL205-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL205-.Ltext0
	.uaword	.LVL213-.Ltext0
	.uahalf	0x1
	.byte	0x6e
	.uaword	.LVL214-.Ltext0
	.uaword	.LVL218-.Ltext0
	.uahalf	0x1
	.byte	0x6e
	.uaword	.LVL220-.Ltext0
	.uaword	.LVL235-.Ltext0
	.uahalf	0x1
	.byte	0x6e
	.uaword	.LVL248-.Ltext0
	.uaword	.LVL258-.Ltext0
	.uahalf	0x1
	.byte	0x6e
	.uaword	.LVL258-.Ltext0
	.uaword	.LVL261-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL261-.Ltext0
	.uaword	.LVL309-.Ltext0
	.uahalf	0x1
	.byte	0x6e
	.uaword	.LVL312-.Ltext0
	.uaword	.LFE0-.Ltext0
	.uahalf	0x1
	.byte	0x6e
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL200-.Ltext0
	.uaword	.LVL201-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL202-.Ltext0
	.uaword	.LVL204-.Ltext0
	.uahalf	0x1
	.byte	0x6e
	.uaword	.LVL204-.Ltext0
	.uaword	.LVL205-.Ltext0
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL233-.Ltext0
	.uaword	.LVL236-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL236-.Ltext0
	.uaword	.LVL238-.Ltext0
	.uahalf	0x1
	.byte	0x6e
	.uaword	.LVL238-.Ltext0
	.uaword	.LVL239-.Ltext0
	.uahalf	0x1
	.byte	0x63
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL234-.Ltext0
	.uaword	.LVL236-.Ltext0
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL236-.Ltext0
	.uaword	.LVL237-.Ltext0
	.uahalf	0x1
	.byte	0x6e
	.uaword	.LVL237-.Ltext0
	.uaword	.LVL239-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL239-.Ltext0
	.uaword	.LVL248-.Ltext0
	.uahalf	0x1
	.byte	0x6e
	.uaword	.LVL309-.Ltext0
	.uaword	.LVL312-.Ltext0
	.uahalf	0x1
	.byte	0x6e
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL190-.Ltext0
	.uaword	.LVL191-.Ltext0
	.uahalf	0x5
	.byte	0x72
	.sleb128 0
	.byte	0x3c
	.byte	0x25
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL251-.Ltext0
	.uaword	.LVL252-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL252-.Ltext0
	.uaword	.LVL253-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL255-.Ltext0
	.uaword	.LVL256-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL297-.Ltext0
	.uaword	.LVL298-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL302-.Ltext0
	.uaword	.LVL303-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL217-.Ltext0
	.uaword	.LVL218-.Ltext0
	.uahalf	0x1
	.byte	0x6e
	.uaword	.LVL304-.Ltext0
	.uaword	.LVL306-.Ltext0
	.uahalf	0x1
	.byte	0x6e
	.uaword	.LVL312-.Ltext0
	.uaword	.LFE0-.Ltext0
	.uahalf	0x1
	.byte	0x6e
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL223-.Ltext0
	.uaword	.LVL224-.Ltext0
	.uahalf	0x5
	.byte	0x3
	.uaword	tcp_input_pcb
	.uaword	.LVL224-.Ltext0
	.uaword	.LVL233-.Ltext0
	.uahalf	0x1
	.byte	0x6e
	.uaword	.LVL248-.Ltext0
	.uaword	.LVL258-.Ltext0
	.uahalf	0x1
	.byte	0x6e
	.uaword	.LVL261-.Ltext0
	.uaword	.LVL304-.Ltext0
	.uahalf	0x1
	.byte	0x6e
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL282-.Ltext0
	.uaword	.LVL283-1-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL223-.Ltext0
	.uaword	.LVL225-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL229-.Ltext0
	.uaword	.LVL231-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL248-.Ltext0
	.uaword	.LVL250-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL261-.Ltext0
	.uaword	.LVL275-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL277-.Ltext0
	.uaword	.LVL294-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL294-.Ltext0
	.uaword	.LVL296-.Ltext0
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL300-.Ltext0
	.uaword	.LVL301-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL223-.Ltext0
	.uaword	.LVL225-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL229-.Ltext0
	.uaword	.LVL230-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL248-.Ltext0
	.uaword	.LVL251-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL261-.Ltext0
	.uaword	.LVL270-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL271-.Ltext0
	.uaword	.LVL273-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL273-.Ltext0
	.uaword	.LVL274-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL277-.Ltext0
	.uaword	.LVL284-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL284-.Ltext0
	.uaword	.LVL285-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL286-.Ltext0
	.uaword	.LVL288-1-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL289-.Ltext0
	.uaword	.LVL291-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL292-.Ltext0
	.uaword	.LVL296-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL300-.Ltext0
	.uaword	.LVL301-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL287-.Ltext0
	.uaword	.LVL288-1-.Ltext0
	.uahalf	0x3
	.byte	0x84
	.sleb128 80
	.uaword	.LVL288-1-.Ltext0
	.uaword	.LVL289-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL291-.Ltext0
	.uaword	.LVL292-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL240-.Ltext0
	.uaword	.LVL248-.Ltext0
	.uahalf	0x1
	.byte	0x6e
	.uaword	.LVL309-.Ltext0
	.uaword	.LVL312-.Ltext0
	.uahalf	0x1
	.byte	0x6e
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL242-.Ltext0
	.uaword	.LVL248-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL309-.Ltext0
	.uaword	.LVL310-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST34:
	.uaword	.LVL246-.Ltext0
	.uaword	.LVL247-1-.Ltext0
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
	.uaword	.LBB2-.Ltext0
	.uaword	.LBE2-.Ltext0
	.uaword	.LBB4-.Ltext0
	.uaword	.LBE4-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB12-.Ltext0
	.uaword	.LBE12-.Ltext0
	.uaword	.LBB38-.Ltext0
	.uaword	.LBE38-.Ltext0
	.uaword	.LBB40-.Ltext0
	.uaword	.LBE40-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB16-.Ltext0
	.uaword	.LBE16-.Ltext0
	.uaword	.LBB28-.Ltext0
	.uaword	.LBE28-.Ltext0
	.uaword	.LBB29-.Ltext0
	.uaword	.LBE29-.Ltext0
	.uaword	.LBB30-.Ltext0
	.uaword	.LBE30-.Ltext0
	.uaword	.LBB34-.Ltext0
	.uaword	.LBE34-.Ltext0
	.uaword	.LBB35-.Ltext0
	.uaword	.LBE35-.Ltext0
	.uaword	.LBB36-.Ltext0
	.uaword	.LBE36-.Ltext0
	.uaword	.LBB37-.Ltext0
	.uaword	.LBE37-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB18-.Ltext0
	.uaword	.LBE18-.Ltext0
	.uaword	.LBB19-.Ltext0
	.uaword	.LBE19-.Ltext0
	.uaword	.LBB20-.Ltext0
	.uaword	.LBE20-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB31-.Ltext0
	.uaword	.LBE31-.Ltext0
	.uaword	.LBB39-.Ltext0
	.uaword	.LBE39-.Ltext0
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF1:
	.string	"flags"
.LASF2:
	.string	"local_ip"
.LASF3:
	.string	"remote_ip"
.LASF6:
	.string	"local_port"
.LASF5:
	.string	"callback_arg"
.LASF4:
	.string	"so_options"
.LASF0:
	.string	"next"
	.extern	tcp_recv_null,STT_FUNC,0
	.extern	tcp_abort,STT_FUNC,0
	.extern	tcp_rexmit,STT_FUNC,0
	.extern	tcp_tmp_pcb,STT_OBJECT,4
	.extern	tcp_pcb_purge,STT_FUNC,0
	.extern	tcp_rst,STT_FUNC,0
	.extern	tcp_abandon,STT_FUNC,0
	.extern	tcp_enqueue_flags,STT_FUNC,0
	.extern	tcp_eff_send_mss,STT_FUNC,0
	.extern	tcp_active_pcbs_changed,STT_OBJECT,1
	.extern	tcp_timer_needed,STT_FUNC,0
	.extern	tcp_alloc,STT_FUNC,0
	.extern	tcp_listen_pcbs,STT_OBJECT,4
	.extern	memp_free,STT_FUNC,0
	.extern	tcp_pcb_remove,STT_FUNC,0
	.extern	tcp_output,STT_FUNC,0
	.extern	tcp_tw_pcbs,STT_OBJECT,4
	.extern	tcp_process_refused_data,STT_FUNC,0
	.extern	tcp_active_pcbs,STT_OBJECT,4
	.extern	inet_chksum_pseudo,STT_FUNC,0
	.extern	current_iphdr_src,STT_OBJECT,4
	.extern	ip4_addr_isbroadcast,STT_FUNC,0
	.extern	current_iphdr_dest,STT_OBJECT,4
	.extern	pbuf_free,STT_FUNC,0
	.extern	lwip_stats,STT_OBJECT,344
	.extern	tcp_rexmit_fast,STT_FUNC,0
	.extern	pbuf_cat,STT_FUNC,0
	.extern	tcp_update_rcv_ann_wnd,STT_FUNC,0
	.extern	pbuf_header,STT_FUNC,0
	.extern	tcp_ticks,STT_OBJECT,4
	.extern	tcp_seg_copy,STT_FUNC,0
	.extern	Ifx_Lwip_printf,STT_FUNC,0
	.extern	tcp_send_empty_ack,STT_FUNC,0
	.extern	pbuf_clen,STT_FUNC,0
	.extern	lwip_ntohl,STT_FUNC,0
	.extern	tcp_segs_free,STT_FUNC,0
	.extern	pbuf_realloc,STT_FUNC,0
	.extern	lwip_htons,STT_FUNC,0
	.extern	tcp_seg_free,STT_FUNC,0
	.extern	lwip_ntohs,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.1.0-infineon-2.0-df254e8) 4.9.4 build on 2018-04-18"
