	.file	"nghttp2_option.c"
	.text
.Ltext0:
	.section	.text.set_ext_type,"ax",@progbits
	.align	4
	.type	set_ext_type, @function
set_ext_type:
.LFB7:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/nghttp/nghttp2/lib/nghttp2_option.c"
	.loc 1 68 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 69 0
	srli	a9, a3, 3
	add.n	a2, a2, a9
.LVL1:
	l8ui	a8, a2, 0
	extui	a3, a3, 0, 3
.LVL2:
	movi.n	a9, 1
	ssl	a3
	sll	a3, a9
	or	a8, a8, a3
	s8i	a8, a2, 0
	retw.n
.LFE7:
	.size	set_ext_type, .-set_ext_type
	.section	.text.nghttp2_option_new,"ax",@progbits
	.align	4
	.global	nghttp2_option_new
	.type	nghttp2_option_new, @function
nghttp2_option_new:
.LFB0:
	.loc 1 29 0
.LVL3:
	entry	sp, 32
.LCFI1:
	.loc 1 30 0
	movi.n	a11, 0x4c
	movi.n	a10, 1
	call8	calloc
.LVL4:
	s32i.n	a10, a2, 0
	.loc 1 32 0
	bnez.n	a10, .L4
	.loc 1 33 0
	movi	a2, -0x385
.LVL5:
	retw.n
.LVL6:
.L4:
	.loc 1 36 0
	movi.n	a2, 0
.LVL7:
	.loc 1 37 0
	retw.n
.LFE0:
	.size	nghttp2_option_new, .-nghttp2_option_new
	.section	.text.nghttp2_option_del,"ax",@progbits
	.align	4
	.global	nghttp2_option_del
	.type	nghttp2_option_del, @function
nghttp2_option_del:
.LFB1:
	.loc 1 39 0
.LVL8:
	entry	sp, 32
.LCFI2:
	.loc 1 39 0
	mov.n	a10, a2
	call8	free
.LVL9:
	retw.n
.LFE1:
	.size	nghttp2_option_del, .-nghttp2_option_del
	.section	.text.nghttp2_option_set_no_auto_window_update,"ax",@progbits
	.align	4
	.global	nghttp2_option_set_no_auto_window_update
	.type	nghttp2_option_set_no_auto_window_update, @function
nghttp2_option_set_no_auto_window_update:
.LFB2:
	.loc 1 41 0
.LVL10:
	entry	sp, 32
.LCFI3:
	.loc 1 42 0
	l32i.n	a9, a2, 8
	movi.n	a8, 1
	or	a8, a9, a8
	s32i.n	a8, a2, 8
	.loc 1 43 0
	s32i.n	a3, a2, 24
	retw.n
.LFE2:
	.size	nghttp2_option_set_no_auto_window_update, .-nghttp2_option_set_no_auto_window_update
	.section	.text.nghttp2_option_set_peer_max_concurrent_streams,"ax",@progbits
	.align	4
	.global	nghttp2_option_set_peer_max_concurrent_streams
	.type	nghttp2_option_set_peer_max_concurrent_streams, @function
nghttp2_option_set_peer_max_concurrent_streams:
.LFB3:
	.loc 1 47 0
.LVL11:
	entry	sp, 32
.LCFI4:
	.loc 1 48 0
	l32i.n	a9, a2, 8
	movi.n	a8, 2
	or	a8, a9, a8
	s32i.n	a8, a2, 8
	.loc 1 49 0
	s32i.n	a3, a2, 12
	retw.n
.LFE3:
	.size	nghttp2_option_set_peer_max_concurrent_streams, .-nghttp2_option_set_peer_max_concurrent_streams
	.section	.text.nghttp2_option_set_no_recv_client_magic,"ax",@progbits
	.align	4
	.global	nghttp2_option_set_no_recv_client_magic
	.type	nghttp2_option_set_no_recv_client_magic, @function
nghttp2_option_set_no_recv_client_magic:
.LFB4:
	.loc 1 52 0
.LVL12:
	entry	sp, 32
.LCFI5:
	.loc 1 53 0
	l32i.n	a9, a2, 8
	movi.n	a8, 4
	or	a8, a9, a8
	s32i.n	a8, a2, 8
	.loc 1 54 0
	s32i.n	a3, a2, 28
	retw.n
.LFE4:
	.size	nghttp2_option_set_no_recv_client_magic, .-nghttp2_option_set_no_recv_client_magic
	.section	.text.nghttp2_option_set_no_http_messaging,"ax",@progbits
	.align	4
	.global	nghttp2_option_set_no_http_messaging
	.type	nghttp2_option_set_no_http_messaging, @function
nghttp2_option_set_no_http_messaging:
.LFB5:
	.loc 1 57 0
.LVL13:
	entry	sp, 32
.LCFI6:
	.loc 1 58 0
	l32i.n	a9, a2, 8
	movi.n	a8, 8
	or	a8, a9, a8
	s32i.n	a8, a2, 8
	.loc 1 59 0
	s32i.n	a3, a2, 32
	retw.n
.LFE5:
	.size	nghttp2_option_set_no_http_messaging, .-nghttp2_option_set_no_http_messaging
	.section	.text.nghttp2_option_set_max_reserved_remote_streams,"ax",@progbits
	.align	4
	.global	nghttp2_option_set_max_reserved_remote_streams
	.type	nghttp2_option_set_max_reserved_remote_streams, @function
nghttp2_option_set_max_reserved_remote_streams:
.LFB6:
	.loc 1 63 0
.LVL14:
	entry	sp, 32
.LCFI7:
	.loc 1 64 0
	l32i.n	a9, a2, 8
	movi.n	a8, 0x10
	or	a8, a9, a8
	s32i.n	a8, a2, 8
	.loc 1 65 0
	s32i.n	a3, a2, 16
	retw.n
.LFE6:
	.size	nghttp2_option_set_max_reserved_remote_streams, .-nghttp2_option_set_max_reserved_remote_streams
	.section	.text.nghttp2_option_set_user_recv_extension_type,"ax",@progbits
	.align	4
	.global	nghttp2_option_set_user_recv_extension_type
	.type	nghttp2_option_set_user_recv_extension_type, @function
nghttp2_option_set_user_recv_extension_type:
.LFB8:
	.loc 1 73 0
.LVL15:
	entry	sp, 32
.LCFI8:
	extui	a11, a3, 0, 8
	.loc 1 74 0
	movi.n	a8, 9
	bgeu	a8, a11, .L11
	.loc 1 78 0
	l32i.n	a9, a2, 8
	movi.n	a8, 0x20
	or	a8, a9, a8
	s32i.n	a8, a2, 8
	.loc 1 79 0
	addi	a10, a2, 44
	call8	set_ext_type
.LVL16:
.L11:
	retw.n
.LFE8:
	.size	nghttp2_option_set_user_recv_extension_type, .-nghttp2_option_set_user_recv_extension_type
	.section	.text.nghttp2_option_set_builtin_recv_extension_type,"ax",@progbits
	.align	4
	.global	nghttp2_option_set_builtin_recv_extension_type
	.type	nghttp2_option_set_builtin_recv_extension_type, @function
nghttp2_option_set_builtin_recv_extension_type:
.LFB9:
	.loc 1 83 0
.LVL17:
	entry	sp, 32
.LCFI9:
	extui	a3, a3, 0, 8
	.loc 1 84 0
	bnei	a3, 10, .L13
	.loc 1 86 0
	l32i.n	a3, a2, 8
.LVL18:
	movi	a8, 0x80
	or	a8, a3, a8
	s32i.n	a8, a2, 8
	.loc 1 87 0
	l32i.n	a3, a2, 20
	movi.n	a8, 1
	or	a8, a3, a8
	s32i.n	a8, a2, 20
.L13:
	retw.n
.LFE9:
	.size	nghttp2_option_set_builtin_recv_extension_type, .-nghttp2_option_set_builtin_recv_extension_type
	.section	.text.nghttp2_option_set_no_auto_ping_ack,"ax",@progbits
	.align	4
	.global	nghttp2_option_set_no_auto_ping_ack
	.type	nghttp2_option_set_no_auto_ping_ack, @function
nghttp2_option_set_no_auto_ping_ack:
.LFB10:
	.loc 1 94 0
.LVL19:
	entry	sp, 32
.LCFI10:
	.loc 1 95 0
	l32i.n	a9, a2, 8
	movi.n	a8, 0x40
	or	a8, a9, a8
	s32i.n	a8, a2, 8
	.loc 1 96 0
	s32i.n	a3, a2, 36
	retw.n
.LFE10:
	.size	nghttp2_option_set_no_auto_ping_ack, .-nghttp2_option_set_no_auto_ping_ack
	.section	.text.nghttp2_option_set_max_send_header_block_length,"ax",@progbits
	.align	4
	.global	nghttp2_option_set_max_send_header_block_length
	.type	nghttp2_option_set_max_send_header_block_length, @function
nghttp2_option_set_max_send_header_block_length:
.LFB11:
	.loc 1 100 0
.LVL20:
	entry	sp, 32
.LCFI11:
	.loc 1 101 0
	l32i.n	a9, a2, 8
	movi	a8, 0x100
	or	a8, a9, a8
	s32i.n	a8, a2, 8
	.loc 1 102 0
	s32i.n	a3, a2, 0
	retw.n
.LFE11:
	.size	nghttp2_option_set_max_send_header_block_length, .-nghttp2_option_set_max_send_header_block_length
	.section	.text.nghttp2_option_set_max_deflate_dynamic_table_size,"ax",@progbits
	.align	4
	.global	nghttp2_option_set_max_deflate_dynamic_table_size
	.type	nghttp2_option_set_max_deflate_dynamic_table_size, @function
nghttp2_option_set_max_deflate_dynamic_table_size:
.LFB12:
	.loc 1 106 0
.LVL21:
	entry	sp, 32
.LCFI12:
	.loc 1 107 0
	l32i.n	a9, a2, 8
	movi	a8, 0x200
	or	a8, a9, a8
	s32i.n	a8, a2, 8
	.loc 1 108 0
	s32i.n	a3, a2, 4
	retw.n
.LFE12:
	.size	nghttp2_option_set_max_deflate_dynamic_table_size, .-nghttp2_option_set_max_deflate_dynamic_table_size
	.section	.text.nghttp2_option_set_no_closed_streams,"ax",@progbits
	.align	4
	.global	nghttp2_option_set_no_closed_streams
	.type	nghttp2_option_set_no_closed_streams, @function
nghttp2_option_set_no_closed_streams:
.LFB13:
	.loc 1 111 0
.LVL22:
	entry	sp, 32
.LCFI13:
	.loc 1 112 0
	l32i.n	a9, a2, 8
	movi	a8, 0x400
	or	a8, a9, a8
	s32i.n	a8, a2, 8
	.loc 1 113 0
	s32i.n	a3, a2, 40
	retw.n
.LFE13:
	.size	nghttp2_option_set_no_closed_streams, .-nghttp2_option_set_no_closed_streams
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
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI0-.LFB7
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x4
	.4byte	.LCFI1-.LFB0
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x4
	.4byte	.LCFI2-.LFB1
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI3-.LFB2
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI4-.LFB3
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI5-.LFB4
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI6-.LFB5
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI7-.LFB6
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x4
	.4byte	.LCFI8-.LFB8
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x4
	.4byte	.LCFI9-.LFB9
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI10-.LFB10
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x4
	.4byte	.LCFI11-.LFB11
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI12-.LFB12
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI13-.LFB13
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE26:
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 3 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/nghttp/nghttp2/lib/includes/nghttp2/nghttp2.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/nghttp/nghttp2/lib/nghttp2_option.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/nghttp/nghttp2/lib/nghttp2_session.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x637
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
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x1a
	.4byte	0x5e
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
	.byte	0x2d
	.4byte	0x53
	.uleb128 0x5
	.byte	0x4
	.4byte	0x4c
	.byte	0x5
	.byte	0xe7
	.4byte	0x1ce
	.uleb128 0x6
	.4byte	.LASF16
	.sleb128 -501
	.uleb128 0x6
	.4byte	.LASF17
	.sleb128 -502
	.uleb128 0x6
	.4byte	.LASF18
	.sleb128 -503
	.uleb128 0x6
	.4byte	.LASF19
	.sleb128 -504
	.uleb128 0x6
	.4byte	.LASF20
	.sleb128 -505
	.uleb128 0x6
	.4byte	.LASF21
	.sleb128 -506
	.uleb128 0x6
	.4byte	.LASF22
	.sleb128 -507
	.uleb128 0x6
	.4byte	.LASF23
	.sleb128 -508
	.uleb128 0x6
	.4byte	.LASF24
	.sleb128 -509
	.uleb128 0x6
	.4byte	.LASF25
	.sleb128 -510
	.uleb128 0x6
	.4byte	.LASF26
	.sleb128 -511
	.uleb128 0x6
	.4byte	.LASF27
	.sleb128 -512
	.uleb128 0x6
	.4byte	.LASF28
	.sleb128 -513
	.uleb128 0x6
	.4byte	.LASF29
	.sleb128 -514
	.uleb128 0x6
	.4byte	.LASF30
	.sleb128 -515
	.uleb128 0x6
	.4byte	.LASF31
	.sleb128 -516
	.uleb128 0x6
	.4byte	.LASF32
	.sleb128 -517
	.uleb128 0x6
	.4byte	.LASF33
	.sleb128 -518
	.uleb128 0x6
	.4byte	.LASF34
	.sleb128 -519
	.uleb128 0x6
	.4byte	.LASF35
	.sleb128 -521
	.uleb128 0x6
	.4byte	.LASF36
	.sleb128 -522
	.uleb128 0x6
	.4byte	.LASF37
	.sleb128 -523
	.uleb128 0x6
	.4byte	.LASF38
	.sleb128 -524
	.uleb128 0x6
	.4byte	.LASF39
	.sleb128 -525
	.uleb128 0x6
	.4byte	.LASF40
	.sleb128 -526
	.uleb128 0x6
	.4byte	.LASF41
	.sleb128 -527
	.uleb128 0x6
	.4byte	.LASF42
	.sleb128 -528
	.uleb128 0x6
	.4byte	.LASF43
	.sleb128 -529
	.uleb128 0x6
	.4byte	.LASF44
	.sleb128 -530
	.uleb128 0x6
	.4byte	.LASF45
	.sleb128 -531
	.uleb128 0x6
	.4byte	.LASF46
	.sleb128 -532
	.uleb128 0x6
	.4byte	.LASF47
	.sleb128 -533
	.uleb128 0x6
	.4byte	.LASF48
	.sleb128 -534
	.uleb128 0x6
	.4byte	.LASF49
	.sleb128 -535
	.uleb128 0x6
	.4byte	.LASF50
	.sleb128 -900
	.uleb128 0x6
	.4byte	.LASF51
	.sleb128 -901
	.uleb128 0x6
	.4byte	.LASF52
	.sleb128 -902
	.uleb128 0x6
	.4byte	.LASF53
	.sleb128 -903
	.uleb128 0x6
	.4byte	.LASF54
	.sleb128 -904
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x9a
	.uleb128 0x8
	.byte	0x4
	.4byte	0x5e
	.byte	0x5
	.2byte	0x229
	.4byte	0x224
	.uleb128 0x9
	.4byte	.LASF55
	.byte	0
	.uleb128 0x9
	.4byte	.LASF56
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF57
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF58
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF59
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF60
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF61
	.byte	0x6
	.uleb128 0x9
	.4byte	.LASF62
	.byte	0x7
	.uleb128 0x9
	.4byte	.LASF63
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF64
	.byte	0x9
	.uleb128 0x9
	.4byte	.LASF65
	.byte	0xa
	.byte	0
	.uleb128 0xa
	.4byte	.LASF66
	.byte	0x5
	.2byte	0x940
	.4byte	0x230
	.uleb128 0xb
	.4byte	.LASF66
	.byte	0x4c
	.byte	0x6
	.byte	0x4a
	.4byte	0x2cd
	.uleb128 0xc
	.4byte	.LASF67
	.byte	0x6
	.byte	0x4e
	.4byte	0x73
	.byte	0
	.uleb128 0xc
	.4byte	.LASF68
	.byte	0x6
	.byte	0x52
	.4byte	0x73
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF69
	.byte	0x6
	.byte	0x57
	.4byte	0xa5
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF70
	.byte	0x6
	.byte	0x5b
	.4byte	0xa5
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF71
	.byte	0x6
	.byte	0x5f
	.4byte	0xa5
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF72
	.byte	0x6
	.byte	0x63
	.4byte	0xa5
	.byte	0x14
	.uleb128 0xc
	.4byte	.LASF73
	.byte	0x6
	.byte	0x67
	.4byte	0x4c
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF74
	.byte	0x6
	.byte	0x6b
	.4byte	0x4c
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF75
	.byte	0x6
	.byte	0x6f
	.4byte	0x4c
	.byte	0x20
	.uleb128 0xc
	.4byte	.LASF76
	.byte	0x6
	.byte	0x73
	.4byte	0x4c
	.byte	0x24
	.uleb128 0xc
	.4byte	.LASF77
	.byte	0x6
	.byte	0x77
	.4byte	0x4c
	.byte	0x28
	.uleb128 0xc
	.4byte	.LASF78
	.byte	0x6
	.byte	0x7b
	.4byte	0x31f
	.byte	0x2c
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x5e
	.byte	0x6
	.byte	0x25
	.4byte	0x31f
	.uleb128 0x9
	.4byte	.LASF79
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF80
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF81
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF82
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF83
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF84
	.byte	0x20
	.uleb128 0x9
	.4byte	.LASF85
	.byte	0x40
	.uleb128 0x9
	.4byte	.LASF86
	.byte	0x80
	.uleb128 0xd
	.4byte	.LASF87
	.2byte	0x100
	.uleb128 0xd
	.4byte	.LASF88
	.2byte	0x200
	.uleb128 0xd
	.4byte	.LASF89
	.2byte	0x400
	.byte	0
	.uleb128 0xe
	.4byte	0x9a
	.4byte	0x32f
	.uleb128 0xf
	.4byte	0x85
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x5e
	.byte	0x7
	.byte	0x3e
	.4byte	0x348
	.uleb128 0x9
	.4byte	.LASF90
	.byte	0
	.uleb128 0x9
	.4byte	.LASF91
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.4byte	.LASF113
	.byte	0x1
	.byte	0x44
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x37c
	.uleb128 0x11
	.4byte	.LASF92
	.byte	0x1
	.byte	0x44
	.4byte	0x1ce
	.4byte	.LLST0
	.uleb128 0x11
	.4byte	.LASF93
	.byte	0x1
	.byte	0x44
	.4byte	0x9a
	.4byte	.LLST1
	.byte	0
	.uleb128 0x12
	.4byte	.LASF114
	.byte	0x1
	.byte	0x1d
	.4byte	0x4c
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3ba
	.uleb128 0x11
	.4byte	.LASF94
	.byte	0x1
	.byte	0x1d
	.4byte	0x3ba
	.4byte	.LLST2
	.uleb128 0x13
	.4byte	.LVL4
	.4byte	0x624
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x4c
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x3c0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x224
	.uleb128 0x15
	.4byte	.LASF96
	.byte	0x1
	.byte	0x27
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3f9
	.uleb128 0x16
	.4byte	.LASF95
	.byte	0x1
	.byte	0x27
	.4byte	0x3c0
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x13
	.4byte	.LVL9
	.4byte	0x62f
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF97
	.byte	0x1
	.byte	0x29
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x429
	.uleb128 0x16
	.4byte	.LASF95
	.byte	0x1
	.byte	0x29
	.4byte	0x3c0
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x17
	.string	"val"
	.byte	0x1
	.byte	0x29
	.4byte	0x4c
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x15
	.4byte	.LASF98
	.byte	0x1
	.byte	0x2e
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x459
	.uleb128 0x16
	.4byte	.LASF95
	.byte	0x1
	.byte	0x2e
	.4byte	0x3c0
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x17
	.string	"val"
	.byte	0x1
	.byte	0x2f
	.4byte	0xa5
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x15
	.4byte	.LASF99
	.byte	0x1
	.byte	0x34
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x489
	.uleb128 0x16
	.4byte	.LASF95
	.byte	0x1
	.byte	0x34
	.4byte	0x3c0
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x17
	.string	"val"
	.byte	0x1
	.byte	0x34
	.4byte	0x4c
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x15
	.4byte	.LASF100
	.byte	0x1
	.byte	0x39
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4b9
	.uleb128 0x16
	.4byte	.LASF95
	.byte	0x1
	.byte	0x39
	.4byte	0x3c0
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x17
	.string	"val"
	.byte	0x1
	.byte	0x39
	.4byte	0x4c
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x15
	.4byte	.LASF101
	.byte	0x1
	.byte	0x3e
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4e9
	.uleb128 0x16
	.4byte	.LASF95
	.byte	0x1
	.byte	0x3e
	.4byte	0x3c0
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x17
	.string	"val"
	.byte	0x1
	.byte	0x3f
	.4byte	0xa5
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x15
	.4byte	.LASF102
	.byte	0x1
	.byte	0x48
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x532
	.uleb128 0x16
	.4byte	.LASF95
	.byte	0x1
	.byte	0x48
	.4byte	0x3c0
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x16
	.4byte	.LASF93
	.byte	0x1
	.byte	0x49
	.4byte	0x9a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x13
	.4byte	.LVL16
	.4byte	0x348
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 44
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF103
	.byte	0x1
	.byte	0x52
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x564
	.uleb128 0x16
	.4byte	.LASF95
	.byte	0x1
	.byte	0x52
	.4byte	0x3c0
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x11
	.4byte	.LASF93
	.byte	0x1
	.byte	0x53
	.4byte	0x9a
	.4byte	.LLST3
	.byte	0
	.uleb128 0x15
	.4byte	.LASF104
	.byte	0x1
	.byte	0x5e
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x594
	.uleb128 0x16
	.4byte	.LASF95
	.byte	0x1
	.byte	0x5e
	.4byte	0x3c0
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x17
	.string	"val"
	.byte	0x1
	.byte	0x5e
	.4byte	0x4c
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x15
	.4byte	.LASF105
	.byte	0x1
	.byte	0x63
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5c4
	.uleb128 0x16
	.4byte	.LASF95
	.byte	0x1
	.byte	0x63
	.4byte	0x3c0
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x17
	.string	"val"
	.byte	0x1
	.byte	0x64
	.4byte	0x73
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x15
	.4byte	.LASF106
	.byte	0x1
	.byte	0x69
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5f4
	.uleb128 0x16
	.4byte	.LASF95
	.byte	0x1
	.byte	0x69
	.4byte	0x3c0
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x17
	.string	"val"
	.byte	0x1
	.byte	0x6a
	.4byte	0x73
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x15
	.4byte	.LASF107
	.byte	0x1
	.byte	0x6f
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x624
	.uleb128 0x16
	.4byte	.LASF95
	.byte	0x1
	.byte	0x6f
	.4byte	0x3c0
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x17
	.string	"val"
	.byte	0x1
	.byte	0x6f
	.4byte	0x4c
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x18
	.4byte	.LASF108
	.4byte	.LASF108
	.byte	0x8
	.byte	0x57
	.uleb128 0x18
	.4byte	.LASF109
	.4byte	.LASF109
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x5
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x18
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
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL2
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL3
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
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL18
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x84
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
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
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB7
	.4byte	.LFE7
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
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF96:
	.string	"nghttp2_option_del"
.LASF33:
	.string	"NGHTTP2_ERR_INVALID_HEADER_BLOCK"
.LASF79:
	.string	"NGHTTP2_OPT_NO_AUTO_WINDOW_UPDATE"
.LASF57:
	.string	"NGHTTP2_PRIORITY"
.LASF55:
	.string	"NGHTTP2_DATA"
.LASF63:
	.string	"NGHTTP2_WINDOW_UPDATE"
.LASF44:
	.string	"NGHTTP2_ERR_SESSION_CLOSING"
.LASF2:
	.string	"short int"
.LASF9:
	.string	"size_t"
.LASF52:
	.string	"NGHTTP2_ERR_CALLBACK_FAILURE"
.LASF28:
	.string	"NGHTTP2_ERR_INVALID_STREAM_ID"
.LASF11:
	.string	"sizetype"
.LASF73:
	.string	"no_auto_window_update"
.LASF26:
	.string	"NGHTTP2_ERR_STREAM_CLOSING"
.LASF47:
	.string	"NGHTTP2_ERR_REFUSED_STREAM"
.LASF86:
	.string	"NGHTTP2_OPT_BUILTIN_RECV_EXT_TYPES"
.LASF111:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/nghttp/nghttp2/lib/nghttp2_option.c"
.LASF5:
	.string	"__uint32_t"
.LASF107:
	.string	"nghttp2_option_set_no_closed_streams"
.LASF85:
	.string	"NGHTTP2_OPT_NO_AUTO_PING_ACK"
.LASF23:
	.string	"NGHTTP2_ERR_DEFERRED"
.LASF100:
	.string	"nghttp2_option_set_no_http_messaging"
.LASF42:
	.string	"NGHTTP2_ERR_PUSH_DISABLED"
.LASF16:
	.string	"NGHTTP2_ERR_INVALID_ARGUMENT"
.LASF76:
	.string	"no_auto_ping_ack"
.LASF45:
	.string	"NGHTTP2_ERR_HTTP_HEADER"
.LASF14:
	.string	"uint8_t"
.LASF38:
	.string	"NGHTTP2_ERR_FLOW_CONTROL"
.LASF88:
	.string	"NGHTTP2_OPT_MAX_DEFLATE_DYNAMIC_TABLE_SIZE"
.LASF69:
	.string	"opt_set_mask"
.LASF67:
	.string	"max_send_header_block_length"
.LASF95:
	.string	"option"
.LASF92:
	.string	"ext_types"
.LASF15:
	.string	"uint32_t"
.LASF109:
	.string	"free"
.LASF54:
	.string	"NGHTTP2_ERR_FLOODED"
.LASF105:
	.string	"nghttp2_option_set_max_send_header_block_length"
.LASF104:
	.string	"nghttp2_option_set_no_auto_ping_ack"
.LASF18:
	.string	"NGHTTP2_ERR_UNSUPPORTED_VERSION"
.LASF91:
	.string	"NGHTTP2_TYPEMASK_ALTSVC"
.LASF82:
	.string	"NGHTTP2_OPT_NO_HTTP_MESSAGING"
.LASF7:
	.string	"long long int"
.LASF8:
	.string	"long long unsigned int"
.LASF75:
	.string	"no_http_messaging"
.LASF30:
	.string	"NGHTTP2_ERR_DEFERRED_DATA_EXIST"
.LASF10:
	.string	"long int"
.LASF97:
	.string	"nghttp2_option_set_no_auto_window_update"
.LASF64:
	.string	"NGHTTP2_CONTINUATION"
.LASF50:
	.string	"NGHTTP2_ERR_FATAL"
.LASF41:
	.string	"NGHTTP2_ERR_TOO_MANY_INFLIGHT_SETTINGS"
.LASF36:
	.string	"NGHTTP2_ERR_FRAME_SIZE_ERROR"
.LASF19:
	.string	"NGHTTP2_ERR_WOULDBLOCK"
.LASF87:
	.string	"NGHTTP2_OPT_MAX_SEND_HEADER_BLOCK_LENGTH"
.LASF58:
	.string	"NGHTTP2_RST_STREAM"
.LASF17:
	.string	"NGHTTP2_ERR_BUFFER_ERROR"
.LASF46:
	.string	"NGHTTP2_ERR_HTTP_MESSAGING"
.LASF34:
	.string	"NGHTTP2_ERR_INVALID_STATE"
.LASF106:
	.string	"nghttp2_option_set_max_deflate_dynamic_table_size"
.LASF31:
	.string	"NGHTTP2_ERR_START_STREAM_NOT_ALLOWED"
.LASF1:
	.string	"unsigned char"
.LASF22:
	.string	"NGHTTP2_ERR_EOF"
.LASF0:
	.string	"signed char"
.LASF21:
	.string	"NGHTTP2_ERR_INVALID_FRAME"
.LASF93:
	.string	"type"
.LASF6:
	.string	"unsigned int"
.LASF78:
	.string	"user_recv_ext_types"
.LASF40:
	.string	"NGHTTP2_ERR_PAUSE"
.LASF94:
	.string	"option_ptr"
.LASF39:
	.string	"NGHTTP2_ERR_INSUFF_BUFSIZE"
.LASF81:
	.string	"NGHTTP2_OPT_NO_RECV_CLIENT_MAGIC"
.LASF90:
	.string	"NGHTTP2_TYPEMASK_NONE"
.LASF70:
	.string	"peer_max_concurrent_streams"
.LASF48:
	.string	"NGHTTP2_ERR_INTERNAL"
.LASF3:
	.string	"short unsigned int"
.LASF27:
	.string	"NGHTTP2_ERR_STREAM_SHUT_WR"
.LASF37:
	.string	"NGHTTP2_ERR_HEADER_COMP"
.LASF56:
	.string	"NGHTTP2_HEADERS"
.LASF13:
	.string	"char"
.LASF99:
	.string	"nghttp2_option_set_no_recv_client_magic"
.LASF77:
	.string	"no_closed_streams"
.LASF72:
	.string	"builtin_recv_ext_types"
.LASF108:
	.string	"calloc"
.LASF61:
	.string	"NGHTTP2_PING"
.LASF51:
	.string	"NGHTTP2_ERR_NOMEM"
.LASF112:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\nghttp"
.LASF32:
	.string	"NGHTTP2_ERR_GOAWAY_ALREADY_SENT"
.LASF53:
	.string	"NGHTTP2_ERR_BAD_CLIENT_MAGIC"
.LASF101:
	.string	"nghttp2_option_set_max_reserved_remote_streams"
.LASF113:
	.string	"set_ext_type"
.LASF66:
	.string	"nghttp2_option"
.LASF12:
	.string	"long unsigned int"
.LASF102:
	.string	"nghttp2_option_set_user_recv_extension_type"
.LASF74:
	.string	"no_recv_client_magic"
.LASF80:
	.string	"NGHTTP2_OPT_PEER_MAX_CONCURRENT_STREAMS"
.LASF98:
	.string	"nghttp2_option_set_peer_max_concurrent_streams"
.LASF35:
	.string	"NGHTTP2_ERR_TEMPORAL_CALLBACK_FAILURE"
.LASF103:
	.string	"nghttp2_option_set_builtin_recv_extension_type"
.LASF59:
	.string	"NGHTTP2_SETTINGS"
.LASF84:
	.string	"NGHTTP2_OPT_USER_RECV_EXT_TYPES"
.LASF89:
	.string	"NGHTTP2_OPT_NO_CLOSED_STREAMS"
.LASF71:
	.string	"max_reserved_remote_streams"
.LASF62:
	.string	"NGHTTP2_GOAWAY"
.LASF29:
	.string	"NGHTTP2_ERR_INVALID_STREAM_STATE"
.LASF24:
	.string	"NGHTTP2_ERR_STREAM_ID_NOT_AVAILABLE"
.LASF114:
	.string	"nghttp2_option_new"
.LASF68:
	.string	"max_deflate_dynamic_table_size"
.LASF25:
	.string	"NGHTTP2_ERR_STREAM_CLOSED"
.LASF83:
	.string	"NGHTTP2_OPT_MAX_RESERVED_REMOTE_STREAMS"
.LASF110:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF43:
	.string	"NGHTTP2_ERR_DATA_EXIST"
.LASF20:
	.string	"NGHTTP2_ERR_PROTO"
.LASF65:
	.string	"NGHTTP2_ALTSVC"
.LASF4:
	.string	"__uint8_t"
.LASF49:
	.string	"NGHTTP2_ERR_CANCEL"
.LASF60:
	.string	"NGHTTP2_PUSH_PROMISE"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
