	.file	"nghttp2_outbound_item.c"
	.text
.Ltext0:
	.section	.text.nghttp2_outbound_item_init,"ax",@progbits
	.literal_position
	.literal .LC0, 0, 0
	.align	4
	.global	nghttp2_outbound_item_init
	.type	nghttp2_outbound_item_init, @function
nghttp2_outbound_item_init:
.LFB0:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/nghttp/nghttp2/lib/nghttp2_outbound_item.c"
	.loc 1 30 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 31 0
	l32r	a8, .LC0
	l32r	a9, .LC0+4
	s32i	a8, a2, 80
	s32i	a9, a2, 84
	.loc 1 32 0
	movi.n	a11, 0
	s32i	a11, a2, 88
	.loc 1 33 0
	s8i	a11, a2, 92
	.loc 1 35 0
	movi.n	a12, 0x14
	addi	a10, a2, 56
	call8	memset
.LVL1:
	retw.n
.LFE0:
	.size	nghttp2_outbound_item_init, .-nghttp2_outbound_item_init
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC2:
	.string	"0"
	.align	4
.LC5:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/nghttp/nghttp2/lib/nghttp2_outbound_item.c"
	.section	.text.nghttp2_outbound_item_free,"ax",@progbits
	.literal_position
	.literal .LC1, .L6
	.literal .LC3, .LC2
	.literal .LC4, __func__$4684
	.literal .LC6, .LC5
	.align	4
	.global	nghttp2_outbound_item_free
	.type	nghttp2_outbound_item_free, @function
nghttp2_outbound_item_free:
.LFB1:
	.loc 1 38 0
.LVL2:
	entry	sp, 32
.LCFI1:
	.loc 1 41 0
	beqz.n	a2, .L2
.LVL3:
	.loc 1 47 0
	l8ui	a8, a2, 8
	movi.n	a9, 8
	bltu	a9, a8, .L4
	l32r	a9, .LC1
	addx4	a8, a8, a9
	l32i.n	a8, a8, 0
	jx	a8
	.section	.rodata.nghttp2_outbound_item_free,"a",@progbits
	.align	4
	.align	4
.L6:
	.word	.L5
	.word	.L7
	.word	.L8
	.word	.L9
	.word	.L10
	.word	.L11
	.word	.L12
	.word	.L13
	.word	.L14
	.section	.text.nghttp2_outbound_item_free
.L5:
	.loc 1 49 0
	mov.n	a10, a2
	call8	nghttp2_frame_data_free
.LVL4:
	.loc 1 50 0
	retw.n
.L7:
	.loc 1 52 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	nghttp2_frame_headers_free
.LVL5:
	.loc 1 53 0
	retw.n
.L8:
	.loc 1 55 0
	mov.n	a10, a2
	call8	nghttp2_frame_priority_free
.LVL6:
	.loc 1 56 0
	retw.n
.L9:
	.loc 1 58 0
	mov.n	a10, a2
	call8	nghttp2_frame_rst_stream_free
.LVL7:
	.loc 1 59 0
	retw.n
.L10:
	.loc 1 61 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	nghttp2_frame_settings_free
.LVL8:
	.loc 1 62 0
	retw.n
.L11:
	.loc 1 64 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	nghttp2_frame_push_promise_free
.LVL9:
	.loc 1 65 0
	retw.n
.L12:
	.loc 1 67 0
	mov.n	a10, a2
	call8	nghttp2_frame_ping_free
.LVL10:
	.loc 1 68 0
	retw.n
.L13:
	.loc 1 70 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	nghttp2_frame_goaway_free
.LVL11:
	.loc 1 71 0
	retw.n
.L14:
	.loc 1 73 0
	mov.n	a10, a2
	call8	nghttp2_frame_window_update_free
.LVL12:
	.loc 1 74 0
	retw.n
.L4:
.LVL13:
.LBB2:
	.loc 1 80 0
	l8ui	a9, a2, 56
	bnez.n	a9, .L15
	.loc 1 81 0
	mov.n	a10, a2
	call8	nghttp2_frame_extension_free
.LVL14:
	.loc 1 82 0
	retw.n
.L15:
	.loc 1 85 0
	bnei	a8, 10, .L18
	.loc 1 87 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	nghttp2_frame_altsvc_free
.LVL15:
	.loc 1 88 0
	retw.n
.L18:
	.loc 1 90 0
	l32r	a13, .LC3
	l32r	a12, .LC4
	movi.n	a11, 0x5a
	l32r	a10, .LC6
	call8	__assert_func
.LVL16:
.L2:
	retw.n
.LBE2:
.LFE1:
	.size	nghttp2_outbound_item_free, .-nghttp2_outbound_item_free
	.section	.text.nghttp2_outbound_queue_init,"ax",@progbits
	.align	4
	.global	nghttp2_outbound_queue_init
	.type	nghttp2_outbound_queue_init, @function
nghttp2_outbound_queue_init:
.LFB2:
	.loc 1 97 0
.LVL17:
	entry	sp, 32
.LCFI2:
	.loc 1 98 0
	movi.n	a8, 0
	s32i.n	a8, a2, 4
	s32i.n	a8, a2, 0
	.loc 1 99 0
	s32i.n	a8, a2, 8
	retw.n
.LFE2:
	.size	nghttp2_outbound_queue_init, .-nghttp2_outbound_queue_init
	.section	.text.nghttp2_outbound_queue_push,"ax",@progbits
	.align	4
	.global	nghttp2_outbound_queue_push
	.type	nghttp2_outbound_queue_push, @function
nghttp2_outbound_queue_push:
.LFB3:
	.loc 1 103 0
.LVL18:
	entry	sp, 32
.LCFI3:
	.loc 1 104 0
	l32i.n	a8, a2, 4
	beqz.n	a8, .L21
	.loc 1 105 0
	s32i	a3, a8, 88
	s32i.n	a3, a2, 4
	j	.L22
.L21:
	.loc 1 107 0
	s32i.n	a3, a2, 4
	s32i.n	a3, a2, 0
.L22:
	.loc 1 109 0
	l32i.n	a8, a2, 8
	addi.n	a8, a8, 1
	s32i.n	a8, a2, 8
	retw.n
.LFE3:
	.size	nghttp2_outbound_queue_push, .-nghttp2_outbound_queue_push
	.section	.text.nghttp2_outbound_queue_pop,"ax",@progbits
	.align	4
	.global	nghttp2_outbound_queue_pop
	.type	nghttp2_outbound_queue_pop, @function
nghttp2_outbound_queue_pop:
.LFB4:
	.loc 1 112 0
.LVL19:
	entry	sp, 32
.LCFI4:
	.loc 1 114 0
	l32i.n	a8, a2, 0
	beqz.n	a8, .L23
.LVL20:
	.loc 1 118 0
	l32i	a9, a8, 88
	s32i.n	a9, a2, 0
	.loc 1 119 0
	movi.n	a9, 0
	s32i	a9, a8, 88
	.loc 1 120 0
	l32i.n	a8, a2, 0
.LVL21:
	bne	a8, a9, .L25
	.loc 1 121 0
	s32i.n	a9, a2, 4
.L25:
	.loc 1 123 0
	l32i.n	a8, a2, 8
	addi.n	a8, a8, -1
	s32i.n	a8, a2, 8
.L23:
	retw.n
.LFE4:
	.size	nghttp2_outbound_queue_pop, .-nghttp2_outbound_queue_pop
	.section	.rodata.__func__$4684,"a",@progbits
	.align	4
	.type	__func__$4684, @object
	.size	__func__$4684, 27
__func__$4684:
	.string	"nghttp2_outbound_item_free"
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
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI3-.LFB3
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI4-.LFB4
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 3 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/_types.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/types.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/nghttp/nghttp2/lib/includes/nghttp2/nghttp2.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/nghttp/nghttp2/lib/nghttp2_frame.h"
	.file 9 "D:/ESP32/esp-idf-v3.1-rc1/components/nghttp/nghttp2/lib/nghttp2_outbound_item.h"
	.file 10 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/assert.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xca1
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF145
	.byte	0xc
	.4byte	.LASF146
	.4byte	.LASF147
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
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x2
	.byte	0x1e
	.4byte	0x82
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x3
	.byte	0xd8
	.4byte	0x69
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x4
	.byte	0x37
	.4byte	0x57
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF16
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x5
	.byte	0xcb
	.4byte	0x9d
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x6
	.byte	0x15
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x6
	.byte	0x2c
	.4byte	0x4c
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x6
	.byte	0x2d
	.4byte	0x5e
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x6
	.byte	0x39
	.4byte	0x77
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x7
	.byte	0x7c
	.4byte	0xff
	.uleb128 0x6
	.4byte	.LASF22
	.uleb128 0x7
	.byte	0x4
	.4byte	0xc8
	.uleb128 0x8
	.byte	0x14
	.byte	0x7
	.2byte	0x1fb
	.4byte	0x155
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x7
	.2byte	0x208
	.4byte	0x104
	.byte	0
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x7
	.2byte	0x215
	.4byte	0x104
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x7
	.2byte	0x219
	.4byte	0x89
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF26
	.byte	0x7
	.2byte	0x21d
	.4byte	0x89
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF27
	.byte	0x7
	.2byte	0x221
	.4byte	0xc8
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0x7
	.2byte	0x222
	.4byte	0x10a
	.uleb128 0xb
	.byte	0x4
	.4byte	0x69
	.byte	0x7
	.2byte	0x229
	.4byte	0x1b1
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0
	.uleb128 0xc
	.4byte	.LASF30
	.byte	0x1
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0x2
	.uleb128 0xc
	.4byte	.LASF32
	.byte	0x3
	.uleb128 0xc
	.4byte	.LASF33
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF34
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF35
	.byte	0x6
	.uleb128 0xc
	.4byte	.LASF36
	.byte	0x7
	.uleb128 0xc
	.4byte	.LASF37
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF38
	.byte	0x9
	.uleb128 0xc
	.4byte	.LASF39
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.byte	0xc
	.byte	0x7
	.2byte	0x2f3
	.4byte	0x1fc
	.uleb128 0x9
	.4byte	.LASF40
	.byte	0x7
	.2byte	0x2f7
	.4byte	0x89
	.byte	0
	.uleb128 0x9
	.4byte	.LASF41
	.byte	0x7
	.2byte	0x2fb
	.4byte	0xd3
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF42
	.byte	0x7
	.2byte	0x2ff
	.4byte	0xc8
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF27
	.byte	0x7
	.2byte	0x303
	.4byte	0xc8
	.byte	0x9
	.uleb128 0x9
	.4byte	.LASF43
	.byte	0x7
	.2byte	0x308
	.4byte	0xc8
	.byte	0xa
	.byte	0
	.uleb128 0xa
	.4byte	.LASF44
	.byte	0x7
	.2byte	0x309
	.4byte	0x1b1
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.2byte	0x311
	.4byte	0x229
	.uleb128 0xe
	.string	"fd"
	.byte	0x7
	.2byte	0x315
	.4byte	0x57
	.uleb128 0xe
	.string	"ptr"
	.byte	0x7
	.2byte	0x319
	.4byte	0x94
	.byte	0
	.uleb128 0xa
	.4byte	.LASF45
	.byte	0x7
	.2byte	0x31a
	.4byte	0x208
	.uleb128 0xa
	.4byte	.LASF46
	.byte	0x7
	.2byte	0x374
	.4byte	0x241
	.uleb128 0x7
	.byte	0x4
	.4byte	0x247
	.uleb128 0xf
	.4byte	0xbd
	.4byte	0x274
	.uleb128 0x10
	.4byte	0x274
	.uleb128 0x10
	.4byte	0xd3
	.uleb128 0x10
	.4byte	0x104
	.uleb128 0x10
	.4byte	0x89
	.uleb128 0x10
	.4byte	0x27a
	.uleb128 0x10
	.4byte	0x280
	.uleb128 0x10
	.4byte	0x94
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0xf4
	.uleb128 0x7
	.byte	0x4
	.4byte	0xde
	.uleb128 0x7
	.byte	0x4
	.4byte	0x229
	.uleb128 0x8
	.byte	0x8
	.byte	0x7
	.2byte	0x37e
	.4byte	0x2aa
	.uleb128 0x9
	.4byte	.LASF47
	.byte	0x7
	.2byte	0x382
	.4byte	0x229
	.byte	0
	.uleb128 0x9
	.4byte	.LASF48
	.byte	0x7
	.2byte	0x386
	.4byte	0x235
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.4byte	.LASF49
	.byte	0x7
	.2byte	0x387
	.4byte	0x286
	.uleb128 0x8
	.byte	0x10
	.byte	0x7
	.2byte	0x38f
	.4byte	0x2d9
	.uleb128 0x11
	.string	"hd"
	.byte	0x7
	.2byte	0x390
	.4byte	0x1fc
	.byte	0
	.uleb128 0x9
	.4byte	.LASF50
	.byte	0x7
	.2byte	0x395
	.4byte	0x89
	.byte	0xc
	.byte	0
	.uleb128 0xa
	.4byte	.LASF51
	.byte	0x7
	.2byte	0x396
	.4byte	0x2b6
	.uleb128 0xb
	.byte	0x4
	.4byte	0x69
	.byte	0x7
	.2byte	0x3a1
	.4byte	0x30b
	.uleb128 0xc
	.4byte	.LASF52
	.byte	0
	.uleb128 0xc
	.4byte	.LASF53
	.byte	0x1
	.uleb128 0xc
	.4byte	.LASF54
	.byte	0x2
	.uleb128 0xc
	.4byte	.LASF55
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.4byte	.LASF56
	.byte	0x7
	.2byte	0x3b8
	.4byte	0x2e5
	.uleb128 0x8
	.byte	0xc
	.byte	0x7
	.2byte	0x3bf
	.4byte	0x348
	.uleb128 0x9
	.4byte	.LASF41
	.byte	0x7
	.2byte	0x3c4
	.4byte	0xd3
	.byte	0
	.uleb128 0x9
	.4byte	.LASF57
	.byte	0x7
	.2byte	0x3c8
	.4byte	0xd3
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF58
	.byte	0x7
	.2byte	0x3cc
	.4byte	0xc8
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.4byte	.LASF59
	.byte	0x7
	.2byte	0x3cd
	.4byte	0x317
	.uleb128 0x8
	.byte	0x28
	.byte	0x7
	.2byte	0x3d4
	.4byte	0x3ab
	.uleb128 0x11
	.string	"hd"
	.byte	0x7
	.2byte	0x3d8
	.4byte	0x1fc
	.byte	0
	.uleb128 0x9
	.4byte	.LASF50
	.byte	0x7
	.2byte	0x3dd
	.4byte	0x89
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF60
	.byte	0x7
	.2byte	0x3e1
	.4byte	0x348
	.byte	0x10
	.uleb128 0x11
	.string	"nva"
	.byte	0x7
	.2byte	0x3e5
	.4byte	0x3ab
	.byte	0x1c
	.uleb128 0x9
	.4byte	.LASF61
	.byte	0x7
	.2byte	0x3e9
	.4byte	0x89
	.byte	0x20
	.uleb128 0x11
	.string	"cat"
	.byte	0x7
	.2byte	0x3ed
	.4byte	0x30b
	.byte	0x24
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x155
	.uleb128 0xa
	.4byte	.LASF62
	.byte	0x7
	.2byte	0x3ee
	.4byte	0x354
	.uleb128 0x8
	.byte	0x18
	.byte	0x7
	.2byte	0x3f5
	.4byte	0x3e0
	.uleb128 0x11
	.string	"hd"
	.byte	0x7
	.2byte	0x3f9
	.4byte	0x1fc
	.byte	0
	.uleb128 0x9
	.4byte	.LASF60
	.byte	0x7
	.2byte	0x3fd
	.4byte	0x348
	.byte	0xc
	.byte	0
	.uleb128 0xa
	.4byte	.LASF63
	.byte	0x7
	.2byte	0x3fe
	.4byte	0x3bd
	.uleb128 0x8
	.byte	0x10
	.byte	0x7
	.2byte	0x405
	.4byte	0x40f
	.uleb128 0x11
	.string	"hd"
	.byte	0x7
	.2byte	0x409
	.4byte	0x1fc
	.byte	0
	.uleb128 0x9
	.4byte	.LASF64
	.byte	0x7
	.2byte	0x40d
	.4byte	0xde
	.byte	0xc
	.byte	0
	.uleb128 0xa
	.4byte	.LASF65
	.byte	0x7
	.2byte	0x40e
	.4byte	0x3ec
	.uleb128 0x8
	.byte	0x8
	.byte	0x7
	.2byte	0x415
	.4byte	0x43f
	.uleb128 0x9
	.4byte	.LASF66
	.byte	0x7
	.2byte	0x419
	.4byte	0xd3
	.byte	0
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x7
	.2byte	0x41d
	.4byte	0xde
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.4byte	.LASF67
	.byte	0x7
	.2byte	0x41e
	.4byte	0x41b
	.uleb128 0x8
	.byte	0x14
	.byte	0x7
	.2byte	0x425
	.4byte	0x47a
	.uleb128 0x11
	.string	"hd"
	.byte	0x7
	.2byte	0x429
	.4byte	0x1fc
	.byte	0
	.uleb128 0x11
	.string	"niv"
	.byte	0x7
	.2byte	0x42d
	.4byte	0x89
	.byte	0xc
	.uleb128 0x11
	.string	"iv"
	.byte	0x7
	.2byte	0x431
	.4byte	0x47a
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x43f
	.uleb128 0xa
	.4byte	.LASF68
	.byte	0x7
	.2byte	0x432
	.4byte	0x44b
	.uleb128 0x8
	.byte	0x20
	.byte	0x7
	.2byte	0x439
	.4byte	0x4e3
	.uleb128 0x11
	.string	"hd"
	.byte	0x7
	.2byte	0x43d
	.4byte	0x1fc
	.byte	0
	.uleb128 0x9
	.4byte	.LASF50
	.byte	0x7
	.2byte	0x442
	.4byte	0x89
	.byte	0xc
	.uleb128 0x11
	.string	"nva"
	.byte	0x7
	.2byte	0x446
	.4byte	0x3ab
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF61
	.byte	0x7
	.2byte	0x44a
	.4byte	0x89
	.byte	0x14
	.uleb128 0x9
	.4byte	.LASF69
	.byte	0x7
	.2byte	0x44e
	.4byte	0xd3
	.byte	0x18
	.uleb128 0x9
	.4byte	.LASF43
	.byte	0x7
	.2byte	0x453
	.4byte	0xc8
	.byte	0x1c
	.byte	0
	.uleb128 0xa
	.4byte	.LASF70
	.byte	0x7
	.2byte	0x454
	.4byte	0x48c
	.uleb128 0x8
	.byte	0x14
	.byte	0x7
	.2byte	0x45b
	.4byte	0x512
	.uleb128 0x11
	.string	"hd"
	.byte	0x7
	.2byte	0x45f
	.4byte	0x1fc
	.byte	0
	.uleb128 0x9
	.4byte	.LASF71
	.byte	0x7
	.2byte	0x463
	.4byte	0x512
	.byte	0xc
	.byte	0
	.uleb128 0x12
	.4byte	0xc8
	.4byte	0x522
	.uleb128 0x13
	.4byte	0xa8
	.byte	0x7
	.byte	0
	.uleb128 0xa
	.4byte	.LASF72
	.byte	0x7
	.2byte	0x464
	.4byte	0x4ef
	.uleb128 0x8
	.byte	0x20
	.byte	0x7
	.2byte	0x46b
	.4byte	0x585
	.uleb128 0x11
	.string	"hd"
	.byte	0x7
	.2byte	0x46f
	.4byte	0x1fc
	.byte	0
	.uleb128 0x9
	.4byte	.LASF73
	.byte	0x7
	.2byte	0x473
	.4byte	0xd3
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF64
	.byte	0x7
	.2byte	0x477
	.4byte	0xde
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF71
	.byte	0x7
	.2byte	0x47b
	.4byte	0x104
	.byte	0x14
	.uleb128 0x9
	.4byte	.LASF74
	.byte	0x7
	.2byte	0x47f
	.4byte	0x89
	.byte	0x18
	.uleb128 0x9
	.4byte	.LASF43
	.byte	0x7
	.2byte	0x484
	.4byte	0xc8
	.byte	0x1c
	.byte	0
	.uleb128 0xa
	.4byte	.LASF75
	.byte	0x7
	.2byte	0x485
	.4byte	0x52e
	.uleb128 0x8
	.byte	0x14
	.byte	0x7
	.2byte	0x48c
	.4byte	0x5c1
	.uleb128 0x11
	.string	"hd"
	.byte	0x7
	.2byte	0x490
	.4byte	0x1fc
	.byte	0
	.uleb128 0x9
	.4byte	.LASF76
	.byte	0x7
	.2byte	0x494
	.4byte	0xd3
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF43
	.byte	0x7
	.2byte	0x499
	.4byte	0xc8
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.4byte	.LASF77
	.byte	0x7
	.2byte	0x49a
	.4byte	0x591
	.uleb128 0x8
	.byte	0x10
	.byte	0x7
	.2byte	0x4a1
	.4byte	0x5f0
	.uleb128 0x11
	.string	"hd"
	.byte	0x7
	.2byte	0x4a5
	.4byte	0x1fc
	.byte	0
	.uleb128 0x9
	.4byte	.LASF78
	.byte	0x7
	.2byte	0x4ad
	.4byte	0x94
	.byte	0xc
	.byte	0
	.uleb128 0xa
	.4byte	.LASF79
	.byte	0x7
	.2byte	0x4ae
	.4byte	0x5cd
	.uleb128 0xd
	.byte	0x28
	.byte	0x7
	.2byte	0x4b7
	.4byte	0x689
	.uleb128 0xe
	.string	"hd"
	.byte	0x7
	.2byte	0x4bb
	.4byte	0x1fc
	.uleb128 0x14
	.4byte	.LASF80
	.byte	0x7
	.2byte	0x4bf
	.4byte	0x2d9
	.uleb128 0x14
	.4byte	.LASF81
	.byte	0x7
	.2byte	0x4c3
	.4byte	0x3b1
	.uleb128 0x14
	.4byte	.LASF82
	.byte	0x7
	.2byte	0x4c7
	.4byte	0x3e0
	.uleb128 0x14
	.4byte	.LASF83
	.byte	0x7
	.2byte	0x4cb
	.4byte	0x40f
	.uleb128 0x14
	.4byte	.LASF84
	.byte	0x7
	.2byte	0x4cf
	.4byte	0x480
	.uleb128 0x14
	.4byte	.LASF85
	.byte	0x7
	.2byte	0x4d3
	.4byte	0x4e3
	.uleb128 0x14
	.4byte	.LASF86
	.byte	0x7
	.2byte	0x4d7
	.4byte	0x522
	.uleb128 0x14
	.4byte	.LASF87
	.byte	0x7
	.2byte	0x4db
	.4byte	0x585
	.uleb128 0x14
	.4byte	.LASF88
	.byte	0x7
	.2byte	0x4df
	.4byte	0x5c1
	.uleb128 0xe
	.string	"ext"
	.byte	0x7
	.2byte	0x4e3
	.4byte	0x5f0
	.byte	0
	.uleb128 0xa
	.4byte	.LASF89
	.byte	0x7
	.2byte	0x4e4
	.4byte	0x5fc
	.uleb128 0x7
	.byte	0x4
	.4byte	0x689
	.uleb128 0xa
	.4byte	.LASF90
	.byte	0x7
	.2byte	0x8df
	.4byte	0x6a7
	.uleb128 0x7
	.byte	0x4
	.4byte	0x6ad
	.uleb128 0xf
	.4byte	0x94
	.4byte	0x6c1
	.uleb128 0x10
	.4byte	0x89
	.uleb128 0x10
	.4byte	0x94
	.byte	0
	.uleb128 0xa
	.4byte	.LASF91
	.byte	0x7
	.2byte	0x8e7
	.4byte	0x6cd
	.uleb128 0x7
	.byte	0x4
	.4byte	0x6d3
	.uleb128 0x15
	.4byte	0x6e3
	.uleb128 0x10
	.4byte	0x94
	.uleb128 0x10
	.4byte	0x94
	.byte	0
	.uleb128 0xa
	.4byte	.LASF92
	.byte	0x7
	.2byte	0x8ef
	.4byte	0x6ef
	.uleb128 0x7
	.byte	0x4
	.4byte	0x6f5
	.uleb128 0xf
	.4byte	0x94
	.4byte	0x70e
	.uleb128 0x10
	.4byte	0x89
	.uleb128 0x10
	.4byte	0x89
	.uleb128 0x10
	.4byte	0x94
	.byte	0
	.uleb128 0xa
	.4byte	.LASF93
	.byte	0x7
	.2byte	0x8f7
	.4byte	0x71a
	.uleb128 0x7
	.byte	0x4
	.4byte	0x720
	.uleb128 0xf
	.4byte	0x94
	.4byte	0x739
	.uleb128 0x10
	.4byte	0x94
	.uleb128 0x10
	.4byte	0x89
	.uleb128 0x10
	.4byte	0x94
	.byte	0
	.uleb128 0x8
	.byte	0x14
	.byte	0x7
	.2byte	0x920
	.4byte	0x784
	.uleb128 0x9
	.4byte	.LASF94
	.byte	0x7
	.2byte	0x925
	.4byte	0x94
	.byte	0
	.uleb128 0x9
	.4byte	.LASF95
	.byte	0x7
	.2byte	0x929
	.4byte	0x69b
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF96
	.byte	0x7
	.2byte	0x92d
	.4byte	0x6c1
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF97
	.byte	0x7
	.2byte	0x931
	.4byte	0x6e3
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF98
	.byte	0x7
	.2byte	0x935
	.4byte	0x70e
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.4byte	.LASF99
	.byte	0x7
	.2byte	0x936
	.4byte	0x739
	.uleb128 0x8
	.byte	0x10
	.byte	0x7
	.2byte	0x1142
	.4byte	0x7ce
	.uleb128 0x9
	.4byte	.LASF100
	.byte	0x7
	.2byte	0x1147
	.4byte	0x104
	.byte	0
	.uleb128 0x9
	.4byte	.LASF101
	.byte	0x7
	.2byte	0x114b
	.4byte	0x89
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF102
	.byte	0x7
	.2byte	0x1150
	.4byte	0x104
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF103
	.byte	0x7
	.2byte	0x1154
	.4byte	0x89
	.byte	0xc
	.byte	0
	.uleb128 0xa
	.4byte	.LASF104
	.byte	0x7
	.2byte	0x1155
	.4byte	0x790
	.uleb128 0x7
	.byte	0x4
	.4byte	0x784
	.uleb128 0x16
	.byte	0x10
	.byte	0x8
	.byte	0x49
	.4byte	0x7f4
	.uleb128 0x17
	.4byte	.LASF105
	.byte	0x8
	.byte	0x49
	.4byte	0x7ce
	.byte	0
	.uleb128 0x3
	.4byte	.LASF106
	.byte	0x8
	.byte	0x49
	.4byte	0x7e0
	.uleb128 0x18
	.byte	0x14
	.byte	0x9
	.byte	0x25
	.4byte	0x838
	.uleb128 0x19
	.4byte	.LASF107
	.byte	0x9
	.byte	0x26
	.4byte	0x2aa
	.byte	0
	.uleb128 0x19
	.4byte	.LASF108
	.byte	0x9
	.byte	0x27
	.4byte	0x94
	.byte	0x8
	.uleb128 0x19
	.4byte	.LASF64
	.byte	0x9
	.byte	0x2a
	.4byte	0xde
	.byte	0xc
	.uleb128 0x19
	.4byte	.LASF109
	.byte	0x9
	.byte	0x2d
	.4byte	0xc8
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.4byte	.LASF110
	.byte	0x9
	.byte	0x2e
	.4byte	0x7ff
	.uleb128 0x18
	.byte	0xc
	.byte	0x9
	.byte	0x31
	.4byte	0x87c
	.uleb128 0x19
	.4byte	.LASF107
	.byte	0x9
	.byte	0x35
	.4byte	0x2aa
	.byte	0
	.uleb128 0x19
	.4byte	.LASF27
	.byte	0x9
	.byte	0x3d
	.4byte	0xc8
	.byte	0x8
	.uleb128 0x1a
	.string	"eof"
	.byte	0x9
	.byte	0x42
	.4byte	0xc8
	.byte	0x9
	.uleb128 0x19
	.4byte	.LASF111
	.byte	0x9
	.byte	0x46
	.4byte	0xc8
	.byte	0xa
	.byte	0
	.uleb128 0x3
	.4byte	.LASF112
	.byte	0x9
	.byte	0x47
	.4byte	0x843
	.uleb128 0x18
	.byte	0x1
	.byte	0x9
	.byte	0x55
	.4byte	0x89c
	.uleb128 0x19
	.4byte	.LASF27
	.byte	0x9
	.byte	0x57
	.4byte	0xc8
	.byte	0
	.byte	0
	.uleb128 0x3
	.4byte	.LASF113
	.byte	0x9
	.byte	0x58
	.4byte	0x887
	.uleb128 0x18
	.byte	0x1
	.byte	0x9
	.byte	0x5b
	.4byte	0x8bc
	.uleb128 0x19
	.4byte	.LASF114
	.byte	0x9
	.byte	0x5e
	.4byte	0xc8
	.byte	0
	.byte	0
	.uleb128 0x3
	.4byte	.LASF115
	.byte	0x9
	.byte	0x5f
	.4byte	0x8a7
	.uleb128 0x16
	.byte	0x14
	.byte	0x9
	.byte	0x62
	.4byte	0x8fc
	.uleb128 0x17
	.4byte	.LASF80
	.byte	0x9
	.byte	0x63
	.4byte	0x87c
	.uleb128 0x17
	.4byte	.LASF81
	.byte	0x9
	.byte	0x64
	.4byte	0x838
	.uleb128 0x17
	.4byte	.LASF87
	.byte	0x9
	.byte	0x65
	.4byte	0x89c
	.uleb128 0x1b
	.string	"ext"
	.byte	0x9
	.byte	0x66
	.4byte	0x8bc
	.byte	0
	.uleb128 0x3
	.4byte	.LASF116
	.byte	0x9
	.byte	0x67
	.4byte	0x8c7
	.uleb128 0x3
	.4byte	.LASF117
	.byte	0x9
	.byte	0x6a
	.4byte	0x912
	.uleb128 0x1c
	.4byte	.LASF117
	.byte	0x60
	.byte	0x9
	.byte	0x6c
	.4byte	0x967
	.uleb128 0x19
	.4byte	.LASF118
	.byte	0x9
	.byte	0x6d
	.4byte	0x689
	.byte	0
	.uleb128 0x19
	.4byte	.LASF119
	.byte	0x9
	.byte	0x70
	.4byte	0x7f4
	.byte	0x28
	.uleb128 0x19
	.4byte	.LASF120
	.byte	0x9
	.byte	0x71
	.4byte	0x8fc
	.byte	0x38
	.uleb128 0x19
	.4byte	.LASF121
	.byte	0x9
	.byte	0x79
	.4byte	0xe9
	.byte	0x50
	.uleb128 0x19
	.4byte	.LASF122
	.byte	0x9
	.byte	0x7a
	.4byte	0x967
	.byte	0x58
	.uleb128 0x19
	.4byte	.LASF123
	.byte	0x9
	.byte	0x7d
	.4byte	0xc8
	.byte	0x5c
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x907
	.uleb128 0x18
	.byte	0xc
	.byte	0x9
	.byte	0x90
	.4byte	0x998
	.uleb128 0x19
	.4byte	.LASF124
	.byte	0x9
	.byte	0x91
	.4byte	0x967
	.byte	0
	.uleb128 0x19
	.4byte	.LASF125
	.byte	0x9
	.byte	0x91
	.4byte	0x967
	.byte	0x4
	.uleb128 0x1a
	.string	"n"
	.byte	0x9
	.byte	0x93
	.4byte	0x89
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF126
	.byte	0x9
	.byte	0x94
	.4byte	0x96d
	.uleb128 0x1d
	.4byte	.LASF127
	.byte	0x1
	.byte	0x1e
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9e0
	.uleb128 0x1e
	.4byte	.LASF129
	.byte	0x1
	.byte	0x1e
	.4byte	0x967
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1f
	.4byte	.LVL1
	.4byte	0xc0c
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 56
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x44
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF128
	.byte	0x1
	.byte	0x26
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb6c
	.uleb128 0x1e
	.4byte	.LASF129
	.byte	0x1
	.byte	0x26
	.4byte	0x967
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x21
	.string	"mem"
	.byte	0x1
	.byte	0x26
	.4byte	0x7da
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x22
	.4byte	.LASF118
	.byte	0x1
	.byte	0x27
	.4byte	0x695
	.4byte	.LLST0
	.uleb128 0x23
	.4byte	.LASF148
	.4byte	0xb7c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$4684
	.uleb128 0x24
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.4byte	0xaa3
	.uleb128 0x22
	.4byte	.LASF120
	.byte	0x1
	.byte	0x4c
	.4byte	0xb81
	.4byte	.LLST1
	.uleb128 0x25
	.4byte	.LVL14
	.4byte	0xc15
	.4byte	0xa5d
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL15
	.4byte	0xc21
	.4byte	0xa77
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL16
	.4byte	0xc2d
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x5a
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$4684
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL4
	.4byte	0xc38
	.4byte	0xab7
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL5
	.4byte	0xc44
	.4byte	0xad1
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL6
	.4byte	0xc50
	.4byte	0xae5
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL7
	.4byte	0xc5c
	.4byte	0xaf9
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL8
	.4byte	0xc68
	.4byte	0xb13
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL9
	.4byte	0xc74
	.4byte	0xb2d
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL10
	.4byte	0xc80
	.4byte	0xb41
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL11
	.4byte	0xc8c
	.4byte	0xb5b
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL12
	.4byte	0xc98
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	0xb6
	.4byte	0xb7c
	.uleb128 0x13
	.4byte	0xa8
	.byte	0x1a
	.byte	0
	.uleb128 0x26
	.4byte	0xb6c
	.uleb128 0x7
	.byte	0x4
	.4byte	0x8bc
	.uleb128 0x1d
	.4byte	.LASF130
	.byte	0x1
	.byte	0x61
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xba8
	.uleb128 0x21
	.string	"q"
	.byte	0x1
	.byte	0x61
	.4byte	0xba8
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x998
	.uleb128 0x1d
	.4byte	.LASF131
	.byte	0x1
	.byte	0x66
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbdc
	.uleb128 0x21
	.string	"q"
	.byte	0x1
	.byte	0x66
	.4byte	0xba8
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1e
	.4byte	.LASF129
	.byte	0x1
	.byte	0x67
	.4byte	0x967
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF132
	.byte	0x1
	.byte	0x70
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc0c
	.uleb128 0x21
	.string	"q"
	.byte	0x1
	.byte	0x70
	.4byte	0xba8
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x22
	.4byte	.LASF129
	.byte	0x1
	.byte	0x71
	.4byte	0x967
	.4byte	.LLST2
	.byte	0
	.uleb128 0x27
	.4byte	.LASF149
	.4byte	.LASF149
	.uleb128 0x28
	.4byte	.LASF133
	.4byte	.LASF133
	.byte	0x8
	.2byte	0x1d5
	.uleb128 0x28
	.4byte	.LASF134
	.4byte	.LASF134
	.byte	0x8
	.2byte	0x1e8
	.uleb128 0x29
	.4byte	.LASF135
	.4byte	.LASF135
	.byte	0xa
	.byte	0x29
	.uleb128 0x28
	.4byte	.LASF136
	.4byte	.LASF136
	.byte	0x8
	.2byte	0x1f5
	.uleb128 0x28
	.4byte	.LASF137
	.4byte	.LASF137
	.byte	0x8
	.2byte	0x193
	.uleb128 0x28
	.4byte	.LASF138
	.4byte	.LASF138
	.byte	0x8
	.2byte	0x198
	.uleb128 0x28
	.4byte	.LASF139
	.4byte	.LASF139
	.byte	0x8
	.2byte	0x19d
	.uleb128 0x28
	.4byte	.LASF140
	.4byte	.LASF140
	.byte	0x8
	.2byte	0x1b3
	.uleb128 0x28
	.4byte	.LASF141
	.4byte	.LASF141
	.byte	0x8
	.2byte	0x1a8
	.uleb128 0x28
	.4byte	.LASF142
	.4byte	.LASF142
	.byte	0x8
	.2byte	0x1be
	.uleb128 0x28
	.4byte	.LASF143
	.4byte	.LASF143
	.byte	0x8
	.2byte	0x1c9
	.uleb128 0x28
	.4byte	.LASF144
	.4byte	.LASF144
	.byte	0x8
	.2byte	0x1cf
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
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
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
	.uleb128 0x4
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0xd
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
	.uleb128 0x15
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x17
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
	.uleb128 0x17
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
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.4byte	.LVL3
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL13
	.4byte	.LVL16
	.2byte	0x3
	.byte	0x72
	.sleb128 56
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x58
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
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
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
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF68:
	.string	"nghttp2_settings"
.LASF145:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF54:
	.string	"NGHTTP2_HCAT_PUSH_RESPONSE"
.LASF35:
	.string	"NGHTTP2_PING"
.LASF140:
	.string	"nghttp2_frame_settings_free"
.LASF106:
	.string	"nghttp2_ext_frame_payload"
.LASF144:
	.string	"nghttp2_frame_window_update_free"
.LASF27:
	.string	"flags"
.LASF99:
	.string	"nghttp2_mem"
.LASF135:
	.string	"__assert_func"
.LASF65:
	.string	"nghttp2_rst_stream"
.LASF7:
	.string	"unsigned int"
.LASF122:
	.string	"qnext"
.LASF141:
	.string	"nghttp2_frame_push_promise_free"
.LASF124:
	.string	"head"
.LASF5:
	.string	"__int32_t"
.LASF142:
	.string	"nghttp2_frame_ping_free"
.LASF132:
	.string	"nghttp2_outbound_queue_pop"
.LASF92:
	.string	"nghttp2_calloc"
.LASF86:
	.string	"ping"
.LASF97:
	.string	"calloc"
.LASF56:
	.string	"nghttp2_headers_category"
.LASF137:
	.string	"nghttp2_frame_headers_free"
.LASF20:
	.string	"uint32_t"
.LASF71:
	.string	"opaque_data"
.LASF33:
	.string	"NGHTTP2_SETTINGS"
.LASF58:
	.string	"exclusive"
.LASF90:
	.string	"nghttp2_malloc"
.LASF72:
	.string	"nghttp2_ping"
.LASF95:
	.string	"malloc"
.LASF32:
	.string	"NGHTTP2_RST_STREAM"
.LASF10:
	.string	"long long unsigned int"
.LASF61:
	.string	"nvlen"
.LASF46:
	.string	"nghttp2_data_source_read_callback"
.LASF24:
	.string	"value"
.LASF125:
	.string	"tail"
.LASF44:
	.string	"nghttp2_frame_hd"
.LASF126:
	.string	"nghttp2_outbound_queue"
.LASF63:
	.string	"nghttp2_priority"
.LASF11:
	.string	"size_t"
.LASF78:
	.string	"payload"
.LASF29:
	.string	"NGHTTP2_DATA"
.LASF120:
	.string	"aux_data"
.LASF117:
	.string	"nghttp2_outbound_item"
.LASF28:
	.string	"nghttp2_nv"
.LASF88:
	.string	"window_update"
.LASF96:
	.string	"free"
.LASF9:
	.string	"__uint64_t"
.LASF100:
	.string	"origin"
.LASF84:
	.string	"settings"
.LASF101:
	.string	"origin_len"
.LASF130:
	.string	"nghttp2_outbound_queue_init"
.LASF76:
	.string	"window_size_increment"
.LASF81:
	.string	"headers"
.LASF109:
	.string	"canceled"
.LASF16:
	.string	"char"
.LASF25:
	.string	"namelen"
.LASF91:
	.string	"nghttp2_free"
.LASF136:
	.string	"nghttp2_frame_data_free"
.LASF103:
	.string	"field_value_len"
.LASF34:
	.string	"NGHTTP2_PUSH_PROMISE"
.LASF80:
	.string	"data"
.LASF138:
	.string	"nghttp2_frame_priority_free"
.LASF104:
	.string	"nghttp2_ext_altsvc"
.LASF17:
	.string	"ssize_t"
.LASF18:
	.string	"uint8_t"
.LASF112:
	.string	"nghttp2_data_aux_data"
.LASF93:
	.string	"nghttp2_realloc"
.LASF41:
	.string	"stream_id"
.LASF123:
	.string	"queued"
.LASF111:
	.string	"no_copy"
.LASF133:
	.string	"nghttp2_frame_extension_free"
.LASF134:
	.string	"nghttp2_frame_altsvc_free"
.LASF8:
	.string	"long long int"
.LASF52:
	.string	"NGHTTP2_HCAT_REQUEST"
.LASF51:
	.string	"nghttp2_data"
.LASF66:
	.string	"settings_id"
.LASF31:
	.string	"NGHTTP2_PRIORITY"
.LASF67:
	.string	"nghttp2_settings_entry"
.LASF149:
	.string	"memset"
.LASF70:
	.string	"nghttp2_push_promise"
.LASF89:
	.string	"nghttp2_frame"
.LASF79:
	.string	"nghttp2_extension"
.LASF22:
	.string	"nghttp2_session"
.LASF38:
	.string	"NGHTTP2_CONTINUATION"
.LASF36:
	.string	"NGHTTP2_GOAWAY"
.LASF45:
	.string	"nghttp2_data_source"
.LASF60:
	.string	"pri_spec"
.LASF146:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/nghttp/nghttp2/lib/nghttp2_outbound_item.c"
.LASF113:
	.string	"nghttp2_goaway_aux_data"
.LASF114:
	.string	"builtin"
.LASF55:
	.string	"NGHTTP2_HCAT_HEADERS"
.LASF37:
	.string	"NGHTTP2_WINDOW_UPDATE"
.LASF2:
	.string	"short int"
.LASF94:
	.string	"mem_user_data"
.LASF12:
	.string	"long int"
.LASF53:
	.string	"NGHTTP2_HCAT_RESPONSE"
.LASF40:
	.string	"length"
.LASF69:
	.string	"promised_stream_id"
.LASF48:
	.string	"read_callback"
.LASF82:
	.string	"priority"
.LASF121:
	.string	"cycle"
.LASF21:
	.string	"uint64_t"
.LASF143:
	.string	"nghttp2_frame_goaway_free"
.LASF108:
	.string	"stream_user_data"
.LASF57:
	.string	"weight"
.LASF85:
	.string	"push_promise"
.LASF62:
	.string	"nghttp2_headers"
.LASF4:
	.string	"__uint8_t"
.LASF47:
	.string	"source"
.LASF131:
	.string	"nghttp2_outbound_queue_push"
.LASF23:
	.string	"name"
.LASF30:
	.string	"NGHTTP2_HEADERS"
.LASF50:
	.string	"padlen"
.LASF39:
	.string	"NGHTTP2_ALTSVC"
.LASF26:
	.string	"valuelen"
.LASF14:
	.string	"sizetype"
.LASF15:
	.string	"long unsigned int"
.LASF19:
	.string	"int32_t"
.LASF128:
	.string	"nghttp2_outbound_item_free"
.LASF42:
	.string	"type"
.LASF75:
	.string	"nghttp2_goaway"
.LASF1:
	.string	"unsigned char"
.LASF139:
	.string	"nghttp2_frame_rst_stream_free"
.LASF59:
	.string	"nghttp2_priority_spec"
.LASF6:
	.string	"__uint32_t"
.LASF49:
	.string	"nghttp2_data_provider"
.LASF87:
	.string	"goaway"
.LASF147:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\nghttp"
.LASF77:
	.string	"nghttp2_window_update"
.LASF83:
	.string	"rst_stream"
.LASF64:
	.string	"error_code"
.LASF73:
	.string	"last_stream_id"
.LASF129:
	.string	"item"
.LASF98:
	.string	"realloc"
.LASF118:
	.string	"frame"
.LASF119:
	.string	"ext_frame_payload"
.LASF13:
	.string	"_ssize_t"
.LASF0:
	.string	"signed char"
.LASF3:
	.string	"short unsigned int"
.LASF148:
	.string	"__func__"
.LASF43:
	.string	"reserved"
.LASF127:
	.string	"nghttp2_outbound_item_init"
.LASF102:
	.string	"field_value"
.LASF116:
	.string	"nghttp2_aux_data"
.LASF74:
	.string	"opaque_data_len"
.LASF110:
	.string	"nghttp2_headers_aux_data"
.LASF107:
	.string	"data_prd"
.LASF115:
	.string	"nghttp2_ext_aux_data"
.LASF105:
	.string	"altsvc"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
