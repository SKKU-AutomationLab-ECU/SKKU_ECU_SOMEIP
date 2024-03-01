	.file	"Peripherals_CAN.c"
.section .text,"ax",@progbits
.Ltext0:
	.align 1
	.global	Set_CAN_Module
	.type	Set_CAN_Module, @function
Set_CAN_Module:
.LFB339:
	.file 1 "0_Src/0_AppSw/Tricore/Device_Driver/Driver_Communication/Peripherals_CAN.c"
	.loc 1 55 0
	sub.a	%SP, 144
.LCFI0:
	.loc 1 58 0
	movh.a	%a5, 61442
	lea	%a4, [%SP] 4
	lea	%a5, [%a5] -32768
	call	IfxMultican_Can_initModuleConfig
.LVL0:
	.loc 1 61 0
	movh.a	%a4, hi:pMultican
	lea	%a4, [%a4] lo:pMultican
	lea	%a5, [%SP] 4
	j	IfxMultican_Can_initModule
.LVL1:
.LFE339:
	.size	Set_CAN_Module, .-Set_CAN_Module
	.align 1
	.global	Set_CAN_Enable
	.type	Set_CAN_Enable, @function
Set_CAN_Enable:
.LFB340:
	.loc 1 65 0
.LVL2:
	.loc 1 68 0
	movh.a	%a12, hi:pMultican
	.loc 1 65 0
	sub.a	%SP, 104
.LCFI1:
	.loc 1 68 0
	lea	%a12, [%a12] lo:pMultican
	.loc 1 65 0
	mov	%d15, %d4
	.loc 1 68 0
	mov.aa	%a4, %SP
	mov.aa	%a5, %a12
	.loc 1 65 0
	mov	%d8, %d5
	.loc 1 68 0
	call	IfxMultican_Can_Node_initConfig
.LVL3:
	.loc 1 72 0
	jge.u	%d15, 4, .L3
	movh.a	%a15, hi:.L5
	lea	%a15, [%a15] lo:.L5
	addsc.a	%a15, %a15, %d15, 2
	ji	%a15
	.align 2
	.align 2
.L5:
	.code32
	j	.L4
	.code32
	j	.L6
	.code32
	j	.L7
	.code32
	j	.L8
.L6:
	.loc 1 82 0
	mov	%d2, 1
	st.w	[%SP] 4, %d2
	.loc 1 83 0
	movh	%d2, hi:IfxMultican_RXD1B_P14_1_IN
	addi	%d2, %d2, lo:IfxMultican_RXD1B_P14_1_IN
	st.w	[%SP] 44, %d2
	.loc 1 84 0
	movh	%d2, hi:IfxMultican_TXD1_P14_0_OUT
	addi	%d2, %d2, lo:IfxMultican_TXD1_P14_0_OUT
	st.w	[%SP] 52, %d2
.L3:
	.loc 1 101 0
	mov	%d2, 16
	.loc 1 106 0
	movh.a	%a15, hi:Baudrate_nominal
	lea	%a15, [%a15] lo:Baudrate_nominal
	.loc 1 101 0
	st.w	[%SP] 48, %d2
	.loc 1 102 0
	mov	%d2, 128
	.loc 1 117 0
	addsc.a	%a4, %a12, %d15, 3
	mov.aa	%a5, %SP
	.loc 1 102 0
	st.w	[%SP] 56, %d2
	.loc 1 106 0
	sh	%d2, %d15, 2
	addsc.a	%a15, %a15, %d2, 0
	.loc 1 117 0
	addsc.a	%a4, %a4, %d15, 3
	.loc 1 106 0
	ld.w	%d3, [%a15]0
	.loc 1 109 0
	movh.a	%a15, hi:SJW_nominal
	lea	%a15, [%a15] lo:SJW_nominal
	addsc.a	%a15, %a15, %d2, 0
	.loc 1 106 0
	st.w	[%SP] 24, %d3
	st.w	[%SP] 12, %d3
	.loc 1 109 0
	ld.w	%d3, [%a15]0
	.loc 1 110 0
	movh.a	%a15, hi:SP_nominal
	lea	%a15, [%a15] lo:SP_nominal
	addsc.a	%a15, %a15, %d2, 0
	.loc 1 109 0
	st.h	[%SP] 28, %d3
	.loc 1 110 0
	ld.w	%d3, [%a15]0
	.loc 1 111 0
	movh.a	%a15, hi:Baudrate_fast
	lea	%a15, [%a15] lo:Baudrate_fast
	addsc.a	%a15, %a15, %d2, 0
	.loc 1 110 0
	st.h	[%SP] 30, %d3
	.loc 1 111 0
	ld.w	%d3, [%a15]0
	.loc 1 112 0
	movh.a	%a15, hi:SJW_fast
	lea	%a15, [%a15] lo:SJW_fast
	addsc.a	%a15, %a15, %d2, 0
	.loc 1 111 0
	st.w	[%SP] 32, %d3
	.loc 1 112 0
	ld.w	%d3, [%a15]0
	.loc 1 113 0
	movh.a	%a15, hi:SP_fast
	lea	%a15, [%a15] lo:SP_fast
	addsc.a	%a15, %a15, %d2, 0
	.loc 1 117 0
	add.a	%a4, 4
	.loc 1 113 0
	ld.w	%d2, [%a15]0
	.loc 1 115 0
	movh.a	%a15, hi:LDO
	lea	%a15, [%a15] lo:LDO
	addsc.a	%a15, %a15, %d15, 0
	.loc 1 113 0
	st.h	[%SP] 38, %d2
	.loc 1 115 0
	ld.bu	%d2, [%a15]0
	.loc 1 103 0
	st.b	[%SP] 20, %d8
	.loc 1 112 0
	st.h	[%SP] 36, %d3
	.loc 1 115 0
	st.h	[%SP] 40, %d2
	.loc 1 117 0
	j	IfxMultican_Can_Node_init
.LVL4:
.L7:
	.loc 1 88 0
	mov	%d2, 2
	st.w	[%SP] 4, %d2
	.loc 1 89 0
	movh	%d2, hi:IfxMultican_RXD2E_P10_2_IN
	addi	%d2, %d2, lo:IfxMultican_RXD2E_P10_2_IN
	st.w	[%SP] 44, %d2
	.loc 1 90 0
	movh	%d2, hi:IfxMultican_TXD2_P10_3_OUT
	addi	%d2, %d2, lo:IfxMultican_TXD2_P10_3_OUT
	st.w	[%SP] 52, %d2
	.loc 1 91 0
	j	.L3
.L4:
	.loc 1 76 0
	mov	%d2, 0
	st.w	[%SP] 4, %d2
	.loc 1 77 0
	movh	%d2, hi:IfxMultican_RXD0B_P20_7_IN
	addi	%d2, %d2, lo:IfxMultican_RXD0B_P20_7_IN
	st.w	[%SP] 44, %d2
	.loc 1 78 0
	movh	%d2, hi:IfxMultican_TXD0_P20_8_OUT
	addi	%d2, %d2, lo:IfxMultican_TXD0_P20_8_OUT
	st.w	[%SP] 52, %d2
	.loc 1 79 0
	j	.L3
.L8:
	.loc 1 94 0
	mov	%d2, 3
	st.w	[%SP] 4, %d2
	.loc 1 95 0
	movh	%d2, hi:IfxMultican_RXD3A_P00_3_IN
	addi	%d2, %d2, lo:IfxMultican_RXD3A_P00_3_IN
	st.w	[%SP] 44, %d2
	.loc 1 96 0
	movh	%d2, hi:IfxMultican_TXD3_P00_2_OUT
	addi	%d2, %d2, lo:IfxMultican_TXD3_P00_2_OUT
	st.w	[%SP] 52, %d2
	.loc 1 97 0
	j	.L3
.LFE340:
	.size	Set_CAN_Enable, .-Set_CAN_Enable
	.align 1
	.global	Set_CAN_BitRate
	.type	Set_CAN_BitRate, @function
Set_CAN_BitRate:
.LFB341:
	.loc 1 122 0
.LVL5:
	.loc 1 123 0
	movh.a	%a15, hi:Baudrate_nominal
	sh	%d4, 2
.LVL6:
	lea	%a15, [%a15] lo:Baudrate_nominal
	addsc.a	%a15, %a15, %d4, 0
	st.w	[%a15]0, %d5
	.loc 1 124 0
	movh.a	%a15, hi:Baudrate_fast
	lea	%a15, [%a15] lo:Baudrate_fast
	addsc.a	%a15, %a15, %d4, 0
	st.w	[%a15]0, %d6
	ret
.LFE341:
	.size	Set_CAN_BitRate, .-Set_CAN_BitRate
	.align 1
	.global	Set_CAN_BitTiming
	.type	Set_CAN_BitTiming, @function
Set_CAN_BitTiming:
.LFB342:
	.loc 1 131 0
.LVL7:
	.loc 1 132 0
	movh.a	%a15, hi:SJW_nominal
	sh	%d15, %d4, 2
	lea	%a15, [%a15] lo:SJW_nominal
	addsc.a	%a15, %a15, %d15, 0
	st.w	[%a15]0, %d5
	.loc 1 133 0
	movh.a	%a15, hi:SP_nominal
	lea	%a15, [%a15] lo:SP_nominal
	addsc.a	%a15, %a15, %d15, 0
	st.w	[%a15]0, %d6
	.loc 1 134 0
	movh.a	%a15, hi:SJW_fast
	lea	%a15, [%a15] lo:SJW_fast
	addsc.a	%a15, %a15, %d15, 0
	st.w	[%a15]0, %d7
	.loc 1 135 0
	movh.a	%a15, hi:SP_fast
	lea	%a15, [%a15] lo:SP_fast
	addsc.a	%a15, %a15, %d15, 0
	ld.w	%d15, [%SP]0
	st.w	[%a15]0, %d15
	.loc 1 136 0
	movh.a	%a15, hi:LDO
	lea	%a15, [%a15] lo:LDO
	addsc.a	%a15, %a15, %d4, 0
	ld.bu	%d15, [%SP] 4
	st.b	[%a15]0, %d15
	ret
.LFE342:
	.size	Set_CAN_BitTiming, .-Set_CAN_BitTiming
	.align 1
	.global	Set_CAN_msgObject
	.type	Set_CAN_msgObject, @function
Set_CAN_msgObject:
.LFB343:
	.loc 1 142 0
.LVL8:
	.loc 1 145 0
	sh	%d5, 4
.LVL9:
	mov.a	%a5, %d5
	movh.a	%a4, hi:pMultican
	mov.d	%d2, %a4
	addi	%d10, %d2, lo:pMultican
	add.a	%a5, 4
	.loc 1 142 0
	sub.a	%SP, 88
.LCFI2:
	.loc 1 145 0
	addsc.a	%a5, %a5, %d10, 0
	lea	%a4, [%SP] 4
	.loc 1 142 0
	mov	%e8, %d6, %d4
	mov	%d15, %d7
	.loc 1 145 0
	call	IfxMultican_Can_MsgObj_initConfig
.LVL10:
	.loc 1 148 0
	mov	%d2, 1
	.loc 1 147 0
	st.w	[%SP] 8, %d8
	.loc 1 149 0
	st.w	[%SP] 48, %d9
	.loc 1 148 0
	st.h	[%SP] 12, %d2
	.loc 1 150 0
	mov	%d2, 1
	st.w	[%SP] 40, %d2
	.loc 1 154 0
	jlt.u	%d15, 9, .L22
	.loc 1 161 0
	jge.u	%d15, 13, .L15
	.loc 1 162 0
	mov	%d15, 9
	st.w	[%SP] 20, %d15
.L16:
	.loc 1 175 0
	ld.bu	%d15, [%SP] 24
	insert	%d15, %d15, 1, 0, 1
	st.b	[%SP] 24, %d15
	.loc 1 176 0
	addi	%d15, %d8, 160
	st.w	[%SP] 28, %d15
	.loc 1 177 0
	addi	%d15, %d8, 180
	st.w	[%SP] 32, %d15
.L14:
	.loc 1 180 0
	mov	%d15, -1
	sh	%d15, -1
	.loc 1 182 0
	ld.bu	%d2, [%SP] 88
	.loc 1 186 0
	lea	%a5, [%SP] 4
	.loc 1 180 0
	st.w	[%SP] 44, %d15
	.loc 1 181 0
	ld.bu	%d15, [%SP] 24
	insert	%d15, %d15, 1, 1, 1
	st.b	[%SP] 24, %d15
	.loc 1 182 0
	ld.bu	%d15, [%SP] 36
	ins.t	%d15, %d15,0, %d2,0
	st.b	[%SP] 36, %d15
	.loc 1 186 0
	madd	%d15, %d10, %d8, 16
	mov.a	%a4, %d15
	lea	%a4, [%a4] 68
	j	IfxMultican_Can_MsgObj_init
.LVL11:
.L15:
	.loc 1 163 0
	ge.u	%d2, %d15, 17
	jz	%d2, .L23
	.loc 1 165 0
	ge.u	%d2, %d15, 21
	jnz	%d2, .L18
	.loc 1 166 0
	mov	%d15, 11
	st.w	[%SP] 20, %d15
	j	.L16
.L22:
	.loc 1 156 0
	st.w	[%SP] 20, %d15
	.loc 1 157 0
	ld.bu	%d15, [%SP] 24
	andn	%d15, %d15, ~(-2)
	st.b	[%SP] 24, %d15
	j	.L14
.L23:
	.loc 1 164 0
	mov	%d15, 10
	st.w	[%SP] 20, %d15
	j	.L16
.L18:
	.loc 1 167 0
	ge.u	%d2, %d15, 25
	jz	%d2, .L24
	.loc 1 169 0
	ge.u	%d2, %d15, 33
	jnz	%d2, .L20
	.loc 1 170 0
	mov	%d15, 13
	st.w	[%SP] 20, %d15
	j	.L16
.L24:
	.loc 1 168 0
	mov	%d15, 12
	st.w	[%SP] 20, %d15
	j	.L16
.L20:
	.loc 1 171 0
	ge.u	%d15, %d15, 49
	jz	%d15, .L25
	.loc 1 174 0
	mov	%d15, 15
	st.w	[%SP] 20, %d15
	j	.L16
.L25:
	.loc 1 172 0
	mov	%d15, 14
	st.w	[%SP] 20, %d15
	j	.L16
.LFE343:
	.size	Set_CAN_msgObject, .-Set_CAN_msgObject
	.align 1
	.global	Set_CAN_Rx
	.type	Set_CAN_Rx, @function
Set_CAN_Rx:
.LFB344:
	.loc 1 192 0
.LVL12:
	mov	%d15, %d4
	.loc 1 194 0
	addi	%d9, %d15, -20
	sh	%d2, %d9, 2
	mov.a	%a15, %d2
	.loc 1 192 0
	sub.a	%SP, 88
.LCFI3:
	.loc 1 194 0
	lea	%a15, [%a15] -30464
	.loc 1 192 0
	ld.hu	%d4, [%SP] 96
.LVL13:
	.loc 1 194 0
	addih.a	%a15, %a15, 61444
.LVL14:
	.loc 1 195 0
	st.b	[%a15]0, %d4
	.loc 1 196 0
	ld.w	%d3, [%a15]0
	.loc 1 197 0
	ld.bu	%d2, [%SP] 100
	.loc 1 192 0
	mov	%e10, %d5, %d6
	.loc 1 197 0
	insert	%d2, %d3, %d2, 11, 2
	.loc 1 192 0
	ld.bu	%d12, [%SP] 88
	.loc 1 198 0
	insert	%d2, %d2, 15, 25, 1
	.loc 1 192 0
	mov	%d8, %d7
	.loc 1 198 0
	insert	%d2, %d2, 1, 10, 1
	.loc 1 204 0
	sh	%d11, 4
	.loc 1 198 0
	st.w	[%a15]0, %d2
.LVL15:
	.loc 1 200 0
	call	IfxCpu_Irq_installInterruptHandler
.LVL16:
	.loc 1 204 0
	movh.a	%a4, hi:pMultican
	mov.a	%a5, %d11
	mov.d	%d2, %a4
	addi	%d13, %d2, lo:pMultican
	add.a	%a5, 4
	addsc.a	%a5, %a5, %d13, 0
	lea	%a4, [%SP] 4
	call	IfxMultican_Can_MsgObj_initConfig
.LVL17:
	.loc 1 207 0
	mov	%d2, 1
	.loc 1 206 0
	st.w	[%SP] 8, %d15
	.loc 1 209 0
	st.w	[%SP] 48, %d8
	.loc 1 207 0
	st.h	[%SP] 12, %d2
	.loc 1 208 0
	mov	%d2, 0
	st.w	[%SP] 40, %d2
	.loc 1 212 0
	jnz	%d12, .L29
	.loc 1 221 0
	mov	%d2, 8
	st.w	[%SP] 20, %d2
	.loc 1 222 0
	ld.bu	%d2, [%SP] 24
	andn	%d2, %d2, ~(-2)
	st.b	[%SP] 24, %d2
.L28:
	.loc 1 227 0
	ld.bu	%d2, [%SP] 24
	.loc 1 228 0
	ld.bu	%d3, [%SP] 92
	.loc 1 227 0
	ins.t	%d2, %d2,1, %d8,0
	.loc 1 234 0
	lea	%a5, [%SP] 4
	.loc 1 226 0
	st.w	[%SP] 44, %d10
	.loc 1 227 0
	st.b	[%SP] 24, %d2
	.loc 1 228 0
	ld.bu	%d2, [%SP] 36
	.loc 1 230 0
	st.w	[%SP] 60, %d9
	.loc 1 228 0
	ins.t	%d2, %d2,0, %d3,0
	st.b	[%SP] 36, %d2
	.loc 1 229 0
	mov	%d2, 1
	st.b	[%SP] 56, %d2
	.loc 1 234 0
	madd	%d2, %d13, %d15, 16
	mov.a	%a4, %d2
	lea	%a4, [%a4] 68
	j	IfxMultican_Can_MsgObj_init
.LVL18:
.L29:
	.loc 1 214 0
	mov	%d2, 15
	st.w	[%SP] 20, %d2
	.loc 1 215 0
	ld.bu	%d2, [%SP] 24
	insert	%d2, %d2, 1, 0, 1
	st.b	[%SP] 24, %d2
	.loc 1 216 0
	addi	%d2, %d15, 180
	st.w	[%SP] 28, %d2
	.loc 1 217 0
	addi	%d2, %d15, 200
	st.w	[%SP] 32, %d2
	j	.L28
.LFE344:
	.size	Set_CAN_Rx, .-Set_CAN_Rx
	.align 1
	.global	IO_Send_Duplicate_CAN
	.type	IO_Send_Duplicate_CAN, @function
IO_Send_Duplicate_CAN:
.LFB345:
	.loc 1 241 0
.LVL19:
	.loc 1 242 0
	sh	%d4, 5
.LVL20:
	mov.a	%a2, %d4
	.loc 1 244 0
	ld.bu	%d2, [%a4]0
	.loc 1 242 0
	lea	%a15, [%a2] -28672
	addih.a	%a15, %a15, 61442
.LVL21:
	.loc 1 244 0
	ld.w	%d15, [%a15] 16
	andn	%d15, %d15, ~(-256)
	or	%d15, %d2
	st.w	[%a15] 16, %d15
	.loc 1 246 0
	movh	%d15, 256
	st.w	[%a15] 28, %d15
	ret
.LFE345:
	.size	IO_Send_Duplicate_CAN, .-IO_Send_Duplicate_CAN
	.align 1
	.global	IO_Send_CAN
	.type	IO_Send_CAN, @function
IO_Send_CAN:
.LFB346:
	.loc 1 251 0
.LVL22:
	mov.a	%a2, %d5
	movh.a	%a7, hi:buffer.14021
	.loc 1 259 0
	mov	%d15, 0
	lea	%a15, [%a7] lo:buffer.14021
	add.a	%a2, -1
	jz	%d5, .L33
.LVL23:
.L35:
	.loc 1 260 0 discriminator 3
	addsc.a	%a5, %a4, %d15, 0
	addsc.a	%a6, %a15, %d15, 0
	ld.bu	%d2, [%a5]0
	st.b	[%a6]0, %d2
	.loc 1 259 0 discriminator 3
	add	%d15, 1
.LVL24:
	loop	%a2, .L35
.LVL25:
.L33:
	.loc 1 262 0
	sh	%d15, %d4, 5
	mov.a	%a2, %d15
	.loc 1 269 0
	ld.bu	%d2, [%a7] lo:buffer.14021
	.loc 1 262 0
	lea	%a4, [%a2] -28672
.LVL26:
	addih.a	%a4, %a4, 61442
.LVL27:
	.loc 1 269 0
	ld.w	%d15, [%a4] 16
	.loc 1 263 0
	addi	%d4, %d4, 160
.LVL28:
	.loc 1 269 0
	andn	%d15, %d15, ~(-256)
	or	%d15, %d2
	.loc 1 263 0
	sh	%d4, 5
	mov.a	%a3, %d4
	.loc 1 269 0
	st.w	[%a4] 16, %d15
	.loc 1 270 0
	ld.bu	%d15, [%a15] 1
	.loc 1 263 0
	lea	%a2, [%a3] -28672
	.loc 1 270 0
	sh	%d2, %d15, 8
	ld.w	%d15, [%a4] 16
	.loc 1 264 0
	lea	%a3, [%a3] -28032
	.loc 1 270 0
	insert	%d15, %d15, 0, 8, 8
	.loc 1 264 0
	addih.a	%a3, %a3, 61442
	.loc 1 270 0
	or	%d15, %d2
	.loc 1 263 0
	addih.a	%a2, %a2, 61442
.LVL29:
	.loc 1 270 0
	st.w	[%a4] 16, %d15
	.loc 1 271 0
	ld.bu	%d15, [%a15] 2
	sh	%d2, %d15, 16
	ld.w	%d15, [%a4] 16
	insert	%d15, %d15, 0, 16, 8
	or	%d15, %d2
	st.w	[%a4] 16, %d15
	.loc 1 272 0
	ld.w	%d2, [%a4] 16
	ld.bu	%d15, [%a15] 3
	insert	%d15, %d2, %d15, 24, 32-24
	st.w	[%a4] 16, %d15
	.loc 1 274 0
	ld.w	%d15, [%a4] 20
	ld.bu	%d2, [%a15] 4
	andn	%d15, %d15, ~(-256)
	or	%d15, %d2
	st.w	[%a4] 20, %d15
	.loc 1 275 0
	ld.bu	%d15, [%a15] 5
	sh	%d2, %d15, 8
	ld.w	%d15, [%a4] 20
	insert	%d15, %d15, 0, 8, 8
	or	%d15, %d2
	st.w	[%a4] 20, %d15
	.loc 1 276 0
	ld.bu	%d15, [%a15] 6
	sh	%d2, %d15, 16
	ld.w	%d15, [%a4] 20
	insert	%d15, %d15, 0, 16, 8
	or	%d15, %d2
	st.w	[%a4] 20, %d15
	.loc 1 277 0
	ld.w	%d2, [%a4] 20
	ld.bu	%d15, [%a15] 7
	insert	%d15, %d2, %d15, 24, 32-24
	st.w	[%a4] 20, %d15
	.loc 1 279 0
	ld.w	%d15, [%a3]0
	ld.bu	%d2, [%a15] 8
	andn	%d15, %d15, ~(-256)
	or	%d15, %d2
	st.w	[%a3]0, %d15
	.loc 1 280 0
	ld.bu	%d15, [%a15] 9
	sh	%d2, %d15, 8
	ld.w	%d15, [%a3]0
	insert	%d15, %d15, 0, 8, 8
	or	%d15, %d2
	st.w	[%a3]0, %d15
	.loc 1 281 0
	ld.bu	%d15, [%a15] 10
	sh	%d2, %d15, 16
	ld.w	%d15, [%a3]0
	insert	%d15, %d15, 0, 16, 8
	or	%d15, %d2
	st.w	[%a3]0, %d15
	.loc 1 282 0
	ld.bu	%d15, [%a15] 11
	ld.w	%d2, [%a3]0
	insert	%d15, %d2, %d15, 24, 32-24
	.loc 1 284 0
	ld.bu	%d2, [%a15] 12
	.loc 1 282 0
	st.w	[%a3]0, %d15
	.loc 1 284 0
	ld.w	%d15, [%a3] 4
	andn	%d15, %d15, ~(-256)
	or	%d15, %d2
	st.w	[%a3] 4, %d15
	.loc 1 285 0
	ld.bu	%d15, [%a15] 13
	sh	%d2, %d15, 8
	ld.w	%d15, [%a3] 4
	insert	%d15, %d15, 0, 8, 8
	or	%d15, %d2
	st.w	[%a3] 4, %d15
	.loc 1 286 0
	ld.bu	%d15, [%a15] 14
	sh	%d2, %d15, 16
	ld.w	%d15, [%a3] 4
	insert	%d15, %d15, 0, 16, 8
	or	%d15, %d2
	st.w	[%a3] 4, %d15
	.loc 1 287 0
	ld.w	%d2, [%a3] 4
	ld.bu	%d15, [%a15] 15
	insert	%d15, %d2, %d15, 24, 32-24
	st.w	[%a3] 4, %d15
	.loc 1 289 0
	ld.w	%d15, [%a3] 8
	ld.bu	%d2, [%a15] 16
	andn	%d15, %d15, ~(-256)
	or	%d15, %d2
	st.w	[%a3] 8, %d15
	.loc 1 290 0
	ld.bu	%d15, [%a15] 17
	sh	%d2, %d15, 8
	ld.w	%d15, [%a3] 8
	insert	%d15, %d15, 0, 8, 8
	or	%d15, %d2
	st.w	[%a3] 8, %d15
	.loc 1 291 0
	ld.bu	%d15, [%a15] 18
	sh	%d2, %d15, 16
	ld.w	%d15, [%a3] 8
	insert	%d15, %d15, 0, 16, 8
	or	%d15, %d2
	st.w	[%a3] 8, %d15
	.loc 1 292 0
	ld.w	%d2, [%a3] 8
	ld.bu	%d15, [%a15] 19
	insert	%d15, %d2, %d15, 24, 32-24
	st.w	[%a3] 8, %d15
	.loc 1 294 0
	ld.w	%d15, [%a3] 12
	ld.bu	%d2, [%a15] 20
	andn	%d15, %d15, ~(-256)
	or	%d15, %d2
	st.w	[%a3] 12, %d15
	.loc 1 295 0
	ld.bu	%d15, [%a15] 21
	sh	%d2, %d15, 8
	ld.w	%d15, [%a3] 12
	insert	%d15, %d15, 0, 8, 8
	or	%d15, %d2
	st.w	[%a3] 12, %d15
	.loc 1 296 0
	ld.bu	%d15, [%a15] 22
	sh	%d2, %d15, 16
	ld.w	%d15, [%a3] 12
	insert	%d15, %d15, 0, 16, 8
	or	%d15, %d2
	st.w	[%a3] 12, %d15
	.loc 1 297 0
	ld.w	%d2, [%a3] 12
	ld.bu	%d15, [%a15] 23
	insert	%d15, %d2, %d15, 24, 32-24
	st.w	[%a3] 12, %d15
	.loc 1 299 0
	ld.w	%d15, [%a3] 16
	ld.bu	%d2, [%a15] 24
	andn	%d15, %d15, ~(-256)
	or	%d15, %d2
	st.w	[%a3] 16, %d15
	.loc 1 300 0
	ld.bu	%d15, [%a15] 25
	sh	%d2, %d15, 8
	ld.w	%d15, [%a3] 16
	insert	%d15, %d15, 0, 8, 8
	or	%d15, %d2
	st.w	[%a3] 16, %d15
	.loc 1 301 0
	ld.bu	%d15, [%a15] 26
	sh	%d2, %d15, 16
	ld.w	%d15, [%a3] 16
	insert	%d15, %d15, 0, 16, 8
	or	%d15, %d2
	st.w	[%a3] 16, %d15
	.loc 1 302 0
	ld.w	%d2, [%a3] 16
	ld.bu	%d15, [%a15] 27
	insert	%d15, %d2, %d15, 24, 32-24
	st.w	[%a3] 16, %d15
	.loc 1 304 0
	ld.w	%d15, [%a3] 20
	ld.bu	%d2, [%a15] 28
	andn	%d15, %d15, ~(-256)
	or	%d15, %d2
	st.w	[%a3] 20, %d15
	.loc 1 305 0
	ld.bu	%d15, [%a15] 29
	sh	%d2, %d15, 8
	ld.w	%d15, [%a3] 20
	insert	%d15, %d15, 0, 8, 8
	or	%d15, %d2
	st.w	[%a3] 20, %d15
	.loc 1 306 0
	ld.bu	%d15, [%a15] 30
	sh	%d2, %d15, 16
	ld.w	%d15, [%a3] 20
	insert	%d15, %d15, 0, 16, 8
	or	%d15, %d2
	st.w	[%a3] 20, %d15
	.loc 1 307 0
	ld.w	%d2, [%a3] 20
	ld.bu	%d15, [%a15] 31
	insert	%d15, %d2, %d15, 24, 32-24
	st.w	[%a3] 20, %d15
	.loc 1 309 0
	ld.w	%d15, [%a3] 24
	ld.bu	%d2, [%a15] 32
	andn	%d15, %d15, ~(-256)
	or	%d15, %d2
	st.w	[%a3] 24, %d15
	.loc 1 310 0
	ld.bu	%d15, [%a15] 33
	sh	%d2, %d15, 8
	ld.w	%d15, [%a3] 24
	insert	%d15, %d15, 0, 8, 8
	or	%d15, %d2
	st.w	[%a3] 24, %d15
	.loc 1 311 0
	ld.bu	%d15, [%a15] 34
	sh	%d2, %d15, 16
	ld.w	%d15, [%a3] 24
	insert	%d15, %d15, 0, 16, 8
	or	%d15, %d2
	st.w	[%a3] 24, %d15
	.loc 1 312 0
	ld.w	%d2, [%a3] 24
	ld.bu	%d15, [%a15] 35
	insert	%d15, %d2, %d15, 24, 32-24
	st.w	[%a3] 24, %d15
	.loc 1 315 0
	ld.w	%d15, [%a2]0
	ld.bu	%d2, [%a15] 36
	andn	%d15, %d15, ~(-256)
	or	%d15, %d2
	st.w	[%a2]0, %d15
	.loc 1 316 0
	ld.bu	%d15, [%a15] 37
	sh	%d2, %d15, 8
	ld.w	%d15, [%a2]0
	insert	%d15, %d15, 0, 8, 8
	or	%d15, %d2
	st.w	[%a2]0, %d15
	.loc 1 317 0
	ld.bu	%d15, [%a15] 38
	sh	%d2, %d15, 16
	ld.w	%d15, [%a2]0
	insert	%d15, %d15, 0, 16, 8
	or	%d15, %d2
	st.w	[%a2]0, %d15
	.loc 1 318 0
	ld.w	%d2, [%a2]0
	ld.bu	%d15, [%a15] 39
	insert	%d15, %d2, %d15, 24, 32-24
	.loc 1 320 0
	ld.bu	%d2, [%a15] 40
	.loc 1 318 0
	st.w	[%a2]0, %d15
	.loc 1 320 0
	ld.w	%d15, [%a2] 4
	andn	%d15, %d15, ~(-256)
	or	%d15, %d2
	st.w	[%a2] 4, %d15
	.loc 1 321 0
	ld.bu	%d15, [%a15] 41
	sh	%d2, %d15, 8
	ld.w	%d15, [%a2] 4
	insert	%d15, %d15, 0, 8, 8
	or	%d15, %d2
	st.w	[%a2] 4, %d15
	.loc 1 322 0
	ld.bu	%d15, [%a15] 42
	sh	%d2, %d15, 16
	ld.w	%d15, [%a2] 4
	insert	%d15, %d15, 0, 16, 8
	or	%d15, %d2
	st.w	[%a2] 4, %d15
	.loc 1 323 0
	ld.bu	%d15, [%a15] 43
	ld.w	%d2, [%a2] 4
	insert	%d15, %d2, %d15, 24, 32-24
	st.w	[%a2] 4, %d15
	.loc 1 325 0
	ld.bu	%d2, [%a15] 44
	ld.w	%d15, [%a2] 8
	andn	%d15, %d15, ~(-256)
	or	%d15, %d2
	st.w	[%a2] 8, %d15
	.loc 1 326 0
	ld.bu	%d15, [%a15] 45
	sh	%d2, %d15, 8
	ld.w	%d15, [%a2] 8
	insert	%d15, %d15, 0, 8, 8
	or	%d15, %d2
	st.w	[%a2] 8, %d15
	.loc 1 327 0
	ld.bu	%d15, [%a15] 46
	sh	%d2, %d15, 16
	ld.w	%d15, [%a2] 8
	insert	%d15, %d15, 0, 16, 8
	or	%d15, %d2
	st.w	[%a2] 8, %d15
	.loc 1 328 0
	ld.w	%d2, [%a2] 8
	ld.bu	%d15, [%a15] 47
	insert	%d15, %d2, %d15, 24, 32-24
	st.w	[%a2] 8, %d15
	.loc 1 330 0
	ld.w	%d15, [%a2] 12
	ld.bu	%d2, [%a15] 48
	andn	%d15, %d15, ~(-256)
	or	%d15, %d2
	st.w	[%a2] 12, %d15
	.loc 1 331 0
	ld.bu	%d15, [%a15] 49
	sh	%d2, %d15, 8
	ld.w	%d15, [%a2] 12
	insert	%d15, %d15, 0, 8, 8
	or	%d15, %d2
	st.w	[%a2] 12, %d15
	.loc 1 332 0
	ld.bu	%d15, [%a15] 50
	sh	%d2, %d15, 16
	ld.w	%d15, [%a2] 12
	insert	%d15, %d15, 0, 16, 8
	or	%d15, %d2
	st.w	[%a2] 12, %d15
	.loc 1 333 0
	ld.w	%d2, [%a2] 12
	ld.bu	%d15, [%a15] 51
	insert	%d15, %d2, %d15, 24, 32-24
	st.w	[%a2] 12, %d15
	.loc 1 335 0
	ld.w	%d15, [%a2] 16
	ld.bu	%d2, [%a15] 52
	andn	%d15, %d15, ~(-256)
	or	%d15, %d2
	st.w	[%a2] 16, %d15
	.loc 1 336 0
	ld.bu	%d15, [%a15] 53
	sh	%d2, %d15, 8
	ld.w	%d15, [%a2] 16
	insert	%d15, %d15, 0, 8, 8
	or	%d15, %d2
	st.w	[%a2] 16, %d15
	.loc 1 337 0
	ld.bu	%d15, [%a15] 54
	sh	%d2, %d15, 16
	ld.w	%d15, [%a2] 16
	insert	%d15, %d15, 0, 16, 8
	or	%d15, %d2
	st.w	[%a2] 16, %d15
	.loc 1 338 0
	ld.bu	%d15, [%a15] 55
	ld.w	%d2, [%a2] 16
	insert	%d15, %d2, %d15, 24, 32-24
	st.w	[%a2] 16, %d15
	.loc 1 340 0
	ld.w	%d15, [%a2] 20
	ld.bu	%d2, [%a15] 56
	andn	%d15, %d15, ~(-256)
	or	%d15, %d2
	st.w	[%a2] 20, %d15
	.loc 1 341 0
	ld.bu	%d15, [%a15] 57
	sh	%d2, %d15, 8
	ld.w	%d15, [%a2] 20
	insert	%d15, %d15, 0, 8, 8
	or	%d15, %d2
	st.w	[%a2] 20, %d15
	.loc 1 342 0
	ld.bu	%d15, [%a15] 58
	sh	%d2, %d15, 16
	ld.w	%d15, [%a2] 20
	insert	%d15, %d15, 0, 16, 8
	or	%d15, %d2
	st.w	[%a2] 20, %d15
	.loc 1 343 0
	ld.w	%d2, [%a2] 20
	ld.bu	%d15, [%a15] 59
	insert	%d15, %d2, %d15, 24, 32-24
	st.w	[%a2] 20, %d15
	.loc 1 345 0
	ld.w	%d15, [%a2] 24
	ld.bu	%d2, [%a15] 60
	andn	%d15, %d15, ~(-256)
	or	%d15, %d2
	st.w	[%a2] 24, %d15
	.loc 1 346 0
	ld.bu	%d15, [%a15] 61
	sh	%d2, %d15, 8
	ld.w	%d15, [%a2] 24
	insert	%d15, %d15, 0, 8, 8
	or	%d15, %d2
	st.w	[%a2] 24, %d15
	.loc 1 347 0
	ld.bu	%d15, [%a15] 62
	sh	%d2, %d15, 16
	ld.w	%d15, [%a2] 24
	insert	%d15, %d15, 0, 16, 8
	or	%d15, %d2
	st.w	[%a2] 24, %d15
	.loc 1 348 0
	ld.w	%d2, [%a2] 24
	ld.bu	%d15, [%a15] 63
	insert	%d15, %d2, %d15, 24, 32-24
	st.w	[%a2] 24, %d15
	.loc 1 351 0
	movh	%d15, 256
	st.w	[%a4] 28, %d15
	ret
.LFE346:
	.size	IO_Send_CAN, .-IO_Send_CAN
	.align 1
	.global	printf_CAN
	.type	printf_CAN, @function
printf_CAN:
.LFB347:
	.loc 1 356 0
.LVL30:
	.loc 1 357 0
	sh	%d15, %d4, 5
	.loc 1 358 0
	addi	%d4, %d4, 160
.LVL31:
	sh	%d4, 5
	.loc 1 356 0
	mov.aa	%a5, %a4
	.loc 1 358 0
	mov.a	%a4, %d4
.LVL32:
	.loc 1 356 0
	sub.a	%SP, 64
.LCFI4:
	.loc 1 357 0
	mov.a	%a2, %d15
	.loc 1 358 0
	lea	%a15, [%a4] -28672
	.loc 1 359 0
	lea	%a12, [%a4] -28032
	.loc 1 370 0
	lea	%a6, [%SP] 64
	mov.aa	%a4, %SP
	.loc 1 357 0
	lea	%a13, [%a2] -28672
	.loc 1 370 0
	call	vsprintf
.LVL33:
	.loc 1 377 0
	mov.aa	%a4, %SP
	call	strlen
.LVL34:
	.loc 1 379 0
	extr	%d2, %d2, 0, 16
	.loc 1 357 0
	addih.a	%a13, %a13, 61442
.LVL35:
	.loc 1 381 0
	rsub	%d4, %d2, 63
	.loc 1 379 0
	lt	%d3, %d2, 64
	.loc 1 358 0
	addih.a	%a15, %a15, 61442
.LVL36:
	.loc 1 359 0
	addih.a	%a12, %a12, 61442
.LVL37:
	.loc 1 381 0
	mov	%d15, 32
	mov.a	%a2, %d4
	.loc 1 379 0
	jz	%d3, .L41
.L42:
	.loc 1 381 0 discriminator 3
	addsc.a	%a3, %SP, %d2, 0
	.loc 1 379 0 discriminator 3
	add	%d2, 1
.LVL38:
	.loc 1 381 0 discriminator 3
	st.b	[%a3]0, %d15
	.loc 1 379 0 discriminator 3
	loop	%a2, .L42
.L41:
	.loc 1 386 0
	ld.w	%d15, [%a13] 16
	ld.bu	%d2, [%SP]0
.LVL39:
	andn	%d15, %d15, ~(-256)
	or	%d15, %d2
	st.w	[%a13] 16, %d15
	.loc 1 387 0
	ld.bu	%d15, [%SP] 1
	sh	%d2, %d15, 8
	ld.w	%d15, [%a13] 16
	insert	%d15, %d15, 0, 8, 8
	or	%d15, %d2
	st.w	[%a13] 16, %d15
	.loc 1 388 0
	ld.bu	%d15, [%SP] 2
	sh	%d2, %d15, 16
	ld.w	%d15, [%a13] 16
	insert	%d15, %d15, 0, 16, 8
	or	%d15, %d2
	st.w	[%a13] 16, %d15
	.loc 1 389 0
	ld.w	%d2, [%a13] 16
	ld.bu	%d15, [%SP] 3
	insert	%d15, %d2, %d15, 24, 32-24
	st.w	[%a13] 16, %d15
	.loc 1 391 0
	ld.w	%d15, [%a13] 20
	ld.bu	%d2, [%SP] 4
	andn	%d15, %d15, ~(-256)
	or	%d15, %d2
	st.w	[%a13] 20, %d15
	.loc 1 392 0
	ld.bu	%d15, [%SP] 5
	sh	%d2, %d15, 8
	ld.w	%d15, [%a13] 20
	insert	%d15, %d15, 0, 8, 8
	or	%d15, %d2
	st.w	[%a13] 20, %d15
	.loc 1 393 0
	ld.bu	%d15, [%SP] 6
	sh	%d2, %d15, 16
	ld.w	%d15, [%a13] 20
	insert	%d15, %d15, 0, 16, 8
	or	%d15, %d2
	st.w	[%a13] 20, %d15
	.loc 1 394 0
	ld.w	%d2, [%a13] 20
	ld.bu	%d15, [%SP] 7
	insert	%d15, %d2, %d15, 24, 32-24
	st.w	[%a13] 20, %d15
	.loc 1 396 0
	ld.w	%d15, [%a12]0
	ld.bu	%d2, [%SP] 8
	andn	%d15, %d15, ~(-256)
	or	%d15, %d2
	st.w	[%a12]0, %d15
	.loc 1 397 0
	ld.bu	%d15, [%SP] 9
	sh	%d2, %d15, 8
	ld.w	%d15, [%a12]0
	insert	%d15, %d15, 0, 8, 8
	or	%d15, %d2
	st.w	[%a12]0, %d15
	.loc 1 398 0
	ld.bu	%d15, [%SP] 10
	sh	%d2, %d15, 16
	ld.w	%d15, [%a12]0
	insert	%d15, %d15, 0, 16, 8
	or	%d15, %d2
	st.w	[%a12]0, %d15
	.loc 1 399 0
	ld.bu	%d15, [%SP] 11
	ld.w	%d2, [%a12]0
	insert	%d15, %d2, %d15, 24, 32-24
	.loc 1 401 0
	ld.bu	%d2, [%SP] 12
	.loc 1 399 0
	st.w	[%a12]0, %d15
	.loc 1 401 0
	ld.w	%d15, [%a12] 4
	andn	%d15, %d15, ~(-256)
	or	%d15, %d2
	st.w	[%a12] 4, %d15
	.loc 1 402 0
	ld.bu	%d15, [%SP] 13
	sh	%d2, %d15, 8
	ld.w	%d15, [%a12] 4
	insert	%d15, %d15, 0, 8, 8
	or	%d15, %d2
	st.w	[%a12] 4, %d15
	.loc 1 403 0
	ld.bu	%d15, [%SP] 14
	sh	%d2, %d15, 16
	ld.w	%d15, [%a12] 4
	insert	%d15, %d15, 0, 16, 8
	or	%d15, %d2
	st.w	[%a12] 4, %d15
	.loc 1 404 0
	ld.w	%d2, [%a12] 4
	ld.bu	%d15, [%SP] 15
	insert	%d15, %d2, %d15, 24, 32-24
	st.w	[%a12] 4, %d15
	.loc 1 406 0
	ld.w	%d15, [%a12] 8
	ld.bu	%d2, [%SP] 16
	andn	%d15, %d15, ~(-256)
	or	%d15, %d2
	st.w	[%a12] 8, %d15
	.loc 1 407 0
	ld.bu	%d15, [%SP] 17
	sh	%d2, %d15, 8
	ld.w	%d15, [%a12] 8
	insert	%d15, %d15, 0, 8, 8
	or	%d15, %d2
	st.w	[%a12] 8, %d15
	.loc 1 408 0
	ld.bu	%d15, [%SP] 18
	sh	%d2, %d15, 16
	ld.w	%d15, [%a12] 8
	insert	%d15, %d15, 0, 16, 8
	or	%d15, %d2
	st.w	[%a12] 8, %d15
	.loc 1 409 0
	ld.w	%d2, [%a12] 8
	ld.bu	%d15, [%SP] 19
	insert	%d15, %d2, %d15, 24, 32-24
	st.w	[%a12] 8, %d15
	.loc 1 411 0
	ld.w	%d15, [%a12] 12
	ld.bu	%d2, [%SP] 20
	andn	%d15, %d15, ~(-256)
	or	%d15, %d2
	st.w	[%a12] 12, %d15
	.loc 1 412 0
	ld.bu	%d15, [%SP] 21
	sh	%d2, %d15, 8
	ld.w	%d15, [%a12] 12
	insert	%d15, %d15, 0, 8, 8
	or	%d15, %d2
	st.w	[%a12] 12, %d15
	.loc 1 413 0
	ld.bu	%d15, [%SP] 22
	sh	%d2, %d15, 16
	ld.w	%d15, [%a12] 12
	insert	%d15, %d15, 0, 16, 8
	or	%d15, %d2
	st.w	[%a12] 12, %d15
	.loc 1 414 0
	ld.w	%d2, [%a12] 12
	ld.bu	%d15, [%SP] 23
	insert	%d15, %d2, %d15, 24, 32-24
	st.w	[%a12] 12, %d15
	.loc 1 416 0
	ld.w	%d15, [%a12] 16
	ld.bu	%d2, [%SP] 24
	andn	%d15, %d15, ~(-256)
	or	%d15, %d2
	st.w	[%a12] 16, %d15
	.loc 1 417 0
	ld.bu	%d15, [%SP] 25
	sh	%d2, %d15, 8
	ld.w	%d15, [%a12] 16
	insert	%d15, %d15, 0, 8, 8
	or	%d15, %d2
	st.w	[%a12] 16, %d15
	.loc 1 418 0
	ld.bu	%d15, [%SP] 26
	sh	%d2, %d15, 16
	ld.w	%d15, [%a12] 16
	insert	%d15, %d15, 0, 16, 8
	or	%d15, %d2
	st.w	[%a12] 16, %d15
	.loc 1 419 0
	ld.w	%d2, [%a12] 16
	ld.bu	%d15, [%SP] 27
	insert	%d15, %d2, %d15, 24, 32-24
	st.w	[%a12] 16, %d15
	.loc 1 421 0
	ld.w	%d15, [%a12] 20
	ld.bu	%d2, [%SP] 28
	andn	%d15, %d15, ~(-256)
	or	%d15, %d2
	st.w	[%a12] 20, %d15
	.loc 1 422 0
	ld.bu	%d15, [%SP] 29
	sh	%d2, %d15, 8
	ld.w	%d15, [%a12] 20
	insert	%d15, %d15, 0, 8, 8
	or	%d15, %d2
	st.w	[%a12] 20, %d15
	.loc 1 423 0
	ld.bu	%d15, [%SP] 30
	sh	%d2, %d15, 16
	ld.w	%d15, [%a12] 20
	insert	%d15, %d15, 0, 16, 8
	or	%d15, %d2
	st.w	[%a12] 20, %d15
	.loc 1 424 0
	ld.w	%d2, [%a12] 20
	ld.bu	%d15, [%SP] 31
	insert	%d15, %d2, %d15, 24, 32-24
	st.w	[%a12] 20, %d15
	.loc 1 426 0
	ld.w	%d15, [%a12] 24
	ld.bu	%d2, [%SP] 32
	andn	%d15, %d15, ~(-256)
	or	%d15, %d2
	st.w	[%a12] 24, %d15
	.loc 1 427 0
	ld.bu	%d15, [%SP] 33
	sh	%d2, %d15, 8
	ld.w	%d15, [%a12] 24
	insert	%d15, %d15, 0, 8, 8
	or	%d15, %d2
	st.w	[%a12] 24, %d15
	.loc 1 428 0
	ld.bu	%d15, [%SP] 34
	sh	%d2, %d15, 16
	ld.w	%d15, [%a12] 24
	insert	%d15, %d15, 0, 16, 8
	or	%d15, %d2
	st.w	[%a12] 24, %d15
	.loc 1 429 0
	ld.w	%d2, [%a12] 24
	ld.bu	%d15, [%SP] 35
	insert	%d15, %d2, %d15, 24, 32-24
	st.w	[%a12] 24, %d15
	.loc 1 432 0
	ld.w	%d15, [%a15]0
	ld.bu	%d2, [%SP] 36
	andn	%d15, %d15, ~(-256)
	or	%d15, %d2
	st.w	[%a15]0, %d15
	.loc 1 433 0
	ld.bu	%d15, [%SP] 37
	sh	%d2, %d15, 8
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 0, 8, 8
	or	%d15, %d2
	st.w	[%a15]0, %d15
	.loc 1 434 0
	ld.bu	%d15, [%SP] 38
	sh	%d2, %d15, 16
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 0, 16, 8
	or	%d15, %d2
	st.w	[%a15]0, %d15
	.loc 1 435 0
	ld.w	%d2, [%a15]0
	ld.bu	%d15, [%SP] 39
	insert	%d15, %d2, %d15, 24, 32-24
	.loc 1 437 0
	ld.bu	%d2, [%SP] 40
	.loc 1 435 0
	st.w	[%a15]0, %d15
	.loc 1 437 0
	ld.w	%d15, [%a15] 4
	andn	%d15, %d15, ~(-256)
	or	%d15, %d2
	st.w	[%a15] 4, %d15
	.loc 1 438 0
	ld.bu	%d15, [%SP] 41
	sh	%d2, %d15, 8
	ld.w	%d15, [%a15] 4
	insert	%d15, %d15, 0, 8, 8
	or	%d15, %d2
	st.w	[%a15] 4, %d15
	.loc 1 439 0
	ld.bu	%d15, [%SP] 42
	sh	%d2, %d15, 16
	ld.w	%d15, [%a15] 4
	insert	%d15, %d15, 0, 16, 8
	or	%d15, %d2
	st.w	[%a15] 4, %d15
	.loc 1 440 0
	ld.bu	%d15, [%SP] 43
	ld.w	%d2, [%a15] 4
	insert	%d15, %d2, %d15, 24, 32-24
	st.w	[%a15] 4, %d15
	.loc 1 442 0
	ld.bu	%d2, [%SP] 44
	ld.w	%d15, [%a15] 8
	andn	%d15, %d15, ~(-256)
	or	%d15, %d2
	st.w	[%a15] 8, %d15
	.loc 1 443 0
	ld.bu	%d15, [%SP] 45
	sh	%d2, %d15, 8
	ld.w	%d15, [%a15] 8
	insert	%d15, %d15, 0, 8, 8
	or	%d15, %d2
	st.w	[%a15] 8, %d15
	.loc 1 444 0
	ld.bu	%d15, [%SP] 46
	sh	%d2, %d15, 16
	ld.w	%d15, [%a15] 8
	insert	%d15, %d15, 0, 16, 8
	or	%d15, %d2
	st.w	[%a15] 8, %d15
	.loc 1 445 0
	ld.w	%d2, [%a15] 8
	ld.bu	%d15, [%SP] 47
	insert	%d15, %d2, %d15, 24, 32-24
	st.w	[%a15] 8, %d15
	.loc 1 447 0
	ld.w	%d15, [%a15] 12
	ld.bu	%d2, [%SP] 48
	andn	%d15, %d15, ~(-256)
	or	%d15, %d2
	st.w	[%a15] 12, %d15
	.loc 1 448 0
	ld.bu	%d15, [%SP] 49
	sh	%d2, %d15, 8
	ld.w	%d15, [%a15] 12
	insert	%d15, %d15, 0, 8, 8
	or	%d15, %d2
	st.w	[%a15] 12, %d15
	.loc 1 449 0
	ld.bu	%d15, [%SP] 50
	sh	%d2, %d15, 16
	ld.w	%d15, [%a15] 12
	insert	%d15, %d15, 0, 16, 8
	or	%d15, %d2
	st.w	[%a15] 12, %d15
	.loc 1 450 0
	ld.w	%d2, [%a15] 12
	ld.bu	%d15, [%SP] 51
	insert	%d15, %d2, %d15, 24, 32-24
	st.w	[%a15] 12, %d15
	.loc 1 452 0
	ld.w	%d15, [%a15] 16
	ld.bu	%d2, [%SP] 52
	andn	%d15, %d15, ~(-256)
	or	%d15, %d2
	st.w	[%a15] 16, %d15
	.loc 1 453 0
	ld.bu	%d15, [%SP] 53
	sh	%d2, %d15, 8
	ld.w	%d15, [%a15] 16
	insert	%d15, %d15, 0, 8, 8
	or	%d15, %d2
	st.w	[%a15] 16, %d15
	.loc 1 454 0
	ld.bu	%d15, [%SP] 54
	sh	%d2, %d15, 16
	ld.w	%d15, [%a15] 16
	insert	%d15, %d15, 0, 16, 8
	or	%d15, %d2
	st.w	[%a15] 16, %d15
	.loc 1 455 0
	ld.bu	%d15, [%SP] 55
	ld.w	%d2, [%a15] 16
	insert	%d15, %d2, %d15, 24, 32-24
	st.w	[%a15] 16, %d15
	.loc 1 457 0
	ld.w	%d15, [%a15] 20
	ld.bu	%d2, [%SP] 56
	andn	%d15, %d15, ~(-256)
	or	%d15, %d2
	st.w	[%a15] 20, %d15
	.loc 1 458 0
	ld.bu	%d15, [%SP] 57
	sh	%d2, %d15, 8
	ld.w	%d15, [%a15] 20
	insert	%d15, %d15, 0, 8, 8
	or	%d15, %d2
	st.w	[%a15] 20, %d15
	.loc 1 459 0
	ld.bu	%d15, [%SP] 58
	sh	%d2, %d15, 16
	ld.w	%d15, [%a15] 20
	insert	%d15, %d15, 0, 16, 8
	or	%d15, %d2
	st.w	[%a15] 20, %d15
	.loc 1 460 0
	ld.w	%d2, [%a15] 20
	ld.bu	%d15, [%SP] 59
	insert	%d15, %d2, %d15, 24, 32-24
	st.w	[%a15] 20, %d15
	.loc 1 462 0
	ld.w	%d15, [%a15] 24
	ld.bu	%d2, [%SP] 60
	andn	%d15, %d15, ~(-256)
	or	%d15, %d2
	st.w	[%a15] 24, %d15
	.loc 1 463 0
	ld.bu	%d15, [%SP] 61
	sh	%d2, %d15, 8
	ld.w	%d15, [%a15] 24
	insert	%d15, %d15, 0, 8, 8
	or	%d15, %d2
	st.w	[%a15] 24, %d15
	.loc 1 464 0
	ld.bu	%d15, [%SP] 62
	sh	%d2, %d15, 16
	ld.w	%d15, [%a15] 24
	insert	%d15, %d15, 0, 16, 8
	or	%d15, %d2
	st.w	[%a15] 24, %d15
	.loc 1 465 0
	ld.w	%d2, [%a15] 24
	ld.bu	%d15, [%SP] 63
	insert	%d15, %d2, %d15, 24, 32-24
	st.w	[%a15] 24, %d15
	.loc 1 468 0
	movh	%d15, 256
	st.w	[%a13] 28, %d15
	ret
.LFE347:
	.size	printf_CAN, .-printf_CAN
	.align 1
	.global	Get_CAN_RxBuffer
	.type	Get_CAN_RxBuffer, @function
Get_CAN_RxBuffer:
.LFB348:
	.loc 1 473 0
.LVL40:
	.loc 1 474 0
	sh	%d15, %d4, 5
	mov.a	%a2, %d15
	.loc 1 475 0
	addi	%d4, %d4, 180
.LVL41:
	.loc 1 474 0
	lea	%a3, [%a2] -28672
	addih.a	%a3, %a3, 61442
.LVL42:
	.loc 1 479 0
	ld.w	%d15, [%a3] 16
	st.b	[%a4]0, %d15
	.loc 1 480 0
	ld.w	%d15, [%a3] 16
	.loc 1 475 0
	sh	%d4, 5
	.loc 1 480 0
	extr.u	%d15, %d15, 8, 8
	.loc 1 475 0
	mov.a	%a5, %d4
	.loc 1 476 0
	lea	%a2, [%a5] -28032
	.loc 1 480 0
	st.b	[%a4] 1, %d15
	.loc 1 481 0
	ld.w	%d15, [%a3] 16
	.loc 1 476 0
	addih.a	%a2, %a2, 61442
	.loc 1 481 0
	extr.u	%d15, %d15, 16, 8
	.loc 1 475 0
	lea	%a15, [%a5] -28672
	addih.a	%a15, %a15, 61442
.LVL43:
	.loc 1 481 0
	st.b	[%a4] 2, %d15
	.loc 1 482 0
	ld.w	%d15, [%a3] 16
	sh	%d15, %d15, -24
	st.b	[%a4] 3, %d15
	.loc 1 484 0
	ld.w	%d15, [%a3] 20
	st.b	[%a4] 4, %d15
	.loc 1 485 0
	ld.w	%d15, [%a3] 20
	extr.u	%d15, %d15, 8, 8
	st.b	[%a4] 5, %d15
	.loc 1 486 0
	ld.w	%d15, [%a3] 20
	extr.u	%d15, %d15, 16, 8
	st.b	[%a4] 6, %d15
	.loc 1 487 0
	ld.w	%d15, [%a3] 20
	sh	%d15, %d15, -24
	st.b	[%a4] 7, %d15
	.loc 1 490 0
	ld.w	%d15, [%a2]0
	st.b	[%a4] 8, %d15
	.loc 1 491 0
	ld.w	%d15, [%a2]0
	extr.u	%d15, %d15, 8, 8
	st.b	[%a4] 9, %d15
	.loc 1 492 0
	ld.w	%d15, [%a2]0
	extr.u	%d15, %d15, 16, 8
	st.b	[%a4] 10, %d15
	.loc 1 493 0
	ld.w	%d15, [%a2]0
	sh	%d15, %d15, -24
	st.b	[%a4] 11, %d15
	.loc 1 495 0
	ld.w	%d15, [%a2] 4
	st.b	[%a4] 12, %d15
	.loc 1 496 0
	ld.w	%d15, [%a2] 4
	extr.u	%d15, %d15, 8, 8
	st.b	[%a4] 13, %d15
	.loc 1 497 0
	ld.w	%d15, [%a2] 4
	extr.u	%d15, %d15, 16, 8
	st.b	[%a4] 14, %d15
	.loc 1 498 0
	ld.w	%d15, [%a2] 4
	sh	%d15, %d15, -24
	st.b	[%a4] 15, %d15
	.loc 1 500 0
	ld.w	%d15, [%a2] 8
	st.b	[%a4] 16, %d15
	.loc 1 501 0
	ld.w	%d15, [%a2] 8
	extr.u	%d15, %d15, 8, 8
	st.b	[%a4] 17, %d15
	.loc 1 502 0
	ld.w	%d15, [%a2] 8
	extr.u	%d15, %d15, 16, 8
	st.b	[%a4] 18, %d15
	.loc 1 503 0
	ld.w	%d15, [%a2] 8
	sh	%d15, %d15, -24
	st.b	[%a4] 19, %d15
	.loc 1 505 0
	ld.w	%d15, [%a2] 12
	st.b	[%a4] 20, %d15
	.loc 1 506 0
	ld.w	%d15, [%a2] 12
	extr.u	%d15, %d15, 8, 8
	st.b	[%a4] 21, %d15
	.loc 1 507 0
	ld.w	%d15, [%a2] 12
	extr.u	%d15, %d15, 16, 8
	st.b	[%a4] 22, %d15
	.loc 1 508 0
	ld.w	%d15, [%a2] 12
	sh	%d15, %d15, -24
	st.b	[%a4] 23, %d15
	.loc 1 510 0
	ld.w	%d15, [%a2] 16
	st.b	[%a4] 24, %d15
	.loc 1 511 0
	ld.w	%d15, [%a2] 16
	extr.u	%d15, %d15, 8, 8
	st.b	[%a4] 25, %d15
	.loc 1 512 0
	ld.w	%d15, [%a2] 16
	extr.u	%d15, %d15, 16, 8
	st.b	[%a4] 26, %d15
	.loc 1 513 0
	ld.w	%d15, [%a2] 16
	sh	%d15, %d15, -24
	st.b	[%a4] 27, %d15
	.loc 1 515 0
	ld.w	%d15, [%a2] 20
	st.b	[%a4] 28, %d15
	.loc 1 516 0
	ld.w	%d15, [%a2] 20
	extr.u	%d15, %d15, 8, 8
	st.b	[%a4] 29, %d15
	.loc 1 517 0
	ld.w	%d15, [%a2] 20
	extr.u	%d15, %d15, 16, 8
	st.b	[%a4] 30, %d15
	.loc 1 518 0
	ld.w	%d15, [%a2] 20
	sh	%d15, %d15, -24
	st.b	[%a4] 31, %d15
	.loc 1 520 0
	ld.w	%d15, [%a2] 24
	st.b	[%a4] 32, %d15
	.loc 1 521 0
	ld.w	%d15, [%a2] 24
	extr.u	%d15, %d15, 8, 8
	st.b	[%a4] 33, %d15
	.loc 1 522 0
	ld.w	%d15, [%a2] 24
	extr.u	%d15, %d15, 16, 8
	st.b	[%a4] 34, %d15
	.loc 1 523 0
	ld.w	%d15, [%a2] 24
	sh	%d15, %d15, -24
	st.b	[%a4] 35, %d15
	.loc 1 526 0
	ld.w	%d15, [%a15]0
	st.b	[%a4] 36, %d15
	.loc 1 527 0
	ld.w	%d15, [%a15]0
	extr.u	%d15, %d15, 8, 8
	st.b	[%a4] 37, %d15
	.loc 1 528 0
	ld.w	%d15, [%a15]0
	extr.u	%d15, %d15, 16, 8
	st.b	[%a4] 38, %d15
	.loc 1 529 0
	ld.w	%d15, [%a15]0
	sh	%d15, %d15, -24
	st.b	[%a4] 39, %d15
	.loc 1 531 0
	ld.w	%d15, [%a15] 4
	st.b	[%a4] 40, %d15
	.loc 1 532 0
	ld.w	%d15, [%a15] 4
	extr.u	%d15, %d15, 8, 8
	st.b	[%a4] 41, %d15
	.loc 1 533 0
	ld.w	%d15, [%a15] 4
	extr.u	%d15, %d15, 16, 8
	st.b	[%a4] 42, %d15
	.loc 1 534 0
	ld.w	%d15, [%a15] 4
	sh	%d15, %d15, -24
	st.b	[%a4] 43, %d15
	.loc 1 536 0
	ld.w	%d15, [%a15] 8
	st.b	[%a4] 44, %d15
	.loc 1 537 0
	ld.w	%d15, [%a15] 8
	extr.u	%d15, %d15, 8, 8
	st.b	[%a4] 45, %d15
	.loc 1 538 0
	ld.w	%d15, [%a15] 8
	extr.u	%d15, %d15, 16, 8
	st.b	[%a4] 46, %d15
	.loc 1 539 0
	ld.w	%d15, [%a15] 8
	sh	%d15, %d15, -24
	st.b	[%a4] 47, %d15
	.loc 1 541 0
	ld.w	%d15, [%a15] 12
	st.b	[%a4] 48, %d15
	.loc 1 542 0
	ld.w	%d15, [%a15] 12
	extr.u	%d15, %d15, 8, 8
	st.b	[%a4] 49, %d15
	.loc 1 543 0
	ld.w	%d15, [%a15] 12
	extr.u	%d15, %d15, 16, 8
	st.b	[%a4] 50, %d15
	.loc 1 544 0
	ld.w	%d15, [%a15] 12
	sh	%d15, %d15, -24
	st.b	[%a4] 51, %d15
	.loc 1 546 0
	ld.w	%d15, [%a15] 16
	st.b	[%a4] 52, %d15
	.loc 1 547 0
	ld.w	%d15, [%a15] 16
	extr.u	%d15, %d15, 8, 8
	st.b	[%a4] 53, %d15
	.loc 1 548 0
	ld.w	%d15, [%a15] 16
	extr.u	%d15, %d15, 16, 8
	st.b	[%a4] 54, %d15
	.loc 1 549 0
	ld.w	%d15, [%a15] 16
	sh	%d15, %d15, -24
	st.b	[%a4] 55, %d15
	.loc 1 551 0
	ld.w	%d15, [%a15] 20
	st.b	[%a4] 56, %d15
	.loc 1 552 0
	ld.w	%d15, [%a15] 20
	extr.u	%d15, %d15, 8, 8
	st.b	[%a4] 57, %d15
	.loc 1 553 0
	ld.w	%d15, [%a15] 20
	extr.u	%d15, %d15, 16, 8
	st.b	[%a4] 58, %d15
	.loc 1 554 0
	ld.w	%d15, [%a15] 20
	sh	%d15, %d15, -24
	st.b	[%a4] 59, %d15
	.loc 1 556 0
	ld.w	%d15, [%a15] 24
	st.b	[%a4] 60, %d15
	.loc 1 557 0
	ld.w	%d15, [%a15] 24
	extr.u	%d15, %d15, 8, 8
	st.b	[%a4] 61, %d15
	.loc 1 558 0
	ld.w	%d15, [%a15] 24
	extr.u	%d15, %d15, 16, 8
	st.b	[%a4] 62, %d15
	.loc 1 559 0
	ld.w	%d15, [%a15] 24
	sh	%d15, %d15, -24
	st.b	[%a4] 63, %d15
.L46:
	.loc 1 561 0 discriminator 1
	ld.w	%d15, [%a3] 28
	jz.t	%d15, 0, .L46
	.loc 1 566 0
	ld.w	%d15, [%a3] 24
	.loc 1 567 0
	ld.w	%d2, [%a3] 24
	.loc 1 566 0
	jnz.t	%d15, 29, .L51
	.loc 1 569 0
	extr.u	%d2, %d2, 18, 11
	.loc 1 570 0
	ret
.L51:
	.loc 1 567 0
	insert	%d2, %d2, 0, 29, 3
	ret
.LFE348:
	.size	Get_CAN_RxBuffer, .-Get_CAN_RxBuffer
	.local	buffer.14021
.section .bss,"aw",@nobits
	.align 0
	.type		 buffer.14021,@object
	.size		 buffer.14021,64
buffer.14021:
	.space	64
	.local	LDO
	.align 0
	.type		 LDO,@object
	.size		 LDO,4
LDO:
	.space	4
	.local	SP_fast
	.align 2
	.type		 SP_fast,@object
	.size		 SP_fast,16
SP_fast:
	.space	16
	.local	SJW_fast
	.align 2
	.type		 SJW_fast,@object
	.size		 SJW_fast,16
SJW_fast:
	.space	16
	.local	SP_nominal
	.align 2
	.type		 SP_nominal,@object
	.size		 SP_nominal,16
SP_nominal:
	.space	16
	.local	SJW_nominal
	.align 2
	.type		 SJW_nominal,@object
	.size		 SJW_nominal,16
SJW_nominal:
	.space	16
	.local	Baudrate_fast
	.align 2
	.type		 Baudrate_fast,@object
	.size		 Baudrate_fast,16
Baudrate_fast:
	.space	16
	.local	Baudrate_nominal
	.align 2
	.type		 Baudrate_nominal,@object
	.size		 Baudrate_nominal,16
Baudrate_nominal:
	.space	16
	.global	TxData_CAN
.section .data,"aw",@progbits
	.type	TxData_CAN, @object
	.size	TxData_CAN, 64
TxData_CAN:
	.byte	72
	.byte	101
	.byte	108
	.byte	108
	.byte	111
	.byte	33
	.zero	58
	.global	pMultican
.section .bss,"aw",@nobits
	.align 2
	.type	pMultican, @object
	.size	pMultican, 452
pMultican:
	.zero	452
	.global	pCAN
	.align 2
	.type	pCAN, @object
	.size	pCAN, 272
pCAN:
	.zero	272
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
	.uaword	.LFB339
	.uaword	.LFE339-.LFB339
	.byte	0x4
	.uaword	.LCFI0-.LFB339
	.byte	0xe
	.uleb128 0x90
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB340
	.uaword	.LFE340-.LFB340
	.byte	0x4
	.uaword	.LCFI1-.LFB340
	.byte	0xe
	.uleb128 0x68
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB341
	.uaword	.LFE341-.LFB341
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB342
	.uaword	.LFE342-.LFB342
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB343
	.uaword	.LFE343-.LFB343
	.byte	0x4
	.uaword	.LCFI2-.LFB343
	.byte	0xe
	.uleb128 0x58
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB344
	.uaword	.LFE344-.LFB344
	.byte	0x4
	.uaword	.LCFI3-.LFB344
	.byte	0xe
	.uleb128 0x58
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB345
	.uaword	.LFE345-.LFB345
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB346
	.uaword	.LFE346-.LFB346
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB347
	.uaword	.LFE347-.LFB347
	.byte	0x4
	.uaword	.LCFI4-.LFB347
	.byte	0xe
	.uleb128 0x40
	.align 2
.LEFDE16:
.LSFDE18:
	.uaword	.LEFDE18-.LASFDE18
.LASFDE18:
	.uaword	.Lframe0
	.uaword	.LFB348
	.uaword	.LFE348-.LFB348
	.align 2
.LEFDE18:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "./0_Src/4_McHal/Tricore/_Reg/IfxCan_regdef.h"
	.file 3 "./0_Src/4_McHal/Tricore/_Reg/IfxSrc_regdef.h"
	.file 4 "./0_Src/0_AppSw/Config/Common/stdarg.h"
	.file 5 "./0_Src/4_McHal/Tricore/Cpu/Std/Platform_Types.h"
	.file 6 "./0_Src/4_McHal/Tricore/Cpu/Std/Ifx_Types.h"
	.file 7 "./0_Src/4_McHal/Tricore/_Impl/IfxSrc_cfg.h"
	.file 8 "./0_Src/4_McHal/Tricore/_Impl/IfxMultican_cfg.h"
	.file 9 "./0_Src/4_McHal/Tricore/_Reg/IfxPort_regdef.h"
	.file 10 "./0_Src/4_McHal/Tricore/Port/Std/IfxPort.h"
	.file 11 "./0_Src/4_McHal/Tricore/_PinMap/IfxMultican_PinMap.h"
	.file 12 "./0_Src/4_McHal/Tricore/Multican/Std/IfxMultican.h"
	.file 13 "./0_Src/4_McHal/Tricore/Multican/Can/IfxMultican_Can.h"
	.file 14 "0_Src/0_AppSw/Tricore/Device_Driver/Driver_Communication/Peripherals_CAN.h"
	.file 15 "0_Src/0_AppSw/Tricore/Device_Driver/Driver_Communication/Peripherals_ETH.h"
	.file 16 "<built-in>"
	.file 17 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\stdio.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x93e4
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9."
	.string	"4 build on 2018-04-18 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -msmall-const=8 -mtc161 -g -g -O2 -fno-common -fno-short-enums -fsingle-precision-constant -fstrict-volatile-bitfields"
	.byte	0x1
	.string	"0_Src/0_AppSw/Tricore/Device_Driver/Driver_Communication/Peripherals_CAN.c"
	.string	"D:\\\\00.Workspace\\\\TC275\\\\SKKU_ECU_SOMEIP\\\\TC275_SOME_IP_Flatform"
	.uaword	.Ltext0
	.uaword	.Letext0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.string	"_Ifx_CAN_ACCEN0_Bits"
	.byte	0x4
	.byte	0x2
	.byte	0x31
	.uaword	0x3c4
	.uleb128 0x3
	.string	"EN0"
	.byte	0x2
	.byte	0x33
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x3
	.string	"EN1"
	.byte	0x2
	.byte	0x34
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x3
	.string	"EN2"
	.byte	0x2
	.byte	0x35
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x3
	.string	"EN3"
	.byte	0x2
	.byte	0x36
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x3
	.string	"EN4"
	.byte	0x2
	.byte	0x37
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x3
	.string	"EN5"
	.byte	0x2
	.byte	0x38
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x3
	.string	"EN6"
	.byte	0x2
	.byte	0x39
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x3
	.string	"EN7"
	.byte	0x2
	.byte	0x3a
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.string	"EN8"
	.byte	0x2
	.byte	0x3b
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x3
	.string	"EN9"
	.byte	0x2
	.byte	0x3c
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x3
	.string	"EN10"
	.byte	0x2
	.byte	0x3d
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x3
	.string	"EN11"
	.byte	0x2
	.byte	0x3e
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x3
	.string	"EN12"
	.byte	0x2
	.byte	0x3f
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x3
	.string	"EN13"
	.byte	0x2
	.byte	0x40
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x3
	.string	"EN14"
	.byte	0x2
	.byte	0x41
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x3
	.string	"EN15"
	.byte	0x2
	.byte	0x42
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.string	"EN16"
	.byte	0x2
	.byte	0x43
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x3
	.string	"EN17"
	.byte	0x2
	.byte	0x44
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0x3
	.string	"EN18"
	.byte	0x2
	.byte	0x45
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0x3
	.string	"EN19"
	.byte	0x2
	.byte	0x46
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.string	"EN20"
	.byte	0x2
	.byte	0x47
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0x3
	.string	"EN21"
	.byte	0x2
	.byte	0x48
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0x3
	.string	"EN22"
	.byte	0x2
	.byte	0x49
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0x3
	.string	"EN23"
	.byte	0x2
	.byte	0x4a
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.string	"EN24"
	.byte	0x2
	.byte	0x4b
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.string	"EN25"
	.byte	0x2
	.byte	0x4c
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x3
	.string	"EN26"
	.byte	0x2
	.byte	0x4d
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.string	"EN27"
	.byte	0x2
	.byte	0x4e
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.string	"EN28"
	.byte	0x2
	.byte	0x4f
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.string	"EN29"
	.byte	0x2
	.byte	0x50
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.string	"EN30"
	.byte	0x2
	.byte	0x51
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.string	"EN31"
	.byte	0x2
	.byte	0x52
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x5
	.string	"Ifx_CAN_ACCEN0_Bits"
	.byte	0x2
	.byte	0x53
	.uaword	0x1b0
	.uleb128 0x2
	.string	"_Ifx_CAN_ACCEN1_Bits"
	.byte	0x4
	.byte	0x2
	.byte	0x56
	.uaword	0x41c
	.uleb128 0x6
	.uaword	.LASF0
	.byte	0x2
	.byte	0x58
	.uaword	0x3c4
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_CAN_ACCEN1_Bits"
	.byte	0x2
	.byte	0x59
	.uaword	0x3ef
	.uleb128 0x2
	.string	"_Ifx_CAN_CLC_Bits"
	.byte	0x4
	.byte	0x2
	.byte	0x5c
	.uaword	0x4a0
	.uleb128 0x3
	.string	"DISR"
	.byte	0x2
	.byte	0x5e
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x3
	.string	"DISS"
	.byte	0x2
	.byte	0x5f
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x6
	.uaword	.LASF1
	.byte	0x2
	.byte	0x60
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x3
	.string	"EDIS"
	.byte	0x2
	.byte	0x61
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x6
	.uaword	.LASF2
	.byte	0x2
	.byte	0x62
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_CAN_CLC_Bits"
	.byte	0x2
	.byte	0x63
	.uaword	0x437
	.uleb128 0x2
	.string	"_Ifx_CAN_FDR_Bits"
	.byte	0x4
	.byte	0x2
	.byte	0x66
	.uaword	0x50f
	.uleb128 0x3
	.string	"STEP"
	.byte	0x2
	.byte	0x68
	.uaword	0x3c4
	.byte	0x4
	.byte	0xa
	.byte	0x16
	.byte	0
	.uleb128 0x6
	.uaword	.LASF3
	.byte	0x2
	.byte	0x69
	.uaword	0x3c4
	.byte	0x4
	.byte	0x4
	.byte	0x12
	.byte	0
	.uleb128 0x3
	.string	"DM"
	.byte	0x2
	.byte	0x6a
	.uaword	0x3c4
	.byte	0x4
	.byte	0x2
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.uaword	.LASF4
	.byte	0x2
	.byte	0x6b
	.uaword	0x3c4
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_CAN_FDR_Bits"
	.byte	0x2
	.byte	0x6c
	.uaword	0x4b8
	.uleb128 0x2
	.string	"_Ifx_CAN_ID_Bits"
	.byte	0x4
	.byte	0x2
	.byte	0x6f
	.uaword	0x577
	.uleb128 0x3
	.string	"MOD_REV"
	.byte	0x2
	.byte	0x71
	.uaword	0x3c4
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.string	"MOD_TYPE"
	.byte	0x2
	.byte	0x72
	.uaword	0x3c4
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.uaword	.LASF5
	.byte	0x2
	.byte	0x73
	.uaword	0x3c4
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_CAN_ID_Bits"
	.byte	0x2
	.byte	0x74
	.uaword	0x527
	.uleb128 0x2
	.string	"_Ifx_CAN_KRST0_Bits"
	.byte	0x4
	.byte	0x2
	.byte	0x77
	.uaword	0x5dc
	.uleb128 0x3
	.string	"RST"
	.byte	0x2
	.byte	0x79
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x3
	.string	"RSTSTAT"
	.byte	0x2
	.byte	0x7a
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x6
	.uaword	.LASF1
	.byte	0x2
	.byte	0x7b
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_CAN_KRST0_Bits"
	.byte	0x2
	.byte	0x7c
	.uaword	0x58e
	.uleb128 0x2
	.string	"_Ifx_CAN_KRST1_Bits"
	.byte	0x4
	.byte	0x2
	.byte	0x7f
	.uaword	0x631
	.uleb128 0x3
	.string	"RST"
	.byte	0x2
	.byte	0x81
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x6
	.uaword	.LASF6
	.byte	0x2
	.byte	0x82
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1f
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_CAN_KRST1_Bits"
	.byte	0x2
	.byte	0x83
	.uaword	0x5f6
	.uleb128 0x2
	.string	"_Ifx_CAN_KRSTCLR_Bits"
	.byte	0x4
	.byte	0x2
	.byte	0x86
	.uaword	0x688
	.uleb128 0x3
	.string	"CLR"
	.byte	0x2
	.byte	0x88
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x6
	.uaword	.LASF6
	.byte	0x2
	.byte	0x89
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1f
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_CAN_KRSTCLR_Bits"
	.byte	0x2
	.byte	0x8a
	.uaword	0x64b
	.uleb128 0x2
	.string	"_Ifx_CAN_LIST_Bits"
	.byte	0x4
	.byte	0x2
	.byte	0x8d
	.uaword	0x710
	.uleb128 0x3
	.string	"BEGIN"
	.byte	0x2
	.byte	0x8f
	.uaword	0x3c4
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.string	"END"
	.byte	0x2
	.byte	0x90
	.uaword	0x3c4
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.string	"SIZE"
	.byte	0x2
	.byte	0x91
	.uaword	0x3c4
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.string	"EMPTY"
	.byte	0x2
	.byte	0x92
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x6
	.uaword	.LASF7
	.byte	0x2
	.byte	0x93
	.uaword	0x3c4
	.byte	0x4
	.byte	0x7
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_CAN_LIST_Bits"
	.byte	0x2
	.byte	0x94
	.uaword	0x6a4
	.uleb128 0x2
	.string	"_Ifx_CAN_MCR_Bits"
	.byte	0x4
	.byte	0x2
	.byte	0x97
	.uaword	0x785
	.uleb128 0x3
	.string	"CLKSEL"
	.byte	0x2
	.byte	0x99
	.uaword	0x3c4
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0x6
	.uaword	.LASF2
	.byte	0x2
	.byte	0x9a
	.uaword	0x3c4
	.byte	0x4
	.byte	0x8
	.byte	0x14
	.byte	0
	.uleb128 0x3
	.string	"MPSEL"
	.byte	0x2
	.byte	0x9b
	.uaword	0x3c4
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.uaword	.LASF4
	.byte	0x2
	.byte	0x9c
	.uaword	0x3c4
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_CAN_MCR_Bits"
	.byte	0x2
	.byte	0x9d
	.uaword	0x729
	.uleb128 0x2
	.string	"_Ifx_CAN_MECR_Bits"
	.byte	0x4
	.byte	0x2
	.byte	0xa0
	.uaword	0x85e
	.uleb128 0x3
	.string	"TH"
	.byte	0x2
	.byte	0xa2
	.uaword	0x3c4
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.string	"INP"
	.byte	0x2
	.byte	0xa3
	.uaword	0x3c4
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.string	"NODE"
	.byte	0x2
	.byte	0xa4
	.uaword	0x3c4
	.byte	0x4
	.byte	0x3
	.byte	0x9
	.byte	0
	.uleb128 0x3
	.string	"reserved_23"
	.byte	0x2
	.byte	0xa5
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.string	"ANYED"
	.byte	0x2
	.byte	0xa6
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.string	"CAPEIE"
	.byte	0x2
	.byte	0xa7
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x6
	.uaword	.LASF8
	.byte	0x2
	.byte	0xa8
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.string	"DEPTH"
	.byte	0x2
	.byte	0xa9
	.uaword	0x3c4
	.byte	0x4
	.byte	0x3
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.string	"SOF"
	.byte	0x2
	.byte	0xaa
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.uaword	.LASF9
	.byte	0x2
	.byte	0xab
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_CAN_MECR_Bits"
	.byte	0x2
	.byte	0xac
	.uaword	0x79d
	.uleb128 0x2
	.string	"_Ifx_CAN_MESTAT_Bits"
	.byte	0x4
	.byte	0x2
	.byte	0xaf
	.uaword	0x8d6
	.uleb128 0x3
	.string	"CAPT"
	.byte	0x2
	.byte	0xb1
	.uaword	0x3c4
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.string	"CAPRED"
	.byte	0x2
	.byte	0xb2
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x3
	.string	"CAPE"
	.byte	0x2
	.byte	0xb3
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0x6
	.uaword	.LASF10
	.byte	0x2
	.byte	0xb4
	.uaword	0x3c4
	.byte	0x4
	.byte	0xe
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_CAN_MESTAT_Bits"
	.byte	0x2
	.byte	0xb5
	.uaword	0x877
	.uleb128 0x2
	.string	"_Ifx_CAN_MITR_Bits"
	.byte	0x4
	.byte	0x2
	.byte	0xb8
	.uaword	0x92a
	.uleb128 0x3
	.string	"IT"
	.byte	0x2
	.byte	0xba
	.uaword	0x3c4
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.uaword	.LASF4
	.byte	0x2
	.byte	0xbb
	.uaword	0x3c4
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_CAN_MITR_Bits"
	.byte	0x2
	.byte	0xbc
	.uaword	0x8f1
	.uleb128 0x2
	.string	"_Ifx_CAN_MO_AMR_Bits"
	.byte	0x4
	.byte	0x2
	.byte	0xbf
	.uaword	0x98e
	.uleb128 0x3
	.string	"AM"
	.byte	0x2
	.byte	0xc1
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1d
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.string	"MIDE"
	.byte	0x2
	.byte	0xc2
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.uaword	.LASF11
	.byte	0x2
	.byte	0xc3
	.uaword	0x3c4
	.byte	0x4
	.byte	0x2
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_CAN_MO_AMR_Bits"
	.byte	0x2
	.byte	0xc4
	.uaword	0x943
	.uleb128 0x2
	.string	"_Ifx_CAN_MO_AR_Bits"
	.byte	0x4
	.byte	0x2
	.byte	0xc7
	.uaword	0x9f2
	.uleb128 0x3
	.string	"ID"
	.byte	0x2
	.byte	0xc9
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1d
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.string	"IDE"
	.byte	0x2
	.byte	0xca
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.string	"PRI"
	.byte	0x2
	.byte	0xcb
	.uaword	0x3c4
	.byte	0x4
	.byte	0x2
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_CAN_MO_AR_Bits"
	.byte	0x2
	.byte	0xcc
	.uaword	0x9a9
	.uleb128 0x2
	.string	"_Ifx_CAN_MO_CTR_Bits"
	.byte	0x4
	.byte	0x2
	.byte	0xcf
	.uaword	0xc26
	.uleb128 0x3
	.string	"RESRXPND"
	.byte	0x2
	.byte	0xd1
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x3
	.string	"RESTXPND"
	.byte	0x2
	.byte	0xd2
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x3
	.string	"RESRXUPD"
	.byte	0x2
	.byte	0xd3
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x3
	.string	"RESNEWDAT"
	.byte	0x2
	.byte	0xd4
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x3
	.string	"RESMSGLST"
	.byte	0x2
	.byte	0xd5
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x3
	.string	"RESMSGVAL"
	.byte	0x2
	.byte	0xd6
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x3
	.string	"RESRTSEL"
	.byte	0x2
	.byte	0xd7
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x3
	.string	"RESRXEN"
	.byte	0x2
	.byte	0xd8
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.string	"RESTXRQ"
	.byte	0x2
	.byte	0xd9
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x3
	.string	"RESTXEN0"
	.byte	0x2
	.byte	0xda
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x3
	.string	"RESTXEN1"
	.byte	0x2
	.byte	0xdb
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x3
	.string	"RESDIR"
	.byte	0x2
	.byte	0xdc
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x6
	.uaword	.LASF12
	.byte	0x2
	.byte	0xdd
	.uaword	0x3c4
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.string	"SETRXPND"
	.byte	0x2
	.byte	0xde
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x3
	.string	"SETTXPND"
	.byte	0x2
	.byte	0xdf
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0x3
	.string	"SETRXUPD"
	.byte	0x2
	.byte	0xe0
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0x3
	.string	"SETNEWDAT"
	.byte	0x2
	.byte	0xe1
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.string	"SETMSGLST"
	.byte	0x2
	.byte	0xe2
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0x3
	.string	"SETMSGVAL"
	.byte	0x2
	.byte	0xe3
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0x3
	.string	"SETRTSEL"
	.byte	0x2
	.byte	0xe4
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0x3
	.string	"SETRXEN"
	.byte	0x2
	.byte	0xe5
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.string	"SETTXRQ"
	.byte	0x2
	.byte	0xe6
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.string	"SETTXEN0"
	.byte	0x2
	.byte	0xe7
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x3
	.string	"SETTXEN1"
	.byte	0x2
	.byte	0xe8
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.string	"SETDIR"
	.byte	0x2
	.byte	0xe9
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.uaword	.LASF13
	.byte	0x2
	.byte	0xea
	.uaword	0x3c4
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_CAN_MO_CTR_Bits"
	.byte	0x2
	.byte	0xeb
	.uaword	0xa0c
	.uleb128 0x2
	.string	"_Ifx_CAN_MO_DATAH_Bits"
	.byte	0x4
	.byte	0x2
	.byte	0xee
	.uaword	0xc9d
	.uleb128 0x3
	.string	"DB4"
	.byte	0x2
	.byte	0xf0
	.uaword	0x3c4
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.string	"DB5"
	.byte	0x2
	.byte	0xf1
	.uaword	0x3c4
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.string	"DB6"
	.byte	0x2
	.byte	0xf2
	.uaword	0x3c4
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.string	"DB7"
	.byte	0x2
	.byte	0xf3
	.uaword	0x3c4
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_CAN_MO_DATAH_Bits"
	.byte	0x2
	.byte	0xf4
	.uaword	0xc41
	.uleb128 0x2
	.string	"_Ifx_CAN_MO_DATAL_Bits"
	.byte	0x4
	.byte	0x2
	.byte	0xf7
	.uaword	0xd16
	.uleb128 0x3
	.string	"DB0"
	.byte	0x2
	.byte	0xf9
	.uaword	0x3c4
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.string	"DB1"
	.byte	0x2
	.byte	0xfa
	.uaword	0x3c4
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.string	"DB2"
	.byte	0x2
	.byte	0xfb
	.uaword	0x3c4
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.string	"DB3"
	.byte	0x2
	.byte	0xfc
	.uaword	0x3c4
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_CAN_MO_DATAL_Bits"
	.byte	0x2
	.byte	0xfd
	.uaword	0xcba
	.uleb128 0x7
	.string	"_Ifx_CAN_MO_EDATA0_Bits"
	.byte	0x4
	.byte	0x2
	.uahalf	0x100
	.uaword	0xd95
	.uleb128 0x8
	.string	"DB0"
	.byte	0x2
	.uahalf	0x102
	.uaword	0x3c4
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.string	"DB1"
	.byte	0x2
	.uahalf	0x103
	.uaword	0x3c4
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.string	"DB2"
	.byte	0x2
	.uahalf	0x104
	.uaword	0x3c4
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.string	"DB3"
	.byte	0x2
	.uahalf	0x105
	.uaword	0x3c4
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CAN_MO_EDATA0_Bits"
	.byte	0x2
	.uahalf	0x106
	.uaword	0xd33
	.uleb128 0x7
	.string	"_Ifx_CAN_MO_EDATA1_Bits"
	.byte	0x4
	.byte	0x2
	.uahalf	0x109
	.uaword	0xe16
	.uleb128 0x8
	.string	"DB0"
	.byte	0x2
	.uahalf	0x10b
	.uaword	0x3c4
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.string	"DB1"
	.byte	0x2
	.uahalf	0x10c
	.uaword	0x3c4
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.string	"DB2"
	.byte	0x2
	.uahalf	0x10d
	.uaword	0x3c4
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.string	"DB3"
	.byte	0x2
	.uahalf	0x10e
	.uaword	0x3c4
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CAN_MO_EDATA1_Bits"
	.byte	0x2
	.uahalf	0x10f
	.uaword	0xdb4
	.uleb128 0x7
	.string	"_Ifx_CAN_MO_EDATA2_Bits"
	.byte	0x4
	.byte	0x2
	.uahalf	0x112
	.uaword	0xe97
	.uleb128 0x8
	.string	"DB0"
	.byte	0x2
	.uahalf	0x114
	.uaword	0x3c4
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.string	"DB1"
	.byte	0x2
	.uahalf	0x115
	.uaword	0x3c4
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.string	"DB2"
	.byte	0x2
	.uahalf	0x116
	.uaword	0x3c4
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.string	"DB3"
	.byte	0x2
	.uahalf	0x117
	.uaword	0x3c4
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CAN_MO_EDATA2_Bits"
	.byte	0x2
	.uahalf	0x118
	.uaword	0xe35
	.uleb128 0x7
	.string	"_Ifx_CAN_MO_EDATA3_Bits"
	.byte	0x4
	.byte	0x2
	.uahalf	0x11b
	.uaword	0xf18
	.uleb128 0x8
	.string	"DB0"
	.byte	0x2
	.uahalf	0x11d
	.uaword	0x3c4
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.string	"DB1"
	.byte	0x2
	.uahalf	0x11e
	.uaword	0x3c4
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.string	"DB2"
	.byte	0x2
	.uahalf	0x11f
	.uaword	0x3c4
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.string	"DB3"
	.byte	0x2
	.uahalf	0x120
	.uaword	0x3c4
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CAN_MO_EDATA3_Bits"
	.byte	0x2
	.uahalf	0x121
	.uaword	0xeb6
	.uleb128 0x7
	.string	"_Ifx_CAN_MO_EDATA4_Bits"
	.byte	0x4
	.byte	0x2
	.uahalf	0x124
	.uaword	0xf99
	.uleb128 0x8
	.string	"DB0"
	.byte	0x2
	.uahalf	0x126
	.uaword	0x3c4
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.string	"DB1"
	.byte	0x2
	.uahalf	0x127
	.uaword	0x3c4
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.string	"DB2"
	.byte	0x2
	.uahalf	0x128
	.uaword	0x3c4
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.string	"DB3"
	.byte	0x2
	.uahalf	0x129
	.uaword	0x3c4
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CAN_MO_EDATA4_Bits"
	.byte	0x2
	.uahalf	0x12a
	.uaword	0xf37
	.uleb128 0x7
	.string	"_Ifx_CAN_MO_EDATA5_Bits"
	.byte	0x4
	.byte	0x2
	.uahalf	0x12d
	.uaword	0x101a
	.uleb128 0x8
	.string	"DB0"
	.byte	0x2
	.uahalf	0x12f
	.uaword	0x3c4
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.string	"DB1"
	.byte	0x2
	.uahalf	0x130
	.uaword	0x3c4
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.string	"DB2"
	.byte	0x2
	.uahalf	0x131
	.uaword	0x3c4
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.string	"DB3"
	.byte	0x2
	.uahalf	0x132
	.uaword	0x3c4
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CAN_MO_EDATA5_Bits"
	.byte	0x2
	.uahalf	0x133
	.uaword	0xfb8
	.uleb128 0x7
	.string	"_Ifx_CAN_MO_EDATA6_Bits"
	.byte	0x4
	.byte	0x2
	.uahalf	0x136
	.uaword	0x109b
	.uleb128 0x8
	.string	"DB0"
	.byte	0x2
	.uahalf	0x138
	.uaword	0x3c4
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.string	"DB1"
	.byte	0x2
	.uahalf	0x139
	.uaword	0x3c4
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.string	"DB2"
	.byte	0x2
	.uahalf	0x13a
	.uaword	0x3c4
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.string	"DB3"
	.byte	0x2
	.uahalf	0x13b
	.uaword	0x3c4
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CAN_MO_EDATA6_Bits"
	.byte	0x2
	.uahalf	0x13c
	.uaword	0x1039
	.uleb128 0x7
	.string	"_Ifx_CAN_MO_FCR_Bits"
	.byte	0x4
	.byte	0x2
	.uahalf	0x13f
	.uaword	0x122b
	.uleb128 0x8
	.string	"MMC"
	.byte	0x2
	.uahalf	0x141
	.uaword	0x3c4
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0x8
	.string	"RXTOE"
	.byte	0x2
	.uahalf	0x142
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x8
	.string	"BRS"
	.byte	0x2
	.uahalf	0x143
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x8
	.string	"FDF"
	.byte	0x2
	.uahalf	0x144
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xa
	.uaword	.LASF14
	.byte	0x2
	.uahalf	0x145
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.string	"GDFS"
	.byte	0x2
	.uahalf	0x146
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x8
	.string	"IDC"
	.byte	0x2
	.uahalf	0x147
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x8
	.string	"DLCC"
	.byte	0x2
	.uahalf	0x148
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x8
	.string	"DATC"
	.byte	0x2
	.uahalf	0x149
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xa
	.uaword	.LASF12
	.byte	0x2
	.uahalf	0x14a
	.uaword	0x3c4
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.string	"RXIE"
	.byte	0x2
	.uahalf	0x14b
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x8
	.string	"TXIE"
	.byte	0x2
	.uahalf	0x14c
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0x8
	.string	"OVIE"
	.byte	0x2
	.uahalf	0x14d
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0x8
	.string	"reserved_19"
	.byte	0x2
	.uahalf	0x14e
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x8
	.string	"FRREN"
	.byte	0x2
	.uahalf	0x14f
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0x8
	.string	"RMM"
	.byte	0x2
	.uahalf	0x150
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.string	"SDT"
	.byte	0x2
	.uahalf	0x151
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0x8
	.string	"STT"
	.byte	0x2
	.uahalf	0x152
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.string	"DLC"
	.byte	0x2
	.uahalf	0x153
	.uaword	0x3c4
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.uaword	.LASF13
	.byte	0x2
	.uahalf	0x154
	.uaword	0x3c4
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CAN_MO_FCR_Bits"
	.byte	0x2
	.uahalf	0x155
	.uaword	0x10ba
	.uleb128 0x7
	.string	"_Ifx_CAN_MO_FGPR_Bits"
	.byte	0x4
	.byte	0x2
	.uahalf	0x158
	.uaword	0x12a7
	.uleb128 0x8
	.string	"BOT"
	.byte	0x2
	.uahalf	0x15a
	.uaword	0x3c4
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.string	"TOP"
	.byte	0x2
	.uahalf	0x15b
	.uaword	0x3c4
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.string	"CUR"
	.byte	0x2
	.uahalf	0x15c
	.uaword	0x3c4
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.string	"SEL"
	.byte	0x2
	.uahalf	0x15d
	.uaword	0x3c4
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CAN_MO_FGPR_Bits"
	.byte	0x2
	.uahalf	0x15e
	.uaword	0x1247
	.uleb128 0x7
	.string	"_Ifx_CAN_MO_IPR_Bits"
	.byte	0x4
	.byte	0x2
	.uahalf	0x161
	.uaword	0x132a
	.uleb128 0x8
	.string	"RXINP"
	.byte	0x2
	.uahalf	0x163
	.uaword	0x3c4
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0x8
	.string	"TXINP"
	.byte	0x2
	.uahalf	0x164
	.uaword	0x3c4
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.string	"MPN"
	.byte	0x2
	.uahalf	0x165
	.uaword	0x3c4
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.string	"CFCVAL"
	.byte	0x2
	.uahalf	0x166
	.uaword	0x3c4
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CAN_MO_IPR_Bits"
	.byte	0x2
	.uahalf	0x167
	.uaword	0x12c4
	.uleb128 0x7
	.string	"_Ifx_CAN_MO_STAT_Bits"
	.byte	0x4
	.byte	0x2
	.uahalf	0x16a
	.uaword	0x1472
	.uleb128 0x8
	.string	"RXPND"
	.byte	0x2
	.uahalf	0x16c
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x8
	.string	"TXPND"
	.byte	0x2
	.uahalf	0x16d
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x8
	.string	"RXUPD"
	.byte	0x2
	.uahalf	0x16e
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x8
	.string	"NEWDAT"
	.byte	0x2
	.uahalf	0x16f
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x8
	.string	"MSGLST"
	.byte	0x2
	.uahalf	0x170
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x8
	.string	"MSGVAL"
	.byte	0x2
	.uahalf	0x171
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x8
	.string	"RTSEL"
	.byte	0x2
	.uahalf	0x172
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x8
	.string	"RXEN"
	.byte	0x2
	.uahalf	0x173
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.string	"TXRQ"
	.byte	0x2
	.uahalf	0x174
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x8
	.string	"TXEN0"
	.byte	0x2
	.uahalf	0x175
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x8
	.string	"TXEN1"
	.byte	0x2
	.uahalf	0x176
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x8
	.string	"DIR"
	.byte	0x2
	.uahalf	0x177
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x8
	.string	"LIST"
	.byte	0x2
	.uahalf	0x178
	.uaword	0x3c4
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.string	"PPREV"
	.byte	0x2
	.uahalf	0x179
	.uaword	0x3c4
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.string	"PNEXT"
	.byte	0x2
	.uahalf	0x17a
	.uaword	0x3c4
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CAN_MO_STAT_Bits"
	.byte	0x2
	.uahalf	0x17b
	.uaword	0x1346
	.uleb128 0x7
	.string	"_Ifx_CAN_MSID_Bits"
	.byte	0x4
	.byte	0x2
	.uahalf	0x17e
	.uaword	0x14ce
	.uleb128 0x8
	.string	"INDEX"
	.byte	0x2
	.uahalf	0x180
	.uaword	0x3c4
	.byte	0x4
	.byte	0x6
	.byte	0x1a
	.byte	0
	.uleb128 0xa
	.uaword	.LASF15
	.byte	0x2
	.uahalf	0x181
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1a
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CAN_MSID_Bits"
	.byte	0x2
	.uahalf	0x182
	.uaword	0x148f
	.uleb128 0x7
	.string	"_Ifx_CAN_MSIMASK_Bits"
	.byte	0x4
	.byte	0x2
	.uahalf	0x185
	.uaword	0x1517
	.uleb128 0x8
	.string	"IM"
	.byte	0x2
	.uahalf	0x187
	.uaword	0x3c4
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CAN_MSIMASK_Bits"
	.byte	0x2
	.uahalf	0x188
	.uaword	0x14e8
	.uleb128 0x7
	.string	"_Ifx_CAN_MSPND_Bits"
	.byte	0x4
	.byte	0x2
	.uahalf	0x18b
	.uaword	0x1562
	.uleb128 0x8
	.string	"PND"
	.byte	0x2
	.uahalf	0x18d
	.uaword	0x3c4
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CAN_MSPND_Bits"
	.byte	0x2
	.uahalf	0x18e
	.uaword	0x1534
	.uleb128 0x7
	.string	"_Ifx_CAN_N_BTEVR_Bits"
	.byte	0x4
	.byte	0x2
	.uahalf	0x191
	.uaword	0x1632
	.uleb128 0x8
	.string	"BRP"
	.byte	0x2
	.uahalf	0x193
	.uaword	0x3c4
	.byte	0x4
	.byte	0x6
	.byte	0x1a
	.byte	0
	.uleb128 0xa
	.uaword	.LASF15
	.byte	0x2
	.uahalf	0x194
	.uaword	0x3c4
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.string	"SJW"
	.byte	0x2
	.uahalf	0x195
	.uaword	0x3c4
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0
	.uleb128 0xa
	.uaword	.LASF12
	.byte	0x2
	.uahalf	0x196
	.uaword	0x3c4
	.byte	0x4
	.byte	0x3
	.byte	0x11
	.byte	0
	.uleb128 0x8
	.string	"DIV8"
	.byte	0x2
	.uahalf	0x197
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.string	"TSEG2"
	.byte	0x2
	.uahalf	0x198
	.uaword	0x3c4
	.byte	0x4
	.byte	0x5
	.byte	0xb
	.byte	0
	.uleb128 0xa
	.uaword	.LASF16
	.byte	0x2
	.uahalf	0x199
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.string	"TSEG1"
	.byte	0x2
	.uahalf	0x19a
	.uaword	0x3c4
	.byte	0x4
	.byte	0x6
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.uaword	.LASF13
	.byte	0x2
	.uahalf	0x19b
	.uaword	0x3c4
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CAN_N_BTEVR_Bits"
	.byte	0x2
	.uahalf	0x19c
	.uaword	0x157d
	.uleb128 0x7
	.string	"_Ifx_CAN_N_BTR_Bits"
	.byte	0x4
	.byte	0x2
	.uahalf	0x19f
	.uaword	0x16d2
	.uleb128 0x8
	.string	"BRP"
	.byte	0x2
	.uahalf	0x1a1
	.uaword	0x3c4
	.byte	0x4
	.byte	0x6
	.byte	0x1a
	.byte	0
	.uleb128 0x8
	.string	"SJW"
	.byte	0x2
	.uahalf	0x1a2
	.uaword	0x3c4
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.string	"TSEG1"
	.byte	0x2
	.uahalf	0x1a3
	.uaword	0x3c4
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0
	.uleb128 0x8
	.string	"TSEG2"
	.byte	0x2
	.uahalf	0x1a4
	.uaword	0x3c4
	.byte	0x4
	.byte	0x3
	.byte	0x11
	.byte	0
	.uleb128 0x8
	.string	"DIV8"
	.byte	0x2
	.uahalf	0x1a5
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.uaword	.LASF4
	.byte	0x2
	.uahalf	0x1a6
	.uaword	0x3c4
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CAN_N_BTR_Bits"
	.byte	0x2
	.uahalf	0x1a7
	.uaword	0x164f
	.uleb128 0x7
	.string	"_Ifx_CAN_N_CR_Bits"
	.byte	0x4
	.byte	0x2
	.uahalf	0x1aa
	.uaword	0x17c8
	.uleb128 0x8
	.string	"INIT"
	.byte	0x2
	.uahalf	0x1ac
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x8
	.string	"TRIE"
	.byte	0x2
	.uahalf	0x1ad
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x8
	.string	"LECIE"
	.byte	0x2
	.uahalf	0x1ae
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x8
	.string	"ALIE"
	.byte	0x2
	.uahalf	0x1af
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x8
	.string	"CANDIS"
	.byte	0x2
	.uahalf	0x1b0
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x8
	.string	"TXDIS"
	.byte	0x2
	.uahalf	0x1b1
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x8
	.string	"CCE"
	.byte	0x2
	.uahalf	0x1b2
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x8
	.string	"CALM"
	.byte	0x2
	.uahalf	0x1b3
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.string	"SUSEN"
	.byte	0x2
	.uahalf	0x1b4
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x8
	.string	"FDEN"
	.byte	0x2
	.uahalf	0x1b5
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xa
	.uaword	.LASF3
	.byte	0x2
	.uahalf	0x1b6
	.uaword	0x3c4
	.byte	0x4
	.byte	0x16
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CAN_N_CR_Bits"
	.byte	0x2
	.uahalf	0x1b7
	.uaword	0x16ed
	.uleb128 0x7
	.string	"_Ifx_CAN_N_ECNT_Bits"
	.byte	0x4
	.byte	0x2
	.uahalf	0x1ba
	.uaword	0x1868
	.uleb128 0x8
	.string	"REC"
	.byte	0x2
	.uahalf	0x1bc
	.uaword	0x3c4
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.string	"TEC"
	.byte	0x2
	.uahalf	0x1bd
	.uaword	0x3c4
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.string	"EWRNLVL"
	.byte	0x2
	.uahalf	0x1be
	.uaword	0x3c4
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.string	"LETD"
	.byte	0x2
	.uahalf	0x1bf
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x8
	.string	"LEINC"
	.byte	0x2
	.uahalf	0x1c0
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xa
	.uaword	.LASF8
	.byte	0x2
	.uahalf	0x1c1
	.uaword	0x3c4
	.byte	0x4
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CAN_N_ECNT_Bits"
	.byte	0x2
	.uahalf	0x1c2
	.uaword	0x17e2
	.uleb128 0x7
	.string	"_Ifx_CAN_N_FBTR_Bits"
	.byte	0x4
	.byte	0x2
	.uahalf	0x1c5
	.uaword	0x18fb
	.uleb128 0x8
	.string	"FBRP"
	.byte	0x2
	.uahalf	0x1c7
	.uaword	0x3c4
	.byte	0x4
	.byte	0x6
	.byte	0x1a
	.byte	0
	.uleb128 0x8
	.string	"FSJW"
	.byte	0x2
	.uahalf	0x1c8
	.uaword	0x3c4
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.string	"FTSEG1"
	.byte	0x2
	.uahalf	0x1c9
	.uaword	0x3c4
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0
	.uleb128 0x8
	.string	"FTSEG2"
	.byte	0x2
	.uahalf	0x1ca
	.uaword	0x3c4
	.byte	0x4
	.byte	0x3
	.byte	0x11
	.byte	0
	.uleb128 0xa
	.uaword	.LASF17
	.byte	0x2
	.uahalf	0x1cb
	.uaword	0x3c4
	.byte	0x4
	.byte	0x11
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CAN_N_FBTR_Bits"
	.byte	0x2
	.uahalf	0x1cc
	.uaword	0x1884
	.uleb128 0x7
	.string	"_Ifx_CAN_N_FCR_Bits"
	.byte	0x4
	.byte	0x2
	.uahalf	0x1cf
	.uaword	0x19ad
	.uleb128 0x8
	.string	"CFC"
	.byte	0x2
	.uahalf	0x1d1
	.uaword	0x3c4
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.string	"CFSEL"
	.byte	0x2
	.uahalf	0x1d2
	.uaword	0x3c4
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0x8
	.string	"CFMOD"
	.byte	0x2
	.uahalf	0x1d3
	.uaword	0x3c4
	.byte	0x4
	.byte	0x2
	.byte	0xb
	.byte	0
	.uleb128 0xa
	.uaword	.LASF16
	.byte	0x2
	.uahalf	0x1d4
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.string	"CFCIE"
	.byte	0x2
	.uahalf	0x1d5
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0x8
	.string	"CFCOV"
	.byte	0x2
	.uahalf	0x1d6
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.uaword	.LASF18
	.byte	0x2
	.uahalf	0x1d7
	.uaword	0x3c4
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CAN_N_FCR_Bits"
	.byte	0x2
	.uahalf	0x1d8
	.uaword	0x1917
	.uleb128 0x7
	.string	"_Ifx_CAN_N_IPR_Bits"
	.byte	0x4
	.byte	0x2
	.uahalf	0x1db
	.uaword	0x1a52
	.uleb128 0x8
	.string	"ALINP"
	.byte	0x2
	.uahalf	0x1dd
	.uaword	0x3c4
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0x8
	.string	"LECINP"
	.byte	0x2
	.uahalf	0x1de
	.uaword	0x3c4
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.string	"TRINP"
	.byte	0x2
	.uahalf	0x1df
	.uaword	0x3c4
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0
	.uleb128 0x8
	.string	"CFCINP"
	.byte	0x2
	.uahalf	0x1e0
	.uaword	0x3c4
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.string	"TEINP"
	.byte	0x2
	.uahalf	0x1e1
	.uaword	0x3c4
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0
	.uleb128 0xa
	.uaword	.LASF19
	.byte	0x2
	.uahalf	0x1e2
	.uaword	0x3c4
	.byte	0x4
	.byte	0xc
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CAN_N_IPR_Bits"
	.byte	0x2
	.uahalf	0x1e3
	.uaword	0x19c8
	.uleb128 0x7
	.string	"_Ifx_CAN_N_PCR_Bits"
	.byte	0x4
	.byte	0x2
	.uahalf	0x1e6
	.uaword	0x1adb
	.uleb128 0x8
	.string	"RXSEL"
	.byte	0x2
	.uahalf	0x1e8
	.uaword	0x3c4
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0x8
	.string	"reserved_3"
	.byte	0x2
	.uahalf	0x1e9
	.uaword	0x3c4
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.string	"LBM"
	.byte	0x2
	.uahalf	0x1ea
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x8
	.string	"reserved_9"
	.byte	0x2
	.uahalf	0x1eb
	.uaword	0x3c4
	.byte	0x4
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CAN_N_PCR_Bits"
	.byte	0x2
	.uahalf	0x1ec
	.uaword	0x1a6d
	.uleb128 0x7
	.string	"_Ifx_CAN_N_SR_Bits"
	.byte	0x4
	.byte	0x2
	.uahalf	0x1ef
	.uaword	0x1bde
	.uleb128 0x8
	.string	"LEC"
	.byte	0x2
	.uahalf	0x1f1
	.uaword	0x3c4
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0x8
	.string	"TXOK"
	.byte	0x2
	.uahalf	0x1f2
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x8
	.string	"RXOK"
	.byte	0x2
	.uahalf	0x1f3
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x8
	.string	"ALERT"
	.byte	0x2
	.uahalf	0x1f4
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x8
	.string	"EWRN"
	.byte	0x2
	.uahalf	0x1f5
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x8
	.string	"BOFF"
	.byte	0x2
	.uahalf	0x1f6
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.string	"LLE"
	.byte	0x2
	.uahalf	0x1f7
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x8
	.string	"LOE"
	.byte	0x2
	.uahalf	0x1f8
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x8
	.string	"SUSACK"
	.byte	0x2
	.uahalf	0x1f9
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x8
	.string	"RESI"
	.byte	0x2
	.uahalf	0x1fa
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x8
	.string	"FLEC"
	.byte	0x2
	.uahalf	0x1fb
	.uaword	0x3c4
	.byte	0x4
	.byte	0x3
	.byte	0x11
	.byte	0
	.uleb128 0xa
	.uaword	.LASF17
	.byte	0x2
	.uahalf	0x1fc
	.uaword	0x3c4
	.byte	0x4
	.byte	0x11
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CAN_N_SR_Bits"
	.byte	0x2
	.uahalf	0x1fd
	.uaword	0x1af6
	.uleb128 0x7
	.string	"_Ifx_CAN_N_TCCR_Bits"
	.byte	0x4
	.byte	0x2
	.uahalf	0x200
	.uaword	0x1c6c
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x202
	.uaword	0x3c4
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.string	"TPSC"
	.byte	0x2
	.uahalf	0x203
	.uaword	0x3c4
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0
	.uleb128 0xa
	.uaword	.LASF12
	.byte	0x2
	.uahalf	0x204
	.uaword	0x3c4
	.byte	0x4
	.byte	0x6
	.byte	0xe
	.byte	0
	.uleb128 0x8
	.string	"TRIGSRC"
	.byte	0x2
	.uahalf	0x205
	.uaword	0x3c4
	.byte	0x4
	.byte	0x3
	.byte	0xb
	.byte	0
	.uleb128 0xa
	.uaword	.LASF16
	.byte	0x2
	.uahalf	0x206
	.uaword	0x3c4
	.byte	0x4
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CAN_N_TCCR_Bits"
	.byte	0x2
	.uahalf	0x207
	.uaword	0x1bf8
	.uleb128 0x7
	.string	"_Ifx_CAN_N_TDCR_Bits"
	.byte	0x4
	.byte	0x2
	.uahalf	0x20a
	.uaword	0x1d10
	.uleb128 0x8
	.string	"TDCV"
	.byte	0x2
	.uahalf	0x20c
	.uaword	0x3c4
	.byte	0x4
	.byte	0x5
	.byte	0x1b
	.byte	0
	.uleb128 0x8
	.string	"reserved_5"
	.byte	0x2
	.uahalf	0x20d
	.uaword	0x3c4
	.byte	0x4
	.byte	0x3
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.string	"TDCO"
	.byte	0x2
	.uahalf	0x20e
	.uaword	0x3c4
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0
	.uleb128 0xa
	.uaword	.LASF12
	.byte	0x2
	.uahalf	0x20f
	.uaword	0x3c4
	.byte	0x4
	.byte	0x3
	.byte	0x11
	.byte	0
	.uleb128 0x8
	.string	"TDC"
	.byte	0x2
	.uahalf	0x210
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.uaword	.LASF4
	.byte	0x2
	.uahalf	0x211
	.uaword	0x3c4
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CAN_N_TDCR_Bits"
	.byte	0x2
	.uahalf	0x212
	.uaword	0x1c88
	.uleb128 0x7
	.string	"_Ifx_CAN_N_TRTR_Bits"
	.byte	0x4
	.byte	0x2
	.uahalf	0x215
	.uaword	0x1d9e
	.uleb128 0x8
	.string	"RELOAD"
	.byte	0x2
	.uahalf	0x217
	.uaword	0x3c4
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.uaword	.LASF4
	.byte	0x2
	.uahalf	0x218
	.uaword	0x3c4
	.byte	0x4
	.byte	0x6
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.string	"TEIE"
	.byte	0x2
	.uahalf	0x219
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0x8
	.string	"TE"
	.byte	0x2
	.uahalf	0x21a
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.uaword	.LASF18
	.byte	0x2
	.uahalf	0x21b
	.uaword	0x3c4
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CAN_N_TRTR_Bits"
	.byte	0x2
	.uahalf	0x21c
	.uaword	0x1d2c
	.uleb128 0x7
	.string	"_Ifx_CAN_N_TTTR_Bits"
	.byte	0x4
	.byte	0x2
	.uahalf	0x21f
	.uaword	0x1e1e
	.uleb128 0x8
	.string	"RELOAD"
	.byte	0x2
	.uahalf	0x221
	.uaword	0x3c4
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.string	"TXMO"
	.byte	0x2
	.uahalf	0x222
	.uaword	0x3c4
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.string	"STRT"
	.byte	0x2
	.uahalf	0x223
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xa
	.uaword	.LASF7
	.byte	0x2
	.uahalf	0x224
	.uaword	0x3c4
	.byte	0x4
	.byte	0x7
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CAN_N_TTTR_Bits"
	.byte	0x2
	.uahalf	0x225
	.uaword	0x1dba
	.uleb128 0x7
	.string	"_Ifx_CAN_OCS_Bits"
	.byte	0x4
	.byte	0x2
	.uahalf	0x228
	.uaword	0x1edc
	.uleb128 0x8
	.string	"TGS"
	.byte	0x2
	.uahalf	0x22a
	.uaword	0x3c4
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0
	.uleb128 0x8
	.string	"TGB"
	.byte	0x2
	.uahalf	0x22b
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x8
	.string	"TG_P"
	.byte	0x2
	.uahalf	0x22c
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xa
	.uaword	.LASF2
	.byte	0x2
	.uahalf	0x22d
	.uaword	0x3c4
	.byte	0x4
	.byte	0x14
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.string	"SUS"
	.byte	0x2
	.uahalf	0x22e
	.uaword	0x3c4
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.string	"SUS_P"
	.byte	0x2
	.uahalf	0x22f
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.string	"SUSSTA"
	.byte	0x2
	.uahalf	0x230
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xa
	.uaword	.LASF11
	.byte	0x2
	.uahalf	0x231
	.uaword	0x3c4
	.byte	0x4
	.byte	0x2
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CAN_OCS_Bits"
	.byte	0x2
	.uahalf	0x232
	.uaword	0x1e3a
	.uleb128 0x7
	.string	"_Ifx_CAN_PANCTR_Bits"
	.byte	0x4
	.byte	0x2
	.uahalf	0x235
	.uaword	0x1f80
	.uleb128 0x8
	.string	"PANCMD"
	.byte	0x2
	.uahalf	0x237
	.uaword	0x3c4
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.string	"BUSY"
	.byte	0x2
	.uahalf	0x238
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x8
	.string	"RBUSY"
	.byte	0x2
	.uahalf	0x239
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xa
	.uaword	.LASF3
	.byte	0x2
	.uahalf	0x23a
	.uaword	0x3c4
	.byte	0x4
	.byte	0x6
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.string	"PANAR1"
	.byte	0x2
	.uahalf	0x23b
	.uaword	0x3c4
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.string	"PANAR2"
	.byte	0x2
	.uahalf	0x23c
	.uaword	0x3c4
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CAN_PANCTR_Bits"
	.byte	0x2
	.uahalf	0x23d
	.uaword	0x1ef5
	.uleb128 0xb
	.byte	0x4
	.byte	0x2
	.uahalf	0x245
	.uaword	0x1fc4
	.uleb128 0xc
	.string	"U"
	.byte	0x2
	.uahalf	0x248
	.uaword	0x3c4
	.uleb128 0xc
	.string	"I"
	.byte	0x2
	.uahalf	0x24a
	.uaword	0x1fc4
	.uleb128 0xc
	.string	"B"
	.byte	0x2
	.uahalf	0x24c
	.uaword	0x3d4
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x9
	.string	"Ifx_CAN_ACCEN0"
	.byte	0x2
	.uahalf	0x24d
	.uaword	0x1f9c
	.uleb128 0xb
	.byte	0x4
	.byte	0x2
	.uahalf	0x250
	.uaword	0x200a
	.uleb128 0xc
	.string	"U"
	.byte	0x2
	.uahalf	0x253
	.uaword	0x3c4
	.uleb128 0xc
	.string	"I"
	.byte	0x2
	.uahalf	0x255
	.uaword	0x1fc4
	.uleb128 0xc
	.string	"B"
	.byte	0x2
	.uahalf	0x257
	.uaword	0x41c
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CAN_ACCEN1"
	.byte	0x2
	.uahalf	0x258
	.uaword	0x1fe2
	.uleb128 0xb
	.byte	0x4
	.byte	0x2
	.uahalf	0x25b
	.uaword	0x2049
	.uleb128 0xc
	.string	"U"
	.byte	0x2
	.uahalf	0x25e
	.uaword	0x3c4
	.uleb128 0xc
	.string	"I"
	.byte	0x2
	.uahalf	0x260
	.uaword	0x1fc4
	.uleb128 0xc
	.string	"B"
	.byte	0x2
	.uahalf	0x262
	.uaword	0x4a0
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CAN_CLC"
	.byte	0x2
	.uahalf	0x263
	.uaword	0x2021
	.uleb128 0xb
	.byte	0x4
	.byte	0x2
	.uahalf	0x266
	.uaword	0x2085
	.uleb128 0xc
	.string	"U"
	.byte	0x2
	.uahalf	0x269
	.uaword	0x3c4
	.uleb128 0xc
	.string	"I"
	.byte	0x2
	.uahalf	0x26b
	.uaword	0x1fc4
	.uleb128 0xc
	.string	"B"
	.byte	0x2
	.uahalf	0x26d
	.uaword	0x50f
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CAN_FDR"
	.byte	0x2
	.uahalf	0x26e
	.uaword	0x205d
	.uleb128 0xb
	.byte	0x4
	.byte	0x2
	.uahalf	0x271
	.uaword	0x20c1
	.uleb128 0xc
	.string	"U"
	.byte	0x2
	.uahalf	0x274
	.uaword	0x3c4
	.uleb128 0xc
	.string	"I"
	.byte	0x2
	.uahalf	0x276
	.uaword	0x1fc4
	.uleb128 0xc
	.string	"B"
	.byte	0x2
	.uahalf	0x278
	.uaword	0x577
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CAN_ID"
	.byte	0x2
	.uahalf	0x279
	.uaword	0x2099
	.uleb128 0xb
	.byte	0x4
	.byte	0x2
	.uahalf	0x27c
	.uaword	0x20fc
	.uleb128 0xc
	.string	"U"
	.byte	0x2
	.uahalf	0x27f
	.uaword	0x3c4
	.uleb128 0xc
	.string	"I"
	.byte	0x2
	.uahalf	0x281
	.uaword	0x1fc4
	.uleb128 0xc
	.string	"B"
	.byte	0x2
	.uahalf	0x283
	.uaword	0x5dc
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CAN_KRST0"
	.byte	0x2
	.uahalf	0x284
	.uaword	0x20d4
	.uleb128 0xb
	.byte	0x4
	.byte	0x2
	.uahalf	0x287
	.uaword	0x213a
	.uleb128 0xc
	.string	"U"
	.byte	0x2
	.uahalf	0x28a
	.uaword	0x3c4
	.uleb128 0xc
	.string	"I"
	.byte	0x2
	.uahalf	0x28c
	.uaword	0x1fc4
	.uleb128 0xc
	.string	"B"
	.byte	0x2
	.uahalf	0x28e
	.uaword	0x631
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CAN_KRST1"
	.byte	0x2
	.uahalf	0x28f
	.uaword	0x2112
	.uleb128 0xb
	.byte	0x4
	.byte	0x2
	.uahalf	0x292
	.uaword	0x2178
	.uleb128 0xc
	.string	"U"
	.byte	0x2
	.uahalf	0x295
	.uaword	0x3c4
	.uleb128 0xc
	.string	"I"
	.byte	0x2
	.uahalf	0x297
	.uaword	0x1fc4
	.uleb128 0xc
	.string	"B"
	.byte	0x2
	.uahalf	0x299
	.uaword	0x688
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CAN_KRSTCLR"
	.byte	0x2
	.uahalf	0x29a
	.uaword	0x2150
	.uleb128 0xb
	.byte	0x4
	.byte	0x2
	.uahalf	0x29d
	.uaword	0x21b8
	.uleb128 0xc
	.string	"U"
	.byte	0x2
	.uahalf	0x2a0
	.uaword	0x3c4
	.uleb128 0xc
	.string	"I"
	.byte	0x2
	.uahalf	0x2a2
	.uaword	0x1fc4
	.uleb128 0xc
	.string	"B"
	.byte	0x2
	.uahalf	0x2a4
	.uaword	0x710
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CAN_LIST"
	.byte	0x2
	.uahalf	0x2a5
	.uaword	0x2190
	.uleb128 0xb
	.byte	0x4
	.byte	0x2
	.uahalf	0x2a8
	.uaword	0x21f5
	.uleb128 0xc
	.string	"U"
	.byte	0x2
	.uahalf	0x2ab
	.uaword	0x3c4
	.uleb128 0xc
	.string	"I"
	.byte	0x2
	.uahalf	0x2ad
	.uaword	0x1fc4
	.uleb128 0xc
	.string	"B"
	.byte	0x2
	.uahalf	0x2af
	.uaword	0x785
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CAN_MCR"
	.byte	0x2
	.uahalf	0x2b0
	.uaword	0x21cd
	.uleb128 0xb
	.byte	0x4
	.byte	0x2
	.uahalf	0x2b3
	.uaword	0x2231
	.uleb128 0xc
	.string	"U"
	.byte	0x2
	.uahalf	0x2b6
	.uaword	0x3c4
	.uleb128 0xc
	.string	"I"
	.byte	0x2
	.uahalf	0x2b8
	.uaword	0x1fc4
	.uleb128 0xc
	.string	"B"
	.byte	0x2
	.uahalf	0x2ba
	.uaword	0x85e
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CAN_MECR"
	.byte	0x2
	.uahalf	0x2bb
	.uaword	0x2209
	.uleb128 0xb
	.byte	0x4
	.byte	0x2
	.uahalf	0x2be
	.uaword	0x226e
	.uleb128 0xc
	.string	"U"
	.byte	0x2
	.uahalf	0x2c1
	.uaword	0x3c4
	.uleb128 0xc
	.string	"I"
	.byte	0x2
	.uahalf	0x2c3
	.uaword	0x1fc4
	.uleb128 0xc
	.string	"B"
	.byte	0x2
	.uahalf	0x2c5
	.uaword	0x8d6
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CAN_MESTAT"
	.byte	0x2
	.uahalf	0x2c6
	.uaword	0x2246
	.uleb128 0xb
	.byte	0x4
	.byte	0x2
	.uahalf	0x2c9
	.uaword	0x22ad
	.uleb128 0xc
	.string	"U"
	.byte	0x2
	.uahalf	0x2cc
	.uaword	0x3c4
	.uleb128 0xc
	.string	"I"
	.byte	0x2
	.uahalf	0x2ce
	.uaword	0x1fc4
	.uleb128 0xc
	.string	"B"
	.byte	0x2
	.uahalf	0x2d0
	.uaword	0x92a
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CAN_MITR"
	.byte	0x2
	.uahalf	0x2d1
	.uaword	0x2285
	.uleb128 0xb
	.byte	0x4
	.byte	0x2
	.uahalf	0x2d4
	.uaword	0x22ea
	.uleb128 0xc
	.string	"U"
	.byte	0x2
	.uahalf	0x2d7
	.uaword	0x3c4
	.uleb128 0xc
	.string	"I"
	.byte	0x2
	.uahalf	0x2d9
	.uaword	0x1fc4
	.uleb128 0xc
	.string	"B"
	.byte	0x2
	.uahalf	0x2db
	.uaword	0x98e
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CAN_MO_AMR"
	.byte	0x2
	.uahalf	0x2dc
	.uaword	0x22c2
	.uleb128 0xb
	.byte	0x4
	.byte	0x2
	.uahalf	0x2df
	.uaword	0x2329
	.uleb128 0xc
	.string	"U"
	.byte	0x2
	.uahalf	0x2e2
	.uaword	0x3c4
	.uleb128 0xc
	.string	"I"
	.byte	0x2
	.uahalf	0x2e4
	.uaword	0x1fc4
	.uleb128 0xc
	.string	"B"
	.byte	0x2
	.uahalf	0x2e6
	.uaword	0x9f2
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CAN_MO_AR"
	.byte	0x2
	.uahalf	0x2e7
	.uaword	0x2301
	.uleb128 0xb
	.byte	0x4
	.byte	0x2
	.uahalf	0x2ea
	.uaword	0x2367
	.uleb128 0xc
	.string	"U"
	.byte	0x2
	.uahalf	0x2ed
	.uaword	0x3c4
	.uleb128 0xc
	.string	"I"
	.byte	0x2
	.uahalf	0x2ef
	.uaword	0x1fc4
	.uleb128 0xc
	.string	"B"
	.byte	0x2
	.uahalf	0x2f1
	.uaword	0xc26
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CAN_MO_CTR"
	.byte	0x2
	.uahalf	0x2f2
	.uaword	0x233f
	.uleb128 0xb
	.byte	0x4
	.byte	0x2
	.uahalf	0x2f5
	.uaword	0x23a6
	.uleb128 0xc
	.string	"U"
	.byte	0x2
	.uahalf	0x2f8
	.uaword	0x3c4
	.uleb128 0xc
	.string	"I"
	.byte	0x2
	.uahalf	0x2fa
	.uaword	0x1fc4
	.uleb128 0xc
	.string	"B"
	.byte	0x2
	.uahalf	0x2fc
	.uaword	0xc9d
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CAN_MO_DATAH"
	.byte	0x2
	.uahalf	0x2fd
	.uaword	0x237e
	.uleb128 0xb
	.byte	0x4
	.byte	0x2
	.uahalf	0x300
	.uaword	0x23e7
	.uleb128 0xc
	.string	"U"
	.byte	0x2
	.uahalf	0x303
	.uaword	0x3c4
	.uleb128 0xc
	.string	"I"
	.byte	0x2
	.uahalf	0x305
	.uaword	0x1fc4
	.uleb128 0xc
	.string	"B"
	.byte	0x2
	.uahalf	0x307
	.uaword	0xd16
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CAN_MO_DATAL"
	.byte	0x2
	.uahalf	0x308
	.uaword	0x23bf
	.uleb128 0xb
	.byte	0x4
	.byte	0x2
	.uahalf	0x30b
	.uaword	0x2428
	.uleb128 0xc
	.string	"U"
	.byte	0x2
	.uahalf	0x30e
	.uaword	0x3c4
	.uleb128 0xc
	.string	"I"
	.byte	0x2
	.uahalf	0x310
	.uaword	0x1fc4
	.uleb128 0xc
	.string	"B"
	.byte	0x2
	.uahalf	0x312
	.uaword	0xd95
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CAN_MO_EDATA0"
	.byte	0x2
	.uahalf	0x313
	.uaword	0x2400
	.uleb128 0xb
	.byte	0x4
	.byte	0x2
	.uahalf	0x316
	.uaword	0x246a
	.uleb128 0xc
	.string	"U"
	.byte	0x2
	.uahalf	0x319
	.uaword	0x3c4
	.uleb128 0xc
	.string	"I"
	.byte	0x2
	.uahalf	0x31b
	.uaword	0x1fc4
	.uleb128 0xc
	.string	"B"
	.byte	0x2
	.uahalf	0x31d
	.uaword	0xe16
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CAN_MO_EDATA1"
	.byte	0x2
	.uahalf	0x31e
	.uaword	0x2442
	.uleb128 0xb
	.byte	0x4
	.byte	0x2
	.uahalf	0x321
	.uaword	0x24ac
	.uleb128 0xc
	.string	"U"
	.byte	0x2
	.uahalf	0x324
	.uaword	0x3c4
	.uleb128 0xc
	.string	"I"
	.byte	0x2
	.uahalf	0x326
	.uaword	0x1fc4
	.uleb128 0xc
	.string	"B"
	.byte	0x2
	.uahalf	0x328
	.uaword	0xe97
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CAN_MO_EDATA2"
	.byte	0x2
	.uahalf	0x329
	.uaword	0x2484
	.uleb128 0xb
	.byte	0x4
	.byte	0x2
	.uahalf	0x32c
	.uaword	0x24ee
	.uleb128 0xc
	.string	"U"
	.byte	0x2
	.uahalf	0x32f
	.uaword	0x3c4
	.uleb128 0xc
	.string	"I"
	.byte	0x2
	.uahalf	0x331
	.uaword	0x1fc4
	.uleb128 0xc
	.string	"B"
	.byte	0x2
	.uahalf	0x333
	.uaword	0xf18
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CAN_MO_EDATA3"
	.byte	0x2
	.uahalf	0x334
	.uaword	0x24c6
	.uleb128 0xb
	.byte	0x4
	.byte	0x2
	.uahalf	0x337
	.uaword	0x2530
	.uleb128 0xc
	.string	"U"
	.byte	0x2
	.uahalf	0x33a
	.uaword	0x3c4
	.uleb128 0xc
	.string	"I"
	.byte	0x2
	.uahalf	0x33c
	.uaword	0x1fc4
	.uleb128 0xc
	.string	"B"
	.byte	0x2
	.uahalf	0x33e
	.uaword	0xf99
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CAN_MO_EDATA4"
	.byte	0x2
	.uahalf	0x33f
	.uaword	0x2508
	.uleb128 0xb
	.byte	0x4
	.byte	0x2
	.uahalf	0x342
	.uaword	0x2572
	.uleb128 0xc
	.string	"U"
	.byte	0x2
	.uahalf	0x345
	.uaword	0x3c4
	.uleb128 0xc
	.string	"I"
	.byte	0x2
	.uahalf	0x347
	.uaword	0x1fc4
	.uleb128 0xc
	.string	"B"
	.byte	0x2
	.uahalf	0x349
	.uaword	0x101a
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CAN_MO_EDATA5"
	.byte	0x2
	.uahalf	0x34a
	.uaword	0x254a
	.uleb128 0xb
	.byte	0x4
	.byte	0x2
	.uahalf	0x34d
	.uaword	0x25b4
	.uleb128 0xc
	.string	"U"
	.byte	0x2
	.uahalf	0x350
	.uaword	0x3c4
	.uleb128 0xc
	.string	"I"
	.byte	0x2
	.uahalf	0x352
	.uaword	0x1fc4
	.uleb128 0xc
	.string	"B"
	.byte	0x2
	.uahalf	0x354
	.uaword	0x109b
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CAN_MO_EDATA6"
	.byte	0x2
	.uahalf	0x355
	.uaword	0x258c
	.uleb128 0xb
	.byte	0x4
	.byte	0x2
	.uahalf	0x358
	.uaword	0x25f6
	.uleb128 0xc
	.string	"U"
	.byte	0x2
	.uahalf	0x35b
	.uaword	0x3c4
	.uleb128 0xc
	.string	"I"
	.byte	0x2
	.uahalf	0x35d
	.uaword	0x1fc4
	.uleb128 0xc
	.string	"B"
	.byte	0x2
	.uahalf	0x35f
	.uaword	0x122b
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CAN_MO_FCR"
	.byte	0x2
	.uahalf	0x360
	.uaword	0x25ce
	.uleb128 0xb
	.byte	0x4
	.byte	0x2
	.uahalf	0x363
	.uaword	0x2635
	.uleb128 0xc
	.string	"U"
	.byte	0x2
	.uahalf	0x366
	.uaword	0x3c4
	.uleb128 0xc
	.string	"I"
	.byte	0x2
	.uahalf	0x368
	.uaword	0x1fc4
	.uleb128 0xc
	.string	"B"
	.byte	0x2
	.uahalf	0x36a
	.uaword	0x12a7
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CAN_MO_FGPR"
	.byte	0x2
	.uahalf	0x36b
	.uaword	0x260d
	.uleb128 0xb
	.byte	0x4
	.byte	0x2
	.uahalf	0x36e
	.uaword	0x2675
	.uleb128 0xc
	.string	"U"
	.byte	0x2
	.uahalf	0x371
	.uaword	0x3c4
	.uleb128 0xc
	.string	"I"
	.byte	0x2
	.uahalf	0x373
	.uaword	0x1fc4
	.uleb128 0xc
	.string	"B"
	.byte	0x2
	.uahalf	0x375
	.uaword	0x132a
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CAN_MO_IPR"
	.byte	0x2
	.uahalf	0x376
	.uaword	0x264d
	.uleb128 0xb
	.byte	0x4
	.byte	0x2
	.uahalf	0x379
	.uaword	0x26b4
	.uleb128 0xc
	.string	"U"
	.byte	0x2
	.uahalf	0x37c
	.uaword	0x3c4
	.uleb128 0xc
	.string	"I"
	.byte	0x2
	.uahalf	0x37e
	.uaword	0x1fc4
	.uleb128 0xc
	.string	"B"
	.byte	0x2
	.uahalf	0x380
	.uaword	0x1472
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CAN_MO_STAT"
	.byte	0x2
	.uahalf	0x381
	.uaword	0x268c
	.uleb128 0xb
	.byte	0x4
	.byte	0x2
	.uahalf	0x384
	.uaword	0x26f4
	.uleb128 0xc
	.string	"U"
	.byte	0x2
	.uahalf	0x387
	.uaword	0x3c4
	.uleb128 0xc
	.string	"I"
	.byte	0x2
	.uahalf	0x389
	.uaword	0x1fc4
	.uleb128 0xc
	.string	"B"
	.byte	0x2
	.uahalf	0x38b
	.uaword	0x14ce
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CAN_MSID"
	.byte	0x2
	.uahalf	0x38c
	.uaword	0x26cc
	.uleb128 0xb
	.byte	0x4
	.byte	0x2
	.uahalf	0x38f
	.uaword	0x2731
	.uleb128 0xc
	.string	"U"
	.byte	0x2
	.uahalf	0x392
	.uaword	0x3c4
	.uleb128 0xc
	.string	"I"
	.byte	0x2
	.uahalf	0x394
	.uaword	0x1fc4
	.uleb128 0xc
	.string	"B"
	.byte	0x2
	.uahalf	0x396
	.uaword	0x1517
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CAN_MSIMASK"
	.byte	0x2
	.uahalf	0x397
	.uaword	0x2709
	.uleb128 0xb
	.byte	0x4
	.byte	0x2
	.uahalf	0x39a
	.uaword	0x2771
	.uleb128 0xc
	.string	"U"
	.byte	0x2
	.uahalf	0x39d
	.uaword	0x3c4
	.uleb128 0xc
	.string	"I"
	.byte	0x2
	.uahalf	0x39f
	.uaword	0x1fc4
	.uleb128 0xc
	.string	"B"
	.byte	0x2
	.uahalf	0x3a1
	.uaword	0x1562
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CAN_MSPND"
	.byte	0x2
	.uahalf	0x3a2
	.uaword	0x2749
	.uleb128 0xb
	.byte	0x4
	.byte	0x2
	.uahalf	0x3a5
	.uaword	0x27af
	.uleb128 0xc
	.string	"U"
	.byte	0x2
	.uahalf	0x3a8
	.uaword	0x3c4
	.uleb128 0xc
	.string	"I"
	.byte	0x2
	.uahalf	0x3aa
	.uaword	0x1fc4
	.uleb128 0xc
	.string	"B"
	.byte	0x2
	.uahalf	0x3ac
	.uaword	0x1632
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CAN_N_BTEVR"
	.byte	0x2
	.uahalf	0x3ad
	.uaword	0x2787
	.uleb128 0xb
	.byte	0x4
	.byte	0x2
	.uahalf	0x3b0
	.uaword	0x27ef
	.uleb128 0xc
	.string	"U"
	.byte	0x2
	.uahalf	0x3b3
	.uaword	0x3c4
	.uleb128 0xc
	.string	"I"
	.byte	0x2
	.uahalf	0x3b5
	.uaword	0x1fc4
	.uleb128 0xc
	.string	"B"
	.byte	0x2
	.uahalf	0x3b7
	.uaword	0x16d2
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CAN_N_BTR"
	.byte	0x2
	.uahalf	0x3b8
	.uaword	0x27c7
	.uleb128 0xb
	.byte	0x4
	.byte	0x2
	.uahalf	0x3bb
	.uaword	0x282d
	.uleb128 0xc
	.string	"U"
	.byte	0x2
	.uahalf	0x3be
	.uaword	0x3c4
	.uleb128 0xc
	.string	"I"
	.byte	0x2
	.uahalf	0x3c0
	.uaword	0x1fc4
	.uleb128 0xc
	.string	"B"
	.byte	0x2
	.uahalf	0x3c2
	.uaword	0x17c8
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CAN_N_CR"
	.byte	0x2
	.uahalf	0x3c3
	.uaword	0x2805
	.uleb128 0xb
	.byte	0x4
	.byte	0x2
	.uahalf	0x3c6
	.uaword	0x286a
	.uleb128 0xc
	.string	"U"
	.byte	0x2
	.uahalf	0x3c9
	.uaword	0x3c4
	.uleb128 0xc
	.string	"I"
	.byte	0x2
	.uahalf	0x3cb
	.uaword	0x1fc4
	.uleb128 0xc
	.string	"B"
	.byte	0x2
	.uahalf	0x3cd
	.uaword	0x1868
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CAN_N_ECNT"
	.byte	0x2
	.uahalf	0x3ce
	.uaword	0x2842
	.uleb128 0xb
	.byte	0x4
	.byte	0x2
	.uahalf	0x3d1
	.uaword	0x28a9
	.uleb128 0xc
	.string	"U"
	.byte	0x2
	.uahalf	0x3d4
	.uaword	0x3c4
	.uleb128 0xc
	.string	"I"
	.byte	0x2
	.uahalf	0x3d6
	.uaword	0x1fc4
	.uleb128 0xc
	.string	"B"
	.byte	0x2
	.uahalf	0x3d8
	.uaword	0x18fb
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CAN_N_FBTR"
	.byte	0x2
	.uahalf	0x3d9
	.uaword	0x2881
	.uleb128 0xb
	.byte	0x4
	.byte	0x2
	.uahalf	0x3dc
	.uaword	0x28e8
	.uleb128 0xc
	.string	"U"
	.byte	0x2
	.uahalf	0x3df
	.uaword	0x3c4
	.uleb128 0xc
	.string	"I"
	.byte	0x2
	.uahalf	0x3e1
	.uaword	0x1fc4
	.uleb128 0xc
	.string	"B"
	.byte	0x2
	.uahalf	0x3e3
	.uaword	0x19ad
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CAN_N_FCR"
	.byte	0x2
	.uahalf	0x3e4
	.uaword	0x28c0
	.uleb128 0xb
	.byte	0x4
	.byte	0x2
	.uahalf	0x3e7
	.uaword	0x2926
	.uleb128 0xc
	.string	"U"
	.byte	0x2
	.uahalf	0x3ea
	.uaword	0x3c4
	.uleb128 0xc
	.string	"I"
	.byte	0x2
	.uahalf	0x3ec
	.uaword	0x1fc4
	.uleb128 0xc
	.string	"B"
	.byte	0x2
	.uahalf	0x3ee
	.uaword	0x1a52
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CAN_N_IPR"
	.byte	0x2
	.uahalf	0x3ef
	.uaword	0x28fe
	.uleb128 0xb
	.byte	0x4
	.byte	0x2
	.uahalf	0x3f2
	.uaword	0x2964
	.uleb128 0xc
	.string	"U"
	.byte	0x2
	.uahalf	0x3f5
	.uaword	0x3c4
	.uleb128 0xc
	.string	"I"
	.byte	0x2
	.uahalf	0x3f7
	.uaword	0x1fc4
	.uleb128 0xc
	.string	"B"
	.byte	0x2
	.uahalf	0x3f9
	.uaword	0x1adb
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CAN_N_PCR"
	.byte	0x2
	.uahalf	0x3fa
	.uaword	0x293c
	.uleb128 0xb
	.byte	0x4
	.byte	0x2
	.uahalf	0x3fd
	.uaword	0x29a2
	.uleb128 0xc
	.string	"U"
	.byte	0x2
	.uahalf	0x400
	.uaword	0x3c4
	.uleb128 0xc
	.string	"I"
	.byte	0x2
	.uahalf	0x402
	.uaword	0x1fc4
	.uleb128 0xc
	.string	"B"
	.byte	0x2
	.uahalf	0x404
	.uaword	0x1bde
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CAN_N_SR"
	.byte	0x2
	.uahalf	0x405
	.uaword	0x297a
	.uleb128 0xb
	.byte	0x4
	.byte	0x2
	.uahalf	0x408
	.uaword	0x29df
	.uleb128 0xc
	.string	"U"
	.byte	0x2
	.uahalf	0x40b
	.uaword	0x3c4
	.uleb128 0xc
	.string	"I"
	.byte	0x2
	.uahalf	0x40d
	.uaword	0x1fc4
	.uleb128 0xc
	.string	"B"
	.byte	0x2
	.uahalf	0x40f
	.uaword	0x1c6c
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CAN_N_TCCR"
	.byte	0x2
	.uahalf	0x410
	.uaword	0x29b7
	.uleb128 0xb
	.byte	0x4
	.byte	0x2
	.uahalf	0x413
	.uaword	0x2a1e
	.uleb128 0xc
	.string	"U"
	.byte	0x2
	.uahalf	0x416
	.uaword	0x3c4
	.uleb128 0xc
	.string	"I"
	.byte	0x2
	.uahalf	0x418
	.uaword	0x1fc4
	.uleb128 0xc
	.string	"B"
	.byte	0x2
	.uahalf	0x41a
	.uaword	0x1d10
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CAN_N_TDCR"
	.byte	0x2
	.uahalf	0x41b
	.uaword	0x29f6
	.uleb128 0xb
	.byte	0x4
	.byte	0x2
	.uahalf	0x41e
	.uaword	0x2a5d
	.uleb128 0xc
	.string	"U"
	.byte	0x2
	.uahalf	0x421
	.uaword	0x3c4
	.uleb128 0xc
	.string	"I"
	.byte	0x2
	.uahalf	0x423
	.uaword	0x1fc4
	.uleb128 0xc
	.string	"B"
	.byte	0x2
	.uahalf	0x425
	.uaword	0x1d9e
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CAN_N_TRTR"
	.byte	0x2
	.uahalf	0x426
	.uaword	0x2a35
	.uleb128 0xb
	.byte	0x4
	.byte	0x2
	.uahalf	0x429
	.uaword	0x2a9c
	.uleb128 0xc
	.string	"U"
	.byte	0x2
	.uahalf	0x42c
	.uaword	0x3c4
	.uleb128 0xc
	.string	"I"
	.byte	0x2
	.uahalf	0x42e
	.uaword	0x1fc4
	.uleb128 0xc
	.string	"B"
	.byte	0x2
	.uahalf	0x430
	.uaword	0x1e1e
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CAN_N_TTTR"
	.byte	0x2
	.uahalf	0x431
	.uaword	0x2a74
	.uleb128 0xb
	.byte	0x4
	.byte	0x2
	.uahalf	0x434
	.uaword	0x2adb
	.uleb128 0xc
	.string	"U"
	.byte	0x2
	.uahalf	0x437
	.uaword	0x3c4
	.uleb128 0xc
	.string	"I"
	.byte	0x2
	.uahalf	0x439
	.uaword	0x1fc4
	.uleb128 0xc
	.string	"B"
	.byte	0x2
	.uahalf	0x43b
	.uaword	0x1edc
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CAN_OCS"
	.byte	0x2
	.uahalf	0x43c
	.uaword	0x2ab3
	.uleb128 0xb
	.byte	0x4
	.byte	0x2
	.uahalf	0x43f
	.uaword	0x2b17
	.uleb128 0xc
	.string	"U"
	.byte	0x2
	.uahalf	0x442
	.uaword	0x3c4
	.uleb128 0xc
	.string	"I"
	.byte	0x2
	.uahalf	0x444
	.uaword	0x1fc4
	.uleb128 0xc
	.string	"B"
	.byte	0x2
	.uahalf	0x446
	.uaword	0x1f80
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CAN_PANCTR"
	.byte	0x2
	.uahalf	0x447
	.uaword	0x2aef
	.uleb128 0xb
	.byte	0x4
	.byte	0x2
	.uahalf	0x454
	.uaword	0x2b53
	.uleb128 0xc
	.string	"EDATA0"
	.byte	0x2
	.uahalf	0x456
	.uaword	0x2428
	.uleb128 0xc
	.string	"FCR"
	.byte	0x2
	.uahalf	0x457
	.uaword	0x25f6
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0x2
	.uahalf	0x45a
	.uaword	0x2b79
	.uleb128 0xc
	.string	"EDATA1"
	.byte	0x2
	.uahalf	0x45c
	.uaword	0x246a
	.uleb128 0xc
	.string	"FGPR"
	.byte	0x2
	.uahalf	0x45d
	.uaword	0x2635
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0x2
	.uahalf	0x460
	.uaword	0x2b9e
	.uleb128 0xc
	.string	"EDATA2"
	.byte	0x2
	.uahalf	0x462
	.uaword	0x24ac
	.uleb128 0xc
	.string	"IPR"
	.byte	0x2
	.uahalf	0x463
	.uaword	0x2675
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0x2
	.uahalf	0x466
	.uaword	0x2bc3
	.uleb128 0xc
	.string	"AMR"
	.byte	0x2
	.uahalf	0x468
	.uaword	0x22ea
	.uleb128 0xc
	.string	"EDATA3"
	.byte	0x2
	.uahalf	0x469
	.uaword	0x24ee
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0x2
	.uahalf	0x46c
	.uaword	0x2bea
	.uleb128 0xc
	.string	"DATAL"
	.byte	0x2
	.uahalf	0x46e
	.uaword	0x23e7
	.uleb128 0xc
	.string	"EDATA4"
	.byte	0x2
	.uahalf	0x46f
	.uaword	0x2530
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0x2
	.uahalf	0x472
	.uaword	0x2c11
	.uleb128 0xc
	.string	"DATAH"
	.byte	0x2
	.uahalf	0x474
	.uaword	0x23a6
	.uleb128 0xc
	.string	"EDATA5"
	.byte	0x2
	.uahalf	0x475
	.uaword	0x2572
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0x2
	.uahalf	0x478
	.uaword	0x2c35
	.uleb128 0xc
	.string	"AR"
	.byte	0x2
	.uahalf	0x47a
	.uaword	0x2329
	.uleb128 0xc
	.string	"EDATA6"
	.byte	0x2
	.uahalf	0x47b
	.uaword	0x25b4
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0x2
	.uahalf	0x47e
	.uaword	0x2c58
	.uleb128 0xc
	.string	"CTR"
	.byte	0x2
	.uahalf	0x480
	.uaword	0x2367
	.uleb128 0xc
	.string	"STAT"
	.byte	0x2
	.uahalf	0x481
	.uaword	0x26b4
	.byte	0
	.uleb128 0x7
	.string	"_Ifx_CAN_MO"
	.byte	0x20
	.byte	0x2
	.uahalf	0x452
	.uaword	0x2c9e
	.uleb128 0xd
	.uaword	0x2b2e
	.byte	0
	.uleb128 0xd
	.uaword	0x2b53
	.byte	0x4
	.uleb128 0xd
	.uaword	0x2b79
	.byte	0x8
	.uleb128 0xd
	.uaword	0x2b9e
	.byte	0xc
	.uleb128 0xd
	.uaword	0x2bc3
	.byte	0x10
	.uleb128 0xd
	.uaword	0x2bea
	.byte	0x14
	.uleb128 0xd
	.uaword	0x2c11
	.byte	0x18
	.uleb128 0xd
	.uaword	0x2c35
	.byte	0x1c
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CAN_MO"
	.byte	0x2
	.uahalf	0x483
	.uaword	0x2cb1
	.uleb128 0xe
	.uaword	0x2c58
	.uleb128 0xb
	.byte	0x4
	.byte	0x2
	.uahalf	0x48c
	.uaword	0x2cda
	.uleb128 0xc
	.string	"BTEVR"
	.byte	0x2
	.uahalf	0x48e
	.uaword	0x27af
	.uleb128 0xc
	.string	"BTR"
	.byte	0x2
	.uahalf	0x48f
	.uaword	0x27ef
	.byte	0
	.uleb128 0xf
	.string	"_Ifx_CAN_N"
	.uahalf	0x100
	.byte	0x2
	.uahalf	0x486
	.uaword	0x2dca
	.uleb128 0x10
	.string	"CR"
	.byte	0x2
	.uahalf	0x488
	.uaword	0x282d
	.byte	0
	.uleb128 0x10
	.string	"SR"
	.byte	0x2
	.uahalf	0x489
	.uaword	0x29a2
	.byte	0x4
	.uleb128 0x10
	.string	"IPR"
	.byte	0x2
	.uahalf	0x48a
	.uaword	0x2926
	.byte	0x8
	.uleb128 0x10
	.string	"PCR"
	.byte	0x2
	.uahalf	0x48b
	.uaword	0x2964
	.byte	0xc
	.uleb128 0xd
	.uaword	0x2cb6
	.byte	0x10
	.uleb128 0x10
	.string	"ECNT"
	.byte	0x2
	.uahalf	0x492
	.uaword	0x286a
	.byte	0x14
	.uleb128 0x10
	.string	"FCR"
	.byte	0x2
	.uahalf	0x493
	.uaword	0x28e8
	.byte	0x18
	.uleb128 0x10
	.string	"TCCR"
	.byte	0x2
	.uahalf	0x494
	.uaword	0x29df
	.byte	0x1c
	.uleb128 0x10
	.string	"TRTR"
	.byte	0x2
	.uahalf	0x495
	.uaword	0x2a5d
	.byte	0x20
	.uleb128 0x10
	.string	"TATTR"
	.byte	0x2
	.uahalf	0x496
	.uaword	0x2a9c
	.byte	0x24
	.uleb128 0x10
	.string	"TBTTR"
	.byte	0x2
	.uahalf	0x497
	.uaword	0x2a9c
	.byte	0x28
	.uleb128 0x10
	.string	"TCTTR"
	.byte	0x2
	.uahalf	0x498
	.uaword	0x2a9c
	.byte	0x2c
	.uleb128 0x11
	.uaword	.LASF11
	.byte	0x2
	.uahalf	0x499
	.uaword	0x2dca
	.byte	0x30
	.uleb128 0x10
	.string	"FBTR"
	.byte	0x2
	.uahalf	0x49a
	.uaword	0x28a9
	.byte	0x38
	.uleb128 0x10
	.string	"TDCR"
	.byte	0x2
	.uahalf	0x49b
	.uaword	0x2a1e
	.byte	0x3c
	.uleb128 0x10
	.string	"reserved_40"
	.byte	0x2
	.uahalf	0x49c
	.uaword	0x2df7
	.byte	0x40
	.byte	0
	.uleb128 0x12
	.uaword	0x2de6
	.uaword	0x2dda
	.uleb128 0x13
	.uaword	0x2dda
	.byte	0x7
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x12
	.uaword	0x2de6
	.uaword	0x2e07
	.uleb128 0x13
	.uaword	0x2dda
	.byte	0xbf
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CAN_N"
	.byte	0x2
	.uahalf	0x49d
	.uaword	0x2e19
	.uleb128 0xe
	.uaword	0x2cda
	.uleb128 0xf
	.string	"_Ifx_CAN"
	.uahalf	0x4000
	.byte	0x2
	.uahalf	0x4aa
	.uaword	0x2fe0
	.uleb128 0x10
	.string	"CLC"
	.byte	0x2
	.uahalf	0x4ac
	.uaword	0x2049
	.byte	0
	.uleb128 0x11
	.uaword	.LASF2
	.byte	0x2
	.uahalf	0x4ad
	.uaword	0x2fe0
	.byte	0x4
	.uleb128 0x10
	.string	"ID"
	.byte	0x2
	.uahalf	0x4ae
	.uaword	0x20c1
	.byte	0x8
	.uleb128 0x10
	.string	"FDR"
	.byte	0x2
	.uahalf	0x4af
	.uaword	0x2085
	.byte	0xc
	.uleb128 0x11
	.uaword	.LASF3
	.byte	0x2
	.uahalf	0x4b0
	.uaword	0x2ff0
	.byte	0x10
	.uleb128 0x10
	.string	"OCS"
	.byte	0x2
	.uahalf	0x4b1
	.uaword	0x2adb
	.byte	0xe8
	.uleb128 0x10
	.string	"KRSTCLR"
	.byte	0x2
	.uahalf	0x4b2
	.uaword	0x2178
	.byte	0xec
	.uleb128 0x10
	.string	"KRST1"
	.byte	0x2
	.uahalf	0x4b3
	.uaword	0x213a
	.byte	0xf0
	.uleb128 0x10
	.string	"KRST0"
	.byte	0x2
	.uahalf	0x4b4
	.uaword	0x20fc
	.byte	0xf4
	.uleb128 0x10
	.string	"ACCEN1"
	.byte	0x2
	.uahalf	0x4b5
	.uaword	0x200a
	.byte	0xf8
	.uleb128 0x10
	.string	"ACCEN0"
	.byte	0x2
	.uahalf	0x4b6
	.uaword	0x1fcb
	.byte	0xfc
	.uleb128 0x14
	.string	"LIST"
	.byte	0x2
	.uahalf	0x4b7
	.uaword	0x3000
	.uahalf	0x100
	.uleb128 0x14
	.string	"MSPND"
	.byte	0x2
	.uahalf	0x4b8
	.uaword	0x3010
	.uahalf	0x140
	.uleb128 0x14
	.string	"reserved_160"
	.byte	0x2
	.uahalf	0x4b9
	.uaword	0x3020
	.uahalf	0x160
	.uleb128 0x14
	.string	"MSID"
	.byte	0x2
	.uahalf	0x4ba
	.uaword	0x3030
	.uahalf	0x180
	.uleb128 0x14
	.string	"reserved_1A0"
	.byte	0x2
	.uahalf	0x4bb
	.uaword	0x3020
	.uahalf	0x1a0
	.uleb128 0x14
	.string	"MSIMASK"
	.byte	0x2
	.uahalf	0x4bc
	.uaword	0x2731
	.uahalf	0x1c0
	.uleb128 0x14
	.string	"PANCTR"
	.byte	0x2
	.uahalf	0x4bd
	.uaword	0x2b17
	.uahalf	0x1c4
	.uleb128 0x14
	.string	"MCR"
	.byte	0x2
	.uahalf	0x4be
	.uaword	0x21f5
	.uahalf	0x1c8
	.uleb128 0x14
	.string	"MITR"
	.byte	0x2
	.uahalf	0x4bf
	.uaword	0x22ad
	.uahalf	0x1cc
	.uleb128 0x14
	.string	"MECR"
	.byte	0x2
	.uahalf	0x4c0
	.uaword	0x2231
	.uahalf	0x1d0
	.uleb128 0x14
	.string	"MESTAT"
	.byte	0x2
	.uahalf	0x4c1
	.uaword	0x226e
	.uahalf	0x1d4
	.uleb128 0x14
	.string	"reserved_1D8"
	.byte	0x2
	.uahalf	0x4c2
	.uaword	0x3040
	.uahalf	0x1d8
	.uleb128 0x14
	.string	"N"
	.byte	0x2
	.uahalf	0x4c3
	.uaword	0x3060
	.uahalf	0x200
	.uleb128 0x15
	.uaword	.LASF20
	.byte	0x2
	.uahalf	0x4c4
	.uaword	0x3065
	.uahalf	0x600
	.uleb128 0x14
	.string	"MO"
	.byte	0x2
	.uahalf	0x4c5
	.uaword	0x3086
	.uahalf	0x1000
	.uleb128 0x14
	.string	"reserved_3000"
	.byte	0x2
	.uahalf	0x4c6
	.uaword	0x308b
	.uahalf	0x3000
	.byte	0
	.uleb128 0x12
	.uaword	0x2de6
	.uaword	0x2ff0
	.uleb128 0x13
	.uaword	0x2dda
	.byte	0x3
	.byte	0
	.uleb128 0x12
	.uaword	0x2de6
	.uaword	0x3000
	.uleb128 0x13
	.uaword	0x2dda
	.byte	0xd7
	.byte	0
	.uleb128 0x12
	.uaword	0x21b8
	.uaword	0x3010
	.uleb128 0x13
	.uaword	0x2dda
	.byte	0xf
	.byte	0
	.uleb128 0x12
	.uaword	0x2771
	.uaword	0x3020
	.uleb128 0x13
	.uaword	0x2dda
	.byte	0x7
	.byte	0
	.uleb128 0x12
	.uaword	0x2de6
	.uaword	0x3030
	.uleb128 0x13
	.uaword	0x2dda
	.byte	0x1f
	.byte	0
	.uleb128 0x12
	.uaword	0x26f4
	.uaword	0x3040
	.uleb128 0x13
	.uaword	0x2dda
	.byte	0x7
	.byte	0
	.uleb128 0x12
	.uaword	0x2de6
	.uaword	0x3050
	.uleb128 0x13
	.uaword	0x2dda
	.byte	0x27
	.byte	0
	.uleb128 0x12
	.uaword	0x2e07
	.uaword	0x3060
	.uleb128 0x13
	.uaword	0x2dda
	.byte	0x3
	.byte	0
	.uleb128 0xe
	.uaword	0x3050
	.uleb128 0x12
	.uaword	0x2de6
	.uaword	0x3076
	.uleb128 0x16
	.uaword	0x2dda
	.uahalf	0x9ff
	.byte	0
	.uleb128 0x12
	.uaword	0x2c9e
	.uaword	0x3086
	.uleb128 0x13
	.uaword	0x2dda
	.byte	0xff
	.byte	0
	.uleb128 0xe
	.uaword	0x3076
	.uleb128 0x12
	.uaword	0x2de6
	.uaword	0x309c
	.uleb128 0x16
	.uaword	0x2dda
	.uahalf	0xfff
	.byte	0
	.uleb128 0x9
	.string	"Ifx_CAN"
	.byte	0x2
	.uahalf	0x4c7
	.uaword	0x30ac
	.uleb128 0xe
	.uaword	0x2e1e
	.uleb128 0x2
	.string	"_Ifx_SRC_SRCR_Bits"
	.byte	0x4
	.byte	0x3
	.byte	0x2d
	.uaword	0x31c7
	.uleb128 0x3
	.string	"SRPN"
	.byte	0x3
	.byte	0x2f
	.uaword	0x3c4
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.uaword	.LASF21
	.byte	0x3
	.byte	0x30
	.uaword	0x3c4
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0
	.uleb128 0x3
	.string	"SRE"
	.byte	0x3
	.byte	0x31
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x3
	.string	"TOS"
	.byte	0x3
	.byte	0x32
	.uaword	0x3c4
	.byte	0x4
	.byte	0x2
	.byte	0x13
	.byte	0
	.uleb128 0x3
	.string	"reserved_13"
	.byte	0x3
	.byte	0x33
	.uaword	0x3c4
	.byte	0x4
	.byte	0x3
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.string	"ECC"
	.byte	0x3
	.byte	0x34
	.uaword	0x3c4
	.byte	0x4
	.byte	0x6
	.byte	0xa
	.byte	0
	.uleb128 0x3
	.string	"reserved_22"
	.byte	0x3
	.byte	0x35
	.uaword	0x3c4
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.string	"SRR"
	.byte	0x3
	.byte	0x36
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.string	"CLRR"
	.byte	0x3
	.byte	0x37
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x3
	.string	"SETR"
	.byte	0x3
	.byte	0x38
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.string	"IOV"
	.byte	0x3
	.byte	0x39
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.string	"IOVCLR"
	.byte	0x3
	.byte	0x3a
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.string	"SWS"
	.byte	0x3
	.byte	0x3b
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.string	"SWSCLR"
	.byte	0x3
	.byte	0x3c
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.uaword	.LASF9
	.byte	0x3
	.byte	0x3d
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SRC_SRCR_Bits"
	.byte	0x3
	.byte	0x3e
	.uaword	0x30b1
	.uleb128 0x17
	.byte	0x4
	.byte	0x3
	.byte	0x46
	.uaword	0x3204
	.uleb128 0x18
	.string	"U"
	.byte	0x3
	.byte	0x49
	.uaword	0x3c4
	.uleb128 0x18
	.string	"I"
	.byte	0x3
	.byte	0x4b
	.uaword	0x1fc4
	.uleb128 0x18
	.string	"B"
	.byte	0x3
	.byte	0x4d
	.uaword	0x31c7
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SRC_SRCR"
	.byte	0x3
	.byte	0x4e
	.uaword	0x31e0
	.uleb128 0x2
	.string	"_Ifx_SRC_AGBT"
	.byte	0x4
	.byte	0x3
	.byte	0x59
	.uaword	0x323a
	.uleb128 0x19
	.string	"SR"
	.byte	0x3
	.byte	0x5b
	.uaword	0x3204
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SRC_AGBT"
	.byte	0x3
	.byte	0x5c
	.uaword	0x324e
	.uleb128 0xe
	.uaword	0x3218
	.uleb128 0x2
	.string	"_Ifx_SRC_ASCLIN"
	.byte	0xc
	.byte	0x3
	.byte	0x5f
	.uaword	0x328e
	.uleb128 0x19
	.string	"TX"
	.byte	0x3
	.byte	0x61
	.uaword	0x3204
	.byte	0
	.uleb128 0x19
	.string	"RX"
	.byte	0x3
	.byte	0x62
	.uaword	0x3204
	.byte	0x4
	.uleb128 0x19
	.string	"ERR"
	.byte	0x3
	.byte	0x63
	.uaword	0x3204
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SRC_ASCLIN"
	.byte	0x3
	.byte	0x64
	.uaword	0x32a4
	.uleb128 0xe
	.uaword	0x3253
	.uleb128 0x2
	.string	"_Ifx_SRC_BCUSPB"
	.byte	0x4
	.byte	0x3
	.byte	0x67
	.uaword	0x32d0
	.uleb128 0x19
	.string	"SBSRC"
	.byte	0x3
	.byte	0x69
	.uaword	0x3204
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SRC_BCUSPB"
	.byte	0x3
	.byte	0x6a
	.uaword	0x32e6
	.uleb128 0xe
	.uaword	0x32a9
	.uleb128 0x2
	.string	"_Ifx_SRC_CAN"
	.byte	0x40
	.byte	0x3
	.byte	0x6d
	.uaword	0x330d
	.uleb128 0x19
	.string	"INT"
	.byte	0x3
	.byte	0x6f
	.uaword	0x330d
	.byte	0
	.byte	0
	.uleb128 0x12
	.uaword	0x3204
	.uaword	0x331d
	.uleb128 0x13
	.uaword	0x2dda
	.byte	0xf
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SRC_CAN"
	.byte	0x3
	.byte	0x70
	.uaword	0x3330
	.uleb128 0xe
	.uaword	0x32eb
	.uleb128 0x2
	.string	"_Ifx_SRC_CCU6"
	.byte	0x10
	.byte	0x3
	.byte	0x73
	.uaword	0x337c
	.uleb128 0x19
	.string	"SR0"
	.byte	0x3
	.byte	0x75
	.uaword	0x3204
	.byte	0
	.uleb128 0x19
	.string	"SR1"
	.byte	0x3
	.byte	0x76
	.uaword	0x3204
	.byte	0x4
	.uleb128 0x19
	.string	"SR2"
	.byte	0x3
	.byte	0x77
	.uaword	0x3204
	.byte	0x8
	.uleb128 0x19
	.string	"SR3"
	.byte	0x3
	.byte	0x78
	.uaword	0x3204
	.byte	0xc
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SRC_CCU6"
	.byte	0x3
	.byte	0x79
	.uaword	0x3390
	.uleb128 0xe
	.uaword	0x3335
	.uleb128 0x2
	.string	"_Ifx_SRC_CERBERUS"
	.byte	0x8
	.byte	0x3
	.byte	0x7c
	.uaword	0x33bb
	.uleb128 0x19
	.string	"SR"
	.byte	0x3
	.byte	0x7e
	.uaword	0x33bb
	.byte	0
	.byte	0
	.uleb128 0x12
	.uaword	0x3204
	.uaword	0x33cb
	.uleb128 0x13
	.uaword	0x2dda
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SRC_CERBERUS"
	.byte	0x3
	.byte	0x7f
	.uaword	0x33e3
	.uleb128 0xe
	.uaword	0x3395
	.uleb128 0x2
	.string	"_Ifx_SRC_CIF"
	.byte	0x10
	.byte	0x3
	.byte	0x82
	.uaword	0x3430
	.uleb128 0x19
	.string	"MI"
	.byte	0x3
	.byte	0x84
	.uaword	0x3204
	.byte	0
	.uleb128 0x19
	.string	"MIEP"
	.byte	0x3
	.byte	0x85
	.uaword	0x3204
	.byte	0x4
	.uleb128 0x19
	.string	"ISP"
	.byte	0x3
	.byte	0x86
	.uaword	0x3204
	.byte	0x8
	.uleb128 0x19
	.string	"MJPEG"
	.byte	0x3
	.byte	0x87
	.uaword	0x3204
	.byte	0xc
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SRC_CIF"
	.byte	0x3
	.byte	0x88
	.uaword	0x3443
	.uleb128 0xe
	.uaword	0x33e8
	.uleb128 0x2
	.string	"_Ifx_SRC_CPU"
	.byte	0x4
	.byte	0x3
	.byte	0x8b
	.uaword	0x346c
	.uleb128 0x19
	.string	"SBSRC"
	.byte	0x3
	.byte	0x8d
	.uaword	0x3204
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SRC_CPU"
	.byte	0x3
	.byte	0x8e
	.uaword	0x347f
	.uleb128 0xe
	.uaword	0x3448
	.uleb128 0x2
	.string	"_Ifx_SRC_DAM"
	.byte	0x18
	.byte	0x3
	.byte	0x91
	.uaword	0x34a5
	.uleb128 0x19
	.string	"SR"
	.byte	0x3
	.byte	0x93
	.uaword	0x34a5
	.byte	0
	.byte	0
	.uleb128 0x12
	.uaword	0x3204
	.uaword	0x34b5
	.uleb128 0x13
	.uaword	0x2dda
	.byte	0x5
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SRC_DAM"
	.byte	0x3
	.byte	0x94
	.uaword	0x34c8
	.uleb128 0xe
	.uaword	0x3484
	.uleb128 0x1a
	.string	"_Ifx_SRC_DMA"
	.uahalf	0x110
	.byte	0x3
	.byte	0x97
	.uaword	0x3507
	.uleb128 0x19
	.string	"ERR"
	.byte	0x3
	.byte	0x99
	.uaword	0x3204
	.byte	0
	.uleb128 0x1b
	.uaword	.LASF2
	.byte	0x3
	.byte	0x9a
	.uaword	0x3507
	.byte	0x4
	.uleb128 0x19
	.string	"CH"
	.byte	0x3
	.byte	0x9b
	.uaword	0x3517
	.byte	0x10
	.byte	0
	.uleb128 0x12
	.uaword	0x2de6
	.uaword	0x3517
	.uleb128 0x13
	.uaword	0x2dda
	.byte	0xb
	.byte	0
	.uleb128 0x12
	.uaword	0x3204
	.uaword	0x3527
	.uleb128 0x13
	.uaword	0x2dda
	.byte	0x3f
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SRC_DMA"
	.byte	0x3
	.byte	0x9c
	.uaword	0x353a
	.uleb128 0xe
	.uaword	0x34cd
	.uleb128 0x2
	.string	"_Ifx_SRC_DSADC"
	.byte	0x8
	.byte	0x3
	.byte	0x9f
	.uaword	0x356f
	.uleb128 0x19
	.string	"SRM"
	.byte	0x3
	.byte	0xa1
	.uaword	0x3204
	.byte	0
	.uleb128 0x19
	.string	"SRA"
	.byte	0x3
	.byte	0xa2
	.uaword	0x3204
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SRC_DSADC"
	.byte	0x3
	.byte	0xa3
	.uaword	0x3584
	.uleb128 0xe
	.uaword	0x353f
	.uleb128 0x2
	.string	"_Ifx_SRC_EMEM"
	.byte	0x4
	.byte	0x3
	.byte	0xa6
	.uaword	0x35ab
	.uleb128 0x19
	.string	"SR"
	.byte	0x3
	.byte	0xa8
	.uaword	0x3204
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SRC_EMEM"
	.byte	0x3
	.byte	0xa9
	.uaword	0x35bf
	.uleb128 0xe
	.uaword	0x3589
	.uleb128 0x2
	.string	"_Ifx_SRC_ERAY"
	.byte	0x50
	.byte	0x3
	.byte	0xac
	.uaword	0x3636
	.uleb128 0x19
	.string	"INT"
	.byte	0x3
	.byte	0xae
	.uaword	0x33bb
	.byte	0
	.uleb128 0x19
	.string	"TINT"
	.byte	0x3
	.byte	0xaf
	.uaword	0x33bb
	.byte	0x8
	.uleb128 0x19
	.string	"NDAT"
	.byte	0x3
	.byte	0xb0
	.uaword	0x33bb
	.byte	0x10
	.uleb128 0x19
	.string	"MBSC"
	.byte	0x3
	.byte	0xb1
	.uaword	0x33bb
	.byte	0x18
	.uleb128 0x19
	.string	"OBUSY"
	.byte	0x3
	.byte	0xb2
	.uaword	0x3204
	.byte	0x20
	.uleb128 0x19
	.string	"IBUSY"
	.byte	0x3
	.byte	0xb3
	.uaword	0x3204
	.byte	0x24
	.uleb128 0x1b
	.uaword	.LASF13
	.byte	0x3
	.byte	0xb4
	.uaword	0x3040
	.byte	0x28
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SRC_ERAY"
	.byte	0x3
	.byte	0xb5
	.uaword	0x364a
	.uleb128 0xe
	.uaword	0x35c4
	.uleb128 0x2
	.string	"_Ifx_SRC_ETH"
	.byte	0x4
	.byte	0x3
	.byte	0xb8
	.uaword	0x3670
	.uleb128 0x19
	.string	"SR"
	.byte	0x3
	.byte	0xba
	.uaword	0x3204
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SRC_ETH"
	.byte	0x3
	.byte	0xbb
	.uaword	0x3683
	.uleb128 0xe
	.uaword	0x364f
	.uleb128 0x2
	.string	"_Ifx_SRC_FCE"
	.byte	0x4
	.byte	0x3
	.byte	0xbe
	.uaword	0x36a9
	.uleb128 0x19
	.string	"SR"
	.byte	0x3
	.byte	0xc0
	.uaword	0x3204
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SRC_FCE"
	.byte	0x3
	.byte	0xc1
	.uaword	0x36bc
	.uleb128 0xe
	.uaword	0x3688
	.uleb128 0x2
	.string	"_Ifx_SRC_GPSR"
	.byte	0x20
	.byte	0x3
	.byte	0xc4
	.uaword	0x3714
	.uleb128 0x19
	.string	"SR0"
	.byte	0x3
	.byte	0xc6
	.uaword	0x3204
	.byte	0
	.uleb128 0x19
	.string	"SR1"
	.byte	0x3
	.byte	0xc7
	.uaword	0x3204
	.byte	0x4
	.uleb128 0x19
	.string	"SR2"
	.byte	0x3
	.byte	0xc8
	.uaword	0x3204
	.byte	0x8
	.uleb128 0x19
	.string	"SR3"
	.byte	0x3
	.byte	0xc9
	.uaword	0x3204
	.byte	0xc
	.uleb128 0x1b
	.uaword	.LASF3
	.byte	0x3
	.byte	0xca
	.uaword	0x3714
	.byte	0x10
	.byte	0
	.uleb128 0x12
	.uaword	0x2de6
	.uaword	0x3724
	.uleb128 0x13
	.uaword	0x2dda
	.byte	0xf
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SRC_GPSR"
	.byte	0x3
	.byte	0xcb
	.uaword	0x3738
	.uleb128 0xe
	.uaword	0x36c1
	.uleb128 0x2
	.string	"_Ifx_SRC_GPT12"
	.byte	0x30
	.byte	0x3
	.byte	0xce
	.uaword	0x37a5
	.uleb128 0x19
	.string	"CIRQ"
	.byte	0x3
	.byte	0xd0
	.uaword	0x3204
	.byte	0
	.uleb128 0x19
	.string	"T2"
	.byte	0x3
	.byte	0xd1
	.uaword	0x3204
	.byte	0x4
	.uleb128 0x19
	.string	"T3"
	.byte	0x3
	.byte	0xd2
	.uaword	0x3204
	.byte	0x8
	.uleb128 0x19
	.string	"T4"
	.byte	0x3
	.byte	0xd3
	.uaword	0x3204
	.byte	0xc
	.uleb128 0x19
	.string	"T5"
	.byte	0x3
	.byte	0xd4
	.uaword	0x3204
	.byte	0x10
	.uleb128 0x19
	.string	"T6"
	.byte	0x3
	.byte	0xd5
	.uaword	0x3204
	.byte	0x14
	.uleb128 0x1b
	.uaword	.LASF10
	.byte	0x3
	.byte	0xd6
	.uaword	0x37a5
	.byte	0x18
	.byte	0
	.uleb128 0x12
	.uaword	0x2de6
	.uaword	0x37b5
	.uleb128 0x13
	.uaword	0x2dda
	.byte	0x17
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SRC_GPT12"
	.byte	0x3
	.byte	0xd7
	.uaword	0x37ca
	.uleb128 0xe
	.uaword	0x373d
	.uleb128 0x1a
	.string	"_Ifx_SRC_GTM"
	.uahalf	0x950
	.byte	0x3
	.byte	0xda
	.uaword	0x3968
	.uleb128 0x19
	.string	"AEIIRQ"
	.byte	0x3
	.byte	0xdc
	.uaword	0x3204
	.byte	0
	.uleb128 0x19
	.string	"ARUIRQ"
	.byte	0x3
	.byte	0xdd
	.uaword	0x3968
	.byte	0x4
	.uleb128 0x1b
	.uaword	.LASF3
	.byte	0x3
	.byte	0xde
	.uaword	0x2fe0
	.byte	0x10
	.uleb128 0x19
	.string	"BRCIRQ"
	.byte	0x3
	.byte	0xdf
	.uaword	0x3204
	.byte	0x14
	.uleb128 0x19
	.string	"CMPIRQ"
	.byte	0x3
	.byte	0xe0
	.uaword	0x3204
	.byte	0x18
	.uleb128 0x19
	.string	"SPEIRQ"
	.byte	0x3
	.byte	0xe1
	.uaword	0x33bb
	.byte	0x1c
	.uleb128 0x1b
	.uaword	.LASF18
	.byte	0x3
	.byte	0xe2
	.uaword	0x2dca
	.byte	0x24
	.uleb128 0x19
	.string	"PSM"
	.byte	0x3
	.byte	0xe3
	.uaword	0x3978
	.byte	0x2c
	.uleb128 0x1b
	.uaword	.LASF22
	.byte	0x3
	.byte	0xe4
	.uaword	0x398e
	.byte	0x4c
	.uleb128 0x19
	.string	"DPLL"
	.byte	0x3
	.byte	0xe5
	.uaword	0x399e
	.byte	0xa4
	.uleb128 0x1c
	.string	"reserved_110"
	.byte	0x3
	.byte	0xe6
	.uaword	0x39ae
	.uahalf	0x110
	.uleb128 0x1c
	.string	"ERR"
	.byte	0x3
	.byte	0xe7
	.uaword	0x3204
	.uahalf	0x170
	.uleb128 0x1c
	.string	"reserved_174"
	.byte	0x3
	.byte	0xe8
	.uaword	0x3507
	.uahalf	0x174
	.uleb128 0x1c
	.string	"TIM"
	.byte	0x3
	.byte	0xe9
	.uaword	0x39be
	.uahalf	0x180
	.uleb128 0x1c
	.string	"reserved_200"
	.byte	0x3
	.byte	0xea
	.uaword	0x39d4
	.uahalf	0x200
	.uleb128 0x1c
	.string	"MCS"
	.byte	0x3
	.byte	0xeb
	.uaword	0x39be
	.uahalf	0x380
	.uleb128 0x1c
	.string	"reserved_400"
	.byte	0x3
	.byte	0xec
	.uaword	0x39d4
	.uahalf	0x400
	.uleb128 0x1c
	.string	"TOM"
	.byte	0x3
	.byte	0xed
	.uaword	0x39e5
	.uahalf	0x580
	.uleb128 0x1c
	.string	"reserved_5E0"
	.byte	0x3
	.byte	0xee
	.uaword	0x39fb
	.uahalf	0x5e0
	.uleb128 0x1c
	.string	"ATOM"
	.byte	0x3
	.byte	0xef
	.uaword	0x3a0c
	.uahalf	0x780
	.uleb128 0x1c
	.string	"reserved_7D0"
	.byte	0x3
	.byte	0xf0
	.uaword	0x3a22
	.uahalf	0x7d0
	.uleb128 0x1c
	.string	"MCSW0"
	.byte	0x3
	.byte	0xf1
	.uaword	0x3a33
	.uahalf	0x900
	.uleb128 0x1c
	.string	"reserved_910"
	.byte	0x3
	.byte	0xf2
	.uaword	0x3a43
	.uahalf	0x910
	.uleb128 0x1c
	.string	"MCSW1"
	.byte	0x3
	.byte	0xf3
	.uaword	0x3a33
	.uahalf	0x940
	.byte	0
	.uleb128 0x12
	.uaword	0x3204
	.uaword	0x3978
	.uleb128 0x13
	.uaword	0x2dda
	.byte	0x2
	.byte	0
	.uleb128 0x12
	.uaword	0x3204
	.uaword	0x398e
	.uleb128 0x13
	.uaword	0x2dda
	.byte	0
	.uleb128 0x13
	.uaword	0x2dda
	.byte	0x7
	.byte	0
	.uleb128 0x12
	.uaword	0x2de6
	.uaword	0x399e
	.uleb128 0x13
	.uaword	0x2dda
	.byte	0x57
	.byte	0
	.uleb128 0x12
	.uaword	0x3204
	.uaword	0x39ae
	.uleb128 0x13
	.uaword	0x2dda
	.byte	0x1a
	.byte	0
	.uleb128 0x12
	.uaword	0x2de6
	.uaword	0x39be
	.uleb128 0x13
	.uaword	0x2dda
	.byte	0x5f
	.byte	0
	.uleb128 0x12
	.uaword	0x3204
	.uaword	0x39d4
	.uleb128 0x13
	.uaword	0x2dda
	.byte	0x3
	.uleb128 0x13
	.uaword	0x2dda
	.byte	0x7
	.byte	0
	.uleb128 0x12
	.uaword	0x2de6
	.uaword	0x39e5
	.uleb128 0x16
	.uaword	0x2dda
	.uahalf	0x17f
	.byte	0
	.uleb128 0x12
	.uaword	0x3204
	.uaword	0x39fb
	.uleb128 0x13
	.uaword	0x2dda
	.byte	0x2
	.uleb128 0x13
	.uaword	0x2dda
	.byte	0x7
	.byte	0
	.uleb128 0x12
	.uaword	0x2de6
	.uaword	0x3a0c
	.uleb128 0x16
	.uaword	0x2dda
	.uahalf	0x19f
	.byte	0
	.uleb128 0x12
	.uaword	0x3204
	.uaword	0x3a22
	.uleb128 0x13
	.uaword	0x2dda
	.byte	0x4
	.uleb128 0x13
	.uaword	0x2dda
	.byte	0x3
	.byte	0
	.uleb128 0x12
	.uaword	0x2de6
	.uaword	0x3a33
	.uleb128 0x16
	.uaword	0x2dda
	.uahalf	0x12f
	.byte	0
	.uleb128 0x12
	.uaword	0x3204
	.uaword	0x3a43
	.uleb128 0x13
	.uaword	0x2dda
	.byte	0x3
	.byte	0
	.uleb128 0x12
	.uaword	0x2de6
	.uaword	0x3a53
	.uleb128 0x13
	.uaword	0x2dda
	.byte	0x2f
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SRC_GTM"
	.byte	0x3
	.byte	0xf4
	.uaword	0x3a66
	.uleb128 0xe
	.uaword	0x37cf
	.uleb128 0x2
	.string	"_Ifx_SRC_HSCT"
	.byte	0x4
	.byte	0x3
	.byte	0xf7
	.uaword	0x3a8d
	.uleb128 0x19
	.string	"SR"
	.byte	0x3
	.byte	0xf9
	.uaword	0x3204
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SRC_HSCT"
	.byte	0x3
	.byte	0xfa
	.uaword	0x3aa1
	.uleb128 0xe
	.uaword	0x3a6b
	.uleb128 0x2
	.string	"_Ifx_SRC_HSM"
	.byte	0x8
	.byte	0x3
	.byte	0xfd
	.uaword	0x3ac8
	.uleb128 0x19
	.string	"HSM"
	.byte	0x3
	.byte	0xff
	.uaword	0x33bb
	.byte	0
	.byte	0
	.uleb128 0x9
	.string	"Ifx_SRC_HSM"
	.byte	0x3
	.uahalf	0x100
	.uaword	0x3adc
	.uleb128 0xe
	.uaword	0x3aa6
	.uleb128 0x7
	.string	"_Ifx_SRC_HSSL"
	.byte	0x10
	.byte	0x3
	.uahalf	0x103
	.uaword	0x3b2d
	.uleb128 0x10
	.string	"COK"
	.byte	0x3
	.uahalf	0x105
	.uaword	0x3204
	.byte	0
	.uleb128 0x10
	.string	"RDI"
	.byte	0x3
	.uahalf	0x106
	.uaword	0x3204
	.byte	0x4
	.uleb128 0x10
	.string	"ERR"
	.byte	0x3
	.uahalf	0x107
	.uaword	0x3204
	.byte	0x8
	.uleb128 0x10
	.string	"TRG"
	.byte	0x3
	.uahalf	0x108
	.uaword	0x3204
	.byte	0xc
	.byte	0
	.uleb128 0x9
	.string	"Ifx_SRC_HSSL"
	.byte	0x3
	.uahalf	0x109
	.uaword	0x3b42
	.uleb128 0xe
	.uaword	0x3ae1
	.uleb128 0x7
	.string	"_Ifx_SRC_I2C"
	.byte	0x50
	.byte	0x3
	.uahalf	0x10c
	.uaword	0x3bbd
	.uleb128 0x10
	.string	"BREQ"
	.byte	0x3
	.uahalf	0x10e
	.uaword	0x3204
	.byte	0
	.uleb128 0x10
	.string	"LBREQ"
	.byte	0x3
	.uahalf	0x10f
	.uaword	0x3204
	.byte	0x4
	.uleb128 0x10
	.string	"SREQ"
	.byte	0x3
	.uahalf	0x110
	.uaword	0x3204
	.byte	0x8
	.uleb128 0x10
	.string	"LSREQ"
	.byte	0x3
	.uahalf	0x111
	.uaword	0x3204
	.byte	0xc
	.uleb128 0x10
	.string	"ERR"
	.byte	0x3
	.uahalf	0x112
	.uaword	0x3204
	.byte	0x10
	.uleb128 0x10
	.string	"P"
	.byte	0x3
	.uahalf	0x113
	.uaword	0x3204
	.byte	0x14
	.uleb128 0x11
	.uaword	.LASF10
	.byte	0x3
	.uahalf	0x114
	.uaword	0x3bbd
	.byte	0x18
	.byte	0
	.uleb128 0x12
	.uaword	0x2de6
	.uaword	0x3bcd
	.uleb128 0x13
	.uaword	0x2dda
	.byte	0x37
	.byte	0
	.uleb128 0x9
	.string	"Ifx_SRC_I2C"
	.byte	0x3
	.uahalf	0x115
	.uaword	0x3be1
	.uleb128 0xe
	.uaword	0x3b47
	.uleb128 0x7
	.string	"_Ifx_SRC_LMU"
	.byte	0x4
	.byte	0x3
	.uahalf	0x118
	.uaword	0x3c09
	.uleb128 0x10
	.string	"SR"
	.byte	0x3
	.uahalf	0x11a
	.uaword	0x3204
	.byte	0
	.byte	0
	.uleb128 0x9
	.string	"Ifx_SRC_LMU"
	.byte	0x3
	.uahalf	0x11b
	.uaword	0x3c1d
	.uleb128 0xe
	.uaword	0x3be6
	.uleb128 0x7
	.string	"_Ifx_SRC_MSC"
	.byte	0x14
	.byte	0x3
	.uahalf	0x11e
	.uaword	0x3c7a
	.uleb128 0x10
	.string	"SR0"
	.byte	0x3
	.uahalf	0x120
	.uaword	0x3204
	.byte	0
	.uleb128 0x10
	.string	"SR1"
	.byte	0x3
	.uahalf	0x121
	.uaword	0x3204
	.byte	0x4
	.uleb128 0x10
	.string	"SR2"
	.byte	0x3
	.uahalf	0x122
	.uaword	0x3204
	.byte	0x8
	.uleb128 0x10
	.string	"SR3"
	.byte	0x3
	.uahalf	0x123
	.uaword	0x3204
	.byte	0xc
	.uleb128 0x10
	.string	"SR4"
	.byte	0x3
	.uahalf	0x124
	.uaword	0x3204
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.string	"Ifx_SRC_MSC"
	.byte	0x3
	.uahalf	0x125
	.uaword	0x3c8e
	.uleb128 0xe
	.uaword	0x3c22
	.uleb128 0x7
	.string	"_Ifx_SRC_PMU"
	.byte	0x4
	.byte	0x3
	.uahalf	0x128
	.uaword	0x3cb6
	.uleb128 0x10
	.string	"SR"
	.byte	0x3
	.uahalf	0x12a
	.uaword	0x3204
	.byte	0
	.byte	0
	.uleb128 0x9
	.string	"Ifx_SRC_PMU"
	.byte	0x3
	.uahalf	0x12b
	.uaword	0x3cca
	.uleb128 0xe
	.uaword	0x3c93
	.uleb128 0x7
	.string	"_Ifx_SRC_PSI5"
	.byte	0x20
	.byte	0x3
	.uahalf	0x12e
	.uaword	0x3cf3
	.uleb128 0x10
	.string	"SR"
	.byte	0x3
	.uahalf	0x130
	.uaword	0x3cf3
	.byte	0
	.byte	0
	.uleb128 0x12
	.uaword	0x3204
	.uaword	0x3d03
	.uleb128 0x13
	.uaword	0x2dda
	.byte	0x7
	.byte	0
	.uleb128 0x9
	.string	"Ifx_SRC_PSI5"
	.byte	0x3
	.uahalf	0x131
	.uaword	0x3d18
	.uleb128 0xe
	.uaword	0x3ccf
	.uleb128 0x7
	.string	"_Ifx_SRC_PSI5S"
	.byte	0x20
	.byte	0x3
	.uahalf	0x134
	.uaword	0x3d42
	.uleb128 0x10
	.string	"SR"
	.byte	0x3
	.uahalf	0x136
	.uaword	0x3cf3
	.byte	0
	.byte	0
	.uleb128 0x9
	.string	"Ifx_SRC_PSI5S"
	.byte	0x3
	.uahalf	0x137
	.uaword	0x3d58
	.uleb128 0xe
	.uaword	0x3d1d
	.uleb128 0x7
	.string	"_Ifx_SRC_QSPI"
	.byte	0x18
	.byte	0x3
	.uahalf	0x13a
	.uaword	0x3dbe
	.uleb128 0x10
	.string	"TX"
	.byte	0x3
	.uahalf	0x13c
	.uaword	0x3204
	.byte	0
	.uleb128 0x10
	.string	"RX"
	.byte	0x3
	.uahalf	0x13d
	.uaword	0x3204
	.byte	0x4
	.uleb128 0x10
	.string	"ERR"
	.byte	0x3
	.uahalf	0x13e
	.uaword	0x3204
	.byte	0x8
	.uleb128 0x10
	.string	"PT"
	.byte	0x3
	.uahalf	0x13f
	.uaword	0x3204
	.byte	0xc
	.uleb128 0x11
	.uaword	.LASF3
	.byte	0x3
	.uahalf	0x140
	.uaword	0x2fe0
	.byte	0x10
	.uleb128 0x10
	.string	"U"
	.byte	0x3
	.uahalf	0x141
	.uaword	0x3204
	.byte	0x14
	.byte	0
	.uleb128 0x9
	.string	"Ifx_SRC_QSPI"
	.byte	0x3
	.uahalf	0x142
	.uaword	0x3dd3
	.uleb128 0xe
	.uaword	0x3d5d
	.uleb128 0x7
	.string	"_Ifx_SRC_SCU"
	.byte	0x14
	.byte	0x3
	.uahalf	0x145
	.uaword	0x3e09
	.uleb128 0x10
	.string	"DTS"
	.byte	0x3
	.uahalf	0x147
	.uaword	0x3204
	.byte	0
	.uleb128 0x10
	.string	"ERU"
	.byte	0x3
	.uahalf	0x148
	.uaword	0x3a33
	.byte	0x4
	.byte	0
	.uleb128 0x9
	.string	"Ifx_SRC_SCU"
	.byte	0x3
	.uahalf	0x149
	.uaword	0x3e1d
	.uleb128 0xe
	.uaword	0x3dd8
	.uleb128 0x7
	.string	"_Ifx_SRC_SENT"
	.byte	0x28
	.byte	0x3
	.uahalf	0x14c
	.uaword	0x3e46
	.uleb128 0x10
	.string	"SR"
	.byte	0x3
	.uahalf	0x14e
	.uaword	0x3e46
	.byte	0
	.byte	0
	.uleb128 0x12
	.uaword	0x3204
	.uaword	0x3e56
	.uleb128 0x13
	.uaword	0x2dda
	.byte	0x9
	.byte	0
	.uleb128 0x9
	.string	"Ifx_SRC_SENT"
	.byte	0x3
	.uahalf	0x14f
	.uaword	0x3e6b
	.uleb128 0xe
	.uaword	0x3e22
	.uleb128 0x7
	.string	"_Ifx_SRC_SMU"
	.byte	0xc
	.byte	0x3
	.uahalf	0x152
	.uaword	0x3e93
	.uleb128 0x10
	.string	"SR"
	.byte	0x3
	.uahalf	0x154
	.uaword	0x3968
	.byte	0
	.byte	0
	.uleb128 0x9
	.string	"Ifx_SRC_SMU"
	.byte	0x3
	.uahalf	0x155
	.uaword	0x3ea7
	.uleb128 0xe
	.uaword	0x3e70
	.uleb128 0x7
	.string	"_Ifx_SRC_STM"
	.byte	0x8
	.byte	0x3
	.uahalf	0x158
	.uaword	0x3edd
	.uleb128 0x10
	.string	"SR0"
	.byte	0x3
	.uahalf	0x15a
	.uaword	0x3204
	.byte	0
	.uleb128 0x10
	.string	"SR1"
	.byte	0x3
	.uahalf	0x15b
	.uaword	0x3204
	.byte	0x4
	.byte	0
	.uleb128 0x9
	.string	"Ifx_SRC_STM"
	.byte	0x3
	.uahalf	0x15c
	.uaword	0x3ef1
	.uleb128 0xe
	.uaword	0x3eac
	.uleb128 0x7
	.string	"_Ifx_SRC_VADCCG"
	.byte	0x10
	.byte	0x3
	.uahalf	0x15f
	.uaword	0x3f44
	.uleb128 0x10
	.string	"SR0"
	.byte	0x3
	.uahalf	0x161
	.uaword	0x3204
	.byte	0
	.uleb128 0x10
	.string	"SR1"
	.byte	0x3
	.uahalf	0x162
	.uaword	0x3204
	.byte	0x4
	.uleb128 0x10
	.string	"SR2"
	.byte	0x3
	.uahalf	0x163
	.uaword	0x3204
	.byte	0x8
	.uleb128 0x10
	.string	"SR3"
	.byte	0x3
	.uahalf	0x164
	.uaword	0x3204
	.byte	0xc
	.byte	0
	.uleb128 0x9
	.string	"Ifx_SRC_VADCCG"
	.byte	0x3
	.uahalf	0x165
	.uaword	0x3f5b
	.uleb128 0xe
	.uaword	0x3ef6
	.uleb128 0x7
	.string	"_Ifx_SRC_VADCG"
	.byte	0x10
	.byte	0x3
	.uahalf	0x168
	.uaword	0x3fad
	.uleb128 0x10
	.string	"SR0"
	.byte	0x3
	.uahalf	0x16a
	.uaword	0x3204
	.byte	0
	.uleb128 0x10
	.string	"SR1"
	.byte	0x3
	.uahalf	0x16b
	.uaword	0x3204
	.byte	0x4
	.uleb128 0x10
	.string	"SR2"
	.byte	0x3
	.uahalf	0x16c
	.uaword	0x3204
	.byte	0x8
	.uleb128 0x10
	.string	"SR3"
	.byte	0x3
	.uahalf	0x16d
	.uaword	0x3204
	.byte	0xc
	.byte	0
	.uleb128 0x9
	.string	"Ifx_SRC_VADCG"
	.byte	0x3
	.uahalf	0x16e
	.uaword	0x3fc3
	.uleb128 0xe
	.uaword	0x3f60
	.uleb128 0x7
	.string	"_Ifx_SRC_XBAR"
	.byte	0x4
	.byte	0x3
	.uahalf	0x171
	.uaword	0x3fed
	.uleb128 0x10
	.string	"SRC"
	.byte	0x3
	.uahalf	0x173
	.uaword	0x3204
	.byte	0
	.byte	0
	.uleb128 0x9
	.string	"Ifx_SRC_XBAR"
	.byte	0x3
	.uahalf	0x174
	.uaword	0x4002
	.uleb128 0xe
	.uaword	0x3fc8
	.uleb128 0x7
	.string	"_Ifx_SRC_GAGBT"
	.byte	0x4
	.byte	0x3
	.uahalf	0x181
	.uaword	0x402e
	.uleb128 0x10
	.string	"AGBT"
	.byte	0x3
	.uahalf	0x183
	.uaword	0x403e
	.byte	0
	.byte	0
	.uleb128 0x12
	.uaword	0x323a
	.uaword	0x403e
	.uleb128 0x13
	.uaword	0x2dda
	.byte	0
	.byte	0
	.uleb128 0xe
	.uaword	0x402e
	.uleb128 0x9
	.string	"Ifx_SRC_GAGBT"
	.byte	0x3
	.uahalf	0x184
	.uaword	0x4059
	.uleb128 0xe
	.uaword	0x4007
	.uleb128 0x7
	.string	"_Ifx_SRC_GASCLIN"
	.byte	0x30
	.byte	0x3
	.uahalf	0x187
	.uaword	0x4089
	.uleb128 0x10
	.string	"ASCLIN"
	.byte	0x3
	.uahalf	0x189
	.uaword	0x4099
	.byte	0
	.byte	0
	.uleb128 0x12
	.uaword	0x328e
	.uaword	0x4099
	.uleb128 0x13
	.uaword	0x2dda
	.byte	0x3
	.byte	0
	.uleb128 0xe
	.uaword	0x4089
	.uleb128 0x9
	.string	"Ifx_SRC_GASCLIN"
	.byte	0x3
	.uahalf	0x18a
	.uaword	0x40b6
	.uleb128 0xe
	.uaword	0x405e
	.uleb128 0x7
	.string	"_Ifx_SRC_GBCU"
	.byte	0x4
	.byte	0x3
	.uahalf	0x18d
	.uaword	0x40e0
	.uleb128 0x10
	.string	"SPB"
	.byte	0x3
	.uahalf	0x18f
	.uaword	0x32d0
	.byte	0
	.byte	0
	.uleb128 0x9
	.string	"Ifx_SRC_GBCU"
	.byte	0x3
	.uahalf	0x190
	.uaword	0x40f5
	.uleb128 0xe
	.uaword	0x40bb
	.uleb128 0x7
	.string	"_Ifx_SRC_GCAN"
	.byte	0x40
	.byte	0x3
	.uahalf	0x193
	.uaword	0x411f
	.uleb128 0x10
	.string	"CAN"
	.byte	0x3
	.uahalf	0x195
	.uaword	0x412f
	.byte	0
	.byte	0
	.uleb128 0x12
	.uaword	0x331d
	.uaword	0x412f
	.uleb128 0x13
	.uaword	0x2dda
	.byte	0
	.byte	0
	.uleb128 0xe
	.uaword	0x411f
	.uleb128 0x9
	.string	"Ifx_SRC_GCAN"
	.byte	0x3
	.uahalf	0x196
	.uaword	0x4149
	.uleb128 0xe
	.uaword	0x40fa
	.uleb128 0x7
	.string	"_Ifx_SRC_GCCU6"
	.byte	0x20
	.byte	0x3
	.uahalf	0x199
	.uaword	0x4175
	.uleb128 0x10
	.string	"CCU6"
	.byte	0x3
	.uahalf	0x19b
	.uaword	0x4185
	.byte	0
	.byte	0
	.uleb128 0x12
	.uaword	0x337c
	.uaword	0x4185
	.uleb128 0x13
	.uaword	0x2dda
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.uaword	0x4175
	.uleb128 0x9
	.string	"Ifx_SRC_GCCU6"
	.byte	0x3
	.uahalf	0x19c
	.uaword	0x41a0
	.uleb128 0xe
	.uaword	0x414e
	.uleb128 0x7
	.string	"_Ifx_SRC_GCERBERUS"
	.byte	0x8
	.byte	0x3
	.uahalf	0x19f
	.uaword	0x41cf
	.uleb128 0x11
	.uaword	.LASF23
	.byte	0x3
	.uahalf	0x1a1
	.uaword	0x33cb
	.byte	0
	.byte	0
	.uleb128 0x9
	.string	"Ifx_SRC_GCERBERUS"
	.byte	0x3
	.uahalf	0x1a2
	.uaword	0x41e9
	.uleb128 0xe
	.uaword	0x41a5
	.uleb128 0x7
	.string	"_Ifx_SRC_GCIF"
	.byte	0x10
	.byte	0x3
	.uahalf	0x1a5
	.uaword	0x4213
	.uleb128 0x10
	.string	"CIF"
	.byte	0x3
	.uahalf	0x1a7
	.uaword	0x4223
	.byte	0
	.byte	0
	.uleb128 0x12
	.uaword	0x3430
	.uaword	0x4223
	.uleb128 0x13
	.uaword	0x2dda
	.byte	0
	.byte	0
	.uleb128 0xe
	.uaword	0x4213
	.uleb128 0x9
	.string	"Ifx_SRC_GCIF"
	.byte	0x3
	.uahalf	0x1a8
	.uaword	0x423d
	.uleb128 0xe
	.uaword	0x41ee
	.uleb128 0x7
	.string	"_Ifx_SRC_GCPU"
	.byte	0xc
	.byte	0x3
	.uahalf	0x1ab
	.uaword	0x4267
	.uleb128 0x10
	.string	"CPU"
	.byte	0x3
	.uahalf	0x1ad
	.uaword	0x4277
	.byte	0
	.byte	0
	.uleb128 0x12
	.uaword	0x346c
	.uaword	0x4277
	.uleb128 0x13
	.uaword	0x2dda
	.byte	0x2
	.byte	0
	.uleb128 0xe
	.uaword	0x4267
	.uleb128 0x9
	.string	"Ifx_SRC_GCPU"
	.byte	0x3
	.uahalf	0x1ae
	.uaword	0x4291
	.uleb128 0xe
	.uaword	0x4242
	.uleb128 0x7
	.string	"_Ifx_SRC_GDAM"
	.byte	0x18
	.byte	0x3
	.uahalf	0x1b1
	.uaword	0x42bb
	.uleb128 0x10
	.string	"DAM"
	.byte	0x3
	.uahalf	0x1b3
	.uaword	0x42cb
	.byte	0
	.byte	0
	.uleb128 0x12
	.uaword	0x34b5
	.uaword	0x42cb
	.uleb128 0x13
	.uaword	0x2dda
	.byte	0
	.byte	0
	.uleb128 0xe
	.uaword	0x42bb
	.uleb128 0x9
	.string	"Ifx_SRC_GDAM"
	.byte	0x3
	.uahalf	0x1b4
	.uaword	0x42e5
	.uleb128 0xe
	.uaword	0x4296
	.uleb128 0xf
	.string	"_Ifx_SRC_GDMA"
	.uahalf	0x110
	.byte	0x3
	.uahalf	0x1b7
	.uaword	0x4310
	.uleb128 0x10
	.string	"DMA"
	.byte	0x3
	.uahalf	0x1b9
	.uaword	0x4320
	.byte	0
	.byte	0
	.uleb128 0x12
	.uaword	0x3527
	.uaword	0x4320
	.uleb128 0x13
	.uaword	0x2dda
	.byte	0
	.byte	0
	.uleb128 0xe
	.uaword	0x4310
	.uleb128 0x9
	.string	"Ifx_SRC_GDMA"
	.byte	0x3
	.uahalf	0x1ba
	.uaword	0x433a
	.uleb128 0xe
	.uaword	0x42ea
	.uleb128 0x7
	.string	"_Ifx_SRC_GDSADC"
	.byte	0x30
	.byte	0x3
	.uahalf	0x1bd
	.uaword	0x4368
	.uleb128 0x10
	.string	"DSADC"
	.byte	0x3
	.uahalf	0x1bf
	.uaword	0x4378
	.byte	0
	.byte	0
	.uleb128 0x12
	.uaword	0x356f
	.uaword	0x4378
	.uleb128 0x13
	.uaword	0x2dda
	.byte	0x5
	.byte	0
	.uleb128 0xe
	.uaword	0x4368
	.uleb128 0x9
	.string	"Ifx_SRC_GDSADC"
	.byte	0x3
	.uahalf	0x1c0
	.uaword	0x4394
	.uleb128 0xe
	.uaword	0x433f
	.uleb128 0x7
	.string	"_Ifx_SRC_GEMEM"
	.byte	0x4
	.byte	0x3
	.uahalf	0x1c3
	.uaword	0x43c0
	.uleb128 0x10
	.string	"EMEM"
	.byte	0x3
	.uahalf	0x1c5
	.uaword	0x43d0
	.byte	0
	.byte	0
	.uleb128 0x12
	.uaword	0x35ab
	.uaword	0x43d0
	.uleb128 0x13
	.uaword	0x2dda
	.byte	0
	.byte	0
	.uleb128 0xe
	.uaword	0x43c0
	.uleb128 0x9
	.string	"Ifx_SRC_GEMEM"
	.byte	0x3
	.uahalf	0x1c6
	.uaword	0x43eb
	.uleb128 0xe
	.uaword	0x4399
	.uleb128 0x7
	.string	"_Ifx_SRC_GERAY"
	.byte	0x50
	.byte	0x3
	.uahalf	0x1c9
	.uaword	0x4417
	.uleb128 0x10
	.string	"ERAY"
	.byte	0x3
	.uahalf	0x1cb
	.uaword	0x4427
	.byte	0
	.byte	0
	.uleb128 0x12
	.uaword	0x3636
	.uaword	0x4427
	.uleb128 0x13
	.uaword	0x2dda
	.byte	0
	.byte	0
	.uleb128 0xe
	.uaword	0x4417
	.uleb128 0x9
	.string	"Ifx_SRC_GERAY"
	.byte	0x3
	.uahalf	0x1cc
	.uaword	0x4442
	.uleb128 0xe
	.uaword	0x43f0
	.uleb128 0x7
	.string	"_Ifx_SRC_GETH"
	.byte	0x4
	.byte	0x3
	.uahalf	0x1cf
	.uaword	0x446c
	.uleb128 0x10
	.string	"ETH"
	.byte	0x3
	.uahalf	0x1d1
	.uaword	0x447c
	.byte	0
	.byte	0
	.uleb128 0x12
	.uaword	0x3670
	.uaword	0x447c
	.uleb128 0x13
	.uaword	0x2dda
	.byte	0
	.byte	0
	.uleb128 0xe
	.uaword	0x446c
	.uleb128 0x9
	.string	"Ifx_SRC_GETH"
	.byte	0x3
	.uahalf	0x1d2
	.uaword	0x4496
	.uleb128 0xe
	.uaword	0x4447
	.uleb128 0x7
	.string	"_Ifx_SRC_GFCE"
	.byte	0x4
	.byte	0x3
	.uahalf	0x1d5
	.uaword	0x44c0
	.uleb128 0x10
	.string	"FCE"
	.byte	0x3
	.uahalf	0x1d7
	.uaword	0x44d0
	.byte	0
	.byte	0
	.uleb128 0x12
	.uaword	0x36a9
	.uaword	0x44d0
	.uleb128 0x13
	.uaword	0x2dda
	.byte	0
	.byte	0
	.uleb128 0xe
	.uaword	0x44c0
	.uleb128 0x9
	.string	"Ifx_SRC_GFCE"
	.byte	0x3
	.uahalf	0x1d8
	.uaword	0x44ea
	.uleb128 0xe
	.uaword	0x449b
	.uleb128 0x7
	.string	"_Ifx_SRC_GGPSR"
	.byte	0x60
	.byte	0x3
	.uahalf	0x1db
	.uaword	0x4516
	.uleb128 0x10
	.string	"GPSR"
	.byte	0x3
	.uahalf	0x1dd
	.uaword	0x4526
	.byte	0
	.byte	0
	.uleb128 0x12
	.uaword	0x3724
	.uaword	0x4526
	.uleb128 0x13
	.uaword	0x2dda
	.byte	0x2
	.byte	0
	.uleb128 0xe
	.uaword	0x4516
	.uleb128 0x9
	.string	"Ifx_SRC_GGPSR"
	.byte	0x3
	.uahalf	0x1de
	.uaword	0x4541
	.uleb128 0xe
	.uaword	0x44ef
	.uleb128 0x7
	.string	"_Ifx_SRC_GGPT12"
	.byte	0x30
	.byte	0x3
	.uahalf	0x1e1
	.uaword	0x456f
	.uleb128 0x10
	.string	"GPT12"
	.byte	0x3
	.uahalf	0x1e3
	.uaword	0x457f
	.byte	0
	.byte	0
	.uleb128 0x12
	.uaword	0x37b5
	.uaword	0x457f
	.uleb128 0x13
	.uaword	0x2dda
	.byte	0
	.byte	0
	.uleb128 0xe
	.uaword	0x456f
	.uleb128 0x9
	.string	"Ifx_SRC_GGPT12"
	.byte	0x3
	.uahalf	0x1e4
	.uaword	0x459b
	.uleb128 0xe
	.uaword	0x4546
	.uleb128 0xf
	.string	"_Ifx_SRC_GGTM"
	.uahalf	0x950
	.byte	0x3
	.uahalf	0x1e7
	.uaword	0x45c6
	.uleb128 0x10
	.string	"GTM"
	.byte	0x3
	.uahalf	0x1e9
	.uaword	0x45d6
	.byte	0
	.byte	0
	.uleb128 0x12
	.uaword	0x3a53
	.uaword	0x45d6
	.uleb128 0x13
	.uaword	0x2dda
	.byte	0
	.byte	0
	.uleb128 0xe
	.uaword	0x45c6
	.uleb128 0x9
	.string	"Ifx_SRC_GGTM"
	.byte	0x3
	.uahalf	0x1ea
	.uaword	0x45f0
	.uleb128 0xe
	.uaword	0x45a0
	.uleb128 0x7
	.string	"_Ifx_SRC_GHSCT"
	.byte	0x4
	.byte	0x3
	.uahalf	0x1ed
	.uaword	0x461c
	.uleb128 0x10
	.string	"HSCT"
	.byte	0x3
	.uahalf	0x1ef
	.uaword	0x462c
	.byte	0
	.byte	0
	.uleb128 0x12
	.uaword	0x3a8d
	.uaword	0x462c
	.uleb128 0x13
	.uaword	0x2dda
	.byte	0
	.byte	0
	.uleb128 0xe
	.uaword	0x461c
	.uleb128 0x9
	.string	"Ifx_SRC_GHSCT"
	.byte	0x3
	.uahalf	0x1f0
	.uaword	0x4647
	.uleb128 0xe
	.uaword	0x45f5
	.uleb128 0x7
	.string	"_Ifx_SRC_GHSM"
	.byte	0x8
	.byte	0x3
	.uahalf	0x1f3
	.uaword	0x4671
	.uleb128 0x10
	.string	"HSM"
	.byte	0x3
	.uahalf	0x1f5
	.uaword	0x4681
	.byte	0
	.byte	0
	.uleb128 0x12
	.uaword	0x3ac8
	.uaword	0x4681
	.uleb128 0x13
	.uaword	0x2dda
	.byte	0
	.byte	0
	.uleb128 0xe
	.uaword	0x4671
	.uleb128 0x9
	.string	"Ifx_SRC_GHSM"
	.byte	0x3
	.uahalf	0x1f6
	.uaword	0x469b
	.uleb128 0xe
	.uaword	0x464c
	.uleb128 0x7
	.string	"_Ifx_SRC_GHSSL"
	.byte	0x44
	.byte	0x3
	.uahalf	0x1f9
	.uaword	0x46d4
	.uleb128 0x10
	.string	"HSSL"
	.byte	0x3
	.uahalf	0x1fb
	.uaword	0x46e4
	.byte	0
	.uleb128 0x10
	.string	"EXI"
	.byte	0x3
	.uahalf	0x1fc
	.uaword	0x3204
	.byte	0x40
	.byte	0
	.uleb128 0x12
	.uaword	0x3b2d
	.uaword	0x46e4
	.uleb128 0x13
	.uaword	0x2dda
	.byte	0x3
	.byte	0
	.uleb128 0xe
	.uaword	0x46d4
	.uleb128 0x9
	.string	"Ifx_SRC_GHSSL"
	.byte	0x3
	.uahalf	0x1fd
	.uaword	0x46ff
	.uleb128 0xe
	.uaword	0x46a0
	.uleb128 0x7
	.string	"_Ifx_SRC_GI2C"
	.byte	0x50
	.byte	0x3
	.uahalf	0x200
	.uaword	0x4729
	.uleb128 0x10
	.string	"I2C"
	.byte	0x3
	.uahalf	0x202
	.uaword	0x4739
	.byte	0
	.byte	0
	.uleb128 0x12
	.uaword	0x3bcd
	.uaword	0x4739
	.uleb128 0x13
	.uaword	0x2dda
	.byte	0
	.byte	0
	.uleb128 0xe
	.uaword	0x4729
	.uleb128 0x9
	.string	"Ifx_SRC_GI2C"
	.byte	0x3
	.uahalf	0x203
	.uaword	0x4753
	.uleb128 0xe
	.uaword	0x4704
	.uleb128 0x7
	.string	"_Ifx_SRC_GLMU"
	.byte	0x4
	.byte	0x3
	.uahalf	0x206
	.uaword	0x477d
	.uleb128 0x10
	.string	"LMU"
	.byte	0x3
	.uahalf	0x208
	.uaword	0x478d
	.byte	0
	.byte	0
	.uleb128 0x12
	.uaword	0x3c09
	.uaword	0x478d
	.uleb128 0x13
	.uaword	0x2dda
	.byte	0
	.byte	0
	.uleb128 0xe
	.uaword	0x477d
	.uleb128 0x9
	.string	"Ifx_SRC_GLMU"
	.byte	0x3
	.uahalf	0x209
	.uaword	0x47a7
	.uleb128 0xe
	.uaword	0x4758
	.uleb128 0x7
	.string	"_Ifx_SRC_GMSC"
	.byte	0x28
	.byte	0x3
	.uahalf	0x20c
	.uaword	0x47d1
	.uleb128 0x10
	.string	"MSC"
	.byte	0x3
	.uahalf	0x20e
	.uaword	0x47e1
	.byte	0
	.byte	0
	.uleb128 0x12
	.uaword	0x3c7a
	.uaword	0x47e1
	.uleb128 0x13
	.uaword	0x2dda
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.uaword	0x47d1
	.uleb128 0x9
	.string	"Ifx_SRC_GMSC"
	.byte	0x3
	.uahalf	0x20f
	.uaword	0x47fb
	.uleb128 0xe
	.uaword	0x47ac
	.uleb128 0x7
	.string	"_Ifx_SRC_GPMU"
	.byte	0x8
	.byte	0x3
	.uahalf	0x212
	.uaword	0x4825
	.uleb128 0x10
	.string	"PMU"
	.byte	0x3
	.uahalf	0x214
	.uaword	0x4835
	.byte	0
	.byte	0
	.uleb128 0x12
	.uaword	0x3cb6
	.uaword	0x4835
	.uleb128 0x13
	.uaword	0x2dda
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.uaword	0x4825
	.uleb128 0x9
	.string	"Ifx_SRC_GPMU"
	.byte	0x3
	.uahalf	0x215
	.uaword	0x484f
	.uleb128 0xe
	.uaword	0x4800
	.uleb128 0x7
	.string	"_Ifx_SRC_GPSI5"
	.byte	0x20
	.byte	0x3
	.uahalf	0x218
	.uaword	0x487b
	.uleb128 0x10
	.string	"PSI5"
	.byte	0x3
	.uahalf	0x21a
	.uaword	0x488b
	.byte	0
	.byte	0
	.uleb128 0x12
	.uaword	0x3d03
	.uaword	0x488b
	.uleb128 0x13
	.uaword	0x2dda
	.byte	0
	.byte	0
	.uleb128 0xe
	.uaword	0x487b
	.uleb128 0x9
	.string	"Ifx_SRC_GPSI5"
	.byte	0x3
	.uahalf	0x21b
	.uaword	0x48a6
	.uleb128 0xe
	.uaword	0x4854
	.uleb128 0x7
	.string	"_Ifx_SRC_GPSI5S"
	.byte	0x20
	.byte	0x3
	.uahalf	0x21e
	.uaword	0x48d4
	.uleb128 0x10
	.string	"PSI5S"
	.byte	0x3
	.uahalf	0x220
	.uaword	0x48e4
	.byte	0
	.byte	0
	.uleb128 0x12
	.uaword	0x3d42
	.uaword	0x48e4
	.uleb128 0x13
	.uaword	0x2dda
	.byte	0
	.byte	0
	.uleb128 0xe
	.uaword	0x48d4
	.uleb128 0x9
	.string	"Ifx_SRC_GPSI5S"
	.byte	0x3
	.uahalf	0x221
	.uaword	0x4900
	.uleb128 0xe
	.uaword	0x48ab
	.uleb128 0x7
	.string	"_Ifx_SRC_GQSPI"
	.byte	0x60
	.byte	0x3
	.uahalf	0x224
	.uaword	0x492c
	.uleb128 0x10
	.string	"QSPI"
	.byte	0x3
	.uahalf	0x226
	.uaword	0x493c
	.byte	0
	.byte	0
	.uleb128 0x12
	.uaword	0x3dbe
	.uaword	0x493c
	.uleb128 0x13
	.uaword	0x2dda
	.byte	0x3
	.byte	0
	.uleb128 0xe
	.uaword	0x492c
	.uleb128 0x9
	.string	"Ifx_SRC_GQSPI"
	.byte	0x3
	.uahalf	0x227
	.uaword	0x4957
	.uleb128 0xe
	.uaword	0x4905
	.uleb128 0x7
	.string	"_Ifx_SRC_GSCU"
	.byte	0x14
	.byte	0x3
	.uahalf	0x22a
	.uaword	0x4981
	.uleb128 0x10
	.string	"SCU"
	.byte	0x3
	.uahalf	0x22c
	.uaword	0x3e09
	.byte	0
	.byte	0
	.uleb128 0x9
	.string	"Ifx_SRC_GSCU"
	.byte	0x3
	.uahalf	0x22d
	.uaword	0x4996
	.uleb128 0xe
	.uaword	0x495c
	.uleb128 0x7
	.string	"_Ifx_SRC_GSENT"
	.byte	0x28
	.byte	0x3
	.uahalf	0x230
	.uaword	0x49c2
	.uleb128 0x10
	.string	"SENT"
	.byte	0x3
	.uahalf	0x232
	.uaword	0x49d2
	.byte	0
	.byte	0
	.uleb128 0x12
	.uaword	0x3e56
	.uaword	0x49d2
	.uleb128 0x13
	.uaword	0x2dda
	.byte	0
	.byte	0
	.uleb128 0xe
	.uaword	0x49c2
	.uleb128 0x9
	.string	"Ifx_SRC_GSENT"
	.byte	0x3
	.uahalf	0x233
	.uaword	0x49ed
	.uleb128 0xe
	.uaword	0x499b
	.uleb128 0x7
	.string	"_Ifx_SRC_GSMU"
	.byte	0xc
	.byte	0x3
	.uahalf	0x236
	.uaword	0x4a17
	.uleb128 0x10
	.string	"SMU"
	.byte	0x3
	.uahalf	0x238
	.uaword	0x4a27
	.byte	0
	.byte	0
	.uleb128 0x12
	.uaword	0x3e93
	.uaword	0x4a27
	.uleb128 0x13
	.uaword	0x2dda
	.byte	0
	.byte	0
	.uleb128 0xe
	.uaword	0x4a17
	.uleb128 0x9
	.string	"Ifx_SRC_GSMU"
	.byte	0x3
	.uahalf	0x239
	.uaword	0x4a41
	.uleb128 0xe
	.uaword	0x49f2
	.uleb128 0x7
	.string	"_Ifx_SRC_GSTM"
	.byte	0x18
	.byte	0x3
	.uahalf	0x23c
	.uaword	0x4a6b
	.uleb128 0x10
	.string	"STM"
	.byte	0x3
	.uahalf	0x23e
	.uaword	0x4a7b
	.byte	0
	.byte	0
	.uleb128 0x12
	.uaword	0x3edd
	.uaword	0x4a7b
	.uleb128 0x13
	.uaword	0x2dda
	.byte	0x2
	.byte	0
	.uleb128 0xe
	.uaword	0x4a6b
	.uleb128 0x9
	.string	"Ifx_SRC_GSTM"
	.byte	0x3
	.uahalf	0x23f
	.uaword	0x4a95
	.uleb128 0xe
	.uaword	0x4a46
	.uleb128 0xf
	.string	"_Ifx_SRC_GVADC"
	.uahalf	0x140
	.byte	0x3
	.uahalf	0x242
	.uaword	0x4ae1
	.uleb128 0x10
	.string	"G"
	.byte	0x3
	.uahalf	0x244
	.uaword	0x4af1
	.byte	0
	.uleb128 0x10
	.string	"reserved_80"
	.byte	0x3
	.uahalf	0x245
	.uaword	0x4af6
	.byte	0x80
	.uleb128 0x14
	.string	"CG"
	.byte	0x3
	.uahalf	0x246
	.uaword	0x4b16
	.uahalf	0x120
	.byte	0
	.uleb128 0x12
	.uaword	0x3fad
	.uaword	0x4af1
	.uleb128 0x13
	.uaword	0x2dda
	.byte	0x7
	.byte	0
	.uleb128 0xe
	.uaword	0x4ae1
	.uleb128 0x12
	.uaword	0x2de6
	.uaword	0x4b06
	.uleb128 0x13
	.uaword	0x2dda
	.byte	0x9f
	.byte	0
	.uleb128 0x12
	.uaword	0x3f44
	.uaword	0x4b16
	.uleb128 0x13
	.uaword	0x2dda
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.uaword	0x4b06
	.uleb128 0x9
	.string	"Ifx_SRC_GVADC"
	.byte	0x3
	.uahalf	0x247
	.uaword	0x4b31
	.uleb128 0xe
	.uaword	0x4a9a
	.uleb128 0x7
	.string	"_Ifx_SRC_GXBAR"
	.byte	0x4
	.byte	0x3
	.uahalf	0x24a
	.uaword	0x4b5d
	.uleb128 0x10
	.string	"XBAR"
	.byte	0x3
	.uahalf	0x24c
	.uaword	0x3fed
	.byte	0
	.byte	0
	.uleb128 0x9
	.string	"Ifx_SRC_GXBAR"
	.byte	0x3
	.uahalf	0x24d
	.uaword	0x4b73
	.uleb128 0xe
	.uaword	0x4b36
	.uleb128 0xf
	.string	"_Ifx_SRC"
	.uahalf	0x2000
	.byte	0x3
	.uahalf	0x25a
	.uaword	0x4ffd
	.uleb128 0x10
	.string	"CPU"
	.byte	0x3
	.uahalf	0x25c
	.uaword	0x427c
	.byte	0
	.uleb128 0x11
	.uaword	.LASF24
	.byte	0x3
	.uahalf	0x25d
	.uaword	0x4ffd
	.byte	0xc
	.uleb128 0x10
	.string	"EMEM"
	.byte	0x3
	.uahalf	0x25e
	.uaword	0x43d5
	.byte	0x20
	.uleb128 0x10
	.string	"AGBT"
	.byte	0x3
	.uahalf	0x25f
	.uaword	0x4043
	.byte	0x24
	.uleb128 0x11
	.uaword	.LASF13
	.byte	0x3
	.uahalf	0x260
	.uaword	0x37a5
	.byte	0x28
	.uleb128 0x10
	.string	"BCU"
	.byte	0x3
	.uahalf	0x261
	.uaword	0x40e0
	.byte	0x40
	.uleb128 0x10
	.string	"reserved_44"
	.byte	0x3
	.uahalf	0x262
	.uaword	0x2fe0
	.byte	0x44
	.uleb128 0x10
	.string	"XBAR"
	.byte	0x3
	.uahalf	0x263
	.uaword	0x4b5d
	.byte	0x48
	.uleb128 0x11
	.uaword	.LASF22
	.byte	0x3
	.uahalf	0x264
	.uaword	0x2fe0
	.byte	0x4c
	.uleb128 0x11
	.uaword	.LASF23
	.byte	0x3
	.uahalf	0x265
	.uaword	0x41cf
	.byte	0x50
	.uleb128 0x10
	.string	"reserved_58"
	.byte	0x3
	.uahalf	0x266
	.uaword	0x3040
	.byte	0x58
	.uleb128 0x10
	.string	"ASCLIN"
	.byte	0x3
	.uahalf	0x267
	.uaword	0x409e
	.byte	0x80
	.uleb128 0x10
	.string	"reserved_B0"
	.byte	0x3
	.uahalf	0x268
	.uaword	0x500d
	.byte	0xb0
	.uleb128 0x14
	.string	"QSPI"
	.byte	0x3
	.uahalf	0x269
	.uaword	0x4941
	.uahalf	0x190
	.uleb128 0x14
	.string	"reserved_1F0"
	.byte	0x3
	.uahalf	0x26a
	.uaword	0x4af6
	.uahalf	0x1f0
	.uleb128 0x14
	.string	"HSCT"
	.byte	0x3
	.uahalf	0x26b
	.uaword	0x4631
	.uahalf	0x290
	.uleb128 0x14
	.string	"reserved_294"
	.byte	0x3
	.uahalf	0x26c
	.uaword	0x3507
	.uahalf	0x294
	.uleb128 0x14
	.string	"HSSL"
	.byte	0x3
	.uahalf	0x26d
	.uaword	0x46e9
	.uahalf	0x2a0
	.uleb128 0x14
	.string	"reserved_2E4"
	.byte	0x3
	.uahalf	0x26e
	.uaword	0x501d
	.uahalf	0x2e4
	.uleb128 0x14
	.string	"I2C"
	.byte	0x3
	.uahalf	0x26f
	.uaword	0x473e
	.uahalf	0x300
	.uleb128 0x14
	.string	"SENT"
	.byte	0x3
	.uahalf	0x270
	.uaword	0x49d7
	.uahalf	0x350
	.uleb128 0x14
	.string	"reserved_378"
	.byte	0x3
	.uahalf	0x271
	.uaword	0x502d
	.uahalf	0x378
	.uleb128 0x14
	.string	"MSC"
	.byte	0x3
	.uahalf	0x272
	.uaword	0x47e6
	.uahalf	0x3e0
	.uleb128 0x14
	.string	"reserved_408"
	.byte	0x3
	.uahalf	0x273
	.uaword	0x37a5
	.uahalf	0x408
	.uleb128 0x14
	.string	"CCU6"
	.byte	0x3
	.uahalf	0x274
	.uaword	0x418a
	.uahalf	0x420
	.uleb128 0x14
	.string	"reserved_440"
	.byte	0x3
	.uahalf	0x275
	.uaword	0x3020
	.uahalf	0x440
	.uleb128 0x14
	.string	"GPT12"
	.byte	0x3
	.uahalf	0x276
	.uaword	0x4584
	.uahalf	0x460
	.uleb128 0x14
	.string	"STM"
	.byte	0x3
	.uahalf	0x277
	.uaword	0x4a80
	.uahalf	0x490
	.uleb128 0x14
	.string	"reserved_4A8"
	.byte	0x3
	.uahalf	0x278
	.uaword	0x2dca
	.uahalf	0x4a8
	.uleb128 0x14
	.string	"FCE"
	.byte	0x3
	.uahalf	0x279
	.uaword	0x44d5
	.uahalf	0x4b0
	.uleb128 0x14
	.string	"reserved_4B4"
	.byte	0x3
	.uahalf	0x27a
	.uaword	0x503d
	.uahalf	0x4b4
	.uleb128 0x14
	.string	"DMA"
	.byte	0x3
	.uahalf	0x27b
	.uaword	0x4325
	.uahalf	0x4f0
	.uleb128 0x15
	.uaword	.LASF20
	.byte	0x3
	.uahalf	0x27c
	.uaword	0x504d
	.uahalf	0x600
	.uleb128 0x14
	.string	"ETH"
	.byte	0x3
	.uahalf	0x27d
	.uaword	0x4481
	.uahalf	0x8f0
	.uleb128 0x14
	.string	"reserved_8F4"
	.byte	0x3
	.uahalf	0x27e
	.uaword	0x3507
	.uahalf	0x8f4
	.uleb128 0x14
	.string	"CAN"
	.byte	0x3
	.uahalf	0x27f
	.uaword	0x4134
	.uahalf	0x900
	.uleb128 0x14
	.string	"reserved_940"
	.byte	0x3
	.uahalf	0x280
	.uaword	0x505e
	.uahalf	0x940
	.uleb128 0x14
	.string	"VADC"
	.byte	0x3
	.uahalf	0x281
	.uaword	0x4b1b
	.uahalf	0x980
	.uleb128 0x14
	.string	"reserved_AC0"
	.byte	0x3
	.uahalf	0x282
	.uaword	0x506e
	.uahalf	0xac0
	.uleb128 0x14
	.string	"DSADC"
	.byte	0x3
	.uahalf	0x283
	.uaword	0x437d
	.uahalf	0xb50
	.uleb128 0x14
	.string	"reserved_B80"
	.byte	0x3
	.uahalf	0x284
	.uaword	0x39ae
	.uahalf	0xb80
	.uleb128 0x14
	.string	"ERAY"
	.byte	0x3
	.uahalf	0x285
	.uaword	0x442c
	.uahalf	0xbe0
	.uleb128 0x14
	.string	"PMU"
	.byte	0x3
	.uahalf	0x286
	.uaword	0x483a
	.uahalf	0xc30
	.uleb128 0x14
	.string	"reserved_C38"
	.byte	0x3
	.uahalf	0x287
	.uaword	0x507e
	.uahalf	0xc38
	.uleb128 0x14
	.string	"HSM"
	.byte	0x3
	.uahalf	0x288
	.uaword	0x4686
	.uahalf	0xcc0
	.uleb128 0x14
	.string	"reserved_CC8"
	.byte	0x3
	.uahalf	0x289
	.uaword	0x2dca
	.uahalf	0xcc8
	.uleb128 0x14
	.string	"SCU"
	.byte	0x3
	.uahalf	0x28a
	.uaword	0x4981
	.uahalf	0xcd0
	.uleb128 0x14
	.string	"reserved_CE4"
	.byte	0x3
	.uahalf	0x28b
	.uaword	0x508e
	.uahalf	0xce4
	.uleb128 0x14
	.string	"SMU"
	.byte	0x3
	.uahalf	0x28c
	.uaword	0x4a2c
	.uahalf	0xd10
	.uleb128 0x14
	.string	"reserved_D1C"
	.byte	0x3
	.uahalf	0x28d
	.uaword	0x4ffd
	.uahalf	0xd1c
	.uleb128 0x14
	.string	"PSI5"
	.byte	0x3
	.uahalf	0x28e
	.uaword	0x4890
	.uahalf	0xd30
	.uleb128 0x14
	.string	"reserved_D50"
	.byte	0x3
	.uahalf	0x28f
	.uaword	0x3020
	.uahalf	0xd50
	.uleb128 0x14
	.string	"DAM"
	.byte	0x3
	.uahalf	0x290
	.uaword	0x42d0
	.uahalf	0xd70
	.uleb128 0x14
	.string	"reserved_D88"
	.byte	0x3
	.uahalf	0x291
	.uaword	0x37a5
	.uahalf	0xd88
	.uleb128 0x14
	.string	"CIF"
	.byte	0x3
	.uahalf	0x292
	.uaword	0x4228
	.uahalf	0xda0
	.uleb128 0x14
	.string	"reserved_DB0"
	.byte	0x3
	.uahalf	0x293
	.uaword	0x3a43
	.uahalf	0xdb0
	.uleb128 0x14
	.string	"LMU"
	.byte	0x3
	.uahalf	0x294
	.uaword	0x4792
	.uahalf	0xde0
	.uleb128 0x14
	.string	"reserved_DE4"
	.byte	0x3
	.uahalf	0x295
	.uaword	0x3507
	.uahalf	0xde4
	.uleb128 0x14
	.string	"PSI5S"
	.byte	0x3
	.uahalf	0x296
	.uaword	0x48e9
	.uahalf	0xdf0
	.uleb128 0x14
	.string	"reserved_E10"
	.byte	0x3
	.uahalf	0x297
	.uaword	0x509e
	.uahalf	0xe10
	.uleb128 0x14
	.string	"GPSR"
	.byte	0x3
	.uahalf	0x298
	.uaword	0x452b
	.uahalf	0x1000
	.uleb128 0x14
	.string	"reserved_1060"
	.byte	0x3
	.uahalf	0x299
	.uaword	0x50af
	.uahalf	0x1060
	.uleb128 0x14
	.string	"GTM"
	.byte	0x3
	.uahalf	0x29a
	.uaword	0x45db
	.uahalf	0x1600
	.uleb128 0x14
	.string	"reserved_1F50"
	.byte	0x3
	.uahalf	0x29b
	.uaword	0x50c0
	.uahalf	0x1f50
	.byte	0
	.uleb128 0x12
	.uaword	0x2de6
	.uaword	0x500d
	.uleb128 0x13
	.uaword	0x2dda
	.byte	0x13
	.byte	0
	.uleb128 0x12
	.uaword	0x2de6
	.uaword	0x501d
	.uleb128 0x13
	.uaword	0x2dda
	.byte	0xdf
	.byte	0
	.uleb128 0x12
	.uaword	0x2de6
	.uaword	0x502d
	.uleb128 0x13
	.uaword	0x2dda
	.byte	0x1b
	.byte	0
	.uleb128 0x12
	.uaword	0x2de6
	.uaword	0x503d
	.uleb128 0x13
	.uaword	0x2dda
	.byte	0x67
	.byte	0
	.uleb128 0x12
	.uaword	0x2de6
	.uaword	0x504d
	.uleb128 0x13
	.uaword	0x2dda
	.byte	0x3b
	.byte	0
	.uleb128 0x12
	.uaword	0x2de6
	.uaword	0x505e
	.uleb128 0x16
	.uaword	0x2dda
	.uahalf	0x2ef
	.byte	0
	.uleb128 0x12
	.uaword	0x2de6
	.uaword	0x506e
	.uleb128 0x13
	.uaword	0x2dda
	.byte	0x3f
	.byte	0
	.uleb128 0x12
	.uaword	0x2de6
	.uaword	0x507e
	.uleb128 0x13
	.uaword	0x2dda
	.byte	0x8f
	.byte	0
	.uleb128 0x12
	.uaword	0x2de6
	.uaword	0x508e
	.uleb128 0x13
	.uaword	0x2dda
	.byte	0x87
	.byte	0
	.uleb128 0x12
	.uaword	0x2de6
	.uaword	0x509e
	.uleb128 0x13
	.uaword	0x2dda
	.byte	0x2b
	.byte	0
	.uleb128 0x12
	.uaword	0x2de6
	.uaword	0x50af
	.uleb128 0x16
	.uaword	0x2dda
	.uahalf	0x1ef
	.byte	0
	.uleb128 0x12
	.uaword	0x2de6
	.uaword	0x50c0
	.uleb128 0x16
	.uaword	0x2dda
	.uahalf	0x59f
	.byte	0
	.uleb128 0x12
	.uaword	0x2de6
	.uaword	0x50d0
	.uleb128 0x13
	.uaword	0x2dda
	.byte	0xaf
	.byte	0
	.uleb128 0x9
	.string	"Ifx_SRC"
	.byte	0x3
	.uahalf	0x29c
	.uaword	0x50e0
	.uleb128 0xe
	.uaword	0x4b78
	.uleb128 0x5
	.string	"__gnuc_va_list"
	.byte	0x4
	.byte	0x28
	.uaword	0x50fb
	.uleb128 0x1d
	.byte	0x4
	.string	"__builtin_va_list"
	.uleb128 0x5
	.string	"va_list"
	.byte	0x4
	.byte	0x66
	.uaword	0x50e5
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x1e
	.byte	0x4
	.uleb128 0x1f
	.byte	0x4
	.uaword	0x51a4
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x1f
	.byte	0x4
	.uaword	0x51b2
	.uleb128 0x20
	.uaword	0x51a4
	.uleb128 0x5
	.string	"uint8"
	.byte	0x5
	.byte	0x59
	.uaword	0x2de6
	.uleb128 0x5
	.string	"sint16"
	.byte	0x5
	.byte	0x5a
	.uaword	0x5142
	.uleb128 0x5
	.string	"uint16"
	.byte	0x5
	.byte	0x5b
	.uaword	0x514f
	.uleb128 0x5
	.string	"sint32"
	.byte	0x5
	.byte	0x5c
	.uaword	0x5190
	.uleb128 0x5
	.string	"uint32"
	.byte	0x5
	.byte	0x5d
	.uaword	0x511e
	.uleb128 0x5
	.string	"float32"
	.byte	0x5
	.byte	0x5e
	.uaword	0x520b
	.uleb128 0x4
	.byte	0x4
	.byte	0x4
	.string	"float"
	.uleb128 0x4
	.byte	0x8
	.byte	0x4
	.string	"double"
	.uleb128 0x5
	.string	"boolean"
	.byte	0x5
	.byte	0x68
	.uaword	0x2de6
	.uleb128 0x21
	.byte	0x4
	.byte	0x6
	.byte	0x5f
	.uaword	0x52a6
	.uleb128 0x22
	.string	"Ifx_RxSel_a"
	.sleb128 0
	.uleb128 0x22
	.string	"Ifx_RxSel_b"
	.sleb128 1
	.uleb128 0x22
	.string	"Ifx_RxSel_c"
	.sleb128 2
	.uleb128 0x22
	.string	"Ifx_RxSel_d"
	.sleb128 3
	.uleb128 0x22
	.string	"Ifx_RxSel_e"
	.sleb128 4
	.uleb128 0x22
	.string	"Ifx_RxSel_f"
	.sleb128 5
	.uleb128 0x22
	.string	"Ifx_RxSel_g"
	.sleb128 6
	.uleb128 0x22
	.string	"Ifx_RxSel_h"
	.sleb128 7
	.byte	0
	.uleb128 0x5
	.string	"Ifx_RxSel"
	.byte	0x6
	.byte	0x68
	.uaword	0x522d
	.uleb128 0x21
	.byte	0x4
	.byte	0x7
	.byte	0x32
	.uaword	0x5307
	.uleb128 0x22
	.string	"IfxSrc_Tos_cpu0"
	.sleb128 0
	.uleb128 0x22
	.string	"IfxSrc_Tos_cpu1"
	.sleb128 1
	.uleb128 0x22
	.string	"IfxSrc_Tos_cpu2"
	.sleb128 2
	.uleb128 0x22
	.string	"IfxSrc_Tos_dma"
	.sleb128 3
	.byte	0
	.uleb128 0x5
	.string	"IfxSrc_Tos"
	.byte	0x7
	.byte	0x37
	.uaword	0x52b7
	.uleb128 0x21
	.byte	0x4
	.byte	0x8
	.byte	0x3e
	.uaword	0x5398
	.uleb128 0x22
	.string	"IfxMultican_NodeId_none"
	.sleb128 -1
	.uleb128 0x22
	.string	"IfxMultican_NodeId_0"
	.sleb128 0
	.uleb128 0x22
	.string	"IfxMultican_NodeId_1"
	.sleb128 1
	.uleb128 0x22
	.string	"IfxMultican_NodeId_2"
	.sleb128 2
	.uleb128 0x22
	.string	"IfxMultican_NodeId_3"
	.sleb128 3
	.byte	0
	.uleb128 0x5
	.string	"IfxMultican_NodeId"
	.byte	0x8
	.byte	0x44
	.uaword	0x5319
	.uleb128 0x21
	.byte	0x4
	.byte	0x8
	.byte	0x49
	.uaword	0x5521
	.uleb128 0x22
	.string	"IfxMultican_SrcId_0"
	.sleb128 0
	.uleb128 0x22
	.string	"IfxMultican_SrcId_1"
	.sleb128 1
	.uleb128 0x22
	.string	"IfxMultican_SrcId_2"
	.sleb128 2
	.uleb128 0x22
	.string	"IfxMultican_SrcId_3"
	.sleb128 3
	.uleb128 0x22
	.string	"IfxMultican_SrcId_4"
	.sleb128 4
	.uleb128 0x22
	.string	"IfxMultican_SrcId_5"
	.sleb128 5
	.uleb128 0x22
	.string	"IfxMultican_SrcId_6"
	.sleb128 6
	.uleb128 0x22
	.string	"IfxMultican_SrcId_7"
	.sleb128 7
	.uleb128 0x22
	.string	"IfxMultican_SrcId_8"
	.sleb128 8
	.uleb128 0x22
	.string	"IfxMultican_SrcId_9"
	.sleb128 9
	.uleb128 0x22
	.string	"IfxMultican_SrcId_10"
	.sleb128 10
	.uleb128 0x22
	.string	"IfxMultican_SrcId_11"
	.sleb128 11
	.uleb128 0x22
	.string	"IfxMultican_SrcId_12"
	.sleb128 12
	.uleb128 0x22
	.string	"IfxMultican_SrcId_13"
	.sleb128 13
	.uleb128 0x22
	.string	"IfxMultican_SrcId_14"
	.sleb128 14
	.uleb128 0x22
	.string	"IfxMultican_SrcId_15"
	.sleb128 15
	.byte	0
	.uleb128 0x5
	.string	"IfxMultican_SrcId"
	.byte	0x8
	.byte	0x5a
	.uaword	0x53b2
	.uleb128 0x2
	.string	"_Ifx_P_ACCEN0_Bits"
	.byte	0x4
	.byte	0x9
	.byte	0x2d
	.uaword	0x574c
	.uleb128 0x3
	.string	"EN0"
	.byte	0x9
	.byte	0x2f
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x3
	.string	"EN1"
	.byte	0x9
	.byte	0x30
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x3
	.string	"EN2"
	.byte	0x9
	.byte	0x31
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x3
	.string	"EN3"
	.byte	0x9
	.byte	0x32
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x3
	.string	"EN4"
	.byte	0x9
	.byte	0x33
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x3
	.string	"EN5"
	.byte	0x9
	.byte	0x34
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x3
	.string	"EN6"
	.byte	0x9
	.byte	0x35
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x3
	.string	"EN7"
	.byte	0x9
	.byte	0x36
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.string	"EN8"
	.byte	0x9
	.byte	0x37
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x3
	.string	"EN9"
	.byte	0x9
	.byte	0x38
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x3
	.string	"EN10"
	.byte	0x9
	.byte	0x39
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x3
	.string	"EN11"
	.byte	0x9
	.byte	0x3a
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x3
	.string	"EN12"
	.byte	0x9
	.byte	0x3b
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x3
	.string	"EN13"
	.byte	0x9
	.byte	0x3c
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x3
	.string	"EN14"
	.byte	0x9
	.byte	0x3d
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x3
	.string	"EN15"
	.byte	0x9
	.byte	0x3e
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.string	"EN16"
	.byte	0x9
	.byte	0x3f
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x3
	.string	"EN17"
	.byte	0x9
	.byte	0x40
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0x3
	.string	"EN18"
	.byte	0x9
	.byte	0x41
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0x3
	.string	"EN19"
	.byte	0x9
	.byte	0x42
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.string	"EN20"
	.byte	0x9
	.byte	0x43
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0x3
	.string	"EN21"
	.byte	0x9
	.byte	0x44
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0x3
	.string	"EN22"
	.byte	0x9
	.byte	0x45
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0x3
	.string	"EN23"
	.byte	0x9
	.byte	0x46
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.string	"EN24"
	.byte	0x9
	.byte	0x47
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.string	"EN25"
	.byte	0x9
	.byte	0x48
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x3
	.string	"EN26"
	.byte	0x9
	.byte	0x49
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.string	"EN27"
	.byte	0x9
	.byte	0x4a
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.string	"EN28"
	.byte	0x9
	.byte	0x4b
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.string	"EN29"
	.byte	0x9
	.byte	0x4c
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.string	"EN30"
	.byte	0x9
	.byte	0x4d
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.string	"EN31"
	.byte	0x9
	.byte	0x4e
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_P_ACCEN0_Bits"
	.byte	0x9
	.byte	0x4f
	.uaword	0x553a
	.uleb128 0x2
	.string	"_Ifx_P_ACCEN1_Bits"
	.byte	0x4
	.byte	0x9
	.byte	0x52
	.uaword	0x5790
	.uleb128 0x6
	.uaword	.LASF0
	.byte	0x9
	.byte	0x54
	.uaword	0x3c4
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_P_ACCEN1_Bits"
	.byte	0x9
	.byte	0x55
	.uaword	0x5765
	.uleb128 0x2
	.string	"_Ifx_P_ESR_Bits"
	.byte	0x4
	.byte	0x9
	.byte	0x58
	.uaword	0x58c7
	.uleb128 0x3
	.string	"EN0"
	.byte	0x9
	.byte	0x5a
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x3
	.string	"EN1"
	.byte	0x9
	.byte	0x5b
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x3
	.string	"EN2"
	.byte	0x9
	.byte	0x5c
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x3
	.string	"EN3"
	.byte	0x9
	.byte	0x5d
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x3
	.string	"EN4"
	.byte	0x9
	.byte	0x5e
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x3
	.string	"EN5"
	.byte	0x9
	.byte	0x5f
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x3
	.string	"EN6"
	.byte	0x9
	.byte	0x60
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x3
	.string	"EN7"
	.byte	0x9
	.byte	0x61
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.string	"EN8"
	.byte	0x9
	.byte	0x62
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x3
	.string	"EN9"
	.byte	0x9
	.byte	0x63
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x3
	.string	"EN10"
	.byte	0x9
	.byte	0x64
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x3
	.string	"EN11"
	.byte	0x9
	.byte	0x65
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x3
	.string	"EN12"
	.byte	0x9
	.byte	0x66
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x3
	.string	"EN13"
	.byte	0x9
	.byte	0x67
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x3
	.string	"EN14"
	.byte	0x9
	.byte	0x68
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x3
	.string	"EN15"
	.byte	0x9
	.byte	0x69
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.uaword	.LASF4
	.byte	0x9
	.byte	0x6a
	.uaword	0x3c4
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_P_ESR_Bits"
	.byte	0x9
	.byte	0x6b
	.uaword	0x57a9
	.uleb128 0x2
	.string	"_Ifx_P_ID_Bits"
	.byte	0x4
	.byte	0x9
	.byte	0x6e
	.uaword	0x5929
	.uleb128 0x3
	.string	"MODREV"
	.byte	0x9
	.byte	0x70
	.uaword	0x3c4
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.string	"MODTYPE"
	.byte	0x9
	.byte	0x71
	.uaword	0x3c4
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.uaword	.LASF5
	.byte	0x9
	.byte	0x72
	.uaword	0x3c4
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_P_ID_Bits"
	.byte	0x9
	.byte	0x73
	.uaword	0x58dd
	.uleb128 0x2
	.string	"_Ifx_P_IN_Bits"
	.byte	0x4
	.byte	0x9
	.byte	0x76
	.uaword	0x5a4b
	.uleb128 0x3
	.string	"P0"
	.byte	0x9
	.byte	0x78
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x3
	.string	"P1"
	.byte	0x9
	.byte	0x79
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x3
	.string	"P2"
	.byte	0x9
	.byte	0x7a
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x3
	.string	"P3"
	.byte	0x9
	.byte	0x7b
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x3
	.string	"P4"
	.byte	0x9
	.byte	0x7c
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x3
	.string	"P5"
	.byte	0x9
	.byte	0x7d
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x3
	.string	"P6"
	.byte	0x9
	.byte	0x7e
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x3
	.string	"P7"
	.byte	0x9
	.byte	0x7f
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.string	"P8"
	.byte	0x9
	.byte	0x80
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x3
	.string	"P9"
	.byte	0x9
	.byte	0x81
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x3
	.string	"P10"
	.byte	0x9
	.byte	0x82
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x3
	.string	"P11"
	.byte	0x9
	.byte	0x83
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x3
	.string	"P12"
	.byte	0x9
	.byte	0x84
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x3
	.string	"P13"
	.byte	0x9
	.byte	0x85
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x3
	.string	"P14"
	.byte	0x9
	.byte	0x86
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x3
	.string	"P15"
	.byte	0x9
	.byte	0x87
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.uaword	.LASF4
	.byte	0x9
	.byte	0x88
	.uaword	0x3c4
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_P_IN_Bits"
	.byte	0x9
	.byte	0x89
	.uaword	0x593e
	.uleb128 0x2
	.string	"_Ifx_P_IOCR0_Bits"
	.byte	0x4
	.byte	0x9
	.byte	0x8c
	.uaword	0x5af3
	.uleb128 0x6
	.uaword	.LASF0
	.byte	0x9
	.byte	0x8e
	.uaword	0x3c4
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0x3
	.string	"PC0"
	.byte	0x9
	.byte	0x8f
	.uaword	0x3c4
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.uaword	.LASF21
	.byte	0x9
	.byte	0x90
	.uaword	0x3c4
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0x3
	.string	"PC1"
	.byte	0x9
	.byte	0x91
	.uaword	0x3c4
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.uaword	.LASF4
	.byte	0x9
	.byte	0x92
	.uaword	0x3c4
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0x3
	.string	"PC2"
	.byte	0x9
	.byte	0x93
	.uaword	0x3c4
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.uaword	.LASF18
	.byte	0x9
	.byte	0x94
	.uaword	0x3c4
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.string	"PC3"
	.byte	0x9
	.byte	0x95
	.uaword	0x3c4
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_P_IOCR0_Bits"
	.byte	0x9
	.byte	0x96
	.uaword	0x5a60
	.uleb128 0x2
	.string	"_Ifx_P_IOCR12_Bits"
	.byte	0x4
	.byte	0x9
	.byte	0x99
	.uaword	0x5ba3
	.uleb128 0x6
	.uaword	.LASF0
	.byte	0x9
	.byte	0x9b
	.uaword	0x3c4
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0x3
	.string	"PC12"
	.byte	0x9
	.byte	0x9c
	.uaword	0x3c4
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.uaword	.LASF21
	.byte	0x9
	.byte	0x9d
	.uaword	0x3c4
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0x3
	.string	"PC13"
	.byte	0x9
	.byte	0x9e
	.uaword	0x3c4
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.uaword	.LASF4
	.byte	0x9
	.byte	0x9f
	.uaword	0x3c4
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0x3
	.string	"PC14"
	.byte	0x9
	.byte	0xa0
	.uaword	0x3c4
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.uaword	.LASF18
	.byte	0x9
	.byte	0xa1
	.uaword	0x3c4
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.string	"PC15"
	.byte	0x9
	.byte	0xa2
	.uaword	0x3c4
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_P_IOCR12_Bits"
	.byte	0x9
	.byte	0xa3
	.uaword	0x5b0b
	.uleb128 0x2
	.string	"_Ifx_P_IOCR4_Bits"
	.byte	0x4
	.byte	0x9
	.byte	0xa6
	.uaword	0x5c4f
	.uleb128 0x6
	.uaword	.LASF0
	.byte	0x9
	.byte	0xa8
	.uaword	0x3c4
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0x3
	.string	"PC4"
	.byte	0x9
	.byte	0xa9
	.uaword	0x3c4
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.uaword	.LASF21
	.byte	0x9
	.byte	0xaa
	.uaword	0x3c4
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0x3
	.string	"PC5"
	.byte	0x9
	.byte	0xab
	.uaword	0x3c4
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.uaword	.LASF4
	.byte	0x9
	.byte	0xac
	.uaword	0x3c4
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0x3
	.string	"PC6"
	.byte	0x9
	.byte	0xad
	.uaword	0x3c4
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.uaword	.LASF18
	.byte	0x9
	.byte	0xae
	.uaword	0x3c4
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.string	"PC7"
	.byte	0x9
	.byte	0xaf
	.uaword	0x3c4
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_P_IOCR4_Bits"
	.byte	0x9
	.byte	0xb0
	.uaword	0x5bbc
	.uleb128 0x2
	.string	"_Ifx_P_IOCR8_Bits"
	.byte	0x4
	.byte	0x9
	.byte	0xb3
	.uaword	0x5cfc
	.uleb128 0x6
	.uaword	.LASF0
	.byte	0x9
	.byte	0xb5
	.uaword	0x3c4
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0x3
	.string	"PC8"
	.byte	0x9
	.byte	0xb6
	.uaword	0x3c4
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.uaword	.LASF21
	.byte	0x9
	.byte	0xb7
	.uaword	0x3c4
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0x3
	.string	"PC9"
	.byte	0x9
	.byte	0xb8
	.uaword	0x3c4
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.uaword	.LASF4
	.byte	0x9
	.byte	0xb9
	.uaword	0x3c4
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0x3
	.string	"PC10"
	.byte	0x9
	.byte	0xba
	.uaword	0x3c4
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.uaword	.LASF18
	.byte	0x9
	.byte	0xbb
	.uaword	0x3c4
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.string	"PC11"
	.byte	0x9
	.byte	0xbc
	.uaword	0x3c4
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_P_IOCR8_Bits"
	.byte	0x9
	.byte	0xbd
	.uaword	0x5c67
	.uleb128 0x2
	.string	"_Ifx_P_LPCR0_Bits"
	.byte	0x4
	.byte	0x9
	.byte	0xc0
	.uaword	0x5d5c
	.uleb128 0x6
	.uaword	.LASF0
	.byte	0x9
	.byte	0xc2
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x3
	.string	"PS1"
	.byte	0x9
	.byte	0xc3
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x6
	.uaword	.LASF1
	.byte	0x9
	.byte	0xc4
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_P_LPCR0_Bits"
	.byte	0x9
	.byte	0xc5
	.uaword	0x5d14
	.uleb128 0x2
	.string	"_Ifx_P_LPCR1_Bits"
	.byte	0x4
	.byte	0x9
	.byte	0xc8
	.uaword	0x5dbc
	.uleb128 0x6
	.uaword	.LASF0
	.byte	0x9
	.byte	0xca
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x3
	.string	"PS1"
	.byte	0x9
	.byte	0xcb
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x6
	.uaword	.LASF1
	.byte	0x9
	.byte	0xcc
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_P_LPCR1_Bits"
	.byte	0x9
	.byte	0xcd
	.uaword	0x5d74
	.uleb128 0x2
	.string	"_Ifx_P_LPCR1_P21_Bits"
	.byte	0x4
	.byte	0x9
	.byte	0xd0
	.uaword	0x5e4c
	.uleb128 0x3
	.string	"RDIS_CTRL"
	.byte	0x9
	.byte	0xd2
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x3
	.string	"RX_DIS"
	.byte	0x9
	.byte	0xd3
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x3
	.string	"TERM"
	.byte	0x9
	.byte	0xd4
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x3
	.string	"LRXTERM"
	.byte	0x9
	.byte	0xd5
	.uaword	0x3c4
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.uaword	.LASF21
	.byte	0x9
	.byte	0xd6
	.uaword	0x3c4
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_P_LPCR1_P21_Bits"
	.byte	0x9
	.byte	0xd7
	.uaword	0x5dd4
	.uleb128 0x2
	.string	"_Ifx_P_LPCR2_Bits"
	.byte	0x4
	.byte	0x9
	.byte	0xda
	.uaword	0x5f1f
	.uleb128 0x6
	.uaword	.LASF0
	.byte	0x9
	.byte	0xdc
	.uaword	0x3c4
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.string	"LVDSR"
	.byte	0x9
	.byte	0xdd
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x3
	.string	"LVDSRL"
	.byte	0x9
	.byte	0xde
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x6
	.uaword	.LASF3
	.byte	0x9
	.byte	0xdf
	.uaword	0x3c4
	.byte	0x4
	.byte	0x2
	.byte	0x14
	.byte	0
	.uleb128 0x3
	.string	"TDIS_CTRL"
	.byte	0x9
	.byte	0xe0
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x3
	.string	"TX_DIS"
	.byte	0x9
	.byte	0xe1
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x3
	.string	"TX_PD"
	.byte	0x9
	.byte	0xe2
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x3
	.string	"TX_PWDPD"
	.byte	0x9
	.byte	0xe3
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.uaword	.LASF4
	.byte	0x9
	.byte	0xe4
	.uaword	0x3c4
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_P_LPCR2_Bits"
	.byte	0x9
	.byte	0xe5
	.uaword	0x5e68
	.uleb128 0x2
	.string	"_Ifx_P_OMCR0_Bits"
	.byte	0x4
	.byte	0x9
	.byte	0xe8
	.uaword	0x5fb0
	.uleb128 0x6
	.uaword	.LASF0
	.byte	0x9
	.byte	0xea
	.uaword	0x3c4
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.string	"PCL0"
	.byte	0x9
	.byte	0xeb
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x3
	.string	"PCL1"
	.byte	0x9
	.byte	0xec
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0x3
	.string	"PCL2"
	.byte	0x9
	.byte	0xed
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0x3
	.string	"PCL3"
	.byte	0x9
	.byte	0xee
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x6
	.uaword	.LASF19
	.byte	0x9
	.byte	0xef
	.uaword	0x3c4
	.byte	0x4
	.byte	0xc
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_P_OMCR0_Bits"
	.byte	0x9
	.byte	0xf0
	.uaword	0x5f37
	.uleb128 0x2
	.string	"_Ifx_P_OMCR12_Bits"
	.byte	0x4
	.byte	0x9
	.byte	0xf3
	.uaword	0x6037
	.uleb128 0x6
	.uaword	.LASF0
	.byte	0x9
	.byte	0xf5
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1c
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.string	"PCL12"
	.byte	0x9
	.byte	0xf6
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.string	"PCL13"
	.byte	0x9
	.byte	0xf7
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.string	"PCL14"
	.byte	0x9
	.byte	0xf8
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.string	"PCL15"
	.byte	0x9
	.byte	0xf9
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_P_OMCR12_Bits"
	.byte	0x9
	.byte	0xfa
	.uaword	0x5fc8
	.uleb128 0x2
	.string	"_Ifx_P_OMCR4_Bits"
	.byte	0x4
	.byte	0x9
	.byte	0xfd
	.uaword	0x60ce
	.uleb128 0x6
	.uaword	.LASF0
	.byte	0x9
	.byte	0xff
	.uaword	0x3c4
	.byte	0x4
	.byte	0x14
	.byte	0xc
	.byte	0
	.uleb128 0x8
	.string	"PCL4"
	.byte	0x9
	.uahalf	0x100
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0x8
	.string	"PCL5"
	.byte	0x9
	.uahalf	0x101
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.string	"PCL6"
	.byte	0x9
	.uahalf	0x102
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0x8
	.string	"PCL7"
	.byte	0x9
	.uahalf	0x103
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.uaword	.LASF18
	.byte	0x9
	.uahalf	0x104
	.uaword	0x3c4
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
	.string	"Ifx_P_OMCR4_Bits"
	.byte	0x9
	.uahalf	0x105
	.uaword	0x6050
	.uleb128 0x7
	.string	"_Ifx_P_OMCR8_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x108
	.uaword	0x6169
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x9
	.uahalf	0x10a
	.uaword	0x3c4
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.string	"PCL8"
	.byte	0x9
	.uahalf	0x10b
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x8
	.string	"PCL9"
	.byte	0x9
	.uahalf	0x10c
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x8
	.string	"PCL10"
	.byte	0x9
	.uahalf	0x10d
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x8
	.string	"PCL11"
	.byte	0x9
	.uahalf	0x10e
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.uaword	.LASF13
	.byte	0x9
	.uahalf	0x10f
	.uaword	0x3c4
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
	.string	"Ifx_P_OMCR8_Bits"
	.byte	0x9
	.uahalf	0x110
	.uaword	0x60e7
	.uleb128 0x7
	.string	"_Ifx_P_OMCR_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x113
	.uaword	0x62c3
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x9
	.uahalf	0x115
	.uaword	0x3c4
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.string	"PCL0"
	.byte	0x9
	.uahalf	0x116
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x8
	.string	"PCL1"
	.byte	0x9
	.uahalf	0x117
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0x8
	.string	"PCL2"
	.byte	0x9
	.uahalf	0x118
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0x8
	.string	"PCL3"
	.byte	0x9
	.uahalf	0x119
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x8
	.string	"PCL4"
	.byte	0x9
	.uahalf	0x11a
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0x8
	.string	"PCL5"
	.byte	0x9
	.uahalf	0x11b
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.string	"PCL6"
	.byte	0x9
	.uahalf	0x11c
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0x8
	.string	"PCL7"
	.byte	0x9
	.uahalf	0x11d
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.string	"PCL8"
	.byte	0x9
	.uahalf	0x11e
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x8
	.string	"PCL9"
	.byte	0x9
	.uahalf	0x11f
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x8
	.string	"PCL10"
	.byte	0x9
	.uahalf	0x120
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x8
	.string	"PCL11"
	.byte	0x9
	.uahalf	0x121
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.string	"PCL12"
	.byte	0x9
	.uahalf	0x122
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.string	"PCL13"
	.byte	0x9
	.uahalf	0x123
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.string	"PCL14"
	.byte	0x9
	.uahalf	0x124
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.string	"PCL15"
	.byte	0x9
	.uahalf	0x125
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
	.string	"Ifx_P_OMCR_Bits"
	.byte	0x9
	.uahalf	0x126
	.uaword	0x6182
	.uleb128 0x7
	.string	"_Ifx_P_OMR_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x129
	.uaword	0x6511
	.uleb128 0x8
	.string	"PS0"
	.byte	0x9
	.uahalf	0x12b
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x8
	.string	"PS1"
	.byte	0x9
	.uahalf	0x12c
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x8
	.string	"PS2"
	.byte	0x9
	.uahalf	0x12d
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x8
	.string	"PS3"
	.byte	0x9
	.uahalf	0x12e
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x8
	.string	"PS4"
	.byte	0x9
	.uahalf	0x12f
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x8
	.string	"PS5"
	.byte	0x9
	.uahalf	0x130
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x8
	.string	"PS6"
	.byte	0x9
	.uahalf	0x131
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x8
	.string	"PS7"
	.byte	0x9
	.uahalf	0x132
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.string	"PS8"
	.byte	0x9
	.uahalf	0x133
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x8
	.string	"PS9"
	.byte	0x9
	.uahalf	0x134
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x8
	.string	"PS10"
	.byte	0x9
	.uahalf	0x135
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x8
	.string	"PS11"
	.byte	0x9
	.uahalf	0x136
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x8
	.string	"PS12"
	.byte	0x9
	.uahalf	0x137
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x8
	.string	"PS13"
	.byte	0x9
	.uahalf	0x138
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x8
	.string	"PS14"
	.byte	0x9
	.uahalf	0x139
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x8
	.string	"PS15"
	.byte	0x9
	.uahalf	0x13a
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.string	"PCL0"
	.byte	0x9
	.uahalf	0x13b
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x8
	.string	"PCL1"
	.byte	0x9
	.uahalf	0x13c
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0x8
	.string	"PCL2"
	.byte	0x9
	.uahalf	0x13d
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0x8
	.string	"PCL3"
	.byte	0x9
	.uahalf	0x13e
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x8
	.string	"PCL4"
	.byte	0x9
	.uahalf	0x13f
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0x8
	.string	"PCL5"
	.byte	0x9
	.uahalf	0x140
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.string	"PCL6"
	.byte	0x9
	.uahalf	0x141
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0x8
	.string	"PCL7"
	.byte	0x9
	.uahalf	0x142
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.string	"PCL8"
	.byte	0x9
	.uahalf	0x143
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x8
	.string	"PCL9"
	.byte	0x9
	.uahalf	0x144
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x8
	.string	"PCL10"
	.byte	0x9
	.uahalf	0x145
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x8
	.string	"PCL11"
	.byte	0x9
	.uahalf	0x146
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.string	"PCL12"
	.byte	0x9
	.uahalf	0x147
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.string	"PCL13"
	.byte	0x9
	.uahalf	0x148
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.string	"PCL14"
	.byte	0x9
	.uahalf	0x149
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.string	"PCL15"
	.byte	0x9
	.uahalf	0x14a
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
	.string	"Ifx_P_OMR_Bits"
	.byte	0x9
	.uahalf	0x14b
	.uaword	0x62db
	.uleb128 0x7
	.string	"_Ifx_P_OMSR0_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x14e
	.uaword	0x6594
	.uleb128 0x8
	.string	"PS0"
	.byte	0x9
	.uahalf	0x150
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x8
	.string	"PS1"
	.byte	0x9
	.uahalf	0x151
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x8
	.string	"PS2"
	.byte	0x9
	.uahalf	0x152
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x8
	.string	"PS3"
	.byte	0x9
	.uahalf	0x153
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xa
	.uaword	.LASF2
	.byte	0x9
	.uahalf	0x154
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
	.string	"Ifx_P_OMSR0_Bits"
	.byte	0x9
	.uahalf	0x155
	.uaword	0x6528
	.uleb128 0x7
	.string	"_Ifx_P_OMSR12_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x158
	.uaword	0x662e
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x9
	.uahalf	0x15a
	.uaword	0x3c4
	.byte	0x4
	.byte	0xc
	.byte	0x14
	.byte	0
	.uleb128 0x8
	.string	"PS12"
	.byte	0x9
	.uahalf	0x15b
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x8
	.string	"PS13"
	.byte	0x9
	.uahalf	0x15c
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x8
	.string	"PS14"
	.byte	0x9
	.uahalf	0x15d
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x8
	.string	"PS15"
	.byte	0x9
	.uahalf	0x15e
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.uaword	.LASF4
	.byte	0x9
	.uahalf	0x15f
	.uaword	0x3c4
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
	.string	"Ifx_P_OMSR12_Bits"
	.byte	0x9
	.uahalf	0x160
	.uaword	0x65ad
	.uleb128 0x7
	.string	"_Ifx_P_OMSR4_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x163
	.uaword	0x66c4
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x9
	.uahalf	0x165
	.uaword	0x3c4
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0x8
	.string	"PS4"
	.byte	0x9
	.uahalf	0x166
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x8
	.string	"PS5"
	.byte	0x9
	.uahalf	0x167
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x8
	.string	"PS6"
	.byte	0x9
	.uahalf	0x168
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x8
	.string	"PS7"
	.byte	0x9
	.uahalf	0x169
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xa
	.uaword	.LASF21
	.byte	0x9
	.uahalf	0x16a
	.uaword	0x3c4
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
	.string	"Ifx_P_OMSR4_Bits"
	.byte	0x9
	.uahalf	0x16b
	.uaword	0x6648
	.uleb128 0x7
	.string	"_Ifx_P_OMSR8_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x16e
	.uaword	0x675b
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x9
	.uahalf	0x170
	.uaword	0x3c4
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.string	"PS8"
	.byte	0x9
	.uahalf	0x171
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x8
	.string	"PS9"
	.byte	0x9
	.uahalf	0x172
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x8
	.string	"PS10"
	.byte	0x9
	.uahalf	0x173
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x8
	.string	"PS11"
	.byte	0x9
	.uahalf	0x174
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xa
	.uaword	.LASF12
	.byte	0x9
	.uahalf	0x175
	.uaword	0x3c4
	.byte	0x4
	.byte	0x14
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
	.string	"Ifx_P_OMSR8_Bits"
	.byte	0x9
	.uahalf	0x176
	.uaword	0x66dd
	.uleb128 0x7
	.string	"_Ifx_P_OMSR_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x179
	.uaword	0x68a5
	.uleb128 0x8
	.string	"PS0"
	.byte	0x9
	.uahalf	0x17b
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x8
	.string	"PS1"
	.byte	0x9
	.uahalf	0x17c
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x8
	.string	"PS2"
	.byte	0x9
	.uahalf	0x17d
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x8
	.string	"PS3"
	.byte	0x9
	.uahalf	0x17e
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x8
	.string	"PS4"
	.byte	0x9
	.uahalf	0x17f
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x8
	.string	"PS5"
	.byte	0x9
	.uahalf	0x180
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x8
	.string	"PS6"
	.byte	0x9
	.uahalf	0x181
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x8
	.string	"PS7"
	.byte	0x9
	.uahalf	0x182
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.string	"PS8"
	.byte	0x9
	.uahalf	0x183
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x8
	.string	"PS9"
	.byte	0x9
	.uahalf	0x184
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x8
	.string	"PS10"
	.byte	0x9
	.uahalf	0x185
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x8
	.string	"PS11"
	.byte	0x9
	.uahalf	0x186
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x8
	.string	"PS12"
	.byte	0x9
	.uahalf	0x187
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x8
	.string	"PS13"
	.byte	0x9
	.uahalf	0x188
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x8
	.string	"PS14"
	.byte	0x9
	.uahalf	0x189
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x8
	.string	"PS15"
	.byte	0x9
	.uahalf	0x18a
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.uaword	.LASF4
	.byte	0x9
	.uahalf	0x18b
	.uaword	0x3c4
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
	.string	"Ifx_P_OMSR_Bits"
	.byte	0x9
	.uahalf	0x18c
	.uaword	0x6774
	.uleb128 0x7
	.string	"_Ifx_P_OUT_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x18f
	.uaword	0x69dd
	.uleb128 0x8
	.string	"P0"
	.byte	0x9
	.uahalf	0x191
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x8
	.string	"P1"
	.byte	0x9
	.uahalf	0x192
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x8
	.string	"P2"
	.byte	0x9
	.uahalf	0x193
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x8
	.string	"P3"
	.byte	0x9
	.uahalf	0x194
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x8
	.string	"P4"
	.byte	0x9
	.uahalf	0x195
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x8
	.string	"P5"
	.byte	0x9
	.uahalf	0x196
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x8
	.string	"P6"
	.byte	0x9
	.uahalf	0x197
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x8
	.string	"P7"
	.byte	0x9
	.uahalf	0x198
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.string	"P8"
	.byte	0x9
	.uahalf	0x199
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x8
	.string	"P9"
	.byte	0x9
	.uahalf	0x19a
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x8
	.string	"P10"
	.byte	0x9
	.uahalf	0x19b
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x8
	.string	"P11"
	.byte	0x9
	.uahalf	0x19c
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x8
	.string	"P12"
	.byte	0x9
	.uahalf	0x19d
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x8
	.string	"P13"
	.byte	0x9
	.uahalf	0x19e
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x8
	.string	"P14"
	.byte	0x9
	.uahalf	0x19f
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x8
	.string	"P15"
	.byte	0x9
	.uahalf	0x1a0
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.uaword	.LASF4
	.byte	0x9
	.uahalf	0x1a1
	.uaword	0x3c4
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
	.string	"Ifx_P_OUT_Bits"
	.byte	0x9
	.uahalf	0x1a2
	.uaword	0x68bd
	.uleb128 0x7
	.string	"_Ifx_P_PCSR_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x1a5
	.uaword	0x6ada
	.uleb128 0x8
	.string	"SEL0"
	.byte	0x9
	.uahalf	0x1a7
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x8
	.string	"SEL1"
	.byte	0x9
	.uahalf	0x1a8
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x8
	.string	"SEL2"
	.byte	0x9
	.uahalf	0x1a9
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x8
	.string	"SEL3"
	.byte	0x9
	.uahalf	0x1aa
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x8
	.string	"SEL4"
	.byte	0x9
	.uahalf	0x1ab
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x8
	.string	"SEL5"
	.byte	0x9
	.uahalf	0x1ac
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x8
	.string	"SEL6"
	.byte	0x9
	.uahalf	0x1ad
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xa
	.uaword	.LASF14
	.byte	0x9
	.uahalf	0x1ae
	.uaword	0x3c4
	.byte	0x4
	.byte	0x3
	.byte	0x16
	.byte	0
	.uleb128 0x8
	.string	"SEL10"
	.byte	0x9
	.uahalf	0x1af
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x8
	.string	"SEL11"
	.byte	0x9
	.uahalf	0x1b0
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xa
	.uaword	.LASF12
	.byte	0x9
	.uahalf	0x1b1
	.uaword	0x3c4
	.byte	0x4
	.byte	0x13
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.string	"LCK"
	.byte	0x9
	.uahalf	0x1b2
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
	.string	"Ifx_P_PCSR_Bits"
	.byte	0x9
	.uahalf	0x1b3
	.uaword	0x69f4
	.uleb128 0x7
	.string	"_Ifx_P_PDISC_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x1b6
	.uaword	0x6c44
	.uleb128 0x8
	.string	"PDIS0"
	.byte	0x9
	.uahalf	0x1b8
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x8
	.string	"PDIS1"
	.byte	0x9
	.uahalf	0x1b9
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x8
	.string	"PDIS2"
	.byte	0x9
	.uahalf	0x1ba
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x8
	.string	"PDIS3"
	.byte	0x9
	.uahalf	0x1bb
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x8
	.string	"PDIS4"
	.byte	0x9
	.uahalf	0x1bc
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x8
	.string	"PDIS5"
	.byte	0x9
	.uahalf	0x1bd
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x8
	.string	"PDIS6"
	.byte	0x9
	.uahalf	0x1be
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x8
	.string	"PDIS7"
	.byte	0x9
	.uahalf	0x1bf
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.string	"PDIS8"
	.byte	0x9
	.uahalf	0x1c0
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x8
	.string	"PDIS9"
	.byte	0x9
	.uahalf	0x1c1
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x8
	.string	"PDIS10"
	.byte	0x9
	.uahalf	0x1c2
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x8
	.string	"PDIS11"
	.byte	0x9
	.uahalf	0x1c3
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x8
	.string	"PDIS12"
	.byte	0x9
	.uahalf	0x1c4
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x8
	.string	"PDIS13"
	.byte	0x9
	.uahalf	0x1c5
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x8
	.string	"PDIS14"
	.byte	0x9
	.uahalf	0x1c6
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x8
	.string	"PDIS15"
	.byte	0x9
	.uahalf	0x1c7
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.uaword	.LASF4
	.byte	0x9
	.uahalf	0x1c8
	.uaword	0x3c4
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
	.string	"Ifx_P_PDISC_Bits"
	.byte	0x9
	.uahalf	0x1c9
	.uaword	0x6af2
	.uleb128 0x7
	.string	"_Ifx_P_PDR0_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x1cc
	.uaword	0x6d78
	.uleb128 0x8
	.string	"PD0"
	.byte	0x9
	.uahalf	0x1ce
	.uaword	0x3c4
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0x8
	.string	"PL0"
	.byte	0x9
	.uahalf	0x1cf
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x8
	.string	"PD1"
	.byte	0x9
	.uahalf	0x1d0
	.uaword	0x3c4
	.byte	0x4
	.byte	0x3
	.byte	0x19
	.byte	0
	.uleb128 0x8
	.string	"PL1"
	.byte	0x9
	.uahalf	0x1d1
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.string	"PD2"
	.byte	0x9
	.uahalf	0x1d2
	.uaword	0x3c4
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0x8
	.string	"PL2"
	.byte	0x9
	.uahalf	0x1d3
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x8
	.string	"PD3"
	.byte	0x9
	.uahalf	0x1d4
	.uaword	0x3c4
	.byte	0x4
	.byte	0x3
	.byte	0x11
	.byte	0
	.uleb128 0x8
	.string	"PL3"
	.byte	0x9
	.uahalf	0x1d5
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.string	"PD4"
	.byte	0x9
	.uahalf	0x1d6
	.uaword	0x3c4
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0x8
	.string	"PL4"
	.byte	0x9
	.uahalf	0x1d7
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x8
	.string	"PD5"
	.byte	0x9
	.uahalf	0x1d8
	.uaword	0x3c4
	.byte	0x4
	.byte	0x3
	.byte	0x9
	.byte	0
	.uleb128 0x8
	.string	"PL5"
	.byte	0x9
	.uahalf	0x1d9
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.string	"PD6"
	.byte	0x9
	.uahalf	0x1da
	.uaword	0x3c4
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0x8
	.string	"PL6"
	.byte	0x9
	.uahalf	0x1db
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.string	"PD7"
	.byte	0x9
	.uahalf	0x1dc
	.uaword	0x3c4
	.byte	0x4
	.byte	0x3
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.string	"PL7"
	.byte	0x9
	.uahalf	0x1dd
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
	.string	"Ifx_P_PDR0_Bits"
	.byte	0x9
	.uahalf	0x1de
	.uaword	0x6c5d
	.uleb128 0x7
	.string	"_Ifx_P_PDR1_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x1e1
	.uaword	0x6eb7
	.uleb128 0x8
	.string	"PD8"
	.byte	0x9
	.uahalf	0x1e3
	.uaword	0x3c4
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0x8
	.string	"PL8"
	.byte	0x9
	.uahalf	0x1e4
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x8
	.string	"PD9"
	.byte	0x9
	.uahalf	0x1e5
	.uaword	0x3c4
	.byte	0x4
	.byte	0x3
	.byte	0x19
	.byte	0
	.uleb128 0x8
	.string	"PL9"
	.byte	0x9
	.uahalf	0x1e6
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.string	"PD10"
	.byte	0x9
	.uahalf	0x1e7
	.uaword	0x3c4
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0x8
	.string	"PL10"
	.byte	0x9
	.uahalf	0x1e8
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x8
	.string	"PD11"
	.byte	0x9
	.uahalf	0x1e9
	.uaword	0x3c4
	.byte	0x4
	.byte	0x3
	.byte	0x11
	.byte	0
	.uleb128 0x8
	.string	"PL11"
	.byte	0x9
	.uahalf	0x1ea
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.string	"PD12"
	.byte	0x9
	.uahalf	0x1eb
	.uaword	0x3c4
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0x8
	.string	"PL12"
	.byte	0x9
	.uahalf	0x1ec
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x8
	.string	"PD13"
	.byte	0x9
	.uahalf	0x1ed
	.uaword	0x3c4
	.byte	0x4
	.byte	0x3
	.byte	0x9
	.byte	0
	.uleb128 0x8
	.string	"PL13"
	.byte	0x9
	.uahalf	0x1ee
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.string	"PD14"
	.byte	0x9
	.uahalf	0x1ef
	.uaword	0x3c4
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0x8
	.string	"PL14"
	.byte	0x9
	.uahalf	0x1f0
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.string	"PD15"
	.byte	0x9
	.uahalf	0x1f1
	.uaword	0x3c4
	.byte	0x4
	.byte	0x3
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.string	"PL15"
	.byte	0x9
	.uahalf	0x1f2
	.uaword	0x3c4
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
	.string	"Ifx_P_PDR1_Bits"
	.byte	0x9
	.uahalf	0x1f3
	.uaword	0x6d90
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.uahalf	0x1fb
	.uaword	0x6ef7
	.uleb128 0xc
	.string	"U"
	.byte	0x9
	.uahalf	0x1fe
	.uaword	0x3c4
	.uleb128 0xc
	.string	"I"
	.byte	0x9
	.uahalf	0x200
	.uaword	0x1fc4
	.uleb128 0xc
	.string	"B"
	.byte	0x9
	.uahalf	0x202
	.uaword	0x574c
	.byte	0
	.uleb128 0x9
	.string	"Ifx_P_ACCEN0"
	.byte	0x9
	.uahalf	0x203
	.uaword	0x6ecf
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.uahalf	0x206
	.uaword	0x6f34
	.uleb128 0xc
	.string	"U"
	.byte	0x9
	.uahalf	0x209
	.uaword	0x3c4
	.uleb128 0xc
	.string	"I"
	.byte	0x9
	.uahalf	0x20b
	.uaword	0x1fc4
	.uleb128 0xc
	.string	"B"
	.byte	0x9
	.uahalf	0x20d
	.uaword	0x5790
	.byte	0
	.uleb128 0x9
	.string	"Ifx_P_ACCEN1"
	.byte	0x9
	.uahalf	0x20e
	.uaword	0x6f0c
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.uahalf	0x211
	.uaword	0x6f71
	.uleb128 0xc
	.string	"U"
	.byte	0x9
	.uahalf	0x214
	.uaword	0x3c4
	.uleb128 0xc
	.string	"I"
	.byte	0x9
	.uahalf	0x216
	.uaword	0x1fc4
	.uleb128 0xc
	.string	"B"
	.byte	0x9
	.uahalf	0x218
	.uaword	0x58c7
	.byte	0
	.uleb128 0x9
	.string	"Ifx_P_ESR"
	.byte	0x9
	.uahalf	0x219
	.uaword	0x6f49
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.uahalf	0x21c
	.uaword	0x6fab
	.uleb128 0xc
	.string	"U"
	.byte	0x9
	.uahalf	0x21f
	.uaword	0x3c4
	.uleb128 0xc
	.string	"I"
	.byte	0x9
	.uahalf	0x221
	.uaword	0x1fc4
	.uleb128 0xc
	.string	"B"
	.byte	0x9
	.uahalf	0x223
	.uaword	0x5929
	.byte	0
	.uleb128 0x9
	.string	"Ifx_P_ID"
	.byte	0x9
	.uahalf	0x224
	.uaword	0x6f83
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.uahalf	0x227
	.uaword	0x6fe4
	.uleb128 0xc
	.string	"U"
	.byte	0x9
	.uahalf	0x22a
	.uaword	0x3c4
	.uleb128 0xc
	.string	"I"
	.byte	0x9
	.uahalf	0x22c
	.uaword	0x1fc4
	.uleb128 0xc
	.string	"B"
	.byte	0x9
	.uahalf	0x22e
	.uaword	0x5a4b
	.byte	0
	.uleb128 0x9
	.string	"Ifx_P_IN"
	.byte	0x9
	.uahalf	0x22f
	.uaword	0x6fbc
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.uahalf	0x232
	.uaword	0x701d
	.uleb128 0xc
	.string	"U"
	.byte	0x9
	.uahalf	0x235
	.uaword	0x3c4
	.uleb128 0xc
	.string	"I"
	.byte	0x9
	.uahalf	0x237
	.uaword	0x1fc4
	.uleb128 0xc
	.string	"B"
	.byte	0x9
	.uahalf	0x239
	.uaword	0x5af3
	.byte	0
	.uleb128 0x9
	.string	"Ifx_P_IOCR0"
	.byte	0x9
	.uahalf	0x23a
	.uaword	0x6ff5
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.uahalf	0x23d
	.uaword	0x7059
	.uleb128 0xc
	.string	"U"
	.byte	0x9
	.uahalf	0x240
	.uaword	0x3c4
	.uleb128 0xc
	.string	"I"
	.byte	0x9
	.uahalf	0x242
	.uaword	0x1fc4
	.uleb128 0xc
	.string	"B"
	.byte	0x9
	.uahalf	0x244
	.uaword	0x5ba3
	.byte	0
	.uleb128 0x9
	.string	"Ifx_P_IOCR12"
	.byte	0x9
	.uahalf	0x245
	.uaword	0x7031
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.uahalf	0x248
	.uaword	0x7096
	.uleb128 0xc
	.string	"U"
	.byte	0x9
	.uahalf	0x24b
	.uaword	0x3c4
	.uleb128 0xc
	.string	"I"
	.byte	0x9
	.uahalf	0x24d
	.uaword	0x1fc4
	.uleb128 0xc
	.string	"B"
	.byte	0x9
	.uahalf	0x24f
	.uaword	0x5c4f
	.byte	0
	.uleb128 0x9
	.string	"Ifx_P_IOCR4"
	.byte	0x9
	.uahalf	0x250
	.uaword	0x706e
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.uahalf	0x253
	.uaword	0x70d2
	.uleb128 0xc
	.string	"U"
	.byte	0x9
	.uahalf	0x256
	.uaword	0x3c4
	.uleb128 0xc
	.string	"I"
	.byte	0x9
	.uahalf	0x258
	.uaword	0x1fc4
	.uleb128 0xc
	.string	"B"
	.byte	0x9
	.uahalf	0x25a
	.uaword	0x5cfc
	.byte	0
	.uleb128 0x9
	.string	"Ifx_P_IOCR8"
	.byte	0x9
	.uahalf	0x25b
	.uaword	0x70aa
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.uahalf	0x25e
	.uaword	0x710e
	.uleb128 0xc
	.string	"U"
	.byte	0x9
	.uahalf	0x261
	.uaword	0x3c4
	.uleb128 0xc
	.string	"I"
	.byte	0x9
	.uahalf	0x263
	.uaword	0x1fc4
	.uleb128 0xc
	.string	"B"
	.byte	0x9
	.uahalf	0x265
	.uaword	0x5d5c
	.byte	0
	.uleb128 0x9
	.string	"Ifx_P_LPCR0"
	.byte	0x9
	.uahalf	0x266
	.uaword	0x70e6
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.uahalf	0x269
	.uaword	0x7158
	.uleb128 0xc
	.string	"U"
	.byte	0x9
	.uahalf	0x26c
	.uaword	0x3c4
	.uleb128 0xc
	.string	"I"
	.byte	0x9
	.uahalf	0x26e
	.uaword	0x1fc4
	.uleb128 0xc
	.string	"B"
	.byte	0x9
	.uahalf	0x270
	.uaword	0x5dbc
	.uleb128 0xc
	.string	"B_P21"
	.byte	0x9
	.uahalf	0x272
	.uaword	0x5e4c
	.byte	0
	.uleb128 0x9
	.string	"Ifx_P_LPCR1"
	.byte	0x9
	.uahalf	0x273
	.uaword	0x7122
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.uahalf	0x276
	.uaword	0x7194
	.uleb128 0xc
	.string	"U"
	.byte	0x9
	.uahalf	0x279
	.uaword	0x3c4
	.uleb128 0xc
	.string	"I"
	.byte	0x9
	.uahalf	0x27b
	.uaword	0x1fc4
	.uleb128 0xc
	.string	"B"
	.byte	0x9
	.uahalf	0x27d
	.uaword	0x5f1f
	.byte	0
	.uleb128 0x9
	.string	"Ifx_P_LPCR2"
	.byte	0x9
	.uahalf	0x27e
	.uaword	0x716c
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.uahalf	0x281
	.uaword	0x71d0
	.uleb128 0xc
	.string	"U"
	.byte	0x9
	.uahalf	0x284
	.uaword	0x3c4
	.uleb128 0xc
	.string	"I"
	.byte	0x9
	.uahalf	0x286
	.uaword	0x1fc4
	.uleb128 0xc
	.string	"B"
	.byte	0x9
	.uahalf	0x288
	.uaword	0x62c3
	.byte	0
	.uleb128 0x9
	.string	"Ifx_P_OMCR"
	.byte	0x9
	.uahalf	0x289
	.uaword	0x71a8
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.uahalf	0x28c
	.uaword	0x720b
	.uleb128 0xc
	.string	"U"
	.byte	0x9
	.uahalf	0x28f
	.uaword	0x3c4
	.uleb128 0xc
	.string	"I"
	.byte	0x9
	.uahalf	0x291
	.uaword	0x1fc4
	.uleb128 0xc
	.string	"B"
	.byte	0x9
	.uahalf	0x293
	.uaword	0x5fb0
	.byte	0
	.uleb128 0x9
	.string	"Ifx_P_OMCR0"
	.byte	0x9
	.uahalf	0x294
	.uaword	0x71e3
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.uahalf	0x297
	.uaword	0x7247
	.uleb128 0xc
	.string	"U"
	.byte	0x9
	.uahalf	0x29a
	.uaword	0x3c4
	.uleb128 0xc
	.string	"I"
	.byte	0x9
	.uahalf	0x29c
	.uaword	0x1fc4
	.uleb128 0xc
	.string	"B"
	.byte	0x9
	.uahalf	0x29e
	.uaword	0x6037
	.byte	0
	.uleb128 0x9
	.string	"Ifx_P_OMCR12"
	.byte	0x9
	.uahalf	0x29f
	.uaword	0x721f
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.uahalf	0x2a2
	.uaword	0x7284
	.uleb128 0xc
	.string	"U"
	.byte	0x9
	.uahalf	0x2a5
	.uaword	0x3c4
	.uleb128 0xc
	.string	"I"
	.byte	0x9
	.uahalf	0x2a7
	.uaword	0x1fc4
	.uleb128 0xc
	.string	"B"
	.byte	0x9
	.uahalf	0x2a9
	.uaword	0x60ce
	.byte	0
	.uleb128 0x9
	.string	"Ifx_P_OMCR4"
	.byte	0x9
	.uahalf	0x2aa
	.uaword	0x725c
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.uahalf	0x2ad
	.uaword	0x72c0
	.uleb128 0xc
	.string	"U"
	.byte	0x9
	.uahalf	0x2b0
	.uaword	0x3c4
	.uleb128 0xc
	.string	"I"
	.byte	0x9
	.uahalf	0x2b2
	.uaword	0x1fc4
	.uleb128 0xc
	.string	"B"
	.byte	0x9
	.uahalf	0x2b4
	.uaword	0x6169
	.byte	0
	.uleb128 0x9
	.string	"Ifx_P_OMCR8"
	.byte	0x9
	.uahalf	0x2b5
	.uaword	0x7298
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.uahalf	0x2b8
	.uaword	0x72fc
	.uleb128 0xc
	.string	"U"
	.byte	0x9
	.uahalf	0x2bb
	.uaword	0x3c4
	.uleb128 0xc
	.string	"I"
	.byte	0x9
	.uahalf	0x2bd
	.uaword	0x1fc4
	.uleb128 0xc
	.string	"B"
	.byte	0x9
	.uahalf	0x2bf
	.uaword	0x6511
	.byte	0
	.uleb128 0x9
	.string	"Ifx_P_OMR"
	.byte	0x9
	.uahalf	0x2c0
	.uaword	0x72d4
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.uahalf	0x2c3
	.uaword	0x7336
	.uleb128 0xc
	.string	"U"
	.byte	0x9
	.uahalf	0x2c6
	.uaword	0x3c4
	.uleb128 0xc
	.string	"I"
	.byte	0x9
	.uahalf	0x2c8
	.uaword	0x1fc4
	.uleb128 0xc
	.string	"B"
	.byte	0x9
	.uahalf	0x2ca
	.uaword	0x68a5
	.byte	0
	.uleb128 0x9
	.string	"Ifx_P_OMSR"
	.byte	0x9
	.uahalf	0x2cb
	.uaword	0x730e
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.uahalf	0x2ce
	.uaword	0x7371
	.uleb128 0xc
	.string	"U"
	.byte	0x9
	.uahalf	0x2d1
	.uaword	0x3c4
	.uleb128 0xc
	.string	"I"
	.byte	0x9
	.uahalf	0x2d3
	.uaword	0x1fc4
	.uleb128 0xc
	.string	"B"
	.byte	0x9
	.uahalf	0x2d5
	.uaword	0x6594
	.byte	0
	.uleb128 0x9
	.string	"Ifx_P_OMSR0"
	.byte	0x9
	.uahalf	0x2d6
	.uaword	0x7349
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.uahalf	0x2d9
	.uaword	0x73ad
	.uleb128 0xc
	.string	"U"
	.byte	0x9
	.uahalf	0x2dc
	.uaword	0x3c4
	.uleb128 0xc
	.string	"I"
	.byte	0x9
	.uahalf	0x2de
	.uaword	0x1fc4
	.uleb128 0xc
	.string	"B"
	.byte	0x9
	.uahalf	0x2e0
	.uaword	0x662e
	.byte	0
	.uleb128 0x9
	.string	"Ifx_P_OMSR12"
	.byte	0x9
	.uahalf	0x2e1
	.uaword	0x7385
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.uahalf	0x2e4
	.uaword	0x73ea
	.uleb128 0xc
	.string	"U"
	.byte	0x9
	.uahalf	0x2e7
	.uaword	0x3c4
	.uleb128 0xc
	.string	"I"
	.byte	0x9
	.uahalf	0x2e9
	.uaword	0x1fc4
	.uleb128 0xc
	.string	"B"
	.byte	0x9
	.uahalf	0x2eb
	.uaword	0x66c4
	.byte	0
	.uleb128 0x9
	.string	"Ifx_P_OMSR4"
	.byte	0x9
	.uahalf	0x2ec
	.uaword	0x73c2
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.uahalf	0x2ef
	.uaword	0x7426
	.uleb128 0xc
	.string	"U"
	.byte	0x9
	.uahalf	0x2f2
	.uaword	0x3c4
	.uleb128 0xc
	.string	"I"
	.byte	0x9
	.uahalf	0x2f4
	.uaword	0x1fc4
	.uleb128 0xc
	.string	"B"
	.byte	0x9
	.uahalf	0x2f6
	.uaword	0x675b
	.byte	0
	.uleb128 0x9
	.string	"Ifx_P_OMSR8"
	.byte	0x9
	.uahalf	0x2f7
	.uaword	0x73fe
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.uahalf	0x2fa
	.uaword	0x7462
	.uleb128 0xc
	.string	"U"
	.byte	0x9
	.uahalf	0x2fd
	.uaword	0x3c4
	.uleb128 0xc
	.string	"I"
	.byte	0x9
	.uahalf	0x2ff
	.uaword	0x1fc4
	.uleb128 0xc
	.string	"B"
	.byte	0x9
	.uahalf	0x301
	.uaword	0x69dd
	.byte	0
	.uleb128 0x9
	.string	"Ifx_P_OUT"
	.byte	0x9
	.uahalf	0x302
	.uaword	0x743a
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.uahalf	0x305
	.uaword	0x749c
	.uleb128 0xc
	.string	"U"
	.byte	0x9
	.uahalf	0x308
	.uaword	0x3c4
	.uleb128 0xc
	.string	"I"
	.byte	0x9
	.uahalf	0x30a
	.uaword	0x1fc4
	.uleb128 0xc
	.string	"B"
	.byte	0x9
	.uahalf	0x30c
	.uaword	0x6ada
	.byte	0
	.uleb128 0x9
	.string	"Ifx_P_PCSR"
	.byte	0x9
	.uahalf	0x30d
	.uaword	0x7474
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.uahalf	0x310
	.uaword	0x74d7
	.uleb128 0xc
	.string	"U"
	.byte	0x9
	.uahalf	0x313
	.uaword	0x3c4
	.uleb128 0xc
	.string	"I"
	.byte	0x9
	.uahalf	0x315
	.uaword	0x1fc4
	.uleb128 0xc
	.string	"B"
	.byte	0x9
	.uahalf	0x317
	.uaword	0x6c44
	.byte	0
	.uleb128 0x9
	.string	"Ifx_P_PDISC"
	.byte	0x9
	.uahalf	0x318
	.uaword	0x74af
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.uahalf	0x31b
	.uaword	0x7513
	.uleb128 0xc
	.string	"U"
	.byte	0x9
	.uahalf	0x31e
	.uaword	0x3c4
	.uleb128 0xc
	.string	"I"
	.byte	0x9
	.uahalf	0x320
	.uaword	0x1fc4
	.uleb128 0xc
	.string	"B"
	.byte	0x9
	.uahalf	0x322
	.uaword	0x6d78
	.byte	0
	.uleb128 0x9
	.string	"Ifx_P_PDR0"
	.byte	0x9
	.uahalf	0x323
	.uaword	0x74eb
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.uahalf	0x326
	.uaword	0x754e
	.uleb128 0xc
	.string	"U"
	.byte	0x9
	.uahalf	0x329
	.uaword	0x3c4
	.uleb128 0xc
	.string	"I"
	.byte	0x9
	.uahalf	0x32b
	.uaword	0x1fc4
	.uleb128 0xc
	.string	"B"
	.byte	0x9
	.uahalf	0x32d
	.uaword	0x6eb7
	.byte	0
	.uleb128 0x9
	.string	"Ifx_P_PDR1"
	.byte	0x9
	.uahalf	0x32e
	.uaword	0x7526
	.uleb128 0xf
	.string	"_Ifx_P"
	.uahalf	0x100
	.byte	0x9
	.uahalf	0x339
	.uaword	0x779b
	.uleb128 0x10
	.string	"OUT"
	.byte	0x9
	.uahalf	0x33b
	.uaword	0x7462
	.byte	0
	.uleb128 0x10
	.string	"OMR"
	.byte	0x9
	.uahalf	0x33c
	.uaword	0x72fc
	.byte	0x4
	.uleb128 0x10
	.string	"ID"
	.byte	0x9
	.uahalf	0x33d
	.uaword	0x6fab
	.byte	0x8
	.uleb128 0x11
	.uaword	.LASF24
	.byte	0x9
	.uahalf	0x33e
	.uaword	0x2fe0
	.byte	0xc
	.uleb128 0x10
	.string	"IOCR0"
	.byte	0x9
	.uahalf	0x33f
	.uaword	0x701d
	.byte	0x10
	.uleb128 0x10
	.string	"IOCR4"
	.byte	0x9
	.uahalf	0x340
	.uaword	0x7096
	.byte	0x14
	.uleb128 0x10
	.string	"IOCR8"
	.byte	0x9
	.uahalf	0x341
	.uaword	0x70d2
	.byte	0x18
	.uleb128 0x10
	.string	"IOCR12"
	.byte	0x9
	.uahalf	0x342
	.uaword	0x7059
	.byte	0x1c
	.uleb128 0x11
	.uaword	.LASF19
	.byte	0x9
	.uahalf	0x343
	.uaword	0x2fe0
	.byte	0x20
	.uleb128 0x10
	.string	"IN"
	.byte	0x9
	.uahalf	0x344
	.uaword	0x6fe4
	.byte	0x24
	.uleb128 0x11
	.uaword	.LASF13
	.byte	0x9
	.uahalf	0x345
	.uaword	0x37a5
	.byte	0x28
	.uleb128 0x10
	.string	"PDR0"
	.byte	0x9
	.uahalf	0x346
	.uaword	0x7513
	.byte	0x40
	.uleb128 0x10
	.string	"PDR1"
	.byte	0x9
	.uahalf	0x347
	.uaword	0x754e
	.byte	0x44
	.uleb128 0x10
	.string	"reserved_48"
	.byte	0x9
	.uahalf	0x348
	.uaword	0x2dca
	.byte	0x48
	.uleb128 0x10
	.string	"ESR"
	.byte	0x9
	.uahalf	0x349
	.uaword	0x6f71
	.byte	0x50
	.uleb128 0x10
	.string	"reserved_54"
	.byte	0x9
	.uahalf	0x34a
	.uaword	0x3507
	.byte	0x54
	.uleb128 0x10
	.string	"PDISC"
	.byte	0x9
	.uahalf	0x34b
	.uaword	0x74d7
	.byte	0x60
	.uleb128 0x10
	.string	"PCSR"
	.byte	0x9
	.uahalf	0x34c
	.uaword	0x749c
	.byte	0x64
	.uleb128 0x10
	.string	"reserved_68"
	.byte	0x9
	.uahalf	0x34d
	.uaword	0x2dca
	.byte	0x68
	.uleb128 0x10
	.string	"OMSR0"
	.byte	0x9
	.uahalf	0x34e
	.uaword	0x7371
	.byte	0x70
	.uleb128 0x10
	.string	"OMSR4"
	.byte	0x9
	.uahalf	0x34f
	.uaword	0x73ea
	.byte	0x74
	.uleb128 0x10
	.string	"OMSR8"
	.byte	0x9
	.uahalf	0x350
	.uaword	0x7426
	.byte	0x78
	.uleb128 0x10
	.string	"OMSR12"
	.byte	0x9
	.uahalf	0x351
	.uaword	0x73ad
	.byte	0x7c
	.uleb128 0x10
	.string	"OMCR0"
	.byte	0x9
	.uahalf	0x352
	.uaword	0x720b
	.byte	0x80
	.uleb128 0x10
	.string	"OMCR4"
	.byte	0x9
	.uahalf	0x353
	.uaword	0x7284
	.byte	0x84
	.uleb128 0x10
	.string	"OMCR8"
	.byte	0x9
	.uahalf	0x354
	.uaword	0x72c0
	.byte	0x88
	.uleb128 0x10
	.string	"OMCR12"
	.byte	0x9
	.uahalf	0x355
	.uaword	0x7247
	.byte	0x8c
	.uleb128 0x10
	.string	"OMSR"
	.byte	0x9
	.uahalf	0x356
	.uaword	0x7336
	.byte	0x90
	.uleb128 0x10
	.string	"OMCR"
	.byte	0x9
	.uahalf	0x357
	.uaword	0x71d0
	.byte	0x94
	.uleb128 0x10
	.string	"reserved_98"
	.byte	0x9
	.uahalf	0x358
	.uaword	0x2dca
	.byte	0x98
	.uleb128 0x10
	.string	"LPCR0"
	.byte	0x9
	.uahalf	0x359
	.uaword	0x710e
	.byte	0xa0
	.uleb128 0x10
	.string	"LPCR1"
	.byte	0x9
	.uahalf	0x35a
	.uaword	0x7158
	.byte	0xa4
	.uleb128 0x10
	.string	"LPCR2"
	.byte	0x9
	.uahalf	0x35b
	.uaword	0x7194
	.byte	0xa8
	.uleb128 0x10
	.string	"reserved_A4"
	.byte	0x9
	.uahalf	0x35c
	.uaword	0x779b
	.byte	0xac
	.uleb128 0x10
	.string	"ACCEN1"
	.byte	0x9
	.uahalf	0x35d
	.uaword	0x6f34
	.byte	0xf8
	.uleb128 0x10
	.string	"ACCEN0"
	.byte	0x9
	.uahalf	0x35e
	.uaword	0x6ef7
	.byte	0xfc
	.byte	0
	.uleb128 0x12
	.uaword	0x2de6
	.uaword	0x77ab
	.uleb128 0x13
	.uaword	0x2dda
	.byte	0x4b
	.byte	0
	.uleb128 0x9
	.string	"Ifx_P"
	.byte	0x9
	.uahalf	0x35f
	.uaword	0x77b9
	.uleb128 0xe
	.uaword	0x7561
	.uleb128 0x1f
	.byte	0x4
	.uaword	0x77ab
	.uleb128 0x21
	.byte	0x4
	.byte	0xa
	.byte	0x40
	.uaword	0x7844
	.uleb128 0x22
	.string	"IfxPort_InputMode_undefined"
	.sleb128 -1
	.uleb128 0x22
	.string	"IfxPort_InputMode_noPullDevice"
	.sleb128 0
	.uleb128 0x22
	.string	"IfxPort_InputMode_pullDown"
	.sleb128 8
	.uleb128 0x22
	.string	"IfxPort_InputMode_pullUp"
	.sleb128 16
	.byte	0
	.uleb128 0x5
	.string	"IfxPort_InputMode"
	.byte	0xa
	.byte	0x45
	.uaword	0x77c4
	.uleb128 0x21
	.byte	0x4
	.byte	0xa
	.byte	0x65
	.uaword	0x7939
	.uleb128 0x22
	.string	"IfxPort_OutputIdx_general"
	.sleb128 128
	.uleb128 0x22
	.string	"IfxPort_OutputIdx_alt1"
	.sleb128 136
	.uleb128 0x22
	.string	"IfxPort_OutputIdx_alt2"
	.sleb128 144
	.uleb128 0x22
	.string	"IfxPort_OutputIdx_alt3"
	.sleb128 152
	.uleb128 0x22
	.string	"IfxPort_OutputIdx_alt4"
	.sleb128 160
	.uleb128 0x22
	.string	"IfxPort_OutputIdx_alt5"
	.sleb128 168
	.uleb128 0x22
	.string	"IfxPort_OutputIdx_alt6"
	.sleb128 176
	.uleb128 0x22
	.string	"IfxPort_OutputIdx_alt7"
	.sleb128 184
	.byte	0
	.uleb128 0x5
	.string	"IfxPort_OutputIdx"
	.byte	0xa
	.byte	0x6e
	.uaword	0x785d
	.uleb128 0x21
	.byte	0x4
	.byte	0xa
	.byte	0x73
	.uaword	0x799a
	.uleb128 0x22
	.string	"IfxPort_OutputMode_pushPull"
	.sleb128 128
	.uleb128 0x22
	.string	"IfxPort_OutputMode_openDrain"
	.sleb128 192
	.byte	0
	.uleb128 0x5
	.string	"IfxPort_OutputMode"
	.byte	0xa
	.byte	0x76
	.uaword	0x7952
	.uleb128 0x23
	.byte	0x8
	.byte	0xa
	.byte	0xaa
	.uaword	0x79db
	.uleb128 0x19
	.string	"port"
	.byte	0xa
	.byte	0xac
	.uaword	0x77be
	.byte	0
	.uleb128 0x19
	.string	"pinIndex"
	.byte	0xa
	.byte	0xad
	.uaword	0x51b7
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.string	"IfxPort_Pin"
	.byte	0xa
	.byte	0xae
	.uaword	0x79b4
	.uleb128 0x23
	.byte	0x14
	.byte	0xb
	.byte	0x27
	.uaword	0x7a2a
	.uleb128 0x1b
	.uaword	.LASF25
	.byte	0xb
	.byte	0x29
	.uaword	0x7a2a
	.byte	0
	.uleb128 0x1b
	.uaword	.LASF26
	.byte	0xb
	.byte	0x2a
	.uaword	0x5398
	.byte	0x4
	.uleb128 0x19
	.string	"pin"
	.byte	0xb
	.byte	0x2b
	.uaword	0x79db
	.byte	0x8
	.uleb128 0x19
	.string	"select"
	.byte	0xb
	.byte	0x2c
	.uaword	0x52a6
	.byte	0x10
	.byte	0
	.uleb128 0x1f
	.byte	0x4
	.uaword	0x309c
	.uleb128 0x5
	.string	"IfxMultican_Rxd_In"
	.byte	0xb
	.byte	0x2d
	.uaword	0x7a4a
	.uleb128 0x20
	.uaword	0x79ee
	.uleb128 0x23
	.byte	0x14
	.byte	0xb
	.byte	0x30
	.uaword	0x7a8b
	.uleb128 0x1b
	.uaword	.LASF25
	.byte	0xb
	.byte	0x32
	.uaword	0x7a2a
	.byte	0
	.uleb128 0x1b
	.uaword	.LASF26
	.byte	0xb
	.byte	0x33
	.uaword	0x5398
	.byte	0x4
	.uleb128 0x19
	.string	"pin"
	.byte	0xb
	.byte	0x34
	.uaword	0x79db
	.byte	0x8
	.uleb128 0x19
	.string	"select"
	.byte	0xb
	.byte	0x35
	.uaword	0x7939
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.string	"IfxMultican_Txd_Out"
	.byte	0xb
	.byte	0x36
	.uaword	0x7aa6
	.uleb128 0x20
	.uaword	0x7a4f
	.uleb128 0x5
	.string	"IfxMultican_MsgObjId"
	.byte	0xc
	.byte	0x3b
	.uaword	0x51e0
	.uleb128 0x21
	.byte	0x4
	.byte	0xc
	.byte	0x46
	.uaword	0x7b54
	.uleb128 0x22
	.string	"IfxMultican_ClockSelect_noClock"
	.sleb128 0
	.uleb128 0x22
	.string	"IfxMultican_ClockSelect_fclc"
	.sleb128 1
	.uleb128 0x22
	.string	"IfxMultican_ClockSelect_fosc0"
	.sleb128 2
	.uleb128 0x22
	.string	"IfxMultican_ClockSelect_fErayPll"
	.sleb128 4
	.byte	0
	.uleb128 0x5
	.string	"IfxMultican_ClockSelect"
	.byte	0xc
	.byte	0x4b
	.uaword	0x7ac7
	.uleb128 0x21
	.byte	0x4
	.byte	0xc
	.byte	0x51
	.uaword	0x7d73
	.uleb128 0x22
	.string	"IfxMultican_DataLengthCode_0"
	.sleb128 0
	.uleb128 0x22
	.string	"IfxMultican_DataLengthCode_1"
	.sleb128 1
	.uleb128 0x22
	.string	"IfxMultican_DataLengthCode_2"
	.sleb128 2
	.uleb128 0x22
	.string	"IfxMultican_DataLengthCode_3"
	.sleb128 3
	.uleb128 0x22
	.string	"IfxMultican_DataLengthCode_4"
	.sleb128 4
	.uleb128 0x22
	.string	"IfxMultican_DataLengthCode_5"
	.sleb128 5
	.uleb128 0x22
	.string	"IfxMultican_DataLengthCode_6"
	.sleb128 6
	.uleb128 0x22
	.string	"IfxMultican_DataLengthCode_7"
	.sleb128 7
	.uleb128 0x22
	.string	"IfxMultican_DataLengthCode_8"
	.sleb128 8
	.uleb128 0x22
	.string	"IfxMultican_DataLengthCode_12"
	.sleb128 9
	.uleb128 0x22
	.string	"IfxMultican_DataLengthCode_16"
	.sleb128 10
	.uleb128 0x22
	.string	"IfxMultican_DataLengthCode_20"
	.sleb128 11
	.uleb128 0x22
	.string	"IfxMultican_DataLengthCode_24"
	.sleb128 12
	.uleb128 0x22
	.string	"IfxMultican_DataLengthCode_32"
	.sleb128 13
	.uleb128 0x22
	.string	"IfxMultican_DataLengthCode_48"
	.sleb128 14
	.uleb128 0x22
	.string	"IfxMultican_DataLengthCode_64"
	.sleb128 15
	.byte	0
	.uleb128 0x5
	.string	"IfxMultican_DataLengthCode"
	.byte	0xc
	.byte	0x62
	.uaword	0x7b73
	.uleb128 0x21
	.byte	0x4
	.byte	0xc
	.byte	0x67
	.uaword	0x7e1a
	.uleb128 0x22
	.string	"IfxMultican_Frame_receive"
	.sleb128 0
	.uleb128 0x22
	.string	"IfxMultican_Frame_transmit"
	.sleb128 1
	.uleb128 0x22
	.string	"IfxMultican_Frame_remoteRequest"
	.sleb128 2
	.uleb128 0x22
	.string	"IfxMultican_Frame_remoteAnswer"
	.sleb128 3
	.byte	0
	.uleb128 0x5
	.string	"IfxMultican_Frame"
	.byte	0xc
	.byte	0x6c
	.uaword	0x7d95
	.uleb128 0x21
	.byte	0x4
	.byte	0xc
	.byte	0xaf
	.uaword	0x7e7b
	.uleb128 0x22
	.string	"IfxMultican_Priority_ListOrder"
	.sleb128 1
	.uleb128 0x22
	.string	"IfxMultican_Priority_CAN_ID"
	.sleb128 2
	.byte	0
	.uleb128 0x5
	.string	"IfxMultican_Priority"
	.byte	0xc
	.byte	0xb2
	.uaword	0x7e33
	.uleb128 0x21
	.byte	0x4
	.byte	0xc
	.byte	0xc0
	.uaword	0x8000
	.uleb128 0x22
	.string	"IfxMultican_Status_ok"
	.sleb128 0
	.uleb128 0x22
	.string	"IfxMultican_Status_notInitialised"
	.sleb128 1
	.uleb128 0x22
	.string	"IfxMultican_Status_wrongParam"
	.sleb128 2
	.uleb128 0x22
	.string	"IfxMultican_Status_wrongPin"
	.sleb128 4
	.uleb128 0x22
	.string	"IfxMultican_Status_busHeavy"
	.sleb128 8
	.uleb128 0x22
	.string	"IfxMultican_Status_busOff"
	.sleb128 16
	.uleb128 0x22
	.string	"IfxMultican_Status_notSentBusy"
	.sleb128 32
	.uleb128 0x22
	.string	"IfxMultican_Status_receiveEmpty"
	.sleb128 64
	.uleb128 0x22
	.string	"IfxMultican_Status_messageLost"
	.sleb128 128
	.uleb128 0x22
	.string	"IfxMultican_Status_newData"
	.sleb128 256
	.uleb128 0x22
	.string	"IfxMultican_Status_newDataButOneLost"
	.sleb128 384
	.byte	0
	.uleb128 0x5
	.string	"IfxMultican_Status"
	.byte	0xc
	.byte	0xcc
	.uaword	0x7e97
	.uleb128 0x24
	.byte	0x14
	.byte	0xd
	.uahalf	0x2fb
	.uaword	0x80dc
	.uleb128 0x10
	.string	"nominalBaudrate"
	.byte	0xd
	.uahalf	0x2fd
	.uaword	0x51ee
	.byte	0
	.uleb128 0x10
	.string	"nominalSynchJumpWidth"
	.byte	0xd
	.uahalf	0x2fe
	.uaword	0x51d2
	.byte	0x4
	.uleb128 0x10
	.string	"nominalSamplePoint"
	.byte	0xd
	.uahalf	0x2ff
	.uaword	0x51d2
	.byte	0x6
	.uleb128 0x10
	.string	"fastBaudrate"
	.byte	0xd
	.uahalf	0x300
	.uaword	0x51ee
	.byte	0x8
	.uleb128 0x10
	.string	"fastSynchJumpWidth"
	.byte	0xd
	.uahalf	0x301
	.uaword	0x51d2
	.byte	0xc
	.uleb128 0x10
	.string	"fastSamplePoint"
	.byte	0xd
	.uahalf	0x302
	.uaword	0x51d2
	.byte	0xe
	.uleb128 0x10
	.string	"loopDelayOffset"
	.byte	0xd
	.uahalf	0x303
	.uaword	0x51d2
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.string	"IfxMultican_Can_FdConfig"
	.byte	0xd
	.uahalf	0x304
	.uaword	0x801a
	.uleb128 0x24
	.byte	0x8
	.byte	0xd
	.uahalf	0x308
	.uaword	0x8182
	.uleb128 0x8
	.string	"copyDataLengthCode"
	.byte	0xd
	.uahalf	0x30a
	.uaword	0x51ee
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x8
	.string	"copyData"
	.byte	0xd
	.uahalf	0x30b
	.uaword	0x51ee
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x8
	.string	"copyId"
	.byte	0xd
	.uahalf	0x30c
	.uaword	0x51ee
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x8
	.string	"enableTransmit"
	.byte	0xd
	.uahalf	0x30d
	.uaword	0x51ee
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x10
	.string	"gatewayDstObjId"
	.byte	0xd
	.uahalf	0x30e
	.uaword	0x7aab
	.byte	0x4
	.byte	0
	.uleb128 0x9
	.string	"IfxMultican_Can_GatewayConfig"
	.byte	0xd
	.uahalf	0x30f
	.uaword	0x80fd
	.uleb128 0x24
	.byte	0x8
	.byte	0xd
	.uahalf	0x313
	.uaword	0x81d6
	.uleb128 0x11
	.uaword	.LASF27
	.byte	0xd
	.uahalf	0x315
	.uaword	0x51d2
	.byte	0
	.uleb128 0x10
	.string	"typeOfService"
	.byte	0xd
	.uahalf	0x316
	.uaword	0x5307
	.byte	0x4
	.byte	0
	.uleb128 0x9
	.string	"IfxMultican_Can_InterruptConfig"
	.byte	0xd
	.uahalf	0x317
	.uaword	0x81a8
	.uleb128 0x24
	.byte	0x8
	.byte	0xd
	.uahalf	0x31b
	.uaword	0x8228
	.uleb128 0x10
	.string	"enabled"
	.byte	0xd
	.uahalf	0x31d
	.uaword	0x521e
	.byte	0
	.uleb128 0x10
	.string	"srcId"
	.byte	0xd
	.uahalf	0x31e
	.uaword	0x5521
	.byte	0x4
	.byte	0
	.uleb128 0x9
	.string	"IfxMultican_Can_InterruptSource"
	.byte	0xd
	.uahalf	0x31f
	.uaword	0x81fe
	.uleb128 0x24
	.byte	0x18
	.byte	0xd
	.uahalf	0x323
	.uaword	0x8323
	.uleb128 0x8
	.string	"singleDataTransfer"
	.byte	0xd
	.uahalf	0x325
	.uaword	0x51ee
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x8
	.string	"singleTransmitTrial"
	.byte	0xd
	.uahalf	0x326
	.uaword	0x51ee
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x10
	.string	"messageLen"
	.byte	0xd
	.uahalf	0x327
	.uaword	0x7d73
	.byte	0x4
	.uleb128 0x8
	.string	"extendedFrame"
	.byte	0xd
	.uahalf	0x328
	.uaword	0x51ee
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x8
	.uleb128 0x8
	.string	"matchingId"
	.byte	0xd
	.uahalf	0x329
	.uaword	0x51ee
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x8
	.uleb128 0x10
	.string	"topMsgObjId"
	.byte	0xd
	.uahalf	0x32a
	.uaword	0x7aab
	.byte	0xc
	.uleb128 0x10
	.string	"bottomMsgObjId"
	.byte	0xd
	.uahalf	0x32b
	.uaword	0x7aab
	.byte	0x10
	.uleb128 0x8
	.string	"fastBitRate"
	.byte	0xd
	.uahalf	0x32c
	.uaword	0x51ee
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x14
	.byte	0
	.uleb128 0x9
	.string	"IfxMultican_Can_MsgObjControl"
	.byte	0xd
	.uahalf	0x32d
	.uaword	0x8250
	.uleb128 0x24
	.byte	0x10
	.byte	0xd
	.uahalf	0x331
	.uaword	0x838e
	.uleb128 0x10
	.string	"mcan"
	.byte	0xd
	.uahalf	0x333
	.uaword	0x7a2a
	.byte	0
	.uleb128 0x10
	.string	"node"
	.byte	0xd
	.uahalf	0x334
	.uaword	0x838e
	.byte	0x4
	.uleb128 0x11
	.uaword	.LASF26
	.byte	0xd
	.uahalf	0x335
	.uaword	0x5398
	.byte	0x8
	.uleb128 0x10
	.string	"fastNode"
	.byte	0xd
	.uahalf	0x336
	.uaword	0x521e
	.byte	0xc
	.byte	0
	.uleb128 0x1f
	.byte	0x4
	.uaword	0x2e07
	.uleb128 0x9
	.string	"IfxMultican_Can_Node"
	.byte	0xd
	.uahalf	0x337
	.uaword	0x8349
	.uleb128 0x24
	.byte	0x4
	.byte	0xd
	.uahalf	0x33f
	.uaword	0x83c9
	.uleb128 0x10
	.string	"mcan"
	.byte	0xd
	.uahalf	0x341
	.uaword	0x7a2a
	.byte	0
	.byte	0
	.uleb128 0x9
	.string	"IfxMultican_Can"
	.byte	0xd
	.uahalf	0x342
	.uaword	0x83b1
	.uleb128 0x24
	.byte	0x8c
	.byte	0xd
	.uahalf	0x346
	.uaword	0x8436
	.uleb128 0x11
	.uaword	.LASF25
	.byte	0xd
	.uahalf	0x348
	.uaword	0x7a2a
	.byte	0
	.uleb128 0x10
	.string	"clockSelect"
	.byte	0xd
	.uahalf	0x349
	.uaword	0x7b54
	.byte	0x4
	.uleb128 0x10
	.string	"moduleFreq"
	.byte	0xd
	.uahalf	0x34a
	.uaword	0x51fc
	.byte	0x8
	.uleb128 0x10
	.string	"nodePointer"
	.byte	0xd
	.uahalf	0x34b
	.uaword	0x8436
	.byte	0xc
	.byte	0
	.uleb128 0x12
	.uaword	0x81d6
	.uaword	0x8446
	.uleb128 0x13
	.uaword	0x2dda
	.byte	0xf
	.byte	0
	.uleb128 0x9
	.string	"IfxMultican_Can_Config"
	.byte	0xd
	.uahalf	0x34c
	.uaword	0x83e1
	.uleb128 0x24
	.byte	0x10
	.byte	0xd
	.uahalf	0x350
	.uaword	0x84ac
	.uleb128 0x10
	.string	"node"
	.byte	0xd
	.uahalf	0x352
	.uaword	0x84ac
	.byte	0
	.uleb128 0x11
	.uaword	.LASF28
	.byte	0xd
	.uahalf	0x353
	.uaword	0x7aab
	.byte	0x4
	.uleb128 0x11
	.uaword	.LASF29
	.byte	0xd
	.uahalf	0x354
	.uaword	0x51d2
	.byte	0x8
	.uleb128 0x10
	.string	"fifoPointer"
	.byte	0xd
	.uahalf	0x355
	.uaword	0x7aab
	.byte	0xc
	.byte	0
	.uleb128 0x1f
	.byte	0x4
	.uaword	0x8394
	.uleb128 0x9
	.string	"IfxMultican_Can_MsgObj"
	.byte	0xd
	.uahalf	0x356
	.uaword	0x8465
	.uleb128 0x24
	.byte	0x54
	.byte	0xd
	.uahalf	0x35a
	.uaword	0x85d2
	.uleb128 0x10
	.string	"node"
	.byte	0xd
	.uahalf	0x35c
	.uaword	0x84ac
	.byte	0
	.uleb128 0x11
	.uaword	.LASF28
	.byte	0xd
	.uahalf	0x35d
	.uaword	0x7aab
	.byte	0x4
	.uleb128 0x11
	.uaword	.LASF29
	.byte	0xd
	.uahalf	0x35e
	.uaword	0x51d2
	.byte	0x8
	.uleb128 0x10
	.string	"control"
	.byte	0xd
	.uahalf	0x35f
	.uaword	0x8323
	.byte	0xc
	.uleb128 0x10
	.string	"frame"
	.byte	0xd
	.uahalf	0x360
	.uaword	0x7e1a
	.byte	0x24
	.uleb128 0x10
	.string	"acceptanceMask"
	.byte	0xd
	.uahalf	0x361
	.uaword	0x51ee
	.byte	0x28
	.uleb128 0x10
	.string	"messageId"
	.byte	0xd
	.uahalf	0x362
	.uaword	0x51ee
	.byte	0x2c
	.uleb128 0x11
	.uaword	.LASF27
	.byte	0xd
	.uahalf	0x363
	.uaword	0x7e7b
	.byte	0x30
	.uleb128 0x10
	.string	"rxInterrupt"
	.byte	0xd
	.uahalf	0x364
	.uaword	0x8228
	.byte	0x34
	.uleb128 0x10
	.string	"txInterrupt"
	.byte	0xd
	.uahalf	0x365
	.uaword	0x8228
	.byte	0x3c
	.uleb128 0x8
	.string	"gatewayTransfers"
	.byte	0xd
	.uahalf	0x366
	.uaword	0x51ee
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x44
	.uleb128 0x10
	.string	"gatewayConfig"
	.byte	0xd
	.uahalf	0x367
	.uaword	0x8182
	.byte	0x48
	.uleb128 0x10
	.string	"firstSlaveObjId"
	.byte	0xd
	.uahalf	0x368
	.uaword	0x7aab
	.byte	0x50
	.byte	0
	.uleb128 0x9
	.string	"IfxMultican_Can_MsgObjConfig"
	.byte	0xd
	.uahalf	0x369
	.uaword	0x84d1
	.uleb128 0x24
	.byte	0x68
	.byte	0xd
	.uahalf	0x36d
	.uaword	0x879b
	.uleb128 0x11
	.uaword	.LASF25
	.byte	0xd
	.uahalf	0x36f
	.uaword	0x7a2a
	.byte	0
	.uleb128 0x11
	.uaword	.LASF26
	.byte	0xd
	.uahalf	0x370
	.uaword	0x5398
	.byte	0x4
	.uleb128 0x10
	.string	"analyzerMode"
	.byte	0xd
	.uahalf	0x371
	.uaword	0x521e
	.byte	0x8
	.uleb128 0x10
	.string	"loopBackMode"
	.byte	0xd
	.uahalf	0x372
	.uaword	0x521e
	.byte	0x9
	.uleb128 0x10
	.string	"baudrate"
	.byte	0xd
	.uahalf	0x373
	.uaword	0x51ee
	.byte	0xc
	.uleb128 0x10
	.string	"samplePoint"
	.byte	0xd
	.uahalf	0x374
	.uaword	0x51d2
	.byte	0x10
	.uleb128 0x10
	.string	"synchJumpWidth"
	.byte	0xd
	.uahalf	0x375
	.uaword	0x51d2
	.byte	0x12
	.uleb128 0x10
	.string	"flexibleDataRate"
	.byte	0xd
	.uahalf	0x376
	.uaword	0x521e
	.byte	0x14
	.uleb128 0x10
	.string	"fdConfig"
	.byte	0xd
	.uahalf	0x377
	.uaword	0x80dc
	.byte	0x18
	.uleb128 0x10
	.string	"rxPin"
	.byte	0xd
	.uahalf	0x378
	.uaword	0x879b
	.byte	0x2c
	.uleb128 0x10
	.string	"rxPinMode"
	.byte	0xd
	.uahalf	0x379
	.uaword	0x7844
	.byte	0x30
	.uleb128 0x10
	.string	"txPin"
	.byte	0xd
	.uahalf	0x37a
	.uaword	0x87a1
	.byte	0x34
	.uleb128 0x10
	.string	"txPinMode"
	.byte	0xd
	.uahalf	0x37b
	.uaword	0x799a
	.byte	0x38
	.uleb128 0x10
	.string	"errorWarningLevel"
	.byte	0xd
	.uahalf	0x37c
	.uaword	0x51b7
	.byte	0x3c
	.uleb128 0x10
	.string	"transferInterrupt"
	.byte	0xd
	.uahalf	0x37d
	.uaword	0x8228
	.byte	0x40
	.uleb128 0x10
	.string	"lastErrorCodeInterrupt"
	.byte	0xd
	.uahalf	0x37e
	.uaword	0x8228
	.byte	0x48
	.uleb128 0x10
	.string	"alertInterrupt"
	.byte	0xd
	.uahalf	0x37f
	.uaword	0x8228
	.byte	0x50
	.uleb128 0x10
	.string	"frameCounterInterrupt"
	.byte	0xd
	.uahalf	0x380
	.uaword	0x8228
	.byte	0x58
	.uleb128 0x10
	.string	"timerInterrupt"
	.byte	0xd
	.uahalf	0x381
	.uaword	0x8228
	.byte	0x60
	.byte	0
	.uleb128 0x1f
	.byte	0x4
	.uaword	0x7a30
	.uleb128 0x1f
	.byte	0x4
	.uaword	0x7a8b
	.uleb128 0x9
	.string	"IfxMultican_Can_NodeConfig"
	.byte	0xd
	.uahalf	0x382
	.uaword	0x85f7
	.uleb128 0x23
	.byte	0x44
	.byte	0xe
	.byte	0x1a
	.uaword	0x882f
	.uleb128 0x19
	.string	"can"
	.byte	0xe
	.byte	0x1c
	.uaword	0x83c9
	.byte	0
	.uleb128 0x19
	.string	"canSrcNode"
	.byte	0xe
	.byte	0x1d
	.uaword	0x8394
	.byte	0x4
	.uleb128 0x19
	.string	"canDstNode"
	.byte	0xe
	.byte	0x1e
	.uaword	0x8394
	.byte	0x14
	.uleb128 0x19
	.string	"canDstMsgObj"
	.byte	0xe
	.byte	0x1f
	.uaword	0x84b2
	.byte	0x24
	.uleb128 0x19
	.string	"canSrcMsgObj"
	.byte	0xe
	.byte	0x20
	.uaword	0x84b2
	.byte	0x34
	.byte	0
	.uleb128 0x23
	.byte	0x44
	.byte	0xe
	.byte	0x18
	.uaword	0x8848
	.uleb128 0x19
	.string	"drivers"
	.byte	0xe
	.byte	0x21
	.uaword	0x87ca
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"pMultiCAN"
	.byte	0xe
	.byte	0x22
	.uaword	0x882f
	.uleb128 0x25
	.uahalf	0x144
	.byte	0xe
	.byte	0x26
	.uaword	0x8891
	.uleb128 0x19
	.string	"can"
	.byte	0xe
	.byte	0x28
	.uaword	0x83c9
	.byte	0
	.uleb128 0x19
	.string	"canNode"
	.byte	0xe
	.byte	0x29
	.uaword	0x8891
	.byte	0x4
	.uleb128 0x19
	.string	"canMsgObj"
	.byte	0xe
	.byte	0x2a
	.uaword	0x88a1
	.byte	0x44
	.byte	0
	.uleb128 0x12
	.uaword	0x8394
	.uaword	0x88a1
	.uleb128 0x13
	.uaword	0x2dda
	.byte	0x3
	.byte	0
	.uleb128 0x12
	.uaword	0x84b2
	.uaword	0x88b1
	.uleb128 0x13
	.uaword	0x2dda
	.byte	0xf
	.byte	0
	.uleb128 0x25
	.uahalf	0x1c4
	.byte	0xe
	.byte	0x24
	.uaword	0x88eb
	.uleb128 0x19
	.string	"drivers"
	.byte	0xe
	.byte	0x2b
	.uaword	0x8859
	.byte	0
	.uleb128 0x1c
	.string	"txData"
	.byte	0xe
	.byte	0x2d
	.uaword	0x88eb
	.uahalf	0x144
	.uleb128 0x1c
	.string	"rxData"
	.byte	0xe
	.byte	0x2e
	.uaword	0x88eb
	.uahalf	0x184
	.byte	0
	.uleb128 0x12
	.uaword	0x51ee
	.uaword	0x88fb
	.uleb128 0x13
	.uaword	0x2dda
	.byte	0xf
	.byte	0
	.uleb128 0x5
	.string	"App_MulticanFd"
	.byte	0xe
	.byte	0x2f
	.uaword	0x88b1
	.uleb128 0x12
	.uaword	0x51b7
	.uaword	0x8921
	.uleb128 0x13
	.uaword	0x2dda
	.byte	0x3
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.string	"Set_CAN_Module"
	.byte	0x1
	.byte	0x36
	.byte	0x1
	.uaword	.LFB339
	.uaword	.LFE339
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x8994
	.uleb128 0x27
	.string	"canConfig"
	.byte	0x1
	.byte	0x39
	.uaword	0x8446
	.byte	0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x28
	.uaword	.LVL0
	.uaword	0x921e
	.uaword	0x8978
	.uleb128 0x29
	.byte	0x1
	.byte	0x65
	.byte	0x6
	.byte	0x11
	.sleb128 -268337152
	.uleb128 0x29
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 -140
	.byte	0
	.uleb128 0x2a
	.uaword	.LVL1
	.byte	0x1
	.uaword	0x925b
	.uleb128 0x29
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x29
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	pMultican
	.byte	0
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.string	"Set_CAN_Enable"
	.byte	0x1
	.byte	0x40
	.byte	0x1
	.uaword	.LFB340
	.uaword	.LFE340
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x8a26
	.uleb128 0x2b
	.uaword	.LASF30
	.byte	0x1
	.byte	0x40
	.uaword	0x51b7
	.uaword	.LLST0
	.uleb128 0x2c
	.string	"FD"
	.byte	0x1
	.byte	0x40
	.uaword	0x51b7
	.uaword	.LLST1
	.uleb128 0x27
	.string	"canNodeConfig"
	.byte	0x1
	.byte	0x43
	.uaword	0x87a7
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x28
	.uaword	.LVL3
	.uaword	0x92a1
	.uaword	0x8a07
	.uleb128 0x29
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0x29
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.uaword	.LVL4
	.byte	0x1
	.uaword	0x92dd
	.uleb128 0x29
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0x29
	.byte	0x1
	.byte	0x64
	.byte	0x9
	.byte	0x7f
	.sleb128 0
	.byte	0x34
	.byte	0x24
	.byte	0x8c
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.string	"Set_CAN_BitRate"
	.byte	0x1
	.byte	0x79
	.byte	0x1
	.uaword	.LFB341
	.uaword	.LFE341
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x8a87
	.uleb128 0x2b
	.uaword	.LASF30
	.byte	0x1
	.byte	0x79
	.uaword	0x51b7
	.uaword	.LLST2
	.uleb128 0x2d
	.string	"nom_Baudrate"
	.byte	0x1
	.byte	0x79
	.uaword	0x51ee
	.byte	0x1
	.byte	0x55
	.uleb128 0x2d
	.string	"fast_Baudrate"
	.byte	0x1
	.byte	0x79
	.uaword	0x51ee
	.byte	0x1
	.byte	0x56
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.string	"Set_CAN_BitTiming"
	.byte	0x1
	.byte	0x7f
	.byte	0x1
	.uaword	.LFB342
	.uaword	.LFE342
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x8b0f
	.uleb128 0x2e
	.uaword	.LASF30
	.byte	0x1
	.byte	0x7f
	.uaword	0x51b7
	.byte	0x1
	.byte	0x54
	.uleb128 0x2d
	.string	"nom_SJW"
	.byte	0x1
	.byte	0x80
	.uaword	0x51ee
	.byte	0x1
	.byte	0x55
	.uleb128 0x2d
	.string	"nom_SP"
	.byte	0x1
	.byte	0x80
	.uaword	0x51ee
	.byte	0x1
	.byte	0x56
	.uleb128 0x2d
	.string	"fast_SJW"
	.byte	0x1
	.byte	0x81
	.uaword	0x51ee
	.byte	0x1
	.byte	0x57
	.uleb128 0x2d
	.string	"fast_SP"
	.byte	0x1
	.byte	0x81
	.uaword	0x51ee
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.string	"_LDO"
	.byte	0x1
	.byte	0x82
	.uaword	0x51b7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.string	"Set_CAN_msgObject"
	.byte	0x1
	.byte	0x8c
	.byte	0x1
	.uaword	.LFB343
	.uaword	.LFE343
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x8bc5
	.uleb128 0x2b
	.uaword	.LASF31
	.byte	0x1
	.byte	0x8c
	.uaword	0x51b7
	.uaword	.LLST3
	.uleb128 0x2b
	.uaword	.LASF30
	.byte	0x1
	.byte	0x8c
	.uaword	0x51b7
	.uaword	.LLST4
	.uleb128 0x2c
	.string	"ID"
	.byte	0x1
	.byte	0x8c
	.uaword	0x51ee
	.uaword	.LLST5
	.uleb128 0x2c
	.string	"size_frame"
	.byte	0x1
	.byte	0x8d
	.uaword	0x51b7
	.uaword	.LLST6
	.uleb128 0x2d
	.string	"FD_on"
	.byte	0x1
	.byte	0x8d
	.uaword	0x51b7
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.uaword	.LASF32
	.byte	0x1
	.byte	0x90
	.uaword	0x85d2
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x28
	.uaword	.LVL10
	.uaword	0x9311
	.uaword	0x8bab
	.uleb128 0x29
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.byte	0
	.uleb128 0x2a
	.uaword	.LVL11
	.byte	0x1
	.uaword	0x934f
	.uleb128 0x29
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x29
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x7f
	.sleb128 68
	.byte	0
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.string	"Set_CAN_Rx"
	.byte	0x1
	.byte	0xbe
	.byte	0x1
	.uaword	.LFB344
	.uaword	.LFE344
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x8d1b
	.uleb128 0x2b
	.uaword	.LASF31
	.byte	0x1
	.byte	0xbe
	.uaword	0x51b7
	.uaword	.LLST7
	.uleb128 0x2b
	.uaword	.LASF30
	.byte	0x1
	.byte	0xbe
	.uaword	0x51b7
	.uaword	.LLST8
	.uleb128 0x2c
	.string	"ID_mask"
	.byte	0x1
	.byte	0xbe
	.uaword	0x51ee
	.uaword	.LLST9
	.uleb128 0x2c
	.string	"ID_accept"
	.byte	0x1
	.byte	0xbe
	.uaword	0x51ee
	.uaword	.LLST10
	.uleb128 0x2c
	.string	"Frame_extend"
	.byte	0x1
	.byte	0xbf
	.uaword	0x51b7
	.uaword	.LLST11
	.uleb128 0x2c
	.string	"FD_on"
	.byte	0x1
	.byte	0xbf
	.uaword	0x51b7
	.uaword	.LLST12
	.uleb128 0x2c
	.string	"isrFuncPointer"
	.byte	0x1
	.byte	0xbf
	.uaword	0x519c
	.uaword	.LLST13
	.uleb128 0x2b
	.uaword	.LASF27
	.byte	0x1
	.byte	0xbf
	.uaword	0x51d2
	.uaword	.LLST14
	.uleb128 0x2c
	.string	"num_core"
	.byte	0x1
	.byte	0xbf
	.uaword	0x51b7
	.uaword	.LLST15
	.uleb128 0x27
	.string	"srcPointer"
	.byte	0x1
	.byte	0xc2
	.uaword	0x8d1b
	.byte	0x1
	.byte	0x6f
	.uleb128 0x30
	.byte	0x1
	.uaword	.LASF38
	.byte	0x1
	.byte	0xc8
	.uaword	0x1fc4
	.byte	0x1
	.uaword	0x8cb7
	.uleb128 0x31
	.byte	0
	.uleb128 0x2f
	.uaword	.LASF32
	.byte	0x1
	.byte	0xcb
	.uaword	0x85d2
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x28
	.uaword	.LVL16
	.uaword	0x9396
	.uaword	0x8cdb
	.uleb128 0x29
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0
	.uleb128 0x28
	.uaword	.LVL17
	.uaword	0x9311
	.uaword	0x8cfb
	.uleb128 0x29
	.byte	0x1
	.byte	0x65
	.byte	0x7
	.byte	0x7d
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x29
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.byte	0
	.uleb128 0x2a
	.uaword	.LVL18
	.byte	0x1
	.uaword	0x934f
	.uleb128 0x29
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x29
	.byte	0x1
	.byte	0x64
	.byte	0x9
	.byte	0x7f
	.sleb128 0
	.byte	0x34
	.byte	0x24
	.byte	0x7d
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x44
	.byte	0
	.byte	0
	.uleb128 0x1f
	.byte	0x4
	.uaword	0x3204
	.uleb128 0x26
	.byte	0x1
	.string	"IO_Send_Duplicate_CAN"
	.byte	0x1
	.byte	0xf0
	.byte	0x1
	.uaword	.LFB345
	.uaword	.LFE345
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x8d84
	.uleb128 0x2b
	.uaword	.LASF33
	.byte	0x1
	.byte	0xf0
	.uaword	0x51b7
	.uaword	.LLST16
	.uleb128 0x2d
	.string	"data"
	.byte	0x1
	.byte	0xf0
	.uaword	0x8d84
	.byte	0x1
	.byte	0x64
	.uleb128 0x2d
	.string	"size"
	.byte	0x1
	.byte	0xf0
	.uaword	0x51b7
	.byte	0x1
	.byte	0x55
	.uleb128 0x2f
	.uaword	.LASF34
	.byte	0x1
	.byte	0xf2
	.uaword	0x8d8a
	.byte	0x1
	.byte	0x6f
	.byte	0
	.uleb128 0x1f
	.byte	0x4
	.uaword	0x51b7
	.uleb128 0x1f
	.byte	0x4
	.uaword	0x2c9e
	.uleb128 0x26
	.byte	0x1
	.string	"IO_Send_CAN"
	.byte	0x1
	.byte	0xfa
	.byte	0x1
	.uaword	.LFB346
	.uaword	.LFE346
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x8e28
	.uleb128 0x2b
	.uaword	.LASF33
	.byte	0x1
	.byte	0xfa
	.uaword	0x51b7
	.uaword	.LLST17
	.uleb128 0x2c
	.string	"data"
	.byte	0x1
	.byte	0xfa
	.uaword	0x8d84
	.uaword	.LLST18
	.uleb128 0x2d
	.string	"size"
	.byte	0x1
	.byte	0xfa
	.uaword	0x51b7
	.byte	0x1
	.byte	0x55
	.uleb128 0x32
	.uaword	.LASF35
	.byte	0x1
	.uahalf	0x100
	.uaword	0x8e28
	.byte	0x5
	.byte	0x3
	.uaword	buffer.14021
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.uahalf	0x101
	.uaword	0x1fc4
	.uaword	.LLST19
	.uleb128 0x32
	.uaword	.LASF34
	.byte	0x1
	.uahalf	0x106
	.uaword	0x8d8a
	.byte	0x1
	.byte	0x64
	.uleb128 0x32
	.uaword	.LASF36
	.byte	0x1
	.uahalf	0x107
	.uaword	0x8d8a
	.byte	0x1
	.byte	0x62
	.uleb128 0x32
	.uaword	.LASF37
	.byte	0x1
	.uahalf	0x108
	.uaword	0x8d8a
	.byte	0x1
	.byte	0x63
	.byte	0
	.uleb128 0x12
	.uaword	0x51a4
	.uaword	0x8e38
	.uleb128 0x13
	.uaword	0x2dda
	.byte	0x3f
	.byte	0
	.uleb128 0x34
	.byte	0x1
	.string	"printf_CAN"
	.byte	0x1
	.uahalf	0x163
	.byte	0x1
	.uaword	.LFB347
	.uaword	.LFE347
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x8f2f
	.uleb128 0x35
	.uaword	.LASF33
	.byte	0x1
	.uahalf	0x163
	.uaword	0x51b7
	.uaword	.LLST20
	.uleb128 0x36
	.string	"fmt"
	.byte	0x1
	.uahalf	0x163
	.uaword	0x8d84
	.uaword	.LLST21
	.uleb128 0x31
	.uleb128 0x32
	.uaword	.LASF34
	.byte	0x1
	.uahalf	0x165
	.uaword	0x8d8a
	.byte	0x1
	.byte	0x6d
	.uleb128 0x32
	.uaword	.LASF36
	.byte	0x1
	.uahalf	0x166
	.uaword	0x8d8a
	.byte	0x1
	.byte	0x6f
	.uleb128 0x32
	.uaword	.LASF37
	.byte	0x1
	.uahalf	0x167
	.uaword	0x8d8a
	.byte	0x1
	.byte	0x6c
	.uleb128 0x32
	.uaword	.LASF35
	.byte	0x1
	.uahalf	0x16b
	.uaword	0x8e28
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x37
	.string	"ap"
	.byte	0x1
	.uahalf	0x16c
	.uaword	0x510f
	.byte	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x9f
	.uleb128 0x38
	.string	"length"
	.byte	0x1
	.uahalf	0x178
	.uaword	0x51c4
	.uleb128 0x39
	.byte	0x1
	.string	"strlen"
	.byte	0x10
	.byte	0
	.byte	0x1
	.uaword	0x511e
	.byte	0x1
	.uaword	0x8eeb
	.uleb128 0x3a
	.uaword	0x51ac
	.byte	0
	.uleb128 0x33
	.string	"i_buf"
	.byte	0x1
	.uahalf	0x17a
	.uaword	0x1fc4
	.uaword	.LLST22
	.uleb128 0x28
	.uaword	.LVL33
	.uaword	0x93a9
	.uaword	0x8f1e
	.uleb128 0x29
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.uleb128 0x29
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0
	.uleb128 0x3b
	.uaword	.LVL34
	.uaword	0x93d0
	.uleb128 0x29
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3c
	.byte	0x1
	.string	"Get_CAN_RxBuffer"
	.byte	0x1
	.uahalf	0x1d8
	.byte	0x1
	.uaword	0x51ee
	.uaword	.LFB348
	.uaword	.LFE348
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x8fcb
	.uleb128 0x36
	.string	"num_MsgObj"
	.byte	0x1
	.uahalf	0x1d8
	.uaword	0x51b7
	.uaword	.LLST23
	.uleb128 0x3d
	.uaword	.LASF35
	.byte	0x1
	.uahalf	0x1d8
	.uaword	0x8d84
	.byte	0x1
	.byte	0x64
	.uleb128 0x32
	.uaword	.LASF34
	.byte	0x1
	.uahalf	0x1da
	.uaword	0x8d8a
	.byte	0x1
	.byte	0x63
	.uleb128 0x32
	.uaword	.LASF36
	.byte	0x1
	.uahalf	0x1db
	.uaword	0x8d8a
	.byte	0x1
	.byte	0x6f
	.uleb128 0x32
	.uaword	.LASF37
	.byte	0x1
	.uahalf	0x1dc
	.uaword	0x8d8a
	.byte	0x1
	.byte	0x62
	.uleb128 0x38
	.string	"ID_result"
	.byte	0x1
	.uahalf	0x234
	.uaword	0x51ee
	.uleb128 0x38
	.string	"ID_temp"
	.byte	0x1
	.uahalf	0x234
	.uaword	0x51ee
	.byte	0
	.uleb128 0x3e
	.string	"portLED"
	.byte	0xf
	.byte	0x2c
	.uaword	0x8fdf
	.sleb128 -268184832
	.uleb128 0x20
	.uaword	0x77be
	.uleb128 0x12
	.uaword	0x51ee
	.uaword	0x8ff4
	.uleb128 0x13
	.uaword	0x2dda
	.byte	0x3
	.byte	0
	.uleb128 0x27
	.string	"Baudrate_nominal"
	.byte	0x1
	.byte	0x1f
	.uaword	0x8fe4
	.byte	0x5
	.byte	0x3
	.uaword	Baudrate_nominal
	.uleb128 0x27
	.string	"Baudrate_fast"
	.byte	0x1
	.byte	0x20
	.uaword	0x8fe4
	.byte	0x5
	.byte	0x3
	.uaword	Baudrate_fast
	.uleb128 0x27
	.string	"SJW_nominal"
	.byte	0x1
	.byte	0x21
	.uaword	0x8fe4
	.byte	0x5
	.byte	0x3
	.uaword	SJW_nominal
	.uleb128 0x27
	.string	"SP_nominal"
	.byte	0x1
	.byte	0x22
	.uaword	0x8fe4
	.byte	0x5
	.byte	0x3
	.uaword	SP_nominal
	.uleb128 0x27
	.string	"SJW_fast"
	.byte	0x1
	.byte	0x23
	.uaword	0x8fe4
	.byte	0x5
	.byte	0x3
	.uaword	SJW_fast
	.uleb128 0x27
	.string	"SP_fast"
	.byte	0x1
	.byte	0x24
	.uaword	0x8fe4
	.byte	0x5
	.byte	0x3
	.uaword	SP_fast
	.uleb128 0x27
	.string	"LDO"
	.byte	0x1
	.byte	0x25
	.uaword	0x8911
	.byte	0x5
	.byte	0x3
	.uaword	LDO
	.uleb128 0x3f
	.string	"IfxMultican_RXD0B_P20_7_IN"
	.byte	0xb
	.byte	0x39
	.uaword	0x7a30
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.string	"IfxMultican_RXD1B_P14_1_IN"
	.byte	0xb
	.byte	0x3f
	.uaword	0x7a30
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.string	"IfxMultican_RXD2E_P10_2_IN"
	.byte	0xb
	.byte	0x47
	.uaword	0x7a30
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.string	"IfxMultican_RXD3A_P00_3_IN"
	.byte	0xb
	.byte	0x48
	.uaword	0x7a30
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.string	"IfxMultican_TXD0_P20_8_OUT"
	.byte	0xb
	.byte	0x50
	.uaword	0x7a8b
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.string	"IfxMultican_TXD1_P14_0_OUT"
	.byte	0xb
	.byte	0x56
	.uaword	0x7a8b
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.string	"IfxMultican_TXD2_P10_3_OUT"
	.byte	0xb
	.byte	0x59
	.uaword	0x7a8b
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.string	"IfxMultican_TXD3_P00_2_OUT"
	.byte	0xb
	.byte	0x5d
	.uaword	0x7a8b
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.uaword	0x8848
	.uaword	0x91ca
	.uleb128 0x13
	.uaword	0x2dda
	.byte	0x3
	.byte	0
	.uleb128 0x40
	.string	"pCAN"
	.byte	0x1
	.byte	0x19
	.uaword	0x91ba
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	pCAN
	.uleb128 0x40
	.string	"pMultican"
	.byte	0x1
	.byte	0x1a
	.uaword	0x88fb
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	pMultican
	.uleb128 0x12
	.uaword	0x51b7
	.uaword	0x9205
	.uleb128 0x13
	.uaword	0x2dda
	.byte	0x3f
	.byte	0
	.uleb128 0x40
	.string	"TxData_CAN"
	.byte	0x1
	.byte	0x1d
	.uaword	0x91f5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	TxData_CAN
	.uleb128 0x41
	.byte	0x1
	.string	"IfxMultican_Can_initModuleConfig"
	.byte	0xd
	.uahalf	0x3bc
	.byte	0x1
	.byte	0x1
	.uaword	0x9255
	.uleb128 0x3a
	.uaword	0x9255
	.uleb128 0x3a
	.uaword	0x7a2a
	.byte	0
	.uleb128 0x1f
	.byte	0x4
	.uaword	0x8446
	.uleb128 0x42
	.byte	0x1
	.string	"IfxMultican_Can_initModule"
	.byte	0xd
	.uahalf	0x3b2
	.byte	0x1
	.uaword	0x8000
	.byte	0x1
	.uaword	0x9290
	.uleb128 0x3a
	.uaword	0x9290
	.uleb128 0x3a
	.uaword	0x9296
	.byte	0
	.uleb128 0x1f
	.byte	0x4
	.uaword	0x83c9
	.uleb128 0x1f
	.byte	0x4
	.uaword	0x929c
	.uleb128 0x20
	.uaword	0x8446
	.uleb128 0x41
	.byte	0x1
	.string	"IfxMultican_Can_Node_initConfig"
	.byte	0xd
	.uahalf	0x404
	.byte	0x1
	.byte	0x1
	.uaword	0x92d7
	.uleb128 0x3a
	.uaword	0x92d7
	.uleb128 0x3a
	.uaword	0x9290
	.byte	0
	.uleb128 0x1f
	.byte	0x4
	.uaword	0x87a7
	.uleb128 0x42
	.byte	0x1
	.string	"IfxMultican_Can_Node_init"
	.byte	0xd
	.uahalf	0x3fa
	.byte	0x1
	.uaword	0x8000
	.byte	0x1
	.uaword	0x9311
	.uleb128 0x3a
	.uaword	0x84ac
	.uleb128 0x3a
	.uaword	0x92d7
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.string	"IfxMultican_Can_MsgObj_initConfig"
	.byte	0xd
	.uahalf	0x47f
	.byte	0x1
	.byte	0x1
	.uaword	0x9349
	.uleb128 0x3a
	.uaword	0x9349
	.uleb128 0x3a
	.uaword	0x84ac
	.byte	0
	.uleb128 0x1f
	.byte	0x4
	.uaword	0x85d2
	.uleb128 0x42
	.byte	0x1
	.string	"IfxMultican_Can_MsgObj_init"
	.byte	0xd
	.uahalf	0x475
	.byte	0x1
	.uaword	0x8000
	.byte	0x1
	.uaword	0x9385
	.uleb128 0x3a
	.uaword	0x9385
	.uleb128 0x3a
	.uaword	0x938b
	.byte	0
	.uleb128 0x1f
	.byte	0x4
	.uaword	0x84b2
	.uleb128 0x1f
	.byte	0x4
	.uaword	0x9391
	.uleb128 0x20
	.uaword	0x85d2
	.uleb128 0x30
	.byte	0x1
	.uaword	.LASF38
	.byte	0x1
	.byte	0xc8
	.uaword	0x1fc4
	.byte	0x1
	.uaword	0x93a9
	.uleb128 0x31
	.byte	0
	.uleb128 0x39
	.byte	0x1
	.string	"vsprintf"
	.byte	0x11
	.byte	0xc4
	.byte	0x1
	.uaword	0x1fc4
	.byte	0x1
	.uaword	0x93d0
	.uleb128 0x3a
	.uaword	0x519e
	.uleb128 0x3a
	.uaword	0x51ac
	.uleb128 0x3a
	.uaword	0x519c
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.string	"strlen"
	.byte	0x10
	.byte	0
	.byte	0x1
	.uaword	0x511e
	.byte	0x1
	.uleb128 0x3a
	.uaword	0x51ac
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
	.uleb128 0x3
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
	.uleb128 0x4
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
	.uleb128 0x5
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
	.uleb128 0x9
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
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x35
	.byte	0
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x5
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x13
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
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0x13
	.byte	0x1
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3b
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.uleb128 0x3f
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
	.uleb128 0x40
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
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x42
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
	.uaword	.LVL2-.Ltext0
	.uaword	.LVL3-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL3-1-.Ltext0
	.uaword	.LFE340-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL2-.Ltext0
	.uaword	.LVL3-1-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL3-1-.Ltext0
	.uaword	.LFE340-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL5-.Ltext0
	.uaword	.LVL6-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL6-.Ltext0
	.uaword	.LFE341-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL8-.Ltext0
	.uaword	.LVL10-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL10-1-.Ltext0
	.uaword	.LFE343-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL8-.Ltext0
	.uaword	.LVL9-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL9-.Ltext0
	.uaword	.LFE343-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL8-.Ltext0
	.uaword	.LVL10-1-.Ltext0
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL10-1-.Ltext0
	.uaword	.LFE343-.Ltext0
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL8-.Ltext0
	.uaword	.LVL10-1-.Ltext0
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL10-1-.Ltext0
	.uaword	.LFE343-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL12-.Ltext0
	.uaword	.LVL13-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL13-.Ltext0
	.uaword	.LFE344-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL12-.Ltext0
	.uaword	.LVL16-1-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL16-1-.Ltext0
	.uaword	.LFE344-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL12-.Ltext0
	.uaword	.LVL16-1-.Ltext0
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL16-1-.Ltext0
	.uaword	.LFE344-.Ltext0
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL12-.Ltext0
	.uaword	.LVL16-1-.Ltext0
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL16-1-.Ltext0
	.uaword	.LFE344-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL12-.Ltext0
	.uaword	.LVL15-.Ltext0
	.uahalf	0x2
	.byte	0x91
	.sleb128 0
	.uaword	.LVL15-.Ltext0
	.uaword	.LFE344-.Ltext0
	.uahalf	0x1
	.byte	0x5c
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL12-.Ltext0
	.uaword	.LVL15-.Ltext0
	.uahalf	0x2
	.byte	0x91
	.sleb128 4
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL12-.Ltext0
	.uaword	.LVL16-1-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL16-1-.Ltext0
	.uaword	.LFE344-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL12-.Ltext0
	.uaword	.LVL15-.Ltext0
	.uahalf	0x2
	.byte	0x91
	.sleb128 8
	.uaword	.LVL15-.Ltext0
	.uaword	.LVL16-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL12-.Ltext0
	.uaword	.LVL15-.Ltext0
	.uahalf	0x2
	.byte	0x91
	.sleb128 12
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL19-.Ltext0
	.uaword	.LVL20-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL20-.Ltext0
	.uaword	.LFE345-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL22-.Ltext0
	.uaword	.LVL28-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL28-.Ltext0
	.uaword	.LFE346-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL22-.Ltext0
	.uaword	.LVL26-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL26-.Ltext0
	.uaword	.LFE346-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL22-.Ltext0
	.uaword	.LVL23-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL23-.Ltext0
	.uaword	.LVL25-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL30-.Ltext0
	.uaword	.LVL31-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL31-.Ltext0
	.uaword	.LFE347-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL30-.Ltext0
	.uaword	.LVL32-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL32-.Ltext0
	.uaword	.LVL33-1-.Ltext0
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL33-1-.Ltext0
	.uaword	.LFE347-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL37-.Ltext0
	.uaword	.LVL39-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL40-.Ltext0
	.uaword	.LVL41-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL41-.Ltext0
	.uaword	.LFE348-.Ltext0
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
.LASF5:
	.string	"MODNUMBER"
.LASF28:
	.string	"msgObjId"
.LASF33:
	.string	"number_MsgObj"
.LASF36:
	.string	"hwtopObj"
.LASF38:
	.string	"IfxCpu_Irq_installInterruptHandler"
.LASF3:
	.string	"reserved_10"
.LASF12:
	.string	"reserved_12"
.LASF4:
	.string	"reserved_16"
.LASF10:
	.string	"reserved_18"
.LASF26:
	.string	"nodeId"
.LASF27:
	.string	"priority"
.LASF19:
	.string	"reserved_20"
.LASF16:
	.string	"reserved_21"
.LASF18:
	.string	"reserved_24"
.LASF7:
	.string	"reserved_25"
.LASF8:
	.string	"reserved_26"
.LASF13:
	.string	"reserved_28"
.LASF34:
	.string	"hwObj"
.LASF0:
	.string	"reserved_0"
.LASF6:
	.string	"reserved_1"
.LASF1:
	.string	"reserved_2"
.LASF2:
	.string	"reserved_4"
.LASF15:
	.string	"reserved_6"
.LASF14:
	.string	"reserved_7"
.LASF21:
	.string	"reserved_8"
.LASF24:
	.string	"reserved_C"
.LASF11:
	.string	"reserved_30"
.LASF9:
	.string	"reserved_31"
.LASF31:
	.string	"num_msgObj"
.LASF25:
	.string	"module"
.LASF30:
	.string	"num_ch"
.LASF37:
	.string	"hwbotObj"
.LASF22:
	.string	"reserved_4C"
.LASF17:
	.string	"reserved_15"
.LASF35:
	.string	"buffer"
.LASF20:
	.string	"reserved_600"
.LASF32:
	.string	"canMsgObjConfig"
.LASF23:
	.string	"CERBERUS"
.LASF29:
	.string	"msgObjCount"
	.extern	strlen,STT_FUNC,0
	.extern	vsprintf,STT_FUNC,0
	.extern	IfxCpu_Irq_installInterruptHandler,STT_FUNC,0
	.extern	IfxMultican_Can_MsgObj_init,STT_FUNC,0
	.extern	IfxMultican_Can_MsgObj_initConfig,STT_FUNC,0
	.extern	IfxMultican_TXD3_P00_2_OUT,STT_OBJECT,20
	.extern	IfxMultican_RXD3A_P00_3_IN,STT_OBJECT,20
	.extern	IfxMultican_TXD0_P20_8_OUT,STT_OBJECT,20
	.extern	IfxMultican_RXD0B_P20_7_IN,STT_OBJECT,20
	.extern	IfxMultican_TXD2_P10_3_OUT,STT_OBJECT,20
	.extern	IfxMultican_RXD2E_P10_2_IN,STT_OBJECT,20
	.extern	IfxMultican_Can_Node_init,STT_FUNC,0
	.extern	IfxMultican_TXD1_P14_0_OUT,STT_OBJECT,20
	.extern	IfxMultican_RXD1B_P14_1_IN,STT_OBJECT,20
	.extern	IfxMultican_Can_Node_initConfig,STT_FUNC,0
	.extern	IfxMultican_Can_initModule,STT_FUNC,0
	.extern	IfxMultican_Can_initModuleConfig,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.1.0-infineon-2.0-df254e8) 4.9.4 build on 2018-04-18"
