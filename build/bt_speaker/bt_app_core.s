	.file	"bt_app_core.c"
	.text
.Ltext0:
	.section	.text.bt_app_work_dispatched,"ax",@progbits
	.align	4
	.type	bt_app_work_dispatched, @function
bt_app_work_dispatched:
.LFB17:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/ESP32_PIC_A2DP/components/bt_speaker/bt_app_core.c"
	.loc 1 68 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 69 0
	l32i.n	a8, a2, 4
	beqz.n	a8, .L1
	.loc 1 70 0
	l32i.n	a11, a2, 8
	l16ui	a10, a2, 2
	callx8	a8
.LVL1:
.L1:
	retw.n
.LFE17:
	.size	bt_app_work_dispatched, .-bt_app_work_dispatched
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC2:
	.string	"BT_APP_CORE"
	.align	4
.LC4:
	.string	"\033[0;31mE (%d) %s: %s xQueue send failed\033[0m\n"
	.section	.text.bt_app_send_msg,"ax",@progbits
	.literal_position
	.literal .LC0, bt_app_task_queue
	.literal .LC1, __func__$5369
	.literal .LC3, .LC2
	.literal .LC5, .LC4
	.align	4
	.type	bt_app_send_msg, @function
bt_app_send_msg:
.LFB16:
	.loc 1 55 0
.LVL2:
	entry	sp, 32
.LCFI1:
	.loc 1 56 0
	beqz.n	a2, .L5
	.loc 1 60 0
	movi.n	a13, 0
	movi.n	a12, 1
	mov.n	a11, a2
	l32r	a2, .LC0
.LVL3:
	l32i.n	a10, a2, 0
	call8	xQueueGenericSend
.LVL4:
	beqi	a10, 1, .L6
	.loc 1 61 0 discriminator 2
	call8	esp_log_timestamp
.LVL5:
	l32r	a11, .LC3
	l32r	a15, .LC1
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC5
	movi.n	a10, 1
	call8	esp_log_write
.LVL6:
	.loc 1 62 0 discriminator 2
	movi.n	a2, 0
	retw.n
.LVL7:
.L5:
	.loc 1 57 0
	movi.n	a2, 0
.LVL8:
	retw.n
.L6:
	.loc 1 64 0
	movi.n	a2, 1
	.loc 1 65 0
	retw.n
.LFE16:
	.size	bt_app_send_msg, .-bt_app_send_msg
	.section	.rodata.str1.4
	.align	4
.LC9:
	.string	"\033[0;33mW (%d) %s: %s, unhandled sig: %d\033[0m\n"
	.section	.text.bt_app_task_handler,"ax",@progbits
	.literal_position
	.literal .LC6, bt_app_task_queue
	.literal .LC7, __func__$5377
	.literal .LC8, .LC2
	.literal .LC10, .LC9
	.align	4
	.type	bt_app_task_handler, @function
bt_app_task_handler:
.LFB18:
	.loc 1 75 0
.LVL9:
	entry	sp, 64
.LCFI2:
.L8:
	.loc 1 78 0
	movi.n	a13, 0
	movi.n	a12, -1
	addi	a11, sp, 16
	l32r	a8, .LC6
	l32i.n	a10, a8, 0
	call8	xQueueGenericReceive
.LVL10:
	bnei	a10, 1, .L8
	.loc 1 80 0
	l16ui	a8, sp, 16
	bnei	a8, 1, .L14
	.loc 1 82 0
	addi	a10, sp, 16
	call8	bt_app_work_dispatched
.LVL11:
	.loc 1 83 0
	j	.L11
.L14:
	.loc 1 85 0 discriminator 4
	call8	esp_log_timestamp
.LVL12:
	l16ui	a8, sp, 16
	l32r	a11, .LC8
	s32i.n	a8, sp, 0
	l32r	a15, .LC7
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC10
	movi.n	a10, 2
	call8	esp_log_write
.LVL13:
.L11:
	.loc 1 89 0
	l32i.n	a10, sp, 24
	beqz.n	a10, .L8
	.loc 1 90 0
	call8	free
.LVL14:
	j	.L8
.LFE18:
	.size	bt_app_task_handler, .-bt_app_task_handler
	.section	.text.bt_app_work_dispatch,"ax",@progbits
	.align	4
	.global	bt_app_work_dispatch
	.type	bt_app_work_dispatch, @function
bt_app_work_dispatch:
.LFB15:
	.loc 1 28 0
.LVL15:
	entry	sp, 48
.LCFI3:
	.loc 1 32 0
	movi.n	a8, 0
	s32i.n	a8, sp, 8
	.loc 1 34 0
	movi.n	a8, 1
	s16i	a8, sp, 0
	.loc 1 35 0
	s16i	a3, sp, 2
	.loc 1 36 0
	s32i.n	a2, sp, 4
	.loc 1 38 0
	bnez.n	a5, .L16
	.loc 1 39 0
	mov.n	a10, sp
	call8	bt_app_send_msg
.LVL16:
	mov.n	a2, a10
.LVL17:
	retw.n
.LVL18:
.L16:
	.loc 1 40 0
	movi.n	a10, 0
	movi.n	a2, 1
.LVL19:
	movnez	a10, a2, a4
	srai	a2, a5, 31
	sub	a2, a2, a5
	extui	a2, a2, 31, 1
	and	a2, a10, a2
	beqz.n	a2, .L17
	.loc 1 41 0
	mov.n	a10, a5
	call8	malloc
.LVL20:
	s32i.n	a10, sp, 8
	beqz.n	a10, .L19
	.loc 1 42 0
	mov.n	a12, a5
	mov.n	a11, a4
	call8	memcpy
.LVL21:
	.loc 1 44 0
	beqz.n	a6, .L18
	.loc 1 45 0
	mov.n	a12, a4
	l32i.n	a11, sp, 8
	mov.n	a10, sp
	callx8	a6
.LVL22:
.L18:
	.loc 1 47 0
	mov.n	a10, sp
	call8	bt_app_send_msg
.LVL23:
	mov.n	a2, a10
	retw.n
.L19:
	.loc 1 51 0
	movi.n	a2, 0
.L17:
	.loc 1 52 0
	retw.n
.LFE15:
	.size	bt_app_work_dispatch, .-bt_app_work_dispatch
	.section	.rodata.str1.4
	.align	4
.LC14:
	.string	"BtAppT"
	.section	.text.bt_app_task_start_up,"ax",@progbits
	.literal_position
	.literal .LC11, bt_app_task_queue
	.literal .LC12, bt_app_task_handle
	.literal .LC13, 2048
	.literal .LC15, .LC14
	.literal .LC16, bt_app_task_handler
	.literal .LC17, 2147483647
	.align	4
	.global	bt_app_task_start_up
	.type	bt_app_task_start_up, @function
bt_app_task_start_up:
.LFB19:
	.loc 1 97 0
	entry	sp, 48
.LCFI4:
	.loc 1 98 0
	movi.n	a12, 0
	movi.n	a11, 0xc
	movi.n	a10, 0xa
	call8	xQueueGenericCreate
.LVL24:
	l32r	a8, .LC11
	s32i.n	a10, a8, 0
.LVL25:
.LBB4:
.LBB5:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/task.h"
	.loc 2 438 0
	l32r	a8, .LC17
	s32i.n	a8, sp, 0
	l32r	a15, .LC12
	movi.n	a14, 0x16
	movi.n	a13, 0
	l32r	a12, .LC13
	l32r	a11, .LC15
	l32r	a10, .LC16
	call8	xTaskCreatePinnedToCore
.LVL26:
	retw.n
.LBE5:
.LBE4:
.LFE19:
	.size	bt_app_task_start_up, .-bt_app_task_start_up
	.section	.text.bt_app_task_shut_down,"ax",@progbits
	.literal_position
	.literal .LC18, bt_app_task_handle
	.literal .LC19, bt_app_task_queue
	.align	4
	.global	bt_app_task_shut_down
	.type	bt_app_task_shut_down, @function
bt_app_task_shut_down:
.LFB20:
	.loc 1 104 0
	entry	sp, 32
.LCFI5:
	.loc 1 105 0
	l32r	a8, .LC18
	l32i.n	a10, a8, 0
	beqz.n	a10, .L22
	.loc 1 106 0
	call8	vTaskDelete
.LVL27:
	.loc 1 107 0
	movi.n	a9, 0
	l32r	a8, .LC18
	s32i.n	a9, a8, 0
.L22:
	.loc 1 109 0
	l32r	a8, .LC19
	l32i.n	a10, a8, 0
	beqz.n	a10, .L21
	.loc 1 110 0
	call8	vQueueDelete
.LVL28:
	.loc 1 111 0
	movi.n	a9, 0
	l32r	a8, .LC19
	s32i.n	a9, a8, 0
.L21:
	retw.n
.LFE20:
	.size	bt_app_task_shut_down, .-bt_app_task_shut_down
	.section	.rodata.__func__$5377,"a",@progbits
	.align	4
	.type	__func__$5377, @object
	.size	__func__$5377, 20
__func__$5377:
	.string	"bt_app_task_handler"
	.section	.rodata.__func__$5369,"a",@progbits
	.align	4
	.type	__func__$5369, @object
	.size	__func__$5369, 16
__func__$5369:
	.string	"bt_app_send_msg"
	.section	.bss.bt_app_task_handle,"aw",@nobits
	.align	4
	.type	bt_app_task_handle, @object
	.size	bt_app_task_handle, 4
bt_app_task_handle:
	.zero	4
	.section	.bss.bt_app_task_queue,"aw",@nobits
	.align	4
	.type	bt_app_task_queue, @object
	.size	bt_app_task_queue, 4
bt_app_task_queue:
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
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI0-.LFB17
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI1-.LFB16
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
	.uleb128 0x40
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI3-.LFB15
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI4-.LFB19
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI5-.LFB20
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
	.text
.Letext0:
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/projdefs.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/portmacro.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/queue.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/ESP32_PIC_A2DP/components/bt_speaker/bt_app_core.h"
	.file 9 "D:/ESP32/esp-idf-v3.1-rc1/components/log/include/esp_log.h"
	.file 10 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x662
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF62
	.byte	0xc
	.4byte	.LASF63
	.4byte	.LASF64
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x3
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
	.byte	0x3
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
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x3
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
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x4
	.byte	0x15
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x4
	.byte	0x21
	.4byte	0x45
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x4
	.byte	0x2d
	.4byte	0x5e
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF13
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF16
	.uleb128 0x6
	.byte	0x4
	.4byte	0xc3
	.uleb128 0x7
	.4byte	0xb6
	.uleb128 0x6
	.byte	0x4
	.4byte	0xce
	.uleb128 0x8
	.4byte	0xd9
	.uleb128 0x9
	.4byte	0xad
	.byte	0
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x5
	.byte	0x4d
	.4byte	0xc8
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF18
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x6
	.byte	0x6f
	.4byte	0x57
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x6
	.byte	0x70
	.4byte	0x69
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x6
	.byte	0x76
	.4byte	0x94
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x7
	.byte	0x58
	.4byte	0xad
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x2
	.byte	0x6b
	.4byte	0xad
	.uleb128 0x7
	.4byte	0xbd
	.uleb128 0xa
	.byte	0x4
	.4byte	0x69
	.byte	0x9
	.byte	0x1f
	.4byte	0x158
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0x2
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0x3
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF29
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.4byte	.LASF30
	.byte	0x8
	.byte	0x17
	.4byte	0x163
	.uleb128 0x6
	.byte	0x4
	.4byte	0x169
	.uleb128 0x8
	.4byte	0x179
	.uleb128 0x9
	.4byte	0x89
	.uleb128 0x9
	.4byte	0xad
	.byte	0
	.uleb128 0xc
	.byte	0xc
	.byte	0x8
	.byte	0x1a
	.4byte	0x1b1
	.uleb128 0xd
	.string	"sig"
	.byte	0x8
	.byte	0x1b
	.4byte	0x89
	.byte	0
	.uleb128 0xe
	.4byte	.LASF31
	.byte	0x8
	.byte	0x1c
	.4byte	0x89
	.byte	0x2
	.uleb128 0xd
	.string	"cb"
	.byte	0x8
	.byte	0x1d
	.4byte	0x158
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF32
	.byte	0x8
	.byte	0x1e
	.4byte	0xad
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF33
	.byte	0x8
	.byte	0x1f
	.4byte	0x179
	.uleb128 0x3
	.4byte	.LASF34
	.byte	0x8
	.byte	0x24
	.4byte	0x1c7
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1cd
	.uleb128 0x8
	.4byte	0x1e2
	.uleb128 0x9
	.4byte	0x1e2
	.uleb128 0x9
	.4byte	0xad
	.uleb128 0x9
	.4byte	0xad
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1b1
	.uleb128 0xf
	.4byte	.LASF65
	.byte	0x2
	.2byte	0x1ae
	.4byte	0xeb
	.byte	0x3
	.4byte	0x242
	.uleb128 0x10
	.4byte	.LASF35
	.byte	0x2
	.2byte	0x1af
	.4byte	0xd9
	.uleb128 0x10
	.4byte	.LASF36
	.byte	0x2
	.2byte	0x1b0
	.4byte	0x122
	.uleb128 0x10
	.4byte	.LASF37
	.byte	0x2
	.2byte	0x1b1
	.4byte	0x242
	.uleb128 0x10
	.4byte	.LASF38
	.byte	0x2
	.2byte	0x1b2
	.4byte	0x247
	.uleb128 0x10
	.4byte	.LASF39
	.byte	0x2
	.2byte	0x1b3
	.4byte	0xf6
	.uleb128 0x10
	.4byte	.LASF40
	.byte	0x2
	.2byte	0x1b4
	.4byte	0x252
	.byte	0
	.uleb128 0x7
	.4byte	0x94
	.uleb128 0x7
	.4byte	0xad
	.uleb128 0x6
	.byte	0x4
	.4byte	0x117
	.uleb128 0x7
	.4byte	0x24c
	.uleb128 0x11
	.4byte	.LASF66
	.byte	0x1
	.byte	0x43
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x27a
	.uleb128 0x12
	.string	"msg"
	.byte	0x1
	.byte	0x43
	.4byte	0x1e2
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x13
	.4byte	.LASF41
	.byte	0x1
	.byte	0x36
	.4byte	0xe4
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x30d
	.uleb128 0x14
	.string	"msg"
	.byte	0x1
	.byte	0x36
	.4byte	0x1e2
	.4byte	.LLST0
	.uleb128 0x15
	.4byte	.LASF43
	.4byte	0x31d
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5369
	.uleb128 0x16
	.4byte	.LVL4
	.4byte	0x5e8
	.4byte	0x2d0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x18
	.4byte	.LVL5
	.4byte	0x5f4
	.uleb128 0x19
	.4byte	.LVL6
	.4byte	0x5ff
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
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
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5369
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	0xb6
	.4byte	0x31d
	.uleb128 0x1b
	.4byte	0xa6
	.byte	0xf
	.byte	0
	.uleb128 0x7
	.4byte	0x30d
	.uleb128 0x1c
	.4byte	.LASF42
	.byte	0x1
	.byte	0x4a
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3de
	.uleb128 0x12
	.string	"arg"
	.byte	0x1
	.byte	0x4a
	.4byte	0xad
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1d
	.string	"msg"
	.byte	0x1
	.byte	0x4c
	.4byte	0x1b1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x15
	.4byte	.LASF43
	.4byte	0x3ee
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5377
	.uleb128 0x16
	.4byte	.LVL10
	.4byte	0x60a
	.4byte	0x380
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x16
	.4byte	.LVL11
	.4byte	0x257
	.4byte	0x394
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x18
	.4byte	.LVL12
	.4byte	0x5f4
	.uleb128 0x16
	.4byte	.LVL13
	.4byte	0x5ff
	.4byte	0x3d4
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
	.4byte	.LC9
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5377
	.byte	0
	.uleb128 0x18
	.4byte	.LVL14
	.4byte	0x616
	.byte	0
	.uleb128 0x1a
	.4byte	0xb6
	.4byte	0x3ee
	.uleb128 0x1b
	.4byte	0xa6
	.byte	0x13
	.byte	0
	.uleb128 0x7
	.4byte	0x3de
	.uleb128 0x1e
	.4byte	.LASF67
	.byte	0x1
	.byte	0x1b
	.4byte	0xe4
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4cf
	.uleb128 0x1f
	.4byte	.LASF44
	.byte	0x1
	.byte	0x1b
	.4byte	0x158
	.4byte	.LLST1
	.uleb128 0x20
	.4byte	.LASF31
	.byte	0x1
	.byte	0x1b
	.4byte	0x89
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x20
	.4byte	.LASF45
	.byte	0x1
	.byte	0x1b
	.4byte	0xad
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x20
	.4byte	.LASF46
	.byte	0x1
	.byte	0x1b
	.4byte	0x57
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x20
	.4byte	.LASF47
	.byte	0x1
	.byte	0x1b
	.4byte	0x1bc
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x21
	.4byte	.LASF43
	.4byte	0x4df
	.uleb128 0x1d
	.string	"msg"
	.byte	0x1
	.byte	0x1f
	.4byte	0x1b1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x16
	.4byte	.LVL16
	.4byte	0x27a
	.4byte	0x47a
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x16
	.4byte	.LVL20
	.4byte	0x621
	.4byte	0x48e
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL21
	.4byte	0x62c
	.4byte	0x4a8
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL22
	.4byte	0x4be
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL23
	.4byte	0x27a
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	0xb6
	.4byte	0x4df
	.uleb128 0x1b
	.4byte	0xa6
	.byte	0x14
	.byte	0
	.uleb128 0x7
	.4byte	0x4cf
	.uleb128 0x23
	.4byte	.LASF48
	.byte	0x1
	.byte	0x60
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x59e
	.uleb128 0x24
	.4byte	0x1e8
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.byte	0x1
	.byte	0x63
	.4byte	0x584
	.uleb128 0x25
	.4byte	0x235
	.uleb128 0x6
	.byte	0x3
	.4byte	bt_app_task_handle
	.byte	0x9f
	.uleb128 0x26
	.4byte	0x229
	.byte	0x16
	.uleb128 0x26
	.4byte	0x21d
	.byte	0
	.uleb128 0x27
	.4byte	0x211
	.2byte	0x800
	.uleb128 0x25
	.4byte	0x205
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC14
	.byte	0x9f
	.uleb128 0x25
	.4byte	0x1f9
	.uleb128 0x6
	.byte	0x3
	.4byte	bt_app_task_handler
	.byte	0x9f
	.uleb128 0x19
	.4byte	.LVL26
	.4byte	0x635
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	bt_app_task_handler
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x800
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x46
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	bt_app_task_handle
	.uleb128 0x17
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x5
	.byte	0xc
	.4byte	0x7fffffff
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL24
	.4byte	0x641
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x3a
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x3c
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LASF49
	.byte	0x1
	.byte	0x67
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5c6
	.uleb128 0x18
	.4byte	.LVL27
	.4byte	0x64d
	.uleb128 0x18
	.4byte	.LVL28
	.4byte	0x659
	.byte	0
	.uleb128 0x28
	.4byte	.LASF50
	.byte	0x1
	.byte	0x18
	.4byte	0x10c
	.uleb128 0x5
	.byte	0x3
	.4byte	bt_app_task_queue
	.uleb128 0x28
	.4byte	.LASF51
	.byte	0x1
	.byte	0x19
	.4byte	0x117
	.uleb128 0x5
	.byte	0x3
	.4byte	bt_app_task_handle
	.uleb128 0x29
	.4byte	.LASF52
	.4byte	.LASF52
	.byte	0x7
	.2byte	0x265
	.uleb128 0x2a
	.4byte	.LASF53
	.4byte	.LASF53
	.byte	0x9
	.byte	0x57
	.uleb128 0x2a
	.4byte	.LASF54
	.4byte	.LASF54
	.byte	0x9
	.byte	0x6b
	.uleb128 0x29
	.4byte	.LASF55
	.4byte	.LASF55
	.byte	0x7
	.2byte	0x38a
	.uleb128 0x2a
	.4byte	.LASF56
	.4byte	.LASF56
	.byte	0xa
	.byte	0x5a
	.uleb128 0x2a
	.4byte	.LASF57
	.4byte	.LASF57
	.byte	0xa
	.byte	0x65
	.uleb128 0x2b
	.4byte	.LASF68
	.4byte	.LASF68
	.uleb128 0x29
	.4byte	.LASF58
	.4byte	.LASF58
	.byte	0x2
	.2byte	0x14d
	.uleb128 0x29
	.4byte	.LASF59
	.4byte	.LASF59
	.byte	0x7
	.2byte	0x5d0
	.uleb128 0x29
	.4byte	.LASF60
	.4byte	.LASF60
	.byte	0x2
	.2byte	0x2fe
	.uleb128 0x29
	.4byte	.LASF61
	.4byte	.LASF61
	.byte	0x7
	.2byte	0x3ac
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x15
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x87
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x5
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
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL3
	.4byte	.LVL4-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL4-1
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
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL15
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL19
	.4byte	.LVL20-1
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	.LVL20-1
	.4byte	.LFE15
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
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF17:
	.string	"TaskFunction_t"
.LASF2:
	.string	"short int"
.LASF57:
	.string	"malloc"
.LASF14:
	.string	"sizetype"
.LASF23:
	.string	"TaskHandle_t"
.LASF6:
	.string	"__uint32_t"
.LASF31:
	.string	"event"
.LASF4:
	.string	"__uint16_t"
.LASF68:
	.string	"memcpy"
.LASF35:
	.string	"pvTaskCode"
.LASF63:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/ESP32_PIC_A2DP/components/bt_speaker/bt_app_core.c"
.LASF10:
	.string	"uint8_t"
.LASF47:
	.string	"p_copy_cback"
.LASF56:
	.string	"free"
.LASF52:
	.string	"xQueueGenericSend"
.LASF8:
	.string	"long long int"
.LASF21:
	.string	"TickType_t"
.LASF51:
	.string	"bt_app_task_handle"
.LASF13:
	.string	"long int"
.LASF67:
	.string	"bt_app_work_dispatch"
.LASF27:
	.string	"ESP_LOG_INFO"
.LASF3:
	.string	"__uint8_t"
.LASF50:
	.string	"bt_app_task_queue"
.LASF22:
	.string	"QueueHandle_t"
.LASF37:
	.string	"usStackDepth"
.LASF1:
	.string	"unsigned char"
.LASF59:
	.string	"xQueueGenericCreate"
.LASF43:
	.string	"__func__"
.LASF0:
	.string	"signed char"
.LASF9:
	.string	"long long unsigned int"
.LASF12:
	.string	"uint32_t"
.LASF7:
	.string	"unsigned int"
.LASF11:
	.string	"uint16_t"
.LASF19:
	.string	"BaseType_t"
.LASF38:
	.string	"pvParameters"
.LASF33:
	.string	"bt_app_msg_t"
.LASF32:
	.string	"param"
.LASF16:
	.string	"char"
.LASF48:
	.string	"bt_app_task_start_up"
.LASF28:
	.string	"ESP_LOG_DEBUG"
.LASF24:
	.string	"ESP_LOG_NONE"
.LASF60:
	.string	"vTaskDelete"
.LASF30:
	.string	"bt_app_cb_t"
.LASF18:
	.string	"_Bool"
.LASF65:
	.string	"xTaskCreate"
.LASF26:
	.string	"ESP_LOG_WARN"
.LASF55:
	.string	"xQueueGenericReceive"
.LASF5:
	.string	"short unsigned int"
.LASF61:
	.string	"vQueueDelete"
.LASF15:
	.string	"long unsigned int"
.LASF36:
	.string	"pcName"
.LASF20:
	.string	"UBaseType_t"
.LASF64:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\bt_speaker"
.LASF40:
	.string	"pvCreatedTask"
.LASF34:
	.string	"bt_app_copy_cb_t"
.LASF29:
	.string	"ESP_LOG_VERBOSE"
.LASF58:
	.string	"xTaskCreatePinnedToCore"
.LASF66:
	.string	"bt_app_work_dispatched"
.LASF45:
	.string	"p_params"
.LASF53:
	.string	"esp_log_timestamp"
.LASF44:
	.string	"p_cback"
.LASF41:
	.string	"bt_app_send_msg"
.LASF46:
	.string	"param_len"
.LASF39:
	.string	"uxPriority"
.LASF54:
	.string	"esp_log_write"
.LASF62:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF42:
	.string	"bt_app_task_handler"
.LASF25:
	.string	"ESP_LOG_ERROR"
.LASF49:
	.string	"bt_app_task_shut_down"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
