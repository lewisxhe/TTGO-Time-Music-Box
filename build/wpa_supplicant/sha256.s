	.file	"sha256.c"
	.text
.Ltext0:
	.section	.text.hmac_sha256_vector,"ax",@progbits
	.align	4
	.global	hmac_sha256_vector
	.type	hmac_sha256_vector, @function
hmac_sha256_vector:
.LFB1:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/crypto/sha256.c"
	.loc 1 34 0
.LVL0:
	entry	sp, 192
.LCFI0:
	s32i	a2, sp, 144
	s32i	a3, sp, 148
	.loc 1 40 0
	bgeui	a4, 6, .L1
	.loc 1 49 0
	movi.n	a9, 0x40
	bgeu	a9, a3, .L3
	.loc 1 50 0
	add.n	a2, sp, a9
.LVL1:
	mov.n	a13, a2
	movi	a12, 0x94
	add.n	a12, sp, a12
	movi	a11, 0x90
	add.n	a11, sp, a11
	movi.n	a10, 1
	call8	sha256_vector
.LVL2:
	.loc 1 51 0
	s32i	a2, sp, 144
	.loc 1 52 0
	movi.n	a2, 0x20
	s32i	a2, sp, 148
.L3:
	.loc 1 65 0
	movi.n	a12, 0x40
	movi.n	a11, 0
	mov.n	a10, sp
	call8	memset
.LVL3:
	.loc 1 66 0
	l32i	a12, sp, 148
	l32i	a11, sp, 144
	mov.n	a10, sp
	call8	memcpy
.LVL4:
	.loc 1 68 0
	movi.n	a8, 0
	j	.L4
.LVL5:
.L5:
	.loc 1 69 0 discriminator 3
	add.n	a10, sp, a8
	l8ui	a11, a10, 0
	movi.n	a9, 0x36
	xor	a9, a11, a9
	s8i	a9, a10, 0
	.loc 1 68 0 discriminator 3
	addi.n	a8, a8, 1
.LVL6:
.L4:
	.loc 1 68 0 is_stmt 0 discriminator 1
	movi.n	a9, 0x3f
	bgeu	a9, a8, .L5
	.loc 1 72 0 is_stmt 1
	s32i	sp, sp, 96
	.loc 1 73 0
	movi.n	a8, 0x40
.LVL7:
	s32i	a8, sp, 120
.LVL8:
	.loc 1 74 0
	movi.n	a8, 0
	j	.L6
.LVL9:
.L7:
	.loc 1 75 0 discriminator 3
	addi.n	a9, a8, 1
	slli	a8, a8, 2
.LVL10:
	add.n	a10, a5, a8
	l32i.n	a11, a10, 0
	addx4	a10, a9, sp
	s32i	a11, a10, 96
	.loc 1 76 0 discriminator 3
	add.n	a8, a6, a8
	l32i.n	a8, a8, 0
	s32i	a8, a10, 120
.LVL11:
	.loc 1 74 0 discriminator 3
	mov.n	a8, a9
.LVL12:
.L6:
	.loc 1 74 0 is_stmt 0 discriminator 1
	bltu	a8, a4, .L7
	.loc 1 78 0 is_stmt 1
	mov.n	a13, a7
	addi	a12, sp, 120
	addi	a11, sp, 96
	addi.n	a10, a4, 1
	call8	sha256_vector
.LVL13:
	.loc 1 80 0
	movi.n	a12, 0x40
	movi.n	a11, 0
	mov.n	a10, sp
	call8	memset
.LVL14:
	.loc 1 81 0
	l32i	a12, sp, 148
	l32i	a11, sp, 144
	mov.n	a10, sp
	call8	memcpy
.LVL15:
	.loc 1 83 0
	movi.n	a8, 0
	j	.L8
.LVL16:
.L9:
	.loc 1 84 0 discriminator 3
	add.n	a4, sp, a8
	l8ui	a5, a4, 0
	movi.n	a9, 0x5c
	xor	a9, a5, a9
	s8i	a9, a4, 0
	.loc 1 83 0 discriminator 3
	addi.n	a8, a8, 1
.LVL17:
.L8:
	.loc 1 83 0 is_stmt 0 discriminator 1
	movi.n	a4, 0x3f
	bgeu	a4, a8, .L9
	.loc 1 87 0 is_stmt 1
	s32i	sp, sp, 96
	.loc 1 88 0
	movi.n	a4, 0x40
	s32i	a4, sp, 120
	.loc 1 89 0
	s32i	a7, sp, 100
	.loc 1 90 0
	movi.n	a4, 0x20
	s32i	a4, sp, 124
	.loc 1 91 0
	mov.n	a13, a7
	addi	a12, sp, 120
	addi	a11, sp, 96
	movi.n	a10, 2
	call8	sha256_vector
.LVL18:
.L1:
	retw.n
.LFE1:
	.size	hmac_sha256_vector, .-hmac_sha256_vector
	.section	.text.hmac_sha256,"ax",@progbits
	.align	4
	.global	hmac_sha256
	.type	hmac_sha256, @function
hmac_sha256:
.LFB2:
	.loc 1 106 0
.LVL19:
	entry	sp, 48
.LCFI1:
	s32i.n	a4, sp, 0
	s32i.n	a5, sp, 4
	.loc 1 107 0
	mov.n	a15, a6
	addi.n	a14, sp, 4
	mov.n	a13, sp
	movi.n	a12, 1
	mov.n	a11, a3
	mov.n	a10, a2
	call8	hmac_sha256_vector
.LVL20:
	retw.n
.LFE2:
	.size	hmac_sha256, .-hmac_sha256
	.section	.text.sha256_prf,"ax",@progbits
	.align	4
	.global	sha256_prf
	.type	sha256_prf, @function
sha256_prf:
.LFB3:
	.loc 1 127 0
.LVL21:
	entry	sp, 128
.LCFI2:
	s32i	a7, sp, 84
	mov.n	a10, a4
	l32i	a4, sp, 84
.LVL22:
	s32i	a4, sp, 80
	l32i	a7, sp, 128
.LVL23:
	.loc 1 135 0
	addi	a4, sp, 64
.LVL24:
	s32i.n	a4, sp, 32
	.loc 1 136 0
	movi.n	a4, 2
	s32i.n	a4, sp, 48
	.loc 1 137 0
	s32i.n	a10, sp, 36
	.loc 1 138 0
	call8	strlen
.LVL25:
	s32i.n	a10, sp, 52
	.loc 1 139 0
	s32i.n	a5, sp, 40
	.loc 1 140 0
	s32i.n	a6, sp, 56
	.loc 1 141 0
	addi	a5, sp, 66
.LVL26:
	s32i.n	a5, sp, 44
	.loc 1 142 0
	s32i.n	a4, sp, 60
	.loc 1 144 0
	extui	a4, a7, 5, 8
	s8i	a4, sp, 67
	slli	a4, a7, 3
	s8i	a4, sp, 66
.LVL27:
	.loc 1 145 0
	movi.n	a5, 0
	.loc 1 128 0
	movi.n	a4, 1
	.loc 1 146 0
	j	.L13
.LVL28:
.L16:
	.loc 1 147 0
	sub	a6, a7, a5
.LVL29:
	.loc 1 148 0
	srli	a8, a4, 8
	s8i	a8, sp, 65
	s8i	a4, sp, 64
	.loc 1 149 0
	movi.n	a8, 0x1f
	bgeu	a8, a6, .L14
	.loc 1 150 0
	l32i	a6, sp, 80
.LVL30:
	add.n	a15, a6, a5
	addi	a14, sp, 48
	addi	a13, sp, 32
	movi.n	a12, 4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	hmac_sha256_vector
.LVL31:
	.loc 1 152 0
	addi	a5, a5, 32
.LVL32:
	.loc 1 158 0
	addi.n	a4, a4, 1
.LVL33:
	extui	a4, a4, 0, 16
.LVL34:
	j	.L13
.LVL35:
.L14:
	.loc 1 154 0
	mov.n	a15, sp
	addi	a14, sp, 48
	addi	a13, sp, 32
	movi.n	a12, 4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	hmac_sha256_vector
.LVL36:
	.loc 1 155 0
	mov.n	a12, a6
	mov.n	a11, sp
	l32i	a2, sp, 84
.LVL37:
	add.n	a10, a2, a5
	call8	memcpy
.LVL38:
	.loc 1 156 0
	retw.n
.LVL39:
.L13:
	.loc 1 146 0
	bltu	a5, a7, .L16
	retw.n
.LFE3:
	.size	sha256_prf, .-sha256_prf
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
	.uleb128 0xc0
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
	.uleb128 0x30
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI2-.LFB3
	.byte	0xe
	.uleb128 0x80
	.align	4
.LEFDE4:
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 4 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/crypto/common.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/crypto/crypto.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x538
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF38
	.byte	0xc
	.4byte	.LASF39
	.4byte	.LASF40
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
	.byte	0x4
	.4byte	0xb6
	.uleb128 0x6
	.4byte	0xa9
	.uleb128 0x7
	.string	"u16"
	.byte	0x5
	.byte	0xa7
	.4byte	0x7e
	.uleb128 0x7
	.string	"u8"
	.byte	0x5
	.byte	0xa8
	.4byte	0x73
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0x1
	.byte	0x20
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x25c
	.uleb128 0x9
	.string	"key"
	.byte	0x1
	.byte	0x20
	.4byte	0x25c
	.4byte	.LLST0
	.uleb128 0xa
	.4byte	.LASF16
	.byte	0x1
	.byte	0x20
	.4byte	0x89
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xb
	.4byte	.LASF17
	.byte	0x1
	.byte	0x20
	.4byte	0x89
	.4byte	.LLST1
	.uleb128 0xb
	.4byte	.LASF18
	.byte	0x1
	.byte	0x21
	.4byte	0x267
	.4byte	.LLST2
	.uleb128 0xc
	.string	"len"
	.byte	0x1
	.byte	0x21
	.4byte	0x26d
	.uleb128 0x1
	.byte	0x56
	.uleb128 0xc
	.string	"mac"
	.byte	0x1
	.byte	0x21
	.4byte	0x278
	.uleb128 0x1
	.byte	0x57
	.uleb128 0xd
	.4byte	.LASF19
	.byte	0x1
	.byte	0x23
	.4byte	0x27e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0xe
	.string	"tk"
	.byte	0x1
	.byte	0x24
	.4byte	0x28e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0xd
	.4byte	.LASF20
	.byte	0x1
	.byte	0x25
	.4byte	0x29e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0xd
	.4byte	.LASF21
	.byte	0x1
	.byte	0x26
	.4byte	0x2ae
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0xf
	.string	"i"
	.byte	0x1
	.byte	0x26
	.4byte	0x89
	.4byte	.LLST3
	.uleb128 0x10
	.4byte	.LVL2
	.4byte	0x513
	.4byte	0x1a6
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x10
	.4byte	.LVL3
	.4byte	0x51e
	.4byte	0x1c6
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.uleb128 0x10
	.4byte	.LVL4
	.4byte	0x527
	.4byte	0x1db
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.byte	0
	.uleb128 0x10
	.4byte	.LVL13
	.4byte	0x513
	.4byte	0x203
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x10
	.4byte	.LVL14
	.4byte	0x51e
	.4byte	0x223
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.uleb128 0x10
	.4byte	.LVL15
	.4byte	0x527
	.4byte	0x238
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.byte	0
	.uleb128 0x12
	.4byte	.LVL18
	.4byte	0x513
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x262
	.uleb128 0x6
	.4byte	0xc6
	.uleb128 0x5
	.byte	0x4
	.4byte	0x25c
	.uleb128 0x5
	.byte	0x4
	.4byte	0x273
	.uleb128 0x6
	.4byte	0x89
	.uleb128 0x5
	.byte	0x4
	.4byte	0xc6
	.uleb128 0x13
	.4byte	0x37
	.4byte	0x28e
	.uleb128 0x14
	.4byte	0x9b
	.byte	0x3f
	.byte	0
	.uleb128 0x13
	.4byte	0x37
	.4byte	0x29e
	.uleb128 0x14
	.4byte	0x9b
	.byte	0x1f
	.byte	0
	.uleb128 0x13
	.4byte	0x25c
	.4byte	0x2ae
	.uleb128 0x14
	.4byte	0x9b
	.byte	0x5
	.byte	0
	.uleb128 0x13
	.4byte	0x89
	.4byte	0x2be
	.uleb128 0x14
	.4byte	0x9b
	.byte	0x5
	.byte	0
	.uleb128 0x8
	.4byte	.LASF23
	.byte	0x1
	.byte	0x68
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x342
	.uleb128 0xc
	.string	"key"
	.byte	0x1
	.byte	0x68
	.4byte	0x25c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xa
	.4byte	.LASF16
	.byte	0x1
	.byte	0x68
	.4byte	0x89
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xa
	.4byte	.LASF24
	.byte	0x1
	.byte	0x68
	.4byte	0x25c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xa
	.4byte	.LASF25
	.byte	0x1
	.byte	0x69
	.4byte	0x89
	.uleb128 0x1
	.byte	0x55
	.uleb128 0xc
	.string	"mac"
	.byte	0x1
	.byte	0x69
	.4byte	0x278
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x12
	.4byte	.LVL20
	.4byte	0xd0
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
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	.LASF26
	.byte	0x1
	.byte	0x7d
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4d3
	.uleb128 0x9
	.string	"key"
	.byte	0x1
	.byte	0x7d
	.4byte	0x25c
	.4byte	.LLST4
	.uleb128 0xa
	.4byte	.LASF16
	.byte	0x1
	.byte	0x7d
	.4byte	0x89
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0x1
	.byte	0x7d
	.4byte	0xb0
	.4byte	.LLST5
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0x1
	.byte	0x7e
	.4byte	0x25c
	.4byte	.LLST6
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0x1
	.byte	0x7e
	.4byte	0x89
	.4byte	.LLST7
	.uleb128 0x9
	.string	"buf"
	.byte	0x1
	.byte	0x7e
	.4byte	0x278
	.4byte	.LLST8
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0x1
	.byte	0x7e
	.4byte	0x89
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.4byte	.LASF29
	.byte	0x1
	.byte	0x80
	.4byte	0xbb
	.4byte	.LLST9
	.uleb128 0xf
	.string	"pos"
	.byte	0x1
	.byte	0x81
	.4byte	0x89
	.4byte	.LLST10
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.byte	0x81
	.4byte	0x89
	.4byte	.LLST11
	.uleb128 0xd
	.4byte	.LASF31
	.byte	0x1
	.byte	0x82
	.4byte	0x4d3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0xd
	.4byte	.LASF18
	.byte	0x1
	.byte	0x83
	.4byte	0x4e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0xe
	.string	"len"
	.byte	0x1
	.byte	0x84
	.4byte	0x4f3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0xd
	.4byte	.LASF32
	.byte	0x1
	.byte	0x85
	.4byte	0x503
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xd
	.4byte	.LASF33
	.byte	0x1
	.byte	0x85
	.4byte	0x503
	.uleb128 0x2
	.byte	0x91
	.sleb128 -62
	.uleb128 0x10
	.4byte	.LVL25
	.4byte	0x530
	.4byte	0x448
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.uleb128 0x10
	.4byte	.LVL31
	.4byte	0xd0
	.4byte	0x47e
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
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x76
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0
	.uleb128 0x10
	.4byte	.LVL36
	.4byte	0xd0
	.4byte	0x4b2
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
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.byte	0
	.uleb128 0x12
	.4byte	.LVL38
	.4byte	0x527
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x72
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	0xc6
	.4byte	0x4e3
	.uleb128 0x14
	.4byte	0x9b
	.byte	0x1f
	.byte	0
	.uleb128 0x13
	.4byte	0x25c
	.4byte	0x4f3
	.uleb128 0x14
	.4byte	0x9b
	.byte	0x3
	.byte	0
	.uleb128 0x13
	.4byte	0x89
	.4byte	0x503
	.uleb128 0x14
	.4byte	0x9b
	.byte	0x3
	.byte	0
	.uleb128 0x13
	.4byte	0xc6
	.4byte	0x513
	.uleb128 0x14
	.4byte	0x9b
	.byte	0x1
	.byte	0
	.uleb128 0x16
	.4byte	.LASF36
	.4byte	.LASF36
	.byte	0x6
	.byte	0x66
	.uleb128 0x17
	.4byte	.LASF34
	.4byte	.LASF34
	.uleb128 0x17
	.4byte	.LASF35
	.4byte	.LASF35
	.uleb128 0x16
	.4byte	.LASF37
	.4byte	.LASF37
	.byte	0x7
	.byte	0x21
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL1
	.4byte	.LFE1
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL16
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL16
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x3
	.byte	0x79
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL12
	.4byte	.LVL13-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL18-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL21
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL37
	.4byte	.LVL39
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL39
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL22
	.4byte	.LVL25-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL25-1
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL21
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL26
	.4byte	.LVL28
	.2byte	0x3
	.byte	0x91
	.sleb128 -88
	.4byte	.LVL28
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL21
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL28
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL21
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL24
	.4byte	.LFE3
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL23
	.4byte	.LVL28
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL30
	.4byte	.LVL32
	.2byte	0x7
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0x75
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LVL35
	.2byte	0x9
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0x75
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x20
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x2c
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
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF3:
	.string	"__uint8_t"
.LASF36:
	.string	"sha256_vector"
.LASF5:
	.string	"short unsigned int"
.LASF21:
	.string	"_len"
.LASF38:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF25:
	.string	"data_len"
.LASF37:
	.string	"strlen"
.LASF24:
	.string	"data"
.LASF1:
	.string	"unsigned char"
.LASF39:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/crypto/sha256.c"
.LASF14:
	.string	"long unsigned int"
.LASF18:
	.string	"addr"
.LASF11:
	.string	"size_t"
.LASF28:
	.string	"buf_len"
.LASF29:
	.string	"counter"
.LASF4:
	.string	"__uint16_t"
.LASF32:
	.string	"counter_le"
.LASF2:
	.string	"short int"
.LASF34:
	.string	"memset"
.LASF23:
	.string	"hmac_sha256"
.LASF6:
	.string	"unsigned int"
.LASF8:
	.string	"long long unsigned int"
.LASF9:
	.string	"uint8_t"
.LASF31:
	.string	"hash"
.LASF17:
	.string	"num_elem"
.LASF13:
	.string	"sizetype"
.LASF7:
	.string	"long long int"
.LASF10:
	.string	"uint16_t"
.LASF33:
	.string	"length_le"
.LASF30:
	.string	"plen"
.LASF35:
	.string	"memcpy"
.LASF22:
	.string	"hmac_sha256_vector"
.LASF16:
	.string	"key_len"
.LASF12:
	.string	"long int"
.LASF15:
	.string	"char"
.LASF40:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\wpa_supplicant"
.LASF0:
	.string	"signed char"
.LASF26:
	.string	"sha256_prf"
.LASF27:
	.string	"label"
.LASF19:
	.string	"k_pad"
.LASF20:
	.string	"_addr"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
