	.file	"kdf_blake2b.c"
	.text
.Ltext0:
	.section	.text.crypto_kdf_blake2b_bytes_min,"ax",@progbits
	.align	4
	.global	crypto_kdf_blake2b_bytes_min
	.type	crypto_kdf_blake2b_bytes_min, @function
crypto_kdf_blake2b_bytes_min:
.LFB12:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_kdf/blake2b/kdf_blake2b.c"
	.loc 1 9 0
	entry	sp, 32
.LCFI0:
	.loc 1 11 0
	movi.n	a2, 0x10
	retw.n
.LFE12:
	.size	crypto_kdf_blake2b_bytes_min, .-crypto_kdf_blake2b_bytes_min
	.section	.text.crypto_kdf_blake2b_bytes_max,"ax",@progbits
	.align	4
	.global	crypto_kdf_blake2b_bytes_max
	.type	crypto_kdf_blake2b_bytes_max, @function
crypto_kdf_blake2b_bytes_max:
.LFB13:
	.loc 1 15 0
	entry	sp, 32
.LCFI1:
	.loc 1 17 0
	movi.n	a2, 0x40
	retw.n
.LFE13:
	.size	crypto_kdf_blake2b_bytes_max, .-crypto_kdf_blake2b_bytes_max
	.section	.text.crypto_kdf_blake2b_contextbytes,"ax",@progbits
	.align	4
	.global	crypto_kdf_blake2b_contextbytes
	.type	crypto_kdf_blake2b_contextbytes, @function
crypto_kdf_blake2b_contextbytes:
.LFB14:
	.loc 1 21 0
	entry	sp, 32
.LCFI2:
	.loc 1 23 0
	movi.n	a2, 8
	retw.n
.LFE14:
	.size	crypto_kdf_blake2b_contextbytes, .-crypto_kdf_blake2b_contextbytes
	.section	.text.crypto_kdf_blake2b_keybytes,"ax",@progbits
	.align	4
	.global	crypto_kdf_blake2b_keybytes
	.type	crypto_kdf_blake2b_keybytes, @function
crypto_kdf_blake2b_keybytes:
.LFB15:
	.loc 1 27 0
	entry	sp, 32
.LCFI3:
	.loc 1 29 0
	movi.n	a2, 0x20
	retw.n
.LFE15:
	.size	crypto_kdf_blake2b_keybytes, .-crypto_kdf_blake2b_keybytes
	.section	.text.crypto_kdf_blake2b_derive_from_key,"ax",@progbits
	.literal_position
	.literal .LC0, 0, 0
	.align	4
	.global	crypto_kdf_blake2b_derive_from_key
	.type	crypto_kdf_blake2b_derive_from_key, @function
crypto_kdf_blake2b_derive_from_key:
.LFB16:
	.loc 1 35 0
.LVL0:
	entry	sp, 96
.LCFI4:
	.loc 1 39 0
	movi.n	a12, 8
	mov.n	a11, a6
	addi	a10, sp, 16
	call8	memcpy
.LVL1:
	.loc 1 40 0
	movi.n	a8, 0
	s32i.n	a8, sp, 24
	s32i.n	a8, sp, 28
.LVL2:
	s32i.n	a4, sp, 48
	s32i.n	a5, sp, 52
.LVL3:
.LBB4:
.LBB5:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/private/common.h"
	.loc 2 64 0
	s32i.n	a4, sp, 32
	s32i.n	a5, sp, 36
.LBE5:
.LBE4:
	.loc 1 42 0
	s32i.n	a8, sp, 40
	s32i.n	a8, sp, 44
	.loc 1 43 0
	addi	a4, a3, -16
.LVL4:
	movi.n	a5, 0x30
	bgeu	a5, a4, .L6
	.loc 1 45 0
	call8	__errno
.LVL5:
	movi.n	a2, 0x16
.LVL6:
	s32i.n	a2, a10, 0
	.loc 1 46 0
	movi.n	a2, -1
	retw.n
.LVL7:
.L6:
	.loc 1 48 0
	addi	a4, sp, 16
	s32i.n	a4, sp, 12
	addi	a4, sp, 32
.LVL8:
	s32i.n	a4, sp, 8
	movi.n	a4, 0x20
.LVL9:
	s32i.n	a4, sp, 4
	s32i.n	a7, sp, 0
	l32r	a14, .LC0
	l32r	a15, .LC0+4
	movi.n	a12, 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	crypto_generichash_blake2b_salt_personal
.LVL10:
	mov.n	a2, a10
.LVL11:
	.loc 1 52 0
	retw.n
.LFE16:
	.size	crypto_kdf_blake2b_derive_from_key, .-crypto_kdf_blake2b_derive_from_key
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
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI1-.LFB13
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI2-.LFB14
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI3-.LFB15
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI4-.LFB16
	.byte	0xe
	.uleb128 0x60
	.align	4
.LEFDE8:
	.text
.Letext0:
	.file 3 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/errno.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_generichash_blake2b.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x271
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF27
	.byte	0xc
	.4byte	.LASF28
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.4byte	.LASF4
	.byte	0x3
	.byte	0xd8
	.4byte	0x3a
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF3
	.uleb128 0x4
	.4byte	.LASF5
	.byte	0x4
	.byte	0x12
	.4byte	0x5a
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x4
	.4byte	.LASF9
	.byte	0x4
	.byte	0x1e
	.4byte	0x21
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
	.uleb128 0x5
	.byte	0x4
	.4byte	0x5a
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.uleb128 0x5
	.byte	0x4
	.4byte	0xa2
	.uleb128 0x6
	.4byte	0x95
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x5
	.byte	0x15
	.4byte	0x4f
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x5
	.byte	0x39
	.4byte	0x6f
	.uleb128 0x7
	.4byte	.LASF29
	.byte	0x2
	.byte	0x3d
	.byte	0x3
	.4byte	0xde
	.uleb128 0x8
	.string	"dst"
	.byte	0x2
	.byte	0x3d
	.4byte	0xde
	.uleb128 0x8
	.string	"w"
	.byte	0x2
	.byte	0x3d
	.4byte	0xb2
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xa7
	.uleb128 0x9
	.4byte	.LASF16
	.byte	0x1
	.byte	0x8
	.4byte	0x2f
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x9
	.4byte	.LASF17
	.byte	0x1
	.byte	0xe
	.4byte	0x2f
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x1
	.byte	0x14
	.4byte	0x2f
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0x1
	.byte	0x1a
	.4byte	0x2f
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xa
	.4byte	.LASF30
	.byte	0x1
	.byte	0x1f
	.4byte	0x28
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x23a
	.uleb128 0xb
	.4byte	.LASF20
	.byte	0x1
	.byte	0x1f
	.4byte	0x8f
	.4byte	.LLST0
	.uleb128 0xc
	.4byte	.LASF21
	.byte	0x1
	.byte	0x1f
	.4byte	0x2f
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xb
	.4byte	.LASF22
	.byte	0x1
	.byte	0x20
	.4byte	0xb2
	.4byte	.LLST1
	.uleb128 0xd
	.string	"ctx"
	.byte	0x1
	.byte	0x21
	.4byte	0x9c
	.uleb128 0x1
	.byte	0x56
	.uleb128 0xd
	.string	"key"
	.byte	0x1
	.byte	0x22
	.4byte	0x23a
	.uleb128 0x1
	.byte	0x57
	.uleb128 0xe
	.4byte	.LASF23
	.byte	0x1
	.byte	0x24
	.4byte	0x245
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0xe
	.4byte	.LASF24
	.byte	0x1
	.byte	0x25
	.4byte	0x245
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xf
	.4byte	0xbd
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.byte	0x1
	.byte	0x29
	.4byte	0x1d8
	.uleb128 0x10
	.4byte	0xd4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x11
	.4byte	0xc9
	.4byte	.LLST2
	.byte	0
	.uleb128 0x12
	.4byte	.LVL1
	.4byte	0x255
	.4byte	0x1f8
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x14
	.4byte	.LVL5
	.4byte	0x25e
	.uleb128 0x15
	.4byte	.LVL10
	.4byte	0x269
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x13
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x2
	.byte	0x71
	.sleb128 8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x13
	.uleb128 0x2
	.byte	0x71
	.sleb128 12
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x240
	.uleb128 0x6
	.4byte	0x5a
	.uleb128 0x16
	.4byte	0x5a
	.4byte	0x255
	.uleb128 0x17
	.4byte	0x81
	.byte	0xf
	.byte	0
	.uleb128 0x18
	.4byte	.LASF31
	.4byte	.LASF31
	.uleb128 0x19
	.4byte	.LASF25
	.4byte	.LASF25
	.byte	0x6
	.byte	0xf
	.uleb128 0x19
	.4byte	.LASF26
	.4byte	.LASF26
	.byte	0x7
	.byte	0x50
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x10
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x1
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
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL11
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL4
	.2byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL4
	.4byte	.LFE16
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x21
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL2
	.4byte	.LVL8
	.2byte	0x3
	.byte	0x91
	.sleb128 -64
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL9
	.4byte	.LVL10-1
	.2byte	0x3
	.byte	0x91
	.sleb128 -88
	.4byte	.LVL10-1
	.4byte	.LFE16
	.2byte	0x3
	.byte	0x91
	.sleb128 -64
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x3c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF29:
	.string	"store64_le"
.LASF5:
	.string	"__uint8_t"
.LASF4:
	.string	"size_t"
.LASF26:
	.string	"crypto_generichash_blake2b_salt_personal"
.LASF22:
	.string	"subkey_id"
.LASF20:
	.string	"subkey"
.LASF15:
	.string	"uint64_t"
.LASF27:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF24:
	.string	"salt"
.LASF6:
	.string	"unsigned char"
.LASF17:
	.string	"crypto_kdf_blake2b_bytes_max"
.LASF12:
	.string	"long unsigned int"
.LASF2:
	.string	"short unsigned int"
.LASF23:
	.string	"ctx_padded"
.LASF28:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_kdf/blake2b/kdf_blake2b.c"
.LASF16:
	.string	"crypto_kdf_blake2b_bytes_min"
.LASF1:
	.string	"unsigned int"
.LASF0:
	.string	"long long unsigned int"
.LASF14:
	.string	"uint8_t"
.LASF18:
	.string	"crypto_kdf_blake2b_contextbytes"
.LASF11:
	.string	"sizetype"
.LASF8:
	.string	"long long int"
.LASF13:
	.string	"char"
.LASF31:
	.string	"memcpy"
.LASF7:
	.string	"short int"
.LASF19:
	.string	"crypto_kdf_blake2b_keybytes"
.LASF9:
	.string	"__uint64_t"
.LASF30:
	.string	"crypto_kdf_blake2b_derive_from_key"
.LASF25:
	.string	"__errno"
.LASF10:
	.string	"long int"
.LASF3:
	.string	"signed char"
.LASF21:
	.string	"subkey_len"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
