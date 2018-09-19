	.file	"eap_peap_common.c"
	.text
.Ltext0:
	.section	.text.peap_prfplus,"ax",@progbits
	.align	4
	.global	peap_prfplus
	.type	peap_prfplus, @function
peap_prfplus:
.LFB34:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wpa2/eap_peer/eap_peap_common.c"
	.loc 1 21 0
.LVL0:
	entry	sp, 112
.LCFI0:
	s32i	a7, sp, 68
	s32i	a2, sp, 64
	l32i	a7, sp, 112
.LVL1:
	l32i	a2, sp, 116
.LVL2:
	.loc 1 22 0
	movi.n	a8, 0
	s8i	a8, sp, 0
	.loc 1 25 0
	mov.n	a10, a5
	call8	strlen
.LVL3:
	.loc 1 30 0
	addi.n	a8, sp, 1
	s32i.n	a8, sp, 24
	.loc 1 31 0
	movi.n	a8, 0
	s32i.n	a8, sp, 44
	.loc 1 32 0
	s32i.n	a5, sp, 28
	.loc 1 33 0
	s32i.n	a10, sp, 48
	.loc 1 34 0
	s32i.n	a6, sp, 32
	.loc 1 35 0
	l32i	a5, sp, 68
.LVL4:
	s32i.n	a5, sp, 52
	.loc 1 37 0
	l32i	a5, sp, 64
	bne	a5, a8, .L2
	.loc 1 46 0
	movi.n	a5, 0
	s8i	a5, sp, 21
	.loc 1 47 0
	s8i	a5, sp, 22
	.loc 1 49 0
	s32i.n	sp, sp, 36
	.loc 1 50 0
	movi.n	a5, 1
	s32i.n	a5, sp, 56
	.loc 1 51 0
	addi	a5, sp, 21
	s32i.n	a5, sp, 40
	.loc 1 52 0
	movi.n	a5, 2
	s32i.n	a5, sp, 60
.L4:
	.loc 1 21 0
	movi.n	a5, 0
	j	.L3
.LVL5:
.L2:
	.loc 1 63 0
	s8i	a2, sp, 21
	.loc 1 65 0
	addi	a5, sp, 21
.LVL6:
	s32i.n	a5, sp, 36
	.loc 1 66 0
	movi.n	a5, 1
	s32i.n	a5, sp, 56
	.loc 1 67 0
	s32i.n	sp, sp, 40
	.loc 1 68 0
	s32i.n	a5, sp, 60
	j	.L4
.LVL7:
.L7:
	.loc 1 73 0
	l8ui	a6, sp, 0
	addi.n	a6, a6, 1
	s8i	a6, sp, 0
	.loc 1 74 0
	sub	a6, a2, a5
.LVL8:
	.loc 1 75 0
	addi.n	a15, sp, 1
	addi	a14, sp, 44
	addi	a13, sp, 24
	movi.n	a12, 5
	mov.n	a11, a4
	mov.n	a10, a3
	call8	hmac_sha1_vector
.LVL9:
	bltz	a10, .L8
	.loc 1 77 0
	movi.n	a8, 0x13
	bgeu	a8, a6, .L6
	.loc 1 78 0
	movi.n	a6, 0x14
.LVL10:
	mov.n	a12, a6
	addi.n	a11, sp, 1
	add.n	a10, a7, a5
	call8	memcpy
.LVL11:
	.loc 1 79 0
	add.n	a5, a5, a6
.LVL12:
	.loc 1 84 0
	s32i.n	a6, sp, 44
	j	.L3
.LVL13:
.L6:
	.loc 1 81 0
	mov.n	a12, a6
	addi.n	a11, sp, 1
	add.n	a10, a7, a5
	call8	memcpy
.LVL14:
	.loc 1 87 0
	movi.n	a2, 0
	.loc 1 82 0
	retw.n
.LVL15:
.L3:
	.loc 1 72 0
	bltu	a5, a2, .L7
	.loc 1 87 0
	movi.n	a2, 0
	retw.n
.LVL16:
.L8:
	.loc 1 76 0
	movi.n	a2, -1
	.loc 1 88 0
	retw.n
.LFE34:
	.size	peap_prfplus, .-peap_prfplus
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
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI0-.LFB34
	.byte	0xe
	.uleb128 0x70
	.align	4
.LEFDE0:
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 3 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/string.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/crypto/sha1.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wpa/common.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x2b6
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF28
	.byte	0xc
	.4byte	.LASF29
	.4byte	.LASF30
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF7
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
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x3
	.byte	0xd8
	.4byte	0x53
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x4
	.byte	0x15
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.uleb128 0x5
	.byte	0x4
	.4byte	0xa0
	.uleb128 0x6
	.4byte	0x93
	.uleb128 0x7
	.string	"u8"
	.byte	0x7
	.byte	0x1c
	.4byte	0x73
	.uleb128 0x5
	.byte	0x4
	.4byte	0xa5
	.uleb128 0x8
	.4byte	.LASF31
	.byte	0x1
	.byte	0x12
	.4byte	0x4c
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x244
	.uleb128 0x9
	.4byte	.LASF14
	.byte	0x1
	.byte	0x12
	.4byte	0x4c
	.4byte	.LLST0
	.uleb128 0xa
	.string	"key"
	.byte	0x1
	.byte	0x12
	.4byte	0x244
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xb
	.4byte	.LASF15
	.byte	0x1
	.byte	0x12
	.4byte	0x68
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.4byte	.LASF16
	.byte	0x1
	.byte	0x13
	.4byte	0x9a
	.4byte	.LLST1
	.uleb128 0x9
	.4byte	.LASF17
	.byte	0x1
	.byte	0x13
	.4byte	0x244
	.4byte	.LLST2
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x1
	.byte	0x13
	.4byte	0x68
	.4byte	.LLST3
	.uleb128 0xa
	.string	"buf"
	.byte	0x1
	.byte	0x14
	.4byte	0xaf
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xb
	.4byte	.LASF19
	.byte	0x1
	.byte	0x14
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0xc
	.4byte	.LASF20
	.byte	0x1
	.byte	0x16
	.4byte	0x37
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0xd
	.string	"pos"
	.byte	0x1
	.byte	0x17
	.4byte	0x68
	.uleb128 0x1
	.byte	0x55
	.uleb128 0xe
	.4byte	.LASF21
	.byte	0x1
	.byte	0x17
	.4byte	0x68
	.4byte	.LLST4
	.uleb128 0xc
	.4byte	.LASF22
	.byte	0x1
	.byte	0x18
	.4byte	0x24f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -111
	.uleb128 0xe
	.4byte	.LASF23
	.byte	0x1
	.byte	0x19
	.4byte	0x68
	.4byte	.LLST5
	.uleb128 0xc
	.4byte	.LASF24
	.byte	0x1
	.byte	0x1a
	.4byte	0x25f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -91
	.uleb128 0xc
	.4byte	.LASF25
	.byte	0x1
	.byte	0x1b
	.4byte	0x26f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0xd
	.string	"len"
	.byte	0x1
	.byte	0x1c
	.4byte	0x28a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0xf
	.4byte	.LVL3
	.4byte	0x29a
	.4byte	0x1ca
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.4byte	.LVL9
	.4byte	0x2a5
	.4byte	0x1fe
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x35
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -111
	.byte	0
	.uleb128 0xf
	.4byte	.LVL11
	.4byte	0x2b0
	.4byte	0x223
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x6
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -111
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x11
	.4byte	.LVL14
	.4byte	0x2b0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x77
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -111
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x24a
	.uleb128 0x6
	.4byte	0xa5
	.uleb128 0x12
	.4byte	0xa5
	.4byte	0x25f
	.uleb128 0x13
	.4byte	0x85
	.byte	0x13
	.byte	0
	.uleb128 0x12
	.4byte	0xa5
	.4byte	0x26f
	.uleb128 0x13
	.4byte	0x85
	.byte	0x1
	.byte	0
	.uleb128 0x12
	.4byte	0x27f
	.4byte	0x27f
	.uleb128 0x13
	.4byte	0x85
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x285
	.uleb128 0x6
	.4byte	0x37
	.uleb128 0x12
	.4byte	0x68
	.4byte	0x29a
	.uleb128 0x13
	.4byte	0x85
	.byte	0x4
	.byte	0
	.uleb128 0x14
	.4byte	.LASF26
	.4byte	.LASF26
	.byte	0x5
	.byte	0x21
	.uleb128 0x14
	.4byte	.LASF27
	.4byte	.LASF27
	.byte	0x6
	.byte	0x14
	.uleb128 0x15
	.4byte	.LASF32
	.4byte	.LASF32
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
	.uleb128 0x16
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
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
	.uleb128 0x15
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL2
	.4byte	.LVL5
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL6
	.4byte	.LFE34
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL4
	.4byte	.LVL7
	.2byte	0x3
	.byte	0x91
	.sleb128 -84
	.4byte	.LVL7
	.4byte	.LFE34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL7
	.4byte	.LFE34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL1
	.4byte	.LFE34
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL8
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL10
	.4byte	.LVL12
	.2byte	0x7
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0x75
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x9
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0x75
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x14
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL16
	.4byte	.LFE34
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL3
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5a
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
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF7:
	.string	"__uint8_t"
.LASF24:
	.string	"extra"
.LASF3:
	.string	"short unsigned int"
.LASF28:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF26:
	.string	"strlen"
.LASF20:
	.string	"counter"
.LASF31:
	.string	"peap_prfplus"
.LASF12:
	.string	"long unsigned int"
.LASF25:
	.string	"addr"
.LASF8:
	.string	"size_t"
.LASF19:
	.string	"buf_len"
.LASF1:
	.string	"unsigned char"
.LASF27:
	.string	"hmac_sha1_vector"
.LASF14:
	.string	"version"
.LASF4:
	.string	"unsigned int"
.LASF6:
	.string	"long long unsigned int"
.LASF9:
	.string	"uint8_t"
.LASF22:
	.string	"hash"
.LASF11:
	.string	"sizetype"
.LASF5:
	.string	"long long int"
.LASF29:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wpa2/eap_peer/eap_peap_common.c"
.LASF32:
	.string	"memcpy"
.LASF2:
	.string	"short int"
.LASF18:
	.string	"seed_len"
.LASF21:
	.string	"plen"
.LASF17:
	.string	"seed"
.LASF15:
	.string	"key_len"
.LASF10:
	.string	"long int"
.LASF13:
	.string	"char"
.LASF30:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\wpa_supplicant"
.LASF0:
	.string	"signed char"
.LASF23:
	.string	"label_len"
.LASF16:
	.string	"label"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
