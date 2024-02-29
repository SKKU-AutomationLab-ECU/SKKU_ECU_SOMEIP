# 1 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/ipv4/ip_frag.c"
# 1 "D:\\00.Workspace\\TC275\\SKKU_ECU_SOMEIP\\TC275_SOME_IP_Flatform//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/ipv4/ip_frag.c"
# 41 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/ipv4/ip_frag.c"
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
# 42 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/ipv4/ip_frag.c" 2
# 1 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/ipv4/lwip/ip_frag.h" 1
# 37 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/ipv4/lwip/ip_frag.h"
# 1 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/err.h" 1
# 47 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/err.h"
typedef s8_t err_t;
# 76 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/err.h"
extern const char *lwip_strerr(err_t err);
# 38 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/ipv4/lwip/ip_frag.h" 2
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
# 39 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/ipv4/lwip/ip_frag.h" 2
# 1 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/netif.h" 1
# 41 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/netif.h"
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
# 42 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/netif.h" 2
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
# 40 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/ipv4/lwip/ip_frag.h" 2

# 1 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/ipv4/lwip/ip.h" 1
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
# 42 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/ipv4/lwip/ip_frag.h" 2
# 54 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/ipv4/lwip/ip_frag.h"
struct ip_reassdata {
  struct ip_reassdata *next;
  struct pbuf *p;
  struct ip_hdr iphdr;
  u16_t datagram_len;
  u8_t flags;
  u8_t timer;
};

void ip_reass_init(void);
void ip_reass_tmr(void);
struct pbuf * ip_reass(struct pbuf *p);







struct pbuf_custom_ref {

  struct pbuf_custom pc;

  struct pbuf *original;
};


err_t ip_frag(struct pbuf *p, struct netif *netif, const ip_addr_t *dest);
# 43 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/ipv4/ip_frag.c" 2

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
# 45 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/ipv4/ip_frag.c" 2

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
# 47 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/ipv4/ip_frag.c" 2
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
# 48 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/ipv4/ip_frag.c" 2
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
# 49 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/ipv4/ip_frag.c" 2

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


# 51 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/ipv4/ip_frag.c" 2
# 91 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/ipv4/ip_frag.c"

struct ip_reass_helper {
  struct pbuf *next_pbuf;
  u16_t start;
  u16_t end;
} __attribute__ ((__packed__));

# 108 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/ipv4/ip_frag.c"
static struct ip_reassdata *reassdatagrams;
static u16_t ip_reass_pbufcount;


static void ip_reass_dequeue_datagram(struct ip_reassdata *ipr, struct ip_reassdata *prev);
static int ip_reass_free_complete_datagram(struct ip_reassdata *ipr, struct ip_reassdata *prev);







void
ip_reass_tmr(void)
{
  struct ip_reassdata *r, *prev = ((void *)0);

  r = reassdatagrams;
  while (r != ((void *)0)) {


    if (r->timer > 0) {
      r->timer--;
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("ip_reass_tmr: timer dec %""u""\n",(u16_t)r->timer); if ((0x00U) & 0x08U) { while(1); } } } while(0);
      prev = r;
      r = r->next;
    } else {

      struct ip_reassdata *tmp;
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("ip_reass_tmr: timer timed out\n"); if ((0x00U) & 0x08U) { while(1); } } } while(0);
      tmp = r;

      r = r->next;

      ip_reass_free_complete_datagram(tmp, prev);
     }
   }
}
# 157 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/ipv4/ip_frag.c"
static int
ip_reass_free_complete_datagram(struct ip_reassdata *ipr, struct ip_reassdata *prev)
{
  u16_t pbufs_freed = 0;
  u8_t clen;
  struct pbuf *p;
  struct ip_reass_helper *iprh;

  do { if(!(prev != ipr)) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "prev != ipr", 165, "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/ipv4/ip_frag.c"); ; } while(0);
  if (prev != ((void *)0)) {
    do { if(!(prev->next == ipr)) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "prev->next == ipr", 167, "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/ipv4/ip_frag.c"); ; } while(0);
  }

  ;

  iprh = (struct ip_reass_helper *)ipr->p->payload;
  if (iprh->start == 0) {


    p = ipr->p;
    ipr->p = iprh->next_pbuf;

    memcpy(p->payload,&ipr->iphdr,20);
    icmp_time_exceeded(p, ICMP_TE_FRAG);
    clen = pbuf_clen(p);
    do { if(!(pbufs_freed + clen <= 0xffff)) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "pbufs_freed + clen <= 0xffff", 182, "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/ipv4/ip_frag.c"); ; } while(0);
    pbufs_freed += clen;
    pbuf_free(p);
  }




  p = ipr->p;
  while (p != ((void *)0)) {
    struct pbuf *pcur;
    iprh = (struct ip_reass_helper *)p->payload;
    pcur = p;

    p = iprh->next_pbuf;
    clen = pbuf_clen(pcur);
    do { if(!(pbufs_freed + clen <= 0xffff)) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "pbufs_freed + clen <= 0xffff", 198, "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/ipv4/ip_frag.c"); ; } while(0);
    pbufs_freed += clen;
    pbuf_free(pcur);
  }

  ip_reass_dequeue_datagram(ipr, prev);
  do { if(!(ip_reass_pbufcount >= pbufs_freed)) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "ip_reass_pbufcount >= clen", 204, "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/ipv4/ip_frag.c"); ; } while(0);
  ip_reass_pbufcount -= pbufs_freed;

  return pbufs_freed;
}
# 220 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/ipv4/ip_frag.c"
static int
ip_reass_remove_oldest_datagram(struct ip_hdr *fraghdr, int pbufs_needed)
{



  struct ip_reassdata *r, *oldest, *prev;
  int pbufs_freed = 0, pbufs_freed_current;
  int other_datagrams;



  do {
    oldest = ((void *)0);
    prev = ((void *)0);
    other_datagrams = 0;
    r = reassdatagrams;
    while (r != ((void *)0)) {
      if (!(((&(&r->iphdr)->src)->addr == (&(fraghdr)->src)->addr) && ((&(&r->iphdr)->dest)->addr == (&(fraghdr)->dest)->addr) && ((&r->iphdr)->_id) == ((fraghdr)->_id)) ? 1 : 0) {

        other_datagrams++;
        if (oldest == ((void *)0)) {
          oldest = r;
        } else if (r->timer <= oldest->timer) {

          oldest = r;
        }
      }
      if (r->next != ((void *)0)) {
        prev = r;
      }
      r = r->next;
    }
    if (oldest != ((void *)0)) {
      pbufs_freed_current = ip_reass_free_complete_datagram(oldest, prev);
      pbufs_freed += pbufs_freed_current;
    }
  } while ((pbufs_freed < pbufs_needed) && (other_datagrams > 1));
  return pbufs_freed;
}
# 268 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/ipv4/ip_frag.c"
static struct ip_reassdata*
ip_reass_enqueue_new_datagram(struct ip_hdr *fraghdr, int clen)
{
  struct ip_reassdata* ipr;

  ipr = (struct ip_reassdata *)memp_malloc(MEMP_REASSDATA);
  if (ipr == ((void *)0)) {

    if (ip_reass_remove_oldest_datagram(fraghdr, clen) >= clen) {
      ipr = (struct ip_reassdata *)memp_malloc(MEMP_REASSDATA);
    }
    if (ipr == ((void *)0))

    {
      ++lwip_stats.ip_frag.memerr;
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("Failed to alloc reassdata struct\n"); if ((0x00U) & 0x08U) { while(1); } } } while(0);
      return ((void *)0);
    }
  }
  memset(ipr, 0, sizeof(struct ip_reassdata));
  ipr->timer = 3;


  ipr->next = reassdatagrams;
  reassdatagrams = ipr;


  memcpy(&(ipr->iphdr),fraghdr,20);
  return ipr;
}





static void
ip_reass_dequeue_datagram(struct ip_reassdata *ipr, struct ip_reassdata *prev)
{


  if (reassdatagrams == ipr) {

    reassdatagrams = ipr->next;
  } else {

    do { if(!(prev != ((void *)0))) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "sanity check linked list", 313, "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/ipv4/ip_frag.c"); ; } while(0);
    prev->next = ipr->next;
  }


  memp_free(MEMP_REASSDATA, ipr);
}
# 330 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/ipv4/ip_frag.c"
static int
ip_reass_chain_frag_into_datagram_and_validate(struct ip_reassdata *ipr, struct pbuf *new_p)
{
  struct ip_reass_helper *iprh, *iprh_tmp, *iprh_prev=((void *)0);
  struct pbuf *q;
  u16_t offset,len;
  struct ip_hdr *fraghdr;
  int valid = 1;


  fraghdr = (struct ip_hdr*)new_p->payload;
  len = lwip_ntohs(((fraghdr)->_len)) - ((fraghdr)->_v_hl & 0x0f) * 4;
  offset = (lwip_ntohs(((fraghdr)->_offset)) & 0x1fffU) * 8;




  do { if(!(sizeof(struct ip_reass_helper) <= 20)) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "sizeof(struct ip_reass_helper) <= IP_HLEN",
 348
# 347 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/ipv4/ip_frag.c"
  ,
 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/ipv4/ip_frag.c"
# 347 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/ipv4/ip_frag.c"
  ); ; } while(0)
                                                        ;
  iprh = (struct ip_reass_helper*)new_p->payload;
  iprh->next_pbuf = ((void *)0);
  iprh->start = offset;
  iprh->end = offset + len;



  for (q = ipr->p; q != ((void *)0);) {
    iprh_tmp = (struct ip_reass_helper*)q->payload;
    if (iprh->start < iprh_tmp->start) {

      iprh->next_pbuf = q;
      if (iprh_prev != ((void *)0)) {


        if ((iprh->start < iprh_prev->end) || (iprh->end > iprh_tmp->start)) {

          goto freepbuf;
        }

        iprh_prev->next_pbuf = new_p;
      } else {

        ipr->p = new_p;
      }
      break;
    } else if(iprh->start == iprh_tmp->start) {

      goto freepbuf;

    } else if(iprh->start < iprh_tmp->end) {

      goto freepbuf;

    } else {

      if (iprh_prev != ((void *)0)) {
        if (iprh_prev->end != iprh_tmp->start) {


          valid = 0;
        }
      }
    }
    q = iprh_tmp->next_pbuf;
    iprh_prev = iprh_tmp;
  }


  if (q == ((void *)0)) {
    if (iprh_prev != ((void *)0)) {



      do { if(!(iprh_prev->end <= iprh->start)) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "check fragments don't overlap", 403, "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/ipv4/ip_frag.c"); ; } while(0);

      iprh_prev->next_pbuf = new_p;
      if (iprh_prev->end != iprh->start) {
        valid = 0;
      }
    } else {

      do { if(!(ipr->p == ((void *)0))) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "no previous fragment, this must be the first fragment!",
 412
# 411 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/ipv4/ip_frag.c"
      ,
 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/ipv4/ip_frag.c"
# 411 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/ipv4/ip_frag.c"
      ); ; } while(0)
                       ;


      ipr->p = new_p;
    }
  }



  if ((ipr->flags & 0x01) != 0) {

    if (valid) {


      if (((struct ip_reass_helper*)ipr->p->payload)->start != 0) {
        valid = 0;
      } else {

        iprh_prev = iprh;
        q = iprh->next_pbuf;
        while (q != ((void *)0)) {
          iprh = (struct ip_reass_helper*)q->payload;
          if (iprh_prev->end != iprh->start) {
            valid = 0;
            break;
          }
          iprh_prev = iprh;
          q = iprh->next_pbuf;
        }


        if (valid) {
          do { if(!(ipr->p != ((void *)0))) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "sanity check", 444, "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/ipv4/ip_frag.c"); ; } while(0);
          do { if(!(((struct ip_reass_helper*)ipr->p->payload) != iprh)) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "sanity check",
 446
# 445 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/ipv4/ip_frag.c"
          ,
 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/ipv4/ip_frag.c"
# 445 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/ipv4/ip_frag.c"
          ); ; } while(0)
                                                               ;
          do { if(!(iprh->next_pbuf == ((void *)0))) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "validate_datagram:next_pbuf!=NULL",
 448
# 447 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/ipv4/ip_frag.c"
          ,
 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/ipv4/ip_frag.c"
# 447 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/ipv4/ip_frag.c"
          ); ; } while(0)
                                    ;
          do { if(!(iprh->end == ipr->datagram_len)) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "validate_datagram:datagram end!=datagram len",
 450
# 449 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/ipv4/ip_frag.c"
          ,
 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/ipv4/ip_frag.c"
# 449 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/ipv4/ip_frag.c"
          ); ; } while(0)
                                           ;
        }
      }
    }



    return valid;
  }

  return 0;

freepbuf:
  ip_reass_pbufcount -= pbuf_clen(new_p);
  pbuf_free(new_p);
  return 0;

}







struct pbuf *
ip_reass(struct pbuf *p)
{
  struct pbuf *r;
  struct ip_hdr *fraghdr;
  struct ip_reassdata *ipr;
  struct ip_reass_helper *iprh;
  u16_t offset, len;
  u8_t clen;
  struct ip_reassdata *ipr_prev = ((void *)0);

  ++lwip_stats.ip_frag.recv;
  ;

  fraghdr = (struct ip_hdr*)p->payload;

  if ((((fraghdr)->_v_hl & 0x0f) * 4) != 20) {
    do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("ip_reass: IP options currently not supported!\n"); if ((0x00U) & 0x08U) { while(1); } } } while(0);
    ++lwip_stats.ip_frag.err;
    goto nullreturn;
  }

  offset = (lwip_ntohs(((fraghdr)->_offset)) & 0x1fffU) * 8;
  len = lwip_ntohs(((fraghdr)->_len)) - ((fraghdr)->_v_hl & 0x0f) * 4;


  clen = pbuf_clen(p);
  if ((ip_reass_pbufcount + clen) > 10) {

    if (!ip_reass_remove_oldest_datagram(fraghdr, clen) ||
        ((ip_reass_pbufcount + clen) > 10))

    {

      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("ip_reass: Overflow condition: pbufct=%d, clen=%d, MAX=%d\n", ip_reass_pbufcount, clen, 10); if ((0x00U) & 0x08U) { while(1); } } } while(0)
                                                      ;
      ++lwip_stats.ip_frag.memerr;


      goto nullreturn;
    }
  }



  for (ipr = reassdatagrams; ipr != ((void *)0); ipr = ipr->next) {



    if ((((&(&ipr->iphdr)->src)->addr == (&(fraghdr)->src)->addr) && ((&(&ipr->iphdr)->dest)->addr == (&(fraghdr)->dest)->addr) && ((&ipr->iphdr)->_id) == ((fraghdr)->_id)) ? 1 : 0) {
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("ip_reass: matching previous fragment ID=%""x""\n", lwip_ntohs(((fraghdr)->_id))); if ((0x00U) & 0x08U) { while(1); } } } while(0)
                                ;
      ++lwip_stats.ip_frag.cachehit;
      break;
    }
    ipr_prev = ipr;
  }

  if (ipr == ((void *)0)) {

    ipr = ip_reass_enqueue_new_datagram(fraghdr, clen);

    if(ipr == ((void *)0)) {
      goto nullreturn;
    }
  } else {
    if (((lwip_ntohs(((fraghdr)->_offset)) & 0x1fffU) == 0) &&
      ((lwip_ntohs(((&ipr->iphdr)->_offset)) & 0x1fffU) != 0)) {




      memcpy(&ipr->iphdr,fraghdr,20);
    }
  }


  ip_reass_pbufcount += clen;





  if ((((fraghdr)->_offset) & ((((0x2000U) & 0xff) << 8) | (((0x2000U) & 0xff00) >> 8))) == 0) {
    ipr->flags |= 0x01;
    ipr->datagram_len = offset + len;
    do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("ip_reass: last fragment seen, total len %""d""\n", ipr->datagram_len); if ((0x00U) & 0x08U) { while(1); } } } while(0)

                         ;
  }


  if (ip_reass_chain_frag_into_datagram_and_validate(ipr, p)) {


    ipr->datagram_len += 20;


    r = ((struct ip_reass_helper*)ipr->p->payload)->next_pbuf;


    fraghdr = (struct ip_hdr*)(ipr->p->payload);
    memcpy(fraghdr,&ipr->iphdr,20);
    (fraghdr)->_len = (lwip_htons(ipr->datagram_len));
    (fraghdr)->_offset = (0);
    (fraghdr)->_chksum = (0);

    (fraghdr)->_chksum = (inet_chksum(fraghdr, 20));

    p = ipr->p;


    while(r != ((void *)0)) {
      iprh = (struct ip_reass_helper*)r->payload;


      pbuf_header(r, -20);
      pbuf_cat(p, r);
      r = iprh->next_pbuf;
    }

    ip_reass_dequeue_datagram(ipr, ipr_prev);


    ip_reass_pbufcount -= pbuf_clen(p);


    return p;
  }

  do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("ip_reass_pbufcount: %d out\n", ip_reass_pbufcount); if ((0x00U) & 0x08U) { while(1); } } } while(0);
  return ((void *)0);

nullreturn:
  do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("ip_reass: nullreturn\n"); if ((0x00U) & 0x08U) { while(1); } } } while(0);
  ++lwip_stats.ip_frag.drop;
  pbuf_free(p);
  return ((void *)0);
}
# 623 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/ipv4/ip_frag.c"
static struct pbuf_custom_ref*
ip_frag_alloc_pbuf_custom_ref(void)
{
  return (struct pbuf_custom_ref*)memp_malloc(MEMP_FRAG_PBUF);
}


static void
ip_frag_free_pbuf_custom_ref(struct pbuf_custom_ref* p)
{
  do { if(!(p != ((void *)0))) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "p != NULL", 633, "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/ipv4/ip_frag.c"); ; } while(0);
  memp_free(MEMP_FRAG_PBUF, p);
}



static void
ipfrag_free_pbuf_custom(struct pbuf *p)
{
  struct pbuf_custom_ref *pcr = (struct pbuf_custom_ref*)p;
  do { if(!(pcr != ((void *)0))) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "pcr != NULL", 643, "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/ipv4/ip_frag.c"); ; } while(0);
  do { if(!((void*)pcr == (void*)p)) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "pcr == p", 644, "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/ipv4/ip_frag.c"); ; } while(0);
  if (pcr->original != ((void *)0)) {
    pbuf_free(pcr->original);
  }
  ip_frag_free_pbuf_custom_ref(pcr);
}
# 666 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/ipv4/ip_frag.c"
err_t
ip_frag(struct pbuf *p, struct netif *netif, const ip_addr_t *dest)
{
  struct pbuf *rambuf;




  struct pbuf *newpbuf;

  struct ip_hdr *original_iphdr;

  struct ip_hdr *iphdr;
  u16_t nfb;
  u16_t left, cop;
  u16_t mtu = netif->mtu;
  u16_t ofo, omf;
  u16_t last;
  u16_t poff = 20;
  u16_t tmp;

  u16_t newpbuflen = 0;
  u16_t left_to_copy;
# 709 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/ipv4/ip_frag.c"
  original_iphdr = (struct ip_hdr *)p->payload;
  iphdr = original_iphdr;



  tmp = lwip_ntohs(((iphdr)->_offset));
  ofo = tmp & 0x1fffU;
  omf = tmp & 0x2000U;

  left = p->tot_len - 20;

  nfb = (mtu - 20) / 8;

  while (left) {
    last = (left <= mtu - 20);


    tmp = omf | (0x1fffU & (ofo));
    if (!last) {
      tmp = tmp | 0x2000U;
    }


    cop = last ? left : nfb * 8;
# 759 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/ipv4/ip_frag.c"
    rambuf = pbuf_alloc(PBUF_LINK, 20, PBUF_RAM);
    if (rambuf == ((void *)0)) {
      return -1;
    }
    do { if(!((p->len >= (20)))) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "this needs a pbuf in one piece!",
 764
# 763 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/ipv4/ip_frag.c"
    ,
 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/ipv4/ip_frag.c"
# 763 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/ipv4/ip_frag.c"
    ); ; } while(0)
                                      ;
    memcpy(rambuf->payload,original_iphdr,20);
    iphdr = (struct ip_hdr *)rambuf->payload;


    p->payload = (u8_t *)p->payload + poff;
    p->len -= poff;

    left_to_copy = cop;
    while (left_to_copy) {
      struct pbuf_custom_ref *pcr;
      newpbuflen = (left_to_copy < p->len) ? left_to_copy : p->len;

      if (!newpbuflen) {
        p = p->next;
        continue;
      }
      pcr = ip_frag_alloc_pbuf_custom_ref();
      if (pcr == ((void *)0)) {
        pbuf_free(rambuf);
        return -1;
      }

      newpbuf = pbuf_alloced_custom(PBUF_RAW, newpbuflen, PBUF_REF, &pcr->pc, p->payload, newpbuflen);
      if (newpbuf == ((void *)0)) {
        ip_frag_free_pbuf_custom_ref(pcr);
        pbuf_free(rambuf);
        return -1;
      }
      pbuf_ref(p);
      pcr->original = p;
      pcr->pc.custom_free_function = ipfrag_free_pbuf_custom;




      pbuf_cat(rambuf, newpbuf);
      left_to_copy -= newpbuflen;
      if (left_to_copy) {
        p = p->next;
      }
    }
    poff = newpbuflen;




    (iphdr)->_offset = (lwip_htons(tmp));
    (iphdr)->_len = (lwip_htons(cop + 20));
    (iphdr)->_chksum = (0);
    (iphdr)->_chksum = (inet_chksum(iphdr, 20));
# 842 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/ipv4/ip_frag.c"
    netif->output(netif, rambuf, dest);
    ++lwip_stats.ip_frag.xmit;
# 852 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/ipv4/ip_frag.c"
    pbuf_free(rambuf);

    left -= cop;
    ofo += nfb;
  }



  ;
  return 0;
}
