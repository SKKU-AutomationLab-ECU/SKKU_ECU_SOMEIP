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
# Subdirectory make file for 0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/ppp
# This is for core type "MAIN" and Gnuc toolchain !
###############################################################################


OBJ_FILES_MAIN+= 2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/ppp/auth.o
DEP_FILES_MAIN+= 2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/ppp/auth.d

2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/ppp/auth.o: 0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/ppp/auth.c 1_ToolEnv/0_Build/1_Config/CfgCompiler_Gnuc.mk
	@mkdir -p $(@D)
	@rm -f $(ELF_BIN_MAIN) $(ADDITIONAL_EXE_MAIN) $(MAP_FILE_MAIN) $(LIB_OBJ_MAIN)
	@echo 'Compiling 0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/ppp/auth.c'
	$(CC) $(CC_OPTS) @1_ToolEnv/0_Build/9_Make/cIncludePathList.opt -c $< -o $@ -save-temps=obj -MMD
	@echo ' '

OBJ_FILES_MAIN+= 2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/ppp/chap.o
DEP_FILES_MAIN+= 2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/ppp/chap.d

2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/ppp/chap.o: 0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/ppp/chap.c 1_ToolEnv/0_Build/1_Config/CfgCompiler_Gnuc.mk
	@mkdir -p $(@D)
	@rm -f $(ELF_BIN_MAIN) $(ADDITIONAL_EXE_MAIN) $(MAP_FILE_MAIN) $(LIB_OBJ_MAIN)
	@echo 'Compiling 0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/ppp/chap.c'
	$(CC) $(CC_OPTS) @1_ToolEnv/0_Build/9_Make/cIncludePathList.opt -c $< -o $@ -save-temps=obj -MMD
	@echo ' '

OBJ_FILES_MAIN+= 2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/ppp/chpms.o
DEP_FILES_MAIN+= 2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/ppp/chpms.d

2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/ppp/chpms.o: 0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/ppp/chpms.c 1_ToolEnv/0_Build/1_Config/CfgCompiler_Gnuc.mk
	@mkdir -p $(@D)
	@rm -f $(ELF_BIN_MAIN) $(ADDITIONAL_EXE_MAIN) $(MAP_FILE_MAIN) $(LIB_OBJ_MAIN)
	@echo 'Compiling 0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/ppp/chpms.c'
	$(CC) $(CC_OPTS) @1_ToolEnv/0_Build/9_Make/cIncludePathList.opt -c $< -o $@ -save-temps=obj -MMD
	@echo ' '

OBJ_FILES_MAIN+= 2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/ppp/fsm.o
DEP_FILES_MAIN+= 2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/ppp/fsm.d

2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/ppp/fsm.o: 0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/ppp/fsm.c 1_ToolEnv/0_Build/1_Config/CfgCompiler_Gnuc.mk
	@mkdir -p $(@D)
	@rm -f $(ELF_BIN_MAIN) $(ADDITIONAL_EXE_MAIN) $(MAP_FILE_MAIN) $(LIB_OBJ_MAIN)
	@echo 'Compiling 0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/ppp/fsm.c'
	$(CC) $(CC_OPTS) @1_ToolEnv/0_Build/9_Make/cIncludePathList.opt -c $< -o $@ -save-temps=obj -MMD
	@echo ' '

OBJ_FILES_MAIN+= 2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/ppp/ipcp.o
DEP_FILES_MAIN+= 2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/ppp/ipcp.d

2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/ppp/ipcp.o: 0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/ppp/ipcp.c 1_ToolEnv/0_Build/1_Config/CfgCompiler_Gnuc.mk
	@mkdir -p $(@D)
	@rm -f $(ELF_BIN_MAIN) $(ADDITIONAL_EXE_MAIN) $(MAP_FILE_MAIN) $(LIB_OBJ_MAIN)
	@echo 'Compiling 0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/ppp/ipcp.c'
	$(CC) $(CC_OPTS) @1_ToolEnv/0_Build/9_Make/cIncludePathList.opt -c $< -o $@ -save-temps=obj -MMD
	@echo ' '

OBJ_FILES_MAIN+= 2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/ppp/lcp.o
DEP_FILES_MAIN+= 2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/ppp/lcp.d

2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/ppp/lcp.o: 0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/ppp/lcp.c 1_ToolEnv/0_Build/1_Config/CfgCompiler_Gnuc.mk
	@mkdir -p $(@D)
	@rm -f $(ELF_BIN_MAIN) $(ADDITIONAL_EXE_MAIN) $(MAP_FILE_MAIN) $(LIB_OBJ_MAIN)
	@echo 'Compiling 0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/ppp/lcp.c'
	$(CC) $(CC_OPTS) @1_ToolEnv/0_Build/9_Make/cIncludePathList.opt -c $< -o $@ -save-temps=obj -MMD
	@echo ' '

OBJ_FILES_MAIN+= 2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/ppp/magic.o
DEP_FILES_MAIN+= 2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/ppp/magic.d

2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/ppp/magic.o: 0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/ppp/magic.c 1_ToolEnv/0_Build/1_Config/CfgCompiler_Gnuc.mk
	@mkdir -p $(@D)
	@rm -f $(ELF_BIN_MAIN) $(ADDITIONAL_EXE_MAIN) $(MAP_FILE_MAIN) $(LIB_OBJ_MAIN)
	@echo 'Compiling 0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/ppp/magic.c'
	$(CC) $(CC_OPTS) @1_ToolEnv/0_Build/9_Make/cIncludePathList.opt -c $< -o $@ -save-temps=obj -MMD
	@echo ' '

OBJ_FILES_MAIN+= 2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/ppp/md5.o
DEP_FILES_MAIN+= 2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/ppp/md5.d

2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/ppp/md5.o: 0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/ppp/md5.c 1_ToolEnv/0_Build/1_Config/CfgCompiler_Gnuc.mk
	@mkdir -p $(@D)
	@rm -f $(ELF_BIN_MAIN) $(ADDITIONAL_EXE_MAIN) $(MAP_FILE_MAIN) $(LIB_OBJ_MAIN)
	@echo 'Compiling 0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/ppp/md5.c'
	$(CC) $(CC_OPTS) @1_ToolEnv/0_Build/9_Make/cIncludePathList.opt -c $< -o $@ -save-temps=obj -MMD
	@echo ' '

OBJ_FILES_MAIN+= 2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/ppp/pap.o
DEP_FILES_MAIN+= 2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/ppp/pap.d

2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/ppp/pap.o: 0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/ppp/pap.c 1_ToolEnv/0_Build/1_Config/CfgCompiler_Gnuc.mk
	@mkdir -p $(@D)
	@rm -f $(ELF_BIN_MAIN) $(ADDITIONAL_EXE_MAIN) $(MAP_FILE_MAIN) $(LIB_OBJ_MAIN)
	@echo 'Compiling 0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/ppp/pap.c'
	$(CC) $(CC_OPTS) @1_ToolEnv/0_Build/9_Make/cIncludePathList.opt -c $< -o $@ -save-temps=obj -MMD
	@echo ' '

OBJ_FILES_MAIN+= 2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/ppp/ppp.o
DEP_FILES_MAIN+= 2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/ppp/ppp.d

2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/ppp/ppp.o: 0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/ppp/ppp.c 1_ToolEnv/0_Build/1_Config/CfgCompiler_Gnuc.mk
	@mkdir -p $(@D)
	@rm -f $(ELF_BIN_MAIN) $(ADDITIONAL_EXE_MAIN) $(MAP_FILE_MAIN) $(LIB_OBJ_MAIN)
	@echo 'Compiling 0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/ppp/ppp.c'
	$(CC) $(CC_OPTS) @1_ToolEnv/0_Build/9_Make/cIncludePathList.opt -c $< -o $@ -save-temps=obj -MMD
	@echo ' '

OBJ_FILES_MAIN+= 2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/ppp/ppp_oe.o
DEP_FILES_MAIN+= 2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/ppp/ppp_oe.d

2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/ppp/ppp_oe.o: 0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/ppp/ppp_oe.c 1_ToolEnv/0_Build/1_Config/CfgCompiler_Gnuc.mk
	@mkdir -p $(@D)
	@rm -f $(ELF_BIN_MAIN) $(ADDITIONAL_EXE_MAIN) $(MAP_FILE_MAIN) $(LIB_OBJ_MAIN)
	@echo 'Compiling 0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/ppp/ppp_oe.c'
	$(CC) $(CC_OPTS) @1_ToolEnv/0_Build/9_Make/cIncludePathList.opt -c $< -o $@ -save-temps=obj -MMD
	@echo ' '

OBJ_FILES_MAIN+= 2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/ppp/randm.o
DEP_FILES_MAIN+= 2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/ppp/randm.d

2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/ppp/randm.o: 0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/ppp/randm.c 1_ToolEnv/0_Build/1_Config/CfgCompiler_Gnuc.mk
	@mkdir -p $(@D)
	@rm -f $(ELF_BIN_MAIN) $(ADDITIONAL_EXE_MAIN) $(MAP_FILE_MAIN) $(LIB_OBJ_MAIN)
	@echo 'Compiling 0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/ppp/randm.c'
	$(CC) $(CC_OPTS) @1_ToolEnv/0_Build/9_Make/cIncludePathList.opt -c $< -o $@ -save-temps=obj -MMD
	@echo ' '

OBJ_FILES_MAIN+= 2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/ppp/vj.o
DEP_FILES_MAIN+= 2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/ppp/vj.d

2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/ppp/vj.o: 0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/ppp/vj.c 1_ToolEnv/0_Build/1_Config/CfgCompiler_Gnuc.mk
	@mkdir -p $(@D)
	@rm -f $(ELF_BIN_MAIN) $(ADDITIONAL_EXE_MAIN) $(MAP_FILE_MAIN) $(LIB_OBJ_MAIN)
	@echo 'Compiling 0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/ppp/vj.c'
	$(CC) $(CC_OPTS) @1_ToolEnv/0_Build/9_Make/cIncludePathList.opt -c $< -o $@ -save-temps=obj -MMD
	@echo ' '

