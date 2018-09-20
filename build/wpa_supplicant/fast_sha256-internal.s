	.file	"fast_sha256-internal.c"
	.text
.Ltext0:
	.section	.text.fast_sha256_vector,"ax",@progbits
	.align	4
	.global	fast_sha256_vector
	.type	fast_sha256_vector, @function
fast_sha256_vector:
.LFB1:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/fast_crypto/fast_sha256-internal.c"
	.loc 1 30 0
.LVL0:
	entry	sp, 144
.LCFI0:
.LVL1:
	.loc 1 34 0
	mov.n	a10, sp
	call8	mbedtls_sha256_init
.LVL2:
	.loc 1 36 0
	movi.n	a11, 0
	mov.n	a10, sp
	call8	mbedtls_sha256_starts_ret
.LVL3:
	bnez.n	a10, .L5
	movi.n	a6, 0
	j	.L3
.LVL4:
.L4:
.LBB2:
	.loc 1 42 0
	slli	a8, a6, 2
	add.n	a9, a3, a8
	add.n	a8, a4, a8
	l32i.n	a12, a8, 0
	l32i.n	a11, a9, 0
	mov.n	a10, sp
	call8	mbedtls_sha256_update_ret
.LVL5:
	bnez.n	a10, .L6
	.loc 1 41 0 discriminator 2
	addi.n	a6, a6, 1
.LVL6:
.L3:
	.loc 1 41 0 is_stmt 0 discriminator 1
	bltu	a6, a2, .L4
.LBE2:
	.loc 1 48 0 is_stmt 1
	mov.n	a11, a5
	mov.n	a10, sp
	call8	mbedtls_sha256_finish_ret
.LVL7:
	bnez.n	a10, .L7
	.loc 1 31 0
	movi.n	a2, 0
.LVL8:
	j	.L2
.LVL9:
.L5:
	.loc 1 37 0
	movi.n	a2, -1
.LVL10:
	j	.L2
.LVL11:
.L6:
.LBB3:
	.loc 1 43 0
	movi.n	a2, -1
.LVL12:
	j	.L2
.LVL13:
.L7:
.LBE3:
	.loc 1 49 0
	movi.n	a2, -1
.LVL14:
.L2:
	.loc 1 54 0
	mov.n	a10, sp
	call8	mbedtls_sha256_free
.LVL15:
	.loc 1 57 0
	retw.n
.LFE1:
	.size	fast_sha256_vector, .-fast_sha256_vector
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
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x4
	.4byte	.LCFI0-.LFB1
	.byte	0xe
	.uleb128 0x90
	.align	4
.LEFDE0:
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 4 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/sha256.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x278
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF29
	.byte	0xc
	.4byte	.LASF30
	.4byte	.LASF31
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF4
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
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x1a
	.4byte	0x5e
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
	.byte	0x2d
	.4byte	0x53
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x4
	.byte	0xd8
	.4byte	0x5e
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0x5
	.byte	0x6c
	.byte	0x5
	.byte	0x38
	.4byte	0xe9
	.uleb128 0x6
	.4byte	.LASF16
	.byte	0x5
	.byte	0x3a
	.4byte	0xe9
	.byte	0
	.uleb128 0x6
	.4byte	.LASF17
	.byte	0x5
	.byte	0x3b
	.4byte	0xf9
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF18
	.byte	0x5
	.byte	0x3c
	.4byte	0x109
	.byte	0x28
	.uleb128 0x6
	.4byte	.LASF19
	.byte	0x5
	.byte	0x3d
	.4byte	0x4c
	.byte	0x68
	.byte	0
	.uleb128 0x7
	.4byte	0x7e
	.4byte	0xf9
	.uleb128 0x8
	.4byte	0x9b
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.4byte	0x7e
	.4byte	0x109
	.uleb128 0x8
	.4byte	0x9b
	.byte	0x7
	.byte	0
	.uleb128 0x7
	.4byte	0x37
	.4byte	0x119
	.uleb128 0x8
	.4byte	0x9b
	.byte	0x3f
	.byte	0
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x5
	.byte	0x40
	.4byte	0xb0
	.uleb128 0x9
	.4byte	.LASF32
	.byte	0x1
	.byte	0x1c
	.4byte	0x4c
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x222
	.uleb128 0xa
	.4byte	.LASF21
	.byte	0x1
	.byte	0x1c
	.4byte	0x89
	.4byte	.LLST0
	.uleb128 0xb
	.4byte	.LASF22
	.byte	0x1
	.byte	0x1c
	.4byte	0x222
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xc
	.string	"len"
	.byte	0x1
	.byte	0x1c
	.4byte	0x233
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xc
	.string	"mac"
	.byte	0x1
	.byte	0x1d
	.4byte	0x23e
	.uleb128 0x1
	.byte	0x55
	.uleb128 0xd
	.string	"ret"
	.byte	0x1
	.byte	0x1f
	.4byte	0x4c
	.4byte	.LLST1
	.uleb128 0xe
	.string	"ctx"
	.byte	0x1
	.byte	0x20
	.4byte	0x119
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0xf
	.string	"out"
	.byte	0x1
	.byte	0x35
	.4byte	.L2
	.uleb128 0x10
	.4byte	.Ldebug_ranges0+0
	.4byte	0x1c6
	.uleb128 0x11
	.4byte	.LASF23
	.byte	0x1
	.byte	0x29
	.4byte	0x89
	.4byte	.LLST2
	.uleb128 0x12
	.4byte	.LVL5
	.4byte	0x244
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	.LVL2
	.4byte	0x24f
	.4byte	0x1db
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.byte	0
	.uleb128 0x14
	.4byte	.LVL3
	.4byte	0x25a
	.4byte	0x1f5
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x14
	.4byte	.LVL7
	.4byte	0x265
	.4byte	0x210
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.4byte	.LVL15
	.4byte	0x270
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.byte	0
	.byte	0
	.uleb128 0x15
	.byte	0x4
	.4byte	0x228
	.uleb128 0x15
	.byte	0x4
	.4byte	0x22e
	.uleb128 0x16
	.4byte	0x73
	.uleb128 0x15
	.byte	0x4
	.4byte	0x239
	.uleb128 0x16
	.4byte	0x89
	.uleb128 0x15
	.byte	0x4
	.4byte	0x73
	.uleb128 0x17
	.4byte	.LASF24
	.4byte	.LASF24
	.byte	0x5
	.byte	0x73
	.uleb128 0x17
	.4byte	.LASF25
	.4byte	.LASF25
	.byte	0x5
	.byte	0x4b
	.uleb128 0x17
	.4byte	.LASF26
	.4byte	.LASF26
	.byte	0x5
	.byte	0x67
	.uleb128 0x17
	.4byte	.LASF27
	.4byte	.LASF27
	.byte	0x5
	.byte	0x80
	.uleb128 0x17
	.4byte	.LASF28
	.4byte	.LASF28
	.byte	0x5
	.byte	0x52
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
	.uleb128 0x6
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
	.uleb128 0xa
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x15
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL14
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL14
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL4
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL11
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x56
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
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB2
	.4byte	.LBE2
	.4byte	.LBB3
	.4byte	.LBE3
	.4byte	0
	.4byte	0
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF4:
	.string	"__uint8_t"
.LASF19:
	.string	"is224"
.LASF17:
	.string	"state"
.LASF3:
	.string	"short unsigned int"
.LASF29:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF25:
	.string	"mbedtls_sha256_init"
.LASF1:
	.string	"unsigned char"
.LASF14:
	.string	"long unsigned int"
.LASF22:
	.string	"addr"
.LASF11:
	.string	"size_t"
.LASF10:
	.string	"uint32_t"
.LASF32:
	.string	"fast_sha256_vector"
.LASF26:
	.string	"mbedtls_sha256_starts_ret"
.LASF5:
	.string	"__uint32_t"
.LASF6:
	.string	"unsigned int"
.LASF30:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/fast_crypto/fast_sha256-internal.c"
.LASF8:
	.string	"long long unsigned int"
.LASF9:
	.string	"uint8_t"
.LASF21:
	.string	"num_elem"
.LASF13:
	.string	"sizetype"
.LASF7:
	.string	"long long int"
.LASF15:
	.string	"char"
.LASF27:
	.string	"mbedtls_sha256_finish_ret"
.LASF28:
	.string	"mbedtls_sha256_free"
.LASF20:
	.string	"mbedtls_sha256_context"
.LASF2:
	.string	"short int"
.LASF18:
	.string	"buffer"
.LASF23:
	.string	"index"
.LASF16:
	.string	"total"
.LASF12:
	.string	"long int"
.LASF31:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\wpa_supplicant"
.LASF0:
	.string	"signed char"
.LASF24:
	.string	"mbedtls_sha256_update_ret"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
