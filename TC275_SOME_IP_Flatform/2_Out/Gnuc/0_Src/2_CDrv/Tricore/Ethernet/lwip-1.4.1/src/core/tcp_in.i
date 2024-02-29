# 1 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_in.c"
# 1 "D:\\00.Workspace\\TC275\\SKKU_ECU_SOMEIP\\TC275_SOME_IP_Flatform//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_in.c"
# 44 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_in.c"
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
# 45 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_in.c" 2



# 1 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/tcp_impl.h" 1
# 39 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/tcp_impl.h"
# 1 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/tcp.h" 1
# 39 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/tcp.h"
# 1 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/mem.h" 1
# 76 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/mem.h"
typedef u16_t mem_size_t;
# 88 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/mem.h"
void mem_init(void);
void *mem_trim(void *mem, mem_size_t size);

void *mem_malloc(mem_size_t size);
void *mem_calloc(mem_size_t count, mem_size_t size);
void mem_free(void *mem);
# 40 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/tcp.h" 2
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
# 37 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/ipv4/lwip/ip.h"
# 1 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/def.h" 1
# 99 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/def.h"
u16_t lwip_htons(u16_t x);
u16_t lwip_ntohs(u16_t x);
u32_t lwip_htonl(u32_t x);
u32_t lwip_ntohl(u32_t x);
# 38 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/ipv4/lwip/ip.h" 2

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
# 40 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/ipv4/lwip/ip.h" 2

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
# 40 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/tcp_impl.h" 2
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
# 49 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_in.c" 2




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
# 54 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_in.c" 2
# 1 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/ipv4/lwip/inet_chksum.h" 1
# 73 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/ipv4/lwip/inet_chksum.h"
u16_t inet_chksum(void *dataptr, u16_t len);
u16_t inet_chksum_pbuf(struct pbuf *p);
u16_t inet_chksum_pseudo(struct pbuf *p,
       ip_addr_t *src, ip_addr_t *dest,
       u8_t proto, u16_t proto_len);
u16_t inet_chksum_pseudo_partial(struct pbuf *p,
       ip_addr_t *src, ip_addr_t *dest,
       u8_t proto, u16_t proto_len, u16_t chksum_len);

u16_t lwip_chksum_copy(void *dst, const void *src, u16_t len);
# 55 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_in.c" 2
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
# 56 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_in.c" 2
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
# 57 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_in.c" 2
# 1 "./0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/port/include/arch/perf.h" 1
# 58 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_in.c" 2




static struct tcp_seg inseg;
static struct tcp_hdr *tcphdr;
static struct ip_hdr *iphdr;
static u32_t seqno, ackno;
static u8_t flags;
static u16_t tcplen;

static u8_t recv_flags;
static struct pbuf *recv_data;

struct tcp_pcb *tcp_input_pcb;


static err_t tcp_process(struct tcp_pcb *pcb);
static void tcp_receive(struct tcp_pcb *pcb);
static void tcp_parseopt(struct tcp_pcb *pcb);

static err_t tcp_listen_input(struct tcp_pcb_listen *pcb);
static err_t tcp_timewait_input(struct tcp_pcb *pcb);
# 91 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_in.c"
void
tcp_input(struct pbuf *p, struct netif *inp)
{
  struct tcp_pcb *pcb, *prev;
  struct tcp_pcb_listen *lpcb;




  u8_t hdrlen;
  err_t err;

  ;

  ++lwip_stats.tcp.recv;
  ;

  iphdr = (struct ip_hdr *)p->payload;
  tcphdr = (struct tcp_hdr *)((u8_t *)p->payload + ((iphdr)->_v_hl & 0x0f) * 4);






  if (pbuf_header(p, -((s16_t)(((iphdr)->_v_hl & 0x0f) * 4))) || (p->tot_len < sizeof(struct tcp_hdr))) {

    do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("tcp_input: short packet (%""u"" bytes) discarded\n", p->tot_len); if ((0x00U) & 0x08U) { while(1); } } } while(0);
    ++lwip_stats.tcp.lenerr;
    goto dropped;
  }


  if (ip4_addr_isbroadcast((&current_iphdr_dest)->addr, (inp)) ||
      (((&current_iphdr_dest)->addr & ((((0xf0000000UL) & 0xff) << 24) | (((0xf0000000UL) & 0xff00) << 8) | (((0xf0000000UL) & 0xff0000UL) >> 8) | (((0xf0000000UL) & 0xff000000UL) >> 24))) == ((((0xe0000000UL) & 0xff) << 24) | (((0xe0000000UL) & 0xff00) << 8) | (((0xe0000000UL) & 0xff0000UL) >> 8) | (((0xe0000000UL) & 0xff000000UL) >> 24)))) {
    ++lwip_stats.tcp.proterr;
    goto dropped;
  }



  if (inet_chksum_pseudo(p, (&current_iphdr_src), (&current_iphdr_dest),
      6, p->tot_len) != 0) {
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("tcp_input: packet discarded due to failing checksum 0x%04""x""\n", inet_chksum_pseudo(p, (&current_iphdr_src), (&current_iphdr_dest), 6, p->tot_len)); if ((0x00U) & 0x08U) { while(1); } } } while(0)

                                 ;



    ++lwip_stats.tcp.chkerr;
    goto dropped;
  }




  hdrlen = (lwip_ntohs((tcphdr)->_hdrlen_rsvd_flags) >> 12);
  if(pbuf_header(p, -(hdrlen * 4))){

    do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("tcp_input: short packet\n"); if ((0x00U) & 0x08U) { while(1); } } } while(0);
    ++lwip_stats.tcp.lenerr;
    goto dropped;
  }


  tcphdr->src = lwip_ntohs(tcphdr->src);
  tcphdr->dest = lwip_ntohs(tcphdr->dest);
  seqno = tcphdr->seqno = lwip_ntohl(tcphdr->seqno);
  ackno = tcphdr->ackno = lwip_ntohl(tcphdr->ackno);
  tcphdr->wnd = lwip_ntohs(tcphdr->wnd);

  flags = (lwip_ntohs((tcphdr)->_hdrlen_rsvd_flags) & 0x3fU);
  tcplen = p->tot_len + ((flags & (0x01U | 0x02U)) ? 1 : 0);



  prev = ((void *)0);


  for(pcb = tcp_active_pcbs; pcb != ((void *)0); pcb = pcb->next) {
    do { if(!(pcb->state != CLOSED)) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "tcp_input: active pcb->state != CLOSED", 171, "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_in.c"); ; } while(0);
    do { if(!(pcb->state != TIME_WAIT)) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "tcp_input: active pcb->state != TIME-WAIT", 172, "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_in.c"); ; } while(0);
    do { if(!(pcb->state != LISTEN)) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "tcp_input: active pcb->state != LISTEN", 173, "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_in.c"); ; } while(0);
    if (pcb->remote_port == tcphdr->src &&
       pcb->local_port == tcphdr->dest &&
       ((&(pcb->remote_ip))->addr == (&current_iphdr_src)->addr) &&
       ((&(pcb->local_ip))->addr == (&current_iphdr_dest)->addr)) {




      do { if(!(pcb->next != pcb)) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "tcp_input: pcb->next != pcb (before cache)", 182, "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_in.c"); ; } while(0);
      if (prev != ((void *)0)) {
        prev->next = pcb->next;
        pcb->next = tcp_active_pcbs;
        tcp_active_pcbs = pcb;
      }
      do { if(!(pcb->next != pcb)) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "tcp_input: pcb->next != pcb (after cache)", 188, "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_in.c"); ; } while(0);
      break;
    }
    prev = pcb;
  }

  if (pcb == ((void *)0)) {


    for(pcb = tcp_tw_pcbs; pcb != ((void *)0); pcb = pcb->next) {
      do { if(!(pcb->state == TIME_WAIT)) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "tcp_input: TIME-WAIT pcb->state == TIME-WAIT", 198, "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_in.c"); ; } while(0);
      if (pcb->remote_port == tcphdr->src &&
         pcb->local_port == tcphdr->dest &&
         ((&(pcb->remote_ip))->addr == (&current_iphdr_src)->addr) &&
         ((&(pcb->local_ip))->addr == (&current_iphdr_dest)->addr)) {



        do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("tcp_input: packed for TIME_WAITing connection.\n"); if ((0x00U) & 0x08U) { while(1); } } } while(0);
        tcp_timewait_input(pcb);
        pbuf_free(p);
        return;
      }
    }



    prev = ((void *)0);
    for(lpcb = tcp_listen_pcbs.listen_pcbs; lpcb != ((void *)0); lpcb = lpcb->next) {
      if (lpcb->local_port == tcphdr->dest) {
# 228 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_in.c"
        if (((&(lpcb->local_ip))->addr == (&current_iphdr_dest)->addr) ||
            ((&(lpcb->local_ip)) == ((void *)0) || (&(lpcb->local_ip))->addr == ((u32_t)0x00000000UL))) {

          break;
        }

      }
      prev = (struct tcp_pcb *)lpcb;
    }
# 245 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_in.c"
    if (lpcb != ((void *)0)) {



      if (prev != ((void *)0)) {
        ((struct tcp_pcb_listen *)prev)->next = lpcb->next;

        lpcb->next = tcp_listen_pcbs.listen_pcbs;

        tcp_listen_pcbs.listen_pcbs = lpcb;
      }

      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("tcp_input: packed for LISTENing connection.\n"); if ((0x00U) & 0x08U) { while(1); } } } while(0);
      tcp_listen_input(lpcb);
      pbuf_free(p);
      return;
    }
  }
# 271 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_in.c"
  if (pcb != ((void *)0)) {
# 280 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_in.c"
    inseg.next = ((void *)0);
    inseg.len = p->tot_len;
    inseg.p = p;
    inseg.tcphdr = tcphdr;

    recv_data = ((void *)0);
    recv_flags = 0;

    if (flags & 0x08U) {
      p->flags |= 0x01U;
    }


    if (pcb->refused_data != ((void *)0)) {
      if ((tcp_process_refused_data(pcb) == -10) ||
        ((pcb->refused_data != ((void *)0)) && (tcplen > 0))) {


        ++lwip_stats.tcp.drop;
        ;
        goto aborted;
      }
    }
    tcp_input_pcb = pcb;
    err = tcp_process(pcb);


    if (err != -10) {
      if (recv_flags & (u8_t)0x08U) {




        do { if((pcb->errf) != ((void *)0)) (pcb->errf)((pcb->callback_arg),(-11)); } while (0);
        tcp_pcb_remove(&tcp_active_pcbs, pcb);
        memp_free(MEMP_TCP_PCB, pcb);
      } else if (recv_flags & (u8_t)0x10U) {


        if (!(pcb->flags & ((u8_t)0x10U))) {



          do { if((pcb->errf) != ((void *)0)) (pcb->errf)((pcb->callback_arg),(-12)); } while (0);
        }
        tcp_pcb_remove(&tcp_active_pcbs, pcb);
        memp_free(MEMP_TCP_PCB, pcb);
      } else {
        err = 0;



        if (pcb->acked > 0) {
          do { if((pcb)->sent != ((void *)0)) (err) = (pcb)->sent((pcb)->callback_arg,(pcb),(pcb->acked)); else (err) = 0; } while (0);
          if (err == -10) {
            goto aborted;
          }
        }

        if (recv_data != ((void *)0)) {
          do { if(!(pcb->refused_data == ((void *)0))) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "pcb->refused_data == NULL", 340, "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_in.c"); ; } while(0);
          if (pcb->flags & ((u8_t)0x10U)) {


            pbuf_free(recv_data);
            tcp_abort(pcb);
            goto aborted;
          }


          do { if((pcb)->recv != ((void *)0)) { (err) = (pcb)->recv((pcb)->callback_arg,(pcb),(recv_data),(0)); } else { (err) = tcp_recv_null(((void *)0), (pcb), (recv_data), (0)); } } while (0);
          if (err == -10) {
            goto aborted;
          }


          if (err != 0) {
            pcb->refused_data = recv_data;
            do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("tcp_input: keep incoming packet, because pcb is \"full\"\n"); if ((0x00U) & 0x08U) { while(1); } } } while(0);
          }
        }



        if (recv_flags & (u8_t)0x20U) {
          if (pcb->refused_data != ((void *)0)) {

            pcb->refused_data->flags |= 0x20U;
          } else {


            if (pcb->rcv_wnd != (4 * (1500 - 40))) {
              pcb->rcv_wnd++;
            }
            do { if(((pcb)->recv != ((void *)0))) { (err) = (pcb)->recv((pcb)->callback_arg,(pcb),((void *)0),0); } else { (err) = 0; } } while (0);
            if (err == -10) {
              goto aborted;
            }
          }
        }

        tcp_input_pcb = ((void *)0);

        tcp_output(pcb);





      }
    }


aborted:
    tcp_input_pcb = ((void *)0);
    recv_data = ((void *)0);


    if (inseg.p != ((void *)0))
    {
      pbuf_free(inseg.p);
      inseg.p = ((void *)0);
    }
  } else {



    do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("tcp_input: no PCB match found, resetting.\n"); if ((0x00U) & 0x08U) { while(1); } } } while(0);
    if (!((lwip_ntohs((tcphdr)->_hdrlen_rsvd_flags) & 0x3fU) & 0x04U)) {
      ++lwip_stats.tcp.proterr;
      ++lwip_stats.tcp.drop;
      tcp_rst(ackno, seqno + tcplen,
        (&current_iphdr_dest), (&current_iphdr_src),
        tcphdr->dest, tcphdr->src);
    }
    pbuf_free(p);
  }

  do { if(!(1)) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "tcp_input: tcp_pcbs_sane()", 418, "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_in.c"); ; } while(0);
  ;
  return;
dropped:
  ++lwip_stats.tcp.drop;
  ;
  pbuf_free(p);
}
# 439 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_in.c"
static err_t
tcp_listen_input(struct tcp_pcb_listen *pcb)
{
  struct tcp_pcb *npcb;
  err_t rc;

  if (flags & 0x04U) {

    return 0;
  }



  if (flags & 0x10U) {


    do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("tcp_listen_input: ACK in LISTEN, sending reset\n"); if ((0x00U) & 0x08U) { while(1); } } } while(0);
    tcp_rst(ackno, seqno + tcplen, (&current_iphdr_dest),
      (&current_iphdr_src), tcphdr->dest, tcphdr->src);
  } else if (flags & 0x02U) {
    do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("TCP connection request %""u"" -> %""u"".\n", tcphdr->src, tcphdr->dest); if ((0x00U) & 0x08U) { while(1); } } } while(0);

    if (pcb->accepts_pending >= pcb->backlog) {
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("tcp_listen_input: listen backlog exceeded for port %""u""\n", tcphdr->dest); if ((0x00U) & 0x08U) { while(1); } } } while(0);
      return -10;
    }

    npcb = tcp_alloc(pcb->prio);



    if (npcb == ((void *)0)) {
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("tcp_listen_input: could not allocate PCB\n"); if ((0x00U) & 0x08U) { while(1); } } } while(0);
      ++lwip_stats.tcp.memerr;
      return -1;
    }

    pcb->accepts_pending++;


    ((npcb->local_ip).addr = (current_iphdr_dest).addr);
    npcb->local_port = pcb->local_port;
    ((npcb->remote_ip).addr = (current_iphdr_src).addr);
    npcb->remote_port = tcphdr->src;
    npcb->state = SYN_RCVD;
    npcb->rcv_nxt = seqno + 1;
    npcb->rcv_ann_right_edge = npcb->rcv_nxt;
    npcb->snd_wnd = tcphdr->wnd;
    npcb->snd_wnd_max = tcphdr->wnd;
    npcb->ssthresh = npcb->snd_wnd;
    npcb->snd_wl1 = seqno - 1;
    npcb->callback_arg = pcb->callback_arg;

    npcb->accept = pcb->accept;


    npcb->so_options = pcb->so_options & (0x04U|0x08U|0x80U );


    do { do { (npcb)->next = *&tcp_active_pcbs; *(&tcp_active_pcbs) = (npcb); tcp_timer_needed(); } while (0); tcp_active_pcbs_changed = 1; } while (0);


    tcp_parseopt(npcb);

    npcb->mss = tcp_eff_send_mss(npcb->mss, &(npcb->remote_ip));


    ;


    rc = tcp_enqueue_flags(npcb, 0x02U | 0x10U);
    if (rc != 0) {
      tcp_abandon(npcb, 0);
      return rc;
    }
    return tcp_output(npcb);
  }
  return 0;
}
# 528 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_in.c"
static err_t
tcp_timewait_input(struct tcp_pcb *pcb)
{





  if (flags & 0x04U) {
    return 0;
  }

  if (flags & 0x02U) {


    if ((((s32_t)((u32_t)(seqno) - (u32_t)(pcb->rcv_nxt)) >= 0) && ((s32_t)((u32_t)(seqno) - (u32_t)(pcb->rcv_nxt+pcb->rcv_wnd)) <= 0))) {

      tcp_rst(ackno, seqno + tcplen, (&current_iphdr_dest), (&current_iphdr_src),
        tcphdr->dest, tcphdr->src);
      return 0;
    }
  } else if (flags & 0x01U) {


    pcb->tmr = tcp_ticks;
  }

  if ((tcplen > 0)) {

    pcb->flags |= ((u8_t)0x02U);
    return tcp_output(pcb);
  }
  return 0;
}
# 574 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_in.c"
static err_t
tcp_process(struct tcp_pcb *pcb)
{
  struct tcp_seg *rseg;
  u8_t acceptable = 0;
  err_t err;

  err = 0;


  if (flags & 0x04U) {

    if (pcb->state == SYN_SENT) {
      if (ackno == pcb->snd_nxt) {
        acceptable = 1;
      }
    } else {
      if ((((s32_t)((u32_t)(seqno) - (u32_t)(pcb->rcv_nxt)) >= 0) && ((s32_t)((u32_t)(seqno) - (u32_t)(pcb->rcv_nxt+pcb->rcv_wnd)) <= 0))
                                                    ) {
        acceptable = 1;
      }
    }

    if (acceptable) {
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("tcp_process: Connection RESET\n"); if ((0x00U) & 0x08U) { while(1); } } } while(0);
      do { if(!(pcb->state != CLOSED)) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "tcp_input: pcb->state != CLOSED", 599, "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_in.c"); ; } while(0);
      recv_flags |= (u8_t)0x08U;
      pcb->flags &= ~((u8_t)0x01U);
      return -11;
    } else {
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("tcp_process: unacceptable reset seqno %""u"" rcv_nxt %""u""\n", seqno, pcb->rcv_nxt); if ((0x00U) & 0x08U) { while(1); } } } while(0)
                            ;
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("tcp_process: unacceptable reset seqno %""u"" rcv_nxt %""u""\n", seqno, pcb->rcv_nxt); if ((0x00U) & 0x08U) { while(1); } } } while(0)
                            ;
      return 0;
    }
  }

  if ((flags & 0x02U) && (pcb->state != SYN_SENT && pcb->state != SYN_RCVD)) {

    do { (pcb)->flags |= ((u8_t)0x02U); } while (0);
    return 0;
  }

  if ((pcb->flags & ((u8_t)0x10U)) == 0) {

    pcb->tmr = tcp_ticks;
  }
  pcb->keep_cnt_sent = 0;

  tcp_parseopt(pcb);


  switch (pcb->state) {
  case SYN_SENT:
    do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("SYN-SENT: ackno %""u"" pcb->snd_nxt %""u"" unacked %""u""\n", ackno, pcb->snd_nxt, lwip_ntohl(pcb->unacked->tcphdr->seqno)); if ((0x00U) & 0x08U) { while(1); } } } while(0)
                                                       ;

    if ((flags & 0x10U) && (flags & 0x02U)
        && ackno == lwip_ntohl(pcb->unacked->tcphdr->seqno) + 1) {
      pcb->snd_buf++;
      pcb->rcv_nxt = seqno + 1;
      pcb->rcv_ann_right_edge = pcb->rcv_nxt;
      pcb->lastack = ackno;
      pcb->snd_wnd = tcphdr->wnd;
      pcb->snd_wnd_max = tcphdr->wnd;
      pcb->snd_wl1 = seqno - 1;
      pcb->state = ESTABLISHED;


      pcb->mss = tcp_eff_send_mss(pcb->mss, &(pcb->remote_ip));




      pcb->ssthresh = pcb->mss * 10;

      pcb->cwnd = ((pcb->cwnd == 1) ? (pcb->mss * 2) : pcb->mss);
      do { if(!((pcb->snd_queuelen > 0))) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "pcb->snd_queuelen > 0", 652, "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_in.c"); ; } while(0);
      --pcb->snd_queuelen;
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("tcp_process: SYN-SENT --queuelen %""u""\n", (u16_t)pcb->snd_queuelen); if ((0x00U) & 0x08U) { while(1); } } } while(0);
      rseg = pcb->unacked;
      pcb->unacked = rseg->next;
      tcp_seg_free(rseg);



      if(pcb->unacked == ((void *)0))
        pcb->rtime = -1;
      else {
        pcb->rtime = 0;
        pcb->nrtx = 0;
      }



      do { if((pcb)->connected != ((void *)0)) (err) = (pcb)->connected((pcb)->callback_arg,(pcb),(0)); else (err) = 0; } while (0);
      if (err == -10) {
        return -10;
      }
      do { (pcb)->flags |= ((u8_t)0x02U); } while (0);
    }

    else if (flags & 0x10U) {

      tcp_rst(ackno, seqno + tcplen, (&current_iphdr_dest), (&current_iphdr_src),
        tcphdr->dest, tcphdr->src);
    }
    break;
  case SYN_RCVD:
    if (flags & 0x10U) {

      if ((((s32_t)((u32_t)(ackno) - (u32_t)(pcb->lastack+1)) >= 0) && ((s32_t)((u32_t)(ackno) - (u32_t)(pcb->snd_nxt)) <= 0))) {
        u16_t old_cwnd;
        pcb->state = ESTABLISHED;
        do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("TCP connection established %""u"" -> %""u"".\n", inseg.tcphdr->src, inseg.tcphdr->dest); if ((0x00U) & 0x08U) { while(1); } } } while(0);

        do { if(!(pcb->accept != ((void *)0))) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "pcb->accept != NULL", 691, "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_in.c"); ; } while(0);


        do { if((pcb)->accept != ((void *)0)) (err) = (pcb)->accept((pcb)->callback_arg,(pcb),(0)); else (err) = -14; } while (0);
        if (err != 0) {



          if (err != -10) {
            tcp_abort(pcb);
          }
          return -10;
        }
        old_cwnd = pcb->cwnd;


        tcp_receive(pcb);


        if (pcb->acked != 0) {
          pcb->acked--;
        }

        pcb->cwnd = ((old_cwnd == 1) ? (pcb->mss * 2) : pcb->mss);

        if (recv_flags & (u8_t)0x20U) {
          do { (pcb)->flags |= ((u8_t)0x02U); } while (0);
          pcb->state = CLOSE_WAIT;
        }
      } else {

        tcp_rst(ackno, seqno + tcplen, (&current_iphdr_dest), (&current_iphdr_src),
                tcphdr->dest, tcphdr->src);
      }
    } else if ((flags & 0x02U) && (seqno == pcb->rcv_nxt - 1)) {

      tcp_rexmit(pcb);
    }
    break;
  case CLOSE_WAIT:

  case ESTABLISHED:
    tcp_receive(pcb);
    if (recv_flags & (u8_t)0x20U) {
      do { (pcb)->flags |= ((u8_t)0x02U); } while (0);
      pcb->state = CLOSE_WAIT;
    }
    break;
  case FIN_WAIT_1:
    tcp_receive(pcb);
    if (recv_flags & (u8_t)0x20U) {
      if ((flags & 0x10U) && (ackno == pcb->snd_nxt)) {
        do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("TCP connection closed: FIN_WAIT_1 %""u"" -> %""u"".\n", inseg.tcphdr->src, inseg.tcphdr->dest); if ((0x00U) & 0x08U) { while(1); } } } while(0)
                                                                                                               ;
        do { (pcb)->flags |= ((u8_t)0x02U); } while (0);
        tcp_pcb_purge(pcb);
        do { do { if(*(&tcp_active_pcbs) == (pcb)) { (*(&tcp_active_pcbs)) = (*&tcp_active_pcbs)->next; } else { for(tcp_tmp_pcb = *&tcp_active_pcbs; tcp_tmp_pcb != ((void *)0); tcp_tmp_pcb = tcp_tmp_pcb->next) { if(tcp_tmp_pcb->next == (pcb)) { tcp_tmp_pcb->next = (pcb)->next; break; } } } (pcb)->next = ((void *)0); } while(0); tcp_active_pcbs_changed = 1; } while (0);
        pcb->state = TIME_WAIT;
        do { (pcb)->next = *&tcp_tw_pcbs; *(&tcp_tw_pcbs) = (pcb); tcp_timer_needed(); } while (0);
      } else {
        do { (pcb)->flags |= ((u8_t)0x02U); } while (0);
        pcb->state = CLOSING;
      }
    } else if ((flags & 0x10U) && (ackno == pcb->snd_nxt)) {
      pcb->state = FIN_WAIT_2;
    }
    break;
  case FIN_WAIT_2:
    tcp_receive(pcb);
    if (recv_flags & (u8_t)0x20U) {
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("TCP connection closed: FIN_WAIT_2 %""u"" -> %""u"".\n", inseg.tcphdr->src, inseg.tcphdr->dest); if ((0x00U) & 0x08U) { while(1); } } } while(0);
      do { (pcb)->flags |= ((u8_t)0x02U); } while (0);
      tcp_pcb_purge(pcb);
      do { do { if(*(&tcp_active_pcbs) == (pcb)) { (*(&tcp_active_pcbs)) = (*&tcp_active_pcbs)->next; } else { for(tcp_tmp_pcb = *&tcp_active_pcbs; tcp_tmp_pcb != ((void *)0); tcp_tmp_pcb = tcp_tmp_pcb->next) { if(tcp_tmp_pcb->next == (pcb)) { tcp_tmp_pcb->next = (pcb)->next; break; } } } (pcb)->next = ((void *)0); } while(0); tcp_active_pcbs_changed = 1; } while (0);
      pcb->state = TIME_WAIT;
      do { (pcb)->next = *&tcp_tw_pcbs; *(&tcp_tw_pcbs) = (pcb); tcp_timer_needed(); } while (0);
    }
    break;
  case CLOSING:
    tcp_receive(pcb);
    if (flags & 0x10U && ackno == pcb->snd_nxt) {
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("TCP connection closed: CLOSING %""u"" -> %""u"".\n", inseg.tcphdr->src, inseg.tcphdr->dest); if ((0x00U) & 0x08U) { while(1); } } } while(0);
      tcp_pcb_purge(pcb);
      do { do { if(*(&tcp_active_pcbs) == (pcb)) { (*(&tcp_active_pcbs)) = (*&tcp_active_pcbs)->next; } else { for(tcp_tmp_pcb = *&tcp_active_pcbs; tcp_tmp_pcb != ((void *)0); tcp_tmp_pcb = tcp_tmp_pcb->next) { if(tcp_tmp_pcb->next == (pcb)) { tcp_tmp_pcb->next = (pcb)->next; break; } } } (pcb)->next = ((void *)0); } while(0); tcp_active_pcbs_changed = 1; } while (0);
      pcb->state = TIME_WAIT;
      do { (pcb)->next = *&tcp_tw_pcbs; *(&tcp_tw_pcbs) = (pcb); tcp_timer_needed(); } while (0);
    }
    break;
  case LAST_ACK:
    tcp_receive(pcb);
    if (flags & 0x10U && ackno == pcb->snd_nxt) {
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("TCP connection closed: LAST_ACK %""u"" -> %""u"".\n", inseg.tcphdr->src, inseg.tcphdr->dest); if ((0x00U) & 0x08U) { while(1); } } } while(0);

      recv_flags |= (u8_t)0x10U;
    }
    break;
  default:
    break;
  }
  return 0;
}







static void
tcp_oos_insert_segment(struct tcp_seg *cseg, struct tcp_seg *next)
{
  struct tcp_seg *old_seg;

  if ((lwip_ntohs((cseg->tcphdr)->_hdrlen_rsvd_flags) & 0x3fU) & 0x01U) {

    tcp_segs_free(next);
    next = ((void *)0);
  }
  else {


    while (next &&
           ((s32_t)((u32_t)((seqno + cseg->len)) - (u32_t)((next->tcphdr->seqno + next->len))) >= 0)
                                                        ) {

      if ((lwip_ntohs((next->tcphdr)->_hdrlen_rsvd_flags) & 0x3fU) & 0x01U) {
        (cseg->tcphdr)->_hdrlen_rsvd_flags = ((cseg->tcphdr)->_hdrlen_rsvd_flags | lwip_htons(0x01U));
      }
      old_seg = next;
      next = next->next;
      tcp_seg_free(old_seg);
    }
    if (next &&
        ((s32_t)((u32_t)(seqno + cseg->len) - (u32_t)(next->tcphdr->seqno)) > 0)) {

      cseg->len = (u16_t)(next->tcphdr->seqno - seqno);
      pbuf_realloc(cseg->p, cseg->len);
    }
  }
  cseg->next = next;
}
# 846 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_in.c"
static void
tcp_receive(struct tcp_pcb *pcb)
{
  struct tcp_seg *next;

  struct tcp_seg *prev, *cseg;

  struct pbuf *p;
  s32_t off;
  s16_t m;
  u32_t right_wnd_edge;
  u16_t new_tot_len;
  int found_dupack = 0;





  do { if(!(pcb->state >= ESTABLISHED)) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "tcp_receive: wrong state", 864, "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_in.c"); ; } while(0);

  if (flags & 0x10U) {
    right_wnd_edge = pcb->snd_wnd + pcb->snd_wl2;


    if (((s32_t)((u32_t)(pcb->snd_wl1) - (u32_t)(seqno)) < 0) ||
       (pcb->snd_wl1 == seqno && ((s32_t)((u32_t)(pcb->snd_wl2) - (u32_t)(ackno)) < 0)) ||
       (pcb->snd_wl2 == ackno && tcphdr->wnd > pcb->snd_wnd)) {
      pcb->snd_wnd = tcphdr->wnd;


      if (pcb->snd_wnd_max < tcphdr->wnd) {
        pcb->snd_wnd_max = tcphdr->wnd;
      }
      pcb->snd_wl1 = seqno;
      pcb->snd_wl2 = ackno;
      if (pcb->snd_wnd == 0) {
        if (pcb->persist_backoff == 0) {

          pcb->persist_cnt = 0;
          pcb->persist_backoff = 1;
        }
      } else if (pcb->persist_backoff > 0) {

          pcb->persist_backoff = 0;
      }
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("tcp_receive: window update %""u""\n", pcb->snd_wnd); if ((0x00U) & 0x08U) { while(1); } } } while(0);
# 901 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_in.c"
    }
# 924 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_in.c"
    if (((s32_t)((u32_t)(ackno) - (u32_t)(pcb->lastack)) <= 0)) {
      pcb->acked = 0;

      if (tcplen == 0) {

        if (pcb->snd_wl2 + pcb->snd_wnd == right_wnd_edge){

          if (pcb->rtime >= 0) {

            if (pcb->lastack == ackno) {
              found_dupack = 1;
              if ((u8_t)(pcb->dupacks + 1) > pcb->dupacks) {
                ++pcb->dupacks;
              }
              if (pcb->dupacks > 3) {


                if ((u16_t)(pcb->cwnd + pcb->mss) > pcb->cwnd) {
                  pcb->cwnd += pcb->mss;
                }
              } else if (pcb->dupacks == 3) {

                tcp_rexmit_fast(pcb);
              }
            }
          }
        }
      }


      if (!found_dupack) {
        pcb->dupacks = 0;
      }
    } else if ((((s32_t)((u32_t)(ackno) - (u32_t)(pcb->lastack+1)) >= 0) && ((s32_t)((u32_t)(ackno) - (u32_t)(pcb->snd_nxt)) <= 0))){





      if (pcb->flags & ((u8_t)0x04U)) {
        pcb->flags &= ~((u8_t)0x04U);
        pcb->cwnd = pcb->ssthresh;
      }


      pcb->nrtx = 0;


      pcb->rto = (pcb->sa >> 3) + pcb->sv;


      pcb->acked = (u16_t)(ackno - pcb->lastack);

      pcb->snd_buf += pcb->acked;


      pcb->dupacks = 0;
      pcb->lastack = ackno;



      if (pcb->state >= ESTABLISHED) {
        if (pcb->cwnd < pcb->ssthresh) {
          if ((u16_t)(pcb->cwnd + pcb->mss) > pcb->cwnd) {
            pcb->cwnd += pcb->mss;
          }
          do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("tcp_receive: slow start cwnd %""u""\n", pcb->cwnd); if ((0x00U) & 0x08U) { while(1); } } } while(0);
        } else {
          u16_t new_cwnd = (pcb->cwnd + pcb->mss * pcb->mss / pcb->cwnd);
          if (new_cwnd > pcb->cwnd) {
            pcb->cwnd = new_cwnd;
          }
          do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("tcp_receive: congestion avoidance cwnd %""u""\n", pcb->cwnd); if ((0x00U) & 0x08U) { while(1); } } } while(0);
        }
      }
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("tcp_receive: ACK for %""u"", unacked->seqno %""u"":%""u""\n", ackno, pcb->unacked != ((void *)0)? lwip_ntohl(pcb->unacked->tcphdr->seqno): 0, pcb->unacked != ((void *)0)? lwip_ntohl(pcb->unacked->tcphdr->seqno) + ((pcb->unacked)->len + (((lwip_ntohs(((pcb->unacked)->tcphdr)->_hdrlen_rsvd_flags) & 0x3fU) & (0x01U | 0x02U)) != 0)): 0); if ((0x00U) & 0x08U) { while(1); } } } while(0)




                                                                                                      ;



      while (pcb->unacked != ((void *)0) &&
             ((s32_t)((u32_t)(lwip_ntohl(pcb->unacked->tcphdr->seqno) + ((pcb->unacked)->len + (((lwip_ntohs(((pcb->unacked)->tcphdr)->_hdrlen_rsvd_flags) & 0x3fU) & (0x01U | 0x02U)) != 0))) - (u32_t)(ackno)) <= 0)
                                                         ) {
        do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("tcp_receive: removing %""u"":%""u"" from pcb->unacked\n", lwip_ntohl(pcb->unacked->tcphdr->seqno), lwip_ntohl(pcb->unacked->tcphdr->seqno) + ((pcb->unacked)->len + (((lwip_ntohs(((pcb->unacked)->tcphdr)->_hdrlen_rsvd_flags) & 0x3fU) & (0x01U | 0x02U)) != 0))); if ((0x00U) & 0x08U) { while(1); } } } while(0)


                                                                ;

        next = pcb->unacked;
        pcb->unacked = pcb->unacked->next;

        do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("tcp_receive: queuelen %""u"" ... ", (u16_t)pcb->snd_queuelen); if ((0x00U) & 0x08U) { while(1); } } } while(0);
        do { if(!((pcb->snd_queuelen >= pbuf_clen(next->p)))) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "pcb->snd_queuelen >= pbuf_clen(next->p)", 1020, "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_in.c"); ; } while(0);

        if ((pcb->acked != 0) && (((lwip_ntohs((next->tcphdr)->_hdrlen_rsvd_flags) & 0x3fU) & 0x01U) != 0)) {
          pcb->acked--;
        }

        pcb->snd_queuelen -= pbuf_clen(next->p);
        tcp_seg_free(next);

        do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("%""u"" (after freeing unacked)\n", (u16_t)pcb->snd_queuelen); if ((0x00U) & 0x08U) { while(1); } } } while(0);
        if (pcb->snd_queuelen != 0) {
          do { if(!(pcb->unacked != ((void *)0) || pcb->unsent != ((void *)0))) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "tcp_receive: valid queue length",
 1032
# 1031 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_in.c"
          ,
 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_in.c"
# 1031 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_in.c"
          ); ; } while(0)
                                          ;
        }
      }



      if(pcb->unacked == ((void *)0))
        pcb->rtime = -1;
      else
        pcb->rtime = 0;

      pcb->polltmr = 0;
    } else {

      pcb->acked = 0;
    }







    while (pcb->unsent != ((void *)0) &&
           (((s32_t)((u32_t)(ackno) - (u32_t)(lwip_ntohl(pcb->unsent->tcphdr->seqno) + ((pcb->unsent)->len + (((lwip_ntohs(((pcb->unsent)->tcphdr)->_hdrlen_rsvd_flags) & 0x3fU) & (0x01U | 0x02U)) != 0)))) >= 0) && ((s32_t)((u32_t)(ackno) - (u32_t)(pcb->snd_nxt)) <= 0))
                                                                 ) {
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("tcp_receive: removing %""u"":%""u"" from pcb->unsent\n", lwip_ntohl(pcb->unsent->tcphdr->seqno), lwip_ntohl(pcb->unsent->tcphdr->seqno) + ((pcb->unsent)->len + (((lwip_ntohs(((pcb->unsent)->tcphdr)->_hdrlen_rsvd_flags) & 0x3fU) & (0x01U | 0x02U)) != 0))); if ((0x00U) & 0x08U) { while(1); } } } while(0)

                                                             ;

      next = pcb->unsent;
      pcb->unsent = pcb->unsent->next;

      if (pcb->unsent == ((void *)0)) {
        pcb->unsent_oversize = 0;
      }

      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("tcp_receive: queuelen %""u"" ... ", (u16_t)pcb->snd_queuelen); if ((0x00U) & 0x08U) { while(1); } } } while(0);
      do { if(!((pcb->snd_queuelen >= pbuf_clen(next->p)))) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "pcb->snd_queuelen >= pbuf_clen(next->p)", 1070, "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_in.c"); ; } while(0);

      if ((pcb->acked != 0) && (((lwip_ntohs((next->tcphdr)->_hdrlen_rsvd_flags) & 0x3fU) & 0x01U) != 0)) {
        pcb->acked--;
      }
      pcb->snd_queuelen -= pbuf_clen(next->p);
      tcp_seg_free(next);
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("%""u"" (after freeing unsent)\n", (u16_t)pcb->snd_queuelen); if ((0x00U) & 0x08U) { while(1); } } } while(0);
      if (pcb->snd_queuelen != 0) {
        do { if(!(pcb->unacked != ((void *)0) || pcb->unsent != ((void *)0))) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "tcp_receive: valid queue length",
 1080
# 1079 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_in.c"
        ,
 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_in.c"
# 1079 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_in.c"
        ); ; } while(0)
                                                      ;
      }
    }


    do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("tcp_receive: pcb->rttest %""u"" rtseq %""u"" ackno %""u""\n", pcb->rttest, pcb->rtseq, ackno); if ((0x00U) & 0x08U) { while(1); } } } while(0)
                                                                ;




    if (pcb->rttest && ((s32_t)((u32_t)(pcb->rtseq) - (u32_t)(ackno)) < 0)) {


      m = (s16_t)(tcp_ticks - pcb->rttest);

      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("tcp_receive: experienced rtt %""u"" ticks (%""u"" msec).\n", m, m * (2*0.1)); if ((0x00U) & 0x08U) { while(1); } } } while(0)
                                                            ;


      m = m - (pcb->sa >> 3);
      pcb->sa += m;
      if (m < 0) {
        m = -m;
      }
      m = m - (pcb->sv >> 2);
      pcb->sv += m;
      pcb->rto = (pcb->sa >> 3) + pcb->sv;

      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("tcp_receive: RTO %""u"" (%""u"" milliseconds)\n", pcb->rto, pcb->rto * (2*0.1)); if ((0x00U) & 0x08U) { while(1); } } } while(0)
                                                                          ;

      pcb->rttest = 0;
    }
  }





  if ((tcplen > 0) && (pcb->state < CLOSE_WAIT)) {
# 1151 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_in.c"
    if ((((s32_t)((u32_t)(pcb->rcv_nxt) - (u32_t)(seqno + 1)) >= 0) && ((s32_t)((u32_t)(pcb->rcv_nxt) - (u32_t)(seqno + tcplen - 1)) <= 0))){
# 1172 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_in.c"
      off = pcb->rcv_nxt - seqno;
      p = inseg.p;
      do { if(!(inseg.p)) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "inseg.p != NULL", 1174, "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_in.c"); ; } while(0);
      do { if(!((off < 0x7fff))) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "insane offset!", 1175, "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_in.c"); ; } while(0);
      if (inseg.p->len < off) {
        do { if(!((((s32_t)inseg.p->tot_len) >= off))) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "pbuf too short!", 1177, "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_in.c"); ; } while(0);
        new_tot_len = (u16_t)(inseg.p->tot_len - off);
        while (p->len < off) {
          off -= p->len;



          p->tot_len = new_tot_len;
          p->len = 0;
          p = p->next;
        }
        if(pbuf_header(p, (s16_t)-off)) {

          do { if(!(0)) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "pbuf_header failed", 1190, "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_in.c"); ; } while(0);
        }
      } else {
        if(pbuf_header(inseg.p, (s16_t)-off)) {

          do { if(!(0)) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "pbuf_header failed", 1195, "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_in.c"); ; } while(0);
        }
      }
      inseg.len -= (u16_t)(pcb->rcv_nxt - seqno);
      inseg.tcphdr->seqno = seqno = pcb->rcv_nxt;
    }
    else {
      if (((s32_t)((u32_t)(seqno) - (u32_t)(pcb->rcv_nxt)) < 0)){



        do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("tcp_receive: duplicate seqno %""u""\n", seqno); if ((0x00U) & 0x08U) { while(1); } } } while(0);
        do { (pcb)->flags |= ((u8_t)0x02U); } while (0);
      }
    }




    if ((((s32_t)((u32_t)(seqno) - (u32_t)(pcb->rcv_nxt)) >= 0) && ((s32_t)((u32_t)(seqno) - (u32_t)(pcb->rcv_nxt + pcb->rcv_wnd - 1)) <= 0))
                                                        ){
      if (pcb->rcv_nxt == seqno) {



        tcplen = ((&inseg)->len + (((lwip_ntohs(((&inseg)->tcphdr)->_hdrlen_rsvd_flags) & 0x3fU) & (0x01U | 0x02U)) != 0));

        if (tcplen > pcb->rcv_wnd) {
          do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("tcp_receive: other end overran receive window" "seqno %""u"" len %""u"" right edge %""u""\n", seqno, tcplen, pcb->rcv_nxt + pcb->rcv_wnd); if ((0x00U) & 0x08U) { while(1); } } } while(0)


                                                                   ;
          if ((lwip_ntohs((inseg.tcphdr)->_hdrlen_rsvd_flags) & 0x3fU) & 0x01U) {


            (inseg.tcphdr)->_hdrlen_rsvd_flags = (((inseg.tcphdr)->_hdrlen_rsvd_flags & (((((u16_t)(~(u16_t)(0x3fU))) & 0xff) << 8) | ((((u16_t)(~(u16_t)(0x3fU))) & 0xff00) >> 8))) | lwip_htons((lwip_ntohs((inseg.tcphdr)->_hdrlen_rsvd_flags) & 0x3fU) &~ 0x01U));
          }

          inseg.len = pcb->rcv_wnd;
          if ((lwip_ntohs((inseg.tcphdr)->_hdrlen_rsvd_flags) & 0x3fU) & 0x02U) {
            inseg.len -= 1;
          }
          pbuf_realloc(inseg.p, inseg.len);
          tcplen = ((&inseg)->len + (((lwip_ntohs(((&inseg)->tcphdr)->_hdrlen_rsvd_flags) & 0x3fU) & (0x01U | 0x02U)) != 0));
          do { if(!((seqno + tcplen) == (pcb->rcv_nxt + pcb->rcv_wnd))) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "tcp_receive: segment not trimmed correctly to rcv_wnd\n",
 1240
# 1239 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_in.c"
          ,
 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_in.c"
# 1239 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_in.c"
          ); ; } while(0)
                                                                        ;
        }




        if (pcb->ooseq != ((void *)0)) {
          if ((lwip_ntohs((inseg.tcphdr)->_hdrlen_rsvd_flags) & 0x3fU) & 0x01U) {
            do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("tcp_receive: received in-order FIN, binning ooseq queue\n"); if ((0x00U) & 0x08U) { while(1); } } } while(0)
                                                                                      ;



            while (pcb->ooseq != ((void *)0)) {
              struct tcp_seg *old_ooseq = pcb->ooseq;
              pcb->ooseq = pcb->ooseq->next;
              tcp_seg_free(old_ooseq);
            }
          } else {
            next = pcb->ooseq;


            while (next &&
                   ((s32_t)((u32_t)(seqno + tcplen) - (u32_t)(next->tcphdr->seqno + next->len)) >= 0)
                                                               ) {

              if ((lwip_ntohs((next->tcphdr)->_hdrlen_rsvd_flags) & 0x3fU) & 0x01U &&
                  ((lwip_ntohs((inseg.tcphdr)->_hdrlen_rsvd_flags) & 0x3fU) & 0x02U) == 0) {
                (inseg.tcphdr)->_hdrlen_rsvd_flags = ((inseg.tcphdr)->_hdrlen_rsvd_flags | lwip_htons(0x01U));
                tcplen = ((&inseg)->len + (((lwip_ntohs(((&inseg)->tcphdr)->_hdrlen_rsvd_flags) & 0x3fU) & (0x01U | 0x02U)) != 0));
              }
              prev = next;
              next = next->next;
              tcp_seg_free(prev);
            }


            if (next &&
                ((s32_t)((u32_t)(seqno + tcplen) - (u32_t)(next->tcphdr->seqno)) > 0)
                                               ) {

              inseg.len = (u16_t)(next->tcphdr->seqno - seqno);
              if ((lwip_ntohs((inseg.tcphdr)->_hdrlen_rsvd_flags) & 0x3fU) & 0x02U) {
                inseg.len -= 1;
              }
              pbuf_realloc(inseg.p, inseg.len);
              tcplen = ((&inseg)->len + (((lwip_ntohs(((&inseg)->tcphdr)->_hdrlen_rsvd_flags) & 0x3fU) & (0x01U | 0x02U)) != 0));
              do { if(!((seqno + tcplen) == next->tcphdr->seqno)) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "tcp_receive: segment not trimmed correctly to ooseq queue\n",
 1288
# 1287 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_in.c"
              ,
 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_in.c"
# 1287 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_in.c"
              ); ; } while(0)
                                                                  ;
            }
            pcb->ooseq = next;
          }
        }


        pcb->rcv_nxt = seqno + tcplen;


        do { if(!(pcb->rcv_wnd >= tcplen)) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "tcp_receive: tcplen > rcv_wnd\n", 1298, "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_in.c"); ; } while(0);
        pcb->rcv_wnd -= tcplen;

        tcp_update_rcv_ann_wnd(pcb);
# 1312 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_in.c"
        if (inseg.p->tot_len > 0) {
          recv_data = inseg.p;



          inseg.p = ((void *)0);
        }
        if ((lwip_ntohs((inseg.tcphdr)->_hdrlen_rsvd_flags) & 0x3fU) & 0x01U) {
          do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("tcp_receive: received FIN.\n"); if ((0x00U) & 0x08U) { while(1); } } } while(0);
          recv_flags |= (u8_t)0x20U;
        }




        while (pcb->ooseq != ((void *)0) &&
               pcb->ooseq->tcphdr->seqno == pcb->rcv_nxt) {

          cseg = pcb->ooseq;
          seqno = pcb->ooseq->tcphdr->seqno;

          pcb->rcv_nxt += ((cseg)->len + (((lwip_ntohs(((cseg)->tcphdr)->_hdrlen_rsvd_flags) & 0x3fU) & (0x01U | 0x02U)) != 0));
          do { if(!(pcb->rcv_wnd >= ((cseg)->len + (((lwip_ntohs(((cseg)->tcphdr)->_hdrlen_rsvd_flags) & 0x3fU) & (0x01U | 0x02U)) != 0)))) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "tcp_receive: ooseq tcplen > rcv_wnd\n",
 1335
# 1334 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_in.c"
          ,
 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_in.c"
# 1334 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_in.c"
          ); ; } while(0)
                                                       ;
          pcb->rcv_wnd -= ((cseg)->len + (((lwip_ntohs(((cseg)->tcphdr)->_hdrlen_rsvd_flags) & 0x3fU) & (0x01U | 0x02U)) != 0));

          tcp_update_rcv_ann_wnd(pcb);

          if (cseg->p->tot_len > 0) {


            if (recv_data) {
              pbuf_cat(recv_data, cseg->p);
            } else {
              recv_data = cseg->p;
            }
            cseg->p = ((void *)0);
          }
          if ((lwip_ntohs((cseg->tcphdr)->_hdrlen_rsvd_flags) & 0x3fU) & 0x01U) {
            do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("tcp_receive: dequeued FIN.\n"); if ((0x00U) & 0x08U) { while(1); } } } while(0);
            recv_flags |= (u8_t)0x20U;
            if (pcb->state == ESTABLISHED) {
              pcb->state = CLOSE_WAIT;
            }
          }

          pcb->ooseq = cseg->next;
          tcp_seg_free(cseg);
        }




        do { if((pcb)->flags & ((u8_t)0x01U)) { (pcb)->flags &= ~((u8_t)0x01U); (pcb)->flags |= ((u8_t)0x02U); } else { (pcb)->flags |= ((u8_t)0x01U); } } while (0);

      } else {

        tcp_send_empty_ack(pcb);


        if (pcb->ooseq == ((void *)0)) {
          pcb->ooseq = tcp_seg_copy(&inseg);
        } else {
# 1387 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_in.c"
          prev = ((void *)0);
          for(next = pcb->ooseq; next != ((void *)0); next = next->next) {
            if (seqno == next->tcphdr->seqno) {




              if (inseg.len > next->len) {



                cseg = tcp_seg_copy(&inseg);
                if (cseg != ((void *)0)) {
                  if (prev != ((void *)0)) {
                    prev->next = cseg;
                  } else {
                    pcb->ooseq = cseg;
                  }
                  tcp_oos_insert_segment(cseg, next);
                }
                break;
              } else {



                break;
              }
            } else {
              if (prev == ((void *)0)) {
                if (((s32_t)((u32_t)(seqno) - (u32_t)(next->tcphdr->seqno)) < 0)) {




                  cseg = tcp_seg_copy(&inseg);
                  if (cseg != ((void *)0)) {
                    pcb->ooseq = cseg;
                    tcp_oos_insert_segment(cseg, next);
                  }
                  break;
                }
              } else {


                if ((((s32_t)((u32_t)(seqno) - (u32_t)(prev->tcphdr->seqno+1)) >= 0) && ((s32_t)((u32_t)(seqno) - (u32_t)(next->tcphdr->seqno-1)) <= 0))) {





                  cseg = tcp_seg_copy(&inseg);
                  if (cseg != ((void *)0)) {
                    if (((s32_t)((u32_t)(prev->tcphdr->seqno + prev->len) - (u32_t)(seqno)) > 0)) {

                      prev->len = (u16_t)(seqno - prev->tcphdr->seqno);
                      pbuf_realloc(prev->p, prev->len);
                    }
                    prev->next = cseg;
                    tcp_oos_insert_segment(cseg, next);
                  }
                  break;
                }
              }



              if (next->next == ((void *)0) &&
                  ((s32_t)((u32_t)(seqno) - (u32_t)(next->tcphdr->seqno)) > 0)) {
                if ((lwip_ntohs((next->tcphdr)->_hdrlen_rsvd_flags) & 0x3fU) & 0x01U) {

                  break;
                }
                next->next = tcp_seg_copy(&inseg);
                if (next->next != ((void *)0)) {
                  if (((s32_t)((u32_t)(next->tcphdr->seqno + next->len) - (u32_t)(seqno)) > 0)) {

                    next->len = (u16_t)(seqno - next->tcphdr->seqno);
                    pbuf_realloc(next->p, next->len);
                  }

                  if ((u32_t)tcplen + seqno > pcb->rcv_nxt + (u32_t)pcb->rcv_wnd) {
                    do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("tcp_receive: other end overran receive window" "seqno %""u"" len %""u"" right edge %""u""\n", seqno, tcplen, pcb->rcv_nxt + pcb->rcv_wnd); if ((0x00U) & 0x08U) { while(1); } } } while(0)


                                                                             ;
                    if ((lwip_ntohs((next->next->tcphdr)->_hdrlen_rsvd_flags) & 0x3fU) & 0x01U) {


                      (next->next->tcphdr)->_hdrlen_rsvd_flags = (((next->next->tcphdr)->_hdrlen_rsvd_flags & (((((u16_t)(~(u16_t)(0x3fU))) & 0xff) << 8) | ((((u16_t)(~(u16_t)(0x3fU))) & 0xff00) >> 8))) | lwip_htons((lwip_ntohs((next->next->tcphdr)->_hdrlen_rsvd_flags) & 0x3fU) &~ 0x01U));
                    }

                    next->next->len = pcb->rcv_nxt + pcb->rcv_wnd - seqno;
                    pbuf_realloc(next->next->p, next->next->len);
                    tcplen = ((next->next)->len + (((lwip_ntohs(((next->next)->tcphdr)->_hdrlen_rsvd_flags) & 0x3fU) & (0x01U | 0x02U)) != 0));
                    do { if(!((seqno + tcplen) == (pcb->rcv_nxt + pcb->rcv_wnd))) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "tcp_receive: segment not trimmed correctly to rcv_wnd\n",
 1482
# 1481 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_in.c"
                    ,
 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_in.c"
# 1481 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_in.c"
                    ); ; } while(0)
                                                                                  ;
                  }
                }
                break;
              }
            }
            prev = next;
          }
        }
# 1517 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_in.c"
      }
    } else {

      tcp_send_empty_ack(pcb);
    }
  } else {




    if(!(((s32_t)((u32_t)(seqno) - (u32_t)(pcb->rcv_nxt)) >= 0) && ((s32_t)((u32_t)(seqno) - (u32_t)(pcb->rcv_nxt + pcb->rcv_wnd-1)) <= 0))){
      do { (pcb)->flags |= ((u8_t)0x02U); } while (0);
    }
  }
}
# 1541 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_in.c"
static void
tcp_parseopt(struct tcp_pcb *pcb)
{
  u16_t c, max_c;
  u16_t mss;
  u8_t *opts, opt;




  opts = (u8_t *)tcphdr + 20;


  if((lwip_ntohs((tcphdr)->_hdrlen_rsvd_flags) >> 12) > 0x5) {
    max_c = ((lwip_ntohs((tcphdr)->_hdrlen_rsvd_flags) >> 12) - 5) << 2;
    for (c = 0; c < max_c; ) {
      opt = opts[c];
      switch (opt) {
      case 0x00:

        do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("tcp_parseopt: EOL\n"); if ((0x00U) & 0x08U) { while(1); } } } while(0);
        return;
      case 0x01:

        ++c;
        do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("tcp_parseopt: NOP\n"); if ((0x00U) & 0x08U) { while(1); } } } while(0);
        break;
      case 0x02:
        do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("tcp_parseopt: MSS\n"); if ((0x00U) & 0x08U) { while(1); } } } while(0);
        if (opts[c + 1] != 0x04 || c + 0x04 > max_c) {

          do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("tcp_parseopt: bad length\n"); if ((0x00U) & 0x08U) { while(1); } } } while(0);
          return;
        }

        mss = (opts[c + 2] << 8) | opts[c + 3];

        pcb->mss = ((mss > (1500 - 40)) || (mss == 0)) ? (1500 - 40) : mss;

        c += 0x04;
        break;
# 1603 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_in.c"
      default:
        do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("tcp_parseopt: other\n"); if ((0x00U) & 0x08U) { while(1); } } } while(0);
        if (opts[c + 1] == 0) {
          do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("tcp_parseopt: bad length\n"); if ((0x00U) & 0x08U) { while(1); } } } while(0);


          return;
        }


        c += opts[c + 1];
      }
    }
  }
}
