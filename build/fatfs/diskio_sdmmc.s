	.file	"diskio_sdmmc.c"
	.text
.Ltext0:
	.section	.text.ff_sdmmc_initialize,"ax",@progbits
	.align	4
	.global	ff_sdmmc_initialize
	.type	ff_sdmmc_initialize, @function
ff_sdmmc_initialize:
.LFB14:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/fatfs/src/diskio_sdmmc.c"
	.loc 1 26 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 28 0
	movi.n	a2, 0
.LVL1:
	retw.n
.LFE14:
	.size	ff_sdmmc_initialize, .-ff_sdmmc_initialize
	.section	.text.ff_sdmmc_status,"ax",@progbits
	.align	4
	.global	ff_sdmmc_status
	.type	ff_sdmmc_status, @function
ff_sdmmc_status:
.LFB15:
	.loc 1 31 0
.LVL2:
	entry	sp, 32
.LCFI1:
	.loc 1 33 0
	movi.n	a2, 0
.LVL3:
	retw.n
.LFE15:
	.size	ff_sdmmc_status, .-ff_sdmmc_status
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC1:
	.string	"card"
	.align	4
.LC4:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/fatfs/src/diskio_sdmmc.c"
	.section	.text.ff_sdmmc_ioctl,"ax",@progbits
	.literal_position
	.literal .LC0, s_cards
	.literal .LC2, .LC1
	.literal .LC3, __func__$5376
	.literal .LC5, .LC4
	.align	4
	.global	ff_sdmmc_ioctl
	.type	ff_sdmmc_ioctl, @function
ff_sdmmc_ioctl:
.LFB18:
	.loc 1 60 0
.LVL4:
	entry	sp, 32
.LCFI2:
	extui	a2, a2, 0, 8
	extui	a3, a3, 0, 8
	.loc 1 61 0
	l32r	a8, .LC0
	addx4	a2, a2, a8
.LVL5:
	l32i.n	a2, a2, 0
.LVL6:
	.loc 1 62 0
	bnez.n	a2, .L4
	.loc 1 62 0 is_stmt 0 discriminator 1
	l32r	a13, .LC2
	l32r	a12, .LC3
	movi.n	a11, 0x3e
	l32r	a10, .LC5
	call8	__assert_func
.LVL7:
.L4:
	.loc 1 63 0 is_stmt 1
	beqi	a3, 1, .L6
	beqz.n	a3, .L7
	bnei	a3, 2, .L10
	j	.L8
.L7:
	.loc 1 65 0
	movi.n	a2, 0
.LVL8:
	retw.n
.LVL9:
.L6:
	.loc 1 67 0
	l32i	a2, a2, 92
.LVL10:
	s32i.n	a2, a4, 0
	.loc 1 68 0
	movi.n	a2, 0
	retw.n
.LVL11:
.L8:
	.loc 1 70 0
	l32i	a2, a2, 96
.LVL12:
	s16i	a2, a4, 0
	.loc 1 71 0
	movi.n	a2, 0
	retw.n
.LVL13:
.L10:
	.loc 1 73 0
	movi.n	a2, 1
.LVL14:
	.loc 1 76 0
	retw.n
.LFE18:
	.size	ff_sdmmc_ioctl, .-ff_sdmmc_ioctl
	.section	.rodata.str1.4
	.align	4
.LC10:
	.string	"diskio_sdmmc"
	.align	4
.LC12:
	.string	"\033[0;31mE (%d) %s: sdmmc_read_blocks failed (%d)\033[0m\n"
	.section	.text.ff_sdmmc_read,"ax",@progbits
	.literal_position
	.literal .LC6, s_cards
	.literal .LC7, .LC1
	.literal .LC8, __func__$5359
	.literal .LC9, .LC4
	.literal .LC11, .LC10
	.literal .LC13, .LC12
	.align	4
	.global	ff_sdmmc_read
	.type	ff_sdmmc_read, @function
ff_sdmmc_read:
.LFB16:
	.loc 1 36 0
.LVL15:
	entry	sp, 32
.LCFI3:
	extui	a2, a2, 0, 8
	.loc 1 37 0
	l32r	a8, .LC6
	addx4	a2, a2, a8
.LVL16:
	l32i.n	a10, a2, 0
.LVL17:
	.loc 1 38 0
	bnez.n	a10, .L12
	.loc 1 38 0 is_stmt 0 discriminator 1
	l32r	a13, .LC7
	l32r	a12, .LC8
	movi.n	a11, 0x26
	l32r	a10, .LC9
.LVL18:
	call8	__assert_func
.LVL19:
.L12:
	.loc 1 39 0 is_stmt 1
	mov.n	a13, a5
	mov.n	a12, a4
	mov.n	a11, a3
	call8	sdmmc_read_sectors
.LVL20:
	mov.n	a2, a10
.LVL21:
	.loc 1 40 0
	beqz.n	a10, .L14
	.loc 1 41 0 discriminator 2
	call8	esp_log_timestamp
.LVL22:
	l32r	a11, .LC11
	mov.n	a15, a2
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC13
	movi.n	a10, 1
	call8	esp_log_write
.LVL23:
	.loc 1 42 0 discriminator 2
	movi.n	a2, 1
.LVL24:
	retw.n
.LVL25:
.L14:
	.loc 1 44 0
	movi.n	a2, 0
.LVL26:
	.loc 1 45 0
	retw.n
.LFE16:
	.size	ff_sdmmc_read, .-ff_sdmmc_read
	.section	.rodata.str1.4
	.align	4
.LC19:
	.string	"\033[0;31mE (%d) %s: sdmmc_write_blocks failed (%d)\033[0m\n"
	.section	.text.ff_sdmmc_write,"ax",@progbits
	.literal_position
	.literal .LC14, s_cards
	.literal .LC15, .LC1
	.literal .LC16, __func__$5368
	.literal .LC17, .LC4
	.literal .LC18, .LC10
	.literal .LC20, .LC19
	.align	4
	.global	ff_sdmmc_write
	.type	ff_sdmmc_write, @function
ff_sdmmc_write:
.LFB17:
	.loc 1 48 0
.LVL27:
	entry	sp, 32
.LCFI4:
	extui	a2, a2, 0, 8
	.loc 1 49 0
	l32r	a8, .LC14
	addx4	a2, a2, a8
.LVL28:
	l32i.n	a10, a2, 0
.LVL29:
	.loc 1 50 0
	bnez.n	a10, .L16
	.loc 1 50 0 is_stmt 0 discriminator 1
	l32r	a13, .LC15
	l32r	a12, .LC16
	movi.n	a11, 0x32
	l32r	a10, .LC17
.LVL30:
	call8	__assert_func
.LVL31:
.L16:
	.loc 1 51 0 is_stmt 1
	mov.n	a13, a5
	mov.n	a12, a4
	mov.n	a11, a3
	call8	sdmmc_write_sectors
.LVL32:
	mov.n	a2, a10
.LVL33:
	.loc 1 52 0
	beqz.n	a10, .L18
	.loc 1 53 0 discriminator 2
	call8	esp_log_timestamp
.LVL34:
	l32r	a11, .LC18
	mov.n	a15, a2
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC20
	movi.n	a10, 1
	call8	esp_log_write
.LVL35:
	.loc 1 54 0 discriminator 2
	movi.n	a2, 1
.LVL36:
	retw.n
.LVL37:
.L18:
	.loc 1 56 0
	movi.n	a2, 0
.LVL38:
	.loc 1 57 0
	retw.n
.LFE17:
	.size	ff_sdmmc_write, .-ff_sdmmc_write
	.section	.text.ff_diskio_register_sdmmc,"ax",@progbits
	.literal_position
	.literal .LC21, s_cards
	.literal .LC22, sdmmc_impl$5385
	.align	4
	.global	ff_diskio_register_sdmmc
	.type	ff_diskio_register_sdmmc, @function
ff_diskio_register_sdmmc:
.LFB19:
	.loc 1 79 0
.LVL39:
	entry	sp, 32
.LCFI5:
	extui	a10, a2, 0, 8
	.loc 1 87 0
	l32r	a8, .LC21
	addx4	a8, a10, a8
	s32i.n	a3, a8, 0
	.loc 1 88 0
	l32r	a11, .LC22
	call8	ff_diskio_register
.LVL40:
	retw.n
.LFE19:
	.size	ff_diskio_register_sdmmc, .-ff_diskio_register_sdmmc
	.section	.rodata.sdmmc_impl$5385,"a",@progbits
	.align	4
	.type	sdmmc_impl$5385, @object
	.size	sdmmc_impl$5385, 20
sdmmc_impl$5385:
	.word	ff_sdmmc_initialize
	.word	ff_sdmmc_status
	.word	ff_sdmmc_read
	.word	ff_sdmmc_write
	.word	ff_sdmmc_ioctl
	.section	.rodata.__func__$5376,"a",@progbits
	.align	4
	.type	__func__$5376, @object
	.size	__func__$5376, 15
__func__$5376:
	.string	"ff_sdmmc_ioctl"
	.section	.rodata.__func__$5368,"a",@progbits
	.align	4
	.type	__func__$5368, @object
	.size	__func__$5368, 15
__func__$5368:
	.string	"ff_sdmmc_write"
	.section	.rodata.__func__$5359,"a",@progbits
	.align	4
	.type	__func__$5359, @object
	.size	__func__$5359, 14
__func__$5359:
	.string	"ff_sdmmc_read"
	.section	.bss.s_cards,"aw",@nobits
	.align	4
	.type	s_cards, @object
	.size	s_cards, 8
s_cards:
	.zero	8
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
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI0-.LFB14
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI1-.LFB15
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI2-.LFB18
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI3-.LFB16
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI4-.LFB17
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI5-.LFB19
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/fatfs/src/integer.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 4 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_err.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/portmacro.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/sdmmc_types.h"
	.file 9 "D:/ESP32/esp-idf-v3.1-rc1/components/fatfs/src/diskio.h"
	.file 10 "D:/ESP32/esp-idf-v3.1-rc1/components/log/include/esp_log.h"
	.file 11 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/assert.h"
	.file 12 "D:/ESP32/esp-idf-v3.1-rc1/components/sdmmc/include/sdmmc_cmd.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x9ee
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF110
	.byte	0xc
	.4byte	.LASF111
	.4byte	.LASF112
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF1
	.byte	0x2
	.byte	0x13
	.4byte	0x37
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF2
	.byte	0x2
	.byte	0x16
	.4byte	0x49
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x1a
	.4byte	0x62
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x2
	.byte	0x1f
	.4byte	0x7b
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF11
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x16
	.4byte	0x62
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x3
	.byte	0x19
	.4byte	0x25
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0x1a
	.4byte	0x37
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF15
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x4
	.byte	0xd8
	.4byte	0x37
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF17
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF18
	.uleb128 0x6
	.byte	0x4
	.4byte	0xd9
	.uleb128 0x7
	.4byte	0xcc
	.uleb128 0x8
	.4byte	0xcc
	.4byte	0xee
	.uleb128 0x9
	.4byte	0xc5
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x5
	.byte	0x21
	.4byte	0x90
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x5
	.byte	0x2c
	.4byte	0x9b
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x5
	.byte	0x2d
	.4byte	0xa6
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x6
	.byte	0x18
	.4byte	0xf9
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.4byte	.LASF23
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x7
	.byte	0x76
	.4byte	0x104
	.uleb128 0xa
	.byte	0x1c
	.byte	0x8
	.byte	0x1d
	.4byte	0x189
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0x8
	.byte	0x1e
	.4byte	0x25
	.byte	0
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0x8
	.byte	0x1f
	.4byte	0x25
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0x8
	.byte	0x20
	.4byte	0x25
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0x8
	.byte	0x21
	.4byte	0x25
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF29
	.byte	0x8
	.byte	0x22
	.4byte	0x25
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0x8
	.byte	0x23
	.4byte	0x25
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0x8
	.byte	0x24
	.4byte	0x25
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.4byte	.LASF32
	.byte	0x8
	.byte	0x25
	.4byte	0x12c
	.uleb128 0xa
	.byte	0x1c
	.byte	0x8
	.byte	0x2a
	.4byte	0x1e5
	.uleb128 0xb
	.4byte	.LASF33
	.byte	0x8
	.byte	0x2b
	.4byte	0x25
	.byte	0
	.uleb128 0xb
	.4byte	.LASF34
	.byte	0x8
	.byte	0x2c
	.4byte	0x25
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0x8
	.byte	0x2d
	.4byte	0xde
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF36
	.byte	0x8
	.byte	0x2e
	.4byte	0x25
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF37
	.byte	0x8
	.byte	0x2f
	.4byte	0x25
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF38
	.byte	0x8
	.byte	0x30
	.4byte	0x25
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.4byte	.LASF39
	.byte	0x8
	.byte	0x31
	.4byte	0x194
	.uleb128 0xa
	.byte	0x8
	.byte	0x8
	.byte	0x36
	.4byte	0x211
	.uleb128 0xb
	.4byte	.LASF40
	.byte	0x8
	.byte	0x37
	.4byte	0x25
	.byte	0
	.uleb128 0xb
	.4byte	.LASF41
	.byte	0x8
	.byte	0x38
	.4byte	0x25
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF42
	.byte	0x8
	.byte	0x39
	.4byte	0x1f0
	.uleb128 0x3
	.4byte	.LASF43
	.byte	0x8
	.byte	0x3e
	.4byte	0x227
	.uleb128 0x8
	.4byte	0x104
	.4byte	0x237
	.uleb128 0x9
	.4byte	0xc5
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.byte	0x30
	.byte	0x8
	.byte	0x4a
	.4byte	0x2ac
	.uleb128 0xb
	.4byte	.LASF44
	.byte	0x8
	.byte	0x4b
	.4byte	0x104
	.byte	0
	.uleb128 0xc
	.string	"arg"
	.byte	0x8
	.byte	0x4c
	.4byte	0x104
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF45
	.byte	0x8
	.byte	0x4d
	.4byte	0x21c
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF46
	.byte	0x8
	.byte	0x4e
	.4byte	0xc3
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF47
	.byte	0x8
	.byte	0x4f
	.4byte	0xb8
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF48
	.byte	0x8
	.byte	0x50
	.4byte	0xb8
	.byte	0x20
	.uleb128 0xb
	.4byte	.LASF49
	.byte	0x8
	.byte	0x51
	.4byte	0x25
	.byte	0x24
	.uleb128 0xb
	.4byte	.LASF50
	.byte	0x8
	.byte	0x6b
	.4byte	0x10f
	.byte	0x28
	.uleb128 0xb
	.4byte	.LASF51
	.byte	0x8
	.byte	0x6c
	.4byte	0x25
	.byte	0x2c
	.byte	0
	.uleb128 0x3
	.4byte	.LASF52
	.byte	0x8
	.byte	0x6d
	.4byte	0x237
	.uleb128 0xa
	.byte	0x34
	.byte	0x8
	.byte	0x75
	.4byte	0x35c
	.uleb128 0xb
	.4byte	.LASF49
	.byte	0x8
	.byte	0x76
	.4byte	0x104
	.byte	0
	.uleb128 0xb
	.4byte	.LASF53
	.byte	0x8
	.byte	0x7b
	.4byte	0x25
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF54
	.byte	0x8
	.byte	0x7c
	.4byte	0x25
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF55
	.byte	0x8
	.byte	0x80
	.4byte	0x35c
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF56
	.byte	0x8
	.byte	0x81
	.4byte	0x368
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF57
	.byte	0x8
	.byte	0x82
	.4byte	0x382
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF58
	.byte	0x8
	.byte	0x83
	.4byte	0x397
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF59
	.byte	0x8
	.byte	0x84
	.4byte	0x3b1
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF60
	.byte	0x8
	.byte	0x85
	.4byte	0x3d1
	.byte	0x20
	.uleb128 0xb
	.4byte	.LASF61
	.byte	0x8
	.byte	0x86
	.4byte	0x368
	.byte	0x24
	.uleb128 0xb
	.4byte	.LASF62
	.byte	0x8
	.byte	0x87
	.4byte	0x3e6
	.byte	0x28
	.uleb128 0xb
	.4byte	.LASF63
	.byte	0x8
	.byte	0x88
	.4byte	0x400
	.byte	0x2c
	.uleb128 0xb
	.4byte	.LASF64
	.byte	0x8
	.byte	0x89
	.4byte	0x25
	.byte	0x30
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.byte	0x4
	.4byte	.LASF65
	.uleb128 0xd
	.4byte	0x10f
	.uleb128 0x6
	.byte	0x4
	.4byte	0x363
	.uleb128 0xe
	.4byte	0x10f
	.4byte	0x382
	.uleb128 0xf
	.4byte	0x25
	.uleb128 0xf
	.4byte	0xb8
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x36e
	.uleb128 0xe
	.4byte	0xb8
	.4byte	0x397
	.uleb128 0xf
	.4byte	0x25
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x388
	.uleb128 0xe
	.4byte	0x10f
	.4byte	0x3b1
	.uleb128 0xf
	.4byte	0x25
	.uleb128 0xf
	.4byte	0x104
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x39d
	.uleb128 0xe
	.4byte	0x10f
	.4byte	0x3cb
	.uleb128 0xf
	.4byte	0x25
	.uleb128 0xf
	.4byte	0x3cb
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2ac
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3b7
	.uleb128 0xe
	.4byte	0x10f
	.4byte	0x3e6
	.uleb128 0xf
	.4byte	0x25
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3d7
	.uleb128 0xe
	.4byte	0x10f
	.4byte	0x400
	.uleb128 0xf
	.4byte	0x25
	.uleb128 0xf
	.4byte	0x121
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3ec
	.uleb128 0x3
	.4byte	.LASF66
	.byte	0x8
	.byte	0x8a
	.4byte	0x2b7
	.uleb128 0xa
	.byte	0x80
	.byte	0x8
	.byte	0x8f
	.4byte	0x49e
	.uleb128 0xb
	.4byte	.LASF67
	.byte	0x8
	.byte	0x90
	.4byte	0x406
	.byte	0
	.uleb128 0xc
	.string	"ocr"
	.byte	0x8
	.byte	0x91
	.4byte	0x104
	.byte	0x34
	.uleb128 0xc
	.string	"cid"
	.byte	0x8
	.byte	0x92
	.4byte	0x1e5
	.byte	0x38
	.uleb128 0xc
	.string	"csd"
	.byte	0x8
	.byte	0x93
	.4byte	0x189
	.byte	0x54
	.uleb128 0xc
	.string	"scr"
	.byte	0x8
	.byte	0x94
	.4byte	0x211
	.byte	0x70
	.uleb128 0xc
	.string	"rca"
	.byte	0x8
	.byte	0x95
	.4byte	0xee
	.byte	0x78
	.uleb128 0x10
	.4byte	.LASF68
	.byte	0x8
	.byte	0x96
	.4byte	0x104
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x78
	.uleb128 0x10
	.4byte	.LASF69
	.byte	0x8
	.byte	0x97
	.4byte	0x104
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x78
	.uleb128 0x10
	.4byte	.LASF70
	.byte	0x8
	.byte	0x98
	.4byte	0x104
	.byte	0x4
	.byte	0x3
	.byte	0xb
	.byte	0x78
	.uleb128 0x10
	.4byte	.LASF71
	.byte	0x8
	.byte	0x99
	.4byte	0x104
	.byte	0x4
	.byte	0x1b
	.byte	0x5
	.byte	0x7c
	.byte	0
	.uleb128 0x3
	.4byte	.LASF72
	.byte	0x8
	.byte	0x9a
	.4byte	0x411
	.uleb128 0x3
	.4byte	.LASF73
	.byte	0x9
	.byte	0x11
	.4byte	0x3e
	.uleb128 0x11
	.byte	0x4
	.4byte	0x37
	.byte	0x9
	.byte	0x14
	.4byte	0x4df
	.uleb128 0x12
	.4byte	.LASF74
	.byte	0
	.uleb128 0x12
	.4byte	.LASF75
	.byte	0x1
	.uleb128 0x12
	.4byte	.LASF76
	.byte	0x2
	.uleb128 0x12
	.4byte	.LASF77
	.byte	0x3
	.uleb128 0x12
	.4byte	.LASF78
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF79
	.byte	0x9
	.byte	0x1a
	.4byte	0x4b4
	.uleb128 0xa
	.byte	0x14
	.byte	0x9
	.byte	0x34
	.4byte	0x52f
	.uleb128 0xb
	.4byte	.LASF56
	.byte	0x9
	.byte	0x35
	.4byte	0x53e
	.byte	0
	.uleb128 0xb
	.4byte	.LASF80
	.byte	0x9
	.byte	0x36
	.4byte	0x53e
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF81
	.byte	0x9
	.byte	0x37
	.4byte	0x568
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF82
	.byte	0x9
	.byte	0x38
	.4byte	0x597
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF83
	.byte	0x9
	.byte	0x39
	.4byte	0x5b6
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.4byte	0x4a9
	.4byte	0x53e
	.uleb128 0xf
	.4byte	0x3e
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x52f
	.uleb128 0xe
	.4byte	0x4df
	.4byte	0x562
	.uleb128 0xf
	.4byte	0x3e
	.uleb128 0xf
	.4byte	0x562
	.uleb128 0xf
	.4byte	0x70
	.uleb128 0xf
	.4byte	0x2c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3e
	.uleb128 0x6
	.byte	0x4
	.4byte	0x544
	.uleb128 0xe
	.4byte	0x4df
	.4byte	0x58c
	.uleb128 0xf
	.4byte	0x3e
	.uleb128 0xf
	.4byte	0x58c
	.uleb128 0xf
	.4byte	0x70
	.uleb128 0xf
	.4byte	0x2c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x592
	.uleb128 0x7
	.4byte	0x3e
	.uleb128 0x6
	.byte	0x4
	.4byte	0x56e
	.uleb128 0xe
	.4byte	0x4df
	.4byte	0x5b6
	.uleb128 0xf
	.4byte	0x3e
	.uleb128 0xf
	.4byte	0x3e
	.uleb128 0xf
	.4byte	0xc3
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x59d
	.uleb128 0x3
	.4byte	.LASF84
	.byte	0x9
	.byte	0x3a
	.4byte	0x4ea
	.uleb128 0x11
	.byte	0x4
	.4byte	0x37
	.byte	0xa
	.byte	0x1f
	.4byte	0x5f8
	.uleb128 0x12
	.4byte	.LASF85
	.byte	0
	.uleb128 0x12
	.4byte	.LASF86
	.byte	0x1
	.uleb128 0x12
	.4byte	.LASF87
	.byte	0x2
	.uleb128 0x12
	.4byte	.LASF88
	.byte	0x3
	.uleb128 0x12
	.4byte	.LASF89
	.byte	0x4
	.uleb128 0x12
	.4byte	.LASF90
	.byte	0x5
	.byte	0
	.uleb128 0x13
	.4byte	.LASF91
	.byte	0x1
	.byte	0x19
	.4byte	0x4a9
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x621
	.uleb128 0x14
	.4byte	.LASF93
	.byte	0x1
	.byte	0x19
	.4byte	0x3e
	.4byte	.LLST0
	.byte	0
	.uleb128 0x13
	.4byte	.LASF92
	.byte	0x1
	.byte	0x1e
	.4byte	0x4a9
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x64a
	.uleb128 0x14
	.4byte	.LASF93
	.byte	0x1
	.byte	0x1e
	.4byte	0x3e
	.4byte	.LLST1
	.byte	0
	.uleb128 0x13
	.4byte	.LASF94
	.byte	0x1
	.byte	0x3b
	.4byte	0x4df
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6d6
	.uleb128 0x14
	.4byte	.LASF93
	.byte	0x1
	.byte	0x3b
	.4byte	0x3e
	.4byte	.LLST2
	.uleb128 0x15
	.string	"cmd"
	.byte	0x1
	.byte	0x3b
	.4byte	0x3e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x16
	.4byte	.LASF95
	.byte	0x1
	.byte	0x3b
	.4byte	0xc3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x17
	.4byte	.LASF99
	.byte	0x1
	.byte	0x3d
	.4byte	0x6d6
	.4byte	.LLST3
	.uleb128 0x18
	.4byte	.LASF100
	.4byte	0x6ec
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5376
	.uleb128 0x19
	.4byte	.LVL7
	.4byte	0x9af
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x3e
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5376
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x49e
	.uleb128 0x8
	.4byte	0xcc
	.4byte	0x6ec
	.uleb128 0x9
	.4byte	0xc5
	.byte	0xe
	.byte	0
	.uleb128 0x7
	.4byte	0x6dc
	.uleb128 0x13
	.4byte	.LASF96
	.byte	0x1
	.byte	0x23
	.4byte	0x4df
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7f6
	.uleb128 0x14
	.4byte	.LASF93
	.byte	0x1
	.byte	0x23
	.4byte	0x3e
	.4byte	.LLST4
	.uleb128 0x16
	.4byte	.LASF95
	.byte	0x1
	.byte	0x23
	.4byte	0x562
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x16
	.4byte	.LASF97
	.byte	0x1
	.byte	0x23
	.4byte	0x70
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x16
	.4byte	.LASF98
	.byte	0x1
	.byte	0x23
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x17
	.4byte	.LASF99
	.byte	0x1
	.byte	0x25
	.4byte	0x6d6
	.4byte	.LLST5
	.uleb128 0x18
	.4byte	.LASF100
	.4byte	0x806
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5359
	.uleb128 0x1b
	.string	"err"
	.byte	0x1
	.byte	0x27
	.4byte	0x10f
	.4byte	.LLST6
	.uleb128 0x1c
	.4byte	.LVL19
	.4byte	0x9af
	.4byte	0x79c
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x26
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5359
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL20
	.4byte	0x9ba
	.4byte	0x7bc
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL22
	.4byte	0x9c5
	.uleb128 0x19
	.4byte	.LVL23
	.4byte	0x9d0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC12
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0xcc
	.4byte	0x806
	.uleb128 0x9
	.4byte	0xc5
	.byte	0xd
	.byte	0
	.uleb128 0x7
	.4byte	0x7f6
	.uleb128 0x13
	.4byte	.LASF101
	.byte	0x1
	.byte	0x2f
	.4byte	0x4df
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x910
	.uleb128 0x14
	.4byte	.LASF93
	.byte	0x1
	.byte	0x2f
	.4byte	0x3e
	.4byte	.LLST7
	.uleb128 0x16
	.4byte	.LASF95
	.byte	0x1
	.byte	0x2f
	.4byte	0x58c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x16
	.4byte	.LASF97
	.byte	0x1
	.byte	0x2f
	.4byte	0x70
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x16
	.4byte	.LASF98
	.byte	0x1
	.byte	0x2f
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x17
	.4byte	.LASF99
	.byte	0x1
	.byte	0x31
	.4byte	0x6d6
	.4byte	.LLST8
	.uleb128 0x18
	.4byte	.LASF100
	.4byte	0x910
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5368
	.uleb128 0x1b
	.string	"err"
	.byte	0x1
	.byte	0x33
	.4byte	0x10f
	.4byte	.LLST9
	.uleb128 0x1c
	.4byte	.LVL31
	.4byte	0x9af
	.4byte	0x8b6
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x32
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5368
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL32
	.4byte	0x9db
	.4byte	0x8d6
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL34
	.4byte	0x9c5
	.uleb128 0x19
	.4byte	.LVL35
	.4byte	0x9d0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC19
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0x6dc
	.uleb128 0x1e
	.4byte	.LASF113
	.byte	0x1
	.byte	0x4e
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x972
	.uleb128 0x16
	.4byte	.LASF93
	.byte	0x1
	.byte	0x4e
	.4byte	0x3e
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x16
	.4byte	.LASF99
	.byte	0x1
	.byte	0x4e
	.4byte	0x6d6
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1f
	.4byte	.LASF102
	.byte	0x1
	.byte	0x50
	.4byte	0x972
	.uleb128 0x5
	.byte	0x3
	.4byte	sdmmc_impl$5385
	.uleb128 0x19
	.4byte	.LVL40
	.4byte	0x9e6
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x72
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	sdmmc_impl$5385
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0x5bc
	.uleb128 0x8
	.4byte	0x6d6
	.4byte	0x987
	.uleb128 0x9
	.4byte	0xc5
	.byte	0x1
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF103
	.byte	0x1
	.byte	0x15
	.4byte	0x977
	.uleb128 0x5
	.byte	0x3
	.4byte	s_cards
	.uleb128 0x20
	.string	"TAG"
	.byte	0x1
	.byte	0x17
	.4byte	0x9aa
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC10
	.byte	0x9f
	.uleb128 0x7
	.4byte	0xd3
	.uleb128 0x21
	.4byte	.LASF104
	.4byte	.LASF104
	.byte	0xb
	.byte	0x29
	.uleb128 0x21
	.4byte	.LASF105
	.4byte	.LASF105
	.byte	0xc
	.byte	0x4d
	.uleb128 0x21
	.4byte	.LASF106
	.4byte	.LASF106
	.byte	0xa
	.byte	0x57
	.uleb128 0x21
	.4byte	.LASF107
	.4byte	.LASF107
	.byte	0xa
	.byte	0x6b
	.uleb128 0x21
	.4byte	.LASF108
	.4byte	.LASF108
	.byte	0xc
	.byte	0x3d
	.uleb128 0x21
	.4byte	.LASF109
	.4byte	.LASF109
	.byte	0x9
	.byte	0x46
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
	.uleb128 0xe
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
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL1
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL3
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL5
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0xb
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x32
	.byte	0x24
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0xb
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x32
	.byte	0x24
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0xb
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x32
	.byte	0x24
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL14
	.4byte	.LFE18
	.2byte	0xb
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x32
	.byte	0x24
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL16
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL18
	.4byte	.LVL19-1
	.2byte	0x2
	.byte	0x72
	.sleb128 0
	.4byte	.LVL19
	.4byte	.LVL20-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL21
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL26
	.4byte	.LFE16
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL28
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL30
	.4byte	.LVL31-1
	.2byte	0x2
	.byte	0x72
	.sleb128 0
	.4byte	.LVL31
	.4byte	.LVL32-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL33
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL38
	.4byte	.LFE17
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x44
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF109:
	.string	"ff_diskio_register"
.LASF93:
	.string	"pdrv"
.LASF61:
	.string	"deinit"
.LASF30:
	.string	"card_command_class"
.LASF112:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\fatfs"
.LASF75:
	.string	"RES_ERROR"
.LASF82:
	.string	"write"
.LASF43:
	.string	"sdmmc_response_t"
.LASF90:
	.string	"ESP_LOG_VERBOSE"
.LASF54:
	.string	"max_freq_khz"
.LASF25:
	.string	"csd_ver"
.LASF74:
	.string	"RES_OK"
.LASF70:
	.string	"num_io_functions"
.LASF16:
	.string	"size_t"
.LASF17:
	.string	"sizetype"
.LASF92:
	.string	"ff_sdmmc_status"
.LASF41:
	.string	"bus_width"
.LASF33:
	.string	"mfg_id"
.LASF48:
	.string	"blklen"
.LASF34:
	.string	"oem_id"
.LASF95:
	.string	"buff"
.LASF2:
	.string	"BYTE"
.LASF12:
	.string	"__uint16_t"
.LASF88:
	.string	"ESP_LOG_INFO"
.LASF38:
	.string	"date"
.LASF60:
	.string	"do_transaction"
.LASF71:
	.string	"reserved"
.LASF69:
	.string	"is_sdio"
.LASF40:
	.string	"sd_spec"
.LASF5:
	.string	"WORD"
.LASF108:
	.string	"sdmmc_write_sectors"
.LASF44:
	.string	"opcode"
.LASF31:
	.string	"tr_speed"
.LASF97:
	.string	"sector"
.LASF107:
	.string	"esp_log_write"
.LASF45:
	.string	"response"
.LASF4:
	.string	"short int"
.LASF47:
	.string	"datalen"
.LASF65:
	.string	"float"
.LASF52:
	.string	"sdmmc_command_t"
.LASF39:
	.string	"sdmmc_cid_t"
.LASF59:
	.string	"set_card_clk"
.LASF111:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/fatfs/src/diskio_sdmmc.c"
.LASF15:
	.string	"long long int"
.LASF24:
	.string	"TickType_t"
.LASF77:
	.string	"RES_NOTRDY"
.LASF7:
	.string	"long int"
.LASF36:
	.string	"revision"
.LASF76:
	.string	"RES_WRPRT"
.LASF103:
	.string	"s_cards"
.LASF1:
	.string	"UINT"
.LASF55:
	.string	"io_voltage"
.LASF28:
	.string	"sector_size"
.LASF68:
	.string	"is_mem"
.LASF84:
	.string	"ff_diskio_impl_t"
.LASF72:
	.string	"sdmmc_card_t"
.LASF73:
	.string	"DSTATUS"
.LASF49:
	.string	"flags"
.LASF8:
	.string	"DWORD"
.LASF3:
	.string	"unsigned char"
.LASF100:
	.string	"__func__"
.LASF26:
	.string	"mmc_ver"
.LASF110:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF81:
	.string	"read"
.LASF11:
	.string	"signed char"
.LASF27:
	.string	"capacity"
.LASF10:
	.string	"long long unsigned int"
.LASF21:
	.string	"uint32_t"
.LASF0:
	.string	"unsigned int"
.LASF19:
	.string	"uint16_t"
.LASF83:
	.string	"ioctl"
.LASF9:
	.string	"long unsigned int"
.LASF53:
	.string	"slot"
.LASF6:
	.string	"short unsigned int"
.LASF80:
	.string	"status"
.LASF18:
	.string	"char"
.LASF56:
	.string	"init"
.LASF89:
	.string	"ESP_LOG_DEBUG"
.LASF20:
	.string	"int32_t"
.LASF85:
	.string	"ESP_LOG_NONE"
.LASF37:
	.string	"serial"
.LASF91:
	.string	"ff_sdmmc_initialize"
.LASF102:
	.string	"sdmmc_impl"
.LASF113:
	.string	"ff_diskio_register_sdmmc"
.LASF23:
	.string	"_Bool"
.LASF101:
	.string	"ff_sdmmc_write"
.LASF46:
	.string	"data"
.LASF87:
	.string	"ESP_LOG_WARN"
.LASF62:
	.string	"io_int_enable"
.LASF94:
	.string	"ff_sdmmc_ioctl"
.LASF51:
	.string	"timeout_ms"
.LASF58:
	.string	"get_bus_width"
.LASF42:
	.string	"sdmmc_scr_t"
.LASF66:
	.string	"sdmmc_host_t"
.LASF14:
	.string	"__uint32_t"
.LASF98:
	.string	"count"
.LASF13:
	.string	"__int32_t"
.LASF96:
	.string	"ff_sdmmc_read"
.LASF105:
	.string	"sdmmc_read_sectors"
.LASF79:
	.string	"DRESULT"
.LASF64:
	.string	"command_timeout_ms"
.LASF35:
	.string	"name"
.LASF106:
	.string	"esp_log_timestamp"
.LASF63:
	.string	"io_int_wait"
.LASF50:
	.string	"error"
.LASF32:
	.string	"sdmmc_csd_t"
.LASF104:
	.string	"__assert_func"
.LASF99:
	.string	"card"
.LASF67:
	.string	"host"
.LASF78:
	.string	"RES_PARERR"
.LASF57:
	.string	"set_bus_width"
.LASF86:
	.string	"ESP_LOG_ERROR"
.LASF22:
	.string	"esp_err_t"
.LASF29:
	.string	"read_block_len"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
