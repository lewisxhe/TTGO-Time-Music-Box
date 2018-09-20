	.file	"sha1-pbkdf2.c"
	.text
.Ltext0:
	.section	.text.pbkdf2_sha1_f,"ax",@progbits
	.align	4
	.type	pbkdf2_sha1_f, @function
pbkdf2_sha1_f:
.LFB1:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/crypto/sha1-pbkdf2.c"
	.loc 1 25 0
.LVL0:
	entry	sp, 112
.LCFI0:
	s32i	a7, sp, 64
	s32i	a4, sp, 68
	mov.n	a4, a6
.LVL1:
	l32i	a6, sp, 64
.LVL2:
	.loc 1 31 0
	mov.n	a10, a2
	call8	strlen
.LVL3:
	mov.n	a7, a10
.LVL4:
	.loc 1 33 0
	s32i.n	a3, sp, 44
	.loc 1 34 0
	l32i	a3, sp, 68
.LVL5:
	s32i.n	a3, sp, 52
	.loc 1 35 0
	addi	a3, sp, 40
	s32i.n	a3, sp, 48
	.loc 1 36 0
	movi.n	a3, 4
	s32i.n	a3, sp, 56
	.loc 1 44 0
	extui	a3, a4, 24, 8
	s8i	a3, sp, 40
	.loc 1 45 0
	extui	a3, a4, 16, 16
	s8i	a3, sp, 41
	.loc 1 46 0
	srli	a3, a4, 8
	s8i	a3, sp, 42
	.loc 1 47 0
	s8i	a4, sp, 43
	.loc 1 48 0
	mov.n	a15, sp
	addi	a14, sp, 52
	addi	a13, sp, 44
.LVL6:
	movi.n	a12, 2
	mov.n	a11, a10
	mov.n	a10, a2
	call8	hmac_sha1_vector
.LVL7:
	mov.n	a3, a10
	bnez.n	a10, .L7
	.loc 1 51 0
	movi.n	a12, 0x14
	mov.n	a11, sp
	l32i	a10, sp, 64
	call8	memcpy
.LVL8:
	.loc 1 53 0
	movi.n	a4, 1
.LVL9:
	j	.L3
.LVL10:
.L6:
	.loc 1 54 0
	addi	a14, sp, 20
	movi.n	a13, 0x14
	mov.n	a12, sp
	mov.n	a11, a7
	mov.n	a10, a2
	call8	hmac_sha1
.LVL11:
	bnez.n	a10, .L8
	.loc 1 57 0
	movi.n	a12, 0x14
	add.n	a11, sp, a12
	mov.n	a10, sp
	call8	memcpy
.LVL12:
	.loc 1 58 0
	movi.n	a8, 0
	j	.L4
.LVL13:
.L5:
	.loc 1 59 0 discriminator 3
	add.n	a10, a6, a8
	addi	a11, sp, 20
	add.n	a9, a11, a8
	l8ui	a11, a9, 0
	l8ui	a9, a10, 0
	xor	a9, a11, a9
	s8i	a9, a10, 0
	.loc 1 58 0 discriminator 3
	addi.n	a8, a8, 1
.LVL14:
.L4:
	.loc 1 58 0 is_stmt 0 discriminator 1
	movi.n	a9, 0x13
	bge	a9, a8, .L5
	.loc 1 53 0 is_stmt 1 discriminator 2
	addi.n	a4, a4, 1
.LVL15:
.L3:
	.loc 1 53 0 is_stmt 0 discriminator 1
	blt	a4, a5, .L6
	j	.L2
.LVL16:
.L7:
	.loc 1 50 0 is_stmt 1
	movi.n	a3, -1
	j	.L2
.LVL17:
.L8:
	.loc 1 56 0
	movi.n	a3, -1
.LVL18:
.L2:
	.loc 1 63 0
	mov.n	a2, a3
.LVL19:
	retw.n
.LFE1:
	.size	pbkdf2_sha1_f, .-pbkdf2_sha1_f
	.section	.text.pbkdf2_sha1,"ax",@progbits
	.align	4
	.global	pbkdf2_sha1
	.type	pbkdf2_sha1, @function
pbkdf2_sha1:
.LFB2:
	.loc 1 83 0
.LVL20:
	entry	sp, 80
.LCFI1:
	s32i.n	a4, sp, 32
	s32i.n	a5, sp, 36
.LVL21:
	.loc 1 84 0
	movi.n	a5, 0
.LVL22:
	.loc 1 89 0
	j	.L10
.LVL23:
.L12:
	.loc 1 90 0
	addi.n	a5, a5, 1
.LVL24:
	.loc 1 91 0
	mov.n	a15, sp
	mov.n	a14, a5
	l32i.n	a13, sp, 36
	l32i.n	a12, sp, 32
	mov.n	a11, a3
	mov.n	a10, a2
	call8	pbkdf2_sha1_f
.LVL25:
	bnez.n	a10, .L13
	.loc 1 94 0
	movi.n	a4, 0x14
	minu	a4, a7, a4
.LVL26:
	.loc 1 95 0
	mov.n	a12, a4
	mov.n	a11, sp
	mov.n	a10, a6
	call8	memcpy
.LVL27:
	.loc 1 96 0
	add.n	a6, a6, a4
.LVL28:
	.loc 1 97 0
	sub	a7, a7, a4
.LVL29:
.L10:
	.loc 1 89 0
	bnez.n	a7, .L12
	.loc 1 100 0
	movi.n	a2, 0
.LVL30:
	retw.n
.LVL31:
.L13:
	.loc 1 93 0
	movi.n	a2, -1
.LVL32:
	.loc 1 101 0
	retw.n
.LFE2:
	.size	pbkdf2_sha1, .-pbkdf2_sha1
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
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI1-.LFB2
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE2:
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 4 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/string.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/crypto/sha1.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/crypto/common.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x3cd
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF30
	.byte	0xc
	.4byte	.LASF31
	.4byte	.LASF32
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
	.byte	0x15
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x4
	.byte	0xd8
	.4byte	0x53
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x5
	.4byte	0x37
	.4byte	0x95
	.uleb128 0x6
	.4byte	0x95
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x7
	.byte	0x4
	.4byte	0x37
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.uleb128 0x7
	.byte	0x4
	.4byte	0xb6
	.uleb128 0x8
	.4byte	0xa9
	.uleb128 0x9
	.string	"u8"
	.byte	0x7
	.byte	0xa8
	.4byte	0x68
	.uleb128 0xa
	.4byte	.LASF33
	.byte	0x1
	.byte	0x16
	.4byte	0x4c
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x25a
	.uleb128 0xb
	.4byte	.LASF14
	.byte	0x1
	.byte	0x16
	.4byte	0xb0
	.4byte	.LLST0
	.uleb128 0xb
	.4byte	.LASF15
	.byte	0x1
	.byte	0x16
	.4byte	0xb0
	.4byte	.LLST1
	.uleb128 0xb
	.4byte	.LASF16
	.byte	0x1
	.byte	0x17
	.4byte	0x73
	.4byte	.LLST2
	.uleb128 0xc
	.4byte	.LASF17
	.byte	0x1
	.byte	0x17
	.4byte	0x4c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0xb
	.4byte	.LASF18
	.byte	0x1
	.byte	0x17
	.4byte	0x53
	.4byte	.LLST3
	.uleb128 0xb
	.4byte	.LASF19
	.byte	0x1
	.byte	0x18
	.4byte	0x25a
	.4byte	.LLST4
	.uleb128 0xd
	.string	"tmp"
	.byte	0x1
	.byte	0x1a
	.4byte	0x260
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0xe
	.4byte	.LASF20
	.byte	0x1
	.byte	0x1a
	.4byte	0x260
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0xf
	.string	"i"
	.byte	0x1
	.byte	0x1b
	.4byte	0x4c
	.4byte	.LLST5
	.uleb128 0xf
	.string	"j"
	.byte	0x1
	.byte	0x1b
	.4byte	0x4c
	.4byte	.LLST6
	.uleb128 0xe
	.4byte	.LASF21
	.byte	0x1
	.byte	0x1c
	.4byte	0x85
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0xe
	.4byte	.LASF22
	.byte	0x1
	.byte	0x1d
	.4byte	0x270
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0xd
	.string	"len"
	.byte	0x1
	.byte	0x1e
	.4byte	0x28b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0xe
	.4byte	.LASF23
	.byte	0x1
	.byte	0x1f
	.4byte	0x73
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x10
	.4byte	.LVL3
	.4byte	0x3a6
	.4byte	0x1bb
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x10
	.4byte	.LVL7
	.4byte	0x3b1
	.4byte	0x1ee
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.uleb128 0x10
	.4byte	.LVL8
	.4byte	0x3bc
	.4byte	0x20f
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x44
	.byte	0
	.uleb128 0x10
	.4byte	.LVL11
	.4byte	0x3c5
	.4byte	0x23c
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x44
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.byte	0
	.uleb128 0x12
	.4byte	.LVL12
	.4byte	0x3bc
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x44
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0xbb
	.uleb128 0x5
	.4byte	0x37
	.4byte	0x270
	.uleb128 0x6
	.4byte	0x95
	.byte	0x13
	.byte	0
	.uleb128 0x5
	.4byte	0x280
	.4byte	0x280
	.uleb128 0x6
	.4byte	0x95
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x286
	.uleb128 0x8
	.4byte	0xbb
	.uleb128 0x5
	.4byte	0x73
	.4byte	0x29b
	.uleb128 0x6
	.4byte	0x95
	.byte	0x1
	.byte	0
	.uleb128 0x13
	.4byte	.LASF34
	.byte	0x1
	.byte	0x51
	.4byte	0x4c
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3a6
	.uleb128 0xb
	.4byte	.LASF14
	.byte	0x1
	.byte	0x51
	.4byte	0xb0
	.4byte	.LLST7
	.uleb128 0xc
	.4byte	.LASF15
	.byte	0x1
	.byte	0x51
	.4byte	0xb0
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xb
	.4byte	.LASF16
	.byte	0x1
	.byte	0x51
	.4byte	0x73
	.4byte	.LLST8
	.uleb128 0xb
	.4byte	.LASF17
	.byte	0x1
	.byte	0x52
	.4byte	0x4c
	.4byte	.LLST9
	.uleb128 0x14
	.string	"buf"
	.byte	0x1
	.byte	0x52
	.4byte	0x25a
	.4byte	.LLST10
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0x1
	.byte	0x52
	.4byte	0x73
	.4byte	.LLST11
	.uleb128 0x15
	.4byte	.LASF18
	.byte	0x1
	.byte	0x54
	.4byte	0x53
	.4byte	.LLST12
	.uleb128 0xd
	.string	"pos"
	.byte	0x1
	.byte	0x55
	.4byte	0xa3
	.uleb128 0x1
	.byte	0x56
	.uleb128 0xe
	.4byte	.LASF25
	.byte	0x1
	.byte	0x56
	.4byte	0x73
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x15
	.4byte	.LASF26
	.byte	0x1
	.byte	0x56
	.4byte	0x73
	.4byte	.LLST13
	.uleb128 0xe
	.4byte	.LASF19
	.byte	0x1
	.byte	0x57
	.4byte	0x260
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x10
	.4byte	.LVL25
	.4byte	0xc5
	.4byte	0x388
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x12
	.4byte	.LVL27
	.4byte	0x3bc
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LASF27
	.4byte	.LASF27
	.byte	0x5
	.byte	0x21
	.uleb128 0x16
	.4byte	.LASF28
	.4byte	.LASF28
	.byte	0x6
	.byte	0x14
	.uleb128 0x17
	.4byte	.LASF35
	.4byte	.LASF35
	.uleb128 0x16
	.4byte	.LASF29
	.4byte	.LASF29
	.byte	0x6
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
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xc
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL19
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
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x3
	.byte	0x91
	.sleb128 -68
	.4byte	.LVL6
	.4byte	.LVL7-1
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LVL7-1
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL1
	.4byte	.LFE1
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL2
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL9
	.4byte	.LVL16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL17
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL0
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL4
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL8
	.4byte	.LVL10
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL20
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL32
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL20
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL23
	.4byte	.LFE2
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL20
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL22
	.4byte	.LFE2
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL20
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL23
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL20
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL23
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL21
	.4byte	.LVL23
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LFE2
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL26
	.4byte	.LVL29
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
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF32:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\wpa_supplicant"
.LASF7:
	.string	"__uint8_t"
.LASF34:
	.string	"pbkdf2_sha1"
.LASF18:
	.string	"count"
.LASF21:
	.string	"count_buf"
.LASF25:
	.string	"left"
.LASF3:
	.string	"short unsigned int"
.LASF30:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF20:
	.string	"tmp2"
.LASF27:
	.string	"strlen"
.LASF16:
	.string	"ssid_len"
.LASF1:
	.string	"unsigned char"
.LASF12:
	.string	"long unsigned int"
.LASF22:
	.string	"addr"
.LASF9:
	.string	"size_t"
.LASF17:
	.string	"iterations"
.LASF28:
	.string	"hmac_sha1_vector"
.LASF29:
	.string	"hmac_sha1"
.LASF4:
	.string	"unsigned int"
.LASF24:
	.string	"buflen"
.LASF6:
	.string	"long long unsigned int"
.LASF8:
	.string	"uint8_t"
.LASF31:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/crypto/sha1-pbkdf2.c"
.LASF11:
	.string	"sizetype"
.LASF5:
	.string	"long long int"
.LASF35:
	.string	"memcpy"
.LASF33:
	.string	"pbkdf2_sha1_f"
.LASF15:
	.string	"ssid"
.LASF2:
	.string	"short int"
.LASF23:
	.string	"passphrase_len"
.LASF26:
	.string	"plen"
.LASF19:
	.string	"digest"
.LASF10:
	.string	"long int"
.LASF13:
	.string	"char"
.LASF14:
	.string	"passphrase"
.LASF0:
	.string	"signed char"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
