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
# Subdirectory make file for 0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/ipv4
# This is for core type "MAIN" and Gnuc toolchain !
###############################################################################


OBJ_FILES_MAIN+= 2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/ipv4/autoip.o
DEP_FILES_MAIN+= 2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/ipv4/autoip.d

2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/ipv4/autoip.o: 0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/ipv4/autoip.c 1_ToolEnv/0_Build/1_Config/CfgCompiler_Gnuc.mk
	@mkdir -p $(@D)
	@rm -f $(ELF_BIN_MAIN) $(ADDITIONAL_EXE_MAIN) $(MAP_FILE_MAIN) $(LIB_OBJ_MAIN)
	@echo 'Compiling 0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/ipv4/autoip.c'
	$(CC) $(CC_OPTS) @1_ToolEnv/0_Build/9_Make/cIncludePathList.opt -c $< -o $@ -save-temps=obj -MMD
	@echo ' '

OBJ_FILES_MAIN+= 2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/ipv4/icmp.o
DEP_FILES_MAIN+= 2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/ipv4/icmp.d

2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/ipv4/icmp.o: 0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/ipv4/icmp.c 1_ToolEnv/0_Build/1_Config/CfgCompiler_Gnuc.mk
	@mkdir -p $(@D)
	@rm -f $(ELF_BIN_MAIN) $(ADDITIONAL_EXE_MAIN) $(MAP_FILE_MAIN) $(LIB_OBJ_MAIN)
	@echo 'Compiling 0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/ipv4/icmp.c'
	$(CC) $(CC_OPTS) @1_ToolEnv/0_Build/9_Make/cIncludePathList.opt -c $< -o $@ -save-temps=obj -MMD
	@echo ' '

OBJ_FILES_MAIN+= 2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/ipv4/igmp.o
DEP_FILES_MAIN+= 2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/ipv4/igmp.d

2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/ipv4/igmp.o: 0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/ipv4/igmp.c 1_ToolEnv/0_Build/1_Config/CfgCompiler_Gnuc.mk
	@mkdir -p $(@D)
	@rm -f $(ELF_BIN_MAIN) $(ADDITIONAL_EXE_MAIN) $(MAP_FILE_MAIN) $(LIB_OBJ_MAIN)
	@echo 'Compiling 0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/ipv4/igmp.c'
	$(CC) $(CC_OPTS) @1_ToolEnv/0_Build/9_Make/cIncludePathList.opt -c $< -o $@ -save-temps=obj -MMD
	@echo ' '

OBJ_FILES_MAIN+= 2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/ipv4/inet.o
DEP_FILES_MAIN+= 2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/ipv4/inet.d

2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/ipv4/inet.o: 0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/ipv4/inet.c 1_ToolEnv/0_Build/1_Config/CfgCompiler_Gnuc.mk
	@mkdir -p $(@D)
	@rm -f $(ELF_BIN_MAIN) $(ADDITIONAL_EXE_MAIN) $(MAP_FILE_MAIN) $(LIB_OBJ_MAIN)
	@echo 'Compiling 0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/ipv4/inet.c'
	$(CC) $(CC_OPTS) @1_ToolEnv/0_Build/9_Make/cIncludePathList.opt -c $< -o $@ -save-temps=obj -MMD
	@echo ' '

OBJ_FILES_MAIN+= 2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/ipv4/inet_chksum.o
DEP_FILES_MAIN+= 2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/ipv4/inet_chksum.d

2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/ipv4/inet_chksum.o: 0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/ipv4/inet_chksum.c 1_ToolEnv/0_Build/1_Config/CfgCompiler_Gnuc.mk
	@mkdir -p $(@D)
	@rm -f $(ELF_BIN_MAIN) $(ADDITIONAL_EXE_MAIN) $(MAP_FILE_MAIN) $(LIB_OBJ_MAIN)
	@echo 'Compiling 0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/ipv4/inet_chksum.c'
	$(CC) $(CC_OPTS) @1_ToolEnv/0_Build/9_Make/cIncludePathList.opt -c $< -o $@ -save-temps=obj -MMD
	@echo ' '

OBJ_FILES_MAIN+= 2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/ipv4/ip.o
DEP_FILES_MAIN+= 2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/ipv4/ip.d

2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/ipv4/ip.o: 0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/ipv4/ip.c 1_ToolEnv/0_Build/1_Config/CfgCompiler_Gnuc.mk
	@mkdir -p $(@D)
	@rm -f $(ELF_BIN_MAIN) $(ADDITIONAL_EXE_MAIN) $(MAP_FILE_MAIN) $(LIB_OBJ_MAIN)
	@echo 'Compiling 0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/ipv4/ip.c'
	$(CC) $(CC_OPTS) @1_ToolEnv/0_Build/9_Make/cIncludePathList.opt -c $< -o $@ -save-temps=obj -MMD
	@echo ' '

OBJ_FILES_MAIN+= 2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/ipv4/ip_addr.o
DEP_FILES_MAIN+= 2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/ipv4/ip_addr.d

2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/ipv4/ip_addr.o: 0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/ipv4/ip_addr.c 1_ToolEnv/0_Build/1_Config/CfgCompiler_Gnuc.mk
	@mkdir -p $(@D)
	@rm -f $(ELF_BIN_MAIN) $(ADDITIONAL_EXE_MAIN) $(MAP_FILE_MAIN) $(LIB_OBJ_MAIN)
	@echo 'Compiling 0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/ipv4/ip_addr.c'
	$(CC) $(CC_OPTS) @1_ToolEnv/0_Build/9_Make/cIncludePathList.opt -c $< -o $@ -save-temps=obj -MMD
	@echo ' '

OBJ_FILES_MAIN+= 2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/ipv4/ip_frag.o
DEP_FILES_MAIN+= 2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/ipv4/ip_frag.d

2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/ipv4/ip_frag.o: 0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/ipv4/ip_frag.c 1_ToolEnv/0_Build/1_Config/CfgCompiler_Gnuc.mk
	@mkdir -p $(@D)
	@rm -f $(ELF_BIN_MAIN) $(ADDITIONAL_EXE_MAIN) $(MAP_FILE_MAIN) $(LIB_OBJ_MAIN)
	@echo 'Compiling 0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/ipv4/ip_frag.c'
	$(CC) $(CC_OPTS) @1_ToolEnv/0_Build/9_Make/cIncludePathList.opt -c $< -o $@ -save-temps=obj -MMD
	@echo ' '

