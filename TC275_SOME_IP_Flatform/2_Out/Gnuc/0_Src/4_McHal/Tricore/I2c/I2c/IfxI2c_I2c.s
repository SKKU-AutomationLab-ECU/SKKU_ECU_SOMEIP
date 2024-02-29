	.file	"IfxI2c_I2c.c"
.section .text,"ax",@progbits
.Ltext0:
	.align 1
	.global	IfxI2c_I2c_initConfig
	.type	IfxI2c_I2c_initConfig, @function
IfxI2c_I2c_initConfig:
.LFB259:
	.file 1 "0_Src/4_McHal/Tricore/I2c/I2c/IfxI2c_I2c.c"
	.loc 1 36 0
.LVL0:
	.loc 1 38 0
	movh	%d15, 18627
	addi	%d15, %d15, 20480
	.loc 1 37 0
	st.a	[%a4]0, %a5
	.loc 1 38 0
	st.w	[%a4] 4, %d15
	.loc 1 39 0
	mov	%d15, 0
	st.w	[%a4] 8, %d15
	ret
.LFE259:
	.size	IfxI2c_I2c_initConfig, .-IfxI2c_I2c_initConfig
	.align 1
	.global	IfxI2c_I2c_initDevice
	.type	IfxI2c_I2c_initDevice, @function
IfxI2c_I2c_initDevice:
.LFB260:
	.loc 1 44 0
.LVL1:
	.loc 1 45 0
	ld.w	%d15, [%a5]0
	st.w	[%a4]0, %d15
	.loc 1 46 0
	ld.bu	%d15, [%a5] 4
	st.b	[%a4] 4, %d15
	ret
.LFE260:
	.size	IfxI2c_I2c_initDevice, .-IfxI2c_I2c_initDevice
	.align 1
	.global	IfxI2c_I2c_initDeviceConfig
	.type	IfxI2c_I2c_initDeviceConfig, @function
IfxI2c_I2c_initDeviceConfig:
.LFB261:
	.loc 1 51 0
.LVL2:
	.loc 1 53 0
	mov	%d15, -1
	.loc 1 52 0
	st.a	[%a4]0, %a5
	.loc 1 53 0
	st.b	[%a4] 4, %d15
	ret
.LFE261:
	.size	IfxI2c_I2c_initDeviceConfig, .-IfxI2c_I2c_initDeviceConfig
	.align 1
	.global	IfxI2c_I2c_initModule
	.type	IfxI2c_I2c_initModule, @function
IfxI2c_I2c_initModule:
.LFB262:
	.loc 1 58 0
.LVL3:
	.loc 1 59 0
	ld.a	%a15, [%a5]0
.LVL4:
.LBB168:
.LBB169:
	.file 2 "./0_Src/4_McHal/Tricore/I2c/Std/IfxI2c.h"
	.loc 2 885 0
	mov	%d15, 0
.LBE169:
.LBE168:
	.loc 1 58 0
	mov.aa	%a12, %a4
	.loc 1 60 0
	st.a	[%a4]0, %a15
	.loc 1 62 0
	mov.aa	%a4, %a15
.LVL5:
	.loc 1 58 0
	mov.aa	%a13, %a5
	.loc 1 62 0
	call	IfxI2c_enableModule
.LVL6:
	.loc 1 64 0
	mov.aa	%a4, %a15
.LBB171:
.LBB170:
	.loc 2 885 0
	st.w	[%a15] 16, %d15
.LBE170:
.LBE171:
	.loc 1 64 0
	call	IfxI2c_configureAsMaster
.LVL7:
	.loc 1 65 0
	ld.w	%d4, [%a13] 4
	mov.aa	%a4, %a15
	call	IfxI2c_setBaudrate
.LVL8:
	.loc 1 66 0
	ld.a	%a2, [%a13] 8
	ld.a	%a4, [%a2]0
	ld.a	%a5, [%a2] 4
	ld.w	%d4, [%a2] 8
	call	IfxI2c_initSclSdaPin
.LVL9:
.LBB172:
.LBB173:
	.loc 2 849 0
	mov	%d2, 1
.LBE173:
.LBE172:
	.loc 1 68 0
	mov.aa	%a4, %a15
.LBB175:
.LBB174:
	.loc 2 849 0
	st.w	[%a15] 16, %d2
.LBE174:
.LBE175:
	.loc 1 68 0
	call	IfxI2c_getBaudrate
.LVL10:
	st.w	[%a12] 12, %d2
.LVL11:
.LBB176:
.LBB177:
	.loc 2 730 0
	ld.w	%d2, [%a15] 36
.LBE177:
.LBE176:
	.loc 1 70 0
	st.w	[%a12] 8, %d15
.LBB179:
.LBB178:
	.loc 2 730 0
	and	%d2, %d2, 3
	st.w	[%a12] 4, %d2
.LBE178:
.LBE179:
	.loc 1 70 0
	ret
.LFE262:
	.size	IfxI2c_I2c_initModule, .-IfxI2c_I2c_initModule
	.align 1
	.global	IfxI2c_I2c_read
	.type	IfxI2c_I2c_read, @function
IfxI2c_I2c_read:
.LFB263:
	.loc 1 75 0
.LVL12:
	.loc 1 77 0
	ld.a	%a2, [%a4]0
	.loc 1 81 0
	mov	%d15, 0
	.loc 1 75 0
	sub.a	%SP, 8
.LCFI0:
	.loc 1 77 0
	ld.a	%a15, [%a2]0
.LVL13:
	.loc 1 81 0
	st.w	[%SP] 4, %d15
	.loc 1 79 0
	ld.bu	%d2, [%a4] 4
.LVL14:
.LBB180:
.LBB181:
	.loc 2 556 0
	ld.w	%d15, [%a15] 36
	and	%d15, %d15, 3
	jnz	%d15, .L77
.LVL15:
.LBE181:
.LBE180:
.LBB182:
.LBB183:
	.loc 2 573 0
	mov	%d15, 127
.LBE183:
.LBE182:
.LBB185:
.LBB186:
	.loc 2 898 0
	lea	%a2, [%a15] -32768
	addih.a	%a2, %a2, 1
.LBE186:
.LBE185:
.LBB188:
.LBB184:
	.loc 2 573 0
	st.w	[%a15] 120, %d15
.LVL16:
.LBE184:
.LBE188:
.LBB189:
.LBB190:
	.loc 2 567 0
	mov	%d15, 15
	st.w	[%a15] 104, %d15
.LBE190:
.LBE189:
	.loc 1 99 0
	or	%d15, %d2, 1
.LVL17:
.LBB191:
.LBB192:
	.loc 2 879 0
	ld.w	%d2, [%a15] 52
.LVL18:
	insert	%d2, %d2, 1, 0, 14
	st.w	[%a15] 52, %d2
.LVL19:
.LBE192:
.LBE191:
.LBB193:
.LBB194:
	.loc 2 861 0
	ld.w	%d2, [%a15] 44
	insert	%d2, %d2, %d4, 0, 14
	st.w	[%a15] 44, %d2
.LVL20:
.LBE194:
.LBE193:
.LBB195:
.LBB187:
	.loc 2 898 0
	st.w	[%a2]0, %d15
.LVL21:
.LBE187:
.LBE195:
.LBB196:
.LBB197:
	.loc 2 597 0
	ld.w	%d15, [%a15] 140
.LVL22:
	or	%d15, %d15, 1
	st.w	[%a15] 140, %d15
.LVL23:
.LBE197:
.LBE196:
.LBB198:
.LBB199:
	.loc 2 609 0
	ld.w	%d15, [%a15] 140
	or	%d15, %d15, 2
	st.w	[%a15] 140, %d15
.LVL24:
.LBE199:
.LBE198:
.LBB200:
.LBB201:
	.loc 2 591 0
	ld.w	%d15, [%a15] 140
	or	%d15, %d15, 4
	st.w	[%a15] 140, %d15
.LVL25:
.LBE201:
.LBE200:
.LBB202:
.LBB203:
	.loc 2 579 0
	ld.w	%d15, [%a15] 140
	or	%d15, %d15, 8
	st.w	[%a15] 140, %d15
.L8:
.LBE203:
.LBE202:
	.loc 1 109 0 discriminator 1
	ld.w	%d15, [%a15] 112
	jnz.t	%d15, 0, .L8
	.loc 1 113 0
	ld.w	%d15, [%a15] 100
	jz	%d15, .L78
.LVL26:
.L73:
.LBB204:
.LBB205:
.LBB206:
	.loc 2 567 0
	mov	%d15, 15
	st.w	[%a15] 104, %d15
.LVL27:
.LBE206:
.LBE205:
	.loc 1 266 0
	mov	%d15, 4
.LVL28:
.L10:
	mov.aa	%a12, %a4
.LVL29:
.LBE204:
	.loc 1 270 0
	mov.aa	%a4, %a15
.LVL30:
	call	IfxI2c_releaseBus
.LVL31:
.LBB280:
.LBB281:
	.loc 2 730 0
	ld.w	%d2, [%a15] 36
.LBE281:
.LBE280:
	.loc 1 271 0
	ld.a	%a2, [%a12]0
.LVL32:
.LBB284:
.LBB282:
	.loc 2 730 0
	and	%d2, %d2, 3
.LBE282:
.LBE284:
	.loc 1 272 0
	st.w	[%a2] 8, %d15
.LBB285:
.LBB283:
	.loc 2 730 0
	st.w	[%a2] 4, %d2
.LBE283:
.LBE285:
	.loc 1 273 0
	mov	%d2, %d15
	ret
.LVL33:
.L77:
.LBB286:
.LBB287:
	.loc 2 730 0
	ld.w	%d15, [%a15] 36
.LBE287:
.LBE286:
	.loc 1 92 0
	mov	%d2, 3
.LBB289:
.LBB288:
	.loc 2 730 0
	and	%d15, %d15, 3
	st.w	[%a2] 4, %d15
.LVL34:
.LBE288:
.LBE289:
	.loc 1 91 0
	mov	%d15, 3
	st.w	[%a2] 8, %d15
	.loc 1 92 0
	ret
.LVL35:
.L78:
.LBB290:
.LBB291:
	.loc 2 805 0
	ld.w	%d15, [%a15] 116
.LBE291:
.LBE290:
	.loc 1 118 0
	jz.t	%d15, 3, .L11
.LVL36:
.LBB292:
.LBB293:
	.loc 2 603 0
	mov	%d15, 8
	st.w	[%a15] 120, %d15
.LVL37:
.LBE293:
.LBE292:
	.loc 1 121 0
	mov	%d15, 2
	j	.L10
.LVL38:
.L11:
.LBB294:
.LBB295:
	.loc 2 805 0
	ld.w	%d15, [%a15] 116
.LBE295:
.LBE294:
	.loc 1 123 0
	jnz.t	%d15, 4, .L79
	.loc 1 76 0
	mov	%d15, 0
	.loc 1 128 0
	jlez	%d4, .L10
.LBB296:
	.loc 1 131 0
	lt	%d15, %d4, 33
.LBE296:
	.loc 1 82 0
	mov	%d3, %d4
.LBB297:
	.loc 1 131 0
	jnz	%d15, .L60
.LVL39:
.LBB207:
.LBB208:
.LBB209:
.LBB210:
.LBB211:
.LBB212:
	.file 3 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h"
	.loc 3 544 0
#APP
	# 544 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h" 1
	mfcr %d7, LO:0xFE2C
	# 0 "" 2
.LVL40:
#NO_APP
.LBE212:
	.loc 3 545 0
	extr.u	%d7, %d7, 15, 1
.LVL41:
.LBE211:
.LBE210:
	.loc 3 553 0
#APP
	# 553 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h" 1
	disable
	# 0 "" 2
#NO_APP
.LBB213:
.LBB214:
	.file 4 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
	.loc 4 1369 0
#APP
	# 1369 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	nop
	# 0 "" 2
.LVL42:
#NO_APP
.LBE214:
.LBE213:
.LBE209:
.LBE208:
.LBB215:
.LBB216:
	.loc 1 158 0
	lea	%a12, [%a15] -16384
.LBE216:
.LBE215:
	.loc 1 136 0
	mov	%d5, 0
.LBB231:
.LBB225:
	.loc 1 158 0
	addih.a	%a12, %a12, 1
.LVL43:
.L23:
.LBE225:
	.loc 1 138 0
	jlt	%d3, 4, .L14
.LVL44:
	.loc 1 141 0
	add	%d3, -4
.LVL45:
	.loc 1 140 0
	mov	%d6, 4
.LVL46:
.L16:
	.loc 1 151 0 discriminator 1
	ld.w	%d15, [%a15] 128
.LVL47:
	jz	%d15, .L16
	.loc 1 156 0
	and	%d2, %d15, 15
	jz	%d2, .L17
.LBB226:
	.loc 1 158 0
	ld.w	%d2, [%a12]0
	mov.a	%a2, %d6
	st.w	[%SP] 4, %d2
.LVL48:
	.loc 1 161 0
	mov.a	%a3, 0
	add.a	%a2, -1
	jz	%d6, .L19
.LVL49:
.L53:
	addsc.a	%a7, %a3, %d5, 0
	.loc 1 163 0 discriminator 3
	lea	%a6, [%SP] 4
.LVL50:
	add.a	%a6, %a3
.LVL51:
	add.a	%a7, %a5
	ld.bu	%d2, [%a6]0
	st.b	[%a7]0, %d2
	.loc 1 161 0 discriminator 3
	add.a	%a3, 1
.LVL52:
	loop	%a2, .L53
.LVL53:
.L19:
.LBB217:
.LBB218:
	.loc 2 597 0
	ld.w	%d2, [%a15] 140
	or	%d2, %d2, 1
	st.w	[%a15] 140, %d2
.LVL54:
.LBE218:
.LBE217:
.LBB219:
.LBB220:
	.loc 2 609 0
	ld.w	%d2, [%a15] 140
	or	%d2, %d2, 2
	st.w	[%a15] 140, %d2
.LVL55:
.LBE220:
.LBE219:
.LBB221:
.LBB222:
	.loc 2 591 0
	ld.w	%d2, [%a15] 140
	or	%d2, %d2, 4
	st.w	[%a15] 140, %d2
.LVL56:
.LBE222:
.LBE221:
.LBB223:
.LBB224:
	.loc 2 579 0
	ld.w	%d2, [%a15] 140
	or	%d2, %d2, 8
	st.w	[%a15] 140, %d2
.LVL57:
.L17:
.LBE224:
.LBE223:
.LBE226:
	.loc 1 173 0
	jnz.t	%d15, 5, .L80
	.loc 1 180 0
	jnz.t	%d15, 4, .L81
.LBE231:
	.loc 1 136 0 discriminator 2
	add	%d5, 4
.LVL58:
	jlt.u	%d5, %d4, .L23
.LBE207:
.LBE297:
	.loc 1 76 0
	mov	%d15, 0
.LVL59:
.L21:
.LBB298:
.LBB240:
.LBB232:
.LBB233:
	.loc 3 766 0
	jz	%d7, .L25
	.loc 3 768 0
#APP
	# 768 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h" 1
	enable
	# 0 "" 2
#NO_APP
.L25:
.LVL60:
.LBE233:
.LBE232:
.LBB234:
.LBB235:
	.loc 2 805 0 discriminator 1
	ld.w	%d2, [%a15] 116
.LBE235:
.LBE234:
	.loc 1 191 0 discriminator 1
	jz.t	%d2, 5, .L25
.LVL61:
.LBB236:
.LBB237:
	.loc 2 603 0
	mov	%d2, 32
	st.w	[%a15] 120, %d2
	j	.L26
.LVL62:
.L60:
.LBE237:
.LBE236:
.LBE240:
.LBB241:
.LBB242:
.LBB243:
	.loc 2 805 0 discriminator 1
	ld.w	%d15, [%a15] 116
.LBE243:
.LBE242:
	.loc 1 199 0 discriminator 1
	jz.t	%d15, 5, .L60
.LVL63:
.LBB244:
.LBB245:
	.loc 2 603 0
	mov	%d15, 32
	st.w	[%a15] 120, %d15
.LBE245:
.LBE244:
	.loc 1 206 0
	ld.w	%d2, [%a15] 128
.LVL64:
	.loc 1 208 0
	jz.t	%d2, 5, .L27
.LVL65:
.LBB246:
.LBB247:
	.loc 2 573 0
	mov	%d15, 127
	st.w	[%a15] 120, %d15
.LVL66:
.LBE247:
.LBE246:
	.loc 1 214 0
	mov	%d15, 4
	jz.t	%d2, 4, .L26
.LVL67:
.L35:
.LBB248:
.LBB249:
	.loc 2 567 0
	mov	%d15, 15
	st.w	[%a15] 104, %d15
.LVL68:
	mov	%d15, 4
.LVL69:
.L26:
.LBE249:
.LBE248:
.LBE241:
	.loc 1 255 0
	ld.w	%d2, [%a15] 128
.LVL70:
	.loc 1 257 0
	jz.t	%d2, 5, .L33
.LVL71:
.LBB274:
.LBB275:
	.loc 2 573 0
	mov	%d15, 127
.LVL72:
	st.w	[%a15] 120, %d15
.LVL73:
.LBE275:
.LBE274:
	.loc 1 260 0
	mov	%d15, 4
.LVL74:
.L33:
	.loc 1 263 0
	jz.t	%d2, 4, .L10
	j	.L73
.LVL75:
.L79:
.LBE298:
.LBB299:
.LBB300:
	.loc 2 603 0
	mov	%d15, 16
	st.w	[%a15] 120, %d15
.LVL76:
.LBE300:
.LBE299:
	.loc 1 126 0
	mov	%d15, 1
	j	.L10
.LVL77:
.L14:
.LBB301:
.LBB276:
.LBB238:
	.loc 1 145 0
	mov	%d6, %d3
.LVL78:
	.loc 1 146 0
	mov	%d3, 0
	j	.L16
.LVL79:
.L27:
.LBE238:
.LBE276:
.LBB277:
	.loc 1 214 0
	jnz.t	%d2, 4, .L35
.LVL80:
	lea	%a12, [%a15] -16384
.LBB250:
	.loc 1 225 0
	mov	%d2, 0
.LVL81:
.LBB251:
	.loc 1 239 0
	addih.a	%a12, %a12, 1
.LVL82:
.L32:
	.loc 1 227 0
	jlt	%d3, 4, .L28
.LVL83:
	.loc 1 239 0
	ld.w	%d15, [%a12]0
	st.w	[%SP] 4, %d15
.LBB252:
.LBB253:
	.loc 2 597 0
	ld.w	%d15, [%a15] 140
.LBE253:
.LBE252:
	.loc 1 230 0
	add	%d3, -4
.LVL84:
.LBB257:
.LBB254:
	.loc 2 597 0
	or	%d15, %d15, 1
	st.w	[%a15] 140, %d15
.LVL85:
.LBE254:
.LBE257:
.LBB258:
.LBB259:
	.loc 2 609 0
	ld.w	%d15, [%a15] 140
	or	%d15, %d15, 2
	st.w	[%a15] 140, %d15
.LVL86:
.LBE259:
.LBE258:
.LBB261:
.LBB262:
	.loc 2 591 0
	ld.w	%d15, [%a15] 140
	or	%d15, %d15, 4
	st.w	[%a15] 140, %d15
.LVL87:
.LBE262:
.LBE261:
.LBB264:
.LBB265:
	.loc 2 579 0
	ld.w	%d15, [%a15] 140
	or	%d15, %d15, 8
	st.w	[%a15] 140, %d15
.LVL88:
.LBE265:
.LBE264:
	.loc 1 229 0
	mov	%d15, 4
.LVL89:
.L29:
	add	%d5, %d15, -1
	cmovn	%d5, %d15, 0
	mov.a	%a2, %d5
	.loc 1 229 0 is_stmt 0 discriminator 3
	mov.a	%a3, 0
.LVL90:
.L31:
	addsc.a	%a7, %a3, %d2, 0
	.loc 1 247 0 is_stmt 1 discriminator 3
	lea	%a6, [%SP] 4
.LVL91:
	add.a	%a6, %a3
.LVL92:
	add.a	%a7, %a5
	ld.bu	%d15, [%a6]0
	st.b	[%a7]0, %d15
	.loc 1 245 0 discriminator 3
	add.a	%a3, 1
.LVL93:
	loop	%a2, .L31
.LVL94:
.L30:
.LBE251:
	.loc 1 225 0 discriminator 2
	add	%d2, 4
.LVL95:
	jlt.u	%d2, %d4, .L32
.LBE250:
.LBE277:
.LBE301:
	.loc 1 76 0
	mov	%d15, 0
.LBB302:
.LBB278:
.LBB273:
	j	.L26
.L28:
.LBB272:
	.loc 1 239 0
	ld.w	%d5, [%a12]0
	st.w	[%SP] 4, %d5
.LBB267:
.LBB255:
	.loc 2 597 0
	ld.w	%d5, [%a15] 140
.LBE255:
.LBE267:
	.loc 1 234 0
	mov	%d15, %d3
.LVL96:
.LBB268:
.LBB256:
	.loc 2 597 0
	or	%d5, %d5, 1
	st.w	[%a15] 140, %d5
.LVL97:
.LBE256:
.LBE268:
.LBB269:
.LBB260:
	.loc 2 609 0
	ld.w	%d5, [%a15] 140
	or	%d5, %d5, 2
	st.w	[%a15] 140, %d5
.LVL98:
.LBE260:
.LBE269:
.LBB270:
.LBB263:
	.loc 2 591 0
	ld.w	%d5, [%a15] 140
	or	%d5, %d5, 4
	st.w	[%a15] 140, %d5
.LVL99:
.LBE263:
.LBE270:
.LBB271:
.LBB266:
	.loc 2 579 0
	ld.w	%d5, [%a15] 140
	or	%d5, %d5, 8
	st.w	[%a15] 140, %d5
.LVL100:
.LBE266:
.LBE271:
	.loc 1 245 0
	jz	%d3, .L30
.LVL101:
	.loc 1 235 0
	mov	%d3, 0
.LVL102:
	j	.L29
.LVL103:
.L80:
.LBE272:
.LBE273:
.LBE278:
.LBB279:
.LBB239:
.LBB227:
.LBB228:
	.loc 2 573 0
	mov	%d15, 127
.LVL104:
	st.w	[%a15] 120, %d15
.LVL105:
.LBE228:
.LBE227:
	.loc 1 176 0
	mov	%d15, 4
	.loc 1 177 0
	j	.L21
.LVL106:
.L81:
.LBB229:
.LBB230:
	.loc 2 567 0
	mov	%d15, 15
.LVL107:
	st.w	[%a15] 104, %d15
.LVL108:
.LBE230:
.LBE229:
	.loc 1 183 0
	mov	%d15, 4
	.loc 1 184 0
	j	.L21
.LBE239:
.LBE279:
.LBE302:
.LFE263:
	.size	IfxI2c_I2c_read, .-IfxI2c_I2c_read
	.align 1
	.global	IfxI2c_I2c_write
	.type	IfxI2c_I2c_write, @function
IfxI2c_I2c_write:
.LFB264:
	.loc 1 278 0
.LVL109:
	.loc 1 280 0
	ld.a	%a2, [%a4]0
	.loc 1 278 0
	sub.a	%SP, 8
.LCFI1:
	.loc 1 281 0
	ld.bu	%d5, [%a4] 4
	.loc 1 280 0
	ld.a	%a15, [%a2]0
.LVL110:
.LBB303:
.LBB304:
	.loc 2 556 0
	ld.w	%d15, [%a15] 36
	and	%d15, %d15, 3
	jnz	%d15, .L141
.LVL111:
.LBE304:
.LBE303:
.LBB305:
.LBB306:
	.loc 2 573 0
	mov	%d15, 127
.LBE306:
.LBE305:
	.loc 1 301 0
	st.w	[%SP] 4, %d5
.LBB308:
.LBB309:
	.loc 2 898 0
	lea	%a6, [%a15] -32768
.LBE309:
.LBE308:
.LBB312:
.LBB307:
	.loc 2 573 0
	st.w	[%a15] 120, %d15
.LVL112:
.LBE307:
.LBE312:
.LBB313:
.LBB314:
	.loc 2 567 0
	mov	%d15, 15
.LBE314:
.LBE313:
.LBB316:
.LBB310:
	.loc 2 898 0
	addih.a	%a2, %a6, 1
.LBE310:
.LBE316:
.LBB317:
.LBB315:
	.loc 2 567 0
	st.w	[%a15] 104, %d15
.LBE315:
.LBE317:
.LBB318:
.LBB319:
	.loc 2 879 0
	ld.w	%d15, [%a15] 52
	insert	%d15, %d15, 1, 0, 14
	st.w	[%a15] 52, %d15
.LVL113:
.LBE319:
.LBE318:
.LBB320:
.LBB311:
	.loc 2 898 0
	st.w	[%a2]0, %d5
.LVL114:
.LBE311:
.LBE320:
.LBB321:
.LBB322:
	.loc 2 597 0
	ld.w	%d15, [%a15] 140
	or	%d15, %d15, 1
	st.w	[%a15] 140, %d15
.LVL115:
.LBE322:
.LBE321:
.LBB323:
.LBB324:
	.loc 2 609 0
	ld.w	%d15, [%a15] 140
	or	%d15, %d15, 2
	st.w	[%a15] 140, %d15
.LVL116:
.LBE324:
.LBE323:
.LBB325:
.LBB326:
	.loc 2 591 0
	ld.w	%d15, [%a15] 140
	or	%d15, %d15, 4
	st.w	[%a15] 140, %d15
.LVL117:
.LBE326:
.LBE325:
.LBB327:
.LBB328:
	.loc 2 579 0
	ld.w	%d15, [%a15] 140
	or	%d15, %d15, 8
	st.w	[%a15] 140, %d15
.L85:
.LVL118:
.LBE328:
.LBE327:
.LBB329:
.LBB330:
	.loc 2 805 0 discriminator 1
	ld.w	%d15, [%a15] 116
.LBE330:
.LBE329:
	.loc 1 311 0 discriminator 1
	jz.t	%d15, 5, .L85
.LVL119:
.LBB331:
.LBB332:
	.loc 2 603 0
	mov	%d15, 32
	st.w	[%a15] 120, %d15
.LVL120:
.LBE332:
.LBE331:
.LBB333:
.LBB334:
	.loc 2 805 0
	ld.w	%d15, [%a15] 116
.LBE334:
.LBE333:
	.loc 1 317 0
	jnz.t	%d15, 3, .L142
.LVL121:
.LBB335:
.LBB336:
	.loc 2 805 0
	ld.w	%d15, [%a15] 116
.LBE336:
.LBE335:
	.loc 1 322 0
	jz.t	%d15, 4, .L88
.LVL122:
.LBB337:
.LBB338:
	.loc 2 603 0
	mov	%d15, 16
.LBE338:
.LBE337:
	.loc 1 325 0
	mov	%d8, 1
.LBB340:
.LBB339:
	.loc 2 603 0
	st.w	[%a15] 120, %d15
.LVL123:
.L87:
	mov.aa	%a12, %a4
.LVL124:
.LBE339:
.LBE340:
	.loc 1 420 0
	mov.aa	%a4, %a15
.LVL125:
	call	IfxI2c_releaseBus
.LVL126:
.LBB341:
.LBB342:
	.loc 2 730 0
	ld.w	%d15, [%a15] 36
.LBE342:
.LBE341:
	.loc 1 421 0
	ld.a	%a2, [%a12]0
.LVL127:
.LBB345:
.LBB343:
	.loc 2 730 0
	and	%d15, %d15, 3
.LBE343:
.LBE345:
	.loc 1 423 0
	mov	%d2, %d8
	.loc 1 422 0
	st.w	[%a2] 8, %d8
.LBB346:
.LBB344:
	.loc 2 730 0
	st.w	[%a2] 4, %d15
.LBE344:
.LBE346:
	.loc 1 423 0
	ret
.LVL128:
.L141:
.LBB347:
.LBB348:
	.loc 2 730 0
	ld.w	%d15, [%a15] 36
.LBE348:
.LBE347:
	.loc 1 292 0
	mov	%d2, 3
.LBB350:
.LBB349:
	.loc 2 730 0
	and	%d15, %d15, 3
	st.w	[%a2] 4, %d15
.LVL129:
.LBE349:
.LBE350:
	.loc 1 291 0
	mov	%d15, 3
	st.w	[%a2] 8, %d15
	.loc 1 292 0
	ret
.LVL130:
.L142:
.LBB351:
.LBB352:
	.loc 2 603 0
	mov	%d15, 8
.LBE352:
.LBE351:
	.loc 1 320 0
	mov	%d8, 2
.LBB354:
.LBB353:
	.loc 2 603 0
	st.w	[%a15] 120, %d15
.LVL131:
.LBE353:
.LBE354:
	j	.L87
.LVL132:
.L88:
	.loc 1 279 0
	mov	%d8, 0
	.loc 1 327 0
	jlez	%d4, .L87
	.loc 1 283 0
	add	%d4, 1
.LVL133:
.LBB355:
.LBB356:
.LBB357:
.LBB358:
.LBB359:
.LBB360:
	.loc 3 544 0
#APP
	# 544 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h" 1
	mfcr %d10, LO:0xFE2C
	# 0 "" 2
.LVL134:
#NO_APP
.LBE360:
	.loc 3 545 0
	extr.u	%d10, %d10, 15, 1
.LVL135:
.LBE359:
.LBE358:
	.loc 3 553 0
#APP
	# 553 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h" 1
	disable
	# 0 "" 2
#NO_APP
.LBB361:
.LBB362:
	.loc 4 1369 0
#APP
	# 1369 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	nop
	# 0 "" 2
.LVL136:
#NO_APP
.LBE362:
.LBE361:
.LBE357:
.LBE356:
.LBB363:
.LBB364:
	.loc 2 879 0
	ld.w	%d15, [%a15] 52
.LBE364:
.LBE363:
	.loc 1 336 0
	mov	%d1, %d4
.LBB367:
.LBB365:
	.loc 2 879 0
	insert	%d15, %d15, %d4, 0, 14
.LBE365:
.LBE367:
	.loc 1 336 0
	mov	%d3, 0
	.loc 1 340 0
	mov	%d9, 0
.LBB368:
.LBB369:
.LBB370:
	.loc 2 573 0
	mov	%d6, 127
.LBE370:
.LBE369:
.LBE368:
.LBB375:
.LBB366:
	.loc 2 879 0
	st.w	[%a15] 52, %d15
.LVL137:
.LBE366:
.LBE375:
.LBB376:
.LBB377:
	.loc 2 898 0
	addih.a	%a6, %a6, 1
.LVL138:
.LBE377:
.LBE376:
	.loc 1 338 0
	jlt	%d4, 4, .L89
.LVL139:
.L143:
	.loc 1 341 0
	add	%d4, -4
.LVL140:
	.loc 1 349 0
	st.w	[%SP] 4, %d9
.LVL141:
	.loc 1 340 0
	mov	%d2, 4
.LVL142:
.L90:
	addi	%d0, %d2, -1
	sel	%d0, %d2, %d0, 0
	mov.a	%a2, %d0
	mov	%d15, 0
	addi	%d7, %d3, -1
.LVL143:
.L94:
	.loc 1 353 0
	or	%d2, %d15, %d3
	jnz	%d2, .L92
	.loc 1 355 0
	st.b	[%SP] 4, %d5
.L93:
	.loc 1 351 0 discriminator 2
	add	%d15, 1
.LVL144:
	loop	%a2, .L94
.LVL145:
.L100:
.LBB379:
	.loc 1 368 0
	ld.w	%d15, [%a15] 128
.LVL146:
	.loc 1 370 0
	jz.t	%d15, 5, .L95
.LVL147:
.LBB372:
.LBB371:
	.loc 2 573 0
	st.w	[%a15] 120, %d6
.LVL148:
.LBE371:
.LBE372:
	.loc 1 373 0
	mov	%d8, 4
.LVL149:
.L95:
	.loc 1 376 0
	jz.t	%d15, 4, .L96
.LVL150:
.LBB373:
.LBB374:
	.loc 2 567 0
	mov	%d15, 15
.LVL151:
	st.w	[%a15] 104, %d15
.LVL152:
.LBE374:
.LBE373:
.LBE379:
	.loc 1 381 0
	ld.w	%d15, [%a15] 56
.LVL153:
.L97:
	mov	%d8, 4
.L98:
.LVL154:
.LBB380:
.LBB381:
	.loc 3 766 0
	jz	%d10, .L104
	.loc 3 768 0
#APP
	# 768 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h" 1
	enable
	# 0 "" 2
#NO_APP
.L104:
.LVL155:
.LBE381:
.LBE380:
.LBB382:
.LBB383:
	.loc 2 805 0 discriminator 1
	ld.w	%d15, [%a15] 116
.LBE383:
.LBE382:
	.loc 1 398 0 discriminator 1
	jz.t	%d15, 5, .L104
.LVL156:
.LBB384:
.LBB385:
	.loc 2 603 0
	mov	%d15, 32
	st.w	[%a15] 120, %d15
.LBE385:
.LBE384:
	.loc 1 405 0
	ld.w	%d15, [%a15] 128
.LVL157:
	.loc 1 407 0
	jz.t	%d15, 5, .L105
.LVL158:
.LBB386:
.LBB387:
	.loc 2 573 0
	mov	%d2, 127
.LBE387:
.LBE386:
	.loc 1 410 0
	mov	%d8, 4
.LVL159:
.LBB389:
.LBB388:
	.loc 2 573 0
	st.w	[%a15] 120, %d2
.LVL160:
.L105:
.LBE388:
.LBE389:
	.loc 1 413 0
	jz.t	%d15, 4, .L87
.LVL161:
.LBB390:
.LBB391:
	.loc 2 567 0
	mov	%d15, 15
.LVL162:
.LBE391:
.LBE390:
	.loc 1 416 0
	mov	%d8, 4
.LVL163:
.LBB393:
.LBB392:
	.loc 2 567 0
	st.w	[%a15] 104, %d15
.LVL164:
	j	.L87
.LVL165:
.L96:
.LBE392:
.LBE393:
	.loc 1 381 0
	ld.w	%d15, [%a15] 56
.LVL166:
	and	%d15, %d15, 63
	ne	%d15, %d15, 8
	jnz	%d15, .L99
	.loc 1 381 0 is_stmt 0 discriminator 1
	jne	%d8, 4, .L100
	mov	%d8, 4
.LVL167:
	j	.L98
.LVL168:
.L92:
	mov.a	%a7, %d7
	addsc.a	%a3, %a7, %d15, 0
	.loc 1 360 0 is_stmt 1
	lea	%a7, [%SP] 4
.LVL169:
	add.a	%a3, %a5
	ld.bu	%d2, [%a3]0
	addsc.a	%a3, %a7, %d15, 0
	st.b	[%a3]0, %d2
	j	.L93
.LVL170:
.L99:
	.loc 1 383 0
	jeq	%d8, 4, .L97
.LVL171:
.LBB394:
.LBB378:
	.loc 2 898 0 discriminator 2
	ld.w	%d15, [%SP] 4
	st.w	[%a6]0, %d15
.LVL172:
.LBE378:
.LBE394:
.LBB395:
.LBB396:
	.loc 2 597 0 discriminator 2
	ld.w	%d15, [%a15] 140
.LBE396:
.LBE395:
	.loc 1 336 0 discriminator 2
	add	%d3, 4
.LVL173:
.LBB398:
.LBB397:
	.loc 2 597 0 discriminator 2
	or	%d15, %d15, 1
	st.w	[%a15] 140, %d15
.LVL174:
.LBE397:
.LBE398:
.LBB399:
.LBB400:
	.loc 2 609 0 discriminator 2
	ld.w	%d15, [%a15] 140
	or	%d15, %d15, 2
	st.w	[%a15] 140, %d15
.LVL175:
.LBE400:
.LBE399:
.LBB401:
.LBB402:
	.loc 2 591 0 discriminator 2
	ld.w	%d15, [%a15] 140
	or	%d15, %d15, 4
	st.w	[%a15] 140, %d15
.LVL176:
.LBE402:
.LBE401:
.LBB403:
.LBB404:
	.loc 2 579 0 discriminator 2
	ld.w	%d15, [%a15] 140
	or	%d15, %d15, 8
	st.w	[%a15] 140, %d15
.LBE404:
.LBE403:
	.loc 1 336 0 discriminator 2
	jge.u	%d3, %d1, .L98
	.loc 1 338 0
	jge	%d4, 4, .L143
.LVL177:
.L89:
	.loc 1 349 0
	st.w	[%SP] 4, %d9
	.loc 1 345 0
	mov	%d2, %d4
.LVL178:
	.loc 1 351 0
	jz	%d4, .L100
	.loc 1 346 0
	mov	%d4, 0
	j	.L90
.LBE355:
.LFE264:
	.size	IfxI2c_I2c_write, .-IfxI2c_I2c_write
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
	.uaword	.LFB259
	.uaword	.LFE259-.LFB259
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB260
	.uaword	.LFE260-.LFB260
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB261
	.uaword	.LFE261-.LFB261
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB262
	.uaword	.LFE262-.LFB262
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB263
	.uaword	.LFE263-.LFB263
	.byte	0x4
	.uaword	.LCFI0-.LFB263
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB264
	.uaword	.LFE264-.LFB264
	.byte	0x4
	.uaword	.LCFI1-.LFB264
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE10:
.section .text,"ax",@progbits
.Letext0:
	.file 5 "./0_Src/4_McHal/Tricore/Cpu/Std/Platform_Types.h"
	.file 6 "./0_Src/4_McHal/Tricore/Cpu/Std/Ifx_Types.h"
	.file 7 "./0_Src/4_McHal/Tricore/_Reg/IfxCpu_regdef.h"
	.file 8 "./0_Src/4_McHal/Tricore/_Reg/IfxPort_regdef.h"
	.file 9 "./0_Src/4_McHal/Tricore/Port/Std/IfxPort.h"
	.file 10 "./0_Src/4_McHal/Tricore/_Reg/IfxI2c_regdef.h"
	.file 11 "./0_Src/4_McHal/Tricore/_PinMap/IfxI2c_PinMap.h"
	.file 12 "0_Src/4_McHal/Tricore/I2c/I2c/IfxI2c_I2c.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x61af
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9."
	.string	"4 build on 2018-04-18 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -msmall-const=8 -mtc161 -g -g -O2 -fno-common -fno-short-enums -fsingle-precision-constant -fstrict-volatile-bitfields"
	.byte	0x1
	.string	"0_Src/4_McHal/Tricore/I2c/I2c/IfxI2c_I2c.c"
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
	.byte	0x5
	.byte	0x59
	.uaword	0x1d4
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x3
	.string	"sint16"
	.byte	0x5
	.byte	0x5a
	.uaword	0x1f3
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"sint32"
	.byte	0x5
	.byte	0x5c
	.uaword	0x190
	.uleb128 0x3
	.string	"uint32"
	.byte	0x5
	.byte	0x5d
	.uaword	0x19c
	.uleb128 0x3
	.string	"float32"
	.byte	0x5
	.byte	0x5e
	.uaword	0x241
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
	.byte	0x5
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
	.string	"Ifx_SizeT"
	.byte	0x6
	.byte	0x38
	.uaword	0x1e5
	.uleb128 0x4
	.byte	0x4
	.byte	0x6
	.byte	0x5f
	.uaword	0x320
	.uleb128 0x5
	.string	"Ifx_RxSel_a"
	.sleb128 0
	.uleb128 0x5
	.string	"Ifx_RxSel_b"
	.sleb128 1
	.uleb128 0x5
	.string	"Ifx_RxSel_c"
	.sleb128 2
	.uleb128 0x5
	.string	"Ifx_RxSel_d"
	.sleb128 3
	.uleb128 0x5
	.string	"Ifx_RxSel_e"
	.sleb128 4
	.uleb128 0x5
	.string	"Ifx_RxSel_f"
	.sleb128 5
	.uleb128 0x5
	.string	"Ifx_RxSel_g"
	.sleb128 6
	.uleb128 0x5
	.string	"Ifx_RxSel_h"
	.sleb128 7
	.byte	0
	.uleb128 0x3
	.string	"Ifx_RxSel"
	.byte	0x6
	.byte	0x68
	.uaword	0x2a7
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x6
	.uaword	0x1d4
	.uaword	0x351
	.uleb128 0x7
	.uaword	0x351
	.byte	0x7
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x6
	.uaword	0x1d4
	.uaword	0x36d
	.uleb128 0x7
	.uaword	0x351
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.uaword	0x1d4
	.uaword	0x37d
	.uleb128 0x7
	.uaword	0x351
	.byte	0xb
	.byte	0
	.uleb128 0x6
	.uaword	0x1d4
	.uaword	0x38d
	.uleb128 0x7
	.uaword	0x351
	.byte	0x1b
	.byte	0
	.uleb128 0x8
	.uaword	0x331
	.uleb128 0x9
	.string	"_Ifx_CPU_ICR_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x176
	.uaword	0x407
	.uleb128 0xa
	.string	"CCPN"
	.byte	0x7
	.uahalf	0x178
	.uaword	0x38d
	.byte	0x4
	.byte	0xa
	.byte	0x16
	.byte	0
	.uleb128 0xb
	.uaword	.LASF0
	.byte	0x7
	.uahalf	0x179
	.uaword	0x38d
	.byte	0x4
	.byte	0x5
	.byte	0x11
	.byte	0
	.uleb128 0xa
	.string	"IE"
	.byte	0x7
	.uahalf	0x17a
	.uaword	0x38d
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.string	"PIPN"
	.byte	0x7
	.uahalf	0x17b
	.uaword	0x38d
	.byte	0x4
	.byte	0xa
	.byte	0x6
	.byte	0
	.uleb128 0xa
	.string	"reserved_26"
	.byte	0x7
	.uahalf	0x17c
	.uaword	0x38d
	.byte	0x4
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_CPU_ICR_Bits"
	.byte	0x7
	.uahalf	0x17d
	.uaword	0x392
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x451
	.uaword	0x448
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x454
	.uaword	0x331
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x456
	.uaword	0x1b1
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x458
	.uaword	0x407
	.byte	0
	.uleb128 0xc
	.string	"Ifx_CPU_ICR"
	.byte	0x7
	.uahalf	0x459
	.uaword	0x420
	.uleb128 0x6
	.uaword	0x1d4
	.uaword	0x46c
	.uleb128 0x7
	.uaword	0x351
	.byte	0x17
	.byte	0
	.uleb128 0x6
	.uaword	0x1d4
	.uaword	0x47c
	.uleb128 0x7
	.uaword	0x351
	.byte	0xdf
	.byte	0
	.uleb128 0xf
	.string	"_Ifx_P_ACCEN0_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0x2d
	.uaword	0x68e
	.uleb128 0x10
	.string	"EN0"
	.byte	0x8
	.byte	0x2f
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.string	"EN1"
	.byte	0x8
	.byte	0x30
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x10
	.string	"EN2"
	.byte	0x8
	.byte	0x31
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.string	"EN3"
	.byte	0x8
	.byte	0x32
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x10
	.string	"EN4"
	.byte	0x8
	.byte	0x33
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x10
	.string	"EN5"
	.byte	0x8
	.byte	0x34
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x10
	.string	"EN6"
	.byte	0x8
	.byte	0x35
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x10
	.string	"EN7"
	.byte	0x8
	.byte	0x36
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.string	"EN8"
	.byte	0x8
	.byte	0x37
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x10
	.string	"EN9"
	.byte	0x8
	.byte	0x38
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x10
	.string	"EN10"
	.byte	0x8
	.byte	0x39
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x10
	.string	"EN11"
	.byte	0x8
	.byte	0x3a
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x10
	.string	"EN12"
	.byte	0x8
	.byte	0x3b
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x10
	.string	"EN13"
	.byte	0x8
	.byte	0x3c
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x10
	.string	"EN14"
	.byte	0x8
	.byte	0x3d
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x10
	.string	"EN15"
	.byte	0x8
	.byte	0x3e
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.string	"EN16"
	.byte	0x8
	.byte	0x3f
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x10
	.string	"EN17"
	.byte	0x8
	.byte	0x40
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0x10
	.string	"EN18"
	.byte	0x8
	.byte	0x41
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0x10
	.string	"EN19"
	.byte	0x8
	.byte	0x42
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x10
	.string	"EN20"
	.byte	0x8
	.byte	0x43
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0x10
	.string	"EN21"
	.byte	0x8
	.byte	0x44
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0x10
	.string	"EN22"
	.byte	0x8
	.byte	0x45
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0x10
	.string	"EN23"
	.byte	0x8
	.byte	0x46
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x10
	.string	"EN24"
	.byte	0x8
	.byte	0x47
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x10
	.string	"EN25"
	.byte	0x8
	.byte	0x48
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x10
	.string	"EN26"
	.byte	0x8
	.byte	0x49
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x10
	.string	"EN27"
	.byte	0x8
	.byte	0x4a
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.string	"EN28"
	.byte	0x8
	.byte	0x4b
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x10
	.string	"EN29"
	.byte	0x8
	.byte	0x4c
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x10
	.string	"EN30"
	.byte	0x8
	.byte	0x4d
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.string	"EN31"
	.byte	0x8
	.byte	0x4e
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_ACCEN0_Bits"
	.byte	0x8
	.byte	0x4f
	.uaword	0x47c
	.uleb128 0xf
	.string	"_Ifx_P_ACCEN1_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0x52
	.uaword	0x6d2
	.uleb128 0x11
	.uaword	.LASF1
	.byte	0x8
	.byte	0x54
	.uaword	0x331
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_ACCEN1_Bits"
	.byte	0x8
	.byte	0x55
	.uaword	0x6a7
	.uleb128 0xf
	.string	"_Ifx_P_ESR_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0x58
	.uaword	0x809
	.uleb128 0x10
	.string	"EN0"
	.byte	0x8
	.byte	0x5a
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.string	"EN1"
	.byte	0x8
	.byte	0x5b
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x10
	.string	"EN2"
	.byte	0x8
	.byte	0x5c
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.string	"EN3"
	.byte	0x8
	.byte	0x5d
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x10
	.string	"EN4"
	.byte	0x8
	.byte	0x5e
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x10
	.string	"EN5"
	.byte	0x8
	.byte	0x5f
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x10
	.string	"EN6"
	.byte	0x8
	.byte	0x60
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x10
	.string	"EN7"
	.byte	0x8
	.byte	0x61
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.string	"EN8"
	.byte	0x8
	.byte	0x62
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x10
	.string	"EN9"
	.byte	0x8
	.byte	0x63
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x10
	.string	"EN10"
	.byte	0x8
	.byte	0x64
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x10
	.string	"EN11"
	.byte	0x8
	.byte	0x65
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x10
	.string	"EN12"
	.byte	0x8
	.byte	0x66
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x10
	.string	"EN13"
	.byte	0x8
	.byte	0x67
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x10
	.string	"EN14"
	.byte	0x8
	.byte	0x68
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x10
	.string	"EN15"
	.byte	0x8
	.byte	0x69
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x11
	.uaword	.LASF2
	.byte	0x8
	.byte	0x6a
	.uaword	0x331
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_ESR_Bits"
	.byte	0x8
	.byte	0x6b
	.uaword	0x6eb
	.uleb128 0xf
	.string	"_Ifx_P_ID_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0x6e
	.uaword	0x86b
	.uleb128 0x10
	.string	"MODREV"
	.byte	0x8
	.byte	0x70
	.uaword	0x331
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.string	"MODTYPE"
	.byte	0x8
	.byte	0x71
	.uaword	0x331
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0x11
	.uaword	.LASF3
	.byte	0x8
	.byte	0x72
	.uaword	0x331
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_ID_Bits"
	.byte	0x8
	.byte	0x73
	.uaword	0x81f
	.uleb128 0xf
	.string	"_Ifx_P_IN_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0x76
	.uaword	0x98d
	.uleb128 0x10
	.string	"P0"
	.byte	0x8
	.byte	0x78
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.string	"P1"
	.byte	0x8
	.byte	0x79
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x10
	.string	"P2"
	.byte	0x8
	.byte	0x7a
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.string	"P3"
	.byte	0x8
	.byte	0x7b
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x10
	.string	"P4"
	.byte	0x8
	.byte	0x7c
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x10
	.string	"P5"
	.byte	0x8
	.byte	0x7d
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x10
	.string	"P6"
	.byte	0x8
	.byte	0x7e
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x10
	.string	"P7"
	.byte	0x8
	.byte	0x7f
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.string	"P8"
	.byte	0x8
	.byte	0x80
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x10
	.string	"P9"
	.byte	0x8
	.byte	0x81
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x10
	.string	"P10"
	.byte	0x8
	.byte	0x82
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x10
	.string	"P11"
	.byte	0x8
	.byte	0x83
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x10
	.string	"P12"
	.byte	0x8
	.byte	0x84
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x10
	.string	"P13"
	.byte	0x8
	.byte	0x85
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x10
	.string	"P14"
	.byte	0x8
	.byte	0x86
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x10
	.string	"P15"
	.byte	0x8
	.byte	0x87
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x11
	.uaword	.LASF2
	.byte	0x8
	.byte	0x88
	.uaword	0x331
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_IN_Bits"
	.byte	0x8
	.byte	0x89
	.uaword	0x880
	.uleb128 0xf
	.string	"_Ifx_P_IOCR0_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0x8c
	.uaword	0xa35
	.uleb128 0x11
	.uaword	.LASF1
	.byte	0x8
	.byte	0x8e
	.uaword	0x331
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.string	"PC0"
	.byte	0x8
	.byte	0x8f
	.uaword	0x331
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0
	.uleb128 0x11
	.uaword	.LASF4
	.byte	0x8
	.byte	0x90
	.uaword	0x331
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0x10
	.string	"PC1"
	.byte	0x8
	.byte	0x91
	.uaword	0x331
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0
	.uleb128 0x11
	.uaword	.LASF2
	.byte	0x8
	.byte	0x92
	.uaword	0x331
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0x10
	.string	"PC2"
	.byte	0x8
	.byte	0x93
	.uaword	0x331
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0
	.uleb128 0x11
	.uaword	.LASF5
	.byte	0x8
	.byte	0x94
	.uaword	0x331
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0x10
	.string	"PC3"
	.byte	0x8
	.byte	0x95
	.uaword	0x331
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_IOCR0_Bits"
	.byte	0x8
	.byte	0x96
	.uaword	0x9a2
	.uleb128 0xf
	.string	"_Ifx_P_IOCR12_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0x99
	.uaword	0xae5
	.uleb128 0x11
	.uaword	.LASF1
	.byte	0x8
	.byte	0x9b
	.uaword	0x331
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.string	"PC12"
	.byte	0x8
	.byte	0x9c
	.uaword	0x331
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0
	.uleb128 0x11
	.uaword	.LASF4
	.byte	0x8
	.byte	0x9d
	.uaword	0x331
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0x10
	.string	"PC13"
	.byte	0x8
	.byte	0x9e
	.uaword	0x331
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0
	.uleb128 0x11
	.uaword	.LASF2
	.byte	0x8
	.byte	0x9f
	.uaword	0x331
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0x10
	.string	"PC14"
	.byte	0x8
	.byte	0xa0
	.uaword	0x331
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0
	.uleb128 0x11
	.uaword	.LASF5
	.byte	0x8
	.byte	0xa1
	.uaword	0x331
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0x10
	.string	"PC15"
	.byte	0x8
	.byte	0xa2
	.uaword	0x331
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_IOCR12_Bits"
	.byte	0x8
	.byte	0xa3
	.uaword	0xa4d
	.uleb128 0xf
	.string	"_Ifx_P_IOCR4_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0xa6
	.uaword	0xb91
	.uleb128 0x11
	.uaword	.LASF1
	.byte	0x8
	.byte	0xa8
	.uaword	0x331
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.string	"PC4"
	.byte	0x8
	.byte	0xa9
	.uaword	0x331
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0
	.uleb128 0x11
	.uaword	.LASF4
	.byte	0x8
	.byte	0xaa
	.uaword	0x331
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0x10
	.string	"PC5"
	.byte	0x8
	.byte	0xab
	.uaword	0x331
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0
	.uleb128 0x11
	.uaword	.LASF2
	.byte	0x8
	.byte	0xac
	.uaword	0x331
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0x10
	.string	"PC6"
	.byte	0x8
	.byte	0xad
	.uaword	0x331
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0
	.uleb128 0x11
	.uaword	.LASF5
	.byte	0x8
	.byte	0xae
	.uaword	0x331
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0x10
	.string	"PC7"
	.byte	0x8
	.byte	0xaf
	.uaword	0x331
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_IOCR4_Bits"
	.byte	0x8
	.byte	0xb0
	.uaword	0xafe
	.uleb128 0xf
	.string	"_Ifx_P_IOCR8_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0xb3
	.uaword	0xc3e
	.uleb128 0x11
	.uaword	.LASF1
	.byte	0x8
	.byte	0xb5
	.uaword	0x331
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.string	"PC8"
	.byte	0x8
	.byte	0xb6
	.uaword	0x331
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0
	.uleb128 0x11
	.uaword	.LASF4
	.byte	0x8
	.byte	0xb7
	.uaword	0x331
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0x10
	.string	"PC9"
	.byte	0x8
	.byte	0xb8
	.uaword	0x331
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0
	.uleb128 0x11
	.uaword	.LASF2
	.byte	0x8
	.byte	0xb9
	.uaword	0x331
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0x10
	.string	"PC10"
	.byte	0x8
	.byte	0xba
	.uaword	0x331
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0
	.uleb128 0x11
	.uaword	.LASF5
	.byte	0x8
	.byte	0xbb
	.uaword	0x331
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0x10
	.string	"PC11"
	.byte	0x8
	.byte	0xbc
	.uaword	0x331
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_IOCR8_Bits"
	.byte	0x8
	.byte	0xbd
	.uaword	0xba9
	.uleb128 0xf
	.string	"_Ifx_P_LPCR0_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0xc0
	.uaword	0xc9e
	.uleb128 0x11
	.uaword	.LASF1
	.byte	0x8
	.byte	0xc2
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.string	"PS1"
	.byte	0x8
	.byte	0xc3
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x11
	.uaword	.LASF6
	.byte	0x8
	.byte	0xc4
	.uaword	0x331
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_LPCR0_Bits"
	.byte	0x8
	.byte	0xc5
	.uaword	0xc56
	.uleb128 0xf
	.string	"_Ifx_P_LPCR1_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0xc8
	.uaword	0xcfe
	.uleb128 0x11
	.uaword	.LASF1
	.byte	0x8
	.byte	0xca
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.string	"PS1"
	.byte	0x8
	.byte	0xcb
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x11
	.uaword	.LASF6
	.byte	0x8
	.byte	0xcc
	.uaword	0x331
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_LPCR1_Bits"
	.byte	0x8
	.byte	0xcd
	.uaword	0xcb6
	.uleb128 0xf
	.string	"_Ifx_P_LPCR1_P21_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0xd0
	.uaword	0xd8e
	.uleb128 0x10
	.string	"RDIS_CTRL"
	.byte	0x8
	.byte	0xd2
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.string	"RX_DIS"
	.byte	0x8
	.byte	0xd3
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x10
	.string	"TERM"
	.byte	0x8
	.byte	0xd4
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.string	"LRXTERM"
	.byte	0x8
	.byte	0xd5
	.uaword	0x331
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0
	.uleb128 0x11
	.uaword	.LASF4
	.byte	0x8
	.byte	0xd6
	.uaword	0x331
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_LPCR1_P21_Bits"
	.byte	0x8
	.byte	0xd7
	.uaword	0xd16
	.uleb128 0xf
	.string	"_Ifx_P_LPCR2_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0xda
	.uaword	0xe61
	.uleb128 0x11
	.uaword	.LASF1
	.byte	0x8
	.byte	0xdc
	.uaword	0x331
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.string	"LVDSR"
	.byte	0x8
	.byte	0xdd
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x10
	.string	"LVDSRL"
	.byte	0x8
	.byte	0xde
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x11
	.uaword	.LASF0
	.byte	0x8
	.byte	0xdf
	.uaword	0x331
	.byte	0x4
	.byte	0x2
	.byte	0x14
	.byte	0
	.uleb128 0x10
	.string	"TDIS_CTRL"
	.byte	0x8
	.byte	0xe0
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x10
	.string	"TX_DIS"
	.byte	0x8
	.byte	0xe1
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x10
	.string	"TX_PD"
	.byte	0x8
	.byte	0xe2
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x10
	.string	"TX_PWDPD"
	.byte	0x8
	.byte	0xe3
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x11
	.uaword	.LASF2
	.byte	0x8
	.byte	0xe4
	.uaword	0x331
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_LPCR2_Bits"
	.byte	0x8
	.byte	0xe5
	.uaword	0xdaa
	.uleb128 0xf
	.string	"_Ifx_P_OMCR0_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0xe8
	.uaword	0xef2
	.uleb128 0x11
	.uaword	.LASF1
	.byte	0x8
	.byte	0xea
	.uaword	0x331
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.string	"PCL0"
	.byte	0x8
	.byte	0xeb
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x10
	.string	"PCL1"
	.byte	0x8
	.byte	0xec
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0x10
	.string	"PCL2"
	.byte	0x8
	.byte	0xed
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0x10
	.string	"PCL3"
	.byte	0x8
	.byte	0xee
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x11
	.uaword	.LASF7
	.byte	0x8
	.byte	0xef
	.uaword	0x331
	.byte	0x4
	.byte	0xc
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_OMCR0_Bits"
	.byte	0x8
	.byte	0xf0
	.uaword	0xe79
	.uleb128 0xf
	.string	"_Ifx_P_OMCR12_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0xf3
	.uaword	0xf79
	.uleb128 0x11
	.uaword	.LASF1
	.byte	0x8
	.byte	0xf5
	.uaword	0x331
	.byte	0x4
	.byte	0x1c
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.string	"PCL12"
	.byte	0x8
	.byte	0xf6
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x10
	.string	"PCL13"
	.byte	0x8
	.byte	0xf7
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x10
	.string	"PCL14"
	.byte	0x8
	.byte	0xf8
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.string	"PCL15"
	.byte	0x8
	.byte	0xf9
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_OMCR12_Bits"
	.byte	0x8
	.byte	0xfa
	.uaword	0xf0a
	.uleb128 0xf
	.string	"_Ifx_P_OMCR4_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0xfd
	.uaword	0x1010
	.uleb128 0x11
	.uaword	.LASF1
	.byte	0x8
	.byte	0xff
	.uaword	0x331
	.byte	0x4
	.byte	0x14
	.byte	0xc
	.byte	0
	.uleb128 0xa
	.string	"PCL4"
	.byte	0x8
	.uahalf	0x100
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0xa
	.string	"PCL5"
	.byte	0x8
	.uahalf	0x101
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0xa
	.string	"PCL6"
	.byte	0x8
	.uahalf	0x102
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0xa
	.string	"PCL7"
	.byte	0x8
	.uahalf	0x103
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.uaword	.LASF5
	.byte	0x8
	.uahalf	0x104
	.uaword	0x331
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_P_OMCR4_Bits"
	.byte	0x8
	.uahalf	0x105
	.uaword	0xf92
	.uleb128 0x9
	.string	"_Ifx_P_OMCR8_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x108
	.uaword	0x10ab
	.uleb128 0xb
	.uaword	.LASF1
	.byte	0x8
	.uahalf	0x10a
	.uaword	0x331
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.string	"PCL8"
	.byte	0x8
	.uahalf	0x10b
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xa
	.string	"PCL9"
	.byte	0x8
	.uahalf	0x10c
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xa
	.string	"PCL10"
	.byte	0x8
	.uahalf	0x10d
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xa
	.string	"PCL11"
	.byte	0x8
	.uahalf	0x10e
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.uaword	.LASF8
	.byte	0x8
	.uahalf	0x10f
	.uaword	0x331
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_P_OMCR8_Bits"
	.byte	0x8
	.uahalf	0x110
	.uaword	0x1029
	.uleb128 0x9
	.string	"_Ifx_P_OMCR_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x113
	.uaword	0x1205
	.uleb128 0xb
	.uaword	.LASF1
	.byte	0x8
	.uahalf	0x115
	.uaword	0x331
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.string	"PCL0"
	.byte	0x8
	.uahalf	0x116
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xa
	.string	"PCL1"
	.byte	0x8
	.uahalf	0x117
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xa
	.string	"PCL2"
	.byte	0x8
	.uahalf	0x118
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xa
	.string	"PCL3"
	.byte	0x8
	.uahalf	0x119
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xa
	.string	"PCL4"
	.byte	0x8
	.uahalf	0x11a
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0xa
	.string	"PCL5"
	.byte	0x8
	.uahalf	0x11b
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0xa
	.string	"PCL6"
	.byte	0x8
	.uahalf	0x11c
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0xa
	.string	"PCL7"
	.byte	0x8
	.uahalf	0x11d
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.string	"PCL8"
	.byte	0x8
	.uahalf	0x11e
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xa
	.string	"PCL9"
	.byte	0x8
	.uahalf	0x11f
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xa
	.string	"PCL10"
	.byte	0x8
	.uahalf	0x120
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xa
	.string	"PCL11"
	.byte	0x8
	.uahalf	0x121
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.string	"PCL12"
	.byte	0x8
	.uahalf	0x122
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.string	"PCL13"
	.byte	0x8
	.uahalf	0x123
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xa
	.string	"PCL14"
	.byte	0x8
	.uahalf	0x124
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.string	"PCL15"
	.byte	0x8
	.uahalf	0x125
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_P_OMCR_Bits"
	.byte	0x8
	.uahalf	0x126
	.uaword	0x10c4
	.uleb128 0x9
	.string	"_Ifx_P_OMR_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x129
	.uaword	0x1453
	.uleb128 0xa
	.string	"PS0"
	.byte	0x8
	.uahalf	0x12b
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xa
	.string	"PS1"
	.byte	0x8
	.uahalf	0x12c
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xa
	.string	"PS2"
	.byte	0x8
	.uahalf	0x12d
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xa
	.string	"PS3"
	.byte	0x8
	.uahalf	0x12e
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xa
	.string	"PS4"
	.byte	0x8
	.uahalf	0x12f
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xa
	.string	"PS5"
	.byte	0x8
	.uahalf	0x130
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xa
	.string	"PS6"
	.byte	0x8
	.uahalf	0x131
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xa
	.string	"PS7"
	.byte	0x8
	.uahalf	0x132
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xa
	.string	"PS8"
	.byte	0x8
	.uahalf	0x133
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xa
	.string	"PS9"
	.byte	0x8
	.uahalf	0x134
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xa
	.string	"PS10"
	.byte	0x8
	.uahalf	0x135
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xa
	.string	"PS11"
	.byte	0x8
	.uahalf	0x136
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xa
	.string	"PS12"
	.byte	0x8
	.uahalf	0x137
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xa
	.string	"PS13"
	.byte	0x8
	.uahalf	0x138
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xa
	.string	"PS14"
	.byte	0x8
	.uahalf	0x139
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xa
	.string	"PS15"
	.byte	0x8
	.uahalf	0x13a
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.string	"PCL0"
	.byte	0x8
	.uahalf	0x13b
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xa
	.string	"PCL1"
	.byte	0x8
	.uahalf	0x13c
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xa
	.string	"PCL2"
	.byte	0x8
	.uahalf	0x13d
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xa
	.string	"PCL3"
	.byte	0x8
	.uahalf	0x13e
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xa
	.string	"PCL4"
	.byte	0x8
	.uahalf	0x13f
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0xa
	.string	"PCL5"
	.byte	0x8
	.uahalf	0x140
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0xa
	.string	"PCL6"
	.byte	0x8
	.uahalf	0x141
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0xa
	.string	"PCL7"
	.byte	0x8
	.uahalf	0x142
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.string	"PCL8"
	.byte	0x8
	.uahalf	0x143
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xa
	.string	"PCL9"
	.byte	0x8
	.uahalf	0x144
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xa
	.string	"PCL10"
	.byte	0x8
	.uahalf	0x145
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xa
	.string	"PCL11"
	.byte	0x8
	.uahalf	0x146
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.string	"PCL12"
	.byte	0x8
	.uahalf	0x147
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.string	"PCL13"
	.byte	0x8
	.uahalf	0x148
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xa
	.string	"PCL14"
	.byte	0x8
	.uahalf	0x149
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.string	"PCL15"
	.byte	0x8
	.uahalf	0x14a
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_P_OMR_Bits"
	.byte	0x8
	.uahalf	0x14b
	.uaword	0x121d
	.uleb128 0x9
	.string	"_Ifx_P_OMSR0_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x14e
	.uaword	0x14d6
	.uleb128 0xa
	.string	"PS0"
	.byte	0x8
	.uahalf	0x150
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xa
	.string	"PS1"
	.byte	0x8
	.uahalf	0x151
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xa
	.string	"PS2"
	.byte	0x8
	.uahalf	0x152
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xa
	.string	"PS3"
	.byte	0x8
	.uahalf	0x153
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xb
	.uaword	.LASF9
	.byte	0x8
	.uahalf	0x154
	.uaword	0x331
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_P_OMSR0_Bits"
	.byte	0x8
	.uahalf	0x155
	.uaword	0x146a
	.uleb128 0x9
	.string	"_Ifx_P_OMSR12_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x158
	.uaword	0x1570
	.uleb128 0xb
	.uaword	.LASF1
	.byte	0x8
	.uahalf	0x15a
	.uaword	0x331
	.byte	0x4
	.byte	0xc
	.byte	0x14
	.byte	0
	.uleb128 0xa
	.string	"PS12"
	.byte	0x8
	.uahalf	0x15b
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xa
	.string	"PS13"
	.byte	0x8
	.uahalf	0x15c
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xa
	.string	"PS14"
	.byte	0x8
	.uahalf	0x15d
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xa
	.string	"PS15"
	.byte	0x8
	.uahalf	0x15e
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.uaword	.LASF2
	.byte	0x8
	.uahalf	0x15f
	.uaword	0x331
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_P_OMSR12_Bits"
	.byte	0x8
	.uahalf	0x160
	.uaword	0x14ef
	.uleb128 0x9
	.string	"_Ifx_P_OMSR4_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x163
	.uaword	0x1606
	.uleb128 0xb
	.uaword	.LASF1
	.byte	0x8
	.uahalf	0x165
	.uaword	0x331
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0xa
	.string	"PS4"
	.byte	0x8
	.uahalf	0x166
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xa
	.string	"PS5"
	.byte	0x8
	.uahalf	0x167
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xa
	.string	"PS6"
	.byte	0x8
	.uahalf	0x168
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xa
	.string	"PS7"
	.byte	0x8
	.uahalf	0x169
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.uaword	.LASF4
	.byte	0x8
	.uahalf	0x16a
	.uaword	0x331
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_P_OMSR4_Bits"
	.byte	0x8
	.uahalf	0x16b
	.uaword	0x158a
	.uleb128 0x9
	.string	"_Ifx_P_OMSR8_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x16e
	.uaword	0x169d
	.uleb128 0xb
	.uaword	.LASF1
	.byte	0x8
	.uahalf	0x170
	.uaword	0x331
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xa
	.string	"PS8"
	.byte	0x8
	.uahalf	0x171
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xa
	.string	"PS9"
	.byte	0x8
	.uahalf	0x172
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xa
	.string	"PS10"
	.byte	0x8
	.uahalf	0x173
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xa
	.string	"PS11"
	.byte	0x8
	.uahalf	0x174
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xb
	.uaword	.LASF10
	.byte	0x8
	.uahalf	0x175
	.uaword	0x331
	.byte	0x4
	.byte	0x14
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_P_OMSR8_Bits"
	.byte	0x8
	.uahalf	0x176
	.uaword	0x161f
	.uleb128 0x9
	.string	"_Ifx_P_OMSR_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x179
	.uaword	0x17e7
	.uleb128 0xa
	.string	"PS0"
	.byte	0x8
	.uahalf	0x17b
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xa
	.string	"PS1"
	.byte	0x8
	.uahalf	0x17c
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xa
	.string	"PS2"
	.byte	0x8
	.uahalf	0x17d
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xa
	.string	"PS3"
	.byte	0x8
	.uahalf	0x17e
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xa
	.string	"PS4"
	.byte	0x8
	.uahalf	0x17f
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xa
	.string	"PS5"
	.byte	0x8
	.uahalf	0x180
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xa
	.string	"PS6"
	.byte	0x8
	.uahalf	0x181
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xa
	.string	"PS7"
	.byte	0x8
	.uahalf	0x182
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xa
	.string	"PS8"
	.byte	0x8
	.uahalf	0x183
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xa
	.string	"PS9"
	.byte	0x8
	.uahalf	0x184
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xa
	.string	"PS10"
	.byte	0x8
	.uahalf	0x185
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xa
	.string	"PS11"
	.byte	0x8
	.uahalf	0x186
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xa
	.string	"PS12"
	.byte	0x8
	.uahalf	0x187
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xa
	.string	"PS13"
	.byte	0x8
	.uahalf	0x188
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xa
	.string	"PS14"
	.byte	0x8
	.uahalf	0x189
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xa
	.string	"PS15"
	.byte	0x8
	.uahalf	0x18a
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.uaword	.LASF2
	.byte	0x8
	.uahalf	0x18b
	.uaword	0x331
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_P_OMSR_Bits"
	.byte	0x8
	.uahalf	0x18c
	.uaword	0x16b6
	.uleb128 0x9
	.string	"_Ifx_P_OUT_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x18f
	.uaword	0x191f
	.uleb128 0xa
	.string	"P0"
	.byte	0x8
	.uahalf	0x191
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xa
	.string	"P1"
	.byte	0x8
	.uahalf	0x192
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xa
	.string	"P2"
	.byte	0x8
	.uahalf	0x193
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xa
	.string	"P3"
	.byte	0x8
	.uahalf	0x194
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xa
	.string	"P4"
	.byte	0x8
	.uahalf	0x195
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xa
	.string	"P5"
	.byte	0x8
	.uahalf	0x196
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xa
	.string	"P6"
	.byte	0x8
	.uahalf	0x197
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xa
	.string	"P7"
	.byte	0x8
	.uahalf	0x198
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xa
	.string	"P8"
	.byte	0x8
	.uahalf	0x199
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xa
	.string	"P9"
	.byte	0x8
	.uahalf	0x19a
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xa
	.string	"P10"
	.byte	0x8
	.uahalf	0x19b
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xa
	.string	"P11"
	.byte	0x8
	.uahalf	0x19c
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xa
	.string	"P12"
	.byte	0x8
	.uahalf	0x19d
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xa
	.string	"P13"
	.byte	0x8
	.uahalf	0x19e
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xa
	.string	"P14"
	.byte	0x8
	.uahalf	0x19f
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xa
	.string	"P15"
	.byte	0x8
	.uahalf	0x1a0
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.uaword	.LASF2
	.byte	0x8
	.uahalf	0x1a1
	.uaword	0x331
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_P_OUT_Bits"
	.byte	0x8
	.uahalf	0x1a2
	.uaword	0x17ff
	.uleb128 0x9
	.string	"_Ifx_P_PCSR_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x1a5
	.uaword	0x1a1c
	.uleb128 0xa
	.string	"SEL0"
	.byte	0x8
	.uahalf	0x1a7
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xa
	.string	"SEL1"
	.byte	0x8
	.uahalf	0x1a8
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xa
	.string	"SEL2"
	.byte	0x8
	.uahalf	0x1a9
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xa
	.string	"SEL3"
	.byte	0x8
	.uahalf	0x1aa
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xa
	.string	"SEL4"
	.byte	0x8
	.uahalf	0x1ab
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xa
	.string	"SEL5"
	.byte	0x8
	.uahalf	0x1ac
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xa
	.string	"SEL6"
	.byte	0x8
	.uahalf	0x1ad
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xb
	.uaword	.LASF11
	.byte	0x8
	.uahalf	0x1ae
	.uaword	0x331
	.byte	0x4
	.byte	0x3
	.byte	0x16
	.byte	0
	.uleb128 0xa
	.string	"SEL10"
	.byte	0x8
	.uahalf	0x1af
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xa
	.string	"SEL11"
	.byte	0x8
	.uahalf	0x1b0
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xb
	.uaword	.LASF10
	.byte	0x8
	.uahalf	0x1b1
	.uaword	0x331
	.byte	0x4
	.byte	0x13
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.string	"LCK"
	.byte	0x8
	.uahalf	0x1b2
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_P_PCSR_Bits"
	.byte	0x8
	.uahalf	0x1b3
	.uaword	0x1936
	.uleb128 0x9
	.string	"_Ifx_P_PDISC_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x1b6
	.uaword	0x1b86
	.uleb128 0xa
	.string	"PDIS0"
	.byte	0x8
	.uahalf	0x1b8
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xa
	.string	"PDIS1"
	.byte	0x8
	.uahalf	0x1b9
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xa
	.string	"PDIS2"
	.byte	0x8
	.uahalf	0x1ba
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xa
	.string	"PDIS3"
	.byte	0x8
	.uahalf	0x1bb
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xa
	.string	"PDIS4"
	.byte	0x8
	.uahalf	0x1bc
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xa
	.string	"PDIS5"
	.byte	0x8
	.uahalf	0x1bd
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xa
	.string	"PDIS6"
	.byte	0x8
	.uahalf	0x1be
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xa
	.string	"PDIS7"
	.byte	0x8
	.uahalf	0x1bf
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xa
	.string	"PDIS8"
	.byte	0x8
	.uahalf	0x1c0
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xa
	.string	"PDIS9"
	.byte	0x8
	.uahalf	0x1c1
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xa
	.string	"PDIS10"
	.byte	0x8
	.uahalf	0x1c2
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xa
	.string	"PDIS11"
	.byte	0x8
	.uahalf	0x1c3
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xa
	.string	"PDIS12"
	.byte	0x8
	.uahalf	0x1c4
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xa
	.string	"PDIS13"
	.byte	0x8
	.uahalf	0x1c5
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xa
	.string	"PDIS14"
	.byte	0x8
	.uahalf	0x1c6
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xa
	.string	"PDIS15"
	.byte	0x8
	.uahalf	0x1c7
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.uaword	.LASF2
	.byte	0x8
	.uahalf	0x1c8
	.uaword	0x331
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_P_PDISC_Bits"
	.byte	0x8
	.uahalf	0x1c9
	.uaword	0x1a34
	.uleb128 0x9
	.string	"_Ifx_P_PDR0_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x1cc
	.uaword	0x1cba
	.uleb128 0xa
	.string	"PD0"
	.byte	0x8
	.uahalf	0x1ce
	.uaword	0x331
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0xa
	.string	"PL0"
	.byte	0x8
	.uahalf	0x1cf
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xa
	.string	"PD1"
	.byte	0x8
	.uahalf	0x1d0
	.uaword	0x331
	.byte	0x4
	.byte	0x3
	.byte	0x19
	.byte	0
	.uleb128 0xa
	.string	"PL1"
	.byte	0x8
	.uahalf	0x1d1
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xa
	.string	"PD2"
	.byte	0x8
	.uahalf	0x1d2
	.uaword	0x331
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0xa
	.string	"PL2"
	.byte	0x8
	.uahalf	0x1d3
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xa
	.string	"PD3"
	.byte	0x8
	.uahalf	0x1d4
	.uaword	0x331
	.byte	0x4
	.byte	0x3
	.byte	0x11
	.byte	0
	.uleb128 0xa
	.string	"PL3"
	.byte	0x8
	.uahalf	0x1d5
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.string	"PD4"
	.byte	0x8
	.uahalf	0x1d6
	.uaword	0x331
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0xa
	.string	"PL4"
	.byte	0x8
	.uahalf	0x1d7
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xa
	.string	"PD5"
	.byte	0x8
	.uahalf	0x1d8
	.uaword	0x331
	.byte	0x4
	.byte	0x3
	.byte	0x9
	.byte	0
	.uleb128 0xa
	.string	"PL5"
	.byte	0x8
	.uahalf	0x1d9
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.string	"PD6"
	.byte	0x8
	.uahalf	0x1da
	.uaword	0x331
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0xa
	.string	"PL6"
	.byte	0x8
	.uahalf	0x1db
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.string	"PD7"
	.byte	0x8
	.uahalf	0x1dc
	.uaword	0x331
	.byte	0x4
	.byte	0x3
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.string	"PL7"
	.byte	0x8
	.uahalf	0x1dd
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_P_PDR0_Bits"
	.byte	0x8
	.uahalf	0x1de
	.uaword	0x1b9f
	.uleb128 0x9
	.string	"_Ifx_P_PDR1_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x1e1
	.uaword	0x1df9
	.uleb128 0xa
	.string	"PD8"
	.byte	0x8
	.uahalf	0x1e3
	.uaword	0x331
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0xa
	.string	"PL8"
	.byte	0x8
	.uahalf	0x1e4
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xa
	.string	"PD9"
	.byte	0x8
	.uahalf	0x1e5
	.uaword	0x331
	.byte	0x4
	.byte	0x3
	.byte	0x19
	.byte	0
	.uleb128 0xa
	.string	"PL9"
	.byte	0x8
	.uahalf	0x1e6
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xa
	.string	"PD10"
	.byte	0x8
	.uahalf	0x1e7
	.uaword	0x331
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0xa
	.string	"PL10"
	.byte	0x8
	.uahalf	0x1e8
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xa
	.string	"PD11"
	.byte	0x8
	.uahalf	0x1e9
	.uaword	0x331
	.byte	0x4
	.byte	0x3
	.byte	0x11
	.byte	0
	.uleb128 0xa
	.string	"PL11"
	.byte	0x8
	.uahalf	0x1ea
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.string	"PD12"
	.byte	0x8
	.uahalf	0x1eb
	.uaword	0x331
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0xa
	.string	"PL12"
	.byte	0x8
	.uahalf	0x1ec
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xa
	.string	"PD13"
	.byte	0x8
	.uahalf	0x1ed
	.uaword	0x331
	.byte	0x4
	.byte	0x3
	.byte	0x9
	.byte	0
	.uleb128 0xa
	.string	"PL13"
	.byte	0x8
	.uahalf	0x1ee
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.string	"PD14"
	.byte	0x8
	.uahalf	0x1ef
	.uaword	0x331
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0xa
	.string	"PL14"
	.byte	0x8
	.uahalf	0x1f0
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.string	"PD15"
	.byte	0x8
	.uahalf	0x1f1
	.uaword	0x331
	.byte	0x4
	.byte	0x3
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.string	"PL15"
	.byte	0x8
	.uahalf	0x1f2
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_P_PDR1_Bits"
	.byte	0x8
	.uahalf	0x1f3
	.uaword	0x1cd2
	.uleb128 0xd
	.byte	0x4
	.byte	0x8
	.uahalf	0x1fb
	.uaword	0x1e39
	.uleb128 0xe
	.string	"U"
	.byte	0x8
	.uahalf	0x1fe
	.uaword	0x331
	.uleb128 0xe
	.string	"I"
	.byte	0x8
	.uahalf	0x200
	.uaword	0x1b1
	.uleb128 0xe
	.string	"B"
	.byte	0x8
	.uahalf	0x202
	.uaword	0x68e
	.byte	0
	.uleb128 0xc
	.string	"Ifx_P_ACCEN0"
	.byte	0x8
	.uahalf	0x203
	.uaword	0x1e11
	.uleb128 0xd
	.byte	0x4
	.byte	0x8
	.uahalf	0x206
	.uaword	0x1e76
	.uleb128 0xe
	.string	"U"
	.byte	0x8
	.uahalf	0x209
	.uaword	0x331
	.uleb128 0xe
	.string	"I"
	.byte	0x8
	.uahalf	0x20b
	.uaword	0x1b1
	.uleb128 0xe
	.string	"B"
	.byte	0x8
	.uahalf	0x20d
	.uaword	0x6d2
	.byte	0
	.uleb128 0xc
	.string	"Ifx_P_ACCEN1"
	.byte	0x8
	.uahalf	0x20e
	.uaword	0x1e4e
	.uleb128 0xd
	.byte	0x4
	.byte	0x8
	.uahalf	0x211
	.uaword	0x1eb3
	.uleb128 0xe
	.string	"U"
	.byte	0x8
	.uahalf	0x214
	.uaword	0x331
	.uleb128 0xe
	.string	"I"
	.byte	0x8
	.uahalf	0x216
	.uaword	0x1b1
	.uleb128 0xe
	.string	"B"
	.byte	0x8
	.uahalf	0x218
	.uaword	0x809
	.byte	0
	.uleb128 0xc
	.string	"Ifx_P_ESR"
	.byte	0x8
	.uahalf	0x219
	.uaword	0x1e8b
	.uleb128 0xd
	.byte	0x4
	.byte	0x8
	.uahalf	0x21c
	.uaword	0x1eed
	.uleb128 0xe
	.string	"U"
	.byte	0x8
	.uahalf	0x21f
	.uaword	0x331
	.uleb128 0xe
	.string	"I"
	.byte	0x8
	.uahalf	0x221
	.uaword	0x1b1
	.uleb128 0xe
	.string	"B"
	.byte	0x8
	.uahalf	0x223
	.uaword	0x86b
	.byte	0
	.uleb128 0xc
	.string	"Ifx_P_ID"
	.byte	0x8
	.uahalf	0x224
	.uaword	0x1ec5
	.uleb128 0xd
	.byte	0x4
	.byte	0x8
	.uahalf	0x227
	.uaword	0x1f26
	.uleb128 0xe
	.string	"U"
	.byte	0x8
	.uahalf	0x22a
	.uaword	0x331
	.uleb128 0xe
	.string	"I"
	.byte	0x8
	.uahalf	0x22c
	.uaword	0x1b1
	.uleb128 0xe
	.string	"B"
	.byte	0x8
	.uahalf	0x22e
	.uaword	0x98d
	.byte	0
	.uleb128 0xc
	.string	"Ifx_P_IN"
	.byte	0x8
	.uahalf	0x22f
	.uaword	0x1efe
	.uleb128 0xd
	.byte	0x4
	.byte	0x8
	.uahalf	0x232
	.uaword	0x1f5f
	.uleb128 0xe
	.string	"U"
	.byte	0x8
	.uahalf	0x235
	.uaword	0x331
	.uleb128 0xe
	.string	"I"
	.byte	0x8
	.uahalf	0x237
	.uaword	0x1b1
	.uleb128 0xe
	.string	"B"
	.byte	0x8
	.uahalf	0x239
	.uaword	0xa35
	.byte	0
	.uleb128 0xc
	.string	"Ifx_P_IOCR0"
	.byte	0x8
	.uahalf	0x23a
	.uaword	0x1f37
	.uleb128 0xd
	.byte	0x4
	.byte	0x8
	.uahalf	0x23d
	.uaword	0x1f9b
	.uleb128 0xe
	.string	"U"
	.byte	0x8
	.uahalf	0x240
	.uaword	0x331
	.uleb128 0xe
	.string	"I"
	.byte	0x8
	.uahalf	0x242
	.uaword	0x1b1
	.uleb128 0xe
	.string	"B"
	.byte	0x8
	.uahalf	0x244
	.uaword	0xae5
	.byte	0
	.uleb128 0xc
	.string	"Ifx_P_IOCR12"
	.byte	0x8
	.uahalf	0x245
	.uaword	0x1f73
	.uleb128 0xd
	.byte	0x4
	.byte	0x8
	.uahalf	0x248
	.uaword	0x1fd8
	.uleb128 0xe
	.string	"U"
	.byte	0x8
	.uahalf	0x24b
	.uaword	0x331
	.uleb128 0xe
	.string	"I"
	.byte	0x8
	.uahalf	0x24d
	.uaword	0x1b1
	.uleb128 0xe
	.string	"B"
	.byte	0x8
	.uahalf	0x24f
	.uaword	0xb91
	.byte	0
	.uleb128 0xc
	.string	"Ifx_P_IOCR4"
	.byte	0x8
	.uahalf	0x250
	.uaword	0x1fb0
	.uleb128 0xd
	.byte	0x4
	.byte	0x8
	.uahalf	0x253
	.uaword	0x2014
	.uleb128 0xe
	.string	"U"
	.byte	0x8
	.uahalf	0x256
	.uaword	0x331
	.uleb128 0xe
	.string	"I"
	.byte	0x8
	.uahalf	0x258
	.uaword	0x1b1
	.uleb128 0xe
	.string	"B"
	.byte	0x8
	.uahalf	0x25a
	.uaword	0xc3e
	.byte	0
	.uleb128 0xc
	.string	"Ifx_P_IOCR8"
	.byte	0x8
	.uahalf	0x25b
	.uaword	0x1fec
	.uleb128 0xd
	.byte	0x4
	.byte	0x8
	.uahalf	0x25e
	.uaword	0x2050
	.uleb128 0xe
	.string	"U"
	.byte	0x8
	.uahalf	0x261
	.uaword	0x331
	.uleb128 0xe
	.string	"I"
	.byte	0x8
	.uahalf	0x263
	.uaword	0x1b1
	.uleb128 0xe
	.string	"B"
	.byte	0x8
	.uahalf	0x265
	.uaword	0xc9e
	.byte	0
	.uleb128 0xc
	.string	"Ifx_P_LPCR0"
	.byte	0x8
	.uahalf	0x266
	.uaword	0x2028
	.uleb128 0xd
	.byte	0x4
	.byte	0x8
	.uahalf	0x269
	.uaword	0x209a
	.uleb128 0xe
	.string	"U"
	.byte	0x8
	.uahalf	0x26c
	.uaword	0x331
	.uleb128 0xe
	.string	"I"
	.byte	0x8
	.uahalf	0x26e
	.uaword	0x1b1
	.uleb128 0xe
	.string	"B"
	.byte	0x8
	.uahalf	0x270
	.uaword	0xcfe
	.uleb128 0xe
	.string	"B_P21"
	.byte	0x8
	.uahalf	0x272
	.uaword	0xd8e
	.byte	0
	.uleb128 0xc
	.string	"Ifx_P_LPCR1"
	.byte	0x8
	.uahalf	0x273
	.uaword	0x2064
	.uleb128 0xd
	.byte	0x4
	.byte	0x8
	.uahalf	0x276
	.uaword	0x20d6
	.uleb128 0xe
	.string	"U"
	.byte	0x8
	.uahalf	0x279
	.uaword	0x331
	.uleb128 0xe
	.string	"I"
	.byte	0x8
	.uahalf	0x27b
	.uaword	0x1b1
	.uleb128 0xe
	.string	"B"
	.byte	0x8
	.uahalf	0x27d
	.uaword	0xe61
	.byte	0
	.uleb128 0xc
	.string	"Ifx_P_LPCR2"
	.byte	0x8
	.uahalf	0x27e
	.uaword	0x20ae
	.uleb128 0xd
	.byte	0x4
	.byte	0x8
	.uahalf	0x281
	.uaword	0x2112
	.uleb128 0xe
	.string	"U"
	.byte	0x8
	.uahalf	0x284
	.uaword	0x331
	.uleb128 0xe
	.string	"I"
	.byte	0x8
	.uahalf	0x286
	.uaword	0x1b1
	.uleb128 0xe
	.string	"B"
	.byte	0x8
	.uahalf	0x288
	.uaword	0x1205
	.byte	0
	.uleb128 0xc
	.string	"Ifx_P_OMCR"
	.byte	0x8
	.uahalf	0x289
	.uaword	0x20ea
	.uleb128 0xd
	.byte	0x4
	.byte	0x8
	.uahalf	0x28c
	.uaword	0x214d
	.uleb128 0xe
	.string	"U"
	.byte	0x8
	.uahalf	0x28f
	.uaword	0x331
	.uleb128 0xe
	.string	"I"
	.byte	0x8
	.uahalf	0x291
	.uaword	0x1b1
	.uleb128 0xe
	.string	"B"
	.byte	0x8
	.uahalf	0x293
	.uaword	0xef2
	.byte	0
	.uleb128 0xc
	.string	"Ifx_P_OMCR0"
	.byte	0x8
	.uahalf	0x294
	.uaword	0x2125
	.uleb128 0xd
	.byte	0x4
	.byte	0x8
	.uahalf	0x297
	.uaword	0x2189
	.uleb128 0xe
	.string	"U"
	.byte	0x8
	.uahalf	0x29a
	.uaword	0x331
	.uleb128 0xe
	.string	"I"
	.byte	0x8
	.uahalf	0x29c
	.uaword	0x1b1
	.uleb128 0xe
	.string	"B"
	.byte	0x8
	.uahalf	0x29e
	.uaword	0xf79
	.byte	0
	.uleb128 0xc
	.string	"Ifx_P_OMCR12"
	.byte	0x8
	.uahalf	0x29f
	.uaword	0x2161
	.uleb128 0xd
	.byte	0x4
	.byte	0x8
	.uahalf	0x2a2
	.uaword	0x21c6
	.uleb128 0xe
	.string	"U"
	.byte	0x8
	.uahalf	0x2a5
	.uaword	0x331
	.uleb128 0xe
	.string	"I"
	.byte	0x8
	.uahalf	0x2a7
	.uaword	0x1b1
	.uleb128 0xe
	.string	"B"
	.byte	0x8
	.uahalf	0x2a9
	.uaword	0x1010
	.byte	0
	.uleb128 0xc
	.string	"Ifx_P_OMCR4"
	.byte	0x8
	.uahalf	0x2aa
	.uaword	0x219e
	.uleb128 0xd
	.byte	0x4
	.byte	0x8
	.uahalf	0x2ad
	.uaword	0x2202
	.uleb128 0xe
	.string	"U"
	.byte	0x8
	.uahalf	0x2b0
	.uaword	0x331
	.uleb128 0xe
	.string	"I"
	.byte	0x8
	.uahalf	0x2b2
	.uaword	0x1b1
	.uleb128 0xe
	.string	"B"
	.byte	0x8
	.uahalf	0x2b4
	.uaword	0x10ab
	.byte	0
	.uleb128 0xc
	.string	"Ifx_P_OMCR8"
	.byte	0x8
	.uahalf	0x2b5
	.uaword	0x21da
	.uleb128 0xd
	.byte	0x4
	.byte	0x8
	.uahalf	0x2b8
	.uaword	0x223e
	.uleb128 0xe
	.string	"U"
	.byte	0x8
	.uahalf	0x2bb
	.uaword	0x331
	.uleb128 0xe
	.string	"I"
	.byte	0x8
	.uahalf	0x2bd
	.uaword	0x1b1
	.uleb128 0xe
	.string	"B"
	.byte	0x8
	.uahalf	0x2bf
	.uaword	0x1453
	.byte	0
	.uleb128 0xc
	.string	"Ifx_P_OMR"
	.byte	0x8
	.uahalf	0x2c0
	.uaword	0x2216
	.uleb128 0xd
	.byte	0x4
	.byte	0x8
	.uahalf	0x2c3
	.uaword	0x2278
	.uleb128 0xe
	.string	"U"
	.byte	0x8
	.uahalf	0x2c6
	.uaword	0x331
	.uleb128 0xe
	.string	"I"
	.byte	0x8
	.uahalf	0x2c8
	.uaword	0x1b1
	.uleb128 0xe
	.string	"B"
	.byte	0x8
	.uahalf	0x2ca
	.uaword	0x17e7
	.byte	0
	.uleb128 0xc
	.string	"Ifx_P_OMSR"
	.byte	0x8
	.uahalf	0x2cb
	.uaword	0x2250
	.uleb128 0xd
	.byte	0x4
	.byte	0x8
	.uahalf	0x2ce
	.uaword	0x22b3
	.uleb128 0xe
	.string	"U"
	.byte	0x8
	.uahalf	0x2d1
	.uaword	0x331
	.uleb128 0xe
	.string	"I"
	.byte	0x8
	.uahalf	0x2d3
	.uaword	0x1b1
	.uleb128 0xe
	.string	"B"
	.byte	0x8
	.uahalf	0x2d5
	.uaword	0x14d6
	.byte	0
	.uleb128 0xc
	.string	"Ifx_P_OMSR0"
	.byte	0x8
	.uahalf	0x2d6
	.uaword	0x228b
	.uleb128 0xd
	.byte	0x4
	.byte	0x8
	.uahalf	0x2d9
	.uaword	0x22ef
	.uleb128 0xe
	.string	"U"
	.byte	0x8
	.uahalf	0x2dc
	.uaword	0x331
	.uleb128 0xe
	.string	"I"
	.byte	0x8
	.uahalf	0x2de
	.uaword	0x1b1
	.uleb128 0xe
	.string	"B"
	.byte	0x8
	.uahalf	0x2e0
	.uaword	0x1570
	.byte	0
	.uleb128 0xc
	.string	"Ifx_P_OMSR12"
	.byte	0x8
	.uahalf	0x2e1
	.uaword	0x22c7
	.uleb128 0xd
	.byte	0x4
	.byte	0x8
	.uahalf	0x2e4
	.uaword	0x232c
	.uleb128 0xe
	.string	"U"
	.byte	0x8
	.uahalf	0x2e7
	.uaword	0x331
	.uleb128 0xe
	.string	"I"
	.byte	0x8
	.uahalf	0x2e9
	.uaword	0x1b1
	.uleb128 0xe
	.string	"B"
	.byte	0x8
	.uahalf	0x2eb
	.uaword	0x1606
	.byte	0
	.uleb128 0xc
	.string	"Ifx_P_OMSR4"
	.byte	0x8
	.uahalf	0x2ec
	.uaword	0x2304
	.uleb128 0xd
	.byte	0x4
	.byte	0x8
	.uahalf	0x2ef
	.uaword	0x2368
	.uleb128 0xe
	.string	"U"
	.byte	0x8
	.uahalf	0x2f2
	.uaword	0x331
	.uleb128 0xe
	.string	"I"
	.byte	0x8
	.uahalf	0x2f4
	.uaword	0x1b1
	.uleb128 0xe
	.string	"B"
	.byte	0x8
	.uahalf	0x2f6
	.uaword	0x169d
	.byte	0
	.uleb128 0xc
	.string	"Ifx_P_OMSR8"
	.byte	0x8
	.uahalf	0x2f7
	.uaword	0x2340
	.uleb128 0xd
	.byte	0x4
	.byte	0x8
	.uahalf	0x2fa
	.uaword	0x23a4
	.uleb128 0xe
	.string	"U"
	.byte	0x8
	.uahalf	0x2fd
	.uaword	0x331
	.uleb128 0xe
	.string	"I"
	.byte	0x8
	.uahalf	0x2ff
	.uaword	0x1b1
	.uleb128 0xe
	.string	"B"
	.byte	0x8
	.uahalf	0x301
	.uaword	0x191f
	.byte	0
	.uleb128 0xc
	.string	"Ifx_P_OUT"
	.byte	0x8
	.uahalf	0x302
	.uaword	0x237c
	.uleb128 0xd
	.byte	0x4
	.byte	0x8
	.uahalf	0x305
	.uaword	0x23de
	.uleb128 0xe
	.string	"U"
	.byte	0x8
	.uahalf	0x308
	.uaword	0x331
	.uleb128 0xe
	.string	"I"
	.byte	0x8
	.uahalf	0x30a
	.uaword	0x1b1
	.uleb128 0xe
	.string	"B"
	.byte	0x8
	.uahalf	0x30c
	.uaword	0x1a1c
	.byte	0
	.uleb128 0xc
	.string	"Ifx_P_PCSR"
	.byte	0x8
	.uahalf	0x30d
	.uaword	0x23b6
	.uleb128 0xd
	.byte	0x4
	.byte	0x8
	.uahalf	0x310
	.uaword	0x2419
	.uleb128 0xe
	.string	"U"
	.byte	0x8
	.uahalf	0x313
	.uaword	0x331
	.uleb128 0xe
	.string	"I"
	.byte	0x8
	.uahalf	0x315
	.uaword	0x1b1
	.uleb128 0xe
	.string	"B"
	.byte	0x8
	.uahalf	0x317
	.uaword	0x1b86
	.byte	0
	.uleb128 0xc
	.string	"Ifx_P_PDISC"
	.byte	0x8
	.uahalf	0x318
	.uaword	0x23f1
	.uleb128 0xd
	.byte	0x4
	.byte	0x8
	.uahalf	0x31b
	.uaword	0x2455
	.uleb128 0xe
	.string	"U"
	.byte	0x8
	.uahalf	0x31e
	.uaword	0x331
	.uleb128 0xe
	.string	"I"
	.byte	0x8
	.uahalf	0x320
	.uaword	0x1b1
	.uleb128 0xe
	.string	"B"
	.byte	0x8
	.uahalf	0x322
	.uaword	0x1cba
	.byte	0
	.uleb128 0xc
	.string	"Ifx_P_PDR0"
	.byte	0x8
	.uahalf	0x323
	.uaword	0x242d
	.uleb128 0xd
	.byte	0x4
	.byte	0x8
	.uahalf	0x326
	.uaword	0x2490
	.uleb128 0xe
	.string	"U"
	.byte	0x8
	.uahalf	0x329
	.uaword	0x331
	.uleb128 0xe
	.string	"I"
	.byte	0x8
	.uahalf	0x32b
	.uaword	0x1b1
	.uleb128 0xe
	.string	"B"
	.byte	0x8
	.uahalf	0x32d
	.uaword	0x1df9
	.byte	0
	.uleb128 0xc
	.string	"Ifx_P_PDR1"
	.byte	0x8
	.uahalf	0x32e
	.uaword	0x2468
	.uleb128 0x12
	.string	"_Ifx_P"
	.uahalf	0x100
	.byte	0x8
	.uahalf	0x339
	.uaword	0x26dd
	.uleb128 0x13
	.string	"OUT"
	.byte	0x8
	.uahalf	0x33b
	.uaword	0x23a4
	.byte	0
	.uleb128 0x13
	.string	"OMR"
	.byte	0x8
	.uahalf	0x33c
	.uaword	0x223e
	.byte	0x4
	.uleb128 0x13
	.string	"ID"
	.byte	0x8
	.uahalf	0x33d
	.uaword	0x1eed
	.byte	0x8
	.uleb128 0x14
	.uaword	.LASF12
	.byte	0x8
	.uahalf	0x33e
	.uaword	0x35d
	.byte	0xc
	.uleb128 0x13
	.string	"IOCR0"
	.byte	0x8
	.uahalf	0x33f
	.uaword	0x1f5f
	.byte	0x10
	.uleb128 0x13
	.string	"IOCR4"
	.byte	0x8
	.uahalf	0x340
	.uaword	0x1fd8
	.byte	0x14
	.uleb128 0x13
	.string	"IOCR8"
	.byte	0x8
	.uahalf	0x341
	.uaword	0x2014
	.byte	0x18
	.uleb128 0x13
	.string	"IOCR12"
	.byte	0x8
	.uahalf	0x342
	.uaword	0x1f9b
	.byte	0x1c
	.uleb128 0x14
	.uaword	.LASF7
	.byte	0x8
	.uahalf	0x343
	.uaword	0x35d
	.byte	0x20
	.uleb128 0x13
	.string	"IN"
	.byte	0x8
	.uahalf	0x344
	.uaword	0x1f26
	.byte	0x24
	.uleb128 0x14
	.uaword	.LASF8
	.byte	0x8
	.uahalf	0x345
	.uaword	0x45c
	.byte	0x28
	.uleb128 0x13
	.string	"PDR0"
	.byte	0x8
	.uahalf	0x346
	.uaword	0x2455
	.byte	0x40
	.uleb128 0x13
	.string	"PDR1"
	.byte	0x8
	.uahalf	0x347
	.uaword	0x2490
	.byte	0x44
	.uleb128 0x13
	.string	"reserved_48"
	.byte	0x8
	.uahalf	0x348
	.uaword	0x341
	.byte	0x48
	.uleb128 0x13
	.string	"ESR"
	.byte	0x8
	.uahalf	0x349
	.uaword	0x1eb3
	.byte	0x50
	.uleb128 0x13
	.string	"reserved_54"
	.byte	0x8
	.uahalf	0x34a
	.uaword	0x36d
	.byte	0x54
	.uleb128 0x13
	.string	"PDISC"
	.byte	0x8
	.uahalf	0x34b
	.uaword	0x2419
	.byte	0x60
	.uleb128 0x13
	.string	"PCSR"
	.byte	0x8
	.uahalf	0x34c
	.uaword	0x23de
	.byte	0x64
	.uleb128 0x13
	.string	"reserved_68"
	.byte	0x8
	.uahalf	0x34d
	.uaword	0x341
	.byte	0x68
	.uleb128 0x13
	.string	"OMSR0"
	.byte	0x8
	.uahalf	0x34e
	.uaword	0x22b3
	.byte	0x70
	.uleb128 0x13
	.string	"OMSR4"
	.byte	0x8
	.uahalf	0x34f
	.uaword	0x232c
	.byte	0x74
	.uleb128 0x13
	.string	"OMSR8"
	.byte	0x8
	.uahalf	0x350
	.uaword	0x2368
	.byte	0x78
	.uleb128 0x13
	.string	"OMSR12"
	.byte	0x8
	.uahalf	0x351
	.uaword	0x22ef
	.byte	0x7c
	.uleb128 0x13
	.string	"OMCR0"
	.byte	0x8
	.uahalf	0x352
	.uaword	0x214d
	.byte	0x80
	.uleb128 0x13
	.string	"OMCR4"
	.byte	0x8
	.uahalf	0x353
	.uaword	0x21c6
	.byte	0x84
	.uleb128 0x13
	.string	"OMCR8"
	.byte	0x8
	.uahalf	0x354
	.uaword	0x2202
	.byte	0x88
	.uleb128 0x13
	.string	"OMCR12"
	.byte	0x8
	.uahalf	0x355
	.uaword	0x2189
	.byte	0x8c
	.uleb128 0x13
	.string	"OMSR"
	.byte	0x8
	.uahalf	0x356
	.uaword	0x2278
	.byte	0x90
	.uleb128 0x13
	.string	"OMCR"
	.byte	0x8
	.uahalf	0x357
	.uaword	0x2112
	.byte	0x94
	.uleb128 0x13
	.string	"reserved_98"
	.byte	0x8
	.uahalf	0x358
	.uaword	0x341
	.byte	0x98
	.uleb128 0x13
	.string	"LPCR0"
	.byte	0x8
	.uahalf	0x359
	.uaword	0x2050
	.byte	0xa0
	.uleb128 0x13
	.string	"LPCR1"
	.byte	0x8
	.uahalf	0x35a
	.uaword	0x209a
	.byte	0xa4
	.uleb128 0x13
	.string	"LPCR2"
	.byte	0x8
	.uahalf	0x35b
	.uaword	0x20d6
	.byte	0xa8
	.uleb128 0x13
	.string	"reserved_A4"
	.byte	0x8
	.uahalf	0x35c
	.uaword	0x26dd
	.byte	0xac
	.uleb128 0x13
	.string	"ACCEN1"
	.byte	0x8
	.uahalf	0x35d
	.uaword	0x1e76
	.byte	0xf8
	.uleb128 0x13
	.string	"ACCEN0"
	.byte	0x8
	.uahalf	0x35e
	.uaword	0x1e39
	.byte	0xfc
	.byte	0
	.uleb128 0x6
	.uaword	0x1d4
	.uaword	0x26ed
	.uleb128 0x7
	.uaword	0x351
	.byte	0x4b
	.byte	0
	.uleb128 0xc
	.string	"Ifx_P"
	.byte	0x8
	.uahalf	0x35f
	.uaword	0x26fb
	.uleb128 0x8
	.uaword	0x24a3
	.uleb128 0x15
	.byte	0x4
	.uaword	0x26ed
	.uleb128 0x4
	.byte	0x4
	.byte	0x9
	.byte	0x65
	.uaword	0x27e2
	.uleb128 0x5
	.string	"IfxPort_OutputIdx_general"
	.sleb128 128
	.uleb128 0x5
	.string	"IfxPort_OutputIdx_alt1"
	.sleb128 136
	.uleb128 0x5
	.string	"IfxPort_OutputIdx_alt2"
	.sleb128 144
	.uleb128 0x5
	.string	"IfxPort_OutputIdx_alt3"
	.sleb128 152
	.uleb128 0x5
	.string	"IfxPort_OutputIdx_alt4"
	.sleb128 160
	.uleb128 0x5
	.string	"IfxPort_OutputIdx_alt5"
	.sleb128 168
	.uleb128 0x5
	.string	"IfxPort_OutputIdx_alt6"
	.sleb128 176
	.uleb128 0x5
	.string	"IfxPort_OutputIdx_alt7"
	.sleb128 184
	.byte	0
	.uleb128 0x3
	.string	"IfxPort_OutputIdx"
	.byte	0x9
	.byte	0x6e
	.uaword	0x2706
	.uleb128 0x4
	.byte	0x4
	.byte	0x9
	.byte	0x7d
	.uaword	0x299c
	.uleb128 0x5
	.string	"IfxPort_PadDriver_cmosAutomotiveSpeed1"
	.sleb128 0
	.uleb128 0x5
	.string	"IfxPort_PadDriver_cmosAutomotiveSpeed2"
	.sleb128 1
	.uleb128 0x5
	.string	"IfxPort_PadDriver_cmosAutomotiveSpeed3"
	.sleb128 2
	.uleb128 0x5
	.string	"IfxPort_PadDriver_cmosAutomotiveSpeed4"
	.sleb128 3
	.uleb128 0x5
	.string	"IfxPort_PadDriver_lvdsSpeed1"
	.sleb128 4
	.uleb128 0x5
	.string	"IfxPort_PadDriver_lvdsSpeed2"
	.sleb128 5
	.uleb128 0x5
	.string	"IfxPort_PadDriver_lvdsSpeed3"
	.sleb128 6
	.uleb128 0x5
	.string	"IfxPort_PadDriver_lvdsSpeed4"
	.sleb128 7
	.uleb128 0x5
	.string	"IfxPort_PadDriver_ttlSpeed1"
	.sleb128 8
	.uleb128 0x5
	.string	"IfxPort_PadDriver_ttlSpeed2"
	.sleb128 9
	.uleb128 0x5
	.string	"IfxPort_PadDriver_ttlSpeed3"
	.sleb128 10
	.uleb128 0x5
	.string	"IfxPort_PadDriver_ttlSpeed4"
	.sleb128 11
	.byte	0
	.uleb128 0x3
	.string	"IfxPort_PadDriver"
	.byte	0x9
	.byte	0x8a
	.uaword	0x27fb
	.uleb128 0x16
	.byte	0x8
	.byte	0x9
	.byte	0xaa
	.uaword	0x29dc
	.uleb128 0x17
	.string	"port"
	.byte	0x9
	.byte	0xac
	.uaword	0x2700
	.byte	0
	.uleb128 0x17
	.string	"pinIndex"
	.byte	0x9
	.byte	0xad
	.uaword	0x1c7
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.string	"IfxPort_Pin"
	.byte	0x9
	.byte	0xae
	.uaword	0x29b5
	.uleb128 0xf
	.string	"_Ifx_I2C_ACCEN0_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0x2d
	.uaword	0x2c03
	.uleb128 0x10
	.string	"EN0"
	.byte	0xa
	.byte	0x2f
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.string	"EN1"
	.byte	0xa
	.byte	0x30
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x10
	.string	"EN2"
	.byte	0xa
	.byte	0x31
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.string	"EN3"
	.byte	0xa
	.byte	0x32
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x10
	.string	"EN4"
	.byte	0xa
	.byte	0x33
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x10
	.string	"EN5"
	.byte	0xa
	.byte	0x34
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x10
	.string	"EN6"
	.byte	0xa
	.byte	0x35
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x10
	.string	"EN7"
	.byte	0xa
	.byte	0x36
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.string	"EN8"
	.byte	0xa
	.byte	0x37
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x10
	.string	"EN9"
	.byte	0xa
	.byte	0x38
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x10
	.string	"EN10"
	.byte	0xa
	.byte	0x39
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x10
	.string	"EN11"
	.byte	0xa
	.byte	0x3a
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x10
	.string	"EN12"
	.byte	0xa
	.byte	0x3b
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x10
	.string	"EN13"
	.byte	0xa
	.byte	0x3c
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x10
	.string	"EN14"
	.byte	0xa
	.byte	0x3d
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x10
	.string	"EN15"
	.byte	0xa
	.byte	0x3e
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.string	"EN16"
	.byte	0xa
	.byte	0x3f
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x10
	.string	"EN17"
	.byte	0xa
	.byte	0x40
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0x10
	.string	"EN18"
	.byte	0xa
	.byte	0x41
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0x10
	.string	"EN19"
	.byte	0xa
	.byte	0x42
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x10
	.string	"EN20"
	.byte	0xa
	.byte	0x43
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0x10
	.string	"EN21"
	.byte	0xa
	.byte	0x44
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0x10
	.string	"EN22"
	.byte	0xa
	.byte	0x45
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0x10
	.string	"EN23"
	.byte	0xa
	.byte	0x46
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x10
	.string	"EN24"
	.byte	0xa
	.byte	0x47
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x10
	.string	"EN25"
	.byte	0xa
	.byte	0x48
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x10
	.string	"EN26"
	.byte	0xa
	.byte	0x49
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x10
	.string	"EN27"
	.byte	0xa
	.byte	0x4a
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.string	"EN28"
	.byte	0xa
	.byte	0x4b
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x10
	.string	"EN29"
	.byte	0xa
	.byte	0x4c
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x10
	.string	"EN30"
	.byte	0xa
	.byte	0x4d
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.string	"EN31"
	.byte	0xa
	.byte	0x4e
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_I2C_ACCEN0_Bits"
	.byte	0xa
	.byte	0x4f
	.uaword	0x29ef
	.uleb128 0xf
	.string	"_Ifx_I2C_ACCEN1_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0x52
	.uaword	0x2c4b
	.uleb128 0x11
	.uaword	.LASF1
	.byte	0xa
	.byte	0x54
	.uaword	0x331
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_I2C_ACCEN1_Bits"
	.byte	0xa
	.byte	0x55
	.uaword	0x2c1e
	.uleb128 0xf
	.string	"_Ifx_I2C_ADDRCFG_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0x58
	.uaword	0x2d17
	.uleb128 0x10
	.string	"ADR"
	.byte	0xa
	.byte	0x5a
	.uaword	0x331
	.byte	0x4
	.byte	0xa
	.byte	0x16
	.byte	0
	.uleb128 0x11
	.uaword	.LASF0
	.byte	0xa
	.byte	0x5b
	.uaword	0x331
	.byte	0x4
	.byte	0x6
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.string	"TBAM"
	.byte	0xa
	.byte	0x5c
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x10
	.string	"GCE"
	.byte	0xa
	.byte	0x5d
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0x10
	.string	"MCE"
	.byte	0xa
	.byte	0x5e
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0x10
	.string	"MnS"
	.byte	0xa
	.byte	0x5f
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x10
	.string	"SONA"
	.byte	0xa
	.byte	0x60
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0x10
	.string	"SOPE"
	.byte	0xa
	.byte	0x61
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0x10
	.string	"reserved_22"
	.byte	0xa
	.byte	0x62
	.uaword	0x331
	.byte	0x4
	.byte	0xa
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_I2C_ADDRCFG_Bits"
	.byte	0xa
	.byte	0x63
	.uaword	0x2c66
	.uleb128 0xf
	.string	"_Ifx_I2C_BUSSTAT_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0x66
	.uaword	0x2d7e
	.uleb128 0x10
	.string	"BS"
	.byte	0xa
	.byte	0x68
	.uaword	0x331
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0
	.uleb128 0x10
	.string	"RnW"
	.byte	0xa
	.byte	0x69
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x11
	.uaword	.LASF13
	.byte	0xa
	.byte	0x6a
	.uaword	0x331
	.byte	0x4
	.byte	0x1d
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_I2C_BUSSTAT_Bits"
	.byte	0xa
	.byte	0x6b
	.uaword	0x2d33
	.uleb128 0xf
	.string	"_Ifx_I2C_CLC1_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0x6e
	.uaword	0x2e43
	.uleb128 0x10
	.string	"DISR"
	.byte	0xa
	.byte	0x70
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.string	"DISS"
	.byte	0xa
	.byte	0x71
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x10
	.string	"SPEN"
	.byte	0xa
	.byte	0x72
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.string	"EDIS"
	.byte	0xa
	.byte	0x73
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x10
	.string	"SBWE"
	.byte	0xa
	.byte	0x74
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x10
	.string	"FSOE"
	.byte	0xa
	.byte	0x75
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x11
	.uaword	.LASF14
	.byte	0xa
	.byte	0x76
	.uaword	0x331
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.string	"RMC"
	.byte	0xa
	.byte	0x77
	.uaword	0x331
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0x11
	.uaword	.LASF2
	.byte	0xa
	.byte	0x78
	.uaword	0x331
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_I2C_CLC1_Bits"
	.byte	0xa
	.byte	0x79
	.uaword	0x2d9a
	.uleb128 0xf
	.string	"_Ifx_I2C_CLC_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0x7c
	.uaword	0x2ea6
	.uleb128 0x10
	.string	"DISR"
	.byte	0xa
	.byte	0x7e
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.string	"DISS"
	.byte	0xa
	.byte	0x7f
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x11
	.uaword	.LASF6
	.byte	0xa
	.byte	0x80
	.uaword	0x331
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_I2C_CLC_Bits"
	.byte	0xa
	.byte	0x81
	.uaword	0x2e5c
	.uleb128 0xf
	.string	"_Ifx_I2C_ENDDCTRL_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0x84
	.uaword	0x2f11
	.uleb128 0x10
	.string	"SETRSC"
	.byte	0xa
	.byte	0x86
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.string	"SETEND"
	.byte	0xa
	.byte	0x87
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x11
	.uaword	.LASF6
	.byte	0xa
	.byte	0x88
	.uaword	0x331
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_I2C_ENDDCTRL_Bits"
	.byte	0xa
	.byte	0x89
	.uaword	0x2ebe
	.uleb128 0xf
	.string	"_Ifx_I2C_ERRIRQSC_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0x8c
	.uaword	0x2f99
	.uleb128 0x11
	.uaword	.LASF15
	.byte	0xa
	.byte	0x8e
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x11
	.uaword	.LASF16
	.byte	0xa
	.byte	0x8f
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x11
	.uaword	.LASF17
	.byte	0xa
	.byte	0x90
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x11
	.uaword	.LASF18
	.byte	0xa
	.byte	0x91
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x11
	.uaword	.LASF9
	.byte	0xa
	.byte	0x92
	.uaword	0x331
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_I2C_ERRIRQSC_Bits"
	.byte	0xa
	.byte	0x93
	.uaword	0x2f2e
	.uleb128 0xf
	.string	"_Ifx_I2C_ERRIRQSM_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0x96
	.uaword	0x3021
	.uleb128 0x11
	.uaword	.LASF15
	.byte	0xa
	.byte	0x98
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x11
	.uaword	.LASF16
	.byte	0xa
	.byte	0x99
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x11
	.uaword	.LASF17
	.byte	0xa
	.byte	0x9a
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x11
	.uaword	.LASF18
	.byte	0xa
	.byte	0x9b
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x11
	.uaword	.LASF9
	.byte	0xa
	.byte	0x9c
	.uaword	0x331
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_I2C_ERRIRQSM_Bits"
	.byte	0xa
	.byte	0x9d
	.uaword	0x2fb6
	.uleb128 0xf
	.string	"_Ifx_I2C_ERRIRQSS_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0xa0
	.uaword	0x30a9
	.uleb128 0x11
	.uaword	.LASF15
	.byte	0xa
	.byte	0xa2
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x11
	.uaword	.LASF16
	.byte	0xa
	.byte	0xa3
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x11
	.uaword	.LASF17
	.byte	0xa
	.byte	0xa4
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x11
	.uaword	.LASF18
	.byte	0xa
	.byte	0xa5
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x11
	.uaword	.LASF9
	.byte	0xa
	.byte	0xa6
	.uaword	0x331
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_I2C_ERRIRQSS_Bits"
	.byte	0xa
	.byte	0xa7
	.uaword	0x303e
	.uleb128 0xf
	.string	"_Ifx_I2C_FDIVCFG_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0xaa
	.uaword	0x3121
	.uleb128 0x10
	.string	"DEC"
	.byte	0xa
	.byte	0xac
	.uaword	0x331
	.byte	0x4
	.byte	0xb
	.byte	0x15
	.byte	0
	.uleb128 0x11
	.uaword	.LASF19
	.byte	0xa
	.byte	0xad
	.uaword	0x331
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.string	"INC"
	.byte	0xa
	.byte	0xae
	.uaword	0x331
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0x11
	.uaword	.LASF5
	.byte	0xa
	.byte	0xaf
	.uaword	0x331
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_I2C_FDIVCFG_Bits"
	.byte	0xa
	.byte	0xb0
	.uaword	0x30c6
	.uleb128 0xf
	.string	"_Ifx_I2C_FDIVHIGHCFG_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0xb3
	.uaword	0x319c
	.uleb128 0x10
	.string	"DEC"
	.byte	0xa
	.byte	0xb5
	.uaword	0x331
	.byte	0x4
	.byte	0xb
	.byte	0x15
	.byte	0
	.uleb128 0x11
	.uaword	.LASF19
	.byte	0xa
	.byte	0xb6
	.uaword	0x331
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.string	"INC"
	.byte	0xa
	.byte	0xb7
	.uaword	0x331
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0x11
	.uaword	.LASF5
	.byte	0xa
	.byte	0xb8
	.uaword	0x331
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_I2C_FDIVHIGHCFG_Bits"
	.byte	0xa
	.byte	0xb9
	.uaword	0x313d
	.uleb128 0xf
	.string	"_Ifx_I2C_FFSSTAT_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0xbc
	.uaword	0x31f9
	.uleb128 0x10
	.string	"FFS"
	.byte	0xa
	.byte	0xbe
	.uaword	0x331
	.byte	0x4
	.byte	0x6
	.byte	0x1a
	.byte	0
	.uleb128 0x11
	.uaword	.LASF14
	.byte	0xa
	.byte	0xbf
	.uaword	0x331
	.byte	0x4
	.byte	0x1a
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_I2C_FFSSTAT_Bits"
	.byte	0xa
	.byte	0xc0
	.uaword	0x31bc
	.uleb128 0xf
	.string	"_Ifx_I2C_FIFOCFG_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0xc3
	.uaword	0x32e7
	.uleb128 0x10
	.string	"RXBS"
	.byte	0xa
	.byte	0xc5
	.uaword	0x331
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0
	.uleb128 0x11
	.uaword	.LASF6
	.byte	0xa
	.byte	0xc6
	.uaword	0x331
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0
	.uleb128 0x10
	.string	"TXBS"
	.byte	0xa
	.byte	0xc7
	.uaword	0x331
	.byte	0x4
	.byte	0x2
	.byte	0x1a
	.byte	0
	.uleb128 0x11
	.uaword	.LASF14
	.byte	0xa
	.byte	0xc8
	.uaword	0x331
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.string	"RXFA"
	.byte	0xa
	.byte	0xc9
	.uaword	0x331
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0
	.uleb128 0x11
	.uaword	.LASF0
	.byte	0xa
	.byte	0xca
	.uaword	0x331
	.byte	0x4
	.byte	0x2
	.byte	0x14
	.byte	0
	.uleb128 0x10
	.string	"TXFA"
	.byte	0xa
	.byte	0xcb
	.uaword	0x331
	.byte	0x4
	.byte	0x2
	.byte	0x12
	.byte	0
	.uleb128 0x11
	.uaword	.LASF20
	.byte	0xa
	.byte	0xcc
	.uaword	0x331
	.byte	0x4
	.byte	0x2
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.string	"RXFC"
	.byte	0xa
	.byte	0xcd
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x10
	.string	"TXFC"
	.byte	0xa
	.byte	0xce
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0x10
	.string	"reserved_18"
	.byte	0xa
	.byte	0xcf
	.uaword	0x331
	.byte	0x4
	.byte	0xe
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_I2C_FIFOCFG_Bits"
	.byte	0xa
	.byte	0xd0
	.uaword	0x3215
	.uleb128 0xf
	.string	"_Ifx_I2C_GPCTL_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0xd3
	.uaword	0x3340
	.uleb128 0x10
	.string	"PISEL"
	.byte	0xa
	.byte	0xd5
	.uaword	0x331
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0x11
	.uaword	.LASF13
	.byte	0xa
	.byte	0xd6
	.uaword	0x331
	.byte	0x4
	.byte	0x1d
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_I2C_GPCTL_Bits"
	.byte	0xa
	.byte	0xd7
	.uaword	0x3303
	.uleb128 0xf
	.string	"_Ifx_I2C_ICR_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0xda
	.uaword	0x33c0
	.uleb128 0x11
	.uaword	.LASF21
	.byte	0xa
	.byte	0xdc
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x11
	.uaword	.LASF22
	.byte	0xa
	.byte	0xdd
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x11
	.uaword	.LASF23
	.byte	0xa
	.byte	0xde
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x11
	.uaword	.LASF24
	.byte	0xa
	.byte	0xdf
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x11
	.uaword	.LASF9
	.byte	0xa
	.byte	0xe0
	.uaword	0x331
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_I2C_ICR_Bits"
	.byte	0xa
	.byte	0xe1
	.uaword	0x335a
	.uleb128 0xf
	.string	"_Ifx_I2C_ID_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0xe4
	.uaword	0x3423
	.uleb128 0x10
	.string	"MOD_REV"
	.byte	0xa
	.byte	0xe6
	.uaword	0x331
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x11
	.uaword	.LASF3
	.byte	0xa
	.byte	0xe7
	.uaword	0x331
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0x11
	.uaword	.LASF2
	.byte	0xa
	.byte	0xe8
	.uaword	0x331
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_I2C_ID_Bits"
	.byte	0xa
	.byte	0xe9
	.uaword	0x33d8
	.uleb128 0xf
	.string	"_Ifx_I2C_IMSC_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0xec
	.uaword	0x34bf
	.uleb128 0x11
	.uaword	.LASF21
	.byte	0xa
	.byte	0xee
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x11
	.uaword	.LASF22
	.byte	0xa
	.byte	0xef
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x11
	.uaword	.LASF23
	.byte	0xa
	.byte	0xf0
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x11
	.uaword	.LASF24
	.byte	0xa
	.byte	0xf1
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x11
	.uaword	.LASF25
	.byte	0xa
	.byte	0xf2
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x11
	.uaword	.LASF26
	.byte	0xa
	.byte	0xf3
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x11
	.uaword	.LASF14
	.byte	0xa
	.byte	0xf4
	.uaword	0x331
	.byte	0x4
	.byte	0x1a
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_I2C_IMSC_Bits"
	.byte	0xa
	.byte	0xf5
	.uaword	0x343a
	.uleb128 0xf
	.string	"_Ifx_I2C_ISR_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0xf8
	.uaword	0x355d
	.uleb128 0x11
	.uaword	.LASF21
	.byte	0xa
	.byte	0xfa
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x11
	.uaword	.LASF22
	.byte	0xa
	.byte	0xfb
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x11
	.uaword	.LASF23
	.byte	0xa
	.byte	0xfc
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x11
	.uaword	.LASF24
	.byte	0xa
	.byte	0xfd
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x11
	.uaword	.LASF25
	.byte	0xa
	.byte	0xfe
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x11
	.uaword	.LASF26
	.byte	0xa
	.byte	0xff
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xb
	.uaword	.LASF14
	.byte	0xa
	.uahalf	0x100
	.uaword	0x331
	.byte	0x4
	.byte	0x1a
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_I2C_ISR_Bits"
	.byte	0xa
	.uahalf	0x101
	.uaword	0x34d8
	.uleb128 0x9
	.string	"_Ifx_I2C_KRST0_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x104
	.uaword	0x35c8
	.uleb128 0xa
	.string	"RST"
	.byte	0xa
	.uahalf	0x106
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xa
	.string	"RSTSTAT"
	.byte	0xa
	.uahalf	0x107
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xb
	.uaword	.LASF6
	.byte	0xa
	.uahalf	0x108
	.uaword	0x331
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_I2C_KRST0_Bits"
	.byte	0xa
	.uahalf	0x109
	.uaword	0x3576
	.uleb128 0x9
	.string	"_Ifx_I2C_KRST1_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x10c
	.uaword	0x3621
	.uleb128 0xa
	.string	"RST"
	.byte	0xa
	.uahalf	0x10e
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xb
	.uaword	.LASF27
	.byte	0xa
	.uahalf	0x10f
	.uaword	0x331
	.byte	0x4
	.byte	0x1f
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_I2C_KRST1_Bits"
	.byte	0xa
	.uahalf	0x110
	.uaword	0x35e3
	.uleb128 0x9
	.string	"_Ifx_I2C_KRSTCLR_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x113
	.uaword	0x367c
	.uleb128 0xa
	.string	"CLR"
	.byte	0xa
	.uahalf	0x115
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xb
	.uaword	.LASF27
	.byte	0xa
	.uahalf	0x116
	.uaword	0x331
	.byte	0x4
	.byte	0x1f
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_I2C_KRSTCLR_Bits"
	.byte	0xa
	.uahalf	0x117
	.uaword	0x363c
	.uleb128 0x9
	.string	"_Ifx_I2C_MIS_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x11a
	.uaword	0x3725
	.uleb128 0xb
	.uaword	.LASF21
	.byte	0xa
	.uahalf	0x11c
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xb
	.uaword	.LASF22
	.byte	0xa
	.uahalf	0x11d
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xb
	.uaword	.LASF23
	.byte	0xa
	.uahalf	0x11e
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xb
	.uaword	.LASF24
	.byte	0xa
	.uahalf	0x11f
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xb
	.uaword	.LASF25
	.byte	0xa
	.uahalf	0x120
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xb
	.uaword	.LASF26
	.byte	0xa
	.uahalf	0x121
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xb
	.uaword	.LASF14
	.byte	0xa
	.uahalf	0x122
	.uaword	0x331
	.byte	0x4
	.byte	0x1a
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_I2C_MIS_Bits"
	.byte	0xa
	.uahalf	0x123
	.uaword	0x3699
	.uleb128 0x9
	.string	"_Ifx_I2C_MODID_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x126
	.uaword	0x3795
	.uleb128 0xa
	.string	"MOD_REV"
	.byte	0xa
	.uahalf	0x128
	.uaword	0x331
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xa
	.string	"MOD_TYPE"
	.byte	0xa
	.uahalf	0x129
	.uaword	0x331
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.uaword	.LASF3
	.byte	0xa
	.uahalf	0x12a
	.uaword	0x331
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_I2C_MODID_Bits"
	.byte	0xa
	.uahalf	0x12b
	.uaword	0x373e
	.uleb128 0x9
	.string	"_Ifx_I2C_MRPSCTRL_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x12e
	.uaword	0x37f2
	.uleb128 0xa
	.string	"MRPS"
	.byte	0xa
	.uahalf	0x130
	.uaword	0x331
	.byte	0x4
	.byte	0xe
	.byte	0x12
	.byte	0
	.uleb128 0xb
	.uaword	.LASF20
	.byte	0xa
	.uahalf	0x131
	.uaword	0x331
	.byte	0x4
	.byte	0x12
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_I2C_MRPSCTRL_Bits"
	.byte	0xa
	.uahalf	0x132
	.uaword	0x37b0
	.uleb128 0x9
	.string	"_Ifx_I2C_PIRQSC_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x135
	.uaword	0x38ab
	.uleb128 0xa
	.string	"AM"
	.byte	0xa
	.uahalf	0x137
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xa
	.string	"GC"
	.byte	0xa
	.uahalf	0x138
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xa
	.string	"MC"
	.byte	0xa
	.uahalf	0x139
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xa
	.string	"AL"
	.byte	0xa
	.uahalf	0x13a
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xa
	.string	"NACK"
	.byte	0xa
	.uahalf	0x13b
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xb
	.uaword	.LASF28
	.byte	0xa
	.uahalf	0x13c
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xa
	.string	"RX"
	.byte	0xa
	.uahalf	0x13d
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xb
	.uaword	.LASF11
	.byte	0xa
	.uahalf	0x13e
	.uaword	0x331
	.byte	0x4
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_I2C_PIRQSC_Bits"
	.byte	0xa
	.uahalf	0x13f
	.uaword	0x3810
	.uleb128 0x9
	.string	"_Ifx_I2C_PIRQSM_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x142
	.uaword	0x3962
	.uleb128 0xa
	.string	"AM"
	.byte	0xa
	.uahalf	0x144
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xa
	.string	"GC"
	.byte	0xa
	.uahalf	0x145
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xa
	.string	"MC"
	.byte	0xa
	.uahalf	0x146
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xa
	.string	"AL"
	.byte	0xa
	.uahalf	0x147
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xa
	.string	"NACK"
	.byte	0xa
	.uahalf	0x148
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xb
	.uaword	.LASF28
	.byte	0xa
	.uahalf	0x149
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xa
	.string	"RX"
	.byte	0xa
	.uahalf	0x14a
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xb
	.uaword	.LASF11
	.byte	0xa
	.uahalf	0x14b
	.uaword	0x331
	.byte	0x4
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_I2C_PIRQSM_Bits"
	.byte	0xa
	.uahalf	0x14c
	.uaword	0x38c7
	.uleb128 0x9
	.string	"_Ifx_I2C_PIRQSS_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x14f
	.uaword	0x3a19
	.uleb128 0xa
	.string	"AM"
	.byte	0xa
	.uahalf	0x151
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xa
	.string	"GC"
	.byte	0xa
	.uahalf	0x152
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xa
	.string	"MC"
	.byte	0xa
	.uahalf	0x153
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xa
	.string	"AL"
	.byte	0xa
	.uahalf	0x154
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xa
	.string	"NACK"
	.byte	0xa
	.uahalf	0x155
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xb
	.uaword	.LASF28
	.byte	0xa
	.uahalf	0x156
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xa
	.string	"RX"
	.byte	0xa
	.uahalf	0x157
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xb
	.uaword	.LASF11
	.byte	0xa
	.uahalf	0x158
	.uaword	0x331
	.byte	0x4
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_I2C_PIRQSS_Bits"
	.byte	0xa
	.uahalf	0x159
	.uaword	0x397e
	.uleb128 0x9
	.string	"_Ifx_I2C_RIS_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x15c
	.uaword	0x3ac1
	.uleb128 0xb
	.uaword	.LASF21
	.byte	0xa
	.uahalf	0x15e
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xb
	.uaword	.LASF22
	.byte	0xa
	.uahalf	0x15f
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xb
	.uaword	.LASF23
	.byte	0xa
	.uahalf	0x160
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xb
	.uaword	.LASF24
	.byte	0xa
	.uahalf	0x161
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xb
	.uaword	.LASF25
	.byte	0xa
	.uahalf	0x162
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xb
	.uaword	.LASF26
	.byte	0xa
	.uahalf	0x163
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xb
	.uaword	.LASF14
	.byte	0xa
	.uahalf	0x164
	.uaword	0x331
	.byte	0x4
	.byte	0x1a
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_I2C_RIS_Bits"
	.byte	0xa
	.uahalf	0x165
	.uaword	0x3a35
	.uleb128 0x9
	.string	"_Ifx_I2C_RPSSTAT_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x168
	.uaword	0x3b1a
	.uleb128 0xa
	.string	"RPS"
	.byte	0xa
	.uahalf	0x16a
	.uaword	0x331
	.byte	0x4
	.byte	0xe
	.byte	0x12
	.byte	0
	.uleb128 0xb
	.uaword	.LASF20
	.byte	0xa
	.uahalf	0x16b
	.uaword	0x331
	.byte	0x4
	.byte	0x12
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_I2C_RPSSTAT_Bits"
	.byte	0xa
	.uahalf	0x16c
	.uaword	0x3ada
	.uleb128 0x9
	.string	"_Ifx_I2C_RUNCTRL_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x16f
	.uaword	0x3b77
	.uleb128 0xa
	.string	"RUN"
	.byte	0xa
	.uahalf	0x171
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xb
	.uaword	.LASF27
	.byte	0xa
	.uahalf	0x172
	.uaword	0x331
	.byte	0x4
	.byte	0x1f
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_I2C_RUNCTRL_Bits"
	.byte	0xa
	.uahalf	0x173
	.uaword	0x3b37
	.uleb128 0x9
	.string	"_Ifx_I2C_RXD_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x176
	.uaword	0x3bc0
	.uleb128 0xa
	.string	"RXD"
	.byte	0xa
	.uahalf	0x178
	.uaword	0x331
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_I2C_RXD_Bits"
	.byte	0xa
	.uahalf	0x179
	.uaword	0x3b94
	.uleb128 0x9
	.string	"_Ifx_I2C_TIMCFG_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x17c
	.uaword	0x3cd5
	.uleb128 0xa
	.string	"SDA_DEL_HD_DAT"
	.byte	0xa
	.uahalf	0x17e
	.uaword	0x331
	.byte	0x4
	.byte	0x6
	.byte	0x1a
	.byte	0
	.uleb128 0xa
	.string	"HS_SDA_DEL_HD_DAT"
	.byte	0xa
	.uahalf	0x17f
	.uaword	0x331
	.byte	0x4
	.byte	0x3
	.byte	0x17
	.byte	0
	.uleb128 0xa
	.string	"SCL_DEL_HD_STA"
	.byte	0xa
	.uahalf	0x180
	.uaword	0x331
	.byte	0x4
	.byte	0x3
	.byte	0x14
	.byte	0
	.uleb128 0xb
	.uaword	.LASF10
	.byte	0xa
	.uahalf	0x181
	.uaword	0x331
	.byte	0x4
	.byte	0x2
	.byte	0x12
	.byte	0
	.uleb128 0xa
	.string	"EN_SCL_LOW_LEN"
	.byte	0xa
	.uahalf	0x182
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xa
	.string	"FS_SCL_LOW"
	.byte	0xa
	.uahalf	0x183
	.uaword	0x331
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.string	"HS_SDA_DEL"
	.byte	0xa
	.uahalf	0x184
	.uaword	0x331
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0xa
	.string	"reserved_19"
	.byte	0xa
	.uahalf	0x185
	.uaword	0x331
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.string	"SCL_LOW_LEN"
	.byte	0xa
	.uahalf	0x186
	.uaword	0x331
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_I2C_TIMCFG_Bits"
	.byte	0xa
	.uahalf	0x187
	.uaword	0x3bd9
	.uleb128 0x9
	.string	"_Ifx_I2C_TPSCTRL_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x18a
	.uaword	0x3d31
	.uleb128 0xa
	.string	"TPS"
	.byte	0xa
	.uahalf	0x18c
	.uaword	0x331
	.byte	0x4
	.byte	0xe
	.byte	0x12
	.byte	0
	.uleb128 0xb
	.uaword	.LASF20
	.byte	0xa
	.uahalf	0x18d
	.uaword	0x331
	.byte	0x4
	.byte	0x12
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_I2C_TPSCTRL_Bits"
	.byte	0xa
	.uahalf	0x18e
	.uaword	0x3cf1
	.uleb128 0x9
	.string	"_Ifx_I2C_TXD_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x191
	.uaword	0x3d7a
	.uleb128 0xa
	.string	"TXD"
	.byte	0xa
	.uahalf	0x193
	.uaword	0x331
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_I2C_TXD_Bits"
	.byte	0xa
	.uahalf	0x194
	.uaword	0x3d4e
	.uleb128 0xd
	.byte	0x4
	.byte	0xa
	.uahalf	0x19c
	.uaword	0x3dbb
	.uleb128 0xe
	.string	"U"
	.byte	0xa
	.uahalf	0x19f
	.uaword	0x331
	.uleb128 0xe
	.string	"I"
	.byte	0xa
	.uahalf	0x1a1
	.uaword	0x1b1
	.uleb128 0xe
	.string	"B"
	.byte	0xa
	.uahalf	0x1a3
	.uaword	0x2c03
	.byte	0
	.uleb128 0xc
	.string	"Ifx_I2C_ACCEN0"
	.byte	0xa
	.uahalf	0x1a4
	.uaword	0x3d93
	.uleb128 0xd
	.byte	0x4
	.byte	0xa
	.uahalf	0x1a7
	.uaword	0x3dfa
	.uleb128 0xe
	.string	"U"
	.byte	0xa
	.uahalf	0x1aa
	.uaword	0x331
	.uleb128 0xe
	.string	"I"
	.byte	0xa
	.uahalf	0x1ac
	.uaword	0x1b1
	.uleb128 0xe
	.string	"B"
	.byte	0xa
	.uahalf	0x1ae
	.uaword	0x2c4b
	.byte	0
	.uleb128 0xc
	.string	"Ifx_I2C_ACCEN1"
	.byte	0xa
	.uahalf	0x1af
	.uaword	0x3dd2
	.uleb128 0xd
	.byte	0x4
	.byte	0xa
	.uahalf	0x1b2
	.uaword	0x3e39
	.uleb128 0xe
	.string	"U"
	.byte	0xa
	.uahalf	0x1b5
	.uaword	0x331
	.uleb128 0xe
	.string	"I"
	.byte	0xa
	.uahalf	0x1b7
	.uaword	0x1b1
	.uleb128 0xe
	.string	"B"
	.byte	0xa
	.uahalf	0x1b9
	.uaword	0x2d17
	.byte	0
	.uleb128 0xc
	.string	"Ifx_I2C_ADDRCFG"
	.byte	0xa
	.uahalf	0x1ba
	.uaword	0x3e11
	.uleb128 0xd
	.byte	0x4
	.byte	0xa
	.uahalf	0x1bd
	.uaword	0x3e79
	.uleb128 0xe
	.string	"U"
	.byte	0xa
	.uahalf	0x1c0
	.uaword	0x331
	.uleb128 0xe
	.string	"I"
	.byte	0xa
	.uahalf	0x1c2
	.uaword	0x1b1
	.uleb128 0xe
	.string	"B"
	.byte	0xa
	.uahalf	0x1c4
	.uaword	0x2d7e
	.byte	0
	.uleb128 0xc
	.string	"Ifx_I2C_BUSSTAT"
	.byte	0xa
	.uahalf	0x1c5
	.uaword	0x3e51
	.uleb128 0xd
	.byte	0x4
	.byte	0xa
	.uahalf	0x1c8
	.uaword	0x3eb9
	.uleb128 0xe
	.string	"U"
	.byte	0xa
	.uahalf	0x1cb
	.uaword	0x331
	.uleb128 0xe
	.string	"I"
	.byte	0xa
	.uahalf	0x1cd
	.uaword	0x1b1
	.uleb128 0xe
	.string	"B"
	.byte	0xa
	.uahalf	0x1cf
	.uaword	0x2ea6
	.byte	0
	.uleb128 0xc
	.string	"Ifx_I2C_CLC"
	.byte	0xa
	.uahalf	0x1d0
	.uaword	0x3e91
	.uleb128 0xd
	.byte	0x4
	.byte	0xa
	.uahalf	0x1d3
	.uaword	0x3ef5
	.uleb128 0xe
	.string	"U"
	.byte	0xa
	.uahalf	0x1d6
	.uaword	0x331
	.uleb128 0xe
	.string	"I"
	.byte	0xa
	.uahalf	0x1d8
	.uaword	0x1b1
	.uleb128 0xe
	.string	"B"
	.byte	0xa
	.uahalf	0x1da
	.uaword	0x2e43
	.byte	0
	.uleb128 0xc
	.string	"Ifx_I2C_CLC1"
	.byte	0xa
	.uahalf	0x1db
	.uaword	0x3ecd
	.uleb128 0xd
	.byte	0x4
	.byte	0xa
	.uahalf	0x1de
	.uaword	0x3f32
	.uleb128 0xe
	.string	"U"
	.byte	0xa
	.uahalf	0x1e1
	.uaword	0x331
	.uleb128 0xe
	.string	"I"
	.byte	0xa
	.uahalf	0x1e3
	.uaword	0x1b1
	.uleb128 0xe
	.string	"B"
	.byte	0xa
	.uahalf	0x1e5
	.uaword	0x2f11
	.byte	0
	.uleb128 0xc
	.string	"Ifx_I2C_ENDDCTRL"
	.byte	0xa
	.uahalf	0x1e6
	.uaword	0x3f0a
	.uleb128 0xd
	.byte	0x4
	.byte	0xa
	.uahalf	0x1e9
	.uaword	0x3f73
	.uleb128 0xe
	.string	"U"
	.byte	0xa
	.uahalf	0x1ec
	.uaword	0x331
	.uleb128 0xe
	.string	"I"
	.byte	0xa
	.uahalf	0x1ee
	.uaword	0x1b1
	.uleb128 0xe
	.string	"B"
	.byte	0xa
	.uahalf	0x1f0
	.uaword	0x2f99
	.byte	0
	.uleb128 0xc
	.string	"Ifx_I2C_ERRIRQSC"
	.byte	0xa
	.uahalf	0x1f1
	.uaword	0x3f4b
	.uleb128 0xd
	.byte	0x4
	.byte	0xa
	.uahalf	0x1f4
	.uaword	0x3fb4
	.uleb128 0xe
	.string	"U"
	.byte	0xa
	.uahalf	0x1f7
	.uaword	0x331
	.uleb128 0xe
	.string	"I"
	.byte	0xa
	.uahalf	0x1f9
	.uaword	0x1b1
	.uleb128 0xe
	.string	"B"
	.byte	0xa
	.uahalf	0x1fb
	.uaword	0x3021
	.byte	0
	.uleb128 0xc
	.string	"Ifx_I2C_ERRIRQSM"
	.byte	0xa
	.uahalf	0x1fc
	.uaword	0x3f8c
	.uleb128 0xd
	.byte	0x4
	.byte	0xa
	.uahalf	0x1ff
	.uaword	0x3ff5
	.uleb128 0xe
	.string	"U"
	.byte	0xa
	.uahalf	0x202
	.uaword	0x331
	.uleb128 0xe
	.string	"I"
	.byte	0xa
	.uahalf	0x204
	.uaword	0x1b1
	.uleb128 0xe
	.string	"B"
	.byte	0xa
	.uahalf	0x206
	.uaword	0x30a9
	.byte	0
	.uleb128 0xc
	.string	"Ifx_I2C_ERRIRQSS"
	.byte	0xa
	.uahalf	0x207
	.uaword	0x3fcd
	.uleb128 0xd
	.byte	0x4
	.byte	0xa
	.uahalf	0x20a
	.uaword	0x4036
	.uleb128 0xe
	.string	"U"
	.byte	0xa
	.uahalf	0x20d
	.uaword	0x331
	.uleb128 0xe
	.string	"I"
	.byte	0xa
	.uahalf	0x20f
	.uaword	0x1b1
	.uleb128 0xe
	.string	"B"
	.byte	0xa
	.uahalf	0x211
	.uaword	0x3121
	.byte	0
	.uleb128 0xc
	.string	"Ifx_I2C_FDIVCFG"
	.byte	0xa
	.uahalf	0x212
	.uaword	0x400e
	.uleb128 0xd
	.byte	0x4
	.byte	0xa
	.uahalf	0x215
	.uaword	0x4076
	.uleb128 0xe
	.string	"U"
	.byte	0xa
	.uahalf	0x218
	.uaword	0x331
	.uleb128 0xe
	.string	"I"
	.byte	0xa
	.uahalf	0x21a
	.uaword	0x1b1
	.uleb128 0xe
	.string	"B"
	.byte	0xa
	.uahalf	0x21c
	.uaword	0x319c
	.byte	0
	.uleb128 0xc
	.string	"Ifx_I2C_FDIVHIGHCFG"
	.byte	0xa
	.uahalf	0x21d
	.uaword	0x404e
	.uleb128 0xd
	.byte	0x4
	.byte	0xa
	.uahalf	0x220
	.uaword	0x40ba
	.uleb128 0xe
	.string	"U"
	.byte	0xa
	.uahalf	0x223
	.uaword	0x331
	.uleb128 0xe
	.string	"I"
	.byte	0xa
	.uahalf	0x225
	.uaword	0x1b1
	.uleb128 0xe
	.string	"B"
	.byte	0xa
	.uahalf	0x227
	.uaword	0x31f9
	.byte	0
	.uleb128 0xc
	.string	"Ifx_I2C_FFSSTAT"
	.byte	0xa
	.uahalf	0x228
	.uaword	0x4092
	.uleb128 0xd
	.byte	0x4
	.byte	0xa
	.uahalf	0x22b
	.uaword	0x40fa
	.uleb128 0xe
	.string	"U"
	.byte	0xa
	.uahalf	0x22e
	.uaword	0x331
	.uleb128 0xe
	.string	"I"
	.byte	0xa
	.uahalf	0x230
	.uaword	0x1b1
	.uleb128 0xe
	.string	"B"
	.byte	0xa
	.uahalf	0x232
	.uaword	0x32e7
	.byte	0
	.uleb128 0xc
	.string	"Ifx_I2C_FIFOCFG"
	.byte	0xa
	.uahalf	0x233
	.uaword	0x40d2
	.uleb128 0xd
	.byte	0x4
	.byte	0xa
	.uahalf	0x236
	.uaword	0x413a
	.uleb128 0xe
	.string	"U"
	.byte	0xa
	.uahalf	0x239
	.uaword	0x331
	.uleb128 0xe
	.string	"I"
	.byte	0xa
	.uahalf	0x23b
	.uaword	0x1b1
	.uleb128 0xe
	.string	"B"
	.byte	0xa
	.uahalf	0x23d
	.uaword	0x3340
	.byte	0
	.uleb128 0xc
	.string	"Ifx_I2C_GPCTL"
	.byte	0xa
	.uahalf	0x23e
	.uaword	0x4112
	.uleb128 0xd
	.byte	0x4
	.byte	0xa
	.uahalf	0x241
	.uaword	0x4178
	.uleb128 0xe
	.string	"U"
	.byte	0xa
	.uahalf	0x244
	.uaword	0x331
	.uleb128 0xe
	.string	"I"
	.byte	0xa
	.uahalf	0x246
	.uaword	0x1b1
	.uleb128 0xe
	.string	"B"
	.byte	0xa
	.uahalf	0x248
	.uaword	0x33c0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_I2C_ICR"
	.byte	0xa
	.uahalf	0x249
	.uaword	0x4150
	.uleb128 0xd
	.byte	0x4
	.byte	0xa
	.uahalf	0x24c
	.uaword	0x41b4
	.uleb128 0xe
	.string	"U"
	.byte	0xa
	.uahalf	0x24f
	.uaword	0x331
	.uleb128 0xe
	.string	"I"
	.byte	0xa
	.uahalf	0x251
	.uaword	0x1b1
	.uleb128 0xe
	.string	"B"
	.byte	0xa
	.uahalf	0x253
	.uaword	0x3423
	.byte	0
	.uleb128 0xc
	.string	"Ifx_I2C_ID"
	.byte	0xa
	.uahalf	0x254
	.uaword	0x418c
	.uleb128 0xd
	.byte	0x4
	.byte	0xa
	.uahalf	0x257
	.uaword	0x41ef
	.uleb128 0xe
	.string	"U"
	.byte	0xa
	.uahalf	0x25a
	.uaword	0x331
	.uleb128 0xe
	.string	"I"
	.byte	0xa
	.uahalf	0x25c
	.uaword	0x1b1
	.uleb128 0xe
	.string	"B"
	.byte	0xa
	.uahalf	0x25e
	.uaword	0x34bf
	.byte	0
	.uleb128 0xc
	.string	"Ifx_I2C_IMSC"
	.byte	0xa
	.uahalf	0x25f
	.uaword	0x41c7
	.uleb128 0xd
	.byte	0x4
	.byte	0xa
	.uahalf	0x262
	.uaword	0x422c
	.uleb128 0xe
	.string	"U"
	.byte	0xa
	.uahalf	0x265
	.uaword	0x331
	.uleb128 0xe
	.string	"I"
	.byte	0xa
	.uahalf	0x267
	.uaword	0x1b1
	.uleb128 0xe
	.string	"B"
	.byte	0xa
	.uahalf	0x269
	.uaword	0x355d
	.byte	0
	.uleb128 0xc
	.string	"Ifx_I2C_ISR"
	.byte	0xa
	.uahalf	0x26a
	.uaword	0x4204
	.uleb128 0xd
	.byte	0x4
	.byte	0xa
	.uahalf	0x26d
	.uaword	0x4268
	.uleb128 0xe
	.string	"U"
	.byte	0xa
	.uahalf	0x270
	.uaword	0x331
	.uleb128 0xe
	.string	"I"
	.byte	0xa
	.uahalf	0x272
	.uaword	0x1b1
	.uleb128 0xe
	.string	"B"
	.byte	0xa
	.uahalf	0x274
	.uaword	0x35c8
	.byte	0
	.uleb128 0xc
	.string	"Ifx_I2C_KRST0"
	.byte	0xa
	.uahalf	0x275
	.uaword	0x4240
	.uleb128 0xd
	.byte	0x4
	.byte	0xa
	.uahalf	0x278
	.uaword	0x42a6
	.uleb128 0xe
	.string	"U"
	.byte	0xa
	.uahalf	0x27b
	.uaword	0x331
	.uleb128 0xe
	.string	"I"
	.byte	0xa
	.uahalf	0x27d
	.uaword	0x1b1
	.uleb128 0xe
	.string	"B"
	.byte	0xa
	.uahalf	0x27f
	.uaword	0x3621
	.byte	0
	.uleb128 0xc
	.string	"Ifx_I2C_KRST1"
	.byte	0xa
	.uahalf	0x280
	.uaword	0x427e
	.uleb128 0xd
	.byte	0x4
	.byte	0xa
	.uahalf	0x283
	.uaword	0x42e4
	.uleb128 0xe
	.string	"U"
	.byte	0xa
	.uahalf	0x286
	.uaword	0x331
	.uleb128 0xe
	.string	"I"
	.byte	0xa
	.uahalf	0x288
	.uaword	0x1b1
	.uleb128 0xe
	.string	"B"
	.byte	0xa
	.uahalf	0x28a
	.uaword	0x367c
	.byte	0
	.uleb128 0xc
	.string	"Ifx_I2C_KRSTCLR"
	.byte	0xa
	.uahalf	0x28b
	.uaword	0x42bc
	.uleb128 0xd
	.byte	0x4
	.byte	0xa
	.uahalf	0x28e
	.uaword	0x4324
	.uleb128 0xe
	.string	"U"
	.byte	0xa
	.uahalf	0x291
	.uaword	0x331
	.uleb128 0xe
	.string	"I"
	.byte	0xa
	.uahalf	0x293
	.uaword	0x1b1
	.uleb128 0xe
	.string	"B"
	.byte	0xa
	.uahalf	0x295
	.uaword	0x3725
	.byte	0
	.uleb128 0xc
	.string	"Ifx_I2C_MIS"
	.byte	0xa
	.uahalf	0x296
	.uaword	0x42fc
	.uleb128 0xd
	.byte	0x4
	.byte	0xa
	.uahalf	0x299
	.uaword	0x4360
	.uleb128 0xe
	.string	"U"
	.byte	0xa
	.uahalf	0x29c
	.uaword	0x331
	.uleb128 0xe
	.string	"I"
	.byte	0xa
	.uahalf	0x29e
	.uaword	0x1b1
	.uleb128 0xe
	.string	"B"
	.byte	0xa
	.uahalf	0x2a0
	.uaword	0x3795
	.byte	0
	.uleb128 0xc
	.string	"Ifx_I2C_MODID"
	.byte	0xa
	.uahalf	0x2a1
	.uaword	0x4338
	.uleb128 0xd
	.byte	0x4
	.byte	0xa
	.uahalf	0x2a4
	.uaword	0x439e
	.uleb128 0xe
	.string	"U"
	.byte	0xa
	.uahalf	0x2a7
	.uaword	0x331
	.uleb128 0xe
	.string	"I"
	.byte	0xa
	.uahalf	0x2a9
	.uaword	0x1b1
	.uleb128 0xe
	.string	"B"
	.byte	0xa
	.uahalf	0x2ab
	.uaword	0x37f2
	.byte	0
	.uleb128 0xc
	.string	"Ifx_I2C_MRPSCTRL"
	.byte	0xa
	.uahalf	0x2ac
	.uaword	0x4376
	.uleb128 0xd
	.byte	0x4
	.byte	0xa
	.uahalf	0x2af
	.uaword	0x43df
	.uleb128 0xe
	.string	"U"
	.byte	0xa
	.uahalf	0x2b2
	.uaword	0x331
	.uleb128 0xe
	.string	"I"
	.byte	0xa
	.uahalf	0x2b4
	.uaword	0x1b1
	.uleb128 0xe
	.string	"B"
	.byte	0xa
	.uahalf	0x2b6
	.uaword	0x38ab
	.byte	0
	.uleb128 0xc
	.string	"Ifx_I2C_PIRQSC"
	.byte	0xa
	.uahalf	0x2b7
	.uaword	0x43b7
	.uleb128 0xd
	.byte	0x4
	.byte	0xa
	.uahalf	0x2ba
	.uaword	0x441e
	.uleb128 0xe
	.string	"U"
	.byte	0xa
	.uahalf	0x2bd
	.uaword	0x331
	.uleb128 0xe
	.string	"I"
	.byte	0xa
	.uahalf	0x2bf
	.uaword	0x1b1
	.uleb128 0xe
	.string	"B"
	.byte	0xa
	.uahalf	0x2c1
	.uaword	0x3962
	.byte	0
	.uleb128 0xc
	.string	"Ifx_I2C_PIRQSM"
	.byte	0xa
	.uahalf	0x2c2
	.uaword	0x43f6
	.uleb128 0xd
	.byte	0x4
	.byte	0xa
	.uahalf	0x2c5
	.uaword	0x445d
	.uleb128 0xe
	.string	"U"
	.byte	0xa
	.uahalf	0x2c8
	.uaword	0x331
	.uleb128 0xe
	.string	"I"
	.byte	0xa
	.uahalf	0x2ca
	.uaword	0x1b1
	.uleb128 0xe
	.string	"B"
	.byte	0xa
	.uahalf	0x2cc
	.uaword	0x3a19
	.byte	0
	.uleb128 0xc
	.string	"Ifx_I2C_PIRQSS"
	.byte	0xa
	.uahalf	0x2cd
	.uaword	0x4435
	.uleb128 0xd
	.byte	0x4
	.byte	0xa
	.uahalf	0x2d0
	.uaword	0x449c
	.uleb128 0xe
	.string	"U"
	.byte	0xa
	.uahalf	0x2d3
	.uaword	0x331
	.uleb128 0xe
	.string	"I"
	.byte	0xa
	.uahalf	0x2d5
	.uaword	0x1b1
	.uleb128 0xe
	.string	"B"
	.byte	0xa
	.uahalf	0x2d7
	.uaword	0x3ac1
	.byte	0
	.uleb128 0xc
	.string	"Ifx_I2C_RIS"
	.byte	0xa
	.uahalf	0x2d8
	.uaword	0x4474
	.uleb128 0xd
	.byte	0x4
	.byte	0xa
	.uahalf	0x2db
	.uaword	0x44d8
	.uleb128 0xe
	.string	"U"
	.byte	0xa
	.uahalf	0x2de
	.uaword	0x331
	.uleb128 0xe
	.string	"I"
	.byte	0xa
	.uahalf	0x2e0
	.uaword	0x1b1
	.uleb128 0xe
	.string	"B"
	.byte	0xa
	.uahalf	0x2e2
	.uaword	0x3b1a
	.byte	0
	.uleb128 0xc
	.string	"Ifx_I2C_RPSSTAT"
	.byte	0xa
	.uahalf	0x2e3
	.uaword	0x44b0
	.uleb128 0xd
	.byte	0x4
	.byte	0xa
	.uahalf	0x2e6
	.uaword	0x4518
	.uleb128 0xe
	.string	"U"
	.byte	0xa
	.uahalf	0x2e9
	.uaword	0x331
	.uleb128 0xe
	.string	"I"
	.byte	0xa
	.uahalf	0x2eb
	.uaword	0x1b1
	.uleb128 0xe
	.string	"B"
	.byte	0xa
	.uahalf	0x2ed
	.uaword	0x3b77
	.byte	0
	.uleb128 0xc
	.string	"Ifx_I2C_RUNCTRL"
	.byte	0xa
	.uahalf	0x2ee
	.uaword	0x44f0
	.uleb128 0xd
	.byte	0x4
	.byte	0xa
	.uahalf	0x2f1
	.uaword	0x4558
	.uleb128 0xe
	.string	"U"
	.byte	0xa
	.uahalf	0x2f4
	.uaword	0x331
	.uleb128 0xe
	.string	"I"
	.byte	0xa
	.uahalf	0x2f6
	.uaword	0x1b1
	.uleb128 0xe
	.string	"B"
	.byte	0xa
	.uahalf	0x2f8
	.uaword	0x3bc0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_I2C_RXD"
	.byte	0xa
	.uahalf	0x2f9
	.uaword	0x4530
	.uleb128 0xd
	.byte	0x4
	.byte	0xa
	.uahalf	0x2fc
	.uaword	0x4594
	.uleb128 0xe
	.string	"U"
	.byte	0xa
	.uahalf	0x2ff
	.uaword	0x331
	.uleb128 0xe
	.string	"I"
	.byte	0xa
	.uahalf	0x301
	.uaword	0x1b1
	.uleb128 0xe
	.string	"B"
	.byte	0xa
	.uahalf	0x303
	.uaword	0x3cd5
	.byte	0
	.uleb128 0xc
	.string	"Ifx_I2C_TIMCFG"
	.byte	0xa
	.uahalf	0x304
	.uaword	0x456c
	.uleb128 0xd
	.byte	0x4
	.byte	0xa
	.uahalf	0x307
	.uaword	0x45d3
	.uleb128 0xe
	.string	"U"
	.byte	0xa
	.uahalf	0x30a
	.uaword	0x331
	.uleb128 0xe
	.string	"I"
	.byte	0xa
	.uahalf	0x30c
	.uaword	0x1b1
	.uleb128 0xe
	.string	"B"
	.byte	0xa
	.uahalf	0x30e
	.uaword	0x3d31
	.byte	0
	.uleb128 0xc
	.string	"Ifx_I2C_TPSCTRL"
	.byte	0xa
	.uahalf	0x30f
	.uaword	0x45ab
	.uleb128 0xd
	.byte	0x4
	.byte	0xa
	.uahalf	0x312
	.uaword	0x4613
	.uleb128 0xe
	.string	"U"
	.byte	0xa
	.uahalf	0x315
	.uaword	0x331
	.uleb128 0xe
	.string	"I"
	.byte	0xa
	.uahalf	0x317
	.uaword	0x1b1
	.uleb128 0xe
	.string	"B"
	.byte	0xa
	.uahalf	0x319
	.uaword	0x3d7a
	.byte	0
	.uleb128 0xc
	.string	"Ifx_I2C_TXD"
	.byte	0xa
	.uahalf	0x31a
	.uaword	0x45eb
	.uleb128 0x18
	.string	"_Ifx_I2C"
	.uaword	0x10100
	.byte	0xa
	.uahalf	0x325
	.uaword	0x4943
	.uleb128 0x13
	.string	"CLC1"
	.byte	0xa
	.uahalf	0x327
	.uaword	0x3ef5
	.byte	0
	.uleb128 0x14
	.uaword	.LASF9
	.byte	0xa
	.uahalf	0x328
	.uaword	0x35d
	.byte	0x4
	.uleb128 0x13
	.string	"ID"
	.byte	0xa
	.uahalf	0x329
	.uaword	0x41b4
	.byte	0x8
	.uleb128 0x14
	.uaword	.LASF12
	.byte	0xa
	.uahalf	0x32a
	.uaword	0x35d
	.byte	0xc
	.uleb128 0x13
	.string	"RUNCTRL"
	.byte	0xa
	.uahalf	0x32b
	.uaword	0x4518
	.byte	0x10
	.uleb128 0x13
	.string	"ENDDCTRL"
	.byte	0xa
	.uahalf	0x32c
	.uaword	0x3f32
	.byte	0x14
	.uleb128 0x13
	.string	"FDIVCFG"
	.byte	0xa
	.uahalf	0x32d
	.uaword	0x4036
	.byte	0x18
	.uleb128 0x13
	.string	"FDIVHIGHCFG"
	.byte	0xa
	.uahalf	0x32e
	.uaword	0x4076
	.byte	0x1c
	.uleb128 0x13
	.string	"ADDRCFG"
	.byte	0xa
	.uahalf	0x32f
	.uaword	0x3e39
	.byte	0x20
	.uleb128 0x13
	.string	"BUSSTAT"
	.byte	0xa
	.uahalf	0x330
	.uaword	0x3e79
	.byte	0x24
	.uleb128 0x13
	.string	"FIFOCFG"
	.byte	0xa
	.uahalf	0x331
	.uaword	0x40fa
	.byte	0x28
	.uleb128 0x13
	.string	"MRPSCTRL"
	.byte	0xa
	.uahalf	0x332
	.uaword	0x439e
	.byte	0x2c
	.uleb128 0x13
	.string	"RPSSTAT"
	.byte	0xa
	.uahalf	0x333
	.uaword	0x44d8
	.byte	0x30
	.uleb128 0x13
	.string	"TPSCTRL"
	.byte	0xa
	.uahalf	0x334
	.uaword	0x45d3
	.byte	0x34
	.uleb128 0x13
	.string	"FFSSTAT"
	.byte	0xa
	.uahalf	0x335
	.uaword	0x40ba
	.byte	0x38
	.uleb128 0x13
	.string	"reserved_3C"
	.byte	0xa
	.uahalf	0x336
	.uaword	0x35d
	.byte	0x3c
	.uleb128 0x13
	.string	"TIMCFG"
	.byte	0xa
	.uahalf	0x337
	.uaword	0x4594
	.byte	0x40
	.uleb128 0x13
	.string	"reserved_44"
	.byte	0xa
	.uahalf	0x338
	.uaword	0x37d
	.byte	0x44
	.uleb128 0x13
	.string	"ERRIRQSM"
	.byte	0xa
	.uahalf	0x339
	.uaword	0x3fb4
	.byte	0x60
	.uleb128 0x13
	.string	"ERRIRQSS"
	.byte	0xa
	.uahalf	0x33a
	.uaword	0x3ff5
	.byte	0x64
	.uleb128 0x13
	.string	"ERRIRQSC"
	.byte	0xa
	.uahalf	0x33b
	.uaword	0x3f73
	.byte	0x68
	.uleb128 0x13
	.string	"reserved_6C"
	.byte	0xa
	.uahalf	0x33c
	.uaword	0x35d
	.byte	0x6c
	.uleb128 0x13
	.string	"PIRQSM"
	.byte	0xa
	.uahalf	0x33d
	.uaword	0x441e
	.byte	0x70
	.uleb128 0x13
	.string	"PIRQSS"
	.byte	0xa
	.uahalf	0x33e
	.uaword	0x445d
	.byte	0x74
	.uleb128 0x13
	.string	"PIRQSC"
	.byte	0xa
	.uahalf	0x33f
	.uaword	0x43df
	.byte	0x78
	.uleb128 0x13
	.string	"reserved_7C"
	.byte	0xa
	.uahalf	0x340
	.uaword	0x35d
	.byte	0x7c
	.uleb128 0x13
	.string	"RIS"
	.byte	0xa
	.uahalf	0x341
	.uaword	0x449c
	.byte	0x80
	.uleb128 0x13
	.string	"IMSC"
	.byte	0xa
	.uahalf	0x342
	.uaword	0x41ef
	.byte	0x84
	.uleb128 0x13
	.string	"MIS"
	.byte	0xa
	.uahalf	0x343
	.uaword	0x4324
	.byte	0x88
	.uleb128 0x13
	.string	"ICR"
	.byte	0xa
	.uahalf	0x344
	.uaword	0x4178
	.byte	0x8c
	.uleb128 0x13
	.string	"ISR"
	.byte	0xa
	.uahalf	0x345
	.uaword	0x422c
	.byte	0x90
	.uleb128 0x13
	.string	"reserved_94"
	.byte	0xa
	.uahalf	0x346
	.uaword	0x4943
	.byte	0x94
	.uleb128 0x19
	.string	"TXD"
	.byte	0xa
	.uahalf	0x347
	.uaword	0x4613
	.uahalf	0x8000
	.uleb128 0x19
	.string	"reserved_8004"
	.byte	0xa
	.uahalf	0x348
	.uaword	0x4954
	.uahalf	0x8004
	.uleb128 0x19
	.string	"RXD"
	.byte	0xa
	.uahalf	0x349
	.uaword	0x4558
	.uahalf	0xc000
	.uleb128 0x19
	.string	"reserved_C004"
	.byte	0xa
	.uahalf	0x34a
	.uaword	0x4954
	.uahalf	0xc004
	.uleb128 0x1a
	.string	"CLC"
	.byte	0xa
	.uahalf	0x34b
	.uaword	0x3eb9
	.uleb128 0x10000
	.uleb128 0x1a
	.string	"MODID"
	.byte	0xa
	.uahalf	0x34c
	.uaword	0x4360
	.uleb128 0x10004
	.uleb128 0x1a
	.string	"GPCTL"
	.byte	0xa
	.uahalf	0x34d
	.uaword	0x413a
	.uleb128 0x10008
	.uleb128 0x1a
	.string	"ACCEN0"
	.byte	0xa
	.uahalf	0x34e
	.uaword	0x3dbb
	.uleb128 0x1000c
	.uleb128 0x1a
	.string	"ACCEN1"
	.byte	0xa
	.uahalf	0x34f
	.uaword	0x3dfa
	.uleb128 0x10010
	.uleb128 0x1a
	.string	"KRST0"
	.byte	0xa
	.uahalf	0x350
	.uaword	0x4268
	.uleb128 0x10014
	.uleb128 0x1a
	.string	"KRST1"
	.byte	0xa
	.uahalf	0x351
	.uaword	0x42a6
	.uleb128 0x10018
	.uleb128 0x1a
	.string	"KRSTCLR"
	.byte	0xa
	.uahalf	0x352
	.uaword	0x42e4
	.uleb128 0x1001c
	.uleb128 0x1a
	.string	"reserved_10020"
	.byte	0xa
	.uahalf	0x353
	.uaword	0x46c
	.uleb128 0x10020
	.byte	0
	.uleb128 0x6
	.uaword	0x1d4
	.uaword	0x4954
	.uleb128 0x1b
	.uaword	0x351
	.uahalf	0x7f6b
	.byte	0
	.uleb128 0x6
	.uaword	0x1d4
	.uaword	0x4965
	.uleb128 0x1b
	.uaword	0x351
	.uahalf	0x3ffb
	.byte	0
	.uleb128 0xc
	.string	"Ifx_I2C"
	.byte	0xa
	.uahalf	0x354
	.uaword	0x4975
	.uleb128 0x8
	.uaword	0x4627
	.uleb128 0x16
	.byte	0x14
	.byte	0xb
	.byte	0x27
	.uaword	0x49b6
	.uleb128 0x17
	.string	"module"
	.byte	0xb
	.byte	0x29
	.uaword	0x49b6
	.byte	0
	.uleb128 0x17
	.string	"pin"
	.byte	0xb
	.byte	0x2a
	.uaword	0x29dc
	.byte	0x4
	.uleb128 0x1c
	.uaword	.LASF29
	.byte	0xb
	.byte	0x2b
	.uaword	0x320
	.byte	0xc
	.uleb128 0x1c
	.uaword	.LASF30
	.byte	0xb
	.byte	0x2c
	.uaword	0x27e2
	.byte	0x10
	.byte	0
	.uleb128 0x15
	.byte	0x4
	.uaword	0x4965
	.uleb128 0x3
	.string	"IfxI2c_Scl_InOut"
	.byte	0xb
	.byte	0x2d
	.uaword	0x49d4
	.uleb128 0x1d
	.uaword	0x497a
	.uleb128 0x16
	.byte	0x14
	.byte	0xb
	.byte	0x30
	.uaword	0x4a15
	.uleb128 0x17
	.string	"module"
	.byte	0xb
	.byte	0x32
	.uaword	0x49b6
	.byte	0
	.uleb128 0x17
	.string	"pin"
	.byte	0xb
	.byte	0x33
	.uaword	0x29dc
	.byte	0x4
	.uleb128 0x1c
	.uaword	.LASF29
	.byte	0xb
	.byte	0x34
	.uaword	0x320
	.byte	0xc
	.uleb128 0x1c
	.uaword	.LASF30
	.byte	0xb
	.byte	0x35
	.uaword	0x27e2
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.string	"IfxI2c_Sda_InOut"
	.byte	0xb
	.byte	0x36
	.uaword	0x4a2d
	.uleb128 0x1d
	.uaword	0x49d9
	.uleb128 0x4
	.byte	0x4
	.byte	0x2
	.byte	0x36
	.uaword	0x4aab
	.uleb128 0x5
	.string	"IfxI2c_BusStatus_idle"
	.sleb128 0
	.uleb128 0x5
	.string	"IfxI2c_BusStatus_started"
	.sleb128 1
	.uleb128 0x5
	.string	"IfxI2c_BusStatus_busyMaster"
	.sleb128 2
	.uleb128 0x5
	.string	"IfxI2c_BusStatus_remoteSlave"
	.sleb128 3
	.byte	0
	.uleb128 0x3
	.string	"IfxI2c_BusStatus"
	.byte	0x2
	.byte	0x3b
	.uaword	0x4a32
	.uleb128 0x4
	.byte	0x4
	.byte	0x2
	.byte	0x58
	.uaword	0x4c1a
	.uleb128 0x5
	.string	"IfxI2c_ProtocolInterruptSource_addressMatch"
	.sleb128 0
	.uleb128 0x5
	.string	"IfxI2c_ProtocolInterruptSource_generalCall"
	.sleb128 1
	.uleb128 0x5
	.string	"IfxI2c_ProtocolInterruptSource_masterCode"
	.sleb128 2
	.uleb128 0x5
	.string	"IfxI2c_ProtocolInterruptSource_arbitrationLost"
	.sleb128 3
	.uleb128 0x5
	.string	"IfxI2c_ProtocolInterruptSource_notAcknowledgeReceived"
	.sleb128 4
	.uleb128 0x5
	.string	"IfxI2c_ProtocolInterruptSource_transmissionEnd"
	.sleb128 5
	.uleb128 0x5
	.string	"IfxI2c_ProtocolInterruptSource_receiveMode"
	.sleb128 6
	.byte	0
	.uleb128 0x3
	.string	"IfxI2c_ProtocolInterruptSource"
	.byte	0x2
	.byte	0x60
	.uaword	0x4ac3
	.uleb128 0x16
	.byte	0xc
	.byte	0x2
	.byte	0x75
	.uaword	0x4c73
	.uleb128 0x17
	.string	"scl"
	.byte	0x2
	.byte	0x77
	.uaword	0x4c73
	.byte	0
	.uleb128 0x17
	.string	"sda"
	.byte	0x2
	.byte	0x78
	.uaword	0x4c79
	.byte	0x4
	.uleb128 0x17
	.string	"padDriver"
	.byte	0x2
	.byte	0x79
	.uaword	0x299c
	.byte	0x8
	.byte	0
	.uleb128 0x15
	.byte	0x4
	.uaword	0x49bc
	.uleb128 0x15
	.byte	0x4
	.uaword	0x4a15
	.uleb128 0x3
	.string	"IfxI2c_Pins"
	.byte	0x2
	.byte	0x7a
	.uaword	0x4c40
	.uleb128 0x1e
	.byte	0x4
	.byte	0xc
	.uahalf	0x12a
	.uaword	0x4d1b
	.uleb128 0x5
	.string	"IfxI2c_I2c_Status_ok"
	.sleb128 0
	.uleb128 0x5
	.string	"IfxI2c_I2c_Status_nak"
	.sleb128 1
	.uleb128 0x5
	.string	"IfxI2c_I2c_Status_al"
	.sleb128 2
	.uleb128 0x5
	.string	"IfxI2c_I2c_Status_busNotFree"
	.sleb128 3
	.uleb128 0x5
	.string	"IfxI2c_I2c_Status_error"
	.sleb128 4
	.byte	0
	.uleb128 0xc
	.string	"IfxI2c_I2c_Status"
	.byte	0xc
	.uahalf	0x130
	.uaword	0x4c92
	.uleb128 0x1f
	.byte	0x10
	.byte	0xc
	.uahalf	0x13c
	.uaword	0x4d79
	.uleb128 0x13
	.string	"i2c"
	.byte	0xc
	.uahalf	0x13e
	.uaword	0x49b6
	.byte	0
	.uleb128 0x13
	.string	"busStatus"
	.byte	0xc
	.uahalf	0x13f
	.uaword	0x4aab
	.byte	0x4
	.uleb128 0x14
	.uaword	.LASF31
	.byte	0xc
	.uahalf	0x140
	.uaword	0x4d1b
	.byte	0x8
	.uleb128 0x14
	.uaword	.LASF32
	.byte	0xc
	.uahalf	0x141
	.uaword	0x232
	.byte	0xc
	.byte	0
	.uleb128 0xc
	.string	"IfxI2c_I2c"
	.byte	0xc
	.uahalf	0x142
	.uaword	0x4d35
	.uleb128 0x1f
	.byte	0xc
	.byte	0xc
	.uahalf	0x146
	.uaword	0x4dbe
	.uleb128 0x13
	.string	"i2c"
	.byte	0xc
	.uahalf	0x148
	.uaword	0x49b6
	.byte	0
	.uleb128 0x14
	.uaword	.LASF32
	.byte	0xc
	.uahalf	0x149
	.uaword	0x232
	.byte	0x4
	.uleb128 0x13
	.string	"pins"
	.byte	0xc
	.uahalf	0x14a
	.uaword	0x4dbe
	.byte	0x8
	.byte	0
	.uleb128 0x15
	.byte	0x4
	.uaword	0x4dc4
	.uleb128 0x1d
	.uaword	0x4c7f
	.uleb128 0xc
	.string	"IfxI2c_I2c_Config"
	.byte	0xc
	.uahalf	0x14b
	.uaword	0x4d8c
	.uleb128 0x1f
	.byte	0x8
	.byte	0xc
	.uahalf	0x14f
	.uaword	0x4e07
	.uleb128 0x13
	.string	"i2c"
	.byte	0xc
	.uahalf	0x151
	.uaword	0x4e07
	.byte	0
	.uleb128 0x14
	.uaword	.LASF33
	.byte	0xc
	.uahalf	0x152
	.uaword	0x1c7
	.byte	0x4
	.byte	0
	.uleb128 0x15
	.byte	0x4
	.uaword	0x4d79
	.uleb128 0xc
	.string	"IfxI2c_I2c_Device"
	.byte	0xc
	.uahalf	0x153
	.uaword	0x4de3
	.uleb128 0x1f
	.byte	0x8
	.byte	0xc
	.uahalf	0x157
	.uaword	0x4e4b
	.uleb128 0x13
	.string	"i2c"
	.byte	0xc
	.uahalf	0x159
	.uaword	0x4e07
	.byte	0
	.uleb128 0x14
	.uaword	.LASF33
	.byte	0xc
	.uahalf	0x15a
	.uaword	0x1c7
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.string	"IfxI2c_I2c_deviceConfig"
	.byte	0xc
	.uahalf	0x15b
	.uaword	0x4e27
	.uleb128 0x20
	.string	"IfxCpu_areInterruptsEnabled"
	.byte	0x3
	.uahalf	0x21d
	.byte	0x1
	.uaword	0x254
	.byte	0x3
	.uaword	0x4eb2
	.uleb128 0x21
	.string	"reg"
	.byte	0x3
	.uahalf	0x21f
	.uaword	0x448
	.uleb128 0x22
	.uleb128 0x21
	.string	"__res"
	.byte	0x3
	.uahalf	0x220
	.uaword	0x331
	.byte	0
	.byte	0
	.uleb128 0x23
	.string	"__nop"
	.byte	0x4
	.uahalf	0x557
	.byte	0x1
	.byte	0x3
	.uleb128 0x24
	.string	"IfxI2c_stop"
	.byte	0x2
	.uahalf	0x373
	.byte	0x1
	.byte	0x3
	.uaword	0x4ee1
	.uleb128 0x25
	.string	"i2c"
	.byte	0x2
	.uahalf	0x373
	.uaword	0x49b6
	.byte	0
	.uleb128 0x24
	.string	"IfxI2c_run"
	.byte	0x2
	.uahalf	0x34f
	.byte	0x1
	.byte	0x3
	.uaword	0x4f03
	.uleb128 0x25
	.string	"i2c"
	.byte	0x2
	.uahalf	0x34f
	.uaword	0x49b6
	.byte	0
	.uleb128 0x20
	.string	"IfxI2c_getBusStatus"
	.byte	0x2
	.uahalf	0x2d8
	.byte	0x1
	.uaword	0x4aab
	.byte	0x3
	.uaword	0x4f32
	.uleb128 0x25
	.string	"i2c"
	.byte	0x2
	.uahalf	0x2d8
	.uaword	0x49b6
	.byte	0
	.uleb128 0x20
	.string	"IfxI2c_busIsFree"
	.byte	0x2
	.uahalf	0x228
	.byte	0x1
	.uaword	0x254
	.byte	0x3
	.uaword	0x4f6b
	.uleb128 0x25
	.string	"i2c"
	.byte	0x2
	.uahalf	0x228
	.uaword	0x49b6
	.uleb128 0x21
	.string	"free"
	.byte	0x2
	.uahalf	0x22a
	.uaword	0x254
	.byte	0
	.uleb128 0x24
	.string	"IfxI2c_clearAllProtocolInterruptSources"
	.byte	0x2
	.uahalf	0x23b
	.byte	0x1
	.byte	0x3
	.uaword	0x4faa
	.uleb128 0x25
	.string	"i2c"
	.byte	0x2
	.uahalf	0x23b
	.uaword	0x49b6
	.byte	0
	.uleb128 0x24
	.string	"IfxI2c_clearAllErrorInterruptSources"
	.byte	0x2
	.uahalf	0x235
	.byte	0x1
	.byte	0x3
	.uaword	0x4fe6
	.uleb128 0x25
	.string	"i2c"
	.byte	0x2
	.uahalf	0x235
	.uaword	0x49b6
	.byte	0
	.uleb128 0x24
	.string	"IfxI2c_setTransmitPacketSize"
	.byte	0x2
	.uahalf	0x36d
	.byte	0x1
	.byte	0x3
	.uaword	0x5027
	.uleb128 0x25
	.string	"i2c"
	.byte	0x2
	.uahalf	0x36d
	.uaword	0x49b6
	.uleb128 0x25
	.string	"size"
	.byte	0x2
	.uahalf	0x36d
	.uaword	0x296
	.byte	0
	.uleb128 0x24
	.string	"IfxI2c_setReceivePacketSize"
	.byte	0x2
	.uahalf	0x35b
	.byte	0x1
	.byte	0x3
	.uaword	0x5067
	.uleb128 0x25
	.string	"i2c"
	.byte	0x2
	.uahalf	0x35b
	.uaword	0x49b6
	.uleb128 0x25
	.string	"size"
	.byte	0x2
	.uahalf	0x35b
	.uaword	0x296
	.byte	0
	.uleb128 0x24
	.string	"IfxI2c_writeFifo"
	.byte	0x2
	.uahalf	0x380
	.byte	0x1
	.byte	0x3
	.uaword	0x509b
	.uleb128 0x25
	.string	"i2c"
	.byte	0x2
	.uahalf	0x380
	.uaword	0x49b6
	.uleb128 0x26
	.uaword	.LASF34
	.byte	0x2
	.uahalf	0x380
	.uaword	0x224
	.byte	0
	.uleb128 0x24
	.string	"IfxI2c_clearLastSingleRequestInterruptSource"
	.byte	0x2
	.uahalf	0x253
	.byte	0x1
	.byte	0x3
	.uaword	0x50df
	.uleb128 0x25
	.string	"i2c"
	.byte	0x2
	.uahalf	0x253
	.uaword	0x49b6
	.byte	0
	.uleb128 0x24
	.string	"IfxI2c_clearSingleRequestInterruptSource"
	.byte	0x2
	.uahalf	0x25f
	.byte	0x1
	.byte	0x3
	.uaword	0x511f
	.uleb128 0x25
	.string	"i2c"
	.byte	0x2
	.uahalf	0x25f
	.uaword	0x49b6
	.byte	0
	.uleb128 0x24
	.string	"IfxI2c_clearLastBurstRequestInterruptSource"
	.byte	0x2
	.uahalf	0x24d
	.byte	0x1
	.byte	0x3
	.uaword	0x5162
	.uleb128 0x25
	.string	"i2c"
	.byte	0x2
	.uahalf	0x24d
	.uaword	0x49b6
	.byte	0
	.uleb128 0x24
	.string	"IfxI2c_clearBurstRequestInterruptSource"
	.byte	0x2
	.uahalf	0x241
	.byte	0x1
	.byte	0x3
	.uaword	0x51a1
	.uleb128 0x25
	.string	"i2c"
	.byte	0x2
	.uahalf	0x241
	.uaword	0x49b6
	.byte	0
	.uleb128 0x20
	.string	"IfxI2c_getProtocolInterruptSourceStatus"
	.byte	0x2
	.uahalf	0x323
	.byte	0x1
	.uaword	0x254
	.byte	0x3
	.uaword	0x51f3
	.uleb128 0x25
	.string	"i2c"
	.byte	0x2
	.uahalf	0x323
	.uaword	0x49b6
	.uleb128 0x25
	.string	"source"
	.byte	0x2
	.uahalf	0x323
	.uaword	0x4c1a
	.byte	0
	.uleb128 0x24
	.string	"IfxI2c_clearProtocolInterruptSource"
	.byte	0x2
	.uahalf	0x259
	.byte	0x1
	.byte	0x3
	.uaword	0x523d
	.uleb128 0x25
	.string	"i2c"
	.byte	0x2
	.uahalf	0x259
	.uaword	0x49b6
	.uleb128 0x25
	.string	"source"
	.byte	0x2
	.uahalf	0x259
	.uaword	0x4c1a
	.byte	0
	.uleb128 0x20
	.string	"IfxCpu_disableInterrupts"
	.byte	0x3
	.uahalf	0x225
	.byte	0x1
	.uaword	0x254
	.byte	0x3
	.uaword	0x5275
	.uleb128 0x21
	.string	"enabled"
	.byte	0x3
	.uahalf	0x227
	.uaword	0x254
	.byte	0
	.uleb128 0x24
	.string	"IfxCpu_restoreInterrupts"
	.byte	0x3
	.uahalf	0x2fc
	.byte	0x1
	.byte	0x3
	.uaword	0x52a9
	.uleb128 0x25
	.string	"enabled"
	.byte	0x3
	.uahalf	0x2fc
	.uaword	0x254
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.string	"IfxI2c_I2c_initConfig"
	.byte	0x1
	.byte	0x23
	.byte	0x1
	.uaword	.LFB259
	.uaword	.LFE259
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x52f1
	.uleb128 0x28
	.string	"config"
	.byte	0x1
	.byte	0x23
	.uaword	0x52f1
	.byte	0x1
	.byte	0x64
	.uleb128 0x28
	.string	"i2c"
	.byte	0x1
	.byte	0x23
	.uaword	0x49b6
	.byte	0x1
	.byte	0x65
	.byte	0
	.uleb128 0x15
	.byte	0x4
	.uaword	0x4dc9
	.uleb128 0x27
	.byte	0x1
	.string	"IfxI2c_I2c_initDevice"
	.byte	0x1
	.byte	0x2b
	.byte	0x1
	.uaword	.LFB260
	.uaword	.LFE260
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x533c
	.uleb128 0x29
	.uaword	.LASF35
	.byte	0x1
	.byte	0x2b
	.uaword	0x533c
	.byte	0x1
	.byte	0x64
	.uleb128 0x29
	.uaword	.LASF36
	.byte	0x1
	.byte	0x2b
	.uaword	0x5342
	.byte	0x1
	.byte	0x65
	.byte	0
	.uleb128 0x15
	.byte	0x4
	.uaword	0x4e0d
	.uleb128 0x15
	.byte	0x4
	.uaword	0x5348
	.uleb128 0x1d
	.uaword	0x4e4b
	.uleb128 0x27
	.byte	0x1
	.string	"IfxI2c_I2c_initDeviceConfig"
	.byte	0x1
	.byte	0x32
	.byte	0x1
	.uaword	.LFB261
	.uaword	.LFE261
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x5398
	.uleb128 0x29
	.uaword	.LASF36
	.byte	0x1
	.byte	0x32
	.uaword	0x5398
	.byte	0x1
	.byte	0x64
	.uleb128 0x28
	.string	"i2c"
	.byte	0x1
	.byte	0x32
	.uaword	0x4e07
	.byte	0x1
	.byte	0x65
	.byte	0
	.uleb128 0x15
	.byte	0x4
	.uaword	0x4e4b
	.uleb128 0x27
	.byte	0x1
	.string	"IfxI2c_I2c_initModule"
	.byte	0x1
	.byte	0x39
	.byte	0x1
	.uaword	.LFB262
	.uaword	.LFE262
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x54a0
	.uleb128 0x2a
	.string	"i2c"
	.byte	0x1
	.byte	0x39
	.uaword	0x4e07
	.uaword	.LLST0
	.uleb128 0x2a
	.string	"config"
	.byte	0x1
	.byte	0x39
	.uaword	0x54a0
	.uaword	.LLST1
	.uleb128 0x2b
	.string	"i2cSFR"
	.byte	0x1
	.byte	0x3b
	.uaword	0x49b6
	.byte	0x1
	.byte	0x6f
	.uleb128 0x2c
	.uaword	0x4ebe
	.uaword	.LBB168
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x3f
	.uaword	0x5414
	.uleb128 0x2d
	.uaword	0x4ed4
	.byte	0x1
	.byte	0x6f
	.byte	0
	.uleb128 0x2c
	.uaword	0x4ee1
	.uaword	.LBB172
	.uaword	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0x43
	.uaword	0x542f
	.uleb128 0x2d
	.uaword	0x4ef6
	.byte	0x1
	.byte	0x6f
	.byte	0
	.uleb128 0x2c
	.uaword	0x4f03
	.uaword	.LBB176
	.uaword	.Ldebug_ranges0+0x30
	.byte	0x1
	.byte	0x45
	.uaword	0x544a
	.uleb128 0x2d
	.uaword	0x4f25
	.byte	0x1
	.byte	0x6f
	.byte	0
	.uleb128 0x2e
	.uaword	.LVL6
	.uaword	0x60c3
	.uaword	0x545e
	.uleb128 0x2f
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.uaword	.LVL7
	.uaword	0x60e8
	.uaword	0x5472
	.uleb128 0x2f
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.uaword	.LVL8
	.uaword	0x6112
	.uaword	0x5486
	.uleb128 0x2f
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.uaword	.LVL9
	.uaword	0x613b
	.uleb128 0x31
	.uaword	.LVL10
	.uaword	0x616b
	.uleb128 0x2f
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x15
	.byte	0x4
	.uaword	0x54a6
	.uleb128 0x1d
	.uaword	0x4dc9
	.uleb128 0x32
	.byte	0x1
	.string	"IfxI2c_I2c_read"
	.byte	0x1
	.byte	0x4a
	.byte	0x1
	.uaword	0x4d1b
	.uaword	.LFB263
	.uaword	.LFE263
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x5b03
	.uleb128 0x33
	.uaword	.LASF35
	.byte	0x1
	.byte	0x4a
	.uaword	0x533c
	.uaword	.LLST2
	.uleb128 0x2a
	.string	"data"
	.byte	0x1
	.byte	0x4a
	.uaword	0x5b03
	.uaword	.LLST3
	.uleb128 0x2a
	.string	"size"
	.byte	0x1
	.byte	0x4a
	.uaword	0x296
	.uaword	.LLST4
	.uleb128 0x34
	.uaword	.LASF31
	.byte	0x1
	.byte	0x4c
	.uaword	0x4d1b
	.uaword	.LLST5
	.uleb128 0x2b
	.string	"i2c"
	.byte	0x1
	.byte	0x4d
	.uaword	0x49b6
	.byte	0x1
	.byte	0x6f
	.uleb128 0x34
	.uaword	.LASF34
	.byte	0x1
	.byte	0x4e
	.uaword	0x224
	.uaword	.LLST6
	.uleb128 0x35
	.string	"slAddr"
	.byte	0x1
	.byte	0x4f
	.uaword	0x1c7
	.uaword	.LLST7
	.uleb128 0x2b
	.string	"rxData"
	.byte	0x1
	.byte	0x51
	.uaword	0x224
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x35
	.string	"bytesToReceive"
	.byte	0x1
	.byte	0x52
	.uaword	0x216
	.uaword	.LLST8
	.uleb128 0x35
	.string	"bytePtrRxData"
	.byte	0x1
	.byte	0x53
	.uaword	0x5b0e
	.uaword	.LLST9
	.uleb128 0x35
	.string	"bytes"
	.byte	0x1
	.byte	0x54
	.uaword	0x224
	.uaword	.LLST10
	.uleb128 0x36
	.uaword	0x4f32
	.uaword	.LBB180
	.uaword	.LBE180
	.byte	0x1
	.byte	0x57
	.uaword	0x55c2
	.uleb128 0x2d
	.uaword	0x4f51
	.byte	0x1
	.byte	0x6f
	.uleb128 0x37
	.uaword	.LBB181
	.uaword	.LBE181
	.uleb128 0x38
	.uaword	0x4f5d
	.uaword	.LLST11
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uaword	0x4f6b
	.uaword	.LBB182
	.uaword	.Ldebug_ranges0+0x48
	.byte	0x1
	.byte	0x5f
	.uaword	0x55df
	.uleb128 0x39
	.uaword	0x4f9d
	.uaword	.LLST12
	.byte	0
	.uleb128 0x2c
	.uaword	0x5067
	.uaword	.LBB185
	.uaword	.Ldebug_ranges0+0x60
	.byte	0x1
	.byte	0x66
	.uaword	0x5605
	.uleb128 0x39
	.uaword	0x508e
	.uaword	.LLST13
	.uleb128 0x39
	.uaword	0x5082
	.uaword	.LLST14
	.byte	0
	.uleb128 0x36
	.uaword	0x4faa
	.uaword	.LBB189
	.uaword	.LBE189
	.byte	0x1
	.byte	0x60
	.uaword	0x5622
	.uleb128 0x39
	.uaword	0x4fd9
	.uaword	.LLST15
	.byte	0
	.uleb128 0x36
	.uaword	0x4fe6
	.uaword	.LBB191
	.uaword	.LBE191
	.byte	0x1
	.byte	0x64
	.uaword	0x5648
	.uleb128 0x39
	.uaword	0x5019
	.uaword	.LLST16
	.uleb128 0x39
	.uaword	0x500d
	.uaword	.LLST17
	.byte	0
	.uleb128 0x36
	.uaword	0x5027
	.uaword	.LBB193
	.uaword	.LBE193
	.byte	0x1
	.byte	0x65
	.uaword	0x566e
	.uleb128 0x39
	.uaword	0x5059
	.uaword	.LLST18
	.uleb128 0x39
	.uaword	0x504d
	.uaword	.LLST19
	.byte	0
	.uleb128 0x36
	.uaword	0x509b
	.uaword	.LBB196
	.uaword	.LBE196
	.byte	0x1
	.byte	0x67
	.uaword	0x568b
	.uleb128 0x39
	.uaword	0x50d2
	.uaword	.LLST20
	.byte	0
	.uleb128 0x36
	.uaword	0x50df
	.uaword	.LBB198
	.uaword	.LBE198
	.byte	0x1
	.byte	0x68
	.uaword	0x56a8
	.uleb128 0x39
	.uaword	0x5112
	.uaword	.LLST21
	.byte	0
	.uleb128 0x36
	.uaword	0x511f
	.uaword	.LBB200
	.uaword	.LBE200
	.byte	0x1
	.byte	0x69
	.uaword	0x56c5
	.uleb128 0x39
	.uaword	0x5155
	.uaword	.LLST22
	.byte	0
	.uleb128 0x36
	.uaword	0x5162
	.uaword	.LBB202
	.uaword	.LBE202
	.byte	0x1
	.byte	0x6a
	.uaword	0x56e2
	.uleb128 0x39
	.uaword	0x5194
	.uaword	.LLST23
	.byte	0
	.uleb128 0x3a
	.uaword	.Ldebug_ranges0+0x78
	.uaword	0x5a29
	.uleb128 0x35
	.string	"ris"
	.byte	0x1
	.byte	0xfe
	.uaword	0x224
	.uaword	.LLST24
	.uleb128 0x3b
	.uaword	0x4faa
	.uaword	.LBB205
	.uaword	.LBE205
	.byte	0x1
	.uahalf	0x109
	.uaword	0x5718
	.uleb128 0x39
	.uaword	0x4fd9
	.uaword	.LLST25
	.byte	0
	.uleb128 0x3a
	.uaword	.Ldebug_ranges0+0xb0
	.uaword	0x58d9
	.uleb128 0x3c
	.uaword	.LASF37
	.byte	0x1
	.byte	0x85
	.uaword	0x254
	.uleb128 0x35
	.string	"i"
	.byte	0x1
	.byte	0x86
	.uaword	0x224
	.uaword	.LLST26
	.uleb128 0x36
	.uaword	0x523d
	.uaword	.LBB208
	.uaword	.LBE208
	.byte	0x1
	.byte	0x85
	.uaword	0x57a3
	.uleb128 0x37
	.uaword	.LBB209
	.uaword	.LBE209
	.uleb128 0x3d
	.uaword	0x5264
	.uleb128 0x3b
	.uaword	0x4e6b
	.uaword	.LBB210
	.uaword	.LBE210
	.byte	0x3
	.uahalf	0x228
	.uaword	0x5791
	.uleb128 0x37
	.uaword	.LBB211
	.uaword	.LBE211
	.uleb128 0x3d
	.uaword	0x4e95
	.uleb128 0x37
	.uaword	.LBB212
	.uaword	.LBE212
	.uleb128 0x38
	.uaword	0x4ea2
	.uaword	.LLST27
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3e
	.uaword	0x4eb2
	.uaword	.LBB213
	.uaword	.LBE213
	.byte	0x3
	.uahalf	0x22a
	.byte	0
	.byte	0
	.uleb128 0x3a
	.uaword	.Ldebug_ranges0+0xd8
	.uaword	0x5877
	.uleb128 0x35
	.string	"ris"
	.byte	0x1
	.byte	0x95
	.uaword	0x224
	.uaword	.LLST28
	.uleb128 0x3a
	.uaword	.Ldebug_ranges0+0x100
	.uaword	0x5842
	.uleb128 0x35
	.string	"k"
	.byte	0x1
	.byte	0x9f
	.uaword	0x224
	.uaword	.LLST29
	.uleb128 0x36
	.uaword	0x509b
	.uaword	.LBB217
	.uaword	.LBE217
	.byte	0x1
	.byte	0xa6
	.uaword	0x57ee
	.uleb128 0x39
	.uaword	0x50d2
	.uaword	.LLST30
	.byte	0
	.uleb128 0x36
	.uaword	0x50df
	.uaword	.LBB219
	.uaword	.LBE219
	.byte	0x1
	.byte	0xa7
	.uaword	0x580b
	.uleb128 0x39
	.uaword	0x5112
	.uaword	.LLST31
	.byte	0
	.uleb128 0x36
	.uaword	0x511f
	.uaword	.LBB221
	.uaword	.LBE221
	.byte	0x1
	.byte	0xa8
	.uaword	0x5828
	.uleb128 0x39
	.uaword	0x5155
	.uaword	.LLST32
	.byte	0
	.uleb128 0x3f
	.uaword	0x5162
	.uaword	.LBB223
	.uaword	.LBE223
	.byte	0x1
	.byte	0xa9
	.uleb128 0x39
	.uaword	0x5194
	.uaword	.LLST33
	.byte	0
	.byte	0
	.uleb128 0x36
	.uaword	0x4f6b
	.uaword	.LBB227
	.uaword	.LBE227
	.byte	0x1
	.byte	0xaf
	.uaword	0x585f
	.uleb128 0x39
	.uaword	0x4f9d
	.uaword	.LLST34
	.byte	0
	.uleb128 0x3f
	.uaword	0x4faa
	.uaword	.LBB229
	.uaword	.LBE229
	.byte	0x1
	.byte	0xb6
	.uleb128 0x2d
	.uaword	0x4fd9
	.byte	0x1
	.byte	0x6f
	.byte	0
	.byte	0
	.uleb128 0x36
	.uaword	0x5275
	.uaword	.LBB232
	.uaword	.LBE232
	.byte	0x1
	.byte	0xbc
	.uaword	0x5890
	.uleb128 0x40
	.uaword	0x5298
	.byte	0
	.uleb128 0x36
	.uaword	0x51a1
	.uaword	.LBB234
	.uaword	.LBE234
	.byte	0x1
	.byte	0xbf
	.uaword	0x58b6
	.uleb128 0x39
	.uaword	0x51e3
	.uaword	.LLST35
	.uleb128 0x39
	.uaword	0x51d7
	.uaword	.LLST36
	.byte	0
	.uleb128 0x3f
	.uaword	0x51f3
	.uaword	.LBB236
	.uaword	.LBE236
	.byte	0x1
	.byte	0xc2
	.uleb128 0x39
	.uaword	0x522d
	.uaword	.LLST37
	.uleb128 0x39
	.uaword	0x5221
	.uaword	.LLST38
	.byte	0
	.byte	0
	.uleb128 0x3a
	.uaword	.Ldebug_ranges0+0x120
	.uaword	0x5a0e
	.uleb128 0x35
	.string	"ris"
	.byte	0x1
	.byte	0xcd
	.uaword	0x224
	.uaword	.LLST39
	.uleb128 0x36
	.uaword	0x51a1
	.uaword	.LBB242
	.uaword	.LBE242
	.byte	0x1
	.byte	0xc7
	.uaword	0x5917
	.uleb128 0x39
	.uaword	0x51e3
	.uaword	.LLST40
	.uleb128 0x39
	.uaword	0x51d7
	.uaword	.LLST41
	.byte	0
	.uleb128 0x36
	.uaword	0x51f3
	.uaword	.LBB244
	.uaword	.LBE244
	.byte	0x1
	.byte	0xca
	.uaword	0x593d
	.uleb128 0x39
	.uaword	0x522d
	.uaword	.LLST42
	.uleb128 0x39
	.uaword	0x5221
	.uaword	.LLST43
	.byte	0
	.uleb128 0x36
	.uaword	0x4f6b
	.uaword	.LBB246
	.uaword	.LBE246
	.byte	0x1
	.byte	0xd2
	.uaword	0x595a
	.uleb128 0x39
	.uaword	0x4f9d
	.uaword	.LLST44
	.byte	0
	.uleb128 0x36
	.uaword	0x4faa
	.uaword	.LBB248
	.uaword	.LBE248
	.byte	0x1
	.byte	0xd8
	.uaword	0x5977
	.uleb128 0x39
	.uaword	0x4fd9
	.uaword	.LLST45
	.byte	0
	.uleb128 0x41
	.uaword	.Ldebug_ranges0+0x140
	.uleb128 0x35
	.string	"i"
	.byte	0x1
	.byte	0xdf
	.uaword	0x224
	.uaword	.LLST46
	.uleb128 0x41
	.uaword	.Ldebug_ranges0+0x158
	.uleb128 0x35
	.string	"k"
	.byte	0x1
	.byte	0xee
	.uaword	0x224
	.uaword	.LLST47
	.uleb128 0x2c
	.uaword	0x509b
	.uaword	.LBB252
	.uaword	.Ldebug_ranges0+0x170
	.byte	0x1
	.byte	0xf0
	.uaword	0x59b8
	.uleb128 0x39
	.uaword	0x50d2
	.uaword	.LLST48
	.byte	0
	.uleb128 0x2c
	.uaword	0x50df
	.uaword	.LBB258
	.uaword	.Ldebug_ranges0+0x198
	.byte	0x1
	.byte	0xf1
	.uaword	0x59d5
	.uleb128 0x39
	.uaword	0x5112
	.uaword	.LLST49
	.byte	0
	.uleb128 0x2c
	.uaword	0x511f
	.uaword	.LBB261
	.uaword	.Ldebug_ranges0+0x1b0
	.byte	0x1
	.byte	0xf2
	.uaword	0x59f2
	.uleb128 0x39
	.uaword	0x5155
	.uaword	.LLST50
	.byte	0
	.uleb128 0x42
	.uaword	0x5162
	.uaword	.LBB264
	.uaword	.Ldebug_ranges0+0x1c8
	.byte	0x1
	.byte	0xf3
	.uleb128 0x39
	.uaword	0x5194
	.uaword	.LLST51
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x43
	.uaword	0x4f6b
	.uaword	.LBB274
	.uaword	.LBE274
	.byte	0x1
	.uahalf	0x103
	.uleb128 0x39
	.uaword	0x4f9d
	.uaword	.LLST52
	.byte	0
	.byte	0
	.uleb128 0x44
	.uaword	0x4f03
	.uaword	.LBB280
	.uaword	.Ldebug_ranges0+0x1e0
	.byte	0x1
	.uahalf	0x10f
	.uaword	0x5a47
	.uleb128 0x39
	.uaword	0x4f25
	.uaword	.LLST53
	.byte	0
	.uleb128 0x2c
	.uaword	0x4f03
	.uaword	.LBB286
	.uaword	.Ldebug_ranges0+0x200
	.byte	0x1
	.byte	0x5a
	.uaword	0x5a64
	.uleb128 0x39
	.uaword	0x4f25
	.uaword	.LLST54
	.byte	0
	.uleb128 0x36
	.uaword	0x51a1
	.uaword	.LBB290
	.uaword	.LBE290
	.byte	0x1
	.byte	0x76
	.uaword	0x5a85
	.uleb128 0x45
	.uaword	0x51e3
	.byte	0x3
	.uleb128 0x2d
	.uaword	0x51d7
	.byte	0x1
	.byte	0x6f
	.byte	0
	.uleb128 0x36
	.uaword	0x51f3
	.uaword	.LBB292
	.uaword	.LBE292
	.byte	0x1
	.byte	0x78
	.uaword	0x5aab
	.uleb128 0x39
	.uaword	0x522d
	.uaword	.LLST55
	.uleb128 0x39
	.uaword	0x5221
	.uaword	.LLST56
	.byte	0
	.uleb128 0x36
	.uaword	0x51a1
	.uaword	.LBB294
	.uaword	.LBE294
	.byte	0x1
	.byte	0x7b
	.uaword	0x5acc
	.uleb128 0x45
	.uaword	0x51e3
	.byte	0x4
	.uleb128 0x2d
	.uaword	0x51d7
	.byte	0x1
	.byte	0x6f
	.byte	0
	.uleb128 0x36
	.uaword	0x51f3
	.uaword	.LBB299
	.uaword	.LBE299
	.byte	0x1
	.byte	0x7d
	.uaword	0x5af2
	.uleb128 0x39
	.uaword	0x522d
	.uaword	.LLST57
	.uleb128 0x39
	.uaword	0x5221
	.uaword	.LLST58
	.byte	0
	.uleb128 0x31
	.uaword	.LVL31
	.uaword	0x6193
	.uleb128 0x2f
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x15
	.byte	0x4
	.uaword	0x5b09
	.uleb128 0x8
	.uaword	0x1c7
	.uleb128 0x15
	.byte	0x4
	.uaword	0x1c7
	.uleb128 0x46
	.byte	0x1
	.string	"IfxI2c_I2c_write"
	.byte	0x1
	.uahalf	0x115
	.byte	0x1
	.uaword	0x4d1b
	.uaword	.LFB264
	.uaword	.LFE264
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x60c3
	.uleb128 0x47
	.uaword	.LASF35
	.byte	0x1
	.uahalf	0x115
	.uaword	0x533c
	.uaword	.LLST59
	.uleb128 0x48
	.string	"data"
	.byte	0x1
	.uahalf	0x115
	.uaword	0x5b03
	.uaword	.LLST60
	.uleb128 0x48
	.string	"size"
	.byte	0x1
	.uahalf	0x115
	.uaword	0x296
	.uaword	.LLST61
	.uleb128 0x49
	.uaword	.LASF31
	.byte	0x1
	.uahalf	0x117
	.uaword	0x4d1b
	.uaword	.LLST62
	.uleb128 0x4a
	.string	"i2c"
	.byte	0x1
	.uahalf	0x118
	.uaword	0x49b6
	.byte	0x1
	.byte	0x6f
	.uleb128 0x4b
	.string	"slAddr"
	.byte	0x1
	.uahalf	0x119
	.uaword	0x1c7
	.uaword	.LLST63
	.uleb128 0x4c
	.uaword	.LASF34
	.byte	0x1
	.uahalf	0x11a
	.uaword	0x224
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x4b
	.string	"bytesToSend"
	.byte	0x1
	.uahalf	0x11b
	.uaword	0x216
	.uaword	.LLST64
	.uleb128 0x4b
	.string	"bytes"
	.byte	0x1
	.uahalf	0x11c
	.uaword	0x224
	.uaword	.LLST65
	.uleb128 0x4b
	.string	"bytePtrPacket"
	.byte	0x1
	.uahalf	0x11d
	.uaword	0x5b0e
	.uaword	.LLST66
	.uleb128 0x3b
	.uaword	0x4f32
	.uaword	.LBB303
	.uaword	.LBE303
	.byte	0x1
	.uahalf	0x11f
	.uaword	0x5c23
	.uleb128 0x2d
	.uaword	0x4f51
	.byte	0x1
	.byte	0x6f
	.uleb128 0x37
	.uaword	.LBB304
	.uaword	.LBE304
	.uleb128 0x38
	.uaword	0x4f5d
	.uaword	.LLST67
	.byte	0
	.byte	0
	.uleb128 0x44
	.uaword	0x4f6b
	.uaword	.LBB305
	.uaword	.Ldebug_ranges0+0x218
	.byte	0x1
	.uahalf	0x129
	.uaword	0x5c41
	.uleb128 0x39
	.uaword	0x4f9d
	.uaword	.LLST68
	.byte	0
	.uleb128 0x44
	.uaword	0x5067
	.uaword	.LBB308
	.uaword	.Ldebug_ranges0+0x230
	.byte	0x1
	.uahalf	0x130
	.uaword	0x5c68
	.uleb128 0x39
	.uaword	0x508e
	.uaword	.LLST69
	.uleb128 0x39
	.uaword	0x5082
	.uaword	.LLST70
	.byte	0
	.uleb128 0x44
	.uaword	0x4faa
	.uaword	.LBB313
	.uaword	.Ldebug_ranges0+0x250
	.byte	0x1
	.uahalf	0x12a
	.uaword	0x5c86
	.uleb128 0x39
	.uaword	0x4fd9
	.uaword	.LLST71
	.byte	0
	.uleb128 0x3b
	.uaword	0x4fe6
	.uaword	.LBB318
	.uaword	.LBE318
	.byte	0x1
	.uahalf	0x12f
	.uaword	0x5cad
	.uleb128 0x39
	.uaword	0x5019
	.uaword	.LLST72
	.uleb128 0x39
	.uaword	0x500d
	.uaword	.LLST71
	.byte	0
	.uleb128 0x3b
	.uaword	0x509b
	.uaword	.LBB321
	.uaword	.LBE321
	.byte	0x1
	.uahalf	0x131
	.uaword	0x5ccb
	.uleb128 0x39
	.uaword	0x50d2
	.uaword	.LLST74
	.byte	0
	.uleb128 0x3b
	.uaword	0x50df
	.uaword	.LBB323
	.uaword	.LBE323
	.byte	0x1
	.uahalf	0x132
	.uaword	0x5ce9
	.uleb128 0x39
	.uaword	0x5112
	.uaword	.LLST75
	.byte	0
	.uleb128 0x3b
	.uaword	0x511f
	.uaword	.LBB325
	.uaword	.LBE325
	.byte	0x1
	.uahalf	0x133
	.uaword	0x5d07
	.uleb128 0x39
	.uaword	0x5155
	.uaword	.LLST76
	.byte	0
	.uleb128 0x3b
	.uaword	0x5162
	.uaword	.LBB327
	.uaword	.LBE327
	.byte	0x1
	.uahalf	0x134
	.uaword	0x5d25
	.uleb128 0x39
	.uaword	0x5194
	.uaword	.LLST77
	.byte	0
	.uleb128 0x3b
	.uaword	0x51a1
	.uaword	.LBB329
	.uaword	.LBE329
	.byte	0x1
	.uahalf	0x137
	.uaword	0x5d4c
	.uleb128 0x39
	.uaword	0x51e3
	.uaword	.LLST78
	.uleb128 0x39
	.uaword	0x51d7
	.uaword	.LLST79
	.byte	0
	.uleb128 0x3b
	.uaword	0x51f3
	.uaword	.LBB331
	.uaword	.LBE331
	.byte	0x1
	.uahalf	0x13a
	.uaword	0x5d73
	.uleb128 0x39
	.uaword	0x522d
	.uaword	.LLST80
	.uleb128 0x39
	.uaword	0x5221
	.uaword	.LLST81
	.byte	0
	.uleb128 0x3b
	.uaword	0x51a1
	.uaword	.LBB333
	.uaword	.LBE333
	.byte	0x1
	.uahalf	0x13d
	.uaword	0x5d9a
	.uleb128 0x39
	.uaword	0x51e3
	.uaword	.LLST82
	.uleb128 0x39
	.uaword	0x51d7
	.uaword	.LLST83
	.byte	0
	.uleb128 0x3b
	.uaword	0x51a1
	.uaword	.LBB335
	.uaword	.LBE335
	.byte	0x1
	.uahalf	0x142
	.uaword	0x5dc1
	.uleb128 0x39
	.uaword	0x51e3
	.uaword	.LLST84
	.uleb128 0x39
	.uaword	0x51d7
	.uaword	.LLST85
	.byte	0
	.uleb128 0x44
	.uaword	0x51f3
	.uaword	.LBB337
	.uaword	.Ldebug_ranges0+0x268
	.byte	0x1
	.uahalf	0x144
	.uaword	0x5de8
	.uleb128 0x39
	.uaword	0x522d
	.uaword	.LLST86
	.uleb128 0x39
	.uaword	0x5221
	.uaword	.LLST87
	.byte	0
	.uleb128 0x44
	.uaword	0x4f03
	.uaword	.LBB341
	.uaword	.Ldebug_ranges0+0x280
	.byte	0x1
	.uahalf	0x1a5
	.uaword	0x5e06
	.uleb128 0x39
	.uaword	0x4f25
	.uaword	.LLST88
	.byte	0
	.uleb128 0x44
	.uaword	0x4f03
	.uaword	.LBB347
	.uaword	.Ldebug_ranges0+0x2a0
	.byte	0x1
	.uahalf	0x122
	.uaword	0x5e24
	.uleb128 0x39
	.uaword	0x4f25
	.uaword	.LLST89
	.byte	0
	.uleb128 0x44
	.uaword	0x51f3
	.uaword	.LBB351
	.uaword	.Ldebug_ranges0+0x2b8
	.byte	0x1
	.uahalf	0x13f
	.uaword	0x5e4b
	.uleb128 0x39
	.uaword	0x522d
	.uaword	.LLST90
	.uleb128 0x39
	.uaword	0x5221
	.uaword	.LLST91
	.byte	0
	.uleb128 0x4d
	.uaword	.LBB355
	.uaword	.LBE355
	.uaword	0x60b2
	.uleb128 0x4b
	.string	"i"
	.byte	0x1
	.uahalf	0x14a
	.uaword	0x224
	.uaword	.LLST92
	.uleb128 0x4b
	.string	"j"
	.byte	0x1
	.uahalf	0x14a
	.uaword	0x224
	.uaword	.LLST93
	.uleb128 0x4e
	.uaword	.LASF37
	.byte	0x1
	.uahalf	0x14d
	.uaword	0x254
	.uleb128 0x4b
	.string	"ris"
	.byte	0x1
	.uahalf	0x194
	.uaword	0x224
	.uaword	.LLST94
	.uleb128 0x3b
	.uaword	0x523d
	.uaword	.LBB356
	.uaword	.LBE356
	.byte	0x1
	.uahalf	0x14d
	.uaword	0x5efb
	.uleb128 0x37
	.uaword	.LBB357
	.uaword	.LBE357
	.uleb128 0x3d
	.uaword	0x5264
	.uleb128 0x3b
	.uaword	0x4e6b
	.uaword	.LBB358
	.uaword	.LBE358
	.byte	0x3
	.uahalf	0x228
	.uaword	0x5ee9
	.uleb128 0x37
	.uaword	.LBB359
	.uaword	.LBE359
	.uleb128 0x3d
	.uaword	0x4e95
	.uleb128 0x37
	.uaword	.LBB360
	.uaword	.LBE360
	.uleb128 0x38
	.uaword	0x4ea2
	.uaword	.LLST95
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3e
	.uaword	0x4eb2
	.uaword	.LBB361
	.uaword	.LBE361
	.byte	0x3
	.uahalf	0x22a
	.byte	0
	.byte	0
	.uleb128 0x44
	.uaword	0x4fe6
	.uaword	.LBB363
	.uaword	.Ldebug_ranges0+0x2d0
	.byte	0x1
	.uahalf	0x14e
	.uaword	0x5f20
	.uleb128 0x39
	.uaword	0x5019
	.uaword	.LLST96
	.uleb128 0x2d
	.uaword	0x500d
	.byte	0x1
	.byte	0x6f
	.byte	0
	.uleb128 0x3a
	.uaword	.Ldebug_ranges0+0x2f0
	.uaword	0x5f72
	.uleb128 0x4b
	.string	"ris"
	.byte	0x1
	.uahalf	0x16f
	.uaword	0x224
	.uaword	.LLST97
	.uleb128 0x44
	.uaword	0x4f6b
	.uaword	.LBB369
	.uaword	.Ldebug_ranges0+0x308
	.byte	0x1
	.uahalf	0x174
	.uaword	0x5f57
	.uleb128 0x39
	.uaword	0x4f9d
	.uaword	.LLST98
	.byte	0
	.uleb128 0x43
	.uaword	0x4faa
	.uaword	.LBB373
	.uaword	.LBE373
	.byte	0x1
	.uahalf	0x17a
	.uleb128 0x39
	.uaword	0x4fd9
	.uaword	.LLST99
	.byte	0
	.byte	0
	.uleb128 0x44
	.uaword	0x5067
	.uaword	.LBB376
	.uaword	.Ldebug_ranges0+0x320
	.byte	0x1
	.uahalf	0x184
	.uaword	0x5f99
	.uleb128 0x39
	.uaword	0x508e
	.uaword	.LLST100
	.uleb128 0x39
	.uaword	0x5082
	.uaword	.LLST101
	.byte	0
	.uleb128 0x3b
	.uaword	0x5275
	.uaword	.LBB380
	.uaword	.LBE380
	.byte	0x1
	.uahalf	0x18b
	.uaword	0x5fb3
	.uleb128 0x40
	.uaword	0x5298
	.byte	0
	.uleb128 0x3b
	.uaword	0x51a1
	.uaword	.LBB382
	.uaword	.LBE382
	.byte	0x1
	.uahalf	0x18e
	.uaword	0x5fda
	.uleb128 0x39
	.uaword	0x51e3
	.uaword	.LLST102
	.uleb128 0x39
	.uaword	0x51d7
	.uaword	.LLST103
	.byte	0
	.uleb128 0x3b
	.uaword	0x51f3
	.uaword	.LBB384
	.uaword	.LBE384
	.byte	0x1
	.uahalf	0x191
	.uaword	0x6001
	.uleb128 0x39
	.uaword	0x522d
	.uaword	.LLST104
	.uleb128 0x39
	.uaword	0x5221
	.uaword	.LLST105
	.byte	0
	.uleb128 0x44
	.uaword	0x4f6b
	.uaword	.LBB386
	.uaword	.Ldebug_ranges0+0x338
	.byte	0x1
	.uahalf	0x199
	.uaword	0x601f
	.uleb128 0x39
	.uaword	0x4f9d
	.uaword	.LLST106
	.byte	0
	.uleb128 0x44
	.uaword	0x4faa
	.uaword	.LBB390
	.uaword	.Ldebug_ranges0+0x350
	.byte	0x1
	.uahalf	0x19f
	.uaword	0x603d
	.uleb128 0x39
	.uaword	0x4fd9
	.uaword	.LLST107
	.byte	0
	.uleb128 0x44
	.uaword	0x509b
	.uaword	.LBB395
	.uaword	.Ldebug_ranges0+0x368
	.byte	0x1
	.uahalf	0x185
	.uaword	0x605b
	.uleb128 0x39
	.uaword	0x50d2
	.uaword	.LLST108
	.byte	0
	.uleb128 0x3b
	.uaword	0x50df
	.uaword	.LBB399
	.uaword	.LBE399
	.byte	0x1
	.uahalf	0x186
	.uaword	0x6079
	.uleb128 0x39
	.uaword	0x5112
	.uaword	.LLST109
	.byte	0
	.uleb128 0x3b
	.uaword	0x511f
	.uaword	.LBB401
	.uaword	.LBE401
	.byte	0x1
	.uahalf	0x187
	.uaword	0x6097
	.uleb128 0x39
	.uaword	0x5155
	.uaword	.LLST110
	.byte	0
	.uleb128 0x43
	.uaword	0x5162
	.uaword	.LBB403
	.uaword	.LBE403
	.byte	0x1
	.uahalf	0x188
	.uleb128 0x39
	.uaword	0x5194
	.uaword	.LLST111
	.byte	0
	.byte	0
	.uleb128 0x31
	.uaword	.LVL126
	.uaword	0x6193
	.uleb128 0x2f
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x4f
	.byte	0x1
	.string	"IfxI2c_enableModule"
	.byte	0x2
	.uahalf	0x1ef
	.byte	0x1
	.byte	0x1
	.uaword	0x60e8
	.uleb128 0x50
	.uaword	0x49b6
	.byte	0
	.uleb128 0x4f
	.byte	0x1
	.string	"IfxI2c_configureAsMaster"
	.byte	0x2
	.uahalf	0x1c3
	.byte	0x1
	.byte	0x1
	.uaword	0x6112
	.uleb128 0x50
	.uaword	0x49b6
	.byte	0
	.uleb128 0x4f
	.byte	0x1
	.string	"IfxI2c_setBaudrate"
	.byte	0x2
	.uahalf	0x220
	.byte	0x1
	.byte	0x1
	.uaword	0x613b
	.uleb128 0x50
	.uaword	0x49b6
	.uleb128 0x50
	.uaword	0x232
	.byte	0
	.uleb128 0x4f
	.byte	0x1
	.string	"IfxI2c_initSclSdaPin"
	.byte	0x2
	.uahalf	0x209
	.byte	0x1
	.byte	0x1
	.uaword	0x616b
	.uleb128 0x50
	.uaword	0x4c73
	.uleb128 0x50
	.uaword	0x4c79
	.uleb128 0x50
	.uaword	0x299c
	.byte	0
	.uleb128 0x51
	.byte	0x1
	.string	"IfxI2c_getBaudrate"
	.byte	0x2
	.uahalf	0x204
	.byte	0x1
	.uaword	0x232
	.byte	0x1
	.uaword	0x6193
	.uleb128 0x50
	.uaword	0x49b6
	.byte	0
	.uleb128 0x52
	.byte	0x1
	.string	"IfxI2c_releaseBus"
	.byte	0x2
	.uahalf	0x20e
	.byte	0x1
	.byte	0x1
	.uleb128 0x50
	.uaword	0x49b6
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
	.uleb128 0x5
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xb
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0x6
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0xf
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x29
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
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2f
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x37
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x39
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x3a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3b
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
	.byte	0
	.byte	0
	.uleb128 0x3d
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3e
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x41
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x42
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
	.byte	0
	.byte	0
	.uleb128 0x43
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x4d
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
	.uleb128 0x4e
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
	.uleb128 0x4f
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
	.uleb128 0x50
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x51
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
	.uleb128 0x52
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
	.uaword	.LVL3-.Ltext0
	.uaword	.LVL5-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL5-.Ltext0
	.uaword	.LFE262-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL3-.Ltext0
	.uaword	.LVL6-1-.Ltext0
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL6-1-.Ltext0
	.uaword	.LFE262-.Ltext0
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL12-.Ltext0
	.uaword	.LVL30-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL30-.Ltext0
	.uaword	.LVL33-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL33-.Ltext0
	.uaword	.LFE263-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL12-.Ltext0
	.uaword	.LVL31-1-.Ltext0
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL31-1-.Ltext0
	.uaword	.LVL33-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	.LVL33-.Ltext0
	.uaword	.LFE263-.Ltext0
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL12-.Ltext0
	.uaword	.LVL31-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL31-1-.Ltext0
	.uaword	.LVL33-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL33-.Ltext0
	.uaword	.LFE263-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL12-.Ltext0
	.uaword	.LVL26-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL27-.Ltext0
	.uaword	.LVL28-.Ltext0
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL29-.Ltext0
	.uaword	.LVL33-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL33-.Ltext0
	.uaword	.LVL35-.Ltext0
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL35-.Ltext0
	.uaword	.LVL37-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL37-.Ltext0
	.uaword	.LVL38-.Ltext0
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL38-.Ltext0
	.uaword	.LVL59-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL59-.Ltext0
	.uaword	.LVL62-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL62-.Ltext0
	.uaword	.LVL66-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL66-.Ltext0
	.uaword	.LVL67-.Ltext0
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL68-.Ltext0
	.uaword	.LVL69-.Ltext0
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL69-.Ltext0
	.uaword	.LVL72-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL73-.Ltext0
	.uaword	.LVL74-.Ltext0
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL74-.Ltext0
	.uaword	.LVL75-.Ltext0
	.uahalf	0x1
	.byte	0x5f
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
	.uaword	.LVL77-.Ltext0
	.uaword	.LVL105-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL105-.Ltext0
	.uaword	.LVL106-.Ltext0
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL106-.Ltext0
	.uaword	.LVL108-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL108-.Ltext0
	.uaword	.LFE263-.Ltext0
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL17-.Ltext0
	.uaword	.LVL22-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL22-.Ltext0
	.uaword	.LVL23-.Ltext0
	.uahalf	0x2
	.byte	0x82
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL14-.Ltext0
	.uaword	.LVL16-.Ltext0
	.uahalf	0x2
	.byte	0x84
	.sleb128 4
	.uaword	.LVL16-.Ltext0
	.uaword	.LVL18-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL33-.Ltext0
	.uaword	.LVL34-.Ltext0
	.uahalf	0x2
	.byte	0x84
	.sleb128 4
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL14-.Ltext0
	.uaword	.LVL26-.Ltext0
	.uahalf	0x7
	.byte	0x74
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x9f
	.uaword	.LVL33-.Ltext0
	.uaword	.LVL39-.Ltext0
	.uahalf	0x7
	.byte	0x74
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x9f
	.uaword	.LVL39-.Ltext0
	.uaword	.LVL43-.Ltext0
	.uahalf	0x7
	.byte	0x73
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x9f
	.uaword	.LVL43-.Ltext0
	.uaword	.LVL46-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL58-.Ltext0
	.uaword	.LVL59-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL62-.Ltext0
	.uaword	.LVL69-.Ltext0
	.uahalf	0x7
	.byte	0x73
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x9f
	.uaword	.LVL75-.Ltext0
	.uaword	.LVL77-.Ltext0
	.uahalf	0x7
	.byte	0x74
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x9f
	.uaword	.LVL77-.Ltext0
	.uaword	.LVL78-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL78-.Ltext0
	.uaword	.LVL79-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL79-.Ltext0
	.uaword	.LVL82-.Ltext0
	.uahalf	0x7
	.byte	0x73
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x9f
	.uaword	.LVL82-.Ltext0
	.uaword	.LVL94-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL95-.Ltext0
	.uaword	.LVL96-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL96-.Ltext0
	.uaword	.LVL103-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL14-.Ltext0
	.uaword	.LVL50-.Ltext0
	.uahalf	0x3
	.byte	0x91
	.sleb128 -4
	.byte	0x9f
	.uaword	.LVL50-.Ltext0
	.uaword	.LVL51-.Ltext0
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL51-.Ltext0
	.uaword	.LVL91-.Ltext0
	.uahalf	0x3
	.byte	0x91
	.sleb128 -4
	.byte	0x9f
	.uaword	.LVL91-.Ltext0
	.uaword	.LVL92-.Ltext0
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL92-.Ltext0
	.uaword	.LFE263-.Ltext0
	.uahalf	0x3
	.byte	0x91
	.sleb128 -4
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL44-.Ltext0
	.uaword	.LVL46-.Ltext0
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL78-.Ltext0
	.uaword	.LVL79-.Ltext0
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL83-.Ltext0
	.uaword	.LVL89-.Ltext0
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL89-.Ltext0
	.uaword	.LVL90-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL96-.Ltext0
	.uaword	.LVL101-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL101-.Ltext0
	.uaword	.LVL102-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL102-.Ltext0
	.uaword	.LVL103-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL14-.Ltext0
	.uaword	.LVL15-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL15-.Ltext0
	.uaword	.LVL33-.Ltext0
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL33-.Ltext0
	.uaword	.LVL35-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL35-.Ltext0
	.uaword	.LFE263-.Ltext0
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL15-.Ltext0
	.uaword	.LVL33-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL35-.Ltext0
	.uaword	.LFE263-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL20-.Ltext0
	.uaword	.LVL22-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL22-.Ltext0
	.uaword	.LVL23-.Ltext0
	.uahalf	0x2
	.byte	0x82
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL20-.Ltext0
	.uaword	.LVL33-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL35-.Ltext0
	.uaword	.LFE263-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL16-.Ltext0
	.uaword	.LVL33-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL35-.Ltext0
	.uaword	.LFE263-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL17-.Ltext0
	.uaword	.LVL33-.Ltext0
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL35-.Ltext0
	.uaword	.LFE263-.Ltext0
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL17-.Ltext0
	.uaword	.LVL33-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL35-.Ltext0
	.uaword	.LFE263-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL19-.Ltext0
	.uaword	.LVL31-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL35-.Ltext0
	.uaword	.LVL39-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL39-.Ltext0
	.uaword	.LVL43-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL43-.Ltext0
	.uaword	.LVL62-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL62-.Ltext0
	.uaword	.LVL69-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL69-.Ltext0
	.uaword	.LVL79-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL79-.Ltext0
	.uaword	.LVL82-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL82-.Ltext0
	.uaword	.LFE263-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL19-.Ltext0
	.uaword	.LVL33-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL35-.Ltext0
	.uaword	.LFE263-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL21-.Ltext0
	.uaword	.LVL33-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL35-.Ltext0
	.uaword	.LFE263-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL23-.Ltext0
	.uaword	.LVL33-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL35-.Ltext0
	.uaword	.LFE263-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL24-.Ltext0
	.uaword	.LVL33-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL35-.Ltext0
	.uaword	.LFE263-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL25-.Ltext0
	.uaword	.LVL33-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL35-.Ltext0
	.uaword	.LFE263-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL70-.Ltext0
	.uaword	.LVL75-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL26-.Ltext0
	.uaword	.LVL28-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL42-.Ltext0
	.uaword	.LVL43-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL43-.Ltext0
	.uaword	.LVL62-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL77-.Ltext0
	.uaword	.LVL79-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL103-.Ltext0
	.uaword	.LFE263-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL40-.Ltext0
	.uaword	.LVL41-.Ltext0
	.uahalf	0x1
	.byte	0x57
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL47-.Ltext0
	.uaword	.LVL59-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL103-.Ltext0
	.uaword	.LVL104-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL106-.Ltext0
	.uaword	.LVL107-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL48-.Ltext0
	.uaword	.LVL49-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL49-.Ltext0
	.uaword	.LVL53-.Ltext0
	.uahalf	0x1
	.byte	0x63
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL53-.Ltext0
	.uaword	.LVL57-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL54-.Ltext0
	.uaword	.LVL57-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL55-.Ltext0
	.uaword	.LVL57-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL56-.Ltext0
	.uaword	.LVL57-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST34:
	.uaword	.LVL103-.Ltext0
	.uaword	.LVL106-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST35:
	.uaword	.LVL60-.Ltext0
	.uaword	.LVL62-.Ltext0
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST36:
	.uaword	.LVL60-.Ltext0
	.uaword	.LVL62-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST37:
	.uaword	.LVL61-.Ltext0
	.uaword	.LVL62-.Ltext0
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST38:
	.uaword	.LVL61-.Ltext0
	.uaword	.LVL62-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST39:
	.uaword	.LVL64-.Ltext0
	.uaword	.LVL69-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL79-.Ltext0
	.uaword	.LVL81-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST40:
	.uaword	.LVL62-.Ltext0
	.uaword	.LVL69-.Ltext0
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	.LVL79-.Ltext0
	.uaword	.LVL103-.Ltext0
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST41:
	.uaword	.LVL62-.Ltext0
	.uaword	.LVL69-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL79-.Ltext0
	.uaword	.LVL103-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST42:
	.uaword	.LVL63-.Ltext0
	.uaword	.LVL69-.Ltext0
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	.LVL79-.Ltext0
	.uaword	.LVL103-.Ltext0
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST43:
	.uaword	.LVL63-.Ltext0
	.uaword	.LVL69-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL79-.Ltext0
	.uaword	.LVL103-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST44:
	.uaword	.LVL65-.Ltext0
	.uaword	.LVL67-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST45:
	.uaword	.LVL67-.Ltext0
	.uaword	.LVL69-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST46:
	.uaword	.LVL80-.Ltext0
	.uaword	.LVL82-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL82-.Ltext0
	.uaword	.LVL103-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST47:
	.uaword	.LVL88-.Ltext0
	.uaword	.LVL90-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL90-.Ltext0
	.uaword	.LVL94-.Ltext0
	.uahalf	0x1
	.byte	0x63
	.uaword	.LVL100-.Ltext0
	.uaword	.LVL103-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST48:
	.uaword	.LVL84-.Ltext0
	.uaword	.LVL89-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL96-.Ltext0
	.uaword	.LVL103-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST49:
	.uaword	.LVL85-.Ltext0
	.uaword	.LVL89-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL97-.Ltext0
	.uaword	.LVL103-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST50:
	.uaword	.LVL86-.Ltext0
	.uaword	.LVL89-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL98-.Ltext0
	.uaword	.LVL103-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST51:
	.uaword	.LVL87-.Ltext0
	.uaword	.LVL89-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL99-.Ltext0
	.uaword	.LVL103-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST52:
	.uaword	.LVL71-.Ltext0
	.uaword	.LVL74-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST53:
	.uaword	.LVL32-.Ltext0
	.uaword	.LVL33-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST54:
	.uaword	.LVL33-.Ltext0
	.uaword	.LVL35-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST55:
	.uaword	.LVL36-.Ltext0
	.uaword	.LVL38-.Ltext0
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST56:
	.uaword	.LVL36-.Ltext0
	.uaword	.LVL38-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST57:
	.uaword	.LVL75-.Ltext0
	.uaword	.LVL77-.Ltext0
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST58:
	.uaword	.LVL75-.Ltext0
	.uaword	.LVL77-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST59:
	.uaword	.LVL109-.Ltext0
	.uaword	.LVL125-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL125-.Ltext0
	.uaword	.LVL128-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL128-.Ltext0
	.uaword	.LFE264-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST60:
	.uaword	.LVL109-.Ltext0
	.uaword	.LVL126-1-.Ltext0
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL126-1-.Ltext0
	.uaword	.LVL128-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	.LVL128-.Ltext0
	.uaword	.LFE264-.Ltext0
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST61:
	.uaword	.LVL109-.Ltext0
	.uaword	.LVL123-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL123-.Ltext0
	.uaword	.LVL128-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL128-.Ltext0
	.uaword	.LVL133-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL133-.Ltext0
	.uaword	.LFE264-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST62:
	.uaword	.LVL109-.Ltext0
	.uaword	.LVL123-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL124-.Ltext0
	.uaword	.LVL128-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL128-.Ltext0
	.uaword	.LVL130-.Ltext0
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL130-.Ltext0
	.uaword	.LVL131-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL131-.Ltext0
	.uaword	.LVL132-.Ltext0
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL132-.Ltext0
	.uaword	.LVL138-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL138-.Ltext0
	.uaword	.LVL139-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL139-.Ltext0
	.uaword	.LVL148-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL148-.Ltext0
	.uaword	.LVL149-.Ltext0
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL149-.Ltext0
	.uaword	.LVL152-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL152-.Ltext0
	.uaword	.LVL153-.Ltext0
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL154-.Ltext0
	.uaword	.LVL159-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL160-.Ltext0
	.uaword	.LVL163-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL164-.Ltext0
	.uaword	.LVL165-.Ltext0
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL165-.Ltext0
	.uaword	.LVL167-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL168-.Ltext0
	.uaword	.LFE264-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST63:
	.uaword	.LVL110-.Ltext0
	.uaword	.LVL112-.Ltext0
	.uahalf	0x2
	.byte	0x84
	.sleb128 4
	.uaword	.LVL112-.Ltext0
	.uaword	.LVL126-1-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL128-.Ltext0
	.uaword	.LVL129-.Ltext0
	.uahalf	0x2
	.byte	0x84
	.sleb128 4
	.uaword	.LVL129-.Ltext0
	.uaword	.LFE264-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST64:
	.uaword	.LVL110-.Ltext0
	.uaword	.LVL123-.Ltext0
	.uahalf	0x9
	.byte	0x74
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.uaword	.LVL128-.Ltext0
	.uaword	.LVL133-.Ltext0
	.uahalf	0x9
	.byte	0x74
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.uaword	.LVL133-.Ltext0
	.uaword	.LVL138-.Ltext0
	.uahalf	0x9
	.byte	0x74
	.sleb128 -1
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.uaword	.LVL138-.Ltext0
	.uaword	.LVL145-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL168-.Ltext0
	.uaword	.LVL170-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL176-.Ltext0
	.uaword	.LVL178-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL178-.Ltext0
	.uaword	.LFE264-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST65:
	.uaword	.LVL139-.Ltext0
	.uaword	.LVL142-.Ltext0
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL142-.Ltext0
	.uaword	.LVL143-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL178-.Ltext0
	.uaword	.LFE264-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST66:
	.uaword	.LVL110-.Ltext0
	.uaword	.LVL169-.Ltext0
	.uahalf	0x3
	.byte	0x91
	.sleb128 -4
	.byte	0x9f
	.uaword	.LVL169-.Ltext0
	.uaword	.LVL170-.Ltext0
	.uahalf	0x1
	.byte	0x67
	.uaword	.LVL170-.Ltext0
	.uaword	.LFE264-.Ltext0
	.uahalf	0x3
	.byte	0x91
	.sleb128 -4
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST67:
	.uaword	.LVL110-.Ltext0
	.uaword	.LVL111-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL111-.Ltext0
	.uaword	.LVL128-.Ltext0
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL128-.Ltext0
	.uaword	.LVL130-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL130-.Ltext0
	.uaword	.LFE264-.Ltext0
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST68:
	.uaword	.LVL111-.Ltext0
	.uaword	.LVL128-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL130-.Ltext0
	.uaword	.LFE264-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST69:
	.uaword	.LVL113-.Ltext0
	.uaword	.LVL126-1-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL130-.Ltext0
	.uaword	.LFE264-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST70:
	.uaword	.LVL113-.Ltext0
	.uaword	.LVL128-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL130-.Ltext0
	.uaword	.LFE264-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST71:
	.uaword	.LVL112-.Ltext0
	.uaword	.LVL128-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL130-.Ltext0
	.uaword	.LFE264-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST72:
	.uaword	.LVL112-.Ltext0
	.uaword	.LVL128-.Ltext0
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL130-.Ltext0
	.uaword	.LFE264-.Ltext0
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST74:
	.uaword	.LVL114-.Ltext0
	.uaword	.LVL128-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL130-.Ltext0
	.uaword	.LFE264-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST75:
	.uaword	.LVL115-.Ltext0
	.uaword	.LVL128-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL130-.Ltext0
	.uaword	.LFE264-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST76:
	.uaword	.LVL116-.Ltext0
	.uaword	.LVL128-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL130-.Ltext0
	.uaword	.LFE264-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST77:
	.uaword	.LVL117-.Ltext0
	.uaword	.LVL128-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL130-.Ltext0
	.uaword	.LFE264-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST78:
	.uaword	.LVL118-.Ltext0
	.uaword	.LVL128-.Ltext0
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	.LVL130-.Ltext0
	.uaword	.LFE264-.Ltext0
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST79:
	.uaword	.LVL118-.Ltext0
	.uaword	.LVL128-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL130-.Ltext0
	.uaword	.LFE264-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST80:
	.uaword	.LVL119-.Ltext0
	.uaword	.LVL128-.Ltext0
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	.LVL130-.Ltext0
	.uaword	.LFE264-.Ltext0
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST81:
	.uaword	.LVL119-.Ltext0
	.uaword	.LVL128-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL130-.Ltext0
	.uaword	.LFE264-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST82:
	.uaword	.LVL120-.Ltext0
	.uaword	.LVL128-.Ltext0
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL130-.Ltext0
	.uaword	.LFE264-.Ltext0
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST83:
	.uaword	.LVL120-.Ltext0
	.uaword	.LVL128-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL130-.Ltext0
	.uaword	.LFE264-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST84:
	.uaword	.LVL121-.Ltext0
	.uaword	.LVL123-.Ltext0
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL132-.Ltext0
	.uaword	.LFE264-.Ltext0
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST85:
	.uaword	.LVL121-.Ltext0
	.uaword	.LVL123-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL132-.Ltext0
	.uaword	.LFE264-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST86:
	.uaword	.LVL122-.Ltext0
	.uaword	.LVL123-.Ltext0
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST87:
	.uaword	.LVL122-.Ltext0
	.uaword	.LVL123-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST88:
	.uaword	.LVL127-.Ltext0
	.uaword	.LVL128-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST89:
	.uaword	.LVL128-.Ltext0
	.uaword	.LVL130-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST90:
	.uaword	.LVL130-.Ltext0
	.uaword	.LVL132-.Ltext0
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST91:
	.uaword	.LVL130-.Ltext0
	.uaword	.LVL132-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST92:
	.uaword	.LVL137-.Ltext0
	.uaword	.LVL138-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL138-.Ltext0
	.uaword	.LVL173-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL173-.Ltext0
	.uaword	.LVL176-.Ltext0
	.uahalf	0x3
	.byte	0x73
	.sleb128 -4
	.byte	0x9f
	.uaword	.LVL176-.Ltext0
	.uaword	.LFE264-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST93:
	.uaword	.LVL133-.Ltext0
	.uaword	.LVL139-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL141-.Ltext0
	.uaword	.LVL143-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL143-.Ltext0
	.uaword	.LVL145-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL168-.Ltext0
	.uaword	.LVL170-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL178-.Ltext0
	.uaword	.LFE264-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST94:
	.uaword	.LVL157-.Ltext0
	.uaword	.LVL162-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST95:
	.uaword	.LVL134-.Ltext0
	.uaword	.LVL135-.Ltext0
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST96:
	.uaword	.LVL136-.Ltext0
	.uaword	.LVL139-.Ltext0
	.uahalf	0x3
	.byte	0x74
	.sleb128 0
	.byte	0x9f
	.uaword	.LVL139-.Ltext0
	.uaword	.LFE264-.Ltext0
	.uahalf	0x3
	.byte	0x71
	.sleb128 0
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST97:
	.uaword	.LVL146-.Ltext0
	.uaword	.LVL151-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL165-.Ltext0
	.uaword	.LVL166-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST98:
	.uaword	.LVL147-.Ltext0
	.uaword	.LVL149-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST99:
	.uaword	.LVL150-.Ltext0
	.uaword	.LVL153-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST100:
	.uaword	.LVL171-.Ltext0
	.uaword	.LVL174-.Ltext0
	.uahalf	0x2
	.byte	0x91
	.sleb128 -4
	.uaword	0
	.uaword	0
.LLST101:
	.uaword	.LVL171-.Ltext0
	.uaword	.LVL177-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST102:
	.uaword	.LVL155-.Ltext0
	.uaword	.LVL165-.Ltext0
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST103:
	.uaword	.LVL155-.Ltext0
	.uaword	.LVL165-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST104:
	.uaword	.LVL156-.Ltext0
	.uaword	.LVL165-.Ltext0
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST105:
	.uaword	.LVL156-.Ltext0
	.uaword	.LVL165-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST106:
	.uaword	.LVL158-.Ltext0
	.uaword	.LVL160-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST107:
	.uaword	.LVL161-.Ltext0
	.uaword	.LVL165-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST108:
	.uaword	.LVL172-.Ltext0
	.uaword	.LVL177-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST109:
	.uaword	.LVL174-.Ltext0
	.uaword	.LVL177-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST110:
	.uaword	.LVL175-.Ltext0
	.uaword	.LVL177-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST111:
	.uaword	.LVL176-.Ltext0
	.uaword	.LVL177-.Ltext0
	.uahalf	0x1
	.byte	0x6f
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
	.uaword	.LBB168-.Ltext0
	.uaword	.LBE168-.Ltext0
	.uaword	.LBB171-.Ltext0
	.uaword	.LBE171-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB172-.Ltext0
	.uaword	.LBE172-.Ltext0
	.uaword	.LBB175-.Ltext0
	.uaword	.LBE175-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB176-.Ltext0
	.uaword	.LBE176-.Ltext0
	.uaword	.LBB179-.Ltext0
	.uaword	.LBE179-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB182-.Ltext0
	.uaword	.LBE182-.Ltext0
	.uaword	.LBB188-.Ltext0
	.uaword	.LBE188-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB185-.Ltext0
	.uaword	.LBE185-.Ltext0
	.uaword	.LBB195-.Ltext0
	.uaword	.LBE195-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB204-.Ltext0
	.uaword	.LBE204-.Ltext0
	.uaword	.LBB296-.Ltext0
	.uaword	.LBE296-.Ltext0
	.uaword	.LBB297-.Ltext0
	.uaword	.LBE297-.Ltext0
	.uaword	.LBB298-.Ltext0
	.uaword	.LBE298-.Ltext0
	.uaword	.LBB301-.Ltext0
	.uaword	.LBE301-.Ltext0
	.uaword	.LBB302-.Ltext0
	.uaword	.LBE302-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB207-.Ltext0
	.uaword	.LBE207-.Ltext0
	.uaword	.LBB240-.Ltext0
	.uaword	.LBE240-.Ltext0
	.uaword	.LBB276-.Ltext0
	.uaword	.LBE276-.Ltext0
	.uaword	.LBB279-.Ltext0
	.uaword	.LBE279-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB215-.Ltext0
	.uaword	.LBE215-.Ltext0
	.uaword	.LBB231-.Ltext0
	.uaword	.LBE231-.Ltext0
	.uaword	.LBB238-.Ltext0
	.uaword	.LBE238-.Ltext0
	.uaword	.LBB239-.Ltext0
	.uaword	.LBE239-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB216-.Ltext0
	.uaword	.LBE216-.Ltext0
	.uaword	.LBB225-.Ltext0
	.uaword	.LBE225-.Ltext0
	.uaword	.LBB226-.Ltext0
	.uaword	.LBE226-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB241-.Ltext0
	.uaword	.LBE241-.Ltext0
	.uaword	.LBB277-.Ltext0
	.uaword	.LBE277-.Ltext0
	.uaword	.LBB278-.Ltext0
	.uaword	.LBE278-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB250-.Ltext0
	.uaword	.LBE250-.Ltext0
	.uaword	.LBB273-.Ltext0
	.uaword	.LBE273-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB251-.Ltext0
	.uaword	.LBE251-.Ltext0
	.uaword	.LBB272-.Ltext0
	.uaword	.LBE272-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB252-.Ltext0
	.uaword	.LBE252-.Ltext0
	.uaword	.LBB257-.Ltext0
	.uaword	.LBE257-.Ltext0
	.uaword	.LBB267-.Ltext0
	.uaword	.LBE267-.Ltext0
	.uaword	.LBB268-.Ltext0
	.uaword	.LBE268-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB258-.Ltext0
	.uaword	.LBE258-.Ltext0
	.uaword	.LBB269-.Ltext0
	.uaword	.LBE269-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB261-.Ltext0
	.uaword	.LBE261-.Ltext0
	.uaword	.LBB270-.Ltext0
	.uaword	.LBE270-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB264-.Ltext0
	.uaword	.LBE264-.Ltext0
	.uaword	.LBB271-.Ltext0
	.uaword	.LBE271-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB280-.Ltext0
	.uaword	.LBE280-.Ltext0
	.uaword	.LBB284-.Ltext0
	.uaword	.LBE284-.Ltext0
	.uaword	.LBB285-.Ltext0
	.uaword	.LBE285-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB286-.Ltext0
	.uaword	.LBE286-.Ltext0
	.uaword	.LBB289-.Ltext0
	.uaword	.LBE289-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB305-.Ltext0
	.uaword	.LBE305-.Ltext0
	.uaword	.LBB312-.Ltext0
	.uaword	.LBE312-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB308-.Ltext0
	.uaword	.LBE308-.Ltext0
	.uaword	.LBB316-.Ltext0
	.uaword	.LBE316-.Ltext0
	.uaword	.LBB320-.Ltext0
	.uaword	.LBE320-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB313-.Ltext0
	.uaword	.LBE313-.Ltext0
	.uaword	.LBB317-.Ltext0
	.uaword	.LBE317-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB337-.Ltext0
	.uaword	.LBE337-.Ltext0
	.uaword	.LBB340-.Ltext0
	.uaword	.LBE340-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB341-.Ltext0
	.uaword	.LBE341-.Ltext0
	.uaword	.LBB345-.Ltext0
	.uaword	.LBE345-.Ltext0
	.uaword	.LBB346-.Ltext0
	.uaword	.LBE346-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB347-.Ltext0
	.uaword	.LBE347-.Ltext0
	.uaword	.LBB350-.Ltext0
	.uaword	.LBE350-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB351-.Ltext0
	.uaword	.LBE351-.Ltext0
	.uaword	.LBB354-.Ltext0
	.uaword	.LBE354-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB363-.Ltext0
	.uaword	.LBE363-.Ltext0
	.uaword	.LBB367-.Ltext0
	.uaword	.LBE367-.Ltext0
	.uaword	.LBB375-.Ltext0
	.uaword	.LBE375-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB368-.Ltext0
	.uaword	.LBE368-.Ltext0
	.uaword	.LBB379-.Ltext0
	.uaword	.LBE379-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB369-.Ltext0
	.uaword	.LBE369-.Ltext0
	.uaword	.LBB372-.Ltext0
	.uaword	.LBE372-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB376-.Ltext0
	.uaword	.LBE376-.Ltext0
	.uaword	.LBB394-.Ltext0
	.uaword	.LBE394-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB386-.Ltext0
	.uaword	.LBE386-.Ltext0
	.uaword	.LBB389-.Ltext0
	.uaword	.LBE389-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB390-.Ltext0
	.uaword	.LBE390-.Ltext0
	.uaword	.LBB393-.Ltext0
	.uaword	.LBE393-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB395-.Ltext0
	.uaword	.LBE395-.Ltext0
	.uaword	.LBB398-.Ltext0
	.uaword	.LBE398-.Ltext0
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF3:
	.string	"MODNUMBER"
.LASF4:
	.string	"reserved_8"
.LASF22:
	.string	"SREQ_INT"
.LASF32:
	.string	"baudrate"
.LASF34:
	.string	"packet"
.LASF29:
	.string	"inSelect"
.LASF36:
	.string	"i2cDeviceConfig"
.LASF15:
	.string	"RXF_UFL"
.LASF17:
	.string	"TXF_UFL"
.LASF33:
	.string	"deviceAddress"
.LASF16:
	.string	"RXF_OFL"
.LASF0:
	.string	"reserved_10"
.LASF19:
	.string	"reserved_11"
.LASF10:
	.string	"reserved_12"
.LASF20:
	.string	"reserved_14"
.LASF2:
	.string	"reserved_16"
.LASF18:
	.string	"TXF_OFL"
.LASF25:
	.string	"I2C_ERR_INT"
.LASF7:
	.string	"reserved_20"
.LASF5:
	.string	"reserved_24"
.LASF8:
	.string	"reserved_28"
.LASF1:
	.string	"reserved_0"
.LASF27:
	.string	"reserved_1"
.LASF6:
	.string	"reserved_2"
.LASF13:
	.string	"reserved_3"
.LASF9:
	.string	"reserved_4"
.LASF14:
	.string	"reserved_6"
.LASF11:
	.string	"reserved_7"
.LASF37:
	.string	"intEnabled"
.LASF12:
	.string	"reserved_C"
.LASF21:
	.string	"LSREQ_INT"
.LASF35:
	.string	"i2cDevice"
.LASF23:
	.string	"LBREQ_INT"
.LASF24:
	.string	"BREQ_INT"
.LASF26:
	.string	"I2C_P_INT"
.LASF31:
	.string	"status"
.LASF28:
	.string	"TX_END"
.LASF30:
	.string	"outSelect"
	.extern	IfxI2c_releaseBus,STT_FUNC,0
	.extern	IfxI2c_getBaudrate,STT_FUNC,0
	.extern	IfxI2c_initSclSdaPin,STT_FUNC,0
	.extern	IfxI2c_setBaudrate,STT_FUNC,0
	.extern	IfxI2c_configureAsMaster,STT_FUNC,0
	.extern	IfxI2c_enableModule,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.1.0-infineon-2.0-df254e8) 4.9.4 build on 2018-04-18"
