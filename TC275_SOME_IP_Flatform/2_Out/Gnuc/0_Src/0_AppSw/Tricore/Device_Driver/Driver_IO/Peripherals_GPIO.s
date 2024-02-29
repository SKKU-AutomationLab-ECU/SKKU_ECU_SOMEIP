	.file	"Peripherals_GPIO.c"
.section .text,"ax",@progbits
.Ltext0:
	.align 1
	.global	setPort_GPIO_LED
	.type	setPort_GPIO_LED, @function
setPort_GPIO_LED:
.LFB196:
	.file 1 "0_Src/0_AppSw/Tricore/Device_Driver/Driver_IO/Peripherals_GPIO.c"
	.loc 1 30 0
	.loc 1 36 0
	movh.a	%a2, 61444
	lea	%a2, [%a2] -19712
	ld.w	%d15, [%a2] 16
	.loc 1 40 0
	movh.a	%a15, 61444
	.loc 1 36 0
	andn	%d15, %d15, ~(-249)
	or	%d15, %d15, 128
	.loc 1 40 0
	lea	%a15, [%a15] -15872
	.loc 1 36 0
	st.w	[%a2] 16, %d15
	.loc 1 37 0
	ld.w	%d15, [%a2] 16
	insert	%d15, %d15, 0, 11, 5
	insert	%d15, %d15, 15, 15, 1
	st.w	[%a2] 16, %d15
	.loc 1 38 0
	ld.w	%d15, [%a2] 16
	insert	%d15, %d15, 0, 19, 5
	insert	%d15, %d15, 15, 23, 1
	st.w	[%a2] 16, %d15
	.loc 1 39 0
	ld.w	%d15, [%a2] 16
	insert	%d15, %d15, 0, 27, 5
	insert	%d15, %d15, 15, 31, 1
	st.w	[%a2] 16, %d15
	.loc 1 40 0
	ld.w	%d15, [%a15] 16
	andn	%d15, %d15, ~(-249)
	or	%d15, %d15, 128
	st.w	[%a15] 16, %d15
	.loc 1 41 0
	ld.w	%d15, [%a15] 16
	insert	%d15, %d15, 0, 11, 5
	insert	%d15, %d15, 15, 15, 1
	st.w	[%a15] 16, %d15
	.loc 1 42 0
	ld.w	%d15, [%a15] 16
	insert	%d15, %d15, 0, 19, 5
	insert	%d15, %d15, 15, 23, 1
	st.w	[%a15] 16, %d15
	.loc 1 43 0
	ld.w	%d15, [%a15] 16
	insert	%d15, %d15, 0, 27, 5
	insert	%d15, %d15, 15, 31, 1
	st.w	[%a15] 16, %d15
	.loc 1 46 0
	ld.w	%d15, [%a2]0
	or	%d15, %d15, 1
	st.w	[%a2]0, %d15
	.loc 1 47 0
	ld.w	%d15, [%a2]0
	or	%d15, %d15, 2
	st.w	[%a2]0, %d15
	.loc 1 48 0
	ld.w	%d15, [%a2]0
	or	%d15, %d15, 4
	st.w	[%a2]0, %d15
	.loc 1 49 0
	ld.w	%d15, [%a2]0
	or	%d15, %d15, 8
	st.w	[%a2]0, %d15
	.loc 1 50 0
	ld.w	%d15, [%a15]0
	or	%d15, %d15, 1
	st.w	[%a15]0, %d15
	.loc 1 51 0
	ld.w	%d15, [%a15]0
	or	%d15, %d15, 2
	st.w	[%a15]0, %d15
	.loc 1 52 0
	ld.w	%d15, [%a15]0
	or	%d15, %d15, 4
	st.w	[%a15]0, %d15
	.loc 1 53 0
	ld.w	%d15, [%a15]0
	or	%d15, %d15, 8
	st.w	[%a15]0, %d15
	.loc 1 56 0
	mov	%d15, -1
	movh.a	%a15, hi:mask_LED
	st.b	[%a15] lo:mask_LED, %d15
	ret
.LFE196:
	.size	setPort_GPIO_LED, .-setPort_GPIO_LED
	.align 1
	.global	setByte_GPIO_LED
	.type	setByte_GPIO_LED, @function
setByte_GPIO_LED:
.LFB197:
	.loc 1 62 0
.LVL0:
	.loc 1 71 0
	and	%d15, %d4, 15
	.loc 1 68 0
	movh.a	%a15, hi:mask_LED
	st.b	[%a15] lo:mask_LED, %d4
	.loc 1 71 0
	movh.a	%a15, 61444
	lea	%a15, [%a15] -19712
	st.w	[%a15]0, %d15
	.loc 1 72 0
	sh	%d15, %d4, -4
	movh.a	%a15, 61444
	lea	%a15, [%a15] -15872
	.loc 1 62 0
	mov	%d2, %d4
	.loc 1 72 0
	st.w	[%a15]0, %d15
	.loc 1 76 0
	ret
.LFE197:
	.size	setByte_GPIO_LED, .-setByte_GPIO_LED
	.align 1
	.global	setBit_GPIO_LED
	.type	setBit_GPIO_LED, @function
setBit_GPIO_LED:
.LFB198:
	.loc 1 81 0
.LVL1:
	.loc 1 90 0
	mov	%d2, -1
	.loc 1 87 0
	jge.u	%d4, 8, .L4
	.loc 1 94 0
	mov	%d15, 1
	sh	%d15, %d15, %d4
.LVL2:
	.loc 1 97 0
	jz	%d5, .L5
	jne	%d5, 1, .L13
	.loc 1 105 0
	movh.a	%a15, hi:mask_LED
	ld.bu	%d2, [%a15] lo:mask_LED
	or	%d2, %d15
	and	%d2, %d2, 255
	st.b	[%a15] lo:mask_LED, %d2
.L7:
	.loc 1 115 0
	and	%d15, %d2, 15
.LVL3:
	movh.a	%a15, 61444
	lea	%a15, [%a15] -19712
	st.w	[%a15]0, %d15
	.loc 1 116 0
	sh	%d15, %d2, -4
	movh.a	%a15, 61444
	lea	%a15, [%a15] -15872
	st.w	[%a15]0, %d15
	.loc 1 119 0
	ret
.LVL4:
.L13:
	.loc 1 110 0
	mov	%d2, -2
.LVL5:
.L4:
	.loc 1 120 0
	ret
.LVL6:
.L5:
	.loc 1 101 0
	movh.a	%a15, hi:mask_LED
	ld.bu	%d2, [%a15] lo:mask_LED
	andn	%d2, %d2, %d15
	st.b	[%a15] lo:mask_LED, %d2
	.loc 1 102 0
	j	.L7
.LFE198:
	.size	setBit_GPIO_LED, .-setBit_GPIO_LED
	.align 1
	.global	getState_LED
	.type	getState_LED, @function
getState_LED:
.LFB199:
	.loc 1 125 0
	.loc 1 130 0
	movh.a	%a15, hi:mask_LED
	ld.bu	%d2, [%a15] lo:mask_LED
	ret
.LFE199:
	.size	getState_LED, .-getState_LED
	.align 1
	.global	setPort_GPIO_PBSW
	.type	setPort_GPIO_PBSW, @function
setPort_GPIO_PBSW:
.LFB200:
	.loc 1 166 0
	.loc 1 172 0
	movh.a	%a15, 61444
	lea	%a15, [%a15] -24576
	ld.w	%d15, [%a15] 16
	andn	%d15, %d15, ~(-249)
	st.w	[%a15] 16, %d15
	.loc 1 173 0
	ld.w	%d15, [%a15] 16
	insert	%d15, %d15, 0, 11, 5
	st.w	[%a15] 16, %d15
	.loc 1 174 0
	ld.w	%d15, [%a15] 20
	insert	%d15, %d15, 0, 19, 5
	st.w	[%a15] 20, %d15
	.loc 1 175 0
	ld.w	%d15, [%a15] 20
	insert	%d15, %d15, 0, 11, 5
	st.w	[%a15] 20, %d15
	ret
.LFE200:
	.size	setPort_GPIO_PBSW, .-setPort_GPIO_PBSW
	.align 1
	.global	getState_PBSW
	.type	getState_PBSW, @function
getState_PBSW:
.LFB201:
	.loc 1 181 0
.LVL7:
	.loc 1 244 0
	mov	%d2, -1
	.loc 1 188 0
	jge.u	%d4, 4, .L17
	movh.a	%a15, hi:.L19
	lea	%a15, [%a15] lo:.L19
	addsc.a	%a15, %a15, %d4, 2
	ji	%a15
	.align 2
	.align 2
.L19:
	.code32
	j	.L18
	.code32
	j	.L20
	.code32
	j	.L21
	.code32
	j	.L22
.L22:
	.loc 1 231 0
	movh.a	%a15, 61444
	lea	%a15, [%a15] -24576
	ld.w	%d15, [%a15] 36
	.loc 1 233 0
	movh.a	%a15, hi:mask_PBSW
	.loc 1 231 0
	jnz.t	%d15, 4, .L28
	.loc 1 238 0
	ld.bu	%d15, [%a15] lo:mask_PBSW
	.loc 1 239 0
	mov	%d2, 0
	.loc 1 238 0
	andn	%d15, %d15, ~(-9)
	st.b	[%a15] lo:mask_PBSW, %d15
.L17:
	.loc 1 250 0
	ret
.L21:
	.loc 1 218 0
	movh.a	%a15, 61444
	lea	%a15, [%a15] -24576
	ld.w	%d15, [%a15] 36
	.loc 1 220 0
	movh.a	%a15, hi:mask_PBSW
	.loc 1 218 0
	jz.t	%d15, 6, .L25
	.loc 1 220 0
	ld.bu	%d15, [%a15] lo:mask_PBSW
	.loc 1 221 0
	mov	%d2, 1
	.loc 1 220 0
	or	%d15, %d15, 4
	st.b	[%a15] lo:mask_PBSW, %d15
	.loc 1 221 0
	ret
.L20:
	.loc 1 205 0
	movh.a	%a15, 61444
	lea	%a15, [%a15] -24576
	ld.w	%d15, [%a15] 36
	.loc 1 207 0
	movh.a	%a15, hi:mask_PBSW
	.loc 1 205 0
	jz.t	%d15, 1, .L24
	.loc 1 207 0
	ld.bu	%d15, [%a15] lo:mask_PBSW
	.loc 1 208 0
	mov	%d2, 1
	.loc 1 207 0
	or	%d15, %d15, 2
	st.b	[%a15] lo:mask_PBSW, %d15
	.loc 1 208 0
	ret
.L18:
	.loc 1 192 0
	movh.a	%a15, 61444
	lea	%a15, [%a15] -24576
	ld.w	%d15, [%a15] 36
	.loc 1 194 0
	movh.a	%a15, hi:mask_PBSW
	.loc 1 192 0
	jz.t	%d15, 0, .L23
	.loc 1 194 0
	ld.bu	%d15, [%a15] lo:mask_PBSW
	.loc 1 195 0
	mov	%d2, 1
	.loc 1 194 0
	or	%d15, %d15, 1
	st.b	[%a15] lo:mask_PBSW, %d15
	.loc 1 195 0
	ret
.L23:
	.loc 1 199 0
	ld.bu	%d15, [%a15] lo:mask_PBSW
	.loc 1 200 0
	mov	%d2, 0
	.loc 1 199 0
	andn	%d15, %d15, ~(-2)
	st.b	[%a15] lo:mask_PBSW, %d15
	.loc 1 200 0
	ret
.L24:
	.loc 1 212 0
	ld.bu	%d15, [%a15] lo:mask_PBSW
	.loc 1 213 0
	mov	%d2, 0
	.loc 1 212 0
	andn	%d15, %d15, ~(-3)
	st.b	[%a15] lo:mask_PBSW, %d15
	.loc 1 213 0
	ret
.L25:
	.loc 1 225 0
	ld.bu	%d15, [%a15] lo:mask_PBSW
	.loc 1 226 0
	mov	%d2, 0
	.loc 1 225 0
	andn	%d15, %d15, ~(-5)
	st.b	[%a15] lo:mask_PBSW, %d15
	.loc 1 226 0
	ret
.L28:
	.loc 1 233 0
	ld.bu	%d15, [%a15] lo:mask_PBSW
	.loc 1 234 0
	mov	%d2, 1
	.loc 1 233 0
	or	%d15, %d15, 8
	st.b	[%a15] lo:mask_PBSW, %d15
	.loc 1 234 0
	ret
.LFE201:
	.size	getState_PBSW, .-getState_PBSW
	.align 1
	.global	config_chip_select_IO
	.type	config_chip_select_IO, @function
config_chip_select_IO:
.LFB202:
	.loc 1 293 0
	.loc 1 294 0
	movh.a	%a15, 61444
	lea	%a15, [%a15] -16384
	ld.w	%d15, [%a15] 16
	insert	%d15, %d15, 0, 27, 5
	insert	%d15, %d15, 15, 31, 1
	st.w	[%a15] 16, %d15
	ret
.LFE202:
	.size	config_chip_select_IO, .-config_chip_select_IO
	.align 1
	.global	setWord_GPIO_LCD_d
	.type	setWord_GPIO_LCD_d, @function
setWord_GPIO_LCD_d:
.LFB205:
	.loc 1 417 0
.LVL8:
	.loc 1 423 0
	movh.a	%a15, hi:mask_LCD_d
	st.h	[%a15] lo:mask_LCD_d, %d4
	.loc 1 426 0
	movh.a	%a15, 61444
	lea	%a15, [%a15] -11520
	st.w	[%a15]0, %d4
	.loc 1 427 0
	movh.a	%a15, 61444
	lea	%a15, [%a15] -16384
	ld.w	%d15, [%a15]0
	.loc 1 417 0
	mov	%d2, %d4
	.loc 1 427 0
	jz.t	%d4, 14, .L31
	.loc 1 427 0 is_stmt 0 discriminator 1
	or	%d15, %d15, 1
	st.w	[%a15]0, %d15
	.loc 1 428 0 is_stmt 1 discriminator 1
	extr	%d15, %d2, 0, 16
	movh.a	%a15, 61444
	lea	%a15, [%a15] -16384
	jltz	%d15, .L35
.L33:
	.loc 1 428 0 is_stmt 0 discriminator 2
	ld.w	%d15, [%a15]0
	andn	%d15, %d15, ~(-3)
	st.w	[%a15]0, %d15
	.loc 1 432 0 is_stmt 1 discriminator 2
	ret
.L31:
	.loc 1 427 0 discriminator 2
	andn	%d15, %d15, ~(-2)
	st.w	[%a15]0, %d15
	.loc 1 428 0 discriminator 2
	extr	%d15, %d2, 0, 16
	movh.a	%a15, 61444
	lea	%a15, [%a15] -16384
	jgez	%d15, .L33
.L35:
	.loc 1 428 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a15]0
	or	%d15, %d15, 2
	st.w	[%a15]0, %d15
	ret
.LFE205:
	.size	setWord_GPIO_LCD_d, .-setWord_GPIO_LCD_d
	.align 1
	.global	setBit_GPIO_LCD_d
	.type	setBit_GPIO_LCD_d, @function
setBit_GPIO_LCD_d:
.LFB206:
	.loc 1 437 0 is_stmt 1
.LVL9:
	.loc 1 443 0
	ge.u	%d15, %d4, 16
	.loc 1 446 0
	mov	%d2, -1
	.loc 1 443 0
	jnz	%d15, .L37
	.loc 1 450 0
	mov	%d15, 1
	sh	%d15, %d15, %d4
.LVL10:
	.loc 1 453 0
	jz	%d5, .L38
	jne	%d5, 1, .L49
	.loc 1 461 0
	movh.a	%a15, hi:mask_LCD_d
	ld.h	%d2, [%a15] lo:mask_LCD_d
	or	%d2, %d15
	extr.u	%d2, %d2, 0, 16
	st.h	[%a15] lo:mask_LCD_d, %d2
.L40:
	.loc 1 471 0
	movh.a	%a15, 61444
	lea	%a15, [%a15] -11520
	st.w	[%a15]0, %d2
	.loc 1 472 0
	movh.a	%a15, 61444
	lea	%a15, [%a15] -16384
	ld.w	%d15, [%a15]0
.LVL11:
	jz.t	%d2, 14, .L41
	.loc 1 472 0 is_stmt 0 discriminator 1
	or	%d15, %d15, 1
	st.w	[%a15]0, %d15
	.loc 1 473 0 is_stmt 1 discriminator 1
	extr	%d15, %d2, 0, 16
	movh.a	%a15, 61444
	lea	%a15, [%a15] -16384
	jltz	%d15, .L50
.L43:
	.loc 1 473 0 is_stmt 0 discriminator 2
	ld.w	%d15, [%a15]0
	andn	%d15, %d15, ~(-3)
	st.w	[%a15]0, %d15
	.loc 1 476 0 is_stmt 1 discriminator 2
	ret
.LVL12:
.L49:
	.loc 1 466 0
	mov	%d2, -2
.LVL13:
.L37:
	.loc 1 477 0
	ret
.LVL14:
.L38:
	.loc 1 457 0
	movh.a	%a15, hi:mask_LCD_d
	ld.h	%d2, [%a15] lo:mask_LCD_d
	andn	%d2, %d2, %d15
	extr.u	%d2, %d2, 0, 16
	st.h	[%a15] lo:mask_LCD_d, %d2
	.loc 1 458 0
	j	.L40
.LVL15:
.L41:
	.loc 1 472 0 discriminator 2
	andn	%d15, %d15, ~(-2)
	st.w	[%a15]0, %d15
	.loc 1 473 0 discriminator 2
	extr	%d15, %d2, 0, 16
	movh.a	%a15, 61444
	lea	%a15, [%a15] -16384
	jgez	%d15, .L43
.L50:
	.loc 1 473 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a15]0
	or	%d15, %d15, 2
	st.w	[%a15]0, %d15
	ret
.LFE206:
	.size	setBit_GPIO_LCD_d, .-setBit_GPIO_LCD_d
	.align 1
	.global	setBit_GPIO_LCD_ctl
	.type	setBit_GPIO_LCD_ctl, @function
setBit_GPIO_LCD_ctl:
.LFB207:
	.loc 1 482 0 is_stmt 1
.LVL16:
	.loc 1 493 0
	ge.u	%d15, %d4, 6
	or.eq	%d15, %d4, 1
	.loc 1 496 0
	mov	%d2, -1
	.loc 1 493 0
	jnz	%d15, .L52
	.loc 1 500 0
	mov	%d15, 1
	sh	%d15, %d15, %d4
.LVL17:
	.loc 1 503 0
	jz	%d5, .L53
	jne	%d5, 1, .L67
	.loc 1 511 0
	movh.a	%a15, hi:mask_LCD_ctl
	ld.bu	%d2, [%a15] lo:mask_LCD_ctl
	or	%d2, %d15
	and	%d2, %d2, 255
	st.b	[%a15] lo:mask_LCD_ctl, %d2
.L55:
.LVL18:
.LBB28:
.LBB29:
	.loc 1 521 0
	jge.u	%d4, 6, .L52
	movh.a	%a15, hi:.L58
	lea	%a15, [%a15] lo:.L58
	addsc.a	%a15, %a15, %d4, 2
	ji	%a15
	.align 2
	.align 2
.L58:
	.code32
	j	.L57
	.code32
	j	.L52
	.code32
	j	.L59
	.code32
	j	.L60
	.code32
	j	.L61
	.code32
	j	.L62
.LVL19:
.L67:
.LBE29:
.LBE28:
	.loc 1 516 0
	mov	%d2, -2
.LVL20:
.L52:
	.loc 1 533 0
	ret
.LVL21:
.L53:
	.loc 1 507 0
	movh.a	%a15, hi:mask_LCD_ctl
	ld.bu	%d2, [%a15] lo:mask_LCD_ctl
	andn	%d2, %d2, %d15
	st.b	[%a15] lo:mask_LCD_ctl, %d2
	.loc 1 508 0
	j	.L55
.LVL22:
.L62:
.LBB31:
.LBB30:
	.loc 1 527 0
	movh.a	%a15, 61444
	lea	%a15, [%a15] -16128
	ld.w	%d15, [%a15]0
.LVL23:
	ins.t	%d5, %d15,5, %d5,0
.LVL24:
	st.w	[%a15]0, %d5
	ret
.LVL25:
.L61:
	.loc 1 526 0
	movh.a	%a15, 61444
	lea	%a15, [%a15] -16128
	ld.w	%d15, [%a15]0
.LVL26:
	ins.t	%d5, %d15,4, %d5,0
.LVL27:
	st.w	[%a15]0, %d5
	ret
.LVL28:
.L60:
	.loc 1 525 0
	movh.a	%a15, 61444
	lea	%a15, [%a15] -16128
	ld.w	%d15, [%a15]0
.LVL29:
	ins.t	%d5, %d15,3, %d5,0
.LVL30:
	st.w	[%a15]0, %d5
	ret
.LVL31:
.L59:
	.loc 1 524 0
	movh.a	%a15, 61444
	lea	%a15, [%a15] -16128
	ld.w	%d15, [%a15]0
.LVL32:
	ins.t	%d5, %d15,2, %d5,0
.LVL33:
	st.w	[%a15]0, %d5
	ret
.LVL34:
.L57:
	.loc 1 523 0
	movh.a	%a15, 61444
	lea	%a15, [%a15] -16128
	ld.w	%d15, [%a15]0
.LVL35:
	insert	%d5, %d15, %d5, 0, 1
.LVL36:
	st.w	[%a15]0, %d5
	ret
.LBE30:
.LBE31:
.LFE207:
	.size	setBit_GPIO_LCD_ctl, .-setBit_GPIO_LCD_ctl
	.align 1
	.global	getWord_GPIO_LCD_d
	.type	getWord_GPIO_LCD_d, @function
getWord_GPIO_LCD_d:
.LFB204:
	.loc 1 353 0
	.loc 1 358 0
	mov	%d4, 3
	mov	%d5, 1
	call	setBit_GPIO_LCD_ctl
.LVL37:
	.loc 1 359 0
	mov	%d4, 4
	mov	%d5, 1
	call	setBit_GPIO_LCD_ctl
.LVL38:
	.loc 1 360 0
	mov	%e4, 5
	call	setBit_GPIO_LCD_ctl
.LVL39:
	.loc 1 353 0
	mov.a	%a3, 9
.LVL40:
.L69:
	lea	%a2, 999
.LVL41:
.L73:
	lea	%a15, 60
.LVL42:
.L70:
.LBB32:
.LBB33:
.LBB34:
.LBB35:
	.file 2 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
	.loc 2 1369 0
#APP
	# 1369 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	nop
	# 0 "" 2
#NO_APP
	loop	%a15, .L70
	loop	%a2, .L73
	loop	%a3, .L69
.LBE35:
.LBE34:
.LBE33:
.LBE32:
	.loc 1 364 0
	movh.a	%a15, 61444
	lea	%a15, [%a15] -11520
	ld.w	%d15, [%a15] 16
	.loc 1 360 0
	mov.a	%a3, 9
	.loc 1 364 0
	andn	%d15, %d15, ~(-249)
	or	%d15, %d15, 128
	st.w	[%a15] 16, %d15
	.loc 1 365 0
	ld.w	%d15, [%a15] 16
	insert	%d15, %d15, 0, 11, 5
	insert	%d15, %d15, 15, 15, 1
	st.w	[%a15] 16, %d15
	.loc 1 366 0
	ld.w	%d15, [%a15] 16
	insert	%d15, %d15, 0, 19, 5
	insert	%d15, %d15, 15, 23, 1
	st.w	[%a15] 16, %d15
	.loc 1 367 0
	ld.w	%d15, [%a15] 16
	insert	%d15, %d15, 0, 27, 5
	insert	%d15, %d15, 15, 31, 1
	st.w	[%a15] 16, %d15
	.loc 1 368 0
	ld.w	%d15, [%a15] 20
	andn	%d15, %d15, ~(-249)
	or	%d15, %d15, 128
	st.w	[%a15] 20, %d15
	.loc 1 369 0
	ld.w	%d15, [%a15] 20
	insert	%d15, %d15, 0, 11, 5
	insert	%d15, %d15, 15, 15, 1
	st.w	[%a15] 20, %d15
	.loc 1 370 0
	ld.w	%d15, [%a15] 20
	insert	%d15, %d15, 0, 19, 5
	insert	%d15, %d15, 15, 23, 1
	st.w	[%a15] 20, %d15
	.loc 1 371 0
	ld.w	%d15, [%a15] 20
	insert	%d15, %d15, 0, 27, 5
	insert	%d15, %d15, 15, 31, 1
	st.w	[%a15] 20, %d15
	.loc 1 372 0
	ld.w	%d15, [%a15] 24
	andn	%d15, %d15, ~(-249)
	or	%d15, %d15, 128
	st.w	[%a15] 24, %d15
	.loc 1 373 0
	ld.w	%d15, [%a15] 24
	insert	%d15, %d15, 0, 11, 5
	insert	%d15, %d15, 15, 15, 1
	st.w	[%a15] 24, %d15
	.loc 1 374 0
	ld.w	%d15, [%a15] 24
	insert	%d15, %d15, 0, 19, 5
	insert	%d15, %d15, 15, 23, 1
	st.w	[%a15] 24, %d15
	.loc 1 375 0
	ld.w	%d15, [%a15] 24
	insert	%d15, %d15, 0, 27, 5
	insert	%d15, %d15, 15, 31, 1
	st.w	[%a15] 24, %d15
	.loc 1 376 0
	ld.w	%d15, [%a15] 28
	andn	%d15, %d15, ~(-249)
	or	%d15, %d15, 128
	st.w	[%a15] 28, %d15
	.loc 1 377 0
	ld.w	%d15, [%a15] 28
	insert	%d15, %d15, 0, 11, 5
	insert	%d15, %d15, 15, 15, 1
	st.w	[%a15] 28, %d15
	.loc 1 378 0
	movh.a	%a15, 61444
	lea	%a15, [%a15] -16384
	ld.w	%d15, [%a15] 16
	andn	%d15, %d15, ~(-249)
	or	%d15, %d15, 128
	st.w	[%a15] 16, %d15
	.loc 1 379 0
	ld.w	%d15, [%a15] 16
	insert	%d15, %d15, 0, 11, 5
	insert	%d15, %d15, 15, 15, 1
	st.w	[%a15] 16, %d15
.LVL43:
.L74:
	.loc 1 360 0
	lea	%a2, 999
.LVL44:
.L78:
	lea	%a15, 60
.LVL45:
.L75:
.LBB36:
.LBB37:
.LBB38:
.LBB39:
	.loc 2 1369 0
#APP
	# 1369 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	nop
	# 0 "" 2
#NO_APP
	loop	%a15, .L75
	loop	%a2, .L78
	loop	%a3, .L74
.LBE39:
.LBE38:
.LBE37:
.LBE36:
	.loc 1 383 0
	movh.a	%a15, 61444
	lea	%a15, [%a15] -11520
	ld.w	%d15, [%a15] 36
	movh.a	%a12, hi:mask_LCD_d
	insert	%d15, %d15, 0, 14, 18
	.loc 1 384 0
	movh.a	%a15, 61444
	lea	%a15, [%a15] -16384
	.loc 1 383 0
	st.h	[%a12] lo:mask_LCD_d, %d15
	.loc 1 384 0
	ld.w	%d2, [%a15] 36
	jz.t	%d2, 0, .L79
	.loc 1 384 0 is_stmt 0 discriminator 1
	addi	%d15, %d15, 16384
	st.h	[%a12] lo:mask_LCD_d, %d15
.L79:
	.loc 1 385 0 is_stmt 1
	movh.a	%a15, 61444
	lea	%a15, [%a15] -16384
	ld.w	%d15, [%a15] 36
	jz.t	%d15, 1, .L80
	.loc 1 385 0 is_stmt 0 discriminator 1
	ld.h	%d15, [%a12] lo:mask_LCD_d
	addi	%d15, %d15, -32768
	st.h	[%a12] lo:mask_LCD_d, %d15
.L80:
.LVL46:
	.loc 1 379 0 is_stmt 1
	mov.a	%a3, 9
.LVL47:
.L81:
	lea	%a2, 999
.LVL48:
.L85:
	lea	%a15, 60
.LVL49:
.L82:
.LBB40:
.LBB41:
.LBB42:
.LBB43:
	.loc 2 1369 0
#APP
	# 1369 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	nop
	# 0 "" 2
#NO_APP
	loop	%a15, .L82
	loop	%a2, .L85
	loop	%a3, .L81
.LBE43:
.LBE42:
.LBE41:
.LBE40:
	.loc 1 390 0
	movh.a	%a15, 61444
	lea	%a15, [%a15] -11520
	ld.w	%d15, [%a15] 16
	.loc 1 379 0
	mov.a	%a3, 9
	.loc 1 390 0
	andn	%d15, %d15, ~(-249)
	or	%d15, %d15, 128
	st.w	[%a15] 16, %d15
	.loc 1 391 0
	ld.w	%d15, [%a15] 16
	insert	%d15, %d15, 0, 11, 5
	insert	%d15, %d15, 15, 15, 1
	st.w	[%a15] 16, %d15
	.loc 1 392 0
	ld.w	%d15, [%a15] 16
	insert	%d15, %d15, 0, 19, 5
	insert	%d15, %d15, 15, 23, 1
	st.w	[%a15] 16, %d15
	.loc 1 393 0
	ld.w	%d15, [%a15] 16
	insert	%d15, %d15, 0, 27, 5
	insert	%d15, %d15, 15, 31, 1
	st.w	[%a15] 16, %d15
	.loc 1 394 0
	ld.w	%d15, [%a15] 20
	andn	%d15, %d15, ~(-249)
	or	%d15, %d15, 128
	st.w	[%a15] 20, %d15
	.loc 1 395 0
	ld.w	%d15, [%a15] 20
	insert	%d15, %d15, 0, 11, 5
	insert	%d15, %d15, 15, 15, 1
	st.w	[%a15] 20, %d15
	.loc 1 396 0
	ld.w	%d15, [%a15] 20
	insert	%d15, %d15, 0, 19, 5
	insert	%d15, %d15, 15, 23, 1
	st.w	[%a15] 20, %d15
	.loc 1 397 0
	ld.w	%d15, [%a15] 20
	insert	%d15, %d15, 0, 27, 5
	insert	%d15, %d15, 15, 31, 1
	st.w	[%a15] 20, %d15
	.loc 1 398 0
	ld.w	%d15, [%a15] 24
	andn	%d15, %d15, ~(-249)
	or	%d15, %d15, 128
	st.w	[%a15] 24, %d15
	.loc 1 399 0
	ld.w	%d15, [%a15] 24
	insert	%d15, %d15, 0, 11, 5
	insert	%d15, %d15, 15, 15, 1
	st.w	[%a15] 24, %d15
	.loc 1 400 0
	ld.w	%d15, [%a15] 24
	insert	%d15, %d15, 0, 19, 5
	insert	%d15, %d15, 15, 23, 1
	st.w	[%a15] 24, %d15
	.loc 1 401 0
	ld.w	%d15, [%a15] 24
	insert	%d15, %d15, 0, 27, 5
	insert	%d15, %d15, 15, 31, 1
	st.w	[%a15] 24, %d15
	.loc 1 402 0
	ld.w	%d15, [%a15] 28
	andn	%d15, %d15, ~(-249)
	or	%d15, %d15, 128
	st.w	[%a15] 28, %d15
	.loc 1 403 0
	ld.w	%d15, [%a15] 28
	insert	%d15, %d15, 0, 11, 5
	insert	%d15, %d15, 15, 15, 1
	st.w	[%a15] 28, %d15
	.loc 1 404 0
	movh.a	%a15, 61444
	lea	%a15, [%a15] -16384
	ld.w	%d15, [%a15] 16
	andn	%d15, %d15, ~(-249)
	or	%d15, %d15, 128
	st.w	[%a15] 16, %d15
	.loc 1 405 0
	ld.w	%d15, [%a15] 16
	insert	%d15, %d15, 0, 11, 5
	insert	%d15, %d15, 15, 15, 1
	st.w	[%a15] 16, %d15
.LVL50:
.L86:
	.loc 1 379 0
	lea	%a2, 999
.LVL51:
.L90:
	lea	%a15, 60
.LVL52:
.L87:
.LBB44:
.LBB45:
.LBB46:
.LBB47:
	.loc 2 1369 0
#APP
	# 1369 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	nop
	# 0 "" 2
#NO_APP
	loop	%a15, .L87
	loop	%a2, .L90
	loop	%a3, .L86
.LBE47:
.LBE46:
.LBE45:
.LBE44:
	.loc 1 409 0
	mov	%d4, 5
	mov	%d5, 1
	call	setBit_GPIO_LCD_ctl
.LVL53:
	.loc 1 412 0
	ld.hu	%d2, [%a12] lo:mask_LCD_d
	ret
.LFE204:
	.size	getWord_GPIO_LCD_d, .-getWord_GPIO_LCD_d
	.align 1
	.global	setBit_GPIO_LCD_bl
	.type	setBit_GPIO_LCD_bl, @function
setBit_GPIO_LCD_bl:
.LFB208:
	.loc 1 538 0
.LVL54:
	.loc 1 547 0
	mov	%d2, -1
	.loc 1 544 0
	jne	%d4, 4, .L120
.LVL55:
	.loc 1 554 0
	jz	%d5, .L121
	jne	%d5, 1, .L128
	.loc 1 562 0
	movh.a	%a15, hi:mask_LCD_bl
	ld.bu	%d2, [%a15] lo:mask_LCD_bl
	or	%d2, %d2, 16
	and	%d2, %d2, 255
	st.b	[%a15] lo:mask_LCD_bl, %d2
.LVL56:
.LBB50:
.LBB51:
	.loc 1 574 0
	movh.a	%a15, 61444
	lea	%a15, [%a15] -11776
	ld.w	%d15, [%a15]0
	ins.t	%d5, %d15,4, %d5,0
.LVL57:
	st.w	[%a15]0, %d5
	ret
.LVL58:
.L128:
.LBE51:
.LBE50:
	.loc 1 567 0
	mov	%d2, -2
.LVL59:
.L120:
	.loc 1 580 0
	ret
.LVL60:
.L121:
	.loc 1 558 0
	movh.a	%a15, hi:mask_LCD_bl
	ld.bu	%d2, [%a15] lo:mask_LCD_bl
	and	%d2, %d2, 239
	st.b	[%a15] lo:mask_LCD_bl, %d2
.LVL61:
.LBB53:
.LBB52:
	.loc 1 574 0
	movh.a	%a15, 61444
	lea	%a15, [%a15] -11776
	ld.w	%d15, [%a15]0
	ins.t	%d5, %d15,4, %d5,0
.LVL62:
	st.w	[%a15]0, %d5
	ret
.LBE52:
.LBE53:
.LFE208:
	.size	setBit_GPIO_LCD_bl, .-setBit_GPIO_LCD_bl
	.align 1
	.global	setPort_GPIO_LCD
	.type	setPort_GPIO_LCD, @function
setPort_GPIO_LCD:
.LFB203:
	.loc 1 299 0
	.loc 1 305 0
	movh.a	%a15, 61444
	lea	%a15, [%a15] -11520
	ld.w	%d15, [%a15] 16
	.loc 1 319 0
	movh.a	%a2, 61444
	.loc 1 305 0
	andn	%d15, %d15, ~(-249)
	or	%d15, %d15, 128
	.loc 1 319 0
	lea	%a2, [%a2] -16384
	.loc 1 299 0
	mov.a	%a3, 9
	.loc 1 305 0
	st.w	[%a15] 16, %d15
	.loc 1 306 0
	ld.w	%d15, [%a15] 16
	insert	%d15, %d15, 0, 11, 5
	insert	%d15, %d15, 15, 15, 1
	st.w	[%a15] 16, %d15
	.loc 1 307 0
	ld.w	%d15, [%a15] 16
	insert	%d15, %d15, 0, 19, 5
	insert	%d15, %d15, 15, 23, 1
	st.w	[%a15] 16, %d15
	.loc 1 308 0
	ld.w	%d15, [%a15] 16
	insert	%d15, %d15, 0, 27, 5
	insert	%d15, %d15, 15, 31, 1
	st.w	[%a15] 16, %d15
	.loc 1 309 0
	ld.w	%d15, [%a15] 20
	andn	%d15, %d15, ~(-249)
	or	%d15, %d15, 128
	st.w	[%a15] 20, %d15
	.loc 1 310 0
	ld.w	%d15, [%a15] 20
	insert	%d15, %d15, 0, 11, 5
	insert	%d15, %d15, 15, 15, 1
	st.w	[%a15] 20, %d15
	.loc 1 311 0
	ld.w	%d15, [%a15] 20
	insert	%d15, %d15, 0, 19, 5
	insert	%d15, %d15, 15, 23, 1
	st.w	[%a15] 20, %d15
	.loc 1 312 0
	ld.w	%d15, [%a15] 20
	insert	%d15, %d15, 0, 27, 5
	insert	%d15, %d15, 15, 31, 1
	st.w	[%a15] 20, %d15
	.loc 1 313 0
	ld.w	%d15, [%a15] 24
	andn	%d15, %d15, ~(-249)
	or	%d15, %d15, 128
	st.w	[%a15] 24, %d15
	.loc 1 314 0
	ld.w	%d15, [%a15] 24
	insert	%d15, %d15, 0, 11, 5
	insert	%d15, %d15, 15, 15, 1
	st.w	[%a15] 24, %d15
	.loc 1 315 0
	ld.w	%d15, [%a15] 24
	insert	%d15, %d15, 0, 19, 5
	insert	%d15, %d15, 15, 23, 1
	st.w	[%a15] 24, %d15
	.loc 1 316 0
	ld.w	%d15, [%a15] 24
	insert	%d15, %d15, 0, 27, 5
	insert	%d15, %d15, 15, 31, 1
	st.w	[%a15] 24, %d15
	.loc 1 317 0
	ld.w	%d15, [%a15] 28
	andn	%d15, %d15, ~(-249)
	or	%d15, %d15, 128
	st.w	[%a15] 28, %d15
	.loc 1 318 0
	ld.w	%d15, [%a15] 28
	insert	%d15, %d15, 0, 11, 5
	insert	%d15, %d15, 15, 15, 1
	st.w	[%a15] 28, %d15
	.loc 1 319 0
	ld.w	%d15, [%a2] 16
	.loc 1 322 0
	movh.a	%a15, 61444
	.loc 1 319 0
	andn	%d15, %d15, ~(-249)
	or	%d15, %d15, 128
	.loc 1 322 0
	lea	%a15, [%a15] -16128
	.loc 1 319 0
	st.w	[%a2] 16, %d15
	.loc 1 320 0
	ld.w	%d15, [%a2] 16
	insert	%d15, %d15, 0, 11, 5
	insert	%d15, %d15, 15, 15, 1
	st.w	[%a2] 16, %d15
	.loc 1 322 0
	ld.w	%d15, [%a15] 16
	andn	%d15, %d15, ~(-249)
	or	%d15, %d15, 128
	st.w	[%a15] 16, %d15
	.loc 1 323 0
	ld.w	%d15, [%a15] 16
	insert	%d15, %d15, 0, 19, 5
	insert	%d15, %d15, 15, 23, 1
	st.w	[%a15] 16, %d15
	.loc 1 324 0
	ld.w	%d15, [%a15] 16
	insert	%d15, %d15, 0, 27, 5
	insert	%d15, %d15, 15, 31, 1
	st.w	[%a15] 16, %d15
	.loc 1 325 0
	ld.w	%d15, [%a15] 20
	andn	%d15, %d15, ~(-249)
	or	%d15, %d15, 128
	st.w	[%a15] 20, %d15
	.loc 1 326 0
	ld.w	%d15, [%a15] 20
	insert	%d15, %d15, 0, 11, 5
	insert	%d15, %d15, 15, 15, 1
	st.w	[%a15] 20, %d15
	.loc 1 328 0
	movh.a	%a15, 61444
	lea	%a15, [%a15] -11776
	ld.w	%d15, [%a15] 20
	andn	%d15, %d15, ~(-249)
	or	%d15, %d15, 128
	st.w	[%a15] 20, %d15
	.loc 1 330 0
	ld.w	%d15, [%a2] 24
	insert	%d15, %d15, 0, 11, 5
	st.w	[%a2] 24, %d15
.LVL63:
	mov	%d15, 10
.LVL64:
.L130:
	.loc 1 299 0
	lea	%a2, 999
.LVL65:
.L134:
	lea	%a15, 60
.LVL66:
.L131:
.LBB54:
.LBB55:
.LBB56:
.LBB57:
	.loc 2 1369 0
#APP
	# 1369 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	nop
	# 0 "" 2
#NO_APP
	loop	%a15, .L131
	loop	%a2, .L134
.LVL67:
	add	%d15, -1
.LVL68:
	loop	%a3, .L130
.LBE57:
.LBE56:
.LBE55:
.LBE54:
	.loc 1 336 0
	movh.a	%a15, hi:mask_LCD_ctl
	st.b	[%a15] lo:mask_LCD_ctl, %d15
	.loc 1 337 0
	movh.a	%a15, hi:mask_LCD_bl
	st.b	[%a15] lo:mask_LCD_bl, %d15
.LVL69:
.LBB58:
.LBB59:
	.loc 1 423 0
	mov	%d15, -1
.LVL70:
	movh.a	%a15, hi:mask_LCD_d
.LBE59:
.LBE58:
	.loc 1 339 0
	mov	%d4, 0
.LBB62:
.LBB60:
	.loc 1 423 0
	st.h	[%a15] lo:mask_LCD_d, %d15
	.loc 1 426 0
	mov.u	%d15, 65535
	movh.a	%a15, 61444
	lea	%a15, [%a15] -11520
	st.w	[%a15]0, %d15
	.loc 1 427 0
	movh.a	%a15, 61444
	lea	%a15, [%a15] -16384
	ld.w	%d15, [%a15]0
.LBE60:
.LBE62:
	.loc 1 339 0
	mov	%d5, 1
.LBB63:
.LBB61:
	.loc 1 427 0
	or	%d15, %d15, 1
	st.w	[%a15]0, %d15
	.loc 1 428 0
	ld.w	%d15, [%a15]0
	or	%d15, %d15, 2
	st.w	[%a15]0, %d15
.LBE61:
.LBE63:
	.loc 1 339 0
	call	setBit_GPIO_LCD_ctl
.LVL71:
	.loc 1 340 0
	mov	%d4, 2
	mov	%d5, 1
	call	setBit_GPIO_LCD_ctl
.LVL72:
	.loc 1 341 0
	mov	%d4, 3
	mov	%d5, 1
	call	setBit_GPIO_LCD_ctl
.LVL73:
	.loc 1 342 0
	mov	%d4, 4
	mov	%d5, 1
	call	setBit_GPIO_LCD_ctl
.LVL74:
	.loc 1 343 0
	mov	%d4, 5
	mov	%d5, 1
	call	setBit_GPIO_LCD_ctl
.LVL75:
	.loc 1 344 0
	mov	%d4, 4
	mov	%d5, 1
	j	setBit_GPIO_LCD_bl
.LVL76:
.LFE203:
	.size	setPort_GPIO_LCD, .-setPort_GPIO_LCD
	.align 1
	.global	getBit_LCD_IRQ
	.type	getBit_LCD_IRQ, @function
getBit_LCD_IRQ:
.LFB209:
	.loc 1 584 0
	.loc 1 585 0
	movh.a	%a15, 61444
	lea	%a15, [%a15] -16384
	ld.w	%d2, [%a15] 36
	.loc 1 589 0
	extr.u	%d2, %d2, 9, 1
	ret
.LFE209:
	.size	getBit_LCD_IRQ, .-getBit_LCD_IRQ
	.align 1
	.global	f_Cs
	.type	f_Cs, @function
f_Cs:
.LFB210:
	.loc 1 592 0
.LVL77:
	.loc 1 592 0
	movh.a	%a15, 61444
	lea	%a15, [%a15] -16128
	ld.w	%d15, [%a15]0
	insert	%d4, %d15, %d4, 0, 1
.LVL78:
	st.w	[%a15]0, %d4
	ret
.LFE210:
	.size	f_Cs, .-f_Cs
	.align 1
	.global	f_Rs
	.type	f_Rs, @function
f_Rs:
.LFB211:
	.loc 1 593 0
.LVL79:
	.loc 1 593 0
	movh.a	%a15, 61444
	lea	%a15, [%a15] -16128
	ld.w	%d15, [%a15]0
	ins.t	%d4, %d15,3, %d4,0
.LVL80:
	st.w	[%a15]0, %d4
	ret
.LFE211:
	.size	f_Rs, .-f_Rs
	.align 1
	.global	f_nWr
	.type	f_nWr, @function
f_nWr:
.LFB212:
	.loc 1 594 0
.LVL81:
	.loc 1 594 0
	movh.a	%a15, 61444
	lea	%a15, [%a15] -16128
	ld.w	%d15, [%a15]0
	ins.t	%d4, %d15,4, %d4,0
.LVL82:
	st.w	[%a15]0, %d4
	ret
.LFE212:
	.size	f_nWr, .-f_nWr
	.align 1
	.global	f_nRd
	.type	f_nRd, @function
f_nRd:
.LFB213:
	.loc 1 595 0
.LVL83:
	.loc 1 595 0
	movh.a	%a15, 61444
	lea	%a15, [%a15] -16128
	ld.w	%d15, [%a15]0
	ins.t	%d4, %d15,5, %d4,0
.LVL84:
	st.w	[%a15]0, %d4
	ret
.LFE213:
	.size	f_nRd, .-f_nRd
	.align 1
	.global	f_reset
	.type	f_reset, @function
f_reset:
.LFB214:
	.loc 1 596 0
.LVL85:
	.loc 1 596 0
	movh.a	%a15, 61444
	lea	%a15, [%a15] -16128
	ld.w	%d15, [%a15]0
	ins.t	%d4, %d15,2, %d4,0
.LVL86:
	st.w	[%a15]0, %d4
	ret
.LFE214:
	.size	f_reset, .-f_reset
	.align 1
	.global	f_BLCNT
	.type	f_BLCNT, @function
f_BLCNT:
.LFB215:
	.loc 1 597 0
.LVL87:
	.loc 1 597 0
	movh.a	%a15, 61444
	lea	%a15, [%a15] -11776
	ld.w	%d15, [%a15]0
	ins.t	%d4, %d15,4, %d4,0
.LVL88:
	st.w	[%a15]0, %d4
	ret
.LFE215:
	.size	f_BLCNT, .-f_BLCNT
	.align 1
	.global	f_chip_select
	.type	f_chip_select, @function
f_chip_select:
.LFB216:
	.loc 1 601 0
.LVL89:
	.loc 1 601 0
	movh.a	%a15, 61444
	lea	%a15, [%a15] -16384
	ld.w	%d15, [%a15]0
	ins.t	%d4, %d15,3, %d4,0
.LVL90:
	st.w	[%a15]0, %d4
	ret
.LFE216:
	.size	f_chip_select, .-f_chip_select
	.align 1
	.global	setPort_GPIO_dxl
	.type	setPort_GPIO_dxl, @function
setPort_GPIO_dxl:
.LFB217:
	.loc 1 685 0
	ret
.LFE217:
	.size	setPort_GPIO_dxl, .-setPort_GPIO_dxl
	.align 1
	.global	setBit_GPIO_dxl
	.type	setBit_GPIO_dxl, @function
setBit_GPIO_dxl:
.LFB218:
	.loc 1 686 0
.LVL91:
	.loc 1 686 0
	ret
.LFE218:
	.size	setBit_GPIO_dxl, .-setBit_GPIO_dxl
	.align 1
	.global	Delay_ms_GPIO
	.type	Delay_ms_GPIO, @function
Delay_ms_GPIO:
.LFB219:
	.loc 1 701 0
.LVL92:
	.loc 1 701 0
	mov.a	%a3, %d4
	add.a	%a3, -1
	.loc 1 703 0
	jz	%d4, .L165
.LVL93:
.L162:
	.loc 1 701 0
	lea	%a2, 999
.LVL94:
.L157:
	lea	%a15, 60
.LVL95:
.L154:
.LBB64:
.LBB65:
	.loc 2 1369 0
#APP
	# 1369 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	nop
	# 0 "" 2
#NO_APP
	loop	%a15, .L154
	loop	%a2, .L157
.LBE65:
.LBE64:
	.loc 1 703 0 discriminator 2
	loop	%a3, .L162
	ret
.LVL96:
.L165:
	ret
.LFE219:
	.size	Delay_ms_GPIO, .-Delay_ms_GPIO
	.local	mask_LCD_bl
.section .bss,"aw",@nobits
	.align 0
	.type		 mask_LCD_bl,@object
	.size		 mask_LCD_bl,1
mask_LCD_bl:
	.space	1
	.local	mask_LCD_ctl
	.align 0
	.type		 mask_LCD_ctl,@object
	.size		 mask_LCD_ctl,1
mask_LCD_ctl:
	.space	1
	.local	mask_LCD_d
	.align 1
	.type		 mask_LCD_d,@object
	.size		 mask_LCD_d,2
mask_LCD_d:
	.space	2
	.local	mask_PBSW
	.align 0
	.type		 mask_PBSW,@object
	.size		 mask_PBSW,1
mask_PBSW:
	.space	1
	.local	mask_LED
	.align 0
	.type		 mask_LED,@object
	.size		 mask_LED,1
mask_LED:
	.space	1
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
	.uaword	.LFB196
	.uaword	.LFE196-.LFB196
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB197
	.uaword	.LFE197-.LFB197
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB198
	.uaword	.LFE198-.LFB198
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB199
	.uaword	.LFE199-.LFB199
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB200
	.uaword	.LFE200-.LFB200
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB201
	.uaword	.LFE201-.LFB201
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB202
	.uaword	.LFE202-.LFB202
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB205
	.uaword	.LFE205-.LFB205
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB206
	.uaword	.LFE206-.LFB206
	.align 2
.LEFDE16:
.LSFDE18:
	.uaword	.LEFDE18-.LASFDE18
.LASFDE18:
	.uaword	.Lframe0
	.uaword	.LFB207
	.uaword	.LFE207-.LFB207
	.align 2
.LEFDE18:
.LSFDE20:
	.uaword	.LEFDE20-.LASFDE20
.LASFDE20:
	.uaword	.Lframe0
	.uaword	.LFB204
	.uaword	.LFE204-.LFB204
	.align 2
.LEFDE20:
.LSFDE22:
	.uaword	.LEFDE22-.LASFDE22
.LASFDE22:
	.uaword	.Lframe0
	.uaword	.LFB208
	.uaword	.LFE208-.LFB208
	.align 2
.LEFDE22:
.LSFDE24:
	.uaword	.LEFDE24-.LASFDE24
.LASFDE24:
	.uaword	.Lframe0
	.uaword	.LFB203
	.uaword	.LFE203-.LFB203
	.align 2
.LEFDE24:
.LSFDE26:
	.uaword	.LEFDE26-.LASFDE26
.LASFDE26:
	.uaword	.Lframe0
	.uaword	.LFB209
	.uaword	.LFE209-.LFB209
	.align 2
.LEFDE26:
.LSFDE28:
	.uaword	.LEFDE28-.LASFDE28
.LASFDE28:
	.uaword	.Lframe0
	.uaword	.LFB210
	.uaword	.LFE210-.LFB210
	.align 2
.LEFDE28:
.LSFDE30:
	.uaword	.LEFDE30-.LASFDE30
.LASFDE30:
	.uaword	.Lframe0
	.uaword	.LFB211
	.uaword	.LFE211-.LFB211
	.align 2
.LEFDE30:
.LSFDE32:
	.uaword	.LEFDE32-.LASFDE32
.LASFDE32:
	.uaword	.Lframe0
	.uaword	.LFB212
	.uaword	.LFE212-.LFB212
	.align 2
.LEFDE32:
.LSFDE34:
	.uaword	.LEFDE34-.LASFDE34
.LASFDE34:
	.uaword	.Lframe0
	.uaword	.LFB213
	.uaword	.LFE213-.LFB213
	.align 2
.LEFDE34:
.LSFDE36:
	.uaword	.LEFDE36-.LASFDE36
.LASFDE36:
	.uaword	.Lframe0
	.uaword	.LFB214
	.uaword	.LFE214-.LFB214
	.align 2
.LEFDE36:
.LSFDE38:
	.uaword	.LEFDE38-.LASFDE38
.LASFDE38:
	.uaword	.Lframe0
	.uaword	.LFB215
	.uaword	.LFE215-.LFB215
	.align 2
.LEFDE38:
.LSFDE40:
	.uaword	.LEFDE40-.LASFDE40
.LASFDE40:
	.uaword	.Lframe0
	.uaword	.LFB216
	.uaword	.LFE216-.LFB216
	.align 2
.LEFDE40:
.LSFDE42:
	.uaword	.LEFDE42-.LASFDE42
.LASFDE42:
	.uaword	.Lframe0
	.uaword	.LFB217
	.uaword	.LFE217-.LFB217
	.align 2
.LEFDE42:
.LSFDE44:
	.uaword	.LEFDE44-.LASFDE44
.LASFDE44:
	.uaword	.Lframe0
	.uaword	.LFB218
	.uaword	.LFE218-.LFB218
	.align 2
.LEFDE44:
.LSFDE46:
	.uaword	.LEFDE46-.LASFDE46
.LASFDE46:
	.uaword	.Lframe0
	.uaword	.LFB219
	.uaword	.LFE219-.LFB219
	.align 2
.LEFDE46:
.section .text,"ax",@progbits
.Letext0:
	.file 3 "./0_Src/4_McHal/Tricore/Cpu/Std/Platform_Types.h"
	.file 4 "./0_Src/4_McHal/Tricore/_Reg/IfxPort_regdef.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x2f56
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9."
	.string	"4 build on 2018-04-18 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -msmall-const=8 -mtc161 -g -g -O2 -fno-common -fno-short-enums -fsingle-precision-constant -fstrict-volatile-bitfields"
	.byte	0x1
	.string	"0_Src/0_AppSw/Tricore/Device_Driver/Driver_IO/Peripherals_GPIO.c"
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
	.byte	0x3
	.byte	0x59
	.uaword	0x1ea
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
	.byte	0x3
	.byte	0x5b
	.uaword	0x216
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
	.uaword	0x1ea
	.uaword	0x29e
	.uleb128 0x5
	.uaword	0x282
	.byte	0x7
	.byte	0
	.uleb128 0x4
	.uaword	0x1ea
	.uaword	0x2ae
	.uleb128 0x5
	.uaword	0x282
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.uaword	0x1ea
	.uaword	0x2be
	.uleb128 0x5
	.uaword	0x282
	.byte	0x17
	.byte	0
	.uleb128 0x4
	.uaword	0x1ea
	.uaword	0x2ce
	.uleb128 0x5
	.uaword	0x282
	.byte	0xb
	.byte	0
	.uleb128 0x6
	.string	"_Ifx_P_ACCEN0_Bits"
	.byte	0x4
	.byte	0x4
	.byte	0x2d
	.uaword	0x4e0
	.uleb128 0x7
	.string	"EN0"
	.byte	0x4
	.byte	0x2f
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x7
	.string	"EN1"
	.byte	0x4
	.byte	0x30
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x7
	.string	"EN2"
	.byte	0x4
	.byte	0x31
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x7
	.string	"EN3"
	.byte	0x4
	.byte	0x32
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x7
	.string	"EN4"
	.byte	0x4
	.byte	0x33
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x7
	.string	"EN5"
	.byte	0x4
	.byte	0x34
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x7
	.string	"EN6"
	.byte	0x4
	.byte	0x35
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x7
	.string	"EN7"
	.byte	0x4
	.byte	0x36
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x7
	.string	"EN8"
	.byte	0x4
	.byte	0x37
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x7
	.string	"EN9"
	.byte	0x4
	.byte	0x38
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x7
	.string	"EN10"
	.byte	0x4
	.byte	0x39
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x7
	.string	"EN11"
	.byte	0x4
	.byte	0x3a
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x7
	.string	"EN12"
	.byte	0x4
	.byte	0x3b
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x7
	.string	"EN13"
	.byte	0x4
	.byte	0x3c
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x7
	.string	"EN14"
	.byte	0x4
	.byte	0x3d
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x7
	.string	"EN15"
	.byte	0x4
	.byte	0x3e
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.string	"EN16"
	.byte	0x4
	.byte	0x3f
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x7
	.string	"EN17"
	.byte	0x4
	.byte	0x40
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0x7
	.string	"EN18"
	.byte	0x4
	.byte	0x41
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0x7
	.string	"EN19"
	.byte	0x4
	.byte	0x42
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x7
	.string	"EN20"
	.byte	0x4
	.byte	0x43
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0x7
	.string	"EN21"
	.byte	0x4
	.byte	0x44
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0x7
	.string	"EN22"
	.byte	0x4
	.byte	0x45
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0x7
	.string	"EN23"
	.byte	0x4
	.byte	0x46
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.string	"EN24"
	.byte	0x4
	.byte	0x47
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x7
	.string	"EN25"
	.byte	0x4
	.byte	0x48
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x7
	.string	"EN26"
	.byte	0x4
	.byte	0x49
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x7
	.string	"EN27"
	.byte	0x4
	.byte	0x4a
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.string	"EN28"
	.byte	0x4
	.byte	0x4b
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x7
	.string	"EN29"
	.byte	0x4
	.byte	0x4c
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.string	"EN30"
	.byte	0x4
	.byte	0x4d
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.string	"EN31"
	.byte	0x4
	.byte	0x4e
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_ACCEN0_Bits"
	.byte	0x4
	.byte	0x4f
	.uaword	0x2ce
	.uleb128 0x6
	.string	"_Ifx_P_ACCEN1_Bits"
	.byte	0x4
	.byte	0x4
	.byte	0x52
	.uaword	0x524
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x4
	.byte	0x54
	.uaword	0x272
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_ACCEN1_Bits"
	.byte	0x4
	.byte	0x55
	.uaword	0x4f9
	.uleb128 0x6
	.string	"_Ifx_P_ESR_Bits"
	.byte	0x4
	.byte	0x4
	.byte	0x58
	.uaword	0x65b
	.uleb128 0x7
	.string	"EN0"
	.byte	0x4
	.byte	0x5a
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x7
	.string	"EN1"
	.byte	0x4
	.byte	0x5b
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x7
	.string	"EN2"
	.byte	0x4
	.byte	0x5c
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x7
	.string	"EN3"
	.byte	0x4
	.byte	0x5d
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x7
	.string	"EN4"
	.byte	0x4
	.byte	0x5e
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x7
	.string	"EN5"
	.byte	0x4
	.byte	0x5f
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x7
	.string	"EN6"
	.byte	0x4
	.byte	0x60
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x7
	.string	"EN7"
	.byte	0x4
	.byte	0x61
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x7
	.string	"EN8"
	.byte	0x4
	.byte	0x62
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x7
	.string	"EN9"
	.byte	0x4
	.byte	0x63
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x7
	.string	"EN10"
	.byte	0x4
	.byte	0x64
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x7
	.string	"EN11"
	.byte	0x4
	.byte	0x65
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x7
	.string	"EN12"
	.byte	0x4
	.byte	0x66
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x7
	.string	"EN13"
	.byte	0x4
	.byte	0x67
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x7
	.string	"EN14"
	.byte	0x4
	.byte	0x68
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x7
	.string	"EN15"
	.byte	0x4
	.byte	0x69
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.uaword	.LASF1
	.byte	0x4
	.byte	0x6a
	.uaword	0x272
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_ESR_Bits"
	.byte	0x4
	.byte	0x6b
	.uaword	0x53d
	.uleb128 0x6
	.string	"_Ifx_P_ID_Bits"
	.byte	0x4
	.byte	0x4
	.byte	0x6e
	.uaword	0x6c3
	.uleb128 0x7
	.string	"MODREV"
	.byte	0x4
	.byte	0x70
	.uaword	0x272
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x7
	.string	"MODTYPE"
	.byte	0x4
	.byte	0x71
	.uaword	0x272
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.string	"MODNUMBER"
	.byte	0x4
	.byte	0x72
	.uaword	0x272
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_ID_Bits"
	.byte	0x4
	.byte	0x73
	.uaword	0x671
	.uleb128 0x6
	.string	"_Ifx_P_IN_Bits"
	.byte	0x4
	.byte	0x4
	.byte	0x76
	.uaword	0x7e5
	.uleb128 0x7
	.string	"P0"
	.byte	0x4
	.byte	0x78
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x7
	.string	"P1"
	.byte	0x4
	.byte	0x79
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x7
	.string	"P2"
	.byte	0x4
	.byte	0x7a
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x7
	.string	"P3"
	.byte	0x4
	.byte	0x7b
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x7
	.string	"P4"
	.byte	0x4
	.byte	0x7c
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x7
	.string	"P5"
	.byte	0x4
	.byte	0x7d
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x7
	.string	"P6"
	.byte	0x4
	.byte	0x7e
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x7
	.string	"P7"
	.byte	0x4
	.byte	0x7f
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x7
	.string	"P8"
	.byte	0x4
	.byte	0x80
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x7
	.string	"P9"
	.byte	0x4
	.byte	0x81
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x7
	.string	"P10"
	.byte	0x4
	.byte	0x82
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x7
	.string	"P11"
	.byte	0x4
	.byte	0x83
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x7
	.string	"P12"
	.byte	0x4
	.byte	0x84
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x7
	.string	"P13"
	.byte	0x4
	.byte	0x85
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x7
	.string	"P14"
	.byte	0x4
	.byte	0x86
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x7
	.string	"P15"
	.byte	0x4
	.byte	0x87
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.uaword	.LASF1
	.byte	0x4
	.byte	0x88
	.uaword	0x272
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_IN_Bits"
	.byte	0x4
	.byte	0x89
	.uaword	0x6d8
	.uleb128 0x6
	.string	"_Ifx_P_IOCR0_Bits"
	.byte	0x4
	.byte	0x4
	.byte	0x8c
	.uaword	0x88d
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x4
	.byte	0x8e
	.uaword	0x272
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0x7
	.string	"PC0"
	.byte	0x4
	.byte	0x8f
	.uaword	0x272
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.uaword	.LASF2
	.byte	0x4
	.byte	0x90
	.uaword	0x272
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0x7
	.string	"PC1"
	.byte	0x4
	.byte	0x91
	.uaword	0x272
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.uaword	.LASF1
	.byte	0x4
	.byte	0x92
	.uaword	0x272
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0x7
	.string	"PC2"
	.byte	0x4
	.byte	0x93
	.uaword	0x272
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.uaword	.LASF3
	.byte	0x4
	.byte	0x94
	.uaword	0x272
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0x7
	.string	"PC3"
	.byte	0x4
	.byte	0x95
	.uaword	0x272
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_IOCR0_Bits"
	.byte	0x4
	.byte	0x96
	.uaword	0x7fa
	.uleb128 0x6
	.string	"_Ifx_P_IOCR12_Bits"
	.byte	0x4
	.byte	0x4
	.byte	0x99
	.uaword	0x93d
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x4
	.byte	0x9b
	.uaword	0x272
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0x7
	.string	"PC12"
	.byte	0x4
	.byte	0x9c
	.uaword	0x272
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.uaword	.LASF2
	.byte	0x4
	.byte	0x9d
	.uaword	0x272
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0x7
	.string	"PC13"
	.byte	0x4
	.byte	0x9e
	.uaword	0x272
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.uaword	.LASF1
	.byte	0x4
	.byte	0x9f
	.uaword	0x272
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0x7
	.string	"PC14"
	.byte	0x4
	.byte	0xa0
	.uaword	0x272
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.uaword	.LASF3
	.byte	0x4
	.byte	0xa1
	.uaword	0x272
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0x7
	.string	"PC15"
	.byte	0x4
	.byte	0xa2
	.uaword	0x272
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_IOCR12_Bits"
	.byte	0x4
	.byte	0xa3
	.uaword	0x8a5
	.uleb128 0x6
	.string	"_Ifx_P_IOCR4_Bits"
	.byte	0x4
	.byte	0x4
	.byte	0xa6
	.uaword	0x9e9
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x4
	.byte	0xa8
	.uaword	0x272
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0x7
	.string	"PC4"
	.byte	0x4
	.byte	0xa9
	.uaword	0x272
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.uaword	.LASF2
	.byte	0x4
	.byte	0xaa
	.uaword	0x272
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0x7
	.string	"PC5"
	.byte	0x4
	.byte	0xab
	.uaword	0x272
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.uaword	.LASF1
	.byte	0x4
	.byte	0xac
	.uaword	0x272
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0x7
	.string	"PC6"
	.byte	0x4
	.byte	0xad
	.uaword	0x272
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.uaword	.LASF3
	.byte	0x4
	.byte	0xae
	.uaword	0x272
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0x7
	.string	"PC7"
	.byte	0x4
	.byte	0xaf
	.uaword	0x272
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_IOCR4_Bits"
	.byte	0x4
	.byte	0xb0
	.uaword	0x956
	.uleb128 0x6
	.string	"_Ifx_P_IOCR8_Bits"
	.byte	0x4
	.byte	0x4
	.byte	0xb3
	.uaword	0xa96
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x4
	.byte	0xb5
	.uaword	0x272
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0x7
	.string	"PC8"
	.byte	0x4
	.byte	0xb6
	.uaword	0x272
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.uaword	.LASF2
	.byte	0x4
	.byte	0xb7
	.uaword	0x272
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0x7
	.string	"PC9"
	.byte	0x4
	.byte	0xb8
	.uaword	0x272
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.uaword	.LASF1
	.byte	0x4
	.byte	0xb9
	.uaword	0x272
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0x7
	.string	"PC10"
	.byte	0x4
	.byte	0xba
	.uaword	0x272
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.uaword	.LASF3
	.byte	0x4
	.byte	0xbb
	.uaword	0x272
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0x7
	.string	"PC11"
	.byte	0x4
	.byte	0xbc
	.uaword	0x272
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_IOCR8_Bits"
	.byte	0x4
	.byte	0xbd
	.uaword	0xa01
	.uleb128 0x6
	.string	"_Ifx_P_LPCR0_Bits"
	.byte	0x4
	.byte	0x4
	.byte	0xc0
	.uaword	0xaf6
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x4
	.byte	0xc2
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x7
	.string	"PS1"
	.byte	0x4
	.byte	0xc3
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x8
	.uaword	.LASF4
	.byte	0x4
	.byte	0xc4
	.uaword	0x272
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_LPCR0_Bits"
	.byte	0x4
	.byte	0xc5
	.uaword	0xaae
	.uleb128 0x6
	.string	"_Ifx_P_LPCR1_Bits"
	.byte	0x4
	.byte	0x4
	.byte	0xc8
	.uaword	0xb56
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x4
	.byte	0xca
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x7
	.string	"PS1"
	.byte	0x4
	.byte	0xcb
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x8
	.uaword	.LASF4
	.byte	0x4
	.byte	0xcc
	.uaword	0x272
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_LPCR1_Bits"
	.byte	0x4
	.byte	0xcd
	.uaword	0xb0e
	.uleb128 0x6
	.string	"_Ifx_P_LPCR1_P21_Bits"
	.byte	0x4
	.byte	0x4
	.byte	0xd0
	.uaword	0xbe6
	.uleb128 0x7
	.string	"RDIS_CTRL"
	.byte	0x4
	.byte	0xd2
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x7
	.string	"RX_DIS"
	.byte	0x4
	.byte	0xd3
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x7
	.string	"TERM"
	.byte	0x4
	.byte	0xd4
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x7
	.string	"LRXTERM"
	.byte	0x4
	.byte	0xd5
	.uaword	0x272
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.uaword	.LASF2
	.byte	0x4
	.byte	0xd6
	.uaword	0x272
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_LPCR1_P21_Bits"
	.byte	0x4
	.byte	0xd7
	.uaword	0xb6e
	.uleb128 0x6
	.string	"_Ifx_P_LPCR2_Bits"
	.byte	0x4
	.byte	0x4
	.byte	0xda
	.uaword	0xcc1
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x4
	.byte	0xdc
	.uaword	0x272
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x7
	.string	"LVDSR"
	.byte	0x4
	.byte	0xdd
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x7
	.string	"LVDSRL"
	.byte	0x4
	.byte	0xde
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x7
	.string	"reserved_10"
	.byte	0x4
	.byte	0xdf
	.uaword	0x272
	.byte	0x4
	.byte	0x2
	.byte	0x14
	.byte	0
	.uleb128 0x7
	.string	"TDIS_CTRL"
	.byte	0x4
	.byte	0xe0
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x7
	.string	"TX_DIS"
	.byte	0x4
	.byte	0xe1
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x7
	.string	"TX_PD"
	.byte	0x4
	.byte	0xe2
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x7
	.string	"TX_PWDPD"
	.byte	0x4
	.byte	0xe3
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.uaword	.LASF1
	.byte	0x4
	.byte	0xe4
	.uaword	0x272
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_LPCR2_Bits"
	.byte	0x4
	.byte	0xe5
	.uaword	0xc02
	.uleb128 0x6
	.string	"_Ifx_P_OMCR0_Bits"
	.byte	0x4
	.byte	0x4
	.byte	0xe8
	.uaword	0xd52
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x4
	.byte	0xea
	.uaword	0x272
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.string	"PCL0"
	.byte	0x4
	.byte	0xeb
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x7
	.string	"PCL1"
	.byte	0x4
	.byte	0xec
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0x7
	.string	"PCL2"
	.byte	0x4
	.byte	0xed
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0x7
	.string	"PCL3"
	.byte	0x4
	.byte	0xee
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x8
	.uaword	.LASF5
	.byte	0x4
	.byte	0xef
	.uaword	0x272
	.byte	0x4
	.byte	0xc
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_OMCR0_Bits"
	.byte	0x4
	.byte	0xf0
	.uaword	0xcd9
	.uleb128 0x6
	.string	"_Ifx_P_OMCR12_Bits"
	.byte	0x4
	.byte	0x4
	.byte	0xf3
	.uaword	0xdd9
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x4
	.byte	0xf5
	.uaword	0x272
	.byte	0x4
	.byte	0x1c
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.string	"PCL12"
	.byte	0x4
	.byte	0xf6
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x7
	.string	"PCL13"
	.byte	0x4
	.byte	0xf7
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.string	"PCL14"
	.byte	0x4
	.byte	0xf8
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.string	"PCL15"
	.byte	0x4
	.byte	0xf9
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_OMCR12_Bits"
	.byte	0x4
	.byte	0xfa
	.uaword	0xd6a
	.uleb128 0x6
	.string	"_Ifx_P_OMCR4_Bits"
	.byte	0x4
	.byte	0x4
	.byte	0xfd
	.uaword	0xe70
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x4
	.byte	0xff
	.uaword	0x272
	.byte	0x4
	.byte	0x14
	.byte	0xc
	.byte	0
	.uleb128 0x9
	.string	"PCL4"
	.byte	0x4
	.uahalf	0x100
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0x9
	.string	"PCL5"
	.byte	0x4
	.uahalf	0x101
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0x9
	.string	"PCL6"
	.byte	0x4
	.uahalf	0x102
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0x9
	.string	"PCL7"
	.byte	0x4
	.uahalf	0x103
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.uaword	.LASF3
	.byte	0x4
	.uahalf	0x104
	.uaword	0x272
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_P_OMCR4_Bits"
	.byte	0x4
	.uahalf	0x105
	.uaword	0xdf2
	.uleb128 0xc
	.string	"_Ifx_P_OMCR8_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x108
	.uaword	0xf0b
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x4
	.uahalf	0x10a
	.uaword	0x272
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.string	"PCL8"
	.byte	0x4
	.uahalf	0x10b
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x9
	.string	"PCL9"
	.byte	0x4
	.uahalf	0x10c
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x9
	.string	"PCL10"
	.byte	0x4
	.uahalf	0x10d
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x9
	.string	"PCL11"
	.byte	0x4
	.uahalf	0x10e
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.uaword	.LASF6
	.byte	0x4
	.uahalf	0x10f
	.uaword	0x272
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_P_OMCR8_Bits"
	.byte	0x4
	.uahalf	0x110
	.uaword	0xe89
	.uleb128 0xc
	.string	"_Ifx_P_OMCR_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x113
	.uaword	0x1065
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x4
	.uahalf	0x115
	.uaword	0x272
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.string	"PCL0"
	.byte	0x4
	.uahalf	0x116
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x9
	.string	"PCL1"
	.byte	0x4
	.uahalf	0x117
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0x9
	.string	"PCL2"
	.byte	0x4
	.uahalf	0x118
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0x9
	.string	"PCL3"
	.byte	0x4
	.uahalf	0x119
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x9
	.string	"PCL4"
	.byte	0x4
	.uahalf	0x11a
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0x9
	.string	"PCL5"
	.byte	0x4
	.uahalf	0x11b
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0x9
	.string	"PCL6"
	.byte	0x4
	.uahalf	0x11c
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0x9
	.string	"PCL7"
	.byte	0x4
	.uahalf	0x11d
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.string	"PCL8"
	.byte	0x4
	.uahalf	0x11e
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x9
	.string	"PCL9"
	.byte	0x4
	.uahalf	0x11f
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x9
	.string	"PCL10"
	.byte	0x4
	.uahalf	0x120
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x9
	.string	"PCL11"
	.byte	0x4
	.uahalf	0x121
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x9
	.string	"PCL12"
	.byte	0x4
	.uahalf	0x122
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x9
	.string	"PCL13"
	.byte	0x4
	.uahalf	0x123
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.string	"PCL14"
	.byte	0x4
	.uahalf	0x124
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.string	"PCL15"
	.byte	0x4
	.uahalf	0x125
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_P_OMCR_Bits"
	.byte	0x4
	.uahalf	0x126
	.uaword	0xf24
	.uleb128 0xc
	.string	"_Ifx_P_OMR_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x129
	.uaword	0x12b3
	.uleb128 0x9
	.string	"PS0"
	.byte	0x4
	.uahalf	0x12b
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x9
	.string	"PS1"
	.byte	0x4
	.uahalf	0x12c
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x9
	.string	"PS2"
	.byte	0x4
	.uahalf	0x12d
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x9
	.string	"PS3"
	.byte	0x4
	.uahalf	0x12e
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x9
	.string	"PS4"
	.byte	0x4
	.uahalf	0x12f
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x9
	.string	"PS5"
	.byte	0x4
	.uahalf	0x130
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x9
	.string	"PS6"
	.byte	0x4
	.uahalf	0x131
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x9
	.string	"PS7"
	.byte	0x4
	.uahalf	0x132
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x9
	.string	"PS8"
	.byte	0x4
	.uahalf	0x133
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x9
	.string	"PS9"
	.byte	0x4
	.uahalf	0x134
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x9
	.string	"PS10"
	.byte	0x4
	.uahalf	0x135
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x9
	.string	"PS11"
	.byte	0x4
	.uahalf	0x136
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x9
	.string	"PS12"
	.byte	0x4
	.uahalf	0x137
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x9
	.string	"PS13"
	.byte	0x4
	.uahalf	0x138
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x9
	.string	"PS14"
	.byte	0x4
	.uahalf	0x139
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x9
	.string	"PS15"
	.byte	0x4
	.uahalf	0x13a
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.string	"PCL0"
	.byte	0x4
	.uahalf	0x13b
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x9
	.string	"PCL1"
	.byte	0x4
	.uahalf	0x13c
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0x9
	.string	"PCL2"
	.byte	0x4
	.uahalf	0x13d
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0x9
	.string	"PCL3"
	.byte	0x4
	.uahalf	0x13e
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x9
	.string	"PCL4"
	.byte	0x4
	.uahalf	0x13f
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0x9
	.string	"PCL5"
	.byte	0x4
	.uahalf	0x140
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0x9
	.string	"PCL6"
	.byte	0x4
	.uahalf	0x141
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0x9
	.string	"PCL7"
	.byte	0x4
	.uahalf	0x142
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.string	"PCL8"
	.byte	0x4
	.uahalf	0x143
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x9
	.string	"PCL9"
	.byte	0x4
	.uahalf	0x144
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x9
	.string	"PCL10"
	.byte	0x4
	.uahalf	0x145
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x9
	.string	"PCL11"
	.byte	0x4
	.uahalf	0x146
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x9
	.string	"PCL12"
	.byte	0x4
	.uahalf	0x147
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x9
	.string	"PCL13"
	.byte	0x4
	.uahalf	0x148
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.string	"PCL14"
	.byte	0x4
	.uahalf	0x149
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.string	"PCL15"
	.byte	0x4
	.uahalf	0x14a
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_P_OMR_Bits"
	.byte	0x4
	.uahalf	0x14b
	.uaword	0x107d
	.uleb128 0xc
	.string	"_Ifx_P_OMSR0_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x14e
	.uaword	0x133d
	.uleb128 0x9
	.string	"PS0"
	.byte	0x4
	.uahalf	0x150
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x9
	.string	"PS1"
	.byte	0x4
	.uahalf	0x151
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x9
	.string	"PS2"
	.byte	0x4
	.uahalf	0x152
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x9
	.string	"PS3"
	.byte	0x4
	.uahalf	0x153
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x9
	.string	"reserved_4"
	.byte	0x4
	.uahalf	0x154
	.uaword	0x272
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_P_OMSR0_Bits"
	.byte	0x4
	.uahalf	0x155
	.uaword	0x12ca
	.uleb128 0xc
	.string	"_Ifx_P_OMSR12_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x158
	.uaword	0x13d7
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x4
	.uahalf	0x15a
	.uaword	0x272
	.byte	0x4
	.byte	0xc
	.byte	0x14
	.byte	0
	.uleb128 0x9
	.string	"PS12"
	.byte	0x4
	.uahalf	0x15b
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x9
	.string	"PS13"
	.byte	0x4
	.uahalf	0x15c
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x9
	.string	"PS14"
	.byte	0x4
	.uahalf	0x15d
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x9
	.string	"PS15"
	.byte	0x4
	.uahalf	0x15e
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.uaword	.LASF1
	.byte	0x4
	.uahalf	0x15f
	.uaword	0x272
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_P_OMSR12_Bits"
	.byte	0x4
	.uahalf	0x160
	.uaword	0x1356
	.uleb128 0xc
	.string	"_Ifx_P_OMSR4_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x163
	.uaword	0x146d
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x4
	.uahalf	0x165
	.uaword	0x272
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0x9
	.string	"PS4"
	.byte	0x4
	.uahalf	0x166
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x9
	.string	"PS5"
	.byte	0x4
	.uahalf	0x167
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x9
	.string	"PS6"
	.byte	0x4
	.uahalf	0x168
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x9
	.string	"PS7"
	.byte	0x4
	.uahalf	0x169
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xa
	.uaword	.LASF2
	.byte	0x4
	.uahalf	0x16a
	.uaword	0x272
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_P_OMSR4_Bits"
	.byte	0x4
	.uahalf	0x16b
	.uaword	0x13f1
	.uleb128 0xc
	.string	"_Ifx_P_OMSR8_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x16e
	.uaword	0x1504
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x4
	.uahalf	0x170
	.uaword	0x272
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x9
	.string	"PS8"
	.byte	0x4
	.uahalf	0x171
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x9
	.string	"PS9"
	.byte	0x4
	.uahalf	0x172
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x9
	.string	"PS10"
	.byte	0x4
	.uahalf	0x173
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x9
	.string	"PS11"
	.byte	0x4
	.uahalf	0x174
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xa
	.uaword	.LASF7
	.byte	0x4
	.uahalf	0x175
	.uaword	0x272
	.byte	0x4
	.byte	0x14
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_P_OMSR8_Bits"
	.byte	0x4
	.uahalf	0x176
	.uaword	0x1486
	.uleb128 0xc
	.string	"_Ifx_P_OMSR_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x179
	.uaword	0x164e
	.uleb128 0x9
	.string	"PS0"
	.byte	0x4
	.uahalf	0x17b
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x9
	.string	"PS1"
	.byte	0x4
	.uahalf	0x17c
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x9
	.string	"PS2"
	.byte	0x4
	.uahalf	0x17d
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x9
	.string	"PS3"
	.byte	0x4
	.uahalf	0x17e
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x9
	.string	"PS4"
	.byte	0x4
	.uahalf	0x17f
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x9
	.string	"PS5"
	.byte	0x4
	.uahalf	0x180
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x9
	.string	"PS6"
	.byte	0x4
	.uahalf	0x181
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x9
	.string	"PS7"
	.byte	0x4
	.uahalf	0x182
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x9
	.string	"PS8"
	.byte	0x4
	.uahalf	0x183
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x9
	.string	"PS9"
	.byte	0x4
	.uahalf	0x184
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x9
	.string	"PS10"
	.byte	0x4
	.uahalf	0x185
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x9
	.string	"PS11"
	.byte	0x4
	.uahalf	0x186
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x9
	.string	"PS12"
	.byte	0x4
	.uahalf	0x187
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x9
	.string	"PS13"
	.byte	0x4
	.uahalf	0x188
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x9
	.string	"PS14"
	.byte	0x4
	.uahalf	0x189
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x9
	.string	"PS15"
	.byte	0x4
	.uahalf	0x18a
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.uaword	.LASF1
	.byte	0x4
	.uahalf	0x18b
	.uaword	0x272
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_P_OMSR_Bits"
	.byte	0x4
	.uahalf	0x18c
	.uaword	0x151d
	.uleb128 0xc
	.string	"_Ifx_P_OUT_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x18f
	.uaword	0x1786
	.uleb128 0x9
	.string	"P0"
	.byte	0x4
	.uahalf	0x191
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x9
	.string	"P1"
	.byte	0x4
	.uahalf	0x192
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x9
	.string	"P2"
	.byte	0x4
	.uahalf	0x193
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x9
	.string	"P3"
	.byte	0x4
	.uahalf	0x194
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x9
	.string	"P4"
	.byte	0x4
	.uahalf	0x195
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x9
	.string	"P5"
	.byte	0x4
	.uahalf	0x196
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x9
	.string	"P6"
	.byte	0x4
	.uahalf	0x197
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x9
	.string	"P7"
	.byte	0x4
	.uahalf	0x198
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x9
	.string	"P8"
	.byte	0x4
	.uahalf	0x199
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x9
	.string	"P9"
	.byte	0x4
	.uahalf	0x19a
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x9
	.string	"P10"
	.byte	0x4
	.uahalf	0x19b
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x9
	.string	"P11"
	.byte	0x4
	.uahalf	0x19c
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x9
	.string	"P12"
	.byte	0x4
	.uahalf	0x19d
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x9
	.string	"P13"
	.byte	0x4
	.uahalf	0x19e
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x9
	.string	"P14"
	.byte	0x4
	.uahalf	0x19f
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x9
	.string	"P15"
	.byte	0x4
	.uahalf	0x1a0
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.uaword	.LASF1
	.byte	0x4
	.uahalf	0x1a1
	.uaword	0x272
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_P_OUT_Bits"
	.byte	0x4
	.uahalf	0x1a2
	.uaword	0x1666
	.uleb128 0xc
	.string	"_Ifx_P_PCSR_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x1a5
	.uaword	0x188a
	.uleb128 0x9
	.string	"SEL0"
	.byte	0x4
	.uahalf	0x1a7
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x9
	.string	"SEL1"
	.byte	0x4
	.uahalf	0x1a8
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x9
	.string	"SEL2"
	.byte	0x4
	.uahalf	0x1a9
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x9
	.string	"SEL3"
	.byte	0x4
	.uahalf	0x1aa
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x9
	.string	"SEL4"
	.byte	0x4
	.uahalf	0x1ab
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x9
	.string	"SEL5"
	.byte	0x4
	.uahalf	0x1ac
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x9
	.string	"SEL6"
	.byte	0x4
	.uahalf	0x1ad
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x9
	.string	"reserved_7"
	.byte	0x4
	.uahalf	0x1ae
	.uaword	0x272
	.byte	0x4
	.byte	0x3
	.byte	0x16
	.byte	0
	.uleb128 0x9
	.string	"SEL10"
	.byte	0x4
	.uahalf	0x1af
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x9
	.string	"SEL11"
	.byte	0x4
	.uahalf	0x1b0
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xa
	.uaword	.LASF7
	.byte	0x4
	.uahalf	0x1b1
	.uaword	0x272
	.byte	0x4
	.byte	0x13
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.string	"LCK"
	.byte	0x4
	.uahalf	0x1b2
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_P_PCSR_Bits"
	.byte	0x4
	.uahalf	0x1b3
	.uaword	0x179d
	.uleb128 0xc
	.string	"_Ifx_P_PDISC_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x1b6
	.uaword	0x19f4
	.uleb128 0x9
	.string	"PDIS0"
	.byte	0x4
	.uahalf	0x1b8
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x9
	.string	"PDIS1"
	.byte	0x4
	.uahalf	0x1b9
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x9
	.string	"PDIS2"
	.byte	0x4
	.uahalf	0x1ba
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x9
	.string	"PDIS3"
	.byte	0x4
	.uahalf	0x1bb
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x9
	.string	"PDIS4"
	.byte	0x4
	.uahalf	0x1bc
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x9
	.string	"PDIS5"
	.byte	0x4
	.uahalf	0x1bd
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x9
	.string	"PDIS6"
	.byte	0x4
	.uahalf	0x1be
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x9
	.string	"PDIS7"
	.byte	0x4
	.uahalf	0x1bf
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x9
	.string	"PDIS8"
	.byte	0x4
	.uahalf	0x1c0
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x9
	.string	"PDIS9"
	.byte	0x4
	.uahalf	0x1c1
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x9
	.string	"PDIS10"
	.byte	0x4
	.uahalf	0x1c2
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x9
	.string	"PDIS11"
	.byte	0x4
	.uahalf	0x1c3
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x9
	.string	"PDIS12"
	.byte	0x4
	.uahalf	0x1c4
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x9
	.string	"PDIS13"
	.byte	0x4
	.uahalf	0x1c5
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x9
	.string	"PDIS14"
	.byte	0x4
	.uahalf	0x1c6
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x9
	.string	"PDIS15"
	.byte	0x4
	.uahalf	0x1c7
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.uaword	.LASF1
	.byte	0x4
	.uahalf	0x1c8
	.uaword	0x272
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_P_PDISC_Bits"
	.byte	0x4
	.uahalf	0x1c9
	.uaword	0x18a2
	.uleb128 0xc
	.string	"_Ifx_P_PDR0_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x1cc
	.uaword	0x1b28
	.uleb128 0x9
	.string	"PD0"
	.byte	0x4
	.uahalf	0x1ce
	.uaword	0x272
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0x9
	.string	"PL0"
	.byte	0x4
	.uahalf	0x1cf
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x9
	.string	"PD1"
	.byte	0x4
	.uahalf	0x1d0
	.uaword	0x272
	.byte	0x4
	.byte	0x3
	.byte	0x19
	.byte	0
	.uleb128 0x9
	.string	"PL1"
	.byte	0x4
	.uahalf	0x1d1
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x9
	.string	"PD2"
	.byte	0x4
	.uahalf	0x1d2
	.uaword	0x272
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0x9
	.string	"PL2"
	.byte	0x4
	.uahalf	0x1d3
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x9
	.string	"PD3"
	.byte	0x4
	.uahalf	0x1d4
	.uaword	0x272
	.byte	0x4
	.byte	0x3
	.byte	0x11
	.byte	0
	.uleb128 0x9
	.string	"PL3"
	.byte	0x4
	.uahalf	0x1d5
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.string	"PD4"
	.byte	0x4
	.uahalf	0x1d6
	.uaword	0x272
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0x9
	.string	"PL4"
	.byte	0x4
	.uahalf	0x1d7
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x9
	.string	"PD5"
	.byte	0x4
	.uahalf	0x1d8
	.uaword	0x272
	.byte	0x4
	.byte	0x3
	.byte	0x9
	.byte	0
	.uleb128 0x9
	.string	"PL5"
	.byte	0x4
	.uahalf	0x1d9
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.string	"PD6"
	.byte	0x4
	.uahalf	0x1da
	.uaword	0x272
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0x9
	.string	"PL6"
	.byte	0x4
	.uahalf	0x1db
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x9
	.string	"PD7"
	.byte	0x4
	.uahalf	0x1dc
	.uaword	0x272
	.byte	0x4
	.byte	0x3
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.string	"PL7"
	.byte	0x4
	.uahalf	0x1dd
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_P_PDR0_Bits"
	.byte	0x4
	.uahalf	0x1de
	.uaword	0x1a0d
	.uleb128 0xc
	.string	"_Ifx_P_PDR1_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x1e1
	.uaword	0x1c67
	.uleb128 0x9
	.string	"PD8"
	.byte	0x4
	.uahalf	0x1e3
	.uaword	0x272
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0x9
	.string	"PL8"
	.byte	0x4
	.uahalf	0x1e4
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x9
	.string	"PD9"
	.byte	0x4
	.uahalf	0x1e5
	.uaword	0x272
	.byte	0x4
	.byte	0x3
	.byte	0x19
	.byte	0
	.uleb128 0x9
	.string	"PL9"
	.byte	0x4
	.uahalf	0x1e6
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x9
	.string	"PD10"
	.byte	0x4
	.uahalf	0x1e7
	.uaword	0x272
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0x9
	.string	"PL10"
	.byte	0x4
	.uahalf	0x1e8
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x9
	.string	"PD11"
	.byte	0x4
	.uahalf	0x1e9
	.uaword	0x272
	.byte	0x4
	.byte	0x3
	.byte	0x11
	.byte	0
	.uleb128 0x9
	.string	"PL11"
	.byte	0x4
	.uahalf	0x1ea
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.string	"PD12"
	.byte	0x4
	.uahalf	0x1eb
	.uaword	0x272
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0x9
	.string	"PL12"
	.byte	0x4
	.uahalf	0x1ec
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x9
	.string	"PD13"
	.byte	0x4
	.uahalf	0x1ed
	.uaword	0x272
	.byte	0x4
	.byte	0x3
	.byte	0x9
	.byte	0
	.uleb128 0x9
	.string	"PL13"
	.byte	0x4
	.uahalf	0x1ee
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.string	"PD14"
	.byte	0x4
	.uahalf	0x1ef
	.uaword	0x272
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0x9
	.string	"PL14"
	.byte	0x4
	.uahalf	0x1f0
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x9
	.string	"PD15"
	.byte	0x4
	.uahalf	0x1f1
	.uaword	0x272
	.byte	0x4
	.byte	0x3
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.string	"PL15"
	.byte	0x4
	.uahalf	0x1f2
	.uaword	0x272
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_P_PDR1_Bits"
	.byte	0x4
	.uahalf	0x1f3
	.uaword	0x1b40
	.uleb128 0xd
	.byte	0x4
	.byte	0x4
	.uahalf	0x1fb
	.uaword	0x1ca7
	.uleb128 0xe
	.string	"U"
	.byte	0x4
	.uahalf	0x1fe
	.uaword	0x272
	.uleb128 0xe
	.string	"I"
	.byte	0x4
	.uahalf	0x200
	.uaword	0x1c7
	.uleb128 0xe
	.string	"B"
	.byte	0x4
	.uahalf	0x202
	.uaword	0x4e0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_P_ACCEN0"
	.byte	0x4
	.uahalf	0x203
	.uaword	0x1c7f
	.uleb128 0xd
	.byte	0x4
	.byte	0x4
	.uahalf	0x206
	.uaword	0x1ce4
	.uleb128 0xe
	.string	"U"
	.byte	0x4
	.uahalf	0x209
	.uaword	0x272
	.uleb128 0xe
	.string	"I"
	.byte	0x4
	.uahalf	0x20b
	.uaword	0x1c7
	.uleb128 0xe
	.string	"B"
	.byte	0x4
	.uahalf	0x20d
	.uaword	0x524
	.byte	0
	.uleb128 0xb
	.string	"Ifx_P_ACCEN1"
	.byte	0x4
	.uahalf	0x20e
	.uaword	0x1cbc
	.uleb128 0xd
	.byte	0x4
	.byte	0x4
	.uahalf	0x211
	.uaword	0x1d21
	.uleb128 0xe
	.string	"U"
	.byte	0x4
	.uahalf	0x214
	.uaword	0x272
	.uleb128 0xe
	.string	"I"
	.byte	0x4
	.uahalf	0x216
	.uaword	0x1c7
	.uleb128 0xe
	.string	"B"
	.byte	0x4
	.uahalf	0x218
	.uaword	0x65b
	.byte	0
	.uleb128 0xb
	.string	"Ifx_P_ESR"
	.byte	0x4
	.uahalf	0x219
	.uaword	0x1cf9
	.uleb128 0xd
	.byte	0x4
	.byte	0x4
	.uahalf	0x21c
	.uaword	0x1d5b
	.uleb128 0xe
	.string	"U"
	.byte	0x4
	.uahalf	0x21f
	.uaword	0x272
	.uleb128 0xe
	.string	"I"
	.byte	0x4
	.uahalf	0x221
	.uaword	0x1c7
	.uleb128 0xe
	.string	"B"
	.byte	0x4
	.uahalf	0x223
	.uaword	0x6c3
	.byte	0
	.uleb128 0xb
	.string	"Ifx_P_ID"
	.byte	0x4
	.uahalf	0x224
	.uaword	0x1d33
	.uleb128 0xd
	.byte	0x4
	.byte	0x4
	.uahalf	0x227
	.uaword	0x1d94
	.uleb128 0xe
	.string	"U"
	.byte	0x4
	.uahalf	0x22a
	.uaword	0x272
	.uleb128 0xe
	.string	"I"
	.byte	0x4
	.uahalf	0x22c
	.uaword	0x1c7
	.uleb128 0xe
	.string	"B"
	.byte	0x4
	.uahalf	0x22e
	.uaword	0x7e5
	.byte	0
	.uleb128 0xb
	.string	"Ifx_P_IN"
	.byte	0x4
	.uahalf	0x22f
	.uaword	0x1d6c
	.uleb128 0xd
	.byte	0x4
	.byte	0x4
	.uahalf	0x232
	.uaword	0x1dcd
	.uleb128 0xe
	.string	"U"
	.byte	0x4
	.uahalf	0x235
	.uaword	0x272
	.uleb128 0xe
	.string	"I"
	.byte	0x4
	.uahalf	0x237
	.uaword	0x1c7
	.uleb128 0xe
	.string	"B"
	.byte	0x4
	.uahalf	0x239
	.uaword	0x88d
	.byte	0
	.uleb128 0xb
	.string	"Ifx_P_IOCR0"
	.byte	0x4
	.uahalf	0x23a
	.uaword	0x1da5
	.uleb128 0xd
	.byte	0x4
	.byte	0x4
	.uahalf	0x23d
	.uaword	0x1e09
	.uleb128 0xe
	.string	"U"
	.byte	0x4
	.uahalf	0x240
	.uaword	0x272
	.uleb128 0xe
	.string	"I"
	.byte	0x4
	.uahalf	0x242
	.uaword	0x1c7
	.uleb128 0xe
	.string	"B"
	.byte	0x4
	.uahalf	0x244
	.uaword	0x93d
	.byte	0
	.uleb128 0xb
	.string	"Ifx_P_IOCR12"
	.byte	0x4
	.uahalf	0x245
	.uaword	0x1de1
	.uleb128 0xd
	.byte	0x4
	.byte	0x4
	.uahalf	0x248
	.uaword	0x1e46
	.uleb128 0xe
	.string	"U"
	.byte	0x4
	.uahalf	0x24b
	.uaword	0x272
	.uleb128 0xe
	.string	"I"
	.byte	0x4
	.uahalf	0x24d
	.uaword	0x1c7
	.uleb128 0xe
	.string	"B"
	.byte	0x4
	.uahalf	0x24f
	.uaword	0x9e9
	.byte	0
	.uleb128 0xb
	.string	"Ifx_P_IOCR4"
	.byte	0x4
	.uahalf	0x250
	.uaword	0x1e1e
	.uleb128 0xd
	.byte	0x4
	.byte	0x4
	.uahalf	0x253
	.uaword	0x1e82
	.uleb128 0xe
	.string	"U"
	.byte	0x4
	.uahalf	0x256
	.uaword	0x272
	.uleb128 0xe
	.string	"I"
	.byte	0x4
	.uahalf	0x258
	.uaword	0x1c7
	.uleb128 0xe
	.string	"B"
	.byte	0x4
	.uahalf	0x25a
	.uaword	0xa96
	.byte	0
	.uleb128 0xb
	.string	"Ifx_P_IOCR8"
	.byte	0x4
	.uahalf	0x25b
	.uaword	0x1e5a
	.uleb128 0xd
	.byte	0x4
	.byte	0x4
	.uahalf	0x25e
	.uaword	0x1ebe
	.uleb128 0xe
	.string	"U"
	.byte	0x4
	.uahalf	0x261
	.uaword	0x272
	.uleb128 0xe
	.string	"I"
	.byte	0x4
	.uahalf	0x263
	.uaword	0x1c7
	.uleb128 0xe
	.string	"B"
	.byte	0x4
	.uahalf	0x265
	.uaword	0xaf6
	.byte	0
	.uleb128 0xb
	.string	"Ifx_P_LPCR0"
	.byte	0x4
	.uahalf	0x266
	.uaword	0x1e96
	.uleb128 0xd
	.byte	0x4
	.byte	0x4
	.uahalf	0x269
	.uaword	0x1f08
	.uleb128 0xe
	.string	"U"
	.byte	0x4
	.uahalf	0x26c
	.uaword	0x272
	.uleb128 0xe
	.string	"I"
	.byte	0x4
	.uahalf	0x26e
	.uaword	0x1c7
	.uleb128 0xe
	.string	"B"
	.byte	0x4
	.uahalf	0x270
	.uaword	0xb56
	.uleb128 0xe
	.string	"B_P21"
	.byte	0x4
	.uahalf	0x272
	.uaword	0xbe6
	.byte	0
	.uleb128 0xb
	.string	"Ifx_P_LPCR1"
	.byte	0x4
	.uahalf	0x273
	.uaword	0x1ed2
	.uleb128 0xd
	.byte	0x4
	.byte	0x4
	.uahalf	0x276
	.uaword	0x1f44
	.uleb128 0xe
	.string	"U"
	.byte	0x4
	.uahalf	0x279
	.uaword	0x272
	.uleb128 0xe
	.string	"I"
	.byte	0x4
	.uahalf	0x27b
	.uaword	0x1c7
	.uleb128 0xe
	.string	"B"
	.byte	0x4
	.uahalf	0x27d
	.uaword	0xcc1
	.byte	0
	.uleb128 0xb
	.string	"Ifx_P_LPCR2"
	.byte	0x4
	.uahalf	0x27e
	.uaword	0x1f1c
	.uleb128 0xd
	.byte	0x4
	.byte	0x4
	.uahalf	0x281
	.uaword	0x1f80
	.uleb128 0xe
	.string	"U"
	.byte	0x4
	.uahalf	0x284
	.uaword	0x272
	.uleb128 0xe
	.string	"I"
	.byte	0x4
	.uahalf	0x286
	.uaword	0x1c7
	.uleb128 0xe
	.string	"B"
	.byte	0x4
	.uahalf	0x288
	.uaword	0x1065
	.byte	0
	.uleb128 0xb
	.string	"Ifx_P_OMCR"
	.byte	0x4
	.uahalf	0x289
	.uaword	0x1f58
	.uleb128 0xd
	.byte	0x4
	.byte	0x4
	.uahalf	0x28c
	.uaword	0x1fbb
	.uleb128 0xe
	.string	"U"
	.byte	0x4
	.uahalf	0x28f
	.uaword	0x272
	.uleb128 0xe
	.string	"I"
	.byte	0x4
	.uahalf	0x291
	.uaword	0x1c7
	.uleb128 0xe
	.string	"B"
	.byte	0x4
	.uahalf	0x293
	.uaword	0xd52
	.byte	0
	.uleb128 0xb
	.string	"Ifx_P_OMCR0"
	.byte	0x4
	.uahalf	0x294
	.uaword	0x1f93
	.uleb128 0xd
	.byte	0x4
	.byte	0x4
	.uahalf	0x297
	.uaword	0x1ff7
	.uleb128 0xe
	.string	"U"
	.byte	0x4
	.uahalf	0x29a
	.uaword	0x272
	.uleb128 0xe
	.string	"I"
	.byte	0x4
	.uahalf	0x29c
	.uaword	0x1c7
	.uleb128 0xe
	.string	"B"
	.byte	0x4
	.uahalf	0x29e
	.uaword	0xdd9
	.byte	0
	.uleb128 0xb
	.string	"Ifx_P_OMCR12"
	.byte	0x4
	.uahalf	0x29f
	.uaword	0x1fcf
	.uleb128 0xd
	.byte	0x4
	.byte	0x4
	.uahalf	0x2a2
	.uaword	0x2034
	.uleb128 0xe
	.string	"U"
	.byte	0x4
	.uahalf	0x2a5
	.uaword	0x272
	.uleb128 0xe
	.string	"I"
	.byte	0x4
	.uahalf	0x2a7
	.uaword	0x1c7
	.uleb128 0xe
	.string	"B"
	.byte	0x4
	.uahalf	0x2a9
	.uaword	0xe70
	.byte	0
	.uleb128 0xb
	.string	"Ifx_P_OMCR4"
	.byte	0x4
	.uahalf	0x2aa
	.uaword	0x200c
	.uleb128 0xd
	.byte	0x4
	.byte	0x4
	.uahalf	0x2ad
	.uaword	0x2070
	.uleb128 0xe
	.string	"U"
	.byte	0x4
	.uahalf	0x2b0
	.uaword	0x272
	.uleb128 0xe
	.string	"I"
	.byte	0x4
	.uahalf	0x2b2
	.uaword	0x1c7
	.uleb128 0xe
	.string	"B"
	.byte	0x4
	.uahalf	0x2b4
	.uaword	0xf0b
	.byte	0
	.uleb128 0xb
	.string	"Ifx_P_OMCR8"
	.byte	0x4
	.uahalf	0x2b5
	.uaword	0x2048
	.uleb128 0xd
	.byte	0x4
	.byte	0x4
	.uahalf	0x2b8
	.uaword	0x20ac
	.uleb128 0xe
	.string	"U"
	.byte	0x4
	.uahalf	0x2bb
	.uaword	0x272
	.uleb128 0xe
	.string	"I"
	.byte	0x4
	.uahalf	0x2bd
	.uaword	0x1c7
	.uleb128 0xe
	.string	"B"
	.byte	0x4
	.uahalf	0x2bf
	.uaword	0x12b3
	.byte	0
	.uleb128 0xb
	.string	"Ifx_P_OMR"
	.byte	0x4
	.uahalf	0x2c0
	.uaword	0x2084
	.uleb128 0xd
	.byte	0x4
	.byte	0x4
	.uahalf	0x2c3
	.uaword	0x20e6
	.uleb128 0xe
	.string	"U"
	.byte	0x4
	.uahalf	0x2c6
	.uaword	0x272
	.uleb128 0xe
	.string	"I"
	.byte	0x4
	.uahalf	0x2c8
	.uaword	0x1c7
	.uleb128 0xe
	.string	"B"
	.byte	0x4
	.uahalf	0x2ca
	.uaword	0x164e
	.byte	0
	.uleb128 0xb
	.string	"Ifx_P_OMSR"
	.byte	0x4
	.uahalf	0x2cb
	.uaword	0x20be
	.uleb128 0xd
	.byte	0x4
	.byte	0x4
	.uahalf	0x2ce
	.uaword	0x2121
	.uleb128 0xe
	.string	"U"
	.byte	0x4
	.uahalf	0x2d1
	.uaword	0x272
	.uleb128 0xe
	.string	"I"
	.byte	0x4
	.uahalf	0x2d3
	.uaword	0x1c7
	.uleb128 0xe
	.string	"B"
	.byte	0x4
	.uahalf	0x2d5
	.uaword	0x133d
	.byte	0
	.uleb128 0xb
	.string	"Ifx_P_OMSR0"
	.byte	0x4
	.uahalf	0x2d6
	.uaword	0x20f9
	.uleb128 0xd
	.byte	0x4
	.byte	0x4
	.uahalf	0x2d9
	.uaword	0x215d
	.uleb128 0xe
	.string	"U"
	.byte	0x4
	.uahalf	0x2dc
	.uaword	0x272
	.uleb128 0xe
	.string	"I"
	.byte	0x4
	.uahalf	0x2de
	.uaword	0x1c7
	.uleb128 0xe
	.string	"B"
	.byte	0x4
	.uahalf	0x2e0
	.uaword	0x13d7
	.byte	0
	.uleb128 0xb
	.string	"Ifx_P_OMSR12"
	.byte	0x4
	.uahalf	0x2e1
	.uaword	0x2135
	.uleb128 0xd
	.byte	0x4
	.byte	0x4
	.uahalf	0x2e4
	.uaword	0x219a
	.uleb128 0xe
	.string	"U"
	.byte	0x4
	.uahalf	0x2e7
	.uaword	0x272
	.uleb128 0xe
	.string	"I"
	.byte	0x4
	.uahalf	0x2e9
	.uaword	0x1c7
	.uleb128 0xe
	.string	"B"
	.byte	0x4
	.uahalf	0x2eb
	.uaword	0x146d
	.byte	0
	.uleb128 0xb
	.string	"Ifx_P_OMSR4"
	.byte	0x4
	.uahalf	0x2ec
	.uaword	0x2172
	.uleb128 0xd
	.byte	0x4
	.byte	0x4
	.uahalf	0x2ef
	.uaword	0x21d6
	.uleb128 0xe
	.string	"U"
	.byte	0x4
	.uahalf	0x2f2
	.uaword	0x272
	.uleb128 0xe
	.string	"I"
	.byte	0x4
	.uahalf	0x2f4
	.uaword	0x1c7
	.uleb128 0xe
	.string	"B"
	.byte	0x4
	.uahalf	0x2f6
	.uaword	0x1504
	.byte	0
	.uleb128 0xb
	.string	"Ifx_P_OMSR8"
	.byte	0x4
	.uahalf	0x2f7
	.uaword	0x21ae
	.uleb128 0xd
	.byte	0x4
	.byte	0x4
	.uahalf	0x2fa
	.uaword	0x2212
	.uleb128 0xe
	.string	"U"
	.byte	0x4
	.uahalf	0x2fd
	.uaword	0x272
	.uleb128 0xe
	.string	"I"
	.byte	0x4
	.uahalf	0x2ff
	.uaword	0x1c7
	.uleb128 0xe
	.string	"B"
	.byte	0x4
	.uahalf	0x301
	.uaword	0x1786
	.byte	0
	.uleb128 0xb
	.string	"Ifx_P_OUT"
	.byte	0x4
	.uahalf	0x302
	.uaword	0x21ea
	.uleb128 0xd
	.byte	0x4
	.byte	0x4
	.uahalf	0x305
	.uaword	0x224c
	.uleb128 0xe
	.string	"U"
	.byte	0x4
	.uahalf	0x308
	.uaword	0x272
	.uleb128 0xe
	.string	"I"
	.byte	0x4
	.uahalf	0x30a
	.uaword	0x1c7
	.uleb128 0xe
	.string	"B"
	.byte	0x4
	.uahalf	0x30c
	.uaword	0x188a
	.byte	0
	.uleb128 0xb
	.string	"Ifx_P_PCSR"
	.byte	0x4
	.uahalf	0x30d
	.uaword	0x2224
	.uleb128 0xd
	.byte	0x4
	.byte	0x4
	.uahalf	0x310
	.uaword	0x2287
	.uleb128 0xe
	.string	"U"
	.byte	0x4
	.uahalf	0x313
	.uaword	0x272
	.uleb128 0xe
	.string	"I"
	.byte	0x4
	.uahalf	0x315
	.uaword	0x1c7
	.uleb128 0xe
	.string	"B"
	.byte	0x4
	.uahalf	0x317
	.uaword	0x19f4
	.byte	0
	.uleb128 0xb
	.string	"Ifx_P_PDISC"
	.byte	0x4
	.uahalf	0x318
	.uaword	0x225f
	.uleb128 0xd
	.byte	0x4
	.byte	0x4
	.uahalf	0x31b
	.uaword	0x22c3
	.uleb128 0xe
	.string	"U"
	.byte	0x4
	.uahalf	0x31e
	.uaword	0x272
	.uleb128 0xe
	.string	"I"
	.byte	0x4
	.uahalf	0x320
	.uaword	0x1c7
	.uleb128 0xe
	.string	"B"
	.byte	0x4
	.uahalf	0x322
	.uaword	0x1b28
	.byte	0
	.uleb128 0xb
	.string	"Ifx_P_PDR0"
	.byte	0x4
	.uahalf	0x323
	.uaword	0x229b
	.uleb128 0xd
	.byte	0x4
	.byte	0x4
	.uahalf	0x326
	.uaword	0x22fe
	.uleb128 0xe
	.string	"U"
	.byte	0x4
	.uahalf	0x329
	.uaword	0x272
	.uleb128 0xe
	.string	"I"
	.byte	0x4
	.uahalf	0x32b
	.uaword	0x1c7
	.uleb128 0xe
	.string	"B"
	.byte	0x4
	.uahalf	0x32d
	.uaword	0x1c67
	.byte	0
	.uleb128 0xb
	.string	"Ifx_P_PDR1"
	.byte	0x4
	.uahalf	0x32e
	.uaword	0x22d6
	.uleb128 0xf
	.string	"_Ifx_P"
	.uahalf	0x100
	.byte	0x4
	.uahalf	0x339
	.uaword	0x2552
	.uleb128 0x10
	.string	"OUT"
	.byte	0x4
	.uahalf	0x33b
	.uaword	0x2212
	.byte	0
	.uleb128 0x10
	.string	"OMR"
	.byte	0x4
	.uahalf	0x33c
	.uaword	0x20ac
	.byte	0x4
	.uleb128 0x10
	.string	"ID"
	.byte	0x4
	.uahalf	0x33d
	.uaword	0x1d5b
	.byte	0x8
	.uleb128 0x10
	.string	"reserved_C"
	.byte	0x4
	.uahalf	0x33e
	.uaword	0x29e
	.byte	0xc
	.uleb128 0x10
	.string	"IOCR0"
	.byte	0x4
	.uahalf	0x33f
	.uaword	0x1dcd
	.byte	0x10
	.uleb128 0x10
	.string	"IOCR4"
	.byte	0x4
	.uahalf	0x340
	.uaword	0x1e46
	.byte	0x14
	.uleb128 0x10
	.string	"IOCR8"
	.byte	0x4
	.uahalf	0x341
	.uaword	0x1e82
	.byte	0x18
	.uleb128 0x10
	.string	"IOCR12"
	.byte	0x4
	.uahalf	0x342
	.uaword	0x1e09
	.byte	0x1c
	.uleb128 0x11
	.uaword	.LASF5
	.byte	0x4
	.uahalf	0x343
	.uaword	0x29e
	.byte	0x20
	.uleb128 0x10
	.string	"IN"
	.byte	0x4
	.uahalf	0x344
	.uaword	0x1d94
	.byte	0x24
	.uleb128 0x11
	.uaword	.LASF6
	.byte	0x4
	.uahalf	0x345
	.uaword	0x2ae
	.byte	0x28
	.uleb128 0x10
	.string	"PDR0"
	.byte	0x4
	.uahalf	0x346
	.uaword	0x22c3
	.byte	0x40
	.uleb128 0x10
	.string	"PDR1"
	.byte	0x4
	.uahalf	0x347
	.uaword	0x22fe
	.byte	0x44
	.uleb128 0x10
	.string	"reserved_48"
	.byte	0x4
	.uahalf	0x348
	.uaword	0x28e
	.byte	0x48
	.uleb128 0x10
	.string	"ESR"
	.byte	0x4
	.uahalf	0x349
	.uaword	0x1d21
	.byte	0x50
	.uleb128 0x10
	.string	"reserved_54"
	.byte	0x4
	.uahalf	0x34a
	.uaword	0x2be
	.byte	0x54
	.uleb128 0x10
	.string	"PDISC"
	.byte	0x4
	.uahalf	0x34b
	.uaword	0x2287
	.byte	0x60
	.uleb128 0x10
	.string	"PCSR"
	.byte	0x4
	.uahalf	0x34c
	.uaword	0x224c
	.byte	0x64
	.uleb128 0x10
	.string	"reserved_68"
	.byte	0x4
	.uahalf	0x34d
	.uaword	0x28e
	.byte	0x68
	.uleb128 0x10
	.string	"OMSR0"
	.byte	0x4
	.uahalf	0x34e
	.uaword	0x2121
	.byte	0x70
	.uleb128 0x10
	.string	"OMSR4"
	.byte	0x4
	.uahalf	0x34f
	.uaword	0x219a
	.byte	0x74
	.uleb128 0x10
	.string	"OMSR8"
	.byte	0x4
	.uahalf	0x350
	.uaword	0x21d6
	.byte	0x78
	.uleb128 0x10
	.string	"OMSR12"
	.byte	0x4
	.uahalf	0x351
	.uaword	0x215d
	.byte	0x7c
	.uleb128 0x10
	.string	"OMCR0"
	.byte	0x4
	.uahalf	0x352
	.uaword	0x1fbb
	.byte	0x80
	.uleb128 0x10
	.string	"OMCR4"
	.byte	0x4
	.uahalf	0x353
	.uaword	0x2034
	.byte	0x84
	.uleb128 0x10
	.string	"OMCR8"
	.byte	0x4
	.uahalf	0x354
	.uaword	0x2070
	.byte	0x88
	.uleb128 0x10
	.string	"OMCR12"
	.byte	0x4
	.uahalf	0x355
	.uaword	0x1ff7
	.byte	0x8c
	.uleb128 0x10
	.string	"OMSR"
	.byte	0x4
	.uahalf	0x356
	.uaword	0x20e6
	.byte	0x90
	.uleb128 0x10
	.string	"OMCR"
	.byte	0x4
	.uahalf	0x357
	.uaword	0x1f80
	.byte	0x94
	.uleb128 0x10
	.string	"reserved_98"
	.byte	0x4
	.uahalf	0x358
	.uaword	0x28e
	.byte	0x98
	.uleb128 0x10
	.string	"LPCR0"
	.byte	0x4
	.uahalf	0x359
	.uaword	0x1ebe
	.byte	0xa0
	.uleb128 0x10
	.string	"LPCR1"
	.byte	0x4
	.uahalf	0x35a
	.uaword	0x1f08
	.byte	0xa4
	.uleb128 0x10
	.string	"LPCR2"
	.byte	0x4
	.uahalf	0x35b
	.uaword	0x1f44
	.byte	0xa8
	.uleb128 0x10
	.string	"reserved_A4"
	.byte	0x4
	.uahalf	0x35c
	.uaword	0x2552
	.byte	0xac
	.uleb128 0x10
	.string	"ACCEN1"
	.byte	0x4
	.uahalf	0x35d
	.uaword	0x1ce4
	.byte	0xf8
	.uleb128 0x10
	.string	"ACCEN0"
	.byte	0x4
	.uahalf	0x35e
	.uaword	0x1ca7
	.byte	0xfc
	.byte	0
	.uleb128 0x4
	.uaword	0x1ea
	.uaword	0x2562
	.uleb128 0x5
	.uaword	0x282
	.byte	0x4b
	.byte	0
	.uleb128 0xb
	.string	"Ifx_P"
	.byte	0x4
	.uahalf	0x35f
	.uaword	0x2570
	.uleb128 0x12
	.uaword	0x2311
	.uleb128 0x13
	.byte	0x1
	.string	"setBit_GPIO_LCD_ctl"
	.byte	0x1
	.uahalf	0x1e1
	.byte	0x1
	.uaword	0x1c7
	.byte	0x1
	.uaword	0x25be
	.uleb128 0x14
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x1e1
	.uaword	0x1dd
	.uleb128 0x14
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x1e1
	.uaword	0x1dd
	.uleb128 0x15
	.string	"temp"
	.byte	0x1
	.uahalf	0x1f4
	.uaword	0x1dd
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"setBit_GPIO_LCD_bl"
	.byte	0x1
	.uahalf	0x219
	.byte	0x1
	.uaword	0x1c7
	.byte	0x1
	.uaword	0x2606
	.uleb128 0x14
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x219
	.uaword	0x1dd
	.uleb128 0x14
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x219
	.uaword	0x1dd
	.uleb128 0x15
	.string	"temp"
	.byte	0x1
	.uahalf	0x227
	.uaword	0x1dd
	.byte	0
	.uleb128 0x16
	.string	"__nop"
	.byte	0x2
	.uahalf	0x557
	.byte	0x1
	.byte	0x3
	.uleb128 0x17
	.byte	0x1
	.string	"Delay_ms_GPIO"
	.byte	0x1
	.uahalf	0x2bc
	.byte	0x1
	.byte	0x3
	.uaword	0x266e
	.uleb128 0x18
	.string	"tic_ms"
	.byte	0x1
	.uahalf	0x2bc
	.uaword	0x272
	.uleb128 0x15
	.string	"tic_sub1"
	.byte	0x1
	.uahalf	0x2be
	.uaword	0x272
	.uleb128 0x15
	.string	"tic_sub2"
	.byte	0x1
	.uahalf	0x2be
	.uaword	0x272
	.uleb128 0x15
	.string	"tic_sub3"
	.byte	0x1
	.uahalf	0x2be
	.uaword	0x272
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"setWord_GPIO_LCD_d"
	.byte	0x1
	.uahalf	0x1a0
	.byte	0x1
	.uaword	0x208
	.byte	0x1
	.uaword	0x269d
	.uleb128 0x14
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x1a0
	.uaword	0x208
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.string	"setPort_GPIO_LED"
	.byte	0x1
	.byte	0x1d
	.byte	0x1
	.uaword	.LFB196
	.uaword	.LFE196
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x1a
	.byte	0x1
	.string	"setByte_GPIO_LED"
	.byte	0x1
	.byte	0x3d
	.byte	0x1
	.uaword	0x1c7
	.uaword	.LFB197
	.uaword	.LFE197
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x26f5
	.uleb128 0x1b
	.uaword	.LASF9
	.byte	0x1
	.byte	0x3d
	.uaword	0x1dd
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.string	"setBit_GPIO_LED"
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.uaword	0x1c7
	.uaword	.LFB198
	.uaword	.LFE198
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2748
	.uleb128 0x1b
	.uaword	.LASF8
	.byte	0x1
	.byte	0x50
	.uaword	0x1dd
	.byte	0x1
	.byte	0x54
	.uleb128 0x1b
	.uaword	.LASF9
	.byte	0x1
	.byte	0x50
	.uaword	0x1dd
	.byte	0x1
	.byte	0x55
	.uleb128 0x1c
	.string	"temp"
	.byte	0x1
	.byte	0x5e
	.uaword	0x1dd
	.uaword	.LLST0
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.string	"getState_LED"
	.byte	0x1
	.byte	0x7c
	.byte	0x1
	.uaword	0x1c7
	.uaword	.LFB199
	.uaword	.LFE199
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x19
	.byte	0x1
	.string	"setPort_GPIO_PBSW"
	.byte	0x1
	.byte	0xa5
	.byte	0x1
	.uaword	.LFB200
	.uaword	.LFE200
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x1a
	.byte	0x1
	.string	"getState_PBSW"
	.byte	0x1
	.byte	0xb4
	.byte	0x1
	.uaword	0x1c7
	.uaword	.LFB201
	.uaword	.LFE201
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x27bf
	.uleb128 0x1b
	.uaword	.LASF8
	.byte	0x1
	.byte	0xb4
	.uaword	0x1dd
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.string	"config_chip_select_IO"
	.byte	0x1
	.uahalf	0x124
	.byte	0x1
	.uaword	.LFB202
	.uaword	.LFE202
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x1f
	.uaword	0x266e
	.uaword	.LFB205
	.uaword	.LFE205
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2802
	.uleb128 0x20
	.uaword	0x2690
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.string	"setBit_GPIO_LCD_d"
	.byte	0x1
	.uahalf	0x1b4
	.byte	0x1
	.uaword	0x1c7
	.uaword	.LFB206
	.uaword	.LFE206
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x285b
	.uleb128 0x22
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x1b4
	.uaword	0x1dd
	.byte	0x1
	.byte	0x54
	.uleb128 0x22
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x1b4
	.uaword	0x1dd
	.byte	0x1
	.byte	0x55
	.uleb128 0x23
	.string	"temp"
	.byte	0x1
	.uahalf	0x1c2
	.uaword	0x208
	.uaword	.LLST1
	.byte	0
	.uleb128 0x1f
	.uaword	0x2575
	.uaword	.LFB207
	.uaword	.LFE207
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x28ac
	.uleb128 0x20
	.uaword	0x2598
	.byte	0x1
	.byte	0x54
	.uleb128 0x24
	.uaword	0x25a4
	.uaword	.LLST2
	.uleb128 0x25
	.uaword	0x25b0
	.uaword	.LLST3
	.uleb128 0x26
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x24
	.uaword	0x25a4
	.uaword	.LLST4
	.uleb128 0x24
	.uaword	0x2598
	.uaword	.LLST5
	.uleb128 0x26
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x27
	.uaword	0x25b0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.string	"getWord_GPIO_LCD_d"
	.byte	0x1
	.uahalf	0x160
	.byte	0x1
	.uaword	0x208
	.uaword	.LFB204
	.uaword	.LFE204
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2a6c
	.uleb128 0x28
	.uaword	0x2612
	.uaword	.LBB32
	.uaword	.LBE32
	.byte	0x1
	.uahalf	0x16a
	.uaword	0x2928
	.uleb128 0x29
	.uaword	0x262b
	.byte	0xa
	.uleb128 0x2a
	.uaword	.LBB33
	.uaword	.LBE33
	.uleb128 0x25
	.uaword	0x263a
	.uaword	.LLST6
	.uleb128 0x25
	.uaword	0x264b
	.uaword	.LLST7
	.uleb128 0x25
	.uaword	0x265c
	.uaword	.LLST8
	.uleb128 0x2b
	.uaword	0x2606
	.uaword	.LBB34
	.uaword	.LBE34
	.byte	0x1
	.uahalf	0x2c2
	.byte	0
	.byte	0
	.uleb128 0x28
	.uaword	0x2612
	.uaword	.LBB36
	.uaword	.LBE36
	.byte	0x1
	.uahalf	0x17d
	.uaword	0x2974
	.uleb128 0x29
	.uaword	0x262b
	.byte	0xa
	.uleb128 0x2a
	.uaword	.LBB37
	.uaword	.LBE37
	.uleb128 0x27
	.uaword	0x263a
	.uleb128 0x25
	.uaword	0x264b
	.uaword	.LLST9
	.uleb128 0x25
	.uaword	0x265c
	.uaword	.LLST10
	.uleb128 0x2b
	.uaword	0x2606
	.uaword	.LBB38
	.uaword	.LBE38
	.byte	0x1
	.uahalf	0x2c2
	.byte	0
	.byte	0
	.uleb128 0x28
	.uaword	0x2612
	.uaword	.LBB40
	.uaword	.LBE40
	.byte	0x1
	.uahalf	0x184
	.uaword	0x29c3
	.uleb128 0x2c
	.uaword	0x262b
	.uleb128 0x2a
	.uaword	.LBB41
	.uaword	.LBE41
	.uleb128 0x25
	.uaword	0x263a
	.uaword	.LLST11
	.uleb128 0x25
	.uaword	0x264b
	.uaword	.LLST12
	.uleb128 0x25
	.uaword	0x265c
	.uaword	.LLST13
	.uleb128 0x2b
	.uaword	0x2606
	.uaword	.LBB42
	.uaword	.LBE42
	.byte	0x1
	.uahalf	0x2c2
	.byte	0
	.byte	0
	.uleb128 0x28
	.uaword	0x2612
	.uaword	.LBB44
	.uaword	.LBE44
	.byte	0x1
	.uahalf	0x197
	.uaword	0x2a0f
	.uleb128 0x29
	.uaword	0x262b
	.byte	0xa
	.uleb128 0x2a
	.uaword	.LBB45
	.uaword	.LBE45
	.uleb128 0x27
	.uaword	0x263a
	.uleb128 0x25
	.uaword	0x264b
	.uaword	.LLST14
	.uleb128 0x25
	.uaword	0x265c
	.uaword	.LLST15
	.uleb128 0x2b
	.uaword	0x2606
	.uaword	.LBB46
	.uaword	.LBE46
	.byte	0x1
	.uahalf	0x2c2
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uaword	.LVL37
	.uaword	0x2575
	.uaword	0x2a27
	.uleb128 0x2e
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x31
	.uleb128 0x2e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x33
	.byte	0
	.uleb128 0x2d
	.uaword	.LVL38
	.uaword	0x2575
	.uaword	0x2a3f
	.uleb128 0x2e
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x31
	.uleb128 0x2e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x34
	.byte	0
	.uleb128 0x2d
	.uaword	.LVL39
	.uaword	0x2575
	.uaword	0x2a57
	.uleb128 0x2e
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x2e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x35
	.byte	0
	.uleb128 0x2f
	.uaword	.LVL53
	.uaword	0x2575
	.uleb128 0x2e
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x31
	.uleb128 0x2e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x35
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uaword	0x25be
	.uaword	.LFB208
	.uaword	.LFE208
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2abd
	.uleb128 0x20
	.uaword	0x25e0
	.byte	0x1
	.byte	0x54
	.uleb128 0x24
	.uaword	0x25ec
	.uaword	.LLST16
	.uleb128 0x25
	.uaword	0x25f8
	.uaword	.LLST17
	.uleb128 0x26
	.uaword	.Ldebug_ranges0+0x18
	.uleb128 0x24
	.uaword	0x25ec
	.uaword	.LLST18
	.uleb128 0x24
	.uaword	0x25e0
	.uaword	.LLST19
	.uleb128 0x26
	.uaword	.Ldebug_ranges0+0x18
	.uleb128 0x27
	.uaword	0x25f8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x30
	.byte	0x1
	.string	"setPort_GPIO_LCD"
	.byte	0x1
	.uahalf	0x12a
	.byte	0x1
	.uaword	.LFB203
	.uaword	.LFE203
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2bdc
	.uleb128 0x28
	.uaword	0x2612
	.uaword	.LBB54
	.uaword	.LBE54
	.byte	0x1
	.uahalf	0x14c
	.uaword	0x2b33
	.uleb128 0x29
	.uaword	0x262b
	.byte	0xa
	.uleb128 0x2a
	.uaword	.LBB55
	.uaword	.LBE55
	.uleb128 0x25
	.uaword	0x263a
	.uaword	.LLST20
	.uleb128 0x25
	.uaword	0x264b
	.uaword	.LLST21
	.uleb128 0x25
	.uaword	0x265c
	.uaword	.LLST22
	.uleb128 0x2b
	.uaword	0x2606
	.uaword	.LBB56
	.uaword	.LBE56
	.byte	0x1
	.uahalf	0x2c2
	.byte	0
	.byte	0
	.uleb128 0x31
	.uaword	0x266e
	.uaword	.LBB58
	.uaword	.Ldebug_ranges0+0x30
	.byte	0x1
	.uahalf	0x152
	.uaword	0x2b4e
	.uleb128 0x32
	.uaword	0x2690
	.sleb128 -1
	.byte	0
	.uleb128 0x2d
	.uaword	.LVL71
	.uaword	0x2575
	.uaword	0x2b66
	.uleb128 0x2e
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x31
	.uleb128 0x2e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2d
	.uaword	.LVL72
	.uaword	0x2575
	.uaword	0x2b7e
	.uleb128 0x2e
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x31
	.uleb128 0x2e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x2d
	.uaword	.LVL73
	.uaword	0x2575
	.uaword	0x2b96
	.uleb128 0x2e
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x31
	.uleb128 0x2e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x33
	.byte	0
	.uleb128 0x2d
	.uaword	.LVL74
	.uaword	0x2575
	.uaword	0x2bae
	.uleb128 0x2e
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x31
	.uleb128 0x2e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x34
	.byte	0
	.uleb128 0x2d
	.uaword	.LVL75
	.uaword	0x2575
	.uaword	0x2bc6
	.uleb128 0x2e
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x31
	.uleb128 0x2e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x35
	.byte	0
	.uleb128 0x33
	.uaword	.LVL76
	.byte	0x1
	.uaword	0x25be
	.uleb128 0x2e
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x31
	.uleb128 0x2e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x34
	.byte	0
	.byte	0
	.uleb128 0x34
	.byte	0x1
	.string	"getBit_LCD_IRQ"
	.byte	0x1
	.uahalf	0x247
	.byte	0x1
	.uaword	0x1c7
	.uaword	.LFB209
	.uaword	.LFE209
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x30
	.byte	0x1
	.string	"f_Cs"
	.byte	0x1
	.uahalf	0x250
	.byte	0x1
	.uaword	.LFB210
	.uaword	.LFE210
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2c2b
	.uleb128 0x35
	.string	"bit"
	.byte	0x1
	.uahalf	0x250
	.uaword	0x1c7
	.uaword	.LLST23
	.byte	0
	.uleb128 0x30
	.byte	0x1
	.string	"f_Rs"
	.byte	0x1
	.uahalf	0x251
	.byte	0x1
	.uaword	.LFB211
	.uaword	.LFE211
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2c56
	.uleb128 0x35
	.string	"bit"
	.byte	0x1
	.uahalf	0x251
	.uaword	0x1c7
	.uaword	.LLST24
	.byte	0
	.uleb128 0x30
	.byte	0x1
	.string	"f_nWr"
	.byte	0x1
	.uahalf	0x252
	.byte	0x1
	.uaword	.LFB212
	.uaword	.LFE212
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2c82
	.uleb128 0x35
	.string	"bit"
	.byte	0x1
	.uahalf	0x252
	.uaword	0x1c7
	.uaword	.LLST25
	.byte	0
	.uleb128 0x30
	.byte	0x1
	.string	"f_nRd"
	.byte	0x1
	.uahalf	0x253
	.byte	0x1
	.uaword	.LFB213
	.uaword	.LFE213
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2cae
	.uleb128 0x35
	.string	"bit"
	.byte	0x1
	.uahalf	0x253
	.uaword	0x1c7
	.uaword	.LLST26
	.byte	0
	.uleb128 0x30
	.byte	0x1
	.string	"f_reset"
	.byte	0x1
	.uahalf	0x254
	.byte	0x1
	.uaword	.LFB214
	.uaword	.LFE214
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2cdc
	.uleb128 0x35
	.string	"bit"
	.byte	0x1
	.uahalf	0x254
	.uaword	0x1c7
	.uaword	.LLST27
	.byte	0
	.uleb128 0x30
	.byte	0x1
	.string	"f_BLCNT"
	.byte	0x1
	.uahalf	0x255
	.byte	0x1
	.uaword	.LFB215
	.uaword	.LFE215
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2d0a
	.uleb128 0x35
	.string	"bit"
	.byte	0x1
	.uahalf	0x255
	.uaword	0x1c7
	.uaword	.LLST28
	.byte	0
	.uleb128 0x30
	.byte	0x1
	.string	"f_chip_select"
	.byte	0x1
	.uahalf	0x259
	.byte	0x1
	.uaword	.LFB216
	.uaword	.LFE216
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2d3e
	.uleb128 0x35
	.string	"bit"
	.byte	0x1
	.uahalf	0x259
	.uaword	0x1c7
	.uaword	.LLST29
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.string	"setPort_GPIO_dxl"
	.byte	0x1
	.uahalf	0x2ad
	.byte	0x1
	.uaword	.LFB217
	.uaword	.LFE217
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x21
	.byte	0x1
	.string	"setBit_GPIO_dxl"
	.byte	0x1
	.uahalf	0x2ae
	.byte	0x1
	.uaword	0x1c7
	.uaword	.LFB218
	.uaword	.LFE218
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2d98
	.uleb128 0x22
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x2ae
	.uaword	0x1dd
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x1f
	.uaword	0x2612
	.uaword	.LFB219
	.uaword	.LFE219
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2ddf
	.uleb128 0x20
	.uaword	0x262b
	.byte	0x1
	.byte	0x54
	.uleb128 0x25
	.uaword	0x263a
	.uaword	.LLST30
	.uleb128 0x25
	.uaword	0x264b
	.uaword	.LLST31
	.uleb128 0x25
	.uaword	0x265c
	.uaword	.LLST32
	.uleb128 0x2b
	.uaword	0x2606
	.uaword	.LBB64
	.uaword	.LBE64
	.byte	0x1
	.uahalf	0x2c2
	.byte	0
	.uleb128 0x36
	.string	"pGPIO_LED_L"
	.byte	0x1
	.byte	0x13
	.uaword	0x2df7
	.sleb128 -268193024
	.uleb128 0x37
	.uaword	0x2dfc
	.uleb128 0x38
	.byte	0x4
	.uaword	0x2562
	.uleb128 0x36
	.string	"pGPIO_LED_H"
	.byte	0x1
	.byte	0x14
	.uaword	0x2df7
	.sleb128 -268189184
	.uleb128 0x39
	.string	"mask_LED"
	.byte	0x1
	.byte	0x19
	.uaword	0x1dd
	.byte	0x5
	.byte	0x3
	.uaword	mask_LED
	.uleb128 0x36
	.string	"pGPIO_PBSW"
	.byte	0x1
	.byte	0x9e
	.uaword	0x2df7
	.sleb128 -268197888
	.uleb128 0x39
	.string	"mask_PBSW"
	.byte	0x1
	.byte	0xa1
	.uaword	0x1dd
	.byte	0x5
	.byte	0x3
	.uaword	mask_PBSW
	.uleb128 0x3a
	.string	"pGPIO_LCD_d0013"
	.byte	0x1
	.uahalf	0x114
	.uaword	0x2df7
	.sleb128 -268184832
	.uleb128 0x3a
	.string	"pGPIO_LCD_d1415"
	.byte	0x1
	.uahalf	0x115
	.uaword	0x2df7
	.sleb128 -268189696
	.uleb128 0x3a
	.string	"pGPIO_LCD_CTL"
	.byte	0x1
	.uahalf	0x116
	.uaword	0x2df7
	.sleb128 -268189440
	.uleb128 0x3a
	.string	"pGPIO_LCD_BL"
	.byte	0x1
	.uahalf	0x117
	.uaword	0x2df7
	.sleb128 -268185088
	.uleb128 0x3a
	.string	"pGPIO_LCD_IRQ"
	.byte	0x1
	.uahalf	0x118
	.uaword	0x2df7
	.sleb128 -268189696
	.uleb128 0x3a
	.string	"pGPIO_LCD_chip_select"
	.byte	0x1
	.uahalf	0x11b
	.uaword	0x2df7
	.sleb128 -268189696
	.uleb128 0x3b
	.string	"mask_LCD_d"
	.byte	0x1
	.uahalf	0x11f
	.uaword	0x208
	.byte	0x5
	.byte	0x3
	.uaword	mask_LCD_d
	.uleb128 0x3b
	.string	"mask_LCD_ctl"
	.byte	0x1
	.uahalf	0x120
	.uaword	0x1dd
	.byte	0x5
	.byte	0x3
	.uaword	mask_LCD_ctl
	.uleb128 0x3b
	.string	"mask_LCD_bl"
	.byte	0x1
	.uahalf	0x121
	.uaword	0x1dd
	.byte	0x5
	.byte	0x3
	.uaword	mask_LCD_bl
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL2-.Ltext0
	.uaword	.LVL3-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL3-.Ltext0
	.uaword	.LVL4-.Ltext0
	.uahalf	0x5
	.byte	0x31
	.byte	0x74
	.sleb128 0
	.byte	0x24
	.byte	0x9f
	.uaword	.LVL4-.Ltext0
	.uaword	.LVL5-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL6-.Ltext0
	.uaword	.LFE198-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL10-.Ltext0
	.uaword	.LVL11-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL11-.Ltext0
	.uaword	.LVL12-.Ltext0
	.uahalf	0x5
	.byte	0x31
	.byte	0x74
	.sleb128 0
	.byte	0x24
	.byte	0x9f
	.uaword	.LVL12-.Ltext0
	.uaword	.LVL13-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL14-.Ltext0
	.uaword	.LVL15-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL15-.Ltext0
	.uaword	.LFE206-.Ltext0
	.uahalf	0x5
	.byte	0x31
	.byte	0x74
	.sleb128 0
	.byte	0x24
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL16-.Ltext0
	.uaword	.LVL24-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL24-.Ltext0
	.uaword	.LVL25-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL25-.Ltext0
	.uaword	.LVL27-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL27-.Ltext0
	.uaword	.LVL28-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL28-.Ltext0
	.uaword	.LVL30-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL30-.Ltext0
	.uaword	.LVL31-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL31-.Ltext0
	.uaword	.LVL33-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL33-.Ltext0
	.uaword	.LVL34-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL34-.Ltext0
	.uaword	.LVL36-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL36-.Ltext0
	.uaword	.LFE207-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL17-.Ltext0
	.uaword	.LVL20-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL21-.Ltext0
	.uaword	.LVL23-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL23-.Ltext0
	.uaword	.LVL25-.Ltext0
	.uahalf	0x5
	.byte	0x31
	.byte	0x74
	.sleb128 0
	.byte	0x24
	.byte	0x9f
	.uaword	.LVL25-.Ltext0
	.uaword	.LVL26-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL26-.Ltext0
	.uaword	.LVL28-.Ltext0
	.uahalf	0x5
	.byte	0x31
	.byte	0x74
	.sleb128 0
	.byte	0x24
	.byte	0x9f
	.uaword	.LVL28-.Ltext0
	.uaword	.LVL29-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL29-.Ltext0
	.uaword	.LVL31-.Ltext0
	.uahalf	0x5
	.byte	0x31
	.byte	0x74
	.sleb128 0
	.byte	0x24
	.byte	0x9f
	.uaword	.LVL31-.Ltext0
	.uaword	.LVL32-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL32-.Ltext0
	.uaword	.LVL34-.Ltext0
	.uahalf	0x5
	.byte	0x31
	.byte	0x74
	.sleb128 0
	.byte	0x24
	.byte	0x9f
	.uaword	.LVL34-.Ltext0
	.uaword	.LVL35-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL35-.Ltext0
	.uaword	.LFE207-.Ltext0
	.uahalf	0x5
	.byte	0x31
	.byte	0x74
	.sleb128 0
	.byte	0x24
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL18-.Ltext0
	.uaword	.LVL19-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL22-.Ltext0
	.uaword	.LVL24-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL25-.Ltext0
	.uaword	.LVL27-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL28-.Ltext0
	.uaword	.LVL30-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL31-.Ltext0
	.uaword	.LVL33-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL34-.Ltext0
	.uaword	.LVL36-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL18-.Ltext0
	.uaword	.LVL19-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL22-.Ltext0
	.uaword	.LFE207-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL39-.Ltext0
	.uaword	.LVL40-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL40-.Ltext0
	.uaword	.LVL41-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL41-.Ltext0
	.uaword	.LVL42-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL43-.Ltext0
	.uaword	.LVL44-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL44-.Ltext0
	.uaword	.LVL45-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL46-.Ltext0
	.uaword	.LVL47-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL47-.Ltext0
	.uaword	.LVL48-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL48-.Ltext0
	.uaword	.LVL49-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL50-.Ltext0
	.uaword	.LVL51-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL51-.Ltext0
	.uaword	.LVL52-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL54-.Ltext0
	.uaword	.LVL57-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL57-.Ltext0
	.uaword	.LVL58-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL58-.Ltext0
	.uaword	.LVL62-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL62-.Ltext0
	.uaword	.LFE208-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL55-.Ltext0
	.uaword	.LVL59-.Ltext0
	.uahalf	0x2
	.byte	0x40
	.byte	0x9f
	.uaword	.LVL60-.Ltext0
	.uaword	.LFE208-.Ltext0
	.uahalf	0x2
	.byte	0x40
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL56-.Ltext0
	.uaword	.LVL57-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL61-.Ltext0
	.uaword	.LVL62-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL56-.Ltext0
	.uaword	.LVL58-.Ltext0
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL61-.Ltext0
	.uaword	.LFE208-.Ltext0
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL63-.Ltext0
	.uaword	.LVL64-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL64-.Ltext0
	.uaword	.LVL67-.Ltext0
	.uahalf	0x5
	.byte	0x3a
	.byte	0x7f
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL67-.Ltext0
	.uaword	.LVL68-.Ltext0
	.uahalf	0x5
	.byte	0x3b
	.byte	0x7f
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL68-.Ltext0
	.uaword	.LVL70-.Ltext0
	.uahalf	0x5
	.byte	0x3a
	.byte	0x7f
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL64-.Ltext0
	.uaword	.LVL65-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL65-.Ltext0
	.uaword	.LVL66-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL77-.Ltext0
	.uaword	.LVL78-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL78-.Ltext0
	.uaword	.LFE210-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL79-.Ltext0
	.uaword	.LVL80-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL80-.Ltext0
	.uaword	.LFE211-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL81-.Ltext0
	.uaword	.LVL82-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL82-.Ltext0
	.uaword	.LFE212-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL83-.Ltext0
	.uaword	.LVL84-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL84-.Ltext0
	.uaword	.LFE213-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL85-.Ltext0
	.uaword	.LVL86-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL86-.Ltext0
	.uaword	.LFE214-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL87-.Ltext0
	.uaword	.LVL88-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL88-.Ltext0
	.uaword	.LFE215-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL89-.Ltext0
	.uaword	.LVL90-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL90-.Ltext0
	.uaword	.LFE216-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL92-.Ltext0
	.uaword	.LVL93-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL96-.Ltext0
	.uaword	.LFE219-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL93-.Ltext0
	.uaword	.LVL94-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL94-.Ltext0
	.uaword	.LVL95-.Ltext0
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
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB28-.Ltext0
	.uaword	.LBE28-.Ltext0
	.uaword	.LBB31-.Ltext0
	.uaword	.LBE31-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB50-.Ltext0
	.uaword	.LBE50-.Ltext0
	.uaword	.LBB53-.Ltext0
	.uaword	.LBE53-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB58-.Ltext0
	.uaword	.LBE58-.Ltext0
	.uaword	.LBB62-.Ltext0
	.uaword	.LBE62-.Ltext0
	.uaword	.LBB63-.Ltext0
	.uaword	.LBE63-.Ltext0
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF9:
	.string	"value"
.LASF0:
	.string	"reserved_0"
.LASF4:
	.string	"reserved_2"
.LASF2:
	.string	"reserved_8"
.LASF7:
	.string	"reserved_12"
.LASF1:
	.string	"reserved_16"
.LASF5:
	.string	"reserved_20"
.LASF3:
	.string	"reserved_24"
.LASF6:
	.string	"reserved_28"
.LASF8:
	.string	"number"
	.ident	"GCC: (HighTec Release HDP-v4.9.1.0-infineon-2.0-df254e8) 4.9.4 build on 2018-04-18"
