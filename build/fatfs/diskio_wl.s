	.file	"diskio_wl.c"
	.text
.Ltext0:
	.section	.text.ff_wl_initialize,"ax",@progbits
	.align	4
	.global	ff_wl_initialize
	.type	ff_wl_initialize, @function
ff_wl_initialize:
.LFB14:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/fatfs/src/diskio_wl.c"
	.loc 1 31 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 33 0
	movi.n	a2, 0
.LVL1:
	retw.n
.LFE14:
	.size	ff_wl_initialize, .-ff_wl_initialize
	.section	.text.ff_wl_status,"ax",@progbits
	.align	4
	.global	ff_wl_status
	.type	ff_wl_status, @function
ff_wl_status:
.LFB15:
	.loc 1 36 0
.LVL2:
	entry	sp, 32
.LCFI1:
	.loc 1 38 0
	movi.n	a2, 0
.LVL3:
	retw.n
.LFE15:
	.size	ff_wl_status, .-ff_wl_status
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC1:
	.string	"wl_handle + 1"
	.align	4
.LC4:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/fatfs/src/diskio_wl.c"
	.align	4
.LC6:
	.string	"ff_diskio_spiflash"
	.align	4
.LC8:
	.string	"\033[0;31mE (%d) %s: wl_read failed (%d)\033[0m\n"
	.section	.text.ff_wl_read,"ax",@progbits
	.literal_position
	.literal .LC0, ff_wl_handles
	.literal .LC2, .LC1
	.literal .LC3, __func__$5699
	.literal .LC5, .LC4
	.literal .LC7, .LC6
	.literal .LC9, .LC8
	.align	4
	.global	ff_wl_read
	.type	ff_wl_read, @function
ff_wl_read:
.LFB16:
	.loc 1 41 0
.LVL4:
	entry	sp, 32
.LCFI2:
	extui	a2, a2, 0, 8
	.loc 1 43 0
	l32r	a8, .LC0
	addx4	a2, a2, a8
.LVL5:
	l32i.n	a2, a2, 0
.LVL6:
	.loc 1 44 0
	bnei	a2, -1, .L4
	.loc 1 44 0 is_stmt 0 discriminator 1
	l32r	a13, .LC2
	l32r	a12, .LC3
	movi.n	a11, 0x2c
	l32r	a10, .LC5
	call8	__assert_func
.LVL7:
.L4:
	.loc 1 45 0 is_stmt 1
	mov.n	a10, a2
	call8	wl_sector_size
.LVL8:
	mull	a4, a10, a4
.LVL9:
	mov.n	a10, a2
	call8	wl_sector_size
.LVL10:
	mull	a13, a10, a5
	mov.n	a12, a3
	mov.n	a11, a4
	mov.n	a10, a2
	call8	wl_read
.LVL11:
	mov.n	a2, a10
.LVL12:
	.loc 1 46 0
	beqz.n	a10, .L6
	.loc 1 47 0 discriminator 2
	call8	esp_log_timestamp
.LVL13:
	l32r	a11, .LC7
	mov.n	a15, a2
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC9
	movi.n	a10, 1
	call8	esp_log_write
.LVL14:
	.loc 1 48 0 discriminator 2
	movi.n	a2, 1
.LVL15:
	retw.n
.LVL16:
.L6:
	.loc 1 50 0
	movi.n	a2, 0
.LVL17:
	.loc 1 51 0
	retw.n
.LFE16:
	.size	ff_wl_read, .-ff_wl_read
	.section	.rodata.str1.4
	.align	4
.LC15:
	.string	"\033[0;31mE (%d) %s: wl_erase_range failed (%d)\033[0m\n"
	.align	4
.LC17:
	.string	"\033[0;31mE (%d) %s: wl_write failed (%d)\033[0m\n"
	.section	.text.ff_wl_write,"ax",@progbits
	.literal_position
	.literal .LC10, ff_wl_handles
	.literal .LC11, .LC1
	.literal .LC12, __func__$5708
	.literal .LC13, .LC4
	.literal .LC14, .LC6
	.literal .LC16, .LC15
	.literal .LC18, .LC17
	.align	4
	.global	ff_wl_write
	.type	ff_wl_write, @function
ff_wl_write:
.LFB17:
	.loc 1 54 0
.LVL18:
	entry	sp, 32
.LCFI3:
	extui	a2, a2, 0, 8
	.loc 1 56 0
	l32r	a6, .LC10
	addx4	a2, a2, a6
.LVL19:
	l32i.n	a2, a2, 0
.LVL20:
	.loc 1 57 0
	bnei	a2, -1, .L8
	.loc 1 57 0 is_stmt 0 discriminator 1
	l32r	a13, .LC11
	l32r	a12, .LC12
	movi.n	a11, 0x39
	l32r	a10, .LC13
	call8	__assert_func
.LVL21:
.L8:
	.loc 1 58 0 is_stmt 1
	mov.n	a10, a2
	call8	wl_sector_size
.LVL22:
	mull	a6, a10, a4
	mov.n	a10, a2
	call8	wl_sector_size
.LVL23:
	mull	a12, a10, a5
	mov.n	a11, a6
	mov.n	a10, a2
	call8	wl_erase_range
.LVL24:
	mov.n	a6, a10
.LVL25:
	.loc 1 59 0
	beqz.n	a10, .L9
	.loc 1 60 0 discriminator 2
	call8	esp_log_timestamp
.LVL26:
	l32r	a11, .LC14
	mov.n	a15, a6
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC16
	movi.n	a10, 1
	call8	esp_log_write
.LVL27:
	.loc 1 61 0 discriminator 2
	movi.n	a2, 1
.LVL28:
	retw.n
.LVL29:
.L9:
	.loc 1 63 0
	mov.n	a10, a2
	call8	wl_sector_size
.LVL30:
	mull	a4, a4, a10
.LVL31:
	mov.n	a10, a2
	call8	wl_sector_size
.LVL32:
	mull	a13, a5, a10
	mov.n	a12, a3
	mov.n	a11, a4
	mov.n	a10, a2
	call8	wl_write
.LVL33:
	mov.n	a2, a10
.LVL34:
	.loc 1 64 0
	beqz.n	a10, .L11
	.loc 1 65 0 discriminator 2
	call8	esp_log_timestamp
.LVL35:
	l32r	a11, .LC14
	mov.n	a15, a2
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC18
	movi.n	a10, 1
	call8	esp_log_write
.LVL36:
	.loc 1 66 0 discriminator 2
	movi.n	a2, 1
.LVL37:
	retw.n
.LVL38:
.L11:
	.loc 1 68 0
	movi.n	a2, 0
.LVL39:
	.loc 1 69 0
	retw.n
.LFE17:
	.size	ff_wl_write, .-ff_wl_write
	.section	.text.ff_wl_ioctl,"ax",@progbits
	.literal_position
	.literal .LC19, ff_wl_handles
	.literal .LC20, .LC1
	.literal .LC21, __func__$5716
	.literal .LC22, .LC4
	.align	4
	.global	ff_wl_ioctl
	.type	ff_wl_ioctl, @function
ff_wl_ioctl:
.LFB18:
	.loc 1 72 0
.LVL40:
	entry	sp, 32
.LCFI4:
	extui	a2, a2, 0, 8
	extui	a3, a3, 0, 8
	.loc 1 73 0
	l32r	a8, .LC19
	addx4	a2, a2, a8
.LVL41:
	l32i.n	a2, a2, 0
.LVL42:
	.loc 1 75 0
	bnei	a2, -1, .L13
	.loc 1 75 0 is_stmt 0 discriminator 1
	l32r	a13, .LC20
	l32r	a12, .LC21
	movi.n	a11, 0x4b
	l32r	a10, .LC22
	call8	__assert_func
.LVL43:
.L13:
	.loc 1 76 0 is_stmt 1
	beqi	a3, 1, .L15
	beqz.n	a3, .L16
	bnei	a3, 2, .L19
	j	.L17
.L16:
	.loc 1 78 0
	movi.n	a2, 0
.LVL44:
	retw.n
.LVL45:
.L15:
	.loc 1 80 0
	mov.n	a10, a2
	call8	wl_size
.LVL46:
	mov.n	a3, a10
.LVL47:
	mov.n	a10, a2
	call8	wl_sector_size
.LVL48:
	quou	a10, a3, a10
	s32i.n	a10, a4, 0
	.loc 1 81 0
	movi.n	a2, 0
.LVL49:
	retw.n
.LVL50:
.L17:
	.loc 1 83 0
	mov.n	a10, a2
	call8	wl_sector_size
.LVL51:
	s16i	a10, a4, 0
	.loc 1 84 0
	movi.n	a2, 0
.LVL52:
	retw.n
.LVL53:
.L19:
	.loc 1 86 0
	movi.n	a2, 1
.LVL54:
	.loc 1 89 0
	retw.n
.LFE18:
	.size	ff_wl_ioctl, .-ff_wl_ioctl
	.section	.text.ff_diskio_register_wl_partition,"ax",@progbits
	.literal_position
	.literal .LC23, ff_wl_handles
	.literal .LC24, wl_impl$5725
	.align	4
	.global	ff_diskio_register_wl_partition
	.type	ff_diskio_register_wl_partition, @function
ff_diskio_register_wl_partition:
.LFB19:
	.loc 1 93 0
.LVL55:
	entry	sp, 32
.LCFI5:
	extui	a10, a2, 0, 8
	.loc 1 94 0
	bgeui	a10, 2, .L22
	.loc 1 104 0
	l32r	a2, .LC23
.LVL56:
	addx4	a2, a10, a2
	s32i.n	a3, a2, 0
	.loc 1 105 0
	l32r	a11, .LC24
	call8	ff_diskio_register
.LVL57:
	.loc 1 106 0
	movi.n	a2, 0
	retw.n
.LVL58:
.L22:
	.loc 1 95 0
	movi	a2, 0x102
.LVL59:
	.loc 1 107 0
	retw.n
.LFE19:
	.size	ff_diskio_register_wl_partition, .-ff_diskio_register_wl_partition
	.section	.text.ff_diskio_get_pdrv_wl,"ax",@progbits
	.literal_position
	.literal .LC25, ff_wl_handles
	.align	4
	.global	ff_diskio_get_pdrv_wl
	.type	ff_diskio_get_pdrv_wl, @function
ff_diskio_get_pdrv_wl:
.LFB20:
	.loc 1 110 0
.LVL60:
	entry	sp, 32
.LCFI6:
.LVL61:
.LBB2:
	.loc 1 111 0
	movi.n	a8, 0
	j	.L24
.LVL62:
.L27:
	.loc 1 112 0
	l32r	a9, .LC25
	addx4	a9, a8, a9
	l32i.n	a9, a9, 0
	bne	a9, a2, .L25
	.loc 1 113 0
	extui	a2, a8, 0, 8
.LVL63:
	retw.n
.LVL64:
.L25:
	.loc 1 111 0 discriminator 2
	addi.n	a8, a8, 1
.LVL65:
.L24:
	.loc 1 111 0 is_stmt 0 discriminator 1
	blti	a8, 2, .L27
.LBE2:
	.loc 1 116 0 is_stmt 1
	movi	a2, 0xff
.LVL66:
	.loc 1 117 0
	retw.n
.LFE20:
	.size	ff_diskio_get_pdrv_wl, .-ff_diskio_get_pdrv_wl
	.section	.rodata.wl_impl$5725,"a",@progbits
	.align	4
	.type	wl_impl$5725, @object
	.size	wl_impl$5725, 20
wl_impl$5725:
	.word	ff_wl_initialize
	.word	ff_wl_status
	.word	ff_wl_read
	.word	ff_wl_write
	.word	ff_wl_ioctl
	.section	.rodata.__func__$5716,"a",@progbits
	.align	4
	.type	__func__$5716, @object
	.size	__func__$5716, 12
__func__$5716:
	.string	"ff_wl_ioctl"
	.section	.rodata.__func__$5708,"a",@progbits
	.align	4
	.type	__func__$5708, @object
	.size	__func__$5708, 12
__func__$5708:
	.string	"ff_wl_write"
	.section	.rodata.__func__$5699,"a",@progbits
	.align	4
	.type	__func__$5699, @object
	.size	__func__$5699, 11
__func__$5699:
	.string	"ff_wl_read"
	.global	ff_wl_handles
	.section	.data.ff_wl_handles,"aw",@progbits
	.align	4
	.type	ff_wl_handles, @object
	.size	ff_wl_handles, 8
ff_wl_handles:
	.word	-1
	.word	-1
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
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI2-.LFB16
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI3-.LFB17
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI4-.LFB18
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
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI6-.LFB20
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/fatfs/src/integer.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_err.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/fatfs/src/diskio.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/log/include/esp_log.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/wear_levelling/include/wear_levelling.h"
	.file 9 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/assert.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x7a4
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF64
	.byte	0xc
	.4byte	.LASF65
	.4byte	.LASF66
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
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x2
	.byte	0x19
	.4byte	0x25
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x6
	.byte	0x4
	.4byte	0x8c
	.uleb128 0x7
	.4byte	0x7f
	.uleb128 0x4
	.4byte	.LASF12
	.byte	0x3
	.byte	0x13
	.4byte	0x2c
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x3
	.byte	0x16
	.4byte	0x41
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x3
	.byte	0x1a
	.4byte	0x33
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x3
	.byte	0x1f
	.4byte	0x78
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x4
	.byte	0x2c
	.4byte	0x4f
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x5
	.byte	0x18
	.4byte	0xbd
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF18
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.4byte	.LASF19
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x6
	.byte	0x11
	.4byte	0x9c
	.uleb128 0x8
	.byte	0x4
	.4byte	0x2c
	.byte	0x6
	.byte	0x14
	.4byte	0x117
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF26
	.byte	0x6
	.byte	0x1a
	.4byte	0xec
	.uleb128 0xa
	.byte	0x14
	.byte	0x6
	.byte	0x34
	.4byte	0x167
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0x6
	.byte	0x35
	.4byte	0x176
	.byte	0
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0x6
	.byte	0x36
	.4byte	0x176
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF29
	.byte	0x6
	.byte	0x37
	.4byte	0x1a0
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0x6
	.byte	0x38
	.4byte	0x1cf
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0x6
	.byte	0x39
	.4byte	0x1ee
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.4byte	0xe1
	.4byte	0x176
	.uleb128 0xd
	.4byte	0x9c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x167
	.uleb128 0xc
	.4byte	0x117
	.4byte	0x19a
	.uleb128 0xd
	.4byte	0x9c
	.uleb128 0xd
	.4byte	0x19a
	.uleb128 0xd
	.4byte	0xb2
	.uleb128 0xd
	.4byte	0x91
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x9c
	.uleb128 0x6
	.byte	0x4
	.4byte	0x17c
	.uleb128 0xc
	.4byte	0x117
	.4byte	0x1c4
	.uleb128 0xd
	.4byte	0x9c
	.uleb128 0xd
	.4byte	0x1c4
	.uleb128 0xd
	.4byte	0xb2
	.uleb128 0xd
	.4byte	0x91
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1ca
	.uleb128 0x7
	.4byte	0x9c
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1a6
	.uleb128 0xc
	.4byte	0x117
	.4byte	0x1ee
	.uleb128 0xd
	.4byte	0x9c
	.uleb128 0xd
	.4byte	0x9c
	.uleb128 0xd
	.4byte	0x76
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1d5
	.uleb128 0x4
	.4byte	.LASF32
	.byte	0x6
	.byte	0x3a
	.4byte	0x122
	.uleb128 0x8
	.byte	0x4
	.4byte	0x2c
	.byte	0x7
	.byte	0x1f
	.4byte	0x230
	.uleb128 0x9
	.4byte	.LASF33
	.byte	0
	.uleb128 0x9
	.4byte	.LASF34
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF35
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF36
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF37
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF38
	.byte	0x5
	.byte	0
	.uleb128 0x4
	.4byte	.LASF39
	.byte	0x8
	.byte	0x1c
	.4byte	0xbd
	.uleb128 0xe
	.4byte	.LASF40
	.byte	0x1
	.byte	0x1e
	.4byte	0xe1
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x264
	.uleb128 0xf
	.4byte	.LASF42
	.byte	0x1
	.byte	0x1e
	.4byte	0x9c
	.4byte	.LLST0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF41
	.byte	0x1
	.byte	0x23
	.4byte	0xe1
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x28d
	.uleb128 0xf
	.4byte	.LASF42
	.byte	0x1
	.byte	0x23
	.4byte	0x9c
	.4byte	.LLST1
	.byte	0
	.uleb128 0xe
	.4byte	.LASF43
	.byte	0x1
	.byte	0x28
	.4byte	0x117
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3bc
	.uleb128 0xf
	.4byte	.LASF42
	.byte	0x1
	.byte	0x28
	.4byte	0x9c
	.4byte	.LLST2
	.uleb128 0x10
	.4byte	.LASF44
	.byte	0x1
	.byte	0x28
	.4byte	0x19a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xf
	.4byte	.LASF45
	.byte	0x1
	.byte	0x28
	.4byte	0xb2
	.4byte	.LLST3
	.uleb128 0x10
	.4byte	.LASF46
	.byte	0x1
	.byte	0x28
	.4byte	0x91
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x11
	.4byte	.LASF47
	.byte	0x1
	.byte	0x2b
	.4byte	0x230
	.4byte	.LLST4
	.uleb128 0x12
	.4byte	.LASF49
	.4byte	0x3cc
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5699
	.uleb128 0x13
	.string	"err"
	.byte	0x1
	.byte	0x2d
	.4byte	0xc8
	.4byte	.LLST5
	.uleb128 0x14
	.4byte	.LVL7
	.4byte	0x744
	.4byte	0x33a
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x2c
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5699
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x14
	.4byte	.LVL8
	.4byte	0x74f
	.4byte	0x34e
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.4byte	.LVL10
	.4byte	0x74f
	.4byte	0x362
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.4byte	.LVL11
	.4byte	0x75a
	.4byte	0x382
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL13
	.4byte	0x765
	.uleb128 0x17
	.4byte	.LVL14
	.4byte	0x770
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	0x7f
	.4byte	0x3cc
	.uleb128 0x19
	.4byte	0x6f
	.byte	0xa
	.byte	0
	.uleb128 0x7
	.4byte	0x3bc
	.uleb128 0xe
	.4byte	.LASF48
	.byte	0x1
	.byte	0x35
	.4byte	0x117
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x57f
	.uleb128 0xf
	.4byte	.LASF42
	.byte	0x1
	.byte	0x35
	.4byte	0x9c
	.4byte	.LLST6
	.uleb128 0x10
	.4byte	.LASF44
	.byte	0x1
	.byte	0x35
	.4byte	0x1c4
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xf
	.4byte	.LASF45
	.byte	0x1
	.byte	0x35
	.4byte	0xb2
	.4byte	.LLST7
	.uleb128 0x10
	.4byte	.LASF46
	.byte	0x1
	.byte	0x35
	.4byte	0x91
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x11
	.4byte	.LASF47
	.byte	0x1
	.byte	0x38
	.4byte	0x230
	.4byte	.LLST8
	.uleb128 0x12
	.4byte	.LASF49
	.4byte	0x58f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5708
	.uleb128 0x13
	.string	"err"
	.byte	0x1
	.byte	0x3a
	.4byte	0xc8
	.4byte	.LLST9
	.uleb128 0x14
	.4byte	.LVL21
	.4byte	0x744
	.4byte	0x47e
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x39
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5708
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x14
	.4byte	.LVL22
	.4byte	0x74f
	.4byte	0x492
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.4byte	.LVL23
	.4byte	0x74f
	.4byte	0x4a6
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.4byte	.LVL24
	.4byte	0x77b
	.4byte	0x4c0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL26
	.4byte	0x765
	.uleb128 0x14
	.4byte	.LVL27
	.4byte	0x770
	.4byte	0x4fd
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.4byte	.LVL30
	.4byte	0x74f
	.4byte	0x511
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.4byte	.LVL32
	.4byte	0x74f
	.4byte	0x525
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.4byte	.LVL33
	.4byte	0x786
	.4byte	0x545
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL35
	.4byte	0x765
	.uleb128 0x17
	.4byte	.LVL36
	.4byte	0x770
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC17
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	0x7f
	.4byte	0x58f
	.uleb128 0x19
	.4byte	0x6f
	.byte	0xb
	.byte	0
	.uleb128 0x7
	.4byte	0x57f
	.uleb128 0xe
	.4byte	.LASF50
	.byte	0x1
	.byte	0x47
	.4byte	0x117
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x65e
	.uleb128 0xf
	.4byte	.LASF42
	.byte	0x1
	.byte	0x47
	.4byte	0x9c
	.4byte	.LLST10
	.uleb128 0x1a
	.string	"cmd"
	.byte	0x1
	.byte	0x47
	.4byte	0x9c
	.4byte	.LLST11
	.uleb128 0x10
	.4byte	.LASF44
	.byte	0x1
	.byte	0x47
	.4byte	0x76
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x11
	.4byte	.LASF47
	.byte	0x1
	.byte	0x49
	.4byte	0x230
	.4byte	.LLST12
	.uleb128 0x12
	.4byte	.LASF49
	.4byte	0x65e
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5716
	.uleb128 0x14
	.4byte	.LVL43
	.4byte	0x744
	.4byte	0x625
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x4b
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5716
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x14
	.4byte	.LVL46
	.4byte	0x791
	.4byte	0x639
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.4byte	.LVL48
	.4byte	0x74f
	.4byte	0x64d
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL51
	.4byte	0x74f
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0x57f
	.uleb128 0xe
	.4byte	.LASF51
	.byte	0x1
	.byte	0x5c
	.4byte	0xc8
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6c7
	.uleb128 0xf
	.4byte	.LASF42
	.byte	0x1
	.byte	0x5c
	.4byte	0x9c
	.4byte	.LLST13
	.uleb128 0x10
	.4byte	.LASF52
	.byte	0x1
	.byte	0x5c
	.4byte	0x230
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1b
	.4byte	.LASF53
	.byte	0x1
	.byte	0x61
	.4byte	0x6c7
	.uleb128 0x5
	.byte	0x3
	.4byte	wl_impl$5725
	.uleb128 0x17
	.4byte	.LVL57
	.4byte	0x79c
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	wl_impl$5725
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0x1f4
	.uleb128 0xe
	.4byte	.LASF54
	.byte	0x1
	.byte	0x6d
	.4byte	0x9c
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x70c
	.uleb128 0xf
	.4byte	.LASF52
	.byte	0x1
	.byte	0x6d
	.4byte	0x230
	.4byte	.LLST14
	.uleb128 0x1c
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x13
	.string	"i"
	.byte	0x1
	.byte	0x6f
	.4byte	0x25
	.4byte	.LLST15
	.byte	0
	.byte	0
	.uleb128 0x1d
	.string	"TAG"
	.byte	0x1
	.byte	0x17
	.4byte	0x71e
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC6
	.byte	0x9f
	.uleb128 0x7
	.4byte	0x86
	.uleb128 0x18
	.4byte	0x230
	.4byte	0x733
	.uleb128 0x19
	.4byte	0x6f
	.byte	0x1
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF67
	.byte	0x1
	.byte	0x19
	.4byte	0x723
	.uleb128 0x5
	.byte	0x3
	.4byte	ff_wl_handles
	.uleb128 0x1f
	.4byte	.LASF55
	.4byte	.LASF55
	.byte	0x9
	.byte	0x29
	.uleb128 0x1f
	.4byte	.LASF56
	.4byte	.LASF56
	.byte	0x8
	.byte	0x81
	.uleb128 0x1f
	.4byte	.LASF57
	.4byte	.LASF57
	.byte	0x8
	.byte	0x71
	.uleb128 0x1f
	.4byte	.LASF58
	.4byte	.LASF58
	.byte	0x7
	.byte	0x57
	.uleb128 0x1f
	.4byte	.LASF59
	.4byte	.LASF59
	.byte	0x7
	.byte	0x6b
	.uleb128 0x1f
	.4byte	.LASF60
	.4byte	.LASF60
	.byte	0x8
	.byte	0x47
	.uleb128 0x1f
	.4byte	.LASF61
	.4byte	.LASF61
	.byte	0x8
	.byte	0x5f
	.uleb128 0x1f
	.4byte	.LASF62
	.4byte	.LASF62
	.byte	0x8
	.byte	0x79
	.uleb128 0x1f
	.4byte	.LASF63
	.4byte	.LASF63
	.byte	0x6
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
	.uleb128 0x9
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
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
	.uleb128 0xd
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x15
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL4
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL9
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL6
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL12
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL17
	.4byte	.LFE16
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL19
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL18
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL31
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL20
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL29
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL25
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL34
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL39
	.4byte	.LFE17
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL41
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL40
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL47
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL42
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL44
	.4byte	.LVL45
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
	.4byte	.LVL45
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL50
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL54
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
.LLST13:
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL56
	.4byte	.LVL57-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL57-1
	.4byte	.LVL58
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL59
	.4byte	.LFE19
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL60
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL64
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL66
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL62
	.4byte	.LFE20
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x4c
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
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF63:
	.string	"ff_diskio_register"
.LASF42:
	.string	"pdrv"
.LASF66:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\fatfs"
.LASF22:
	.string	"RES_ERROR"
.LASF30:
	.string	"write"
.LASF38:
	.string	"ESP_LOG_VERBOSE"
.LASF64:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF21:
	.string	"RES_OK"
.LASF4:
	.string	"short int"
.LASF8:
	.string	"sizetype"
.LASF65:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/fatfs/src/diskio_wl.c"
.LASF44:
	.string	"buff"
.LASF13:
	.string	"BYTE"
.LASF52:
	.string	"flash_handle"
.LASF14:
	.string	"WORD"
.LASF39:
	.string	"wl_handle_t"
.LASF62:
	.string	"wl_size"
.LASF45:
	.string	"sector"
.LASF59:
	.string	"esp_log_write"
.LASF43:
	.string	"ff_wl_read"
.LASF60:
	.string	"wl_erase_range"
.LASF19:
	.string	"float"
.LASF41:
	.string	"ff_wl_status"
.LASF29:
	.string	"read"
.LASF51:
	.string	"ff_diskio_register_wl_partition"
.LASF5:
	.string	"long long int"
.LASF7:
	.string	"long int"
.LASF33:
	.string	"ESP_LOG_NONE"
.LASF23:
	.string	"RES_WRPRT"
.LASF12:
	.string	"UINT"
.LASF32:
	.string	"ff_diskio_impl_t"
.LASF20:
	.string	"DSTATUS"
.LASF47:
	.string	"wl_handle"
.LASF15:
	.string	"DWORD"
.LASF3:
	.string	"unsigned char"
.LASF49:
	.string	"__func__"
.LASF61:
	.string	"wl_write"
.LASF48:
	.string	"ff_wl_write"
.LASF2:
	.string	"signed char"
.LASF6:
	.string	"long long unsigned int"
.LASF50:
	.string	"ff_wl_ioctl"
.LASF0:
	.string	"unsigned int"
.LASF31:
	.string	"ioctl"
.LASF53:
	.string	"wl_impl"
.LASF56:
	.string	"wl_sector_size"
.LASF1:
	.string	"short unsigned int"
.LASF28:
	.string	"status"
.LASF10:
	.string	"char"
.LASF27:
	.string	"init"
.LASF37:
	.string	"ESP_LOG_DEBUG"
.LASF16:
	.string	"int32_t"
.LASF67:
	.string	"ff_wl_handles"
.LASF24:
	.string	"RES_NOTRDY"
.LASF18:
	.string	"_Bool"
.LASF54:
	.string	"ff_diskio_get_pdrv_wl"
.LASF35:
	.string	"ESP_LOG_WARN"
.LASF9:
	.string	"long unsigned int"
.LASF57:
	.string	"wl_read"
.LASF46:
	.string	"count"
.LASF11:
	.string	"__int32_t"
.LASF26:
	.string	"DRESULT"
.LASF58:
	.string	"esp_log_timestamp"
.LASF55:
	.string	"__assert_func"
.LASF25:
	.string	"RES_PARERR"
.LASF34:
	.string	"ESP_LOG_ERROR"
.LASF40:
	.string	"ff_wl_initialize"
.LASF17:
	.string	"esp_err_t"
.LASF36:
	.string	"ESP_LOG_INFO"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
