	.file	"btc_profile_queue.c"
	.text
.Ltext0:
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC2:
	.string	"connect_queue != NULL"
	.align	4
.LC5:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/btc/core/btc_profile_queue.c"
	.align	4
.LC7:
	.string	"list_length(connect_queue) < MAX_REASONABLE_REQUESTS"
	.align	4
.LC9:
	.string	"p_node != NULL"
	.section	.text.queue_int_add,"ax",@progbits
	.literal_position
	.literal .LC0, connect_queue
	.literal .LC1, osi_free_func
	.literal .LC3, .LC2
	.literal .LC4, __func__$5723
	.literal .LC6, .LC5
	.literal .LC8, .LC7
	.literal .LC10, .LC9
	.align	4
	.type	queue_int_add, @function
queue_int_add:
.LFB26:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/btc/core/btc_profile_queue.c"
	.loc 1 41 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 42 0
	l32r	a3, .LC0
	l32i.n	a3, a3, 0
	bnez.n	a3, .L2
	.loc 1 43 0
	l32r	a10, .LC1
	call8	list_new
.LVL1:
	l32r	a3, .LC0
	s32i.n	a10, a3, 0
	.loc 1 44 0
	bnez.n	a10, .L2
	.loc 1 44 0 is_stmt 0 discriminator 1
	l32r	a13, .LC3
	l32r	a12, .LC4
	movi.n	a11, 0x2c
	l32r	a10, .LC6
	call8	__assert_func
.LVL2:
.L2:
	.loc 1 48 0 is_stmt 1
	l32r	a3, .LC0
	l32i.n	a10, a3, 0
	call8	list_length
.LVL3:
	movi.n	a3, 9
	bgeu	a3, a10, .L3
	.loc 1 48 0 is_stmt 0 discriminator 1
	l32r	a13, .LC8
	l32r	a12, .LC4
	movi.n	a11, 0x30
	l32r	a10, .LC6
	call8	__assert_func
.LVL4:
.L3:
.LBB2:
	.loc 1 50 0 is_stmt 1
	l32r	a3, .LC0
	l32i.n	a10, a3, 0
	call8	list_begin
.LVL5:
	mov.n	a3, a10
.LVL6:
	j	.L4
.L6:
	.loc 1 51 0
	mov.n	a10, a3
	call8	list_node
.LVL7:
	l16ui	a9, a10, 6
	l16ui	a8, a2, 6
	beq	a9, a8, .L1
	.loc 1 50 0 discriminator 2
	mov.n	a10, a3
	call8	list_next
.LVL8:
	mov.n	a3, a10
.LVL9:
.L4:
	.loc 1 50 0 is_stmt 0 discriminator 1
	l32r	a8, .LC0
	l32i.n	a10, a8, 0
	call8	list_end
.LVL10:
	bne	a3, a10, .L6
.LBE2:
	.loc 1 57 0 is_stmt 1
	movi.n	a10, 0x10
	call8	malloc
.LVL11:
	mov.n	a3, a10
.LVL12:
	.loc 1 58 0
	bnez.n	a10, .L7
	.loc 1 58 0 is_stmt 0 discriminator 1
	l32r	a13, .LC10
	l32r	a12, .LC4
	movi.n	a11, 0x3a
	l32r	a10, .LC6
	call8	__assert_func
.LVL13:
.L7:
	.loc 1 59 0 is_stmt 1
	movi.n	a12, 0x10
	mov.n	a11, a2
	call8	memcpy
.LVL14:
	.loc 1 60 0
	mov.n	a11, a3
	l32r	a2, .LC0
.LVL15:
	l32i.n	a10, a2, 0
	call8	list_append
.LVL16:
.L1:
	retw.n
.LFE26:
	.size	queue_int_add, .-queue_int_add
	.section	.text.queue_int_advance,"ax",@progbits
	.literal_position
	.literal .LC11, connect_queue
	.align	4
	.type	queue_int_advance, @function
queue_int_advance:
.LFB27:
	.loc 1 64 0
	entry	sp, 32
.LCFI1:
	.loc 1 65 0
	l32r	a8, .LC11
	l32i.n	a10, a8, 0
	beqz.n	a10, .L8
	.loc 1 65 0 is_stmt 0 discriminator 1
	call8	list_is_empty
.LVL17:
	bnez.n	a10, .L8
	.loc 1 66 0 is_stmt 1
	l32r	a2, .LC11
	l32i.n	a2, a2, 0
	mov.n	a10, a2
	call8	list_front
.LVL18:
	mov.n	a11, a10
	mov.n	a10, a2
	call8	list_remove
.LVL19:
.L8:
	retw.n
.LFE27:
	.size	queue_int_advance, .-queue_int_advance
	.section	.text.btc_queue_connect,"ax",@progbits
	.align	4
	.global	btc_queue_connect
	.type	btc_queue_connect, @function
btc_queue_connect:
.LFB29:
	.loc 1 99 0
.LVL20:
	entry	sp, 64
.LCFI2:
	extui	a2, a2, 0, 16
	.loc 1 103 0
	movi.n	a5, 0
	s8i	a5, sp, 0
	.loc 1 104 0
	movi.n	a8, 0xb
	s8i	a8, sp, 2
	.loc 1 105 0
	s8i	a5, sp, 3
	.loc 1 107 0
	movi.n	a5, 0
	s32i.n	a5, sp, 8
	s32i.n	a5, sp, 12
	s32i.n	a5, sp, 16
	s32i.n	a5, sp, 20
	.loc 1 108 0
	movi.n	a12, 6
	mov.n	a11, a3
	addi.n	a10, sp, 8
	call8	memcpy
.LVL21:
	.loc 1 109 0
	s16i	a2, sp, 14
	.loc 1 110 0
	s32i.n	a4, sp, 20
	.loc 1 112 0
	mov.n	a13, a5
	movi.n	a12, 0x10
	addi.n	a11, sp, 8
	mov.n	a10, sp
	call8	btc_transfer_context
.LVL22:
	.loc 1 113 0
	mov.n	a2, a10
.LVL23:
	retw.n
.LFE29:
	.size	btc_queue_connect, .-btc_queue_connect
	.section	.text.btc_queue_advance,"ax",@progbits
	.align	4
	.global	btc_queue_advance
	.type	btc_queue_advance, @function
btc_queue_advance:
.LFB30:
	.loc 1 125 0
	entry	sp, 48
.LCFI3:
	.loc 1 128 0
	movi.n	a8, 0
	s8i	a8, sp, 0
	.loc 1 129 0
	movi.n	a8, 0xb
	s8i	a8, sp, 2
	.loc 1 130 0
	movi.n	a8, 1
	s8i	a8, sp, 3
	.loc 1 132 0
	movi.n	a13, 0
	mov.n	a12, a13
	mov.n	a11, a13
	mov.n	a10, sp
	call8	btc_transfer_context
.LVL24:
	retw.n
.LFE30:
	.size	btc_queue_advance, .-btc_queue_advance
	.section	.text.btc_queue_connect_next,"ax",@progbits
	.literal_position
	.literal .LC12, connect_queue
	.align	4
	.global	btc_queue_connect_next
	.type	btc_queue_connect_next, @function
btc_queue_connect_next:
.LFB31:
	.loc 1 138 0
	entry	sp, 32
.LCFI4:
	.loc 1 139 0
	l32r	a8, .LC12
	l32i.n	a10, a8, 0
	beqz.n	a10, .L14
	.loc 1 139 0 is_stmt 0 discriminator 1
	call8	list_is_empty
.LVL25:
	bnez.n	a10, .L15
	.loc 1 143 0 is_stmt 1
	l32r	a2, .LC12
	l32i.n	a10, a2, 0
	call8	list_front
.LVL26:
	.loc 1 147 0
	l8ui	a2, a10, 8
	bnez.n	a2, .L16
	.loc 1 151 0
	movi.n	a2, 1
	s8i	a2, a10, 8
	.loc 1 152 0
	l32i.n	a2, a10, 12
	l16ui	a11, a10, 6
	callx8	a2
.LVL27:
	mov.n	a2, a10
	retw.n
.L14:
	.loc 1 140 0
	movi.n	a2, 1
	retw.n
.L15:
	movi.n	a2, 1
	retw.n
.LVL28:
.L16:
	.loc 1 148 0
	movi.n	a2, 0
	.loc 1 153 0
	retw.n
.LFE31:
	.size	btc_queue_connect_next, .-btc_queue_connect_next
	.section	.text.btc_profile_queue_handler,"ax",@progbits
	.align	4
	.global	btc_profile_queue_handler
	.type	btc_profile_queue_handler, @function
btc_profile_queue_handler:
.LFB28:
	.loc 1 71 0
.LVL29:
	entry	sp, 32
.LCFI5:
	.loc 1 72 0
	l32i.n	a10, a2, 4
.LVL30:
	.loc 1 73 0
	l8ui	a2, a2, 3
.LVL31:
	beqz.n	a2, .L19
	beqi	a2, 1, .L20
	j	.L18
.L19:
	.loc 1 75 0
	call8	queue_int_add
.LVL32:
	.loc 1 76 0
	j	.L18
.LVL33:
.L20:
	.loc 1 79 0
	call8	queue_int_advance
.LVL34:
.L18:
	.loc 1 83 0
	call8	esp_bluedroid_get_status
.LVL35:
	bnei	a10, 2, .L17
	.loc 1 84 0
	call8	btc_queue_connect_next
.LVL36:
.L17:
	retw.n
.LFE28:
	.size	btc_profile_queue_handler, .-btc_profile_queue_handler
	.section	.text.btc_queue_release,"ax",@progbits
	.literal_position
	.literal .LC13, connect_queue
	.align	4
	.global	btc_queue_release
	.type	btc_queue_release, @function
btc_queue_release:
.LFB32:
	.loc 1 166 0
	entry	sp, 32
.LCFI6:
	.loc 1 167 0
	l32r	a2, .LC13
	l32i.n	a10, a2, 0
	call8	list_free
.LVL37:
	.loc 1 168 0
	movi.n	a8, 0
	s32i.n	a8, a2, 0
	retw.n
.LFE32:
	.size	btc_queue_release, .-btc_queue_release
	.section	.rodata.__func__$5723,"a",@progbits
	.align	4
	.type	__func__$5723, @object
	.size	__func__$5723, 14
__func__$5723:
	.string	"queue_int_add"
	.section	.bss.connect_queue,"aw",@nobits
	.align	4
	.type	connect_queue, @object
	.size	connect_queue, 4
connect_queue:
	.zero	4
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
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI0-.LFB26
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI1-.LFB27
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI2-.LFB29
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI3-.LFB30
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI4-.LFB31
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI5-.LFB28
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI6-.LFB32
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/bt_types.h"
	.file 5 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/log/include/esp_log.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/api/include/api/esp_bt_main.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/common/include/common/bt_defs.h"
	.file 9 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/btc/include/btc/btc_task.h"
	.file 10 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/btc/include/btc/btc_profile_queue.h"
	.file 11 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/osi/include/osi/list.h"
	.file 12 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/assert.h"
	.file 13 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x817
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF107
	.byte	0xc
	.4byte	.LASF108
	.4byte	.LASF109
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF3
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
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x2
	.byte	0x16
	.4byte	0x50
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
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
	.byte	0x15
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x3
	.byte	0x21
	.4byte	0x45
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x4
	.byte	0x21
	.4byte	0x73
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF12
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x5
	.4byte	0x89
	.4byte	0xb2
	.uleb128 0x6
	.4byte	0x9b
	.byte	0x5
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x5
	.byte	0xd8
	.4byte	0x5e
	.uleb128 0x7
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF16
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF17
	.uleb128 0x8
	.byte	0x4
	.4byte	0x5e
	.byte	0x6
	.byte	0x1f
	.4byte	0x105
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x5
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x5e
	.byte	0x7
	.byte	0x1b
	.4byte	0x124
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF26
	.byte	0x2
	.byte	0
	.uleb128 0xa
	.byte	0x6
	.byte	0x8
	.byte	0x3b
	.4byte	0x139
	.uleb128 0xb
	.4byte	.LASF47
	.byte	0x8
	.byte	0x3c
	.4byte	0x139
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	0x73
	.4byte	0x149
	.uleb128 0x6
	.4byte	0x9b
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x8
	.byte	0x3d
	.4byte	0x124
	.uleb128 0x8
	.byte	0x4
	.4byte	0x5e
	.byte	0x8
	.byte	0x48
	.4byte	0x1cd
	.uleb128 0x9
	.4byte	.LASF28
	.byte	0
	.uleb128 0x9
	.4byte	.LASF29
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF30
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF31
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF32
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF33
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF34
	.byte	0x6
	.uleb128 0x9
	.4byte	.LASF35
	.byte	0x7
	.uleb128 0x9
	.4byte	.LASF36
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF37
	.byte	0x9
	.uleb128 0x9
	.4byte	.LASF38
	.byte	0xa
	.uleb128 0x9
	.4byte	.LASF39
	.byte	0xb
	.uleb128 0x9
	.4byte	.LASF40
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF41
	.byte	0xd
	.uleb128 0x9
	.4byte	.LASF42
	.byte	0xe
	.uleb128 0x9
	.4byte	.LASF43
	.byte	0xf
	.uleb128 0x9
	.4byte	.LASF44
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF45
	.byte	0x11
	.byte	0
	.uleb128 0x3
	.4byte	.LASF46
	.byte	0x8
	.byte	0x5b
	.4byte	0x154
	.uleb128 0xc
	.4byte	.LASF71
	.byte	0x8
	.byte	0x9
	.byte	0x17
	.4byte	0x221
	.uleb128 0xd
	.string	"sig"
	.byte	0x9
	.byte	0x18
	.4byte	0x73
	.byte	0
	.uleb128 0xd
	.string	"aid"
	.byte	0x9
	.byte	0x19
	.4byte	0x73
	.byte	0x1
	.uleb128 0xd
	.string	"pid"
	.byte	0x9
	.byte	0x1a
	.4byte	0x73
	.byte	0x2
	.uleb128 0xd
	.string	"act"
	.byte	0x9
	.byte	0x1b
	.4byte	0x73
	.byte	0x3
	.uleb128 0xd
	.string	"arg"
	.byte	0x9
	.byte	0x1c
	.4byte	0xc4
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF48
	.byte	0x9
	.byte	0x1d
	.4byte	0x1d8
	.uleb128 0x8
	.byte	0x4
	.4byte	0x5e
	.byte	0x9
	.byte	0x24
	.4byte	0x24b
	.uleb128 0x9
	.4byte	.LASF49
	.byte	0
	.uleb128 0x9
	.4byte	.LASF50
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF51
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x5e
	.byte	0x9
	.byte	0x2a
	.4byte	0x2b8
	.uleb128 0x9
	.4byte	.LASF52
	.byte	0
	.uleb128 0x9
	.4byte	.LASF53
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF54
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF55
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF56
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF57
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF58
	.byte	0x6
	.uleb128 0x9
	.4byte	.LASF59
	.byte	0x7
	.uleb128 0x9
	.4byte	.LASF60
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF61
	.byte	0x9
	.uleb128 0x9
	.4byte	.LASF62
	.byte	0xa
	.uleb128 0x9
	.4byte	.LASF63
	.byte	0xb
	.uleb128 0x9
	.4byte	.LASF64
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF65
	.byte	0xd
	.uleb128 0x9
	.4byte	.LASF66
	.byte	0xe
	.uleb128 0x9
	.4byte	.LASF67
	.byte	0xf
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x221
	.uleb128 0x8
	.byte	0x4
	.4byte	0x5e
	.byte	0xa
	.byte	0x1d
	.4byte	0x2d7
	.uleb128 0x9
	.4byte	.LASF68
	.byte	0
	.uleb128 0x9
	.4byte	.LASF69
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF70
	.byte	0xa
	.byte	0x22
	.4byte	0x2e2
	.uleb128 0xe
	.byte	0x4
	.4byte	0x2e8
	.uleb128 0xf
	.4byte	0x1cd
	.4byte	0x2fc
	.uleb128 0x10
	.4byte	0x2fc
	.uleb128 0x10
	.4byte	0x7e
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x149
	.uleb128 0xc
	.4byte	.LASF72
	.byte	0x10
	.byte	0xa
	.byte	0x24
	.4byte	0x33f
	.uleb128 0xd
	.string	"bda"
	.byte	0xa
	.byte	0x25
	.4byte	0x149
	.byte	0
	.uleb128 0xb
	.4byte	.LASF73
	.byte	0xa
	.byte	0x26
	.4byte	0x7e
	.byte	0x6
	.uleb128 0xb
	.4byte	.LASF74
	.byte	0xa
	.byte	0x27
	.4byte	0x94
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF75
	.byte	0xa
	.byte	0x28
	.4byte	0x2d7
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.4byte	.LASF72
	.byte	0xa
	.byte	0x29
	.4byte	0x302
	.uleb128 0x11
	.byte	0x10
	.byte	0xa
	.byte	0x2c
	.4byte	0x35e
	.uleb128 0x12
	.4byte	.LASF110
	.byte	0xa
	.byte	0x2e
	.4byte	0x33f
	.byte	0
	.uleb128 0x3
	.4byte	.LASF76
	.byte	0xa
	.byte	0x2f
	.4byte	0x34a
	.uleb128 0x3
	.4byte	.LASF77
	.byte	0xb
	.byte	0x7
	.4byte	0x374
	.uleb128 0x13
	.4byte	.LASF77
	.uleb128 0x3
	.4byte	.LASF78
	.byte	0xb
	.byte	0xa
	.4byte	0x384
	.uleb128 0x13
	.4byte	.LASF78
	.uleb128 0x14
	.4byte	.LASF111
	.byte	0x1
	.byte	0x28
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4fe
	.uleb128 0x15
	.4byte	.LASF81
	.byte	0x1
	.byte	0x28
	.4byte	0x4fe
	.4byte	.LLST0
	.uleb128 0x16
	.4byte	.LASF112
	.4byte	0x514
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5723
	.uleb128 0x17
	.4byte	.LASF79
	.byte	0x1
	.byte	0x39
	.4byte	0x4fe
	.4byte	.LLST1
	.uleb128 0x18
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.4byte	0x422
	.uleb128 0x17
	.4byte	.LASF80
	.byte	0x1
	.byte	0x32
	.4byte	0x519
	.4byte	.LLST2
	.uleb128 0x19
	.4byte	.LVL5
	.4byte	0x76c
	.uleb128 0x1a
	.4byte	.LVL7
	.4byte	0x777
	.4byte	0x404
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL8
	.4byte	0x782
	.4byte	0x418
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL10
	.4byte	0x78d
	.byte	0
	.uleb128 0x19
	.4byte	.LVL1
	.4byte	0x798
	.uleb128 0x1a
	.4byte	.LVL2
	.4byte	0x7a3
	.4byte	0x45a
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x2c
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5723
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x19
	.4byte	.LVL3
	.4byte	0x7ae
	.uleb128 0x1a
	.4byte	.LVL4
	.4byte	0x7a3
	.4byte	0x492
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x30
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5723
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL11
	.4byte	0x7b9
	.4byte	0x4a5
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL13
	.4byte	0x7a3
	.4byte	0x4d4
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x3a
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5723
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL14
	.4byte	0x7c4
	.4byte	0x4ed
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL16
	.4byte	0x7cd
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x33f
	.uleb128 0x5
	.4byte	0xb2
	.4byte	0x514
	.uleb128 0x6
	.4byte	0x9b
	.byte	0xd
	.byte	0
	.uleb128 0x1d
	.4byte	0x504
	.uleb128 0xe
	.byte	0x4
	.4byte	0x51f
	.uleb128 0x1d
	.4byte	0x369
	.uleb128 0x1e
	.4byte	.LASF113
	.byte	0x1
	.byte	0x3f
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x567
	.uleb128 0x19
	.4byte	.LVL17
	.4byte	0x7d8
	.uleb128 0x1a
	.4byte	.LVL18
	.4byte	0x7e3
	.4byte	0x556
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL19
	.4byte	0x7ee
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF82
	.byte	0x1
	.byte	0x62
	.4byte	0x1cd
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x606
	.uleb128 0x15
	.4byte	.LASF73
	.byte	0x1
	.byte	0x62
	.4byte	0x7e
	.4byte	.LLST3
	.uleb128 0x20
	.string	"bda"
	.byte	0x1
	.byte	0x62
	.4byte	0x606
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x21
	.4byte	.LASF75
	.byte	0x1
	.byte	0x62
	.4byte	0x2d7
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x22
	.string	"msg"
	.byte	0x1
	.byte	0x64
	.4byte	0x221
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x22
	.string	"arg"
	.byte	0x1
	.byte	0x65
	.4byte	0x35e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1a
	.4byte	.LVL21
	.4byte	0x7c4
	.4byte	0x5e4
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL22
	.4byte	0x7f9
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x40
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x60c
	.uleb128 0x1d
	.4byte	0x149
	.uleb128 0x23
	.4byte	.LASF85
	.byte	0x1
	.byte	0x7c
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x654
	.uleb128 0x22
	.string	"msg"
	.byte	0x1
	.byte	0x7e
	.4byte	0x221
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1c
	.4byte	.LVL24
	.4byte	0x7f9
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF83
	.byte	0x1
	.byte	0x89
	.4byte	0x1cd
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x697
	.uleb128 0x17
	.4byte	.LASF84
	.byte	0x1
	.byte	0x8f
	.4byte	0x4fe
	.4byte	.LLST4
	.uleb128 0x19
	.4byte	.LVL25
	.4byte	0x7d8
	.uleb128 0x19
	.4byte	.LVL26
	.4byte	0x7e3
	.uleb128 0x24
	.4byte	.LVL27
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.4byte	.LASF86
	.byte	0x1
	.byte	0x46
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6ef
	.uleb128 0x25
	.string	"msg"
	.byte	0x1
	.byte	0x46
	.4byte	0x2b8
	.4byte	.LLST5
	.uleb128 0x26
	.string	"arg"
	.byte	0x1
	.byte	0x48
	.4byte	0x6ef
	.4byte	.LLST6
	.uleb128 0x19
	.4byte	.LVL32
	.4byte	0x389
	.uleb128 0x19
	.4byte	.LVL34
	.4byte	0x524
	.uleb128 0x19
	.4byte	.LVL35
	.4byte	0x804
	.uleb128 0x19
	.4byte	.LVL36
	.4byte	0x654
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x35e
	.uleb128 0x23
	.4byte	.LASF87
	.byte	0x1
	.byte	0xa5
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x714
	.uleb128 0x19
	.4byte	.LVL37
	.4byte	0x80f
	.byte	0
	.uleb128 0x27
	.4byte	.LASF88
	.byte	0x4
	.2byte	0x2cc
	.4byte	0x727
	.byte	0x6
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.uleb128 0x1d
	.4byte	0xa2
	.uleb128 0x27
	.4byte	.LASF89
	.byte	0x4
	.2byte	0x2cd
	.4byte	0x73f
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	0xa2
	.uleb128 0x28
	.4byte	.LASF90
	.byte	0x1
	.byte	0x20
	.4byte	0x755
	.uleb128 0x5
	.byte	0x3
	.4byte	connect_queue
	.uleb128 0xe
	.byte	0x4
	.4byte	0x379
	.uleb128 0x29
	.4byte	.LASF91
	.byte	0x1
	.byte	0x22
	.4byte	0x767
	.byte	0xa
	.uleb128 0x1d
	.4byte	0xb9
	.uleb128 0x2a
	.4byte	.LASF92
	.4byte	.LASF92
	.byte	0xb
	.byte	0x5c
	.uleb128 0x2a
	.4byte	.LASF93
	.4byte	.LASF93
	.byte	0xb
	.byte	0x6c
	.uleb128 0x2a
	.4byte	.LASF94
	.4byte	.LASF94
	.byte	0xb
	.byte	0x68
	.uleb128 0x2a
	.4byte	.LASF95
	.4byte	.LASF95
	.byte	0xb
	.byte	0x62
	.uleb128 0x2a
	.4byte	.LASF96
	.4byte	.LASF96
	.byte	0xb
	.byte	0x15
	.uleb128 0x2a
	.4byte	.LASF97
	.4byte	.LASF97
	.byte	0xc
	.byte	0x29
	.uleb128 0x2a
	.4byte	.LASF98
	.4byte	.LASF98
	.byte	0xb
	.byte	0x26
	.uleb128 0x2a
	.4byte	.LASF99
	.4byte	.LASF99
	.byte	0xd
	.byte	0x65
	.uleb128 0x2b
	.4byte	.LASF114
	.4byte	.LASF114
	.uleb128 0x2a
	.4byte	.LASF100
	.4byte	.LASF100
	.byte	0xb
	.byte	0x42
	.uleb128 0x2a
	.4byte	.LASF101
	.4byte	.LASF101
	.byte	0xb
	.byte	0x1f
	.uleb128 0x2a
	.4byte	.LASF102
	.4byte	.LASF102
	.byte	0xb
	.byte	0x2a
	.uleb128 0x2a
	.4byte	.LASF103
	.4byte	.LASF103
	.byte	0xb
	.byte	0x4c
	.uleb128 0x2a
	.4byte	.LASF104
	.4byte	.LASF104
	.byte	0x9
	.byte	0x4c
	.uleb128 0x2a
	.4byte	.LASF105
	.4byte	.LASF105
	.byte	0x7
	.byte	0x27
	.uleb128 0x2a
	.4byte	.LASF106
	.4byte	.LASF106
	.byte	0xb
	.byte	0x1b
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x19
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
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
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL15
	.4byte	.LFE26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL12
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL6
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL20
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL23
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL26
	.4byte	.LVL27-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL28
	.4byte	.LFE31
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL29
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL31
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL30
	.4byte	.LVL32-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL33
	.4byte	.LVL34-1
	.2byte	0x1
	.byte	0x5a
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
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF89:
	.string	"bd_addr_null"
.LASF33:
	.string	"BT_STATUS_DONE"
.LASF75:
	.string	"connect_cb"
.LASF39:
	.string	"BT_STATUS_AUTH_REJECTED"
.LASF38:
	.string	"BT_STATUS_RMT_DEV_DOWN"
.LASF98:
	.string	"list_length"
.LASF41:
	.string	"BT_STATUS_PENDING"
.LASF2:
	.string	"short int"
.LASF15:
	.string	"size_t"
.LASF78:
	.string	"list_t"
.LASF106:
	.string	"list_free"
.LASF13:
	.string	"sizetype"
.LASF45:
	.string	"BT_STATUS_MEMORY_FULL"
.LASF91:
	.string	"MAX_REASONABLE_REQUESTS"
.LASF100:
	.string	"list_append"
.LASF114:
	.string	"memcpy"
.LASF90:
	.string	"connect_queue"
.LASF4:
	.string	"__uint16_t"
.LASF72:
	.string	"connect_node_t"
.LASF62:
	.string	"BTC_PID_GAP_BT"
.LASF96:
	.string	"list_new"
.LASF35:
	.string	"BT_STATUS_PARM_INVALID"
.LASF43:
	.string	"BT_STATUS_PARAM_OUT_OF_RANGE"
.LASF71:
	.string	"btc_msg"
.LASF9:
	.string	"uint8_t"
.LASF83:
	.string	"btc_queue_connect_next"
.LASF49:
	.string	"BTC_SIG_API_CALL"
.LASF93:
	.string	"list_node"
.LASF65:
	.string	"BTC_PID_AVRC"
.LASF109:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\bt"
.LASF53:
	.string	"BTC_PID_DEV"
.LASF58:
	.string	"BTC_PID_SPPLIKE"
.LASF92:
	.string	"list_begin"
.LASF110:
	.string	"connect_node"
.LASF63:
	.string	"BTC_PID_PRF_QUE"
.LASF36:
	.string	"BT_STATUS_UNHANDLED"
.LASF54:
	.string	"BTC_PID_GATTS"
.LASF82:
	.string	"btc_queue_connect"
.LASF42:
	.string	"BT_STATUS_UNACCEPT_CONN_INTERVAL"
.LASF7:
	.string	"long long int"
.LASF8:
	.string	"long long unsigned int"
.LASF95:
	.string	"list_end"
.LASF99:
	.string	"malloc"
.LASF16:
	.string	"long int"
.LASF103:
	.string	"list_remove"
.LASF73:
	.string	"uuid"
.LASF11:
	.string	"UINT8"
.LASF3:
	.string	"__uint8_t"
.LASF37:
	.string	"BT_STATUS_AUTH_FAILURE"
.LASF84:
	.string	"p_head"
.LASF80:
	.string	"node"
.LASF34:
	.string	"BT_STATUS_UNSUPPORTED"
.LASF105:
	.string	"esp_bluedroid_get_status"
.LASF30:
	.string	"BT_STATUS_NOT_READY"
.LASF1:
	.string	"unsigned char"
.LASF113:
	.string	"queue_int_advance"
.LASF112:
	.string	"__func__"
.LASF46:
	.string	"bt_status_t"
.LASF52:
	.string	"BTC_PID_MAIN_INIT"
.LASF104:
	.string	"btc_transfer_context"
.LASF66:
	.string	"BTC_PID_SPP"
.LASF85:
	.string	"btc_queue_advance"
.LASF59:
	.string	"BTC_PID_BLUFI"
.LASF0:
	.string	"signed char"
.LASF47:
	.string	"address"
.LASF87:
	.string	"btc_queue_release"
.LASF86:
	.string	"btc_profile_queue_handler"
.LASF6:
	.string	"unsigned int"
.LASF108:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/btc/core/btc_profile_queue.c"
.LASF27:
	.string	"bt_bdaddr_t"
.LASF23:
	.string	"ESP_LOG_VERBOSE"
.LASF51:
	.string	"BTC_SIG_NUM"
.LASF5:
	.string	"short unsigned int"
.LASF50:
	.string	"BTC_SIG_API_CB"
.LASF24:
	.string	"ESP_BLUEDROID_STATUS_UNINITIALIZED"
.LASF79:
	.string	"p_node"
.LASF14:
	.string	"char"
.LASF10:
	.string	"uint16_t"
.LASF22:
	.string	"ESP_LOG_DEBUG"
.LASF18:
	.string	"ESP_LOG_NONE"
.LASF69:
	.string	"BTC_PRF_QUE_ADVANCE"
.LASF25:
	.string	"ESP_BLUEDROID_STATUS_INITIALIZED"
.LASF111:
	.string	"queue_int_add"
.LASF81:
	.string	"p_param"
.LASF12:
	.string	"_Bool"
.LASF61:
	.string	"BTC_PID_ALARM"
.LASF74:
	.string	"busy"
.LASF20:
	.string	"ESP_LOG_WARN"
.LASF57:
	.string	"BTC_PID_BLE_HID"
.LASF64:
	.string	"BTC_PID_A2DP"
.LASF17:
	.string	"long unsigned int"
.LASF102:
	.string	"list_front"
.LASF40:
	.string	"BT_STATUS_INVALID_STATIC_RAND_ADDR"
.LASF94:
	.string	"list_next"
.LASF70:
	.string	"btc_connect_cb_t"
.LASF31:
	.string	"BT_STATUS_NOMEM"
.LASF68:
	.string	"BTC_PRF_QUE_CONNECT"
.LASF29:
	.string	"BT_STATUS_FAIL"
.LASF28:
	.string	"BT_STATUS_SUCCESS"
.LASF32:
	.string	"BT_STATUS_BUSY"
.LASF77:
	.string	"list_node_t"
.LASF56:
	.string	"BTC_PID_GAP_BLE"
.LASF88:
	.string	"bd_addr_any"
.LASF44:
	.string	"BT_STATUS_TIMEOUT"
.LASF76:
	.string	"btc_prf_que_args_t"
.LASF67:
	.string	"BTC_PID_NUM"
.LASF55:
	.string	"BTC_PID_GATT_COMMON"
.LASF97:
	.string	"__assert_func"
.LASF60:
	.string	"BTC_PID_DM_SEC"
.LASF26:
	.string	"ESP_BLUEDROID_STATUS_ENABLED"
.LASF107:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF101:
	.string	"list_is_empty"
.LASF19:
	.string	"ESP_LOG_ERROR"
.LASF21:
	.string	"ESP_LOG_INFO"
.LASF48:
	.string	"btc_msg_t"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
