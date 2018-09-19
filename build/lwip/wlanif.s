	.file	"wlanif.c"
	.text
.Ltext0:
	.section	.text.low_level_init,"ax",@progbits
	.literal_position
	.literal .LC0, esp_wifi_internal_free_rx_buffer
	.align	4
	.type	low_level_init, @function
low_level_init:
.LFB17:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/port/netif/wlanif.c"
	.loc 1 65 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 67 0
	movi.n	a8, 6
	s8i	a8, a2, 174
	.loc 1 72 0
	movi	a8, 0x5dc
	s16i	a8, a2, 172
	.loc 1 80 0
	movi.n	a8, 0x2e
	s8i	a8, a2, 181
	.loc 1 85 0
	l32r	a8, .LC0
	s32i	a8, a2, 208
	retw.n
.LFE17:
	.size	low_level_init, .-low_level_init
	.section	.text.low_level_output,"ax",@progbits
	.align	4
	.type	low_level_output, @function
low_level_output:
.LFB18:
	.loc 1 106 0
.LVL1:
	entry	sp, 32
.LCFI1:
	.loc 1 107 0
	mov.n	a10, a2
	call8	tcpip_adapter_get_esp_if
.LVL2:
	mov.n	a2, a10
.LVL3:
	.loc 1 111 0
	bgeui	a10, 3, .L5
	.loc 1 115 0
	l32i.n	a4, a3, 0
	bnez.n	a4, .L4
	.loc 1 116 0
	l16ui	a12, a3, 10
	l32i.n	a11, a3, 4
	call8	esp_wifi_internal_tx
.LVL4:
	extui	a2, a10, 0, 8
.LVL5:
	retw.n
.LVL6:
.L4:
	.loc 1 119 0
	movi.n	a12, 0
	l16ui	a11, a3, 8
	movi.n	a10, 3
	call8	pbuf_alloc
.LVL7:
	mov.n	a4, a10
.LVL8:
	.loc 1 120 0
	beqz.n	a10, .L6
	.loc 1 121 0
	movi.n	a8, 0
	s32i.n	a8, a10, 16
	.loc 1 122 0
	mov.n	a11, a3
	call8	pbuf_copy
.LVL9:
	.loc 1 126 0
	l16ui	a12, a4, 10
	l32i.n	a11, a4, 4
	mov.n	a10, a2
	call8	esp_wifi_internal_tx
.LVL10:
	extui	a2, a10, 0, 8
.LVL11:
	.loc 1 127 0
	mov.n	a10, a4
.LVL12:
	call8	pbuf_free
.LVL13:
	retw.n
.LVL14:
.L5:
	.loc 1 112 0
	movi	a2, 0xf0
.LVL15:
	retw.n
.LVL16:
.L6:
	.loc 1 124 0
	movi	a2, 0xff
.LVL17:
	.loc 1 131 0
	retw.n
.LFE18:
	.size	low_level_output, .-low_level_output
	.section	.text.wlanif_input,"ax",@progbits
	.align	4
	.global	wlanif_input
	.type	wlanif_input, @function
wlanif_input:
.LFB19:
	.loc 1 144 0
.LVL18:
	entry	sp, 32
.LCFI2:
	extui	a11, a4, 0, 16
	.loc 1 147 0
	movi.n	a8, 1
	movi.n	a10, 0
	mov.n	a9, a10
	moveqz	a9, a8, a3
	movnez	a8, a10, a2
	or	a8, a8, a9
	bne	a8, a10, .L8
	.loc 1 147 0 is_stmt 0 discriminator 1
	l8ui	a8, a2, 181
	bbs	a8, a10, .L9
.L8:
	.loc 1 148 0 is_stmt 1
	beqz.n	a5, .L7
	.loc 1 149 0
	mov.n	a10, a5
	call8	esp_wifi_internal_free_rx_buffer
.LVL19:
	retw.n
.L9:
	.loc 1 165 0
	movi.n	a12, 2
	movi.n	a10, 4
	call8	pbuf_alloc
.LVL20:
	mov.n	a4, a10
.LVL21:
	.loc 1 166 0
	bnez.n	a10, .L11
	.loc 1 168 0
	mov.n	a10, a5
	call8	esp_wifi_internal_free_rx_buffer
.LVL22:
	.loc 1 169 0
	retw.n
.L11:
	.loc 1 171 0
	s32i.n	a3, a10, 4
	.loc 1 172 0
	s32i.n	a2, a10, 16
	.loc 1 173 0
	s32i.n	a5, a10, 20
	.loc 1 177 0
	l32i	a3, a2, 132
.LVL23:
	mov.n	a11, a2
	callx8	a3
.LVL24:
	extui	a10, a10, 0, 8
	beqz.n	a10, .L7
	.loc 1 179 0
	mov.n	a10, a4
	call8	pbuf_free
.LVL25:
.L7:
	retw.n
.LFE19:
	.size	wlanif_input, .-wlanif_input
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC1:
	.string	"netif != NULL"
	.align	4
.LC4:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/lwip/port/netif/wlanif.c"
	.align	4
.LC6:
	.string	"espressif"
	.section	.text.wlanif_init,"ax",@progbits
	.literal_position
	.literal .LC2, .LC1
	.literal .LC3, __func__$7693
	.literal .LC5, .LC4
	.literal .LC7, .LC6
	.literal .LC8, etharp_output
	.literal .LC9, ethip6_output
	.literal .LC10, low_level_output
	.align	4
	.global	wlanif_init
	.type	wlanif_init, @function
wlanif_init:
.LFB20:
	.loc 1 198 0
.LVL26:
	entry	sp, 32
.LCFI3:
	.loc 1 199 0
	bnez.n	a2, .L13
	.loc 1 199 0 discriminator 1
	l32r	a13, .LC2
	l32r	a12, .LC3
	movi	a11, 0xc7
	l32r	a10, .LC5
	call8	__assert_func
.LVL27:
.L13:
	.loc 1 205 0
	l32r	a8, .LC7
	s32i	a8, a2, 168
	.loc 1 223 0
	l32r	a8, .LC8
	s32i	a8, a2, 136
	.loc 1 225 0
	l32r	a8, .LC9
	s32i	a8, a2, 144
	.loc 1 227 0
	l32r	a8, .LC10
	s32i	a8, a2, 140
	.loc 1 230 0
	mov.n	a10, a2
	call8	low_level_init
.LVL28:
	.loc 1 233 0
	movi.n	a2, 0
.LVL29:
	retw.n
.LFE20:
	.size	wlanif_init, .-wlanif_init
	.section	.text.wlanif_init_sta,"ax",@progbits
	.align	4
	.global	wlanif_init_sta
	.type	wlanif_init_sta, @function
wlanif_init_sta:
.LFB21:
	.loc 1 235 0
.LVL30:
	entry	sp, 32
.LCFI4:
	mov.n	a10, a2
	.loc 1 236 0
	movi	a8, 0x73
	s8i	a8, a2, 182
	.loc 1 237 0
	movi	a8, 0x74
	s8i	a8, a2, 183
	.loc 1 238 0
	call8	wlanif_init
.LVL31:
	.loc 1 239 0
	extui	a2, a10, 0, 8
.LVL32:
	retw.n
.LFE21:
	.size	wlanif_init_sta, .-wlanif_init_sta
	.section	.text.wlanif_init_ap,"ax",@progbits
	.align	4
	.global	wlanif_init_ap
	.type	wlanif_init_ap, @function
wlanif_init_ap:
.LFB22:
	.loc 1 241 0
.LVL33:
	entry	sp, 32
.LCFI5:
	mov.n	a10, a2
	.loc 1 242 0
	movi	a8, 0x61
	s8i	a8, a2, 182
	.loc 1 243 0
	movi	a8, 0x70
	s8i	a8, a2, 183
	.loc 1 244 0
	call8	wlanif_init
.LVL34:
	.loc 1 245 0
	extui	a2, a10, 0, 8
.LVL35:
	retw.n
.LFE22:
	.size	wlanif_init_ap, .-wlanif_init_ap
	.section	.rodata.__func__$7693,"a",@progbits
	.align	4
	.type	__func__$7693, @object
	.size	__func__$7693, 12
__func__$7693:
	.string	"wlanif_init"
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
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI0-.LFB17
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI1-.LFB18
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI2-.LFB19
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI3-.LFB20
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI4-.LFB21
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI5-.LFB22
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/port/arch/cc.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/err.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/pbuf.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/netif.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/ip4_addr.h"
	.file 9 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/ip6_addr.h"
	.file 10 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/ip_addr.h"
	.file 11 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_interface.h"
	.file 12 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_wifi_types.h"
	.file 13 "D:/ESP32/esp-idf-v3.1-rc1/components/tcpip_adapter/include/tcpip_adapter.h"
	.file 14 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_wifi_internal.h"
	.file 15 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/assert.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x927
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF105
	.byte	0xc
	.4byte	.LASF106
	.4byte	.LASF107
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
	.uleb128 0x4
	.4byte	.LASF3
	.byte	0x2
	.byte	0x11
	.4byte	0x45
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x4
	.4byte	.LASF4
	.byte	0x2
	.byte	0x12
	.4byte	0x57
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.uleb128 0x4
	.4byte	.LASF6
	.byte	0x2
	.byte	0x15
	.4byte	0x69
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x2
	.byte	0x16
	.4byte	0x2c
	.uleb128 0x4
	.4byte	.LASF9
	.byte	0x2
	.byte	0x1a
	.4byte	0x25
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb1
	.uleb128 0x7
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0x6
	.byte	0x4
	.4byte	0xbf
	.uleb128 0x8
	.4byte	0xb2
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x3
	.byte	0x14
	.4byte	0x3a
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x3
	.byte	0x15
	.4byte	0x4c
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x3
	.byte	0x20
	.4byte	0x5e
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x3
	.byte	0x21
	.4byte	0x70
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x3
	.byte	0x2d
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF21
	.uleb128 0x6
	.byte	0x4
	.4byte	0x108
	.uleb128 0x9
	.4byte	0x113
	.uleb128 0xa
	.4byte	0xa2
	.byte	0
	.uleb128 0x4
	.4byte	.LASF22
	.byte	0x4
	.byte	0x2e
	.4byte	0xcf
	.uleb128 0x4
	.4byte	.LASF23
	.byte	0x4
	.byte	0x2f
	.4byte	0xc4
	.uleb128 0x4
	.4byte	.LASF24
	.byte	0x4
	.byte	0x30
	.4byte	0xe5
	.uleb128 0x4
	.4byte	.LASF25
	.byte	0x4
	.byte	0x31
	.4byte	0xda
	.uleb128 0x4
	.4byte	.LASF26
	.byte	0x4
	.byte	0x32
	.4byte	0xf0
	.uleb128 0x4
	.4byte	.LASF27
	.byte	0x5
	.byte	0x2f
	.4byte	0x11e
	.uleb128 0xb
	.byte	0x4
	.4byte	0x25
	.byte	0x6
	.byte	0x3f
	.4byte	0x180
	.uleb128 0xc
	.4byte	.LASF28
	.byte	0
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0x1
	.uleb128 0xc
	.4byte	.LASF30
	.byte	0x2
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0x3
	.uleb128 0xc
	.4byte	.LASF32
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x25
	.byte	0x6
	.byte	0x47
	.4byte	0x1a5
	.uleb128 0xc
	.4byte	.LASF33
	.byte	0
	.uleb128 0xc
	.4byte	.LASF34
	.byte	0x1
	.uleb128 0xc
	.4byte	.LASF35
	.byte	0x2
	.uleb128 0xc
	.4byte	.LASF36
	.byte	0x3
	.byte	0
	.uleb128 0xd
	.4byte	.LASF44
	.byte	0x18
	.byte	0x6
	.byte	0x6c
	.4byte	0x21e
	.uleb128 0xe
	.4byte	.LASF37
	.byte	0x6
	.byte	0x6e
	.4byte	0x21e
	.byte	0
	.uleb128 0xe
	.4byte	.LASF38
	.byte	0x6
	.byte	0x71
	.4byte	0xa2
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF39
	.byte	0x6
	.byte	0x7a
	.4byte	0x129
	.byte	0x8
	.uleb128 0xf
	.string	"len"
	.byte	0x6
	.byte	0x7d
	.4byte	0x129
	.byte	0xa
	.uleb128 0xe
	.4byte	.LASF40
	.byte	0x6
	.byte	0x80
	.4byte	0x113
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF41
	.byte	0x6
	.byte	0x83
	.4byte	0x113
	.byte	0xd
	.uleb128 0xf
	.string	"ref"
	.byte	0x6
	.byte	0x8a
	.4byte	0x129
	.byte	0xe
	.uleb128 0xe
	.4byte	.LASF42
	.byte	0x6
	.byte	0x8d
	.4byte	0x3b4
	.byte	0x10
	.uleb128 0xe
	.4byte	.LASF43
	.byte	0x6
	.byte	0x8e
	.4byte	0xa2
	.byte	0x14
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1a5
	.uleb128 0xd
	.4byte	.LASF45
	.byte	0xe8
	.byte	0x7
	.byte	0xbd
	.4byte	0x3b4
	.uleb128 0xe
	.4byte	.LASF37
	.byte	0x7
	.byte	0xbf
	.4byte	0x3b4
	.byte	0
	.uleb128 0xe
	.4byte	.LASF46
	.byte	0x7
	.byte	0xc3
	.4byte	0x456
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF47
	.byte	0x7
	.byte	0xc4
	.4byte	0x456
	.byte	0x18
	.uleb128 0xf
	.string	"gw"
	.byte	0x7
	.byte	0xc5
	.4byte	0x456
	.byte	0x2c
	.uleb128 0xe
	.4byte	.LASF48
	.byte	0x7
	.byte	0xc9
	.4byte	0x574
	.byte	0x40
	.uleb128 0xe
	.4byte	.LASF49
	.byte	0x7
	.byte	0xcc
	.4byte	0x584
	.byte	0x7c
	.uleb128 0xe
	.4byte	.LASF50
	.byte	0x7
	.byte	0xce
	.4byte	0x5a4
	.byte	0x80
	.uleb128 0xe
	.4byte	.LASF51
	.byte	0x7
	.byte	0xd4
	.4byte	0x461
	.byte	0x84
	.uleb128 0xe
	.4byte	.LASF52
	.byte	0x7
	.byte	0xd9
	.4byte	0x486
	.byte	0x88
	.uleb128 0xe
	.4byte	.LASF53
	.byte	0x7
	.byte	0xde
	.4byte	0x4f0
	.byte	0x8c
	.uleb128 0xe
	.4byte	.LASF54
	.byte	0x7
	.byte	0xe3
	.4byte	0x4bb
	.byte	0x90
	.uleb128 0xe
	.4byte	.LASF55
	.byte	0x7
	.byte	0xf5
	.4byte	0xa2
	.byte	0x94
	.uleb128 0xe
	.4byte	.LASF56
	.byte	0x7
	.byte	0xf8
	.4byte	0x5af
	.byte	0x98
	.uleb128 0xe
	.4byte	.LASF57
	.byte	0x7
	.byte	0xfb
	.4byte	0x5ba
	.byte	0x9c
	.uleb128 0xe
	.4byte	.LASF58
	.byte	0x7
	.byte	0xfc
	.4byte	0x569
	.byte	0xa0
	.uleb128 0x10
	.4byte	.LASF59
	.byte	0x7
	.2byte	0x108
	.4byte	0x113
	.byte	0xa4
	.uleb128 0x10
	.4byte	.LASF60
	.byte	0x7
	.2byte	0x10d
	.4byte	0x113
	.byte	0xa5
	.uleb128 0x10
	.4byte	.LASF61
	.byte	0x7
	.2byte	0x117
	.4byte	0xb9
	.byte	0xa8
	.uleb128 0x11
	.string	"mtu"
	.byte	0x7
	.2byte	0x11f
	.4byte	0x129
	.byte	0xac
	.uleb128 0x10
	.4byte	.LASF62
	.byte	0x7
	.2byte	0x121
	.4byte	0x113
	.byte	0xae
	.uleb128 0x10
	.4byte	.LASF63
	.byte	0x7
	.2byte	0x123
	.4byte	0x5c0
	.byte	0xaf
	.uleb128 0x10
	.4byte	.LASF41
	.byte	0x7
	.2byte	0x125
	.4byte	0x113
	.byte	0xb5
	.uleb128 0x10
	.4byte	.LASF64
	.byte	0x7
	.2byte	0x127
	.4byte	0x5d0
	.byte	0xb6
	.uleb128 0x11
	.string	"num"
	.byte	0x7
	.2byte	0x129
	.4byte	0x113
	.byte	0xb8
	.uleb128 0x10
	.4byte	.LASF65
	.byte	0x7
	.2byte	0x139
	.4byte	0x515
	.byte	0xbc
	.uleb128 0x10
	.4byte	.LASF66
	.byte	0x7
	.2byte	0x13f
	.4byte	0x53f
	.byte	0xc0
	.uleb128 0x10
	.4byte	.LASF67
	.byte	0x7
	.2byte	0x147
	.4byte	0x21e
	.byte	0xc4
	.uleb128 0x10
	.4byte	.LASF68
	.byte	0x7
	.2byte	0x148
	.4byte	0x21e
	.byte	0xc8
	.uleb128 0x10
	.4byte	.LASF69
	.byte	0x7
	.2byte	0x14a
	.4byte	0x129
	.byte	0xcc
	.uleb128 0x10
	.4byte	.LASF70
	.byte	0x7
	.2byte	0x14f
	.4byte	0x102
	.byte	0xd0
	.uleb128 0x10
	.4byte	.LASF71
	.byte	0x7
	.2byte	0x150
	.4byte	0x456
	.byte	0xd4
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x224
	.uleb128 0xd
	.4byte	.LASF72
	.byte	0x4
	.byte	0x8
	.byte	0x2e
	.4byte	0x3d3
	.uleb128 0xe
	.4byte	.LASF73
	.byte	0x8
	.byte	0x2f
	.4byte	0x13f
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF74
	.byte	0x8
	.byte	0x42
	.4byte	0x3ba
	.uleb128 0xd
	.4byte	.LASF48
	.byte	0x10
	.byte	0x9
	.byte	0x39
	.4byte	0x3f7
	.uleb128 0xe
	.4byte	.LASF73
	.byte	0x9
	.byte	0x3a
	.4byte	0x3f7
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	0x13f
	.4byte	0x407
	.uleb128 0x13
	.4byte	0x9b
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.4byte	.LASF75
	.byte	0x9
	.byte	0x4b
	.4byte	0x3de
	.uleb128 0x14
	.byte	0x10
	.byte	0xa
	.byte	0x39
	.4byte	0x431
	.uleb128 0x15
	.string	"ip6"
	.byte	0xa
	.byte	0x3a
	.4byte	0x407
	.uleb128 0x15
	.string	"ip4"
	.byte	0xa
	.byte	0x3b
	.4byte	0x3d3
	.byte	0
	.uleb128 0xd
	.4byte	.LASF76
	.byte	0x14
	.byte	0xa
	.byte	0x38
	.4byte	0x456
	.uleb128 0xe
	.4byte	.LASF77
	.byte	0xa
	.byte	0x3c
	.4byte	0x412
	.byte	0
	.uleb128 0xe
	.4byte	.LASF40
	.byte	0xa
	.byte	0x3d
	.4byte	0x113
	.byte	0x10
	.byte	0
	.uleb128 0x4
	.4byte	.LASF78
	.byte	0xa
	.byte	0x3e
	.4byte	0x431
	.uleb128 0x4
	.4byte	.LASF79
	.byte	0x7
	.byte	0x83
	.4byte	0x46c
	.uleb128 0x6
	.byte	0x4
	.4byte	0x472
	.uleb128 0x16
	.4byte	0x14a
	.4byte	0x486
	.uleb128 0xa
	.4byte	0x21e
	.uleb128 0xa
	.4byte	0x3b4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF80
	.byte	0x7
	.byte	0x8e
	.4byte	0x491
	.uleb128 0x6
	.byte	0x4
	.4byte	0x497
	.uleb128 0x16
	.4byte	0x14a
	.4byte	0x4b0
	.uleb128 0xa
	.4byte	0x3b4
	.uleb128 0xa
	.4byte	0x21e
	.uleb128 0xa
	.4byte	0x4b0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4b6
	.uleb128 0x8
	.4byte	0x3d3
	.uleb128 0x4
	.4byte	.LASF81
	.byte	0x7
	.byte	0x9b
	.4byte	0x4c6
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4cc
	.uleb128 0x16
	.4byte	0x14a
	.4byte	0x4e5
	.uleb128 0xa
	.4byte	0x3b4
	.uleb128 0xa
	.4byte	0x21e
	.uleb128 0xa
	.4byte	0x4e5
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4eb
	.uleb128 0x8
	.4byte	0x407
	.uleb128 0x4
	.4byte	.LASF82
	.byte	0x7
	.byte	0xa5
	.4byte	0x4fb
	.uleb128 0x6
	.byte	0x4
	.4byte	0x501
	.uleb128 0x16
	.4byte	0x14a
	.4byte	0x515
	.uleb128 0xa
	.4byte	0x3b4
	.uleb128 0xa
	.4byte	0x21e
	.byte	0
	.uleb128 0x4
	.4byte	.LASF83
	.byte	0x7
	.byte	0xaa
	.4byte	0x520
	.uleb128 0x6
	.byte	0x4
	.4byte	0x526
	.uleb128 0x16
	.4byte	0x14a
	.4byte	0x53f
	.uleb128 0xa
	.4byte	0x3b4
	.uleb128 0xa
	.4byte	0x4b0
	.uleb128 0xa
	.4byte	0x113
	.byte	0
	.uleb128 0x4
	.4byte	.LASF84
	.byte	0x7
	.byte	0xaf
	.4byte	0x54a
	.uleb128 0x6
	.byte	0x4
	.4byte	0x550
	.uleb128 0x16
	.4byte	0x14a
	.4byte	0x569
	.uleb128 0xa
	.4byte	0x3b4
	.uleb128 0xa
	.4byte	0x4e5
	.uleb128 0xa
	.4byte	0x113
	.byte	0
	.uleb128 0x4
	.4byte	.LASF85
	.byte	0x7
	.byte	0xb6
	.4byte	0xab
	.uleb128 0x12
	.4byte	0x456
	.4byte	0x584
	.uleb128 0x13
	.4byte	0x9b
	.byte	0x2
	.byte	0
	.uleb128 0x12
	.4byte	0x113
	.4byte	0x594
	.uleb128 0x13
	.4byte	0x9b
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.4byte	0x5a4
	.uleb128 0xa
	.4byte	0x3b4
	.uleb128 0xa
	.4byte	0x113
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x594
	.uleb128 0x17
	.4byte	.LASF56
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5aa
	.uleb128 0x17
	.4byte	.LASF86
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5b5
	.uleb128 0x12
	.4byte	0x113
	.4byte	0x5d0
	.uleb128 0x13
	.4byte	0x9b
	.byte	0x5
	.byte	0
	.uleb128 0x12
	.4byte	0xb2
	.4byte	0x5e0
	.uleb128 0x13
	.4byte	0x9b
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x25
	.byte	0xb
	.byte	0x19
	.4byte	0x605
	.uleb128 0xc
	.4byte	.LASF87
	.byte	0
	.uleb128 0xc
	.4byte	.LASF88
	.byte	0x1
	.uleb128 0xc
	.4byte	.LASF89
	.byte	0x2
	.uleb128 0xc
	.4byte	.LASF90
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.4byte	.LASF91
	.byte	0xb
	.byte	0x1e
	.4byte	0x5e0
	.uleb128 0x4
	.4byte	.LASF92
	.byte	0xc
	.byte	0x25
	.4byte	0x605
	.uleb128 0x18
	.4byte	.LASF108
	.byte	0x1
	.byte	0x40
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x63e
	.uleb128 0x19
	.4byte	.LASF45
	.byte	0x1
	.byte	0x40
	.4byte	0x3b4
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF109
	.byte	0x1
	.byte	0x69
	.4byte	0x14a
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x71b
	.uleb128 0x1b
	.4byte	.LASF45
	.byte	0x1
	.byte	0x69
	.4byte	0x3b4
	.4byte	.LLST0
	.uleb128 0x1c
	.string	"p"
	.byte	0x1
	.byte	0x69
	.4byte	0x21e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1d
	.4byte	.LASF93
	.byte	0x1
	.byte	0x6b
	.4byte	0x610
	.4byte	.LLST1
	.uleb128 0x1e
	.string	"q"
	.byte	0x1
	.byte	0x6c
	.4byte	0x21e
	.4byte	.LLST2
	.uleb128 0x1e
	.string	"ret"
	.byte	0x1
	.byte	0x6d
	.4byte	0x14a
	.4byte	.LLST3
	.uleb128 0x1f
	.4byte	.LVL2
	.4byte	0x8dc
	.4byte	0x6b0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL4
	.4byte	0x8e8
	.4byte	0x6c4
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL7
	.4byte	0x8f3
	.4byte	0x6dc
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL9
	.4byte	0x8fe
	.4byte	0x6f6
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL10
	.4byte	0x8e8
	.4byte	0x70a
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL13
	.4byte	0x909
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	.LASF110
	.byte	0x1
	.byte	0x8f
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7de
	.uleb128 0x19
	.4byte	.LASF45
	.byte	0x1
	.byte	0x8f
	.4byte	0x3b4
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1b
	.4byte	.LASF94
	.byte	0x1
	.byte	0x8f
	.4byte	0xa2
	.4byte	.LLST4
	.uleb128 0x23
	.string	"len"
	.byte	0x1
	.byte	0x8f
	.4byte	0x129
	.4byte	.LLST5
	.uleb128 0x1c
	.string	"eb"
	.byte	0x1
	.byte	0x8f
	.4byte	0xa2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1e
	.string	"p"
	.byte	0x1
	.byte	0x91
	.4byte	0x21e
	.4byte	.LLST6
	.uleb128 0x1f
	.4byte	.LVL19
	.4byte	0x914
	.4byte	0x788
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL20
	.4byte	0x8f3
	.4byte	0x7a0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL22
	.4byte	0x914
	.4byte	0x7b4
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL24
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.4byte	0x7cd
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL25
	.4byte	0x909
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	.LASF95
	.byte	0x1
	.byte	0xc5
	.4byte	0x14a
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x855
	.uleb128 0x1b
	.4byte	.LASF45
	.byte	0x1
	.byte	0xc5
	.4byte	0x3b4
	.4byte	.LLST7
	.uleb128 0x26
	.4byte	.LASF111
	.4byte	0x865
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$7693
	.uleb128 0x1f
	.4byte	.LVL27
	.4byte	0x91f
	.4byte	0x844
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xc7
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$7693
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x21
	.4byte	.LVL28
	.4byte	0x61b
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	0xb2
	.4byte	0x865
	.uleb128 0x13
	.4byte	0x9b
	.byte	0xb
	.byte	0
	.uleb128 0x8
	.4byte	0x855
	.uleb128 0x25
	.4byte	.LASF96
	.byte	0x1
	.byte	0xeb
	.4byte	0x14a
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8a3
	.uleb128 0x1b
	.4byte	.LASF45
	.byte	0x1
	.byte	0xeb
	.4byte	0x3b4
	.4byte	.LLST8
	.uleb128 0x21
	.4byte	.LVL31
	.4byte	0x7de
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	.LASF97
	.byte	0x1
	.byte	0xf1
	.4byte	0x14a
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8dc
	.uleb128 0x1b
	.4byte	.LASF45
	.byte	0x1
	.byte	0xf1
	.4byte	0x3b4
	.4byte	.LLST9
	.uleb128 0x21
	.4byte	.LVL34
	.4byte	0x7de
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LASF98
	.4byte	.LASF98
	.byte	0xd
	.2byte	0x237
	.uleb128 0x28
	.4byte	.LASF99
	.4byte	.LASF99
	.byte	0xe
	.byte	0x62
	.uleb128 0x28
	.4byte	.LASF100
	.4byte	.LASF100
	.byte	0x6
	.byte	0xc1
	.uleb128 0x28
	.4byte	.LASF101
	.4byte	.LASF101
	.byte	0x6
	.byte	0xd0
	.uleb128 0x28
	.4byte	.LASF102
	.4byte	.LASF102
	.byte	0x6
	.byte	0xcb
	.uleb128 0x28
	.4byte	.LASF103
	.4byte	.LASF103
	.byte	0xe
	.byte	0x53
	.uleb128 0x28
	.4byte	.LASF104
	.4byte	.LASF104
	.byte	0xf
	.byte	0x29
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x10
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x17
	.byte	0x1
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
	.uleb128 0x15
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
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
	.uleb128 0x19
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x1b
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
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
	.uleb128 0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0x18
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x26
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
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
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL3
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL3
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL6
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL3
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL8
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL14
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL16
	.4byte	.LFE18
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL12
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL18
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL23
	.4byte	.LVL24-1
	.2byte	0x2
	.byte	0x74
	.sleb128 4
	.4byte	.LVL24-1
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL18
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL21
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL21
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL26
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL29
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL30
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL32
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL33
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL35
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x44
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF96:
	.string	"wlanif_init_sta"
.LASF102:
	.string	"pbuf_free"
.LASF77:
	.string	"u_addr"
.LASF63:
	.string	"hwaddr"
.LASF85:
	.string	"dhcp_event_fn"
.LASF86:
	.string	"udp_pcb"
.LASF16:
	.string	"int8_t"
.LASF15:
	.string	"char"
.LASF55:
	.string	"state"
.LASF80:
	.string	"netif_output_fn"
.LASF7:
	.string	"short int"
.LASF88:
	.string	"ESP_IF_WIFI_AP"
.LASF51:
	.string	"input"
.LASF54:
	.string	"output_ip6"
.LASF13:
	.string	"sizetype"
.LASF39:
	.string	"tot_len"
.LASF25:
	.string	"s16_t"
.LASF9:
	.string	"__uint32_t"
.LASF8:
	.string	"__uint16_t"
.LASF48:
	.string	"ip6_addr"
.LASF57:
	.string	"dhcps_pcb"
.LASF43:
	.string	"l2_buf"
.LASF61:
	.string	"hostname"
.LASF65:
	.string	"igmp_mac_filter"
.LASF17:
	.string	"uint8_t"
.LASF26:
	.string	"u32_t"
.LASF46:
	.string	"ip_addr"
.LASF108:
	.string	"low_level_init"
.LASF20:
	.string	"uint32_t"
.LASF32:
	.string	"PBUF_RAW"
.LASF107:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\lwip"
.LASF36:
	.string	"PBUF_POOL"
.LASF53:
	.string	"linkoutput"
.LASF23:
	.string	"s8_t"
.LASF10:
	.string	"long long int"
.LASF89:
	.string	"ESP_IF_ETH"
.LASF82:
	.string	"netif_linkoutput_fn"
.LASF12:
	.string	"long int"
.LASF81:
	.string	"netif_output_ip6_fn"
.LASF78:
	.string	"ip_addr_t"
.LASF73:
	.string	"addr"
.LASF28:
	.string	"PBUF_TRANSPORT"
.LASF4:
	.string	"__uint8_t"
.LASF90:
	.string	"ESP_IF_MAX"
.LASF56:
	.string	"dhcp"
.LASF83:
	.string	"netif_igmp_mac_filter_fn"
.LASF64:
	.string	"name"
.LASF33:
	.string	"PBUF_RAM"
.LASF5:
	.string	"unsigned char"
.LASF75:
	.string	"ip6_addr_t"
.LASF79:
	.string	"netif_input_fn"
.LASF111:
	.string	"__func__"
.LASF95:
	.string	"wlanif_init"
.LASF49:
	.string	"ip6_addr_state"
.LASF101:
	.string	"pbuf_copy"
.LASF2:
	.string	"signed char"
.LASF41:
	.string	"flags"
.LASF11:
	.string	"long long unsigned int"
.LASF40:
	.string	"type"
.LASF67:
	.string	"loop_first"
.LASF76:
	.string	"_ip_addr"
.LASF19:
	.string	"uint16_t"
.LASF14:
	.string	"long unsigned int"
.LASF93:
	.string	"wifi_if"
.LASF69:
	.string	"loop_cnt_current"
.LASF24:
	.string	"u16_t"
.LASF1:
	.string	"short unsigned int"
.LASF3:
	.string	"__int8_t"
.LASF27:
	.string	"err_t"
.LASF74:
	.string	"ip4_addr_t"
.LASF31:
	.string	"PBUF_RAW_TX"
.LASF47:
	.string	"netmask"
.LASF103:
	.string	"esp_wifi_internal_free_rx_buffer"
.LASF110:
	.string	"wlanif_input"
.LASF100:
	.string	"pbuf_alloc"
.LASF18:
	.string	"int16_t"
.LASF21:
	.string	"_Bool"
.LASF72:
	.string	"ip4_addr"
.LASF97:
	.string	"wlanif_init_ap"
.LASF66:
	.string	"mld_mac_filter"
.LASF42:
	.string	"l2_owner"
.LASF94:
	.string	"buffer"
.LASF29:
	.string	"PBUF_IP"
.LASF58:
	.string	"dhcp_event"
.LASF70:
	.string	"l2_buffer_free_notify"
.LASF84:
	.string	"netif_mld_mac_filter_fn"
.LASF62:
	.string	"hwaddr_len"
.LASF91:
	.string	"esp_interface_t"
.LASF98:
	.string	"tcpip_adapter_get_esp_if"
.LASF45:
	.string	"netif"
.LASF22:
	.string	"u8_t"
.LASF109:
	.string	"low_level_output"
.LASF71:
	.string	"last_ip_addr"
.LASF68:
	.string	"loop_last"
.LASF6:
	.string	"__int16_t"
.LASF87:
	.string	"ESP_IF_WIFI_STA"
.LASF99:
	.string	"esp_wifi_internal_tx"
.LASF60:
	.string	"rs_count"
.LASF92:
	.string	"wifi_interface_t"
.LASF52:
	.string	"output"
.LASF50:
	.string	"ipv6_addr_cb"
.LASF59:
	.string	"ip6_autoconfig_enabled"
.LASF104:
	.string	"__assert_func"
.LASF106:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/lwip/port/netif/wlanif.c"
.LASF35:
	.string	"PBUF_REF"
.LASF0:
	.string	"unsigned int"
.LASF105:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF34:
	.string	"PBUF_ROM"
.LASF38:
	.string	"payload"
.LASF37:
	.string	"next"
.LASF44:
	.string	"pbuf"
.LASF30:
	.string	"PBUF_LINK"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
