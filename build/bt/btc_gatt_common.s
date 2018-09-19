	.file	"btc_gatt_common.c"
	.text
.Ltext0:
	.section	.text.btc_set_local_mtu,"ax",@progbits
	.align	4
	.type	btc_set_local_mtu, @function
btc_set_local_mtu:
.LFB26:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/btc/profile/std/gatt/btc_gatt_common.c"
	.loc 1 28 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 29 0
	mov.n	a10, a2
	call8	BTA_GATT_SetLocalMTU
.LVL1:
	retw.n
.LFE26:
	.size	btc_set_local_mtu, .-btc_set_local_mtu
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC1:
	.string	"BT_BTC"
	.align	4
.LC3:
	.string	"\033[0;31mE (%d) %s: %s UNKNOWN ACT %d\n\033[0m\n"
	.section	.text.btc_gatt_com_call_handler,"ax",@progbits
	.literal_position
	.literal .LC0, __func__$9022
	.literal .LC2, .LC1
	.literal .LC4, .LC3
	.align	4
	.global	btc_gatt_com_call_handler
	.type	btc_gatt_com_call_handler, @function
btc_gatt_com_call_handler:
.LFB27:
	.loc 1 33 0
.LVL2:
	entry	sp, 48
.LCFI1:
	.loc 1 35 0
	l8ui	a8, a2, 3
	bnez.n	a8, .L6
.LBB2:
	.loc 1 38 0
	l32i.n	a2, a2, 4
.LVL3:
	.loc 1 39 0
	l16ui	a10, a2, 0
	call8	btc_set_local_mtu
.LVL4:
	.loc 1 40 0
	retw.n
.LVL5:
.L6:
.LBE2:
	.loc 1 43 0 discriminator 1
	call8	esp_log_timestamp
.LVL6:
	l8ui	a2, a2, 3
.LVL7:
	l32r	a11, .LC2
	s32i.n	a2, sp, 0
	l32r	a15, .LC0
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC4
	movi.n	a10, 1
	call8	esp_log_write
.LVL8:
	retw.n
.LFE27:
	.size	btc_gatt_com_call_handler, .-btc_gatt_com_call_handler
	.section	.rodata.__func__$9022,"a",@progbits
	.align	4
	.type	__func__$9022, @object
	.size	__func__$9022, 26
__func__$9022:
	.string	"btc_gatt_com_call_handler"
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
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI0-.LFB26
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI1-.LFB27
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE2:
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/bt_types.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/btc/include/btc/btc_task.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/log/include/esp_log.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/btc/profile/std/include/btc_gatt_common.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/bta/include/bta/bta_gatt_common.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x2d8
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF33
	.byte	0xc
	.4byte	.LASF34
	.4byte	.LASF35
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x2
	.byte	0x12
	.4byte	0x37
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x2
	.byte	0x16
	.4byte	0x50
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x3
	.byte	0x15
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x3
	.byte	0x21
	.4byte	0x45
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x4
	.byte	0x21
	.4byte	0x73
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF12
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x5
	.4byte	0x89
	.4byte	0xb2
	.uleb128 0x6
	.4byte	0x9b
	.byte	0x5
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.uleb128 0x7
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF15
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF16
	.uleb128 0x8
	.byte	0x4
	.4byte	0x5e
	.byte	0x6
	.byte	0x1f
	.4byte	0xfa
	.uleb128 0x9
	.4byte	.LASF17
	.byte	0
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x5
	.byte	0
	.uleb128 0xa
	.4byte	.LASF25
	.byte	0x8
	.byte	0x5
	.byte	0x17
	.4byte	0x143
	.uleb128 0xb
	.string	"sig"
	.byte	0x5
	.byte	0x18
	.4byte	0x73
	.byte	0
	.uleb128 0xb
	.string	"aid"
	.byte	0x5
	.byte	0x19
	.4byte	0x73
	.byte	0x1
	.uleb128 0xb
	.string	"pid"
	.byte	0x5
	.byte	0x1a
	.4byte	0x73
	.byte	0x2
	.uleb128 0xb
	.string	"act"
	.byte	0x5
	.byte	0x1b
	.4byte	0x73
	.byte	0x3
	.uleb128 0xb
	.string	"arg"
	.byte	0x5
	.byte	0x1c
	.4byte	0xb9
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x5
	.byte	0x1d
	.4byte	0xfa
	.uleb128 0xc
	.byte	0x4
	.4byte	0x143
	.uleb128 0x8
	.byte	0x4
	.4byte	0x5e
	.byte	0x7
	.byte	0x18
	.4byte	0x167
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	.LASF26
	.byte	0x2
	.byte	0x7
	.byte	0x1f
	.4byte	0x180
	.uleb128 0xb
	.string	"mtu"
	.byte	0x7
	.byte	0x20
	.4byte	0x7e
	.byte	0
	.byte	0
	.uleb128 0xd
	.byte	0x2
	.byte	0x7
	.byte	0x1d
	.4byte	0x194
	.uleb128 0xe
	.4byte	.LASF36
	.byte	0x7
	.byte	0x21
	.4byte	0x167
	.byte	0
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x7
	.byte	0x22
	.4byte	0x180
	.uleb128 0xf
	.4byte	.LASF37
	.byte	0x1
	.byte	0x1b
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1d2
	.uleb128 0x10
	.string	"mtu"
	.byte	0x1
	.byte	0x1b
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x11
	.4byte	.LVL1
	.4byte	0x2ba
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	.LASF38
	.byte	0x1
	.byte	0x20
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x26f
	.uleb128 0x14
	.string	"msg"
	.byte	0x1
	.byte	0x20
	.4byte	0x14e
	.4byte	.LLST0
	.uleb128 0x15
	.4byte	.LASF39
	.4byte	0x27f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$9022
	.uleb128 0x16
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.4byte	0x22b
	.uleb128 0x17
	.string	"arg"
	.byte	0x1
	.byte	0x26
	.4byte	0x284
	.4byte	.LLST1
	.uleb128 0x18
	.4byte	.LVL4
	.4byte	0x19f
	.byte	0
	.uleb128 0x18
	.4byte	.LVL6
	.4byte	0x2c5
	.uleb128 0x11
	.4byte	.LVL8
	.4byte	0x2d0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$9022
	.uleb128 0x12
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	0xb2
	.4byte	0x27f
	.uleb128 0x6
	.4byte	0x9b
	.byte	0x19
	.byte	0
	.uleb128 0x19
	.4byte	0x26f
	.uleb128 0xc
	.byte	0x4
	.4byte	0x194
	.uleb128 0x1a
	.4byte	.LASF28
	.byte	0x4
	.2byte	0x2cc
	.4byte	0x29d
	.byte	0x6
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.uleb128 0x19
	.4byte	0xa2
	.uleb128 0x1a
	.4byte	.LASF29
	.byte	0x4
	.2byte	0x2cd
	.4byte	0x2b5
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	0xa2
	.uleb128 0x1b
	.4byte	.LASF30
	.4byte	.LASF30
	.byte	0x8
	.byte	0x20
	.uleb128 0x1b
	.4byte	.LASF31
	.4byte	.LASF31
	.byte	0x6
	.byte	0x57
	.uleb128 0x1b
	.4byte	.LASF32
	.4byte	.LASF32
	.byte	0x6
	.byte	0x6b
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
	.uleb128 0x4
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
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL3
	.4byte	.LVL5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL7
	.4byte	.LFE27
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
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x24
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF7:
	.string	"long long int"
.LASF3:
	.string	"__uint8_t"
.LASF29:
	.string	"bd_addr_null"
.LASF18:
	.string	"ESP_LOG_ERROR"
.LASF19:
	.string	"ESP_LOG_WARN"
.LASF11:
	.string	"UINT8"
.LASF37:
	.string	"btc_set_local_mtu"
.LASF25:
	.string	"btc_msg"
.LASF24:
	.string	"BTC_GATT_ACT_SET_LOCAL_MTU"
.LASF38:
	.string	"btc_gatt_com_call_handler"
.LASF34:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/btc/profile/std/gatt/btc_gatt_common.c"
.LASF30:
	.string	"BTA_GATT_SetLocalMTU"
.LASF33:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF31:
	.string	"esp_log_timestamp"
.LASF39:
	.string	"__func__"
.LASF26:
	.string	"set_mtu_arg"
.LASF35:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\bt"
.LASF1:
	.string	"unsigned char"
.LASF5:
	.string	"short unsigned int"
.LASF23:
	.string	"btc_msg_t"
.LASF4:
	.string	"__uint16_t"
.LASF27:
	.string	"btc_ble_gatt_com_args_t"
.LASF20:
	.string	"ESP_LOG_INFO"
.LASF16:
	.string	"long unsigned int"
.LASF6:
	.string	"unsigned int"
.LASF36:
	.string	"set_mtu"
.LASF21:
	.string	"ESP_LOG_DEBUG"
.LASF14:
	.string	"char"
.LASF9:
	.string	"uint8_t"
.LASF28:
	.string	"bd_addr_any"
.LASF13:
	.string	"sizetype"
.LASF2:
	.string	"short int"
.LASF17:
	.string	"ESP_LOG_NONE"
.LASF10:
	.string	"uint16_t"
.LASF32:
	.string	"esp_log_write"
.LASF15:
	.string	"long int"
.LASF0:
	.string	"signed char"
.LASF12:
	.string	"_Bool"
.LASF8:
	.string	"long long unsigned int"
.LASF22:
	.string	"ESP_LOG_VERBOSE"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
