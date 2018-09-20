	.file	"bootloader_sha.c"
	.text
.Ltext0:
	.section	.text.bootloader_sha256_start,"ax",@progbits
	.align	4
	.global	bootloader_sha256_start
	.type	bootloader_sha256_start, @function
bootloader_sha256_start:
.LFB0:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/bootloader_sha.c"
	.loc 1 25 0
	entry	sp, 32
.LCFI0:
	.loc 1 26 0
	movi	a10, 0x6c
	call8	malloc
.LVL0:
	mov.n	a2, a10
.LVL1:
	.loc 1 27 0
	beqz.n	a10, .L3
	.loc 1 30 0
	call8	mbedtls_sha256_init
.LVL2:
	.loc 1 31 0
	movi.n	a11, 0
	mov.n	a10, a2
	call8	mbedtls_sha256_starts_ret
.LVL3:
	.loc 1 32 0
	beqz.n	a10, .L2
	.loc 1 33 0
	movi.n	a2, 0
.LVL4:
	retw.n
.LVL5:
.L3:
	.loc 1 28 0
	movi.n	a2, 0
.LVL6:
.L2:
	.loc 1 36 0
	retw.n
.LFE0:
	.size	bootloader_sha256_start, .-bootloader_sha256_start
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC0:
	.string	"handle != NULL"
	.align	4
.LC3:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/bootloader_sha.c"
	.align	4
.LC5:
	.string	"ret == 0"
	.section	.text.bootloader_sha256_data,"ax",@progbits
	.literal_position
	.literal .LC1, .LC0
	.literal .LC2, __func__$2344
	.literal .LC4, .LC3
	.literal .LC6, .LC5
	.align	4
	.global	bootloader_sha256_data
	.type	bootloader_sha256_data, @function
bootloader_sha256_data:
.LFB1:
	.loc 1 39 0
.LVL7:
	entry	sp, 32
.LCFI1:
	.loc 1 40 0
	bnez.n	a2, .L6
	.loc 1 40 0 is_stmt 0 discriminator 1
	l32r	a13, .LC1
	l32r	a12, .LC2
	movi.n	a11, 0x28
	l32r	a10, .LC4
	call8	__assert_func
.LVL8:
.L6:
	.loc 1 42 0 is_stmt 1
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	mbedtls_sha256_update_ret
.LVL9:
	.loc 1 43 0
	beqz.n	a10, .L5
	.loc 1 43 0 is_stmt 0 discriminator 1
	l32r	a13, .LC6
	l32r	a12, .LC2
	movi.n	a11, 0x2b
	l32r	a10, .LC4
.LVL10:
	call8	__assert_func
.LVL11:
.L5:
	retw.n
.LFE1:
	.size	bootloader_sha256_data, .-bootloader_sha256_data
	.section	.text.bootloader_sha256_finish,"ax",@progbits
	.literal_position
	.literal .LC7, .LC0
	.literal .LC8, __func__$2351
	.literal .LC9, .LC3
	.literal .LC10, .LC5
	.align	4
	.global	bootloader_sha256_finish
	.type	bootloader_sha256_finish, @function
bootloader_sha256_finish:
.LFB2:
	.loc 1 47 0 is_stmt 1
.LVL12:
	entry	sp, 32
.LCFI2:
	.loc 1 48 0
	bnez.n	a2, .L9
	.loc 1 48 0 is_stmt 0 discriminator 1
	l32r	a13, .LC7
	l32r	a12, .LC8
	movi.n	a11, 0x30
	l32r	a10, .LC9
	call8	__assert_func
.LVL13:
.L9:
	.loc 1 50 0 is_stmt 1
	beqz.n	a3, .L10
.LBB2:
	.loc 1 51 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	mbedtls_sha256_finish_ret
.LVL14:
	.loc 1 52 0
	beqz.n	a10, .L10
	.loc 1 52 0 is_stmt 0 discriminator 1
	l32r	a13, .LC10
	l32r	a12, .LC8
	movi.n	a11, 0x34
	l32r	a10, .LC9
.LVL15:
	call8	__assert_func
.LVL16:
.L10:
.LBE2:
	.loc 1 54 0 is_stmt 1
	mov.n	a10, a2
	call8	mbedtls_sha256_free
.LVL17:
	.loc 1 55 0
	mov.n	a10, a2
	call8	free
.LVL18:
	retw.n
.LFE2:
	.size	bootloader_sha256_finish, .-bootloader_sha256_finish
	.section	.rodata.__func__$2351,"a",@progbits
	.align	4
	.type	__func__$2351, @object
	.size	__func__$2351, 25
__func__$2351:
	.string	"bootloader_sha256_finish"
	.section	.rodata.__func__$2344,"a",@progbits
	.align	4
	.type	__func__$2344, @object
	.size	__func__$2344, 23
__func__$2344:
	.string	"bootloader_sha256_data"
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
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x4
	.4byte	.LCFI0-.LFB0
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x4
	.4byte	.LCFI1-.LFB1
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI2-.LFB2
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 4 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include_priv/bootloader_sha.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/sha256.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdlib.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/assert.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x417
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF38
	.byte	0xc
	.4byte	.LASF39
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
	.byte	0x2
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
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x3
	.byte	0x15
	.4byte	0x28
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x3
	.byte	0x2d
	.4byte	0x4f
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x4
	.byte	0xd8
	.4byte	0x5a
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb4
	.uleb128 0x7
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x5
	.byte	0x1a
	.4byte	0x9e
	.uleb128 0x8
	.byte	0x6c
	.byte	0x6
	.byte	0x38
	.4byte	0xf9
	.uleb128 0x9
	.4byte	.LASF17
	.byte	0x6
	.byte	0x3a
	.4byte	0xf9
	.byte	0
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x6
	.byte	0x3b
	.4byte	0x109
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0x6
	.byte	0x3c
	.4byte	0x119
	.byte	0x28
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x6
	.byte	0x3d
	.4byte	0x48
	.byte	0x68
	.byte	0
	.uleb128 0xa
	.4byte	0x7a
	.4byte	0x109
	.uleb128 0xb
	.4byte	0x97
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.4byte	0x7a
	.4byte	0x119
	.uleb128 0xb
	.4byte	0x97
	.byte	0x7
	.byte	0
	.uleb128 0xa
	.4byte	0x33
	.4byte	0x129
	.uleb128 0xb
	.4byte	0x97
	.byte	0x3f
	.byte	0
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x6
	.byte	0x40
	.4byte	0xc0
	.uleb128 0xc
	.4byte	.LASF22
	.byte	0x1
	.byte	0x18
	.4byte	0xb5
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1a9
	.uleb128 0xd
	.string	"ctx"
	.byte	0x1
	.byte	0x1a
	.4byte	0x1a9
	.4byte	.LLST0
	.uleb128 0xd
	.string	"ret"
	.byte	0x1
	.byte	0x1f
	.4byte	0x48
	.4byte	.LLST1
	.uleb128 0xe
	.4byte	.LVL0
	.4byte	0x3c2
	.4byte	0x17f
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x6c
	.byte	0
	.uleb128 0xe
	.4byte	.LVL2
	.4byte	0x3cd
	.4byte	0x193
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x10
	.4byte	.LVL3
	.4byte	0x3d8
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x129
	.uleb128 0x11
	.4byte	.LASF23
	.byte	0x1
	.byte	0x26
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x291
	.uleb128 0x12
	.4byte	.LASF24
	.byte	0x1
	.byte	0x26
	.4byte	0xb5
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x12
	.4byte	.LASF25
	.byte	0x1
	.byte	0x26
	.4byte	0xae
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x12
	.4byte	.LASF26
	.byte	0x1
	.byte	0x26
	.4byte	0x85
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x13
	.4byte	.LASF29
	.4byte	0x2a1
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2344
	.uleb128 0x14
	.string	"ctx"
	.byte	0x1
	.byte	0x29
	.4byte	0x1a9
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xd
	.string	"ret"
	.byte	0x1
	.byte	0x2a
	.4byte	0x48
	.4byte	.LLST2
	.uleb128 0xe
	.4byte	.LVL8
	.4byte	0x3e3
	.4byte	0x245
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x28
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2344
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0xe
	.4byte	.LVL9
	.4byte	0x3ee
	.4byte	0x265
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x10
	.4byte	.LVL11
	.4byte	0x3e3
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x2b
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2344
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	0xa7
	.4byte	0x2a1
	.uleb128 0xb
	.4byte	0x97
	.byte	0x16
	.byte	0
	.uleb128 0x15
	.4byte	0x291
	.uleb128 0x11
	.4byte	.LASF27
	.byte	0x1
	.byte	0x2e
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3a7
	.uleb128 0x12
	.4byte	.LASF24
	.byte	0x1
	.byte	0x2e
	.4byte	0xb5
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x12
	.4byte	.LASF28
	.byte	0x1
	.byte	0x2e
	.4byte	0x3a7
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x13
	.4byte	.LASF29
	.4byte	0x3bd
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2351
	.uleb128 0x14
	.string	"ctx"
	.byte	0x1
	.byte	0x31
	.4byte	0x1a9
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x16
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.4byte	0x353
	.uleb128 0xd
	.string	"ret"
	.byte	0x1
	.byte	0x33
	.4byte	0x48
	.4byte	.LLST3
	.uleb128 0xe
	.4byte	.LVL14
	.4byte	0x3f9
	.4byte	0x327
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x10
	.4byte	.LVL16
	.4byte	0x3e3
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x34
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2351
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LVL13
	.4byte	0x3e3
	.4byte	0x382
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x30
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2351
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0xe
	.4byte	.LVL17
	.4byte	0x404
	.4byte	0x396
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x10
	.4byte	.LVL18
	.4byte	0x40f
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x6f
	.uleb128 0xa
	.4byte	0xa7
	.4byte	0x3bd
	.uleb128 0xb
	.4byte	0x97
	.byte	0x18
	.byte	0
	.uleb128 0x15
	.4byte	0x3ad
	.uleb128 0x17
	.4byte	.LASF30
	.4byte	.LASF30
	.byte	0x7
	.byte	0x65
	.uleb128 0x17
	.4byte	.LASF31
	.4byte	.LASF31
	.byte	0x6
	.byte	0x4b
	.uleb128 0x17
	.4byte	.LASF32
	.4byte	.LASF32
	.byte	0x6
	.byte	0x67
	.uleb128 0x17
	.4byte	.LASF33
	.4byte	.LASF33
	.byte	0x8
	.byte	0x29
	.uleb128 0x17
	.4byte	.LASF34
	.4byte	.LASF34
	.byte	0x6
	.byte	0x73
	.uleb128 0x17
	.4byte	.LASF35
	.4byte	.LASF35
	.byte	0x6
	.byte	0x80
	.uleb128 0x17
	.4byte	.LASF36
	.4byte	.LASF36
	.byte	0x6
	.byte	0x52
	.uleb128 0x17
	.4byte	.LASF37
	.4byte	.LASF37
	.byte	0x7
	.byte	0x5a
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xf
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.4byte	.LVL1
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL3
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL11
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x5a
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
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF4:
	.string	"__uint8_t"
.LASF11:
	.string	"size_t"
.LASF20:
	.string	"is224"
.LASF18:
	.string	"state"
.LASF27:
	.string	"bootloader_sha256_finish"
.LASF2:
	.string	"short int"
.LASF34:
	.string	"mbedtls_sha256_update_ret"
.LASF38:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF26:
	.string	"data_len"
.LASF31:
	.string	"mbedtls_sha256_init"
.LASF29:
	.string	"__func__"
.LASF25:
	.string	"data"
.LASF16:
	.string	"bootloader_sha256_handle_t"
.LASF1:
	.string	"unsigned char"
.LASF14:
	.string	"long unsigned int"
.LASF3:
	.string	"short unsigned int"
.LASF10:
	.string	"uint32_t"
.LASF24:
	.string	"handle"
.LASF32:
	.string	"mbedtls_sha256_starts_ret"
.LASF5:
	.string	"__uint32_t"
.LASF39:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/bootloader_sha.c"
.LASF23:
	.string	"bootloader_sha256_data"
.LASF33:
	.string	"__assert_func"
.LASF6:
	.string	"unsigned int"
.LASF8:
	.string	"long long unsigned int"
.LASF9:
	.string	"uint8_t"
.LASF17:
	.string	"total"
.LASF13:
	.string	"sizetype"
.LASF37:
	.string	"free"
.LASF7:
	.string	"long long int"
.LASF15:
	.string	"char"
.LASF35:
	.string	"mbedtls_sha256_finish_ret"
.LASF36:
	.string	"mbedtls_sha256_free"
.LASF21:
	.string	"mbedtls_sha256_context"
.LASF22:
	.string	"bootloader_sha256_start"
.LASF19:
	.string	"buffer"
.LASF28:
	.string	"digest"
.LASF12:
	.string	"long int"
.LASF0:
	.string	"signed char"
.LASF30:
	.string	"malloc"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
