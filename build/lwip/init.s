	.file	"init.c"
	.text
.Ltext0:
	.section	.text.lwip_init,"ax",@progbits
	.align	4
	.global	lwip_init
	.type	lwip_init, @function
lwip_init:
.LFB32:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/core/init.c"
	.loc 1 335 0
	entry	sp, 32
.LCFI0:
	.loc 1 339 0
	call8	sys_init
.LVL0:
	.loc 1 344 0
	call8	netif_init
.LVL1:
	.loc 1 355 0
	call8	udp_init
.LVL2:
	.loc 1 358 0
	call8	tcp_init
.LVL3:
	.loc 1 364 0
	call8	igmp_init
.LVL4:
	.loc 1 367 0
	call8	dns_init
.LVL5:
	.loc 1 374 0
	call8	sys_timeouts_init
.LVL6:
	retw.n
.LFE32:
	.size	lwip_init, .-lwip_init
	.section	.debug_frame,"",@progbits
.Lframe0:
	.4byte	.LECIE0-.LSCIE0
.LSCIE0:
	.4byte	0xffffffff
	.byte	0x3
	.string	""
	.uleb128 0x1
	.sleb128 -4
	.uleb128 0
	.byte	0xc
	.uleb128 0x1
	.uleb128 0
	.align	4
.LECIE0:
.LSFDE0:
	.4byte	.LEFDE0-.LASFDE0
.LASFDE0:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI0-.LFB32
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/sys.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/netif.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/udp.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/priv/tcp_priv.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/igmp.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/dns.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/timers.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x122
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF19
	.byte	0xc
	.4byte	.LASF20
	.4byte	.LASF21
	.4byte	.Ldebug_ranges0+0
	.4byte	0
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
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF11
	.uleb128 0x4
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x14e
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd6
	.uleb128 0x5
	.4byte	.LVL0
	.4byte	0xd6
	.uleb128 0x5
	.4byte	.LVL1
	.4byte	0xe2
	.uleb128 0x5
	.4byte	.LVL2
	.4byte	0xee
	.uleb128 0x5
	.4byte	.LVL3
	.4byte	0xf9
	.uleb128 0x5
	.4byte	.LVL4
	.4byte	0x104
	.uleb128 0x5
	.4byte	.LVL5
	.4byte	0x10f
	.uleb128 0x5
	.4byte	.LVL6
	.4byte	0x11a
	.byte	0
	.uleb128 0x6
	.4byte	.LASF12
	.4byte	.LASF12
	.byte	0x2
	.2byte	0x102
	.uleb128 0x6
	.4byte	.LASF13
	.4byte	.LASF13
	.byte	0x3
	.2byte	0x162
	.uleb128 0x7
	.4byte	.LASF14
	.4byte	.LASF14
	.byte	0x4
	.byte	0xa6
	.uleb128 0x7
	.4byte	.LASF15
	.4byte	.LASF15
	.byte	0x5
	.byte	0x37
	.uleb128 0x7
	.4byte	.LASF16
	.4byte	.LASF16
	.byte	0x6
	.byte	0x5a
	.uleb128 0x7
	.4byte	.LASF17
	.4byte	.LASF17
	.byte	0x7
	.byte	0x60
	.uleb128 0x7
	.4byte	.LASF18
	.4byte	.LASF18
	.byte	0x8
	.byte	0x4d
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
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
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
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF5:
	.string	"long long int"
.LASF0:
	.string	"unsigned int"
.LASF19:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF9:
	.string	"long unsigned int"
.LASF6:
	.string	"long long unsigned int"
.LASF22:
	.string	"lwip_init"
.LASF18:
	.string	"sys_timeouts_init"
.LASF3:
	.string	"unsigned char"
.LASF10:
	.string	"char"
.LASF13:
	.string	"netif_init"
.LASF21:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\lwip"
.LASF7:
	.string	"long int"
.LASF17:
	.string	"dns_init"
.LASF4:
	.string	"short int"
.LASF20:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/lwip/core/init.c"
.LASF11:
	.string	"_Bool"
.LASF1:
	.string	"short unsigned int"
.LASF2:
	.string	"signed char"
.LASF14:
	.string	"udp_init"
.LASF12:
	.string	"sys_init"
.LASF15:
	.string	"tcp_init"
.LASF16:
	.string	"igmp_init"
.LASF8:
	.string	"sizetype"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
