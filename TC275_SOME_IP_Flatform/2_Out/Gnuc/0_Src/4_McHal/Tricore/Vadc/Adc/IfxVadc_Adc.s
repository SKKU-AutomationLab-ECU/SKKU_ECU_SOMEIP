	.file	"IfxVadc_Adc.c"
.section .text,"ax",@progbits
.Ltext0:
	.align 1
	.global	IfxVadc_Adc_deInitGroup
	.type	IfxVadc_Adc_deInitGroup, @function
IfxVadc_Adc_deInitGroup:
.LFB336:
	.file 1 "0_Src/4_McHal/Tricore/Vadc/Adc/IfxVadc_Adc.c"
	.loc 1 115 0
.LVL0:
	ld.a	%a12, [%a4]0
.LVL1:
	.loc 1 122 0
	ld.w	%d15, [%a4] 8
	ld.a	%a13, [%a4] 4
.LVL2:
	addi	%d15, %d15, 16
.LVL3:
	mov.aa	%a4, %a12
.LVL4:
	mov	%d4, %d15
	call	IfxVadc_enableAccess
.LVL5:
.LBB224:
.LBB225:
	.file 2 "./0_Src/4_McHal/Tricore/Vadc/Std/IfxVadc.h"
	.loc 2 2068 0
	ld.w	%d2, [%a13]0
.LBE225:
.LBE224:
	.loc 1 124 0
	mov.aa	%a4, %a12
.LBB228:
.LBB226:
	.loc 2 2068 0
	andn	%d2, %d2, ~(-4)
.LBE226:
.LBE228:
	.loc 1 124 0
	mov	%d4, %d15
.LBB229:
.LBB227:
	.loc 2 2068 0
	st.w	[%a13]0, %d2
.LBE227:
.LBE229:
	.loc 1 124 0
	j	IfxVadc_disableAccess
.LVL6:
.LFE336:
	.size	IfxVadc_Adc_deInitGroup, .-IfxVadc_Adc_deInitGroup
	.align 1
	.global	IfxVadc_Adc_disableModule
	.type	IfxVadc_Adc_disableModule, @function
IfxVadc_Adc_disableModule:
.LFB337:
	.loc 1 129 0
.LVL7:
	.loc 1 129 0
	mov.aa	%a15, %a4
.LVL8:
.LBB230:
.LBB231:
	.loc 2 1698 0
	call	IfxScuWdt_getCpuWatchdogPassword
.LVL9:
	.loc 2 1699 0
	mov	%d4, %d2
	.loc 2 1698 0
	mov	%d15, %d2
.LVL10:
	.loc 2 1699 0
	call	IfxScuWdt_clearCpuEndinit
.LVL11:
	.loc 2 1700 0
	ld.w	%d2, [%a15]0
	.loc 2 1701 0
	mov	%d4, %d15
	.loc 2 1700 0
	or	%d2, %d2, 1
	st.w	[%a15]0, %d2
	.loc 2 1701 0
	j	IfxScuWdt_setCpuEndinit
.LVL12:
.LBE231:
.LBE230:
.LFE337:
	.size	IfxVadc_Adc_disableModule, .-IfxVadc_Adc_disableModule
	.align 1
	.global	IfxVadc_Adc_getChannelConfig
	.type	IfxVadc_Adc_getChannelConfig, @function
IfxVadc_Adc_getChannelConfig:
.LFB338:
	.loc 1 135 0
.LVL13:
	.loc 1 136 0
	ld.a	%a2, [%a4] 8
	.loc 1 137 0
	ld.w	%d2, [%a4]0
	.loc 1 135 0
	mov.aa	%a12, %a4
	ld.a	%a13, [%a2] 4
.LVL14:
.LBB232:
.LBB233:
	.loc 2 1812 0
	addi	%d15, %d2, 96
.LBE233:
.LBE232:
	.loc 1 140 0
	st.a	[%a5] 56, %a2
.LVL15:
.LBB236:
.LBB234:
	.loc 2 1812 0
	addsc.a	%a2, %a13, %d15, 2
.LVL16:
.LBE234:
.LBE236:
	.loc 1 139 0
	st.w	[%a5] 24, %d2
.LBB237:
.LBB235:
	.loc 2 1812 0
	ld.w	%d15, [%a2]0
.LVL17:
.LBE235:
.LBE237:
	.loc 1 135 0
	mov.aa	%a15, %a5
	.loc 1 146 0
	and	%d3, %d15, 3
	st.w	[%a5] 28, %d3
	.loc 1 147 0
	extr.u	%d3, %d15, 11, 1
	st.w	[%a5] 32, %d3
	.loc 1 148 0
	extr.u	%d3, %d15, 16, 4
	st.w	[%a5] 36, %d3
	.loc 1 149 0
	extr.u	%d3, %d15, 20, 1
	st.b	[%a5]0, %d3
.LVL18:
	.loc 1 150 0
	extr.u	%d3, %d15, 4, 2
	st.w	[%a5] 40, %d3
	.loc 1 151 0
	extr.u	%d3, %d15, 6, 2
	st.w	[%a5] 44, %d3
	.loc 1 152 0
	extr.u	%d3, %d15, 12, 4
	st.w	[%a5] 48, %d3
	.loc 1 153 0
	extr.u	%d3, %d15, 8, 2
	st.w	[%a5] 52, %d3
	.loc 1 154 0
	extr.u	%d3, %d15, 10, 1
	.loc 1 155 0
	extr.u	%d15, %d15, 21, 1
.LVL19:
	.loc 1 154 0
	st.b	[%a5] 1, %d3
	.loc 1 155 0
	st.b	[%a5] 3, %d15
.LVL20:
.LBB238:
.LBB239:
	.loc 2 1768 0
	ld.w	%d15, [%a13] 8
.LVL21:
.LBE239:
.LBE238:
	.loc 1 157 0
	extr.u	%d2, %d15, %d2, 1
.LVL22:
	xor	%d2, %d2, 1
	st.b	[%a5] 2, %d2
	.loc 1 160 0
	ld.a	%a2, [%a4] 8
	.loc 1 161 0
	ld.w	%d15, [%a4]0
.LVL23:
.LBB240:
.LBB241:
	.loc 2 1842 0
	ld.w	%d2, [%a13] 288
.LBE241:
.LBE240:
	.loc 1 161 0
	sh	%d15, 2
	extr.u	%d15, %d2, %d15, 4
	.loc 1 160 0
	ld.w	%d8, [%a2] 8
.LVL24:
	.loc 1 162 0
	mov	%e4, %d15, %d8
	call	IfxVadc_getSrcAddress
.LVL25:
	.loc 1 164 0
	ld.w	%d2, [%a2]0
	jnz.t	%d2, 10, .L11
	.loc 1 172 0
	mov	%d15, 0
.LVL26:
	st.w	[%a15] 20, %d15
	.loc 1 173 0
	st.h	[%a15] 6, %d15
	.loc 1 174 0
	st.w	[%a15] 12, %d15
.L5:
	.loc 1 179 0
	ld.w	%d15, [%a15] 36
	jge.u	%d15, 8, .L6
.LVL27:
	.loc 1 181 0
	ld.w	%d15, [%a12]0
.LBB242:
.LBB243:
	.loc 2 1826 0
	ld.w	%d2, [%a13] 304
.LVL28:
.LBE243:
.LBE242:
	.loc 1 181 0
	sh	%d15, 2
	extr.u	%d15, %d2, %d15, 4
.LVL29:
	.loc 1 188 0
	mov	%e4, %d15, %d8
	call	IfxVadc_getSrcAddress
.LVL30:
	.loc 1 190 0
	ld.w	%d2, [%a2]0
	jnz.t	%d2, 10, .L12
.LVL31:
.L8:
	.loc 1 198 0
	mov	%d15, 0
.LVL32:
	st.w	[%a15] 16, %d15
	.loc 1 199 0
	st.h	[%a15] 4, %d15
	.loc 1 200 0
	st.w	[%a15] 8, %d15
	ret
.L6:
.LVL33:
	.loc 1 185 0
	ld.w	%d15, [%a12]0
.LBB244:
.LBB245:
	.loc 2 1834 0
	ld.w	%d2, [%a13] 308
.LVL34:
.LBE245:
.LBE244:
	.loc 1 185 0
	add	%d15, -8
	sh	%d15, 2
	extr.u	%d15, %d2, %d15, 4
.LVL35:
	.loc 1 188 0
	mov	%e4, %d15, %d8
	call	IfxVadc_getSrcAddress
.LVL36:
	.loc 1 190 0
	ld.w	%d2, [%a2]0
	jz.t	%d2, 10, .L8
.LVL37:
.L12:
	.loc 1 192 0
	st.w	[%a15] 16, %d15
	.loc 1 193 0
	ld.w	%d15, [%a2]0
.LVL38:
	and	%d15, 255
	st.h	[%a15] 4, %d15
	.loc 1 194 0
	ld.w	%d15, [%a2]0
	extr.u	%d15, %d15, 11, 2
	st.w	[%a15] 8, %d15
	ret
.LVL39:
.L11:
	.loc 1 166 0
	st.w	[%a15] 20, %d15
	.loc 1 167 0
	ld.w	%d15, [%a2]0
.LVL40:
	and	%d15, 255
	st.h	[%a15] 6, %d15
	.loc 1 168 0
	ld.w	%d15, [%a2]0
	extr.u	%d15, %d15, 11, 2
	st.w	[%a15] 12, %d15
	j	.L5
.LFE338:
	.size	IfxVadc_Adc_getChannelConfig, .-IfxVadc_Adc_getChannelConfig
	.align 1
	.global	IfxVadc_Adc_getChannelConversionTime
	.type	IfxVadc_Adc_getChannelConversionTime, @function
IfxVadc_Adc_getChannelConversionTime:
.LFB339:
	.loc 1 206 0
.LVL41:
	.loc 1 207 0
	ld.a	%a15, [%a4] 8
	ld.w	%d15, [%a4]0
	.loc 1 206 0
	mov	%d9, %d4
	.loc 1 207 0
	ld.a	%a2, [%a15] 4
.LVL42:
	ld.w	%d10, [%a15] 8
.LBB246:
.LBB247:
	.loc 2 1819 0
	addi	%d15, %d15, 96
.LVL43:
.LBE247:
.LBE246:
	.loc 1 207 0
	ld.a	%a15, [%a15]0
.LBB251:
.LBB248:
	.loc 2 1819 0
	addsc.a	%a2, %a2, %d15, 2
.LVL44:
.LBE248:
.LBE251:
	.loc 1 206 0
	sub.a	%SP, 8
.LCFI0:
.LBB252:
.LBB249:
	.loc 2 1819 0
	ld.w	%d8, [%a2]0
.LBE249:
.LBE252:
	.loc 1 207 0
	mov.aa	%a4, %a15
.LVL45:
	call	IfxVadc_getAdcAnalogFrequency
.LVL46:
	mov	%d15, %d2
.LVL47:
.LBB253:
.LBB250:
	.loc 2 1819 0
	and	%d8, %d8, 3
.LBE250:
.LBE253:
	.loc 1 207 0
	call	IfxVadc_getAdcModuleFrequency
.LVL48:
	mov.aa	%a4, %a15
	st.w	[%SP]0, %d9
	mov	%e4, %d8, %d10
	mov	%e6, %d2, %d15
	.loc 1 208 0
	j	IfxVadc_getChannelConversionTime
.LVL49:
.LFE339:
	.size	IfxVadc_Adc_getChannelConversionTime, .-IfxVadc_Adc_getChannelConversionTime
	.align 1
	.global	IfxVadc_Adc_getGroupConfig
	.type	IfxVadc_Adc_getGroupConfig, @function
IfxVadc_Adc_getGroupConfig:
.LFB340:
	.loc 1 212 0
.LVL50:
	.loc 1 215 0
	ld.a	%a14, [%a4]0
	.loc 1 212 0
	mov.aa	%a13, %a4
	.loc 1 214 0
	ld.a	%a12, [%a4] 4
.LVL51:
	.loc 1 216 0
	mov.aa	%a4, %a14
.LVL52:
	.loc 1 212 0
	mov.aa	%a15, %a5
	.loc 1 216 0
	call	IfxVadc_getAdcAnalogFrequency
.LVL53:
	.loc 1 218 0
	ld.w	%d15, [%a13] 8
	st.w	[%a15] 4, %d15
	.loc 1 219 0
	st.a	[%a15]0, %a13
.LVL54:
.LBB254:
.LBB255:
	.loc 2 1761 0
	ld.w	%d15, [%a12]0
	extr.u	%d15, %d15, 4, 2
	st.w	[%a15] 116, %d15
.LVL55:
.LBE255:
.LBE254:
	.loc 1 221 0
	mov	%d15, 0
.LVL56:
.L16:
.LBB256:
.LBB257:
	.loc 2 1892 0 discriminator 3
	addi	%d3, %d15, 8
	addsc.a	%a2, %a12, %d3, 2
.LBE257:
.LBE256:
	.loc 1 225 0 discriminator 3
	add	%d4, %d15, 2
.LBB260:
.LBB258:
	.loc 2 1892 0 discriminator 3
	ld.w	%d3, [%a2]0
.LBE258:
.LBE260:
	.loc 1 225 0 discriminator 3
	addsc.a	%a3, %a15, %d4, 3
.LBB261:
.LBB259:
	.loc 2 1892 0 discriminator 3
	extr.u	%d3, %d3, 8, 3
	st.w	[%a3]0, %d3
.LVL57:
.LBE259:
.LBE261:
.LBB262:
.LBB263:
	.loc 2 1909 0 discriminator 3
	ld.w	%d3, [%a2]0
	and	%d3, %d3, 31
.LVL58:
	.loc 2 1911 0 discriminator 3
	lt.u	%d4, %d3, 17
	jnz	%d4, .L15
	.loc 2 1913 0
	addi	%d3, %d3, -15
.LVL59:
	sh	%d3, 4
.LVL60:
.L15:
	.loc 2 1916 0
	add	%d3, 2
.LVL61:
	itof	%d3, %d3
.LVL62:
.LBE263:
.LBE262:
	.loc 1 226 0
	addsc.a	%a2, %a15, %d15, 3
.LBB265:
.LBB264:
	.loc 2 1916 0
	div.f	%d3, %d3, %d2
.LBE264:
.LBE265:
	.loc 1 226 0
	st.w	[%a2] 12, %d3
.LVL63:
	.loc 1 223 0
	jne	%d15, 1, .L33
.LVL64:
.LBB266:
.LBB267:
	.loc 2 2062 0
	ld.w	%d2, [%a12] 4
.LVL65:
.LBE267:
.LBE266:
	.loc 1 229 0
	jnz.t	%d2, 25, .L47
	.loc 1 252 0
	mov	%d15, 0
.LVL66:
	st.b	[%a15] 28, %d15
	.loc 1 253 0
	mov	%d15, 0
	st.w	[%a15] 40, %d15
	.loc 1 254 0
	st.w	[%a15] 32, %d15
	.loc 1 255 0
	st.w	[%a15] 44, %d15
	.loc 1 256 0
	st.w	[%a15] 36, %d15
.LVL67:
.LBB268:
.LBB269:
	.loc 2 2056 0
	ld.w	%d15, [%a12] 4
	extr.u	%d15, %d15, 24, 1
.LBE269:
.LBE268:
	.loc 1 259 0
	jeq	%d15, 1, .L48
.L21:
	.loc 1 282 0
	mov	%d15, 0
	st.b	[%a15] 56, %d15
	.loc 1 283 0
	mov	%d15, 0
	st.w	[%a15] 68, %d15
	.loc 1 284 0
	st.w	[%a15] 60, %d15
	.loc 1 285 0
	st.w	[%a15] 72, %d15
	.loc 1 286 0
	st.w	[%a15] 64, %d15
.LVL68:
.LBB271:
.LBB272:
	.loc 2 2050 0
	ld.w	%d15, [%a12] 4
	extr.u	%d15, %d15, 26, 1
.LBE272:
.LBE271:
	.loc 1 289 0
	jeq	%d15, 1, .L49
.L25:
	.loc 1 312 0
	mov	%d15, 0
	st.b	[%a15] 84, %d15
	.loc 1 313 0
	mov	%d15, 0
	st.w	[%a15] 96, %d15
	.loc 1 314 0
	st.w	[%a15] 88, %d15
	.loc 1 315 0
	st.w	[%a15] 100, %d15
	.loc 1 316 0
	st.w	[%a15] 92, %d15
.L28:
.LBB274:
.LBB275:
	.loc 2 1923 0
	ld.w	%d2, [%a12] 64
.LBE275:
.LBE274:
	.loc 1 319 0
	ld.w	%d15, [%a13] 8
.LVL69:
.LBB277:
.LBB276:
	.loc 2 1923 0
	and	%d2, %d2, 3
.LVL70:
.LBE276:
.LBE277:
	.loc 1 319 0
	mov	%d3, %d15
.LBB278:
.LBB279:
	.loc 1 83 0
	jz	%d2, .L29
	.loc 1 89 0
	lt.u	%d4, %d15, 4
	mov	%d3, 0
	movh	%d6, hi:IfxVadc_Adc_masterIndex
	sel	%d3, %d4, %d3, 4
.LVL71:
	addi	%d6, %d6, lo:IfxVadc_Adc_masterIndex
	sh	%d5, %d15, 3
	mov.a	%a2, 3
.LVL72:
.L32:
	.loc 1 93 0
	mov.a	%a4, %d6
	add	%d4, %d5, %d3
	addsc.a	%a3, %a4, %d4, 0
	ld.bu	%d4, [%a3]0
	jeq	%d4, %d2, .L29
	add	%d3, 1
	loop	%a2, .L32
.LBE279:
.LBE278:
	.loc 1 319 0
	mov	%d3, %d15
.L29:
	st.w	[%a15] 8, %d3
.LVL73:
.LBB280:
.LBB281:
	.loc 2 1856 0
	ld.w	%d2, [%a14] 128
.LVL74:
.LBE281:
.LBE280:
	.loc 1 321 0
	addi	%d15, %d15, 16
.LVL75:
	extr.u	%d15, %d2, %d15, 1
	st.b	[%a15] 112, %d15
.LVL76:
	ret
.LVL77:
.L33:
	mov	%d15, 1
.LVL78:
	j	.L16
.LVL79:
.L47:
	.loc 1 231 0
	st.b	[%a15] 121, %d15
.LVL80:
.LBB282:
.LBB283:
	.loc 2 1988 0
	ld.w	%d2, [%a12] 4
	extr.u	%d2, %d2, 4, 2
	st.w	[%a15] 48, %d2
.LVL81:
.LBE283:
.LBE282:
.LBB284:
.LBB285:
	.loc 2 1994 0
	ld.w	%d2, [%a12] 4
	extr.u	%d2, %d2, 7, 1
	st.w	[%a15] 52, %d2
.LVL82:
.LBE285:
.LBE284:
.LBB286:
.LBB287:
	.loc 2 2000 0
	ld.w	%d2, [%a12] 160
	extr.u	%d2, %d2, 8, 4
.LBE287:
.LBE286:
	.loc 1 235 0
	st.w	[%a15] 36, %d2
.LVL83:
.LBB288:
.LBB289:
	.loc 2 2006 0
	ld.w	%d3, [%a12] 160
.LBE289:
.LBE288:
	.loc 1 238 0
	eq	%d2, %d2, 15
.LBB291:
.LBB290:
	.loc 2 2006 0
	extr.u	%d3, %d3, 13, 2
.LBE290:
.LBE291:
	.loc 1 236 0
	st.w	[%a15] 44, %d3
	.loc 1 238 0
	jnz	%d2, .L18
.LVL84:
.LBB292:
.LBB293:
	.loc 2 1976 0
	ld.w	%d15, [%a12] 164
.LVL85:
	and	%d15, %d15, 3
	st.w	[%a15] 40, %d15
.LVL86:
.L19:
.LBE293:
.LBE292:
.LBB294:
.LBB295:
	.loc 2 1982 0
	ld.w	%d15, [%a12] 160
	extr.u	%d15, %d15, 16, 4
	st.w	[%a15] 32, %d15
.LVL87:
.LBE295:
.LBE294:
.LBB296:
.LBB297:
	.loc 2 2044 0
	ld.w	%d15, [%a12] 164
	extr.u	%d15, %d15, 4, 1
.LBE297:
.LBE296:
	.loc 1 248 0
	st.b	[%a15] 28, %d15
.LVL88:
.LBB298:
.LBB270:
	.loc 2 2056 0
	ld.w	%d15, [%a12] 4
	extr.u	%d15, %d15, 24, 1
.LBE270:
.LBE298:
	.loc 1 259 0
	jne	%d15, 1, .L21
.LVL89:
.L48:
	.loc 1 261 0
	st.b	[%a15] 120, %d15
.LVL90:
.LBB299:
.LBB300:
	.loc 2 1942 0
	ld.w	%d2, [%a12] 4
	and	%d2, %d2, 3
	st.w	[%a15] 76, %d2
.LVL91:
.LBE300:
.LBE299:
.LBB301:
.LBB302:
	.loc 2 1948 0
	ld.w	%d2, [%a12] 4
	extr.u	%d2, %d2, 3, 1
	st.w	[%a15] 80, %d2
.LVL92:
.LBE302:
.LBE301:
.LBB303:
.LBB304:
	.loc 2 1954 0
	ld.w	%d2, [%a12] 128
	extr.u	%d2, %d2, 8, 4
.LBE304:
.LBE303:
	.loc 1 265 0
	st.w	[%a15] 64, %d2
.LVL93:
.LBB305:
.LBB306:
	.loc 2 1960 0
	ld.w	%d3, [%a12] 128
.LBE306:
.LBE305:
	.loc 1 268 0
	eq	%d2, %d2, 15
.LBB308:
.LBB307:
	.loc 2 1960 0
	extr.u	%d3, %d3, 13, 2
.LBE307:
.LBE308:
	.loc 1 266 0
	st.w	[%a15] 72, %d3
	.loc 1 268 0
	jnz	%d2, .L22
.LVL94:
.LBB309:
.LBB310:
	.loc 2 1930 0
	ld.w	%d15, [%a12] 132
	and	%d15, %d15, 3
	st.w	[%a15] 68, %d15
.LVL95:
.L23:
.LBE310:
.LBE309:
.LBB311:
.LBB312:
	.loc 2 1936 0
	ld.w	%d15, [%a12] 128
	extr.u	%d15, %d15, 16, 4
	st.w	[%a15] 60, %d15
.LBE312:
.LBE311:
	.loc 1 278 0
	mov	%d15, 0
	st.b	[%a15] 56, %d15
.LVL96:
.LBB313:
.LBB273:
	.loc 2 2050 0
	ld.w	%d15, [%a12] 4
	extr.u	%d15, %d15, 26, 1
.LBE273:
.LBE313:
	.loc 1 289 0
	jne	%d15, 1, .L25
.LVL97:
.L49:
	.loc 1 291 0
	st.b	[%a15] 122, %d15
.LVL98:
.LBB314:
.LBB315:
	.loc 2 1787 0
	ld.w	%d2, [%a12] 4
	extr.u	%d2, %d2, 8, 2
	st.w	[%a15] 104, %d2
.LVL99:
.LBE315:
.LBE314:
.LBB316:
.LBB317:
	.loc 2 1793 0
	ld.w	%d2, [%a12] 4
	extr.u	%d2, %d2, 11, 1
	st.w	[%a15] 108, %d2
.LVL100:
.LBE317:
.LBE316:
.LBB318:
.LBB319:
	.loc 2 1799 0
	ld.w	%d2, [%a14] 512
	extr.u	%d2, %d2, 8, 4
.LBE319:
.LBE318:
	.loc 1 295 0
	st.w	[%a15] 92, %d2
.LVL101:
.LBB320:
.LBB321:
	.loc 2 1805 0
	ld.w	%d3, [%a14] 512
.LBE321:
.LBE320:
	.loc 1 298 0
	eq	%d2, %d2, 15
.LBB323:
.LBB322:
	.loc 2 1805 0
	extr.u	%d3, %d3, 13, 2
.LBE322:
.LBE323:
	.loc 1 296 0
	st.w	[%a15] 100, %d3
	.loc 1 298 0
	jnz	%d2, .L26
.LVL102:
.LBB324:
.LBB325:
	.loc 2 1775 0
	ld.w	%d15, [%a14] 516
	and	%d15, %d15, 3
	st.w	[%a15] 96, %d15
.LVL103:
.L27:
.LBE325:
.LBE324:
.LBB326:
.LBB327:
	.loc 2 1781 0
	ld.w	%d15, [%a14] 512
	extr.u	%d15, %d15, 16, 4
	st.w	[%a15] 88, %d15
.LVL104:
.LBE327:
.LBE326:
.LBB328:
.LBB329:
	.loc 2 2038 0
	ld.w	%d15, [%a14] 516
	extr.u	%d15, %d15, 4, 1
.LBE329:
.LBE328:
	.loc 1 308 0
	st.b	[%a15] 84, %d15
	j	.L28
.LVL105:
.L18:
	.loc 1 242 0
	jz	%d3, .L19
	.loc 1 244 0
	st.w	[%a15] 40, %d15
	j	.L19
.LVL106:
.L22:
	.loc 1 272 0
	jz	%d3, .L23
	.loc 1 274 0
	st.w	[%a15] 68, %d15
	j	.L23
.LVL107:
.L26:
	.loc 1 302 0
	jz	%d3, .L27
	.loc 1 304 0
	st.w	[%a15] 96, %d15
	j	.L27
.LFE340:
	.size	IfxVadc_Adc_getGroupConfig, .-IfxVadc_Adc_getGroupConfig
	.align 1
	.global	IfxVadc_Adc_initChannel
	.type	IfxVadc_Adc_initChannel, @function
IfxVadc_Adc_initChannel:
.LFB341:
	.loc 1 326 0
.LVL108:
	.loc 1 328 0
	ld.a	%a2, [%a5] 56
	.loc 1 326 0
	mov.aa	%a14, %a4
	.loc 1 333 0
	ld.w	%d9, [%a5] 24
	ld.a	%a13, [%a2]0
.LVL109:
	.loc 1 332 0
	ld.w	%d15, [%a2] 8
	ld.a	%a12, [%a2] 4
.LVL110:
	.loc 1 336 0
	mov	%d4, %d15
	.loc 1 331 0
	st.a	[%a4] 8, %a2
	.loc 1 336 0
	mov.aa	%a4, %a13
.LVL111:
	.loc 1 326 0
	mov.aa	%a15, %a5
	.loc 1 336 0
	call	IfxVadc_enableAccess
.LVL112:
.LBB330:
.LBB331:
	.loc 2 2229 0
	addi	%d3, %d9, 96
	addsc.a	%a2, %a12, %d3, 2
	ld.w	%d4, [%a15] 32
	ld.w	%d2, [%a2]0
.LBE331:
.LBE330:
	.loc 1 352 0
	addi	%d8, %d15, 16
.LBB334:
.LBB332:
	.loc 2 2229 0
	ins.t	%d2, %d2,11, %d4,0
.LBE332:
.LBE334:
	.loc 1 352 0
	mov.aa	%a4, %a13
	mov	%d4, %d8
.LBB335:
.LBB333:
	.loc 2 2229 0
	st.w	[%a2]0, %d2
.LVL113:
.LBE333:
.LBE335:
.LBB336:
.LBB337:
	.loc 2 2316 0
	ld.w	%d2, [%a2]0
	ld.w	%d3, [%a15] 36
	insert	%d2, %d2, %d3, 16, 4
	st.w	[%a2]0, %d2
.LVL114:
.LBE337:
.LBE336:
.LBB338:
.LBB339:
	.loc 2 2194 0
	ld.w	%d2, [%a2]0
	ld.w	%d3, [%a15] 40
.LVL115:
	insert	%d2, %d2, %d3, 4, 2
	st.w	[%a2]0, %d2
.LVL116:
.LBE339:
.LBE338:
.LBB340:
.LBB341:
	.loc 2 2292 0
	ld.w	%d2, [%a2]0
	ld.w	%d3, [%a15] 40
.LVL117:
	insert	%d2, %d2, %d3, 6, 2
	st.w	[%a2]0, %d2
.LVL118:
.LBE341:
.LBE340:
.LBB342:
.LBB343:
	.loc 2 2286 0
	ld.w	%d3, [%a2]0
.LVL119:
	ld.bu	%d2, [%a15] 1
	ins.t	%d2, %d3,10, %d2,0
	st.w	[%a2]0, %d2
.LVL120:
.LBE343:
.LBE342:
.LBB344:
.LBB345:
	.loc 2 2152 0
	ld.w	%d2, [%a2]0
	ld.w	%d3, [%a15] 28
	insert	%d2, %d2, %d3, 0, 2
	st.w	[%a2]0, %d2
.LVL121:
.LBE345:
.LBE344:
.LBB346:
.LBB347:
	.loc 2 2158 0
	ld.w	%d2, [%a2]0
	ld.w	%d3, [%a15] 52
.LVL122:
	insert	%d2, %d2, %d3, 8, 2
	st.w	[%a2]0, %d2
.LVL123:
.LBE347:
.LBE346:
.LBB348:
.LBB349:
	.loc 2 2249 0
	ld.w	%d3, [%a2]0
.LVL124:
	ld.bu	%d2, [%a15] 3
	ins.t	%d2, %d3,21, %d2,0
	st.w	[%a2]0, %d2
.LVL125:
.LBE349:
.LBE348:
.LBB350:
.LBB351:
	.loc 2 2104 0
	ld.w	%d3, [%a2]0
	ld.bu	%d2, [%a15]0
	ins.t	%d2, %d3,20, %d2,0
	st.w	[%a2]0, %d2
.LVL126:
.LBE351:
.LBE350:
.LBB352:
.LBB353:
	.loc 2 2139 0
	ld.w	%d3, [%a15] 48
	ld.w	%d2, [%a2]0
	insert	%d2, %d2, %d3, 12, 4
	st.w	[%a2]0, %d2
.LVL127:
.LBE353:
.LBE352:
	.loc 1 352 0
	call	IfxVadc_enableAccess
.LVL128:
	.loc 1 354 0
	ld.bu	%d2, [%a15] 2
	jnz	%d2, .L51
.LVL129:
.LBB354:
.LBB355:
	.loc 2 2176 0
	ld.w	%d2, [%a12] 8
.LBE355:
.LBE354:
	.loc 1 363 0
	mov.aa	%a4, %a13
.LBB358:
.LBB356:
	.loc 2 2176 0
	insert	%d9, %d2, 1, %d9, 1
.LVL130:
.LBE356:
.LBE358:
	.loc 1 363 0
	mov	%d4, %d8
.LBB359:
.LBB357:
	.loc 2 2176 0
	st.w	[%a12] 8, %d9
.LBE357:
.LBE359:
	.loc 1 363 0
	call	IfxVadc_disableAccess
.LVL131:
	.loc 1 365 0
	ld.hu	%d2, [%a15] 6
	jnz	%d2, .L63
.LVL132:
.L53:
	.loc 1 380 0
	ld.hu	%d2, [%a15] 4
	jnz	%d2, .L64
.L54:
	.loc 1 404 0
	mov	%d4, %d15
	mov.aa	%a4, %a13
	call	IfxVadc_disableAccess
.LVL133:
	.loc 1 407 0
	ld.w	%d2, [%a15] 24
	.loc 1 406 0
	ld.w	%d15, [%a15] 36
.LVL134:
	st.w	[%a14] 4, %d15
	.loc 1 407 0
	st.w	[%a14]0, %d2
	.loc 1 410 0
	mov	%d2, 0
	ret
.LVL135:
.L51:
.LBB360:
.LBB361:
	.loc 2 2098 0
	ld.w	%d2, [%a12] 8
.LBE361:
.LBE360:
	.loc 1 363 0
	mov.aa	%a4, %a13
.LBB364:
.LBB362:
	.loc 2 2098 0
	insert	%d9, %d2, 0, %d9, 1
.LVL136:
.LBE362:
.LBE364:
	.loc 1 363 0
	mov	%d4, %d8
.LBB365:
.LBB363:
	.loc 2 2098 0
	st.w	[%a12] 8, %d9
.LBE363:
.LBE365:
	.loc 1 363 0
	call	IfxVadc_disableAccess
.LVL137:
	.loc 1 365 0
	ld.hu	%d2, [%a15] 6
	jz	%d2, .L53
.LVL138:
.L63:
.LBB366:
	.loc 1 367 0
	ld.w	%d5, [%a15] 20
	mov	%d4, %d15
	call	IfxVadc_getSrcAddress
.LVL139:
.LBB367:
.LBB368:
	.loc 2 2145 0
	ld.w	%d2, [%a14]0
	ld.w	%d5, [%a12] 288
	sh	%d2, 2
	mov	%d3, 15
	sh	%d3, %d3, %d2
	andn	%d3, %d5, %d3
.LBE368:
.LBE367:
	.loc 1 369 0
	ld.w	%d4, [%a15] 20
.LVL140:
.LBB370:
.LBB369:
	.loc 2 2145 0
	st.w	[%a12] 288, %d3
.LVL141:
	.loc 2 2146 0
	ld.w	%d3, [%a12] 288
	sh	%d2, %d4, %d2
	or	%d2, %d3
	st.w	[%a12] 288, %d2
.LVL142:
.LBE369:
.LBE370:
.LBB371:
.LBB372:
	.loc 2 1674 0
	ld.w	%d3, [%a15] 24
	mov	%d2, 1
	sh	%d2, %d2, %d3
	st.w	[%a12] 272, %d2
.LVL143:
.LBE372:
.LBE371:
.LBB373:
.LBB374:
	.file 3 "./0_Src/4_McHal/Tricore/Src/Std/IfxSrc.h"
	.loc 3 256 0
	ld.w	%d3, [%a2]0
.LVL144:
	ld.bu	%d4, [%a15] 6
.LVL145:
	andn	%d3, %d3, ~(-256)
	or	%d3, %d4
.LBE374:
.LBE373:
	.loc 1 371 0
	ld.w	%d2, [%a15] 12
.LVL146:
.LBB378:
.LBB377:
	.loc 3 256 0
	st.w	[%a2]0, %d3
.LVL147:
	.loc 3 257 0
	ld.w	%d3, [%a2]0
	insert	%d2, %d3, %d2, 11, 2
.LVL148:
	st.w	[%a2]0, %d2
.LVL149:
.LBB375:
.LBB376:
	.loc 3 232 0
	ld.w	%d2, [%a2]0
	insert	%d2, %d2, 15, 25, 1
	st.w	[%a2]0, %d2
.LVL150:
.LBE376:
.LBE375:
.LBE377:
.LBE378:
.LBB379:
.LBB380:
	.loc 3 250 0
	ld.w	%d2, [%a2]0
	insert	%d2, %d2, 15, 10, 1
	st.w	[%a2]0, %d2
.LBE380:
.LBE379:
.LBE366:
	.loc 1 380 0
	ld.hu	%d2, [%a15] 4
	jz	%d2, .L54
.LVL151:
.L64:
.LBB381:
	.loc 1 382 0
	ld.w	%d5, [%a15] 16
	mov	%d4, %d15
	call	IfxVadc_getSrcAddress
.LVL152:
.LBB382:
.LBB383:
	.loc 2 1725 0
	ld.w	%d3, [%a15] 36
	addi	%d2, %d3, 128
	addsc.a	%a3, %a12, %d2, 2
	ld.w	%d2, [%a3]0
	insert	%d2, %d2, 15, 31, 1
	st.w	[%a3]0, %d2
.LVL153:
.LBE383:
.LBE382:
	.loc 1 385 0
	ld.w	%d2, [%a15] 36
	.loc 1 387 0
	ld.w	%d4, [%a15] 16
	.loc 1 385 0
	jlt.u	%d2, 8, .L65
.LVL154:
.LBB384:
.LBB385:
	.loc 2 2242 0
	add	%d2, -8
.LVL155:
	ld.w	%d5, [%a12] 308
	sh	%d2, 2
	mov	%d3, 15
.LVL156:
	sh	%d3, %d3, %d2
	andn	%d3, %d5, %d3
	.loc 2 2243 0
	sh	%d2, %d4, %d2
	.loc 2 2242 0
	st.w	[%a12] 308, %d3
.LVL157:
	.loc 2 2243 0
	ld.w	%d3, [%a12] 308
	or	%d2, %d3
	st.w	[%a12] 308, %d2
.LVL158:
.L56:
.LBE385:
.LBE384:
.LBB386:
.LBB387:
	.loc 2 1668 0
	mov.u	%d2, 65535
	st.w	[%a12] 276, %d2
.LBE387:
.LBE386:
.LBB388:
.LBB389:
	.loc 3 256 0
	ld.w	%d3, [%a2]0
	ld.bu	%d4, [%a15] 4
	andn	%d3, %d3, ~(-256)
	or	%d3, %d4
.LBE389:
.LBE388:
	.loc 1 395 0
	ld.w	%d2, [%a15] 8
.LVL159:
.LBB393:
.LBB392:
	.loc 3 256 0
	st.w	[%a2]0, %d3
.LVL160:
	.loc 3 257 0
	ld.w	%d3, [%a2]0
	insert	%d2, %d3, %d2, 11, 2
.LVL161:
	st.w	[%a2]0, %d2
.LVL162:
.LBB390:
.LBB391:
	.loc 3 232 0
	ld.w	%d2, [%a2]0
	insert	%d2, %d2, 15, 25, 1
	st.w	[%a2]0, %d2
.LVL163:
.LBE391:
.LBE390:
.LBE392:
.LBE393:
.LBB394:
.LBB395:
	.loc 3 250 0
	ld.w	%d2, [%a2]0
	insert	%d2, %d2, 15, 10, 1
	st.w	[%a2]0, %d2
	j	.L54
.LVL164:
.L65:
.LBE395:
.LBE394:
.LBB396:
.LBB397:
	.loc 2 2235 0
	ld.w	%d5, [%a12] 304
	sh	%d2, 2
.LVL165:
	mov	%d3, 15
.LVL166:
	sh	%d3, %d3, %d2
	andn	%d3, %d5, %d3
	.loc 2 2236 0
	sh	%d2, %d4, %d2
	.loc 2 2235 0
	st.w	[%a12] 304, %d3
.LVL167:
	.loc 2 2236 0
	ld.w	%d3, [%a12] 304
	or	%d2, %d3
	st.w	[%a12] 304, %d2
	j	.L56
.LBE397:
.LBE396:
.LBE381:
.LFE341:
	.size	IfxVadc_Adc_initChannel, .-IfxVadc_Adc_initChannel
	.align 1
	.global	IfxVadc_Adc_initChannelConfig
	.type	IfxVadc_Adc_initChannelConfig, @function
IfxVadc_Adc_initChannelConfig:
.LFB342:
	.loc 1 414 0
.LVL168:
	.loc 1 436 0
	mov.aa	%a2, %a4
	mov	%e2, 0
	lea	%a15, 7-1
	0:
	st.d	[%a2+]8, %e2
	loop	%a15, 0b
	st.w	[%a2+]4, %d2
	.loc 1 437 0
	st.a	[%a4] 56, %a5
	ret
.LFE342:
	.size	IfxVadc_Adc_initChannelConfig, .-IfxVadc_Adc_initChannelConfig
	.align 1
	.global	IfxVadc_Adc_initGroup
	.type	IfxVadc_Adc_initGroup, @function
IfxVadc_Adc_initGroup:
.LFB343:
	.loc 1 442 0
.LVL169:
	.loc 1 444 0
	ld.a	%a2, [%a5]0
	.loc 1 445 0
	ld.w	%d15, [%a5] 4
	.loc 1 442 0
	mov.aa	%a15, %a5
	.loc 1 444 0
	ld.a	%a12, [%a2]0
.LVL170:
	.loc 1 445 0
	sh	%d8, %d15, 10
	addi	%d2, %d8, 1152
	addsc.a	%a13, %a12, %d2, 0
.LVL171:
	.loc 1 449 0
	ld.w	%d2, [%a2]0
	.loc 1 448 0
	st.a	[%a4] 4, %a13
	.loc 1 449 0
	st.w	[%a4]0, %d2
	.loc 1 451 0
	st.w	[%a4] 8, %d15
	.loc 1 452 0
	mov.aa	%a4, %a12
.LVL172:
	call	IfxVadc_getAdcAnalogFrequency
.LVL173:
	.loc 1 457 0
	addi	%d10, %d15, 16
	mov.aa	%a4, %a12
	mov	%d4, %d10
	.loc 1 452 0
	mov	%d9, %d2
.LVL174:
	.loc 1 457 0
	call	IfxVadc_enableAccess
.LVL175:
	.loc 1 459 0
	ld.bu	%d2, [%a15] 120
	.loc 1 462 0
	mov.aa	%a4, %a13
	.loc 1 459 0
	jeq	%d2, 1, .L98
	.loc 1 467 0
	mov	%e4, 0
	mov	%e6, 0
	call	IfxVadc_setArbiterPriority
.LVL176:
	.loc 1 470 0
	ld.bu	%d2, [%a15] 121
	.loc 1 474 0
	mov.aa	%a4, %a13
	.loc 1 470 0
	jeq	%d2, 1, .L99
.L70:
	.loc 1 479 0
	mov	%e4, 0
	mov	%d6, 0
	mov	%d7, 1
	call	IfxVadc_setArbiterPriority
.LVL177:
	.loc 1 482 0
	ld.bu	%d2, [%a15] 122
	.loc 1 486 0
	mov.aa	%a4, %a13
	.loc 1 482 0
	jeq	%d2, 1, .L100
.LVL178:
.L72:
	.loc 1 491 0
	mov	%e4, 0
	mov	%d6, 0
	mov	%d7, 2
	call	IfxVadc_setArbiterPriority
.LVL179:
.L73:
	.loc 1 495 0
	ld.w	%d2, [%a15] 8
	jeq	%d15, %d2, .L74
.LVL180:
.LBB398:
.LBB399:
.LBB400:
	.loc 1 106 0
	madd	%d2, %d2, %d15, 8
.LVL181:
	movh.a	%a2, hi:IfxVadc_Adc_masterIndex
	lea	%a2, [%a2] lo:IfxVadc_Adc_masterIndex
	addsc.a	%a2, %a2, %d2, 0
.LBE400:
.LBE399:
.LBB402:
.LBB403:
	.loc 2 2201 0
	mov	%d4, 8
.LBE403:
.LBE402:
.LBB405:
.LBB401:
	.loc 1 106 0
	ld.bu	%d2, [%a2]0
.LVL182:
.LBE401:
.LBE405:
.LBB406:
.LBB404:
	.loc 2 2200 0
	addsc.a	%a2, %a12, %d8, 0
.LVL183:
	ld.w	%d3, [%a2] 1216
	insert	%d3, %d3, %d2, 0, 2
	.loc 2 2201 0
	sh	%d2, %d4, %d2
	.loc 2 2200 0
	st.w	[%a2] 1216, %d3
.LVL184:
	.loc 2 2201 0
	ld.w	%d3, [%a2] 1216
	or	%d2, %d3
	st.w	[%a2] 1216, %d2
.LVL185:
.L74:
.LBE404:
.LBE406:
.LBE398:
.LBB407:
.LBB408:
	.loc 2 2074 0
	addsc.a	%a2, %a12, %d8, 0
	ld.w	%d2, [%a2] 1152
	andn	%d2, %d2, ~(-4)
	st.w	[%a2] 1152, %d2
.LVL186:
.LBE408:
.LBE407:
.LBB409:
.LBB410:
	.loc 2 2080 0
	ld.w	%d3, [%a15] 116
	ld.w	%d2, [%a2] 1152
	insert	%d2, %d2, %d3, 4, 2
	st.w	[%a2] 1152, %d2
.LVL187:
.LBE410:
.LBE409:
	.loc 1 513 0
	ld.bu	%d2, [%a15] 120
	jeq	%d2, 1, .L101
.LVL188:
.L75:
	.loc 1 558 0
	ld.bu	%d2, [%a15] 121
	jeq	%d2, 1, .L102
.L81:
	.loc 1 601 0
	ld.bu	%d2, [%a15] 122
	jeq	%d2, 1, .L103
.L87:
	.loc 1 644 0
	ld.w	%d2, [%a15] 8
.LBB411:
.LBB412:
	.loc 2 2074 0
	addsc.a	%a2, %a12, %d8, 0
.LBE412:
.LBE411:
	.loc 1 644 0
	eq	%d2, %d15, %d2
	seln	%d3, %d2, %d2, 3
.LVL189:
.LBB416:
.LBB413:
	.loc 2 2074 0
	ld.w	%d2, [%a2] 1152
.LBE413:
.LBE416:
	.loc 1 648 0
	mov	%d4, %d15
.LBB417:
.LBB414:
	.loc 2 2074 0
	andn	%d2, %d2, ~(-4)
	or	%d2, %d3
.LBE414:
.LBE417:
	.loc 1 648 0
	mov.aa	%a4, %a12
	sh	%d15, %d15, 8
.LVL190:
.LBB418:
.LBB415:
	.loc 2 2074 0
	st.w	[%a2] 1152, %d2
.LBE415:
.LBE418:
	.loc 1 648 0
	ld.bu	%d5, [%a15] 112
	call	IfxVadc_disablePostCalibration
.LVL191:
	mov	%d3, 0
.LBB419:
.LBB420:
.LBB421:
.LBB422:
.LBB423:
.LBB424:
	.file 4 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
	.loc 4 141 0
	mov	%d7, 255
.LVL192:
.L93:
.LBE424:
.LBE423:
.LBE422:
.LBE421:
.LBE420:
.LBE419:
	.loc 1 653 0 discriminator 3
	addi	%d2, %d3, 2
	addsc.a	%a2, %a15, %d2, 3
.LBB430:
.LBB431:
	.loc 2 2182 0 discriminator 3
	add	%d2, %d15, %d3
	addi	%d2, %d2, 296
	ld.w	%d4, [%a2]0
	addsc.a	%a2, %a12, %d2, 2
	ld.w	%d5, [%a2]0
	insert	%d5, %d5, %d4, 8, 3
	st.w	[%a2]0, %d5
.LVL193:
.LBE431:
.LBE430:
	.loc 1 655 0 discriminator 3
	addsc.a	%a2, %a15, %d3, 3
.LBB432:
.LBB429:
.LBB428:
.LBB427:
	.loc 2 1653 0 discriminator 3
	ld.w	%d5, [%a2] 12
	mul.f	%d5, %d9, %d5
	ftouz	%d5, %d5
	add	%d5, -2
.LVL194:
	.loc 2 1655 0 discriminator 3
	lt.u	%d6, %d5, 32
	jnz	%d6, .L92
	.loc 2 1657 0
	sh	%d5, -4
.LVL195:
	addi	%d5, %d5, 15
.LVL196:
.L92:
.LBB426:
.LBB425:
	.loc 4 141 0
#APP
	# 141 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	min.u %d5, %d5, %d7
	# 0 "" 2
.LVL197:
#NO_APP
.LBE425:
.LBE426:
.LBE427:
.LBE428:
	.loc 2 2188 0
	add	%d2, %d15, %d3
	addi	%d2, %d2, 296
	addsc.a	%a2, %a12, %d2, 2
	ld.w	%d2, [%a2]0
	insert	%d5, %d2, %d5, 0, 5
.LVL198:
	st.w	[%a2]0, %d5
.LVL199:
.LBE429:
.LBE432:
	.loc 1 650 0
	jne	%d3, 1, .L94
	.loc 1 658 0
	mov.aa	%a4, %a12
	mov	%d4, %d10
	call	IfxVadc_disableAccess
.LVL200:
	.loc 1 661 0
	mov	%d2, 0
	ret
.LVL201:
.L94:
	mov	%d3, 1
.LVL202:
	j	.L93
.LVL203:
.L98:
	.loc 1 462 0
	ld.w	%d5, [%a15] 76
	ld.w	%d6, [%a15] 80
	mov	%d4, 1
	mov	%d7, 0
	call	IfxVadc_setArbiterPriority
.LVL204:
	.loc 1 470 0
	ld.bu	%d2, [%a15] 121
	.loc 1 474 0
	mov.aa	%a4, %a13
	.loc 1 470 0
	jne	%d2, 1, .L70
.LVL205:
.L99:
	.loc 1 474 0
	ld.w	%d5, [%a15] 48
	ld.w	%d6, [%a15] 52
	mov	%d4, 1
	mov	%d7, 1
	call	IfxVadc_setArbiterPriority
.LVL206:
	.loc 1 482 0
	ld.bu	%d2, [%a15] 122
	.loc 1 486 0
	mov.aa	%a4, %a13
	.loc 1 482 0
	jne	%d2, 1, .L72
.LVL207:
.L100:
	.loc 1 486 0
	ld.w	%d5, [%a15] 104
	ld.w	%d6, [%a15] 108
	mov	%d4, 1
	mov	%d7, 2
	call	IfxVadc_setArbiterPriority
.LVL208:
	j	.L73
.LVL209:
.L103:
.LBB433:
	.loc 1 606 0
	ld.w	%d2, [%a15] 100
	jnz	%d2, .L104
.L88:
	.loc 1 627 0
	ld.w	%d2, [%a15] 92
	ne	%d2, %d2, 15
	jz	%d2, .L90
.L91:
.LBB434:
.LBB435:
	.loc 2 2118 0
	ld.w	%d3, [%a12] 512
.LBE435:
.LBE434:
	.loc 1 629 0
	ld.w	%d4, [%a15] 88
.LBB438:
.LBB436:
	.loc 2 2119 0
	insert	%d3, %d3, 1, 23, 1
.LVL210:
.LBE436:
.LBE438:
	.loc 1 629 0
	ld.w	%d2, [%a15] 96
.LVL211:
.LBB439:
.LBB437:
	.loc 2 2120 0
	insert	%d3, %d3, %d4, 16, 4
	.loc 2 2121 0
	st.w	[%a12] 512, %d3
	.loc 2 2122 0
	ld.w	%d3, [%a12] 516
.LVL212:
	insert	%d2, %d3, %d2, 0, 2
.LVL213:
	st.w	[%a12] 516, %d2
.LVL214:
.L90:
.LBE437:
.LBE439:
	.loc 1 636 0
	ld.bu	%d2, [%a15] 84
.LVL215:
.LBB440:
.LBB441:
	.loc 2 2086 0
	seln	%d3, %d2, %d2, 16
	ld.w	%d2, [%a12] 516
.LVL216:
	andn	%d2, %d2, ~(-17)
	or	%d2, %d3
	st.w	[%a12] 516, %d2
.LVL217:
	j	.L87
.LVL218:
.L102:
.LBE441:
.LBE440:
.LBE433:
.LBB454:
	.loc 1 563 0
	ld.w	%d2, [%a15] 44
.LBB455:
.LBB456:
	.loc 2 1747 0
	addsc.a	%a2, %a12, %d8, 0
.LBE456:
.LBE455:
	.loc 1 563 0
	jnz	%d2, .L105
.LVL219:
.LBB458:
.LBB459:
	.loc 2 1713 0
	ld.w	%d2, [%a2] 1316
	andn	%d2, %d2, ~(-5)
	st.w	[%a2] 1316, %d2
.LVL220:
.L85:
.LBE459:
.LBE458:
	.loc 1 585 0
	ld.w	%d2, [%a15] 36
	ne	%d2, %d2, 15
	jz	%d2, .L84
.L86:
.LBB460:
.LBB461:
	.loc 2 2256 0
	addsc.a	%a2, %a12, %d8, 0
.LBE461:
.LBE460:
	.loc 1 587 0
	ld.w	%d4, [%a15] 32
.LBB464:
.LBB462:
	.loc 2 2256 0
	ld.w	%d3, [%a2] 1312
.LBE462:
.LBE464:
	.loc 1 587 0
	ld.w	%d2, [%a15] 40
.LVL221:
.LBB465:
.LBB463:
	.loc 2 2257 0
	insert	%d3, %d3, 1, 23, 1
.LVL222:
	.loc 2 2258 0
	insert	%d3, %d3, %d4, 16, 4
	.loc 2 2259 0
	st.w	[%a2] 1312, %d3
	.loc 2 2260 0
	ld.w	%d3, [%a2] 1316
.LVL223:
	insert	%d2, %d3, %d2, 0, 2
.LVL224:
	st.w	[%a2] 1316, %d2
.LVL225:
.L84:
.LBE463:
.LBE465:
	.loc 1 594 0
	ld.bu	%d2, [%a15] 28
.LVL226:
.LBB466:
.LBB467:
	.loc 2 2092 0
	addsc.a	%a2, %a12, %d8, 0
	seln	%d3, %d2, %d2, 16
	ld.w	%d2, [%a2] 1316
.LVL227:
	andn	%d2, %d2, ~(-17)
	or	%d2, %d3
	st.w	[%a2] 1316, %d2
.LVL228:
	j	.L81
.LVL229:
.L101:
.LBE467:
.LBE466:
.LBE454:
.LBB479:
	.loc 1 518 0
	ld.w	%d2, [%a15] 72
	jnz	%d2, .L106
.LVL230:
.LBB480:
.LBB481:
	.loc 2 1707 0
	ld.w	%d2, [%a2] 1284
	andn	%d2, %d2, ~(-5)
	st.w	[%a2] 1284, %d2
.LVL231:
.L79:
.LBE481:
.LBE480:
	.loc 1 541 0
	ld.w	%d2, [%a15] 64
	ne	%d2, %d2, 15
	jz	%d2, .L78
.L80:
.LBB482:
.LBB483:
	.loc 2 2208 0
	addsc.a	%a2, %a12, %d8, 0
.LBE483:
.LBE482:
	.loc 1 543 0
	ld.w	%d4, [%a15] 60
.LBB486:
.LBB484:
	.loc 2 2208 0
	ld.w	%d3, [%a2] 1280
.LBE484:
.LBE486:
	.loc 1 543 0
	ld.w	%d2, [%a15] 68
.LVL232:
.LBB487:
.LBB485:
	.loc 2 2209 0
	insert	%d3, %d3, 1, 23, 1
.LVL233:
	.loc 2 2210 0
	insert	%d3, %d3, %d4, 16, 4
	.loc 2 2211 0
	st.w	[%a2] 1280, %d3
	.loc 2 2212 0
	ld.w	%d3, [%a2] 1284
.LVL234:
	insert	%d2, %d3, %d2, 0, 2
.LVL235:
	st.w	[%a2] 1284, %d2
.LVL236:
.L78:
.LBE485:
.LBE487:
	.loc 1 550 0
	ld.bu	%d3, [%a15] 56
.LVL237:
.LBB488:
.LBB489:
	.loc 2 1680 0
	addsc.a	%a2, %a12, %d8, 0
	mov	%d2, 1024
	sel	%d3, %d3, %d2, 0
.LVL238:
	ld.w	%d2, [%a2] 1284
	insert	%d2, %d2, 0, 10, 1
	or	%d2, %d3
	st.w	[%a2] 1284, %d2
.LVL239:
	j	.L75
.LVL240:
.L104:
.LBE489:
.LBE488:
.LBE479:
.LBB502:
.LBB442:
.LBB443:
	.loc 2 1719 0
	ld.w	%d2, [%a12] 516
	or	%d2, %d2, 4
	st.w	[%a12] 516, %d2
.LBE443:
.LBE442:
.LBB444:
.LBB445:
	.loc 2 2129 0
	ld.w	%d2, [%a12] 512
.LBE445:
.LBE444:
	.loc 1 610 0
	ld.w	%d4, [%a15] 100
.LBB448:
.LBB446:
	.loc 2 2130 0
	insert	%d2, %d2, 1, 15, 1
.LVL241:
.LBE446:
.LBE448:
	.loc 1 610 0
	ld.w	%d3, [%a15] 92
.LVL242:
.LBB449:
.LBB447:
	.loc 2 2131 0
	insert	%d2, %d2, %d4, 13, 2
	.loc 2 2132 0
	insert	%d2, %d2, %d3, 8, 4
	.loc 2 2133 0
	st.w	[%a12] 512, %d2
.LBE447:
.LBE449:
	.loc 1 612 0
	ld.w	%d2, [%a15] 92
.LVL243:
	eq	%d2, %d2, 15
	jz	%d2, .L91
.LBB450:
.LBB451:
	.loc 2 2118 0
	ld.w	%d2, [%a12] 512
.LBE451:
.LBE450:
	.loc 1 614 0
	ld.w	%d3, [%a15] 88
.LVL244:
.LBB453:
.LBB452:
	.loc 2 2119 0
	insert	%d2, %d2, 1, 23, 1
.LVL245:
	.loc 2 2120 0
	insert	%d2, %d2, %d3, 16, 4
	.loc 2 2121 0
	st.w	[%a12] 512, %d2
	.loc 2 2122 0
	ld.w	%d2, [%a12] 516
.LVL246:
	insert	%d2, %d2, 1, 0, 2
	st.w	[%a12] 516, %d2
	j	.L88
.LVL247:
.L106:
.LBE452:
.LBE453:
.LBE502:
.LBB503:
.LBB490:
.LBB491:
	.loc 2 1741 0
	ld.w	%d2, [%a2] 1284
	or	%d2, %d2, 4
	st.w	[%a2] 1284, %d2
.LBE491:
.LBE490:
.LBB492:
.LBB493:
	.loc 2 2219 0
	ld.w	%d2, [%a2] 1280
.LBE493:
.LBE492:
	.loc 1 522 0
	ld.w	%d4, [%a15] 72
.LBB496:
.LBB494:
	.loc 2 2220 0
	insert	%d2, %d2, 1, 15, 1
.LVL248:
.LBE494:
.LBE496:
	.loc 1 522 0
	ld.w	%d3, [%a15] 64
.LVL249:
.LBB497:
.LBB495:
	.loc 2 2221 0
	insert	%d2, %d2, %d4, 13, 2
	.loc 2 2222 0
	insert	%d2, %d2, %d3, 8, 4
	.loc 2 2223 0
	st.w	[%a2] 1280, %d2
.LBE495:
.LBE497:
	.loc 1 525 0
	ld.w	%d2, [%a15] 64
.LVL250:
	eq	%d2, %d2, 15
	jz	%d2, .L80
.LBB498:
.LBB499:
	.loc 2 2208 0
	ld.w	%d2, [%a2] 1280
.LBE499:
.LBE498:
	.loc 1 527 0
	ld.w	%d3, [%a15] 60
.LVL251:
.LBB501:
.LBB500:
	.loc 2 2209 0
	insert	%d2, %d2, 1, 23, 1
.LVL252:
	.loc 2 2210 0
	insert	%d2, %d2, %d3, 16, 4
	.loc 2 2211 0
	st.w	[%a2] 1280, %d2
	.loc 2 2212 0
	ld.w	%d2, [%a2] 1284
.LVL253:
	insert	%d2, %d2, 1, 0, 2
	st.w	[%a2] 1284, %d2
	j	.L79
.LVL254:
.L105:
.LBE500:
.LBE501:
.LBE503:
.LBB504:
.LBB468:
.LBB457:
	.loc 2 1747 0
	ld.w	%d2, [%a2] 1316
	or	%d2, %d2, 4
	st.w	[%a2] 1316, %d2
.LBE457:
.LBE468:
.LBB469:
.LBB470:
	.loc 2 2267 0
	ld.w	%d2, [%a2] 1312
.LBE470:
.LBE469:
	.loc 1 568 0
	ld.w	%d4, [%a15] 44
.LBB473:
.LBB471:
	.loc 2 2268 0
	insert	%d2, %d2, 1, 15, 1
.LVL255:
.LBE471:
.LBE473:
	.loc 1 568 0
	ld.w	%d3, [%a15] 36
.LVL256:
.LBB474:
.LBB472:
	.loc 2 2269 0
	insert	%d2, %d2, %d4, 13, 2
	.loc 2 2270 0
	insert	%d2, %d2, %d3, 8, 4
	.loc 2 2271 0
	st.w	[%a2] 1312, %d2
.LBE472:
.LBE474:
	.loc 1 570 0
	ld.w	%d2, [%a15] 36
.LVL257:
	eq	%d2, %d2, 15
	jz	%d2, .L86
.LBB475:
.LBB476:
	.loc 2 2256 0
	ld.w	%d2, [%a2] 1312
.LBE476:
.LBE475:
	.loc 1 572 0
	ld.w	%d3, [%a15] 32
.LVL258:
.LBB478:
.LBB477:
	.loc 2 2257 0
	insert	%d2, %d2, 1, 23, 1
.LVL259:
	.loc 2 2258 0
	insert	%d2, %d2, %d3, 16, 4
	.loc 2 2259 0
	st.w	[%a2] 1312, %d2
	.loc 2 2260 0
	ld.w	%d2, [%a2] 1316
.LVL260:
	insert	%d2, %d2, 1, 0, 2
	st.w	[%a2] 1316, %d2
	j	.L85
.LBE477:
.LBE478:
.LBE504:
.LFE343:
	.size	IfxVadc_Adc_initGroup, .-IfxVadc_Adc_initGroup
	.align 1
	.global	IfxVadc_Adc_initGroupConfig
	.type	IfxVadc_Adc_initGroupConfig, @function
IfxVadc_Adc_initGroupConfig:
.LFB344:
	.loc 1 665 0
.LVL261:
	.loc 1 707 0
	movh	%d15, 13702
	addi	%d15, %d15, 14269
	mov.aa	%a2, %a4
	mov	%e2, 0
	lea	%a15, 15-1
	0:
	st.d	[%a2+]8, %e2
	loop	%a15, 0b
	st.w	[%a2+]4, %d2
	st.w	[%a4] 12, %d15
	st.w	[%a4] 20, %d15
	mov	%d15, 1
	.loc 1 709 0
	st.a	[%a4]0, %a5
	.loc 1 707 0
	st.w	[%a4] 48, %d15
	st.b	[%a4] 56, %d15
	st.w	[%a4] 76, %d15
	st.w	[%a4] 104, %d15
	.loc 1 709 0
	ret
.LFE344:
	.size	IfxVadc_Adc_initGroupConfig, .-IfxVadc_Adc_initGroupConfig
	.align 1
	.global	IfxVadc_Adc_initModule
	.type	IfxVadc_Adc_initModule, @function
IfxVadc_Adc_initModule:
.LFB345:
	.loc 1 716 0
.LVL262:
	.loc 1 718 0
	ld.a	%a15, [%a5]0
.LVL263:
	.loc 1 725 0
	ld.w	%d4, [%a5] 28
	.loc 1 716 0
	mov.aa	%a12, %a5
	.loc 1 719 0
	st.a	[%a4]0, %a15
	.loc 1 725 0
	call	IfxScuCcu_selectAdcClock
.LVL264:
.LBB505:
.LBB506:
	.loc 2 1731 0
	call	IfxScuWdt_getCpuWatchdogPassword
.LVL265:
	.loc 2 1733 0
	mov	%d4, %d2
	.loc 2 1731 0
	mov	%d15, %d2
.LVL266:
	.loc 2 1733 0
	call	IfxScuWdt_clearCpuEndinit
.LVL267:
	.loc 2 1734 0
	mov	%d2, 0
	.loc 2 1735 0
	mov	%d4, %d15
.LBE506:
.LBE505:
	.loc 1 733 0
	mov	%d15, 1
.LVL268:
.LBB508:
.LBB507:
	.loc 2 1734 0
	st.w	[%a15]0, %d2
	.loc 2 1735 0
	call	IfxScuWdt_setCpuEndinit
.LVL269:
.LBE507:
.LBE508:
	.loc 1 731 0
	ld.w	%d4, [%a12] 24
	mov.aa	%a4, %a15
	ftouz	%d4, %d4
	call	IfxVadc_initializeFAdcI
.LVL270:
	jnz	%d2, .L118
.L109:
	.loc 1 770 0
	mov	%d2, %d15
	ret
.L118:
	.loc 1 741 0
	ld.w	%d4, [%a12] 20
	mov.aa	%a4, %a15
	ftouz	%d4, %d4
	call	IfxVadc_initializeFAdcD
.LVL271:
	.loc 1 743 0
	mov.aa	%a4, %a15
	call	IfxVadc_getAdcAnalogFrequency
.LVL272:
	mov	%d3, 0
.LBB509:
.LBB510:
.LBB511:
.LBB512:
.LBB513:
.LBB514:
	.loc 4 141 0
	mov	%d6, 255
.LVL273:
.L111:
.LBE514:
.LBE513:
.LBE512:
.LBE511:
.LBE510:
.LBE509:
	.loc 1 749 0 discriminator 3
	add	%d15, %d3, 1
.LBB520:
.LBB521:
	.loc 2 2164 0 discriminator 3
	addi	%d4, %d3, 40
.LBE521:
.LBE520:
	.loc 1 749 0 discriminator 3
	addsc.a	%a2, %a12, %d15, 3
.LBB524:
.LBB522:
	.loc 2 2164 0 discriminator 3
	addsc.a	%a3, %a15, %d4, 2
	ld.w	%d15, [%a2]0
	ld.w	%d5, [%a3]0
.LBE522:
.LBE524:
	.loc 1 751 0 discriminator 3
	addsc.a	%a2, %a12, %d3, 3
.LBB525:
.LBB523:
	.loc 2 2164 0 discriminator 3
	insert	%d15, %d5, %d15, 8, 3
	st.w	[%a3]0, %d15
.LVL274:
.LBE523:
.LBE525:
.LBB526:
.LBB519:
.LBB518:
.LBB517:
	.loc 2 1653 0 discriminator 3
	ld.w	%d15, [%a2] 4
	mul.f	%d15, %d2, %d15
	ftouz	%d15, %d15
	add	%d15, -2
.LVL275:
	.loc 2 1655 0 discriminator 3
	lt.u	%d5, %d15, 32
	jnz	%d5, .L110
	.loc 2 1657 0
	sh	%d15, -4
.LVL276:
	addi	%d15, %d15, 15
.LVL277:
.L110:
.LBB516:
.LBB515:
	.loc 4 141 0
#APP
	# 141 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	min.u %d15, %d15, %d6
	# 0 "" 2
.LVL278:
#NO_APP
.LBE515:
.LBE516:
.LBE517:
.LBE518:
	.loc 2 2170 0
	addsc.a	%a2, %a15, %d4, 2
	ld.w	%d4, [%a2]0
	insert	%d15, %d4, %d15, 0, 5
.LVL279:
	st.w	[%a2]0, %d15
.LVL280:
.LBE519:
.LBE526:
	.loc 1 746 0
	jne	%d3, 1, .L114
	.loc 1 755 0
	ld.bu	%d2, [%a12] 36
.LVL281:
	.loc 1 769 0
	mov	%d15, 0
	.loc 1 755 0
	jne	%d2, 1, .L109
.LVL282:
.L112:
	addi	%d8, %d15, 16
	.loc 1 760 0 discriminator 3
	mov.aa	%a4, %a15
	mov	%d4, %d8
	call	IfxVadc_enableAccess
.LVL283:
.LBB527:
.LBB528:
	.loc 2 2074 0 discriminator 3
	sh	%d2, %d15, 10
	addsc.a	%a2, %a15, %d2, 0
.LBE528:
.LBE527:
	.loc 1 762 0 discriminator 3
	mov.aa	%a4, %a15
.LBB531:
.LBB529:
	.loc 2 2074 0 discriminator 3
	ld.w	%d2, [%a2] 1152
.LBE529:
.LBE531:
	.loc 1 762 0 discriminator 3
	mov	%d4, %d8
.LBB532:
.LBB530:
	.loc 2 2074 0 discriminator 3
	or	%d2, %d2, 3
	add	%d15, 1
.LVL284:
	st.w	[%a2] 1152, %d2
.LBE530:
.LBE532:
	.loc 1 762 0 discriminator 3
	call	IfxVadc_disableAccess
.LVL285:
	.loc 1 758 0 discriminator 3
	ne	%d2, %d15, 8
	jnz	%d2, .L112
	.loc 1 766 0
	mov.aa	%a4, %a15
	call	IfxVadc_startupCalibration
.LVL286:
	.loc 1 769 0
	mov	%d15, 0
.LVL287:
	.loc 1 770 0
	mov	%d2, %d15
	ret
.LVL288:
.L114:
	mov	%d3, 1
.LVL289:
	j	.L111
.LFE345:
	.size	IfxVadc_Adc_initModule, .-IfxVadc_Adc_initModule
	.align 1
	.global	IfxVadc_Adc_initModuleConfig
	.type	IfxVadc_Adc_initModuleConfig, @function
IfxVadc_Adc_initModuleConfig:
.LFB346:
	.loc 1 774 0
.LVL290:
	.loc 1 776 0
	movh	%d15, 19353
	addi	%d15, %d15, -27008
	.loc 1 774 0
	mov.aa	%a15, %a4
	.loc 1 775 0
	st.a	[%a15]0, %a5
	.loc 1 774 0
	mov.aa	%a4, %a5
.LVL291:
	.loc 1 776 0
	st.w	[%a15] 24, %d15
	.loc 1 778 0
	call	IfxVadc_getAdcDigitalFrequency
.LVL292:
	.loc 1 780 0
	mov	%d15, 3
	.loc 1 778 0
	st.w	[%a15] 20, %d2
	.loc 1 779 0
	call	IfxScuCcu_getSpbFrequency
.LVL293:
	st.w	[%a15] 32, %d2
	.loc 1 782 0
	movh	%d2, 13702
	addi	%d2, %d2, 14269
	.loc 1 780 0
	st.w	[%a15] 28, %d15
	.loc 1 781 0
	mov	%d15, 0
	.loc 1 782 0
	st.w	[%a15] 4, %d2
	.loc 1 784 0
	st.w	[%a15] 12, %d2
	.loc 1 781 0
	st.w	[%a15] 8, %d15
	.loc 1 783 0
	st.w	[%a15] 16, %d15
	.loc 1 785 0
	st.b	[%a15] 36, %d15
	ret
.LFE346:
	.size	IfxVadc_Adc_initModuleConfig, .-IfxVadc_Adc_initModuleConfig
	.align 1
	.global	IfxVadc_Adc_softCalibration
	.type	IfxVadc_Adc_softCalibration, @function
IfxVadc_Adc_softCalibration:
.LFB347:
	.loc 1 790 0
.LVL294:
	.loc 1 809 0
	movh.a	%a15, hi:init_done.11078
	mov.d	%d15, %a15
	addi	%d10, %d15, lo:init_done.11078
	mov.a	%a14, %d10
	addsc.a	%a2, %a14, %d4, 0
	ld.bu	%d7, [%a2]0
	.loc 1 821 0
	mov.a	%a2, 1
	.loc 1 809 0
	jnz	%d7, .L121
	.loc 1 812 0
	movh.a	%a15, hi:adc_offset_calib.11080
	.loc 1 814 0
	movh.a	%a2, hi:adc_gain_calib.11079
	.loc 1 812 0
	lea	%a15, [%a15] lo:adc_offset_calib.11080
	.loc 1 814 0
	lea	%a2, [%a2] lo:adc_gain_calib.11079
	mov	%d15, 16383
	addsc.a	%a2, %a2, %d4, 1
	.loc 1 812 0
	addsc.a	%a15, %a15, %d4, 0
	.loc 1 814 0
	st.h	[%a2]0, %d15
.LVL295:
	.loc 1 812 0
	st.b	[%a15]0, %d7
	.loc 1 816 0
	lea	%a2, 124
.LVL296:
.L121:
	.loc 1 824 0
	sh	%d0, %d4, 10
	.loc 1 829 0
	mov	%d15, 0
	.loc 1 824 0
	mov.a	%a15, %d0
.LBB533:
	.loc 1 886 0
	sh	%d2, %d4, -2
.LBE533:
	.loc 1 824 0
	addih.a	%a5, %a15, 61442
	ld.w	%d9, [%a5] 1284
.LVL297:
	.loc 1 826 0
	ld.w	%d8, [%a5] 1536
.LVL298:
	.loc 1 829 0
	st.w	[%a5] 1536, %d15
	.loc 1 832 0
	ld.w	%d1, [%a5] 1540
.LVL299:
	.loc 1 835 0
	st.w	[%a5] 1540, %d15
.LBB534:
	.loc 1 886 0
	and	%d15, %d4, 3
	madd	%d15, %d15, %d2, 128
.LBE534:
	.loc 1 878 0
	movh.a	%a13, hi:adc_offset_calib.11080
	.loc 1 921 0
	movh.a	%a7, hi:adc_gain_calib.11079
.LBB535:
	.loc 1 886 0
	sh	%d2, %d15, 4
	mov.a	%a14, %d2
.LBE535:
	.loc 1 928 0
	addi	%d5, %d15, 5168
.LBB536:
	.loc 1 886 0
	lea	%a6, [%a14] 20704
.LBE536:
	.loc 1 843 0
	lea	%a3, [%a5] 1296
	.loc 1 878 0
	lea	%a13, [%a13] lo:adc_offset_calib.11080
	.loc 1 921 0
	lea	%a7, [%a7] lo:adc_gain_calib.11079
	.loc 1 928 0
	sh	%d5, 2
.LBB537:
	.loc 1 886 0
	addih.a	%a6, %a6, 61442
.LBE537:
	.loc 1 841 0
	lea	%a12, [%a5] 1200
	mov	%d6, 7966
	.loc 1 843 0
	mov	%d3, 128
	.loc 1 845 0
	lea	%a4, [%a5] 1284
	.loc 1 852 0
	lea	%a15, [%a5] 1792
	.loc 1 858 0
	mov.d	%d11, %a3
	.loc 1 878 0
	addsc.a	%a13, %a13, %d4, 0
	.loc 1 921 0
	addsc.a	%a7, %a7, %d4, 1
	.loc 1 928 0
	addih	%d5, %d5, 61442
.LVL300:
	.loc 1 838 0
	loop	%a2, .L132
.L147:
	.loc 1 946 0
	mov.a	%a2, %d0
	.loc 1 952 0
	mov.a	%a14, %d10
	.loc 1 946 0
	addih.a	%a15, %a2, 61442
	st.w	[%a15] 1284, %d9
	.loc 1 948 0
	st.w	[%a15] 1536, %d8
	.loc 1 952 0
	mov	%d15, 1
	.loc 1 950 0
	st.w	[%a15] 1540, %d1
	.loc 1 952 0
	addsc.a	%a15, %a14, %d4, 0
	st.b	[%a15]0, %d15
	ret
.L132:
	.loc 1 845 0
	movh	%d15, 1
	addi	%d15, %d15, 513
	.loc 1 841 0
	st.w	[%a12]0, %d6
	.loc 1 843 0
	st.w	[%a3]0, %d3
	.loc 1 845 0
	st.w	[%a4]0, %d15
.L123:
	.loc 1 852 0 discriminator 1
	ld.w	%d15, [%a15]0
	.loc 1 853 0 discriminator 1
	jgez	%d15, .L123
	.loc 1 860 0
	movh	%d15, 1
	.loc 1 858 0
	mov.a	%a14, %d11
	.loc 1 860 0
	addi	%d15, %d15, 513
	.loc 1 858 0
	st.w	[%a14]0, %d3
	.loc 1 860 0
	st.w	[%a5] 1284, %d15
.L124:
	.loc 1 867 0 discriminator 1
	ld.w	%d15, [%a15]0
	.loc 1 868 0 discriminator 1
	jgez	%d15, .L124
	.loc 1 872 0
	extr.u	%d15, %d15, 0, 16
.LVL301:
	jnz	%d15, .L145
	.loc 1 878 0 discriminator 1
	ld.b	%d15, [%a13]0
.LVL302:
	lt	%d2, %d15, -59
	jnz	%d2, .L126
	.loc 1 880 0
	add	%d15, -1
	st.b	[%a13]0, %d15
.L126:
.LVL303:
.LBB538:
	.loc 1 887 0
	ld.w	%d15, [%a6]0
	insert	%d15, %d15, 15, 31, 1
	st.w	[%a6]0, %d15
.LBE538:
	.loc 1 892 0
	mov	%d15, 129
	st.w	[%a3]0, %d15
	.loc 1 894 0
	movh	%d15, 1
	addi	%d15, %d15, 513
	st.w	[%a4]0, %d15
.L127:
	.loc 1 901 0 discriminator 1
	ld.w	%d15, [%a15]0
	.loc 1 902 0 discriminator 1
	jgez	%d15, .L127
	.loc 1 906 0
	extr.u	%d15, %d15, 0, 16
	mov	%d2, 4095
	jlt.u	%d15, %d2, .L146
	.loc 1 921 0 discriminator 1
	ld.hu	%d2, [%a7]0
	mov	%d15, 16383
	jge.u	%d2, %d15, .L129
	.loc 1 923 0
	add	%d2, 1
	extr.u	%d2, %d2, 0, 16
	st.h	[%a7]0, %d2
.L129:
	.loc 1 928 0
	insert	%d2, %d2, 15, 15, 1
	.loc 1 930 0
	mov	%d15, 256
	.loc 1 928 0
	mov.a	%a14, %d5
	st.w	[%a14]0, %d2
	.loc 1 930 0
	st.w	[%a12]0, %d15
	.loc 1 934 0
	movh	%d15, 1
	addi	%d15, %d15, 513
	.loc 1 932 0
	st.w	[%a3]0, %d3
	.loc 1 934 0
	st.w	[%a4]0, %d15
.L131:
	.loc 1 941 0 discriminator 1
	ld.w	%d15, [%a15]0
	.loc 1 942 0 discriminator 1
	jgez	%d15, .L131
	.loc 1 838 0
	loop	%a2, .L132
	j	.L147
.L146:
	.loc 1 906 0 discriminator 1
	ld.hu	%d2, [%a7]0
	jz	%d2, .L129
	.loc 1 910 0
	jnz	%d7, .L130
	addi	%d15, %d15, -4095
	.loc 1 912 0
	add	%d2, %d15
	extr.u	%d2, %d2, 0, 16
	st.h	[%a7]0, %d2
	j	.L129
.LVL304:
.L145:
	.loc 1 872 0 discriminator 1
	ld.b	%d15, [%a13]0
.LVL305:
	ge	%d2, %d15, 63
	jnz	%d2, .L126
	.loc 1 874 0
	add	%d15, 1
	st.b	[%a13]0, %d15
	j	.L126
.L130:
	.loc 1 916 0
	add	%d2, -1
	extr.u	%d2, %d2, 0, 16
	st.h	[%a7]0, %d2
	j	.L129
.LFE347:
	.size	IfxVadc_Adc_softCalibration, .-IfxVadc_Adc_softCalibration
	.align 1
	.global	IfxVadc_Adc_initExternalMultiplexerModeConfig
	.type	IfxVadc_Adc_initExternalMultiplexerModeConfig, @function
IfxVadc_Adc_initExternalMultiplexerModeConfig:
.LFB348:
	.loc 1 957 0
.LVL306:
	.loc 1 959 0
	mov	%d15, 0
	.loc 1 957 0
	sub.a	%SP, 24
.LCFI1:
	.loc 1 967 0
	lea	%a15, [%SP] 4
	.loc 1 959 0
	st.b	[%a4] 24, %d15
	.loc 1 960 0
	mov	%d15, 0
	.loc 1 967 0
	mov.aa	%a2, %a15
	mov	%e2, 0
	st.d	[%a2+]8, %e2
	st.d	[%a2+]8, %e2
	st.w	[%a2+]4, %d2
.LVL307:
	.loc 1 960 0
	st.w	[%a4] 20, %d15
	.loc 1 961 0
	st.w	[%a4] 28, %d15
	.loc 1 962 0
	st.w	[%a4] 8, %d15
	.loc 1 963 0
	st.w	[%a4] 12, %d15
	.loc 1 964 0
	st.w	[%a4] 16, %d15
	.loc 1 965 0
	st.w	[%a4] 4, %d15
	.loc 1 966 0
	st.w	[%a4] 52, %d15
	.loc 1 973 0
	mov	%d15, 128
	.loc 1 958 0
	st.a	[%a4]0, %a5
	.loc 1 973 0
	lea	%a4, [%a4] 32
.LVL308:
	st.w	[%SP] 16, %d15
		# #chunks=2, chunksize=8, remains=4
	ld.d	%e2, [%a15+]8
	st.d	[%a4+]8, %e2
	ld.d	%e2, [%a15+]8
	st.d	[%a4+]8, %e2
	ld.w	%d2, [%a15+]4
	st.w	[%a4+]4, %d2
.LVL309:
	ret
.LFE348:
	.size	IfxVadc_Adc_initExternalMultiplexerModeConfig, .-IfxVadc_Adc_initExternalMultiplexerModeConfig
	.align 1
	.global	IfxVadc_Adc_initExternalMultiplexerMode
	.type	IfxVadc_Adc_initExternalMultiplexerMode, @function
IfxVadc_Adc_initExternalMultiplexerMode:
.LFB349:
	.loc 1 978 0
.LVL310:
	.loc 1 980 0
	ld.w	%d15, [%a5] 20
	.loc 1 978 0
	sub.a	%SP, 8
.LCFI2:
	.loc 1 980 0
	sh	%d2, %d15, 10
	addi	%d2, %d2, 1152
	addsc.a	%a14, %a4, %d2, 0
.LVL311:
.LBB539:
.LBB540:
	.loc 2 2370 0
	ld.w	%d2, [%a5] 28
.LBE540:
.LBE539:
	.loc 1 978 0
	mov.aa	%a13, %a4
	mov.aa	%a15, %a5
.LBB543:
.LBB541:
	.loc 2 2370 0
	jnz	%d2, .L150
	.loc 2 2372 0
	ld.w	%d2, [%a4] 1008
	insert	%d15, %d2, %d15, 0, 4
.LVL312:
	st.w	[%a4] 1008, %d15
.LVL313:
.L152:
.LBE541:
.LBE543:
	.loc 1 978 0 discriminator 1
	mov	%d15, 0
.LVL314:
.L151:
	.loc 1 985 0
	addsc.a	%a2, %a15, %d15, 2
	ld.a	%a12, [%a2] 32
	jz.a	%a12, .L153
.LBB544:
.LBB545:
.LBB546:
.LBB547:
	.file 5 "./0_Src/4_McHal/Tricore/Port/Std/IfxPort.h"
	.loc 5 562 0
	ld.w	%d5, [%a12] 12
	ld.w	%d2, [%a15] 44
	ld.a	%a4, [%a12] 4
	ld.bu	%d4, [%a12] 8
	or	%d5, %d2
.LBE547:
.LBE546:
.LBE545:
.LBE544:
	.loc 1 987 0
	ld.w	%d8, [%a15] 48
.LVL315:
.LBB551:
.LBB550:
.LBB549:
.LBB548:
	.loc 5 562 0
	call	IfxPort_setPinMode
.LVL316:
.LBE548:
.LBE549:
	.loc 2 2019 0
	ld.a	%a4, [%a12] 4
	ld.bu	%d4, [%a12] 8
	mov	%d5, %d8
	call	IfxPort_setPinPadDriver
.LVL317:
.L153:
	add	%d15, 1
.LVL318:
.LBE550:
.LBE551:
	.loc 1 983 0 discriminator 2
	jne	%d15, 3, .L151
	.loc 1 991 0
	ld.w	%d15, [%a15] 16
.LVL319:
	st.w	[%SP]0, %d15
	ld.bu	%d5, [%a15] 24
	ld.w	%d15, [%a15] 52
	ld.w	%d4, [%a15] 4
	ld.w	%d6, [%a15] 8
	ld.w	%d7, [%a15] 12
	st.w	[%SP] 4, %d15
	mov.aa	%a4, %a13
	mov.aa	%a5, %a14
	j	IfxVadc_configExternalMultiplexerMode
.LVL320:
.L150:
.LBB552:
.LBB542:
	.loc 2 2376 0
	ld.w	%d2, [%a4] 1008
.LVL321:
	insert	%d15, %d2, %d15, 4, 4
.LVL322:
	st.w	[%a4] 1008, %d15
.LVL323:
	j	.L152
.LBE542:
.LBE552:
.LFE349:
	.size	IfxVadc_Adc_initExternalMultiplexerMode, .-IfxVadc_Adc_initExternalMultiplexerMode
	.local	adc_gain_calib.11079
.section .bss,"aw",@nobits
	.align 1
	.type		 adc_gain_calib.11079,@object
	.size		 adc_gain_calib.11079,16
adc_gain_calib.11079:
	.space	16
	.local	adc_offset_calib.11080
	.align 0
	.type		 adc_offset_calib.11080,@object
	.size		 adc_offset_calib.11080,8
adc_offset_calib.11080:
	.space	8
	.local	init_done.11078
	.align 0
	.type		 init_done.11078,@object
	.size		 init_done.11078,8
init_done.11078:
	.space	8
.section .rodata,"a",@progbits
	.type	IfxVadc_Adc_masterIndex, @object
	.size	IfxVadc_Adc_masterIndex, 64
IfxVadc_Adc_masterIndex:
	.byte	0
	.byte	1
	.byte	2
	.byte	3
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	2
	.byte	3
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	2
	.byte	0
	.byte	3
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	2
	.byte	3
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	2
	.byte	3
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	2
	.byte	3
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	2
	.byte	0
	.byte	3
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	2
	.byte	3
	.byte	0
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
	.uaword	.LFB336
	.uaword	.LFE336-.LFB336
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB337
	.uaword	.LFE337-.LFB337
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB338
	.uaword	.LFE338-.LFB338
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB339
	.uaword	.LFE339-.LFB339
	.byte	0x4
	.uaword	.LCFI0-.LFB339
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB340
	.uaword	.LFE340-.LFB340
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB341
	.uaword	.LFE341-.LFB341
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB342
	.uaword	.LFE342-.LFB342
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB343
	.uaword	.LFE343-.LFB343
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB344
	.uaword	.LFE344-.LFB344
	.align 2
.LEFDE16:
.LSFDE18:
	.uaword	.LEFDE18-.LASFDE18
.LASFDE18:
	.uaword	.Lframe0
	.uaword	.LFB345
	.uaword	.LFE345-.LFB345
	.align 2
.LEFDE18:
.LSFDE20:
	.uaword	.LEFDE20-.LASFDE20
.LASFDE20:
	.uaword	.Lframe0
	.uaword	.LFB346
	.uaword	.LFE346-.LFB346
	.align 2
.LEFDE20:
.LSFDE22:
	.uaword	.LEFDE22-.LASFDE22
.LASFDE22:
	.uaword	.Lframe0
	.uaword	.LFB347
	.uaword	.LFE347-.LFB347
	.align 2
.LEFDE22:
.LSFDE24:
	.uaword	.LEFDE24-.LASFDE24
.LASFDE24:
	.uaword	.Lframe0
	.uaword	.LFB348
	.uaword	.LFE348-.LFB348
	.byte	0x4
	.uaword	.LCFI1-.LFB348
	.byte	0xe
	.uleb128 0x18
	.align 2
.LEFDE24:
.LSFDE26:
	.uaword	.LEFDE26-.LASFDE26
.LASFDE26:
	.uaword	.Lframe0
	.uaword	.LFB349
	.uaword	.LFE349-.LFB349
	.byte	0x4
	.uaword	.LCFI2-.LFB349
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE26:
.section .text,"ax",@progbits
.Letext0:
	.file 6 "./0_Src/4_McHal/Tricore/_Impl/IfxSrc_cfg.h"
	.file 7 "./0_Src/4_McHal/Tricore/Cpu/Std/Platform_Types.h"
	.file 8 "./0_Src/4_McHal/Tricore/Cpu/Std/Ifx_Types.h"
	.file 9 "./0_Src/4_McHal/Tricore/_Reg/IfxSrc_regdef.h"
	.file 10 "./0_Src/4_McHal/Tricore/_Impl/IfxVadc_cfg.h"
	.file 11 "./0_Src/4_McHal/Tricore/_Reg/IfxVadc_regdef.h"
	.file 12 "./0_Src/4_McHal/Tricore/_Reg/IfxPort_regdef.h"
	.file 13 "./0_Src/4_McHal/Tricore/_PinMap/IfxVadc_PinMap.h"
	.file 14 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuCcu.h"
	.file 15 "0_Src/4_McHal/Tricore/Vadc/Adc/IfxVadc_Adc.h"
	.file 16 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0xe766
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9."
	.string	"4 build on 2018-04-18 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -msmall-const=8 -mtc161 -g -g -O2 -fno-common -fno-short-enums -fsingle-precision-constant -fstrict-volatile-bitfields"
	.byte	0x1
	.string	"0_Src/4_McHal/Tricore/Vadc/Adc/IfxVadc_Adc.c"
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
	.uleb128 0x3
	.byte	0x4
	.byte	0x6
	.byte	0x32
	.uaword	0x1fb
	.uleb128 0x4
	.string	"IfxSrc_Tos_cpu0"
	.sleb128 0
	.uleb128 0x4
	.string	"IfxSrc_Tos_cpu1"
	.sleb128 1
	.uleb128 0x4
	.string	"IfxSrc_Tos_cpu2"
	.sleb128 2
	.uleb128 0x4
	.string	"IfxSrc_Tos_dma"
	.sleb128 3
	.byte	0
	.uleb128 0x5
	.string	"IfxSrc_Tos"
	.byte	0x6
	.byte	0x37
	.uaword	0x1ab
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
	.uleb128 0x5
	.string	"sint8"
	.byte	0x7
	.byte	0x58
	.uaword	0x242
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x5
	.string	"uint8"
	.byte	0x7
	.byte	0x59
	.uaword	0x25e
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
	.byte	0x7
	.byte	0x5b
	.uaword	0x28a
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x5
	.string	"uint32"
	.byte	0x7
	.byte	0x5d
	.uaword	0x219
	.uleb128 0x5
	.string	"float32"
	.byte	0x7
	.byte	0x5e
	.uaword	0x192
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.string	"double"
	.uleb128 0x5
	.string	"boolean"
	.byte	0x7
	.byte	0x68
	.uaword	0x25e
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
	.uleb128 0x5
	.string	"Ifx_Priority"
	.byte	0x8
	.byte	0x43
	.uaword	0x27c
	.uleb128 0x6
	.string	"_Ifx_SRC_SRCR_Bits"
	.byte	0x4
	.byte	0x9
	.byte	0x2d
	.uaword	0x423
	.uleb128 0x7
	.string	"SRPN"
	.byte	0x9
	.byte	0x2f
	.uaword	0x19b
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x9
	.byte	0x30
	.uaword	0x19b
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0
	.uleb128 0x7
	.string	"SRE"
	.byte	0x9
	.byte	0x31
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x7
	.string	"TOS"
	.byte	0x9
	.byte	0x32
	.uaword	0x19b
	.byte	0x4
	.byte	0x2
	.byte	0x13
	.byte	0
	.uleb128 0x8
	.uaword	.LASF1
	.byte	0x9
	.byte	0x33
	.uaword	0x19b
	.byte	0x4
	.byte	0x3
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.string	"ECC"
	.byte	0x9
	.byte	0x34
	.uaword	0x19b
	.byte	0x4
	.byte	0x6
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.uaword	.LASF2
	.byte	0x9
	.byte	0x35
	.uaword	0x19b
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.string	"SRR"
	.byte	0x9
	.byte	0x36
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x7
	.string	"CLRR"
	.byte	0x9
	.byte	0x37
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x7
	.string	"SETR"
	.byte	0x9
	.byte	0x38
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x7
	.string	"IOV"
	.byte	0x9
	.byte	0x39
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.string	"IOVCLR"
	.byte	0x9
	.byte	0x3a
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x7
	.string	"SWS"
	.byte	0x9
	.byte	0x3b
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.string	"SWSCLR"
	.byte	0x9
	.byte	0x3c
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.uaword	.LASF3
	.byte	0x9
	.byte	0x3d
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SRC_SRCR_Bits"
	.byte	0x9
	.byte	0x3e
	.uaword	0x31d
	.uleb128 0x9
	.byte	0x4
	.byte	0x9
	.byte	0x46
	.uaword	0x460
	.uleb128 0xa
	.string	"U"
	.byte	0x9
	.byte	0x49
	.uaword	0x19b
	.uleb128 0xa
	.string	"I"
	.byte	0x9
	.byte	0x4b
	.uaword	0x22e
	.uleb128 0xa
	.string	"B"
	.byte	0x9
	.byte	0x4d
	.uaword	0x423
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SRC_SRCR"
	.byte	0x9
	.byte	0x4e
	.uaword	0x43c
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0xb
	.uaword	0x25e
	.uaword	0x490
	.uleb128 0xc
	.uaword	0x474
	.byte	0xb
	.byte	0
	.uleb128 0xb
	.uaword	0x25e
	.uaword	0x4a0
	.uleb128 0xc
	.uaword	0x474
	.byte	0x27
	.byte	0
	.uleb128 0xb
	.uaword	0x25e
	.uaword	0x4b0
	.uleb128 0xc
	.uaword	0x474
	.byte	0xf
	.byte	0
	.uleb128 0xb
	.uaword	0x25e
	.uaword	0x4c0
	.uleb128 0xc
	.uaword	0x474
	.byte	0x17
	.byte	0
	.uleb128 0xb
	.uaword	0x25e
	.uaword	0x4d0
	.uleb128 0xc
	.uaword	0x474
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.uaword	0x25e
	.uaword	0x4e0
	.uleb128 0xc
	.uaword	0x474
	.byte	0x7
	.byte	0
	.uleb128 0xb
	.uaword	0x25e
	.uaword	0x4f0
	.uleb128 0xc
	.uaword	0x474
	.byte	0x37
	.byte	0
	.uleb128 0xb
	.uaword	0x25e
	.uaword	0x500
	.uleb128 0xc
	.uaword	0x474
	.byte	0x1b
	.byte	0
	.uleb128 0xb
	.uaword	0x25e
	.uaword	0x510
	.uleb128 0xc
	.uaword	0x474
	.byte	0x1f
	.byte	0
	.uleb128 0xb
	.uaword	0x25e
	.uaword	0x520
	.uleb128 0xc
	.uaword	0x474
	.byte	0x3f
	.byte	0
	.uleb128 0xb
	.uaword	0x25e
	.uaword	0x530
	.uleb128 0xc
	.uaword	0x474
	.byte	0x2b
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0xa
	.byte	0x60
	.uaword	0x60d
	.uleb128 0x4
	.string	"IfxVadc_GroupId_0"
	.sleb128 0
	.uleb128 0x4
	.string	"IfxVadc_GroupId_1"
	.sleb128 1
	.uleb128 0x4
	.string	"IfxVadc_GroupId_2"
	.sleb128 2
	.uleb128 0x4
	.string	"IfxVadc_GroupId_3"
	.sleb128 3
	.uleb128 0x4
	.string	"IfxVadc_GroupId_4"
	.sleb128 4
	.uleb128 0x4
	.string	"IfxVadc_GroupId_5"
	.sleb128 5
	.uleb128 0x4
	.string	"IfxVadc_GroupId_6"
	.sleb128 6
	.uleb128 0x4
	.string	"IfxVadc_GroupId_7"
	.sleb128 7
	.uleb128 0x4
	.string	"IfxVadc_GroupId_global0"
	.sleb128 8
	.uleb128 0x4
	.string	"IfxVadc_GroupId_global1"
	.sleb128 9
	.byte	0
	.uleb128 0x5
	.string	"IfxVadc_GroupId"
	.byte	0xa
	.byte	0x6b
	.uaword	0x530
	.uleb128 0x6
	.string	"_Ifx_VADC_ACCEN0_Bits"
	.byte	0x4
	.byte	0xb
	.byte	0x31
	.uaword	0x839
	.uleb128 0x7
	.string	"EN0"
	.byte	0xb
	.byte	0x33
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x7
	.string	"EN1"
	.byte	0xb
	.byte	0x34
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x7
	.string	"EN2"
	.byte	0xb
	.byte	0x35
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x7
	.string	"EN3"
	.byte	0xb
	.byte	0x36
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x7
	.string	"EN4"
	.byte	0xb
	.byte	0x37
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x7
	.string	"EN5"
	.byte	0xb
	.byte	0x38
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x7
	.string	"EN6"
	.byte	0xb
	.byte	0x39
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x7
	.string	"EN7"
	.byte	0xb
	.byte	0x3a
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x7
	.string	"EN8"
	.byte	0xb
	.byte	0x3b
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x7
	.string	"EN9"
	.byte	0xb
	.byte	0x3c
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x7
	.string	"EN10"
	.byte	0xb
	.byte	0x3d
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x7
	.string	"EN11"
	.byte	0xb
	.byte	0x3e
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x7
	.string	"EN12"
	.byte	0xb
	.byte	0x3f
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x7
	.string	"EN13"
	.byte	0xb
	.byte	0x40
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x7
	.string	"EN14"
	.byte	0xb
	.byte	0x41
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x7
	.string	"EN15"
	.byte	0xb
	.byte	0x42
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.string	"EN16"
	.byte	0xb
	.byte	0x43
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x7
	.string	"EN17"
	.byte	0xb
	.byte	0x44
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0x7
	.string	"EN18"
	.byte	0xb
	.byte	0x45
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0x7
	.string	"EN19"
	.byte	0xb
	.byte	0x46
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x7
	.string	"EN20"
	.byte	0xb
	.byte	0x47
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0x7
	.string	"EN21"
	.byte	0xb
	.byte	0x48
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0x7
	.string	"EN22"
	.byte	0xb
	.byte	0x49
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0x7
	.string	"EN23"
	.byte	0xb
	.byte	0x4a
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.string	"EN24"
	.byte	0xb
	.byte	0x4b
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x7
	.string	"EN25"
	.byte	0xb
	.byte	0x4c
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x7
	.string	"EN26"
	.byte	0xb
	.byte	0x4d
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x7
	.string	"EN27"
	.byte	0xb
	.byte	0x4e
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.string	"EN28"
	.byte	0xb
	.byte	0x4f
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x7
	.string	"EN29"
	.byte	0xb
	.byte	0x50
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.string	"EN30"
	.byte	0xb
	.byte	0x51
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.string	"EN31"
	.byte	0xb
	.byte	0x52
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_VADC_ACCEN0_Bits"
	.byte	0xb
	.byte	0x53
	.uaword	0x624
	.uleb128 0x6
	.string	"_Ifx_VADC_ACCPROT0_Bits"
	.byte	0x4
	.byte	0xb
	.byte	0x56
	.uaword	0x9b4
	.uleb128 0x7
	.string	"APC0"
	.byte	0xb
	.byte	0x58
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x7
	.string	"APC1"
	.byte	0xb
	.byte	0x59
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x7
	.string	"APC2"
	.byte	0xb
	.byte	0x5a
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x7
	.string	"APC3"
	.byte	0xb
	.byte	0x5b
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x7
	.string	"APC4"
	.byte	0xb
	.byte	0x5c
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x7
	.string	"APC5"
	.byte	0xb
	.byte	0x5d
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x7
	.string	"APC6"
	.byte	0xb
	.byte	0x5e
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x7
	.string	"APC7"
	.byte	0xb
	.byte	0x5f
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0xb
	.byte	0x60
	.uaword	0x19b
	.byte	0x4
	.byte	0x7
	.byte	0x11
	.byte	0
	.uleb128 0x7
	.string	"APEM"
	.byte	0xb
	.byte	0x61
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.string	"API0"
	.byte	0xb
	.byte	0x62
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x7
	.string	"API1"
	.byte	0xb
	.byte	0x63
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0x7
	.string	"API2"
	.byte	0xb
	.byte	0x64
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0x7
	.string	"API3"
	.byte	0xb
	.byte	0x65
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x7
	.string	"API4"
	.byte	0xb
	.byte	0x66
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0x7
	.string	"API5"
	.byte	0xb
	.byte	0x67
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0x7
	.string	"API6"
	.byte	0xb
	.byte	0x68
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0x7
	.string	"API7"
	.byte	0xb
	.byte	0x69
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.uaword	.LASF4
	.byte	0xb
	.byte	0x6a
	.uaword	0x19b
	.byte	0x4
	.byte	0x7
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.string	"APGC"
	.byte	0xb
	.byte	0x6b
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_VADC_ACCPROT0_Bits"
	.byte	0xb
	.byte	0x6c
	.uaword	0x855
	.uleb128 0x6
	.string	"_Ifx_VADC_ACCPROT1_Bits"
	.byte	0x4
	.byte	0xb
	.byte	0x6f
	.uaword	0xb21
	.uleb128 0x7
	.string	"APS0"
	.byte	0xb
	.byte	0x71
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x7
	.string	"APS1"
	.byte	0xb
	.byte	0x72
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x7
	.string	"APS2"
	.byte	0xb
	.byte	0x73
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x7
	.string	"APS3"
	.byte	0xb
	.byte	0x74
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x7
	.string	"APS4"
	.byte	0xb
	.byte	0x75
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x7
	.string	"APS5"
	.byte	0xb
	.byte	0x76
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x7
	.string	"APS6"
	.byte	0xb
	.byte	0x77
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x7
	.string	"APS7"
	.byte	0xb
	.byte	0x78
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0xb
	.byte	0x79
	.uaword	0x19b
	.byte	0x4
	.byte	0x7
	.byte	0x11
	.byte	0
	.uleb128 0x7
	.string	"APTF"
	.byte	0xb
	.byte	0x7a
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.string	"APR0"
	.byte	0xb
	.byte	0x7b
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x7
	.string	"APR1"
	.byte	0xb
	.byte	0x7c
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0x7
	.string	"APR2"
	.byte	0xb
	.byte	0x7d
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0x7
	.string	"APR3"
	.byte	0xb
	.byte	0x7e
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x7
	.string	"APR4"
	.byte	0xb
	.byte	0x7f
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0x7
	.string	"APR5"
	.byte	0xb
	.byte	0x80
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0x7
	.string	"APR6"
	.byte	0xb
	.byte	0x81
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0x7
	.string	"APR7"
	.byte	0xb
	.byte	0x82
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.uaword	.LASF4
	.byte	0xb
	.byte	0x83
	.uaword	0x19b
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_VADC_ACCPROT1_Bits"
	.byte	0xb
	.byte	0x84
	.uaword	0x9d2
	.uleb128 0x6
	.string	"_Ifx_VADC_BRSCTRL_Bits"
	.byte	0x4
	.byte	0xb
	.byte	0x87
	.uaword	0xc0e
	.uleb128 0x8
	.uaword	.LASF5
	.byte	0xb
	.byte	0x89
	.uaword	0x19b
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0x8
	.uaword	.LASF6
	.byte	0xb
	.byte	0x8a
	.uaword	0x19b
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0
	.uleb128 0x7
	.string	"XTSEL"
	.byte	0xb
	.byte	0x8b
	.uaword	0x19b
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0
	.uleb128 0x7
	.string	"XTLVL"
	.byte	0xb
	.byte	0x8c
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x8
	.uaword	.LASF7
	.byte	0xb
	.byte	0x8d
	.uaword	0x19b
	.byte	0x4
	.byte	0x2
	.byte	0x11
	.byte	0
	.uleb128 0x7
	.string	"XTWC"
	.byte	0xb
	.byte	0x8e
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.string	"GTSEL"
	.byte	0xb
	.byte	0x8f
	.uaword	0x19b
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0
	.uleb128 0x7
	.string	"GTLVL"
	.byte	0xb
	.byte	0x90
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0x8
	.uaword	.LASF8
	.byte	0xb
	.byte	0x91
	.uaword	0x19b
	.byte	0x4
	.byte	0x2
	.byte	0x9
	.byte	0
	.uleb128 0x7
	.string	"GTWC"
	.byte	0xb
	.byte	0x92
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.uaword	.LASF4
	.byte	0xb
	.byte	0x93
	.uaword	0x19b
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_VADC_BRSCTRL_Bits"
	.byte	0xb
	.byte	0x94
	.uaword	0xb3f
	.uleb128 0x6
	.string	"_Ifx_VADC_BRSMR_Bits"
	.byte	0x4
	.byte	0xb
	.byte	0x97
	.uaword	0xd07
	.uleb128 0x7
	.string	"ENGT"
	.byte	0xb
	.byte	0x99
	.uaword	0x19b
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0
	.uleb128 0x7
	.string	"ENTR"
	.byte	0xb
	.byte	0x9a
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x7
	.string	"ENSI"
	.byte	0xb
	.byte	0x9b
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x7
	.string	"SCAN"
	.byte	0xb
	.byte	0x9c
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x7
	.string	"LDM"
	.byte	0xb
	.byte	0x9d
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x8
	.uaword	.LASF9
	.byte	0xb
	.byte	0x9e
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x7
	.string	"REQGT"
	.byte	0xb
	.byte	0x9f
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x7
	.string	"CLRPND"
	.byte	0xb
	.byte	0xa0
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x7
	.string	"LDEV"
	.byte	0xb
	.byte	0xa1
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x8
	.uaword	.LASF10
	.byte	0xb
	.byte	0xa2
	.uaword	0x19b
	.byte	0x4
	.byte	0x6
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.uaword	.LASF11
	.byte	0xb
	.byte	0xa3
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x8
	.uaword	.LASF12
	.byte	0xb
	.byte	0xa4
	.uaword	0x19b
	.byte	0x4
	.byte	0xf
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_VADC_BRSMR_Bits"
	.byte	0xb
	.byte	0xa5
	.uaword	0xc2b
	.uleb128 0x6
	.string	"_Ifx_VADC_BRSPND_Bits"
	.byte	0x4
	.byte	0xb
	.byte	0xa8
	.uaword	0xd54
	.uleb128 0x7
	.string	"CHPNDGy"
	.byte	0xb
	.byte	0xaa
	.uaword	0x19b
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_VADC_BRSPND_Bits"
	.byte	0xb
	.byte	0xab
	.uaword	0xd22
	.uleb128 0x6
	.string	"_Ifx_VADC_BRSSEL_Bits"
	.byte	0x4
	.byte	0xb
	.byte	0xae
	.uaword	0xda2
	.uleb128 0x7
	.string	"CHSELGy"
	.byte	0xb
	.byte	0xb0
	.uaword	0x19b
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_VADC_BRSSEL_Bits"
	.byte	0xb
	.byte	0xb1
	.uaword	0xd70
	.uleb128 0x6
	.string	"_Ifx_VADC_CHCTR_Bits"
	.byte	0x4
	.byte	0xb
	.byte	0xb4
	.uaword	0xee2
	.uleb128 0x7
	.string	"ICLSEL"
	.byte	0xb
	.byte	0xb6
	.uaword	0x19b
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0
	.uleb128 0x8
	.uaword	.LASF13
	.byte	0xb
	.byte	0xb7
	.uaword	0x19b
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0
	.uleb128 0x7
	.string	"BNDSELL"
	.byte	0xb
	.byte	0xb8
	.uaword	0x19b
	.byte	0x4
	.byte	0x2
	.byte	0x1a
	.byte	0
	.uleb128 0x7
	.string	"BNDSELU"
	.byte	0xb
	.byte	0xb9
	.uaword	0x19b
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0
	.uleb128 0x7
	.string	"CHEVMODE"
	.byte	0xb
	.byte	0xba
	.uaword	0x19b
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0
	.uleb128 0x7
	.string	"SYNC"
	.byte	0xb
	.byte	0xbb
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x7
	.string	"REFSEL"
	.byte	0xb
	.byte	0xbc
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x7
	.string	"BNDSELX"
	.byte	0xb
	.byte	0xbd
	.uaword	0x19b
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.string	"RESREG"
	.byte	0xb
	.byte	0xbe
	.uaword	0x19b
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0
	.uleb128 0x7
	.string	"RESTBS"
	.byte	0xb
	.byte	0xbf
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0x7
	.string	"RESPOS"
	.byte	0xb
	.byte	0xc0
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.uaword	.LASF2
	.byte	0xb
	.byte	0xc1
	.uaword	0x19b
	.byte	0x4
	.byte	0x6
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.string	"BWDCH"
	.byte	0xb
	.byte	0xc2
	.uaword	0x19b
	.byte	0x4
	.byte	0x2
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.string	"BWDEN"
	.byte	0xb
	.byte	0xc3
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.uaword	.LASF3
	.byte	0xb
	.byte	0xc4
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_VADC_CHCTR_Bits"
	.byte	0xb
	.byte	0xc5
	.uaword	0xdbe
	.uleb128 0x6
	.string	"_Ifx_VADC_CLC_Bits"
	.byte	0x4
	.byte	0xb
	.byte	0xc8
	.uaword	0xf67
	.uleb128 0x7
	.string	"DISR"
	.byte	0xb
	.byte	0xca
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x7
	.string	"DISS"
	.byte	0xb
	.byte	0xcb
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x8
	.uaword	.LASF13
	.byte	0xb
	.byte	0xcc
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x7
	.string	"EDIS"
	.byte	0xb
	.byte	0xcd
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x8
	.uaword	.LASF6
	.byte	0xb
	.byte	0xce
	.uaword	0x19b
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_VADC_CLC_Bits"
	.byte	0xb
	.byte	0xcf
	.uaword	0xefd
	.uleb128 0x6
	.string	"_Ifx_VADC_EMUXSEL_Bits"
	.byte	0x4
	.byte	0xb
	.byte	0xd2
	.uaword	0xfd7
	.uleb128 0x7
	.string	"EMUXGRP0"
	.byte	0xb
	.byte	0xd4
	.uaword	0x19b
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0x7
	.string	"EMUXGRP1"
	.byte	0xb
	.byte	0xd5
	.uaword	0x19b
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0xb
	.byte	0xd6
	.uaword	0x19b
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_VADC_EMUXSEL_Bits"
	.byte	0xb
	.byte	0xd7
	.uaword	0xf80
	.uleb128 0x6
	.string	"_Ifx_VADC_G_ALIAS_Bits"
	.byte	0x4
	.byte	0xb
	.byte	0xda
	.uaword	0x1056
	.uleb128 0x7
	.string	"ALIAS0"
	.byte	0xb
	.byte	0xdc
	.uaword	0x19b
	.byte	0x4
	.byte	0x5
	.byte	0x1b
	.byte	0
	.uleb128 0x8
	.uaword	.LASF14
	.byte	0xb
	.byte	0xdd
	.uaword	0x19b
	.byte	0x4
	.byte	0x3
	.byte	0x18
	.byte	0
	.uleb128 0x7
	.string	"ALIAS1"
	.byte	0xb
	.byte	0xde
	.uaword	0x19b
	.byte	0x4
	.byte	0x5
	.byte	0x13
	.byte	0
	.uleb128 0x8
	.uaword	.LASF1
	.byte	0xb
	.byte	0xdf
	.uaword	0x19b
	.byte	0x4
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_VADC_G_ALIAS_Bits"
	.byte	0xb
	.byte	0xe0
	.uaword	0xff4
	.uleb128 0x6
	.string	"_Ifx_VADC_G_ARBCFG_Bits"
	.byte	0x4
	.byte	0xb
	.byte	0xe3
	.uaword	0x118f
	.uleb128 0x7
	.string	"ANONC"
	.byte	0xb
	.byte	0xe5
	.uaword	0x19b
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0
	.uleb128 0x8
	.uaword	.LASF13
	.byte	0xb
	.byte	0xe6
	.uaword	0x19b
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0
	.uleb128 0x7
	.string	"ARBRND"
	.byte	0xb
	.byte	0xe7
	.uaword	0x19b
	.byte	0x4
	.byte	0x2
	.byte	0x1a
	.byte	0
	.uleb128 0x8
	.uaword	.LASF9
	.byte	0xb
	.byte	0xe8
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x7
	.string	"ARBM"
	.byte	0xb
	.byte	0xe9
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0xb
	.byte	0xea
	.uaword	0x19b
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.string	"ANONS"
	.byte	0xb
	.byte	0xeb
	.uaword	0x19b
	.byte	0x4
	.byte	0x2
	.byte	0xe
	.byte	0
	.uleb128 0x7
	.string	"CSRC"
	.byte	0xb
	.byte	0xec
	.uaword	0x19b
	.byte	0x4
	.byte	0x2
	.byte	0xc
	.byte	0
	.uleb128 0x7
	.string	"CHNR"
	.byte	0xb
	.byte	0xed
	.uaword	0x19b
	.byte	0x4
	.byte	0x5
	.byte	0x7
	.byte	0
	.uleb128 0x7
	.string	"SYNRUN"
	.byte	0xb
	.byte	0xee
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x7
	.string	"reserved_26"
	.byte	0xb
	.byte	0xef
	.uaword	0x19b
	.byte	0x4
	.byte	0x2
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.string	"CAL"
	.byte	0xb
	.byte	0xf0
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x7
	.string	"CALS"
	.byte	0xb
	.byte	0xf1
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.string	"BUSY"
	.byte	0xb
	.byte	0xf2
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.string	"SAMPLE"
	.byte	0xb
	.byte	0xf3
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_VADC_G_ARBCFG_Bits"
	.byte	0xb
	.byte	0xf4
	.uaword	0x1073
	.uleb128 0x6
	.string	"_Ifx_VADC_G_ARBPR_Bits"
	.byte	0x4
	.byte	0xb
	.byte	0xf7
	.uaword	0x12b5
	.uleb128 0x7
	.string	"PRIO0"
	.byte	0xb
	.byte	0xf9
	.uaword	0x19b
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0
	.uleb128 0x8
	.uaword	.LASF13
	.byte	0xb
	.byte	0xfa
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x7
	.string	"CSM0"
	.byte	0xb
	.byte	0xfb
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x7
	.string	"PRIO1"
	.byte	0xb
	.byte	0xfc
	.uaword	0x19b
	.byte	0x4
	.byte	0x2
	.byte	0x1a
	.byte	0
	.uleb128 0x8
	.uaword	.LASF9
	.byte	0xb
	.byte	0xfd
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x7
	.string	"CSM1"
	.byte	0xb
	.byte	0xfe
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x7
	.string	"PRIO2"
	.byte	0xb
	.byte	0xff
	.uaword	0x19b
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0
	.uleb128 0xd
	.uaword	.LASF10
	.byte	0xb
	.uahalf	0x100
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xe
	.string	"CSM2"
	.byte	0xb
	.uahalf	0x101
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xd
	.uaword	.LASF15
	.byte	0xb
	.uahalf	0x102
	.uaword	0x19b
	.byte	0x4
	.byte	0xc
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.string	"ASEN0"
	.byte	0xb
	.uahalf	0x103
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xe
	.string	"ASEN1"
	.byte	0xb
	.uahalf	0x104
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xe
	.string	"ASEN2"
	.byte	0xb
	.uahalf	0x105
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xd
	.uaword	.LASF16
	.byte	0xb
	.uahalf	0x106
	.uaword	0x19b
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_ARBPR_Bits"
	.byte	0xb
	.uahalf	0x107
	.uaword	0x11ad
	.uleb128 0x10
	.string	"_Ifx_VADC_G_ASCTRL_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x10a
	.uaword	0x13e1
	.uleb128 0xd
	.uaword	.LASF5
	.byte	0xb
	.uahalf	0x10c
	.uaword	0x19b
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0xd
	.uaword	.LASF6
	.byte	0xb
	.uahalf	0x10d
	.uaword	0x19b
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.string	"XTSEL"
	.byte	0xb
	.uahalf	0x10e
	.uaword	0x19b
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0
	.uleb128 0xe
	.string	"XTLVL"
	.byte	0xb
	.uahalf	0x10f
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xd
	.uaword	.LASF7
	.byte	0xb
	.uahalf	0x110
	.uaword	0x19b
	.byte	0x4
	.byte	0x2
	.byte	0x11
	.byte	0
	.uleb128 0xe
	.string	"XTWC"
	.byte	0xb
	.uahalf	0x111
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.string	"GTSEL"
	.byte	0xb
	.uahalf	0x112
	.uaword	0x19b
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0
	.uleb128 0xe
	.string	"GTLVL"
	.byte	0xb
	.uahalf	0x113
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0xd
	.uaword	.LASF8
	.byte	0xb
	.uahalf	0x114
	.uaword	0x19b
	.byte	0x4
	.byte	0x2
	.byte	0x9
	.byte	0
	.uleb128 0xe
	.string	"GTWC"
	.byte	0xb
	.uahalf	0x115
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.uaword	.LASF4
	.byte	0xb
	.uahalf	0x116
	.uaword	0x19b
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.string	"TMEN"
	.byte	0xb
	.uahalf	0x117
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xd
	.uaword	.LASF17
	.byte	0xb
	.uahalf	0x118
	.uaword	0x19b
	.byte	0x4
	.byte	0x2
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.string	"TMWC"
	.byte	0xb
	.uahalf	0x119
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_ASCTRL_Bits"
	.byte	0xb
	.uahalf	0x11a
	.uaword	0x12d3
	.uleb128 0x10
	.string	"_Ifx_VADC_G_ASMR_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x11d
	.uaword	0x14ea
	.uleb128 0xe
	.string	"ENGT"
	.byte	0xb
	.uahalf	0x11f
	.uaword	0x19b
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.string	"ENTR"
	.byte	0xb
	.uahalf	0x120
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.string	"ENSI"
	.byte	0xb
	.uahalf	0x121
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.string	"SCAN"
	.byte	0xb
	.uahalf	0x122
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xe
	.string	"LDM"
	.byte	0xb
	.uahalf	0x123
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xd
	.uaword	.LASF9
	.byte	0xb
	.uahalf	0x124
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xe
	.string	"REQGT"
	.byte	0xb
	.uahalf	0x125
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.string	"CLRPND"
	.byte	0xb
	.uahalf	0x126
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xe
	.string	"LDEV"
	.byte	0xb
	.uahalf	0x127
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xd
	.uaword	.LASF10
	.byte	0xb
	.uahalf	0x128
	.uaword	0x19b
	.byte	0x4
	.byte	0x6
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.uaword	.LASF11
	.byte	0xb
	.uahalf	0x129
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xd
	.uaword	.LASF12
	.byte	0xb
	.uahalf	0x12a
	.uaword	0x19b
	.byte	0x4
	.byte	0xf
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_ASMR_Bits"
	.byte	0xb
	.uahalf	0x12b
	.uaword	0x1400
	.uleb128 0x10
	.string	"_Ifx_VADC_G_ASPND_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x12e
	.uaword	0x153a
	.uleb128 0xe
	.string	"CHPND"
	.byte	0xb
	.uahalf	0x130
	.uaword	0x19b
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_ASPND_Bits"
	.byte	0xb
	.uahalf	0x131
	.uaword	0x1507
	.uleb128 0x10
	.string	"_Ifx_VADC_G_ASSEL_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x134
	.uaword	0x158b
	.uleb128 0xe
	.string	"CHSEL"
	.byte	0xb
	.uahalf	0x136
	.uaword	0x19b
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_ASSEL_Bits"
	.byte	0xb
	.uahalf	0x137
	.uaword	0x1558
	.uleb128 0x10
	.string	"_Ifx_VADC_G_BFL_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x13a
	.uaword	0x16c4
	.uleb128 0xe
	.string	"BFL0"
	.byte	0xb
	.uahalf	0x13c
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.string	"BFL1"
	.byte	0xb
	.uahalf	0x13d
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.string	"BFL2"
	.byte	0xb
	.uahalf	0x13e
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.string	"BFL3"
	.byte	0xb
	.uahalf	0x13f
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xd
	.uaword	.LASF6
	.byte	0xb
	.uahalf	0x140
	.uaword	0x19b
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.string	"BFA0"
	.byte	0xb
	.uahalf	0x141
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xe
	.string	"BFA1"
	.byte	0xb
	.uahalf	0x142
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xe
	.string	"BFA2"
	.byte	0xb
	.uahalf	0x143
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xe
	.string	"BFA3"
	.byte	0xb
	.uahalf	0x144
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xd
	.uaword	.LASF15
	.byte	0xb
	.uahalf	0x145
	.uaword	0x19b
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.string	"BFI0"
	.byte	0xb
	.uahalf	0x146
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xe
	.string	"BFI1"
	.byte	0xb
	.uahalf	0x147
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xe
	.string	"BFI2"
	.byte	0xb
	.uahalf	0x148
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xe
	.string	"BFI3"
	.byte	0xb
	.uahalf	0x149
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xd
	.uaword	.LASF18
	.byte	0xb
	.uahalf	0x14a
	.uaword	0x19b
	.byte	0x4
	.byte	0xc
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_BFL_Bits"
	.byte	0xb
	.uahalf	0x14b
	.uaword	0x15a9
	.uleb128 0x10
	.string	"_Ifx_VADC_G_BFLC_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x14e
	.uaword	0x1754
	.uleb128 0xe
	.string	"BFM0"
	.byte	0xb
	.uahalf	0x150
	.uaword	0x19b
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.string	"BFM1"
	.byte	0xb
	.uahalf	0x151
	.uaword	0x19b
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.string	"BFM2"
	.byte	0xb
	.uahalf	0x152
	.uaword	0x19b
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0
	.uleb128 0xe
	.string	"BFM3"
	.byte	0xb
	.uahalf	0x153
	.uaword	0x19b
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.uaword	.LASF19
	.byte	0xb
	.uahalf	0x154
	.uaword	0x19b
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_BFLC_Bits"
	.byte	0xb
	.uahalf	0x155
	.uaword	0x16e0
	.uleb128 0x10
	.string	"_Ifx_VADC_G_BFLNP_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x158
	.uaword	0x17ee
	.uleb128 0xe
	.string	"BFL0NP"
	.byte	0xb
	.uahalf	0x15a
	.uaword	0x19b
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.string	"BFL1NP"
	.byte	0xb
	.uahalf	0x15b
	.uaword	0x19b
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.string	"BFL2NP"
	.byte	0xb
	.uahalf	0x15c
	.uaword	0x19b
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0
	.uleb128 0xe
	.string	"BFL3NP"
	.byte	0xb
	.uahalf	0x15d
	.uaword	0x19b
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.uaword	.LASF19
	.byte	0xb
	.uahalf	0x15e
	.uaword	0x19b
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_BFLNP_Bits"
	.byte	0xb
	.uahalf	0x15f
	.uaword	0x1771
	.uleb128 0x10
	.string	"_Ifx_VADC_G_BFLS_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x162
	.uaword	0x18d4
	.uleb128 0xe
	.string	"BFC0"
	.byte	0xb
	.uahalf	0x164
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.string	"BFC1"
	.byte	0xb
	.uahalf	0x165
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.string	"BFC2"
	.byte	0xb
	.uahalf	0x166
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.string	"BFC3"
	.byte	0xb
	.uahalf	0x167
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xd
	.uaword	.LASF6
	.byte	0xb
	.uahalf	0x168
	.uaword	0x19b
	.byte	0x4
	.byte	0xc
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.string	"BFS0"
	.byte	0xb
	.uahalf	0x169
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xe
	.string	"BFS1"
	.byte	0xb
	.uahalf	0x16a
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xe
	.string	"BFS2"
	.byte	0xb
	.uahalf	0x16b
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xe
	.string	"BFS3"
	.byte	0xb
	.uahalf	0x16c
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xd
	.uaword	.LASF18
	.byte	0xb
	.uahalf	0x16d
	.uaword	0x19b
	.byte	0x4
	.byte	0xc
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_BFLS_Bits"
	.byte	0xb
	.uahalf	0x16e
	.uaword	0x180c
	.uleb128 0x10
	.string	"_Ifx_VADC_G_BOUND_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x171
	.uaword	0x1952
	.uleb128 0xd
	.uaword	.LASF20
	.byte	0xb
	.uahalf	0x173
	.uaword	0x19b
	.byte	0x4
	.byte	0xc
	.byte	0x14
	.byte	0
	.uleb128 0xd
	.uaword	.LASF15
	.byte	0xb
	.uahalf	0x174
	.uaword	0x19b
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.uaword	.LASF21
	.byte	0xb
	.uahalf	0x175
	.uaword	0x19b
	.byte	0x4
	.byte	0xc
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.uaword	.LASF22
	.byte	0xb
	.uahalf	0x176
	.uaword	0x19b
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_BOUND_Bits"
	.byte	0xb
	.uahalf	0x177
	.uaword	0x18f1
	.uleb128 0x10
	.string	"_Ifx_VADC_G_CEFCLR_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x17a
	.uaword	0x1a2a
	.uleb128 0xe
	.string	"CEV0"
	.byte	0xb
	.uahalf	0x17c
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.string	"CEV1"
	.byte	0xb
	.uahalf	0x17d
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.string	"CEV2"
	.byte	0xb
	.uahalf	0x17e
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.string	"CEV3"
	.byte	0xb
	.uahalf	0x17f
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.string	"CEV4"
	.byte	0xb
	.uahalf	0x180
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xe
	.string	"CEV5"
	.byte	0xb
	.uahalf	0x181
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xe
	.string	"CEV6"
	.byte	0xb
	.uahalf	0x182
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xe
	.string	"CEV7"
	.byte	0xb
	.uahalf	0x183
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.uaword	.LASF0
	.byte	0xb
	.uahalf	0x184
	.uaword	0x19b
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_CEFCLR_Bits"
	.byte	0xb
	.uahalf	0x185
	.uaword	0x1970
	.uleb128 0x10
	.string	"_Ifx_VADC_G_CEFLAG_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x188
	.uaword	0x1b03
	.uleb128 0xe
	.string	"CEV0"
	.byte	0xb
	.uahalf	0x18a
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.string	"CEV1"
	.byte	0xb
	.uahalf	0x18b
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.string	"CEV2"
	.byte	0xb
	.uahalf	0x18c
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.string	"CEV3"
	.byte	0xb
	.uahalf	0x18d
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.string	"CEV4"
	.byte	0xb
	.uahalf	0x18e
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xe
	.string	"CEV5"
	.byte	0xb
	.uahalf	0x18f
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xe
	.string	"CEV6"
	.byte	0xb
	.uahalf	0x190
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xe
	.string	"CEV7"
	.byte	0xb
	.uahalf	0x191
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.uaword	.LASF0
	.byte	0xb
	.uahalf	0x192
	.uaword	0x19b
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_CEFLAG_Bits"
	.byte	0xb
	.uahalf	0x193
	.uaword	0x1a49
	.uleb128 0x10
	.string	"_Ifx_VADC_G_CEVNP0_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x196
	.uaword	0x1bdc
	.uleb128 0xe
	.string	"CEV0NP"
	.byte	0xb
	.uahalf	0x198
	.uaword	0x19b
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.string	"CEV1NP"
	.byte	0xb
	.uahalf	0x199
	.uaword	0x19b
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.string	"CEV2NP"
	.byte	0xb
	.uahalf	0x19a
	.uaword	0x19b
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0
	.uleb128 0xe
	.string	"CEV3NP"
	.byte	0xb
	.uahalf	0x19b
	.uaword	0x19b
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.string	"CEV4NP"
	.byte	0xb
	.uahalf	0x19c
	.uaword	0x19b
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0
	.uleb128 0xe
	.string	"CEV5NP"
	.byte	0xb
	.uahalf	0x19d
	.uaword	0x19b
	.byte	0x4
	.byte	0x4
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.string	"CEV6NP"
	.byte	0xb
	.uahalf	0x19e
	.uaword	0x19b
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.string	"CEV7NP"
	.byte	0xb
	.uahalf	0x19f
	.uaword	0x19b
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_CEVNP0_Bits"
	.byte	0xb
	.uahalf	0x1a0
	.uaword	0x1b22
	.uleb128 0x10
	.string	"_Ifx_VADC_G_CHASS_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x1a3
	.uaword	0x1e92
	.uleb128 0xe
	.string	"ASSCH0"
	.byte	0xb
	.uahalf	0x1a5
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.string	"ASSCH1"
	.byte	0xb
	.uahalf	0x1a6
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.string	"ASSCH2"
	.byte	0xb
	.uahalf	0x1a7
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.string	"ASSCH3"
	.byte	0xb
	.uahalf	0x1a8
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.string	"ASSCH4"
	.byte	0xb
	.uahalf	0x1a9
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xe
	.string	"ASSCH5"
	.byte	0xb
	.uahalf	0x1aa
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xe
	.string	"ASSCH6"
	.byte	0xb
	.uahalf	0x1ab
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xe
	.string	"ASSCH7"
	.byte	0xb
	.uahalf	0x1ac
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.string	"ASSCH8"
	.byte	0xb
	.uahalf	0x1ad
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xe
	.string	"ASSCH9"
	.byte	0xb
	.uahalf	0x1ae
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xe
	.string	"ASSCH10"
	.byte	0xb
	.uahalf	0x1af
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xe
	.string	"ASSCH11"
	.byte	0xb
	.uahalf	0x1b0
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xe
	.string	"ASSCH12"
	.byte	0xb
	.uahalf	0x1b1
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xe
	.string	"ASSCH13"
	.byte	0xb
	.uahalf	0x1b2
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xe
	.string	"ASSCH14"
	.byte	0xb
	.uahalf	0x1b3
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xe
	.string	"ASSCH15"
	.byte	0xb
	.uahalf	0x1b4
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.string	"ASSCH16"
	.byte	0xb
	.uahalf	0x1b5
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xe
	.string	"ASSCH17"
	.byte	0xb
	.uahalf	0x1b6
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xe
	.string	"ASSCH18"
	.byte	0xb
	.uahalf	0x1b7
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xe
	.string	"ASSCH19"
	.byte	0xb
	.uahalf	0x1b8
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xe
	.string	"ASSCH20"
	.byte	0xb
	.uahalf	0x1b9
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0xe
	.string	"ASSCH21"
	.byte	0xb
	.uahalf	0x1ba
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0xe
	.string	"ASSCH22"
	.byte	0xb
	.uahalf	0x1bb
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0xe
	.string	"ASSCH23"
	.byte	0xb
	.uahalf	0x1bc
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.string	"ASSCH24"
	.byte	0xb
	.uahalf	0x1bd
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xe
	.string	"ASSCH25"
	.byte	0xb
	.uahalf	0x1be
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xe
	.string	"ASSCH26"
	.byte	0xb
	.uahalf	0x1bf
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xe
	.string	"ASSCH27"
	.byte	0xb
	.uahalf	0x1c0
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.string	"ASSCH28"
	.byte	0xb
	.uahalf	0x1c1
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xe
	.string	"ASSCH29"
	.byte	0xb
	.uahalf	0x1c2
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xe
	.string	"ASSCH30"
	.byte	0xb
	.uahalf	0x1c3
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.string	"ASSCH31"
	.byte	0xb
	.uahalf	0x1c4
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_CHASS_Bits"
	.byte	0xb
	.uahalf	0x1c5
	.uaword	0x1bfb
	.uleb128 0x10
	.string	"_Ifx_VADC_G_EMUXCTR_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x1c8
	.uaword	0x1f8d
	.uleb128 0xe
	.string	"EMUXSET"
	.byte	0xb
	.uahalf	0x1ca
	.uaword	0x19b
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0xd
	.uaword	.LASF23
	.byte	0xb
	.uahalf	0x1cb
	.uaword	0x19b
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.string	"EMUXACT"
	.byte	0xb
	.uahalf	0x1cc
	.uaword	0x19b
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0xd
	.uaword	.LASF24
	.byte	0xb
	.uahalf	0x1cd
	.uaword	0x19b
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.string	"EMUXCH"
	.byte	0xb
	.uahalf	0x1ce
	.uaword	0x19b
	.byte	0x4
	.byte	0xa
	.byte	0x6
	.byte	0
	.uleb128 0xe
	.string	"EMUXMODE"
	.byte	0xb
	.uahalf	0x1cf
	.uaword	0x19b
	.byte	0x4
	.byte	0x2
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.string	"EMXCOD"
	.byte	0xb
	.uahalf	0x1d0
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xe
	.string	"EMXST"
	.byte	0xb
	.uahalf	0x1d1
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xe
	.string	"EMXCSS"
	.byte	0xb
	.uahalf	0x1d2
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.string	"EMXWC"
	.byte	0xb
	.uahalf	0x1d3
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_EMUXCTR_Bits"
	.byte	0xb
	.uahalf	0x1d4
	.uaword	0x1eb0
	.uleb128 0x10
	.string	"_Ifx_VADC_G_Q0R0_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x1d7
	.uaword	0x202c
	.uleb128 0xd
	.uaword	.LASF25
	.byte	0xb
	.uahalf	0x1d9
	.uaword	0x19b
	.byte	0x4
	.byte	0x5
	.byte	0x1b
	.byte	0
	.uleb128 0xe
	.string	"RF"
	.byte	0xb
	.uahalf	0x1da
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xe
	.string	"ENSI"
	.byte	0xb
	.uahalf	0x1db
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xe
	.string	"EXTR"
	.byte	0xb
	.uahalf	0x1dc
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.string	"V"
	.byte	0xb
	.uahalf	0x1dd
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xd
	.uaword	.LASF26
	.byte	0xb
	.uahalf	0x1de
	.uaword	0x19b
	.byte	0x4
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_Q0R0_Bits"
	.byte	0xb
	.uahalf	0x1df
	.uaword	0x1fad
	.uleb128 0x10
	.string	"_Ifx_VADC_G_QBUR0_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x1e2
	.uaword	0x20c9
	.uleb128 0xd
	.uaword	.LASF25
	.byte	0xb
	.uahalf	0x1e4
	.uaword	0x19b
	.byte	0x4
	.byte	0x5
	.byte	0x1b
	.byte	0
	.uleb128 0xe
	.string	"RF"
	.byte	0xb
	.uahalf	0x1e5
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xe
	.string	"ENSI"
	.byte	0xb
	.uahalf	0x1e6
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xe
	.string	"EXTR"
	.byte	0xb
	.uahalf	0x1e7
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.string	"V"
	.byte	0xb
	.uahalf	0x1e8
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xd
	.uaword	.LASF26
	.byte	0xb
	.uahalf	0x1e9
	.uaword	0x19b
	.byte	0x4
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_QBUR0_Bits"
	.byte	0xb
	.uahalf	0x1ea
	.uaword	0x2049
	.uleb128 0x10
	.string	"_Ifx_VADC_G_QCTRL0_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x1ed
	.uaword	0x21f5
	.uleb128 0xd
	.uaword	.LASF5
	.byte	0xb
	.uahalf	0x1ef
	.uaword	0x19b
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0xd
	.uaword	.LASF6
	.byte	0xb
	.uahalf	0x1f0
	.uaword	0x19b
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.string	"XTSEL"
	.byte	0xb
	.uahalf	0x1f1
	.uaword	0x19b
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0
	.uleb128 0xe
	.string	"XTLVL"
	.byte	0xb
	.uahalf	0x1f2
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xd
	.uaword	.LASF7
	.byte	0xb
	.uahalf	0x1f3
	.uaword	0x19b
	.byte	0x4
	.byte	0x2
	.byte	0x11
	.byte	0
	.uleb128 0xe
	.string	"XTWC"
	.byte	0xb
	.uahalf	0x1f4
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.string	"GTSEL"
	.byte	0xb
	.uahalf	0x1f5
	.uaword	0x19b
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0
	.uleb128 0xe
	.string	"GTLVL"
	.byte	0xb
	.uahalf	0x1f6
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0xd
	.uaword	.LASF8
	.byte	0xb
	.uahalf	0x1f7
	.uaword	0x19b
	.byte	0x4
	.byte	0x2
	.byte	0x9
	.byte	0
	.uleb128 0xe
	.string	"GTWC"
	.byte	0xb
	.uahalf	0x1f8
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.uaword	.LASF4
	.byte	0xb
	.uahalf	0x1f9
	.uaword	0x19b
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.string	"TMEN"
	.byte	0xb
	.uahalf	0x1fa
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xd
	.uaword	.LASF17
	.byte	0xb
	.uahalf	0x1fb
	.uaword	0x19b
	.byte	0x4
	.byte	0x2
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.string	"TMWC"
	.byte	0xb
	.uahalf	0x1fc
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_QCTRL0_Bits"
	.byte	0xb
	.uahalf	0x1fd
	.uaword	0x20e7
	.uleb128 0x10
	.string	"_Ifx_VADC_G_QINR0_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x200
	.uaword	0x2286
	.uleb128 0xd
	.uaword	.LASF25
	.byte	0xb
	.uahalf	0x202
	.uaword	0x19b
	.byte	0x4
	.byte	0x5
	.byte	0x1b
	.byte	0
	.uleb128 0xe
	.string	"RF"
	.byte	0xb
	.uahalf	0x203
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xe
	.string	"ENSI"
	.byte	0xb
	.uahalf	0x204
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xe
	.string	"EXTR"
	.byte	0xb
	.uahalf	0x205
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.uaword	.LASF0
	.byte	0xb
	.uahalf	0x206
	.uaword	0x19b
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_QINR0_Bits"
	.byte	0xb
	.uahalf	0x207
	.uaword	0x2214
	.uleb128 0x10
	.string	"_Ifx_VADC_G_QMR0_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x20a
	.uaword	0x236a
	.uleb128 0xe
	.string	"ENGT"
	.byte	0xb
	.uahalf	0x20c
	.uaword	0x19b
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.string	"ENTR"
	.byte	0xb
	.uahalf	0x20d
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xd
	.uaword	.LASF23
	.byte	0xb
	.uahalf	0x20e
	.uaword	0x19b
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.string	"CLRV"
	.byte	0xb
	.uahalf	0x20f
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xe
	.string	"TREV"
	.byte	0xb
	.uahalf	0x210
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xe
	.string	"FLUSH"
	.byte	0xb
	.uahalf	0x211
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xe
	.string	"CEV"
	.byte	0xb
	.uahalf	0x212
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xd
	.uaword	.LASF15
	.byte	0xb
	.uahalf	0x213
	.uaword	0x19b
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.uaword	.LASF11
	.byte	0xb
	.uahalf	0x214
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xd
	.uaword	.LASF12
	.byte	0xb
	.uahalf	0x215
	.uaword	0x19b
	.byte	0x4
	.byte	0xf
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_QMR0_Bits"
	.byte	0xb
	.uahalf	0x216
	.uaword	0x22a4
	.uleb128 0x10
	.string	"_Ifx_VADC_G_QSR0_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x219
	.uaword	0x241b
	.uleb128 0xe
	.string	"FILL"
	.byte	0xb
	.uahalf	0x21b
	.uaword	0x19b
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0xd
	.uaword	.LASF6
	.byte	0xb
	.uahalf	0x21c
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xe
	.string	"EMPTY"
	.byte	0xb
	.uahalf	0x21d
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xd
	.uaword	.LASF9
	.byte	0xb
	.uahalf	0x21e
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xe
	.string	"REQGT"
	.byte	0xb
	.uahalf	0x21f
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.string	"EV"
	.byte	0xb
	.uahalf	0x220
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xd
	.uaword	.LASF26
	.byte	0xb
	.uahalf	0x221
	.uaword	0x19b
	.byte	0x4
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_QSR0_Bits"
	.byte	0xb
	.uahalf	0x222
	.uaword	0x2387
	.uleb128 0x10
	.string	"_Ifx_VADC_G_REFCLR_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x225
	.uaword	0x2580
	.uleb128 0xe
	.string	"REV0"
	.byte	0xb
	.uahalf	0x227
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.string	"REV1"
	.byte	0xb
	.uahalf	0x228
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.string	"REV2"
	.byte	0xb
	.uahalf	0x229
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.string	"REV3"
	.byte	0xb
	.uahalf	0x22a
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.string	"REV4"
	.byte	0xb
	.uahalf	0x22b
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xe
	.string	"REV5"
	.byte	0xb
	.uahalf	0x22c
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xe
	.string	"REV6"
	.byte	0xb
	.uahalf	0x22d
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xe
	.string	"REV7"
	.byte	0xb
	.uahalf	0x22e
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.string	"REV8"
	.byte	0xb
	.uahalf	0x22f
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xe
	.string	"REV9"
	.byte	0xb
	.uahalf	0x230
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xe
	.string	"REV10"
	.byte	0xb
	.uahalf	0x231
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xe
	.string	"REV11"
	.byte	0xb
	.uahalf	0x232
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xe
	.string	"REV12"
	.byte	0xb
	.uahalf	0x233
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xe
	.string	"REV13"
	.byte	0xb
	.uahalf	0x234
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xe
	.string	"REV14"
	.byte	0xb
	.uahalf	0x235
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xe
	.string	"REV15"
	.byte	0xb
	.uahalf	0x236
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.uaword	.LASF19
	.byte	0xb
	.uahalf	0x237
	.uaword	0x19b
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_REFCLR_Bits"
	.byte	0xb
	.uahalf	0x238
	.uaword	0x2438
	.uleb128 0x10
	.string	"_Ifx_VADC_G_REFLAG_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x23b
	.uaword	0x26e7
	.uleb128 0xe
	.string	"REV0"
	.byte	0xb
	.uahalf	0x23d
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.string	"REV1"
	.byte	0xb
	.uahalf	0x23e
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.string	"REV2"
	.byte	0xb
	.uahalf	0x23f
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.string	"REV3"
	.byte	0xb
	.uahalf	0x240
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.string	"REV4"
	.byte	0xb
	.uahalf	0x241
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xe
	.string	"REV5"
	.byte	0xb
	.uahalf	0x242
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xe
	.string	"REV6"
	.byte	0xb
	.uahalf	0x243
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xe
	.string	"REV7"
	.byte	0xb
	.uahalf	0x244
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.string	"REV8"
	.byte	0xb
	.uahalf	0x245
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xe
	.string	"REV9"
	.byte	0xb
	.uahalf	0x246
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xe
	.string	"REV10"
	.byte	0xb
	.uahalf	0x247
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xe
	.string	"REV11"
	.byte	0xb
	.uahalf	0x248
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xe
	.string	"REV12"
	.byte	0xb
	.uahalf	0x249
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xe
	.string	"REV13"
	.byte	0xb
	.uahalf	0x24a
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xe
	.string	"REV14"
	.byte	0xb
	.uahalf	0x24b
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xe
	.string	"REV15"
	.byte	0xb
	.uahalf	0x24c
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.uaword	.LASF19
	.byte	0xb
	.uahalf	0x24d
	.uaword	0x19b
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_REFLAG_Bits"
	.byte	0xb
	.uahalf	0x24e
	.uaword	0x259f
	.uleb128 0x10
	.string	"_Ifx_VADC_G_REVNP0_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x251
	.uaword	0x27c0
	.uleb128 0xe
	.string	"REV0NP"
	.byte	0xb
	.uahalf	0x253
	.uaword	0x19b
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.string	"REV1NP"
	.byte	0xb
	.uahalf	0x254
	.uaword	0x19b
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.string	"REV2NP"
	.byte	0xb
	.uahalf	0x255
	.uaword	0x19b
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0
	.uleb128 0xe
	.string	"REV3NP"
	.byte	0xb
	.uahalf	0x256
	.uaword	0x19b
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.string	"REV4NP"
	.byte	0xb
	.uahalf	0x257
	.uaword	0x19b
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0
	.uleb128 0xe
	.string	"REV5NP"
	.byte	0xb
	.uahalf	0x258
	.uaword	0x19b
	.byte	0x4
	.byte	0x4
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.string	"REV6NP"
	.byte	0xb
	.uahalf	0x259
	.uaword	0x19b
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.string	"REV7NP"
	.byte	0xb
	.uahalf	0x25a
	.uaword	0x19b
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_REVNP0_Bits"
	.byte	0xb
	.uahalf	0x25b
	.uaword	0x2706
	.uleb128 0x10
	.string	"_Ifx_VADC_G_REVNP1_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x25e
	.uaword	0x289f
	.uleb128 0xe
	.string	"REV8NP"
	.byte	0xb
	.uahalf	0x260
	.uaword	0x19b
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.string	"REV9NP"
	.byte	0xb
	.uahalf	0x261
	.uaword	0x19b
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.string	"REV10NP"
	.byte	0xb
	.uahalf	0x262
	.uaword	0x19b
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0
	.uleb128 0xe
	.string	"REV11NP"
	.byte	0xb
	.uahalf	0x263
	.uaword	0x19b
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.string	"REV12NP"
	.byte	0xb
	.uahalf	0x264
	.uaword	0x19b
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0
	.uleb128 0xe
	.string	"REV13NP"
	.byte	0xb
	.uahalf	0x265
	.uaword	0x19b
	.byte	0x4
	.byte	0x4
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.string	"REV14NP"
	.byte	0xb
	.uahalf	0x266
	.uaword	0x19b
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.string	"REV15NP"
	.byte	0xb
	.uahalf	0x267
	.uaword	0x19b
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_REVNP1_Bits"
	.byte	0xb
	.uahalf	0x268
	.uaword	0x27df
	.uleb128 0x10
	.string	"_Ifx_VADC_G_RRASS_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x26b
	.uaword	0x2a25
	.uleb128 0xe
	.string	"ASSRR0"
	.byte	0xb
	.uahalf	0x26d
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.string	"ASSRR1"
	.byte	0xb
	.uahalf	0x26e
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.string	"ASSRR2"
	.byte	0xb
	.uahalf	0x26f
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.string	"ASSRR3"
	.byte	0xb
	.uahalf	0x270
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.string	"ASSRR4"
	.byte	0xb
	.uahalf	0x271
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xe
	.string	"ASSRR5"
	.byte	0xb
	.uahalf	0x272
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xe
	.string	"ASSRR6"
	.byte	0xb
	.uahalf	0x273
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xe
	.string	"ASSRR7"
	.byte	0xb
	.uahalf	0x274
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.string	"ASSRR8"
	.byte	0xb
	.uahalf	0x275
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xe
	.string	"ASSRR9"
	.byte	0xb
	.uahalf	0x276
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xe
	.string	"ASSRR10"
	.byte	0xb
	.uahalf	0x277
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xe
	.string	"ASSRR11"
	.byte	0xb
	.uahalf	0x278
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xe
	.string	"ASSRR12"
	.byte	0xb
	.uahalf	0x279
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xe
	.string	"ASSRR13"
	.byte	0xb
	.uahalf	0x27a
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xe
	.string	"ASSRR14"
	.byte	0xb
	.uahalf	0x27b
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xe
	.string	"ASSRR15"
	.byte	0xb
	.uahalf	0x27c
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.uaword	.LASF19
	.byte	0xb
	.uahalf	0x27d
	.uaword	0x19b
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_RRASS_Bits"
	.byte	0xb
	.uahalf	0x27e
	.uaword	0x28be
	.uleb128 0x10
	.string	"_Ifx_VADC_G_SEFCLR_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x281
	.uaword	0x2a97
	.uleb128 0xe
	.string	"SEV0"
	.byte	0xb
	.uahalf	0x283
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.string	"SEV1"
	.byte	0xb
	.uahalf	0x284
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xd
	.uaword	.LASF13
	.byte	0xb
	.uahalf	0x285
	.uaword	0x19b
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_SEFCLR_Bits"
	.byte	0xb
	.uahalf	0x286
	.uaword	0x2a43
	.uleb128 0x10
	.string	"_Ifx_VADC_G_SEFLAG_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x289
	.uaword	0x2b0a
	.uleb128 0xe
	.string	"SEV0"
	.byte	0xb
	.uahalf	0x28b
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.string	"SEV1"
	.byte	0xb
	.uahalf	0x28c
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xd
	.uaword	.LASF13
	.byte	0xb
	.uahalf	0x28d
	.uaword	0x19b
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_SEFLAG_Bits"
	.byte	0xb
	.uahalf	0x28e
	.uaword	0x2ab6
	.uleb128 0x10
	.string	"_Ifx_VADC_G_SEVNP_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x291
	.uaword	0x2b80
	.uleb128 0xe
	.string	"SEV0NP"
	.byte	0xb
	.uahalf	0x293
	.uaword	0x19b
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.string	"SEV1NP"
	.byte	0xb
	.uahalf	0x294
	.uaword	0x19b
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.uaword	.LASF0
	.byte	0xb
	.uahalf	0x295
	.uaword	0x19b
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_SEVNP_Bits"
	.byte	0xb
	.uahalf	0x296
	.uaword	0x2b29
	.uleb128 0x10
	.string	"_Ifx_VADC_G_SRACT_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x299
	.uaword	0x2c6f
	.uleb128 0xe
	.string	"AGSR0"
	.byte	0xb
	.uahalf	0x29b
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.string	"AGSR1"
	.byte	0xb
	.uahalf	0x29c
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.string	"AGSR2"
	.byte	0xb
	.uahalf	0x29d
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.string	"AGSR3"
	.byte	0xb
	.uahalf	0x29e
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xd
	.uaword	.LASF6
	.byte	0xb
	.uahalf	0x29f
	.uaword	0x19b
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.string	"ASSR0"
	.byte	0xb
	.uahalf	0x2a0
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xe
	.string	"ASSR1"
	.byte	0xb
	.uahalf	0x2a1
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xe
	.string	"ASSR2"
	.byte	0xb
	.uahalf	0x2a2
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xe
	.string	"ASSR3"
	.byte	0xb
	.uahalf	0x2a3
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xd
	.uaword	.LASF15
	.byte	0xb
	.uahalf	0x2a4
	.uaword	0x19b
	.byte	0x4
	.byte	0x14
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_SRACT_Bits"
	.byte	0xb
	.uahalf	0x2a5
	.uaword	0x2b9e
	.uleb128 0x10
	.string	"_Ifx_VADC_G_SYNCTR_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x2a8
	.uaword	0x2d1a
	.uleb128 0xe
	.string	"STSEL"
	.byte	0xb
	.uahalf	0x2aa
	.uaword	0x19b
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0
	.uleb128 0xd
	.uaword	.LASF13
	.byte	0xb
	.uahalf	0x2ab
	.uaword	0x19b
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.string	"EVALR1"
	.byte	0xb
	.uahalf	0x2ac
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xe
	.string	"EVALR2"
	.byte	0xb
	.uahalf	0x2ad
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xe
	.string	"EVALR3"
	.byte	0xb
	.uahalf	0x2ae
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xd
	.uaword	.LASF27
	.byte	0xb
	.uahalf	0x2af
	.uaword	0x19b
	.byte	0x4
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_SYNCTR_Bits"
	.byte	0xb
	.uahalf	0x2b0
	.uaword	0x2c8d
	.uleb128 0x10
	.string	"_Ifx_VADC_G_VFR_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x2b3
	.uaword	0x2e6e
	.uleb128 0xe
	.string	"VF0"
	.byte	0xb
	.uahalf	0x2b5
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.string	"VF1"
	.byte	0xb
	.uahalf	0x2b6
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.string	"VF2"
	.byte	0xb
	.uahalf	0x2b7
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.string	"VF3"
	.byte	0xb
	.uahalf	0x2b8
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.string	"VF4"
	.byte	0xb
	.uahalf	0x2b9
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xe
	.string	"VF5"
	.byte	0xb
	.uahalf	0x2ba
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xe
	.string	"VF6"
	.byte	0xb
	.uahalf	0x2bb
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xe
	.string	"VF7"
	.byte	0xb
	.uahalf	0x2bc
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.string	"VF8"
	.byte	0xb
	.uahalf	0x2bd
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xe
	.string	"VF9"
	.byte	0xb
	.uahalf	0x2be
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xe
	.string	"VF10"
	.byte	0xb
	.uahalf	0x2bf
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xe
	.string	"VF11"
	.byte	0xb
	.uahalf	0x2c0
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xe
	.string	"VF12"
	.byte	0xb
	.uahalf	0x2c1
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xe
	.string	"VF13"
	.byte	0xb
	.uahalf	0x2c2
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xe
	.string	"VF14"
	.byte	0xb
	.uahalf	0x2c3
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xe
	.string	"VF15"
	.byte	0xb
	.uahalf	0x2c4
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.uaword	.LASF19
	.byte	0xb
	.uahalf	0x2c5
	.uaword	0x19b
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_VFR_Bits"
	.byte	0xb
	.uahalf	0x2c6
	.uaword	0x2d39
	.uleb128 0x10
	.string	"_Ifx_VADC_GLOBBOUND_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x2c9
	.uaword	0x2eed
	.uleb128 0xd
	.uaword	.LASF20
	.byte	0xb
	.uahalf	0x2cb
	.uaword	0x19b
	.byte	0x4
	.byte	0xc
	.byte	0x14
	.byte	0
	.uleb128 0xd
	.uaword	.LASF15
	.byte	0xb
	.uahalf	0x2cc
	.uaword	0x19b
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.uaword	.LASF21
	.byte	0xb
	.uahalf	0x2cd
	.uaword	0x19b
	.byte	0x4
	.byte	0xc
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.uaword	.LASF22
	.byte	0xb
	.uahalf	0x2ce
	.uaword	0x19b
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_GLOBBOUND_Bits"
	.byte	0xb
	.uahalf	0x2cf
	.uaword	0x2e8a
	.uleb128 0x10
	.string	"_Ifx_VADC_GLOBCFG_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x2d2
	.uaword	0x304e
	.uleb128 0xe
	.string	"DIVA"
	.byte	0xb
	.uahalf	0x2d4
	.uaword	0x19b
	.byte	0x4
	.byte	0x5
	.byte	0x1b
	.byte	0
	.uleb128 0xd
	.uaword	.LASF14
	.byte	0xb
	.uahalf	0x2d5
	.uaword	0x19b
	.byte	0x4
	.byte	0x2
	.byte	0x19
	.byte	0
	.uleb128 0xe
	.string	"DCMSB"
	.byte	0xb
	.uahalf	0x2d6
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.string	"DIVD"
	.byte	0xb
	.uahalf	0x2d7
	.uaword	0x19b
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0
	.uleb128 0xd
	.uaword	.LASF10
	.byte	0xb
	.uahalf	0x2d8
	.uaword	0x19b
	.byte	0x4
	.byte	0x5
	.byte	0x11
	.byte	0
	.uleb128 0xe
	.string	"DIVWC"
	.byte	0xb
	.uahalf	0x2d9
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.string	"DPCAL0"
	.byte	0xb
	.uahalf	0x2da
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xe
	.string	"DPCAL1"
	.byte	0xb
	.uahalf	0x2db
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xe
	.string	"DPCAL2"
	.byte	0xb
	.uahalf	0x2dc
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xe
	.string	"DPCAL3"
	.byte	0xb
	.uahalf	0x2dd
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xe
	.string	"DPCAL4"
	.byte	0xb
	.uahalf	0x2de
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0xe
	.string	"DPCAL5"
	.byte	0xb
	.uahalf	0x2df
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0xe
	.string	"DPCAL6"
	.byte	0xb
	.uahalf	0x2e0
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0xe
	.string	"DPCAL7"
	.byte	0xb
	.uahalf	0x2e1
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.uaword	.LASF4
	.byte	0xb
	.uahalf	0x2e2
	.uaword	0x19b
	.byte	0x4
	.byte	0x7
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.string	"SUCAL"
	.byte	0xb
	.uahalf	0x2e3
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_GLOBCFG_Bits"
	.byte	0xb
	.uahalf	0x2e4
	.uaword	0x2f0d
	.uleb128 0x10
	.string	"_Ifx_VADC_GLOBEFLAG_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x2e7
	.uaword	0x3121
	.uleb128 0xe
	.string	"SEVGLB"
	.byte	0xb
	.uahalf	0x2e9
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.uaword	.LASF28
	.byte	0xb
	.uahalf	0x2ea
	.uaword	0x19b
	.byte	0x4
	.byte	0x7
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.string	"REVGLB"
	.byte	0xb
	.uahalf	0x2eb
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xd
	.uaword	.LASF26
	.byte	0xb
	.uahalf	0x2ec
	.uaword	0x19b
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.string	"SEVGLBCLR"
	.byte	0xb
	.uahalf	0x2ed
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xd
	.uaword	.LASF12
	.byte	0xb
	.uahalf	0x2ee
	.uaword	0x19b
	.byte	0x4
	.byte	0x7
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.string	"REVGLBCLR"
	.byte	0xb
	.uahalf	0x2ef
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xd
	.uaword	.LASF29
	.byte	0xb
	.uahalf	0x2f0
	.uaword	0x19b
	.byte	0x4
	.byte	0x7
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_GLOBEFLAG_Bits"
	.byte	0xb
	.uahalf	0x2f1
	.uaword	0x306c
	.uleb128 0x10
	.string	"_Ifx_VADC_GLOBEVNP_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x2f4
	.uaword	0x31a9
	.uleb128 0xe
	.string	"SEV0NP"
	.byte	0xb
	.uahalf	0x2f6
	.uaword	0x19b
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0xd
	.uaword	.LASF6
	.byte	0xb
	.uahalf	0x2f7
	.uaword	0x19b
	.byte	0x4
	.byte	0xc
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.string	"REV0NP"
	.byte	0xb
	.uahalf	0x2f8
	.uaword	0x19b
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0
	.uleb128 0xd
	.uaword	.LASF18
	.byte	0xb
	.uahalf	0x2f9
	.uaword	0x19b
	.byte	0x4
	.byte	0xc
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_GLOBEVNP_Bits"
	.byte	0xb
	.uahalf	0x2fa
	.uaword	0x3141
	.uleb128 0x10
	.string	"_Ifx_VADC_GLOBRCR_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x2fd
	.uaword	0x324d
	.uleb128 0xd
	.uaword	.LASF30
	.byte	0xb
	.uahalf	0x2ff
	.uaword	0x19b
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.string	"DRCTR"
	.byte	0xb
	.uahalf	0x300
	.uaword	0x19b
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0
	.uleb128 0xd
	.uaword	.LASF18
	.byte	0xb
	.uahalf	0x301
	.uaword	0x19b
	.byte	0x4
	.byte	0x4
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.string	"WFR"
	.byte	0xb
	.uahalf	0x302
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xd
	.uaword	.LASF29
	.byte	0xb
	.uahalf	0x303
	.uaword	0x19b
	.byte	0x4
	.byte	0x6
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.string	"SRGEN"
	.byte	0xb
	.uahalf	0x304
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_GLOBRCR_Bits"
	.byte	0xb
	.uahalf	0x305
	.uaword	0x31c8
	.uleb128 0x10
	.string	"_Ifx_VADC_GLOBRES_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x308
	.uaword	0x32fd
	.uleb128 0xd
	.uaword	.LASF31
	.byte	0xb
	.uahalf	0x30a
	.uaword	0x19b
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.string	"GNR"
	.byte	0xb
	.uahalf	0x30b
	.uaword	0x19b
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0
	.uleb128 0xe
	.string	"CHNR"
	.byte	0xb
	.uahalf	0x30c
	.uaword	0x19b
	.byte	0x4
	.byte	0x5
	.byte	0x7
	.byte	0
	.uleb128 0xe
	.string	"EMUX"
	.byte	0xb
	.uahalf	0x30d
	.uaword	0x19b
	.byte	0x4
	.byte	0x3
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.string	"CRS"
	.byte	0xb
	.uahalf	0x30e
	.uaword	0x19b
	.byte	0x4
	.byte	0x2
	.byte	0x2
	.byte	0
	.uleb128 0xe
	.string	"FCR"
	.byte	0xb
	.uahalf	0x30f
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.string	"VF"
	.byte	0xb
	.uahalf	0x310
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_GLOBRES_Bits"
	.byte	0xb
	.uahalf	0x311
	.uaword	0x326b
	.uleb128 0x10
	.string	"_Ifx_VADC_GLOBRESD_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x314
	.uaword	0x33ae
	.uleb128 0xd
	.uaword	.LASF31
	.byte	0xb
	.uahalf	0x316
	.uaword	0x19b
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.string	"GNR"
	.byte	0xb
	.uahalf	0x317
	.uaword	0x19b
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0
	.uleb128 0xe
	.string	"CHNR"
	.byte	0xb
	.uahalf	0x318
	.uaword	0x19b
	.byte	0x4
	.byte	0x5
	.byte	0x7
	.byte	0
	.uleb128 0xe
	.string	"EMUX"
	.byte	0xb
	.uahalf	0x319
	.uaword	0x19b
	.byte	0x4
	.byte	0x3
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.string	"CRS"
	.byte	0xb
	.uahalf	0x31a
	.uaword	0x19b
	.byte	0x4
	.byte	0x2
	.byte	0x2
	.byte	0
	.uleb128 0xe
	.string	"FCR"
	.byte	0xb
	.uahalf	0x31b
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.string	"VF"
	.byte	0xb
	.uahalf	0x31c
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_GLOBRESD_Bits"
	.byte	0xb
	.uahalf	0x31d
	.uaword	0x331b
	.uleb128 0x10
	.string	"_Ifx_VADC_GLOBTF_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x320
	.uaword	0x34be
	.uleb128 0xe
	.string	"CDCH"
	.byte	0xb
	.uahalf	0x322
	.uaword	0x19b
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.string	"CDGR"
	.byte	0xb
	.uahalf	0x323
	.uaword	0x19b
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.string	"CDEN"
	.byte	0xb
	.uahalf	0x324
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xe
	.string	"CDSEL"
	.byte	0xb
	.uahalf	0x325
	.uaword	0x19b
	.byte	0x4
	.byte	0x2
	.byte	0x15
	.byte	0
	.uleb128 0xd
	.uaword	.LASF24
	.byte	0xb
	.uahalf	0x326
	.uaword	0x19b
	.byte	0x4
	.byte	0x4
	.byte	0x11
	.byte	0
	.uleb128 0xe
	.string	"CDWC"
	.byte	0xb
	.uahalf	0x327
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.string	"PDD"
	.byte	0xb
	.uahalf	0x328
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xe
	.string	"MDPD"
	.byte	0xb
	.uahalf	0x329
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xe
	.string	"MDPU"
	.byte	0xb
	.uahalf	0x32a
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xe
	.string	"reserved_19"
	.byte	0xb
	.uahalf	0x32b
	.uaword	0x19b
	.byte	0x4
	.byte	0x4
	.byte	0x9
	.byte	0
	.uleb128 0xe
	.string	"MDWC"
	.byte	0xb
	.uahalf	0x32c
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.uaword	.LASF4
	.byte	0xb
	.uahalf	0x32d
	.uaword	0x19b
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_GLOBTF_Bits"
	.byte	0xb
	.uahalf	0x32e
	.uaword	0x33cd
	.uleb128 0x10
	.string	"_Ifx_VADC_ICLASS_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x331
	.uaword	0x357d
	.uleb128 0xe
	.string	"STCS"
	.byte	0xb
	.uahalf	0x333
	.uaword	0x19b
	.byte	0x4
	.byte	0x5
	.byte	0x1b
	.byte	0
	.uleb128 0xd
	.uaword	.LASF14
	.byte	0xb
	.uahalf	0x334
	.uaword	0x19b
	.byte	0x4
	.byte	0x3
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.string	"CMS"
	.byte	0xb
	.uahalf	0x335
	.uaword	0x19b
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0xd
	.uaword	.LASF24
	.byte	0xb
	.uahalf	0x336
	.uaword	0x19b
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.string	"STCE"
	.byte	0xb
	.uahalf	0x337
	.uaword	0x19b
	.byte	0x4
	.byte	0x5
	.byte	0xb
	.byte	0
	.uleb128 0xd
	.uaword	.LASF8
	.byte	0xb
	.uahalf	0x338
	.uaword	0x19b
	.byte	0x4
	.byte	0x3
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.string	"CME"
	.byte	0xb
	.uahalf	0x339
	.uaword	0x19b
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0xd
	.uaword	.LASF16
	.byte	0xb
	.uahalf	0x33a
	.uaword	0x19b
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_ICLASS_Bits"
	.byte	0xb
	.uahalf	0x33b
	.uaword	0x34db
	.uleb128 0x10
	.string	"_Ifx_VADC_ID_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x33e
	.uaword	0x35ea
	.uleb128 0xe
	.string	"MOD_REV"
	.byte	0xb
	.uahalf	0x340
	.uaword	0x19b
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.uaword	.LASF32
	.byte	0xb
	.uahalf	0x341
	.uaword	0x19b
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.uaword	.LASF33
	.byte	0xb
	.uahalf	0x342
	.uaword	0x19b
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_ID_Bits"
	.byte	0xb
	.uahalf	0x343
	.uaword	0x359a
	.uleb128 0x10
	.string	"_Ifx_VADC_KRST0_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x346
	.uaword	0x3656
	.uleb128 0xe
	.string	"RST"
	.byte	0xb
	.uahalf	0x348
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.string	"RSTSTAT"
	.byte	0xb
	.uahalf	0x349
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xd
	.uaword	.LASF13
	.byte	0xb
	.uahalf	0x34a
	.uaword	0x19b
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_KRST0_Bits"
	.byte	0xb
	.uahalf	0x34b
	.uaword	0x3603
	.uleb128 0x10
	.string	"_Ifx_VADC_KRST1_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x34e
	.uaword	0x36b1
	.uleb128 0xe
	.string	"RST"
	.byte	0xb
	.uahalf	0x350
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.uaword	.LASF28
	.byte	0xb
	.uahalf	0x351
	.uaword	0x19b
	.byte	0x4
	.byte	0x1f
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_KRST1_Bits"
	.byte	0xb
	.uahalf	0x352
	.uaword	0x3672
	.uleb128 0x10
	.string	"_Ifx_VADC_KRSTCLR_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x355
	.uaword	0x370e
	.uleb128 0xe
	.string	"CLR"
	.byte	0xb
	.uahalf	0x357
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.uaword	.LASF28
	.byte	0xb
	.uahalf	0x358
	.uaword	0x19b
	.byte	0x4
	.byte	0x1f
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_KRSTCLR_Bits"
	.byte	0xb
	.uahalf	0x359
	.uaword	0x36cd
	.uleb128 0x10
	.string	"_Ifx_VADC_OCS_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x35c
	.uaword	0x37cf
	.uleb128 0xe
	.string	"TGS"
	.byte	0xb
	.uahalf	0x35e
	.uaword	0x19b
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.string	"TGB"
	.byte	0xb
	.uahalf	0x35f
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.string	"TG_P"
	.byte	0xb
	.uahalf	0x360
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xd
	.uaword	.LASF6
	.byte	0xb
	.uahalf	0x361
	.uaword	0x19b
	.byte	0x4
	.byte	0x14
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.string	"SUS"
	.byte	0xb
	.uahalf	0x362
	.uaword	0x19b
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.string	"SUS_P"
	.byte	0xb
	.uahalf	0x363
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xe
	.string	"SUSSTA"
	.byte	0xb
	.uahalf	0x364
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xd
	.uaword	.LASF34
	.byte	0xb
	.uahalf	0x365
	.uaword	0x19b
	.byte	0x4
	.byte	0x2
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_OCS_Bits"
	.byte	0xb
	.uahalf	0x366
	.uaword	0x372c
	.uleb128 0x10
	.string	"_Ifx_VADC_RCR_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x369
	.uaword	0x388a
	.uleb128 0xd
	.uaword	.LASF30
	.byte	0xb
	.uahalf	0x36b
	.uaword	0x19b
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.string	"DRCTR"
	.byte	0xb
	.uahalf	0x36c
	.uaword	0x19b
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0
	.uleb128 0xe
	.string	"DMM"
	.byte	0xb
	.uahalf	0x36d
	.uaword	0x19b
	.byte	0x4
	.byte	0x2
	.byte	0xa
	.byte	0
	.uleb128 0xd
	.uaword	.LASF2
	.byte	0xb
	.uahalf	0x36e
	.uaword	0x19b
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.string	"WFR"
	.byte	0xb
	.uahalf	0x36f
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xe
	.string	"FEN"
	.byte	0xb
	.uahalf	0x370
	.uaword	0x19b
	.byte	0x4
	.byte	0x2
	.byte	0x5
	.byte	0
	.uleb128 0xd
	.uaword	.LASF16
	.byte	0xb
	.uahalf	0x371
	.uaword	0x19b
	.byte	0x4
	.byte	0x4
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.string	"SRGEN"
	.byte	0xb
	.uahalf	0x372
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_RCR_Bits"
	.byte	0xb
	.uahalf	0x373
	.uaword	0x37e9
	.uleb128 0x10
	.string	"_Ifx_VADC_RES_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x376
	.uaword	0x3932
	.uleb128 0xd
	.uaword	.LASF31
	.byte	0xb
	.uahalf	0x378
	.uaword	0x19b
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.string	"DRC"
	.byte	0xb
	.uahalf	0x379
	.uaword	0x19b
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0
	.uleb128 0xe
	.string	"CHNR"
	.byte	0xb
	.uahalf	0x37a
	.uaword	0x19b
	.byte	0x4
	.byte	0x5
	.byte	0x7
	.byte	0
	.uleb128 0xe
	.string	"EMUX"
	.byte	0xb
	.uahalf	0x37b
	.uaword	0x19b
	.byte	0x4
	.byte	0x3
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.string	"CRS"
	.byte	0xb
	.uahalf	0x37c
	.uaword	0x19b
	.byte	0x4
	.byte	0x2
	.byte	0x2
	.byte	0
	.uleb128 0xe
	.string	"FCR"
	.byte	0xb
	.uahalf	0x37d
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.string	"VF"
	.byte	0xb
	.uahalf	0x37e
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_RES_Bits"
	.byte	0xb
	.uahalf	0x37f
	.uaword	0x38a4
	.uleb128 0x10
	.string	"_Ifx_VADC_RESD_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x382
	.uaword	0x39db
	.uleb128 0xd
	.uaword	.LASF31
	.byte	0xb
	.uahalf	0x384
	.uaword	0x19b
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.string	"DRC"
	.byte	0xb
	.uahalf	0x385
	.uaword	0x19b
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0
	.uleb128 0xe
	.string	"CHNR"
	.byte	0xb
	.uahalf	0x386
	.uaword	0x19b
	.byte	0x4
	.byte	0x5
	.byte	0x7
	.byte	0
	.uleb128 0xe
	.string	"EMUX"
	.byte	0xb
	.uahalf	0x387
	.uaword	0x19b
	.byte	0x4
	.byte	0x3
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.string	"CRS"
	.byte	0xb
	.uahalf	0x388
	.uaword	0x19b
	.byte	0x4
	.byte	0x2
	.byte	0x2
	.byte	0
	.uleb128 0xe
	.string	"FCR"
	.byte	0xb
	.uahalf	0x389
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.string	"VF"
	.byte	0xb
	.uahalf	0x38a
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_RESD_Bits"
	.byte	0xb
	.uahalf	0x38b
	.uaword	0x394c
	.uleb128 0x10
	.string	"_Ifx_VADC_SHS_CALCTR_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x38e
	.uaword	0x3b0c
	.uleb128 0xe
	.string	"CALORD"
	.byte	0xb
	.uahalf	0x390
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.uaword	.LASF28
	.byte	0xb
	.uahalf	0x391
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.string	"ARCDIS"
	.byte	0xb
	.uahalf	0x392
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.string	"ARCH"
	.byte	0xb
	.uahalf	0x393
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.string	"AREFDEF"
	.byte	0xb
	.uahalf	0x394
	.uaword	0x19b
	.byte	0x4
	.byte	0x3
	.byte	0x19
	.byte	0
	.uleb128 0xe
	.string	"ARM"
	.byte	0xb
	.uahalf	0x395
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.string	"CALGNSTC"
	.byte	0xb
	.uahalf	0x396
	.uaword	0x19b
	.byte	0x4
	.byte	0x6
	.byte	0x12
	.byte	0
	.uleb128 0xd
	.uaword	.LASF35
	.byte	0xb
	.uahalf	0x397
	.uaword	0x19b
	.byte	0x4
	.byte	0x2
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.string	"SUCALVAL"
	.byte	0xb
	.uahalf	0x398
	.uaword	0x19b
	.byte	0x4
	.byte	0x7
	.byte	0x9
	.byte	0
	.uleb128 0xe
	.string	"reserved_23"
	.byte	0xb
	.uahalf	0x399
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.string	"CALMAX"
	.byte	0xb
	.uahalf	0x39a
	.uaword	0x19b
	.byte	0x4
	.byte	0x6
	.byte	0x2
	.byte	0
	.uleb128 0xd
	.uaword	.LASF34
	.byte	0xb
	.uahalf	0x39b
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.string	"SUCAL"
	.byte	0xb
	.uahalf	0x39c
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_SHS_CALCTR_Bits"
	.byte	0xb
	.uahalf	0x39d
	.uaword	0x39f6
	.uleb128 0x10
	.string	"_Ifx_VADC_SHS_CALGC_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x3a0
	.uaword	0x3bc0
	.uleb128 0xe
	.string	"CALGNVALS"
	.byte	0xb
	.uahalf	0x3a2
	.uaword	0x19b
	.byte	0x4
	.byte	0xe
	.byte	0x12
	.byte	0
	.uleb128 0xd
	.uaword	.LASF35
	.byte	0xb
	.uahalf	0x3a3
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xe
	.string	"GNSWC"
	.byte	0xb
	.uahalf	0x3a4
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.string	"CALGNVALA"
	.byte	0xb
	.uahalf	0x3a5
	.uaword	0x19b
	.byte	0x4
	.byte	0xe
	.byte	0x2
	.byte	0
	.uleb128 0xd
	.uaword	.LASF34
	.byte	0xb
	.uahalf	0x3a6
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.string	"GNAWC"
	.byte	0xb
	.uahalf	0x3a7
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_SHS_CALGC_Bits"
	.byte	0xb
	.uahalf	0x3a8
	.uaword	0x3b2d
	.uleb128 0x10
	.string	"_Ifx_VADC_SHS_CALOC_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x3ab
	.uaword	0x3c5f
	.uleb128 0xe
	.string	"CALOFFVAL0"
	.byte	0xb
	.uahalf	0x3ad
	.uaword	0x19b
	.byte	0x4
	.byte	0x7
	.byte	0x19
	.byte	0
	.uleb128 0xd
	.uaword	.LASF27
	.byte	0xb
	.uahalf	0x3ae
	.uaword	0x19b
	.byte	0x4
	.byte	0x8
	.byte	0x11
	.byte	0
	.uleb128 0xe
	.string	"OFFWC"
	.byte	0xb
	.uahalf	0x3af
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.uaword	.LASF19
	.byte	0xb
	.uahalf	0x3b0
	.uaword	0x19b
	.byte	0x4
	.byte	0xf
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.string	"DISCAL"
	.byte	0xb
	.uahalf	0x3b1
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_SHS_CALOC_Bits"
	.byte	0xb
	.uahalf	0x3b2
	.uaword	0x3be0
	.uleb128 0x10
	.string	"_Ifx_VADC_SHS_ID_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x3b5
	.uaword	0x3cd3
	.uleb128 0xe
	.string	"MOD_REV"
	.byte	0xb
	.uahalf	0x3b7
	.uaword	0x19b
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.uaword	.LASF32
	.byte	0xb
	.uahalf	0x3b8
	.uaword	0x19b
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.uaword	.LASF33
	.byte	0xb
	.uahalf	0x3b9
	.uaword	0x19b
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_SHS_ID_Bits"
	.byte	0xb
	.uahalf	0x3ba
	.uaword	0x3c7f
	.uleb128 0x10
	.string	"_Ifx_VADC_SHS_SHSCFG_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x3bd
	.uaword	0x3e34
	.uleb128 0xe
	.string	"DIVS"
	.byte	0xb
	.uahalf	0x3bf
	.uaword	0x19b
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0xd
	.uaword	.LASF6
	.byte	0xb
	.uahalf	0x3c0
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xe
	.string	"SYNSH23"
	.byte	0xb
	.uahalf	0x3c1
	.uaword	0x19b
	.byte	0x4
	.byte	0x2
	.byte	0x19
	.byte	0
	.uleb128 0xe
	.string	"SYNSH01"
	.byte	0xb
	.uahalf	0x3c2
	.uaword	0x19b
	.byte	0x4
	.byte	0x2
	.byte	0x17
	.byte	0
	.uleb128 0xd
	.uaword	.LASF26
	.byte	0xb
	.uahalf	0x3c3
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xe
	.string	"AREF"
	.byte	0xb
	.uahalf	0x3c4
	.uaword	0x19b
	.byte	0x4
	.byte	0x2
	.byte	0x14
	.byte	0
	.uleb128 0xe
	.string	"ANOFF"
	.byte	0xb
	.uahalf	0x3c5
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xd
	.uaword	.LASF1
	.byte	0xb
	.uahalf	0x3c6
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xe
	.string	"ANRDY"
	.byte	0xb
	.uahalf	0x3c7
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xe
	.string	"SCWC"
	.byte	0xb
	.uahalf	0x3c8
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.string	"SP0"
	.byte	0xb
	.uahalf	0x3c9
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xe
	.string	"SP1"
	.byte	0xb
	.uahalf	0x3ca
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xe
	.string	"SP2"
	.byte	0xb
	.uahalf	0x3cb
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xe
	.string	"SP3"
	.byte	0xb
	.uahalf	0x3cc
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xd
	.uaword	.LASF18
	.byte	0xb
	.uahalf	0x3cd
	.uaword	0x19b
	.byte	0x4
	.byte	0x4
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.string	"TC"
	.byte	0xb
	.uahalf	0x3ce
	.uaword	0x19b
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.string	"STATE"
	.byte	0xb
	.uahalf	0x3cf
	.uaword	0x19b
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_SHS_SHSCFG_Bits"
	.byte	0xb
	.uahalf	0x3d0
	.uaword	0x3cf0
	.uleb128 0x10
	.string	"_Ifx_VADC_SHS_STEPCFG_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x3d3
	.uaword	0x3f92
	.uleb128 0xe
	.string	"KSEL0"
	.byte	0xb
	.uahalf	0x3d5
	.uaword	0x19b
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.string	"SEN0"
	.byte	0xb
	.uahalf	0x3d6
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.string	"KSEL1"
	.byte	0xb
	.uahalf	0x3d7
	.uaword	0x19b
	.byte	0x4
	.byte	0x3
	.byte	0x19
	.byte	0
	.uleb128 0xe
	.string	"SEN1"
	.byte	0xb
	.uahalf	0x3d8
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.string	"KSEL2"
	.byte	0xb
	.uahalf	0x3d9
	.uaword	0x19b
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0xe
	.string	"SEN2"
	.byte	0xb
	.uahalf	0x3da
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xe
	.string	"KSEL3"
	.byte	0xb
	.uahalf	0x3db
	.uaword	0x19b
	.byte	0x4
	.byte	0x3
	.byte	0x11
	.byte	0
	.uleb128 0xe
	.string	"SEN3"
	.byte	0xb
	.uahalf	0x3dc
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.string	"KSEL4"
	.byte	0xb
	.uahalf	0x3dd
	.uaword	0x19b
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0xe
	.string	"SEN4"
	.byte	0xb
	.uahalf	0x3de
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xe
	.string	"KSEL5"
	.byte	0xb
	.uahalf	0x3df
	.uaword	0x19b
	.byte	0x4
	.byte	0x3
	.byte	0x9
	.byte	0
	.uleb128 0xe
	.string	"SEN5"
	.byte	0xb
	.uahalf	0x3e0
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.string	"KSEL6"
	.byte	0xb
	.uahalf	0x3e1
	.uaword	0x19b
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0xe
	.string	"SEN6"
	.byte	0xb
	.uahalf	0x3e2
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.string	"KSEL7"
	.byte	0xb
	.uahalf	0x3e3
	.uaword	0x19b
	.byte	0x4
	.byte	0x3
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.string	"SEN7"
	.byte	0xb
	.uahalf	0x3e4
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_SHS_STEPCFG_Bits"
	.byte	0xb
	.uahalf	0x3e5
	.uaword	0x3e55
	.uleb128 0x10
	.string	"_Ifx_VADC_SHS_TIMCFG_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x3e8
	.uaword	0x4049
	.uleb128 0xe
	.string	"AT"
	.byte	0xb
	.uahalf	0x3ea
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.uaword	.LASF28
	.byte	0xb
	.uahalf	0x3eb
	.uaword	0x19b
	.byte	0x4
	.byte	0x3
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.string	"FCRT"
	.byte	0xb
	.uahalf	0x3ec
	.uaword	0x19b
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.string	"SST"
	.byte	0xb
	.uahalf	0x3ed
	.uaword	0x19b
	.byte	0x4
	.byte	0x6
	.byte	0x12
	.byte	0
	.uleb128 0xd
	.uaword	.LASF35
	.byte	0xb
	.uahalf	0x3ee
	.uaword	0x19b
	.byte	0x4
	.byte	0x2
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.string	"TGEN"
	.byte	0xb
	.uahalf	0x3ef
	.uaword	0x19b
	.byte	0x4
	.byte	0xe
	.byte	0x2
	.byte	0
	.uleb128 0xd
	.uaword	.LASF34
	.byte	0xb
	.uahalf	0x3f0
	.uaword	0x19b
	.byte	0x4
	.byte	0x2
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_SHS_TIMCFG_Bits"
	.byte	0xb
	.uahalf	0x3f1
	.uaword	0x3fb4
	.uleb128 0x11
	.byte	0x4
	.byte	0xb
	.uahalf	0x3f9
	.uaword	0x4092
	.uleb128 0x12
	.string	"U"
	.byte	0xb
	.uahalf	0x3fc
	.uaword	0x19b
	.uleb128 0x12
	.string	"I"
	.byte	0xb
	.uahalf	0x3fe
	.uaword	0x22e
	.uleb128 0x12
	.string	"B"
	.byte	0xb
	.uahalf	0x400
	.uaword	0x839
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_ACCEN0"
	.byte	0xb
	.uahalf	0x401
	.uaword	0x406a
	.uleb128 0x11
	.byte	0x4
	.byte	0xb
	.uahalf	0x404
	.uaword	0x40d2
	.uleb128 0x12
	.string	"U"
	.byte	0xb
	.uahalf	0x407
	.uaword	0x19b
	.uleb128 0x12
	.string	"I"
	.byte	0xb
	.uahalf	0x409
	.uaword	0x22e
	.uleb128 0x12
	.string	"B"
	.byte	0xb
	.uahalf	0x40b
	.uaword	0x9b4
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_ACCPROT0"
	.byte	0xb
	.uahalf	0x40c
	.uaword	0x40aa
	.uleb128 0x11
	.byte	0x4
	.byte	0xb
	.uahalf	0x40f
	.uaword	0x4114
	.uleb128 0x12
	.string	"U"
	.byte	0xb
	.uahalf	0x412
	.uaword	0x19b
	.uleb128 0x12
	.string	"I"
	.byte	0xb
	.uahalf	0x414
	.uaword	0x22e
	.uleb128 0x12
	.string	"B"
	.byte	0xb
	.uahalf	0x416
	.uaword	0xb21
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_ACCPROT1"
	.byte	0xb
	.uahalf	0x417
	.uaword	0x40ec
	.uleb128 0x11
	.byte	0x4
	.byte	0xb
	.uahalf	0x41a
	.uaword	0x4156
	.uleb128 0x12
	.string	"U"
	.byte	0xb
	.uahalf	0x41d
	.uaword	0x19b
	.uleb128 0x12
	.string	"I"
	.byte	0xb
	.uahalf	0x41f
	.uaword	0x22e
	.uleb128 0x12
	.string	"B"
	.byte	0xb
	.uahalf	0x421
	.uaword	0xc0e
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_BRSCTRL"
	.byte	0xb
	.uahalf	0x422
	.uaword	0x412e
	.uleb128 0x11
	.byte	0x4
	.byte	0xb
	.uahalf	0x425
	.uaword	0x4197
	.uleb128 0x12
	.string	"U"
	.byte	0xb
	.uahalf	0x428
	.uaword	0x19b
	.uleb128 0x12
	.string	"I"
	.byte	0xb
	.uahalf	0x42a
	.uaword	0x22e
	.uleb128 0x12
	.string	"B"
	.byte	0xb
	.uahalf	0x42c
	.uaword	0xd07
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_BRSMR"
	.byte	0xb
	.uahalf	0x42d
	.uaword	0x416f
	.uleb128 0x11
	.byte	0x4
	.byte	0xb
	.uahalf	0x430
	.uaword	0x41d6
	.uleb128 0x12
	.string	"U"
	.byte	0xb
	.uahalf	0x433
	.uaword	0x19b
	.uleb128 0x12
	.string	"I"
	.byte	0xb
	.uahalf	0x435
	.uaword	0x22e
	.uleb128 0x12
	.string	"B"
	.byte	0xb
	.uahalf	0x437
	.uaword	0xd54
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_BRSPND"
	.byte	0xb
	.uahalf	0x438
	.uaword	0x41ae
	.uleb128 0x11
	.byte	0x4
	.byte	0xb
	.uahalf	0x43b
	.uaword	0x4216
	.uleb128 0x12
	.string	"U"
	.byte	0xb
	.uahalf	0x43e
	.uaword	0x19b
	.uleb128 0x12
	.string	"I"
	.byte	0xb
	.uahalf	0x440
	.uaword	0x22e
	.uleb128 0x12
	.string	"B"
	.byte	0xb
	.uahalf	0x442
	.uaword	0xda2
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_BRSSEL"
	.byte	0xb
	.uahalf	0x443
	.uaword	0x41ee
	.uleb128 0x11
	.byte	0x4
	.byte	0xb
	.uahalf	0x446
	.uaword	0x4256
	.uleb128 0x12
	.string	"U"
	.byte	0xb
	.uahalf	0x449
	.uaword	0x19b
	.uleb128 0x12
	.string	"I"
	.byte	0xb
	.uahalf	0x44b
	.uaword	0x22e
	.uleb128 0x12
	.string	"B"
	.byte	0xb
	.uahalf	0x44d
	.uaword	0xee2
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_CHCTR"
	.byte	0xb
	.uahalf	0x44e
	.uaword	0x422e
	.uleb128 0x11
	.byte	0x4
	.byte	0xb
	.uahalf	0x451
	.uaword	0x4295
	.uleb128 0x12
	.string	"U"
	.byte	0xb
	.uahalf	0x454
	.uaword	0x19b
	.uleb128 0x12
	.string	"I"
	.byte	0xb
	.uahalf	0x456
	.uaword	0x22e
	.uleb128 0x12
	.string	"B"
	.byte	0xb
	.uahalf	0x458
	.uaword	0xf67
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_CLC"
	.byte	0xb
	.uahalf	0x459
	.uaword	0x426d
	.uleb128 0x11
	.byte	0x4
	.byte	0xb
	.uahalf	0x45c
	.uaword	0x42d2
	.uleb128 0x12
	.string	"U"
	.byte	0xb
	.uahalf	0x45f
	.uaword	0x19b
	.uleb128 0x12
	.string	"I"
	.byte	0xb
	.uahalf	0x461
	.uaword	0x22e
	.uleb128 0x12
	.string	"B"
	.byte	0xb
	.uahalf	0x463
	.uaword	0xfd7
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_EMUXSEL"
	.byte	0xb
	.uahalf	0x464
	.uaword	0x42aa
	.uleb128 0x11
	.byte	0x4
	.byte	0xb
	.uahalf	0x467
	.uaword	0x4313
	.uleb128 0x12
	.string	"U"
	.byte	0xb
	.uahalf	0x46a
	.uaword	0x19b
	.uleb128 0x12
	.string	"I"
	.byte	0xb
	.uahalf	0x46c
	.uaword	0x22e
	.uleb128 0x12
	.string	"B"
	.byte	0xb
	.uahalf	0x46e
	.uaword	0x1056
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_ALIAS"
	.byte	0xb
	.uahalf	0x46f
	.uaword	0x42eb
	.uleb128 0x11
	.byte	0x4
	.byte	0xb
	.uahalf	0x472
	.uaword	0x4354
	.uleb128 0x12
	.string	"U"
	.byte	0xb
	.uahalf	0x475
	.uaword	0x19b
	.uleb128 0x12
	.string	"I"
	.byte	0xb
	.uahalf	0x477
	.uaword	0x22e
	.uleb128 0x12
	.string	"B"
	.byte	0xb
	.uahalf	0x479
	.uaword	0x118f
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_ARBCFG"
	.byte	0xb
	.uahalf	0x47a
	.uaword	0x432c
	.uleb128 0x11
	.byte	0x4
	.byte	0xb
	.uahalf	0x47d
	.uaword	0x4396
	.uleb128 0x12
	.string	"U"
	.byte	0xb
	.uahalf	0x480
	.uaword	0x19b
	.uleb128 0x12
	.string	"I"
	.byte	0xb
	.uahalf	0x482
	.uaword	0x22e
	.uleb128 0x12
	.string	"B"
	.byte	0xb
	.uahalf	0x484
	.uaword	0x12b5
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_ARBPR"
	.byte	0xb
	.uahalf	0x485
	.uaword	0x436e
	.uleb128 0x11
	.byte	0x4
	.byte	0xb
	.uahalf	0x488
	.uaword	0x43d7
	.uleb128 0x12
	.string	"U"
	.byte	0xb
	.uahalf	0x48b
	.uaword	0x19b
	.uleb128 0x12
	.string	"I"
	.byte	0xb
	.uahalf	0x48d
	.uaword	0x22e
	.uleb128 0x12
	.string	"B"
	.byte	0xb
	.uahalf	0x48f
	.uaword	0x13e1
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_ASCTRL"
	.byte	0xb
	.uahalf	0x490
	.uaword	0x43af
	.uleb128 0x11
	.byte	0x4
	.byte	0xb
	.uahalf	0x493
	.uaword	0x4419
	.uleb128 0x12
	.string	"U"
	.byte	0xb
	.uahalf	0x496
	.uaword	0x19b
	.uleb128 0x12
	.string	"I"
	.byte	0xb
	.uahalf	0x498
	.uaword	0x22e
	.uleb128 0x12
	.string	"B"
	.byte	0xb
	.uahalf	0x49a
	.uaword	0x14ea
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_ASMR"
	.byte	0xb
	.uahalf	0x49b
	.uaword	0x43f1
	.uleb128 0x11
	.byte	0x4
	.byte	0xb
	.uahalf	0x49e
	.uaword	0x4459
	.uleb128 0x12
	.string	"U"
	.byte	0xb
	.uahalf	0x4a1
	.uaword	0x19b
	.uleb128 0x12
	.string	"I"
	.byte	0xb
	.uahalf	0x4a3
	.uaword	0x22e
	.uleb128 0x12
	.string	"B"
	.byte	0xb
	.uahalf	0x4a5
	.uaword	0x153a
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_ASPND"
	.byte	0xb
	.uahalf	0x4a6
	.uaword	0x4431
	.uleb128 0x11
	.byte	0x4
	.byte	0xb
	.uahalf	0x4a9
	.uaword	0x449a
	.uleb128 0x12
	.string	"U"
	.byte	0xb
	.uahalf	0x4ac
	.uaword	0x19b
	.uleb128 0x12
	.string	"I"
	.byte	0xb
	.uahalf	0x4ae
	.uaword	0x22e
	.uleb128 0x12
	.string	"B"
	.byte	0xb
	.uahalf	0x4b0
	.uaword	0x158b
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_ASSEL"
	.byte	0xb
	.uahalf	0x4b1
	.uaword	0x4472
	.uleb128 0x11
	.byte	0x4
	.byte	0xb
	.uahalf	0x4b4
	.uaword	0x44db
	.uleb128 0x12
	.string	"U"
	.byte	0xb
	.uahalf	0x4b7
	.uaword	0x19b
	.uleb128 0x12
	.string	"I"
	.byte	0xb
	.uahalf	0x4b9
	.uaword	0x22e
	.uleb128 0x12
	.string	"B"
	.byte	0xb
	.uahalf	0x4bb
	.uaword	0x16c4
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_BFL"
	.byte	0xb
	.uahalf	0x4bc
	.uaword	0x44b3
	.uleb128 0x11
	.byte	0x4
	.byte	0xb
	.uahalf	0x4bf
	.uaword	0x451a
	.uleb128 0x12
	.string	"U"
	.byte	0xb
	.uahalf	0x4c2
	.uaword	0x19b
	.uleb128 0x12
	.string	"I"
	.byte	0xb
	.uahalf	0x4c4
	.uaword	0x22e
	.uleb128 0x12
	.string	"B"
	.byte	0xb
	.uahalf	0x4c6
	.uaword	0x1754
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_BFLC"
	.byte	0xb
	.uahalf	0x4c7
	.uaword	0x44f2
	.uleb128 0x11
	.byte	0x4
	.byte	0xb
	.uahalf	0x4ca
	.uaword	0x455a
	.uleb128 0x12
	.string	"U"
	.byte	0xb
	.uahalf	0x4cd
	.uaword	0x19b
	.uleb128 0x12
	.string	"I"
	.byte	0xb
	.uahalf	0x4cf
	.uaword	0x22e
	.uleb128 0x12
	.string	"B"
	.byte	0xb
	.uahalf	0x4d1
	.uaword	0x17ee
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_BFLNP"
	.byte	0xb
	.uahalf	0x4d2
	.uaword	0x4532
	.uleb128 0x11
	.byte	0x4
	.byte	0xb
	.uahalf	0x4d5
	.uaword	0x459b
	.uleb128 0x12
	.string	"U"
	.byte	0xb
	.uahalf	0x4d8
	.uaword	0x19b
	.uleb128 0x12
	.string	"I"
	.byte	0xb
	.uahalf	0x4da
	.uaword	0x22e
	.uleb128 0x12
	.string	"B"
	.byte	0xb
	.uahalf	0x4dc
	.uaword	0x18d4
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_BFLS"
	.byte	0xb
	.uahalf	0x4dd
	.uaword	0x4573
	.uleb128 0x11
	.byte	0x4
	.byte	0xb
	.uahalf	0x4e0
	.uaword	0x45db
	.uleb128 0x12
	.string	"U"
	.byte	0xb
	.uahalf	0x4e3
	.uaword	0x19b
	.uleb128 0x12
	.string	"I"
	.byte	0xb
	.uahalf	0x4e5
	.uaword	0x22e
	.uleb128 0x12
	.string	"B"
	.byte	0xb
	.uahalf	0x4e7
	.uaword	0x1952
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_BOUND"
	.byte	0xb
	.uahalf	0x4e8
	.uaword	0x45b3
	.uleb128 0x11
	.byte	0x4
	.byte	0xb
	.uahalf	0x4eb
	.uaword	0x461c
	.uleb128 0x12
	.string	"U"
	.byte	0xb
	.uahalf	0x4ee
	.uaword	0x19b
	.uleb128 0x12
	.string	"I"
	.byte	0xb
	.uahalf	0x4f0
	.uaword	0x22e
	.uleb128 0x12
	.string	"B"
	.byte	0xb
	.uahalf	0x4f2
	.uaword	0x1a2a
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_CEFCLR"
	.byte	0xb
	.uahalf	0x4f3
	.uaword	0x45f4
	.uleb128 0x11
	.byte	0x4
	.byte	0xb
	.uahalf	0x4f6
	.uaword	0x465e
	.uleb128 0x12
	.string	"U"
	.byte	0xb
	.uahalf	0x4f9
	.uaword	0x19b
	.uleb128 0x12
	.string	"I"
	.byte	0xb
	.uahalf	0x4fb
	.uaword	0x22e
	.uleb128 0x12
	.string	"B"
	.byte	0xb
	.uahalf	0x4fd
	.uaword	0x1b03
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_CEFLAG"
	.byte	0xb
	.uahalf	0x4fe
	.uaword	0x4636
	.uleb128 0x11
	.byte	0x4
	.byte	0xb
	.uahalf	0x501
	.uaword	0x46a0
	.uleb128 0x12
	.string	"U"
	.byte	0xb
	.uahalf	0x504
	.uaword	0x19b
	.uleb128 0x12
	.string	"I"
	.byte	0xb
	.uahalf	0x506
	.uaword	0x22e
	.uleb128 0x12
	.string	"B"
	.byte	0xb
	.uahalf	0x508
	.uaword	0x1bdc
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_CEVNP0"
	.byte	0xb
	.uahalf	0x509
	.uaword	0x4678
	.uleb128 0x11
	.byte	0x4
	.byte	0xb
	.uahalf	0x50c
	.uaword	0x46e2
	.uleb128 0x12
	.string	"U"
	.byte	0xb
	.uahalf	0x50f
	.uaword	0x19b
	.uleb128 0x12
	.string	"I"
	.byte	0xb
	.uahalf	0x511
	.uaword	0x22e
	.uleb128 0x12
	.string	"B"
	.byte	0xb
	.uahalf	0x513
	.uaword	0x1e92
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_CHASS"
	.byte	0xb
	.uahalf	0x514
	.uaword	0x46ba
	.uleb128 0x11
	.byte	0x4
	.byte	0xb
	.uahalf	0x517
	.uaword	0x4723
	.uleb128 0x12
	.string	"U"
	.byte	0xb
	.uahalf	0x51a
	.uaword	0x19b
	.uleb128 0x12
	.string	"I"
	.byte	0xb
	.uahalf	0x51c
	.uaword	0x22e
	.uleb128 0x12
	.string	"B"
	.byte	0xb
	.uahalf	0x51e
	.uaword	0x1f8d
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_EMUXCTR"
	.byte	0xb
	.uahalf	0x51f
	.uaword	0x46fb
	.uleb128 0x11
	.byte	0x4
	.byte	0xb
	.uahalf	0x522
	.uaword	0x4766
	.uleb128 0x12
	.string	"U"
	.byte	0xb
	.uahalf	0x525
	.uaword	0x19b
	.uleb128 0x12
	.string	"I"
	.byte	0xb
	.uahalf	0x527
	.uaword	0x22e
	.uleb128 0x12
	.string	"B"
	.byte	0xb
	.uahalf	0x529
	.uaword	0x202c
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_Q0R0"
	.byte	0xb
	.uahalf	0x52a
	.uaword	0x473e
	.uleb128 0x11
	.byte	0x4
	.byte	0xb
	.uahalf	0x52d
	.uaword	0x47a6
	.uleb128 0x12
	.string	"U"
	.byte	0xb
	.uahalf	0x530
	.uaword	0x19b
	.uleb128 0x12
	.string	"I"
	.byte	0xb
	.uahalf	0x532
	.uaword	0x22e
	.uleb128 0x12
	.string	"B"
	.byte	0xb
	.uahalf	0x534
	.uaword	0x20c9
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_QBUR0"
	.byte	0xb
	.uahalf	0x535
	.uaword	0x477e
	.uleb128 0x11
	.byte	0x4
	.byte	0xb
	.uahalf	0x538
	.uaword	0x47e7
	.uleb128 0x12
	.string	"U"
	.byte	0xb
	.uahalf	0x53b
	.uaword	0x19b
	.uleb128 0x12
	.string	"I"
	.byte	0xb
	.uahalf	0x53d
	.uaword	0x22e
	.uleb128 0x12
	.string	"B"
	.byte	0xb
	.uahalf	0x53f
	.uaword	0x21f5
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_QCTRL0"
	.byte	0xb
	.uahalf	0x540
	.uaword	0x47bf
	.uleb128 0x11
	.byte	0x4
	.byte	0xb
	.uahalf	0x543
	.uaword	0x4829
	.uleb128 0x12
	.string	"U"
	.byte	0xb
	.uahalf	0x546
	.uaword	0x19b
	.uleb128 0x12
	.string	"I"
	.byte	0xb
	.uahalf	0x548
	.uaword	0x22e
	.uleb128 0x12
	.string	"B"
	.byte	0xb
	.uahalf	0x54a
	.uaword	0x2286
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_QINR0"
	.byte	0xb
	.uahalf	0x54b
	.uaword	0x4801
	.uleb128 0x11
	.byte	0x4
	.byte	0xb
	.uahalf	0x54e
	.uaword	0x486a
	.uleb128 0x12
	.string	"U"
	.byte	0xb
	.uahalf	0x551
	.uaword	0x19b
	.uleb128 0x12
	.string	"I"
	.byte	0xb
	.uahalf	0x553
	.uaword	0x22e
	.uleb128 0x12
	.string	"B"
	.byte	0xb
	.uahalf	0x555
	.uaword	0x236a
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_QMR0"
	.byte	0xb
	.uahalf	0x556
	.uaword	0x4842
	.uleb128 0x11
	.byte	0x4
	.byte	0xb
	.uahalf	0x559
	.uaword	0x48aa
	.uleb128 0x12
	.string	"U"
	.byte	0xb
	.uahalf	0x55c
	.uaword	0x19b
	.uleb128 0x12
	.string	"I"
	.byte	0xb
	.uahalf	0x55e
	.uaword	0x22e
	.uleb128 0x12
	.string	"B"
	.byte	0xb
	.uahalf	0x560
	.uaword	0x241b
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_QSR0"
	.byte	0xb
	.uahalf	0x561
	.uaword	0x4882
	.uleb128 0x11
	.byte	0x4
	.byte	0xb
	.uahalf	0x564
	.uaword	0x48ea
	.uleb128 0x12
	.string	"U"
	.byte	0xb
	.uahalf	0x567
	.uaword	0x19b
	.uleb128 0x12
	.string	"I"
	.byte	0xb
	.uahalf	0x569
	.uaword	0x22e
	.uleb128 0x12
	.string	"B"
	.byte	0xb
	.uahalf	0x56b
	.uaword	0x2580
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_REFCLR"
	.byte	0xb
	.uahalf	0x56c
	.uaword	0x48c2
	.uleb128 0x11
	.byte	0x4
	.byte	0xb
	.uahalf	0x56f
	.uaword	0x492c
	.uleb128 0x12
	.string	"U"
	.byte	0xb
	.uahalf	0x572
	.uaword	0x19b
	.uleb128 0x12
	.string	"I"
	.byte	0xb
	.uahalf	0x574
	.uaword	0x22e
	.uleb128 0x12
	.string	"B"
	.byte	0xb
	.uahalf	0x576
	.uaword	0x26e7
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_REFLAG"
	.byte	0xb
	.uahalf	0x577
	.uaword	0x4904
	.uleb128 0x11
	.byte	0x4
	.byte	0xb
	.uahalf	0x57a
	.uaword	0x496e
	.uleb128 0x12
	.string	"U"
	.byte	0xb
	.uahalf	0x57d
	.uaword	0x19b
	.uleb128 0x12
	.string	"I"
	.byte	0xb
	.uahalf	0x57f
	.uaword	0x22e
	.uleb128 0x12
	.string	"B"
	.byte	0xb
	.uahalf	0x581
	.uaword	0x27c0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_REVNP0"
	.byte	0xb
	.uahalf	0x582
	.uaword	0x4946
	.uleb128 0x11
	.byte	0x4
	.byte	0xb
	.uahalf	0x585
	.uaword	0x49b0
	.uleb128 0x12
	.string	"U"
	.byte	0xb
	.uahalf	0x588
	.uaword	0x19b
	.uleb128 0x12
	.string	"I"
	.byte	0xb
	.uahalf	0x58a
	.uaword	0x22e
	.uleb128 0x12
	.string	"B"
	.byte	0xb
	.uahalf	0x58c
	.uaword	0x289f
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_REVNP1"
	.byte	0xb
	.uahalf	0x58d
	.uaword	0x4988
	.uleb128 0x11
	.byte	0x4
	.byte	0xb
	.uahalf	0x590
	.uaword	0x49f2
	.uleb128 0x12
	.string	"U"
	.byte	0xb
	.uahalf	0x593
	.uaword	0x19b
	.uleb128 0x12
	.string	"I"
	.byte	0xb
	.uahalf	0x595
	.uaword	0x22e
	.uleb128 0x12
	.string	"B"
	.byte	0xb
	.uahalf	0x597
	.uaword	0x2a25
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_RRASS"
	.byte	0xb
	.uahalf	0x598
	.uaword	0x49ca
	.uleb128 0x11
	.byte	0x4
	.byte	0xb
	.uahalf	0x59b
	.uaword	0x4a33
	.uleb128 0x12
	.string	"U"
	.byte	0xb
	.uahalf	0x59e
	.uaword	0x19b
	.uleb128 0x12
	.string	"I"
	.byte	0xb
	.uahalf	0x5a0
	.uaword	0x22e
	.uleb128 0x12
	.string	"B"
	.byte	0xb
	.uahalf	0x5a2
	.uaword	0x2a97
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_SEFCLR"
	.byte	0xb
	.uahalf	0x5a3
	.uaword	0x4a0b
	.uleb128 0x11
	.byte	0x4
	.byte	0xb
	.uahalf	0x5a6
	.uaword	0x4a75
	.uleb128 0x12
	.string	"U"
	.byte	0xb
	.uahalf	0x5a9
	.uaword	0x19b
	.uleb128 0x12
	.string	"I"
	.byte	0xb
	.uahalf	0x5ab
	.uaword	0x22e
	.uleb128 0x12
	.string	"B"
	.byte	0xb
	.uahalf	0x5ad
	.uaword	0x2b0a
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_SEFLAG"
	.byte	0xb
	.uahalf	0x5ae
	.uaword	0x4a4d
	.uleb128 0x11
	.byte	0x4
	.byte	0xb
	.uahalf	0x5b1
	.uaword	0x4ab7
	.uleb128 0x12
	.string	"U"
	.byte	0xb
	.uahalf	0x5b4
	.uaword	0x19b
	.uleb128 0x12
	.string	"I"
	.byte	0xb
	.uahalf	0x5b6
	.uaword	0x22e
	.uleb128 0x12
	.string	"B"
	.byte	0xb
	.uahalf	0x5b8
	.uaword	0x2b80
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_SEVNP"
	.byte	0xb
	.uahalf	0x5b9
	.uaword	0x4a8f
	.uleb128 0x11
	.byte	0x4
	.byte	0xb
	.uahalf	0x5bc
	.uaword	0x4af8
	.uleb128 0x12
	.string	"U"
	.byte	0xb
	.uahalf	0x5bf
	.uaword	0x19b
	.uleb128 0x12
	.string	"I"
	.byte	0xb
	.uahalf	0x5c1
	.uaword	0x22e
	.uleb128 0x12
	.string	"B"
	.byte	0xb
	.uahalf	0x5c3
	.uaword	0x2c6f
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_SRACT"
	.byte	0xb
	.uahalf	0x5c4
	.uaword	0x4ad0
	.uleb128 0x11
	.byte	0x4
	.byte	0xb
	.uahalf	0x5c7
	.uaword	0x4b39
	.uleb128 0x12
	.string	"U"
	.byte	0xb
	.uahalf	0x5ca
	.uaword	0x19b
	.uleb128 0x12
	.string	"I"
	.byte	0xb
	.uahalf	0x5cc
	.uaword	0x22e
	.uleb128 0x12
	.string	"B"
	.byte	0xb
	.uahalf	0x5ce
	.uaword	0x2d1a
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_SYNCTR"
	.byte	0xb
	.uahalf	0x5cf
	.uaword	0x4b11
	.uleb128 0x11
	.byte	0x4
	.byte	0xb
	.uahalf	0x5d2
	.uaword	0x4b7b
	.uleb128 0x12
	.string	"U"
	.byte	0xb
	.uahalf	0x5d5
	.uaword	0x19b
	.uleb128 0x12
	.string	"I"
	.byte	0xb
	.uahalf	0x5d7
	.uaword	0x22e
	.uleb128 0x12
	.string	"B"
	.byte	0xb
	.uahalf	0x5d9
	.uaword	0x2e6e
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_VFR"
	.byte	0xb
	.uahalf	0x5da
	.uaword	0x4b53
	.uleb128 0x11
	.byte	0x4
	.byte	0xb
	.uahalf	0x5dd
	.uaword	0x4bba
	.uleb128 0x12
	.string	"U"
	.byte	0xb
	.uahalf	0x5e0
	.uaword	0x19b
	.uleb128 0x12
	.string	"I"
	.byte	0xb
	.uahalf	0x5e2
	.uaword	0x22e
	.uleb128 0x12
	.string	"B"
	.byte	0xb
	.uahalf	0x5e4
	.uaword	0x2eed
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_GLOBBOUND"
	.byte	0xb
	.uahalf	0x5e5
	.uaword	0x4b92
	.uleb128 0x11
	.byte	0x4
	.byte	0xb
	.uahalf	0x5e8
	.uaword	0x4bfd
	.uleb128 0x12
	.string	"U"
	.byte	0xb
	.uahalf	0x5eb
	.uaword	0x19b
	.uleb128 0x12
	.string	"I"
	.byte	0xb
	.uahalf	0x5ed
	.uaword	0x22e
	.uleb128 0x12
	.string	"B"
	.byte	0xb
	.uahalf	0x5ef
	.uaword	0x304e
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_GLOBCFG"
	.byte	0xb
	.uahalf	0x5f0
	.uaword	0x4bd5
	.uleb128 0x11
	.byte	0x4
	.byte	0xb
	.uahalf	0x5f3
	.uaword	0x4c3e
	.uleb128 0x12
	.string	"U"
	.byte	0xb
	.uahalf	0x5f6
	.uaword	0x19b
	.uleb128 0x12
	.string	"I"
	.byte	0xb
	.uahalf	0x5f8
	.uaword	0x22e
	.uleb128 0x12
	.string	"B"
	.byte	0xb
	.uahalf	0x5fa
	.uaword	0x3121
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_GLOBEFLAG"
	.byte	0xb
	.uahalf	0x5fb
	.uaword	0x4c16
	.uleb128 0x11
	.byte	0x4
	.byte	0xb
	.uahalf	0x5fe
	.uaword	0x4c81
	.uleb128 0x12
	.string	"U"
	.byte	0xb
	.uahalf	0x601
	.uaword	0x19b
	.uleb128 0x12
	.string	"I"
	.byte	0xb
	.uahalf	0x603
	.uaword	0x22e
	.uleb128 0x12
	.string	"B"
	.byte	0xb
	.uahalf	0x605
	.uaword	0x31a9
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_GLOBEVNP"
	.byte	0xb
	.uahalf	0x606
	.uaword	0x4c59
	.uleb128 0x11
	.byte	0x4
	.byte	0xb
	.uahalf	0x609
	.uaword	0x4cc3
	.uleb128 0x12
	.string	"U"
	.byte	0xb
	.uahalf	0x60c
	.uaword	0x19b
	.uleb128 0x12
	.string	"I"
	.byte	0xb
	.uahalf	0x60e
	.uaword	0x22e
	.uleb128 0x12
	.string	"B"
	.byte	0xb
	.uahalf	0x610
	.uaword	0x324d
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_GLOBRCR"
	.byte	0xb
	.uahalf	0x611
	.uaword	0x4c9b
	.uleb128 0x11
	.byte	0x4
	.byte	0xb
	.uahalf	0x614
	.uaword	0x4d04
	.uleb128 0x12
	.string	"U"
	.byte	0xb
	.uahalf	0x617
	.uaword	0x19b
	.uleb128 0x12
	.string	"I"
	.byte	0xb
	.uahalf	0x619
	.uaword	0x22e
	.uleb128 0x12
	.string	"B"
	.byte	0xb
	.uahalf	0x61b
	.uaword	0x32fd
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_GLOBRES"
	.byte	0xb
	.uahalf	0x61c
	.uaword	0x4cdc
	.uleb128 0x11
	.byte	0x4
	.byte	0xb
	.uahalf	0x61f
	.uaword	0x4d45
	.uleb128 0x12
	.string	"U"
	.byte	0xb
	.uahalf	0x622
	.uaword	0x19b
	.uleb128 0x12
	.string	"I"
	.byte	0xb
	.uahalf	0x624
	.uaword	0x22e
	.uleb128 0x12
	.string	"B"
	.byte	0xb
	.uahalf	0x626
	.uaword	0x33ae
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_GLOBRESD"
	.byte	0xb
	.uahalf	0x627
	.uaword	0x4d1d
	.uleb128 0x11
	.byte	0x4
	.byte	0xb
	.uahalf	0x62a
	.uaword	0x4d87
	.uleb128 0x12
	.string	"U"
	.byte	0xb
	.uahalf	0x62d
	.uaword	0x19b
	.uleb128 0x12
	.string	"I"
	.byte	0xb
	.uahalf	0x62f
	.uaword	0x22e
	.uleb128 0x12
	.string	"B"
	.byte	0xb
	.uahalf	0x631
	.uaword	0x34be
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_GLOBTF"
	.byte	0xb
	.uahalf	0x632
	.uaword	0x4d5f
	.uleb128 0x11
	.byte	0x4
	.byte	0xb
	.uahalf	0x635
	.uaword	0x4dc7
	.uleb128 0x12
	.string	"U"
	.byte	0xb
	.uahalf	0x638
	.uaword	0x19b
	.uleb128 0x12
	.string	"I"
	.byte	0xb
	.uahalf	0x63a
	.uaword	0x22e
	.uleb128 0x12
	.string	"B"
	.byte	0xb
	.uahalf	0x63c
	.uaword	0x357d
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_ICLASS"
	.byte	0xb
	.uahalf	0x63d
	.uaword	0x4d9f
	.uleb128 0x11
	.byte	0x4
	.byte	0xb
	.uahalf	0x640
	.uaword	0x4e07
	.uleb128 0x12
	.string	"U"
	.byte	0xb
	.uahalf	0x643
	.uaword	0x19b
	.uleb128 0x12
	.string	"I"
	.byte	0xb
	.uahalf	0x645
	.uaword	0x22e
	.uleb128 0x12
	.string	"B"
	.byte	0xb
	.uahalf	0x647
	.uaword	0x35ea
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_ID"
	.byte	0xb
	.uahalf	0x648
	.uaword	0x4ddf
	.uleb128 0x11
	.byte	0x4
	.byte	0xb
	.uahalf	0x64b
	.uaword	0x4e43
	.uleb128 0x12
	.string	"U"
	.byte	0xb
	.uahalf	0x64e
	.uaword	0x19b
	.uleb128 0x12
	.string	"I"
	.byte	0xb
	.uahalf	0x650
	.uaword	0x22e
	.uleb128 0x12
	.string	"B"
	.byte	0xb
	.uahalf	0x652
	.uaword	0x3656
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_KRST0"
	.byte	0xb
	.uahalf	0x653
	.uaword	0x4e1b
	.uleb128 0x11
	.byte	0x4
	.byte	0xb
	.uahalf	0x656
	.uaword	0x4e82
	.uleb128 0x12
	.string	"U"
	.byte	0xb
	.uahalf	0x659
	.uaword	0x19b
	.uleb128 0x12
	.string	"I"
	.byte	0xb
	.uahalf	0x65b
	.uaword	0x22e
	.uleb128 0x12
	.string	"B"
	.byte	0xb
	.uahalf	0x65d
	.uaword	0x36b1
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_KRST1"
	.byte	0xb
	.uahalf	0x65e
	.uaword	0x4e5a
	.uleb128 0x11
	.byte	0x4
	.byte	0xb
	.uahalf	0x661
	.uaword	0x4ec1
	.uleb128 0x12
	.string	"U"
	.byte	0xb
	.uahalf	0x664
	.uaword	0x19b
	.uleb128 0x12
	.string	"I"
	.byte	0xb
	.uahalf	0x666
	.uaword	0x22e
	.uleb128 0x12
	.string	"B"
	.byte	0xb
	.uahalf	0x668
	.uaword	0x370e
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_KRSTCLR"
	.byte	0xb
	.uahalf	0x669
	.uaword	0x4e99
	.uleb128 0x11
	.byte	0x4
	.byte	0xb
	.uahalf	0x66c
	.uaword	0x4f02
	.uleb128 0x12
	.string	"U"
	.byte	0xb
	.uahalf	0x66f
	.uaword	0x19b
	.uleb128 0x12
	.string	"I"
	.byte	0xb
	.uahalf	0x671
	.uaword	0x22e
	.uleb128 0x12
	.string	"B"
	.byte	0xb
	.uahalf	0x673
	.uaword	0x37cf
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_OCS"
	.byte	0xb
	.uahalf	0x674
	.uaword	0x4eda
	.uleb128 0x11
	.byte	0x4
	.byte	0xb
	.uahalf	0x677
	.uaword	0x4f3f
	.uleb128 0x12
	.string	"U"
	.byte	0xb
	.uahalf	0x67a
	.uaword	0x19b
	.uleb128 0x12
	.string	"I"
	.byte	0xb
	.uahalf	0x67c
	.uaword	0x22e
	.uleb128 0x12
	.string	"B"
	.byte	0xb
	.uahalf	0x67e
	.uaword	0x388a
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_RCR"
	.byte	0xb
	.uahalf	0x67f
	.uaword	0x4f17
	.uleb128 0x11
	.byte	0x4
	.byte	0xb
	.uahalf	0x682
	.uaword	0x4f7c
	.uleb128 0x12
	.string	"U"
	.byte	0xb
	.uahalf	0x685
	.uaword	0x19b
	.uleb128 0x12
	.string	"I"
	.byte	0xb
	.uahalf	0x687
	.uaword	0x22e
	.uleb128 0x12
	.string	"B"
	.byte	0xb
	.uahalf	0x689
	.uaword	0x3932
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_RES"
	.byte	0xb
	.uahalf	0x68a
	.uaword	0x4f54
	.uleb128 0x11
	.byte	0x4
	.byte	0xb
	.uahalf	0x68d
	.uaword	0x4fb9
	.uleb128 0x12
	.string	"U"
	.byte	0xb
	.uahalf	0x690
	.uaword	0x19b
	.uleb128 0x12
	.string	"I"
	.byte	0xb
	.uahalf	0x692
	.uaword	0x22e
	.uleb128 0x12
	.string	"B"
	.byte	0xb
	.uahalf	0x694
	.uaword	0x39db
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_RESD"
	.byte	0xb
	.uahalf	0x695
	.uaword	0x4f91
	.uleb128 0x11
	.byte	0x4
	.byte	0xb
	.uahalf	0x698
	.uaword	0x4ff7
	.uleb128 0x12
	.string	"U"
	.byte	0xb
	.uahalf	0x69b
	.uaword	0x19b
	.uleb128 0x12
	.string	"I"
	.byte	0xb
	.uahalf	0x69d
	.uaword	0x22e
	.uleb128 0x12
	.string	"B"
	.byte	0xb
	.uahalf	0x69f
	.uaword	0x3b0c
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_SHS_CALCTR"
	.byte	0xb
	.uahalf	0x6a0
	.uaword	0x4fcf
	.uleb128 0x11
	.byte	0x4
	.byte	0xb
	.uahalf	0x6a3
	.uaword	0x503b
	.uleb128 0x12
	.string	"U"
	.byte	0xb
	.uahalf	0x6a6
	.uaword	0x19b
	.uleb128 0x12
	.string	"I"
	.byte	0xb
	.uahalf	0x6a8
	.uaword	0x22e
	.uleb128 0x12
	.string	"B"
	.byte	0xb
	.uahalf	0x6aa
	.uaword	0x3bc0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_SHS_CALGC"
	.byte	0xb
	.uahalf	0x6ab
	.uaword	0x5013
	.uleb128 0x11
	.byte	0x4
	.byte	0xb
	.uahalf	0x6ae
	.uaword	0x507e
	.uleb128 0x12
	.string	"U"
	.byte	0xb
	.uahalf	0x6b1
	.uaword	0x19b
	.uleb128 0x12
	.string	"I"
	.byte	0xb
	.uahalf	0x6b3
	.uaword	0x22e
	.uleb128 0x12
	.string	"B"
	.byte	0xb
	.uahalf	0x6b5
	.uaword	0x3c5f
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_SHS_CALOC"
	.byte	0xb
	.uahalf	0x6b6
	.uaword	0x5056
	.uleb128 0x11
	.byte	0x4
	.byte	0xb
	.uahalf	0x6b9
	.uaword	0x50c1
	.uleb128 0x12
	.string	"U"
	.byte	0xb
	.uahalf	0x6bc
	.uaword	0x19b
	.uleb128 0x12
	.string	"I"
	.byte	0xb
	.uahalf	0x6be
	.uaword	0x22e
	.uleb128 0x12
	.string	"B"
	.byte	0xb
	.uahalf	0x6c0
	.uaword	0x3cd3
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_SHS_ID"
	.byte	0xb
	.uahalf	0x6c1
	.uaword	0x5099
	.uleb128 0x11
	.byte	0x4
	.byte	0xb
	.uahalf	0x6c4
	.uaword	0x5101
	.uleb128 0x12
	.string	"U"
	.byte	0xb
	.uahalf	0x6c7
	.uaword	0x19b
	.uleb128 0x12
	.string	"I"
	.byte	0xb
	.uahalf	0x6c9
	.uaword	0x22e
	.uleb128 0x12
	.string	"B"
	.byte	0xb
	.uahalf	0x6cb
	.uaword	0x3e34
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_SHS_SHSCFG"
	.byte	0xb
	.uahalf	0x6cc
	.uaword	0x50d9
	.uleb128 0x11
	.byte	0x4
	.byte	0xb
	.uahalf	0x6cf
	.uaword	0x5145
	.uleb128 0x12
	.string	"U"
	.byte	0xb
	.uahalf	0x6d2
	.uaword	0x19b
	.uleb128 0x12
	.string	"I"
	.byte	0xb
	.uahalf	0x6d4
	.uaword	0x22e
	.uleb128 0x12
	.string	"B"
	.byte	0xb
	.uahalf	0x6d6
	.uaword	0x3f92
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_SHS_STEPCFG"
	.byte	0xb
	.uahalf	0x6d7
	.uaword	0x511d
	.uleb128 0x11
	.byte	0x4
	.byte	0xb
	.uahalf	0x6da
	.uaword	0x518a
	.uleb128 0x12
	.string	"U"
	.byte	0xb
	.uahalf	0x6dd
	.uaword	0x19b
	.uleb128 0x12
	.string	"I"
	.byte	0xb
	.uahalf	0x6df
	.uaword	0x22e
	.uleb128 0x12
	.string	"B"
	.byte	0xb
	.uahalf	0x6e1
	.uaword	0x4049
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_SHS_TIMCFG"
	.byte	0xb
	.uahalf	0x6e2
	.uaword	0x5162
	.uleb128 0x11
	.byte	0x4
	.byte	0xb
	.uahalf	0x705
	.uaword	0x51cc
	.uleb128 0x12
	.string	"QBUR0"
	.byte	0xb
	.uahalf	0x707
	.uaword	0x47a6
	.uleb128 0x12
	.string	"QINR0"
	.byte	0xb
	.uahalf	0x708
	.uaword	0x4829
	.byte	0
	.uleb128 0x13
	.string	"_Ifx_VADC_G"
	.uahalf	0x400
	.byte	0xb
	.uahalf	0x6ed
	.uaword	0x55c9
	.uleb128 0x14
	.string	"ARBCFG"
	.byte	0xb
	.uahalf	0x6ef
	.uaword	0x4354
	.byte	0
	.uleb128 0x14
	.string	"ARBPR"
	.byte	0xb
	.uahalf	0x6f0
	.uaword	0x4396
	.byte	0x4
	.uleb128 0x14
	.string	"CHASS"
	.byte	0xb
	.uahalf	0x6f1
	.uaword	0x46e2
	.byte	0x8
	.uleb128 0x14
	.string	"RRASS"
	.byte	0xb
	.uahalf	0x6f2
	.uaword	0x49f2
	.byte	0xc
	.uleb128 0x15
	.uaword	.LASF10
	.byte	0xb
	.uahalf	0x6f3
	.uaword	0x4a0
	.byte	0x10
	.uleb128 0x14
	.string	"ICLASS"
	.byte	0xb
	.uahalf	0x6f4
	.uaword	0x55c9
	.byte	0x20
	.uleb128 0x15
	.uaword	.LASF22
	.byte	0xb
	.uahalf	0x6f5
	.uaword	0x4d0
	.byte	0x28
	.uleb128 0x14
	.string	"ALIAS"
	.byte	0xb
	.uahalf	0x6f6
	.uaword	0x4313
	.byte	0x30
	.uleb128 0x14
	.string	"reserved_34"
	.byte	0xb
	.uahalf	0x6f7
	.uaword	0x4c0
	.byte	0x34
	.uleb128 0x14
	.string	"BOUND"
	.byte	0xb
	.uahalf	0x6f8
	.uaword	0x45db
	.byte	0x38
	.uleb128 0x14
	.string	"reserved_3C"
	.byte	0xb
	.uahalf	0x6f9
	.uaword	0x4c0
	.byte	0x3c
	.uleb128 0x14
	.string	"SYNCTR"
	.byte	0xb
	.uahalf	0x6fa
	.uaword	0x4b39
	.byte	0x40
	.uleb128 0x14
	.string	"reserved_44"
	.byte	0xb
	.uahalf	0x6fb
	.uaword	0x4c0
	.byte	0x44
	.uleb128 0x14
	.string	"BFL"
	.byte	0xb
	.uahalf	0x6fc
	.uaword	0x44db
	.byte	0x48
	.uleb128 0x14
	.string	"BFLS"
	.byte	0xb
	.uahalf	0x6fd
	.uaword	0x459b
	.byte	0x4c
	.uleb128 0x14
	.string	"BFLC"
	.byte	0xb
	.uahalf	0x6fe
	.uaword	0x451a
	.byte	0x50
	.uleb128 0x14
	.string	"BFLNP"
	.byte	0xb
	.uahalf	0x6ff
	.uaword	0x455a
	.byte	0x54
	.uleb128 0x14
	.string	"reserved_58"
	.byte	0xb
	.uahalf	0x700
	.uaword	0x490
	.byte	0x58
	.uleb128 0x14
	.string	"QCTRL0"
	.byte	0xb
	.uahalf	0x701
	.uaword	0x47e7
	.byte	0x80
	.uleb128 0x14
	.string	"QMR0"
	.byte	0xb
	.uahalf	0x702
	.uaword	0x486a
	.byte	0x84
	.uleb128 0x14
	.string	"QSR0"
	.byte	0xb
	.uahalf	0x703
	.uaword	0x48aa
	.byte	0x88
	.uleb128 0x14
	.string	"Q0R0"
	.byte	0xb
	.uahalf	0x704
	.uaword	0x4766
	.byte	0x8c
	.uleb128 0x16
	.uaword	0x51a6
	.byte	0x90
	.uleb128 0x14
	.string	"reserved_94"
	.byte	0xb
	.uahalf	0x70b
	.uaword	0x480
	.byte	0x94
	.uleb128 0x14
	.string	"ASCTRL"
	.byte	0xb
	.uahalf	0x70c
	.uaword	0x43d7
	.byte	0xa0
	.uleb128 0x14
	.string	"ASMR"
	.byte	0xb
	.uahalf	0x70d
	.uaword	0x4419
	.byte	0xa4
	.uleb128 0x14
	.string	"ASSEL"
	.byte	0xb
	.uahalf	0x70e
	.uaword	0x449a
	.byte	0xa8
	.uleb128 0x14
	.string	"ASPND"
	.byte	0xb
	.uahalf	0x70f
	.uaword	0x4459
	.byte	0xac
	.uleb128 0x14
	.string	"reserved_B0"
	.byte	0xb
	.uahalf	0x710
	.uaword	0x55d9
	.byte	0xb0
	.uleb128 0x17
	.string	"CEFLAG"
	.byte	0xb
	.uahalf	0x711
	.uaword	0x465e
	.uahalf	0x100
	.uleb128 0x17
	.string	"REFLAG"
	.byte	0xb
	.uahalf	0x712
	.uaword	0x492c
	.uahalf	0x104
	.uleb128 0x17
	.string	"SEFLAG"
	.byte	0xb
	.uahalf	0x713
	.uaword	0x4a75
	.uahalf	0x108
	.uleb128 0x17
	.string	"reserved_10C"
	.byte	0xb
	.uahalf	0x714
	.uaword	0x4c0
	.uahalf	0x10c
	.uleb128 0x17
	.string	"CEFCLR"
	.byte	0xb
	.uahalf	0x715
	.uaword	0x461c
	.uahalf	0x110
	.uleb128 0x17
	.string	"REFCLR"
	.byte	0xb
	.uahalf	0x716
	.uaword	0x48ea
	.uahalf	0x114
	.uleb128 0x17
	.string	"SEFCLR"
	.byte	0xb
	.uahalf	0x717
	.uaword	0x4a33
	.uahalf	0x118
	.uleb128 0x17
	.string	"reserved_11C"
	.byte	0xb
	.uahalf	0x718
	.uaword	0x4c0
	.uahalf	0x11c
	.uleb128 0x17
	.string	"CEVNP0"
	.byte	0xb
	.uahalf	0x719
	.uaword	0x46a0
	.uahalf	0x120
	.uleb128 0x17
	.string	"reserved_124"
	.byte	0xb
	.uahalf	0x71a
	.uaword	0x480
	.uahalf	0x124
	.uleb128 0x17
	.string	"REVNP0"
	.byte	0xb
	.uahalf	0x71b
	.uaword	0x496e
	.uahalf	0x130
	.uleb128 0x17
	.string	"REVNP1"
	.byte	0xb
	.uahalf	0x71c
	.uaword	0x49b0
	.uahalf	0x134
	.uleb128 0x17
	.string	"reserved_138"
	.byte	0xb
	.uahalf	0x71d
	.uaword	0x4d0
	.uahalf	0x138
	.uleb128 0x17
	.string	"SEVNP"
	.byte	0xb
	.uahalf	0x71e
	.uaword	0x4ab7
	.uahalf	0x140
	.uleb128 0x18
	.uaword	.LASF36
	.byte	0xb
	.uahalf	0x71f
	.uaword	0x4c0
	.uahalf	0x144
	.uleb128 0x17
	.string	"SRACT"
	.byte	0xb
	.uahalf	0x720
	.uaword	0x4af8
	.uahalf	0x148
	.uleb128 0x17
	.string	"reserved_14C"
	.byte	0xb
	.uahalf	0x721
	.uaword	0x55e9
	.uahalf	0x14c
	.uleb128 0x17
	.string	"EMUXCTR"
	.byte	0xb
	.uahalf	0x722
	.uaword	0x4723
	.uahalf	0x170
	.uleb128 0x17
	.string	"reserved_174"
	.byte	0xb
	.uahalf	0x723
	.uaword	0x4c0
	.uahalf	0x174
	.uleb128 0x17
	.string	"VFR"
	.byte	0xb
	.uahalf	0x724
	.uaword	0x4b7b
	.uahalf	0x178
	.uleb128 0x17
	.string	"reserved_17C"
	.byte	0xb
	.uahalf	0x725
	.uaword	0x4c0
	.uahalf	0x17c
	.uleb128 0x17
	.string	"CHCTR"
	.byte	0xb
	.uahalf	0x726
	.uaword	0x55f9
	.uahalf	0x180
	.uleb128 0x17
	.string	"reserved_1C0"
	.byte	0xb
	.uahalf	0x727
	.uaword	0x510
	.uahalf	0x1c0
	.uleb128 0x17
	.string	"RCR"
	.byte	0xb
	.uahalf	0x728
	.uaword	0x5609
	.uahalf	0x200
	.uleb128 0x17
	.string	"reserved_240"
	.byte	0xb
	.uahalf	0x729
	.uaword	0x510
	.uahalf	0x240
	.uleb128 0x17
	.string	"RES"
	.byte	0xb
	.uahalf	0x72a
	.uaword	0x5619
	.uahalf	0x280
	.uleb128 0x17
	.string	"reserved_2C0"
	.byte	0xb
	.uahalf	0x72b
	.uaword	0x510
	.uahalf	0x2c0
	.uleb128 0x17
	.string	"RESD"
	.byte	0xb
	.uahalf	0x72c
	.uaword	0x5629
	.uahalf	0x300
	.uleb128 0x17
	.string	"reserved_340"
	.byte	0xb
	.uahalf	0x72d
	.uaword	0x5639
	.uahalf	0x340
	.byte	0
	.uleb128 0xb
	.uaword	0x4dc7
	.uaword	0x55d9
	.uleb128 0xc
	.uaword	0x474
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.uaword	0x25e
	.uaword	0x55e9
	.uleb128 0xc
	.uaword	0x474
	.byte	0x4f
	.byte	0
	.uleb128 0xb
	.uaword	0x25e
	.uaword	0x55f9
	.uleb128 0xc
	.uaword	0x474
	.byte	0x23
	.byte	0
	.uleb128 0xb
	.uaword	0x4256
	.uaword	0x5609
	.uleb128 0xc
	.uaword	0x474
	.byte	0xf
	.byte	0
	.uleb128 0xb
	.uaword	0x4f3f
	.uaword	0x5619
	.uleb128 0xc
	.uaword	0x474
	.byte	0xf
	.byte	0
	.uleb128 0xb
	.uaword	0x4f7c
	.uaword	0x5629
	.uleb128 0xc
	.uaword	0x474
	.byte	0xf
	.byte	0
	.uleb128 0xb
	.uaword	0x4fb9
	.uaword	0x5639
	.uleb128 0xc
	.uaword	0x474
	.byte	0xf
	.byte	0
	.uleb128 0xb
	.uaword	0x25e
	.uaword	0x5649
	.uleb128 0xc
	.uaword	0x474
	.byte	0xbf
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G"
	.byte	0xb
	.uahalf	0x72e
	.uaword	0x565c
	.uleb128 0x19
	.uaword	0x51cc
	.uleb128 0x13
	.string	"_Ifx_VADC_SHS"
	.uahalf	0x200
	.byte	0xb
	.uahalf	0x731
	.uaword	0x5743
	.uleb128 0x15
	.uaword	.LASF30
	.byte	0xb
	.uahalf	0x733
	.uaword	0x4d0
	.byte	0
	.uleb128 0x14
	.string	"ID"
	.byte	0xb
	.uahalf	0x734
	.uaword	0x50c1
	.byte	0x8
	.uleb128 0x15
	.uaword	.LASF37
	.byte	0xb
	.uahalf	0x735
	.uaword	0x5743
	.byte	0xc
	.uleb128 0x14
	.string	"SHSCFG"
	.byte	0xb
	.uahalf	0x736
	.uaword	0x5101
	.byte	0x40
	.uleb128 0x14
	.string	"STEPCFG"
	.byte	0xb
	.uahalf	0x737
	.uaword	0x5145
	.byte	0x44
	.uleb128 0x15
	.uaword	.LASF38
	.byte	0xb
	.uahalf	0x738
	.uaword	0x4e0
	.byte	0x48
	.uleb128 0x14
	.string	"TIMCFG"
	.byte	0xb
	.uahalf	0x739
	.uaword	0x5753
	.byte	0x80
	.uleb128 0x15
	.uaword	.LASF39
	.byte	0xb
	.uahalf	0x73a
	.uaword	0x520
	.byte	0x90
	.uleb128 0x14
	.string	"CALCTR"
	.byte	0xb
	.uahalf	0x73b
	.uaword	0x4ff7
	.byte	0xbc
	.uleb128 0x14
	.string	"CALGC"
	.byte	0xb
	.uahalf	0x73c
	.uaword	0x5763
	.byte	0xc0
	.uleb128 0x14
	.string	"reserved_D0"
	.byte	0xb
	.uahalf	0x73d
	.uaword	0x4a0
	.byte	0xd0
	.uleb128 0x14
	.string	"CALOC"
	.byte	0xb
	.uahalf	0x73e
	.uaword	0x5773
	.byte	0xe0
	.uleb128 0x14
	.string	"reserved_F0"
	.byte	0xb
	.uahalf	0x73f
	.uaword	0x5783
	.byte	0xf0
	.byte	0
	.uleb128 0xb
	.uaword	0x25e
	.uaword	0x5753
	.uleb128 0xc
	.uaword	0x474
	.byte	0x33
	.byte	0
	.uleb128 0xb
	.uaword	0x518a
	.uaword	0x5763
	.uleb128 0xc
	.uaword	0x474
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.uaword	0x503b
	.uaword	0x5773
	.uleb128 0xc
	.uaword	0x474
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.uaword	0x507e
	.uaword	0x5783
	.uleb128 0xc
	.uaword	0x474
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.uaword	0x25e
	.uaword	0x5794
	.uleb128 0x1a
	.uaword	0x474
	.uahalf	0x10f
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_SHS"
	.byte	0xb
	.uahalf	0x740
	.uaword	0x57a9
	.uleb128 0x19
	.uaword	0x5661
	.uleb128 0x13
	.string	"_Ifx_VADC"
	.uahalf	0x6000
	.byte	0xb
	.uahalf	0x74d
	.uaword	0x5afd
	.uleb128 0x14
	.string	"CLC"
	.byte	0xb
	.uahalf	0x74f
	.uaword	0x4295
	.byte	0
	.uleb128 0x15
	.uaword	.LASF6
	.byte	0xb
	.uahalf	0x750
	.uaword	0x4c0
	.byte	0x4
	.uleb128 0x14
	.string	"ID"
	.byte	0xb
	.uahalf	0x751
	.uaword	0x4e07
	.byte	0x8
	.uleb128 0x15
	.uaword	.LASF37
	.byte	0xb
	.uahalf	0x752
	.uaword	0x4f0
	.byte	0xc
	.uleb128 0x14
	.string	"OCS"
	.byte	0xb
	.uahalf	0x753
	.uaword	0x4f02
	.byte	0x28
	.uleb128 0x14
	.string	"KRSTCLR"
	.byte	0xb
	.uahalf	0x754
	.uaword	0x4ec1
	.byte	0x2c
	.uleb128 0x14
	.string	"KRST1"
	.byte	0xb
	.uahalf	0x755
	.uaword	0x4e82
	.byte	0x30
	.uleb128 0x14
	.string	"KRST0"
	.byte	0xb
	.uahalf	0x756
	.uaword	0x4e43
	.byte	0x34
	.uleb128 0x14
	.string	"reserved_38"
	.byte	0xb
	.uahalf	0x757
	.uaword	0x4c0
	.byte	0x38
	.uleb128 0x14
	.string	"ACCEN0"
	.byte	0xb
	.uahalf	0x758
	.uaword	0x4092
	.byte	0x3c
	.uleb128 0x14
	.string	"reserved_40"
	.byte	0xb
	.uahalf	0x759
	.uaword	0x510
	.byte	0x40
	.uleb128 0x14
	.string	"GLOBCFG"
	.byte	0xb
	.uahalf	0x75a
	.uaword	0x4bfd
	.byte	0x80
	.uleb128 0x14
	.string	"reserved_84"
	.byte	0xb
	.uahalf	0x75b
	.uaword	0x4c0
	.byte	0x84
	.uleb128 0x14
	.string	"ACCPROT0"
	.byte	0xb
	.uahalf	0x75c
	.uaword	0x40d2
	.byte	0x88
	.uleb128 0x14
	.string	"ACCPROT1"
	.byte	0xb
	.uahalf	0x75d
	.uaword	0x4114
	.byte	0x8c
	.uleb128 0x15
	.uaword	.LASF39
	.byte	0xb
	.uahalf	0x75e
	.uaword	0x4a0
	.byte	0x90
	.uleb128 0x14
	.string	"GLOBICLASS"
	.byte	0xb
	.uahalf	0x75f
	.uaword	0x55c9
	.byte	0xa0
	.uleb128 0x14
	.string	"reserved_A8"
	.byte	0xb
	.uahalf	0x760
	.uaword	0x4a0
	.byte	0xa8
	.uleb128 0x14
	.string	"GLOBBOUND"
	.byte	0xb
	.uahalf	0x761
	.uaword	0x4bba
	.byte	0xb8
	.uleb128 0x14
	.string	"reserved_BC"
	.byte	0xb
	.uahalf	0x762
	.uaword	0x55e9
	.byte	0xbc
	.uleb128 0x14
	.string	"GLOBEFLAG"
	.byte	0xb
	.uahalf	0x763
	.uaword	0x4c3e
	.byte	0xe0
	.uleb128 0x14
	.string	"reserved_E4"
	.byte	0xb
	.uahalf	0x764
	.uaword	0x5afd
	.byte	0xe4
	.uleb128 0x17
	.string	"GLOBEVNP"
	.byte	0xb
	.uahalf	0x765
	.uaword	0x4c81
	.uahalf	0x140
	.uleb128 0x18
	.uaword	.LASF36
	.byte	0xb
	.uahalf	0x766
	.uaword	0x4f0
	.uahalf	0x144
	.uleb128 0x17
	.string	"GLOBTF"
	.byte	0xb
	.uahalf	0x767
	.uaword	0x4d87
	.uahalf	0x160
	.uleb128 0x17
	.string	"reserved_164"
	.byte	0xb
	.uahalf	0x768
	.uaword	0x4f0
	.uahalf	0x164
	.uleb128 0x17
	.string	"BRSSEL"
	.byte	0xb
	.uahalf	0x769
	.uaword	0x5b0d
	.uahalf	0x180
	.uleb128 0x17
	.string	"reserved_1A0"
	.byte	0xb
	.uahalf	0x76a
	.uaword	0x500
	.uahalf	0x1a0
	.uleb128 0x17
	.string	"BRSPND"
	.byte	0xb
	.uahalf	0x76b
	.uaword	0x5b1d
	.uahalf	0x1c0
	.uleb128 0x17
	.string	"reserved_1E0"
	.byte	0xb
	.uahalf	0x76c
	.uaword	0x500
	.uahalf	0x1e0
	.uleb128 0x17
	.string	"BRSCTRL"
	.byte	0xb
	.uahalf	0x76d
	.uaword	0x4156
	.uahalf	0x200
	.uleb128 0x17
	.string	"BRSMR"
	.byte	0xb
	.uahalf	0x76e
	.uaword	0x4197
	.uahalf	0x204
	.uleb128 0x17
	.string	"reserved_208"
	.byte	0xb
	.uahalf	0x76f
	.uaword	0x5b2d
	.uahalf	0x208
	.uleb128 0x17
	.string	"GLOBRCR"
	.byte	0xb
	.uahalf	0x770
	.uaword	0x4cc3
	.uahalf	0x280
	.uleb128 0x17
	.string	"reserved_284"
	.byte	0xb
	.uahalf	0x771
	.uaword	0x5b3d
	.uahalf	0x284
	.uleb128 0x17
	.string	"GLOBRES"
	.byte	0xb
	.uahalf	0x772
	.uaword	0x4d04
	.uahalf	0x300
	.uleb128 0x17
	.string	"reserved_304"
	.byte	0xb
	.uahalf	0x773
	.uaword	0x5b3d
	.uahalf	0x304
	.uleb128 0x17
	.string	"GLOBRESD"
	.byte	0xb
	.uahalf	0x774
	.uaword	0x4d45
	.uahalf	0x380
	.uleb128 0x17
	.string	"reserved_384"
	.byte	0xb
	.uahalf	0x775
	.uaword	0x5b4d
	.uahalf	0x384
	.uleb128 0x17
	.string	"EMUXSEL"
	.byte	0xb
	.uahalf	0x776
	.uaword	0x42d2
	.uahalf	0x3f0
	.uleb128 0x17
	.string	"reserved_3F4"
	.byte	0xb
	.uahalf	0x777
	.uaword	0x5b5d
	.uahalf	0x3f4
	.uleb128 0x17
	.string	"G"
	.byte	0xb
	.uahalf	0x778
	.uaword	0x5b7d
	.uahalf	0x480
	.uleb128 0x17
	.string	"reserved_2480"
	.byte	0xb
	.uahalf	0x779
	.uaword	0x5b82
	.uahalf	0x2480
	.uleb128 0x17
	.string	"SHS"
	.byte	0xb
	.uahalf	0x77a
	.uaword	0x5ba3
	.uahalf	0x5000
	.uleb128 0x17
	.string	"reserved_5400"
	.byte	0xb
	.uahalf	0x77b
	.uaword	0x5ba8
	.uahalf	0x5400
	.byte	0
	.uleb128 0xb
	.uaword	0x25e
	.uaword	0x5b0d
	.uleb128 0xc
	.uaword	0x474
	.byte	0x5b
	.byte	0
	.uleb128 0xb
	.uaword	0x4216
	.uaword	0x5b1d
	.uleb128 0xc
	.uaword	0x474
	.byte	0x7
	.byte	0
	.uleb128 0xb
	.uaword	0x41d6
	.uaword	0x5b2d
	.uleb128 0xc
	.uaword	0x474
	.byte	0x7
	.byte	0
	.uleb128 0xb
	.uaword	0x25e
	.uaword	0x5b3d
	.uleb128 0xc
	.uaword	0x474
	.byte	0x77
	.byte	0
	.uleb128 0xb
	.uaword	0x25e
	.uaword	0x5b4d
	.uleb128 0xc
	.uaword	0x474
	.byte	0x7b
	.byte	0
	.uleb128 0xb
	.uaword	0x25e
	.uaword	0x5b5d
	.uleb128 0xc
	.uaword	0x474
	.byte	0x6b
	.byte	0
	.uleb128 0xb
	.uaword	0x25e
	.uaword	0x5b6d
	.uleb128 0xc
	.uaword	0x474
	.byte	0x8b
	.byte	0
	.uleb128 0xb
	.uaword	0x5649
	.uaword	0x5b7d
	.uleb128 0xc
	.uaword	0x474
	.byte	0x7
	.byte	0
	.uleb128 0x19
	.uaword	0x5b6d
	.uleb128 0xb
	.uaword	0x25e
	.uaword	0x5b93
	.uleb128 0x1a
	.uaword	0x474
	.uahalf	0x2b7f
	.byte	0
	.uleb128 0xb
	.uaword	0x5794
	.uaword	0x5ba3
	.uleb128 0xc
	.uaword	0x474
	.byte	0x1
	.byte	0
	.uleb128 0x19
	.uaword	0x5b93
	.uleb128 0xb
	.uaword	0x25e
	.uaword	0x5bb9
	.uleb128 0x1a
	.uaword	0x474
	.uahalf	0xbff
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC"
	.byte	0xb
	.uahalf	0x77c
	.uaword	0x5bca
	.uleb128 0x19
	.uaword	0x57ae
	.uleb128 0x6
	.string	"_Ifx_P_ACCEN0_Bits"
	.byte	0x4
	.byte	0xc
	.byte	0x2d
	.uaword	0x5de1
	.uleb128 0x7
	.string	"EN0"
	.byte	0xc
	.byte	0x2f
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x7
	.string	"EN1"
	.byte	0xc
	.byte	0x30
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x7
	.string	"EN2"
	.byte	0xc
	.byte	0x31
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x7
	.string	"EN3"
	.byte	0xc
	.byte	0x32
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x7
	.string	"EN4"
	.byte	0xc
	.byte	0x33
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x7
	.string	"EN5"
	.byte	0xc
	.byte	0x34
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x7
	.string	"EN6"
	.byte	0xc
	.byte	0x35
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x7
	.string	"EN7"
	.byte	0xc
	.byte	0x36
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x7
	.string	"EN8"
	.byte	0xc
	.byte	0x37
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x7
	.string	"EN9"
	.byte	0xc
	.byte	0x38
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x7
	.string	"EN10"
	.byte	0xc
	.byte	0x39
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x7
	.string	"EN11"
	.byte	0xc
	.byte	0x3a
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x7
	.string	"EN12"
	.byte	0xc
	.byte	0x3b
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x7
	.string	"EN13"
	.byte	0xc
	.byte	0x3c
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x7
	.string	"EN14"
	.byte	0xc
	.byte	0x3d
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x7
	.string	"EN15"
	.byte	0xc
	.byte	0x3e
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.string	"EN16"
	.byte	0xc
	.byte	0x3f
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x7
	.string	"EN17"
	.byte	0xc
	.byte	0x40
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0x7
	.string	"EN18"
	.byte	0xc
	.byte	0x41
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0x7
	.string	"EN19"
	.byte	0xc
	.byte	0x42
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x7
	.string	"EN20"
	.byte	0xc
	.byte	0x43
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0x7
	.string	"EN21"
	.byte	0xc
	.byte	0x44
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0x7
	.string	"EN22"
	.byte	0xc
	.byte	0x45
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0x7
	.string	"EN23"
	.byte	0xc
	.byte	0x46
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.string	"EN24"
	.byte	0xc
	.byte	0x47
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x7
	.string	"EN25"
	.byte	0xc
	.byte	0x48
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x7
	.string	"EN26"
	.byte	0xc
	.byte	0x49
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x7
	.string	"EN27"
	.byte	0xc
	.byte	0x4a
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.string	"EN28"
	.byte	0xc
	.byte	0x4b
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x7
	.string	"EN29"
	.byte	0xc
	.byte	0x4c
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.string	"EN30"
	.byte	0xc
	.byte	0x4d
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.string	"EN31"
	.byte	0xc
	.byte	0x4e
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_P_ACCEN0_Bits"
	.byte	0xc
	.byte	0x4f
	.uaword	0x5bcf
	.uleb128 0x6
	.string	"_Ifx_P_ACCEN1_Bits"
	.byte	0x4
	.byte	0xc
	.byte	0x52
	.uaword	0x5e25
	.uleb128 0x8
	.uaword	.LASF30
	.byte	0xc
	.byte	0x54
	.uaword	0x19b
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_P_ACCEN1_Bits"
	.byte	0xc
	.byte	0x55
	.uaword	0x5dfa
	.uleb128 0x6
	.string	"_Ifx_P_ESR_Bits"
	.byte	0x4
	.byte	0xc
	.byte	0x58
	.uaword	0x5f5c
	.uleb128 0x7
	.string	"EN0"
	.byte	0xc
	.byte	0x5a
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x7
	.string	"EN1"
	.byte	0xc
	.byte	0x5b
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x7
	.string	"EN2"
	.byte	0xc
	.byte	0x5c
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x7
	.string	"EN3"
	.byte	0xc
	.byte	0x5d
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x7
	.string	"EN4"
	.byte	0xc
	.byte	0x5e
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x7
	.string	"EN5"
	.byte	0xc
	.byte	0x5f
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x7
	.string	"EN6"
	.byte	0xc
	.byte	0x60
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x7
	.string	"EN7"
	.byte	0xc
	.byte	0x61
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x7
	.string	"EN8"
	.byte	0xc
	.byte	0x62
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x7
	.string	"EN9"
	.byte	0xc
	.byte	0x63
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x7
	.string	"EN10"
	.byte	0xc
	.byte	0x64
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x7
	.string	"EN11"
	.byte	0xc
	.byte	0x65
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x7
	.string	"EN12"
	.byte	0xc
	.byte	0x66
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x7
	.string	"EN13"
	.byte	0xc
	.byte	0x67
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x7
	.string	"EN14"
	.byte	0xc
	.byte	0x68
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x7
	.string	"EN15"
	.byte	0xc
	.byte	0x69
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.uaword	.LASF19
	.byte	0xc
	.byte	0x6a
	.uaword	0x19b
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_P_ESR_Bits"
	.byte	0xc
	.byte	0x6b
	.uaword	0x5e3e
	.uleb128 0x6
	.string	"_Ifx_P_ID_Bits"
	.byte	0x4
	.byte	0xc
	.byte	0x6e
	.uaword	0x5fbe
	.uleb128 0x7
	.string	"MODREV"
	.byte	0xc
	.byte	0x70
	.uaword	0x19b
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x7
	.string	"MODTYPE"
	.byte	0xc
	.byte	0x71
	.uaword	0x19b
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.uaword	.LASF33
	.byte	0xc
	.byte	0x72
	.uaword	0x19b
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_P_ID_Bits"
	.byte	0xc
	.byte	0x73
	.uaword	0x5f72
	.uleb128 0x6
	.string	"_Ifx_P_IN_Bits"
	.byte	0x4
	.byte	0xc
	.byte	0x76
	.uaword	0x60e0
	.uleb128 0x7
	.string	"P0"
	.byte	0xc
	.byte	0x78
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x7
	.string	"P1"
	.byte	0xc
	.byte	0x79
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x7
	.string	"P2"
	.byte	0xc
	.byte	0x7a
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x7
	.string	"P3"
	.byte	0xc
	.byte	0x7b
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x7
	.string	"P4"
	.byte	0xc
	.byte	0x7c
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x7
	.string	"P5"
	.byte	0xc
	.byte	0x7d
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x7
	.string	"P6"
	.byte	0xc
	.byte	0x7e
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x7
	.string	"P7"
	.byte	0xc
	.byte	0x7f
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x7
	.string	"P8"
	.byte	0xc
	.byte	0x80
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x7
	.string	"P9"
	.byte	0xc
	.byte	0x81
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x7
	.string	"P10"
	.byte	0xc
	.byte	0x82
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x7
	.string	"P11"
	.byte	0xc
	.byte	0x83
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x7
	.string	"P12"
	.byte	0xc
	.byte	0x84
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x7
	.string	"P13"
	.byte	0xc
	.byte	0x85
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x7
	.string	"P14"
	.byte	0xc
	.byte	0x86
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x7
	.string	"P15"
	.byte	0xc
	.byte	0x87
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.uaword	.LASF19
	.byte	0xc
	.byte	0x88
	.uaword	0x19b
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_P_IN_Bits"
	.byte	0xc
	.byte	0x89
	.uaword	0x5fd3
	.uleb128 0x6
	.string	"_Ifx_P_IOCR0_Bits"
	.byte	0x4
	.byte	0xc
	.byte	0x8c
	.uaword	0x6188
	.uleb128 0x8
	.uaword	.LASF30
	.byte	0xc
	.byte	0x8e
	.uaword	0x19b
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0x7
	.string	"PC0"
	.byte	0xc
	.byte	0x8f
	.uaword	0x19b
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0xc
	.byte	0x90
	.uaword	0x19b
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0x7
	.string	"PC1"
	.byte	0xc
	.byte	0x91
	.uaword	0x19b
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.uaword	.LASF19
	.byte	0xc
	.byte	0x92
	.uaword	0x19b
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0x7
	.string	"PC2"
	.byte	0xc
	.byte	0x93
	.uaword	0x19b
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.uaword	.LASF4
	.byte	0xc
	.byte	0x94
	.uaword	0x19b
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0x7
	.string	"PC3"
	.byte	0xc
	.byte	0x95
	.uaword	0x19b
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_P_IOCR0_Bits"
	.byte	0xc
	.byte	0x96
	.uaword	0x60f5
	.uleb128 0x6
	.string	"_Ifx_P_IOCR12_Bits"
	.byte	0x4
	.byte	0xc
	.byte	0x99
	.uaword	0x6238
	.uleb128 0x8
	.uaword	.LASF30
	.byte	0xc
	.byte	0x9b
	.uaword	0x19b
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0x7
	.string	"PC12"
	.byte	0xc
	.byte	0x9c
	.uaword	0x19b
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0xc
	.byte	0x9d
	.uaword	0x19b
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0x7
	.string	"PC13"
	.byte	0xc
	.byte	0x9e
	.uaword	0x19b
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.uaword	.LASF19
	.byte	0xc
	.byte	0x9f
	.uaword	0x19b
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0x7
	.string	"PC14"
	.byte	0xc
	.byte	0xa0
	.uaword	0x19b
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.uaword	.LASF4
	.byte	0xc
	.byte	0xa1
	.uaword	0x19b
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0x7
	.string	"PC15"
	.byte	0xc
	.byte	0xa2
	.uaword	0x19b
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_P_IOCR12_Bits"
	.byte	0xc
	.byte	0xa3
	.uaword	0x61a0
	.uleb128 0x6
	.string	"_Ifx_P_IOCR4_Bits"
	.byte	0x4
	.byte	0xc
	.byte	0xa6
	.uaword	0x62e4
	.uleb128 0x8
	.uaword	.LASF30
	.byte	0xc
	.byte	0xa8
	.uaword	0x19b
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0x7
	.string	"PC4"
	.byte	0xc
	.byte	0xa9
	.uaword	0x19b
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0xc
	.byte	0xaa
	.uaword	0x19b
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0x7
	.string	"PC5"
	.byte	0xc
	.byte	0xab
	.uaword	0x19b
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.uaword	.LASF19
	.byte	0xc
	.byte	0xac
	.uaword	0x19b
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0x7
	.string	"PC6"
	.byte	0xc
	.byte	0xad
	.uaword	0x19b
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.uaword	.LASF4
	.byte	0xc
	.byte	0xae
	.uaword	0x19b
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0x7
	.string	"PC7"
	.byte	0xc
	.byte	0xaf
	.uaword	0x19b
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_P_IOCR4_Bits"
	.byte	0xc
	.byte	0xb0
	.uaword	0x6251
	.uleb128 0x6
	.string	"_Ifx_P_IOCR8_Bits"
	.byte	0x4
	.byte	0xc
	.byte	0xb3
	.uaword	0x6391
	.uleb128 0x8
	.uaword	.LASF30
	.byte	0xc
	.byte	0xb5
	.uaword	0x19b
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0x7
	.string	"PC8"
	.byte	0xc
	.byte	0xb6
	.uaword	0x19b
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0xc
	.byte	0xb7
	.uaword	0x19b
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0x7
	.string	"PC9"
	.byte	0xc
	.byte	0xb8
	.uaword	0x19b
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.uaword	.LASF19
	.byte	0xc
	.byte	0xb9
	.uaword	0x19b
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0x7
	.string	"PC10"
	.byte	0xc
	.byte	0xba
	.uaword	0x19b
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.uaword	.LASF4
	.byte	0xc
	.byte	0xbb
	.uaword	0x19b
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0x7
	.string	"PC11"
	.byte	0xc
	.byte	0xbc
	.uaword	0x19b
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_P_IOCR8_Bits"
	.byte	0xc
	.byte	0xbd
	.uaword	0x62fc
	.uleb128 0x6
	.string	"_Ifx_P_LPCR0_Bits"
	.byte	0x4
	.byte	0xc
	.byte	0xc0
	.uaword	0x63f1
	.uleb128 0x8
	.uaword	.LASF30
	.byte	0xc
	.byte	0xc2
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x7
	.string	"PS1"
	.byte	0xc
	.byte	0xc3
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x8
	.uaword	.LASF13
	.byte	0xc
	.byte	0xc4
	.uaword	0x19b
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_P_LPCR0_Bits"
	.byte	0xc
	.byte	0xc5
	.uaword	0x63a9
	.uleb128 0x6
	.string	"_Ifx_P_LPCR1_Bits"
	.byte	0x4
	.byte	0xc
	.byte	0xc8
	.uaword	0x6451
	.uleb128 0x8
	.uaword	.LASF30
	.byte	0xc
	.byte	0xca
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x7
	.string	"PS1"
	.byte	0xc
	.byte	0xcb
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x8
	.uaword	.LASF13
	.byte	0xc
	.byte	0xcc
	.uaword	0x19b
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_P_LPCR1_Bits"
	.byte	0xc
	.byte	0xcd
	.uaword	0x6409
	.uleb128 0x6
	.string	"_Ifx_P_LPCR1_P21_Bits"
	.byte	0x4
	.byte	0xc
	.byte	0xd0
	.uaword	0x64e1
	.uleb128 0x7
	.string	"RDIS_CTRL"
	.byte	0xc
	.byte	0xd2
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x7
	.string	"RX_DIS"
	.byte	0xc
	.byte	0xd3
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x7
	.string	"TERM"
	.byte	0xc
	.byte	0xd4
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x7
	.string	"LRXTERM"
	.byte	0xc
	.byte	0xd5
	.uaword	0x19b
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0xc
	.byte	0xd6
	.uaword	0x19b
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_P_LPCR1_P21_Bits"
	.byte	0xc
	.byte	0xd7
	.uaword	0x6469
	.uleb128 0x6
	.string	"_Ifx_P_LPCR2_Bits"
	.byte	0x4
	.byte	0xc
	.byte	0xda
	.uaword	0x65b4
	.uleb128 0x8
	.uaword	.LASF30
	.byte	0xc
	.byte	0xdc
	.uaword	0x19b
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x7
	.string	"LVDSR"
	.byte	0xc
	.byte	0xdd
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x7
	.string	"LVDSRL"
	.byte	0xc
	.byte	0xde
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x8
	.uaword	.LASF10
	.byte	0xc
	.byte	0xdf
	.uaword	0x19b
	.byte	0x4
	.byte	0x2
	.byte	0x14
	.byte	0
	.uleb128 0x7
	.string	"TDIS_CTRL"
	.byte	0xc
	.byte	0xe0
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x7
	.string	"TX_DIS"
	.byte	0xc
	.byte	0xe1
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x7
	.string	"TX_PD"
	.byte	0xc
	.byte	0xe2
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x7
	.string	"TX_PWDPD"
	.byte	0xc
	.byte	0xe3
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.uaword	.LASF19
	.byte	0xc
	.byte	0xe4
	.uaword	0x19b
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_P_LPCR2_Bits"
	.byte	0xc
	.byte	0xe5
	.uaword	0x64fd
	.uleb128 0x6
	.string	"_Ifx_P_OMCR0_Bits"
	.byte	0x4
	.byte	0xc
	.byte	0xe8
	.uaword	0x6645
	.uleb128 0x8
	.uaword	.LASF30
	.byte	0xc
	.byte	0xea
	.uaword	0x19b
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.string	"PCL0"
	.byte	0xc
	.byte	0xeb
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x7
	.string	"PCL1"
	.byte	0xc
	.byte	0xec
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0x7
	.string	"PCL2"
	.byte	0xc
	.byte	0xed
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0x7
	.string	"PCL3"
	.byte	0xc
	.byte	0xee
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x8
	.uaword	.LASF18
	.byte	0xc
	.byte	0xef
	.uaword	0x19b
	.byte	0x4
	.byte	0xc
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_P_OMCR0_Bits"
	.byte	0xc
	.byte	0xf0
	.uaword	0x65cc
	.uleb128 0x6
	.string	"_Ifx_P_OMCR12_Bits"
	.byte	0x4
	.byte	0xc
	.byte	0xf3
	.uaword	0x66cc
	.uleb128 0x8
	.uaword	.LASF30
	.byte	0xc
	.byte	0xf5
	.uaword	0x19b
	.byte	0x4
	.byte	0x1c
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.string	"PCL12"
	.byte	0xc
	.byte	0xf6
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x7
	.string	"PCL13"
	.byte	0xc
	.byte	0xf7
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.string	"PCL14"
	.byte	0xc
	.byte	0xf8
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.string	"PCL15"
	.byte	0xc
	.byte	0xf9
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_P_OMCR12_Bits"
	.byte	0xc
	.byte	0xfa
	.uaword	0x665d
	.uleb128 0x6
	.string	"_Ifx_P_OMCR4_Bits"
	.byte	0x4
	.byte	0xc
	.byte	0xfd
	.uaword	0x6763
	.uleb128 0x8
	.uaword	.LASF30
	.byte	0xc
	.byte	0xff
	.uaword	0x19b
	.byte	0x4
	.byte	0x14
	.byte	0xc
	.byte	0
	.uleb128 0xe
	.string	"PCL4"
	.byte	0xc
	.uahalf	0x100
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0xe
	.string	"PCL5"
	.byte	0xc
	.uahalf	0x101
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0xe
	.string	"PCL6"
	.byte	0xc
	.uahalf	0x102
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0xe
	.string	"PCL7"
	.byte	0xc
	.uahalf	0x103
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.uaword	.LASF4
	.byte	0xc
	.uahalf	0x104
	.uaword	0x19b
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_P_OMCR4_Bits"
	.byte	0xc
	.uahalf	0x105
	.uaword	0x66e5
	.uleb128 0x10
	.string	"_Ifx_P_OMCR8_Bits"
	.byte	0x4
	.byte	0xc
	.uahalf	0x108
	.uaword	0x67fe
	.uleb128 0xd
	.uaword	.LASF30
	.byte	0xc
	.uahalf	0x10a
	.uaword	0x19b
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.string	"PCL8"
	.byte	0xc
	.uahalf	0x10b
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xe
	.string	"PCL9"
	.byte	0xc
	.uahalf	0x10c
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xe
	.string	"PCL10"
	.byte	0xc
	.uahalf	0x10d
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xe
	.string	"PCL11"
	.byte	0xc
	.uahalf	0x10e
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.uaword	.LASF22
	.byte	0xc
	.uahalf	0x10f
	.uaword	0x19b
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_P_OMCR8_Bits"
	.byte	0xc
	.uahalf	0x110
	.uaword	0x677c
	.uleb128 0x10
	.string	"_Ifx_P_OMCR_Bits"
	.byte	0x4
	.byte	0xc
	.uahalf	0x113
	.uaword	0x6958
	.uleb128 0xd
	.uaword	.LASF30
	.byte	0xc
	.uahalf	0x115
	.uaword	0x19b
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.string	"PCL0"
	.byte	0xc
	.uahalf	0x116
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xe
	.string	"PCL1"
	.byte	0xc
	.uahalf	0x117
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xe
	.string	"PCL2"
	.byte	0xc
	.uahalf	0x118
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xe
	.string	"PCL3"
	.byte	0xc
	.uahalf	0x119
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xe
	.string	"PCL4"
	.byte	0xc
	.uahalf	0x11a
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0xe
	.string	"PCL5"
	.byte	0xc
	.uahalf	0x11b
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0xe
	.string	"PCL6"
	.byte	0xc
	.uahalf	0x11c
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0xe
	.string	"PCL7"
	.byte	0xc
	.uahalf	0x11d
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.string	"PCL8"
	.byte	0xc
	.uahalf	0x11e
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xe
	.string	"PCL9"
	.byte	0xc
	.uahalf	0x11f
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xe
	.string	"PCL10"
	.byte	0xc
	.uahalf	0x120
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xe
	.string	"PCL11"
	.byte	0xc
	.uahalf	0x121
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.string	"PCL12"
	.byte	0xc
	.uahalf	0x122
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xe
	.string	"PCL13"
	.byte	0xc
	.uahalf	0x123
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xe
	.string	"PCL14"
	.byte	0xc
	.uahalf	0x124
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.string	"PCL15"
	.byte	0xc
	.uahalf	0x125
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_P_OMCR_Bits"
	.byte	0xc
	.uahalf	0x126
	.uaword	0x6817
	.uleb128 0x10
	.string	"_Ifx_P_OMR_Bits"
	.byte	0x4
	.byte	0xc
	.uahalf	0x129
	.uaword	0x6ba6
	.uleb128 0xe
	.string	"PS0"
	.byte	0xc
	.uahalf	0x12b
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.string	"PS1"
	.byte	0xc
	.uahalf	0x12c
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.string	"PS2"
	.byte	0xc
	.uahalf	0x12d
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.string	"PS3"
	.byte	0xc
	.uahalf	0x12e
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.string	"PS4"
	.byte	0xc
	.uahalf	0x12f
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xe
	.string	"PS5"
	.byte	0xc
	.uahalf	0x130
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xe
	.string	"PS6"
	.byte	0xc
	.uahalf	0x131
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xe
	.string	"PS7"
	.byte	0xc
	.uahalf	0x132
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.string	"PS8"
	.byte	0xc
	.uahalf	0x133
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xe
	.string	"PS9"
	.byte	0xc
	.uahalf	0x134
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xe
	.string	"PS10"
	.byte	0xc
	.uahalf	0x135
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xe
	.string	"PS11"
	.byte	0xc
	.uahalf	0x136
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xe
	.string	"PS12"
	.byte	0xc
	.uahalf	0x137
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xe
	.string	"PS13"
	.byte	0xc
	.uahalf	0x138
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xe
	.string	"PS14"
	.byte	0xc
	.uahalf	0x139
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xe
	.string	"PS15"
	.byte	0xc
	.uahalf	0x13a
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.string	"PCL0"
	.byte	0xc
	.uahalf	0x13b
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xe
	.string	"PCL1"
	.byte	0xc
	.uahalf	0x13c
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xe
	.string	"PCL2"
	.byte	0xc
	.uahalf	0x13d
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xe
	.string	"PCL3"
	.byte	0xc
	.uahalf	0x13e
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xe
	.string	"PCL4"
	.byte	0xc
	.uahalf	0x13f
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0xe
	.string	"PCL5"
	.byte	0xc
	.uahalf	0x140
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0xe
	.string	"PCL6"
	.byte	0xc
	.uahalf	0x141
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0xe
	.string	"PCL7"
	.byte	0xc
	.uahalf	0x142
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.string	"PCL8"
	.byte	0xc
	.uahalf	0x143
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xe
	.string	"PCL9"
	.byte	0xc
	.uahalf	0x144
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xe
	.string	"PCL10"
	.byte	0xc
	.uahalf	0x145
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xe
	.string	"PCL11"
	.byte	0xc
	.uahalf	0x146
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.string	"PCL12"
	.byte	0xc
	.uahalf	0x147
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xe
	.string	"PCL13"
	.byte	0xc
	.uahalf	0x148
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xe
	.string	"PCL14"
	.byte	0xc
	.uahalf	0x149
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.string	"PCL15"
	.byte	0xc
	.uahalf	0x14a
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_P_OMR_Bits"
	.byte	0xc
	.uahalf	0x14b
	.uaword	0x6970
	.uleb128 0x10
	.string	"_Ifx_P_OMSR0_Bits"
	.byte	0x4
	.byte	0xc
	.uahalf	0x14e
	.uaword	0x6c29
	.uleb128 0xe
	.string	"PS0"
	.byte	0xc
	.uahalf	0x150
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.string	"PS1"
	.byte	0xc
	.uahalf	0x151
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.string	"PS2"
	.byte	0xc
	.uahalf	0x152
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.string	"PS3"
	.byte	0xc
	.uahalf	0x153
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xd
	.uaword	.LASF6
	.byte	0xc
	.uahalf	0x154
	.uaword	0x19b
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_P_OMSR0_Bits"
	.byte	0xc
	.uahalf	0x155
	.uaword	0x6bbd
	.uleb128 0x10
	.string	"_Ifx_P_OMSR12_Bits"
	.byte	0x4
	.byte	0xc
	.uahalf	0x158
	.uaword	0x6cc3
	.uleb128 0xd
	.uaword	.LASF30
	.byte	0xc
	.uahalf	0x15a
	.uaword	0x19b
	.byte	0x4
	.byte	0xc
	.byte	0x14
	.byte	0
	.uleb128 0xe
	.string	"PS12"
	.byte	0xc
	.uahalf	0x15b
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xe
	.string	"PS13"
	.byte	0xc
	.uahalf	0x15c
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xe
	.string	"PS14"
	.byte	0xc
	.uahalf	0x15d
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xe
	.string	"PS15"
	.byte	0xc
	.uahalf	0x15e
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.uaword	.LASF19
	.byte	0xc
	.uahalf	0x15f
	.uaword	0x19b
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_P_OMSR12_Bits"
	.byte	0xc
	.uahalf	0x160
	.uaword	0x6c42
	.uleb128 0x10
	.string	"_Ifx_P_OMSR4_Bits"
	.byte	0x4
	.byte	0xc
	.uahalf	0x163
	.uaword	0x6d59
	.uleb128 0xd
	.uaword	.LASF30
	.byte	0xc
	.uahalf	0x165
	.uaword	0x19b
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.string	"PS4"
	.byte	0xc
	.uahalf	0x166
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xe
	.string	"PS5"
	.byte	0xc
	.uahalf	0x167
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xe
	.string	"PS6"
	.byte	0xc
	.uahalf	0x168
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xe
	.string	"PS7"
	.byte	0xc
	.uahalf	0x169
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.uaword	.LASF0
	.byte	0xc
	.uahalf	0x16a
	.uaword	0x19b
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_P_OMSR4_Bits"
	.byte	0xc
	.uahalf	0x16b
	.uaword	0x6cdd
	.uleb128 0x10
	.string	"_Ifx_P_OMSR8_Bits"
	.byte	0x4
	.byte	0xc
	.uahalf	0x16e
	.uaword	0x6df0
	.uleb128 0xd
	.uaword	.LASF30
	.byte	0xc
	.uahalf	0x170
	.uaword	0x19b
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.string	"PS8"
	.byte	0xc
	.uahalf	0x171
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xe
	.string	"PS9"
	.byte	0xc
	.uahalf	0x172
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xe
	.string	"PS10"
	.byte	0xc
	.uahalf	0x173
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xe
	.string	"PS11"
	.byte	0xc
	.uahalf	0x174
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xd
	.uaword	.LASF15
	.byte	0xc
	.uahalf	0x175
	.uaword	0x19b
	.byte	0x4
	.byte	0x14
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_P_OMSR8_Bits"
	.byte	0xc
	.uahalf	0x176
	.uaword	0x6d72
	.uleb128 0x10
	.string	"_Ifx_P_OMSR_Bits"
	.byte	0x4
	.byte	0xc
	.uahalf	0x179
	.uaword	0x6f3a
	.uleb128 0xe
	.string	"PS0"
	.byte	0xc
	.uahalf	0x17b
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.string	"PS1"
	.byte	0xc
	.uahalf	0x17c
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.string	"PS2"
	.byte	0xc
	.uahalf	0x17d
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.string	"PS3"
	.byte	0xc
	.uahalf	0x17e
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.string	"PS4"
	.byte	0xc
	.uahalf	0x17f
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xe
	.string	"PS5"
	.byte	0xc
	.uahalf	0x180
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xe
	.string	"PS6"
	.byte	0xc
	.uahalf	0x181
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xe
	.string	"PS7"
	.byte	0xc
	.uahalf	0x182
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.string	"PS8"
	.byte	0xc
	.uahalf	0x183
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xe
	.string	"PS9"
	.byte	0xc
	.uahalf	0x184
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xe
	.string	"PS10"
	.byte	0xc
	.uahalf	0x185
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xe
	.string	"PS11"
	.byte	0xc
	.uahalf	0x186
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xe
	.string	"PS12"
	.byte	0xc
	.uahalf	0x187
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xe
	.string	"PS13"
	.byte	0xc
	.uahalf	0x188
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xe
	.string	"PS14"
	.byte	0xc
	.uahalf	0x189
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xe
	.string	"PS15"
	.byte	0xc
	.uahalf	0x18a
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.uaword	.LASF19
	.byte	0xc
	.uahalf	0x18b
	.uaword	0x19b
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_P_OMSR_Bits"
	.byte	0xc
	.uahalf	0x18c
	.uaword	0x6e09
	.uleb128 0x10
	.string	"_Ifx_P_OUT_Bits"
	.byte	0x4
	.byte	0xc
	.uahalf	0x18f
	.uaword	0x7072
	.uleb128 0xe
	.string	"P0"
	.byte	0xc
	.uahalf	0x191
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.string	"P1"
	.byte	0xc
	.uahalf	0x192
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.string	"P2"
	.byte	0xc
	.uahalf	0x193
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.string	"P3"
	.byte	0xc
	.uahalf	0x194
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.string	"P4"
	.byte	0xc
	.uahalf	0x195
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xe
	.string	"P5"
	.byte	0xc
	.uahalf	0x196
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xe
	.string	"P6"
	.byte	0xc
	.uahalf	0x197
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xe
	.string	"P7"
	.byte	0xc
	.uahalf	0x198
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.string	"P8"
	.byte	0xc
	.uahalf	0x199
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xe
	.string	"P9"
	.byte	0xc
	.uahalf	0x19a
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xe
	.string	"P10"
	.byte	0xc
	.uahalf	0x19b
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xe
	.string	"P11"
	.byte	0xc
	.uahalf	0x19c
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xe
	.string	"P12"
	.byte	0xc
	.uahalf	0x19d
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xe
	.string	"P13"
	.byte	0xc
	.uahalf	0x19e
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xe
	.string	"P14"
	.byte	0xc
	.uahalf	0x19f
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xe
	.string	"P15"
	.byte	0xc
	.uahalf	0x1a0
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.uaword	.LASF19
	.byte	0xc
	.uahalf	0x1a1
	.uaword	0x19b
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_P_OUT_Bits"
	.byte	0xc
	.uahalf	0x1a2
	.uaword	0x6f52
	.uleb128 0x10
	.string	"_Ifx_P_PCSR_Bits"
	.byte	0x4
	.byte	0xc
	.uahalf	0x1a5
	.uaword	0x716f
	.uleb128 0xe
	.string	"SEL0"
	.byte	0xc
	.uahalf	0x1a7
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.string	"SEL1"
	.byte	0xc
	.uahalf	0x1a8
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.string	"SEL2"
	.byte	0xc
	.uahalf	0x1a9
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.string	"SEL3"
	.byte	0xc
	.uahalf	0x1aa
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.string	"SEL4"
	.byte	0xc
	.uahalf	0x1ab
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xe
	.string	"SEL5"
	.byte	0xc
	.uahalf	0x1ac
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xe
	.string	"SEL6"
	.byte	0xc
	.uahalf	0x1ad
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xd
	.uaword	.LASF27
	.byte	0xc
	.uahalf	0x1ae
	.uaword	0x19b
	.byte	0x4
	.byte	0x3
	.byte	0x16
	.byte	0
	.uleb128 0xe
	.string	"SEL10"
	.byte	0xc
	.uahalf	0x1af
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xe
	.string	"SEL11"
	.byte	0xc
	.uahalf	0x1b0
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xd
	.uaword	.LASF15
	.byte	0xc
	.uahalf	0x1b1
	.uaword	0x19b
	.byte	0x4
	.byte	0x13
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.string	"LCK"
	.byte	0xc
	.uahalf	0x1b2
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_P_PCSR_Bits"
	.byte	0xc
	.uahalf	0x1b3
	.uaword	0x7089
	.uleb128 0x10
	.string	"_Ifx_P_PDISC_Bits"
	.byte	0x4
	.byte	0xc
	.uahalf	0x1b6
	.uaword	0x72d9
	.uleb128 0xe
	.string	"PDIS0"
	.byte	0xc
	.uahalf	0x1b8
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.string	"PDIS1"
	.byte	0xc
	.uahalf	0x1b9
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.string	"PDIS2"
	.byte	0xc
	.uahalf	0x1ba
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.string	"PDIS3"
	.byte	0xc
	.uahalf	0x1bb
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.string	"PDIS4"
	.byte	0xc
	.uahalf	0x1bc
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xe
	.string	"PDIS5"
	.byte	0xc
	.uahalf	0x1bd
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xe
	.string	"PDIS6"
	.byte	0xc
	.uahalf	0x1be
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xe
	.string	"PDIS7"
	.byte	0xc
	.uahalf	0x1bf
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.string	"PDIS8"
	.byte	0xc
	.uahalf	0x1c0
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xe
	.string	"PDIS9"
	.byte	0xc
	.uahalf	0x1c1
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xe
	.string	"PDIS10"
	.byte	0xc
	.uahalf	0x1c2
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xe
	.string	"PDIS11"
	.byte	0xc
	.uahalf	0x1c3
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xe
	.string	"PDIS12"
	.byte	0xc
	.uahalf	0x1c4
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xe
	.string	"PDIS13"
	.byte	0xc
	.uahalf	0x1c5
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xe
	.string	"PDIS14"
	.byte	0xc
	.uahalf	0x1c6
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xe
	.string	"PDIS15"
	.byte	0xc
	.uahalf	0x1c7
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.uaword	.LASF19
	.byte	0xc
	.uahalf	0x1c8
	.uaword	0x19b
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_P_PDISC_Bits"
	.byte	0xc
	.uahalf	0x1c9
	.uaword	0x7187
	.uleb128 0x10
	.string	"_Ifx_P_PDR0_Bits"
	.byte	0x4
	.byte	0xc
	.uahalf	0x1cc
	.uaword	0x740d
	.uleb128 0xe
	.string	"PD0"
	.byte	0xc
	.uahalf	0x1ce
	.uaword	0x19b
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.string	"PL0"
	.byte	0xc
	.uahalf	0x1cf
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.string	"PD1"
	.byte	0xc
	.uahalf	0x1d0
	.uaword	0x19b
	.byte	0x4
	.byte	0x3
	.byte	0x19
	.byte	0
	.uleb128 0xe
	.string	"PL1"
	.byte	0xc
	.uahalf	0x1d1
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.string	"PD2"
	.byte	0xc
	.uahalf	0x1d2
	.uaword	0x19b
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0xe
	.string	"PL2"
	.byte	0xc
	.uahalf	0x1d3
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xe
	.string	"PD3"
	.byte	0xc
	.uahalf	0x1d4
	.uaword	0x19b
	.byte	0x4
	.byte	0x3
	.byte	0x11
	.byte	0
	.uleb128 0xe
	.string	"PL3"
	.byte	0xc
	.uahalf	0x1d5
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.string	"PD4"
	.byte	0xc
	.uahalf	0x1d6
	.uaword	0x19b
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0xe
	.string	"PL4"
	.byte	0xc
	.uahalf	0x1d7
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xe
	.string	"PD5"
	.byte	0xc
	.uahalf	0x1d8
	.uaword	0x19b
	.byte	0x4
	.byte	0x3
	.byte	0x9
	.byte	0
	.uleb128 0xe
	.string	"PL5"
	.byte	0xc
	.uahalf	0x1d9
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.string	"PD6"
	.byte	0xc
	.uahalf	0x1da
	.uaword	0x19b
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0xe
	.string	"PL6"
	.byte	0xc
	.uahalf	0x1db
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.string	"PD7"
	.byte	0xc
	.uahalf	0x1dc
	.uaword	0x19b
	.byte	0x4
	.byte	0x3
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.string	"PL7"
	.byte	0xc
	.uahalf	0x1dd
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_P_PDR0_Bits"
	.byte	0xc
	.uahalf	0x1de
	.uaword	0x72f2
	.uleb128 0x10
	.string	"_Ifx_P_PDR1_Bits"
	.byte	0x4
	.byte	0xc
	.uahalf	0x1e1
	.uaword	0x754c
	.uleb128 0xe
	.string	"PD8"
	.byte	0xc
	.uahalf	0x1e3
	.uaword	0x19b
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.string	"PL8"
	.byte	0xc
	.uahalf	0x1e4
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.string	"PD9"
	.byte	0xc
	.uahalf	0x1e5
	.uaword	0x19b
	.byte	0x4
	.byte	0x3
	.byte	0x19
	.byte	0
	.uleb128 0xe
	.string	"PL9"
	.byte	0xc
	.uahalf	0x1e6
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.string	"PD10"
	.byte	0xc
	.uahalf	0x1e7
	.uaword	0x19b
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0xe
	.string	"PL10"
	.byte	0xc
	.uahalf	0x1e8
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xe
	.string	"PD11"
	.byte	0xc
	.uahalf	0x1e9
	.uaword	0x19b
	.byte	0x4
	.byte	0x3
	.byte	0x11
	.byte	0
	.uleb128 0xe
	.string	"PL11"
	.byte	0xc
	.uahalf	0x1ea
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.string	"PD12"
	.byte	0xc
	.uahalf	0x1eb
	.uaword	0x19b
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0xe
	.string	"PL12"
	.byte	0xc
	.uahalf	0x1ec
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xe
	.string	"PD13"
	.byte	0xc
	.uahalf	0x1ed
	.uaword	0x19b
	.byte	0x4
	.byte	0x3
	.byte	0x9
	.byte	0
	.uleb128 0xe
	.string	"PL13"
	.byte	0xc
	.uahalf	0x1ee
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.string	"PD14"
	.byte	0xc
	.uahalf	0x1ef
	.uaword	0x19b
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0xe
	.string	"PL14"
	.byte	0xc
	.uahalf	0x1f0
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.string	"PD15"
	.byte	0xc
	.uahalf	0x1f1
	.uaword	0x19b
	.byte	0x4
	.byte	0x3
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.string	"PL15"
	.byte	0xc
	.uahalf	0x1f2
	.uaword	0x19b
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_P_PDR1_Bits"
	.byte	0xc
	.uahalf	0x1f3
	.uaword	0x7425
	.uleb128 0x11
	.byte	0x4
	.byte	0xc
	.uahalf	0x1fb
	.uaword	0x758c
	.uleb128 0x12
	.string	"U"
	.byte	0xc
	.uahalf	0x1fe
	.uaword	0x19b
	.uleb128 0x12
	.string	"I"
	.byte	0xc
	.uahalf	0x200
	.uaword	0x22e
	.uleb128 0x12
	.string	"B"
	.byte	0xc
	.uahalf	0x202
	.uaword	0x5de1
	.byte	0
	.uleb128 0xf
	.string	"Ifx_P_ACCEN0"
	.byte	0xc
	.uahalf	0x203
	.uaword	0x7564
	.uleb128 0x11
	.byte	0x4
	.byte	0xc
	.uahalf	0x206
	.uaword	0x75c9
	.uleb128 0x12
	.string	"U"
	.byte	0xc
	.uahalf	0x209
	.uaword	0x19b
	.uleb128 0x12
	.string	"I"
	.byte	0xc
	.uahalf	0x20b
	.uaword	0x22e
	.uleb128 0x12
	.string	"B"
	.byte	0xc
	.uahalf	0x20d
	.uaword	0x5e25
	.byte	0
	.uleb128 0xf
	.string	"Ifx_P_ACCEN1"
	.byte	0xc
	.uahalf	0x20e
	.uaword	0x75a1
	.uleb128 0x11
	.byte	0x4
	.byte	0xc
	.uahalf	0x211
	.uaword	0x7606
	.uleb128 0x12
	.string	"U"
	.byte	0xc
	.uahalf	0x214
	.uaword	0x19b
	.uleb128 0x12
	.string	"I"
	.byte	0xc
	.uahalf	0x216
	.uaword	0x22e
	.uleb128 0x12
	.string	"B"
	.byte	0xc
	.uahalf	0x218
	.uaword	0x5f5c
	.byte	0
	.uleb128 0xf
	.string	"Ifx_P_ESR"
	.byte	0xc
	.uahalf	0x219
	.uaword	0x75de
	.uleb128 0x11
	.byte	0x4
	.byte	0xc
	.uahalf	0x21c
	.uaword	0x7640
	.uleb128 0x12
	.string	"U"
	.byte	0xc
	.uahalf	0x21f
	.uaword	0x19b
	.uleb128 0x12
	.string	"I"
	.byte	0xc
	.uahalf	0x221
	.uaword	0x22e
	.uleb128 0x12
	.string	"B"
	.byte	0xc
	.uahalf	0x223
	.uaword	0x5fbe
	.byte	0
	.uleb128 0xf
	.string	"Ifx_P_ID"
	.byte	0xc
	.uahalf	0x224
	.uaword	0x7618
	.uleb128 0x11
	.byte	0x4
	.byte	0xc
	.uahalf	0x227
	.uaword	0x7679
	.uleb128 0x12
	.string	"U"
	.byte	0xc
	.uahalf	0x22a
	.uaword	0x19b
	.uleb128 0x12
	.string	"I"
	.byte	0xc
	.uahalf	0x22c
	.uaword	0x22e
	.uleb128 0x12
	.string	"B"
	.byte	0xc
	.uahalf	0x22e
	.uaword	0x60e0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_P_IN"
	.byte	0xc
	.uahalf	0x22f
	.uaword	0x7651
	.uleb128 0x11
	.byte	0x4
	.byte	0xc
	.uahalf	0x232
	.uaword	0x76b2
	.uleb128 0x12
	.string	"U"
	.byte	0xc
	.uahalf	0x235
	.uaword	0x19b
	.uleb128 0x12
	.string	"I"
	.byte	0xc
	.uahalf	0x237
	.uaword	0x22e
	.uleb128 0x12
	.string	"B"
	.byte	0xc
	.uahalf	0x239
	.uaword	0x6188
	.byte	0
	.uleb128 0xf
	.string	"Ifx_P_IOCR0"
	.byte	0xc
	.uahalf	0x23a
	.uaword	0x768a
	.uleb128 0x11
	.byte	0x4
	.byte	0xc
	.uahalf	0x23d
	.uaword	0x76ee
	.uleb128 0x12
	.string	"U"
	.byte	0xc
	.uahalf	0x240
	.uaword	0x19b
	.uleb128 0x12
	.string	"I"
	.byte	0xc
	.uahalf	0x242
	.uaword	0x22e
	.uleb128 0x12
	.string	"B"
	.byte	0xc
	.uahalf	0x244
	.uaword	0x6238
	.byte	0
	.uleb128 0xf
	.string	"Ifx_P_IOCR12"
	.byte	0xc
	.uahalf	0x245
	.uaword	0x76c6
	.uleb128 0x11
	.byte	0x4
	.byte	0xc
	.uahalf	0x248
	.uaword	0x772b
	.uleb128 0x12
	.string	"U"
	.byte	0xc
	.uahalf	0x24b
	.uaword	0x19b
	.uleb128 0x12
	.string	"I"
	.byte	0xc
	.uahalf	0x24d
	.uaword	0x22e
	.uleb128 0x12
	.string	"B"
	.byte	0xc
	.uahalf	0x24f
	.uaword	0x62e4
	.byte	0
	.uleb128 0xf
	.string	"Ifx_P_IOCR4"
	.byte	0xc
	.uahalf	0x250
	.uaword	0x7703
	.uleb128 0x11
	.byte	0x4
	.byte	0xc
	.uahalf	0x253
	.uaword	0x7767
	.uleb128 0x12
	.string	"U"
	.byte	0xc
	.uahalf	0x256
	.uaword	0x19b
	.uleb128 0x12
	.string	"I"
	.byte	0xc
	.uahalf	0x258
	.uaword	0x22e
	.uleb128 0x12
	.string	"B"
	.byte	0xc
	.uahalf	0x25a
	.uaword	0x6391
	.byte	0
	.uleb128 0xf
	.string	"Ifx_P_IOCR8"
	.byte	0xc
	.uahalf	0x25b
	.uaword	0x773f
	.uleb128 0x11
	.byte	0x4
	.byte	0xc
	.uahalf	0x25e
	.uaword	0x77a3
	.uleb128 0x12
	.string	"U"
	.byte	0xc
	.uahalf	0x261
	.uaword	0x19b
	.uleb128 0x12
	.string	"I"
	.byte	0xc
	.uahalf	0x263
	.uaword	0x22e
	.uleb128 0x12
	.string	"B"
	.byte	0xc
	.uahalf	0x265
	.uaword	0x63f1
	.byte	0
	.uleb128 0xf
	.string	"Ifx_P_LPCR0"
	.byte	0xc
	.uahalf	0x266
	.uaword	0x777b
	.uleb128 0x11
	.byte	0x4
	.byte	0xc
	.uahalf	0x269
	.uaword	0x77ed
	.uleb128 0x12
	.string	"U"
	.byte	0xc
	.uahalf	0x26c
	.uaword	0x19b
	.uleb128 0x12
	.string	"I"
	.byte	0xc
	.uahalf	0x26e
	.uaword	0x22e
	.uleb128 0x12
	.string	"B"
	.byte	0xc
	.uahalf	0x270
	.uaword	0x6451
	.uleb128 0x12
	.string	"B_P21"
	.byte	0xc
	.uahalf	0x272
	.uaword	0x64e1
	.byte	0
	.uleb128 0xf
	.string	"Ifx_P_LPCR1"
	.byte	0xc
	.uahalf	0x273
	.uaword	0x77b7
	.uleb128 0x11
	.byte	0x4
	.byte	0xc
	.uahalf	0x276
	.uaword	0x7829
	.uleb128 0x12
	.string	"U"
	.byte	0xc
	.uahalf	0x279
	.uaword	0x19b
	.uleb128 0x12
	.string	"I"
	.byte	0xc
	.uahalf	0x27b
	.uaword	0x22e
	.uleb128 0x12
	.string	"B"
	.byte	0xc
	.uahalf	0x27d
	.uaword	0x65b4
	.byte	0
	.uleb128 0xf
	.string	"Ifx_P_LPCR2"
	.byte	0xc
	.uahalf	0x27e
	.uaword	0x7801
	.uleb128 0x11
	.byte	0x4
	.byte	0xc
	.uahalf	0x281
	.uaword	0x7865
	.uleb128 0x12
	.string	"U"
	.byte	0xc
	.uahalf	0x284
	.uaword	0x19b
	.uleb128 0x12
	.string	"I"
	.byte	0xc
	.uahalf	0x286
	.uaword	0x22e
	.uleb128 0x12
	.string	"B"
	.byte	0xc
	.uahalf	0x288
	.uaword	0x6958
	.byte	0
	.uleb128 0xf
	.string	"Ifx_P_OMCR"
	.byte	0xc
	.uahalf	0x289
	.uaword	0x783d
	.uleb128 0x11
	.byte	0x4
	.byte	0xc
	.uahalf	0x28c
	.uaword	0x78a0
	.uleb128 0x12
	.string	"U"
	.byte	0xc
	.uahalf	0x28f
	.uaword	0x19b
	.uleb128 0x12
	.string	"I"
	.byte	0xc
	.uahalf	0x291
	.uaword	0x22e
	.uleb128 0x12
	.string	"B"
	.byte	0xc
	.uahalf	0x293
	.uaword	0x6645
	.byte	0
	.uleb128 0xf
	.string	"Ifx_P_OMCR0"
	.byte	0xc
	.uahalf	0x294
	.uaword	0x7878
	.uleb128 0x11
	.byte	0x4
	.byte	0xc
	.uahalf	0x297
	.uaword	0x78dc
	.uleb128 0x12
	.string	"U"
	.byte	0xc
	.uahalf	0x29a
	.uaword	0x19b
	.uleb128 0x12
	.string	"I"
	.byte	0xc
	.uahalf	0x29c
	.uaword	0x22e
	.uleb128 0x12
	.string	"B"
	.byte	0xc
	.uahalf	0x29e
	.uaword	0x66cc
	.byte	0
	.uleb128 0xf
	.string	"Ifx_P_OMCR12"
	.byte	0xc
	.uahalf	0x29f
	.uaword	0x78b4
	.uleb128 0x11
	.byte	0x4
	.byte	0xc
	.uahalf	0x2a2
	.uaword	0x7919
	.uleb128 0x12
	.string	"U"
	.byte	0xc
	.uahalf	0x2a5
	.uaword	0x19b
	.uleb128 0x12
	.string	"I"
	.byte	0xc
	.uahalf	0x2a7
	.uaword	0x22e
	.uleb128 0x12
	.string	"B"
	.byte	0xc
	.uahalf	0x2a9
	.uaword	0x6763
	.byte	0
	.uleb128 0xf
	.string	"Ifx_P_OMCR4"
	.byte	0xc
	.uahalf	0x2aa
	.uaword	0x78f1
	.uleb128 0x11
	.byte	0x4
	.byte	0xc
	.uahalf	0x2ad
	.uaword	0x7955
	.uleb128 0x12
	.string	"U"
	.byte	0xc
	.uahalf	0x2b0
	.uaword	0x19b
	.uleb128 0x12
	.string	"I"
	.byte	0xc
	.uahalf	0x2b2
	.uaword	0x22e
	.uleb128 0x12
	.string	"B"
	.byte	0xc
	.uahalf	0x2b4
	.uaword	0x67fe
	.byte	0
	.uleb128 0xf
	.string	"Ifx_P_OMCR8"
	.byte	0xc
	.uahalf	0x2b5
	.uaword	0x792d
	.uleb128 0x11
	.byte	0x4
	.byte	0xc
	.uahalf	0x2b8
	.uaword	0x7991
	.uleb128 0x12
	.string	"U"
	.byte	0xc
	.uahalf	0x2bb
	.uaword	0x19b
	.uleb128 0x12
	.string	"I"
	.byte	0xc
	.uahalf	0x2bd
	.uaword	0x22e
	.uleb128 0x12
	.string	"B"
	.byte	0xc
	.uahalf	0x2bf
	.uaword	0x6ba6
	.byte	0
	.uleb128 0xf
	.string	"Ifx_P_OMR"
	.byte	0xc
	.uahalf	0x2c0
	.uaword	0x7969
	.uleb128 0x11
	.byte	0x4
	.byte	0xc
	.uahalf	0x2c3
	.uaword	0x79cb
	.uleb128 0x12
	.string	"U"
	.byte	0xc
	.uahalf	0x2c6
	.uaword	0x19b
	.uleb128 0x12
	.string	"I"
	.byte	0xc
	.uahalf	0x2c8
	.uaword	0x22e
	.uleb128 0x12
	.string	"B"
	.byte	0xc
	.uahalf	0x2ca
	.uaword	0x6f3a
	.byte	0
	.uleb128 0xf
	.string	"Ifx_P_OMSR"
	.byte	0xc
	.uahalf	0x2cb
	.uaword	0x79a3
	.uleb128 0x11
	.byte	0x4
	.byte	0xc
	.uahalf	0x2ce
	.uaword	0x7a06
	.uleb128 0x12
	.string	"U"
	.byte	0xc
	.uahalf	0x2d1
	.uaword	0x19b
	.uleb128 0x12
	.string	"I"
	.byte	0xc
	.uahalf	0x2d3
	.uaword	0x22e
	.uleb128 0x12
	.string	"B"
	.byte	0xc
	.uahalf	0x2d5
	.uaword	0x6c29
	.byte	0
	.uleb128 0xf
	.string	"Ifx_P_OMSR0"
	.byte	0xc
	.uahalf	0x2d6
	.uaword	0x79de
	.uleb128 0x11
	.byte	0x4
	.byte	0xc
	.uahalf	0x2d9
	.uaword	0x7a42
	.uleb128 0x12
	.string	"U"
	.byte	0xc
	.uahalf	0x2dc
	.uaword	0x19b
	.uleb128 0x12
	.string	"I"
	.byte	0xc
	.uahalf	0x2de
	.uaword	0x22e
	.uleb128 0x12
	.string	"B"
	.byte	0xc
	.uahalf	0x2e0
	.uaword	0x6cc3
	.byte	0
	.uleb128 0xf
	.string	"Ifx_P_OMSR12"
	.byte	0xc
	.uahalf	0x2e1
	.uaword	0x7a1a
	.uleb128 0x11
	.byte	0x4
	.byte	0xc
	.uahalf	0x2e4
	.uaword	0x7a7f
	.uleb128 0x12
	.string	"U"
	.byte	0xc
	.uahalf	0x2e7
	.uaword	0x19b
	.uleb128 0x12
	.string	"I"
	.byte	0xc
	.uahalf	0x2e9
	.uaword	0x22e
	.uleb128 0x12
	.string	"B"
	.byte	0xc
	.uahalf	0x2eb
	.uaword	0x6d59
	.byte	0
	.uleb128 0xf
	.string	"Ifx_P_OMSR4"
	.byte	0xc
	.uahalf	0x2ec
	.uaword	0x7a57
	.uleb128 0x11
	.byte	0x4
	.byte	0xc
	.uahalf	0x2ef
	.uaword	0x7abb
	.uleb128 0x12
	.string	"U"
	.byte	0xc
	.uahalf	0x2f2
	.uaword	0x19b
	.uleb128 0x12
	.string	"I"
	.byte	0xc
	.uahalf	0x2f4
	.uaword	0x22e
	.uleb128 0x12
	.string	"B"
	.byte	0xc
	.uahalf	0x2f6
	.uaword	0x6df0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_P_OMSR8"
	.byte	0xc
	.uahalf	0x2f7
	.uaword	0x7a93
	.uleb128 0x11
	.byte	0x4
	.byte	0xc
	.uahalf	0x2fa
	.uaword	0x7af7
	.uleb128 0x12
	.string	"U"
	.byte	0xc
	.uahalf	0x2fd
	.uaword	0x19b
	.uleb128 0x12
	.string	"I"
	.byte	0xc
	.uahalf	0x2ff
	.uaword	0x22e
	.uleb128 0x12
	.string	"B"
	.byte	0xc
	.uahalf	0x301
	.uaword	0x7072
	.byte	0
	.uleb128 0xf
	.string	"Ifx_P_OUT"
	.byte	0xc
	.uahalf	0x302
	.uaword	0x7acf
	.uleb128 0x11
	.byte	0x4
	.byte	0xc
	.uahalf	0x305
	.uaword	0x7b31
	.uleb128 0x12
	.string	"U"
	.byte	0xc
	.uahalf	0x308
	.uaword	0x19b
	.uleb128 0x12
	.string	"I"
	.byte	0xc
	.uahalf	0x30a
	.uaword	0x22e
	.uleb128 0x12
	.string	"B"
	.byte	0xc
	.uahalf	0x30c
	.uaword	0x716f
	.byte	0
	.uleb128 0xf
	.string	"Ifx_P_PCSR"
	.byte	0xc
	.uahalf	0x30d
	.uaword	0x7b09
	.uleb128 0x11
	.byte	0x4
	.byte	0xc
	.uahalf	0x310
	.uaword	0x7b6c
	.uleb128 0x12
	.string	"U"
	.byte	0xc
	.uahalf	0x313
	.uaword	0x19b
	.uleb128 0x12
	.string	"I"
	.byte	0xc
	.uahalf	0x315
	.uaword	0x22e
	.uleb128 0x12
	.string	"B"
	.byte	0xc
	.uahalf	0x317
	.uaword	0x72d9
	.byte	0
	.uleb128 0xf
	.string	"Ifx_P_PDISC"
	.byte	0xc
	.uahalf	0x318
	.uaword	0x7b44
	.uleb128 0x11
	.byte	0x4
	.byte	0xc
	.uahalf	0x31b
	.uaword	0x7ba8
	.uleb128 0x12
	.string	"U"
	.byte	0xc
	.uahalf	0x31e
	.uaword	0x19b
	.uleb128 0x12
	.string	"I"
	.byte	0xc
	.uahalf	0x320
	.uaword	0x22e
	.uleb128 0x12
	.string	"B"
	.byte	0xc
	.uahalf	0x322
	.uaword	0x740d
	.byte	0
	.uleb128 0xf
	.string	"Ifx_P_PDR0"
	.byte	0xc
	.uahalf	0x323
	.uaword	0x7b80
	.uleb128 0x11
	.byte	0x4
	.byte	0xc
	.uahalf	0x326
	.uaword	0x7be3
	.uleb128 0x12
	.string	"U"
	.byte	0xc
	.uahalf	0x329
	.uaword	0x19b
	.uleb128 0x12
	.string	"I"
	.byte	0xc
	.uahalf	0x32b
	.uaword	0x22e
	.uleb128 0x12
	.string	"B"
	.byte	0xc
	.uahalf	0x32d
	.uaword	0x754c
	.byte	0
	.uleb128 0xf
	.string	"Ifx_P_PDR1"
	.byte	0xc
	.uahalf	0x32e
	.uaword	0x7bbb
	.uleb128 0x13
	.string	"_Ifx_P"
	.uahalf	0x100
	.byte	0xc
	.uahalf	0x339
	.uaword	0x7e28
	.uleb128 0x14
	.string	"OUT"
	.byte	0xc
	.uahalf	0x33b
	.uaword	0x7af7
	.byte	0
	.uleb128 0x14
	.string	"OMR"
	.byte	0xc
	.uahalf	0x33c
	.uaword	0x7991
	.byte	0x4
	.uleb128 0x14
	.string	"ID"
	.byte	0xc
	.uahalf	0x33d
	.uaword	0x7640
	.byte	0x8
	.uleb128 0x15
	.uaword	.LASF37
	.byte	0xc
	.uahalf	0x33e
	.uaword	0x4c0
	.byte	0xc
	.uleb128 0x14
	.string	"IOCR0"
	.byte	0xc
	.uahalf	0x33f
	.uaword	0x76b2
	.byte	0x10
	.uleb128 0x14
	.string	"IOCR4"
	.byte	0xc
	.uahalf	0x340
	.uaword	0x772b
	.byte	0x14
	.uleb128 0x14
	.string	"IOCR8"
	.byte	0xc
	.uahalf	0x341
	.uaword	0x7767
	.byte	0x18
	.uleb128 0x14
	.string	"IOCR12"
	.byte	0xc
	.uahalf	0x342
	.uaword	0x76ee
	.byte	0x1c
	.uleb128 0x15
	.uaword	.LASF18
	.byte	0xc
	.uahalf	0x343
	.uaword	0x4c0
	.byte	0x20
	.uleb128 0x14
	.string	"IN"
	.byte	0xc
	.uahalf	0x344
	.uaword	0x7679
	.byte	0x24
	.uleb128 0x15
	.uaword	.LASF22
	.byte	0xc
	.uahalf	0x345
	.uaword	0x4b0
	.byte	0x28
	.uleb128 0x14
	.string	"PDR0"
	.byte	0xc
	.uahalf	0x346
	.uaword	0x7ba8
	.byte	0x40
	.uleb128 0x14
	.string	"PDR1"
	.byte	0xc
	.uahalf	0x347
	.uaword	0x7be3
	.byte	0x44
	.uleb128 0x15
	.uaword	.LASF38
	.byte	0xc
	.uahalf	0x348
	.uaword	0x4d0
	.byte	0x48
	.uleb128 0x14
	.string	"ESR"
	.byte	0xc
	.uahalf	0x349
	.uaword	0x7606
	.byte	0x50
	.uleb128 0x14
	.string	"reserved_54"
	.byte	0xc
	.uahalf	0x34a
	.uaword	0x480
	.byte	0x54
	.uleb128 0x14
	.string	"PDISC"
	.byte	0xc
	.uahalf	0x34b
	.uaword	0x7b6c
	.byte	0x60
	.uleb128 0x14
	.string	"PCSR"
	.byte	0xc
	.uahalf	0x34c
	.uaword	0x7b31
	.byte	0x64
	.uleb128 0x14
	.string	"reserved_68"
	.byte	0xc
	.uahalf	0x34d
	.uaword	0x4d0
	.byte	0x68
	.uleb128 0x14
	.string	"OMSR0"
	.byte	0xc
	.uahalf	0x34e
	.uaword	0x7a06
	.byte	0x70
	.uleb128 0x14
	.string	"OMSR4"
	.byte	0xc
	.uahalf	0x34f
	.uaword	0x7a7f
	.byte	0x74
	.uleb128 0x14
	.string	"OMSR8"
	.byte	0xc
	.uahalf	0x350
	.uaword	0x7abb
	.byte	0x78
	.uleb128 0x14
	.string	"OMSR12"
	.byte	0xc
	.uahalf	0x351
	.uaword	0x7a42
	.byte	0x7c
	.uleb128 0x14
	.string	"OMCR0"
	.byte	0xc
	.uahalf	0x352
	.uaword	0x78a0
	.byte	0x80
	.uleb128 0x14
	.string	"OMCR4"
	.byte	0xc
	.uahalf	0x353
	.uaword	0x7919
	.byte	0x84
	.uleb128 0x14
	.string	"OMCR8"
	.byte	0xc
	.uahalf	0x354
	.uaword	0x7955
	.byte	0x88
	.uleb128 0x14
	.string	"OMCR12"
	.byte	0xc
	.uahalf	0x355
	.uaword	0x78dc
	.byte	0x8c
	.uleb128 0x14
	.string	"OMSR"
	.byte	0xc
	.uahalf	0x356
	.uaword	0x79cb
	.byte	0x90
	.uleb128 0x14
	.string	"OMCR"
	.byte	0xc
	.uahalf	0x357
	.uaword	0x7865
	.byte	0x94
	.uleb128 0x14
	.string	"reserved_98"
	.byte	0xc
	.uahalf	0x358
	.uaword	0x4d0
	.byte	0x98
	.uleb128 0x14
	.string	"LPCR0"
	.byte	0xc
	.uahalf	0x359
	.uaword	0x77a3
	.byte	0xa0
	.uleb128 0x14
	.string	"LPCR1"
	.byte	0xc
	.uahalf	0x35a
	.uaword	0x77ed
	.byte	0xa4
	.uleb128 0x14
	.string	"LPCR2"
	.byte	0xc
	.uahalf	0x35b
	.uaword	0x7829
	.byte	0xa8
	.uleb128 0x14
	.string	"reserved_A4"
	.byte	0xc
	.uahalf	0x35c
	.uaword	0x7e28
	.byte	0xac
	.uleb128 0x14
	.string	"ACCEN1"
	.byte	0xc
	.uahalf	0x35d
	.uaword	0x75c9
	.byte	0xf8
	.uleb128 0x14
	.string	"ACCEN0"
	.byte	0xc
	.uahalf	0x35e
	.uaword	0x758c
	.byte	0xfc
	.byte	0
	.uleb128 0xb
	.uaword	0x25e
	.uaword	0x7e38
	.uleb128 0xc
	.uaword	0x474
	.byte	0x4b
	.byte	0
	.uleb128 0xf
	.string	"Ifx_P"
	.byte	0xc
	.uahalf	0x35f
	.uaword	0x7e46
	.uleb128 0x19
	.uaword	0x7bf6
	.uleb128 0x1b
	.byte	0x4
	.uaword	0x7e38
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.byte	0x4c
	.uaword	0x80f1
	.uleb128 0x4
	.string	"IfxPort_Mode_inputNoPullDevice"
	.sleb128 0
	.uleb128 0x4
	.string	"IfxPort_Mode_inputPullDown"
	.sleb128 8
	.uleb128 0x4
	.string	"IfxPort_Mode_inputPullUp"
	.sleb128 16
	.uleb128 0x4
	.string	"IfxPort_Mode_outputPushPullGeneral"
	.sleb128 128
	.uleb128 0x4
	.string	"IfxPort_Mode_outputPushPullAlt1"
	.sleb128 136
	.uleb128 0x4
	.string	"IfxPort_Mode_outputPushPullAlt2"
	.sleb128 144
	.uleb128 0x4
	.string	"IfxPort_Mode_outputPushPullAlt3"
	.sleb128 152
	.uleb128 0x4
	.string	"IfxPort_Mode_outputPushPullAlt4"
	.sleb128 160
	.uleb128 0x4
	.string	"IfxPort_Mode_outputPushPullAlt5"
	.sleb128 168
	.uleb128 0x4
	.string	"IfxPort_Mode_outputPushPullAlt6"
	.sleb128 176
	.uleb128 0x4
	.string	"IfxPort_Mode_outputPushPullAlt7"
	.sleb128 184
	.uleb128 0x4
	.string	"IfxPort_Mode_outputOpenDrainGeneral"
	.sleb128 192
	.uleb128 0x4
	.string	"IfxPort_Mode_outputOpenDrainAlt1"
	.sleb128 200
	.uleb128 0x4
	.string	"IfxPort_Mode_outputOpenDrainAlt2"
	.sleb128 208
	.uleb128 0x4
	.string	"IfxPort_Mode_outputOpenDrainAlt3"
	.sleb128 216
	.uleb128 0x4
	.string	"IfxPort_Mode_outputOpenDrainAlt4"
	.sleb128 224
	.uleb128 0x4
	.string	"IfxPort_Mode_outputOpenDrainAlt5"
	.sleb128 232
	.uleb128 0x4
	.string	"IfxPort_Mode_outputOpenDrainAlt6"
	.sleb128 240
	.uleb128 0x4
	.string	"IfxPort_Mode_outputOpenDrainAlt7"
	.sleb128 248
	.byte	0
	.uleb128 0x5
	.string	"IfxPort_Mode"
	.byte	0x5
	.byte	0x60
	.uaword	0x7e51
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.byte	0x65
	.uaword	0x81e1
	.uleb128 0x4
	.string	"IfxPort_OutputIdx_general"
	.sleb128 128
	.uleb128 0x4
	.string	"IfxPort_OutputIdx_alt1"
	.sleb128 136
	.uleb128 0x4
	.string	"IfxPort_OutputIdx_alt2"
	.sleb128 144
	.uleb128 0x4
	.string	"IfxPort_OutputIdx_alt3"
	.sleb128 152
	.uleb128 0x4
	.string	"IfxPort_OutputIdx_alt4"
	.sleb128 160
	.uleb128 0x4
	.string	"IfxPort_OutputIdx_alt5"
	.sleb128 168
	.uleb128 0x4
	.string	"IfxPort_OutputIdx_alt6"
	.sleb128 176
	.uleb128 0x4
	.string	"IfxPort_OutputIdx_alt7"
	.sleb128 184
	.byte	0
	.uleb128 0x5
	.string	"IfxPort_OutputIdx"
	.byte	0x5
	.byte	0x6e
	.uaword	0x8105
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.byte	0x73
	.uaword	0x8242
	.uleb128 0x4
	.string	"IfxPort_OutputMode_pushPull"
	.sleb128 128
	.uleb128 0x4
	.string	"IfxPort_OutputMode_openDrain"
	.sleb128 192
	.byte	0
	.uleb128 0x5
	.string	"IfxPort_OutputMode"
	.byte	0x5
	.byte	0x76
	.uaword	0x81fa
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.byte	0x7d
	.uaword	0x83fd
	.uleb128 0x4
	.string	"IfxPort_PadDriver_cmosAutomotiveSpeed1"
	.sleb128 0
	.uleb128 0x4
	.string	"IfxPort_PadDriver_cmosAutomotiveSpeed2"
	.sleb128 1
	.uleb128 0x4
	.string	"IfxPort_PadDriver_cmosAutomotiveSpeed3"
	.sleb128 2
	.uleb128 0x4
	.string	"IfxPort_PadDriver_cmosAutomotiveSpeed4"
	.sleb128 3
	.uleb128 0x4
	.string	"IfxPort_PadDriver_lvdsSpeed1"
	.sleb128 4
	.uleb128 0x4
	.string	"IfxPort_PadDriver_lvdsSpeed2"
	.sleb128 5
	.uleb128 0x4
	.string	"IfxPort_PadDriver_lvdsSpeed3"
	.sleb128 6
	.uleb128 0x4
	.string	"IfxPort_PadDriver_lvdsSpeed4"
	.sleb128 7
	.uleb128 0x4
	.string	"IfxPort_PadDriver_ttlSpeed1"
	.sleb128 8
	.uleb128 0x4
	.string	"IfxPort_PadDriver_ttlSpeed2"
	.sleb128 9
	.uleb128 0x4
	.string	"IfxPort_PadDriver_ttlSpeed3"
	.sleb128 10
	.uleb128 0x4
	.string	"IfxPort_PadDriver_ttlSpeed4"
	.sleb128 11
	.byte	0
	.uleb128 0x5
	.string	"IfxPort_PadDriver"
	.byte	0x5
	.byte	0x8a
	.uaword	0x825c
	.uleb128 0x1c
	.byte	0x8
	.byte	0x5
	.byte	0xaa
	.uaword	0x8438
	.uleb128 0x1d
	.string	"port"
	.byte	0x5
	.byte	0xac
	.uaword	0x7e4b
	.byte	0
	.uleb128 0x1e
	.uaword	.LASF40
	.byte	0x5
	.byte	0xad
	.uaword	0x251
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.string	"IfxPort_Pin"
	.byte	0x5
	.byte	0xae
	.uaword	0x8416
	.uleb128 0x1b
	.byte	0x4
	.uaword	0x5bb9
	.uleb128 0x1c
	.byte	0x10
	.byte	0xd
	.byte	0x30
	.uaword	0x8481
	.uleb128 0x1e
	.uaword	.LASF41
	.byte	0xd
	.byte	0x32
	.uaword	0x844b
	.byte	0
	.uleb128 0x1d
	.string	"pin"
	.byte	0xd
	.byte	0x33
	.uaword	0x8438
	.byte	0x4
	.uleb128 0x1d
	.string	"select"
	.byte	0xd
	.byte	0x34
	.uaword	0x81e1
	.byte	0xc
	.byte	0
	.uleb128 0x5
	.string	"IfxVadc_Emux_Out"
	.byte	0xd
	.byte	0x35
	.uaword	0x8499
	.uleb128 0x1f
	.uaword	0x8451
	.uleb128 0x20
	.byte	0x4
	.byte	0xe
	.uahalf	0x2c0
	.uaword	0x853f
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
	.uleb128 0xf
	.string	"IfxScuCcu_AdcClockSelection"
	.byte	0xe
	.uahalf	0x2c5
	.uaword	0x849e
	.uleb128 0x3
	.byte	0x4
	.byte	0x2
	.byte	0x45
	.uaword	0x8610
	.uleb128 0x4
	.string	"IfxVadc_AnalogConverterMode_off"
	.sleb128 0
	.uleb128 0x4
	.string	"IfxVadc_AnalogConverterMode_slowStandby"
	.sleb128 1
	.uleb128 0x4
	.string	"IfxVadc_AnalogConverterMode_fastStandby"
	.sleb128 2
	.uleb128 0x4
	.string	"IfxVadc_AnalogConverterMode_normalOperation"
	.sleb128 3
	.byte	0
	.uleb128 0x5
	.string	"IfxVadc_AnalogConverterMode"
	.byte	0x2
	.byte	0x4a
	.uaword	0x8563
	.uleb128 0x3
	.byte	0x4
	.byte	0x2
	.byte	0x4f
	.uaword	0x86ce
	.uleb128 0x4
	.string	"IfxVadc_ArbitrationRounds_4_slots"
	.sleb128 0
	.uleb128 0x4
	.string	"IfxVadc_ArbitrationRounds_8_slots"
	.sleb128 1
	.uleb128 0x4
	.string	"IfxVadc_ArbitrationRounds_16_slots"
	.sleb128 2
	.uleb128 0x4
	.string	"IfxVadc_ArbitrationRounds_20_slots"
	.sleb128 3
	.byte	0
	.uleb128 0x5
	.string	"IfxVadc_ArbitrationRounds"
	.byte	0x2
	.byte	0x54
	.uaword	0x8633
	.uleb128 0x3
	.byte	0x4
	.byte	0x2
	.byte	0x59
	.uaword	0x89e4
	.uleb128 0x4
	.string	"IfxVadc_BoundaryExtension_standard"
	.sleb128 0
	.uleb128 0x4
	.string	"IfxVadc_BoundaryExtension_fastCompareResult1"
	.sleb128 1
	.uleb128 0x4
	.string	"IfxVadc_BoundaryExtension_fastCompareResult2"
	.sleb128 2
	.uleb128 0x4
	.string	"IfxVadc_BoundaryExtension_fastCompareResult3"
	.sleb128 3
	.uleb128 0x4
	.string	"IfxVadc_BoundaryExtension_fastCompareResult4"
	.sleb128 4
	.uleb128 0x4
	.string	"IfxVadc_BoundaryExtension_fastCompareResult5"
	.sleb128 5
	.uleb128 0x4
	.string	"IfxVadc_BoundaryExtension_fastCompareResult6"
	.sleb128 6
	.uleb128 0x4
	.string	"IfxVadc_BoundaryExtension_fastCompareResult7"
	.sleb128 7
	.uleb128 0x4
	.string	"IfxVadc_BoundaryExtension_fastCompareResult8"
	.sleb128 8
	.uleb128 0x4
	.string	"IfxVadc_BoundaryExtension_fastCompareResult9"
	.sleb128 9
	.uleb128 0x4
	.string	"IfxVadc_BoundaryExtension_fastCompareResult10"
	.sleb128 10
	.uleb128 0x4
	.string	"IfxVadc_BoundaryExtension_fastCompareResult11"
	.sleb128 11
	.uleb128 0x4
	.string	"IfxVadc_BoundaryExtension_fastCompareResult12"
	.sleb128 12
	.uleb128 0x4
	.string	"IfxVadc_BoundaryExtension_fastCompareResult13"
	.sleb128 13
	.uleb128 0x4
	.string	"IfxVadc_BoundaryExtension_fastCompareResult14"
	.sleb128 14
	.uleb128 0x4
	.string	"IfxVadc_BoundaryExtension_fastCompareResult15"
	.sleb128 15
	.byte	0
	.uleb128 0x5
	.string	"IfxVadc_BoundaryExtension"
	.byte	0x2
	.byte	0x6a
	.uaword	0x86ef
	.uleb128 0x3
	.byte	0x4
	.byte	0x2
	.byte	0x6f
	.uaword	0x8a9c
	.uleb128 0x4
	.string	"IfxVadc_BoundarySelection_group0"
	.sleb128 0
	.uleb128 0x4
	.string	"IfxVadc_BoundarySelection_group1"
	.sleb128 1
	.uleb128 0x4
	.string	"IfxVadc_BoundarySelection_global0"
	.sleb128 2
	.uleb128 0x4
	.string	"IfxVadc_BoundarySelection_global1"
	.sleb128 3
	.byte	0
	.uleb128 0x5
	.string	"IfxVadc_BoundarySelection"
	.byte	0x2
	.byte	0x74
	.uaword	0x8a05
	.uleb128 0x3
	.byte	0x4
	.byte	0x2
	.byte	0x79
	.uaword	0x8b8f
	.uleb128 0x4
	.string	"IfxVadc_ChannelId_none"
	.sleb128 -1
	.uleb128 0x4
	.string	"IfxVadc_ChannelId_0"
	.sleb128 0
	.uleb128 0x4
	.string	"IfxVadc_ChannelId_1"
	.sleb128 1
	.uleb128 0x4
	.string	"IfxVadc_ChannelId_2"
	.sleb128 2
	.uleb128 0x4
	.string	"IfxVadc_ChannelId_3"
	.sleb128 3
	.uleb128 0x4
	.string	"IfxVadc_ChannelId_4"
	.sleb128 4
	.uleb128 0x4
	.string	"IfxVadc_ChannelId_5"
	.sleb128 5
	.uleb128 0x4
	.string	"IfxVadc_ChannelId_6"
	.sleb128 6
	.uleb128 0x4
	.string	"IfxVadc_ChannelId_7"
	.sleb128 7
	.byte	0
	.uleb128 0x5
	.string	"IfxVadc_ChannelId"
	.byte	0x2
	.byte	0x83
	.uaword	0x8abd
	.uleb128 0x3
	.byte	0x4
	.byte	0x2
	.byte	0x88
	.uaword	0x8bf9
	.uleb128 0x4
	.string	"IfxVadc_ChannelReference_standard"
	.sleb128 0
	.uleb128 0x4
	.string	"IfxVadc_ChannelReference_channel0"
	.sleb128 1
	.byte	0
	.uleb128 0x5
	.string	"IfxVadc_ChannelReference"
	.byte	0x2
	.byte	0x8b
	.uaword	0x8ba8
	.uleb128 0x3
	.byte	0x4
	.byte	0x2
	.byte	0x90
	.uaword	0x8cad
	.uleb128 0x4
	.string	"IfxVadc_ChannelResolution_12bit"
	.sleb128 0
	.uleb128 0x4
	.string	"IfxVadc_ChannelResolution_10bit"
	.sleb128 1
	.uleb128 0x4
	.string	"IfxVadc_ChannelResolution_8bit"
	.sleb128 2
	.uleb128 0x4
	.string	"IfxVadc_ChannelResolution_10bitFast"
	.sleb128 5
	.byte	0
	.uleb128 0x5
	.string	"IfxVadc_ChannelResolution"
	.byte	0x2
	.byte	0x95
	.uaword	0x8c19
	.uleb128 0x3
	.byte	0x4
	.byte	0x2
	.byte	0x9a
	.uaword	0x8e7d
	.uleb128 0x4
	.string	"IfxVadc_ChannelResult_0"
	.sleb128 0
	.uleb128 0x4
	.string	"IfxVadc_ChannelResult_1"
	.sleb128 1
	.uleb128 0x4
	.string	"IfxVadc_ChannelResult_2"
	.sleb128 2
	.uleb128 0x4
	.string	"IfxVadc_ChannelResult_3"
	.sleb128 3
	.uleb128 0x4
	.string	"IfxVadc_ChannelResult_4"
	.sleb128 4
	.uleb128 0x4
	.string	"IfxVadc_ChannelResult_5"
	.sleb128 5
	.uleb128 0x4
	.string	"IfxVadc_ChannelResult_6"
	.sleb128 6
	.uleb128 0x4
	.string	"IfxVadc_ChannelResult_7"
	.sleb128 7
	.uleb128 0x4
	.string	"IfxVadc_ChannelResult_8"
	.sleb128 8
	.uleb128 0x4
	.string	"IfxVadc_ChannelResult_9"
	.sleb128 9
	.uleb128 0x4
	.string	"IfxVadc_ChannelResult_10"
	.sleb128 10
	.uleb128 0x4
	.string	"IfxVadc_ChannelResult_11"
	.sleb128 11
	.uleb128 0x4
	.string	"IfxVadc_ChannelResult_12"
	.sleb128 12
	.uleb128 0x4
	.string	"IfxVadc_ChannelResult_13"
	.sleb128 13
	.uleb128 0x4
	.string	"IfxVadc_ChannelResult_14"
	.sleb128 14
	.uleb128 0x4
	.string	"IfxVadc_ChannelResult_15"
	.sleb128 15
	.byte	0
	.uleb128 0x5
	.string	"IfxVadc_ChannelResult"
	.byte	0x2
	.byte	0xab
	.uaword	0x8cce
	.uleb128 0x3
	.byte	0x4
	.byte	0x2
	.byte	0xb1
	.uaword	0x8ef8
	.uleb128 0x4
	.string	"IfxVadc_ChannelSelectionStyle_channelNumber"
	.sleb128 0
	.uleb128 0x4
	.string	"IfxVadc_ChannelSelectionStyle_binary"
	.sleb128 1
	.byte	0
	.uleb128 0x5
	.string	"IfxVadc_ChannelSelectionStyle"
	.byte	0x2
	.byte	0xb5
	.uaword	0x8e9a
	.uleb128 0x3
	.byte	0x4
	.byte	0x2
	.byte	0xba
	.uaword	0x8f4a
	.uleb128 0x4
	.string	"IfxVadc_ConversionType_Compatible"
	.sleb128 0
	.byte	0
	.uleb128 0x5
	.string	"IfxVadc_ConversionType"
	.byte	0x2
	.byte	0xbc
	.uaword	0x8f1d
	.uleb128 0x3
	.byte	0x4
	.byte	0x2
	.byte	0xc2
	.uaword	0x8fb3
	.uleb128 0x4
	.string	"IfxVadc_EmuxCodingScheme_binary"
	.sleb128 0
	.uleb128 0x4
	.string	"IfxVadc_EmuxCodingScheme_gray"
	.sleb128 1
	.byte	0
	.uleb128 0x5
	.string	"IfxVadc_EmuxCodingScheme"
	.byte	0x2
	.byte	0xc5
	.uaword	0x8f68
	.uleb128 0x3
	.byte	0x4
	.byte	0x2
	.byte	0xca
	.uaword	0x9010
	.uleb128 0x4
	.string	"IfxVadc_EmuxInterface_0"
	.sleb128 0
	.uleb128 0x4
	.string	"IfxVadc_EmuxInterface_1"
	.sleb128 1
	.byte	0
	.uleb128 0x5
	.string	"IfxVadc_EmuxInterface"
	.byte	0x2
	.byte	0xcd
	.uaword	0x8fd3
	.uleb128 0x3
	.byte	0x4
	.byte	0x2
	.byte	0xd3
	.uaword	0x908c
	.uleb128 0x4
	.string	"IfxVadc_EmuxSampleTimeControl_settingChanges"
	.sleb128 0
	.uleb128 0x4
	.string	"IfxVadc_EmuxSampleTimeControl_always"
	.sleb128 1
	.byte	0
	.uleb128 0x5
	.string	"IfxVadc_EmuxSampleTimeControl"
	.byte	0x2
	.byte	0xd6
	.uaword	0x902d
	.uleb128 0x3
	.byte	0x4
	.byte	0x2
	.byte	0xdc
	.uaword	0x919a
	.uleb128 0x4
	.string	"IfxVadc_EmuxSelectValue_0"
	.sleb128 0
	.uleb128 0x4
	.string	"IfxVadc_EmuxSelectValue_1"
	.sleb128 1
	.uleb128 0x4
	.string	"IfxVadc_EmuxSelectValue_2"
	.sleb128 2
	.uleb128 0x4
	.string	"IfxVadc_EmuxSelectValue_3"
	.sleb128 3
	.uleb128 0x4
	.string	"IfxVadc_EmuxSelectValue_4"
	.sleb128 4
	.uleb128 0x4
	.string	"IfxVadc_EmuxSelectValue_5"
	.sleb128 5
	.uleb128 0x4
	.string	"IfxVadc_EmuxSelectValue_6"
	.sleb128 6
	.uleb128 0x4
	.string	"IfxVadc_EmuxSelectValue_7"
	.sleb128 7
	.byte	0
	.uleb128 0x5
	.string	"IfxVadc_EmuxSelectValue"
	.byte	0x2
	.byte	0xe5
	.uaword	0x90b1
	.uleb128 0x3
	.byte	0x4
	.byte	0x2
	.byte	0xeb
	.uaword	0x9275
	.uleb128 0x4
	.string	"IfxVadc_ExternalMultiplexerMode_softwareControl"
	.sleb128 0
	.uleb128 0x4
	.string	"IfxVadc_ExternalMultiplexerMode_steady"
	.sleb128 1
	.uleb128 0x4
	.string	"IfxVadc_ExternalMultiplexerMode_singleStep"
	.sleb128 2
	.uleb128 0x4
	.string	"IfxVadc_ExternalMultiplexerMode_sequence"
	.sleb128 3
	.byte	0
	.uleb128 0x5
	.string	"IfxVadc_ExternalMultiplexerMode"
	.byte	0x2
	.byte	0xf0
	.uaword	0x91b9
	.uleb128 0x3
	.byte	0x4
	.byte	0x2
	.byte	0xf5
	.uaword	0x931e
	.uleb128 0x4
	.string	"IfxVadc_GatingMode_disabled"
	.sleb128 0
	.uleb128 0x4
	.string	"IfxVadc_GatingMode_always"
	.sleb128 1
	.uleb128 0x4
	.string	"IfxVadc_GatingMode_gatingHigh"
	.sleb128 2
	.uleb128 0x4
	.string	"IfxVadc_GatingMode_gatingLow"
	.sleb128 3
	.byte	0
	.uleb128 0x5
	.string	"IfxVadc_GatingMode"
	.byte	0x2
	.byte	0xfa
	.uaword	0x929c
	.uleb128 0x3
	.byte	0x4
	.byte	0x2
	.byte	0xff
	.uaword	0x94d7
	.uleb128 0x4
	.string	"IfxVadc_GatingSource_0"
	.sleb128 0
	.uleb128 0x4
	.string	"IfxVadc_GatingSource_1"
	.sleb128 1
	.uleb128 0x4
	.string	"IfxVadc_GatingSource_2"
	.sleb128 2
	.uleb128 0x4
	.string	"IfxVadc_GatingSource_3"
	.sleb128 3
	.uleb128 0x4
	.string	"IfxVadc_GatingSource_4"
	.sleb128 4
	.uleb128 0x4
	.string	"IfxVadc_GatingSource_5"
	.sleb128 5
	.uleb128 0x4
	.string	"IfxVadc_GatingSource_6"
	.sleb128 6
	.uleb128 0x4
	.string	"IfxVadc_GatingSource_7"
	.sleb128 7
	.uleb128 0x4
	.string	"IfxVadc_GatingSource_8"
	.sleb128 8
	.uleb128 0x4
	.string	"IfxVadc_GatingSource_9"
	.sleb128 9
	.uleb128 0x4
	.string	"IfxVadc_GatingSource_10"
	.sleb128 10
	.uleb128 0x4
	.string	"IfxVadc_GatingSource_11"
	.sleb128 11
	.uleb128 0x4
	.string	"IfxVadc_GatingSource_12"
	.sleb128 12
	.uleb128 0x4
	.string	"IfxVadc_GatingSource_13"
	.sleb128 13
	.uleb128 0x4
	.string	"IfxVadc_GatingSource_14"
	.sleb128 14
	.uleb128 0x4
	.string	"IfxVadc_GatingSource_15"
	.sleb128 15
	.byte	0
	.uleb128 0xf
	.string	"IfxVadc_GatingSource"
	.byte	0x2
	.uahalf	0x110
	.uaword	0x9338
	.uleb128 0x20
	.byte	0x4
	.byte	0x2
	.uahalf	0x115
	.uaword	0x9578
	.uleb128 0x4
	.string	"IfxVadc_InputClasses_group0"
	.sleb128 0
	.uleb128 0x4
	.string	"IfxVadc_InputClasses_group1"
	.sleb128 1
	.uleb128 0x4
	.string	"IfxVadc_InputClasses_global0"
	.sleb128 2
	.uleb128 0x4
	.string	"IfxVadc_InputClasses_global1"
	.sleb128 3
	.byte	0
	.uleb128 0xf
	.string	"IfxVadc_InputClasses"
	.byte	0x2
	.uahalf	0x11a
	.uaword	0x94f4
	.uleb128 0x20
	.byte	0x4
	.byte	0x2
	.uahalf	0x11f
	.uaword	0x9623
	.uleb128 0x4
	.string	"IfxVadc_LimitCheck_noCheck"
	.sleb128 0
	.uleb128 0x4
	.string	"IfxVadc_LimitCheck_eventIfInArea"
	.sleb128 1
	.uleb128 0x4
	.string	"IfxVadc_LimitCheck_eventIfOutsideArea"
	.sleb128 2
	.uleb128 0x4
	.string	"IfxVadc_LimitCheck_always"
	.sleb128 3
	.byte	0
	.uleb128 0xf
	.string	"IfxVadc_LimitCheck"
	.byte	0x2
	.uahalf	0x124
	.uaword	0x9595
	.uleb128 0x20
	.byte	0x4
	.byte	0x2
	.uahalf	0x129
	.uaword	0x9f57
	.uleb128 0x4
	.string	"IfxVadc_Protection_channelControl0"
	.sleb128 0
	.uleb128 0x4
	.string	"IfxVadc_Protection_channelControl1"
	.sleb128 1
	.uleb128 0x4
	.string	"IfxVadc_Protection_channelControl2"
	.sleb128 2
	.uleb128 0x4
	.string	"IfxVadc_Protection_channelControl3"
	.sleb128 3
	.uleb128 0x4
	.string	"IfxVadc_Protection_channelControl4"
	.sleb128 4
	.uleb128 0x4
	.string	"IfxVadc_Protection_channelControl5"
	.sleb128 5
	.uleb128 0x4
	.string	"IfxVadc_Protection_channelControl6"
	.sleb128 6
	.uleb128 0x4
	.string	"IfxVadc_Protection_channelControl7"
	.sleb128 7
	.uleb128 0x4
	.string	"IfxVadc_Protection_channelControl8"
	.sleb128 8
	.uleb128 0x4
	.string	"IfxVadc_Protection_channelControl9"
	.sleb128 9
	.uleb128 0x4
	.string	"IfxVadc_Protection_channelControl10"
	.sleb128 10
	.uleb128 0x4
	.string	"IfxVadc_Protection_channelControl11"
	.sleb128 11
	.uleb128 0x4
	.string	"IfxVadc_Protection_channelControl12"
	.sleb128 12
	.uleb128 0x4
	.string	"IfxVadc_Protection_channelControl13"
	.sleb128 13
	.uleb128 0x4
	.string	"IfxVadc_Protection_channelControl14"
	.sleb128 14
	.uleb128 0x4
	.string	"IfxVadc_Protection_externalMultiplexer"
	.sleb128 15
	.uleb128 0x4
	.string	"IfxVadc_Protection_initGroup0"
	.sleb128 16
	.uleb128 0x4
	.string	"IfxVadc_Protection_initGroup1"
	.sleb128 17
	.uleb128 0x4
	.string	"IfxVadc_Protection_initGroup2"
	.sleb128 18
	.uleb128 0x4
	.string	"IfxVadc_Protection_initGroup3"
	.sleb128 19
	.uleb128 0x4
	.string	"IfxVadc_Protection_initGroup4"
	.sleb128 20
	.uleb128 0x4
	.string	"IfxVadc_Protection_initGroup5"
	.sleb128 21
	.uleb128 0x4
	.string	"IfxVadc_Protection_initGroup6"
	.sleb128 22
	.uleb128 0x4
	.string	"IfxVadc_Protection_initGroup7"
	.sleb128 23
	.uleb128 0x4
	.string	"IfxVadc_Protection_initGroup8"
	.sleb128 24
	.uleb128 0x4
	.string	"IfxVadc_Protection_initGroup9"
	.sleb128 25
	.uleb128 0x4
	.string	"IfxVadc_Protection_initGroup10"
	.sleb128 26
	.uleb128 0x4
	.string	"IfxVadc_Protection_initGroup11"
	.sleb128 27
	.uleb128 0x4
	.string	"IfxVadc_Protection_initGroup12"
	.sleb128 28
	.uleb128 0x4
	.string	"IfxVadc_Protection_initGroup13"
	.sleb128 29
	.uleb128 0x4
	.string	"IfxVadc_Protection_initGroup14"
	.sleb128 30
	.uleb128 0x4
	.string	"IfxVadc_Protection_globalConfig"
	.sleb128 31
	.uleb128 0x4
	.string	"IfxVadc_Protection_serviceGroup0"
	.sleb128 32
	.uleb128 0x4
	.string	"IfxVadc_Protection_serviceGroup1"
	.sleb128 33
	.uleb128 0x4
	.string	"IfxVadc_Protection_serviceGroup2"
	.sleb128 34
	.uleb128 0x4
	.string	"IfxVadc_Protection_serviceGroup3"
	.sleb128 35
	.uleb128 0x4
	.string	"IfxVadc_Protection_serviceGroup4"
	.sleb128 36
	.uleb128 0x4
	.string	"IfxVadc_Protection_serviceGroup5"
	.sleb128 37
	.uleb128 0x4
	.string	"IfxVadc_Protection_serviceGroup6"
	.sleb128 38
	.uleb128 0x4
	.string	"IfxVadc_Protection_serviceGroup7"
	.sleb128 39
	.uleb128 0x4
	.string	"IfxVadc_Protection_serviceGroup8"
	.sleb128 40
	.uleb128 0x4
	.string	"IfxVadc_Protection_serviceGroup9"
	.sleb128 41
	.uleb128 0x4
	.string	"IfxVadc_Protection_serviceGroup10"
	.sleb128 42
	.uleb128 0x4
	.string	"IfxVadc_Protection_serviceGroup11"
	.sleb128 43
	.uleb128 0x4
	.string	"IfxVadc_Protection_serviceGroup12"
	.sleb128 44
	.uleb128 0x4
	.string	"IfxVadc_Protection_serviceGroup13"
	.sleb128 45
	.uleb128 0x4
	.string	"IfxVadc_Protection_serviceGroup14"
	.sleb128 46
	.uleb128 0x4
	.string	"IfxVadc_Protection_testFunction"
	.sleb128 47
	.uleb128 0x4
	.string	"IfxVadc_Protection_resultRegisterGroup0"
	.sleb128 48
	.uleb128 0x4
	.string	"IfxVadc_Protection_resultRegisterGroup1"
	.sleb128 49
	.uleb128 0x4
	.string	"IfxVadc_Protection_resultRegisterGroup2"
	.sleb128 50
	.uleb128 0x4
	.string	"IfxVadc_Protection_resultRegisterGroup3"
	.sleb128 51
	.uleb128 0x4
	.string	"IfxVadc_Protection_resultRegisterGroup4"
	.sleb128 52
	.uleb128 0x4
	.string	"IfxVadc_Protection_resultRegisterGroup5"
	.sleb128 53
	.uleb128 0x4
	.string	"IfxVadc_Protection_resultRegisterGroup6"
	.sleb128 54
	.uleb128 0x4
	.string	"IfxVadc_Protection_resultRegisterGroup7"
	.sleb128 55
	.uleb128 0x4
	.string	"IfxVadc_Protection_resultRegisterGroup8"
	.sleb128 56
	.uleb128 0x4
	.string	"IfxVadc_Protection_resultRegisterGroup9"
	.sleb128 57
	.uleb128 0x4
	.string	"IfxVadc_Protection_resultRegisterGroup10"
	.sleb128 58
	.uleb128 0x4
	.string	"IfxVadc_Protection_resultRegisterGroup11"
	.sleb128 59
	.uleb128 0x4
	.string	"IfxVadc_Protection_resultRegisterGroup12"
	.sleb128 60
	.uleb128 0x4
	.string	"IfxVadc_Protection_resultRegisterGroup13"
	.sleb128 61
	.uleb128 0x4
	.string	"IfxVadc_Protection_resultRegisterGroup14"
	.sleb128 62
	.byte	0
	.uleb128 0xf
	.string	"IfxVadc_Protection"
	.byte	0x2
	.uahalf	0x169
	.uaword	0x963e
	.uleb128 0x20
	.byte	0x4
	.byte	0x2
	.uahalf	0x16e
	.uaword	0xa00c
	.uleb128 0x4
	.string	"IfxVadc_RequestSlotPriority_lowest"
	.sleb128 0
	.uleb128 0x4
	.string	"IfxVadc_RequestSlotPriority_low"
	.sleb128 1
	.uleb128 0x4
	.string	"IfxVadc_RequestSlotPriority_high"
	.sleb128 2
	.uleb128 0x4
	.string	"IfxVadc_RequestSlotPriority_highest"
	.sleb128 3
	.byte	0
	.uleb128 0xf
	.string	"IfxVadc_RequestSlotPriority"
	.byte	0x2
	.uahalf	0x173
	.uaword	0x9f72
	.uleb128 0x20
	.byte	0x4
	.byte	0x2
	.uahalf	0x178
	.uaword	0xa098
	.uleb128 0x4
	.string	"IfxVadc_RequestSlotStartMode_waitForStart"
	.sleb128 0
	.uleb128 0x4
	.string	"IfxVadc_RequestSlotStartMode_cancelInjectRepeat"
	.sleb128 1
	.byte	0
	.uleb128 0xf
	.string	"IfxVadc_RequestSlotStartMode"
	.byte	0x2
	.uahalf	0x17b
	.uaword	0xa030
	.uleb128 0x20
	.byte	0x4
	.byte	0x2
	.uahalf	0x180
	.uaword	0xa125
	.uleb128 0x4
	.string	"IfxVadc_RequestSource_queue"
	.sleb128 0
	.uleb128 0x4
	.string	"IfxVadc_RequestSource_scan"
	.sleb128 1
	.uleb128 0x4
	.string	"IfxVadc_RequestSource_background"
	.sleb128 2
	.byte	0
	.uleb128 0xf
	.string	"IfxVadc_RequestSource"
	.byte	0x2
	.uahalf	0x184
	.uaword	0xa0bd
	.uleb128 0x20
	.byte	0x4
	.byte	0x2
	.uahalf	0x192
	.uaword	0xa209
	.uleb128 0x4
	.string	"IfxVadc_SrcNr_group0"
	.sleb128 0
	.uleb128 0x4
	.string	"IfxVadc_SrcNr_group1"
	.sleb128 1
	.uleb128 0x4
	.string	"IfxVadc_SrcNr_group2"
	.sleb128 2
	.uleb128 0x4
	.string	"IfxVadc_SrcNr_group3"
	.sleb128 3
	.uleb128 0x4
	.string	"IfxVadc_SrcNr_shared0"
	.sleb128 4
	.uleb128 0x4
	.string	"IfxVadc_SrcNr_shared1"
	.sleb128 5
	.uleb128 0x4
	.string	"IfxVadc_SrcNr_shared2"
	.sleb128 6
	.uleb128 0x4
	.string	"IfxVadc_SrcNr_shared3"
	.sleb128 7
	.byte	0
	.uleb128 0xf
	.string	"IfxVadc_SrcNr"
	.byte	0x2
	.uahalf	0x19b
	.uaword	0xa143
	.uleb128 0x20
	.byte	0x4
	.byte	0x2
	.uahalf	0x1a2
	.uaword	0xa2fb
	.uleb128 0x4
	.string	"IfxVadc_Status_noError"
	.sleb128 0
	.uleb128 0x4
	.string	"IfxVadc_Status_notInitialised"
	.sleb128 1
	.uleb128 0x4
	.string	"IfxVadc_Status_invalidGroup"
	.sleb128 2
	.uleb128 0x4
	.string	"IfxVadc_Status_invalidChannel"
	.sleb128 3
	.uleb128 0x4
	.string	"IfxVadc_Status_queueFull"
	.sleb128 4
	.uleb128 0x4
	.string	"IfxVadc_Status_noAccess"
	.sleb128 5
	.uleb128 0x4
	.string	"IfxVadc_Status_channelsStillPending"
	.sleb128 6
	.byte	0
	.uleb128 0xf
	.string	"IfxVadc_Status"
	.byte	0x2
	.uahalf	0x1aa
	.uaword	0xa21f
	.uleb128 0x20
	.byte	0x4
	.byte	0x2
	.uahalf	0x1af
	.uaword	0xa3b1
	.uleb128 0x4
	.string	"IfxVadc_TriggerMode_noExternalTrigger"
	.sleb128 0
	.uleb128 0x4
	.string	"IfxVadc_TriggerMode_uponFallingEdge"
	.sleb128 1
	.uleb128 0x4
	.string	"IfxVadc_TriggerMode_uponRisingEdge"
	.sleb128 2
	.uleb128 0x4
	.string	"IfxVadc_TriggerMode_uponAnyEdge"
	.sleb128 3
	.byte	0
	.uleb128 0xf
	.string	"IfxVadc_TriggerMode"
	.byte	0x2
	.uahalf	0x1b4
	.uaword	0xa312
	.uleb128 0x20
	.byte	0x4
	.byte	0x2
	.uahalf	0x1b9
	.uaword	0xa57d
	.uleb128 0x4
	.string	"IfxVadc_TriggerSource_0"
	.sleb128 0
	.uleb128 0x4
	.string	"IfxVadc_TriggerSource_1"
	.sleb128 1
	.uleb128 0x4
	.string	"IfxVadc_TriggerSource_2"
	.sleb128 2
	.uleb128 0x4
	.string	"IfxVadc_TriggerSource_3"
	.sleb128 3
	.uleb128 0x4
	.string	"IfxVadc_TriggerSource_4"
	.sleb128 4
	.uleb128 0x4
	.string	"IfxVadc_TriggerSource_5"
	.sleb128 5
	.uleb128 0x4
	.string	"IfxVadc_TriggerSource_6"
	.sleb128 6
	.uleb128 0x4
	.string	"IfxVadc_TriggerSource_7"
	.sleb128 7
	.uleb128 0x4
	.string	"IfxVadc_TriggerSource_8"
	.sleb128 8
	.uleb128 0x4
	.string	"IfxVadc_TriggerSource_9"
	.sleb128 9
	.uleb128 0x4
	.string	"IfxVadc_TriggerSource_10"
	.sleb128 10
	.uleb128 0x4
	.string	"IfxVadc_TriggerSource_11"
	.sleb128 11
	.uleb128 0x4
	.string	"IfxVadc_TriggerSource_12"
	.sleb128 12
	.uleb128 0x4
	.string	"IfxVadc_TriggerSource_13"
	.sleb128 13
	.uleb128 0x4
	.string	"IfxVadc_TriggerSource_14"
	.sleb128 14
	.uleb128 0x4
	.string	"IfxVadc_TriggerSource_15"
	.sleb128 15
	.byte	0
	.uleb128 0xf
	.string	"IfxVadc_TriggerSource"
	.byte	0x2
	.uahalf	0x1ca
	.uaword	0xa3cd
	.uleb128 0xf
	.string	"IfxVadc_Adc_SYNCTR_STSEL"
	.byte	0xf
	.uahalf	0x15e
	.uaword	0x251
	.uleb128 0x21
	.byte	0x4
	.byte	0xf
	.uahalf	0x168
	.uaword	0xa5d3
	.uleb128 0x15
	.uaword	.LASF42
	.byte	0xf
	.uahalf	0x16a
	.uaword	0x844b
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"IfxVadc_Adc"
	.byte	0xf
	.uahalf	0x16b
	.uaword	0xa5bc
	.uleb128 0x21
	.byte	0x10
	.byte	0xf
	.uahalf	0x16f
	.uaword	0xa625
	.uleb128 0x15
	.uaword	.LASF43
	.byte	0xf
	.uahalf	0x171
	.uaword	0x94d7
	.byte	0
	.uleb128 0x15
	.uaword	.LASF44
	.byte	0xf
	.uahalf	0x172
	.uaword	0xa57d
	.byte	0x4
	.uleb128 0x15
	.uaword	.LASF45
	.byte	0xf
	.uahalf	0x173
	.uaword	0x931e
	.byte	0x8
	.uleb128 0x15
	.uaword	.LASF46
	.byte	0xf
	.uahalf	0x174
	.uaword	0xa3b1
	.byte	0xc
	.byte	0
	.uleb128 0xf
	.string	"IfxVadc_Adc_GatingTriggerConfig"
	.byte	0xf
	.uahalf	0x175
	.uaword	0xa5e7
	.uleb128 0x21
	.byte	0x8
	.byte	0xf
	.uahalf	0x17d
	.uaword	0xa6cf
	.uleb128 0x15
	.uaword	.LASF47
	.byte	0xf
	.uahalf	0x17f
	.uaword	0x86ce
	.byte	0
	.uleb128 0x14
	.string	"requestSlotQueueEnabled"
	.byte	0xf
	.uahalf	0x180
	.uaword	0x2c7
	.byte	0x4
	.uleb128 0x14
	.string	"requestSlotScanEnabled"
	.byte	0xf
	.uahalf	0x181
	.uaword	0x2c7
	.byte	0x5
	.uleb128 0x14
	.string	"requestSlotBackgroundScanEnabled"
	.byte	0xf
	.uahalf	0x182
	.uaword	0x2c7
	.byte	0x6
	.byte	0
	.uleb128 0xf
	.string	"IfxVadc_Adc_ArbiterConfig"
	.byte	0xf
	.uahalf	0x183
	.uaword	0xa64d
	.uleb128 0x21
	.byte	0x1c
	.byte	0xf
	.uahalf	0x187
	.uaword	0xa745
	.uleb128 0x14
	.string	"autoBackgroundScanEnabled"
	.byte	0xf
	.uahalf	0x189
	.uaword	0x2c7
	.byte	0
	.uleb128 0x15
	.uaword	.LASF48
	.byte	0xf
	.uahalf	0x18a
	.uaword	0xa625
	.byte	0x4
	.uleb128 0x15
	.uaword	.LASF49
	.byte	0xf
	.uahalf	0x18b
	.uaword	0xa00c
	.byte	0x14
	.uleb128 0x15
	.uaword	.LASF50
	.byte	0xf
	.uahalf	0x18c
	.uaword	0xa098
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.string	"IfxVadc_Adc_BackgroundScanConfig"
	.byte	0xf
	.uahalf	0x18d
	.uaword	0xa6f1
	.uleb128 0x21
	.byte	0x8
	.byte	0xf
	.uahalf	0x191
	.uaword	0xa792
	.uleb128 0x15
	.uaword	.LASF51
	.byte	0xf
	.uahalf	0x193
	.uaword	0x2ae
	.byte	0
	.uleb128 0x15
	.uaword	.LASF52
	.byte	0xf
	.uahalf	0x194
	.uaword	0x8cad
	.byte	0x4
	.byte	0
	.uleb128 0xf
	.string	"IfxVadc_Adc_ClassConfig"
	.byte	0xf
	.uahalf	0x195
	.uaword	0xa76e
	.uleb128 0x21
	.byte	0xc
	.byte	0xf
	.uahalf	0x199
	.uaword	0xa7e3
	.uleb128 0x15
	.uaword	.LASF41
	.byte	0xf
	.uahalf	0x19b
	.uaword	0xa5d3
	.byte	0
	.uleb128 0x15
	.uaword	.LASF53
	.byte	0xf
	.uahalf	0x19c
	.uaword	0xa7e3
	.byte	0x4
	.uleb128 0x15
	.uaword	.LASF54
	.byte	0xf
	.uahalf	0x19d
	.uaword	0x60d
	.byte	0x8
	.byte	0
	.uleb128 0x1b
	.byte	0x4
	.uaword	0x5649
	.uleb128 0xf
	.string	"IfxVadc_Adc_Group"
	.byte	0xf
	.uahalf	0x19e
	.uaword	0xa7b2
	.uleb128 0x21
	.byte	0x1c
	.byte	0xf
	.uahalf	0x1a2
	.uaword	0xa851
	.uleb128 0x14
	.string	"flushQueueAfterInit"
	.byte	0xf
	.uahalf	0x1a4
	.uaword	0x2c7
	.byte	0
	.uleb128 0x15
	.uaword	.LASF48
	.byte	0xf
	.uahalf	0x1a5
	.uaword	0xa625
	.byte	0x4
	.uleb128 0x15
	.uaword	.LASF49
	.byte	0xf
	.uahalf	0x1a6
	.uaword	0xa00c
	.byte	0x14
	.uleb128 0x15
	.uaword	.LASF50
	.byte	0xf
	.uahalf	0x1a7
	.uaword	0xa098
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.string	"IfxVadc_Adc_QueueConfig"
	.byte	0xf
	.uahalf	0x1a8
	.uaword	0xa803
	.uleb128 0x21
	.byte	0x1c
	.byte	0xf
	.uahalf	0x1ac
	.uaword	0xa8bb
	.uleb128 0x14
	.string	"autoscanEnabled"
	.byte	0xf
	.uahalf	0x1ae
	.uaword	0x2c7
	.byte	0
	.uleb128 0x15
	.uaword	.LASF48
	.byte	0xf
	.uahalf	0x1af
	.uaword	0xa625
	.byte	0x4
	.uleb128 0x15
	.uaword	.LASF49
	.byte	0xf
	.uahalf	0x1b0
	.uaword	0xa00c
	.byte	0x14
	.uleb128 0x15
	.uaword	.LASF50
	.byte	0xf
	.uahalf	0x1b1
	.uaword	0xa098
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.string	"IfxVadc_Adc_ScanConfig"
	.byte	0xf
	.uahalf	0x1b2
	.uaword	0xa871
	.uleb128 0x21
	.byte	0x14
	.byte	0xf
	.uahalf	0x1b6
	.uaword	0xa90c
	.uleb128 0x14
	.string	"pins"
	.byte	0xf
	.uahalf	0x1b8
	.uaword	0xa90c
	.byte	0
	.uleb128 0x15
	.uaword	.LASF55
	.byte	0xf
	.uahalf	0x1b9
	.uaword	0x8242
	.byte	0xc
	.uleb128 0x15
	.uaword	.LASF56
	.byte	0xf
	.uahalf	0x1ba
	.uaword	0x83fd
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.uaword	0xa91c
	.uaword	0xa91c
	.uleb128 0xc
	.uaword	0x474
	.byte	0x2
	.byte	0
	.uleb128 0x1b
	.byte	0x4
	.uaword	0x8499
	.uleb128 0xf
	.string	"IfxVadc_Adc_EmuxPinConfig"
	.byte	0xf
	.uahalf	0x1bb
	.uaword	0xa8da
	.uleb128 0x21
	.byte	0xc
	.byte	0xf
	.uahalf	0x1c1
	.uaword	0xa97b
	.uleb128 0x15
	.uaword	.LASF57
	.byte	0xf
	.uahalf	0x1c3
	.uaword	0x8b8f
	.byte	0
	.uleb128 0x14
	.string	"resultreg"
	.byte	0xf
	.uahalf	0x1c4
	.uaword	0x8e7d
	.byte	0x4
	.uleb128 0x15
	.uaword	.LASF53
	.byte	0xf
	.uahalf	0x1c5
	.uaword	0xa97b
	.byte	0x8
	.byte	0
	.uleb128 0x1b
	.byte	0x4
	.uaword	0xa981
	.uleb128 0x1f
	.uaword	0xa7e9
	.uleb128 0xf
	.string	"IfxVadc_Adc_Channel"
	.byte	0xf
	.uahalf	0x1c6
	.uaword	0xa944
	.uleb128 0x21
	.byte	0x3c
	.byte	0xf
	.uahalf	0x1ca
	.uaword	0xaae7
	.uleb128 0x15
	.uaword	.LASF58
	.byte	0xf
	.uahalf	0x1cc
	.uaword	0x2c7
	.byte	0
	.uleb128 0x15
	.uaword	.LASF59
	.byte	0xf
	.uahalf	0x1cd
	.uaword	0x2c7
	.byte	0x1
	.uleb128 0x14
	.string	"backgroundChannel"
	.byte	0xf
	.uahalf	0x1ce
	.uaword	0x2c7
	.byte	0x2
	.uleb128 0x15
	.uaword	.LASF60
	.byte	0xf
	.uahalf	0x1cf
	.uaword	0x2c7
	.byte	0x3
	.uleb128 0x14
	.string	"resultPriority"
	.byte	0xf
	.uahalf	0x1d0
	.uaword	0x309
	.byte	0x4
	.uleb128 0x14
	.string	"channelPriority"
	.byte	0xf
	.uahalf	0x1d1
	.uaword	0x309
	.byte	0x6
	.uleb128 0x14
	.string	"resultServProvider"
	.byte	0xf
	.uahalf	0x1d2
	.uaword	0x1fb
	.byte	0x8
	.uleb128 0x14
	.string	"channelServProvider"
	.byte	0xf
	.uahalf	0x1d3
	.uaword	0x1fb
	.byte	0xc
	.uleb128 0x15
	.uaword	.LASF61
	.byte	0xf
	.uahalf	0x1d4
	.uaword	0xa209
	.byte	0x10
	.uleb128 0x15
	.uaword	.LASF62
	.byte	0xf
	.uahalf	0x1d5
	.uaword	0xa209
	.byte	0x14
	.uleb128 0x15
	.uaword	.LASF63
	.byte	0xf
	.uahalf	0x1d6
	.uaword	0x8b8f
	.byte	0x18
	.uleb128 0x15
	.uaword	.LASF64
	.byte	0xf
	.uahalf	0x1d7
	.uaword	0x9578
	.byte	0x1c
	.uleb128 0x15
	.uaword	.LASF65
	.byte	0xf
	.uahalf	0x1d8
	.uaword	0x8bf9
	.byte	0x20
	.uleb128 0x15
	.uaword	.LASF66
	.byte	0xf
	.uahalf	0x1d9
	.uaword	0x8e7d
	.byte	0x24
	.uleb128 0x15
	.uaword	.LASF67
	.byte	0xf
	.uahalf	0x1da
	.uaword	0x8a9c
	.byte	0x28
	.uleb128 0x15
	.uaword	.LASF68
	.byte	0xf
	.uahalf	0x1db
	.uaword	0x8a9c
	.byte	0x2c
	.uleb128 0x15
	.uaword	.LASF69
	.byte	0xf
	.uahalf	0x1dc
	.uaword	0x89e4
	.byte	0x30
	.uleb128 0x15
	.uaword	.LASF70
	.byte	0xf
	.uahalf	0x1dd
	.uaword	0x9623
	.byte	0x34
	.uleb128 0x15
	.uaword	.LASF53
	.byte	0xf
	.uahalf	0x1de
	.uaword	0xa97b
	.byte	0x38
	.byte	0
	.uleb128 0xf
	.string	"IfxVadc_Adc_ChannelConfig"
	.byte	0xf
	.uahalf	0x1df
	.uaword	0xa9a2
	.uleb128 0x21
	.byte	0x28
	.byte	0xf
	.uahalf	0x1e3
	.uaword	0xabae
	.uleb128 0x15
	.uaword	.LASF42
	.byte	0xf
	.uahalf	0x1e5
	.uaword	0x844b
	.byte	0
	.uleb128 0x14
	.string	"globalInputClass"
	.byte	0xf
	.uahalf	0x1e6
	.uaword	0xabae
	.byte	0x4
	.uleb128 0x14
	.string	"digitalFrequency"
	.byte	0xf
	.uahalf	0x1e7
	.uaword	0x2ae
	.byte	0x14
	.uleb128 0x15
	.uaword	.LASF71
	.byte	0xf
	.uahalf	0x1e8
	.uaword	0x2ae
	.byte	0x18
	.uleb128 0x14
	.string	"converterClock"
	.byte	0xf
	.uahalf	0x1e9
	.uaword	0x853f
	.byte	0x1c
	.uleb128 0x14
	.string	"moduleFrequency"
	.byte	0xf
	.uahalf	0x1ea
	.uaword	0x2ae
	.byte	0x20
	.uleb128 0x14
	.string	"startupCalibration"
	.byte	0xf
	.uahalf	0x1eb
	.uaword	0x2c7
	.byte	0x24
	.byte	0
	.uleb128 0xb
	.uaword	0xa792
	.uaword	0xabbe
	.uleb128 0xc
	.uaword	0x474
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.string	"IfxVadc_Adc_Config"
	.byte	0xf
	.uahalf	0x1ee
	.uaword	0xab09
	.uleb128 0x21
	.byte	0x38
	.byte	0xf
	.uahalf	0x1f2
	.uaword	0xaca2
	.uleb128 0x15
	.uaword	.LASF42
	.byte	0xf
	.uahalf	0x1f4
	.uaword	0x844b
	.byte	0
	.uleb128 0x14
	.string	"mode"
	.byte	0xf
	.uahalf	0x1f5
	.uaword	0x9275
	.byte	0x4
	.uleb128 0x14
	.string	"startChannel"
	.byte	0xf
	.uahalf	0x1f6
	.uaword	0x919a
	.byte	0x8
	.uleb128 0x14
	.string	"code"
	.byte	0xf
	.uahalf	0x1f8
	.uaword	0x8fb3
	.byte	0xc
	.uleb128 0x14
	.string	"sampleTimeControl"
	.byte	0xf
	.uahalf	0x1f9
	.uaword	0x908c
	.byte	0x10
	.uleb128 0x15
	.uaword	.LASF54
	.byte	0xf
	.uahalf	0x1fa
	.uaword	0x60d
	.byte	0x14
	.uleb128 0x14
	.string	"channels"
	.byte	0xf
	.uahalf	0x1fb
	.uaword	0x251
	.byte	0x18
	.uleb128 0x15
	.uaword	.LASF72
	.byte	0xf
	.uahalf	0x1fc
	.uaword	0x9010
	.byte	0x1c
	.uleb128 0x14
	.string	"emuxOutPinConfig"
	.byte	0xf
	.uahalf	0x1fd
	.uaword	0xa922
	.byte	0x20
	.uleb128 0x14
	.string	"channelSelectionStyle"
	.byte	0xf
	.uahalf	0x1fe
	.uaword	0x8ef8
	.byte	0x34
	.byte	0
	.uleb128 0xf
	.string	"IfxVadc_Adc_EmuxControl"
	.byte	0xf
	.uahalf	0x1ff
	.uaword	0xabd9
	.uleb128 0x21
	.byte	0x7c
	.byte	0xf
	.uahalf	0x203
	.uaword	0xad7e
	.uleb128 0x15
	.uaword	.LASF41
	.byte	0xf
	.uahalf	0x205
	.uaword	0xad7e
	.byte	0
	.uleb128 0x15
	.uaword	.LASF54
	.byte	0xf
	.uahalf	0x206
	.uaword	0x60d
	.byte	0x4
	.uleb128 0x14
	.string	"master"
	.byte	0xf
	.uahalf	0x207
	.uaword	0x60d
	.byte	0x8
	.uleb128 0x15
	.uaword	.LASF64
	.byte	0xf
	.uahalf	0x208
	.uaword	0xabae
	.byte	0xc
	.uleb128 0x14
	.string	"scanRequest"
	.byte	0xf
	.uahalf	0x209
	.uaword	0xa8bb
	.byte	0x1c
	.uleb128 0x14
	.string	"queueRequest"
	.byte	0xf
	.uahalf	0x20a
	.uaword	0xa851
	.byte	0x38
	.uleb128 0x14
	.string	"backgroundScanRequest"
	.byte	0xf
	.uahalf	0x20b
	.uaword	0xa745
	.byte	0x54
	.uleb128 0x14
	.string	"disablePostCalibration"
	.byte	0xf
	.uahalf	0x20c
	.uaword	0x2c7
	.byte	0x70
	.uleb128 0x14
	.string	"arbiter"
	.byte	0xf
	.uahalf	0x20d
	.uaword	0xa6cf
	.byte	0x74
	.byte	0
	.uleb128 0x1b
	.byte	0x4
	.uaword	0xad84
	.uleb128 0x1f
	.uaword	0xa5d3
	.uleb128 0xf
	.string	"IfxVadc_Adc_GroupConfig"
	.byte	0xf
	.uahalf	0x20e
	.uaword	0xacc2
	.uleb128 0x22
	.string	"IfxSrc_clearRequest"
	.byte	0x3
	.byte	0xe6
	.byte	0x1
	.byte	0x3
	.uaword	0xadd2
	.uleb128 0x23
	.string	"src"
	.byte	0x3
	.byte	0xe6
	.uaword	0xadd2
	.byte	0
	.uleb128 0x1b
	.byte	0x4
	.uaword	0xadd8
	.uleb128 0x19
	.uaword	0x460
	.uleb128 0x24
	.string	"__minu"
	.byte	0x4
	.byte	0x8a
	.byte	0x1
	.uaword	0x2a0
	.byte	0x3
	.uaword	0xae0f
	.uleb128 0x23
	.string	"a"
	.byte	0x4
	.byte	0x8a
	.uaword	0x2a0
	.uleb128 0x23
	.string	"b"
	.byte	0x4
	.byte	0x8a
	.uaword	0x2a0
	.uleb128 0x25
	.string	"res"
	.byte	0x4
	.byte	0x8c
	.uaword	0x2a0
	.byte	0
	.uleb128 0x26
	.string	"IfxPort_setPinModeOutput"
	.byte	0x5
	.uahalf	0x230
	.byte	0x1
	.byte	0x3
	.uaword	0xae67
	.uleb128 0x27
	.string	"port"
	.byte	0x5
	.uahalf	0x230
	.uaword	0x7e4b
	.uleb128 0x28
	.uaword	.LASF40
	.byte	0x5
	.uahalf	0x230
	.uaword	0x251
	.uleb128 0x27
	.string	"mode"
	.byte	0x5
	.uahalf	0x230
	.uaword	0x8242
	.uleb128 0x27
	.string	"index"
	.byte	0x5
	.uahalf	0x230
	.uaword	0x81e1
	.byte	0
	.uleb128 0x29
	.string	"IfxVadc_calculateSampleTime"
	.byte	0x2
	.uahalf	0x671
	.byte	0x1
	.uaword	0x2a0
	.byte	0x3
	.uaword	0xaeb8
	.uleb128 0x28
	.uaword	.LASF71
	.byte	0x2
	.uahalf	0x671
	.uaword	0x2ae
	.uleb128 0x28
	.uaword	.LASF51
	.byte	0x2
	.uahalf	0x671
	.uaword	0x2ae
	.uleb128 0x2a
	.string	"ticks"
	.byte	0x2
	.uahalf	0x673
	.uaword	0x2a0
	.byte	0
	.uleb128 0x29
	.string	"IfxVadc_Adc_getGroupRegsFromGroup"
	.byte	0xf
	.uahalf	0x4b1
	.byte	0x1
	.uaword	0xa7e3
	.byte	0x3
	.uaword	0xaef5
	.uleb128 0x28
	.uaword	.LASF53
	.byte	0xf
	.uahalf	0x4b1
	.uaword	0xa97b
	.byte	0
	.uleb128 0x29
	.string	"IfxVadc_Adc_getVadcFromGroup"
	.byte	0xf
	.uahalf	0x4e4
	.byte	0x1
	.uaword	0x844b
	.byte	0x3
	.uaword	0xaf2d
	.uleb128 0x28
	.uaword	.LASF53
	.byte	0xf
	.uahalf	0x4e4
	.uaword	0xa97b
	.byte	0
	.uleb128 0x26
	.string	"IfxVadc_resetGroup"
	.byte	0x2
	.uahalf	0x812
	.byte	0x1
	.byte	0x3
	.uaword	0xaf57
	.uleb128 0x28
	.uaword	.LASF73
	.byte	0x2
	.uahalf	0x812
	.uaword	0xa7e3
	.byte	0
	.uleb128 0x26
	.string	"IfxVadc_disableModule"
	.byte	0x2
	.uahalf	0x6a0
	.byte	0x1
	.byte	0x3
	.uaword	0xaf93
	.uleb128 0x28
	.uaword	.LASF42
	.byte	0x2
	.uahalf	0x6a0
	.uaword	0x844b
	.uleb128 0x2a
	.string	"passwd"
	.byte	0x2
	.uahalf	0x6a2
	.uaword	0x27c
	.byte	0
	.uleb128 0x29
	.string	"IfxVadc_getChannelControlConfig"
	.byte	0x2
	.uahalf	0x711
	.byte	0x1
	.uaword	0x4256
	.byte	0x3
	.uaword	0xafe6
	.uleb128 0x28
	.uaword	.LASF73
	.byte	0x2
	.uahalf	0x711
	.uaword	0xa7e3
	.uleb128 0x28
	.uaword	.LASF74
	.byte	0x2
	.uahalf	0x711
	.uaword	0x8b8f
	.uleb128 0x2b
	.uaword	.LASF75
	.byte	0x2
	.uahalf	0x713
	.uaword	0x4256
	.byte	0
	.uleb128 0x29
	.string	"IfxVadc_getAssignedChannels"
	.byte	0x2
	.uahalf	0x6e5
	.byte	0x1
	.uaword	0x46e2
	.byte	0x3
	.uaword	0xb034
	.uleb128 0x28
	.uaword	.LASF73
	.byte	0x2
	.uahalf	0x6e5
	.uaword	0xa7e3
	.uleb128 0x2a
	.string	"assignChannels"
	.byte	0x2
	.uahalf	0x6e7
	.uaword	0x46e2
	.byte	0
	.uleb128 0x29
	.string	"IfxVadc_getChannelServiceRequestNodePointer0"
	.byte	0x2
	.uahalf	0x72f
	.byte	0x1
	.uaword	0x46a0
	.byte	0x3
	.uaword	0xb09a
	.uleb128 0x28
	.uaword	.LASF73
	.byte	0x2
	.uahalf	0x72f
	.uaword	0xa7e3
	.uleb128 0x2a
	.string	"serviceRequestNodePtr"
	.byte	0x2
	.uahalf	0x731
	.uaword	0x46a0
	.byte	0
	.uleb128 0x29
	.string	"IfxVadc_getChannelResultServiceRequestNodePointer0"
	.byte	0x2
	.uahalf	0x71f
	.byte	0x1
	.uaword	0x496e
	.byte	0x3
	.uaword	0xb10d
	.uleb128 0x28
	.uaword	.LASF73
	.byte	0x2
	.uahalf	0x71f
	.uaword	0xa7e3
	.uleb128 0x2a
	.string	"resultServiceRequestNodePtr0"
	.byte	0x2
	.uahalf	0x721
	.uaword	0x496e
	.byte	0
	.uleb128 0x29
	.string	"IfxVadc_getChannelResultServiceRequestNodePointer1"
	.byte	0x2
	.uahalf	0x727
	.byte	0x1
	.uaword	0x49b0
	.byte	0x3
	.uaword	0xb180
	.uleb128 0x28
	.uaword	.LASF73
	.byte	0x2
	.uahalf	0x727
	.uaword	0xa7e3
	.uleb128 0x2a
	.string	"resultServiceRequestNodePtr1"
	.byte	0x2
	.uahalf	0x729
	.uaword	0x49b0
	.byte	0
	.uleb128 0x29
	.string	"IfxVadc_getChannelInputClass"
	.byte	0x2
	.uahalf	0x719
	.byte	0x1
	.uaword	0x9578
	.byte	0x3
	.uaword	0xb1c4
	.uleb128 0x28
	.uaword	.LASF73
	.byte	0x2
	.uahalf	0x719
	.uaword	0xa7e3
	.uleb128 0x28
	.uaword	.LASF74
	.byte	0x2
	.uahalf	0x719
	.uaword	0x8b8f
	.byte	0
	.uleb128 0x29
	.string	"IfxVadc_getArbiterRoundLength"
	.byte	0x2
	.uahalf	0x6df
	.byte	0x1
	.uaword	0x86ce
	.byte	0x3
	.uaword	0xb1fd
	.uleb128 0x28
	.uaword	.LASF73
	.byte	0x2
	.uahalf	0x6df
	.uaword	0xa7e3
	.byte	0
	.uleb128 0x29
	.string	"IfxVadc_getGroupResolution"
	.byte	0x2
	.uahalf	0x762
	.byte	0x1
	.uaword	0x8cad
	.byte	0x3
	.uaword	0xb23f
	.uleb128 0x28
	.uaword	.LASF73
	.byte	0x2
	.uahalf	0x762
	.uaword	0xa7e3
	.uleb128 0x28
	.uaword	.LASF76
	.byte	0x2
	.uahalf	0x762
	.uaword	0x251
	.byte	0
	.uleb128 0x29
	.string	"IfxVadc_getGroupSampleTime"
	.byte	0x2
	.uahalf	0x773
	.byte	0x1
	.uaword	0x2ae
	.byte	0x3
	.uaword	0xb299
	.uleb128 0x28
	.uaword	.LASF73
	.byte	0x2
	.uahalf	0x773
	.uaword	0xa7e3
	.uleb128 0x28
	.uaword	.LASF76
	.byte	0x2
	.uahalf	0x773
	.uaword	0x251
	.uleb128 0x28
	.uaword	.LASF71
	.byte	0x2
	.uahalf	0x773
	.uaword	0x2ae
	.uleb128 0x2b
	.uaword	.LASF51
	.byte	0x2
	.uahalf	0x775
	.uaword	0x2a0
	.byte	0
	.uleb128 0x29
	.string	"IfxVadc_isRequestScanSlotEnabled"
	.byte	0x2
	.uahalf	0x80c
	.byte	0x1
	.uaword	0x2c7
	.byte	0x3
	.uaword	0xb2d5
	.uleb128 0x28
	.uaword	.LASF73
	.byte	0x2
	.uahalf	0x80c
	.uaword	0xa7e3
	.byte	0
	.uleb128 0x29
	.string	"IfxVadc_getScanSlotPriority"
	.byte	0x2
	.uahalf	0x7c2
	.byte	0x1
	.uaword	0xa00c
	.byte	0x3
	.uaword	0xb30c
	.uleb128 0x28
	.uaword	.LASF73
	.byte	0x2
	.uahalf	0x7c2
	.uaword	0xa7e3
	.byte	0
	.uleb128 0x29
	.string	"IfxVadc_getScanSlotStartMode"
	.byte	0x2
	.uahalf	0x7c8
	.byte	0x1
	.uaword	0xa098
	.byte	0x3
	.uaword	0xb344
	.uleb128 0x28
	.uaword	.LASF73
	.byte	0x2
	.uahalf	0x7c8
	.uaword	0xa7e3
	.byte	0
	.uleb128 0x29
	.string	"IfxVadc_getScanSlotTriggerInput"
	.byte	0x2
	.uahalf	0x7ce
	.byte	0x1
	.uaword	0xa57d
	.byte	0x3
	.uaword	0xb37f
	.uleb128 0x28
	.uaword	.LASF73
	.byte	0x2
	.uahalf	0x7ce
	.uaword	0xa7e3
	.byte	0
	.uleb128 0x29
	.string	"IfxVadc_getScanSlotTriggerMode"
	.byte	0x2
	.uahalf	0x7d4
	.byte	0x1
	.uaword	0xa3b1
	.byte	0x3
	.uaword	0xb3b9
	.uleb128 0x28
	.uaword	.LASF73
	.byte	0x2
	.uahalf	0x7d4
	.uaword	0xa7e3
	.byte	0
	.uleb128 0x29
	.string	"IfxVadc_getScanSlotGatingMode"
	.byte	0x2
	.uahalf	0x7b6
	.byte	0x1
	.uaword	0x931e
	.byte	0x3
	.uaword	0xb3f2
	.uleb128 0x28
	.uaword	.LASF73
	.byte	0x2
	.uahalf	0x7b6
	.uaword	0xa7e3
	.byte	0
	.uleb128 0x29
	.string	"IfxVadc_getScanSlotGatingSource"
	.byte	0x2
	.uahalf	0x7bc
	.byte	0x1
	.uaword	0x94d7
	.byte	0x3
	.uaword	0xb42d
	.uleb128 0x28
	.uaword	.LASF73
	.byte	0x2
	.uahalf	0x7bc
	.uaword	0xa7e3
	.byte	0
	.uleb128 0x29
	.string	"IfxVadc_isAutoScanEnabled"
	.byte	0x2
	.uahalf	0x7fa
	.byte	0x1
	.uaword	0x2c7
	.byte	0x3
	.uaword	0xb462
	.uleb128 0x28
	.uaword	.LASF73
	.byte	0x2
	.uahalf	0x7fa
	.uaword	0xa7e3
	.byte	0
	.uleb128 0x29
	.string	"IfxVadc_isRequestQueueSlotEnabled"
	.byte	0x2
	.uahalf	0x806
	.byte	0x1
	.uaword	0x2c7
	.byte	0x3
	.uaword	0xb49f
	.uleb128 0x28
	.uaword	.LASF73
	.byte	0x2
	.uahalf	0x806
	.uaword	0xa7e3
	.byte	0
	.uleb128 0x29
	.string	"IfxVadc_getQueueSlotPriority"
	.byte	0x2
	.uahalf	0x794
	.byte	0x1
	.uaword	0xa00c
	.byte	0x3
	.uaword	0xb4d7
	.uleb128 0x28
	.uaword	.LASF73
	.byte	0x2
	.uahalf	0x794
	.uaword	0xa7e3
	.byte	0
	.uleb128 0x29
	.string	"IfxVadc_getQueueSlotStartMode"
	.byte	0x2
	.uahalf	0x79a
	.byte	0x1
	.uaword	0xa098
	.byte	0x3
	.uaword	0xb510
	.uleb128 0x28
	.uaword	.LASF73
	.byte	0x2
	.uahalf	0x79a
	.uaword	0xa7e3
	.byte	0
	.uleb128 0x29
	.string	"IfxVadc_getQueueSlotTriggerInput"
	.byte	0x2
	.uahalf	0x7a0
	.byte	0x1
	.uaword	0xa57d
	.byte	0x3
	.uaword	0xb54c
	.uleb128 0x28
	.uaword	.LASF73
	.byte	0x2
	.uahalf	0x7a0
	.uaword	0xa7e3
	.byte	0
	.uleb128 0x29
	.string	"IfxVadc_getQueueSlotTriggerMode"
	.byte	0x2
	.uahalf	0x7a6
	.byte	0x1
	.uaword	0xa3b1
	.byte	0x3
	.uaword	0xb587
	.uleb128 0x28
	.uaword	.LASF73
	.byte	0x2
	.uahalf	0x7a6
	.uaword	0xa7e3
	.byte	0
	.uleb128 0x29
	.string	"IfxVadc_getQueueSlotGatingMode"
	.byte	0x2
	.uahalf	0x788
	.byte	0x1
	.uaword	0x931e
	.byte	0x3
	.uaword	0xb5c1
	.uleb128 0x28
	.uaword	.LASF73
	.byte	0x2
	.uahalf	0x788
	.uaword	0xa7e3
	.byte	0
	.uleb128 0x29
	.string	"IfxVadc_getQueueSlotGatingSource"
	.byte	0x2
	.uahalf	0x78e
	.byte	0x1
	.uaword	0x94d7
	.byte	0x3
	.uaword	0xb5fd
	.uleb128 0x28
	.uaword	.LASF73
	.byte	0x2
	.uahalf	0x78e
	.uaword	0xa7e3
	.byte	0
	.uleb128 0x29
	.string	"IfxVadc_isRequestBackgroundScanSlotEnabled"
	.byte	0x2
	.uahalf	0x800
	.byte	0x1
	.uaword	0x2c7
	.byte	0x3
	.uaword	0xb643
	.uleb128 0x28
	.uaword	.LASF73
	.byte	0x2
	.uahalf	0x800
	.uaword	0xa7e3
	.byte	0
	.uleb128 0x29
	.string	"IfxVadc_getBackgroundScanSlotPriority"
	.byte	0x2
	.uahalf	0x6f9
	.byte	0x1
	.uaword	0xa00c
	.byte	0x3
	.uaword	0xb684
	.uleb128 0x28
	.uaword	.LASF73
	.byte	0x2
	.uahalf	0x6f9
	.uaword	0xa7e3
	.byte	0
	.uleb128 0x29
	.string	"IfxVadc_getBackgroundScanSlotStartMode"
	.byte	0x2
	.uahalf	0x6ff
	.byte	0x1
	.uaword	0xa098
	.byte	0x3
	.uaword	0xb6c6
	.uleb128 0x28
	.uaword	.LASF73
	.byte	0x2
	.uahalf	0x6ff
	.uaword	0xa7e3
	.byte	0
	.uleb128 0x29
	.string	"IfxVadc_getBackgroundScanTriggerInput"
	.byte	0x2
	.uahalf	0x705
	.byte	0x1
	.uaword	0xa57d
	.byte	0x3
	.uaword	0xb707
	.uleb128 0x28
	.uaword	.LASF42
	.byte	0x2
	.uahalf	0x705
	.uaword	0x844b
	.byte	0
	.uleb128 0x29
	.string	"IfxVadc_getBackgroundScanTriggerMode"
	.byte	0x2
	.uahalf	0x70b
	.byte	0x1
	.uaword	0xa3b1
	.byte	0x3
	.uaword	0xb747
	.uleb128 0x28
	.uaword	.LASF42
	.byte	0x2
	.uahalf	0x70b
	.uaword	0x844b
	.byte	0
	.uleb128 0x29
	.string	"IfxVadc_getBackgroundScanGatingMode"
	.byte	0x2
	.uahalf	0x6ed
	.byte	0x1
	.uaword	0x931e
	.byte	0x3
	.uaword	0xb786
	.uleb128 0x28
	.uaword	.LASF42
	.byte	0x2
	.uahalf	0x6ed
	.uaword	0x844b
	.byte	0
	.uleb128 0x29
	.string	"IfxVadc_getBackgroundScanGatingSource"
	.byte	0x2
	.uahalf	0x6f3
	.byte	0x1
	.uaword	0x94d7
	.byte	0x3
	.uaword	0xb7c7
	.uleb128 0x28
	.uaword	.LASF42
	.byte	0x2
	.uahalf	0x6f3
	.uaword	0x844b
	.byte	0
	.uleb128 0x29
	.string	"IfxVadc_isAutoBackgroundScanEnabled"
	.byte	0x2
	.uahalf	0x7f4
	.byte	0x1
	.uaword	0x2c7
	.byte	0x3
	.uaword	0xb806
	.uleb128 0x28
	.uaword	.LASF42
	.byte	0x2
	.uahalf	0x7f4
	.uaword	0x844b
	.byte	0
	.uleb128 0x29
	.string	"IfxVadc_getMasterIndex"
	.byte	0x2
	.uahalf	0x780
	.byte	0x1
	.uaword	0x251
	.byte	0x3
	.uaword	0xb844
	.uleb128 0x28
	.uaword	.LASF73
	.byte	0x2
	.uahalf	0x780
	.uaword	0xa7e3
	.uleb128 0x2b
	.uaword	.LASF77
	.byte	0x2
	.uahalf	0x782
	.uaword	0x251
	.byte	0
	.uleb128 0x24
	.string	"IfxVadc_Adc_getMasterId"
	.byte	0x1
	.byte	0x4e
	.byte	0x1
	.uaword	0x60d
	.byte	0x3
	.uaword	0xb8ac
	.uleb128 0x23
	.string	"slave"
	.byte	0x1
	.byte	0x4e
	.uaword	0x60d
	.uleb128 0x2c
	.uaword	.LASF77
	.byte	0x1
	.byte	0x4e
	.uaword	0xa59b
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.byte	0x50
	.uaword	0x251
	.uleb128 0x25
	.string	"idxOffset"
	.byte	0x1
	.byte	0x50
	.uaword	0x251
	.uleb128 0x25
	.string	"masterId"
	.byte	0x1
	.byte	0x51
	.uaword	0x60d
	.byte	0
	.uleb128 0x29
	.string	"IfxVadc_getGlobalConfigValue"
	.byte	0x2
	.uahalf	0x73d
	.byte	0x1
	.uaword	0x4bfd
	.byte	0x3
	.uaword	0xb8f4
	.uleb128 0x28
	.uaword	.LASF42
	.byte	0x2
	.uahalf	0x73d
	.uaword	0x844b
	.uleb128 0x2a
	.string	"globCfg"
	.byte	0x2
	.uahalf	0x73f
	.uaword	0x4bfd
	.byte	0
	.uleb128 0x26
	.string	"IfxVadc_setReferenceInput"
	.byte	0x2
	.uahalf	0x8b3
	.byte	0x1
	.byte	0x3
	.uaword	0xb93d
	.uleb128 0x28
	.uaword	.LASF73
	.byte	0x2
	.uahalf	0x8b3
	.uaword	0xa7e3
	.uleb128 0x28
	.uaword	.LASF74
	.byte	0x2
	.uahalf	0x8b3
	.uaword	0x8b8f
	.uleb128 0x28
	.uaword	.LASF65
	.byte	0x2
	.uahalf	0x8b3
	.uaword	0x8bf9
	.byte	0
	.uleb128 0x26
	.string	"IfxVadc_storeGroupResult"
	.byte	0x2
	.uahalf	0x90a
	.byte	0x1
	.byte	0x3
	.uaword	0xb985
	.uleb128 0x28
	.uaword	.LASF73
	.byte	0x2
	.uahalf	0x90a
	.uaword	0xa7e3
	.uleb128 0x28
	.uaword	.LASF74
	.byte	0x2
	.uahalf	0x90a
	.uaword	0x8b8f
	.uleb128 0x28
	.uaword	.LASF66
	.byte	0x2
	.uahalf	0x90a
	.uaword	0x8e7d
	.byte	0
	.uleb128 0x26
	.string	"IfxVadc_setLowerBoundary"
	.byte	0x2
	.uahalf	0x890
	.byte	0x1
	.byte	0x3
	.uaword	0xb9cd
	.uleb128 0x28
	.uaword	.LASF73
	.byte	0x2
	.uahalf	0x890
	.uaword	0xa7e3
	.uleb128 0x28
	.uaword	.LASF74
	.byte	0x2
	.uahalf	0x890
	.uaword	0x8b8f
	.uleb128 0x28
	.uaword	.LASF67
	.byte	0x2
	.uahalf	0x890
	.uaword	0x8a9c
	.byte	0
	.uleb128 0x26
	.string	"IfxVadc_setUpperBoundary"
	.byte	0x2
	.uahalf	0x8f2
	.byte	0x1
	.byte	0x3
	.uaword	0xba15
	.uleb128 0x28
	.uaword	.LASF73
	.byte	0x2
	.uahalf	0x8f2
	.uaword	0xa7e3
	.uleb128 0x28
	.uaword	.LASF74
	.byte	0x2
	.uahalf	0x8f2
	.uaword	0x8b8f
	.uleb128 0x28
	.uaword	.LASF68
	.byte	0x2
	.uahalf	0x8f2
	.uaword	0x8a9c
	.byte	0
	.uleb128 0x26
	.string	"IfxVadc_setSyncRequest"
	.byte	0x2
	.uahalf	0x8ec
	.byte	0x1
	.byte	0x3
	.uaword	0xba5b
	.uleb128 0x28
	.uaword	.LASF73
	.byte	0x2
	.uahalf	0x8ec
	.uaword	0xa7e3
	.uleb128 0x28
	.uaword	.LASF74
	.byte	0x2
	.uahalf	0x8ec
	.uaword	0x8b8f
	.uleb128 0x28
	.uaword	.LASF59
	.byte	0x2
	.uahalf	0x8ec
	.uaword	0x2c7
	.byte	0
	.uleb128 0x26
	.string	"IfxVadc_setChannelInputClass"
	.byte	0x2
	.uahalf	0x866
	.byte	0x1
	.byte	0x3
	.uaword	0xbaa7
	.uleb128 0x28
	.uaword	.LASF73
	.byte	0x2
	.uahalf	0x866
	.uaword	0xa7e3
	.uleb128 0x28
	.uaword	.LASF74
	.byte	0x2
	.uahalf	0x866
	.uaword	0x8b8f
	.uleb128 0x28
	.uaword	.LASF64
	.byte	0x2
	.uahalf	0x866
	.uaword	0x9578
	.byte	0
	.uleb128 0x26
	.string	"IfxVadc_setChannelLimitCheckMode"
	.byte	0x2
	.uahalf	0x86c
	.byte	0x1
	.byte	0x3
	.uaword	0xbaf7
	.uleb128 0x28
	.uaword	.LASF73
	.byte	0x2
	.uahalf	0x86c
	.uaword	0xa7e3
	.uleb128 0x28
	.uaword	.LASF74
	.byte	0x2
	.uahalf	0x86c
	.uaword	0x8b8f
	.uleb128 0x28
	.uaword	.LASF70
	.byte	0x2
	.uahalf	0x86c
	.uaword	0x9623
	.byte	0
	.uleb128 0x26
	.string	"IfxVadc_setResultPosition"
	.byte	0x2
	.uahalf	0x8c7
	.byte	0x1
	.byte	0x3
	.uaword	0xbb40
	.uleb128 0x28
	.uaword	.LASF73
	.byte	0x2
	.uahalf	0x8c7
	.uaword	0xa7e3
	.uleb128 0x28
	.uaword	.LASF74
	.byte	0x2
	.uahalf	0x8c7
	.uaword	0x8b8f
	.uleb128 0x28
	.uaword	.LASF60
	.byte	0x2
	.uahalf	0x8c7
	.uaword	0x2c7
	.byte	0
	.uleb128 0x26
	.string	"IfxVadc_setBackgroundResultTarget"
	.byte	0x2
	.uahalf	0x836
	.byte	0x1
	.byte	0x3
	.uaword	0xbb91
	.uleb128 0x28
	.uaword	.LASF73
	.byte	0x2
	.uahalf	0x836
	.uaword	0xa7e3
	.uleb128 0x28
	.uaword	.LASF74
	.byte	0x2
	.uahalf	0x836
	.uaword	0x8b8f
	.uleb128 0x28
	.uaword	.LASF58
	.byte	0x2
	.uahalf	0x836
	.uaword	0x2c7
	.byte	0
	.uleb128 0x26
	.string	"IfxVadc_setBoundaryMode"
	.byte	0x2
	.uahalf	0x859
	.byte	0x1
	.byte	0x3
	.uaword	0xbbd8
	.uleb128 0x28
	.uaword	.LASF73
	.byte	0x2
	.uahalf	0x859
	.uaword	0xa7e3
	.uleb128 0x28
	.uaword	.LASF74
	.byte	0x2
	.uahalf	0x859
	.uaword	0x8b8f
	.uleb128 0x28
	.uaword	.LASF69
	.byte	0x2
	.uahalf	0x859
	.uaword	0x89e4
	.byte	0
	.uleb128 0x26
	.string	"IfxVadc_setGroupPriorityChannel"
	.byte	0x2
	.uahalf	0x87e
	.byte	0x1
	.byte	0x3
	.uaword	0xbc1b
	.uleb128 0x28
	.uaword	.LASF73
	.byte	0x2
	.uahalf	0x87e
	.uaword	0xa7e3
	.uleb128 0x28
	.uaword	.LASF74
	.byte	0x2
	.uahalf	0x87e
	.uaword	0x8b8f
	.byte	0
	.uleb128 0x26
	.string	"IfxVadc_setBackgroundPriorityChannel"
	.byte	0x2
	.uahalf	0x830
	.byte	0x1
	.byte	0x3
	.uaword	0xbc63
	.uleb128 0x28
	.uaword	.LASF73
	.byte	0x2
	.uahalf	0x830
	.uaword	0xa7e3
	.uleb128 0x28
	.uaword	.LASF74
	.byte	0x2
	.uahalf	0x830
	.uaword	0x8b8f
	.byte	0
	.uleb128 0x26
	.string	"IfxVadc_setChannelEventNodePointer0"
	.byte	0x2
	.uahalf	0x85f
	.byte	0x1
	.byte	0x3
	.uaword	0xbcb6
	.uleb128 0x28
	.uaword	.LASF73
	.byte	0x2
	.uahalf	0x85f
	.uaword	0xa7e3
	.uleb128 0x28
	.uaword	.LASF62
	.byte	0x2
	.uahalf	0x85f
	.uaword	0xa209
	.uleb128 0x28
	.uaword	.LASF57
	.byte	0x2
	.uahalf	0x85f
	.uaword	0x8b8f
	.byte	0
	.uleb128 0x26
	.string	"IfxVadc_clearChannelRequest"
	.byte	0x2
	.uahalf	0x688
	.byte	0x1
	.byte	0x3
	.uaword	0xbcf5
	.uleb128 0x28
	.uaword	.LASF73
	.byte	0x2
	.uahalf	0x688
	.uaword	0xa7e3
	.uleb128 0x28
	.uaword	.LASF63
	.byte	0x2
	.uahalf	0x688
	.uaword	0x8b8f
	.byte	0
	.uleb128 0x22
	.string	"IfxSrc_init"
	.byte	0x3
	.byte	0xfe
	.byte	0x1
	.byte	0x3
	.uaword	0xbd3a
	.uleb128 0x23
	.string	"src"
	.byte	0x3
	.byte	0xfe
	.uaword	0xadd2
	.uleb128 0x23
	.string	"typOfService"
	.byte	0x3
	.byte	0xfe
	.uaword	0x1fb
	.uleb128 0x23
	.string	"priority"
	.byte	0x3
	.byte	0xfe
	.uaword	0x309
	.byte	0
	.uleb128 0x22
	.string	"IfxSrc_enable"
	.byte	0x3
	.byte	0xf8
	.byte	0x1
	.byte	0x3
	.uaword	0xbd5d
	.uleb128 0x23
	.string	"src"
	.byte	0x3
	.byte	0xf8
	.uaword	0xadd2
	.byte	0
	.uleb128 0x26
	.string	"IfxVadc_enableFifoMode"
	.byte	0x2
	.uahalf	0x6bb
	.byte	0x1
	.byte	0x3
	.uaword	0xbd97
	.uleb128 0x28
	.uaword	.LASF73
	.byte	0x2
	.uahalf	0x6bb
	.uaword	0xa7e3
	.uleb128 0x28
	.uaword	.LASF66
	.byte	0x2
	.uahalf	0x6bb
	.uaword	0x8e7d
	.byte	0
	.uleb128 0x26
	.string	"IfxVadc_setResultNodeEventPointer0"
	.byte	0x2
	.uahalf	0x8b9
	.byte	0x1
	.byte	0x3
	.uaword	0xbde9
	.uleb128 0x28
	.uaword	.LASF73
	.byte	0x2
	.uahalf	0x8b9
	.uaword	0xa7e3
	.uleb128 0x28
	.uaword	.LASF61
	.byte	0x2
	.uahalf	0x8b9
	.uaword	0xa209
	.uleb128 0x28
	.uaword	.LASF66
	.byte	0x2
	.uahalf	0x8b9
	.uaword	0x8e7d
	.byte	0
	.uleb128 0x26
	.string	"IfxVadc_setResultNodeEventPointer1"
	.byte	0x2
	.uahalf	0x8c0
	.byte	0x1
	.byte	0x3
	.uaword	0xbe3b
	.uleb128 0x28
	.uaword	.LASF73
	.byte	0x2
	.uahalf	0x8c0
	.uaword	0xa7e3
	.uleb128 0x28
	.uaword	.LASF61
	.byte	0x2
	.uahalf	0x8c0
	.uaword	0xa209
	.uleb128 0x28
	.uaword	.LASF66
	.byte	0x2
	.uahalf	0x8c0
	.uaword	0x8e7d
	.byte	0
	.uleb128 0x26
	.string	"IfxVadc_clearAllResultRequests"
	.byte	0x2
	.uahalf	0x682
	.byte	0x1
	.byte	0x3
	.uaword	0xbe71
	.uleb128 0x28
	.uaword	.LASF73
	.byte	0x2
	.uahalf	0x682
	.uaword	0xa7e3
	.byte	0
	.uleb128 0x24
	.string	"IfxVadc_Adc_getMasterKernelIndex"
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.uaword	0xa59b
	.byte	0x3
	.uaword	0xbebb
	.uleb128 0x23
	.string	"slave"
	.byte	0x1
	.byte	0x68
	.uaword	0x60d
	.uleb128 0x23
	.string	"master"
	.byte	0x1
	.byte	0x68
	.uaword	0x60d
	.byte	0
	.uleb128 0x26
	.string	"IfxVadc_setMasterIndex"
	.byte	0x2
	.uahalf	0x896
	.byte	0x1
	.byte	0x3
	.uaword	0xbef5
	.uleb128 0x28
	.uaword	.LASF73
	.byte	0x2
	.uahalf	0x896
	.uaword	0xa7e3
	.uleb128 0x28
	.uaword	.LASF77
	.byte	0x2
	.uahalf	0x896
	.uaword	0x251
	.byte	0
	.uleb128 0x26
	.string	"IfxVadc_setAnalogConvertControl"
	.byte	0x2
	.uahalf	0x818
	.byte	0x1
	.byte	0x3
	.uaword	0xbf48
	.uleb128 0x28
	.uaword	.LASF73
	.byte	0x2
	.uahalf	0x818
	.uaword	0xa7e3
	.uleb128 0x27
	.string	"analogConverterMode"
	.byte	0x2
	.uahalf	0x818
	.uaword	0x8610
	.byte	0
	.uleb128 0x26
	.string	"IfxVadc_setArbitrationRoundLength"
	.byte	0x2
	.uahalf	0x81e
	.byte	0x1
	.byte	0x3
	.uaword	0xbf8d
	.uleb128 0x28
	.uaword	.LASF73
	.byte	0x2
	.uahalf	0x81e
	.uaword	0xa7e3
	.uleb128 0x28
	.uaword	.LASF47
	.byte	0x2
	.uahalf	0x81e
	.uaword	0x86ce
	.byte	0
	.uleb128 0x26
	.string	"IfxVadc_enableQueueSlotExternalTrigger"
	.byte	0x2
	.uahalf	0x6cb
	.byte	0x1
	.byte	0x3
	.uaword	0xbfcb
	.uleb128 0x28
	.uaword	.LASF73
	.byte	0x2
	.uahalf	0x6cb
	.uaword	0xa7e3
	.byte	0
	.uleb128 0x26
	.string	"IfxVadc_setQueueSlotTriggerOperatingConfig"
	.byte	0x2
	.uahalf	0x8a8
	.byte	0x1
	.byte	0x3
	.uaword	0xc034
	.uleb128 0x28
	.uaword	.LASF73
	.byte	0x2
	.uahalf	0x8a8
	.uaword	0xa7e3
	.uleb128 0x28
	.uaword	.LASF46
	.byte	0x2
	.uahalf	0x8a8
	.uaword	0xa3b1
	.uleb128 0x28
	.uaword	.LASF44
	.byte	0x2
	.uahalf	0x8a8
	.uaword	0xa57d
	.uleb128 0x2a
	.string	"qctrl0"
	.byte	0x2
	.uahalf	0x8aa
	.uaword	0x47e7
	.byte	0
	.uleb128 0x26
	.string	"IfxVadc_setQueueSlotGatingConfig"
	.byte	0x2
	.uahalf	0x89d
	.byte	0x1
	.byte	0x3
	.uaword	0xc093
	.uleb128 0x28
	.uaword	.LASF73
	.byte	0x2
	.uahalf	0x89d
	.uaword	0xa7e3
	.uleb128 0x28
	.uaword	.LASF43
	.byte	0x2
	.uahalf	0x89d
	.uaword	0x94d7
	.uleb128 0x28
	.uaword	.LASF45
	.byte	0x2
	.uahalf	0x89d
	.uaword	0x931e
	.uleb128 0x2a
	.string	"qctrl0"
	.byte	0x2
	.uahalf	0x89f
	.uaword	0x47e7
	.byte	0
	.uleb128 0x26
	.string	"IfxVadc_disableQueueSlotExternalTrigger"
	.byte	0x2
	.uahalf	0x6a9
	.byte	0x1
	.byte	0x3
	.uaword	0xc0d2
	.uleb128 0x28
	.uaword	.LASF73
	.byte	0x2
	.uahalf	0x6a9
	.uaword	0xa7e3
	.byte	0
	.uleb128 0x26
	.string	"IfxVadc_clearQueue"
	.byte	0x2
	.uahalf	0x68e
	.byte	0x1
	.byte	0x3
	.uaword	0xc10f
	.uleb128 0x28
	.uaword	.LASF73
	.byte	0x2
	.uahalf	0x68e
	.uaword	0xa7e3
	.uleb128 0x27
	.string	"flushQueue"
	.byte	0x2
	.uahalf	0x68e
	.uaword	0x2c7
	.byte	0
	.uleb128 0x26
	.string	"IfxVadc_enableScanSlotExternalTrigger"
	.byte	0x2
	.uahalf	0x6d1
	.byte	0x1
	.byte	0x3
	.uaword	0xc14c
	.uleb128 0x28
	.uaword	.LASF73
	.byte	0x2
	.uahalf	0x6d1
	.uaword	0xa7e3
	.byte	0
	.uleb128 0x26
	.string	"IfxVadc_setScanSlotTriggerConfig"
	.byte	0x2
	.uahalf	0x8d8
	.byte	0x1
	.byte	0x3
	.uaword	0xc1ab
	.uleb128 0x28
	.uaword	.LASF73
	.byte	0x2
	.uahalf	0x8d8
	.uaword	0xa7e3
	.uleb128 0x28
	.uaword	.LASF46
	.byte	0x2
	.uahalf	0x8d8
	.uaword	0xa3b1
	.uleb128 0x28
	.uaword	.LASF44
	.byte	0x2
	.uahalf	0x8d8
	.uaword	0xa57d
	.uleb128 0x2a
	.string	"asctrl"
	.byte	0x2
	.uahalf	0x8da
	.uaword	0x43d7
	.byte	0
	.uleb128 0x26
	.string	"IfxVadc_setScanSlotGatingConfig"
	.byte	0x2
	.uahalf	0x8cd
	.byte	0x1
	.byte	0x3
	.uaword	0xc209
	.uleb128 0x28
	.uaword	.LASF73
	.byte	0x2
	.uahalf	0x8cd
	.uaword	0xa7e3
	.uleb128 0x28
	.uaword	.LASF43
	.byte	0x2
	.uahalf	0x8cd
	.uaword	0x94d7
	.uleb128 0x28
	.uaword	.LASF45
	.byte	0x2
	.uahalf	0x8cd
	.uaword	0x931e
	.uleb128 0x2a
	.string	"asctrl"
	.byte	0x2
	.uahalf	0x8cf
	.uaword	0x43d7
	.byte	0
	.uleb128 0x26
	.string	"IfxVadc_disableScanSlotExternalTrigger"
	.byte	0x2
	.uahalf	0x6af
	.byte	0x1
	.byte	0x3
	.uaword	0xc247
	.uleb128 0x28
	.uaword	.LASF73
	.byte	0x2
	.uahalf	0x6af
	.uaword	0xa7e3
	.byte	0
	.uleb128 0x26
	.string	"IfxVadc_setAutoScan"
	.byte	0x2
	.uahalf	0x82a
	.byte	0x1
	.byte	0x3
	.uaword	0xc289
	.uleb128 0x28
	.uaword	.LASF73
	.byte	0x2
	.uahalf	0x82a
	.uaword	0xa7e3
	.uleb128 0x27
	.string	"autoscanEnable"
	.byte	0x2
	.uahalf	0x82a
	.uaword	0x2c7
	.byte	0
	.uleb128 0x26
	.string	"IfxVadc_enableBackgroundScanSlotExternalTrigger"
	.byte	0x2
	.uahalf	0x6b5
	.byte	0x1
	.byte	0x3
	.uaword	0xc2d0
	.uleb128 0x28
	.uaword	.LASF42
	.byte	0x2
	.uahalf	0x6b5
	.uaword	0x844b
	.byte	0
	.uleb128 0x26
	.string	"IfxVadc_setBackgroundScanSlotTriggerConfig"
	.byte	0x2
	.uahalf	0x84e
	.byte	0x1
	.byte	0x3
	.uaword	0xc33a
	.uleb128 0x28
	.uaword	.LASF42
	.byte	0x2
	.uahalf	0x84e
	.uaword	0x844b
	.uleb128 0x28
	.uaword	.LASF46
	.byte	0x2
	.uahalf	0x84e
	.uaword	0xa3b1
	.uleb128 0x28
	.uaword	.LASF44
	.byte	0x2
	.uahalf	0x84e
	.uaword	0xa57d
	.uleb128 0x2a
	.string	"brsctrl"
	.byte	0x2
	.uahalf	0x850
	.uaword	0x4156
	.byte	0
	.uleb128 0x26
	.string	"IfxVadc_setBackgroundScanSlotGatingConfig"
	.byte	0x2
	.uahalf	0x843
	.byte	0x1
	.byte	0x3
	.uaword	0xc3a3
	.uleb128 0x28
	.uaword	.LASF42
	.byte	0x2
	.uahalf	0x843
	.uaword	0x844b
	.uleb128 0x28
	.uaword	.LASF43
	.byte	0x2
	.uahalf	0x843
	.uaword	0x94d7
	.uleb128 0x28
	.uaword	.LASF45
	.byte	0x2
	.uahalf	0x843
	.uaword	0x931e
	.uleb128 0x2a
	.string	"brsctrl"
	.byte	0x2
	.uahalf	0x845
	.uaword	0x4156
	.byte	0
	.uleb128 0x26
	.string	"IfxVadc_setAutoBackgroundScan"
	.byte	0x2
	.uahalf	0x824
	.byte	0x1
	.byte	0x3
	.uaword	0xc3f9
	.uleb128 0x28
	.uaword	.LASF42
	.byte	0x2
	.uahalf	0x824
	.uaword	0x844b
	.uleb128 0x27
	.string	"autoBackgroundScanEnable"
	.byte	0x2
	.uahalf	0x824
	.uaword	0x2c7
	.byte	0
	.uleb128 0x26
	.string	"IfxVadc_setGroupResolution"
	.byte	0x2
	.uahalf	0x884
	.byte	0x1
	.byte	0x3
	.uaword	0xc443
	.uleb128 0x28
	.uaword	.LASF73
	.byte	0x2
	.uahalf	0x884
	.uaword	0xa7e3
	.uleb128 0x28
	.uaword	.LASF76
	.byte	0x2
	.uahalf	0x884
	.uaword	0x251
	.uleb128 0x28
	.uaword	.LASF52
	.byte	0x2
	.uahalf	0x884
	.uaword	0x8cad
	.byte	0
	.uleb128 0x26
	.string	"IfxVadc_setGroupSampleTime"
	.byte	0x2
	.uahalf	0x88a
	.byte	0x1
	.byte	0x3
	.uaword	0xc499
	.uleb128 0x28
	.uaword	.LASF73
	.byte	0x2
	.uahalf	0x88a
	.uaword	0xa7e3
	.uleb128 0x28
	.uaword	.LASF76
	.byte	0x2
	.uahalf	0x88a
	.uaword	0x251
	.uleb128 0x28
	.uaword	.LASF71
	.byte	0x2
	.uahalf	0x88a
	.uaword	0x2ae
	.uleb128 0x28
	.uaword	.LASF51
	.byte	0x2
	.uahalf	0x88a
	.uaword	0x2ae
	.byte	0
	.uleb128 0x26
	.string	"IfxVadc_enableModule"
	.byte	0x2
	.uahalf	0x6c1
	.byte	0x1
	.byte	0x3
	.uaword	0xc4d4
	.uleb128 0x28
	.uaword	.LASF42
	.byte	0x2
	.uahalf	0x6c1
	.uaword	0x844b
	.uleb128 0x2a
	.string	"passwd"
	.byte	0x2
	.uahalf	0x6c3
	.uaword	0x27c
	.byte	0
	.uleb128 0x26
	.string	"IfxVadc_setGlobalResolution"
	.byte	0x2
	.uahalf	0x872
	.byte	0x1
	.byte	0x3
	.uaword	0xc51f
	.uleb128 0x28
	.uaword	.LASF42
	.byte	0x2
	.uahalf	0x872
	.uaword	0x844b
	.uleb128 0x28
	.uaword	.LASF76
	.byte	0x2
	.uahalf	0x872
	.uaword	0x251
	.uleb128 0x28
	.uaword	.LASF52
	.byte	0x2
	.uahalf	0x872
	.uaword	0x8cad
	.byte	0
	.uleb128 0x26
	.string	"IfxVadc_setGlobalSampleTime"
	.byte	0x2
	.uahalf	0x878
	.byte	0x1
	.byte	0x3
	.uaword	0xc576
	.uleb128 0x28
	.uaword	.LASF42
	.byte	0x2
	.uahalf	0x878
	.uaword	0x844b
	.uleb128 0x28
	.uaword	.LASF76
	.byte	0x2
	.uahalf	0x878
	.uaword	0x251
	.uleb128 0x28
	.uaword	.LASF71
	.byte	0x2
	.uahalf	0x878
	.uaword	0x2ae
	.uleb128 0x28
	.uaword	.LASF51
	.byte	0x2
	.uahalf	0x878
	.uaword	0x2ae
	.byte	0
	.uleb128 0x26
	.string	"IfxVadc_setEmuxInterfaceForGroup"
	.byte	0x2
	.uahalf	0x940
	.byte	0x1
	.byte	0x3
	.uaword	0xc5c6
	.uleb128 0x28
	.uaword	.LASF42
	.byte	0x2
	.uahalf	0x940
	.uaword	0x844b
	.uleb128 0x28
	.uaword	.LASF72
	.byte	0x2
	.uahalf	0x940
	.uaword	0x9010
	.uleb128 0x28
	.uaword	.LASF53
	.byte	0x2
	.uahalf	0x940
	.uaword	0x60d
	.byte	0
	.uleb128 0x26
	.string	"IfxVadc_initEmuxPin"
	.byte	0x2
	.uahalf	0x7e0
	.byte	0x1
	.byte	0x3
	.uaword	0xc60a
	.uleb128 0x27
	.string	"emux"
	.byte	0x2
	.uahalf	0x7e0
	.uaword	0xc60a
	.uleb128 0x28
	.uaword	.LASF55
	.byte	0x2
	.uahalf	0x7e0
	.uaword	0x8242
	.uleb128 0x28
	.uaword	.LASF56
	.byte	0x2
	.uahalf	0x7e0
	.uaword	0x83fd
	.byte	0
	.uleb128 0x1b
	.byte	0x4
	.uaword	0x8481
	.uleb128 0x2d
	.byte	0x1
	.string	"IfxVadc_Adc_deInitGroup"
	.byte	0x1
	.byte	0x72
	.byte	0x1
	.uaword	.LFB336
	.uaword	.LFE336
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xc6bd
	.uleb128 0x2e
	.uaword	.LASF53
	.byte	0x1
	.byte	0x72
	.uaword	0xc6bd
	.uaword	.LLST0
	.uleb128 0x2f
	.uaword	.LASF42
	.byte	0x1
	.byte	0x74
	.uaword	0x844b
	.uleb128 0x2f
	.uaword	.LASF73
	.byte	0x1
	.byte	0x75
	.uaword	0xa7e3
	.uleb128 0x30
	.uaword	.LASF79
	.byte	0x1
	.byte	0x77
	.uaword	0x60d
	.uaword	.LLST1
	.uleb128 0x31
	.uaword	0xaf2d
	.uaword	.LBB224
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x7b
	.uaword	0xc68b
	.uleb128 0x32
	.uaword	0xaf4a
	.byte	0x1
	.byte	0x6d
	.byte	0
	.uleb128 0x33
	.uaword	.LVL5
	.uaword	0xe375
	.uaword	0xc6a5
	.uleb128 0x34
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x34
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.uaword	.LVL6
	.byte	0x1
	.uaword	0xe3a0
	.uleb128 0x34
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x34
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.byte	0x4
	.uaword	0xa7e9
	.uleb128 0x2d
	.byte	0x1
	.string	"IfxVadc_Adc_disableModule"
	.byte	0x1
	.byte	0x80
	.byte	0x1
	.uaword	.LFB337
	.uaword	.LFE337
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xc75b
	.uleb128 0x2e
	.uaword	.LASF42
	.byte	0x1
	.byte	0x80
	.uaword	0x844b
	.uaword	.LLST2
	.uleb128 0x36
	.uaword	0xaf57
	.uaword	.LBB230
	.uaword	.LBE230
	.byte	0x1
	.byte	0x82
	.uleb128 0x37
	.uaword	0xaf77
	.uaword	.LLST3
	.uleb128 0x38
	.uaword	.LBB231
	.uaword	.LBE231
	.uleb128 0x39
	.uaword	0xaf83
	.uaword	.LLST4
	.uleb128 0x3a
	.uaword	.LVL9
	.uaword	0xe3cc
	.uleb128 0x33
	.uaword	.LVL11
	.uaword	0xe3f8
	.uaword	0xc747
	.uleb128 0x34
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.uaword	.LVL12
	.byte	0x1
	.uaword	0xe422
	.uleb128 0x34
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.byte	0x1
	.string	"IfxVadc_Adc_getChannelConfig"
	.byte	0x1
	.byte	0x86
	.byte	0x1
	.uaword	.LFB338
	.uaword	.LFE338
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xc960
	.uleb128 0x2e
	.uaword	.LASF57
	.byte	0x1
	.byte	0x86
	.uaword	0xc960
	.uaword	.LLST5
	.uleb128 0x2e
	.uaword	.LASF78
	.byte	0x1
	.byte	0x86
	.uaword	0xc966
	.uaword	.LLST6
	.uleb128 0x2f
	.uaword	.LASF73
	.byte	0x1
	.byte	0x88
	.uaword	0xa7e3
	.uleb128 0x30
	.uaword	.LASF74
	.byte	0x1
	.byte	0x89
	.uaword	0x8b8f
	.uaword	.LLST7
	.uleb128 0x2f
	.uaword	.LASF75
	.byte	0x1
	.byte	0x8e
	.uaword	0x4256
	.uleb128 0x3b
	.string	"channelServiceRequestNodePtr"
	.byte	0x1
	.byte	0x9e
	.uaword	0x2a0
	.uaword	.LLST8
	.uleb128 0x3c
	.uaword	.LASF79
	.byte	0x1
	.byte	0xa0
	.uaword	0x60d
	.byte	0x1
	.byte	0x58
	.uleb128 0x3b
	.string	"src"
	.byte	0x1
	.byte	0xa2
	.uaword	0xadd2
	.uaword	.LLST9
	.uleb128 0x3b
	.string	"resultServiceRequestNodePtr"
	.byte	0x1
	.byte	0xb1
	.uaword	0x2a0
	.uaword	.LLST10
	.uleb128 0x31
	.uaword	0xaf93
	.uaword	.LBB232
	.uaword	.Ldebug_ranges0+0x20
	.byte	0x1
	.byte	0x90
	.uaword	0xc869
	.uleb128 0x37
	.uaword	0xafcd
	.uaword	.LLST11
	.uleb128 0x32
	.uaword	0xafc1
	.byte	0x1
	.byte	0x6d
	.uleb128 0x3d
	.uaword	.Ldebug_ranges0+0x20
	.uleb128 0x3e
	.uaword	0xafd9
	.byte	0
	.byte	0
	.uleb128 0x3f
	.uaword	0xafe6
	.uaword	.LBB238
	.uaword	.LBE238
	.byte	0x1
	.byte	0x9d
	.uaword	0xc893
	.uleb128 0x32
	.uaword	0xb010
	.byte	0x1
	.byte	0x6d
	.uleb128 0x38
	.uaword	.LBB239
	.uaword	.LBE239
	.uleb128 0x3e
	.uaword	0xb01c
	.byte	0
	.byte	0
	.uleb128 0x3f
	.uaword	0xb034
	.uaword	.LBB240
	.uaword	.LBE240
	.byte	0x1
	.byte	0xa1
	.uaword	0xc8bd
	.uleb128 0x32
	.uaword	0xb06f
	.byte	0x1
	.byte	0x6d
	.uleb128 0x38
	.uaword	.LBB241
	.uaword	.LBE241
	.uleb128 0x3e
	.uaword	0xb07b
	.byte	0
	.byte	0
	.uleb128 0x3f
	.uaword	0xb09a
	.uaword	.LBB242
	.uaword	.LBE242
	.byte	0x1
	.byte	0xb5
	.uaword	0xc8e9
	.uleb128 0x37
	.uaword	0xb0db
	.uaword	.LLST12
	.uleb128 0x38
	.uaword	.LBB243
	.uaword	.LBE243
	.uleb128 0x3e
	.uaword	0xb0e7
	.byte	0
	.byte	0
	.uleb128 0x3f
	.uaword	0xb10d
	.uaword	.LBB244
	.uaword	.LBE244
	.byte	0x1
	.byte	0xb9
	.uaword	0xc915
	.uleb128 0x37
	.uaword	0xb14e
	.uaword	.LLST13
	.uleb128 0x38
	.uaword	.LBB245
	.uaword	.LBE245
	.uleb128 0x3e
	.uaword	0xb15a
	.byte	0
	.byte	0
	.uleb128 0x33
	.uaword	.LVL25
	.uaword	0xe44a
	.uaword	0xc92f
	.uleb128 0x34
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x34
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x33
	.uaword	.LVL30
	.uaword	0xe44a
	.uaword	0xc949
	.uleb128 0x34
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x34
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x40
	.uaword	.LVL36
	.uaword	0xe44a
	.uleb128 0x34
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x34
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.byte	0x4
	.uaword	0xa986
	.uleb128 0x1b
	.byte	0x4
	.uaword	0xaae7
	.uleb128 0x41
	.byte	0x1
	.string	"IfxVadc_Adc_getChannelConversionTime"
	.byte	0x1
	.byte	0xcd
	.byte	0x1
	.uaword	0x2ae
	.uaword	.LFB339
	.uaword	.LFE339
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xca42
	.uleb128 0x2e
	.uaword	.LASF57
	.byte	0x1
	.byte	0xcd
	.uaword	0xc960
	.uaword	.LLST14
	.uleb128 0x42
	.string	"conversionMode"
	.byte	0x1
	.byte	0xcd
	.uaword	0x8f4a
	.uaword	.LLST15
	.uleb128 0x31
	.uaword	0xb180
	.uaword	.LBB246
	.uaword	.Ldebug_ranges0+0x40
	.byte	0x1
	.byte	0xcf
	.uaword	0xc9f8
	.uleb128 0x37
	.uaword	0xb1b7
	.uaword	.LLST16
	.uleb128 0x37
	.uaword	0xb1ab
	.uaword	.LLST17
	.byte	0
	.uleb128 0x33
	.uaword	.LVL46
	.uaword	0xe47a
	.uaword	0xca0c
	.uleb128 0x34
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x3a
	.uaword	.LVL48
	.uaword	0xe4ad
	.uleb128 0x35
	.uaword	.LVL49
	.byte	0x1
	.uaword	0xe4d6
	.uleb128 0x34
	.byte	0x1
	.byte	0x56
	.byte	0x4
	.byte	0xf5
	.uleb128 0xf
	.uleb128 0x192
	.uleb128 0x34
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x34
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x34
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x34
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.byte	0x1
	.string	"IfxVadc_Adc_getGroupConfig"
	.byte	0x1
	.byte	0xd3
	.byte	0x1
	.uaword	.LFB340
	.uaword	.LFE340
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xce9b
	.uleb128 0x2e
	.uaword	.LASF53
	.byte	0x1
	.byte	0xd3
	.uaword	0xc6bd
	.uaword	.LLST18
	.uleb128 0x2e
	.uaword	.LASF78
	.byte	0x1
	.byte	0xd3
	.uaword	0xce9b
	.uaword	.LLST19
	.uleb128 0x30
	.uaword	.LASF76
	.byte	0x1
	.byte	0xd5
	.uaword	0x251
	.uaword	.LLST20
	.uleb128 0x3c
	.uaword	.LASF73
	.byte	0x1
	.byte	0xd6
	.uaword	0xa7e3
	.byte	0x1
	.byte	0x6c
	.uleb128 0x3c
	.uaword	.LASF42
	.byte	0x1
	.byte	0xd7
	.uaword	0x844b
	.byte	0x1
	.byte	0x6e
	.uleb128 0x30
	.uaword	.LASF71
	.byte	0x1
	.byte	0xd8
	.uaword	0x2ae
	.uaword	.LLST21
	.uleb128 0x3f
	.uaword	0xb1c4
	.uaword	.LBB254
	.uaword	.LBE254
	.byte	0x1
	.byte	0xdd
	.uaword	0xcae2
	.uleb128 0x32
	.uaword	0xb1f0
	.byte	0x1
	.byte	0x6c
	.byte	0
	.uleb128 0x31
	.uaword	0xb1fd
	.uaword	.LBB256
	.uaword	.Ldebug_ranges0+0x68
	.byte	0x1
	.byte	0xe1
	.uaword	0xcb06
	.uleb128 0x37
	.uaword	0xb232
	.uaword	.LLST22
	.uleb128 0x32
	.uaword	0xb226
	.byte	0x1
	.byte	0x6c
	.byte	0
	.uleb128 0x31
	.uaword	0xb23f
	.uaword	.LBB262
	.uaword	.Ldebug_ranges0+0x88
	.byte	0x1
	.byte	0xe2
	.uaword	0xcb3e
	.uleb128 0x43
	.uaword	0xb280
	.uleb128 0x37
	.uaword	0xb274
	.uaword	.LLST23
	.uleb128 0x32
	.uaword	0xb268
	.byte	0x1
	.byte	0x6c
	.uleb128 0x3d
	.uaword	.Ldebug_ranges0+0x88
	.uleb128 0x39
	.uaword	0xb28c
	.uaword	.LLST24
	.byte	0
	.byte	0
	.uleb128 0x3f
	.uaword	0xb299
	.uaword	.LBB266
	.uaword	.LBE266
	.byte	0x1
	.byte	0xe5
	.uaword	0xcb5b
	.uleb128 0x37
	.uaword	0xb2c8
	.uaword	.LLST25
	.byte	0
	.uleb128 0x44
	.uaword	0xb462
	.uaword	.LBB268
	.uaword	.Ldebug_ranges0+0xa0
	.byte	0x1
	.uahalf	0x103
	.uaword	0xcb79
	.uleb128 0x37
	.uaword	0xb492
	.uaword	.LLST26
	.byte	0
	.uleb128 0x44
	.uaword	0xb5fd
	.uaword	.LBB271
	.uaword	.Ldebug_ranges0+0xb8
	.byte	0x1
	.uahalf	0x121
	.uaword	0xcb97
	.uleb128 0x37
	.uaword	0xb636
	.uaword	.LLST27
	.byte	0
	.uleb128 0x44
	.uaword	0xb806
	.uaword	.LBB274
	.uaword	.Ldebug_ranges0+0xd0
	.byte	0x1
	.uahalf	0x13f
	.uaword	0xcbc4
	.uleb128 0x37
	.uaword	0xb82b
	.uaword	.LLST28
	.uleb128 0x3d
	.uaword	.Ldebug_ranges0+0xd0
	.uleb128 0x39
	.uaword	0xb837
	.uaword	.LLST29
	.byte	0
	.byte	0
	.uleb128 0x45
	.uaword	0xb844
	.uaword	.LBB278
	.uaword	.LBE278
	.byte	0x1
	.uahalf	0x13f
	.uaword	0xcc0c
	.uleb128 0x37
	.uaword	0xb876
	.uaword	.LLST30
	.uleb128 0x37
	.uaword	0xb869
	.uaword	.LLST31
	.uleb128 0x38
	.uaword	.LBB279
	.uaword	.LBE279
	.uleb128 0x39
	.uaword	0xb881
	.uaword	.LLST32
	.uleb128 0x3e
	.uaword	0xb88a
	.uleb128 0x39
	.uaword	0xb89b
	.uaword	.LLST31
	.byte	0
	.byte	0
	.uleb128 0x45
	.uaword	0xb8ac
	.uaword	.LBB280
	.uaword	.LBE280
	.byte	0x1
	.uahalf	0x141
	.uaword	0xcc39
	.uleb128 0x37
	.uaword	0xb8d7
	.uaword	.LLST34
	.uleb128 0x38
	.uaword	.LBB281
	.uaword	.LBE281
	.uleb128 0x3e
	.uaword	0xb8e3
	.byte	0
	.byte	0
	.uleb128 0x3f
	.uaword	0xb2d5
	.uaword	.LBB282
	.uaword	.LBE282
	.byte	0x1
	.byte	0xe8
	.uaword	0xcc56
	.uleb128 0x37
	.uaword	0xb2ff
	.uaword	.LLST35
	.byte	0
	.uleb128 0x3f
	.uaword	0xb30c
	.uaword	.LBB284
	.uaword	.LBE284
	.byte	0x1
	.byte	0xe9
	.uaword	0xcc73
	.uleb128 0x37
	.uaword	0xb337
	.uaword	.LLST36
	.byte	0
	.uleb128 0x3f
	.uaword	0xb344
	.uaword	.LBB286
	.uaword	.LBE286
	.byte	0x1
	.byte	0xeb
	.uaword	0xcc90
	.uleb128 0x37
	.uaword	0xb372
	.uaword	.LLST37
	.byte	0
	.uleb128 0x31
	.uaword	0xb37f
	.uaword	.LBB288
	.uaword	.Ldebug_ranges0+0xe8
	.byte	0x1
	.byte	0xec
	.uaword	0xccad
	.uleb128 0x37
	.uaword	0xb3ac
	.uaword	.LLST38
	.byte	0
	.uleb128 0x3f
	.uaword	0xb3b9
	.uaword	.LBB292
	.uaword	.LBE292
	.byte	0x1
	.byte	0xf0
	.uaword	0xccca
	.uleb128 0x37
	.uaword	0xb3e5
	.uaword	.LLST39
	.byte	0
	.uleb128 0x3f
	.uaword	0xb3f2
	.uaword	.LBB294
	.uaword	.LBE294
	.byte	0x1
	.byte	0xf7
	.uaword	0xcce7
	.uleb128 0x37
	.uaword	0xb420
	.uaword	.LLST40
	.byte	0
	.uleb128 0x3f
	.uaword	0xb42d
	.uaword	.LBB296
	.uaword	.LBE296
	.byte	0x1
	.byte	0xf8
	.uaword	0xcd04
	.uleb128 0x37
	.uaword	0xb455
	.uaword	.LLST41
	.byte	0
	.uleb128 0x45
	.uaword	0xb49f
	.uaword	.LBB299
	.uaword	.LBE299
	.byte	0x1
	.uahalf	0x106
	.uaword	0xcd22
	.uleb128 0x37
	.uaword	0xb4ca
	.uaword	.LLST42
	.byte	0
	.uleb128 0x45
	.uaword	0xb4d7
	.uaword	.LBB301
	.uaword	.LBE301
	.byte	0x1
	.uahalf	0x107
	.uaword	0xcd40
	.uleb128 0x37
	.uaword	0xb503
	.uaword	.LLST43
	.byte	0
	.uleb128 0x45
	.uaword	0xb510
	.uaword	.LBB303
	.uaword	.LBE303
	.byte	0x1
	.uahalf	0x109
	.uaword	0xcd5e
	.uleb128 0x37
	.uaword	0xb53f
	.uaword	.LLST44
	.byte	0
	.uleb128 0x44
	.uaword	0xb54c
	.uaword	.LBB305
	.uaword	.Ldebug_ranges0+0x100
	.byte	0x1
	.uahalf	0x10a
	.uaword	0xcd7c
	.uleb128 0x37
	.uaword	0xb57a
	.uaword	.LLST45
	.byte	0
	.uleb128 0x45
	.uaword	0xb587
	.uaword	.LBB309
	.uaword	.LBE309
	.byte	0x1
	.uahalf	0x10e
	.uaword	0xcd9a
	.uleb128 0x37
	.uaword	0xb5b4
	.uaword	.LLST46
	.byte	0
	.uleb128 0x45
	.uaword	0xb5c1
	.uaword	.LBB311
	.uaword	.LBE311
	.byte	0x1
	.uahalf	0x115
	.uaword	0xcdb8
	.uleb128 0x37
	.uaword	0xb5f0
	.uaword	.LLST47
	.byte	0
	.uleb128 0x45
	.uaword	0xb643
	.uaword	.LBB314
	.uaword	.LBE314
	.byte	0x1
	.uahalf	0x124
	.uaword	0xcdd6
	.uleb128 0x37
	.uaword	0xb677
	.uaword	.LLST48
	.byte	0
	.uleb128 0x45
	.uaword	0xb684
	.uaword	.LBB316
	.uaword	.LBE316
	.byte	0x1
	.uahalf	0x125
	.uaword	0xcdf4
	.uleb128 0x37
	.uaword	0xb6b9
	.uaword	.LLST49
	.byte	0
	.uleb128 0x45
	.uaword	0xb6c6
	.uaword	.LBB318
	.uaword	.LBE318
	.byte	0x1
	.uahalf	0x127
	.uaword	0xce12
	.uleb128 0x37
	.uaword	0xb6fa
	.uaword	.LLST50
	.byte	0
	.uleb128 0x44
	.uaword	0xb707
	.uaword	.LBB320
	.uaword	.Ldebug_ranges0+0x118
	.byte	0x1
	.uahalf	0x128
	.uaword	0xce30
	.uleb128 0x37
	.uaword	0xb73a
	.uaword	.LLST51
	.byte	0
	.uleb128 0x45
	.uaword	0xb747
	.uaword	.LBB324
	.uaword	.LBE324
	.byte	0x1
	.uahalf	0x12c
	.uaword	0xce4e
	.uleb128 0x37
	.uaword	0xb779
	.uaword	.LLST52
	.byte	0
	.uleb128 0x45
	.uaword	0xb786
	.uaword	.LBB326
	.uaword	.LBE326
	.byte	0x1
	.uahalf	0x133
	.uaword	0xce6c
	.uleb128 0x37
	.uaword	0xb7ba
	.uaword	.LLST53
	.byte	0
	.uleb128 0x45
	.uaword	0xb7c7
	.uaword	.LBB328
	.uaword	.LBE328
	.byte	0x1
	.uahalf	0x134
	.uaword	0xce8a
	.uleb128 0x37
	.uaword	0xb7f9
	.uaword	.LLST54
	.byte	0
	.uleb128 0x40
	.uaword	.LVL53
	.uaword	0xe47a
	.uleb128 0x34
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.byte	0x4
	.uaword	0xad89
	.uleb128 0x46
	.byte	0x1
	.string	"IfxVadc_Adc_initChannel"
	.byte	0x1
	.uahalf	0x145
	.byte	0x1
	.uaword	0xa2fb
	.uaword	.LFB341
	.uaword	.LFE341
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xd3f3
	.uleb128 0x47
	.uaword	.LASF57
	.byte	0x1
	.uahalf	0x145
	.uaword	0xc960
	.uaword	.LLST55
	.uleb128 0x47
	.uaword	.LASF78
	.byte	0x1
	.uahalf	0x145
	.uaword	0xd3f3
	.uaword	.LLST56
	.uleb128 0x48
	.string	"Status"
	.byte	0x1
	.uahalf	0x147
	.uaword	0xa2fb
	.byte	0
	.uleb128 0x2b
	.uaword	.LASF42
	.byte	0x1
	.uahalf	0x148
	.uaword	0x844b
	.uleb128 0x2b
	.uaword	.LASF73
	.byte	0x1
	.uahalf	0x149
	.uaword	0xa7e3
	.uleb128 0x49
	.uaword	.LASF79
	.byte	0x1
	.uahalf	0x14c
	.uaword	0x60d
	.uaword	.LLST57
	.uleb128 0x49
	.uaword	.LASF74
	.byte	0x1
	.uahalf	0x14d
	.uaword	0x8b8f
	.uaword	.LLST58
	.uleb128 0x44
	.uaword	0xb8f4
	.uaword	.LBB330
	.uaword	.Ldebug_ranges0+0x130
	.byte	0x1
	.uahalf	0x154
	.uaword	0xcf68
	.uleb128 0x37
	.uaword	0xb930
	.uaword	.LLST59
	.uleb128 0x37
	.uaword	0xb924
	.uaword	.LLST60
	.uleb128 0x32
	.uaword	0xb918
	.byte	0x1
	.byte	0x6c
	.byte	0
	.uleb128 0x45
	.uaword	0xb93d
	.uaword	.LBB336
	.uaword	.LBE336
	.byte	0x1
	.uahalf	0x155
	.uaword	0xcf96
	.uleb128 0x37
	.uaword	0xb978
	.uaword	.LLST61
	.uleb128 0x37
	.uaword	0xb96c
	.uaword	.LLST62
	.uleb128 0x32
	.uaword	0xb960
	.byte	0x1
	.byte	0x6c
	.byte	0
	.uleb128 0x45
	.uaword	0xb985
	.uaword	.LBB338
	.uaword	.LBE338
	.byte	0x1
	.uahalf	0x156
	.uaword	0xcfc4
	.uleb128 0x37
	.uaword	0xb9c0
	.uaword	.LLST63
	.uleb128 0x37
	.uaword	0xb9b4
	.uaword	.LLST64
	.uleb128 0x32
	.uaword	0xb9a8
	.byte	0x1
	.byte	0x6c
	.byte	0
	.uleb128 0x45
	.uaword	0xb9cd
	.uaword	.LBB340
	.uaword	.LBE340
	.byte	0x1
	.uahalf	0x157
	.uaword	0xcff2
	.uleb128 0x37
	.uaword	0xba08
	.uaword	.LLST65
	.uleb128 0x37
	.uaword	0xb9fc
	.uaword	.LLST66
	.uleb128 0x32
	.uaword	0xb9f0
	.byte	0x1
	.byte	0x6c
	.byte	0
	.uleb128 0x45
	.uaword	0xba15
	.uaword	.LBB342
	.uaword	.LBE342
	.byte	0x1
	.uahalf	0x158
	.uaword	0xd020
	.uleb128 0x37
	.uaword	0xba4e
	.uaword	.LLST67
	.uleb128 0x37
	.uaword	0xba42
	.uaword	.LLST68
	.uleb128 0x32
	.uaword	0xba36
	.byte	0x1
	.byte	0x6c
	.byte	0
	.uleb128 0x45
	.uaword	0xba5b
	.uaword	.LBB344
	.uaword	.LBE344
	.byte	0x1
	.uahalf	0x159
	.uaword	0xd04e
	.uleb128 0x37
	.uaword	0xba9a
	.uaword	.LLST69
	.uleb128 0x37
	.uaword	0xba8e
	.uaword	.LLST70
	.uleb128 0x32
	.uaword	0xba82
	.byte	0x1
	.byte	0x6c
	.byte	0
	.uleb128 0x45
	.uaword	0xbaa7
	.uaword	.LBB346
	.uaword	.LBE346
	.byte	0x1
	.uahalf	0x15a
	.uaword	0xd07c
	.uleb128 0x37
	.uaword	0xbaea
	.uaword	.LLST71
	.uleb128 0x37
	.uaword	0xbade
	.uaword	.LLST72
	.uleb128 0x32
	.uaword	0xbad2
	.byte	0x1
	.byte	0x6c
	.byte	0
	.uleb128 0x45
	.uaword	0xbaf7
	.uaword	.LBB348
	.uaword	.LBE348
	.byte	0x1
	.uahalf	0x15b
	.uaword	0xd0aa
	.uleb128 0x37
	.uaword	0xbb33
	.uaword	.LLST73
	.uleb128 0x37
	.uaword	0xbb27
	.uaword	.LLST74
	.uleb128 0x32
	.uaword	0xbb1b
	.byte	0x1
	.byte	0x6c
	.byte	0
	.uleb128 0x45
	.uaword	0xbb40
	.uaword	.LBB350
	.uaword	.LBE350
	.byte	0x1
	.uahalf	0x15c
	.uaword	0xd0d8
	.uleb128 0x37
	.uaword	0xbb84
	.uaword	.LLST75
	.uleb128 0x37
	.uaword	0xbb78
	.uaword	.LLST76
	.uleb128 0x32
	.uaword	0xbb6c
	.byte	0x1
	.byte	0x6c
	.byte	0
	.uleb128 0x45
	.uaword	0xbb91
	.uaword	.LBB352
	.uaword	.LBE352
	.byte	0x1
	.uahalf	0x15d
	.uaword	0xd106
	.uleb128 0x37
	.uaword	0xbbcb
	.uaword	.LLST77
	.uleb128 0x37
	.uaword	0xbbbf
	.uaword	.LLST78
	.uleb128 0x32
	.uaword	0xbbb3
	.byte	0x1
	.byte	0x6c
	.byte	0
	.uleb128 0x44
	.uaword	0xbbd8
	.uaword	.LBB354
	.uaword	.Ldebug_ranges0+0x150
	.byte	0x1
	.uahalf	0x164
	.uaword	0xd12d
	.uleb128 0x37
	.uaword	0xbc0e
	.uaword	.LLST79
	.uleb128 0x37
	.uaword	0xbc02
	.uaword	.LLST80
	.byte	0
	.uleb128 0x44
	.uaword	0xbc1b
	.uaword	.LBB360
	.uaword	.Ldebug_ranges0+0x170
	.byte	0x1
	.uahalf	0x168
	.uaword	0xd154
	.uleb128 0x37
	.uaword	0xbc56
	.uaword	.LLST81
	.uleb128 0x37
	.uaword	0xbc4a
	.uaword	.LLST82
	.byte	0
	.uleb128 0x4a
	.uaword	.LBB366
	.uaword	.LBE366
	.uaword	0xd241
	.uleb128 0x4b
	.string	"src"
	.byte	0x1
	.uahalf	0x16f
	.uaword	0xadd2
	.uaword	.LLST83
	.uleb128 0x44
	.uaword	0xbc63
	.uaword	.LBB367
	.uaword	.Ldebug_ranges0+0x190
	.byte	0x1
	.uahalf	0x171
	.uaword	0xd1a1
	.uleb128 0x37
	.uaword	0xbca9
	.uaword	.LLST84
	.uleb128 0x37
	.uaword	0xbc9d
	.uaword	.LLST85
	.uleb128 0x37
	.uaword	0xbc91
	.uaword	.LLST86
	.byte	0
	.uleb128 0x45
	.uaword	0xbcb6
	.uaword	.LBB371
	.uaword	.LBE371
	.byte	0x1
	.uahalf	0x172
	.uaword	0xd1c8
	.uleb128 0x37
	.uaword	0xbce8
	.uaword	.LLST87
	.uleb128 0x37
	.uaword	0xbcdc
	.uaword	.LLST88
	.byte	0
	.uleb128 0x44
	.uaword	0xbcf5
	.uaword	.LBB373
	.uaword	.Ldebug_ranges0+0x1a8
	.byte	0x1
	.uahalf	0x173
	.uaword	0xd212
	.uleb128 0x37
	.uaword	0xbd29
	.uaword	.LLST89
	.uleb128 0x37
	.uaword	0xbd15
	.uaword	.LLST90
	.uleb128 0x37
	.uaword	0xbd0a
	.uaword	.LLST91
	.uleb128 0x4c
	.uaword	0xada9
	.uaword	.LBB375
	.uaword	.LBE375
	.byte	0x3
	.uahalf	0x102
	.uleb128 0x37
	.uaword	0xadc6
	.uaword	.LLST92
	.byte	0
	.byte	0
	.uleb128 0x45
	.uaword	0xbd3a
	.uaword	.LBB379
	.uaword	.LBE379
	.byte	0x1
	.uahalf	0x174
	.uaword	0xd230
	.uleb128 0x37
	.uaword	0xbd51
	.uaword	.LLST93
	.byte	0
	.uleb128 0x40
	.uaword	.LVL139
	.uaword	0xe44a
	.uleb128 0x34
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x4a
	.uaword	.LBB381
	.uaword	.LBE381
	.uaword	0xd374
	.uleb128 0x4d
	.string	"src"
	.byte	0x1
	.uahalf	0x17e
	.uaword	0xadd2
	.byte	0x1
	.byte	0x62
	.uleb128 0x45
	.uaword	0xbd5d
	.uaword	.LBB382
	.uaword	.LBE382
	.byte	0x1
	.uahalf	0x17f
	.uaword	0xd281
	.uleb128 0x37
	.uaword	0xbd8a
	.uaword	.LLST94
	.uleb128 0x32
	.uaword	0xbd7e
	.byte	0x1
	.byte	0x6c
	.byte	0
	.uleb128 0x45
	.uaword	0xbde9
	.uaword	.LBB384
	.uaword	.LBE384
	.byte	0x1
	.uahalf	0x187
	.uaword	0xd2b1
	.uleb128 0x37
	.uaword	0xbe2e
	.uaword	.LLST95
	.uleb128 0x37
	.uaword	0xbe22
	.uaword	.LLST96
	.uleb128 0x37
	.uaword	0xbe16
	.uaword	.LLST97
	.byte	0
	.uleb128 0x45
	.uaword	0xbe3b
	.uaword	.LBB386
	.uaword	.LBE386
	.byte	0x1
	.uahalf	0x18a
	.uaword	0xd2cf
	.uleb128 0x37
	.uaword	0xbe64
	.uaword	.LLST98
	.byte	0
	.uleb128 0x44
	.uaword	0xbcf5
	.uaword	.LBB388
	.uaword	.Ldebug_ranges0+0x1c0
	.byte	0x1
	.uahalf	0x18b
	.uaword	0xd319
	.uleb128 0x37
	.uaword	0xbd29
	.uaword	.LLST99
	.uleb128 0x37
	.uaword	0xbd15
	.uaword	.LLST100
	.uleb128 0x37
	.uaword	0xbd0a
	.uaword	.LLST101
	.uleb128 0x4c
	.uaword	0xada9
	.uaword	.LBB390
	.uaword	.LBE390
	.byte	0x3
	.uahalf	0x102
	.uleb128 0x37
	.uaword	0xadc6
	.uaword	.LLST102
	.byte	0
	.byte	0
	.uleb128 0x45
	.uaword	0xbd3a
	.uaword	.LBB394
	.uaword	.LBE394
	.byte	0x1
	.uahalf	0x18c
	.uaword	0xd337
	.uleb128 0x37
	.uaword	0xbd51
	.uaword	.LLST103
	.byte	0
	.uleb128 0x45
	.uaword	0xbd97
	.uaword	.LBB396
	.uaword	.LBE396
	.byte	0x1
	.uahalf	0x183
	.uaword	0xd363
	.uleb128 0x37
	.uaword	0xbddc
	.uaword	.LLST104
	.uleb128 0x32
	.uaword	0xbdd0
	.byte	0x1
	.byte	0x54
	.uleb128 0x32
	.uaword	0xbdc4
	.byte	0x1
	.byte	0x6c
	.byte	0
	.uleb128 0x40
	.uaword	.LVL152
	.uaword	0xe44a
	.uleb128 0x34
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x33
	.uaword	.LVL112
	.uaword	0xe375
	.uaword	0xd38e
	.uleb128 0x34
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x34
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.byte	0
	.uleb128 0x33
	.uaword	.LVL128
	.uaword	0xe375
	.uaword	0xd3a8
	.uleb128 0x34
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x34
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.byte	0
	.uleb128 0x33
	.uaword	.LVL131
	.uaword	0xe3a0
	.uaword	0xd3c2
	.uleb128 0x34
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x34
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.byte	0
	.uleb128 0x33
	.uaword	.LVL133
	.uaword	0xe3a0
	.uaword	0xd3dc
	.uleb128 0x34
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x34
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.byte	0
	.uleb128 0x40
	.uaword	.LVL137
	.uaword	0xe3a0
	.uleb128 0x34
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x34
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.byte	0x4
	.uaword	0xd3f9
	.uleb128 0x1f
	.uaword	0xaae7
	.uleb128 0x4e
	.byte	0x1
	.string	"IfxVadc_Adc_initChannelConfig"
	.byte	0x1
	.uahalf	0x19d
	.byte	0x1
	.uaword	.LFB342
	.uaword	.LFE342
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xd4b4
	.uleb128 0x4f
	.uaword	.LASF78
	.byte	0x1
	.uahalf	0x19d
	.uaword	0xc966
	.byte	0x1
	.byte	0x64
	.uleb128 0x4f
	.uaword	.LASF53
	.byte	0x1
	.uahalf	0x19d
	.uaword	0xa97b
	.byte	0x1
	.byte	0x65
	.uleb128 0x50
	.string	"IfxVadc_Adc_defaultChannelConfig"
	.byte	0x1
	.uahalf	0x19f
	.uaword	0xd3f9
	.byte	0x3c
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x46
	.byte	0x1
	.string	"IfxVadc_Adc_initGroup"
	.byte	0x1
	.uahalf	0x1b9
	.byte	0x1
	.uaword	0xa2fb
	.uaword	.LFB343
	.uaword	.LFE343
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xdbbb
	.uleb128 0x47
	.uaword	.LASF53
	.byte	0x1
	.uahalf	0x1b9
	.uaword	0xc6bd
	.uaword	.LLST105
	.uleb128 0x47
	.uaword	.LASF78
	.byte	0x1
	.uahalf	0x1b9
	.uaword	0xdbbb
	.uaword	.LLST106
	.uleb128 0x48
	.string	"status"
	.byte	0x1
	.uahalf	0x1bb
	.uaword	0xa2fb
	.byte	0
	.uleb128 0x51
	.uaword	.LASF42
	.byte	0x1
	.uahalf	0x1bc
	.uaword	0x844b
	.byte	0x1
	.byte	0x6c
	.uleb128 0x49
	.uaword	.LASF73
	.byte	0x1
	.uahalf	0x1bd
	.uaword	0xa7e3
	.uaword	.LLST107
	.uleb128 0x49
	.uaword	.LASF79
	.byte	0x1
	.uahalf	0x1c2
	.uaword	0x60d
	.uaword	.LLST108
	.uleb128 0x49
	.uaword	.LASF71
	.byte	0x1
	.uahalf	0x1c4
	.uaword	0x2ae
	.uaword	.LLST109
	.uleb128 0x49
	.uaword	.LASF76
	.byte	0x1
	.uahalf	0x1c6
	.uaword	0x251
	.uaword	.LLST110
	.uleb128 0x2a
	.string	"convertMode"
	.byte	0x1
	.uahalf	0x284
	.uaword	0x8610
	.uleb128 0x4a
	.uaword	.LBB398
	.uaword	.LBE398
	.uaword	0xd5d9
	.uleb128 0x2b
	.uaword	.LASF77
	.byte	0x1
	.uahalf	0x1f1
	.uaword	0x251
	.uleb128 0x44
	.uaword	0xbe71
	.uaword	.LBB399
	.uaword	.Ldebug_ranges0+0x1d8
	.byte	0x1
	.uahalf	0x1f1
	.uaword	0xd5b5
	.uleb128 0x37
	.uaword	0xbeac
	.uaword	.LLST111
	.uleb128 0x37
	.uaword	0xbe9f
	.uaword	.LLST112
	.byte	0
	.uleb128 0x52
	.uaword	0xbebb
	.uaword	.LBB402
	.uaword	.Ldebug_ranges0+0x1f0
	.byte	0x1
	.uahalf	0x1f2
	.uleb128 0x37
	.uaword	0xbee8
	.uaword	.LLST113
	.uleb128 0x37
	.uaword	0xbedc
	.uaword	.LLST114
	.byte	0
	.byte	0
	.uleb128 0x45
	.uaword	0xbef5
	.uaword	.LBB407
	.uaword	.LBE407
	.byte	0x1
	.uahalf	0x1fc
	.uaword	0xd600
	.uleb128 0x37
	.uaword	0xbf2b
	.uaword	.LLST115
	.uleb128 0x37
	.uaword	0xbf1f
	.uaword	.LLST116
	.byte	0
	.uleb128 0x45
	.uaword	0xbf48
	.uaword	.LBB409
	.uaword	.LBE409
	.byte	0x1
	.uahalf	0x1fe
	.uaword	0xd627
	.uleb128 0x37
	.uaword	0xbf80
	.uaword	.LLST117
	.uleb128 0x37
	.uaword	0xbf74
	.uaword	.LLST118
	.byte	0
	.uleb128 0x44
	.uaword	0xbef5
	.uaword	.LBB411
	.uaword	.Ldebug_ranges0+0x208
	.byte	0x1
	.uahalf	0x285
	.uaword	0xd64a
	.uleb128 0x43
	.uaword	0xbf2b
	.uleb128 0x37
	.uaword	0xbf1f
	.uaword	.LLST119
	.byte	0
	.uleb128 0x44
	.uaword	0xc443
	.uaword	.LBB419
	.uaword	.Ldebug_ranges0+0x230
	.byte	0x1
	.uahalf	0x28f
	.uaword	0xd6e7
	.uleb128 0x37
	.uaword	0xc48c
	.uaword	.LLST120
	.uleb128 0x37
	.uaword	0xc480
	.uaword	.LLST121
	.uleb128 0x37
	.uaword	0xc474
	.uaword	.LLST122
	.uleb128 0x37
	.uaword	0xc468
	.uaword	.LLST123
	.uleb128 0x52
	.uaword	0xae67
	.uaword	.LBB421
	.uaword	.Ldebug_ranges0+0x248
	.byte	0x2
	.uahalf	0x88c
	.uleb128 0x37
	.uaword	0xae9d
	.uaword	.LLST120
	.uleb128 0x37
	.uaword	0xae91
	.uaword	.LLST121
	.uleb128 0x3d
	.uaword	.Ldebug_ranges0+0x248
	.uleb128 0x39
	.uaword	0xaea9
	.uaword	.LLST126
	.uleb128 0x52
	.uaword	0xaddd
	.uaword	.LBB423
	.uaword	.Ldebug_ranges0+0x260
	.byte	0x2
	.uahalf	0x67c
	.uleb128 0x37
	.uaword	0xadfa
	.uaword	.LLST127
	.uleb128 0x37
	.uaword	0xadf1
	.uaword	.LLST128
	.uleb128 0x3d
	.uaword	.Ldebug_ranges0+0x260
	.uleb128 0x39
	.uaword	0xae03
	.uaword	.LLST129
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x45
	.uaword	0xc3f9
	.uaword	.LBB430
	.uaword	.LBE430
	.byte	0x1
	.uahalf	0x28d
	.uaword	0xd717
	.uleb128 0x37
	.uaword	0xc436
	.uaword	.LLST130
	.uleb128 0x37
	.uaword	0xc42a
	.uaword	.LLST131
	.uleb128 0x37
	.uaword	0xc41e
	.uaword	.LLST132
	.byte	0
	.uleb128 0x53
	.uaword	.Ldebug_ranges0+0x278
	.uaword	0xd83e
	.uleb128 0x4b
	.string	"backgroundScanSlot"
	.byte	0x1
	.uahalf	0x25b
	.uaword	0xdbc6
	.uaword	.LLST133
	.uleb128 0x44
	.uaword	0xc33a
	.uaword	.LBB434
	.uaword	.Ldebug_ranges0+0x290
	.byte	0x1
	.uahalf	0x275
	.uaword	0xd77e
	.uleb128 0x37
	.uaword	0xc386
	.uaword	.LLST134
	.uleb128 0x37
	.uaword	0xc37a
	.uaword	.LLST135
	.uleb128 0x37
	.uaword	0xc36e
	.uaword	.LLST136
	.uleb128 0x3d
	.uaword	.Ldebug_ranges0+0x290
	.uleb128 0x39
	.uaword	0xc392
	.uaword	.LLST137
	.byte	0
	.byte	0
	.uleb128 0x45
	.uaword	0xc3a3
	.uaword	.LBB440
	.uaword	.LBE440
	.byte	0x1
	.uahalf	0x27c
	.uaword	0xd7a5
	.uleb128 0x37
	.uaword	0xc3d7
	.uaword	.LLST138
	.uleb128 0x37
	.uaword	0xc3cb
	.uaword	.LLST139
	.byte	0
	.uleb128 0x45
	.uaword	0xc289
	.uaword	.LBB442
	.uaword	.LBE442
	.byte	0x1
	.uahalf	0x260
	.uaword	0xd7c3
	.uleb128 0x37
	.uaword	0xc2c3
	.uaword	.LLST140
	.byte	0
	.uleb128 0x44
	.uaword	0xc2d0
	.uaword	.LBB444
	.uaword	.Ldebug_ranges0+0x2b0
	.byte	0x1
	.uahalf	0x262
	.uaword	0xd802
	.uleb128 0x37
	.uaword	0xc31d
	.uaword	.LLST141
	.uleb128 0x37
	.uaword	0xc311
	.uaword	.LLST142
	.uleb128 0x37
	.uaword	0xc305
	.uaword	.LLST143
	.uleb128 0x3d
	.uaword	.Ldebug_ranges0+0x2b0
	.uleb128 0x39
	.uaword	0xc329
	.uaword	.LLST144
	.byte	0
	.byte	0
	.uleb128 0x52
	.uaword	0xc33a
	.uaword	.LBB450
	.uaword	.Ldebug_ranges0+0x2d0
	.byte	0x1
	.uahalf	0x266
	.uleb128 0x37
	.uaword	0xc386
	.uaword	.LLST145
	.uleb128 0x37
	.uaword	0xc37a
	.uaword	.LLST146
	.uleb128 0x37
	.uaword	0xc36e
	.uaword	.LLST147
	.uleb128 0x3d
	.uaword	.Ldebug_ranges0+0x2d0
	.uleb128 0x39
	.uaword	0xc392
	.uaword	.LLST148
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x53
	.uaword	.Ldebug_ranges0+0x2e8
	.uaword	0xd96c
	.uleb128 0x4b
	.string	"scanSlot"
	.byte	0x1
	.uahalf	0x230
	.uaword	0xdbd1
	.uaword	.LLST149
	.uleb128 0x44
	.uaword	0xc10f
	.uaword	.LBB455
	.uaword	.Ldebug_ranges0+0x300
	.byte	0x1
	.uahalf	0x236
	.uaword	0xd878
	.uleb128 0x32
	.uaword	0xc13f
	.byte	0x1
	.byte	0x6d
	.byte	0
	.uleb128 0x45
	.uaword	0xc209
	.uaword	.LBB458
	.uaword	.LBE458
	.byte	0x1
	.uahalf	0x245
	.uaword	0xd896
	.uleb128 0x37
	.uaword	0xc23a
	.uaword	.LLST150
	.byte	0
	.uleb128 0x44
	.uaword	0xc1ab
	.uaword	.LBB460
	.uaword	.Ldebug_ranges0+0x318
	.byte	0x1
	.uahalf	0x24b
	.uaword	0xd8d5
	.uleb128 0x37
	.uaword	0xc1ed
	.uaword	.LLST151
	.uleb128 0x37
	.uaword	0xc1e1
	.uaword	.LLST152
	.uleb128 0x37
	.uaword	0xc1d5
	.uaword	.LLST153
	.uleb128 0x3d
	.uaword	.Ldebug_ranges0+0x318
	.uleb128 0x39
	.uaword	0xc1f9
	.uaword	.LLST154
	.byte	0
	.byte	0
	.uleb128 0x45
	.uaword	0xc247
	.uaword	.LBB466
	.uaword	.LBE466
	.byte	0x1
	.uahalf	0x252
	.uaword	0xd8fc
	.uleb128 0x37
	.uaword	0xc271
	.uaword	.LLST155
	.uleb128 0x37
	.uaword	0xc265
	.uaword	.LLST156
	.byte	0
	.uleb128 0x44
	.uaword	0xc14c
	.uaword	.LBB469
	.uaword	.Ldebug_ranges0+0x338
	.byte	0x1
	.uahalf	0x238
	.uaword	0xd937
	.uleb128 0x37
	.uaword	0xc18f
	.uaword	.LLST157
	.uleb128 0x32
	.uaword	0xc183
	.byte	0x1
	.byte	0x54
	.uleb128 0x32
	.uaword	0xc177
	.byte	0x1
	.byte	0x6d
	.uleb128 0x3d
	.uaword	.Ldebug_ranges0+0x338
	.uleb128 0x39
	.uaword	0xc19b
	.uaword	.LLST158
	.byte	0
	.byte	0
	.uleb128 0x52
	.uaword	0xc1ab
	.uaword	.LBB475
	.uaword	.Ldebug_ranges0+0x358
	.byte	0x1
	.uahalf	0x23c
	.uleb128 0x54
	.uaword	0xc1ed
	.byte	0x1
	.uleb128 0x32
	.uaword	0xc1e1
	.byte	0x1
	.byte	0x53
	.uleb128 0x32
	.uaword	0xc1d5
	.byte	0x1
	.byte	0x6d
	.uleb128 0x3d
	.uaword	.Ldebug_ranges0+0x358
	.uleb128 0x39
	.uaword	0xc1f9
	.uaword	.LLST159
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x53
	.uaword	.Ldebug_ranges0+0x370
	.uaword	0xdaa8
	.uleb128 0x4b
	.string	"queueSlot"
	.byte	0x1
	.uahalf	0x203
	.uaword	0xdbdc
	.uaword	.LLST160
	.uleb128 0x45
	.uaword	0xc093
	.uaword	.LBB480
	.uaword	.LBE480
	.byte	0x1
	.uahalf	0x219
	.uaword	0xd9a9
	.uleb128 0x37
	.uaword	0xc0c5
	.uaword	.LLST161
	.byte	0
	.uleb128 0x44
	.uaword	0xc034
	.uaword	.LBB482
	.uaword	.Ldebug_ranges0+0x388
	.byte	0x1
	.uahalf	0x21f
	.uaword	0xd9e8
	.uleb128 0x37
	.uaword	0xc077
	.uaword	.LLST162
	.uleb128 0x37
	.uaword	0xc06b
	.uaword	.LLST163
	.uleb128 0x37
	.uaword	0xc05f
	.uaword	.LLST164
	.uleb128 0x3d
	.uaword	.Ldebug_ranges0+0x388
	.uleb128 0x39
	.uaword	0xc083
	.uaword	.LLST165
	.byte	0
	.byte	0
	.uleb128 0x45
	.uaword	0xc0d2
	.uaword	.LBB488
	.uaword	.LBE488
	.byte	0x1
	.uahalf	0x226
	.uaword	0xda0f
	.uleb128 0x37
	.uaword	0xc0fb
	.uaword	.LLST166
	.uleb128 0x37
	.uaword	0xc0ef
	.uaword	.LLST167
	.byte	0
	.uleb128 0x45
	.uaword	0xbf8d
	.uaword	.LBB490
	.uaword	.LBE490
	.byte	0x1
	.uahalf	0x209
	.uaword	0xda2d
	.uleb128 0x37
	.uaword	0xbfbe
	.uaword	.LLST168
	.byte	0
	.uleb128 0x44
	.uaword	0xbfcb
	.uaword	.LBB492
	.uaword	.Ldebug_ranges0+0x3a8
	.byte	0x1
	.uahalf	0x20a
	.uaword	0xda6c
	.uleb128 0x37
	.uaword	0xc018
	.uaword	.LLST169
	.uleb128 0x37
	.uaword	0xc00c
	.uaword	.LLST170
	.uleb128 0x37
	.uaword	0xc000
	.uaword	.LLST171
	.uleb128 0x3d
	.uaword	.Ldebug_ranges0+0x3a8
	.uleb128 0x39
	.uaword	0xc024
	.uaword	.LLST172
	.byte	0
	.byte	0
	.uleb128 0x52
	.uaword	0xc034
	.uaword	.LBB498
	.uaword	.Ldebug_ranges0+0x3c8
	.byte	0x1
	.uahalf	0x20f
	.uleb128 0x37
	.uaword	0xc077
	.uaword	.LLST173
	.uleb128 0x37
	.uaword	0xc06b
	.uaword	.LLST174
	.uleb128 0x37
	.uaword	0xc05f
	.uaword	.LLST175
	.uleb128 0x3d
	.uaword	.Ldebug_ranges0+0x3c8
	.uleb128 0x39
	.uaword	0xc083
	.uaword	.LLST176
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x33
	.uaword	.LVL173
	.uaword	0xe47a
	.uaword	0xdabc
	.uleb128 0x34
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x33
	.uaword	.LVL175
	.uaword	0xe375
	.uaword	0xdad6
	.uleb128 0x34
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x34
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x33
	.uaword	.LVL176
	.uaword	0xe525
	.uaword	0xdafe
	.uleb128 0x34
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x30
	.uleb128 0x34
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x30
	.uleb128 0x34
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x34
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.uleb128 0x34
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.byte	0
	.uleb128 0x33
	.uaword	.LVL177
	.uaword	0xe525
	.uaword	0xdb20
	.uleb128 0x34
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x31
	.uleb128 0x34
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x30
	.uleb128 0x34
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x34
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x33
	.uaword	.LVL179
	.uaword	0xe525
	.uaword	0xdb42
	.uleb128 0x34
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x32
	.uleb128 0x34
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x30
	.uleb128 0x34
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x34
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x33
	.uaword	.LVL191
	.uaword	0xe565
	.uaword	0xdb5c
	.uleb128 0x34
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7a
	.sleb128 -16
	.uleb128 0x34
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x33
	.uaword	.LVL200
	.uaword	0xe3a0
	.uaword	0xdb76
	.uleb128 0x34
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x34
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x33
	.uaword	.LVL204
	.uaword	0xe525
	.uaword	0xdb8e
	.uleb128 0x34
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x30
	.uleb128 0x34
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x33
	.uaword	.LVL206
	.uaword	0xe525
	.uaword	0xdba6
	.uleb128 0x34
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x31
	.uleb128 0x34
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x40
	.uaword	.LVL208
	.uaword	0xe525
	.uleb128 0x34
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x32
	.uleb128 0x34
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x1b
	.byte	0x4
	.uaword	0xdbc1
	.uleb128 0x1f
	.uaword	0xad89
	.uleb128 0x1b
	.byte	0x4
	.uaword	0xdbcc
	.uleb128 0x1f
	.uaword	0xa745
	.uleb128 0x1b
	.byte	0x4
	.uaword	0xdbd7
	.uleb128 0x1f
	.uaword	0xa8bb
	.uleb128 0x1b
	.byte	0x4
	.uaword	0xdbe2
	.uleb128 0x1f
	.uaword	0xa851
	.uleb128 0x4e
	.byte	0x1
	.string	"IfxVadc_Adc_initGroupConfig"
	.byte	0x1
	.uahalf	0x298
	.byte	0x1
	.uaword	.LFB344
	.uaword	.LFE344
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xdcd9
	.uleb128 0x4f
	.uaword	.LASF78
	.byte	0x1
	.uahalf	0x298
	.uaword	0xce9b
	.byte	0x1
	.byte	0x64
	.uleb128 0x4f
	.uaword	.LASF42
	.byte	0x1
	.uahalf	0x298
	.uaword	0xdcd9
	.byte	0x1
	.byte	0x65
	.uleb128 0x50
	.string	"IfxVadc_Adc_defaultGroupConfig"
	.byte	0x1
	.uahalf	0x29a
	.uaword	0xdbc1
	.byte	0x7c
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0xbd
	.byte	0x37
	.byte	0x86
	.byte	0x35
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0xbd
	.byte	0x37
	.byte	0x86
	.byte	0x35
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.byte	0x4
	.uaword	0xa5d3
	.uleb128 0x46
	.byte	0x1
	.string	"IfxVadc_Adc_initModule"
	.byte	0x1
	.uahalf	0x2cb
	.byte	0x1
	.uaword	0xa2fb
	.uaword	.LFB345
	.uaword	.LFE345
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xdf4e
	.uleb128 0x47
	.uaword	.LASF42
	.byte	0x1
	.uahalf	0x2cb
	.uaword	0xdcd9
	.uaword	.LLST177
	.uleb128 0x47
	.uaword	.LASF78
	.byte	0x1
	.uahalf	0x2cb
	.uaword	0xdf4e
	.uaword	.LLST178
	.uleb128 0x48
	.string	"status"
	.byte	0x1
	.uahalf	0x2cd
	.uaword	0xa2fb
	.byte	0
	.uleb128 0x4d
	.string	"vadcSFR"
	.byte	0x1
	.uahalf	0x2ce
	.uaword	0x844b
	.byte	0x1
	.byte	0x6f
	.uleb128 0x49
	.uaword	.LASF71
	.byte	0x1
	.uahalf	0x2d0
	.uaword	0x2ae
	.uaword	.LLST179
	.uleb128 0x49
	.uaword	.LASF76
	.byte	0x1
	.uahalf	0x2d1
	.uaword	0x251
	.uaword	.LLST180
	.uleb128 0x4b
	.string	"groupNum"
	.byte	0x1
	.uahalf	0x2d1
	.uaword	0x251
	.uaword	.LLST181
	.uleb128 0x44
	.uaword	0xc499
	.uaword	.LBB505
	.uaword	.Ldebug_ranges0+0x3e0
	.byte	0x1
	.uahalf	0x2d8
	.uaword	0xddd7
	.uleb128 0x32
	.uaword	0xc4b8
	.byte	0x1
	.byte	0x6f
	.uleb128 0x3d
	.uaword	.Ldebug_ranges0+0x3e0
	.uleb128 0x39
	.uaword	0xc4c4
	.uaword	.LLST182
	.uleb128 0x3a
	.uaword	.LVL265
	.uaword	0xe3cc
	.uleb128 0x33
	.uaword	.LVL267
	.uaword	0xe3f8
	.uaword	0xddcc
	.uleb128 0x34
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x3a
	.uaword	.LVL269
	.uaword	0xe422
	.byte	0
	.byte	0
	.uleb128 0x44
	.uaword	0xc51f
	.uaword	.LBB509
	.uaword	.Ldebug_ranges0+0x3f8
	.byte	0x1
	.uahalf	0x2ef
	.uaword	0xde6f
	.uleb128 0x37
	.uaword	0xc569
	.uaword	.LLST183
	.uleb128 0x37
	.uaword	0xc55d
	.uaword	.LLST184
	.uleb128 0x37
	.uaword	0xc551
	.uaword	.LLST185
	.uleb128 0x32
	.uaword	0xc545
	.byte	0x1
	.byte	0x6f
	.uleb128 0x52
	.uaword	0xae67
	.uaword	.LBB511
	.uaword	.Ldebug_ranges0+0x410
	.byte	0x2
	.uahalf	0x87a
	.uleb128 0x37
	.uaword	0xae9d
	.uaword	.LLST183
	.uleb128 0x37
	.uaword	0xae91
	.uaword	.LLST184
	.uleb128 0x3d
	.uaword	.Ldebug_ranges0+0x410
	.uleb128 0x39
	.uaword	0xaea9
	.uaword	.LLST188
	.uleb128 0x52
	.uaword	0xaddd
	.uaword	.LBB513
	.uaword	.Ldebug_ranges0+0x428
	.byte	0x2
	.uahalf	0x67c
	.uleb128 0x54
	.uaword	0xadfa
	.byte	0xff
	.uleb128 0x37
	.uaword	0xadf1
	.uaword	.LLST189
	.uleb128 0x3d
	.uaword	.Ldebug_ranges0+0x428
	.uleb128 0x39
	.uaword	0xae03
	.uaword	.LLST190
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x44
	.uaword	0xc4d4
	.uaword	.LBB520
	.uaword	.Ldebug_ranges0+0x440
	.byte	0x1
	.uahalf	0x2ed
	.uaword	0xde9d
	.uleb128 0x37
	.uaword	0xc512
	.uaword	.LLST191
	.uleb128 0x37
	.uaword	0xc506
	.uaword	.LLST192
	.uleb128 0x32
	.uaword	0xc4fa
	.byte	0x1
	.byte	0x6f
	.byte	0
	.uleb128 0x44
	.uaword	0xbef5
	.uaword	.LBB527
	.uaword	.Ldebug_ranges0+0x460
	.byte	0x1
	.uahalf	0x2f9
	.uaword	0xdec4
	.uleb128 0x37
	.uaword	0xbf2b
	.uaword	.LLST193
	.uleb128 0x37
	.uaword	0xbf1f
	.uaword	.LLST194
	.byte	0
	.uleb128 0x3a
	.uaword	.LVL264
	.uaword	0xe59f
	.uleb128 0x33
	.uaword	.LVL270
	.uaword	0xe5c9
	.uaword	0xdee1
	.uleb128 0x34
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x33
	.uaword	.LVL271
	.uaword	0xe5fb
	.uaword	0xdef5
	.uleb128 0x34
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x33
	.uaword	.LVL272
	.uaword	0xe47a
	.uaword	0xdf09
	.uleb128 0x34
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x33
	.uaword	.LVL283
	.uaword	0xe375
	.uaword	0xdf23
	.uleb128 0x34
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x34
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x33
	.uaword	.LVL285
	.uaword	0xe3a0
	.uaword	0xdf3d
	.uleb128 0x34
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x34
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x40
	.uaword	.LVL286
	.uaword	0xe62d
	.uleb128 0x34
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.byte	0x4
	.uaword	0xdf54
	.uleb128 0x1f
	.uaword	0xabbe
	.uleb128 0x4e
	.byte	0x1
	.string	"IfxVadc_Adc_initModuleConfig"
	.byte	0x1
	.uahalf	0x305
	.byte	0x1
	.uaword	.LFB346
	.uaword	.LFE346
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xdfca
	.uleb128 0x47
	.uaword	.LASF78
	.byte	0x1
	.uahalf	0x305
	.uaword	0xdfca
	.uaword	.LLST195
	.uleb128 0x47
	.uaword	.LASF42
	.byte	0x1
	.uahalf	0x305
	.uaword	0x844b
	.uaword	.LLST196
	.uleb128 0x33
	.uaword	.LVL292
	.uaword	0xe659
	.uaword	0xdfc0
	.uleb128 0x34
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0
	.uleb128 0x3a
	.uaword	.LVL293
	.uaword	0xe68d
	.byte	0
	.uleb128 0x1b
	.byte	0x4
	.uaword	0xabbe
	.uleb128 0x4e
	.byte	0x1
	.string	"IfxVadc_Adc_softCalibration"
	.byte	0x1
	.uahalf	0x315
	.byte	0x1
	.uaword	.LFB347
	.uaword	.LFE347
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xe10a
	.uleb128 0x4f
	.uaword	.LASF54
	.byte	0x1
	.uahalf	0x315
	.uaword	0x60d
	.byte	0x1
	.byte	0x54
	.uleb128 0x4d
	.string	"init_done"
	.byte	0x1
	.uahalf	0x317
	.uaword	0xe10a
	.byte	0x5
	.byte	0x3
	.uaword	init_done.11078
	.uleb128 0x4d
	.string	"adc_gain_calib"
	.byte	0x1
	.uahalf	0x318
	.uaword	0xe11a
	.byte	0x5
	.byte	0x3
	.uaword	adc_gain_calib.11079
	.uleb128 0x4d
	.string	"adc_offset_calib"
	.byte	0x1
	.uahalf	0x319
	.uaword	0xe12a
	.byte	0x5
	.byte	0x3
	.uaword	adc_offset_calib.11080
	.uleb128 0x4d
	.string	"AdcQMR_save"
	.byte	0x1
	.uahalf	0x31a
	.uaword	0x2a0
	.byte	0x1
	.byte	0x59
	.uleb128 0x4b
	.string	"result"
	.byte	0x1
	.uahalf	0x31c
	.uaword	0x4f7c
	.uaword	.LLST197
	.uleb128 0x4b
	.string	"count"
	.byte	0x1
	.uahalf	0x31e
	.uaword	0x2a0
	.uaword	.LLST198
	.uleb128 0x4d
	.string	"saved_ch0"
	.byte	0x1
	.uahalf	0x320
	.uaword	0x2a0
	.byte	0x1
	.byte	0x58
	.uleb128 0x4d
	.string	"saved_ch1"
	.byte	0x1
	.uahalf	0x320
	.uaword	0x2a0
	.byte	0x1
	.byte	0x51
	.uleb128 0x55
	.string	"pIfx_VADC"
	.byte	0x1
	.uahalf	0x322
	.uaword	0x844b
	.sleb128 -268304384
	.uleb128 0x48
	.string	"groupsPerShs"
	.byte	0x1
	.uahalf	0x326
	.uaword	0x2a0
	.byte	0x4
	.uleb128 0x3d
	.uaword	.Ldebug_ranges0+0x480
	.uleb128 0x2a
	.string	"pointer"
	.byte	0x1
	.uahalf	0x376
	.uaword	0xe13a
	.byte	0
	.byte	0
	.uleb128 0xb
	.uaword	0x251
	.uaword	0xe11a
	.uleb128 0xc
	.uaword	0x474
	.byte	0x7
	.byte	0
	.uleb128 0xb
	.uaword	0x27c
	.uaword	0xe12a
	.uleb128 0xc
	.uaword	0x474
	.byte	0x7
	.byte	0
	.uleb128 0xb
	.uaword	0x235
	.uaword	0xe13a
	.uleb128 0xc
	.uaword	0x474
	.byte	0x7
	.byte	0
	.uleb128 0x1b
	.byte	0x4
	.uaword	0xe140
	.uleb128 0x19
	.uaword	0x2a0
	.uleb128 0x4e
	.byte	0x1
	.string	"IfxVadc_Adc_initExternalMultiplexerModeConfig"
	.byte	0x1
	.uahalf	0x3bc
	.byte	0x1
	.uaword	.LFB348
	.uaword	.LFE348
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xe1ce
	.uleb128 0x56
	.string	"emuxConfig"
	.byte	0x1
	.uahalf	0x3bc
	.uaword	0xe1ce
	.uaword	.LLST199
	.uleb128 0x4f
	.uaword	.LASF42
	.byte	0x1
	.uahalf	0x3bc
	.uaword	0x844b
	.byte	0x1
	.byte	0x65
	.uleb128 0x4d
	.string	"defaultConfig"
	.byte	0x1
	.uahalf	0x3c7
	.uaword	0xa922
	.byte	0x9
	.byte	0x93
	.uleb128 0xc
	.byte	0x8
	.byte	0x80
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.byte	0
	.uleb128 0x1b
	.byte	0x4
	.uaword	0xaca2
	.uleb128 0x4e
	.byte	0x1
	.string	"IfxVadc_Adc_initExternalMultiplexerMode"
	.byte	0x1
	.uahalf	0x3d1
	.byte	0x1
	.uaword	.LFB349
	.uaword	.LFE349
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xe32a
	.uleb128 0x47
	.uaword	.LASF42
	.byte	0x1
	.uahalf	0x3d1
	.uaword	0x844b
	.uaword	.LLST200
	.uleb128 0x56
	.string	"emuxControl"
	.byte	0x1
	.uahalf	0x3d1
	.uaword	0xe32a
	.uaword	.LLST201
	.uleb128 0x4b
	.string	"count"
	.byte	0x1
	.uahalf	0x3d3
	.uaword	0x251
	.uaword	.LLST202
	.uleb128 0x51
	.uaword	.LASF73
	.byte	0x1
	.uahalf	0x3d4
	.uaword	0xa7e3
	.byte	0x1
	.byte	0x6e
	.uleb128 0x44
	.uaword	0xc576
	.uaword	.LBB539
	.uaword	.Ldebug_ranges0+0x4b8
	.byte	0x1
	.uahalf	0x3d5
	.uaword	0xe289
	.uleb128 0x37
	.uaword	0xc5b9
	.uaword	.LLST203
	.uleb128 0x37
	.uaword	0xc5ad
	.uaword	.LLST204
	.uleb128 0x37
	.uaword	0xc5a1
	.uaword	.LLST205
	.byte	0
	.uleb128 0x44
	.uaword	0xc5c6
	.uaword	.LBB544
	.uaword	.Ldebug_ranges0+0x4d8
	.byte	0x1
	.uahalf	0x3db
	.uaword	0xe30b
	.uleb128 0x37
	.uaword	0xc5fd
	.uaword	.LLST206
	.uleb128 0x37
	.uaword	0xc5f1
	.uaword	.LLST207
	.uleb128 0x37
	.uaword	0xc5e4
	.uaword	.LLST208
	.uleb128 0x44
	.uaword	0xae0f
	.uaword	.LBB546
	.uaword	.Ldebug_ranges0+0x4f0
	.byte	0x2
	.uahalf	0x7e2
	.uaword	0xe2fa
	.uleb128 0x37
	.uaword	0xae58
	.uaword	.LLST209
	.uleb128 0x37
	.uaword	0xae4b
	.uaword	.LLST207
	.uleb128 0x37
	.uaword	0xae3f
	.uaword	.LLST211
	.uleb128 0x37
	.uaword	0xae32
	.uaword	.LLST212
	.uleb128 0x3a
	.uaword	.LVL316
	.uaword	0xe6b2
	.byte	0
	.uleb128 0x40
	.uaword	.LVL317
	.uaword	0xe6e0
	.uleb128 0x34
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x35
	.uaword	.LVL320
	.byte	0x1
	.uaword	0xe713
	.uleb128 0x34
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.uleb128 0x34
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.uleb128 0x34
	.byte	0x2
	.byte	0x8a
	.sleb128 4
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.byte	0x4
	.uaword	0xe330
	.uleb128 0x1f
	.uaword	0xaca2
	.uleb128 0xb
	.uaword	0xa59b
	.uaword	0xe34b
	.uleb128 0xc
	.uaword	0x474
	.byte	0x7
	.uleb128 0xc
	.uaword	0x474
	.byte	0x7
	.byte	0
	.uleb128 0x57
	.string	"IfxVadc_Adc_masterIndex"
	.byte	0x1
	.byte	0x3c
	.uaword	0xe370
	.byte	0x5
	.byte	0x3
	.uaword	IfxVadc_Adc_masterIndex
	.uleb128 0x1f
	.uaword	0xe335
	.uleb128 0x58
	.byte	0x1
	.string	"IfxVadc_enableAccess"
	.byte	0x2
	.uahalf	0x507
	.byte	0x1
	.byte	0x1
	.uaword	0xe3a0
	.uleb128 0x59
	.uaword	0x844b
	.uleb128 0x59
	.uaword	0x9f57
	.byte	0
	.uleb128 0x58
	.byte	0x1
	.string	"IfxVadc_disableAccess"
	.byte	0x2
	.uahalf	0x4f8
	.byte	0x1
	.byte	0x1
	.uaword	0xe3cc
	.uleb128 0x59
	.uaword	0x844b
	.uleb128 0x59
	.uaword	0x9f57
	.byte	0
	.uleb128 0x5a
	.byte	0x1
	.string	"IfxScuWdt_getCpuWatchdogPassword"
	.byte	0x10
	.uahalf	0x15d
	.byte	0x1
	.uaword	0x27c
	.byte	0x1
	.uleb128 0x5b
	.byte	0x1
	.string	"IfxScuWdt_clearCpuEndinit"
	.byte	0x10
	.byte	0xbb
	.byte	0x1
	.byte	0x1
	.uaword	0xe422
	.uleb128 0x59
	.uaword	0x27c
	.byte	0
	.uleb128 0x5b
	.byte	0x1
	.string	"IfxScuWdt_setCpuEndinit"
	.byte	0x10
	.byte	0xd1
	.byte	0x1
	.byte	0x1
	.uaword	0xe44a
	.uleb128 0x59
	.uaword	0x27c
	.byte	0
	.uleb128 0x5c
	.byte	0x1
	.string	"IfxVadc_getSrcAddress"
	.byte	0x2
	.uahalf	0x513
	.byte	0x1
	.uaword	0xadd2
	.byte	0x1
	.uaword	0xe47a
	.uleb128 0x59
	.uaword	0x60d
	.uleb128 0x59
	.uaword	0xa209
	.byte	0
	.uleb128 0x5c
	.byte	0x1
	.string	"IfxVadc_getAdcAnalogFrequency"
	.byte	0x2
	.uahalf	0x435
	.byte	0x1
	.uaword	0x2ae
	.byte	0x1
	.uaword	0xe4ad
	.uleb128 0x59
	.uaword	0x844b
	.byte	0
	.uleb128 0x5a
	.byte	0x1
	.string	"IfxVadc_getAdcModuleFrequency"
	.byte	0x2
	.uahalf	0x50c
	.byte	0x1
	.uaword	0x2ae
	.byte	0x1
	.uleb128 0x5c
	.byte	0x1
	.string	"IfxVadc_getChannelConversionTime"
	.byte	0x2
	.uahalf	0x601
	.byte	0x1
	.uaword	0x2ae
	.byte	0x1
	.uaword	0xe525
	.uleb128 0x59
	.uaword	0x844b
	.uleb128 0x59
	.uaword	0x60d
	.uleb128 0x59
	.uaword	0x9578
	.uleb128 0x59
	.uaword	0x2ae
	.uleb128 0x59
	.uaword	0x2ae
	.uleb128 0x59
	.uaword	0x8f4a
	.byte	0
	.uleb128 0x58
	.byte	0x1
	.string	"IfxVadc_setArbiterPriority"
	.byte	0x2
	.uahalf	0x4a2
	.byte	0x1
	.byte	0x1
	.uaword	0xe565
	.uleb128 0x59
	.uaword	0xa7e3
	.uleb128 0x59
	.uaword	0x2c7
	.uleb128 0x59
	.uaword	0xa00c
	.uleb128 0x59
	.uaword	0xa098
	.uleb128 0x59
	.uaword	0xa125
	.byte	0
	.uleb128 0x58
	.byte	0x1
	.string	"IfxVadc_disablePostCalibration"
	.byte	0x2
	.uahalf	0x500
	.byte	0x1
	.byte	0x1
	.uaword	0xe59f
	.uleb128 0x59
	.uaword	0x844b
	.uleb128 0x59
	.uaword	0x60d
	.uleb128 0x59
	.uaword	0x2c7
	.byte	0
	.uleb128 0x58
	.byte	0x1
	.string	"IfxScuCcu_selectAdcClock"
	.byte	0xe
	.uahalf	0x3bb
	.byte	0x1
	.byte	0x1
	.uaword	0xe5c9
	.uleb128 0x59
	.uaword	0x853f
	.byte	0
	.uleb128 0x5c
	.byte	0x1
	.string	"IfxVadc_initializeFAdcI"
	.byte	0x2
	.uahalf	0x52f
	.byte	0x1
	.uaword	0x2a0
	.byte	0x1
	.uaword	0xe5fb
	.uleb128 0x59
	.uaword	0x844b
	.uleb128 0x59
	.uaword	0x2a0
	.byte	0
	.uleb128 0x5c
	.byte	0x1
	.string	"IfxVadc_initializeFAdcD"
	.byte	0x2
	.uahalf	0x528
	.byte	0x1
	.uaword	0x2a0
	.byte	0x1
	.uaword	0xe62d
	.uleb128 0x59
	.uaword	0x844b
	.uleb128 0x59
	.uaword	0x2a0
	.byte	0
	.uleb128 0x58
	.byte	0x1
	.string	"IfxVadc_startupCalibration"
	.byte	0x2
	.uahalf	0x542
	.byte	0x1
	.byte	0x1
	.uaword	0xe659
	.uleb128 0x59
	.uaword	0x844b
	.byte	0
	.uleb128 0x5c
	.byte	0x1
	.string	"IfxVadc_getAdcDigitalFrequency"
	.byte	0x2
	.uahalf	0x43b
	.byte	0x1
	.uaword	0x2ae
	.byte	0x1
	.uaword	0xe68d
	.uleb128 0x59
	.uaword	0x844b
	.byte	0
	.uleb128 0x5a
	.byte	0x1
	.string	"IfxScuCcu_getSpbFrequency"
	.byte	0xe
	.uahalf	0x3af
	.byte	0x1
	.uaword	0x2ae
	.byte	0x1
	.uleb128 0x58
	.byte	0x1
	.string	"IfxPort_setPinMode"
	.byte	0x5
	.uahalf	0x163
	.byte	0x1
	.byte	0x1
	.uaword	0xe6e0
	.uleb128 0x59
	.uaword	0x7e4b
	.uleb128 0x59
	.uaword	0x251
	.uleb128 0x59
	.uaword	0x80f1
	.byte	0
	.uleb128 0x58
	.byte	0x1
	.string	"IfxPort_setPinPadDriver"
	.byte	0x5
	.uahalf	0x172
	.byte	0x1
	.byte	0x1
	.uaword	0xe713
	.uleb128 0x59
	.uaword	0x7e4b
	.uleb128 0x59
	.uaword	0x251
	.uleb128 0x59
	.uaword	0x83fd
	.byte	0
	.uleb128 0x5d
	.byte	0x1
	.string	"IfxVadc_configExternalMultiplexerMode"
	.byte	0x2
	.uahalf	0x663
	.byte	0x1
	.byte	0x1
	.uleb128 0x59
	.uaword	0x844b
	.uleb128 0x59
	.uaword	0xa7e3
	.uleb128 0x59
	.uaword	0x9275
	.uleb128 0x59
	.uaword	0x251
	.uleb128 0x59
	.uaword	0x919a
	.uleb128 0x59
	.uaword	0x8fb3
	.uleb128 0x59
	.uaword	0x908c
	.uleb128 0x59
	.uaword	0x8ef8
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0xb
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0x34
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x39
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x3a
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x3c
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
	.uleb128 0x3d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x3e
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x40
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x42
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
	.uleb128 0x43
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x44
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
	.uleb128 0x45
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
	.uleb128 0x46
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
	.uleb128 0x47
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
	.uleb128 0x48
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x4a
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
	.uleb128 0x4b
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
	.uleb128 0x4c
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
	.uleb128 0x4d
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
	.uleb128 0x4e
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
	.uleb128 0x4f
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
	.uleb128 0x50
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
	.uleb128 0x51
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
	.uleb128 0x52
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
	.uleb128 0x53
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x54
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x55
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
	.uleb128 0x56
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
	.uleb128 0x57
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
	.uleb128 0x58
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
	.uleb128 0x59
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5a
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
	.uleb128 0x5b
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
	.uleb128 0x5c
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
	.uleb128 0x5d
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
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0-.Ltext0
	.uaword	.LVL4-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL4-.Ltext0
	.uaword	.LFE336-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL2-.Ltext0
	.uaword	.LVL3-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL3-.Ltext0
	.uaword	.LVL4-.Ltext0
	.uahalf	0x2
	.byte	0x84
	.sleb128 8
	.uaword	.LVL4-.Ltext0
	.uaword	.LFE336-.Ltext0
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -16
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL7-.Ltext0
	.uaword	.LVL9-1-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL9-1-.Ltext0
	.uaword	.LFE337-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL8-.Ltext0
	.uaword	.LVL9-1-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL9-1-.Ltext0
	.uaword	.LFE337-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL10-.Ltext0
	.uaword	.LVL11-1-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL11-1-.Ltext0
	.uaword	.LFE337-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL13-.Ltext0
	.uaword	.LVL25-1-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL25-1-.Ltext0
	.uaword	.LFE338-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL13-.Ltext0
	.uaword	.LVL25-1-.Ltext0
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL25-1-.Ltext0
	.uaword	.LFE338-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL14-.Ltext0
	.uaword	.LVL22-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL22-.Ltext0
	.uaword	.LVL25-1-.Ltext0
	.uahalf	0x2
	.byte	0x85
	.sleb128 24
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL24-.Ltext0
	.uaword	.LVL26-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL39-.Ltext0
	.uaword	.LVL40-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL40-.Ltext0
	.uaword	.LFE338-.Ltext0
	.uahalf	0x2
	.byte	0x8f
	.sleb128 20
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL25-.Ltext0
	.uaword	.LVL30-1-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL30-.Ltext0
	.uaword	.LVL36-1-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL36-.Ltext0
	.uaword	.LFE338-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL29-.Ltext0
	.uaword	.LVL32-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL35-.Ltext0
	.uaword	.LVL38-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL38-.Ltext0
	.uaword	.LVL39-.Ltext0
	.uahalf	0x2
	.byte	0x8f
	.sleb128 16
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL15-.Ltext0
	.uaword	.LVL22-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL22-.Ltext0
	.uaword	.LVL25-1-.Ltext0
	.uahalf	0x2
	.byte	0x85
	.sleb128 24
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL27-.Ltext0
	.uaword	.LVL31-.Ltext0
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL33-.Ltext0
	.uaword	.LVL37-.Ltext0
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL41-.Ltext0
	.uaword	.LVL45-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL45-.Ltext0
	.uaword	.LFE339-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL41-.Ltext0
	.uaword	.LVL46-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL46-1-.Ltext0
	.uaword	.LFE339-.Ltext0
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL42-.Ltext0
	.uaword	.LVL43-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL43-.Ltext0
	.uaword	.LVL45-.Ltext0
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	.LVL45-.Ltext0
	.uaword	.LVL47-.Ltext0
	.uahalf	0x4
	.byte	0x7f
	.sleb128 -96
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL42-.Ltext0
	.uaword	.LVL44-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL44-.Ltext0
	.uaword	.LVL45-.Ltext0
	.uahalf	0x5
	.byte	0x84
	.sleb128 8
	.byte	0x6
	.byte	0x23
	.uleb128 0x4
	.uaword	.LVL45-.Ltext0
	.uaword	.LVL46-1-.Ltext0
	.uahalf	0x8
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x23
	.uleb128 0x8
	.byte	0x6
	.byte	0x23
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL50-.Ltext0
	.uaword	.LVL52-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL52-.Ltext0
	.uaword	.LFE340-.Ltext0
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL50-.Ltext0
	.uaword	.LVL53-1-.Ltext0
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL53-1-.Ltext0
	.uaword	.LFE340-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL55-.Ltext0
	.uaword	.LVL56-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL56-.Ltext0
	.uaword	.LVL63-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL63-.Ltext0
	.uaword	.LVL66-.Ltext0
	.uahalf	0x3
	.byte	0x7f
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL77-.Ltext0
	.uaword	.LVL78-.Ltext0
	.uahalf	0x3
	.byte	0x7f
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL79-.Ltext0
	.uaword	.LVL85-.Ltext0
	.uahalf	0x3
	.byte	0x7f
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL105-.Ltext0
	.uaword	.LVL106-.Ltext0
	.uahalf	0x3
	.byte	0x7f
	.sleb128 1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL53-.Ltext0
	.uaword	.LVL65-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL77-.Ltext0
	.uaword	.LVL79-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL56-.Ltext0
	.uaword	.LVL66-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL77-.Ltext0
	.uaword	.LVL78-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL79-.Ltext0
	.uaword	.LVL85-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL105-.Ltext0
	.uaword	.LVL106-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL57-.Ltext0
	.uaword	.LVL66-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL77-.Ltext0
	.uaword	.LVL78-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL79-.Ltext0
	.uaword	.LVL85-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL105-.Ltext0
	.uaword	.LVL106-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL58-.Ltext0
	.uaword	.LVL59-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL59-.Ltext0
	.uaword	.LVL60-.Ltext0
	.uahalf	0x3
	.byte	0x73
	.sleb128 15
	.byte	0x9f
	.uaword	.LVL60-.Ltext0
	.uaword	.LVL61-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL61-.Ltext0
	.uaword	.LVL62-.Ltext0
	.uahalf	0x3
	.byte	0x73
	.sleb128 -2
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL64-.Ltext0
	.uaword	.LVL77-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL79-.Ltext0
	.uaword	.LFE340-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL67-.Ltext0
	.uaword	.LVL77-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL88-.Ltext0
	.uaword	.LVL105-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL106-.Ltext0
	.uaword	.LFE340-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL68-.Ltext0
	.uaword	.LVL77-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL96-.Ltext0
	.uaword	.LVL105-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL107-.Ltext0
	.uaword	.LFE340-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL69-.Ltext0
	.uaword	.LVL77-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL69-.Ltext0
	.uaword	.LVL70-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL70-.Ltext0
	.uaword	.LVL74-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL70-.Ltext0
	.uaword	.LVL74-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL70-.Ltext0
	.uaword	.LVL75-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL75-.Ltext0
	.uaword	.LVL76-.Ltext0
	.uahalf	0x2
	.byte	0x8d
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL71-.Ltext0
	.uaword	.LVL72-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST34:
	.uaword	.LVL73-.Ltext0
	.uaword	.LVL77-.Ltext0
	.uahalf	0x1
	.byte	0x6e
	.uaword	0
	.uaword	0
.LLST35:
	.uaword	.LVL80-.Ltext0
	.uaword	.LVL89-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL105-.Ltext0
	.uaword	.LVL106-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST36:
	.uaword	.LVL81-.Ltext0
	.uaword	.LVL89-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL105-.Ltext0
	.uaword	.LVL106-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST37:
	.uaword	.LVL82-.Ltext0
	.uaword	.LVL89-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL105-.Ltext0
	.uaword	.LVL106-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST38:
	.uaword	.LVL83-.Ltext0
	.uaword	.LVL89-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL105-.Ltext0
	.uaword	.LVL106-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST39:
	.uaword	.LVL84-.Ltext0
	.uaword	.LVL86-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST40:
	.uaword	.LVL86-.Ltext0
	.uaword	.LVL89-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST41:
	.uaword	.LVL87-.Ltext0
	.uaword	.LVL89-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST42:
	.uaword	.LVL90-.Ltext0
	.uaword	.LVL97-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL106-.Ltext0
	.uaword	.LVL107-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST43:
	.uaword	.LVL91-.Ltext0
	.uaword	.LVL97-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL106-.Ltext0
	.uaword	.LVL107-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST44:
	.uaword	.LVL92-.Ltext0
	.uaword	.LVL97-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL106-.Ltext0
	.uaword	.LVL107-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST45:
	.uaword	.LVL93-.Ltext0
	.uaword	.LVL97-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL106-.Ltext0
	.uaword	.LVL107-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST46:
	.uaword	.LVL94-.Ltext0
	.uaword	.LVL95-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST47:
	.uaword	.LVL95-.Ltext0
	.uaword	.LVL97-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST48:
	.uaword	.LVL98-.Ltext0
	.uaword	.LVL105-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL107-.Ltext0
	.uaword	.LFE340-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST49:
	.uaword	.LVL99-.Ltext0
	.uaword	.LVL105-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL107-.Ltext0
	.uaword	.LFE340-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST50:
	.uaword	.LVL100-.Ltext0
	.uaword	.LVL105-.Ltext0
	.uahalf	0x1
	.byte	0x6e
	.uaword	.LVL107-.Ltext0
	.uaword	.LFE340-.Ltext0
	.uahalf	0x1
	.byte	0x6e
	.uaword	0
	.uaword	0
.LLST51:
	.uaword	.LVL101-.Ltext0
	.uaword	.LVL105-.Ltext0
	.uahalf	0x1
	.byte	0x6e
	.uaword	.LVL107-.Ltext0
	.uaword	.LFE340-.Ltext0
	.uahalf	0x1
	.byte	0x6e
	.uaword	0
	.uaword	0
.LLST52:
	.uaword	.LVL102-.Ltext0
	.uaword	.LVL103-.Ltext0
	.uahalf	0x1
	.byte	0x6e
	.uaword	0
	.uaword	0
.LLST53:
	.uaword	.LVL103-.Ltext0
	.uaword	.LVL105-.Ltext0
	.uahalf	0x1
	.byte	0x6e
	.uaword	0
	.uaword	0
.LLST54:
	.uaword	.LVL104-.Ltext0
	.uaword	.LVL105-.Ltext0
	.uahalf	0x1
	.byte	0x6e
	.uaword	0
	.uaword	0
.LLST55:
	.uaword	.LVL108-.Ltext0
	.uaword	.LVL111-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL111-.Ltext0
	.uaword	.LFE341-.Ltext0
	.uahalf	0x1
	.byte	0x6e
	.uaword	0
	.uaword	0
.LLST56:
	.uaword	.LVL108-.Ltext0
	.uaword	.LVL112-1-.Ltext0
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL112-1-.Ltext0
	.uaword	.LFE341-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST57:
	.uaword	.LVL110-.Ltext0
	.uaword	.LVL134-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL134-.Ltext0
	.uaword	.LVL135-.Ltext0
	.uahalf	0x3
	.byte	0x78
	.sleb128 -16
	.byte	0x9f
	.uaword	.LVL135-.Ltext0
	.uaword	.LFE341-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST58:
	.uaword	.LVL110-.Ltext0
	.uaword	.LVL130-.Ltext0
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL135-.Ltext0
	.uaword	.LVL136-.Ltext0
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST59:
	.uaword	.LVL112-.Ltext0
	.uaword	.LVL113-.Ltext0
	.uahalf	0x2
	.byte	0x8f
	.sleb128 32
	.uaword	0
	.uaword	0
.LLST60:
	.uaword	.LVL112-.Ltext0
	.uaword	.LVL130-.Ltext0
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL135-.Ltext0
	.uaword	.LVL136-.Ltext0
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST61:
	.uaword	.LVL113-.Ltext0
	.uaword	.LVL114-.Ltext0
	.uahalf	0x2
	.byte	0x8f
	.sleb128 36
	.uaword	.LVL114-.Ltext0
	.uaword	.LVL115-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST62:
	.uaword	.LVL113-.Ltext0
	.uaword	.LVL130-.Ltext0
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL135-.Ltext0
	.uaword	.LVL136-.Ltext0
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST63:
	.uaword	.LVL114-.Ltext0
	.uaword	.LVL116-.Ltext0
	.uahalf	0x2
	.byte	0x8f
	.sleb128 40
	.uaword	.LVL116-.Ltext0
	.uaword	.LVL117-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST64:
	.uaword	.LVL114-.Ltext0
	.uaword	.LVL130-.Ltext0
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL135-.Ltext0
	.uaword	.LVL136-.Ltext0
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST65:
	.uaword	.LVL116-.Ltext0
	.uaword	.LVL118-.Ltext0
	.uahalf	0x2
	.byte	0x8f
	.sleb128 40
	.uaword	.LVL118-.Ltext0
	.uaword	.LVL119-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST66:
	.uaword	.LVL116-.Ltext0
	.uaword	.LVL130-.Ltext0
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL135-.Ltext0
	.uaword	.LVL136-.Ltext0
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST67:
	.uaword	.LVL118-.Ltext0
	.uaword	.LVL120-.Ltext0
	.uahalf	0x2
	.byte	0x8f
	.sleb128 1
	.uaword	0
	.uaword	0
.LLST68:
	.uaword	.LVL118-.Ltext0
	.uaword	.LVL130-.Ltext0
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL135-.Ltext0
	.uaword	.LVL136-.Ltext0
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST69:
	.uaword	.LVL120-.Ltext0
	.uaword	.LVL121-.Ltext0
	.uahalf	0x2
	.byte	0x8f
	.sleb128 28
	.uaword	.LVL121-.Ltext0
	.uaword	.LVL122-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST70:
	.uaword	.LVL120-.Ltext0
	.uaword	.LVL130-.Ltext0
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL135-.Ltext0
	.uaword	.LVL136-.Ltext0
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST71:
	.uaword	.LVL121-.Ltext0
	.uaword	.LVL123-.Ltext0
	.uahalf	0x2
	.byte	0x8f
	.sleb128 52
	.uaword	.LVL123-.Ltext0
	.uaword	.LVL124-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST72:
	.uaword	.LVL121-.Ltext0
	.uaword	.LVL130-.Ltext0
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL135-.Ltext0
	.uaword	.LVL136-.Ltext0
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST73:
	.uaword	.LVL123-.Ltext0
	.uaword	.LVL125-.Ltext0
	.uahalf	0x2
	.byte	0x8f
	.sleb128 3
	.uaword	0
	.uaword	0
.LLST74:
	.uaword	.LVL123-.Ltext0
	.uaword	.LVL130-.Ltext0
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL135-.Ltext0
	.uaword	.LVL136-.Ltext0
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST75:
	.uaword	.LVL125-.Ltext0
	.uaword	.LVL126-.Ltext0
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST76:
	.uaword	.LVL125-.Ltext0
	.uaword	.LVL130-.Ltext0
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL135-.Ltext0
	.uaword	.LVL136-.Ltext0
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST77:
	.uaword	.LVL126-.Ltext0
	.uaword	.LVL127-.Ltext0
	.uahalf	0x2
	.byte	0x8f
	.sleb128 48
	.uaword	.LVL127-.Ltext0
	.uaword	.LVL128-1-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST78:
	.uaword	.LVL126-.Ltext0
	.uaword	.LVL130-.Ltext0
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL135-.Ltext0
	.uaword	.LVL136-.Ltext0
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST79:
	.uaword	.LVL129-.Ltext0
	.uaword	.LVL130-.Ltext0
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST80:
	.uaword	.LVL129-.Ltext0
	.uaword	.LVL132-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST81:
	.uaword	.LVL135-.Ltext0
	.uaword	.LVL136-.Ltext0
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST82:
	.uaword	.LVL135-.Ltext0
	.uaword	.LVL138-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST83:
	.uaword	.LVL139-.Ltext0
	.uaword	.LVL151-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST84:
	.uaword	.LVL140-.Ltext0
	.uaword	.LVL141-.Ltext0
	.uahalf	0x2
	.byte	0x8e
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST85:
	.uaword	.LVL140-.Ltext0
	.uaword	.LVL145-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST86:
	.uaword	.LVL140-.Ltext0
	.uaword	.LVL151-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST87:
	.uaword	.LVL142-.Ltext0
	.uaword	.LVL143-.Ltext0
	.uahalf	0x2
	.byte	0x8f
	.sleb128 24
	.uaword	.LVL143-.Ltext0
	.uaword	.LVL144-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST88:
	.uaword	.LVL142-.Ltext0
	.uaword	.LVL151-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST89:
	.uaword	.LVL146-.Ltext0
	.uaword	.LVL147-.Ltext0
	.uahalf	0x2
	.byte	0x8f
	.sleb128 6
	.uaword	0
	.uaword	0
.LLST90:
	.uaword	.LVL146-.Ltext0
	.uaword	.LVL148-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST91:
	.uaword	.LVL146-.Ltext0
	.uaword	.LVL151-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST92:
	.uaword	.LVL149-.Ltext0
	.uaword	.LVL151-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST93:
	.uaword	.LVL150-.Ltext0
	.uaword	.LVL151-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST94:
	.uaword	.LVL152-.Ltext0
	.uaword	.LVL153-.Ltext0
	.uahalf	0x2
	.byte	0x8f
	.sleb128 36
	.uaword	.LVL153-.Ltext0
	.uaword	.LVL156-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL164-.Ltext0
	.uaword	.LVL166-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST95:
	.uaword	.LVL154-.Ltext0
	.uaword	.LVL155-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL155-.Ltext0
	.uaword	.LVL157-.Ltext0
	.uahalf	0x2
	.byte	0x8f
	.sleb128 36
	.uaword	0
	.uaword	0
.LLST96:
	.uaword	.LVL154-.Ltext0
	.uaword	.LVL158-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST97:
	.uaword	.LVL154-.Ltext0
	.uaword	.LVL158-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST98:
	.uaword	.LVL158-.Ltext0
	.uaword	.LVL164-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST99:
	.uaword	.LVL159-.Ltext0
	.uaword	.LVL160-.Ltext0
	.uahalf	0x2
	.byte	0x8f
	.sleb128 4
	.uaword	0
	.uaword	0
.LLST100:
	.uaword	.LVL159-.Ltext0
	.uaword	.LVL161-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST101:
	.uaword	.LVL159-.Ltext0
	.uaword	.LVL164-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST102:
	.uaword	.LVL162-.Ltext0
	.uaword	.LVL164-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST103:
	.uaword	.LVL163-.Ltext0
	.uaword	.LVL164-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST104:
	.uaword	.LVL164-.Ltext0
	.uaword	.LVL165-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL165-.Ltext0
	.uaword	.LVL167-.Ltext0
	.uahalf	0x2
	.byte	0x8f
	.sleb128 36
	.uaword	0
	.uaword	0
.LLST105:
	.uaword	.LVL169-.Ltext0
	.uaword	.LVL172-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL172-.Ltext0
	.uaword	.LFE343-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST106:
	.uaword	.LVL169-.Ltext0
	.uaword	.LVL173-1-.Ltext0
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL173-1-.Ltext0
	.uaword	.LFE343-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST107:
	.uaword	.LVL171-.Ltext0
	.uaword	.LVL178-.Ltext0
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL178-.Ltext0
	.uaword	.LVL179-1-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL179-1-.Ltext0
	.uaword	.LVL203-.Ltext0
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL203-.Ltext0
	.uaword	.LVL204-1-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL204-1-.Ltext0
	.uaword	.LVL205-.Ltext0
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL205-.Ltext0
	.uaword	.LVL206-1-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL206-1-.Ltext0
	.uaword	.LVL207-.Ltext0
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL207-.Ltext0
	.uaword	.LVL208-1-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL208-1-.Ltext0
	.uaword	.LFE343-.Ltext0
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST108:
	.uaword	.LVL171-.Ltext0
	.uaword	.LVL190-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL190-.Ltext0
	.uaword	.LVL191-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL191-1-.Ltext0
	.uaword	.LVL203-.Ltext0
	.uahalf	0x3
	.byte	0x7a
	.sleb128 -16
	.byte	0x9f
	.uaword	.LVL203-.Ltext0
	.uaword	.LFE343-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST109:
	.uaword	.LVL174-.Ltext0
	.uaword	.LVL175-1-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL175-1-.Ltext0
	.uaword	.LFE343-.Ltext0
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST110:
	.uaword	.LVL191-.Ltext0
	.uaword	.LVL192-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL192-.Ltext0
	.uaword	.LVL199-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL199-.Ltext0
	.uaword	.LVL200-1-.Ltext0
	.uahalf	0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL201-.Ltext0
	.uaword	.LVL202-.Ltext0
	.uahalf	0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST111:
	.uaword	.LVL180-.Ltext0
	.uaword	.LVL181-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL181-.Ltext0
	.uaword	.LVL184-.Ltext0
	.uahalf	0x2
	.byte	0x8f
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST112:
	.uaword	.LVL180-.Ltext0
	.uaword	.LVL185-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST113:
	.uaword	.LVL182-.Ltext0
	.uaword	.LVL183-.Ltext0
	.uahalf	0x2
	.byte	0x82
	.sleb128 0
	.uaword	.LVL183-.Ltext0
	.uaword	.LVL184-.Ltext0
	.uahalf	0xe
	.byte	0x7f
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x8f
	.sleb128 8
	.byte	0x6
	.byte	0x22
	.byte	0x3
	.uaword	IfxVadc_Adc_masterIndex
	.byte	0x22
	.uaword	0
	.uaword	0
.LLST114:
	.uaword	.LVL182-.Ltext0
	.uaword	.LVL185-.Ltext0
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST115:
	.uaword	.LVL185-.Ltext0
	.uaword	.LVL203-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL209-.Ltext0
	.uaword	.LFE343-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST116:
	.uaword	.LVL185-.Ltext0
	.uaword	.LVL203-.Ltext0
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL209-.Ltext0
	.uaword	.LFE343-.Ltext0
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST117:
	.uaword	.LVL186-.Ltext0
	.uaword	.LVL187-.Ltext0
	.uahalf	0x3
	.byte	0x8f
	.sleb128 116
	.uaword	.LVL187-.Ltext0
	.uaword	.LVL188-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL229-.Ltext0
	.uaword	.LVL231-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL247-.Ltext0
	.uaword	.LVL249-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST118:
	.uaword	.LVL186-.Ltext0
	.uaword	.LVL203-.Ltext0
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL209-.Ltext0
	.uaword	.LFE343-.Ltext0
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST119:
	.uaword	.LVL189-.Ltext0
	.uaword	.LVL203-.Ltext0
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST120:
	.uaword	.LVL193-.Ltext0
	.uaword	.LVL199-.Ltext0
	.uahalf	0x9
	.byte	0x73
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x8f
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0xc
	.uaword	0
	.uaword	0
.LLST121:
	.uaword	.LVL193-.Ltext0
	.uaword	.LVL203-.Ltext0
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST122:
	.uaword	.LVL193-.Ltext0
	.uaword	.LVL200-1-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL201-.Ltext0
	.uaword	.LVL202-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST123:
	.uaword	.LVL193-.Ltext0
	.uaword	.LVL203-.Ltext0
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST126:
	.uaword	.LVL194-.Ltext0
	.uaword	.LVL195-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL195-.Ltext0
	.uaword	.LVL196-.Ltext0
	.uahalf	0x11
	.byte	0xf5
	.uleb128 0x9
	.uleb128 0x192
	.byte	0x82
	.sleb128 12
	.byte	0xf6
	.byte	0x4
	.uleb128 0x192
	.byte	0x1e
	.byte	0xf7
	.uleb128 0x19b
	.byte	0x32
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL196-.Ltext0
	.uaword	.LVL197-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST127:
	.uaword	.LVL196-.Ltext0
	.uaword	.LVL203-.Ltext0
	.uahalf	0x3
	.byte	0x8
	.byte	0xff
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST128:
	.uaword	.LVL196-.Ltext0
	.uaword	.LVL197-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST129:
	.uaword	.LVL197-.Ltext0
	.uaword	.LVL198-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST130:
	.uaword	.LVL192-.Ltext0
	.uaword	.LVL193-.Ltext0
	.uahalf	0x7
	.byte	0x73
	.sleb128 2
	.byte	0x33
	.byte	0x24
	.byte	0x8f
	.sleb128 0
	.byte	0x22
	.uaword	0
	.uaword	0
.LLST131:
	.uaword	.LVL192-.Ltext0
	.uaword	.LVL200-1-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL201-.Ltext0
	.uaword	.LVL202-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST132:
	.uaword	.LVL192-.Ltext0
	.uaword	.LVL203-.Ltext0
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST133:
	.uaword	.LVL209-.Ltext0
	.uaword	.LVL218-.Ltext0
	.uahalf	0x4
	.byte	0x8f
	.sleb128 84
	.byte	0x9f
	.uaword	.LVL240-.Ltext0
	.uaword	.LVL247-.Ltext0
	.uahalf	0x4
	.byte	0x8f
	.sleb128 84
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST134:
	.uaword	.LVL211-.Ltext0
	.uaword	.LVL213-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST135:
	.uaword	.LVL211-.Ltext0
	.uaword	.LVL214-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST136:
	.uaword	.LVL211-.Ltext0
	.uaword	.LVL214-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST137:
	.uaword	.LVL210-.Ltext0
	.uaword	.LVL212-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST138:
	.uaword	.LVL215-.Ltext0
	.uaword	.LVL216-.Ltext0
	.uahalf	0x5
	.byte	0x72
	.sleb128 0
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.uaword	.LVL216-.Ltext0
	.uaword	.LVL217-.Ltext0
	.uahalf	0xb
	.byte	0x8f
	.sleb128 84
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST139:
	.uaword	.LVL214-.Ltext0
	.uaword	.LVL218-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST140:
	.uaword	.LVL240-.Ltext0
	.uaword	.LVL247-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST141:
	.uaword	.LVL242-.Ltext0
	.uaword	.LVL244-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST142:
	.uaword	.LVL242-.Ltext0
	.uaword	.LVL247-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST143:
	.uaword	.LVL242-.Ltext0
	.uaword	.LVL247-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST144:
	.uaword	.LVL241-.Ltext0
	.uaword	.LVL243-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST145:
	.uaword	.LVL244-.Ltext0
	.uaword	.LVL247-.Ltext0
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST146:
	.uaword	.LVL244-.Ltext0
	.uaword	.LVL247-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST147:
	.uaword	.LVL244-.Ltext0
	.uaword	.LVL247-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST148:
	.uaword	.LVL245-.Ltext0
	.uaword	.LVL246-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST149:
	.uaword	.LVL218-.Ltext0
	.uaword	.LVL229-.Ltext0
	.uahalf	0x3
	.byte	0x8f
	.sleb128 28
	.byte	0x9f
	.uaword	.LVL254-.Ltext0
	.uaword	.LFE343-.Ltext0
	.uahalf	0x3
	.byte	0x8f
	.sleb128 28
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST150:
	.uaword	.LVL219-.Ltext0
	.uaword	.LVL220-.Ltext0
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST151:
	.uaword	.LVL221-.Ltext0
	.uaword	.LVL224-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST152:
	.uaword	.LVL221-.Ltext0
	.uaword	.LVL225-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST153:
	.uaword	.LVL221-.Ltext0
	.uaword	.LVL225-.Ltext0
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST154:
	.uaword	.LVL222-.Ltext0
	.uaword	.LVL223-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST155:
	.uaword	.LVL226-.Ltext0
	.uaword	.LVL227-.Ltext0
	.uahalf	0x5
	.byte	0x72
	.sleb128 0
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.uaword	.LVL227-.Ltext0
	.uaword	.LVL228-.Ltext0
	.uahalf	0xa
	.byte	0x8f
	.sleb128 28
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST156:
	.uaword	.LVL225-.Ltext0
	.uaword	.LVL229-.Ltext0
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST157:
	.uaword	.LVL256-.Ltext0
	.uaword	.LVL258-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST158:
	.uaword	.LVL255-.Ltext0
	.uaword	.LVL257-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST159:
	.uaword	.LVL259-.Ltext0
	.uaword	.LVL260-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST160:
	.uaword	.LVL229-.Ltext0
	.uaword	.LVL240-.Ltext0
	.uahalf	0x3
	.byte	0x8f
	.sleb128 56
	.byte	0x9f
	.uaword	.LVL247-.Ltext0
	.uaword	.LVL254-.Ltext0
	.uahalf	0x3
	.byte	0x8f
	.sleb128 56
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST161:
	.uaword	.LVL230-.Ltext0
	.uaword	.LVL231-.Ltext0
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST162:
	.uaword	.LVL232-.Ltext0
	.uaword	.LVL235-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST163:
	.uaword	.LVL232-.Ltext0
	.uaword	.LVL236-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST164:
	.uaword	.LVL232-.Ltext0
	.uaword	.LVL236-.Ltext0
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST165:
	.uaword	.LVL233-.Ltext0
	.uaword	.LVL234-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST166:
	.uaword	.LVL237-.Ltext0
	.uaword	.LVL238-.Ltext0
	.uahalf	0x5
	.byte	0x73
	.sleb128 0
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.uaword	.LVL238-.Ltext0
	.uaword	.LVL239-.Ltext0
	.uahalf	0xa
	.byte	0x8f
	.sleb128 56
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST167:
	.uaword	.LVL236-.Ltext0
	.uaword	.LVL240-.Ltext0
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST168:
	.uaword	.LVL247-.Ltext0
	.uaword	.LVL254-.Ltext0
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST169:
	.uaword	.LVL249-.Ltext0
	.uaword	.LVL251-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST170:
	.uaword	.LVL249-.Ltext0
	.uaword	.LVL254-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST171:
	.uaword	.LVL249-.Ltext0
	.uaword	.LVL254-.Ltext0
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST172:
	.uaword	.LVL248-.Ltext0
	.uaword	.LVL250-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST173:
	.uaword	.LVL251-.Ltext0
	.uaword	.LVL254-.Ltext0
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST174:
	.uaword	.LVL251-.Ltext0
	.uaword	.LVL254-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST175:
	.uaword	.LVL251-.Ltext0
	.uaword	.LVL254-.Ltext0
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST176:
	.uaword	.LVL252-.Ltext0
	.uaword	.LVL253-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST177:
	.uaword	.LVL262-.Ltext0
	.uaword	.LVL264-1-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL264-1-.Ltext0
	.uaword	.LFE345-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST178:
	.uaword	.LVL262-.Ltext0
	.uaword	.LVL264-1-.Ltext0
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL264-1-.Ltext0
	.uaword	.LFE345-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST179:
	.uaword	.LVL272-.Ltext0
	.uaword	.LVL281-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL288-.Ltext0
	.uaword	.LFE345-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST180:
	.uaword	.LVL272-.Ltext0
	.uaword	.LVL273-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL273-.Ltext0
	.uaword	.LVL280-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL280-.Ltext0
	.uaword	.LVL282-.Ltext0
	.uahalf	0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL288-.Ltext0
	.uaword	.LVL289-.Ltext0
	.uahalf	0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST181:
	.uaword	.LVL282-.Ltext0
	.uaword	.LVL284-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL284-.Ltext0
	.uaword	.LVL285-.Ltext0
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST182:
	.uaword	.LVL266-.Ltext0
	.uaword	.LVL267-1-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL267-1-.Ltext0
	.uaword	.LVL268-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL268-.Ltext0
	.uaword	.LVL269-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST183:
	.uaword	.LVL274-.Ltext0
	.uaword	.LVL280-.Ltext0
	.uahalf	0x9
	.byte	0x73
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x8c
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST184:
	.uaword	.LVL274-.Ltext0
	.uaword	.LVL281-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL288-.Ltext0
	.uaword	.LFE345-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST185:
	.uaword	.LVL274-.Ltext0
	.uaword	.LVL282-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL288-.Ltext0
	.uaword	.LVL289-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST188:
	.uaword	.LVL275-.Ltext0
	.uaword	.LVL276-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL276-.Ltext0
	.uaword	.LVL277-.Ltext0
	.uahalf	0x11
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x192
	.byte	0x82
	.sleb128 4
	.byte	0xf6
	.byte	0x4
	.uleb128 0x192
	.byte	0x1e
	.byte	0xf7
	.uleb128 0x19b
	.byte	0x32
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL277-.Ltext0
	.uaword	.LVL278-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST189:
	.uaword	.LVL277-.Ltext0
	.uaword	.LVL278-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST190:
	.uaword	.LVL278-.Ltext0
	.uaword	.LVL279-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST191:
	.uaword	.LVL273-.Ltext0
	.uaword	.LVL274-.Ltext0
	.uahalf	0x7
	.byte	0x73
	.sleb128 1
	.byte	0x33
	.byte	0x24
	.byte	0x8c
	.sleb128 0
	.byte	0x22
	.uaword	0
	.uaword	0
.LLST192:
	.uaword	.LVL273-.Ltext0
	.uaword	.LVL282-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL288-.Ltext0
	.uaword	.LVL289-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST193:
	.uaword	.LVL283-.Ltext0
	.uaword	.LVL288-.Ltext0
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST194:
	.uaword	.LVL283-.Ltext0
	.uaword	.LVL284-.Ltext0
	.uahalf	0xb
	.byte	0x7f
	.sleb128 0
	.byte	0x3a
	.byte	0x24
	.byte	0x8f
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x480
	.byte	0x9f
	.uaword	.LVL284-.Ltext0
	.uaword	.LVL287-.Ltext0
	.uahalf	0xb
	.byte	0x7f
	.sleb128 -1
	.byte	0x3a
	.byte	0x24
	.byte	0x8f
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x480
	.byte	0x9f
	.uaword	.LVL287-.Ltext0
	.uaword	.LVL288-.Ltext0
	.uahalf	0xb
	.byte	0x78
	.sleb128 -16
	.byte	0x3a
	.byte	0x24
	.byte	0x8f
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x480
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST195:
	.uaword	.LVL290-.Ltext0
	.uaword	.LVL291-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL291-.Ltext0
	.uaword	.LFE346-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST196:
	.uaword	.LVL290-.Ltext0
	.uaword	.LVL292-1-.Ltext0
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL292-1-.Ltext0
	.uaword	.LFE346-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST197:
	.uaword	.LVL301-.Ltext0
	.uaword	.LVL302-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL304-.Ltext0
	.uaword	.LVL305-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST198:
	.uaword	.LVL295-.Ltext0
	.uaword	.LVL296-.Ltext0
	.uahalf	0x3
	.byte	0x8
	.byte	0x7c
	.byte	0x9f
	.uaword	.LVL296-.Ltext0
	.uaword	.LVL300-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST199:
	.uaword	.LVL306-.Ltext0
	.uaword	.LVL308-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL308-.Ltext0
	.uaword	.LVL309-.Ltext0
	.uahalf	0x3
	.byte	0x84
	.sleb128 -32
	.byte	0x9f
	.uaword	.LVL309-.Ltext0
	.uaword	.LFE348-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST200:
	.uaword	.LVL310-.Ltext0
	.uaword	.LVL314-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL314-.Ltext0
	.uaword	.LVL320-.Ltext0
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL320-.Ltext0
	.uaword	.LFE349-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST201:
	.uaword	.LVL310-.Ltext0
	.uaword	.LVL314-.Ltext0
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL314-.Ltext0
	.uaword	.LVL320-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL320-.Ltext0
	.uaword	.LFE349-.Ltext0
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST202:
	.uaword	.LVL310-.Ltext0
	.uaword	.LVL314-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL314-.Ltext0
	.uaword	.LVL317-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL317-.Ltext0
	.uaword	.LVL318-.Ltext0
	.uahalf	0x3
	.byte	0x7f
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL318-.Ltext0
	.uaword	.LVL319-.Ltext0
	.uahalf	0x3
	.byte	0x7f
	.sleb128 0
	.byte	0x9f
	.uaword	.LVL320-.Ltext0
	.uaword	.LFE349-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST203:
	.uaword	.LVL311-.Ltext0
	.uaword	.LVL312-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL312-.Ltext0
	.uaword	.LVL313-.Ltext0
	.uahalf	0x2
	.byte	0x85
	.sleb128 20
	.uaword	.LVL320-.Ltext0
	.uaword	.LVL322-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL322-.Ltext0
	.uaword	.LVL323-.Ltext0
	.uahalf	0x2
	.byte	0x85
	.sleb128 20
	.uaword	0
	.uaword	0
.LLST204:
	.uaword	.LVL311-.Ltext0
	.uaword	.LVL313-.Ltext0
	.uahalf	0x2
	.byte	0x85
	.sleb128 28
	.uaword	.LVL320-.Ltext0
	.uaword	.LVL321-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL321-.Ltext0
	.uaword	.LVL323-.Ltext0
	.uahalf	0x2
	.byte	0x85
	.sleb128 28
	.uaword	0
	.uaword	0
.LLST205:
	.uaword	.LVL311-.Ltext0
	.uaword	.LVL314-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL314-.Ltext0
	.uaword	.LVL320-.Ltext0
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL320-.Ltext0
	.uaword	.LFE349-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST206:
	.uaword	.LVL315-.Ltext0
	.uaword	.LVL317-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST207:
	.uaword	.LVL315-.Ltext0
	.uaword	.LVL316-1-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST208:
	.uaword	.LVL315-.Ltext0
	.uaword	.LVL317-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST209:
	.uaword	.LVL315-.Ltext0
	.uaword	.LVL316-1-.Ltext0
	.uahalf	0x2
	.byte	0x8c
	.sleb128 12
	.uaword	0
	.uaword	0
.LLST211:
	.uaword	.LVL315-.Ltext0
	.uaword	.LVL316-1-.Ltext0
	.uahalf	0x2
	.byte	0x8c
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST212:
	.uaword	.LVL315-.Ltext0
	.uaword	.LVL316-1-.Ltext0
	.uahalf	0x1
	.byte	0x64
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
	.uaword	.LBB224-.Ltext0
	.uaword	.LBE224-.Ltext0
	.uaword	.LBB228-.Ltext0
	.uaword	.LBE228-.Ltext0
	.uaword	.LBB229-.Ltext0
	.uaword	.LBE229-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB232-.Ltext0
	.uaword	.LBE232-.Ltext0
	.uaword	.LBB236-.Ltext0
	.uaword	.LBE236-.Ltext0
	.uaword	.LBB237-.Ltext0
	.uaword	.LBE237-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB246-.Ltext0
	.uaword	.LBE246-.Ltext0
	.uaword	.LBB251-.Ltext0
	.uaword	.LBE251-.Ltext0
	.uaword	.LBB252-.Ltext0
	.uaword	.LBE252-.Ltext0
	.uaword	.LBB253-.Ltext0
	.uaword	.LBE253-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB256-.Ltext0
	.uaword	.LBE256-.Ltext0
	.uaword	.LBB260-.Ltext0
	.uaword	.LBE260-.Ltext0
	.uaword	.LBB261-.Ltext0
	.uaword	.LBE261-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB262-.Ltext0
	.uaword	.LBE262-.Ltext0
	.uaword	.LBB265-.Ltext0
	.uaword	.LBE265-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB268-.Ltext0
	.uaword	.LBE268-.Ltext0
	.uaword	.LBB298-.Ltext0
	.uaword	.LBE298-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB271-.Ltext0
	.uaword	.LBE271-.Ltext0
	.uaword	.LBB313-.Ltext0
	.uaword	.LBE313-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB274-.Ltext0
	.uaword	.LBE274-.Ltext0
	.uaword	.LBB277-.Ltext0
	.uaword	.LBE277-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB288-.Ltext0
	.uaword	.LBE288-.Ltext0
	.uaword	.LBB291-.Ltext0
	.uaword	.LBE291-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB305-.Ltext0
	.uaword	.LBE305-.Ltext0
	.uaword	.LBB308-.Ltext0
	.uaword	.LBE308-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB320-.Ltext0
	.uaword	.LBE320-.Ltext0
	.uaword	.LBB323-.Ltext0
	.uaword	.LBE323-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB330-.Ltext0
	.uaword	.LBE330-.Ltext0
	.uaword	.LBB334-.Ltext0
	.uaword	.LBE334-.Ltext0
	.uaword	.LBB335-.Ltext0
	.uaword	.LBE335-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB354-.Ltext0
	.uaword	.LBE354-.Ltext0
	.uaword	.LBB358-.Ltext0
	.uaword	.LBE358-.Ltext0
	.uaword	.LBB359-.Ltext0
	.uaword	.LBE359-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB360-.Ltext0
	.uaword	.LBE360-.Ltext0
	.uaword	.LBB364-.Ltext0
	.uaword	.LBE364-.Ltext0
	.uaword	.LBB365-.Ltext0
	.uaword	.LBE365-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB367-.Ltext0
	.uaword	.LBE367-.Ltext0
	.uaword	.LBB370-.Ltext0
	.uaword	.LBE370-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB373-.Ltext0
	.uaword	.LBE373-.Ltext0
	.uaword	.LBB378-.Ltext0
	.uaword	.LBE378-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB388-.Ltext0
	.uaword	.LBE388-.Ltext0
	.uaword	.LBB393-.Ltext0
	.uaword	.LBE393-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB399-.Ltext0
	.uaword	.LBE399-.Ltext0
	.uaword	.LBB405-.Ltext0
	.uaword	.LBE405-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB402-.Ltext0
	.uaword	.LBE402-.Ltext0
	.uaword	.LBB406-.Ltext0
	.uaword	.LBE406-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB411-.Ltext0
	.uaword	.LBE411-.Ltext0
	.uaword	.LBB416-.Ltext0
	.uaword	.LBE416-.Ltext0
	.uaword	.LBB417-.Ltext0
	.uaword	.LBE417-.Ltext0
	.uaword	.LBB418-.Ltext0
	.uaword	.LBE418-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB419-.Ltext0
	.uaword	.LBE419-.Ltext0
	.uaword	.LBB432-.Ltext0
	.uaword	.LBE432-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB421-.Ltext0
	.uaword	.LBE421-.Ltext0
	.uaword	.LBB428-.Ltext0
	.uaword	.LBE428-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB423-.Ltext0
	.uaword	.LBE423-.Ltext0
	.uaword	.LBB426-.Ltext0
	.uaword	.LBE426-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB433-.Ltext0
	.uaword	.LBE433-.Ltext0
	.uaword	.LBB502-.Ltext0
	.uaword	.LBE502-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB434-.Ltext0
	.uaword	.LBE434-.Ltext0
	.uaword	.LBB438-.Ltext0
	.uaword	.LBE438-.Ltext0
	.uaword	.LBB439-.Ltext0
	.uaword	.LBE439-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB444-.Ltext0
	.uaword	.LBE444-.Ltext0
	.uaword	.LBB448-.Ltext0
	.uaword	.LBE448-.Ltext0
	.uaword	.LBB449-.Ltext0
	.uaword	.LBE449-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB450-.Ltext0
	.uaword	.LBE450-.Ltext0
	.uaword	.LBB453-.Ltext0
	.uaword	.LBE453-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB454-.Ltext0
	.uaword	.LBE454-.Ltext0
	.uaword	.LBB504-.Ltext0
	.uaword	.LBE504-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB455-.Ltext0
	.uaword	.LBE455-.Ltext0
	.uaword	.LBB468-.Ltext0
	.uaword	.LBE468-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB460-.Ltext0
	.uaword	.LBE460-.Ltext0
	.uaword	.LBB464-.Ltext0
	.uaword	.LBE464-.Ltext0
	.uaword	.LBB465-.Ltext0
	.uaword	.LBE465-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB469-.Ltext0
	.uaword	.LBE469-.Ltext0
	.uaword	.LBB473-.Ltext0
	.uaword	.LBE473-.Ltext0
	.uaword	.LBB474-.Ltext0
	.uaword	.LBE474-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB475-.Ltext0
	.uaword	.LBE475-.Ltext0
	.uaword	.LBB478-.Ltext0
	.uaword	.LBE478-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB479-.Ltext0
	.uaword	.LBE479-.Ltext0
	.uaword	.LBB503-.Ltext0
	.uaword	.LBE503-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB482-.Ltext0
	.uaword	.LBE482-.Ltext0
	.uaword	.LBB486-.Ltext0
	.uaword	.LBE486-.Ltext0
	.uaword	.LBB487-.Ltext0
	.uaword	.LBE487-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB492-.Ltext0
	.uaword	.LBE492-.Ltext0
	.uaword	.LBB496-.Ltext0
	.uaword	.LBE496-.Ltext0
	.uaword	.LBB497-.Ltext0
	.uaword	.LBE497-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB498-.Ltext0
	.uaword	.LBE498-.Ltext0
	.uaword	.LBB501-.Ltext0
	.uaword	.LBE501-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB505-.Ltext0
	.uaword	.LBE505-.Ltext0
	.uaword	.LBB508-.Ltext0
	.uaword	.LBE508-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB509-.Ltext0
	.uaword	.LBE509-.Ltext0
	.uaword	.LBB526-.Ltext0
	.uaword	.LBE526-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB511-.Ltext0
	.uaword	.LBE511-.Ltext0
	.uaword	.LBB518-.Ltext0
	.uaword	.LBE518-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB513-.Ltext0
	.uaword	.LBE513-.Ltext0
	.uaword	.LBB516-.Ltext0
	.uaword	.LBE516-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB520-.Ltext0
	.uaword	.LBE520-.Ltext0
	.uaword	.LBB524-.Ltext0
	.uaword	.LBE524-.Ltext0
	.uaword	.LBB525-.Ltext0
	.uaword	.LBE525-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB527-.Ltext0
	.uaword	.LBE527-.Ltext0
	.uaword	.LBB531-.Ltext0
	.uaword	.LBE531-.Ltext0
	.uaword	.LBB532-.Ltext0
	.uaword	.LBE532-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB533-.Ltext0
	.uaword	.LBE533-.Ltext0
	.uaword	.LBB534-.Ltext0
	.uaword	.LBE534-.Ltext0
	.uaword	.LBB535-.Ltext0
	.uaword	.LBE535-.Ltext0
	.uaword	.LBB536-.Ltext0
	.uaword	.LBE536-.Ltext0
	.uaword	.LBB537-.Ltext0
	.uaword	.LBE537-.Ltext0
	.uaword	.LBB538-.Ltext0
	.uaword	.LBE538-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB539-.Ltext0
	.uaword	.LBE539-.Ltext0
	.uaword	.LBB543-.Ltext0
	.uaword	.LBE543-.Ltext0
	.uaword	.LBB552-.Ltext0
	.uaword	.LBE552-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB544-.Ltext0
	.uaword	.LBE544-.Ltext0
	.uaword	.LBB551-.Ltext0
	.uaword	.LBE551-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB546-.Ltext0
	.uaword	.LBE546-.Ltext0
	.uaword	.LBB549-.Ltext0
	.uaword	.LBE549-.Ltext0
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF60:
	.string	"rightAlignedStorage"
.LASF71:
	.string	"analogFrequency"
.LASF44:
	.string	"triggerSource"
.LASF43:
	.string	"gatingSource"
.LASF63:
	.string	"channelId"
.LASF33:
	.string	"MODNUMBER"
.LASF67:
	.string	"lowerBoundary"
.LASF53:
	.string	"group"
.LASF48:
	.string	"triggerConfig"
.LASF46:
	.string	"triggerMode"
.LASF42:
	.string	"vadc"
.LASF49:
	.string	"requestSlotPrio"
.LASF40:
	.string	"pinIndex"
.LASF69:
	.string	"boundaryMode"
.LASF73:
	.string	"vadcG"
.LASF32:
	.string	"MOD_TYPE"
.LASF64:
	.string	"inputClass"
.LASF10:
	.string	"reserved_10"
.LASF24:
	.string	"reserved_11"
.LASF15:
	.string	"reserved_12"
.LASF1:
	.string	"reserved_13"
.LASF35:
	.string	"reserved_14"
.LASF19:
	.string	"reserved_16"
.LASF12:
	.string	"reserved_17"
.LASF39:
	.string	"reserved_90"
.LASF7:
	.string	"XTMODE"
.LASF72:
	.string	"emuxInterface"
.LASF56:
	.string	"padDriver"
.LASF58:
	.string	"globalResultUsage"
.LASF55:
	.string	"outputMode"
.LASF11:
	.string	"RPTDIS"
.LASF65:
	.string	"reference"
.LASF47:
	.string	"arbiterRoundLength"
.LASF18:
	.string	"reserved_20"
.LASF8:
	.string	"reserved_21"
.LASF2:
	.string	"reserved_22"
.LASF4:
	.string	"reserved_24"
.LASF29:
	.string	"reserved_25"
.LASF16:
	.string	"reserved_27"
.LASF22:
	.string	"reserved_28"
.LASF17:
	.string	"reserved_29"
.LASF25:
	.string	"REQCHNR"
.LASF66:
	.string	"resultRegister"
.LASF30:
	.string	"reserved_0"
.LASF28:
	.string	"reserved_1"
.LASF13:
	.string	"reserved_2"
.LASF23:
	.string	"reserved_3"
.LASF6:
	.string	"reserved_4"
.LASF14:
	.string	"reserved_5"
.LASF9:
	.string	"reserved_6"
.LASF27:
	.string	"reserved_7"
.LASF0:
	.string	"reserved_8"
.LASF26:
	.string	"reserved_9"
.LASF37:
	.string	"reserved_C"
.LASF34:
	.string	"reserved_30"
.LASF3:
	.string	"reserved_31"
.LASF51:
	.string	"sampleTime"
.LASF77:
	.string	"masterIndex"
.LASF70:
	.string	"limitCheck"
.LASF68:
	.string	"upperBoundary"
.LASF5:
	.string	"SRCRESREG"
.LASF41:
	.string	"module"
.LASF79:
	.string	"groupIndex"
.LASF57:
	.string	"channel"
.LASF38:
	.string	"reserved_48"
.LASF20:
	.string	"BOUNDARY0"
.LASF21:
	.string	"BOUNDARY1"
.LASF50:
	.string	"requestSlotStartMode"
.LASF78:
	.string	"config"
.LASF52:
	.string	"resolution"
.LASF62:
	.string	"channelSrcNr"
.LASF36:
	.string	"reserved_144"
.LASF74:
	.string	"channelIndex"
.LASF61:
	.string	"resultSrcNr"
.LASF54:
	.string	"groupId"
.LASF45:
	.string	"gatingMode"
.LASF31:
	.string	"RESULT"
.LASF59:
	.string	"synchonize"
.LASF76:
	.string	"inputClassNum"
.LASF75:
	.string	"tempChctr"
	.extern	IfxVadc_configExternalMultiplexerMode,STT_FUNC,0
	.extern	IfxPort_setPinPadDriver,STT_FUNC,0
	.extern	IfxPort_setPinMode,STT_FUNC,0
	.extern	IfxScuCcu_getSpbFrequency,STT_FUNC,0
	.extern	IfxVadc_getAdcDigitalFrequency,STT_FUNC,0
	.extern	IfxVadc_startupCalibration,STT_FUNC,0
	.extern	IfxVadc_initializeFAdcD,STT_FUNC,0
	.extern	IfxVadc_initializeFAdcI,STT_FUNC,0
	.extern	IfxScuCcu_selectAdcClock,STT_FUNC,0
	.extern	IfxVadc_disablePostCalibration,STT_FUNC,0
	.extern	IfxVadc_setArbiterPriority,STT_FUNC,0
	.extern	IfxVadc_getChannelConversionTime,STT_FUNC,0
	.extern	IfxVadc_getAdcModuleFrequency,STT_FUNC,0
	.extern	IfxVadc_getAdcAnalogFrequency,STT_FUNC,0
	.extern	IfxVadc_getSrcAddress,STT_FUNC,0
	.extern	IfxScuWdt_setCpuEndinit,STT_FUNC,0
	.extern	IfxScuWdt_clearCpuEndinit,STT_FUNC,0
	.extern	IfxScuWdt_getCpuWatchdogPassword,STT_FUNC,0
	.extern	IfxVadc_disableAccess,STT_FUNC,0
	.extern	IfxVadc_enableAccess,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.1.0-infineon-2.0-df254e8) 4.9.4 build on 2018-04-18"
