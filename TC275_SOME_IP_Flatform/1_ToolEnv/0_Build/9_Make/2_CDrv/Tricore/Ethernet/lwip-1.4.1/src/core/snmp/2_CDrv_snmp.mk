###############################################################################
#                                                                             #
#       Copyright (C) 2015 Infineon Technologies AG. All rights reserved.     #
#                                                                             #
#                                                                             #
#                              IMPORTANT NOTICE                               #
#                                                                             #
#                                                                             #
# Infineon Technologies AG (Infineon) is supplying this file for use          #
# exclusively with Infineon’s microcontroller products. This file can be      #
# freely distributed within development tools that are supporting such        #
# microcontroller products.                                                   #
#                                                                             #
# THIS SOFTWARE IS PROVIDED "AS IS".  NO WARRANTIES, WHETHER EXPRESS, IMPLIED #
# OR STATUTORY, INCLUDING, BUT NOT LIMITED TO, IMPLIED WARRANTIES OF          #
# MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE APPLY TO THIS SOFTWARE.#
# INFINEON SHALL NOT, IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL,#
# OR CONSEQUENTIAL DAMAGES, FOR	ANY REASON WHATSOEVER.                        #
#                                                                             #
###############################################################################
# Subdirectory make file for 0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/snmp
# This is for core type "MAIN" and Gnuc toolchain !
###############################################################################


OBJ_FILES_MAIN+= 2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/snmp/asn1_dec.o
DEP_FILES_MAIN+= 2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/snmp/asn1_dec.d

2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/snmp/asn1_dec.o: 0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/snmp/asn1_dec.c 1_ToolEnv/0_Build/1_Config/CfgCompiler_Gnuc.mk
	@mkdir -p $(@D)
	@rm -f $(ELF_BIN_MAIN) $(ADDITIONAL_EXE_MAIN) $(MAP_FILE_MAIN) $(LIB_OBJ_MAIN)
	@echo 'Compiling 0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/snmp/asn1_dec.c'
	$(CC) $(CC_OPTS) @1_ToolEnv/0_Build/9_Make/cIncludePathList.opt -c $< -o $@ -save-temps=obj -MMD
	@echo ' '

OBJ_FILES_MAIN+= 2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/snmp/asn1_enc.o
DEP_FILES_MAIN+= 2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/snmp/asn1_enc.d

2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/snmp/asn1_enc.o: 0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/snmp/asn1_enc.c 1_ToolEnv/0_Build/1_Config/CfgCompiler_Gnuc.mk
	@mkdir -p $(@D)
	@rm -f $(ELF_BIN_MAIN) $(ADDITIONAL_EXE_MAIN) $(MAP_FILE_MAIN) $(LIB_OBJ_MAIN)
	@echo 'Compiling 0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/snmp/asn1_enc.c'
	$(CC) $(CC_OPTS) @1_ToolEnv/0_Build/9_Make/cIncludePathList.opt -c $< -o $@ -save-temps=obj -MMD
	@echo ' '

OBJ_FILES_MAIN+= 2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/snmp/mib2.o
DEP_FILES_MAIN+= 2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/snmp/mib2.d

2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/snmp/mib2.o: 0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/snmp/mib2.c 1_ToolEnv/0_Build/1_Config/CfgCompiler_Gnuc.mk
	@mkdir -p $(@D)
	@rm -f $(ELF_BIN_MAIN) $(ADDITIONAL_EXE_MAIN) $(MAP_FILE_MAIN) $(LIB_OBJ_MAIN)
	@echo 'Compiling 0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/snmp/mib2.c'
	$(CC) $(CC_OPTS) @1_ToolEnv/0_Build/9_Make/cIncludePathList.opt -c $< -o $@ -save-temps=obj -MMD
	@echo ' '

OBJ_FILES_MAIN+= 2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/snmp/mib_structs.o
DEP_FILES_MAIN+= 2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/snmp/mib_structs.d

2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/snmp/mib_structs.o: 0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/snmp/mib_structs.c 1_ToolEnv/0_Build/1_Config/CfgCompiler_Gnuc.mk
	@mkdir -p $(@D)
	@rm -f $(ELF_BIN_MAIN) $(ADDITIONAL_EXE_MAIN) $(MAP_FILE_MAIN) $(LIB_OBJ_MAIN)
	@echo 'Compiling 0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/snmp/mib_structs.c'
	$(CC) $(CC_OPTS) @1_ToolEnv/0_Build/9_Make/cIncludePathList.opt -c $< -o $@ -save-temps=obj -MMD
	@echo ' '

OBJ_FILES_MAIN+= 2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/snmp/msg_in.o
DEP_FILES_MAIN+= 2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/snmp/msg_in.d

2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/snmp/msg_in.o: 0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/snmp/msg_in.c 1_ToolEnv/0_Build/1_Config/CfgCompiler_Gnuc.mk
	@mkdir -p $(@D)
	@rm -f $(ELF_BIN_MAIN) $(ADDITIONAL_EXE_MAIN) $(MAP_FILE_MAIN) $(LIB_OBJ_MAIN)
	@echo 'Compiling 0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/snmp/msg_in.c'
	$(CC) $(CC_OPTS) @1_ToolEnv/0_Build/9_Make/cIncludePathList.opt -c $< -o $@ -save-temps=obj -MMD
	@echo ' '

OBJ_FILES_MAIN+= 2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/snmp/msg_out.o
DEP_FILES_MAIN+= 2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/snmp/msg_out.d

2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/snmp/msg_out.o: 0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/snmp/msg_out.c 1_ToolEnv/0_Build/1_Config/CfgCompiler_Gnuc.mk
	@mkdir -p $(@D)
	@rm -f $(ELF_BIN_MAIN) $(ADDITIONAL_EXE_MAIN) $(MAP_FILE_MAIN) $(LIB_OBJ_MAIN)
	@echo 'Compiling 0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/snmp/msg_out.c'
	$(CC) $(CC_OPTS) @1_ToolEnv/0_Build/9_Make/cIncludePathList.opt -c $< -o $@ -save-temps=obj -MMD
	@echo ' '

