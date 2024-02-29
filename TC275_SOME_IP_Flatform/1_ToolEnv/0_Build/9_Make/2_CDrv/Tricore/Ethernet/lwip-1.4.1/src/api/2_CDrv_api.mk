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
# Subdirectory make file for 0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/api
# This is for core type "MAIN" and Gnuc toolchain !
###############################################################################


OBJ_FILES_MAIN+= 2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/api/api_lib.o
DEP_FILES_MAIN+= 2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/api/api_lib.d

2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/api/api_lib.o: 0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/api/api_lib.c 1_ToolEnv/0_Build/1_Config/CfgCompiler_Gnuc.mk
	@mkdir -p $(@D)
	@rm -f $(ELF_BIN_MAIN) $(ADDITIONAL_EXE_MAIN) $(MAP_FILE_MAIN) $(LIB_OBJ_MAIN)
	@echo 'Compiling 0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/api/api_lib.c'
	$(CC) $(CC_OPTS) @1_ToolEnv/0_Build/9_Make/cIncludePathList.opt -c $< -o $@ -save-temps=obj -MMD
	@echo ' '

OBJ_FILES_MAIN+= 2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/api/api_msg.o
DEP_FILES_MAIN+= 2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/api/api_msg.d

2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/api/api_msg.o: 0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/api/api_msg.c 1_ToolEnv/0_Build/1_Config/CfgCompiler_Gnuc.mk
	@mkdir -p $(@D)
	@rm -f $(ELF_BIN_MAIN) $(ADDITIONAL_EXE_MAIN) $(MAP_FILE_MAIN) $(LIB_OBJ_MAIN)
	@echo 'Compiling 0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/api/api_msg.c'
	$(CC) $(CC_OPTS) @1_ToolEnv/0_Build/9_Make/cIncludePathList.opt -c $< -o $@ -save-temps=obj -MMD
	@echo ' '

OBJ_FILES_MAIN+= 2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/api/err.o
DEP_FILES_MAIN+= 2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/api/err.d

2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/api/err.o: 0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/api/err.c 1_ToolEnv/0_Build/1_Config/CfgCompiler_Gnuc.mk
	@mkdir -p $(@D)
	@rm -f $(ELF_BIN_MAIN) $(ADDITIONAL_EXE_MAIN) $(MAP_FILE_MAIN) $(LIB_OBJ_MAIN)
	@echo 'Compiling 0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/api/err.c'
	$(CC) $(CC_OPTS) @1_ToolEnv/0_Build/9_Make/cIncludePathList.opt -c $< -o $@ -save-temps=obj -MMD
	@echo ' '

OBJ_FILES_MAIN+= 2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/api/netbuf.o
DEP_FILES_MAIN+= 2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/api/netbuf.d

2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/api/netbuf.o: 0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/api/netbuf.c 1_ToolEnv/0_Build/1_Config/CfgCompiler_Gnuc.mk
	@mkdir -p $(@D)
	@rm -f $(ELF_BIN_MAIN) $(ADDITIONAL_EXE_MAIN) $(MAP_FILE_MAIN) $(LIB_OBJ_MAIN)
	@echo 'Compiling 0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/api/netbuf.c'
	$(CC) $(CC_OPTS) @1_ToolEnv/0_Build/9_Make/cIncludePathList.opt -c $< -o $@ -save-temps=obj -MMD
	@echo ' '

OBJ_FILES_MAIN+= 2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/api/netdb.o
DEP_FILES_MAIN+= 2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/api/netdb.d

2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/api/netdb.o: 0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/api/netdb.c 1_ToolEnv/0_Build/1_Config/CfgCompiler_Gnuc.mk
	@mkdir -p $(@D)
	@rm -f $(ELF_BIN_MAIN) $(ADDITIONAL_EXE_MAIN) $(MAP_FILE_MAIN) $(LIB_OBJ_MAIN)
	@echo 'Compiling 0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/api/netdb.c'
	$(CC) $(CC_OPTS) @1_ToolEnv/0_Build/9_Make/cIncludePathList.opt -c $< -o $@ -save-temps=obj -MMD
	@echo ' '

OBJ_FILES_MAIN+= 2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/api/netifapi.o
DEP_FILES_MAIN+= 2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/api/netifapi.d

2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/api/netifapi.o: 0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/api/netifapi.c 1_ToolEnv/0_Build/1_Config/CfgCompiler_Gnuc.mk
	@mkdir -p $(@D)
	@rm -f $(ELF_BIN_MAIN) $(ADDITIONAL_EXE_MAIN) $(MAP_FILE_MAIN) $(LIB_OBJ_MAIN)
	@echo 'Compiling 0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/api/netifapi.c'
	$(CC) $(CC_OPTS) @1_ToolEnv/0_Build/9_Make/cIncludePathList.opt -c $< -o $@ -save-temps=obj -MMD
	@echo ' '

OBJ_FILES_MAIN+= 2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/api/sockets.o
DEP_FILES_MAIN+= 2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/api/sockets.d

2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/api/sockets.o: 0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/api/sockets.c 1_ToolEnv/0_Build/1_Config/CfgCompiler_Gnuc.mk
	@mkdir -p $(@D)
	@rm -f $(ELF_BIN_MAIN) $(ADDITIONAL_EXE_MAIN) $(MAP_FILE_MAIN) $(LIB_OBJ_MAIN)
	@echo 'Compiling 0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/api/sockets.c'
	$(CC) $(CC_OPTS) @1_ToolEnv/0_Build/9_Make/cIncludePathList.opt -c $< -o $@ -save-temps=obj -MMD
	@echo ' '

OBJ_FILES_MAIN+= 2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/api/tcpip.o
DEP_FILES_MAIN+= 2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/api/tcpip.d

2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/api/tcpip.o: 0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/api/tcpip.c 1_ToolEnv/0_Build/1_Config/CfgCompiler_Gnuc.mk
	@mkdir -p $(@D)
	@rm -f $(ELF_BIN_MAIN) $(ADDITIONAL_EXE_MAIN) $(MAP_FILE_MAIN) $(LIB_OBJ_MAIN)
	@echo 'Compiling 0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/api/tcpip.c'
	$(CC) $(CC_OPTS) @1_ToolEnv/0_Build/9_Make/cIncludePathList.opt -c $< -o $@ -save-temps=obj -MMD
	@echo ' '

