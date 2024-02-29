# 1 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_out.c"
# 1 "D:\\00.Workspace\\TC275\\SKKU_ECU_SOMEIP\\TC275_SOME_IP_Flatform//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_out.c"
# 41 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_out.c"
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
# 42 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_out.c" 2



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
# 46 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_out.c" 2


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
# 49 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_out.c" 2


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
# 52 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_out.c" 2
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
# 53 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_out.c" 2
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
# 54 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_out.c" 2
# 1 "./0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/include/ipv4/lwip/icmp.h" 1
# 55 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_out.c" 2





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


# 61 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_out.c" 2
# 83 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_out.c"
static void tcp_output_segment(struct tcp_seg *seg, struct tcp_pcb *pcb);
# 95 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_out.c"
static struct pbuf *
tcp_output_alloc_header(struct tcp_pcb *pcb, u16_t optlen, u16_t datalen,
                      u32_t seqno_be )
{
  struct tcp_hdr *tcphdr;
  struct pbuf *p = pbuf_alloc(PBUF_IP, 20 + optlen + datalen, PBUF_RAM);
  if (p != ((void *)0)) {
    do { if(!((p->len >= 20 + optlen))) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "check that first pbuf can hold struct tcp_hdr",
 103
# 102 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_out.c"
    ,
 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_out.c"
# 102 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_out.c"
    ); ; } while(0)
                                               ;
    tcphdr = (struct tcp_hdr *)p->payload;
    tcphdr->src = lwip_htons(pcb->local_port);
    tcphdr->dest = lwip_htons(pcb->remote_port);
    tcphdr->seqno = seqno_be;
    tcphdr->ackno = lwip_htonl(pcb->rcv_nxt);
    (tcphdr)->_hdrlen_rsvd_flags = lwip_htons((((5 + optlen / 4)) << 12) | (0x10U));
    tcphdr->wnd = lwip_htons(pcb->rcv_ann_wnd);
    tcphdr->chksum = 0;
    tcphdr->urgp = 0;


    pcb->rcv_ann_right_edge = pcb->rcv_nxt + pcb->rcv_ann_wnd;
  }
  return p;
}







err_t
tcp_send_fin(struct tcp_pcb *pcb)
{

  if (pcb->unsent != ((void *)0)) {
    struct tcp_seg *last_unsent;
    for (last_unsent = pcb->unsent; last_unsent->next != ((void *)0);
         last_unsent = last_unsent->next);

    if (((lwip_ntohs((last_unsent->tcphdr)->_hdrlen_rsvd_flags) & 0x3fU) & (0x02U | 0x01U | 0x04U)) == 0) {

      (last_unsent->tcphdr)->_hdrlen_rsvd_flags = ((last_unsent->tcphdr)->_hdrlen_rsvd_flags | lwip_htons(0x01U));
      pcb->flags |= ((u8_t)0x20U);
      return 0;
    }
  }

  return tcp_enqueue_flags(pcb, 0x01U);
}
# 160 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_out.c"
static struct tcp_seg *
tcp_create_segment(struct tcp_pcb *pcb, struct pbuf *p, u8_t flags, u32_t seqno, u8_t optflags)
{
  struct tcp_seg *seg;
  u8_t optlen = (optflags & (u8_t)0x01U ? 4 : 0) + (optflags & (u8_t)0x02U ? 12 : 0);

  if ((seg = (struct tcp_seg *)memp_malloc(MEMP_TCP_SEG)) == ((void *)0)) {
    do { if ( ((0x00U | 2) & 0x80U) && ((0x00U | 2) & 0x80U) && ((s16_t)((0x00U | 2) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("tcp_create_segment: no memory.\n"); if ((0x00U | 2) & 0x08U) { while(1); } } } while(0);
    pbuf_free(p);
    return ((void *)0);
  }
  seg->flags = optflags;
  seg->next = ((void *)0);
  seg->p = p;
  seg->len = p->tot_len - optlen;

  seg->oversize_left = 0;


  seg->chksum = 0;
  seg->chksum_swapped = 0;

  do { if(!((optflags & (u8_t)0x04U) == 0)) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "invalid optflags passed: TF_SEG_DATA_CHECKSUMMED",
 183
# 182 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_out.c"
  ,
 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_out.c"
# 182 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_out.c"
  ); ; } while(0)
                                                        ;



  if (pbuf_header(p, 20)) {
    do { if ( ((0x00U | 2) & 0x80U) && ((0x00U | 2) & 0x80U) && ((s16_t)((0x00U | 2) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("tcp_create_segment: no room for TCP header in pbuf.\n"); if ((0x00U | 2) & 0x08U) { while(1); } } } while(0);
    ++lwip_stats.tcp.err;
    tcp_seg_free(seg);
    return ((void *)0);
  }
  seg->tcphdr = (struct tcp_hdr *)seg->p->payload;
  seg->tcphdr->src = lwip_htons(pcb->local_port);
  seg->tcphdr->dest = lwip_htons(pcb->remote_port);
  seg->tcphdr->seqno = lwip_htonl(seqno);

  (seg->tcphdr)->_hdrlen_rsvd_flags = lwip_htons((((5 + optlen / 4)) << 12) | (flags));

  seg->tcphdr->urgp = 0;
  return seg;
}
# 220 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_out.c"
static struct pbuf *
tcp_pbuf_prealloc(pbuf_layer layer, u16_t length, u16_t max_length,
                  u16_t *oversize, struct tcp_pcb *pcb, u8_t apiflags,
                  u8_t first_seg)
{
  struct pbuf *p;
  u16_t alloc = length;
# 236 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_out.c"
  if (length < max_length) {
# 248 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_out.c"
    if ((apiflags & 0x02) ||
        (!(pcb->flags & ((u8_t)0x40U)) &&
         (!first_seg ||
          pcb->unsent != ((void *)0) ||
          pcb->unacked != ((void *)0)))) {
      alloc = (((max_length) < ((((length + (1500 - 40)) + 4 - 1) & ~(4 -1)))) ? (max_length) : ((((length + (1500 - 40)) + 4 - 1) & ~(4 -1))));
    }
  }

  p = pbuf_alloc(layer, alloc, PBUF_RAM);
  if (p == ((void *)0)) {
    return ((void *)0);
  }
  do { if(!(p->next == ((void *)0))) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "need unchained pbuf", 261, "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_out.c"); ; } while(0);
  *oversize = p->len - length;

  p->len = p->tot_len = length;
  return p;
}






static void
tcp_seg_add_chksum(u16_t chksum, u16_t len, u16_t *seg_chksum,
                   u8_t *seg_chksum_swapped)
{
  u32_t helper;

  helper = chksum + *seg_chksum;
  chksum = (((helper) >> 16) + ((helper) & 0x0000ffffUL));
  if ((len & 1) != 0) {
    *seg_chksum_swapped = 1 - *seg_chksum_swapped;
    chksum = (((chksum) & 0xff) << 8) | (((chksum) & 0xff00) >> 8);
  }
  *seg_chksum = chksum;
}
# 295 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_out.c"
static err_t
tcp_write_checks(struct tcp_pcb *pcb, u16_t len)
{

  if ((pcb->state != ESTABLISHED) &&
      (pcb->state != CLOSE_WAIT) &&
      (pcb->state != SYN_SENT) &&
      (pcb->state != SYN_RCVD)) {
    do { if ( ((0x00U | 0x20U | 0x03) & 0x80U) && ((0x00U | 0x20U | 0x03) & 0x80U) && ((s16_t)((0x00U | 0x20U | 0x03) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("tcp_write() called in invalid state\n"); if ((0x00U | 0x20U | 0x03) & 0x08U) { while(1); } } } while(0);
    return -13;
  } else if (len == 0) {
    return 0;
  }


  if (len > pcb->snd_buf) {
    do { if ( ((0x00U | 3) & 0x80U) && ((0x00U | 3) & 0x80U) && ((s16_t)((0x00U | 3) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("tcp_write: too much data (len=%""u"" > snd_buf=%""u"")\n", len, pcb->snd_buf); if ((0x00U | 3) & 0x08U) { while(1); } } } while(0)
                         ;
    pcb->flags |= ((u8_t)0x80U);
    return -1;
  }

  do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("tcp_write: queuelen: %""u""\n", (u16_t)pcb->snd_queuelen); if ((0x00U) & 0x08U) { while(1); } } } while(0);




  if ((pcb->snd_queuelen >= ((4 * ((2 * (1500 - 40))) + ((1500 - 40) - 1))/((1500 - 40)))) || (pcb->snd_queuelen > (0xffffU-3))) {
    do { if ( ((0x00U | 3) & 0x80U) && ((0x00U | 3) & 0x80U) && ((s16_t)((0x00U | 3) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("tcp_write: too long queue %""u"" (max %""u"")\n", pcb->snd_queuelen, ((4 * ((2 * (1500 - 40))) + ((1500 - 40) - 1))/((1500 - 40)))); if ((0x00U | 3) & 0x08U) { while(1); } } } while(0)
                                           ;
    ++lwip_stats.tcp.memerr;
    pcb->flags |= ((u8_t)0x80U);
    return -1;
  }
  if (pcb->snd_queuelen != 0) {
    do { if(!(pcb->unacked != ((void *)0) || pcb->unsent != ((void *)0))) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "tcp_write: pbufs on queue => at least one queue non-empty",
 331
# 330 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_out.c"
    ,
 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_out.c"
# 330 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_out.c"
    ); ; } while(0)
                                                  ;
  } else {
    do { if(!(pcb->unacked == ((void *)0) && pcb->unsent == ((void *)0))) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "tcp_write: no pbufs on queue => both queues empty",
 334
# 333 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_out.c"
    ,
 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_out.c"
# 333 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_out.c"
    ); ; } while(0)
                                                  ;
  }
  return 0;
}
# 355 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_out.c"
err_t
tcp_write(struct tcp_pcb *pcb, const void *arg, u16_t len, u8_t apiflags)
{
  struct pbuf *concat_p = ((void *)0);
  struct tcp_seg *last_unsent = ((void *)0), *seg = ((void *)0), *prev_seg = ((void *)0), *queue = ((void *)0);
  u16_t pos = 0;
  u16_t queuelen;
  u8_t optlen = 0;
  u8_t optflags = 0;

  u16_t oversize = 0;
  u16_t oversize_used = 0;


  u16_t concat_chksum = 0;
  u8_t concat_chksum_swapped = 0;
  u16_t concat_chksummed = 0;

  err_t err;

  u16_t mss_local = (((pcb->mss) < (pcb->snd_wnd_max/2)) ? (pcb->mss) : (pcb->snd_wnd_max/2));






  do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("tcp_write(pcb=%p, data=%p, len=%""u"", apiflags=%""u"")\n", (void *)pcb, arg, len, (u16_t)apiflags); if ((0x00U) & 0x08U) { while(1); } } } while(0)
                                            ;
  do { if (!(arg != ((void *)0))) { Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "tcp_write: arg == NULL (programmer violates API)",
 385
# 384 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_out.c"
  ,
 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_out.c"
# 384 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_out.c"
  ); ; return -14;;}} while(0)
                                          ;

  err = tcp_write_checks(pcb, len);
  if (err != 0) {
    return err;
  }
  queuelen = pcb->snd_queuelen;
# 424 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_out.c"
  if (pcb->unsent != ((void *)0)) {
    u16_t space;
    u16_t unsent_optlen;


    for (last_unsent = pcb->unsent; last_unsent->next != ((void *)0);
         last_unsent = last_unsent->next);


    unsent_optlen = (last_unsent->flags & (u8_t)0x01U ? 4 : 0) + (last_unsent->flags & (u8_t)0x02U ? 12 : 0);
    space = mss_local - (last_unsent->len + unsent_optlen);
# 446 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_out.c"
    do { if(!(pcb->unsent_oversize == last_unsent->oversize_left)) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "unsent_oversize mismatch (pcb vs. last_unsent)",
 447
# 446 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_out.c"
    ,
 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_out.c"
# 446 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_out.c"
    ); ; } while(0)
                                                                   ;

    oversize = pcb->unsent_oversize;
    if (oversize > 0) {
      do { if(!(oversize_used <= space)) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "inconsistent oversize vs. space", 451, "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_out.c"); ; } while(0);
      seg = last_unsent;
      oversize_used = oversize < len ? oversize : len;
      pos += oversize_used;
      oversize -= oversize_used;
      space -= oversize_used;
    }

    do { if(!((oversize == 0) || (pos == len))) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "inconsistend oversize vs. len", 459, "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_out.c"); ; } while(0);
# 469 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_out.c"
    if ((pos < len) && (space > 0) && (last_unsent->len > 0)) {
      u16_t seglen = space < len - pos ? space : len - pos;
      seg = last_unsent;




      if (apiflags & 0x01) {

        if ((concat_p = tcp_pbuf_prealloc(PBUF_RAW, seglen, space, &oversize, pcb, apiflags, 1)) == ((void *)0)) {
          do { if ( ((0x00U | 2) & 0x80U) && ((0x00U | 2) & 0x80U) && ((s16_t)((0x00U | 2) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("tcp_write : could not allocate memory for pbuf copy size %""u""\n", seglen); if ((0x00U | 2) & 0x08U) { while(1); } } } while(0)

                               ;
          goto memerr;
        }

        last_unsent->oversize_left += oversize;

        tcp_seg_add_chksum(lwip_chksum_copy(concat_p->payload, (u8_t*)arg + pos, seglen), seglen, &concat_chksum, &concat_chksum_swapped);;

        concat_chksummed += seglen;

      } else {

        if ((concat_p = pbuf_alloc(PBUF_RAW, seglen, PBUF_ROM)) == ((void *)0)) {
          do { if ( ((0x00U | 2) & 0x80U) && ((0x00U | 2) & 0x80U) && ((s16_t)((0x00U | 2) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("tcp_write: could not allocate memory for zero-copy pbuf\n"); if ((0x00U | 2) & 0x08U) { while(1); } } } while(0)
                                                                                    ;
          goto memerr;
        }


        tcp_seg_add_chksum(~inet_chksum((u8_t*)arg + pos, seglen), seglen,
          &concat_chksum, &concat_chksum_swapped);
        concat_chksummed += seglen;


        concat_p->payload = (u8_t*)arg + pos;
      }

      pos += seglen;
      queuelen += pbuf_clen(concat_p);
    }
  } else {

    do { if(!(pcb->unsent_oversize == 0)) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "unsent_oversize mismatch (pcb->unsent is NULL)",
 514
# 513 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_out.c"
    ,
 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_out.c"
# 513 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_out.c"
    ); ; } while(0)
                                          ;

  }







  while (pos < len) {
    struct pbuf *p;
    u16_t left = len - pos;
    u16_t max_len = mss_local - optlen;
    u16_t seglen = left > max_len ? max_len : left;

    u16_t chksum = 0;
    u8_t chksum_swapped = 0;


    if (apiflags & 0x01) {


      if ((p = tcp_pbuf_prealloc(PBUF_TRANSPORT, seglen + optlen, mss_local, &oversize, pcb, apiflags, queue == ((void *)0))) == ((void *)0)) {
        do { if ( ((0x00U | 2) & 0x80U) && ((0x00U | 2) & 0x80U) && ((s16_t)((0x00U | 2) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("tcp_write : could not allocate memory for pbuf copy size %""u""\n", seglen); if ((0x00U | 2) & 0x08U) { while(1); } } } while(0);
        goto memerr;
      }
      do { if(!((p->len >= seglen))) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "tcp_write: check that first pbuf can hold the complete seglen",
 542
# 541 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_out.c"
      ,
 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_out.c"
# 541 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_out.c"
      ); ; } while(0)
                                     ;
      tcp_seg_add_chksum(lwip_chksum_copy((char *)p->payload + optlen, (u8_t*)arg + pos, seglen), seglen, &chksum, &chksum_swapped);;
    } else {





      struct pbuf *p2;

      do { if(!(oversize == 0)) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "oversize == 0", 552, "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_out.c"); ; } while(0);

      if ((p2 = pbuf_alloc(PBUF_TRANSPORT, seglen, PBUF_ROM)) == ((void *)0)) {
        do { if ( ((0x00U | 2) & 0x80U) && ((0x00U | 2) & 0x80U) && ((s16_t)((0x00U | 2) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("tcp_write: could not allocate memory for zero-copy pbuf\n"); if ((0x00U | 2) & 0x08U) { while(1); } } } while(0);
        goto memerr;
      }


      chksum = ~inet_chksum((u8_t*)arg + pos, seglen);


      p2->payload = (u8_t*)arg + pos;


      if ((p = pbuf_alloc(PBUF_TRANSPORT, optlen, PBUF_RAM)) == ((void *)0)) {


        pbuf_free(p2);
        do { if ( ((0x00U | 2) & 0x80U) && ((0x00U | 2) & 0x80U) && ((s16_t)((0x00U | 2) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("tcp_write: could not allocate memory for header pbuf\n"); if ((0x00U | 2) & 0x08U) { while(1); } } } while(0);
        goto memerr;
      }

      pbuf_cat(p , p2 );
    }

    queuelen += pbuf_clen(p);




    if ((queuelen > ((4 * ((2 * (1500 - 40))) + ((1500 - 40) - 1))/((1500 - 40)))) || (queuelen > (0xffffU-3))) {
      do { if ( ((0x00U | 2) & 0x80U) && ((0x00U | 2) & 0x80U) && ((s16_t)((0x00U | 2) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("tcp_write: queue too long %""u"" (%""u"")\n", queuelen, ((4 * ((2 * (1500 - 40))) + ((1500 - 40) - 1))/((1500 - 40)))); if ((0x00U | 2) & 0x08U) { while(1); } } } while(0);
      pbuf_free(p);
      goto memerr;
    }

    if ((seg = tcp_create_segment(pcb, p, 0, pcb->snd_lbb + pos, optflags)) == ((void *)0)) {
      goto memerr;
    }

    seg->oversize_left = oversize;


    seg->chksum = chksum;
    seg->chksum_swapped = chksum_swapped;
    seg->flags |= (u8_t)0x04U;



    if (queue == ((void *)0)) {
      queue = seg;
    } else {

      do { if(!(prev_seg != ((void *)0))) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "prev_seg != NULL", 605, "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_out.c"); ; } while(0);
      prev_seg->next = seg;
    }

    prev_seg = seg;

    do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x80U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("tcp_write: queueing %""u"":%""u""\n", lwip_ntohl(seg->tcphdr->seqno), lwip_ntohl(seg->tcphdr->seqno) + ((seg)->len + (((lwip_ntohs(((seg)->tcphdr)->_hdrlen_rsvd_flags) & 0x3fU) & (0x01U | 0x02U)) != 0))); if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0)

                                                   ;

    pos += seglen;
  }
# 628 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_out.c"
  if (oversize_used > 0) {
    struct pbuf *p;

    for (p = last_unsent->p; p; p = p->next) {
      p->tot_len += oversize_used;
      if (p->next == ((void *)0)) {
        do { tcp_seg_add_chksum(lwip_chksum_copy((char *)p->payload + p->len, arg, oversize_used), oversize_used, &last_unsent->chksum, &last_unsent->chksum_swapped); last_unsent->flags |= (u8_t)0x04U; } while(0);
        p->len += oversize_used;
      }
    }
    last_unsent->len += oversize_used;

    do { if(!(last_unsent->oversize_left >= oversize_used)) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "last_unsent->oversize_left >= oversize_used",
 641
# 640 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_out.c"
    ,
 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_out.c"
# 640 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_out.c"
    ); ; } while(0)
                                                            ;
    last_unsent->oversize_left -= oversize_used;

  }
  pcb->unsent_oversize = oversize;





  if (concat_p != ((void *)0)) {
    do { if(!((last_unsent != ((void *)0)))) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "tcp_write: cannot concatenate when pcb->unsent is empty",
 653
# 652 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_out.c"
    ,
 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_out.c"
# 652 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_out.c"
    ); ; } while(0)
                            ;
    pbuf_cat(last_unsent->p, concat_p);
    last_unsent->len += concat_p->tot_len;

    if (concat_chksummed) {
      tcp_seg_add_chksum(concat_chksum, concat_chksummed, &last_unsent->chksum,
        &last_unsent->chksum_swapped);
      last_unsent->flags |= (u8_t)0x04U;
    }

  }




  if (last_unsent == ((void *)0)) {
    pcb->unsent = queue;
  } else {
    last_unsent->next = queue;
  }




  pcb->snd_lbb += len;
  pcb->snd_buf -= len;
  pcb->snd_queuelen = queuelen;

  do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("tcp_write: %""d"" (after enqueued)\n", pcb->snd_queuelen); if ((0x00U) & 0x08U) { while(1); } } } while(0)
                       ;
  if (pcb->snd_queuelen != 0) {
    do { if(!(pcb->unacked != ((void *)0) || pcb->unsent != ((void *)0))) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "tcp_write: valid queue length",
 685
# 684 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_out.c"
    ,
 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_out.c"
# 684 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_out.c"
    ); ; } while(0)
                                                            ;
  }


  if (seg != ((void *)0) && seg->tcphdr != ((void *)0) && ((apiflags & 0x02)==0)) {
    (seg->tcphdr)->_hdrlen_rsvd_flags = ((seg->tcphdr)->_hdrlen_rsvd_flags | lwip_htons(0x08U));
  }

  return 0;
memerr:
  pcb->flags |= ((u8_t)0x80U);
  ++lwip_stats.tcp.memerr;

  if (concat_p != ((void *)0)) {
    pbuf_free(concat_p);
  }
  if (queue != ((void *)0)) {
    tcp_segs_free(queue);
  }
  if (pcb->snd_queuelen != 0) {
    do { if(!(pcb->unacked != ((void *)0) || pcb->unsent != ((void *)0))) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "tcp_write: valid queue length",
 706
# 705 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_out.c"
    ,
 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_out.c"
# 705 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_out.c"
    ); ; } while(0)
                          ;
  }
  do { if ( ((0x00U | 0x20U) & 0x80U) && ((0x00U | 0x20U) & 0x80U) && ((s16_t)((0x00U | 0x20U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("tcp_write: %""d"" (with mem err)\n", pcb->snd_queuelen); if ((0x00U | 0x20U) & 0x08U) { while(1); } } } while(0);
  return -1;
}
# 722 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_out.c"
err_t
tcp_enqueue_flags(struct tcp_pcb *pcb, u8_t flags)
{
  struct pbuf *p;
  struct tcp_seg *seg;
  u8_t optflags = 0;
  u8_t optlen = 0;

  do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("tcp_enqueue_flags: queuelen: %""u""\n", (u16_t)pcb->snd_queuelen); if ((0x00U) & 0x08U) { while(1); } } } while(0);

  do { if(!((flags & (0x02U | 0x01U)) != 0)) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "tcp_enqueue_flags: need either TCP_SYN or TCP_FIN in flags (programmer violates API)",
 733
# 732 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_out.c"
  ,
 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_out.c"
# 732 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_out.c"
  ); ; } while(0)
                                                 ;


  if ((pcb->snd_queuelen >= ((4 * ((2 * (1500 - 40))) + ((1500 - 40) - 1))/((1500 - 40)))) || (pcb->snd_queuelen > (0xffffU-3))) {
    do { if ( ((0x00U | 3) & 0x80U) && ((0x00U | 3) & 0x80U) && ((s16_t)((0x00U | 3) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("tcp_enqueue_flags: too long queue %""u"" (max %""u"")\n", pcb->snd_queuelen, ((4 * ((2 * (1500 - 40))) + ((1500 - 40) - 1))/((1500 - 40)))); if ((0x00U | 3) & 0x08U) { while(1); } } } while(0)
                                                                            ;
    ++lwip_stats.tcp.memerr;
    pcb->flags |= ((u8_t)0x80U);
    return -1;
  }

  if (flags & 0x02U) {
    optflags = (u8_t)0x01U;
  }





  optlen = (optflags & (u8_t)0x01U ? 4 : 0) + (optflags & (u8_t)0x02U ? 12 : 0);





  if (pcb->snd_buf == 0) {
    do { if ( ((0x00U | 3) & 0x80U) && ((0x00U | 3) & 0x80U) && ((s16_t)((0x00U | 3) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("tcp_enqueue_flags: no send buffer available\n"); if ((0x00U | 3) & 0x08U) { while(1); } } } while(0);
    ++lwip_stats.tcp.memerr;
    return -1;
  }


  if ((p = pbuf_alloc(PBUF_TRANSPORT, optlen, PBUF_RAM)) == ((void *)0)) {
    pcb->flags |= ((u8_t)0x80U);
    ++lwip_stats.tcp.memerr;
    return -1;
  }
  do { if(!((p->len >= optlen))) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "tcp_enqueue_flags: check that first pbuf can hold optlen",
 771
# 770 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_out.c"
  ,
 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_out.c"
# 770 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_out.c"
  ); ; } while(0)
                                 ;


  if ((seg = tcp_create_segment(pcb, p, flags, pcb->snd_lbb, optflags)) == ((void *)0)) {
    pcb->flags |= ((u8_t)0x80U);
    ++lwip_stats.tcp.memerr;
    return -1;
  }
  do { if(!(((mem_ptr_t)seg->tcphdr % 4) == 0)) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "seg->tcphdr not aligned", 779, "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_out.c"); ; } while(0);
  do { if(!(seg->len == 0)) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "tcp_enqueue_flags: invalid segment length", 780, "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_out.c"); ; } while(0);

  do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x80U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("tcp_enqueue_flags: queueing %""u"":%""u"" (0x%""x"")\n", lwip_ntohl(seg->tcphdr->seqno), lwip_ntohl(seg->tcphdr->seqno) + ((seg)->len + (((lwip_ntohs(((seg)->tcphdr)->_hdrlen_rsvd_flags) & 0x3fU) & (0x01U | 0x02U)) != 0)), (u16_t)flags); if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0)



                             ;


  if (pcb->unsent == ((void *)0)) {
    pcb->unsent = seg;
  } else {
    struct tcp_seg *useg;
    for (useg = pcb->unsent; useg->next != ((void *)0); useg = useg->next);
    useg->next = seg;
  }


  pcb->unsent_oversize = 0;



  if ((flags & 0x02U) || (flags & 0x01U)) {
    pcb->snd_lbb++;

    pcb->snd_buf--;
  }
  if (flags & 0x01U) {
    pcb->flags |= ((u8_t)0x20U);
  }


  pcb->snd_queuelen += pbuf_clen(seg->p);
  do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("tcp_enqueue_flags: %""d"" (after enqueued)\n", pcb->snd_queuelen); if ((0x00U) & 0x08U) { while(1); } } } while(0);
  if (pcb->snd_queuelen != 0) {
    do { if(!(pcb->unacked != ((void *)0) || pcb->unsent != ((void *)0))) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "tcp_enqueue_flags: invalid queue length",
 816
# 815 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_out.c"
    ,
 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_out.c"
# 815 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_out.c"
    ); ; } while(0)
                                                  ;
  }

  return 0;
}
# 842 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_out.c"
err_t
tcp_send_empty_ack(struct tcp_pcb *pcb)
{
  struct pbuf *p;
  struct tcp_hdr *tcphdr;
  u8_t optlen = 0;







  p = tcp_output_alloc_header(pcb, optlen, 0, lwip_htonl(pcb->snd_nxt));
  if (p == ((void *)0)) {
    do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("tcp_output: (ACK) could not allocate pbuf\n"); if ((0x00U) & 0x08U) { while(1); } } } while(0);
    return -2;
  }
  tcphdr = (struct tcp_hdr *)p->payload;
  do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("tcp_output: sending ACK for %""u""\n", pcb->rcv_nxt); if ((0x00U) & 0x08U) { while(1); } } } while(0)
                                                                       ;

  pcb->flags &= ~(((u8_t)0x01U) | ((u8_t)0x02U));
# 876 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_out.c"
  tcphdr->chksum = inet_chksum_pseudo(p, &(pcb->local_ip), &(pcb->remote_ip),
        6, p->tot_len);





  ip_output(p, &(pcb->local_ip), &(pcb->remote_ip), pcb->ttl, pcb->tos,
      6);

  pbuf_free(p);

  return 0;
}
# 898 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_out.c"
err_t
tcp_output(struct tcp_pcb *pcb)
{
  struct tcp_seg *seg, *useg;
  u32_t wnd, snd_nxt;





  do { if(!(pcb->state != LISTEN)) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "don't call tcp_output for listen-pcbs",
 909
# 908 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_out.c"
  ,
 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_out.c"
# 908 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_out.c"
  ); ; } while(0)
                         ;





  if (tcp_input_pcb == pcb) {
    return 0;
  }

  wnd = (((pcb->snd_wnd) < (pcb->cwnd)) ? (pcb->snd_wnd) : (pcb->cwnd));

  seg = pcb->unsent;







  if (pcb->flags & ((u8_t)0x02U) &&
     (seg == ((void *)0) ||
      lwip_ntohl(seg->tcphdr->seqno) - pcb->lastack + seg->len > wnd)) {
     return tcp_send_empty_ack(pcb);
  }


  useg = pcb->unacked;
  if (useg != ((void *)0)) {
    for (; useg->next != ((void *)0); useg = useg->next);
  }
# 963 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_out.c"
  while (seg != ((void *)0) &&
         lwip_ntohl(seg->tcphdr->seqno) - pcb->lastack + seg->len <= wnd) {
    do { if(!(((lwip_ntohs((seg->tcphdr)->_hdrlen_rsvd_flags) & 0x3fU) & 0x04U) == 0)) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "RST not expected here!",
 966
# 965 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_out.c"
    ,
 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_out.c"
# 965 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_out.c"
    ); ; } while(0)
                                                         ;







    if((((((pcb)->unacked == ((void *)0)) || ((pcb)->flags & (((u8_t)0x40U) | ((u8_t)0x04U))) || (((pcb)->unsent != ((void *)0)) && (((pcb)->unsent->next != ((void *)0)) || ((pcb)->unsent->len >= (pcb)->mss))) || ((((pcb)->snd_buf) == 0) || (((pcb)->snd_queuelen) >= ((4 * ((2 * (1500 - 40))) + ((1500 - 40) - 1))/((1500 - 40))))) ) ? 1 : 0) == 0) &&
      ((pcb->flags & (((u8_t)0x80U) | ((u8_t)0x20U))) == 0)){
      break;
    }
# 987 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_out.c"
    pcb->unsent = seg->next;

    if (pcb->state != SYN_SENT) {
      (seg->tcphdr)->_hdrlen_rsvd_flags = ((seg->tcphdr)->_hdrlen_rsvd_flags | lwip_htons(0x10U));
      pcb->flags &= ~(((u8_t)0x01U) | ((u8_t)0x02U));
    }

    tcp_output_segment(seg, pcb);
    snd_nxt = lwip_ntohl(seg->tcphdr->seqno) + ((seg)->len + (((lwip_ntohs(((seg)->tcphdr)->_hdrlen_rsvd_flags) & 0x3fU) & (0x01U | 0x02U)) != 0));
    if (((s32_t)((u32_t)(pcb->snd_nxt) - (u32_t)(snd_nxt)) < 0)) {
      pcb->snd_nxt = snd_nxt;
    }

    if (((seg)->len + (((lwip_ntohs(((seg)->tcphdr)->_hdrlen_rsvd_flags) & 0x3fU) & (0x01U | 0x02U)) != 0)) > 0) {
      seg->next = ((void *)0);

      if (pcb->unacked == ((void *)0)) {
        pcb->unacked = seg;
        useg = seg;

      } else {



        if (((s32_t)((u32_t)(lwip_ntohl(seg->tcphdr->seqno)) - (u32_t)(lwip_ntohl(useg->tcphdr->seqno))) < 0)) {

          struct tcp_seg **cur_seg = &(pcb->unacked);
          while (*cur_seg &&
            ((s32_t)((u32_t)(lwip_ntohl((*cur_seg)->tcphdr->seqno)) - (u32_t)(lwip_ntohl(seg->tcphdr->seqno))) < 0)) {
              cur_seg = &((*cur_seg)->next );
          }
          seg->next = (*cur_seg);
          (*cur_seg) = seg;
        } else {

          useg->next = seg;
          useg = useg->next;
        }
      }

    } else {
      tcp_seg_free(seg);
    }
    seg = pcb->unsent;
  }

  if (pcb->unsent == ((void *)0)) {

    pcb->unsent_oversize = 0;
  }


  pcb->flags &= ~((u8_t)0x80U);
  return 0;
}







static void
tcp_output_segment(struct tcp_seg *seg, struct tcp_pcb *pcb)
{
  u16_t len;
  struct netif *netif;
  u32_t *opts;


  ;



  seg->tcphdr->ackno = lwip_htonl(pcb->rcv_nxt);


  seg->tcphdr->wnd = lwip_htons(pcb->rcv_ann_wnd);

  pcb->rcv_ann_right_edge = pcb->rcv_nxt + pcb->rcv_ann_wnd;



  opts = (u32_t *)(void *)(seg->tcphdr + 1);
  if (seg->flags & (u8_t)0x01U) {
    u16_t mss;

    mss = tcp_eff_send_mss((1500 - 40), &pcb->remote_ip);



    *opts = lwip_htonl(0x02040000 | ((mss) & 0xFFFF));
    opts += 1;
  }
# 1092 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_out.c"
  if (pcb->rtime == -1) {
    pcb->rtime = 0;
  }



  if (((&(pcb->local_ip)) == ((void *)0) || (&(pcb->local_ip))->addr == ((u32_t)0x00000000UL))) {
    netif = ip_route(&(pcb->remote_ip));
    if (netif == ((void *)0)) {
      return;
    }
    ((pcb->local_ip).addr = (netif->ip_addr).addr);
  }

  if (pcb->rttest == 0) {
    pcb->rttest = tcp_ticks;
    pcb->rtseq = lwip_ntohl(seg->tcphdr->seqno);

    do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("tcp_output_segment: rtseq %""u""\n", pcb->rtseq); if ((0x00U) & 0x08U) { while(1); } } } while(0);
  }
  do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("tcp_output_segment: %""u"":%""u""\n", lwip_htonl(seg->tcphdr->seqno), lwip_htonl(seg->tcphdr->seqno) + seg->len); if ((0x00U) & 0x08U) { while(1); } } } while(0)

                    ;

  len = (u16_t)((u8_t *)seg->tcphdr - (u8_t *)seg->p->payload);

  seg->p->len -= len;
  seg->p->tot_len -= len;

  seg->p->payload = seg->tcphdr;

  seg->tcphdr->chksum = 0;


  {
    u32_t acc;





    if ((seg->flags & (u8_t)0x04U) == 0) {
      do { if(!(seg->p->tot_len == ((lwip_ntohs((seg->tcphdr)->_hdrlen_rsvd_flags) >> 12) * 4))) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "data included but not checksummed",
 1135
# 1134 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_out.c"
      ,
 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_out.c"
# 1134 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_out.c"
      ); ; } while(0)
                                                          ;
    }


    acc = inet_chksum_pseudo_partial(seg->p, &(pcb->local_ip),
             &(pcb->remote_ip),
             6, seg->p->tot_len, (lwip_ntohs((seg->tcphdr)->_hdrlen_rsvd_flags) >> 12) * 4);

    if (seg->chksum_swapped) {
      seg->chksum = (((seg->chksum) & 0xff) << 8) | (((seg->chksum) & 0xff00) >> 8);
      seg->chksum_swapped = 0;
    }
    acc += (u16_t)~(seg->chksum);
    seg->tcphdr->chksum = (((acc) >> 16) + ((acc) & 0x0000ffffUL));
# 1157 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_out.c"
  }






  ++lwip_stats.tcp.xmit;





  ip_output(seg->p, &(pcb->local_ip), &(pcb->remote_ip), pcb->ttl, pcb->tos,
      6);

}
# 1195 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_out.c"
void
tcp_rst(u32_t seqno, u32_t ackno,
  ip_addr_t *local_ip, ip_addr_t *remote_ip,
  u16_t local_port, u16_t remote_port)
{
  struct pbuf *p;
  struct tcp_hdr *tcphdr;
  p = pbuf_alloc(PBUF_IP, 20, PBUF_RAM);
  if (p == ((void *)0)) {
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("tcp_rst: could not allocate memory for pbuf\n"); if ((0x00U) & 0x08U) { while(1); } } } while(0);
      return;
  }
  do { if(!((p->len >= sizeof(struct tcp_hdr)))) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "check that first pbuf can hold struct tcp_hdr",
 1208
# 1207 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_out.c"
  ,
 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_out.c"
# 1207 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_out.c"
  ); ; } while(0)
                                                 ;

  tcphdr = (struct tcp_hdr *)p->payload;
  tcphdr->src = lwip_htons(local_port);
  tcphdr->dest = lwip_htons(remote_port);
  tcphdr->seqno = lwip_htonl(seqno);
  tcphdr->ackno = lwip_htonl(ackno);
  (tcphdr)->_hdrlen_rsvd_flags = lwip_htons(((20/4) << 12) | (0x04U | 0x10U));
  tcphdr->wnd = (((((4 * (1500 - 40))) & 0xff) << 8) | ((((4 * (1500 - 40))) & 0xff00) >> 8));
  tcphdr->chksum = 0;
  tcphdr->urgp = 0;


  tcphdr->chksum = inet_chksum_pseudo(p, local_ip, remote_ip,
              6, p->tot_len);

  ++lwip_stats.tcp.xmit;
  ;

  ip_output(p, local_ip, remote_ip, 255, 0, 6);
  pbuf_free(p);
  do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("tcp_rst: seqno %""u"" ackno %""u"".\n", seqno, ackno); if ((0x00U) & 0x08U) { while(1); } } } while(0);
}
# 1239 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_out.c"
void
tcp_rexmit_rto(struct tcp_pcb *pcb)
{
  struct tcp_seg *seg;

  if (pcb->unacked == ((void *)0)) {
    return;
  }


  for (seg = pcb->unacked; seg->next != ((void *)0); seg = seg->next);

  seg->next = pcb->unsent;

  pcb->unsent = pcb->unacked;

  pcb->unacked = ((void *)0);



  ++pcb->nrtx;


  pcb->rttest = 0;


  tcp_output(pcb);
}
# 1275 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_out.c"
void
tcp_rexmit(struct tcp_pcb *pcb)
{
  struct tcp_seg *seg;
  struct tcp_seg **cur_seg;

  if (pcb->unacked == ((void *)0)) {
    return;
  }



  seg = pcb->unacked;
  pcb->unacked = seg->next;

  cur_seg = &(pcb->unsent);
  while (*cur_seg &&
    ((s32_t)((u32_t)(lwip_ntohl((*cur_seg)->tcphdr->seqno)) - (u32_t)(lwip_ntohl(seg->tcphdr->seqno))) < 0)) {
      cur_seg = &((*cur_seg)->next );
  }
  seg->next = *cur_seg;
  *cur_seg = seg;

  if (seg->next == ((void *)0)) {

    pcb->unsent_oversize = 0;
  }


  ++pcb->nrtx;


  pcb->rttest = 0;


  ;


}







void
tcp_rexmit_fast(struct tcp_pcb *pcb)
{
  if (pcb->unacked != ((void *)0) && !(pcb->flags & ((u8_t)0x04U))) {

    do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("tcp_receive: dupacks %""u"" (%""u" "), fast retransmit %""u""\n", (u16_t)pcb->dupacks, pcb->lastack, lwip_ntohl(pcb->unacked->tcphdr->seqno)); if ((0x00U) & 0x08U) { while(1); } } } while(0)



                                                     ;
    tcp_rexmit(pcb);



    if (pcb->cwnd > pcb->snd_wnd) {
      pcb->ssthresh = pcb->snd_wnd / 2;
    } else {
      pcb->ssthresh = pcb->cwnd / 2;
    }


    if (pcb->ssthresh < 2*pcb->mss) {
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("tcp_receive: The minimum value for ssthresh %""u" " should be min 2 mss %""u""...\n", pcb->ssthresh, 2*pcb->mss); if ((0x00U) & 0x08U) { while(1); } } } while(0)


                                              ;
      pcb->ssthresh = 2*pcb->mss;
    }

    pcb->cwnd = pcb->ssthresh + 3 * pcb->mss;
    pcb->flags |= ((u8_t)0x04U);
  }
}
# 1364 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_out.c"
void
tcp_keepalive(struct tcp_pcb *pcb)
{
  struct pbuf *p;
  struct tcp_hdr *tcphdr;

  do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("tcp_keepalive: sending KEEPALIVE probe to %""u"".%""u"".%""u"".%""u""\n", ((u16_t)(((u8_t*)(&pcb->remote_ip))[0])), ((u16_t)(((u8_t*)(&pcb->remote_ip))[1])), ((u16_t)(((u8_t*)(&pcb->remote_ip))[2])), ((u16_t)(((u8_t*)(&pcb->remote_ip))[3]))); if ((0x00U) & 0x08U) { while(1); } } } while(0)

                                                                                        ;

  do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("tcp_keepalive: tcp_ticks %""u""   pcb->tmr %""u"" pcb->keep_cnt_sent %""u""\n", tcp_ticks, pcb->tmr, pcb->keep_cnt_sent); if ((0x00U) & 0x08U) { while(1); } } } while(0)
                                                                   ;

  p = tcp_output_alloc_header(pcb, 0, 0, lwip_htonl(pcb->snd_nxt - 1));
  if(p == ((void *)0)) {
    do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("tcp_keepalive: could not allocate memory for pbuf\n"); if ((0x00U) & 0x08U) { while(1); } } } while(0)
                                                                        ;
    return;
  }
  tcphdr = (struct tcp_hdr *)p->payload;


  tcphdr->chksum = inet_chksum_pseudo(p, &pcb->local_ip, &pcb->remote_ip,
                                      6, p->tot_len);

  ++lwip_stats.tcp.xmit;






  ip_output(p, &pcb->local_ip, &pcb->remote_ip, pcb->ttl, 0, 6);


  pbuf_free(p);

  do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("tcp_keepalive: seqno %""u"" ackno %""u"".\n", pcb->snd_nxt - 1, pcb->rcv_nxt); if ((0x00U) & 0x08U) { while(1); } } } while(0)
                                                          ;
}
# 1414 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/tcp_out.c"
void
tcp_zero_window_probe(struct tcp_pcb *pcb)
{
  struct pbuf *p;
  struct tcp_hdr *tcphdr;
  struct tcp_seg *seg;
  u16_t len;
  u8_t is_fin;

  do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("tcp_zero_window_probe: sending ZERO WINDOW probe to %" "u"".%""u"".%""u"".%""u""\n", ((u16_t)(((u8_t*)(&pcb->remote_ip))[0])), ((u16_t)(((u8_t*)(&pcb->remote_ip))[1])), ((u16_t)(((u8_t*)(&pcb->remote_ip))[2])), ((u16_t)(((u8_t*)(&pcb->remote_ip))[3]))); if ((0x00U) & 0x08U) { while(1); } } } while(0)



                                                                             ;

  do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("tcp_zero_window_probe: tcp_ticks %""u" "   pcb->tmr %""u"" pcb->keep_cnt_sent %""u""\n", tcp_ticks, pcb->tmr, pcb->keep_cnt_sent); if ((0x00U) & 0x08U) { while(1); } } } while(0)


                                                        ;

  seg = pcb->unacked;

  if(seg == ((void *)0)) {
    seg = pcb->unsent;
  }
  if(seg == ((void *)0)) {
    return;
  }

  is_fin = (((lwip_ntohs((seg->tcphdr)->_hdrlen_rsvd_flags) & 0x3fU) & 0x01U) != 0) && (seg->len == 0);

  len = is_fin ? 0 : 1;

  p = tcp_output_alloc_header(pcb, 0, len, seg->tcphdr->seqno);
  if(p == ((void *)0)) {
    do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("tcp_zero_window_probe: no memory for pbuf\n"); if ((0x00U) & 0x08U) { while(1); } } } while(0);
    return;
  }
  tcphdr = (struct tcp_hdr *)p->payload;

  if (is_fin) {

    (tcphdr)->_hdrlen_rsvd_flags = (((tcphdr)->_hdrlen_rsvd_flags & (((((u16_t)(~(u16_t)(0x3fU))) & 0xff) << 8) | ((((u16_t)(~(u16_t)(0x3fU))) & 0xff00) >> 8))) | lwip_htons(0x10U | 0x01U));
  } else {

    char *d = ((char *)p->payload + 20);



    pbuf_copy_partial(seg->p, d, 1, seg->p->tot_len - seg->len);
  }


  tcphdr->chksum = inet_chksum_pseudo(p, &pcb->local_ip, &pcb->remote_ip,
                                      6, p->tot_len);

  ++lwip_stats.tcp.xmit;






  ip_output(p, &pcb->local_ip, &pcb->remote_ip, pcb->ttl, 0, 6);


  pbuf_free(p);

  do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("tcp_zero_window_probe: seqno %""u" " ackno %""u"".\n", pcb->snd_nxt - 1, pcb->rcv_nxt); if ((0x00U) & 0x08U) { while(1); } } } while(0)

                                                          ;
}
