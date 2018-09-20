	.file	"diskio.c"
	.text
.Ltext0:
	.section	.text.ff_diskio_get_drive,"ax",@progbits
	.literal_position
	.literal .LC0, s_impls
	.align	4
	.global	ff_diskio_get_drive
	.type	ff_diskio_get_drive, @function
ff_diskio_get_drive:
.LFB14:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/fatfs/src/diskio.c"
	.loc 1 28 0
.LVL0:
	entry	sp, 32
.LCFI0:
.LVL1:
	.loc 1 30 0
	movi.n	a8, 0
	j	.L2
.LVL2:
.L5:
	.loc 1 31 0
	l32r	a9, .LC0
	addx4	a9, a8, a9
	l32i.n	a9, a9, 0
	bnez.n	a9, .L3
	.loc 1 32 0
	s8i	a8, a2, 0
	.loc 1 33 0
	movi.n	a2, 0
.LVL3:
	retw.n
.LVL4:
.L3:
	.loc 1 30 0 discriminator 2
	addi.n	a8, a8, 1
.LVL5:
	extui	a8, a8, 0, 8
.LVL6:
.L2:
	.loc 1 30 0 is_stmt 0 discriminator 1
	bltui	a8, 2, .L5
	.loc 1 36 0 is_stmt 1
	movi	a2, 0x105
.LVL7:
	.loc 1 37 0
	retw.n
.LFE14:
	.size	ff_diskio_get_drive, .-ff_diskio_get_drive
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC1:
	.string	"pdrv < FF_VOLUMES"
	.align	4
.LC4:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/fatfs/src/diskio.c"
	.align	4
.LC7:
	.string	"impl != NULL"
	.section	.text.ff_diskio_register,"ax",@progbits
	.literal_position
	.literal .LC2, .LC1
	.literal .LC3, __func__$5576
	.literal .LC5, .LC4
	.literal .LC6, s_impls
	.literal .LC8, .LC7
	.align	4
	.global	ff_diskio_register
	.type	ff_diskio_register, @function
ff_diskio_register:
.LFB15:
	.loc 1 40 0
.LVL8:
	entry	sp, 32
.LCFI1:
	extui	a2, a2, 0, 8
	.loc 1 41 0
	bltui	a2, 2, .L7
	.loc 1 41 0 is_stmt 0 discriminator 1
	l32r	a13, .LC2
	l32r	a12, .LC3
	movi.n	a11, 0x29
	l32r	a10, .LC5
	call8	__assert_func
.LVL9:
.L7:
	.loc 1 43 0 is_stmt 1
	l32r	a8, .LC6
	addx4	a8, a2, a8
	l32i.n	a10, a8, 0
	beqz.n	a10, .L8
.LVL10:
.LBB2:
	.loc 1 45 0
	mov.n	a4, a8
	movi.n	a8, 0
	s32i.n	a8, a4, 0
	.loc 1 46 0
	call8	free
.LVL11:
.L8:
.LBE2:
	.loc 1 49 0
	beqz.n	a3, .L6
	.loc 1 53 0
	movi.n	a10, 0x14
	call8	malloc
.LVL12:
	mov.n	a4, a10
.LVL13:
	.loc 1 54 0
	bnez.n	a10, .L10
	.loc 1 54 0 is_stmt 0 discriminator 1
	l32r	a13, .LC8
	l32r	a12, .LC3
	movi.n	a11, 0x36
	l32r	a10, .LC5
	call8	__assert_func
.LVL14:
.L10:
	.loc 1 55 0 is_stmt 1
	movi.n	a12, 0x14
	mov.n	a11, a3
	call8	memcpy
.LVL15:
	.loc 1 56 0
	l32r	a3, .LC6
.LVL16:
	addx4	a2, a2, a3
.LVL17:
	s32i.n	a4, a2, 0
.LVL18:
.L6:
	retw.n
.LFE15:
	.size	ff_diskio_register, .-ff_diskio_register
	.section	.text.ff_disk_initialize,"ax",@progbits
	.literal_position
	.literal .LC9, s_impls
	.align	4
	.global	ff_disk_initialize
	.type	ff_disk_initialize, @function
ff_disk_initialize:
.LFB16:
	.loc 1 60 0
.LVL19:
	entry	sp, 32
.LCFI2:
	extui	a10, a2, 0, 8
	.loc 1 61 0
	l32r	a8, .LC9
	addx4	a8, a10, a8
	l32i.n	a8, a8, 0
	l32i.n	a8, a8, 0
	callx8	a8
.LVL20:
	.loc 1 62 0
	mov.n	a2, a10
.LVL21:
	retw.n
.LFE16:
	.size	ff_disk_initialize, .-ff_disk_initialize
	.section	.text.ff_disk_status,"ax",@progbits
	.literal_position
	.literal .LC10, s_impls
	.align	4
	.global	ff_disk_status
	.type	ff_disk_status, @function
ff_disk_status:
.LFB17:
	.loc 1 64 0
.LVL22:
	entry	sp, 32
.LCFI3:
	extui	a10, a2, 0, 8
	.loc 1 65 0
	l32r	a8, .LC10
	addx4	a8, a10, a8
	l32i.n	a8, a8, 0
	l32i.n	a8, a8, 4
	callx8	a8
.LVL23:
	.loc 1 66 0
	mov.n	a2, a10
.LVL24:
	retw.n
.LFE17:
	.size	ff_disk_status, .-ff_disk_status
	.section	.text.ff_disk_read,"ax",@progbits
	.literal_position
	.literal .LC11, s_impls
	.align	4
	.global	ff_disk_read
	.type	ff_disk_read, @function
ff_disk_read:
.LFB18:
	.loc 1 68 0
.LVL25:
	entry	sp, 32
.LCFI4:
	extui	a10, a2, 0, 8
	.loc 1 69 0
	l32r	a8, .LC11
	addx4	a8, a10, a8
	l32i.n	a8, a8, 0
	l32i.n	a8, a8, 8
	mov.n	a13, a5
	mov.n	a12, a4
	mov.n	a11, a3
	callx8	a8
.LVL26:
	.loc 1 70 0
	mov.n	a2, a10
.LVL27:
	retw.n
.LFE18:
	.size	ff_disk_read, .-ff_disk_read
	.section	.text.ff_disk_write,"ax",@progbits
	.literal_position
	.literal .LC12, s_impls
	.align	4
	.global	ff_disk_write
	.type	ff_disk_write, @function
ff_disk_write:
.LFB19:
	.loc 1 72 0
.LVL28:
	entry	sp, 32
.LCFI5:
	extui	a10, a2, 0, 8
	.loc 1 73 0
	l32r	a8, .LC12
	addx4	a8, a10, a8
	l32i.n	a8, a8, 0
	l32i.n	a8, a8, 12
	mov.n	a13, a5
	mov.n	a12, a4
	mov.n	a11, a3
	callx8	a8
.LVL29:
	.loc 1 74 0
	mov.n	a2, a10
.LVL30:
	retw.n
.LFE19:
	.size	ff_disk_write, .-ff_disk_write
	.section	.text.ff_disk_ioctl,"ax",@progbits
	.literal_position
	.literal .LC13, s_impls
	.align	4
	.global	ff_disk_ioctl
	.type	ff_disk_ioctl, @function
ff_disk_ioctl:
.LFB20:
	.loc 1 76 0
.LVL31:
	entry	sp, 32
.LCFI6:
	extui	a10, a2, 0, 8
	.loc 1 77 0
	l32r	a8, .LC13
	addx4	a8, a10, a8
	l32i.n	a8, a8, 0
	l32i.n	a8, a8, 16
	mov.n	a12, a4
	extui	a11, a3, 0, 8
	callx8	a8
.LVL32:
	.loc 1 78 0
	mov.n	a2, a10
.LVL33:
	retw.n
.LFE20:
	.size	ff_disk_ioctl, .-ff_disk_ioctl
	.section	.text.get_fattime,"ax",@progbits
	.align	4
	.global	get_fattime
	.type	get_fattime, @function
get_fattime:
.LFB21:
	.loc 1 81 0
	entry	sp, 80
.LCFI7:
	.loc 1 82 0
	movi.n	a10, 0
	call8	time
.LVL34:
	s32i.n	a10, sp, 0
	.loc 1 84 0
	addi.n	a11, sp, 4
	mov.n	a10, sp
	call8	localtime_r
.LVL35:
	.loc 1 85 0
	l32i.n	a9, sp, 24
	movi.n	a2, 0x4f
	bge	a2, a9, .L18
	.loc 1 85 0 is_stmt 0 discriminator 1
	addi	a9, a9, -80
	j	.L17
.L18:
	.loc 1 85 0
	movi.n	a9, 0
.L17:
.LVL36:
	.loc 1 86 0 is_stmt 1 discriminator 4
	slli	a9, a9, 25
.LVL37:
	.loc 1 87 0 discriminator 4
	l32i.n	a8, sp, 20
	addi.n	a8, a8, 1
	slli	a8, a8, 21
	or	a9, a9, a8
	.loc 1 88 0 discriminator 4
	l32i.n	a8, sp, 16
	slli	a8, a8, 16
	or	a10, a9, a8
	.loc 1 89 0 discriminator 4
	l32i.n	a8, sp, 12
	slli	a8, a8, 11
	extui	a8, a8, 0, 16
	or	a9, a8, a10
	.loc 1 90 0 discriminator 4
	l32i.n	a8, sp, 8
	slli	a8, a8, 5
	extui	a8, a8, 0, 16
	or	a8, a8, a9
	.loc 1 91 0 discriminator 4
	l32i.n	a2, sp, 4
	extui	a2, a2, 1, 16
	.loc 1 92 0 discriminator 4
	or	a2, a8, a2
	retw.n
.LFE21:
	.size	get_fattime, .-get_fattime
	.section	.rodata.__func__$5576,"a",@progbits
	.align	4
	.type	__func__$5576, @object
	.size	__func__$5576, 19
__func__$5576:
	.string	"ff_diskio_register"
	.global	VolToPart
	.section	.data.VolToPart,"aw",@progbits
	.align	4
	.type	VolToPart, @object
	.size	VolToPart, 4
VolToPart:
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.section	.bss.s_impls,"aw",@nobits
	.align	4
	.type	s_impls, @object
	.size	s_impls, 8
s_impls:
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
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI7-.LFB21
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE14:
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/types.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/time.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/fatfs/src/integer.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_err.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/fatfs/src/diskio.h"
	.file 9 "D:/ESP32/esp-idf-v3.1-rc1/components/fatfs/src/ff.h"
	.file 10 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdlib.h"
	.file 11 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/assert.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x69c
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF65
	.byte	0xc
	.4byte	.LASF66
	.4byte	.LASF67
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
	.uleb128 0x4
	.4byte	.LASF12
	.byte	0x3
	.byte	0x7a
	.4byte	0x68
	.uleb128 0x6
	.string	"tm"
	.byte	0x24
	.byte	0x4
	.byte	0x1f
	.4byte	0x109
	.uleb128 0x7
	.4byte	.LASF13
	.byte	0x4
	.byte	0x21
	.4byte	0x25
	.byte	0
	.uleb128 0x7
	.4byte	.LASF14
	.byte	0x4
	.byte	0x22
	.4byte	0x25
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF15
	.byte	0x4
	.byte	0x23
	.4byte	0x25
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF16
	.byte	0x4
	.byte	0x24
	.4byte	0x25
	.byte	0xc
	.uleb128 0x7
	.4byte	.LASF17
	.byte	0x4
	.byte	0x25
	.4byte	0x25
	.byte	0x10
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x4
	.byte	0x26
	.4byte	0x25
	.byte	0x14
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x4
	.byte	0x27
	.4byte	0x25
	.byte	0x18
	.uleb128 0x7
	.4byte	.LASF20
	.byte	0x4
	.byte	0x28
	.4byte	0x25
	.byte	0x1c
	.uleb128 0x7
	.4byte	.LASF21
	.byte	0x4
	.byte	0x29
	.4byte	0x25
	.byte	0x20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF22
	.byte	0x5
	.byte	0x13
	.4byte	0x2c
	.uleb128 0x4
	.4byte	.LASF23
	.byte	0x5
	.byte	0x16
	.4byte	0x41
	.uleb128 0x4
	.4byte	.LASF24
	.byte	0x5
	.byte	0x1a
	.4byte	0x33
	.uleb128 0x4
	.4byte	.LASF25
	.byte	0x5
	.byte	0x1f
	.4byte	0x78
	.uleb128 0x4
	.4byte	.LASF26
	.byte	0x6
	.byte	0x2c
	.4byte	0x4f
	.uleb128 0x4
	.4byte	.LASF27
	.byte	0x7
	.byte	0x18
	.4byte	0x135
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF28
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.4byte	.LASF29
	.uleb128 0x4
	.4byte	.LASF30
	.byte	0x8
	.byte	0x11
	.4byte	0x114
	.uleb128 0x8
	.byte	0x4
	.4byte	0x2c
	.byte	0x8
	.byte	0x14
	.4byte	0x18f
	.uleb128 0x9
	.4byte	.LASF31
	.byte	0
	.uleb128 0x9
	.4byte	.LASF32
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF33
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF34
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF35
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF36
	.byte	0x8
	.byte	0x1a
	.4byte	0x164
	.uleb128 0xa
	.byte	0x14
	.byte	0x8
	.byte	0x34
	.4byte	0x1df
	.uleb128 0x7
	.4byte	.LASF37
	.byte	0x8
	.byte	0x35
	.4byte	0x1ee
	.byte	0
	.uleb128 0x7
	.4byte	.LASF38
	.byte	0x8
	.byte	0x36
	.4byte	0x1ee
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF39
	.byte	0x8
	.byte	0x37
	.4byte	0x218
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF40
	.byte	0x8
	.byte	0x38
	.4byte	0x247
	.byte	0xc
	.uleb128 0x7
	.4byte	.LASF41
	.byte	0x8
	.byte	0x39
	.4byte	0x266
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.4byte	0x159
	.4byte	0x1ee
	.uleb128 0xc
	.4byte	0x114
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x1df
	.uleb128 0xb
	.4byte	0x18f
	.4byte	0x212
	.uleb128 0xc
	.4byte	0x114
	.uleb128 0xc
	.4byte	0x212
	.uleb128 0xc
	.4byte	0x12a
	.uleb128 0xc
	.4byte	0x109
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x114
	.uleb128 0xd
	.byte	0x4
	.4byte	0x1f4
	.uleb128 0xb
	.4byte	0x18f
	.4byte	0x23c
	.uleb128 0xc
	.4byte	0x114
	.uleb128 0xc
	.4byte	0x23c
	.uleb128 0xc
	.4byte	0x12a
	.uleb128 0xc
	.4byte	0x109
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x242
	.uleb128 0xe
	.4byte	0x114
	.uleb128 0xd
	.byte	0x4
	.4byte	0x21e
	.uleb128 0xb
	.4byte	0x18f
	.4byte	0x266
	.uleb128 0xc
	.4byte	0x114
	.uleb128 0xc
	.4byte	0x114
	.uleb128 0xc
	.4byte	0x76
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x24d
	.uleb128 0x4
	.4byte	.LASF42
	.byte	0x8
	.byte	0x3a
	.4byte	0x19a
	.uleb128 0xa
	.byte	0x2
	.byte	0x9
	.byte	0x2c
	.4byte	0x296
	.uleb128 0xf
	.string	"pd"
	.byte	0x9
	.byte	0x2d
	.4byte	0x114
	.byte	0
	.uleb128 0xf
	.string	"pt"
	.byte	0x9
	.byte	0x2e
	.4byte	0x114
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF43
	.byte	0x9
	.byte	0x2f
	.4byte	0x277
	.uleb128 0x10
	.4byte	.LASF48
	.byte	0x1
	.byte	0x1b
	.4byte	0x140
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2d7
	.uleb128 0x11
	.4byte	.LASF44
	.byte	0x1
	.byte	0x1b
	.4byte	0x212
	.4byte	.LLST0
	.uleb128 0x12
	.string	"i"
	.byte	0x1
	.byte	0x1d
	.4byte	0x114
	.4byte	.LLST1
	.byte	0
	.uleb128 0x13
	.4byte	.LASF68
	.byte	0x1
	.byte	0x27
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3d4
	.uleb128 0x11
	.4byte	.LASF45
	.byte	0x1
	.byte	0x27
	.4byte	0x114
	.4byte	.LLST2
	.uleb128 0x11
	.4byte	.LASF46
	.byte	0x1
	.byte	0x27
	.4byte	0x3d4
	.4byte	.LLST3
	.uleb128 0x14
	.4byte	.LASF69
	.4byte	0x3ef
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5576
	.uleb128 0x15
	.4byte	.LASF47
	.byte	0x1
	.byte	0x35
	.4byte	0x3f4
	.4byte	.LLST4
	.uleb128 0x16
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.4byte	0x34d
	.uleb128 0x12
	.string	"im"
	.byte	0x1
	.byte	0x2c
	.4byte	0x3f4
	.4byte	.LLST5
	.uleb128 0x17
	.4byte	.LVL11
	.4byte	0x65f
	.byte	0
	.uleb128 0x18
	.4byte	.LVL9
	.4byte	0x66a
	.4byte	0x37c
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x29
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5576
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x18
	.4byte	.LVL12
	.4byte	0x675
	.4byte	0x38f
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x44
	.byte	0
	.uleb128 0x18
	.4byte	.LVL14
	.4byte	0x66a
	.4byte	0x3be
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x36
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5576
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL15
	.4byte	0x680
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x44
	.byte	0
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x3da
	.uleb128 0xe
	.4byte	0x26c
	.uleb128 0x1b
	.4byte	0x7f
	.4byte	0x3ef
	.uleb128 0x1c
	.4byte	0x6f
	.byte	0x12
	.byte	0
	.uleb128 0xe
	.4byte	0x3df
	.uleb128 0xd
	.byte	0x4
	.4byte	0x26c
	.uleb128 0x10
	.4byte	.LASF49
	.byte	0x1
	.byte	0x3b
	.4byte	0x159
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x432
	.uleb128 0x11
	.4byte	.LASF45
	.byte	0x1
	.byte	0x3b
	.4byte	0x114
	.4byte	.LLST6
	.uleb128 0x1d
	.4byte	.LVL20
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x72
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	.LASF50
	.byte	0x1
	.byte	0x3f
	.4byte	0x159
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x46a
	.uleb128 0x11
	.4byte	.LASF45
	.byte	0x1
	.byte	0x3f
	.4byte	0x114
	.4byte	.LLST7
	.uleb128 0x1d
	.4byte	.LVL23
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x72
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	.LASF51
	.byte	0x1
	.byte	0x43
	.4byte	0x18f
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4db
	.uleb128 0x11
	.4byte	.LASF45
	.byte	0x1
	.byte	0x43
	.4byte	0x114
	.4byte	.LLST8
	.uleb128 0x1e
	.4byte	.LASF52
	.byte	0x1
	.byte	0x43
	.4byte	0x212
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1e
	.4byte	.LASF53
	.byte	0x1
	.byte	0x43
	.4byte	0x12a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1e
	.4byte	.LASF54
	.byte	0x1
	.byte	0x43
	.4byte	0x109
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1d
	.4byte	.LVL26
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x72
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	.LASF55
	.byte	0x1
	.byte	0x47
	.4byte	0x18f
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x54c
	.uleb128 0x11
	.4byte	.LASF45
	.byte	0x1
	.byte	0x47
	.4byte	0x114
	.4byte	.LLST9
	.uleb128 0x1e
	.4byte	.LASF52
	.byte	0x1
	.byte	0x47
	.4byte	0x23c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1e
	.4byte	.LASF53
	.byte	0x1
	.byte	0x47
	.4byte	0x12a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1e
	.4byte	.LASF54
	.byte	0x1
	.byte	0x47
	.4byte	0x109
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1d
	.4byte	.LVL29
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x72
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	.LASF56
	.byte	0x1
	.byte	0x4b
	.4byte	0x18f
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5ad
	.uleb128 0x11
	.4byte	.LASF45
	.byte	0x1
	.byte	0x4b
	.4byte	0x114
	.4byte	.LLST10
	.uleb128 0x1f
	.string	"cmd"
	.byte	0x1
	.byte	0x4b
	.4byte	0x114
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1e
	.4byte	.LASF52
	.byte	0x1
	.byte	0x4b
	.4byte	0x76
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1d
	.4byte	.LVL32
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x72
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	.LASF57
	.byte	0x1
	.byte	0x50
	.4byte	0x12a
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x61d
	.uleb128 0x20
	.string	"t"
	.byte	0x1
	.byte	0x52
	.4byte	0x86
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x20
	.string	"tmr"
	.byte	0x1
	.byte	0x53
	.4byte	0x91
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x15
	.4byte	.LASF58
	.byte	0x1
	.byte	0x55
	.4byte	0x25
	.4byte	.LLST11
	.uleb128 0x18
	.4byte	.LVL34
	.4byte	0x689
	.4byte	0x604
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL35
	.4byte	0x694
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	0x3f4
	.4byte	0x62d
	.uleb128 0x1c
	.4byte	0x6f
	.byte	0x1
	.byte	0
	.uleb128 0x21
	.4byte	.LASF59
	.byte	0x1
	.byte	0x12
	.4byte	0x61d
	.uleb128 0x5
	.byte	0x3
	.4byte	s_impls
	.uleb128 0x1b
	.4byte	0x296
	.4byte	0x64e
	.uleb128 0x1c
	.4byte	0x6f
	.byte	0x1
	.byte	0
	.uleb128 0x22
	.4byte	.LASF70
	.byte	0x1
	.byte	0x15
	.4byte	0x63e
	.uleb128 0x5
	.byte	0x3
	.4byte	VolToPart
	.uleb128 0x23
	.4byte	.LASF60
	.4byte	.LASF60
	.byte	0xa
	.byte	0x5a
	.uleb128 0x23
	.4byte	.LASF61
	.4byte	.LASF61
	.byte	0xb
	.byte	0x29
	.uleb128 0x23
	.4byte	.LASF62
	.4byte	.LASF62
	.byte	0xa
	.byte	0x65
	.uleb128 0x24
	.4byte	.LASF71
	.4byte	.LASF71
	.uleb128 0x23
	.4byte	.LASF63
	.4byte	.LASF63
	.byte	0x4
	.byte	0x35
	.uleb128 0x23
	.4byte	.LASF64
	.4byte	.LASF64
	.byte	0x4
	.byte	0x45
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
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x7
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
	.uleb128 0xc
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x14
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
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x22
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
	.uleb128 0x24
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
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL7
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x3
	.byte	0x78
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LFE14
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL8
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL17
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL8
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL16
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL13
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL10
	.4byte	.LVL11-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL19
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL21
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL22
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL24
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL25
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL27
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL28
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL30
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL31
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL33
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x54
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
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
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
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF68:
	.string	"ff_diskio_register"
.LASF45:
	.string	"pdrv"
.LASF15:
	.string	"tm_hour"
.LASF32:
	.string	"RES_ERROR"
.LASF40:
	.string	"write"
.LASF31:
	.string	"RES_OK"
.LASF4:
	.string	"short int"
.LASF62:
	.string	"malloc"
.LASF8:
	.string	"sizetype"
.LASF59:
	.string	"s_impls"
.LASF71:
	.string	"memcpy"
.LASF52:
	.string	"buff"
.LASF44:
	.string	"out_pdrv"
.LASF23:
	.string	"BYTE"
.LASF58:
	.string	"year"
.LASF43:
	.string	"PARTITION"
.LASF70:
	.string	"VolToPart"
.LASF12:
	.string	"time_t"
.LASF24:
	.string	"WORD"
.LASF46:
	.string	"discio_impl"
.LASF53:
	.string	"sector"
.LASF60:
	.string	"free"
.LASF66:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/fatfs/src/diskio.c"
.LASF48:
	.string	"ff_diskio_get_drive"
.LASF29:
	.string	"float"
.LASF17:
	.string	"tm_mon"
.LASF5:
	.string	"long long int"
.LASF37:
	.string	"init"
.LASF49:
	.string	"ff_disk_initialize"
.LASF7:
	.string	"long int"
.LASF33:
	.string	"RES_WRPRT"
.LASF22:
	.string	"UINT"
.LASF67:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\fatfs"
.LASF42:
	.string	"ff_diskio_impl_t"
.LASF3:
	.string	"unsigned char"
.LASF25:
	.string	"DWORD"
.LASF50:
	.string	"ff_disk_status"
.LASF19:
	.string	"tm_wday"
.LASF69:
	.string	"__func__"
.LASF65:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF39:
	.string	"read"
.LASF2:
	.string	"signed char"
.LASF36:
	.string	"DRESULT"
.LASF6:
	.string	"long long unsigned int"
.LASF0:
	.string	"unsigned int"
.LASF56:
	.string	"ff_disk_ioctl"
.LASF16:
	.string	"tm_mday"
.LASF41:
	.string	"ioctl"
.LASF63:
	.string	"time"
.LASF47:
	.string	"impl"
.LASF1:
	.string	"short unsigned int"
.LASF18:
	.string	"tm_year"
.LASF38:
	.string	"status"
.LASF10:
	.string	"char"
.LASF28:
	.string	"_Bool"
.LASF26:
	.string	"int32_t"
.LASF34:
	.string	"RES_NOTRDY"
.LASF64:
	.string	"localtime_r"
.LASF14:
	.string	"tm_min"
.LASF21:
	.string	"tm_isdst"
.LASF9:
	.string	"long unsigned int"
.LASF20:
	.string	"tm_yday"
.LASF54:
	.string	"count"
.LASF11:
	.string	"__int32_t"
.LASF57:
	.string	"get_fattime"
.LASF51:
	.string	"ff_disk_read"
.LASF30:
	.string	"DSTATUS"
.LASF13:
	.string	"tm_sec"
.LASF61:
	.string	"__assert_func"
.LASF35:
	.string	"RES_PARERR"
.LASF27:
	.string	"esp_err_t"
.LASF55:
	.string	"ff_disk_write"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
