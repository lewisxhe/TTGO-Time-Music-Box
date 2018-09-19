	.file	"interop.c"
	.text
.Ltext0:
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC0:
	.string	"INTEROP_DISABLE_LE_SECURE_CONNECTIONS"
	.align	4
.LC2:
	.string	"INTEROP_AUTO_RETRY_PAIRING"
	.align	4
.LC4:
	.string	"UNKNOWN"
	.section	.text.interop_feature_string,"ax",@progbits
	.literal_position
	.literal .LC1, .LC0
	.literal .LC3, .LC2
	.literal .LC5, .LC4
	.align	4
	.type	interop_feature_string, @function
interop_feature_string:
.LFB11:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/device/interop.c"
	.loc 1 31 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 32 0
	beqz.n	a2, .L3
	beqi	a2, 1, .L5
	j	.L6
.L3:
	.loc 1 33 0
	l32r	a2, .LC1
.LVL1:
	retw.n
.LVL2:
.L6:
	.loc 1 37 0
	l32r	a2, .LC5
.LVL3:
	retw.n
.LVL4:
.L5:
	.loc 1 34 0
	l32r	a2, .LC3
.LVL5:
	.loc 1 38 0
	retw.n
.LFE11:
	.size	interop_feature_string, .-interop_feature_string
	.section	.rodata.str1.4
	.align	4
.LC6:
	.string	"addr"
	.align	4
.LC9:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/device/interop.c"
	.align	4
.LC12:
	.string	"BT_LOG"
	.align	4
.LC14:
	.string	"\033[0;33mW (%d) %s: %s() Device %s is a match for interop workaround %s\033[0m\n"
	.section	.text.interop_match,"ax",@progbits
	.literal_position
	.literal .LC7, .LC6
	.literal .LC8, __func__$3519
	.literal .LC10, .LC9
	.literal .LC11, interop_database
	.literal .LC13, .LC12
	.literal .LC15, .LC14
	.align	4
	.global	interop_match
	.type	interop_match, @function
interop_match:
.LFB12:
	.loc 1 42 0
.LVL6:
	entry	sp, 80
.LCFI1:
	.loc 1 43 0
	bnez.n	a3, .L12
	.loc 1 43 0 is_stmt 0 discriminator 1
	l32r	a13, .LC7
	l32r	a12, .LC8
	movi.n	a11, 0x2b
	l32r	a10, .LC10
	call8	__assert_func
.LVL7:
.L11:
.LBB2:
	.loc 1 48 0 is_stmt 1
	addx2	a9, a4, a4
	slli	a8, a9, 2
	l32r	a9, .LC11
	add.n	a8, a9, a8
	l32i.n	a8, a8, 8
	bne	a8, a2, .L9
	.loc 1 49 0 discriminator 1
	slli	a8, a4, 1
	add.n	a8, a8, a4
	slli	a11, a8, 2
	add.n	a11, a11, a9
	l8ui	a12, a11, 6
	mov.n	a10, a3
	call8	memcmp
.LVL8:
	.loc 1 48 0 discriminator 1
	bnez.n	a10, .L9
.LBB3:
	.loc 1 50 0
	movi.n	a4, 0
.LVL9:
	s32i.n	a4, sp, 16
	s32i.n	a4, sp, 20
	s32i.n	a4, sp, 24
	s32i.n	a4, sp, 28
	s32i.n	a4, sp, 32
	.loc 1 51 0
	call8	esp_log_timestamp
.LVL10:
	mov.n	a4, a10
	movi.n	a12, 0x14
	addi	a11, sp, 16
	mov.n	a10, a3
	call8	bdaddr_to_string
.LVL11:
	mov.n	a3, a10
.LVL12:
	mov.n	a10, a2
	call8	interop_feature_string
.LVL13:
	l32r	a11, .LC13
	s32i.n	a10, sp, 4
	s32i.n	a3, sp, 0
	l32r	a15, .LC8
	mov.n	a14, a11
	mov.n	a13, a4
	l32r	a12, .LC15
	movi.n	a10, 2
	call8	esp_log_write
.LVL14:
	.loc 1 53 0
	movi.n	a2, 1
.LVL15:
	retw.n
.LVL16:
.L9:
.LBE3:
	.loc 1 47 0 discriminator 2
	addi.n	a4, a4, 1
.LVL17:
	j	.L8
.LVL18:
.L12:
.LBE2:
	movi.n	a4, 0
.L8:
.LVL19:
.LBB4:
	.loc 1 47 0 is_stmt 0 discriminator 1
	movi.n	a8, 9
	bne	a4, a8, .L11
.LBE4:
	.loc 1 57 0 is_stmt 1
	movi.n	a2, 0
.LVL20:
	.loc 1 58 0
	retw.n
.LFE12:
	.size	interop_match, .-interop_match
	.section	.rodata.__func__$3519,"a",@progbits
	.align	4
	.type	__func__$3519, @object
	.size	__func__$3519, 14
__func__$3519:
	.string	"interop_match"
	.section	.rodata.interop_database,"a",@progbits
	.align	4
	.type	interop_database, @object
	.size	interop_database, 108
interop_database:
	.byte	8
	.byte	98
	.byte	102
	.byte	0
	.byte	0
	.byte	0
	.byte	3
	.zero	1
	.word	0
	.byte	56
	.byte	44
	.byte	74
	.byte	-55
	.byte	0
	.byte	0
	.byte	4
	.zero	1
	.word	0
	.byte	56
	.byte	44
	.byte	74
	.byte	-26
	.byte	0
	.byte	0
	.byte	4
	.zero	1
	.word	0
	.byte	84
	.byte	-96
	.byte	80
	.byte	-39
	.byte	0
	.byte	0
	.byte	4
	.zero	1
	.word	0
	.byte	-84
	.byte	-98
	.byte	23
	.byte	0
	.byte	0
	.byte	0
	.byte	3
	.zero	1
	.word	0
	.byte	-16
	.byte	121
	.byte	89
	.byte	0
	.byte	0
	.byte	0
	.byte	3
	.zero	1
	.word	0
	.byte	28
	.byte	-106
	.byte	90
	.byte	0
	.byte	0
	.byte	0
	.byte	3
	.zero	1
	.word	0
	.byte	-128
	.byte	-28
	.byte	-38
	.byte	112
	.byte	0
	.byte	0
	.byte	4
	.zero	1
	.word	0
	.byte	-100
	.byte	-33
	.byte	3
	.byte	0
	.byte	0
	.byte	0
	.byte	3
	.zero	1
	.word	1
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
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x4
	.4byte	.LCFI0-.LFB11
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI1-.LFB12
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE2:
	.text
.Letext0:
	.file 2 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/bt_types.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/common/include/common/bt_defs.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/log/include/esp_log.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/device/include/device/interop.h"
	.file 9 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/device/include/device/interop_database.h"
	.file 10 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/device/include/device/bdaddr.h"
	.file 11 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/string.h"
	.file 12 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/assert.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x3d8
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF41
	.byte	0xc
	.4byte	.LASF42
	.4byte	.LASF43
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x2
	.byte	0xd8
	.4byte	0x37
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x3
	.byte	0x12
	.4byte	0x57
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x5
	.byte	0x4
	.4byte	0x95
	.uleb128 0x6
	.4byte	0x88
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x4
	.byte	0x15
	.4byte	0x4c
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x5
	.byte	0x21
	.4byte	0x9a
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.4byte	.LASF15
	.uleb128 0x7
	.4byte	0xa5
	.4byte	0xc7
	.uleb128 0x8
	.4byte	0x7a
	.byte	0x5
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x37
	.byte	0x7
	.byte	0x1f
	.4byte	0xf8
	.uleb128 0xa
	.4byte	.LASF16
	.byte	0
	.uleb128 0xa
	.4byte	.LASF17
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF18
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF19
	.byte	0x3
	.uleb128 0xa
	.4byte	.LASF20
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF21
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.byte	0x6
	.byte	0x6
	.byte	0x3b
	.4byte	0x10d
	.uleb128 0xc
	.4byte	.LASF26
	.byte	0x6
	.byte	0x3c
	.4byte	0x10d
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0x9a
	.4byte	0x11d
	.uleb128 0x8
	.4byte	0x7a
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x6
	.byte	0x3d
	.4byte	0xf8
	.uleb128 0x9
	.byte	0x4
	.4byte	0x37
	.byte	0x8
	.byte	0x1a
	.4byte	0x141
	.uleb128 0xa
	.4byte	.LASF23
	.byte	0
	.uleb128 0xa
	.4byte	.LASF24
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x8
	.byte	0x25
	.4byte	0x128
	.uleb128 0xb
	.byte	0xc
	.byte	0x9
	.byte	0x18
	.4byte	0x179
	.uleb128 0xc
	.4byte	.LASF27
	.byte	0x9
	.byte	0x19
	.4byte	0x11d
	.byte	0
	.uleb128 0xd
	.string	"len"
	.byte	0x9
	.byte	0x1a
	.4byte	0x9a
	.byte	0x6
	.uleb128 0xc
	.4byte	.LASF28
	.byte	0x9
	.byte	0x1b
	.4byte	0x141
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF29
	.byte	0x9
	.byte	0x1c
	.4byte	0x14c
	.uleb128 0xe
	.4byte	.LASF44
	.byte	0x1
	.byte	0x1e
	.4byte	0x8f
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1ad
	.uleb128 0xf
	.4byte	.LASF28
	.byte	0x1
	.byte	0x1e
	.4byte	0x1ad
	.4byte	.LLST0
	.byte	0
	.uleb128 0x6
	.4byte	0x141
	.uleb128 0x10
	.4byte	.LASF45
	.byte	0x1
	.byte	0x29
	.4byte	0xb0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x319
	.uleb128 0xf
	.4byte	.LASF28
	.byte	0x1
	.byte	0x29
	.4byte	0x1ad
	.4byte	.LLST1
	.uleb128 0xf
	.4byte	.LASF27
	.byte	0x1
	.byte	0x29
	.4byte	0x319
	.4byte	.LLST2
	.uleb128 0x11
	.4byte	.LASF30
	.4byte	0x334
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3519
	.uleb128 0x12
	.4byte	.LASF31
	.byte	0x1
	.byte	0x2d
	.4byte	0x339
	.uleb128 0x13
	.4byte	.Ldebug_ranges0+0
	.4byte	0x2ed
	.uleb128 0x14
	.string	"i"
	.byte	0x1
	.byte	0x2f
	.4byte	0x2c
	.4byte	.LLST3
	.uleb128 0x15
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.4byte	0x2b1
	.uleb128 0x16
	.4byte	.LASF32
	.byte	0x1
	.byte	0x32
	.4byte	0x33e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x17
	.4byte	.LVL10
	.4byte	0x3a4
	.uleb128 0x18
	.4byte	.LVL11
	.4byte	0x3af
	.4byte	0x25c
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x44
	.byte	0
	.uleb128 0x18
	.4byte	.LVL13
	.4byte	0x184
	.4byte	0x270
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL14
	.4byte	0x3ba
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC12
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC12
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3519
	.uleb128 0x19
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL8
	.4byte	0x3c5
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0xf
	.byte	0x74
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.4byte	interop_database
	.byte	0x22
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x14
	.byte	0x74
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.4byte	interop_database+6
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL7
	.4byte	0x3d0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x2b
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3519
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x31f
	.uleb128 0x6
	.4byte	0x11d
	.uleb128 0x7
	.4byte	0x88
	.4byte	0x334
	.uleb128 0x8
	.4byte	0x7a
	.byte	0xd
	.byte	0
	.uleb128 0x6
	.4byte	0x324
	.uleb128 0x6
	.4byte	0x2c
	.uleb128 0x7
	.4byte	0x88
	.4byte	0x34e
	.uleb128 0x8
	.4byte	0x7a
	.byte	0x13
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF33
	.byte	0x5
	.2byte	0x2cc
	.4byte	0x361
	.byte	0x6
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.uleb128 0x6
	.4byte	0xb7
	.uleb128 0x1b
	.4byte	.LASF34
	.byte	0x5
	.2byte	0x2cd
	.4byte	0x379
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	0xb7
	.uleb128 0x7
	.4byte	0x179
	.4byte	0x38e
	.uleb128 0x8
	.4byte	0x7a
	.byte	0x8
	.byte	0
	.uleb128 0x16
	.4byte	.LASF35
	.byte	0x9
	.byte	0x1e
	.4byte	0x39f
	.uleb128 0x5
	.byte	0x3
	.4byte	interop_database
	.uleb128 0x6
	.4byte	0x37e
	.uleb128 0x1c
	.4byte	.LASF36
	.4byte	.LASF36
	.byte	0x7
	.byte	0x57
	.uleb128 0x1c
	.4byte	.LASF37
	.4byte	.LASF37
	.byte	0xa
	.byte	0x32
	.uleb128 0x1c
	.4byte	.LASF38
	.4byte	.LASF38
	.byte	0x7
	.byte	0x6b
	.uleb128 0x1c
	.4byte	.LASF39
	.4byte	.LASF39
	.byte	0xb
	.byte	0x16
	.uleb128 0x1c
	.4byte	.LASF40
	.4byte	.LASF40
	.byte	0xc
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
	.uleb128 0x8
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
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x13
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL5
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL6
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL20
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL6
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL12
	.4byte	.LVL16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL16
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL19
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x54
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
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB2
	.4byte	.LBE2
	.4byte	.LBB4
	.4byte	.LBE4
	.4byte	0
	.4byte	0
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF30:
	.string	"__func__"
.LASF4:
	.string	"__uint8_t"
.LASF3:
	.string	"size_t"
.LASF34:
	.string	"bd_addr_null"
.LASF17:
	.string	"ESP_LOG_ERROR"
.LASF15:
	.string	"_Bool"
.LASF39:
	.string	"memcmp"
.LASF14:
	.string	"UINT8"
.LASF31:
	.string	"db_size"
.LASF1:
	.string	"short unsigned int"
.LASF36:
	.string	"esp_log_timestamp"
.LASF27:
	.string	"addr"
.LASF35:
	.string	"interop_database"
.LASF43:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\bt"
.LASF45:
	.string	"interop_match"
.LASF5:
	.string	"unsigned char"
.LASF26:
	.string	"address"
.LASF11:
	.string	"long unsigned int"
.LASF18:
	.string	"ESP_LOG_WARN"
.LASF29:
	.string	"interop_entry_t"
.LASF25:
	.string	"interop_feature_t"
.LASF6:
	.string	"short int"
.LASF40:
	.string	"__assert_func"
.LASF19:
	.string	"ESP_LOG_INFO"
.LASF0:
	.string	"unsigned int"
.LASF20:
	.string	"ESP_LOG_DEBUG"
.LASF37:
	.string	"bdaddr_to_string"
.LASF8:
	.string	"long long unsigned int"
.LASF13:
	.string	"uint8_t"
.LASF23:
	.string	"INTEROP_DISABLE_LE_SECURE_CONNECTIONS"
.LASF41:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF10:
	.string	"sizetype"
.LASF7:
	.string	"long long int"
.LASF33:
	.string	"bd_addr_any"
.LASF44:
	.string	"interop_feature_string"
.LASF24:
	.string	"INTEROP_AUTO_RETRY_PAIRING"
.LASF16:
	.string	"ESP_LOG_NONE"
.LASF38:
	.string	"esp_log_write"
.LASF9:
	.string	"long int"
.LASF12:
	.string	"char"
.LASF28:
	.string	"feature"
.LASF22:
	.string	"bt_bdaddr_t"
.LASF2:
	.string	"signed char"
.LASF42:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/device/interop.c"
.LASF21:
	.string	"ESP_LOG_VERBOSE"
.LASF32:
	.string	"bdstr"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
