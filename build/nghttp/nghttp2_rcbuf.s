	.file	"nghttp2_rcbuf.c"
	.text
.Ltext0:
	.section	.text.nghttp2_rcbuf_new,"ax",@progbits
	.align	4
	.global	nghttp2_rcbuf_new
	.type	nghttp2_rcbuf_new, @function
nghttp2_rcbuf_new:
.LFB0:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/nghttp/nghttp2/lib/nghttp2_rcbuf.c"
	.loc 1 34 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 37 0
	addi	a11, a3, 20
	mov.n	a10, a4
	call8	nghttp2_mem_malloc
.LVL1:
	.loc 1 38 0
	beqz.n	a10, .L3
	.loc 1 42 0
	s32i.n	a10, a2, 0
	.loc 1 44 0
	l32i.n	a8, a4, 0
	s32i.n	a8, a10, 0
	.loc 1 45 0
	l32i.n	a8, a2, 0
	l32i.n	a4, a4, 8
.LVL2:
	s32i.n	a4, a8, 4
	.loc 1 46 0
	l32i.n	a4, a2, 0
	addi	a10, a10, 20
.LVL3:
	s32i.n	a10, a4, 8
	.loc 1 47 0
	l32i.n	a4, a2, 0
	s32i.n	a3, a4, 12
	.loc 1 48 0
	l32i.n	a2, a2, 0
.LVL4:
	movi.n	a3, 1
.LVL5:
	s32i.n	a3, a2, 16
.LVL6:
	.loc 1 50 0
	movi.n	a2, 0
	retw.n
.LVL7:
.L3:
	.loc 1 39 0
	movi	a2, -0x385
.LVL8:
	.loc 1 51 0
	retw.n
.LFE0:
	.size	nghttp2_rcbuf_new, .-nghttp2_rcbuf_new
	.section	.text.nghttp2_rcbuf_new2,"ax",@progbits
	.align	4
	.global	nghttp2_rcbuf_new2
	.type	nghttp2_rcbuf_new2, @function
nghttp2_rcbuf_new2:
.LFB1:
	.loc 1 54 0
.LVL9:
	entry	sp, 32
.LCFI1:
	.loc 1 57 0
	mov.n	a12, a5
	addi.n	a11, a4, 1
	mov.n	a10, a2
	call8	nghttp2_rcbuf_new
.LVL10:
	.loc 1 58 0
	bnez.n	a10, .L6
	.loc 1 62 0
	l32i.n	a8, a2, 0
	s32i.n	a4, a8, 12
	.loc 1 63 0
	l32i.n	a2, a2, 0
.LVL11:
	mov.n	a12, a4
	mov.n	a11, a3
	l32i.n	a10, a2, 8
.LVL12:
	call8	nghttp2_cpymem
.LVL13:
	movi.n	a2, 0
	s8i	a2, a10, 0
	.loc 1 65 0
	movi.n	a2, 0
	retw.n
.LVL14:
.L6:
	.loc 1 59 0
	mov.n	a2, a10
.LVL15:
	.loc 1 66 0
	retw.n
.LFE1:
	.size	nghttp2_rcbuf_new2, .-nghttp2_rcbuf_new2
	.section	.text.nghttp2_rcbuf_del,"ax",@progbits
	.align	4
	.global	nghttp2_rcbuf_del
	.type	nghttp2_rcbuf_del, @function
nghttp2_rcbuf_del:
.LFB2:
	.loc 1 71 0
.LVL16:
	entry	sp, 32
.LCFI2:
	.loc 1 72 0
	l32i.n	a12, a2, 0
	mov.n	a11, a2
	l32i.n	a10, a2, 4
	call8	nghttp2_mem_free2
.LVL17:
	retw.n
.LFE2:
	.size	nghttp2_rcbuf_del, .-nghttp2_rcbuf_del
	.section	.text.nghttp2_rcbuf_incref,"ax",@progbits
	.align	4
	.global	nghttp2_rcbuf_incref
	.type	nghttp2_rcbuf_incref, @function
nghttp2_rcbuf_incref:
.LFB3:
	.loc 1 75 0
.LVL18:
	entry	sp, 32
.LCFI3:
	.loc 1 76 0
	l32i.n	a8, a2, 16
	beqi	a8, -1, .L8
	.loc 1 80 0
	addi.n	a8, a8, 1
	s32i.n	a8, a2, 16
.L8:
	retw.n
.LFE3:
	.size	nghttp2_rcbuf_incref, .-nghttp2_rcbuf_incref
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC0:
	.string	"rcbuf->ref > 0"
	.align	4
.LC3:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/nghttp/nghttp2/lib/nghttp2_rcbuf.c"
	.section	.text.nghttp2_rcbuf_decref,"ax",@progbits
	.literal_position
	.literal .LC1, .LC0
	.literal .LC2, __func__$4081
	.literal .LC4, .LC3
	.align	4
	.global	nghttp2_rcbuf_decref
	.type	nghttp2_rcbuf_decref, @function
nghttp2_rcbuf_decref:
.LFB4:
	.loc 1 83 0
.LVL19:
	entry	sp, 32
.LCFI4:
	.loc 1 84 0
	beqz.n	a2, .L10
	.loc 1 84 0 discriminator 1
	l32i.n	a8, a2, 16
	beqi	a8, -1, .L10
	.loc 1 88 0
	bgei	a8, 1, .L12
	.loc 1 88 0 is_stmt 0 discriminator 1
	l32r	a13, .LC1
	l32r	a12, .LC2
	movi.n	a11, 0x58
	l32r	a10, .LC4
	call8	__assert_func
.LVL20:
.L12:
	.loc 1 90 0 is_stmt 1
	addi.n	a8, a8, -1
	s32i.n	a8, a2, 16
	bnez.n	a8, .L10
	.loc 1 91 0
	mov.n	a10, a2
	call8	nghttp2_rcbuf_del
.LVL21:
.L10:
	retw.n
.LFE4:
	.size	nghttp2_rcbuf_decref, .-nghttp2_rcbuf_decref
	.section	.text.nghttp2_rcbuf_get_buf,"ax",@progbits
	.align	4
	.global	nghttp2_rcbuf_get_buf
	.type	nghttp2_rcbuf_get_buf, @function
nghttp2_rcbuf_get_buf:
.LFB5:
	.loc 1 95 0
.LVL22:
	entry	sp, 48
.LCFI5:
	mov.n	a8, a2
	.loc 1 98 0
	l32i.n	a2, a2, 8
.LVL23:
	l32i.n	a3, a8, 12
	retw.n
.LFE5:
	.size	nghttp2_rcbuf_get_buf, .-nghttp2_rcbuf_get_buf
	.section	.rodata.__func__$4081,"a",@progbits
	.align	4
	.type	__func__$4081, @object
	.size	__func__$4081, 21
__func__$4081:
	.string	"nghttp2_rcbuf_decref"
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
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI5-.LFB5
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE10:
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 3 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/nghttp/nghttp2/lib/includes/nghttp2/nghttp2.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/nghttp/nghttp2/lib/nghttp2_rcbuf.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/nghttp/nghttp2/lib/nghttp2_mem.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/nghttp/nghttp2/lib/nghttp2_helper.h"
	.file 9 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/assert.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x5a7
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF82
	.byte	0xc
	.4byte	.LASF83
	.4byte	.LASF84
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
	.byte	0xd8
	.4byte	0x5e
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
	.byte	0x4
	.byte	0x15
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x4
	.byte	0x2c
	.4byte	0x4c
	.uleb128 0x6
	.byte	0x4
	.4byte	0x57
	.byte	0x5
	.byte	0xe7
	.4byte	0x1d0
	.uleb128 0x7
	.4byte	.LASF16
	.sleb128 -501
	.uleb128 0x7
	.4byte	.LASF17
	.sleb128 -502
	.uleb128 0x7
	.4byte	.LASF18
	.sleb128 -503
	.uleb128 0x7
	.4byte	.LASF19
	.sleb128 -504
	.uleb128 0x7
	.4byte	.LASF20
	.sleb128 -505
	.uleb128 0x7
	.4byte	.LASF21
	.sleb128 -506
	.uleb128 0x7
	.4byte	.LASF22
	.sleb128 -507
	.uleb128 0x7
	.4byte	.LASF23
	.sleb128 -508
	.uleb128 0x7
	.4byte	.LASF24
	.sleb128 -509
	.uleb128 0x7
	.4byte	.LASF25
	.sleb128 -510
	.uleb128 0x7
	.4byte	.LASF26
	.sleb128 -511
	.uleb128 0x7
	.4byte	.LASF27
	.sleb128 -512
	.uleb128 0x7
	.4byte	.LASF28
	.sleb128 -513
	.uleb128 0x7
	.4byte	.LASF29
	.sleb128 -514
	.uleb128 0x7
	.4byte	.LASF30
	.sleb128 -515
	.uleb128 0x7
	.4byte	.LASF31
	.sleb128 -516
	.uleb128 0x7
	.4byte	.LASF32
	.sleb128 -517
	.uleb128 0x7
	.4byte	.LASF33
	.sleb128 -518
	.uleb128 0x7
	.4byte	.LASF34
	.sleb128 -519
	.uleb128 0x7
	.4byte	.LASF35
	.sleb128 -521
	.uleb128 0x7
	.4byte	.LASF36
	.sleb128 -522
	.uleb128 0x7
	.4byte	.LASF37
	.sleb128 -523
	.uleb128 0x7
	.4byte	.LASF38
	.sleb128 -524
	.uleb128 0x7
	.4byte	.LASF39
	.sleb128 -525
	.uleb128 0x7
	.4byte	.LASF40
	.sleb128 -526
	.uleb128 0x7
	.4byte	.LASF41
	.sleb128 -527
	.uleb128 0x7
	.4byte	.LASF42
	.sleb128 -528
	.uleb128 0x7
	.4byte	.LASF43
	.sleb128 -529
	.uleb128 0x7
	.4byte	.LASF44
	.sleb128 -530
	.uleb128 0x7
	.4byte	.LASF45
	.sleb128 -531
	.uleb128 0x7
	.4byte	.LASF46
	.sleb128 -532
	.uleb128 0x7
	.4byte	.LASF47
	.sleb128 -533
	.uleb128 0x7
	.4byte	.LASF48
	.sleb128 -534
	.uleb128 0x7
	.4byte	.LASF49
	.sleb128 -535
	.uleb128 0x7
	.4byte	.LASF50
	.sleb128 -900
	.uleb128 0x7
	.4byte	.LASF51
	.sleb128 -901
	.uleb128 0x7
	.4byte	.LASF52
	.sleb128 -902
	.uleb128 0x7
	.4byte	.LASF53
	.sleb128 -903
	.uleb128 0x7
	.4byte	.LASF54
	.sleb128 -904
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.byte	0x5
	.2byte	0x1ac
	.4byte	0x1f4
	.uleb128 0x9
	.4byte	.LASF55
	.byte	0x5
	.2byte	0x1b0
	.4byte	0x1f4
	.byte	0
	.uleb128 0xa
	.string	"len"
	.byte	0x5
	.2byte	0x1b4
	.4byte	0x73
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x9c
	.uleb128 0xc
	.4byte	.LASF56
	.byte	0x5
	.2byte	0x1b5
	.4byte	0x1d0
	.uleb128 0xc
	.4byte	.LASF57
	.byte	0x5
	.2byte	0x1bf
	.4byte	0x212
	.uleb128 0xd
	.4byte	.LASF57
	.byte	0x14
	.byte	0x6
	.byte	0x22
	.4byte	0x25b
	.uleb128 0xe
	.4byte	.LASF58
	.byte	0x6
	.byte	0x25
	.4byte	0x7e
	.byte	0
	.uleb128 0xe
	.4byte	.LASF59
	.byte	0x6
	.byte	0x26
	.4byte	0x292
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF55
	.byte	0x6
	.byte	0x28
	.4byte	0x1f4
	.byte	0x8
	.uleb128 0xf
	.string	"len"
	.byte	0x6
	.byte	0x2a
	.4byte	0x73
	.byte	0xc
	.uleb128 0xf
	.string	"ref"
	.byte	0x6
	.byte	0x2c
	.4byte	0xa7
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x261
	.uleb128 0x10
	.4byte	0x9c
	.uleb128 0xb
	.byte	0x4
	.4byte	0x206
	.uleb128 0xc
	.4byte	.LASF60
	.byte	0x5
	.2byte	0x8df
	.4byte	0x278
	.uleb128 0xb
	.byte	0x4
	.4byte	0x27e
	.uleb128 0x11
	.4byte	0x7e
	.4byte	0x292
	.uleb128 0x12
	.4byte	0x73
	.uleb128 0x12
	.4byte	0x7e
	.byte	0
	.uleb128 0xc
	.4byte	.LASF61
	.byte	0x5
	.2byte	0x8e7
	.4byte	0x29e
	.uleb128 0xb
	.byte	0x4
	.4byte	0x2a4
	.uleb128 0x13
	.4byte	0x2b4
	.uleb128 0x12
	.4byte	0x7e
	.uleb128 0x12
	.4byte	0x7e
	.byte	0
	.uleb128 0xc
	.4byte	.LASF62
	.byte	0x5
	.2byte	0x8ef
	.4byte	0x2c0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x2c6
	.uleb128 0x11
	.4byte	0x7e
	.4byte	0x2df
	.uleb128 0x12
	.4byte	0x73
	.uleb128 0x12
	.4byte	0x73
	.uleb128 0x12
	.4byte	0x7e
	.byte	0
	.uleb128 0xc
	.4byte	.LASF63
	.byte	0x5
	.2byte	0x8f7
	.4byte	0x2eb
	.uleb128 0xb
	.byte	0x4
	.4byte	0x2f1
	.uleb128 0x11
	.4byte	0x7e
	.4byte	0x30a
	.uleb128 0x12
	.4byte	0x7e
	.uleb128 0x12
	.4byte	0x73
	.uleb128 0x12
	.4byte	0x7e
	.byte	0
	.uleb128 0x8
	.byte	0x14
	.byte	0x5
	.2byte	0x920
	.4byte	0x355
	.uleb128 0x9
	.4byte	.LASF58
	.byte	0x5
	.2byte	0x925
	.4byte	0x7e
	.byte	0
	.uleb128 0x9
	.4byte	.LASF64
	.byte	0x5
	.2byte	0x929
	.4byte	0x26c
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF59
	.byte	0x5
	.2byte	0x92d
	.4byte	0x292
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF65
	.byte	0x5
	.2byte	0x931
	.4byte	0x2b4
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF66
	.byte	0x5
	.2byte	0x935
	.4byte	0x2df
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.4byte	.LASF67
	.byte	0x5
	.2byte	0x936
	.4byte	0x30a
	.uleb128 0x14
	.4byte	.LASF70
	.byte	0x1
	.byte	0x21
	.4byte	0x57
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3cb
	.uleb128 0x15
	.4byte	.LASF68
	.byte	0x1
	.byte	0x21
	.4byte	0x3cb
	.4byte	.LLST0
	.uleb128 0x15
	.4byte	.LASF69
	.byte	0x1
	.byte	0x21
	.4byte	0x73
	.4byte	.LLST1
	.uleb128 0x16
	.string	"mem"
	.byte	0x1
	.byte	0x22
	.4byte	0x3d1
	.4byte	.LLST2
	.uleb128 0x17
	.string	"p"
	.byte	0x1
	.byte	0x23
	.4byte	0x1f4
	.4byte	.LLST3
	.uleb128 0x18
	.4byte	.LVL1
	.4byte	0x57e
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 20
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x266
	.uleb128 0xb
	.byte	0x4
	.4byte	0x355
	.uleb128 0x14
	.4byte	.LASF71
	.byte	0x1
	.byte	0x35
	.4byte	0x57
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x46b
	.uleb128 0x15
	.4byte	.LASF68
	.byte	0x1
	.byte	0x35
	.4byte	0x3cb
	.4byte	.LLST4
	.uleb128 0x1a
	.string	"src"
	.byte	0x1
	.byte	0x35
	.4byte	0x25b
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1b
	.4byte	.LASF72
	.byte	0x1
	.byte	0x36
	.4byte	0x73
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1a
	.string	"mem"
	.byte	0x1
	.byte	0x36
	.4byte	0x3d1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x17
	.string	"rv"
	.byte	0x1
	.byte	0x37
	.4byte	0x57
	.4byte	.LLST5
	.uleb128 0x1c
	.4byte	.LVL10
	.4byte	0x361
	.4byte	0x454
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 1
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL13
	.4byte	0x589
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
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF74
	.byte	0x1
	.byte	0x47
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x49e
	.uleb128 0x1b
	.4byte	.LASF73
	.byte	0x1
	.byte	0x47
	.4byte	0x266
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x18
	.4byte	.LVL17
	.4byte	0x594
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF75
	.byte	0x1
	.byte	0x4b
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4c1
	.uleb128 0x1b
	.4byte	.LASF73
	.byte	0x1
	.byte	0x4b
	.4byte	0x266
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF76
	.byte	0x1
	.byte	0x53
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x532
	.uleb128 0x1b
	.4byte	.LASF73
	.byte	0x1
	.byte	0x53
	.4byte	0x266
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1e
	.4byte	.LASF85
	.4byte	0x542
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$4081
	.uleb128 0x1c
	.4byte	.LVL20
	.4byte	0x59f
	.4byte	0x521
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x58
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$4081
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL21
	.4byte	0x46b
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	0x95
	.4byte	0x542
	.uleb128 0x20
	.4byte	0x87
	.byte	0x14
	.byte	0
	.uleb128 0x10
	.4byte	0x532
	.uleb128 0x14
	.4byte	.LASF77
	.byte	0x1
	.byte	0x5f
	.4byte	0x1fa
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x57e
	.uleb128 0x15
	.4byte	.LASF73
	.byte	0x1
	.byte	0x5f
	.4byte	0x266
	.4byte	.LLST6
	.uleb128 0x21
	.string	"res"
	.byte	0x1
	.byte	0x60
	.4byte	0x1fa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x22
	.4byte	.LASF78
	.4byte	.LASF78
	.byte	0x7
	.byte	0x27
	.uleb128 0x22
	.4byte	.LASF79
	.4byte	.LASF79
	.byte	0x8
	.byte	0x78
	.uleb128 0x22
	.4byte	.LASF80
	.4byte	.LASF80
	.byte	0x7
	.byte	0x29
	.uleb128 0x22
	.4byte	.LASF81
	.4byte	.LASF81
	.byte	0x9
	.byte	0x29
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
	.uleb128 0x7
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0xb
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL4
	.4byte	.LVL7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL8
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x2
	.byte	0x74
	.sleb128 12
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LFE0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL2
	.4byte	.LVL7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LFE0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL3
	.4byte	.LVL7
	.2byte	0x3
	.byte	0x7a
	.sleb128 -20
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LFE0
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL9
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL11
	.4byte	.LVL14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL15
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL10
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL14
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL23
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x58
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
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
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
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF65:
	.string	"calloc"
.LASF33:
	.string	"NGHTTP2_ERR_INVALID_HEADER_BLOCK"
.LASF56:
	.string	"nghttp2_vec"
.LASF75:
	.string	"nghttp2_rcbuf_incref"
.LASF72:
	.string	"srclen"
.LASF44:
	.string	"NGHTTP2_ERR_SESSION_CLOSING"
.LASF62:
	.string	"nghttp2_calloc"
.LASF67:
	.string	"nghttp2_mem"
.LASF64:
	.string	"malloc"
.LASF28:
	.string	"NGHTTP2_ERR_INVALID_STREAM_ID"
.LASF27:
	.string	"NGHTTP2_ERR_STREAM_SHUT_WR"
.LASF45:
	.string	"NGHTTP2_ERR_HTTP_HEADER"
.LASF57:
	.string	"nghttp2_rcbuf"
.LASF26:
	.string	"NGHTTP2_ERR_STREAM_CLOSING"
.LASF47:
	.string	"NGHTTP2_ERR_REFUSED_STREAM"
.LASF23:
	.string	"NGHTTP2_ERR_DEFERRED"
.LASF42:
	.string	"NGHTTP2_ERR_PUSH_DISABLED"
.LASF2:
	.string	"short int"
.LASF71:
	.string	"nghttp2_rcbuf_new2"
.LASF16:
	.string	"NGHTTP2_ERR_INVALID_ARGUMENT"
.LASF14:
	.string	"uint8_t"
.LASF38:
	.string	"NGHTTP2_ERR_FLOW_CONTROL"
.LASF61:
	.string	"nghttp2_free"
.LASF59:
	.string	"free"
.LASF54:
	.string	"NGHTTP2_ERR_FLOODED"
.LASF25:
	.string	"NGHTTP2_ERR_STREAM_CLOSED"
.LASF18:
	.string	"NGHTTP2_ERR_UNSUPPORTED_VERSION"
.LASF7:
	.string	"long long int"
.LASF8:
	.string	"long long unsigned int"
.LASF30:
	.string	"NGHTTP2_ERR_DEFERRED_DATA_EXIST"
.LASF10:
	.string	"long int"
.LASF11:
	.string	"sizetype"
.LASF77:
	.string	"nghttp2_rcbuf_get_buf"
.LASF20:
	.string	"NGHTTP2_ERR_PROTO"
.LASF41:
	.string	"NGHTTP2_ERR_TOO_MANY_INFLIGHT_SETTINGS"
.LASF36:
	.string	"NGHTTP2_ERR_FRAME_SIZE_ERROR"
.LASF19:
	.string	"NGHTTP2_ERR_WOULDBLOCK"
.LASF66:
	.string	"realloc"
.LASF1:
	.string	"unsigned char"
.LASF68:
	.string	"rcbuf_ptr"
.LASF17:
	.string	"NGHTTP2_ERR_BUFFER_ERROR"
.LASF46:
	.string	"NGHTTP2_ERR_HTTP_MESSAGING"
.LASF34:
	.string	"NGHTTP2_ERR_INVALID_STATE"
.LASF31:
	.string	"NGHTTP2_ERR_START_STREAM_NOT_ALLOWED"
.LASF78:
	.string	"nghttp2_mem_malloc"
.LASF22:
	.string	"NGHTTP2_ERR_EOF"
.LASF0:
	.string	"signed char"
.LASF60:
	.string	"nghttp2_malloc"
.LASF21:
	.string	"NGHTTP2_ERR_INVALID_FRAME"
.LASF6:
	.string	"unsigned int"
.LASF40:
	.string	"NGHTTP2_ERR_PAUSE"
.LASF12:
	.string	"long unsigned int"
.LASF48:
	.string	"NGHTTP2_ERR_INTERNAL"
.LASF3:
	.string	"short unsigned int"
.LASF37:
	.string	"NGHTTP2_ERR_HEADER_COMP"
.LASF13:
	.string	"char"
.LASF15:
	.string	"int32_t"
.LASF74:
	.string	"nghttp2_rcbuf_del"
.LASF39:
	.string	"NGHTTP2_ERR_INSUFF_BUFSIZE"
.LASF9:
	.string	"size_t"
.LASF51:
	.string	"NGHTTP2_ERR_NOMEM"
.LASF84:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\nghttp"
.LASF53:
	.string	"NGHTTP2_ERR_BAD_CLIENT_MAGIC"
.LASF85:
	.string	"__func__"
.LASF52:
	.string	"NGHTTP2_ERR_CALLBACK_FAILURE"
.LASF32:
	.string	"NGHTTP2_ERR_GOAWAY_ALREADY_SENT"
.LASF69:
	.string	"size"
.LASF35:
	.string	"NGHTTP2_ERR_TEMPORAL_CALLBACK_FAILURE"
.LASF70:
	.string	"nghttp2_rcbuf_new"
.LASF5:
	.string	"__int32_t"
.LASF50:
	.string	"NGHTTP2_ERR_FATAL"
.LASF80:
	.string	"nghttp2_mem_free2"
.LASF29:
	.string	"NGHTTP2_ERR_INVALID_STREAM_STATE"
.LASF24:
	.string	"NGHTTP2_ERR_STREAM_ID_NOT_AVAILABLE"
.LASF58:
	.string	"mem_user_data"
.LASF73:
	.string	"rcbuf"
.LASF81:
	.string	"__assert_func"
.LASF76:
	.string	"nghttp2_rcbuf_decref"
.LASF55:
	.string	"base"
.LASF82:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF43:
	.string	"NGHTTP2_ERR_DATA_EXIST"
.LASF63:
	.string	"nghttp2_realloc"
.LASF83:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/nghttp/nghttp2/lib/nghttp2_rcbuf.c"
.LASF79:
	.string	"nghttp2_cpymem"
.LASF4:
	.string	"__uint8_t"
.LASF49:
	.string	"NGHTTP2_ERR_CANCEL"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
