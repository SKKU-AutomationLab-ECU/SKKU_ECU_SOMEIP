	.file	"mem.c"
.section .text,"ax",@progbits
.Ltext0:
	.align 1
	.global	mem_init
	.type	mem_init, @function
mem_init:
.LFB1:
	.file 1 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/mem.c"
	.loc 1 275 0
	.loc 1 282 0
	movh	%d15, hi:ram_heap
	addi	%d15, %d15, lo:ram_heap
	add	%d15, 3
	andn	%d15, %d15, ~(-4)
	.loc 1 286 0
	mov	%d2, 0
	.loc 1 282 0
	mov.a	%a15, %d15
	movh.a	%a2, hi:ram
	st.w	[%a2] lo:ram, %d15
.LVL0:
	.loc 1 286 0
	st.h	[%a15] 2, %d2
	.loc 1 285 0
	mov	%d15, 10240
.LVL1:
	.loc 1 287 0
	st.b	[%a15] 4, %d2
	.loc 1 290 0
	mov	%d2, 1
	.loc 1 289 0
	lea	%a2, [%a15] 10240
	movh.a	%a3, hi:ram_end
	st.a	[%a3] lo:ram_end, %a2
	.loc 1 295 0
	movh.a	%a2, hi:lfree
	.loc 1 285 0
	st.h	[%a15]0, %d15
	.loc 1 290 0
	st.b	[%a15] 10244, %d2
	.loc 1 291 0
	st.h	[%a15] 10240, %d15
	.loc 1 292 0
	st.h	[%a15] 10242, %d15
	.loc 1 295 0
	st.a	[%a2] lo:lfree, %a15
	.loc 1 297 0
	movh.a	%a15, hi:lwip_stats
.LVL2:
	lea	%a15, [%a15] lo:lwip_stats
	st.h	[%a15] 172, %d15
	ret
.LFE1:
	.size	mem_init, .-mem_init
.section .rodata,"a",@progbits
.LC0:
	.string	"Assertion \"%s\" failed at line %d in %s\n"
.LC1:
	.string	"mem_free: sanity check alignment"
.LC2:
	.string	"0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/mem.c"
.LC3:
	.string	"mem_free: legal memory"
.LC4:
	.string	"mem_free: mem->used"
.LC5:
	.string	"plug_holes: mem >= ram"
.LC6:
	.string	"plug_holes: mem < ram_end"
.LC7:
	.string	"plug_holes: mem->used == 0"
.LC8:
	.string	"plug_holes: mem->next <= MEM_SIZE_ALIGNED"
.section .text,"ax",@progbits
	.align 1
	.global	mem_free
	.type	mem_free, @function
mem_free:
.LFB2:
	.loc 1 312 0
.LVL3:
	sub.a	%SP, 16
.LCFI0:
	.loc 1 316 0
	jz.a	%a4, .L2
	mov.d	%d15, %a4
	.loc 1 320 0
	and	%d2, %d15, 3
	jnz	%d2, .L28
.LVL4:
.L5:
	.loc 1 322 0
	movh.a	%a15, hi:ram
	ld.w	%d2, [%a15] lo:ram
	jlt.u	%d15, %d2, .L6
	.loc 1 322 0 is_stmt 0 discriminator 2
	movh.a	%a12, hi:ram_end
	ld.w	%d2, [%a12] lo:ram_end
	jge.u	%d15, %d2, .L6
.L7:
	.loc 1 339 0 is_stmt 1
	mov.a	%a2, %d15
	.loc 1 337 0
	add	%d8, %d15, -8
.LVL5:
	.loc 1 339 0
	ld.bu	%d2, [%a2] -4
	jz	%d2, .L29
.L10:
	.loc 1 341 0
	mov	%d2, 0
	mov.a	%a3, %d15
	.loc 1 343 0
	movh.a	%a13, hi:lfree
	.loc 1 341 0
	st.b	[%a3] -4, %d2
	.loc 1 343 0
	ld.w	%d2, [%a13] lo:lfree
	jlt.u	%d8, %d2, .L30
.L11:
	.loc 1 348 0
	movh.a	%a2, hi:lwip_stats
	mov.a	%a3, %d15
	lea	%a2, [%a2] lo:lwip_stats
	ld.h	%d3, [%a2] 174
	ld.h	%d2, [%a3] -8
	ld.w	%d4, [%a15] lo:ram
	sub	%d2, %d3, %d2
	sub	%d5, %d8, %d4
	add	%d2, %d5
	st.h	[%a2] 174, %d2
.LVL6:
.LBB4:
.LBB5:
	.loc 1 241 0
	jlt.u	%d8, %d4, .L31
.L12:
	.loc 1 242 0
	ld.w	%d2, [%a12] lo:ram_end
	jge.u	%d8, %d2, .L32
.L13:
	.loc 1 243 0
	mov.a	%a2, %d15
	ld.bu	%d2, [%a2] -4
	jnz	%d2, .L33
.L14:
	.loc 1 246 0
	mov.a	%a3, %d15
	mov	%d3, 10241
	ld.hu	%d2, [%a3] -8
	jge.u	%d2, %d3, .L34
.L15:
	.loc 1 248 0
	ld.a	%a2, [%a15] lo:ram
	addsc.a	%a15, %a2, %d2, 0
.LVL7:
	.loc 1 249 0
	mov.d	%d2, %a15
	jeq	%d8, %d2, .L16
	ld.bu	%d2, [%a15] 4
	jnz	%d2, .L16
	ld.a	%a3, [%a12] lo:ram_end
	jeq.a	%a15, %a3, .L16
	.loc 1 251 0
	ld.a	%a3, [%a13] lo:lfree
	jeq.a	%a15, %a3, .L35
.L17:
	.loc 1 254 0
	mov.a	%a3, %d15
	ld.hu	%d2, [%a15]0
	st.h	[%a3] -8, %d2
	.loc 1 255 0
	ld.hu	%d2, [%a15]0
	mov.d	%d3, %a2
	addsc.a	%a15, %a2, %d2, 0
.LVL8:
	sub	%d2, %d8, %d3
	st.h	[%a15] 2, %d2
.L16:
	.loc 1 259 0
	mov.a	%a3, %d15
	ld.hu	%d2, [%a3] -6
	addsc.a	%a15, %a2, %d2, 0
.LVL9:
	.loc 1 260 0
	mov.d	%d3, %a15
	jeq	%d8, %d3, .L2
	ld.bu	%d3, [%a15] 4
	jnz	%d3, .L2
	.loc 1 262 0
	ld.w	%d3, [%a13] lo:lfree
	jeq	%d8, %d3, .L36
.L19:
	.loc 1 265 0
	mov.a	%a3, %d15
	ld.hu	%d3, [%a3] -8
	st.h	[%a15]0, %d3
	.loc 1 266 0
	ld.hu	%d15, [%a3] -8
.LVL10:
	addsc.a	%a2, %a2, %d15, 0
	st.h	[%a2] 2, %d2
.LVL11:
.L2:
	ret
.LVL12:
.L6:
.LBE5:
.LBE4:
	.loc 1 322 0 discriminator 3
	movh	%d2, hi:.LC3
	addi	%d2, %d2, lo:.LC3
	movh.a	%a4, hi:.LC0
	lea	%a4, [%a4] lo:.LC0
	st.w	[%SP]0, %d2
	mov	%d2, 323
	st.w	[%SP] 4, %d2
	movh	%d2, hi:.LC2
	addi	%d2, %d2, lo:.LC2
	st.w	[%SP] 8, %d2
	call	Ifx_Lwip_printf
.LVL13:
	.loc 1 325 0 discriminator 3
	ld.w	%d2, [%a15] lo:ram
	jge.u	%d15, %d2, .L8
	.loc 1 330 0
	movh.a	%a15, hi:lwip_stats
	lea	%a15, [%a15] lo:lwip_stats
	ld.h	%d15, [%a15] 180
.LVL14:
	add	%d15, 1
	st.h	[%a15] 180, %d15
	.loc 1 332 0
	ret
.LVL15:
.L8:
	movh.a	%a12, hi:ram_end
	.loc 1 325 0
	ld.w	%d2, [%a12] lo:ram_end
	jlt.u	%d15, %d2, .L7
	.loc 1 330 0
	movh.a	%a15, hi:lwip_stats
	lea	%a15, [%a15] lo:lwip_stats
	ld.h	%d15, [%a15] 180
.LVL16:
	add	%d15, 1
	st.h	[%a15] 180, %d15
	.loc 1 332 0
	ret
.LVL17:
.L28:
	.loc 1 320 0 discriminator 1
	movh	%d2, hi:.LC1
	addi	%d2, %d2, lo:.LC1
	movh.a	%a4, hi:.LC0
	lea	%a4, [%a4] lo:.LC0
	st.w	[%SP]0, %d2
	mov	%d2, 320
	st.w	[%SP] 4, %d2
	movh	%d2, hi:.LC2
	addi	%d2, %d2, lo:.LC2
	st.w	[%SP] 8, %d2
	call	Ifx_Lwip_printf
.LVL18:
	j	.L5
.LVL19:
.L30:
	.loc 1 345 0
	st.w	[%a13] lo:lfree, %d8
	j	.L11
.L29:
	.loc 1 339 0 discriminator 1
	movh	%d2, hi:.LC4
	addi	%d2, %d2, lo:.LC4
	movh.a	%a4, hi:.LC0
	lea	%a4, [%a4] lo:.LC0
	st.w	[%SP]0, %d2
	mov	%d2, 339
	st.w	[%SP] 4, %d2
	movh	%d2, hi:.LC2
	addi	%d2, %d2, lo:.LC2
	st.w	[%SP] 8, %d2
	call	Ifx_Lwip_printf
.LVL20:
	j	.L10
.LVL21:
.L34:
.LBB7:
.LBB6:
	.loc 1 246 0
	movh	%d2, hi:.LC8
	addi	%d2, %d2, lo:.LC8
	movh.a	%a4, hi:.LC0
	lea	%a4, [%a4] lo:.LC0
	st.w	[%SP]0, %d2
	mov	%d2, 246
	st.w	[%SP] 4, %d2
	movh	%d2, hi:.LC2
	addi	%d2, %d2, lo:.LC2
	st.w	[%SP] 8, %d2
	call	Ifx_Lwip_printf
.LVL22:
	mov.a	%a2, %d15
	ld.hu	%d2, [%a2] -8
	j	.L15
.L33:
	.loc 1 243 0
	movh	%d2, hi:.LC7
	addi	%d2, %d2, lo:.LC7
	movh.a	%a4, hi:.LC0
	lea	%a4, [%a4] lo:.LC0
	st.w	[%SP]0, %d2
	mov	%d2, 243
	st.w	[%SP] 4, %d2
	movh	%d2, hi:.LC2
	addi	%d2, %d2, lo:.LC2
	st.w	[%SP] 8, %d2
	call	Ifx_Lwip_printf
.LVL23:
	j	.L14
.L32:
	.loc 1 242 0
	movh	%d2, hi:.LC6
	addi	%d2, %d2, lo:.LC6
	movh.a	%a4, hi:.LC0
	lea	%a4, [%a4] lo:.LC0
	st.w	[%SP]0, %d2
	mov	%d2, 242
	st.w	[%SP] 4, %d2
	movh	%d2, hi:.LC2
	addi	%d2, %d2, lo:.LC2
	st.w	[%SP] 8, %d2
	call	Ifx_Lwip_printf
.LVL24:
	j	.L13
.L31:
	.loc 1 241 0
	movh	%d2, hi:.LC5
	addi	%d2, %d2, lo:.LC5
	movh.a	%a4, hi:.LC0
	lea	%a4, [%a4] lo:.LC0
	st.w	[%SP]0, %d2
	mov	%d2, 241
	st.w	[%SP] 4, %d2
	movh	%d2, hi:.LC2
	addi	%d2, %d2, lo:.LC2
	st.w	[%SP] 8, %d2
	call	Ifx_Lwip_printf
.LVL25:
	j	.L12
.LVL26:
.L36:
	.loc 1 263 0
	movh.a	%a3, hi:lfree
	st.a	[%a3] lo:lfree, %a15
	j	.L19
.LVL27:
.L35:
	.loc 1 252 0
	movh.a	%a3, hi:lfree
	st.w	[%a3] lo:lfree, %d8
	j	.L17
.LBE6:
.LBE7:
.LFE2:
	.size	mem_free, .-mem_free
.section .rodata,"a",@progbits
.LC9:
	.string	"mem_trim: legal memory"
.LC10:
	.string	"mem_trim can only shrink memory"
.section .text,"ax",@progbits
	.align 1
	.global	mem_trim
	.type	mem_trim, @function
mem_trim:
.LFB3:
	.loc 1 370 0
.LVL28:
	.loc 1 379 0
	add	%d4, 3
.LVL29:
	mov.u	%d15, 65532
	and	%d8, %d4, %d15
.LVL30:
	.loc 1 370 0
	sub.a	%SP, 16
.LCFI1:
	.loc 1 381 0
	jlt.u	%d8, 12, .L52
	.loc 1 386 0
	mov	%d15, 10241
	.loc 1 387 0
	mov.a	%a2, 0
	.loc 1 386 0
	jge.u	%d8, %d15, .L58
.LVL31:
.L38:
	.loc 1 390 0
	movh.a	%a15, hi:ram
	ld.w	%d2, [%a15] lo:ram
	mov.d	%d15, %a4
.LVL32:
	jlt.u	%d15, %d2, .L40
.LVL33:
	.loc 1 390 0 is_stmt 0 discriminator 2
	movh.a	%a2, hi:ram_end
	ld.w	%d3, [%a2] lo:ram_end
	jge.u	%d15, %d3, .L40
.L41:
.LVL34:
	.loc 1 407 0 is_stmt 1
	mov.a	%a2, %d15
	.loc 1 403 0
	add	%d3, %d15, -8
.LVL35:
	.loc 1 405 0
	sub	%d2, %d3, %d2
	.loc 1 407 0
	ld.hu	%d4, [%a2] -8
	.loc 1 405 0
	extr.u	%d2, %d2, 0, 16
.LVL36:
	addi	%d3, %d4, -8
.LVL37:
	.loc 1 407 0
	sub	%d3, %d2
	extr.u	%d3, %d3, 0, 16
.LVL38:
	.loc 1 408 0
	jlt.u	%d3, %d8, .L59
	mov.a	%a2, %d15
	.loc 1 413 0
	jeq	%d8, %d3, .L56
	.loc 1 421 0
	ld.a	%a3, [%a15] lo:ram
	addsc.a	%a15, %a3, %d4, 0
.LVL39:
	.loc 1 422 0
	ld.bu	%d5, [%a15] 4
	jnz	%d5, .L45
.LBB8:
	.loc 1 429 0
	movh.a	%a2, hi:lfree
	ld.a	%a4, [%a2] lo:lfree
	addi	%d4, %d8, 8
	.loc 1 428 0
	add	%d4, %d2
	.loc 1 426 0
	ld.hu	%d5, [%a15]0
.LVL40:
	.loc 1 428 0
	extr.u	%d4, %d4, 0, 16
.LVL41:
	.loc 1 429 0
	jeq.a	%a4, %a15, .L46
	addsc.a	%a15, %a3, %d4, 0
.LVL42:
.L47:
	.loc 1 433 0
	mov	%d6, 0
	.loc 1 439 0
	mov.a	%a2, %d15
	.loc 1 435 0
	st.h	[%a15]0, %d5
.LVL43:
	.loc 1 437 0
	st.h	[%a15] 2, %d2
	.loc 1 433 0
	st.b	[%a15] 4, %d6
	.loc 1 439 0
	st.h	[%a2] -8, %d4
	.loc 1 443 0
	ld.hu	%d2, [%a15]0
.LVL44:
	mov	%d5, 10240
.LVL45:
	jeq	%d2, %d5, .L50
	.loc 1 444 0
	addsc.a	%a3, %a3, %d2, 0
	st.h	[%a3] 2, %d4
.LVL46:
.L50:
.LBE8:
	.loc 1 468 0
	movh.a	%a15, hi:lwip_stats
.LVL47:
	lea	%a15, [%a15] lo:lwip_stats
	ld.h	%d2, [%a15] 174
	mov.a	%a2, %d15
	add	%d8, %d2
.LVL48:
	sub	%d3, %d8, %d3
.LVL49:
	st.h	[%a15] 174, %d3
	ret
.LVL50:
.L40:
	.loc 1 390 0 discriminator 3
	movh	%d2, hi:.LC9
	addi	%d2, %d2, lo:.LC9
	movh.a	%a4, hi:.LC0
	lea	%a4, [%a4] lo:.LC0
	st.w	[%SP]0, %d2
	mov	%d2, 391
	st.w	[%SP] 4, %d2
	movh	%d2, hi:.LC2
	addi	%d2, %d2, lo:.LC2
	st.w	[%SP] 8, %d2
	call	Ifx_Lwip_printf
.LVL51:
	.loc 1 393 0 discriminator 3
	ld.w	%d2, [%a15] lo:ram
	jge.u	%d15, %d2, .L42
.L43:
	.loc 1 398 0
	movh.a	%a15, hi:lwip_stats
	lea	%a15, [%a15] lo:lwip_stats
	ld.h	%d2, [%a15] 180
	.loc 1 400 0
	mov.a	%a2, %d15
	.loc 1 398 0
	add	%d2, 1
	st.h	[%a15] 180, %d2
	.loc 1 400 0
	ret
.LVL52:
.L52:
	.loc 1 383 0
	mov	%d8, 12
.LVL53:
	j	.L38
.LVL54:
.L42:
	movh.a	%a2, hi:ram_end
	.loc 1 393 0
	ld.w	%d3, [%a2] lo:ram_end
	jge.u	%d15, %d3, .L43
	j	.L41
.LVL55:
.L56:
	.loc 1 482 0
	ret
.LVL56:
.L45:
	.loc 1 448 0
	addi	%d5, %d8, 20
	mov.a	%a2, %d15
	jlt.u	%d3, %d5, .L56
	addi	%d5, %d8, 8
	.loc 1 456 0
	add	%d5, %d2
	extr.u	%d5, %d5, 0, 16
.LVL57:
	.loc 1 458 0
	movh.a	%a2, hi:lfree
	.loc 1 457 0
	addsc.a	%a15, %a3, %d5, 0
.LVL58:
	.loc 1 458 0
	ld.w	%d6, [%a2] lo:lfree
	mov.d	%d7, %a15
	jge.u	%d7, %d6, .L49
	.loc 1 459 0
	st.a	[%a2] lo:lfree, %a15
.LVL59:
.L49:
	.loc 1 461 0
	mov	%d6, 0
	.loc 1 464 0
	mov.a	%a2, %d15
	.loc 1 462 0
	st.h	[%a15]0, %d4
	.loc 1 463 0
	st.h	[%a15] 2, %d2
	.loc 1 461 0
	st.b	[%a15] 4, %d6
	.loc 1 464 0
	st.h	[%a2] -8, %d5
	.loc 1 465 0
	ld.hu	%d2, [%a15]0
.LVL60:
	mov	%d4, 10240
	jeq	%d2, %d4, .L50
	.loc 1 466 0
	addsc.a	%a3, %a3, %d2, 0
	st.h	[%a3] 2, %d5
	j	.L50
.LVL61:
.L58:
	ret
.LVL62:
.L59:
	.loc 1 408 0 discriminator 1
	movh	%d15, hi:.LC10
.LVL63:
	addi	%d15, %d15, lo:.LC10
	movh.a	%a4, hi:.LC0
	lea	%a4, [%a4] lo:.LC0
	st.w	[%SP]0, %d15
	mov	%d15, 408
	st.w	[%SP] 4, %d15
	movh	%d15, hi:.LC2
	addi	%d15, %d15, lo:.LC2
	st.w	[%SP] 8, %d15
	call	Ifx_Lwip_printf
.LVL64:
	.loc 1 411 0 discriminator 1
	mov.a	%a2, 0
	ret
.LVL65:
.L46:
.LBB9:
	.loc 1 430 0
	addsc.a	%a15, %a3, %d4, 0
.LVL66:
	st.a	[%a2] lo:lfree, %a15
	j	.L47
.LBE9:
.LFE3:
	.size	mem_trim, .-mem_trim
.section .rodata,"a",@progbits
.LC11:
	.string	"mem_malloc: allocated memory not above ram_end."
.LC12:
	.string	"mem_malloc: allocated memory properly aligned."
.LC13:
	.string	"mem_malloc: sanity check alignment"
.section .text,"ax",@progbits
	.align 1
	.global	mem_malloc
	.type	mem_malloc, @function
mem_malloc:
.LFB4:
	.loc 1 495 0
.LVL67:
	sub.a	%SP, 16
.LCFI2:
	.loc 1 504 0
	mov.a	%a2, 0
	.loc 1 503 0
	jz	%d4, .L89
	.loc 1 509 0
	add	%d4, 3
.LVL68:
	mov.u	%d15, 65532
	and	%d4, %d15
.LVL69:
	.loc 1 511 0
	jlt.u	%d4, 12, .L81
	mov	%d3, 10240
	.loc 1 516 0
	mov	%d15, 10241
	sub	%d3, %d4
	jge.u	%d4, %d15, .L89
.LVL70:
.L62:
	.loc 1 532 0
	movh.a	%a4, hi:lfree
	movh.a	%a5, hi:ram
	ld.a	%a3, [%a4] lo:lfree
	ld.a	%a2, [%a5] lo:ram
	sub.a	%a15, %a3, %a2
	mov.d	%d2, %a15
	extr.u	%d15, %d2, 0, 16
.LVL71:
	insert	%d2, %d2, 0, 16, 16
.LVL72:
	jge	%d2, %d3, .L63
.LVL73:
.L78:
	.loc 1 534 0
	addsc.a	%a15, %a2, %d15, 0
.LVL74:
	.loc 1 548 0
	ld.bu	%d5, [%a15] 4
	jnz	%d5, .L64
	.loc 1 549 0 discriminator 1
	ld.hu	%d2, [%a15]0
	addi	%d6, %d2, -8
	sub	%d6, %d15
	.loc 1 548 0 discriminator 1
	jge.u	%d6, %d4, .L95
	.loc 1 549 0
	mov	%d15, %d2
.LVL75:
	.loc 1 532 0
	jlt	%d15, %d3, .L78
.LVL76:
.L63:
	.loc 1 629 0
	movh.a	%a15, hi:lwip_stats
	lea	%a15, [%a15] lo:lwip_stats
	ld.h	%d15, [%a15] 178
	.loc 1 632 0
	mov.a	%a2, 0
	.loc 1 629 0
	add	%d15, 1
	st.h	[%a15] 178, %d15
	.loc 1 632 0
	ret
.LVL77:
.L89:
	.loc 1 633 0
	ret
.LVL78:
.L81:
	mov	%d3, 10228
	.loc 1 513 0
	mov	%d4, 12
.LVL79:
	j	.L62
.LVL80:
.L64:
	ld.hu	%d15, [%a15]0
.LVL81:
	.loc 1 532 0
	jlt	%d15, %d3, .L78
	j	.L63
.LVL82:
.L95:
	.loc 1 553 0
	addi	%d3, %d4, 20
	jge.u	%d6, %d3, .L96
	.loc 1 586 0
	mov	%d3, 1
	.loc 1 587 0
	movh.a	%a2, hi:lwip_stats
	lea	%a2, [%a2] lo:lwip_stats
	.loc 1 586 0
	st.b	[%a15] 4, %d3
	ld.h	%d3, [%a2] 174
	addi	%d6, %d4, 8
	add	%d2, %d3
	.loc 1 587 0
	sub	%d15, %d2, %d15
.LVL83:
	extr.u	%d15, %d15, 0, 16
	ld.hu	%d2, [%a2] 176
	st.h	[%a2] 174, %d15
	jge.u	%d2, %d15, .L69
	.loc 1 587 0 is_stmt 0 discriminator 1
	st.h	[%a2] 176, %d15
.LVL84:
.L69:
	movh.a	%a2, hi:ram_end
	ld.w	%d15, [%a2] lo:ram_end
	.loc 1 592 0 is_stmt 1
	jeq.a	%a3, %a15, .L97
.L79:
	.loc 1 614 0
	mov.d	%d2, %a15
	add	%d2, %d6
	jlt.u	%d15, %d2, .L98
.L76:
	.loc 1 616 0
	mov.d	%d2, %a15
	and	%d15, %d2, 3
	jnz	%d15, .L99
.L77:
	.loc 1 621 0
	lea	%a2, [%a15] 8
	ret
.LVL85:
.L96:
	addi	%d6, %d4, 8
	.loc 1 564 0
	add	%d3, %d15, %d6
	extr.u	%d3, %d3, 0, 16
.LVL86:
	.loc 1 566 0
	addsc.a	%a6, %a2, %d3, 0
.LVL87:
	.loc 1 569 0
	st.h	[%a6] 2, %d15
	.loc 1 572 0
	mov	%d15, 1
.LVL88:
	.loc 1 568 0
	st.h	[%a6]0, %d2
	.loc 1 567 0
	st.b	[%a6] 4, %d5
	.loc 1 571 0
	st.h	[%a15]0, %d3
	.loc 1 572 0
	st.b	[%a15] 4, %d15
	.loc 1 574 0
	ld.hu	%d15, [%a6]0
	mov	%d2, 10240
	jeq	%d15, %d2, .L67
	.loc 1 575 0
	addsc.a	%a2, %a2, %d15, 0
	st.h	[%a2] 2, %d3
.L67:
	.loc 1 577 0
	movh.a	%a2, hi:lwip_stats
	lea	%a2, [%a2] lo:lwip_stats
	ld.h	%d15, [%a2] 174
	addi	%d15, %d15, 8
	add	%d4, %d15
.LVL89:
	extr.u	%d4, %d4, 0, 16
	ld.hu	%d15, [%a2] 176
	st.h	[%a2] 174, %d4
	jge.u	%d15, %d4, .L69
	.loc 1 577 0 is_stmt 0 discriminator 1
	st.h	[%a2] 176, %d4
	j	.L69
.LVL90:
.L99:
	.loc 1 616 0 is_stmt 1 discriminator 1
	movh	%d15, hi:.LC12
	addi	%d15, %d15, lo:.LC12
	movh.a	%a12, hi:.LC0
	lea	%a12, [%a12] lo:.LC0
	st.w	[%SP]0, %d15
	mov	%d15, 617
	mov.aa	%a4, %a12
	st.w	[%SP] 4, %d15
	movh	%d15, hi:.LC2
	addi	%d15, %d15, lo:.LC2
	st.w	[%SP] 8, %d15
	call	Ifx_Lwip_printf
.LVL91:
	.loc 1 618 0 discriminator 1
	movh	%d2, hi:.LC13
	addi	%d2, %d2, lo:.LC13
	st.w	[%SP] 8, %d15
	mov.aa	%a4, %a12
	st.w	[%SP]0, %d2
	mov	%d2, 619
	st.w	[%SP] 4, %d2
	call	Ifx_Lwip_printf
.LVL92:
	j	.L77
.L98:
	.loc 1 614 0 discriminator 1
	movh	%d15, hi:.LC11
	addi	%d15, %d15, lo:.LC11
	movh.a	%a4, hi:.LC0
	lea	%a4, [%a4] lo:.LC0
	st.w	[%SP]0, %d15
	mov	%d15, 615
	st.w	[%SP] 4, %d15
	movh	%d15, hi:.LC2
	addi	%d15, %d15, lo:.LC2
	st.w	[%SP] 8, %d15
	call	Ifx_Lwip_printf
.LVL93:
	j	.L76
.L97:
.LVL94:
.LBB10:
	.loc 1 595 0
	ld.bu	%d2, [%a3] 4
	jz	%d2, .L74
	mov.d	%d2, %a3
	jeq	%d2, %d15, .L73
.LVL95:
	ld.a	%a2, [%a5] lo:ram
	j	.L75
.LVL96:
.L100:
	.loc 1 595 0 is_stmt 0 discriminator 1
	mov.d	%d2, %a3
	jeq	%d2, %d15, .L73
.LVL97:
.L75:
	.loc 1 607 0 is_stmt 1
	ld.hu	%d2, [%a3]0
.LVL98:
	addsc.a	%a3, %a2, %d2, 0
.LVL99:
	.loc 1 595 0
	ld.bu	%d2, [%a3] 4
	jnz	%d2, .L100
.L74:
	.loc 1 609 0
	st.a	[%a4] lo:lfree, %a3
	j	.L79
.LVL100:
.L73:
	st.w	[%a4] lo:lfree, %d15
	j	.L79
.LBE10:
.LFE4:
	.size	mem_malloc, .-mem_malloc
	.align 1
	.global	mem_calloc
	.type	mem_calloc, @function
mem_calloc:
.LFB5:
	.loc 1 647 0
.LVL101:
	.loc 1 651 0
	mul	%d15, %d4, %d5
	extr.u	%d4, %d15, 0, 16
.LVL102:
	call	mem_malloc
.LVL103:
	.loc 1 652 0
	jz.a	%a2, .L102
	.loc 1 654 0
	mov.a	%a15, %d15
	mov.aa	%a3, %a2
	mov	%d2, 0
	j	1f
	0:
	st.b	[%a3+]1, %d2
	1:
	loop	%a15, 0b
.L102:
	.loc 1 657 0
	ret
.LFE5:
	.size	mem_calloc, .-mem_calloc
	.local	lfree
.section .bss,"aw",@nobits
	.align 2
	.type		 lfree,@object
	.size		 lfree,4
lfree:
	.space	4
	.local	ram_end
	.align 2
	.type		 ram_end,@object
	.size		 ram_end,4
ram_end:
	.space	4
	.local	ram
	.align 2
	.type		 ram,@object
	.size		 ram,4
ram:
	.space	4
	.global	ram_heap
	.type	ram_heap, @object
	.size	ram_heap, 10260
ram_heap:
	.zero	10260
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
	.uaword	.LFB1
	.uaword	.LFE1-.LFB1
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB2
	.uaword	.LFE2-.LFB2
	.byte	0x4
	.uaword	.LCFI0-.LFB2
	.byte	0xe
	.uleb128 0x10
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB3
	.uaword	.LFE3-.LFB3
	.byte	0x4
	.uaword	.LCFI1-.LFB3
	.byte	0xe
	.uleb128 0x10
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB4
	.uaword	.LFE4-.LFB4
	.byte	0x4
	.uaword	.LCFI2-.LFB4
	.byte	0xe
	.uleb128 0x10
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB5
	.uaword	.LFE5-.LFB5
	.align 2
.LEFDE8:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "./0_Src/4_McHal/Tricore/Cpu/Std/Platform_Types.h"
	.file 3 "./0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/port/include/arch/cc.h"
	.file 4 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/mem.h"
	.file 5 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/stats.h"
	.file 6 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/memp.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0xb2a
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9."
	.string	"4 build on 2018-04-18 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -msmall-const=8 -mtc161 -g -g -O2 -fno-common -fno-short-enums -fsingle-precision-constant -fstrict-volatile-bitfields"
	.byte	0x1
	.string	"0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/mem.c"
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
	.uleb128 0x3
	.string	"mem_ptr_t"
	.byte	0x3
	.byte	0xe
	.uaword	0x2b8
	.uleb128 0x3
	.string	"mem_size_t"
	.byte	0x4
	.byte	0x4c
	.uaword	0x2ab
	.uleb128 0x7
	.byte	0x4
	.byte	0x6
	.byte	0x2b
	.uaword	0x3b9
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
	.uleb128 0x9
	.string	"stats_proto"
	.byte	0x18
	.byte	0x5
	.byte	0x3a
	.uaword	0x477
	.uleb128 0xa
	.string	"xmit"
	.byte	0x5
	.byte	0x3b
	.uaword	0x2ab
	.byte	0
	.uleb128 0xa
	.string	"recv"
	.byte	0x5
	.byte	0x3c
	.uaword	0x2ab
	.byte	0x2
	.uleb128 0xa
	.string	"fw"
	.byte	0x5
	.byte	0x3d
	.uaword	0x2ab
	.byte	0x4
	.uleb128 0xa
	.string	"drop"
	.byte	0x5
	.byte	0x3e
	.uaword	0x2ab
	.byte	0x6
	.uleb128 0xa
	.string	"chkerr"
	.byte	0x5
	.byte	0x3f
	.uaword	0x2ab
	.byte	0x8
	.uleb128 0xa
	.string	"lenerr"
	.byte	0x5
	.byte	0x40
	.uaword	0x2ab
	.byte	0xa
	.uleb128 0xa
	.string	"memerr"
	.byte	0x5
	.byte	0x41
	.uaword	0x2ab
	.byte	0xc
	.uleb128 0xa
	.string	"rterr"
	.byte	0x5
	.byte	0x42
	.uaword	0x2ab
	.byte	0xe
	.uleb128 0xa
	.string	"proterr"
	.byte	0x5
	.byte	0x43
	.uaword	0x2ab
	.byte	0x10
	.uleb128 0xa
	.string	"opterr"
	.byte	0x5
	.byte	0x44
	.uaword	0x2ab
	.byte	0x12
	.uleb128 0xa
	.string	"err"
	.byte	0x5
	.byte	0x45
	.uaword	0x2ab
	.byte	0x14
	.uleb128 0xa
	.string	"cachehit"
	.byte	0x5
	.byte	0x46
	.uaword	0x2ab
	.byte	0x16
	.byte	0
	.uleb128 0x9
	.string	"stats_mem"
	.byte	0x10
	.byte	0x5
	.byte	0x5a
	.uaword	0x4da
	.uleb128 0xa
	.string	"name"
	.byte	0x5
	.byte	0x5c
	.uaword	0x28a
	.byte	0
	.uleb128 0xa
	.string	"avail"
	.byte	0x5
	.byte	0x5e
	.uaword	0x2ef
	.byte	0x4
	.uleb128 0xa
	.string	"used"
	.byte	0x5
	.byte	0x5f
	.uaword	0x2ef
	.byte	0x6
	.uleb128 0xa
	.string	"max"
	.byte	0x5
	.byte	0x60
	.uaword	0x2ef
	.byte	0x8
	.uleb128 0xa
	.string	"err"
	.byte	0x5
	.byte	0x61
	.uaword	0x2ab
	.byte	0xa
	.uleb128 0xa
	.string	"illegal"
	.byte	0x5
	.byte	0x62
	.uaword	0x2ab
	.byte	0xc
	.byte	0
	.uleb128 0xb
	.string	"stats_"
	.uahalf	0x158
	.byte	0x5
	.byte	0x71
	.uaword	0x560
	.uleb128 0xa
	.string	"link"
	.byte	0x5
	.byte	0x73
	.uaword	0x3b9
	.byte	0
	.uleb128 0xa
	.string	"etharp"
	.byte	0x5
	.byte	0x76
	.uaword	0x3b9
	.byte	0x18
	.uleb128 0xa
	.string	"ip_frag"
	.byte	0x5
	.byte	0x79
	.uaword	0x3b9
	.byte	0x30
	.uleb128 0xa
	.string	"ip"
	.byte	0x5
	.byte	0x7c
	.uaword	0x3b9
	.byte	0x48
	.uleb128 0xa
	.string	"icmp"
	.byte	0x5
	.byte	0x7f
	.uaword	0x3b9
	.byte	0x60
	.uleb128 0xa
	.string	"udp"
	.byte	0x5
	.byte	0x85
	.uaword	0x3b9
	.byte	0x78
	.uleb128 0xa
	.string	"tcp"
	.byte	0x5
	.byte	0x88
	.uaword	0x3b9
	.byte	0x90
	.uleb128 0xa
	.string	"mem"
	.byte	0x5
	.byte	0x8b
	.uaword	0x477
	.byte	0xa8
	.uleb128 0xa
	.string	"memp"
	.byte	0x5
	.byte	0x8e
	.uaword	0x560
	.byte	0xb8
	.byte	0
	.uleb128 0xc
	.uaword	0x477
	.uaword	0x570
	.uleb128 0xd
	.uaword	0x570
	.byte	0x9
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x9
	.string	"mem"
	.byte	0x6
	.byte	0x1
	.byte	0x9c
	.uaword	0x5c0
	.uleb128 0xa
	.string	"next"
	.byte	0x1
	.byte	0x9e
	.uaword	0x2ef
	.byte	0
	.uleb128 0xa
	.string	"prev"
	.byte	0x1
	.byte	0xa0
	.uaword	0x2ef
	.byte	0x2
	.uleb128 0xa
	.string	"used"
	.byte	0x1
	.byte	0xa2
	.uaword	0x29f
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.string	"mem_init"
	.byte	0x1
	.uahalf	0x112
	.byte	0x1
	.uaword	.LFB1
	.uaword	.LFE1
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x5ef
	.uleb128 0xf
	.string	"mem"
	.byte	0x1
	.uahalf	0x114
	.uaword	0x5ef
	.uaword	.LLST0
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x58c
	.uleb128 0x10
	.string	"plug_holes"
	.byte	0x1
	.byte	0xec
	.byte	0x1
	.byte	0x1
	.uaword	0x62d
	.uleb128 0x11
	.string	"mem"
	.byte	0x1
	.byte	0xec
	.uaword	0x5ef
	.uleb128 0x12
	.string	"nmem"
	.byte	0x1
	.byte	0xee
	.uaword	0x5ef
	.uleb128 0x12
	.string	"pmem"
	.byte	0x1
	.byte	0xef
	.uaword	0x5ef
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.string	"mem_free"
	.byte	0x1
	.uahalf	0x137
	.byte	0x1
	.uaword	.LFB2
	.uaword	.LFE2
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x7fc
	.uleb128 0x13
	.string	"rmem"
	.byte	0x1
	.uahalf	0x137
	.uaword	0x29d
	.uaword	.LLST1
	.uleb128 0xf
	.string	"mem"
	.byte	0x1
	.uahalf	0x139
	.uaword	0x5ef
	.uaword	.LLST2
	.uleb128 0x14
	.uaword	0x5f5
	.uaword	.LBB4
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.uahalf	0x15f
	.uaword	0x766
	.uleb128 0x15
	.uaword	0x609
	.uaword	.LLST3
	.uleb128 0x16
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x17
	.uaword	0x614
	.uaword	.LLST4
	.uleb128 0x17
	.uaword	0x620
	.uaword	.LLST5
	.uleb128 0x18
	.uaword	.LVL22
	.uaword	0xb0c
	.uaword	0x6d2
	.uleb128 0x19
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	.LC0
	.uleb128 0x19
	.byte	0x2
	.byte	0x8a
	.sleb128 8
	.byte	0x5
	.byte	0x3
	.uaword	.LC2
	.uleb128 0x19
	.byte	0x2
	.byte	0x8a
	.sleb128 4
	.byte	0x2
	.byte	0x8
	.byte	0xf6
	.uleb128 0x19
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x5
	.byte	0x3
	.uaword	.LC8
	.byte	0
	.uleb128 0x18
	.uaword	.LVL23
	.uaword	0xb0c
	.uaword	0x704
	.uleb128 0x19
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	.LC0
	.uleb128 0x19
	.byte	0x2
	.byte	0x8a
	.sleb128 8
	.byte	0x5
	.byte	0x3
	.uaword	.LC2
	.uleb128 0x19
	.byte	0x2
	.byte	0x8a
	.sleb128 4
	.byte	0x2
	.byte	0x8
	.byte	0xf3
	.uleb128 0x19
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x5
	.byte	0x3
	.uaword	.LC7
	.byte	0
	.uleb128 0x18
	.uaword	.LVL24
	.uaword	0xb0c
	.uaword	0x736
	.uleb128 0x19
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	.LC0
	.uleb128 0x19
	.byte	0x2
	.byte	0x8a
	.sleb128 8
	.byte	0x5
	.byte	0x3
	.uaword	.LC2
	.uleb128 0x19
	.byte	0x2
	.byte	0x8a
	.sleb128 4
	.byte	0x2
	.byte	0x8
	.byte	0xf2
	.uleb128 0x19
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x5
	.byte	0x3
	.uaword	.LC6
	.byte	0
	.uleb128 0x1a
	.uaword	.LVL25
	.uaword	0xb0c
	.uleb128 0x19
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	.LC0
	.uleb128 0x19
	.byte	0x2
	.byte	0x8a
	.sleb128 8
	.byte	0x5
	.byte	0x3
	.uaword	.LC2
	.uleb128 0x19
	.byte	0x2
	.byte	0x8a
	.sleb128 4
	.byte	0x2
	.byte	0x8
	.byte	0xf1
	.uleb128 0x19
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x5
	.byte	0x3
	.uaword	.LC5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
	.uaword	.LVL13
	.uaword	0xb0c
	.uaword	0x799
	.uleb128 0x19
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	.LC0
	.uleb128 0x19
	.byte	0x2
	.byte	0x8a
	.sleb128 8
	.byte	0x5
	.byte	0x3
	.uaword	.LC2
	.uleb128 0x19
	.byte	0x2
	.byte	0x8a
	.sleb128 4
	.byte	0x3
	.byte	0xa
	.uahalf	0x143
	.uleb128 0x19
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x5
	.byte	0x3
	.uaword	.LC3
	.byte	0
	.uleb128 0x18
	.uaword	.LVL18
	.uaword	0xb0c
	.uaword	0x7cc
	.uleb128 0x19
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	.LC0
	.uleb128 0x19
	.byte	0x2
	.byte	0x8a
	.sleb128 8
	.byte	0x5
	.byte	0x3
	.uaword	.LC2
	.uleb128 0x19
	.byte	0x2
	.byte	0x8a
	.sleb128 4
	.byte	0x3
	.byte	0xa
	.uahalf	0x140
	.uleb128 0x19
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x5
	.byte	0x3
	.uaword	.LC1
	.byte	0
	.uleb128 0x1a
	.uaword	.LVL20
	.uaword	0xb0c
	.uleb128 0x19
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	.LC0
	.uleb128 0x19
	.byte	0x2
	.byte	0x8a
	.sleb128 8
	.byte	0x5
	.byte	0x3
	.uaword	.LC2
	.uleb128 0x19
	.byte	0x2
	.byte	0x8a
	.sleb128 4
	.byte	0x3
	.byte	0xa
	.uahalf	0x153
	.uleb128 0x19
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x5
	.byte	0x3
	.uaword	.LC4
	.byte	0
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.string	"mem_trim"
	.byte	0x1
	.uahalf	0x171
	.byte	0x1
	.uaword	0x29d
	.uaword	.LFB3
	.uaword	.LFE3
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x911
	.uleb128 0x13
	.string	"rmem"
	.byte	0x1
	.uahalf	0x171
	.uaword	0x29d
	.uaword	.LLST6
	.uleb128 0x13
	.string	"newsize"
	.byte	0x1
	.uahalf	0x171
	.uaword	0x2ef
	.uaword	.LLST7
	.uleb128 0xf
	.string	"size"
	.byte	0x1
	.uahalf	0x173
	.uaword	0x2ef
	.uaword	.LLST8
	.uleb128 0xf
	.string	"ptr"
	.byte	0x1
	.uahalf	0x174
	.uaword	0x2ef
	.uaword	.LLST9
	.uleb128 0xf
	.string	"ptr2"
	.byte	0x1
	.uahalf	0x174
	.uaword	0x2ef
	.uaword	.LLST10
	.uleb128 0xf
	.string	"mem"
	.byte	0x1
	.uahalf	0x175
	.uaword	0x5ef
	.uaword	.LLST11
	.uleb128 0xf
	.string	"mem2"
	.byte	0x1
	.uahalf	0x175
	.uaword	0x5ef
	.uaword	.LLST12
	.uleb128 0x1c
	.uaword	.Ldebug_ranges0+0x18
	.uaword	0x8b1
	.uleb128 0xf
	.string	"next"
	.byte	0x1
	.uahalf	0x1a8
	.uaword	0x2ef
	.uaword	.LLST13
	.byte	0
	.uleb128 0x18
	.uaword	.LVL51
	.uaword	0xb0c
	.uaword	0x8e4
	.uleb128 0x19
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	.LC0
	.uleb128 0x19
	.byte	0x2
	.byte	0x8a
	.sleb128 8
	.byte	0x5
	.byte	0x3
	.uaword	.LC2
	.uleb128 0x19
	.byte	0x2
	.byte	0x8a
	.sleb128 4
	.byte	0x3
	.byte	0xa
	.uahalf	0x187
	.uleb128 0x19
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x5
	.byte	0x3
	.uaword	.LC9
	.byte	0
	.uleb128 0x1a
	.uaword	.LVL64
	.uaword	0xb0c
	.uleb128 0x19
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	.LC0
	.uleb128 0x19
	.byte	0x2
	.byte	0x8a
	.sleb128 8
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x19
	.byte	0x2
	.byte	0x8a
	.sleb128 4
	.byte	0x3
	.byte	0xa
	.uahalf	0x198
	.uleb128 0x19
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x5
	.byte	0x3
	.uaword	.LC10
	.byte	0
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.string	"mem_malloc"
	.byte	0x1
	.uahalf	0x1ee
	.byte	0x1
	.uaword	0x29d
	.uaword	.LFB4
	.uaword	.LFE4
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xa2d
	.uleb128 0x13
	.string	"size"
	.byte	0x1
	.uahalf	0x1ee
	.uaword	0x2ef
	.uaword	.LLST14
	.uleb128 0xf
	.string	"ptr"
	.byte	0x1
	.uahalf	0x1f0
	.uaword	0x2ef
	.uaword	.LLST15
	.uleb128 0xf
	.string	"ptr2"
	.byte	0x1
	.uahalf	0x1f0
	.uaword	0x2ef
	.uaword	.LLST16
	.uleb128 0xf
	.string	"mem"
	.byte	0x1
	.uahalf	0x1f1
	.uaword	0x5ef
	.uaword	.LLST17
	.uleb128 0xf
	.string	"mem2"
	.byte	0x1
	.uahalf	0x1f1
	.uaword	0x5ef
	.uaword	.LLST18
	.uleb128 0x1d
	.uaword	.LBB10
	.uaword	.LBE10
	.uaword	0x9a6
	.uleb128 0xf
	.string	"cur"
	.byte	0x1
	.uahalf	0x251
	.uaword	0x5ef
	.uaword	.LLST19
	.byte	0
	.uleb128 0x18
	.uaword	.LVL91
	.uaword	0xb0c
	.uaword	0x9d3
	.uleb128 0x19
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0x19
	.byte	0x2
	.byte	0x8a
	.sleb128 8
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x19
	.byte	0x2
	.byte	0x8a
	.sleb128 4
	.byte	0x3
	.byte	0xa
	.uahalf	0x269
	.uleb128 0x19
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x5
	.byte	0x3
	.uaword	.LC12
	.byte	0
	.uleb128 0x18
	.uaword	.LVL92
	.uaword	0xb0c
	.uaword	0xa00
	.uleb128 0x19
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0x19
	.byte	0x2
	.byte	0x8a
	.sleb128 8
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x19
	.byte	0x2
	.byte	0x8a
	.sleb128 4
	.byte	0x3
	.byte	0xa
	.uahalf	0x26b
	.uleb128 0x19
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x5
	.byte	0x3
	.uaword	.LC13
	.byte	0
	.uleb128 0x1a
	.uaword	.LVL93
	.uaword	0xb0c
	.uleb128 0x19
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	.LC0
	.uleb128 0x19
	.byte	0x2
	.byte	0x8a
	.sleb128 8
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x19
	.byte	0x2
	.byte	0x8a
	.sleb128 4
	.byte	0x3
	.byte	0xa
	.uahalf	0x267
	.uleb128 0x19
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x5
	.byte	0x3
	.uaword	.LC11
	.byte	0
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.string	"mem_calloc"
	.byte	0x1
	.uahalf	0x286
	.byte	0x1
	.uaword	0x29d
	.uaword	.LFB5
	.uaword	.LFE5
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xa91
	.uleb128 0x13
	.string	"count"
	.byte	0x1
	.uahalf	0x286
	.uaword	0x2ef
	.uaword	.LLST20
	.uleb128 0x13
	.string	"size"
	.byte	0x1
	.uahalf	0x286
	.uaword	0x2ef
	.uaword	.LLST21
	.uleb128 0x1e
	.string	"p"
	.byte	0x1
	.uahalf	0x288
	.uaword	0x29d
	.byte	0x1
	.byte	0x62
	.uleb128 0x1a
	.uaword	.LVL103
	.uaword	0x911
	.uleb128 0x19
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.string	"ram"
	.byte	0x1
	.byte	0xbb
	.uaword	0xaa2
	.byte	0x5
	.byte	0x3
	.uaword	ram
	.uleb128 0x4
	.byte	0x4
	.uaword	0x29f
	.uleb128 0x1f
	.string	"ram_end"
	.byte	0x1
	.byte	0xbd
	.uaword	0x5ef
	.byte	0x5
	.byte	0x3
	.uaword	ram_end
	.uleb128 0x1f
	.string	"lfree"
	.byte	0x1
	.byte	0xbf
	.uaword	0x5ef
	.byte	0x5
	.byte	0x3
	.uaword	lfree
	.uleb128 0x20
	.string	"lwip_stats"
	.byte	0x5
	.byte	0x95
	.uaword	0x4da
	.byte	0x1
	.byte	0x1
	.uleb128 0xc
	.uaword	0x29f
	.uaword	0xaf5
	.uleb128 0x21
	.uaword	0x570
	.uahalf	0x2813
	.byte	0
	.uleb128 0x22
	.string	"ram_heap"
	.byte	0x1
	.byte	0xb6
	.uaword	0xae4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	ram_heap
	.uleb128 0x23
	.byte	0x1
	.string	"Ifx_Lwip_printf"
	.byte	0x3
	.byte	0x2c
	.byte	0x1
	.uaword	0x2c5
	.byte	0x1
	.uleb128 0x24
	.uaword	0x28a
	.uleb128 0x25
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x20
	.uleb128 0xb
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
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0xa
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
	.uleb128 0x21
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0-.Ltext0
	.uaword	.LVL1-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL1-.Ltext0
	.uaword	.LVL2-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL2-.Ltext0
	.uaword	.LFE1-.Ltext0
	.uahalf	0x5
	.byte	0x3
	.uaword	ram
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL3-.Ltext0
	.uaword	.LVL4-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL4-.Ltext0
	.uaword	.LVL10-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL10-.Ltext0
	.uaword	.LVL11-.Ltext0
	.uahalf	0x3
	.byte	0x78
	.sleb128 8
	.byte	0x9f
	.uaword	.LVL11-.Ltext0
	.uaword	.LVL12-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL12-.Ltext0
	.uaword	.LVL14-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL14-.Ltext0
	.uaword	.LVL15-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL15-.Ltext0
	.uaword	.LVL16-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL16-.Ltext0
	.uaword	.LVL17-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL17-.Ltext0
	.uaword	.LFE2-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL5-.Ltext0
	.uaword	.LVL11-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL19-.Ltext0
	.uaword	.LFE2-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL6-.Ltext0
	.uaword	.LVL11-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL21-.Ltext0
	.uaword	.LFE2-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL7-.Ltext0
	.uaword	.LVL8-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL27-.Ltext0
	.uaword	.LFE2-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL9-.Ltext0
	.uaword	.LVL11-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL26-.Ltext0
	.uaword	.LVL27-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL28-.Ltext0
	.uaword	.LVL33-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL33-.Ltext0
	.uaword	.LVL52-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL52-.Ltext0
	.uaword	.LVL54-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL54-.Ltext0
	.uaword	.LVL61-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL61-.Ltext0
	.uaword	.LVL62-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL62-.Ltext0
	.uaword	.LVL63-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL63-.Ltext0
	.uaword	.LVL64-1-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL64-1-.Ltext0
	.uaword	.LVL65-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL65-.Ltext0
	.uaword	.LFE3-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL28-.Ltext0
	.uaword	.LVL29-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL29-.Ltext0
	.uaword	.LVL30-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL30-.Ltext0
	.uaword	.LVL31-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL31-.Ltext0
	.uaword	.LVL32-.Ltext0
	.uahalf	0x7
	.byte	0x74
	.sleb128 0
	.byte	0xa
	.uahalf	0xfffc
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL32-.Ltext0
	.uaword	.LVL48-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL50-.Ltext0
	.uaword	.LVL53-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL53-.Ltext0
	.uaword	.LVL54-.Ltext0
	.uahalf	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL54-.Ltext0
	.uaword	.LFE3-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL38-.Ltext0
	.uaword	.LVL49-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL55-.Ltext0
	.uaword	.LVL61-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL62-.Ltext0
	.uaword	.LVL64-1-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL65-.Ltext0
	.uaword	.LFE3-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL36-.Ltext0
	.uaword	.LVL44-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL55-.Ltext0
	.uaword	.LVL60-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL62-.Ltext0
	.uaword	.LVL64-1-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL65-.Ltext0
	.uaword	.LFE3-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL41-.Ltext0
	.uaword	.LVL46-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL57-.Ltext0
	.uaword	.LVL61-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL65-.Ltext0
	.uaword	.LFE3-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL34-.Ltext0
	.uaword	.LVL35-.Ltext0
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -8
	.byte	0x9f
	.uaword	.LVL35-.Ltext0
	.uaword	.LVL37-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL37-.Ltext0
	.uaword	.LVL50-.Ltext0
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -8
	.byte	0x9f
	.uaword	.LVL55-.Ltext0
	.uaword	.LVL61-.Ltext0
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -8
	.byte	0x9f
	.uaword	.LVL62-.Ltext0
	.uaword	.LVL63-.Ltext0
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -8
	.byte	0x9f
	.uaword	.LVL63-.Ltext0
	.uaword	.LVL64-1-.Ltext0
	.uahalf	0x3
	.byte	0x82
	.sleb128 -8
	.byte	0x9f
	.uaword	.LVL64-1-.Ltext0
	.uaword	.LVL65-.Ltext0
	.uahalf	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x38
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL65-.Ltext0
	.uaword	.LFE3-.Ltext0
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -8
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL39-.Ltext0
	.uaword	.LVL47-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL56-.Ltext0
	.uaword	.LVL59-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL59-.Ltext0
	.uaword	.LVL61-.Ltext0
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL65-.Ltext0
	.uaword	.LVL66-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL66-.Ltext0
	.uaword	.LFE3-.Ltext0
	.uahalf	0xc
	.byte	0x7f
	.sleb128 -8
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x83
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL40-.Ltext0
	.uaword	.LVL42-.Ltext0
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	.LVL42-.Ltext0
	.uaword	.LVL43-.Ltext0
	.uahalf	0xb
	.byte	0x7f
	.sleb128 -8
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x83
	.sleb128 0
	.byte	0x22
	.uaword	.LVL43-.Ltext0
	.uaword	.LVL45-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL65-.Ltext0
	.uaword	.LVL66-.Ltext0
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	.LVL66-.Ltext0
	.uaword	.LFE3-.Ltext0
	.uahalf	0xb
	.byte	0x7f
	.sleb128 -8
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x83
	.sleb128 0
	.byte	0x22
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL67-.Ltext0
	.uaword	.LVL68-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL68-.Ltext0
	.uaword	.LVL69-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL69-.Ltext0
	.uaword	.LVL77-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL78-.Ltext0
	.uaword	.LVL79-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL80-.Ltext0
	.uaword	.LVL84-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL85-.Ltext0
	.uaword	.LVL89-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL89-.Ltext0
	.uaword	.LVL90-.Ltext0
	.uahalf	0x3
	.byte	0x76
	.sleb128 -8
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL71-.Ltext0
	.uaword	.LVL72-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL72-.Ltext0
	.uaword	.LVL75-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL75-.Ltext0
	.uaword	.LVL76-.Ltext0
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	.LVL80-.Ltext0
	.uaword	.LVL81-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL81-.Ltext0
	.uaword	.LVL82-.Ltext0
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	.LVL82-.Ltext0
	.uaword	.LVL83-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL85-.Ltext0
	.uaword	.LVL88-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL86-.Ltext0
	.uaword	.LVL90-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL74-.Ltext0
	.uaword	.LVL76-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL80-.Ltext0
	.uaword	.LVL90-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL90-.Ltext0
	.uaword	.LVL91-1-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL91-1-.Ltext0
	.uaword	.LFE4-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL87-.Ltext0
	.uaword	.LVL90-.Ltext0
	.uahalf	0x1
	.byte	0x66
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL94-.Ltext0
	.uaword	.LVL95-.Ltext0
	.uahalf	0x1
	.byte	0x63
	.uaword	.LVL95-.Ltext0
	.uaword	.LVL96-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL96-.Ltext0
	.uaword	.LVL97-.Ltext0
	.uahalf	0x1
	.byte	0x63
	.uaword	.LVL97-.Ltext0
	.uaword	.LVL98-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL98-.Ltext0
	.uaword	.LVL100-.Ltext0
	.uahalf	0x1
	.byte	0x63
	.uaword	.LVL100-.Ltext0
	.uaword	.LFE4-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL101-.Ltext0
	.uaword	.LVL102-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL102-.Ltext0
	.uaword	.LFE5-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL101-.Ltext0
	.uaword	.LVL103-1-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL103-1-.Ltext0
	.uaword	.LFE5-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
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
	.uaword	.LBB4-.Ltext0
	.uaword	.LBE4-.Ltext0
	.uaword	.LBB7-.Ltext0
	.uaword	.LBE7-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB8-.Ltext0
	.uaword	.LBE8-.Ltext0
	.uaword	.LBB9-.Ltext0
	.uaword	.LBE9-.Ltext0
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
	.extern	Ifx_Lwip_printf,STT_FUNC,0
	.extern	lwip_stats,STT_OBJECT,344
	.ident	"GCC: (HighTec Release HDP-v4.9.1.0-infineon-2.0-df254e8) 4.9.4 build on 2018-04-18"
