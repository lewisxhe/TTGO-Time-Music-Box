	.file	"fast_crypto_internal-modexp.c"
	.text
.Ltext0:
	.section	.text.fast_crypto_mod_exp,"ax",@progbits
	.align	4
	.global	fast_crypto_mod_exp
	.type	fast_crypto_mod_exp, @function
fast_crypto_mod_exp:
.LFB1:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/fast_crypto/fast_crypto_internal-modexp.c"
	.loc 1 26 0
.LVL0:
	entry	sp, 96
.LCFI0:
.LVL1:
	.loc 1 29 0
	mov.n	a10, sp
	call8	mbedtls_mpi_init
.LVL2:
	.loc 1 30 0
	addi.n	a10, sp, 12
	call8	mbedtls_mpi_init
.LVL3:
	.loc 1 31 0
	addi	a10, sp, 24
	call8	mbedtls_mpi_init
.LVL4:
	.loc 1 32 0
	addi	a10, sp, 36
	call8	mbedtls_mpi_init
.LVL5:
	.loc 1 33 0
	addi	a10, sp, 48
	call8	mbedtls_mpi_init
.LVL6:
	.loc 1 35 0
	mov.n	a12, a3
	mov.n	a11, a2
	mov.n	a10, sp
	call8	mbedtls_mpi_read_binary
.LVL7:
	.loc 1 36 0
	mov.n	a12, a5
	mov.n	a11, a4
	addi.n	a10, sp, 12
	call8	mbedtls_mpi_read_binary
.LVL8:
	.loc 1 37 0
	mov.n	a12, a7
	mov.n	a11, a6
	addi	a10, sp, 24
	call8	mbedtls_mpi_read_binary
.LVL9:
	.loc 1 39 0
	addi	a14, sp, 48
	addi	a13, sp, 24
	addi.n	a12, sp, 12
	mov.n	a11, sp
	addi	a10, sp, 36
	call8	mbedtls_mpi_exp_mod
.LVL10:
	mov.n	a2, a10
.LVL11:
	.loc 1 40 0
	bgez	a10, .L2
	.loc 1 41 0
	mov.n	a10, sp
	call8	mbedtls_mpi_free
.LVL12:
	.loc 1 42 0
	addi.n	a10, sp, 12
	call8	mbedtls_mpi_free
.LVL13:
	.loc 1 43 0
	addi	a10, sp, 24
	call8	mbedtls_mpi_free
.LVL14:
	.loc 1 44 0
	addi	a10, sp, 36
	call8	mbedtls_mpi_free
.LVL15:
	.loc 1 45 0
	addi	a10, sp, 48
	call8	mbedtls_mpi_free
.LVL16:
	.loc 1 46 0
	retw.n
.L2:
	.loc 1 49 0
	l32i	a2, sp, 100
.LVL17:
	l32i.n	a12, a2, 0
	l32i	a11, sp, 96
	addi	a10, sp, 36
.LVL18:
	call8	mbedtls_mpi_write_binary
.LVL19:
	mov.n	a2, a10
.LVL20:
	.loc 1 52 0
	mov.n	a10, sp
	call8	mbedtls_mpi_free
.LVL21:
	.loc 1 53 0
	addi.n	a10, sp, 12
	call8	mbedtls_mpi_free
.LVL22:
	.loc 1 54 0
	addi	a10, sp, 24
	call8	mbedtls_mpi_free
.LVL23:
	.loc 1 55 0
	addi	a10, sp, 36
	call8	mbedtls_mpi_free
.LVL24:
	.loc 1 56 0
	addi	a10, sp, 48
	call8	mbedtls_mpi_free
.LVL25:
	.loc 1 59 0
	retw.n
.LFE1:
	.size	fast_crypto_mod_exp, .-fast_crypto_mod_exp
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
	.uleb128 0x60
	.align	4
.LEFDE0:
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 4 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/bignum.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x413
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
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x1a
	.4byte	0x69
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x3
	.byte	0x15
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x3
	.byte	0x2c
	.4byte	0x4c
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x2d
	.4byte	0x5e
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x4
	.byte	0xd8
	.4byte	0x69
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
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x5
	.byte	0xa8
	.4byte	0x94
	.uleb128 0x5
	.byte	0xc
	.byte	0x5
	.byte	0xb6
	.4byte	0xf8
	.uleb128 0x6
	.string	"s"
	.byte	0x5
	.byte	0xb8
	.4byte	0x57
	.byte	0
	.uleb128 0x6
	.string	"n"
	.byte	0x5
	.byte	0xb9
	.4byte	0x9f
	.byte	0x4
	.uleb128 0x6
	.string	"p"
	.byte	0x5
	.byte	0xba
	.4byte	0xf8
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0xc6
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x5
	.byte	0xbc
	.4byte	0xd1
	.uleb128 0x8
	.4byte	.LASF41
	.byte	0x1
	.byte	0x16
	.4byte	0x57
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3c5
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x1
	.byte	0x16
	.4byte	0x3c5
	.4byte	.LLST0
	.uleb128 0xa
	.4byte	.LASF21
	.byte	0x1
	.byte	0x16
	.4byte	0x9f
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xa
	.4byte	.LASF22
	.byte	0x1
	.byte	0x17
	.4byte	0x3c5
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xa
	.4byte	.LASF23
	.byte	0x1
	.byte	0x17
	.4byte	0x9f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0xa
	.4byte	.LASF24
	.byte	0x1
	.byte	0x18
	.4byte	0x3c5
	.uleb128 0x1
	.byte	0x56
	.uleb128 0xa
	.4byte	.LASF25
	.byte	0x1
	.byte	0x18
	.4byte	0x9f
	.uleb128 0x1
	.byte	0x57
	.uleb128 0xa
	.4byte	.LASF26
	.byte	0x1
	.byte	0x19
	.4byte	0x3d0
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0x1
	.byte	0x19
	.4byte	0x3d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0x1
	.byte	0x1b
	.4byte	0xfe
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0xb
	.4byte	.LASF29
	.byte	0x1
	.byte	0x1b
	.4byte	0xfe
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0x1
	.byte	0x1b
	.4byte	0xfe
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0x1
	.byte	0x1b
	.4byte	0xfe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0x1
	.byte	0x1b
	.4byte	0xfe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xc
	.string	"ret"
	.byte	0x1
	.byte	0x1c
	.4byte	0x89
	.4byte	.LLST1
	.uleb128 0xd
	.4byte	.LVL2
	.4byte	0x3dc
	.4byte	0x1fb
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0xd
	.4byte	.LVL3
	.4byte	0x3dc
	.4byte	0x210
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.byte	0
	.uleb128 0xd
	.4byte	.LVL4
	.4byte	0x3dc
	.4byte	0x225
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0xd
	.4byte	.LVL5
	.4byte	0x3dc
	.4byte	0x239
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.uleb128 0xd
	.4byte	.LVL6
	.4byte	0x3dc
	.4byte	0x24d
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0xd
	.4byte	.LVL7
	.4byte	0x3e7
	.4byte	0x26e
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
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
	.4byte	.LVL8
	.4byte	0x3e7
	.4byte	0x28f
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0xd
	.4byte	.LVL9
	.4byte	0x3e7
	.4byte	0x2b0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0xd
	.4byte	.LVL10
	.4byte	0x3f3
	.4byte	0x2df
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0xd
	.4byte	.LVL12
	.4byte	0x3ff
	.4byte	0x2f4
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0xd
	.4byte	.LVL13
	.4byte	0x3ff
	.4byte	0x309
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.byte	0
	.uleb128 0xd
	.4byte	.LVL14
	.4byte	0x3ff
	.4byte	0x31e
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0xd
	.4byte	.LVL15
	.4byte	0x3ff
	.4byte	0x332
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.uleb128 0xd
	.4byte	.LVL16
	.4byte	0x3ff
	.4byte	0x346
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0xd
	.4byte	.LVL19
	.4byte	0x40a
	.4byte	0x361
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.uleb128 0xd
	.4byte	.LVL21
	.4byte	0x3ff
	.4byte	0x376
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0xd
	.4byte	.LVL22
	.4byte	0x3ff
	.4byte	0x38b
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.byte	0
	.uleb128 0xd
	.4byte	.LVL23
	.4byte	0x3ff
	.4byte	0x3a0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0xd
	.4byte	.LVL24
	.4byte	0x3ff
	.4byte	0x3b4
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.uleb128 0xf
	.4byte	.LVL25
	.4byte	0x3ff
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x3cb
	.uleb128 0x10
	.4byte	0x7e
	.uleb128 0x7
	.byte	0x4
	.4byte	0x7e
	.uleb128 0x7
	.byte	0x4
	.4byte	0x9f
	.uleb128 0x11
	.4byte	.LASF33
	.4byte	.LASF33
	.byte	0x5
	.byte	0xc5
	.uleb128 0x12
	.4byte	.LASF34
	.4byte	.LASF34
	.byte	0x5
	.2byte	0x1b1
	.uleb128 0x12
	.4byte	.LASF35
	.4byte	.LASF35
	.byte	0x5
	.2byte	0x2ab
	.uleb128 0x11
	.4byte	.LASF36
	.4byte	.LASF36
	.byte	0x5
	.byte	0xcc
	.uleb128 0x12
	.4byte	.LASF37
	.4byte	.LASF37
	.byte	0x5
	.2byte	0x1bf
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
	.uleb128 0xc
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL11
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
	.4byte	.LVL11
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL20
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
.LASF39:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/fast_crypto/fast_crypto_internal-modexp.c"
.LASF13:
	.string	"size_t"
.LASF4:
	.string	"__uint8_t"
.LASF41:
	.string	"fast_crypto_mod_exp"
.LASF24:
	.string	"modulus"
.LASF5:
	.string	"__int32_t"
.LASF10:
	.string	"uint8_t"
.LASF25:
	.string	"modulus_len"
.LASF22:
	.string	"power"
.LASF33:
	.string	"mbedtls_mpi_init"
.LASF32:
	.string	"bn_rinv"
.LASF29:
	.string	"bn_exp"
.LASF35:
	.string	"mbedtls_mpi_exp_mod"
.LASF21:
	.string	"base_len"
.LASF16:
	.string	"long unsigned int"
.LASF3:
	.string	"short unsigned int"
.LASF27:
	.string	"result_len"
.LASF1:
	.string	"unsigned char"
.LASF30:
	.string	"bn_modulus"
.LASF6:
	.string	"__uint32_t"
.LASF19:
	.string	"mbedtls_mpi"
.LASF20:
	.string	"base"
.LASF7:
	.string	"unsigned int"
.LASF9:
	.string	"long long unsigned int"
.LASF28:
	.string	"bn_base"
.LASF26:
	.string	"result"
.LASF37:
	.string	"mbedtls_mpi_write_binary"
.LASF11:
	.string	"int32_t"
.LASF15:
	.string	"sizetype"
.LASF18:
	.string	"mbedtls_mpi_uint"
.LASF8:
	.string	"long long int"
.LASF38:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF17:
	.string	"char"
.LASF36:
	.string	"mbedtls_mpi_free"
.LASF2:
	.string	"short int"
.LASF34:
	.string	"mbedtls_mpi_read_binary"
.LASF12:
	.string	"uint32_t"
.LASF14:
	.string	"long int"
.LASF23:
	.string	"power_len"
.LASF40:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\wpa_supplicant"
.LASF31:
	.string	"bn_result"
.LASF0:
	.string	"signed char"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
