	.file	"buffer.c"
	.text
.Ltext0:
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC0:
	.string	"size > 0"
	.align	4
.LC3:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/osi/buffer.c"
	.align	4
.LC5:
	.string	"BT_OSI"
	.align	4
.LC7:
	.string	"\033[0;31mE (%d) %s: %s unable to allocate buffer of %zu bytes.\033[0m\n"
	.section	.text.buffer_new,"ax",@progbits
	.literal_position
	.literal .LC1, .LC0
	.literal .LC2, __func__$3401
	.literal .LC4, .LC3
	.literal .LC6, .LC5
	.literal .LC8, .LC7
	.align	4
	.global	buffer_new
	.type	buffer_new, @function
buffer_new:
.LFB11:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/osi/buffer.c"
	.loc 1 33 0
.LVL0:
	entry	sp, 48
.LCFI0:
	.loc 1 34 0
	bnez.n	a2, .L2
	.loc 1 34 0 is_stmt 0 discriminator 1
	l32r	a13, .LC1
	l32r	a12, .LC2
	movi.n	a11, 0x22
	l32r	a10, .LC4
	call8	__assert_func
.LVL1:
.L2:
	.loc 1 36 0 is_stmt 1
	addi.n	a10, a2, 12
	call8	malloc
.LVL2:
	.loc 1 37 0
	bnez.n	a10, .L3
	.loc 1 38 0 discriminator 1
	call8	esp_log_timestamp
.LVL3:
	l32r	a11, .LC6
	s32i.n	a2, sp, 0
	l32r	a15, .LC2
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC8
	movi.n	a10, 1
	call8	esp_log_write
.LVL4:
	.loc 1 39 0 discriminator 1
	movi.n	a2, 0
.LVL5:
	retw.n
.LVL6:
.L3:
	.loc 1 42 0
	s32i.n	a10, a10, 0
	.loc 1 43 0
	movi.n	a8, 1
	s32i.n	a8, a10, 4
	.loc 1 44 0
	s32i.n	a2, a10, 8
	.loc 1 46 0
	mov.n	a2, a10
.LVL7:
	.loc 1 47 0
	retw.n
.LFE11:
	.size	buffer_new, .-buffer_new
	.section	.rodata.str1.4
	.align	4
.LC9:
	.string	"buf != NULL"
	.align	4
.LC13:
	.string	"slice_size > 0"
	.align	4
.LC15:
	.string	"slice_size <= buf->length"
	.align	4
.LC18:
	.string	"\033[0;31mE (%d) %s: %s unable to allocate new buffer for slice of length %zu.\033[0m\n"
	.section	.text.buffer_new_slice,"ax",@progbits
	.literal_position
	.literal .LC10, .LC9
	.literal .LC11, __func__$3411
	.literal .LC12, .LC3
	.literal .LC14, .LC13
	.literal .LC16, .LC15
	.literal .LC17, .LC5
	.literal .LC19, .LC18
	.align	4
	.global	buffer_new_slice
	.type	buffer_new_slice, @function
buffer_new_slice:
.LFB13:
	.loc 1 56 0
.LVL8:
	entry	sp, 48
.LCFI1:
	.loc 1 57 0
	bnez.n	a2, .L6
	.loc 1 57 0 is_stmt 0 discriminator 1
	l32r	a13, .LC10
	l32r	a12, .LC11
	movi.n	a11, 0x39
	l32r	a10, .LC12
	call8	__assert_func
.LVL9:
.L6:
	.loc 1 58 0 is_stmt 1
	bnez.n	a3, .L7
	.loc 1 58 0 is_stmt 0 discriminator 1
	l32r	a13, .LC14
	l32r	a12, .LC11
	movi.n	a11, 0x3a
	l32r	a10, .LC12
	call8	__assert_func
.LVL10:
.L7:
	.loc 1 59 0 is_stmt 1
	l32i.n	a8, a2, 8
	bgeu	a8, a3, .L8
	.loc 1 59 0 is_stmt 0 discriminator 1
	l32r	a13, .LC16
	l32r	a12, .LC11
	movi.n	a11, 0x3b
	l32r	a10, .LC12
	call8	__assert_func
.LVL11:
.L8:
	.loc 1 61 0 is_stmt 1
	movi.n	a11, 0xc
	movi.n	a10, 1
	call8	calloc
.LVL12:
	.loc 1 62 0
	bnez.n	a10, .L9
	.loc 1 63 0 discriminator 1
	call8	esp_log_timestamp
.LVL13:
	l32r	a11, .LC17
	s32i.n	a3, sp, 0
	l32r	a15, .LC11
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC19
	movi.n	a10, 1
	call8	esp_log_write
.LVL14:
	.loc 1 64 0 discriminator 1
	movi.n	a2, 0
.LVL15:
	retw.n
.LVL16:
.L9:
	.loc 1 67 0
	l32i.n	a2, a2, 0
.LVL17:
	s32i.n	a2, a10, 0
	.loc 1 68 0
	movi.n	a8, -1
	s32i.n	a8, a10, 4
	.loc 1 69 0
	s32i.n	a3, a10, 8
	.loc 1 71 0
	l32i.n	a3, a2, 4
.LVL18:
	addi.n	a3, a3, 1
	s32i.n	a3, a2, 4
.LVL19:
	.loc 1 73 0
	mov.n	a2, a10
	.loc 1 74 0
	retw.n
.LFE13:
	.size	buffer_new_slice, .-buffer_new_slice
	.section	.text.buffer_new_ref,"ax",@progbits
	.literal_position
	.literal .LC20, .LC9
	.literal .LC21, __func__$3406
	.literal .LC22, .LC3
	.align	4
	.global	buffer_new_ref
	.type	buffer_new_ref, @function
buffer_new_ref:
.LFB12:
	.loc 1 50 0
.LVL20:
	entry	sp, 32
.LCFI2:
	.loc 1 51 0
	bnez.n	a2, .L12
	.loc 1 51 0 is_stmt 0 discriminator 1
	l32r	a13, .LC20
	l32r	a12, .LC21
	movi.n	a11, 0x33
	l32r	a10, .LC22
	call8	__assert_func
.LVL21:
.L12:
	.loc 1 52 0 is_stmt 1
	l32i.n	a11, a2, 8
	mov.n	a10, a2
	call8	buffer_new_slice
.LVL22:
	.loc 1 53 0
	mov.n	a2, a10
.LVL23:
	retw.n
.LFE12:
	.size	buffer_new_ref, .-buffer_new_ref
	.section	.text.buffer_free,"ax",@progbits
	.align	4
	.global	buffer_free
	.type	buffer_free, @function
buffer_free:
.LFB14:
	.loc 1 77 0
.LVL24:
	entry	sp, 32
.LCFI3:
	.loc 1 78 0
	beqz.n	a2, .L13
	.loc 1 82 0
	l32i.n	a9, a2, 0
	beq	a2, a9, .L15
	.loc 1 84 0
	l32i.n	a8, a9, 4
	addi.n	a8, a8, -1
	s32i.n	a8, a9, 4
	bnez.n	a8, .L16
	.loc 1 85 0
	l32i.n	a10, a2, 0
	call8	free
.LVL25:
.L16:
	.loc 1 87 0
	mov.n	a10, a2
	call8	free
.LVL26:
	retw.n
.L15:
	.loc 1 88 0
	l32i.n	a8, a2, 4
	addi.n	a8, a8, -1
	s32i.n	a8, a2, 4
	bnez.n	a8, .L13
	.loc 1 90 0
	mov.n	a10, a2
	call8	free
.LVL27:
.L13:
	retw.n
.LFE14:
	.size	buffer_free, .-buffer_free
	.section	.text.buffer_ptr,"ax",@progbits
	.literal_position
	.literal .LC23, .LC9
	.literal .LC24, __func__$3419
	.literal .LC25, .LC3
	.align	4
	.global	buffer_ptr
	.type	buffer_ptr, @function
buffer_ptr:
.LFB15:
	.loc 1 95 0
.LVL28:
	entry	sp, 32
.LCFI4:
	.loc 1 96 0
	bnez.n	a2, .L18
	.loc 1 96 0 is_stmt 0 discriminator 1
	l32r	a13, .LC23
	l32r	a12, .LC24
	movi	a11, 0x60
	l32r	a10, .LC25
	call8	__assert_func
.LVL29:
.L18:
	.loc 1 97 0 is_stmt 1
	l32i.n	a8, a2, 0
	l32i.n	a9, a8, 8
	l32i.n	a2, a2, 8
.LVL30:
	sub	a2, a9, a2
	addi.n	a8, a8, 12
	.loc 1 98 0
	add.n	a2, a8, a2
	retw.n
.LFE15:
	.size	buffer_ptr, .-buffer_ptr
	.section	.text.buffer_length,"ax",@progbits
	.literal_position
	.literal .LC26, .LC9
	.literal .LC27, __func__$3423
	.literal .LC28, .LC3
	.align	4
	.global	buffer_length
	.type	buffer_length, @function
buffer_length:
.LFB16:
	.loc 1 101 0
.LVL31:
	entry	sp, 32
.LCFI5:
	.loc 1 102 0
	bnez.n	a2, .L20
	.loc 1 102 0 is_stmt 0 discriminator 1
	l32r	a13, .LC26
	l32r	a12, .LC27
	movi	a11, 0x66
	l32r	a10, .LC28
	call8	__assert_func
.LVL32:
.L20:
	.loc 1 104 0 is_stmt 1
	l32i.n	a2, a2, 8
.LVL33:
	retw.n
.LFE16:
	.size	buffer_length, .-buffer_length
	.section	.rodata.__func__$3423,"a",@progbits
	.align	4
	.type	__func__$3423, @object
	.size	__func__$3423, 14
__func__$3423:
	.string	"buffer_length"
	.section	.rodata.__func__$3419,"a",@progbits
	.align	4
	.type	__func__$3419, @object
	.size	__func__$3419, 11
__func__$3419:
	.string	"buffer_ptr"
	.section	.rodata.__func__$3411,"a",@progbits
	.align	4
	.type	__func__$3411, @object
	.size	__func__$3411, 17
__func__$3411:
	.string	"buffer_new_slice"
	.section	.rodata.__func__$3406,"a",@progbits
	.align	4
	.type	__func__$3406, @object
	.size	__func__$3406, 15
__func__$3406:
	.string	"buffer_new_ref"
	.section	.rodata.__func__$3401,"a",@progbits
	.align	4
	.type	__func__$3401, @object
	.size	__func__$3401, 11
__func__$3401:
	.string	"buffer_new"
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
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x4
	.4byte	.LCFI0-.LFB11
	.byte	0xe
	.uleb128 0x30
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
	.uleb128 0x30
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI2-.LFB12
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI3-.LFB14
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI4-.LFB15
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI5-.LFB16
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 4 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/bt_types.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/osi/include/osi/buffer.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/assert.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdlib.h"
	.file 9 "D:/ESP32/esp-idf-v3.1-rc1/components/log/include/esp_log.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x5b7
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF44
	.byte	0xc
	.4byte	.LASF45
	.4byte	.LASF46
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
	.uleb128 0x5
	.byte	0x4
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
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x5
	.byte	0x21
	.4byte	0x68
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF15
	.uleb128 0x6
	.4byte	0x68
	.4byte	0xbd
	.uleb128 0x7
	.4byte	0x87
	.byte	0
	.uleb128 0x6
	.4byte	0x9c
	.4byte	0xcd
	.uleb128 0x8
	.4byte	0x87
	.byte	0x5
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x53
	.byte	0x9
	.byte	0x1f
	.4byte	0xfe
	.uleb128 0xa
	.4byte	.LASF16
	.byte	0
	.uleb128 0xa
	.4byte	.LASF17
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF18
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF19
	.byte	0x3
	.uleb128 0xa
	.4byte	.LASF20
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF21
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x6
	.byte	0x19
	.4byte	0x109
	.uleb128 0xb
	.4byte	.LASF22
	.byte	0xc
	.byte	0x1
	.byte	0x19
	.4byte	0x146
	.uleb128 0xc
	.4byte	.LASF23
	.byte	0x1
	.byte	0x1a
	.4byte	0x146
	.byte	0
	.uleb128 0xc
	.4byte	.LASF24
	.byte	0x1
	.byte	0x1b
	.4byte	0x73
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF25
	.byte	0x1
	.byte	0x1c
	.4byte	0x73
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF26
	.byte	0x1
	.byte	0x1d
	.4byte	0xae
	.byte	0xc
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0xfe
	.uleb128 0xe
	.4byte	.LASF27
	.byte	0x1
	.byte	0x20
	.4byte	0x146
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x219
	.uleb128 0xf
	.4byte	.LASF29
	.byte	0x1
	.byte	0x20
	.4byte	0x73
	.4byte	.LLST0
	.uleb128 0x10
	.4byte	.LASF31
	.4byte	0x229
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3401
	.uleb128 0x11
	.4byte	.LASF32
	.byte	0x1
	.byte	0x24
	.4byte	0x146
	.4byte	.LLST1
	.uleb128 0x12
	.4byte	.LVL1
	.4byte	0x578
	.4byte	0x1c1
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x22
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3401
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x12
	.4byte	.LVL2
	.4byte	0x583
	.4byte	0x1d5
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 12
	.byte	0
	.uleb128 0x14
	.4byte	.LVL3
	.4byte	0x58e
	.uleb128 0x15
	.4byte	.LVL4
	.4byte	0x599
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3401
	.uleb128 0x13
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	0x95
	.4byte	0x229
	.uleb128 0x8
	.4byte	0x87
	.byte	0xa
	.byte	0
	.uleb128 0x16
	.4byte	0x219
	.uleb128 0xe
	.4byte	.LASF28
	.byte	0x1
	.byte	0x37
	.4byte	0x146
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x36c
	.uleb128 0x17
	.string	"buf"
	.byte	0x1
	.byte	0x37
	.4byte	0x36c
	.4byte	.LLST2
	.uleb128 0xf
	.4byte	.LASF30
	.byte	0x1
	.byte	0x37
	.4byte	0x73
	.4byte	.LLST3
	.uleb128 0x10
	.4byte	.LASF31
	.4byte	0x387
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3411
	.uleb128 0x18
	.string	"ret"
	.byte	0x1
	.byte	0x3d
	.4byte	0x146
	.4byte	.LLST4
	.uleb128 0x12
	.4byte	.LVL9
	.4byte	0x578
	.4byte	0x2b2
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x39
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3411
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0
	.uleb128 0x12
	.4byte	.LVL10
	.4byte	0x578
	.4byte	0x2e1
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x3a
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3411
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC13
	.byte	0
	.uleb128 0x12
	.4byte	.LVL11
	.4byte	0x578
	.4byte	0x310
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x3b
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3411
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.byte	0
	.uleb128 0x12
	.4byte	.LVL12
	.4byte	0x5a4
	.4byte	0x328
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x3c
	.byte	0
	.uleb128 0x14
	.4byte	.LVL13
	.4byte	0x58e
	.uleb128 0x15
	.4byte	.LVL14
	.4byte	0x599
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC18
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3411
	.uleb128 0x13
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x372
	.uleb128 0x16
	.4byte	0xfe
	.uleb128 0x6
	.4byte	0x95
	.4byte	0x387
	.uleb128 0x8
	.4byte	0x87
	.byte	0x10
	.byte	0
	.uleb128 0x16
	.4byte	0x377
	.uleb128 0xe
	.4byte	.LASF33
	.byte	0x1
	.byte	0x31
	.4byte	0x146
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x403
	.uleb128 0x17
	.string	"buf"
	.byte	0x1
	.byte	0x31
	.4byte	0x36c
	.4byte	.LLST5
	.uleb128 0x10
	.4byte	.LASF31
	.4byte	0x413
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3406
	.uleb128 0x12
	.4byte	.LVL21
	.4byte	0x578
	.4byte	0x3f2
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x33
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3406
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0
	.uleb128 0x15
	.4byte	.LVL22
	.4byte	0x22e
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	0x95
	.4byte	0x413
	.uleb128 0x8
	.4byte	0x87
	.byte	0xe
	.byte	0
	.uleb128 0x16
	.4byte	0x403
	.uleb128 0x19
	.4byte	.LASF47
	.byte	0x1
	.byte	0x4c
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x468
	.uleb128 0x1a
	.4byte	.LASF32
	.byte	0x1
	.byte	0x4c
	.4byte	0x146
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x14
	.4byte	.LVL25
	.4byte	0x5af
	.uleb128 0x12
	.4byte	.LVL26
	.4byte	0x5af
	.4byte	0x457
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL27
	.4byte	0x5af
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF34
	.byte	0x1
	.byte	0x5e
	.4byte	0x7e
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4cb
	.uleb128 0x17
	.string	"buf"
	.byte	0x1
	.byte	0x5e
	.4byte	0x36c
	.4byte	.LLST6
	.uleb128 0x10
	.4byte	.LASF31
	.4byte	0x4cb
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3419
	.uleb128 0x15
	.4byte	.LVL29
	.4byte	0x578
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x60
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3419
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	0x219
	.uleb128 0xe
	.4byte	.LASF35
	.byte	0x1
	.byte	0x64
	.4byte	0x73
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x533
	.uleb128 0x17
	.string	"buf"
	.byte	0x1
	.byte	0x64
	.4byte	0x36c
	.4byte	.LLST7
	.uleb128 0x10
	.4byte	.LASF31
	.4byte	0x543
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3423
	.uleb128 0x15
	.4byte	.LVL32
	.4byte	0x578
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x66
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3423
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	0x95
	.4byte	0x543
	.uleb128 0x8
	.4byte	0x87
	.byte	0xd
	.byte	0
	.uleb128 0x16
	.4byte	0x533
	.uleb128 0x1b
	.4byte	.LASF36
	.byte	0x5
	.2byte	0x2cc
	.4byte	0x55b
	.byte	0x6
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.uleb128 0x16
	.4byte	0xbd
	.uleb128 0x1b
	.4byte	.LASF37
	.byte	0x5
	.2byte	0x2cd
	.4byte	0x573
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	0xbd
	.uleb128 0x1c
	.4byte	.LASF38
	.4byte	.LASF38
	.byte	0x7
	.byte	0x29
	.uleb128 0x1c
	.4byte	.LASF39
	.4byte	.LASF39
	.byte	0x8
	.byte	0x65
	.uleb128 0x1c
	.4byte	.LASF40
	.4byte	.LASF40
	.byte	0x9
	.byte	0x57
	.uleb128 0x1c
	.4byte	.LASF41
	.4byte	.LASF41
	.byte	0x9
	.byte	0x6b
	.uleb128 0x1c
	.4byte	.LASF42
	.4byte	.LASF42
	.byte	0x8
	.byte	0x57
	.uleb128 0x1c
	.4byte	.LASF43
	.4byte	.LASF43
	.byte	0x8
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
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0xc
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL7
	.4byte	.LFE11
	.2byte	0x2
	.byte	0x72
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL6
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL8
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
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL8
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x2
	.byte	0x7a
	.sleb128 8
	.4byte	.LVL19
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL12
	.4byte	.LVL13-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL16
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL20
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL23
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL28
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL30
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL31
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL33
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
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
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
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
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LFB12
	.4byte	.LFE12
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
.LASF31:
	.string	"__func__"
.LASF7:
	.string	"__uint8_t"
.LASF9:
	.string	"size_t"
.LASF37:
	.string	"bd_addr_null"
.LASF17:
	.string	"ESP_LOG_ERROR"
.LASF18:
	.string	"ESP_LOG_WARN"
.LASF14:
	.string	"UINT8"
.LASF35:
	.string	"buffer_length"
.LASF27:
	.string	"buffer_new"
.LASF3:
	.string	"short unsigned int"
.LASF33:
	.string	"buffer_new_ref"
.LASF2:
	.string	"short int"
.LASF28:
	.string	"buffer_new_slice"
.LASF40:
	.string	"esp_log_timestamp"
.LASF30:
	.string	"slice_size"
.LASF19:
	.string	"ESP_LOG_INFO"
.LASF26:
	.string	"data"
.LASF46:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\bt"
.LASF29:
	.string	"size"
.LASF12:
	.string	"long unsigned int"
.LASF47:
	.string	"buffer_free"
.LASF24:
	.string	"refcount"
.LASF22:
	.string	"buffer_t"
.LASF23:
	.string	"root"
.LASF38:
	.string	"__assert_func"
.LASF45:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/osi/buffer.c"
.LASF1:
	.string	"unsigned char"
.LASF4:
	.string	"unsigned int"
.LASF20:
	.string	"ESP_LOG_DEBUG"
.LASF6:
	.string	"long long unsigned int"
.LASF8:
	.string	"uint8_t"
.LASF44:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF43:
	.string	"free"
.LASF5:
	.string	"long long int"
.LASF11:
	.string	"sizetype"
.LASF16:
	.string	"ESP_LOG_NONE"
.LASF36:
	.string	"bd_addr_any"
.LASF42:
	.string	"calloc"
.LASF32:
	.string	"buffer"
.LASF41:
	.string	"esp_log_write"
.LASF10:
	.string	"long int"
.LASF13:
	.string	"char"
.LASF0:
	.string	"signed char"
.LASF34:
	.string	"buffer_ptr"
.LASF15:
	.string	"_Bool"
.LASF25:
	.string	"length"
.LASF39:
	.string	"malloc"
.LASF21:
	.string	"ESP_LOG_VERBOSE"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
