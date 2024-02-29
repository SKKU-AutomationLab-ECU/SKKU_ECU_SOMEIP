	.file	"IfxScuCcu.c"
.section .text,"ax",@progbits
.Ltext0:
	.align 1
	.type	IfxScuCcu_getOscFrequency.part.0, @function
IfxScuCcu_getOscFrequency.part.0:
.LFB233:
	.file 1 "0_Src/4_McHal/Tricore/Scu/Std/IfxScuCcu.c"
	.loc 1 448 0
	.loc 1 456 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24628
	ld.w	%d15, [%a15]0
	.loc 1 463 0
	mov	%d2, 0
	.loc 1 456 0
	extr.u	%d15, %d15, 28, 2
	jeq	%d15, 1, .L5
.LVL0:
	.loc 1 467 0
	ret
.LVL1:
.L5:
	.loc 1 458 0
	movh.a	%a15, hi:IfxScuCcu_xtalFrequency
	ld.w	%d2, [%a15] lo:IfxScuCcu_xtalFrequency
	utof	%d2, %d2
.LVL2:
	.loc 1 467 0
	ret
.LFE233:
	.size	IfxScuCcu_getOscFrequency.part.0, .-IfxScuCcu_getOscFrequency.part.0
	.align 1
	.global	IfxScuCcu_calculateSysPllDividers
	.type	IfxScuCcu_calculateSysPllDividers, @function
IfxScuCcu_calculateSysPllDividers:
.LFB200:
	.loc 1 94 0
.LVL3:
.LBB32:
	.loc 1 133 0
	movh	%d3, 3662
	addi	%d3, %d3, 7169
	lt.u	%d14, %d4, %d3
	mov	%d15, 2
	sel	%d14, %d14, %d15, 1
	sh	%d5, %d14, 4
	.loc 1 126 0
	movh	%d6, 3052
	.loc 1 140 0
	movh.a	%a6, 244
	.loc 1 146 0
	movh	%d12, 59432
	movh.a	%a5, 6104
.LBE32:
	.loc 1 97 0
	ld.w	%d10, [%a4] 80
.LVL4:
	mov.a	%a3, %d5
.LBB35:
	.loc 1 126 0
	addi	%d6, %d6, -15872
	.loc 1 121 0
	mov	%e0, 0
	mov	%d7, 0
	.loc 1 136 0
	mov	%d9, 16
	.loc 1 140 0
	lea	%a6, [%a6] 9217
	.loc 1 146 0
	mov	%d13, -1
	addi	%d12, %d12, 31744
	lea	%a5, [%a5] -31743
	mov.a	%a2, 15
.LVL5:
.L14:
	.loc 1 138 0
	div.u	%e2, %d10, %d9
	.loc 1 140 0
	movh	%d5, 65414
	addi	%d5, %d5, -4608
	.loc 1 138 0
	mov	%d3, 0
	.loc 1 140 0
	addx	%d5, %d2, %d5
	addc	%d2, %d3, -1
	eq	%d15, %d2, 0
	mov.d	%d3, %a6
	and.ge.u	%d15, %d5, %d3
	or.ne	%d15, %d2, 0
	jnz	%d15, .L8
	mov	%d11, %d9
	mov	%d8, 1
.LVL6:
.L13:
	.loc 1 146 0
	madd.u	%e2, %e12, %d8, %d4
	mov.d	%d5, %a5
	eq	%d15, %d3, 0
	and.ge.u	%d15, %d2, %d5
	or.ne	%d15, %d3, 0
	jnz	%d15, .L9
	mov	%d5, 1
	lea	%a15, 127
.LVL7:
.L12:
.LBB33:
	.loc 1 151 0
	div.u	%e2, %d5, %d11
	mul	%d2, %d10
	sub	%d2, %d4
.LVL8:
	.loc 1 153 0
	jz	%d2, .L17
	.loc 1 163 0
	mov	%d15, 1
	and.ge.u	%d15, %d2, %d6
	cmovn	%d0, %d15, %d5
.LVL9:
	cmovn	%d6, %d15, %d2
.LVL10:
	cmovn	%d1, %d15, %d9
.LVL11:
	cmovn	%d7, %d15, %d8
.LVL12:
.LBE33:
	.loc 1 148 0
	add	%d5, 1
.LVL13:
	loop	%a15, .L12
.LVL14:
.L9:
	mov.d	%d15, %a3
	.loc 1 142 0 discriminator 2
	add	%d8, %d14
.LVL15:
	add	%d11, %d15
	lt.u	%d15, %d8, 129
	jnz	%d15, .L13
.LVL16:
.L8:
	mov.a	%a15, %d14
	.loc 1 136 0 discriminator 2
	add	%d9, -1
.LVL17:
	sub.a	%a3, %a3, %a15
	loop	%a2, .L14
	mov	%d9, %d1
.LVL18:
	mov	%d5, %d0
	mov	%d8, %d7
	j	.L10
.LVL19:
.L17:
.LBB34:
	.loc 1 155 0
	mov	%d6, 0
.LVL20:
.L10:
.LBE34:
	.loc 1 178 0
	movh	%d2, 20972
	sh	%d4, 1
.LVL21:
	addi	%d2, %d2, -31457
	mul.u	%e2, %d4, %d2
	mov	%d15, 1
	sh	%d2, %d3, -5
	and.ge.u	%d15, %d6, %d2
	.loc 1 188 0
	mov	%d2, 1
	.loc 1 178 0
	jnz	%d15, .L15
	.loc 1 183 0
	mov	%d2, 0
	.loc 1 180 0
	add	%d5, -1
.LVL22:
	.loc 1 181 0
	add	%d9, -1
.LVL23:
	.loc 1 182 0
	add	%d8, -1
.LVL24:
	.loc 1 183 0
	st.w	[%a4] 12, %d2
	.loc 1 180 0
	st.b	[%a4] 9, %d5
	.loc 1 181 0
	st.b	[%a4] 8, %d9
	.loc 1 182 0
	st.b	[%a4] 10, %d8
	.loc 1 184 0
	st.b	[%a4]0, %d15
.LBE35:
	.loc 1 95 0
	mov	%d2, 0
.LVL25:
.L15:
	.loc 1 193 0
	ret
.LFE200:
	.size	IfxScuCcu_calculateSysPllDividers, .-IfxScuCcu_calculateSysPllDividers
	.align 1
	.global	IfxScuCcu_getOsc0Frequency
	.type	IfxScuCcu_getOsc0Frequency, @function
IfxScuCcu_getOsc0Frequency:
.LFB210:
	.loc 1 443 0
	.loc 1 444 0
	movh.a	%a15, hi:IfxScuCcu_xtalFrequency
	ld.w	%d2, [%a15] lo:IfxScuCcu_xtalFrequency
	.loc 1 445 0
	utof	%d2, %d2
	ret
.LFE210:
	.size	IfxScuCcu_getOsc0Frequency, .-IfxScuCcu_getOsc0Frequency
	.align 1
	.global	IfxScuCcu_getOscFrequency
	.type	IfxScuCcu_getOscFrequency, @function
IfxScuCcu_getOscFrequency:
.LFB211:
	.loc 1 449 0
	.loc 1 452 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24628
	ld.w	%d15, [%a15]0
	extr.u	%d15, %d15, 28, 2
	jz	%d15, .L24
	j	IfxScuCcu_getOscFrequency.part.0
.LVL26:
.L24:
	.loc 1 467 0
	movh	%d2, 19647
	addi	%d2, %d2, -17376
	ret
.LFE211:
	.size	IfxScuCcu_getOscFrequency, .-IfxScuCcu_getOscFrequency
	.align 1
	.global	IfxScuCcu_getPllErayFrequency
	.type	IfxScuCcu_getPllErayFrequency, @function
IfxScuCcu_getPllErayFrequency:
.LFB212:
	.loc 1 471 0
.LVL27:
.LBB36:
.LBB37:
	.loc 1 452 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24628
	ld.w	%d15, [%a15]0
	.loc 1 454 0
	movh	%d2, 19647
	.loc 1 452 0
	extr.u	%d15, %d15, 28, 2
	.loc 1 454 0
	addi	%d2, %d2, -17376
	.loc 1 452 0
	jnz	%d15, .L32
.LVL28:
.LBE37:
.LBE36:
	.loc 1 478 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24576
	ld.w	%d15, [%a15] 36
	jnz.t	%d15, 0, .L33
.L27:
	.loc 1 483 0
	ld.w	%d15, [%a15] 36
	jnz.t	%d15, 3, .L34
	.loc 1 491 0
	ld.w	%d3, [%a15] 40
	ld.w	%d15, [%a15] 44
	extr.u	%d3, %d3, 9, 5
	and	%d15, %d15, 127
	add	%d3, 1
	itof	%d3, %d3
	add	%d15, 1
	mul.f	%d2, %d3, %d2
.LVL29:
	itof	%d15, %d15
	div.f	%d2, %d2, %d15
.LVL30:
	.loc 1 495 0
	ret
.LVL31:
.L32:
	.loc 1 478 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24576
.LBB39:
.LBB38:
	call	IfxScuCcu_getOscFrequency.part.0
.LVL32:
.LBE38:
.LBE39:
	ld.w	%d15, [%a15] 36
	jz.t	%d15, 0, .L27
.L33:
	.loc 1 481 0
	ld.w	%d15, [%a15] 44
	extr.u	%d15, %d15, 16, 7
	add	%d15, 1
	itof	%d15, %d15
	div.f	%d2, %d2, %d15
.LVL33:
	ret
.LVL34:
.L34:
	.loc 1 486 0
	ld.w	%d2, [%a15] 44
.LVL35:
	and	%d2, %d2, 127
	add	%d2, 1
	itof	%d15, %d2
	movh	%d2, 19647
	addi	%d2, %d2, -17376
	div.f	%d2, %d2, %d15
.LVL36:
	ret
.LFE212:
	.size	IfxScuCcu_getPllErayFrequency, .-IfxScuCcu_getPllErayFrequency
	.align 1
	.global	IfxScuCcu_getPllErayVcoFrequency
	.type	IfxScuCcu_getPllErayVcoFrequency, @function
IfxScuCcu_getPllErayVcoFrequency:
.LFB213:
	.loc 1 499 0
	.loc 1 502 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24612
	ld.w	%d15, [%a15]0
	.loc 1 505 0
	movh	%d2, 19647
	addi	%d2, %d2, -17376
	.loc 1 502 0
	jnz.t	%d15, 3, .L36
.LBB40:
.LBB41:
	.loc 1 452 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24628
	ld.w	%d15, [%a15]0
	extr.u	%d15, %d15, 28, 2
	jnz	%d15, .L42
.L37:
.LVL37:
.LBE41:
.LBE40:
	.loc 1 510 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24616
	ld.w	%d3, [%a15]0
	ld.w	%d15, [%a15]0
	extr.u	%d3, %d3, 9, 5
	extr.u	%d15, %d15, 24, 4
	add	%d3, 1
	itof	%d3, %d3
	add	%d15, 1
	mul.f	%d2, %d3, %d2
.LVL38:
	itof	%d15, %d15
	div.f	%d2, %d2, %d15
.LVL39:
.L36:
	.loc 1 514 0
	ret
.LVL40:
.L42:
.LBB43:
.LBB42:
	call	IfxScuCcu_getOscFrequency.part.0
.LVL41:
	j	.L37
.LBE42:
.LBE43:
.LFE213:
	.size	IfxScuCcu_getPllErayVcoFrequency, .-IfxScuCcu_getPllErayVcoFrequency
	.align 1
	.global	IfxScuCcu_getPllFrequency
	.type	IfxScuCcu_getPllFrequency, @function
IfxScuCcu_getPllFrequency:
.LFB214:
	.loc 1 518 0
.LVL42:
.LBB50:
.LBB51:
	.loc 1 452 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24628
	ld.w	%d15, [%a15]0
	.loc 1 454 0
	movh	%d2, 19647
	.loc 1 452 0
	extr.u	%d15, %d15, 28, 2
	.loc 1 454 0
	addi	%d2, %d2, -17376
	.loc 1 452 0
	jnz	%d15, .L50
.LVL43:
.LBE51:
.LBE50:
	.loc 1 525 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24576
	ld.w	%d15, [%a15] 20
	jnz.t	%d15, 0, .L51
.L45:
	.loc 1 530 0
	ld.w	%d15, [%a15] 20
	jnz.t	%d15, 3, .L52
	.loc 1 538 0
	ld.w	%d4, [%a15] 24
	ld.w	%d15, [%a15] 28
	extr.u	%d4, %d4, 9, 7
	and	%d3, %d15, 127
	ld.w	%d15, [%a15] 24
	add	%d4, 1
	extr.u	%d15, %d15, 24, 4
	itof	%d4, %d4
	add	%d15, 1
	madd	%d15, %d15, %d3, %d15
	mul.f	%d2, %d4, %d2
.LVL44:
	itof	%d15, %d15
	div.f	%d2, %d2, %d15
.LVL45:
	.loc 1 542 0
	ret
.LVL46:
.L50:
	.loc 1 525 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24576
.LBB53:
.LBB52:
	call	IfxScuCcu_getOscFrequency.part.0
.LVL47:
.LBE52:
.LBE53:
	ld.w	%d15, [%a15] 20
	jz.t	%d15, 0, .L45
.L51:
	.loc 1 528 0
	ld.w	%d15, [%a15] 28
	extr.u	%d15, %d15, 16, 7
	add	%d15, 1
	itof	%d15, %d15
	div.f	%d2, %d2, %d15
.LVL48:
	ret
.LVL49:
.L52:
.LBB54:
.LBB55:
	.loc 1 533 0
	ld.w	%d2, [%a15] 28
.LVL50:
	and	%d2, %d2, 127
	add	%d2, 1
	itof	%d15, %d2
	movh	%d2, 19647
	addi	%d2, %d2, -17376
	div.f	%d2, %d2, %d15
.LVL51:
	ret
.LBE55:
.LBE54:
.LFE214:
	.size	IfxScuCcu_getPllFrequency, .-IfxScuCcu_getPllFrequency
	.align 1
	.global	IfxScuCcu_getPllVcoFrequency
	.type	IfxScuCcu_getPllVcoFrequency, @function
IfxScuCcu_getPllVcoFrequency:
.LFB215:
	.loc 1 546 0
	.loc 1 549 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24596
	ld.w	%d15, [%a15]0
	.loc 1 552 0
	movh	%d2, 19647
	addi	%d2, %d2, -17376
	.loc 1 549 0
	jnz.t	%d15, 3, .L54
.LBB56:
.LBB57:
	.loc 1 452 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24628
	ld.w	%d15, [%a15]0
	extr.u	%d15, %d15, 28, 2
	jnz	%d15, .L60
.L55:
.LVL52:
.LBE57:
.LBE56:
	.loc 1 557 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24600
	ld.w	%d3, [%a15]0
	ld.w	%d15, [%a15]0
	extr.u	%d3, %d3, 9, 7
	extr.u	%d15, %d15, 24, 4
	add	%d3, 1
	itof	%d3, %d3
	add	%d15, 1
	mul.f	%d2, %d3, %d2
.LVL53:
	itof	%d15, %d15
	div.f	%d2, %d2, %d15
.LVL54:
.L54:
	.loc 1 561 0
	ret
.LVL55:
.L60:
.LBB59:
.LBB58:
	call	IfxScuCcu_getOscFrequency.part.0
.LVL56:
	j	.L55
.LBE58:
.LBE59:
.LFE215:
	.size	IfxScuCcu_getPllVcoFrequency, .-IfxScuCcu_getPllVcoFrequency
	.align 1
	.global	IfxScuCcu_getAdcFrequency
	.type	IfxScuCcu_getAdcFrequency, @function
IfxScuCcu_getAdcFrequency:
.LFB201:
	.loc 1 197 0
.LVL57:
	.loc 1 199 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	ld.w	%d2, [%a15]0
.LVL58:
	.loc 1 201 0
	movh	%d15, 3072
	and	%d15, %d2
	movh	%d2, 1024
.LVL59:
	jeq	%d15, %d2, .L66
	.loc 1 205 0
	movh	%d2, 2048
	jeq	%d15, %d2, .L67
	.loc 1 209 0
	movh	%d3, 3072
	.loc 1 211 0
	movh	%d2, 17096
	.loc 1 209 0
	jeq	%d15, %d3, .L63
	.loc 1 215 0
	mov	%d2, 0
.L63:
.LVL60:
	.loc 1 219 0
	ret
.LVL61:
.L66:
.LBB60:
.LBB61:
	.file 2 "0_Src/4_McHal/Tricore/Scu/Std/IfxScuCcu.h"
	.loc 2 1112 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24604
	call	IfxScuCcu_getPllVcoFrequency
.LVL62:
	ld.w	%d15, [%a15]0
	extr.u	%d15, %d15, 8, 7
	add	%d15, 1
	itof	%d15, %d15
	div.f	%d2, %d2, %d15
.LVL63:
.LBE61:
.LBE60:
	ret
.LVL64:
.L67:
.LBB62:
.LBB63:
	.loc 2 1103 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24620
	call	IfxScuCcu_getPllErayVcoFrequency
.LVL65:
	ld.w	%d15, [%a15]0
	extr.u	%d15, %d15, 8, 4
	add	%d15, 1
	itof	%d15, %d15
	div.f	%d2, %d2, %d15
.LVL66:
.LBE63:
.LBE62:
	ret
.LFE201:
	.size	IfxScuCcu_getAdcFrequency, .-IfxScuCcu_getAdcFrequency
	.align 1
	.global	IfxScuCcu_getSourceFrequency
	.type	IfxScuCcu_getSourceFrequency, @function
IfxScuCcu_getSourceFrequency:
.LFB216:
	.loc 1 565 0
	.loc 1 568 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	ld.w	%d15, [%a15]0
	extr.u	%d15, %d15, 28, 2
	jz	%d15, .L72
	jne	%d15, 1, .L73
	.loc 1 574 0
	j	IfxScuCcu_getPllFrequency
.LVL67:
.L73:
	.loc 1 577 0
	mov	%d2, 0
	ret
.L72:
	.loc 1 571 0
	movh	%d2, 19647
	addi	%d2, %d2, -17376
.LVL68:
	.loc 1 582 0
	ret
.LFE216:
	.size	IfxScuCcu_getSourceFrequency, .-IfxScuCcu_getSourceFrequency
	.align 1
	.type	IfxScuCcu_wait, @function
IfxScuCcu_wait:
.LFB232:
	.loc 1 1369 0
.LVL69:
.LBB64:
.LBB65:
	.loc 2 1126 0
	movh.a	%a15, 61443
.LBE65:
.LBE64:
	.loc 1 1369 0
	mov	%d15, %d4
.LBB67:
.LBB66:
	.loc 2 1126 0
	lea	%a15, [%a15] 24628
	call	IfxScuCcu_getSourceFrequency
.LVL70:
	ld.w	%d4, [%a15]0
	extr.u	%d4, %d4, 8, 4
	itof	%d4, %d4
	div.f	%d2, %d2, %d4
.LBE66:
.LBE67:
	.loc 1 1370 0
	mul.f	%d4, %d15, %d2
	.loc 1 1371 0
	ld.w	%d2, 0xf0000010
	.loc 1 1370 0
	ftouz	%d4, %d4
.LVL71:
.L75:
	.loc 1 1373 0 discriminator 1
	ld.w	%d15, 0xf0000010
	sub	%d15, %d2
	jlt.u	%d15, %d4, .L75
	.loc 1 1382 0
	ret
.LFE232:
	.size	IfxScuCcu_wait, .-IfxScuCcu_wait
	.align 1
	.global	IfxScuCcu_getBbbFrequency
	.type	IfxScuCcu_getBbbFrequency, @function
IfxScuCcu_getBbbFrequency:
.LFB204:
	.loc 1 259 0
	.loc 1 264 0
	movh.a	%a15, 61443
	.loc 1 262 0
	call	IfxScuCcu_getSourceFrequency
.LVL72:
	.loc 1 264 0
	lea	%a15, [%a15] 24624
	ld.w	%d3, [%a15]0
	.loc 1 262 0
	mov	%d15, %d2
.LVL73:
	.loc 1 264 0
	extr.u	%d3, %d3, 12, 4
	.loc 1 291 0
	mov	%d2, 0
.LVL74:
	.loc 1 264 0
	jge.u	%d3, 5, .L78
	movh.a	%a15, hi:.L80
	lea	%a15, [%a15] lo:.L80
	addsc.a	%a15, %a15, %d3, 2
	ji	%a15
	.align 2
	.align 2
.L80:
	.code32
	j	.L79
	.code32
	j	.L81
	.code32
	j	.L82
	.code32
	j	.L83
	.code32
	j	.L84
.L84:
	.loc 1 288 0
	movh	%d2, 17264
	div.f	%d2, %d15, %d2
.LVL75:
.L78:
	.loc 1 296 0
	ret
.LVL76:
.L83:
	.loc 1 285 0
	movh	%d2, 17136
	div.f	%d2, %d15, %d2
.LVL77:
	.loc 1 286 0
	ret
.LVL78:
.L79:
	.loc 1 268 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24640
	ld.w	%d3, [%a15]0
	.loc 1 270 0
	mov	%d2, 0
	.loc 1 268 0
	and	%d3, %d3, 15
	jz	%d3, .L78
	.loc 1 274 0
	ld.w	%d2, [%a15]0
	and	%d2, %d2, 15
	itof	%d2, %d2
	div.f	%d2, %d15, %d2
.LVL79:
	ret
.LVL80:
.L81:
	.loc 1 279 0
	movh	%d2, 16880
	div.f	%d2, %d15, %d2
.LVL81:
	.loc 1 280 0
	ret
.LVL82:
.L82:
	.loc 1 282 0
	movh	%d2, 17008
	div.f	%d2, %d15, %d2
.LVL83:
	.loc 1 283 0
	ret
.LFE204:
	.size	IfxScuCcu_getBbbFrequency, .-IfxScuCcu_getBbbFrequency
	.align 1
	.global	IfxScuCcu_getMaxFrequency
	.type	IfxScuCcu_getMaxFrequency, @function
IfxScuCcu_getMaxFrequency:
.LFB208:
	.loc 1 377 0
	.loc 1 382 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	.loc 1 380 0
	call	IfxScuCcu_getSourceFrequency
.LVL84:
	.loc 1 382 0
	ld.w	%d15, [%a15]0
	extr.u	%d15, %d15, 12, 4
	jlt.u	%d15, 5, .L100
	.loc 1 409 0
	mov	%d2, 0
.LVL85:
.L89:
	.loc 1 414 0
	ret
.LVL86:
.L100:
	.loc 1 382 0
	movh.a	%a15, hi:.L91
	lea	%a15, [%a15] lo:.L91
	addsc.a	%a15, %a15, %d15, 2
	ji	%a15
	.align 2
	.align 2
.L91:
	.code32
	j	.L90
	.code32
	j	.L92
	.code32
	j	.L93
	.code32
	j	.L94
	.code32
	j	.L95
.L94:
	.loc 1 403 0
	movh	%d15, 17008
	div.f	%d2, %d2, %d15
.LVL87:
	.loc 1 404 0
	ret
.LVL88:
.L95:
	.loc 1 406 0
	movh	%d15, 17136
	div.f	%d2, %d2, %d15
.LVL89:
	.loc 1 407 0
	ret
.LVL90:
.L90:
	.loc 1 386 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24652
	ld.w	%d15, [%a15]0
	and	%d15, %d15, 15
	jz	%d15, .L89
	.loc 1 392 0
	ld.w	%d15, [%a15]0
	and	%d15, %d15, 15
	itof	%d15, %d15
	div.f	%d2, %d2, %d15
.LVL91:
	ret
.LVL92:
.L92:
	.loc 1 397 0
	movh	%d15, 16752
	div.f	%d2, %d2, %d15
.LVL93:
	.loc 1 398 0
	ret
.LVL94:
.L93:
	.loc 1 400 0
	movh	%d15, 16880
	div.f	%d2, %d2, %d15
.LVL95:
	.loc 1 401 0
	ret
.LFE208:
	.size	IfxScuCcu_getMaxFrequency, .-IfxScuCcu_getMaxFrequency
	.align 1
	.global	IfxScuCcu_getBaud1Frequency
	.type	IfxScuCcu_getBaud1Frequency, @function
IfxScuCcu_getBaud1Frequency:
.LFB202:
	.loc 1 223 0
	.loc 1 225 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	ld.w	%d15, [%a15]0
.LVL96:
	.loc 1 229 0
	mov	%d2, 0
	.loc 1 225 0
	and	%d8, %d15, 15
.LVL97:
	.loc 1 227 0
	jnz	%d8, .L105
.LVL98:
	.loc 1 237 0
	ret
.LVL99:
.L105:
	.loc 1 233 0
	call	IfxScuCcu_getMaxFrequency
.LVL100:
	itof	%d8, %d8
	div.f	%d2, %d2, %d8
.LVL101:
	.loc 1 237 0
	ret
.LFE202:
	.size	IfxScuCcu_getBaud1Frequency, .-IfxScuCcu_getBaud1Frequency
	.align 1
	.global	IfxScuCcu_getBaud2Frequency
	.type	IfxScuCcu_getBaud2Frequency, @function
IfxScuCcu_getBaud2Frequency:
.LFB203:
	.loc 1 241 0
	.loc 1 243 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	ld.w	%d15, [%a15]0
.LVL102:
	.loc 1 247 0
	mov	%d2, 0
	.loc 1 243 0
	extr.u	%d8, %d15, 4, 4
.LVL103:
	.loc 1 245 0
	and	%d15, %d15, 240
.LVL104:
	jnz	%d15, .L110
.LVL105:
	.loc 1 255 0
	ret
.LVL106:
.L110:
	.loc 1 251 0
	call	IfxScuCcu_getMaxFrequency
.LVL107:
	itof	%d8, %d8
	div.f	%d2, %d2, %d8
.LVL108:
	.loc 1 255 0
	ret
.LFE203:
	.size	IfxScuCcu_getBaud2Frequency, .-IfxScuCcu_getBaud2Frequency
	.align 1
	.global	IfxScuCcu_getSpbFrequency
	.type	IfxScuCcu_getSpbFrequency, @function
IfxScuCcu_getSpbFrequency:
.LFB217:
	.loc 1 586 0
	.loc 1 591 0
	movh.a	%a15, 61443
	.loc 1 589 0
	call	IfxScuCcu_getSourceFrequency
.LVL109:
	.loc 1 591 0
	lea	%a15, [%a15] 24624
	ld.w	%d3, [%a15]0
	.loc 1 589 0
	mov	%d15, %d2
.LVL110:
	.loc 1 591 0
	extr.u	%d3, %d3, 12, 4
	.loc 1 618 0
	mov	%d2, 0
.LVL111:
	.loc 1 591 0
	jge.u	%d3, 5, .L112
	movh.a	%a15, hi:.L114
	lea	%a15, [%a15] lo:.L114
	addsc.a	%a15, %a15, %d3, 2
	ji	%a15
	.align 2
	.align 2
.L114:
	.code32
	j	.L113
	.code32
	j	.L115
	.code32
	j	.L116
	.code32
	j	.L117
	.code32
	j	.L118
.L118:
	.loc 1 615 0
	movh	%d2, 17264
	div.f	%d2, %d15, %d2
.LVL112:
.L112:
	.loc 1 623 0
	ret
.LVL113:
.L117:
	.loc 1 612 0
	movh	%d2, 17136
	div.f	%d2, %d15, %d2
.LVL114:
	.loc 1 613 0
	ret
.LVL115:
.L113:
	.loc 1 595 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	ld.w	%d3, [%a15]0
	.loc 1 597 0
	mov	%d2, 0
	.loc 1 595 0
	extr.u	%d3, %d3, 16, 4
	jz	%d3, .L112
	.loc 1 601 0
	ld.w	%d2, [%a15]0
	extr.u	%d2, %d2, 16, 4
	itof	%d2, %d2
	div.f	%d2, %d15, %d2
.LVL116:
	ret
.LVL117:
.L115:
	.loc 1 606 0
	movh	%d2, 16880
	div.f	%d2, %d15, %d2
.LVL118:
	.loc 1 607 0
	ret
.LVL119:
.L116:
	.loc 1 609 0
	movh	%d2, 17008
	div.f	%d2, %d15, %d2
.LVL120:
	.loc 1 610 0
	ret
.LFE217:
	.size	IfxScuCcu_getSpbFrequency, .-IfxScuCcu_getSpbFrequency
	.align 1
	.global	IfxScuCcu_getModuleFrequency
	.type	IfxScuCcu_getModuleFrequency, @function
IfxScuCcu_getModuleFrequency:
.LFB209:
	.loc 1 418 0
	.loc 1 422 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24632
	ld.w	%d15, [%a15]0
.LVL121:
	.loc 1 423 0
	call	IfxScuCcu_getSpbFrequency
.LVL122:
	mov	%d3, %d2
	.loc 1 425 0
	mov.u	%d2, 49152
	.loc 1 422 0
	insert	%d8, %d15, 0, 10, 22
.LVL123:
	.loc 1 425 0
	and	%d15, %d2
.LVL124:
	mov	%d2, 16384
	jeq	%d15, %d2, .L126
	.loc 1 429 0
	mov.u	%d4, 32768
	.loc 1 435 0
	mov	%d2, 0
	.loc 1 429 0
	jeq	%d15, %d4, .L127
.LVL125:
	.loc 1 439 0
	ret
.LVL126:
.L127:
	.loc 1 431 0
	itof	%d2, %d8
	movh	%d15, 14976
	mul.f	%d2, %d2, %d3
	mul.f	%d2, %d2, %d15
.LVL127:
	.loc 1 439 0
	ret
.LVL128:
.L126:
	.loc 1 427 0
	mov	%d2, 1024
	sub	%d2, %d8
	itof	%d2, %d2
	div.f	%d2, %d3, %d2
.LVL129:
	ret
.LFE209:
	.size	IfxScuCcu_getModuleFrequency, .-IfxScuCcu_getModuleFrequency
	.align 1
	.global	IfxScuCcu_getSriFrequency
	.type	IfxScuCcu_getSriFrequency, @function
IfxScuCcu_getSriFrequency:
.LFB218:
	.loc 1 627 0
	.loc 1 632 0
	movh.a	%a15, 61443
	.loc 1 630 0
	call	IfxScuCcu_getSourceFrequency
.LVL130:
	.loc 1 632 0
	lea	%a15, [%a15] 24624
	ld.w	%d3, [%a15]0
	.loc 1 630 0
	mov	%d15, %d2
.LVL131:
	.loc 1 632 0
	extr.u	%d3, %d3, 12, 4
	.loc 1 659 0
	mov	%d2, 0
.LVL132:
	.loc 1 632 0
	jge.u	%d3, 5, .L129
	movh.a	%a15, hi:.L131
	lea	%a15, [%a15] lo:.L131
	addsc.a	%a15, %a15, %d3, 2
	ji	%a15
	.align 2
	.align 2
.L131:
	.code32
	j	.L130
	.code32
	j	.L132
	.code32
	j	.L133
	.code32
	j	.L134
	.code32
	j	.L135
.L135:
	.loc 1 656 0
	movh	%d2, 17264
	div.f	%d2, %d15, %d2
.LVL133:
.L129:
	.loc 1 664 0
	ret
.LVL134:
.L134:
	.loc 1 653 0
	movh	%d2, 17136
	div.f	%d2, %d15, %d2
.LVL135:
	.loc 1 654 0
	ret
.LVL136:
.L130:
	.loc 1 636 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	ld.w	%d3, [%a15]0
	.loc 1 638 0
	mov	%d2, 0
	.loc 1 636 0
	extr.u	%d3, %d3, 8, 4
	jz	%d3, .L129
	.loc 1 642 0
	ld.w	%d2, [%a15]0
	extr.u	%d2, %d2, 8, 4
	itof	%d2, %d2
	div.f	%d2, %d15, %d2
.LVL137:
	ret
.LVL138:
.L132:
	.loc 1 647 0
	movh	%d2, 16880
	div.f	%d2, %d15, %d2
.LVL139:
	.loc 1 648 0
	ret
.LVL140:
.L133:
	.loc 1 650 0
	movh	%d2, 17008
	div.f	%d2, %d15, %d2
.LVL141:
	.loc 1 651 0
	ret
.LFE218:
	.size	IfxScuCcu_getSriFrequency, .-IfxScuCcu_getSriFrequency
	.align 1
	.global	IfxScuCcu_getCpuFrequency
	.type	IfxScuCcu_getCpuFrequency, @function
IfxScuCcu_getCpuFrequency:
.LFB205:
	.loc 1 300 0
.LVL142:
	.loc 1 300 0
	mov	%d15, %d4
	.loc 1 301 0
	call	IfxScuCcu_getSriFrequency
.LVL143:
	.loc 1 304 0
	jeq	%d15, 1, .L141
	jz	%d15, .L142
	jne	%d15, 2, .L151
	.loc 1 313 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24712
	ld.w	%d15, [%a15]0
.LVL144:
.L144:
	.loc 1 321 0
	jz	%d15, .L140
	.loc 1 323 0
	sh	%d15, -6
.LVL145:
	itof	%d15, %d15
	mul.f	%d2, %d2, %d15
.LVL146:
	ret
.LVL147:
.L151:
	.loc 1 317 0
	mov	%d2, 0
.LVL148:
.L140:
	.loc 1 327 0
	ret
.LVL149:
.L142:
	.loc 1 307 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24704
	ld.w	%d15, [%a15]0
.LVL150:
	.loc 1 308 0
	j	.L144
.LVL151:
.L141:
	.loc 1 310 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24708
	ld.w	%d15, [%a15]0
.LVL152:
	.loc 1 311 0
	j	.L144
.LFE205:
	.size	IfxScuCcu_getCpuFrequency, .-IfxScuCcu_getCpuFrequency
	.align 1
	.global	IfxScuCcu_getFsi2Frequency
	.type	IfxScuCcu_getFsi2Frequency, @function
IfxScuCcu_getFsi2Frequency:
.LFB206:
	.loc 1 331 0
	.loc 1 333 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	ld.w	%d15, [%a15]0
.LVL153:
	.loc 1 335 0
	movh	%d3, 48
	and	%d3, %d15
	.loc 1 333 0
	extr.u	%d8, %d15, 20, 2
.LVL154:
	.loc 1 337 0
	mov	%d2, 0
	.loc 1 335 0
	jnz	%d3, .L156
.LVL155:
.L153:
	.loc 1 350 0
	ret
.LVL156:
.L156:
	.loc 1 341 0
	call	IfxScuCcu_getSriFrequency
.LVL157:
	.loc 1 343 0
	mov	%d3, 3840
	and	%d15, %d3
.LVL158:
	addi	%d15, %d15, -256
	andn	%d15, %d15, ~(-257)
	jnz	%d15, .L153
	.loc 1 345 0
	itof	%d8, %d8
	div.f	%d2, %d2, %d8
.LVL159:
	.loc 1 350 0
	ret
.LFE206:
	.size	IfxScuCcu_getFsi2Frequency, .-IfxScuCcu_getFsi2Frequency
	.align 1
	.global	IfxScuCcu_getFsiFrequency
	.type	IfxScuCcu_getFsiFrequency, @function
IfxScuCcu_getFsiFrequency:
.LFB207:
	.loc 1 354 0
	.loc 1 356 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	ld.w	%d15, [%a15]0
.LVL160:
	.loc 1 358 0
	movh	%d3, 768
	and	%d3, %d15
	.loc 1 356 0
	extr.u	%d8, %d15, 24, 2
.LVL161:
	.loc 1 360 0
	mov	%d2, 0
	.loc 1 358 0
	jnz	%d3, .L161
.LVL162:
.L158:
	.loc 1 373 0
	ret
.LVL163:
.L161:
	.loc 1 364 0
	call	IfxScuCcu_getSriFrequency
.LVL164:
	.loc 1 366 0
	mov	%d3, 3840
	and	%d15, %d3
.LVL165:
	addi	%d15, %d15, -256
	andn	%d15, %d15, ~(-257)
	jnz	%d15, .L158
	.loc 1 368 0
	itof	%d8, %d8
	div.f	%d2, %d2, %d8
.LVL166:
	.loc 1 373 0
	ret
.LFE207:
	.size	IfxScuCcu_getFsiFrequency, .-IfxScuCcu_getFsiFrequency
	.align 1
	.global	IfxScuCcu_init
	.type	IfxScuCcu_init, @function
IfxScuCcu_init:
.LFB219:
	.loc 1 668 0
.LVL167:
	.loc 1 673 0
	ld.w	%d2, [%a4] 80
	movh.a	%a13, hi:IfxScuCcu_xtalFrequency
	.loc 1 668 0
	mov.aa	%a12, %a4
	.loc 1 673 0
	st.w	[%a13] lo:IfxScuCcu_xtalFrequency, %d2
	.loc 1 675 0
	call	IfxScuWdt_getCpuWatchdogPassword
.LVL168:
	mov	%d10, %d2
.LVL169:
	.loc 1 681 0
	movh.a	%a15, 61443
	.loc 1 676 0
	call	IfxScuWdt_getSafetyWatchdogPassword
.LVL170:
	.loc 1 681 0
	lea	%a15, [%a15] 24880
	.loc 1 680 0
	mov	%d4, %d10
	.loc 1 676 0
	mov	%d8, %d2
.LVL171:
	.loc 1 680 0
	call	IfxScuWdt_clearCpuEndinit
.LVL172:
	.loc 1 681 0
	ld.w	%d12, [%a15]0
	.loc 1 682 0
	ld.w	%d15, [%a15]0
	.loc 1 683 0
	mov	%d4, %d10
	.loc 1 682 0
	or	%d15, %d15, 8
	.loc 1 681 0
	extr.u	%d12, %d12, 3, 1
.LVL173:
	.loc 1 682 0
	st.w	[%a15]0, %d15
	.loc 1 683 0
	call	IfxScuWdt_setCpuEndinit
.LVL174:
	.loc 1 688 0
	mov	%d4, %d8
	call	IfxScuWdt_clearSafetyEndinit
.LVL175:
	.loc 1 690 0
	movh.a	%a2, 61443
	lea	%a2, [%a2] 24624
.L163:
	.loc 1 690 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a2]0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	jltz	%d15, .L163
	.loc 1 696 0 is_stmt 1
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 0, 28, 2
	st.w	[%a15]0, %d15
	.loc 1 697 0
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 15, 30, 1
	st.w	[%a15]0, %d15
	.loc 1 700 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24600
	ld.w	%d15, [%a15]0
	or	%d15, %d15, 16
	st.w	[%a15]0, %d15
	.loc 1 704 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
.L164:
	.loc 1 704 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a15]0
	jltz	%d15, .L164
	.loc 1 710 0 is_stmt 1
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24628
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 1, 28, 2
	st.w	[%a15]0, %d15
	.loc 1 711 0
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 15, 30, 1
	st.w	[%a15]0, %d15
.LVL176:
.LBB79:
.LBB80:
	.loc 1 1048 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24592
	.loc 1 1044 0
	call	IfxScuWdt_getCpuWatchdogPassword
.LVL177:
	.loc 1 1048 0
	ld.w	%d15, [%a15]0
	.loc 1 1044 0
	mov	%d9, %d2
.LVL178:
	.loc 1 1048 0
	andn	%d15, %d15, ~(-97)
	.loc 1 1059 0
	mov.aa	%a2, %a15
	.loc 1 1048 0
	st.w	[%a15]0, %d15
	.loc 1 1054 0
	ld.w	%d6, [%a13] lo:IfxScuCcu_xtalFrequency
	movh	%d15, 27488
	addi	%d15, %d15, -13717
	mul.u	%e6, %d6, %d15
	ld.w	%d2, [%a15]0
.LVL179:
	sh	%d15, %d7, -20
	add	%d15, -1
	insert	%d15, %d2, %d15, 16, 5
	st.w	[%a15]0, %d15
	.loc 1 1056 0
	ld.w	%d15, [%a15]0
	or	%d15, %d15, 4
	st.w	[%a15]0, %d15
	.loc 1 1059 0
	lea	%a15, 639
.LVL180:
.L165:
	ld.w	%d15, [%a2]0
	jz.t	%d15, 1, .L167
	ld.w	%d15, [%a2]0
	jnz.t	%d15, 8, .L208
.L167:
	loop	%a15, .L165
.LVL181:
	.loc 1 1073 0
	movh.a	%a15, 61443
	.loc 1 1072 0
	mov	%d4, %d9
	.loc 1 1073 0
	lea	%a15, [%a15] 24876
	.loc 1 1072 0
	call	IfxScuWdt_clearCpuEndinit
.LVL182:
	.loc 1 1073 0
	ld.w	%d15, [%a15]0
	.loc 1 1075 0
	mov	%d4, %d9
	.loc 1 1073 0
	or	%d15, %d15, 8
	.loc 1 1065 0
	mov	%d9, 1
.LVL183:
	.loc 1 1073 0
	st.w	[%a15]0, %d15
	.loc 1 1074 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24880
	ld.w	%d15, [%a15]0
	or	%d15, %d15, 8
	st.w	[%a15]0, %d15
	.loc 1 1075 0
	call	IfxScuWdt_setCpuEndinit
.LVL184:
.LBE80:
.LBE79:
	.loc 1 715 0
	mov	%d4, %d8
	call	IfxScuWdt_setSafetyEndinit
.LVL185:
	j	.L177
.LVL186:
.L208:
.LBB83:
.LBB81:
	.loc 1 1073 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24876
	.loc 1 1072 0
	mov	%d4, %d9
	call	IfxScuWdt_clearCpuEndinit
.LVL187:
	.loc 1 1073 0
	ld.w	%d15, [%a15]0
	.loc 1 1075 0
	mov	%d4, %d9
	.loc 1 1073 0
	or	%d15, %d15, 8
	st.w	[%a15]0, %d15
	.loc 1 1074 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24880
	ld.w	%d15, [%a15]0
	or	%d15, %d15, 8
	st.w	[%a15]0, %d15
	.loc 1 1075 0
	call	IfxScuWdt_setCpuEndinit
.LVL188:
.LBE81:
.LBE83:
	.loc 1 715 0
	mov	%d4, %d8
	call	IfxScuWdt_setSafetyEndinit
.LVL189:
.LBB84:
	.loc 1 727 0
	mov	%d4, %d8
	.loc 1 729 0
	movh.a	%a15, 61443
	.loc 1 727 0
	call	IfxScuWdt_clearSafetyEndinit
.LVL190:
	.loc 1 729 0
	lea	%a15, [%a15] 24596
.L169:
	.loc 1 729 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a15]0
	jz.t	%d15, 5, .L169
	.loc 1 735 0 is_stmt 1
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24604
	ld.w	%d2, [%a15]0
	ld.bu	%d15, [%a12] 10
	.loc 1 754 0
	movh	%d4, 14418
	.loc 1 735 0
	insert	%d15, %d2, %d15, 0, 7
	.loc 1 754 0
	addi	%d4, %d4, -18665
	.loc 1 735 0
	st.w	[%a15]0, %d15
	.loc 1 739 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24600
	ld.w	%d2, [%a15]0
	ld.bu	%d15, [%a12] 8
	insert	%d15, %d2, %d15, 24, 4
	st.w	[%a15]0, %d15
	.loc 1 740 0
	ld.w	%d2, [%a15]0
	ld.bu	%d15, [%a12] 9
	insert	%d15, %d2, %d15, 9, 7
	st.w	[%a15]0, %d15
	.loc 1 744 0
	ld.w	%d15, [%a15]0
	or	%d15, %d15, 64
	st.w	[%a15]0, %d15
	.loc 1 746 0
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 0, 16, 1
	st.w	[%a15]0, %d15
	.loc 1 748 0
	ld.w	%d15, [%a15]0
	or	%d15, %d15, 32
	st.w	[%a15]0, %d15
	.loc 1 749 0
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 15, 16, 1
	st.w	[%a15]0, %d15
	.loc 1 752 0
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 15, 18, 1
	st.w	[%a15]0, %d15
	.loc 1 756 0
	movh.a	%a15, 61443
	.loc 1 754 0
	call	IfxScuCcu_wait
.LVL191:
	.loc 1 756 0
	lea	%a15, [%a15] 24596
.L170:
	.loc 1 756 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a15]0
	jz.t	%d15, 2, .L170
	.loc 1 762 0 is_stmt 1
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24600
	ld.w	%d15, [%a15]0
	andn	%d15, %d15, ~(-2)
	st.w	[%a15]0, %d15
	.loc 1 764 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
.L171:
	.loc 1 764 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a15]0
	movh.a	%a2, 61443
	lea	%a2, [%a2] 24624
	jltz	%d15, .L171
	.loc 1 770 0 is_stmt 1
	ld.w	%d15, [%a2]0
	.loc 1 773 0
	mov.aa	%a15, %a2
	.loc 1 770 0
	insert	%d15, %d15, 1, 28, 2
	st.w	[%a2]0, %d15
.L172:
	.loc 1 773 0 discriminator 1
	ld.w	%d15, [%a15]0
	movh.a	%a13, 61443
	lea	%a13, [%a13] 24624
	jltz	%d15, .L172
	.loc 1 780 0
	ld.w	%d4, [%a12] 12
	.loc 1 792 0
	movh.a	%a15, 61443
	.loc 1 780 0
	call	IfxScuCcu_wait
.LVL192:
.LBB85:
	.loc 1 784 0
	ld.w	%d2, [%a13]0
	ld.w	%d15, [%a12] 20
	.loc 1 786 0
	ld.w	%d3, [%a12] 16
	.loc 1 784 0
	andn	%d2, %d2, %d15
	.loc 1 786 0
	and	%d15, %d3
	or	%d15, %d2
.LVL193:
	.loc 1 787 0
	insert	%d15, %d15, 1, 28, 2
.LVL194:
.LBE85:
	.loc 1 792 0
	lea	%a15, [%a15] 24628
.LBB86:
	.loc 1 788 0
	insert	%d15, %d15, 1, 30, 1
	.loc 1 789 0
	st.w	[%a13]0, %d15
.L173:
.LBE86:
	.loc 1 792 0 discriminator 1
	ld.w	%d15, [%a15]0
.LVL195:
	movh.a	%a2, 61443
	lea	%a2, [%a2] 24628
	jltz	%d15, .L173
.LBB87:
	.loc 1 801 0
	ld.w	%d15, [%a12] 28
	ld.w	%d2, [%a2]0
	.loc 1 803 0
	ld.w	%d3, [%a12] 24
	.loc 1 801 0
	andn	%d2, %d2, %d15
	.loc 1 803 0
	and	%d15, %d3
	or	%d15, %d2
.LVL196:
	.loc 1 804 0
	insert	%d15, %d15, 1, 28, 2
.LVL197:
.LBE87:
	.loc 1 809 0
	movh.a	%a15, 61443
.LBB88:
	.loc 1 805 0
	insert	%d15, %d15, 1, 30, 1
.LBE88:
	.loc 1 809 0
	lea	%a15, [%a15] 24640
.LBB89:
	.loc 1 806 0
	st.w	[%a2]0, %d15
.L174:
.LBE89:
	.loc 1 809 0 discriminator 1
	ld.w	%d15, [%a15]0
.LVL198:
	movh.a	%a2, 61443
	lea	%a2, [%a2] 24640
	jltz	%d15, .L174
.LBB90:
	.loc 1 818 0
	ld.w	%d15, [%a12] 36
	ld.w	%d2, [%a2]0
	.loc 1 820 0
	ld.w	%d3, [%a12] 32
	.loc 1 818 0
	andn	%d2, %d2, %d15
	.loc 1 820 0
	and	%d15, %d3
	or	%d15, %d2
.LVL199:
	.loc 1 821 0
	insert	%d15, %d15, 1, 30, 1
.LVL200:
.LBE90:
	.loc 1 825 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24652
.LBB91:
	.loc 1 822 0
	st.w	[%a2]0, %d15
.L175:
.LBE91:
	.loc 1 825 0 discriminator 1
	ld.w	%d15, [%a15]0
.LVL201:
	movh.a	%a2, 61443
	lea	%a2, [%a2] 24652
	jltz	%d15, .L175
.LBB92:
	.loc 1 832 0
	ld.w	%d2, [%a2]0
	ld.w	%d15, [%a12] 44
	.loc 1 834 0
	ld.w	%d3, [%a12] 40
	.loc 1 832 0
	andn	%d2, %d2, %d15
	.loc 1 834 0
	and	%d15, %d3
	or	%d15, %d2
.LVL202:
	.loc 1 835 0
	insert	%d15, %d15, 1, 30, 1
.LVL203:
.LBE92:
.LBB93:
	.loc 1 841 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24704
	.loc 1 843 0
	ld.w	%d3, [%a12] 48
.LBE93:
.LBB94:
	.loc 1 836 0
	st.w	[%a2]0, %d15
.LBE94:
.LBB95:
	.loc 1 841 0
	ld.w	%d2, [%a15]0
	ld.w	%d15, [%a12] 52
.LVL204:
.LBE95:
	.loc 1 866 0
	mov	%d4, %d8
.LBB96:
	.loc 1 841 0
	andn	%d2, %d2, %d15
.LVL205:
	.loc 1 843 0
	and	%d15, %d3
	or	%d15, %d2
.LVL206:
.LBE96:
.LBB97:
	.loc 1 852 0
	ld.w	%d3, [%a12] 56
.LBE97:
	.loc 1 898 0
	movh.a	%a13, 61443
.LBB98:
	.loc 1 844 0
	st.w	[%a15]0, %d15
.LBE98:
.LBB99:
	.loc 1 850 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24708
	ld.w	%d2, [%a15]0
	ld.w	%d15, [%a12] 60
.LVL207:
.LBE99:
	.loc 1 885 0
	mov	%d9, 0
.LVL208:
.LBB100:
	.loc 1 850 0
	andn	%d2, %d2, %d15
.LVL209:
	.loc 1 852 0
	and	%d15, %d3
	or	%d15, %d2
.LVL210:
.LBE100:
.LBB101:
	.loc 1 861 0
	ld.w	%d3, [%a12] 64
.LBE101:
	.loc 1 898 0
	lea	%a13, [%a13] 24604
.LVL211:
.LBB102:
	.loc 1 853 0
	st.w	[%a15]0, %d15
.LVL212:
.LBE102:
.LBB103:
	.loc 1 859 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24712
	ld.w	%d2, [%a15]0
	ld.w	%d15, [%a12] 68
.LVL213:
	andn	%d2, %d2, %d15
.LVL214:
	.loc 1 861 0
	and	%d15, %d3
	or	%d15, %d2
.LVL215:
	.loc 1 862 0
	st.w	[%a15]0, %d15
.LVL216:
.LBE103:
.LBB104:
	.loc 1 872 0
	movh.a	%a15, 63488
.LBE104:
	.loc 1 866 0
	call	IfxScuWdt_setSafetyEndinit
.LVL217:
.LBB105:
	.loc 1 872 0
	lea	%a15, [%a15] 8212
	ld.w	%d2, [%a15]0
	ld.w	%d15, [%a12] 76
.LVL218:
	.loc 1 876 0
	ld.w	%d3, [%a12] 72
	.loc 1 875 0
	andn	%d2, %d2, %d15
.LVL219:
	.loc 1 876 0
	and	%d15, %d3
	or	%d15, %d2
.LVL220:
	.loc 1 878 0
	mov	%d4, %d10
	call	IfxScuWdt_clearCpuEndinit
.LVL221:
	.loc 1 880 0
	mov	%d4, %d10
	.loc 1 879 0
	st.w	[%a15]0, %d15
	.loc 1 880 0
	call	IfxScuWdt_setCpuEndinit
.LVL222:
.LBE105:
	.loc 1 885 0
	ld.bu	%d15, [%a12]0
.LVL223:
	.loc 1 891 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24596
	.loc 1 885 0
	jz	%d15, .L180
.LVL224:
.L189:
	.loc 1 888 0
	mov	%d4, %d8
	and	%d11, %d9, 255
.LVL225:
	call	IfxScuWdt_clearSafetyEndinit
.LVL226:
.L178:
	.loc 1 891 0 discriminator 1
	ld.w	%d15, [%a15]0
	jz.t	%d15, 5, .L178
	.loc 1 898 0
	and	%d15, %d9, 255
	ld.a	%a3, [%a12] 4
	mul	%d15, %d15, 12
	ld.w	%d3, [%a13]0
	.loc 1 899 0
	mov	%d4, %d8
	.loc 1 898 0
	addsc.a	%a2, %a3, %d15, 0
	ld.bu	%d2, [%a2]0
	insert	%d2, %d3, %d2, 0, 7
	st.w	[%a13]0, %d2
	.loc 1 899 0
	call	IfxScuWdt_setSafetyEndinit
.LVL227:
	.loc 1 903 0
	ld.a	%a3, [%a12] 4
	addsc.a	%a2, %a3, %d15, 0
	ld.a	%a3, [%a2] 8
	jz.a	%a3, .L179
	.loc 1 905 0
	calli	%a3
.LVL228:
	ld.a	%a3, [%a12] 4
	addsc.a	%a2, %a3, %d15, 0
.L179:
	.loc 1 909 0 discriminator 2
	ld.w	%d4, [%a2] 4
	add	%d9, 1
.LVL229:
	call	IfxScuCcu_wait
.LVL230:
	addi	%d2, %d11, 1
	.loc 1 885 0 discriminator 2
	ld.bu	%d15, [%a12]0
	and	%d2, %d2, 255
	jlt.u	%d2, %d15, .L189
.LVL231:
.L180:
.LBE84:
.LBB106:
.LBB82:
	.loc 1 1043 0
	mov	%d9, 0
.LVL232:
.L177:
.LBE82:
.LBE106:
	.loc 1 915 0
	movh.a	%a15, 61443
	.loc 1 914 0
	mov	%d4, %d8
	.loc 1 915 0
	lea	%a15, [%a15] 24600
	.loc 1 914 0
	call	IfxScuWdt_clearSafetyEndinit
.LVL233:
	.loc 1 915 0
	ld.w	%d15, [%a15]0
	.loc 1 916 0
	mov	%d4, %d8
	.loc 1 915 0
	andn	%d15, %d15, ~(-65)
	.loc 1 922 0
	sh	%d12, 3
.LVL234:
	.loc 1 915 0
	st.w	[%a15]0, %d15
	.loc 1 916 0
	call	IfxScuWdt_setSafetyEndinit
.LVL235:
	.loc 1 921 0
	movh.a	%a15, 61443
	.loc 1 920 0
	mov	%d4, %d10
	.loc 1 921 0
	lea	%a15, [%a15] 24876
	.loc 1 920 0
	call	IfxScuWdt_clearCpuEndinit
.LVL236:
	.loc 1 921 0
	ld.w	%d15, [%a15]0
	.loc 1 923 0
	mov	%d4, %d10
	.loc 1 921 0
	or	%d15, %d15, 8
	st.w	[%a15]0, %d15
	.loc 1 922 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24880
	ld.w	%d15, [%a15]0
	andn	%d15, %d15, ~(-9)
	or	%d12, %d15
	st.w	[%a15]0, %d12
	.loc 1 923 0
	call	IfxScuWdt_setCpuEndinit
.LVL237:
	.loc 1 926 0
	mov	%d2, %d9
	ret
.LFE219:
	.size	IfxScuCcu_init, .-IfxScuCcu_init
	.align 1
	.global	IfxScuCcu_initConfig
	.type	IfxScuCcu_initConfig, @function
IfxScuCcu_initConfig:
.LFB220:
	.loc 1 930 0
.LVL238:
	.loc 1 931 0
	movh	%d2, hi:IfxScuCcu_defaultClockConfig
	mov.a	%a2, %d2
	lea	%a15, [%a2] lo:IfxScuCcu_defaultClockConfig
		# #chunks=10, chunksize=8, remains=4
	lea	%a2, 10-1
	0:
	ld.d	%e2, [%a15+]8
	st.d	[%a4+]8, %e2
	loop	%a2, 0b
	ld.w	%d2, [%a15+]4
	st.w	[%a4+]4, %d2
.LVL239:
	ret
.LFE220:
	.size	IfxScuCcu_initConfig, .-IfxScuCcu_initConfig
	.align 1
	.global	IfxScuCcu_initErayPll
	.type	IfxScuCcu_initErayPll, @function
IfxScuCcu_initErayPll:
.LFB221:
	.loc 1 936 0
.LVL240:
	.loc 1 936 0
	mov.aa	%a12, %a4
	.loc 1 941 0
	call	IfxScuWdt_getCpuWatchdogPassword
.LVL241:
	mov	%d8, %d2
.LVL242:
	.loc 1 942 0
	call	IfxScuWdt_getSafetyWatchdogPassword
.LVL243:
	.loc 1 945 0
	mov	%d4, %d8
	.loc 1 946 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24880
	.loc 1 942 0
	mov	%d9, %d2
.LVL244:
	.loc 1 945 0
	call	IfxScuWdt_clearCpuEndinit
.LVL245:
	.loc 1 946 0
	ld.w	%d2, [%a15]0
	.loc 1 947 0
	ld.w	%d15, [%a15]0
	.loc 1 948 0
	mov	%d4, %d8
	.loc 1 947 0
	or	%d15, %d15, 8
	.loc 1 946 0
	extr.u	%d10, %d2, 3, 1
.LVL246:
	.loc 1 947 0
	st.w	[%a15]0, %d15
	.loc 1 948 0
	call	IfxScuWdt_setCpuEndinit
.LVL247:
	.loc 1 953 0
	movh.a	%a15, 61443
	.loc 1 950 0
	mov	%d4, %d9
	.loc 1 953 0
	lea	%a15, [%a15] 24616
	.loc 1 950 0
	call	IfxScuWdt_clearSafetyEndinit
.LVL248:
	.loc 1 953 0
	ld.w	%d15, [%a15]0
	jz.t	%d15, 16, .L211
	.loc 1 953 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a15]0
	jz.t	%d15, 1, .L236
.L211:
	.loc 1 956 0 is_stmt 1
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24616
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 15, 16, 1
	st.w	[%a15]0, %d15
	.loc 1 957 0
	ld.w	%d15, [%a15]0
	andn	%d15, %d15, ~(-3)
	st.w	[%a15]0, %d15
	.loc 1 959 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24612
.L213:
	.loc 1 959 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a15]0
	jnz.t	%d15, 1, .L213
	.loc 1 963 0 is_stmt 1
	ld.w	%d4, [%a12] 4
	call	IfxScuCcu_wait
.LVL249:
.L212:
	.loc 1 968 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24612
	ld.w	%d15, [%a15]0
	jz.t	%d15, 0, .L215
.L214:
	.loc 1 979 0 discriminator 1
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24612
.L216:
	ld.w	%d15, [%a15]0
	jz.t	%d15, 5, .L216
	.loc 1 982 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24620
	ld.w	%d2, [%a15]0
	ld.bu	%d15, [%a12] 2
	.loc 1 995 0
	mov	%d4, %d9
	.loc 1 982 0
	insert	%d15, %d2, %d15, 0, 7
	st.w	[%a15]0, %d15
	.loc 1 983 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24616
	ld.w	%d2, [%a15]0
	ld.bu	%d15, [%a12]0
	insert	%d15, %d2, %d15, 24, 4
	st.w	[%a15]0, %d15
	.loc 1 984 0
	ld.w	%d2, [%a15]0
	ld.bu	%d15, [%a12] 1
	insert	%d15, %d2, %d15, 9, 5
	st.w	[%a15]0, %d15
	.loc 1 992 0
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 15, 18, 1
	st.w	[%a15]0, %d15
	.loc 1 993 0
	ld.w	%d15, [%a15]0
	or	%d15, %d15, 32
	st.w	[%a15]0, %d15
	.loc 1 995 0
	call	IfxScuWdt_setSafetyEndinit
.LVL250:
	.loc 1 1000 0
	movh.a	%a2, 61443
	movh.a	%a15, 1
	lea	%a2, [%a2] 24612
	lea	%a15, [%a15] -15538
.LVL251:
.L217:
	.loc 1 1000 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a2]0
	jnz.t	%d15, 2, .L218
	loop	%a15, .L217
.L218:
	.loc 1 1011 0 is_stmt 1
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24616
	.loc 1 1009 0
	mov	%d4, %d9
	call	IfxScuWdt_clearSafetyEndinit
.LVL252:
	.loc 1 1011 0
	ld.w	%d15, [%a15]0
	andn	%d15, %d15, ~(-2)
	st.w	[%a15]0, %d15
	.loc 1 1014 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24612
.L220:
	.loc 1 1014 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a15]0
	jnz.t	%d15, 0, .L220
	.loc 1 1017 0 is_stmt 1
	movh.a	%a15, 61443
	.loc 1 1022 0
	mov	%d4, %d9
	.loc 1 1017 0
	lea	%a15, [%a15] 24612
	ld.w	%d15, [%a15]0
	.loc 1 1022 0
	call	IfxScuWdt_setSafetyEndinit
.LVL253:
	.loc 1 1026 0
	movh.a	%a15, 61443
	.loc 1 1025 0
	mov	%d4, %d8
	.loc 1 1026 0
	lea	%a15, [%a15] 24876
	.loc 1 1025 0
	call	IfxScuWdt_clearCpuEndinit
.LVL254:
	.loc 1 1026 0
	ld.w	%d15, [%a15]0
	.loc 1 1027 0
	sh	%d2, %d10, 3
	.loc 1 1026 0
	or	%d15, %d15, 8
	.loc 1 1028 0
	mov	%d4, %d8
	.loc 1 1026 0
	st.w	[%a15]0, %d15
	.loc 1 1027 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24880
	ld.w	%d15, [%a15]0
	andn	%d15, %d15, ~(-9)
	or	%d15, %d2
	st.w	[%a15]0, %d15
	.loc 1 1028 0
	call	IfxScuWdt_setCpuEndinit
.LVL255:
	.loc 1 1031 0
	mov	%d2, 0
	ret
.L215:
	.loc 1 970 0 discriminator 1
	ld.w	%d15, [%a15]0
	jz.t	%d15, 4, .L215
	.loc 1 973 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24620
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 3, 16, 7
	st.w	[%a15]0, %d15
	.loc 1 976 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24616
	ld.w	%d15, [%a15]0
	or	%d15, %d15, 1
	st.w	[%a15]0, %d15
	j	.L214
.L236:
	.loc 1 953 0 discriminator 2
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24612
	ld.w	%d15, [%a15]0
	jz.t	%d15, 1, .L212
	j	.L211
.LFE221:
	.size	IfxScuCcu_initErayPll, .-IfxScuCcu_initErayPll
	.align 1
	.global	IfxScuCcu_initErayPllConfig
	.type	IfxScuCcu_initErayPllConfig, @function
IfxScuCcu_initErayPllConfig:
.LFB222:
	.loc 1 1035 0
.LVL256:
	.loc 1 1036 0
	mov	%d15, 0
	st.b	[%a4]0, %d15
	mov	%d15, 23
	st.b	[%a4] 1, %d15
	mov	%d15, 5
	st.b	[%a4] 2, %d15
	mov	%d15, 0
	st.w	[%a4] 4, %d15
	ret
.LFE222:
	.size	IfxScuCcu_initErayPllConfig, .-IfxScuCcu_initErayPllConfig
	.align 1
	.global	IfxScuCcu_selectAdcClock
	.type	IfxScuCcu_selectAdcClock, @function
IfxScuCcu_selectAdcClock:
.LFB224:
	.loc 1 1082 0
.LVL257:
	.loc 1 1082 0
	mov	%d9, %d4
	.loc 1 1083 0
	call	IfxScuWdt_getSafetyWatchdogPassword
.LVL258:
	.loc 1 1084 0
	mov	%d4, %d2
	.loc 1 1088 0
	movh.a	%a15, 61443
	.loc 1 1083 0
	mov	%d8, %d2
.LVL259:
	.loc 1 1088 0
	lea	%a15, [%a15] 24624
	.loc 1 1084 0
	call	IfxScuWdt_clearSafetyEndinit
.LVL260:
.L239:
	.loc 1 1088 0 discriminator 1
	ld.w	%d15, [%a15]0
	movh.a	%a2, 61443
	lea	%a2, [%a2] 24624
	jltz	%d15, .L239
	.loc 1 1091 0
	ld.w	%d15, [%a2]0
.LVL261:
	.loc 1 1095 0
	mov	%d4, %d8
	.loc 1 1092 0
	insert	%d15, %d15, %d9, 26, 2
	.loc 1 1093 0
	insert	%d15, %d15, 1, 30, 1
	.loc 1 1094 0
	st.w	[%a2]0, %d15
	.loc 1 1095 0
	j	IfxScuWdt_setSafetyEndinit
.LVL262:
.LFE224:
	.size	IfxScuCcu_selectAdcClock, .-IfxScuCcu_selectAdcClock
	.align 1
	.global	IfxScuCcu_setCpuFrequency
	.type	IfxScuCcu_setCpuFrequency, @function
IfxScuCcu_setCpuFrequency:
.LFB225:
	.loc 1 1100 0
.LVL263:
	.loc 1 1100 0
	mov	%e8, %d4, %d5
	.loc 1 1105 0
	call	IfxScuCcu_getSriFrequency
.LVL264:
	mov	%d15, %d2
.LVL265:
	.loc 1 1107 0
	cmp.f	%d2, %d2, %d8
.LVL266:
	or.t	%d2, %d2,0, %d2,1
	jnz	%d2, .L242
	.loc 1 1113 0
	movh	%d2, 17024
	mul.f	%d8, %d8, %d2
.LVL267:
	div.f	%d8, %d8, %d15
	ftouz	%d8, %d8
.LVL268:
	.loc 1 1116 0
	call	IfxScuWdt_getSafetyWatchdogPassword
.LVL269:
	.loc 1 1119 0
	mov	%d4, %d2
	.loc 1 1116 0
	mov	%d10, %d2
.LVL270:
	.loc 1 1119 0
	call	IfxScuWdt_clearSafetyEndinit
.LVL271:
	.loc 1 1121 0
	jeq	%d9, 1, .L244
	jz	%d9, .L245
	jeq	%d9, 2, .L246
.LVL272:
.L243:
	.loc 1 1136 0
	mov	%d4, %d10
	call	IfxScuWdt_setSafetyEndinit
.LVL273:
	.loc 1 1139 0
	jz	%d8, .L256
	.loc 1 1141 0
	sh	%d8, -6
	itof	%d8, %d8
	mul.f	%d15, %d15, %d8
.LVL274:
.L256:
	.loc 1 1145 0
	mov	%d2, %d15
	ret
.LVL275:
.L242:
	.loc 1 1116 0
	call	IfxScuWdt_getSafetyWatchdogPassword
.LVL276:
	.loc 1 1119 0
	mov	%d4, %d2
	.loc 1 1116 0
	mov	%d10, %d2
.LVL277:
	.loc 1 1119 0
	call	IfxScuWdt_clearSafetyEndinit
.LVL278:
	.loc 1 1121 0
	jeq	%d9, 1, .L250
	jz	%d9, .L249
	jne	%d9, 2, .L267
	.loc 1 1109 0
	mov	%d8, 0
.LVL279:
.L246:
	.loc 1 1130 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24712
	st.w	[%a15]0, %d8
	.loc 1 1131 0
	j	.L243
.LVL280:
.L250:
	.loc 1 1109 0
	mov	%d8, 0
.LVL281:
.L244:
	.loc 1 1127 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24708
	st.w	[%a15]0, %d8
	.loc 1 1128 0
	j	.L243
.LVL282:
.L249:
	.loc 1 1109 0
	mov	%d8, 0
.LVL283:
.L245:
	.loc 1 1124 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24704
	st.w	[%a15]0, %d8
	.loc 1 1125 0
	j	.L243
.LVL284:
.L267:
	.loc 1 1136 0
	mov	%d4, %d10
	call	IfxScuWdt_setSafetyEndinit
.LVL285:
	j	.L256
.LFE225:
	.size	IfxScuCcu_setCpuFrequency, .-IfxScuCcu_setCpuFrequency
	.align 1
	.global	IfxScuCcu_setGtmFrequency
	.type	IfxScuCcu_setGtmFrequency, @function
IfxScuCcu_setGtmFrequency:
.LFB226:
	.loc 1 1149 0
.LVL286:
	.loc 1 1151 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24628
	.loc 1 1149 0
	mov	%d8, %d4
	.loc 1 1151 0
	ld.w	%d15, [%a15]0
.LVL287:
	.loc 1 1153 0
	call	IfxScuCcu_getSourceFrequency
.LVL288:
	.loc 1 1154 0
	div.f	%d2, %d2, %d8
.LVL289:
	ftoiz	%d3, %d2
	itof	%d4, %d3
	sub.f	%d2, %d2, %d4
	movh	%d4, 16128
	cmp.f	%d2, %d2, %d4
	extr.u	%d2, %d2, 2, 1
	add	%d2, %d3
.LVL290:
.LBB107:
.LBB108:
	.file 3 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
	.loc 3 114 0
	mov	%d3, 1
#APP
	# 114 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	max.u %d2, %d2, %d3
	# 0 "" 2
.LVL291:
#NO_APP
.LBE108:
.LBE107:
	.loc 1 1158 0
	addi	%d3, %d2, -7
	jge.u	%d3, 7, .L272
	.loc 1 1160 0 discriminator 1
	andn	%d2, %d2, ~(-2)
.LVL292:
.L275:
	and	%d9, %d2, 15
.L274:
.LVL293:
	.loc 1 1170 0
	insert	%d15, %d15, %d9, 12, 4
	.loc 1 1168 0
	call	IfxScuWdt_getSafetyWatchdogPassword
.LVL294:
	.loc 1 1171 0
	insert	%d15, %d15, 1, 30, 1
	.loc 1 1169 0
	mov	%d4, %d2
	.loc 1 1172 0
	movh.a	%a15, 61443
	.loc 1 1168 0
	mov	%d8, %d2
.LVL295:
	.loc 1 1172 0
	lea	%a15, [%a15] 24628
	.loc 1 1169 0
	call	IfxScuWdt_clearSafetyEndinit
.LVL296:
	.loc 1 1174 0
	mov	%d4, %d8
	.loc 1 1172 0
	st.w	[%a15]0, %d15
	.loc 1 1174 0
	call	IfxScuWdt_setSafetyEndinit
.LVL297:
.LBB109:
.LBB110:
	.loc 2 1095 0
	call	IfxScuCcu_getSourceFrequency
.LVL298:
	ld.w	%d15, [%a15]0
.LVL299:
	extr.u	%d15, %d15, 12, 4
	itof	%d15, %d15
.LBE110:
.LBE109:
	.loc 1 1177 0
	div.f	%d2, %d2, %d15
	ret
.LVL300:
.L272:
	.loc 1 1163 0
	eq	%d3, %d2, 14
	mov	%d9, 12
	jnz	%d3, .L274
	j	.L275
.LFE226:
	.size	IfxScuCcu_setGtmFrequency, .-IfxScuCcu_setGtmFrequency
	.align 1
	.global	IfxScuCcu_setPll2ErayFrequency
	.type	IfxScuCcu_setPll2ErayFrequency, @function
IfxScuCcu_setPll2ErayFrequency:
.LFB227:
	.loc 1 1181 0
.LVL301:
	.loc 1 1181 0
	mov	%d8, %d4
	.loc 1 1182 0
	call	IfxScuWdt_getSafetyWatchdogPassword
.LVL302:
	mov	%d15, %d2
.LVL303:
	.loc 1 1183 0
	call	IfxScuCcu_getPllErayVcoFrequency
.LVL304:
	mov	%d9, %d2
.LVL305:
	.loc 1 1185 0
	mov	%d4, %d15
	call	IfxScuWdt_clearSafetyEndinit
.LVL306:
	.loc 1 1183 0
	div.f	%d8, %d9, %d8
.LVL307:
	movh	%d3, 16256
	.loc 1 1186 0
	movh.a	%a15, 61443
	.loc 1 1183 0
	sub.f	%d8, %d8, %d3
	.loc 1 1186 0
	lea	%a15, [%a15] 24620
	ld.w	%d2, [%a15]0
	.loc 1 1183 0
	ftouz	%d8, %d8
.LVL308:
	.loc 1 1187 0
	mov	%d4, %d15
	.loc 1 1186 0
	insert	%d8, %d2, %d8, 8, 4
.LVL309:
	st.w	[%a15]0, %d8
	.loc 1 1187 0
	call	IfxScuWdt_setSafetyEndinit
.LVL310:
.LBB111:
.LBB112:
	.loc 2 1103 0
	call	IfxScuCcu_getPllErayVcoFrequency
.LVL311:
	ld.w	%d15, [%a15]0
.LVL312:
	extr.u	%d15, %d15, 8, 4
.LVL313:
	add	%d15, 1
.LVL314:
	itof	%d15, %d15
.LVL315:
.LBE112:
.LBE111:
	.loc 1 1190 0
	div.f	%d2, %d2, %d15
	ret
.LFE227:
	.size	IfxScuCcu_setPll2ErayFrequency, .-IfxScuCcu_setPll2ErayFrequency
	.align 1
	.global	IfxScuCcu_setPll2Frequency
	.type	IfxScuCcu_setPll2Frequency, @function
IfxScuCcu_setPll2Frequency:
.LFB228:
	.loc 1 1194 0
.LVL316:
	.loc 1 1194 0
	mov	%d8, %d4
	.loc 1 1195 0
	call	IfxScuWdt_getSafetyWatchdogPassword
.LVL317:
	mov	%d15, %d2
.LVL318:
	.loc 1 1196 0
	call	IfxScuCcu_getPllVcoFrequency
.LVL319:
	mov	%d9, %d2
.LVL320:
	.loc 1 1198 0
	mov	%d4, %d15
	call	IfxScuWdt_clearSafetyEndinit
.LVL321:
	.loc 1 1196 0
	div.f	%d8, %d9, %d8
.LVL322:
	movh	%d3, 16256
	.loc 1 1199 0
	movh.a	%a15, 61443
	.loc 1 1196 0
	sub.f	%d8, %d8, %d3
	.loc 1 1199 0
	lea	%a15, [%a15] 24604
	ld.w	%d2, [%a15]0
	.loc 1 1196 0
	ftouz	%d8, %d8
.LVL323:
	.loc 1 1200 0
	mov	%d4, %d15
	.loc 1 1199 0
	insert	%d8, %d2, %d8, 8, 7
.LVL324:
	st.w	[%a15]0, %d8
	.loc 1 1200 0
	call	IfxScuWdt_setSafetyEndinit
.LVL325:
.LBB113:
.LBB114:
	.loc 2 1112 0
	call	IfxScuCcu_getPllVcoFrequency
.LVL326:
	ld.w	%d15, [%a15]0
.LVL327:
	extr.u	%d15, %d15, 8, 7
.LVL328:
	add	%d15, 1
.LVL329:
	itof	%d15, %d15
.LVL330:
.LBE114:
.LBE113:
	.loc 1 1203 0
	div.f	%d2, %d2, %d15
	ret
.LFE228:
	.size	IfxScuCcu_setPll2Frequency, .-IfxScuCcu_setPll2Frequency
	.align 1
	.global	IfxScuCcu_setSpbFrequency
	.type	IfxScuCcu_setSpbFrequency, @function
IfxScuCcu_setSpbFrequency:
.LFB229:
	.loc 1 1207 0
.LVL331:
	.loc 1 1207 0
	mov	%d15, %d4
	.loc 1 1212 0
	call	IfxScuCcu_getSourceFrequency
.LVL332:
	.loc 1 1213 0
	div.f	%d2, %d2, %d15
.LVL333:
.LBB115:
.LBB116:
	.loc 3 114 0
	mov	%d15, 2
.LVL334:
.LBE116:
.LBE115:
	.loc 1 1213 0
	ftouz	%d2, %d2
.LVL335:
.LBB118:
.LBB117:
	.loc 3 114 0
#APP
	# 114 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	max.u %d15, %d2, %d15
	# 0 "" 2
.LVL336:
#NO_APP
.LBE117:
.LBE118:
	.loc 1 1216 0
	add	%d2, %d15, -7
.LVL337:
	jge.u	%d2, 7, .L284
	.loc 1 1218 0 discriminator 1
	andn	%d15, %d15, ~(-2)
.LVL338:
.L288:
	and	%d10, %d15, 15
.L286:
.LVL339:
	.loc 1 1226 0
	call	IfxScuWdt_getCpuWatchdogPassword
.LVL340:
	mov	%d8, %d2
.LVL341:
	.loc 1 1227 0
	call	IfxScuWdt_getSafetyWatchdogPassword
.LVL342:
	.loc 1 1229 0
	mov	%d4, %d8
	.loc 1 1230 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24880
	.loc 1 1227 0
	mov	%d9, %d2
.LVL343:
	.loc 1 1229 0
	call	IfxScuWdt_clearCpuEndinit
.LVL344:
	.loc 1 1230 0
	ld.w	%d2, [%a15]0
	mov	%d15, 992
	or	%d15, %d2
	.loc 1 1231 0
	mov	%d4, %d8
	.loc 1 1230 0
	st.w	[%a15]0, %d15
	.loc 1 1231 0
	call	IfxScuWdt_setCpuEndinit
.LVL345:
	.loc 1 1233 0
	mov	%d4, %d9
	call	IfxScuWdt_clearSafetyEndinit
.LVL346:
	.loc 1 1234 0
	movh.a	%a2, 61443
	lea	%a2, [%a2] 24624
	ld.w	%d15, [%a2]0
	.loc 1 1238 0
	mov	%d4, %d9
	.loc 1 1235 0
	insert	%d15, %d15, %d10, 16, 4
.LVL347:
	.loc 1 1236 0
	insert	%d15, %d15, 1, 30, 1
	.loc 1 1237 0
	st.w	[%a2]0, %d15
	.loc 1 1238 0
	call	IfxScuWdt_setSafetyEndinit
.LVL348:
	.loc 1 1240 0
	mov	%d4, %d8
	call	IfxScuWdt_clearCpuEndinit
.LVL349:
	.loc 1 1241 0
	ld.w	%d15, [%a15]0
.LVL350:
	.loc 1 1242 0
	mov	%d4, %d8
	.loc 1 1241 0
	insert	%d15, %d15, 0, 5, 5
	st.w	[%a15]0, %d15
	.loc 1 1244 0
	movh.a	%a15, 61443
	.loc 1 1242 0
	call	IfxScuWdt_setCpuEndinit
.LVL351:
	.loc 1 1244 0
	lea	%a15, [%a15] 24624
.L287:
	.loc 1 1244 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a15]0
	jltz	%d15, .L287
	.loc 1 1247 0 is_stmt 1
	j	IfxScuCcu_getSpbFrequency
.LVL352:
.L284:
	.loc 1 1221 0
	eq	%d2, %d15, 14
	mov	%d10, 12
	jnz	%d2, .L286
	j	.L288
.LFE229:
	.size	IfxScuCcu_setSpbFrequency, .-IfxScuCcu_setSpbFrequency
	.align 1
	.global	IfxScuCcu_setSriFrequency
	.type	IfxScuCcu_setSriFrequency, @function
IfxScuCcu_setSriFrequency:
.LFB230:
	.loc 1 1252 0
.LVL353:
	.loc 1 1252 0
	mov	%d15, %d4
	.loc 1 1254 0
	call	IfxScuCcu_getSourceFrequency
.LVL354:
	.loc 1 1257 0
	div.f	%d2, %d2, %d15
.LVL355:
	ftoiz	%d3, %d2
	itof	%d15, %d3
.LVL356:
	sub.f	%d2, %d2, %d15
	movh	%d15, 16128
	cmp.f	%d15, %d2, %d15
	extr.u	%d15, %d15, 2, 1
.LBB119:
.LBB120:
	.loc 3 114 0
	mov	%d2, 1
.LBE120:
.LBE119:
	.loc 1 1257 0
	add	%d15, %d3
.LVL357:
.LBB122:
.LBB121:
	.loc 3 114 0
#APP
	# 114 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	max.u %d15, %d15, %d2
	# 0 "" 2
.LVL358:
#NO_APP
.LBE121:
.LBE122:
	.loc 1 1260 0
	add	%d2, %d15, -7
	jge.u	%d2, 7, .L298
	.loc 1 1262 0 discriminator 1
	andn	%d15, %d15, ~(-2)
.LVL359:
.L302:
	and	%d9, %d15, 15
.L300:
.LVL360:
	.loc 1 1270 0
	call	IfxScuWdt_getSafetyWatchdogPassword
.LVL361:
	.loc 1 1273 0
	movh.a	%a15, 61443
	.loc 1 1271 0
	mov	%d4, %d2
	.loc 1 1273 0
	lea	%a15, [%a15] 24624
	.loc 1 1270 0
	mov	%d8, %d2
.LVL362:
	.loc 1 1271 0
	call	IfxScuWdt_clearSafetyEndinit
.LVL363:
	.loc 1 1273 0
	ld.w	%d15, [%a15]0
	.loc 1 1278 0
	mov	%d4, %d8
	.loc 1 1274 0
	insert	%d15, %d15, %d9, 8, 4
.LVL364:
	.loc 1 1275 0
	insert	%d15, %d15, 1, 30, 1
	.loc 1 1276 0
	st.w	[%a15]0, %d15
	.loc 1 1278 0
	call	IfxScuWdt_setSafetyEndinit
.LVL365:
.L301:
	.loc 1 1280 0 discriminator 1
	ld.w	%d15, [%a15]0
.LVL366:
	jltz	%d15, .L301
	.loc 1 1283 0
	j	IfxScuCcu_getSriFrequency
.LVL367:
.L298:
	.loc 1 1265 0
	eq	%d2, %d15, 14
	mov	%d9, 12
	jnz	%d2, .L300
	j	.L302
.LFE230:
	.size	IfxScuCcu_setSriFrequency, .-IfxScuCcu_setSriFrequency
	.align 1
	.global	IfxScuCcu_switchToBackupClock
	.type	IfxScuCcu_switchToBackupClock, @function
IfxScuCcu_switchToBackupClock:
.LFB231:
	.loc 1 1289 0
.LVL368:
	.loc 1 1294 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	ld.w	%d15, [%a15]0
	extr.u	%d15, %d15, 28, 2
	jnz	%d15, .L323
	ret
.L323:
	mov.aa	%a12, %a4
	.loc 1 1299 0
	call	IfxScuWdt_getSafetyWatchdogPassword
.LVL369:
	mov	%d8, %d2
.LVL370:
	.loc 1 1300 0
	call	IfxScuWdt_getCpuWatchdogPassword
.LVL371:
	.loc 1 1303 0
	ld.bu	%d9, [%a12]0
	.loc 1 1316 0
	movh.a	%a14, 61443
	mul	%d15, %d9, 12
	.loc 1 1300 0
	mov	%d10, %d2
.LVL372:
	.loc 1 1316 0
	lea	%a14, [%a14] 24604
	mov.a	%a15, %d15
	lea	%a13, [%a15] -12
	.loc 1 1309 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24596
	.loc 1 1303 0
	jz	%d9, .L315
.LVL373:
.L318:
	.loc 1 1306 0
	mov	%d4, %d8
	call	IfxScuWdt_clearSafetyEndinit
.LVL374:
.L313:
	.loc 1 1309 0 discriminator 1
	ld.w	%d15, [%a15]0
	jz.t	%d15, 5, .L313
	.loc 1 1316 0 discriminator 2
	ld.a	%a2, [%a12] 4
	ld.w	%d3, [%a14]0
	.loc 1 1317 0 discriminator 2
	mov	%d4, %d8
	.loc 1 1316 0 discriminator 2
	add.a	%a2, %a13
	ld.bu	%d15, [%a2]0
	.loc 1 1303 0 discriminator 2
	add	%d9, -1
.LVL375:
	.loc 1 1316 0 discriminator 2
	insert	%d15, %d3, %d15, 0, 7
	st.w	[%a14]0, %d15
	.loc 1 1317 0 discriminator 2
	call	IfxScuWdt_setSafetyEndinit
.LVL376:
	.loc 1 1320 0 discriminator 2
	ld.a	%a2, [%a12] 4
	add.a	%a2, %a13
	ld.w	%d4, [%a2] 4
	lea	%a13, [%a13] -12
	call	IfxScuCcu_wait
.LVL377:
	.loc 1 1303 0 discriminator 2
	jnz	%d9, .L318
.L315:
	.loc 1 1326 0
	mov	%d4, %d10
	.loc 1 1327 0
	movh.a	%a15, 61443
	.loc 1 1326 0
	call	IfxScuWdt_clearCpuEndinit
.LVL378:
	.loc 1 1327 0
	lea	%a15, [%a15] 24880
	ld.w	%d2, [%a15]0
	.loc 1 1328 0
	ld.w	%d15, [%a15]0
	.loc 1 1329 0
	mov	%d4, %d10
	.loc 1 1328 0
	or	%d15, %d15, 8
	.loc 1 1327 0
	extr.u	%d9, %d2, 3, 1
.LVL379:
	.loc 1 1328 0
	st.w	[%a15]0, %d15
	.loc 1 1329 0
	call	IfxScuWdt_setCpuEndinit
.LVL380:
	.loc 1 1334 0
	mov	%d4, %d8
	call	IfxScuWdt_clearSafetyEndinit
.LVL381:
	.loc 1 1336 0
	movh.a	%a2, 61443
	lea	%a2, [%a2] 24624
.L312:
	.loc 1 1336 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a2]0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	jltz	%d15, .L312
	.loc 1 1342 0 is_stmt 1
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 0, 28, 2
	st.w	[%a15]0, %d15
	.loc 1 1343 0
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 15, 30, 1
	st.w	[%a15]0, %d15
.L316:
	.loc 1 1345 0 discriminator 1
	ld.w	%d15, [%a15]0
	jltz	%d15, .L316
	.loc 1 1352 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24600
	ld.w	%d15, [%a15]0
	.loc 1 1356 0
	mov	%d4, %d8
	.loc 1 1352 0
	or	%d15, %d15, 16
	st.w	[%a15]0, %d15
	.loc 1 1355 0
	ld.w	%d15, [%a15]0
	andn	%d15, %d15, ~(-65)
	st.w	[%a15]0, %d15
	.loc 1 1356 0
	call	IfxScuWdt_setSafetyEndinit
.LVL382:
	.loc 1 1361 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24876
	.loc 1 1360 0
	mov	%d4, %d10
	call	IfxScuWdt_clearCpuEndinit
.LVL383:
	.loc 1 1361 0
	ld.w	%d15, [%a15]0
	.loc 1 1362 0
	sh	%d2, %d9, 3
	.loc 1 1361 0
	or	%d15, %d15, 8
	.loc 1 1363 0
	mov	%d4, %d10
	.loc 1 1361 0
	st.w	[%a15]0, %d15
	.loc 1 1362 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24880
	ld.w	%d15, [%a15]0
	andn	%d15, %d15, ~(-9)
	or	%d15, %d2
	st.w	[%a15]0, %d15
	.loc 1 1363 0
	j	IfxScuWdt_setCpuEndinit
.LVL384:
.LFE231:
	.size	IfxScuCcu_switchToBackupClock, .-IfxScuCcu_switchToBackupClock
	.global	IfxScuCcu_defaultErayPllConfig
.section .srodata,"as",@progbits
	.align 2
	.type	IfxScuCcu_defaultErayPllConfig, @object
	.size	IfxScuCcu_defaultErayPllConfig, 8
IfxScuCcu_defaultErayPllConfig:
	.byte	0
	.byte	23
	.byte	5
	.zero	1
	.word	0
	.global	IfxScuCcu_defaultClockConfig
.section .rodata,"a",@progbits
	.align 2
	.type	IfxScuCcu_defaultClockConfig, @object
	.size	IfxScuCcu_defaultClockConfig, 84
IfxScuCcu_defaultClockConfig:
	.byte	3
	.zero	3
	.word	IfxScuCcu_aDefaultPllConfigSteps
	.byte	1
	.byte	59
	.byte	5
	.zero	1
	.word	961656599
	.word	34734354
	.word	54464511
	.word	34873874
	.word	268435455
	.word	2
	.word	15
	.word	1
	.word	15
	.word	0
	.word	63
	.word	0
	.word	63
	.word	0
	.word	63
	.word	5333
	.word	32767
	.word	20000000
.section .data,"aw",@progbits
	.align 2
	.type	IfxScuCcu_xtalFrequency, @object
	.size	IfxScuCcu_xtalFrequency, 4
IfxScuCcu_xtalFrequency:
	.word	20000000
.section .rodata,"a",@progbits
	.align 2
	.type	IfxScuCcu_aDefaultPllConfigSteps, @object
	.size	IfxScuCcu_aDefaultPllConfigSteps, 36
IfxScuCcu_aDefaultPllConfigSteps:
	.byte	4
	.zero	3
	.word	953267991
	.word	0
	.byte	3
	.zero	3
	.word	953267991
	.word	0
	.byte	2
	.zero	3
	.word	953267991
	.word	0
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
	.uaword	.LFB233
	.uaword	.LFE233-.LFB233
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB200
	.uaword	.LFE200-.LFB200
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB210
	.uaword	.LFE210-.LFB210
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB211
	.uaword	.LFE211-.LFB211
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB212
	.uaword	.LFE212-.LFB212
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB213
	.uaword	.LFE213-.LFB213
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB214
	.uaword	.LFE214-.LFB214
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB215
	.uaword	.LFE215-.LFB215
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB201
	.uaword	.LFE201-.LFB201
	.align 2
.LEFDE16:
.LSFDE18:
	.uaword	.LEFDE18-.LASFDE18
.LASFDE18:
	.uaword	.Lframe0
	.uaword	.LFB216
	.uaword	.LFE216-.LFB216
	.align 2
.LEFDE18:
.LSFDE20:
	.uaword	.LEFDE20-.LASFDE20
.LASFDE20:
	.uaword	.Lframe0
	.uaword	.LFB232
	.uaword	.LFE232-.LFB232
	.align 2
.LEFDE20:
.LSFDE22:
	.uaword	.LEFDE22-.LASFDE22
.LASFDE22:
	.uaword	.Lframe0
	.uaword	.LFB204
	.uaword	.LFE204-.LFB204
	.align 2
.LEFDE22:
.LSFDE24:
	.uaword	.LEFDE24-.LASFDE24
.LASFDE24:
	.uaword	.Lframe0
	.uaword	.LFB208
	.uaword	.LFE208-.LFB208
	.align 2
.LEFDE24:
.LSFDE26:
	.uaword	.LEFDE26-.LASFDE26
.LASFDE26:
	.uaword	.Lframe0
	.uaword	.LFB202
	.uaword	.LFE202-.LFB202
	.align 2
.LEFDE26:
.LSFDE28:
	.uaword	.LEFDE28-.LASFDE28
.LASFDE28:
	.uaword	.Lframe0
	.uaword	.LFB203
	.uaword	.LFE203-.LFB203
	.align 2
.LEFDE28:
.LSFDE30:
	.uaword	.LEFDE30-.LASFDE30
.LASFDE30:
	.uaword	.Lframe0
	.uaword	.LFB217
	.uaword	.LFE217-.LFB217
	.align 2
.LEFDE30:
.LSFDE32:
	.uaword	.LEFDE32-.LASFDE32
.LASFDE32:
	.uaword	.Lframe0
	.uaword	.LFB209
	.uaword	.LFE209-.LFB209
	.align 2
.LEFDE32:
.LSFDE34:
	.uaword	.LEFDE34-.LASFDE34
.LASFDE34:
	.uaword	.Lframe0
	.uaword	.LFB218
	.uaword	.LFE218-.LFB218
	.align 2
.LEFDE34:
.LSFDE36:
	.uaword	.LEFDE36-.LASFDE36
.LASFDE36:
	.uaword	.Lframe0
	.uaword	.LFB205
	.uaword	.LFE205-.LFB205
	.align 2
.LEFDE36:
.LSFDE38:
	.uaword	.LEFDE38-.LASFDE38
.LASFDE38:
	.uaword	.Lframe0
	.uaword	.LFB206
	.uaword	.LFE206-.LFB206
	.align 2
.LEFDE38:
.LSFDE40:
	.uaword	.LEFDE40-.LASFDE40
.LASFDE40:
	.uaword	.Lframe0
	.uaword	.LFB207
	.uaword	.LFE207-.LFB207
	.align 2
.LEFDE40:
.LSFDE42:
	.uaword	.LEFDE42-.LASFDE42
.LASFDE42:
	.uaword	.Lframe0
	.uaword	.LFB219
	.uaword	.LFE219-.LFB219
	.align 2
.LEFDE42:
.LSFDE44:
	.uaword	.LEFDE44-.LASFDE44
.LASFDE44:
	.uaword	.Lframe0
	.uaword	.LFB220
	.uaword	.LFE220-.LFB220
	.align 2
.LEFDE44:
.LSFDE46:
	.uaword	.LEFDE46-.LASFDE46
.LASFDE46:
	.uaword	.Lframe0
	.uaword	.LFB221
	.uaword	.LFE221-.LFB221
	.align 2
.LEFDE46:
.LSFDE48:
	.uaword	.LEFDE48-.LASFDE48
.LASFDE48:
	.uaword	.Lframe0
	.uaword	.LFB222
	.uaword	.LFE222-.LFB222
	.align 2
.LEFDE48:
.LSFDE50:
	.uaword	.LEFDE50-.LASFDE50
.LASFDE50:
	.uaword	.Lframe0
	.uaword	.LFB224
	.uaword	.LFE224-.LFB224
	.align 2
.LEFDE50:
.LSFDE52:
	.uaword	.LEFDE52-.LASFDE52
.LASFDE52:
	.uaword	.Lframe0
	.uaword	.LFB225
	.uaword	.LFE225-.LFB225
	.align 2
.LEFDE52:
.LSFDE54:
	.uaword	.LEFDE54-.LASFDE54
.LASFDE54:
	.uaword	.Lframe0
	.uaword	.LFB226
	.uaword	.LFE226-.LFB226
	.align 2
.LEFDE54:
.LSFDE56:
	.uaword	.LEFDE56-.LASFDE56
.LASFDE56:
	.uaword	.Lframe0
	.uaword	.LFB227
	.uaword	.LFE227-.LFB227
	.align 2
.LEFDE56:
.LSFDE58:
	.uaword	.LEFDE58-.LASFDE58
.LASFDE58:
	.uaword	.Lframe0
	.uaword	.LFB228
	.uaword	.LFE228-.LFB228
	.align 2
.LEFDE58:
.LSFDE60:
	.uaword	.LEFDE60-.LASFDE60
.LASFDE60:
	.uaword	.Lframe0
	.uaword	.LFB229
	.uaword	.LFE229-.LFB229
	.align 2
.LEFDE60:
.LSFDE62:
	.uaword	.LEFDE62-.LASFDE62
.LASFDE62:
	.uaword	.Lframe0
	.uaword	.LFB230
	.uaword	.LFE230-.LFB230
	.align 2
.LEFDE62:
.LSFDE64:
	.uaword	.LEFDE64-.LASFDE64
.LASFDE64:
	.uaword	.Lframe0
	.uaword	.LFB231
	.uaword	.LFE231-.LFB231
	.align 2
.LEFDE64:
.section .text,"ax",@progbits
.Letext0:
	.file 4 "./0_Src/4_McHal/Tricore/_Impl/IfxScu_cfg.h"
	.file 5 "./0_Src/4_McHal/Tricore/Cpu/Std/Platform_Types.h"
	.file 6 "./0_Src/4_McHal/Tricore/Cpu/Std/Ifx_Types.h"
	.file 7 "./0_Src/4_McHal/Tricore/_Reg/IfxScu_regdef.h"
	.file 8 "./0_Src/4_McHal/Tricore/_Impl/IfxCpu_cfg.h"
	.file 9 "./0_Src/4_McHal/Tricore/_Reg/IfxStm_regdef.h"
	.file 10 "./0_Src/4_McHal/Tricore/_Reg/IfxFlash_regdef.h"
	.file 11 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x8c17
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9."
	.string	"4 build on 2018-04-18 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -msmall-const=8 -mtc161 -g -g -O2 -fno-common -fno-short-enums -fsingle-precision-constant -fstrict-volatile-bitfields"
	.byte	0x1
	.string	"0_Src/4_McHal/Tricore/Scu/Std/IfxScuCcu.c"
	.string	"D:\\\\00.Workspace\\\\TC275\\\\SKKU_ECU_SOMEIP\\\\TC275_SOME_IP_Flatform"
	.uaword	.Ltext0
	.uaword	.Letext0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.string	"float"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.uahalf	0x584
	.uaword	0x20e
	.uleb128 0x4
	.string	"IfxScu_CCUCON0_CLKSEL_fBack"
	.sleb128 0
	.uleb128 0x4
	.string	"IfxScu_CCUCON0_CLKSEL_fPll"
	.sleb128 1
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.uahalf	0x58b
	.uaword	0x252
	.uleb128 0x4
	.string	"IfxScu_CCUCON1_INSEL_fOsc1"
	.sleb128 0
	.uleb128 0x4
	.string	"IfxScu_CCUCON1_INSEL_fOsc0"
	.sleb128 1
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x5
	.string	"uint8"
	.byte	0x5
	.byte	0x59
	.uaword	0x28f
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x5
	.string	"uint16"
	.byte	0x5
	.byte	0x5b
	.uaword	0x2bb
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x5
	.string	"sint32"
	.byte	0x5
	.byte	0x5c
	.uaword	0x252
	.uleb128 0x5
	.string	"uint32"
	.byte	0x5
	.byte	0x5d
	.uaword	0x25e
	.uleb128 0x5
	.string	"float32"
	.byte	0x5
	.byte	0x5e
	.uaword	0x18f
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.string	"double"
	.uleb128 0x5
	.string	"boolean"
	.byte	0x5
	.byte	0x68
	.uaword	0x28f
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x5
	.string	"uint64"
	.byte	0x6
	.byte	0x25
	.uaword	0x1a8
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x6
	.string	"_Ifx_SCU_ACCEN0_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x2d
	.uaword	0x550
	.uleb128 0x7
	.string	"EN0"
	.byte	0x7
	.byte	0x2f
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x7
	.string	"EN1"
	.byte	0x7
	.byte	0x30
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x7
	.string	"EN2"
	.byte	0x7
	.byte	0x31
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x7
	.string	"EN3"
	.byte	0x7
	.byte	0x32
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x7
	.string	"EN4"
	.byte	0x7
	.byte	0x33
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x7
	.string	"EN5"
	.byte	0x7
	.byte	0x34
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x7
	.string	"EN6"
	.byte	0x7
	.byte	0x35
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x7
	.string	"EN7"
	.byte	0x7
	.byte	0x36
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x7
	.string	"EN8"
	.byte	0x7
	.byte	0x37
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x7
	.string	"EN9"
	.byte	0x7
	.byte	0x38
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x7
	.string	"EN10"
	.byte	0x7
	.byte	0x39
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x7
	.string	"EN11"
	.byte	0x7
	.byte	0x3a
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x7
	.string	"EN12"
	.byte	0x7
	.byte	0x3b
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x7
	.string	"EN13"
	.byte	0x7
	.byte	0x3c
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x7
	.string	"EN14"
	.byte	0x7
	.byte	0x3d
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x7
	.string	"EN15"
	.byte	0x7
	.byte	0x3e
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.string	"EN16"
	.byte	0x7
	.byte	0x3f
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x7
	.string	"EN17"
	.byte	0x7
	.byte	0x40
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0x7
	.string	"EN18"
	.byte	0x7
	.byte	0x41
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0x7
	.string	"EN19"
	.byte	0x7
	.byte	0x42
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x7
	.string	"EN20"
	.byte	0x7
	.byte	0x43
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0x7
	.string	"EN21"
	.byte	0x7
	.byte	0x44
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0x7
	.string	"EN22"
	.byte	0x7
	.byte	0x45
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0x7
	.string	"EN23"
	.byte	0x7
	.byte	0x46
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.string	"EN24"
	.byte	0x7
	.byte	0x47
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x7
	.string	"EN25"
	.byte	0x7
	.byte	0x48
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x7
	.string	"EN26"
	.byte	0x7
	.byte	0x49
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x7
	.string	"EN27"
	.byte	0x7
	.byte	0x4a
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.string	"EN28"
	.byte	0x7
	.byte	0x4b
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x7
	.string	"EN29"
	.byte	0x7
	.byte	0x4c
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.string	"EN30"
	.byte	0x7
	.byte	0x4d
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.string	"EN31"
	.byte	0x7
	.byte	0x4e
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SCU_ACCEN0_Bits"
	.byte	0x7
	.byte	0x4f
	.uaword	0x33c
	.uleb128 0x6
	.string	"_Ifx_SCU_ACCEN1_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x52
	.uaword	0x598
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x7
	.byte	0x54
	.uaword	0x198
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SCU_ACCEN1_Bits"
	.byte	0x7
	.byte	0x55
	.uaword	0x56b
	.uleb128 0x6
	.string	"_Ifx_SCU_ARSTDIS_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x58
	.uaword	0x61a
	.uleb128 0x7
	.string	"STM0DIS"
	.byte	0x7
	.byte	0x5a
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x7
	.string	"STM1DIS"
	.byte	0x7
	.byte	0x5b
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x7
	.string	"STM2DIS"
	.byte	0x7
	.byte	0x5c
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x8
	.uaword	.LASF1
	.byte	0x7
	.byte	0x5d
	.uaword	0x198
	.byte	0x4
	.byte	0x1d
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SCU_ARSTDIS_Bits"
	.byte	0x7
	.byte	0x5e
	.uaword	0x5b3
	.uleb128 0x6
	.string	"_Ifx_SCU_CCUCON0_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x61
	.uaword	0x72a
	.uleb128 0x7
	.string	"BAUD1DIV"
	.byte	0x7
	.byte	0x63
	.uaword	0x198
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0x7
	.string	"BAUD2DIV"
	.byte	0x7
	.byte	0x64
	.uaword	0x198
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0
	.uleb128 0x7
	.string	"SRIDIV"
	.byte	0x7
	.byte	0x65
	.uaword	0x198
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0
	.uleb128 0x7
	.string	"LPDIV"
	.byte	0x7
	.byte	0x66
	.uaword	0x198
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.string	"SPBDIV"
	.byte	0x7
	.byte	0x67
	.uaword	0x198
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0
	.uleb128 0x7
	.string	"FSI2DIV"
	.byte	0x7
	.byte	0x68
	.uaword	0x198
	.byte	0x4
	.byte	0x2
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.uaword	.LASF2
	.byte	0x7
	.byte	0x69
	.uaword	0x198
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.string	"FSIDIV"
	.byte	0x7
	.byte	0x6a
	.uaword	0x198
	.byte	0x4
	.byte	0x2
	.byte	0x6
	.byte	0
	.uleb128 0x7
	.string	"ADCCLKSEL"
	.byte	0x7
	.byte	0x6b
	.uaword	0x198
	.byte	0x4
	.byte	0x2
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.string	"CLKSEL"
	.byte	0x7
	.byte	0x6c
	.uaword	0x198
	.byte	0x4
	.byte	0x2
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.string	"UP"
	.byte	0x7
	.byte	0x6d
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.string	"LCK"
	.byte	0x7
	.byte	0x6e
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SCU_CCUCON0_Bits"
	.byte	0x7
	.byte	0x6f
	.uaword	0x636
	.uleb128 0x6
	.string	"_Ifx_SCU_CCUCON1_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x72
	.uaword	0x81a
	.uleb128 0x7
	.string	"CANDIV"
	.byte	0x7
	.byte	0x74
	.uaword	0x198
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0x7
	.string	"ERAYDIV"
	.byte	0x7
	.byte	0x75
	.uaword	0x198
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0
	.uleb128 0x7
	.string	"STMDIV"
	.byte	0x7
	.byte	0x76
	.uaword	0x198
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0
	.uleb128 0x7
	.string	"GTMDIV"
	.byte	0x7
	.byte	0x77
	.uaword	0x198
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.string	"ETHDIV"
	.byte	0x7
	.byte	0x78
	.uaword	0x198
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0
	.uleb128 0x7
	.string	"ASCLINFDIV"
	.byte	0x7
	.byte	0x79
	.uaword	0x198
	.byte	0x4
	.byte	0x4
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.string	"ASCLINSDIV"
	.byte	0x7
	.byte	0x7a
	.uaword	0x198
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.string	"INSEL"
	.byte	0x7
	.byte	0x7b
	.uaword	0x198
	.byte	0x4
	.byte	0x2
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.string	"UP"
	.byte	0x7
	.byte	0x7c
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.string	"LCK"
	.byte	0x7
	.byte	0x7d
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SCU_CCUCON1_Bits"
	.byte	0x7
	.byte	0x7e
	.uaword	0x746
	.uleb128 0x6
	.string	"_Ifx_SCU_CCUCON2_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x81
	.uaword	0x893
	.uleb128 0x7
	.string	"BBBDIV"
	.byte	0x7
	.byte	0x83
	.uaword	0x198
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0x8
	.uaword	.LASF3
	.byte	0x7
	.byte	0x84
	.uaword	0x198
	.byte	0x4
	.byte	0x1a
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.string	"UP"
	.byte	0x7
	.byte	0x85
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.string	"LCK"
	.byte	0x7
	.byte	0x86
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SCU_CCUCON2_Bits"
	.byte	0x7
	.byte	0x87
	.uaword	0x836
	.uleb128 0x6
	.string	"_Ifx_SCU_CCUCON3_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x8a
	.uaword	0x97d
	.uleb128 0x7
	.string	"PLLDIV"
	.byte	0x7
	.byte	0x8c
	.uaword	0x198
	.byte	0x4
	.byte	0x6
	.byte	0x1a
	.byte	0
	.uleb128 0x7
	.string	"PLLSEL"
	.byte	0x7
	.byte	0x8d
	.uaword	0x198
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0
	.uleb128 0x7
	.string	"PLLERAYDIV"
	.byte	0x7
	.byte	0x8e
	.uaword	0x198
	.byte	0x4
	.byte	0x6
	.byte	0x12
	.byte	0
	.uleb128 0x7
	.string	"PLLERAYSEL"
	.byte	0x7
	.byte	0x8f
	.uaword	0x198
	.byte	0x4
	.byte	0x2
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.string	"SRIDIV"
	.byte	0x7
	.byte	0x90
	.uaword	0x198
	.byte	0x4
	.byte	0x6
	.byte	0xa
	.byte	0
	.uleb128 0x7
	.string	"SRISEL"
	.byte	0x7
	.byte	0x91
	.uaword	0x198
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.uaword	.LASF4
	.byte	0x7
	.byte	0x92
	.uaword	0x198
	.byte	0x4
	.byte	0x5
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.uaword	.LASF5
	.byte	0x7
	.byte	0x93
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.string	"UP"
	.byte	0x7
	.byte	0x94
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.string	"LCK"
	.byte	0x7
	.byte	0x95
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SCU_CCUCON3_Bits"
	.byte	0x7
	.byte	0x96
	.uaword	0x8af
	.uleb128 0x6
	.string	"_Ifx_SCU_CCUCON4_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x99
	.uaword	0xa5f
	.uleb128 0x7
	.string	"SPBDIV"
	.byte	0x7
	.byte	0x9b
	.uaword	0x198
	.byte	0x4
	.byte	0x6
	.byte	0x1a
	.byte	0
	.uleb128 0x7
	.string	"SPBSEL"
	.byte	0x7
	.byte	0x9c
	.uaword	0x198
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0
	.uleb128 0x7
	.string	"GTMDIV"
	.byte	0x7
	.byte	0x9d
	.uaword	0x198
	.byte	0x4
	.byte	0x6
	.byte	0x12
	.byte	0
	.uleb128 0x7
	.string	"GTMSEL"
	.byte	0x7
	.byte	0x9e
	.uaword	0x198
	.byte	0x4
	.byte	0x2
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.string	"STMDIV"
	.byte	0x7
	.byte	0x9f
	.uaword	0x198
	.byte	0x4
	.byte	0x6
	.byte	0xa
	.byte	0
	.uleb128 0x7
	.string	"STMSEL"
	.byte	0x7
	.byte	0xa0
	.uaword	0x198
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.uaword	.LASF4
	.byte	0x7
	.byte	0xa1
	.uaword	0x198
	.byte	0x4
	.byte	0x5
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.uaword	.LASF5
	.byte	0x7
	.byte	0xa2
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.string	"UP"
	.byte	0x7
	.byte	0xa3
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.string	"LCK"
	.byte	0x7
	.byte	0xa4
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SCU_CCUCON4_Bits"
	.byte	0x7
	.byte	0xa5
	.uaword	0x999
	.uleb128 0x6
	.string	"_Ifx_SCU_CCUCON5_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xa8
	.uaword	0xad8
	.uleb128 0x7
	.string	"MAXDIV"
	.byte	0x7
	.byte	0xaa
	.uaword	0x198
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0x8
	.uaword	.LASF3
	.byte	0x7
	.byte	0xab
	.uaword	0x198
	.byte	0x4
	.byte	0x1a
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.string	"UP"
	.byte	0x7
	.byte	0xac
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.string	"LCK"
	.byte	0x7
	.byte	0xad
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SCU_CCUCON5_Bits"
	.byte	0x7
	.byte	0xae
	.uaword	0xa7b
	.uleb128 0x6
	.string	"_Ifx_SCU_CCUCON6_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xb1
	.uaword	0xb35
	.uleb128 0x7
	.string	"CPU0DIV"
	.byte	0x7
	.byte	0xb3
	.uaword	0x198
	.byte	0x4
	.byte	0x6
	.byte	0x1a
	.byte	0
	.uleb128 0x8
	.uaword	.LASF6
	.byte	0x7
	.byte	0xb4
	.uaword	0x198
	.byte	0x4
	.byte	0x1a
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SCU_CCUCON6_Bits"
	.byte	0x7
	.byte	0xb5
	.uaword	0xaf4
	.uleb128 0x6
	.string	"_Ifx_SCU_CCUCON7_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xb8
	.uaword	0xb92
	.uleb128 0x7
	.string	"CPU1DIV"
	.byte	0x7
	.byte	0xba
	.uaword	0x198
	.byte	0x4
	.byte	0x6
	.byte	0x1a
	.byte	0
	.uleb128 0x8
	.uaword	.LASF6
	.byte	0x7
	.byte	0xbb
	.uaword	0x198
	.byte	0x4
	.byte	0x1a
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SCU_CCUCON7_Bits"
	.byte	0x7
	.byte	0xbc
	.uaword	0xb51
	.uleb128 0x6
	.string	"_Ifx_SCU_CCUCON8_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xbf
	.uaword	0xbef
	.uleb128 0x7
	.string	"CPU2DIV"
	.byte	0x7
	.byte	0xc1
	.uaword	0x198
	.byte	0x4
	.byte	0x6
	.byte	0x1a
	.byte	0
	.uleb128 0x8
	.uaword	.LASF6
	.byte	0x7
	.byte	0xc2
	.uaword	0x198
	.byte	0x4
	.byte	0x1a
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SCU_CCUCON8_Bits"
	.byte	0x7
	.byte	0xc3
	.uaword	0xbae
	.uleb128 0x6
	.string	"_Ifx_SCU_CCUCON9_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xc6
	.uaword	0xc89
	.uleb128 0x7
	.string	"ADCDIV"
	.byte	0x7
	.byte	0xc8
	.uaword	0x198
	.byte	0x4
	.byte	0x6
	.byte	0x1a
	.byte	0
	.uleb128 0x7
	.string	"ADCSEL"
	.byte	0x7
	.byte	0xc9
	.uaword	0x198
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.uaword	.LASF7
	.byte	0x7
	.byte	0xca
	.uaword	0x198
	.byte	0x4
	.byte	0x15
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.uaword	.LASF5
	.byte	0x7
	.byte	0xcb
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.string	"UP"
	.byte	0x7
	.byte	0xcc
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.string	"LCK"
	.byte	0x7
	.byte	0xcd
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SCU_CCUCON9_Bits"
	.byte	0x7
	.byte	0xce
	.uaword	0xc0b
	.uleb128 0x6
	.string	"_Ifx_SCU_CHIPID_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xd1
	.uaword	0xd52
	.uleb128 0x7
	.string	"CHREV"
	.byte	0x7
	.byte	0xd3
	.uaword	0x198
	.byte	0x4
	.byte	0x6
	.byte	0x1a
	.byte	0
	.uleb128 0x7
	.string	"CHTEC"
	.byte	0x7
	.byte	0xd4
	.uaword	0x198
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0
	.uleb128 0x7
	.string	"CHID"
	.byte	0x7
	.byte	0xd5
	.uaword	0x198
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.string	"EEA"
	.byte	0x7
	.byte	0xd6
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x7
	.string	"UCODE"
	.byte	0x7
	.byte	0xd7
	.uaword	0x198
	.byte	0x4
	.byte	0x7
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.string	"FSIZE"
	.byte	0x7
	.byte	0xd8
	.uaword	0x198
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.string	"SP"
	.byte	0x7
	.byte	0xd9
	.uaword	0x198
	.byte	0x4
	.byte	0x2
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.string	"SEC"
	.byte	0x7
	.byte	0xda
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.uaword	.LASF8
	.byte	0x7
	.byte	0xdb
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SCU_CHIPID_Bits"
	.byte	0x7
	.byte	0xdc
	.uaword	0xca5
	.uleb128 0x6
	.string	"_Ifx_SCU_DTSCON_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xdf
	.uaword	0xde7
	.uleb128 0x7
	.string	"PWD"
	.byte	0x7
	.byte	0xe1
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x7
	.string	"START"
	.byte	0x7
	.byte	0xe2
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x8
	.uaword	.LASF9
	.byte	0x7
	.byte	0xe3
	.uaword	0x198
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0
	.uleb128 0x7
	.string	"CAL"
	.byte	0x7
	.byte	0xe4
	.uaword	0x198
	.byte	0x4
	.byte	0x14
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.uaword	.LASF4
	.byte	0x7
	.byte	0xe5
	.uaword	0x198
	.byte	0x4
	.byte	0x7
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.uaword	.LASF5
	.byte	0x7
	.byte	0xe6
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SCU_DTSCON_Bits"
	.byte	0x7
	.byte	0xe7
	.uaword	0xd6d
	.uleb128 0x6
	.string	"_Ifx_SCU_DTSLIM_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xea
	.uaword	0xe8d
	.uleb128 0x7
	.string	"LOWER"
	.byte	0x7
	.byte	0xec
	.uaword	0x198
	.byte	0x4
	.byte	0xa
	.byte	0x16
	.byte	0
	.uleb128 0x8
	.uaword	.LASF10
	.byte	0x7
	.byte	0xed
	.uaword	0x198
	.byte	0x4
	.byte	0x5
	.byte	0x11
	.byte	0
	.uleb128 0x7
	.string	"LLU"
	.byte	0x7
	.byte	0xee
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.string	"UPPER"
	.byte	0x7
	.byte	0xef
	.uaword	0x198
	.byte	0x4
	.byte	0xa
	.byte	0x6
	.byte	0
	.uleb128 0x8
	.uaword	.LASF11
	.byte	0x7
	.byte	0xf0
	.uaword	0x198
	.byte	0x4
	.byte	0x4
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.uaword	.LASF5
	.byte	0x7
	.byte	0xf1
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.string	"UOF"
	.byte	0x7
	.byte	0xf2
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SCU_DTSLIM_Bits"
	.byte	0x7
	.byte	0xf3
	.uaword	0xe02
	.uleb128 0x6
	.string	"_Ifx_SCU_DTSSTAT_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xf6
	.uaword	0xf16
	.uleb128 0x7
	.string	"RESULT"
	.byte	0x7
	.byte	0xf8
	.uaword	0x198
	.byte	0x4
	.byte	0xa
	.byte	0x16
	.byte	0
	.uleb128 0x8
	.uaword	.LASF10
	.byte	0x7
	.byte	0xf9
	.uaword	0x198
	.byte	0x4
	.byte	0x4
	.byte	0x12
	.byte	0
	.uleb128 0x7
	.string	"RDY"
	.byte	0x7
	.byte	0xfa
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x7
	.string	"BUSY"
	.byte	0x7
	.byte	0xfb
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.uaword	.LASF12
	.byte	0x7
	.byte	0xfc
	.uaword	0x198
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SCU_DTSSTAT_Bits"
	.byte	0x7
	.byte	0xfd
	.uaword	0xea8
	.uleb128 0x9
	.string	"_Ifx_SCU_EICR_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x100
	.uaword	0x1071
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x7
	.uahalf	0x102
	.uaword	0x198
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0xb
	.string	"EXIS0"
	.byte	0x7
	.uahalf	0x103
	.uaword	0x198
	.byte	0x4
	.byte	0x3
	.byte	0x19
	.byte	0
	.uleb128 0xa
	.uaword	.LASF13
	.byte	0x7
	.uahalf	0x104
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.string	"FEN0"
	.byte	0x7
	.uahalf	0x105
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xb
	.string	"REN0"
	.byte	0x7
	.uahalf	0x106
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xb
	.string	"LDEN0"
	.byte	0x7
	.uahalf	0x107
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xb
	.string	"EIEN0"
	.byte	0x7
	.uahalf	0x108
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xb
	.string	"INP0"
	.byte	0x7
	.uahalf	0x109
	.uaword	0x198
	.byte	0x4
	.byte	0x3
	.byte	0x11
	.byte	0
	.uleb128 0xa
	.uaword	.LASF14
	.byte	0x7
	.uahalf	0x10a
	.uaword	0x198
	.byte	0x4
	.byte	0x5
	.byte	0xc
	.byte	0
	.uleb128 0xb
	.string	"EXIS1"
	.byte	0x7
	.uahalf	0x10b
	.uaword	0x198
	.byte	0x4
	.byte	0x3
	.byte	0x9
	.byte	0
	.uleb128 0xa
	.uaword	.LASF15
	.byte	0x7
	.uahalf	0x10c
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.string	"FEN1"
	.byte	0x7
	.uahalf	0x10d
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xb
	.string	"REN1"
	.byte	0x7
	.uahalf	0x10e
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xb
	.string	"LDEN1"
	.byte	0x7
	.uahalf	0x10f
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.string	"EIEN1"
	.byte	0x7
	.uahalf	0x110
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.string	"INP1"
	.byte	0x7
	.uahalf	0x111
	.uaword	0x198
	.byte	0x4
	.byte	0x3
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.uaword	.LASF8
	.byte	0x7
	.uahalf	0x112
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_EICR_Bits"
	.byte	0x7
	.uahalf	0x113
	.uaword	0xf32
	.uleb128 0x9
	.string	"_Ifx_SCU_EIFR_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x116
	.uaword	0x1148
	.uleb128 0xb
	.string	"INTF0"
	.byte	0x7
	.uahalf	0x118
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xb
	.string	"INTF1"
	.byte	0x7
	.uahalf	0x119
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xb
	.string	"INTF2"
	.byte	0x7
	.uahalf	0x11a
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xb
	.string	"INTF3"
	.byte	0x7
	.uahalf	0x11b
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xb
	.string	"INTF4"
	.byte	0x7
	.uahalf	0x11c
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xb
	.string	"INTF5"
	.byte	0x7
	.uahalf	0x11d
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xb
	.string	"INTF6"
	.byte	0x7
	.uahalf	0x11e
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xb
	.string	"INTF7"
	.byte	0x7
	.uahalf	0x11f
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xa
	.uaword	.LASF7
	.byte	0x7
	.uahalf	0x120
	.uaword	0x198
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_EIFR_Bits"
	.byte	0x7
	.uahalf	0x121
	.uaword	0x108b
	.uleb128 0x9
	.string	"_Ifx_SCU_EMSR_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x124
	.uaword	0x123a
	.uleb128 0xb
	.string	"POL"
	.byte	0x7
	.uahalf	0x126
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xb
	.string	"MODE"
	.byte	0x7
	.uahalf	0x127
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xb
	.string	"ENON"
	.byte	0x7
	.uahalf	0x128
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xb
	.string	"PSEL"
	.byte	0x7
	.uahalf	0x129
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xa
	.uaword	.LASF3
	.byte	0x7
	.uahalf	0x12a
	.uaword	0x198
	.byte	0x4
	.byte	0xc
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.string	"EMSF"
	.byte	0x7
	.uahalf	0x12b
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xb
	.string	"SEMSF"
	.byte	0x7
	.uahalf	0x12c
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xa
	.uaword	.LASF16
	.byte	0x7
	.uahalf	0x12d
	.uaword	0x198
	.byte	0x4
	.byte	0x6
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.string	"EMSFM"
	.byte	0x7
	.uahalf	0x12e
	.uaword	0x198
	.byte	0x4
	.byte	0x2
	.byte	0x6
	.byte	0
	.uleb128 0xb
	.string	"SEMSFM"
	.byte	0x7
	.uahalf	0x12f
	.uaword	0x198
	.byte	0x4
	.byte	0x2
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.uaword	.LASF17
	.byte	0x7
	.uahalf	0x130
	.uaword	0x198
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_EMSR_Bits"
	.byte	0x7
	.uahalf	0x131
	.uaword	0x1162
	.uleb128 0x9
	.string	"_Ifx_SCU_ESRCFG_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x134
	.uaword	0x12a5
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x7
	.uahalf	0x136
	.uaword	0x198
	.byte	0x4
	.byte	0x7
	.byte	0x19
	.byte	0
	.uleb128 0xb
	.string	"EDCON"
	.byte	0x7
	.uahalf	0x137
	.uaword	0x198
	.byte	0x4
	.byte	0x2
	.byte	0x17
	.byte	0
	.uleb128 0xa
	.uaword	.LASF18
	.byte	0x7
	.uahalf	0x138
	.uaword	0x198
	.byte	0x4
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_ESRCFG_Bits"
	.byte	0x7
	.uahalf	0x139
	.uaword	0x1254
	.uleb128 0x9
	.string	"_Ifx_SCU_ESROCFG_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x13c
	.uaword	0x1311
	.uleb128 0xb
	.string	"ARI"
	.byte	0x7
	.uahalf	0x13e
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xb
	.string	"ARC"
	.byte	0x7
	.uahalf	0x13f
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xa
	.uaword	.LASF9
	.byte	0x7
	.uahalf	0x140
	.uaword	0x198
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_ESROCFG_Bits"
	.byte	0x7
	.uahalf	0x141
	.uaword	0x12c1
	.uleb128 0x9
	.string	"_Ifx_SCU_EVR13CON_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x144
	.uaword	0x13ab
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x7
	.uahalf	0x146
	.uaword	0x198
	.byte	0x4
	.byte	0x1c
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.string	"EVR13OFF"
	.byte	0x7
	.uahalf	0x147
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.string	"BPEVR13OFF"
	.byte	0x7
	.uahalf	0x148
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xa
	.uaword	.LASF19
	.byte	0x7
	.uahalf	0x149
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.string	"LCK"
	.byte	0x7
	.uahalf	0x14a
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_EVR13CON_Bits"
	.byte	0x7
	.uahalf	0x14b
	.uaword	0x132e
	.uleb128 0x9
	.string	"_Ifx_SCU_EVR33CON_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x14e
	.uaword	0x1446
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x7
	.uahalf	0x150
	.uaword	0x198
	.byte	0x4
	.byte	0x1c
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.string	"EVR33OFF"
	.byte	0x7
	.uahalf	0x151
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.string	"BPEVR33OFF"
	.byte	0x7
	.uahalf	0x152
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xa
	.uaword	.LASF19
	.byte	0x7
	.uahalf	0x153
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.string	"LCK"
	.byte	0x7
	.uahalf	0x154
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_EVR33CON_Bits"
	.byte	0x7
	.uahalf	0x155
	.uaword	0x13c9
	.uleb128 0x9
	.string	"_Ifx_SCU_EVRADCSTAT_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x158
	.uaword	0x14e1
	.uleb128 0xb
	.string	"ADC13V"
	.byte	0x7
	.uahalf	0x15a
	.uaword	0x198
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.string	"ADC33V"
	.byte	0x7
	.uahalf	0x15b
	.uaword	0x198
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.string	"ADCSWDV"
	.byte	0x7
	.uahalf	0x15c
	.uaword	0x198
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.uaword	.LASF4
	.byte	0x7
	.uahalf	0x15d
	.uaword	0x198
	.byte	0x4
	.byte	0x7
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.string	"VAL"
	.byte	0x7
	.uahalf	0x15e
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_EVRADCSTAT_Bits"
	.byte	0x7
	.uahalf	0x15f
	.uaword	0x1464
	.uleb128 0x9
	.string	"_Ifx_SCU_EVRDVSTAT_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x162
	.uaword	0x157f
	.uleb128 0xb
	.string	"DVS13TRIM"
	.byte	0x7
	.uahalf	0x164
	.uaword	0x198
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xa
	.uaword	.LASF7
	.byte	0x7
	.uahalf	0x165
	.uaword	0x198
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.string	"DVS33TRIM"
	.byte	0x7
	.uahalf	0x166
	.uaword	0x198
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.uaword	.LASF4
	.byte	0x7
	.uahalf	0x167
	.uaword	0x198
	.byte	0x4
	.byte	0x7
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.string	"VAL"
	.byte	0x7
	.uahalf	0x168
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_EVRDVSTAT_Bits"
	.byte	0x7
	.uahalf	0x169
	.uaword	0x1501
	.uleb128 0x9
	.string	"_Ifx_SCU_EVRMONCTRL_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x16c
	.uaword	0x16c7
	.uleb128 0xb
	.string	"EVR13OVMOD"
	.byte	0x7
	.uahalf	0x16e
	.uaword	0x198
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0
	.uleb128 0xa
	.uaword	.LASF9
	.byte	0x7
	.uahalf	0x16f
	.uaword	0x198
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0
	.uleb128 0xb
	.string	"EVR13UVMOD"
	.byte	0x7
	.uahalf	0x170
	.uaword	0x198
	.byte	0x4
	.byte	0x2
	.byte	0x1a
	.byte	0
	.uleb128 0xa
	.uaword	.LASF6
	.byte	0x7
	.uahalf	0x171
	.uaword	0x198
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.string	"EVR33OVMOD"
	.byte	0x7
	.uahalf	0x172
	.uaword	0x198
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0
	.uleb128 0xa
	.uaword	.LASF10
	.byte	0x7
	.uahalf	0x173
	.uaword	0x198
	.byte	0x4
	.byte	0x2
	.byte	0x14
	.byte	0
	.uleb128 0xb
	.string	"EVR33UVMOD"
	.byte	0x7
	.uahalf	0x174
	.uaword	0x198
	.byte	0x4
	.byte	0x2
	.byte	0x12
	.byte	0
	.uleb128 0xa
	.uaword	.LASF20
	.byte	0x7
	.uahalf	0x175
	.uaword	0x198
	.byte	0x4
	.byte	0x2
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.string	"SWDOVMOD"
	.byte	0x7
	.uahalf	0x176
	.uaword	0x198
	.byte	0x4
	.byte	0x2
	.byte	0xe
	.byte	0
	.uleb128 0xa
	.uaword	.LASF16
	.byte	0x7
	.uahalf	0x177
	.uaword	0x198
	.byte	0x4
	.byte	0x2
	.byte	0xc
	.byte	0
	.uleb128 0xb
	.string	"SWDUVMOD"
	.byte	0x7
	.uahalf	0x178
	.uaword	0x198
	.byte	0x4
	.byte	0x2
	.byte	0xa
	.byte	0
	.uleb128 0xa
	.uaword	.LASF2
	.byte	0x7
	.uahalf	0x179
	.uaword	0x198
	.byte	0x4
	.byte	0x8
	.byte	0x2
	.byte	0
	.uleb128 0xa
	.uaword	.LASF5
	.byte	0x7
	.uahalf	0x17a
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.uaword	.LASF8
	.byte	0x7
	.uahalf	0x17b
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_EVRMONCTRL_Bits"
	.byte	0x7
	.uahalf	0x17c
	.uaword	0x159e
	.uleb128 0x9
	.string	"_Ifx_SCU_EVROSCCTRL_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x17f
	.uaword	0x17a6
	.uleb128 0xb
	.string	"OSCTRIM"
	.byte	0x7
	.uahalf	0x181
	.uaword	0x198
	.byte	0x4
	.byte	0xa
	.byte	0x16
	.byte	0
	.uleb128 0xb
	.string	"OSCPTAT"
	.byte	0x7
	.uahalf	0x182
	.uaword	0x198
	.byte	0x4
	.byte	0x6
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.string	"OSCANASEL"
	.byte	0x7
	.uahalf	0x183
	.uaword	0x198
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0
	.uleb128 0xb
	.string	"HPBGTRIM"
	.byte	0x7
	.uahalf	0x184
	.uaword	0x198
	.byte	0x4
	.byte	0x7
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.string	"HPBGCLKEN"
	.byte	0x7
	.uahalf	0x185
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.string	"OSC3V3"
	.byte	0x7
	.uahalf	0x186
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.uaword	.LASF21
	.byte	0x7
	.uahalf	0x187
	.uaword	0x198
	.byte	0x4
	.byte	0x2
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.string	"LCK"
	.byte	0x7
	.uahalf	0x188
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_EVROSCCTRL_Bits"
	.byte	0x7
	.uahalf	0x189
	.uaword	0x16e7
	.uleb128 0x9
	.string	"_Ifx_SCU_EVROVMON_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x18c
	.uaword	0x185a
	.uleb128 0xb
	.string	"EVR13OVVAL"
	.byte	0x7
	.uahalf	0x18e
	.uaword	0x198
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.string	"EVR33OVVAL"
	.byte	0x7
	.uahalf	0x18f
	.uaword	0x198
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.string	"SWDOVVAL"
	.byte	0x7
	.uahalf	0x190
	.uaword	0x198
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.uaword	.LASF4
	.byte	0x7
	.uahalf	0x191
	.uaword	0x198
	.byte	0x4
	.byte	0x6
	.byte	0x2
	.byte	0
	.uleb128 0xa
	.uaword	.LASF5
	.byte	0x7
	.uahalf	0x192
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.string	"LCK"
	.byte	0x7
	.uahalf	0x193
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_EVROVMON_Bits"
	.byte	0x7
	.uahalf	0x194
	.uaword	0x17c6
	.uleb128 0x9
	.string	"_Ifx_SCU_EVRRSTCON_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x197
	.uaword	0x1966
	.uleb128 0xb
	.string	"RST13TRIM"
	.byte	0x7
	.uahalf	0x199
	.uaword	0x198
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xa
	.uaword	.LASF7
	.byte	0x7
	.uahalf	0x19a
	.uaword	0x198
	.byte	0x4
	.byte	0x10
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.string	"RST13OFF"
	.byte	0x7
	.uahalf	0x19b
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xb
	.string	"BPRST13OFF"
	.byte	0x7
	.uahalf	0x19c
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xb
	.string	"RST33OFF"
	.byte	0x7
	.uahalf	0x19d
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.string	"BPRST33OFF"
	.byte	0x7
	.uahalf	0x19e
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.string	"RSTSWDOFF"
	.byte	0x7
	.uahalf	0x19f
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.string	"BPRSTSWDOFF"
	.byte	0x7
	.uahalf	0x1a0
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xa
	.uaword	.LASF5
	.byte	0x7
	.uahalf	0x1a1
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.string	"LCK"
	.byte	0x7
	.uahalf	0x1a2
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_EVRRSTCON_Bits"
	.byte	0x7
	.uahalf	0x1a3
	.uaword	0x1878
	.uleb128 0x9
	.string	"_Ifx_SCU_EVRSDCOEFF1_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x1a6
	.uaword	0x19fc
	.uleb128 0xb
	.string	"SD5P"
	.byte	0x7
	.uahalf	0x1a8
	.uaword	0x198
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.string	"SD5I"
	.byte	0x7
	.uahalf	0x1a9
	.uaword	0x198
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.string	"SD5D"
	.byte	0x7
	.uahalf	0x1aa
	.uaword	0x198
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.uaword	.LASF4
	.byte	0x7
	.uahalf	0x1ab
	.uaword	0x198
	.byte	0x4
	.byte	0x7
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.string	"LCK"
	.byte	0x7
	.uahalf	0x1ac
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_EVRSDCOEFF1_Bits"
	.byte	0x7
	.uahalf	0x1ad
	.uaword	0x1985
	.uleb128 0x9
	.string	"_Ifx_SCU_EVRSDCOEFF2_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x1b0
	.uaword	0x1a97
	.uleb128 0xb
	.string	"SD33P"
	.byte	0x7
	.uahalf	0x1b2
	.uaword	0x198
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.string	"SD33I"
	.byte	0x7
	.uahalf	0x1b3
	.uaword	0x198
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.string	"SD33D"
	.byte	0x7
	.uahalf	0x1b4
	.uaword	0x198
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.uaword	.LASF4
	.byte	0x7
	.uahalf	0x1b5
	.uaword	0x198
	.byte	0x4
	.byte	0x7
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.string	"LCK"
	.byte	0x7
	.uahalf	0x1b6
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_EVRSDCOEFF2_Bits"
	.byte	0x7
	.uahalf	0x1b7
	.uaword	0x1a1d
	.uleb128 0x9
	.string	"_Ifx_SCU_EVRSDCOEFF3_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x1ba
	.uaword	0x1b38
	.uleb128 0xb
	.string	"CT5REG0"
	.byte	0x7
	.uahalf	0x1bc
	.uaword	0x198
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.string	"CT5REG1"
	.byte	0x7
	.uahalf	0x1bd
	.uaword	0x198
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.string	"CT5REG2"
	.byte	0x7
	.uahalf	0x1be
	.uaword	0x198
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.uaword	.LASF4
	.byte	0x7
	.uahalf	0x1bf
	.uaword	0x198
	.byte	0x4
	.byte	0x7
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.string	"LCK"
	.byte	0x7
	.uahalf	0x1c0
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_EVRSDCOEFF3_Bits"
	.byte	0x7
	.uahalf	0x1c1
	.uaword	0x1ab8
	.uleb128 0x9
	.string	"_Ifx_SCU_EVRSDCOEFF4_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x1c4
	.uaword	0x1bc5
	.uleb128 0xb
	.string	"CT5REG3"
	.byte	0x7
	.uahalf	0x1c6
	.uaword	0x198
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.string	"CT5REG4"
	.byte	0x7
	.uahalf	0x1c7
	.uaword	0x198
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.uaword	.LASF12
	.byte	0x7
	.uahalf	0x1c8
	.uaword	0x198
	.byte	0x4
	.byte	0xf
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.string	"LCK"
	.byte	0x7
	.uahalf	0x1c9
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_EVRSDCOEFF4_Bits"
	.byte	0x7
	.uahalf	0x1ca
	.uaword	0x1b59
	.uleb128 0x9
	.string	"_Ifx_SCU_EVRSDCOEFF5_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x1cd
	.uaword	0x1c69
	.uleb128 0xb
	.string	"CT33REG0"
	.byte	0x7
	.uahalf	0x1cf
	.uaword	0x198
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.string	"CT33REG1"
	.byte	0x7
	.uahalf	0x1d0
	.uaword	0x198
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.string	"CT33REG2"
	.byte	0x7
	.uahalf	0x1d1
	.uaword	0x198
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.uaword	.LASF4
	.byte	0x7
	.uahalf	0x1d2
	.uaword	0x198
	.byte	0x4
	.byte	0x7
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.string	"LCK"
	.byte	0x7
	.uahalf	0x1d3
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_EVRSDCOEFF5_Bits"
	.byte	0x7
	.uahalf	0x1d4
	.uaword	0x1be6
	.uleb128 0x9
	.string	"_Ifx_SCU_EVRSDCOEFF6_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x1d7
	.uaword	0x1cf8
	.uleb128 0xb
	.string	"CT33REG3"
	.byte	0x7
	.uahalf	0x1d9
	.uaword	0x198
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.string	"CT33REG4"
	.byte	0x7
	.uahalf	0x1da
	.uaword	0x198
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.uaword	.LASF12
	.byte	0x7
	.uahalf	0x1db
	.uaword	0x198
	.byte	0x4
	.byte	0xf
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.string	"LCK"
	.byte	0x7
	.uahalf	0x1dc
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_EVRSDCOEFF6_Bits"
	.byte	0x7
	.uahalf	0x1dd
	.uaword	0x1c8a
	.uleb128 0x9
	.string	"_Ifx_SCU_EVRSDCTRL1_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x1e0
	.uaword	0x1dae
	.uleb128 0xb
	.string	"SDFREQSPRD"
	.byte	0x7
	.uahalf	0x1e2
	.uaword	0x198
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.string	"SDFREQ"
	.byte	0x7
	.uahalf	0x1e3
	.uaword	0x198
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.string	"SDSTEP"
	.byte	0x7
	.uahalf	0x1e4
	.uaword	0x198
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.uaword	.LASF17
	.byte	0x7
	.uahalf	0x1e5
	.uaword	0x198
	.byte	0x4
	.byte	0x2
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.string	"SDSAMPLE"
	.byte	0x7
	.uahalf	0x1e6
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.string	"LCK"
	.byte	0x7
	.uahalf	0x1e7
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_EVRSDCTRL1_Bits"
	.byte	0x7
	.uahalf	0x1e8
	.uaword	0x1d19
	.uleb128 0x9
	.string	"_Ifx_SCU_EVRSDCTRL2_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x1eb
	.uaword	0x1e5c
	.uleb128 0xb
	.string	"DRVP"
	.byte	0x7
	.uahalf	0x1ed
	.uaword	0x198
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.string	"SDMINMAXDC"
	.byte	0x7
	.uahalf	0x1ee
	.uaword	0x198
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.string	"DRVN"
	.byte	0x7
	.uahalf	0x1ef
	.uaword	0x198
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.string	"SDLUT"
	.byte	0x7
	.uahalf	0x1f0
	.uaword	0x198
	.byte	0x4
	.byte	0x6
	.byte	0x2
	.byte	0
	.uleb128 0xa
	.uaword	.LASF19
	.byte	0x7
	.uahalf	0x1f1
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.string	"LCK"
	.byte	0x7
	.uahalf	0x1f2
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_EVRSDCTRL2_Bits"
	.byte	0x7
	.uahalf	0x1f3
	.uaword	0x1dce
	.uleb128 0x9
	.string	"_Ifx_SCU_EVRSDCTRL3_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x1f6
	.uaword	0x1efb
	.uleb128 0xb
	.string	"SDPWMPRE"
	.byte	0x7
	.uahalf	0x1f8
	.uaword	0x198
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.string	"SDPID"
	.byte	0x7
	.uahalf	0x1f9
	.uaword	0x198
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.string	"SDVOKLVL"
	.byte	0x7
	.uahalf	0x1fa
	.uaword	0x198
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.uaword	.LASF4
	.byte	0x7
	.uahalf	0x1fb
	.uaword	0x198
	.byte	0x4
	.byte	0x7
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.string	"LCK"
	.byte	0x7
	.uahalf	0x1fc
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_EVRSDCTRL3_Bits"
	.byte	0x7
	.uahalf	0x1fd
	.uaword	0x1e7c
	.uleb128 0x9
	.string	"_Ifx_SCU_EVRSDCTRL4_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x200
	.uaword	0x1f82
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x7
	.uahalf	0x202
	.uaword	0x198
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.string	"SYNCDIV"
	.byte	0x7
	.uahalf	0x203
	.uaword	0x198
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0xa
	.uaword	.LASF22
	.byte	0x7
	.uahalf	0x204
	.uaword	0x198
	.byte	0x4
	.byte	0x14
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.string	"LCK"
	.byte	0x7
	.uahalf	0x205
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_EVRSDCTRL4_Bits"
	.byte	0x7
	.uahalf	0x206
	.uaword	0x1f1b
	.uleb128 0x9
	.string	"_Ifx_SCU_EVRSTAT_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x209
	.uaword	0x209d
	.uleb128 0xb
	.string	"EVR13"
	.byte	0x7
	.uahalf	0x20b
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xb
	.string	"OV13"
	.byte	0x7
	.uahalf	0x20c
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xb
	.string	"EVR33"
	.byte	0x7
	.uahalf	0x20d
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xb
	.string	"OV33"
	.byte	0x7
	.uahalf	0x20e
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xb
	.string	"OVSWD"
	.byte	0x7
	.uahalf	0x20f
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xb
	.string	"UV13"
	.byte	0x7
	.uahalf	0x210
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xb
	.string	"UV33"
	.byte	0x7
	.uahalf	0x211
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xb
	.string	"UVSWD"
	.byte	0x7
	.uahalf	0x212
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.string	"EXTPASS13"
	.byte	0x7
	.uahalf	0x213
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xb
	.string	"EXTPASS33"
	.byte	0x7
	.uahalf	0x214
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xb
	.string	"BGPROK"
	.byte	0x7
	.uahalf	0x215
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xa
	.uaword	.LASF22
	.byte	0x7
	.uahalf	0x216
	.uaword	0x198
	.byte	0x4
	.byte	0x15
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_EVRSTAT_Bits"
	.byte	0x7
	.uahalf	0x217
	.uaword	0x1fa2
	.uleb128 0x9
	.string	"_Ifx_SCU_EVRTRIM_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x21a
	.uaword	0x2120
	.uleb128 0xb
	.string	"EVR13TRIM"
	.byte	0x7
	.uahalf	0x21c
	.uaword	0x198
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xa
	.uaword	.LASF7
	.byte	0x7
	.uahalf	0x21d
	.uaword	0x198
	.byte	0x4
	.byte	0x16
	.byte	0x2
	.byte	0
	.uleb128 0xa
	.uaword	.LASF5
	.byte	0x7
	.uahalf	0x21e
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.string	"LCK"
	.byte	0x7
	.uahalf	0x21f
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_EVRTRIM_Bits"
	.byte	0x7
	.uahalf	0x220
	.uaword	0x20ba
	.uleb128 0x9
	.string	"_Ifx_SCU_EVRUVMON_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x223
	.uaword	0x21d1
	.uleb128 0xb
	.string	"EVR13UVVAL"
	.byte	0x7
	.uahalf	0x225
	.uaword	0x198
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.string	"EVR33UVVAL"
	.byte	0x7
	.uahalf	0x226
	.uaword	0x198
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.string	"SWDUVVAL"
	.byte	0x7
	.uahalf	0x227
	.uaword	0x198
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.uaword	.LASF4
	.byte	0x7
	.uahalf	0x228
	.uaword	0x198
	.byte	0x4
	.byte	0x6
	.byte	0x2
	.byte	0
	.uleb128 0xa
	.uaword	.LASF5
	.byte	0x7
	.uahalf	0x229
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.string	"LCK"
	.byte	0x7
	.uahalf	0x22a
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_EVRUVMON_Bits"
	.byte	0x7
	.uahalf	0x22b
	.uaword	0x213d
	.uleb128 0x9
	.string	"_Ifx_SCU_EXTCON_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x22e
	.uaword	0x22a2
	.uleb128 0xb
	.string	"EN0"
	.byte	0x7
	.uahalf	0x230
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xa
	.uaword	.LASF23
	.byte	0x7
	.uahalf	0x231
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xb
	.string	"SEL0"
	.byte	0x7
	.uahalf	0x232
	.uaword	0x198
	.byte	0x4
	.byte	0x4
	.byte	0x1a
	.byte	0
	.uleb128 0xa
	.uaword	.LASF6
	.byte	0x7
	.uahalf	0x233
	.uaword	0x198
	.byte	0x4
	.byte	0xa
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.string	"EN1"
	.byte	0x7
	.uahalf	0x234
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xb
	.string	"NSEL"
	.byte	0x7
	.uahalf	0x235
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xb
	.string	"SEL1"
	.byte	0x7
	.uahalf	0x236
	.uaword	0x198
	.byte	0x4
	.byte	0x4
	.byte	0xa
	.byte	0
	.uleb128 0xa
	.uaword	.LASF2
	.byte	0x7
	.uahalf	0x237
	.uaword	0x198
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.string	"DIV1"
	.byte	0x7
	.uahalf	0x238
	.uaword	0x198
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_EXTCON_Bits"
	.byte	0x7
	.uahalf	0x239
	.uaword	0x21ef
	.uleb128 0x9
	.string	"_Ifx_SCU_FDR_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x23c
	.uaword	0x2340
	.uleb128 0xb
	.string	"STEP"
	.byte	0x7
	.uahalf	0x23e
	.uaword	0x198
	.byte	0x4
	.byte	0xa
	.byte	0x16
	.byte	0
	.uleb128 0xa
	.uaword	.LASF10
	.byte	0x7
	.uahalf	0x23f
	.uaword	0x198
	.byte	0x4
	.byte	0x4
	.byte	0x12
	.byte	0
	.uleb128 0xb
	.string	"DM"
	.byte	0x7
	.uahalf	0x240
	.uaword	0x198
	.byte	0x4
	.byte	0x2
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.string	"RESULT"
	.byte	0x7
	.uahalf	0x241
	.uaword	0x198
	.byte	0x4
	.byte	0xa
	.byte	0x6
	.byte	0
	.uleb128 0xa
	.uaword	.LASF11
	.byte	0x7
	.uahalf	0x242
	.uaword	0x198
	.byte	0x4
	.byte	0x5
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.string	"DISCLK"
	.byte	0x7
	.uahalf	0x243
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_FDR_Bits"
	.byte	0x7
	.uahalf	0x244
	.uaword	0x22be
	.uleb128 0x9
	.string	"_Ifx_SCU_FMR_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x247
	.uaword	0x2495
	.uleb128 0xb
	.string	"FS0"
	.byte	0x7
	.uahalf	0x249
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xb
	.string	"FS1"
	.byte	0x7
	.uahalf	0x24a
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xb
	.string	"FS2"
	.byte	0x7
	.uahalf	0x24b
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xb
	.string	"FS3"
	.byte	0x7
	.uahalf	0x24c
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xb
	.string	"FS4"
	.byte	0x7
	.uahalf	0x24d
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xb
	.string	"FS5"
	.byte	0x7
	.uahalf	0x24e
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xb
	.string	"FS6"
	.byte	0x7
	.uahalf	0x24f
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xb
	.string	"FS7"
	.byte	0x7
	.uahalf	0x250
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xa
	.uaword	.LASF7
	.byte	0x7
	.uahalf	0x251
	.uaword	0x198
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.string	"FC0"
	.byte	0x7
	.uahalf	0x252
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xb
	.string	"FC1"
	.byte	0x7
	.uahalf	0x253
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xb
	.string	"FC2"
	.byte	0x7
	.uahalf	0x254
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xb
	.string	"FC3"
	.byte	0x7
	.uahalf	0x255
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xb
	.string	"FC4"
	.byte	0x7
	.uahalf	0x256
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0xb
	.string	"FC5"
	.byte	0x7
	.uahalf	0x257
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0xb
	.string	"FC6"
	.byte	0x7
	.uahalf	0x258
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0xb
	.string	"FC7"
	.byte	0x7
	.uahalf	0x259
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.uaword	.LASF4
	.byte	0x7
	.uahalf	0x25a
	.uaword	0x198
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_FMR_Bits"
	.byte	0x7
	.uahalf	0x25b
	.uaword	0x2359
	.uleb128 0x9
	.string	"_Ifx_SCU_ID_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x25e
	.uaword	0x2506
	.uleb128 0xb
	.string	"MODREV"
	.byte	0x7
	.uahalf	0x260
	.uaword	0x198
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.string	"MODTYPE"
	.byte	0x7
	.uahalf	0x261
	.uaword	0x198
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.string	"MODNUMBER"
	.byte	0x7
	.uahalf	0x262
	.uaword	0x198
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_ID_Bits"
	.byte	0x7
	.uahalf	0x263
	.uaword	0x24ae
	.uleb128 0x9
	.string	"_Ifx_SCU_IGCR_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x266
	.uaword	0x26d1
	.uleb128 0xb
	.string	"IPEN00"
	.byte	0x7
	.uahalf	0x268
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xb
	.string	"IPEN01"
	.byte	0x7
	.uahalf	0x269
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xb
	.string	"IPEN02"
	.byte	0x7
	.uahalf	0x26a
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xb
	.string	"IPEN03"
	.byte	0x7
	.uahalf	0x26b
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xb
	.string	"IPEN04"
	.byte	0x7
	.uahalf	0x26c
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xb
	.string	"IPEN05"
	.byte	0x7
	.uahalf	0x26d
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xb
	.string	"IPEN06"
	.byte	0x7
	.uahalf	0x26e
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xb
	.string	"IPEN07"
	.byte	0x7
	.uahalf	0x26f
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xa
	.uaword	.LASF7
	.byte	0x7
	.uahalf	0x270
	.uaword	0x198
	.byte	0x4
	.byte	0x5
	.byte	0x13
	.byte	0
	.uleb128 0xb
	.string	"GEEN0"
	.byte	0x7
	.uahalf	0x271
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xb
	.string	"IGP0"
	.byte	0x7
	.uahalf	0x272
	.uaword	0x198
	.byte	0x4
	.byte	0x2
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.string	"IPEN10"
	.byte	0x7
	.uahalf	0x273
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xb
	.string	"IPEN11"
	.byte	0x7
	.uahalf	0x274
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xb
	.string	"IPEN12"
	.byte	0x7
	.uahalf	0x275
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xb
	.string	"IPEN13"
	.byte	0x7
	.uahalf	0x276
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xb
	.string	"IPEN14"
	.byte	0x7
	.uahalf	0x277
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0xb
	.string	"IPEN15"
	.byte	0x7
	.uahalf	0x278
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0xb
	.string	"IPEN16"
	.byte	0x7
	.uahalf	0x279
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0xb
	.string	"IPEN17"
	.byte	0x7
	.uahalf	0x27a
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.uaword	.LASF4
	.byte	0x7
	.uahalf	0x27b
	.uaword	0x198
	.byte	0x4
	.byte	0x5
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.string	"GEEN1"
	.byte	0x7
	.uahalf	0x27c
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.string	"IGP1"
	.byte	0x7
	.uahalf	0x27d
	.uaword	0x198
	.byte	0x4
	.byte	0x2
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_IGCR_Bits"
	.byte	0x7
	.uahalf	0x27e
	.uaword	0x251e
	.uleb128 0x9
	.string	"_Ifx_SCU_IN_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x281
	.uaword	0x2734
	.uleb128 0xb
	.string	"P0"
	.byte	0x7
	.uahalf	0x283
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xb
	.string	"P1"
	.byte	0x7
	.uahalf	0x284
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xa
	.uaword	.LASF9
	.byte	0x7
	.uahalf	0x285
	.uaword	0x198
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_IN_Bits"
	.byte	0x7
	.uahalf	0x286
	.uaword	0x26eb
	.uleb128 0x9
	.string	"_Ifx_SCU_IOCR_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x289
	.uaword	0x27b9
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x7
	.uahalf	0x28b
	.uaword	0x198
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0xb
	.string	"PC0"
	.byte	0x7
	.uahalf	0x28c
	.uaword	0x198
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0
	.uleb128 0xa
	.uaword	.LASF7
	.byte	0x7
	.uahalf	0x28d
	.uaword	0x198
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0
	.uleb128 0xb
	.string	"PC1"
	.byte	0x7
	.uahalf	0x28e
	.uaword	0x198
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.uaword	.LASF12
	.byte	0x7
	.uahalf	0x28f
	.uaword	0x198
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_IOCR_Bits"
	.byte	0x7
	.uahalf	0x290
	.uaword	0x274c
	.uleb128 0x9
	.string	"_Ifx_SCU_LBISTCTRL0_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x293
	.uaword	0x2846
	.uleb128 0xb
	.string	"LBISTREQ"
	.byte	0x7
	.uahalf	0x295
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xb
	.string	"LBISTREQP"
	.byte	0x7
	.uahalf	0x296
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xb
	.string	"PATTERNS"
	.byte	0x7
	.uahalf	0x297
	.uaword	0x198
	.byte	0x4
	.byte	0xe
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.uaword	.LASF12
	.byte	0x7
	.uahalf	0x298
	.uaword	0x198
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_LBISTCTRL0_Bits"
	.byte	0x7
	.uahalf	0x299
	.uaword	0x27d3
	.uleb128 0x9
	.string	"_Ifx_SCU_LBISTCTRL1_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x29c
	.uaword	0x28e6
	.uleb128 0xb
	.string	"SEED"
	.byte	0x7
	.uahalf	0x29e
	.uaword	0x198
	.byte	0x4
	.byte	0x17
	.byte	0x9
	.byte	0
	.uleb128 0xa
	.uaword	.LASF15
	.byte	0x7
	.uahalf	0x29f
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.string	"SPLITSH"
	.byte	0x7
	.uahalf	0x2a0
	.uaword	0x198
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.string	"BODY"
	.byte	0x7
	.uahalf	0x2a1
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.string	"LBISTFREQU"
	.byte	0x7
	.uahalf	0x2a2
	.uaword	0x198
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_LBISTCTRL1_Bits"
	.byte	0x7
	.uahalf	0x2a3
	.uaword	0x2866
	.uleb128 0x9
	.string	"_Ifx_SCU_LBISTCTRL2_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x2a6
	.uaword	0x2965
	.uleb128 0xb
	.string	"SIGNATURE"
	.byte	0x7
	.uahalf	0x2a8
	.uaword	0x198
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.uaword	.LASF4
	.byte	0x7
	.uahalf	0x2a9
	.uaword	0x198
	.byte	0x4
	.byte	0x7
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.string	"LBISTDONE"
	.byte	0x7
	.uahalf	0x2aa
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_LBISTCTRL2_Bits"
	.byte	0x7
	.uahalf	0x2ab
	.uaword	0x2906
	.uleb128 0x9
	.string	"_Ifx_SCU_LCLCON_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x2ae
	.uaword	0x29e4
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x7
	.uahalf	0x2b0
	.uaword	0x198
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.string	"LS"
	.byte	0x7
	.uahalf	0x2b1
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xa
	.uaword	.LASF24
	.byte	0x7
	.uahalf	0x2b2
	.uaword	0x198
	.byte	0x4
	.byte	0xe
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.string	"LSEN"
	.byte	0x7
	.uahalf	0x2b3
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_LCLCON_Bits"
	.byte	0x7
	.uahalf	0x2b4
	.uaword	0x2985
	.uleb128 0x9
	.string	"_Ifx_SCU_LCLTEST_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x2b7
	.uaword	0x2a54
	.uleb128 0xb
	.string	"LCLT0"
	.byte	0x7
	.uahalf	0x2b9
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xb
	.string	"LCLT1"
	.byte	0x7
	.uahalf	0x2ba
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xa
	.uaword	.LASF9
	.byte	0x7
	.uahalf	0x2bb
	.uaword	0x198
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_LCLTEST_Bits"
	.byte	0x7
	.uahalf	0x2bc
	.uaword	0x2a00
	.uleb128 0x9
	.string	"_Ifx_SCU_MANID_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x2bf
	.uaword	0x2ac2
	.uleb128 0xb
	.string	"DEPT"
	.byte	0x7
	.uahalf	0x2c1
	.uaword	0x198
	.byte	0x4
	.byte	0x5
	.byte	0x1b
	.byte	0
	.uleb128 0xb
	.string	"MANUF"
	.byte	0x7
	.uahalf	0x2c2
	.uaword	0x198
	.byte	0x4
	.byte	0xb
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.uaword	.LASF12
	.byte	0x7
	.uahalf	0x2c3
	.uaword	0x198
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_MANID_Bits"
	.byte	0x7
	.uahalf	0x2c4
	.uaword	0x2a71
	.uleb128 0x9
	.string	"_Ifx_SCU_OMR_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x2c7
	.uaword	0x2b5b
	.uleb128 0xb
	.string	"PS0"
	.byte	0x7
	.uahalf	0x2c9
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xb
	.string	"PS1"
	.byte	0x7
	.uahalf	0x2ca
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xa
	.uaword	.LASF9
	.byte	0x7
	.uahalf	0x2cb
	.uaword	0x198
	.byte	0x4
	.byte	0xe
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.string	"PCL0"
	.byte	0x7
	.uahalf	0x2cc
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xb
	.string	"PCL1"
	.byte	0x7
	.uahalf	0x2cd
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xa
	.uaword	.LASF16
	.byte	0x7
	.uahalf	0x2ce
	.uaword	0x198
	.byte	0x4
	.byte	0xe
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_OMR_Bits"
	.byte	0x7
	.uahalf	0x2cf
	.uaword	0x2add
	.uleb128 0x9
	.string	"_Ifx_SCU_OSCCON_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x2d2
	.uaword	0x2ce3
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x7
	.uahalf	0x2d4
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xb
	.string	"PLLLV"
	.byte	0x7
	.uahalf	0x2d5
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xb
	.string	"OSCRES"
	.byte	0x7
	.uahalf	0x2d6
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xb
	.string	"GAINSEL"
	.byte	0x7
	.uahalf	0x2d7
	.uaword	0x198
	.byte	0x4
	.byte	0x2
	.byte	0x1b
	.byte	0
	.uleb128 0xb
	.string	"MODE"
	.byte	0x7
	.uahalf	0x2d8
	.uaword	0x198
	.byte	0x4
	.byte	0x2
	.byte	0x19
	.byte	0
	.uleb128 0xb
	.string	"SHBY"
	.byte	0x7
	.uahalf	0x2d9
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.string	"PLLHV"
	.byte	0x7
	.uahalf	0x2da
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xa
	.uaword	.LASF18
	.byte	0x7
	.uahalf	0x2db
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xb
	.string	"X1D"
	.byte	0x7
	.uahalf	0x2dc
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xb
	.string	"X1DEN"
	.byte	0x7
	.uahalf	0x2dd
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xa
	.uaword	.LASF25
	.byte	0x7
	.uahalf	0x2de
	.uaword	0x198
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.string	"OSCVAL"
	.byte	0x7
	.uahalf	0x2df
	.uaword	0x198
	.byte	0x4
	.byte	0x5
	.byte	0xb
	.byte	0
	.uleb128 0xa
	.uaword	.LASF26
	.byte	0x7
	.uahalf	0x2e0
	.uaword	0x198
	.byte	0x4
	.byte	0x2
	.byte	0x9
	.byte	0
	.uleb128 0xb
	.string	"APREN"
	.byte	0x7
	.uahalf	0x2e1
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.string	"CAP0EN"
	.byte	0x7
	.uahalf	0x2e2
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xb
	.string	"CAP1EN"
	.byte	0x7
	.uahalf	0x2e3
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xb
	.string	"CAP2EN"
	.byte	0x7
	.uahalf	0x2e4
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.string	"CAP3EN"
	.byte	0x7
	.uahalf	0x2e5
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.uaword	.LASF17
	.byte	0x7
	.uahalf	0x2e6
	.uaword	0x198
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_OSCCON_Bits"
	.byte	0x7
	.uahalf	0x2e7
	.uaword	0x2b74
	.uleb128 0x9
	.string	"_Ifx_SCU_OUT_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x2ea
	.uaword	0x2d49
	.uleb128 0xb
	.string	"P0"
	.byte	0x7
	.uahalf	0x2ec
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xb
	.string	"P1"
	.byte	0x7
	.uahalf	0x2ed
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xa
	.uaword	.LASF9
	.byte	0x7
	.uahalf	0x2ee
	.uaword	0x198
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_OUT_Bits"
	.byte	0x7
	.uahalf	0x2ef
	.uaword	0x2cff
	.uleb128 0x9
	.string	"_Ifx_SCU_OVCCON_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x2f2
	.uaword	0x2e47
	.uleb128 0xb
	.string	"CSEL0"
	.byte	0x7
	.uahalf	0x2f4
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xb
	.string	"CSEL1"
	.byte	0x7
	.uahalf	0x2f5
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xb
	.string	"CSEL2"
	.byte	0x7
	.uahalf	0x2f6
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xa
	.uaword	.LASF1
	.byte	0x7
	.uahalf	0x2f7
	.uaword	0x198
	.byte	0x4
	.byte	0xd
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.string	"OVSTRT"
	.byte	0x7
	.uahalf	0x2f8
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xb
	.string	"OVSTP"
	.byte	0x7
	.uahalf	0x2f9
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xb
	.string	"DCINVAL"
	.byte	0x7
	.uahalf	0x2fa
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xa
	.uaword	.LASF27
	.byte	0x7
	.uahalf	0x2fb
	.uaword	0x198
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.string	"OVCONF"
	.byte	0x7
	.uahalf	0x2fc
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xb
	.string	"POVCONF"
	.byte	0x7
	.uahalf	0x2fd
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xa
	.uaword	.LASF11
	.byte	0x7
	.uahalf	0x2fe
	.uaword	0x198
	.byte	0x4
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_OVCCON_Bits"
	.byte	0x7
	.uahalf	0x2ff
	.uaword	0x2d62
	.uleb128 0x9
	.string	"_Ifx_SCU_OVCENABLE_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x302
	.uaword	0x2ecb
	.uleb128 0xb
	.string	"OVEN0"
	.byte	0x7
	.uahalf	0x304
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xb
	.string	"OVEN1"
	.byte	0x7
	.uahalf	0x305
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xb
	.string	"OVEN2"
	.byte	0x7
	.uahalf	0x306
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xa
	.uaword	.LASF1
	.byte	0x7
	.uahalf	0x307
	.uaword	0x198
	.byte	0x4
	.byte	0x1d
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_OVCENABLE_Bits"
	.byte	0x7
	.uahalf	0x308
	.uaword	0x2e63
	.uleb128 0x9
	.string	"_Ifx_SCU_PDISC_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x30b
	.uaword	0x2f3c
	.uleb128 0xb
	.string	"PDIS0"
	.byte	0x7
	.uahalf	0x30d
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xb
	.string	"PDIS1"
	.byte	0x7
	.uahalf	0x30e
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xa
	.uaword	.LASF9
	.byte	0x7
	.uahalf	0x30f
	.uaword	0x198
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_PDISC_Bits"
	.byte	0x7
	.uahalf	0x310
	.uaword	0x2eea
	.uleb128 0x9
	.string	"_Ifx_SCU_PDR_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x313
	.uaword	0x2fc3
	.uleb128 0xb
	.string	"PD0"
	.byte	0x7
	.uahalf	0x315
	.uaword	0x198
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0xb
	.string	"PL0"
	.byte	0x7
	.uahalf	0x316
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xb
	.string	"PD1"
	.byte	0x7
	.uahalf	0x317
	.uaword	0x198
	.byte	0x4
	.byte	0x3
	.byte	0x19
	.byte	0
	.uleb128 0xb
	.string	"PL1"
	.byte	0x7
	.uahalf	0x318
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xa
	.uaword	.LASF7
	.byte	0x7
	.uahalf	0x319
	.uaword	0x198
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_PDR_Bits"
	.byte	0x7
	.uahalf	0x31a
	.uaword	0x2f57
	.uleb128 0x9
	.string	"_Ifx_SCU_PDRR_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x31d
	.uaword	0x3091
	.uleb128 0xb
	.string	"PDR0"
	.byte	0x7
	.uahalf	0x31f
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xb
	.string	"PDR1"
	.byte	0x7
	.uahalf	0x320
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xb
	.string	"PDR2"
	.byte	0x7
	.uahalf	0x321
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xb
	.string	"PDR3"
	.byte	0x7
	.uahalf	0x322
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xb
	.string	"PDR4"
	.byte	0x7
	.uahalf	0x323
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xb
	.string	"PDR5"
	.byte	0x7
	.uahalf	0x324
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xb
	.string	"PDR6"
	.byte	0x7
	.uahalf	0x325
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xb
	.string	"PDR7"
	.byte	0x7
	.uahalf	0x326
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xa
	.uaword	.LASF7
	.byte	0x7
	.uahalf	0x327
	.uaword	0x198
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_PDRR_Bits"
	.byte	0x7
	.uahalf	0x328
	.uaword	0x2fdc
	.uleb128 0x9
	.string	"_Ifx_SCU_PLLCON0_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x32b
	.uaword	0x31ca
	.uleb128 0xb
	.string	"VCOBYP"
	.byte	0x7
	.uahalf	0x32d
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xb
	.string	"VCOPWD"
	.byte	0x7
	.uahalf	0x32e
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xb
	.string	"MODEN"
	.byte	0x7
	.uahalf	0x32f
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xa
	.uaword	.LASF1
	.byte	0x7
	.uahalf	0x330
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xa
	.uaword	.LASF28
	.byte	0x7
	.uahalf	0x331
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xa
	.uaword	.LASF29
	.byte	0x7
	.uahalf	0x332
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xa
	.uaword	.LASF30
	.byte	0x7
	.uahalf	0x333
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xa
	.uaword	.LASF13
	.byte	0x7
	.uahalf	0x334
	.uaword	0x198
	.byte	0x4
	.byte	0x2
	.byte	0x17
	.byte	0
	.uleb128 0xb
	.string	"NDIV"
	.byte	0x7
	.uahalf	0x335
	.uaword	0x198
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.string	"PLLPWD"
	.byte	0x7
	.uahalf	0x336
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xa
	.uaword	.LASF24
	.byte	0x7
	.uahalf	0x337
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xb
	.string	"RESLD"
	.byte	0x7
	.uahalf	0x338
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xa
	.uaword	.LASF27
	.byte	0x7
	.uahalf	0x339
	.uaword	0x198
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.string	"PDIV"
	.byte	0x7
	.uahalf	0x33a
	.uaword	0x198
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.uaword	.LASF17
	.byte	0x7
	.uahalf	0x33b
	.uaword	0x198
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_PLLCON0_Bits"
	.byte	0x7
	.uahalf	0x33c
	.uaword	0x30ab
	.uleb128 0x9
	.string	"_Ifx_SCU_PLLCON1_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x33f
	.uaword	0x326d
	.uleb128 0xb
	.string	"K2DIV"
	.byte	0x7
	.uahalf	0x341
	.uaword	0x198
	.byte	0x4
	.byte	0x7
	.byte	0x19
	.byte	0
	.uleb128 0xa
	.uaword	.LASF13
	.byte	0x7
	.uahalf	0x342
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.string	"K3DIV"
	.byte	0x7
	.uahalf	0x343
	.uaword	0x198
	.byte	0x4
	.byte	0x7
	.byte	0x11
	.byte	0
	.uleb128 0xa
	.uaword	.LASF14
	.byte	0x7
	.uahalf	0x344
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.string	"K1DIV"
	.byte	0x7
	.uahalf	0x345
	.uaword	0x198
	.byte	0x4
	.byte	0x7
	.byte	0x9
	.byte	0
	.uleb128 0xa
	.uaword	.LASF15
	.byte	0x7
	.uahalf	0x346
	.uaword	0x198
	.byte	0x4
	.byte	0x9
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_PLLCON1_Bits"
	.byte	0x7
	.uahalf	0x347
	.uaword	0x31e7
	.uleb128 0x9
	.string	"_Ifx_SCU_PLLCON2_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x34a
	.uaword	0x32cd
	.uleb128 0xb
	.string	"MODCFG"
	.byte	0x7
	.uahalf	0x34c
	.uaword	0x198
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.uaword	.LASF12
	.byte	0x7
	.uahalf	0x34d
	.uaword	0x198
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_PLLCON2_Bits"
	.byte	0x7
	.uahalf	0x34e
	.uaword	0x328a
	.uleb128 0x9
	.string	"_Ifx_SCU_PLLERAYCON0_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x351
	.uaword	0x340b
	.uleb128 0xb
	.string	"VCOBYP"
	.byte	0x7
	.uahalf	0x353
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xb
	.string	"VCOPWD"
	.byte	0x7
	.uahalf	0x354
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xa
	.uaword	.LASF9
	.byte	0x7
	.uahalf	0x355
	.uaword	0x198
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0
	.uleb128 0xa
	.uaword	.LASF28
	.byte	0x7
	.uahalf	0x356
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xa
	.uaword	.LASF29
	.byte	0x7
	.uahalf	0x357
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xa
	.uaword	.LASF30
	.byte	0x7
	.uahalf	0x358
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xa
	.uaword	.LASF13
	.byte	0x7
	.uahalf	0x359
	.uaword	0x198
	.byte	0x4
	.byte	0x2
	.byte	0x17
	.byte	0
	.uleb128 0xb
	.string	"NDIV"
	.byte	0x7
	.uahalf	0x35a
	.uaword	0x198
	.byte	0x4
	.byte	0x5
	.byte	0x12
	.byte	0
	.uleb128 0xa
	.uaword	.LASF20
	.byte	0x7
	.uahalf	0x35b
	.uaword	0x198
	.byte	0x4
	.byte	0x2
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.string	"PLLPWD"
	.byte	0x7
	.uahalf	0x35c
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xa
	.uaword	.LASF24
	.byte	0x7
	.uahalf	0x35d
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xb
	.string	"RESLD"
	.byte	0x7
	.uahalf	0x35e
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xa
	.uaword	.LASF27
	.byte	0x7
	.uahalf	0x35f
	.uaword	0x198
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.string	"PDIV"
	.byte	0x7
	.uahalf	0x360
	.uaword	0x198
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.uaword	.LASF17
	.byte	0x7
	.uahalf	0x361
	.uaword	0x198
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_PLLERAYCON0_Bits"
	.byte	0x7
	.uahalf	0x362
	.uaword	0x32ea
	.uleb128 0x9
	.string	"_Ifx_SCU_PLLERAYCON1_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x365
	.uaword	0x34b6
	.uleb128 0xb
	.string	"K2DIV"
	.byte	0x7
	.uahalf	0x367
	.uaword	0x198
	.byte	0x4
	.byte	0x7
	.byte	0x19
	.byte	0
	.uleb128 0xa
	.uaword	.LASF13
	.byte	0x7
	.uahalf	0x368
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.string	"K3DIV"
	.byte	0x7
	.uahalf	0x369
	.uaword	0x198
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0
	.uleb128 0xa
	.uaword	.LASF25
	.byte	0x7
	.uahalf	0x36a
	.uaword	0x198
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.string	"K1DIV"
	.byte	0x7
	.uahalf	0x36b
	.uaword	0x198
	.byte	0x4
	.byte	0x7
	.byte	0x9
	.byte	0
	.uleb128 0xa
	.uaword	.LASF15
	.byte	0x7
	.uahalf	0x36c
	.uaword	0x198
	.byte	0x4
	.byte	0x9
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_PLLERAYCON1_Bits"
	.byte	0x7
	.uahalf	0x36d
	.uaword	0x342c
	.uleb128 0x9
	.string	"_Ifx_SCU_PLLERAYSTAT_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x370
	.uaword	0x357e
	.uleb128 0xb
	.string	"VCOBYST"
	.byte	0x7
	.uahalf	0x372
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xb
	.string	"PWDSTAT"
	.byte	0x7
	.uahalf	0x373
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xb
	.string	"VCOLOCK"
	.byte	0x7
	.uahalf	0x374
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xb
	.string	"FINDIS"
	.byte	0x7
	.uahalf	0x375
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xb
	.string	"K1RDY"
	.byte	0x7
	.uahalf	0x376
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xb
	.string	"K2RDY"
	.byte	0x7
	.uahalf	0x377
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xa
	.uaword	.LASF6
	.byte	0x7
	.uahalf	0x378
	.uaword	0x198
	.byte	0x4
	.byte	0x1a
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_PLLERAYSTAT_Bits"
	.byte	0x7
	.uahalf	0x379
	.uaword	0x34d7
	.uleb128 0x9
	.string	"_Ifx_SCU_PLLSTAT_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x37c
	.uaword	0x3661
	.uleb128 0xb
	.string	"VCOBYST"
	.byte	0x7
	.uahalf	0x37e
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xa
	.uaword	.LASF23
	.byte	0x7
	.uahalf	0x37f
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xb
	.string	"VCOLOCK"
	.byte	0x7
	.uahalf	0x380
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xb
	.string	"FINDIS"
	.byte	0x7
	.uahalf	0x381
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xb
	.string	"K1RDY"
	.byte	0x7
	.uahalf	0x382
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xb
	.string	"K2RDY"
	.byte	0x7
	.uahalf	0x383
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xa
	.uaword	.LASF6
	.byte	0x7
	.uahalf	0x384
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xb
	.string	"MODRUN"
	.byte	0x7
	.uahalf	0x385
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xa
	.uaword	.LASF7
	.byte	0x7
	.uahalf	0x386
	.uaword	0x198
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_PLLSTAT_Bits"
	.byte	0x7
	.uahalf	0x387
	.uaword	0x359f
	.uleb128 0x9
	.string	"_Ifx_SCU_PMCSR_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x38a
	.uaword	0x36f3
	.uleb128 0xb
	.string	"REQSLP"
	.byte	0x7
	.uahalf	0x38c
	.uaword	0x198
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0
	.uleb128 0xb
	.string	"SMUSLP"
	.byte	0x7
	.uahalf	0x38d
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xa
	.uaword	.LASF1
	.byte	0x7
	.uahalf	0x38e
	.uaword	0x198
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.string	"PMST"
	.byte	0x7
	.uahalf	0x38f
	.uaword	0x198
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0xa
	.uaword	.LASF22
	.byte	0x7
	.uahalf	0x390
	.uaword	0x198
	.byte	0x4
	.byte	0x15
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_PMCSR_Bits"
	.byte	0x7
	.uahalf	0x391
	.uaword	0x367e
	.uleb128 0x9
	.string	"_Ifx_SCU_PMSWCR0_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x394
	.uaword	0x38fb
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x7
	.uahalf	0x396
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xa
	.uaword	.LASF31
	.byte	0x7
	.uahalf	0x397
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xa
	.uaword	.LASF32
	.byte	0x7
	.uahalf	0x398
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xa
	.uaword	.LASF33
	.byte	0x7
	.uahalf	0x399
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xb
	.string	"ESR0DFEN"
	.byte	0x7
	.uahalf	0x39a
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xb
	.string	"ESR0EDCON"
	.byte	0x7
	.uahalf	0x39b
	.uaword	0x198
	.byte	0x4
	.byte	0x2
	.byte	0x19
	.byte	0
	.uleb128 0xb
	.string	"ESR1DFEN"
	.byte	0x7
	.uahalf	0x39c
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.string	"ESR1EDCON"
	.byte	0x7
	.uahalf	0x39d
	.uaword	0x198
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0
	.uleb128 0xb
	.string	"PINADFEN"
	.byte	0x7
	.uahalf	0x39e
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xb
	.string	"PINAEDCON"
	.byte	0x7
	.uahalf	0x39f
	.uaword	0x198
	.byte	0x4
	.byte	0x2
	.byte	0x13
	.byte	0
	.uleb128 0xb
	.string	"PINBDFEN"
	.byte	0x7
	.uahalf	0x3a0
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xb
	.string	"PINBEDCON"
	.byte	0x7
	.uahalf	0x3a1
	.uaword	0x198
	.byte	0x4
	.byte	0x2
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.uaword	.LASF12
	.byte	0x7
	.uahalf	0x3a2
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xb
	.string	"STBYRAMSEL"
	.byte	0x7
	.uahalf	0x3a3
	.uaword	0x198
	.byte	0x4
	.byte	0x2
	.byte	0xd
	.byte	0
	.uleb128 0xa
	.uaword	.LASF27
	.byte	0x7
	.uahalf	0x3a4
	.uaword	0x198
	.byte	0x4
	.byte	0x2
	.byte	0xb
	.byte	0
	.uleb128 0xb
	.string	"TRISTEN"
	.byte	0x7
	.uahalf	0x3a5
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0xb
	.string	"TRISTREQ"
	.byte	0x7
	.uahalf	0x3a6
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0xb
	.string	"PORSTDF"
	.byte	0x7
	.uahalf	0x3a7
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.string	"PWRWKEN"
	.byte	0x7
	.uahalf	0x3a8
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xb
	.string	"DCDCSYNC"
	.byte	0x7
	.uahalf	0x3a9
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xb
	.string	"BLNKFIL"
	.byte	0x7
	.uahalf	0x3aa
	.uaword	0x198
	.byte	0x4
	.byte	0x3
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.uaword	.LASF34
	.byte	0x7
	.uahalf	0x3ab
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xa
	.uaword	.LASF19
	.byte	0x7
	.uahalf	0x3ac
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.string	"LCK"
	.byte	0x7
	.uahalf	0x3ad
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_PMSWCR0_Bits"
	.byte	0x7
	.uahalf	0x3ae
	.uaword	0x370e
	.uleb128 0x9
	.string	"_Ifx_SCU_PMSWCR1_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x3b1
	.uaword	0x39e4
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x7
	.uahalf	0x3b3
	.uaword	0x198
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.string	"CPUIDLSEL"
	.byte	0x7
	.uahalf	0x3b4
	.uaword	0x198
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0xa
	.uaword	.LASF22
	.byte	0x7
	.uahalf	0x3b5
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xb
	.string	"IRADIS"
	.byte	0x7
	.uahalf	0x3b6
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xb
	.string	"reserved_13"
	.byte	0x7
	.uahalf	0x3b7
	.uaword	0x198
	.byte	0x4
	.byte	0xb
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.string	"CPUSEL"
	.byte	0x7
	.uahalf	0x3b8
	.uaword	0x198
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.string	"STBYEVEN"
	.byte	0x7
	.uahalf	0x3b9
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.string	"STBYEV"
	.byte	0x7
	.uahalf	0x3ba
	.uaword	0x198
	.byte	0x4
	.byte	0x3
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.uaword	.LASF8
	.byte	0x7
	.uahalf	0x3bb
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_PMSWCR1_Bits"
	.byte	0x7
	.uahalf	0x3bc
	.uaword	0x3918
	.uleb128 0x9
	.string	"_Ifx_SCU_PMSWSTAT_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x3bf
	.uaword	0x3b9a
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x7
	.uahalf	0x3c1
	.uaword	0x198
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0
	.uleb128 0xb
	.string	"ESR1WKP"
	.byte	0x7
	.uahalf	0x3c2
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xb
	.string	"ESR1OVRUN"
	.byte	0x7
	.uahalf	0x3c3
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xb
	.string	"PINAWKP"
	.byte	0x7
	.uahalf	0x3c4
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xb
	.string	"PINAOVRUN"
	.byte	0x7
	.uahalf	0x3c5
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xb
	.string	"PINBWKP"
	.byte	0x7
	.uahalf	0x3c6
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xb
	.string	"PINBOVRUN"
	.byte	0x7
	.uahalf	0x3c7
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.string	"PWRWKP"
	.byte	0x7
	.uahalf	0x3c8
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xb
	.string	"PORSTDF"
	.byte	0x7
	.uahalf	0x3c9
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xb
	.string	"HWCFGEVR"
	.byte	0x7
	.uahalf	0x3ca
	.uaword	0x198
	.byte	0x4
	.byte	0x3
	.byte	0x13
	.byte	0
	.uleb128 0xb
	.string	"STBYRAM"
	.byte	0x7
	.uahalf	0x3cb
	.uaword	0x198
	.byte	0x4
	.byte	0x2
	.byte	0x11
	.byte	0
	.uleb128 0xb
	.string	"TRIST"
	.byte	0x7
	.uahalf	0x3cc
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.uaword	.LASF12
	.byte	0x7
	.uahalf	0x3cd
	.uaword	0x198
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0
	.uleb128 0xa
	.uaword	.LASF31
	.byte	0x7
	.uahalf	0x3ce
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0xa
	.uaword	.LASF32
	.byte	0x7
	.uahalf	0x3cf
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0xa
	.uaword	.LASF33
	.byte	0x7
	.uahalf	0x3d0
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0xb
	.string	"PWRWKEN"
	.byte	0x7
	.uahalf	0x3d1
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.string	"BLNKFIL"
	.byte	0x7
	.uahalf	0x3d2
	.uaword	0x198
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0xa
	.uaword	.LASF34
	.byte	0x7
	.uahalf	0x3d3
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.uaword	.LASF17
	.byte	0x7
	.uahalf	0x3d4
	.uaword	0x198
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_PMSWSTAT_Bits"
	.byte	0x7
	.uahalf	0x3d5
	.uaword	0x3a01
	.uleb128 0x9
	.string	"_Ifx_SCU_PMSWSTATCLR_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x3d8
	.uaword	0x3ca2
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x7
	.uahalf	0x3da
	.uaword	0x198
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0
	.uleb128 0xb
	.string	"ESR1WKPCLR"
	.byte	0x7
	.uahalf	0x3db
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xb
	.string	"ESR1OVRUNCLR"
	.byte	0x7
	.uahalf	0x3dc
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xb
	.string	"PINAWKPCLR"
	.byte	0x7
	.uahalf	0x3dd
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xb
	.string	"PINAOVRUNCLR"
	.byte	0x7
	.uahalf	0x3de
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xb
	.string	"PINBWKPCLR"
	.byte	0x7
	.uahalf	0x3df
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xb
	.string	"PINBOVRUNCLR"
	.byte	0x7
	.uahalf	0x3e0
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.string	"PWRWKPCLR"
	.byte	0x7
	.uahalf	0x3e1
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xa
	.uaword	.LASF18
	.byte	0x7
	.uahalf	0x3e2
	.uaword	0x198
	.byte	0x4
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_PMSWSTATCLR_Bits"
	.byte	0x7
	.uahalf	0x3e3
	.uaword	0x3bb8
	.uleb128 0x9
	.string	"_Ifx_SCU_RSTCON2_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x3e6
	.uaword	0x3d6b
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x7
	.uahalf	0x3e8
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xb
	.string	"CLRC"
	.byte	0x7
	.uahalf	0x3e9
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xa
	.uaword	.LASF9
	.byte	0x7
	.uahalf	0x3ea
	.uaword	0x198
	.byte	0x4
	.byte	0xa
	.byte	0x14
	.byte	0
	.uleb128 0xb
	.string	"CSS0"
	.byte	0x7
	.uahalf	0x3eb
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xb
	.string	"CSS1"
	.byte	0x7
	.uahalf	0x3ec
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xb
	.string	"CSS2"
	.byte	0x7
	.uahalf	0x3ed
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xa
	.uaword	.LASF14
	.byte	0x7
	.uahalf	0x3ee
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.string	"USRINFO"
	.byte	0x7
	.uahalf	0x3ef
	.uaword	0x198
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_RSTCON2_Bits"
	.byte	0x7
	.uahalf	0x3f0
	.uaword	0x3cc3
	.uleb128 0x9
	.string	"_Ifx_SCU_RSTCON_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x3f3
	.uaword	0x3e3b
	.uleb128 0xb
	.string	"ESR0"
	.byte	0x7
	.uahalf	0x3f5
	.uaword	0x198
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0
	.uleb128 0xb
	.string	"ESR1"
	.byte	0x7
	.uahalf	0x3f6
	.uaword	0x198
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0
	.uleb128 0xa
	.uaword	.LASF3
	.byte	0x7
	.uahalf	0x3f7
	.uaword	0x198
	.byte	0x4
	.byte	0x2
	.byte	0x1a
	.byte	0
	.uleb128 0xb
	.string	"SMU"
	.byte	0x7
	.uahalf	0x3f8
	.uaword	0x198
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.string	"SW"
	.byte	0x7
	.uahalf	0x3f9
	.uaword	0x198
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0
	.uleb128 0xb
	.string	"STM0"
	.byte	0x7
	.uahalf	0x3fa
	.uaword	0x198
	.byte	0x4
	.byte	0x2
	.byte	0x14
	.byte	0
	.uleb128 0xb
	.string	"STM1"
	.byte	0x7
	.uahalf	0x3fb
	.uaword	0x198
	.byte	0x4
	.byte	0x2
	.byte	0x12
	.byte	0
	.uleb128 0xb
	.string	"STM2"
	.byte	0x7
	.uahalf	0x3fc
	.uaword	0x198
	.byte	0x4
	.byte	0x2
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.uaword	.LASF12
	.byte	0x7
	.uahalf	0x3fd
	.uaword	0x198
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_RSTCON_Bits"
	.byte	0x7
	.uahalf	0x3fe
	.uaword	0x3d88
	.uleb128 0x9
	.string	"_Ifx_SCU_RSTSTAT_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x401
	.uaword	0x3fd3
	.uleb128 0xb
	.string	"ESR0"
	.byte	0x7
	.uahalf	0x403
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xb
	.string	"ESR1"
	.byte	0x7
	.uahalf	0x404
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xa
	.uaword	.LASF9
	.byte	0x7
	.uahalf	0x405
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xb
	.string	"SMU"
	.byte	0x7
	.uahalf	0x406
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xb
	.string	"SW"
	.byte	0x7
	.uahalf	0x407
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xb
	.string	"STM0"
	.byte	0x7
	.uahalf	0x408
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xb
	.string	"STM1"
	.byte	0x7
	.uahalf	0x409
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xb
	.string	"STM2"
	.byte	0x7
	.uahalf	0x40a
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xa
	.uaword	.LASF7
	.byte	0x7
	.uahalf	0x40b
	.uaword	0x198
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.string	"PORST"
	.byte	0x7
	.uahalf	0x40c
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xa
	.uaword	.LASF24
	.byte	0x7
	.uahalf	0x40d
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xb
	.string	"CB0"
	.byte	0x7
	.uahalf	0x40e
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xb
	.string	"CB1"
	.byte	0x7
	.uahalf	0x40f
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xb
	.string	"CB3"
	.byte	0x7
	.uahalf	0x410
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0xa
	.uaword	.LASF26
	.byte	0x7
	.uahalf	0x411
	.uaword	0x198
	.byte	0x4
	.byte	0x2
	.byte	0x9
	.byte	0
	.uleb128 0xb
	.string	"EVR13"
	.byte	0x7
	.uahalf	0x412
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.string	"EVR33"
	.byte	0x7
	.uahalf	0x413
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xb
	.string	"SWD"
	.byte	0x7
	.uahalf	0x414
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xa
	.uaword	.LASF11
	.byte	0x7
	.uahalf	0x415
	.uaword	0x198
	.byte	0x4
	.byte	0x2
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.string	"STBYR"
	.byte	0x7
	.uahalf	0x416
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.uaword	.LASF21
	.byte	0x7
	.uahalf	0x417
	.uaword	0x198
	.byte	0x4
	.byte	0x3
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_RSTSTAT_Bits"
	.byte	0x7
	.uahalf	0x418
	.uaword	0x3e57
	.uleb128 0x9
	.string	"_Ifx_SCU_SAFECON_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x41b
	.uaword	0x4030
	.uleb128 0xb
	.string	"HBT"
	.byte	0x7
	.uahalf	0x41d
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xa
	.uaword	.LASF23
	.byte	0x7
	.uahalf	0x41e
	.uaword	0x198
	.byte	0x4
	.byte	0x1f
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_SAFECON_Bits"
	.byte	0x7
	.uahalf	0x41f
	.uaword	0x3ff0
	.uleb128 0x9
	.string	"_Ifx_SCU_STSTAT_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x422
	.uaword	0x4132
	.uleb128 0xb
	.string	"HWCFG"
	.byte	0x7
	.uahalf	0x424
	.uaword	0x198
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.string	"FTM"
	.byte	0x7
	.uahalf	0x425
	.uaword	0x198
	.byte	0x4
	.byte	0x7
	.byte	0x11
	.byte	0
	.uleb128 0xb
	.string	"MODE"
	.byte	0x7
	.uahalf	0x426
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.string	"FCBAE"
	.byte	0x7
	.uahalf	0x427
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xb
	.string	"LUDIS"
	.byte	0x7
	.uahalf	0x428
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xa
	.uaword	.LASF16
	.byte	0x7
	.uahalf	0x429
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xb
	.string	"TRSTL"
	.byte	0x7
	.uahalf	0x42a
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xb
	.string	"SPDEN"
	.byte	0x7
	.uahalf	0x42b
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0xa
	.uaword	.LASF26
	.byte	0x7
	.uahalf	0x42c
	.uaword	0x198
	.byte	0x4
	.byte	0x3
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.string	"RAMINT"
	.byte	0x7
	.uahalf	0x42d
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xb
	.string	"reserved_25"
	.byte	0x7
	.uahalf	0x42e
	.uaword	0x198
	.byte	0x4
	.byte	0x7
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_STSTAT_Bits"
	.byte	0x7
	.uahalf	0x42f
	.uaword	0x404d
	.uleb128 0x9
	.string	"_Ifx_SCU_SWRSTCON_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x432
	.uaword	0x41a4
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x7
	.uahalf	0x434
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xb
	.string	"SWRSTREQ"
	.byte	0x7
	.uahalf	0x435
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xa
	.uaword	.LASF9
	.byte	0x7
	.uahalf	0x436
	.uaword	0x198
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_SWRSTCON_Bits"
	.byte	0x7
	.uahalf	0x437
	.uaword	0x414e
	.uleb128 0x9
	.string	"_Ifx_SCU_SYSCON_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x43a
	.uaword	0x4266
	.uleb128 0xb
	.string	"CCTRIG0"
	.byte	0x7
	.uahalf	0x43c
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xa
	.uaword	.LASF23
	.byte	0x7
	.uahalf	0x43d
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xb
	.string	"RAMINTM"
	.byte	0x7
	.uahalf	0x43e
	.uaword	0x198
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0
	.uleb128 0xb
	.string	"SETLUDIS"
	.byte	0x7
	.uahalf	0x43f
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xb
	.string	"reserved_5"
	.byte	0x7
	.uahalf	0x440
	.uaword	0x198
	.byte	0x4
	.byte	0x3
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.string	"DATM"
	.byte	0x7
	.uahalf	0x441
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xa
	.uaword	.LASF18
	.byte	0x7
	.uahalf	0x442
	.uaword	0x198
	.byte	0x4
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_SYSCON_Bits"
	.byte	0x7
	.uahalf	0x443
	.uaword	0x41c2
	.uleb128 0x9
	.string	"_Ifx_SCU_TRAPCLR_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x446
	.uaword	0x42f3
	.uleb128 0xa
	.uaword	.LASF35
	.byte	0x7
	.uahalf	0x448
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xa
	.uaword	.LASF36
	.byte	0x7
	.uahalf	0x449
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xa
	.uaword	.LASF9
	.byte	0x7
	.uahalf	0x44a
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xb
	.string	"SMUT"
	.byte	0x7
	.uahalf	0x44b
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xa
	.uaword	.LASF3
	.byte	0x7
	.uahalf	0x44c
	.uaword	0x198
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_TRAPCLR_Bits"
	.byte	0x7
	.uahalf	0x44d
	.uaword	0x4282
	.uleb128 0x9
	.string	"_Ifx_SCU_TRAPDIS_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x450
	.uaword	0x4381
	.uleb128 0xa
	.uaword	.LASF35
	.byte	0x7
	.uahalf	0x452
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xa
	.uaword	.LASF36
	.byte	0x7
	.uahalf	0x453
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xa
	.uaword	.LASF9
	.byte	0x7
	.uahalf	0x454
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xb
	.string	"SMUT"
	.byte	0x7
	.uahalf	0x455
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xa
	.uaword	.LASF3
	.byte	0x7
	.uahalf	0x456
	.uaword	0x198
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_TRAPDIS_Bits"
	.byte	0x7
	.uahalf	0x457
	.uaword	0x4310
	.uleb128 0x9
	.string	"_Ifx_SCU_TRAPSET_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x45a
	.uaword	0x440f
	.uleb128 0xa
	.uaword	.LASF35
	.byte	0x7
	.uahalf	0x45c
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xa
	.uaword	.LASF36
	.byte	0x7
	.uahalf	0x45d
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xa
	.uaword	.LASF9
	.byte	0x7
	.uahalf	0x45e
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xb
	.string	"SMUT"
	.byte	0x7
	.uahalf	0x45f
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xa
	.uaword	.LASF3
	.byte	0x7
	.uahalf	0x460
	.uaword	0x198
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_TRAPSET_Bits"
	.byte	0x7
	.uahalf	0x461
	.uaword	0x439e
	.uleb128 0x9
	.string	"_Ifx_SCU_TRAPSTAT_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x464
	.uaword	0x449e
	.uleb128 0xa
	.uaword	.LASF35
	.byte	0x7
	.uahalf	0x466
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xa
	.uaword	.LASF36
	.byte	0x7
	.uahalf	0x467
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xa
	.uaword	.LASF9
	.byte	0x7
	.uahalf	0x468
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xb
	.string	"SMUT"
	.byte	0x7
	.uahalf	0x469
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xa
	.uaword	.LASF3
	.byte	0x7
	.uahalf	0x46a
	.uaword	0x198
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_TRAPSTAT_Bits"
	.byte	0x7
	.uahalf	0x46b
	.uaword	0x442c
	.uleb128 0x9
	.string	"_Ifx_SCU_WDTCPU_CON0_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x46e
	.uaword	0x4523
	.uleb128 0xb
	.string	"ENDINIT"
	.byte	0x7
	.uahalf	0x470
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xb
	.string	"LCK"
	.byte	0x7
	.uahalf	0x471
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xb
	.string	"PW"
	.byte	0x7
	.uahalf	0x472
	.uaword	0x198
	.byte	0x4
	.byte	0xe
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.string	"REL"
	.byte	0x7
	.uahalf	0x473
	.uaword	0x198
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_WDTCPU_CON0_Bits"
	.byte	0x7
	.uahalf	0x474
	.uaword	0x44bc
	.uleb128 0x9
	.string	"_Ifx_SCU_WDTCPU_CON1_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x477
	.uaword	0x4607
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x7
	.uahalf	0x479
	.uaword	0x198
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0
	.uleb128 0xb
	.string	"IR0"
	.byte	0x7
	.uahalf	0x47a
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xb
	.string	"DR"
	.byte	0x7
	.uahalf	0x47b
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xa
	.uaword	.LASF3
	.byte	0x7
	.uahalf	0x47c
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xb
	.string	"IR1"
	.byte	0x7
	.uahalf	0x47d
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xb
	.string	"UR"
	.byte	0x7
	.uahalf	0x47e
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xb
	.string	"PAR"
	.byte	0x7
	.uahalf	0x47f
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.string	"TCR"
	.byte	0x7
	.uahalf	0x480
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xb
	.string	"TCTR"
	.byte	0x7
	.uahalf	0x481
	.uaword	0x198
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.uaword	.LASF12
	.byte	0x7
	.uahalf	0x482
	.uaword	0x198
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_WDTCPU_CON1_Bits"
	.byte	0x7
	.uahalf	0x483
	.uaword	0x4544
	.uleb128 0x9
	.string	"_Ifx_SCU_WDTCPU_SR_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x486
	.uaword	0x46f5
	.uleb128 0xb
	.string	"AE"
	.byte	0x7
	.uahalf	0x488
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xb
	.string	"OE"
	.byte	0x7
	.uahalf	0x489
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xb
	.string	"IS0"
	.byte	0x7
	.uahalf	0x48a
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xb
	.string	"DS"
	.byte	0x7
	.uahalf	0x48b
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xb
	.string	"TO"
	.byte	0x7
	.uahalf	0x48c
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xb
	.string	"IS1"
	.byte	0x7
	.uahalf	0x48d
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xb
	.string	"US"
	.byte	0x7
	.uahalf	0x48e
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xb
	.string	"PAS"
	.byte	0x7
	.uahalf	0x48f
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.string	"TCS"
	.byte	0x7
	.uahalf	0x490
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xb
	.string	"TCT"
	.byte	0x7
	.uahalf	0x491
	.uaword	0x198
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.string	"TIM"
	.byte	0x7
	.uahalf	0x492
	.uaword	0x198
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_WDTCPU_SR_Bits"
	.byte	0x7
	.uahalf	0x493
	.uaword	0x4628
	.uleb128 0x9
	.string	"_Ifx_SCU_WDTS_CON0_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x496
	.uaword	0x4779
	.uleb128 0xb
	.string	"ENDINIT"
	.byte	0x7
	.uahalf	0x498
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xb
	.string	"LCK"
	.byte	0x7
	.uahalf	0x499
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xb
	.string	"PW"
	.byte	0x7
	.uahalf	0x49a
	.uaword	0x198
	.byte	0x4
	.byte	0xe
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.string	"REL"
	.byte	0x7
	.uahalf	0x49b
	.uaword	0x198
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_WDTS_CON0_Bits"
	.byte	0x7
	.uahalf	0x49c
	.uaword	0x4714
	.uleb128 0x9
	.string	"_Ifx_SCU_WDTS_CON1_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x49f
	.uaword	0x486c
	.uleb128 0xb
	.string	"CLRIRF"
	.byte	0x7
	.uahalf	0x4a1
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xa
	.uaword	.LASF23
	.byte	0x7
	.uahalf	0x4a2
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xb
	.string	"IR0"
	.byte	0x7
	.uahalf	0x4a3
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xb
	.string	"DR"
	.byte	0x7
	.uahalf	0x4a4
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xa
	.uaword	.LASF3
	.byte	0x7
	.uahalf	0x4a5
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xb
	.string	"IR1"
	.byte	0x7
	.uahalf	0x4a6
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xb
	.string	"UR"
	.byte	0x7
	.uahalf	0x4a7
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xb
	.string	"PAR"
	.byte	0x7
	.uahalf	0x4a8
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.string	"TCR"
	.byte	0x7
	.uahalf	0x4a9
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xb
	.string	"TCTR"
	.byte	0x7
	.uahalf	0x4aa
	.uaword	0x198
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.uaword	.LASF12
	.byte	0x7
	.uahalf	0x4ab
	.uaword	0x198
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_WDTS_CON1_Bits"
	.byte	0x7
	.uahalf	0x4ac
	.uaword	0x4798
	.uleb128 0x9
	.string	"_Ifx_SCU_WDTS_SR_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x4af
	.uaword	0x4956
	.uleb128 0xb
	.string	"AE"
	.byte	0x7
	.uahalf	0x4b1
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xb
	.string	"OE"
	.byte	0x7
	.uahalf	0x4b2
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xb
	.string	"IS0"
	.byte	0x7
	.uahalf	0x4b3
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xb
	.string	"DS"
	.byte	0x7
	.uahalf	0x4b4
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xb
	.string	"TO"
	.byte	0x7
	.uahalf	0x4b5
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xb
	.string	"IS1"
	.byte	0x7
	.uahalf	0x4b6
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xb
	.string	"US"
	.byte	0x7
	.uahalf	0x4b7
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xb
	.string	"PAS"
	.byte	0x7
	.uahalf	0x4b8
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.string	"TCS"
	.byte	0x7
	.uahalf	0x4b9
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xb
	.string	"TCT"
	.byte	0x7
	.uahalf	0x4ba
	.uaword	0x198
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.string	"TIM"
	.byte	0x7
	.uahalf	0x4bb
	.uaword	0x198
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_WDTS_SR_Bits"
	.byte	0x7
	.uahalf	0x4bc
	.uaword	0x488b
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x4c4
	.uaword	0x499b
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x4c7
	.uaword	0x198
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x4c9
	.uaword	0x1c2
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x4cb
	.uaword	0x550
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_ACCEN0"
	.byte	0x7
	.uahalf	0x4cc
	.uaword	0x4973
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x4cf
	.uaword	0x49da
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x4d2
	.uaword	0x198
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x4d4
	.uaword	0x1c2
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x4d6
	.uaword	0x598
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_ACCEN1"
	.byte	0x7
	.uahalf	0x4d7
	.uaword	0x49b2
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x4da
	.uaword	0x4a19
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x4dd
	.uaword	0x198
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x4df
	.uaword	0x1c2
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x4e1
	.uaword	0x61a
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_ARSTDIS"
	.byte	0x7
	.uahalf	0x4e2
	.uaword	0x49f1
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x4e5
	.uaword	0x4a59
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x4e8
	.uaword	0x198
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x4ea
	.uaword	0x1c2
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x4ec
	.uaword	0x72a
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_CCUCON0"
	.byte	0x7
	.uahalf	0x4ed
	.uaword	0x4a31
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x4f0
	.uaword	0x4a99
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x4f3
	.uaword	0x198
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x4f5
	.uaword	0x1c2
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x4f7
	.uaword	0x81a
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_CCUCON1"
	.byte	0x7
	.uahalf	0x4f8
	.uaword	0x4a71
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x4fb
	.uaword	0x4ad9
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x4fe
	.uaword	0x198
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x500
	.uaword	0x1c2
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x502
	.uaword	0x893
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_CCUCON2"
	.byte	0x7
	.uahalf	0x503
	.uaword	0x4ab1
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x506
	.uaword	0x4b19
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x509
	.uaword	0x198
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x50b
	.uaword	0x1c2
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x50d
	.uaword	0x97d
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_CCUCON3"
	.byte	0x7
	.uahalf	0x50e
	.uaword	0x4af1
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x511
	.uaword	0x4b59
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x514
	.uaword	0x198
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x516
	.uaword	0x1c2
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x518
	.uaword	0xa5f
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_CCUCON4"
	.byte	0x7
	.uahalf	0x519
	.uaword	0x4b31
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x51c
	.uaword	0x4b99
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x51f
	.uaword	0x198
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x521
	.uaword	0x1c2
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x523
	.uaword	0xad8
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_CCUCON5"
	.byte	0x7
	.uahalf	0x524
	.uaword	0x4b71
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x527
	.uaword	0x4bd9
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x52a
	.uaword	0x198
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x52c
	.uaword	0x1c2
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x52e
	.uaword	0xb35
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_CCUCON6"
	.byte	0x7
	.uahalf	0x52f
	.uaword	0x4bb1
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x532
	.uaword	0x4c19
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x535
	.uaword	0x198
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x537
	.uaword	0x1c2
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x539
	.uaword	0xb92
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_CCUCON7"
	.byte	0x7
	.uahalf	0x53a
	.uaword	0x4bf1
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x53d
	.uaword	0x4c59
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x540
	.uaword	0x198
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x542
	.uaword	0x1c2
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x544
	.uaword	0xbef
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_CCUCON8"
	.byte	0x7
	.uahalf	0x545
	.uaword	0x4c31
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x548
	.uaword	0x4c99
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x54b
	.uaword	0x198
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x54d
	.uaword	0x1c2
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x54f
	.uaword	0xc89
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_CCUCON9"
	.byte	0x7
	.uahalf	0x550
	.uaword	0x4c71
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x553
	.uaword	0x4cd9
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x556
	.uaword	0x198
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x558
	.uaword	0x1c2
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x55a
	.uaword	0xd52
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_CHIPID"
	.byte	0x7
	.uahalf	0x55b
	.uaword	0x4cb1
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x55e
	.uaword	0x4d18
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x561
	.uaword	0x198
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x563
	.uaword	0x1c2
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x565
	.uaword	0xde7
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_DTSCON"
	.byte	0x7
	.uahalf	0x566
	.uaword	0x4cf0
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x569
	.uaword	0x4d57
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x56c
	.uaword	0x198
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x56e
	.uaword	0x1c2
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x570
	.uaword	0xe8d
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_DTSLIM"
	.byte	0x7
	.uahalf	0x571
	.uaword	0x4d2f
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x574
	.uaword	0x4d96
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x577
	.uaword	0x198
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x579
	.uaword	0x1c2
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x57b
	.uaword	0xf16
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_DTSSTAT"
	.byte	0x7
	.uahalf	0x57c
	.uaword	0x4d6e
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x57f
	.uaword	0x4dd6
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x582
	.uaword	0x198
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x584
	.uaword	0x1c2
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x586
	.uaword	0x1071
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_EICR"
	.byte	0x7
	.uahalf	0x587
	.uaword	0x4dae
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x58a
	.uaword	0x4e13
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x58d
	.uaword	0x198
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x58f
	.uaword	0x1c2
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x591
	.uaword	0x1148
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_EIFR"
	.byte	0x7
	.uahalf	0x592
	.uaword	0x4deb
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x595
	.uaword	0x4e50
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x598
	.uaword	0x198
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x59a
	.uaword	0x1c2
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x59c
	.uaword	0x123a
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_EMSR"
	.byte	0x7
	.uahalf	0x59d
	.uaword	0x4e28
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x5a0
	.uaword	0x4e8d
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x5a3
	.uaword	0x198
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x5a5
	.uaword	0x1c2
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x5a7
	.uaword	0x12a5
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_ESRCFG"
	.byte	0x7
	.uahalf	0x5a8
	.uaword	0x4e65
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x5ab
	.uaword	0x4ecc
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x5ae
	.uaword	0x198
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x5b0
	.uaword	0x1c2
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x5b2
	.uaword	0x1311
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_ESROCFG"
	.byte	0x7
	.uahalf	0x5b3
	.uaword	0x4ea4
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x5b6
	.uaword	0x4f0c
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x5b9
	.uaword	0x198
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x5bb
	.uaword	0x1c2
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x5bd
	.uaword	0x13ab
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_EVR13CON"
	.byte	0x7
	.uahalf	0x5be
	.uaword	0x4ee4
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x5c1
	.uaword	0x4f4d
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x5c4
	.uaword	0x198
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x5c6
	.uaword	0x1c2
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x5c8
	.uaword	0x1446
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_EVR33CON"
	.byte	0x7
	.uahalf	0x5c9
	.uaword	0x4f25
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x5cc
	.uaword	0x4f8e
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x5cf
	.uaword	0x198
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x5d1
	.uaword	0x1c2
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x5d3
	.uaword	0x14e1
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_EVRADCSTAT"
	.byte	0x7
	.uahalf	0x5d4
	.uaword	0x4f66
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x5d7
	.uaword	0x4fd1
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x5da
	.uaword	0x198
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x5dc
	.uaword	0x1c2
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x5de
	.uaword	0x157f
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_EVRDVSTAT"
	.byte	0x7
	.uahalf	0x5df
	.uaword	0x4fa9
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x5e2
	.uaword	0x5013
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x5e5
	.uaword	0x198
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x5e7
	.uaword	0x1c2
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x5e9
	.uaword	0x16c7
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_EVRMONCTRL"
	.byte	0x7
	.uahalf	0x5ea
	.uaword	0x4feb
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x5ed
	.uaword	0x5056
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x5f0
	.uaword	0x198
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x5f2
	.uaword	0x1c2
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x5f4
	.uaword	0x17a6
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_EVROSCCTRL"
	.byte	0x7
	.uahalf	0x5f5
	.uaword	0x502e
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x5f8
	.uaword	0x5099
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x5fb
	.uaword	0x198
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x5fd
	.uaword	0x1c2
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x5ff
	.uaword	0x185a
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_EVROVMON"
	.byte	0x7
	.uahalf	0x600
	.uaword	0x5071
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x603
	.uaword	0x50da
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x606
	.uaword	0x198
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x608
	.uaword	0x1c2
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x60a
	.uaword	0x1966
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_EVRRSTCON"
	.byte	0x7
	.uahalf	0x60b
	.uaword	0x50b2
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x60e
	.uaword	0x511c
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x611
	.uaword	0x198
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x613
	.uaword	0x1c2
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x615
	.uaword	0x19fc
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_EVRSDCOEFF1"
	.byte	0x7
	.uahalf	0x616
	.uaword	0x50f4
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x619
	.uaword	0x5160
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x61c
	.uaword	0x198
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x61e
	.uaword	0x1c2
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x620
	.uaword	0x1a97
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_EVRSDCOEFF2"
	.byte	0x7
	.uahalf	0x621
	.uaword	0x5138
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x624
	.uaword	0x51a4
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x627
	.uaword	0x198
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x629
	.uaword	0x1c2
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x62b
	.uaword	0x1b38
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_EVRSDCOEFF3"
	.byte	0x7
	.uahalf	0x62c
	.uaword	0x517c
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x62f
	.uaword	0x51e8
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x632
	.uaword	0x198
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x634
	.uaword	0x1c2
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x636
	.uaword	0x1bc5
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_EVRSDCOEFF4"
	.byte	0x7
	.uahalf	0x637
	.uaword	0x51c0
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x63a
	.uaword	0x522c
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x63d
	.uaword	0x198
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x63f
	.uaword	0x1c2
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x641
	.uaword	0x1c69
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_EVRSDCOEFF5"
	.byte	0x7
	.uahalf	0x642
	.uaword	0x5204
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x645
	.uaword	0x5270
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x648
	.uaword	0x198
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x64a
	.uaword	0x1c2
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x64c
	.uaword	0x1cf8
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_EVRSDCOEFF6"
	.byte	0x7
	.uahalf	0x64d
	.uaword	0x5248
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x650
	.uaword	0x52b4
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x653
	.uaword	0x198
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x655
	.uaword	0x1c2
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x657
	.uaword	0x1dae
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_EVRSDCTRL1"
	.byte	0x7
	.uahalf	0x658
	.uaword	0x528c
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x65b
	.uaword	0x52f7
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x65e
	.uaword	0x198
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x660
	.uaword	0x1c2
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x662
	.uaword	0x1e5c
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_EVRSDCTRL2"
	.byte	0x7
	.uahalf	0x663
	.uaword	0x52cf
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x666
	.uaword	0x533a
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x669
	.uaword	0x198
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x66b
	.uaword	0x1c2
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x66d
	.uaword	0x1efb
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_EVRSDCTRL3"
	.byte	0x7
	.uahalf	0x66e
	.uaword	0x5312
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x671
	.uaword	0x537d
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x674
	.uaword	0x198
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x676
	.uaword	0x1c2
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x678
	.uaword	0x1f82
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_EVRSDCTRL4"
	.byte	0x7
	.uahalf	0x679
	.uaword	0x5355
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x67c
	.uaword	0x53c0
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x67f
	.uaword	0x198
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x681
	.uaword	0x1c2
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x683
	.uaword	0x209d
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_EVRSTAT"
	.byte	0x7
	.uahalf	0x684
	.uaword	0x5398
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x687
	.uaword	0x5400
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x68a
	.uaword	0x198
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x68c
	.uaword	0x1c2
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x68e
	.uaword	0x2120
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_EVRTRIM"
	.byte	0x7
	.uahalf	0x68f
	.uaword	0x53d8
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x692
	.uaword	0x5440
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x695
	.uaword	0x198
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x697
	.uaword	0x1c2
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x699
	.uaword	0x21d1
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_EVRUVMON"
	.byte	0x7
	.uahalf	0x69a
	.uaword	0x5418
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x69d
	.uaword	0x5481
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x6a0
	.uaword	0x198
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x6a2
	.uaword	0x1c2
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x6a4
	.uaword	0x22a2
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_EXTCON"
	.byte	0x7
	.uahalf	0x6a5
	.uaword	0x5459
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x6a8
	.uaword	0x54c0
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x6ab
	.uaword	0x198
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x6ad
	.uaword	0x1c2
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x6af
	.uaword	0x2340
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_FDR"
	.byte	0x7
	.uahalf	0x6b0
	.uaword	0x5498
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x6b3
	.uaword	0x54fc
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x6b6
	.uaword	0x198
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x6b8
	.uaword	0x1c2
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x6ba
	.uaword	0x2495
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_FMR"
	.byte	0x7
	.uahalf	0x6bb
	.uaword	0x54d4
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x6be
	.uaword	0x5538
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x6c1
	.uaword	0x198
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x6c3
	.uaword	0x1c2
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x6c5
	.uaword	0x2506
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_ID"
	.byte	0x7
	.uahalf	0x6c6
	.uaword	0x5510
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x6c9
	.uaword	0x5573
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x6cc
	.uaword	0x198
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x6ce
	.uaword	0x1c2
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x6d0
	.uaword	0x26d1
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_IGCR"
	.byte	0x7
	.uahalf	0x6d1
	.uaword	0x554b
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x6d4
	.uaword	0x55b0
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x6d7
	.uaword	0x198
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x6d9
	.uaword	0x1c2
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x6db
	.uaword	0x2734
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_IN"
	.byte	0x7
	.uahalf	0x6dc
	.uaword	0x5588
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x6df
	.uaword	0x55eb
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x6e2
	.uaword	0x198
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x6e4
	.uaword	0x1c2
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x6e6
	.uaword	0x27b9
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_IOCR"
	.byte	0x7
	.uahalf	0x6e7
	.uaword	0x55c3
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x6ea
	.uaword	0x5628
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x6ed
	.uaword	0x198
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x6ef
	.uaword	0x1c2
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x6f1
	.uaword	0x2846
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_LBISTCTRL0"
	.byte	0x7
	.uahalf	0x6f2
	.uaword	0x5600
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x6f5
	.uaword	0x566b
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x6f8
	.uaword	0x198
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x6fa
	.uaword	0x1c2
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x6fc
	.uaword	0x28e6
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_LBISTCTRL1"
	.byte	0x7
	.uahalf	0x6fd
	.uaword	0x5643
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x700
	.uaword	0x56ae
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x703
	.uaword	0x198
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x705
	.uaword	0x1c2
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x707
	.uaword	0x2965
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_LBISTCTRL2"
	.byte	0x7
	.uahalf	0x708
	.uaword	0x5686
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x70b
	.uaword	0x56f1
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x70e
	.uaword	0x198
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x710
	.uaword	0x1c2
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x712
	.uaword	0x29e4
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_LCLCON"
	.byte	0x7
	.uahalf	0x713
	.uaword	0x56c9
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x716
	.uaword	0x5730
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x719
	.uaword	0x198
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x71b
	.uaword	0x1c2
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x71d
	.uaword	0x2a54
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_LCLTEST"
	.byte	0x7
	.uahalf	0x71e
	.uaword	0x5708
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x721
	.uaword	0x5770
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x724
	.uaword	0x198
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x726
	.uaword	0x1c2
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x728
	.uaword	0x2ac2
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_MANID"
	.byte	0x7
	.uahalf	0x729
	.uaword	0x5748
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x72c
	.uaword	0x57ae
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x72f
	.uaword	0x198
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x731
	.uaword	0x1c2
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x733
	.uaword	0x2b5b
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_OMR"
	.byte	0x7
	.uahalf	0x734
	.uaword	0x5786
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x737
	.uaword	0x57ea
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x73a
	.uaword	0x198
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x73c
	.uaword	0x1c2
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x73e
	.uaword	0x2ce3
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_OSCCON"
	.byte	0x7
	.uahalf	0x73f
	.uaword	0x57c2
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x742
	.uaword	0x5829
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x745
	.uaword	0x198
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x747
	.uaword	0x1c2
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x749
	.uaword	0x2d49
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_OUT"
	.byte	0x7
	.uahalf	0x74a
	.uaword	0x5801
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x74d
	.uaword	0x5865
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x750
	.uaword	0x198
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x752
	.uaword	0x1c2
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x754
	.uaword	0x2e47
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_OVCCON"
	.byte	0x7
	.uahalf	0x755
	.uaword	0x583d
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x758
	.uaword	0x58a4
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x75b
	.uaword	0x198
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x75d
	.uaword	0x1c2
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x75f
	.uaword	0x2ecb
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_OVCENABLE"
	.byte	0x7
	.uahalf	0x760
	.uaword	0x587c
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x763
	.uaword	0x58e6
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x766
	.uaword	0x198
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x768
	.uaword	0x1c2
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x76a
	.uaword	0x2f3c
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_PDISC"
	.byte	0x7
	.uahalf	0x76b
	.uaword	0x58be
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x76e
	.uaword	0x5924
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x771
	.uaword	0x198
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x773
	.uaword	0x1c2
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x775
	.uaword	0x2fc3
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_PDR"
	.byte	0x7
	.uahalf	0x776
	.uaword	0x58fc
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x779
	.uaword	0x5960
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x77c
	.uaword	0x198
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x77e
	.uaword	0x1c2
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x780
	.uaword	0x3091
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_PDRR"
	.byte	0x7
	.uahalf	0x781
	.uaword	0x5938
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x784
	.uaword	0x599d
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x787
	.uaword	0x198
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x789
	.uaword	0x1c2
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x78b
	.uaword	0x31ca
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_PLLCON0"
	.byte	0x7
	.uahalf	0x78c
	.uaword	0x5975
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x78f
	.uaword	0x59dd
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x792
	.uaword	0x198
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x794
	.uaword	0x1c2
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x796
	.uaword	0x326d
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_PLLCON1"
	.byte	0x7
	.uahalf	0x797
	.uaword	0x59b5
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x79a
	.uaword	0x5a1d
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x79d
	.uaword	0x198
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x79f
	.uaword	0x1c2
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x7a1
	.uaword	0x32cd
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_PLLCON2"
	.byte	0x7
	.uahalf	0x7a2
	.uaword	0x59f5
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x7a5
	.uaword	0x5a5d
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x7a8
	.uaword	0x198
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x7aa
	.uaword	0x1c2
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x7ac
	.uaword	0x340b
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_PLLERAYCON0"
	.byte	0x7
	.uahalf	0x7ad
	.uaword	0x5a35
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x7b0
	.uaword	0x5aa1
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x7b3
	.uaword	0x198
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x7b5
	.uaword	0x1c2
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x7b7
	.uaword	0x34b6
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_PLLERAYCON1"
	.byte	0x7
	.uahalf	0x7b8
	.uaword	0x5a79
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x7bb
	.uaword	0x5ae5
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x7be
	.uaword	0x198
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x7c0
	.uaword	0x1c2
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x7c2
	.uaword	0x357e
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_PLLERAYSTAT"
	.byte	0x7
	.uahalf	0x7c3
	.uaword	0x5abd
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x7c6
	.uaword	0x5b29
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x7c9
	.uaword	0x198
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x7cb
	.uaword	0x1c2
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x7cd
	.uaword	0x3661
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_PLLSTAT"
	.byte	0x7
	.uahalf	0x7ce
	.uaword	0x5b01
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x7d1
	.uaword	0x5b69
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x7d4
	.uaword	0x198
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x7d6
	.uaword	0x1c2
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x7d8
	.uaword	0x36f3
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_PMCSR"
	.byte	0x7
	.uahalf	0x7d9
	.uaword	0x5b41
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x7dc
	.uaword	0x5ba7
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x7df
	.uaword	0x198
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x7e1
	.uaword	0x1c2
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x7e3
	.uaword	0x38fb
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_PMSWCR0"
	.byte	0x7
	.uahalf	0x7e4
	.uaword	0x5b7f
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x7e7
	.uaword	0x5be7
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x7ea
	.uaword	0x198
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x7ec
	.uaword	0x1c2
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x7ee
	.uaword	0x39e4
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_PMSWCR1"
	.byte	0x7
	.uahalf	0x7ef
	.uaword	0x5bbf
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x7f2
	.uaword	0x5c27
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x7f5
	.uaword	0x198
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x7f7
	.uaword	0x1c2
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x7f9
	.uaword	0x3b9a
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_PMSWSTAT"
	.byte	0x7
	.uahalf	0x7fa
	.uaword	0x5bff
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x7fd
	.uaword	0x5c68
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x800
	.uaword	0x198
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x802
	.uaword	0x1c2
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x804
	.uaword	0x3ca2
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_PMSWSTATCLR"
	.byte	0x7
	.uahalf	0x805
	.uaword	0x5c40
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x808
	.uaword	0x5cac
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x80b
	.uaword	0x198
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x80d
	.uaword	0x1c2
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x80f
	.uaword	0x3e3b
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_RSTCON"
	.byte	0x7
	.uahalf	0x810
	.uaword	0x5c84
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x813
	.uaword	0x5ceb
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x816
	.uaword	0x198
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x818
	.uaword	0x1c2
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x81a
	.uaword	0x3d6b
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_RSTCON2"
	.byte	0x7
	.uahalf	0x81b
	.uaword	0x5cc3
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x81e
	.uaword	0x5d2b
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x821
	.uaword	0x198
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x823
	.uaword	0x1c2
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x825
	.uaword	0x3fd3
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_RSTSTAT"
	.byte	0x7
	.uahalf	0x826
	.uaword	0x5d03
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x829
	.uaword	0x5d6b
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x82c
	.uaword	0x198
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x82e
	.uaword	0x1c2
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x830
	.uaword	0x4030
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_SAFECON"
	.byte	0x7
	.uahalf	0x831
	.uaword	0x5d43
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x834
	.uaword	0x5dab
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x837
	.uaword	0x198
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x839
	.uaword	0x1c2
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x83b
	.uaword	0x4132
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_STSTAT"
	.byte	0x7
	.uahalf	0x83c
	.uaword	0x5d83
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x83f
	.uaword	0x5dea
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x842
	.uaword	0x198
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x844
	.uaword	0x1c2
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x846
	.uaword	0x41a4
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_SWRSTCON"
	.byte	0x7
	.uahalf	0x847
	.uaword	0x5dc2
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x84a
	.uaword	0x5e2b
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x84d
	.uaword	0x198
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x84f
	.uaword	0x1c2
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x851
	.uaword	0x4266
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_SYSCON"
	.byte	0x7
	.uahalf	0x852
	.uaword	0x5e03
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x855
	.uaword	0x5e6a
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x858
	.uaword	0x198
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x85a
	.uaword	0x1c2
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x85c
	.uaword	0x42f3
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_TRAPCLR"
	.byte	0x7
	.uahalf	0x85d
	.uaword	0x5e42
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x860
	.uaword	0x5eaa
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x863
	.uaword	0x198
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x865
	.uaword	0x1c2
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x867
	.uaword	0x4381
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_TRAPDIS"
	.byte	0x7
	.uahalf	0x868
	.uaword	0x5e82
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x86b
	.uaword	0x5eea
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x86e
	.uaword	0x198
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x870
	.uaword	0x1c2
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x872
	.uaword	0x440f
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_TRAPSET"
	.byte	0x7
	.uahalf	0x873
	.uaword	0x5ec2
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x876
	.uaword	0x5f2a
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x879
	.uaword	0x198
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x87b
	.uaword	0x1c2
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x87d
	.uaword	0x449e
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_TRAPSTAT"
	.byte	0x7
	.uahalf	0x87e
	.uaword	0x5f02
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x881
	.uaword	0x5f6b
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x884
	.uaword	0x198
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x886
	.uaword	0x1c2
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x888
	.uaword	0x4523
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_WDTCPU_CON0"
	.byte	0x7
	.uahalf	0x889
	.uaword	0x5f43
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x88c
	.uaword	0x5faf
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x88f
	.uaword	0x198
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x891
	.uaword	0x1c2
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x893
	.uaword	0x4607
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_WDTCPU_CON1"
	.byte	0x7
	.uahalf	0x894
	.uaword	0x5f87
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x897
	.uaword	0x5ff3
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x89a
	.uaword	0x198
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x89c
	.uaword	0x1c2
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x89e
	.uaword	0x46f5
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_WDTCPU_SR"
	.byte	0x7
	.uahalf	0x89f
	.uaword	0x5fcb
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x8a2
	.uaword	0x6035
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x8a5
	.uaword	0x198
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x8a7
	.uaword	0x1c2
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x8a9
	.uaword	0x4779
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_WDTS_CON0"
	.byte	0x7
	.uahalf	0x8aa
	.uaword	0x600d
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x8ad
	.uaword	0x6077
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x8b0
	.uaword	0x198
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x8b2
	.uaword	0x1c2
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x8b4
	.uaword	0x486c
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_WDTS_CON1"
	.byte	0x7
	.uahalf	0x8b5
	.uaword	0x604f
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x8b8
	.uaword	0x60b9
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x8bb
	.uaword	0x198
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x8bd
	.uaword	0x1c2
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x8bf
	.uaword	0x4956
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_WDTS_SR"
	.byte	0x7
	.uahalf	0x8c0
	.uaword	0x6091
	.uleb128 0x9
	.string	"_Ifx_SCU_WDTCPU"
	.byte	0xc
	.byte	0x7
	.uahalf	0x8cb
	.uaword	0x6113
	.uleb128 0xf
	.string	"CON0"
	.byte	0x7
	.uahalf	0x8cd
	.uaword	0x5f6b
	.byte	0
	.uleb128 0xf
	.string	"CON1"
	.byte	0x7
	.uahalf	0x8ce
	.uaword	0x5faf
	.byte	0x4
	.uleb128 0xf
	.string	"SR"
	.byte	0x7
	.uahalf	0x8cf
	.uaword	0x5ff3
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_WDTCPU"
	.byte	0x7
	.uahalf	0x8d0
	.uaword	0x612a
	.uleb128 0x10
	.uaword	0x60d1
	.uleb128 0x9
	.string	"_Ifx_SCU_WDTS"
	.byte	0xc
	.byte	0x7
	.uahalf	0x8d3
	.uaword	0x616f
	.uleb128 0xf
	.string	"CON0"
	.byte	0x7
	.uahalf	0x8d5
	.uaword	0x6035
	.byte	0
	.uleb128 0xf
	.string	"CON1"
	.byte	0x7
	.uahalf	0x8d6
	.uaword	0x6077
	.byte	0x4
	.uleb128 0xf
	.string	"SR"
	.byte	0x7
	.uahalf	0x8d7
	.uaword	0x60b9
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_WDTS"
	.byte	0x7
	.uahalf	0x8d8
	.uaword	0x6184
	.uleb128 0x10
	.uaword	0x612f
	.uleb128 0x11
	.string	"_Ifx_SCU"
	.uahalf	0x400
	.byte	0x7
	.uahalf	0x8e5
	.uaword	0x6926
	.uleb128 0x12
	.uaword	.LASF0
	.byte	0x7
	.uahalf	0x8e7
	.uaword	0x6926
	.byte	0
	.uleb128 0xf
	.string	"ID"
	.byte	0x7
	.uahalf	0x8e8
	.uaword	0x5538
	.byte	0x8
	.uleb128 0xf
	.string	"reserved_C"
	.byte	0x7
	.uahalf	0x8e9
	.uaword	0x6942
	.byte	0xc
	.uleb128 0xf
	.string	"OSCCON"
	.byte	0x7
	.uahalf	0x8ea
	.uaword	0x57ea
	.byte	0x10
	.uleb128 0xf
	.string	"PLLSTAT"
	.byte	0x7
	.uahalf	0x8eb
	.uaword	0x5b29
	.byte	0x14
	.uleb128 0xf
	.string	"PLLCON0"
	.byte	0x7
	.uahalf	0x8ec
	.uaword	0x599d
	.byte	0x18
	.uleb128 0xf
	.string	"PLLCON1"
	.byte	0x7
	.uahalf	0x8ed
	.uaword	0x59dd
	.byte	0x1c
	.uleb128 0xf
	.string	"PLLCON2"
	.byte	0x7
	.uahalf	0x8ee
	.uaword	0x5a1d
	.byte	0x20
	.uleb128 0xf
	.string	"PLLERAYSTAT"
	.byte	0x7
	.uahalf	0x8ef
	.uaword	0x5ae5
	.byte	0x24
	.uleb128 0xf
	.string	"PLLERAYCON0"
	.byte	0x7
	.uahalf	0x8f0
	.uaword	0x5a5d
	.byte	0x28
	.uleb128 0xf
	.string	"PLLERAYCON1"
	.byte	0x7
	.uahalf	0x8f1
	.uaword	0x5aa1
	.byte	0x2c
	.uleb128 0xf
	.string	"CCUCON0"
	.byte	0x7
	.uahalf	0x8f2
	.uaword	0x4a59
	.byte	0x30
	.uleb128 0xf
	.string	"CCUCON1"
	.byte	0x7
	.uahalf	0x8f3
	.uaword	0x4a99
	.byte	0x34
	.uleb128 0xf
	.string	"FDR"
	.byte	0x7
	.uahalf	0x8f4
	.uaword	0x54c0
	.byte	0x38
	.uleb128 0xf
	.string	"EXTCON"
	.byte	0x7
	.uahalf	0x8f5
	.uaword	0x5481
	.byte	0x3c
	.uleb128 0xf
	.string	"CCUCON2"
	.byte	0x7
	.uahalf	0x8f6
	.uaword	0x4ad9
	.byte	0x40
	.uleb128 0xf
	.string	"CCUCON3"
	.byte	0x7
	.uahalf	0x8f7
	.uaword	0x4b19
	.byte	0x44
	.uleb128 0xf
	.string	"CCUCON4"
	.byte	0x7
	.uahalf	0x8f8
	.uaword	0x4b59
	.byte	0x48
	.uleb128 0xf
	.string	"CCUCON5"
	.byte	0x7
	.uahalf	0x8f9
	.uaword	0x4b99
	.byte	0x4c
	.uleb128 0xf
	.string	"RSTSTAT"
	.byte	0x7
	.uahalf	0x8fa
	.uaword	0x5d2b
	.byte	0x50
	.uleb128 0xf
	.string	"reserved_54"
	.byte	0x7
	.uahalf	0x8fb
	.uaword	0x6942
	.byte	0x54
	.uleb128 0xf
	.string	"RSTCON"
	.byte	0x7
	.uahalf	0x8fc
	.uaword	0x5cac
	.byte	0x58
	.uleb128 0xf
	.string	"ARSTDIS"
	.byte	0x7
	.uahalf	0x8fd
	.uaword	0x4a19
	.byte	0x5c
	.uleb128 0xf
	.string	"SWRSTCON"
	.byte	0x7
	.uahalf	0x8fe
	.uaword	0x5dea
	.byte	0x60
	.uleb128 0xf
	.string	"RSTCON2"
	.byte	0x7
	.uahalf	0x8ff
	.uaword	0x5ceb
	.byte	0x64
	.uleb128 0xf
	.string	"reserved_68"
	.byte	0x7
	.uahalf	0x900
	.uaword	0x6942
	.byte	0x68
	.uleb128 0xf
	.string	"EVRRSTCON"
	.byte	0x7
	.uahalf	0x901
	.uaword	0x50da
	.byte	0x6c
	.uleb128 0xf
	.string	"ESRCFG"
	.byte	0x7
	.uahalf	0x902
	.uaword	0x6952
	.byte	0x70
	.uleb128 0xf
	.string	"ESROCFG"
	.byte	0x7
	.uahalf	0x903
	.uaword	0x4ecc
	.byte	0x78
	.uleb128 0xf
	.string	"SYSCON"
	.byte	0x7
	.uahalf	0x904
	.uaword	0x5e2b
	.byte	0x7c
	.uleb128 0xf
	.string	"CCUCON6"
	.byte	0x7
	.uahalf	0x905
	.uaword	0x4bd9
	.byte	0x80
	.uleb128 0xf
	.string	"CCUCON7"
	.byte	0x7
	.uahalf	0x906
	.uaword	0x4c19
	.byte	0x84
	.uleb128 0xf
	.string	"CCUCON8"
	.byte	0x7
	.uahalf	0x907
	.uaword	0x4c59
	.byte	0x88
	.uleb128 0xf
	.string	"CCUCON9"
	.byte	0x7
	.uahalf	0x908
	.uaword	0x4c99
	.byte	0x8c
	.uleb128 0xf
	.string	"reserved_90"
	.byte	0x7
	.uahalf	0x909
	.uaword	0x6962
	.byte	0x90
	.uleb128 0xf
	.string	"PDR"
	.byte	0x7
	.uahalf	0x90a
	.uaword	0x5924
	.byte	0x9c
	.uleb128 0xf
	.string	"IOCR"
	.byte	0x7
	.uahalf	0x90b
	.uaword	0x55eb
	.byte	0xa0
	.uleb128 0xf
	.string	"OUT"
	.byte	0x7
	.uahalf	0x90c
	.uaword	0x5829
	.byte	0xa4
	.uleb128 0xf
	.string	"OMR"
	.byte	0x7
	.uahalf	0x90d
	.uaword	0x57ae
	.byte	0xa8
	.uleb128 0xf
	.string	"IN"
	.byte	0x7
	.uahalf	0x90e
	.uaword	0x55b0
	.byte	0xac
	.uleb128 0xf
	.string	"EVRSTAT"
	.byte	0x7
	.uahalf	0x90f
	.uaword	0x53c0
	.byte	0xb0
	.uleb128 0xf
	.string	"EVRDVSTAT"
	.byte	0x7
	.uahalf	0x910
	.uaword	0x4fd1
	.byte	0xb4
	.uleb128 0xf
	.string	"EVR13CON"
	.byte	0x7
	.uahalf	0x911
	.uaword	0x4f0c
	.byte	0xb8
	.uleb128 0xf
	.string	"EVR33CON"
	.byte	0x7
	.uahalf	0x912
	.uaword	0x4f4d
	.byte	0xbc
	.uleb128 0xf
	.string	"STSTAT"
	.byte	0x7
	.uahalf	0x913
	.uaword	0x5dab
	.byte	0xc0
	.uleb128 0xf
	.string	"reserved_C4"
	.byte	0x7
	.uahalf	0x914
	.uaword	0x6942
	.byte	0xc4
	.uleb128 0xf
	.string	"PMSWCR0"
	.byte	0x7
	.uahalf	0x915
	.uaword	0x5ba7
	.byte	0xc8
	.uleb128 0xf
	.string	"PMSWSTAT"
	.byte	0x7
	.uahalf	0x916
	.uaword	0x5c27
	.byte	0xcc
	.uleb128 0xf
	.string	"PMSWSTATCLR"
	.byte	0x7
	.uahalf	0x917
	.uaword	0x5c68
	.byte	0xd0
	.uleb128 0xf
	.string	"PMCSR"
	.byte	0x7
	.uahalf	0x918
	.uaword	0x6972
	.byte	0xd4
	.uleb128 0xf
	.string	"DTSSTAT"
	.byte	0x7
	.uahalf	0x919
	.uaword	0x4d96
	.byte	0xe0
	.uleb128 0xf
	.string	"DTSCON"
	.byte	0x7
	.uahalf	0x91a
	.uaword	0x4d18
	.byte	0xe4
	.uleb128 0xf
	.string	"PMSWCR1"
	.byte	0x7
	.uahalf	0x91b
	.uaword	0x5be7
	.byte	0xe8
	.uleb128 0xf
	.string	"reserved_EC"
	.byte	0x7
	.uahalf	0x91c
	.uaword	0x6942
	.byte	0xec
	.uleb128 0xf
	.string	"WDTS"
	.byte	0x7
	.uahalf	0x91d
	.uaword	0x616f
	.byte	0xf0
	.uleb128 0xf
	.string	"EMSR"
	.byte	0x7
	.uahalf	0x91e
	.uaword	0x4e50
	.byte	0xfc
	.uleb128 0x13
	.string	"WDTCPU"
	.byte	0x7
	.uahalf	0x91f
	.uaword	0x6992
	.uahalf	0x100
	.uleb128 0x13
	.string	"TRAPSTAT"
	.byte	0x7
	.uahalf	0x920
	.uaword	0x5f2a
	.uahalf	0x124
	.uleb128 0x13
	.string	"TRAPSET"
	.byte	0x7
	.uahalf	0x921
	.uaword	0x5eea
	.uahalf	0x128
	.uleb128 0x13
	.string	"TRAPCLR"
	.byte	0x7
	.uahalf	0x922
	.uaword	0x5e6a
	.uahalf	0x12c
	.uleb128 0x13
	.string	"TRAPDIS"
	.byte	0x7
	.uahalf	0x923
	.uaword	0x5eaa
	.uahalf	0x130
	.uleb128 0x13
	.string	"LCLCON0"
	.byte	0x7
	.uahalf	0x924
	.uaword	0x56f1
	.uahalf	0x134
	.uleb128 0x13
	.string	"LCLCON1"
	.byte	0x7
	.uahalf	0x925
	.uaword	0x56f1
	.uahalf	0x138
	.uleb128 0x13
	.string	"LCLTEST"
	.byte	0x7
	.uahalf	0x926
	.uaword	0x5730
	.uahalf	0x13c
	.uleb128 0x13
	.string	"CHIPID"
	.byte	0x7
	.uahalf	0x927
	.uaword	0x4cd9
	.uahalf	0x140
	.uleb128 0x13
	.string	"MANID"
	.byte	0x7
	.uahalf	0x928
	.uaword	0x5770
	.uahalf	0x144
	.uleb128 0x13
	.string	"reserved_148"
	.byte	0x7
	.uahalf	0x929
	.uaword	0x6926
	.uahalf	0x148
	.uleb128 0x13
	.string	"SAFECON"
	.byte	0x7
	.uahalf	0x92a
	.uaword	0x5d6b
	.uahalf	0x150
	.uleb128 0x13
	.string	"reserved_154"
	.byte	0x7
	.uahalf	0x92b
	.uaword	0x6997
	.uahalf	0x154
	.uleb128 0x13
	.string	"LBISTCTRL0"
	.byte	0x7
	.uahalf	0x92c
	.uaword	0x5628
	.uahalf	0x164
	.uleb128 0x13
	.string	"LBISTCTRL1"
	.byte	0x7
	.uahalf	0x92d
	.uaword	0x566b
	.uahalf	0x168
	.uleb128 0x13
	.string	"LBISTCTRL2"
	.byte	0x7
	.uahalf	0x92e
	.uaword	0x56ae
	.uahalf	0x16c
	.uleb128 0x13
	.string	"reserved_170"
	.byte	0x7
	.uahalf	0x92f
	.uaword	0x69a7
	.uahalf	0x170
	.uleb128 0x13
	.string	"PDISC"
	.byte	0x7
	.uahalf	0x930
	.uaword	0x58e6
	.uahalf	0x18c
	.uleb128 0x13
	.string	"reserved_190"
	.byte	0x7
	.uahalf	0x931
	.uaword	0x6926
	.uahalf	0x190
	.uleb128 0x13
	.string	"EVRTRIM"
	.byte	0x7
	.uahalf	0x932
	.uaword	0x5400
	.uahalf	0x198
	.uleb128 0x13
	.string	"EVRADCSTAT"
	.byte	0x7
	.uahalf	0x933
	.uaword	0x4f8e
	.uahalf	0x19c
	.uleb128 0x13
	.string	"EVRUVMON"
	.byte	0x7
	.uahalf	0x934
	.uaword	0x5440
	.uahalf	0x1a0
	.uleb128 0x13
	.string	"EVROVMON"
	.byte	0x7
	.uahalf	0x935
	.uaword	0x5099
	.uahalf	0x1a4
	.uleb128 0x13
	.string	"EVRMONCTRL"
	.byte	0x7
	.uahalf	0x936
	.uaword	0x5013
	.uahalf	0x1a8
	.uleb128 0x13
	.string	"reserved_1AC"
	.byte	0x7
	.uahalf	0x937
	.uaword	0x6942
	.uahalf	0x1ac
	.uleb128 0x13
	.string	"EVRSDCTRL1"
	.byte	0x7
	.uahalf	0x938
	.uaword	0x52b4
	.uahalf	0x1b0
	.uleb128 0x13
	.string	"EVRSDCTRL2"
	.byte	0x7
	.uahalf	0x939
	.uaword	0x52f7
	.uahalf	0x1b4
	.uleb128 0x13
	.string	"EVRSDCTRL3"
	.byte	0x7
	.uahalf	0x93a
	.uaword	0x533a
	.uahalf	0x1b8
	.uleb128 0x13
	.string	"EVRSDCTRL4"
	.byte	0x7
	.uahalf	0x93b
	.uaword	0x537d
	.uahalf	0x1bc
	.uleb128 0x13
	.string	"EVRSDCOEFF1"
	.byte	0x7
	.uahalf	0x93c
	.uaword	0x511c
	.uahalf	0x1c0
	.uleb128 0x13
	.string	"EVRSDCOEFF2"
	.byte	0x7
	.uahalf	0x93d
	.uaword	0x5160
	.uahalf	0x1c4
	.uleb128 0x13
	.string	"EVRSDCOEFF3"
	.byte	0x7
	.uahalf	0x93e
	.uaword	0x51a4
	.uahalf	0x1c8
	.uleb128 0x13
	.string	"EVRSDCOEFF4"
	.byte	0x7
	.uahalf	0x93f
	.uaword	0x51e8
	.uahalf	0x1cc
	.uleb128 0x13
	.string	"EVRSDCOEFF5"
	.byte	0x7
	.uahalf	0x940
	.uaword	0x522c
	.uahalf	0x1d0
	.uleb128 0x13
	.string	"EVRSDCOEFF6"
	.byte	0x7
	.uahalf	0x941
	.uaword	0x5270
	.uahalf	0x1d4
	.uleb128 0x13
	.string	"EVROSCCTRL"
	.byte	0x7
	.uahalf	0x942
	.uaword	0x5056
	.uahalf	0x1d8
	.uleb128 0x13
	.string	"reserved_1DC"
	.byte	0x7
	.uahalf	0x943
	.uaword	0x6942
	.uahalf	0x1dc
	.uleb128 0x13
	.string	"OVCENABLE"
	.byte	0x7
	.uahalf	0x944
	.uaword	0x58a4
	.uahalf	0x1e0
	.uleb128 0x13
	.string	"OVCCON"
	.byte	0x7
	.uahalf	0x945
	.uaword	0x5865
	.uahalf	0x1e4
	.uleb128 0x13
	.string	"reserved_1E8"
	.byte	0x7
	.uahalf	0x946
	.uaword	0x69b7
	.uahalf	0x1e8
	.uleb128 0x13
	.string	"EICR"
	.byte	0x7
	.uahalf	0x947
	.uaword	0x69c7
	.uahalf	0x210
	.uleb128 0x13
	.string	"EIFR"
	.byte	0x7
	.uahalf	0x948
	.uaword	0x4e13
	.uahalf	0x220
	.uleb128 0x13
	.string	"FMR"
	.byte	0x7
	.uahalf	0x949
	.uaword	0x54fc
	.uahalf	0x224
	.uleb128 0x13
	.string	"PDRR"
	.byte	0x7
	.uahalf	0x94a
	.uaword	0x5960
	.uahalf	0x228
	.uleb128 0x13
	.string	"IGCR"
	.byte	0x7
	.uahalf	0x94b
	.uaword	0x69d7
	.uahalf	0x22c
	.uleb128 0x13
	.string	"reserved_23C"
	.byte	0x7
	.uahalf	0x94c
	.uaword	0x6942
	.uahalf	0x23c
	.uleb128 0x13
	.string	"DTSLIM"
	.byte	0x7
	.uahalf	0x94d
	.uaword	0x4d57
	.uahalf	0x240
	.uleb128 0x13
	.string	"reserved_244"
	.byte	0x7
	.uahalf	0x94e
	.uaword	0x69e7
	.uahalf	0x244
	.uleb128 0x13
	.string	"ACCEN1"
	.byte	0x7
	.uahalf	0x94f
	.uaword	0x49da
	.uahalf	0x3f8
	.uleb128 0x13
	.string	"ACCEN0"
	.byte	0x7
	.uahalf	0x950
	.uaword	0x499b
	.uahalf	0x3fc
	.byte	0
	.uleb128 0x14
	.uaword	0x28f
	.uaword	0x6936
	.uleb128 0x15
	.uaword	0x6936
	.byte	0x7
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x14
	.uaword	0x28f
	.uaword	0x6952
	.uleb128 0x15
	.uaword	0x6936
	.byte	0x3
	.byte	0
	.uleb128 0x14
	.uaword	0x4e8d
	.uaword	0x6962
	.uleb128 0x15
	.uaword	0x6936
	.byte	0x1
	.byte	0
	.uleb128 0x14
	.uaword	0x28f
	.uaword	0x6972
	.uleb128 0x15
	.uaword	0x6936
	.byte	0xb
	.byte	0
	.uleb128 0x14
	.uaword	0x5b69
	.uaword	0x6982
	.uleb128 0x15
	.uaword	0x6936
	.byte	0x2
	.byte	0
	.uleb128 0x14
	.uaword	0x6113
	.uaword	0x6992
	.uleb128 0x15
	.uaword	0x6936
	.byte	0x2
	.byte	0
	.uleb128 0x10
	.uaword	0x6982
	.uleb128 0x14
	.uaword	0x28f
	.uaword	0x69a7
	.uleb128 0x15
	.uaword	0x6936
	.byte	0xf
	.byte	0
	.uleb128 0x14
	.uaword	0x28f
	.uaword	0x69b7
	.uleb128 0x15
	.uaword	0x6936
	.byte	0x1b
	.byte	0
	.uleb128 0x14
	.uaword	0x28f
	.uaword	0x69c7
	.uleb128 0x15
	.uaword	0x6936
	.byte	0x27
	.byte	0
	.uleb128 0x14
	.uaword	0x4dd6
	.uaword	0x69d7
	.uleb128 0x15
	.uaword	0x6936
	.byte	0x3
	.byte	0
	.uleb128 0x14
	.uaword	0x5573
	.uaword	0x69e7
	.uleb128 0x15
	.uaword	0x6936
	.byte	0x3
	.byte	0
	.uleb128 0x14
	.uaword	0x28f
	.uaword	0x69f8
	.uleb128 0x16
	.uaword	0x6936
	.uahalf	0x1b3
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU"
	.byte	0x7
	.uahalf	0x951
	.uaword	0x6a08
	.uleb128 0x10
	.uaword	0x6189
	.uleb128 0x17
	.byte	0x4
	.byte	0x8
	.byte	0x54
	.uaword	0x6a75
	.uleb128 0x4
	.string	"IfxCpu_ResourceCpu_0"
	.sleb128 0
	.uleb128 0x4
	.string	"IfxCpu_ResourceCpu_1"
	.sleb128 1
	.uleb128 0x4
	.string	"IfxCpu_ResourceCpu_2"
	.sleb128 2
	.uleb128 0x4
	.string	"IfxCpu_ResourceCpu_none"
	.sleb128 3
	.byte	0
	.uleb128 0x5
	.string	"IfxCpu_ResourceCpu"
	.byte	0x8
	.byte	0x59
	.uaword	0x6a0d
	.uleb128 0x6
	.string	"_Ifx_STM_TIM0_Bits"
	.byte	0x4
	.byte	0x9
	.byte	0xc0
	.uaword	0x6abe
	.uleb128 0x7
	.string	"STM31_0"
	.byte	0x9
	.byte	0xc2
	.uaword	0x198
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_STM_TIM0_Bits"
	.byte	0x9
	.byte	0xc3
	.uaword	0x6a8f
	.uleb128 0xd
	.byte	0x4
	.byte	0x9
	.uahalf	0x18f
	.uaword	0x6aff
	.uleb128 0xe
	.string	"U"
	.byte	0x9
	.uahalf	0x192
	.uaword	0x198
	.uleb128 0xe
	.string	"I"
	.byte	0x9
	.uahalf	0x194
	.uaword	0x1c2
	.uleb128 0xe
	.string	"B"
	.byte	0x9
	.uahalf	0x196
	.uaword	0x6abe
	.byte	0
	.uleb128 0xc
	.string	"Ifx_STM_TIM0"
	.byte	0x9
	.uahalf	0x197
	.uaword	0x6ad7
	.uleb128 0x6
	.string	"_Ifx_FLASH_FCON_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0xae
	.uaword	0x6c63
	.uleb128 0x7
	.string	"WSPFLASH"
	.byte	0xa
	.byte	0xb0
	.uaword	0x198
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0x7
	.string	"WSECPF"
	.byte	0xa
	.byte	0xb1
	.uaword	0x198
	.byte	0x4
	.byte	0x2
	.byte	0x1a
	.byte	0
	.uleb128 0x7
	.string	"WSDFLASH"
	.byte	0xa
	.byte	0xb2
	.uaword	0x198
	.byte	0x4
	.byte	0x6
	.byte	0x14
	.byte	0
	.uleb128 0x7
	.string	"WSECDF"
	.byte	0xa
	.byte	0xb3
	.uaword	0x198
	.byte	0x4
	.byte	0x3
	.byte	0x11
	.byte	0
	.uleb128 0x7
	.string	"IDLE"
	.byte	0xa
	.byte	0xb4
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.string	"ESLDIS"
	.byte	0xa
	.byte	0xb5
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x7
	.string	"SLEEP"
	.byte	0xa
	.byte	0xb6
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0x7
	.string	"NSAFECC"
	.byte	0xa
	.byte	0xb7
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0x7
	.string	"STALL"
	.byte	0xa
	.byte	0xb8
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x7
	.string	"RES21"
	.byte	0xa
	.byte	0xb9
	.uaword	0x198
	.byte	0x4
	.byte	0x2
	.byte	0xa
	.byte	0
	.uleb128 0x7
	.string	"RES23"
	.byte	0xa
	.byte	0xba
	.uaword	0x198
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.string	"VOPERM"
	.byte	0xa
	.byte	0xbb
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x7
	.string	"SQERM"
	.byte	0xa
	.byte	0xbc
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x7
	.string	"PROERM"
	.byte	0xa
	.byte	0xbd
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x7
	.string	"reserved_27"
	.byte	0xa
	.byte	0xbe
	.uaword	0x198
	.byte	0x4
	.byte	0x3
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.string	"PR5V"
	.byte	0xa
	.byte	0xbf
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.string	"EOBM"
	.byte	0xa
	.byte	0xc0
	.uaword	0x198
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_FLASH_FCON_Bits"
	.byte	0xa
	.byte	0xc1
	.uaword	0x6b14
	.uleb128 0xd
	.byte	0x4
	.byte	0xa
	.uahalf	0x2de
	.uaword	0x6ca6
	.uleb128 0xe
	.string	"U"
	.byte	0xa
	.uahalf	0x2e1
	.uaword	0x198
	.uleb128 0xe
	.string	"I"
	.byte	0xa
	.uahalf	0x2e3
	.uaword	0x1c2
	.uleb128 0xe
	.string	"B"
	.byte	0xa
	.uahalf	0x2e5
	.uaword	0x6c63
	.byte	0
	.uleb128 0xc
	.string	"Ifx_FLASH_FCON"
	.byte	0xa
	.uahalf	0x2e6
	.uaword	0x6c7e
	.uleb128 0x18
	.byte	0x4
	.uaword	0x69f8
	.uleb128 0x5
	.string	"IfxScuCcu_PllStepsFunctionHook"
	.byte	0x2
	.byte	0x81
	.uaword	0x6ce9
	.uleb128 0x18
	.byte	0x4
	.uaword	0x6cef
	.uleb128 0x19
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.byte	0x2
	.uahalf	0x2c0
	.uaword	0x6d92
	.uleb128 0x4
	.string	"IfxScuCcu_AdcClockSelection_noClock"
	.sleb128 0
	.uleb128 0x4
	.string	"IfxScuCcu_AdcClockSelection_fpll2"
	.sleb128 1
	.uleb128 0x4
	.string	"IfxScuCcu_AdcClockSelection_fPLL2ERAY"
	.sleb128 2
	.uleb128 0x4
	.string	"IfxScuCcu_AdcClockSelection_backup"
	.sleb128 3
	.byte	0
	.uleb128 0xc
	.string	"IfxScuCcu_AdcClockSelection"
	.byte	0x2
	.uahalf	0x2c5
	.uaword	0x6cf1
	.uleb128 0x1a
	.byte	0x8
	.byte	0x2
	.uahalf	0x2cf
	.uaword	0x6ddd
	.uleb128 0xf
	.string	"value"
	.byte	0x2
	.uahalf	0x2d1
	.uaword	0x2df
	.byte	0
	.uleb128 0xf
	.string	"mask"
	.byte	0x2
	.uahalf	0x2d2
	.uaword	0x2df
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.string	"IfxScuCcu_CcuconRegConfig"
	.byte	0x2
	.uahalf	0x2d3
	.uaword	0x6db6
	.uleb128 0x1a
	.byte	0x8
	.byte	0x2
	.uahalf	0x2d8
	.uaword	0x6e4d
	.uleb128 0xf
	.string	"pDivider"
	.byte	0x2
	.uahalf	0x2da
	.uaword	0x282
	.byte	0
	.uleb128 0xf
	.string	"nDivider"
	.byte	0x2
	.uahalf	0x2db
	.uaword	0x282
	.byte	0x1
	.uleb128 0xf
	.string	"k2Initial"
	.byte	0x2
	.uahalf	0x2dc
	.uaword	0x282
	.byte	0x2
	.uleb128 0x12
	.uaword	.LASF37
	.byte	0x2
	.uahalf	0x2dd
	.uaword	0x2ed
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.string	"IfxScuCcu_InitialStepConfig"
	.byte	0x2
	.uahalf	0x2de
	.uaword	0x6dff
	.uleb128 0x1a
	.byte	0xc
	.byte	0x2
	.uahalf	0x2e2
	.uaword	0x6eae
	.uleb128 0xf
	.string	"k2Step"
	.byte	0x2
	.uahalf	0x2e4
	.uaword	0x282
	.byte	0
	.uleb128 0x12
	.uaword	.LASF37
	.byte	0x2
	.uahalf	0x2e5
	.uaword	0x2ed
	.byte	0x4
	.uleb128 0xf
	.string	"hookFunction"
	.byte	0x2
	.uahalf	0x2e6
	.uaword	0x6cc3
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.string	"IfxScuCcu_PllStepsConfig"
	.byte	0x2
	.uahalf	0x2e7
	.uaword	0x6e71
	.uleb128 0x1a
	.byte	0x38
	.byte	0x2
	.uahalf	0x2ef
	.uaword	0x6f48
	.uleb128 0x12
	.uaword	.LASF38
	.byte	0x2
	.uahalf	0x2f1
	.uaword	0x6ddd
	.byte	0
	.uleb128 0x12
	.uaword	.LASF39
	.byte	0x2
	.uahalf	0x2f2
	.uaword	0x6ddd
	.byte	0x8
	.uleb128 0xf
	.string	"ccucon2"
	.byte	0x2
	.uahalf	0x2f3
	.uaword	0x6ddd
	.byte	0x10
	.uleb128 0xf
	.string	"ccucon5"
	.byte	0x2
	.uahalf	0x2f4
	.uaword	0x6ddd
	.byte	0x18
	.uleb128 0xf
	.string	"ccucon6"
	.byte	0x2
	.uahalf	0x2f5
	.uaword	0x6ddd
	.byte	0x20
	.uleb128 0xf
	.string	"ccucon7"
	.byte	0x2
	.uahalf	0x2f6
	.uaword	0x6ddd
	.byte	0x28
	.uleb128 0xf
	.string	"ccucon8"
	.byte	0x2
	.uahalf	0x2f7
	.uaword	0x6ddd
	.byte	0x30
	.byte	0
	.uleb128 0xc
	.string	"IfxScuCcu_ClockDistributionConfig"
	.byte	0x2
	.uahalf	0x2f8
	.uaword	0x6ecf
	.uleb128 0x1a
	.byte	0x8
	.byte	0x2
	.uahalf	0x2fc
	.uaword	0x6f99
	.uleb128 0xf
	.string	"value"
	.byte	0x2
	.uahalf	0x2fe
	.uaword	0x2df
	.byte	0
	.uleb128 0xf
	.string	"mask"
	.byte	0x2
	.uahalf	0x2ff
	.uaword	0x2df
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.string	"IfxScuCcu_FlashWaitstateConfig"
	.byte	0x2
	.uahalf	0x300
	.uaword	0x6f72
	.uleb128 0x1a
	.byte	0x10
	.byte	0x2
	.uahalf	0x305
	.uaword	0x700d
	.uleb128 0xf
	.string	"numOfPllDividerSteps"
	.byte	0x2
	.uahalf	0x307
	.uaword	0x282
	.byte	0
	.uleb128 0xf
	.string	"pllDividerStep"
	.byte	0x2
	.uahalf	0x308
	.uaword	0x700d
	.byte	0x4
	.uleb128 0x12
	.uaword	.LASF40
	.byte	0x2
	.uahalf	0x309
	.uaword	0x6e4d
	.byte	0x8
	.byte	0
	.uleb128 0x18
	.byte	0x4
	.uaword	0x6eae
	.uleb128 0xc
	.string	"IfxScuCcu_SysPllConfig"
	.byte	0x2
	.uahalf	0x30a
	.uaword	0x6fc0
	.uleb128 0x1a
	.byte	0x54
	.byte	0x2
	.uahalf	0x312
	.uaword	0x70a0
	.uleb128 0xf
	.string	"sysPll"
	.byte	0x2
	.uahalf	0x314
	.uaword	0x7013
	.byte	0
	.uleb128 0xf
	.string	"clockDistribution"
	.byte	0x2
	.uahalf	0x315
	.uaword	0x6f48
	.byte	0x10
	.uleb128 0xf
	.string	"flashFconWaitStateConfig"
	.byte	0x2
	.uahalf	0x316
	.uaword	0x6f99
	.byte	0x48
	.uleb128 0xf
	.string	"xtalFrequency"
	.byte	0x2
	.uahalf	0x317
	.uaword	0x2df
	.byte	0x50
	.byte	0
	.uleb128 0xc
	.string	"IfxScuCcu_Config"
	.byte	0x2
	.uahalf	0x318
	.uaword	0x7032
	.uleb128 0x1a
	.byte	0x8
	.byte	0x2
	.uahalf	0x31c
	.uaword	0x70d0
	.uleb128 0x12
	.uaword	.LASF40
	.byte	0x2
	.uahalf	0x31e
	.uaword	0x6e4d
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"IfxScuCcu_ErayPllConfig"
	.byte	0x2
	.uahalf	0x31f
	.uaword	0x70b9
	.uleb128 0x1b
	.string	"IfxScuCcu_getStmFrequency"
	.byte	0x2
	.uahalf	0x464
	.byte	0x1
	.uaword	0x2ed
	.byte	0x3
	.uleb128 0x1c
	.string	"IfxScuCcu_getPll2Frequency"
	.byte	0x2
	.uahalf	0x455
	.byte	0x1
	.uaword	0x2ed
	.byte	0x3
	.uaword	0x7154
	.uleb128 0x1d
	.string	"pll2Frequency"
	.byte	0x2
	.uahalf	0x457
	.uaword	0x2ed
	.byte	0
	.uleb128 0x1c
	.string	"IfxScuCcu_getPll2ErayFrequency"
	.byte	0x2
	.uahalf	0x44b
	.byte	0x1
	.uaword	0x2ed
	.byte	0x3
	.uaword	0x719c
	.uleb128 0x1d
	.string	"pll2ErayFrequency"
	.byte	0x2
	.uahalf	0x44d
	.uaword	0x2ed
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.string	"IfxScuCcu_getOscFrequency"
	.byte	0x1
	.uahalf	0x1c0
	.byte	0x1
	.uaword	0x2ed
	.byte	0x1
	.uaword	0x71d3
	.uleb128 0x1d
	.string	"freq"
	.byte	0x1
	.uahalf	0x1c2
	.uaword	0x2ed
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.string	"IfxScuCcu_getPllFrequency"
	.byte	0x1
	.uahalf	0x205
	.byte	0x1
	.uaword	0x2ed
	.byte	0x1
	.uaword	0x7226
	.uleb128 0x1d
	.string	"scu"
	.byte	0x1
	.uahalf	0x207
	.uaword	0x6cbd
	.uleb128 0x1d
	.string	"oscFreq"
	.byte	0x1
	.uahalf	0x208
	.uaword	0x2ed
	.uleb128 0x1d
	.string	"freq"
	.byte	0x1
	.uahalf	0x209
	.uaword	0x2ed
	.byte	0
	.uleb128 0x1b
	.string	"IfxScuCcu_getEvrFrequency"
	.byte	0x2
	.uahalf	0x43f
	.byte	0x1
	.uaword	0x2ed
	.byte	0x3
	.uleb128 0x1f
	.string	"__maxu"
	.byte	0x3
	.byte	0x6f
	.byte	0x1
	.uaword	0x2df
	.byte	0x3
	.uaword	0x727c
	.uleb128 0x20
	.string	"a"
	.byte	0x3
	.byte	0x6f
	.uaword	0x2df
	.uleb128 0x20
	.string	"b"
	.byte	0x3
	.byte	0x6f
	.uaword	0x2df
	.uleb128 0x21
	.string	"res"
	.byte	0x3
	.byte	0x71
	.uaword	0x2df
	.byte	0
	.uleb128 0x1b
	.string	"IfxScuCcu_getGtmFrequency"
	.byte	0x2
	.uahalf	0x445
	.byte	0x1
	.uaword	0x2ed
	.byte	0x3
	.uleb128 0x22
	.uaword	0x719c
	.uaword	.LFB233
	.uaword	.LFE233
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x72be
	.uleb128 0x23
	.uaword	0x71c5
	.uaword	.LLST0
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.string	"IfxScuCcu_calculateSysPllDividers"
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.uaword	0x306
	.uaword	.LFB200
	.uaword	.LFE200
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x74dd
	.uleb128 0x25
	.string	"cfg"
	.byte	0x1
	.byte	0x5d
	.uaword	0x74dd
	.byte	0x1
	.byte	0x64
	.uleb128 0x26
	.string	"fPll"
	.byte	0x1
	.byte	0x5d
	.uaword	0x2df
	.uaword	.LLST1
	.uleb128 0x27
	.string	"retVal"
	.byte	0x1
	.byte	0x5f
	.uaword	0x306
	.uaword	.LLST2
	.uleb128 0x28
	.string	"deviationAllowed"
	.byte	0x1
	.byte	0x60
	.uaword	0x282
	.byte	0x2
	.uleb128 0x29
	.string	"fOsc"
	.byte	0x1
	.byte	0x61
	.uaword	0x2df
	.byte	0x1
	.byte	0x5a
	.uleb128 0x2a
	.string	"EXITCALC_LOOP"
	.byte	0x1
	.byte	0xb0
	.uaword	.L10
	.uleb128 0x2b
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x2c
	.string	"fPllMax"
	.byte	0x1
	.byte	0x69
	.uaword	0x74e3
	.uaword	0xbebc200
	.uleb128 0x2c
	.string	"fRefMax"
	.byte	0x1
	.byte	0x6a
	.uaword	0x74e3
	.uaword	0x16e3600
	.uleb128 0x2c
	.string	"fRefMin"
	.byte	0x1
	.byte	0x6b
	.uaword	0x74e3
	.uaword	0x7a1200
	.uleb128 0x2c
	.string	"fVcoMin"
	.byte	0x1
	.byte	0x6c
	.uaword	0x74e3
	.uaword	0x17d78400
	.uleb128 0x2c
	.string	"fVcoMax"
	.byte	0x1
	.byte	0x6d
	.uaword	0x74e3
	.uaword	0x2faf0800
	.uleb128 0x28
	.string	"pMin"
	.byte	0x1
	.byte	0x6e
	.uaword	0x74e8
	.byte	0x1
	.uleb128 0x28
	.string	"pMax"
	.byte	0x1
	.byte	0x6f
	.uaword	0x74e8
	.byte	0x10
	.uleb128 0x28
	.string	"k2Min"
	.byte	0x1
	.byte	0x70
	.uaword	0x74e8
	.byte	0x1
	.uleb128 0x2d
	.string	"k2Max"
	.byte	0x1
	.byte	0x71
	.uaword	0x74e8
	.sleb128 -128
	.uleb128 0x28
	.string	"nMin"
	.byte	0x1
	.byte	0x72
	.uaword	0x74e8
	.byte	0x1
	.uleb128 0x2d
	.string	"nMax"
	.byte	0x1
	.byte	0x73
	.uaword	0x74e8
	.sleb128 -128
	.uleb128 0x27
	.string	"p"
	.byte	0x1
	.byte	0x75
	.uaword	0x2df
	.uaword	.LLST3
	.uleb128 0x27
	.string	"n"
	.byte	0x1
	.byte	0x76
	.uaword	0x2df
	.uaword	.LLST4
	.uleb128 0x27
	.string	"k2"
	.byte	0x1
	.byte	0x77
	.uaword	0x2df
	.uaword	.LLST5
	.uleb128 0x29
	.string	"k2Steps"
	.byte	0x1
	.byte	0x78
	.uaword	0x2df
	.byte	0x1
	.byte	0x5e
	.uleb128 0x27
	.string	"bestK2"
	.byte	0x1
	.byte	0x79
	.uaword	0x2df
	.uaword	.LLST6
	.uleb128 0x27
	.string	"bestN"
	.byte	0x1
	.byte	0x79
	.uaword	0x2df
	.uaword	.LLST7
	.uleb128 0x27
	.string	"bestP"
	.byte	0x1
	.byte	0x79
	.uaword	0x2df
	.uaword	.LLST8
	.uleb128 0x27
	.string	"fRef"
	.byte	0x1
	.byte	0x7b
	.uaword	0x326
	.uaword	.LLST9
	.uleb128 0x27
	.string	"fVco"
	.byte	0x1
	.byte	0x7b
	.uaword	0x326
	.uaword	.LLST10
	.uleb128 0x27
	.string	"fPllLeastError"
	.byte	0x1
	.byte	0x7c
	.uaword	0x326
	.uaword	.LLST11
	.uleb128 0x2b
	.uaword	.Ldebug_ranges0+0x18
	.uleb128 0x27
	.string	"fPllError"
	.byte	0x1
	.byte	0x96
	.uaword	0x326
	.uaword	.LLST12
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
	.byte	0x4
	.uaword	0x70a0
	.uleb128 0x2e
	.uaword	0x2df
	.uleb128 0x2e
	.uaword	0x282
	.uleb128 0x2f
	.byte	0x1
	.string	"IfxScuCcu_getOsc0Frequency"
	.byte	0x1
	.uahalf	0x1ba
	.byte	0x1
	.uaword	0x2ed
	.uaword	.LFB210
	.uaword	.LFE210
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x22
	.uaword	0x719c
	.uaword	.LFB211
	.uaword	.LFE211
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x7546
	.uleb128 0x30
	.uaword	0x71c5
	.byte	0x4
	.uaword	0x4cbebc20
	.uleb128 0x31
	.uaword	.LVL26
	.byte	0x1
	.uaword	0x72a0
	.byte	0
	.uleb128 0x32
	.byte	0x1
	.string	"IfxScuCcu_getPllErayFrequency"
	.byte	0x1
	.uahalf	0x1d6
	.byte	0x1
	.uaword	0x2ed
	.uaword	.LFB212
	.uaword	.LFE212
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x75db
	.uleb128 0x33
	.string	"scu"
	.byte	0x1
	.uahalf	0x1d8
	.uaword	0x6cbd
	.sleb128 -268214272
	.uleb128 0x34
	.string	"oscFreq"
	.byte	0x1
	.uahalf	0x1d9
	.uaword	0x2ed
	.byte	0x1
	.byte	0x52
	.uleb128 0x35
	.string	"freq"
	.byte	0x1
	.uahalf	0x1da
	.uaword	0x2ed
	.uaword	.LLST13
	.uleb128 0x36
	.uaword	0x719c
	.uaword	.LBB36
	.uaword	.Ldebug_ranges0+0x30
	.byte	0x1
	.uahalf	0x1dc
	.uleb128 0x2b
	.uaword	.Ldebug_ranges0+0x30
	.uleb128 0x23
	.uaword	0x71c5
	.uaword	.LLST14
	.uleb128 0x37
	.uaword	.LVL32
	.uaword	0x72a0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x32
	.byte	0x1
	.string	"IfxScuCcu_getPllErayVcoFrequency"
	.byte	0x1
	.uahalf	0x1f2
	.byte	0x1
	.uaword	0x2ed
	.uaword	.LFB213
	.uaword	.LFE213
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x7653
	.uleb128 0x35
	.string	"vcoFreq"
	.byte	0x1
	.uahalf	0x1f4
	.uaword	0x2ed
	.uaword	.LLST15
	.uleb128 0x36
	.uaword	0x719c
	.uaword	.LBB40
	.uaword	.Ldebug_ranges0+0x48
	.byte	0x1
	.uahalf	0x1fe
	.uleb128 0x2b
	.uaword	.Ldebug_ranges0+0x48
	.uleb128 0x23
	.uaword	0x71c5
	.uaword	.LLST16
	.uleb128 0x37
	.uaword	.LVL41
	.uaword	0x72a0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
	.uaword	0x71d3
	.uaword	.LFB214
	.uaword	.LFE214
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x76ca
	.uleb128 0x38
	.uaword	0x71fc
	.sleb128 -268214272
	.uleb128 0x39
	.uaword	0x7208
	.byte	0x1
	.byte	0x52
	.uleb128 0x23
	.uaword	0x7218
	.uaword	.LLST17
	.uleb128 0x3a
	.uaword	0x719c
	.uaword	.LBB50
	.uaword	.Ldebug_ranges0+0x60
	.byte	0x1
	.uahalf	0x20b
	.uaword	0x76ae
	.uleb128 0x2b
	.uaword	.Ldebug_ranges0+0x60
	.uleb128 0x23
	.uaword	0x71c5
	.uaword	.LLST18
	.uleb128 0x37
	.uaword	.LVL47
	.uaword	0x72a0
	.byte	0
	.byte	0
	.uleb128 0x3b
	.uaword	.LBB55
	.uaword	.LBE55
	.uleb128 0x3c
	.uaword	0x71fc
	.uleb128 0x3c
	.uaword	0x7208
	.uleb128 0x39
	.uaword	0x7218
	.byte	0x1
	.byte	0x52
	.byte	0
	.byte	0
	.uleb128 0x32
	.byte	0x1
	.string	"IfxScuCcu_getPllVcoFrequency"
	.byte	0x1
	.uahalf	0x221
	.byte	0x1
	.uaword	0x2ed
	.uaword	.LFB215
	.uaword	.LFE215
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x773e
	.uleb128 0x35
	.string	"vcoFreq"
	.byte	0x1
	.uahalf	0x223
	.uaword	0x2ed
	.uaword	.LLST19
	.uleb128 0x36
	.uaword	0x719c
	.uaword	.LBB56
	.uaword	.Ldebug_ranges0+0x78
	.byte	0x1
	.uahalf	0x22d
	.uleb128 0x2b
	.uaword	.Ldebug_ranges0+0x78
	.uleb128 0x23
	.uaword	0x71c5
	.uaword	.LLST20
	.uleb128 0x37
	.uaword	.LVL56
	.uaword	0x72a0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.string	"IfxScuCcu_getAdcFrequency"
	.byte	0x1
	.byte	0xc4
	.byte	0x1
	.uaword	0x2ed
	.uaword	.LFB201
	.uaword	.LFE201
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x77e9
	.uleb128 0x3d
	.uaword	.LASF41
	.byte	0x1
	.byte	0xc6
	.uaword	0x2ed
	.uaword	.LLST21
	.uleb128 0x3d
	.uaword	.LASF38
	.byte	0x1
	.byte	0xc7
	.uaword	0x4a59
	.uaword	.LLST22
	.uleb128 0x3e
	.uaword	0x7114
	.uaword	.LBB60
	.uaword	.LBE60
	.byte	0x1
	.byte	0xcb
	.uaword	0x77be
	.uleb128 0x3b
	.uaword	.LBB61
	.uaword	.LBE61
	.uleb128 0x23
	.uaword	0x713d
	.uaword	.LLST23
	.uleb128 0x37
	.uaword	.LVL62
	.uaword	0x76ca
	.byte	0
	.byte	0
	.uleb128 0x3f
	.uaword	0x7154
	.uaword	.LBB62
	.uaword	.LBE62
	.byte	0x1
	.byte	0xcf
	.uleb128 0x3b
	.uaword	.LBB63
	.uaword	.LBE63
	.uleb128 0x39
	.uaword	0x7181
	.byte	0x1
	.byte	0x52
	.uleb128 0x37
	.uaword	.LVL65
	.uaword	0x75db
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x32
	.byte	0x1
	.string	"IfxScuCcu_getSourceFrequency"
	.byte	0x1
	.uahalf	0x234
	.byte	0x1
	.uaword	0x2ed
	.uaword	.LFB216
	.uaword	.LFE216
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x783f
	.uleb128 0x34
	.string	"sourcefreq"
	.byte	0x1
	.uahalf	0x236
	.uaword	0x2ed
	.byte	0x1
	.byte	0x52
	.uleb128 0x31
	.uaword	.LVL67
	.byte	0x1
	.uaword	0x71d3
	.byte	0
	.uleb128 0x40
	.string	"IfxScuCcu_wait"
	.byte	0x1
	.uahalf	0x558
	.byte	0x1
	.uaword	.LFB232
	.uaword	.LFE232
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x78bc
	.uleb128 0x41
	.string	"timeSec"
	.byte	0x1
	.uahalf	0x558
	.uaword	0x2ed
	.uaword	.LLST24
	.uleb128 0x34
	.string	"stmCount"
	.byte	0x1
	.uahalf	0x55a
	.uaword	0x2df
	.byte	0x1
	.byte	0x54
	.uleb128 0x34
	.string	"stmCountBegin"
	.byte	0x1
	.uahalf	0x55b
	.uaword	0x2df
	.byte	0x1
	.byte	0x52
	.uleb128 0x36
	.uaword	0x70f0
	.uaword	.LBB64
	.uaword	.Ldebug_ranges0+0x90
	.byte	0x1
	.uahalf	0x55a
	.uleb128 0x37
	.uaword	.LVL70
	.uaword	0x77e9
	.byte	0
	.byte	0
	.uleb128 0x32
	.byte	0x1
	.string	"IfxScuCcu_getBbbFrequency"
	.byte	0x1
	.uahalf	0x102
	.byte	0x1
	.uaword	0x2ed
	.uaword	.LFB204
	.uaword	.LFE204
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x7922
	.uleb128 0x35
	.string	"bbbFrequency"
	.byte	0x1
	.uahalf	0x104
	.uaword	0x2ed
	.uaword	.LLST25
	.uleb128 0x42
	.uaword	.LASF42
	.byte	0x1
	.uahalf	0x105
	.uaword	0x2ed
	.uaword	.LLST26
	.uleb128 0x37
	.uaword	.LVL72
	.uaword	0x77e9
	.byte	0
	.uleb128 0x32
	.byte	0x1
	.string	"IfxScuCcu_getMaxFrequency"
	.byte	0x1
	.uahalf	0x178
	.byte	0x1
	.uaword	0x2ed
	.uaword	.LFB208
	.uaword	.LFE208
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x7988
	.uleb128 0x35
	.string	"maxFrequency"
	.byte	0x1
	.uahalf	0x17a
	.uaword	0x2ed
	.uaword	.LLST27
	.uleb128 0x42
	.uaword	.LASF42
	.byte	0x1
	.uahalf	0x17b
	.uaword	0x2ed
	.uaword	.LLST28
	.uleb128 0x37
	.uaword	.LVL84
	.uaword	0x77e9
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.string	"IfxScuCcu_getBaud1Frequency"
	.byte	0x1
	.byte	0xde
	.byte	0x1
	.uaword	0x2ed
	.uaword	.LFB202
	.uaword	.LFE202
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x79e4
	.uleb128 0x3d
	.uaword	.LASF41
	.byte	0x1
	.byte	0xe0
	.uaword	0x2ed
	.uaword	.LLST29
	.uleb128 0x3d
	.uaword	.LASF38
	.byte	0x1
	.byte	0xe1
	.uaword	0x4a59
	.uaword	.LLST30
	.uleb128 0x37
	.uaword	.LVL100
	.uaword	0x7922
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.string	"IfxScuCcu_getBaud2Frequency"
	.byte	0x1
	.byte	0xf0
	.byte	0x1
	.uaword	0x2ed
	.uaword	.LFB203
	.uaword	.LFE203
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x7a40
	.uleb128 0x3d
	.uaword	.LASF41
	.byte	0x1
	.byte	0xf2
	.uaword	0x2ed
	.uaword	.LLST31
	.uleb128 0x3d
	.uaword	.LASF38
	.byte	0x1
	.byte	0xf3
	.uaword	0x4a59
	.uaword	.LLST32
	.uleb128 0x37
	.uaword	.LVL107
	.uaword	0x7922
	.byte	0
	.uleb128 0x32
	.byte	0x1
	.string	"IfxScuCcu_getSpbFrequency"
	.byte	0x1
	.uahalf	0x249
	.byte	0x1
	.uaword	0x2ed
	.uaword	.LFB217
	.uaword	.LFE217
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x7aa6
	.uleb128 0x35
	.string	"spbFrequency"
	.byte	0x1
	.uahalf	0x24b
	.uaword	0x2ed
	.uaword	.LLST33
	.uleb128 0x42
	.uaword	.LASF42
	.byte	0x1
	.uahalf	0x24c
	.uaword	0x2ed
	.uaword	.LLST34
	.uleb128 0x37
	.uaword	.LVL109
	.uaword	0x77e9
	.byte	0
	.uleb128 0x32
	.byte	0x1
	.string	"IfxScuCcu_getModuleFrequency"
	.byte	0x1
	.uahalf	0x1a1
	.byte	0x1
	.uaword	0x2ed
	.uaword	.LFB209
	.uaword	.LFE209
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x7b22
	.uleb128 0x34
	.string	"spbFreq"
	.byte	0x1
	.uahalf	0x1a3
	.uaword	0x2ed
	.byte	0x1
	.byte	0x53
	.uleb128 0x35
	.string	"moduleFreq"
	.byte	0x1
	.uahalf	0x1a4
	.uaword	0x2ed
	.uaword	.LLST35
	.uleb128 0x35
	.string	"scuFdr"
	.byte	0x1
	.uahalf	0x1a5
	.uaword	0x54c0
	.uaword	.LLST36
	.uleb128 0x37
	.uaword	.LVL122
	.uaword	0x7a40
	.byte	0
	.uleb128 0x32
	.byte	0x1
	.string	"IfxScuCcu_getSriFrequency"
	.byte	0x1
	.uahalf	0x272
	.byte	0x1
	.uaword	0x2ed
	.uaword	.LFB218
	.uaword	.LFE218
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x7b88
	.uleb128 0x35
	.string	"sriFrequency"
	.byte	0x1
	.uahalf	0x274
	.uaword	0x2ed
	.uaword	.LLST37
	.uleb128 0x42
	.uaword	.LASF42
	.byte	0x1
	.uahalf	0x275
	.uaword	0x2ed
	.uaword	.LLST38
	.uleb128 0x37
	.uaword	.LVL130
	.uaword	0x77e9
	.byte	0
	.uleb128 0x32
	.byte	0x1
	.string	"IfxScuCcu_getCpuFrequency"
	.byte	0x1
	.uahalf	0x12b
	.byte	0x1
	.uaword	0x2ed
	.uaword	.LFB205
	.uaword	.LFE205
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x7bf6
	.uleb128 0x41
	.string	"cpu"
	.byte	0x1
	.uahalf	0x12b
	.uaword	0x7bf6
	.uaword	.LLST39
	.uleb128 0x43
	.uaword	.LASF41
	.byte	0x1
	.uahalf	0x12d
	.uaword	0x2ed
	.byte	0x1
	.byte	0x52
	.uleb128 0x35
	.string	"cpuDiv"
	.byte	0x1
	.uahalf	0x12e
	.uaword	0x2df
	.uaword	.LLST40
	.uleb128 0x37
	.uaword	.LVL143
	.uaword	0x7b22
	.byte	0
	.uleb128 0x2e
	.uaword	0x6a75
	.uleb128 0x32
	.byte	0x1
	.string	"IfxScuCcu_getFsi2Frequency"
	.byte	0x1
	.uahalf	0x14a
	.byte	0x1
	.uaword	0x2ed
	.uaword	.LFB206
	.uaword	.LFE206
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x7c59
	.uleb128 0x42
	.uaword	.LASF41
	.byte	0x1
	.uahalf	0x14c
	.uaword	0x2ed
	.uaword	.LLST41
	.uleb128 0x42
	.uaword	.LASF38
	.byte	0x1
	.uahalf	0x14d
	.uaword	0x4a59
	.uaword	.LLST42
	.uleb128 0x37
	.uaword	.LVL157
	.uaword	0x7b22
	.byte	0
	.uleb128 0x32
	.byte	0x1
	.string	"IfxScuCcu_getFsiFrequency"
	.byte	0x1
	.uahalf	0x161
	.byte	0x1
	.uaword	0x2ed
	.uaword	.LFB207
	.uaword	.LFE207
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x7cb6
	.uleb128 0x42
	.uaword	.LASF41
	.byte	0x1
	.uahalf	0x163
	.uaword	0x2ed
	.uaword	.LLST43
	.uleb128 0x42
	.uaword	.LASF38
	.byte	0x1
	.uahalf	0x164
	.uaword	0x4a59
	.uaword	.LLST44
	.uleb128 0x37
	.uaword	.LVL164
	.uaword	0x7b22
	.byte	0
	.uleb128 0x1c
	.string	"IfxScuCcu_isOscillatorStable"
	.byte	0x1
	.uahalf	0x410
	.byte	0x1
	.uaword	0x306
	.byte	0x1
	.uaword	0x7d13
	.uleb128 0x1d
	.string	"TimeoutCtr"
	.byte	0x1
	.uahalf	0x412
	.uaword	0x2d1
	.uleb128 0x44
	.uaword	.LASF43
	.byte	0x1
	.uahalf	0x413
	.uaword	0x306
	.uleb128 0x1d
	.string	"endinitPw"
	.byte	0x1
	.uahalf	0x414
	.uaword	0x2ad
	.byte	0
	.uleb128 0x45
	.byte	0x1
	.string	"IfxScuCcu_init"
	.byte	0x1
	.uahalf	0x29b
	.byte	0x1
	.uaword	0x306
	.uaword	.LFB219
	.uaword	.LFE219
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x8060
	.uleb128 0x41
	.string	"cfg"
	.byte	0x1
	.uahalf	0x29b
	.uaword	0x8060
	.uaword	.LLST45
	.uleb128 0x42
	.uaword	.LASF44
	.byte	0x1
	.uahalf	0x29d
	.uaword	0x282
	.uaword	.LLST46
	.uleb128 0x42
	.uaword	.LASF45
	.byte	0x1
	.uahalf	0x29e
	.uaword	0x2ad
	.uaword	.LLST47
	.uleb128 0x42
	.uaword	.LASF46
	.byte	0x1
	.uahalf	0x29e
	.uaword	0x2ad
	.uaword	.LLST48
	.uleb128 0x42
	.uaword	.LASF43
	.byte	0x1
	.uahalf	0x29f
	.uaword	0x306
	.uaword	.LLST49
	.uleb128 0x3a
	.uaword	0x7cb6
	.uaword	.LBB79
	.uaword	.Ldebug_ranges0+0xa8
	.byte	0x1
	.uahalf	0x2c9
	.uaword	0x7e0b
	.uleb128 0x2b
	.uaword	.Ldebug_ranges0+0xa8
	.uleb128 0x23
	.uaword	0x7ce1
	.uaword	.LLST50
	.uleb128 0x23
	.uaword	0x7cf4
	.uaword	.LLST51
	.uleb128 0x23
	.uaword	0x7d00
	.uaword	.LLST52
	.uleb128 0x37
	.uaword	.LVL177
	.uaword	0x8b15
	.uleb128 0x46
	.uaword	.LVL182
	.uaword	0x8b41
	.uaword	0x7ddc
	.uleb128 0x47
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.uaword	.LVL184
	.uaword	0x8b6b
	.uleb128 0x46
	.uaword	.LVL187
	.uaword	0x8b41
	.uaword	0x7df9
	.uleb128 0x47
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x48
	.uaword	.LVL188
	.uaword	0x8b6b
	.uleb128 0x47
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x49
	.uaword	.LBB84
	.uaword	.LBE84
	.uaword	0x7f9d
	.uleb128 0x42
	.uaword	.LASF47
	.byte	0x1
	.uahalf	0x2d1
	.uaword	0x282
	.uaword	.LLST53
	.uleb128 0x4a
	.uaword	.Ldebug_ranges0+0xc8
	.uaword	0x7e42
	.uleb128 0x42
	.uaword	.LASF38
	.byte	0x1
	.uahalf	0x30f
	.uaword	0x4a59
	.uaword	.LLST54
	.byte	0
	.uleb128 0x4a
	.uaword	.Ldebug_ranges0+0xe0
	.uaword	0x7e5c
	.uleb128 0x42
	.uaword	.LASF39
	.byte	0x1
	.uahalf	0x320
	.uaword	0x4a99
	.uaword	.LLST55
	.byte	0
	.uleb128 0x4a
	.uaword	.Ldebug_ranges0+0x100
	.uaword	0x7e7a
	.uleb128 0x35
	.string	"ccucon2"
	.byte	0x1
	.uahalf	0x331
	.uaword	0x4ad9
	.uaword	.LLST56
	.byte	0
	.uleb128 0x4a
	.uaword	.Ldebug_ranges0+0x118
	.uaword	0x7e98
	.uleb128 0x35
	.string	"ccucon5"
	.byte	0x1
	.uahalf	0x33f
	.uaword	0x4b99
	.uaword	.LLST57
	.byte	0
	.uleb128 0x4a
	.uaword	.Ldebug_ranges0+0x130
	.uaword	0x7eb6
	.uleb128 0x35
	.string	"ccucon6"
	.byte	0x1
	.uahalf	0x348
	.uaword	0x4bd9
	.uaword	.LLST58
	.byte	0
	.uleb128 0x4a
	.uaword	.Ldebug_ranges0+0x158
	.uaword	0x7ed4
	.uleb128 0x35
	.string	"ccucon7"
	.byte	0x1
	.uahalf	0x351
	.uaword	0x4c19
	.uaword	.LLST59
	.byte	0
	.uleb128 0x4a
	.uaword	.Ldebug_ranges0+0x180
	.uaword	0x7ef2
	.uleb128 0x35
	.string	"ccucon8"
	.byte	0x1
	.uahalf	0x35a
	.uaword	0x4c59
	.uaword	.LLST60
	.byte	0
	.uleb128 0x4a
	.uaword	.Ldebug_ranges0+0x198
	.uaword	0x7f31
	.uleb128 0x35
	.string	"fcon"
	.byte	0x1
	.uahalf	0x367
	.uaword	0x6ca6
	.uaword	.LLST61
	.uleb128 0x46
	.uaword	.LVL221
	.uaword	0x8b41
	.uaword	0x7f20
	.uleb128 0x47
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x48
	.uaword	.LVL222
	.uaword	0x8b6b
	.uleb128 0x47
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x46
	.uaword	.LVL190
	.uaword	0x8b93
	.uaword	0x7f45
	.uleb128 0x47
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.uaword	.LVL191
	.uaword	0x783f
	.uleb128 0x37
	.uaword	.LVL192
	.uaword	0x783f
	.uleb128 0x46
	.uaword	.LVL217
	.uaword	0x8bc0
	.uaword	0x7f6b
	.uleb128 0x47
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x46
	.uaword	.LVL226
	.uaword	0x8b93
	.uaword	0x7f7f
	.uleb128 0x47
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x46
	.uaword	.LVL227
	.uaword	0x8bc0
	.uaword	0x7f93
	.uleb128 0x47
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.uaword	.LVL230
	.uaword	0x783f
	.byte	0
	.uleb128 0x37
	.uaword	.LVL168
	.uaword	0x8b15
	.uleb128 0x37
	.uaword	.LVL170
	.uaword	0x8beb
	.uleb128 0x46
	.uaword	.LVL172
	.uaword	0x8b41
	.uaword	0x7fc3
	.uleb128 0x47
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x46
	.uaword	.LVL174
	.uaword	0x8b6b
	.uaword	0x7fd7
	.uleb128 0x47
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x46
	.uaword	.LVL175
	.uaword	0x8b93
	.uaword	0x7feb
	.uleb128 0x47
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x46
	.uaword	.LVL185
	.uaword	0x8bc0
	.uaword	0x7fff
	.uleb128 0x47
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x46
	.uaword	.LVL189
	.uaword	0x8bc0
	.uaword	0x8013
	.uleb128 0x47
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x46
	.uaword	.LVL233
	.uaword	0x8b93
	.uaword	0x8027
	.uleb128 0x47
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x46
	.uaword	.LVL235
	.uaword	0x8bc0
	.uaword	0x803b
	.uleb128 0x47
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x46
	.uaword	.LVL236
	.uaword	0x8b41
	.uaword	0x804f
	.uleb128 0x47
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x48
	.uaword	.LVL237
	.uaword	0x8b6b
	.uleb128 0x47
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x18
	.byte	0x4
	.uaword	0x8066
	.uleb128 0x2e
	.uaword	0x70a0
	.uleb128 0x4b
	.byte	0x1
	.string	"IfxScuCcu_initConfig"
	.byte	0x1
	.uahalf	0x3a1
	.byte	0x1
	.uaword	.LFB220
	.uaword	.LFE220
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x80a6
	.uleb128 0x41
	.string	"cfg"
	.byte	0x1
	.uahalf	0x3a1
	.uaword	0x74dd
	.uaword	.LLST62
	.byte	0
	.uleb128 0x32
	.byte	0x1
	.string	"IfxScuCcu_initErayPll"
	.byte	0x1
	.uahalf	0x3a7
	.byte	0x1
	.uaword	0x306
	.uaword	.LFB221
	.uaword	.LFE221
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x81f1
	.uleb128 0x41
	.string	"cfg"
	.byte	0x1
	.uahalf	0x3a7
	.uaword	0x81f1
	.uaword	.LLST63
	.uleb128 0x43
	.uaword	.LASF44
	.byte	0x1
	.uahalf	0x3a9
	.uaword	0x282
	.byte	0x1
	.byte	0x5a
	.uleb128 0x42
	.uaword	.LASF45
	.byte	0x1
	.uahalf	0x3aa
	.uaword	0x2ad
	.uaword	.LLST64
	.uleb128 0x42
	.uaword	.LASF46
	.byte	0x1
	.uahalf	0x3aa
	.uaword	0x2ad
	.uaword	.LLST65
	.uleb128 0x4c
	.uaword	.LASF43
	.byte	0x1
	.uahalf	0x3ab
	.uaword	0x306
	.byte	0
	.uleb128 0x35
	.string	"time_out_ctr"
	.byte	0x1
	.uahalf	0x3e6
	.uaword	0x2df
	.uaword	.LLST66
	.uleb128 0x37
	.uaword	.LVL241
	.uaword	0x8b15
	.uleb128 0x37
	.uaword	.LVL243
	.uaword	0x8beb
	.uleb128 0x46
	.uaword	.LVL245
	.uaword	0x8b41
	.uaword	0x815f
	.uleb128 0x47
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x46
	.uaword	.LVL247
	.uaword	0x8b6b
	.uaword	0x8173
	.uleb128 0x47
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x46
	.uaword	.LVL248
	.uaword	0x8b93
	.uaword	0x8187
	.uleb128 0x47
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.uaword	.LVL249
	.uaword	0x783f
	.uleb128 0x46
	.uaword	.LVL250
	.uaword	0x8bc0
	.uaword	0x81a4
	.uleb128 0x47
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x46
	.uaword	.LVL252
	.uaword	0x8b93
	.uaword	0x81b8
	.uleb128 0x47
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x46
	.uaword	.LVL253
	.uaword	0x8bc0
	.uaword	0x81cc
	.uleb128 0x47
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x46
	.uaword	.LVL254
	.uaword	0x8b41
	.uaword	0x81e0
	.uleb128 0x47
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x48
	.uaword	.LVL255
	.uaword	0x8b6b
	.uleb128 0x47
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x18
	.byte	0x4
	.uaword	0x81f7
	.uleb128 0x2e
	.uaword	0x70d0
	.uleb128 0x4b
	.byte	0x1
	.string	"IfxScuCcu_initErayPllConfig"
	.byte	0x1
	.uahalf	0x40a
	.byte	0x1
	.uaword	.LFB222
	.uaword	.LFE222
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x823c
	.uleb128 0x4d
	.string	"cfg"
	.byte	0x1
	.uahalf	0x40a
	.uaword	0x823c
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x18
	.byte	0x4
	.uaword	0x70d0
	.uleb128 0x4b
	.byte	0x1
	.string	"IfxScuCcu_selectAdcClock"
	.byte	0x1
	.uahalf	0x439
	.byte	0x1
	.uaword	.LFB224
	.uaword	.LFE224
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x82d3
	.uleb128 0x41
	.string	"adcClkSel"
	.byte	0x1
	.uahalf	0x439
	.uaword	0x6d92
	.uaword	.LLST67
	.uleb128 0x42
	.uaword	.LASF48
	.byte	0x1
	.uahalf	0x43b
	.uaword	0x2ad
	.uaword	.LLST68
	.uleb128 0x43
	.uaword	.LASF38
	.byte	0x1
	.uahalf	0x443
	.uaword	0x4a59
	.byte	0x1
	.byte	0x5f
	.uleb128 0x37
	.uaword	.LVL258
	.uaword	0x8beb
	.uleb128 0x46
	.uaword	.LVL260
	.uaword	0x8b93
	.uaword	0x82c1
	.uleb128 0x47
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x4e
	.uaword	.LVL262
	.byte	0x1
	.uaword	0x8bc0
	.uleb128 0x47
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x32
	.byte	0x1
	.string	"IfxScuCcu_setCpuFrequency"
	.byte	0x1
	.uahalf	0x44b
	.byte	0x1
	.uaword	0x2ed
	.uaword	.LFB225
	.uaword	.LFE225
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x83c9
	.uleb128 0x41
	.string	"cpu"
	.byte	0x1
	.uahalf	0x44b
	.uaword	0x6a75
	.uaword	.LLST69
	.uleb128 0x41
	.string	"cpuFreq"
	.byte	0x1
	.uahalf	0x44b
	.uaword	0x2ed
	.uaword	.LLST70
	.uleb128 0x42
	.uaword	.LASF46
	.byte	0x1
	.uahalf	0x44d
	.uaword	0x2ad
	.uaword	.LLST71
	.uleb128 0x35
	.string	"sriFreq"
	.byte	0x1
	.uahalf	0x44e
	.uaword	0x2ed
	.uaword	.LLST72
	.uleb128 0x35
	.string	"cpuDiv"
	.byte	0x1
	.uahalf	0x44f
	.uaword	0x2df
	.uaword	.LLST73
	.uleb128 0x37
	.uaword	.LVL264
	.uaword	0x7b22
	.uleb128 0x37
	.uaword	.LVL269
	.uaword	0x8beb
	.uleb128 0x46
	.uaword	.LVL271
	.uaword	0x8b93
	.uaword	0x8387
	.uleb128 0x47
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x46
	.uaword	.LVL273
	.uaword	0x8bc0
	.uaword	0x839b
	.uleb128 0x47
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.uaword	.LVL276
	.uaword	0x8beb
	.uleb128 0x46
	.uaword	.LVL278
	.uaword	0x8b93
	.uaword	0x83b8
	.uleb128 0x47
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x48
	.uaword	.LVL285
	.uaword	0x8bc0
	.uleb128 0x47
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x32
	.byte	0x1
	.string	"IfxScuCcu_setGtmFrequency"
	.byte	0x1
	.uahalf	0x47c
	.byte	0x1
	.uaword	0x2ed
	.uaword	.LFB226
	.uaword	.LFE226
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x84df
	.uleb128 0x41
	.string	"gtmFreq"
	.byte	0x1
	.uahalf	0x47c
	.uaword	0x2ed
	.uaword	.LLST74
	.uleb128 0x42
	.uaword	.LASF49
	.byte	0x1
	.uahalf	0x47e
	.uaword	0x2ad
	.uaword	.LLST75
	.uleb128 0x42
	.uaword	.LASF39
	.byte	0x1
	.uahalf	0x47f
	.uaword	0x4a99
	.uaword	.LLST76
	.uleb128 0x42
	.uaword	.LASF50
	.byte	0x1
	.uahalf	0x481
	.uaword	0x2ed
	.uaword	.LLST77
	.uleb128 0x35
	.string	"gtmDiv"
	.byte	0x1
	.uahalf	0x482
	.uaword	0x2df
	.uaword	.LLST78
	.uleb128 0x4f
	.uaword	0x724a
	.uaword	.LBB107
	.uaword	.LBE107
	.byte	0x1
	.uahalf	0x483
	.uaword	0x848a
	.uleb128 0x50
	.uaword	0x7267
	.byte	0x1
	.uleb128 0x51
	.uaword	0x725e
	.uaword	.LLST79
	.uleb128 0x3b
	.uaword	.LBB108
	.uaword	.LBE108
	.uleb128 0x23
	.uaword	0x7270
	.uaword	.LLST80
	.byte	0
	.byte	0
	.uleb128 0x4f
	.uaword	0x727c
	.uaword	.LBB109
	.uaword	.LBE109
	.byte	0x1
	.uahalf	0x498
	.uaword	0x84a8
	.uleb128 0x37
	.uaword	.LVL298
	.uaword	0x77e9
	.byte	0
	.uleb128 0x37
	.uaword	.LVL288
	.uaword	0x77e9
	.uleb128 0x37
	.uaword	.LVL294
	.uaword	0x8beb
	.uleb128 0x46
	.uaword	.LVL296
	.uaword	0x8b93
	.uaword	0x84ce
	.uleb128 0x47
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x48
	.uaword	.LVL297
	.uaword	0x8bc0
	.uleb128 0x47
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x32
	.byte	0x1
	.string	"IfxScuCcu_setPll2ErayFrequency"
	.byte	0x1
	.uahalf	0x49c
	.byte	0x1
	.uaword	0x2ed
	.uaword	.LFB227
	.uaword	.LFE227
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x85bc
	.uleb128 0x41
	.string	"pll2ErayFreq"
	.byte	0x1
	.uahalf	0x49c
	.uaword	0x2ed
	.uaword	.LLST81
	.uleb128 0x42
	.uaword	.LASF48
	.byte	0x1
	.uahalf	0x49e
	.uaword	0x2ad
	.uaword	.LLST82
	.uleb128 0x35
	.string	"pll2Div"
	.byte	0x1
	.uahalf	0x49f
	.uaword	0x2df
	.uaword	.LLST83
	.uleb128 0x4f
	.uaword	0x7154
	.uaword	.LBB111
	.uaword	.LBE111
	.byte	0x1
	.uahalf	0x4a5
	.uaword	0x8585
	.uleb128 0x3b
	.uaword	.LBB112
	.uaword	.LBE112
	.uleb128 0x23
	.uaword	0x7181
	.uaword	.LLST84
	.uleb128 0x37
	.uaword	.LVL311
	.uaword	0x75db
	.byte	0
	.byte	0
	.uleb128 0x37
	.uaword	.LVL302
	.uaword	0x8beb
	.uleb128 0x37
	.uaword	.LVL304
	.uaword	0x75db
	.uleb128 0x46
	.uaword	.LVL306
	.uaword	0x8b93
	.uaword	0x85ab
	.uleb128 0x47
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x48
	.uaword	.LVL310
	.uaword	0x8bc0
	.uleb128 0x47
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x32
	.byte	0x1
	.string	"IfxScuCcu_setPll2Frequency"
	.byte	0x1
	.uahalf	0x4a9
	.byte	0x1
	.uaword	0x2ed
	.uaword	.LFB228
	.uaword	.LFE228
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x8691
	.uleb128 0x41
	.string	"pll2Freq"
	.byte	0x1
	.uahalf	0x4a9
	.uaword	0x2ed
	.uaword	.LLST85
	.uleb128 0x42
	.uaword	.LASF46
	.byte	0x1
	.uahalf	0x4ab
	.uaword	0x2ad
	.uaword	.LLST86
	.uleb128 0x35
	.string	"pll2Div"
	.byte	0x1
	.uahalf	0x4ac
	.uaword	0x2df
	.uaword	.LLST87
	.uleb128 0x4f
	.uaword	0x7114
	.uaword	.LBB113
	.uaword	.LBE113
	.byte	0x1
	.uahalf	0x4b2
	.uaword	0x865a
	.uleb128 0x3b
	.uaword	.LBB114
	.uaword	.LBE114
	.uleb128 0x23
	.uaword	0x713d
	.uaword	.LLST88
	.uleb128 0x37
	.uaword	.LVL326
	.uaword	0x76ca
	.byte	0
	.byte	0
	.uleb128 0x37
	.uaword	.LVL317
	.uaword	0x8beb
	.uleb128 0x37
	.uaword	.LVL319
	.uaword	0x76ca
	.uleb128 0x46
	.uaword	.LVL321
	.uaword	0x8b93
	.uaword	0x8680
	.uleb128 0x47
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x48
	.uaword	.LVL325
	.uaword	0x8bc0
	.uleb128 0x47
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x32
	.byte	0x1
	.string	"IfxScuCcu_setSpbFrequency"
	.byte	0x1
	.uahalf	0x4b6
	.byte	0x1
	.uaword	0x2ed
	.uaword	.LFB229
	.uaword	.LFE229
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x8804
	.uleb128 0x41
	.string	"spbFreq"
	.byte	0x1
	.uahalf	0x4b6
	.uaword	0x2ed
	.uaword	.LLST89
	.uleb128 0x35
	.string	"l_EndInitPW"
	.byte	0x1
	.uahalf	0x4b9
	.uaword	0x2ad
	.uaword	.LLST90
	.uleb128 0x42
	.uaword	.LASF49
	.byte	0x1
	.uahalf	0x4ba
	.uaword	0x2ad
	.uaword	.LLST91
	.uleb128 0x42
	.uaword	.LASF38
	.byte	0x1
	.uahalf	0x4bb
	.uaword	0x4a59
	.uaword	.LLST92
	.uleb128 0x42
	.uaword	.LASF50
	.byte	0x1
	.uahalf	0x4bc
	.uaword	0x2ed
	.uaword	.LLST93
	.uleb128 0x35
	.string	"spbDiv"
	.byte	0x1
	.uahalf	0x4bd
	.uaword	0x2df
	.uaword	.LLST94
	.uleb128 0x3a
	.uaword	0x724a
	.uaword	.LBB115
	.uaword	.Ldebug_ranges0+0x1b0
	.byte	0x1
	.uahalf	0x4be
	.uaword	0x8766
	.uleb128 0x50
	.uaword	0x7267
	.byte	0x2
	.uleb128 0x51
	.uaword	0x725e
	.uaword	.LLST95
	.uleb128 0x2b
	.uaword	.Ldebug_ranges0+0x1b0
	.uleb128 0x23
	.uaword	0x7270
	.uaword	.LLST96
	.byte	0
	.byte	0
	.uleb128 0x37
	.uaword	.LVL332
	.uaword	0x77e9
	.uleb128 0x37
	.uaword	.LVL340
	.uaword	0x8b15
	.uleb128 0x37
	.uaword	.LVL342
	.uaword	0x8beb
	.uleb128 0x46
	.uaword	.LVL344
	.uaword	0x8b41
	.uaword	0x8795
	.uleb128 0x47
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x46
	.uaword	.LVL345
	.uaword	0x8b6b
	.uaword	0x87a9
	.uleb128 0x47
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x46
	.uaword	.LVL346
	.uaword	0x8b93
	.uaword	0x87bd
	.uleb128 0x47
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x46
	.uaword	.LVL348
	.uaword	0x8bc0
	.uaword	0x87d1
	.uleb128 0x47
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x46
	.uaword	.LVL349
	.uaword	0x8b41
	.uaword	0x87e5
	.uleb128 0x47
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x46
	.uaword	.LVL351
	.uaword	0x8b6b
	.uaword	0x87f9
	.uleb128 0x47
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.uaword	.LVL352
	.byte	0x1
	.uaword	0x7a40
	.byte	0
	.uleb128 0x32
	.byte	0x1
	.string	"IfxScuCcu_setSriFrequency"
	.byte	0x1
	.uahalf	0x4e3
	.byte	0x1
	.uaword	0x2ed
	.uaword	.LFB230
	.uaword	.LFE230
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x891b
	.uleb128 0x41
	.string	"sriFreq"
	.byte	0x1
	.uahalf	0x4e3
	.uaword	0x2ed
	.uaword	.LLST97
	.uleb128 0x52
	.string	"freq"
	.byte	0x1
	.uahalf	0x4e5
	.uaword	0x2ed
	.byte	0x4
	.uaword	0
	.uleb128 0x35
	.string	"source"
	.byte	0x1
	.uahalf	0x4e6
	.uaword	0x2ed
	.uaword	.LLST98
	.uleb128 0x42
	.uaword	.LASF38
	.byte	0x1
	.uahalf	0x4e7
	.uaword	0x4a59
	.uaword	.LLST99
	.uleb128 0x42
	.uaword	.LASF49
	.byte	0x1
	.uahalf	0x4e8
	.uaword	0x2ad
	.uaword	.LLST100
	.uleb128 0x35
	.string	"sriDiv"
	.byte	0x1
	.uahalf	0x4e9
	.uaword	0x2df
	.uaword	.LLST101
	.uleb128 0x3a
	.uaword	0x724a
	.uaword	.LBB119
	.uaword	.Ldebug_ranges0+0x1c8
	.byte	0x1
	.uahalf	0x4ea
	.uaword	0x88d6
	.uleb128 0x50
	.uaword	0x7267
	.byte	0x1
	.uleb128 0x51
	.uaword	0x725e
	.uaword	.LLST102
	.uleb128 0x2b
	.uaword	.Ldebug_ranges0+0x1c8
	.uleb128 0x23
	.uaword	0x7270
	.uaword	.LLST103
	.byte	0
	.byte	0
	.uleb128 0x37
	.uaword	.LVL354
	.uaword	0x77e9
	.uleb128 0x37
	.uaword	.LVL361
	.uaword	0x8beb
	.uleb128 0x46
	.uaword	.LVL363
	.uaword	0x8b93
	.uaword	0x88fc
	.uleb128 0x47
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x46
	.uaword	.LVL365
	.uaword	0x8bc0
	.uaword	0x8910
	.uleb128 0x47
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.uaword	.LVL367
	.byte	0x1
	.uaword	0x7b22
	.byte	0
	.uleb128 0x4b
	.byte	0x1
	.string	"IfxScuCcu_switchToBackupClock"
	.byte	0x1
	.uahalf	0x508
	.byte	0x1
	.uaword	.LFB231
	.uaword	.LFE231
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x8a55
	.uleb128 0x41
	.string	"cfg"
	.byte	0x1
	.uahalf	0x508
	.uaword	0x8060
	.uaword	.LLST104
	.uleb128 0x42
	.uaword	.LASF45
	.byte	0x1
	.uahalf	0x50a
	.uaword	0x2ad
	.uaword	.LLST105
	.uleb128 0x42
	.uaword	.LASF46
	.byte	0x1
	.uahalf	0x50a
	.uaword	0x2ad
	.uaword	.LLST106
	.uleb128 0x42
	.uaword	.LASF47
	.byte	0x1
	.uahalf	0x50b
	.uaword	0x1c2
	.uaword	.LLST107
	.uleb128 0x43
	.uaword	.LASF44
	.byte	0x1
	.uahalf	0x50c
	.uaword	0x282
	.byte	0x1
	.byte	0x59
	.uleb128 0x37
	.uaword	.LVL369
	.uaword	0x8beb
	.uleb128 0x37
	.uaword	.LVL371
	.uaword	0x8b15
	.uleb128 0x46
	.uaword	.LVL374
	.uaword	0x8b93
	.uaword	0x89c2
	.uleb128 0x47
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x46
	.uaword	.LVL376
	.uaword	0x8bc0
	.uaword	0x89d6
	.uleb128 0x47
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.uaword	.LVL377
	.uaword	0x783f
	.uleb128 0x46
	.uaword	.LVL378
	.uaword	0x8b41
	.uaword	0x89f3
	.uleb128 0x47
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x46
	.uaword	.LVL380
	.uaword	0x8b6b
	.uaword	0x8a07
	.uleb128 0x47
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x46
	.uaword	.LVL381
	.uaword	0x8b93
	.uaword	0x8a1b
	.uleb128 0x47
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x46
	.uaword	.LVL382
	.uaword	0x8bc0
	.uaword	0x8a2f
	.uleb128 0x47
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x46
	.uaword	.LVL383
	.uaword	0x8b41
	.uaword	0x8a43
	.uleb128 0x47
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x4e
	.uaword	.LVL384
	.byte	0x1
	.uaword	0x8b6b
	.uleb128 0x47
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x14
	.uaword	0x6eae
	.uaword	0x8a65
	.uleb128 0x15
	.uaword	0x6936
	.byte	0x2
	.byte	0
	.uleb128 0x29
	.string	"IfxScuCcu_aDefaultPllConfigSteps"
	.byte	0x1
	.byte	0x3d
	.uaword	0x8a93
	.byte	0x5
	.byte	0x3
	.uaword	IfxScuCcu_aDefaultPllConfigSteps
	.uleb128 0x2e
	.uaword	0x8a55
	.uleb128 0x29
	.string	"IfxScuCcu_xtalFrequency"
	.byte	0x1
	.byte	0x43
	.uaword	0x2df
	.byte	0x5
	.byte	0x3
	.uaword	IfxScuCcu_xtalFrequency
	.uleb128 0x53
	.string	"IfxScuCcu_defaultClockConfig"
	.byte	0x1
	.byte	0x49
	.uaword	0x8066
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	IfxScuCcu_defaultClockConfig
	.uleb128 0x53
	.string	"IfxScuCcu_defaultErayPllConfig"
	.byte	0x1
	.byte	0x54
	.uaword	0x81f7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	IfxScuCcu_defaultErayPllConfig
	.uleb128 0x54
	.byte	0x1
	.string	"IfxScuWdt_getCpuWatchdogPassword"
	.byte	0xb
	.uahalf	0x15d
	.byte	0x1
	.uaword	0x2ad
	.byte	0x1
	.uleb128 0x55
	.byte	0x1
	.string	"IfxScuWdt_clearCpuEndinit"
	.byte	0xb
	.byte	0xbb
	.byte	0x1
	.byte	0x1
	.uaword	0x8b6b
	.uleb128 0x56
	.uaword	0x2ad
	.byte	0
	.uleb128 0x55
	.byte	0x1
	.string	"IfxScuWdt_setCpuEndinit"
	.byte	0xb
	.byte	0xd1
	.byte	0x1
	.byte	0x1
	.uaword	0x8b93
	.uleb128 0x56
	.uaword	0x2ad
	.byte	0
	.uleb128 0x55
	.byte	0x1
	.string	"IfxScuWdt_clearSafetyEndinit"
	.byte	0xb
	.byte	0xc7
	.byte	0x1
	.byte	0x1
	.uaword	0x8bc0
	.uleb128 0x56
	.uaword	0x2ad
	.byte	0
	.uleb128 0x55
	.byte	0x1
	.string	"IfxScuWdt_setSafetyEndinit"
	.byte	0xb
	.byte	0xdb
	.byte	0x1
	.byte	0x1
	.uaword	0x8beb
	.uleb128 0x56
	.uaword	0x2ad
	.byte	0
	.uleb128 0x54
	.byte	0x1
	.string	"IfxScuWdt_getSafetyWatchdogPassword"
	.byte	0xb
	.uahalf	0x166
	.byte	0x1
	.uaword	0x2ad
	.byte	0x1
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
	.uleb128 0x4
	.byte	0x1
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
	.uleb128 0x4
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x17
	.byte	0x1
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
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x13
	.byte	0x1
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
	.uleb128 0x1b
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x30
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.byte	0
	.byte	0
	.uleb128 0x37
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x39
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x3a
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
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3d
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x3e
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
	.uleb128 0x3f
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
	.uleb128 0x40
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
	.uleb128 0x41
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
	.uleb128 0x42
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
	.uleb128 0x43
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x44
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
	.byte	0
	.byte	0
	.uleb128 0x45
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
	.uleb128 0x2116
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x46
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
	.uleb128 0x47
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x48
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x4a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4b
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
	.uleb128 0x4c
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x4d
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
	.uleb128 0x4e
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
	.uleb128 0x4f
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x50
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x51
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x52
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
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x53
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
	.uleb128 0x54
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x55
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
	.uleb128 0x56
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0-.Ltext0
	.uaword	.LVL1-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL2-.Ltext0
	.uaword	.LFE233-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL3-.Ltext0
	.uaword	.LVL21-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL21-.Ltext0
	.uaword	.LFE200-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL3-.Ltext0
	.uaword	.LVL25-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL25-.Ltext0
	.uaword	.LFE200-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL4-.Ltext0
	.uaword	.LVL5-.Ltext0
	.uahalf	0x2
	.byte	0x40
	.byte	0x9f
	.uaword	.LVL5-.Ltext0
	.uaword	.LVL18-.Ltext0
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL19-.Ltext0
	.uaword	.LVL20-.Ltext0
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL7-.Ltext0
	.uaword	.LVL14-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL19-.Ltext0
	.uaword	.LVL20-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL6-.Ltext0
	.uaword	.LVL16-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL19-.Ltext0
	.uaword	.LVL20-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL4-.Ltext0
	.uaword	.LVL5-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL5-.Ltext0
	.uaword	.LVL20-.Ltext0
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL20-.Ltext0
	.uaword	.LVL24-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL24-.Ltext0
	.uaword	.LVL25-.Ltext0
	.uahalf	0x3
	.byte	0x78
	.sleb128 1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL4-.Ltext0
	.uaword	.LVL5-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL5-.Ltext0
	.uaword	.LVL9-.Ltext0
	.uahalf	0x1
	.byte	0x50
	.uaword	.LVL12-.Ltext0
	.uaword	.LVL20-.Ltext0
	.uahalf	0x1
	.byte	0x50
	.uaword	.LVL20-.Ltext0
	.uaword	.LVL22-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL22-.Ltext0
	.uaword	.LVL25-.Ltext0
	.uahalf	0x3
	.byte	0x75
	.sleb128 1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL4-.Ltext0
	.uaword	.LVL5-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL5-.Ltext0
	.uaword	.LVL11-.Ltext0
	.uahalf	0x1
	.byte	0x51
	.uaword	.LVL12-.Ltext0
	.uaword	.LVL20-.Ltext0
	.uahalf	0x1
	.byte	0x51
	.uaword	.LVL20-.Ltext0
	.uaword	.LVL23-.Ltext0
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL23-.Ltext0
	.uaword	.LVL25-.Ltext0
	.uahalf	0x3
	.byte	0x79
	.sleb128 1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL5-.Ltext0
	.uaword	.LVL17-.Ltext0
	.uahalf	0x14
	.byte	0x7a
	.sleb128 0
	.byte	0xf7
	.uleb128 0x198
	.byte	0x79
	.sleb128 0
	.byte	0xf7
	.uleb128 0x198
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0xf7
	.uleb128 0x198
	.byte	0xf7
	.uleb128 0x1a8
	.byte	0x9f
	.uaword	.LVL17-.Ltext0
	.uaword	.LVL18-.Ltext0
	.uahalf	0x14
	.byte	0x7a
	.sleb128 0
	.byte	0xf7
	.uleb128 0x198
	.byte	0x79
	.sleb128 1
	.byte	0xf7
	.uleb128 0x198
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0xf7
	.uleb128 0x198
	.byte	0xf7
	.uleb128 0x1a8
	.byte	0x9f
	.uaword	.LVL19-.Ltext0
	.uaword	.LVL20-.Ltext0
	.uahalf	0x14
	.byte	0x7a
	.sleb128 0
	.byte	0xf7
	.uleb128 0x198
	.byte	0x79
	.sleb128 0
	.byte	0xf7
	.uleb128 0x198
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0xf7
	.uleb128 0x198
	.byte	0xf7
	.uleb128 0x1a8
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL6-.Ltext0
	.uaword	.LVL15-.Ltext0
	.uahalf	0x12
	.byte	0x78
	.sleb128 0
	.byte	0xf7
	.uleb128 0x198
	.byte	0xf7
	.uleb128 0x1a8
	.byte	0x74
	.sleb128 0
	.byte	0xf7
	.uleb128 0x198
	.byte	0xf7
	.uleb128 0x1a8
	.byte	0x1e
	.byte	0x9f
	.uaword	.LVL19-.Ltext0
	.uaword	.LVL20-.Ltext0
	.uahalf	0x12
	.byte	0x78
	.sleb128 0
	.byte	0xf7
	.uleb128 0x198
	.byte	0xf7
	.uleb128 0x1a8
	.byte	0x74
	.sleb128 0
	.byte	0xf7
	.uleb128 0x198
	.byte	0xf7
	.uleb128 0x1a8
	.byte	0x1e
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL4-.Ltext0
	.uaword	.LVL5-.Ltext0
	.uahalf	0xa
	.byte	0x9e
	.uleb128 0x8
	.uaxword	0xbebc200
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL8-.Ltext0
	.uaword	.LVL14-.Ltext0
	.uahalf	0x9
	.byte	0x72
	.sleb128 0
	.byte	0xf7
	.uleb128 0x198
	.byte	0xf7
	.uleb128 0x1a8
	.byte	0x9f
	.uaword	.LVL19-.Ltext0
	.uaword	.LVL20-.Ltext0
	.uahalf	0x9
	.byte	0x72
	.sleb128 0
	.byte	0xf7
	.uleb128 0x198
	.byte	0xf7
	.uleb128 0x1a8
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL30-.Ltext0
	.uaword	.LVL31-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL33-.Ltext0
	.uaword	.LVL34-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL36-.Ltext0
	.uaword	.LFE212-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL28-.Ltext0
	.uaword	.LVL29-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL32-.Ltext0
	.uaword	.LVL33-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL34-.Ltext0
	.uaword	.LVL35-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL39-.Ltext0
	.uaword	.LVL40-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL37-.Ltext0
	.uaword	.LVL38-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL45-.Ltext0
	.uaword	.LVL46-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL48-.Ltext0
	.uaword	.LVL49-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL43-.Ltext0
	.uaword	.LVL44-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL47-.Ltext0
	.uaword	.LVL48-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL49-.Ltext0
	.uaword	.LVL50-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL54-.Ltext0
	.uaword	.LVL55-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL52-.Ltext0
	.uaword	.LVL53-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL57-.Ltext0
	.uaword	.LVL60-.Ltext0
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL60-.Ltext0
	.uaword	.LVL61-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL61-.Ltext0
	.uaword	.LVL63-.Ltext0
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL64-.Ltext0
	.uaword	.LVL66-.Ltext0
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL58-.Ltext0
	.uaword	.LVL59-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL63-.Ltext0
	.uaword	.LVL64-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL69-.Ltext0
	.uaword	.LVL70-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL70-1-.Ltext0
	.uaword	.LVL71-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL71-.Ltext0
	.uaword	.LFE232-.Ltext0
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x18f
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL75-.Ltext0
	.uaword	.LVL76-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL77-.Ltext0
	.uaword	.LVL78-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL79-.Ltext0
	.uaword	.LVL80-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL81-.Ltext0
	.uaword	.LVL82-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL83-.Ltext0
	.uaword	.LFE204-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL73-.Ltext0
	.uaword	.LVL74-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL74-.Ltext0
	.uaword	.LFE204-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL85-.Ltext0
	.uaword	.LVL86-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL87-.Ltext0
	.uaword	.LVL88-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL89-.Ltext0
	.uaword	.LVL90-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL91-.Ltext0
	.uaword	.LVL92-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL93-.Ltext0
	.uaword	.LVL94-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL95-.Ltext0
	.uaword	.LFE208-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL84-.Ltext0
	.uaword	.LVL85-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL86-.Ltext0
	.uaword	.LVL87-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL88-.Ltext0
	.uaword	.LVL89-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL90-.Ltext0
	.uaword	.LVL91-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL92-.Ltext0
	.uaword	.LVL93-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL94-.Ltext0
	.uaword	.LVL95-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL98-.Ltext0
	.uaword	.LVL99-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL101-.Ltext0
	.uaword	.LFE202-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL96-.Ltext0
	.uaword	.LVL97-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL97-.Ltext0
	.uaword	.LFE202-.Ltext0
	.uahalf	0xb
	.byte	0x7f
	.sleb128 0
	.byte	0x3f
	.byte	0x1a
	.byte	0x9f
	.byte	0x9d
	.uleb128 0x4
	.uleb128 0
	.byte	0x9d
	.uleb128 0x1c
	.uleb128 0
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL105-.Ltext0
	.uaword	.LVL106-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL108-.Ltext0
	.uaword	.LFE203-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL102-.Ltext0
	.uaword	.LVL103-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL103-.Ltext0
	.uaword	.LVL104-.Ltext0
	.uahalf	0xe
	.byte	0x9d
	.uleb128 0x4
	.uleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x9
	.byte	0xfc
	.byte	0x24
	.byte	0x9f
	.byte	0x9d
	.uleb128 0x4
	.uleb128 0
	.byte	0x93
	.uleb128 0x3
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL112-.Ltext0
	.uaword	.LVL113-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL114-.Ltext0
	.uaword	.LVL115-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL116-.Ltext0
	.uaword	.LVL117-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL118-.Ltext0
	.uaword	.LVL119-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL120-.Ltext0
	.uaword	.LFE217-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST34:
	.uaword	.LVL110-.Ltext0
	.uaword	.LVL111-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL111-.Ltext0
	.uaword	.LFE217-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST35:
	.uaword	.LVL125-.Ltext0
	.uaword	.LVL126-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL127-.Ltext0
	.uaword	.LVL128-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL129-.Ltext0
	.uaword	.LFE209-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST36:
	.uaword	.LVL121-.Ltext0
	.uaword	.LVL123-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL123-.Ltext0
	.uaword	.LVL124-.Ltext0
	.uahalf	0xd
	.byte	0x7f
	.sleb128 0
	.byte	0xa
	.uahalf	0x3ff
	.byte	0x1a
	.byte	0x9f
	.byte	0x9d
	.uleb128 0xa
	.uleb128 0
	.byte	0x9d
	.uleb128 0x16
	.uleb128 0
	.uaword	0
	.uaword	0
.LLST37:
	.uaword	.LVL133-.Ltext0
	.uaword	.LVL134-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL135-.Ltext0
	.uaword	.LVL136-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL137-.Ltext0
	.uaword	.LVL138-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL139-.Ltext0
	.uaword	.LVL140-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL141-.Ltext0
	.uaword	.LFE218-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST38:
	.uaword	.LVL131-.Ltext0
	.uaword	.LVL132-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL132-.Ltext0
	.uaword	.LFE218-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST39:
	.uaword	.LVL142-.Ltext0
	.uaword	.LVL143-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL143-1-.Ltext0
	.uaword	.LVL144-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL144-.Ltext0
	.uaword	.LVL147-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL147-.Ltext0
	.uaword	.LVL148-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL148-.Ltext0
	.uaword	.LVL149-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL149-.Ltext0
	.uaword	.LVL150-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL150-.Ltext0
	.uaword	.LVL151-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL151-.Ltext0
	.uaword	.LVL152-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL152-.Ltext0
	.uaword	.LFE205-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST40:
	.uaword	.LVL143-.Ltext0
	.uaword	.LVL144-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL144-.Ltext0
	.uaword	.LVL145-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL147-.Ltext0
	.uaword	.LVL148-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL149-.Ltext0
	.uaword	.LVL150-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL150-.Ltext0
	.uaword	.LVL151-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL151-.Ltext0
	.uaword	.LVL152-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL152-.Ltext0
	.uaword	.LFE205-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST41:
	.uaword	.LVL155-.Ltext0
	.uaword	.LVL156-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL157-.Ltext0
	.uaword	.LFE206-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST42:
	.uaword	.LVL153-.Ltext0
	.uaword	.LVL154-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL154-.Ltext0
	.uaword	.LVL155-.Ltext0
	.uahalf	0x11
	.byte	0x9d
	.uleb128 0x14
	.uleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x9
	.byte	0xee
	.byte	0x24
	.byte	0x32
	.byte	0x25
	.byte	0x9f
	.byte	0x9d
	.uleb128 0x2
	.uleb128 0
	.byte	0x9d
	.uleb128 0xa
	.uleb128 0
	.uaword	.LVL156-.Ltext0
	.uaword	.LVL158-.Ltext0
	.uahalf	0x11
	.byte	0x9d
	.uleb128 0x14
	.uleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x9
	.byte	0xee
	.byte	0x24
	.byte	0x32
	.byte	0x25
	.byte	0x9f
	.byte	0x9d
	.uleb128 0x2
	.uleb128 0
	.byte	0x9d
	.uleb128 0xa
	.uleb128 0
	.uaword	0
	.uaword	0
.LLST43:
	.uaword	.LVL162-.Ltext0
	.uaword	.LVL163-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL164-.Ltext0
	.uaword	.LFE207-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST44:
	.uaword	.LVL160-.Ltext0
	.uaword	.LVL161-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL161-.Ltext0
	.uaword	.LVL162-.Ltext0
	.uahalf	0x10
	.byte	0x93
	.uleb128 0x3
	.byte	0x7f
	.sleb128 0
	.byte	0x9
	.byte	0xea
	.byte	0x24
	.byte	0x32
	.byte	0x25
	.byte	0x9f
	.byte	0x9d
	.uleb128 0x2
	.uleb128 0
	.byte	0x9d
	.uleb128 0x6
	.uleb128 0
	.uaword	.LVL163-.Ltext0
	.uaword	.LVL165-.Ltext0
	.uahalf	0x10
	.byte	0x93
	.uleb128 0x3
	.byte	0x7f
	.sleb128 0
	.byte	0x9
	.byte	0xea
	.byte	0x24
	.byte	0x32
	.byte	0x25
	.byte	0x9f
	.byte	0x9d
	.uleb128 0x2
	.uleb128 0
	.byte	0x9d
	.uleb128 0x6
	.uleb128 0
	.uaword	0
	.uaword	0
.LLST45:
	.uaword	.LVL167-.Ltext0
	.uaword	.LVL168-1-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL168-1-.Ltext0
	.uaword	.LFE219-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST46:
	.uaword	.LVL173-.Ltext0
	.uaword	.LVL234-.Ltext0
	.uahalf	0x1
	.byte	0x5c
	.uaword	0
	.uaword	0
.LLST47:
	.uaword	.LVL169-.Ltext0
	.uaword	.LVL170-1-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL170-1-.Ltext0
	.uaword	.LFE219-.Ltext0
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST48:
	.uaword	.LVL171-.Ltext0
	.uaword	.LVL172-1-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL172-1-.Ltext0
	.uaword	.LFE219-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST49:
	.uaword	.LVL167-.Ltext0
	.uaword	.LVL184-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL186-.Ltext0
	.uaword	.LVL188-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST50:
	.uaword	.LVL176-.Ltext0
	.uaword	.LVL180-.Ltext0
	.uahalf	0x4
	.byte	0xa
	.uahalf	0x280
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST51:
	.uaword	.LVL176-.Ltext0
	.uaword	.LVL181-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL181-.Ltext0
	.uaword	.LVL186-.Ltext0
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL186-.Ltext0
	.uaword	.LVL232-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST52:
	.uaword	.LVL178-.Ltext0
	.uaword	.LVL179-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL179-.Ltext0
	.uaword	.LVL183-.Ltext0
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL183-.Ltext0
	.uaword	.LVL184-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL186-.Ltext0
	.uaword	.LVL208-.Ltext0
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST53:
	.uaword	.LVL222-.Ltext0
	.uaword	.LVL224-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL225-.Ltext0
	.uaword	.LVL229-.Ltext0
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL229-.Ltext0
	.uaword	.LVL230-.Ltext0
	.uahalf	0x1
	.byte	0x5b
	.uaword	.LVL230-.Ltext0
	.uaword	.LVL231-.Ltext0
	.uahalf	0x3
	.byte	0x7b
	.sleb128 1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST54:
	.uaword	.LVL194-.Ltext0
	.uaword	.LVL195-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST55:
	.uaword	.LVL197-.Ltext0
	.uaword	.LVL198-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST56:
	.uaword	.LVL200-.Ltext0
	.uaword	.LVL201-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST57:
	.uaword	.LVL203-.Ltext0
	.uaword	.LVL204-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST58:
	.uaword	.LVL204-.Ltext0
	.uaword	.LVL205-.Ltext0
	.uahalf	0x9
	.byte	0x7f
	.sleb128 0
	.byte	0x20
	.byte	0x72
	.sleb128 0
	.byte	0x1a
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL205-.Ltext0
	.uaword	.LVL206-.Ltext0
	.uahalf	0x3
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL206-.Ltext0
	.uaword	.LVL207-.Ltext0
	.uahalf	0x3
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL207-.Ltext0
	.uaword	.LVL211-.Ltext0
	.uahalf	0x6
	.byte	0x8d
	.sleb128 24704
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL211-.Ltext0
	.uaword	.LVL212-.Ltext0
	.uahalf	0x8
	.byte	0x11
	.sleb128 -268214144
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST59:
	.uaword	.LVL207-.Ltext0
	.uaword	.LVL209-.Ltext0
	.uahalf	0x9
	.byte	0x7f
	.sleb128 0
	.byte	0x20
	.byte	0x72
	.sleb128 0
	.byte	0x1a
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL209-.Ltext0
	.uaword	.LVL210-.Ltext0
	.uahalf	0x3
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL210-.Ltext0
	.uaword	.LVL213-.Ltext0
	.uahalf	0x3
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL213-.Ltext0
	.uaword	.LVL216-.Ltext0
	.uahalf	0x8
	.byte	0x11
	.sleb128 -268214140
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST60:
	.uaword	.LVL213-.Ltext0
	.uaword	.LVL214-.Ltext0
	.uahalf	0x9
	.byte	0x7f
	.sleb128 0
	.byte	0x20
	.byte	0x72
	.sleb128 0
	.byte	0x1a
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL214-.Ltext0
	.uaword	.LVL215-.Ltext0
	.uahalf	0x3
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL215-.Ltext0
	.uaword	.LVL218-.Ltext0
	.uahalf	0x3
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST61:
	.uaword	.LVL218-.Ltext0
	.uaword	.LVL219-.Ltext0
	.uahalf	0x9
	.byte	0x7f
	.sleb128 0
	.byte	0x20
	.byte	0x72
	.sleb128 0
	.byte	0x1a
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL219-.Ltext0
	.uaword	.LVL220-.Ltext0
	.uahalf	0x3
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL220-.Ltext0
	.uaword	.LVL223-.Ltext0
	.uahalf	0x3
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST62:
	.uaword	.LVL238-.Ltext0
	.uaword	.LVL239-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST63:
	.uaword	.LVL240-.Ltext0
	.uaword	.LVL241-1-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL241-1-.Ltext0
	.uaword	.LFE221-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST64:
	.uaword	.LVL242-.Ltext0
	.uaword	.LVL243-1-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL243-1-.Ltext0
	.uaword	.LFE221-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST65:
	.uaword	.LVL244-.Ltext0
	.uaword	.LVL245-1-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL245-1-.Ltext0
	.uaword	.LFE221-.Ltext0
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST66:
	.uaword	.LVL250-.Ltext0
	.uaword	.LVL251-.Ltext0
	.uahalf	0x4
	.byte	0xa
	.uahalf	0xc34f
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST67:
	.uaword	.LVL257-.Ltext0
	.uaword	.LVL258-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL258-1-.Ltext0
	.uaword	.LFE224-.Ltext0
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST68:
	.uaword	.LVL259-.Ltext0
	.uaword	.LVL260-1-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL260-1-.Ltext0
	.uaword	.LFE224-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST69:
	.uaword	.LVL263-.Ltext0
	.uaword	.LVL264-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL264-1-.Ltext0
	.uaword	.LFE225-.Ltext0
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST70:
	.uaword	.LVL263-.Ltext0
	.uaword	.LVL264-1-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL264-1-.Ltext0
	.uaword	.LVL267-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL267-.Ltext0
	.uaword	.LVL275-.Ltext0
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x5
	.uleb128 0x18f
	.byte	0x9f
	.uaword	.LVL275-.Ltext0
	.uaword	.LVL279-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL279-.Ltext0
	.uaword	.LVL280-.Ltext0
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x5
	.uleb128 0x18f
	.byte	0x9f
	.uaword	.LVL280-.Ltext0
	.uaword	.LVL281-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL281-.Ltext0
	.uaword	.LVL282-.Ltext0
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x5
	.uleb128 0x18f
	.byte	0x9f
	.uaword	.LVL282-.Ltext0
	.uaword	.LVL283-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL283-.Ltext0
	.uaword	.LVL284-.Ltext0
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x5
	.uleb128 0x18f
	.byte	0x9f
	.uaword	.LVL284-.Ltext0
	.uaword	.LFE225-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST71:
	.uaword	.LVL270-.Ltext0
	.uaword	.LVL271-1-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL271-1-.Ltext0
	.uaword	.LVL272-.Ltext0
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL277-.Ltext0
	.uaword	.LVL278-1-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL278-1-.Ltext0
	.uaword	.LVL279-.Ltext0
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL280-.Ltext0
	.uaword	.LVL281-.Ltext0
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL282-.Ltext0
	.uaword	.LVL283-.Ltext0
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL284-.Ltext0
	.uaword	.LFE225-.Ltext0
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST72:
	.uaword	.LVL265-.Ltext0
	.uaword	.LVL266-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL266-.Ltext0
	.uaword	.LFE225-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST73:
	.uaword	.LVL268-.Ltext0
	.uaword	.LVL272-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL275-.Ltext0
	.uaword	.LVL279-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL280-.Ltext0
	.uaword	.LVL281-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL282-.Ltext0
	.uaword	.LVL283-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL284-.Ltext0
	.uaword	.LFE225-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST74:
	.uaword	.LVL286-.Ltext0
	.uaword	.LVL288-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL288-1-.Ltext0
	.uaword	.LVL295-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL295-.Ltext0
	.uaword	.LVL300-.Ltext0
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x18f
	.byte	0x9f
	.uaword	.LVL300-.Ltext0
	.uaword	.LFE226-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST75:
	.uaword	.LVL295-.Ltext0
	.uaword	.LVL296-1-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL296-1-.Ltext0
	.uaword	.LVL300-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST76:
	.uaword	.LVL287-.Ltext0
	.uaword	.LVL299-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL300-.Ltext0
	.uaword	.LFE226-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST77:
	.uaword	.LVL288-.Ltext0
	.uaword	.LVL289-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST78:
	.uaword	.LVL290-.Ltext0
	.uaword	.LVL291-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL292-.Ltext0
	.uaword	.LVL293-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL300-.Ltext0
	.uaword	.LFE226-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST79:
	.uaword	.LVL290-.Ltext0
	.uaword	.LVL291-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST80:
	.uaword	.LVL291-.Ltext0
	.uaword	.LVL292-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL300-.Ltext0
	.uaword	.LFE226-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST81:
	.uaword	.LVL301-.Ltext0
	.uaword	.LVL302-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL302-1-.Ltext0
	.uaword	.LVL307-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL307-.Ltext0
	.uaword	.LFE227-.Ltext0
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x18f
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST82:
	.uaword	.LVL303-.Ltext0
	.uaword	.LVL304-1-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL304-1-.Ltext0
	.uaword	.LVL312-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST83:
	.uaword	.LVL305-.Ltext0
	.uaword	.LVL306-1-.Ltext0
	.uahalf	0x16
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x18f
	.byte	0xf5
	.uleb128 0x8
	.uleb128 0x18f
	.byte	0x1b
	.byte	0xf4
	.uleb128 0x18f
	.byte	0x4
	.uaword	0x3f800000
	.byte	0x1c
	.byte	0xf7
	.uleb128 0x198
	.byte	0x9f
	.uaword	.LVL306-1-.Ltext0
	.uaword	.LVL307-.Ltext0
	.uahalf	0x16
	.byte	0xf5
	.uleb128 0x9
	.uleb128 0x18f
	.byte	0xf5
	.uleb128 0x8
	.uleb128 0x18f
	.byte	0x1b
	.byte	0xf4
	.uleb128 0x18f
	.byte	0x4
	.uaword	0x3f800000
	.byte	0x1c
	.byte	0xf7
	.uleb128 0x198
	.byte	0x9f
	.uaword	.LVL307-.Ltext0
	.uaword	.LVL308-.Ltext0
	.uahalf	0x18
	.byte	0xf5
	.uleb128 0x9
	.uleb128 0x18f
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x18f
	.byte	0x1b
	.byte	0xf4
	.uleb128 0x18f
	.byte	0x4
	.uaword	0x3f800000
	.byte	0x1c
	.byte	0xf7
	.uleb128 0x198
	.byte	0x9f
	.uaword	.LVL308-.Ltext0
	.uaword	.LVL309-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL309-.Ltext0
	.uaword	.LFE227-.Ltext0
	.uahalf	0x18
	.byte	0xf5
	.uleb128 0x9
	.uleb128 0x18f
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x18f
	.byte	0x1b
	.byte	0xf4
	.uleb128 0x18f
	.byte	0x4
	.uaword	0x3f800000
	.byte	0x1c
	.byte	0xf7
	.uleb128 0x198
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST84:
	.uaword	.LVL313-.Ltext0
	.uaword	.LVL314-.Ltext0
	.uahalf	0x13
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x18f
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x23
	.uleb128 0x1
	.byte	0xf7
	.uleb128 0x1c2
	.byte	0xf7
	.uleb128 0x18f
	.byte	0x1b
	.byte	0x9f
	.uaword	.LVL314-.Ltext0
	.uaword	.LVL315-.Ltext0
	.uahalf	0x13
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x18f
	.byte	0x7f
	.sleb128 -1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x23
	.uleb128 0x1
	.byte	0xf7
	.uleb128 0x1c2
	.byte	0xf7
	.uleb128 0x18f
	.byte	0x1b
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST85:
	.uaword	.LVL316-.Ltext0
	.uaword	.LVL317-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL317-1-.Ltext0
	.uaword	.LVL322-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL322-.Ltext0
	.uaword	.LFE228-.Ltext0
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x18f
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST86:
	.uaword	.LVL318-.Ltext0
	.uaword	.LVL319-1-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL319-1-.Ltext0
	.uaword	.LVL327-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST87:
	.uaword	.LVL320-.Ltext0
	.uaword	.LVL321-1-.Ltext0
	.uahalf	0x16
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x18f
	.byte	0xf5
	.uleb128 0x8
	.uleb128 0x18f
	.byte	0x1b
	.byte	0xf4
	.uleb128 0x18f
	.byte	0x4
	.uaword	0x3f800000
	.byte	0x1c
	.byte	0xf7
	.uleb128 0x198
	.byte	0x9f
	.uaword	.LVL321-1-.Ltext0
	.uaword	.LVL322-.Ltext0
	.uahalf	0x16
	.byte	0xf5
	.uleb128 0x9
	.uleb128 0x18f
	.byte	0xf5
	.uleb128 0x8
	.uleb128 0x18f
	.byte	0x1b
	.byte	0xf4
	.uleb128 0x18f
	.byte	0x4
	.uaword	0x3f800000
	.byte	0x1c
	.byte	0xf7
	.uleb128 0x198
	.byte	0x9f
	.uaword	.LVL322-.Ltext0
	.uaword	.LVL323-.Ltext0
	.uahalf	0x18
	.byte	0xf5
	.uleb128 0x9
	.uleb128 0x18f
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x18f
	.byte	0x1b
	.byte	0xf4
	.uleb128 0x18f
	.byte	0x4
	.uaword	0x3f800000
	.byte	0x1c
	.byte	0xf7
	.uleb128 0x198
	.byte	0x9f
	.uaword	.LVL323-.Ltext0
	.uaword	.LVL324-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL324-.Ltext0
	.uaword	.LFE228-.Ltext0
	.uahalf	0x18
	.byte	0xf5
	.uleb128 0x9
	.uleb128 0x18f
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x18f
	.byte	0x1b
	.byte	0xf4
	.uleb128 0x18f
	.byte	0x4
	.uaword	0x3f800000
	.byte	0x1c
	.byte	0xf7
	.uleb128 0x198
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST88:
	.uaword	.LVL328-.Ltext0
	.uaword	.LVL329-.Ltext0
	.uahalf	0x13
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x18f
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x23
	.uleb128 0x1
	.byte	0xf7
	.uleb128 0x1c2
	.byte	0xf7
	.uleb128 0x18f
	.byte	0x1b
	.byte	0x9f
	.uaword	.LVL329-.Ltext0
	.uaword	.LVL330-.Ltext0
	.uahalf	0x13
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x18f
	.byte	0x7f
	.sleb128 -1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x23
	.uleb128 0x1
	.byte	0xf7
	.uleb128 0x1c2
	.byte	0xf7
	.uleb128 0x18f
	.byte	0x1b
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST89:
	.uaword	.LVL331-.Ltext0
	.uaword	.LVL332-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL332-1-.Ltext0
	.uaword	.LVL334-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL334-.Ltext0
	.uaword	.LFE229-.Ltext0
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x18f
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST90:
	.uaword	.LVL341-.Ltext0
	.uaword	.LVL342-1-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL342-1-.Ltext0
	.uaword	.LVL352-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST91:
	.uaword	.LVL343-.Ltext0
	.uaword	.LVL344-1-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL344-1-.Ltext0
	.uaword	.LVL352-.Ltext0
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST92:
	.uaword	.LVL347-.Ltext0
	.uaword	.LVL350-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST93:
	.uaword	.LVL332-.Ltext0
	.uaword	.LVL333-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST94:
	.uaword	.LVL335-.Ltext0
	.uaword	.LVL336-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL338-.Ltext0
	.uaword	.LVL339-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL352-.Ltext0
	.uaword	.LFE229-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST95:
	.uaword	.LVL335-.Ltext0
	.uaword	.LVL337-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST96:
	.uaword	.LVL336-.Ltext0
	.uaword	.LVL338-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL352-.Ltext0
	.uaword	.LFE229-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST97:
	.uaword	.LVL353-.Ltext0
	.uaword	.LVL354-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL354-1-.Ltext0
	.uaword	.LVL356-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL356-.Ltext0
	.uaword	.LFE230-.Ltext0
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x18f
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST98:
	.uaword	.LVL354-.Ltext0
	.uaword	.LVL355-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST99:
	.uaword	.LVL364-.Ltext0
	.uaword	.LVL366-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST100:
	.uaword	.LVL362-.Ltext0
	.uaword	.LVL363-1-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL363-1-.Ltext0
	.uaword	.LVL367-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST101:
	.uaword	.LVL357-.Ltext0
	.uaword	.LVL358-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL359-.Ltext0
	.uaword	.LVL360-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL367-.Ltext0
	.uaword	.LFE230-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST102:
	.uaword	.LVL357-.Ltext0
	.uaword	.LVL358-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST103:
	.uaword	.LVL358-.Ltext0
	.uaword	.LVL359-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL367-.Ltext0
	.uaword	.LFE230-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST104:
	.uaword	.LVL368-.Ltext0
	.uaword	.LVL369-1-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL369-1-.Ltext0
	.uaword	.LFE231-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST105:
	.uaword	.LVL372-.Ltext0
	.uaword	.LVL373-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL373-.Ltext0
	.uaword	.LFE231-.Ltext0
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST106:
	.uaword	.LVL370-.Ltext0
	.uaword	.LVL371-1-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL371-1-.Ltext0
	.uaword	.LFE231-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST107:
	.uaword	.LVL372-.Ltext0
	.uaword	.LVL375-.Ltext0
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL375-.Ltext0
	.uaword	.LVL377-.Ltext0
	.uahalf	0x3
	.byte	0x79
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL377-.Ltext0
	.uaword	.LVL379-.Ltext0
	.uahalf	0x1
	.byte	0x59
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
	.uaword	.LBB32-.Ltext0
	.uaword	.LBE32-.Ltext0
	.uaword	.LBB35-.Ltext0
	.uaword	.LBE35-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB33-.Ltext0
	.uaword	.LBE33-.Ltext0
	.uaword	.LBB34-.Ltext0
	.uaword	.LBE34-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB36-.Ltext0
	.uaword	.LBE36-.Ltext0
	.uaword	.LBB39-.Ltext0
	.uaword	.LBE39-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB40-.Ltext0
	.uaword	.LBE40-.Ltext0
	.uaword	.LBB43-.Ltext0
	.uaword	.LBE43-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB50-.Ltext0
	.uaword	.LBE50-.Ltext0
	.uaword	.LBB53-.Ltext0
	.uaword	.LBE53-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB56-.Ltext0
	.uaword	.LBE56-.Ltext0
	.uaword	.LBB59-.Ltext0
	.uaword	.LBE59-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB64-.Ltext0
	.uaword	.LBE64-.Ltext0
	.uaword	.LBB67-.Ltext0
	.uaword	.LBE67-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB79-.Ltext0
	.uaword	.LBE79-.Ltext0
	.uaword	.LBB83-.Ltext0
	.uaword	.LBE83-.Ltext0
	.uaword	.LBB106-.Ltext0
	.uaword	.LBE106-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB85-.Ltext0
	.uaword	.LBE85-.Ltext0
	.uaword	.LBB86-.Ltext0
	.uaword	.LBE86-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB87-.Ltext0
	.uaword	.LBE87-.Ltext0
	.uaword	.LBB88-.Ltext0
	.uaword	.LBE88-.Ltext0
	.uaword	.LBB89-.Ltext0
	.uaword	.LBE89-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB90-.Ltext0
	.uaword	.LBE90-.Ltext0
	.uaword	.LBB91-.Ltext0
	.uaword	.LBE91-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB92-.Ltext0
	.uaword	.LBE92-.Ltext0
	.uaword	.LBB94-.Ltext0
	.uaword	.LBE94-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB93-.Ltext0
	.uaword	.LBE93-.Ltext0
	.uaword	.LBB95-.Ltext0
	.uaword	.LBE95-.Ltext0
	.uaword	.LBB96-.Ltext0
	.uaword	.LBE96-.Ltext0
	.uaword	.LBB98-.Ltext0
	.uaword	.LBE98-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB97-.Ltext0
	.uaword	.LBE97-.Ltext0
	.uaword	.LBB99-.Ltext0
	.uaword	.LBE99-.Ltext0
	.uaword	.LBB100-.Ltext0
	.uaword	.LBE100-.Ltext0
	.uaword	.LBB102-.Ltext0
	.uaword	.LBE102-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB101-.Ltext0
	.uaword	.LBE101-.Ltext0
	.uaword	.LBB103-.Ltext0
	.uaword	.LBE103-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB104-.Ltext0
	.uaword	.LBE104-.Ltext0
	.uaword	.LBB105-.Ltext0
	.uaword	.LBE105-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB115-.Ltext0
	.uaword	.LBE115-.Ltext0
	.uaword	.LBB118-.Ltext0
	.uaword	.LBE118-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB119-.Ltext0
	.uaword	.LBE119-.Ltext0
	.uaword	.LBB122-.Ltext0
	.uaword	.LBE122-.Ltext0
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF33:
	.string	"PINBWKEN"
.LASF48:
	.string	"password"
.LASF41:
	.string	"frequency"
.LASF38:
	.string	"ccucon0"
.LASF46:
	.string	"endinitSfty_pw"
.LASF31:
	.string	"ESR1WKEN"
.LASF35:
	.string	"ESR0T"
.LASF10:
	.string	"reserved_10"
.LASF22:
	.string	"reserved_11"
.LASF25:
	.string	"reserved_12"
.LASF37:
	.string	"waitTime"
.LASF20:
	.string	"reserved_14"
.LASF14:
	.string	"reserved_15"
.LASF12:
	.string	"reserved_16"
.LASF24:
	.string	"reserved_17"
.LASF16:
	.string	"reserved_18"
.LASF27:
	.string	"reserved_19"
.LASF32:
	.string	"PINAWKEN"
.LASF39:
	.string	"ccucon1"
.LASF44:
	.string	"smuTrapEnable"
.LASF36:
	.string	"ESR1T"
.LASF26:
	.string	"reserved_21"
.LASF2:
	.string	"reserved_22"
.LASF15:
	.string	"reserved_23"
.LASF4:
	.string	"reserved_24"
.LASF11:
	.string	"reserved_26"
.LASF17:
	.string	"reserved_28"
.LASF21:
	.string	"reserved_29"
.LASF42:
	.string	"sourceFrequency"
.LASF30:
	.string	"OSCDISCDIS"
.LASF50:
	.string	"inputFreq"
.LASF40:
	.string	"pllInitialStep"
.LASF5:
	.string	"SLCK"
.LASF47:
	.string	"pllStepsCount"
.LASF0:
	.string	"reserved_0"
.LASF23:
	.string	"reserved_1"
.LASF9:
	.string	"reserved_2"
.LASF1:
	.string	"reserved_3"
.LASF3:
	.string	"reserved_4"
.LASF6:
	.string	"reserved_6"
.LASF13:
	.string	"reserved_7"
.LASF7:
	.string	"reserved_8"
.LASF18:
	.string	"reserved_9"
.LASF29:
	.string	"CLRFINDIS"
.LASF19:
	.string	"reserved_30"
.LASF8:
	.string	"reserved_31"
.LASF45:
	.string	"endinit_pw"
.LASF28:
	.string	"SETFINDIS"
.LASF34:
	.string	"ESR0TRIST"
.LASF43:
	.string	"status"
.LASF49:
	.string	"l_SEndInitPW"
	.extern	IfxScuWdt_setSafetyEndinit,STT_FUNC,0
	.extern	IfxScuWdt_clearSafetyEndinit,STT_FUNC,0
	.extern	IfxScuWdt_setCpuEndinit,STT_FUNC,0
	.extern	IfxScuWdt_clearCpuEndinit,STT_FUNC,0
	.extern	IfxScuWdt_getSafetyWatchdogPassword,STT_FUNC,0
	.extern	IfxScuWdt_getCpuWatchdogPassword,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.1.0-infineon-2.0-df254e8) 4.9.4 build on 2018-04-18"
