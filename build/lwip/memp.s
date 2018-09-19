	.file	"memp.c"
	.text
.Ltext0:
	.global	memp_pools
	.section	.rodata.memp_pools,"a",@progbits
	.align	4
	.type	memp_pools, @object
	.size	memp_pools, 72
memp_pools:
	.word	memp_RAW_PCB
	.word	memp_UDP_PCB
	.word	memp_TCP_PCB
	.word	memp_TCP_PCB_LISTEN
	.word	memp_TCP_SEG
	.word	memp_NETBUF
	.word	memp_NETCONN
	.word	memp_TCPIP_MSG_API
	.word	memp_TCPIP_MSG_INPKT
	.word	memp_ARP_QUEUE
	.word	memp_IGMP_GROUP
	.word	memp_SYS_TIMEOUT
	.word	memp_NETDB
	.word	memp_ND6_QUEUE
	.word	memp_IP6_REASSDATA
	.word	memp_MLD6_GROUP
	.word	memp_PBUF
	.word	memp_PBUF_POOL
	.global	memp_PBUF_POOL
	.section	.rodata.memp_PBUF_POOL,"a",@progbits
	.align	4
	.type	memp_PBUF_POOL, @object
	.size	memp_PBUF_POOL, 2
memp_PBUF_POOL:
	.short	1516
	.global	memp_PBUF
	.section	.rodata.memp_PBUF,"a",@progbits
	.align	4
	.type	memp_PBUF, @object
	.size	memp_PBUF, 2
memp_PBUF:
	.short	24
	.global	memp_MLD6_GROUP
	.section	.rodata.memp_MLD6_GROUP,"a",@progbits
	.align	4
	.type	memp_MLD6_GROUP, @object
	.size	memp_MLD6_GROUP, 2
memp_MLD6_GROUP:
	.short	32
	.global	memp_IP6_REASSDATA
	.section	.rodata.memp_IP6_REASSDATA,"a",@progbits
	.align	4
	.type	memp_IP6_REASSDATA, @object
	.size	memp_IP6_REASSDATA, 2
memp_IP6_REASSDATA:
	.short	20
	.global	memp_ND6_QUEUE
	.section	.rodata.memp_ND6_QUEUE,"a",@progbits
	.align	4
	.type	memp_ND6_QUEUE, @object
	.size	memp_ND6_QUEUE, 2
memp_ND6_QUEUE:
	.short	8
	.global	memp_NETDB
	.section	.rodata.memp_NETDB,"a",@progbits
	.align	4
	.type	memp_NETDB, @object
	.size	memp_NETDB, 2
memp_NETDB:
	.short	320
	.global	memp_SYS_TIMEOUT
	.section	.rodata.memp_SYS_TIMEOUT,"a",@progbits
	.align	4
	.type	memp_SYS_TIMEOUT, @object
	.size	memp_SYS_TIMEOUT, 2
memp_SYS_TIMEOUT:
	.short	16
	.global	memp_IGMP_GROUP
	.section	.rodata.memp_IGMP_GROUP,"a",@progbits
	.align	4
	.type	memp_IGMP_GROUP, @object
	.size	memp_IGMP_GROUP, 2
memp_IGMP_GROUP:
	.short	20
	.global	memp_ARP_QUEUE
	.section	.rodata.memp_ARP_QUEUE,"a",@progbits
	.align	4
	.type	memp_ARP_QUEUE, @object
	.size	memp_ARP_QUEUE, 2
memp_ARP_QUEUE:
	.short	8
	.global	memp_TCPIP_MSG_INPKT
	.section	.rodata.memp_TCPIP_MSG_INPKT,"a",@progbits
	.align	4
	.type	memp_TCPIP_MSG_INPKT, @object
	.size	memp_TCPIP_MSG_INPKT, 2
memp_TCPIP_MSG_INPKT:
	.short	16
	.global	memp_TCPIP_MSG_API
	.section	.rodata.memp_TCPIP_MSG_API,"a",@progbits
	.align	4
	.type	memp_TCPIP_MSG_API, @object
	.size	memp_TCPIP_MSG_API, 2
memp_TCPIP_MSG_API:
	.short	16
	.global	memp_NETCONN
	.section	.rodata.memp_NETCONN,"a",@progbits
	.align	4
	.type	memp_NETCONN, @object
	.size	memp_NETCONN, 2
memp_NETCONN:
	.short	52
	.global	memp_NETBUF
	.section	.rodata.memp_NETBUF,"a",@progbits
	.align	4
	.type	memp_NETBUF, @object
	.size	memp_NETBUF, 2
memp_NETBUF:
	.short	32
	.global	memp_TCP_SEG
	.section	.rodata.memp_TCP_SEG,"a",@progbits
	.align	4
	.type	memp_TCP_SEG, @object
	.size	memp_TCP_SEG, 2
memp_TCP_SEG:
	.short	20
	.global	memp_TCP_PCB_LISTEN
	.section	.rodata.memp_TCP_PCB_LISTEN,"a",@progbits
	.align	4
	.type	memp_TCP_PCB_LISTEN, @object
	.size	memp_TCP_PCB_LISTEN, 2
memp_TCP_PCB_LISTEN:
	.short	68
	.global	memp_TCP_PCB
	.section	.rodata.memp_TCP_PCB,"a",@progbits
	.align	4
	.type	memp_TCP_PCB, @object
	.size	memp_TCP_PCB, 2
memp_TCP_PCB:
	.short	204
	.global	memp_UDP_PCB
	.section	.rodata.memp_UDP_PCB,"a",@progbits
	.align	4
	.type	memp_UDP_PCB, @object
	.size	memp_UDP_PCB, 2
memp_UDP_PCB:
	.short	88
	.global	memp_RAW_PCB
	.section	.rodata.memp_RAW_PCB,"a",@progbits
	.align	4
	.type	memp_RAW_PCB, @object
	.size	memp_RAW_PCB, 2
memp_RAW_PCB:
	.short	64
	.text
.Letext0:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/port/arch/cc.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/core/memp.c"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/priv/memp_std.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/memp.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/priv/memp_priv.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x291
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF53
	.byte	0xc
	.4byte	.LASF54
	.4byte	.LASF55
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x1
	.byte	0x16
	.4byte	0x24
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x4
	.4byte	.LASF12
	.byte	0x2
	.byte	0x21
	.4byte	0x47
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF13
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x3
	.byte	0x30
	.4byte	0x7c
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1d
	.byte	0x6
	.byte	0x2d
	.4byte	0x118
	.uleb128 0x6
	.4byte	.LASF15
	.byte	0
	.uleb128 0x6
	.4byte	.LASF16
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF17
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF18
	.byte	0x3
	.uleb128 0x6
	.4byte	.LASF19
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF20
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF21
	.byte	0x6
	.uleb128 0x6
	.4byte	.LASF22
	.byte	0x7
	.uleb128 0x6
	.4byte	.LASF23
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF24
	.byte	0x9
	.uleb128 0x6
	.4byte	.LASF25
	.byte	0xa
	.uleb128 0x6
	.4byte	.LASF26
	.byte	0xb
	.uleb128 0x6
	.4byte	.LASF27
	.byte	0xc
	.uleb128 0x6
	.4byte	.LASF28
	.byte	0xd
	.uleb128 0x6
	.4byte	.LASF29
	.byte	0xe
	.uleb128 0x6
	.4byte	.LASF30
	.byte	0xf
	.uleb128 0x6
	.4byte	.LASF31
	.byte	0x10
	.uleb128 0x6
	.4byte	.LASF32
	.byte	0x11
	.uleb128 0x6
	.4byte	.LASF33
	.byte	0x12
	.byte	0
	.uleb128 0x7
	.4byte	.LASF56
	.byte	0x2
	.byte	0x7
	.byte	0x7a
	.4byte	0x131
	.uleb128 0x8
	.4byte	.LASF57
	.byte	0x7
	.byte	0x7c
	.4byte	0x8e
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0x141
	.4byte	0x141
	.uleb128 0xa
	.4byte	0x67
	.byte	0x11
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x147
	.uleb128 0xc
	.4byte	0x118
	.uleb128 0xd
	.4byte	.LASF34
	.byte	0x4
	.byte	0x4c
	.4byte	0x15d
	.uleb128 0x5
	.byte	0x3
	.4byte	memp_pools
	.uleb128 0xc
	.4byte	0x131
	.uleb128 0xd
	.4byte	.LASF35
	.byte	0x5
	.byte	0x22
	.4byte	0x147
	.uleb128 0x5
	.byte	0x3
	.4byte	memp_RAW_PCB
	.uleb128 0xd
	.4byte	.LASF36
	.byte	0x5
	.byte	0x26
	.4byte	0x147
	.uleb128 0x5
	.byte	0x3
	.4byte	memp_UDP_PCB
	.uleb128 0xd
	.4byte	.LASF37
	.byte	0x5
	.byte	0x2a
	.4byte	0x147
	.uleb128 0x5
	.byte	0x3
	.4byte	memp_TCP_PCB
	.uleb128 0xd
	.4byte	.LASF38
	.byte	0x5
	.byte	0x2b
	.4byte	0x147
	.uleb128 0x5
	.byte	0x3
	.4byte	memp_TCP_PCB_LISTEN
	.uleb128 0xd
	.4byte	.LASF39
	.byte	0x5
	.byte	0x2c
	.4byte	0x147
	.uleb128 0x5
	.byte	0x3
	.4byte	memp_TCP_SEG
	.uleb128 0xd
	.4byte	.LASF40
	.byte	0x5
	.byte	0x37
	.4byte	0x147
	.uleb128 0x5
	.byte	0x3
	.4byte	memp_NETBUF
	.uleb128 0xd
	.4byte	.LASF41
	.byte	0x5
	.byte	0x38
	.4byte	0x147
	.uleb128 0x5
	.byte	0x3
	.4byte	memp_NETCONN
	.uleb128 0xd
	.4byte	.LASF42
	.byte	0x5
	.byte	0x3c
	.4byte	0x147
	.uleb128 0x5
	.byte	0x3
	.4byte	memp_TCPIP_MSG_API
	.uleb128 0xd
	.4byte	.LASF43
	.byte	0x5
	.byte	0x4a
	.4byte	0x147
	.uleb128 0x5
	.byte	0x3
	.4byte	memp_TCPIP_MSG_INPKT
	.uleb128 0xd
	.4byte	.LASF44
	.byte	0x5
	.byte	0x4f
	.4byte	0x147
	.uleb128 0x5
	.byte	0x3
	.4byte	memp_ARP_QUEUE
	.uleb128 0xd
	.4byte	.LASF45
	.byte	0x5
	.byte	0x53
	.4byte	0x147
	.uleb128 0x5
	.byte	0x3
	.4byte	memp_IGMP_GROUP
	.uleb128 0xd
	.4byte	.LASF46
	.byte	0x5
	.byte	0x57
	.4byte	0x147
	.uleb128 0x5
	.byte	0x3
	.4byte	memp_SYS_TIMEOUT
	.uleb128 0xd
	.4byte	.LASF47
	.byte	0x5
	.byte	0x5b
	.4byte	0x147
	.uleb128 0x5
	.byte	0x3
	.4byte	memp_NETDB
	.uleb128 0xd
	.4byte	.LASF48
	.byte	0x5
	.byte	0x6f
	.4byte	0x147
	.uleb128 0x5
	.byte	0x3
	.4byte	memp_ND6_QUEUE
	.uleb128 0xd
	.4byte	.LASF49
	.byte	0x5
	.byte	0x73
	.4byte	0x147
	.uleb128 0x5
	.byte	0x3
	.4byte	memp_IP6_REASSDATA
	.uleb128 0xd
	.4byte	.LASF50
	.byte	0x5
	.byte	0x77
	.4byte	0x147
	.uleb128 0x5
	.byte	0x3
	.4byte	memp_MLD6_GROUP
	.uleb128 0xd
	.4byte	.LASF51
	.byte	0x5
	.byte	0x83
	.4byte	0x147
	.uleb128 0x5
	.byte	0x3
	.4byte	memp_PBUF
	.uleb128 0xd
	.4byte	.LASF52
	.byte	0x5
	.byte	0x84
	.4byte	0x147
	.uleb128 0x5
	.byte	0x3
	.4byte	memp_PBUF_POOL
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x4
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x14
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF54:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/lwip/core/memp.c"
.LASF47:
	.string	"memp_NETDB"
.LASF21:
	.string	"MEMP_NETCONN"
.LASF31:
	.string	"MEMP_PBUF"
.LASF22:
	.string	"MEMP_TCPIP_MSG_API"
.LASF26:
	.string	"MEMP_SYS_TIMEOUT"
.LASF1:
	.string	"short unsigned int"
.LASF24:
	.string	"MEMP_ARP_QUEUE"
.LASF53:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF32:
	.string	"MEMP_PBUF_POOL"
.LASF14:
	.string	"u16_t"
.LASF41:
	.string	"memp_NETCONN"
.LASF6:
	.string	"long long unsigned int"
.LASF42:
	.string	"memp_TCPIP_MSG_API"
.LASF17:
	.string	"MEMP_TCP_PCB"
.LASF40:
	.string	"memp_NETBUF"
.LASF38:
	.string	"memp_TCP_PCB_LISTEN"
.LASF43:
	.string	"memp_TCPIP_MSG_INPKT"
.LASF51:
	.string	"memp_PBUF"
.LASF18:
	.string	"MEMP_TCP_PCB_LISTEN"
.LASF44:
	.string	"memp_ARP_QUEUE"
.LASF3:
	.string	"unsigned char"
.LASF19:
	.string	"MEMP_TCP_SEG"
.LASF11:
	.string	"__uint16_t"
.LASF9:
	.string	"long unsigned int"
.LASF35:
	.string	"memp_RAW_PCB"
.LASF28:
	.string	"MEMP_ND6_QUEUE"
.LASF29:
	.string	"MEMP_IP6_REASSDATA"
.LASF27:
	.string	"MEMP_NETDB"
.LASF30:
	.string	"MEMP_MLD6_GROUP"
.LASF52:
	.string	"memp_PBUF_POOL"
.LASF0:
	.string	"unsigned int"
.LASF10:
	.string	"char"
.LASF25:
	.string	"MEMP_IGMP_GROUP"
.LASF46:
	.string	"memp_SYS_TIMEOUT"
.LASF37:
	.string	"memp_TCP_PCB"
.LASF20:
	.string	"MEMP_NETBUF"
.LASF8:
	.string	"sizetype"
.LASF50:
	.string	"memp_MLD6_GROUP"
.LASF5:
	.string	"long long int"
.LASF55:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\lwip"
.LASF15:
	.string	"MEMP_RAW_PCB"
.LASF16:
	.string	"MEMP_UDP_PCB"
.LASF39:
	.string	"memp_TCP_SEG"
.LASF4:
	.string	"short int"
.LASF56:
	.string	"memp_desc"
.LASF12:
	.string	"uint16_t"
.LASF49:
	.string	"memp_IP6_REASSDATA"
.LASF33:
	.string	"MEMP_MAX"
.LASF7:
	.string	"long int"
.LASF45:
	.string	"memp_IGMP_GROUP"
.LASF48:
	.string	"memp_ND6_QUEUE"
.LASF2:
	.string	"signed char"
.LASF57:
	.string	"size"
.LASF13:
	.string	"_Bool"
.LASF34:
	.string	"memp_pools"
.LASF36:
	.string	"memp_UDP_PCB"
.LASF23:
	.string	"MEMP_TCPIP_MSG_INPKT"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
