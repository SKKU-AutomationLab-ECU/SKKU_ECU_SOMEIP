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
# Subdirectory make file for 0_Src/0_AppSw/Tricore/Device_Driver
# This is for core type "MAIN" and Gnuc toolchain !
###############################################################################


include 1_ToolEnv/0_Build/9_Make/0_AppSw/Tricore/Device_Driver/Device_Interface/0_AppSw_Device_Interface.mk \
		1_ToolEnv/0_Build/9_Make/0_AppSw/Tricore/Device_Driver/Driver_Communication/0_AppSw_Driver_Communication.mk \
		1_ToolEnv/0_Build/9_Make/0_AppSw/Tricore/Device_Driver/Driver_IO/0_AppSw_Driver_IO.mk \
		1_ToolEnv/0_Build/9_Make/0_AppSw/Tricore/Device_Driver/Driver_System/0_AppSw_Driver_System.mk \
		1_ToolEnv/0_Build/9_Make/0_AppSw/Tricore/Device_Driver/Library/0_AppSw_Library.mk

