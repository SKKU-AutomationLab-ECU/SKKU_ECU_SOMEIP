	.file	"IfxFlash.c"
.section .text,"ax",@progbits
.Ltext0:
	.align 1
	.global	IfxFlash_clearCorrectableErrorTracking
	.type	IfxFlash_clearCorrectableErrorTracking, @function
IfxFlash_clearCorrectableErrorTracking:
.LFB149:
	.file 1 "0_Src/4_McHal/Tricore/Flash/Std/IfxFlash.c"
	.loc 1 37 0
.LVL0:
	.loc 1 38 0
	movh	%d15, 63488
	addi	%d15, %d15, 4096
	madd	%d2, %d15, %d4, 12
	mov.a	%a15, %d2
	ld.w	%d15, [%a15] 4276
	or	%d15, %d15, 256
	st.w	[%a15] 4276, %d15
	ret
.LFE149:
	.size	IfxFlash_clearCorrectableErrorTracking, .-IfxFlash_clearCorrectableErrorTracking
	.align 1
	.global	IfxFlash_clearStatus
	.type	IfxFlash_clearStatus, @function
IfxFlash_clearStatus:
.LFB150:
	.loc 1 43 0
.LVL1:
	.loc 1 46 0
	mov	%d15, 250
	movh.a	%a15, 44800
	lea	%a15, [%a15] 21844
	st.w	[%a15]0, %d15
.LBB46:
.LBB47:
	.file 2 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
	.loc 2 1346 0
#APP
	# 1346 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	dsync
	# 0 "" 2
#NO_APP
	ret
.LBE47:
.LBE46:
.LFE150:
	.size	IfxFlash_clearStatus, .-IfxFlash_clearStatus
	.align 1
	.global	IfxFlash_clearUncorrectableErrorTracking
	.type	IfxFlash_clearUncorrectableErrorTracking, @function
IfxFlash_clearUncorrectableErrorTracking:
.LFB151:
	.loc 1 53 0
.LVL2:
	.loc 1 54 0
	movh	%d15, 63488
	addi	%d15, %d15, 4096
	madd	%d2, %d15, %d4, 12
	mov.a	%a15, %d2
	ld.w	%d15, [%a15] 4324
	or	%d15, %d15, 256
	st.w	[%a15] 4324, %d15
	ret
.LFE151:
	.size	IfxFlash_clearUncorrectableErrorTracking, .-IfxFlash_clearUncorrectableErrorTracking
	.align 1
	.global	IfxFlash_disableCorrectableErrorTracking
	.type	IfxFlash_disableCorrectableErrorTracking, @function
IfxFlash_disableCorrectableErrorTracking:
.LFB152:
	.loc 1 59 0
.LVL3:
	.loc 1 60 0
	movh	%d15, 63488
	addi	%d15, %d15, 4096
	madd	%d2, %d15, %d4, 12
	mov.a	%a15, %d2
	ld.w	%d15, [%a15] 4276
	ins.t	%d5, %d15,9, %d5,0
.LVL4:
	st.w	[%a15] 4276, %d5
	ret
.LFE152:
	.size	IfxFlash_disableCorrectableErrorTracking, .-IfxFlash_disableCorrectableErrorTracking
	.align 1
	.global	IfxFlash_disableUncorrectableErrorTracking
	.type	IfxFlash_disableUncorrectableErrorTracking, @function
IfxFlash_disableUncorrectableErrorTracking:
.LFB153:
	.loc 1 65 0
.LVL5:
	.loc 1 66 0
	movh	%d15, 63488
	addi	%d15, %d15, 4096
	madd	%d2, %d15, %d4, 12
	mov.a	%a15, %d2
	ld.w	%d15, [%a15] 4324
	ins.t	%d5, %d15,9, %d5,0
.LVL6:
	st.w	[%a15] 4324, %d5
	ret
.LFE153:
	.size	IfxFlash_disableUncorrectableErrorTracking, .-IfxFlash_disableUncorrectableErrorTracking
	.align 1
	.global	IfxFlash_disableWriteProtection
	.type	IfxFlash_disableWriteProtection, @function
IfxFlash_disableWriteProtection:
.LFB154:
	.loc 1 71 0
.LVL7:
	.loc 1 75 0
	movh.a	%a15, 44800
	lea	%a15, [%a15] 21820
	st.w	[%a15]0, %d5
.LVL8:
	.loc 1 79 0
	mov.aa	%a2, %a15
	mov.a	%a15, 7
.LVL9:
.L7:
	.loc 1 79 0 is_stmt 0 discriminator 3
	ld.w	%d15, [%a4+]4
	st.w	[%a2]0, %d15
	loop	%a15, .L7
.LBB48:
.LBB49:
	.loc 2 1346 0 is_stmt 1
#APP
	# 1346 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	dsync
	# 0 "" 2
#NO_APP
	ret
.LBE49:
.LBE48:
.LFE154:
	.size	IfxFlash_disableWriteProtection, .-IfxFlash_disableWriteProtection
	.align 1
	.global	IfxFlash_enterPageMode
	.type	IfxFlash_enterPageMode, @function
IfxFlash_enterPageMode:
.LFB155:
	.loc 1 87 0
.LVL10:
	.loc 1 90 0
	insert	%d4, %d4, 0, 0, 24
.LVL11:
	movh	%d15, 40960
	jeq	%d4, %d15, .L14
	.loc 1 95 0
	movh	%d15, 44800
	jeq	%d4, %d15, .L15
.LBB50:
.LBB51:
	.loc 2 1346 0
#APP
	# 1346 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	dsync
	# 0 "" 2
#NO_APP
.LBE51:
.LBE50:
	.loc 1 102 0
	mov	%d2, 1
	.loc 1 103 0
	ret
.L14:
	.loc 1 92 0
	mov	%d15, 80
	movh.a	%a15, 44800
	lea	%a15, [%a15] 21844
	st.w	[%a15]0, %d15
	.loc 1 93 0
	mov	%d2, 0
	ret
.L15:
	.loc 1 97 0
	mov	%d15, 93
	movh.a	%a15, 44800
	lea	%a15, [%a15] 21844
	st.w	[%a15]0, %d15
	.loc 1 98 0
	mov	%d2, 0
	ret
.LFE155:
	.size	IfxFlash_enterPageMode, .-IfxFlash_enterPageMode
	.align 1
	.global	IfxFlash_eraseMultiplePhysicalSectors
	.type	IfxFlash_eraseMultiplePhysicalSectors, @function
IfxFlash_eraseMultiplePhysicalSectors:
.LFB156:
	.loc 1 107 0
.LVL12:
	.loc 1 113 0
	movh.a	%a15, 44801
	lea	%a15, [%a15] -21936
	st.w	[%a15]0, %d4
	.loc 1 114 0
	movh.a	%a15, 44801
	lea	%a15, [%a15] -21928
	.loc 1 115 0
	mov	%d15, 128
	.loc 1 114 0
	st.w	[%a15]0, %d5
	.loc 1 115 0
	movh.a	%a15, 44801
	lea	%a15, [%a15] -21848
	st.w	[%a15]0, %d15
	.loc 1 116 0
	mov	%d15, 90
	st.w	[%a15]0, %d15
.LBB52:
.LBB53:
	.loc 2 1346 0
#APP
	# 1346 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	dsync
	# 0 "" 2
#NO_APP
	ret
.LBE53:
.LBE52:
.LFE156:
	.size	IfxFlash_eraseMultiplePhysicalSectors, .-IfxFlash_eraseMultiplePhysicalSectors
	.align 1
	.global	IfxFlash_eraseMultipleSectors
	.type	IfxFlash_eraseMultipleSectors, @function
IfxFlash_eraseMultipleSectors:
.LFB157:
	.loc 1 123 0
.LVL13:
	.loc 1 129 0
	movh.a	%a15, 44801
	lea	%a15, [%a15] -21936
	st.w	[%a15]0, %d4
	.loc 1 130 0
	movh.a	%a15, 44801
	lea	%a15, [%a15] -21928
	.loc 1 131 0
	mov	%d15, 128
	.loc 1 130 0
	st.w	[%a15]0, %d5
	.loc 1 131 0
	movh.a	%a15, 44801
	lea	%a15, [%a15] -21848
	st.w	[%a15]0, %d15
	.loc 1 132 0
	mov	%d15, 80
	st.w	[%a15]0, %d15
.LBB54:
.LBB55:
	.loc 2 1346 0
#APP
	# 1346 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	dsync
	# 0 "" 2
#NO_APP
	ret
.LBE55:
.LBE54:
.LFE157:
	.size	IfxFlash_eraseMultipleSectors, .-IfxFlash_eraseMultipleSectors
	.align 1
	.global	IfxFlash_erasePhysicalSector
	.type	IfxFlash_erasePhysicalSector, @function
IfxFlash_erasePhysicalSector:
.LFB158:
	.loc 1 139 0
.LVL14:
	.loc 1 145 0
	movh.a	%a15, 44801
	lea	%a15, [%a15] -21936
	.loc 1 146 0
	mov	%d15, 1
	.loc 1 145 0
	st.w	[%a15]0, %d4
	.loc 1 146 0
	movh.a	%a15, 44801
	lea	%a15, [%a15] -21928
	st.w	[%a15]0, %d15
	.loc 1 147 0
	mov	%d15, 128
	movh.a	%a15, 44801
	lea	%a15, [%a15] -21848
	st.w	[%a15]0, %d15
	.loc 1 148 0
	mov	%d15, 90
	st.w	[%a15]0, %d15
.LBB56:
.LBB57:
	.loc 2 1346 0
#APP
	# 1346 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	dsync
	# 0 "" 2
#NO_APP
	ret
.LBE57:
.LBE56:
.LFE158:
	.size	IfxFlash_erasePhysicalSector, .-IfxFlash_erasePhysicalSector
	.align 1
	.global	IfxFlash_eraseSector
	.type	IfxFlash_eraseSector, @function
IfxFlash_eraseSector:
.LFB159:
	.loc 1 155 0
.LVL15:
	.loc 1 161 0
	movh.a	%a15, 44801
	lea	%a15, [%a15] -21936
	.loc 1 162 0
	mov	%d15, 1
	.loc 1 161 0
	st.w	[%a15]0, %d4
	.loc 1 162 0
	movh.a	%a15, 44801
	lea	%a15, [%a15] -21928
	st.w	[%a15]0, %d15
	.loc 1 163 0
	mov	%d15, 128
	movh.a	%a15, 44801
	lea	%a15, [%a15] -21848
	st.w	[%a15]0, %d15
	.loc 1 164 0
	mov	%d15, 80
	st.w	[%a15]0, %d15
.LBB58:
.LBB59:
	.loc 2 1346 0
#APP
	# 1346 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	dsync
	# 0 "" 2
#NO_APP
	ret
.LBE59:
.LBE58:
.LFE159:
	.size	IfxFlash_eraseSector, .-IfxFlash_eraseSector
	.align 1
	.global	IfxFlash_eraseVerifyMultipleSectors
	.type	IfxFlash_eraseVerifyMultipleSectors, @function
IfxFlash_eraseVerifyMultipleSectors:
.LFB160:
	.loc 1 171 0
.LVL16:
	.loc 1 177 0
	movh.a	%a15, 44801
	lea	%a15, [%a15] -21936
	st.w	[%a15]0, %d4
	.loc 1 178 0
	movh.a	%a15, 44801
	lea	%a15, [%a15] -21928
	.loc 1 179 0
	mov	%d15, 128
	.loc 1 178 0
	st.w	[%a15]0, %d5
	.loc 1 179 0
	movh.a	%a15, 44801
	lea	%a15, [%a15] -21848
	st.w	[%a15]0, %d15
	.loc 1 180 0
	mov	%d15, 95
	st.w	[%a15]0, %d15
.LBB60:
.LBB61:
	.loc 2 1346 0
#APP
	# 1346 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	dsync
	# 0 "" 2
#NO_APP
	ret
.LBE61:
.LBE60:
.LFE160:
	.size	IfxFlash_eraseVerifyMultipleSectors, .-IfxFlash_eraseVerifyMultipleSectors
	.align 1
	.global	IfxFlash_eraseVerifySector
	.type	IfxFlash_eraseVerifySector, @function
IfxFlash_eraseVerifySector:
.LFB161:
	.loc 1 187 0
.LVL17:
	.loc 1 193 0
	movh.a	%a15, 44801
	lea	%a15, [%a15] -21936
	.loc 1 194 0
	mov	%d15, 1
	.loc 1 193 0
	st.w	[%a15]0, %d4
	.loc 1 194 0
	movh.a	%a15, 44801
	lea	%a15, [%a15] -21928
	st.w	[%a15]0, %d15
	.loc 1 195 0
	mov	%d15, 128
	movh.a	%a15, 44801
	lea	%a15, [%a15] -21848
	st.w	[%a15]0, %d15
	.loc 1 196 0
	mov	%d15, 95
	st.w	[%a15]0, %d15
.LBB62:
.LBB63:
	.loc 2 1346 0
#APP
	# 1346 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	dsync
	# 0 "" 2
#NO_APP
	ret
.LBE63:
.LBE62:
.LFE161:
	.size	IfxFlash_eraseVerifySector, .-IfxFlash_eraseVerifySector
	.align 1
	.global	IfxFlash_getTrackedCorrectableErrors
	.type	IfxFlash_getTrackedCorrectableErrors, @function
IfxFlash_getTrackedCorrectableErrors:
.LFB162:
	.loc 1 203 0
.LVL18:
	.loc 1 205 0
	movh	%d15, 63488
	addi	%d15, %d15, 4096
	madd	%d2, %d15, %d4, 12
.LBB64:
	.loc 1 219 0
	movh	%d7, 40960
	.loc 1 225 0
	movh	%d4, 32768
.LVL19:
.LBE64:
	.loc 1 205 0
	mov.a	%a2, %d2
.LBB65:
	.loc 1 225 0
	mov.a	%a15, 9
.LBE65:
	.loc 1 205 0
	ld.w	%d5, [%a2] 4280
.LVL20:
	.loc 1 204 0
	mov	%e2, 0
.LBB66:
	.loc 1 215 0
	lea	%a2, [%a2] 4284
.LVL21:
.L23:
.LBE66:
	.loc 1 211 0
	extr.u	%d15, %d5, %d3, 1
	.loc 1 210 0
	jz	%d15, .L33
.LBB67:
	.loc 1 215 0
	ld.w	%d15, [%a2]0
	.loc 1 217 0
	jz.t	%d15, 30, .L24
	.loc 1 219 0
	extr.u	%d6, %d15, 5, 19
	.loc 1 220 0
	extr.u	%d15, %d15, 24, 6
	.loc 1 219 0
	sh	%d6, 5
	or	%d6, %d7
	addsc.a	%a3, %a4, %d2, 3
	.loc 1 221 0
	add	%d2, 1
.LVL22:
	.loc 1 219 0
	st.w	[%a3]0, %d6
	.loc 1 220 0
	st.w	[%a3] 4, %d15
.L24:
	.loc 1 225 0
	st.w	[%a2]0, %d4
.LBE67:
	.loc 1 212 0
	add	%d3, 1
.LVL23:
	.loc 1 209 0
	loop	%a15, .L23
	ret
.L33:
	.loc 1 229 0
	ret
.LFE162:
	.size	IfxFlash_getTrackedCorrectableErrors, .-IfxFlash_getTrackedCorrectableErrors
	.align 1
	.global	IfxFlash_getTrackedUncorrectableErrors
	.type	IfxFlash_getTrackedUncorrectableErrors, @function
IfxFlash_getTrackedUncorrectableErrors:
.LFB163:
	.loc 1 233 0
.LVL24:
	.loc 1 235 0
	mul	%d4, %d4, 12
.LVL25:
	movh.a	%a15, 63488
	lea	%a15, [%a15] 4096
	addsc.a	%a15, %a15, %d4, 0
	.loc 1 234 0
	mov	%d2, 0
	.loc 1 235 0
	ld.w	%d15, [%a15] 4328
.LVL26:
	.loc 1 240 0
	jz.t	%d15, 0, .L35
.LBB68:
	.loc 1 245 0
	ld.w	%d15, [%a15] 4332
.LVL27:
	.loc 1 247 0
	jz.t	%d15, 30, .L36
	.loc 1 249 0
	extr.u	%d2, %d15, 5, 19
	movh	%d3, 40960
	sh	%d2, 5
	.loc 1 250 0
	extr.u	%d15, %d15, 24, 6
	.loc 1 249 0
	or	%d2, %d3
	.loc 1 250 0
	st.w	[%a4] 4, %d15
.LVL28:
	.loc 1 249 0
	st.w	[%a4]0, %d2
	.loc 1 251 0
	mov	%d2, 1
.LVL29:
.L36:
	.loc 1 255 0
	movh.a	%a15, 63488
	lea	%a15, [%a15] 4096
	movh	%d15, 32768
	addsc.a	%a15, %a15, %d4, 0
	st.w	[%a15] 4332, %d15
.LVL30:
.L35:
.LBE68:
	.loc 1 259 0
	ret
.LFE163:
	.size	IfxFlash_getTrackedUncorrectableErrors, .-IfxFlash_getTrackedUncorrectableErrors
	.align 1
	.global	IfxFlash_loadPage
	.type	IfxFlash_loadPage, @function
IfxFlash_loadPage:
.LFB164:
	.loc 1 263 0
.LVL31:
	.loc 1 263 0
	mov	%d15, %d5
.LBB69:
.LBB70:
	.file 3 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_Intrinsics.h"
	.loc 3 139 0
	mul.u	%e4, %d5, 1
.LVL32:
	or	%d2, %d15, 0
.LBB71:
.LBB72:
	.loc 3 120 0
	movh.a	%a15, 44800
.LBE72:
.LBE71:
	.loc 3 139 0
	or	%d3, %d5, %d6
.LVL33:
.LBB74:
.LBB73:
	.loc 3 120 0
	lea	%a15, [%a15] 22000
	st.d	[%a15]0, %e2
.LBE73:
.LBE74:
.LBE70:
.LBE69:
.LBB75:
.LBB76:
	.loc 2 1346 0
#APP
	# 1346 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	dsync
	# 0 "" 2
#NO_APP
	ret
.LBE76:
.LBE75:
.LFE164:
	.size	IfxFlash_loadPage, .-IfxFlash_loadPage
	.align 1
	.global	IfxFlash_loadPage2X32
	.type	IfxFlash_loadPage2X32, @function
IfxFlash_loadPage2X32:
.LFB165:
	.loc 1 273 0
.LVL34:
	.loc 1 276 0
	movh.a	%a15, 44800
	lea	%a15, [%a15] 22000
	st.w	[%a15]0, %d5
.LVL35:
	.loc 1 278 0
	movh.a	%a15, 44800
	lea	%a15, [%a15] 22004
	st.w	[%a15]0, %d6
.LBB77:
.LBB78:
	.loc 2 1346 0
#APP
	# 1346 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	dsync
	# 0 "" 2
#NO_APP
	ret
.LBE78:
.LBE77:
.LFE165:
	.size	IfxFlash_loadPage2X32, .-IfxFlash_loadPage2X32
	.align 1
	.global	IfxFlash_resetToRead
	.type	IfxFlash_resetToRead, @function
IfxFlash_resetToRead:
.LFB166:
	.loc 1 285 0
.LVL36:
	.loc 1 287 0
	mov	%d15, 240
	movh.a	%a15, 44800
	lea	%a15, [%a15] 21844
	st.w	[%a15]0, %d15
.LBB79:
.LBB80:
	.loc 2 1346 0
#APP
	# 1346 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	dsync
	# 0 "" 2
#NO_APP
	ret
.LBE80:
.LBE79:
.LFE166:
	.size	IfxFlash_resetToRead, .-IfxFlash_resetToRead
	.align 1
	.global	IfxFlash_resumeProtection
	.type	IfxFlash_resumeProtection, @function
IfxFlash_resumeProtection:
.LFB167:
	.loc 1 294 0
.LVL37:
	.loc 1 297 0
	mov	%d15, 245
	movh.a	%a15, 44800
	lea	%a15, [%a15] 21844
	st.w	[%a15]0, %d15
.LBB81:
.LBB82:
	.loc 2 1346 0
#APP
	# 1346 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	dsync
	# 0 "" 2
#NO_APP
	ret
.LBE82:
.LBE81:
.LFE167:
	.size	IfxFlash_resumeProtection, .-IfxFlash_resumeProtection
	.align 1
	.global	IfxFlash_selectCorrectableErrorTracking
	.type	IfxFlash_selectCorrectableErrorTracking, @function
IfxFlash_selectCorrectableErrorTracking:
.LFB168:
	.loc 1 304 0
.LVL38:
	.loc 1 311 0
	movh	%d15, 63488
	addi	%d15, %d15, 4096
	madd	%d2, %d15, %d4, 12
	mov.a	%a15, %d2
	ld.w	%d15, [%a15] 4276
	insert	%d5, %d15, %d5, 0, 6
.LVL39:
	st.w	[%a15] 4276, %d5
	ret
.LFE168:
	.size	IfxFlash_selectCorrectableErrorTracking, .-IfxFlash_selectCorrectableErrorTracking
	.align 1
	.global	IfxFlash_selectUncorrectableErrorTracking
	.type	IfxFlash_selectUncorrectableErrorTracking, @function
IfxFlash_selectUncorrectableErrorTracking:
.LFB169:
	.loc 1 316 0
.LVL40:
	.loc 1 321 0
	movh	%d15, 63488
	addi	%d15, %d15, 4096
	madd	%d2, %d15, %d4, 12
	mov.a	%a15, %d2
	ld.w	%d15, [%a15] 4324
	insert	%d5, %d15, %d5, 0, 6
.LVL41:
	st.w	[%a15] 4324, %d5
	ret
.LFE169:
	.size	IfxFlash_selectUncorrectableErrorTracking, .-IfxFlash_selectUncorrectableErrorTracking
	.align 1
	.global	IfxFlash_suspendResumeMultipleSectors
	.type	IfxFlash_suspendResumeMultipleSectors, @function
IfxFlash_suspendResumeMultipleSectors:
.LFB170:
	.loc 1 326 0
.LVL42:
	.loc 1 332 0
	movh.a	%a15, 44801
	lea	%a15, [%a15] -21936
	st.w	[%a15]0, %d4
	.loc 1 333 0
	movh.a	%a15, 44801
	lea	%a15, [%a15] -21928
	.loc 1 334 0
	mov	%d15, 112
	.loc 1 333 0
	st.w	[%a15]0, %d5
	.loc 1 334 0
	movh.a	%a15, 44801
	lea	%a15, [%a15] -21848
	st.w	[%a15]0, %d15
	.loc 1 335 0
	mov	%d15, 204
	st.w	[%a15]0, %d15
.LBB83:
.LBB84:
	.loc 2 1346 0
#APP
	# 1346 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	dsync
	# 0 "" 2
#NO_APP
	ret
.LBE84:
.LBE83:
.LFE170:
	.size	IfxFlash_suspendResumeMultipleSectors, .-IfxFlash_suspendResumeMultipleSectors
	.align 1
	.global	IfxFlash_suspendResumeSector
	.type	IfxFlash_suspendResumeSector, @function
IfxFlash_suspendResumeSector:
.LFB171:
	.loc 1 342 0
.LVL43:
	.loc 1 348 0
	movh.a	%a15, 44801
	lea	%a15, [%a15] -21936
	.loc 1 349 0
	mov	%d15, 1
	.loc 1 348 0
	st.w	[%a15]0, %d4
	.loc 1 349 0
	movh.a	%a15, 44801
	lea	%a15, [%a15] -21928
	st.w	[%a15]0, %d15
	.loc 1 350 0
	mov	%d15, 112
	movh.a	%a15, 44801
	lea	%a15, [%a15] -21848
	st.w	[%a15]0, %d15
	.loc 1 351 0
	mov	%d15, 204
	st.w	[%a15]0, %d15
.LBB85:
.LBB86:
	.loc 2 1346 0
#APP
	# 1346 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	dsync
	# 0 "" 2
#NO_APP
	ret
.LBE86:
.LBE85:
.LFE171:
	.size	IfxFlash_suspendResumeSector, .-IfxFlash_suspendResumeSector
	.align 1
	.global	IfxFlash_waitUnbusy
	.type	IfxFlash_waitUnbusy, @function
IfxFlash_waitUnbusy:
.LFB172:
	.loc 1 358 0
.LVL44:
	.loc 1 374 0
	mov	%d2, 1
	.loc 1 359 0
	jnz	%d4, .L50
	mov	%d2, 1
	.loc 1 361 0
	movh.a	%a15, 63488
	sh	%d2, %d2, %d5
	lea	%a15, [%a15] 8208
.L51:
	.loc 1 361 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a15]0
	and	%d15, %d2
	jnz	%d15, .L51
.LBB87:
.LBB88:
	.loc 2 1346 0 is_stmt 1
#APP
	# 1346 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	dsync
	# 0 "" 2
#NO_APP
.LBE88:
.LBE87:
	.loc 1 377 0
	mov	%d2, 0
.L50:
	.loc 1 378 0
	ret
.LFE172:
	.size	IfxFlash_waitUnbusy, .-IfxFlash_waitUnbusy
	.align 1
	.global	IfxFlash_writeBurst
	.type	IfxFlash_writeBurst, @function
IfxFlash_writeBurst:
.LFB173:
	.loc 1 382 0
.LVL45:
	.loc 1 388 0
	movh.a	%a15, 44801
	lea	%a15, [%a15] -21936
	.loc 1 389 0
	mov	%d15, 0
	.loc 1 388 0
	st.w	[%a15]0, %d4
	.loc 1 389 0
	movh.a	%a15, 44801
	lea	%a15, [%a15] -21928
	st.w	[%a15]0, %d15
	.loc 1 390 0
	mov	%d15, 160
	movh.a	%a15, 44801
	lea	%a15, [%a15] -21848
	st.w	[%a15]0, %d15
	.loc 1 391 0
	mov	%d15, 122
	st.w	[%a15]0, %d15
.LBB89:
.LBB90:
	.loc 2 1346 0
#APP
	# 1346 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	dsync
	# 0 "" 2
#NO_APP
	ret
.LBE90:
.LBE89:
.LFE173:
	.size	IfxFlash_writeBurst, .-IfxFlash_writeBurst
	.align 1
	.global	IfxFlash_writePage
	.type	IfxFlash_writePage, @function
IfxFlash_writePage:
.LFB174:
	.loc 1 398 0
.LVL46:
	.loc 1 404 0
	movh.a	%a15, 44801
	lea	%a15, [%a15] -21936
	.loc 1 405 0
	mov	%d15, 0
	.loc 1 404 0
	st.w	[%a15]0, %d4
	.loc 1 405 0
	movh.a	%a15, 44801
	lea	%a15, [%a15] -21928
	st.w	[%a15]0, %d15
	.loc 1 406 0
	mov	%d15, 160
	movh.a	%a15, 44801
	lea	%a15, [%a15] -21848
	st.w	[%a15]0, %d15
	.loc 1 407 0
	mov	%d15, 170
	st.w	[%a15]0, %d15
.LBB91:
.LBB92:
	.loc 2 1346 0
#APP
	# 1346 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	dsync
	# 0 "" 2
#NO_APP
	ret
.LBE92:
.LBE91:
.LFE174:
	.size	IfxFlash_writePage, .-IfxFlash_writePage
	.align 1
	.global	IfxFlash_writePageOnce
	.type	IfxFlash_writePageOnce, @function
IfxFlash_writePageOnce:
.LFB175:
	.loc 1 414 0
.LVL47:
	.loc 1 420 0
	movh.a	%a15, 44801
	lea	%a15, [%a15] -21936
	.loc 1 421 0
	mov	%d15, 0
	.loc 1 420 0
	st.w	[%a15]0, %d4
	.loc 1 421 0
	movh.a	%a15, 44801
	lea	%a15, [%a15] -21928
	st.w	[%a15]0, %d15
	.loc 1 422 0
	mov	%d15, 160
	movh.a	%a15, 44801
	lea	%a15, [%a15] -21848
	st.w	[%a15]0, %d15
	.loc 1 423 0
	mov	%d15, 154
	st.w	[%a15]0, %d15
.LBB93:
.LBB94:
	.loc 2 1346 0
#APP
	# 1346 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	dsync
	# 0 "" 2
#NO_APP
	ret
.LBE94:
.LBE93:
.LFE175:
	.size	IfxFlash_writePageOnce, .-IfxFlash_writePageOnce
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
	.uaword	.LFB149
	.uaword	.LFE149-.LFB149
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB150
	.uaword	.LFE150-.LFB150
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB151
	.uaword	.LFE151-.LFB151
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB152
	.uaword	.LFE152-.LFB152
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB153
	.uaword	.LFE153-.LFB153
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB154
	.uaword	.LFE154-.LFB154
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB155
	.uaword	.LFE155-.LFB155
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB156
	.uaword	.LFE156-.LFB156
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB157
	.uaword	.LFE157-.LFB157
	.align 2
.LEFDE16:
.LSFDE18:
	.uaword	.LEFDE18-.LASFDE18
.LASFDE18:
	.uaword	.Lframe0
	.uaword	.LFB158
	.uaword	.LFE158-.LFB158
	.align 2
.LEFDE18:
.LSFDE20:
	.uaword	.LEFDE20-.LASFDE20
.LASFDE20:
	.uaword	.Lframe0
	.uaword	.LFB159
	.uaword	.LFE159-.LFB159
	.align 2
.LEFDE20:
.LSFDE22:
	.uaword	.LEFDE22-.LASFDE22
.LASFDE22:
	.uaword	.Lframe0
	.uaword	.LFB160
	.uaword	.LFE160-.LFB160
	.align 2
.LEFDE22:
.LSFDE24:
	.uaword	.LEFDE24-.LASFDE24
.LASFDE24:
	.uaword	.Lframe0
	.uaword	.LFB161
	.uaword	.LFE161-.LFB161
	.align 2
.LEFDE24:
.LSFDE26:
	.uaword	.LEFDE26-.LASFDE26
.LASFDE26:
	.uaword	.Lframe0
	.uaword	.LFB162
	.uaword	.LFE162-.LFB162
	.align 2
.LEFDE26:
.LSFDE28:
	.uaword	.LEFDE28-.LASFDE28
.LASFDE28:
	.uaword	.Lframe0
	.uaword	.LFB163
	.uaword	.LFE163-.LFB163
	.align 2
.LEFDE28:
.LSFDE30:
	.uaword	.LEFDE30-.LASFDE30
.LASFDE30:
	.uaword	.Lframe0
	.uaword	.LFB164
	.uaword	.LFE164-.LFB164
	.align 2
.LEFDE30:
.LSFDE32:
	.uaword	.LEFDE32-.LASFDE32
.LASFDE32:
	.uaword	.Lframe0
	.uaword	.LFB165
	.uaword	.LFE165-.LFB165
	.align 2
.LEFDE32:
.LSFDE34:
	.uaword	.LEFDE34-.LASFDE34
.LASFDE34:
	.uaword	.Lframe0
	.uaword	.LFB166
	.uaword	.LFE166-.LFB166
	.align 2
.LEFDE34:
.LSFDE36:
	.uaword	.LEFDE36-.LASFDE36
.LASFDE36:
	.uaword	.Lframe0
	.uaword	.LFB167
	.uaword	.LFE167-.LFB167
	.align 2
.LEFDE36:
.LSFDE38:
	.uaword	.LEFDE38-.LASFDE38
.LASFDE38:
	.uaword	.Lframe0
	.uaword	.LFB168
	.uaword	.LFE168-.LFB168
	.align 2
.LEFDE38:
.LSFDE40:
	.uaword	.LEFDE40-.LASFDE40
.LASFDE40:
	.uaword	.Lframe0
	.uaword	.LFB169
	.uaword	.LFE169-.LFB169
	.align 2
.LEFDE40:
.LSFDE42:
	.uaword	.LEFDE42-.LASFDE42
.LASFDE42:
	.uaword	.Lframe0
	.uaword	.LFB170
	.uaword	.LFE170-.LFB170
	.align 2
.LEFDE42:
.LSFDE44:
	.uaword	.LEFDE44-.LASFDE44
.LASFDE44:
	.uaword	.Lframe0
	.uaword	.LFB171
	.uaword	.LFE171-.LFB171
	.align 2
.LEFDE44:
.LSFDE46:
	.uaword	.LEFDE46-.LASFDE46
.LASFDE46:
	.uaword	.Lframe0
	.uaword	.LFB172
	.uaword	.LFE172-.LFB172
	.align 2
.LEFDE46:
.LSFDE48:
	.uaword	.LEFDE48-.LASFDE48
.LASFDE48:
	.uaword	.Lframe0
	.uaword	.LFB173
	.uaword	.LFE173-.LFB173
	.align 2
.LEFDE48:
.LSFDE50:
	.uaword	.LEFDE50-.LASFDE50
.LASFDE50:
	.uaword	.Lframe0
	.uaword	.LFB174
	.uaword	.LFE174-.LFB174
	.align 2
.LEFDE50:
.LSFDE52:
	.uaword	.LEFDE52-.LASFDE52
.LASFDE52:
	.uaword	.Lframe0
	.uaword	.LFB175
	.uaword	.LFE175-.LFB175
	.align 2
.LEFDE52:
.section .text,"ax",@progbits
.Letext0:
	.file 4 "./0_Src/4_McHal/Tricore/Cpu/Std/Platform_Types.h"
	.file 5 "./0_Src/4_McHal/Tricore/Cpu/Std/Ifx_Types.h"
	.file 6 "./0_Src/4_McHal/Tricore/_Impl/IfxFlash_cfg.h"
	.file 7 "./0_Src/4_McHal/Tricore/_Reg/IfxFlash_regdef.h"
	.file 8 "0_Src/4_McHal/Tricore/Flash/Std/IfxFlash.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x4646
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9."
	.string	"4 build on 2018-04-18 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -msmall-const=8 -mtc161 -g -g -O2 -fno-common -fno-short-enums -fsingle-precision-constant -fstrict-volatile-bitfields"
	.byte	0x1
	.string	"0_Src/4_McHal/Tricore/Flash/Std/IfxFlash.c"
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
	.uleb128 0x3
	.string	"uint64"
	.byte	0x5
	.byte	0x25
	.uaword	0x257
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
	.byte	0x6
	.byte	0x7a
	.uaword	0x32c
	.uleb128 0x6
	.string	"IfxFlash_FlashType_Fa"
	.sleb128 0
	.uleb128 0x6
	.string	"IfxFlash_FlashType_D0"
	.sleb128 1
	.uleb128 0x6
	.string	"IfxFlash_FlashType_D1"
	.sleb128 2
	.uleb128 0x6
	.string	"IfxFlash_FlashType_P0"
	.sleb128 3
	.uleb128 0x6
	.string	"IfxFlash_FlashType_P1"
	.sleb128 4
	.uleb128 0x6
	.string	"IfxFlash_FlashType_P2"
	.sleb128 5
	.uleb128 0x6
	.string	"IfxFlash_FlashType_P3"
	.sleb128 6
	.byte	0
	.uleb128 0x3
	.string	"IfxFlash_FlashType"
	.byte	0x6
	.byte	0x82
	.uaword	0x27b
	.uleb128 0x5
	.byte	0x4
	.byte	0x6
	.byte	0x87
	.uaword	0x39a
	.uleb128 0x6
	.string	"IfxFlash_UcbType_ucb0"
	.sleb128 0
	.uleb128 0x6
	.string	"IfxFlash_UcbType_ucb1"
	.sleb128 1
	.uleb128 0x6
	.string	"IfxFlash_UcbType_ucbHsmc"
	.sleb128 5
	.byte	0
	.uleb128 0x3
	.string	"IfxFlash_UcbType"
	.byte	0x6
	.byte	0x8b
	.uaword	0x346
	.uleb128 0x7
	.string	"_Ifx_FLASH_ACCEN0_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x2d
	.uaword	0x5c8
	.uleb128 0x8
	.string	"EN0"
	.byte	0x7
	.byte	0x2f
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x8
	.string	"EN1"
	.byte	0x7
	.byte	0x30
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x8
	.string	"EN2"
	.byte	0x7
	.byte	0x31
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x8
	.string	"EN3"
	.byte	0x7
	.byte	0x32
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x8
	.string	"EN4"
	.byte	0x7
	.byte	0x33
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x8
	.string	"EN5"
	.byte	0x7
	.byte	0x34
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x8
	.string	"EN6"
	.byte	0x7
	.byte	0x35
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x8
	.string	"EN7"
	.byte	0x7
	.byte	0x36
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.string	"EN8"
	.byte	0x7
	.byte	0x37
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x8
	.string	"EN9"
	.byte	0x7
	.byte	0x38
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x8
	.string	"EN10"
	.byte	0x7
	.byte	0x39
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x8
	.string	"EN11"
	.byte	0x7
	.byte	0x3a
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x8
	.string	"EN12"
	.byte	0x7
	.byte	0x3b
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x8
	.string	"EN13"
	.byte	0x7
	.byte	0x3c
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x8
	.string	"EN14"
	.byte	0x7
	.byte	0x3d
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x8
	.string	"EN15"
	.byte	0x7
	.byte	0x3e
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.string	"EN16"
	.byte	0x7
	.byte	0x3f
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x8
	.string	"EN17"
	.byte	0x7
	.byte	0x40
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0x8
	.string	"EN18"
	.byte	0x7
	.byte	0x41
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0x8
	.string	"EN19"
	.byte	0x7
	.byte	0x42
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x8
	.string	"EN20"
	.byte	0x7
	.byte	0x43
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0x8
	.string	"EN21"
	.byte	0x7
	.byte	0x44
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.string	"EN22"
	.byte	0x7
	.byte	0x45
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0x8
	.string	"EN23"
	.byte	0x7
	.byte	0x46
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.string	"EN24"
	.byte	0x7
	.byte	0x47
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x8
	.string	"EN25"
	.byte	0x7
	.byte	0x48
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x8
	.string	"EN26"
	.byte	0x7
	.byte	0x49
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x8
	.string	"EN27"
	.byte	0x7
	.byte	0x4a
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.string	"EN28"
	.byte	0x7
	.byte	0x4b
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.string	"EN29"
	.byte	0x7
	.byte	0x4c
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.string	"EN30"
	.byte	0x7
	.byte	0x4d
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.string	"EN31"
	.byte	0x7
	.byte	0x4e
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x3
	.string	"Ifx_FLASH_ACCEN0_Bits"
	.byte	0x7
	.byte	0x4f
	.uaword	0x3b2
	.uleb128 0x7
	.string	"_Ifx_FLASH_ACCEN1_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x52
	.uaword	0x624
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x7
	.byte	0x54
	.uaword	0x5c8
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_FLASH_ACCEN1_Bits"
	.byte	0x7
	.byte	0x55
	.uaword	0x5f5
	.uleb128 0x7
	.string	"_Ifx_FLASH_CBAB_CFG_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x58
	.uaword	0x6ae
	.uleb128 0x8
	.string	"SEL"
	.byte	0x7
	.byte	0x5a
	.uaword	0x5c8
	.byte	0x4
	.byte	0x6
	.byte	0x1a
	.byte	0
	.uleb128 0x9
	.uaword	.LASF1
	.byte	0x7
	.byte	0x5b
	.uaword	0x5c8
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.string	"CLR"
	.byte	0x7
	.byte	0x5c
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x8
	.string	"DIS"
	.byte	0x7
	.byte	0x5d
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x9
	.uaword	.LASF2
	.byte	0x7
	.byte	0x5e
	.uaword	0x5c8
	.byte	0x4
	.byte	0x16
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_FLASH_CBAB_CFG_Bits"
	.byte	0x7
	.byte	0x5f
	.uaword	0x641
	.uleb128 0x7
	.string	"_Ifx_FLASH_CBAB_STAT_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x62
	.uaword	0x79f
	.uleb128 0x8
	.string	"VLD0"
	.byte	0x7
	.byte	0x64
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x8
	.string	"VLD1"
	.byte	0x7
	.byte	0x65
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x8
	.string	"VLD2"
	.byte	0x7
	.byte	0x66
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x8
	.string	"VLD3"
	.byte	0x7
	.byte	0x67
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x8
	.string	"VLD4"
	.byte	0x7
	.byte	0x68
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x8
	.string	"VLD5"
	.byte	0x7
	.byte	0x69
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x8
	.string	"VLD6"
	.byte	0x7
	.byte	0x6a
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x8
	.string	"VLD7"
	.byte	0x7
	.byte	0x6b
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.string	"VLD8"
	.byte	0x7
	.byte	0x6c
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x8
	.string	"VLD9"
	.byte	0x7
	.byte	0x6d
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x9
	.uaword	.LASF2
	.byte	0x7
	.byte	0x6e
	.uaword	0x5c8
	.byte	0x4
	.byte	0x16
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_FLASH_CBAB_STAT_Bits"
	.byte	0x7
	.byte	0x6f
	.uaword	0x6cd
	.uleb128 0x7
	.string	"_Ifx_FLASH_CBAB_TOP_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x72
	.uaword	0x82d
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x7
	.byte	0x74
	.uaword	0x5c8
	.byte	0x4
	.byte	0x5
	.byte	0x1b
	.byte	0
	.uleb128 0x8
	.string	"ADDR"
	.byte	0x7
	.byte	0x75
	.uaword	0x5c8
	.byte	0x4
	.byte	0x13
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.string	"ERR"
	.byte	0x7
	.byte	0x76
	.uaword	0x5c8
	.byte	0x4
	.byte	0x6
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.string	"VLD"
	.byte	0x7
	.byte	0x77
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.string	"CLR"
	.byte	0x7
	.byte	0x78
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_FLASH_CBAB_TOP_Bits"
	.byte	0x7
	.byte	0x79
	.uaword	0x7bf
	.uleb128 0x7
	.string	"_Ifx_FLASH_COMM0_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x7c
	.uaword	0x890
	.uleb128 0x9
	.uaword	.LASF3
	.byte	0x7
	.byte	0x7e
	.uaword	0x5c8
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.string	"reserved_8"
	.byte	0x7
	.byte	0x7f
	.uaword	0x5c8
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_FLASH_COMM0_Bits"
	.byte	0x7
	.byte	0x80
	.uaword	0x84c
	.uleb128 0x7
	.string	"_Ifx_FLASH_COMM1_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x83
	.uaword	0x8f8
	.uleb128 0x9
	.uaword	.LASF3
	.byte	0x7
	.byte	0x85
	.uaword	0x5c8
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x9
	.uaword	.LASF4
	.byte	0x7
	.byte	0x86
	.uaword	0x5c8
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.uaword	.LASF5
	.byte	0x7
	.byte	0x87
	.uaword	0x5c8
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_FLASH_COMM1_Bits"
	.byte	0x7
	.byte	0x88
	.uaword	0x8ac
	.uleb128 0x7
	.string	"_Ifx_FLASH_COMM2_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x8b
	.uaword	0x960
	.uleb128 0x9
	.uaword	.LASF3
	.byte	0x7
	.byte	0x8d
	.uaword	0x5c8
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x9
	.uaword	.LASF4
	.byte	0x7
	.byte	0x8e
	.uaword	0x5c8
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.uaword	.LASF5
	.byte	0x7
	.byte	0x8f
	.uaword	0x5c8
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_FLASH_COMM2_Bits"
	.byte	0x7
	.byte	0x90
	.uaword	0x914
	.uleb128 0x7
	.string	"_Ifx_FLASH_ECCRD_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x93
	.uaword	0x9d9
	.uleb128 0x8
	.string	"RCODE"
	.byte	0x7
	.byte	0x95
	.uaword	0x5c8
	.byte	0x4
	.byte	0x16
	.byte	0xa
	.byte	0
	.uleb128 0x9
	.uaword	.LASF6
	.byte	0x7
	.byte	0x96
	.uaword	0x5c8
	.byte	0x4
	.byte	0x8
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.uaword	.LASF7
	.byte	0x7
	.byte	0x97
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.uaword	.LASF8
	.byte	0x7
	.byte	0x98
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_FLASH_ECCRD_Bits"
	.byte	0x7
	.byte	0x99
	.uaword	0x97c
	.uleb128 0x7
	.string	"_Ifx_FLASH_ECCRP_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x9c
	.uaword	0xa52
	.uleb128 0x8
	.string	"RCODE"
	.byte	0x7
	.byte	0x9e
	.uaword	0x5c8
	.byte	0x4
	.byte	0x16
	.byte	0xa
	.byte	0
	.uleb128 0x9
	.uaword	.LASF6
	.byte	0x7
	.byte	0x9f
	.uaword	0x5c8
	.byte	0x4
	.byte	0x8
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.uaword	.LASF7
	.byte	0x7
	.byte	0xa0
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.uaword	.LASF8
	.byte	0x7
	.byte	0xa1
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_FLASH_ECCRP_Bits"
	.byte	0x7
	.byte	0xa2
	.uaword	0x9f5
	.uleb128 0x7
	.string	"_Ifx_FLASH_ECCW_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xa5
	.uaword	0xad6
	.uleb128 0x8
	.string	"WCODE"
	.byte	0x7
	.byte	0xa7
	.uaword	0x5c8
	.byte	0x4
	.byte	0x16
	.byte	0xa
	.byte	0
	.uleb128 0x9
	.uaword	.LASF6
	.byte	0x7
	.byte	0xa8
	.uaword	0x5c8
	.byte	0x4
	.byte	0x8
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.string	"DECENCDIS"
	.byte	0x7
	.byte	0xa9
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.string	"PECENCDIS"
	.byte	0x7
	.byte	0xaa
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_FLASH_ECCW_Bits"
	.byte	0x7
	.byte	0xab
	.uaword	0xa6e
	.uleb128 0x7
	.string	"_Ifx_FLASH_FCON_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xae
	.uaword	0xc38
	.uleb128 0x8
	.string	"WSPFLASH"
	.byte	0x7
	.byte	0xb0
	.uaword	0x5c8
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0x8
	.string	"WSECPF"
	.byte	0x7
	.byte	0xb1
	.uaword	0x5c8
	.byte	0x4
	.byte	0x2
	.byte	0x1a
	.byte	0
	.uleb128 0x8
	.string	"WSDFLASH"
	.byte	0x7
	.byte	0xb2
	.uaword	0x5c8
	.byte	0x4
	.byte	0x6
	.byte	0x14
	.byte	0
	.uleb128 0x8
	.string	"WSECDF"
	.byte	0x7
	.byte	0xb3
	.uaword	0x5c8
	.byte	0x4
	.byte	0x3
	.byte	0x11
	.byte	0
	.uleb128 0x8
	.string	"IDLE"
	.byte	0x7
	.byte	0xb4
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.string	"ESLDIS"
	.byte	0x7
	.byte	0xb5
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x8
	.string	"SLEEP"
	.byte	0x7
	.byte	0xb6
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0x8
	.string	"NSAFECC"
	.byte	0x7
	.byte	0xb7
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0x8
	.string	"STALL"
	.byte	0x7
	.byte	0xb8
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x8
	.string	"RES21"
	.byte	0x7
	.byte	0xb9
	.uaword	0x5c8
	.byte	0x4
	.byte	0x2
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.string	"RES23"
	.byte	0x7
	.byte	0xba
	.uaword	0x5c8
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.string	"VOPERM"
	.byte	0x7
	.byte	0xbb
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x8
	.string	"SQERM"
	.byte	0x7
	.byte	0xbc
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x8
	.string	"PROERM"
	.byte	0x7
	.byte	0xbd
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x9
	.uaword	.LASF9
	.byte	0x7
	.byte	0xbe
	.uaword	0x5c8
	.byte	0x4
	.byte	0x3
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.string	"PR5V"
	.byte	0x7
	.byte	0xbf
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.string	"EOBM"
	.byte	0x7
	.byte	0xc0
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_FLASH_FCON_Bits"
	.byte	0x7
	.byte	0xc1
	.uaword	0xaf1
	.uleb128 0x7
	.string	"_Ifx_FLASH_FPRO_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xc4
	.uaword	0xdf1
	.uleb128 0x8
	.string	"PROINP"
	.byte	0x7
	.byte	0xc6
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x8
	.string	"PRODISP"
	.byte	0x7
	.byte	0xc7
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x8
	.string	"PROIND"
	.byte	0x7
	.byte	0xc8
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x8
	.string	"PRODISD"
	.byte	0x7
	.byte	0xc9
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x8
	.string	"PROINHSMCOTP"
	.byte	0x7
	.byte	0xca
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x8
	.string	"RES5"
	.byte	0x7
	.byte	0xcb
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x8
	.string	"PROINOTP"
	.byte	0x7
	.byte	0xcc
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x8
	.string	"RES7"
	.byte	0x7
	.byte	0xcd
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.string	"PROINDBG"
	.byte	0x7
	.byte	0xce
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x8
	.string	"PRODISDBG"
	.byte	0x7
	.byte	0xcf
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x8
	.string	"PROINHSM"
	.byte	0x7
	.byte	0xd0
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x8
	.string	"reserved_11"
	.byte	0x7
	.byte	0xd1
	.uaword	0x5c8
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.string	"DCFP"
	.byte	0x7
	.byte	0xd2
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x8
	.string	"DDFP"
	.byte	0x7
	.byte	0xd3
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0x8
	.string	"DDFPX"
	.byte	0x7
	.byte	0xd4
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0x8
	.string	"reserved_19"
	.byte	0x7
	.byte	0xd5
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x8
	.string	"DDFD"
	.byte	0x7
	.byte	0xd6
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0x8
	.string	"reserved_21"
	.byte	0x7
	.byte	0xd7
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.string	"ENPE"
	.byte	0x7
	.byte	0xd8
	.uaword	0x5c8
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.string	"reserved_24"
	.byte	0x7
	.byte	0xd9
	.uaword	0x5c8
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_FLASH_FPRO_Bits"
	.byte	0x7
	.byte	0xda
	.uaword	0xc53
	.uleb128 0x7
	.string	"_Ifx_FLASH_FSR_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xdd
	.uaword	0x1052
	.uleb128 0x8
	.string	"FABUSY"
	.byte	0x7
	.byte	0xdf
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x8
	.string	"D0BUSY"
	.byte	0x7
	.byte	0xe0
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x8
	.string	"D1BUSY"
	.byte	0x7
	.byte	0xe1
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x8
	.string	"P0BUSY"
	.byte	0x7
	.byte	0xe2
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x8
	.string	"P1BUSY"
	.byte	0x7
	.byte	0xe3
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x8
	.string	"RES5"
	.byte	0x7
	.byte	0xe4
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x8
	.string	"RES6"
	.byte	0x7
	.byte	0xe5
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x8
	.string	"PROG"
	.byte	0x7
	.byte	0xe6
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.string	"ERASE"
	.byte	0x7
	.byte	0xe7
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x8
	.string	"PFPAGE"
	.byte	0x7
	.byte	0xe8
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x8
	.string	"DFPAGE"
	.byte	0x7
	.byte	0xe9
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x8
	.string	"OPER"
	.byte	0x7
	.byte	0xea
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x8
	.string	"SQER"
	.byte	0x7
	.byte	0xeb
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x8
	.string	"PROER"
	.byte	0x7
	.byte	0xec
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x8
	.string	"PFSBER"
	.byte	0x7
	.byte	0xed
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x8
	.string	"PFDBER"
	.byte	0x7
	.byte	0xee
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.string	"PFMBER"
	.byte	0x7
	.byte	0xef
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x8
	.string	"RES17"
	.byte	0x7
	.byte	0xf0
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0x8
	.string	"DFSBER"
	.byte	0x7
	.byte	0xf1
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0x8
	.string	"DFDBER"
	.byte	0x7
	.byte	0xf2
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x8
	.string	"DFTBER"
	.byte	0x7
	.byte	0xf3
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0x8
	.string	"DFMBER"
	.byte	0x7
	.byte	0xf4
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.string	"SRIADDERR"
	.byte	0x7
	.byte	0xf5
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0x8
	.string	"reserved_23"
	.byte	0x7
	.byte	0xf6
	.uaword	0x5c8
	.byte	0x4
	.byte	0x2
	.byte	0x7
	.byte	0
	.uleb128 0x8
	.string	"PVER"
	.byte	0x7
	.byte	0xf7
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x8
	.string	"EVER"
	.byte	0x7
	.byte	0xf8
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x8
	.string	"SPND"
	.byte	0x7
	.byte	0xf9
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.string	"SLM"
	.byte	0x7
	.byte	0xfa
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.string	"reserved_29"
	.byte	0x7
	.byte	0xfb
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.string	"ORIER"
	.byte	0x7
	.byte	0xfc
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.string	"reserved_31"
	.byte	0x7
	.byte	0xfd
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_FLASH_FSR_Bits"
	.byte	0x7
	.byte	0xfe
	.uaword	0xe0c
	.uleb128 0xa
	.string	"_Ifx_FLASH_HSMFCON_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x101
	.uaword	0x1102
	.uleb128 0xb
	.string	"LCKHSMUCB"
	.byte	0x7
	.uahalf	0x103
	.uaword	0x5c8
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0
	.uleb128 0xc
	.uaword	.LASF10
	.byte	0x7
	.uahalf	0x104
	.uaword	0x5c8
	.byte	0x4
	.byte	0x16
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.string	"VOPERM"
	.byte	0x7
	.uahalf	0x105
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xb
	.string	"SQERM"
	.byte	0x7
	.uahalf	0x106
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xb
	.string	"reserved_26"
	.byte	0x7
	.uahalf	0x107
	.uaword	0x5c8
	.byte	0x4
	.byte	0x5
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.string	"EOBM"
	.byte	0x7
	.uahalf	0x108
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_HSMFCON_Bits"
	.byte	0x7
	.uahalf	0x109
	.uaword	0x106c
	.uleb128 0xa
	.string	"_Ifx_FLASH_HSMFSR_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x10c
	.uaword	0x1247
	.uleb128 0xc
	.uaword	.LASF0
	.byte	0x7
	.uahalf	0x10e
	.uaword	0x5c8
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0
	.uleb128 0xb
	.string	"D1BUSY"
	.byte	0x7
	.uahalf	0x10f
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xb
	.string	"reserved_3"
	.byte	0x7
	.uahalf	0x110
	.uaword	0x5c8
	.byte	0x4
	.byte	0x4
	.byte	0x19
	.byte	0
	.uleb128 0xb
	.string	"PROG"
	.byte	0x7
	.uahalf	0x111
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.string	"ERASE"
	.byte	0x7
	.uahalf	0x112
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xc
	.uaword	.LASF11
	.byte	0x7
	.uahalf	0x113
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xb
	.string	"DFPAGE"
	.byte	0x7
	.uahalf	0x114
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xb
	.string	"OPER"
	.byte	0x7
	.uahalf	0x115
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xb
	.string	"SQER"
	.byte	0x7
	.uahalf	0x116
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xb
	.string	"reserved_13"
	.byte	0x7
	.uahalf	0x117
	.uaword	0x5c8
	.byte	0x4
	.byte	0xc
	.byte	0x7
	.byte	0
	.uleb128 0xb
	.string	"PVER"
	.byte	0x7
	.uahalf	0x118
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xb
	.string	"EVER"
	.byte	0x7
	.uahalf	0x119
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.string	"SPND"
	.byte	0x7
	.uahalf	0x11a
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.string	"reserved_28"
	.byte	0x7
	.uahalf	0x11b
	.uaword	0x5c8
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_HSMFSR_Bits"
	.byte	0x7
	.uahalf	0x11c
	.uaword	0x1121
	.uleb128 0xa
	.string	"_Ifx_FLASH_HSMMARD_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x11f
	.uaword	0x12ee
	.uleb128 0xc
	.uaword	.LASF0
	.byte	0x7
	.uahalf	0x121
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xb
	.string	"SELD1"
	.byte	0x7
	.uahalf	0x122
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xc
	.uaword	.LASF10
	.byte	0x7
	.uahalf	0x123
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xb
	.string	"SPND"
	.byte	0x7
	.uahalf	0x124
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xb
	.string	"SPNDERR"
	.byte	0x7
	.uahalf	0x125
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xc
	.uaword	.LASF12
	.byte	0x7
	.uahalf	0x126
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1b
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_HSMMARD_Bits"
	.byte	0x7
	.uahalf	0x127
	.uaword	0x1265
	.uleb128 0xa
	.string	"_Ifx_FLASH_HSMRRAD_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x12a
	.uaword	0x134f
	.uleb128 0xc
	.uaword	.LASF0
	.byte	0x7
	.uahalf	0x12c
	.uaword	0x5c8
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0xb
	.string	"ADD"
	.byte	0x7
	.uahalf	0x12d
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1d
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_HSMRRAD_Bits"
	.byte	0x7
	.uahalf	0x12e
	.uaword	0x130d
	.uleb128 0xa
	.string	"_Ifx_FLASH_HSMRRCT_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x131
	.uaword	0x1424
	.uleb128 0xb
	.string	"STRT"
	.byte	0x7
	.uahalf	0x133
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xb
	.string	"STP"
	.byte	0x7
	.uahalf	0x134
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xb
	.string	"BUSY"
	.byte	0x7
	.uahalf	0x135
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xb
	.string	"DONE"
	.byte	0x7
	.uahalf	0x136
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xb
	.string	"ERR"
	.byte	0x7
	.uahalf	0x137
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xc
	.uaword	.LASF12
	.byte	0x7
	.uahalf	0x138
	.uaword	0x5c8
	.byte	0x4
	.byte	0x3
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.string	"EOBM"
	.byte	0x7
	.uahalf	0x139
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xc
	.uaword	.LASF11
	.byte	0x7
	.uahalf	0x13a
	.uaword	0x5c8
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.string	"CNT"
	.byte	0x7
	.uahalf	0x13b
	.uaword	0x5c8
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_HSMRRCT_Bits"
	.byte	0x7
	.uahalf	0x13c
	.uaword	0x136e
	.uleb128 0xa
	.string	"_Ifx_FLASH_HSMRRD0_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x13f
	.uaword	0x1475
	.uleb128 0xc
	.uaword	.LASF4
	.byte	0x7
	.uahalf	0x141
	.uaword	0x5c8
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_HSMRRD0_Bits"
	.byte	0x7
	.uahalf	0x142
	.uaword	0x1443
	.uleb128 0xa
	.string	"_Ifx_FLASH_HSMRRD1_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x145
	.uaword	0x14c6
	.uleb128 0xc
	.uaword	.LASF4
	.byte	0x7
	.uahalf	0x147
	.uaword	0x5c8
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_HSMRRD1_Bits"
	.byte	0x7
	.uahalf	0x148
	.uaword	0x1494
	.uleb128 0xa
	.string	"_Ifx_FLASH_ID_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x14b
	.uaword	0x1541
	.uleb128 0xb
	.string	"MOD_REV"
	.byte	0x7
	.uahalf	0x14d
	.uaword	0x5c8
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.string	"MOD_TYPE"
	.byte	0x7
	.uahalf	0x14e
	.uaword	0x5c8
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.string	"MODNUMBER"
	.byte	0x7
	.uahalf	0x14f
	.uaword	0x5c8
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_ID_Bits"
	.byte	0x7
	.uahalf	0x150
	.uaword	0x14e5
	.uleb128 0xa
	.string	"_Ifx_FLASH_MARD_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x153
	.uaword	0x1609
	.uleb128 0xb
	.string	"HMARGIN"
	.byte	0x7
	.uahalf	0x155
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xb
	.string	"SELD0"
	.byte	0x7
	.uahalf	0x156
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xc
	.uaword	.LASF10
	.byte	0x7
	.uahalf	0x157
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xb
	.string	"SPND"
	.byte	0x7
	.uahalf	0x158
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xb
	.string	"SPNDERR"
	.byte	0x7
	.uahalf	0x159
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xc
	.uaword	.LASF12
	.byte	0x7
	.uahalf	0x15a
	.uaword	0x5c8
	.byte	0x4
	.byte	0xa
	.byte	0x11
	.byte	0
	.uleb128 0xb
	.string	"TRAPDIS"
	.byte	0x7
	.uahalf	0x15b
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.uaword	.LASF5
	.byte	0x7
	.uahalf	0x15c
	.uaword	0x5c8
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_MARD_Bits"
	.byte	0x7
	.uahalf	0x15d
	.uaword	0x155b
	.uleb128 0xa
	.string	"_Ifx_FLASH_MARP_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x160
	.uaword	0x16be
	.uleb128 0xb
	.string	"SELP0"
	.byte	0x7
	.uahalf	0x162
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xb
	.string	"SELP1"
	.byte	0x7
	.uahalf	0x163
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xb
	.string	"RES2"
	.byte	0x7
	.uahalf	0x164
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xb
	.string	"RES3"
	.byte	0x7
	.uahalf	0x165
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xc
	.uaword	.LASF13
	.byte	0x7
	.uahalf	0x166
	.uaword	0x5c8
	.byte	0x4
	.byte	0xb
	.byte	0x11
	.byte	0
	.uleb128 0xb
	.string	"TRAPDIS"
	.byte	0x7
	.uahalf	0x167
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.uaword	.LASF5
	.byte	0x7
	.uahalf	0x168
	.uaword	0x5c8
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_MARP_Bits"
	.byte	0x7
	.uahalf	0x169
	.uaword	0x1625
	.uleb128 0xa
	.string	"_Ifx_FLASH_PROCOND_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x16c
	.uaword	0x1810
	.uleb128 0xb
	.string	"L"
	.byte	0x7
	.uahalf	0x16e
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xb
	.string	"NSAFECC"
	.byte	0x7
	.uahalf	0x16f
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xb
	.string	"RAMIN"
	.byte	0x7
	.uahalf	0x170
	.uaword	0x5c8
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0
	.uleb128 0xb
	.string	"RAMINSEL"
	.byte	0x7
	.uahalf	0x171
	.uaword	0x5c8
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.string	"OSCCFG"
	.byte	0x7
	.uahalf	0x172
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xb
	.string	"MODE"
	.byte	0x7
	.uahalf	0x173
	.uaword	0x5c8
	.byte	0x4
	.byte	0x2
	.byte	0x15
	.byte	0
	.uleb128 0xb
	.string	"APREN"
	.byte	0x7
	.uahalf	0x174
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xb
	.string	"CAP0EN"
	.byte	0x7
	.uahalf	0x175
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xb
	.string	"CAP1EN"
	.byte	0x7
	.uahalf	0x176
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xb
	.string	"CAP2EN"
	.byte	0x7
	.uahalf	0x177
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xb
	.string	"CAP3EN"
	.byte	0x7
	.uahalf	0x178
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.string	"ESR0CNT"
	.byte	0x7
	.uahalf	0x179
	.uaword	0x5c8
	.byte	0x4
	.byte	0xc
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.string	"RES29"
	.byte	0x7
	.uahalf	0x17a
	.uaword	0x5c8
	.byte	0x4
	.byte	0x2
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.string	"RES30"
	.byte	0x7
	.uahalf	0x17b
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.string	"RPRO"
	.byte	0x7
	.uahalf	0x17c
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_PROCOND_Bits"
	.byte	0x7
	.uahalf	0x17d
	.uaword	0x16da
	.uleb128 0xa
	.string	"_Ifx_FLASH_PROCONDBG_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x180
	.uaword	0x1897
	.uleb128 0xb
	.string	"OCDSDIS"
	.byte	0x7
	.uahalf	0x182
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xc
	.uaword	.LASF14
	.byte	0x7
	.uahalf	0x183
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xb
	.string	"EDM"
	.byte	0x7
	.uahalf	0x184
	.uaword	0x5c8
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0
	.uleb128 0xc
	.uaword	.LASF13
	.byte	0x7
	.uahalf	0x185
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_PROCONDBG_Bits"
	.byte	0x7
	.uahalf	0x186
	.uaword	0x182f
	.uleb128 0xa
	.string	"_Ifx_FLASH_PROCONHSM_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x189
	.uaword	0x194f
	.uleb128 0xb
	.string	"HSMDBGDIS"
	.byte	0x7
	.uahalf	0x18b
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xc
	.uaword	.LASF14
	.byte	0x7
	.uahalf	0x18c
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xb
	.string	"TSTIFLCK"
	.byte	0x7
	.uahalf	0x18d
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xb
	.string	"HSMTSTDIS"
	.byte	0x7
	.uahalf	0x18e
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xb
	.string	"RES15"
	.byte	0x7
	.uahalf	0x18f
	.uaword	0x5c8
	.byte	0x4
	.byte	0xc
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.uaword	.LASF5
	.byte	0x7
	.uahalf	0x190
	.uaword	0x5c8
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_PROCONHSM_Bits"
	.byte	0x7
	.uahalf	0x191
	.uaword	0x18b8
	.uleb128 0xa
	.string	"_Ifx_FLASH_PROCONHSMCOTP_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x194
	.uaword	0x1ac7
	.uleb128 0xb
	.string	"HSMBOOTEN"
	.byte	0x7
	.uahalf	0x196
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xb
	.string	"SSWWAIT"
	.byte	0x7
	.uahalf	0x197
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xb
	.string	"HSMDX"
	.byte	0x7
	.uahalf	0x198
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xb
	.string	"HSM6X"
	.byte	0x7
	.uahalf	0x199
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xb
	.string	"HSM16X"
	.byte	0x7
	.uahalf	0x19a
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xb
	.string	"HSM17X"
	.byte	0x7
	.uahalf	0x19b
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xb
	.string	"S6ROM"
	.byte	0x7
	.uahalf	0x19c
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xb
	.string	"HSMENPINS"
	.byte	0x7
	.uahalf	0x19d
	.uaword	0x5c8
	.byte	0x4
	.byte	0x2
	.byte	0x17
	.byte	0
	.uleb128 0xb
	.string	"HSMENRES"
	.byte	0x7
	.uahalf	0x19e
	.uaword	0x5c8
	.byte	0x4
	.byte	0x2
	.byte	0x15
	.byte	0
	.uleb128 0xb
	.string	"DESTDBG"
	.byte	0x7
	.uahalf	0x19f
	.uaword	0x5c8
	.byte	0x4
	.byte	0x2
	.byte	0x13
	.byte	0
	.uleb128 0xb
	.string	"BLKFLAN"
	.byte	0x7
	.uahalf	0x1a0
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xb
	.string	"reserved_14"
	.byte	0x7
	.uahalf	0x1a1
	.uaword	0x5c8
	.byte	0x4
	.byte	0x2
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.string	"S16ROM"
	.byte	0x7
	.uahalf	0x1a2
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xb
	.string	"S17ROM"
	.byte	0x7
	.uahalf	0x1a3
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xb
	.string	"reserved_18"
	.byte	0x7
	.uahalf	0x1a4
	.uaword	0x5c8
	.byte	0x4
	.byte	0xe
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_PROCONHSMCOTP_Bits"
	.byte	0x7
	.uahalf	0x1a5
	.uaword	0x1970
	.uleb128 0xa
	.string	"_Ifx_FLASH_PROCONOTP_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x1a8
	.uaword	0x1d36
	.uleb128 0xb
	.string	"S0ROM"
	.byte	0x7
	.uahalf	0x1aa
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xb
	.string	"S1ROM"
	.byte	0x7
	.uahalf	0x1ab
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xb
	.string	"S2ROM"
	.byte	0x7
	.uahalf	0x1ac
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xb
	.string	"S3ROM"
	.byte	0x7
	.uahalf	0x1ad
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xb
	.string	"S4ROM"
	.byte	0x7
	.uahalf	0x1ae
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xb
	.string	"S5ROM"
	.byte	0x7
	.uahalf	0x1af
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xb
	.string	"S6ROM"
	.byte	0x7
	.uahalf	0x1b0
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xb
	.string	"S7ROM"
	.byte	0x7
	.uahalf	0x1b1
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.string	"S8ROM"
	.byte	0x7
	.uahalf	0x1b2
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xb
	.string	"S9ROM"
	.byte	0x7
	.uahalf	0x1b3
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xb
	.string	"S10ROM"
	.byte	0x7
	.uahalf	0x1b4
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xb
	.string	"S11ROM"
	.byte	0x7
	.uahalf	0x1b5
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xb
	.string	"S12ROM"
	.byte	0x7
	.uahalf	0x1b6
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xb
	.string	"S13ROM"
	.byte	0x7
	.uahalf	0x1b7
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xb
	.string	"S14ROM"
	.byte	0x7
	.uahalf	0x1b8
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xb
	.string	"S15ROM"
	.byte	0x7
	.uahalf	0x1b9
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.string	"S16ROM"
	.byte	0x7
	.uahalf	0x1ba
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xb
	.string	"S17ROM"
	.byte	0x7
	.uahalf	0x1bb
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xb
	.string	"S18ROM"
	.byte	0x7
	.uahalf	0x1bc
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xb
	.string	"S19ROM"
	.byte	0x7
	.uahalf	0x1bd
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xb
	.string	"S20ROM"
	.byte	0x7
	.uahalf	0x1be
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0xb
	.string	"S21ROM"
	.byte	0x7
	.uahalf	0x1bf
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0xb
	.string	"S22ROM"
	.byte	0x7
	.uahalf	0x1c0
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0xb
	.string	"S23ROM"
	.byte	0x7
	.uahalf	0x1c1
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.string	"S24ROM"
	.byte	0x7
	.uahalf	0x1c2
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xb
	.string	"S25ROM"
	.byte	0x7
	.uahalf	0x1c3
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xb
	.string	"S26ROM"
	.byte	0x7
	.uahalf	0x1c4
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xc
	.uaword	.LASF9
	.byte	0x7
	.uahalf	0x1c5
	.uaword	0x5c8
	.byte	0x4
	.byte	0x2
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.string	"BML"
	.byte	0x7
	.uahalf	0x1c6
	.uaword	0x5c8
	.byte	0x4
	.byte	0x2
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.string	"TP"
	.byte	0x7
	.uahalf	0x1c7
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_PROCONOTP_Bits"
	.byte	0x7
	.uahalf	0x1c8
	.uaword	0x1aec
	.uleb128 0xa
	.string	"_Ifx_FLASH_PROCONP_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x1cb
	.uaword	0x1f5b
	.uleb128 0xb
	.string	"S0L"
	.byte	0x7
	.uahalf	0x1cd
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xb
	.string	"S1L"
	.byte	0x7
	.uahalf	0x1ce
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xb
	.string	"S2L"
	.byte	0x7
	.uahalf	0x1cf
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xb
	.string	"S3L"
	.byte	0x7
	.uahalf	0x1d0
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xb
	.string	"S4L"
	.byte	0x7
	.uahalf	0x1d1
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xb
	.string	"S5L"
	.byte	0x7
	.uahalf	0x1d2
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xb
	.string	"S6L"
	.byte	0x7
	.uahalf	0x1d3
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xb
	.string	"S7L"
	.byte	0x7
	.uahalf	0x1d4
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.string	"S8L"
	.byte	0x7
	.uahalf	0x1d5
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xb
	.string	"S9L"
	.byte	0x7
	.uahalf	0x1d6
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xb
	.string	"S10L"
	.byte	0x7
	.uahalf	0x1d7
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xb
	.string	"S11L"
	.byte	0x7
	.uahalf	0x1d8
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xb
	.string	"S12L"
	.byte	0x7
	.uahalf	0x1d9
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xb
	.string	"S13L"
	.byte	0x7
	.uahalf	0x1da
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xb
	.string	"S14L"
	.byte	0x7
	.uahalf	0x1db
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xb
	.string	"S15L"
	.byte	0x7
	.uahalf	0x1dc
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.string	"S16L"
	.byte	0x7
	.uahalf	0x1dd
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xb
	.string	"S17L"
	.byte	0x7
	.uahalf	0x1de
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xb
	.string	"S18L"
	.byte	0x7
	.uahalf	0x1df
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xb
	.string	"S19L"
	.byte	0x7
	.uahalf	0x1e0
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xb
	.string	"S20L"
	.byte	0x7
	.uahalf	0x1e1
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0xb
	.string	"S21L"
	.byte	0x7
	.uahalf	0x1e2
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0xb
	.string	"S22L"
	.byte	0x7
	.uahalf	0x1e3
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0xb
	.string	"S23L"
	.byte	0x7
	.uahalf	0x1e4
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.string	"S24L"
	.byte	0x7
	.uahalf	0x1e5
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xb
	.string	"S25L"
	.byte	0x7
	.uahalf	0x1e6
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xb
	.string	"S26L"
	.byte	0x7
	.uahalf	0x1e7
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xc
	.uaword	.LASF9
	.byte	0x7
	.uahalf	0x1e8
	.uaword	0x5c8
	.byte	0x4
	.byte	0x4
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.string	"RPRO"
	.byte	0x7
	.uahalf	0x1e9
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_PROCONP_Bits"
	.byte	0x7
	.uahalf	0x1ea
	.uaword	0x1d57
	.uleb128 0xa
	.string	"_Ifx_FLASH_PROCONWOP_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x1ed
	.uaword	0x21b6
	.uleb128 0xb
	.string	"S0WOP"
	.byte	0x7
	.uahalf	0x1ef
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xb
	.string	"S1WOP"
	.byte	0x7
	.uahalf	0x1f0
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xb
	.string	"S2WOP"
	.byte	0x7
	.uahalf	0x1f1
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xb
	.string	"S3WOP"
	.byte	0x7
	.uahalf	0x1f2
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xb
	.string	"S4WOP"
	.byte	0x7
	.uahalf	0x1f3
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xb
	.string	"S5WOP"
	.byte	0x7
	.uahalf	0x1f4
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xb
	.string	"S6WOP"
	.byte	0x7
	.uahalf	0x1f5
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xb
	.string	"S7WOP"
	.byte	0x7
	.uahalf	0x1f6
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.string	"S8WOP"
	.byte	0x7
	.uahalf	0x1f7
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xb
	.string	"S9WOP"
	.byte	0x7
	.uahalf	0x1f8
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xb
	.string	"S10WOP"
	.byte	0x7
	.uahalf	0x1f9
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xb
	.string	"S11WOP"
	.byte	0x7
	.uahalf	0x1fa
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xb
	.string	"S12WOP"
	.byte	0x7
	.uahalf	0x1fb
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xb
	.string	"S13WOP"
	.byte	0x7
	.uahalf	0x1fc
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xb
	.string	"S14WOP"
	.byte	0x7
	.uahalf	0x1fd
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xb
	.string	"S15WOP"
	.byte	0x7
	.uahalf	0x1fe
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.string	"S16WOP"
	.byte	0x7
	.uahalf	0x1ff
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xb
	.string	"S17WOP"
	.byte	0x7
	.uahalf	0x200
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xb
	.string	"S18WOP"
	.byte	0x7
	.uahalf	0x201
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xb
	.string	"S19WOP"
	.byte	0x7
	.uahalf	0x202
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xb
	.string	"S20WOP"
	.byte	0x7
	.uahalf	0x203
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0xb
	.string	"S21WOP"
	.byte	0x7
	.uahalf	0x204
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0xb
	.string	"S22WOP"
	.byte	0x7
	.uahalf	0x205
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0xb
	.string	"S23WOP"
	.byte	0x7
	.uahalf	0x206
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.string	"S24WOP"
	.byte	0x7
	.uahalf	0x207
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xb
	.string	"S25WOP"
	.byte	0x7
	.uahalf	0x208
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xb
	.string	"S26WOP"
	.byte	0x7
	.uahalf	0x209
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xc
	.uaword	.LASF9
	.byte	0x7
	.uahalf	0x20a
	.uaword	0x5c8
	.byte	0x4
	.byte	0x4
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.string	"DATM"
	.byte	0x7
	.uahalf	0x20b
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_PROCONWOP_Bits"
	.byte	0x7
	.uahalf	0x20c
	.uaword	0x1f7a
	.uleb128 0xa
	.string	"_Ifx_FLASH_RDB_CFG0_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x20f
	.uaword	0x221a
	.uleb128 0xb
	.string	"TAG"
	.byte	0x7
	.uahalf	0x211
	.uaword	0x5c8
	.byte	0x4
	.byte	0x6
	.byte	0x1a
	.byte	0
	.uleb128 0xc
	.uaword	.LASF1
	.byte	0x7
	.uahalf	0x212
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1a
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_RDB_CFG0_Bits"
	.byte	0x7
	.uahalf	0x213
	.uaword	0x21d7
	.uleb128 0xa
	.string	"_Ifx_FLASH_RDB_CFG1_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x216
	.uaword	0x227d
	.uleb128 0xb
	.string	"TAG"
	.byte	0x7
	.uahalf	0x218
	.uaword	0x5c8
	.byte	0x4
	.byte	0x6
	.byte	0x1a
	.byte	0
	.uleb128 0xc
	.uaword	.LASF1
	.byte	0x7
	.uahalf	0x219
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1a
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_RDB_CFG1_Bits"
	.byte	0x7
	.uahalf	0x21a
	.uaword	0x223a
	.uleb128 0xa
	.string	"_Ifx_FLASH_RDB_CFG2_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x21d
	.uaword	0x22e0
	.uleb128 0xb
	.string	"TAG"
	.byte	0x7
	.uahalf	0x21f
	.uaword	0x5c8
	.byte	0x4
	.byte	0x6
	.byte	0x1a
	.byte	0
	.uleb128 0xc
	.uaword	.LASF1
	.byte	0x7
	.uahalf	0x220
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1a
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_RDB_CFG2_Bits"
	.byte	0x7
	.uahalf	0x221
	.uaword	0x229d
	.uleb128 0xa
	.string	"_Ifx_FLASH_RRAD_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x224
	.uaword	0x233f
	.uleb128 0xc
	.uaword	.LASF0
	.byte	0x7
	.uahalf	0x226
	.uaword	0x5c8
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0xb
	.string	"ADD"
	.byte	0x7
	.uahalf	0x227
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1d
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_RRAD_Bits"
	.byte	0x7
	.uahalf	0x228
	.uaword	0x2300
	.uleb128 0xa
	.string	"_Ifx_FLASH_RRCT_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x22b
	.uaword	0x240e
	.uleb128 0xb
	.string	"STRT"
	.byte	0x7
	.uahalf	0x22d
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xb
	.string	"STP"
	.byte	0x7
	.uahalf	0x22e
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xb
	.string	"BUSY"
	.byte	0x7
	.uahalf	0x22f
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xb
	.string	"DONE"
	.byte	0x7
	.uahalf	0x230
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xb
	.string	"ERR"
	.byte	0x7
	.uahalf	0x231
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xc
	.uaword	.LASF12
	.byte	0x7
	.uahalf	0x232
	.uaword	0x5c8
	.byte	0x4
	.byte	0x3
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.string	"EOBM"
	.byte	0x7
	.uahalf	0x233
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xc
	.uaword	.LASF11
	.byte	0x7
	.uahalf	0x234
	.uaword	0x5c8
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.string	"CNT"
	.byte	0x7
	.uahalf	0x235
	.uaword	0x5c8
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_RRCT_Bits"
	.byte	0x7
	.uahalf	0x236
	.uaword	0x235b
	.uleb128 0xa
	.string	"_Ifx_FLASH_RRD0_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x239
	.uaword	0x2459
	.uleb128 0xc
	.uaword	.LASF4
	.byte	0x7
	.uahalf	0x23b
	.uaword	0x5c8
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_RRD0_Bits"
	.byte	0x7
	.uahalf	0x23c
	.uaword	0x242a
	.uleb128 0xa
	.string	"_Ifx_FLASH_RRD1_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x23f
	.uaword	0x24a4
	.uleb128 0xc
	.uaword	.LASF4
	.byte	0x7
	.uahalf	0x241
	.uaword	0x5c8
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_RRD1_Bits"
	.byte	0x7
	.uahalf	0x242
	.uaword	0x2475
	.uleb128 0xa
	.string	"_Ifx_FLASH_UBAB_CFG_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x245
	.uaword	0x2533
	.uleb128 0xb
	.string	"SEL"
	.byte	0x7
	.uahalf	0x247
	.uaword	0x5c8
	.byte	0x4
	.byte	0x6
	.byte	0x1a
	.byte	0
	.uleb128 0xc
	.uaword	.LASF1
	.byte	0x7
	.uahalf	0x248
	.uaword	0x5c8
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.string	"CLR"
	.byte	0x7
	.uahalf	0x249
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xb
	.string	"DIS"
	.byte	0x7
	.uahalf	0x24a
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xc
	.uaword	.LASF2
	.byte	0x7
	.uahalf	0x24b
	.uaword	0x5c8
	.byte	0x4
	.byte	0x16
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_UBAB_CFG_Bits"
	.byte	0x7
	.uahalf	0x24c
	.uaword	0x24c0
	.uleb128 0xa
	.string	"_Ifx_FLASH_UBAB_STAT_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x24f
	.uaword	0x259f
	.uleb128 0xb
	.string	"VLD0"
	.byte	0x7
	.uahalf	0x251
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xb
	.string	"reserved_1"
	.byte	0x7
	.uahalf	0x252
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1f
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_UBAB_STAT_Bits"
	.byte	0x7
	.uahalf	0x253
	.uaword	0x2553
	.uleb128 0xa
	.string	"_Ifx_FLASH_UBAB_TOP_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x256
	.uaword	0x2634
	.uleb128 0xc
	.uaword	.LASF0
	.byte	0x7
	.uahalf	0x258
	.uaword	0x5c8
	.byte	0x4
	.byte	0x5
	.byte	0x1b
	.byte	0
	.uleb128 0xb
	.string	"ADDR"
	.byte	0x7
	.uahalf	0x259
	.uaword	0x5c8
	.byte	0x4
	.byte	0x13
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.string	"ERR"
	.byte	0x7
	.uahalf	0x25a
	.uaword	0x5c8
	.byte	0x4
	.byte	0x6
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.string	"VLD"
	.byte	0x7
	.uahalf	0x25b
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.string	"CLR"
	.byte	0x7
	.uahalf	0x25c
	.uaword	0x5c8
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_UBAB_TOP_Bits"
	.byte	0x7
	.uahalf	0x25d
	.uaword	0x25c0
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x265
	.uaword	0x267c
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x268
	.uaword	0x5c8
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x26a
	.uaword	0x1b1
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x26c
	.uaword	0x5d8
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_ACCEN0"
	.byte	0x7
	.uahalf	0x26d
	.uaword	0x2654
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x270
	.uaword	0x26bd
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x273
	.uaword	0x5c8
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x275
	.uaword	0x1b1
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x277
	.uaword	0x624
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_ACCEN1"
	.byte	0x7
	.uahalf	0x278
	.uaword	0x2695
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x27b
	.uaword	0x26fe
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x27e
	.uaword	0x5c8
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x280
	.uaword	0x1b1
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x282
	.uaword	0x6ae
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_CBAB_CFG"
	.byte	0x7
	.uahalf	0x283
	.uaword	0x26d6
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x286
	.uaword	0x2741
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x289
	.uaword	0x5c8
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x28b
	.uaword	0x1b1
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x28d
	.uaword	0x79f
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_CBAB_STAT"
	.byte	0x7
	.uahalf	0x28e
	.uaword	0x2719
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x291
	.uaword	0x2785
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x294
	.uaword	0x5c8
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x296
	.uaword	0x1b1
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x298
	.uaword	0x82d
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_CBAB_TOP"
	.byte	0x7
	.uahalf	0x299
	.uaword	0x275d
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x29c
	.uaword	0x27c8
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x29f
	.uaword	0x5c8
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x2a1
	.uaword	0x1b1
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x2a3
	.uaword	0x890
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_COMM0"
	.byte	0x7
	.uahalf	0x2a4
	.uaword	0x27a0
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x2a7
	.uaword	0x2808
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x2aa
	.uaword	0x5c8
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x2ac
	.uaword	0x1b1
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x2ae
	.uaword	0x8f8
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_COMM1"
	.byte	0x7
	.uahalf	0x2af
	.uaword	0x27e0
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x2b2
	.uaword	0x2848
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x2b5
	.uaword	0x5c8
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x2b7
	.uaword	0x1b1
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x2b9
	.uaword	0x960
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_COMM2"
	.byte	0x7
	.uahalf	0x2ba
	.uaword	0x2820
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x2bd
	.uaword	0x2888
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x2c0
	.uaword	0x5c8
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x2c2
	.uaword	0x1b1
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x2c4
	.uaword	0x9d9
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_ECCRD"
	.byte	0x7
	.uahalf	0x2c5
	.uaword	0x2860
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x2c8
	.uaword	0x28c8
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x2cb
	.uaword	0x5c8
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x2cd
	.uaword	0x1b1
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x2cf
	.uaword	0xa52
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_ECCRP"
	.byte	0x7
	.uahalf	0x2d0
	.uaword	0x28a0
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x2d3
	.uaword	0x2908
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x2d6
	.uaword	0x5c8
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x2d8
	.uaword	0x1b1
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x2da
	.uaword	0xad6
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_ECCW"
	.byte	0x7
	.uahalf	0x2db
	.uaword	0x28e0
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x2de
	.uaword	0x2947
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x2e1
	.uaword	0x5c8
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x2e3
	.uaword	0x1b1
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x2e5
	.uaword	0xc38
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_FCON"
	.byte	0x7
	.uahalf	0x2e6
	.uaword	0x291f
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x2e9
	.uaword	0x2986
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x2ec
	.uaword	0x5c8
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x2ee
	.uaword	0x1b1
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x2f0
	.uaword	0xdf1
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_FPRO"
	.byte	0x7
	.uahalf	0x2f1
	.uaword	0x295e
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x2f4
	.uaword	0x29c5
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x2f7
	.uaword	0x5c8
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x2f9
	.uaword	0x1b1
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x2fb
	.uaword	0x1052
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_FSR"
	.byte	0x7
	.uahalf	0x2fc
	.uaword	0x299d
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x2ff
	.uaword	0x2a03
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x302
	.uaword	0x5c8
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x304
	.uaword	0x1b1
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x306
	.uaword	0x1102
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_HSMFCON"
	.byte	0x7
	.uahalf	0x307
	.uaword	0x29db
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x30a
	.uaword	0x2a45
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x30d
	.uaword	0x5c8
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x30f
	.uaword	0x1b1
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x311
	.uaword	0x1247
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_HSMFSR"
	.byte	0x7
	.uahalf	0x312
	.uaword	0x2a1d
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x315
	.uaword	0x2a86
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x318
	.uaword	0x5c8
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x31a
	.uaword	0x1b1
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x31c
	.uaword	0x12ee
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_HSMMARD"
	.byte	0x7
	.uahalf	0x31d
	.uaword	0x2a5e
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x320
	.uaword	0x2ac8
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x323
	.uaword	0x5c8
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x325
	.uaword	0x1b1
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x327
	.uaword	0x134f
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_HSMRRAD"
	.byte	0x7
	.uahalf	0x328
	.uaword	0x2aa0
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x32b
	.uaword	0x2b0a
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x32e
	.uaword	0x5c8
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x330
	.uaword	0x1b1
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x332
	.uaword	0x1424
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_HSMRRCT"
	.byte	0x7
	.uahalf	0x333
	.uaword	0x2ae2
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x336
	.uaword	0x2b4c
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x339
	.uaword	0x5c8
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x33b
	.uaword	0x1b1
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x33d
	.uaword	0x1475
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_HSMRRD0"
	.byte	0x7
	.uahalf	0x33e
	.uaword	0x2b24
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x341
	.uaword	0x2b8e
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x344
	.uaword	0x5c8
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x346
	.uaword	0x1b1
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x348
	.uaword	0x14c6
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_HSMRRD1"
	.byte	0x7
	.uahalf	0x349
	.uaword	0x2b66
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x34c
	.uaword	0x2bd0
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x34f
	.uaword	0x5c8
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x351
	.uaword	0x1b1
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x353
	.uaword	0x1541
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_ID"
	.byte	0x7
	.uahalf	0x354
	.uaword	0x2ba8
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x357
	.uaword	0x2c0d
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x35a
	.uaword	0x5c8
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x35c
	.uaword	0x1b1
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x35e
	.uaword	0x1609
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_MARD"
	.byte	0x7
	.uahalf	0x35f
	.uaword	0x2be5
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x362
	.uaword	0x2c4c
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x365
	.uaword	0x5c8
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x367
	.uaword	0x1b1
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x369
	.uaword	0x16be
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_MARP"
	.byte	0x7
	.uahalf	0x36a
	.uaword	0x2c24
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x36d
	.uaword	0x2c8b
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x370
	.uaword	0x5c8
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x372
	.uaword	0x1b1
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x374
	.uaword	0x1810
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_PROCOND"
	.byte	0x7
	.uahalf	0x375
	.uaword	0x2c63
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x378
	.uaword	0x2ccd
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x37b
	.uaword	0x5c8
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x37d
	.uaword	0x1b1
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x37f
	.uaword	0x1897
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_PROCONDBG"
	.byte	0x7
	.uahalf	0x380
	.uaword	0x2ca5
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x383
	.uaword	0x2d11
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x386
	.uaword	0x5c8
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x388
	.uaword	0x1b1
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x38a
	.uaword	0x194f
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_PROCONHSM"
	.byte	0x7
	.uahalf	0x38b
	.uaword	0x2ce9
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x38e
	.uaword	0x2d55
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x391
	.uaword	0x5c8
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x393
	.uaword	0x1b1
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x395
	.uaword	0x1ac7
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_PROCONHSMCOTP"
	.byte	0x7
	.uahalf	0x396
	.uaword	0x2d2d
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x399
	.uaword	0x2d9d
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x39c
	.uaword	0x5c8
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x39e
	.uaword	0x1b1
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x3a0
	.uaword	0x1d36
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_PROCONOTP"
	.byte	0x7
	.uahalf	0x3a1
	.uaword	0x2d75
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x3a4
	.uaword	0x2de1
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x3a7
	.uaword	0x5c8
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x3a9
	.uaword	0x1b1
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x3ab
	.uaword	0x1f5b
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_PROCONP"
	.byte	0x7
	.uahalf	0x3ac
	.uaword	0x2db9
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x3af
	.uaword	0x2e23
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x3b2
	.uaword	0x5c8
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x3b4
	.uaword	0x1b1
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x3b6
	.uaword	0x21b6
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_PROCONWOP"
	.byte	0x7
	.uahalf	0x3b7
	.uaword	0x2dfb
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x3ba
	.uaword	0x2e67
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x3bd
	.uaword	0x5c8
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x3bf
	.uaword	0x1b1
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x3c1
	.uaword	0x221a
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_RDB_CFG0"
	.byte	0x7
	.uahalf	0x3c2
	.uaword	0x2e3f
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x3c5
	.uaword	0x2eaa
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x3c8
	.uaword	0x5c8
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x3ca
	.uaword	0x1b1
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x3cc
	.uaword	0x227d
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_RDB_CFG1"
	.byte	0x7
	.uahalf	0x3cd
	.uaword	0x2e82
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x3d0
	.uaword	0x2eed
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x3d3
	.uaword	0x5c8
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x3d5
	.uaword	0x1b1
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x3d7
	.uaword	0x22e0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_RDB_CFG2"
	.byte	0x7
	.uahalf	0x3d8
	.uaword	0x2ec5
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x3db
	.uaword	0x2f30
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x3de
	.uaword	0x5c8
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x3e0
	.uaword	0x1b1
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x3e2
	.uaword	0x233f
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_RRAD"
	.byte	0x7
	.uahalf	0x3e3
	.uaword	0x2f08
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x3e6
	.uaword	0x2f6f
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x3e9
	.uaword	0x5c8
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x3eb
	.uaword	0x1b1
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x3ed
	.uaword	0x240e
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_RRCT"
	.byte	0x7
	.uahalf	0x3ee
	.uaword	0x2f47
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x3f1
	.uaword	0x2fae
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x3f4
	.uaword	0x5c8
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x3f6
	.uaword	0x1b1
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x3f8
	.uaword	0x2459
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_RRD0"
	.byte	0x7
	.uahalf	0x3f9
	.uaword	0x2f86
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x3fc
	.uaword	0x2fed
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x3ff
	.uaword	0x5c8
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x401
	.uaword	0x1b1
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x403
	.uaword	0x24a4
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_RRD1"
	.byte	0x7
	.uahalf	0x404
	.uaword	0x2fc5
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x407
	.uaword	0x302c
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x40a
	.uaword	0x5c8
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x40c
	.uaword	0x1b1
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x40e
	.uaword	0x2533
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_UBAB_CFG"
	.byte	0x7
	.uahalf	0x40f
	.uaword	0x3004
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x412
	.uaword	0x306f
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x415
	.uaword	0x5c8
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x417
	.uaword	0x1b1
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x419
	.uaword	0x259f
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_UBAB_STAT"
	.byte	0x7
	.uahalf	0x41a
	.uaword	0x3047
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x41d
	.uaword	0x30b3
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x420
	.uaword	0x5c8
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x422
	.uaword	0x1b1
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x424
	.uaword	0x2634
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_UBAB_TOP"
	.byte	0x7
	.uahalf	0x425
	.uaword	0x308b
	.uleb128 0xa
	.string	"_Ifx_FLASH_CBAB"
	.byte	0xc
	.byte	0x7
	.uahalf	0x430
	.uaword	0x3110
	.uleb128 0x10
	.string	"CFG"
	.byte	0x7
	.uahalf	0x432
	.uaword	0x26fe
	.byte	0
	.uleb128 0x10
	.string	"STAT"
	.byte	0x7
	.uahalf	0x433
	.uaword	0x2741
	.byte	0x4
	.uleb128 0x10
	.string	"TOP"
	.byte	0x7
	.uahalf	0x434
	.uaword	0x2785
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_CBAB"
	.byte	0x7
	.uahalf	0x435
	.uaword	0x3127
	.uleb128 0x11
	.uaword	0x30ce
	.uleb128 0xa
	.string	"_Ifx_FLASH_RDB"
	.byte	0xc
	.byte	0x7
	.uahalf	0x438
	.uaword	0x316f
	.uleb128 0x10
	.string	"CFG0"
	.byte	0x7
	.uahalf	0x43a
	.uaword	0x2e67
	.byte	0
	.uleb128 0x10
	.string	"CFG1"
	.byte	0x7
	.uahalf	0x43b
	.uaword	0x2eaa
	.byte	0x4
	.uleb128 0x10
	.string	"CFG2"
	.byte	0x7
	.uahalf	0x43c
	.uaword	0x2eed
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_RDB"
	.byte	0x7
	.uahalf	0x43d
	.uaword	0x3185
	.uleb128 0x11
	.uaword	0x312c
	.uleb128 0xa
	.string	"_Ifx_FLASH_UBAB"
	.byte	0xc
	.byte	0x7
	.uahalf	0x440
	.uaword	0x31cc
	.uleb128 0x10
	.string	"CFG"
	.byte	0x7
	.uahalf	0x442
	.uaword	0x302c
	.byte	0
	.uleb128 0x10
	.string	"STAT"
	.byte	0x7
	.uahalf	0x443
	.uaword	0x306f
	.byte	0x4
	.uleb128 0x10
	.string	"TOP"
	.byte	0x7
	.uahalf	0x444
	.uaword	0x30b3
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_UBAB"
	.byte	0x7
	.uahalf	0x445
	.uaword	0x31e3
	.uleb128 0x11
	.uaword	0x318a
	.uleb128 0x12
	.string	"_Ifx_FLASH"
	.uahalf	0x1400
	.byte	0x7
	.uahalf	0x452
	.uaword	0x357b
	.uleb128 0x10
	.string	"COMM0"
	.byte	0x7
	.uahalf	0x454
	.uaword	0x27c8
	.byte	0
	.uleb128 0x10
	.string	"COMM1"
	.byte	0x7
	.uahalf	0x455
	.uaword	0x2808
	.byte	0x4
	.uleb128 0x10
	.string	"COMM2"
	.byte	0x7
	.uahalf	0x456
	.uaword	0x2848
	.byte	0x8
	.uleb128 0x10
	.string	"reserved_C"
	.byte	0x7
	.uahalf	0x457
	.uaword	0x357b
	.byte	0xc
	.uleb128 0x13
	.string	"ID"
	.byte	0x7
	.uahalf	0x458
	.uaword	0x2bd0
	.uahalf	0x1008
	.uleb128 0x13
	.string	"reserved_100C"
	.byte	0x7
	.uahalf	0x459
	.uaword	0x3598
	.uahalf	0x100c
	.uleb128 0x13
	.string	"FSR"
	.byte	0x7
	.uahalf	0x45a
	.uaword	0x29c5
	.uahalf	0x1010
	.uleb128 0x13
	.string	"FCON"
	.byte	0x7
	.uahalf	0x45b
	.uaword	0x2947
	.uahalf	0x1014
	.uleb128 0x13
	.string	"reserved_1018"
	.byte	0x7
	.uahalf	0x45c
	.uaword	0x3598
	.uahalf	0x1018
	.uleb128 0x13
	.string	"FPRO"
	.byte	0x7
	.uahalf	0x45d
	.uaword	0x2986
	.uahalf	0x101c
	.uleb128 0x13
	.string	"PROCONP"
	.byte	0x7
	.uahalf	0x45e
	.uaword	0x35a8
	.uahalf	0x1020
	.uleb128 0x13
	.string	"reserved_1028"
	.byte	0x7
	.uahalf	0x45f
	.uaword	0x35b8
	.uahalf	0x1028
	.uleb128 0x13
	.string	"PROCOND"
	.byte	0x7
	.uahalf	0x460
	.uaword	0x2c8b
	.uahalf	0x1030
	.uleb128 0x13
	.string	"PROCONHSMCOTP"
	.byte	0x7
	.uahalf	0x461
	.uaword	0x2d55
	.uahalf	0x1034
	.uleb128 0x13
	.string	"PROCONOTP"
	.byte	0x7
	.uahalf	0x462
	.uaword	0x35c8
	.uahalf	0x1038
	.uleb128 0x13
	.string	"reserved_1040"
	.byte	0x7
	.uahalf	0x463
	.uaword	0x35b8
	.uahalf	0x1040
	.uleb128 0x13
	.string	"PROCONWOP"
	.byte	0x7
	.uahalf	0x464
	.uaword	0x35d8
	.uahalf	0x1048
	.uleb128 0x13
	.string	"reserved_1050"
	.byte	0x7
	.uahalf	0x465
	.uaword	0x35b8
	.uahalf	0x1050
	.uleb128 0x13
	.string	"PROCONDBG"
	.byte	0x7
	.uahalf	0x466
	.uaword	0x2ccd
	.uahalf	0x1058
	.uleb128 0x13
	.string	"PROCONHSM"
	.byte	0x7
	.uahalf	0x467
	.uaword	0x2d11
	.uahalf	0x105c
	.uleb128 0x13
	.string	"RDBCFG"
	.byte	0x7
	.uahalf	0x468
	.uaword	0x35f8
	.uahalf	0x1060
	.uleb128 0x13
	.string	"reserved_1078"
	.byte	0x7
	.uahalf	0x469
	.uaword	0x35fd
	.uahalf	0x1078
	.uleb128 0x13
	.string	"ECCW"
	.byte	0x7
	.uahalf	0x46a
	.uaword	0x2908
	.uahalf	0x1090
	.uleb128 0x13
	.string	"ECCRP"
	.byte	0x7
	.uahalf	0x46b
	.uaword	0x360d
	.uahalf	0x1094
	.uleb128 0x13
	.string	"reserved_109C"
	.byte	0x7
	.uahalf	0x46c
	.uaword	0x35b8
	.uahalf	0x109c
	.uleb128 0x13
	.string	"ECCRD"
	.byte	0x7
	.uahalf	0x46d
	.uaword	0x2888
	.uahalf	0x10a4
	.uleb128 0x13
	.string	"MARP"
	.byte	0x7
	.uahalf	0x46e
	.uaword	0x2c4c
	.uahalf	0x10a8
	.uleb128 0x13
	.string	"MARD"
	.byte	0x7
	.uahalf	0x46f
	.uaword	0x2c0d
	.uahalf	0x10ac
	.uleb128 0x13
	.string	"reserved_10B0"
	.byte	0x7
	.uahalf	0x470
	.uaword	0x3598
	.uahalf	0x10b0
	.uleb128 0x13
	.string	"CBAB"
	.byte	0x7
	.uahalf	0x471
	.uaword	0x362d
	.uahalf	0x10b4
	.uleb128 0x13
	.string	"reserved_10CC"
	.byte	0x7
	.uahalf	0x472
	.uaword	0x35fd
	.uahalf	0x10cc
	.uleb128 0x13
	.string	"UBAB"
	.byte	0x7
	.uahalf	0x473
	.uaword	0x3642
	.uahalf	0x10e4
	.uleb128 0x13
	.string	"reserved_10FC"
	.byte	0x7
	.uahalf	0x474
	.uaword	0x3647
	.uahalf	0x10fc
	.uleb128 0x13
	.string	"RRCT"
	.byte	0x7
	.uahalf	0x475
	.uaword	0x2f6f
	.uahalf	0x1140
	.uleb128 0x13
	.string	"RRD0"
	.byte	0x7
	.uahalf	0x476
	.uaword	0x2fae
	.uahalf	0x1144
	.uleb128 0x13
	.string	"RRD1"
	.byte	0x7
	.uahalf	0x477
	.uaword	0x2fed
	.uahalf	0x1148
	.uleb128 0x13
	.string	"RRAD"
	.byte	0x7
	.uahalf	0x478
	.uaword	0x2f30
	.uahalf	0x114c
	.uleb128 0x13
	.string	"reserved_1150"
	.byte	0x7
	.uahalf	0x479
	.uaword	0x3657
	.uahalf	0x1150
	.uleb128 0x13
	.string	"HSMFSR"
	.byte	0x7
	.uahalf	0x47a
	.uaword	0x2a45
	.uahalf	0x1200
	.uleb128 0x13
	.string	"HSMFCON"
	.byte	0x7
	.uahalf	0x47b
	.uaword	0x2a03
	.uahalf	0x1204
	.uleb128 0x13
	.string	"HSMMARD"
	.byte	0x7
	.uahalf	0x47c
	.uaword	0x2a86
	.uahalf	0x1208
	.uleb128 0x13
	.string	"HSMRRCT"
	.byte	0x7
	.uahalf	0x47d
	.uaword	0x2b0a
	.uahalf	0x120c
	.uleb128 0x13
	.string	"HSMRRD0"
	.byte	0x7
	.uahalf	0x47e
	.uaword	0x2b4c
	.uahalf	0x1210
	.uleb128 0x13
	.string	"HSMRRD1"
	.byte	0x7
	.uahalf	0x47f
	.uaword	0x2b8e
	.uahalf	0x1214
	.uleb128 0x13
	.string	"HSMRRAD"
	.byte	0x7
	.uahalf	0x480
	.uaword	0x2ac8
	.uahalf	0x1218
	.uleb128 0x13
	.string	"reserved_121C"
	.byte	0x7
	.uahalf	0x481
	.uaword	0x3667
	.uahalf	0x121c
	.uleb128 0x13
	.string	"ACCEN1"
	.byte	0x7
	.uahalf	0x482
	.uaword	0x26bd
	.uahalf	0x13f8
	.uleb128 0x13
	.string	"ACCEN0"
	.byte	0x7
	.uahalf	0x483
	.uaword	0x267c
	.uahalf	0x13fc
	.byte	0
	.uleb128 0x14
	.uaword	0x1d4
	.uaword	0x358c
	.uleb128 0x15
	.uaword	0x358c
	.uahalf	0xffb
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x14
	.uaword	0x1d4
	.uaword	0x35a8
	.uleb128 0x16
	.uaword	0x358c
	.byte	0x3
	.byte	0
	.uleb128 0x14
	.uaword	0x2de1
	.uaword	0x35b8
	.uleb128 0x16
	.uaword	0x358c
	.byte	0x1
	.byte	0
	.uleb128 0x14
	.uaword	0x1d4
	.uaword	0x35c8
	.uleb128 0x16
	.uaword	0x358c
	.byte	0x7
	.byte	0
	.uleb128 0x14
	.uaword	0x2d9d
	.uaword	0x35d8
	.uleb128 0x16
	.uaword	0x358c
	.byte	0x1
	.byte	0
	.uleb128 0x14
	.uaword	0x2e23
	.uaword	0x35e8
	.uleb128 0x16
	.uaword	0x358c
	.byte	0x1
	.byte	0
	.uleb128 0x14
	.uaword	0x316f
	.uaword	0x35f8
	.uleb128 0x16
	.uaword	0x358c
	.byte	0x1
	.byte	0
	.uleb128 0x11
	.uaword	0x35e8
	.uleb128 0x14
	.uaword	0x1d4
	.uaword	0x360d
	.uleb128 0x16
	.uaword	0x358c
	.byte	0x17
	.byte	0
	.uleb128 0x14
	.uaword	0x28c8
	.uaword	0x361d
	.uleb128 0x16
	.uaword	0x358c
	.byte	0x1
	.byte	0
	.uleb128 0x14
	.uaword	0x3110
	.uaword	0x362d
	.uleb128 0x16
	.uaword	0x358c
	.byte	0x1
	.byte	0
	.uleb128 0x11
	.uaword	0x361d
	.uleb128 0x14
	.uaword	0x31cc
	.uaword	0x3642
	.uleb128 0x16
	.uaword	0x358c
	.byte	0x1
	.byte	0
	.uleb128 0x11
	.uaword	0x3632
	.uleb128 0x14
	.uaword	0x1d4
	.uaword	0x3657
	.uleb128 0x16
	.uaword	0x358c
	.byte	0x43
	.byte	0
	.uleb128 0x14
	.uaword	0x1d4
	.uaword	0x3667
	.uleb128 0x16
	.uaword	0x358c
	.byte	0xaf
	.byte	0
	.uleb128 0x14
	.uaword	0x1d4
	.uaword	0x3678
	.uleb128 0x15
	.uaword	0x358c
	.uahalf	0x1db
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH"
	.byte	0x7
	.uahalf	0x484
	.uaword	0x368a
	.uleb128 0x11
	.uaword	0x31e8
	.uleb128 0x5
	.byte	0x4
	.byte	0x8
	.byte	0x35
	.uaword	0x3785
	.uleb128 0x6
	.string	"IfxFlash_ErrorTracking_none"
	.sleb128 0
	.uleb128 0x6
	.string	"IfxFlash_ErrorTracking_correctedSingleBitError"
	.sleb128 1
	.uleb128 0x6
	.string	"IfxFlash_ErrorTracking_correctedDoubleBitError"
	.sleb128 2
	.uleb128 0x6
	.string	"IfxFlash_ErrorTracking_correctedSingleOrDoubleBitError"
	.sleb128 3
	.uleb128 0x6
	.string	"IfxFlash_ErrorTracking_uncorrectableMultiBitError"
	.sleb128 4
	.byte	0
	.uleb128 0x3
	.string	"IfxFlash_ErrorTracking"
	.byte	0x8
	.byte	0x3b
	.uaword	0x368f
	.uleb128 0x5
	.byte	0x4
	.byte	0x8
	.byte	0x40
	.uaword	0x37e2
	.uleb128 0x6
	.string	"IfxFlash_PortId_PortId_0"
	.sleb128 0
	.uleb128 0x6
	.string	"IfxFlash_PortId_PortId_1"
	.sleb128 1
	.byte	0
	.uleb128 0x3
	.string	"IfxFlash_PortId"
	.byte	0x8
	.byte	0x43
	.uaword	0x37a3
	.uleb128 0x17
	.byte	0x8
	.byte	0x8
	.byte	0x4f
	.uaword	0x3824
	.uleb128 0x18
	.string	"address"
	.byte	0x8
	.byte	0x51
	.uaword	0x208
	.byte	0
	.uleb128 0x18
	.string	"errorType"
	.byte	0x8
	.byte	0x52
	.uaword	0x3785
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.string	"IfxFlash_ErrorTracking_Address"
	.byte	0x8
	.byte	0x53
	.uaword	0x37f9
	.uleb128 0x19
	.string	"__st64"
	.byte	0x3
	.byte	0x76
	.byte	0x1
	.byte	0x3
	.uaword	0x3874
	.uleb128 0x1a
	.string	"addr"
	.byte	0x3
	.byte	0x76
	.uaword	0x279
	.uleb128 0x1a
	.string	"value"
	.byte	0x3
	.byte	0x76
	.uaword	0x249
	.byte	0
	.uleb128 0x1b
	.string	"__dsync"
	.byte	0x2
	.uahalf	0x540
	.byte	0x1
	.byte	0x3
	.uleb128 0x19
	.string	"__st64_lu"
	.byte	0x3
	.byte	0x89
	.byte	0x1
	.byte	0x3
	.uaword	0x38d3
	.uleb128 0x1a
	.string	"addr"
	.byte	0x3
	.byte	0x89
	.uaword	0x279
	.uleb128 0x1a
	.string	"valueLower"
	.byte	0x3
	.byte	0x89
	.uaword	0x208
	.uleb128 0x1a
	.string	"valueUpper"
	.byte	0x3
	.byte	0x89
	.uaword	0x208
	.uleb128 0x1c
	.string	"value"
	.byte	0x3
	.byte	0x8b
	.uaword	0x249
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.string	"IfxFlash_clearCorrectableErrorTracking"
	.byte	0x1
	.byte	0x24
	.byte	0x1
	.uaword	.LFB149
	.uaword	.LFE149
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x391c
	.uleb128 0x1e
	.uaword	.LASF15
	.byte	0x1
	.byte	0x24
	.uaword	0x37e2
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.string	"IfxFlash_clearStatus"
	.byte	0x1
	.byte	0x2a
	.byte	0x1
	.uaword	.LFB150
	.uaword	.LFE150
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x3972
	.uleb128 0x1e
	.uaword	.LASF16
	.byte	0x1
	.byte	0x2a
	.uaword	0x208
	.byte	0x1
	.byte	0x54
	.uleb128 0x1f
	.uaword	.LASF17
	.byte	0x1
	.byte	0x2c
	.uaword	0x3972
	.sleb128 -1358932652
	.uleb128 0x20
	.uaword	0x3874
	.uaword	.LBB46
	.uaword	.LBE46
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x21
	.byte	0x4
	.uaword	0x3978
	.uleb128 0x11
	.uaword	0x208
	.uleb128 0x1d
	.byte	0x1
	.string	"IfxFlash_clearUncorrectableErrorTracking"
	.byte	0x1
	.byte	0x34
	.byte	0x1
	.uaword	.LFB151
	.uaword	.LFE151
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x39c8
	.uleb128 0x1e
	.uaword	.LASF15
	.byte	0x1
	.byte	0x34
	.uaword	0x37e2
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.string	"IfxFlash_disableCorrectableErrorTracking"
	.byte	0x1
	.byte	0x3a
	.byte	0x1
	.uaword	.LFB152
	.uaword	.LFE152
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x3a26
	.uleb128 0x1e
	.uaword	.LASF15
	.byte	0x1
	.byte	0x3a
	.uaword	0x37e2
	.byte	0x1
	.byte	0x54
	.uleb128 0x22
	.string	"disable"
	.byte	0x1
	.byte	0x3a
	.uaword	0x229
	.uaword	.LLST0
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.string	"IfxFlash_disableUncorrectableErrorTracking"
	.byte	0x1
	.byte	0x40
	.byte	0x1
	.uaword	.LFB153
	.uaword	.LFE153
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x3a86
	.uleb128 0x1e
	.uaword	.LASF15
	.byte	0x1
	.byte	0x40
	.uaword	0x37e2
	.byte	0x1
	.byte	0x54
	.uleb128 0x22
	.string	"disable"
	.byte	0x1
	.byte	0x40
	.uaword	0x229
	.uaword	.LLST1
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.string	"IfxFlash_disableWriteProtection"
	.byte	0x1
	.byte	0x46
	.byte	0x1
	.uaword	.LFB154
	.uaword	.LFE154
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x3b15
	.uleb128 0x1e
	.uaword	.LASF16
	.byte	0x1
	.byte	0x46
	.uaword	0x208
	.byte	0x1
	.byte	0x54
	.uleb128 0x23
	.string	"ucb"
	.byte	0x1
	.byte	0x46
	.uaword	0x39a
	.byte	0x1
	.byte	0x55
	.uleb128 0x22
	.string	"password"
	.byte	0x1
	.byte	0x46
	.uaword	0x3b15
	.uaword	.LLST2
	.uleb128 0x1f
	.uaword	.LASF17
	.byte	0x1
	.byte	0x48
	.uaword	0x3972
	.sleb128 -1358932676
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.byte	0x49
	.uaword	0x208
	.uaword	.LLST3
	.uleb128 0x20
	.uaword	0x3874
	.uaword	.LBB48
	.uaword	.LBE48
	.byte	0x1
	.byte	0x52
	.byte	0
	.uleb128 0x21
	.byte	0x4
	.uaword	0x208
	.uleb128 0x25
	.byte	0x1
	.string	"IfxFlash_enterPageMode"
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.uaword	0x1c7
	.uaword	.LFB155
	.uaword	.LFE155
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x3b79
	.uleb128 0x26
	.uaword	.LASF18
	.byte	0x1
	.byte	0x56
	.uaword	0x208
	.uaword	.LLST4
	.uleb128 0x1f
	.uaword	.LASF17
	.byte	0x1
	.byte	0x58
	.uaword	0x3972
	.sleb128 -1358932652
	.uleb128 0x20
	.uaword	0x3874
	.uaword	.LBB50
	.uaword	.LBE50
	.byte	0x1
	.byte	0x65
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.string	"IfxFlash_eraseMultiplePhysicalSectors"
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.uaword	.LFB156
	.uaword	.LFE156
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x3c1d
	.uleb128 0x1e
	.uaword	.LASF19
	.byte	0x1
	.byte	0x6a
	.uaword	0x208
	.byte	0x1
	.byte	0x54
	.uleb128 0x1e
	.uaword	.LASF20
	.byte	0x1
	.byte	0x6a
	.uaword	0x208
	.byte	0x1
	.byte	0x55
	.uleb128 0x1f
	.uaword	.LASF17
	.byte	0x1
	.byte	0x6c
	.uaword	0x3972
	.sleb128 -1358910896
	.uleb128 0x1f
	.uaword	.LASF21
	.byte	0x1
	.byte	0x6d
	.uaword	0x3972
	.sleb128 -1358910888
	.uleb128 0x1f
	.uaword	.LASF22
	.byte	0x1
	.byte	0x6e
	.uaword	0x3972
	.sleb128 -1358910808
	.uleb128 0x1f
	.uaword	.LASF23
	.byte	0x1
	.byte	0x6f
	.uaword	0x3972
	.sleb128 -1358910808
	.uleb128 0x20
	.uaword	0x3874
	.uaword	.LBB52
	.uaword	.LBE52
	.byte	0x1
	.byte	0x76
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.string	"IfxFlash_eraseMultipleSectors"
	.byte	0x1
	.byte	0x7a
	.byte	0x1
	.uaword	.LFB157
	.uaword	.LFE157
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x3cb9
	.uleb128 0x1e
	.uaword	.LASF19
	.byte	0x1
	.byte	0x7a
	.uaword	0x208
	.byte	0x1
	.byte	0x54
	.uleb128 0x1e
	.uaword	.LASF20
	.byte	0x1
	.byte	0x7a
	.uaword	0x208
	.byte	0x1
	.byte	0x55
	.uleb128 0x1f
	.uaword	.LASF17
	.byte	0x1
	.byte	0x7c
	.uaword	0x3972
	.sleb128 -1358910896
	.uleb128 0x1f
	.uaword	.LASF21
	.byte	0x1
	.byte	0x7d
	.uaword	0x3972
	.sleb128 -1358910888
	.uleb128 0x1f
	.uaword	.LASF22
	.byte	0x1
	.byte	0x7e
	.uaword	0x3972
	.sleb128 -1358910808
	.uleb128 0x1f
	.uaword	.LASF23
	.byte	0x1
	.byte	0x7f
	.uaword	0x3972
	.sleb128 -1358910808
	.uleb128 0x20
	.uaword	0x3874
	.uaword	.LBB54
	.uaword	.LBE54
	.byte	0x1
	.byte	0x86
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.string	"IfxFlash_erasePhysicalSector"
	.byte	0x1
	.byte	0x8a
	.byte	0x1
	.uaword	.LFB158
	.uaword	.LFE158
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x3d47
	.uleb128 0x1e
	.uaword	.LASF19
	.byte	0x1
	.byte	0x8a
	.uaword	0x208
	.byte	0x1
	.byte	0x54
	.uleb128 0x1f
	.uaword	.LASF17
	.byte	0x1
	.byte	0x8c
	.uaword	0x3972
	.sleb128 -1358910896
	.uleb128 0x1f
	.uaword	.LASF21
	.byte	0x1
	.byte	0x8d
	.uaword	0x3972
	.sleb128 -1358910888
	.uleb128 0x1f
	.uaword	.LASF22
	.byte	0x1
	.byte	0x8e
	.uaword	0x3972
	.sleb128 -1358910808
	.uleb128 0x1f
	.uaword	.LASF23
	.byte	0x1
	.byte	0x8f
	.uaword	0x3972
	.sleb128 -1358910808
	.uleb128 0x20
	.uaword	0x3874
	.uaword	.LBB56
	.uaword	.LBE56
	.byte	0x1
	.byte	0x96
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.string	"IfxFlash_eraseSector"
	.byte	0x1
	.byte	0x9a
	.byte	0x1
	.uaword	.LFB159
	.uaword	.LFE159
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x3dcd
	.uleb128 0x1e
	.uaword	.LASF19
	.byte	0x1
	.byte	0x9a
	.uaword	0x208
	.byte	0x1
	.byte	0x54
	.uleb128 0x1f
	.uaword	.LASF17
	.byte	0x1
	.byte	0x9c
	.uaword	0x3972
	.sleb128 -1358910896
	.uleb128 0x1f
	.uaword	.LASF21
	.byte	0x1
	.byte	0x9d
	.uaword	0x3972
	.sleb128 -1358910888
	.uleb128 0x1f
	.uaword	.LASF22
	.byte	0x1
	.byte	0x9e
	.uaword	0x3972
	.sleb128 -1358910808
	.uleb128 0x1f
	.uaword	.LASF23
	.byte	0x1
	.byte	0x9f
	.uaword	0x3972
	.sleb128 -1358910808
	.uleb128 0x20
	.uaword	0x3874
	.uaword	.LBB58
	.uaword	.LBE58
	.byte	0x1
	.byte	0xa6
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.string	"IfxFlash_eraseVerifyMultipleSectors"
	.byte	0x1
	.byte	0xaa
	.byte	0x1
	.uaword	.LFB160
	.uaword	.LFE160
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x3e6f
	.uleb128 0x1e
	.uaword	.LASF19
	.byte	0x1
	.byte	0xaa
	.uaword	0x208
	.byte	0x1
	.byte	0x54
	.uleb128 0x1e
	.uaword	.LASF20
	.byte	0x1
	.byte	0xaa
	.uaword	0x208
	.byte	0x1
	.byte	0x55
	.uleb128 0x1f
	.uaword	.LASF17
	.byte	0x1
	.byte	0xac
	.uaword	0x3972
	.sleb128 -1358910896
	.uleb128 0x1f
	.uaword	.LASF21
	.byte	0x1
	.byte	0xad
	.uaword	0x3972
	.sleb128 -1358910888
	.uleb128 0x1f
	.uaword	.LASF22
	.byte	0x1
	.byte	0xae
	.uaword	0x3972
	.sleb128 -1358910808
	.uleb128 0x1f
	.uaword	.LASF23
	.byte	0x1
	.byte	0xaf
	.uaword	0x3972
	.sleb128 -1358910808
	.uleb128 0x20
	.uaword	0x3874
	.uaword	.LBB60
	.uaword	.LBE60
	.byte	0x1
	.byte	0xb6
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.string	"IfxFlash_eraseVerifySector"
	.byte	0x1
	.byte	0xba
	.byte	0x1
	.uaword	.LFB161
	.uaword	.LFE161
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x3efb
	.uleb128 0x1e
	.uaword	.LASF19
	.byte	0x1
	.byte	0xba
	.uaword	0x208
	.byte	0x1
	.byte	0x54
	.uleb128 0x1f
	.uaword	.LASF17
	.byte	0x1
	.byte	0xbc
	.uaword	0x3972
	.sleb128 -1358910896
	.uleb128 0x1f
	.uaword	.LASF21
	.byte	0x1
	.byte	0xbd
	.uaword	0x3972
	.sleb128 -1358910888
	.uleb128 0x1f
	.uaword	.LASF22
	.byte	0x1
	.byte	0xbe
	.uaword	0x3972
	.sleb128 -1358910808
	.uleb128 0x1f
	.uaword	.LASF23
	.byte	0x1
	.byte	0xbf
	.uaword	0x3972
	.sleb128 -1358910808
	.uleb128 0x20
	.uaword	0x3874
	.uaword	.LBB62
	.uaword	.LBE62
	.byte	0x1
	.byte	0xc6
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.string	"IfxFlash_getTrackedCorrectableErrors"
	.byte	0x1
	.byte	0xca
	.byte	0x1
	.uaword	0x208
	.uaword	.LFB162
	.uaword	.LFE162
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x3f8f
	.uleb128 0x26
	.uaword	.LASF15
	.byte	0x1
	.byte	0xca
	.uaword	0x37e2
	.uaword	.LLST5
	.uleb128 0x1e
	.uaword	.LASF24
	.byte	0x1
	.byte	0xca
	.uaword	0x3f8f
	.byte	0x1
	.byte	0x64
	.uleb128 0x27
	.uaword	.LASF25
	.byte	0x1
	.byte	0xcc
	.uaword	0x208
	.uaword	.LLST6
	.uleb128 0x28
	.uaword	.LASF26
	.byte	0x1
	.byte	0xcd
	.uaword	0x208
	.byte	0x1
	.byte	0x55
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.byte	0xcf
	.uaword	0x1b1
	.uaword	.LLST7
	.uleb128 0x29
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x1c
	.string	"top"
	.byte	0x1
	.byte	0xd6
	.uaword	0x2785
	.byte	0
	.byte	0
	.uleb128 0x21
	.byte	0x4
	.uaword	0x3824
	.uleb128 0x25
	.byte	0x1
	.string	"IfxFlash_getTrackedUncorrectableErrors"
	.byte	0x1
	.byte	0xe8
	.byte	0x1
	.uaword	0x208
	.uaword	.LFB163
	.uaword	.LFE163
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4031
	.uleb128 0x26
	.uaword	.LASF15
	.byte	0x1
	.byte	0xe8
	.uaword	0x37e2
	.uaword	.LLST8
	.uleb128 0x1e
	.uaword	.LASF24
	.byte	0x1
	.byte	0xe8
	.uaword	0x3f8f
	.byte	0x1
	.byte	0x64
	.uleb128 0x27
	.uaword	.LASF25
	.byte	0x1
	.byte	0xea
	.uaword	0x208
	.uaword	.LLST9
	.uleb128 0x27
	.uaword	.LASF26
	.byte	0x1
	.byte	0xeb
	.uaword	0x208
	.uaword	.LLST10
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.byte	0xed
	.uaword	0x1b1
	.uaword	.LLST11
	.uleb128 0x2a
	.uaword	.LBB68
	.uaword	.LBE68
	.uleb128 0x1c
	.string	"top"
	.byte	0x1
	.byte	0xf4
	.uaword	0x30b3
	.byte	0
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.string	"IfxFlash_loadPage"
	.byte	0x1
	.uahalf	0x106
	.byte	0x1
	.uaword	.LFB164
	.uaword	.LFE164
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4113
	.uleb128 0x2c
	.uaword	.LASF18
	.byte	0x1
	.uahalf	0x106
	.uaword	0x208
	.uaword	.LLST12
	.uleb128 0x2d
	.string	"wordL"
	.byte	0x1
	.uahalf	0x106
	.uaword	0x208
	.byte	0x1
	.byte	0x55
	.uleb128 0x2d
	.string	"wordU"
	.byte	0x1
	.uahalf	0x106
	.uaword	0x208
	.byte	0x1
	.byte	0x56
	.uleb128 0x2e
	.uaword	.LASF17
	.byte	0x1
	.uahalf	0x108
	.uaword	0x4113
	.sleb128 -1358932496
	.uleb128 0x2f
	.uaword	0x3882
	.uaword	.LBB69
	.uaword	.LBE69
	.byte	0x1
	.uahalf	0x10a
	.uaword	0x4102
	.uleb128 0x30
	.uaword	0x38b3
	.byte	0x1
	.byte	0x56
	.uleb128 0x30
	.uaword	0x38a1
	.byte	0x1
	.byte	0x55
	.uleb128 0x31
	.uaword	0x3895
	.sleb128 -1358932496
	.uleb128 0x2a
	.uaword	.LBB70
	.uaword	.LBE70
	.uleb128 0x32
	.uaword	0x38c5
	.byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x33
	.uaword	0x384a
	.uaword	.LBB71
	.uaword	.Ldebug_ranges0+0x28
	.byte	0x3
	.byte	0x8c
	.uleb128 0x30
	.uaword	0x3866
	.byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x31
	.uaword	0x385a
	.sleb128 -1358932496
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x34
	.uaword	0x3874
	.uaword	.LBB75
	.uaword	.LBE75
	.byte	0x1
	.uahalf	0x10c
	.byte	0
	.uleb128 0x21
	.byte	0x4
	.uaword	0x249
	.uleb128 0x2b
	.byte	0x1
	.string	"IfxFlash_loadPage2X32"
	.byte	0x1
	.uahalf	0x110
	.byte	0x1
	.uaword	.LFB165
	.uaword	.LFE165
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4193
	.uleb128 0x35
	.uaword	.LASF18
	.byte	0x1
	.uahalf	0x110
	.uaword	0x208
	.byte	0x1
	.byte	0x54
	.uleb128 0x2d
	.string	"wordL"
	.byte	0x1
	.uahalf	0x110
	.uaword	0x208
	.byte	0x1
	.byte	0x55
	.uleb128 0x2d
	.string	"wordU"
	.byte	0x1
	.uahalf	0x110
	.uaword	0x208
	.byte	0x1
	.byte	0x56
	.uleb128 0x36
	.uaword	.LASF17
	.byte	0x1
	.uahalf	0x112
	.uaword	0x3972
	.uaword	.LLST13
	.uleb128 0x34
	.uaword	0x3874
	.uaword	.LBB77
	.uaword	.LBE77
	.byte	0x1
	.uahalf	0x118
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.string	"IfxFlash_resetToRead"
	.byte	0x1
	.uahalf	0x11c
	.byte	0x1
	.uaword	.LFB166
	.uaword	.LFE166
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x41ed
	.uleb128 0x35
	.uaword	.LASF16
	.byte	0x1
	.uahalf	0x11c
	.uaword	0x208
	.byte	0x1
	.byte	0x54
	.uleb128 0x2e
	.uaword	.LASF17
	.byte	0x1
	.uahalf	0x11e
	.uaword	0x3972
	.sleb128 -1358932652
	.uleb128 0x34
	.uaword	0x3874
	.uaword	.LBB79
	.uaword	.LBE79
	.byte	0x1
	.uahalf	0x121
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.string	"IfxFlash_resumeProtection"
	.byte	0x1
	.uahalf	0x125
	.byte	0x1
	.uaword	.LFB167
	.uaword	.LFE167
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x424c
	.uleb128 0x35
	.uaword	.LASF16
	.byte	0x1
	.uahalf	0x125
	.uaword	0x208
	.byte	0x1
	.byte	0x54
	.uleb128 0x2e
	.uaword	.LASF17
	.byte	0x1
	.uahalf	0x127
	.uaword	0x3972
	.sleb128 -1358932652
	.uleb128 0x34
	.uaword	0x3874
	.uaword	.LBB81
	.uaword	.LBE81
	.byte	0x1
	.uahalf	0x12b
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.string	"IfxFlash_selectCorrectableErrorTracking"
	.byte	0x1
	.uahalf	0x12f
	.byte	0x1
	.uaword	.LFB168
	.uaword	.LFE168
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x42a8
	.uleb128 0x35
	.uaword	.LASF15
	.byte	0x1
	.uahalf	0x12f
	.uaword	0x37e2
	.byte	0x1
	.byte	0x54
	.uleb128 0x2c
	.uaword	.LASF27
	.byte	0x1
	.uahalf	0x12f
	.uaword	0x3785
	.uaword	.LLST14
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.string	"IfxFlash_selectUncorrectableErrorTracking"
	.byte	0x1
	.uahalf	0x13b
	.byte	0x1
	.uaword	.LFB169
	.uaword	.LFE169
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4306
	.uleb128 0x35
	.uaword	.LASF15
	.byte	0x1
	.uahalf	0x13b
	.uaword	0x37e2
	.byte	0x1
	.byte	0x54
	.uleb128 0x2c
	.uaword	.LASF27
	.byte	0x1
	.uahalf	0x13b
	.uaword	0x3785
	.uaword	.LLST15
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.string	"IfxFlash_suspendResumeMultipleSectors"
	.byte	0x1
	.uahalf	0x145
	.byte	0x1
	.uaword	.LFB170
	.uaword	.LFE170
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x43b2
	.uleb128 0x35
	.uaword	.LASF19
	.byte	0x1
	.uahalf	0x145
	.uaword	0x208
	.byte	0x1
	.byte	0x54
	.uleb128 0x35
	.uaword	.LASF20
	.byte	0x1
	.uahalf	0x145
	.uaword	0x208
	.byte	0x1
	.byte	0x55
	.uleb128 0x2e
	.uaword	.LASF17
	.byte	0x1
	.uahalf	0x147
	.uaword	0x3972
	.sleb128 -1358910896
	.uleb128 0x2e
	.uaword	.LASF21
	.byte	0x1
	.uahalf	0x148
	.uaword	0x3972
	.sleb128 -1358910888
	.uleb128 0x2e
	.uaword	.LASF22
	.byte	0x1
	.uahalf	0x149
	.uaword	0x3972
	.sleb128 -1358910808
	.uleb128 0x2e
	.uaword	.LASF23
	.byte	0x1
	.uahalf	0x14a
	.uaword	0x3972
	.sleb128 -1358910808
	.uleb128 0x34
	.uaword	0x3874
	.uaword	.LBB83
	.uaword	.LBE83
	.byte	0x1
	.uahalf	0x151
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.string	"IfxFlash_suspendResumeSector"
	.byte	0x1
	.uahalf	0x155
	.byte	0x1
	.uaword	.LFB171
	.uaword	.LFE171
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4447
	.uleb128 0x35
	.uaword	.LASF19
	.byte	0x1
	.uahalf	0x155
	.uaword	0x208
	.byte	0x1
	.byte	0x54
	.uleb128 0x2e
	.uaword	.LASF17
	.byte	0x1
	.uahalf	0x157
	.uaword	0x3972
	.sleb128 -1358910896
	.uleb128 0x2e
	.uaword	.LASF21
	.byte	0x1
	.uahalf	0x158
	.uaword	0x3972
	.sleb128 -1358910888
	.uleb128 0x2e
	.uaword	.LASF22
	.byte	0x1
	.uahalf	0x159
	.uaword	0x3972
	.sleb128 -1358910808
	.uleb128 0x2e
	.uaword	.LASF23
	.byte	0x1
	.uahalf	0x15a
	.uaword	0x3972
	.sleb128 -1358910808
	.uleb128 0x34
	.uaword	0x3874
	.uaword	.LBB85
	.uaword	.LBE85
	.byte	0x1
	.uahalf	0x161
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.string	"IfxFlash_waitUnbusy"
	.byte	0x1
	.uahalf	0x165
	.byte	0x1
	.uaword	0x1c7
	.uaword	.LFB172
	.uaword	.LFE172
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x44a7
	.uleb128 0x35
	.uaword	.LASF16
	.byte	0x1
	.uahalf	0x165
	.uaword	0x208
	.byte	0x1
	.byte	0x54
	.uleb128 0x2d
	.string	"flashType"
	.byte	0x1
	.uahalf	0x165
	.uaword	0x32c
	.byte	0x1
	.byte	0x55
	.uleb128 0x34
	.uaword	0x3874
	.uaword	.LBB87
	.uaword	.LBE87
	.byte	0x1
	.uahalf	0x178
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.string	"IfxFlash_writeBurst"
	.byte	0x1
	.uahalf	0x17d
	.byte	0x1
	.uaword	.LFB173
	.uaword	.LFE173
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4533
	.uleb128 0x35
	.uaword	.LASF18
	.byte	0x1
	.uahalf	0x17d
	.uaword	0x208
	.byte	0x1
	.byte	0x54
	.uleb128 0x2e
	.uaword	.LASF17
	.byte	0x1
	.uahalf	0x17f
	.uaword	0x3972
	.sleb128 -1358910896
	.uleb128 0x2e
	.uaword	.LASF21
	.byte	0x1
	.uahalf	0x180
	.uaword	0x3972
	.sleb128 -1358910888
	.uleb128 0x2e
	.uaword	.LASF22
	.byte	0x1
	.uahalf	0x181
	.uaword	0x3972
	.sleb128 -1358910808
	.uleb128 0x2e
	.uaword	.LASF23
	.byte	0x1
	.uahalf	0x182
	.uaword	0x3972
	.sleb128 -1358910808
	.uleb128 0x34
	.uaword	0x3874
	.uaword	.LBB89
	.uaword	.LBE89
	.byte	0x1
	.uahalf	0x189
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.string	"IfxFlash_writePage"
	.byte	0x1
	.uahalf	0x18d
	.byte	0x1
	.uaword	.LFB174
	.uaword	.LFE174
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x45be
	.uleb128 0x35
	.uaword	.LASF18
	.byte	0x1
	.uahalf	0x18d
	.uaword	0x208
	.byte	0x1
	.byte	0x54
	.uleb128 0x2e
	.uaword	.LASF17
	.byte	0x1
	.uahalf	0x18f
	.uaword	0x3972
	.sleb128 -1358910896
	.uleb128 0x2e
	.uaword	.LASF21
	.byte	0x1
	.uahalf	0x190
	.uaword	0x3972
	.sleb128 -1358910888
	.uleb128 0x2e
	.uaword	.LASF22
	.byte	0x1
	.uahalf	0x191
	.uaword	0x3972
	.sleb128 -1358910808
	.uleb128 0x2e
	.uaword	.LASF23
	.byte	0x1
	.uahalf	0x192
	.uaword	0x3972
	.sleb128 -1358910808
	.uleb128 0x34
	.uaword	0x3874
	.uaword	.LBB91
	.uaword	.LBE91
	.byte	0x1
	.uahalf	0x199
	.byte	0
	.uleb128 0x38
	.byte	0x1
	.string	"IfxFlash_writePageOnce"
	.byte	0x1
	.uahalf	0x19d
	.byte	0x1
	.uaword	.LFB175
	.uaword	.LFE175
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x35
	.uaword	.LASF18
	.byte	0x1
	.uahalf	0x19d
	.uaword	0x208
	.byte	0x1
	.byte	0x54
	.uleb128 0x2e
	.uaword	.LASF17
	.byte	0x1
	.uahalf	0x19f
	.uaword	0x3972
	.sleb128 -1358910896
	.uleb128 0x2e
	.uaword	.LASF21
	.byte	0x1
	.uahalf	0x1a0
	.uaword	0x3972
	.sleb128 -1358910888
	.uleb128 0x2e
	.uaword	.LASF22
	.byte	0x1
	.uahalf	0x1a1
	.uaword	0x3972
	.sleb128 -1358910808
	.uleb128 0x2e
	.uaword	.LASF23
	.byte	0x1
	.uahalf	0x1a2
	.uaword	0x3972
	.sleb128 -1358910808
	.uleb128 0x34
	.uaword	0x3874
	.uaword	.LBB93
	.uaword	.LBE93
	.byte	0x1
	.uahalf	0x1a9
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x38
	.uleb128 0xb
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
	.uleb128 0x1f
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
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x30
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x36
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
	.uleb128 0x37
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
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL3-.Ltext0
	.uaword	.LVL4-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL4-.Ltext0
	.uaword	.LFE152-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL5-.Ltext0
	.uaword	.LVL6-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL6-.Ltext0
	.uaword	.LFE153-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL7-.Ltext0
	.uaword	.LVL9-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL9-.Ltext0
	.uaword	.LFE154-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL8-.Ltext0
	.uaword	.LVL9-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL10-.Ltext0
	.uaword	.LVL11-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL11-.Ltext0
	.uaword	.LFE155-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL18-.Ltext0
	.uaword	.LVL19-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL19-.Ltext0
	.uaword	.LFE162-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL18-.Ltext0
	.uaword	.LVL21-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL21-.Ltext0
	.uaword	.LFE162-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL20-.Ltext0
	.uaword	.LVL21-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL21-.Ltext0
	.uaword	.LFE162-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL24-.Ltext0
	.uaword	.LVL25-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL25-.Ltext0
	.uaword	.LFE163-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL24-.Ltext0
	.uaword	.LVL28-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL28-.Ltext0
	.uaword	.LVL29-.Ltext0
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL29-.Ltext0
	.uaword	.LVL30-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL26-.Ltext0
	.uaword	.LVL27-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL26-.Ltext0
	.uaword	.LVL30-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL31-.Ltext0
	.uaword	.LVL32-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL32-.Ltext0
	.uaword	.LFE164-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL34-.Ltext0
	.uaword	.LVL35-.Ltext0
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xaf0055f0
	.uaword	.LVL35-.Ltext0
	.uaword	.LFE165-.Ltext0
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xaf0055f4
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL38-.Ltext0
	.uaword	.LVL39-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL39-.Ltext0
	.uaword	.LFE168-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL40-.Ltext0
	.uaword	.LVL41-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL41-.Ltext0
	.uaword	.LFE169-.Ltext0
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
	.uaword	.LBB64-.Ltext0
	.uaword	.LBE64-.Ltext0
	.uaword	.LBB65-.Ltext0
	.uaword	.LBE65-.Ltext0
	.uaword	.LBB66-.Ltext0
	.uaword	.LBE66-.Ltext0
	.uaword	.LBB67-.Ltext0
	.uaword	.LBE67-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB71-.Ltext0
	.uaword	.LBE71-.Ltext0
	.uaword	.LBB74-.Ltext0
	.uaword	.LBE74-.Ltext0
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF14:
	.string	"DBGIFLCK"
.LASF7:
	.string	"EDCERRINJ"
.LASF17:
	.string	"addr1"
.LASF21:
	.string	"addr2"
.LASF22:
	.string	"addr3"
.LASF23:
	.string	"addr4"
.LASF8:
	.string	"ECCORDIS"
.LASF0:
	.string	"reserved_0"
.LASF10:
	.string	"reserved_2"
.LASF13:
	.string	"reserved_4"
.LASF12:
	.string	"reserved_5"
.LASF1:
	.string	"reserved_6"
.LASF11:
	.string	"reserved_9"
.LASF3:
	.string	"STATUS"
.LASF4:
	.string	"DATA"
.LASF15:
	.string	"portId"
.LASF25:
	.string	"numErrors"
.LASF26:
	.string	"fillingLevel"
.LASF24:
	.string	"trackedFlashAdresses"
.LASF20:
	.string	"numSector"
.LASF19:
	.string	"sectorAddr"
.LASF16:
	.string	"flash"
.LASF2:
	.string	"reserved_10"
.LASF5:
	.string	"reserved_16"
.LASF27:
	.string	"errorTracking"
.LASF18:
	.string	"pageAddr"
.LASF6:
	.string	"reserved_22"
.LASF9:
	.string	"reserved_27"
	.ident	"GCC: (HighTec Release HDP-v4.9.1.0-infineon-2.0-df254e8) 4.9.4 build on 2018-04-18"
