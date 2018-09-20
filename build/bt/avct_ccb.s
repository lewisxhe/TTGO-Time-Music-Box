	.file	"avct_ccb.c"
	.text
.Ltext0:
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC2:
	.string	"BT_AVCT"
	.align	4
.LC4:
	.string	"\033[0;33mW (%d) %s: Out of ccbs\033[0m\n"
	.section	.text.avct_ccb_alloc,"ax",@progbits
	.literal_position
	.literal .LC0, avct_cb+104
	.literal .LC1, avct_cb
	.literal .LC3, .LC2
	.literal .LC5, .LC4
	.align	4
	.global	avct_ccb_alloc
	.type	avct_ccb_alloc, @function
avct_ccb_alloc:
.LFB5:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/avct/avct_ccb.c"
	.loc 1 45 0
.LVL0:
	entry	sp, 32
.LCFI0:
	mov.n	a11, a2
.LVL1:
	.loc 1 49 0
	movi.n	a3, 0
	.loc 1 46 0
	l32r	a2, .LC0
.LVL2:
	.loc 1 49 0
	j	.L2
.LVL3:
.L5:
	.loc 1 50 0
	l8ui	a8, a2, 21
	bnez.n	a8, .L3
	.loc 1 51 0
	movi.n	a8, 1
	s8i	a8, a2, 21
	.loc 1 52 0
	movi.n	a12, 0xc
	mov.n	a10, a2
	call8	memcpy
.LVL4:
	.loc 1 54 0
	j	.L4
.LVL5:
.L3:
	.loc 1 49 0 discriminator 2
	addi.n	a3, a3, 1
.LVL6:
	addi	a2, a2, 24
.LVL7:
.L2:
	.loc 1 49 0 is_stmt 0 discriminator 1
	blti	a3, 3, .L5
.LVL8:
.L4:
	.loc 1 58 0 is_stmt 1
	bnei	a3, 3, .L6
.LVL9:
	.loc 1 61 0
	l32r	a2, .LC1
	l8ui	a2, a2, 180
	bltui	a2, 2, .L7
	.loc 1 61 0 is_stmt 0 discriminator 1
	call8	esp_log_timestamp
.LVL10:
	l32r	a11, .LC3
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC5
	movi.n	a10, 2
	call8	esp_log_write
.LVL11:
	.loc 1 60 0 is_stmt 1 discriminator 1
	movi.n	a2, 0
	retw.n
.L7:
	.loc 1 60 0 is_stmt 0
	movi.n	a2, 0
.LVL12:
.L6:
	.loc 1 64 0 is_stmt 1
	retw.n
.LFE5:
	.size	avct_ccb_alloc, .-avct_ccb_alloc
	.section	.text.avct_ccb_to_idx,"ax",@progbits
	.literal_position
	.literal .LC6, avct_cb+104
	.literal .LC7, -1431655765
	.align	4
	.global	avct_ccb_to_idx
	.type	avct_ccb_to_idx, @function
avct_ccb_to_idx:
.LFB7:
	.loc 1 110 0
.LVL13:
	entry	sp, 32
.LCFI1:
	.loc 1 112 0
	l32r	a8, .LC6
	sub	a2, a2, a8
.LVL14:
	srai	a2, a2, 3
	l32r	a8, .LC7
	mull	a2, a2, a8
	.loc 1 113 0
	extui	a2, a2, 0, 8
	retw.n
.LFE7:
	.size	avct_ccb_to_idx, .-avct_ccb_to_idx
	.section	.text.avct_ccb_dealloc,"ax",@progbits
	.align	4
	.global	avct_ccb_dealloc
	.type	avct_ccb_dealloc, @function
avct_ccb_dealloc:
.LFB6:
	.loc 1 78 0
.LVL15:
	entry	sp, 32
.LCFI2:
	extui	a3, a3, 0, 8
	extui	a4, a4, 0, 16
	.loc 1 79 0
	l32i.n	a6, a2, 0
.LVL16:
	.loc 1 91 0
	movi.n	a12, 0x18
	movi.n	a11, 0
	mov.n	a10, a2
	call8	memset
.LVL17:
	.loc 1 94 0
	movi	a8, 0xff
	beq	a3, a8, .L9
	.loc 1 95 0
	mov.n	a10, a2
	call8	avct_ccb_to_idx
.LVL18:
	mov.n	a13, a5
	mov.n	a12, a4
	mov.n	a11, a3
	callx8	a6
.LVL19:
.L9:
	retw.n
.LFE6:
	.size	avct_ccb_dealloc, .-avct_ccb_dealloc
	.section	.rodata.str1.4
	.align	4
.LC10:
	.string	"\033[0;33mW (%d) %s: ccb %d not allocated\033[0m\n"
	.align	4
.LC12:
	.string	"\033[0;33mW (%d) %s: No ccb for idx %d\033[0m\n"
	.section	.text.avct_ccb_by_idx,"ax",@progbits
	.literal_position
	.literal .LC8, avct_cb
	.literal .LC9, .LC2
	.literal .LC11, .LC10
	.literal .LC13, .LC12
	.align	4
	.global	avct_ccb_by_idx
	.type	avct_ccb_by_idx, @function
avct_ccb_by_idx:
.LFB8:
	.loc 1 126 0
.LVL20:
	entry	sp, 32
.LCFI3:
	extui	a3, a2, 0, 8
	.loc 1 130 0
	bgeui	a3, 3, .L12
	.loc 1 131 0
	slli	a9, a3, 1
	add.n	a2, a9, a3
.LVL21:
	slli	a8, a2, 3
	addi	a8, a8, 96
	l32r	a10, .LC8
	add.n	a8, a8, a10
	addi.n	a2, a8, 8
.LVL22:
	.loc 1 134 0
	add.n	a8, a9, a3
	slli	a9, a8, 3
	add.n	a9, a10, a9
	l8ui	a8, a9, 125
	bnez.n	a8, .L13
.LVL23:
	.loc 1 136 0
	l8ui	a2, a10, 180
	bltui	a2, 2, .L14
	.loc 1 136 0 is_stmt 0 discriminator 1
	call8	esp_log_timestamp
.LVL24:
	l32r	a11, .LC9
	mov.n	a15, a3
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC11
	movi.n	a10, 2
	call8	esp_log_write
.LVL25:
	.loc 1 135 0 is_stmt 1 discriminator 1
	movi.n	a2, 0
	retw.n
.LVL26:
.L12:
	.loc 1 140 0
	l32r	a2, .LC8
.LVL27:
	l8ui	a2, a2, 180
	bltui	a2, 2, .L15
	.loc 1 140 0 is_stmt 0 discriminator 1
	call8	esp_log_timestamp
.LVL28:
	l32r	a11, .LC9
	mov.n	a15, a3
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC13
	movi.n	a10, 2
	call8	esp_log_write
.LVL29:
	.loc 1 139 0 is_stmt 1 discriminator 1
	movi.n	a2, 0
	retw.n
.L14:
	.loc 1 135 0
	movi.n	a2, 0
	retw.n
.L15:
	.loc 1 139 0
	movi.n	a2, 0
.LVL30:
.L13:
	.loc 1 143 0
	retw.n
.LFE8:
	.size	avct_ccb_by_idx, .-avct_ccb_by_idx
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
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI0-.LFB5
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI1-.LFB7
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI2-.LFB6
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x4
	.4byte	.LCFI3-.LFB8
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/bt_types.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/avct_api.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/osi/include/osi/fixed_queue.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/avct/include/avct_int.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/log/include/esp_log.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x6c4
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF75
	.byte	0xc
	.4byte	.LASF76
	.4byte	.LASF77
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x4
	.4byte	.LASF5
	.byte	0x2
	.byte	0x12
	.4byte	0x4c
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x4
	.4byte	.LASF6
	.byte	0x2
	.byte	0x16
	.4byte	0x33
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x3
	.byte	0x15
	.4byte	0x41
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x3
	.byte	0x21
	.4byte	0x5a
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x4
	.byte	0x21
	.4byte	0x8f
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x4
	.byte	0x22
	.4byte	0x9a
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x4
	.byte	0x29
	.4byte	0xc6
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF18
	.uleb128 0x5
	.byte	0x8
	.byte	0x4
	.byte	0xc6
	.4byte	0x112
	.uleb128 0x6
	.4byte	.LASF19
	.byte	0x4
	.byte	0xc7
	.4byte	0x9a
	.byte	0
	.uleb128 0x7
	.string	"len"
	.byte	0x4
	.byte	0xc8
	.4byte	0x9a
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF20
	.byte	0x4
	.byte	0xc9
	.4byte	0x9a
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF21
	.byte	0x4
	.byte	0xca
	.4byte	0x9a
	.byte	0x6
	.uleb128 0x6
	.4byte	.LASF22
	.byte	0x4
	.byte	0xcb
	.4byte	0x112
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.4byte	0x8f
	.4byte	0x121
	.uleb128 0x9
	.4byte	0x7a
	.byte	0
	.uleb128 0x4
	.4byte	.LASF23
	.byte	0x4
	.byte	0xcc
	.4byte	0xcd
	.uleb128 0xa
	.4byte	.LASF24
	.byte	0x4
	.2byte	0x132
	.4byte	0x138
	.uleb128 0x8
	.4byte	0xa5
	.4byte	0x148
	.uleb128 0xb
	.4byte	0x7a
	.byte	0x5
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0xa5
	.uleb128 0xd
	.byte	0x4
	.4byte	0x2c
	.byte	0x8
	.byte	0x1f
	.4byte	0x17f
	.uleb128 0xe
	.4byte	.LASF25
	.byte	0
	.uleb128 0xe
	.4byte	.LASF26
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF27
	.byte	0x2
	.uleb128 0xe
	.4byte	.LASF28
	.byte	0x3
	.uleb128 0xe
	.4byte	.LASF29
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF30
	.byte	0x5
	.byte	0
	.uleb128 0x4
	.4byte	.LASF31
	.byte	0x5
	.byte	0x67
	.4byte	0x18a
	.uleb128 0xf
	.4byte	0x1a4
	.uleb128 0x10
	.4byte	0xa5
	.uleb128 0x10
	.4byte	0xa5
	.uleb128 0x10
	.4byte	0xb0
	.uleb128 0x10
	.4byte	0x148
	.byte	0
	.uleb128 0x4
	.4byte	.LASF32
	.byte	0x5
	.byte	0x6c
	.4byte	0x1af
	.uleb128 0xf
	.4byte	0x1c9
	.uleb128 0x10
	.4byte	0xa5
	.uleb128 0x10
	.4byte	0xa5
	.uleb128 0x10
	.4byte	0xa5
	.uleb128 0x10
	.4byte	0x1c9
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x121
	.uleb128 0x5
	.byte	0xc
	.byte	0x5
	.byte	0x70
	.4byte	0x214
	.uleb128 0x6
	.4byte	.LASF33
	.byte	0x5
	.byte	0x71
	.4byte	0x214
	.byte	0
	.uleb128 0x6
	.4byte	.LASF34
	.byte	0x5
	.byte	0x72
	.4byte	0x21a
	.byte	0x4
	.uleb128 0x7
	.string	"pid"
	.byte	0x5
	.byte	0x73
	.4byte	0xb0
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF35
	.byte	0x5
	.byte	0x74
	.4byte	0xa5
	.byte	0xa
	.uleb128 0x6
	.4byte	.LASF36
	.byte	0x5
	.byte	0x75
	.4byte	0xa5
	.byte	0xb
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x17f
	.uleb128 0xc
	.byte	0x4
	.4byte	0x1a4
	.uleb128 0x4
	.4byte	.LASF37
	.byte	0x5
	.byte	0x76
	.4byte	0x1cf
	.uleb128 0x4
	.4byte	.LASF38
	.byte	0x6
	.byte	0x1f
	.4byte	0x236
	.uleb128 0x11
	.4byte	.LASF38
	.uleb128 0xc
	.byte	0x4
	.4byte	0x22b
	.uleb128 0x5
	.byte	0x20
	.byte	0x7
	.byte	0x49
	.4byte	0x2da
	.uleb128 0x6
	.4byte	.LASF39
	.byte	0x7
	.byte	0x4a
	.4byte	0xb0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF40
	.byte	0x7
	.byte	0x4b
	.4byte	0xb0
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF41
	.byte	0x7
	.byte	0x4c
	.4byte	0xb0
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF42
	.byte	0x7
	.byte	0x4d
	.4byte	0xa5
	.byte	0x6
	.uleb128 0x6
	.4byte	.LASF43
	.byte	0x7
	.byte	0x4e
	.4byte	0xa5
	.byte	0x7
	.uleb128 0x6
	.4byte	.LASF44
	.byte	0x7
	.byte	0x4f
	.4byte	0xa5
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF45
	.byte	0x7
	.byte	0x50
	.4byte	0xa5
	.byte	0x9
	.uleb128 0x6
	.4byte	.LASF46
	.byte	0x7
	.byte	0x51
	.4byte	0x1c9
	.byte	0xc
	.uleb128 0x6
	.4byte	.LASF47
	.byte	0x7
	.byte	0x52
	.4byte	0xb0
	.byte	0x10
	.uleb128 0x6
	.4byte	.LASF48
	.byte	0x7
	.byte	0x53
	.4byte	0x12c
	.byte	0x12
	.uleb128 0x6
	.4byte	.LASF49
	.byte	0x7
	.byte	0x54
	.4byte	0x23b
	.byte	0x18
	.uleb128 0x6
	.4byte	.LASF50
	.byte	0x7
	.byte	0x55
	.4byte	0xbb
	.byte	0x1c
	.byte	0
	.uleb128 0x4
	.4byte	.LASF51
	.byte	0x7
	.byte	0x56
	.4byte	0x241
	.uleb128 0x5
	.byte	0x14
	.byte	0x7
	.byte	0x59
	.4byte	0x35a
	.uleb128 0x6
	.4byte	.LASF39
	.byte	0x7
	.byte	0x5a
	.4byte	0xb0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF40
	.byte	0x7
	.byte	0x5b
	.4byte	0xb0
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF41
	.byte	0x7
	.byte	0x5c
	.4byte	0xb0
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF42
	.byte	0x7
	.byte	0x5d
	.4byte	0xa5
	.byte	0x6
	.uleb128 0x6
	.4byte	.LASF43
	.byte	0x7
	.byte	0x5e
	.4byte	0xa5
	.byte	0x7
	.uleb128 0x6
	.4byte	.LASF44
	.byte	0x7
	.byte	0x5f
	.4byte	0xa5
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF45
	.byte	0x7
	.byte	0x60
	.4byte	0xa5
	.byte	0x9
	.uleb128 0x6
	.4byte	.LASF52
	.byte	0x7
	.byte	0x61
	.4byte	0x1c9
	.byte	0xc
	.uleb128 0x6
	.4byte	.LASF53
	.byte	0x7
	.byte	0x62
	.4byte	0xa5
	.byte	0x10
	.byte	0
	.uleb128 0x4
	.4byte	.LASF54
	.byte	0x7
	.byte	0x63
	.4byte	0x2e5
	.uleb128 0x5
	.byte	0x18
	.byte	0x7
	.byte	0x68
	.4byte	0x3a9
	.uleb128 0x7
	.string	"cc"
	.byte	0x7
	.byte	0x69
	.4byte	0x220
	.byte	0
	.uleb128 0x6
	.4byte	.LASF55
	.byte	0x7
	.byte	0x6a
	.4byte	0x3a9
	.byte	0xc
	.uleb128 0x6
	.4byte	.LASF56
	.byte	0x7
	.byte	0x6b
	.4byte	0x3af
	.byte	0x10
	.uleb128 0x6
	.4byte	.LASF53
	.byte	0x7
	.byte	0x6c
	.4byte	0xbb
	.byte	0x14
	.uleb128 0x6
	.4byte	.LASF42
	.byte	0x7
	.byte	0x6d
	.4byte	0xa5
	.byte	0x15
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x2da
	.uleb128 0xc
	.byte	0x4
	.4byte	0x35a
	.uleb128 0x4
	.4byte	.LASF57
	.byte	0x7
	.byte	0x6e
	.4byte	0x365
	.uleb128 0xc
	.byte	0x4
	.4byte	0x3b5
	.uleb128 0x5
	.byte	0xb8
	.byte	0x7
	.byte	0x83
	.4byte	0x417
	.uleb128 0x7
	.string	"lcb"
	.byte	0x7
	.byte	0x84
	.4byte	0x417
	.byte	0
	.uleb128 0x7
	.string	"bcb"
	.byte	0x7
	.byte	0x85
	.4byte	0x427
	.byte	0x40
	.uleb128 0x7
	.string	"ccb"
	.byte	0x7
	.byte	0x86
	.4byte	0x437
	.byte	0x68
	.uleb128 0x7
	.string	"mtu"
	.byte	0x7
	.byte	0x87
	.4byte	0xb0
	.byte	0xb0
	.uleb128 0x6
	.4byte	.LASF58
	.byte	0x7
	.byte	0x88
	.4byte	0xb0
	.byte	0xb2
	.uleb128 0x6
	.4byte	.LASF59
	.byte	0x7
	.byte	0x89
	.4byte	0xa5
	.byte	0xb4
	.byte	0
	.uleb128 0x8
	.4byte	0x2da
	.4byte	0x427
	.uleb128 0xb
	.4byte	0x7a
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.4byte	0x35a
	.4byte	0x437
	.uleb128 0xb
	.4byte	0x7a
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.4byte	0x3b5
	.4byte	0x447
	.uleb128 0xb
	.4byte	0x7a
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.4byte	.LASF60
	.byte	0x7
	.byte	0x8a
	.4byte	0x3c6
	.uleb128 0x12
	.4byte	.LASF62
	.byte	0x1
	.byte	0x2c
	.4byte	0x3c0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4e3
	.uleb128 0x13
	.4byte	.LASF64
	.byte	0x1
	.byte	0x2c
	.4byte	0x4e3
	.4byte	.LLST0
	.uleb128 0x14
	.4byte	.LASF61
	.byte	0x1
	.byte	0x2e
	.4byte	0x3c0
	.4byte	.LLST1
	.uleb128 0x15
	.string	"i"
	.byte	0x1
	.byte	0x2f
	.4byte	0x25
	.4byte	.LLST2
	.uleb128 0x16
	.4byte	.LVL4
	.4byte	0x69f
	.4byte	0x4af
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x3c
	.byte	0
	.uleb128 0x18
	.4byte	.LVL10
	.4byte	0x6a8
	.uleb128 0x19
	.4byte	.LVL11
	.4byte	0x6b3
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x220
	.uleb128 0x12
	.4byte	.LASF63
	.byte	0x1
	.byte	0x6d
	.4byte	0xa5
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x512
	.uleb128 0x13
	.4byte	.LASF61
	.byte	0x1
	.byte	0x6d
	.4byte	0x3c0
	.4byte	.LLST3
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF78
	.byte	0x1
	.byte	0x4d
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5b6
	.uleb128 0x1b
	.4byte	.LASF61
	.byte	0x1
	.byte	0x4d
	.4byte	0x3c0
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1b
	.4byte	.LASF19
	.byte	0x1
	.byte	0x4d
	.4byte	0xa5
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1b
	.4byte	.LASF65
	.byte	0x1
	.byte	0x4d
	.4byte	0xb0
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1b
	.4byte	.LASF66
	.byte	0x1
	.byte	0x4d
	.4byte	0x148
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1c
	.4byte	.LASF67
	.byte	0x1
	.byte	0x4f
	.4byte	0x214
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x16
	.4byte	.LVL17
	.4byte	0x6be
	.4byte	0x586
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x48
	.byte	0
	.uleb128 0x16
	.4byte	.LVL18
	.4byte	0x4e9
	.4byte	0x59a
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL19
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF68
	.byte	0x1
	.byte	0x7d
	.4byte	0x3c0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x664
	.uleb128 0x1e
	.string	"idx"
	.byte	0x1
	.byte	0x7d
	.4byte	0xa5
	.4byte	.LLST4
	.uleb128 0x14
	.4byte	.LASF61
	.byte	0x1
	.byte	0x7f
	.4byte	0x3c0
	.4byte	.LLST5
	.uleb128 0x18
	.4byte	.LVL24
	.4byte	0x6a8
	.uleb128 0x16
	.4byte	.LVL25
	.4byte	0x6b3
	.4byte	0x62a
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL28
	.4byte	0x6a8
	.uleb128 0x19
	.4byte	.LVL29
	.4byte	0x6b3
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC12
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF69
	.byte	0x4
	.2byte	0x2cc
	.4byte	0x677
	.byte	0x6
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.uleb128 0x20
	.4byte	0x138
	.uleb128 0x1f
	.4byte	.LASF70
	.byte	0x4
	.2byte	0x2cd
	.4byte	0x68f
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	0x138
	.uleb128 0x21
	.4byte	.LASF79
	.byte	0x7
	.byte	0xdd
	.4byte	0x447
	.uleb128 0x22
	.4byte	.LASF73
	.4byte	.LASF73
	.uleb128 0x23
	.4byte	.LASF71
	.4byte	.LASF71
	.byte	0x8
	.byte	0x57
	.uleb128 0x23
	.4byte	.LASF72
	.4byte	.LASF72
	.byte	0x8
	.byte	0x6b
	.uleb128 0x22
	.4byte	.LASF74
	.4byte	.LASF74
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
	.uleb128 0x8
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
	.uleb128 0xe
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
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x4
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL2
	.4byte	.LVL4-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL4-1
	.4byte	.LVL5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL8
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL9
	.4byte	.LVL12
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL14
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL21
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL27
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL23
	.4byte	.LVL30
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x34
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF70:
	.string	"bd_addr_null"
.LASF65:
	.string	"result"
.LASF66:
	.string	"bd_addr"
.LASF43:
	.string	"state"
.LASF63:
	.string	"avct_ccb_to_idx"
.LASF23:
	.string	"BT_HDR"
.LASF4:
	.string	"short int"
.LASF35:
	.string	"role"
.LASF10:
	.string	"sizetype"
.LASF31:
	.string	"tAVCT_CTRL_CBACK"
.LASF73:
	.string	"memcpy"
.LASF49:
	.string	"tx_q"
.LASF78:
	.string	"avct_ccb_dealloc"
.LASF19:
	.string	"event"
.LASF6:
	.string	"__uint16_t"
.LASF58:
	.string	"mtu_br"
.LASF13:
	.string	"uint8_t"
.LASF32:
	.string	"tAVCT_MSG_CBACK"
.LASF50:
	.string	"cong"
.LASF55:
	.string	"p_lcb"
.LASF51:
	.string	"tAVCT_LCB"
.LASF72:
	.string	"esp_log_write"
.LASF57:
	.string	"tAVCT_CCB"
.LASF61:
	.string	"p_ccb"
.LASF7:
	.string	"long long int"
.LASF76:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/avct/avct_ccb.c"
.LASF42:
	.string	"allocated"
.LASF74:
	.string	"memset"
.LASF17:
	.string	"BOOLEAN"
.LASF9:
	.string	"long int"
.LASF20:
	.string	"offset"
.LASF28:
	.string	"ESP_LOG_INFO"
.LASF15:
	.string	"UINT8"
.LASF48:
	.string	"peer_addr"
.LASF54:
	.string	"tAVCT_BCB"
.LASF56:
	.string	"p_bcb"
.LASF62:
	.string	"avct_ccb_alloc"
.LASF45:
	.string	"ch_flags"
.LASF36:
	.string	"control"
.LASF68:
	.string	"avct_ccb_by_idx"
.LASF3:
	.string	"unsigned char"
.LASF77:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\bt"
.LASF44:
	.string	"ch_state"
.LASF64:
	.string	"p_cc"
.LASF2:
	.string	"signed char"
.LASF8:
	.string	"long long unsigned int"
.LASF38:
	.string	"fixed_queue_t"
.LASF0:
	.string	"unsigned int"
.LASF14:
	.string	"uint16_t"
.LASF21:
	.string	"layer_specific"
.LASF1:
	.string	"short unsigned int"
.LASF52:
	.string	"p_tx_msg"
.LASF24:
	.string	"BD_ADDR"
.LASF16:
	.string	"UINT16"
.LASF12:
	.string	"char"
.LASF60:
	.string	"tAVCT_CB"
.LASF37:
	.string	"tAVCT_CC"
.LASF29:
	.string	"ESP_LOG_DEBUG"
.LASF40:
	.string	"ch_result"
.LASF25:
	.string	"ESP_LOG_NONE"
.LASF59:
	.string	"trace_level"
.LASF18:
	.string	"_Bool"
.LASF39:
	.string	"peer_mtu"
.LASF22:
	.string	"data"
.LASF27:
	.string	"ESP_LOG_WARN"
.LASF33:
	.string	"p_ctrl_cback"
.LASF11:
	.string	"long unsigned int"
.LASF41:
	.string	"ch_lcid"
.LASF46:
	.string	"p_rx_msg"
.LASF30:
	.string	"ESP_LOG_VERBOSE"
.LASF47:
	.string	"conflict_lcid"
.LASF71:
	.string	"esp_log_timestamp"
.LASF67:
	.string	"p_cback"
.LASF69:
	.string	"bd_addr_any"
.LASF34:
	.string	"p_msg_cback"
.LASF79:
	.string	"avct_cb"
.LASF53:
	.string	"ch_close"
.LASF75:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF26:
	.string	"ESP_LOG_ERROR"
.LASF5:
	.string	"__uint8_t"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
