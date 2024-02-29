# 1 "0_Src/0_AppSw/Tricore/System/System_Configuration.c"
# 1 "D:\\00.Workspace\\TC275\\SKKU_ECU_SOMEIP\\TC275_SOME_IP_Flatform//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "0_Src/0_AppSw/Tricore/System/System_Configuration.c"
# 11 "0_Src/0_AppSw/Tricore/System/System_Configuration.c"
# 1 "0_Src/0_AppSw/Tricore/System/System_Configuration.h" 1
# 13 "0_Src/0_AppSw/Tricore/System/System_Configuration.h"
void Configuration_System(void);
# 12 "0_Src/0_AppSw/Tricore/System/System_Configuration.c" 2

void Configuration_System(void)
{
 printf_SysLog("Configuring the MultiCore\t-> Start...\r\n");
 Initialize_Task_Cores();






 printf_SysLog("Configuring the MultiCore\t -> Done.\r\n");
}
