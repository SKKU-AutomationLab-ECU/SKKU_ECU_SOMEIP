	.file	"IfxCpu_Trap.c"
.section .text,"ax",@progbits
.Ltext0:
	.align 1
	.global	IfxCpu_Trap_memoryManagementError
	.type	IfxCpu_Trap_memoryManagementError, @function
IfxCpu_Trap_memoryManagementError:
.LFB186:
	.file 1 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c"
	.loc 1 87 0
.LVL0:
.LBB112:
.LBB113:
.LBB114:
.LBB115:
	.file 2 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
	.loc 2 1487 0
#APP
	# 1487 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	mov.aa %a2, %a11
	# 0 "" 2
.LVL1:
#NO_APP
.LBE115:
.LBE114:
.LBB116:
.LBB117:
.LBB118:
	.file 3 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h"
	.loc 3 649 0
#APP
	# 649 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h" 1
	mfcr %d2, LO:0xFE1C
	# 0 "" 2
.LVL2:
#NO_APP
.LBE118:
.LBE117:
.LBE116:
.LBE113:
.LBE112:
	.loc 1 88 0
	mov	%d15, 0
	movh.a	%a3, hi:trapWatch
	lea	%a15, [%a3] lo:trapWatch
	st.a	[%a3] lo:trapWatch, %a2
.LBB120:
.LBB119:
	.loc 1 80 0
	st.b	[%a15] 4, %d4
.LBE119:
.LBE120:
	.loc 1 88 0
	st.b	[%a15] 5, %d15
	ld.w	%d15, [%a15] 4
	insert	%d15, %d15, %d2, 16, 3
	st.w	[%a15] 4, %d15
.LBB121:
.LBB122:
	.loc 2 1339 0
#APP
	# 1339 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	debug
	# 0 "" 2
#NO_APP
.LBE122:
.LBE121:
	.loc 1 91 0
#APP
	# 91 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rfe
	# 0 "" 2
#NO_APP
	ret
.LFE186:
	.size	IfxCpu_Trap_memoryManagementError, .-IfxCpu_Trap_memoryManagementError
	.align 1
	.global	IfxCpu_Trap_internalProtectionError
	.type	IfxCpu_Trap_internalProtectionError, @function
IfxCpu_Trap_internalProtectionError:
.LFB187:
	.loc 1 96 0
.LVL3:
.LBB123:
.LBB124:
.LBB125:
.LBB126:
	.loc 2 1487 0
#APP
	# 1487 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	mov.aa %a2, %a11
	# 0 "" 2
.LVL4:
#NO_APP
.LBE126:
.LBE125:
.LBB127:
.LBB128:
.LBB129:
	.loc 3 649 0
#APP
	# 649 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h" 1
	mfcr %d2, LO:0xFE1C
	# 0 "" 2
.LVL5:
#NO_APP
.LBE129:
.LBE128:
.LBE127:
.LBE124:
.LBE123:
	.loc 1 97 0
	mov	%d15, 1
	movh.a	%a3, hi:trapWatch
	lea	%a15, [%a3] lo:trapWatch
	st.a	[%a3] lo:trapWatch, %a2
.LBB131:
.LBB130:
	.loc 1 80 0
	st.b	[%a15] 4, %d4
.LBE130:
.LBE131:
	.loc 1 97 0
	st.b	[%a15] 5, %d15
	ld.w	%d15, [%a15] 4
	insert	%d15, %d15, %d2, 16, 3
	st.w	[%a15] 4, %d15
.LBB132:
.LBB133:
	.loc 2 1339 0
#APP
	# 1339 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	debug
	# 0 "" 2
#NO_APP
.LBE133:
.LBE132:
	.loc 1 100 0
#APP
	# 100 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rfe
	# 0 "" 2
#NO_APP
	ret
.LFE187:
	.size	IfxCpu_Trap_internalProtectionError, .-IfxCpu_Trap_internalProtectionError
	.align 1
	.global	IfxCpu_Trap_instructionError
	.type	IfxCpu_Trap_instructionError, @function
IfxCpu_Trap_instructionError:
.LFB188:
	.loc 1 105 0
.LVL6:
.LBB134:
.LBB135:
.LBB136:
.LBB137:
	.loc 2 1487 0
#APP
	# 1487 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	mov.aa %a2, %a11
	# 0 "" 2
.LVL7:
#NO_APP
.LBE137:
.LBE136:
.LBB138:
.LBB139:
.LBB140:
	.loc 3 649 0
#APP
	# 649 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h" 1
	mfcr %d2, LO:0xFE1C
	# 0 "" 2
.LVL8:
#NO_APP
.LBE140:
.LBE139:
.LBE138:
.LBE135:
.LBE134:
	.loc 1 106 0
	mov	%d15, 2
	movh.a	%a3, hi:trapWatch
	lea	%a15, [%a3] lo:trapWatch
	st.a	[%a3] lo:trapWatch, %a2
.LBB142:
.LBB141:
	.loc 1 80 0
	st.b	[%a15] 4, %d4
.LBE141:
.LBE142:
	.loc 1 106 0
	st.b	[%a15] 5, %d15
	ld.w	%d15, [%a15] 4
	insert	%d15, %d15, %d2, 16, 3
	st.w	[%a15] 4, %d15
.LBB143:
.LBB144:
	.loc 2 1339 0
#APP
	# 1339 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	debug
	# 0 "" 2
#NO_APP
.LBE144:
.LBE143:
	.loc 1 109 0
#APP
	# 109 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rfe
	# 0 "" 2
#NO_APP
	ret
.LFE188:
	.size	IfxCpu_Trap_instructionError, .-IfxCpu_Trap_instructionError
	.align 1
	.global	IfxCpu_Trap_contextManagementError
	.type	IfxCpu_Trap_contextManagementError, @function
IfxCpu_Trap_contextManagementError:
.LFB189:
	.loc 1 114 0
.LVL9:
.LBB145:
.LBB146:
.LBB147:
.LBB148:
	.loc 2 1487 0
#APP
	# 1487 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	mov.aa %a2, %a11
	# 0 "" 2
.LVL10:
#NO_APP
.LBE148:
.LBE147:
.LBB149:
.LBB150:
.LBB151:
	.loc 3 649 0
#APP
	# 649 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h" 1
	mfcr %d2, LO:0xFE1C
	# 0 "" 2
.LVL11:
#NO_APP
.LBE151:
.LBE150:
.LBE149:
.LBE146:
.LBE145:
	.loc 1 115 0
	mov	%d15, 3
	movh.a	%a3, hi:trapWatch
	lea	%a15, [%a3] lo:trapWatch
	st.a	[%a3] lo:trapWatch, %a2
.LBB153:
.LBB152:
	.loc 1 80 0
	st.b	[%a15] 4, %d4
.LBE152:
.LBE153:
	.loc 1 115 0
	st.b	[%a15] 5, %d15
	ld.w	%d15, [%a15] 4
	insert	%d15, %d15, %d2, 16, 3
	st.w	[%a15] 4, %d15
.LBB154:
.LBB155:
	.loc 2 1339 0
#APP
	# 1339 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	debug
	# 0 "" 2
#NO_APP
.LBE155:
.LBE154:
	.loc 1 118 0
#APP
	# 118 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rfe
	# 0 "" 2
#NO_APP
	ret
.LFE189:
	.size	IfxCpu_Trap_contextManagementError, .-IfxCpu_Trap_contextManagementError
	.align 1
	.global	IfxCpu_Trap_busError
	.type	IfxCpu_Trap_busError, @function
IfxCpu_Trap_busError:
.LFB190:
	.loc 1 123 0
.LVL12:
.LBB156:
.LBB157:
.LBB158:
.LBB159:
	.loc 2 1487 0
#APP
	# 1487 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	mov.aa %a2, %a11
	# 0 "" 2
.LVL13:
#NO_APP
.LBE159:
.LBE158:
.LBB160:
.LBB161:
.LBB162:
	.loc 3 649 0
#APP
	# 649 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h" 1
	mfcr %d2, LO:0xFE1C
	# 0 "" 2
.LVL14:
#NO_APP
.LBE162:
.LBE161:
.LBE160:
.LBE157:
.LBE156:
	.loc 1 124 0
	mov	%d15, 4
	movh.a	%a3, hi:trapWatch
	lea	%a15, [%a3] lo:trapWatch
	st.a	[%a3] lo:trapWatch, %a2
.LBB164:
.LBB163:
	.loc 1 80 0
	st.b	[%a15] 4, %d4
.LBE163:
.LBE164:
	.loc 1 124 0
	st.b	[%a15] 5, %d15
	ld.w	%d15, [%a15] 4
	insert	%d15, %d15, %d2, 16, 3
	st.w	[%a15] 4, %d15
.LBB165:
.LBB166:
	.loc 2 1339 0
#APP
	# 1339 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	debug
	# 0 "" 2
#NO_APP
.LBE166:
.LBE165:
	.loc 1 127 0
#APP
	# 127 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rfe
	# 0 "" 2
#NO_APP
	ret
.LFE190:
	.size	IfxCpu_Trap_busError, .-IfxCpu_Trap_busError
	.align 1
	.global	IfxCpu_Trap_assertion
	.type	IfxCpu_Trap_assertion, @function
IfxCpu_Trap_assertion:
.LFB191:
	.loc 1 132 0
.LVL15:
.LBB167:
.LBB168:
.LBB169:
.LBB170:
	.loc 2 1487 0
#APP
	# 1487 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	mov.aa %a2, %a11
	# 0 "" 2
.LVL16:
#NO_APP
.LBE170:
.LBE169:
.LBB171:
.LBB172:
.LBB173:
	.loc 3 649 0
#APP
	# 649 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h" 1
	mfcr %d2, LO:0xFE1C
	# 0 "" 2
.LVL17:
#NO_APP
.LBE173:
.LBE172:
.LBE171:
.LBE168:
.LBE167:
	.loc 1 133 0
	mov	%d15, 5
	movh.a	%a3, hi:trapWatch
	lea	%a15, [%a3] lo:trapWatch
	st.a	[%a3] lo:trapWatch, %a2
.LBB175:
.LBB174:
	.loc 1 80 0
	st.b	[%a15] 4, %d4
.LBE174:
.LBE175:
	.loc 1 133 0
	st.b	[%a15] 5, %d15
	ld.w	%d15, [%a15] 4
	insert	%d15, %d15, %d2, 16, 3
	st.w	[%a15] 4, %d15
.LBB176:
.LBB177:
	.loc 2 1339 0
#APP
	# 1339 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	debug
	# 0 "" 2
#NO_APP
.LBE177:
.LBE176:
	.loc 1 136 0
#APP
	# 136 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rfe
	# 0 "" 2
#NO_APP
	ret
.LFE191:
	.size	IfxCpu_Trap_assertion, .-IfxCpu_Trap_assertion
	.align 1
	.global	IfxCpu_Trap_systemCall_Cpu0
	.type	IfxCpu_Trap_systemCall_Cpu0, @function
IfxCpu_Trap_systemCall_Cpu0:
.LFB192:
	.loc 1 141 0
.LVL18:
.LBB178:
.LBB179:
.LBB180:
.LBB181:
	.loc 2 1487 0
#APP
	# 1487 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	mov.aa %a2, %a11
	# 0 "" 2
.LVL19:
#NO_APP
.LBE181:
.LBE180:
.LBB182:
.LBB183:
.LBB184:
	.loc 3 649 0
#APP
	# 649 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h" 1
	mfcr %d2, LO:0xFE1C
	# 0 "" 2
.LVL20:
#NO_APP
.LBE184:
.LBE183:
.LBE182:
.LBE179:
.LBE178:
	.loc 1 142 0
	mov	%d15, 6
	movh.a	%a3, hi:trapWatch
	lea	%a15, [%a3] lo:trapWatch
	st.a	[%a3] lo:trapWatch, %a2
.LBB186:
.LBB185:
	.loc 1 80 0
	st.b	[%a15] 4, %d4
.LBE185:
.LBE186:
	.loc 1 142 0
	st.b	[%a15] 5, %d15
	ld.w	%d15, [%a15] 4
	insert	%d15, %d15, %d2, 16, 3
	st.w	[%a15] 4, %d15
	.loc 1 144 0
#APP
	# 144 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rfe
	# 0 "" 2
#NO_APP
	ret
.LFE192:
	.size	IfxCpu_Trap_systemCall_Cpu0, .-IfxCpu_Trap_systemCall_Cpu0
	.align 1
	.global	IfxCpu_Trap_systemCall_Cpu1
	.type	IfxCpu_Trap_systemCall_Cpu1, @function
IfxCpu_Trap_systemCall_Cpu1:
.LFB193:
	.loc 1 149 0
.LVL21:
.LBB187:
.LBB188:
.LBB189:
.LBB190:
	.loc 2 1487 0
#APP
	# 1487 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	mov.aa %a2, %a11
	# 0 "" 2
.LVL22:
#NO_APP
.LBE190:
.LBE189:
.LBB191:
.LBB192:
.LBB193:
	.loc 3 649 0
#APP
	# 649 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h" 1
	mfcr %d2, LO:0xFE1C
	# 0 "" 2
.LVL23:
#NO_APP
.LBE193:
.LBE192:
.LBE191:
.LBE188:
.LBE187:
	.loc 1 150 0
	mov	%d15, 6
	movh.a	%a3, hi:trapWatch
	lea	%a15, [%a3] lo:trapWatch
	st.a	[%a3] lo:trapWatch, %a2
.LBB195:
.LBB194:
	.loc 1 80 0
	st.b	[%a15] 4, %d4
.LBE194:
.LBE195:
	.loc 1 150 0
	st.b	[%a15] 5, %d15
	ld.w	%d15, [%a15] 4
	insert	%d15, %d15, %d2, 16, 3
	st.w	[%a15] 4, %d15
	.loc 1 152 0
#APP
	# 152 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rfe
	# 0 "" 2
#NO_APP
	ret
.LFE193:
	.size	IfxCpu_Trap_systemCall_Cpu1, .-IfxCpu_Trap_systemCall_Cpu1
	.align 1
	.global	IfxCpu_Trap_systemCall_Cpu2
	.type	IfxCpu_Trap_systemCall_Cpu2, @function
IfxCpu_Trap_systemCall_Cpu2:
.LFB194:
	.loc 1 157 0
.LVL24:
.LBB196:
.LBB197:
.LBB198:
.LBB199:
	.loc 2 1487 0
#APP
	# 1487 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	mov.aa %a2, %a11
	# 0 "" 2
.LVL25:
#NO_APP
.LBE199:
.LBE198:
.LBB200:
.LBB201:
.LBB202:
	.loc 3 649 0
#APP
	# 649 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h" 1
	mfcr %d2, LO:0xFE1C
	# 0 "" 2
.LVL26:
#NO_APP
.LBE202:
.LBE201:
.LBE200:
.LBE197:
.LBE196:
	.loc 1 158 0
	mov	%d15, 6
	movh.a	%a3, hi:trapWatch
	lea	%a15, [%a3] lo:trapWatch
	st.a	[%a3] lo:trapWatch, %a2
.LBB204:
.LBB203:
	.loc 1 80 0
	st.b	[%a15] 4, %d4
.LBE203:
.LBE204:
	.loc 1 158 0
	st.b	[%a15] 5, %d15
	ld.w	%d15, [%a15] 4
	insert	%d15, %d15, %d2, 16, 3
	st.w	[%a15] 4, %d15
	.loc 1 160 0
#APP
	# 160 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rfe
	# 0 "" 2
#NO_APP
	ret
.LFE194:
	.size	IfxCpu_Trap_systemCall_Cpu2, .-IfxCpu_Trap_systemCall_Cpu2
	.align 1
	.global	IfxCpu_Trap_nonMaskableInterrupt
	.type	IfxCpu_Trap_nonMaskableInterrupt, @function
IfxCpu_Trap_nonMaskableInterrupt:
.LFB198:
	.loc 1 189 0
.LVL27:
.LBB205:
.LBB206:
.LBB207:
.LBB208:
	.loc 2 1487 0
#APP
	# 1487 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	mov.aa %a2, %a11
	# 0 "" 2
.LVL28:
#NO_APP
.LBE208:
.LBE207:
.LBB209:
.LBB210:
.LBB211:
	.loc 3 649 0
#APP
	# 649 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h" 1
	mfcr %d2, LO:0xFE1C
	# 0 "" 2
.LVL29:
#NO_APP
.LBE211:
.LBE210:
.LBE209:
.LBE206:
.LBE205:
	.loc 1 190 0
	mov	%d15, 7
	movh.a	%a3, hi:trapWatch
	lea	%a15, [%a3] lo:trapWatch
	st.a	[%a3] lo:trapWatch, %a2
.LBB213:
.LBB212:
	.loc 1 80 0
	st.b	[%a15] 4, %d4
.LBE212:
.LBE213:
	.loc 1 190 0
	st.b	[%a15] 5, %d15
	ld.w	%d15, [%a15] 4
	insert	%d15, %d15, %d2, 16, 3
	st.w	[%a15] 4, %d15
.LBB214:
.LBB215:
	.loc 2 1339 0
#APP
	# 1339 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	debug
	# 0 "" 2
#NO_APP
.LBE215:
.LBE214:
	.loc 1 193 0
#APP
	# 193 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rfe
	# 0 "" 2
#NO_APP
	ret
.LFE198:
	.size	IfxCpu_Trap_nonMaskableInterrupt, .-IfxCpu_Trap_nonMaskableInterrupt
	.align 1
	.global	IfxCpu_Trap_systemCall_Cpu3
	.type	IfxCpu_Trap_systemCall_Cpu3, @function
IfxCpu_Trap_systemCall_Cpu3:
.LFB195:
	.loc 1 165 0
.LVL30:
.LBB216:
.LBB217:
.LBB218:
.LBB219:
	.loc 2 1487 0
#APP
	# 1487 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	mov.aa %a2, %a11
	# 0 "" 2
.LVL31:
#NO_APP
.LBE219:
.LBE218:
.LBB220:
.LBB221:
.LBB222:
	.loc 3 649 0
#APP
	# 649 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h" 1
	mfcr %d2, LO:0xFE1C
	# 0 "" 2
.LVL32:
#NO_APP
.LBE222:
.LBE221:
.LBE220:
.LBE217:
.LBE216:
	.loc 1 166 0
	mov	%d15, 6
	movh.a	%a3, hi:trapWatch
	lea	%a15, [%a3] lo:trapWatch
	st.a	[%a3] lo:trapWatch, %a2
.LBB224:
.LBB223:
	.loc 1 80 0
	st.b	[%a15] 4, %d4
.LBE223:
.LBE224:
	.loc 1 166 0
	st.b	[%a15] 5, %d15
	ld.w	%d15, [%a15] 4
	insert	%d15, %d15, %d2, 16, 3
	st.w	[%a15] 4, %d15
	.loc 1 168 0
#APP
	# 168 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rfe
	# 0 "" 2
#NO_APP
	ret
.LFE195:
	.size	IfxCpu_Trap_systemCall_Cpu3, .-IfxCpu_Trap_systemCall_Cpu3
	.align 1
	.global	IfxCpu_Trap_systemCall_Cpu4
	.type	IfxCpu_Trap_systemCall_Cpu4, @function
IfxCpu_Trap_systemCall_Cpu4:
.LFB196:
	.loc 1 173 0
.LVL33:
.LBB225:
.LBB226:
.LBB227:
.LBB228:
	.loc 2 1487 0
#APP
	# 1487 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	mov.aa %a2, %a11
	# 0 "" 2
.LVL34:
#NO_APP
.LBE228:
.LBE227:
.LBB229:
.LBB230:
.LBB231:
	.loc 3 649 0
#APP
	# 649 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h" 1
	mfcr %d2, LO:0xFE1C
	# 0 "" 2
.LVL35:
#NO_APP
.LBE231:
.LBE230:
.LBE229:
.LBE226:
.LBE225:
	.loc 1 174 0
	mov	%d15, 6
	movh.a	%a3, hi:trapWatch
	lea	%a15, [%a3] lo:trapWatch
	st.a	[%a3] lo:trapWatch, %a2
.LBB233:
.LBB232:
	.loc 1 80 0
	st.b	[%a15] 4, %d4
.LBE232:
.LBE233:
	.loc 1 174 0
	st.b	[%a15] 5, %d15
	ld.w	%d15, [%a15] 4
	insert	%d15, %d15, %d2, 16, 3
	st.w	[%a15] 4, %d15
	.loc 1 176 0
#APP
	# 176 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rfe
	# 0 "" 2
#NO_APP
	ret
.LFE196:
	.size	IfxCpu_Trap_systemCall_Cpu4, .-IfxCpu_Trap_systemCall_Cpu4
	.align 1
	.global	IfxCpu_Trap_systemCall_Cpu5
	.type	IfxCpu_Trap_systemCall_Cpu5, @function
IfxCpu_Trap_systemCall_Cpu5:
.LFB197:
	.loc 1 181 0
.LVL36:
.LBB234:
.LBB235:
.LBB236:
.LBB237:
	.loc 2 1487 0
#APP
	# 1487 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	mov.aa %a2, %a11
	# 0 "" 2
.LVL37:
#NO_APP
.LBE237:
.LBE236:
.LBB238:
.LBB239:
.LBB240:
	.loc 3 649 0
#APP
	# 649 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h" 1
	mfcr %d2, LO:0xFE1C
	# 0 "" 2
.LVL38:
#NO_APP
.LBE240:
.LBE239:
.LBE238:
.LBE235:
.LBE234:
	.loc 1 182 0
	mov	%d15, 6
	movh.a	%a3, hi:trapWatch
	lea	%a15, [%a3] lo:trapWatch
	st.a	[%a3] lo:trapWatch, %a2
.LBB242:
.LBB241:
	.loc 1 80 0
	st.b	[%a15] 4, %d4
.LBE241:
.LBE242:
	.loc 1 182 0
	st.b	[%a15] 5, %d15
	ld.w	%d15, [%a15] 4
	insert	%d15, %d15, %d2, 16, 3
	st.w	[%a15] 4, %d15
	.loc 1 184 0
#APP
	# 184 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rfe
	# 0 "" 2
#NO_APP
	ret
.LFE197:
	.size	IfxCpu_Trap_systemCall_Cpu5, .-IfxCpu_Trap_systemCall_Cpu5
.section .traptab_cpu0,"awx",@progbits
	.align 1
	.global	IfxCpu_Trap_vectorTable0
	.type	IfxCpu_Trap_vectorTable0, @function
IfxCpu_Trap_vectorTable0:
.LFB199:
	.loc 1 211 0
	.loc 1 212 0
#APP
	# 212 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	 .align 5
	# 0 "" 2
	# 212 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	mov	 %d4, %d15
	# 0 "" 2
#NO_APP
	movh.a	%a15, hi:IfxCpu_Trap_memoryManagementError
	lea	%a15, [%a15] lo:IfxCpu_Trap_memoryManagementError
#APP
	# 212 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	ji	 %a15
	# 0 "" 2
	# 212 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rfe
	# 0 "" 2
	.loc 1 213 0
	# 213 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	 .align 5
	# 0 "" 2
	# 213 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	mov	 %d4, %d15
	# 0 "" 2
#NO_APP
	movh.a	%a15, hi:IfxCpu_Trap_internalProtectionError
	lea	%a15, [%a15] lo:IfxCpu_Trap_internalProtectionError
#APP
	# 213 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	ji	 %a15
	# 0 "" 2
	# 213 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rfe
	# 0 "" 2
	.loc 1 214 0
	# 214 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	 .align 5
	# 0 "" 2
	# 214 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	mov	 %d4, %d15
	# 0 "" 2
#NO_APP
	movh.a	%a15, hi:IfxCpu_Trap_instructionError
	lea	%a15, [%a15] lo:IfxCpu_Trap_instructionError
#APP
	# 214 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	ji	 %a15
	# 0 "" 2
	# 214 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rfe
	# 0 "" 2
	.loc 1 215 0
	# 215 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	 .align 5
	# 0 "" 2
	# 215 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	mov	 %d4, %d15
	# 0 "" 2
#NO_APP
	movh.a	%a15, hi:IfxCpu_Trap_contextManagementError
	lea	%a15, [%a15] lo:IfxCpu_Trap_contextManagementError
#APP
	# 215 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	ji	 %a15
	# 0 "" 2
	# 215 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rfe
	# 0 "" 2
	.loc 1 216 0
	# 216 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	 .align 5
	# 0 "" 2
	# 216 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	mov	 %d4, %d15
	# 0 "" 2
#NO_APP
	movh.a	%a15, hi:IfxCpu_Trap_busError
	lea	%a15, [%a15] lo:IfxCpu_Trap_busError
#APP
	# 216 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	ji	 %a15
	# 0 "" 2
	# 216 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rfe
	# 0 "" 2
	.loc 1 217 0
	# 217 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	 .align 5
	# 0 "" 2
	# 217 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	mov	 %d4, %d15
	# 0 "" 2
#NO_APP
	movh.a	%a15, hi:IfxCpu_Trap_assertion
	lea	%a15, [%a15] lo:IfxCpu_Trap_assertion
#APP
	# 217 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	ji	 %a15
	# 0 "" 2
	# 217 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rfe
	# 0 "" 2
	.loc 1 218 0
	# 218 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	 .align 5
	# 0 "" 2
	# 218 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	mov	 %d4, %d15
	# 0 "" 2
#NO_APP
	movh.a	%a15, hi:IfxCpu_Trap_systemCall_Cpu0
	lea	%a15, [%a15] lo:IfxCpu_Trap_systemCall_Cpu0
#APP
	# 218 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	ji	 %a15
	# 0 "" 2
	# 218 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rfe
	# 0 "" 2
	.loc 1 219 0
	# 219 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	 .align 5
	# 0 "" 2
	# 219 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	mov	 %d4, %d15
	# 0 "" 2
#NO_APP
	movh.a	%a15, hi:IfxCpu_Trap_nonMaskableInterrupt
	lea	%a15, [%a15] lo:IfxCpu_Trap_nonMaskableInterrupt
#APP
	# 219 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	ji	 %a15
	# 0 "" 2
	# 219 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rfe
	# 0 "" 2
#NO_APP
	ret
.LFE199:
	.size	IfxCpu_Trap_vectorTable0, .-IfxCpu_Trap_vectorTable0
.section .traptab_cpu1,"awx",@progbits
	.align 1
	.global	IfxCpu_Trap_vectorTable1
	.type	IfxCpu_Trap_vectorTable1, @function
IfxCpu_Trap_vectorTable1:
.LFB200:
	.loc 1 237 0
	.loc 1 238 0
#APP
	# 238 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	 .align 5
	# 0 "" 2
	# 238 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	mov	 %d4, %d15
	# 0 "" 2
#NO_APP
	movh.a	%a15, hi:IfxCpu_Trap_memoryManagementError
	lea	%a15, [%a15] lo:IfxCpu_Trap_memoryManagementError
#APP
	# 238 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	ji	 %a15
	# 0 "" 2
	# 238 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rfe
	# 0 "" 2
	.loc 1 239 0
	# 239 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	 .align 5
	# 0 "" 2
	# 239 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	mov	 %d4, %d15
	# 0 "" 2
#NO_APP
	movh.a	%a15, hi:IfxCpu_Trap_internalProtectionError
	lea	%a15, [%a15] lo:IfxCpu_Trap_internalProtectionError
#APP
	# 239 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	ji	 %a15
	# 0 "" 2
	# 239 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rfe
	# 0 "" 2
	.loc 1 240 0
	# 240 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	 .align 5
	# 0 "" 2
	# 240 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	mov	 %d4, %d15
	# 0 "" 2
#NO_APP
	movh.a	%a15, hi:IfxCpu_Trap_instructionError
	lea	%a15, [%a15] lo:IfxCpu_Trap_instructionError
#APP
	# 240 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	ji	 %a15
	# 0 "" 2
	# 240 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rfe
	# 0 "" 2
	.loc 1 241 0
	# 241 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	 .align 5
	# 0 "" 2
	# 241 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	mov	 %d4, %d15
	# 0 "" 2
#NO_APP
	movh.a	%a15, hi:IfxCpu_Trap_contextManagementError
	lea	%a15, [%a15] lo:IfxCpu_Trap_contextManagementError
#APP
	# 241 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	ji	 %a15
	# 0 "" 2
	# 241 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rfe
	# 0 "" 2
	.loc 1 242 0
	# 242 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	 .align 5
	# 0 "" 2
	# 242 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	mov	 %d4, %d15
	# 0 "" 2
#NO_APP
	movh.a	%a15, hi:IfxCpu_Trap_busError
	lea	%a15, [%a15] lo:IfxCpu_Trap_busError
#APP
	# 242 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	ji	 %a15
	# 0 "" 2
	# 242 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rfe
	# 0 "" 2
	.loc 1 243 0
	# 243 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	 .align 5
	# 0 "" 2
	# 243 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	mov	 %d4, %d15
	# 0 "" 2
#NO_APP
	movh.a	%a15, hi:IfxCpu_Trap_assertion
	lea	%a15, [%a15] lo:IfxCpu_Trap_assertion
#APP
	# 243 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	ji	 %a15
	# 0 "" 2
	# 243 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rfe
	# 0 "" 2
	.loc 1 244 0
	# 244 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	 .align 5
	# 0 "" 2
	# 244 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	mov	 %d4, %d15
	# 0 "" 2
#NO_APP
	movh.a	%a15, hi:IfxCpu_Trap_systemCall_Cpu1
	lea	%a15, [%a15] lo:IfxCpu_Trap_systemCall_Cpu1
#APP
	# 244 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	ji	 %a15
	# 0 "" 2
	# 244 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rfe
	# 0 "" 2
	.loc 1 245 0
	# 245 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	 .align 5
	# 0 "" 2
	# 245 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	mov	 %d4, %d15
	# 0 "" 2
#NO_APP
	movh.a	%a15, hi:IfxCpu_Trap_nonMaskableInterrupt
	lea	%a15, [%a15] lo:IfxCpu_Trap_nonMaskableInterrupt
#APP
	# 245 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	ji	 %a15
	# 0 "" 2
	# 245 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rfe
	# 0 "" 2
#NO_APP
	ret
.LFE200:
	.size	IfxCpu_Trap_vectorTable1, .-IfxCpu_Trap_vectorTable1
.section .traptab_cpu2,"awx",@progbits
	.align 1
	.global	IfxCpu_Trap_vectorTable2
	.type	IfxCpu_Trap_vectorTable2, @function
IfxCpu_Trap_vectorTable2:
.LFB201:
	.loc 1 265 0
	.loc 1 266 0
#APP
	# 266 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	 .align 5
	# 0 "" 2
	# 266 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	mov	 %d4, %d15
	# 0 "" 2
#NO_APP
	movh.a	%a15, hi:IfxCpu_Trap_memoryManagementError
	lea	%a15, [%a15] lo:IfxCpu_Trap_memoryManagementError
#APP
	# 266 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	ji	 %a15
	# 0 "" 2
	# 266 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rfe
	# 0 "" 2
	.loc 1 267 0
	# 267 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	 .align 5
	# 0 "" 2
	# 267 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	mov	 %d4, %d15
	# 0 "" 2
#NO_APP
	movh.a	%a15, hi:IfxCpu_Trap_internalProtectionError
	lea	%a15, [%a15] lo:IfxCpu_Trap_internalProtectionError
#APP
	# 267 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	ji	 %a15
	# 0 "" 2
	# 267 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rfe
	# 0 "" 2
	.loc 1 268 0
	# 268 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	 .align 5
	# 0 "" 2
	# 268 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	mov	 %d4, %d15
	# 0 "" 2
#NO_APP
	movh.a	%a15, hi:IfxCpu_Trap_instructionError
	lea	%a15, [%a15] lo:IfxCpu_Trap_instructionError
#APP
	# 268 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	ji	 %a15
	# 0 "" 2
	# 268 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rfe
	# 0 "" 2
	.loc 1 269 0
	# 269 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	 .align 5
	# 0 "" 2
	# 269 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	mov	 %d4, %d15
	# 0 "" 2
#NO_APP
	movh.a	%a15, hi:IfxCpu_Trap_contextManagementError
	lea	%a15, [%a15] lo:IfxCpu_Trap_contextManagementError
#APP
	# 269 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	ji	 %a15
	# 0 "" 2
	# 269 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rfe
	# 0 "" 2
	.loc 1 270 0
	# 270 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	 .align 5
	# 0 "" 2
	# 270 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	mov	 %d4, %d15
	# 0 "" 2
#NO_APP
	movh.a	%a15, hi:IfxCpu_Trap_busError
	lea	%a15, [%a15] lo:IfxCpu_Trap_busError
#APP
	# 270 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	ji	 %a15
	# 0 "" 2
	# 270 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rfe
	# 0 "" 2
	.loc 1 271 0
	# 271 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	 .align 5
	# 0 "" 2
	# 271 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	mov	 %d4, %d15
	# 0 "" 2
#NO_APP
	movh.a	%a15, hi:IfxCpu_Trap_assertion
	lea	%a15, [%a15] lo:IfxCpu_Trap_assertion
#APP
	# 271 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	ji	 %a15
	# 0 "" 2
	# 271 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rfe
	# 0 "" 2
	.loc 1 272 0
	# 272 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	 .align 5
	# 0 "" 2
	# 272 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	mov	 %d4, %d15
	# 0 "" 2
#NO_APP
	movh.a	%a15, hi:IfxCpu_Trap_systemCall_Cpu2
	lea	%a15, [%a15] lo:IfxCpu_Trap_systemCall_Cpu2
#APP
	# 272 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	ji	 %a15
	# 0 "" 2
	# 272 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rfe
	# 0 "" 2
	.loc 1 273 0
	# 273 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	 .align 5
	# 0 "" 2
	# 273 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	mov	 %d4, %d15
	# 0 "" 2
#NO_APP
	movh.a	%a15, hi:IfxCpu_Trap_nonMaskableInterrupt
	lea	%a15, [%a15] lo:IfxCpu_Trap_nonMaskableInterrupt
#APP
	# 273 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	ji	 %a15
	# 0 "" 2
	# 273 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rfe
	# 0 "" 2
#NO_APP
	ret
.LFE201:
	.size	IfxCpu_Trap_vectorTable2, .-IfxCpu_Trap_vectorTable2
	.global	trapWatch
.section .bss,"aw",@nobits
	.align 2
	.type	trapWatch, @object
	.size	trapWatch, 8
trapWatch:
	.zero	8
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
	.uaword	.LFB186
	.uaword	.LFE186-.LFB186
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB187
	.uaword	.LFE187-.LFB187
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB188
	.uaword	.LFE188-.LFB188
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB189
	.uaword	.LFE189-.LFB189
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB190
	.uaword	.LFE190-.LFB190
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB191
	.uaword	.LFE191-.LFB191
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB192
	.uaword	.LFE192-.LFB192
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB193
	.uaword	.LFE193-.LFB193
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB194
	.uaword	.LFE194-.LFB194
	.align 2
.LEFDE16:
.LSFDE18:
	.uaword	.LEFDE18-.LASFDE18
.LASFDE18:
	.uaword	.Lframe0
	.uaword	.LFB198
	.uaword	.LFE198-.LFB198
	.align 2
.LEFDE18:
.LSFDE20:
	.uaword	.LEFDE20-.LASFDE20
.LASFDE20:
	.uaword	.Lframe0
	.uaword	.LFB195
	.uaword	.LFE195-.LFB195
	.align 2
.LEFDE20:
.LSFDE22:
	.uaword	.LEFDE22-.LASFDE22
.LASFDE22:
	.uaword	.Lframe0
	.uaword	.LFB196
	.uaword	.LFE196-.LFB196
	.align 2
.LEFDE22:
.LSFDE24:
	.uaword	.LEFDE24-.LASFDE24
.LASFDE24:
	.uaword	.Lframe0
	.uaword	.LFB197
	.uaword	.LFE197-.LFB197
	.align 2
.LEFDE24:
.LSFDE26:
	.uaword	.LEFDE26-.LASFDE26
.LASFDE26:
	.uaword	.Lframe0
	.uaword	.LFB199
	.uaword	.LFE199-.LFB199
	.align 2
.LEFDE26:
.LSFDE28:
	.uaword	.LEFDE28-.LASFDE28
.LASFDE28:
	.uaword	.Lframe0
	.uaword	.LFB200
	.uaword	.LFE200-.LFB200
	.align 2
.LEFDE28:
.LSFDE30:
	.uaword	.LEFDE30-.LASFDE30
.LASFDE30:
	.uaword	.Lframe0
	.uaword	.LFB201
	.uaword	.LFE201-.LFB201
	.align 2
.LEFDE30:
.section .text,"ax",@progbits
.Letext0:
	.file 4 "./0_Src/4_McHal/Tricore/Cpu/Std/Platform_Types.h"
	.file 5 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.h"
	.file 6 "./0_Src/4_McHal/Tricore/_Reg/IfxCpu_regdef.h"
	.file 7 "./0_Src/4_McHal/Tricore/_Impl/IfxCpu_cfg.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x1092
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9."
	.string	"4 build on 2018-04-18 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -msmall-const=8 -mtc161 -g -g -O2 -fno-common -fno-short-enums -fsingle-precision-constant -fstrict-volatile-bitfields"
	.byte	0x1
	.string	"0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c"
	.string	"D:\\\\00.Workspace\\\\TC275\\\\SKKU_ECU_SOMEIP\\\\TC275_SOME_IP_Flatform"
	.uaword	.Ldebug_ranges0+0x138
	.uaword	0
	.uaword	0
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
	.uaword	0x1da
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"uint32"
	.byte	0x4
	.byte	0x5d
	.uaword	0x1a2
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
	.uleb128 0x4
	.byte	0x4
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.byte	0x37
	.uaword	0x383
	.uleb128 0x6
	.string	"IfxCpu_Trap_Class_memoryManagement"
	.sleb128 0
	.uleb128 0x6
	.string	"IfxCpu_Trap_Class_internalProtection"
	.sleb128 1
	.uleb128 0x6
	.string	"IfxCpu_Trap_Class_instructionErrors"
	.sleb128 2
	.uleb128 0x6
	.string	"IfxCpu_Trap_Class_contextManagement"
	.sleb128 3
	.uleb128 0x6
	.string	"IfxCpu_Trap_Class_bus"
	.sleb128 4
	.uleb128 0x6
	.string	"IfxCpu_Trap_Class_assertion"
	.sleb128 5
	.uleb128 0x6
	.string	"IfxCpu_Trap_Class_systemCall"
	.sleb128 6
	.uleb128 0x6
	.string	"IfxCpu_Trap_Class_nonMaskableInterrupt"
	.sleb128 7
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.byte	0x5
	.byte	0xa6
	.uaword	0x3cb
	.uleb128 0x8
	.string	"tAddr"
	.byte	0x5
	.byte	0xa8
	.uaword	0x3cb
	.byte	0
	.uleb128 0x9
	.string	"tId"
	.byte	0x5
	.byte	0xa9
	.uaword	0x3cb
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x4
	.uleb128 0x9
	.string	"tClass"
	.byte	0x5
	.byte	0xaa
	.uaword	0x3cb
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0x4
	.uleb128 0x9
	.string	"tCpu"
	.byte	0x5
	.byte	0xab
	.uaword	0x3cb
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x3
	.string	"IfxCpu_Trap"
	.byte	0x5
	.byte	0xac
	.uaword	0x383
	.uleb128 0xa
	.uaword	0x3cb
	.uleb128 0xb
	.string	"_Ifx_CPU_CORE_ID_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0x5c
	.uaword	0x43b
	.uleb128 0x9
	.string	"CORE_ID"
	.byte	0x6
	.byte	0x5e
	.uaword	0x3ee
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0x9
	.string	"reserved_3"
	.byte	0x6
	.byte	0x5f
	.uaword	0x3ee
	.byte	0x4
	.byte	0x1d
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_CPU_CORE_ID_Bits"
	.byte	0x6
	.byte	0x60
	.uaword	0x3f3
	.uleb128 0xc
	.byte	0x4
	.byte	0x6
	.uahalf	0x2f1
	.uaword	0x47f
	.uleb128 0xd
	.string	"U"
	.byte	0x6
	.uahalf	0x2f4
	.uaword	0x3cb
	.uleb128 0xd
	.string	"I"
	.byte	0x6
	.uahalf	0x2f6
	.uaword	0x1b7
	.uleb128 0xd
	.string	"B"
	.byte	0x6
	.uahalf	0x2f8
	.uaword	0x43b
	.byte	0
	.uleb128 0xe
	.string	"Ifx_CPU_CORE_ID"
	.byte	0x6
	.uahalf	0x2f9
	.uaword	0x457
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.byte	0x54
	.uaword	0x50b
	.uleb128 0x6
	.string	"IfxCpu_ResourceCpu_0"
	.sleb128 0
	.uleb128 0x6
	.string	"IfxCpu_ResourceCpu_1"
	.sleb128 1
	.uleb128 0x6
	.string	"IfxCpu_ResourceCpu_2"
	.sleb128 2
	.uleb128 0x6
	.string	"IfxCpu_ResourceCpu_none"
	.sleb128 3
	.byte	0
	.uleb128 0x3
	.string	"IfxCpu_ResourceCpu"
	.byte	0x7
	.byte	0x59
	.uaword	0x4a3
	.uleb128 0xf
	.string	"__getA11"
	.byte	0x2
	.uahalf	0x5cc
	.byte	0x1
	.uaword	0x262
	.byte	0x3
	.uaword	0x549
	.uleb128 0x10
	.string	"res"
	.byte	0x2
	.uahalf	0x5ce
	.uaword	0x549
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.uaword	0x20e
	.uleb128 0xf
	.string	"IfxCpu_getCoreId"
	.byte	0x3
	.uahalf	0x286
	.byte	0x1
	.uaword	0x50b
	.byte	0x3
	.uaword	0x58b
	.uleb128 0x10
	.string	"reg"
	.byte	0x3
	.uahalf	0x288
	.uaword	0x47f
	.uleb128 0x12
	.uleb128 0x10
	.string	"__res"
	.byte	0x3
	.uahalf	0x289
	.uaword	0x3cb
	.byte	0
	.byte	0
	.uleb128 0x13
	.string	"IfxCpu_Trap_extractTrapInfo"
	.byte	0x1
	.byte	0x4b
	.byte	0x1
	.uaword	0x3db
	.byte	0x3
	.uaword	0x5e1
	.uleb128 0x14
	.string	"trapClass"
	.byte	0x1
	.byte	0x4b
	.uaword	0x1cd
	.uleb128 0x14
	.string	"tin"
	.byte	0x1
	.byte	0x4b
	.uaword	0x20e
	.uleb128 0x15
	.string	"trapInfo"
	.byte	0x1
	.byte	0x4d
	.uaword	0x3db
	.byte	0
	.uleb128 0x16
	.string	"__debug"
	.byte	0x2
	.uahalf	0x539
	.byte	0x1
	.byte	0x3
	.uleb128 0x17
	.byte	0x1
	.string	"IfxCpu_Trap_memoryManagementError"
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.uaword	.LFB186
	.uaword	.LFE186
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x6c3
	.uleb128 0x18
	.string	"tin"
	.byte	0x1
	.byte	0x56
	.uaword	0x20e
	.byte	0x1
	.byte	0x54
	.uleb128 0x19
	.uaword	0x58b
	.uaword	.LBB112
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x58
	.uaword	0x6b3
	.uleb128 0x1a
	.uaword	0x5c5
	.byte	0x1
	.byte	0x54
	.uleb128 0x1b
	.uaword	0x5b4
	.byte	0
	.uleb128 0x1c
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x1d
	.uaword	0x5d0
	.uleb128 0x1e
	.uaword	0x525
	.uaword	.LBB114
	.uaword	.LBE114
	.byte	0x1
	.byte	0x4e
	.uaword	0x681
	.uleb128 0x1f
	.uaword	.LBB115
	.uaword	.LBE115
	.uleb128 0x20
	.uaword	0x53c
	.byte	0x1
	.byte	0x62
	.byte	0
	.byte	0
	.uleb128 0x21
	.uaword	0x54f
	.uaword	.LBB116
	.uaword	.LBE116
	.byte	0x1
	.byte	0x51
	.uleb128 0x1f
	.uaword	.LBB117
	.uaword	.LBE117
	.uleb128 0x1d
	.uaword	0x56e
	.uleb128 0x1f
	.uaword	.LBB118
	.uaword	.LBE118
	.uleb128 0x20
	.uaword	0x57b
	.byte	0x1
	.byte	0x52
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
	.uaword	0x5e1
	.uaword	.LBB121
	.uaword	.LBE121
	.byte	0x1
	.byte	0x5a
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.string	"IfxCpu_Trap_internalProtectionError"
	.byte	0x1
	.byte	0x5f
	.byte	0x1
	.uaword	.LFB187
	.uaword	.LFE187
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x799
	.uleb128 0x18
	.string	"tin"
	.byte	0x1
	.byte	0x5f
	.uaword	0x20e
	.byte	0x1
	.byte	0x54
	.uleb128 0x19
	.uaword	0x58b
	.uaword	.LBB123
	.uaword	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0x61
	.uaword	0x789
	.uleb128 0x1a
	.uaword	0x5c5
	.byte	0x1
	.byte	0x54
	.uleb128 0x1b
	.uaword	0x5b4
	.byte	0x1
	.uleb128 0x1c
	.uaword	.Ldebug_ranges0+0x18
	.uleb128 0x1d
	.uaword	0x5d0
	.uleb128 0x1e
	.uaword	0x525
	.uaword	.LBB125
	.uaword	.LBE125
	.byte	0x1
	.byte	0x4e
	.uaword	0x757
	.uleb128 0x1f
	.uaword	.LBB126
	.uaword	.LBE126
	.uleb128 0x20
	.uaword	0x53c
	.byte	0x1
	.byte	0x62
	.byte	0
	.byte	0
	.uleb128 0x21
	.uaword	0x54f
	.uaword	.LBB127
	.uaword	.LBE127
	.byte	0x1
	.byte	0x51
	.uleb128 0x1f
	.uaword	.LBB128
	.uaword	.LBE128
	.uleb128 0x1d
	.uaword	0x56e
	.uleb128 0x1f
	.uaword	.LBB129
	.uaword	.LBE129
	.uleb128 0x20
	.uaword	0x57b
	.byte	0x1
	.byte	0x52
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
	.uaword	0x5e1
	.uaword	.LBB132
	.uaword	.LBE132
	.byte	0x1
	.byte	0x63
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.string	"IfxCpu_Trap_instructionError"
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.uaword	.LFB188
	.uaword	.LFE188
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x868
	.uleb128 0x18
	.string	"tin"
	.byte	0x1
	.byte	0x68
	.uaword	0x20e
	.byte	0x1
	.byte	0x54
	.uleb128 0x19
	.uaword	0x58b
	.uaword	.LBB134
	.uaword	.Ldebug_ranges0+0x30
	.byte	0x1
	.byte	0x6a
	.uaword	0x858
	.uleb128 0x1a
	.uaword	0x5c5
	.byte	0x1
	.byte	0x54
	.uleb128 0x1b
	.uaword	0x5b4
	.byte	0x2
	.uleb128 0x1c
	.uaword	.Ldebug_ranges0+0x30
	.uleb128 0x1d
	.uaword	0x5d0
	.uleb128 0x1e
	.uaword	0x525
	.uaword	.LBB136
	.uaword	.LBE136
	.byte	0x1
	.byte	0x4e
	.uaword	0x826
	.uleb128 0x1f
	.uaword	.LBB137
	.uaword	.LBE137
	.uleb128 0x20
	.uaword	0x53c
	.byte	0x1
	.byte	0x62
	.byte	0
	.byte	0
	.uleb128 0x21
	.uaword	0x54f
	.uaword	.LBB138
	.uaword	.LBE138
	.byte	0x1
	.byte	0x51
	.uleb128 0x1f
	.uaword	.LBB139
	.uaword	.LBE139
	.uleb128 0x1d
	.uaword	0x56e
	.uleb128 0x1f
	.uaword	.LBB140
	.uaword	.LBE140
	.uleb128 0x20
	.uaword	0x57b
	.byte	0x1
	.byte	0x52
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
	.uaword	0x5e1
	.uaword	.LBB143
	.uaword	.LBE143
	.byte	0x1
	.byte	0x6c
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.string	"IfxCpu_Trap_contextManagementError"
	.byte	0x1
	.byte	0x71
	.byte	0x1
	.uaword	.LFB189
	.uaword	.LFE189
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x93d
	.uleb128 0x18
	.string	"tin"
	.byte	0x1
	.byte	0x71
	.uaword	0x20e
	.byte	0x1
	.byte	0x54
	.uleb128 0x19
	.uaword	0x58b
	.uaword	.LBB145
	.uaword	.Ldebug_ranges0+0x48
	.byte	0x1
	.byte	0x73
	.uaword	0x92d
	.uleb128 0x1a
	.uaword	0x5c5
	.byte	0x1
	.byte	0x54
	.uleb128 0x1b
	.uaword	0x5b4
	.byte	0x3
	.uleb128 0x1c
	.uaword	.Ldebug_ranges0+0x48
	.uleb128 0x1d
	.uaword	0x5d0
	.uleb128 0x1e
	.uaword	0x525
	.uaword	.LBB147
	.uaword	.LBE147
	.byte	0x1
	.byte	0x4e
	.uaword	0x8fb
	.uleb128 0x1f
	.uaword	.LBB148
	.uaword	.LBE148
	.uleb128 0x20
	.uaword	0x53c
	.byte	0x1
	.byte	0x62
	.byte	0
	.byte	0
	.uleb128 0x21
	.uaword	0x54f
	.uaword	.LBB149
	.uaword	.LBE149
	.byte	0x1
	.byte	0x51
	.uleb128 0x1f
	.uaword	.LBB150
	.uaword	.LBE150
	.uleb128 0x1d
	.uaword	0x56e
	.uleb128 0x1f
	.uaword	.LBB151
	.uaword	.LBE151
	.uleb128 0x20
	.uaword	0x57b
	.byte	0x1
	.byte	0x52
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
	.uaword	0x5e1
	.uaword	.LBB154
	.uaword	.LBE154
	.byte	0x1
	.byte	0x75
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.string	"IfxCpu_Trap_busError"
	.byte	0x1
	.byte	0x7a
	.byte	0x1
	.uaword	.LFB190
	.uaword	.LFE190
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xa04
	.uleb128 0x18
	.string	"tin"
	.byte	0x1
	.byte	0x7a
	.uaword	0x20e
	.byte	0x1
	.byte	0x54
	.uleb128 0x19
	.uaword	0x58b
	.uaword	.LBB156
	.uaword	.Ldebug_ranges0+0x60
	.byte	0x1
	.byte	0x7c
	.uaword	0x9f4
	.uleb128 0x1a
	.uaword	0x5c5
	.byte	0x1
	.byte	0x54
	.uleb128 0x1b
	.uaword	0x5b4
	.byte	0x4
	.uleb128 0x1c
	.uaword	.Ldebug_ranges0+0x60
	.uleb128 0x1d
	.uaword	0x5d0
	.uleb128 0x1e
	.uaword	0x525
	.uaword	.LBB158
	.uaword	.LBE158
	.byte	0x1
	.byte	0x4e
	.uaword	0x9c2
	.uleb128 0x1f
	.uaword	.LBB159
	.uaword	.LBE159
	.uleb128 0x20
	.uaword	0x53c
	.byte	0x1
	.byte	0x62
	.byte	0
	.byte	0
	.uleb128 0x21
	.uaword	0x54f
	.uaword	.LBB160
	.uaword	.LBE160
	.byte	0x1
	.byte	0x51
	.uleb128 0x1f
	.uaword	.LBB161
	.uaword	.LBE161
	.uleb128 0x1d
	.uaword	0x56e
	.uleb128 0x1f
	.uaword	.LBB162
	.uaword	.LBE162
	.uleb128 0x20
	.uaword	0x57b
	.byte	0x1
	.byte	0x52
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
	.uaword	0x5e1
	.uaword	.LBB165
	.uaword	.LBE165
	.byte	0x1
	.byte	0x7e
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.string	"IfxCpu_Trap_assertion"
	.byte	0x1
	.byte	0x83
	.byte	0x1
	.uaword	.LFB191
	.uaword	.LFE191
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xacc
	.uleb128 0x18
	.string	"tin"
	.byte	0x1
	.byte	0x83
	.uaword	0x20e
	.byte	0x1
	.byte	0x54
	.uleb128 0x19
	.uaword	0x58b
	.uaword	.LBB167
	.uaword	.Ldebug_ranges0+0x78
	.byte	0x1
	.byte	0x85
	.uaword	0xabc
	.uleb128 0x1a
	.uaword	0x5c5
	.byte	0x1
	.byte	0x54
	.uleb128 0x1b
	.uaword	0x5b4
	.byte	0x5
	.uleb128 0x1c
	.uaword	.Ldebug_ranges0+0x78
	.uleb128 0x1d
	.uaword	0x5d0
	.uleb128 0x1e
	.uaword	0x525
	.uaword	.LBB169
	.uaword	.LBE169
	.byte	0x1
	.byte	0x4e
	.uaword	0xa8a
	.uleb128 0x1f
	.uaword	.LBB170
	.uaword	.LBE170
	.uleb128 0x20
	.uaword	0x53c
	.byte	0x1
	.byte	0x62
	.byte	0
	.byte	0
	.uleb128 0x21
	.uaword	0x54f
	.uaword	.LBB171
	.uaword	.LBE171
	.byte	0x1
	.byte	0x51
	.uleb128 0x1f
	.uaword	.LBB172
	.uaword	.LBE172
	.uleb128 0x1d
	.uaword	0x56e
	.uleb128 0x1f
	.uaword	.LBB173
	.uaword	.LBE173
	.uleb128 0x20
	.uaword	0x57b
	.byte	0x1
	.byte	0x52
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
	.uaword	0x5e1
	.uaword	.LBB176
	.uaword	.LBE176
	.byte	0x1
	.byte	0x87
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.string	"IfxCpu_Trap_systemCall_Cpu0"
	.byte	0x1
	.byte	0x8c
	.byte	0x1
	.uaword	.LFB192
	.uaword	.LFE192
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xb87
	.uleb128 0x18
	.string	"tin"
	.byte	0x1
	.byte	0x8c
	.uaword	0x20e
	.byte	0x1
	.byte	0x54
	.uleb128 0x23
	.uaword	0x58b
	.uaword	.LBB178
	.uaword	.Ldebug_ranges0+0x90
	.byte	0x1
	.byte	0x8e
	.uleb128 0x1a
	.uaword	0x5c5
	.byte	0x1
	.byte	0x54
	.uleb128 0x1b
	.uaword	0x5b4
	.byte	0x6
	.uleb128 0x1c
	.uaword	.Ldebug_ranges0+0x90
	.uleb128 0x1d
	.uaword	0x5d0
	.uleb128 0x1e
	.uaword	0x525
	.uaword	.LBB180
	.uaword	.LBE180
	.byte	0x1
	.byte	0x4e
	.uaword	0xb54
	.uleb128 0x1f
	.uaword	.LBB181
	.uaword	.LBE181
	.uleb128 0x20
	.uaword	0x53c
	.byte	0x1
	.byte	0x62
	.byte	0
	.byte	0
	.uleb128 0x21
	.uaword	0x54f
	.uaword	.LBB182
	.uaword	.LBE182
	.byte	0x1
	.byte	0x51
	.uleb128 0x1f
	.uaword	.LBB183
	.uaword	.LBE183
	.uleb128 0x1d
	.uaword	0x56e
	.uleb128 0x1f
	.uaword	.LBB184
	.uaword	.LBE184
	.uleb128 0x20
	.uaword	0x57b
	.byte	0x1
	.byte	0x52
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.string	"IfxCpu_Trap_systemCall_Cpu1"
	.byte	0x1
	.byte	0x94
	.byte	0x1
	.uaword	.LFB193
	.uaword	.LFE193
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xc42
	.uleb128 0x18
	.string	"tin"
	.byte	0x1
	.byte	0x94
	.uaword	0x20e
	.byte	0x1
	.byte	0x54
	.uleb128 0x23
	.uaword	0x58b
	.uaword	.LBB187
	.uaword	.Ldebug_ranges0+0xa8
	.byte	0x1
	.byte	0x96
	.uleb128 0x1a
	.uaword	0x5c5
	.byte	0x1
	.byte	0x54
	.uleb128 0x1b
	.uaword	0x5b4
	.byte	0x6
	.uleb128 0x1c
	.uaword	.Ldebug_ranges0+0xa8
	.uleb128 0x1d
	.uaword	0x5d0
	.uleb128 0x1e
	.uaword	0x525
	.uaword	.LBB189
	.uaword	.LBE189
	.byte	0x1
	.byte	0x4e
	.uaword	0xc0f
	.uleb128 0x1f
	.uaword	.LBB190
	.uaword	.LBE190
	.uleb128 0x20
	.uaword	0x53c
	.byte	0x1
	.byte	0x62
	.byte	0
	.byte	0
	.uleb128 0x21
	.uaword	0x54f
	.uaword	.LBB191
	.uaword	.LBE191
	.byte	0x1
	.byte	0x51
	.uleb128 0x1f
	.uaword	.LBB192
	.uaword	.LBE192
	.uleb128 0x1d
	.uaword	0x56e
	.uleb128 0x1f
	.uaword	.LBB193
	.uaword	.LBE193
	.uleb128 0x20
	.uaword	0x57b
	.byte	0x1
	.byte	0x52
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.string	"IfxCpu_Trap_systemCall_Cpu2"
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	.LFB194
	.uaword	.LFE194
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xcfd
	.uleb128 0x18
	.string	"tin"
	.byte	0x1
	.byte	0x9c
	.uaword	0x20e
	.byte	0x1
	.byte	0x54
	.uleb128 0x23
	.uaword	0x58b
	.uaword	.LBB196
	.uaword	.Ldebug_ranges0+0xc0
	.byte	0x1
	.byte	0x9e
	.uleb128 0x1a
	.uaword	0x5c5
	.byte	0x1
	.byte	0x54
	.uleb128 0x1b
	.uaword	0x5b4
	.byte	0x6
	.uleb128 0x1c
	.uaword	.Ldebug_ranges0+0xc0
	.uleb128 0x1d
	.uaword	0x5d0
	.uleb128 0x1e
	.uaword	0x525
	.uaword	.LBB198
	.uaword	.LBE198
	.byte	0x1
	.byte	0x4e
	.uaword	0xcca
	.uleb128 0x1f
	.uaword	.LBB199
	.uaword	.LBE199
	.uleb128 0x20
	.uaword	0x53c
	.byte	0x1
	.byte	0x62
	.byte	0
	.byte	0
	.uleb128 0x21
	.uaword	0x54f
	.uaword	.LBB200
	.uaword	.LBE200
	.byte	0x1
	.byte	0x51
	.uleb128 0x1f
	.uaword	.LBB201
	.uaword	.LBE201
	.uleb128 0x1d
	.uaword	0x56e
	.uleb128 0x1f
	.uaword	.LBB202
	.uaword	.LBE202
	.uleb128 0x20
	.uaword	0x57b
	.byte	0x1
	.byte	0x52
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.string	"IfxCpu_Trap_nonMaskableInterrupt"
	.byte	0x1
	.byte	0xbc
	.byte	0x1
	.uaword	.LFB198
	.uaword	.LFE198
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xdd0
	.uleb128 0x18
	.string	"tin"
	.byte	0x1
	.byte	0xbc
	.uaword	0x20e
	.byte	0x1
	.byte	0x54
	.uleb128 0x19
	.uaword	0x58b
	.uaword	.LBB205
	.uaword	.Ldebug_ranges0+0xd8
	.byte	0x1
	.byte	0xbe
	.uaword	0xdc0
	.uleb128 0x1a
	.uaword	0x5c5
	.byte	0x1
	.byte	0x54
	.uleb128 0x1b
	.uaword	0x5b4
	.byte	0x7
	.uleb128 0x1c
	.uaword	.Ldebug_ranges0+0xd8
	.uleb128 0x1d
	.uaword	0x5d0
	.uleb128 0x1e
	.uaword	0x525
	.uaword	.LBB207
	.uaword	.LBE207
	.byte	0x1
	.byte	0x4e
	.uaword	0xd8e
	.uleb128 0x1f
	.uaword	.LBB208
	.uaword	.LBE208
	.uleb128 0x20
	.uaword	0x53c
	.byte	0x1
	.byte	0x62
	.byte	0
	.byte	0
	.uleb128 0x21
	.uaword	0x54f
	.uaword	.LBB209
	.uaword	.LBE209
	.byte	0x1
	.byte	0x51
	.uleb128 0x1f
	.uaword	.LBB210
	.uaword	.LBE210
	.uleb128 0x1d
	.uaword	0x56e
	.uleb128 0x1f
	.uaword	.LBB211
	.uaword	.LBE211
	.uleb128 0x20
	.uaword	0x57b
	.byte	0x1
	.byte	0x52
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
	.uaword	0x5e1
	.uaword	.LBB214
	.uaword	.LBE214
	.byte	0x1
	.byte	0xc0
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.string	"IfxCpu_Trap_systemCall_Cpu3"
	.byte	0x1
	.byte	0xa4
	.byte	0x1
	.uaword	.LFB195
	.uaword	.LFE195
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xe8b
	.uleb128 0x18
	.string	"tin"
	.byte	0x1
	.byte	0xa4
	.uaword	0x20e
	.byte	0x1
	.byte	0x54
	.uleb128 0x23
	.uaword	0x58b
	.uaword	.LBB216
	.uaword	.Ldebug_ranges0+0xf0
	.byte	0x1
	.byte	0xa6
	.uleb128 0x1a
	.uaword	0x5c5
	.byte	0x1
	.byte	0x54
	.uleb128 0x1b
	.uaword	0x5b4
	.byte	0x6
	.uleb128 0x1c
	.uaword	.Ldebug_ranges0+0xf0
	.uleb128 0x1d
	.uaword	0x5d0
	.uleb128 0x1e
	.uaword	0x525
	.uaword	.LBB218
	.uaword	.LBE218
	.byte	0x1
	.byte	0x4e
	.uaword	0xe58
	.uleb128 0x1f
	.uaword	.LBB219
	.uaword	.LBE219
	.uleb128 0x20
	.uaword	0x53c
	.byte	0x1
	.byte	0x62
	.byte	0
	.byte	0
	.uleb128 0x21
	.uaword	0x54f
	.uaword	.LBB220
	.uaword	.LBE220
	.byte	0x1
	.byte	0x51
	.uleb128 0x1f
	.uaword	.LBB221
	.uaword	.LBE221
	.uleb128 0x1d
	.uaword	0x56e
	.uleb128 0x1f
	.uaword	.LBB222
	.uaword	.LBE222
	.uleb128 0x20
	.uaword	0x57b
	.byte	0x1
	.byte	0x52
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.string	"IfxCpu_Trap_systemCall_Cpu4"
	.byte	0x1
	.byte	0xac
	.byte	0x1
	.uaword	.LFB196
	.uaword	.LFE196
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xf46
	.uleb128 0x18
	.string	"tin"
	.byte	0x1
	.byte	0xac
	.uaword	0x20e
	.byte	0x1
	.byte	0x54
	.uleb128 0x23
	.uaword	0x58b
	.uaword	.LBB225
	.uaword	.Ldebug_ranges0+0x108
	.byte	0x1
	.byte	0xae
	.uleb128 0x1a
	.uaword	0x5c5
	.byte	0x1
	.byte	0x54
	.uleb128 0x1b
	.uaword	0x5b4
	.byte	0x6
	.uleb128 0x1c
	.uaword	.Ldebug_ranges0+0x108
	.uleb128 0x1d
	.uaword	0x5d0
	.uleb128 0x1e
	.uaword	0x525
	.uaword	.LBB227
	.uaword	.LBE227
	.byte	0x1
	.byte	0x4e
	.uaword	0xf13
	.uleb128 0x1f
	.uaword	.LBB228
	.uaword	.LBE228
	.uleb128 0x20
	.uaword	0x53c
	.byte	0x1
	.byte	0x62
	.byte	0
	.byte	0
	.uleb128 0x21
	.uaword	0x54f
	.uaword	.LBB229
	.uaword	.LBE229
	.byte	0x1
	.byte	0x51
	.uleb128 0x1f
	.uaword	.LBB230
	.uaword	.LBE230
	.uleb128 0x1d
	.uaword	0x56e
	.uleb128 0x1f
	.uaword	.LBB231
	.uaword	.LBE231
	.uleb128 0x20
	.uaword	0x57b
	.byte	0x1
	.byte	0x52
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.string	"IfxCpu_Trap_systemCall_Cpu5"
	.byte	0x1
	.byte	0xb4
	.byte	0x1
	.uaword	.LFB197
	.uaword	.LFE197
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1001
	.uleb128 0x18
	.string	"tin"
	.byte	0x1
	.byte	0xb4
	.uaword	0x20e
	.byte	0x1
	.byte	0x54
	.uleb128 0x23
	.uaword	0x58b
	.uaword	.LBB234
	.uaword	.Ldebug_ranges0+0x120
	.byte	0x1
	.byte	0xb6
	.uleb128 0x1a
	.uaword	0x5c5
	.byte	0x1
	.byte	0x54
	.uleb128 0x1b
	.uaword	0x5b4
	.byte	0x6
	.uleb128 0x1c
	.uaword	.Ldebug_ranges0+0x120
	.uleb128 0x1d
	.uaword	0x5d0
	.uleb128 0x1e
	.uaword	0x525
	.uaword	.LBB236
	.uaword	.LBE236
	.byte	0x1
	.byte	0x4e
	.uaword	0xfce
	.uleb128 0x1f
	.uaword	.LBB237
	.uaword	.LBE237
	.uleb128 0x20
	.uaword	0x53c
	.byte	0x1
	.byte	0x62
	.byte	0
	.byte	0
	.uleb128 0x21
	.uaword	0x54f
	.uaword	.LBB238
	.uaword	.LBE238
	.byte	0x1
	.byte	0x51
	.uleb128 0x1f
	.uaword	.LBB239
	.uaword	.LBE239
	.uleb128 0x1d
	.uaword	0x56e
	.uleb128 0x1f
	.uaword	.LBB240
	.uaword	.LBE240
	.uleb128 0x20
	.uaword	0x57b
	.byte	0x1
	.byte	0x52
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.string	"IfxCpu_Trap_vectorTable0"
	.byte	0x1
	.byte	0xd2
	.byte	0x1
	.uaword	.LFB199
	.uaword	.LFE199
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x24
	.byte	0x1
	.string	"IfxCpu_Trap_vectorTable1"
	.byte	0x1
	.byte	0xec
	.byte	0x1
	.uaword	.LFB200
	.uaword	.LFE200
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x25
	.byte	0x1
	.string	"IfxCpu_Trap_vectorTable2"
	.byte	0x1
	.uahalf	0x108
	.byte	0x1
	.uaword	.LFB201
	.uaword	.LFE201
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x26
	.string	"trapWatch"
	.byte	0x1
	.byte	0x46
	.uaword	0x3db
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	trapWatch
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
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x52
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
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0xa
	.uleb128 0x35
	.byte	0
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.byte	0
.section .debug_aranges,"",@progbits
	.uaword	0x34
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.Ltext0
	.uaword	.Letext0-.Ltext0
	.uaword	.LFB199
	.uaword	.LFE199-.LFB199
	.uaword	.LFB200
	.uaword	.LFE200-.LFB200
	.uaword	.LFB201
	.uaword	.LFE201-.LFB201
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB112
	.uaword	.LBE112
	.uaword	.LBB120
	.uaword	.LBE120
	.uaword	0
	.uaword	0
	.uaword	.LBB123
	.uaword	.LBE123
	.uaword	.LBB131
	.uaword	.LBE131
	.uaword	0
	.uaword	0
	.uaword	.LBB134
	.uaword	.LBE134
	.uaword	.LBB142
	.uaword	.LBE142
	.uaword	0
	.uaword	0
	.uaword	.LBB145
	.uaword	.LBE145
	.uaword	.LBB153
	.uaword	.LBE153
	.uaword	0
	.uaword	0
	.uaword	.LBB156
	.uaword	.LBE156
	.uaword	.LBB164
	.uaword	.LBE164
	.uaword	0
	.uaword	0
	.uaword	.LBB167
	.uaword	.LBE167
	.uaword	.LBB175
	.uaword	.LBE175
	.uaword	0
	.uaword	0
	.uaword	.LBB178
	.uaword	.LBE178
	.uaword	.LBB186
	.uaword	.LBE186
	.uaword	0
	.uaword	0
	.uaword	.LBB187
	.uaword	.LBE187
	.uaword	.LBB195
	.uaword	.LBE195
	.uaword	0
	.uaword	0
	.uaword	.LBB196
	.uaword	.LBE196
	.uaword	.LBB204
	.uaword	.LBE204
	.uaword	0
	.uaword	0
	.uaword	.LBB205
	.uaword	.LBE205
	.uaword	.LBB213
	.uaword	.LBE213
	.uaword	0
	.uaword	0
	.uaword	.LBB216
	.uaword	.LBE216
	.uaword	.LBB224
	.uaword	.LBE224
	.uaword	0
	.uaword	0
	.uaword	.LBB225
	.uaword	.LBE225
	.uaword	.LBB233
	.uaword	.LBE233
	.uaword	0
	.uaword	0
	.uaword	.LBB234
	.uaword	.LBE234
	.uaword	.LBB242
	.uaword	.LBE242
	.uaword	0
	.uaword	0
	.uaword	.Ltext0
	.uaword	.Letext0
	.uaword	.LFB199
	.uaword	.LFE199
	.uaword	.LFB200
	.uaword	.LFE200
	.uaword	.LFB201
	.uaword	.LFE201
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
	.ident	"GCC: (HighTec Release HDP-v4.9.1.0-infineon-2.0-df254e8) 4.9.4 build on 2018-04-18"
