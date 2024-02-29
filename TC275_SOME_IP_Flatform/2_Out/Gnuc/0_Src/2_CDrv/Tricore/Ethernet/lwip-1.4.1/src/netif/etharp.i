# 1 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/etharp.c"
# 1 "D:\\00.Workspace\\TC275\\SKKU_ECU_SOMEIP\\TC275_SOME_IP_Flatform//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/etharp.c"
# 46 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/etharp.c"
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
# 47 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/etharp.c" 2



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
# 51 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/etharp.c" 2

# 1 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/ipv4/lwip/ip.h" 1
# 38 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/ipv4/lwip/ip.h"
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
# 39 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/ipv4/lwip/ip.h" 2


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
# 53 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/etharp.c" 2
# 1 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/stats.h" 1
# 37 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/stats.h"
# 1 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/mem.h" 1
# 76 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/mem.h"
typedef u16_t mem_size_t;
# 88 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/mem.h"
void mem_init(void);
void *mem_trim(void *mem, mem_size_t size);

void *mem_malloc(mem_size_t size);
void *mem_calloc(mem_size_t count, mem_size_t size);
void mem_free(void *mem);
# 38 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/stats.h" 2
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
# 39 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/stats.h" 2
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
# 54 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/etharp.c" 2
# 1 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/snmp.h" 1
# 44 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/snmp.h"
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
# 55 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/etharp.c" 2
# 1 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/dhcp.h" 1
# 56 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/etharp.c" 2
# 1 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/ipv4/lwip/autoip.h" 1
# 57 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/etharp.c" 2
# 1 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/netif/etharp.h" 1
# 58 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/netif/etharp.h"

struct eth_addr {
  u8_t addr[6];
} __attribute__ ((__packed__));










struct eth_hdr {



  struct eth_addr dest;
  struct eth_addr src;
  u16_t type;
} __attribute__ ((__packed__));

# 113 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/netif/etharp.h"


struct etharp_hdr {
  u16_t hwtype;
  u16_t proto;
  u8_t hwlen;
  u8_t protolen;
  u16_t opcode;
  struct eth_addr shwaddr;
  struct ip_addr2 sipaddr;
  struct eth_addr dhwaddr;
  struct ip_addr2 dipaddr;
} __attribute__ ((__packed__));

# 182 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/netif/etharp.h"
void etharp_tmr(void);
s8_t etharp_find_addr(struct netif *netif, const ip_addr_t *ipaddr,
         struct eth_addr **eth_ret, ip_addr_t **ip_ret);
err_t etharp_output(struct netif *netif, struct pbuf *q, const ip_addr_t *ipaddr);
err_t etharp_query(struct netif *netif, const ip_addr_t *ipaddr, struct pbuf *q);
err_t etharp_request(struct netif *netif, const ip_addr_t *ipaddr);






void etharp_cleanup_netif(struct netif *netif);


err_t etharp_add_static_entry(ip_addr_t *ipaddr, struct eth_addr *ethaddr);
err_t etharp_remove_static_entry(ip_addr_t *ipaddr);
# 211 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/netif/etharp.h"
err_t ethernet_input(struct pbuf *p, struct netif *netif);



extern const struct eth_addr ethbroadcast, ethzero;
# 58 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/etharp.c" 2





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


# 64 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/etharp.c" 2

const struct eth_addr ethbroadcast = {{0xff,0xff,0xff,0xff,0xff,0xff}};
const struct eth_addr ethzero = {{0,0,0,0,0,0}};
# 95 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/etharp.c"
enum etharp_state {
  ETHARP_STATE_EMPTY = 0,
  ETHARP_STATE_PENDING,
  ETHARP_STATE_STABLE,
  ETHARP_STATE_STABLE_REREQUESTING

  ,ETHARP_STATE_STATIC

};

struct etharp_entry {





  struct pbuf *q;

  ip_addr_t ipaddr;
  struct netif *netif;
  struct eth_addr ethaddr;
  u8_t state;
  u8_t ctime;
};

static struct etharp_entry arp_table[10];


static u8_t etharp_cached_entry;
# 176 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/etharp.c"
static void
etharp_free_entry(int i)
{

  ;

  if (arp_table[i].q != ((void *)0)) {

    do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("etharp_free_entry: freeing entry %""u"", packet queue %p.\n", (u16_t)i, (void *)(arp_table[i].q)); if ((0x00U) & 0x08U) { while(1); } } } while(0);
    pbuf_free(arp_table[i].q);
    arp_table[i].q = ((void *)0);
  }

  arp_table[i].state = ETHARP_STATE_EMPTY;


  arp_table[i].ctime = 0;
  arp_table[i].netif = ((void *)0);
  ((&arp_table[i].ipaddr)->addr = 0);
  arp_table[i].ethaddr = ethzero;

}







void
etharp_tmr(void)
{
  u8_t i;

  do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("etharp_timer\n"); if ((0x00U) & 0x08U) { while(1); } } } while(0);

  for (i = 0; i < 10; ++i) {
    u8_t state = arp_table[i].state;
    if (state != ETHARP_STATE_EMPTY

      && (state != ETHARP_STATE_STATIC)

      ) {
      arp_table[i].ctime++;
      if ((arp_table[i].ctime >= 240) ||
          ((arp_table[i].state == ETHARP_STATE_PENDING) &&
           (arp_table[i].ctime >= 2))) {

        do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("etharp_timer: expired %s entry %""u"".\n", arp_table[i].state >= ETHARP_STATE_STABLE ? "stable" : "pending", (u16_t)i); if ((0x00U) & 0x08U) { while(1); } } } while(0)
                                                                                         ;

        etharp_free_entry(i);
      }
      else if (arp_table[i].state == ETHARP_STATE_STABLE_REREQUESTING) {


        arp_table[i].state = ETHARP_STATE_STABLE;
      }






    }
  }
}
# 265 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/etharp.c"
static s8_t
etharp_find_entry(const ip_addr_t *ipaddr, u8_t flags)
{
  s8_t old_pending = 10, old_stable = 10;
  s8_t empty = 10;
  u8_t i = 0, age_pending = 0, age_stable = 0;

  s8_t old_queue = 10;

  u8_t age_queue = 0;
# 291 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/etharp.c"
  for (i = 0; i < 10; ++i) {
    u8_t state = arp_table[i].state;

    if ((empty == 10) && (state == ETHARP_STATE_EMPTY)) {
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("etharp_find_entry: found empty entry %""u""\n", (u16_t)i); if ((0x00U) & 0x08U) { while(1); } } } while(0);

      empty = i;
    } else if (state != ETHARP_STATE_EMPTY) {
      do { if(!(state == ETHARP_STATE_PENDING || state >= ETHARP_STATE_STABLE)) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "state == ETHARP_STATE_PENDING || state >= ETHARP_STATE_STABLE",
 300
# 299 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/etharp.c"
      ,
 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/etharp.c"
# 299 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/etharp.c"
      ); ; } while(0)
                                                                      ;

      if (ipaddr && ((ipaddr)->addr == (&arp_table[i].ipaddr)->addr)) {
        do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x80U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("etharp_find_entry: found matching entry %""u""\n", (u16_t)i); if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0);

        return i;
      }

      if (state == ETHARP_STATE_PENDING) {

        if (arp_table[i].q != ((void *)0)) {
          if (arp_table[i].ctime >= age_queue) {
            old_queue = i;
            age_queue = arp_table[i].ctime;
          }
        } else

        {
          if (arp_table[i].ctime >= age_pending) {
            old_pending = i;
            age_pending = arp_table[i].ctime;
          }
        }

      } else if (state >= ETHARP_STATE_STABLE) {


        if (state < ETHARP_STATE_STATIC)

        {

          if (arp_table[i].ctime >= age_stable) {
            old_stable = i;
            age_stable = arp_table[i].ctime;
          }
        }
      }
    }
  }



  if (((flags & 2) != 0) ||

      ((empty == 10) && ((flags & 1) == 0))) {
    do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x80U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("etharp_find_entry: no empty entry found and not allowed to recycle\n"); if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0);
    return (s8_t)-1;
  }
# 359 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/etharp.c"
  if (empty < 10) {
    i = empty;
    do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x80U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("etharp_find_entry: selecting empty entry %""u""\n", (u16_t)i); if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0);
  } else {

    if (old_stable < 10) {

      i = old_stable;
      do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x80U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("etharp_find_entry: selecting oldest stable entry %""u""\n", (u16_t)i); if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0);

      do { if(!(arp_table[i].q == ((void *)0))) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "arp_table[i].q == NULL", 369, "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/etharp.c"); ; } while(0);

    } else if (old_pending < 10) {

      i = old_pending;
      do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x80U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("etharp_find_entry: selecting oldest pending entry %""u"" (without queue)\n", (u16_t)i); if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0);

    } else if (old_queue < 10) {

      i = old_queue;
      do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x80U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("etharp_find_entry: selecting oldest pending entry %""u"", freeing packet queue %p\n", (u16_t)i, (void *)(arp_table[i].q)); if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0);

    } else {
      do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x80U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("etharp_find_entry: no empty or recyclable entries found\n"); if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0);
      return (s8_t)-1;
    }


    do { if(!(i < 10)) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "i < ARP_TABLE_SIZE", 387, "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/etharp.c"); ; } while(0);
    etharp_free_entry(i);
  }

  do { if(!(i < 10)) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "i < ARP_TABLE_SIZE", 391, "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/etharp.c"); ; } while(0);
  do { if(!(arp_table[i].state == ETHARP_STATE_EMPTY)) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "arp_table[i].state == ETHARP_STATE_EMPTY",
 393
# 392 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/etharp.c"
  ,
 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/etharp.c"
# 392 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/etharp.c"
  ); ; } while(0)
                                             ;


  if (ipaddr != ((void *)0)) {

    ((arp_table[i].ipaddr).addr = (*ipaddr).addr);
  }
  arp_table[i].ctime = 0;
  return (err_t)i;
}
# 414 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/etharp.c"
static err_t
etharp_send_ip(struct netif *netif, struct pbuf *p, struct eth_addr *src, struct eth_addr *dst)
{
  struct eth_hdr *ethhdr = (struct eth_hdr *)p->payload;

  do { if(!((netif->hwaddr_len == 6))) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "netif->hwaddr_len must be the same as ETHARP_HWADDR_LEN for etharp!",
 420
# 419 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/etharp.c"
  ,
 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/etharp.c"
# 419 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/etharp.c"
  ); ; } while(0)
                                                       ;
  memcpy(&ethhdr->dest,dst,6);
  memcpy(&ethhdr->src,src,6);
  ethhdr->type = ((((0x0800U) & 0xff) << 8) | (((0x0800U) & 0xff00) >> 8));
  do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x80U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("etharp_send_ip: sending packet %p\n", (void *)p); if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0);

  return netif->linkoutput(netif, p);
}
# 447 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/etharp.c"
static err_t
etharp_update_arp_entry(struct netif *netif, ip_addr_t *ipaddr, struct eth_addr *ethaddr, u8_t flags)
{
  s8_t i;
  do { if(!(netif->hwaddr_len == 6)) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "netif->hwaddr_len == ETHARP_HWADDR_LEN", 451, "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/etharp.c"); ; } while(0);
  do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x80U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("etharp_update_arp_entry: %""u"".%""u"".%""u"".%""u"" - %02""x"":%02""x"":%02""x"":%02""x"":%02""x"":%02""x""\n", ((u16_t)(((u8_t*)(ipaddr))[0])), ((u16_t)(((u8_t*)(ipaddr))[1])), ((u16_t)(((u8_t*)(ipaddr))[2])), ((u16_t)(((u8_t*)(ipaddr))[3])), ethaddr->addr[0], ethaddr->addr[1], ethaddr->addr[2], ethaddr->addr[3], ethaddr->addr[4], ethaddr->addr[5]); if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0)


                                                          ;

  if (((ipaddr) == ((void *)0) || (ipaddr)->addr == ((u32_t)0x00000000UL)) ||
      ip4_addr_isbroadcast((ipaddr)->addr, (netif)) ||
      (((ipaddr)->addr & ((((0xf0000000UL) & 0xff) << 24) | (((0xf0000000UL) & 0xff00) << 8) | (((0xf0000000UL) & 0xff0000UL) >> 8) | (((0xf0000000UL) & 0xff000000UL) >> 24))) == ((((0xe0000000UL) & 0xff) << 24) | (((0xe0000000UL) & 0xff00) << 8) | (((0xe0000000UL) & 0xff0000UL) >> 8) | (((0xe0000000UL) & 0xff000000UL) >> 24)))) {
    do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x80U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("etharp_update_arp_entry: will not add non-unicast IP address to ARP cache\n"); if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0);
    return -14;
  }

  i = etharp_find_entry(ipaddr, flags);

  if (i < 0) {
    return (err_t)i;
  }


  if (flags & 4) {

    arp_table[i].state = ETHARP_STATE_STATIC;
  } else

  {

    arp_table[i].state = ETHARP_STATE_STABLE;
  }


  arp_table[i].netif = netif;

  ;

  do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x80U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("etharp_update_arp_entry: updating stable entry %""d""\n", (s16_t)i); if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0);

  memcpy(&arp_table[i].ethaddr,ethaddr,6);

  arp_table[i].ctime = 0;
# 504 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/etharp.c"
  if (arp_table[i].q != ((void *)0)) {
    struct pbuf *p = arp_table[i].q;
    arp_table[i].q = ((void *)0);


    etharp_send_ip(netif, p, (struct eth_addr*)(netif->hwaddr), ethaddr);

    pbuf_free(p);
  }
  return 0;
}
# 525 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/etharp.c"
err_t
etharp_add_static_entry(ip_addr_t *ipaddr, struct eth_addr *ethaddr)
{
  struct netif *netif;
  do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x80U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("etharp_add_static_entry: %""u"".%""u"".%""u"".%""u"" - %02""x"":%02""x"":%02""x"":%02""x"":%02""x"":%02""x""\n", ((u16_t)(((u8_t*)(ipaddr))[0])), ((u16_t)(((u8_t*)(ipaddr))[1])), ((u16_t)(((u8_t*)(ipaddr))[2])), ((u16_t)(((u8_t*)(ipaddr))[3])), ethaddr->addr[0], ethaddr->addr[1], ethaddr->addr[2], ethaddr->addr[3], ethaddr->addr[4], ethaddr->addr[5]); if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0)


                                                          ;

  netif = ip_route(ipaddr);
  if (netif == ((void *)0)) {
    return -4;
  }

  return etharp_update_arp_entry(netif, ipaddr, ethaddr, 1 | 4);
}
# 550 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/etharp.c"
err_t
etharp_remove_static_entry(ip_addr_t *ipaddr)
{
  s8_t i;
  do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x80U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("etharp_remove_static_entry: %""u"".%""u"".%""u"".%""u""\n", ((u16_t)(((u8_t*)(ipaddr))[0])), ((u16_t)(((u8_t*)(ipaddr))[1])), ((u16_t)(((u8_t*)(ipaddr))[2])), ((u16_t)(((u8_t*)(ipaddr))[3]))); if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0)
                                                                                            ;


  i = etharp_find_entry(ipaddr, 2);

  if (i < 0) {
    return (err_t)i;
  }

  if (arp_table[i].state != ETHARP_STATE_STATIC) {

    return -14;
  }

  etharp_free_entry(i);
  return 0;
}







void etharp_cleanup_netif(struct netif *netif)
{
  u8_t i;

  for (i = 0; i < 10; ++i) {
    u8_t state = arp_table[i].state;
    if ((state != ETHARP_STATE_EMPTY) && (arp_table[i].netif == netif)) {
      etharp_free_entry(i);
    }
  }
}
# 602 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/etharp.c"
s8_t
etharp_find_addr(struct netif *netif, const ip_addr_t *ipaddr,
         struct eth_addr **eth_ret, ip_addr_t **ip_ret)
{
  s8_t i;

  do { if(!(eth_ret != ((void *)0) && ip_ret != ((void *)0))) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "eth_ret != NULL && ip_ret != NULL",
 609
# 608 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/etharp.c"
  ,
 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/etharp.c"
# 608 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/etharp.c"
  ); ; } while(0)
                                      ;

  (void)netif;

  i = etharp_find_entry(ipaddr, 2);
  if((i >= 0) && (arp_table[i].state >= ETHARP_STATE_STABLE)) {
      *eth_ret = &arp_table[i].ethaddr;
      *ip_ret = &arp_table[i].ipaddr;
      return i;
  }
  return -1;
}
# 638 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/etharp.c"
static void
etharp_ip_input(struct netif *netif, struct pbuf *p)
{
  struct eth_hdr *ethhdr;
  struct ip_hdr *iphdr;
  ip_addr_t iphdr_src;
  do { if (!((netif != ((void *)0)))) { Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "netif != NULL", 644, "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/etharp.c"); ; return;;}} while(0);



  ethhdr = (struct eth_hdr *)p->payload;
  iphdr = (struct ip_hdr *)((u8_t*)ethhdr + (14 + 0));






  ((iphdr_src).addr = (iphdr->src).addr);


  if (!(((&iphdr_src)->addr & (&(netif->netmask))->addr) == ((&(netif->ip_addr))->addr & (&(netif->netmask))->addr))) {

    return;
  }

  do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x80U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("etharp_ip_input: updating ETHARP table.\n"); if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0);



  etharp_update_arp_entry(netif, &iphdr_src, &(ethhdr->src), 2);
}
# 687 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/etharp.c"
static void etharp_arp_input(struct netif *netif, struct eth_addr *ethaddr, struct pbuf *p)
{
  struct etharp_hdr *hdr;
  struct eth_hdr *ethhdr;

  ip_addr_t sipaddr, dipaddr;
  u8_t for_us;




  do { if (!((netif != ((void *)0)))) { Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "netif != NULL", 698, "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/etharp.c"); ; return;;}} while(0);



  if (p->len < ((14 + 0) + 28)) {
    do { if ( ((0x00U | 0x40U | 0x01) & 0x80U) && ((0x00U | 0x40U | 0x01) & 0x80U) && ((s16_t)((0x00U | 0x40U | 0x01) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("etharp_arp_input: packet dropped, too short (%""d""/%""d"")\n", p->tot_len, (s16_t)((14 + 0) + 28)); if ((0x00U | 0x40U | 0x01) & 0x08U) { while(1); } } } while(0)

                                   ;
    ++lwip_stats.etharp.lenerr;
    ++lwip_stats.etharp.drop;
    pbuf_free(p);
    return;
  }

  ethhdr = (struct eth_hdr *)p->payload;
  hdr = (struct etharp_hdr *)((u8_t*)ethhdr + (14 + 0));







  if ((hdr->hwtype != ((((1) & 0xff) << 8) | (((1) & 0xff00) >> 8))) ||
      (hdr->hwlen != 6) ||
      (hdr->protolen != sizeof(ip_addr_t)) ||
      (hdr->proto != ((((0x0800U) & 0xff) << 8) | (((0x0800U) & 0xff00) >> 8)))) {
    do { if ( ((0x00U | 0x40U | 0x01) & 0x80U) && ((0x00U | 0x40U | 0x01) & 0x80U) && ((s16_t)((0x00U | 0x40U | 0x01) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("etharp_arp_input: packet dropped, wrong hw type, hwlen, proto, protolen or ethernet type (%""u""/%""u""/%""u""/%""u"")\n", hdr->hwtype, hdr->hwlen, hdr->proto, hdr->protolen); if ((0x00U | 0x40U | 0x01) & 0x08U) { while(1); } } } while(0)

                                                          ;
    ++lwip_stats.etharp.proterr;
    ++lwip_stats.etharp.drop;
    pbuf_free(p);
    return;
  }
  ++lwip_stats.etharp.recv;
# 744 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/etharp.c"
  memcpy(&sipaddr,&hdr->sipaddr,sizeof(ip_addr_t));
  memcpy(&dipaddr,&hdr->dipaddr,sizeof(ip_addr_t));


  if (((&netif->ip_addr) == ((void *)0) || (&netif->ip_addr)->addr == ((u32_t)0x00000000UL))) {
    for_us = 0;
  } else {

    for_us = (u8_t)((&dipaddr)->addr == (&(netif->ip_addr))->addr);
  }






  etharp_update_arp_entry(netif, &sipaddr, &(hdr->shwaddr),
                   for_us ? 1 : 2);


  switch (hdr->opcode) {

  case ((((1) & 0xff) << 8) | (((1) & 0xff00) >> 8)):




    do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x80U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("etharp_arp_input: incoming ARP request\n"); if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0);

    if (for_us) {

      do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x80U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("etharp_arp_input: replying to ARP request for our IP address\n"); if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0);



      hdr->opcode = lwip_htons(2);

      memcpy(&hdr->dipaddr,&hdr->sipaddr,sizeof(ip_addr_t));
      memcpy(&hdr->sipaddr,&netif->ip_addr,sizeof(ip_addr_t));

      do { if(!((netif->hwaddr_len == 6))) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "netif->hwaddr_len must be the same as ETHARP_HWADDR_LEN for etharp!",
 785
# 784 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/etharp.c"
      ,
 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/etharp.c"
# 784 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/etharp.c"
      ); ; } while(0)
                                                           ;







      memcpy(&hdr->dhwaddr,&hdr->shwaddr,6);



      memcpy(&ethhdr->dest,&hdr->shwaddr,6);

      memcpy(&hdr->shwaddr,ethaddr,6);
      memcpy(&ethhdr->src,ethaddr,6);





      netif->linkoutput(netif, p);

    } else if (((&netif->ip_addr) == ((void *)0) || (&netif->ip_addr)->addr == ((u32_t)0x00000000UL))) {

      do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x80U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("etharp_arp_input: we are unconfigured, ARP request ignored.\n"); if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0);

    } else {

      do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x80U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("etharp_arp_input: ARP request was not for us.\n"); if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0);
    }
    break;
  case ((((2) & 0xff) << 8) | (((2) & 0xff00) >> 8)):

    do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x80U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("etharp_arp_input: incoming ARP reply\n"); if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0);







    break;
  default:
    do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x80U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("etharp_arp_input: ARP unknown opcode type %""d""\n", lwip_htons(hdr->opcode)); if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0);
    ++lwip_stats.etharp.err;
    break;
  }

  pbuf_free(p);
}




static err_t
etharp_output_to_arp_index(struct netif *netif, struct pbuf *q, u8_t arp_idx)
{
  do { if(!(arp_table[arp_idx].state >= ETHARP_STATE_STABLE)) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "arp_table[arp_idx].state >= ETHARP_STATE_STABLE",
 844
# 843 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/etharp.c"
  ,
 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/etharp.c"
# 843 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/etharp.c"
  ); ; } while(0)
                                                              ;



  if ((arp_table[arp_idx].state == ETHARP_STATE_STABLE) &&
      (arp_table[arp_idx].ctime >= (240 - 12))) {
    if (etharp_request(netif, &arp_table[arp_idx].ipaddr) == 0) {
      arp_table[arp_idx].state = ETHARP_STATE_STABLE_REREQUESTING;
    }
  }

  return etharp_send_ip(netif, q, (struct eth_addr*)(netif->hwaddr),
    &arp_table[arp_idx].ethaddr);
}
# 877 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/etharp.c"
err_t
etharp_output(struct netif *netif, struct pbuf *q, const ip_addr_t *ipaddr)
{
  struct eth_addr *dest;
  struct eth_addr mcastaddr;
  const ip_addr_t *dst_addr = ipaddr;

  do { if(!(netif != ((void *)0))) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "netif != NULL", 884, "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/etharp.c"); ; } while(0);
  do { if(!(q != ((void *)0))) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "q != NULL", 885, "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/etharp.c"); ; } while(0);
  do { if(!(ipaddr != ((void *)0))) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "ipaddr != NULL", 886, "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/etharp.c"); ; } while(0);


  if (pbuf_header(q, sizeof(struct eth_hdr)) != 0) {

    do { if ( ((0x00U | 0x40U | 0x02) & 0x80U) && ((0x00U | 0x40U | 0x02) & 0x80U) && ((s16_t)((0x00U | 0x40U | 0x02) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("etharp_output: could not allocate room for header.\n"); if ((0x00U | 0x40U | 0x02) & 0x08U) { while(1); } } } while(0)
                                                               ;
    ++lwip_stats.link.lenerr;
    return -2;
  }





  if (ip4_addr_isbroadcast((ipaddr)->addr, (netif))) {

    dest = (struct eth_addr *)&ethbroadcast;

  } else if ((((ipaddr)->addr & ((((0xf0000000UL) & 0xff) << 24) | (((0xf0000000UL) & 0xff00) << 8) | (((0xf0000000UL) & 0xff0000UL) >> 8) | (((0xf0000000UL) & 0xff000000UL) >> 24))) == ((((0xe0000000UL) & 0xff) << 24) | (((0xe0000000UL) & 0xff00) << 8) | (((0xe0000000UL) & 0xff0000UL) >> 8) | (((0xe0000000UL) & 0xff000000UL) >> 24)))) {

    mcastaddr.addr[0] = 0x01;
    mcastaddr.addr[1] = 0x00;
    mcastaddr.addr[2] = 0x5e;
    mcastaddr.addr[3] = (((u8_t*)(ipaddr))[1]) & 0x7f;
    mcastaddr.addr[4] = (((u8_t*)(ipaddr))[2]);
    mcastaddr.addr[5] = (((u8_t*)(ipaddr))[3]);

    dest = &mcastaddr;

  } else {
    s8_t i;


    if (!(((ipaddr)->addr & (&(netif->netmask))->addr) == ((&(netif->ip_addr))->addr & (&(netif->netmask))->addr)) &&
        !(((ipaddr)->addr & ((((0xffff0000UL) & 0xff) << 24) | (((0xffff0000UL) & 0xff00) << 8) | (((0xffff0000UL) & 0xff0000UL) >> 8) | (((0xffff0000UL) & 0xff000000UL) >> 24))) == ((((0xa9fe0000UL) & 0xff) << 24) | (((0xa9fe0000UL) & 0xff00) << 8) | (((0xa9fe0000UL) & 0xff0000UL) >> 8) | (((0xa9fe0000UL) & 0xff000000UL) >> 24)))) {
# 931 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/etharp.c"
      {

        if (!((&netif->gw) == ((void *)0) || (&netif->gw)->addr == ((u32_t)0x00000000UL))) {

          dst_addr = &(netif->gw);

        } else {

          return -4;
        }
      }
    }






        if ((arp_table[etharp_cached_entry].state >= ETHARP_STATE_STABLE) &&
            (((dst_addr)->addr == (&arp_table[etharp_cached_entry].ipaddr)->addr))) {

          ++lwip_stats.etharp.cachehit;
          return etharp_output_to_arp_index(netif, q, etharp_cached_entry);
        }







    for (i = 0; i < 10; i++) {
      if ((arp_table[i].state >= ETHARP_STATE_STABLE) &&
          (((dst_addr)->addr == (&arp_table[i].ipaddr)->addr))) {

        (etharp_cached_entry = (i));
        return etharp_output_to_arp_index(netif, q, i);
      }
    }


    return etharp_query(netif, dst_addr, q);
  }




  return etharp_send_ip(netif, q, (struct eth_addr*)(netif->hwaddr), dest);
}
# 1014 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/etharp.c"
err_t
etharp_query(struct netif *netif, const ip_addr_t *ipaddr, struct pbuf *q)
{
  struct eth_addr * srcaddr = (struct eth_addr *)netif->hwaddr;
  err_t result = -1;
  s8_t i;


  if (ip4_addr_isbroadcast((ipaddr)->addr, (netif)) ||
      (((ipaddr)->addr & ((((0xf0000000UL) & 0xff) << 24) | (((0xf0000000UL) & 0xff00) << 8) | (((0xf0000000UL) & 0xff0000UL) >> 8) | (((0xf0000000UL) & 0xff000000UL) >> 24))) == ((((0xe0000000UL) & 0xff) << 24) | (((0xe0000000UL) & 0xff00) << 8) | (((0xe0000000UL) & 0xff0000UL) >> 8) | (((0xe0000000UL) & 0xff000000UL) >> 24))) ||
      ((ipaddr) == ((void *)0) || (ipaddr)->addr == ((u32_t)0x00000000UL))) {
    do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x80U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("etharp_query: will not add non-unicast IP address to ARP cache\n"); if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0);
    return -14;
  }


  i = etharp_find_entry(ipaddr, 1);


  if (i < 0) {
    do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x80U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("etharp_query: could not create ARP entry\n"); if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0);
    if (q) {
      do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x80U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("etharp_query: packet dropped\n"); if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0);
      ++lwip_stats.etharp.memerr;
    }
    return (err_t)i;
  }


  if (arp_table[i].state == ETHARP_STATE_EMPTY) {
    arp_table[i].state = ETHARP_STATE_PENDING;
  }


  do { if(!(((arp_table[i].state == ETHARP_STATE_PENDING) || (arp_table[i].state >= ETHARP_STATE_STABLE)))) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "arp_table[i].state == PENDING or STABLE",

 1050
# 1048 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/etharp.c"
  ,

 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/etharp.c"
# 1048 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/etharp.c"
  ); ; } while(0)

                                                ;


  if ((arp_table[i].state == ETHARP_STATE_PENDING) || (q == ((void *)0))) {

    result = etharp_request(netif, ipaddr);
    if (result != 0) {




    }
    if (q == ((void *)0)) {
      return result;
    }
  }


  do { if(!(q != ((void *)0))) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "q != NULL", 1068, "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/etharp.c"); ; } while(0);

  if (arp_table[i].state >= ETHARP_STATE_STABLE) {

    (etharp_cached_entry = (i));

    result = etharp_send_ip(netif, q, srcaddr, &(arp_table[i].ethaddr));

  } else if (arp_table[i].state == ETHARP_STATE_PENDING) {

    struct pbuf *p;
    int copy_needed = 0;



    p = q;
    while (p) {
      do { if(!((p->len != p->tot_len) || (p->next == 0))) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "no packet queues allowed!", 1085, "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/etharp.c"); ; } while(0);
      if(p->type != PBUF_ROM) {
        copy_needed = 1;
        break;
      }
      p = p->next;
    }
    if(copy_needed) {

      p = pbuf_alloc(PBUF_RAW, p->tot_len, PBUF_RAM);
      if(p != ((void *)0)) {
        if (pbuf_copy(p, q) != 0) {
          pbuf_free(p);
          p = ((void *)0);
        }
      }
    } else {

      p = q;
      pbuf_ref(p);
    }

    if (p != ((void *)0)) {
# 1138 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/etharp.c"
      if (arp_table[i].q != ((void *)0)) {
        do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x80U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("etharp_query: dropped previously queued packet %p for ARP entry %""d""\n", (void *)q, (s16_t)i); if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0);
        pbuf_free(arp_table[i].q);
      }
      arp_table[i].q = p;
      result = 0;
      do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x80U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("etharp_query: queued packet %p on ARP entry %""d""\n", (void *)q, (s16_t)i); if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0);

    } else {
      ++lwip_stats.etharp.memerr;
      do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x80U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("etharp_query: could not queue a copy of PBUF_REF packet %p (out of memory)\n", (void *)q); if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0);
      result = -1;
    }
  }
  return result;
}
# 1171 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/etharp.c"
static

err_t
etharp_raw(struct netif *netif, const struct eth_addr *ethsrc_addr,
           const struct eth_addr *ethdst_addr,
           const struct eth_addr *hwsrc_addr, const ip_addr_t *ipsrc_addr,
           const struct eth_addr *hwdst_addr, const ip_addr_t *ipdst_addr,
           const u16_t opcode)
{
  struct pbuf *p;
  err_t result = 0;
  struct eth_hdr *ethhdr;
  struct etharp_hdr *hdr;




  do { if(!(netif != ((void *)0))) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "netif != NULL", 1188, "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/etharp.c"); ; } while(0);


  p = pbuf_alloc(PBUF_RAW, ((14 + 0) + 28), PBUF_RAM);

  if (p == ((void *)0)) {
    do { if ( ((0x00U | 0x40U | 0x02) & 0x80U) && ((0x00U | 0x40U | 0x02) & 0x80U) && ((s16_t)((0x00U | 0x40U | 0x02) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("etharp_raw: could not allocate pbuf for ARP request.\n"); if ((0x00U | 0x40U | 0x02) & 0x08U) { while(1); } } } while(0)
                                                                 ;
    ++lwip_stats.etharp.memerr;
    return -1;
  }
  do { if(!((p->len >= ((14 + 0) + 28)))) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "check that first pbuf can hold struct etharp_hdr",
 1200
# 1199 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/etharp.c"
  ,
 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/etharp.c"
# 1199 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/etharp.c"
  ); ; } while(0)
                                               ;

  ethhdr = (struct eth_hdr *)p->payload;
  hdr = (struct etharp_hdr *)((u8_t*)ethhdr + (14 + 0));
  do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x80U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("etharp_raw: sending raw ARP packet.\n"); if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0);
  hdr->opcode = lwip_htons(opcode);

  do { if(!((netif->hwaddr_len == 6))) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "netif->hwaddr_len must be the same as ETHARP_HWADDR_LEN for etharp!",
 1208
# 1207 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/etharp.c"
  ,
 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/etharp.c"
# 1207 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/etharp.c"
  ); ; } while(0)
                                                       ;







  memcpy(&hdr->shwaddr,hwsrc_addr,6);
  memcpy(&hdr->dhwaddr,hwdst_addr,6);




  memcpy(&ethhdr->dest,ethdst_addr,6);

  memcpy(&ethhdr->src,ethsrc_addr,6);


  memcpy(&hdr->sipaddr,ipsrc_addr,sizeof(ip_addr_t));
  memcpy(&hdr->dipaddr,ipdst_addr,sizeof(ip_addr_t));

  hdr->hwtype = ((((1) & 0xff) << 8) | (((1) & 0xff00) >> 8));
  hdr->proto = ((((0x0800U) & 0xff) << 8) | (((0x0800U) & 0xff00) >> 8));

  hdr->hwlen = 6;
  hdr->protolen = sizeof(ip_addr_t);

  ethhdr->type = ((((0x0806U) & 0xff) << 8) | (((0x0806U) & 0xff00) >> 8));

  result = netif->linkoutput(netif, p);
  ++lwip_stats.etharp.xmit;

  pbuf_free(p);
  p = ((void *)0);


  return result;
}
# 1257 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/etharp.c"
err_t
etharp_request(struct netif *netif, const ip_addr_t *ipaddr)
{
  do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x80U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("etharp_request: sending ARP request.\n"); if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0);
  return etharp_raw(netif, (struct eth_addr *)netif->hwaddr, &ethbroadcast,
                    (struct eth_addr *)netif->hwaddr, &netif->ip_addr, &ethzero,
                    ipaddr, 1);
}
# 1275 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/etharp.c"
err_t
ethernet_input(struct pbuf *p, struct netif *netif)
{
  struct eth_hdr* ethhdr;
  u16_t type;

  s16_t ip_hdr_offset = (14 + 0);


  if (p->len <= (14 + 0)) {

    ++lwip_stats.etharp.proterr;
    ++lwip_stats.etharp.drop;
    goto free_and_return;
  }


  ethhdr = (struct eth_hdr *)p->payload;
  do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x80U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("ethernet_input: dest:%""02x"":%""02x"":%""02x"":%""02x"":%""02x"":%""02x"", src:%""02x"":%""02x"":%""02x"":%""02x"":%""02x"":%""02x"", type:%""x""\n", (unsigned)ethhdr->dest.addr[0], (unsigned)ethhdr->dest.addr[1], (unsigned)ethhdr->dest.addr[2], (unsigned)ethhdr->dest.addr[3], (unsigned)ethhdr->dest.addr[4], (unsigned)ethhdr->dest.addr[5], (unsigned)ethhdr->src.addr[0], (unsigned)ethhdr->src.addr[1], (unsigned)ethhdr->src.addr[2], (unsigned)ethhdr->src.addr[3], (unsigned)ethhdr->src.addr[4], (unsigned)ethhdr->src.addr[5], (unsigned)lwip_htons(ethhdr->type)); if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0)





                                    ;

  type = ethhdr->type;
# 1331 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/etharp.c"
  if (ethhdr->dest.addr[0] & 1) {

    if (ethhdr->dest.addr[0] == 0x01) {
      if ((ethhdr->dest.addr[1] == 0x00) &&
          (ethhdr->dest.addr[2] == 0x5e)) {

        p->flags |= 0x10U;
      }
    } else if ((memcmp((&ethhdr->dest)->addr, (&ethbroadcast)->addr, 6) == 0)) {

      p->flags |= 0x08U;
    }
  }

  switch (type) {


    case ((((0x0800U) & 0xff) << 8) | (((0x0800U) & 0xff00) >> 8)):
      if (!(netif->flags & 0x20U)) {
        goto free_and_return;
      }


      etharp_ip_input(netif, p);


      if(pbuf_header(p, -ip_hdr_offset)) {
        do { if(!(0)) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "Can't move over header in packet", 1358, "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/etharp.c"); ; } while(0);
        goto free_and_return;
      } else {

        ip_input(p, netif);
      }
      break;

    case ((((0x0806U) & 0xff) << 8) | (((0x0806U) & 0xff00) >> 8)):
      if (!(netif->flags & 0x20U)) {
        goto free_and_return;
      }

      etharp_arp_input(netif, (struct eth_addr*)(netif->hwaddr), p);
      break;
# 1384 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/netif/etharp.c"
    default:
      ++lwip_stats.etharp.proterr;
      ++lwip_stats.etharp.drop;
      goto free_and_return;
  }



  return 0;

free_and_return:
  pbuf_free(p);
  return 0;
}
