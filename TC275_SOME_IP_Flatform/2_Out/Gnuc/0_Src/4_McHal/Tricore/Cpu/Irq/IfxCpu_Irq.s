	.file	"IfxCpu_Irq.c"
.section .text,"ax",@progbits
.Ltext0:
#APP
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry IfxCpu_Irq_intVecTable,0,255
#NO_APP
	.align 1
	.global	IfxCpu_Irq_installInterruptHandler
	.type	IfxCpu_Irq_installInterruptHandler, @function
IfxCpu_Irq_installInterruptHandler:
.LFB196:
	.file 1 "0_Src/4_McHal/Tricore/Cpu/Irq/IfxCpu_Irq.c"
	.loc 1 60 0
.LVL0:
	.loc 1 61 0
	movh.a	%a15, hi:IfxCpu_Irq_swIntVector
	lea	%a15, [%a15] lo:IfxCpu_Irq_swIntVector
	addsc.a	%a15, %a15, %d4, 2
	st.a	[%a15]0, %a4
	ret
.LFE196:
	.size	IfxCpu_Irq_installInterruptHandler, .-IfxCpu_Irq_installInterruptHandler
	.align 1
	.global	IfxCpu_Irq_intVecTable
	.type	IfxCpu_Irq_intVecTable, @function
IfxCpu_Irq_intVecTable:
.LFB197:
	.loc 1 73 0
.LBB2:
	.loc 1 76 0
#APP
	# 76 "0_Src/4_McHal/Tricore/Cpu/Irq/IfxCpu_Irq.c" 1
	mfcr %d15, LO:0xFE2C
	# 0 "" 2
.LVL1:
#NO_APP
.LBE2:
	.loc 1 79 0
	movh.a	%a15, hi:IfxCpu_Irq_swIntVector
	insert	%d15, %d15, 0, 10, 22
.LVL2:
	lea	%a15, [%a15] lo:IfxCpu_Irq_swIntVector
	addsc.a	%a15, %a15, %d15, 2
	ld.a	%a15, [%a15]0
	calli	%a15
.LVL3:
	rslcx
	rfe
.LFE197:
	.size	IfxCpu_Irq_intVecTable, .-IfxCpu_Irq_intVecTable
	.local	IfxCpu_Irq_swIntVector
.section .bss,"aw",@nobits
	.align 2
	.type		 IfxCpu_Irq_swIntVector,@object
	.size		 IfxCpu_Irq_swIntVector,1024
IfxCpu_Irq_swIntVector:
	.space	1024
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
.section .text,"ax",@progbits
.Letext0:
	.file 2 "./0_Src/4_McHal/Tricore/_Reg/IfxCpu_regdef.h"
	.file 3 "./0_Src/4_McHal/Tricore/Cpu/Std/Platform_Types.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x458
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9."
	.string	"4 build on 2018-04-18 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -msmall-const=8 -mtc161 -g -g -O2 -fno-common -fno-short-enums -fsingle-precision-constant -fstrict-volatile-bitfields"
	.byte	0x1
	.string	"0_Src/4_McHal/Tricore/Cpu/Irq/IfxCpu_Irq.c"
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
	.byte	0x3
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
	.uaword	0x256
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x6
	.string	"_Ifx_CPU_ICR_Bits"
	.byte	0x4
	.byte	0x2
	.uahalf	0x176
	.uaword	0x2e3
	.uleb128 0x7
	.string	"CCPN"
	.byte	0x2
	.uahalf	0x178
	.uaword	0x251
	.byte	0x4
	.byte	0xa
	.byte	0x16
	.byte	0
	.uleb128 0x7
	.string	"reserved_10"
	.byte	0x2
	.uahalf	0x179
	.uaword	0x251
	.byte	0x4
	.byte	0x5
	.byte	0x11
	.byte	0
	.uleb128 0x7
	.string	"IE"
	.byte	0x2
	.uahalf	0x17a
	.uaword	0x251
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.string	"PIPN"
	.byte	0x2
	.uahalf	0x17b
	.uaword	0x251
	.byte	0x4
	.byte	0xa
	.byte	0x6
	.byte	0
	.uleb128 0x7
	.string	"reserved_26"
	.byte	0x2
	.uahalf	0x17c
	.uaword	0x251
	.byte	0x4
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x8
	.string	"Ifx_CPU_ICR_Bits"
	.byte	0x2
	.uahalf	0x17d
	.uaword	0x266
	.uleb128 0x9
	.byte	0x4
	.byte	0x2
	.uahalf	0x451
	.uaword	0x324
	.uleb128 0xa
	.string	"U"
	.byte	0x2
	.uahalf	0x454
	.uaword	0x256
	.uleb128 0xa
	.string	"I"
	.byte	0x2
	.uahalf	0x456
	.uaword	0x1b1
	.uleb128 0xa
	.string	"B"
	.byte	0x2
	.uahalf	0x458
	.uaword	0x2e3
	.byte	0
	.uleb128 0x8
	.string	"Ifx_CPU_ICR"
	.byte	0x2
	.uahalf	0x459
	.uaword	0x2fc
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x3
	.string	"Ifx_Isr"
	.byte	0x1
	.byte	0x2d
	.uaword	0x353
	.uleb128 0xb
	.byte	0x4
	.uaword	0x359
	.uleb128 0xc
	.byte	0x1
	.uleb128 0xd
	.byte	0x1
	.string	"IfxCpu_Irq_installInterruptHandler"
	.byte	0x1
	.byte	0x3b
	.byte	0x1
	.uaword	.LFB196
	.uaword	.LFE196
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x3c9
	.uleb128 0xe
	.string	"isrFuncPointer"
	.byte	0x1
	.byte	0x3b
	.uaword	0x24f
	.byte	0x1
	.byte	0x64
	.uleb128 0xe
	.string	"serviceReqPrioNumber"
	.byte	0x1
	.byte	0x3b
	.uaword	0x1fb
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.string	"IfxCpu_Irq_intVecTable"
	.byte	0x1
	.byte	0x48
	.byte	0x1
	.uaword	.LFB197
	.uaword	.LFE197
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x427
	.uleb128 0xf
	.string	"icr"
	.byte	0x1
	.byte	0x4a
	.uaword	0x324
	.uleb128 0x10
	.uaword	.LBB2
	.uaword	.LBE2
	.uaword	0x41e
	.uleb128 0x11
	.string	"__res"
	.byte	0x1
	.byte	0x4c
	.uaword	0x256
	.uaword	.LLST0
	.byte	0
	.uleb128 0x12
	.uaword	.LVL3
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.uaword	0x344
	.uaword	0x437
	.uleb128 0x14
	.uaword	0x338
	.byte	0xff
	.byte	0
	.uleb128 0x15
	.string	"IfxCpu_Irq_swIntVector"
	.byte	0x1
	.byte	0x2f
	.uaword	0x427
	.byte	0x5
	.byte	0x3
	.uaword	IfxCpu_Irq_swIntVector
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
	.uleb128 0x35
	.byte	0
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
	.uleb128 0x5
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL1-.Ltext0
	.uaword	.LVL2-.Ltext0
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
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
	.ident	"GCC: (HighTec Release HDP-v4.9.1.0-infineon-2.0-df254e8) 4.9.4 build on 2018-04-18"
