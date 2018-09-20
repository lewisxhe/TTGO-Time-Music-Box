	.file	"fast_aes-wrap.c"
	.text
.Ltext0:
	.section	.text.fast_aes_wrap,"ax",@progbits
	.align	4
	.global	fast_aes_wrap
	.type	fast_aes_wrap, @function
fast_aes_wrap:
.LFB1:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/fast_crypto/fast_aes-wrap.c"
	.loc 1 32 0
.LVL0:
	entry	sp, 112
.LCFI0:
.LVL1:
	.loc 1 39 0
	addi.n	a6, a5, 8
	s32i	a6, sp, 68
.LVL2:
	.loc 1 42 0
	movi.n	a12, 8
	movi	a11, 0xa6
	mov.n	a10, a5
	call8	memset
.LVL3:
	.loc 1 43 0
	slli	a12, a3, 3
	mov.n	a11, a4
	l32i	a10, sp, 68
	call8	memcpy
.LVL4:
	.loc 1 45 0
	addi	a10, sp, 16
	call8	esp_aes_init
.LVL5:
	.loc 1 46 0
	movi	a12, 0x80
	mov.n	a11, a2
	addi	a10, sp, 16
	call8	esp_aes_setkey
.LVL6:
	mov.n	a2, a10
.LVL7:
	.loc 1 47 0
	bgez	a10, .L7
	.loc 1 48 0
	addi	a10, sp, 16
	call8	esp_aes_free
.LVL8:
	.loc 1 49 0
	retw.n
.LVL9:
.L5:
	.loc 1 62 0
	movi.n	a2, 8
.LVL10:
	mov.n	a12, a2
	mov.n	a11, a5
	mov.n	a10, sp
	call8	memcpy
.LVL11:
	.loc 1 63 0
	mov.n	a12, a2
	mov.n	a11, a6
	add.n	a10, sp, a2
	call8	memcpy
.LVL12:
	.loc 1 64 0
	mov.n	a12, sp
	mov.n	a11, sp
	addi	a10, sp, 16
	call8	esp_internal_aes_encrypt
.LVL13:
	mov.n	a2, a10
.LVL14:
	.loc 1 65 0
	bnez.n	a10, .L4
	.loc 1 68 0 discriminator 2
	movi.n	a7, 8
	mov.n	a12, a7
	mov.n	a11, sp
	mov.n	a10, a5
	call8	memcpy
.LVL15:
	.loc 1 69 0 discriminator 2
	l32i	a9, sp, 64
	mul16u	a8, a3, a9
	add.n	a9, a8, a4
	l8ui	a8, a5, 7
	xor	a8, a9, a8
	s8i	a8, a5, 7
	.loc 1 70 0 discriminator 2
	mov.n	a12, a7
	add.n	a11, sp, a7
	mov.n	a10, a6
	call8	memcpy
.LVL16:
	.loc 1 71 0 discriminator 2
	add.n	a6, a6, a7
.LVL17:
	.loc 1 61 0 discriminator 2
	addi.n	a4, a4, 1
.LVL18:
	j	.L6
.LVL19:
.L8:
	l32i	a6, sp, 68
	movi.n	a4, 1
.LVL20:
.L6:
	.loc 1 61 0 is_stmt 0 discriminator 1
	bge	a3, a4, .L5
.L4:
	.loc 1 59 0 is_stmt 1 discriminator 2
	l32i	a4, sp, 64
.LVL21:
	addi.n	a4, a4, 1
	s32i	a4, sp, 64
.LVL22:
	j	.L2
.LVL23:
.L7:
	movi.n	a6, 0
.LVL24:
	s32i	a6, sp, 64
.LVL25:
.L2:
	.loc 1 59 0 is_stmt 0 discriminator 1
	l32i	a4, sp, 64
	blti	a4, 6, .L8
	.loc 1 74 0 is_stmt 1
	addi	a10, sp, 16
	call8	esp_aes_free
.LVL26:
	.loc 1 83 0
	retw.n
.LFE1:
	.size	fast_aes_wrap, .-fast_aes_wrap
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
	.uleb128 0x70
	.align	4
.LEFDE0:
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/hwcrypto/aes.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/port/include/aes_alt.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/string.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/aes.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x347
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF25
	.byte	0xc
	.4byte	.LASF26
	.4byte	.LASF27
	.4byte	.Ldebug_ranges0+0
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
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x19
	.4byte	0x57
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
	.byte	0x2c
	.4byte	0x4c
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.uleb128 0x5
	.byte	0x21
	.byte	0x4
	.byte	0x31
	.4byte	0xc6
	.uleb128 0x6
	.4byte	.LASF15
	.byte	0x4
	.byte	0x32
	.4byte	0x73
	.byte	0
	.uleb128 0x7
	.string	"key"
	.byte	0x4
	.byte	0x33
	.4byte	0xc6
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.4byte	0x73
	.4byte	0xd6
	.uleb128 0x9
	.4byte	0x90
	.byte	0x1f
	.byte	0
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x4
	.byte	0x34
	.4byte	0xa5
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x5
	.byte	0x21
	.4byte	0xd6
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0x1
	.byte	0x1f
	.4byte	0x57
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2e8
	.uleb128 0xb
	.string	"kek"
	.byte	0x1
	.byte	0x1f
	.4byte	0x2e8
	.4byte	.LLST0
	.uleb128 0xc
	.string	"n"
	.byte	0x1
	.byte	0x1f
	.4byte	0x57
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xd
	.4byte	.LASF18
	.byte	0x1
	.byte	0x1f
	.4byte	0x2e8
	.4byte	.LLST1
	.uleb128 0xe
	.4byte	.LASF19
	.byte	0x1
	.byte	0x1f
	.4byte	0x2f3
	.uleb128 0x1
	.byte	0x55
	.uleb128 0xf
	.string	"a"
	.byte	0x1
	.byte	0x21
	.4byte	0x2f3
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x10
	.string	"r"
	.byte	0x1
	.byte	0x21
	.4byte	0x2f3
	.4byte	.LLST2
	.uleb128 0xf
	.string	"b"
	.byte	0x1
	.byte	0x21
	.4byte	0x2f9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x10
	.string	"i"
	.byte	0x1
	.byte	0x22
	.4byte	0x7e
	.4byte	.LLST3
	.uleb128 0x10
	.string	"j"
	.byte	0x1
	.byte	0x22
	.4byte	0x7e
	.4byte	.LLST4
	.uleb128 0x10
	.string	"ret"
	.byte	0x1
	.byte	0x23
	.4byte	0x7e
	.4byte	.LLST5
	.uleb128 0xf
	.string	"ctx"
	.byte	0x1
	.byte	0x24
	.4byte	0xe1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x11
	.4byte	.LVL3
	.4byte	0x309
	.4byte	0x1b7
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xa6
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x11
	.4byte	.LVL4
	.4byte	0x314
	.4byte	0x1da
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x4
	.byte	0x73
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0
	.uleb128 0x11
	.4byte	.LVL5
	.4byte	0x31d
	.4byte	0x1ef
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x11
	.4byte	.LVL6
	.4byte	0x328
	.4byte	0x210
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x80
	.byte	0
	.uleb128 0x11
	.4byte	.LVL8
	.4byte	0x333
	.4byte	0x225
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x11
	.4byte	.LVL11
	.4byte	0x314
	.4byte	0x246
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x11
	.4byte	.LVL12
	.4byte	0x314
	.4byte	0x26c
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x8
	.byte	0x91
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x8
	.byte	0x70
	.byte	0x1c
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x11
	.4byte	.LVL13
	.4byte	0x33e
	.4byte	0x28f
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.uleb128 0x11
	.4byte	.LVL15
	.4byte	0x314
	.4byte	0x2b0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x11
	.4byte	.LVL16
	.4byte	0x314
	.4byte	0x2d6
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x8
	.byte	0x91
	.sleb128 0
	.byte	0x77
	.sleb128 0
	.byte	0x22
	.byte	0x8
	.byte	0x70
	.byte	0x1c
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL26
	.4byte	0x333
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.byte	0
	.uleb128 0x14
	.byte	0x4
	.4byte	0x2ee
	.uleb128 0x15
	.4byte	0x73
	.uleb128 0x14
	.byte	0x4
	.4byte	0x73
	.uleb128 0x8
	.4byte	0x73
	.4byte	0x309
	.uleb128 0x9
	.4byte	0x90
	.byte	0xf
	.byte	0
	.uleb128 0x16
	.4byte	.LASF20
	.4byte	.LASF20
	.byte	0x6
	.byte	0x19
	.uleb128 0x17
	.4byte	.LASF29
	.4byte	.LASF29
	.uleb128 0x16
	.4byte	.LASF21
	.4byte	.LASF21
	.byte	0x7
	.byte	0x7a
	.uleb128 0x16
	.4byte	.LASF22
	.4byte	.LASF22
	.byte	0x7
	.byte	0xb3
	.uleb128 0x16
	.4byte	.LASF23
	.4byte	.LASF23
	.byte	0x7
	.byte	0x81
	.uleb128 0x18
	.4byte	.LASF24
	.4byte	.LASF24
	.byte	0x7
	.2byte	0x22e
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
	.uleb128 0xb
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL7
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL9
	.4byte	.LVL23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL25
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL2
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL20
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL9
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL9
	.4byte	.LVL19
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL20
	.4byte	.LVL22
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL25
	.4byte	.LFE1
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL1
	.4byte	.LVL7
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL14
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x52
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
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF18:
	.string	"plain"
.LASF4:
	.string	"__uint8_t"
.LASF23:
	.string	"esp_aes_free"
.LASF17:
	.string	"mbedtls_aes_context"
.LASF5:
	.string	"__int32_t"
.LASF25:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF26:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/fast_crypto/fast_aes-wrap.c"
.LASF1:
	.string	"unsigned char"
.LASF16:
	.string	"esp_aes_context"
.LASF13:
	.string	"long unsigned int"
.LASF3:
	.string	"short unsigned int"
.LASF20:
	.string	"memset"
.LASF21:
	.string	"esp_aes_init"
.LASF6:
	.string	"unsigned int"
.LASF8:
	.string	"long long unsigned int"
.LASF9:
	.string	"uint8_t"
.LASF10:
	.string	"int32_t"
.LASF12:
	.string	"sizetype"
.LASF7:
	.string	"long long int"
.LASF14:
	.string	"char"
.LASF22:
	.string	"esp_aes_setkey"
.LASF15:
	.string	"key_bytes"
.LASF2:
	.string	"short int"
.LASF19:
	.string	"cipher"
.LASF29:
	.string	"memcpy"
.LASF11:
	.string	"long int"
.LASF27:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\wpa_supplicant"
.LASF0:
	.string	"signed char"
.LASF24:
	.string	"esp_internal_aes_encrypt"
.LASF28:
	.string	"fast_aes_wrap"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
