	.file	"IfxFce_Crc.c"
.section .text,"ax",@progbits
.Ltext0:
	.align 1
	.global	IfxFce_Crc_calculateCrc16
	.type	IfxFce_Crc_calculateCrc16, @function
IfxFce_Crc_calculateCrc16:
.LFB201:
	.file 1 "0_Src/4_McHal/Tricore/Fce/Crc/IfxFce_Crc.c"
	.loc 1 37 0
.LVL0:
	.loc 1 43 0
	movh	%d15, 64207
	.loc 1 38 0
	ld.a	%a2, [%a4]0
.LVL1:
	.loc 1 43 0
	addi	%d15, %d15, -13570
	mov.a	%a15, %d4
	st.w	[%a2] 116, %d15
	.loc 1 44 0
	st.w	[%a2] 112, %d15
	.loc 1 45 0
	ld.hu	%d15, [%a4] 8
	st.w	[%a2] 116, %d15
	.loc 1 46 0
	st.w	[%a2] 112, %d4
	.loc 1 49 0
	st.w	[%a2] 120, %d5
.LVL2:
	add.a	%a15, -1
	.loc 1 52 0
	jz	%d4, .L4
.LVL3:
.L5:
	.loc 1 54 0 discriminator 3
	ld.hu	%d15, [%a5]0
	st.w	[%a2] 96, %d15
	add.a	%a5, 2
.LVL4:
	loop	%a15, .L5
.L4:
	.loc 1 57 0
	ld.w	%d2, [%a2] 100
.LVL5:
	.loc 1 59 0
	extr.u	%d2, %d2, 0, 16
.LVL6:
	ret
.LFE201:
	.size	IfxFce_Crc_calculateCrc16, .-IfxFce_Crc_calculateCrc16
	.align 1
	.global	IfxFce_Crc_calculateCrc32
	.type	IfxFce_Crc_calculateCrc32, @function
IfxFce_Crc_calculateCrc32:
.LFB202:
	.loc 1 64 0
.LVL7:
	.loc 1 72 0
	ld.w	%d15, [%a4] 12
	.loc 1 65 0
	ld.a	%a2, [%a4]0
.LVL8:
	.loc 1 72 0
	jnz	%d15, .L10
	.loc 1 74 0
	movh	%d15, 64207
	addi	%d15, %d15, -13570
	.loc 1 80 0
	lea	%a3, [%a2] 32
.LVL9:
	.loc 1 74 0
	st.w	[%a2] 52, %d15
	.loc 1 75 0
	st.w	[%a2] 48, %d15
	.loc 1 76 0
	ld.w	%d15, [%a4] 8
	st.w	[%a2] 52, %d15
	.loc 1 77 0
	st.w	[%a2] 48, %d4
	.loc 1 78 0
	st.w	[%a2] 56, %d5
.L11:
.LVL10:
	mov.a	%a15, %d4
	add.a	%a15, -1
	.loc 1 93 0
	jz	%d4, .L16
.LVL11:
.L18:
	.loc 1 95 0 discriminator 3
	ld.w	%d15, [%a5]0
	st.w	[%a3]0, %d15
	add.a	%a5, 4
.LVL12:
	loop	%a15, .L18
.L16:
	.loc 1 98 0
	ld.w	%d15, [%a4] 12
	jz	%d15, .L22
	.loc 1 104 0
	ld.w	%d2, [%a2] 68
.LVL13:
	.loc 1 108 0
	ret
.LVL14:
.L10:
	.loc 1 84 0
	movh	%d15, 64207
	addi	%d15, %d15, -13570
	.loc 1 90 0
	lea	%a3, [%a2] 64
.LVL15:
	.loc 1 84 0
	st.w	[%a2] 84, %d15
	.loc 1 85 0
	st.w	[%a2] 80, %d15
	.loc 1 86 0
	ld.w	%d15, [%a4] 8
	st.w	[%a2] 84, %d15
	.loc 1 87 0
	st.w	[%a2] 80, %d4
	.loc 1 88 0
	st.w	[%a2] 88, %d5
	j	.L11
.LVL16:
.L22:
	.loc 1 100 0
	ld.w	%d2, [%a2] 36
.LVL17:
	ret
.LFE202:
	.size	IfxFce_Crc_calculateCrc32, .-IfxFce_Crc_calculateCrc32
	.align 1
	.global	IfxFce_Crc_calculateCrc8
	.type	IfxFce_Crc_calculateCrc8, @function
IfxFce_Crc_calculateCrc8:
.LFB203:
	.loc 1 112 0
.LVL18:
	.loc 1 118 0
	movh	%d15, 64207
	.loc 1 113 0
	ld.a	%a2, [%a4]0
.LVL19:
	.loc 1 118 0
	addi	%d15, %d15, -13570
	addsc.a	%a15, %a5, %d4, 0
	st.w	[%a2] 148, %d15
	.loc 1 119 0
	st.w	[%a2] 144, %d15
	.loc 1 120 0
	ld.bu	%d15, [%a4] 8
	st.w	[%a2] 148, %d15
	.loc 1 121 0
	st.w	[%a2] 144, %d4
	mov.d	%d15, %a5
	not	%d15
	.loc 1 124 0
	st.w	[%a2] 152, %d5
.LVL20:
	addsc.a	%a15, %a15, %d15, 0
	.loc 1 129 0
	jz	%d4, .L26
.LVL21:
.L27:
	.loc 1 131 0 discriminator 3
	ld.bu	%d15, [%a5]0
	st.w	[%a2] 128, %d15
.LVL22:
	add.a	%a5, 1
.LVL23:
	loop	%a15, .L27
.LVL24:
.L26:
	.loc 1 134 0
	ld.w	%d2, [%a2] 132
.LVL25:
	.loc 1 136 0
	and	%d2, %d2, 255
.LVL26:
	ret
.LFE203:
	.size	IfxFce_Crc_calculateCrc8, .-IfxFce_Crc_calculateCrc8
	.align 1
	.global	IfxFce_Crc_clearErrorFlags
	.type	IfxFce_Crc_clearErrorFlags, @function
IfxFce_Crc_clearErrorFlags:
.LFB204:
	.loc 1 141 0
.LVL27:
	.loc 1 142 0
	ld.w	%d15, [%a4] 4
	.loc 1 144 0
	ld.a	%a15, [%a4]0
	.loc 1 142 0
	jz	%d15, .L35
	.loc 1 146 0
	jeq	%d15, 1, .L36
.LVL28:
.LBB20:
.LBB21:
	.file 2 "./0_Src/4_McHal/Tricore/Fce/Std/IfxFce.h"
	.loc 2 182 0
	ld.w	%d15, [%a4] 12
	jz	%d15, .L37
	.loc 2 188 0
	mov	%d15, 1
	st.w	[%a15] 76, %d15
.LVL29:
	ret
.LVL30:
.L35:
.LBE21:
.LBE20:
.LBB23:
.LBB24:
	.loc 2 195 0
	mov	%d15, 1
	st.w	[%a15] 140, %d15
	ret
.LVL31:
.L36:
.LBE24:
.LBE23:
.LBB25:
.LBB26:
	.loc 2 176 0
	st.w	[%a15] 108, %d15
	ret
.LVL32:
.L37:
.LBE26:
.LBE25:
.LBB27:
.LBB22:
	.loc 2 184 0
	mov	%d15, 1
.LVL33:
	st.w	[%a15] 44, %d15
.LVL34:
	ret
.LBE22:
.LBE27:
.LFE204:
	.size	IfxFce_Crc_clearErrorFlags, .-IfxFce_Crc_clearErrorFlags
	.align 1
	.global	IfxFce_Crc_deInitModule
	.type	IfxFce_Crc_deInitModule, @function
IfxFce_Crc_deInitModule:
.LFB205:
	.loc 1 158 0
.LVL35:
	.loc 1 159 0
	ld.a	%a4, [%a4]0
.LVL36:
	j	IfxFce_resetModule
.LVL37:
.LFE205:
	.size	IfxFce_Crc_deInitModule, .-IfxFce_Crc_deInitModule
	.align 1
	.global	IfxFce_Crc_getInterruptStatus
	.type	IfxFce_Crc_getInterruptStatus, @function
IfxFce_Crc_getInterruptStatus:
.LFB206:
	.loc 1 164 0
.LVL38:
	.loc 1 165 0
	ld.w	%d15, [%a4] 4
	.loc 1 164 0
	mov.aa	%a15, %a4
	.loc 1 167 0
	ld.a	%a4, [%a4]0
.LVL39:
	.loc 1 165 0
	jz	%d15, .L43
	.loc 1 169 0
	jeq	%d15, 1, .L44
	.loc 1 175 0
	ld.w	%d4, [%a15] 12
	.loc 1 177 0
	j	IfxFce_getCrc32InterruptStatus
.LVL40:
.L43:
	.loc 1 167 0
	j	IfxFce_getCrc8InterruptStatus
.LVL41:
.L44:
	.loc 1 171 0
	j	IfxFce_getCrc16InterruptStatus
.LVL42:
.LFE206:
	.size	IfxFce_Crc_getInterruptStatus, .-IfxFce_Crc_getInterruptStatus
	.align 1
	.global	IfxFce_Crc_initCrc
	.type	IfxFce_Crc_initCrc, @function
IfxFce_Crc_initCrc:
.LFB207:
	.loc 1 181 0
.LVL43:
	.loc 1 182 0
	ld.a	%a13, [%a5]0
	.loc 1 184 0
	ld.w	%d15, [%a5] 12
	st.w	[%a4] 4, %d15
	.loc 1 185 0
	ld.w	%d15, [%a5] 8
	st.w	[%a4] 8, %d15
	.loc 1 182 0
	st.a	[%a4]0, %a13
.LVL44:
	.loc 1 181 0
	mov.aa	%a15, %a5
	mov.aa	%a12, %a4
	.loc 1 187 0
	call	IfxScuWdt_getCpuWatchdogPassword
.LVL45:
	.loc 1 188 0
	mov	%d4, %d2
	.loc 1 187 0
	mov	%d8, %d2
.LVL46:
	.loc 1 188 0
	call	IfxScuWdt_clearCpuEndinit
.LVL47:
	.loc 1 192 0
	ld.bu	%d2, [%a15] 24
	.loc 1 191 0
	mov	%d15, 0
.LVL48:
	.loc 1 192 0
	ins.t	%d15, %d15,0, %d2,0
.LVL49:
	.loc 1 193 0
	ld.bu	%d2, [%a15] 25
	ins.t	%d15, %d15,1, %d2,0
	.loc 1 194 0
	ld.bu	%d2, [%a15] 26
	ins.t	%d15, %d15,2, %d2,0
	.loc 1 195 0
	ld.bu	%d2, [%a15] 27
	ins.t	%d15, %d15,3, %d2,0
	.loc 1 196 0
	ld.bu	%d2, [%a15] 4
	ins.t	%d15, %d15,4, %d2,0
	.loc 1 197 0
	ld.bu	%d2, [%a15] 5
	ins.t	%d15, %d15,5, %d2,0
	.loc 1 198 0
	ld.bu	%d2, [%a15] 6
	ins.t	%d15, %d15,8, %d2,0
	.loc 1 199 0
	ld.bu	%d2, [%a15] 7
	ins.t	%d15, %d15,9, %d2,0
	.loc 1 200 0
	ld.bu	%d2, [%a15] 16
	ins.t	%d15, %d15,10, %d2,0
	.loc 1 202 0
	ld.w	%d2, [%a15] 12
	jz	%d2, .L50
	.loc 1 206 0
	jeq	%d2, 1, .L51
	.loc 1 212 0
	ld.w	%d2, [%a15] 20
	st.w	[%a12] 12, %d2
	.loc 1 214 0
	jz	%d2, .L52
	.loc 1 220 0
	st.w	[%a13] 72, %d15
	.loc 1 224 0
	mov	%d4, %d8
	j	IfxScuWdt_setCpuEndinit
.LVL50:
.L50:
	.loc 1 204 0
	st.w	[%a13] 136, %d15
	.loc 1 224 0
	mov	%d4, %d8
	j	IfxScuWdt_setCpuEndinit
.LVL51:
.L51:
	.loc 1 208 0
	st.w	[%a13] 104, %d15
	.loc 1 224 0
	mov	%d4, %d8
	j	IfxScuWdt_setCpuEndinit
.LVL52:
.L52:
	.loc 1 216 0
	st.w	[%a13] 40, %d15
	.loc 1 224 0
	mov	%d4, %d8
	j	IfxScuWdt_setCpuEndinit
.LVL53:
.LFE207:
	.size	IfxFce_Crc_initCrc, .-IfxFce_Crc_initCrc
	.align 1
	.global	IfxFce_Crc_initCrcConfig
	.type	IfxFce_Crc_initCrcConfig, @function
IfxFce_Crc_initCrcConfig:
.LFB208:
	.loc 1 229 0
.LVL54:
	.loc 1 230 0
	ld.w	%d15, [%a5]0
	st.w	[%a4]0, %d15
	.loc 1 231 0
	mov	%d15, 2
	.loc 1 233 0
	mov	%d2, 0
	.loc 1 231 0
	st.w	[%a4] 12, %d15
	.loc 1 232 0
	mov	%d15, 1
	.loc 1 233 0
	st.b	[%a4] 5, %d2
	.loc 1 237 0
	st.b	[%a4] 24, %d2
	.loc 1 232 0
	st.b	[%a4] 4, %d15
	.loc 1 234 0
	st.b	[%a4] 6, %d15
	.loc 1 235 0
	st.b	[%a4] 7, %d15
	.loc 1 236 0
	st.b	[%a4] 16, %d15
	.loc 1 238 0
	st.b	[%a4] 25, %d15
	.loc 1 239 0
	st.b	[%a4] 26, %d15
	.loc 1 240 0
	st.b	[%a4] 27, %d15
	ret
.LFE208:
	.size	IfxFce_Crc_initCrcConfig, .-IfxFce_Crc_initCrcConfig
	.align 1
	.global	IfxFce_Crc_initModule
	.type	IfxFce_Crc_initModule, @function
IfxFce_Crc_initModule:
.LFB209:
	.loc 1 245 0
.LVL55:
	.loc 1 246 0
	ld.a	%a15, [%a5]0
	.loc 1 245 0
	mov.aa	%a12, %a5
	.loc 1 246 0
	st.a	[%a4]0, %a15
.LVL56:
	.loc 1 249 0
	call	IfxScuWdt_getCpuWatchdogPassword
.LVL57:
	.loc 1 250 0
	mov	%d4, %d2
	.loc 1 249 0
	mov	%d15, %d2
.LVL58:
	.loc 1 250 0
	call	IfxScuWdt_clearCpuEndinit
.LVL59:
.LBB28:
.LBB29:
	.loc 2 201 0
	ld.w	%d2, [%a15]0
.LBE29:
.LBE28:
	.loc 1 252 0
	mov	%d4, %d15
.LBB31:
.LBB30:
	.loc 2 201 0
	andn	%d2, %d2, ~(-2)
	st.w	[%a15]0, %d2
.LBE30:
.LBE31:
.LBB32:
.LBB33:
	.file 3 "./0_Src/4_McHal/Tricore/Src/Std/IfxSrc.h"
	.loc 3 256 0
	movh.a	%a15, 61444
.LVL60:
.LBE33:
.LBE32:
	.loc 1 252 0
	call	IfxScuWdt_setCpuEndinit
.LVL61:
.LBB38:
.LBB36:
	.loc 3 256 0
	lea	%a15, [%a15] -31568
	ld.w	%d2, [%a15]0
	ld.bu	%d3, [%a12] 4
	andn	%d2, %d2, ~(-256)
	or	%d2, %d3
.LBE36:
.LBE38:
	.loc 1 255 0
	ld.w	%d15, [%a12] 8
.LVL62:
.LBB39:
.LBB37:
	.loc 3 256 0
	st.w	[%a15]0, %d2
.LVL63:
	.loc 3 257 0
	ld.w	%d2, [%a15]0
	insert	%d15, %d2, %d15, 11, 2
.LVL64:
	st.w	[%a15]0, %d15
.LVL65:
.LBB34:
.LBB35:
	.loc 3 232 0
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 15, 25, 1
	st.w	[%a15]0, %d15
.LVL66:
.LBE35:
.LBE34:
.LBE37:
.LBE39:
.LBB40:
.LBB41:
	.loc 3 250 0
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 15, 10, 1
	st.w	[%a15]0, %d15
	ret
.LBE41:
.LBE40:
.LFE209:
	.size	IfxFce_Crc_initModule, .-IfxFce_Crc_initModule
	.align 1
	.global	IfxFce_Crc_initModuleConfig
	.type	IfxFce_Crc_initModuleConfig, @function
IfxFce_Crc_initModuleConfig:
.LFB210:
	.loc 1 261 0
.LVL67:
	.loc 1 263 0
	mov	%d15, 0
	.loc 1 262 0
	st.a	[%a4]0, %a5
	.loc 1 263 0
	st.h	[%a4] 4, %d15
	.loc 1 264 0
	mov	%d15, 0
	st.w	[%a4] 8, %d15
	ret
.LFE210:
	.size	IfxFce_Crc_initModuleConfig, .-IfxFce_Crc_initModuleConfig
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
	.uaword	.LFB201
	.uaword	.LFE201-.LFB201
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB202
	.uaword	.LFE202-.LFB202
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB203
	.uaword	.LFE203-.LFB203
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB204
	.uaword	.LFE204-.LFB204
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB205
	.uaword	.LFE205-.LFB205
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB206
	.uaword	.LFE206-.LFB206
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB207
	.uaword	.LFE207-.LFB207
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB208
	.uaword	.LFE208-.LFB208
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB209
	.uaword	.LFE209-.LFB209
	.align 2
.LEFDE16:
.LSFDE18:
	.uaword	.LEFDE18-.LASFDE18
.LASFDE18:
	.uaword	.Lframe0
	.uaword	.LFB210
	.uaword	.LFE210-.LFB210
	.align 2
.LEFDE18:
.section .text,"ax",@progbits
.Letext0:
	.file 4 "./0_Src/4_McHal/Tricore/Cpu/Std/Platform_Types.h"
	.file 5 "./0_Src/4_McHal/Tricore/Cpu/Std/Ifx_Types.h"
	.file 6 "./0_Src/4_McHal/Tricore/_Reg/IfxFce_regdef.h"
	.file 7 "./0_Src/4_McHal/Tricore/_Impl/IfxSrc_cfg.h"
	.file 8 "./0_Src/4_McHal/Tricore/_Reg/IfxSrc_regdef.h"
	.file 9 "0_Src/4_McHal/Tricore/Fce/Crc/IfxFce_Crc.h"
	.file 10 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x26b2
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9."
	.string	"4 build on 2018-04-18 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -msmall-const=8 -mtc161 -g -g -O2 -fno-common -fno-short-enums -fsingle-precision-constant -fstrict-volatile-bitfields"
	.byte	0x1
	.string	"0_Src/4_McHal/Tricore/Fce/Crc/IfxFce_Crc.c"
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
	.byte	0x4
	.byte	0x59
	.uaword	0x1d4
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
	.byte	0x4
	.byte	0x5b
	.uaword	0x200
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"uint32"
	.byte	0x4
	.byte	0x5d
	.uaword	0x19c
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
	.byte	0x4
	.byte	0x68
	.uaword	0x1d4
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
	.byte	0x5
	.byte	0x43
	.uaword	0x1f2
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x4
	.uaword	0x1d4
	.uaword	0x2b9
	.uleb128 0x5
	.uaword	0x29d
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.string	"_Ifx_FCE_ACCEN0_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0x2d
	.uaword	0x4cd
	.uleb128 0x7
	.string	"EN0"
	.byte	0x6
	.byte	0x2f
	.uaword	0x28d
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x7
	.string	"EN1"
	.byte	0x6
	.byte	0x30
	.uaword	0x28d
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x7
	.string	"EN2"
	.byte	0x6
	.byte	0x31
	.uaword	0x28d
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x7
	.string	"EN3"
	.byte	0x6
	.byte	0x32
	.uaword	0x28d
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x7
	.string	"EN4"
	.byte	0x6
	.byte	0x33
	.uaword	0x28d
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x7
	.string	"EN5"
	.byte	0x6
	.byte	0x34
	.uaword	0x28d
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x7
	.string	"EN6"
	.byte	0x6
	.byte	0x35
	.uaword	0x28d
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x7
	.string	"EN7"
	.byte	0x6
	.byte	0x36
	.uaword	0x28d
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x7
	.string	"EN8"
	.byte	0x6
	.byte	0x37
	.uaword	0x28d
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x7
	.string	"EN9"
	.byte	0x6
	.byte	0x38
	.uaword	0x28d
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x7
	.string	"EN10"
	.byte	0x6
	.byte	0x39
	.uaword	0x28d
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x7
	.string	"EN11"
	.byte	0x6
	.byte	0x3a
	.uaword	0x28d
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x7
	.string	"EN12"
	.byte	0x6
	.byte	0x3b
	.uaword	0x28d
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x7
	.string	"EN13"
	.byte	0x6
	.byte	0x3c
	.uaword	0x28d
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x7
	.string	"EN14"
	.byte	0x6
	.byte	0x3d
	.uaword	0x28d
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x7
	.string	"EN15"
	.byte	0x6
	.byte	0x3e
	.uaword	0x28d
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.string	"EN16"
	.byte	0x6
	.byte	0x3f
	.uaword	0x28d
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x7
	.string	"EN17"
	.byte	0x6
	.byte	0x40
	.uaword	0x28d
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0x7
	.string	"EN18"
	.byte	0x6
	.byte	0x41
	.uaword	0x28d
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0x7
	.string	"EN19"
	.byte	0x6
	.byte	0x42
	.uaword	0x28d
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x7
	.string	"EN20"
	.byte	0x6
	.byte	0x43
	.uaword	0x28d
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0x7
	.string	"EN21"
	.byte	0x6
	.byte	0x44
	.uaword	0x28d
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0x7
	.string	"EN22"
	.byte	0x6
	.byte	0x45
	.uaword	0x28d
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0x7
	.string	"EN23"
	.byte	0x6
	.byte	0x46
	.uaword	0x28d
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.string	"EN24"
	.byte	0x6
	.byte	0x47
	.uaword	0x28d
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x7
	.string	"EN25"
	.byte	0x6
	.byte	0x48
	.uaword	0x28d
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x7
	.string	"EN26"
	.byte	0x6
	.byte	0x49
	.uaword	0x28d
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x7
	.string	"EN27"
	.byte	0x6
	.byte	0x4a
	.uaword	0x28d
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.string	"EN28"
	.byte	0x6
	.byte	0x4b
	.uaword	0x28d
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x7
	.string	"EN29"
	.byte	0x6
	.byte	0x4c
	.uaword	0x28d
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.string	"EN30"
	.byte	0x6
	.byte	0x4d
	.uaword	0x28d
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.string	"EN31"
	.byte	0x6
	.byte	0x4e
	.uaword	0x28d
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_FCE_ACCEN0_Bits"
	.byte	0x6
	.byte	0x4f
	.uaword	0x2b9
	.uleb128 0x6
	.string	"_Ifx_FCE_ACCEN1_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0x52
	.uaword	0x51c
	.uleb128 0x7
	.string	"reserved_0"
	.byte	0x6
	.byte	0x54
	.uaword	0x28d
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_FCE_ACCEN1_Bits"
	.byte	0x6
	.byte	0x55
	.uaword	0x4e8
	.uleb128 0x6
	.string	"_Ifx_FCE_CFG_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0x58
	.uaword	0x60c
	.uleb128 0x7
	.string	"CMI"
	.byte	0x6
	.byte	0x5a
	.uaword	0x28d
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x7
	.string	"CEI"
	.byte	0x6
	.byte	0x5b
	.uaword	0x28d
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x7
	.string	"LEI"
	.byte	0x6
	.byte	0x5c
	.uaword	0x28d
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x7
	.string	"BEI"
	.byte	0x6
	.byte	0x5d
	.uaword	0x28d
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x7
	.string	"CCE"
	.byte	0x6
	.byte	0x5e
	.uaword	0x28d
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x7
	.string	"ALR"
	.byte	0x6
	.byte	0x5f
	.uaword	0x28d
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x7
	.string	"reserved_6"
	.byte	0x6
	.byte	0x60
	.uaword	0x28d
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0
	.uleb128 0x7
	.string	"REFIN"
	.byte	0x6
	.byte	0x61
	.uaword	0x28d
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x7
	.string	"REFOUT"
	.byte	0x6
	.byte	0x62
	.uaword	0x28d
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x7
	.string	"XSEL"
	.byte	0x6
	.byte	0x63
	.uaword	0x28d
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x7
	.string	"reserved_11"
	.byte	0x6
	.byte	0x64
	.uaword	0x28d
	.byte	0x4
	.byte	0x15
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_FCE_CFG_Bits"
	.byte	0x6
	.byte	0x65
	.uaword	0x537
	.uleb128 0x6
	.string	"_Ifx_FCE_CLC_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0x68
	.uaword	0x66e
	.uleb128 0x7
	.string	"DISR"
	.byte	0x6
	.byte	0x6a
	.uaword	0x28d
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x7
	.string	"DISS"
	.byte	0x6
	.byte	0x6b
	.uaword	0x28d
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x6
	.byte	0x6c
	.uaword	0x28d
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_FCE_CLC_Bits"
	.byte	0x6
	.byte	0x6d
	.uaword	0x624
	.uleb128 0x6
	.string	"_Ifx_FCE_CTR_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0x70
	.uaword	0x6ee
	.uleb128 0x7
	.string	"FCM"
	.byte	0x6
	.byte	0x72
	.uaword	0x28d
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x7
	.string	"FRM_CFG"
	.byte	0x6
	.byte	0x73
	.uaword	0x28d
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x7
	.string	"FRM_CHECK"
	.byte	0x6
	.byte	0x74
	.uaword	0x28d
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x7
	.string	"reserved_3"
	.byte	0x6
	.byte	0x75
	.uaword	0x28d
	.byte	0x4
	.byte	0x1d
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_FCE_CTR_Bits"
	.byte	0x6
	.byte	0x76
	.uaword	0x686
	.uleb128 0x6
	.string	"_Ifx_FCE_ID_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0x79
	.uaword	0x75c
	.uleb128 0x7
	.string	"MOD_REV"
	.byte	0x6
	.byte	0x7b
	.uaword	0x28d
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x7
	.string	"MOD_TYPE"
	.byte	0x6
	.byte	0x7c
	.uaword	0x28d
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.string	"MODNUMBER"
	.byte	0x6
	.byte	0x7d
	.uaword	0x28d
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_FCE_ID_Bits"
	.byte	0x6
	.byte	0x7e
	.uaword	0x706
	.uleb128 0x6
	.string	"_Ifx_FCE_IN0_CHECK_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0x81
	.uaword	0x7a3
	.uleb128 0x8
	.uaword	.LASF1
	.byte	0x6
	.byte	0x83
	.uaword	0x28d
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_FCE_IN0_CHECK_Bits"
	.byte	0x6
	.byte	0x84
	.uaword	0x773
	.uleb128 0x6
	.string	"_Ifx_FCE_IN0_CRC_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0x87
	.uaword	0x7ef
	.uleb128 0x7
	.string	"CRC"
	.byte	0x6
	.byte	0x89
	.uaword	0x28d
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_FCE_IN0_CRC_Bits"
	.byte	0x6
	.byte	0x8a
	.uaword	0x7c1
	.uleb128 0x6
	.string	"_Ifx_FCE_IN0_IR_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0x8d
	.uaword	0x837
	.uleb128 0x7
	.string	"IR"
	.byte	0x6
	.byte	0x8f
	.uaword	0x28d
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_FCE_IN0_IR_Bits"
	.byte	0x6
	.byte	0x90
	.uaword	0x80b
	.uleb128 0x6
	.string	"_Ifx_FCE_IN0_RES_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0x93
	.uaword	0x880
	.uleb128 0x7
	.string	"RES"
	.byte	0x6
	.byte	0x95
	.uaword	0x28d
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_FCE_IN0_RES_Bits"
	.byte	0x6
	.byte	0x96
	.uaword	0x852
	.uleb128 0x6
	.string	"_Ifx_FCE_IN1_CHECK_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0x99
	.uaword	0x8cc
	.uleb128 0x8
	.uaword	.LASF1
	.byte	0x6
	.byte	0x9b
	.uaword	0x28d
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_FCE_IN1_CHECK_Bits"
	.byte	0x6
	.byte	0x9c
	.uaword	0x89c
	.uleb128 0x6
	.string	"_Ifx_FCE_IN1_CRC_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0x9f
	.uaword	0x918
	.uleb128 0x7
	.string	"CRC"
	.byte	0x6
	.byte	0xa1
	.uaword	0x28d
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_FCE_IN1_CRC_Bits"
	.byte	0x6
	.byte	0xa2
	.uaword	0x8ea
	.uleb128 0x6
	.string	"_Ifx_FCE_IN1_IR_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0xa5
	.uaword	0x960
	.uleb128 0x7
	.string	"IR"
	.byte	0x6
	.byte	0xa7
	.uaword	0x28d
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_FCE_IN1_IR_Bits"
	.byte	0x6
	.byte	0xa8
	.uaword	0x934
	.uleb128 0x6
	.string	"_Ifx_FCE_IN1_RES_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0xab
	.uaword	0x9a9
	.uleb128 0x7
	.string	"RES"
	.byte	0x6
	.byte	0xad
	.uaword	0x28d
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_FCE_IN1_RES_Bits"
	.byte	0x6
	.byte	0xae
	.uaword	0x97b
	.uleb128 0x6
	.string	"_Ifx_FCE_IN2_CHECK_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0xb1
	.uaword	0xa04
	.uleb128 0x8
	.uaword	.LASF1
	.byte	0x6
	.byte	0xb3
	.uaword	0x28d
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.uaword	.LASF2
	.byte	0x6
	.byte	0xb4
	.uaword	0x28d
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_FCE_IN2_CHECK_Bits"
	.byte	0x6
	.byte	0xb5
	.uaword	0x9c5
	.uleb128 0x6
	.string	"_Ifx_FCE_IN2_CRC_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0xb8
	.uaword	0xa5f
	.uleb128 0x7
	.string	"CRC"
	.byte	0x6
	.byte	0xba
	.uaword	0x28d
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.uaword	.LASF2
	.byte	0x6
	.byte	0xbb
	.uaword	0x28d
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_FCE_IN2_CRC_Bits"
	.byte	0x6
	.byte	0xbc
	.uaword	0xa22
	.uleb128 0x6
	.string	"_Ifx_FCE_IN2_IR_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0xbf
	.uaword	0xab6
	.uleb128 0x7
	.string	"IR"
	.byte	0x6
	.byte	0xc1
	.uaword	0x28d
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.uaword	.LASF2
	.byte	0x6
	.byte	0xc2
	.uaword	0x28d
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_FCE_IN2_IR_Bits"
	.byte	0x6
	.byte	0xc3
	.uaword	0xa7b
	.uleb128 0x6
	.string	"_Ifx_FCE_IN2_RES_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0xc6
	.uaword	0xb0e
	.uleb128 0x7
	.string	"RES"
	.byte	0x6
	.byte	0xc8
	.uaword	0x28d
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.uaword	.LASF2
	.byte	0x6
	.byte	0xc9
	.uaword	0x28d
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_FCE_IN2_RES_Bits"
	.byte	0x6
	.byte	0xca
	.uaword	0xad1
	.uleb128 0x6
	.string	"_Ifx_FCE_IN3_CHECK_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0xcd
	.uaword	0xb69
	.uleb128 0x8
	.uaword	.LASF1
	.byte	0x6
	.byte	0xcf
	.uaword	0x28d
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.uaword	.LASF3
	.byte	0x6
	.byte	0xd0
	.uaword	0x28d
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_FCE_IN3_CHECK_Bits"
	.byte	0x6
	.byte	0xd1
	.uaword	0xb2a
	.uleb128 0x6
	.string	"_Ifx_FCE_IN3_CRC_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0xd4
	.uaword	0xbc4
	.uleb128 0x7
	.string	"CRC"
	.byte	0x6
	.byte	0xd6
	.uaword	0x28d
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.uaword	.LASF3
	.byte	0x6
	.byte	0xd7
	.uaword	0x28d
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_FCE_IN3_CRC_Bits"
	.byte	0x6
	.byte	0xd8
	.uaword	0xb87
	.uleb128 0x6
	.string	"_Ifx_FCE_IN3_IR_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0xdb
	.uaword	0xc1b
	.uleb128 0x7
	.string	"IR"
	.byte	0x6
	.byte	0xdd
	.uaword	0x28d
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.uaword	.LASF3
	.byte	0x6
	.byte	0xde
	.uaword	0x28d
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_FCE_IN3_IR_Bits"
	.byte	0x6
	.byte	0xdf
	.uaword	0xbe0
	.uleb128 0x6
	.string	"_Ifx_FCE_IN3_RES_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0xe2
	.uaword	0xc73
	.uleb128 0x7
	.string	"RES"
	.byte	0x6
	.byte	0xe4
	.uaword	0x28d
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.uaword	.LASF3
	.byte	0x6
	.byte	0xe5
	.uaword	0x28d
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_FCE_IN3_RES_Bits"
	.byte	0x6
	.byte	0xe6
	.uaword	0xc36
	.uleb128 0x6
	.string	"_Ifx_FCE_KRST0_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0xe9
	.uaword	0xcdd
	.uleb128 0x7
	.string	"RST"
	.byte	0x6
	.byte	0xeb
	.uaword	0x28d
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x7
	.string	"RSTSTAT"
	.byte	0x6
	.byte	0xec
	.uaword	0x28d
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x6
	.byte	0xed
	.uaword	0x28d
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_FCE_KRST0_Bits"
	.byte	0x6
	.byte	0xee
	.uaword	0xc8f
	.uleb128 0x6
	.string	"_Ifx_FCE_KRST1_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0xf1
	.uaword	0xd32
	.uleb128 0x7
	.string	"RST"
	.byte	0x6
	.byte	0xf3
	.uaword	0x28d
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x8
	.uaword	.LASF4
	.byte	0x6
	.byte	0xf4
	.uaword	0x28d
	.byte	0x4
	.byte	0x1f
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_FCE_KRST1_Bits"
	.byte	0x6
	.byte	0xf5
	.uaword	0xcf7
	.uleb128 0x6
	.string	"_Ifx_FCE_KRSTCLR_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0xf8
	.uaword	0xd89
	.uleb128 0x7
	.string	"CLR"
	.byte	0x6
	.byte	0xfa
	.uaword	0x28d
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x8
	.uaword	.LASF4
	.byte	0x6
	.byte	0xfb
	.uaword	0x28d
	.byte	0x4
	.byte	0x1f
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_FCE_KRSTCLR_Bits"
	.byte	0x6
	.byte	0xfc
	.uaword	0xd4c
	.uleb128 0x6
	.string	"_Ifx_FCE_LENGTH_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0xff
	.uaword	0xde3
	.uleb128 0x9
	.uaword	.LASF5
	.byte	0x6
	.uahalf	0x101
	.uaword	0x28d
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.uaword	.LASF2
	.byte	0x6
	.uahalf	0x102
	.uaword	0x28d
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_FCE_LENGTH_Bits"
	.byte	0x6
	.uahalf	0x103
	.uaword	0xda5
	.uleb128 0xb
	.string	"_Ifx_FCE_STS_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x106
	.uaword	0xe6b
	.uleb128 0xc
	.string	"CMF"
	.byte	0x6
	.uahalf	0x108
	.uaword	0x28d
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xc
	.string	"CEF"
	.byte	0x6
	.uahalf	0x109
	.uaword	0x28d
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xc
	.string	"LEF"
	.byte	0x6
	.uahalf	0x10a
	.uaword	0x28d
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xc
	.string	"BEF"
	.byte	0x6
	.uahalf	0x10b
	.uaword	0x28d
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x9
	.uaword	.LASF6
	.byte	0x6
	.uahalf	0x10c
	.uaword	0x28d
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_FCE_STS_Bits"
	.byte	0x6
	.uahalf	0x10d
	.uaword	0xdff
	.uleb128 0xd
	.byte	0x4
	.byte	0x6
	.uahalf	0x115
	.uaword	0xeac
	.uleb128 0xe
	.string	"U"
	.byte	0x6
	.uahalf	0x118
	.uaword	0x28d
	.uleb128 0xe
	.string	"I"
	.byte	0x6
	.uahalf	0x11a
	.uaword	0x1b1
	.uleb128 0xe
	.string	"B"
	.byte	0x6
	.uahalf	0x11c
	.uaword	0x4cd
	.byte	0
	.uleb128 0xa
	.string	"Ifx_FCE_ACCEN0"
	.byte	0x6
	.uahalf	0x11d
	.uaword	0xe84
	.uleb128 0xd
	.byte	0x4
	.byte	0x6
	.uahalf	0x120
	.uaword	0xeeb
	.uleb128 0xe
	.string	"U"
	.byte	0x6
	.uahalf	0x123
	.uaword	0x28d
	.uleb128 0xe
	.string	"I"
	.byte	0x6
	.uahalf	0x125
	.uaword	0x1b1
	.uleb128 0xe
	.string	"B"
	.byte	0x6
	.uahalf	0x127
	.uaword	0x51c
	.byte	0
	.uleb128 0xa
	.string	"Ifx_FCE_ACCEN1"
	.byte	0x6
	.uahalf	0x128
	.uaword	0xec3
	.uleb128 0xd
	.byte	0x4
	.byte	0x6
	.uahalf	0x12b
	.uaword	0xf2a
	.uleb128 0xe
	.string	"U"
	.byte	0x6
	.uahalf	0x12e
	.uaword	0x28d
	.uleb128 0xe
	.string	"I"
	.byte	0x6
	.uahalf	0x130
	.uaword	0x1b1
	.uleb128 0xe
	.string	"B"
	.byte	0x6
	.uahalf	0x132
	.uaword	0x60c
	.byte	0
	.uleb128 0xa
	.string	"Ifx_FCE_CFG"
	.byte	0x6
	.uahalf	0x133
	.uaword	0xf02
	.uleb128 0xd
	.byte	0x4
	.byte	0x6
	.uahalf	0x136
	.uaword	0xf66
	.uleb128 0xe
	.string	"U"
	.byte	0x6
	.uahalf	0x139
	.uaword	0x28d
	.uleb128 0xe
	.string	"I"
	.byte	0x6
	.uahalf	0x13b
	.uaword	0x1b1
	.uleb128 0xe
	.string	"B"
	.byte	0x6
	.uahalf	0x13d
	.uaword	0x66e
	.byte	0
	.uleb128 0xa
	.string	"Ifx_FCE_CLC"
	.byte	0x6
	.uahalf	0x13e
	.uaword	0xf3e
	.uleb128 0xd
	.byte	0x4
	.byte	0x6
	.uahalf	0x141
	.uaword	0xfa2
	.uleb128 0xe
	.string	"U"
	.byte	0x6
	.uahalf	0x144
	.uaword	0x28d
	.uleb128 0xe
	.string	"I"
	.byte	0x6
	.uahalf	0x146
	.uaword	0x1b1
	.uleb128 0xe
	.string	"B"
	.byte	0x6
	.uahalf	0x148
	.uaword	0x6ee
	.byte	0
	.uleb128 0xa
	.string	"Ifx_FCE_CTR"
	.byte	0x6
	.uahalf	0x149
	.uaword	0xf7a
	.uleb128 0xd
	.byte	0x4
	.byte	0x6
	.uahalf	0x14c
	.uaword	0xfde
	.uleb128 0xe
	.string	"U"
	.byte	0x6
	.uahalf	0x14f
	.uaword	0x28d
	.uleb128 0xe
	.string	"I"
	.byte	0x6
	.uahalf	0x151
	.uaword	0x1b1
	.uleb128 0xe
	.string	"B"
	.byte	0x6
	.uahalf	0x153
	.uaword	0x75c
	.byte	0
	.uleb128 0xa
	.string	"Ifx_FCE_ID"
	.byte	0x6
	.uahalf	0x154
	.uaword	0xfb6
	.uleb128 0xd
	.byte	0x4
	.byte	0x6
	.uahalf	0x157
	.uaword	0x1019
	.uleb128 0xe
	.string	"U"
	.byte	0x6
	.uahalf	0x15a
	.uaword	0x28d
	.uleb128 0xe
	.string	"I"
	.byte	0x6
	.uahalf	0x15c
	.uaword	0x1b1
	.uleb128 0xe
	.string	"B"
	.byte	0x6
	.uahalf	0x15e
	.uaword	0x7a3
	.byte	0
	.uleb128 0xa
	.string	"Ifx_FCE_IN0_CHECK"
	.byte	0x6
	.uahalf	0x15f
	.uaword	0xff1
	.uleb128 0xd
	.byte	0x4
	.byte	0x6
	.uahalf	0x162
	.uaword	0x105b
	.uleb128 0xe
	.string	"U"
	.byte	0x6
	.uahalf	0x165
	.uaword	0x28d
	.uleb128 0xe
	.string	"I"
	.byte	0x6
	.uahalf	0x167
	.uaword	0x1b1
	.uleb128 0xe
	.string	"B"
	.byte	0x6
	.uahalf	0x169
	.uaword	0x7ef
	.byte	0
	.uleb128 0xa
	.string	"Ifx_FCE_IN0_CRC"
	.byte	0x6
	.uahalf	0x16a
	.uaword	0x1033
	.uleb128 0xd
	.byte	0x4
	.byte	0x6
	.uahalf	0x16d
	.uaword	0x109b
	.uleb128 0xe
	.string	"U"
	.byte	0x6
	.uahalf	0x170
	.uaword	0x28d
	.uleb128 0xe
	.string	"I"
	.byte	0x6
	.uahalf	0x172
	.uaword	0x1b1
	.uleb128 0xe
	.string	"B"
	.byte	0x6
	.uahalf	0x174
	.uaword	0x837
	.byte	0
	.uleb128 0xa
	.string	"Ifx_FCE_IN0_IR"
	.byte	0x6
	.uahalf	0x175
	.uaword	0x1073
	.uleb128 0xd
	.byte	0x4
	.byte	0x6
	.uahalf	0x178
	.uaword	0x10da
	.uleb128 0xe
	.string	"U"
	.byte	0x6
	.uahalf	0x17b
	.uaword	0x28d
	.uleb128 0xe
	.string	"I"
	.byte	0x6
	.uahalf	0x17d
	.uaword	0x1b1
	.uleb128 0xe
	.string	"B"
	.byte	0x6
	.uahalf	0x17f
	.uaword	0x880
	.byte	0
	.uleb128 0xa
	.string	"Ifx_FCE_IN0_RES"
	.byte	0x6
	.uahalf	0x180
	.uaword	0x10b2
	.uleb128 0xd
	.byte	0x4
	.byte	0x6
	.uahalf	0x183
	.uaword	0x111a
	.uleb128 0xe
	.string	"U"
	.byte	0x6
	.uahalf	0x186
	.uaword	0x28d
	.uleb128 0xe
	.string	"I"
	.byte	0x6
	.uahalf	0x188
	.uaword	0x1b1
	.uleb128 0xe
	.string	"B"
	.byte	0x6
	.uahalf	0x18a
	.uaword	0x8cc
	.byte	0
	.uleb128 0xa
	.string	"Ifx_FCE_IN1_CHECK"
	.byte	0x6
	.uahalf	0x18b
	.uaword	0x10f2
	.uleb128 0xd
	.byte	0x4
	.byte	0x6
	.uahalf	0x18e
	.uaword	0x115c
	.uleb128 0xe
	.string	"U"
	.byte	0x6
	.uahalf	0x191
	.uaword	0x28d
	.uleb128 0xe
	.string	"I"
	.byte	0x6
	.uahalf	0x193
	.uaword	0x1b1
	.uleb128 0xe
	.string	"B"
	.byte	0x6
	.uahalf	0x195
	.uaword	0x918
	.byte	0
	.uleb128 0xa
	.string	"Ifx_FCE_IN1_CRC"
	.byte	0x6
	.uahalf	0x196
	.uaword	0x1134
	.uleb128 0xd
	.byte	0x4
	.byte	0x6
	.uahalf	0x199
	.uaword	0x119c
	.uleb128 0xe
	.string	"U"
	.byte	0x6
	.uahalf	0x19c
	.uaword	0x28d
	.uleb128 0xe
	.string	"I"
	.byte	0x6
	.uahalf	0x19e
	.uaword	0x1b1
	.uleb128 0xe
	.string	"B"
	.byte	0x6
	.uahalf	0x1a0
	.uaword	0x960
	.byte	0
	.uleb128 0xa
	.string	"Ifx_FCE_IN1_IR"
	.byte	0x6
	.uahalf	0x1a1
	.uaword	0x1174
	.uleb128 0xd
	.byte	0x4
	.byte	0x6
	.uahalf	0x1a4
	.uaword	0x11db
	.uleb128 0xe
	.string	"U"
	.byte	0x6
	.uahalf	0x1a7
	.uaword	0x28d
	.uleb128 0xe
	.string	"I"
	.byte	0x6
	.uahalf	0x1a9
	.uaword	0x1b1
	.uleb128 0xe
	.string	"B"
	.byte	0x6
	.uahalf	0x1ab
	.uaword	0x9a9
	.byte	0
	.uleb128 0xa
	.string	"Ifx_FCE_IN1_RES"
	.byte	0x6
	.uahalf	0x1ac
	.uaword	0x11b3
	.uleb128 0xd
	.byte	0x4
	.byte	0x6
	.uahalf	0x1af
	.uaword	0x121b
	.uleb128 0xe
	.string	"U"
	.byte	0x6
	.uahalf	0x1b2
	.uaword	0x28d
	.uleb128 0xe
	.string	"I"
	.byte	0x6
	.uahalf	0x1b4
	.uaword	0x1b1
	.uleb128 0xe
	.string	"B"
	.byte	0x6
	.uahalf	0x1b6
	.uaword	0xa04
	.byte	0
	.uleb128 0xa
	.string	"Ifx_FCE_IN2_CHECK"
	.byte	0x6
	.uahalf	0x1b7
	.uaword	0x11f3
	.uleb128 0xd
	.byte	0x4
	.byte	0x6
	.uahalf	0x1ba
	.uaword	0x125d
	.uleb128 0xe
	.string	"U"
	.byte	0x6
	.uahalf	0x1bd
	.uaword	0x28d
	.uleb128 0xe
	.string	"I"
	.byte	0x6
	.uahalf	0x1bf
	.uaword	0x1b1
	.uleb128 0xe
	.string	"B"
	.byte	0x6
	.uahalf	0x1c1
	.uaword	0xa5f
	.byte	0
	.uleb128 0xa
	.string	"Ifx_FCE_IN2_CRC"
	.byte	0x6
	.uahalf	0x1c2
	.uaword	0x1235
	.uleb128 0xd
	.byte	0x4
	.byte	0x6
	.uahalf	0x1c5
	.uaword	0x129d
	.uleb128 0xe
	.string	"U"
	.byte	0x6
	.uahalf	0x1c8
	.uaword	0x28d
	.uleb128 0xe
	.string	"I"
	.byte	0x6
	.uahalf	0x1ca
	.uaword	0x1b1
	.uleb128 0xe
	.string	"B"
	.byte	0x6
	.uahalf	0x1cc
	.uaword	0xab6
	.byte	0
	.uleb128 0xa
	.string	"Ifx_FCE_IN2_IR"
	.byte	0x6
	.uahalf	0x1cd
	.uaword	0x1275
	.uleb128 0xd
	.byte	0x4
	.byte	0x6
	.uahalf	0x1d0
	.uaword	0x12dc
	.uleb128 0xe
	.string	"U"
	.byte	0x6
	.uahalf	0x1d3
	.uaword	0x28d
	.uleb128 0xe
	.string	"I"
	.byte	0x6
	.uahalf	0x1d5
	.uaword	0x1b1
	.uleb128 0xe
	.string	"B"
	.byte	0x6
	.uahalf	0x1d7
	.uaword	0xb0e
	.byte	0
	.uleb128 0xa
	.string	"Ifx_FCE_IN2_RES"
	.byte	0x6
	.uahalf	0x1d8
	.uaword	0x12b4
	.uleb128 0xd
	.byte	0x4
	.byte	0x6
	.uahalf	0x1db
	.uaword	0x131c
	.uleb128 0xe
	.string	"U"
	.byte	0x6
	.uahalf	0x1de
	.uaword	0x28d
	.uleb128 0xe
	.string	"I"
	.byte	0x6
	.uahalf	0x1e0
	.uaword	0x1b1
	.uleb128 0xe
	.string	"B"
	.byte	0x6
	.uahalf	0x1e2
	.uaword	0xb69
	.byte	0
	.uleb128 0xa
	.string	"Ifx_FCE_IN3_CHECK"
	.byte	0x6
	.uahalf	0x1e3
	.uaword	0x12f4
	.uleb128 0xd
	.byte	0x4
	.byte	0x6
	.uahalf	0x1e6
	.uaword	0x135e
	.uleb128 0xe
	.string	"U"
	.byte	0x6
	.uahalf	0x1e9
	.uaword	0x28d
	.uleb128 0xe
	.string	"I"
	.byte	0x6
	.uahalf	0x1eb
	.uaword	0x1b1
	.uleb128 0xe
	.string	"B"
	.byte	0x6
	.uahalf	0x1ed
	.uaword	0xbc4
	.byte	0
	.uleb128 0xa
	.string	"Ifx_FCE_IN3_CRC"
	.byte	0x6
	.uahalf	0x1ee
	.uaword	0x1336
	.uleb128 0xd
	.byte	0x4
	.byte	0x6
	.uahalf	0x1f1
	.uaword	0x139e
	.uleb128 0xe
	.string	"U"
	.byte	0x6
	.uahalf	0x1f4
	.uaword	0x28d
	.uleb128 0xe
	.string	"I"
	.byte	0x6
	.uahalf	0x1f6
	.uaword	0x1b1
	.uleb128 0xe
	.string	"B"
	.byte	0x6
	.uahalf	0x1f8
	.uaword	0xc1b
	.byte	0
	.uleb128 0xa
	.string	"Ifx_FCE_IN3_IR"
	.byte	0x6
	.uahalf	0x1f9
	.uaword	0x1376
	.uleb128 0xd
	.byte	0x4
	.byte	0x6
	.uahalf	0x1fc
	.uaword	0x13dd
	.uleb128 0xe
	.string	"U"
	.byte	0x6
	.uahalf	0x1ff
	.uaword	0x28d
	.uleb128 0xe
	.string	"I"
	.byte	0x6
	.uahalf	0x201
	.uaword	0x1b1
	.uleb128 0xe
	.string	"B"
	.byte	0x6
	.uahalf	0x203
	.uaword	0xc73
	.byte	0
	.uleb128 0xa
	.string	"Ifx_FCE_IN3_RES"
	.byte	0x6
	.uahalf	0x204
	.uaword	0x13b5
	.uleb128 0xd
	.byte	0x4
	.byte	0x6
	.uahalf	0x207
	.uaword	0x141d
	.uleb128 0xe
	.string	"U"
	.byte	0x6
	.uahalf	0x20a
	.uaword	0x28d
	.uleb128 0xe
	.string	"I"
	.byte	0x6
	.uahalf	0x20c
	.uaword	0x1b1
	.uleb128 0xe
	.string	"B"
	.byte	0x6
	.uahalf	0x20e
	.uaword	0xcdd
	.byte	0
	.uleb128 0xa
	.string	"Ifx_FCE_KRST0"
	.byte	0x6
	.uahalf	0x20f
	.uaword	0x13f5
	.uleb128 0xd
	.byte	0x4
	.byte	0x6
	.uahalf	0x212
	.uaword	0x145b
	.uleb128 0xe
	.string	"U"
	.byte	0x6
	.uahalf	0x215
	.uaword	0x28d
	.uleb128 0xe
	.string	"I"
	.byte	0x6
	.uahalf	0x217
	.uaword	0x1b1
	.uleb128 0xe
	.string	"B"
	.byte	0x6
	.uahalf	0x219
	.uaword	0xd32
	.byte	0
	.uleb128 0xa
	.string	"Ifx_FCE_KRST1"
	.byte	0x6
	.uahalf	0x21a
	.uaword	0x1433
	.uleb128 0xd
	.byte	0x4
	.byte	0x6
	.uahalf	0x21d
	.uaword	0x1499
	.uleb128 0xe
	.string	"U"
	.byte	0x6
	.uahalf	0x220
	.uaword	0x28d
	.uleb128 0xe
	.string	"I"
	.byte	0x6
	.uahalf	0x222
	.uaword	0x1b1
	.uleb128 0xe
	.string	"B"
	.byte	0x6
	.uahalf	0x224
	.uaword	0xd89
	.byte	0
	.uleb128 0xa
	.string	"Ifx_FCE_KRSTCLR"
	.byte	0x6
	.uahalf	0x225
	.uaword	0x1471
	.uleb128 0xd
	.byte	0x4
	.byte	0x6
	.uahalf	0x228
	.uaword	0x14d9
	.uleb128 0xe
	.string	"U"
	.byte	0x6
	.uahalf	0x22b
	.uaword	0x28d
	.uleb128 0xe
	.string	"I"
	.byte	0x6
	.uahalf	0x22d
	.uaword	0x1b1
	.uleb128 0xe
	.string	"B"
	.byte	0x6
	.uahalf	0x22f
	.uaword	0xde3
	.byte	0
	.uleb128 0xa
	.string	"Ifx_FCE_LENGTH"
	.byte	0x6
	.uahalf	0x230
	.uaword	0x14b1
	.uleb128 0xd
	.byte	0x4
	.byte	0x6
	.uahalf	0x233
	.uaword	0x1518
	.uleb128 0xe
	.string	"U"
	.byte	0x6
	.uahalf	0x236
	.uaword	0x28d
	.uleb128 0xe
	.string	"I"
	.byte	0x6
	.uahalf	0x238
	.uaword	0x1b1
	.uleb128 0xe
	.string	"B"
	.byte	0x6
	.uahalf	0x23a
	.uaword	0xe6b
	.byte	0
	.uleb128 0xa
	.string	"Ifx_FCE_STS"
	.byte	0x6
	.uahalf	0x23b
	.uaword	0x14f0
	.uleb128 0xb
	.string	"_Ifx_FCE_IN0"
	.byte	0x20
	.byte	0x6
	.uahalf	0x246
	.uaword	0x15aa
	.uleb128 0xf
	.string	"IR"
	.byte	0x6
	.uahalf	0x248
	.uaword	0x109b
	.byte	0
	.uleb128 0xf
	.string	"RES"
	.byte	0x6
	.uahalf	0x249
	.uaword	0x10da
	.byte	0x4
	.uleb128 0xf
	.string	"CFG"
	.byte	0x6
	.uahalf	0x24a
	.uaword	0xf2a
	.byte	0x8
	.uleb128 0xf
	.string	"STS"
	.byte	0x6
	.uahalf	0x24b
	.uaword	0x1518
	.byte	0xc
	.uleb128 0x10
	.uaword	.LASF5
	.byte	0x6
	.uahalf	0x24c
	.uaword	0x14d9
	.byte	0x10
	.uleb128 0x10
	.uaword	.LASF1
	.byte	0x6
	.uahalf	0x24d
	.uaword	0x1019
	.byte	0x14
	.uleb128 0xf
	.string	"CRC"
	.byte	0x6
	.uahalf	0x24e
	.uaword	0x105b
	.byte	0x18
	.uleb128 0xf
	.string	"CTR"
	.byte	0x6
	.uahalf	0x24f
	.uaword	0xfa2
	.byte	0x1c
	.byte	0
	.uleb128 0xa
	.string	"Ifx_FCE_IN0"
	.byte	0x6
	.uahalf	0x250
	.uaword	0x15be
	.uleb128 0x11
	.uaword	0x152c
	.uleb128 0xb
	.string	"_Ifx_FCE_IN1"
	.byte	0x20
	.byte	0x6
	.uahalf	0x253
	.uaword	0x1641
	.uleb128 0xf
	.string	"IR"
	.byte	0x6
	.uahalf	0x255
	.uaword	0x119c
	.byte	0
	.uleb128 0xf
	.string	"RES"
	.byte	0x6
	.uahalf	0x256
	.uaword	0x11db
	.byte	0x4
	.uleb128 0xf
	.string	"CFG"
	.byte	0x6
	.uahalf	0x257
	.uaword	0xf2a
	.byte	0x8
	.uleb128 0xf
	.string	"STS"
	.byte	0x6
	.uahalf	0x258
	.uaword	0x1518
	.byte	0xc
	.uleb128 0x10
	.uaword	.LASF5
	.byte	0x6
	.uahalf	0x259
	.uaword	0x14d9
	.byte	0x10
	.uleb128 0x10
	.uaword	.LASF1
	.byte	0x6
	.uahalf	0x25a
	.uaword	0x111a
	.byte	0x14
	.uleb128 0xf
	.string	"CRC"
	.byte	0x6
	.uahalf	0x25b
	.uaword	0x115c
	.byte	0x18
	.uleb128 0xf
	.string	"CTR"
	.byte	0x6
	.uahalf	0x25c
	.uaword	0xfa2
	.byte	0x1c
	.byte	0
	.uleb128 0xa
	.string	"Ifx_FCE_IN1"
	.byte	0x6
	.uahalf	0x25d
	.uaword	0x1655
	.uleb128 0x11
	.uaword	0x15c3
	.uleb128 0xb
	.string	"_Ifx_FCE_IN2"
	.byte	0x20
	.byte	0x6
	.uahalf	0x260
	.uaword	0x16d8
	.uleb128 0xf
	.string	"IR"
	.byte	0x6
	.uahalf	0x262
	.uaword	0x129d
	.byte	0
	.uleb128 0xf
	.string	"RES"
	.byte	0x6
	.uahalf	0x263
	.uaword	0x12dc
	.byte	0x4
	.uleb128 0xf
	.string	"CFG"
	.byte	0x6
	.uahalf	0x264
	.uaword	0xf2a
	.byte	0x8
	.uleb128 0xf
	.string	"STS"
	.byte	0x6
	.uahalf	0x265
	.uaword	0x1518
	.byte	0xc
	.uleb128 0x10
	.uaword	.LASF5
	.byte	0x6
	.uahalf	0x266
	.uaword	0x14d9
	.byte	0x10
	.uleb128 0x10
	.uaword	.LASF1
	.byte	0x6
	.uahalf	0x267
	.uaword	0x121b
	.byte	0x14
	.uleb128 0xf
	.string	"CRC"
	.byte	0x6
	.uahalf	0x268
	.uaword	0x125d
	.byte	0x18
	.uleb128 0xf
	.string	"CTR"
	.byte	0x6
	.uahalf	0x269
	.uaword	0xfa2
	.byte	0x1c
	.byte	0
	.uleb128 0xa
	.string	"Ifx_FCE_IN2"
	.byte	0x6
	.uahalf	0x26a
	.uaword	0x16ec
	.uleb128 0x11
	.uaword	0x165a
	.uleb128 0xb
	.string	"_Ifx_FCE_IN3"
	.byte	0x20
	.byte	0x6
	.uahalf	0x26d
	.uaword	0x176f
	.uleb128 0xf
	.string	"IR"
	.byte	0x6
	.uahalf	0x26f
	.uaword	0x139e
	.byte	0
	.uleb128 0xf
	.string	"RES"
	.byte	0x6
	.uahalf	0x270
	.uaword	0x13dd
	.byte	0x4
	.uleb128 0xf
	.string	"CFG"
	.byte	0x6
	.uahalf	0x271
	.uaword	0xf2a
	.byte	0x8
	.uleb128 0xf
	.string	"STS"
	.byte	0x6
	.uahalf	0x272
	.uaword	0x1518
	.byte	0xc
	.uleb128 0x10
	.uaword	.LASF5
	.byte	0x6
	.uahalf	0x273
	.uaword	0x14d9
	.byte	0x10
	.uleb128 0x10
	.uaword	.LASF1
	.byte	0x6
	.uahalf	0x274
	.uaword	0x131c
	.byte	0x14
	.uleb128 0xf
	.string	"CRC"
	.byte	0x6
	.uahalf	0x275
	.uaword	0x135e
	.byte	0x18
	.uleb128 0xf
	.string	"CTR"
	.byte	0x6
	.uahalf	0x276
	.uaword	0xfa2
	.byte	0x1c
	.byte	0
	.uleb128 0xa
	.string	"Ifx_FCE_IN3"
	.byte	0x6
	.uahalf	0x277
	.uaword	0x1783
	.uleb128 0x11
	.uaword	0x16f1
	.uleb128 0x12
	.string	"_Ifx_FCE"
	.uahalf	0x100
	.byte	0x6
	.uahalf	0x284
	.uaword	0x186e
	.uleb128 0xf
	.string	"CLC"
	.byte	0x6
	.uahalf	0x286
	.uaword	0xf66
	.byte	0
	.uleb128 0x10
	.uaword	.LASF6
	.byte	0x6
	.uahalf	0x287
	.uaword	0x2a9
	.byte	0x4
	.uleb128 0xf
	.string	"ID"
	.byte	0x6
	.uahalf	0x288
	.uaword	0xfde
	.byte	0x8
	.uleb128 0xf
	.string	"reserved_C"
	.byte	0x6
	.uahalf	0x289
	.uaword	0x186e
	.byte	0xc
	.uleb128 0xf
	.string	"IN0"
	.byte	0x6
	.uahalf	0x28a
	.uaword	0x15aa
	.byte	0x20
	.uleb128 0xf
	.string	"IN1"
	.byte	0x6
	.uahalf	0x28b
	.uaword	0x1641
	.byte	0x40
	.uleb128 0xf
	.string	"IN2"
	.byte	0x6
	.uahalf	0x28c
	.uaword	0x16d8
	.byte	0x60
	.uleb128 0xf
	.string	"IN3"
	.byte	0x6
	.uahalf	0x28d
	.uaword	0x176f
	.byte	0x80
	.uleb128 0xf
	.string	"reserved_A0"
	.byte	0x6
	.uahalf	0x28e
	.uaword	0x187e
	.byte	0xa0
	.uleb128 0xf
	.string	"KRSTCLR"
	.byte	0x6
	.uahalf	0x28f
	.uaword	0x1499
	.byte	0xec
	.uleb128 0xf
	.string	"KRST1"
	.byte	0x6
	.uahalf	0x290
	.uaword	0x145b
	.byte	0xf0
	.uleb128 0xf
	.string	"KRST0"
	.byte	0x6
	.uahalf	0x291
	.uaword	0x141d
	.byte	0xf4
	.uleb128 0xf
	.string	"ACCEN1"
	.byte	0x6
	.uahalf	0x292
	.uaword	0xeeb
	.byte	0xf8
	.uleb128 0xf
	.string	"ACCEN0"
	.byte	0x6
	.uahalf	0x293
	.uaword	0xeac
	.byte	0xfc
	.byte	0
	.uleb128 0x4
	.uaword	0x1d4
	.uaword	0x187e
	.uleb128 0x5
	.uaword	0x29d
	.byte	0x13
	.byte	0
	.uleb128 0x4
	.uaword	0x1d4
	.uaword	0x188e
	.uleb128 0x5
	.uaword	0x29d
	.byte	0x4b
	.byte	0
	.uleb128 0xa
	.string	"Ifx_FCE"
	.byte	0x6
	.uahalf	0x294
	.uaword	0x189e
	.uleb128 0x11
	.uaword	0x1788
	.uleb128 0x13
	.byte	0x4
	.byte	0x7
	.byte	0x32
	.uaword	0x18f3
	.uleb128 0x14
	.string	"IfxSrc_Tos_cpu0"
	.sleb128 0
	.uleb128 0x14
	.string	"IfxSrc_Tos_cpu1"
	.sleb128 1
	.uleb128 0x14
	.string	"IfxSrc_Tos_cpu2"
	.sleb128 2
	.uleb128 0x14
	.string	"IfxSrc_Tos_dma"
	.sleb128 3
	.byte	0
	.uleb128 0x3
	.string	"IfxSrc_Tos"
	.byte	0x7
	.byte	0x37
	.uaword	0x18a3
	.uleb128 0x6
	.string	"_Ifx_SRC_SRCR_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0x2d
	.uaword	0x1a23
	.uleb128 0x7
	.string	"SRPN"
	.byte	0x8
	.byte	0x2f
	.uaword	0x28d
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.uaword	.LASF3
	.byte	0x8
	.byte	0x30
	.uaword	0x28d
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0
	.uleb128 0x7
	.string	"SRE"
	.byte	0x8
	.byte	0x31
	.uaword	0x28d
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x7
	.string	"TOS"
	.byte	0x8
	.byte	0x32
	.uaword	0x28d
	.byte	0x4
	.byte	0x2
	.byte	0x13
	.byte	0
	.uleb128 0x7
	.string	"reserved_13"
	.byte	0x8
	.byte	0x33
	.uaword	0x28d
	.byte	0x4
	.byte	0x3
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.string	"ECC"
	.byte	0x8
	.byte	0x34
	.uaword	0x28d
	.byte	0x4
	.byte	0x6
	.byte	0xa
	.byte	0
	.uleb128 0x7
	.string	"reserved_22"
	.byte	0x8
	.byte	0x35
	.uaword	0x28d
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.string	"SRR"
	.byte	0x8
	.byte	0x36
	.uaword	0x28d
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x7
	.string	"CLRR"
	.byte	0x8
	.byte	0x37
	.uaword	0x28d
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x7
	.string	"SETR"
	.byte	0x8
	.byte	0x38
	.uaword	0x28d
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x7
	.string	"IOV"
	.byte	0x8
	.byte	0x39
	.uaword	0x28d
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.string	"IOVCLR"
	.byte	0x8
	.byte	0x3a
	.uaword	0x28d
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x7
	.string	"SWS"
	.byte	0x8
	.byte	0x3b
	.uaword	0x28d
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.string	"SWSCLR"
	.byte	0x8
	.byte	0x3c
	.uaword	0x28d
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.string	"reserved_31"
	.byte	0x8
	.byte	0x3d
	.uaword	0x28d
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_SRCR_Bits"
	.byte	0x8
	.byte	0x3e
	.uaword	0x1905
	.uleb128 0x15
	.byte	0x4
	.byte	0x8
	.byte	0x46
	.uaword	0x1a60
	.uleb128 0x16
	.string	"U"
	.byte	0x8
	.byte	0x49
	.uaword	0x28d
	.uleb128 0x16
	.string	"I"
	.byte	0x8
	.byte	0x4b
	.uaword	0x1b1
	.uleb128 0x16
	.string	"B"
	.byte	0x8
	.byte	0x4d
	.uaword	0x1a23
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_SRCR"
	.byte	0x8
	.byte	0x4e
	.uaword	0x1a3c
	.uleb128 0x13
	.byte	0x4
	.byte	0x2
	.byte	0x39
	.uaword	0x1aab
	.uleb128 0x14
	.string	"IfxFce_Crc32Kernel_0"
	.sleb128 0
	.uleb128 0x14
	.string	"IfxFce_Crc32Kernel_1"
	.sleb128 1
	.byte	0
	.uleb128 0x3
	.string	"IfxFce_Crc32Kernel"
	.byte	0x2
	.byte	0x3c
	.uaword	0x1a74
	.uleb128 0x13
	.byte	0x4
	.byte	0x2
	.byte	0x41
	.uaword	0x1b09
	.uleb128 0x14
	.string	"IfxFce_CrcMode_8"
	.sleb128 0
	.uleb128 0x14
	.string	"IfxFce_CrcMode_16"
	.sleb128 1
	.uleb128 0x14
	.string	"IfxFce_CrcMode_32"
	.sleb128 2
	.byte	0
	.uleb128 0x3
	.string	"IfxFce_CrcMode"
	.byte	0x2
	.byte	0x45
	.uaword	0x1ac5
	.uleb128 0x17
	.byte	0x4
	.byte	0x9
	.uahalf	0x157
	.uaword	0x1b7a
	.uleb128 0xf
	.string	"crcMismatch"
	.byte	0x9
	.uahalf	0x159
	.uaword	0x237
	.byte	0
	.uleb128 0xf
	.string	"configError"
	.byte	0x9
	.uahalf	0x15a
	.uaword	0x237
	.byte	0x1
	.uleb128 0xf
	.string	"lengthError"
	.byte	0x9
	.uahalf	0x15b
	.uaword	0x237
	.byte	0x2
	.uleb128 0xf
	.string	"busError"
	.byte	0x9
	.uahalf	0x15c
	.uaword	0x237
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.string	"IfxFce_Crc_EnabledInterrupts"
	.byte	0x9
	.uahalf	0x15d
	.uaword	0x1b1f
	.uleb128 0x17
	.byte	0x4
	.byte	0x9
	.uahalf	0x165
	.uaword	0x1bb6
	.uleb128 0xf
	.string	"fce"
	.byte	0x9
	.uahalf	0x167
	.uaword	0x1bb6
	.byte	0
	.byte	0
	.uleb128 0x18
	.byte	0x4
	.uaword	0x188e
	.uleb128 0xa
	.string	"IfxFce_Crc"
	.byte	0x9
	.uahalf	0x168
	.uaword	0x1b9f
	.uleb128 0x17
	.byte	0xc
	.byte	0x9
	.uahalf	0x16c
	.uaword	0x1c15
	.uleb128 0xf
	.string	"fce"
	.byte	0x9
	.uahalf	0x16e
	.uaword	0x1bb6
	.byte	0
	.uleb128 0xf
	.string	"isrPriority"
	.byte	0x9
	.uahalf	0x16f
	.uaword	0x1f2
	.byte	0x4
	.uleb128 0xf
	.string	"isrTypeOfService"
	.byte	0x9
	.uahalf	0x170
	.uaword	0x18f3
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.string	"IfxFce_Crc_Config"
	.byte	0x9
	.uahalf	0x171
	.uaword	0x1bcf
	.uleb128 0x17
	.byte	0x10
	.byte	0x9
	.uahalf	0x175
	.uaword	0x1c71
	.uleb128 0xf
	.string	"fce"
	.byte	0x9
	.uahalf	0x177
	.uaword	0x1bb6
	.byte	0
	.uleb128 0xf
	.string	"crcMode"
	.byte	0x9
	.uahalf	0x178
	.uaword	0x1b09
	.byte	0x4
	.uleb128 0x10
	.uaword	.LASF7
	.byte	0x9
	.uahalf	0x179
	.uaword	0x216
	.byte	0x8
	.uleb128 0x10
	.uaword	.LASF8
	.byte	0x9
	.uahalf	0x17a
	.uaword	0x1aab
	.byte	0xc
	.byte	0
	.uleb128 0xa
	.string	"IfxFce_Crc_Crc"
	.byte	0x9
	.uahalf	0x17b
	.uaword	0x1c2f
	.uleb128 0x17
	.byte	0x1c
	.byte	0x9
	.uahalf	0x17f
	.uaword	0x1d7f
	.uleb128 0xf
	.string	"fce"
	.byte	0x9
	.uahalf	0x181
	.uaword	0x1bb6
	.byte	0
	.uleb128 0xf
	.string	"crcCheckCompared"
	.byte	0x9
	.uahalf	0x182
	.uaword	0x237
	.byte	0x4
	.uleb128 0xf
	.string	"automaticLengthReload"
	.byte	0x9
	.uahalf	0x183
	.uaword	0x237
	.byte	0x5
	.uleb128 0xf
	.string	"dataByteReflectionEnabled"
	.byte	0x9
	.uahalf	0x184
	.uaword	0x237
	.byte	0x6
	.uleb128 0xf
	.string	"crc32BitReflectionEnabled"
	.byte	0x9
	.uahalf	0x185
	.uaword	0x237
	.byte	0x7
	.uleb128 0x10
	.uaword	.LASF7
	.byte	0x9
	.uahalf	0x186
	.uaword	0x216
	.byte	0x8
	.uleb128 0xf
	.string	"crcMode"
	.byte	0x9
	.uahalf	0x187
	.uaword	0x1b09
	.byte	0xc
	.uleb128 0xf
	.string	"crcResultInverted"
	.byte	0x9
	.uahalf	0x188
	.uaword	0x237
	.byte	0x10
	.uleb128 0x10
	.uaword	.LASF8
	.byte	0x9
	.uahalf	0x189
	.uaword	0x1aab
	.byte	0x14
	.uleb128 0xf
	.string	"enabledInterrupts"
	.byte	0x9
	.uahalf	0x18a
	.uaword	0x1b7a
	.byte	0x18
	.byte	0
	.uleb128 0xa
	.string	"IfxFce_Crc_CrcConfig"
	.byte	0x9
	.uahalf	0x18b
	.uaword	0x1c88
	.uleb128 0x19
	.string	"IfxSrc_clearRequest"
	.byte	0x3
	.byte	0xe6
	.byte	0x1
	.byte	0x3
	.uaword	0x1dc5
	.uleb128 0x1a
	.string	"src"
	.byte	0x3
	.byte	0xe6
	.uaword	0x1dc5
	.byte	0
	.uleb128 0x18
	.byte	0x4
	.uaword	0x1dcb
	.uleb128 0x11
	.uaword	0x1a60
	.uleb128 0x1b
	.string	"IfxFce_getSrcPointer"
	.byte	0x2
	.byte	0xcd
	.byte	0x1
	.uaword	0x1dc5
	.byte	0x3
	.uaword	0x1dfe
	.uleb128 0x1a
	.string	"fce"
	.byte	0x2
	.byte	0xcd
	.uaword	0x1bb6
	.byte	0
	.uleb128 0x19
	.string	"IfxFce_clearCrc8ErrorFlags"
	.byte	0x2
	.byte	0xc1
	.byte	0x1
	.byte	0x3
	.uaword	0x1e2e
	.uleb128 0x1a
	.string	"fce"
	.byte	0x2
	.byte	0xc1
	.uaword	0x1bb6
	.byte	0
	.uleb128 0x19
	.string	"IfxFce_clearCrc16ErrorFlags"
	.byte	0x2
	.byte	0xae
	.byte	0x1
	.byte	0x3
	.uaword	0x1e5f
	.uleb128 0x1a
	.string	"fce"
	.byte	0x2
	.byte	0xae
	.uaword	0x1bb6
	.byte	0
	.uleb128 0x19
	.string	"IfxFce_clearCrc32ErrorFlags"
	.byte	0x2
	.byte	0xb4
	.byte	0x1
	.byte	0x3
	.uaword	0x1e9b
	.uleb128 0x1a
	.string	"fce"
	.byte	0x2
	.byte	0xb4
	.uaword	0x1bb6
	.uleb128 0x1c
	.uaword	.LASF8
	.byte	0x2
	.byte	0xb4
	.uaword	0x1aab
	.byte	0
	.uleb128 0x19
	.string	"IfxFce_enableModule"
	.byte	0x2
	.byte	0xc7
	.byte	0x1
	.byte	0x3
	.uaword	0x1ec4
	.uleb128 0x1a
	.string	"fce"
	.byte	0x2
	.byte	0xc7
	.uaword	0x1bb6
	.byte	0
	.uleb128 0x19
	.string	"IfxSrc_init"
	.byte	0x3
	.byte	0xfe
	.byte	0x1
	.byte	0x3
	.uaword	0x1f09
	.uleb128 0x1a
	.string	"src"
	.byte	0x3
	.byte	0xfe
	.uaword	0x1dc5
	.uleb128 0x1a
	.string	"typOfService"
	.byte	0x3
	.byte	0xfe
	.uaword	0x18f3
	.uleb128 0x1a
	.string	"priority"
	.byte	0x3
	.byte	0xfe
	.uaword	0x279
	.byte	0
	.uleb128 0x19
	.string	"IfxSrc_enable"
	.byte	0x3
	.byte	0xf8
	.byte	0x1
	.byte	0x3
	.uaword	0x1f2c
	.uleb128 0x1a
	.string	"src"
	.byte	0x3
	.byte	0xf8
	.uaword	0x1dc5
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.string	"IfxFce_Crc_calculateCrc16"
	.byte	0x1
	.byte	0x24
	.byte	0x1
	.uaword	0x1f2
	.uaword	.LFB201
	.uaword	.LFE201
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1fcf
	.uleb128 0x1e
	.string	"fce"
	.byte	0x1
	.byte	0x24
	.uaword	0x1fcf
	.byte	0x1
	.byte	0x64
	.uleb128 0x1f
	.uaword	.LASF9
	.byte	0x1
	.byte	0x24
	.uaword	0x1fd5
	.uaword	.LLST0
	.uleb128 0x20
	.uaword	.LASF10
	.byte	0x1
	.byte	0x24
	.uaword	0x216
	.byte	0x1
	.byte	0x54
	.uleb128 0x20
	.uaword	.LASF11
	.byte	0x1
	.byte	0x24
	.uaword	0x1f2
	.byte	0x1
	.byte	0x55
	.uleb128 0x21
	.uaword	.LASF12
	.byte	0x1
	.byte	0x26
	.uaword	0x1bb6
	.byte	0x1
	.byte	0x62
	.uleb128 0x22
	.uaword	.LASF13
	.byte	0x1
	.byte	0x27
	.uaword	0x216
	.uaword	.LLST1
	.uleb128 0x22
	.uaword	.LASF14
	.byte	0x1
	.byte	0x28
	.uaword	0x1f2
	.uaword	.LLST2
	.uleb128 0x22
	.uaword	.LASF15
	.byte	0x1
	.byte	0x29
	.uaword	0x1fe0
	.uaword	.LLST3
	.byte	0
	.uleb128 0x18
	.byte	0x4
	.uaword	0x1c71
	.uleb128 0x18
	.byte	0x4
	.uaword	0x1fdb
	.uleb128 0x23
	.uaword	0x1f2
	.uleb128 0x18
	.byte	0x4
	.uaword	0x1f2
	.uleb128 0x1d
	.byte	0x1
	.string	"IfxFce_Crc_calculateCrc32"
	.byte	0x1
	.byte	0x3f
	.byte	0x1
	.uaword	0x216
	.uaword	.LFB202
	.uaword	.LFE202
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x209a
	.uleb128 0x1e
	.string	"fce"
	.byte	0x1
	.byte	0x3f
	.uaword	0x1fcf
	.byte	0x1
	.byte	0x64
	.uleb128 0x1f
	.uaword	.LASF9
	.byte	0x1
	.byte	0x3f
	.uaword	0x209a
	.uaword	.LLST4
	.uleb128 0x20
	.uaword	.LASF10
	.byte	0x1
	.byte	0x3f
	.uaword	0x216
	.byte	0x1
	.byte	0x54
	.uleb128 0x20
	.uaword	.LASF11
	.byte	0x1
	.byte	0x3f
	.uaword	0x216
	.byte	0x1
	.byte	0x55
	.uleb128 0x21
	.uaword	.LASF12
	.byte	0x1
	.byte	0x41
	.uaword	0x1bb6
	.byte	0x1
	.byte	0x62
	.uleb128 0x22
	.uaword	.LASF13
	.byte	0x1
	.byte	0x42
	.uaword	0x216
	.uaword	.LLST5
	.uleb128 0x22
	.uaword	.LASF14
	.byte	0x1
	.byte	0x43
	.uaword	0x216
	.uaword	.LLST6
	.uleb128 0x22
	.uaword	.LASF15
	.byte	0x1
	.byte	0x44
	.uaword	0x20a5
	.uaword	.LLST7
	.uleb128 0x24
	.string	"inPtr"
	.byte	0x1
	.byte	0x45
	.uaword	0x20ab
	.uaword	.LLST8
	.byte	0
	.uleb128 0x18
	.byte	0x4
	.uaword	0x20a0
	.uleb128 0x23
	.uaword	0x216
	.uleb128 0x18
	.byte	0x4
	.uaword	0x216
	.uleb128 0x18
	.byte	0x4
	.uaword	0x20b1
	.uleb128 0x11
	.uaword	0x216
	.uleb128 0x1d
	.byte	0x1
	.string	"IfxFce_Crc_calculateCrc8"
	.byte	0x1
	.byte	0x6f
	.byte	0x1
	.uaword	0x1c7
	.uaword	.LFB203
	.uaword	.LFE203
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2158
	.uleb128 0x1e
	.string	"fce"
	.byte	0x1
	.byte	0x6f
	.uaword	0x1fcf
	.byte	0x1
	.byte	0x64
	.uleb128 0x1f
	.uaword	.LASF9
	.byte	0x1
	.byte	0x6f
	.uaword	0x2158
	.uaword	.LLST9
	.uleb128 0x20
	.uaword	.LASF10
	.byte	0x1
	.byte	0x6f
	.uaword	0x216
	.byte	0x1
	.byte	0x54
	.uleb128 0x20
	.uaword	.LASF11
	.byte	0x1
	.byte	0x6f
	.uaword	0x1c7
	.byte	0x1
	.byte	0x55
	.uleb128 0x21
	.uaword	.LASF12
	.byte	0x1
	.byte	0x71
	.uaword	0x1bb6
	.byte	0x1
	.byte	0x62
	.uleb128 0x22
	.uaword	.LASF13
	.byte	0x1
	.byte	0x72
	.uaword	0x216
	.uaword	.LLST10
	.uleb128 0x22
	.uaword	.LASF14
	.byte	0x1
	.byte	0x73
	.uaword	0x1c7
	.uaword	.LLST11
	.uleb128 0x22
	.uaword	.LASF15
	.byte	0x1
	.byte	0x74
	.uaword	0x2163
	.uaword	.LLST12
	.byte	0
	.uleb128 0x18
	.byte	0x4
	.uaword	0x215e
	.uleb128 0x23
	.uaword	0x1c7
	.uleb128 0x18
	.byte	0x4
	.uaword	0x1c7
	.uleb128 0x25
	.byte	0x1
	.string	"IfxFce_Crc_clearErrorFlags"
	.byte	0x1
	.byte	0x8c
	.byte	0x1
	.uaword	.LFB204
	.uaword	.LFE204
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2202
	.uleb128 0x1e
	.string	"fce"
	.byte	0x1
	.byte	0x8c
	.uaword	0x1fcf
	.byte	0x1
	.byte	0x64
	.uleb128 0x26
	.uaword	0x1e5f
	.uaword	.LBB20
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x98
	.uaword	0x21cb
	.uleb128 0x27
	.uaword	0x1e8f
	.uaword	.LLST13
	.uleb128 0x27
	.uaword	0x1e84
	.uaword	.LLST14
	.byte	0
	.uleb128 0x28
	.uaword	0x1dfe
	.uaword	.LBB23
	.uaword	.LBE23
	.byte	0x1
	.byte	0x90
	.uaword	0x21e8
	.uleb128 0x27
	.uaword	0x1e22
	.uaword	.LLST15
	.byte	0
	.uleb128 0x29
	.uaword	0x1e2e
	.uaword	.LBB25
	.uaword	.LBE25
	.byte	0x1
	.byte	0x94
	.uleb128 0x27
	.uaword	0x1e53
	.uaword	.LLST16
	.byte	0
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.string	"IfxFce_Crc_deInitModule"
	.byte	0x1
	.byte	0x9d
	.byte	0x1
	.uaword	.LFB205
	.uaword	.LFE205
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2248
	.uleb128 0x2a
	.string	"fce"
	.byte	0x1
	.byte	0x9d
	.uaword	0x1fcf
	.uaword	.LLST17
	.uleb128 0x2b
	.uaword	.LVL37
	.byte	0x1
	.uaword	0x257b
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.string	"IfxFce_Crc_getInterruptStatus"
	.byte	0x1
	.byte	0xa3
	.byte	0x1
	.uaword	0x1518
	.uaword	.LFB206
	.uaword	.LFE206
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x22ac
	.uleb128 0x2a
	.string	"fce"
	.byte	0x1
	.byte	0xa3
	.uaword	0x1fcf
	.uaword	.LLST18
	.uleb128 0x2b
	.uaword	.LVL40
	.byte	0x1
	.uaword	0x259e
	.uleb128 0x2b
	.uaword	.LVL41
	.byte	0x1
	.uaword	0x25d6
	.uleb128 0x2b
	.uaword	.LVL42
	.byte	0x1
	.uaword	0x2608
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.string	"IfxFce_Crc_initCrc"
	.byte	0x1
	.byte	0xb4
	.byte	0x1
	.uaword	.LFB207
	.uaword	.LFE207
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2391
	.uleb128 0x2a
	.string	"fceCrc"
	.byte	0x1
	.byte	0xb4
	.uaword	0x1fcf
	.uaword	.LLST19
	.uleb128 0x1f
	.uaword	.LASF16
	.byte	0x1
	.byte	0xb4
	.uaword	0x2391
	.uaword	.LLST20
	.uleb128 0x21
	.uaword	.LASF12
	.byte	0x1
	.byte	0xb7
	.uaword	0x1bb6
	.byte	0x1
	.byte	0x6d
	.uleb128 0x22
	.uaword	.LASF17
	.byte	0x1
	.byte	0xbb
	.uaword	0x1f2
	.uaword	.LLST21
	.uleb128 0x24
	.string	"tempCFG"
	.byte	0x1
	.byte	0xbe
	.uaword	0xf2a
	.uaword	.LLST22
	.uleb128 0x2c
	.uaword	.LVL45
	.uaword	0x263b
	.uleb128 0x2d
	.uaword	.LVL47
	.uaword	0x2667
	.uaword	0x2340
	.uleb128 0x2e
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.uaword	.LVL50
	.byte	0x1
	.uaword	0x2691
	.uaword	0x2355
	.uleb128 0x2e
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.uaword	.LVL51
	.byte	0x1
	.uaword	0x2691
	.uaword	0x236a
	.uleb128 0x2e
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.uaword	.LVL52
	.byte	0x1
	.uaword	0x2691
	.uaword	0x237f
	.uleb128 0x2e
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.uaword	.LVL53
	.byte	0x1
	.uaword	0x2691
	.uleb128 0x2e
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x18
	.byte	0x4
	.uaword	0x2397
	.uleb128 0x23
	.uaword	0x1d7f
	.uleb128 0x25
	.byte	0x1
	.string	"IfxFce_Crc_initCrcConfig"
	.byte	0x1
	.byte	0xe4
	.byte	0x1
	.uaword	.LFB208
	.uaword	.LFE208
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x23e4
	.uleb128 0x20
	.uaword	.LASF16
	.byte	0x1
	.byte	0xe4
	.uaword	0x23e4
	.byte	0x1
	.byte	0x64
	.uleb128 0x1e
	.string	"fce"
	.byte	0x1
	.byte	0xe4
	.uaword	0x23ea
	.byte	0x1
	.byte	0x65
	.byte	0
	.uleb128 0x18
	.byte	0x4
	.uaword	0x1d7f
	.uleb128 0x18
	.byte	0x4
	.uaword	0x1bbc
	.uleb128 0x25
	.byte	0x1
	.string	"IfxFce_Crc_initModule"
	.byte	0x1
	.byte	0xf4
	.byte	0x1
	.uaword	.LFB209
	.uaword	.LFE209
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2519
	.uleb128 0x2a
	.string	"fce"
	.byte	0x1
	.byte	0xf4
	.uaword	0x23ea
	.uaword	.LLST23
	.uleb128 0x2a
	.string	"config"
	.byte	0x1
	.byte	0xf4
	.uaword	0x2519
	.uaword	.LLST24
	.uleb128 0x22
	.uaword	.LASF12
	.byte	0x1
	.byte	0xf7
	.uaword	0x1bb6
	.uaword	.LLST25
	.uleb128 0x22
	.uaword	.LASF17
	.byte	0x1
	.byte	0xf9
	.uaword	0x1f2
	.uaword	.LLST26
	.uleb128 0x31
	.string	"src"
	.byte	0x1
	.byte	0xfe
	.uaword	0x1dc5
	.uleb128 0x26
	.uaword	0x1e9b
	.uaword	.LBB28
	.uaword	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0xfb
	.uaword	0x2481
	.uleb128 0x27
	.uaword	0x1eb8
	.uaword	.LLST27
	.byte	0
	.uleb128 0x26
	.uaword	0x1ec4
	.uaword	.LBB32
	.uaword	.Ldebug_ranges0+0x30
	.byte	0x1
	.byte	0xff
	.uaword	0x24cc
	.uleb128 0x27
	.uaword	0x1ef8
	.uaword	.LLST28
	.uleb128 0x27
	.uaword	0x1ee4
	.uaword	.LLST29
	.uleb128 0x32
	.uaword	0x1ed9
	.sleb128 -268204880
	.uleb128 0x33
	.uaword	0x1d9c
	.uaword	.LBB34
	.uaword	.LBE34
	.byte	0x3
	.uahalf	0x102
	.uleb128 0x32
	.uaword	0x1db9
	.sleb128 -268204880
	.byte	0
	.byte	0
	.uleb128 0x34
	.uaword	0x1f09
	.uaword	.LBB40
	.uaword	.LBE40
	.byte	0x1
	.uahalf	0x100
	.uaword	0x24eb
	.uleb128 0x32
	.uaword	0x1f20
	.sleb128 -268204880
	.byte	0
	.uleb128 0x2c
	.uaword	.LVL57
	.uaword	0x263b
	.uleb128 0x2d
	.uaword	.LVL59
	.uaword	0x2667
	.uaword	0x2508
	.uleb128 0x2e
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.uaword	.LVL61
	.uaword	0x2691
	.uleb128 0x2e
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x18
	.byte	0x4
	.uaword	0x251f
	.uleb128 0x23
	.uaword	0x1c15
	.uleb128 0x36
	.byte	0x1
	.string	"IfxFce_Crc_initModuleConfig"
	.byte	0x1
	.uahalf	0x104
	.byte	0x1
	.uaword	.LFB210
	.uaword	.LFE210
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2575
	.uleb128 0x37
	.string	"config"
	.byte	0x1
	.uahalf	0x104
	.uaword	0x2575
	.byte	0x1
	.byte	0x64
	.uleb128 0x37
	.string	"fce"
	.byte	0x1
	.uahalf	0x104
	.uaword	0x1bb6
	.byte	0x1
	.byte	0x65
	.byte	0
	.uleb128 0x18
	.byte	0x4
	.uaword	0x1c15
	.uleb128 0x38
	.byte	0x1
	.string	"IfxFce_resetModule"
	.byte	0x2
	.byte	0x5e
	.byte	0x1
	.byte	0x1
	.uaword	0x259e
	.uleb128 0x39
	.uaword	0x1bb6
	.byte	0
	.uleb128 0x3a
	.byte	0x1
	.string	"IfxFce_getCrc32InterruptStatus"
	.byte	0x2
	.byte	0xa0
	.byte	0x1
	.uaword	0x1518
	.byte	0x1
	.uaword	0x25d6
	.uleb128 0x39
	.uaword	0x1bb6
	.uleb128 0x39
	.uaword	0x1aab
	.byte	0
	.uleb128 0x3a
	.byte	0x1
	.string	"IfxFce_getCrc8InterruptStatus"
	.byte	0x2
	.byte	0xa6
	.byte	0x1
	.uaword	0x1518
	.byte	0x1
	.uaword	0x2608
	.uleb128 0x39
	.uaword	0x1bb6
	.byte	0
	.uleb128 0x3a
	.byte	0x1
	.string	"IfxFce_getCrc16InterruptStatus"
	.byte	0x2
	.byte	0x99
	.byte	0x1
	.uaword	0x1518
	.byte	0x1
	.uaword	0x263b
	.uleb128 0x39
	.uaword	0x1bb6
	.byte	0
	.uleb128 0x3b
	.byte	0x1
	.string	"IfxScuWdt_getCpuWatchdogPassword"
	.byte	0xa
	.uahalf	0x15d
	.byte	0x1
	.uaword	0x1f2
	.byte	0x1
	.uleb128 0x38
	.byte	0x1
	.string	"IfxScuWdt_clearCpuEndinit"
	.byte	0xa
	.byte	0xbb
	.byte	0x1
	.byte	0x1
	.uaword	0x2691
	.uleb128 0x39
	.uaword	0x1f2
	.byte	0
	.uleb128 0x3c
	.byte	0x1
	.string	"IfxScuWdt_setCpuEndinit"
	.byte	0xa
	.byte	0xd1
	.byte	0x1
	.byte	0x1
	.uleb128 0x39
	.uaword	0x1f2
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0x11
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x17
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
	.uleb128 0x16
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
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
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
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x31
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
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0x35
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0-.Ltext0
	.uaword	.LVL3-.Ltext0
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL3-.Ltext0
	.uaword	.LFE201-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL2-.Ltext0
	.uaword	.LVL3-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL5-.Ltext0
	.uaword	.LVL6-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL1-.Ltext0
	.uaword	.LVL3-.Ltext0
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL3-.Ltext0
	.uaword	.LVL4-.Ltext0
	.uahalf	0x3
	.byte	0x85
	.sleb128 2
	.byte	0x9f
	.uaword	.LVL4-.Ltext0
	.uaword	.LFE201-.Ltext0
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL7-.Ltext0
	.uaword	.LVL11-.Ltext0
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL11-.Ltext0
	.uaword	.LVL14-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	.LVL14-.Ltext0
	.uaword	.LVL16-.Ltext0
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL16-.Ltext0
	.uaword	.LFE202-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL10-.Ltext0
	.uaword	.LVL11-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL13-.Ltext0
	.uaword	.LVL14-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL17-.Ltext0
	.uaword	.LFE202-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL8-.Ltext0
	.uaword	.LVL11-.Ltext0
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL11-.Ltext0
	.uaword	.LVL12-.Ltext0
	.uahalf	0x3
	.byte	0x85
	.sleb128 4
	.byte	0x9f
	.uaword	.LVL12-.Ltext0
	.uaword	.LFE202-.Ltext0
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL9-.Ltext0
	.uaword	.LVL14-.Ltext0
	.uahalf	0x1
	.byte	0x63
	.uaword	.LVL15-.Ltext0
	.uaword	.LFE202-.Ltext0
	.uahalf	0x1
	.byte	0x63
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL18-.Ltext0
	.uaword	.LVL21-.Ltext0
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL21-.Ltext0
	.uaword	.LFE203-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL20-.Ltext0
	.uaword	.LVL24-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL25-.Ltext0
	.uaword	.LVL26-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL19-.Ltext0
	.uaword	.LVL21-.Ltext0
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL21-.Ltext0
	.uaword	.LVL23-.Ltext0
	.uahalf	0x3
	.byte	0x85
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL23-.Ltext0
	.uaword	.LVL24-.Ltext0
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL28-.Ltext0
	.uaword	.LVL29-.Ltext0
	.uahalf	0x2
	.byte	0x84
	.sleb128 12
	.uaword	.LVL32-.Ltext0
	.uaword	.LVL33-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL33-.Ltext0
	.uaword	.LVL34-.Ltext0
	.uahalf	0x2
	.byte	0x84
	.sleb128 12
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL28-.Ltext0
	.uaword	.LVL30-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL32-.Ltext0
	.uaword	.LFE204-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL30-.Ltext0
	.uaword	.LVL31-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL31-.Ltext0
	.uaword	.LVL32-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL35-.Ltext0
	.uaword	.LVL36-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL36-.Ltext0
	.uaword	.LFE205-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL38-.Ltext0
	.uaword	.LVL39-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL39-.Ltext0
	.uaword	.LFE206-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL43-.Ltext0
	.uaword	.LVL45-1-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL45-1-.Ltext0
	.uaword	.LFE207-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL43-.Ltext0
	.uaword	.LVL45-1-.Ltext0
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL45-1-.Ltext0
	.uaword	.LFE207-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL46-.Ltext0
	.uaword	.LVL47-1-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL47-1-.Ltext0
	.uaword	.LFE207-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL49-.Ltext0
	.uaword	.LFE207-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL55-.Ltext0
	.uaword	.LVL57-1-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL57-1-.Ltext0
	.uaword	.LFE209-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL55-.Ltext0
	.uaword	.LVL57-1-.Ltext0
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL57-1-.Ltext0
	.uaword	.LFE209-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL56-.Ltext0
	.uaword	.LVL60-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL58-.Ltext0
	.uaword	.LVL59-1-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL59-1-.Ltext0
	.uaword	.LVL62-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL59-.Ltext0
	.uaword	.LVL60-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL62-.Ltext0
	.uaword	.LVL63-.Ltext0
	.uahalf	0x2
	.byte	0x8c
	.sleb128 4
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL62-.Ltext0
	.uaword	.LVL64-.Ltext0
	.uahalf	0x1
	.byte	0x5f
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
	.uaword	.LBB20-.Ltext0
	.uaword	.LBE20-.Ltext0
	.uaword	.LBB27-.Ltext0
	.uaword	.LBE27-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB28-.Ltext0
	.uaword	.LBE28-.Ltext0
	.uaword	.LBB31-.Ltext0
	.uaword	.LBE31-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB32-.Ltext0
	.uaword	.LBE32-.Ltext0
	.uaword	.LBB38-.Ltext0
	.uaword	.LBE38-.Ltext0
	.uaword	.LBB39-.Ltext0
	.uaword	.LBE39-.Ltext0
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF14:
	.string	"crcResultValue"
.LASF5:
	.string	"LENGTH"
.LASF9:
	.string	"crcData"
.LASF7:
	.string	"expectedCrc"
.LASF10:
	.string	"crcDataLength"
.LASF13:
	.string	"inputDataCounter"
.LASF12:
	.string	"fceSFR"
.LASF15:
	.string	"dataPtr"
.LASF1:
	.string	"CHECK"
.LASF4:
	.string	"reserved_1"
.LASF0:
	.string	"reserved_2"
.LASF6:
	.string	"reserved_4"
.LASF3:
	.string	"reserved_8"
.LASF16:
	.string	"crcConfig"
.LASF11:
	.string	"crcStartValue"
.LASF8:
	.string	"crc32Kernel"
.LASF2:
	.string	"reserved_16"
.LASF17:
	.string	"password"
	.extern	IfxScuWdt_setCpuEndinit,STT_FUNC,0
	.extern	IfxScuWdt_clearCpuEndinit,STT_FUNC,0
	.extern	IfxScuWdt_getCpuWatchdogPassword,STT_FUNC,0
	.extern	IfxFce_getCrc16InterruptStatus,STT_FUNC,0
	.extern	IfxFce_getCrc8InterruptStatus,STT_FUNC,0
	.extern	IfxFce_getCrc32InterruptStatus,STT_FUNC,0
	.extern	IfxFce_resetModule,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.1.0-infineon-2.0-df254e8) 4.9.4 build on 2018-04-18"
