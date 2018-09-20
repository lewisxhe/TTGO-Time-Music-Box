	.file	"pbkdf2-sha256.c"
	.text
.Ltext0:
	.section	.text.PBKDF2_SHA256,"ax",@progbits
	.literal_position
	.literal .LC1, 4, 0
	.literal .LC2, 32, 0
	.align	4
	.global	PBKDF2_SHA256
	.type	PBKDF2_SHA256, @function
PBKDF2_SHA256:
.LFB12:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_pwhash/scryptsalsa208sha256/pbkdf2-sha256.c"
	.loc 1 47 0
.LVL0:
	entry	sp, 544
.LCFI0:
	s32i	a6, sp, 500
	mov.n	a6, a7
.LVL1:
	.loc 1 62 0
	mov.n	a12, a3
	mov.n	a11, a2
	mov.n	a10, sp
	call8	crypto_auth_hmacsha256_init
.LVL2:
	.loc 1 63 0
	movi.n	a7, 0
	mov.n	a12, a5
	mov.n	a13, a7
	mov.n	a11, a4
	mov.n	a10, sp
	call8	crypto_auth_hmacsha256_update
.LVL3:
	.loc 1 65 0
	j	.L2
.LVL4:
.L10:
	.loc 1 66 0
	addi.n	a7, a7, 1
.LVL5:
.LBB4:
.LBB5:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/private/common.h"
	.loc 2 173 0
	addmi	a4, sp, 0x100
	s8i	a7, a4, 163
.LVL6:
	.loc 2 174 0
	extui	a5, a7, 8, 8
	s8i	a5, a4, 162
.LVL7:
	.loc 2 175 0
	extui	a5, a7, 16, 8
	s8i	a5, a4, 161
.LVL8:
	.loc 2 176 0
	extui	a5, a7, 24, 8
.LVL9:
	s8i	a5, a4, 160
.LBE5:
.LBE4:
	.loc 1 67 0
	movi	a12, 0xd0
	mov.n	a11, sp
	add.n	a10, a12, sp
	call8	memcpy
.LVL10:
	.loc 1 68 0
	l32r	a12, .LC1
	l32r	a13, .LC1+4
	movi	a11, 0x1a0
	add.n	a11, sp, a11
	movi	a10, 0xd0
	add.n	a10, a10, sp
	call8	crypto_auth_hmacsha256_update
.LVL11:
	.loc 1 69 0
	movi	a11, 0x1a4
	add.n	a11, sp, a11
	movi	a10, 0xd0
	add.n	a10, a10, sp
	call8	crypto_auth_hmacsha256_final
.LVL12:
	.loc 1 71 0
	movi.n	a12, 0x20
	movi	a11, 0xa4
	add.n	a11, a4, a11
	movi	a10, 0x1c4
	add.n	a10, sp, a10
	call8	memcpy
.LVL13:
	.loc 1 73 0
	movi.n	a5, 2
.LVL14:
	movi.n	a4, 0
	j	.L3
.LVL15:
.L7:
	.loc 1 74 0
	mov.n	a12, a3
	mov.n	a11, a2
	movi	a10, 0xd0
	add.n	a10, a10, sp
	call8	crypto_auth_hmacsha256_init
.LVL16:
	.loc 1 75 0
	l32r	a12, .LC2
	l32r	a13, .LC2+4
	movi	a11, 0x1a4
	add.n	a11, a11, sp
	movi	a10, 0xd0
	add.n	a10, a10, sp
	call8	crypto_auth_hmacsha256_update
.LVL17:
	.loc 1 76 0
	movi	a11, 0x1a4
	add.n	a11, a11, sp
	movi	a10, 0xd0
	add.n	a10, a10, sp
	call8	crypto_auth_hmacsha256_final
.LVL18:
	.loc 1 78 0
	movi.n	a8, 0
	j	.L4
.LVL19:
.L5:
	.loc 1 79 0 discriminator 3
	addmi	a10, sp, 0x100
	add.n	a9, a10, a8
	l8ui	a11, a9, 164
	movi	a10, 0x1c4
	add.n	a10, a10, sp
	add.n	a9, a10, a8
	l8ui	a10, a9, 0
	xor	a10, a11, a10
	s8i	a10, a9, 0
	.loc 1 78 0 discriminator 3
	addi.n	a8, a8, 1
.LVL20:
.L4:
	.loc 1 78 0 is_stmt 0 discriminator 1
	movi.n	a9, 0x1f
	bge	a9, a8, .L5
	.loc 1 73 0 is_stmt 1 discriminator 2
	addi.n	a9, a5, 1
	movi.n	a8, 1
.LVL21:
	bltu	a9, a5, .L6
	movi.n	a8, 0
.L6:
	add.n	a8, a8, a4
	mov.n	a5, a9
.LVL22:
	mov.n	a4, a8
.LVL23:
.L3:
	.loc 1 73 0 is_stmt 0 discriminator 1
	bltu	a6, a4, .L12
	bne	a4, a6, .L7
	l32i	a8, sp, 500
	bgeu	a8, a5, .L7
.L12:
	.loc 1 84 0 is_stmt 1
	l32i	a4, sp, 548
.LVL24:
	l32i	a5, sp, 496
	sub	a12, a4, a5
.LVL25:
	.loc 1 85 0
	movi.n	a4, 0x20
	bgeu	a4, a12, .L9
	.loc 1 86 0
	mov.n	a12, a4
.LVL26:
.L9:
	.loc 1 88 0 discriminator 2
	movi	a11, 0x1c4
	add.n	a11, sp, a11
	l32i	a4, sp, 544
	l32i	a5, sp, 496
	add.n	a10, a4, a5
	call8	memcpy
.LVL27:
.L2:
	.loc 1 65 0 discriminator 1
	slli	a4, a7, 5
	s32i	a4, sp, 496
	l32i	a5, sp, 548
	bltu	a4, a5, .L10
	.loc 1 90 0
	movi	a11, 0xd0
	mov.n	a10, sp
	call8	sodium_memzero
.LVL28:
	retw.n
.LFE12:
	.size	PBKDF2_SHA256, .-PBKDF2_SHA256
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
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI0-.LFB12
	.byte	0xe
	.uleb128 0x220
	.align	4
.LEFDE0:
	.text
.Letext0:
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 5 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_hash_sha256.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_auth_hmacsha256.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/utils.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x432
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF37
	.byte	0xc
	.4byte	.LASF38
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x3
	.byte	0x12
	.4byte	0x3a
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF4
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x3
	.byte	0x1a
	.4byte	0x61
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x3
	.byte	0x1e
	.4byte	0x21
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x4
	.byte	0x15
	.4byte	0x2f
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x4
	.byte	0x2d
	.4byte	0x56
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x4
	.byte	0x39
	.4byte	0x6f
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x5
	.byte	0xd8
	.4byte	0x61
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF14
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF16
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF17
	.uleb128 0x5
	.4byte	.LASF20
	.byte	0x68
	.byte	0x6
	.byte	0x18
	.4byte	0xf3
	.uleb128 0x6
	.4byte	.LASF18
	.byte	0x6
	.byte	0x19
	.4byte	0xf3
	.byte	0
	.uleb128 0x6
	.4byte	.LASF19
	.byte	0x6
	.byte	0x1a
	.4byte	0x90
	.byte	0x20
	.uleb128 0x7
	.string	"buf"
	.byte	0x6
	.byte	0x1b
	.4byte	0x103
	.byte	0x28
	.byte	0
	.uleb128 0x8
	.4byte	0x85
	.4byte	0x103
	.uleb128 0x9
	.4byte	0xad
	.byte	0x7
	.byte	0
	.uleb128 0x8
	.4byte	0x7a
	.4byte	0x113
	.uleb128 0x9
	.4byte	0xad
	.byte	0x3f
	.byte	0
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x6
	.byte	0x1c
	.4byte	0xc2
	.uleb128 0x5
	.4byte	.LASF21
	.byte	0xd0
	.byte	0x7
	.byte	0x26
	.4byte	0x143
	.uleb128 0x6
	.4byte	.LASF22
	.byte	0x7
	.byte	0x27
	.4byte	0x113
	.byte	0
	.uleb128 0x6
	.4byte	.LASF23
	.byte	0x7
	.byte	0x28
	.4byte	0x113
	.byte	0x68
	.byte	0
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x7
	.byte	0x29
	.4byte	0x11e
	.uleb128 0xa
	.4byte	.LASF39
	.byte	0x2
	.byte	0xa8
	.byte	0x3
	.4byte	0x16f
	.uleb128 0xb
	.string	"dst"
	.byte	0x2
	.byte	0xa8
	.4byte	0x16f
	.uleb128 0xb
	.string	"w"
	.byte	0x2
	.byte	0xa8
	.4byte	0x85
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x7a
	.uleb128 0xd
	.4byte	.LASF40
	.byte	0x1
	.byte	0x2d
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3d5
	.uleb128 0xe
	.4byte	.LASF24
	.byte	0x1
	.byte	0x2d
	.4byte	0x3d5
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xe
	.4byte	.LASF25
	.byte	0x1
	.byte	0x2d
	.4byte	0x9b
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xf
	.4byte	.LASF26
	.byte	0x1
	.byte	0x2d
	.4byte	0x3d5
	.4byte	.LLST0
	.uleb128 0xf
	.4byte	.LASF27
	.byte	0x1
	.byte	0x2e
	.4byte	0x9b
	.4byte	.LLST1
	.uleb128 0x10
	.string	"c"
	.byte	0x1
	.byte	0x2e
	.4byte	0x90
	.4byte	.LLST2
	.uleb128 0x11
	.string	"buf"
	.byte	0x1
	.byte	0x2e
	.4byte	0x16f
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xe
	.4byte	.LASF28
	.byte	0x1
	.byte	0x2e
	.4byte	0x9b
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x12
	.4byte	.LASF29
	.byte	0x1
	.byte	0x30
	.4byte	0x143
	.uleb128 0x3
	.byte	0x91
	.sleb128 -544
	.uleb128 0x12
	.4byte	.LASF30
	.byte	0x1
	.byte	0x30
	.4byte	0x143
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x13
	.string	"i"
	.byte	0x1
	.byte	0x31
	.4byte	0x9b
	.4byte	.LLST3
	.uleb128 0x12
	.4byte	.LASF31
	.byte	0x1
	.byte	0x32
	.4byte	0x3e0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x14
	.string	"U"
	.byte	0x1
	.byte	0x33
	.4byte	0x3f0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x14
	.string	"T"
	.byte	0x1
	.byte	0x34
	.4byte	0x3f0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x13
	.string	"j"
	.byte	0x1
	.byte	0x35
	.4byte	0x90
	.4byte	.LLST4
	.uleb128 0x13
	.string	"k"
	.byte	0x1
	.byte	0x36
	.4byte	0x4f
	.4byte	.LLST5
	.uleb128 0x15
	.4byte	.LASF32
	.byte	0x1
	.byte	0x37
	.4byte	0x9b
	.4byte	.LLST6
	.uleb128 0x16
	.4byte	0x14e
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.byte	0x1
	.byte	0x42
	.4byte	0x28e
	.uleb128 0x17
	.4byte	0x165
	.4byte	.LLST7
	.uleb128 0x17
	.4byte	0x15a
	.4byte	.LLST8
	.byte	0
	.uleb128 0x18
	.4byte	.LVL2
	.4byte	0x400
	.4byte	0x2af
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -544
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL3
	.4byte	0x40b
	.4byte	0x2ca
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -544
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL10
	.4byte	0x416
	.4byte	0x2ec
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -544
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0xd0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL11
	.4byte	0x40b
	.4byte	0x308
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.byte	0
	.uleb128 0x18
	.4byte	.LVL12
	.4byte	0x41f
	.4byte	0x324
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.byte	0
	.uleb128 0x18
	.4byte	.LVL13
	.4byte	0x416
	.4byte	0x346
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x74
	.sleb128 164
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x18
	.4byte	.LVL16
	.4byte	0x400
	.4byte	0x367
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL17
	.4byte	0x40b
	.4byte	0x383
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.byte	0
	.uleb128 0x18
	.4byte	.LVL18
	.4byte	0x41f
	.4byte	0x39f
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.byte	0
	.uleb128 0x18
	.4byte	.LVL27
	.4byte	0x416
	.4byte	0x3bd
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x74
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL28
	.4byte	0x42a
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -544
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xd0
	.byte	0
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x3db
	.uleb128 0x1b
	.4byte	0x7a
	.uleb128 0x8
	.4byte	0x7a
	.4byte	0x3f0
	.uleb128 0x9
	.4byte	0xad
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.4byte	0x7a
	.4byte	0x400
	.uleb128 0x9
	.4byte	0xad
	.byte	0x1f
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF33
	.4byte	.LASF33
	.byte	0x7
	.byte	0x2f
	.uleb128 0x1c
	.4byte	.LASF34
	.4byte	.LASF34
	.byte	0x7
	.byte	0x34
	.uleb128 0x1d
	.4byte	.LASF41
	.4byte	.LASF41
	.uleb128 0x1c
	.4byte	.LASF35
	.4byte	.LASF35
	.byte	0x7
	.byte	0x39
	.uleb128 0x1c
	.4byte	.LASF36
	.4byte	.LASF36
	.byte	0x8
	.byte	0x16
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
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0xb
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
	.uleb128 0x11
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x1d
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
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL4
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL4
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL1
	.4byte	.LFE12
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x6
	.uleb128 0x21
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL5
	.4byte	.LVL27
	.2byte	0x3
	.byte	0x77
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL13
	.4byte	.LVL15
	.2byte	0xa
	.byte	0x9e
	.uleb128 0x8
	.8byte	0x2
	.4byte	.LVL15
	.4byte	.LVL22
	.2byte	0x6
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x6
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL25
	.4byte	.LVL27-1
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x5
	.byte	0x77
	.sleb128 0
	.byte	0x38
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x5
	.byte	0x77
	.sleb128 0
	.byte	0x40
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x5
	.byte	0x77
	.sleb128 0
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL14
	.4byte	.LVL27
	.2byte	0x5
	.byte	0x77
	.sleb128 0
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL5
	.4byte	.LVL27
	.2byte	0x4
	.byte	0x91
	.sleb128 -128
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
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF8:
	.string	"long long int"
.LASF5:
	.string	"__uint8_t"
.LASF13:
	.string	"size_t"
.LASF32:
	.string	"clen"
.LASF18:
	.string	"state"
.LASF20:
	.string	"crypto_hash_sha256_state"
.LASF19:
	.string	"count"
.LASF39:
	.string	"store32_be"
.LASF25:
	.string	"passwdlen"
.LASF34:
	.string	"crypto_auth_hmacsha256_update"
.LASF12:
	.string	"uint64_t"
.LASF22:
	.string	"ictx"
.LASF24:
	.string	"passwd"
.LASF29:
	.string	"PShctx"
.LASF26:
	.string	"salt"
.LASF21:
	.string	"crypto_auth_hmacsha256_state"
.LASF35:
	.string	"crypto_auth_hmacsha256_final"
.LASF2:
	.string	"unsigned char"
.LASF30:
	.string	"hctx"
.LASF16:
	.string	"long unsigned int"
.LASF4:
	.string	"short unsigned int"
.LASF27:
	.string	"saltlen"
.LASF6:
	.string	"__uint32_t"
.LASF28:
	.string	"dkLen"
.LASF40:
	.string	"PBKDF2_SHA256"
.LASF23:
	.string	"octx"
.LASF7:
	.string	"unsigned int"
.LASF0:
	.string	"long long unsigned int"
.LASF10:
	.string	"uint8_t"
.LASF33:
	.string	"crypto_auth_hmacsha256_init"
.LASF15:
	.string	"sizetype"
.LASF31:
	.string	"ivec"
.LASF37:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF41:
	.string	"memcpy"
.LASF3:
	.string	"short int"
.LASF9:
	.string	"__uint64_t"
.LASF38:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_pwhash/scryptsalsa208sha256/pbkdf2-sha256.c"
.LASF11:
	.string	"uint32_t"
.LASF14:
	.string	"long int"
.LASF17:
	.string	"char"
.LASF1:
	.string	"signed char"
.LASF36:
	.string	"sodium_memzero"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
