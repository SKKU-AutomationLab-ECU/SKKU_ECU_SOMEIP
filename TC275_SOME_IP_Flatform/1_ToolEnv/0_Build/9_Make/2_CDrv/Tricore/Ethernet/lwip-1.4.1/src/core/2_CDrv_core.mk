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
# Subdirectory make file for 0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core
# This is for core type "MAIN" and Gnuc toolchain !
###############################################################################


include 1_ToolEnv/0_Build/9_Make/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/ipv4/2_CDrv_ipv4.mk \
		1_ToolEnv/0_Build/9_Make/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/snmp/2_CDrv_snmp.mk

OBJ_FILES_MAIN+= 2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/def.o
DEP_FILES_MAIN+= 2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/def.d

2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/def.o: 0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/def.c 1_ToolEnv/0_Build/1_Config/CfgCompiler_Gnuc.mk
	@mkdir -p $(@D)
	@rm -f $(ELF_BIN_MAIN) $(ADDITIONAL_EXE_MAIN) $(MAP_FILE_MAIN) $(LIB_OBJ_MAIN)
	@echo 'Compiling 0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/def.c'
	$(CC) $(CC_OPTS) @1_ToolEnv/0_Build/9_Make/cIncludePathList.opt -c $< -o $@ -save-temps=obj -MMD
	@echo ' '

OBJ_FILES_MAIN+= 2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/dhcp.o
DEP_FILES_MAIN+= 2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/dhcp.d

2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/dhcp.o: 0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/dhcp.c 1_ToolEnv/0_Build/1_Config/CfgCompiler_Gnuc.mk
	@mkdir -p $(@D)
	@rm -f $(ELF_BIN_MAIN) $(ADDITIONAL_EXE_MAIN) $(MAP_FILE_MAIN) $(LIB_OBJ_MAIN)
	@echo 'Compiling 0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/dhcp.c'
	$(CC) $(CC_OPTS) @1_ToolEnv/0_Build/9_Make/cIncludePathList.opt -c $< -o $@ -save-temps=obj -MMD
	@echo ' '

OBJ_FILES_MAIN+= 2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/dns.o
DEP_FILES_MAIN+= 2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/dns.d

2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/dns.o: 0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/dns.c 1_ToolEnv/0_Build/1_Config/CfgCompiler_Gnuc.mk
	@mkdir -p $(@D)
	@rm -f $(ELF_BIN_MAIN) $(ADDITIONAL_EXE_MAIN) $(MAP_FILE_MAIN) $(LIB_OBJ_MAIN)
	@echo 'Compiling 0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/dns.c'
	$(CC) $(CC_OPTS) @1_ToolEnv/0_Build/9_Make/cIncludePathList.opt -c $< -o $@ -save-temps=obj -MMD
	@echo ' '

OBJ_FILES_MAIN+= 2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/init.o
DEP_FILES_MAIN+= 2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/init.d

2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/init.o: 0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/init.c 1_ToolEnv/0_Build/1_Config/CfgCompiler_Gnuc.mk
	@mkdir -p $(@D)
	@rm -f $(ELF_BIN_MAIN) $(ADDITIONAL_EXE_MAIN) $(MAP_FILE_MAIN) $(LIB_OBJ_MAIN)
	@echo 'Compiling 0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/init.c'
	$(CC) $(CC_OPTS) @1_ToolEnv/0_Build/9_Make/cIncludePathList.opt -c $< -o $@ -save-temps=obj -MMD
	@echo ' '

OBJ_FILES_MAIN+= 2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/mem.o
DEP_FILES_MAIN+= 2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/mem.d

2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/mem.o: 0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/mem.c 1_ToolEnv/0_Build/1_Config/CfgCompiler_Gnuc.mk
	@mkdir -p $(@D)
	@rm -f $(ELF_BIN_MAIN) $(ADDITIONAL_EXE_MAIN) $(MAP_FILE_MAIN) $(LIB_OBJ_MAIN)
	@echo 'Compiling 0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/mem.c'
	$(CC) $(CC_OPTS) @1_ToolEnv/0_Build/9_Make/cIncludePathList.opt -c $< -o $@ -save-temps=obj -MMD
	@echo ' '

OBJ_FILES_MAIN+= 2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/memp.o
DEP_FILES_MAIN+= 2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/memp.d

2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/memp.o: 0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/memp.c 1_ToolEnv/0_Build/1_Config/CfgCompiler_Gnuc.mk
	@mkdir -p $(@D)
	@rm -f $(ELF_BIN_MAIN) $(ADDITIONAL_EXE_MAIN) $(MAP_FILE_MAIN) $(LIB_OBJ_MAIN)
	@echo 'Compiling 0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/memp.c'
	$(CC) $(CC_OPTS) @1_ToolEnv/0_Build/9_Make/cIncludePathList.opt -c $< -o $@ -save-temps=obj -MMD
	@echo ' '

OBJ_FILES_MAIN+= 2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/netif.o
DEP_FILES_MAIN+= 2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/netif.d

2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/netif.o: 0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/netif.c 1_ToolEnv/0_Build/1_Config/CfgCompiler_Gnuc.mk
	@mkdir -p $(@D)
	@rm -f $(ELF_BIN_MAIN) $(ADDITIONAL_EXE_MAIN) $(MAP_FILE_MAIN) $(LIB_OBJ_MAIN)
	@echo 'Compiling 0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/netif.c'
	$(CC) $(CC_OPTS) @1_ToolEnv/0_Build/9_Make/cIncludePathList.opt -c $< -o $@ -save-temps=obj -MMD
	@echo ' '

OBJ_FILES_MAIN+= 2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/pbuf.o
DEP_FILES_MAIN+= 2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/pbuf.d

2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/pbuf.o: 0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/pbuf.c 1_ToolEnv/0_Build/1_Config/CfgCompiler_Gnuc.mk
	@mkdir -p $(@D)
	@rm -f $(ELF_BIN_MAIN) $(ADDITIONAL_EXE_MAIN) $(MAP_FILE_MAIN) $(LIB_OBJ_MAIN)
	@echo 'Compiling 0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/pbuf.c'
	$(CC) $(CC_OPTS) @1_ToolEnv/0_Build/9_Make/cIncludePathList.opt -c $< -o $@ -save-temps=obj -MMD
	@echo ' '

OBJ_FILES_MAIN+= 2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/raw.o
DEP_FILES_MAIN+= 2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/raw.d

2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/raw.o: 0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/raw.c 1_ToolEnv/0_Build/1_Config/CfgCompiler_Gnuc.mk
	@mkdir -p $(@D)
	@rm -f $(ELF_BIN_MAIN) $(ADDITIONAL_EXE_MAIN) $(MAP_FILE_MAIN) $(LIB_OBJ_MAIN)
	@echo 'Compiling 0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/raw.c'
	$(CC) $(CC_OPTS) @1_ToolEnv/0_Build/9_Make/cIncludePathList.opt -c $< -o $@ -save-temps=obj -MMD
	@echo ' '

OBJ_FILES_MAIN+= 2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/stats.o
DEP_FILES_MAIN+= 2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/stats.d

2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/stats.o: 0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/stats.c 1_ToolEnv/0_Build/1_Config/CfgCompiler_Gnuc.mk
	@mkdir -p $(@D)
	@rm -f $(ELF_BIN_MAIN) $(ADDITIONAL_EXE_MAIN) $(MAP_FILE_MAIN) $(LIB_OBJ_MAIN)
	@echo 'Compiling 0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/stats.c'
	$(CC) $(CC_OPTS) @1_ToolEnv/0_Build/9_Make/cIncludePathList.opt -c $< -o $@ -save-temps=obj -MMD
	@echo ' '

OBJ_FILES_MAIN+= 2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/sys.o
DEP_FILES_MAIN+= 2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/sys.d

2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/sys.o: 0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/sys.c 1_ToolEnv/0_Build/1_Config/CfgCompiler_Gnuc.mk
	@mkdir -p $(@D)
	@rm -f $(ELF_BIN_MAIN) $(ADDITIONAL_EXE_MAIN) $(MAP_FILE_MAIN) $(LIB_OBJ_MAIN)
	@echo 'Compiling 0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/sys.c'
	$(CC) $(CC_OPTS) @1_ToolEnv/0_Build/9_Make/cIncludePathList.opt -c $< -o $@ -save-temps=obj -MMD
	@echo ' '

OBJ_FILES_MAIN+= 2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp.o
DEP_FILES_MAIN+= 2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp.d

2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp.o: 0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp.c 1_ToolEnv/0_Build/1_Config/CfgCompiler_Gnuc.mk
	@mkdir -p $(@D)
	@rm -f $(ELF_BIN_MAIN) $(ADDITIONAL_EXE_MAIN) $(MAP_FILE_MAIN) $(LIB_OBJ_MAIN)
	@echo 'Compiling 0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp.c'
	$(CC) $(CC_OPTS) @1_ToolEnv/0_Build/9_Make/cIncludePathList.opt -c $< -o $@ -save-temps=obj -MMD
	@echo ' '

OBJ_FILES_MAIN+= 2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_in.o
DEP_FILES_MAIN+= 2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_in.d

2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_in.o: 0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_in.c 1_ToolEnv/0_Build/1_Config/CfgCompiler_Gnuc.mk
	@mkdir -p $(@D)
	@rm -f $(ELF_BIN_MAIN) $(ADDITIONAL_EXE_MAIN) $(MAP_FILE_MAIN) $(LIB_OBJ_MAIN)
	@echo 'Compiling 0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_in.c'
	$(CC) $(CC_OPTS) @1_ToolEnv/0_Build/9_Make/cIncludePathList.opt -c $< -o $@ -save-temps=obj -MMD
	@echo ' '

OBJ_FILES_MAIN+= 2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_out.o
DEP_FILES_MAIN+= 2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_out.d

2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_out.o: 0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_out.c 1_ToolEnv/0_Build/1_Config/CfgCompiler_Gnuc.mk
	@mkdir -p $(@D)
	@rm -f $(ELF_BIN_MAIN) $(ADDITIONAL_EXE_MAIN) $(MAP_FILE_MAIN) $(LIB_OBJ_MAIN)
	@echo 'Compiling 0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_out.c'
	$(CC) $(CC_OPTS) @1_ToolEnv/0_Build/9_Make/cIncludePathList.opt -c $< -o $@ -save-temps=obj -MMD
	@echo ' '

OBJ_FILES_MAIN+= 2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/timers.o
DEP_FILES_MAIN+= 2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/timers.d

2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/timers.o: 0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/timers.c 1_ToolEnv/0_Build/1_Config/CfgCompiler_Gnuc.mk
	@mkdir -p $(@D)
	@rm -f $(ELF_BIN_MAIN) $(ADDITIONAL_EXE_MAIN) $(MAP_FILE_MAIN) $(LIB_OBJ_MAIN)
	@echo 'Compiling 0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/timers.c'
	$(CC) $(CC_OPTS) @1_ToolEnv/0_Build/9_Make/cIncludePathList.opt -c $< -o $@ -save-temps=obj -MMD
	@echo ' '

OBJ_FILES_MAIN+= 2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/udp.o
DEP_FILES_MAIN+= 2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/udp.d

2_Out/Gnuc/0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/udp.o: 0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/udp.c 1_ToolEnv/0_Build/1_Config/CfgCompiler_Gnuc.mk
	@mkdir -p $(@D)
	@rm -f $(ELF_BIN_MAIN) $(ADDITIONAL_EXE_MAIN) $(MAP_FILE_MAIN) $(LIB_OBJ_MAIN)
	@echo 'Compiling 0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/udp.c'
	$(CC) $(CC_OPTS) @1_ToolEnv/0_Build/9_Make/cIncludePathList.opt -c $< -o $@ -save-temps=obj -MMD
	@echo ' '

