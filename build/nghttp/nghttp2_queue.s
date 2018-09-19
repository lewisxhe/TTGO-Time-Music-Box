	.file	"nghttp2_queue.c"
	.text
.Ltext0:
	.section	.text.nghttp2_queue_init,"ax",@progbits
	.align	4
	.global	nghttp2_queue_init
	.type	nghttp2_queue_init, @function
nghttp2_queue_init:
.LFB0:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/nghttp/nghttp2/lib/nghttp2_queue.c"
	.loc 1 30 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 31 0
	movi.n	a8, 0
	s32i.n	a8, a2, 4
	s32i.n	a8, a2, 0
	retw.n
.LFE0:
	.size	nghttp2_queue_init, .-nghttp2_queue_init
	.section	.text.nghttp2_queue_free,"ax",@progbits
	.align	4
	.global	nghttp2_queue_free
	.type	nghttp2_queue_free, @function
nghttp2_queue_free:
.LFB1:
	.loc 1 34 0
.LVL1:
	entry	sp, 32
.LCFI1:
	.loc 1 35 0
	beqz.n	a2, .L2
.LBB2:
	.loc 1 38 0
	l32i.n	a10, a2, 0
.LVL2:
	.loc 1 39 0
	j	.L4
.LVL3:
.L5:
.LBB3:
	.loc 1 40 0
	l32i.n	a2, a10, 4
.LVL4:
	.loc 1 41 0
	call8	free
.LVL5:
	.loc 1 42 0
	mov.n	a10, a2
.LVL6:
.L4:
.LBE3:
	.loc 1 39 0
	bnez.n	a10, .L5
.LVL7:
.L2:
	retw.n
.LBE2:
.LFE1:
	.size	nghttp2_queue_free, .-nghttp2_queue_free
	.section	.text.nghttp2_queue_push,"ax",@progbits
	.align	4
	.global	nghttp2_queue_push
	.type	nghttp2_queue_push, @function
nghttp2_queue_push:
.LFB2:
	.loc 1 47 0
.LVL8:
	entry	sp, 32
.LCFI2:
	.loc 1 48 0
	movi.n	a10, 8
	call8	malloc
.LVL9:
	.loc 1 50 0
	beqz.n	a10, .L9
	.loc 1 53 0
	s32i.n	a3, a10, 0
	.loc 1 54 0
	movi.n	a3, 0
.LVL10:
	s32i.n	a3, a10, 4
	.loc 1 55 0
	l32i.n	a8, a2, 4
	beq	a8, a3, .L8
	.loc 1 56 0
	s32i.n	a10, a8, 4
.LVL11:
	.loc 1 57 0
	s32i.n	a10, a2, 4
	.loc 1 62 0
	mov.n	a2, a3
.LVL12:
	retw.n
.LVL13:
.L8:
	.loc 1 60 0
	s32i.n	a10, a2, 4
.LVL14:
	s32i.n	a10, a2, 0
	.loc 1 62 0
	movi.n	a2, 0
.LVL15:
	retw.n
.LVL16:
.L9:
	.loc 1 51 0
	movi	a2, -0x385
.LVL17:
	.loc 1 63 0
	retw.n
.LFE2:
	.size	nghttp2_queue_push, .-nghttp2_queue_push
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC0:
	.string	"front"
	.align	4
.LC3:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/nghttp/nghttp2/lib/nghttp2_queue.c"
	.section	.text.nghttp2_queue_pop,"ax",@progbits
	.literal_position
	.literal .LC1, .LC0
	.literal .LC2, __func__$4036
	.literal .LC4, .LC3
	.align	4
	.global	nghttp2_queue_pop
	.type	nghttp2_queue_pop, @function
nghttp2_queue_pop:
.LFB3:
	.loc 1 65 0
.LVL18:
	entry	sp, 32
.LCFI3:
	.loc 1 66 0
	l32i.n	a10, a2, 0
.LVL19:
	.loc 1 67 0
	bnez.n	a10, .L11
	.loc 1 67 0 is_stmt 0 discriminator 1
	l32r	a13, .LC1
	l32r	a12, .LC2
	movi.n	a11, 0x43
	l32r	a10, .LC4
.LVL20:
	call8	__assert_func
.LVL21:
.L11:
	.loc 1 68 0 is_stmt 1
	l32i.n	a8, a10, 4
	s32i.n	a8, a2, 0
	.loc 1 69 0
	l32i.n	a8, a2, 4
	bne	a10, a8, .L12
	.loc 1 70 0
	movi.n	a8, 0
	s32i.n	a8, a2, 4
.L12:
	.loc 1 72 0
	call8	free
.LVL22:
	retw.n
.LFE3:
	.size	nghttp2_queue_pop, .-nghttp2_queue_pop
	.section	.rodata.str1.4
	.align	4
.LC5:
	.string	"queue->front"
	.section	.text.nghttp2_queue_front,"ax",@progbits
	.literal_position
	.literal .LC6, .LC5
	.literal .LC7, __func__$4040
	.literal .LC8, .LC3
	.align	4
	.global	nghttp2_queue_front
	.type	nghttp2_queue_front, @function
nghttp2_queue_front:
.LFB4:
	.loc 1 75 0
.LVL23:
	entry	sp, 32
.LCFI4:
	.loc 1 76 0
	l32i.n	a8, a2, 0
	bnez.n	a8, .L14
	.loc 1 76 0 is_stmt 0 discriminator 1
	l32r	a13, .LC6
	l32r	a12, .LC7
	movi.n	a11, 0x4c
	l32r	a10, .LC8
	call8	__assert_func
.LVL24:
.L14:
	.loc 1 78 0 is_stmt 1
	l32i.n	a2, a8, 0
.LVL25:
	retw.n
.LFE4:
	.size	nghttp2_queue_front, .-nghttp2_queue_front
	.section	.rodata.str1.4
	.align	4
.LC9:
	.string	"queue->back"
	.section	.text.nghttp2_queue_back,"ax",@progbits
	.literal_position
	.literal .LC10, .LC9
	.literal .LC11, __func__$4044
	.literal .LC12, .LC3
	.align	4
	.global	nghttp2_queue_back
	.type	nghttp2_queue_back, @function
nghttp2_queue_back:
.LFB5:
	.loc 1 80 0
.LVL26:
	entry	sp, 32
.LCFI5:
	.loc 1 81 0
	l32i.n	a8, a2, 4
	bnez.n	a8, .L16
	.loc 1 81 0 is_stmt 0 discriminator 1
	l32r	a13, .LC10
	l32r	a12, .LC11
	movi.n	a11, 0x51
	l32r	a10, .LC12
	call8	__assert_func
.LVL27:
.L16:
	.loc 1 83 0 is_stmt 1
	l32i.n	a2, a8, 0
.LVL28:
	retw.n
.LFE5:
	.size	nghttp2_queue_back, .-nghttp2_queue_back
	.section	.text.nghttp2_queue_empty,"ax",@progbits
	.align	4
	.global	nghttp2_queue_empty
	.type	nghttp2_queue_empty, @function
nghttp2_queue_empty:
.LFB6:
	.loc 1 85 0
.LVL29:
	entry	sp, 32
.LCFI6:
	.loc 1 85 0
	l32i.n	a8, a2, 0
	movi.n	a2, 0
.LVL30:
	movi.n	a9, 1
	moveqz	a2, a9, a8
	.loc 1 85 0
	retw.n
.LFE6:
	.size	nghttp2_queue_empty, .-nghttp2_queue_empty
	.section	.rodata.__func__$4044,"a",@progbits
	.align	4
	.type	__func__$4044, @object
	.size	__func__$4044, 19
__func__$4044:
	.string	"nghttp2_queue_back"
	.section	.rodata.__func__$4040,"a",@progbits
	.align	4
	.type	__func__$4040, @object
	.size	__func__$4040, 20
__func__$4040:
	.string	"nghttp2_queue_front"
	.section	.rodata.__func__$4036,"a",@progbits
	.align	4
	.type	__func__$4036, @object
	.size	__func__$4036, 18
__func__$4036:
	.string	"nghttp2_queue_pop"
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
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI6-.LFB6
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/nghttp/nghttp2/lib/nghttp2_queue.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdlib.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/assert.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/nghttp/nghttp2/lib/includes/nghttp2/nghttp2.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x4a1
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF69
	.byte	0xc
	.4byte	.LASF70
	.4byte	.LASF71
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
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
	.uleb128 0x4
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x5
	.byte	0x4
	.4byte	0x41
	.byte	0x5
	.byte	0xe7
	.4byte	0x199
	.uleb128 0x6
	.4byte	.LASF11
	.sleb128 -501
	.uleb128 0x6
	.4byte	.LASF12
	.sleb128 -502
	.uleb128 0x6
	.4byte	.LASF13
	.sleb128 -503
	.uleb128 0x6
	.4byte	.LASF14
	.sleb128 -504
	.uleb128 0x6
	.4byte	.LASF15
	.sleb128 -505
	.uleb128 0x6
	.4byte	.LASF16
	.sleb128 -506
	.uleb128 0x6
	.4byte	.LASF17
	.sleb128 -507
	.uleb128 0x6
	.4byte	.LASF18
	.sleb128 -508
	.uleb128 0x6
	.4byte	.LASF19
	.sleb128 -509
	.uleb128 0x6
	.4byte	.LASF20
	.sleb128 -510
	.uleb128 0x6
	.4byte	.LASF21
	.sleb128 -511
	.uleb128 0x6
	.4byte	.LASF22
	.sleb128 -512
	.uleb128 0x6
	.4byte	.LASF23
	.sleb128 -513
	.uleb128 0x6
	.4byte	.LASF24
	.sleb128 -514
	.uleb128 0x6
	.4byte	.LASF25
	.sleb128 -515
	.uleb128 0x6
	.4byte	.LASF26
	.sleb128 -516
	.uleb128 0x6
	.4byte	.LASF27
	.sleb128 -517
	.uleb128 0x6
	.4byte	.LASF28
	.sleb128 -518
	.uleb128 0x6
	.4byte	.LASF29
	.sleb128 -519
	.uleb128 0x6
	.4byte	.LASF30
	.sleb128 -521
	.uleb128 0x6
	.4byte	.LASF31
	.sleb128 -522
	.uleb128 0x6
	.4byte	.LASF32
	.sleb128 -523
	.uleb128 0x6
	.4byte	.LASF33
	.sleb128 -524
	.uleb128 0x6
	.4byte	.LASF34
	.sleb128 -525
	.uleb128 0x6
	.4byte	.LASF35
	.sleb128 -526
	.uleb128 0x6
	.4byte	.LASF36
	.sleb128 -527
	.uleb128 0x6
	.4byte	.LASF37
	.sleb128 -528
	.uleb128 0x6
	.4byte	.LASF38
	.sleb128 -529
	.uleb128 0x6
	.4byte	.LASF39
	.sleb128 -530
	.uleb128 0x6
	.4byte	.LASF40
	.sleb128 -531
	.uleb128 0x6
	.4byte	.LASF41
	.sleb128 -532
	.uleb128 0x6
	.4byte	.LASF42
	.sleb128 -533
	.uleb128 0x6
	.4byte	.LASF43
	.sleb128 -534
	.uleb128 0x6
	.4byte	.LASF44
	.sleb128 -535
	.uleb128 0x6
	.4byte	.LASF45
	.sleb128 -900
	.uleb128 0x6
	.4byte	.LASF46
	.sleb128 -901
	.uleb128 0x6
	.4byte	.LASF47
	.sleb128 -902
	.uleb128 0x6
	.4byte	.LASF48
	.sleb128 -903
	.uleb128 0x6
	.4byte	.LASF49
	.sleb128 -904
	.byte	0
	.uleb128 0x7
	.4byte	.LASF54
	.byte	0x8
	.byte	0x2
	.byte	0x22
	.4byte	0x1be
	.uleb128 0x8
	.4byte	.LASF50
	.byte	0x2
	.byte	0x23
	.4byte	0x5d
	.byte	0
	.uleb128 0x8
	.4byte	.LASF51
	.byte	0x2
	.byte	0x24
	.4byte	0x1be
	.byte	0x4
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x199
	.uleb128 0xa
	.4byte	.LASF54
	.byte	0x2
	.byte	0x25
	.4byte	0x199
	.uleb128 0xb
	.byte	0x8
	.byte	0x2
	.byte	0x27
	.4byte	0x1f0
	.uleb128 0x8
	.4byte	.LASF52
	.byte	0x2
	.byte	0x27
	.4byte	0x1f0
	.byte	0
	.uleb128 0x8
	.4byte	.LASF53
	.byte	0x2
	.byte	0x27
	.4byte	0x1f0
	.byte	0x4
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x1c4
	.uleb128 0xa
	.4byte	.LASF55
	.byte	0x2
	.byte	0x27
	.4byte	0x1cf
	.uleb128 0xc
	.4byte	.LASF56
	.byte	0x1
	.byte	0x1e
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x224
	.uleb128 0xd
	.4byte	.LASF58
	.byte	0x1
	.byte	0x1e
	.4byte	0x224
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x1f6
	.uleb128 0xc
	.4byte	.LASF57
	.byte	0x1
	.byte	0x22
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x288
	.uleb128 0xe
	.4byte	.LASF58
	.byte	0x1
	.byte	0x22
	.4byte	0x224
	.4byte	.LLST0
	.uleb128 0xf
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x10
	.string	"p"
	.byte	0x1
	.byte	0x26
	.4byte	0x1f0
	.4byte	.LLST1
	.uleb128 0xf
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.uleb128 0x11
	.4byte	.LASF51
	.byte	0x1
	.byte	0x28
	.4byte	0x1f0
	.4byte	.LLST2
	.uleb128 0x12
	.4byte	.LVL5
	.4byte	0x483
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	.LASF61
	.byte	0x1
	.byte	0x2f
	.4byte	0x41
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2dc
	.uleb128 0xe
	.4byte	.LASF58
	.byte	0x1
	.byte	0x2f
	.4byte	0x224
	.4byte	.LLST3
	.uleb128 0xe
	.4byte	.LASF50
	.byte	0x1
	.byte	0x2f
	.4byte	0x5d
	.4byte	.LLST4
	.uleb128 0x14
	.4byte	.LASF59
	.byte	0x1
	.byte	0x30
	.4byte	0x1f0
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x15
	.4byte	.LVL9
	.4byte	0x48e
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	.LASF60
	.byte	0x1
	.byte	0x41
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x355
	.uleb128 0xd
	.4byte	.LASF58
	.byte	0x1
	.byte	0x41
	.4byte	0x224
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x11
	.4byte	.LASF52
	.byte	0x1
	.byte	0x42
	.4byte	0x1f0
	.4byte	.LLST5
	.uleb128 0x17
	.4byte	.LASF63
	.4byte	0x365
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$4036
	.uleb128 0x18
	.4byte	.LVL21
	.4byte	0x499
	.4byte	0x34b
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x43
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$4036
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x12
	.4byte	.LVL22
	.4byte	0x483
	.byte	0
	.uleb128 0x19
	.4byte	0x74
	.4byte	0x365
	.uleb128 0x1a
	.4byte	0x66
	.byte	0x11
	.byte	0
	.uleb128 0x1b
	.4byte	0x355
	.uleb128 0x13
	.4byte	.LASF62
	.byte	0x1
	.byte	0x4b
	.4byte	0x5d
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3cd
	.uleb128 0xe
	.4byte	.LASF58
	.byte	0x1
	.byte	0x4b
	.4byte	0x224
	.4byte	.LLST6
	.uleb128 0x17
	.4byte	.LASF63
	.4byte	0x3dd
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$4040
	.uleb128 0x15
	.4byte	.LVL24
	.4byte	0x499
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x4c
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$4040
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	0x74
	.4byte	0x3dd
	.uleb128 0x1a
	.4byte	0x66
	.byte	0x13
	.byte	0
	.uleb128 0x1b
	.4byte	0x3cd
	.uleb128 0x13
	.4byte	.LASF64
	.byte	0x1
	.byte	0x50
	.4byte	0x5d
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x445
	.uleb128 0xe
	.4byte	.LASF58
	.byte	0x1
	.byte	0x50
	.4byte	0x224
	.4byte	.LLST7
	.uleb128 0x17
	.4byte	.LASF63
	.4byte	0x455
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$4044
	.uleb128 0x15
	.4byte	.LVL27
	.4byte	0x499
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x51
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$4044
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	0x74
	.4byte	0x455
	.uleb128 0x1a
	.4byte	0x66
	.byte	0x12
	.byte	0
	.uleb128 0x1b
	.4byte	0x445
	.uleb128 0x13
	.4byte	.LASF65
	.byte	0x1
	.byte	0x55
	.4byte	0x41
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x483
	.uleb128 0xe
	.4byte	.LASF58
	.byte	0x1
	.byte	0x55
	.4byte	0x224
	.4byte	.LLST8
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF66
	.4byte	.LASF66
	.byte	0x3
	.byte	0x5a
	.uleb128 0x1c
	.4byte	.LASF67
	.4byte	.LASF67
	.byte	0x3
	.byte	0x65
	.uleb128 0x1c
	.4byte	.LASF68
	.4byte	.LASF68
	.byte	0x4
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL3
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL5-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL4
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL8
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL13
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
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL8
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x2
	.byte	0x7a
	.sleb128 0
	.4byte	.LVL11
	.4byte	.LVL13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x2
	.byte	0x7a
	.sleb128 0
	.4byte	.LVL14
	.4byte	.LVL16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LFE2
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL20
	.4byte	.LVL21-1
	.2byte	0x2
	.byte	0x72
	.sleb128 0
	.4byte	.LVL21
	.4byte	.LVL22-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL23
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL25
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL26
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL28
	.4byte	.LFE5
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
	.byte	0x52
	.4byte	.LVL30
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
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
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
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
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF28:
	.string	"NGHTTP2_ERR_INVALID_HEADER_BLOCK"
.LASF62:
	.string	"nghttp2_queue_front"
.LASF55:
	.string	"nghttp2_queue"
.LASF39:
	.string	"NGHTTP2_ERR_SESSION_CLOSING"
.LASF2:
	.string	"short int"
.LASF67:
	.string	"malloc"
.LASF23:
	.string	"NGHTTP2_ERR_INVALID_STREAM_ID"
.LASF22:
	.string	"NGHTTP2_ERR_STREAM_SHUT_WR"
.LASF40:
	.string	"NGHTTP2_ERR_HTTP_HEADER"
.LASF21:
	.string	"NGHTTP2_ERR_STREAM_CLOSING"
.LASF42:
	.string	"NGHTTP2_ERR_REFUSED_STREAM"
.LASF56:
	.string	"nghttp2_queue_init"
.LASF18:
	.string	"NGHTTP2_ERR_DEFERRED"
.LASF37:
	.string	"NGHTTP2_ERR_PUSH_DISABLED"
.LASF11:
	.string	"NGHTTP2_ERR_INVALID_ARGUMENT"
.LASF64:
	.string	"nghttp2_queue_back"
.LASF33:
	.string	"NGHTTP2_ERR_FLOW_CONTROL"
.LASF70:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/nghttp/nghttp2/lib/nghttp2_queue.c"
.LASF66:
	.string	"free"
.LASF49:
	.string	"NGHTTP2_ERR_FLOODED"
.LASF20:
	.string	"NGHTTP2_ERR_STREAM_CLOSED"
.LASF13:
	.string	"NGHTTP2_ERR_UNSUPPORTED_VERSION"
.LASF5:
	.string	"long long int"
.LASF6:
	.string	"long long unsigned int"
.LASF25:
	.string	"NGHTTP2_ERR_DEFERRED_DATA_EXIST"
.LASF7:
	.string	"long int"
.LASF45:
	.string	"NGHTTP2_ERR_FATAL"
.LASF60:
	.string	"nghttp2_queue_pop"
.LASF36:
	.string	"NGHTTP2_ERR_TOO_MANY_INFLIGHT_SETTINGS"
.LASF31:
	.string	"NGHTTP2_ERR_FRAME_SIZE_ERROR"
.LASF14:
	.string	"NGHTTP2_ERR_WOULDBLOCK"
.LASF54:
	.string	"nghttp2_queue_cell"
.LASF58:
	.string	"queue"
.LASF1:
	.string	"unsigned char"
.LASF12:
	.string	"NGHTTP2_ERR_BUFFER_ERROR"
.LASF41:
	.string	"NGHTTP2_ERR_HTTP_MESSAGING"
.LASF29:
	.string	"NGHTTP2_ERR_INVALID_STATE"
.LASF26:
	.string	"NGHTTP2_ERR_START_STREAM_NOT_ALLOWED"
.LASF59:
	.string	"new_cell"
.LASF17:
	.string	"NGHTTP2_ERR_EOF"
.LASF0:
	.string	"signed char"
.LASF16:
	.string	"NGHTTP2_ERR_INVALID_FRAME"
.LASF4:
	.string	"unsigned int"
.LASF35:
	.string	"NGHTTP2_ERR_PAUSE"
.LASF9:
	.string	"long unsigned int"
.LASF43:
	.string	"NGHTTP2_ERR_INTERNAL"
.LASF3:
	.string	"short unsigned int"
.LASF32:
	.string	"NGHTTP2_ERR_HEADER_COMP"
.LASF10:
	.string	"char"
.LASF34:
	.string	"NGHTTP2_ERR_INSUFF_BUFSIZE"
.LASF53:
	.string	"back"
.LASF46:
	.string	"NGHTTP2_ERR_NOMEM"
.LASF71:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\nghttp"
.LASF50:
	.string	"data"
.LASF48:
	.string	"NGHTTP2_ERR_BAD_CLIENT_MAGIC"
.LASF63:
	.string	"__func__"
.LASF47:
	.string	"NGHTTP2_ERR_CALLBACK_FAILURE"
.LASF27:
	.string	"NGHTTP2_ERR_GOAWAY_ALREADY_SENT"
.LASF61:
	.string	"nghttp2_queue_push"
.LASF30:
	.string	"NGHTTP2_ERR_TEMPORAL_CALLBACK_FAILURE"
.LASF57:
	.string	"nghttp2_queue_free"
.LASF52:
	.string	"front"
.LASF8:
	.string	"sizetype"
.LASF24:
	.string	"NGHTTP2_ERR_INVALID_STREAM_STATE"
.LASF19:
	.string	"NGHTTP2_ERR_STREAM_ID_NOT_AVAILABLE"
.LASF68:
	.string	"__assert_func"
.LASF65:
	.string	"nghttp2_queue_empty"
.LASF69:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF38:
	.string	"NGHTTP2_ERR_DATA_EXIST"
.LASF15:
	.string	"NGHTTP2_ERR_PROTO"
.LASF51:
	.string	"next"
.LASF44:
	.string	"NGHTTP2_ERR_CANCEL"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
