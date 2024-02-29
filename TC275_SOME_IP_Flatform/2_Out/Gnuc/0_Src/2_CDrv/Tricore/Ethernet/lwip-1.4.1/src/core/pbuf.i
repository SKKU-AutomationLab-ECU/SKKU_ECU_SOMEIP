# 1 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/pbuf.c"
# 1 "D:\\00.Workspace\\TC275\\SKKU_ECU_SOMEIP\\TC275_SOME_IP_Flatform//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/pbuf.c"
# 64 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/pbuf.c"
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
# 65 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/pbuf.c" 2

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
# 67 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/pbuf.c" 2
# 1 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/def.h" 1
# 99 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/def.h"
u16_t lwip_htons(u16_t x);
u16_t lwip_ntohs(u16_t x);
u32_t lwip_htonl(u32_t x);
u32_t lwip_ntohl(u32_t x);
# 68 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/pbuf.c" 2


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
# 71 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/pbuf.c" 2
# 1 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/sys.h" 1
# 45 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/sys.h"
typedef u8_t sys_sem_t;
typedef u8_t sys_mutex_t;
typedef u8_t sys_mbox_t;
# 230 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/sys.h"
void sys_init(void);



u32_t sys_jiffies(void);




u32_t sys_now(void);
# 72 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/pbuf.c" 2
# 1 "./0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/port/include/arch/perf.h" 1
# 73 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/pbuf.c" 2

# 1 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/tcp_impl.h" 1
# 39 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/tcp_impl.h"
# 1 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/tcp.h" 1
# 41 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/lwip/tcp.h"
# 1 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/ipv4/lwip/ip.h" 1
# 39 "./0_Src/2_CDrv/TriCore/ETHERNET/LWIP-1.4.1/src/include/ipv4/lwip/ip.h"
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
# 75 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/pbuf.c" 2


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
# 78 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/pbuf.c" 2


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


# 81 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/pbuf.c" 2
# 103 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/pbuf.c"
volatile u8_t pbuf_free_ooseq_pending;
# 117 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/pbuf.c"
void
pbuf_free_ooseq(void)
{
  struct tcp_pcb* pcb;
  ;

  ;
  pbuf_free_ooseq_pending = 0;
  ;

  for (pcb = tcp_active_pcbs; ((void *)0) != pcb; pcb = pcb->next) {
    if (((void *)0) != pcb->ooseq) {

      do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x80U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("pbuf_free_ooseq: freeing out-of-sequence pbufs\n"); if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0);
      tcp_segs_free(pcb->ooseq);
      pcb->ooseq = ((void *)0);
      return;
    }
  }
}
# 151 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/pbuf.c"
static void
pbuf_pool_is_empty(void)
{

  ;
  ;
  pbuf_free_ooseq_pending = 1;
  ;
# 172 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/pbuf.c"
}
# 206 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/pbuf.c"
struct pbuf *
pbuf_alloc(pbuf_layer layer, u16_t length, pbuf_type type)
{
  struct pbuf *p, *q, *r;
  u16_t offset;
  s32_t rem_len;
  do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x80U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("pbuf_alloc(length=%""u"")\n", length); if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0);


  switch (layer) {
  case PBUF_TRANSPORT:

    offset = 16 + 20 + 20;
    break;
  case PBUF_IP:

    offset = 16 + 20;
    break;
  case PBUF_LINK:

    offset = 16;
    break;
  case PBUF_RAW:
    offset = 0;
    break;
  default:
    do { if(!(0)) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "pbuf_alloc: bad pbuf layer", 232, "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/pbuf.c"); ; } while(0);
    return ((void *)0);
  }

  switch (type) {
  case PBUF_POOL:

    p = (struct pbuf *)memp_malloc(MEMP_PBUF_POOL);
    do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x80U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("pbuf_alloc: allocated pbuf %p\n", (void *)p); if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0);
    if (p == ((void *)0)) {
      pbuf_pool_is_empty();
      return ((void *)0);
    }
    p->type = type;
    p->next = ((void *)0);


    p->payload = ((void *)(((mem_ptr_t)((void *)((u8_t *)p + ((((sizeof(struct pbuf)) + 4 - 1) & ~(4 -1)) + offset))) + 4 - 1) & ~(mem_ptr_t)(4 -1)));
    do { if(!(((mem_ptr_t)p->payload % 4) == 0)) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "pbuf_alloc: pbuf p->payload properly aligned",
 251
# 250 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/pbuf.c"
    ,
 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/pbuf.c"
# 250 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/pbuf.c"
    ); ; } while(0)
                                                         ;

    p->tot_len = length;

    p->len = (((length) < ((((2048) + 4 - 1) & ~(4 -1)) - (((offset) + 4 - 1) & ~(4 -1)))) ? (length) : ((((2048) + 4 - 1) & ~(4 -1)) - (((offset) + 4 - 1) & ~(4 -1))));
    do { if(!(((u8_t*)p->payload + p->len <= (u8_t*)p + (((sizeof(struct pbuf)) + 4 - 1) & ~(4 -1)) + (((2048) + 4 - 1) & ~(4 -1))))) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "check p->payload + p->len does not overflow pbuf",

 258
# 256 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/pbuf.c"
    ,

 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/pbuf.c"
# 256 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/pbuf.c"
    ); ; } while(0)

                                                                            ;
    do { if(!(((((2048) + 4 - 1) & ~(4 -1)) - (((offset) + 4 - 1) & ~(4 -1))) > 0)) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "PBUF_POOL_BUFSIZE must be bigger than MEM_ALIGNMENT",
 260
# 259 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/pbuf.c"
    ,
 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/pbuf.c"
# 259 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/pbuf.c"
    ); ; } while(0)
                                                                     ;

    p->ref = 1;




    r = p;

    rem_len = length - p->len;

    while (rem_len > 0) {





        __asm__ volatile ("debug" : : : "memory");



      q = (struct pbuf *)memp_malloc(MEMP_PBUF_POOL);
      if (q == ((void *)0)) {
        pbuf_pool_is_empty();

        pbuf_free(p);

        return ((void *)0);
      }
      q->type = type;
      q->flags = 0;
      q->next = ((void *)0);

      r->next = q;

      do { if(!(rem_len < 0xffff)) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "rem_len < max_u16_t", 295, "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/pbuf.c"); ; } while(0);
      q->tot_len = (u16_t)rem_len;

      q->len = ((((u16_t)rem_len) < ((((2048) + 4 - 1) & ~(4 -1)))) ? ((u16_t)rem_len) : ((((2048) + 4 - 1) & ~(4 -1))));
      q->payload = (void *)((u8_t *)q + (((sizeof(struct pbuf)) + 4 - 1) & ~(4 -1)));
      do { if(!(((mem_ptr_t)q->payload % 4) == 0)) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "pbuf_alloc: pbuf q->payload properly aligned",
 301
# 300 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/pbuf.c"
      ,
 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/pbuf.c"
# 300 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/pbuf.c"
      ); ; } while(0)
                                                           ;
      do { if(!(((u8_t*)p->payload + p->len <= (u8_t*)p + (((sizeof(struct pbuf)) + 4 - 1) & ~(4 -1)) + (((2048) + 4 - 1) & ~(4 -1))))) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "check p->payload + p->len does not overflow pbuf",

 304
# 302 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/pbuf.c"
      ,

 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/pbuf.c"
# 302 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/pbuf.c"
      ); ; } while(0)

                                                                              ;
      q->ref = 1;

      rem_len -= q->len;

      r = q;
    }



    break;
  case PBUF_RAM:

    p = (struct pbuf*)mem_malloc(((((((sizeof(struct pbuf)) + 4 - 1) & ~(4 -1)) + offset) + 4 - 1) & ~(4 -1)) + (((length) + 4 - 1) & ~(4 -1)));
    if (p == ((void *)0)) {
      return ((void *)0);
    }

    p->payload = ((void *)(((mem_ptr_t)((void *)((u8_t *)p + (((sizeof(struct pbuf)) + 4 - 1) & ~(4 -1)) + offset)) + 4 - 1) & ~(mem_ptr_t)(4 -1)));
    p->len = p->tot_len = length;
    p->next = ((void *)0);
    p->type = type;

    do { if(!(((mem_ptr_t)p->payload % 4) == 0)) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "pbuf_alloc: pbuf->payload properly aligned",
 328
# 327 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/pbuf.c"
    ,
 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/pbuf.c"
# 327 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/pbuf.c"
    ); ; } while(0)
                                                        ;
    break;

  case PBUF_ROM:

  case PBUF_REF:

    p = (struct pbuf *)memp_malloc(MEMP_PBUF);
    if (p == ((void *)0)) {
      do { if ( ((0x00U | 0x02) & 0x80U) && ((0x00U | 0x02) & 0x80U) && ((s16_t)((0x00U | 0x02) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("pbuf_alloc: Could not allocate MEMP_PBUF for PBUF_%s.\n", (type == PBUF_ROM) ? "ROM" : "REF"); if ((0x00U | 0x02) & 0x08U) { while(1); } } } while(0)

                                                      ;
      return ((void *)0);
    }

    p->payload = ((void *)0);
    p->len = p->tot_len = length;
    p->next = ((void *)0);
    p->type = type;
    break;
  default:
    do { if(!(0)) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "pbuf_alloc: erroneous type", 349, "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/pbuf.c"); ; } while(0);
    return ((void *)0);
  }

  p->ref = 1;

  p->flags = 0;
  do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x80U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("pbuf_alloc(length=%""u"") == %p\n", length, (void *)p); if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0);
  return p;
}
# 375 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/pbuf.c"
struct pbuf*
pbuf_alloced_custom(pbuf_layer l, u16_t length, pbuf_type type, struct pbuf_custom *p,
                    void *payload_mem, u16_t payload_mem_len)
{
  u16_t offset;
  do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x80U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("pbuf_alloced_custom(length=%""u"")\n", length); if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0);


  switch (l) {
  case PBUF_TRANSPORT:

    offset = 16 + 20 + 20;
    break;
  case PBUF_IP:

    offset = 16 + 20;
    break;
  case PBUF_LINK:

    offset = 16;
    break;
  case PBUF_RAW:
    offset = 0;
    break;
  default:
    do { if(!(0)) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "pbuf_alloced_custom: bad pbuf layer", 400, "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/pbuf.c"); ; } while(0);
    return ((void *)0);
  }

  if ((((offset) + 4 - 1) & ~(4 -1)) + length > payload_mem_len) {
    do { if ( ((0x00U | 0x01) & 0x80U) && ((0x00U | 0x01) & 0x80U) && ((s16_t)((0x00U | 0x01) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("pbuf_alloced_custom(length=%""u"") buffer too short\n", length); if ((0x00U | 0x01) & 0x08U) { while(1); } } } while(0);
    return ((void *)0);
  }

  p->pbuf.next = ((void *)0);
  if (payload_mem != ((void *)0)) {
    p->pbuf.payload = (u8_t *)payload_mem + (((offset) + 4 - 1) & ~(4 -1));
  } else {
    p->pbuf.payload = ((void *)0);
  }
  p->pbuf.flags = 0x02U;
  p->pbuf.len = p->pbuf.tot_len = length;
  p->pbuf.type = type;
  p->pbuf.ref = 1;
  return &p->pbuf;
}
# 438 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/pbuf.c"
void
pbuf_realloc(struct pbuf *p, u16_t new_len)
{
  struct pbuf *q;
  u16_t rem_len;
  s32_t grow;

  do { if(!(p != ((void *)0))) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "pbuf_realloc: p != NULL", 445, "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/pbuf.c"); ; } while(0);
  do { if(!(p->type == PBUF_POOL || p->type == PBUF_ROM || p->type == PBUF_RAM || p->type == PBUF_REF)) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "pbuf_realloc: sane p->type",


 449
# 446 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/pbuf.c"
  ,


 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/pbuf.c"
# 446 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/pbuf.c"
  ); ; } while(0)


                                  ;


  if (new_len >= p->tot_len) {

    return;
  }



  grow = new_len - p->tot_len;


  rem_len = new_len;
  q = p;

  while (rem_len > q->len) {

    rem_len -= q->len;

    do { if(!(grow < 0xffff)) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "grow < max_u16_t", 469, "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/pbuf.c"); ; } while(0);
    q->tot_len += (u16_t)grow;

    q = q->next;
    do { if(!(q != ((void *)0))) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "pbuf_realloc: q != NULL", 473, "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/pbuf.c"); ; } while(0);
  }





  if ((q->type == PBUF_RAM) && (rem_len != q->len)) {

    q = (struct pbuf *)mem_trim(q, (u16_t)((u8_t *)q->payload - (u8_t *)q) + rem_len);
    do { if(!(q != ((void *)0))) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "mem_trim returned q == NULL", 483, "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/pbuf.c"); ; } while(0);
  }

  q->len = rem_len;
  q->tot_len = q->len;


  if (q->next != ((void *)0)) {

    pbuf_free(q->next);
  }

  q->next = ((void *)0);

}
# 519 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/pbuf.c"
u8_t
pbuf_header(struct pbuf *p, s16_t header_size_increment)
{
  u16_t type;
  void *payload;
  u16_t increment_magnitude;

  do { if(!(p != ((void *)0))) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "p != NULL", 526, "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/pbuf.c"); ; } while(0);
  if ((header_size_increment == 0) || (p == ((void *)0))) {
    return 0;
  }

  if (header_size_increment < 0){
    increment_magnitude = -header_size_increment;

    do { if (!((increment_magnitude <= p->len))) { Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "increment_magnitude <= p->len", 534, "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/pbuf.c"); ; return 1;;}} while(0);
  } else {
    increment_magnitude = header_size_increment;
# 547 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/pbuf.c"
  }

  type = p->type;

  payload = p->payload;


  if (type == PBUF_RAM || type == PBUF_POOL) {

    p->payload = (u8_t *)p->payload - header_size_increment;

    if ((u8_t *)p->payload < (u8_t *)p + (((sizeof(struct pbuf)) + 4 - 1) & ~(4 -1))) {
      do { if ( ((0x00U | 0x02) & 0x80U) && ((0x00U | 0x02) & 0x80U) && ((s16_t)((0x00U | 0x02) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("pbuf_header: failed as %p < %p (not enough space for new header size)\n", (void *)p->payload, (void *)(p + 1)); if ((0x00U | 0x02) & 0x08U) { while(1); } } } while(0)

                                             ;

      p->payload = payload;

      return 1;
    }

  } else if (type == PBUF_REF || type == PBUF_ROM) {

    if ((header_size_increment < 0) && (increment_magnitude <= p->len)) {

      p->payload = (u8_t *)p->payload - header_size_increment;
    } else {


      return 1;
    }
  } else {

    do { if(!(0)) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "bad pbuf type", 580, "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/pbuf.c"); ; } while(0);
    return 1;
  }

  p->len += header_size_increment;
  p->tot_len += header_size_increment;

  do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x80U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("pbuf_header: old %p new %p (%""d"")\n", (void *)payload, (void *)p->payload, header_size_increment); if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0)
                                                                ;

  return 0;
}
# 626 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/pbuf.c"
u8_t
pbuf_free(struct pbuf *p)
{
  u16_t type;
  struct pbuf *q;
  u8_t count;

  if (p == ((void *)0)) {
    do { if(!(p != ((void *)0))) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "p != NULL", 634, "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/pbuf.c"); ; } while(0);

    do { if ( ((0x00U | 0x02) & 0x80U) && ((0x00U | 0x02) & 0x80U) && ((s16_t)((0x00U | 0x02) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("pbuf_free(p == NULL) was called.\n"); if ((0x00U | 0x02) & 0x08U) { while(1); } } } while(0)
                                             ;
    return 0;
  }
  do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x80U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("pbuf_free(%p)\n", (void *)p); if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0);

  ;

  do { if(!(p->type == PBUF_RAM || p->type == PBUF_ROM || p->type == PBUF_REF || p->type == PBUF_POOL)) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "pbuf_free: sane type",

 646
# 644 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/pbuf.c"
  ,

 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/pbuf.c"
# 644 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/pbuf.c"
  ); ; } while(0)

                                                ;

  count = 0;


  while (p != ((void *)0)) {
    u16_t ref;
    ;



    ;

    do { if(!(p->ref > 0)) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "pbuf_free: p->ref > 0", 659, "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/pbuf.c"); ; } while(0);

    ref = --(p->ref);
    ;

    if (ref == 0) {

      q = p->next;
      do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x80U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("pbuf_free: deallocating %p\n", (void *)p); if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0);
      type = p->type;


      if ((p->flags & 0x02U) != 0) {
        struct pbuf_custom *pc = (struct pbuf_custom*)p;
        do { if(!(pc->custom_free_function != ((void *)0))) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "pc->custom_free_function != NULL", 673, "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/pbuf.c"); ; } while(0);
        pc->custom_free_function(p);
      } else

      {

        if (type == PBUF_POOL) {
          memp_free(MEMP_PBUF_POOL, p);

        } else if (type == PBUF_ROM || type == PBUF_REF) {
          memp_free(MEMP_PBUF, p);

        } else {
          mem_free(p);
        }
      }
      count++;

      p = q;


    } else {
      do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x80U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("pbuf_free: %p has ref %""u"", ending here.\n", (void *)p, ref); if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0);

      p = ((void *)0);
    }
  }
  ;

  return count;
}
# 712 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/pbuf.c"
u8_t
pbuf_clen(struct pbuf *p)
{
  u8_t len;

  len = 0;
  while (p != ((void *)0)) {
    ++len;
    p = p->next;
  }
  return len;
}







void
pbuf_ref(struct pbuf *p)
{
  ;

  if (p != ((void *)0)) {
    ;
    ++(p->ref);
    ;
  }
}
# 753 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/pbuf.c"
void
pbuf_cat(struct pbuf *h, struct pbuf *t)
{
  struct pbuf *p;

  do { if (!(((h != ((void *)0)) && (t != ((void *)0))))) { Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "(h != NULL) && (t != NULL) (programmer violates API)",
 759
# 758 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/pbuf.c"
  ,
 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/pbuf.c"
# 758 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/pbuf.c"
  ); ; return;;}} while(0)
                                                   ;


  for (p = h; p->next != ((void *)0); p = p->next) {

    p->tot_len += t->tot_len;
  }

  do { if(!(p->tot_len == p->len)) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "p->tot_len == p->len (of last pbuf in chain)", 767, "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/pbuf.c"); ; } while(0);
  do { if(!(p->next == ((void *)0))) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "p->next == NULL", 768, "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/pbuf.c"); ; } while(0);

  p->tot_len += t->tot_len;

  p->next = t;



}
# 794 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/pbuf.c"
void
pbuf_chain(struct pbuf *h, struct pbuf *t)
{
  pbuf_cat(h, t);

  pbuf_ref(t);
  do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x80U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("pbuf_chain: %p references %p\n", (void *)h, (void *)t); if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0);
}
# 811 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/pbuf.c"
struct pbuf *
pbuf_dechain(struct pbuf *p)
{
  struct pbuf *q;
  u8_t tail_gone = 1;

  q = p->next;

  if (q != ((void *)0)) {

    do { if(!(q->tot_len == p->tot_len - p->len)) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "p->tot_len == p->len + q->tot_len", 821, "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/pbuf.c"); ; } while(0);

    q->tot_len = p->tot_len - p->len;

    p->next = ((void *)0);

    p->tot_len = p->len;

    do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x80U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("pbuf_dechain: unreferencing %p\n", (void *)q); if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0);
    tail_gone = pbuf_free(q);
    if (tail_gone > 0) {
      do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x80U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("pbuf_dechain: deallocated %p (as it is no longer referenced)\n", (void *)q); if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0)
                                                                                                ;
    }

  }

  do { if(!(p->tot_len == p->len)) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "p->tot_len == p->len", 838, "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/pbuf.c"); ; } while(0);
  return ((tail_gone > 0) ? ((void *)0) : q);
}
# 860 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/pbuf.c"
err_t
pbuf_copy(struct pbuf *p_to, struct pbuf *p_from)
{
  u16_t offset_to=0, offset_from=0, len;

  do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x80U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("pbuf_copy(%p, %p)\n", (void*)p_to, (void*)p_from); if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0)
                                ;


  do { if (!(((p_to != ((void *)0)) && (p_from != ((void *)0)) && (p_to->tot_len >= p_from->tot_len)))) { Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "pbuf_copy: target not big enough to hold source",
 870
# 869 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/pbuf.c"
  ,
 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/pbuf.c"
# 869 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/pbuf.c"
  ); ; return -14;;}} while(0)
                                                                                      ;


  do
  {

    if ((p_to->len - offset_to) >= (p_from->len - offset_from)) {

      len = p_from->len - offset_from;
    } else {

      len = p_to->len - offset_to;
    }
    memcpy((u8_t*)p_to->payload + offset_to,(u8_t*)p_from->payload + offset_from,len);
    offset_to += len;
    offset_from += len;
    do { if(!(offset_to <= p_to->len)) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "offset_to <= p_to->len", 886, "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/pbuf.c"); ; } while(0);
    do { if(!(offset_from <= p_from->len)) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "offset_from <= p_from->len", 887, "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/pbuf.c"); ; } while(0);
    if (offset_from >= p_from->len) {

      offset_from = 0;
      p_from = p_from->next;
    }
    if (offset_to == p_to->len) {

      offset_to = 0;
      p_to = p_to->next;
      do { if (!((p_to != ((void *)0)) || (p_from == ((void *)0)))) { Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "p_to != NULL", 897, "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/pbuf.c"); ; return -14;;}} while(0);
    }

    if((p_from != ((void *)0)) && (p_from->len == p_from->tot_len)) {

      do { if (!((p_from->next == ((void *)0)))) { Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "pbuf_copy() does not allow packet queues!\n",
 903
# 902 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/pbuf.c"
      ,
 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/pbuf.c"
# 902 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/pbuf.c"
      ); ; return -6;;}} while(0)
                                                         ;
    }
    if((p_to != ((void *)0)) && (p_to->len == p_to->tot_len)) {

      do { if (!((p_to->next == ((void *)0)))) { Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "pbuf_copy() does not allow packet queues!\n",
 908
# 907 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/pbuf.c"
      ,
 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/pbuf.c"
# 907 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/pbuf.c"
      ); ; return -6;;}} while(0)
                                                        ;
    }
  } while (p_from);
  do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x80U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { Ifx_Lwip_printf ("pbuf_copy: end of chain reached.\n"); if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0);
  return 0;
}
# 926 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/pbuf.c"
u16_t
pbuf_copy_partial(struct pbuf *buf, void *dataptr, u16_t len, u16_t offset)
{
  struct pbuf *p;
  u16_t left;
  u16_t buf_copy_len;
  u16_t copied_total = 0;

  do { if (!((buf != ((void *)0)))) { Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "pbuf_copy_partial: invalid buf", 934, "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/pbuf.c"); ; return 0;;}} while(0);
  do { if (!((dataptr != ((void *)0)))) { Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "pbuf_copy_partial: invalid dataptr", 935, "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/pbuf.c"); ; return 0;;}} while(0);

  left = 0;

  if((buf == ((void *)0)) || (dataptr == ((void *)0))) {
    return 0;
  }


  for(p = buf; len != 0 && p != ((void *)0); p = p->next) {
    if ((offset != 0) && (offset >= p->len)) {

      offset -= p->len;
    } else {

      buf_copy_len = p->len - offset;
      if (buf_copy_len > len)
          buf_copy_len = len;

      memcpy(&((char*)dataptr)[left],&((char*)p->payload)[offset],buf_copy_len);
      copied_total += buf_copy_len;
      left += buf_copy_len;
      len -= buf_copy_len;
      offset = 0;
    }
  }
  return copied_total;
}
# 974 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/pbuf.c"
err_t
pbuf_take(struct pbuf *buf, const void *dataptr, u16_t len)
{
  struct pbuf *p;
  u16_t buf_copy_len;
  u16_t total_copy_len = len;
  u16_t copied_total = 0;

  do { if (!((buf != ((void *)0)))) { Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "pbuf_take: invalid buf", 982, "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/pbuf.c"); ; return 0;;}} while(0);
  do { if (!((dataptr != ((void *)0)))) { Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "pbuf_take: invalid dataptr", 983, "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/pbuf.c"); ; return 0;;}} while(0);

  if ((buf == ((void *)0)) || (dataptr == ((void *)0)) || (buf->tot_len < len)) {
    return -14;
  }


  for(p = buf; total_copy_len != 0; p = p->next) {
    do { if(!(p != ((void *)0))) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "pbuf_take: invalid pbuf", 991, "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/pbuf.c"); ; } while(0);
    buf_copy_len = total_copy_len;
    if (buf_copy_len > p->len) {

      buf_copy_len = p->len;
    }

    memcpy(p->payload,&((char*)dataptr)[copied_total],buf_copy_len);
    total_copy_len -= buf_copy_len;
    copied_total += buf_copy_len;
  }
  do { if(!(total_copy_len == 0 && copied_total == len)) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "did not copy all data", 1002, "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/pbuf.c"); ; } while(0);
  return 0;
}
# 1018 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/pbuf.c"
struct pbuf*
pbuf_coalesce(struct pbuf *p, pbuf_layer layer)
{
  struct pbuf *q;
  err_t err;
  if (p->next == ((void *)0)) {
    return p;
  }
  q = pbuf_alloc(layer, p->tot_len, PBUF_RAM);
  if (q == ((void *)0)) {

    return p;
  }
  err = pbuf_copy(q, p);
  do { if(!(err == 0)) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "pbuf_copy failed", 1032, "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/pbuf.c"); ; } while(0);
  pbuf_free(p);
  return q;
}
# 1050 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/pbuf.c"
err_t
pbuf_fill_chksum(struct pbuf *p, u16_t start_offset, const void *dataptr,
                 u16_t len, u16_t *chksum)
{
  u32_t acc;
  u16_t copy_chksum;
  char *dst_ptr;
  do { if(!(p != ((void *)0))) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "p != NULL", 1057, "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/pbuf.c"); ; } while(0);
  do { if(!(dataptr != ((void *)0))) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "dataptr != NULL", 1058, "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/pbuf.c"); ; } while(0);
  do { if(!(chksum != ((void *)0))) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "chksum != NULL", 1059, "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/pbuf.c"); ; } while(0);
  do { if(!(len != 0)) Ifx_Lwip_printf("Assertion \"%s\" failed at line %d in %s\n", "len != 0", 1060, "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/pbuf.c"); ; } while(0);

  if ((start_offset >= p->len) || (start_offset + len > p->len)) {
    return -14;
  }

  dst_ptr = ((char*)p->payload) + start_offset;
  copy_chksum = lwip_chksum_copy(dst_ptr, dataptr, len);
  if ((start_offset & 1) != 0) {
    copy_chksum = (((copy_chksum) & 0xff) << 8) | (((copy_chksum) & 0xff00) >> 8);
  }
  acc = *chksum;
  acc += copy_chksum;
  *chksum = (((acc) >> 16) + ((acc) & 0x0000ffffUL));
  return 0;
}
# 1085 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/pbuf.c"
u8_t
pbuf_get_at(struct pbuf* p, u16_t offset)
{
  u16_t copy_from = offset;
  struct pbuf* q = p;


  while ((q != ((void *)0)) && (q->len <= copy_from)) {
    copy_from -= q->len;
    q = q->next;
  }

  if ((q != ((void *)0)) && (q->len > copy_from)) {
    return ((u8_t*)q->payload)[copy_from];
  }
  return 0;
}
# 1112 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/pbuf.c"
u16_t
pbuf_memcmp(struct pbuf* p, u16_t offset, const void* s2, u16_t n)
{
  u16_t start = offset;
  struct pbuf* q = p;


  while ((q != ((void *)0)) && (q->len <= start)) {
    start -= q->len;
    q = q->next;
  }

  if ((q != ((void *)0)) && (q->len > start)) {
    u16_t i;
    for(i = 0; i < n; i++) {
      u8_t a = pbuf_get_at(q, start + i);
      u8_t b = ((u8_t*)s2)[i];
      if (a != b) {
        return i+1;
      }
    }
    return 0;
  }
  return 0xffff;
}
# 1148 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/pbuf.c"
u16_t
pbuf_memfind(struct pbuf* p, const void* mem, u16_t mem_len, u16_t start_offset)
{
  u16_t i;
  u16_t max = p->tot_len - mem_len;
  if (p->tot_len >= mem_len + start_offset) {
    for(i = start_offset; i <= max; ) {
      u16_t plus = pbuf_memcmp(p, i, mem, mem_len);
      if (plus == 0) {
        return i;
      } else {
        i += plus;
      }
    }
  }
  return 0xFFFF;
}
# 1176 "0_Src/2_CDrv/Tricore/Ethernet/lwip-1.4.1/src/core/pbuf.c"
u16_t
pbuf_strstr(struct pbuf* p, const char* substr)
{
  size_t substr_len;
  if ((substr == ((void *)0)) || (substr[0] == 0) || (p->tot_len == 0xFFFF)) {
    return 0xFFFF;
  }
  substr_len = strlen(substr);
  if (substr_len >= 0xFFFF) {
    return 0xFFFF;
  }
  return pbuf_memfind(p, substr, (u16_t)substr_len, 0);
}
