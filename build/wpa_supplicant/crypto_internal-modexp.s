	.file	"crypto_internal-modexp.c"
	.text
.Ltext0:
	.section	.text.crypto_mod_exp,"ax",@progbits
	.align	4
	.global	crypto_mod_exp
	.type	crypto_mod_exp, @function
crypto_mod_exp:
.LFB1:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/crypto/crypto_internal-modexp.c"
	.loc 1 27 0
.LVL0:
	entry	sp, 48
.LCFI0:
	s32i.n	a7, sp, 12
	s32i.n	a4, sp, 0
	s32i.n	a5, sp, 4
	s32i.n	a6, sp, 8
.LVL1:
	.loc 1 31 0
	call8	bignum_init
.LVL2:
	mov.n	a4, a10
.LVL3:
	.loc 1 32 0
	call8	bignum_init
.LVL4:
	mov.n	a5, a10
.LVL5:
	.loc 1 33 0
	call8	bignum_init
.LVL6:
	mov.n	a6, a10
.LVL7:
	.loc 1 34 0
	call8	bignum_init
.LVL8:
	mov.n	a7, a10
.LVL9:
	.loc 1 36 0
	movi.n	a8, 1
	movi.n	a10, 0
	mov.n	a9, a10
	moveqz	a9, a8, a4
	.loc 1 36 0
	movnez	a8, a10, a5
	or	a8, a8, a9
	.loc 1 36 0
	bne	a8, a10, .L3
	.loc 1 36 0 discriminator 1
	movi.n	a8, 1
	mov.n	a9, a10
	moveqz	a9, a8, a6
	extui	a9, a9, 0, 8
	.loc 1 37 0 discriminator 1
	movnez	a8, a10, a7
	extui	a8, a8, 0, 8
	.loc 1 36 0 discriminator 1
	bne	a9, a10, .L4
	bne	a8, a10, .L4
	.loc 1 40 0
	mov.n	a12, a3
	mov.n	a11, a2
	mov.n	a10, a4
	call8	bignum_set_unsigned_bin
.LVL10:
	bltz	a10, .L5
	.loc 1 41 0 discriminator 1
	l32i.n	a12, sp, 4
	l32i.n	a11, sp, 0
	mov.n	a10, a5
	call8	bignum_set_unsigned_bin
.LVL11:
	.loc 1 40 0 discriminator 1
	bltz	a10, .L6
	.loc 1 42 0
	l32i.n	a12, sp, 12
	l32i.n	a11, sp, 8
	mov.n	a10, a6
	call8	bignum_set_unsigned_bin
.LVL12:
	.loc 1 41 0
	bltz	a10, .L7
	.loc 1 45 0
	mov.n	a13, a7
	mov.n	a12, a6
	mov.n	a11, a5
	mov.n	a10, a4
	call8	bignum_exptmod
.LVL13:
	bltz	a10, .L8
	.loc 1 48 0
	l32i.n	a12, sp, 52
	l32i.n	a11, sp, 48
	mov.n	a10, a7
	call8	bignum_get_unsigned_bin
.LVL14:
	mov.n	a2, a10
.LVL15:
	j	.L2
.LVL16:
.L3:
	.loc 1 29 0
	movi.n	a2, -1
.LVL17:
	j	.L2
.LVL18:
.L4:
	movi.n	a2, -1
.LVL19:
	j	.L2
.LVL20:
.L5:
	movi.n	a2, -1
.LVL21:
	j	.L2
.LVL22:
.L6:
	movi.n	a2, -1
.LVL23:
	j	.L2
.LVL24:
.L7:
	movi.n	a2, -1
.LVL25:
	j	.L2
.LVL26:
.L8:
	movi.n	a2, -1
.LVL27:
.L2:
	.loc 1 51 0
	mov.n	a10, a4
	call8	bignum_deinit
.LVL28:
	.loc 1 52 0
	mov.n	a10, a5
	call8	bignum_deinit
.LVL29:
	.loc 1 53 0
	mov.n	a10, a6
	call8	bignum_deinit
.LVL30:
	.loc 1 54 0
	mov.n	a10, a7
	call8	bignum_deinit
.LVL31:
	.loc 1 56 0
	retw.n
.LFE1:
	.size	crypto_mod_exp, .-crypto_mod_exp
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
	.uleb128 0x30
	.align	4
.LEFDE0:
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 4 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/crypto/bignum.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/crypto/common.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x2f2
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF31
	.byte	0xc
	.4byte	.LASF32
	.4byte	.LASF33
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
	.string	"u8"
	.byte	0x6
	.byte	0xa8
	.4byte	0x68
	.uleb128 0x6
	.4byte	.LASF34
	.byte	0x1
	.byte	0x17
	.4byte	0x4c
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x29c
	.uleb128 0x7
	.4byte	.LASF14
	.byte	0x1
	.byte	0x17
	.4byte	0x29c
	.4byte	.LLST0
	.uleb128 0x8
	.4byte	.LASF15
	.byte	0x1
	.byte	0x17
	.4byte	0x73
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x7
	.4byte	.LASF16
	.byte	0x1
	.byte	0x18
	.4byte	0x29c
	.4byte	.LLST1
	.uleb128 0x7
	.4byte	.LASF17
	.byte	0x1
	.byte	0x18
	.4byte	0x73
	.4byte	.LLST2
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x1
	.byte	0x19
	.4byte	0x29c
	.4byte	.LLST3
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x1
	.byte	0x19
	.4byte	0x73
	.4byte	.LLST4
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0x1
	.byte	0x1a
	.4byte	0x2a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x8
	.4byte	.LASF21
	.byte	0x1
	.byte	0x1a
	.4byte	0x2ad
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x1
	.byte	0x1c
	.4byte	0x2b8
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x1
	.byte	0x1c
	.4byte	0x2b8
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x1
	.byte	0x1c
	.4byte	0x2b8
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x1
	.byte	0x1c
	.4byte	0x2b8
	.uleb128 0x1
	.byte	0x57
	.uleb128 0xa
	.string	"ret"
	.byte	0x1
	.byte	0x1d
	.4byte	0x4c
	.4byte	.LLST5
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0x1
	.byte	0x32
	.4byte	.L2
	.uleb128 0xc
	.4byte	.LVL2
	.4byte	0x2be
	.uleb128 0xc
	.4byte	.LVL4
	.4byte	0x2be
	.uleb128 0xc
	.4byte	.LVL6
	.4byte	0x2be
	.uleb128 0xc
	.4byte	.LVL8
	.4byte	0x2be
	.uleb128 0xd
	.4byte	.LVL10
	.4byte	0x2c9
	.4byte	0x1c3
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0xd
	.4byte	.LVL11
	.4byte	0x2c9
	.4byte	0x1e5
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.byte	0
	.uleb128 0xd
	.4byte	.LVL12
	.4byte	0x2c9
	.4byte	0x207
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -40
	.byte	0x6
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -36
	.byte	0x6
	.byte	0
	.uleb128 0xd
	.4byte	.LVL13
	.4byte	0x2d4
	.4byte	0x22d
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0xd
	.4byte	.LVL14
	.4byte	0x2df
	.4byte	0x24f
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0
	.uleb128 0xd
	.4byte	.LVL28
	.4byte	0x2ea
	.4byte	0x263
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0xd
	.4byte	.LVL29
	.4byte	0x2ea
	.4byte	0x277
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0xd
	.4byte	.LVL30
	.4byte	0x2ea
	.4byte	0x28b
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.4byte	.LVL31
	.4byte	0x2ea
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x2a2
	.uleb128 0x11
	.4byte	0x9a
	.uleb128 0x10
	.byte	0x4
	.4byte	0x9a
	.uleb128 0x10
	.byte	0x4
	.4byte	0x73
	.uleb128 0x12
	.4byte	.LASF36
	.uleb128 0x10
	.byte	0x4
	.4byte	0x2b3
	.uleb128 0x13
	.4byte	.LASF26
	.4byte	.LASF26
	.byte	0x5
	.byte	0x14
	.uleb128 0x13
	.4byte	.LASF27
	.4byte	.LASF27
	.byte	0x5
	.byte	0x18
	.uleb128 0x13
	.4byte	.LASF28
	.4byte	.LASF28
	.byte	0x5
	.byte	0x23
	.uleb128 0x13
	.4byte	.LASF29
	.4byte	.LASF29
	.byte	0x5
	.byte	0x17
	.uleb128 0x13
	.4byte	.LASF30
	.4byte	.LASF30
	.byte	0x5
	.byte	0x15
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL27
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
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL3
	.4byte	.LFE1
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL5
	.4byte	.LFE1
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL7
	.4byte	.LFE1
	.2byte	0x2
	.byte	0x91
	.sleb128 -40
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL0
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL9
	.4byte	.LFE1
	.2byte	0x2
	.byte	0x91
	.sleb128 -36
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL1
	.4byte	.LVL15
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL16
	.4byte	.LVL27
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL27
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
.LASF7:
	.string	"__uint8_t"
.LASF9:
	.string	"size_t"
.LASF20:
	.string	"result"
.LASF18:
	.string	"modulus"
.LASF8:
	.string	"uint8_t"
.LASF19:
	.string	"modulus_len"
.LASF16:
	.string	"power"
.LASF26:
	.string	"bignum_init"
.LASF36:
	.string	"bignum"
.LASF23:
	.string	"bn_exp"
.LASF1:
	.string	"unsigned char"
.LASF28:
	.string	"bignum_exptmod"
.LASF12:
	.string	"long unsigned int"
.LASF3:
	.string	"short unsigned int"
.LASF21:
	.string	"result_len"
.LASF24:
	.string	"bn_modulus"
.LASF29:
	.string	"bignum_get_unsigned_bin"
.LASF14:
	.string	"base"
.LASF4:
	.string	"unsigned int"
.LASF6:
	.string	"long long unsigned int"
.LASF22:
	.string	"bn_base"
.LASF15:
	.string	"base_len"
.LASF27:
	.string	"bignum_set_unsigned_bin"
.LASF11:
	.string	"sizetype"
.LASF35:
	.string	"error"
.LASF5:
	.string	"long long int"
.LASF31:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF13:
	.string	"char"
.LASF30:
	.string	"bignum_deinit"
.LASF2:
	.string	"short int"
.LASF32:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/crypto/crypto_internal-modexp.c"
.LASF10:
	.string	"long int"
.LASF34:
	.string	"crypto_mod_exp"
.LASF17:
	.string	"power_len"
.LASF33:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\wpa_supplicant"
.LASF25:
	.string	"bn_result"
.LASF0:
	.string	"signed char"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
