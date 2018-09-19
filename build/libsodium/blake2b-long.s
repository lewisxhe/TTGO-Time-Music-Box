	.file	"blake2b-long.c"
	.text
.Ltext0:
	.section	.text.blake2b_long,"ax",@progbits
	.literal_position
	.literal .LC0, 4, 0
	.literal .LC1, 64, 0
	.align	4
	.global	blake2b_long
	.type	blake2b_long, @function
blake2b_long:
.LFB12:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_pwhash/argon2/blake2b-long.c"
	.loc 1 14 0
.LVL0:
	entry	sp, 208
	mov.n	a7, sp
.LCFI0:
	s32i	a2, a7, 164
	movi	a2, -0x1b0
.LVL1:
	add.n	a2, sp, a2
	movsp	sp, a2
	addi	a6, sp, 79
	srli	a6, a6, 6
	slli	a6, a6, 6
.LVL2:
.LBB5:
.LBB6:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/private/common.h"
	.loc 2 99 0
	s32i	a3, a7, 160
	s32i.n	a3, a7, 16
.LBE6:
.LBE5:
	.loc 1 35 0
	movi.n	a2, 0x40
	bltu	a2, a3, .L2
	.loc 1 36 0 discriminator 2
	mov.n	a13, a3
	movi.n	a12, 0
	mov.n	a11, a12
	mov.n	a10, a6
	call8	crypto_generichash_blake2b_init
.LVL3:
	mov.n	a2, a10
.LVL4:
	.loc 1 36 0 discriminator 2
	bltz	a10, .L3
	.loc 1 37 0
	l32r	a12, .LC0
	l32r	a13, .LC0+4
	addi	a11, a7, 16
.LVL5:
	mov.n	a10, a6
	call8	crypto_generichash_blake2b_update
.LVL6:
	mov.n	a2, a10
.LVL7:
	bltz	a10, .L3
	.loc 1 39 0
	mov.n	a12, a5
	movi.n	a13, 0
	mov.n	a11, a4
	mov.n	a10, a6
	call8	crypto_generichash_blake2b_update
.LVL8:
	mov.n	a2, a10
.LVL9:
	bltz	a10, .L3
	.loc 1 41 0 discriminator 2
	mov.n	a12, a3
	l32i	a11, a7, 164
	mov.n	a10, a6
	call8	crypto_generichash_blake2b_final
.LVL10:
	mov.n	a2, a10
.LVL11:
	j	.L3
.LVL12:
.L2:
.LBB7:
	.loc 1 46 0
	movi.n	a13, 0x40
	movi.n	a12, 0
	mov.n	a11, a12
	mov.n	a10, a6
	call8	crypto_generichash_blake2b_init
.LVL13:
	mov.n	a2, a10
.LVL14:
	.loc 1 46 0
	bltz	a10, .L3
	.loc 1 48 0
	l32r	a12, .LC0
	l32r	a13, .LC0+4
	addi	a11, a7, 16
.LVL15:
	mov.n	a10, a6
	call8	crypto_generichash_blake2b_update
.LVL16:
	mov.n	a2, a10
.LVL17:
	bltz	a10, .L3
	.loc 1 50 0
	mov.n	a12, a5
	movi.n	a13, 0
	mov.n	a11, a4
	mov.n	a10, a6
	call8	crypto_generichash_blake2b_update
.LVL18:
	mov.n	a2, a10
.LVL19:
	bltz	a10, .L3
	.loc 1 52 0
	movi.n	a12, 0x40
	addi	a11, a7, 84
	mov.n	a10, a6
	call8	crypto_generichash_blake2b_final
.LVL20:
	mov.n	a2, a10
.LVL21:
	bltz	a10, .L3
	.loc 1 54 0
	movi.n	a12, 0x20
	addi	a11, a7, 84
	l32i	a10, a7, 164
	call8	memcpy
.LVL22:
	.loc 1 55 0
	l32i	a2, a7, 164
.LVL23:
	addi	a4, a2, 32
.LVL24:
	.loc 1 56 0
	addi	a3, a3, -32
.LVL25:
	.loc 1 59 0
	j	.L5
.LVL26:
.L6:
	.loc 1 60 0
	movi.n	a2, 0x40
	mov.n	a12, a2
	addi	a11, a7, 84
	addi	a10, a7, 20
	call8	memcpy
.LVL27:
	.loc 1 61 0
	movi.n	a5, 0
	s32i.n	a5, sp, 4
	s32i.n	a5, sp, 0
	l32r	a14, .LC1
	l32r	a15, .LC1+4
	addi	a12, a7, 20
	mov.n	a11, a2
	addi	a10, a7, 84
	call8	crypto_generichash_blake2b
.LVL28:
	mov.n	a2, a10
.LVL29:
	.loc 1 61 0
	blt	a10, a5, .L3
	.loc 1 64 0
	movi.n	a12, 0x20
	addi	a11, a7, 84
	mov.n	a10, a4
	call8	memcpy
.LVL30:
	.loc 1 65 0
	addi	a4, a4, 32
.LVL31:
	.loc 1 66 0
	addi	a3, a3, -32
.LVL32:
.L5:
	.loc 1 59 0
	movi.n	a2, 0x40
	bltu	a2, a3, .L6
	.loc 1 69 0
	mov.n	a12, a2
	addi	a11, a7, 84
	addi	a10, a7, 20
	call8	memcpy
.LVL33:
	.loc 1 70 0
	movi.n	a2, 0
	s32i.n	a2, sp, 4
	s32i.n	a2, sp, 0
	l32r	a14, .LC1
	l32r	a15, .LC1+4
	addi	a12, a7, 20
	mov.n	a11, a3
	addi	a10, a7, 84
	call8	crypto_generichash_blake2b
.LVL34:
	mov.n	a2, a10
.LVL35:
	.loc 1 70 0
	bltz	a10, .L3
	.loc 1 73 0
	mov.n	a12, a3
	addi	a11, a7, 84
	mov.n	a10, a4
	call8	memcpy
.LVL36:
.L3:
.LBE7:
	.loc 1 76 0
	movi	a11, 0x165
	mov.n	a10, a6
	call8	sodium_memzero
.LVL37:
	.loc 1 79 0
	retw.n
.LFE12:
	.size	blake2b_long, .-blake2b_long
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
	.byte	0xc
	.uleb128 0x7
	.uleb128 0xd0
	.align	4
.LEFDE0:
	.text
.Letext0:
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 5 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_generichash_blake2b.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/utils.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x4e7
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF34
	.byte	0xc
	.4byte	.LASF35
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x3
	.byte	0x12
	.4byte	0x33
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
	.byte	0x3
	.byte	0x1a
	.4byte	0x5a
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x3
	.byte	0x1e
	.4byte	0x73
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x4
	.byte	0x15
	.4byte	0x28
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x4
	.byte	0x2d
	.4byte	0x4f
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x4
	.byte	0x39
	.4byte	0x68
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x5
	.byte	0xd8
	.4byte	0x5a
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF14
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF16
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF17
	.uleb128 0x6
	.byte	0x4
	.4byte	0xca
	.uleb128 0x7
	.uleb128 0x8
	.4byte	.LASF20
	.2byte	0x165
	.byte	0x6
	.byte	0x17
	.4byte	0x11d
	.uleb128 0x9
	.string	"h"
	.byte	0x6
	.byte	0x18
	.4byte	0x11d
	.byte	0
	.uleb128 0x9
	.string	"t"
	.byte	0x6
	.byte	0x19
	.4byte	0x12d
	.byte	0x40
	.uleb128 0x9
	.string	"f"
	.byte	0x6
	.byte	0x1a
	.4byte	0x12d
	.byte	0x50
	.uleb128 0x9
	.string	"buf"
	.byte	0x6
	.byte	0x1b
	.4byte	0x13d
	.byte	0x60
	.uleb128 0xa
	.4byte	.LASF18
	.byte	0x6
	.byte	0x1c
	.4byte	0x9b
	.2byte	0x160
	.uleb128 0xa
	.4byte	.LASF19
	.byte	0x6
	.byte	0x1d
	.4byte	0x7a
	.2byte	0x164
	.byte	0
	.uleb128 0xb
	.4byte	0x90
	.4byte	0x12d
	.uleb128 0xc
	.4byte	0xad
	.byte	0x7
	.byte	0
	.uleb128 0xb
	.4byte	0x90
	.4byte	0x13d
	.uleb128 0xc
	.4byte	0xad
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.4byte	0x7a
	.4byte	0x14d
	.uleb128 0xc
	.4byte	0xad
	.byte	0xff
	.byte	0
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x6
	.byte	0x1e
	.4byte	0xcb
	.uleb128 0xd
	.4byte	.LASF36
	.byte	0x2
	.byte	0x60
	.byte	0x3
	.4byte	0x179
	.uleb128 0xe
	.string	"dst"
	.byte	0x2
	.byte	0x60
	.4byte	0x179
	.uleb128 0xe
	.string	"w"
	.byte	0x2
	.byte	0x60
	.4byte	0x85
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x7a
	.uleb128 0xf
	.4byte	.LASF37
	.byte	0x1
	.byte	0xd
	.4byte	0x48
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x48a
	.uleb128 0x10
	.4byte	.LASF21
	.byte	0x1
	.byte	0xd
	.4byte	0xb4
	.4byte	.LLST0
	.uleb128 0x10
	.4byte	.LASF22
	.byte	0x1
	.byte	0xd
	.4byte	0x9b
	.4byte	.LLST1
	.uleb128 0x11
	.string	"in"
	.byte	0x1
	.byte	0xd
	.4byte	0xc4
	.4byte	.LLST2
	.uleb128 0x10
	.4byte	.LASF23
	.byte	0x1
	.byte	0xd
	.4byte	0x9b
	.4byte	.LLST3
	.uleb128 0x12
	.string	"out"
	.byte	0x1
	.byte	0xf
	.4byte	0x179
	.4byte	.LLST4
	.uleb128 0x13
	.4byte	.LASF24
	.byte	0x1
	.byte	0x10
	.4byte	0x14d
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x13
	.4byte	.LASF25
	.byte	0x1
	.byte	0x11
	.4byte	0x48a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x12
	.string	"ret"
	.byte	0x1
	.byte	0x12
	.4byte	0x48
	.4byte	.LLST5
	.uleb128 0x14
	.4byte	.LASF38
	.byte	0x1
	.byte	0x4b
	.4byte	.L3
	.uleb128 0x15
	.4byte	0x158
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.byte	0x1
	.byte	0x19
	.4byte	0x23f
	.uleb128 0x16
	.4byte	0x16f
	.4byte	.LLST6
	.uleb128 0x16
	.4byte	0x164
	.4byte	.LLST7
	.byte	0
	.uleb128 0x17
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.4byte	0x3f8
	.uleb128 0x18
	.4byte	.LASF26
	.byte	0x1
	.byte	0x2b
	.4byte	0x85
	.4byte	.LLST8
	.uleb128 0x13
	.4byte	.LASF27
	.byte	0x1
	.byte	0x2c
	.4byte	0x49a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x13
	.4byte	.LASF28
	.byte	0x1
	.byte	0x2d
	.4byte	0x49a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -188
	.uleb128 0x19
	.4byte	.LVL13
	.4byte	0x4aa
	.4byte	0x29d
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL16
	.4byte	0x4b5
	.4byte	0x2b8
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.byte	0
	.uleb128 0x19
	.4byte	.LVL18
	.4byte	0x4b5
	.4byte	0x2d2
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL20
	.4byte	0x4c0
	.4byte	0x2f3
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.uleb128 0x19
	.4byte	.LVL22
	.4byte	0x4cb
	.4byte	0x315
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x19
	.4byte	.LVL27
	.4byte	0x4cb
	.4byte	0x337
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -188
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL28
	.4byte	0x4d4
	.4byte	0x367
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -188
	.uleb128 0x1a
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL30
	.4byte	0x4cb
	.4byte	0x388
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x19
	.4byte	.LVL33
	.4byte	0x4cb
	.4byte	0x3aa
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -188
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL34
	.4byte	0x4d4
	.4byte	0x3da
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -188
	.uleb128 0x1a
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL36
	.4byte	0x4cb
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL3
	.4byte	0x4aa
	.4byte	0x41c
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL6
	.4byte	0x4b5
	.4byte	0x437
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.byte	0
	.uleb128 0x19
	.4byte	.LVL8
	.4byte	0x4b5
	.4byte	0x451
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL10
	.4byte	0x4c0
	.4byte	0x472
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL37
	.4byte	0x4df
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x165
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	0x7a
	.4byte	0x49a
	.uleb128 0xc
	.4byte	0xad
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.4byte	0x7a
	.4byte	0x4aa
	.uleb128 0xc
	.4byte	0xad
	.byte	0x3f
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF29
	.4byte	.LASF29
	.byte	0x6
	.byte	0x59
	.uleb128 0x1c
	.4byte	.LASF30
	.4byte	.LASF30
	.byte	0x6
	.byte	0x65
	.uleb128 0x1c
	.4byte	.LASF31
	.4byte	.LASF31
	.byte	0x6
	.byte	0x6a
	.uleb128 0x1d
	.4byte	.LASF39
	.4byte	.LASF39
	.uleb128 0x1c
	.4byte	.LASF32
	.4byte	.LASF32
	.byte	0x6
	.byte	0x4a
	.uleb128 0x1c
	.4byte	.LASF33
	.4byte	.LASF33
	.byte	0x7
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
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL1
	.4byte	.LFE12
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x3
	.byte	0x73
	.sleb128 32
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL24
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL26
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL2
	.4byte	.LVL24
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	.LVL24
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL2
	.4byte	.LVL4
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL12
	.4byte	.LVL14
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL29
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL35
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL2
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x3
	.byte	0x73
	.sleb128 32
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL2
	.4byte	.LVL5
	.2byte	0x4
	.byte	0x91
	.sleb128 -192
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL6-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL6-1
	.4byte	.LVL15
	.2byte	0x4
	.byte	0x91
	.sleb128 -192
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LVL16-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL16-1
	.4byte	.LFE12
	.2byte	0x4
	.byte	0x91
	.sleb128 -192
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL25
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x53
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
.LASF4:
	.string	"__uint8_t"
.LASF13:
	.string	"size_t"
.LASF32:
	.string	"crypto_generichash_blake2b"
.LASF27:
	.string	"out_buffer"
.LASF37:
	.string	"blake2b_long"
.LASF2:
	.string	"short int"
.LASF36:
	.string	"store32_le"
.LASF12:
	.string	"uint64_t"
.LASF34:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF1:
	.string	"unsigned char"
.LASF16:
	.string	"long unsigned int"
.LASF3:
	.string	"short unsigned int"
.LASF11:
	.string	"uint32_t"
.LASF26:
	.string	"toproduce"
.LASF23:
	.string	"inlen"
.LASF5:
	.string	"__uint32_t"
.LASF24:
	.string	"blake_state"
.LASF6:
	.string	"unsigned int"
.LASF17:
	.string	"char"
.LASF9:
	.string	"long long unsigned int"
.LASF10:
	.string	"uint8_t"
.LASF31:
	.string	"crypto_generichash_blake2b_final"
.LASF30:
	.string	"crypto_generichash_blake2b_update"
.LASF25:
	.string	"outlen_bytes"
.LASF20:
	.string	"crypto_generichash_blake2b_state"
.LASF15:
	.string	"sizetype"
.LASF7:
	.string	"long long int"
.LASF35:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_pwhash/argon2/blake2b-long.c"
.LASF39:
	.string	"memcpy"
.LASF29:
	.string	"crypto_generichash_blake2b_init"
.LASF28:
	.string	"in_buffer"
.LASF8:
	.string	"__uint64_t"
.LASF18:
	.string	"buflen"
.LASF14:
	.string	"long int"
.LASF19:
	.string	"last_node"
.LASF0:
	.string	"signed char"
.LASF33:
	.string	"sodium_memzero"
.LASF22:
	.string	"outlen"
.LASF21:
	.string	"pout"
.LASF38:
	.string	"fail"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
