# 1 "0_Src/0_AppSw/Tricore/Ethernet/apps/SomeIP/g_endian.c"
# 1 "D:\\00.Workspace\\TC275\\SKKU_ECU_SOMEIP\\TC275_SOME_IP_Flatform//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "0_Src/0_AppSw/Tricore/Ethernet/apps/SomeIP/g_endian.c"







# 1 "0_Src/0_AppSw/Tricore/Ethernet/apps/SomeIP/g_endian.h" 1
# 11 "0_Src/0_AppSw/Tricore/Ethernet/apps/SomeIP/g_endian.h"
# 1 "./0_Src/4_McHal/Tricore/Cpu/Std/Platform_Types.h" 1
# 88 "./0_Src/4_McHal/Tricore/Cpu/Std/Platform_Types.h"
typedef signed char sint8;
typedef unsigned char uint8;
typedef signed short sint16;
typedef unsigned short uint16;
typedef signed long sint32;
typedef unsigned long uint32;
typedef float float32;
typedef double float64;

typedef unsigned long uint8_least;
typedef unsigned long uint16_least;
typedef unsigned long uint32_least;
typedef signed long sint8_least;
typedef signed long sint16_least;
typedef signed long sint32_least;

typedef unsigned char boolean;
# 12 "0_Src/0_AppSw/Tricore/Ethernet/apps/SomeIP/g_endian.h" 2



uint16 swap_uint16(uint16 val);

uint32 swap_uint32(uint32 val);
# 9 "0_Src/0_AppSw/Tricore/Ethernet/apps/SomeIP/g_endian.c" 2


uint16 swap_uint16(uint16 val)
{
    return (uint16)(val << 8) | (val >> 8);
}

uint32 swap_uint32(uint32 val)
{
    val = ((val << 8) & 0xFF00FF00) | ((val >> 8) & 0xFF00FF);
    return (val << 16) | (val >> 16);
}
