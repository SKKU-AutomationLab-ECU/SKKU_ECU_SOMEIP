# 1 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp.c"
# 1 "D:\\00.Workspace\\TC275\\SKKU_ECU_SOMEIP\\TC275_SOME_IP_Flatform//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp.c"
# 43 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp.c"
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
# 44 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp.c" 2



# 1 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/def.h" 1
# 99 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/def.h"
u16_t lwip_htons(u16_t x);
u16_t lwip_ntohs(u16_t x);
u32_t lwip_htonl(u32_t x);
u32_t lwip_ntohl(u32_t x);
# 48 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp.c" 2
# 1 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/mem.h" 1
# 76 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/mem.h"
typedef u16_t mem_size_t;
# 88 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/mem.h"
void mem_init(void);
void *mem_trim(void *mem, mem_size_t size);

void *mem_malloc(mem_size_t size);
void *mem_calloc(mem_size_t count, mem_size_t size);
void mem_free(void *mem);
# 49 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp.c" 2
# 1 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/memp.h" 1
# 43 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/memp.h"
typedef enum {

# 1 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/memp_std.h" 1
# 34 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/memp_std.h"
MEMP_RAW_PCB,



MEMP_UDP_PCB,



MEMP_TCP_PCB,
MEMP_TCP_PCB_LISTEN,
MEMP_TCP_SEG,



MEMP_REASSDATA,


MEMP_FRAG_PBUF,
# 75 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/memp_std.h"
MEMP_SYS_TIMEOUT,
# 102 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/memp_std.h"
MEMP_PBUF,
MEMP_PBUF_POOL,
# 46 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/memp.h" 2
  MEMP_MAX
} memp_t;
# 100 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/memp.h"
void memp_init(void);





void *memp_malloc(memp_t type);

void memp_free(memp_t type, void *mem);
# 50 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp.c" 2
# 1 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/snmp.h" 1
# 42 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/snmp.h"
# 1 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/ipv4/lwip/ip_addr.h" 1
# 44 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/ipv4/lwip/ip_addr.h"
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
# 43 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/snmp.h" 2

struct udp_pcb;
struct netif;




enum snmp_ifType {
  snmp_ifType_other=1,
  snmp_ifType_regular1822,
  snmp_ifType_hdh1822,
  snmp_ifType_ddn_x25,
  snmp_ifType_rfc877_x25,
  snmp_ifType_ethernet_csmacd,
  snmp_ifType_iso88023_csmacd,
  snmp_ifType_iso88024_tokenBus,
  snmp_ifType_iso88025_tokenRing,
  snmp_ifType_iso88026_man,
  snmp_ifType_starLan,
  snmp_ifType_proteon_10Mbit,
  snmp_ifType_proteon_80Mbit,
  snmp_ifType_hyperchannel,
  snmp_ifType_fddi,
  snmp_ifType_lapb,
  snmp_ifType_sdlc,
  snmp_ifType_ds1,
  snmp_ifType_e1,
  snmp_ifType_basicISDN,
  snmp_ifType_primaryISDN,
  snmp_ifType_propPointToPointSerial,
  snmp_ifType_ppp,
  snmp_ifType_softwareLoopback,
  snmp_ifType_eon,
  snmp_ifType_ethernet_3Mbit,
  snmp_ifType_nsip,
  snmp_ifType_slip,
  snmp_ifType_ultra,
  snmp_ifType_ds3,
  snmp_ifType_sip,
  snmp_ifType_frame_relay
};
# 51 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp.c" 2
# 1 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/tcp.h" 1
# 40 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/tcp.h"
# 1 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/pbuf.h" 1
# 37 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/pbuf.h"
# 1 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/err.h" 1
# 47 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/err.h"
typedef s8_t err_t;
# 76 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/err.h"
extern const char *lwip_strerr(err_t err);
# 38 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/pbuf.h" 2
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
# 41 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/tcp.h" 2
# 1 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/ipv4/lwip/ip.h" 1
# 41 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/ipv4/lwip/ip.h"
# 1 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/netif.h" 1
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
# 42 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/ipv4/lwip/ip.h" 2
# 89 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/ipv4/lwip/ip.h"
struct ip_pcb {

  ip_addr_t local_ip; ip_addr_t remote_ip; u8_t so_options; u8_t tos; u8_t ttl ;
};
# 115 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/ipv4/lwip/ip.h"

struct ip_hdr {

  u8_t _v_hl;

  u8_t _tos;

  u16_t _len;

  u16_t _id;

  u16_t _offset;





  u8_t _ttl;

  u8_t _proto;

  u16_t _chksum;

  ip_addr_p_t src;
  ip_addr_p_t dest;
} __attribute__ ((__packed__));

# 166 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/ipv4/lwip/ip.h"
extern struct netif *current_netif;

extern const struct ip_hdr *current_header;

extern ip_addr_t current_iphdr_src;

extern ip_addr_t current_iphdr_dest;


struct netif *ip_route(ip_addr_t *dest);
err_t ip_input(struct pbuf *p, struct netif *inp);
err_t ip_output(struct pbuf *p, ip_addr_t *src, ip_addr_t *dest,
       u8_t ttl, u8_t tos, u8_t proto);
err_t ip_output_if(struct pbuf *p, ip_addr_t *src, const ip_addr_t *dest,
       u8_t ttl, u8_t tos, u8_t proto,
       struct netif *netif);
# 42 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/tcp.h" 2
# 1 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/ipv4/lwip/icmp.h" 1
# 56 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/ipv4/lwip/icmp.h"
enum icmp_dur_type {
  ICMP_DUR_NET = 0,
  ICMP_DUR_HOST = 1,
  ICMP_DUR_PROTO = 2,
  ICMP_DUR_PORT = 3,
  ICMP_DUR_FRAG = 4,
  ICMP_DUR_SR = 5
};

enum icmp_te_type {
  ICMP_TE_TTL = 0,
  ICMP_TE_FRAG = 1
};
# 78 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/ipv4/lwip/icmp.h"

struct icmp_echo_hdr {
  u8_t type;
  u8_t code;
  u16_t chksum;
  u16_t id;
  u16_t seqno;
} __attribute__ ((__packed__));

# 101 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/ipv4/lwip/icmp.h"
void icmp_input(struct pbuf *p, struct netif *inp);
void icmp_dest_unreach(struct pbuf *p, enum icmp_dur_type t);
void icmp_time_exceeded(struct pbuf *p, enum icmp_te_type t);
# 43 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/tcp.h" 2






struct tcp_pcb;
# 60 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/tcp.h"
typedef err_t (*tcp_accept_fn)(void *arg, struct tcp_pcb *newpcb, err_t err);
# 72 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/tcp.h"
typedef err_t (*tcp_recv_fn)(void *arg, struct tcp_pcb *tpcb,
                             struct pbuf *p, err_t err);
# 86 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/tcp.h"
typedef err_t (*tcp_sent_fn)(void *arg, struct tcp_pcb *tpcb,
                              u16_t len);
# 98 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/tcp.h"
typedef err_t (*tcp_poll_fn)(void *arg, struct tcp_pcb *tpcb);
# 110 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/tcp.h"
typedef void (*tcp_err_fn)(void *arg, err_t err);
# 124 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/tcp.h"
typedef err_t (*tcp_connected_fn)(void *arg, struct tcp_pcb *tpcb, err_t err);

enum tcp_state {
  CLOSED = 0,
  LISTEN = 1,
  SYN_SENT = 2,
  SYN_RCVD = 3,
  ESTABLISHED = 4,
  FIN_WAIT_1 = 5,
  FIN_WAIT_2 = 6,
  CLOSE_WAIT = 7,
  CLOSING = 8,
  LAST_ACK = 9,
  TIME_WAIT = 10
};
# 168 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/tcp.h"
struct tcp_pcb {

  ip_addr_t local_ip; ip_addr_t remote_ip; u8_t so_options; u8_t tos; u8_t ttl ;

  struct tcp_pcb *next; void *callback_arg; tcp_accept_fn accept; enum tcp_state state; u8_t prio; u16_t local_port;


  u16_t remote_port;

  u8_t flags;
# 191 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/tcp.h"
  u8_t polltmr, pollinterval;
  u8_t last_timer;
  u32_t tmr;


  u32_t rcv_nxt;
  u16_t rcv_wnd;
  u16_t rcv_ann_wnd;
  u32_t rcv_ann_right_edge;


  s16_t rtime;

  u16_t mss;


  u32_t rttest;
  u32_t rtseq;
  s16_t sa, sv;

  s16_t rto;
  u8_t nrtx;


  u8_t dupacks;
  u32_t lastack;


  u16_t cwnd;
  u16_t ssthresh;


  u32_t snd_nxt;
  u32_t snd_wl1, snd_wl2;

  u32_t snd_lbb;
  u16_t snd_wnd;
  u16_t snd_wnd_max;

  u16_t acked;

  u16_t snd_buf;

  u16_t snd_queuelen;



  u16_t unsent_oversize;



  struct tcp_seg *unsent;
  struct tcp_seg *unacked;

  struct tcp_seg *ooseq;


  struct pbuf *refused_data;



  tcp_sent_fn sent;

  tcp_recv_fn recv;

  tcp_connected_fn connected;

  tcp_poll_fn poll;

  tcp_err_fn errf;
# 269 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/tcp.h"
  u32_t keep_idle;






  u8_t persist_cnt;

  u8_t persist_backoff;


  u8_t keep_cnt_sent;
};

struct tcp_pcb_listen {

  ip_addr_t local_ip; ip_addr_t remote_ip; u8_t so_options; u8_t tos; u8_t ttl ;

  struct tcp_pcb_listen *next; void *callback_arg; tcp_accept_fn accept; enum tcp_state state; u8_t prio; u16_t local_port;


  u8_t backlog;
  u8_t accepts_pending;

};
# 316 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/tcp.h"
struct tcp_pcb * tcp_new (void);

void tcp_arg (struct tcp_pcb *pcb, void *arg);
void tcp_accept (struct tcp_pcb *pcb, tcp_accept_fn accept);
void tcp_recv (struct tcp_pcb *pcb, tcp_recv_fn recv);
void tcp_sent (struct tcp_pcb *pcb, tcp_sent_fn sent);
void tcp_poll (struct tcp_pcb *pcb, tcp_poll_fn poll, u8_t interval);
void tcp_err (struct tcp_pcb *pcb, tcp_err_fn err);
# 341 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/tcp.h"
void tcp_recved (struct tcp_pcb *pcb, u16_t len);
err_t tcp_bind (struct tcp_pcb *pcb, ip_addr_t *ipaddr,
                              u16_t port);
err_t tcp_connect (struct tcp_pcb *pcb, ip_addr_t *ipaddr,
                              u16_t port, tcp_connected_fn connected);

struct tcp_pcb * tcp_listen_with_backlog(struct tcp_pcb *pcb, u8_t backlog);


void tcp_abort (struct tcp_pcb *pcb);
err_t tcp_close (struct tcp_pcb *pcb);
err_t tcp_shutdown(struct tcp_pcb *pcb, int shut_rx, int shut_tx);





err_t tcp_write (struct tcp_pcb *pcb, const void *dataptr, u16_t len,
                              u8_t apiflags);

void tcp_setprio (struct tcp_pcb *pcb, u8_t prio);





err_t tcp_output (struct tcp_pcb *pcb);


const char* tcp_debug_state_str(enum tcp_state s);
# 52 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp.c" 2
# 1 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/tcp_impl.h" 1
# 53 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/tcp_impl.h"
void tcp_init (void);
void tcp_tmr (void);




void tcp_slowtmr (void);
void tcp_fasttmr (void);



void tcp_input (struct pbuf *p, struct netif *inp);

struct tcp_pcb * tcp_alloc (u8_t prio);
void tcp_abandon (struct tcp_pcb *pcb, int reset);
err_t tcp_send_empty_ack(struct tcp_pcb *pcb);
void tcp_rexmit (struct tcp_pcb *pcb);
void tcp_rexmit_rto (struct tcp_pcb *pcb);
void tcp_rexmit_fast (struct tcp_pcb *pcb);
u32_t tcp_update_rcv_ann_wnd(struct tcp_pcb *pcb);
err_t tcp_process_refused_data(struct tcp_pcb *pcb);
# 158 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/tcp_impl.h"

struct tcp_hdr {
  u16_t src;
  u16_t dest;
  u32_t seqno;
  u32_t ackno;
  u16_t _hdrlen_rsvd_flags;
  u16_t wnd;
  u16_t chksum;
  u16_t urgp;
} __attribute__ ((__packed__));

# 277 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/tcp_impl.h"
struct tcp_seg {
  struct tcp_seg *next;
  struct pbuf *p;
  u16_t len;

  u16_t oversize_left;




  u16_t chksum;
  u8_t chksum_swapped;

  u8_t flags;




  struct tcp_hdr *tcphdr;
};
# 306 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/tcp_impl.h"
extern struct tcp_pcb *tcp_input_pcb;
extern u32_t tcp_ticks;
extern u8_t tcp_active_pcbs_changed;


union tcp_listen_pcbs_t {
  struct tcp_pcb_listen *listen_pcbs;
  struct tcp_pcb *pcbs;
};
extern struct tcp_pcb *tcp_bound_pcbs;
extern union tcp_listen_pcbs_t tcp_listen_pcbs;
extern struct tcp_pcb *tcp_active_pcbs;


extern struct tcp_pcb *tcp_tw_pcbs;

extern struct tcp_pcb *tcp_tmp_pcb;
# 415 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/tcp_impl.h"
struct tcp_pcb *tcp_pcb_copy(struct tcp_pcb *pcb);
void tcp_pcb_purge(struct tcp_pcb *pcb);
void tcp_pcb_remove(struct tcp_pcb **pcblist, struct tcp_pcb *pcb);

void tcp_segs_free(struct tcp_seg *seg);
void tcp_seg_free(struct tcp_seg *seg);
struct tcp_seg *tcp_seg_copy(struct tcp_seg *seg);
# 439 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/tcp_impl.h"
err_t tcp_send_fin(struct tcp_pcb *pcb);
err_t tcp_enqueue_flags(struct tcp_pcb *pcb, u8_t flags);

void tcp_rexmit_seg(struct tcp_pcb *pcb, struct tcp_seg *seg);

void tcp_rst(u32_t seqno, u32_t ackno,
       ip_addr_t *local_ip, ip_addr_t *remote_ip,
       u16_t local_port, u16_t remote_port);

u32_t tcp_next_iss(void);

void tcp_keepalive(struct tcp_pcb *pcb);
void tcp_zero_window_probe(struct tcp_pcb *pcb);


u16_t tcp_eff_send_mss(u16_t sendmss, ip_addr_t *addr);



err_t tcp_recv_null(void *arg, struct tcp_pcb *pcb, struct pbuf *p, err_t err);
# 477 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/tcp_impl.h"
void tcp_timer_needed(void);
# 53 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp.c" 2

# 1 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/stats.h" 1
# 58 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/stats.h"
struct stats_proto {
  u16_t xmit;
  u16_t recv;
  u16_t fw;
  u16_t drop;
  u16_t chkerr;
  u16_t lenerr;
  u16_t memerr;
  u16_t rterr;
  u16_t proterr;
  u16_t opterr;
  u16_t err;
  u16_t cachehit;
};

struct stats_igmp {
  u16_t xmit;
  u16_t recv;
  u16_t drop;
  u16_t chkerr;
  u16_t lenerr;
  u16_t memerr;
  u16_t proterr;
  u16_t rx_v1;
  u16_t rx_group;
  u16_t rx_general;
  u16_t rx_report;
  u16_t tx_join;
  u16_t tx_leave;
  u16_t tx_report;
};

struct stats_mem {

  const char *name;

  mem_size_t avail;
  mem_size_t used;
  mem_size_t max;
  u16_t err;
  u16_t illegal;
};

struct stats_syselem {
  u16_t used;
  u16_t max;
  u16_t err;
};

struct stats_sys {
  struct stats_syselem sem;
  struct stats_syselem mutex;
  struct stats_syselem mbox;
};

struct stats_ {

  struct stats_proto link;


  struct stats_proto etharp;


  struct stats_proto ip_frag;


  struct stats_proto ip;


  struct stats_proto icmp;





  struct stats_proto udp;


  struct stats_proto tcp;


  struct stats_mem mem;


  struct stats_mem memp[MEMP_MAX];




};

extern struct stats_ lwip_stats;

void stats_init(void);
# 55 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp.c" 2

# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\string.h" 1 3
# 10 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\string.h" 3
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\_ansi.h" 1 3
# 15 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\_ansi.h" 3
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\newlib.h" 1 3
# 16 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\_ansi.h" 2 3
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\sys\\config.h" 1 3



# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\machine\\ieeefp.h" 1 3
# 5 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\sys\\config.h" 2 3
# 17 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\_ansi.h" 2 3
# 11 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\string.h" 2 3
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\sys\\reent.h" 1 3
# 13 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\sys\\reent.h" 3
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\_ansi.h" 1 3
# 14 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\sys\\reent.h" 2 3
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\sys\\_types.h" 1 3
# 12 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\sys\\_types.h" 3
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\machine\\_types.h" 1 3



# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\machine\\_default_types.h" 1 3
# 26 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\machine\\_default_types.h" 3
typedef signed char __int8_t ;
typedef unsigned char __uint8_t ;
# 36 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\machine\\_default_types.h" 3
typedef signed short __int16_t;
typedef unsigned short __uint16_t;
# 46 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\machine\\_default_types.h" 3
typedef __int16_t __int_least16_t;
typedef __uint16_t __uint_least16_t;
# 58 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\machine\\_default_types.h" 3
typedef signed int __int32_t;
typedef unsigned int __uint32_t;
# 76 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\machine\\_default_types.h" 3
typedef __int32_t __int_least32_t;
typedef __uint32_t __uint_least32_t;
# 99 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\machine\\_default_types.h" 3
typedef signed long long __int64_t;
typedef unsigned long long __uint64_t;
# 5 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\machine\\_types.h" 2 3
# 13 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\sys\\_types.h" 2 3
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\sys\\lock.h" 1 3





typedef int _LOCK_T;
typedef int _LOCK_RECURSIVE_T;
# 14 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\sys\\_types.h" 2 3


typedef long _off_t;







typedef short __dev_t;




typedef unsigned short __uid_t;


typedef unsigned short __gid_t;



__extension__ typedef long long _off64_t;







typedef long _fpos_t;
# 56 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\sys\\_types.h" 3
typedef int _ssize_t;






# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\lib\\gcc\\tricore\\4.9.4\\include\\stddef.h" 1 3 4
# 353 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\lib\\gcc\\tricore\\4.9.4\\include\\stddef.h" 3 4
typedef unsigned int wint_t;
# 64 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\sys\\_types.h" 2 3



typedef struct
{
  int __count;
  union
  {
    wint_t __wch;
    unsigned char __wchb[4];
  } __value;
} _mbstate_t;



typedef _LOCK_RECURSIVE_T _flock_t;




typedef void *_iconv_t;
# 15 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\sys\\reent.h" 2 3






typedef unsigned long __ULong;
# 37 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\sys\\reent.h" 3
struct _reent;






struct _Bigint
{
  struct _Bigint *_next;
  int _k, _maxwds, _sign, _wds;
  __ULong _x[1];
};


struct __tm
{
  int __tm_sec;
  int __tm_min;
  int __tm_hour;
  int __tm_mday;
  int __tm_mon;
  int __tm_year;
  int __tm_wday;
  int __tm_yday;
  int __tm_isdst;
};







struct _on_exit_args {
 void * _fnargs[32];
 void * _dso_handle[32];

 __ULong _fntypes;


 __ULong _is_cxa;
};
# 89 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\sys\\reent.h" 3
struct _atexit {
 struct _atexit *_next;
 int _ind;

 void (*_fns[32])(void);
        struct _on_exit_args _on_exit_args;
};
# 105 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\sys\\reent.h" 3
struct __sbuf {
 unsigned char *_base;
 int _size;
};
# 169 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\sys\\reent.h" 3
struct __sFILE {
  unsigned char *_p;
  int _r;
  int _w;
  short _flags;
  short _file;
  struct __sbuf _bf;
  int _lbfsize;






  void * _cookie;

  int (* _read) (struct _reent *, void *, char *, int)
                     ;
  int (* _write) (struct _reent *, void *, const char *, int)
                            ;
  _fpos_t (* _seek) (struct _reent *, void *, _fpos_t, int);
  int (* _close) (struct _reent *, void *);


  struct __sbuf _ub;
  unsigned char *_up;
  int _ur;


  unsigned char _ubuf[3];
  unsigned char _nbuf[1];


  struct __sbuf _lb;


  int _blksize;
  int _offset;


  struct _reent *_data;



  _flock_t _lock;

  _mbstate_t _mbstate;
  int _flags2;
};
# 273 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\sys\\reent.h" 3
typedef struct __sFILE __FILE;



struct _glue
{
  struct _glue *_next;
  int _niobs;
  __FILE *_iobs;
};
# 305 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\sys\\reent.h" 3
struct _rand48 {
  unsigned short _seed[3];
  unsigned short _mult[3];
  unsigned short _add;




};
# 579 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\sys\\reent.h" 3
struct _reent
{
  int _errno;




  __FILE *_stdin, *_stdout, *_stderr;

  int _inc;
  char _emergency[25];

  int _current_category;
  const char *_current_locale;

  int __sdidinit;

  void (* __cleanup) (struct _reent *);


  struct _Bigint *_result;
  int _result_k;
  struct _Bigint *_p5s;
  struct _Bigint **_freelist;


  int _cvtlen;
  char *_cvtbuf;

  union
    {
      struct
        {
          unsigned int _unused_rand;
          char * _strtok_last;
          char _asctime_buf[26];
          struct __tm _localtime_buf;
          int _gamma_signgam;
          __extension__ unsigned long long _rand_next;
          struct _rand48 _r48;
          _mbstate_t _mblen_state;
          _mbstate_t _mbtowc_state;
          _mbstate_t _wctomb_state;
          char _l64a_buf[8];
          char _signal_buf[24];
          int _getdate_err;
          _mbstate_t _mbrlen_state;
          _mbstate_t _mbrtowc_state;
          _mbstate_t _mbsrtowcs_state;
          _mbstate_t _wcrtomb_state;
          _mbstate_t _wcsrtombs_state;
   int _h_errno;
        } _reent;



      struct
        {

          unsigned char * _nextf[30];
          unsigned int _nmalloc[30];
        } _unused;
    } _new;


  struct _atexit *_atexit;
  struct _atexit _atexit0;


  void (**(_sig_func))(int);




  struct _glue __sglue;
  __FILE __sf[3];
};
# 817 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\sys\\reent.h" 3
extern struct _reent *_impure_ptr __attribute__((__fardata__));
extern struct _reent *const _global_impure_ptr __attribute__((__fardata__));

void _reclaim_reent (struct _reent *);
# 12 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\string.h" 2 3


# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\lib\\gcc\\tricore\\4.9.4\\include\\stddef.h" 1 3 4
# 15 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\string.h" 2 3







void * memchr (const void *, int, size_t);
int memcmp (const void *, const void *, size_t);
void * memcpy (void *, const void *, size_t);
void * memmove (void *, const void *, size_t);
void * memset (void *, int, size_t);
char *strcat (char *, const char *);
char *strchr (const char *, int);
int strcmp (const char *, const char *);
int strcoll (const char *, const char *);
char *strcpy (char *, const char *);
size_t strcspn (const char *, const char *);
char *strerror (int);
size_t strlen (const char *);
char *strncat (char *, const char *, size_t);
int strncmp (const char *, const char *, size_t);
char *strncpy (char *, const char *, size_t);
char *strpbrk (const char *, const char *);
char *strrchr (const char *, int);
size_t strspn (const char *, const char *);
char *strstr (const char *, const char *);


char *strtok (char *, const char *);


size_t strxfrm (char *, const char *, size_t);


char *strtok_r (char *, const char *, char **);

int bcmp (const void *, const void *, size_t);
void bcopy (const void *, void *, size_t);
void bzero (void *, size_t);
int ffs (int);
char *index (const char *, int);
void * memccpy (void *, const void *, int, size_t);
void * mempcpy (void *, const void *, size_t);
void * memmem (const void *, size_t, const void *, size_t);
char *rindex (const char *, int);
char *stpcpy (char *, const char *);
char *stpncpy (char *, const char *, size_t);
int strcasecmp (const char *, const char *);
char *strcasestr (const char *, const char *);
char *strdup (const char *);
char *_strdup_r (struct _reent *, const char *);
char *strndup (const char *, size_t);
char *_strndup_r (struct _reent *, const char *, size_t);
char *strerror_r (int, char *, size_t);
size_t strlcat (char *, const char *, size_t);
size_t strlcpy (char *, const char *, size_t);
int strncasecmp (const char *, const char *, size_t);
size_t strnlen (const char *, size_t);
char *strsep (char **, const char *);
char *strlwr (char *);
char *strupr (char *);
# 100 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\string.h" 3
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\sys\\string.h" 1 3
# 101 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\string.h" 2 3


# 57 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp.c" 2
# 1 "./0_Src/0_AppSw/Tricore/Device_Driver/Driver_Communication/Peripherals_ETH.h" 1
# 23 "./0_Src/0_AppSw/Tricore/Device_Driver/Driver_Communication/Peripherals_ETH.h"
# 1 "./0_Src/4_McHal/Tricore/Cpu/Std/Ifx_Types.h" 1
# 24 "./0_Src/0_AppSw/Tricore/Device_Driver/Driver_Communication/Peripherals_ETH.h" 2
# 1 "./0_Src/0_AppSw/Config/Common/Configuration.h" 1
# 34 "./0_Src/0_AppSw/Config/Common/Configuration.h"
# 1 "./0_Src/0_AppSw/Config/Common/Ifx_Cfg.h" 1
# 35 "./0_Src/0_AppSw/Config/Common/Configuration.h" 2
# 1 "./0_Src/0_AppSw/Tricore/System/System_ISR_Priority.h" 1
# 30 "./0_Src/0_AppSw/Tricore/System/System_ISR_Priority.h"
# 1 "./0_Src/4_McHal/Tricore/_Impl/IfxSrc_cfg.h" 1
# 49 "./0_Src/4_McHal/Tricore/_Impl/IfxSrc_cfg.h"
typedef enum
{
    IfxSrc_Tos_cpu0 = 0,
    IfxSrc_Tos_cpu1 = 1,
    IfxSrc_Tos_cpu2 = 2,
    IfxSrc_Tos_dma = 3
} IfxSrc_Tos;
# 31 "./0_Src/0_AppSw/Tricore/System/System_ISR_Priority.h" 2
# 36 "./0_Src/0_AppSw/Config/Common/Configuration.h" 2
# 1 "./0_Src/4_McHal/Tricore/_Impl/IfxGlobal_cfg.h" 1
# 37 "./0_Src/0_AppSw/Config/Common/Configuration.h" 2
# 25 "./0_Src/0_AppSw/Tricore/Device_Driver/Driver_Communication/Peripherals_ETH.h" 2
# 1 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h" 1
# 48 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h"
# 1 "./0_Src/4_McHal/Tricore/_Impl/IfxCpu_cfg.h" 1
# 39 "./0_Src/4_McHal/Tricore/_Impl/IfxCpu_cfg.h"
# 1 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_Intrinsics.h" 1
# 30 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_Intrinsics.h"
# 1 "./0_Src/4_McHal/Tricore/Cpu/Std/Ifx_Types.h" 1
# 31 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_Intrinsics.h" 2





# 1 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
# 41 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\machine\\intrinsics.h" 1 3
# 88 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\machine\\intrinsics.h" 3
static __inline__ __attribute__((__always_inline__))
void _bisr (const unsigned __irq_level)
{
  __asm__ volatile ("bisr %0" :: "i" (__irq_level) : "memory");
}
# 110 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\machine\\intrinsics.h" 3
static __inline__ __attribute__((__always_inline__))
unsigned _mfcr (const unsigned __regaddr)
{
  unsigned __res;
  __asm__ volatile ("mfcr %0, LO:%1"
                    : "=d" (__res) : "i" (__regaddr) : "memory");
  return __res;
}
# 134 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\machine\\intrinsics.h" 3
static __inline__ __attribute__((__always_inline__))
void _mtcr (const unsigned __regaddr, const unsigned __val)
{
  __asm__ volatile ("mtcr LO:%0, %1"
                    :: "i" (__regaddr), "d" (__val) : "memory");
}
# 152 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\machine\\intrinsics.h" 3
static __inline__ __attribute__((__always_inline__))
void _syscall (const unsigned __service)
{
  __asm__ volatile ("syscall %0" :: "i" (__service) : "memory");
}






static __inline__ __attribute__((__always_inline__))
void _disable (void)
{
  __asm__ volatile ("disable" ::: "memory");
}

static __inline__ __attribute__((__always_inline__))
void _enable (void)
{
  __asm__ volatile ("enable" ::: "memory");
}

static __inline__ __attribute__((__always_inline__))
void _debug (void)
{
  __asm__ volatile ("debug" ::: "memory");
}

static __inline__ __attribute__((__always_inline__))
void _isync (void)
{
  __asm__ volatile ("isync" ::: "memory");
}

static __inline__ __attribute__((__always_inline__))
void _dsync (void)
{
  __asm__ volatile ("dsync" ::: "memory");
}

static __inline__ __attribute__((__always_inline__))
void _rstv (void)
{
  __asm__ volatile ("rstv" ::: "memory");
}

static __inline__ __attribute__((__always_inline__))
void _rslcx (void)
{
    __asm__ volatile ("rslcx" ::: "memory",
                      "d0", "d1", "d2", "d3", "d4", "d5", "d6", "d7",
                      "a2", "a3", "a4", "a5", "a6", "a7", "a11");
}


static __inline__ __attribute__((__always_inline__))
void _svlcx (void)
{
  __asm__ volatile ("svlcx" ::: "memory");
}

static __inline__ __attribute__((__always_inline__))
void _nop (void)
{
  __asm__ volatile ("nop" ::: "memory");
}
# 227 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\machine\\intrinsics.h" 3
static __inline__ __attribute__((__always_inline__))
void _restore (const int irqs_on)
{

  __asm__ volatile ("restore %0" :: "d" (irqs_on) : "memory");






}
# 42 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 2
# 54 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) void __jump_and_link(void (*fun)(void))
{
 __asm__ volatile ("jli %0"::"a"(fun));
}
# 94 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) sint32 __max(sint32 a, sint32 b)
{
    sint32 res;
    __asm__ volatile ("max %0, %1, %2": "=d" (res) : "d" (a), "d" (b));
    return res;
}



static inline __attribute__ ((always_inline)) sint32 __maxs(sint16 a, sint16 b)
{
    sint32 res;
    __asm__ volatile ("max.h %0, %1, %2": "=d" (res) : "d" (a), "d" (b));
    return res;
}


static inline __attribute__ ((always_inline)) uint32 __maxu(uint32 a, uint32 b)
{
    uint32 res;
    __asm__ volatile ("max.u %0, %1, %2": "=d" (res) : "d" (a), "d" (b));
    return res;
}



static inline __attribute__ ((always_inline)) sint32 __min(sint32 a, sint32 b)
{
    sint32 res;
    __asm__ volatile ("min %0, %1, %2": "=d" (res) : "d" (a), "d" (b));
    return res;
}



static inline __attribute__ ((always_inline)) sint16 __mins(sint16 a, sint16 b)
{
    sint16 res;
    __asm__ volatile ("min.h %0, %1, %2": "=d" (res) : "d" (a), "d" (b));
    return res;
}



static inline __attribute__ ((always_inline)) uint32 __minu(uint32 a, uint32 b)
{
    uint32 res;
    __asm__ volatile ("min.u %0, %1, %2": "=d" (res) : "d" (a), "d" (b));
    return res;
}
# 184 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) sint16 __clssf(sfract a)
{
    sint16 res;
    __asm__ volatile ("cls  %0,%1":"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) float __fract_to_float(fract a)
{
    float res;
    __asm__ volatile ("q31tof  %0,%1,%2":"=d"(res):"d"(a), "d"(0):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) fract __float_to_fract(float a)
{
    fract res;
    __asm__ volatile ("ftoq31  %0,%1,%2":"=d"(res):"d"(a), "d"(0):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) fract __getfract(laccum a)
{
    fract res;
    __asm__ volatile ("dextr  %0,%H1,%L1,0x11":"=&d" (res):"d" (a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sfract __mac_r_sf(sfract a, sfract b, sfract c)
{
    sfract res;
    __asm__ volatile ("maddrs.q  %0,%1,%2U,%3U,1":"=d"(res):"d"(a), "d"(b), "d"(c):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sfract __mac_sf(sfract a, sfract b, sfract c)
{
    sfract res;
    __asm__ volatile ("madds.q  %0,%1,%2U,%3U,1":"=d"(res):"d"(a), "d"(b), "d"(c):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) long __mulfractfract(fract a, fract b)
{
    long res;
    __asm__ volatile ("mul.q %0,%1,%2,1":"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) long __mulfractlong(fract a, long b)
{
    long res;
    __asm__ volatile ("mul.q %0,%1,%2,1":"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sfract __round16(fract a)
{
    sfract res;
    __asm__ volatile ("mov.u  %0,0x8000        \n                    adds  %0,%1              \n                    insert  %0,%0,0,0,0x10 "


                      :"=&d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sfract __s16_to_sfract(sint16 a)
{
    sfract res;
    __asm__ volatile ("sh  %0,%1,16":"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sint16 __sfract_to_s16(sfract a)
{
    sint16 res;
    __asm__ volatile ("sh  %0,%1,-16":"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) uint16 __sfract_to_u16(sfract a)
{
    uint16 res;
    __asm__ volatile ("sh  %0,%1,-16":"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) laccum __shaaccum(laccum a, sint32 b)
{
    laccum res;
    __asm__ volatile ("jge   %2,0,0f        \n                    sha   %H0,%H1,%2     \n                    rsub  %2,%2,0        \n                    dextr %L0,%H1,%L1,%2 \n                    j  1f                \n                    0:dextr %H0,%H1,%L1,%2 \n                    sha   %L0,%L1,%2     \n                    1:"







                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) fract __shafracts(fract a, sint32 b)
{
    fract res;
    __asm__ volatile ("shas  %0,%1,%2":"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sfract __shasfracts(sfract a, sint32 b)
{
    sfract res;
    __asm__ volatile ("shas  %0,%1,%2":"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sfract __u16_to_sfract(uint16 a)
{
    sfract res;
    __asm__ volatile ("sh  %0,%1,16":"=d"(res):"d"(a):"memory");
    return res;
}
# 346 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) sint32 __extr(sint32 a, uint32 p, uint32 w)
{
    sint32 res;
    __asm__ volatile ("mov %%d14,%2  \n                     mov %%d15,%3  \n                     extr %0,%1,%%e14"


                      : "=d" (res) : "d" (a), "d" (p), "d" (w):"d14", "d15");
    return res;
}



static inline __attribute__ ((always_inline)) uint32 __extru(uint32 a, uint32 p, uint32 w)
{
    uint32 res;
    __asm__ volatile ("mov %%d14,%2  \n                     mov %%d15,%3  \n                     extr.u %0,%1,%%e14"


                      : "=d" (res) : "d" (a), "d" (p), "d" (w):"d14", "d15");
    return res;
}
# 384 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) sint32 __ins(sint32 trg, const sint32 trgbit, sint32 src, const sint32 srcbit)
{
    sint32 res;
    __asm__ volatile ("ins.t %0,%1,%2,%3,%4":"=d"(res):"d"(trg), "i"(trgbit), "d"(src), "i"(srcbit));
    return res;
}



static inline __attribute__ ((always_inline)) sint32 __insert(sint32 a, sint32 b, sint32 p, const sint32 w)
{
    sint32 res;
    __asm__ volatile ("mov %%d14,%2  \n                     mov %%d15,%3  \n                     insert %0,%1,%2,%%e14"


                      :"=d"(res):"d"(a), "d"(b), "d"(p), "d"(w):"d14", "d15");
    return res;
}



static inline __attribute__ ((always_inline)) sint32 __insn(sint32 trg, const sint32 trgbit, sint32 src, const sint32 srcbit)
{
    sint32 res;
    __asm__ volatile ("insn.t %0,%1,%2,%3,%4":"=d"(res):"d"(trg), "i"(trgbit), "d"(src), "i"(srcbit));
    return res;
}
# 436 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) sint32 __disable_and_save(void)
{
    sint32 res;
    __asm__ volatile("disable %0":"=d"(res));
    return res;
}







static inline __attribute__ ((always_inline)) void __restore(sint32 ie)
{
    __asm__ volatile ("restore %0"::"d"(ie));
}
# 470 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) void __cacheawi(uint8* p)
{
    __asm__ volatile("cachea.wi [%0]0"::"a"(p));
}


static inline __attribute__ ((always_inline)) void __cacheiwi(uint8* p)
{
    __asm__ volatile("cachei.wi [%0]0"::"a"(p));
}




static inline __attribute__ ((always_inline)) uint8* __cacheawi_bo_post_inc(uint8* p)
{
    __asm__ volatile("cachea.wi  [%0+]0"::"a"(p));
    return p;
}





static inline __attribute__ ((always_inline)) sint32 __mulsc(sint32 a, sint32 b, sint32 offset)
{
    sint32 res;
    __asm__ volatile("mul  %%e12,%1,%2      \n                    dextr  %0,%%d13,%%d12,%3"

                     :"=d"(res):"d"(a), "d"(b), "d"(offset):"d12", "d13");
    return res;
}



static inline __attribute__ ((always_inline)) uint32 __rol(uint32 operand, uint32 count)
{
    uint32 res;
    __asm__ volatile("dextr  %0,%1,%1,%2":"=d"(res):"d"(operand), "d"(count):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) uint32 __ror(uint32 operand, uint32 count)
{
    uint32 res;
    __asm__ volatile("rsub %2,%2,0 \n                    dextr  %0,%1,%1,%2"

                     :"=d"(res):"d"(operand), "d"(count):"memory");
    return res;
}
# 532 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) __packb __absb(__packb a)
{
    __packb res;
    __asm__ volatile ("abs.b %0,%1"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __packhw __absh(__packhw a)
{
    __packhw res;
    __asm__ volatile ("abs.h %0,%1"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __packhw __abssh(__packhw a)
{
    __packb res;
    __asm__ volatile ("abss.h %0,%1"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sint8 __extractbyte1(__packb a)
{
    sint8 res;
    __asm__ volatile ("extr  %0,%1,0,8"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sint8 __extractbyte2(__packb a)
{
    sint8 res;
    __asm__ volatile ("extr  %0,%1,8,8"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sint8 __extractbyte3(__packb a)
{
    sint8 res;
    __asm__ volatile ("extr  %0,%1,16,8"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sint8 __extractbyte4(__packb a)
{
    sint8 res;
    __asm__ volatile ("extr  %0,%1,24,8"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sint16 __extracthw1(__packhw a)
{
    sint16 res;
    __asm__ volatile ("extr  %0,%1,0,16"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sint16 __extracthw2(__packhw a)
{
    sint16 res;
    __asm__ volatile ("extr  %0,%1,16,16"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) uint8 __extractubyte1(__upackb a)
{
    uint8 res;
    __asm__ volatile ("extr  %0,%1,0,8"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) uint8 __extractubyte2(__upackb a)
{
    uint8 res;
    __asm__ volatile ("extr  %0,%1,8,8"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) uint8 __extractubyte3(__upackb a)
{
    uint8 res;
    __asm__ volatile ("extr  %0,%1,16,8"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) uint8 __extractubyte4(__upackb a)
{
    uint8 res;
    __asm__ volatile ("extr  %0,%1,24,8"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) uint16 __extractuhw1(__upackhw a)
{
    uint16 res;
    __asm__ volatile ("extr  %0,%1,0,16"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) uint16 __extractuhw2(__upackhw a)
{
    uint16 res;
    __asm__ volatile ("extr  %0,%1,16,16"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sint8 __getbyte1(__packb* a)
{
    sint8 res;
    __asm__ volatile ("ld.w  %0,[%1]0 \n                     extr  %0,%0,0,8"

                      :"=d"(res):"a"(a):"memory");
    return res;

}



static inline __attribute__ ((always_inline)) sint8 __getbyte2(__packb* a)
{
    sint8 res;
    __asm__ volatile ("ld.w  %0,[%1]0 \n                     extr  %0,%0,8,8"

                      :"=d"(res):"a"(a):"memory");
    return res;

}



static inline __attribute__ ((always_inline)) sint8 __getbyte3(__packb* a)
{
    sint8 res;
    __asm__ volatile ("ld.w  %0,[%1]0 \n                     extr  %0,%0,16,8"

                      :"=d"(res):"a"(a):"memory");
    return res;

}



static inline __attribute__ ((always_inline)) sint8 __getbyte4(__packb* a)
{
    sint8 res;
    __asm__ volatile ("ld.w  %0,[%1]0 \n                     extr  %0,%0,24,8"

                      :"=d"(res):"a"(a):"memory");
    return res;

}



static inline __attribute__ ((always_inline)) sint16 __gethw1(__packhw* a)
{
    sint16 res;
    __asm__ volatile ("ld.w  %0,[%1]0 \n                     extr  %0,%0,0,16"

                      :"=d"(res):"a"(a):"memory");
    return res;
}


static inline __attribute__ ((always_inline)) sint16 __gethw2(__packhw* a)
{
    sint16 res;
    __asm__ volatile ("ld.w  %0,[%1]0 \n                     extr  %0,%0,16,16"

                      :"=d"(res):"a"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) uint8 __getubyte1(__upackb* a)
{
    uint8 res;
    __asm__ volatile ("ld.w  %0,[%1]0 \n                     extr  %0,%0,0,8"

                      :"=d"(res):"a"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) uint8 __getubyte2(__upackb* a)
{
    uint8 res;
    __asm__ volatile ("ld.w  %0,[%1]0 \n                     extr  %0,%0,8,8"

                      :"=d"(res):"a"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) uint8 __getubyte3(__upackb* a)
{
    uint8 res;
    __asm__ volatile ("ld.w  %0,[%1]0 \n                     extr  %0,%0,16,8"

                      :"=d"(res):"a"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) uint8 __getubyte4(__upackb* a)
{
    uint8 res;
    __asm__ volatile ("ld.w  %0,[%1]0 \n                     extr  %0,%0,24,8"

                      :"=d"(res):"a"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) uint16 __getuhw1(__upackhw* a)
{
    uint16 res;
    __asm__ volatile ("ld.w  %0,[%1]0 \n                     extr  %0,%0,0,16"

                      :"=d"(res):"a"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) uint16 __getuhw2(__upackhw* a)
{
    uint16 res;
    __asm__ volatile ("ld.w  %0,[%1]0 \n                     extr  %0,%0,16,16"

                      :"=d"(res):"a"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __packb __initpackb(sint32 a, sint32 b, sint32 c, sint32 d)
{
    __packb res;
    __asm__ volatile ("insert  %3,%3,%4,8,8   \n                    insert  %4,%1,%2,8,8   \n                    insert  %0,%4,%3,16,16 "


                      :"=d"(res):"d"(a), "d"(b), "d"(c), "d"(d):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __packb __initpackbl(long a)
{
    return (__packb) a;
}



static inline __attribute__ ((always_inline)) __packhw __initpackhw(sint16 a, sint16 b)
{
    __packhw res;
    __asm__ volatile ("insert  %0,%1,%2,16,16"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __packhw __initpackhwl(long a)
{
    return a;
}



static inline __attribute__ ((always_inline)) __upackb __initupackb( uint32 a, uint32 b, uint32 c, uint32 d)
{
    __upackb res;
    __asm__ volatile ("insert  %3,%3,%4,8,8   \n                    insert  %1,%1,%2,8,8   \n                    insert  %0,%1,%3,16,16"


                      :"=d"(res):"d"(a), "d"(b), "d"(c), "d"(d):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __upackhw __initupackhw( uint16 a, uint16 b)
{
    __upackhw res;
    __asm__ volatile ("insert  %0,%1,%2,16,16"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __packb __insertbyte1(__packb a, sint8 b)
{
    __packb res;
    __asm__ volatile ("insert  %0,%1,%2,0,8"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __packb __insertbyte2(__packb a, sint8 b)
{
    __packb res;
    __asm__ volatile ("insert  %0,%1,%2,8,8"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __packb __insertbyte3(__packb a, sint8 b)
{
    __packb res;
    __asm__ volatile ("insert  %0,%1,%2,16,8"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __packb __insertbyte4(__packb a, sint8 b)
{
    __packb res;
    __asm__ volatile ("insert  %0,%1,%2,24,8"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __upackb __insertubyte1( __upackb a, uint8 b)
{
    __upackb res;
    __asm__ volatile ("insert  %0,%1,%2,0,8"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __upackb __insertubyte2( __upackb a, uint8 b)
{
    __upackb res;
    __asm__ volatile ("insert  %0,%1,%2,8,8"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __upackb __insertubyte3( __upackb a, uint8 b)
{
    __upackb res;
    __asm__ volatile ("insert  %0,%1,%2,16,8"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __upackb __insertubyte4( __upackb a, uint8 b)
{
    __upackb res;
    __asm__ volatile ("insert  %0,%1,%2,24,8"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __packhw __inserthw1(__packhw a, sint16 b)
{
    __packhw res;
    __asm__ volatile ("insert  %0,%1,%2,0,16"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __packhw __inserthw2(__packhw a, sint16 b)
{
    __packhw res;
    __asm__ volatile ("insert  %0,%1,%2,16,16"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __upackhw __insertuhw1( __upackhw a, uint16 b)
{
    __upackhw res;
    __asm__ volatile ("insert  %0,%1,%2,0,16"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __upackhw __insertuhw2( __upackhw a, uint16 b)
{
    __upackhw res;
    __asm__ volatile ("insert  %0,%1,%2,16,16"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __packb __minb(__packb a, __packb b)
{
    __packb res;
    __asm__ volatile ("min.b %0,%1,%2"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __upackb __minbu( __upackb a, __upackb b)
{
    __upackb res;
    __asm__ volatile ("min.bu %0,%1,%2"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __packhw __minh(__packhw a, __packhw b)
{
    __packhw res;
    __asm__ volatile ("min.h %0,%1,%2"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __upackhw __minhu( __upackhw a, __upackhw b)
{
    __upackhw res;
    __asm__ volatile ("min.hu %0,%1,%2"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) void __setbyte1(__packb* a, sint8 b)
{
    __asm__ volatile ("ld.w  %%d15,[%0] \n                    insert  %%d15,%%d15,%1,0,8 \n                    st.w [%0],%%d15"


                      ::"a"(a), "d"(b):"d15", "memory");
}



static inline __attribute__ ((always_inline)) void __setbyte2(__packb* a, sint8 b)
{
    __asm__ volatile ("ld.w  %%d15,[%0] \n                    insert  %%d15,%%d15,%1,8,8 \n                    st.w [%0],%%d15"


                      ::"a"(a), "d"(b):"d15", "memory");
}



static inline __attribute__ ((always_inline)) void __setbyte3(__packb* a, sint8 b)
{
    __asm__ volatile ("ld.w  %%d15,[%0] \n                    insert  %%d15,%%d15,%1,16,8 \n                    st.w [%0],%%d15"


                      ::"a"(a), "d"(b):"d15", "memory");
}



static inline __attribute__ ((always_inline)) void __setbyte4(__packb* a, sint8 b)
{
    __asm__ volatile ("ld.w  %%d15,[%0] \n                    insert  %%d15,%%d15,%1,24,8 \n                    st.w [%0],%%d15"


                      ::"a"(a), "d"(b):"d15", "memory");
}



static inline __attribute__ ((always_inline)) void __sethw1(__packhw* a, sint16 b)
{
    __asm__ volatile ("ld.w  %%d15,[%0] \n                    insert  %%d15,%%d15,%1,0,16 \n                    st.w [%0],%%d15"


                      ::"a"(a), "d"(b):"d15", "memory");
}



static inline __attribute__ ((always_inline)) void __sethw2(__packhw* a, sint16 b)
{
    __asm__ volatile ("ld.w  %%d15,[%0] \n                    insert  %%d15,%%d15,%1,16,16 \n                    st.w [%0],%%d15"


                      ::"a"(a), "d"(b):"d15", "memory");
}



static inline __attribute__ ((always_inline)) void __setubyte1(__upackb* a, uint8 b)
{
    __asm__ volatile ("ld.w  %%d15,[%0] \n                    insert  %%d15,%%d15,%1,0,8 \n                    st.w [%0],%%d15"


                      ::"a"(a), "d"(b):"d15", "memory");
}



static inline __attribute__ ((always_inline)) void __setubyte2(__upackb* a, uint8 b)
{
    __asm__ volatile ("ld.w  %%d15,[%0] \n                    insert  %%d15,%%d15,%1,8,8 \n                    st.w [%0],%%d15"


                      ::"a"(a), "d"(b):"d15", "memory");
}



static inline __attribute__ ((always_inline)) void __setubyte3(__upackb* a, uint8 b)
{
    __asm__ volatile ("ld.w  %%d15,[%0] \n                    insert  %%d15,%%d15,%1,16,8 \n                    st.w [%0],%%d15"


                      ::"a"(a), "d"(b):"d15", "memory");
}



static inline __attribute__ ((always_inline)) void __setubyte4(__upackb* a, uint8 b)
{
    __asm__ volatile ("ld.w  %%d15,[%0] \n                    insert  %%d15,%%d15,%1,24,8 \n                    st.w [%0],%%d15"


                      ::"a"(a), "d"(b):"d15", "memory");
}



static inline __attribute__ ((always_inline)) void __setuhw1(__upackhw* a, uint16 b)
{
    __asm__ volatile ("ld.w  %%d15,[%0] \n                    insert  %%d15,%%d15,%1,0,16 \n                    st.w [%0],%%d15"


                      ::"a"(a), "d"(b):"d15", "memory");
}



static inline __attribute__ ((always_inline)) void __setuhw2(__upackhw* a, uint16 b)
{
    __asm__ volatile ("ld.w  %%d15,[%0] \n                    insert  %%d15,%%d15,%1,16,16 \n                    st.w [%0],%%d15"


                      ::"a"(a), "d"(b):"d15", "memory");
}
# 1167 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) sint32 __absdif(sint32 a, sint32 b)
{
    sint32 res;
    __asm__ volatile ("absdif %0, %1, %2": "=d" (res) : "d" (a), "d" (b));
    return res;
}



static inline __attribute__ ((always_inline)) sint32 __abss(sint32 a)
{
    sint32 res;
    __asm__ volatile ("abss %0, %1": "=d" (res) : "d" (a));
    return res;
}



static inline __attribute__ ((always_inline)) sint32 __clo(sint32 a)
{
    sint32 res;
    __asm__ volatile ("clo %0,%1":"=d"(res):"d"(a));
    return res;
}



static inline __attribute__ ((always_inline)) sint32 __cls(sint32 a)
{
    sint32 res;
    __asm__ volatile ("cls %0,%1":"=d"(res):"d"(a));
    return res;
}







static inline __attribute__ ((always_inline)) double __fabs(double d)
{
    double res;
    __asm__ volatile ("insert  %0,%1,0,31,1": "=d" (res) : "d" (d):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) float __fabsf(float f)
{
    float res;
    __asm__ volatile ("insert  %0,%1,0,31,1": "=d" (res) : "d" (f):"memory");
    return res;
}
# 1238 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) sint32 __parity(sint32 a)
{
    sint32 res;
    __asm__ volatile ("parity  %0,%1": "=d" (res) : "d" (a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sint8 __satb(sint32 a)
{
    sint8 res;
    __asm__ volatile ("sat.b %0,%1":"=d"(res):"d"(a));
    return res;
}



static inline __attribute__ ((always_inline)) uint8 __satbu(sint32 a)
{
    uint8 res;
    __asm__ volatile ("sat.bu %0,%1":"=d"(res):"d"(a));
    return res;
}



static inline __attribute__ ((always_inline)) sint16 __sath(sint32 a)
{
    sint8 res;
    __asm__ volatile ("sat.h %0,%1":"=d"(res):"d"(a));
    return res;
}



static inline __attribute__ ((always_inline)) uint16 __sathu(sint32 a)
{
    sint8 res;
    __asm__ volatile ("sat.hu %0,%1":"=d"(res):"d"(a));
    return res;
}
# 1291 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) sint32 __adds(sint32 a, sint32 b)
{
    sint32 res;
    __asm__ volatile ("adds %0, %1, %2": "=d" (res) : "d" (a), "d" (b));
    return res;
}



static inline __attribute__ ((always_inline)) uint32 __addsu(uint32 a, uint32 b)
{
    uint32 res;
    __asm__ volatile ("adds.u %0, %1, %2": "=d" (res) : "d" (a), "d" (b));
    return res;
}



static inline __attribute__ ((always_inline)) sint32 __subs(sint32 a, sint32 b)
{
    sint32 res;
    __asm__ volatile ("subs %0, %1, %2": "=d" (res) : "d" (a), "d" (b));
    return res;
}



static inline __attribute__ ((always_inline)) uint32 __subsu(uint32 a, uint32 b)
{
    uint32 res;
    __asm__ volatile ("subs.u %0, %1, %2": "=d" (res) : "d" (a), "d" (b));
    return res;
}
# 1337 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) void __debug(void)
{
    __asm__ volatile ("debug" : : : "memory");
}



static inline __attribute__ ((always_inline)) void __dsync(void)
{
    __asm__ volatile ("dsync" : : : "memory");
}



static inline __attribute__ ((always_inline)) void __isync(void)
{
    __asm__ volatile ("isync" : : : "memory");
}



static inline __attribute__ ((always_inline)) void __ldmst(volatile void* address, uint32 mask, uint32 value)
{
    __asm__ volatile("mov %H2,%1 \n                  ldmst [%0]0,%A2"

                     ::"a"(address), "d"(mask), "d"((long long)value));
}



static inline __attribute__ ((always_inline)) void __nop(void)
{
    __asm__ volatile ("nop" : : : "memory");
}



static inline __attribute__ ((always_inline)) void __nops(void* cnt)
{
    __asm__ volatile ("0: nop \n        loop %0,0b"

                      ::"a"(((sint8*)cnt)-1));
}



static inline __attribute__ ((always_inline)) void __rslcx(void)
{
    __asm__ volatile ("rslcx" : : : "memory");
}



static inline __attribute__ ((always_inline)) void __svlcx(void)
{
    __asm__ volatile ("svlcx" : : : "memory");
}



static inline __attribute__ ((always_inline)) uint32 __swap(void* place, uint32 value)
{
    uint32 res;
    __asm__ volatile("swap.w [%1]0,%2":"=d"(res):"a"(place), "0"(value));
    return res;
}
# 1422 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) void __stopPerfCounters(void)
{
    __asm__ volatile("mov %%d0,0\n                  mtcr 0xFC00,%%d0\n                  isync\n"


            : : :"d0");
}







static inline __attribute__ ((always_inline)) unsigned int __cmpAndSwap (unsigned int volatile *address,
           unsigned int value, unsigned int condition)
{
# 1450 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
  sint32 ie;
  uint32 retval = 1;
  ie = __disable_and_save();
  if (condition == *address)
  {
     __swap((void *)address,value );
 retval = 0;
  }
  __restore(ie);
  return retval;

}
# 1474 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) float32 __fixpoint_to_float32(fract value, sint32 shift)
{
    float32 result;

    __asm__ volatile("q31tof %0, %1, %2": "=d" (result) : "d" (value), "d" (shift));
    return result;
}



static inline __attribute__ ((always_inline)) void* __getA11(void)
{
    uint32 *res;
    __asm__ volatile ("mov.aa %0, %%a11": "=a" (res) : :"a11");
    return res;
}

static inline __attribute__ ((always_inline)) void __setStackPointer(void *stackAddr)
{
    __asm__ volatile ("mov.aa %%a10, %0": : "a" (stackAddr) :"a10");
}
# 37 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_Intrinsics.h" 2
# 65 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_Intrinsics.h"
static inline __attribute__ ((always_inline)) void *__cx_to_addr(uint32 cx)
{
    uint32 seg_nr = ({ sint32 res; asm volatile (" extr.u\t %0,%1,%2,%3" : "=d" (res) : "d" (cx),"i" (16),"i" (4) : "memory"); res; });
    return (void *)__insert(seg_nr << 28, cx, 6, 16);
}






static inline __attribute__ ((always_inline)) uint32 __addr_to_cx(void *addr)
{
    uint32 seg_nr, seg_idx;
    seg_nr = ({ sint32 res; asm volatile (" extr.u\t %0,%1,%2,%3" : "=d" (res) : "d" ((int)addr),"i" (28),"i" (4) : "memory"); res; }) << 16;
    seg_idx = ({ sint32 res; asm volatile (" extr.u\t %0,%1,%2,%3" : "=d" (res) : "d" ((int)addr),"i" (6),"i" (16) : "memory"); res; });
    return seg_nr | seg_idx;
}



static inline __attribute__ ((always_inline)) void __ldmst_c(volatile void *address, unsigned mask, unsigned value)
{
    *(volatile uint32 *)address = (*(volatile uint32 *)address & ~(mask)) | (mask & value);
}




static inline __attribute__ ((always_inline)) uint32 __ld32(void *addr)
{
    return *(volatile uint32 *)addr;
}




static inline __attribute__ ((always_inline)) void __st32(void *addr, uint32 value)
{
    *(volatile uint32 *)addr = value;
}




static inline __attribute__ ((always_inline)) uint64 __ld64(void *addr)
{
    return *(volatile uint64 *)addr;
}




static inline __attribute__ ((always_inline)) void __st64(void *addr, uint64 value)
{
    *(volatile uint64 *)addr = value;
}




static inline __attribute__ ((always_inline)) void __ld64_lu(void *addr, uint32 *valueLower, uint32 *valueUpper)
{
    register uint64 value;
    value = __ld64(addr);
    *valueLower = (uint32)value;
    *valueUpper = (uint32)(value >> 32);
}




static inline __attribute__ ((always_inline)) void __st64_lu(void *addr, uint32 valueLower, uint32 valueUpper)
{
    register uint64 value = ((uint64)valueUpper << 32) | valueLower;
    __st64(addr, value);
}
# 40 "./0_Src/4_McHal/Tricore/_Impl/IfxCpu_cfg.h" 2
# 1 "./0_Src/4_McHal/Tricore/_Reg/IfxCpu_reg.h" 1
# 54 "./0_Src/4_McHal/Tricore/_Reg/IfxCpu_reg.h"
# 1 "./0_Src/4_McHal/Tricore/_Reg/IfxCpu_regdef.h" 1
# 39 "./0_Src/4_McHal/Tricore/_Reg/IfxCpu_regdef.h"
# 1 "./0_Src/4_McHal/Tricore/_Reg/Ifx_TypesReg.h" 1
# 40 "./0_Src/4_McHal/Tricore/_Reg/IfxCpu_regdef.h" 2





typedef struct _Ifx_CPU_A_Bits
{
    volatile unsigned int ADDR : 32;
} Ifx_CPU_A_Bits;


typedef struct _Ifx_CPU_BIV_Bits
{
    volatile unsigned int VSS : 1;
    volatile unsigned int BIV : 31;
} Ifx_CPU_BIV_Bits;


typedef struct _Ifx_CPU_BTV_Bits
{
    volatile unsigned int reserved_0 : 1;
    volatile unsigned int BTV : 31;
} Ifx_CPU_BTV_Bits;


typedef struct _Ifx_CPU_CCNT_Bits
{
    volatile unsigned int CountValue : 31;
    volatile unsigned int SOvf : 1;
} Ifx_CPU_CCNT_Bits;


typedef struct _Ifx_CPU_CCTRL_Bits
{
    volatile unsigned int CM : 1;
    volatile unsigned int CE : 1;
    volatile unsigned int M1 : 3;
    volatile unsigned int M2 : 3;
    volatile unsigned int M3 : 3;
    volatile unsigned int reserved_11 : 21;
} Ifx_CPU_CCTRL_Bits;


typedef struct _Ifx_CPU_COMPAT_Bits
{
    volatile unsigned int reserved_0 : 3;
    volatile unsigned int RM : 1;
    volatile unsigned int SP : 1;
    volatile unsigned int reserved_5 : 27;
} Ifx_CPU_COMPAT_Bits;


typedef struct _Ifx_CPU_CORE_ID_Bits
{
    volatile unsigned int CORE_ID : 3;
    volatile unsigned int reserved_3 : 29;
} Ifx_CPU_CORE_ID_Bits;


typedef struct _Ifx_CPU_CPR_L_Bits
{
    volatile unsigned int reserved_0 : 3;
    volatile unsigned int LOWBND : 29;
} Ifx_CPU_CPR_L_Bits;


typedef struct _Ifx_CPU_CPR_U_Bits
{
    volatile unsigned int reserved_0 : 3;
    volatile unsigned int UPPBND : 29;
} Ifx_CPU_CPR_U_Bits;


typedef struct _Ifx_CPU_CPU_ID_Bits
{
    volatile unsigned int MOD_REV : 8;
    volatile unsigned int MOD_32B : 8;
    volatile unsigned int MOD : 16;
} Ifx_CPU_CPU_ID_Bits;


typedef struct _Ifx_CPU_CPXE_Bits
{
    volatile unsigned int XE : 8;
    volatile unsigned int reserved_8 : 24;
} Ifx_CPU_CPXE_Bits;


typedef struct _Ifx_CPU_CREVT_Bits
{
    volatile unsigned int EVTA : 3;
    volatile unsigned int BBM : 1;
    volatile unsigned int BOD : 1;
    volatile unsigned int SUSP : 1;
    volatile unsigned int CNT : 2;
    volatile unsigned int reserved_8 : 24;
} Ifx_CPU_CREVT_Bits;


typedef struct _Ifx_CPU_CUS_ID_Bits
{
    volatile unsigned int CID : 3;
    volatile unsigned int reserved_3 : 29;
} Ifx_CPU_CUS_ID_Bits;


typedef struct _Ifx_CPU_D_Bits
{
    volatile unsigned int DATA : 32;
} Ifx_CPU_D_Bits;


typedef struct _Ifx_CPU_DATR_Bits
{
    volatile unsigned int reserved_0 : 3;
    volatile unsigned int SBE : 1;
    volatile unsigned int reserved_4 : 5;
    volatile unsigned int CWE : 1;
    volatile unsigned int CFE : 1;
    volatile unsigned int reserved_11 : 3;
    volatile unsigned int SOE : 1;
    volatile unsigned int SME : 1;
    volatile unsigned int reserved_16 : 16;
} Ifx_CPU_DATR_Bits;


typedef struct _Ifx_CPU_DBGSR_Bits
{
    volatile unsigned int DE : 1;
    volatile unsigned int HALT : 2;
    volatile unsigned int SIH : 1;
    volatile unsigned int SUSP : 1;
    volatile unsigned int reserved_5 : 1;
    volatile unsigned int PREVSUSP : 1;
    volatile unsigned int PEVT : 1;
    volatile unsigned int EVTSRC : 5;
    volatile unsigned int reserved_13 : 19;
} Ifx_CPU_DBGSR_Bits;


typedef struct _Ifx_CPU_DBGTCR_Bits
{
    volatile unsigned int DTA : 1;
    volatile unsigned int reserved_1 : 31;
} Ifx_CPU_DBGTCR_Bits;


typedef struct _Ifx_CPU_DCON0_Bits
{
    volatile unsigned int reserved_0 : 1;
    volatile unsigned int DCBYP : 1;
    volatile unsigned int reserved_2 : 30;
} Ifx_CPU_DCON0_Bits;


typedef struct _Ifx_CPU_DCON2_Bits
{
    volatile unsigned int DCACHE_SZE : 16;
    volatile unsigned int DSCRATCH_SZE : 16;
} Ifx_CPU_DCON2_Bits;


typedef struct _Ifx_CPU_DCX_Bits
{
    volatile unsigned int reserved_0 : 6;
    volatile unsigned int DCXValue : 26;
} Ifx_CPU_DCX_Bits;


typedef struct _Ifx_CPU_DEADD_Bits
{
    volatile unsigned int ERROR_ADDRESS : 32;
} Ifx_CPU_DEADD_Bits;


typedef struct _Ifx_CPU_DIEAR_Bits
{
    volatile unsigned int TA : 32;
} Ifx_CPU_DIEAR_Bits;


typedef struct _Ifx_CPU_DIETR_Bits
{
    volatile unsigned int IED : 1;
    volatile unsigned int IE_T : 1;
    volatile unsigned int IE_C : 1;
    volatile unsigned int IE_S : 1;
    volatile unsigned int IE_BI : 1;
    volatile unsigned int E_INFO : 6;
    volatile unsigned int IE_DUAL : 1;
    volatile unsigned int IE_SP : 1;
    volatile unsigned int IE_BS : 1;
    volatile unsigned int reserved_14 : 18;
} Ifx_CPU_DIETR_Bits;


typedef struct _Ifx_CPU_DMS_Bits
{
    volatile unsigned int reserved_0 : 1;
    volatile unsigned int DMSValue : 31;
} Ifx_CPU_DMS_Bits;


typedef struct _Ifx_CPU_DPR_L_Bits
{
    volatile unsigned int reserved_0 : 3;
    volatile unsigned int LOWBND : 29;
} Ifx_CPU_DPR_L_Bits;


typedef struct _Ifx_CPU_DPR_U_Bits
{
    volatile unsigned int reserved_0 : 3;
    volatile unsigned int UPPBND : 29;
} Ifx_CPU_DPR_U_Bits;


typedef struct _Ifx_CPU_DPRE_Bits
{
    volatile unsigned int RE : 16;
    volatile unsigned int reserved_16 : 16;
} Ifx_CPU_DPRE_Bits;


typedef struct _Ifx_CPU_DPWE_Bits
{
    volatile unsigned int WE : 16;
    volatile unsigned int reserved_16 : 16;
} Ifx_CPU_DPWE_Bits;


typedef struct _Ifx_CPU_DSTR_Bits
{
    volatile unsigned int SRE : 1;
    volatile unsigned int GAE : 1;
    volatile unsigned int LBE : 1;
    volatile unsigned int reserved_3 : 3;
    volatile unsigned int CRE : 1;
    volatile unsigned int reserved_7 : 7;
    volatile unsigned int DTME : 1;
    volatile unsigned int LOE : 1;
    volatile unsigned int SDE : 1;
    volatile unsigned int SCE : 1;
    volatile unsigned int CAC : 1;
    volatile unsigned int MPE : 1;
    volatile unsigned int CLE : 1;
    volatile unsigned int reserved_21 : 3;
    volatile unsigned int ALN : 1;
    volatile unsigned int reserved_25 : 7;
} Ifx_CPU_DSTR_Bits;


typedef struct _Ifx_CPU_EXEVT_Bits
{
    volatile unsigned int EVTA : 3;
    volatile unsigned int BBM : 1;
    volatile unsigned int BOD : 1;
    volatile unsigned int SUSP : 1;
    volatile unsigned int CNT : 2;
    volatile unsigned int reserved_8 : 24;
} Ifx_CPU_EXEVT_Bits;


typedef struct _Ifx_CPU_FCX_Bits
{
    volatile unsigned int FCXO : 16;
    volatile unsigned int FCXS : 4;
    volatile unsigned int reserved_20 : 12;
} Ifx_CPU_FCX_Bits;


typedef struct _Ifx_CPU_FPU_TRAP_CON_Bits
{
    volatile unsigned int TST : 1;
    volatile unsigned int TCL : 1;
    volatile unsigned int reserved_2 : 6;
    volatile unsigned int RM : 2;
    volatile unsigned int reserved_10 : 8;
    volatile unsigned int FXE : 1;
    volatile unsigned int FUE : 1;
    volatile unsigned int FZE : 1;
    volatile unsigned int FVE : 1;
    volatile unsigned int FIE : 1;
    volatile unsigned int reserved_23 : 3;
    volatile unsigned int FX : 1;
    volatile unsigned int FU : 1;
    volatile unsigned int FZ : 1;
    volatile unsigned int FV : 1;
    volatile unsigned int FI : 1;
    volatile unsigned int reserved_31 : 1;
} Ifx_CPU_FPU_TRAP_CON_Bits;


typedef struct _Ifx_CPU_FPU_TRAP_OPC_Bits
{
    volatile unsigned int OPC : 8;
    volatile unsigned int FMT : 1;
    volatile unsigned int reserved_9 : 7;
    volatile unsigned int DREG : 4;
    volatile unsigned int reserved_20 : 12;
} Ifx_CPU_FPU_TRAP_OPC_Bits;


typedef struct _Ifx_CPU_FPU_TRAP_PC_Bits
{
    volatile unsigned int PC : 32;
} Ifx_CPU_FPU_TRAP_PC_Bits;


typedef struct _Ifx_CPU_FPU_TRAP_SRC1_Bits
{
    volatile unsigned int SRC1 : 32;
} Ifx_CPU_FPU_TRAP_SRC1_Bits;


typedef struct _Ifx_CPU_FPU_TRAP_SRC2_Bits
{
    volatile unsigned int SRC2 : 32;
} Ifx_CPU_FPU_TRAP_SRC2_Bits;


typedef struct _Ifx_CPU_FPU_TRAP_SRC3_Bits
{
    volatile unsigned int SRC3 : 32;
} Ifx_CPU_FPU_TRAP_SRC3_Bits;


typedef struct _Ifx_CPU_ICNT_Bits
{
    volatile unsigned int CountValue : 31;
    volatile unsigned int SOvf : 1;
} Ifx_CPU_ICNT_Bits;


typedef struct _Ifx_CPU_ICR_Bits
{
    volatile unsigned int CCPN : 10;
    volatile unsigned int reserved_10 : 5;
    volatile unsigned int IE : 1;
    volatile unsigned int PIPN : 10;
    volatile unsigned int reserved_26 : 6;
} Ifx_CPU_ICR_Bits;


typedef struct _Ifx_CPU_ISP_Bits
{
    volatile unsigned int ISP : 32;
} Ifx_CPU_ISP_Bits;


typedef struct _Ifx_CPU_LCX_Bits
{
    volatile unsigned int LCXO : 16;
    volatile unsigned int LCXS : 4;
    volatile unsigned int reserved_20 : 12;
} Ifx_CPU_LCX_Bits;


typedef struct _Ifx_CPU_M1CNT_Bits
{
    volatile unsigned int CountValue : 31;
    volatile unsigned int SOvf : 1;
} Ifx_CPU_M1CNT_Bits;


typedef struct _Ifx_CPU_M2CNT_Bits
{
    volatile unsigned int CountValue : 31;
    volatile unsigned int SOvf : 1;
} Ifx_CPU_M2CNT_Bits;


typedef struct _Ifx_CPU_M3CNT_Bits
{
    volatile unsigned int CountValue : 31;
    volatile unsigned int SOvf : 1;
} Ifx_CPU_M3CNT_Bits;


typedef struct _Ifx_CPU_PC_Bits
{
    volatile unsigned int reserved_0 : 1;
    volatile unsigned int PC : 31;
} Ifx_CPU_PC_Bits;


typedef struct _Ifx_CPU_PCON0_Bits
{
    volatile unsigned int reserved_0 : 1;
    volatile unsigned int PCBYP : 1;
    volatile unsigned int reserved_2 : 30;
} Ifx_CPU_PCON0_Bits;


typedef struct _Ifx_CPU_PCON1_Bits
{
    volatile unsigned int PCINV : 1;
    volatile unsigned int PBINV : 1;
    volatile unsigned int reserved_2 : 30;
} Ifx_CPU_PCON1_Bits;


typedef struct _Ifx_CPU_PCON2_Bits
{
    volatile unsigned int PCACHE_SZE : 16;
    volatile unsigned int PSCRATCH_SZE : 16;
} Ifx_CPU_PCON2_Bits;


typedef struct _Ifx_CPU_PCXI_Bits
{
    volatile unsigned int PCXO : 16;
    volatile unsigned int PCXS : 4;
    volatile unsigned int UL : 1;
    volatile unsigned int PIE : 1;
    volatile unsigned int PCPN : 10;
} Ifx_CPU_PCXI_Bits;


typedef struct _Ifx_CPU_PIEAR_Bits
{
    volatile unsigned int TA : 32;
} Ifx_CPU_PIEAR_Bits;


typedef struct _Ifx_CPU_PIETR_Bits
{
    volatile unsigned int IED : 1;
    volatile unsigned int IE_T : 1;
    volatile unsigned int IE_C : 1;
    volatile unsigned int IE_S : 1;
    volatile unsigned int IE_BI : 1;
    volatile unsigned int E_INFO : 6;
    volatile unsigned int IE_DUAL : 1;
    volatile unsigned int IE_SP : 1;
    volatile unsigned int IE_BS : 1;
    volatile unsigned int reserved_14 : 18;
} Ifx_CPU_PIETR_Bits;


typedef struct _Ifx_CPU_PMA0_Bits
{
    volatile unsigned int reserved_0 : 13;
    volatile unsigned int DAC : 3;
    volatile unsigned int reserved_16 : 16;
} Ifx_CPU_PMA0_Bits;


typedef struct _Ifx_CPU_PMA1_Bits
{
    volatile unsigned int reserved_0 : 14;
    volatile unsigned int CAC : 2;
    volatile unsigned int reserved_16 : 16;
} Ifx_CPU_PMA1_Bits;


typedef struct _Ifx_CPU_PMA2_Bits
{
    volatile unsigned int PSI : 16;
    volatile unsigned int reserved_16 : 16;
} Ifx_CPU_PMA2_Bits;


typedef struct _Ifx_CPU_PSTR_Bits
{
    volatile unsigned int FRE : 1;
    volatile unsigned int reserved_1 : 1;
    volatile unsigned int FBE : 1;
    volatile unsigned int reserved_3 : 9;
    volatile unsigned int FPE : 1;
    volatile unsigned int reserved_13 : 1;
    volatile unsigned int FME : 1;
    volatile unsigned int reserved_15 : 17;
} Ifx_CPU_PSTR_Bits;


typedef struct _Ifx_CPU_PSW_Bits
{
    volatile unsigned int CDC : 7;
    volatile unsigned int CDE : 1;
    volatile unsigned int GW : 1;
    volatile unsigned int IS : 1;
    volatile unsigned int IO : 2;
    volatile unsigned int PRS : 2;
    volatile unsigned int S : 1;
    volatile unsigned int reserved_15 : 12;
    volatile unsigned int SAV : 1;
    volatile unsigned int AV : 1;
    volatile unsigned int SV : 1;
    volatile unsigned int V : 1;
    volatile unsigned int C : 1;
} Ifx_CPU_PSW_Bits;


typedef struct _Ifx_CPU_SEGEN_Bits
{
    volatile unsigned int ADFLIP : 8;
    volatile unsigned int ADTYPE : 2;
    volatile unsigned int reserved_10 : 21;
    volatile unsigned int AE : 1;
} Ifx_CPU_SEGEN_Bits;


typedef struct _Ifx_CPU_SMACON_Bits
{
    volatile unsigned int PC : 1;
    volatile unsigned int reserved_1 : 1;
    volatile unsigned int PT : 1;
    volatile unsigned int reserved_3 : 5;
    volatile unsigned int DC : 1;
    volatile unsigned int reserved_9 : 1;
    volatile unsigned int DT : 1;
    volatile unsigned int reserved_11 : 13;
    volatile unsigned int IODT : 1;
    volatile unsigned int reserved_25 : 7;
} Ifx_CPU_SMACON_Bits;


typedef struct _Ifx_CPU_SPROT_ACCENA_Bits
{
    unsigned int EN : 32;
} Ifx_CPU_SPROT_ACCENA_Bits;


typedef struct _Ifx_CPU_SPROT_ACCENB_Bits
{
    unsigned int reserved_0 : 32;
} Ifx_CPU_SPROT_ACCENB_Bits;


typedef struct _Ifx_CPU_SPROT_RGN_ACCENA_Bits
{
    unsigned int EN : 32;
} Ifx_CPU_SPROT_RGN_ACCENA_Bits;


typedef struct _Ifx_CPU_SPROT_RGN_ACCENB_Bits
{
    unsigned int reserved_0 : 32;
} Ifx_CPU_SPROT_RGN_ACCENB_Bits;


typedef struct _Ifx_CPU_SPROT_RGN_LA_Bits
{
    unsigned int reserved_0 : 5;
    unsigned int ADDR : 27;
} Ifx_CPU_SPROT_RGN_LA_Bits;


typedef struct _Ifx_CPU_SPROT_RGN_UA_Bits
{
    unsigned int reserved_0 : 5;
    unsigned int ADDR : 27;
} Ifx_CPU_SPROT_RGN_UA_Bits;


typedef struct _Ifx_CPU_SWEVT_Bits
{
    volatile unsigned int EVTA : 3;
    volatile unsigned int BBM : 1;
    volatile unsigned int BOD : 1;
    volatile unsigned int SUSP : 1;
    volatile unsigned int CNT : 2;
    volatile unsigned int reserved_8 : 24;
} Ifx_CPU_SWEVT_Bits;


typedef struct _Ifx_CPU_SYSCON_Bits
{
    volatile unsigned int FCDSF : 1;
    volatile unsigned int PROTEN : 1;
    volatile unsigned int TPROTEN : 1;
    volatile unsigned int IS : 1;
    volatile unsigned int IT : 1;
    volatile unsigned int reserved_5 : 27;
} Ifx_CPU_SYSCON_Bits;


typedef struct _Ifx_CPU_TASK_ASI_Bits
{
    volatile unsigned int ASI : 5;
    volatile unsigned int reserved_5 : 27;
} Ifx_CPU_TASK_ASI_Bits;


typedef struct _Ifx_CPU_TPS_CON_Bits
{
    volatile unsigned int TEXP0 : 1;
    volatile unsigned int TEXP1 : 1;
    volatile unsigned int TEXP2 : 1;
    volatile unsigned int reserved_3 : 13;
    volatile unsigned int TTRAP : 1;
    volatile unsigned int reserved_17 : 15;
} Ifx_CPU_TPS_CON_Bits;


typedef struct _Ifx_CPU_TPS_TIMER_Bits
{
    volatile unsigned int Timer : 32;
} Ifx_CPU_TPS_TIMER_Bits;


typedef struct _Ifx_CPU_TR_ADR_Bits
{
    volatile unsigned int ADDR : 32;
} Ifx_CPU_TR_ADR_Bits;


typedef struct _Ifx_CPU_TR_EVT_Bits
{
    volatile unsigned int EVTA : 3;
    volatile unsigned int BBM : 1;
    volatile unsigned int BOD : 1;
    volatile unsigned int SUSP : 1;
    volatile unsigned int CNT : 2;
    volatile unsigned int reserved_8 : 4;
    volatile unsigned int TYP : 1;
    volatile unsigned int RNG : 1;
    volatile unsigned int reserved_14 : 1;
    volatile unsigned int ASI_EN : 1;
    volatile unsigned int ASI : 5;
    volatile unsigned int reserved_21 : 6;
    volatile unsigned int AST : 1;
    volatile unsigned int ALD : 1;
    volatile unsigned int reserved_29 : 3;
} Ifx_CPU_TR_EVT_Bits;


typedef struct _Ifx_CPU_TRIG_ACC_Bits
{
    volatile unsigned int T0 : 1;
    volatile unsigned int T1 : 1;
    volatile unsigned int T2 : 1;
    volatile unsigned int T3 : 1;
    volatile unsigned int T4 : 1;
    volatile unsigned int T5 : 1;
    volatile unsigned int T6 : 1;
    volatile unsigned int T7 : 1;
    volatile unsigned int reserved_8 : 24;
} Ifx_CPU_TRIG_ACC_Bits;







typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_A_Bits B;
} Ifx_CPU_A;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_BIV_Bits B;
} Ifx_CPU_BIV;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_BTV_Bits B;
} Ifx_CPU_BTV;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_CCNT_Bits B;
} Ifx_CPU_CCNT;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_CCTRL_Bits B;
} Ifx_CPU_CCTRL;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_COMPAT_Bits B;
} Ifx_CPU_COMPAT;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_CORE_ID_Bits B;
} Ifx_CPU_CORE_ID;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_CPR_L_Bits B;
} Ifx_CPU_CPR_L;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_CPR_U_Bits B;
} Ifx_CPU_CPR_U;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_CPU_ID_Bits B;
} Ifx_CPU_CPU_ID;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_CPXE_Bits B;
} Ifx_CPU_CPXE;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_CREVT_Bits B;
} Ifx_CPU_CREVT;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_CUS_ID_Bits B;
} Ifx_CPU_CUS_ID;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_D_Bits B;
} Ifx_CPU_D;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_DATR_Bits B;
} Ifx_CPU_DATR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_DBGSR_Bits B;
} Ifx_CPU_DBGSR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_DBGTCR_Bits B;
} Ifx_CPU_DBGTCR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_DCON0_Bits B;
} Ifx_CPU_DCON0;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_DCON2_Bits B;
} Ifx_CPU_DCON2;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_DCX_Bits B;
} Ifx_CPU_DCX;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_DEADD_Bits B;
} Ifx_CPU_DEADD;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_DIEAR_Bits B;
} Ifx_CPU_DIEAR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_DIETR_Bits B;
} Ifx_CPU_DIETR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_DMS_Bits B;
} Ifx_CPU_DMS;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_DPR_L_Bits B;
} Ifx_CPU_DPR_L;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_DPR_U_Bits B;
} Ifx_CPU_DPR_U;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_DPRE_Bits B;
} Ifx_CPU_DPRE;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_DPWE_Bits B;
} Ifx_CPU_DPWE;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_DSTR_Bits B;
} Ifx_CPU_DSTR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_EXEVT_Bits B;
} Ifx_CPU_EXEVT;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_FCX_Bits B;
} Ifx_CPU_FCX;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_FPU_TRAP_CON_Bits B;
} Ifx_CPU_FPU_TRAP_CON;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_FPU_TRAP_OPC_Bits B;
} Ifx_CPU_FPU_TRAP_OPC;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_FPU_TRAP_PC_Bits B;
} Ifx_CPU_FPU_TRAP_PC;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_FPU_TRAP_SRC1_Bits B;
} Ifx_CPU_FPU_TRAP_SRC1;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_FPU_TRAP_SRC2_Bits B;
} Ifx_CPU_FPU_TRAP_SRC2;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_FPU_TRAP_SRC3_Bits B;
} Ifx_CPU_FPU_TRAP_SRC3;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_ICNT_Bits B;
} Ifx_CPU_ICNT;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_ICR_Bits B;
} Ifx_CPU_ICR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_ISP_Bits B;
} Ifx_CPU_ISP;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_LCX_Bits B;
} Ifx_CPU_LCX;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_M1CNT_Bits B;
} Ifx_CPU_M1CNT;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_M2CNT_Bits B;
} Ifx_CPU_M2CNT;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_M3CNT_Bits B;
} Ifx_CPU_M3CNT;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_PC_Bits B;
} Ifx_CPU_PC;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_PCON0_Bits B;
} Ifx_CPU_PCON0;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_PCON1_Bits B;
} Ifx_CPU_PCON1;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_PCON2_Bits B;
} Ifx_CPU_PCON2;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_PCXI_Bits B;
} Ifx_CPU_PCXI;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_PIEAR_Bits B;
} Ifx_CPU_PIEAR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_PIETR_Bits B;
} Ifx_CPU_PIETR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_PMA0_Bits B;
} Ifx_CPU_PMA0;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_PMA1_Bits B;
} Ifx_CPU_PMA1;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_PMA2_Bits B;
} Ifx_CPU_PMA2;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_PSTR_Bits B;
} Ifx_CPU_PSTR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_PSW_Bits B;
} Ifx_CPU_PSW;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_SEGEN_Bits B;
} Ifx_CPU_SEGEN;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_SMACON_Bits B;
} Ifx_CPU_SMACON;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_SPROT_ACCENA_Bits B;
} Ifx_CPU_SPROT_ACCENA;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_SPROT_ACCENB_Bits B;
} Ifx_CPU_SPROT_ACCENB;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_SPROT_RGN_ACCENA_Bits B;
} Ifx_CPU_SPROT_RGN_ACCENA;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_SPROT_RGN_ACCENB_Bits B;
} Ifx_CPU_SPROT_RGN_ACCENB;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_SPROT_RGN_LA_Bits B;
} Ifx_CPU_SPROT_RGN_LA;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_SPROT_RGN_UA_Bits B;
} Ifx_CPU_SPROT_RGN_UA;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_SWEVT_Bits B;
} Ifx_CPU_SWEVT;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_SYSCON_Bits B;
} Ifx_CPU_SYSCON;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_TASK_ASI_Bits B;
} Ifx_CPU_TASK_ASI;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_TPS_CON_Bits B;
} Ifx_CPU_TPS_CON;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_TPS_TIMER_Bits B;
} Ifx_CPU_TPS_TIMER;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_TR_ADR_Bits B;
} Ifx_CPU_TR_ADR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_TR_EVT_Bits B;
} Ifx_CPU_TR_EVT;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_TRIG_ACC_Bits B;
} Ifx_CPU_TRIG_ACC;
# 1487 "./0_Src/4_McHal/Tricore/_Reg/IfxCpu_regdef.h"
typedef volatile struct _Ifx_CPU_CPR
{
    Ifx_CPU_CPR_L L;
    Ifx_CPU_CPR_U U;
} Ifx_CPU_CPR;


typedef volatile struct _Ifx_CPU_DPR
{
    Ifx_CPU_DPR_L L;
    Ifx_CPU_DPR_U U;
} Ifx_CPU_DPR;


typedef volatile struct _Ifx_CPU_SPROT_RGN
{
    Ifx_CPU_SPROT_RGN_LA LA;
    Ifx_CPU_SPROT_RGN_UA UA;
    Ifx_CPU_SPROT_RGN_ACCENA ACCENA;
    Ifx_CPU_SPROT_RGN_ACCENB ACCENB;
} Ifx_CPU_SPROT_RGN;


typedef volatile struct _Ifx_CPU_TPS
{
    Ifx_CPU_TPS_CON CON;
    Ifx_CPU_TPS_TIMER TIMER[3];
} Ifx_CPU_TPS;


typedef volatile struct _Ifx_CPU_TR
{
    Ifx_CPU_TR_EVT EVT;
    Ifx_CPU_TR_ADR ADR;
} Ifx_CPU_TR;
# 1534 "./0_Src/4_McHal/Tricore/_Reg/IfxCpu_regdef.h"
typedef volatile struct _Ifx_CPU
{
    unsigned char reserved_0[4144];
    Ifx_CPU_SEGEN SEGEN;
    unsigned char reserved_1034[28624];
    Ifx_CPU_TASK_ASI TASK_ASI;
    unsigned char reserved_8008[248];
    Ifx_CPU_PMA0 PMA0;
    Ifx_CPU_PMA1 PMA1;
    Ifx_CPU_PMA2 PMA2;
    unsigned char reserved_810C[3828];
    Ifx_CPU_DCON2 DCON2;
    unsigned char reserved_9004[8];
    Ifx_CPU_SMACON SMACON;
    Ifx_CPU_DSTR DSTR;
    unsigned char reserved_9014[4];
    Ifx_CPU_DATR DATR;
    Ifx_CPU_DEADD DEADD;
    Ifx_CPU_DIEAR DIEAR;
    Ifx_CPU_DIETR DIETR;
    unsigned char reserved_9028[24];
    Ifx_CPU_DCON0 DCON0;
    unsigned char reserved_9044[444];
    Ifx_CPU_PSTR PSTR;
    Ifx_CPU_PCON1 PCON1;
    Ifx_CPU_PCON2 PCON2;
    Ifx_CPU_PCON0 PCON0;
    Ifx_CPU_PIEAR PIEAR;
    Ifx_CPU_PIETR PIETR;
    unsigned char reserved_9218[488];
    Ifx_CPU_COMPAT COMPAT;
    unsigned char reserved_9404[3068];
    Ifx_CPU_FPU_TRAP_CON FPU_TRAP_CON;
    Ifx_CPU_FPU_TRAP_PC FPU_TRAP_PC;
    Ifx_CPU_FPU_TRAP_OPC FPU_TRAP_OPC;
    unsigned char reserved_A00C[4];
    Ifx_CPU_FPU_TRAP_SRC1 FPU_TRAP_SRC1;
    Ifx_CPU_FPU_TRAP_SRC2 FPU_TRAP_SRC2;
    Ifx_CPU_FPU_TRAP_SRC3 FPU_TRAP_SRC3;
    unsigned char reserved_A01C[8164];
    Ifx_CPU_DPR DPR[16];
    unsigned char reserved_C080[3968];
    Ifx_CPU_CPR CPR[8];
    unsigned char reserved_D040[4032];
    Ifx_CPU_CPXE CPXE[4];
    Ifx_CPU_DPRE DPRE[4];
    Ifx_CPU_DPWE DPWE[4];
    unsigned char reserved_E030[976];
    Ifx_CPU_TPS TPS;
    unsigned char reserved_E410[3056];
    Ifx_CPU_TR TR[8];
    unsigned char reserved_F040[3008];
    Ifx_CPU_CCTRL CCTRL;
    Ifx_CPU_CCNT CCNT;
    Ifx_CPU_ICNT ICNT;
    Ifx_CPU_M1CNT M1CNT;
    Ifx_CPU_M2CNT M2CNT;
    Ifx_CPU_M3CNT M3CNT;
    unsigned char reserved_FC18[232];
    Ifx_CPU_DBGSR DBGSR;
    unsigned char reserved_FD04[4];
    Ifx_CPU_EXEVT EXEVT;
    Ifx_CPU_CREVT CREVT;
    Ifx_CPU_SWEVT SWEVT;
    unsigned char reserved_FD14[28];
    Ifx_CPU_TRIG_ACC TRIG_ACC;
    unsigned char reserved_FD34[12];
    Ifx_CPU_DMS DMS;
    Ifx_CPU_DCX DCX;
    Ifx_CPU_DBGTCR DBGTCR;
    unsigned char reserved_FD4C[180];
    Ifx_CPU_PCXI PCXI;
    Ifx_CPU_PSW PSW;
    Ifx_CPU_PC PC;
    unsigned char reserved_FE0C[8];
    Ifx_CPU_SYSCON SYSCON;
    Ifx_CPU_CPU_ID CPU_ID;
    Ifx_CPU_CORE_ID CORE_ID;
    Ifx_CPU_BIV BIV;
    Ifx_CPU_BTV BTV;
    Ifx_CPU_ISP ISP;
    Ifx_CPU_ICR ICR;
    unsigned char reserved_FE30[8];
    Ifx_CPU_FCX FCX;
    Ifx_CPU_LCX LCX;
    unsigned char reserved_FE40[16];
    Ifx_CPU_CUS_ID CUS_ID;
    unsigned char reserved_FE54[172];
    Ifx_CPU_D D[16];
    unsigned char reserved_FF40[64];
    Ifx_CPU_A A[16];
    unsigned char reserved_FFC0[64];
} Ifx_CPU;


typedef volatile struct _Ifx_CPU_SPROT
{
    unsigned char reserved_0[57344];
    Ifx_CPU_SPROT_RGN RGN[8];
    unsigned char reserved_E080[128];
    Ifx_CPU_SPROT_ACCENA ACCENA;
    Ifx_CPU_SPROT_ACCENB ACCENB;
    unsigned char reserved_E108[7928];
} Ifx_CPU_SPROT;
# 55 "./0_Src/4_McHal/Tricore/_Reg/IfxCpu_reg.h" 2
# 41 "./0_Src/4_McHal/Tricore/_Impl/IfxCpu_cfg.h" 2
# 64 "./0_Src/4_McHal/Tricore/_Impl/IfxCpu_cfg.h"
typedef enum
{
    IfxCpu_DBGST_HALT_run = 0,
    IfxCpu_DBGST_HALT_halt = 1
} IfxCpu_DBGST_HALT;



typedef enum
{
    IfxCpu_PMCSR_PMST_normalMode = 1,
    IfxCpu_PMCSR_PMST_idleModeRequest = 2,
    IfxCpu_PMCSR_PMST_idleMode = 3,
    IfxCpu_PMCSR_PMST_sleepModeRequest = 4,
    IfxCpu_PMCSR_PMST_standbyModeRequest = 6
} IfxCpu_PMCSR_PMST;



typedef enum
{
    IfxCpu_ResourceCpu_0 = 0,
    IfxCpu_ResourceCpu_1 = 1,
    IfxCpu_ResourceCpu_2 = 2,
    IfxCpu_ResourceCpu_none
} IfxCpu_ResourceCpu;





extern const IfxModule_IndexMap IfxCpu_cfg_indexMap[(3)];
# 49 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h" 2
# 1 "./0_Src/4_McHal/Tricore/_Reg/IfxSrc_reg.h" 1
# 36 "./0_Src/4_McHal/Tricore/_Reg/IfxSrc_reg.h"
# 1 "./0_Src/4_McHal/Tricore/_Reg/IfxSrc_regdef.h" 1
# 45 "./0_Src/4_McHal/Tricore/_Reg/IfxSrc_regdef.h"
typedef struct _Ifx_SRC_SRCR_Bits
{
    unsigned int SRPN : 8;
    unsigned int reserved_8 : 2;
    unsigned int SRE : 1;
    unsigned int TOS : 2;
    unsigned int reserved_13 : 3;
    unsigned int ECC : 6;
    unsigned int reserved_22 : 2;
    unsigned int SRR : 1;
    unsigned int CLRR : 1;
    unsigned int SETR : 1;
    unsigned int IOV : 1;
    unsigned int IOVCLR : 1;
    unsigned int SWS : 1;
    unsigned int SWSCLR : 1;
    unsigned int reserved_31 : 1;
} Ifx_SRC_SRCR_Bits;







typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SRC_SRCR_Bits B;
} Ifx_SRC_SRCR;
# 89 "./0_Src/4_McHal/Tricore/_Reg/IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_AGBT
{
    Ifx_SRC_SRCR SR;
} Ifx_SRC_AGBT;


typedef volatile struct _Ifx_SRC_ASCLIN
{
    Ifx_SRC_SRCR TX;
    Ifx_SRC_SRCR RX;
    Ifx_SRC_SRCR ERR;
} Ifx_SRC_ASCLIN;


typedef volatile struct _Ifx_SRC_BCUSPB
{
    Ifx_SRC_SRCR SBSRC;
} Ifx_SRC_BCUSPB;


typedef volatile struct _Ifx_SRC_CAN
{
    Ifx_SRC_SRCR INT[16];
} Ifx_SRC_CAN;


typedef volatile struct _Ifx_SRC_CCU6
{
    Ifx_SRC_SRCR SR0;
    Ifx_SRC_SRCR SR1;
    Ifx_SRC_SRCR SR2;
    Ifx_SRC_SRCR SR3;
} Ifx_SRC_CCU6;


typedef volatile struct _Ifx_SRC_CERBERUS
{
    Ifx_SRC_SRCR SR[2];
} Ifx_SRC_CERBERUS;


typedef volatile struct _Ifx_SRC_CIF
{
    Ifx_SRC_SRCR MI;
    Ifx_SRC_SRCR MIEP;
    Ifx_SRC_SRCR ISP;
    Ifx_SRC_SRCR MJPEG;
} Ifx_SRC_CIF;


typedef volatile struct _Ifx_SRC_CPU
{
    Ifx_SRC_SRCR SBSRC;
} Ifx_SRC_CPU;


typedef volatile struct _Ifx_SRC_DAM
{
    Ifx_SRC_SRCR SR[6];
} Ifx_SRC_DAM;


typedef volatile struct _Ifx_SRC_DMA
{
    Ifx_SRC_SRCR ERR;
    unsigned char reserved_4[12];
    Ifx_SRC_SRCR CH[64];
} Ifx_SRC_DMA;


typedef volatile struct _Ifx_SRC_DSADC
{
    Ifx_SRC_SRCR SRM;
    Ifx_SRC_SRCR SRA;
} Ifx_SRC_DSADC;


typedef volatile struct _Ifx_SRC_EMEM
{
    Ifx_SRC_SRCR SR;
} Ifx_SRC_EMEM;


typedef volatile struct _Ifx_SRC_ERAY
{
    Ifx_SRC_SRCR INT[2];
    Ifx_SRC_SRCR TINT[2];
    Ifx_SRC_SRCR NDAT[2];
    Ifx_SRC_SRCR MBSC[2];
    Ifx_SRC_SRCR OBUSY;
    Ifx_SRC_SRCR IBUSY;
    unsigned char reserved_28[40];
} Ifx_SRC_ERAY;


typedef volatile struct _Ifx_SRC_ETH
{
    Ifx_SRC_SRCR SR;
} Ifx_SRC_ETH;


typedef volatile struct _Ifx_SRC_FCE
{
    Ifx_SRC_SRCR SR;
} Ifx_SRC_FCE;


typedef volatile struct _Ifx_SRC_GPSR
{
    Ifx_SRC_SRCR SR0;
    Ifx_SRC_SRCR SR1;
    Ifx_SRC_SRCR SR2;
    Ifx_SRC_SRCR SR3;
    unsigned char reserved_10[16];
} Ifx_SRC_GPSR;


typedef volatile struct _Ifx_SRC_GPT12
{
    Ifx_SRC_SRCR CIRQ;
    Ifx_SRC_SRCR T2;
    Ifx_SRC_SRCR T3;
    Ifx_SRC_SRCR T4;
    Ifx_SRC_SRCR T5;
    Ifx_SRC_SRCR T6;
    unsigned char reserved_18[24];
} Ifx_SRC_GPT12;


typedef volatile struct _Ifx_SRC_GTM
{
    Ifx_SRC_SRCR AEIIRQ;
    Ifx_SRC_SRCR ARUIRQ[3];
    unsigned char reserved_10[4];
    Ifx_SRC_SRCR BRCIRQ;
    Ifx_SRC_SRCR CMPIRQ;
    Ifx_SRC_SRCR SPEIRQ[2];
    unsigned char reserved_24[8];
    Ifx_SRC_SRCR PSM[1][8];
    unsigned char reserved_4C[88];
    Ifx_SRC_SRCR DPLL[27];
    unsigned char reserved_110[96];
    Ifx_SRC_SRCR ERR;
    unsigned char reserved_174[12];
    Ifx_SRC_SRCR TIM[4][8];
    unsigned char reserved_200[384];
    Ifx_SRC_SRCR MCS[4][8];
    unsigned char reserved_400[384];
    Ifx_SRC_SRCR TOM[3][8];
    unsigned char reserved_5E0[416];
    Ifx_SRC_SRCR ATOM[5][4];
    unsigned char reserved_7D0[304];
    Ifx_SRC_SRCR MCSW0[4];
    unsigned char reserved_910[48];
    Ifx_SRC_SRCR MCSW1[4];
} Ifx_SRC_GTM;


typedef volatile struct _Ifx_SRC_HSCT
{
    Ifx_SRC_SRCR SR;
} Ifx_SRC_HSCT;


typedef volatile struct _Ifx_SRC_HSM
{
    Ifx_SRC_SRCR HSM[2];
} Ifx_SRC_HSM;


typedef volatile struct _Ifx_SRC_HSSL
{
    Ifx_SRC_SRCR COK;
    Ifx_SRC_SRCR RDI;
    Ifx_SRC_SRCR ERR;
    Ifx_SRC_SRCR TRG;
} Ifx_SRC_HSSL;


typedef volatile struct _Ifx_SRC_I2C
{
    Ifx_SRC_SRCR BREQ;
    Ifx_SRC_SRCR LBREQ;
    Ifx_SRC_SRCR SREQ;
    Ifx_SRC_SRCR LSREQ;
    Ifx_SRC_SRCR ERR;
    Ifx_SRC_SRCR P;
    unsigned char reserved_18[56];
} Ifx_SRC_I2C;


typedef volatile struct _Ifx_SRC_LMU
{
    Ifx_SRC_SRCR SR;
} Ifx_SRC_LMU;


typedef volatile struct _Ifx_SRC_MSC
{
    Ifx_SRC_SRCR SR0;
    Ifx_SRC_SRCR SR1;
    Ifx_SRC_SRCR SR2;
    Ifx_SRC_SRCR SR3;
    Ifx_SRC_SRCR SR4;
} Ifx_SRC_MSC;


typedef volatile struct _Ifx_SRC_PMU
{
    Ifx_SRC_SRCR SR;
} Ifx_SRC_PMU;


typedef volatile struct _Ifx_SRC_PSI5
{
    Ifx_SRC_SRCR SR[8];
} Ifx_SRC_PSI5;


typedef volatile struct _Ifx_SRC_PSI5S
{
    Ifx_SRC_SRCR SR[8];
} Ifx_SRC_PSI5S;


typedef volatile struct _Ifx_SRC_QSPI
{
    Ifx_SRC_SRCR TX;
    Ifx_SRC_SRCR RX;
    Ifx_SRC_SRCR ERR;
    Ifx_SRC_SRCR PT;
    unsigned char reserved_10[4];
    Ifx_SRC_SRCR U;
} Ifx_SRC_QSPI;


typedef volatile struct _Ifx_SRC_SCU
{
    Ifx_SRC_SRCR DTS;
    Ifx_SRC_SRCR ERU[4];
} Ifx_SRC_SCU;


typedef volatile struct _Ifx_SRC_SENT
{
    Ifx_SRC_SRCR SR[10];
} Ifx_SRC_SENT;


typedef volatile struct _Ifx_SRC_SMU
{
    Ifx_SRC_SRCR SR[3];
} Ifx_SRC_SMU;


typedef volatile struct _Ifx_SRC_STM
{
    Ifx_SRC_SRCR SR0;
    Ifx_SRC_SRCR SR1;
} Ifx_SRC_STM;


typedef volatile struct _Ifx_SRC_VADCCG
{
    Ifx_SRC_SRCR SR0;
    Ifx_SRC_SRCR SR1;
    Ifx_SRC_SRCR SR2;
    Ifx_SRC_SRCR SR3;
} Ifx_SRC_VADCCG;


typedef volatile struct _Ifx_SRC_VADCG
{
    Ifx_SRC_SRCR SR0;
    Ifx_SRC_SRCR SR1;
    Ifx_SRC_SRCR SR2;
    Ifx_SRC_SRCR SR3;
} Ifx_SRC_VADCG;


typedef volatile struct _Ifx_SRC_XBAR
{
    Ifx_SRC_SRCR SRC;
} Ifx_SRC_XBAR;
# 385 "./0_Src/4_McHal/Tricore/_Reg/IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_GAGBT
{
    Ifx_SRC_AGBT AGBT[1];
} Ifx_SRC_GAGBT;


typedef volatile struct _Ifx_SRC_GASCLIN
{
    Ifx_SRC_ASCLIN ASCLIN[4];
} Ifx_SRC_GASCLIN;


typedef volatile struct _Ifx_SRC_GBCU
{
    Ifx_SRC_BCUSPB SPB;
} Ifx_SRC_GBCU;


typedef volatile struct _Ifx_SRC_GCAN
{
    Ifx_SRC_CAN CAN[1];
} Ifx_SRC_GCAN;


typedef volatile struct _Ifx_SRC_GCCU6
{
    Ifx_SRC_CCU6 CCU6[2];
} Ifx_SRC_GCCU6;


typedef volatile struct _Ifx_SRC_GCERBERUS
{
    Ifx_SRC_CERBERUS CERBERUS;
} Ifx_SRC_GCERBERUS;


typedef volatile struct _Ifx_SRC_GCIF
{
    Ifx_SRC_CIF CIF[1];
} Ifx_SRC_GCIF;


typedef volatile struct _Ifx_SRC_GCPU
{
    Ifx_SRC_CPU CPU[3];
} Ifx_SRC_GCPU;


typedef volatile struct _Ifx_SRC_GDAM
{
    Ifx_SRC_DAM DAM[1];
} Ifx_SRC_GDAM;


typedef volatile struct _Ifx_SRC_GDMA
{
    Ifx_SRC_DMA DMA[1];
} Ifx_SRC_GDMA;


typedef volatile struct _Ifx_SRC_GDSADC
{
    Ifx_SRC_DSADC DSADC[6];
} Ifx_SRC_GDSADC;


typedef volatile struct _Ifx_SRC_GEMEM
{
    Ifx_SRC_EMEM EMEM[1];
} Ifx_SRC_GEMEM;


typedef volatile struct _Ifx_SRC_GERAY
{
    Ifx_SRC_ERAY ERAY[1];
} Ifx_SRC_GERAY;


typedef volatile struct _Ifx_SRC_GETH
{
    Ifx_SRC_ETH ETH[1];
} Ifx_SRC_GETH;


typedef volatile struct _Ifx_SRC_GFCE
{
    Ifx_SRC_FCE FCE[1];
} Ifx_SRC_GFCE;


typedef volatile struct _Ifx_SRC_GGPSR
{
    Ifx_SRC_GPSR GPSR[3];
} Ifx_SRC_GGPSR;


typedef volatile struct _Ifx_SRC_GGPT12
{
    Ifx_SRC_GPT12 GPT12[1];
} Ifx_SRC_GGPT12;


typedef volatile struct _Ifx_SRC_GGTM
{
    Ifx_SRC_GTM GTM[1];
} Ifx_SRC_GGTM;


typedef volatile struct _Ifx_SRC_GHSCT
{
    Ifx_SRC_HSCT HSCT[1];
} Ifx_SRC_GHSCT;


typedef volatile struct _Ifx_SRC_GHSM
{
    Ifx_SRC_HSM HSM[1];
} Ifx_SRC_GHSM;


typedef volatile struct _Ifx_SRC_GHSSL
{
    Ifx_SRC_HSSL HSSL[4];
    Ifx_SRC_SRCR EXI;
} Ifx_SRC_GHSSL;


typedef volatile struct _Ifx_SRC_GI2C
{
    Ifx_SRC_I2C I2C[1];
} Ifx_SRC_GI2C;


typedef volatile struct _Ifx_SRC_GLMU
{
    Ifx_SRC_LMU LMU[1];
} Ifx_SRC_GLMU;


typedef volatile struct _Ifx_SRC_GMSC
{
    Ifx_SRC_MSC MSC[2];
} Ifx_SRC_GMSC;


typedef volatile struct _Ifx_SRC_GPMU
{
    Ifx_SRC_PMU PMU[2];
} Ifx_SRC_GPMU;


typedef volatile struct _Ifx_SRC_GPSI5
{
    Ifx_SRC_PSI5 PSI5[1];
} Ifx_SRC_GPSI5;


typedef volatile struct _Ifx_SRC_GPSI5S
{
    Ifx_SRC_PSI5S PSI5S[1];
} Ifx_SRC_GPSI5S;


typedef volatile struct _Ifx_SRC_GQSPI
{
    Ifx_SRC_QSPI QSPI[4];
} Ifx_SRC_GQSPI;


typedef volatile struct _Ifx_SRC_GSCU
{
    Ifx_SRC_SCU SCU;
} Ifx_SRC_GSCU;


typedef volatile struct _Ifx_SRC_GSENT
{
    Ifx_SRC_SENT SENT[1];
} Ifx_SRC_GSENT;


typedef volatile struct _Ifx_SRC_GSMU
{
    Ifx_SRC_SMU SMU[1];
} Ifx_SRC_GSMU;


typedef volatile struct _Ifx_SRC_GSTM
{
    Ifx_SRC_STM STM[3];
} Ifx_SRC_GSTM;


typedef volatile struct _Ifx_SRC_GVADC
{
    Ifx_SRC_VADCG G[8];
    unsigned char reserved_80[160];
    Ifx_SRC_VADCCG CG[2];
} Ifx_SRC_GVADC;


typedef volatile struct _Ifx_SRC_GXBAR
{
    Ifx_SRC_XBAR XBAR;
} Ifx_SRC_GXBAR;
# 602 "./0_Src/4_McHal/Tricore/_Reg/IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC
{
    Ifx_SRC_GCPU CPU;
    unsigned char reserved_C[20];
    Ifx_SRC_GEMEM EMEM;
    Ifx_SRC_GAGBT AGBT;
    unsigned char reserved_28[24];
    Ifx_SRC_GBCU BCU;
    unsigned char reserved_44[4];
    Ifx_SRC_GXBAR XBAR;
    unsigned char reserved_4C[4];
    Ifx_SRC_GCERBERUS CERBERUS;
    unsigned char reserved_58[40];
    Ifx_SRC_GASCLIN ASCLIN;
    unsigned char reserved_B0[224];
    Ifx_SRC_GQSPI QSPI;
    unsigned char reserved_1F0[160];
    Ifx_SRC_GHSCT HSCT;
    unsigned char reserved_294[12];
    Ifx_SRC_GHSSL HSSL;
    unsigned char reserved_2E4[28];
    Ifx_SRC_GI2C I2C;
    Ifx_SRC_GSENT SENT;
    unsigned char reserved_378[104];
    Ifx_SRC_GMSC MSC;
    unsigned char reserved_408[24];
    Ifx_SRC_GCCU6 CCU6;
    unsigned char reserved_440[32];
    Ifx_SRC_GGPT12 GPT12;
    Ifx_SRC_GSTM STM;
    unsigned char reserved_4A8[8];
    Ifx_SRC_GFCE FCE;
    unsigned char reserved_4B4[60];
    Ifx_SRC_GDMA DMA;
    unsigned char reserved_600[752];
    Ifx_SRC_GETH ETH;
    unsigned char reserved_8F4[12];
    Ifx_SRC_GCAN CAN;
    unsigned char reserved_940[64];
    Ifx_SRC_GVADC VADC;
    unsigned char reserved_AC0[144];
    Ifx_SRC_GDSADC DSADC;
    unsigned char reserved_B80[96];
    Ifx_SRC_GERAY ERAY;
    Ifx_SRC_GPMU PMU;
    unsigned char reserved_C38[136];
    Ifx_SRC_GHSM HSM;
    unsigned char reserved_CC8[8];
    Ifx_SRC_GSCU SCU;
    unsigned char reserved_CE4[44];
    Ifx_SRC_GSMU SMU;
    unsigned char reserved_D1C[20];
    Ifx_SRC_GPSI5 PSI5;
    unsigned char reserved_D50[32];
    Ifx_SRC_GDAM DAM;
    unsigned char reserved_D88[24];
    Ifx_SRC_GCIF CIF;
    unsigned char reserved_DB0[48];
    Ifx_SRC_GLMU LMU;
    unsigned char reserved_DE4[12];
    Ifx_SRC_GPSI5S PSI5S;
    unsigned char reserved_E10[496];
    Ifx_SRC_GGPSR GPSR;
    unsigned char reserved_1060[1440];
    Ifx_SRC_GGTM GTM;
    unsigned char reserved_1F50[176];
} Ifx_SRC;
# 37 "./0_Src/4_McHal/Tricore/_Reg/IfxSrc_reg.h" 2
# 50 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h" 2
# 1 "./0_Src/4_McHal/Tricore/_Reg/IfxScu_reg.h" 1
# 36 "./0_Src/4_McHal/Tricore/_Reg/IfxScu_reg.h"
# 1 "./0_Src/4_McHal/Tricore/_Reg/IfxScu_regdef.h" 1
# 45 "./0_Src/4_McHal/Tricore/_Reg/IfxScu_regdef.h"
typedef struct _Ifx_SCU_ACCEN0_Bits
{
    unsigned int EN0 : 1;
    unsigned int EN1 : 1;
    unsigned int EN2 : 1;
    unsigned int EN3 : 1;
    unsigned int EN4 : 1;
    unsigned int EN5 : 1;
    unsigned int EN6 : 1;
    unsigned int EN7 : 1;
    unsigned int EN8 : 1;
    unsigned int EN9 : 1;
    unsigned int EN10 : 1;
    unsigned int EN11 : 1;
    unsigned int EN12 : 1;
    unsigned int EN13 : 1;
    unsigned int EN14 : 1;
    unsigned int EN15 : 1;
    unsigned int EN16 : 1;
    unsigned int EN17 : 1;
    unsigned int EN18 : 1;
    unsigned int EN19 : 1;
    unsigned int EN20 : 1;
    unsigned int EN21 : 1;
    unsigned int EN22 : 1;
    unsigned int EN23 : 1;
    unsigned int EN24 : 1;
    unsigned int EN25 : 1;
    unsigned int EN26 : 1;
    unsigned int EN27 : 1;
    unsigned int EN28 : 1;
    unsigned int EN29 : 1;
    unsigned int EN30 : 1;
    unsigned int EN31 : 1;
} Ifx_SCU_ACCEN0_Bits;


typedef struct _Ifx_SCU_ACCEN1_Bits
{
    unsigned int reserved_0 : 32;
} Ifx_SCU_ACCEN1_Bits;


typedef struct _Ifx_SCU_ARSTDIS_Bits
{
    unsigned int STM0DIS : 1;
    unsigned int STM1DIS : 1;
    unsigned int STM2DIS : 1;
    unsigned int reserved_3 : 29;
} Ifx_SCU_ARSTDIS_Bits;


typedef struct _Ifx_SCU_CCUCON0_Bits
{
    unsigned int BAUD1DIV : 4;
    unsigned int BAUD2DIV : 4;
    unsigned int SRIDIV : 4;
    unsigned int LPDIV : 4;
    unsigned int SPBDIV : 4;
    unsigned int FSI2DIV : 2;
    unsigned int reserved_22 : 2;
    unsigned int FSIDIV : 2;
    unsigned int ADCCLKSEL : 2;
    unsigned int CLKSEL : 2;
    unsigned int UP : 1;
    unsigned int LCK : 1;
} Ifx_SCU_CCUCON0_Bits;


typedef struct _Ifx_SCU_CCUCON1_Bits
{
    unsigned int CANDIV : 4;
    unsigned int ERAYDIV : 4;
    unsigned int STMDIV : 4;
    unsigned int GTMDIV : 4;
    unsigned int ETHDIV : 4;
    unsigned int ASCLINFDIV : 4;
    unsigned int ASCLINSDIV : 4;
    unsigned int INSEL : 2;
    unsigned int UP : 1;
    unsigned int LCK : 1;
} Ifx_SCU_CCUCON1_Bits;


typedef struct _Ifx_SCU_CCUCON2_Bits
{
    unsigned int BBBDIV : 4;
    unsigned int reserved_4 : 26;
    unsigned int UP : 1;
    unsigned int LCK : 1;
} Ifx_SCU_CCUCON2_Bits;


typedef struct _Ifx_SCU_CCUCON3_Bits
{
    unsigned int PLLDIV : 6;
    unsigned int PLLSEL : 2;
    unsigned int PLLERAYDIV : 6;
    unsigned int PLLERAYSEL : 2;
    unsigned int SRIDIV : 6;
    unsigned int SRISEL : 2;
    unsigned int reserved_24 : 5;
    unsigned int SLCK : 1;
    unsigned int UP : 1;
    unsigned int LCK : 1;
} Ifx_SCU_CCUCON3_Bits;


typedef struct _Ifx_SCU_CCUCON4_Bits
{
    unsigned int SPBDIV : 6;
    unsigned int SPBSEL : 2;
    unsigned int GTMDIV : 6;
    unsigned int GTMSEL : 2;
    unsigned int STMDIV : 6;
    unsigned int STMSEL : 2;
    unsigned int reserved_24 : 5;
    unsigned int SLCK : 1;
    unsigned int UP : 1;
    unsigned int LCK : 1;
} Ifx_SCU_CCUCON4_Bits;


typedef struct _Ifx_SCU_CCUCON5_Bits
{
    unsigned int MAXDIV : 4;
    unsigned int reserved_4 : 26;
    unsigned int UP : 1;
    unsigned int LCK : 1;
} Ifx_SCU_CCUCON5_Bits;


typedef struct _Ifx_SCU_CCUCON6_Bits
{
    unsigned int CPU0DIV : 6;
    unsigned int reserved_6 : 26;
} Ifx_SCU_CCUCON6_Bits;


typedef struct _Ifx_SCU_CCUCON7_Bits
{
    unsigned int CPU1DIV : 6;
    unsigned int reserved_6 : 26;
} Ifx_SCU_CCUCON7_Bits;


typedef struct _Ifx_SCU_CCUCON8_Bits
{
    unsigned int CPU2DIV : 6;
    unsigned int reserved_6 : 26;
} Ifx_SCU_CCUCON8_Bits;


typedef struct _Ifx_SCU_CCUCON9_Bits
{
    unsigned int ADCDIV : 6;
    unsigned int ADCSEL : 2;
    unsigned int reserved_8 : 21;
    unsigned int SLCK : 1;
    unsigned int UP : 1;
    unsigned int LCK : 1;
} Ifx_SCU_CCUCON9_Bits;


typedef struct _Ifx_SCU_CHIPID_Bits
{
    unsigned int CHREV : 6;
    unsigned int CHTEC : 2;
    unsigned int CHID : 8;
    unsigned int EEA : 1;
    unsigned int UCODE : 7;
    unsigned int FSIZE : 4;
    unsigned int SP : 2;
    unsigned int SEC : 1;
    unsigned int reserved_31 : 1;
} Ifx_SCU_CHIPID_Bits;


typedef struct _Ifx_SCU_DTSCON_Bits
{
    unsigned int PWD : 1;
    unsigned int START : 1;
    unsigned int reserved_2 : 2;
    unsigned int CAL : 20;
    unsigned int reserved_24 : 7;
    unsigned int SLCK : 1;
} Ifx_SCU_DTSCON_Bits;


typedef struct _Ifx_SCU_DTSLIM_Bits
{
    unsigned int LOWER : 10;
    unsigned int reserved_10 : 5;
    unsigned int LLU : 1;
    unsigned int UPPER : 10;
    unsigned int reserved_26 : 4;
    unsigned int SLCK : 1;
    unsigned int UOF : 1;
} Ifx_SCU_DTSLIM_Bits;


typedef struct _Ifx_SCU_DTSSTAT_Bits
{
    unsigned int RESULT : 10;
    unsigned int reserved_10 : 4;
    unsigned int RDY : 1;
    unsigned int BUSY : 1;
    unsigned int reserved_16 : 16;
} Ifx_SCU_DTSSTAT_Bits;


typedef struct _Ifx_SCU_EICR_Bits
{
    unsigned int reserved_0 : 4;
    unsigned int EXIS0 : 3;
    unsigned int reserved_7 : 1;
    unsigned int FEN0 : 1;
    unsigned int REN0 : 1;
    unsigned int LDEN0 : 1;
    unsigned int EIEN0 : 1;
    unsigned int INP0 : 3;
    unsigned int reserved_15 : 5;
    unsigned int EXIS1 : 3;
    unsigned int reserved_23 : 1;
    unsigned int FEN1 : 1;
    unsigned int REN1 : 1;
    unsigned int LDEN1 : 1;
    unsigned int EIEN1 : 1;
    unsigned int INP1 : 3;
    unsigned int reserved_31 : 1;
} Ifx_SCU_EICR_Bits;


typedef struct _Ifx_SCU_EIFR_Bits
{
    unsigned int INTF0 : 1;
    unsigned int INTF1 : 1;
    unsigned int INTF2 : 1;
    unsigned int INTF3 : 1;
    unsigned int INTF4 : 1;
    unsigned int INTF5 : 1;
    unsigned int INTF6 : 1;
    unsigned int INTF7 : 1;
    unsigned int reserved_8 : 24;
} Ifx_SCU_EIFR_Bits;


typedef struct _Ifx_SCU_EMSR_Bits
{
    unsigned int POL : 1;
    unsigned int MODE : 1;
    unsigned int ENON : 1;
    unsigned int PSEL : 1;
    unsigned int reserved_4 : 12;
    unsigned int EMSF : 1;
    unsigned int SEMSF : 1;
    unsigned int reserved_18 : 6;
    unsigned int EMSFM : 2;
    unsigned int SEMSFM : 2;
    unsigned int reserved_28 : 4;
} Ifx_SCU_EMSR_Bits;


typedef struct _Ifx_SCU_ESRCFG_Bits
{
    unsigned int reserved_0 : 7;
    unsigned int EDCON : 2;
    unsigned int reserved_9 : 23;
} Ifx_SCU_ESRCFG_Bits;


typedef struct _Ifx_SCU_ESROCFG_Bits
{
    unsigned int ARI : 1;
    unsigned int ARC : 1;
    unsigned int reserved_2 : 30;
} Ifx_SCU_ESROCFG_Bits;


typedef struct _Ifx_SCU_EVR13CON_Bits
{
    unsigned int reserved_0 : 28;
    unsigned int EVR13OFF : 1;
    unsigned int BPEVR13OFF : 1;
    unsigned int reserved_30 : 1;
    unsigned int LCK : 1;
} Ifx_SCU_EVR13CON_Bits;


typedef struct _Ifx_SCU_EVR33CON_Bits
{
    unsigned int reserved_0 : 28;
    unsigned int EVR33OFF : 1;
    unsigned int BPEVR33OFF : 1;
    unsigned int reserved_30 : 1;
    unsigned int LCK : 1;
} Ifx_SCU_EVR33CON_Bits;


typedef struct _Ifx_SCU_EVRADCSTAT_Bits
{
    unsigned int ADC13V : 8;
    unsigned int ADC33V : 8;
    unsigned int ADCSWDV : 8;
    unsigned int reserved_24 : 7;
    unsigned int VAL : 1;
} Ifx_SCU_EVRADCSTAT_Bits;


typedef struct _Ifx_SCU_EVRDVSTAT_Bits
{
    unsigned int DVS13TRIM : 8;
    unsigned int reserved_8 : 8;
    unsigned int DVS33TRIM : 8;
    unsigned int reserved_24 : 7;
    unsigned int VAL : 1;
} Ifx_SCU_EVRDVSTAT_Bits;


typedef struct _Ifx_SCU_EVRMONCTRL_Bits
{
    unsigned int EVR13OVMOD : 2;
    unsigned int reserved_2 : 2;
    unsigned int EVR13UVMOD : 2;
    unsigned int reserved_6 : 2;
    unsigned int EVR33OVMOD : 2;
    unsigned int reserved_10 : 2;
    unsigned int EVR33UVMOD : 2;
    unsigned int reserved_14 : 2;
    unsigned int SWDOVMOD : 2;
    unsigned int reserved_18 : 2;
    unsigned int SWDUVMOD : 2;
    unsigned int reserved_22 : 8;
    unsigned int SLCK : 1;
    unsigned int reserved_31 : 1;
} Ifx_SCU_EVRMONCTRL_Bits;


typedef struct _Ifx_SCU_EVROSCCTRL_Bits
{
    unsigned int OSCTRIM : 10;
    unsigned int OSCPTAT : 6;
    unsigned int OSCANASEL : 4;
    unsigned int HPBGTRIM : 7;
    unsigned int HPBGCLKEN : 1;
    unsigned int OSC3V3 : 1;
    unsigned int reserved_29 : 2;
    unsigned int LCK : 1;
} Ifx_SCU_EVROSCCTRL_Bits;


typedef struct _Ifx_SCU_EVROVMON_Bits
{
    unsigned int EVR13OVVAL : 8;
    unsigned int EVR33OVVAL : 8;
    unsigned int SWDOVVAL : 8;
    unsigned int reserved_24 : 6;
    unsigned int SLCK : 1;
    unsigned int LCK : 1;
} Ifx_SCU_EVROVMON_Bits;


typedef struct _Ifx_SCU_EVRRSTCON_Bits
{
    unsigned int RST13TRIM : 8;
    unsigned int reserved_8 : 16;
    unsigned int RST13OFF : 1;
    unsigned int BPRST13OFF : 1;
    unsigned int RST33OFF : 1;
    unsigned int BPRST33OFF : 1;
    unsigned int RSTSWDOFF : 1;
    unsigned int BPRSTSWDOFF : 1;
    unsigned int SLCK : 1;
    unsigned int LCK : 1;
} Ifx_SCU_EVRRSTCON_Bits;


typedef struct _Ifx_SCU_EVRSDCOEFF1_Bits
{
    unsigned int SD5P : 8;
    unsigned int SD5I : 8;
    unsigned int SD5D : 8;
    unsigned int reserved_24 : 7;
    unsigned int LCK : 1;
} Ifx_SCU_EVRSDCOEFF1_Bits;


typedef struct _Ifx_SCU_EVRSDCOEFF2_Bits
{
    unsigned int SD33P : 8;
    unsigned int SD33I : 8;
    unsigned int SD33D : 8;
    unsigned int reserved_24 : 7;
    unsigned int LCK : 1;
} Ifx_SCU_EVRSDCOEFF2_Bits;


typedef struct _Ifx_SCU_EVRSDCOEFF3_Bits
{
    unsigned int CT5REG0 : 8;
    unsigned int CT5REG1 : 8;
    unsigned int CT5REG2 : 8;
    unsigned int reserved_24 : 7;
    unsigned int LCK : 1;
} Ifx_SCU_EVRSDCOEFF3_Bits;


typedef struct _Ifx_SCU_EVRSDCOEFF4_Bits
{
    unsigned int CT5REG3 : 8;
    unsigned int CT5REG4 : 8;
    unsigned int reserved_16 : 15;
    unsigned int LCK : 1;
} Ifx_SCU_EVRSDCOEFF4_Bits;


typedef struct _Ifx_SCU_EVRSDCOEFF5_Bits
{
    unsigned int CT33REG0 : 8;
    unsigned int CT33REG1 : 8;
    unsigned int CT33REG2 : 8;
    unsigned int reserved_24 : 7;
    unsigned int LCK : 1;
} Ifx_SCU_EVRSDCOEFF5_Bits;


typedef struct _Ifx_SCU_EVRSDCOEFF6_Bits
{
    unsigned int CT33REG3 : 8;
    unsigned int CT33REG4 : 8;
    unsigned int reserved_16 : 15;
    unsigned int LCK : 1;
} Ifx_SCU_EVRSDCOEFF6_Bits;


typedef struct _Ifx_SCU_EVRSDCTRL1_Bits
{
    unsigned int SDFREQSPRD : 16;
    unsigned int SDFREQ : 8;
    unsigned int SDSTEP : 4;
    unsigned int reserved_28 : 2;
    unsigned int SDSAMPLE : 1;
    unsigned int LCK : 1;
} Ifx_SCU_EVRSDCTRL1_Bits;


typedef struct _Ifx_SCU_EVRSDCTRL2_Bits
{
    unsigned int DRVP : 8;
    unsigned int SDMINMAXDC : 8;
    unsigned int DRVN : 8;
    unsigned int SDLUT : 6;
    unsigned int reserved_30 : 1;
    unsigned int LCK : 1;
} Ifx_SCU_EVRSDCTRL2_Bits;


typedef struct _Ifx_SCU_EVRSDCTRL3_Bits
{
    unsigned int SDPWMPRE : 8;
    unsigned int SDPID : 8;
    unsigned int SDVOKLVL : 8;
    unsigned int reserved_24 : 7;
    unsigned int LCK : 1;
} Ifx_SCU_EVRSDCTRL3_Bits;


typedef struct _Ifx_SCU_EVRSDCTRL4_Bits
{
    unsigned int reserved_0 : 8;
    unsigned int SYNCDIV : 3;
    unsigned int reserved_11 : 20;
    unsigned int LCK : 1;
} Ifx_SCU_EVRSDCTRL4_Bits;


typedef struct _Ifx_SCU_EVRSTAT_Bits
{
    unsigned int EVR13 : 1;
    unsigned int OV13 : 1;
    unsigned int EVR33 : 1;
    unsigned int OV33 : 1;
    unsigned int OVSWD : 1;
    unsigned int UV13 : 1;
    unsigned int UV33 : 1;
    unsigned int UVSWD : 1;
    unsigned int EXTPASS13 : 1;
    unsigned int EXTPASS33 : 1;
    unsigned int BGPROK : 1;
    unsigned int reserved_11 : 21;
} Ifx_SCU_EVRSTAT_Bits;


typedef struct _Ifx_SCU_EVRTRIM_Bits
{
    unsigned int EVR13TRIM : 8;
    unsigned int reserved_8 : 22;
    unsigned int SLCK : 1;
    unsigned int LCK : 1;
} Ifx_SCU_EVRTRIM_Bits;


typedef struct _Ifx_SCU_EVRUVMON_Bits
{
    unsigned int EVR13UVVAL : 8;
    unsigned int EVR33UVVAL : 8;
    unsigned int SWDUVVAL : 8;
    unsigned int reserved_24 : 6;
    unsigned int SLCK : 1;
    unsigned int LCK : 1;
} Ifx_SCU_EVRUVMON_Bits;


typedef struct _Ifx_SCU_EXTCON_Bits
{
    unsigned int EN0 : 1;
    unsigned int reserved_1 : 1;
    unsigned int SEL0 : 4;
    unsigned int reserved_6 : 10;
    unsigned int EN1 : 1;
    unsigned int NSEL : 1;
    unsigned int SEL1 : 4;
    unsigned int reserved_22 : 2;
    unsigned int DIV1 : 8;
} Ifx_SCU_EXTCON_Bits;


typedef struct _Ifx_SCU_FDR_Bits
{
    unsigned int STEP : 10;
    unsigned int reserved_10 : 4;
    unsigned int DM : 2;
    unsigned int RESULT : 10;
    unsigned int reserved_26 : 5;
    unsigned int DISCLK : 1;
} Ifx_SCU_FDR_Bits;


typedef struct _Ifx_SCU_FMR_Bits
{
    unsigned int FS0 : 1;
    unsigned int FS1 : 1;
    unsigned int FS2 : 1;
    unsigned int FS3 : 1;
    unsigned int FS4 : 1;
    unsigned int FS5 : 1;
    unsigned int FS6 : 1;
    unsigned int FS7 : 1;
    unsigned int reserved_8 : 8;
    unsigned int FC0 : 1;
    unsigned int FC1 : 1;
    unsigned int FC2 : 1;
    unsigned int FC3 : 1;
    unsigned int FC4 : 1;
    unsigned int FC5 : 1;
    unsigned int FC6 : 1;
    unsigned int FC7 : 1;
    unsigned int reserved_24 : 8;
} Ifx_SCU_FMR_Bits;


typedef struct _Ifx_SCU_ID_Bits
{
    unsigned int MODREV : 8;
    unsigned int MODTYPE : 8;
    unsigned int MODNUMBER : 16;
} Ifx_SCU_ID_Bits;


typedef struct _Ifx_SCU_IGCR_Bits
{
    unsigned int IPEN00 : 1;
    unsigned int IPEN01 : 1;
    unsigned int IPEN02 : 1;
    unsigned int IPEN03 : 1;
    unsigned int IPEN04 : 1;
    unsigned int IPEN05 : 1;
    unsigned int IPEN06 : 1;
    unsigned int IPEN07 : 1;
    unsigned int reserved_8 : 5;
    unsigned int GEEN0 : 1;
    unsigned int IGP0 : 2;
    unsigned int IPEN10 : 1;
    unsigned int IPEN11 : 1;
    unsigned int IPEN12 : 1;
    unsigned int IPEN13 : 1;
    unsigned int IPEN14 : 1;
    unsigned int IPEN15 : 1;
    unsigned int IPEN16 : 1;
    unsigned int IPEN17 : 1;
    unsigned int reserved_24 : 5;
    unsigned int GEEN1 : 1;
    unsigned int IGP1 : 2;
} Ifx_SCU_IGCR_Bits;


typedef struct _Ifx_SCU_IN_Bits
{
    unsigned int P0 : 1;
    unsigned int P1 : 1;
    unsigned int reserved_2 : 30;
} Ifx_SCU_IN_Bits;


typedef struct _Ifx_SCU_IOCR_Bits
{
    unsigned int reserved_0 : 4;
    unsigned int PC0 : 4;
    unsigned int reserved_8 : 4;
    unsigned int PC1 : 4;
    unsigned int reserved_16 : 16;
} Ifx_SCU_IOCR_Bits;


typedef struct _Ifx_SCU_LBISTCTRL0_Bits
{
    unsigned int LBISTREQ : 1;
    unsigned int LBISTREQP : 1;
    unsigned int PATTERNS : 14;
    unsigned int reserved_16 : 16;
} Ifx_SCU_LBISTCTRL0_Bits;


typedef struct _Ifx_SCU_LBISTCTRL1_Bits
{
    unsigned int SEED : 23;
    unsigned int reserved_23 : 1;
    unsigned int SPLITSH : 3;
    unsigned int BODY : 1;
    unsigned int LBISTFREQU : 4;
} Ifx_SCU_LBISTCTRL1_Bits;


typedef struct _Ifx_SCU_LBISTCTRL2_Bits
{
    unsigned int SIGNATURE : 24;
    unsigned int reserved_24 : 7;
    unsigned int LBISTDONE : 1;
} Ifx_SCU_LBISTCTRL2_Bits;


typedef struct _Ifx_SCU_LCLCON_Bits
{
    unsigned int reserved_0 : 16;
    unsigned int LS : 1;
    unsigned int reserved_17 : 14;
    unsigned int LSEN : 1;
} Ifx_SCU_LCLCON_Bits;


typedef struct _Ifx_SCU_LCLTEST_Bits
{
    unsigned int LCLT0 : 1;
    unsigned int LCLT1 : 1;
    unsigned int reserved_2 : 30;
} Ifx_SCU_LCLTEST_Bits;


typedef struct _Ifx_SCU_MANID_Bits
{
    unsigned int DEPT : 5;
    unsigned int MANUF : 11;
    unsigned int reserved_16 : 16;
} Ifx_SCU_MANID_Bits;


typedef struct _Ifx_SCU_OMR_Bits
{
    unsigned int PS0 : 1;
    unsigned int PS1 : 1;
    unsigned int reserved_2 : 14;
    unsigned int PCL0 : 1;
    unsigned int PCL1 : 1;
    unsigned int reserved_18 : 14;
} Ifx_SCU_OMR_Bits;


typedef struct _Ifx_SCU_OSCCON_Bits
{
    unsigned int reserved_0 : 1;
    unsigned int PLLLV : 1;
    unsigned int OSCRES : 1;
    unsigned int GAINSEL : 2;
    unsigned int MODE : 2;
    unsigned int SHBY : 1;
    unsigned int PLLHV : 1;
    unsigned int reserved_9 : 1;
    unsigned int X1D : 1;
    unsigned int X1DEN : 1;
    unsigned int reserved_12 : 4;
    unsigned int OSCVAL : 5;
    unsigned int reserved_21 : 2;
    unsigned int APREN : 1;
    unsigned int CAP0EN : 1;
    unsigned int CAP1EN : 1;
    unsigned int CAP2EN : 1;
    unsigned int CAP3EN : 1;
    unsigned int reserved_28 : 4;
} Ifx_SCU_OSCCON_Bits;


typedef struct _Ifx_SCU_OUT_Bits
{
    unsigned int P0 : 1;
    unsigned int P1 : 1;
    unsigned int reserved_2 : 30;
} Ifx_SCU_OUT_Bits;


typedef struct _Ifx_SCU_OVCCON_Bits
{
    unsigned int CSEL0 : 1;
    unsigned int CSEL1 : 1;
    unsigned int CSEL2 : 1;
    unsigned int reserved_3 : 13;
    unsigned int OVSTRT : 1;
    unsigned int OVSTP : 1;
    unsigned int DCINVAL : 1;
    unsigned int reserved_19 : 5;
    unsigned int OVCONF : 1;
    unsigned int POVCONF : 1;
    unsigned int reserved_26 : 6;
} Ifx_SCU_OVCCON_Bits;


typedef struct _Ifx_SCU_OVCENABLE_Bits
{
    unsigned int OVEN0 : 1;
    unsigned int OVEN1 : 1;
    unsigned int OVEN2 : 1;
    unsigned int reserved_3 : 29;
} Ifx_SCU_OVCENABLE_Bits;


typedef struct _Ifx_SCU_PDISC_Bits
{
    unsigned int PDIS0 : 1;
    unsigned int PDIS1 : 1;
    unsigned int reserved_2 : 30;
} Ifx_SCU_PDISC_Bits;


typedef struct _Ifx_SCU_PDR_Bits
{
    unsigned int PD0 : 3;
    unsigned int PL0 : 1;
    unsigned int PD1 : 3;
    unsigned int PL1 : 1;
    unsigned int reserved_8 : 24;
} Ifx_SCU_PDR_Bits;


typedef struct _Ifx_SCU_PDRR_Bits
{
    unsigned int PDR0 : 1;
    unsigned int PDR1 : 1;
    unsigned int PDR2 : 1;
    unsigned int PDR3 : 1;
    unsigned int PDR4 : 1;
    unsigned int PDR5 : 1;
    unsigned int PDR6 : 1;
    unsigned int PDR7 : 1;
    unsigned int reserved_8 : 24;
} Ifx_SCU_PDRR_Bits;


typedef struct _Ifx_SCU_PLLCON0_Bits
{
    unsigned int VCOBYP : 1;
    unsigned int VCOPWD : 1;
    unsigned int MODEN : 1;
    unsigned int reserved_3 : 1;
    unsigned int SETFINDIS : 1;
    unsigned int CLRFINDIS : 1;
    unsigned int OSCDISCDIS : 1;
    unsigned int reserved_7 : 2;
    unsigned int NDIV : 7;
    unsigned int PLLPWD : 1;
    unsigned int reserved_17 : 1;
    unsigned int RESLD : 1;
    unsigned int reserved_19 : 5;
    unsigned int PDIV : 4;
    unsigned int reserved_28 : 4;
} Ifx_SCU_PLLCON0_Bits;


typedef struct _Ifx_SCU_PLLCON1_Bits
{
    unsigned int K2DIV : 7;
    unsigned int reserved_7 : 1;
    unsigned int K3DIV : 7;
    unsigned int reserved_15 : 1;
    unsigned int K1DIV : 7;
    unsigned int reserved_23 : 9;
} Ifx_SCU_PLLCON1_Bits;


typedef struct _Ifx_SCU_PLLCON2_Bits
{
    unsigned int MODCFG : 16;
    unsigned int reserved_16 : 16;
} Ifx_SCU_PLLCON2_Bits;


typedef struct _Ifx_SCU_PLLERAYCON0_Bits
{
    unsigned int VCOBYP : 1;
    unsigned int VCOPWD : 1;
    unsigned int reserved_2 : 2;
    unsigned int SETFINDIS : 1;
    unsigned int CLRFINDIS : 1;
    unsigned int OSCDISCDIS : 1;
    unsigned int reserved_7 : 2;
    unsigned int NDIV : 5;
    unsigned int reserved_14 : 2;
    unsigned int PLLPWD : 1;
    unsigned int reserved_17 : 1;
    unsigned int RESLD : 1;
    unsigned int reserved_19 : 5;
    unsigned int PDIV : 4;
    unsigned int reserved_28 : 4;
} Ifx_SCU_PLLERAYCON0_Bits;


typedef struct _Ifx_SCU_PLLERAYCON1_Bits
{
    unsigned int K2DIV : 7;
    unsigned int reserved_7 : 1;
    unsigned int K3DIV : 4;
    unsigned int reserved_12 : 4;
    unsigned int K1DIV : 7;
    unsigned int reserved_23 : 9;
} Ifx_SCU_PLLERAYCON1_Bits;


typedef struct _Ifx_SCU_PLLERAYSTAT_Bits
{
    unsigned int VCOBYST : 1;
    unsigned int PWDSTAT : 1;
    unsigned int VCOLOCK : 1;
    unsigned int FINDIS : 1;
    unsigned int K1RDY : 1;
    unsigned int K2RDY : 1;
    unsigned int reserved_6 : 26;
} Ifx_SCU_PLLERAYSTAT_Bits;


typedef struct _Ifx_SCU_PLLSTAT_Bits
{
    unsigned int VCOBYST : 1;
    unsigned int reserved_1 : 1;
    unsigned int VCOLOCK : 1;
    unsigned int FINDIS : 1;
    unsigned int K1RDY : 1;
    unsigned int K2RDY : 1;
    unsigned int reserved_6 : 1;
    unsigned int MODRUN : 1;
    unsigned int reserved_8 : 24;
} Ifx_SCU_PLLSTAT_Bits;


typedef struct _Ifx_SCU_PMCSR_Bits
{
    unsigned int REQSLP : 2;
    unsigned int SMUSLP : 1;
    unsigned int reserved_3 : 5;
    unsigned int PMST : 3;
    unsigned int reserved_11 : 21;
} Ifx_SCU_PMCSR_Bits;


typedef struct _Ifx_SCU_PMSWCR0_Bits
{
    unsigned int reserved_0 : 1;
    unsigned int ESR1WKEN : 1;
    unsigned int PINAWKEN : 1;
    unsigned int PINBWKEN : 1;
    unsigned int ESR0DFEN : 1;
    unsigned int ESR0EDCON : 2;
    unsigned int ESR1DFEN : 1;
    unsigned int ESR1EDCON : 2;
    unsigned int PINADFEN : 1;
    unsigned int PINAEDCON : 2;
    unsigned int PINBDFEN : 1;
    unsigned int PINBEDCON : 2;
    unsigned int reserved_16 : 1;
    unsigned int STBYRAMSEL : 2;
    unsigned int reserved_19 : 2;
    unsigned int TRISTEN : 1;
    unsigned int TRISTREQ : 1;
    unsigned int PORSTDF : 1;
    unsigned int PWRWKEN : 1;
    unsigned int DCDCSYNC : 1;
    unsigned int BLNKFIL : 3;
    unsigned int ESR0TRIST : 1;
    unsigned int reserved_30 : 1;
    unsigned int LCK : 1;
} Ifx_SCU_PMSWCR0_Bits;


typedef struct _Ifx_SCU_PMSWCR1_Bits
{
    unsigned int reserved_0 : 8;
    unsigned int CPUIDLSEL : 3;
    unsigned int reserved_11 : 1;
    unsigned int IRADIS : 1;
    unsigned int reserved_13 : 11;
    unsigned int CPUSEL : 3;
    unsigned int STBYEVEN : 1;
    unsigned int STBYEV : 3;
    unsigned int reserved_31 : 1;
} Ifx_SCU_PMSWCR1_Bits;


typedef struct _Ifx_SCU_PMSWSTAT_Bits
{
    unsigned int reserved_0 : 2;
    unsigned int ESR1WKP : 1;
    unsigned int ESR1OVRUN : 1;
    unsigned int PINAWKP : 1;
    unsigned int PINAOVRUN : 1;
    unsigned int PINBWKP : 1;
    unsigned int PINBOVRUN : 1;
    unsigned int PWRWKP : 1;
    unsigned int PORSTDF : 1;
    unsigned int HWCFGEVR : 3;
    unsigned int STBYRAM : 2;
    unsigned int TRIST : 1;
    unsigned int reserved_16 : 4;
    unsigned int ESR1WKEN : 1;
    unsigned int PINAWKEN : 1;
    unsigned int PINBWKEN : 1;
    unsigned int PWRWKEN : 1;
    unsigned int BLNKFIL : 3;
    unsigned int ESR0TRIST : 1;
    unsigned int reserved_28 : 4;
} Ifx_SCU_PMSWSTAT_Bits;


typedef struct _Ifx_SCU_PMSWSTATCLR_Bits
{
    unsigned int reserved_0 : 2;
    unsigned int ESR1WKPCLR : 1;
    unsigned int ESR1OVRUNCLR : 1;
    unsigned int PINAWKPCLR : 1;
    unsigned int PINAOVRUNCLR : 1;
    unsigned int PINBWKPCLR : 1;
    unsigned int PINBOVRUNCLR : 1;
    unsigned int PWRWKPCLR : 1;
    unsigned int reserved_9 : 23;
} Ifx_SCU_PMSWSTATCLR_Bits;


typedef struct _Ifx_SCU_RSTCON2_Bits
{
    unsigned int reserved_0 : 1;
    unsigned int CLRC : 1;
    unsigned int reserved_2 : 10;
    unsigned int CSS0 : 1;
    unsigned int CSS1 : 1;
    unsigned int CSS2 : 1;
    unsigned int reserved_15 : 1;
    unsigned int USRINFO : 16;
} Ifx_SCU_RSTCON2_Bits;


typedef struct _Ifx_SCU_RSTCON_Bits
{
    unsigned int ESR0 : 2;
    unsigned int ESR1 : 2;
    unsigned int reserved_4 : 2;
    unsigned int SMU : 2;
    unsigned int SW : 2;
    unsigned int STM0 : 2;
    unsigned int STM1 : 2;
    unsigned int STM2 : 2;
    unsigned int reserved_16 : 16;
} Ifx_SCU_RSTCON_Bits;


typedef struct _Ifx_SCU_RSTSTAT_Bits
{
    unsigned int ESR0 : 1;
    unsigned int ESR1 : 1;
    unsigned int reserved_2 : 1;
    unsigned int SMU : 1;
    unsigned int SW : 1;
    unsigned int STM0 : 1;
    unsigned int STM1 : 1;
    unsigned int STM2 : 1;
    unsigned int reserved_8 : 8;
    unsigned int PORST : 1;
    unsigned int reserved_17 : 1;
    unsigned int CB0 : 1;
    unsigned int CB1 : 1;
    unsigned int CB3 : 1;
    unsigned int reserved_21 : 2;
    unsigned int EVR13 : 1;
    unsigned int EVR33 : 1;
    unsigned int SWD : 1;
    unsigned int reserved_26 : 2;
    unsigned int STBYR : 1;
    unsigned int reserved_29 : 3;
} Ifx_SCU_RSTSTAT_Bits;


typedef struct _Ifx_SCU_SAFECON_Bits
{
    unsigned int HBT : 1;
    unsigned int reserved_1 : 31;
} Ifx_SCU_SAFECON_Bits;


typedef struct _Ifx_SCU_STSTAT_Bits
{
    unsigned int HWCFG : 8;
    unsigned int FTM : 7;
    unsigned int MODE : 1;
    unsigned int FCBAE : 1;
    unsigned int LUDIS : 1;
    unsigned int reserved_18 : 1;
    unsigned int TRSTL : 1;
    unsigned int SPDEN : 1;
    unsigned int reserved_21 : 3;
    unsigned int RAMINT : 1;
    unsigned int reserved_25 : 7;
} Ifx_SCU_STSTAT_Bits;


typedef struct _Ifx_SCU_SWRSTCON_Bits
{
    unsigned int reserved_0 : 1;
    unsigned int SWRSTREQ : 1;
    unsigned int reserved_2 : 30;
} Ifx_SCU_SWRSTCON_Bits;


typedef struct _Ifx_SCU_SYSCON_Bits
{
    unsigned int CCTRIG0 : 1;
    unsigned int reserved_1 : 1;
    unsigned int RAMINTM : 2;
    unsigned int SETLUDIS : 1;
    unsigned int reserved_5 : 3;
    unsigned int DATM : 1;
    unsigned int reserved_9 : 23;
} Ifx_SCU_SYSCON_Bits;


typedef struct _Ifx_SCU_TRAPCLR_Bits
{
    unsigned int ESR0T : 1;
    unsigned int ESR1T : 1;
    unsigned int reserved_2 : 1;
    unsigned int SMUT : 1;
    unsigned int reserved_4 : 28;
} Ifx_SCU_TRAPCLR_Bits;


typedef struct _Ifx_SCU_TRAPDIS_Bits
{
    unsigned int ESR0T : 1;
    unsigned int ESR1T : 1;
    unsigned int reserved_2 : 1;
    unsigned int SMUT : 1;
    unsigned int reserved_4 : 28;
} Ifx_SCU_TRAPDIS_Bits;


typedef struct _Ifx_SCU_TRAPSET_Bits
{
    unsigned int ESR0T : 1;
    unsigned int ESR1T : 1;
    unsigned int reserved_2 : 1;
    unsigned int SMUT : 1;
    unsigned int reserved_4 : 28;
} Ifx_SCU_TRAPSET_Bits;


typedef struct _Ifx_SCU_TRAPSTAT_Bits
{
    unsigned int ESR0T : 1;
    unsigned int ESR1T : 1;
    unsigned int reserved_2 : 1;
    unsigned int SMUT : 1;
    unsigned int reserved_4 : 28;
} Ifx_SCU_TRAPSTAT_Bits;


typedef struct _Ifx_SCU_WDTCPU_CON0_Bits
{
    unsigned int ENDINIT : 1;
    unsigned int LCK : 1;
    unsigned int PW : 14;
    unsigned int REL : 16;
} Ifx_SCU_WDTCPU_CON0_Bits;


typedef struct _Ifx_SCU_WDTCPU_CON1_Bits
{
    unsigned int reserved_0 : 2;
    unsigned int IR0 : 1;
    unsigned int DR : 1;
    unsigned int reserved_4 : 1;
    unsigned int IR1 : 1;
    unsigned int UR : 1;
    unsigned int PAR : 1;
    unsigned int TCR : 1;
    unsigned int TCTR : 7;
    unsigned int reserved_16 : 16;
} Ifx_SCU_WDTCPU_CON1_Bits;


typedef struct _Ifx_SCU_WDTCPU_SR_Bits
{
    unsigned int AE : 1;
    unsigned int OE : 1;
    unsigned int IS0 : 1;
    unsigned int DS : 1;
    unsigned int TO : 1;
    unsigned int IS1 : 1;
    unsigned int US : 1;
    unsigned int PAS : 1;
    unsigned int TCS : 1;
    unsigned int TCT : 7;
    unsigned int TIM : 16;
} Ifx_SCU_WDTCPU_SR_Bits;


typedef struct _Ifx_SCU_WDTS_CON0_Bits
{
    unsigned int ENDINIT : 1;
    unsigned int LCK : 1;
    unsigned int PW : 14;
    unsigned int REL : 16;
} Ifx_SCU_WDTS_CON0_Bits;


typedef struct _Ifx_SCU_WDTS_CON1_Bits
{
    unsigned int CLRIRF : 1;
    unsigned int reserved_1 : 1;
    unsigned int IR0 : 1;
    unsigned int DR : 1;
    unsigned int reserved_4 : 1;
    unsigned int IR1 : 1;
    unsigned int UR : 1;
    unsigned int PAR : 1;
    unsigned int TCR : 1;
    unsigned int TCTR : 7;
    unsigned int reserved_16 : 16;
} Ifx_SCU_WDTS_CON1_Bits;


typedef struct _Ifx_SCU_WDTS_SR_Bits
{
    unsigned int AE : 1;
    unsigned int OE : 1;
    unsigned int IS0 : 1;
    unsigned int DS : 1;
    unsigned int TO : 1;
    unsigned int IS1 : 1;
    unsigned int US : 1;
    unsigned int PAS : 1;
    unsigned int TCS : 1;
    unsigned int TCT : 7;
    unsigned int TIM : 16;
} Ifx_SCU_WDTS_SR_Bits;







typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_ACCEN0_Bits B;
} Ifx_SCU_ACCEN0;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_ACCEN1_Bits B;
} Ifx_SCU_ACCEN1;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_ARSTDIS_Bits B;
} Ifx_SCU_ARSTDIS;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_CCUCON0_Bits B;
} Ifx_SCU_CCUCON0;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_CCUCON1_Bits B;
} Ifx_SCU_CCUCON1;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_CCUCON2_Bits B;
} Ifx_SCU_CCUCON2;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_CCUCON3_Bits B;
} Ifx_SCU_CCUCON3;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_CCUCON4_Bits B;
} Ifx_SCU_CCUCON4;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_CCUCON5_Bits B;
} Ifx_SCU_CCUCON5;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_CCUCON6_Bits B;
} Ifx_SCU_CCUCON6;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_CCUCON7_Bits B;
} Ifx_SCU_CCUCON7;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_CCUCON8_Bits B;
} Ifx_SCU_CCUCON8;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_CCUCON9_Bits B;
} Ifx_SCU_CCUCON9;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_CHIPID_Bits B;
} Ifx_SCU_CHIPID;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_DTSCON_Bits B;
} Ifx_SCU_DTSCON;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_DTSLIM_Bits B;
} Ifx_SCU_DTSLIM;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_DTSSTAT_Bits B;
} Ifx_SCU_DTSSTAT;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_EICR_Bits B;
} Ifx_SCU_EICR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_EIFR_Bits B;
} Ifx_SCU_EIFR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_EMSR_Bits B;
} Ifx_SCU_EMSR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_ESRCFG_Bits B;
} Ifx_SCU_ESRCFG;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_ESROCFG_Bits B;
} Ifx_SCU_ESROCFG;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_EVR13CON_Bits B;
} Ifx_SCU_EVR13CON;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_EVR33CON_Bits B;
} Ifx_SCU_EVR33CON;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_EVRADCSTAT_Bits B;
} Ifx_SCU_EVRADCSTAT;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_EVRDVSTAT_Bits B;
} Ifx_SCU_EVRDVSTAT;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_EVRMONCTRL_Bits B;
} Ifx_SCU_EVRMONCTRL;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_EVROSCCTRL_Bits B;
} Ifx_SCU_EVROSCCTRL;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_EVROVMON_Bits B;
} Ifx_SCU_EVROVMON;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_EVRRSTCON_Bits B;
} Ifx_SCU_EVRRSTCON;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_EVRSDCOEFF1_Bits B;
} Ifx_SCU_EVRSDCOEFF1;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_EVRSDCOEFF2_Bits B;
} Ifx_SCU_EVRSDCOEFF2;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_EVRSDCOEFF3_Bits B;
} Ifx_SCU_EVRSDCOEFF3;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_EVRSDCOEFF4_Bits B;
} Ifx_SCU_EVRSDCOEFF4;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_EVRSDCOEFF5_Bits B;
} Ifx_SCU_EVRSDCOEFF5;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_EVRSDCOEFF6_Bits B;
} Ifx_SCU_EVRSDCOEFF6;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_EVRSDCTRL1_Bits B;
} Ifx_SCU_EVRSDCTRL1;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_EVRSDCTRL2_Bits B;
} Ifx_SCU_EVRSDCTRL2;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_EVRSDCTRL3_Bits B;
} Ifx_SCU_EVRSDCTRL3;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_EVRSDCTRL4_Bits B;
} Ifx_SCU_EVRSDCTRL4;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_EVRSTAT_Bits B;
} Ifx_SCU_EVRSTAT;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_EVRTRIM_Bits B;
} Ifx_SCU_EVRTRIM;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_EVRUVMON_Bits B;
} Ifx_SCU_EVRUVMON;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_EXTCON_Bits B;
} Ifx_SCU_EXTCON;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_FDR_Bits B;
} Ifx_SCU_FDR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_FMR_Bits B;
} Ifx_SCU_FMR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_ID_Bits B;
} Ifx_SCU_ID;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_IGCR_Bits B;
} Ifx_SCU_IGCR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_IN_Bits B;
} Ifx_SCU_IN;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_IOCR_Bits B;
} Ifx_SCU_IOCR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_LBISTCTRL0_Bits B;
} Ifx_SCU_LBISTCTRL0;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_LBISTCTRL1_Bits B;
} Ifx_SCU_LBISTCTRL1;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_LBISTCTRL2_Bits B;
} Ifx_SCU_LBISTCTRL2;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_LCLCON_Bits B;
} Ifx_SCU_LCLCON;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_LCLTEST_Bits B;
} Ifx_SCU_LCLTEST;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_MANID_Bits B;
} Ifx_SCU_MANID;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_OMR_Bits B;
} Ifx_SCU_OMR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_OSCCON_Bits B;
} Ifx_SCU_OSCCON;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_OUT_Bits B;
} Ifx_SCU_OUT;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_OVCCON_Bits B;
} Ifx_SCU_OVCCON;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_OVCENABLE_Bits B;
} Ifx_SCU_OVCENABLE;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_PDISC_Bits B;
} Ifx_SCU_PDISC;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_PDR_Bits B;
} Ifx_SCU_PDR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_PDRR_Bits B;
} Ifx_SCU_PDRR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_PLLCON0_Bits B;
} Ifx_SCU_PLLCON0;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_PLLCON1_Bits B;
} Ifx_SCU_PLLCON1;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_PLLCON2_Bits B;
} Ifx_SCU_PLLCON2;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_PLLERAYCON0_Bits B;
} Ifx_SCU_PLLERAYCON0;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_PLLERAYCON1_Bits B;
} Ifx_SCU_PLLERAYCON1;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_PLLERAYSTAT_Bits B;
} Ifx_SCU_PLLERAYSTAT;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_PLLSTAT_Bits B;
} Ifx_SCU_PLLSTAT;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_PMCSR_Bits B;
} Ifx_SCU_PMCSR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_PMSWCR0_Bits B;
} Ifx_SCU_PMSWCR0;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_PMSWCR1_Bits B;
} Ifx_SCU_PMSWCR1;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_PMSWSTAT_Bits B;
} Ifx_SCU_PMSWSTAT;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_PMSWSTATCLR_Bits B;
} Ifx_SCU_PMSWSTATCLR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_RSTCON_Bits B;
} Ifx_SCU_RSTCON;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_RSTCON2_Bits B;
} Ifx_SCU_RSTCON2;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_RSTSTAT_Bits B;
} Ifx_SCU_RSTSTAT;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_SAFECON_Bits B;
} Ifx_SCU_SAFECON;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_STSTAT_Bits B;
} Ifx_SCU_STSTAT;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_SWRSTCON_Bits B;
} Ifx_SCU_SWRSTCON;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_SYSCON_Bits B;
} Ifx_SCU_SYSCON;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_TRAPCLR_Bits B;
} Ifx_SCU_TRAPCLR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_TRAPDIS_Bits B;
} Ifx_SCU_TRAPDIS;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_TRAPSET_Bits B;
} Ifx_SCU_TRAPSET;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_TRAPSTAT_Bits B;
} Ifx_SCU_TRAPSTAT;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_WDTCPU_CON0_Bits B;
} Ifx_SCU_WDTCPU_CON0;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_WDTCPU_CON1_Bits B;
} Ifx_SCU_WDTCPU_CON1;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_WDTCPU_SR_Bits B;
} Ifx_SCU_WDTCPU_SR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_WDTS_CON0_Bits B;
} Ifx_SCU_WDTS_CON0;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_WDTS_CON1_Bits B;
} Ifx_SCU_WDTS_CON1;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_WDTS_SR_Bits B;
} Ifx_SCU_WDTS_SR;
# 2251 "./0_Src/4_McHal/Tricore/_Reg/IfxScu_regdef.h"
typedef volatile struct _Ifx_SCU_WDTCPU
{
    Ifx_SCU_WDTCPU_CON0 CON0;
    Ifx_SCU_WDTCPU_CON1 CON1;
    Ifx_SCU_WDTCPU_SR SR;
} Ifx_SCU_WDTCPU;


typedef volatile struct _Ifx_SCU_WDTS
{
    Ifx_SCU_WDTS_CON0 CON0;
    Ifx_SCU_WDTS_CON1 CON1;
    Ifx_SCU_WDTS_SR SR;
} Ifx_SCU_WDTS;
# 2277 "./0_Src/4_McHal/Tricore/_Reg/IfxScu_regdef.h"
typedef volatile struct _Ifx_SCU
{
    unsigned char reserved_0[8];
    Ifx_SCU_ID ID;
    unsigned char reserved_C[4];
    Ifx_SCU_OSCCON OSCCON;
    Ifx_SCU_PLLSTAT PLLSTAT;
    Ifx_SCU_PLLCON0 PLLCON0;
    Ifx_SCU_PLLCON1 PLLCON1;
    Ifx_SCU_PLLCON2 PLLCON2;
    Ifx_SCU_PLLERAYSTAT PLLERAYSTAT;
    Ifx_SCU_PLLERAYCON0 PLLERAYCON0;
    Ifx_SCU_PLLERAYCON1 PLLERAYCON1;
    Ifx_SCU_CCUCON0 CCUCON0;
    Ifx_SCU_CCUCON1 CCUCON1;
    Ifx_SCU_FDR FDR;
    Ifx_SCU_EXTCON EXTCON;
    Ifx_SCU_CCUCON2 CCUCON2;
    Ifx_SCU_CCUCON3 CCUCON3;
    Ifx_SCU_CCUCON4 CCUCON4;
    Ifx_SCU_CCUCON5 CCUCON5;
    Ifx_SCU_RSTSTAT RSTSTAT;
    unsigned char reserved_54[4];
    Ifx_SCU_RSTCON RSTCON;
    Ifx_SCU_ARSTDIS ARSTDIS;
    Ifx_SCU_SWRSTCON SWRSTCON;
    Ifx_SCU_RSTCON2 RSTCON2;
    unsigned char reserved_68[4];
    Ifx_SCU_EVRRSTCON EVRRSTCON;
    Ifx_SCU_ESRCFG ESRCFG[2];
    Ifx_SCU_ESROCFG ESROCFG;
    Ifx_SCU_SYSCON SYSCON;
    Ifx_SCU_CCUCON6 CCUCON6;
    Ifx_SCU_CCUCON7 CCUCON7;
    Ifx_SCU_CCUCON8 CCUCON8;
    Ifx_SCU_CCUCON9 CCUCON9;
    unsigned char reserved_90[12];
    Ifx_SCU_PDR PDR;
    Ifx_SCU_IOCR IOCR;
    Ifx_SCU_OUT OUT;
    Ifx_SCU_OMR OMR;
    Ifx_SCU_IN IN;
    Ifx_SCU_EVRSTAT EVRSTAT;
    Ifx_SCU_EVRDVSTAT EVRDVSTAT;
    Ifx_SCU_EVR13CON EVR13CON;
    Ifx_SCU_EVR33CON EVR33CON;
    Ifx_SCU_STSTAT STSTAT;
    unsigned char reserved_C4[4];
    Ifx_SCU_PMSWCR0 PMSWCR0;
    Ifx_SCU_PMSWSTAT PMSWSTAT;
    Ifx_SCU_PMSWSTATCLR PMSWSTATCLR;
    Ifx_SCU_PMCSR PMCSR[3];
    Ifx_SCU_DTSSTAT DTSSTAT;
    Ifx_SCU_DTSCON DTSCON;
    Ifx_SCU_PMSWCR1 PMSWCR1;
    unsigned char reserved_EC[4];
    Ifx_SCU_WDTS WDTS;
    Ifx_SCU_EMSR EMSR;
    Ifx_SCU_WDTCPU WDTCPU[3];
    Ifx_SCU_TRAPSTAT TRAPSTAT;
    Ifx_SCU_TRAPSET TRAPSET;
    Ifx_SCU_TRAPCLR TRAPCLR;
    Ifx_SCU_TRAPDIS TRAPDIS;
    Ifx_SCU_LCLCON LCLCON0;
    Ifx_SCU_LCLCON LCLCON1;
    Ifx_SCU_LCLTEST LCLTEST;
    Ifx_SCU_CHIPID CHIPID;
    Ifx_SCU_MANID MANID;
    unsigned char reserved_148[8];
    Ifx_SCU_SAFECON SAFECON;
    unsigned char reserved_154[16];
    Ifx_SCU_LBISTCTRL0 LBISTCTRL0;
    Ifx_SCU_LBISTCTRL1 LBISTCTRL1;
    Ifx_SCU_LBISTCTRL2 LBISTCTRL2;
    unsigned char reserved_170[28];
    Ifx_SCU_PDISC PDISC;
    unsigned char reserved_190[8];
    Ifx_SCU_EVRTRIM EVRTRIM;
    Ifx_SCU_EVRADCSTAT EVRADCSTAT;
    Ifx_SCU_EVRUVMON EVRUVMON;
    Ifx_SCU_EVROVMON EVROVMON;
    Ifx_SCU_EVRMONCTRL EVRMONCTRL;
    unsigned char reserved_1AC[4];
    Ifx_SCU_EVRSDCTRL1 EVRSDCTRL1;
    Ifx_SCU_EVRSDCTRL2 EVRSDCTRL2;
    Ifx_SCU_EVRSDCTRL3 EVRSDCTRL3;
    Ifx_SCU_EVRSDCTRL4 EVRSDCTRL4;
    Ifx_SCU_EVRSDCOEFF1 EVRSDCOEFF1;
    Ifx_SCU_EVRSDCOEFF2 EVRSDCOEFF2;
    Ifx_SCU_EVRSDCOEFF3 EVRSDCOEFF3;
    Ifx_SCU_EVRSDCOEFF4 EVRSDCOEFF4;
    Ifx_SCU_EVRSDCOEFF5 EVRSDCOEFF5;
    Ifx_SCU_EVRSDCOEFF6 EVRSDCOEFF6;
    Ifx_SCU_EVROSCCTRL EVROSCCTRL;
    unsigned char reserved_1DC[4];
    Ifx_SCU_OVCENABLE OVCENABLE;
    Ifx_SCU_OVCCON OVCCON;
    unsigned char reserved_1E8[40];
    Ifx_SCU_EICR EICR[4];
    Ifx_SCU_EIFR EIFR;
    Ifx_SCU_FMR FMR;
    Ifx_SCU_PDRR PDRR;
    Ifx_SCU_IGCR IGCR[4];
    unsigned char reserved_23C[4];
    Ifx_SCU_DTSLIM DTSLIM;
    unsigned char reserved_244[436];
    Ifx_SCU_ACCEN1 ACCEN1;
    Ifx_SCU_ACCEN0 ACCEN0;
} Ifx_SCU;
# 37 "./0_Src/4_McHal/Tricore/_Reg/IfxScu_reg.h" 2
# 51 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h" 2
# 1 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h" 1
# 46 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h"
# 1 "./0_Src/4_McHal/Tricore/_Impl/IfxScu_cfg.h" 1
# 36 "./0_Src/4_McHal/Tricore/_Impl/IfxScu_cfg.h"
# 1 "./0_Src/4_McHal/Tricore/_Reg/IfxScu_bf.h" 1
# 37 "./0_Src/4_McHal/Tricore/_Impl/IfxScu_cfg.h" 2
# 1 "./0_Src/4_McHal/Tricore/_Reg/IfxFlash_bf.h" 1
# 38 "./0_Src/4_McHal/Tricore/_Impl/IfxScu_cfg.h" 2
# 1411 "./0_Src/4_McHal/Tricore/_Impl/IfxScu_cfg.h"
typedef enum
{
    IfxScu_CCUCON0_CLKSEL_fBack = 0,
    IfxScu_CCUCON0_CLKSEL_fPll = 1
} IfxScu_CCUCON0_CLKSEL;


typedef enum
{
    IfxScu_CCUCON1_INSEL_fOsc1 = 0,
    IfxScu_CCUCON1_INSEL_fOsc0 = 1
} IfxScu_CCUCON1_INSEL;


typedef enum
{
    IfxScu_WDTCON1_IR_divBy16384 = 0,
    IfxScu_WDTCON1_IR_divBy256 = 1,
    IfxScu_WDTCON1_IR_divBy64 = 2
} IfxScu_WDTCON1_IR;

typedef enum
{
    IfxScu_PMCSR_REQSLP_Run = 0U,
    IfxScu_PMCSR_REQSLP_Idle = 1U,
    IfxScu_PMCSR_REQSLP_Sleep = 2U,
    IfxScu_PMCSR_REQSLP_Stby = 3U
} IfxScu_PMCSR_REQSLP;
# 47 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h" 2


# 1 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.asm.h" 1
# 45 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.asm.h"
static inline __attribute__ ((always_inline)) uint16 IfxScuWdt_calculateLfsr(uint16 password);






static inline __attribute__ ((always_inline)) uint16 IfxScuWdt_calculateLfsr(uint16 password)
{

    uint32 temp = password;
    uint16 res;
    __asm("xor.t  %0,%1,0,%1,2   \n           xor.t  %0,%0,0,%1,12  \n           xor.t  %0,%0,0,%1,13  \n           xor.t  %0,%0,0,%1,14  \n           sh     %1,-1 \n           ins.t  %0,%1,14,%0,0   \n"




                                      : "=&d" (res) : "d" (temp));
    return res;

}
# 50 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h" 2
# 59 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h"
typedef struct
{
    uint16 password;
    uint16 reload;
    IfxScu_WDTCON1_IR inputFrequency;
    boolean disableWatchdog;
    boolean enableSmuRestriction;
    boolean enableAutomaticPasswordChange;
    boolean enableTimerCheck;
    boolean enableTimerCheckTolerance;
    boolean clrInternalResetFlag;
} IfxScuWdt_Config;
# 86 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_initConfig(IfxScuWdt_Config *config);
# 99 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_initCpuWatchdog(Ifx_SCU_WDTCPU *wdt, IfxScuWdt_Config *config);
# 112 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_initSafetyWatchdog(Ifx_SCU_WDTS *wdt, IfxScuWdt_Config *config);
# 135 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h"
static inline __attribute__ ((always_inline)) void IfxScuWdt_clearCpuEndinitInline(Ifx_SCU_WDTCPU *watchdog, uint16 password);
# 148 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h"
static inline __attribute__ ((always_inline)) void IfxScuWdt_clearSafetyEndinitInline(uint16 password);
# 160 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h"
static inline __attribute__ ((always_inline)) void IfxScuWdt_setCpuEndinitInline(Ifx_SCU_WDTCPU *watchdog, uint16 password);
# 171 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h"
static inline __attribute__ ((always_inline)) void IfxScuWdt_setSafetyEndinitInline(uint16 password);
# 187 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_clearCpuEndinit(uint16 password);
# 199 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_clearSafetyEndinit(uint16 password);
# 209 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_setCpuEndinit(uint16 password);
# 219 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_setSafetyEndinit(uint16 password);
# 239 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h"
static inline __attribute__ ((always_inline)) uint16 IfxScuWdt_getCpuWatchdogPasswordInline(Ifx_SCU_WDTCPU *watchdog);




static inline __attribute__ ((always_inline)) boolean IfxScuWdt_getSafetyWatchdogEndInit(void);
# 254 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h"
static inline __attribute__ ((always_inline)) uint16 IfxScuWdt_getSafetyWatchdogPasswordInline(void);
# 268 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_changeCpuWatchdogPassword(uint16 password, uint16 newPassword);
# 279 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_changeCpuWatchdogReload(uint16 password, uint16 reload);
# 289 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_changeSafetyWatchdogPassword(uint16 password, uint16 newPassword);
# 300 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_changeSafetyWatchdogReload(uint16 password, uint16 reload);
# 310 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_disableCpuWatchdog(uint16 password);
# 320 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_disableSafetyWatchdog(uint16 password);
# 330 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_enableCpuWatchdog(uint16 password);
# 340 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_enableSafetyWatchdog(uint16 password);
# 349 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h"
extern uint16 IfxScuWdt_getCpuWatchdogPassword(void);
# 358 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h"
extern uint16 IfxScuWdt_getSafetyWatchdogPassword(void);
# 368 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_serviceCpuWatchdog(uint16 password);
# 378 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_serviceSafetyWatchdog(uint16 password);







static inline __attribute__ ((always_inline)) void IfxScuWdt_clearCpuEndinitInline(Ifx_SCU_WDTCPU *watchdog, uint16 password)
{

    Ifx_SCU_WDTCPU_CON0 wdt_con0;
    wdt_con0.U = watchdog->CON0.U;

    if (wdt_con0.B.LCK)
    {

        wdt_con0.B.ENDINIT = 1;
        wdt_con0.B.LCK = 0;
        wdt_con0.B.PW = password;


        watchdog->CON0.U = wdt_con0.U;
    }


    wdt_con0.B.ENDINIT = 0;
    wdt_con0.B.LCK = 1;
    watchdog->CON0.U = wdt_con0.U;


    while (watchdog->CON0.B.ENDINIT == 1)
    {}
}


static inline __attribute__ ((always_inline)) void IfxScuWdt_clearSafetyEndinitInline(uint16 password)
{
    Ifx_SCU_WDTS *watchdog = &((*(Ifx_SCU *)0xF0036000u)).WDTS;

    Ifx_SCU_WDTS_CON0 wdt_con0;
    wdt_con0.U = watchdog->CON0.U;

    if (wdt_con0.B.LCK)
    {

        wdt_con0.B.ENDINIT = 1;
        wdt_con0.B.LCK = 0;
        wdt_con0.B.PW = password;


        watchdog->CON0.U = wdt_con0.U;
    }


    wdt_con0.B.ENDINIT = 0;
    wdt_con0.B.LCK = 1;
    watchdog->CON0.U = wdt_con0.U;


    while (watchdog->CON0.B.ENDINIT == 1)
    {}
}


static inline __attribute__ ((always_inline)) uint16 IfxScuWdt_getCpuWatchdogPasswordInline(Ifx_SCU_WDTCPU *watchdog)
{
    uint16 password;




    password = watchdog->CON0.B.PW;
    password ^= 0x003F;

    return password;
}


static inline __attribute__ ((always_inline)) boolean IfxScuWdt_getSafetyWatchdogEndInit(void)
{
    return (boolean)((*(Ifx_SCU *)0xF0036000u)).WDTS.CON0.B.ENDINIT;
}


static inline __attribute__ ((always_inline)) uint16 IfxScuWdt_getSafetyWatchdogPasswordInline(void)
{
    uint16 password;
    Ifx_SCU_WDTS *watchdog = &((*(Ifx_SCU *)0xF0036000u)).WDTS;




    password = watchdog->CON0.B.PW;
    password ^= 0x003F;

    return password;
}


static inline __attribute__ ((always_inline)) void IfxScuWdt_setCpuEndinitInline(Ifx_SCU_WDTCPU *watchdog, uint16 password)
{

    Ifx_SCU_WDTCPU_CON0 wdt_con0;
    wdt_con0.U = watchdog->CON0.U;

    if (wdt_con0.B.LCK)
    {

        wdt_con0.B.ENDINIT = 1;
        wdt_con0.B.LCK = 0;
        wdt_con0.B.PW = password;


        watchdog->CON0.U = wdt_con0.U;
    }


    wdt_con0.B.ENDINIT = 1;
    wdt_con0.B.LCK = 1;
    watchdog->CON0.U = wdt_con0.U;


    while (watchdog->CON0.B.ENDINIT == 0)
    {}


}


static inline __attribute__ ((always_inline)) void IfxScuWdt_setSafetyEndinitInline(uint16 password)
{
    Ifx_SCU_WDTS *watchdog = &((*(Ifx_SCU *)0xF0036000u)).WDTS;


    Ifx_SCU_WDTS_CON0 wdt_con0;
    wdt_con0.U = watchdog->CON0.U;

    if (wdt_con0.B.LCK)
    {

        wdt_con0.B.ENDINIT = 1;
        wdt_con0.B.LCK = 0;
        wdt_con0.B.PW = password;


        watchdog->CON0.U = wdt_con0.U;
    }


    wdt_con0.B.ENDINIT = 1;
    wdt_con0.B.LCK = 1;
    watchdog->CON0.U = wdt_con0.U;


    while (watchdog->CON0.B.ENDINIT == 0)
    {}
}
# 52 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h" 2

# 1 "./0_Src/1_SrvSw/_Utilities/Ifx_Assert.h" 1
# 54 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h" 2
# 90 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h"
typedef unsigned int IfxCpu_spinLock;



typedef unsigned int IfxCpu_mutexLock;
# 104 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h"
typedef enum
{
    IfxCpu_CoreMode_halt,
    IfxCpu_CoreMode_run,
    IfxCpu_CoreMode_idle,
    IfxCpu_CoreMode_sleep,
    IfxCpu_CoreMode_stby,
    IfxCpu_CoreMode_unknown
} IfxCpu_CoreMode;



typedef enum
{
    IfxCpu_CounterMode_normal = 0,
    IfxCpu_CounterMode_task = 1
} IfxCpu_CounterMode;
# 130 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h"
typedef struct
{
    uint32 counter;
    boolean overlfow;
} IfxCpu_Counter;







typedef struct
{
    IfxCpu_Counter instruction;
    IfxCpu_Counter clock;
    IfxCpu_Counter counter1;
    IfxCpu_Counter counter2;
    IfxCpu_Counter counter3;
} IfxCpu_Perf;
# 163 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h"
static inline __attribute__ ((always_inline)) IfxCpu_ResourceCpu IfxCpu_getCoreId(void);




static inline __attribute__ ((always_inline)) IfxCpu_ResourceCpu IfxCpu_getCoreIndex(void);
# 178 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h"
static inline __attribute__ ((always_inline)) void IfxCpu_initCSA(uint32 *csaBegin, uint32 *csaEnd);




static inline __attribute__ ((always_inline)) void IfxCpu_setSafetyTaskIdentifier(boolean safetyId);




static inline __attribute__ ((always_inline)) void IfxCpu_triggerSwReset(void);
# 198 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h"
extern Ifx_CPU *IfxCpu_getAddress(IfxCpu_ResourceCpu cpu);





extern IfxCpu_CoreMode IfxCpu_getCoreMode(Ifx_CPU *cpu);





extern IfxCpu_ResourceCpu IfxCpu_getIndex(Ifx_CPU *cpu);
# 219 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h"
extern boolean IfxCpu_setCoreMode(Ifx_CPU *cpu, IfxCpu_CoreMode mode);
# 228 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h"
extern boolean IfxCpu_setProgramCounter(Ifx_CPU *cpu, uint32 programCounter);
# 237 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h"
extern boolean IfxCpu_startCore(Ifx_CPU *cpu, uint32 programCounter);
# 254 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h"
static inline __attribute__ ((always_inline)) boolean IfxCpu_areInterruptsEnabled(void);
# 264 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h"
static inline __attribute__ ((always_inline)) boolean IfxCpu_disableInterrupts(void);





static inline __attribute__ ((always_inline)) void IfxCpu_enableInterrupts(void);




static inline __attribute__ ((always_inline)) void IfxCpu_forceDisableInterrupts(void);
# 284 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h"
static inline __attribute__ ((always_inline)) void IfxCpu_restoreInterrupts(boolean enabled);
# 302 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h"
static inline __attribute__ ((always_inline)) void IfxCpu_enableSegmentSpecificDataAccessCacheability(uint16 segmentNumberMask, boolean enable);
# 311 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h"
static inline __attribute__ ((always_inline)) void IfxCpu_enableSegmentSpecificInstructionAccessCacheability(uint16 segmentNumberMask, boolean enable);




static inline __attribute__ ((always_inline)) void IfxCpu_invalidateProgramCache(void);





static inline __attribute__ ((always_inline)) boolean IfxCpu_isAddressCachable(void *address);
# 333 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h"
static inline __attribute__ ((always_inline)) void IfxCpu_setDataCache(boolean enable);
# 344 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h"
static inline __attribute__ ((always_inline)) void IfxCpu_setProgramCache(boolean enable);
# 361 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h"
static inline __attribute__ ((always_inline)) uint32 IfxCpu_getClockCounter(void);
# 374 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h"
static inline __attribute__ ((always_inline)) boolean IfxCpu_getClockCounterStickyOverflow(void);







static inline __attribute__ ((always_inline)) uint32 IfxCpu_getInstructionCounter(void);
# 395 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h"
static inline __attribute__ ((always_inline)) boolean IfxCpu_getInstructionCounterStickyOverflow(void);





static inline __attribute__ ((always_inline)) uint32 IfxCpu_getPerformanceCounter(uint32 address);






static inline __attribute__ ((always_inline)) boolean IfxCpu_getPerformanceCounterStickyOverflow(uint32 address);







static inline __attribute__ ((always_inline)) void IfxCpu_resetAndStartCounters(IfxCpu_CounterMode mode);
# 427 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h"
static inline __attribute__ ((always_inline)) void IfxCpu_setPerformanceCountersEnableBit(uint32 enable);







static inline __attribute__ ((always_inline)) IfxCpu_Perf IfxCpu_stopCounters(void);
# 444 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h"
static inline __attribute__ ((always_inline)) void IfxCpu_updateClockCounter(uint32 count);
# 453 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h"
static inline __attribute__ ((always_inline)) void IfxCpu_updateInstructionCounter(uint32 count);







static inline __attribute__ ((always_inline)) void IfxCpu_updatePerformanceCounter(uint32 address, uint32 count);
# 488 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h"
extern boolean IfxCpu_acquireMutex(IfxCpu_mutexLock *lock);
# 506 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h"
extern void IfxCpu_releaseMutex(IfxCpu_mutexLock *lock);







extern void IfxCpu_resetSpinLock(IfxCpu_spinLock *lock);
# 533 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h"
extern boolean IfxCpu_setSpinLock(IfxCpu_spinLock *lock, uint32 timeoutCount);







static inline __attribute__ ((always_inline)) boolean IfxCpu_areInterruptsEnabled(void)
{
    Ifx_CPU_ICR reg;
    reg.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFE2C" : "=d" (__res) :: "memory"); __res; }));
    return reg.B.IE != 0;
}


static inline __attribute__ ((always_inline)) boolean IfxCpu_disableInterrupts(void)
{
    boolean enabled;
    enabled = IfxCpu_areInterruptsEnabled();
    __asm__ volatile ("disable" : : : "memory");
    __nop();
    return enabled;
}


static inline __attribute__ ((always_inline)) void IfxCpu_enableInterrupts(void)
{
    __asm__ volatile ("enable" : : : "memory");
}


static inline __attribute__ ((always_inline)) void IfxCpu_enableSegmentSpecificDataAccessCacheability(uint16 segmentNumberMask, boolean enable)
{
    uint32 cpu_pmaVal;
    uint16 checkRestrictionMask;
    uint32 coreId = IfxCpu_getCoreIndex();
    uint16 wdtPassword = IfxScuWdt_getCpuWatchdogPasswordInline(&((*(Ifx_SCU *)0xF0036000u)).WDTCPU[coreId]);



    checkRestrictionMask = ((uint16)1 << (7 - coreId)) | ((uint16)1 << 0xC);

    if ((segmentNumberMask & checkRestrictionMask) != 0)
    {
        segmentNumberMask |= checkRestrictionMask;
    }

    cpu_pmaVal = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0x8100" : "=d" (__res) :: "memory"); __res; }));

    cpu_pmaVal = enable ? (cpu_pmaVal | segmentNumberMask) : (cpu_pmaVal & ~segmentNumberMask);


    IfxScuWdt_clearCpuEndinitInline(&((*(Ifx_SCU *)0xF0036000u)).WDTCPU[coreId], wdtPassword);


    __dsync();
    do { unsigned __newval = (unsigned) (cpu_pmaVal); __asm__ volatile ("mtcr LO:" "0x8100" ", %0" :: "d" (__newval) : "memory"); } while (0);
    __isync();
    IfxScuWdt_setCpuEndinitInline(&((*(Ifx_SCU *)0xF0036000u)).WDTCPU[coreId], wdtPassword);
}


static inline __attribute__ ((always_inline)) void IfxCpu_enableSegmentSpecificInstructionAccessCacheability(uint16 segmentNumberMask, boolean enable)
{
    uint32 cpu_pmaVal;
    uint16 checkRestrictionMask;
    uint32 coreId = IfxCpu_getCoreIndex();
    uint16 wdtPassword = IfxScuWdt_getCpuWatchdogPasswordInline(&((*(Ifx_SCU *)0xF0036000u)).WDTCPU[coreId]);



    checkRestrictionMask = ((uint16)1 << (7 - coreId)) | ((uint16)1 << 0xD);

    if ((segmentNumberMask & checkRestrictionMask) != 0)
    {
        segmentNumberMask |= checkRestrictionMask;
    }

    cpu_pmaVal = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0x8104" : "=d" (__res) :: "memory"); __res; }));

    cpu_pmaVal = enable ? (cpu_pmaVal | segmentNumberMask) : (cpu_pmaVal & ~segmentNumberMask);


    IfxScuWdt_clearCpuEndinitInline(&((*(Ifx_SCU *)0xF0036000u)).WDTCPU[coreId], wdtPassword);


    __dsync();
    do { unsigned __newval = (unsigned) (cpu_pmaVal); __asm__ volatile ("mtcr LO:" "0x8104" ", %0" :: "d" (__newval) : "memory"); } while (0);
    __isync();
    IfxScuWdt_setCpuEndinitInline(&((*(Ifx_SCU *)0xF0036000u)).WDTCPU[coreId], wdtPassword);
}


static inline __attribute__ ((always_inline)) void IfxCpu_forceDisableInterrupts(void)
{
    __asm__ volatile ("disable" : : : "memory");
    __nop();
}


static inline __attribute__ ((always_inline)) uint32 IfxCpu_getClockCounter(void)
{
    return IfxCpu_getPerformanceCounter(0xFC04);
}


static inline __attribute__ ((always_inline)) boolean IfxCpu_getClockCounterStickyOverflow(void)
{
    return IfxCpu_getPerformanceCounterStickyOverflow(0xFC04);
}


static inline __attribute__ ((always_inline)) IfxCpu_ResourceCpu IfxCpu_getCoreId(void)
{
    Ifx_CPU_CORE_ID reg;
    reg.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFE1C" : "=d" (__res) :: "memory"); __res; }));
    return (IfxCpu_ResourceCpu)reg.B.CORE_ID;
}


static inline __attribute__ ((always_inline)) IfxCpu_ResourceCpu IfxCpu_getCoreIndex(void)
{
    Ifx_CPU_CORE_ID reg;
    reg.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFE1C" : "=d" (__res) :: "memory"); __res; }));
    return (IfxCpu_ResourceCpu)reg.B.CORE_ID;
}


static inline __attribute__ ((always_inline)) uint32 IfxCpu_getInstructionCounter(void)
{
    return IfxCpu_getPerformanceCounter(0xFC08);
}


static inline __attribute__ ((always_inline)) boolean IfxCpu_getInstructionCounterStickyOverflow(void)
{
    return IfxCpu_getPerformanceCounterStickyOverflow(0xFC08);
}


static inline __attribute__ ((always_inline)) uint32 IfxCpu_getPerformanceCounter(uint32 address)
{
    Ifx_CPU_CCNT ccnt;
    ccnt.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "address" : "=d" (__res) :: "memory"); __res; }));
    return ccnt.B.CountValue;
}


static inline __attribute__ ((always_inline)) boolean IfxCpu_getPerformanceCounterStickyOverflow(uint32 address)
{
    Ifx_CPU_CCNT ccnt;

    ccnt.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "address" : "=d" (__res) :: "memory"); __res; }));

    return ccnt.B.SOvf;
}


static inline __attribute__ ((always_inline)) void IfxCpu_initCSA(uint32 *csaBegin, uint32 *csaEnd)
{
    uint32 k;
    uint32 nxt_cxi_val = 0;
    uint32 *prvCsa = 0U;
    uint32 *nxtCsa = csaBegin;

    for (k = 0; k < (((uint32)csaEnd - (uint32)csaBegin) / 64); k++)
    {
        nxt_cxi_val = ((uint32)nxtCsa & (0XFU << 28)) >> 12 | ((uint32)nxtCsa & (0XFFFFU << 6)) >> 6;

        if (k == 0)
        {
            do { unsigned __newval = (unsigned) (nxt_cxi_val); __asm__ volatile ("mtcr LO:" "0xFE38" ", %0" :: "d" (__newval) : "memory"); } while (0);
        }
        else
        {
            *prvCsa = nxt_cxi_val;
        }

        prvCsa = (uint32 *)nxtCsa;
        nxtCsa += 16;
    }

    *prvCsa = 0;
    do { unsigned __newval = (unsigned) (nxt_cxi_val); __asm__ volatile ("mtcr LO:" "0xFE3C" ", %0" :: "d" (__newval) : "memory"); } while (0);
}


static inline __attribute__ ((always_inline)) void IfxCpu_invalidateProgramCache(void)
{
    uint16 cpuWdtPassword = IfxScuWdt_getCpuWatchdogPassword();
    {
        IfxScuWdt_clearCpuEndinit(cpuWdtPassword);
        Ifx_CPU_PCON1 pcon1;
        pcon1.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0x9204" : "=d" (__res) :: "memory"); __res; }));
        pcon1.B.PCINV = 1;
        do { unsigned __newval = (unsigned) (pcon1.U); __asm__ volatile ("mtcr LO:" "0x9204" ", %0" :: "d" (__newval) : "memory"); } while (0);
        IfxScuWdt_setCpuEndinit(cpuWdtPassword);
    }
}


static inline __attribute__ ((always_inline)) boolean IfxCpu_isAddressCachable(void *address)
{
    uint8 segment = (uint32)address >> 24;
    return ((segment == (8)) || (segment == (9))) ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxCpu_resetAndStartCounters(IfxCpu_CounterMode mode)
{
    Ifx_CPU_CCTRL cctrl;
    cctrl.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFC00" : "=d" (__res) :: "memory"); __res; }));

    cctrl.B.CE = 0;
    do { unsigned __newval = (unsigned) (cctrl.U); __asm__ volatile ("mtcr LO:" "0xFC00" ", %0" :: "d" (__newval) : "memory"); } while (0);


    do { unsigned __newval = (unsigned) (0); __asm__ volatile ("mtcr LO:" "0xFC04" ", %0" :: "d" (__newval) : "memory"); } while (0);
    do { unsigned __newval = (unsigned) (0); __asm__ volatile ("mtcr LO:" "0xFC08" ", %0" :: "d" (__newval) : "memory"); } while (0);
    do { unsigned __newval = (unsigned) (0); __asm__ volatile ("mtcr LO:" "0xFC0C" ", %0" :: "d" (__newval) : "memory"); } while (0);
    do { unsigned __newval = (unsigned) (0); __asm__ volatile ("mtcr LO:" "0xFC10" ", %0" :: "d" (__newval) : "memory"); } while (0);
    do { unsigned __newval = (unsigned) (0); __asm__ volatile ("mtcr LO:" "0xFC14" ", %0" :: "d" (__newval) : "memory"); } while (0);


    cctrl.B.CE = 1;
    cctrl.B.CM = mode;
    do { unsigned __newval = (unsigned) (cctrl.U); __asm__ volatile ("mtcr LO:" "0xFC00" ", %0" :: "d" (__newval) : "memory"); } while (0);
}


static inline __attribute__ ((always_inline)) void IfxCpu_restoreInterrupts(boolean enabled)
{
    if (enabled != 0)
    {
        __asm__ volatile ("enable" : : : "memory");
    }
}


static inline __attribute__ ((always_inline)) void IfxCpu_setDataCache(boolean enable)
{
    uint32 coreId = IfxCpu_getCoreIndex();
    uint16 wdtPassword = IfxScuWdt_getCpuWatchdogPasswordInline(&((*(Ifx_SCU *)0xF0036000u)).WDTCPU[coreId]);

    {
        IfxScuWdt_clearCpuEndinitInline(&((*(Ifx_SCU *)0xF0036000u)).WDTCPU[coreId], wdtPassword);
        Ifx_CPU_DCON0 dcon0;
        dcon0.U = 0;
        dcon0.B.DCBYP = enable ? 0 : 1;
        do { unsigned __newval = (unsigned) (dcon0.U); __asm__ volatile ("mtcr LO:" "0x9040" ", %0" :: "d" (__newval) : "memory"); } while (0);
        IfxScuWdt_setCpuEndinitInline(&((*(Ifx_SCU *)0xF0036000u)).WDTCPU[coreId], wdtPassword);
    }

    __isync();
}


static inline __attribute__ ((always_inline)) void IfxCpu_setPerformanceCountersEnableBit(uint32 enable)
{
    Ifx_CPU_CCTRL cctrl;
    cctrl.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFC00" : "=d" (__res) :: "memory"); __res; }));
    cctrl.B.CE = enable;
    do { unsigned __newval = (unsigned) (cctrl.U); __asm__ volatile ("mtcr LO:" "0xFC00" ", %0" :: "d" (__newval) : "memory"); } while (0);
}


static inline __attribute__ ((always_inline)) void IfxCpu_setProgramCache(boolean enable)
{
    if (enable)
    {
        Ifx_CPU_PCON1 pcon1;
        pcon1.U = 0;
        pcon1.B.PCINV = 1;
        do { unsigned __newval = (unsigned) (pcon1.U); __asm__ volatile ("mtcr LO:" "0x9204" ", %0" :: "d" (__newval) : "memory"); } while (0);
    }

    uint32 coreId = IfxCpu_getCoreIndex();
    uint16 wdtPassword = IfxScuWdt_getCpuWatchdogPasswordInline(&((*(Ifx_SCU *)0xF0036000u)).WDTCPU[coreId]);

    {
        IfxScuWdt_clearCpuEndinitInline(&((*(Ifx_SCU *)0xF0036000u)).WDTCPU[coreId], wdtPassword);
        Ifx_CPU_PCON0 pcon0;
        pcon0.U = 0;
        pcon0.B.PCBYP = enable ? 0 : 1;
        do { unsigned __newval = (unsigned) (pcon0.U); __asm__ volatile ("mtcr LO:" "0x920C" ", %0" :: "d" (__newval) : "memory"); } while (0);
        IfxScuWdt_setCpuEndinitInline(&((*(Ifx_SCU *)0xF0036000u)).WDTCPU[coreId], wdtPassword);
    }

    __isync();
}


static inline __attribute__ ((always_inline)) void IfxCpu_setSafetyTaskIdentifier(boolean safetyId)
{
    Ifx_CPU_PSW psw;
    ((void)0);
    psw.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFE04" : "=d" (__res) :: "memory"); __res; }));
    psw.B.S = safetyId;
    do { unsigned __newval = (unsigned) ((uint32)psw.U); __asm__ volatile ("mtcr LO:" "0xFE04" ", %0" :: "d" (__newval) : "memory"); } while (0);
}


static inline __attribute__ ((always_inline)) IfxCpu_Perf IfxCpu_stopCounters(void)
{
    IfxCpu_Perf result;


    __stopPerfCounters();

    Ifx_CPU_CCNT ccnt;
    ccnt.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFC04" : "=d" (__res) :: "memory"); __res; }));
    result.clock.counter = ccnt.B.CountValue;
    result.clock.overlfow = ccnt.B.SOvf;

    Ifx_CPU_ICNT icnt;
    icnt.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFC08" : "=d" (__res) :: "memory"); __res; }));
    result.instruction.counter = icnt.B.CountValue;
    result.instruction.overlfow = icnt.B.SOvf;

    Ifx_CPU_M1CNT m1cnt;
    m1cnt.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFC0C" : "=d" (__res) :: "memory"); __res; }));
    result.counter1.counter = m1cnt.B.CountValue;
    result.counter1.overlfow = m1cnt.B.SOvf;

    Ifx_CPU_M2CNT m2cnt;
    m2cnt.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFC10" : "=d" (__res) :: "memory"); __res; }));
    result.counter2.counter = m2cnt.B.CountValue;
    result.counter2.overlfow = m2cnt.B.SOvf;

    Ifx_CPU_M3CNT m3cnt;
    m3cnt.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFC14" : "=d" (__res) :: "memory"); __res; }));
    result.counter3.counter = m3cnt.B.CountValue;
    result.counter3.overlfow = m3cnt.B.SOvf;
    return result;
}


static inline __attribute__ ((always_inline)) void IfxCpu_triggerSwReset(void)
{
    ((*(Ifx_SCU *)0xF0036000u)).SWRSTCON.B.SWRSTREQ = 1;


    while (1)
    {}
}


static inline __attribute__ ((always_inline)) void IfxCpu_updateClockCounter(uint32 count)
{
    IfxCpu_updatePerformanceCounter(0xFC04, count);
}


static inline __attribute__ ((always_inline)) void IfxCpu_updateInstructionCounter(uint32 count)
{
    IfxCpu_updatePerformanceCounter(0xFC08, count);
}


static inline __attribute__ ((always_inline)) void IfxCpu_updatePerformanceCounter(uint32 address, uint32 count)
{
    Ifx_CPU_CCTRL cctrl;
    boolean enableBit;

    cctrl.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFC00" : "=d" (__res) :: "memory"); __res; }));
    enableBit = cctrl.B.CE;
    cctrl.B.CE = 0;
    do { unsigned __newval = (unsigned) (cctrl.U); __asm__ volatile ("mtcr LO:" "0xFC00" ", %0" :: "d" (__newval) : "memory"); } while (0);


    count &= ~(1U << 31);
    do { unsigned __newval = (unsigned) (count); __asm__ volatile ("mtcr LO:" "address" ", %0" :: "d" (__newval) : "memory"); } while (0);


    cctrl.B.CE = enableBit;
    do { unsigned __newval = (unsigned) (cctrl.U); __asm__ volatile ("mtcr LO:" "0xFC00" ", %0" :: "d" (__newval) : "memory"); } while (0);
}
# 26 "./0_Src/0_AppSw/Tricore/Device_Driver/Driver_Communication/Peripherals_ETH.h" 2

# 1 "./0_Src/4_McHal/Tricore/Eth/Phy_Pef7071/IfxEth_Phy_Pef7071.h" 1
# 37 "./0_Src/4_McHal/Tricore/Eth/Phy_Pef7071/IfxEth_Phy_Pef7071.h"
# 1 "./0_Src/4_McHal/Tricore/Eth/Std/IfxEth.h" 1
# 45 "./0_Src/4_McHal/Tricore/Eth/Std/IfxEth.h"
# 1 "./0_Src/4_McHal/Tricore/_Impl/IfxEth_cfg.h" 1
# 46 "./0_Src/4_McHal/Tricore/Eth/Std/IfxEth.h" 2

# 1 "./0_Src/4_McHal/Tricore/_Reg/IfxEth_reg.h" 1
# 36 "./0_Src/4_McHal/Tricore/_Reg/IfxEth_reg.h"
# 1 "./0_Src/4_McHal/Tricore/_Reg/IfxEth_regdef.h" 1
# 45 "./0_Src/4_McHal/Tricore/_Reg/IfxEth_regdef.h"
typedef struct _Ifx_ETH_ACCEN0_Bits
{
    unsigned int EN0 : 1;
    unsigned int EN1 : 1;
    unsigned int EN2 : 1;
    unsigned int EN3 : 1;
    unsigned int EN4 : 1;
    unsigned int EN5 : 1;
    unsigned int EN6 : 1;
    unsigned int EN7 : 1;
    unsigned int EN8 : 1;
    unsigned int EN9 : 1;
    unsigned int EN10 : 1;
    unsigned int EN11 : 1;
    unsigned int EN12 : 1;
    unsigned int EN13 : 1;
    unsigned int EN14 : 1;
    unsigned int EN15 : 1;
    unsigned int EN16 : 1;
    unsigned int EN17 : 1;
    unsigned int EN18 : 1;
    unsigned int EN19 : 1;
    unsigned int EN20 : 1;
    unsigned int EN21 : 1;
    unsigned int EN22 : 1;
    unsigned int EN23 : 1;
    unsigned int EN24 : 1;
    unsigned int EN25 : 1;
    unsigned int EN26 : 1;
    unsigned int EN27 : 1;
    unsigned int EN28 : 1;
    unsigned int EN29 : 1;
    unsigned int EN30 : 1;
    unsigned int EN31 : 1;
} Ifx_ETH_ACCEN0_Bits;


typedef struct _Ifx_ETH_ACCEN1_Bits
{
    unsigned int reserved_0 : 32;
} Ifx_ETH_ACCEN1_Bits;


typedef struct _Ifx_ETH_AHB_OR_AXI_STATUS_Bits
{
    unsigned int AXWHSTS : 1;
    unsigned int AXIRDSTS : 1;
    unsigned int reserved_2 : 30;
} Ifx_ETH_AHB_OR_AXI_STATUS_Bits;


typedef struct _Ifx_ETH_BUS_MODE_Bits
{
    unsigned int SWR : 1;
    unsigned int DA : 1;
    unsigned int DSL : 5;
    unsigned int ATDS : 1;
    unsigned int PBL : 6;
    unsigned int PR : 2;
    unsigned int FB : 1;
    unsigned int RPBL : 6;
    unsigned int USP : 1;
    unsigned int PBLx8 : 1;
    unsigned int AAL : 1;
    unsigned int MB : 1;
    unsigned int TXPR : 1;
    unsigned int PRWG : 2;
    unsigned int reserved_30 : 2;
} Ifx_ETH_BUS_MODE_Bits;


typedef struct _Ifx_ETH_CLC_Bits
{
    unsigned int DISR : 1;
    unsigned int DISS : 1;
    unsigned int reserved_2 : 30;
} Ifx_ETH_CLC_Bits;


typedef struct _Ifx_ETH_CURRENT_HOST_RECEIVE_BUFFER_ADDRESS_Bits
{
    unsigned int CURRBUFAPTR : 32;
} Ifx_ETH_CURRENT_HOST_RECEIVE_BUFFER_ADDRESS_Bits;


typedef struct _Ifx_ETH_CURRENT_HOST_RECEIVE_DESCRIPTOR_Bits
{
    unsigned int CURRDESAPTR : 32;
} Ifx_ETH_CURRENT_HOST_RECEIVE_DESCRIPTOR_Bits;


typedef struct _Ifx_ETH_CURRENT_HOST_TRANSMIT_BUFFER_ADDRESS_Bits
{
    unsigned int CURTBUFAPTR : 32;
} Ifx_ETH_CURRENT_HOST_TRANSMIT_BUFFER_ADDRESS_Bits;


typedef struct _Ifx_ETH_CURRENT_HOST_TRANSMIT_DESCRIPTOR_Bits
{
    unsigned int CURTDESAPTR : 32;
} Ifx_ETH_CURRENT_HOST_TRANSMIT_DESCRIPTOR_Bits;


typedef struct _Ifx_ETH_DEBUG_Bits
{
    unsigned int RPESTS : 1;
    unsigned int RFCFCSTS : 2;
    unsigned int reserved_3 : 1;
    unsigned int RWCSTS : 1;
    unsigned int RRCSTS : 2;
    unsigned int reserved_7 : 1;
    unsigned int RXFSTS : 2;
    unsigned int reserved_10 : 6;
    unsigned int TPESTS : 1;
    unsigned int TFCSTS : 2;
    unsigned int TXPAUSED : 1;
    unsigned int TRCSTS : 2;
    unsigned int TWCSTS : 1;
    unsigned int reserved_23 : 1;
    unsigned int TXFSTS : 1;
    unsigned int TXSTSFSTS : 1;
    unsigned int reserved_26 : 6;
} Ifx_ETH_DEBUG_Bits;


typedef struct _Ifx_ETH_FLOW_CONTROL_Bits
{
    unsigned int FCA_BPA : 1;
    unsigned int TFE : 1;
    unsigned int RFE : 1;
    unsigned int UP : 1;
    unsigned int PLT : 2;
    unsigned int reserved_6 : 1;
    unsigned int DZPQ : 1;
    unsigned int reserved_8 : 8;
    unsigned int PT : 16;
} Ifx_ETH_FLOW_CONTROL_Bits;


typedef struct _Ifx_ETH_GMII_ADDRESS_Bits
{
    unsigned int GB : 1;
    unsigned int GW : 1;
    unsigned int CR : 4;
    unsigned int GR : 5;
    unsigned int PA : 5;
    unsigned int reserved_16 : 16;
} Ifx_ETH_GMII_ADDRESS_Bits;


typedef struct _Ifx_ETH_GMII_DATA_Bits
{
    unsigned int GD : 16;
    unsigned int reserved_16 : 16;
} Ifx_ETH_GMII_DATA_Bits;


typedef struct _Ifx_ETH_GPCTL_Bits
{
    unsigned int ALTI0 : 2;
    unsigned int ALTI1 : 2;
    unsigned int ALTI2 : 2;
    unsigned int ALTI3 : 2;
    unsigned int ALTI4 : 2;
    unsigned int ALTI5 : 2;
    unsigned int ALTI6 : 2;
    unsigned int ALTI7 : 2;
    unsigned int ALTI8 : 2;
    unsigned int ALTI9 : 2;
    unsigned int ALTI10 : 2;
    unsigned int reserved_22 : 2;
    unsigned int EPR : 1;
    unsigned int DIV : 1;
    unsigned int reserved_26 : 6;
} Ifx_ETH_GPCTL_Bits;


typedef struct _Ifx_ETH_HASH_TABLE_HIGH_Bits
{
    unsigned int HTH : 32;
} Ifx_ETH_HASH_TABLE_HIGH_Bits;


typedef struct _Ifx_ETH_HASH_TABLE_LOW_Bits
{
    unsigned int HTL : 32;
} Ifx_ETH_HASH_TABLE_LOW_Bits;


typedef struct _Ifx_ETH_HW_FEATURE_Bits
{
    unsigned int MIISEL : 1;
    unsigned int GMIISEL : 1;
    unsigned int HDSEL : 1;
    unsigned int EXTHASHEN : 1;
    unsigned int HASHSEL : 1;
    unsigned int ADDMACADRSEL : 1;
    unsigned int PCSSEL : 1;
    unsigned int L3L4FLTREN : 1;
    unsigned int SMASEL : 1;
    unsigned int RWKSEL : 1;
    unsigned int MGKSEL : 1;
    unsigned int MMCSEL : 1;
    unsigned int TSVER1SEL : 1;
    unsigned int TSVER2SEL : 1;
    unsigned int EEESEL : 1;
    unsigned int AVSEL : 1;
    unsigned int TXCOESEL : 1;
    unsigned int RXTYP1COE : 1;
    unsigned int RXTYP2COE : 1;
    unsigned int RXFIFOSIZE : 1;
    unsigned int RXCHCNT : 2;
    unsigned int TXCHCNT : 2;
    unsigned int ENHDESSEL : 1;
    unsigned int INTTSEN : 1;
    unsigned int FLEXIPPSEN : 1;
    unsigned int SAVLANINS : 1;
    unsigned int ACTPHYIF : 3;
    unsigned int reserved_31 : 1;
} Ifx_ETH_HW_FEATURE_Bits;


typedef struct _Ifx_ETH_ID_Bits
{
    unsigned int MODREV : 8;
    unsigned int MODTYPE : 8;
    unsigned int MODNUMBER : 16;
} Ifx_ETH_ID_Bits;


typedef struct _Ifx_ETH_INTERRUPT_ENABLE_Bits
{
    unsigned int TIE : 1;
    unsigned int TSE : 1;
    unsigned int TUE : 1;
    unsigned int TJE : 1;
    unsigned int OVE : 1;
    unsigned int UNE : 1;
    unsigned int RIE : 1;
    unsigned int RUE : 1;
    unsigned int RSE : 1;
    unsigned int RWE : 1;
    unsigned int ETE : 1;
    unsigned int reserved_11 : 2;
    unsigned int FBE : 1;
    unsigned int ERE : 1;
    unsigned int AIE : 1;
    unsigned int NIE : 1;
    unsigned int reserved_17 : 15;
} Ifx_ETH_INTERRUPT_ENABLE_Bits;


typedef struct _Ifx_ETH_INTERRUPT_MASK_Bits
{
    unsigned int RGSMIIIM : 1;
    unsigned int PCSLCHGIM : 1;
    unsigned int PCSANCIM : 1;
    unsigned int PMTIM : 1;
    unsigned int reserved_4 : 5;
    unsigned int TSIM : 1;
    unsigned int LPIIM : 1;
    unsigned int reserved_11 : 21;
} Ifx_ETH_INTERRUPT_MASK_Bits;


typedef struct _Ifx_ETH_INTERRUPT_STATUS_Bits
{
    unsigned int RGSMIIIS : 1;
    unsigned int PCSLCHGIS : 1;
    unsigned int PCSANCIS : 1;
    unsigned int PMTIS : 1;
    unsigned int MMCIS : 1;
    unsigned int MMCRXIS : 1;
    unsigned int MMCTXIS : 1;
    unsigned int MMCRXIPIS : 1;
    unsigned int reserved_8 : 1;
    unsigned int TSIS : 1;
    unsigned int LPIIS : 1;
    unsigned int reserved_11 : 21;
} Ifx_ETH_INTERRUPT_STATUS_Bits;


typedef struct _Ifx_ETH_KRST0_Bits
{
    unsigned int RST : 1;
    unsigned int RSTSTAT : 1;
    unsigned int reserved_2 : 30;
} Ifx_ETH_KRST0_Bits;


typedef struct _Ifx_ETH_KRST1_Bits
{
    unsigned int RST : 1;
    unsigned int reserved_1 : 31;
} Ifx_ETH_KRST1_Bits;


typedef struct _Ifx_ETH_KRSTCLR_Bits
{
    unsigned int CLR : 1;
    unsigned int reserved_1 : 31;
} Ifx_ETH_KRSTCLR_Bits;


typedef struct _Ifx_ETH_MAC_ADDRESS_HIGH_Bits
{
    unsigned int ADDRHI : 16;
    unsigned int reserved_16 : 8;
    unsigned int MBC : 6;
    unsigned int SA : 1;
    unsigned int AE : 1;
} Ifx_ETH_MAC_ADDRESS_HIGH_Bits;


typedef struct _Ifx_ETH_MAC_ADDRESS_LOW_Bits
{
    unsigned int ADDRLO : 32;
} Ifx_ETH_MAC_ADDRESS_LOW_Bits;


typedef struct _Ifx_ETH_MAC_CONFIGURATION_Bits
{
    unsigned int PRELEN : 2;
    unsigned int RE : 1;
    unsigned int TE : 1;
    unsigned int DC : 1;
    unsigned int BL : 2;
    unsigned int ACS : 1;
    unsigned int LUD : 1;
    unsigned int DR : 1;
    unsigned int IPC : 1;
    unsigned int DM : 1;
    unsigned int LM : 1;
    unsigned int DO : 1;
    unsigned int FES : 1;
    unsigned int PS : 1;
    unsigned int DCRS : 1;
    unsigned int IFG : 3;
    unsigned int JE : 1;
    unsigned int BE : 1;
    unsigned int JD : 1;
    unsigned int WD : 1;
    unsigned int TC : 1;
    unsigned int CST : 1;
    unsigned int SFTERR : 1;
    unsigned int TWOKPE : 1;
    unsigned int SARC : 3;
    unsigned int reserved_31 : 1;
} Ifx_ETH_MAC_CONFIGURATION_Bits;


typedef struct _Ifx_ETH_MAC_FRAME_FILTER_Bits
{
    unsigned int PR : 1;
    unsigned int HUC : 1;
    unsigned int HMC : 1;
    unsigned int DAIF : 1;
    unsigned int PM : 1;
    unsigned int DBF : 1;
    unsigned int PCF : 2;
    unsigned int SAIF : 1;
    unsigned int SAF : 1;
    unsigned int HPF : 1;
    unsigned int reserved_11 : 5;
    unsigned int VTFE : 1;
    unsigned int reserved_17 : 3;
    unsigned int IPFE : 1;
    unsigned int DNTU : 1;
    unsigned int reserved_22 : 9;
    unsigned int RA : 1;
} Ifx_ETH_MAC_FRAME_FILTER_Bits;


typedef struct _Ifx_ETH_MISSED_FRAME_AND_BUFFER_OVERFLOW_COUNTER_Bits
{
    unsigned int MISFRMCNT : 16;
    unsigned int MISCNTOVF : 1;
    unsigned int OVFFRMCNT : 11;
    unsigned int OVFCNTOVF : 1;
    unsigned int reserved_29 : 3;
} Ifx_ETH_MISSED_FRAME_AND_BUFFER_OVERFLOW_COUNTER_Bits;


typedef struct _Ifx_ETH_MMC_CONTROL_Bits
{
    unsigned int CNTRST : 1;
    unsigned int CNTSTOPRO : 1;
    unsigned int RSTONRD : 1;
    unsigned int CNTFREEZ : 1;
    unsigned int CNTPRST : 1;
    unsigned int CNTPRSTLVL : 1;
    unsigned int reserved_6 : 2;
    unsigned int UCDBC : 1;
    unsigned int reserved_9 : 23;
} Ifx_ETH_MMC_CONTROL_Bits;


typedef struct _Ifx_ETH_MMC_IPC_RECEIVE_INTERRUPT_Bits
{
    unsigned int RXIPV4GFIS : 1;
    unsigned int RXIPV4HERFIS : 1;
    unsigned int RXIPV4NOPAYFIS : 1;
    unsigned int RXIPV4FRAGFIS : 1;
    unsigned int RXIPV4UDSBLFIS : 1;
    unsigned int RXIPV6GFIS : 1;
    unsigned int RXIPV6HERFIS : 1;
    unsigned int RXIPV6NOPAYFIS : 1;
    unsigned int RXUDPGFIS : 1;
    unsigned int RXUDPERFIS : 1;
    unsigned int RXTCPGFIS : 1;
    unsigned int RXTCPERFIS : 1;
    unsigned int RXICMPGFIS : 1;
    unsigned int RXICMPERFIS : 1;
    unsigned int reserved_14 : 2;
    unsigned int RXIPV4GOIS : 1;
    unsigned int RXIPV4HEROIS : 1;
    unsigned int RXIPV4NOPAYOIS : 1;
    unsigned int RXIPV4FRAGOIS : 1;
    unsigned int RXIPV4UDSBLOIS : 1;
    unsigned int RXIPV6GOIS : 1;
    unsigned int RXIPV6HEROIS : 1;
    unsigned int RXIPV6NOPAYOIS : 1;
    unsigned int RXUDPGOIS : 1;
    unsigned int RXUDPEROIS : 1;
    unsigned int RXTCPGOIS : 1;
    unsigned int RXTCPEROIS : 1;
    unsigned int RXICMPGOIS : 1;
    unsigned int RXICMPEROIS : 1;
    unsigned int reserved_30 : 2;
} Ifx_ETH_MMC_IPC_RECEIVE_INTERRUPT_Bits;


typedef struct _Ifx_ETH_MMC_IPC_RECEIVE_INTERRUPT_MASK_Bits
{
    unsigned int RXIPV4GFIM : 1;
    unsigned int RXIPV4HERFIM : 1;
    unsigned int RXIPV4NOPAYFIM : 1;
    unsigned int RXIPV4FRAGFIM : 1;
    unsigned int RXIPV4UDSBLFIM : 1;
    unsigned int RXIPV6GFIM : 1;
    unsigned int RXIPV6HERFIM : 1;
    unsigned int RXIPV6NOPAYFIM : 1;
    unsigned int RXUDPGFIM : 1;
    unsigned int RXUDPERFIM : 1;
    unsigned int RXTCPGFIM : 1;
    unsigned int RXTCPERFIM : 1;
    unsigned int RXICMPGFIM : 1;
    unsigned int RXICMPERFIM : 1;
    unsigned int reserved_14 : 2;
    unsigned int RXIPV4GOIM : 1;
    unsigned int RXIPV4HEROIM : 1;
    unsigned int RXIPV4NOPAYOIM : 1;
    unsigned int RXIPV4FRAGOIM : 1;
    unsigned int RXIPV4UDSBLOIM : 1;
    unsigned int RXIPV6GOIM : 1;
    unsigned int RXIPV6HEROIM : 1;
    unsigned int RXIPV6NOPAYOIM : 1;
    unsigned int RXUDPGOIM : 1;
    unsigned int RXUDPEROIM : 1;
    unsigned int RXTCPGOIM : 1;
    unsigned int RXTCPEROIM : 1;
    unsigned int RXICMPGOIM : 1;
    unsigned int RXICMPEROIM : 1;
    unsigned int reserved_30 : 2;
} Ifx_ETH_MMC_IPC_RECEIVE_INTERRUPT_MASK_Bits;


typedef struct _Ifx_ETH_MMC_RECEIVE_INTERRUPT_Bits
{
    unsigned int RXGBFRMIS : 1;
    unsigned int RXGBOCTIS : 1;
    unsigned int RXGOCTIS : 1;
    unsigned int RXBCGFIS : 1;
    unsigned int RXMCGFIS : 1;
    unsigned int RXCRCERFIS : 1;
    unsigned int RXALGNERFIS : 1;
    unsigned int RXRUNTFIS : 1;
    unsigned int RXJABERFIS : 1;
    unsigned int RXUSIZEGFIS : 1;
    unsigned int RXOSIZEGFIS : 1;
    unsigned int RX64OCTGBFIS : 1;
    unsigned int RX65T127OCTGBFIS : 1;
    unsigned int RX128T255OCTGBFIS : 1;
    unsigned int RX256T511OCTGBFIS : 1;
    unsigned int RX512T1023OCTGBFIS : 1;
    unsigned int RX1024TMAXOCTGBFIS : 1;
    unsigned int RXUCGFIS : 1;
    unsigned int RXLENERFIS : 1;
    unsigned int RXORANGEFIS : 1;
    unsigned int RXPAUSFIS : 1;
    unsigned int RXFOVFIS : 1;
    unsigned int RXVLANGBFIS : 1;
    unsigned int RXWDOGFIS : 1;
    unsigned int RXRCVERRFIS : 1;
    unsigned int RXCTRLFIS : 1;
    unsigned int reserved_26 : 6;
} Ifx_ETH_MMC_RECEIVE_INTERRUPT_Bits;


typedef struct _Ifx_ETH_MMC_RECEIVE_INTERRUPT_MASK_Bits
{
    unsigned int RXGBFRMIM : 1;
    unsigned int RXGBOCTIM : 1;
    unsigned int RXGOCTIM : 1;
    unsigned int RXBCGFIM : 1;
    unsigned int RXMCGFIM : 1;
    unsigned int RXCRCERFIM : 1;
    unsigned int RXALGNERFIM : 1;
    unsigned int RXRUNTFIM : 1;
    unsigned int RXJABERFIM : 1;
    unsigned int RXUSIZEGFIM : 1;
    unsigned int RXOSIZEGFIM : 1;
    unsigned int RX64OCTGBFIM : 1;
    unsigned int RX65T127OCTGBFIM : 1;
    unsigned int RX128T255OCTGBFIM : 1;
    unsigned int RX256T511OCTGBFIM : 1;
    unsigned int RX512T1023OCTGBFIM : 1;
    unsigned int RX1024TMAXOCTGBFIM : 1;
    unsigned int RXUCGFIM : 1;
    unsigned int RXLENERFIM : 1;
    unsigned int RXORANGEFIM : 1;
    unsigned int RXPAUSFIM : 1;
    unsigned int RXFOVFIM : 1;
    unsigned int RXVLANGBFIM : 1;
    unsigned int RXWDOGFIM : 1;
    unsigned int RXRCVERRFIM : 1;
    unsigned int RXCTRLFIM : 1;
    unsigned int reserved_26 : 6;
} Ifx_ETH_MMC_RECEIVE_INTERRUPT_MASK_Bits;


typedef struct _Ifx_ETH_MMC_TRANSMIT_INTERRUPT_Bits
{
    unsigned int TXGBOCTIS : 1;
    unsigned int TXGBFRMIS : 1;
    unsigned int TXBCGFIS : 1;
    unsigned int TXMCGFIS : 1;
    unsigned int TX64OCTGBFIS : 1;
    unsigned int TX65T127OCTGBFIS : 1;
    unsigned int TX128T255OCTGBFIS : 1;
    unsigned int TX256T511OCTGBFIS : 1;
    unsigned int TX512T1023OCTGBFIS : 1;
    unsigned int TX1024TMAXOCTGBFIS : 1;
    unsigned int TXUCGBFIS : 1;
    unsigned int TXMCGBFIS : 1;
    unsigned int TXBCGBFIS : 1;
    unsigned int TXUFLOWERFIS : 1;
    unsigned int TXSCOLGFIS : 1;
    unsigned int TXMCOLGFIS : 1;
    unsigned int TXDEFFIS : 1;
    unsigned int TXLATCOLFIS : 1;
    unsigned int TXEXCOLFIS : 1;
    unsigned int TXCARERFIS : 1;
    unsigned int TXGOCTIS : 1;
    unsigned int TXGFRMIS : 1;
    unsigned int TXEXDEFFIS : 1;
    unsigned int TXPAUSFIS : 1;
    unsigned int TXVLANGFIS : 1;
    unsigned int TXOSIZEGFIS : 1;
    unsigned int reserved_26 : 6;
} Ifx_ETH_MMC_TRANSMIT_INTERRUPT_Bits;


typedef struct _Ifx_ETH_MMC_TRANSMIT_INTERRUPT_MASK_Bits
{
    unsigned int TXGBOCTIM : 1;
    unsigned int TXGBFRMIM : 1;
    unsigned int TXBCGFIM : 1;
    unsigned int TXMCGFIM : 1;
    unsigned int TX64OCTGBFIM : 1;
    unsigned int TX65T127OCTGBFIM : 1;
    unsigned int TX128T255OCTGBFIM : 1;
    unsigned int TX256T511OCTGBFIM : 1;
    unsigned int TX512T1023OCTGBFIM : 1;
    unsigned int TX1024TMAXOCTGBFIM : 1;
    unsigned int TXUCGBFIM : 1;
    unsigned int TXMCGBFIM : 1;
    unsigned int TXBCGBFIM : 1;
    unsigned int TXUFLOWERFIM : 1;
    unsigned int TXSCOLGFIM : 1;
    unsigned int TXMCOLGFIM : 1;
    unsigned int TXDEFFIM : 1;
    unsigned int TXLATCOLFIM : 1;
    unsigned int TXEXCOLFIM : 1;
    unsigned int TXCARERFIM : 1;
    unsigned int TXGOCTIM : 1;
    unsigned int TXGFRMIM : 1;
    unsigned int TXEXDEFFIM : 1;
    unsigned int TXPAUSFIM : 1;
    unsigned int TXVLANGFIM : 1;
    unsigned int TXOSIZEGFIM : 1;
    unsigned int reserved_26 : 6;
} Ifx_ETH_MMC_TRANSMIT_INTERRUPT_MASK_Bits;


typedef struct _Ifx_ETH_OPERATION_MODE_Bits
{
    unsigned int reserved_0 : 1;
    unsigned int SR : 1;
    unsigned int OSF : 1;
    unsigned int RTC : 2;
    unsigned int reserved_5 : 1;
    unsigned int FUF : 1;
    unsigned int FEF : 1;
    unsigned int EFC : 1;
    unsigned int RFA : 2;
    unsigned int RFD : 2;
    unsigned int ST : 1;
    unsigned int TTC : 3;
    unsigned int reserved_17 : 3;
    unsigned int FTF : 1;
    unsigned int TSF : 1;
    unsigned int RFD_2 : 1;
    unsigned int RFA_2 : 1;
    unsigned int DFF : 1;
    unsigned int RSF : 1;
    unsigned int DT : 1;
    unsigned int reserved_27 : 5;
} Ifx_ETH_OPERATION_MODE_Bits;


typedef struct _Ifx_ETH_PMT_CONTROL_STATUS_Bits
{
    unsigned int PWRDWN : 1;
    unsigned int MGKPKTEN : 1;
    unsigned int RWKPKTEN : 1;
    unsigned int reserved_3 : 2;
    unsigned int MGKPRCVD : 1;
    unsigned int RWKPRCVD : 1;
    unsigned int reserved_7 : 2;
    unsigned int GLBLUCAST : 1;
    unsigned int reserved_10 : 21;
    unsigned int RWKFILTRST : 1;
} Ifx_ETH_PMT_CONTROL_STATUS_Bits;


typedef struct _Ifx_ETH_PPS_CONTROL_Bits
{
    unsigned int PPSCTRL_PPSCMD : 4;
    unsigned int PPSEN0 : 1;
    unsigned int TRGTMODSEL0 : 2;
    unsigned int reserved_7 : 1;
    unsigned int PPSCMD1 : 3;
    unsigned int reserved_11 : 2;
    unsigned int TRGTMODSEL1 : 2;
    unsigned int reserved_15 : 1;
    unsigned int PPSCMD2 : 3;
    unsigned int reserved_19 : 2;
    unsigned int TRGTMODSEL2 : 2;
    unsigned int reserved_23 : 1;
    unsigned int PPSCMD3 : 3;
    unsigned int reserved_27 : 2;
    unsigned int TRGTMODSEL3 : 2;
    unsigned int reserved_31 : 1;
} Ifx_ETH_PPS_CONTROL_Bits;


typedef struct _Ifx_ETH_RECEIVE_DESCRIPTOR_LIST_ADDRESS_Bits
{
    unsigned int reserved_0 : 2;
    unsigned int RDESLA : 30;
} Ifx_ETH_RECEIVE_DESCRIPTOR_LIST_ADDRESS_Bits;


typedef struct _Ifx_ETH_RECEIVE_INTERRUPT_WATCHDOG_TIMER_Bits
{
    unsigned int RIWT : 8;
    unsigned int reserved_8 : 24;
} Ifx_ETH_RECEIVE_INTERRUPT_WATCHDOG_TIMER_Bits;


typedef struct _Ifx_ETH_RECEIVE_POLL_DEMAND_Bits
{
    unsigned int RPD : 32;
} Ifx_ETH_RECEIVE_POLL_DEMAND_Bits;


typedef struct _Ifx_ETH_REMOTE_WAKE_UP_FRAME_FILTER_Bits
{
    unsigned int WKUPFRMFTR : 32;
} Ifx_ETH_REMOTE_WAKE_UP_FRAME_FILTER_Bits;



typedef struct _Ifx_ETH_RX_1024TOMAXOCTETS_FRAMES_GOOD_BAD_Bits
{
    unsigned int RX1024_MAXOCTGB : 32;
} Ifx_ETH_RX_1024TOMAXOCTETS_FRAMES_GOOD_BAD_Bits;



typedef struct _Ifx_ETH_RX_128TO255OCTETS_FRAMES_GOOD_BAD_Bits
{
    unsigned int RX128_255OCTGB : 32;
} Ifx_ETH_RX_128TO255OCTETS_FRAMES_GOOD_BAD_Bits;



typedef struct _Ifx_ETH_RX_256TO511OCTETS_FRAMES_GOOD_BAD_Bits
{
    unsigned int RX256_511OCTGB : 32;
} Ifx_ETH_RX_256TO511OCTETS_FRAMES_GOOD_BAD_Bits;



typedef struct _Ifx_ETH_RX_512TO1023OCTETS_FRAMES_GOOD_BAD_Bits
{
    unsigned int RX512_1023OCTGB : 32;
} Ifx_ETH_RX_512TO1023OCTETS_FRAMES_GOOD_BAD_Bits;


typedef struct _Ifx_ETH_RX_64OCTETS_FRAMES_GOOD_BAD_Bits
{
    unsigned int RX64OCTGB : 32;
} Ifx_ETH_RX_64OCTETS_FRAMES_GOOD_BAD_Bits;



typedef struct _Ifx_ETH_RX_65TO127OCTETS_FRAMES_GOOD_BAD_Bits
{
    unsigned int RX65_127OCTGB : 32;
} Ifx_ETH_RX_65TO127OCTETS_FRAMES_GOOD_BAD_Bits;


typedef struct _Ifx_ETH_RX_ALIGNMENT_ERROR_FRAMES_Bits
{
    unsigned int RXALGNERR : 32;
} Ifx_ETH_RX_ALIGNMENT_ERROR_FRAMES_Bits;


typedef struct _Ifx_ETH_RX_BROADCAST_FRAMES_GOOD_Bits
{
    unsigned int RXBCASTG : 32;
} Ifx_ETH_RX_BROADCAST_FRAMES_GOOD_Bits;


typedef struct _Ifx_ETH_RX_CONTROL_FRAMES_GOOD_Bits
{
    unsigned int RXCTRLG : 32;
} Ifx_ETH_RX_CONTROL_FRAMES_GOOD_Bits;


typedef struct _Ifx_ETH_RX_CRC_ERROR_FRAMES_Bits
{
    unsigned int RXCRCERR : 32;
} Ifx_ETH_RX_CRC_ERROR_FRAMES_Bits;


typedef struct _Ifx_ETH_RX_FIFO_OVERFLOW_FRAMES_Bits
{
    unsigned int RXFIFOOVFL : 32;
} Ifx_ETH_RX_FIFO_OVERFLOW_FRAMES_Bits;


typedef struct _Ifx_ETH_RX_FRAMES_COUNT_GOOD_BAD_Bits
{
    unsigned int RXFRMGB : 32;
} Ifx_ETH_RX_FRAMES_COUNT_GOOD_BAD_Bits;


typedef struct _Ifx_ETH_RX_JABBER_ERROR_FRAMES_Bits
{
    unsigned int RXJABERR : 32;
} Ifx_ETH_RX_JABBER_ERROR_FRAMES_Bits;


typedef struct _Ifx_ETH_RX_LENGTH_ERROR_FRAMES_Bits
{
    unsigned int RXLENERR : 32;
} Ifx_ETH_RX_LENGTH_ERROR_FRAMES_Bits;


typedef struct _Ifx_ETH_RX_MULTICAST_FRAMES_GOOD_Bits
{
    unsigned int RXMCASTG : 32;
} Ifx_ETH_RX_MULTICAST_FRAMES_GOOD_Bits;


typedef struct _Ifx_ETH_RX_OCTET_COUNT_GOOD_BAD_Bits
{
    unsigned int RXOCTGB : 32;
} Ifx_ETH_RX_OCTET_COUNT_GOOD_BAD_Bits;


typedef struct _Ifx_ETH_RX_OCTET_COUNT_GOOD_Bits
{
    unsigned int RXOCTG : 32;
} Ifx_ETH_RX_OCTET_COUNT_GOOD_Bits;


typedef struct _Ifx_ETH_RX_OUT_OF_RANGE_TYPE_FRAMES_Bits
{
    unsigned int RXOUTOFRNG : 32;
} Ifx_ETH_RX_OUT_OF_RANGE_TYPE_FRAMES_Bits;


typedef struct _Ifx_ETH_RX_OVERSIZE_FRAMES_GOOD_Bits
{
    unsigned int RXOVERSZG : 32;
} Ifx_ETH_RX_OVERSIZE_FRAMES_GOOD_Bits;


typedef struct _Ifx_ETH_RX_PAUSE_FRAMES_Bits
{
    unsigned int RXPAUSEFRM : 32;
} Ifx_ETH_RX_PAUSE_FRAMES_Bits;


typedef struct _Ifx_ETH_RX_RECEIVE_ERROR_FRAMES_Bits
{
    unsigned int RXRCVERR : 32;
} Ifx_ETH_RX_RECEIVE_ERROR_FRAMES_Bits;


typedef struct _Ifx_ETH_RX_RUNT_ERROR_FRAMES_Bits
{
    unsigned int RXRUNTERR : 32;
} Ifx_ETH_RX_RUNT_ERROR_FRAMES_Bits;


typedef struct _Ifx_ETH_RX_UNDERSIZE_FRAMES_GOOD_Bits
{
    unsigned int RXUNDERSZG : 32;
} Ifx_ETH_RX_UNDERSIZE_FRAMES_GOOD_Bits;


typedef struct _Ifx_ETH_RX_UNICAST_FRAMES_GOOD_Bits
{
    unsigned int RXUCASTG : 32;
} Ifx_ETH_RX_UNICAST_FRAMES_GOOD_Bits;


typedef struct _Ifx_ETH_RX_VLAN_FRAMES_GOOD_BAD_Bits
{
    unsigned int RXVLANFRGB : 32;
} Ifx_ETH_RX_VLAN_FRAMES_GOOD_BAD_Bits;


typedef struct _Ifx_ETH_RX_WATCHDOG_ERROR_FRAMES_Bits
{
    unsigned int RXWDGERR : 32;
} Ifx_ETH_RX_WATCHDOG_ERROR_FRAMES_Bits;


typedef struct _Ifx_ETH_RXICMP_ERROR_FRAMES_Bits
{
    unsigned int RXICMPERRFRM : 32;
} Ifx_ETH_RXICMP_ERROR_FRAMES_Bits;


typedef struct _Ifx_ETH_RXICMP_ERROR_OCTETS_Bits
{
    unsigned int RXICMPERROCT : 32;
} Ifx_ETH_RXICMP_ERROR_OCTETS_Bits;


typedef struct _Ifx_ETH_RXICMP_GOOD_FRAMES_Bits
{
    unsigned int RXICMPGDFRM : 32;
} Ifx_ETH_RXICMP_GOOD_FRAMES_Bits;


typedef struct _Ifx_ETH_RXICMP_GOOD_OCTETS_Bits
{
    unsigned int RXICMPGDOCT : 32;
} Ifx_ETH_RXICMP_GOOD_OCTETS_Bits;


typedef struct _Ifx_ETH_RXIPV4_FRAGMENTED_FRAMES_Bits
{
    unsigned int RXIPV4FRAGFRM : 32;
} Ifx_ETH_RXIPV4_FRAGMENTED_FRAMES_Bits;


typedef struct _Ifx_ETH_RXIPV4_FRAGMENTED_OCTETS_Bits
{
    unsigned int RXIPV4FRAGOCT : 32;
} Ifx_ETH_RXIPV4_FRAGMENTED_OCTETS_Bits;


typedef struct _Ifx_ETH_RXIPV4_GOOD_FRAMES_Bits
{
    unsigned int RXIPV4GDFRM : 32;
} Ifx_ETH_RXIPV4_GOOD_FRAMES_Bits;


typedef struct _Ifx_ETH_RXIPV4_GOOD_OCTETS_Bits
{
    unsigned int RXIPV4GDOCT : 32;
} Ifx_ETH_RXIPV4_GOOD_OCTETS_Bits;


typedef struct _Ifx_ETH_RXIPV4_HEADER_ERROR_FRAMES_Bits
{
    unsigned int RXIPV4HDRERRFRM : 32;
} Ifx_ETH_RXIPV4_HEADER_ERROR_FRAMES_Bits;


typedef struct _Ifx_ETH_RXIPV4_HEADER_ERROR_OCTETS_Bits
{
    unsigned int RXIPV4HDRERROCT : 32;
} Ifx_ETH_RXIPV4_HEADER_ERROR_OCTETS_Bits;


typedef struct _Ifx_ETH_RXIPV4_NO_PAYLOAD_FRAMES_Bits
{
    unsigned int RXIPV4NOPAYFRM : 32;
} Ifx_ETH_RXIPV4_NO_PAYLOAD_FRAMES_Bits;


typedef struct _Ifx_ETH_RXIPV4_NO_PAYLOAD_OCTETS_Bits
{
    unsigned int RXIPV4NOPAYOCT : 32;
} Ifx_ETH_RXIPV4_NO_PAYLOAD_OCTETS_Bits;


typedef struct _Ifx_ETH_RXIPV4_UDP_CHECKSUM_DISABLE_OCTETS_Bits
{
    unsigned int RXIPV4UDSBLOCT : 32;
} Ifx_ETH_RXIPV4_UDP_CHECKSUM_DISABLE_OCTETS_Bits;



typedef struct _Ifx_ETH_RXIPV4_UDP_CHECKSUM_DISABLED_FRAMES_Bits
{
    unsigned int RXIPV4UDSBLFRM : 32;
} Ifx_ETH_RXIPV4_UDP_CHECKSUM_DISABLED_FRAMES_Bits;


typedef struct _Ifx_ETH_RXIPV6_GOOD_FRAMES_Bits
{
    unsigned int RXIPV6GDFRM : 32;
} Ifx_ETH_RXIPV6_GOOD_FRAMES_Bits;


typedef struct _Ifx_ETH_RXIPV6_GOOD_OCTETS_Bits
{
    unsigned int RXIPV6GDOCT : 32;
} Ifx_ETH_RXIPV6_GOOD_OCTETS_Bits;


typedef struct _Ifx_ETH_RXIPV6_HEADER_ERROR_FRAMES_Bits
{
    unsigned int RXIPV6HDRERRFRM : 32;
} Ifx_ETH_RXIPV6_HEADER_ERROR_FRAMES_Bits;


typedef struct _Ifx_ETH_RXIPV6_HEADER_ERROR_OCTETS_Bits
{
    unsigned int RXIPV6HDRERROCT : 32;
} Ifx_ETH_RXIPV6_HEADER_ERROR_OCTETS_Bits;


typedef struct _Ifx_ETH_RXIPV6_NO_PAYLOAD_FRAMES_Bits
{
    unsigned int RXIPV6NOPAYFRM : 32;
} Ifx_ETH_RXIPV6_NO_PAYLOAD_FRAMES_Bits;


typedef struct _Ifx_ETH_RXIPV6_NO_PAYLOAD_OCTETS_Bits
{
    unsigned int RXIPV6NOPAYOCT : 32;
} Ifx_ETH_RXIPV6_NO_PAYLOAD_OCTETS_Bits;


typedef struct _Ifx_ETH_RXTCP_ERROR_FRAMES_Bits
{
    unsigned int RXTCPERRFRM : 32;
} Ifx_ETH_RXTCP_ERROR_FRAMES_Bits;


typedef struct _Ifx_ETH_RXTCP_ERROR_OCTETS_Bits
{
    unsigned int RXTCPERROCT : 32;
} Ifx_ETH_RXTCP_ERROR_OCTETS_Bits;


typedef struct _Ifx_ETH_RXTCP_GOOD_FRAMES_Bits
{
    unsigned int RXTCPGDFRM : 32;
} Ifx_ETH_RXTCP_GOOD_FRAMES_Bits;


typedef struct _Ifx_ETH_RXTCP_GOOD_OCTETS_Bits
{
    unsigned int RXTCPGDOCT : 32;
} Ifx_ETH_RXTCP_GOOD_OCTETS_Bits;


typedef struct _Ifx_ETH_RXUDP_ERROR_FRAMES_Bits
{
    unsigned int RXUDPERRFRM : 32;
} Ifx_ETH_RXUDP_ERROR_FRAMES_Bits;


typedef struct _Ifx_ETH_RXUDP_ERROR_OCTETS_Bits
{
    unsigned int RXUDPERROCT : 32;
} Ifx_ETH_RXUDP_ERROR_OCTETS_Bits;


typedef struct _Ifx_ETH_RXUDP_GOOD_FRAMES_Bits
{
    unsigned int RXUDPGDFRM : 32;
} Ifx_ETH_RXUDP_GOOD_FRAMES_Bits;


typedef struct _Ifx_ETH_RXUDP_GOOD_OCTETS_Bits
{
    unsigned int RXUDPGDOCT : 32;
} Ifx_ETH_RXUDP_GOOD_OCTETS_Bits;


typedef struct _Ifx_ETH_STATUS_Bits
{
    unsigned int TI : 1;
    unsigned int TPS : 1;
    unsigned int TU : 1;
    unsigned int TJT : 1;
    unsigned int OVF : 1;
    unsigned int UNF : 1;
    unsigned int RI : 1;
    unsigned int RU : 1;
    unsigned int RPS : 1;
    unsigned int RWT : 1;
    unsigned int ETI : 1;
    unsigned int reserved_11 : 2;
    unsigned int FBI : 1;
    unsigned int ERI : 1;
    unsigned int AIS : 1;
    unsigned int NIS : 1;
    unsigned int RS : 3;
    unsigned int TS : 3;
    unsigned int EB : 3;
    unsigned int GLI : 1;
    unsigned int GMI : 1;
    unsigned int GPI : 1;
    unsigned int TTI : 1;
    unsigned int GLPII : 1;
    unsigned int reserved_31 : 1;
} Ifx_ETH_STATUS_Bits;


typedef struct _Ifx_ETH_SUB_SECOND_INCREMENT_Bits
{
    unsigned int SSINC : 8;
    unsigned int reserved_8 : 24;
} Ifx_ETH_SUB_SECOND_INCREMENT_Bits;


typedef struct _Ifx_ETH_SYSTEM_TIME_HIGHER_WORD_SECONDS_Bits
{
    unsigned int TSHWR : 16;
    unsigned int reserved_16 : 16;
} Ifx_ETH_SYSTEM_TIME_HIGHER_WORD_SECONDS_Bits;


typedef struct _Ifx_ETH_SYSTEM_TIME_NANOSECONDS_Bits
{
    unsigned int TSSS : 31;
    unsigned int reserved_31 : 1;
} Ifx_ETH_SYSTEM_TIME_NANOSECONDS_Bits;


typedef struct _Ifx_ETH_SYSTEM_TIME_NANOSECONDS_UPDATE_Bits
{
    unsigned int TSSS : 31;
    unsigned int ADDSUB : 1;
} Ifx_ETH_SYSTEM_TIME_NANOSECONDS_UPDATE_Bits;


typedef struct _Ifx_ETH_SYSTEM_TIME_SECONDS_Bits
{
    unsigned int TSS : 32;
} Ifx_ETH_SYSTEM_TIME_SECONDS_Bits;


typedef struct _Ifx_ETH_SYSTEM_TIME_SECONDS_UPDATE_Bits
{
    unsigned int TSS : 32;
} Ifx_ETH_SYSTEM_TIME_SECONDS_UPDATE_Bits;


typedef struct _Ifx_ETH_TARGET_TIME_NANOSECONDS_Bits
{
    unsigned int TTSLO : 31;
    unsigned int TRGTBUSY : 1;
} Ifx_ETH_TARGET_TIME_NANOSECONDS_Bits;


typedef struct _Ifx_ETH_TARGET_TIME_SECONDS_Bits
{
    unsigned int TSTR : 32;
} Ifx_ETH_TARGET_TIME_SECONDS_Bits;


typedef struct _Ifx_ETH_TIMESTAMP_ADDEND_Bits
{
    unsigned int TSAR : 32;
} Ifx_ETH_TIMESTAMP_ADDEND_Bits;


typedef struct _Ifx_ETH_TIMESTAMP_CONTROL_Bits
{
    unsigned int TSENA : 1;
    unsigned int TSCFUPDT : 1;
    unsigned int TSINIT : 1;
    unsigned int TSUPDT : 1;
    unsigned int TSTRIG : 1;
    unsigned int TSADDREG : 1;
    unsigned int reserved_6 : 2;
    unsigned int TSENALL : 1;
    unsigned int TSCTRLSSR : 1;
    unsigned int TSVER2ENA : 1;
    unsigned int TSIPENA : 1;
    unsigned int TSIPV6ENA : 1;
    unsigned int TSIPV4ENA : 1;
    unsigned int TSEVNTENA : 1;
    unsigned int TSMSTRENA : 1;
    unsigned int SNAPTYPSEL : 2;
    unsigned int TSENMACADDR : 1;
    unsigned int reserved_19 : 5;
    unsigned int ATSFC : 1;
    unsigned int ATSEN0 : 1;
    unsigned int ATSEN1 : 1;
    unsigned int ATSEN2 : 1;
    unsigned int ATSEN3 : 1;
    unsigned int reserved_29 : 3;
} Ifx_ETH_TIMESTAMP_CONTROL_Bits;


typedef struct _Ifx_ETH_TIMESTAMP_STATUS_Bits
{
    unsigned int TSSOVF : 1;
    unsigned int TSTARGT : 1;
    unsigned int AUXTSTRIG : 1;
    unsigned int TSTRGTERR : 1;
    unsigned int TSTARGT1 : 1;
    unsigned int TSTRGTERR1 : 1;
    unsigned int TSTARGT2 : 1;
    unsigned int TSTRGTERR2 : 1;
    unsigned int TSTARGT3 : 1;
    unsigned int TSTRGTERR3 : 1;
    unsigned int reserved_10 : 6;
    unsigned int ATSSTN : 4;
    unsigned int reserved_20 : 4;
    unsigned int ATSSTM : 1;
    unsigned int ATSNS : 5;
    unsigned int reserved_30 : 2;
} Ifx_ETH_TIMESTAMP_STATUS_Bits;


typedef struct _Ifx_ETH_TRANSMIT_DESCRIPTOR_LIST_ADDRESS_Bits
{
    unsigned int reserved_0 : 2;
    unsigned int TDESLA : 30;
} Ifx_ETH_TRANSMIT_DESCRIPTOR_LIST_ADDRESS_Bits;


typedef struct _Ifx_ETH_TRANSMIT_POLL_DEMAND_Bits
{
    unsigned int TPD : 32;
} Ifx_ETH_TRANSMIT_POLL_DEMAND_Bits;



typedef struct _Ifx_ETH_TX_1024TOMAXOCTETS_FRAMES_GOOD_BAD_Bits
{
    unsigned int TX1024_MAXOCTGB : 32;
} Ifx_ETH_TX_1024TOMAXOCTETS_FRAMES_GOOD_BAD_Bits;



typedef struct _Ifx_ETH_TX_128TO255OCTETS_FRAMES_GOOD_BAD_Bits
{
    unsigned int TX128_255OCTGB : 32;
} Ifx_ETH_TX_128TO255OCTETS_FRAMES_GOOD_BAD_Bits;



typedef struct _Ifx_ETH_TX_256TO511OCTETS_FRAMES_GOOD_BAD_Bits
{
    unsigned int TX256_511OCTGB : 32;
} Ifx_ETH_TX_256TO511OCTETS_FRAMES_GOOD_BAD_Bits;



typedef struct _Ifx_ETH_TX_512TO1023OCTETS_FRAMES_GOOD_BAD_Bits
{
    unsigned int TX512_1023OCTGB : 32;
} Ifx_ETH_TX_512TO1023OCTETS_FRAMES_GOOD_BAD_Bits;


typedef struct _Ifx_ETH_TX_64OCTETS_FRAMES_GOOD_BAD_Bits
{
    unsigned int TX64OCTGB : 32;
} Ifx_ETH_TX_64OCTETS_FRAMES_GOOD_BAD_Bits;



typedef struct _Ifx_ETH_TX_65TO127OCTETS_FRAMES_GOOD_BAD_Bits
{
    unsigned int TX65_127OCTGB : 32;
} Ifx_ETH_TX_65TO127OCTETS_FRAMES_GOOD_BAD_Bits;



typedef struct _Ifx_ETH_TX_BROADCAST_FRAMES_GOOD_BAD_Bits
{
    unsigned int TXBCASTGB : 32;
} Ifx_ETH_TX_BROADCAST_FRAMES_GOOD_BAD_Bits;


typedef struct _Ifx_ETH_TX_BROADCAST_FRAMES_GOOD_Bits
{
    unsigned int TXBCASTG : 32;
} Ifx_ETH_TX_BROADCAST_FRAMES_GOOD_Bits;


typedef struct _Ifx_ETH_TX_CARRIER_ERROR_FRAMES_Bits
{
    unsigned int TXCARR : 32;
} Ifx_ETH_TX_CARRIER_ERROR_FRAMES_Bits;


typedef struct _Ifx_ETH_TX_DEFERRED_FRAMES_Bits
{
    unsigned int TXDEFRD : 32;
} Ifx_ETH_TX_DEFERRED_FRAMES_Bits;



typedef struct _Ifx_ETH_TX_EXCESSIVE_COLLISION_FRAMES_Bits
{
    unsigned int TXEXSCOL : 32;
} Ifx_ETH_TX_EXCESSIVE_COLLISION_FRAMES_Bits;



typedef struct _Ifx_ETH_TX_EXCESSIVE_DEFERRAL_ERROR_Bits
{
    unsigned int TXEXSDEF : 32;
} Ifx_ETH_TX_EXCESSIVE_DEFERRAL_ERROR_Bits;


typedef struct _Ifx_ETH_TX_FRAME_COUNT_GOOD_BAD_Bits
{
    unsigned int TXFRMGB : 32;
} Ifx_ETH_TX_FRAME_COUNT_GOOD_BAD_Bits;


typedef struct _Ifx_ETH_TX_FRAME_COUNT_GOOD_Bits
{
    unsigned int TXFRMG : 32;
} Ifx_ETH_TX_FRAME_COUNT_GOOD_Bits;


typedef struct _Ifx_ETH_TX_LATE_COLLISION_FRAMES_Bits
{
    unsigned int TXLATECOL : 32;
} Ifx_ETH_TX_LATE_COLLISION_FRAMES_Bits;



typedef struct _Ifx_ETH_TX_MULTICAST_FRAMES_GOOD_BAD_Bits
{
    unsigned int TXMCASTGB : 32;
} Ifx_ETH_TX_MULTICAST_FRAMES_GOOD_BAD_Bits;


typedef struct _Ifx_ETH_TX_MULTICAST_FRAMES_GOOD_Bits
{
    unsigned int TXMCASTG : 32;
} Ifx_ETH_TX_MULTICAST_FRAMES_GOOD_Bits;



typedef struct _Ifx_ETH_TX_MULTIPLE_COLLISION_GOOD_FRAMES_Bits
{
    unsigned int TXMULTCOLG : 32;
} Ifx_ETH_TX_MULTIPLE_COLLISION_GOOD_FRAMES_Bits;


typedef struct _Ifx_ETH_TX_OCTET_COUNT_GOOD_BAD_Bits
{
    unsigned int TXOCTGB : 32;
} Ifx_ETH_TX_OCTET_COUNT_GOOD_BAD_Bits;


typedef struct _Ifx_ETH_TX_OCTET_COUNT_GOOD_Bits
{
    unsigned int TXOCTG : 32;
} Ifx_ETH_TX_OCTET_COUNT_GOOD_Bits;


typedef struct _Ifx_ETH_TX_OSIZE_FRAMES_GOOD_Bits
{
    unsigned int TXOSIZG : 32;
} Ifx_ETH_TX_OSIZE_FRAMES_GOOD_Bits;


typedef struct _Ifx_ETH_TX_PAUSE_FRAMES_Bits
{
    unsigned int TXPAUSE : 32;
} Ifx_ETH_TX_PAUSE_FRAMES_Bits;



typedef struct _Ifx_ETH_TX_SINGLE_COLLISION_GOOD_FRAMES_Bits
{
    unsigned int TXSNGLCOLG : 32;
} Ifx_ETH_TX_SINGLE_COLLISION_GOOD_FRAMES_Bits;


typedef struct _Ifx_ETH_TX_UNDERFLOW_ERROR_FRAMES_Bits
{
    unsigned int TXUNDRFLW : 32;
} Ifx_ETH_TX_UNDERFLOW_ERROR_FRAMES_Bits;


typedef struct _Ifx_ETH_TX_UNICAST_FRAMES_GOOD_BAD_Bits
{
    unsigned int TXUCASTGB : 32;
} Ifx_ETH_TX_UNICAST_FRAMES_GOOD_BAD_Bits;


typedef struct _Ifx_ETH_TX_VLAN_FRAMES_GOOD_Bits
{
    unsigned int TXVLANG : 32;
} Ifx_ETH_TX_VLAN_FRAMES_GOOD_Bits;


typedef struct _Ifx_ETH_VERSION_Bits
{
    unsigned int SNPSVER : 8;
    unsigned int USERVER : 8;
    unsigned int reserved_16 : 16;
} Ifx_ETH_VERSION_Bits;


typedef struct _Ifx_ETH_VLAN_TAG_Bits
{
    unsigned int VL : 16;
    unsigned int ETV : 1;
    unsigned int VTIM : 1;
    unsigned int ESVL : 1;
    unsigned int VTHM : 1;
    unsigned int reserved_20 : 12;
} Ifx_ETH_VLAN_TAG_Bits;







typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_ACCEN0_Bits B;
} Ifx_ETH_ACCEN0;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_ACCEN1_Bits B;
} Ifx_ETH_ACCEN1;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_AHB_OR_AXI_STATUS_Bits B;
} Ifx_ETH_AHB_OR_AXI_STATUS;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_BUS_MODE_Bits B;
} Ifx_ETH_BUS_MODE;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_CLC_Bits B;
} Ifx_ETH_CLC;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_CURRENT_HOST_RECEIVE_BUFFER_ADDRESS_Bits B;
} Ifx_ETH_CURRENT_HOST_RECEIVE_BUFFER_ADDRESS;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_CURRENT_HOST_RECEIVE_DESCRIPTOR_Bits B;
} Ifx_ETH_CURRENT_HOST_RECEIVE_DESCRIPTOR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_CURRENT_HOST_TRANSMIT_BUFFER_ADDRESS_Bits B;
} Ifx_ETH_CURRENT_HOST_TRANSMIT_BUFFER_ADDRESS;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_CURRENT_HOST_TRANSMIT_DESCRIPTOR_Bits B;
} Ifx_ETH_CURRENT_HOST_TRANSMIT_DESCRIPTOR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_DEBUG_Bits B;
} Ifx_ETH_DEBUG;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_FLOW_CONTROL_Bits B;
} Ifx_ETH_FLOW_CONTROL;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_GMII_ADDRESS_Bits B;
} Ifx_ETH_GMII_ADDRESS;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_GMII_DATA_Bits B;
} Ifx_ETH_GMII_DATA;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_GPCTL_Bits B;
} Ifx_ETH_GPCTL;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_HASH_TABLE_HIGH_Bits B;
} Ifx_ETH_HASH_TABLE_HIGH;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_HASH_TABLE_LOW_Bits B;
} Ifx_ETH_HASH_TABLE_LOW;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_HW_FEATURE_Bits B;
} Ifx_ETH_HW_FEATURE;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_ID_Bits B;
} Ifx_ETH_ID;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_INTERRUPT_ENABLE_Bits B;
} Ifx_ETH_INTERRUPT_ENABLE;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_INTERRUPT_MASK_Bits B;
} Ifx_ETH_INTERRUPT_MASK;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_INTERRUPT_STATUS_Bits B;
} Ifx_ETH_INTERRUPT_STATUS;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_KRST0_Bits B;
} Ifx_ETH_KRST0;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_KRST1_Bits B;
} Ifx_ETH_KRST1;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_KRSTCLR_Bits B;
} Ifx_ETH_KRSTCLR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_MAC_ADDRESS_HIGH_Bits B;
} Ifx_ETH_MAC_ADDRESS_HIGH;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_MAC_ADDRESS_LOW_Bits B;
} Ifx_ETH_MAC_ADDRESS_LOW;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_MAC_CONFIGURATION_Bits B;
} Ifx_ETH_MAC_CONFIGURATION;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_MAC_FRAME_FILTER_Bits B;
} Ifx_ETH_MAC_FRAME_FILTER;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_MISSED_FRAME_AND_BUFFER_OVERFLOW_COUNTER_Bits B;
} Ifx_ETH_MISSED_FRAME_AND_BUFFER_OVERFLOW_COUNTER;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_MMC_CONTROL_Bits B;
} Ifx_ETH_MMC_CONTROL;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_MMC_IPC_RECEIVE_INTERRUPT_Bits B;
} Ifx_ETH_MMC_IPC_RECEIVE_INTERRUPT;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_MMC_IPC_RECEIVE_INTERRUPT_MASK_Bits B;
} Ifx_ETH_MMC_IPC_RECEIVE_INTERRUPT_MASK;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_MMC_RECEIVE_INTERRUPT_Bits B;
} Ifx_ETH_MMC_RECEIVE_INTERRUPT;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_MMC_RECEIVE_INTERRUPT_MASK_Bits B;
} Ifx_ETH_MMC_RECEIVE_INTERRUPT_MASK;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_MMC_TRANSMIT_INTERRUPT_Bits B;
} Ifx_ETH_MMC_TRANSMIT_INTERRUPT;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_MMC_TRANSMIT_INTERRUPT_MASK_Bits B;
} Ifx_ETH_MMC_TRANSMIT_INTERRUPT_MASK;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_OPERATION_MODE_Bits B;
} Ifx_ETH_OPERATION_MODE;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_PMT_CONTROL_STATUS_Bits B;
} Ifx_ETH_PMT_CONTROL_STATUS;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_PPS_CONTROL_Bits B;
} Ifx_ETH_PPS_CONTROL;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_RECEIVE_DESCRIPTOR_LIST_ADDRESS_Bits B;
} Ifx_ETH_RECEIVE_DESCRIPTOR_LIST_ADDRESS;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_RECEIVE_INTERRUPT_WATCHDOG_TIMER_Bits B;
} Ifx_ETH_RECEIVE_INTERRUPT_WATCHDOG_TIMER;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_RECEIVE_POLL_DEMAND_Bits B;
} Ifx_ETH_RECEIVE_POLL_DEMAND;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_REMOTE_WAKE_UP_FRAME_FILTER_Bits B;
} Ifx_ETH_REMOTE_WAKE_UP_FRAME_FILTER;



typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_RX_1024TOMAXOCTETS_FRAMES_GOOD_BAD_Bits B;
} Ifx_ETH_RX_1024TOMAXOCTETS_FRAMES_GOOD_BAD;



typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_RX_128TO255OCTETS_FRAMES_GOOD_BAD_Bits B;
} Ifx_ETH_RX_128TO255OCTETS_FRAMES_GOOD_BAD;



typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_RX_256TO511OCTETS_FRAMES_GOOD_BAD_Bits B;
} Ifx_ETH_RX_256TO511OCTETS_FRAMES_GOOD_BAD;



typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_RX_512TO1023OCTETS_FRAMES_GOOD_BAD_Bits B;
} Ifx_ETH_RX_512TO1023OCTETS_FRAMES_GOOD_BAD;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_RX_64OCTETS_FRAMES_GOOD_BAD_Bits B;
} Ifx_ETH_RX_64OCTETS_FRAMES_GOOD_BAD;



typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_RX_65TO127OCTETS_FRAMES_GOOD_BAD_Bits B;
} Ifx_ETH_RX_65TO127OCTETS_FRAMES_GOOD_BAD;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_RX_ALIGNMENT_ERROR_FRAMES_Bits B;
} Ifx_ETH_RX_ALIGNMENT_ERROR_FRAMES;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_RX_BROADCAST_FRAMES_GOOD_Bits B;
} Ifx_ETH_RX_BROADCAST_FRAMES_GOOD;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_RX_CONTROL_FRAMES_GOOD_Bits B;
} Ifx_ETH_RX_CONTROL_FRAMES_GOOD;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_RX_CRC_ERROR_FRAMES_Bits B;
} Ifx_ETH_RX_CRC_ERROR_FRAMES;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_RX_FIFO_OVERFLOW_FRAMES_Bits B;
} Ifx_ETH_RX_FIFO_OVERFLOW_FRAMES;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_RX_FRAMES_COUNT_GOOD_BAD_Bits B;
} Ifx_ETH_RX_FRAMES_COUNT_GOOD_BAD;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_RX_JABBER_ERROR_FRAMES_Bits B;
} Ifx_ETH_RX_JABBER_ERROR_FRAMES;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_RX_LENGTH_ERROR_FRAMES_Bits B;
} Ifx_ETH_RX_LENGTH_ERROR_FRAMES;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_RX_MULTICAST_FRAMES_GOOD_Bits B;
} Ifx_ETH_RX_MULTICAST_FRAMES_GOOD;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_RX_OCTET_COUNT_GOOD_Bits B;
} Ifx_ETH_RX_OCTET_COUNT_GOOD;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_RX_OCTET_COUNT_GOOD_BAD_Bits B;
} Ifx_ETH_RX_OCTET_COUNT_GOOD_BAD;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_RX_OUT_OF_RANGE_TYPE_FRAMES_Bits B;
} Ifx_ETH_RX_OUT_OF_RANGE_TYPE_FRAMES;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_RX_OVERSIZE_FRAMES_GOOD_Bits B;
} Ifx_ETH_RX_OVERSIZE_FRAMES_GOOD;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_RX_PAUSE_FRAMES_Bits B;
} Ifx_ETH_RX_PAUSE_FRAMES;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_RX_RECEIVE_ERROR_FRAMES_Bits B;
} Ifx_ETH_RX_RECEIVE_ERROR_FRAMES;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_RX_RUNT_ERROR_FRAMES_Bits B;
} Ifx_ETH_RX_RUNT_ERROR_FRAMES;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_RX_UNDERSIZE_FRAMES_GOOD_Bits B;
} Ifx_ETH_RX_UNDERSIZE_FRAMES_GOOD;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_RX_UNICAST_FRAMES_GOOD_Bits B;
} Ifx_ETH_RX_UNICAST_FRAMES_GOOD;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_RX_VLAN_FRAMES_GOOD_BAD_Bits B;
} Ifx_ETH_RX_VLAN_FRAMES_GOOD_BAD;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_RX_WATCHDOG_ERROR_FRAMES_Bits B;
} Ifx_ETH_RX_WATCHDOG_ERROR_FRAMES;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_RXICMP_ERROR_FRAMES_Bits B;
} Ifx_ETH_RXICMP_ERROR_FRAMES;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_RXICMP_ERROR_OCTETS_Bits B;
} Ifx_ETH_RXICMP_ERROR_OCTETS;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_RXICMP_GOOD_FRAMES_Bits B;
} Ifx_ETH_RXICMP_GOOD_FRAMES;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_RXICMP_GOOD_OCTETS_Bits B;
} Ifx_ETH_RXICMP_GOOD_OCTETS;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_RXIPV4_FRAGMENTED_FRAMES_Bits B;
} Ifx_ETH_RXIPV4_FRAGMENTED_FRAMES;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_RXIPV4_FRAGMENTED_OCTETS_Bits B;
} Ifx_ETH_RXIPV4_FRAGMENTED_OCTETS;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_RXIPV4_GOOD_FRAMES_Bits B;
} Ifx_ETH_RXIPV4_GOOD_FRAMES;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_RXIPV4_GOOD_OCTETS_Bits B;
} Ifx_ETH_RXIPV4_GOOD_OCTETS;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_RXIPV4_HEADER_ERROR_FRAMES_Bits B;
} Ifx_ETH_RXIPV4_HEADER_ERROR_FRAMES;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_RXIPV4_HEADER_ERROR_OCTETS_Bits B;
} Ifx_ETH_RXIPV4_HEADER_ERROR_OCTETS;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_RXIPV4_NO_PAYLOAD_FRAMES_Bits B;
} Ifx_ETH_RXIPV4_NO_PAYLOAD_FRAMES;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_RXIPV4_NO_PAYLOAD_OCTETS_Bits B;
} Ifx_ETH_RXIPV4_NO_PAYLOAD_OCTETS;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_RXIPV4_UDP_CHECKSUM_DISABLE_OCTETS_Bits B;
} Ifx_ETH_RXIPV4_UDP_CHECKSUM_DISABLE_OCTETS;



typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_RXIPV4_UDP_CHECKSUM_DISABLED_FRAMES_Bits B;
} Ifx_ETH_RXIPV4_UDP_CHECKSUM_DISABLED_FRAMES;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_RXIPV6_GOOD_FRAMES_Bits B;
} Ifx_ETH_RXIPV6_GOOD_FRAMES;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_RXIPV6_GOOD_OCTETS_Bits B;
} Ifx_ETH_RXIPV6_GOOD_OCTETS;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_RXIPV6_HEADER_ERROR_FRAMES_Bits B;
} Ifx_ETH_RXIPV6_HEADER_ERROR_FRAMES;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_RXIPV6_HEADER_ERROR_OCTETS_Bits B;
} Ifx_ETH_RXIPV6_HEADER_ERROR_OCTETS;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_RXIPV6_NO_PAYLOAD_FRAMES_Bits B;
} Ifx_ETH_RXIPV6_NO_PAYLOAD_FRAMES;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_RXIPV6_NO_PAYLOAD_OCTETS_Bits B;
} Ifx_ETH_RXIPV6_NO_PAYLOAD_OCTETS;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_RXTCP_ERROR_FRAMES_Bits B;
} Ifx_ETH_RXTCP_ERROR_FRAMES;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_RXTCP_ERROR_OCTETS_Bits B;
} Ifx_ETH_RXTCP_ERROR_OCTETS;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_RXTCP_GOOD_FRAMES_Bits B;
} Ifx_ETH_RXTCP_GOOD_FRAMES;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_RXTCP_GOOD_OCTETS_Bits B;
} Ifx_ETH_RXTCP_GOOD_OCTETS;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_RXUDP_ERROR_FRAMES_Bits B;
} Ifx_ETH_RXUDP_ERROR_FRAMES;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_RXUDP_ERROR_OCTETS_Bits B;
} Ifx_ETH_RXUDP_ERROR_OCTETS;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_RXUDP_GOOD_FRAMES_Bits B;
} Ifx_ETH_RXUDP_GOOD_FRAMES;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_RXUDP_GOOD_OCTETS_Bits B;
} Ifx_ETH_RXUDP_GOOD_OCTETS;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_STATUS_Bits B;
} Ifx_ETH_STATUS;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_SUB_SECOND_INCREMENT_Bits B;
} Ifx_ETH_SUB_SECOND_INCREMENT;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_SYSTEM_TIME_HIGHER_WORD_SECONDS_Bits B;
} Ifx_ETH_SYSTEM_TIME_HIGHER_WORD_SECONDS;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_SYSTEM_TIME_NANOSECONDS_Bits B;
} Ifx_ETH_SYSTEM_TIME_NANOSECONDS;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_SYSTEM_TIME_NANOSECONDS_UPDATE_Bits B;
} Ifx_ETH_SYSTEM_TIME_NANOSECONDS_UPDATE;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_SYSTEM_TIME_SECONDS_Bits B;
} Ifx_ETH_SYSTEM_TIME_SECONDS;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_SYSTEM_TIME_SECONDS_UPDATE_Bits B;
} Ifx_ETH_SYSTEM_TIME_SECONDS_UPDATE;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_TARGET_TIME_NANOSECONDS_Bits B;
} Ifx_ETH_TARGET_TIME_NANOSECONDS;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_TARGET_TIME_SECONDS_Bits B;
} Ifx_ETH_TARGET_TIME_SECONDS;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_TIMESTAMP_ADDEND_Bits B;
} Ifx_ETH_TIMESTAMP_ADDEND;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_TIMESTAMP_CONTROL_Bits B;
} Ifx_ETH_TIMESTAMP_CONTROL;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_TIMESTAMP_STATUS_Bits B;
} Ifx_ETH_TIMESTAMP_STATUS;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_TRANSMIT_DESCRIPTOR_LIST_ADDRESS_Bits B;
} Ifx_ETH_TRANSMIT_DESCRIPTOR_LIST_ADDRESS;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_TRANSMIT_POLL_DEMAND_Bits B;
} Ifx_ETH_TRANSMIT_POLL_DEMAND;



typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_TX_1024TOMAXOCTETS_FRAMES_GOOD_BAD_Bits B;
} Ifx_ETH_TX_1024TOMAXOCTETS_FRAMES_GOOD_BAD;



typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_TX_128TO255OCTETS_FRAMES_GOOD_BAD_Bits B;
} Ifx_ETH_TX_128TO255OCTETS_FRAMES_GOOD_BAD;



typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_TX_256TO511OCTETS_FRAMES_GOOD_BAD_Bits B;
} Ifx_ETH_TX_256TO511OCTETS_FRAMES_GOOD_BAD;



typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_TX_512TO1023OCTETS_FRAMES_GOOD_BAD_Bits B;
} Ifx_ETH_TX_512TO1023OCTETS_FRAMES_GOOD_BAD;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_TX_64OCTETS_FRAMES_GOOD_BAD_Bits B;
} Ifx_ETH_TX_64OCTETS_FRAMES_GOOD_BAD;



typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_TX_65TO127OCTETS_FRAMES_GOOD_BAD_Bits B;
} Ifx_ETH_TX_65TO127OCTETS_FRAMES_GOOD_BAD;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_TX_BROADCAST_FRAMES_GOOD_Bits B;
} Ifx_ETH_TX_BROADCAST_FRAMES_GOOD;



typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_TX_BROADCAST_FRAMES_GOOD_BAD_Bits B;
} Ifx_ETH_TX_BROADCAST_FRAMES_GOOD_BAD;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_TX_CARRIER_ERROR_FRAMES_Bits B;
} Ifx_ETH_TX_CARRIER_ERROR_FRAMES;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_TX_DEFERRED_FRAMES_Bits B;
} Ifx_ETH_TX_DEFERRED_FRAMES;



typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_TX_EXCESSIVE_COLLISION_FRAMES_Bits B;
} Ifx_ETH_TX_EXCESSIVE_COLLISION_FRAMES;



typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_TX_EXCESSIVE_DEFERRAL_ERROR_Bits B;
} Ifx_ETH_TX_EXCESSIVE_DEFERRAL_ERROR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_TX_FRAME_COUNT_GOOD_Bits B;
} Ifx_ETH_TX_FRAME_COUNT_GOOD;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_TX_FRAME_COUNT_GOOD_BAD_Bits B;
} Ifx_ETH_TX_FRAME_COUNT_GOOD_BAD;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_TX_LATE_COLLISION_FRAMES_Bits B;
} Ifx_ETH_TX_LATE_COLLISION_FRAMES;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_TX_MULTICAST_FRAMES_GOOD_Bits B;
} Ifx_ETH_TX_MULTICAST_FRAMES_GOOD;



typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_TX_MULTICAST_FRAMES_GOOD_BAD_Bits B;
} Ifx_ETH_TX_MULTICAST_FRAMES_GOOD_BAD;



typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_TX_MULTIPLE_COLLISION_GOOD_FRAMES_Bits B;
} Ifx_ETH_TX_MULTIPLE_COLLISION_GOOD_FRAMES;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_TX_OCTET_COUNT_GOOD_Bits B;
} Ifx_ETH_TX_OCTET_COUNT_GOOD;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_TX_OCTET_COUNT_GOOD_BAD_Bits B;
} Ifx_ETH_TX_OCTET_COUNT_GOOD_BAD;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_TX_OSIZE_FRAMES_GOOD_Bits B;
} Ifx_ETH_TX_OSIZE_FRAMES_GOOD;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_TX_PAUSE_FRAMES_Bits B;
} Ifx_ETH_TX_PAUSE_FRAMES;



typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_TX_SINGLE_COLLISION_GOOD_FRAMES_Bits B;
} Ifx_ETH_TX_SINGLE_COLLISION_GOOD_FRAMES;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_TX_UNDERFLOW_ERROR_FRAMES_Bits B;
} Ifx_ETH_TX_UNDERFLOW_ERROR_FRAMES;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_TX_UNICAST_FRAMES_GOOD_BAD_Bits B;
} Ifx_ETH_TX_UNICAST_FRAMES_GOOD_BAD;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_TX_VLAN_FRAMES_GOOD_Bits B;
} Ifx_ETH_TX_VLAN_FRAMES_GOOD;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_VERSION_Bits B;
} Ifx_ETH_VERSION;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_VLAN_TAG_Bits B;
} Ifx_ETH_VLAN_TAG;
# 2955 "./0_Src/4_McHal/Tricore/_Reg/IfxEth_regdef.h"
typedef volatile struct _Ifx_ETH_MAC_ADDRESS
{
    Ifx_ETH_MAC_ADDRESS_HIGH HIGH;
    Ifx_ETH_MAC_ADDRESS_LOW LOW;
} Ifx_ETH_MAC_ADDRESS;
# 2972 "./0_Src/4_McHal/Tricore/_Reg/IfxEth_regdef.h"
typedef volatile struct _Ifx_ETH
{
    Ifx_ETH_CLC CLC;
    Ifx_ETH_ID ID;
    Ifx_ETH_GPCTL GPCTL;
    Ifx_ETH_ACCEN0 ACCEN0;
    Ifx_ETH_ACCEN1 ACCEN1;
    Ifx_ETH_KRST0 KRST0;
    Ifx_ETH_KRST1 KRST1;
    Ifx_ETH_KRSTCLR KRSTCLR;
    unsigned char reserved_20[4064];
    Ifx_ETH_MAC_CONFIGURATION MAC_CONFIGURATION;
    Ifx_ETH_MAC_FRAME_FILTER MAC_FRAME_FILTER;
    Ifx_ETH_HASH_TABLE_HIGH HASH_TABLE_HIGH;
    Ifx_ETH_HASH_TABLE_LOW HASH_TABLE_LOW;
    Ifx_ETH_GMII_ADDRESS GMII_ADDRESS;
    Ifx_ETH_GMII_DATA GMII_DATA;
    Ifx_ETH_FLOW_CONTROL FLOW_CONTROL;
    Ifx_ETH_VLAN_TAG VLAN_TAG;
    Ifx_ETH_VERSION VERSION;
    Ifx_ETH_DEBUG DEBUG;
    Ifx_ETH_REMOTE_WAKE_UP_FRAME_FILTER REMOTE_WAKE_UP_FRAME_FILTER;
    Ifx_ETH_PMT_CONTROL_STATUS PMT_CONTROL_STATUS;
    unsigned char reserved_1030[8];
    Ifx_ETH_INTERRUPT_STATUS INTERRUPT_STATUS;
    Ifx_ETH_INTERRUPT_MASK INTERRUPT_MASK;
    Ifx_ETH_MAC_ADDRESS MAC_ADDRESS_G0[16];
    unsigned char reserved_10C0[64];
    Ifx_ETH_MMC_CONTROL MMC_CONTROL;
    Ifx_ETH_MMC_RECEIVE_INTERRUPT MMC_RECEIVE_INTERRUPT;
    Ifx_ETH_MMC_TRANSMIT_INTERRUPT MMC_TRANSMIT_INTERRUPT;
    Ifx_ETH_MMC_RECEIVE_INTERRUPT_MASK MMC_RECEIVE_INTERRUPT_MASK;
    Ifx_ETH_MMC_TRANSMIT_INTERRUPT_MASK MMC_TRANSMIT_INTERRUPT_MASK;
    Ifx_ETH_TX_OCTET_COUNT_GOOD_BAD TX_OCTET_COUNT_GOOD_BAD;
    Ifx_ETH_TX_FRAME_COUNT_GOOD_BAD TX_FRAME_COUNT_GOOD_BAD;
    Ifx_ETH_TX_BROADCAST_FRAMES_GOOD TX_BROADCAST_FRAMES_GOOD;
    Ifx_ETH_TX_MULTICAST_FRAMES_GOOD TX_MULTICAST_FRAMES_GOOD;
    Ifx_ETH_TX_64OCTETS_FRAMES_GOOD_BAD TX_64OCTETS_FRAMES_GOOD_BAD;
    Ifx_ETH_TX_65TO127OCTETS_FRAMES_GOOD_BAD TX_65TO127OCTETS_FRAMES_GOOD_BAD;
    Ifx_ETH_TX_128TO255OCTETS_FRAMES_GOOD_BAD TX_128TO255OCTETS_FRAMES_GOOD_BAD;
    Ifx_ETH_TX_256TO511OCTETS_FRAMES_GOOD_BAD TX_256TO511OCTETS_FRAMES_GOOD_BAD;
    Ifx_ETH_TX_512TO1023OCTETS_FRAMES_GOOD_BAD TX_512TO1023OCTETS_FRAMES_GOOD_BAD;
    Ifx_ETH_TX_1024TOMAXOCTETS_FRAMES_GOOD_BAD TX_1024TOMAXOCTETS_FRAMES_GOOD_BAD;
    Ifx_ETH_TX_UNICAST_FRAMES_GOOD_BAD TX_UNICAST_FRAMES_GOOD_BAD;
    Ifx_ETH_TX_MULTICAST_FRAMES_GOOD_BAD TX_MULTICAST_FRAMES_GOOD_BAD;
    Ifx_ETH_TX_BROADCAST_FRAMES_GOOD_BAD TX_BROADCAST_FRAMES_GOOD_BAD;
    Ifx_ETH_TX_UNDERFLOW_ERROR_FRAMES TX_UNDERFLOW_ERROR_FRAMES;
    Ifx_ETH_TX_SINGLE_COLLISION_GOOD_FRAMES TX_SINGLE_COLLISION_GOOD_FRAMES;
    Ifx_ETH_TX_MULTIPLE_COLLISION_GOOD_FRAMES TX_MULTIPLE_COLLISION_GOOD_FRAMES;
    Ifx_ETH_TX_DEFERRED_FRAMES TX_DEFERRED_FRAMES;
    Ifx_ETH_TX_LATE_COLLISION_FRAMES TX_LATE_COLLISION_FRAMES;
    Ifx_ETH_TX_EXCESSIVE_COLLISION_FRAMES TX_EXCESSIVE_COLLISION_FRAMES;
    Ifx_ETH_TX_CARRIER_ERROR_FRAMES TX_CARRIER_ERROR_FRAMES;
    Ifx_ETH_TX_OCTET_COUNT_GOOD TX_OCTET_COUNT_GOOD;
    Ifx_ETH_TX_FRAME_COUNT_GOOD TX_FRAME_COUNT_GOOD;
    Ifx_ETH_TX_EXCESSIVE_DEFERRAL_ERROR TX_EXCESSIVE_DEFERRAL_ERROR;
    Ifx_ETH_TX_PAUSE_FRAMES TX_PAUSE_FRAMES;
    Ifx_ETH_TX_VLAN_FRAMES_GOOD TX_VLAN_FRAMES_GOOD;
    Ifx_ETH_TX_OSIZE_FRAMES_GOOD TX_OSIZE_FRAMES_GOOD;
    unsigned char reserved_117C[4];
    Ifx_ETH_RX_FRAMES_COUNT_GOOD_BAD RX_FRAMES_COUNT_GOOD_BAD;
    Ifx_ETH_RX_OCTET_COUNT_GOOD_BAD RX_OCTET_COUNT_GOOD_BAD;
    Ifx_ETH_RX_OCTET_COUNT_GOOD RX_OCTET_COUNT_GOOD;
    Ifx_ETH_RX_BROADCAST_FRAMES_GOOD RX_BROADCAST_FRAMES_GOOD;
    Ifx_ETH_RX_MULTICAST_FRAMES_GOOD RX_MULTICAST_FRAMES_GOOD;
    Ifx_ETH_RX_CRC_ERROR_FRAMES RX_CRC_ERROR_FRAMES;
    Ifx_ETH_RX_ALIGNMENT_ERROR_FRAMES RX_ALIGNMENT_ERROR_FRAMES;
    Ifx_ETH_RX_RUNT_ERROR_FRAMES RX_RUNT_ERROR_FRAMES;
    Ifx_ETH_RX_JABBER_ERROR_FRAMES RX_JABBER_ERROR_FRAMES;
    Ifx_ETH_RX_UNDERSIZE_FRAMES_GOOD RX_UNDERSIZE_FRAMES_GOOD;
    Ifx_ETH_RX_OVERSIZE_FRAMES_GOOD RX_OVERSIZE_FRAMES_GOOD;
    Ifx_ETH_RX_64OCTETS_FRAMES_GOOD_BAD RX_64OCTETS_FRAMES_GOOD_BAD;
    Ifx_ETH_RX_65TO127OCTETS_FRAMES_GOOD_BAD RX_65TO127OCTETS_FRAMES_GOOD_BAD;
    Ifx_ETH_RX_128TO255OCTETS_FRAMES_GOOD_BAD RX_128TO255OCTETS_FRAMES_GOOD_BAD;
    Ifx_ETH_RX_256TO511OCTETS_FRAMES_GOOD_BAD RX_256TO511OCTETS_FRAMES_GOOD_BAD;
    Ifx_ETH_RX_512TO1023OCTETS_FRAMES_GOOD_BAD RX_512TO1023OCTETS_FRAMES_GOOD_BAD;
    Ifx_ETH_RX_1024TOMAXOCTETS_FRAMES_GOOD_BAD RX_1024TOMAXOCTETS_FRAMES_GOOD_BAD;
    Ifx_ETH_RX_UNICAST_FRAMES_GOOD RX_UNICAST_FRAMES_GOOD;
    Ifx_ETH_RX_LENGTH_ERROR_FRAMES RX_LENGTH_ERROR_FRAMES;
    Ifx_ETH_RX_OUT_OF_RANGE_TYPE_FRAMES RX_OUT_OF_RANGE_TYPE_FRAMES;
    Ifx_ETH_RX_PAUSE_FRAMES RX_PAUSE_FRAMES;
    Ifx_ETH_RX_FIFO_OVERFLOW_FRAMES RX_FIFO_OVERFLOW_FRAMES;
    Ifx_ETH_RX_VLAN_FRAMES_GOOD_BAD RX_VLAN_FRAMES_GOOD_BAD;
    Ifx_ETH_RX_WATCHDOG_ERROR_FRAMES RX_WATCHDOG_ERROR_FRAMES;
    Ifx_ETH_RX_RECEIVE_ERROR_FRAMES RX_RECEIVE_ERROR_FRAMES;
    Ifx_ETH_RX_CONTROL_FRAMES_GOOD RX_CONTROL_FRAMES_GOOD;
    unsigned char reserved_11E8[24];
    Ifx_ETH_MMC_IPC_RECEIVE_INTERRUPT_MASK MMC_IPC_RECEIVE_INTERRUPT_MASK;
    unsigned char reserved_1204[4];
    Ifx_ETH_MMC_IPC_RECEIVE_INTERRUPT MMC_IPC_RECEIVE_INTERRUPT;
    unsigned char reserved_120C[4];
    Ifx_ETH_RXIPV4_GOOD_FRAMES RXIPV4_GOOD_FRAMES;
    Ifx_ETH_RXIPV4_HEADER_ERROR_FRAMES RXIPV4_HEADER_ERROR_FRAMES;
    Ifx_ETH_RXIPV4_NO_PAYLOAD_FRAMES RXIPV4_NO_PAYLOAD_FRAMES;
    Ifx_ETH_RXIPV4_FRAGMENTED_FRAMES RXIPV4_FRAGMENTED_FRAMES;
    Ifx_ETH_RXIPV4_UDP_CHECKSUM_DISABLED_FRAMES RXIPV4_UDP_CHECKSUM_DISABLED_FRAMES;
    Ifx_ETH_RXIPV6_GOOD_FRAMES RXIPV6_GOOD_FRAMES;
    Ifx_ETH_RXIPV6_HEADER_ERROR_FRAMES RXIPV6_HEADER_ERROR_FRAMES;
    Ifx_ETH_RXIPV6_NO_PAYLOAD_FRAMES RXIPV6_NO_PAYLOAD_FRAMES;
    Ifx_ETH_RXUDP_GOOD_FRAMES RXUDP_GOOD_FRAMES;
    Ifx_ETH_RXUDP_ERROR_FRAMES RXUDP_ERROR_FRAMES;
    Ifx_ETH_RXTCP_GOOD_FRAMES RXTCP_GOOD_FRAMES;
    Ifx_ETH_RXTCP_ERROR_FRAMES RXTCP_ERROR_FRAMES;
    Ifx_ETH_RXICMP_GOOD_FRAMES RXICMP_GOOD_FRAMES;
    Ifx_ETH_RXICMP_ERROR_FRAMES RXICMP_ERROR_FRAMES;
    unsigned char reserved_1248[8];
    Ifx_ETH_RXIPV4_GOOD_OCTETS RXIPV4_GOOD_OCTETS;
    Ifx_ETH_RXIPV4_HEADER_ERROR_OCTETS RXIPV4_HEADER_ERROR_OCTETS;
    Ifx_ETH_RXIPV4_NO_PAYLOAD_OCTETS RXIPV4_NO_PAYLOAD_OCTETS;
    Ifx_ETH_RXIPV4_FRAGMENTED_OCTETS RXIPV4_FRAGMENTED_OCTETS;
    Ifx_ETH_RXIPV4_UDP_CHECKSUM_DISABLE_OCTETS RXIPV4_UDP_CHECKSUM_DISABLE_OCTETS;
    Ifx_ETH_RXIPV6_GOOD_OCTETS RXIPV6_GOOD_OCTETS;
    Ifx_ETH_RXIPV6_HEADER_ERROR_OCTETS RXIPV6_HEADER_ERROR_OCTETS;
    Ifx_ETH_RXIPV6_NO_PAYLOAD_OCTETS RXIPV6_NO_PAYLOAD_OCTETS;
    Ifx_ETH_RXUDP_GOOD_OCTETS RXUDP_GOOD_OCTETS;
    Ifx_ETH_RXUDP_ERROR_OCTETS RXUDP_ERROR_OCTETS;
    Ifx_ETH_RXTCP_GOOD_OCTETS RXTCP_GOOD_OCTETS;
    Ifx_ETH_RXTCP_ERROR_OCTETS RXTCP_ERROR_OCTETS;
    Ifx_ETH_RXICMP_GOOD_OCTETS RXICMP_GOOD_OCTETS;
    Ifx_ETH_RXICMP_ERROR_OCTETS RXICMP_ERROR_OCTETS;
    unsigned char reserved_1288[1144];
    Ifx_ETH_TIMESTAMP_CONTROL TIMESTAMP_CONTROL;
    Ifx_ETH_SUB_SECOND_INCREMENT SUB_SECOND_INCREMENT;
    Ifx_ETH_SYSTEM_TIME_SECONDS SYSTEM_TIME_SECONDS;
    Ifx_ETH_SYSTEM_TIME_NANOSECONDS SYSTEM_TIME_NANOSECONDS;
    Ifx_ETH_SYSTEM_TIME_SECONDS_UPDATE SYSTEM_TIME_SECONDS_UPDATE;
    Ifx_ETH_SYSTEM_TIME_NANOSECONDS_UPDATE SYSTEM_TIME_NANOSECONDS_UPDATE;
    Ifx_ETH_TIMESTAMP_ADDEND TIMESTAMP_ADDEND;
    Ifx_ETH_TARGET_TIME_SECONDS TARGET_TIME_SECONDS;
    Ifx_ETH_TARGET_TIME_NANOSECONDS TARGET_TIME_NANOSECONDS;
    Ifx_ETH_SYSTEM_TIME_HIGHER_WORD_SECONDS SYSTEM_TIME_HIGHER_WORD_SECONDS;
    Ifx_ETH_TIMESTAMP_STATUS TIMESTAMP_STATUS;
    Ifx_ETH_PPS_CONTROL PPS_CONTROL;
    unsigned char reserved_1730[208];
    Ifx_ETH_MAC_ADDRESS MAC_ADDRESS_G1[16];
    unsigned char reserved_1880[1920];
    Ifx_ETH_BUS_MODE BUS_MODE;
    Ifx_ETH_TRANSMIT_POLL_DEMAND TRANSMIT_POLL_DEMAND;
    Ifx_ETH_RECEIVE_POLL_DEMAND RECEIVE_POLL_DEMAND;
    Ifx_ETH_RECEIVE_DESCRIPTOR_LIST_ADDRESS RECEIVE_DESCRIPTOR_LIST_ADDRESS;
    Ifx_ETH_TRANSMIT_DESCRIPTOR_LIST_ADDRESS TRANSMIT_DESCRIPTOR_LIST_ADDRESS;
    Ifx_ETH_STATUS STATUS;
    Ifx_ETH_OPERATION_MODE OPERATION_MODE;
    Ifx_ETH_INTERRUPT_ENABLE INTERRUPT_ENABLE;
    Ifx_ETH_MISSED_FRAME_AND_BUFFER_OVERFLOW_COUNTER MISSED_FRAME_AND_BUFFER_OVERFLOW_COUNTER;
    Ifx_ETH_RECEIVE_INTERRUPT_WATCHDOG_TIMER RECEIVE_INTERRUPT_WATCHDOG_TIMER;
    unsigned char reserved_2028[4];
    Ifx_ETH_AHB_OR_AXI_STATUS AHB_OR_AXI_STATUS;
    unsigned char reserved_2030[24];
    Ifx_ETH_CURRENT_HOST_TRANSMIT_DESCRIPTOR CURRENT_HOST_TRANSMIT_DESCRIPTOR;
    Ifx_ETH_CURRENT_HOST_RECEIVE_DESCRIPTOR CURRENT_HOST_RECEIVE_DESCRIPTOR;
    Ifx_ETH_CURRENT_HOST_TRANSMIT_BUFFER_ADDRESS CURRENT_HOST_TRANSMIT_BUFFER_ADDRESS;
    Ifx_ETH_CURRENT_HOST_RECEIVE_BUFFER_ADDRESS CURRENT_HOST_RECEIVE_BUFFER_ADDRESS;
    Ifx_ETH_HW_FEATURE HW_FEATURE;
    unsigned char reserved_205C[164];
} Ifx_ETH;
# 37 "./0_Src/4_McHal/Tricore/_Reg/IfxEth_reg.h" 2
# 48 "./0_Src/4_McHal/Tricore/Eth/Std/IfxEth.h" 2
# 1 "./0_Src/4_McHal/Tricore/_Reg/IfxEth_bf.h" 1
# 49 "./0_Src/4_McHal/Tricore/Eth/Std/IfxEth.h" 2
# 1 "./0_Src/4_McHal/Tricore/_PinMap/IfxEth_PinMap.h" 1
# 31 "./0_Src/4_McHal/Tricore/_PinMap/IfxEth_PinMap.h"
# 1 "./0_Src/4_McHal/Tricore/_Reg/IfxEth_reg.h" 1
# 32 "./0_Src/4_McHal/Tricore/_PinMap/IfxEth_PinMap.h" 2

# 1 "./0_Src/4_McHal/Tricore/Port/Std/IfxPort.h" 1
# 43 "./0_Src/4_McHal/Tricore/Port/Std/IfxPort.h"
# 1 "./0_Src/4_McHal/Tricore/_Impl/IfxPort_cfg.h" 1
# 41 "./0_Src/4_McHal/Tricore/_Impl/IfxPort_cfg.h"
# 1 "./0_Src/4_McHal/Tricore/_Reg/IfxPort_reg.h" 1
# 84 "./0_Src/4_McHal/Tricore/_Reg/IfxPort_reg.h"
# 1 "./0_Src/4_McHal/Tricore/_Reg/IfxPort_regdef.h" 1
# 45 "./0_Src/4_McHal/Tricore/_Reg/IfxPort_regdef.h"
typedef struct _Ifx_P_ACCEN0_Bits
{
    unsigned int EN0 : 1;
    unsigned int EN1 : 1;
    unsigned int EN2 : 1;
    unsigned int EN3 : 1;
    unsigned int EN4 : 1;
    unsigned int EN5 : 1;
    unsigned int EN6 : 1;
    unsigned int EN7 : 1;
    unsigned int EN8 : 1;
    unsigned int EN9 : 1;
    unsigned int EN10 : 1;
    unsigned int EN11 : 1;
    unsigned int EN12 : 1;
    unsigned int EN13 : 1;
    unsigned int EN14 : 1;
    unsigned int EN15 : 1;
    unsigned int EN16 : 1;
    unsigned int EN17 : 1;
    unsigned int EN18 : 1;
    unsigned int EN19 : 1;
    unsigned int EN20 : 1;
    unsigned int EN21 : 1;
    unsigned int EN22 : 1;
    unsigned int EN23 : 1;
    unsigned int EN24 : 1;
    unsigned int EN25 : 1;
    unsigned int EN26 : 1;
    unsigned int EN27 : 1;
    unsigned int EN28 : 1;
    unsigned int EN29 : 1;
    unsigned int EN30 : 1;
    unsigned int EN31 : 1;
} Ifx_P_ACCEN0_Bits;


typedef struct _Ifx_P_ACCEN1_Bits
{
    unsigned int reserved_0 : 32;
} Ifx_P_ACCEN1_Bits;


typedef struct _Ifx_P_ESR_Bits
{
    unsigned int EN0 : 1;
    unsigned int EN1 : 1;
    unsigned int EN2 : 1;
    unsigned int EN3 : 1;
    unsigned int EN4 : 1;
    unsigned int EN5 : 1;
    unsigned int EN6 : 1;
    unsigned int EN7 : 1;
    unsigned int EN8 : 1;
    unsigned int EN9 : 1;
    unsigned int EN10 : 1;
    unsigned int EN11 : 1;
    unsigned int EN12 : 1;
    unsigned int EN13 : 1;
    unsigned int EN14 : 1;
    unsigned int EN15 : 1;
    unsigned int reserved_16 : 16;
} Ifx_P_ESR_Bits;


typedef struct _Ifx_P_ID_Bits
{
    unsigned int MODREV : 8;
    unsigned int MODTYPE : 8;
    unsigned int MODNUMBER : 16;
} Ifx_P_ID_Bits;


typedef struct _Ifx_P_IN_Bits
{
    unsigned int P0 : 1;
    unsigned int P1 : 1;
    unsigned int P2 : 1;
    unsigned int P3 : 1;
    unsigned int P4 : 1;
    unsigned int P5 : 1;
    unsigned int P6 : 1;
    unsigned int P7 : 1;
    unsigned int P8 : 1;
    unsigned int P9 : 1;
    unsigned int P10 : 1;
    unsigned int P11 : 1;
    unsigned int P12 : 1;
    unsigned int P13 : 1;
    unsigned int P14 : 1;
    unsigned int P15 : 1;
    unsigned int reserved_16 : 16;
} Ifx_P_IN_Bits;


typedef struct _Ifx_P_IOCR0_Bits
{
    unsigned int reserved_0 : 3;
    unsigned int PC0 : 5;
    unsigned int reserved_8 : 3;
    unsigned int PC1 : 5;
    unsigned int reserved_16 : 3;
    unsigned int PC2 : 5;
    unsigned int reserved_24 : 3;
    unsigned int PC3 : 5;
} Ifx_P_IOCR0_Bits;


typedef struct _Ifx_P_IOCR12_Bits
{
    unsigned int reserved_0 : 3;
    unsigned int PC12 : 5;
    unsigned int reserved_8 : 3;
    unsigned int PC13 : 5;
    unsigned int reserved_16 : 3;
    unsigned int PC14 : 5;
    unsigned int reserved_24 : 3;
    unsigned int PC15 : 5;
} Ifx_P_IOCR12_Bits;


typedef struct _Ifx_P_IOCR4_Bits
{
    unsigned int reserved_0 : 3;
    unsigned int PC4 : 5;
    unsigned int reserved_8 : 3;
    unsigned int PC5 : 5;
    unsigned int reserved_16 : 3;
    unsigned int PC6 : 5;
    unsigned int reserved_24 : 3;
    unsigned int PC7 : 5;
} Ifx_P_IOCR4_Bits;


typedef struct _Ifx_P_IOCR8_Bits
{
    unsigned int reserved_0 : 3;
    unsigned int PC8 : 5;
    unsigned int reserved_8 : 3;
    unsigned int PC9 : 5;
    unsigned int reserved_16 : 3;
    unsigned int PC10 : 5;
    unsigned int reserved_24 : 3;
    unsigned int PC11 : 5;
} Ifx_P_IOCR8_Bits;


typedef struct _Ifx_P_LPCR0_Bits
{
    unsigned int reserved_0 : 1;
    unsigned int PS1 : 1;
    unsigned int reserved_2 : 30;
} Ifx_P_LPCR0_Bits;


typedef struct _Ifx_P_LPCR1_Bits
{
    unsigned int reserved_0 : 1;
    unsigned int PS1 : 1;
    unsigned int reserved_2 : 30;
} Ifx_P_LPCR1_Bits;


typedef struct _Ifx_P_LPCR1_P21_Bits
{
    unsigned int RDIS_CTRL : 1;
    unsigned int RX_DIS : 1;
    unsigned int TERM : 1;
    unsigned int LRXTERM : 5;
    unsigned int reserved_8 : 24;
} Ifx_P_LPCR1_P21_Bits;


typedef struct _Ifx_P_LPCR2_Bits
{
    unsigned int reserved_0 : 8;
    unsigned int LVDSR : 1;
    unsigned int LVDSRL : 1;
    unsigned int reserved_10 : 2;
    unsigned int TDIS_CTRL : 1;
    unsigned int TX_DIS : 1;
    unsigned int TX_PD : 1;
    unsigned int TX_PWDPD : 1;
    unsigned int reserved_16 : 16;
} Ifx_P_LPCR2_Bits;


typedef struct _Ifx_P_OMCR0_Bits
{
    unsigned int reserved_0 : 16;
    unsigned int PCL0 : 1;
    unsigned int PCL1 : 1;
    unsigned int PCL2 : 1;
    unsigned int PCL3 : 1;
    unsigned int reserved_20 : 12;
} Ifx_P_OMCR0_Bits;


typedef struct _Ifx_P_OMCR12_Bits
{
    unsigned int reserved_0 : 28;
    unsigned int PCL12 : 1;
    unsigned int PCL13 : 1;
    unsigned int PCL14 : 1;
    unsigned int PCL15 : 1;
} Ifx_P_OMCR12_Bits;


typedef struct _Ifx_P_OMCR4_Bits
{
    unsigned int reserved_0 : 20;
    unsigned int PCL4 : 1;
    unsigned int PCL5 : 1;
    unsigned int PCL6 : 1;
    unsigned int PCL7 : 1;
    unsigned int reserved_24 : 8;
} Ifx_P_OMCR4_Bits;


typedef struct _Ifx_P_OMCR8_Bits
{
    unsigned int reserved_0 : 24;
    unsigned int PCL8 : 1;
    unsigned int PCL9 : 1;
    unsigned int PCL10 : 1;
    unsigned int PCL11 : 1;
    unsigned int reserved_28 : 4;
} Ifx_P_OMCR8_Bits;


typedef struct _Ifx_P_OMCR_Bits
{
    unsigned int reserved_0 : 16;
    unsigned int PCL0 : 1;
    unsigned int PCL1 : 1;
    unsigned int PCL2 : 1;
    unsigned int PCL3 : 1;
    unsigned int PCL4 : 1;
    unsigned int PCL5 : 1;
    unsigned int PCL6 : 1;
    unsigned int PCL7 : 1;
    unsigned int PCL8 : 1;
    unsigned int PCL9 : 1;
    unsigned int PCL10 : 1;
    unsigned int PCL11 : 1;
    unsigned int PCL12 : 1;
    unsigned int PCL13 : 1;
    unsigned int PCL14 : 1;
    unsigned int PCL15 : 1;
} Ifx_P_OMCR_Bits;


typedef struct _Ifx_P_OMR_Bits
{
    unsigned int PS0 : 1;
    unsigned int PS1 : 1;
    unsigned int PS2 : 1;
    unsigned int PS3 : 1;
    unsigned int PS4 : 1;
    unsigned int PS5 : 1;
    unsigned int PS6 : 1;
    unsigned int PS7 : 1;
    unsigned int PS8 : 1;
    unsigned int PS9 : 1;
    unsigned int PS10 : 1;
    unsigned int PS11 : 1;
    unsigned int PS12 : 1;
    unsigned int PS13 : 1;
    unsigned int PS14 : 1;
    unsigned int PS15 : 1;
    unsigned int PCL0 : 1;
    unsigned int PCL1 : 1;
    unsigned int PCL2 : 1;
    unsigned int PCL3 : 1;
    unsigned int PCL4 : 1;
    unsigned int PCL5 : 1;
    unsigned int PCL6 : 1;
    unsigned int PCL7 : 1;
    unsigned int PCL8 : 1;
    unsigned int PCL9 : 1;
    unsigned int PCL10 : 1;
    unsigned int PCL11 : 1;
    unsigned int PCL12 : 1;
    unsigned int PCL13 : 1;
    unsigned int PCL14 : 1;
    unsigned int PCL15 : 1;
} Ifx_P_OMR_Bits;


typedef struct _Ifx_P_OMSR0_Bits
{
    unsigned int PS0 : 1;
    unsigned int PS1 : 1;
    unsigned int PS2 : 1;
    unsigned int PS3 : 1;
    unsigned int reserved_4 : 28;
} Ifx_P_OMSR0_Bits;


typedef struct _Ifx_P_OMSR12_Bits
{
    unsigned int reserved_0 : 12;
    unsigned int PS12 : 1;
    unsigned int PS13 : 1;
    unsigned int PS14 : 1;
    unsigned int PS15 : 1;
    unsigned int reserved_16 : 16;
} Ifx_P_OMSR12_Bits;


typedef struct _Ifx_P_OMSR4_Bits
{
    unsigned int reserved_0 : 4;
    unsigned int PS4 : 1;
    unsigned int PS5 : 1;
    unsigned int PS6 : 1;
    unsigned int PS7 : 1;
    unsigned int reserved_8 : 24;
} Ifx_P_OMSR4_Bits;


typedef struct _Ifx_P_OMSR8_Bits
{
    unsigned int reserved_0 : 8;
    unsigned int PS8 : 1;
    unsigned int PS9 : 1;
    unsigned int PS10 : 1;
    unsigned int PS11 : 1;
    unsigned int reserved_12 : 20;
} Ifx_P_OMSR8_Bits;


typedef struct _Ifx_P_OMSR_Bits
{
    unsigned int PS0 : 1;
    unsigned int PS1 : 1;
    unsigned int PS2 : 1;
    unsigned int PS3 : 1;
    unsigned int PS4 : 1;
    unsigned int PS5 : 1;
    unsigned int PS6 : 1;
    unsigned int PS7 : 1;
    unsigned int PS8 : 1;
    unsigned int PS9 : 1;
    unsigned int PS10 : 1;
    unsigned int PS11 : 1;
    unsigned int PS12 : 1;
    unsigned int PS13 : 1;
    unsigned int PS14 : 1;
    unsigned int PS15 : 1;
    unsigned int reserved_16 : 16;
} Ifx_P_OMSR_Bits;


typedef struct _Ifx_P_OUT_Bits
{
    unsigned int P0 : 1;
    unsigned int P1 : 1;
    unsigned int P2 : 1;
    unsigned int P3 : 1;
    unsigned int P4 : 1;
    unsigned int P5 : 1;
    unsigned int P6 : 1;
    unsigned int P7 : 1;
    unsigned int P8 : 1;
    unsigned int P9 : 1;
    unsigned int P10 : 1;
    unsigned int P11 : 1;
    unsigned int P12 : 1;
    unsigned int P13 : 1;
    unsigned int P14 : 1;
    unsigned int P15 : 1;
    unsigned int reserved_16 : 16;
} Ifx_P_OUT_Bits;


typedef struct _Ifx_P_PCSR_Bits
{
    unsigned int SEL0 : 1;
    unsigned int SEL1 : 1;
    unsigned int SEL2 : 1;
    unsigned int SEL3 : 1;
    unsigned int SEL4 : 1;
    unsigned int SEL5 : 1;
    unsigned int SEL6 : 1;
    unsigned int reserved_7 : 3;
    unsigned int SEL10 : 1;
    unsigned int SEL11 : 1;
    unsigned int reserved_12 : 19;
    unsigned int LCK : 1;
} Ifx_P_PCSR_Bits;


typedef struct _Ifx_P_PDISC_Bits
{
    unsigned int PDIS0 : 1;
    unsigned int PDIS1 : 1;
    unsigned int PDIS2 : 1;
    unsigned int PDIS3 : 1;
    unsigned int PDIS4 : 1;
    unsigned int PDIS5 : 1;
    unsigned int PDIS6 : 1;
    unsigned int PDIS7 : 1;
    unsigned int PDIS8 : 1;
    unsigned int PDIS9 : 1;
    unsigned int PDIS10 : 1;
    unsigned int PDIS11 : 1;
    unsigned int PDIS12 : 1;
    unsigned int PDIS13 : 1;
    unsigned int PDIS14 : 1;
    unsigned int PDIS15 : 1;
    unsigned int reserved_16 : 16;
} Ifx_P_PDISC_Bits;


typedef struct _Ifx_P_PDR0_Bits
{
    unsigned int PD0 : 3;
    unsigned int PL0 : 1;
    unsigned int PD1 : 3;
    unsigned int PL1 : 1;
    unsigned int PD2 : 3;
    unsigned int PL2 : 1;
    unsigned int PD3 : 3;
    unsigned int PL3 : 1;
    unsigned int PD4 : 3;
    unsigned int PL4 : 1;
    unsigned int PD5 : 3;
    unsigned int PL5 : 1;
    unsigned int PD6 : 3;
    unsigned int PL6 : 1;
    unsigned int PD7 : 3;
    unsigned int PL7 : 1;
} Ifx_P_PDR0_Bits;


typedef struct _Ifx_P_PDR1_Bits
{
    unsigned int PD8 : 3;
    unsigned int PL8 : 1;
    unsigned int PD9 : 3;
    unsigned int PL9 : 1;
    unsigned int PD10 : 3;
    unsigned int PL10 : 1;
    unsigned int PD11 : 3;
    unsigned int PL11 : 1;
    unsigned int PD12 : 3;
    unsigned int PL12 : 1;
    unsigned int PD13 : 3;
    unsigned int PL13 : 1;
    unsigned int PD14 : 3;
    unsigned int PL14 : 1;
    unsigned int PD15 : 3;
    unsigned int PL15 : 1;
} Ifx_P_PDR1_Bits;







typedef union
{

    unsigned int U;

    signed int I;

    Ifx_P_ACCEN0_Bits B;
} Ifx_P_ACCEN0;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_P_ACCEN1_Bits B;
} Ifx_P_ACCEN1;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_P_ESR_Bits B;
} Ifx_P_ESR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_P_ID_Bits B;
} Ifx_P_ID;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_P_IN_Bits B;
} Ifx_P_IN;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_P_IOCR0_Bits B;
} Ifx_P_IOCR0;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_P_IOCR12_Bits B;
} Ifx_P_IOCR12;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_P_IOCR4_Bits B;
} Ifx_P_IOCR4;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_P_IOCR8_Bits B;
} Ifx_P_IOCR8;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_P_LPCR0_Bits B;
} Ifx_P_LPCR0;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_P_LPCR1_Bits B;

    Ifx_P_LPCR1_P21_Bits B_P21;
} Ifx_P_LPCR1;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_P_LPCR2_Bits B;
} Ifx_P_LPCR2;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_P_OMCR_Bits B;
} Ifx_P_OMCR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_P_OMCR0_Bits B;
} Ifx_P_OMCR0;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_P_OMCR12_Bits B;
} Ifx_P_OMCR12;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_P_OMCR4_Bits B;
} Ifx_P_OMCR4;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_P_OMCR8_Bits B;
} Ifx_P_OMCR8;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_P_OMR_Bits B;
} Ifx_P_OMR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_P_OMSR_Bits B;
} Ifx_P_OMSR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_P_OMSR0_Bits B;
} Ifx_P_OMSR0;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_P_OMSR12_Bits B;
} Ifx_P_OMSR12;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_P_OMSR4_Bits B;
} Ifx_P_OMSR4;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_P_OMSR8_Bits B;
} Ifx_P_OMSR8;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_P_OUT_Bits B;
} Ifx_P_OUT;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_P_PCSR_Bits B;
} Ifx_P_PCSR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_P_PDISC_Bits B;
} Ifx_P_PDISC;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_P_PDR0_Bits B;
} Ifx_P_PDR0;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_P_PDR1_Bits B;
} Ifx_P_PDR1;
# 825 "./0_Src/4_McHal/Tricore/_Reg/IfxPort_regdef.h"
typedef volatile struct _Ifx_P
{
    Ifx_P_OUT OUT;
    Ifx_P_OMR OMR;
    Ifx_P_ID ID;
    unsigned char reserved_C[4];
    Ifx_P_IOCR0 IOCR0;
    Ifx_P_IOCR4 IOCR4;
    Ifx_P_IOCR8 IOCR8;
    Ifx_P_IOCR12 IOCR12;
    unsigned char reserved_20[4];
    Ifx_P_IN IN;
    unsigned char reserved_28[24];
    Ifx_P_PDR0 PDR0;
    Ifx_P_PDR1 PDR1;
    unsigned char reserved_48[8];
    Ifx_P_ESR ESR;
    unsigned char reserved_54[12];
    Ifx_P_PDISC PDISC;
    Ifx_P_PCSR PCSR;
    unsigned char reserved_68[8];
    Ifx_P_OMSR0 OMSR0;
    Ifx_P_OMSR4 OMSR4;
    Ifx_P_OMSR8 OMSR8;
    Ifx_P_OMSR12 OMSR12;
    Ifx_P_OMCR0 OMCR0;
    Ifx_P_OMCR4 OMCR4;
    Ifx_P_OMCR8 OMCR8;
    Ifx_P_OMCR12 OMCR12;
    Ifx_P_OMSR OMSR;
    Ifx_P_OMCR OMCR;
    unsigned char reserved_98[8];
    Ifx_P_LPCR0 LPCR0;
    Ifx_P_LPCR1 LPCR1;
    Ifx_P_LPCR2 LPCR2;
    unsigned char reserved_A4[76];
    Ifx_P_ACCEN1 ACCEN1;
    Ifx_P_ACCEN0 ACCEN0;
} Ifx_P;
# 85 "./0_Src/4_McHal/Tricore/_Reg/IfxPort_reg.h" 2
# 42 "./0_Src/4_McHal/Tricore/_Impl/IfxPort_cfg.h" 2
# 59 "./0_Src/4_McHal/Tricore/_Impl/IfxPort_cfg.h"
typedef struct
{
    Ifx_P *port;
    uint16 masks;
} IfxPort_Esr_Masks;





extern const IfxPort_Esr_Masks IfxPort_cfg_esrMasks[(16)];

extern const IfxModule_IndexMap IfxPort_cfg_indexMap[(16)];
# 44 "./0_Src/4_McHal/Tricore/Port/Std/IfxPort.h" 2
# 55 "./0_Src/4_McHal/Tricore/Port/Std/IfxPort.h"
typedef enum
{
    IfxPort_ControlledBy_port = 0,
    IfxPort_ControlledBy_hsct = 1
} IfxPort_ControlledBy;



typedef enum
{
    IfxPort_InputMode_undefined = -1,
    IfxPort_InputMode_noPullDevice = 0 << 3,
        IfxPort_InputMode_pullDown = 1U << 3,
        IfxPort_InputMode_pullUp = 2U << 3
} IfxPort_InputMode;





typedef enum
{
    IfxPort_Mode_inputNoPullDevice = 0,
    IfxPort_Mode_inputPullDown = 8U,
    IfxPort_Mode_inputPullUp = 0x10U,
    IfxPort_Mode_outputPushPullGeneral = 0x80U,
    IfxPort_Mode_outputPushPullAlt1 = 0x88U,
    IfxPort_Mode_outputPushPullAlt2 = 0x90U,
    IfxPort_Mode_outputPushPullAlt3 = 0x98U,
    IfxPort_Mode_outputPushPullAlt4 = 0xA0U,
    IfxPort_Mode_outputPushPullAlt5 = 0xA8U,
    IfxPort_Mode_outputPushPullAlt6 = 0xB0U,
    IfxPort_Mode_outputPushPullAlt7 = 0xB8U,
    IfxPort_Mode_outputOpenDrainGeneral = 0xC0U,
    IfxPort_Mode_outputOpenDrainAlt1 = 0xC8U,
    IfxPort_Mode_outputOpenDrainAlt2 = 0xD0U,
    IfxPort_Mode_outputOpenDrainAlt3 = 0xD8U,
    IfxPort_Mode_outputOpenDrainAlt4 = 0xE0U,
    IfxPort_Mode_outputOpenDrainAlt5 = 0xE8U,
    IfxPort_Mode_outputOpenDrainAlt6 = 0xF0U,
    IfxPort_Mode_outputOpenDrainAlt7 = 0xF8U
} IfxPort_Mode;



typedef enum
{
    IfxPort_OutputIdx_general = 0x10U << 3,
        IfxPort_OutputIdx_alt1 = 0x11U << 3,
        IfxPort_OutputIdx_alt2 = 0x12U << 3,
        IfxPort_OutputIdx_alt3 = 0x13U << 3,
        IfxPort_OutputIdx_alt4 = 0x14U << 3,
        IfxPort_OutputIdx_alt5 = 0x15U << 3,
        IfxPort_OutputIdx_alt6 = 0x16U << 3,
        IfxPort_OutputIdx_alt7 = 0x17U << 3
} IfxPort_OutputIdx;



typedef enum
{
    IfxPort_OutputMode_pushPull = 0x10U << 3,
        IfxPort_OutputMode_openDrain = 0x18U << 3
} IfxPort_OutputMode;





typedef enum
{
    IfxPort_PadDriver_cmosAutomotiveSpeed1 = 0,
    IfxPort_PadDriver_cmosAutomotiveSpeed2 = 1,
    IfxPort_PadDriver_cmosAutomotiveSpeed3 = 2,
    IfxPort_PadDriver_cmosAutomotiveSpeed4 = 3,
    IfxPort_PadDriver_lvdsSpeed1 = 4,
    IfxPort_PadDriver_lvdsSpeed2 = 5,
    IfxPort_PadDriver_lvdsSpeed3 = 6,
    IfxPort_PadDriver_lvdsSpeed4 = 7,
    IfxPort_PadDriver_ttlSpeed1 = 8,
    IfxPort_PadDriver_ttlSpeed2 = 9,
    IfxPort_PadDriver_ttlSpeed3 = 10,
    IfxPort_PadDriver_ttlSpeed4 = 11
} IfxPort_PadDriver;



typedef enum
{
    IfxPort_PadSupply_5v = 0,
    IfxPort_PadSupply_3v = 1
} IfxPort_PadSupply;





typedef enum
{
    IfxPort_State_notChanged = (0 << 16) | (0 << 0),
    IfxPort_State_high = (0 << 16) | (1U << 0),
    IfxPort_State_low = (1U << 16) | (0 << 0),
    IfxPort_State_toggled = (1U << 16) | (1U << 0)
} IfxPort_State;
# 170 "./0_Src/4_McHal/Tricore/Port/Std/IfxPort.h"
typedef struct
{
    Ifx_P *port;
    uint8 pinIndex;
} IfxPort_Pin;



typedef struct
{
    Ifx_P *port;
    uint8 pinIndex;
    IfxPort_OutputIdx mode;
    IfxPort_PadDriver padDriver;
} IfxPort_Pin_Config;
# 208 "./0_Src/4_McHal/Tricore/Port/Std/IfxPort.h"
static inline __attribute__ ((always_inline)) boolean IfxPort_getPinState(Ifx_P *port, uint8 pinIndex);
# 223 "./0_Src/4_McHal/Tricore/Port/Std/IfxPort.h"
static inline __attribute__ ((always_inline)) void IfxPort_setPinHigh(Ifx_P *port, uint8 pinIndex);
# 238 "./0_Src/4_McHal/Tricore/Port/Std/IfxPort.h"
static inline __attribute__ ((always_inline)) void IfxPort_setPinLow(Ifx_P *port, uint8 pinIndex);
# 252 "./0_Src/4_McHal/Tricore/Port/Std/IfxPort.h"
static inline __attribute__ ((always_inline)) void IfxPort_setPinModeInput(Ifx_P *port, uint8 pinIndex, IfxPort_InputMode mode);
# 267 "./0_Src/4_McHal/Tricore/Port/Std/IfxPort.h"
static inline __attribute__ ((always_inline)) void IfxPort_setPinModeOutput(Ifx_P *port, uint8 pinIndex, IfxPort_OutputMode mode, IfxPort_OutputIdx index);
# 283 "./0_Src/4_McHal/Tricore/Port/Std/IfxPort.h"
static inline __attribute__ ((always_inline)) void IfxPort_setPinState(Ifx_P *port, uint8 pinIndex, IfxPort_State action);
# 298 "./0_Src/4_McHal/Tricore/Port/Std/IfxPort.h"
static inline __attribute__ ((always_inline)) void IfxPort_togglePin(Ifx_P *port, uint8 pinIndex);
# 321 "./0_Src/4_McHal/Tricore/Port/Std/IfxPort.h"
extern boolean IfxPort_disableEmergencyStop(Ifx_P *port, uint8 pinIndex);
# 339 "./0_Src/4_McHal/Tricore/Port/Std/IfxPort.h"
extern boolean IfxPort_enableEmergencyStop(Ifx_P *port, uint8 pinIndex);
# 355 "./0_Src/4_McHal/Tricore/Port/Std/IfxPort.h"
extern void IfxPort_setPinMode(Ifx_P *port, uint8 pinIndex, IfxPort_Mode mode);
# 370 "./0_Src/4_McHal/Tricore/Port/Std/IfxPort.h"
extern void IfxPort_setPinPadDriver(Ifx_P *port, uint8 pinIndex, IfxPort_PadDriver padDriver);
# 394 "./0_Src/4_McHal/Tricore/Port/Std/IfxPort.h"
static inline __attribute__ ((always_inline)) uint32 IfxPort_getGroupState(Ifx_P *port, uint8 pinIndex, uint16 mask);
# 413 "./0_Src/4_McHal/Tricore/Port/Std/IfxPort.h"
static inline __attribute__ ((always_inline)) void IfxPort_setGroupState(Ifx_P *port, uint8 pinIndex, uint16 mask, uint16 data);
# 423 "./0_Src/4_McHal/Tricore/Port/Std/IfxPort.h"
extern sint32 IfxPort_getIndex(Ifx_P *port);
# 439 "./0_Src/4_McHal/Tricore/Port/Std/IfxPort.h"
extern void IfxPort_setGroupModeInput(Ifx_P *port, uint8 pinIndex, uint16 mask, IfxPort_InputMode mode);
# 456 "./0_Src/4_McHal/Tricore/Port/Std/IfxPort.h"
extern void IfxPort_setGroupModeOutput(Ifx_P *port, uint8 pinIndex, uint16 mask, IfxPort_OutputMode mode, IfxPort_OutputIdx index);
# 472 "./0_Src/4_McHal/Tricore/Port/Std/IfxPort.h"
extern void IfxPort_setGroupPadDriver(Ifx_P *port, uint8 pinIndex, uint16 mask, IfxPort_PadDriver padDriver);
# 481 "./0_Src/4_McHal/Tricore/Port/Std/IfxPort.h"
extern void IfxPort_setPinModeLvdsMedium(Ifx_P *port, uint8 pinIndex, IfxPort_PadDriver lvdsPadDriver, IfxPort_PadSupply padSupply);
# 490 "./0_Src/4_McHal/Tricore/Port/Std/IfxPort.h"
extern void IfxPort_setPinModeLvdsHigh(Ifx_P *port, uint8 pinIndex, IfxPort_Mode mode, IfxPort_ControlledBy enablePortControlled);
# 507 "./0_Src/4_McHal/Tricore/Port/Std/IfxPort.h"
extern void IfxPort_resetESR(Ifx_P *port, uint8 pinIndex);
# 518 "./0_Src/4_McHal/Tricore/Port/Std/IfxPort.h"
extern void IfxPort_setESR(Ifx_P *port, uint8 pinIndex);





static inline __attribute__ ((always_inline)) uint32 IfxPort_getGroupState(Ifx_P *port, uint8 pinIndex, uint16 mask)
{
    return (uint32)((port->IN.U) >> (pinIndex)) & mask;
}


static inline __attribute__ ((always_inline)) boolean IfxPort_getPinState(Ifx_P *port, uint8 pinIndex)
{
    return (((*(&port->IN.U) & (1U << (pinIndex))) != 0) != 0) ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxPort_setGroupState(Ifx_P *port, uint8 pinIndex, uint16 mask, uint16 data)
{
    port->OUT.U = (port->OUT.U & ~((uint32)(mask)) << pinIndex) | (data << pinIndex);
}


static inline __attribute__ ((always_inline)) void IfxPort_setPinHigh(Ifx_P *port, uint8 pinIndex)
{
    IfxPort_setPinState(port, pinIndex, IfxPort_State_high);
}


static inline __attribute__ ((always_inline)) void IfxPort_setPinLow(Ifx_P *port, uint8 pinIndex)
{
    IfxPort_setPinState(port, pinIndex, IfxPort_State_low);
}


static inline __attribute__ ((always_inline)) void IfxPort_setPinModeInput(Ifx_P *port, uint8 pinIndex, IfxPort_InputMode mode)
{
    IfxPort_setPinMode(port, pinIndex, (IfxPort_Mode)mode);
}


static inline __attribute__ ((always_inline)) void IfxPort_setPinModeOutput(Ifx_P *port, uint8 pinIndex, IfxPort_OutputMode mode, IfxPort_OutputIdx index)
{
    IfxPort_setPinMode(port, pinIndex, (IfxPort_Mode)(index | mode));
}


static inline __attribute__ ((always_inline)) void IfxPort_setPinState(Ifx_P *port, uint8 pinIndex, IfxPort_State action)
{
    port->OMR.U = action << pinIndex;
}


static inline __attribute__ ((always_inline)) void IfxPort_togglePin(Ifx_P *port, uint8 pinIndex)
{
    IfxPort_setPinState(port, pinIndex, IfxPort_State_toggled);
}
# 34 "./0_Src/4_McHal/Tricore/_PinMap/IfxEth_PinMap.h" 2





typedef const struct
{
    Ifx_ETH* module;
    IfxPort_Pin pin;
    Ifx_RxSel select;
} IfxEth_Crs_In;


typedef const struct
{
    Ifx_ETH* module;
    IfxPort_Pin pin;
    Ifx_RxSel select;
} IfxEth_Crsdv_In;


typedef const struct
{
    Ifx_ETH* module;
    IfxPort_Pin pin;
    Ifx_RxSel select;
} IfxEth_Rxdv_In;


typedef const struct
{
    Ifx_ETH* module;
    IfxPort_Pin pin;
    Ifx_RxSel select;
} IfxEth_Refclk_In;


typedef const struct
{
    Ifx_ETH* module;
    IfxPort_Pin pin;
    Ifx_RxSel select;
} IfxEth_Rxclk_In;


typedef const struct
{
    Ifx_ETH* module;
    IfxPort_Pin pin;
    Ifx_RxSel select;
} IfxEth_Txclk_In;


typedef const struct
{
    Ifx_ETH* module;
    IfxPort_Pin pin;
    Ifx_RxSel select;
} IfxEth_Rxd_In;


typedef const struct
{
    Ifx_ETH* module;
    IfxPort_Pin pin;
    Ifx_RxSel select;
} IfxEth_Col_In;


typedef const struct
{
    Ifx_ETH* module;
    IfxPort_Pin pin;
    IfxPort_OutputIdx select;
} IfxEth_Mdc_Out;


typedef const struct
{
    Ifx_ETH* module;
    IfxPort_Pin pin;
    Ifx_RxSel inSelect;
    IfxPort_OutputIdx outSelect;
} IfxEth_Mdio_InOut;


typedef const struct
{
    Ifx_ETH* module;
    IfxPort_Pin pin;
    IfxPort_OutputIdx select;
} IfxEth_Txd_Out;


typedef const struct
{
    Ifx_ETH* module;
    IfxPort_Pin pin;
    IfxPort_OutputIdx select;
} IfxEth_Txen_Out;


typedef const struct
{
    Ifx_ETH* module;
    IfxPort_Pin pin;
    IfxPort_OutputIdx select;
} IfxEth_Txer_Out;


typedef const struct
{
    Ifx_ETH* module;
    IfxPort_Pin pin;
    Ifx_RxSel select;
} IfxEth_Rxer_In;

extern IfxEth_Col_In IfxEth_COL_P11_15_IN;
extern IfxEth_Crs_In IfxEth_CRSA_P11_14_IN;
extern IfxEth_Crs_In IfxEth_CRSB_P11_11_IN;
extern IfxEth_Crsdv_In IfxEth_CRSDVA_P11_11_IN;
extern IfxEth_Crsdv_In IfxEth_CRSDVB_P11_14_IN;
extern IfxEth_Mdc_Out IfxEth_MDC_P02_8_OUT;
extern IfxEth_Mdc_Out IfxEth_MDC_P12_0_OUT;
extern IfxEth_Mdc_Out IfxEth_MDC_P21_0_OUT;
extern IfxEth_Mdc_Out IfxEth_MDC_P21_2_OUT;
extern IfxEth_Mdio_InOut IfxEth_MDIOA_P00_0_INOUT;
extern IfxEth_Mdio_InOut IfxEth_MDIOC_P12_1_INOUT;
extern IfxEth_Mdio_InOut IfxEth_MDIOD_P21_3_INOUT;
extern IfxEth_Mdio_InOut IfxEth_MDIO_P21_1_INOUT;
extern IfxEth_Refclk_In IfxEth_REFCLK_P11_12_IN;
extern IfxEth_Rxclk_In IfxEth_RXCLKB_P11_4_IN;
extern IfxEth_Rxclk_In IfxEth_RXCLKC_P12_0_IN;
extern IfxEth_Rxd_In IfxEth_RXD0_P11_10_IN;
extern IfxEth_Rxd_In IfxEth_RXD1_P11_9_IN;
extern IfxEth_Rxd_In IfxEth_RXD2_P11_8_IN;
extern IfxEth_Rxd_In IfxEth_RXD3_P11_7_IN;
extern IfxEth_Rxdv_In IfxEth_RXDVA_P11_11_IN;
extern IfxEth_Rxdv_In IfxEth_RXDVB_P11_14_IN;
extern IfxEth_Rxer_In IfxEth_RXERA_P11_13_IN;
extern IfxEth_Rxer_In IfxEth_RXERB_P21_7_IN;
extern IfxEth_Txclk_In IfxEth_TXCLKA_P11_5_IN;
extern IfxEth_Txclk_In IfxEth_TXCLKB_P11_12_IN;
extern IfxEth_Txd_Out IfxEth_TXD0_P11_3_OUT;
extern IfxEth_Txd_Out IfxEth_TXD1_P11_2_OUT;
extern IfxEth_Txd_Out IfxEth_TXD2_P11_1_OUT;
extern IfxEth_Txd_Out IfxEth_TXD3_P11_0_OUT;
extern IfxEth_Txen_Out IfxEth_TXEN_P11_6_OUT;
extern IfxEth_Txer_Out IfxEth_TXER_P11_4_OUT;
# 203 "./0_Src/4_McHal/Tricore/_PinMap/IfxEth_PinMap.h"
extern const IfxEth_Col_In *IfxEth_Col_In_pinTable[1][1];


extern const IfxEth_Crs_In *IfxEth_Crs_In_pinTable[1][2];


extern const IfxEth_Crsdv_In *IfxEth_Crsdv_In_pinTable[1][2];


extern const IfxEth_Mdc_Out *IfxEth_Mdc_Out_pinTable[1][4];


extern const IfxEth_Mdio_InOut *IfxEth_Mdio_InOut_pinTable[1][7];


extern const IfxEth_Refclk_In *IfxEth_Refclk_In_pinTable[1][1];


extern const IfxEth_Rxclk_In *IfxEth_Rxclk_In_pinTable[1][3];


extern const IfxEth_Rxd_In *IfxEth_Rxd_In_pinTable[1][1];


extern const IfxEth_Rxdv_In *IfxEth_Rxdv_In_pinTable[1][2];


extern const IfxEth_Rxer_In *IfxEth_Rxer_In_pinTable[1][2];


extern const IfxEth_Txclk_In *IfxEth_Txclk_In_pinTable[1][2];


extern const IfxEth_Txd_Out *IfxEth_Txd_Out_pinTable[1][4];


extern const IfxEth_Txen_Out *IfxEth_Txen_Out_pinTable[1][1];


extern const IfxEth_Txer_Out *IfxEth_Txer_Out_pinTable[1][1];
# 50 "./0_Src/4_McHal/Tricore/Eth/Std/IfxEth.h" 2
# 1 "./0_Src/4_McHal/Tricore/Src/Std/IfxSrc.h" 1
# 95 "./0_Src/4_McHal/Tricore/Src/Std/IfxSrc.h"
# 1 "./0_Src/4_McHal/Tricore/_Impl/IfxSrc_cfg.h" 1
# 96 "./0_Src/4_McHal/Tricore/Src/Std/IfxSrc.h" 2
# 112 "./0_Src/4_McHal/Tricore/Src/Std/IfxSrc.h"
static inline __attribute__ ((always_inline)) void IfxSrc_clearOverrun(volatile Ifx_SRC_SRCR *src);
# 121 "./0_Src/4_McHal/Tricore/Src/Std/IfxSrc.h"
static inline __attribute__ ((always_inline)) void IfxSrc_clearRequest(volatile Ifx_SRC_SRCR *src);
# 130 "./0_Src/4_McHal/Tricore/Src/Std/IfxSrc.h"
static inline __attribute__ ((always_inline)) boolean IfxSrc_isOverrun(volatile Ifx_SRC_SRCR *src);
# 139 "./0_Src/4_McHal/Tricore/Src/Std/IfxSrc.h"
static inline __attribute__ ((always_inline)) boolean IfxSrc_isRequested(volatile Ifx_SRC_SRCR *src);
# 148 "./0_Src/4_McHal/Tricore/Src/Std/IfxSrc.h"
static inline __attribute__ ((always_inline)) void IfxSrc_setRequest(volatile Ifx_SRC_SRCR *src);
# 166 "./0_Src/4_McHal/Tricore/Src/Std/IfxSrc.h"
static inline __attribute__ ((always_inline)) void IfxSrc_deinit(volatile Ifx_SRC_SRCR *src);
# 175 "./0_Src/4_McHal/Tricore/Src/Std/IfxSrc.h"
static inline __attribute__ ((always_inline)) void IfxSrc_disable(volatile Ifx_SRC_SRCR *src);
# 184 "./0_Src/4_McHal/Tricore/Src/Std/IfxSrc.h"
static inline __attribute__ ((always_inline)) void IfxSrc_enable(volatile Ifx_SRC_SRCR *src);
# 216 "./0_Src/4_McHal/Tricore/Src/Std/IfxSrc.h"
static inline __attribute__ ((always_inline)) void IfxSrc_init(volatile Ifx_SRC_SRCR *src, IfxSrc_Tos typOfService, Ifx_Priority priority);







static inline __attribute__ ((always_inline)) void IfxSrc_clearOverrun(volatile Ifx_SRC_SRCR *src)
{
    src->B.IOVCLR = 1;
}


static inline __attribute__ ((always_inline)) void IfxSrc_clearRequest(volatile Ifx_SRC_SRCR *src)
{
    src->B.CLRR = 1;
}


static inline __attribute__ ((always_inline)) void IfxSrc_deinit(volatile Ifx_SRC_SRCR *src)
{
    src->U = 0;
}


static inline __attribute__ ((always_inline)) void IfxSrc_disable(volatile Ifx_SRC_SRCR *src)
{
    src->B.SRE = 0;
}


static inline __attribute__ ((always_inline)) void IfxSrc_enable(volatile Ifx_SRC_SRCR *src)
{
    src->B.SRE = 1;
}


static inline __attribute__ ((always_inline)) void IfxSrc_init(volatile Ifx_SRC_SRCR *src, IfxSrc_Tos typOfService, Ifx_Priority priority)
{
    src->B.SRPN = priority;
    src->B.TOS = typOfService;
    IfxSrc_clearRequest(src);
}


static inline __attribute__ ((always_inline)) boolean IfxSrc_isOverrun(volatile Ifx_SRC_SRCR *src)
{
    return src->B.IOV ? 1 : 0;
}


static inline __attribute__ ((always_inline)) boolean IfxSrc_isRequested(volatile Ifx_SRC_SRCR *src)
{
    return src->B.SRR ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxSrc_setRequest(volatile Ifx_SRC_SRCR *src)
{
    src->B.SETR = 1;
}
# 51 "./0_Src/4_McHal/Tricore/Eth/Std/IfxEth.h" 2
# 95 "./0_Src/4_McHal/Tricore/Eth/Std/IfxEth.h"
typedef enum
{
    IfxEth_ChecksumMode_bypass = 0,
    IfxEth_ChecksumMode_ipv4 = 1,
    IfxEth_ChecksumMode_tcpUdpIcmpSegment = 2,
    IfxEth_ChecksumMode_tcpUdpIcmpFull = 3
} IfxEth_ChecksumMode;



typedef enum
{
    IfxEth_PhyInterfaceMode_mii,
    IfxEth_PhyInterfaceMode_rmii
} IfxEth_PhyInterfaceMode;



typedef enum
{
    IfxEth_ReceiveProcessState_reset,
    IfxEth_ReceiveProcessState_fetching,
    IfxEth_ReceiveProcessState_none,
    IfxEth_ReceiveProcessState_waiting,
    IfxEth_ReceiveProcessState_suspended,
    IfxEth_ReceiveProcessState_closing,
    IfxEth_ReceiveProcessState_timestampWrite,
    IfxEth_ReceiveProcessState_transfering
} IfxEth_ReceiveProcessState;



typedef enum
{
    IfxEth_TransmitProcessState_reset,
    IfxEth_TransmitProcessState_fetching,
    IfxEth_TransmitProcessState_waiting,
    IfxEth_TransmitProcessState_reading,
    IfxEth_TransmitProcessState_timestampWrite,
    IfxEth_TransmitProcessState_none,
    IfxEth_TransmitProcessState_suspended,
    IfxEth_TransmitProcessState_closing
} IfxEth_TransmitProcessState;
# 149 "./0_Src/4_McHal/Tricore/Eth/Std/IfxEth.h"
typedef struct
{
    uint32 ext : 1;
    uint32 CE : 1;
    uint32 DBE : 1;
    uint32 RE : 1;
    uint32 RWT : 1;
    uint32 FT : 1;
    uint32 LC : 1;
    uint32 IPC : 1;
    uint32 LS : 1;
    uint32 FS : 1;
    uint32 VLAN : 1;
    uint32 OE : 1;
    uint32 LE : 1;
    uint32 SAF : 1;
    uint32 DE : 1;
    uint32 ES : 1;
    uint32 FL : 14;
    uint32 AFM : 1;
    uint32 OWN : 1;
} IfxEth_AltRxDescr0_Bits;



typedef struct
{
    uint32 RBS1 : 13;
    uint32 resv1 : 1;
    uint32 RCH : 1;
    uint32 RER : 1;
    uint32 RBS2 : 13;
    uint32 resv : 2;
    uint32 DIC : 1;
} IfxEth_AltRxDescr1_Bits;



typedef struct
{
    uint32 DB : 1;
    uint32 UF : 1;
    uint32 ED : 1;
    uint32 CC : 4;
    uint32 VLAN : 1;
    uint32 EC : 1;
    uint32 LC : 1;
    uint32 NC : 1;
    uint32 LOC : 1;
    uint32 PCE : 1;
    uint32 FF : 1;
    uint32 JT : 1;
    uint32 ES : 1;
    uint32 IHE : 1;
    uint32 TTSS : 1;
    uint32 resv : 2;
    uint32 TCH : 1;
    uint32 TER : 1;
    uint32 CIC : 2;
    uint32 resv1 : 1;
    uint32 TTSE : 1;
    uint32 DP : 1;
    uint32 DC : 1;
    uint32 FS : 1;
    uint32 LS : 1;
    uint32 IC : 1;
    uint32 OWN : 1;
} IfxEth_AltTxDescr0_Bits;



typedef struct
{
    uint32 TBS1 : 13;
    uint32 resv1 : 3;
    uint32 TBS2 : 13;
    uint32 resv2 : 3;
} IfxEth_AltTxDescr1_Bits;







typedef union
{
    IfxEth_AltRxDescr0_Bits A;
    uint32 U;
} IfxEth_RxDescr0;



typedef union
{
    IfxEth_AltRxDescr1_Bits A;
    uint32 U;
} IfxEth_RxDescr1;



typedef union
{
    uint32 U;
} IfxEth_RxDescr2;



typedef union
{
    uint32 U;
} IfxEth_RxDescr3;



typedef union
{
    IfxEth_AltTxDescr0_Bits A;
    uint32 U;
} IfxEth_TxDescr0;



typedef union
{
    IfxEth_AltTxDescr1_Bits A;
    uint32 U;
} IfxEth_TxDescr1;



typedef union
{
    uint32 U;
} IfxEth_TxDescr2;



typedef union
{
    uint32 U;
} IfxEth_TxDescr3;







typedef struct
{
    IfxEth_RxDescr0 RDES0;
    IfxEth_RxDescr1 RDES1;
    IfxEth_RxDescr2 RDES2;
    IfxEth_RxDescr3 RDES3;
} IfxEth_RxDescr;



typedef struct
{
    IfxEth_TxDescr0 TDES0;
    IfxEth_TxDescr1 TDES1;
    IfxEth_TxDescr2 TDES2;
    IfxEth_TxDescr3 TDES3;
} IfxEth_TxDescr;







typedef struct
{
    IfxEth_Crs_In *crs;
    IfxEth_Col_In *col;
    IfxEth_Txclk_In *txClk;
    IfxEth_Rxclk_In *rxClk;
    IfxEth_Rxdv_In *rxDv;
    IfxEth_Rxer_In *rxEr;
    IfxEth_Rxd_In *rxd0;
    IfxEth_Rxd_In *rxd1;
    IfxEth_Rxd_In *rxd2;
    IfxEth_Rxd_In *rxd3;
    IfxEth_Txen_Out *txEn;
    IfxEth_Txer_Out *txEr;
    IfxEth_Txd_Out *txd0;
    IfxEth_Txd_Out *txd1;
    IfxEth_Txd_Out *txd2;
    IfxEth_Txd_Out *txd3;
} IfxEth_MiiPins;



typedef struct
{
    IfxEth_Crsdv_In *crsDiv;
    IfxEth_Refclk_In *refClk;
    IfxEth_Rxd_In *rxd0;
    IfxEth_Rxd_In *rxd1;
    IfxEth_Mdc_Out *mdc;
    IfxEth_Mdio_InOut *mdio;
    IfxEth_Txd_Out *txd0;
    IfxEth_Txd_Out *txd1;
    IfxEth_Txen_Out *txEn;
} IfxEth_RmiiPins;





typedef union
{
    IfxEth_RxDescr items[8];
    uint32 U[8][4];
} IfxEth_RxDescrList;

typedef union
{
    IfxEth_TxDescr items[16];
    uint32 U[16][4];
} IfxEth_TxDescrList;







typedef struct
{
    uint8 macAddress[6];
    uint32 (*phyInit)(void);
    boolean (*phyLink)(void);
    IfxEth_PhyInterfaceMode phyInterfaceMode;
    const IfxEth_RmiiPins *rmiiPins;
    const IfxEth_MiiPins *miiPins;
    Ifx_Priority isrPriority;
    IfxSrc_Tos isrProvider;
    Ifx_ETH *ethSfr;
    IfxEth_RxDescrList *rxDescr;
    IfxEth_TxDescrList *txDescr;
} IfxEth_Config;







typedef struct
{
    Ifx_ETH_STATUS status;
    uint32 rxCount;
    uint32 txCount;
    uint32 error;
    sint32 isrRxCount;
    sint32 isrTxCount;
    sint32 txDiff;
    sint32 rxDiff;
    sint32 isrCount;
    IfxEth_Config config;
    IfxEth_RxDescrList *rxDescr;
    IfxEth_TxDescrList *txDescr;
    IfxEth_RxDescr *pRxDescr;
    IfxEth_TxDescr *pTxDescr;
    Ifx_ETH *ethSfr;
} IfxEth;



typedef struct
{
    uint32 PCE : 1;
    uint32 CE : 1;
    uint32 DBE : 1;
    uint32 RE : 1;
    uint32 RWT : 1;
    uint32 FT : 1;
    uint32 LC : 1;
    uint32 IPC : 1;
    uint32 LS : 1;
    uint32 FS : 1;
    uint32 VLAN : 1;
    uint32 OE : 1;
    uint32 LE : 1;
    uint32 SAF : 1;
    uint32 DE : 1;
    uint32 ES : 1;
    uint32 FL : 14;
    uint32 AFM : 1;
    uint32 OWN : 1;
} IfxEth_RxDescr0_Bits;



typedef struct
{
    uint32 RBS1 : 11;
    uint32 RBS2 : 11;
    uint32 resv : 2;
    uint32 RCH : 1;
    uint32 RER : 1;
    uint32 resv2 : 5;
    uint32 DIC : 1;
} IfxEth_RxDescr1_Bits;



typedef struct
{
    uint32 DB : 1;
    uint32 UF : 1;
    uint32 ED : 1;
    uint32 CC : 4;
    uint32 VLAN : 1;
    uint32 EC : 1;
    uint32 LC : 1;
    uint32 NC : 1;
    uint32 LOC : 1;
    uint32 PCE : 1;
    uint32 FF : 1;
    uint32 JT : 1;
    uint32 ES : 1;
    uint32 IHE : 1;
    uint32 TTSS : 1;
    uint32 resv : 13;
    uint32 OWN : 1;
} IfxEth_TxDescr0_Bits;



typedef struct
{
    uint32 TBS1 : 11;
    uint32 TBS2 : 11;
    uint32 TTSE : 1;
    uint32 DP : 1;
    uint32 TCH : 1;
    uint32 TER : 1;
    uint32 DC : 1;
    uint32 CIC : 2;
    uint32 FS : 1;
    uint32 LS : 1;
    uint32 IC : 1;
} IfxEth_TxDescr1_Bits;
# 511 "./0_Src/4_McHal/Tricore/Eth/Std/IfxEth.h"
static inline __attribute__ ((always_inline)) void IfxEth_RxDescr_setBuffer(IfxEth_RxDescr *descr, void *buffer);





static inline __attribute__ ((always_inline)) IfxEth_TxDescr *IfxEth_TxDescr_getNext(IfxEth_TxDescr *descr);




static inline __attribute__ ((always_inline)) boolean IfxEth_TxDescr_isAvailable(IfxEth_TxDescr *descr);






static inline __attribute__ ((always_inline)) void IfxEth_TxDescr_setBuffer(IfxEth_TxDescr *descr, void *buffer);





static inline __attribute__ ((always_inline)) void IfxEth_applySoftwareReset(IfxEth *eth);





static inline __attribute__ ((always_inline)) void IfxEth_clearRxInterrupt(IfxEth *eth);





static inline __attribute__ ((always_inline)) void IfxEth_clearTxInterrupt(IfxEth *eth);





static inline __attribute__ ((always_inline)) boolean IfxEth_isSoftwareResetDone(IfxEth *eth);






static inline __attribute__ ((always_inline)) void IfxEth_setLoopbackMode(IfxEth *eth, boolean loopbackMode);






static inline __attribute__ ((always_inline)) void IfxEth_setPhyInterfaceMode(IfxEth *eth, IfxEth_PhyInterfaceMode mode);






static inline __attribute__ ((always_inline)) void IfxEth_setReceiveDescriptorAddress(Ifx_ETH *eth, void *address);






static inline __attribute__ ((always_inline)) void IfxEth_setTransmitDescriptorAddress(Ifx_ETH *eth, void *address);






static inline __attribute__ ((always_inline)) void *IfxEth_waitTransmitBuffer(IfxEth *eth);
# 598 "./0_Src/4_McHal/Tricore/Eth/Std/IfxEth.h"
extern void IfxEth_freeReceiveBuffer(IfxEth *eth);
# 607 "./0_Src/4_McHal/Tricore/Eth/Std/IfxEth.h"
extern void IfxEth_sendTransmitBuffer(IfxEth *eth, uint16 len);






extern void IfxEth_setMacAddress(IfxEth *eth, const uint8 *macAddress);





extern void IfxEth_startReceiver(IfxEth *eth);
# 630 "./0_Src/4_McHal/Tricore/Eth/Std/IfxEth.h"
extern void IfxEth_writeHeader(IfxEth *eth, uint8 *txBuffer, uint8 *destinationAddress, uint8 *sourceAddress, uint32 packetSize);
# 645 "./0_Src/4_McHal/Tricore/Eth/Std/IfxEth.h"
static inline __attribute__ ((always_inline)) IfxEth_RxDescr *IfxEth_RxDescr_getNext(IfxEth_RxDescr *descr);





static inline __attribute__ ((always_inline)) void IfxEth_RxDescr_release(IfxEth_RxDescr *descr);





static inline __attribute__ ((always_inline)) void IfxEth_TxDescr_release(IfxEth_TxDescr *descr);




static inline __attribute__ ((always_inline)) IfxEth_RxDescr *IfxEth_getActualRxDescriptor(IfxEth *eth);



static inline __attribute__ ((always_inline)) uint32 IfxEth_getActualRxIndex(IfxEth *eth);




static inline __attribute__ ((always_inline)) IfxEth_TxDescr *IfxEth_getActualTxDescriptor(IfxEth *eth);




static inline __attribute__ ((always_inline)) IfxEth_RxDescr *IfxEth_getBaseRxDescriptor(IfxEth *eth);




static inline __attribute__ ((always_inline)) IfxEth_TxDescr *IfxEth_getBaseTxDescriptor(IfxEth *eth);





static inline __attribute__ ((always_inline)) boolean IfxEth_getLoopbackMode(IfxEth *eth);




static inline __attribute__ ((always_inline)) void *IfxEth_getMacAddressPointer(IfxEth *eth);





static inline __attribute__ ((always_inline)) IfxEth_ReceiveProcessState IfxEth_getReceiveProcessState(IfxEth *eth);





static inline __attribute__ ((always_inline)) uint16 IfxEth_getRxDataLength(IfxEth *eth);





static inline __attribute__ ((always_inline)) IfxEth_TransmitProcessState IfxEth_getTransmitProcessState(IfxEth *eth);






static inline __attribute__ ((always_inline)) boolean IfxEth_isLinkActive(IfxEth *eth);




static inline __attribute__ ((always_inline)) boolean IfxEth_isRxChecksumError(IfxEth *eth);






static inline __attribute__ ((always_inline)) boolean IfxEth_isRxDataAvailable(IfxEth *eth);





static inline __attribute__ ((always_inline)) boolean IfxEth_isRxInterrupt(IfxEth *eth);





static inline __attribute__ ((always_inline)) boolean IfxEth_isTxInterrupt(IfxEth *eth);





static inline __attribute__ ((always_inline)) void IfxEth_readAllFlags(IfxEth *eth);





static inline __attribute__ ((always_inline)) void IfxEth_shuffleRxDescriptor(IfxEth *eth);





static inline __attribute__ ((always_inline)) void IfxEth_shuffleTxDescriptor(IfxEth *eth);
# 768 "./0_Src/4_McHal/Tricore/Eth/Std/IfxEth.h"
extern void IfxEth_enableModule(void);







extern void *IfxEth_getReceiveBuffer(IfxEth *eth);






extern void *IfxEth_getTransmitBuffer(IfxEth *eth);






extern void IfxEth_readMacAddress(IfxEth *eth, uint8 *macAddress);






extern void IfxEth_setAndSendTransmitBuffer(IfxEth *eth, void *buffer, uint16 len);






extern void IfxEth_setupChecksumEngine(IfxEth *eth, IfxEth_ChecksumMode mode);





extern void IfxEth_startTransmitter(IfxEth *eth);





extern void IfxEth_stopTransmitter(IfxEth *eth);





extern void IfxEth_wakeupReceiver(IfxEth *eth);





extern void IfxEth_wakeupTransmitter(IfxEth *eth);
# 846 "./0_Src/4_McHal/Tricore/Eth/Std/IfxEth.h"
static inline __attribute__ ((always_inline)) void IfxEth_TxDescr_setup(IfxEth_TxDescr *descr, uint16 length, boolean firstSegment, boolean lastSegment);
# 857 "./0_Src/4_McHal/Tricore/Eth/Std/IfxEth.h"
extern void IfxEth_init(IfxEth *eth, const IfxEth_Config *config);






extern void IfxEth_initConfig(IfxEth_Config *config, Ifx_ETH *ethSfr);





extern void IfxEth_initReceiveDescriptors(IfxEth *eth);





extern void IfxEth_initTransmitDescriptors(IfxEth *eth);






extern void IfxEth_setupMiiInputPins(IfxEth *eth, const IfxEth_MiiPins *miiPins);






extern void IfxEth_setupMiiOutputPins(IfxEth *eth, const IfxEth_MiiPins *miiPins);






extern void IfxEth_setupRmiiInputPins(IfxEth *eth, const IfxEth_RmiiPins *rmiiPins);






extern void IfxEth_setupRmiiOutputPins(IfxEth *eth, const IfxEth_RmiiPins *rmiiPins);
# 914 "./0_Src/4_McHal/Tricore/Eth/Std/IfxEth.h"
extern uint8 IfxEth_rxBuffer[8][1536];

extern IfxEth_RxDescrList IfxEth_rxDescr;



extern uint8 IfxEth_txBuffer[16][1536];

extern IfxEth_TxDescrList IfxEth_txDescr;





static inline __attribute__ ((always_inline)) IfxEth_RxDescr *IfxEth_RxDescr_getNext(IfxEth_RxDescr *descr)
{
    return (IfxEth_RxDescr *)(descr->RDES3.U);
}


static inline __attribute__ ((always_inline)) void IfxEth_RxDescr_release(IfxEth_RxDescr *descr)
{
    descr->RDES0.A.OWN = 1U;
}


static inline __attribute__ ((always_inline)) void IfxEth_RxDescr_setBuffer(IfxEth_RxDescr *descr, void *buffer)
{
    descr->RDES2.U = (uint32)((((((unsigned)(buffer) & 0xF0000000) == 0xD0000000) ? ((((unsigned)(buffer) & 0x000fffff) | 0x70000000) - ((IfxCpu_getCoreId()) * 0x10000000)) : (unsigned)(buffer))));
}


static inline __attribute__ ((always_inline)) IfxEth_TxDescr *IfxEth_TxDescr_getNext(IfxEth_TxDescr *descr)
{
    return (IfxEth_TxDescr *)(descr->TDES3.U);
}


static inline __attribute__ ((always_inline)) boolean IfxEth_TxDescr_isAvailable(IfxEth_TxDescr *descr)
{
    return (descr->TDES0.A.OWN == 0) ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxEth_TxDescr_release(IfxEth_TxDescr *descr)
{
    descr->TDES0.A.OWN = 1U;
}


static inline __attribute__ ((always_inline)) void IfxEth_TxDescr_setBuffer(IfxEth_TxDescr *descr, void *buffer)
{
    descr->TDES2.U = (uint32)((((((unsigned)(buffer) & 0xF0000000) == 0xD0000000) ? ((((unsigned)(buffer) & 0x000fffff) | 0x70000000) - ((IfxCpu_getCoreId()) * 0x10000000)) : (unsigned)(buffer))));
}


static inline __attribute__ ((always_inline)) void IfxEth_TxDescr_setup(IfxEth_TxDescr *descr, uint16 length, boolean firstSegment, boolean lastSegment)
{
    IfxEth_TxDescr0 tdes0;

    tdes0.U = descr->TDES0.U;
    tdes0.A.FS = firstSegment;
    tdes0.A.LS = lastSegment;
    descr->TDES0.U = tdes0.U;
    descr->TDES1.U = length;
}


static inline __attribute__ ((always_inline)) void IfxEth_applySoftwareReset(IfxEth *eth)
{
    (void)eth;
    (*(volatile Ifx_ETH_BUS_MODE *)0xF001F000u).B.SWR = 1;
}


static inline __attribute__ ((always_inline)) void IfxEth_clearRxInterrupt(IfxEth *eth)
{
    (void)eth;
    ((*(Ifx_ETH *)0xF001D000u)).STATUS.U = (uint32)((1 << (16)) | (1 << (6)));
}


static inline __attribute__ ((always_inline)) void IfxEth_clearTxInterrupt(IfxEth *eth)
{
    (void)eth;
    ((*(Ifx_ETH *)0xF001D000u)).STATUS.U = (uint32)((1 << (16)) | (1 << (0)));
}


static inline __attribute__ ((always_inline)) IfxEth_RxDescr *IfxEth_getActualRxDescriptor(IfxEth *eth)
{
    return eth->pRxDescr;
}


static inline __attribute__ ((always_inline)) uint32 IfxEth_getActualRxIndex(IfxEth *eth)
{
    uint32 offset = (uint32)eth->pRxDescr - (uint32)IfxEth_getBaseRxDescriptor(eth);
    return offset / sizeof(IfxEth_RxDescr);
}


static inline __attribute__ ((always_inline)) IfxEth_TxDescr *IfxEth_getActualTxDescriptor(IfxEth *eth)
{
    return eth->pTxDescr;
}


static inline __attribute__ ((always_inline)) IfxEth_RxDescr *IfxEth_getBaseRxDescriptor(IfxEth *eth)
{
    return eth->rxDescr->items;
}


static inline __attribute__ ((always_inline)) IfxEth_TxDescr *IfxEth_getBaseTxDescriptor(IfxEth *eth)
{
    return eth->txDescr->items;
}


static inline __attribute__ ((always_inline)) boolean IfxEth_getLoopbackMode(IfxEth *eth)
{
    (void)eth;
    return ((*(volatile Ifx_ETH_MAC_CONFIGURATION *)0xF001E000u).B.LM != 0) ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void *IfxEth_getMacAddressPointer(IfxEth *eth)
{
    return (void *)eth->config.macAddress;
}


static inline __attribute__ ((always_inline)) IfxEth_ReceiveProcessState IfxEth_getReceiveProcessState(IfxEth *eth)
{
    (void)eth;
    return (IfxEth_ReceiveProcessState)((*(Ifx_ETH *)0xF001D000u)).STATUS.B.RS;
}


static inline __attribute__ ((always_inline)) uint16 IfxEth_getRxDataLength(IfxEth *eth)
{
    uint16 length = 0;

    if (IfxEth_isRxDataAvailable(eth) != 0)
    {
        length = (uint16)IfxEth_getActualRxDescriptor(eth)->RDES0.A.FL;
    }

    return length;
}


static inline __attribute__ ((always_inline)) IfxEth_TransmitProcessState IfxEth_getTransmitProcessState(IfxEth *eth)
{
    (void)eth;
    return (IfxEth_TransmitProcessState)((*(Ifx_ETH *)0xF001D000u)).STATUS.B.TS;
}


static inline __attribute__ ((always_inline)) boolean IfxEth_isLinkActive(IfxEth *eth)
{
    return eth->config.phyLink() != 0;
}


static inline __attribute__ ((always_inline)) boolean IfxEth_isRxChecksumError(IfxEth *eth)
{
    IfxEth_RxDescr *descr = IfxEth_getActualRxDescriptor(eth);
    boolean error = (descr->RDES0.A.IPC != 0);
    descr->RDES0.A.IPC = 0;

    return error;
}


static inline __attribute__ ((always_inline)) boolean IfxEth_isRxDataAvailable(IfxEth *eth)
{

    return IfxEth_getActualRxDescriptor(eth)->RDES0.A.OWN == 0;
}


static inline __attribute__ ((always_inline)) boolean IfxEth_isRxInterrupt(IfxEth *eth)
{
    (void)eth;

    return ((*(Ifx_ETH *)0xF001D000u)).STATUS.B.RI != 0;
}


static inline __attribute__ ((always_inline)) boolean IfxEth_isSoftwareResetDone(IfxEth *eth)
{
    (void)eth;
    return (*(volatile Ifx_ETH_BUS_MODE *)0xF001F000u).B.SWR == 0 ? 1 : 0;
}


static inline __attribute__ ((always_inline)) boolean IfxEth_isTxInterrupt(IfxEth *eth)
{
    (void)eth;

    return ((*(Ifx_ETH *)0xF001D000u)).STATUS.B.TI != 0;
}


static inline __attribute__ ((always_inline)) void IfxEth_readAllFlags(IfxEth *eth)
{
    eth->status.U = (*(volatile Ifx_ETH_STATUS *)0xF001F014u).U;
}


static inline __attribute__ ((always_inline)) void IfxEth_setLoopbackMode(IfxEth *eth, boolean loopbackMode)
{
    (void)eth;
    (*(volatile Ifx_ETH_MAC_CONFIGURATION *)0xF001E000u).B.LM = loopbackMode ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxEth_setPhyInterfaceMode(IfxEth *eth, IfxEth_PhyInterfaceMode mode)
{
    (void)eth;
    (*(volatile Ifx_ETH_GPCTL *)0xF001D008u).B.EPR = mode;
}


static inline __attribute__ ((always_inline)) void IfxEth_setReceiveDescriptorAddress(Ifx_ETH *eth, void *address)
{
    eth->RECEIVE_DESCRIPTOR_LIST_ADDRESS.U = (uint32)address;
}


static inline __attribute__ ((always_inline)) void IfxEth_setTransmitDescriptorAddress(Ifx_ETH *eth, void *address)
{
    eth->TRANSMIT_DESCRIPTOR_LIST_ADDRESS.U = (uint32)address;
}


static inline __attribute__ ((always_inline)) void IfxEth_shuffleRxDescriptor(IfxEth *eth)
{
    eth->pRxDescr = IfxEth_RxDescr_getNext(eth->pRxDescr);
}


static inline __attribute__ ((always_inline)) void IfxEth_shuffleTxDescriptor(IfxEth *eth)
{
    eth->pTxDescr = IfxEth_TxDescr_getNext(eth->pTxDescr);
}


static inline __attribute__ ((always_inline)) void *IfxEth_waitTransmitBuffer(IfxEth *eth)
{
    void *tx;

    do
    {
        tx = IfxEth_getTransmitBuffer(eth);
    } while (tx == ((void *)0));

    return tx;
}
# 38 "./0_Src/4_McHal/Tricore/Eth/Phy_Pef7071/IfxEth_Phy_Pef7071.h" 2
# 48 "./0_Src/4_McHal/Tricore/Eth/Phy_Pef7071/IfxEth_Phy_Pef7071.h"
extern uint32 IfxEth_Phy_Pef7071_init(void);




extern boolean IfxEth_Phy_Pef7071_link(void);




extern void IfxEth_Phy_Pef7071_read_mdio_reg(uint32 layeraddr, uint32 regaddr, uint32 *pdata);




extern void IfxEth_Phy_Pef7071_write_mdio_reg(uint32 layeraddr, uint32 regaddr, uint32 data);







extern uint32 IfxEth_Phy_Pef7071_iPhyInitDone;
# 28 "./0_Src/0_AppSw/Tricore/Device_Driver/Driver_Communication/Peripherals_ETH.h" 2



# 1 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/udp.h" 1
# 54 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/udp.h"

struct udp_hdr {
  u16_t src;
  u16_t dest;
  u16_t len;
  u16_t chksum;
} __attribute__ ((__packed__));

# 71 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/udp.h"
struct udp_pcb;
# 87 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/udp.h"
typedef void (*udp_recv_fn)(void *arg, struct udp_pcb *pcb, struct pbuf *p,
    ip_addr_t *addr, u16_t port);


struct udp_pcb {

  ip_addr_t local_ip; ip_addr_t remote_ip; u8_t so_options; u8_t tos; u8_t ttl ;



  struct udp_pcb *next;

  u8_t flags;

  u16_t local_port, remote_port;
# 114 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/udp.h"
  udp_recv_fn recv;

  void *recv_arg;
};

extern struct udp_pcb *udp_pcbs;



struct udp_pcb * udp_new (void);
void udp_remove (struct udp_pcb *pcb);
err_t udp_bind (struct udp_pcb *pcb, ip_addr_t *ipaddr,
                                 u16_t port);
err_t udp_connect (struct udp_pcb *pcb, ip_addr_t *ipaddr,
                                 u16_t port);
void udp_disconnect (struct udp_pcb *pcb);
void udp_recv (struct udp_pcb *pcb, udp_recv_fn recv,
                                 void *recv_arg);
err_t udp_sendto_if (struct udp_pcb *pcb, struct pbuf *p,
                                 const ip_addr_t *dst_ip, u16_t dst_port,
                                 struct netif *netif);
err_t udp_sendto (struct udp_pcb *pcb, struct pbuf *p,
                                 ip_addr_t *dst_ip, u16_t dst_port);
err_t udp_send (struct udp_pcb *pcb, struct pbuf *p);


err_t udp_sendto_if_chksum(struct udp_pcb *pcb, struct pbuf *p,
                                 ip_addr_t *dst_ip, u16_t dst_port,
                                 struct netif *netif, u8_t have_chksum,
                                 u16_t chksum);
err_t udp_sendto_chksum(struct udp_pcb *pcb, struct pbuf *p,
                                 ip_addr_t *dst_ip, u16_t dst_port,
                                 u8_t have_chksum, u16_t chksum);
err_t udp_send_chksum(struct udp_pcb *pcb, struct pbuf *p,
                                 u8_t have_chksum, u16_t chksum);






void udp_input (struct pbuf *p, struct netif *inp);

void udp_init (void);
# 32 "./0_Src/0_AppSw/Tricore/Device_Driver/Driver_Communication/Peripherals_ETH.h" 2
# 44 "./0_Src/0_AppSw/Tricore/Device_Driver/Driver_Communication/Peripherals_ETH.h"
static Ifx_P * const portLED = (Ifx_P *)&((*(Ifx_P *)0xF003D300u));
extern int tem;
# 57 "./0_Src/0_AppSw/Tricore/Device_Driver/Driver_Communication/Peripherals_ETH.h"
typedef struct
{
    struct
    {
        IfxEth eth;
    }drivers;
} App_Eth;





extern App_Eth g_Eth;
extern uint8 messageType;
extern uint8* pRxBuf;





void setPort_ETH(void);
void setFrame_ETH(uint8 *buf);
void EthISR(void);
extern void setMAC_ETH(uint8* mac);
extern void printf_ETH(uint8 *SRC_MAC, uint8 *DES_MAC, uint8* data, int size);


void extract_desIP_address(struct udp_pcb *upcb, struct pbuf *p);
void extract_desPN_address(struct udp_pcb *upcb, struct pbuf *p);



void Set_desIPaddr(ip_addr_t *dest_ip, uint8 IPaddr_1, uint8 IPaddr_2, uint8 IPaddr_3, uint8 IPaddr_4);

void Converting_UDP_TxPayload(struct pbuf *p);
void UDP_Send_to(ip_addr_t *dest_ip, u16_t dest_port, uint8 *data);
# 256 "./0_Src/0_AppSw/Tricore/Device_Driver/Driver_Communication/Peripherals_ETH.h"
typedef enum _eth_checksum{
    correct_checksum = 0,
    wrong_checksum
} eth_checksum;

typedef enum _SessionMode{
    SOMEIP = 0,
    SOMEIP_SD,
    DoIP
} SessionMode;

typedef struct _pseudo_header {
    uint8 srcIP[4];
    uint8 dstIP[4];
    uint8 Reserved;
    uint8 Protocol;
    uint8 TotalLen[2];
} pHead;

typedef struct _ethFrameStr{





    uint8 dstMAC[6];
    uint8 srcMAC[6];
# 293 "./0_Src/0_AppSw/Tricore/Device_Driver/Driver_Communication/Peripherals_ETH.h"
    uint8 ethType[2];





    uint8 IHL : 4;
    uint8 IPV : 4;
    uint8 ECN : 2;
    uint8 DSCP : 6;

    uint8 TotalLen[2];
    uint8 GroupID[2];
    uint8 fragInfo[2];
    uint8 TTL;
    uint8 Protocol;
    uint8 ICS[2];

    uint8 srcIP[4];
    uint8 dstIP[4];
# 327 "./0_Src/0_AppSw/Tricore/Device_Driver/Driver_Communication/Peripherals_ETH.h"
    uint8 srcPN[2];
    uint8 dstPN[2];
    uint8 SeqNum[4];
    uint8 AckNum[4];

    uint8 Reserved : 4;
    uint8 Offset : 4;


    uint8 FIN : 1;
    uint8 SYN : 1;
    uint8 RST : 1;
    uint8 PSH : 1;
    uint8 ACK : 1;
    uint8 URG : 1;
    uint8 ECE : 1;
    uint8 CWR : 1;

    uint8 WindowSize[2];
    uint8 TCS[2];

    uint8 UrgentPtr[2];
# 427 "./0_Src/0_AppSw/Tricore/Device_Driver/Driver_Communication/Peripherals_ETH.h"
    uint8 payload[1500 - 20 - 20];

} ethFrameStr;

typedef struct _ethFrameStr_ARP{





    uint8 dstMAC[6];
    uint8 srcMAC[6];
    uint8 ethType[2];





    uint8 hwType[2];
    uint8 ptType[2];
    uint8 hwSize;
    uint8 ptSize;

    uint8 arp_Operation[2];

    uint8 senderMAC[6];
    uint8 senderIP[4];
    uint8 targetMAC[6];
    uint8 targetIP[4];

} ethFrameStr_ARP;

typedef struct _ethFrameStr_SOMEIP{





    uint8 dstMAC[6];
    uint8 srcMAC[6];
# 477 "./0_Src/0_AppSw/Tricore/Device_Driver/Driver_Communication/Peripherals_ETH.h"
    uint8 ethType[2];





    uint8 IHL : 4;
    uint8 IPV : 4;
    uint8 ECN : 2;
    uint8 DSCP : 6;

    uint8 TotalLen[2];
    uint8 GroupID[2];
    uint8 fragInfo[2];
    uint8 TTL;
    uint8 Protocol;
    uint8 ICS[2];

    uint8 srcIP[4];
    uint8 dstIP[4];





    uint8 srcPN[2];
    uint8 dstPN[2];

    uint8 UDPLen[2];
    uint8 UCS[2];





    uint8 serviceID[2];
    uint8 methodID[2];

    uint8 length[4];

    uint8 clientPref;
    uint8 clientID;
    uint8 sessionID[2];

    uint8 someipVer;
    uint8 ifaceVer;
    uint8 msgType;
    uint8 returncode;





    uint8 payload[1500 - 20 - 8 - 16];

} ethFrameStr_SOMEIP;

typedef struct _ethFrameStr_SD{





    uint8 dstMAC[6];
    uint8 srcMAC[6];
# 552 "./0_Src/0_AppSw/Tricore/Device_Driver/Driver_Communication/Peripherals_ETH.h"
    uint8 ethType[2];





    uint8 IHL : 4;
    uint8 IPV : 4;
    uint8 ECN : 2;
    uint8 DSCP : 6;

    uint8 TotalLen[2];
    uint8 GroupID[2];
    uint8 fragInfo[2];
    uint8 TTL;
    uint8 Protocol;
    uint8 ICS[2];

    uint8 srcIP[4];
    uint8 dstIP[4];





    uint8 srcPN[2];
    uint8 dstPN[2];

    uint8 UDPLen[2];
    uint8 UCS[2];





    uint8 serviceID[2];
    uint8 methodID[2];

    uint8 length[4];

    uint8 clientPref;
    uint8 clientID;
    uint8 sessionID[2];

    uint8 someipVer;
    uint8 ifaceVer;
    uint8 msgType;
    uint8 returncode;






    uint8 : 6;
    uint8 UnicastFlag : 1;
    uint8 RebootFlag : 1;

    uint8 SDReserved[3];
    uint8 EntryArrayLength[4];

    uint8 payload[1500 - 20 - 8 - 16 - 8];

} ethFrameStr_SD;
# 58 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp.c" 2
# 75 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp.c"
const char * const tcp_state_str[] = {
  "CLOSED",
  "LISTEN",
  "SYN_SENT",
  "SYN_RCVD",
  "ESTABLISHED",
  "FIN_WAIT_1",
  "FIN_WAIT_2",
  "CLOSE_WAIT",
  "CLOSING",
  "LAST_ACK",
  "TIME_WAIT"
};


static u16_t tcp_port = 0xc000;


u32_t tcp_ticks;
const u8_t tcp_backoff[13] =
    { 1, 2, 3, 4, 5, 6, 7, 7, 7, 7, 7, 7, 7};

const u8_t tcp_persist_backoff[7] = { 3, 6, 12, 24, 48, 96, 120 };




struct tcp_pcb *tcp_bound_pcbs;

union tcp_listen_pcbs_t tcp_listen_pcbs;


struct tcp_pcb *tcp_active_pcbs;

struct tcp_pcb *tcp_tw_pcbs;




struct tcp_pcb ** const tcp_pcb_lists[] = {&tcp_listen_pcbs.pcbs, &tcp_bound_pcbs,
  &tcp_active_pcbs, &tcp_tw_pcbs};


struct tcp_pcb *tcp_tmp_pcb;

u8_t tcp_active_pcbs_changed;


static u8_t tcp_timer;
static u8_t tcp_timer_ctr;
static u16_t tcp_new_port(void);




void
tcp_init(void)
{



}




void
tcp_tmr(void)
{

  tcp_fasttmr();

  if (++tcp_timer & 1) {


    tcp_slowtmr();
  }
}
# 170 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp.c"
static err_t
tcp_close_shutdown(struct tcp_pcb *pcb, u8_t rst_on_unacked_data)
{
  err_t err;

  if (rst_on_unacked_data && ((pcb->state == ESTABLISHED) || (pcb->state == CLOSE_WAIT))) {
    if ((pcb->refused_data != ((void *)0)) || (pcb->rcv_wnd != (4 * (1500 - 40)))) {


      do { if(!(pcb->flags & ((u8_t)0x10U))) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "pcb->flags & TF_RXCLOSED", 179, "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp.c"); ; } while(0);



      tcp_rst(pcb->snd_nxt, pcb->rcv_nxt, &pcb->local_ip, &pcb->remote_ip,
        pcb->local_port, pcb->remote_port);

      tcp_pcb_purge(pcb);
      do { do { if(*(&tcp_active_pcbs) == (pcb)) { (*(&tcp_active_pcbs)) = (*&tcp_active_pcbs)->next; } else { for(tcp_tmp_pcb = *&tcp_active_pcbs; tcp_tmp_pcb != ((void *)0); tcp_tmp_pcb = tcp_tmp_pcb->next) { if(tcp_tmp_pcb->next == (pcb)) { tcp_tmp_pcb->next = (pcb)->next; break; } } } (pcb)->next = ((void *)0); } while(0); tcp_active_pcbs_changed = 1; } while (0);
      if (pcb->state == ESTABLISHED) {

        pcb->state = TIME_WAIT;
        do { (pcb)->next = *&tcp_tw_pcbs; *(&tcp_tw_pcbs) = (pcb); tcp_timer_needed(); } while (0);
      } else {

        memp_free(MEMP_TCP_PCB, pcb);
      }
      return 0;
    }
  }

  switch (pcb->state) {
  case CLOSED:







    err = 0;
    if (pcb->local_port != 0) {
      do { if(*(&tcp_bound_pcbs) == (pcb)) { (*(&tcp_bound_pcbs)) = (*&tcp_bound_pcbs)->next; } else { for(tcp_tmp_pcb = *&tcp_bound_pcbs; tcp_tmp_pcb != ((void *)0); tcp_tmp_pcb = tcp_tmp_pcb->next) { if(tcp_tmp_pcb->next == (pcb)) { tcp_tmp_pcb->next = (pcb)->next; break; } } } (pcb)->next = ((void *)0); } while(0);
    }
    memp_free(MEMP_TCP_PCB, pcb);
    pcb = ((void *)0);
    break;
  case LISTEN:
    err = 0;
    tcp_pcb_remove(&tcp_listen_pcbs.pcbs, pcb);
    memp_free(MEMP_TCP_PCB_LISTEN, pcb);
    pcb = ((void *)0);
    break;
  case SYN_SENT:
    err = 0;
    do { tcp_pcb_remove(&tcp_active_pcbs, pcb); tcp_active_pcbs_changed = 1; } while (0);
    memp_free(MEMP_TCP_PCB, pcb);
    pcb = ((void *)0);
    ;
    break;
  case SYN_RCVD:
    err = tcp_send_fin(pcb);
    if (err == 0) {
      ;
      pcb->state = FIN_WAIT_1;
    }
    break;
  case ESTABLISHED:
    err = tcp_send_fin(pcb);
    if (err == 0) {
      ;
      pcb->state = FIN_WAIT_1;
    }
    break;
  case CLOSE_WAIT:
    err = tcp_send_fin(pcb);
    if (err == 0) {
      ;
      pcb->state = LAST_ACK;
    }
    break;
  default:

    err = 0;
    pcb = ((void *)0);
    break;
  }

  if (pcb != ((void *)0) && err == 0) {
# 266 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp.c"
    tcp_output(pcb);
  }
  return err;
}
# 285 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp.c"
err_t
tcp_close(struct tcp_pcb *pcb)
{





  if (pcb->state != LISTEN) {

    pcb->flags |= ((u8_t)0x10U);
  }

  return tcp_close_shutdown(pcb, 1);
}
# 313 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp.c"
err_t
tcp_shutdown(struct tcp_pcb *pcb, int shut_rx, int shut_tx)
{
  if (pcb->state == LISTEN) {
    return -13;
  }
  if (shut_rx) {

    pcb->flags |= ((u8_t)0x10U);
    if (shut_tx) {

      return tcp_close_shutdown(pcb, 1);
    }

    if (pcb->refused_data != ((void *)0)) {
      pbuf_free(pcb->refused_data);
      pcb->refused_data = ((void *)0);
    }
  }
  if (shut_tx) {


    switch (pcb->state) {
    case SYN_RCVD:
    case ESTABLISHED:
    case CLOSE_WAIT:
      return tcp_close_shutdown(pcb, shut_rx);
    default:


      return -13;
    }
  }
  return 0;
}
# 357 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp.c"
void
tcp_abandon(struct tcp_pcb *pcb, int reset)
{
  u32_t seqno, ackno;

  tcp_err_fn errf;

  void *errf_arg;


  do { if(!(pcb->state != LISTEN)) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "don't call tcp_abort/tcp_abandon for listen-pcbs",
 368
# 367 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp.c"
  ,
 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp.c"
# 367 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp.c"
  ); ; } while(0)
                         ;



  if (pcb->state == TIME_WAIT) {
    tcp_pcb_remove(&tcp_tw_pcbs, pcb);
    memp_free(MEMP_TCP_PCB, pcb);
  } else {
    seqno = pcb->snd_nxt;
    ackno = pcb->rcv_nxt;

    errf = pcb->errf;

    errf_arg = pcb->callback_arg;
    do { tcp_pcb_remove(&tcp_active_pcbs, pcb); tcp_active_pcbs_changed = 1; } while (0);
    if (pcb->unacked != ((void *)0)) {
      tcp_segs_free(pcb->unacked);
    }
    if (pcb->unsent != ((void *)0)) {
      tcp_segs_free(pcb->unsent);
    }

    if (pcb->ooseq != ((void *)0)) {
      tcp_segs_free(pcb->ooseq);
    }

    if (reset) {
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("tcp_abandon: sending RST\n"); if ((0x00U) & 0x08U) { while(1); } } } while(0);
      tcp_rst(seqno, ackno, &pcb->local_ip, &pcb->remote_ip, pcb->local_port, pcb->remote_port);
    }
    memp_free(MEMP_TCP_PCB, pcb);
    do { if((errf) != ((void *)0)) (errf)((errf_arg),(-10)); } while (0);
  }
}
# 413 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp.c"
void
tcp_abort(struct tcp_pcb *pcb)
{
  tcp_abandon(pcb, 1);
}
# 433 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp.c"
err_t
tcp_bind(struct tcp_pcb *pcb, ip_addr_t *ipaddr, u16_t port)
{
  int i;
  int max_pcb_list = 4;
  struct tcp_pcb *cpcb;

  do { if (!(pcb->state == CLOSED)) { Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "tcp_bind: can only bind in state CLOSED", 440, "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp.c"); ; return -6;}} while(0);
# 453 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp.c"
  if (port == 0) {
    port = tcp_new_port();
    if (port == 0) {
      return -2;
    }
  }


  for (i = 0; i < max_pcb_list; i++) {
    for(cpcb = *tcp_pcb_lists[i]; cpcb != ((void *)0); cpcb = cpcb->next) {
      if (cpcb->local_port == port) {







        {
          if (((&(cpcb->local_ip)) == ((void *)0) || (&(cpcb->local_ip))->addr == ((u32_t)0x00000000UL)) ||
              ((ipaddr) == ((void *)0) || (ipaddr)->addr == ((u32_t)0x00000000UL)) ||
              ((&(cpcb->local_ip))->addr == (ipaddr)->addr)) {
            return -8;
          }
        }
      }
    }
  }

  if (!((ipaddr) == ((void *)0) || (ipaddr)->addr == ((u32_t)0x00000000UL))) {
    pcb->local_ip = *ipaddr;
  }
  pcb->local_port = port;
  do { (pcb)->next = *&tcp_bound_pcbs; *(&tcp_bound_pcbs) = (pcb); tcp_timer_needed(); } while (0);
  do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("tcp_bind: bind to port %""u""\n", port); if ((0x00U) & 0x08U) { while(1); } } } while(0);
  return 0;
}




static err_t
tcp_accept_null(void *arg, struct tcp_pcb *pcb, err_t err)
{
  (void)arg;
  (void)pcb;
  (void)err;

  return -10;
}
# 519 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp.c"
struct tcp_pcb *
tcp_listen_with_backlog(struct tcp_pcb *pcb, u8_t backlog)
{
  struct tcp_pcb_listen *lpcb;

  (void)backlog;
  do { if (!(pcb->state == CLOSED)) { Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "tcp_listen: pcb already connected", 525, "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp.c"); ; return ((void *)0);}} while(0);


  if (pcb->state == LISTEN) {
    return pcb;
  }
# 546 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp.c"
  lpcb = (struct tcp_pcb_listen *)memp_malloc(MEMP_TCP_PCB_LISTEN);
  if (lpcb == ((void *)0)) {
    return ((void *)0);
  }
  lpcb->callback_arg = pcb->callback_arg;
  lpcb->local_port = pcb->local_port;
  lpcb->state = LISTEN;
  lpcb->prio = pcb->prio;
  lpcb->so_options = pcb->so_options;
  ((lpcb)->so_options |= (0x02U));
  lpcb->ttl = pcb->ttl;
  lpcb->tos = pcb->tos;
  ((lpcb->local_ip).addr = (pcb->local_ip).addr);
  if (pcb->local_port != 0) {
    do { if(*(&tcp_bound_pcbs) == (pcb)) { (*(&tcp_bound_pcbs)) = (*&tcp_bound_pcbs)->next; } else { for(tcp_tmp_pcb = *&tcp_bound_pcbs; tcp_tmp_pcb != ((void *)0); tcp_tmp_pcb = tcp_tmp_pcb->next) { if(tcp_tmp_pcb->next == (pcb)) { tcp_tmp_pcb->next = (pcb)->next; break; } } } (pcb)->next = ((void *)0); } while(0);
  }
  memp_free(MEMP_TCP_PCB, pcb);

  lpcb->accept = tcp_accept_null;


  lpcb->accepts_pending = 0;
  lpcb->backlog = (backlog ? backlog : 1);

  do { ((struct tcp_pcb *)lpcb)->next = *&tcp_listen_pcbs.pcbs; *(&tcp_listen_pcbs.pcbs) = ((struct tcp_pcb *)lpcb); tcp_timer_needed(); } while (0);
  return (struct tcp_pcb *)lpcb;
}







u32_t tcp_update_rcv_ann_wnd(struct tcp_pcb *pcb)
{
  u32_t new_right_edge = pcb->rcv_nxt + pcb->rcv_wnd;

  if (((s32_t)((u32_t)(new_right_edge) - (u32_t)(pcb->rcv_ann_right_edge + (((((4 * (1500 - 40)) / 2)) < (pcb->mss)) ? (((4 * (1500 - 40)) / 2)) : (pcb->mss)))) >= 0)) {

    pcb->rcv_ann_wnd = pcb->rcv_wnd;
    return new_right_edge - pcb->rcv_ann_right_edge;
  } else {
    if (((s32_t)((u32_t)(pcb->rcv_nxt) - (u32_t)(pcb->rcv_ann_right_edge)) > 0)) {


      pcb->rcv_ann_wnd = 0;
    } else {

      u32_t new_rcv_ann_wnd = pcb->rcv_ann_right_edge - pcb->rcv_nxt;
      do { if(!(new_rcv_ann_wnd <= 0xffff)) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "new_rcv_ann_wnd <= 0xffff", 596, "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp.c"); ; } while(0);
      pcb->rcv_ann_wnd = (u16_t)new_rcv_ann_wnd;
    }
    return 0;
  }
}
# 611 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp.c"
void
tcp_recved(struct tcp_pcb *pcb, u16_t len)
{
  int wnd_inflation;


  do { if(!(pcb->state != LISTEN)) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "don't call tcp_recved for listen-pcbs",
 618
# 617 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp.c"
  ,
 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp.c"
# 617 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp.c"
  ); ; } while(0)
                         ;
  do { if(!(len <= 0xffff - pcb->rcv_wnd)) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "tcp_recved: len would wrap rcv_wnd\n",
 620
# 619 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp.c"
  ,
 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp.c"
# 619 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp.c"
  ); ; } while(0)
                                            ;

  pcb->rcv_wnd += len;
  if (pcb->rcv_wnd > (4 * (1500 - 40))) {
    pcb->rcv_wnd = (4 * (1500 - 40));
  }

  wnd_inflation = tcp_update_rcv_ann_wnd(pcb);





  if (wnd_inflation >= ((4 * (1500 - 40)) / 4)) {
    do { (pcb)->flags |= ((u8_t)0x02U); } while (0);
    tcp_output(pcb);
  }

  do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("tcp_recved: recveived %""u"" bytes, wnd %""u"" (%""u"").\n", len, pcb->rcv_wnd, (4 * (1500 - 40)) - pcb->rcv_wnd); if ((0x00U) & 0x08U) { while(1); } } } while(0)
                                                    ;
}






static u16_t
tcp_new_port(void)
{
  u8_t i;
  u16_t n = 0;
  struct tcp_pcb *pcb;

again:
  if (tcp_port++ == 0xffff) {
    tcp_port = 0xc000;
  }

  for (i = 0; i < 4; i++) {
    for(pcb = *tcp_pcb_lists[i]; pcb != ((void *)0); pcb = pcb->next) {
      if (pcb->local_port == tcp_port) {
        if (++n > (0xffff - 0xc000)) {
          return 0;
        }
        goto again;
      }
    }
  }
  return tcp_port;
}
# 684 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp.c"
err_t
tcp_connect(struct tcp_pcb *pcb, ip_addr_t *ipaddr, u16_t port,
      tcp_connected_fn connected)
{
  err_t ret;
  u32_t iss;
  u16_t old_local_port;

  do { if (!(pcb->state == CLOSED)) { Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "tcp_connect: can only connect from state CLOSED", 692, "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp.c"); ; return -9;}} while(0);

  do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("tcp_connect to port %""u""\n", port); if ((0x00U) & 0x08U) { while(1); } } } while(0);
  if (ipaddr != ((void *)0)) {
    pcb->remote_ip = *ipaddr;
  } else {
    return -6;
  }
  pcb->remote_port = port;


  if (((&(pcb->local_ip)) == ((void *)0) || (&(pcb->local_ip))->addr == ((u32_t)0x00000000UL))) {

    struct netif *netif = ip_route(&(pcb->remote_ip));
    if (netif == ((void *)0)) {


      return -4;
    }

    ((pcb->local_ip).addr = (netif->ip_addr).addr);
  }

  old_local_port = pcb->local_port;
  if (pcb->local_port == 0) {
    pcb->local_port = tcp_new_port();
    if (pcb->local_port == 0) {
      return -2;
    }
  }
# 742 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp.c"
  iss = tcp_next_iss();
  pcb->rcv_nxt = 0;
  pcb->snd_nxt = iss;
  pcb->lastack = iss - 1;
  pcb->snd_lbb = iss - 1;
  pcb->rcv_wnd = (4 * (1500 - 40));
  pcb->rcv_ann_wnd = (4 * (1500 - 40));
  pcb->rcv_ann_right_edge = pcb->rcv_nxt;
  pcb->snd_wnd = (4 * (1500 - 40));


  pcb->mss = ((1500 - 40) > 536) ? 536 : (1500 - 40);

  pcb->mss = tcp_eff_send_mss(pcb->mss, ipaddr);

  pcb->cwnd = 1;
  pcb->ssthresh = pcb->mss * 10;

  pcb->connected = connected;





  ret = tcp_enqueue_flags(pcb, 0x02U);

  if (ret == 0) {

    pcb->state = SYN_SENT;
    if (old_local_port != 0) {
      do { if(*(&tcp_bound_pcbs) == (pcb)) { (*(&tcp_bound_pcbs)) = (*&tcp_bound_pcbs)->next; } else { for(tcp_tmp_pcb = *&tcp_bound_pcbs; tcp_tmp_pcb != ((void *)0); tcp_tmp_pcb = tcp_tmp_pcb->next) { if(tcp_tmp_pcb->next == (pcb)) { tcp_tmp_pcb->next = (pcb)->next; break; } } } (pcb)->next = ((void *)0); } while(0);
    }
    do { do { (pcb)->next = *&tcp_active_pcbs; *(&tcp_active_pcbs) = (pcb); tcp_timer_needed(); } while (0); tcp_active_pcbs_changed = 1; } while (0);
    ;

    tcp_output(pcb);
  }
  return ret;
}
# 789 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp.c"
void
tcp_slowtmr(void)
{
  struct tcp_pcb *pcb, *prev;
  u16_t eff_wnd;
  u8_t pcb_remove;
  u8_t pcb_reset;
  err_t err;

  err = 0;

  ++tcp_ticks;
  ++tcp_timer_ctr;

tcp_slowtmr_start:

  prev = ((void *)0);
  pcb = tcp_active_pcbs;
  if (pcb == ((void *)0)) {
    do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("tcp_slowtmr: no active pcbs\n"); if ((0x00U) & 0x08U) { while(1); } } } while(0);
  }
  while (pcb != ((void *)0)) {
    do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("tcp_slowtmr: processing active pcb\n"); if ((0x00U) & 0x08U) { while(1); } } } while(0);
    do { if(!(pcb->state != CLOSED)) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "tcp_slowtmr: active pcb->state != CLOSED\n", 812, "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp.c"); ; } while(0);
    do { if(!(pcb->state != LISTEN)) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "tcp_slowtmr: active pcb->state != LISTEN\n", 813, "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp.c"); ; } while(0);
    do { if(!(pcb->state != TIME_WAIT)) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "tcp_slowtmr: active pcb->state != TIME-WAIT\n", 814, "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp.c"); ; } while(0);
    if (pcb->last_timer == tcp_timer_ctr) {

      pcb = pcb->next;
      continue;
    }
    pcb->last_timer = tcp_timer_ctr;

    pcb_remove = 0;
    pcb_reset = 0;

    if (pcb->state == SYN_SENT && pcb->nrtx == 6) {
      ++pcb_remove;
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("tcp_slowtmr: max SYN retries reached\n"); if ((0x00U) & 0x08U) { while(1); } } } while(0);
    }
    else if (pcb->nrtx == 12) {
      ++pcb_remove;
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("tcp_slowtmr: max DATA retries reached\n"); if ((0x00U) & 0x08U) { while(1); } } } while(0);
    } else {
      if (pcb->persist_backoff > 0) {


        pcb->persist_cnt++;
        if (pcb->persist_cnt >= tcp_persist_backoff[pcb->persist_backoff-1]) {
          pcb->persist_cnt = 0;
          if (pcb->persist_backoff < sizeof(tcp_persist_backoff)) {
            pcb->persist_backoff++;
          }
          tcp_zero_window_probe(pcb);
        }
      } else {

        if(pcb->rtime >= 0) {
          ++pcb->rtime;
        }

        if (pcb->unacked != ((void *)0) && pcb->rtime >= pcb->rto) {

          do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("tcp_slowtmr: rtime %""d" " pcb->rto %""d""\n", pcb->rtime, pcb->rto); if ((0x00U) & 0x08U) { while(1); } } } while(0)

                                                            ;



          if (pcb->state != SYN_SENT) {
            pcb->rto = ((pcb->sa >> 3) + pcb->sv) << tcp_backoff[pcb->nrtx];
          }


          pcb->rtime = 0;


          eff_wnd = (((pcb->cwnd) < (pcb->snd_wnd)) ? (pcb->cwnd) : (pcb->snd_wnd));
          pcb->ssthresh = eff_wnd >> 1;
          if (pcb->ssthresh < (pcb->mss << 1)) {
            pcb->ssthresh = (pcb->mss << 1);
          }
          pcb->cwnd = pcb->mss;
          do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("tcp_slowtmr: cwnd %""u" " ssthresh %""u""\n", pcb->cwnd, pcb->ssthresh); if ((0x00U) & 0x08U) { while(1); } } } while(0)

                                                                 ;



          tcp_rexmit_rto(pcb);
        }
      }
    }

    if (pcb->state == FIN_WAIT_2) {

      if (pcb->flags & ((u8_t)0x10U)) {


        if ((u32_t)(tcp_ticks - pcb->tmr) >
            20000 / (2*0.1)) {
          ++pcb_remove;
          do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("tcp_slowtmr: removing pcb stuck in FIN-WAIT-2\n"); if ((0x00U) & 0x08U) { while(1); } } } while(0);
        }
      }
    }


    if(((pcb)->so_options & (0x08U)) &&
       ((pcb->state == ESTABLISHED) ||
        (pcb->state == CLOSE_WAIT))) {
      if((u32_t)(tcp_ticks - pcb->tmr) >
         (pcb->keep_idle + 9U * 75000UL) / (2*0.1))
      {
        do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("tcp_slowtmr: KEEPALIVE timeout. Aborting connection to %""u"".%""u"".%""u"".%""u"".\n", ((u16_t)(((u8_t*)(&pcb->remote_ip))[0])), ((u16_t)(((u8_t*)(&pcb->remote_ip))[1])), ((u16_t)(((u8_t*)(&pcb->remote_ip))[2])), ((u16_t)(((u8_t*)(&pcb->remote_ip))[3]))); if ((0x00U) & 0x08U) { while(1); } } } while(0)

                                                                                              ;

        ++pcb_remove;
        ++pcb_reset;
      }
      else if((u32_t)(tcp_ticks - pcb->tmr) >
              (pcb->keep_idle + pcb->keep_cnt_sent * 75000UL)
              / (2*0.1))
      {
        tcp_keepalive(pcb);
        pcb->keep_cnt_sent++;
      }
    }





    if (pcb->ooseq != ((void *)0) &&
        (u32_t)tcp_ticks - pcb->tmr >= pcb->rto * 6U) {
      tcp_segs_free(pcb->ooseq);
      pcb->ooseq = ((void *)0);
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("tcp_slowtmr: dropping OOSEQ queued data\n"); if ((0x00U) & 0x08U) { while(1); } } } while(0);
    }



    if (pcb->state == SYN_RCVD) {
      if ((u32_t)(tcp_ticks - pcb->tmr) >
          20000 / (2*0.1)) {
        ++pcb_remove;
        do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("tcp_slowtmr: removing pcb stuck in SYN-RCVD\n"); if ((0x00U) & 0x08U) { while(1); } } } while(0);
      }
    }


    if (pcb->state == LAST_ACK) {
      if ((u32_t)(tcp_ticks - pcb->tmr) > 2 * 60000UL / (2*0.1)) {
        ++pcb_remove;
        do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("tcp_slowtmr: removing pcb stuck in LAST-ACK\n"); if ((0x00U) & 0x08U) { while(1); } } } while(0);
      }
    }


    if (pcb_remove) {
      struct tcp_pcb *pcb2;
      tcp_err_fn err_fn;
      void *err_arg;
      tcp_pcb_purge(pcb);

      if (prev != ((void *)0)) {
        do { if(!(pcb != tcp_active_pcbs)) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "tcp_slowtmr: middle tcp != tcp_active_pcbs", 956, "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp.c"); ; } while(0);
        prev->next = pcb->next;
      } else {

        do { if(!(tcp_active_pcbs == pcb)) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "tcp_slowtmr: first pcb == tcp_active_pcbs", 960, "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp.c"); ; } while(0);
        tcp_active_pcbs = pcb->next;
      }

      if (pcb_reset) {
        tcp_rst(pcb->snd_nxt, pcb->rcv_nxt, &pcb->local_ip, &pcb->remote_ip,
          pcb->local_port, pcb->remote_port);
      }

      err_fn = pcb->errf;
      err_arg = pcb->callback_arg;
      pcb2 = pcb;
      pcb = pcb->next;
      memp_free(MEMP_TCP_PCB, pcb2);

      tcp_active_pcbs_changed = 0;
      do { if((err_fn) != ((void *)0)) (err_fn)((err_arg),(-10)); } while (0);
      if (tcp_active_pcbs_changed) {
        goto tcp_slowtmr_start;
      }
    } else {

      prev = pcb;
      pcb = pcb->next;


      ++prev->polltmr;
      if (prev->polltmr >= prev->pollinterval) {
        prev->polltmr = 0;
        do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("tcp_slowtmr: polling application\n"); if ((0x00U) & 0x08U) { while(1); } } } while(0);
        tcp_active_pcbs_changed = 0;
        do { if((prev)->poll != ((void *)0)) (err) = (prev)->poll((prev)->callback_arg,(prev)); else (err) = 0; } while (0);
        if (tcp_active_pcbs_changed) {
          goto tcp_slowtmr_start;
        }

        if (err == 0) {
          tcp_output(prev);
        }
      }
    }
  }



  prev = ((void *)0);
  pcb = tcp_tw_pcbs;
  while (pcb != ((void *)0)) {
    do { if(!(pcb->state == TIME_WAIT)) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "tcp_slowtmr: TIME-WAIT pcb->state == TIME-WAIT", 1008, "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp.c"); ; } while(0);
    pcb_remove = 0;


    if ((u32_t)(tcp_ticks - pcb->tmr) > 2 * 60000UL / (2*0.1)) {
      ++pcb_remove;
    }




    if (pcb_remove) {
      struct tcp_pcb *pcb2;
      tcp_pcb_purge(pcb);

      if (prev != ((void *)0)) {
        do { if(!(pcb != tcp_tw_pcbs)) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "tcp_slowtmr: middle tcp != tcp_tw_pcbs", 1024, "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp.c"); ; } while(0);
        prev->next = pcb->next;
      } else {

        do { if(!(tcp_tw_pcbs == pcb)) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "tcp_slowtmr: first pcb == tcp_tw_pcbs", 1028, "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp.c"); ; } while(0);
        tcp_tw_pcbs = pcb->next;
      }
      pcb2 = pcb;
      pcb = pcb->next;
      memp_free(MEMP_TCP_PCB, pcb2);
    } else {
      prev = pcb;
      pcb = pcb->next;
    }
  }
}







void
tcp_fasttmr(void)
{
  struct tcp_pcb *pcb;

  ++tcp_timer_ctr;

tcp_fasttmr_start:
  pcb = tcp_active_pcbs;


  while(pcb != ((void *)0)) {
    if (pcb->last_timer != tcp_timer_ctr) {
      struct tcp_pcb *next;
      pcb->last_timer = tcp_timer_ctr;

      if (pcb->flags & ((u8_t)0x01U)) {
        do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("tcp_fasttmr: delayed ACK\n"); if ((0x00U) & 0x08U) { while(1); } } } while(0);
        do { (pcb)->flags |= ((u8_t)0x02U); } while (0);
        tcp_output(pcb);
        pcb->flags &= ~(((u8_t)0x01U) | ((u8_t)0x02U));
      }

      next = pcb->next;


      if (pcb->refused_data != ((void *)0)) {
        tcp_active_pcbs_changed = 0;
        tcp_process_refused_data(pcb);
        if (tcp_active_pcbs_changed) {

          goto tcp_fasttmr_start;
        }
      }
      pcb = next;
    }
  }
}


err_t
tcp_process_refused_data(struct tcp_pcb *pcb)
{
  err_t err;
  u8_t refused_flags = pcb->refused_data->flags;


  struct pbuf *refused_data = pcb->refused_data;
  pcb->refused_data = ((void *)0);

  do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("tcp_input: notify kept packet\n"); if ((0x00U) & 0x08U) { while(1); } } } while(0);
  do { if((pcb)->recv != ((void *)0)) { (err) = (pcb)->recv((pcb)->callback_arg,(pcb),(refused_data),(0)); } else { (err) = tcp_recv_null(((void *)0), (pcb), (refused_data), (0)); } } while (0);
  if (err == 0) {

    if (refused_flags & 0x20U) {


      if (pcb->rcv_wnd != (4 * (1500 - 40))) {
        pcb->rcv_wnd++;
      }
      do { if(((pcb)->recv != ((void *)0))) { (err) = (pcb)->recv((pcb)->callback_arg,(pcb),((void *)0),0); } else { (err) = 0; } } while (0);
      if (err == -10) {
        return -10;
      }
    }
  } else if (err == -10) {



    do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("tcp_input: drop incoming packets, because pcb is \"full\"\n"); if ((0x00U) & 0x08U) { while(1); } } } while(0);
    return -10;
  } else {

    pcb->refused_data = refused_data;
  }
  return 0;
}






void
tcp_segs_free(struct tcp_seg *seg)
{
  while (seg != ((void *)0)) {
    struct tcp_seg *next = seg->next;
    tcp_seg_free(seg);
    seg = next;
  }
}






void
tcp_seg_free(struct tcp_seg *seg)
{
  if (seg != ((void *)0)) {
    if (seg->p != ((void *)0)) {
      pbuf_free(seg->p);



    }
    memp_free(MEMP_TCP_SEG, seg);
  }
}







void
tcp_setprio(struct tcp_pcb *pcb, u8_t prio)
{
  pcb->prio = prio;
}
# 1179 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp.c"
struct tcp_seg *
tcp_seg_copy(struct tcp_seg *seg)
{
  struct tcp_seg *cseg;

  cseg = (struct tcp_seg *)memp_malloc(MEMP_TCP_SEG);
  if (cseg == ((void *)0)) {
    return ((void *)0);
  }
  memcpy((u8_t *)cseg,(const u8_t *)seg,sizeof(struct tcp_seg));
  pbuf_ref(cseg->p);
  return cseg;
}







err_t
tcp_recv_null(void *arg, struct tcp_pcb *pcb, struct pbuf *p, err_t err)
{
  (void)arg;
  if (p != ((void *)0)) {
    tcp_recved(pcb, p->tot_len);
    pbuf_free(p);
  } else if (err == 0) {
    return tcp_close(pcb);
  }
  return 0;
}
# 1219 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp.c"
static void
tcp_kill_prio(u8_t prio)
{
  struct tcp_pcb *pcb, *inactive;
  u32_t inactivity;
  u8_t mprio;


  mprio = 127;


  inactivity = 0;
  inactive = ((void *)0);
  for(pcb = tcp_active_pcbs; pcb != ((void *)0); pcb = pcb->next) {
    if (pcb->prio <= prio &&
       pcb->prio <= mprio &&
       (u32_t)(tcp_ticks - pcb->tmr) >= inactivity) {
      inactivity = tcp_ticks - pcb->tmr;
      inactive = pcb;
      mprio = pcb->prio;
    }
  }
  if (inactive != ((void *)0)) {
    do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("tcp_kill_prio: killing oldest PCB %p (%""d"")\n", (void *)inactive, inactivity); if ((0x00U) & 0x08U) { while(1); } } } while(0)
                                         ;
    tcp_abort(inactive);
  }
}





static void
tcp_kill_timewait(void)
{
  struct tcp_pcb *pcb, *inactive;
  u32_t inactivity;

  inactivity = 0;
  inactive = ((void *)0);

  for(pcb = tcp_tw_pcbs; pcb != ((void *)0); pcb = pcb->next) {
    if ((u32_t)(tcp_ticks - pcb->tmr) >= inactivity) {
      inactivity = tcp_ticks - pcb->tmr;
      inactive = pcb;
    }
  }
  if (inactive != ((void *)0)) {
    do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("tcp_kill_timewait: killing oldest TIME-WAIT PCB %p (%""d"")\n", (void *)inactive, inactivity); if ((0x00U) & 0x08U) { while(1); } } } while(0)
                                         ;
    tcp_abort(inactive);
  }
}







struct tcp_pcb *
tcp_alloc(u8_t prio)
{
  struct tcp_pcb *pcb;
  u32_t iss;

  pcb = (struct tcp_pcb *)memp_malloc(MEMP_TCP_PCB);
  if (pcb == ((void *)0)) {

    do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("tcp_alloc: killing off oldest TIME-WAIT connection\n"); if ((0x00U) & 0x08U) { while(1); } } } while(0);
    tcp_kill_timewait();

    pcb = (struct tcp_pcb *)memp_malloc(MEMP_TCP_PCB);
    if (pcb == ((void *)0)) {

      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("tcp_alloc: killing connection with prio lower than %d\n", prio); if ((0x00U) & 0x08U) { while(1); } } } while(0);
      tcp_kill_prio(prio);

      pcb = (struct tcp_pcb *)memp_malloc(MEMP_TCP_PCB);
      if (pcb != ((void *)0)) {

        --lwip_stats.memp[MEMP_TCP_PCB].err;
      }
    }
    if (pcb != ((void *)0)) {

      --lwip_stats.memp[MEMP_TCP_PCB].err;
    }
  }
  if (pcb != ((void *)0)) {
    memset(pcb, 0, sizeof(struct tcp_pcb));
    pcb->prio = prio;
    pcb->snd_buf = (2 * (1500 - 40));
    pcb->snd_queuelen = 0;
    pcb->rcv_wnd = (4 * (1500 - 40));
    pcb->rcv_ann_wnd = (4 * (1500 - 40));
    pcb->tos = 0;
    pcb->ttl = 255;


    pcb->mss = ((1500 - 40) > 536) ? 536 : (1500 - 40);
    pcb->rto = 3000 / (2*0.1);
    pcb->sa = 0;
    pcb->sv = 3000 / (2*0.1);
    pcb->rtime = -1;
    pcb->cwnd = 1;
    iss = tcp_next_iss();
    pcb->snd_wl2 = iss;
    pcb->snd_nxt = iss;
    pcb->lastack = iss;
    pcb->snd_lbb = iss;
    pcb->tmr = tcp_ticks;
    pcb->last_timer = tcp_timer_ctr;

    pcb->polltmr = 0;


    pcb->recv = tcp_recv_null;



    pcb->keep_idle = 7200000UL;






    pcb->keep_cnt_sent = 0;
  }
  return pcb;
}
# 1365 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp.c"
struct tcp_pcb *
tcp_new(void)
{
  return tcp_alloc(64);
}
# 1378 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp.c"
void
tcp_arg(struct tcp_pcb *pcb, void *arg)
{


  pcb->callback_arg = arg;
}
# 1394 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp.c"
void
tcp_recv(struct tcp_pcb *pcb, tcp_recv_fn recv)
{
  do { if(!(pcb->state != LISTEN)) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "invalid socket state for recv callback", 1397, "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp.c"); ; } while(0);
  pcb->recv = recv;

}
# 1409 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp.c"
void
tcp_sent(struct tcp_pcb *pcb, tcp_sent_fn sent)
{
  do { if(!(pcb->state != LISTEN)) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "invalid socket state for sent callback", 1412, "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp.c"); ; } while(0);
  pcb->sent = sent;
}
# 1424 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp.c"
void
tcp_err(struct tcp_pcb *pcb, tcp_err_fn err)
{
  do { if(!(pcb->state != LISTEN)) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "invalid socket state for err callback", 1427, "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp.c"); ; } while(0);
  pcb->errf = err;
}
# 1439 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp.c"
void
tcp_accept(struct tcp_pcb *pcb, tcp_accept_fn accept)
{


  pcb->accept = accept;
}
# 1455 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp.c"
void
tcp_poll(struct tcp_pcb *pcb, tcp_poll_fn poll, u8_t interval)
{
  do { if(!(pcb->state != LISTEN)) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "invalid socket state for poll", 1458, "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp.c"); ; } while(0);

  pcb->poll = poll;



  pcb->pollinterval = interval;
}







void
tcp_pcb_purge(struct tcp_pcb *pcb)
{
  if (pcb->state != CLOSED &&
     pcb->state != TIME_WAIT &&
     pcb->state != LISTEN) {

    do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("tcp_pcb_purge\n"); if ((0x00U) & 0x08U) { while(1); } } } while(0);


    if (pcb->state == SYN_RCVD) {

      struct tcp_pcb_listen *lpcb;
      do { if(!(tcp_listen_pcbs.listen_pcbs != ((void *)0))) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "tcp_pcb_purge: pcb->state == SYN_RCVD but tcp_listen_pcbs is NULL",
 1487
# 1486 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp.c"
      ,
 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp.c"
# 1486 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp.c"
      ); ; } while(0)
                                            ;
      for (lpcb = tcp_listen_pcbs.listen_pcbs; lpcb != ((void *)0); lpcb = lpcb->next) {
        if ((lpcb->local_port == pcb->local_port) &&
            (((&lpcb->local_ip) == ((void *)0) || (&lpcb->local_ip)->addr == ((u32_t)0x00000000UL)) ||
             ((&pcb->local_ip)->addr == (&lpcb->local_ip)->addr))) {

            do { if(!(lpcb->accepts_pending > 0)) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "tcp_pcb_purge: listen pcb does not have accepts pending",
 1494
# 1493 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp.c"
            ,
 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp.c"
# 1493 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp.c"
            ); ; } while(0)
                                        ;
            lpcb->accepts_pending--;
            break;
          }
      }
    }



    if (pcb->refused_data != ((void *)0)) {
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("tcp_pcb_purge: data left on ->refused_data\n"); if ((0x00U) & 0x08U) { while(1); } } } while(0);
      pbuf_free(pcb->refused_data);
      pcb->refused_data = ((void *)0);
    }
    if (pcb->unsent != ((void *)0)) {
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("tcp_pcb_purge: not all data sent\n"); if ((0x00U) & 0x08U) { while(1); } } } while(0);
    }
    if (pcb->unacked != ((void *)0)) {
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("tcp_pcb_purge: data left on ->unacked\n"); if ((0x00U) & 0x08U) { while(1); } } } while(0);
    }

    if (pcb->ooseq != ((void *)0)) {
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("tcp_pcb_purge: data left on ->ooseq\n"); if ((0x00U) & 0x08U) { while(1); } } } while(0);
    }
    tcp_segs_free(pcb->ooseq);
    pcb->ooseq = ((void *)0);




    pcb->rtime = -1;

    tcp_segs_free(pcb->unsent);
    tcp_segs_free(pcb->unacked);
    pcb->unacked = pcb->unsent = ((void *)0);

    pcb->unsent_oversize = 0;

  }
}







void
tcp_pcb_remove(struct tcp_pcb **pcblist, struct tcp_pcb *pcb)
{
  do { if(*(pcblist) == (pcb)) { (*(pcblist)) = (*pcblist)->next; } else { for(tcp_tmp_pcb = *pcblist; tcp_tmp_pcb != ((void *)0); tcp_tmp_pcb = tcp_tmp_pcb->next) { if(tcp_tmp_pcb->next == (pcb)) { tcp_tmp_pcb->next = (pcb)->next; break; } } } (pcb)->next = ((void *)0); } while(0);

  tcp_pcb_purge(pcb);


  if (pcb->state != TIME_WAIT &&
     pcb->state != LISTEN &&
     pcb->flags & ((u8_t)0x01U)) {
    pcb->flags |= ((u8_t)0x02U);
    tcp_output(pcb);
  }

  if (pcb->state != LISTEN) {
    do { if(!(pcb->unsent == ((void *)0))) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "unsent segments leaking", 1557, "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp.c"); ; } while(0);
    do { if(!(pcb->unacked == ((void *)0))) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "unacked segments leaking", 1558, "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp.c"); ; } while(0);

    do { if(!(pcb->ooseq == ((void *)0))) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "ooseq segments leaking", 1560, "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp.c"); ; } while(0);

  }

  pcb->state = CLOSED;

  do { if(!(1)) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "tcp_pcb_remove: tcp_pcbs_sane()", 1566, "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp.c"); ; } while(0);
}






u32_t
tcp_next_iss(void)
{
  static u32_t iss = 6510;

  iss += tcp_ticks;
  return iss;
}







u16_t
tcp_eff_send_mss(u16_t sendmss, ip_addr_t *addr)
{
  u16_t mss_s;
  struct netif *outif;

  outif = ip_route(addr);
  if ((outif != ((void *)0)) && (outif->mtu != 0)) {
    mss_s = outif->mtu - 20 - 20;




    sendmss = (((sendmss) < (mss_s)) ? (sendmss) : (mss_s));
  }
  return sendmss;
}


const char*
tcp_debug_state_str(enum tcp_state s)
{
  return tcp_state_str[s];
}
