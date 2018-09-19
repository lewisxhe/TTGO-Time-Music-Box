	.file	"esp_gatt_common_api.c"
	.text
.Ltext0:
	.section	.text.esp_ble_gatt_set_local_mtu,"ax",@progbits
	.align	4
	.global	esp_ble_gatt_set_local_mtu
	.type	esp_ble_gatt_set_local_mtu, @function
esp_ble_gatt_set_local_mtu:
.LFB26:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/api/esp_gatt_common_api.c"
	.loc 1 33 0
.LVL0:
	entry	sp, 48
.LCFI0:
	extui	a2, a2, 0, 16
	.loc 1 37 0
	call8	esp_bluedroid_get_status
.LVL1:
	bnei	a10, 2, .L3
	.loc 1 39 0
	addi	a8, a2, -23
	extui	a8, a8, 0, 16
	movi	a9, 0x1ee
	bltu	a9, a8, .L4
	.loc 1 43 0
	movi.n	a8, 0
	s8i	a8, sp, 0
	.loc 1 44 0
	movi.n	a9, 3
	s8i	a9, sp, 2
	.loc 1 45 0
	s8i	a8, sp, 3
	.loc 1 46 0
	s16i	a2, sp, 8
	.loc 1 48 0
	movi.n	a13, 0
	movi.n	a12, 2
	addi.n	a11, sp, 8
	mov.n	a10, sp
	call8	btc_transfer_context
.LVL2:
	.loc 1 48 0
	bnez.n	a10, .L5
	movi.n	a2, 0
.LVL3:
	retw.n
.L3:
	.loc 1 37 0
	movi	a2, 0x103
	retw.n
.L4:
	.loc 1 40 0
	movi	a2, 0x104
	retw.n
.L5:
	.loc 1 48 0
	movi.n	a2, -1
	.loc 1 49 0
	retw.n
.LFE26:
	.size	esp_ble_gatt_set_local_mtu, .-esp_ble_gatt_set_local_mtu
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
	.uleb128 0x30
	.align	4
.LEFDE0:
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_err.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/bt_types.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/api/include/api/esp_bt_main.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/common/include/common/bt_defs.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/btc/include/btc/btc_task.h"
	.file 9 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/btc/profile/std/include/btc_gatt_common.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x35e
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF69
	.byte	0xc
	.4byte	.LASF70
	.4byte	.LASF71
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x4
	.4byte	.LASF5
	.byte	0x2
	.byte	0x12
	.4byte	0x4c
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x4
	.4byte	.LASF6
	.byte	0x2
	.byte	0x16
	.4byte	0x33
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x2
	.byte	0x19
	.4byte	0x25
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x3
	.byte	0x15
	.4byte	0x41
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x3
	.byte	0x21
	.4byte	0x5a
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x3
	.byte	0x2c
	.4byte	0x65
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x4
	.byte	0x18
	.4byte	0xb2
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2c
	.byte	0x6
	.byte	0x1b
	.4byte	0xe7
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF20
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF21
	.uleb128 0x4
	.4byte	.LASF22
	.byte	0x5
	.byte	0x21
	.4byte	0x9c
	.uleb128 0x8
	.4byte	0xee
	.4byte	0x109
	.uleb128 0x9
	.4byte	0x85
	.byte	0x5
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2c
	.byte	0x7
	.byte	0x48
	.4byte	0x182
	.uleb128 0x7
	.4byte	.LASF23
	.byte	0
	.uleb128 0x7
	.4byte	.LASF24
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF25
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF26
	.byte	0x3
	.uleb128 0x7
	.4byte	.LASF27
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF28
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF29
	.byte	0x6
	.uleb128 0x7
	.4byte	.LASF30
	.byte	0x7
	.uleb128 0x7
	.4byte	.LASF31
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF32
	.byte	0x9
	.uleb128 0x7
	.4byte	.LASF33
	.byte	0xa
	.uleb128 0x7
	.4byte	.LASF34
	.byte	0xb
	.uleb128 0x7
	.4byte	.LASF35
	.byte	0xc
	.uleb128 0x7
	.4byte	.LASF36
	.byte	0xd
	.uleb128 0x7
	.4byte	.LASF37
	.byte	0xe
	.uleb128 0x7
	.4byte	.LASF38
	.byte	0xf
	.uleb128 0x7
	.4byte	.LASF39
	.byte	0x10
	.uleb128 0x7
	.4byte	.LASF40
	.byte	0x11
	.byte	0
	.uleb128 0xa
	.4byte	.LASF62
	.byte	0x8
	.byte	0x8
	.byte	0x17
	.4byte	0x1cb
	.uleb128 0xb
	.string	"sig"
	.byte	0x8
	.byte	0x18
	.4byte	0x9c
	.byte	0
	.uleb128 0xb
	.string	"aid"
	.byte	0x8
	.byte	0x19
	.4byte	0x9c
	.byte	0x1
	.uleb128 0xb
	.string	"pid"
	.byte	0x8
	.byte	0x1a
	.4byte	0x9c
	.byte	0x2
	.uleb128 0xb
	.string	"act"
	.byte	0x8
	.byte	0x1b
	.4byte	0x9c
	.byte	0x3
	.uleb128 0xb
	.string	"arg"
	.byte	0x8
	.byte	0x1c
	.4byte	0x8c
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF41
	.byte	0x8
	.byte	0x1d
	.4byte	0x182
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2c
	.byte	0x8
	.byte	0x24
	.4byte	0x1f5
	.uleb128 0x7
	.4byte	.LASF42
	.byte	0
	.uleb128 0x7
	.4byte	.LASF43
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF44
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2c
	.byte	0x8
	.byte	0x2a
	.4byte	0x262
	.uleb128 0x7
	.4byte	.LASF45
	.byte	0
	.uleb128 0x7
	.4byte	.LASF46
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF47
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF48
	.byte	0x3
	.uleb128 0x7
	.4byte	.LASF49
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF50
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF51
	.byte	0x6
	.uleb128 0x7
	.4byte	.LASF52
	.byte	0x7
	.uleb128 0x7
	.4byte	.LASF53
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF54
	.byte	0x9
	.uleb128 0x7
	.4byte	.LASF55
	.byte	0xa
	.uleb128 0x7
	.4byte	.LASF56
	.byte	0xb
	.uleb128 0x7
	.4byte	.LASF57
	.byte	0xc
	.uleb128 0x7
	.4byte	.LASF58
	.byte	0xd
	.uleb128 0x7
	.4byte	.LASF59
	.byte	0xe
	.uleb128 0x7
	.4byte	.LASF60
	.byte	0xf
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2c
	.byte	0x9
	.byte	0x18
	.4byte	0x275
	.uleb128 0x7
	.4byte	.LASF61
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	.LASF63
	.byte	0x2
	.byte	0x9
	.byte	0x1f
	.4byte	0x28e
	.uleb128 0xb
	.string	"mtu"
	.byte	0x9
	.byte	0x20
	.4byte	0xa7
	.byte	0
	.byte	0
	.uleb128 0xc
	.byte	0x2
	.byte	0x9
	.byte	0x1d
	.4byte	0x2a2
	.uleb128 0xd
	.4byte	.LASF72
	.byte	0x9
	.byte	0x21
	.4byte	0x275
	.byte	0
	.uleb128 0x4
	.4byte	.LASF64
	.byte	0x9
	.byte	0x22
	.4byte	0x28e
	.uleb128 0xe
	.4byte	.LASF73
	.byte	0x1
	.byte	0x20
	.4byte	0xbd
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x31b
	.uleb128 0xf
	.string	"mtu"
	.byte	0x1
	.byte	0x20
	.4byte	0xa7
	.4byte	.LLST0
	.uleb128 0x10
	.string	"msg"
	.byte	0x1
	.byte	0x22
	.4byte	0x1cb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x10
	.string	"arg"
	.byte	0x1
	.byte	0x23
	.4byte	0x2a2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x11
	.4byte	.LVL1
	.4byte	0x34b
	.uleb128 0x12
	.4byte	.LVL2
	.4byte	0x356
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	.LASF65
	.byte	0x5
	.2byte	0x2cc
	.4byte	0x32e
	.byte	0x6
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.uleb128 0x15
	.4byte	0xf9
	.uleb128 0x14
	.4byte	.LASF66
	.byte	0x5
	.2byte	0x2cd
	.4byte	0x346
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	0xf9
	.uleb128 0x16
	.4byte	.LASF67
	.4byte	.LASF67
	.byte	0x6
	.byte	0x27
	.uleb128 0x16
	.4byte	.LASF68
	.4byte	.LASF68
	.byte	0x8
	.byte	0x4c
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
	.uleb128 0x8
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
	.uleb128 0xe
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
	.uleb128 0x7
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL3
	.4byte	.LFE26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF66:
	.string	"bd_addr_null"
.LASF28:
	.string	"BT_STATUS_DONE"
.LASF63:
	.string	"set_mtu_arg"
.LASF34:
	.string	"BT_STATUS_AUTH_REJECTED"
.LASF36:
	.string	"BT_STATUS_PENDING"
.LASF61:
	.string	"BTC_GATT_ACT_SET_LOCAL_MTU"
.LASF4:
	.string	"short int"
.LASF30:
	.string	"BT_STATUS_PARM_INVALID"
.LASF11:
	.string	"sizetype"
.LASF40:
	.string	"BT_STATUS_MEMORY_FULL"
.LASF29:
	.string	"BT_STATUS_UNSUPPORTED"
.LASF6:
	.string	"__uint16_t"
.LASF55:
	.string	"BTC_PID_GAP_BT"
.LASF38:
	.string	"BT_STATUS_PARAM_OUT_OF_RANGE"
.LASF27:
	.string	"BT_STATUS_BUSY"
.LASF14:
	.string	"uint8_t"
.LASF42:
	.string	"BTC_SIG_API_CALL"
.LASF58:
	.string	"BTC_PID_AVRC"
.LASF51:
	.string	"BTC_PID_SPPLIKE"
.LASF20:
	.string	"ESP_BLUEDROID_STATUS_ENABLED"
.LASF56:
	.string	"BTC_PID_PRF_QUE"
.LASF31:
	.string	"BT_STATUS_UNHANDLED"
.LASF26:
	.string	"BT_STATUS_NOMEM"
.LASF33:
	.string	"BT_STATUS_RMT_DEV_DOWN"
.LASF46:
	.string	"BTC_PID_DEV"
.LASF8:
	.string	"long long int"
.LASF9:
	.string	"long long unsigned int"
.LASF10:
	.string	"long int"
.LASF22:
	.string	"UINT8"
.LASF5:
	.string	"__uint8_t"
.LASF32:
	.string	"BT_STATUS_AUTH_FAILURE"
.LASF37:
	.string	"BT_STATUS_UNACCEPT_CONN_INTERVAL"
.LASF25:
	.string	"BT_STATUS_NOT_READY"
.LASF47:
	.string	"BTC_PID_GATTS"
.LASF3:
	.string	"unsigned char"
.LASF71:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\bt"
.LASF45:
	.string	"BTC_PID_MAIN_INIT"
.LASF68:
	.string	"btc_transfer_context"
.LASF59:
	.string	"BTC_PID_SPP"
.LASF52:
	.string	"BTC_PID_BLUFI"
.LASF2:
	.string	"signed char"
.LASF64:
	.string	"btc_ble_gatt_com_args_t"
.LASF67:
	.string	"esp_bluedroid_get_status"
.LASF0:
	.string	"unsigned int"
.LASF15:
	.string	"uint16_t"
.LASF18:
	.string	"ESP_BLUEDROID_STATUS_UNINITIALIZED"
.LASF44:
	.string	"BTC_SIG_NUM"
.LASF1:
	.string	"short unsigned int"
.LASF43:
	.string	"BTC_SIG_API_CB"
.LASF13:
	.string	"char"
.LASF16:
	.string	"int32_t"
.LASF19:
	.string	"ESP_BLUEDROID_STATUS_INITIALIZED"
.LASF21:
	.string	"_Bool"
.LASF54:
	.string	"BTC_PID_ALARM"
.LASF50:
	.string	"BTC_PID_BLE_HID"
.LASF57:
	.string	"BTC_PID_A2DP"
.LASF12:
	.string	"long unsigned int"
.LASF73:
	.string	"esp_ble_gatt_set_local_mtu"
.LASF35:
	.string	"BT_STATUS_INVALID_STATIC_RAND_ADDR"
.LASF7:
	.string	"__int32_t"
.LASF72:
	.string	"set_mtu"
.LASF70:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/api/esp_gatt_common_api.c"
.LASF24:
	.string	"BT_STATUS_FAIL"
.LASF23:
	.string	"BT_STATUS_SUCCESS"
.LASF49:
	.string	"BTC_PID_GAP_BLE"
.LASF65:
	.string	"bd_addr_any"
.LASF39:
	.string	"BT_STATUS_TIMEOUT"
.LASF62:
	.string	"btc_msg"
.LASF60:
	.string	"BTC_PID_NUM"
.LASF48:
	.string	"BTC_PID_GATT_COMMON"
.LASF53:
	.string	"BTC_PID_DM_SEC"
.LASF69:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF17:
	.string	"esp_err_t"
.LASF41:
	.string	"btc_msg_t"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
