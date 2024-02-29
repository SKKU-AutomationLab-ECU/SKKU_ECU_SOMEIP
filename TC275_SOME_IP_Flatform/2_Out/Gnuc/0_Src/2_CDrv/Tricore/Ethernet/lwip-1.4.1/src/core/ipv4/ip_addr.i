# 1 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/ipv4/ip_addr.c"
# 1 "D:\\00.Workspace\\TC275\\SKKU_ECU_SOMEIP\\TC275_SOME_IP_Flatform//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/ipv4/ip_addr.c"
# 39 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/ipv4/ip_addr.c"
# 1 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/opt.h" 1
# 45 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/opt.h"
# 1 "./0_Src/0_AppSw/Config/Common/lwipopts.h" 1
# 46 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/opt.h" 2
# 1 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/debug.h" 1
# 35 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/debug.h"
# 1 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/arch.h" 1
# 43 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/arch.h"
# 1 "./0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/port/include/arch/cc.h" 1



# 1 "./0_Src/4_McHal/Tricore/Cpu/Std/Ifx_Types.h" 1
# 29 "./0_Src/4_McHal/Tricore/Cpu/Std/Ifx_Types.h"
# 1 "./0_Src/1_SrvSw/Tricore/Compilers/Compilers.h" 1
# 29 "./0_Src/1_SrvSw/Tricore/Compilers/Compilers.h"
# 1 "./0_Src/0_AppSw/Config/Common/Ifx_Cfg.h" 1
# 30 "./0_Src/1_SrvSw/Tricore/Compilers/Compilers.h" 2
# 58 "./0_Src/1_SrvSw/Tricore/Compilers/Compilers.h"
# 1 "./0_Src/1_SrvSw/Tricore/Compilers/CompilerGnuc.h" 1
# 29 "./0_Src/1_SrvSw/Tricore/Compilers/CompilerGnuc.h"
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\lib\\gcc\\tricore\\4.9.4\\include\\stddef.h" 1 3 4
# 147 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\lib\\gcc\\tricore\\4.9.4\\include\\stddef.h" 3 4
typedef long int ptrdiff_t;
# 212 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\lib\\gcc\\tricore\\4.9.4\\include\\stddef.h" 3 4
typedef long unsigned int size_t;
# 324 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\lib\\gcc\\tricore\\4.9.4\\include\\stddef.h" 3 4
typedef int wchar_t;
# 30 "./0_Src/1_SrvSw/Tricore/Compilers/CompilerGnuc.h" 2
# 59 "./0_Src/1_SrvSw/Tricore/Compilers/Compilers.h" 2
# 89 "./0_Src/1_SrvSw/Tricore/Compilers/Compilers.h"
void Ifx_C_Init(void);
# 30 "./0_Src/4_McHal/Tricore/Cpu/Std/Ifx_Types.h" 2
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
# 31 "./0_Src/4_McHal/Tricore/Cpu/Std/Ifx_Types.h" 2





typedef signed long long sint64;
typedef unsigned long long uint64;

typedef const char *pchar;
typedef void *pvoid;
typedef volatile void *vvoid;

typedef sint64 Ifx_TickTime;
# 56 "./0_Src/4_McHal/Tricore/Cpu/Std/Ifx_Types.h"
typedef sint16 Ifx_SizeT;



typedef struct
{
    void *base;
    uint16 index;
    uint16 length;
} Ifx_CircularBuffer;

typedef uint16 Ifx_Priority;
typedef uint32 Ifx_TimerValue;
typedef sint32 Ifx_SignedTimerVal;

typedef pvoid Ifx_AddressValue;

typedef struct
{
    uint16 priority;
    uint16 provider;
} Ifx_IsrSetting;


typedef enum
{
    Ifx_ActiveState_low = 0,
    Ifx_ActiveState_high = 1
} Ifx_ActiveState;

typedef enum
{
    Ifx_ParityMode_even = 0,
    Ifx_ParityMode_odd = 1
} Ifx_ParityMode;



typedef enum
{
    Ifx_RxSel_a,
    Ifx_RxSel_b,
    Ifx_RxSel_c,
    Ifx_RxSel_d,
    Ifx_RxSel_e,
    Ifx_RxSel_f,
    Ifx_RxSel_g,
    Ifx_RxSel_h
} Ifx_RxSel;


typedef struct
{
    volatile void *module;
    sint32 index;
} IfxModule_IndexMap;

typedef struct
{
    Ifx_TickTime timestamp;
    uint8 data;
}Ifx_DataBufferMode_TimeStampSingle;
# 128 "./0_Src/4_McHal/Tricore/Cpu/Std/Ifx_Types.h"
typedef enum
{
    Ifx_DataBufferMode_normal = 0,
    Ifx_DataBufferMode_timeStampSingle,

}Ifx_DataBufferMode;







typedef enum
{
    Ifx_Pwm_Mode_centerAligned = 0,
    Ifx_Pwm_Mode_centerAlignedInverted = 1,
    Ifx_Pwm_Mode_leftAligned = 2,
    Ifx_Pwm_Mode_rightAligned = 3,
    Ifx_Pwm_Mode_off = 4,
    Ifx_Pwm_Mode_init = 5,
    Ifx_Pwm_Mode_count = 6
} Ifx_Pwm_Mode;
# 159 "./0_Src/4_McHal/Tricore/Cpu/Std/Ifx_Types.h"
# 1 "./0_Src/4_McHal/Tricore/Cpu/Std/Ifx_TypesGnuc.h" 1
# 27 "./0_Src/4_McHal/Tricore/Cpu/Std/Ifx_TypesGnuc.h"
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\machine\\cint.h" 1 3
# 24 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\machine\\cint.h" 3
extern void _init_vectab (void);
extern void _init_hnd_chain (void);






extern int _install_int_handler (int intno, void (*handler) (int), int arg);







extern void *_install_chained_int_handler (int intno, void (*handler) (int),
        int arg);





extern int _remove_chained_int_handler (int intno, void *ptr);





extern int _install_trap_handler (int trapno, void (*handler) (int));
# 28 "./0_Src/4_McHal/Tricore/Cpu/Std/Ifx_TypesGnuc.h" 2


typedef long fract;
typedef short sfract;
typedef long long laccum;
typedef long __packb;
typedef unsigned long __upackb;
typedef long __packhw;
typedef unsigned long __upackhw;
# 160 "./0_Src/4_McHal/Tricore/Cpu/Std/Ifx_Types.h" 2
# 5 "./0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/port/include/arch/cc.h" 2


typedef uint8 u8_t;
typedef uint16 u16_t;
typedef uint32 u32_t;
typedef sint8 s8_t;
typedef sint16 s16_t;
typedef sint32 s32_t;

typedef u32_t mem_ptr_t;
# 44 "./0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/port/include/arch/cc.h"
s8_t Ifx_Lwip_printf(const char *s, ...);
# 44 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/arch.h" 2
# 208 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/arch.h"
extern int errno;
# 36 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/debug.h" 2
# 1 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/opt.h" 1
# 37 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/debug.h" 2
# 47 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/opt.h" 2
# 40 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/ipv4/ip_addr.c" 2
# 1 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/ipv4/lwip/ip_addr.h" 1
# 36 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/ipv4/lwip/ip_addr.h"
# 1 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/def.h" 1
# 99 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/def.h"
u16_t lwip_htons(u16_t x);
u16_t lwip_ntohs(u16_t x);
u32_t lwip_htonl(u32_t x);
u32_t lwip_ntohl(u32_t x);
# 37 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/ipv4/lwip/ip_addr.h" 2







struct ip_addr {
  u32_t addr;
};







struct ip_addr_packed {
  u32_t addr;
} __attribute__ ((__packed__));







typedef struct ip_addr ip_addr_t;
typedef struct ip_addr_packed ip_addr_p_t;
# 74 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/ipv4/lwip/ip_addr.h"

struct ip_addr2 {
  u16_t addrw[2];
} __attribute__ ((__packed__));






struct netif;

extern const ip_addr_t ip_addr_any;
extern const ip_addr_t ip_addr_broadcast;
# 203 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/ipv4/lwip/ip_addr.h"
u8_t ip4_addr_isbroadcast(u32_t addr, const struct netif *netif);


u8_t ip4_addr_netmask_valid(u32_t netmask);
# 234 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/ipv4/lwip/ip_addr.h"
u32_t ipaddr_addr(const char *cp);
int ipaddr_aton(const char *cp, ip_addr_t *addr);

char *ipaddr_ntoa(const ip_addr_t *addr);
char *ipaddr_ntoa_r(const ip_addr_t *addr, char *buf, int buflen);
# 41 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/ipv4/ip_addr.c" 2
# 1 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/netif.h" 1
# 39 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/netif.h"
# 1 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/err.h" 1
# 47 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/err.h"
typedef s8_t err_t;
# 76 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/err.h"
extern const char *lwip_strerr(err_t err);
# 40 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/netif.h" 2




# 1 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/pbuf.h" 1
# 50 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/pbuf.h"
typedef enum {
  PBUF_TRANSPORT,
  PBUF_IP,
  PBUF_LINK,
  PBUF_RAW
} pbuf_layer;

typedef enum {
  PBUF_RAM,
  PBUF_ROM,
  PBUF_REF,
  PBUF_POOL
} pbuf_type;
# 79 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/pbuf.h"
struct pbuf {

  struct pbuf *next;


  void *payload;
# 93 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/pbuf.h"
  u16_t tot_len;


  u16_t len;


  u8_t type;


  u8_t flags;






  u16_t ref;
};



typedef void (*pbuf_free_custom_fn)(struct pbuf *p);


struct pbuf_custom {

  struct pbuf pbuf;

  pbuf_free_custom_fn custom_free_function;
};
# 131 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/pbuf.h"
extern volatile u8_t pbuf_free_ooseq_pending;
void pbuf_free_ooseq();
# 146 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/pbuf.h"
struct pbuf *pbuf_alloc(pbuf_layer l, u16_t length, pbuf_type type);

struct pbuf *pbuf_alloced_custom(pbuf_layer l, u16_t length, pbuf_type type,
                                 struct pbuf_custom *p, void *payload_mem,
                                 u16_t payload_mem_len);

void pbuf_realloc(struct pbuf *p, u16_t size);
u8_t pbuf_header(struct pbuf *p, s16_t header_size);
void pbuf_ref(struct pbuf *p);
u8_t pbuf_free(struct pbuf *p);
u8_t pbuf_clen(struct pbuf *p);
void pbuf_cat(struct pbuf *head, struct pbuf *tail);
void pbuf_chain(struct pbuf *head, struct pbuf *tail);
struct pbuf *pbuf_dechain(struct pbuf *p);
err_t pbuf_copy(struct pbuf *p_to, struct pbuf *p_from);
u16_t pbuf_copy_partial(struct pbuf *p, void *dataptr, u16_t len, u16_t offset);
err_t pbuf_take(struct pbuf *buf, const void *dataptr, u16_t len);
struct pbuf *pbuf_coalesce(struct pbuf *p, pbuf_layer layer);

err_t pbuf_fill_chksum(struct pbuf *p, u16_t start_offset, const void *dataptr,
                       u16_t len, u16_t *chksum);


u8_t pbuf_get_at(struct pbuf* p, u16_t offset);
u16_t pbuf_memcmp(struct pbuf* p, u16_t offset, const void* s2, u16_t n);
u16_t pbuf_memfind(struct pbuf* p, const void* mem, u16_t mem_len, u16_t start_offset);
u16_t pbuf_strstr(struct pbuf* p, const char* substr);
# 45 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/netif.h" 2
# 102 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/netif.h"
typedef err_t (*netif_init_fn)(struct netif *netif);






typedef err_t (*netif_input_fn)(struct pbuf *p, struct netif *inp);
# 118 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/netif.h"
typedef err_t (*netif_output_fn)(struct netif *netif, struct pbuf *p,
       const ip_addr_t *ipaddr);






typedef err_t (*netif_linkoutput_fn)(struct netif *netif, struct pbuf *p);

typedef void (*netif_status_callback_fn)(struct netif *netif);

typedef err_t (*netif_igmp_mac_filter_fn)(struct netif *netif,
       ip_addr_t *group, u8_t action);




struct netif {

  struct netif *next;


  ip_addr_t ip_addr;
  ip_addr_t netmask;
  ip_addr_t gw;



  netif_input_fn input;



  netif_output_fn output;



  netif_linkoutput_fn linkoutput;
# 172 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/netif.h"
  void *state;
# 186 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/netif.h"
  u16_t mtu;

  u8_t hwaddr_len;

  u8_t hwaddr[6U];

  u8_t flags;

  char name[2];

  u8_t num;
# 230 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/netif.h"
};
# 253 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/netif.h"
extern struct netif *netif_list;

extern struct netif *netif_default;

void netif_init(void);

struct netif *netif_add(struct netif *netif, const ip_addr_t *ipaddr, const ip_addr_t *netmask,
        const ip_addr_t *gw, void *state, netif_init_fn init, netif_input_fn input);

void
netif_set_addr(struct netif *netif, const ip_addr_t *ipaddr, const ip_addr_t *netmask,
        const ip_addr_t *gw);
void netif_remove(struct netif * netif);





struct netif *netif_find(char *name);

void netif_set_default(struct netif *netif);

void netif_set_ipaddr(struct netif *netif, const ip_addr_t *ipaddr);
void netif_set_netmask(struct netif *netif, const ip_addr_t *netmask);
void netif_set_gw(struct netif *netif, const ip_addr_t *gw);

void netif_set_up(struct netif *netif);
void netif_set_down(struct netif *netif);
# 291 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/netif.h"
void netif_set_link_up(struct netif *netif);
void netif_set_link_down(struct netif *netif);
# 42 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/ipv4/ip_addr.c" 2


const ip_addr_t ip_addr_any = { ((u32_t)0x00000000UL) };
const ip_addr_t ip_addr_broadcast = { ((u32_t)0xffffffffUL) };
# 54 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/ipv4/ip_addr.c"
u8_t
ip4_addr_isbroadcast(u32_t addr, const struct netif *netif)
{
  ip_addr_t ipaddr;
  ((&ipaddr)->addr = (addr));


  if ((~addr == ((u32_t)0x00000000UL)) ||
      (addr == ((u32_t)0x00000000UL))) {
    return 1;

  } else if ((netif->flags & 0x02U) == 0) {


    return 0;

  } else if (addr == ((&netif->ip_addr)->addr)) {
    return 0;

  } else if ((((&ipaddr)->addr & (&(netif->netmask))->addr) == ((&(netif->ip_addr))->addr & (&(netif->netmask))->addr))

          && ((addr & ~((&netif->netmask)->addr)) ==
           (((u32_t)0xffffffffUL) & ~((&netif->netmask)->addr)))) {

    return 1;
  } else {
    return 0;
  }
}






u8_t
ip4_addr_netmask_valid(u32_t netmask)
{
  u32_t mask;
  u32_t nm_hostorder = lwip_htonl(netmask);


  for (mask = 1UL << 31 ; mask != 0; mask >>= 1) {
    if ((nm_hostorder & mask) == 0) {
      break;
    }
  }

  for (; mask != 0; mask >>= 1) {
    if ((nm_hostorder & mask) != 0) {

      return 0;
    }
  }

  return 1;
}
# 129 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/ipv4/ip_addr.c"
u32_t
ipaddr_addr(const char *cp)
{
  ip_addr_t val;

  if (ipaddr_aton(cp, &val)) {
    return ((&val)->addr);
  }
  return (((u32_t)0xffffffffUL));
}
# 151 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/ipv4/ip_addr.c"
int
ipaddr_aton(const char *cp, ip_addr_t *addr)
{
  u32_t val;
  u8_t base;
  char c;
  u32_t parts[4];
  u32_t *pp = parts;

  c = *cp;
  for (;;) {





    if (!((u8_t)c >= '0' && (u8_t)c <= '9'))
      return (0);
    val = 0;
    base = 10;
    if (c == '0') {
      c = *++cp;
      if (c == 'x' || c == 'X') {
        base = 16;
        c = *++cp;
      } else
        base = 8;
    }
    for (;;) {
      if (((u8_t)c >= '0' && (u8_t)c <= '9')) {
        val = (val * base) + (int)(c - '0');
        c = *++cp;
      } else if (base == 16 && (((u8_t)c >= '0' && (u8_t)c <= '9') || ((u8_t)c >= 'a' && (u8_t)c <= 'f') || ((u8_t)c >= 'A' && (u8_t)c <= 'F'))) {
        val = (val << 4) | (int)(c + 10 - (((u8_t)c >= 'a' && (u8_t)c <= 'z') ? 'a' : 'A'));
        c = *++cp;
      } else
        break;
    }
    if (c == '.') {






      if (pp >= parts + 3) {
        return (0);
      }
      *pp++ = val;
      c = *++cp;
    } else
      break;
  }



  if (c != '\0' && !(c == ' ' || c == '\f' || c == '\n' || c == '\r' || c == '\t' || c == '\v')) {
    return (0);
  }




  switch (pp - parts + 1) {

  case 0:
    return (0);

  case 1:
    break;

  case 2:
    if (val > 0xffffffUL) {
      return (0);
    }
    val |= parts[0] << 24;
    break;

  case 3:
    if (val > 0xffff) {
      return (0);
    }
    val |= (parts[0] << 24) | (parts[1] << 16);
    break;

  case 4:
    if (val > 0xff) {
      return (0);
    }
    val |= (parts[0] << 24) | (parts[1] << 16) | (parts[2] << 8);
    break;
  default:
    do { if(!(0)) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "unhandled", 243, "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/ipv4/ip_addr.c"); ; } while(0);
    break;
  }
  if (addr) {
    ((addr)->addr = (lwip_htonl(val)));
  }
  return (1);
}
# 260 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/ipv4/ip_addr.c"
char *
ipaddr_ntoa(const ip_addr_t *addr)
{
  static char str[16];
  return ipaddr_ntoa_r(addr, str, 16);
}
# 276 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/ipv4/ip_addr.c"
char *ipaddr_ntoa_r(const ip_addr_t *addr, char *buf, int buflen)
{
  u32_t s_addr;
  char inv[3];
  char *rp;
  u8_t *ap;
  u8_t rem;
  u8_t n;
  u8_t i;
  int len = 0;

  s_addr = ((addr)->addr);

  rp = buf;
  ap = (u8_t *)&s_addr;
  for(n = 0; n < 4; n++) {
    i = 0;
    do {
      rem = *ap % (u8_t)10;
      *ap /= (u8_t)10;
      inv[i++] = '0' + rem;
    } while(*ap);
    while(i--) {
      if (len++ >= buflen) {
        return ((void *)0);
      }
      *rp++ = inv[i];
    }
    if (len++ >= buflen) {
      return ((void *)0);
    }
    *rp++ = '.';
    ap++;
  }
  *--rp = 0;
  return buf;
}
