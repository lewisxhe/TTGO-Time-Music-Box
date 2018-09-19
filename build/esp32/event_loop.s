	.file	"event_loop.c"
	.text
.Ltext0:
	.section	.text.esp_event_post_to_user,"ax",@progbits
	.literal_position
	.literal .LC0, s_event_handler_cb
	.literal .LC1, s_event_ctx
	.align	4
	.type	esp_event_post_to_user, @function
esp_event_post_to_user:
.LFB17:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/event_loop.c"
	.loc 1 42 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 43 0
	l32r	a8, .LC0
	l32i.n	a8, a8, 0
	beqz.n	a8, .L3
	.loc 1 44 0
	mov.n	a11, a2
	l32r	a2, .LC1
.LVL1:
	l32i.n	a10, a2, 0
	callx8	a8
.LVL2:
	mov.n	a2, a10
	retw.n
.LVL3:
.L3:
	.loc 1 46 0
	movi.n	a2, 0
.LVL4:
	.loc 1 47 0
	retw.n
.LFE17:
	.size	esp_event_post_to_user, .-esp_event_post_to_user
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC3:
	.string	"event"
	.align	4
.LC5:
	.string	"\033[0;31mE (%d) %s: default event handler failed!\033[0m\n"
	.align	4
.LC7:
	.string	"\033[0;31mE (%d) %s: post event to user fail!\033[0m\n"
	.section	.text.esp_event_loop_task,"ax",@progbits
	.literal_position
	.literal .LC2, s_event_queue
	.literal .LC4, .LC3
	.literal .LC6, .LC5
	.literal .LC8, .LC7
	.align	4
	.type	esp_event_loop_task, @function
esp_event_loop_task:
.LFB18:
	.loc 1 50 0
.LVL5:
	entry	sp, 80
.LCFI1:
.L7:
.LBB2:
	.loc 1 53 0
	movi.n	a13, 0
	movi.n	a12, -1
	mov.n	a11, sp
	l32r	a8, .LC2
	l32i.n	a10, a8, 0
	call8	xQueueGenericReceive
.LVL6:
	bnei	a10, 1, .L7
.LBB3:
	.loc 1 54 0
	mov.n	a10, sp
	call8	esp_event_process_default
.LVL7:
	.loc 1 55 0
	beqz.n	a10, .L6
	.loc 1 56 0 discriminator 2
	call8	esp_log_timestamp
.LVL8:
	l32r	a11, .LC4
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC6
	movi.n	a10, 1
	call8	esp_log_write
.LVL9:
.L6:
	.loc 1 58 0
	mov.n	a10, sp
	call8	esp_event_post_to_user
.LVL10:
	.loc 1 59 0
	beqz.n	a10, .L7
	.loc 1 60 0 discriminator 2
	call8	esp_log_timestamp
.LVL11:
	l32r	a11, .LC4
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC8
	movi.n	a10, 1
	call8	esp_log_write
.LVL12:
.LBE3:
.LBE2:
	.loc 1 63 0 discriminator 2
	j	.L7
.LFE18:
	.size	esp_event_loop_task, .-esp_event_loop_task
	.section	.text.esp_event_loop_set_cb,"ax",@progbits
	.literal_position
	.literal .LC9, s_event_handler_cb
	.literal .LC10, s_event_ctx
	.align	4
	.global	esp_event_loop_set_cb
	.type	esp_event_loop_set_cb, @function
esp_event_loop_set_cb:
.LFB19:
	.loc 1 67 0
.LVL13:
	entry	sp, 32
.LCFI2:
	.loc 1 68 0
	l32r	a8, .LC9
	l32i.n	a9, a8, 0
.LVL14:
	.loc 1 69 0
	s32i.n	a2, a8, 0
	.loc 1 70 0
	l32r	a8, .LC10
	s32i.n	a3, a8, 0
	.loc 1 72 0
	mov.n	a2, a9
.LVL15:
	retw.n
.LFE19:
	.size	esp_event_loop_set_cb, .-esp_event_loop_set_cb
	.section	.rodata.str1.4
	.align	4
.LC13:
	.string	"\033[0;31mE (%d) %s: Event loop not initialized via esp_event_loop_init, but esp_event_send called\033[0m\n"
	.align	4
.LC16:
	.string	"\033[0;31mE (%d) %s: e=%d f\033[0m\n"
	.align	4
.LC18:
	.string	"\033[0;31mE (%d) %s: e null\033[0m\n"
	.section	.text.esp_event_send,"ax",@progbits
	.literal_position
	.literal .LC11, s_event_queue
	.literal .LC12, .LC3
	.literal .LC14, .LC13
	.literal .LC15, g_mesh_event_cb
	.literal .LC17, .LC16
	.literal .LC19, .LC18
	.align	4
	.global	esp_event_send
	.type	esp_event_send, @function
esp_event_send:
.LFB20:
	.loc 1 75 0
.LVL16:
	entry	sp, 160
.LCFI3:
	.loc 1 76 0
	l32r	a8, .LC11
	l32i.n	a8, a8, 0
	bnez.n	a8, .L10
	.loc 1 77 0 discriminator 2
	call8	esp_log_timestamp
.LVL17:
	l32r	a11, .LC12
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC14
	movi.n	a10, 1
	call8	esp_log_write
.LVL18:
	.loc 1 78 0 discriminator 2
	movi	a2, 0x103
.LVL19:
	retw.n
.LVL20:
.L10:
	.loc 1 81 0
	l32i.n	a8, a2, 0
	addi	a9, a8, -7
	bgeui	a9, 2, .L12
	.loc 1 82 0
	l32r	a9, .LC15
	l32i.n	a9, a9, 0
	beqz.n	a9, .L12
.LBB4:
	.loc 1 84 0
	bnei	a8, 7, .L13
	.loc 1 85 0
	movi.n	a8, 0x11
	s32i	a8, sp, 64
	.loc 1 86 0
	movi.n	a12, 0x10
	addi.n	a11, a2, 4
	addi	a10, sp, 68
	call8	memcpy
.LVL21:
	j	.L14
.L13:
	.loc 1 88 0
	movi.n	a8, 0x12
	s32i	a8, sp, 64
.L14:
	.loc 1 90 0
	movi.n	a12, 0x34
	addi	a11, sp, 64
	mov.n	a10, sp
	call8	memcpy
.LVL22:
	l32r	a8, .LC15
	l32i.n	a8, a8, 0
	callx8	a8
.LVL23:
.L12:
.LBE4:
	.loc 1 94 0
	movi.n	a13, 0
	mov.n	a12, a13
	mov.n	a11, a2
	l32r	a8, .LC11
	l32i.n	a10, a8, 0
	call8	xQueueGenericSend
.LVL24:
	.loc 1 95 0
	beqi	a10, 1, .L16
	.loc 1 96 0
	beqz.n	a2, .L15
	.loc 1 97 0 discriminator 2
	call8	esp_log_timestamp
.LVL25:
	l32r	a11, .LC12
	l32i.n	a15, a2, 0
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC17
	movi.n	a10, 1
	call8	esp_log_write
.LVL26:
	.loc 1 101 0 discriminator 2
	movi.n	a2, -1
.LVL27:
	retw.n
.LVL28:
.L15:
	.loc 1 99 0 discriminator 2
	call8	esp_log_timestamp
.LVL29:
	l32r	a11, .LC12
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC19
	movi.n	a10, 1
	call8	esp_log_write
.LVL30:
	.loc 1 101 0 discriminator 2
	movi.n	a2, -1
.LVL31:
	retw.n
.LVL32:
.L16:
	.loc 1 103 0
	movi.n	a2, 0
.LVL33:
	.loc 1 104 0
	retw.n
.LFE20:
	.size	esp_event_send, .-esp_event_send
	.section	.text.esp_event_loop_get_queue,"ax",@progbits
	.literal_position
	.literal .LC20, s_event_queue
	.align	4
	.global	esp_event_loop_get_queue
	.type	esp_event_loop_get_queue, @function
esp_event_loop_get_queue:
.LFB21:
	.loc 1 107 0
	entry	sp, 32
.LCFI4:
	.loc 1 109 0
	l32r	a8, .LC20
	l32i.n	a2, a8, 0
	retw.n
.LFE21:
	.size	esp_event_loop_get_queue, .-esp_event_loop_get_queue
	.section	.rodata.str1.4
	.align	4
.LC26:
	.string	"eventTask"
	.section	.text.esp_event_loop_init,"ax",@progbits
	.literal_position
	.literal .LC21, s_event_init_flag
	.literal .LC22, s_event_handler_cb
	.literal .LC23, s_event_ctx
	.literal .LC24, s_event_queue
	.literal .LC25, 2816
	.literal .LC27, .LC26
	.literal .LC28, esp_event_loop_task
	.align	4
	.global	esp_event_loop_init
	.type	esp_event_loop_init, @function
esp_event_loop_init:
.LFB22:
	.loc 1 112 0
.LVL34:
	entry	sp, 48
.LCFI5:
	.loc 1 113 0
	l32r	a8, .LC21
	l8ui	a8, a8, 0
	bnez.n	a8, .L20
	.loc 1 116 0
	l32r	a8, .LC22
	s32i.n	a2, a8, 0
	.loc 1 117 0
	l32r	a2, .LC23
.LVL35:
	s32i.n	a3, a2, 0
	.loc 1 118 0
	movi.n	a12, 0
	movi.n	a11, 0x30
	movi.n	a10, 0x20
	call8	xQueueGenericCreate
.LVL36:
	l32r	a2, .LC24
	s32i.n	a10, a2, 0
	.loc 1 120 0
	movi.n	a2, 0
	s32i.n	a2, sp, 0
	mov.n	a15, a2
	movi.n	a14, 0x14
	mov.n	a13, a2
	l32r	a12, .LC25
	l32r	a11, .LC27
	l32r	a10, .LC28
	call8	xTaskCreatePinnedToCore
.LVL37:
	.loc 1 123 0
	movi.n	a8, 1
	l32r	a3, .LC21
.LVL38:
	s8i	a8, a3, 0
	.loc 1 124 0
	retw.n
.LVL39:
.L20:
	.loc 1 114 0
	movi.n	a2, -1
.LVL40:
	.loc 1 125 0
	retw.n
.LFE22:
	.size	esp_event_loop_init, .-esp_event_loop_init
	.section	.bss.s_event_ctx,"aw",@nobits
	.align	4
	.type	s_event_ctx, @object
	.size	s_event_ctx, 4
s_event_ctx:
	.zero	4
	.section	.bss.s_event_handler_cb,"aw",@nobits
	.align	4
	.type	s_event_handler_cb, @object
	.size	s_event_handler_cb, 4
s_event_handler_cb:
	.zero	4
	.section	.bss.s_event_queue,"aw",@nobits
	.align	4
	.type	s_event_queue, @object
	.size	s_event_queue, 4
s_event_queue:
	.zero	4
	.section	.bss.s_event_init_flag,"aw",@nobits
	.type	s_event_init_flag, @object
	.size	s_event_init_flag, 1
s_event_init_flag:
	.zero	1
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
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI1-.LFB18
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI2-.LFB19
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI3-.LFB20
	.byte	0xe
	.uleb128 0xa0
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI4-.LFB21
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI5-.LFB22
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE10:
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_err.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/portmacro.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/queue.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_wifi_types.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/port/arch/cc.h"
	.file 9 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/ip4_addr.h"
	.file 10 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/ip6_addr.h"
	.file 11 "D:/ESP32/esp-idf-v3.1-rc1/components/tcpip_adapter/include/tcpip_adapter.h"
	.file 12 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_event.h"
	.file 13 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_event_loop.h"
	.file 14 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_mesh.h"
	.file 15 "D:/ESP32/esp-idf-v3.1-rc1/components/log/include/esp_log.h"
	.file 16 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/task.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xede
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF219
	.byte	0xc
	.4byte	.LASF220
	.4byte	.LASF221
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
	.uleb128 0x4
	.4byte	.LASF3
	.byte	0x2
	.byte	0x11
	.4byte	0x45
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x4
	.4byte	.LASF4
	.byte	0x2
	.byte	0x12
	.4byte	0x57
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x2
	.byte	0x16
	.4byte	0x33
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x2
	.byte	0x19
	.4byte	0x25
	.uleb128 0x4
	.4byte	.LASF9
	.byte	0x2
	.byte	0x1a
	.4byte	0x2c
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb8
	.uleb128 0x7
	.4byte	0xab
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x3
	.byte	0x14
	.4byte	0x3a
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x3
	.byte	0x15
	.4byte	0x4c
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x3
	.byte	0x21
	.4byte	0x65
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x3
	.byte	0x2c
	.4byte	0x70
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x3
	.byte	0x2d
	.4byte	0x7b
	.uleb128 0x4
	.4byte	.LASF21
	.byte	0x4
	.byte	0x18
	.4byte	0xde
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF22
	.uleb128 0x4
	.4byte	.LASF23
	.byte	0x5
	.byte	0x6f
	.4byte	0x25
	.uleb128 0x4
	.4byte	.LASF24
	.byte	0x5
	.byte	0x76
	.4byte	0xe9
	.uleb128 0x4
	.4byte	.LASF25
	.byte	0x6
	.byte	0x58
	.4byte	0xa2
	.uleb128 0x8
	.byte	0x4
	.4byte	0x2c
	.byte	0x7
	.byte	0x38
	.4byte	0x15e
	.uleb128 0x9
	.4byte	.LASF26
	.byte	0
	.uleb128 0x9
	.4byte	.LASF27
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF28
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF29
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF30
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF31
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF32
	.byte	0x6
	.byte	0
	.uleb128 0x4
	.4byte	.LASF33
	.byte	0x7
	.byte	0x40
	.4byte	0x127
	.uleb128 0xa
	.4byte	0xc8
	.4byte	0x179
	.uleb128 0xb
	.4byte	0x9b
	.byte	0x5
	.byte	0
	.uleb128 0xa
	.4byte	0xc8
	.4byte	0x189
	.uleb128 0xb
	.4byte	0x9b
	.byte	0x1f
	.byte	0
	.uleb128 0x7
	.4byte	0xb2
	.uleb128 0x4
	.4byte	.LASF34
	.byte	0x8
	.byte	0x32
	.4byte	0xe9
	.uleb128 0xc
	.4byte	.LASF36
	.byte	0x4
	.byte	0x9
	.byte	0x2e
	.4byte	0x1b2
	.uleb128 0xd
	.4byte	.LASF38
	.byte	0x9
	.byte	0x2f
	.4byte	0x18e
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF35
	.byte	0x9
	.byte	0x42
	.4byte	0x199
	.uleb128 0xc
	.4byte	.LASF37
	.byte	0x10
	.byte	0xa
	.byte	0x39
	.4byte	0x1d6
	.uleb128 0xd
	.4byte	.LASF38
	.byte	0xa
	.byte	0x3a
	.4byte	0x1d6
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	0x18e
	.4byte	0x1e6
	.uleb128 0xb
	.4byte	0x9b
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.4byte	.LASF39
	.byte	0xa
	.byte	0x4b
	.4byte	0x1bd
	.uleb128 0xe
	.byte	0xc
	.byte	0xb
	.byte	0x48
	.4byte	0x21c
	.uleb128 0xf
	.string	"ip"
	.byte	0xb
	.byte	0x49
	.4byte	0x1b2
	.byte	0
	.uleb128 0xd
	.4byte	.LASF40
	.byte	0xb
	.byte	0x4a
	.4byte	0x1b2
	.byte	0x4
	.uleb128 0xf
	.string	"gw"
	.byte	0xb
	.byte	0x4b
	.4byte	0x1b2
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.4byte	.LASF41
	.byte	0xb
	.byte	0x4c
	.4byte	0x1f1
	.uleb128 0xe
	.byte	0x10
	.byte	0xb
	.byte	0x4e
	.4byte	0x23b
	.uleb128 0xf
	.string	"ip"
	.byte	0xb
	.byte	0x4f
	.4byte	0x1e6
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF42
	.byte	0xb
	.byte	0x50
	.4byte	0x227
	.uleb128 0x8
	.byte	0x4
	.4byte	0x2c
	.byte	0xb
	.byte	0x6d
	.4byte	0x26b
	.uleb128 0x9
	.4byte	.LASF43
	.byte	0
	.uleb128 0x9
	.4byte	.LASF44
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF45
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF46
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.4byte	.LASF47
	.byte	0xb
	.byte	0x72
	.4byte	0x246
	.uleb128 0x8
	.byte	0x4
	.4byte	0x2c
	.byte	0xc
	.byte	0x1d
	.4byte	0x31f
	.uleb128 0x9
	.4byte	.LASF48
	.byte	0
	.uleb128 0x9
	.4byte	.LASF49
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF50
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF51
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF52
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF53
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF54
	.byte	0x6
	.uleb128 0x9
	.4byte	.LASF55
	.byte	0x7
	.uleb128 0x9
	.4byte	.LASF56
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF57
	.byte	0x9
	.uleb128 0x9
	.4byte	.LASF58
	.byte	0xa
	.uleb128 0x9
	.4byte	.LASF59
	.byte	0xb
	.uleb128 0x9
	.4byte	.LASF60
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF61
	.byte	0xd
	.uleb128 0x9
	.4byte	.LASF62
	.byte	0xe
	.uleb128 0x9
	.4byte	.LASF63
	.byte	0xf
	.uleb128 0x9
	.4byte	.LASF64
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF65
	.byte	0x11
	.uleb128 0x9
	.4byte	.LASF66
	.byte	0x12
	.uleb128 0x9
	.4byte	.LASF67
	.byte	0x13
	.uleb128 0x9
	.4byte	.LASF68
	.byte	0x14
	.uleb128 0x9
	.4byte	.LASF69
	.byte	0x15
	.uleb128 0x9
	.4byte	.LASF70
	.byte	0x16
	.uleb128 0x9
	.4byte	.LASF71
	.byte	0x17
	.uleb128 0x9
	.4byte	.LASF72
	.byte	0x18
	.uleb128 0x9
	.4byte	.LASF73
	.byte	0x19
	.byte	0
	.uleb128 0x4
	.4byte	.LASF74
	.byte	0xc
	.byte	0x38
	.4byte	0x276
	.uleb128 0x8
	.byte	0x4
	.4byte	0x2c
	.byte	0xc
	.byte	0x3f
	.4byte	0x349
	.uleb128 0x9
	.4byte	.LASF75
	.byte	0
	.uleb128 0x9
	.4byte	.LASF76
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF77
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.4byte	.LASF78
	.byte	0xc
	.byte	0x43
	.4byte	0x32a
	.uleb128 0xe
	.byte	0x8
	.byte	0xc
	.byte	0x44
	.4byte	0x381
	.uleb128 0xd
	.4byte	.LASF79
	.byte	0xc
	.byte	0x45
	.4byte	0xe9
	.byte	0
	.uleb128 0xd
	.4byte	.LASF80
	.byte	0xc
	.byte	0x46
	.4byte	0xc8
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF81
	.byte	0xc
	.byte	0x47
	.4byte	0xc8
	.byte	0x5
	.byte	0
	.uleb128 0x4
	.4byte	.LASF82
	.byte	0xc
	.byte	0x48
	.4byte	0x354
	.uleb128 0xe
	.byte	0x2c
	.byte	0xc
	.byte	0x4a
	.4byte	0x3d1
	.uleb128 0xd
	.4byte	.LASF83
	.byte	0xc
	.byte	0x4b
	.4byte	0x179
	.byte	0
	.uleb128 0xd
	.4byte	.LASF84
	.byte	0xc
	.byte	0x4c
	.4byte	0xc8
	.byte	0x20
	.uleb128 0xd
	.4byte	.LASF85
	.byte	0xc
	.byte	0x4d
	.4byte	0x169
	.byte	0x21
	.uleb128 0xd
	.4byte	.LASF86
	.byte	0xc
	.byte	0x4e
	.4byte	0xc8
	.byte	0x27
	.uleb128 0xd
	.4byte	.LASF87
	.byte	0xc
	.byte	0x4f
	.4byte	0x15e
	.byte	0x28
	.byte	0
	.uleb128 0x4
	.4byte	.LASF88
	.byte	0xc
	.byte	0x50
	.4byte	0x38c
	.uleb128 0xe
	.byte	0x28
	.byte	0xc
	.byte	0x52
	.4byte	0x415
	.uleb128 0xd
	.4byte	.LASF83
	.byte	0xc
	.byte	0x53
	.4byte	0x179
	.byte	0
	.uleb128 0xd
	.4byte	.LASF84
	.byte	0xc
	.byte	0x54
	.4byte	0xc8
	.byte	0x20
	.uleb128 0xd
	.4byte	.LASF85
	.byte	0xc
	.byte	0x55
	.4byte	0x169
	.byte	0x21
	.uleb128 0xd
	.4byte	.LASF89
	.byte	0xc
	.byte	0x56
	.4byte	0xc8
	.byte	0x27
	.byte	0
	.uleb128 0x4
	.4byte	.LASF90
	.byte	0xc
	.byte	0x57
	.4byte	0x3dc
	.uleb128 0xe
	.byte	0x8
	.byte	0xc
	.byte	0x59
	.4byte	0x441
	.uleb128 0xd
	.4byte	.LASF91
	.byte	0xc
	.byte	0x5a
	.4byte	0x15e
	.byte	0
	.uleb128 0xd
	.4byte	.LASF92
	.byte	0xc
	.byte	0x5b
	.4byte	0x15e
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF93
	.byte	0xc
	.byte	0x5c
	.4byte	0x420
	.uleb128 0xe
	.byte	0x10
	.byte	0xc
	.byte	0x5e
	.4byte	0x46d
	.uleb128 0xd
	.4byte	.LASF94
	.byte	0xc
	.byte	0x5f
	.4byte	0x21c
	.byte	0
	.uleb128 0xd
	.4byte	.LASF95
	.byte	0xc
	.byte	0x60
	.4byte	0xff
	.byte	0xc
	.byte	0
	.uleb128 0x4
	.4byte	.LASF96
	.byte	0xc
	.byte	0x61
	.4byte	0x44c
	.uleb128 0xe
	.byte	0x8
	.byte	0xc
	.byte	0x63
	.4byte	0x48d
	.uleb128 0xd
	.4byte	.LASF97
	.byte	0xc
	.byte	0x64
	.4byte	0x48d
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	0xc8
	.4byte	0x49d
	.uleb128 0xb
	.4byte	0x9b
	.byte	0x7
	.byte	0
	.uleb128 0x4
	.4byte	.LASF98
	.byte	0xc
	.byte	0x65
	.4byte	0x478
	.uleb128 0xe
	.byte	0x14
	.byte	0xc
	.byte	0x67
	.4byte	0x4c9
	.uleb128 0xd
	.4byte	.LASF99
	.byte	0xc
	.byte	0x68
	.4byte	0x26b
	.byte	0
	.uleb128 0xd
	.4byte	.LASF100
	.byte	0xc
	.byte	0x69
	.4byte	0x23b
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF101
	.byte	0xc
	.byte	0x6a
	.4byte	0x4a8
	.uleb128 0xe
	.byte	0x7
	.byte	0xc
	.byte	0x6c
	.4byte	0x4f5
	.uleb128 0xf
	.string	"mac"
	.byte	0xc
	.byte	0x6d
	.4byte	0x169
	.byte	0
	.uleb128 0xf
	.string	"aid"
	.byte	0xc
	.byte	0x6e
	.4byte	0xc8
	.byte	0x6
	.byte	0
	.uleb128 0x4
	.4byte	.LASF102
	.byte	0xc
	.byte	0x6f
	.4byte	0x4d4
	.uleb128 0xe
	.byte	0x7
	.byte	0xc
	.byte	0x71
	.4byte	0x521
	.uleb128 0xf
	.string	"mac"
	.byte	0xc
	.byte	0x72
	.4byte	0x169
	.byte	0
	.uleb128 0xf
	.string	"aid"
	.byte	0xc
	.byte	0x73
	.4byte	0xc8
	.byte	0x6
	.byte	0
	.uleb128 0x4
	.4byte	.LASF103
	.byte	0xc
	.byte	0x74
	.4byte	0x500
	.uleb128 0xe
	.byte	0xc
	.byte	0xc
	.byte	0x76
	.4byte	0x54d
	.uleb128 0xd
	.4byte	.LASF104
	.byte	0xc
	.byte	0x77
	.4byte	0x25
	.byte	0
	.uleb128 0xf
	.string	"mac"
	.byte	0xc
	.byte	0x78
	.4byte	0x169
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF105
	.byte	0xc
	.byte	0x79
	.4byte	0x52c
	.uleb128 0x10
	.byte	0x2c
	.byte	0xc
	.byte	0x7b
	.4byte	0x5da
	.uleb128 0x11
	.4byte	.LASF106
	.byte	0xc
	.byte	0x7c
	.4byte	0x3d1
	.uleb128 0x11
	.4byte	.LASF107
	.byte	0xc
	.byte	0x7d
	.4byte	0x415
	.uleb128 0x11
	.4byte	.LASF108
	.byte	0xc
	.byte	0x7e
	.4byte	0x381
	.uleb128 0x11
	.4byte	.LASF109
	.byte	0xc
	.byte	0x7f
	.4byte	0x441
	.uleb128 0x11
	.4byte	.LASF110
	.byte	0xc
	.byte	0x80
	.4byte	0x46d
	.uleb128 0x11
	.4byte	.LASF111
	.byte	0xc
	.byte	0x81
	.4byte	0x49d
	.uleb128 0x11
	.4byte	.LASF112
	.byte	0xc
	.byte	0x82
	.4byte	0x349
	.uleb128 0x11
	.4byte	.LASF113
	.byte	0xc
	.byte	0x83
	.4byte	0x4f5
	.uleb128 0x11
	.4byte	.LASF114
	.byte	0xc
	.byte	0x84
	.4byte	0x521
	.uleb128 0x11
	.4byte	.LASF115
	.byte	0xc
	.byte	0x85
	.4byte	0x54d
	.uleb128 0x11
	.4byte	.LASF116
	.byte	0xc
	.byte	0x86
	.4byte	0x4c9
	.byte	0
	.uleb128 0x4
	.4byte	.LASF117
	.byte	0xc
	.byte	0x87
	.4byte	0x558
	.uleb128 0xe
	.byte	0x30
	.byte	0xc
	.byte	0x89
	.4byte	0x606
	.uleb128 0xd
	.4byte	.LASF118
	.byte	0xc
	.byte	0x8a
	.4byte	0x31f
	.byte	0
	.uleb128 0xd
	.4byte	.LASF119
	.byte	0xc
	.byte	0x8b
	.4byte	0x5da
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF120
	.byte	0xc
	.byte	0x8c
	.4byte	0x5e5
	.uleb128 0x6
	.byte	0x4
	.4byte	0x606
	.uleb128 0x4
	.4byte	.LASF121
	.byte	0xd
	.byte	0x27
	.4byte	0x622
	.uleb128 0x6
	.byte	0x4
	.4byte	0x628
	.uleb128 0x12
	.4byte	0xf4
	.4byte	0x63c
	.uleb128 0x13
	.4byte	0xa2
	.uleb128 0x13
	.4byte	0x611
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x2c
	.byte	0xe
	.byte	0x9f
	.4byte	0x6d3
	.uleb128 0x9
	.4byte	.LASF122
	.byte	0
	.uleb128 0x9
	.4byte	.LASF123
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF124
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF125
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF126
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF127
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF128
	.byte	0x6
	.uleb128 0x9
	.4byte	.LASF129
	.byte	0x7
	.uleb128 0x9
	.4byte	.LASF130
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF131
	.byte	0x9
	.uleb128 0x9
	.4byte	.LASF132
	.byte	0xa
	.uleb128 0x9
	.4byte	.LASF133
	.byte	0xb
	.uleb128 0x9
	.4byte	.LASF134
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF135
	.byte	0xd
	.uleb128 0x9
	.4byte	.LASF136
	.byte	0xe
	.uleb128 0x9
	.4byte	.LASF137
	.byte	0xf
	.uleb128 0x9
	.4byte	.LASF138
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF139
	.byte	0x11
	.uleb128 0x9
	.4byte	.LASF140
	.byte	0x12
	.uleb128 0x9
	.4byte	.LASF141
	.byte	0x13
	.uleb128 0x9
	.4byte	.LASF142
	.byte	0x14
	.uleb128 0x9
	.4byte	.LASF143
	.byte	0x15
	.uleb128 0x9
	.4byte	.LASF144
	.byte	0x16
	.byte	0
	.uleb128 0x4
	.4byte	.LASF145
	.byte	0xe
	.byte	0xbd
	.4byte	0x63c
	.uleb128 0xe
	.byte	0x6
	.byte	0xe
	.byte	0xf7
	.4byte	0x6ff
	.uleb128 0xf
	.string	"ip4"
	.byte	0xe
	.byte	0xf8
	.4byte	0x1b2
	.byte	0
	.uleb128 0xd
	.4byte	.LASF146
	.byte	0xe
	.byte	0xf9
	.4byte	0xd3
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF147
	.byte	0xe
	.byte	0xfa
	.4byte	0x6de
	.uleb128 0x10
	.byte	0x6
	.byte	0xe
	.byte	0xff
	.4byte	0x72b
	.uleb128 0x14
	.4byte	.LASF38
	.byte	0xe
	.2byte	0x100
	.4byte	0x169
	.uleb128 0x15
	.string	"mip"
	.byte	0xe
	.2byte	0x101
	.4byte	0x6ff
	.byte	0
	.uleb128 0x16
	.4byte	.LASF148
	.byte	0xe
	.2byte	0x102
	.4byte	0x70a
	.uleb128 0x17
	.byte	0x1
	.byte	0xe
	.2byte	0x107
	.4byte	0x74e
	.uleb128 0x18
	.4byte	.LASF86
	.byte	0xe
	.2byte	0x108
	.4byte	0xc8
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LASF149
	.byte	0xe
	.2byte	0x109
	.4byte	0x737
	.uleb128 0x17
	.byte	0x30
	.byte	0xe
	.2byte	0x10e
	.4byte	0x77e
	.uleb128 0x18
	.4byte	.LASF106
	.byte	0xe
	.2byte	0x10f
	.4byte	0x3d1
	.byte	0
	.uleb128 0x18
	.4byte	.LASF150
	.byte	0xe
	.2byte	0x110
	.4byte	0xc8
	.byte	0x2c
	.byte	0
	.uleb128 0x16
	.4byte	.LASF151
	.byte	0xe
	.2byte	0x111
	.4byte	0x75a
	.uleb128 0x17
	.byte	0x4
	.byte	0xe
	.2byte	0x116
	.4byte	0x7a1
	.uleb128 0x18
	.4byte	.LASF152
	.byte	0xe
	.2byte	0x117
	.4byte	0x25
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LASF153
	.byte	0xe
	.2byte	0x118
	.4byte	0x78a
	.uleb128 0x17
	.byte	0x1
	.byte	0xe
	.2byte	0x11d
	.4byte	0x7c4
	.uleb128 0x18
	.4byte	.LASF154
	.byte	0xe
	.2byte	0x11e
	.4byte	0xc8
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LASF155
	.byte	0xe
	.2byte	0x11f
	.4byte	0x7ad
	.uleb128 0x19
	.byte	0x4
	.4byte	0x2c
	.byte	0xe
	.2byte	0x124
	.4byte	0x7ea
	.uleb128 0x9
	.4byte	.LASF156
	.byte	0
	.uleb128 0x9
	.4byte	.LASF157
	.byte	0x1
	.byte	0
	.uleb128 0x16
	.4byte	.LASF158
	.byte	0xe
	.2byte	0x127
	.4byte	0x7d0
	.uleb128 0x17
	.byte	0x10
	.byte	0xe
	.2byte	0x12c
	.4byte	0x827
	.uleb128 0x18
	.4byte	.LASF89
	.byte	0xe
	.2byte	0x12d
	.4byte	0x25
	.byte	0
	.uleb128 0x18
	.4byte	.LASF159
	.byte	0xe
	.2byte	0x12e
	.4byte	0x25
	.byte	0x4
	.uleb128 0x18
	.4byte	.LASF160
	.byte	0xe
	.2byte	0x12f
	.4byte	0x72b
	.byte	0x8
	.byte	0
	.uleb128 0x16
	.4byte	.LASF161
	.byte	0xe
	.2byte	0x130
	.4byte	0x7f6
	.uleb128 0x16
	.4byte	.LASF162
	.byte	0xe
	.2byte	0x135
	.4byte	0x46d
	.uleb128 0x16
	.4byte	.LASF163
	.byte	0xe
	.2byte	0x13a
	.4byte	0x72b
	.uleb128 0x16
	.4byte	.LASF164
	.byte	0xe
	.2byte	0x13f
	.4byte	0x415
	.uleb128 0x16
	.4byte	.LASF165
	.byte	0xe
	.2byte	0x144
	.4byte	0x4f5
	.uleb128 0x16
	.4byte	.LASF166
	.byte	0xe
	.2byte	0x149
	.4byte	0x521
	.uleb128 0x17
	.byte	0xc
	.byte	0xe
	.2byte	0x14e
	.4byte	0x893
	.uleb128 0x18
	.4byte	.LASF89
	.byte	0xe
	.2byte	0x14f
	.4byte	0x25
	.byte	0
	.uleb128 0x18
	.4byte	.LASF160
	.byte	0xe
	.2byte	0x150
	.4byte	0x72b
	.byte	0x4
	.byte	0
	.uleb128 0x16
	.4byte	.LASF167
	.byte	0xe
	.2byte	0x151
	.4byte	0x86f
	.uleb128 0x17
	.byte	0xa
	.byte	0xe
	.2byte	0x156
	.4byte	0x8d0
	.uleb128 0x18
	.4byte	.LASF104
	.byte	0xe
	.2byte	0x157
	.4byte	0xbd
	.byte	0
	.uleb128 0x18
	.4byte	.LASF168
	.byte	0xe
	.2byte	0x158
	.4byte	0xd3
	.byte	0x2
	.uleb128 0x18
	.4byte	.LASF38
	.byte	0xe
	.2byte	0x159
	.4byte	0x169
	.byte	0x4
	.byte	0
	.uleb128 0x16
	.4byte	.LASF169
	.byte	0xe
	.2byte	0x15a
	.4byte	0x89f
	.uleb128 0x17
	.byte	0x4
	.byte	0xe
	.2byte	0x15f
	.4byte	0x900
	.uleb128 0x18
	.4byte	.LASF170
	.byte	0xe
	.2byte	0x160
	.4byte	0xd3
	.byte	0
	.uleb128 0x18
	.4byte	.LASF171
	.byte	0xe
	.2byte	0x161
	.4byte	0xd3
	.byte	0x2
	.byte	0
	.uleb128 0x16
	.4byte	.LASF172
	.byte	0xe
	.2byte	0x162
	.4byte	0x8dc
	.uleb128 0x17
	.byte	0x1
	.byte	0xe
	.2byte	0x167
	.4byte	0x923
	.uleb128 0x18
	.4byte	.LASF173
	.byte	0xe
	.2byte	0x168
	.4byte	0xff
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LASF174
	.byte	0xe
	.2byte	0x169
	.4byte	0x90c
	.uleb128 0x17
	.byte	0x1
	.byte	0xe
	.2byte	0x16e
	.4byte	0x946
	.uleb128 0x18
	.4byte	.LASF80
	.byte	0xe
	.2byte	0x16f
	.4byte	0xc8
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LASF175
	.byte	0xe
	.2byte	0x170
	.4byte	0x92f
	.uleb128 0x1a
	.byte	0x30
	.byte	0xe
	.2byte	0x175
	.4byte	0xa1c
	.uleb128 0x14
	.4byte	.LASF176
	.byte	0xe
	.2byte	0x176
	.4byte	0x74e
	.uleb128 0x14
	.4byte	.LASF177
	.byte	0xe
	.2byte	0x177
	.4byte	0x857
	.uleb128 0x14
	.4byte	.LASF178
	.byte	0xe
	.2byte	0x178
	.4byte	0x863
	.uleb128 0x14
	.4byte	.LASF179
	.byte	0xe
	.2byte	0x179
	.4byte	0x900
	.uleb128 0x14
	.4byte	.LASF106
	.byte	0xe
	.2byte	0x17a
	.4byte	0x77e
	.uleb128 0x14
	.4byte	.LASF107
	.byte	0xe
	.2byte	0x17b
	.4byte	0x84b
	.uleb128 0x14
	.4byte	.LASF180
	.byte	0xe
	.2byte	0x17c
	.4byte	0x7a1
	.uleb128 0x14
	.4byte	.LASF181
	.byte	0xe
	.2byte	0x17d
	.4byte	0x7c4
	.uleb128 0x14
	.4byte	.LASF182
	.byte	0xe
	.2byte	0x17e
	.4byte	0x7ea
	.uleb128 0x14
	.4byte	.LASF183
	.byte	0xe
	.2byte	0x182
	.4byte	0x827
	.uleb128 0x14
	.4byte	.LASF110
	.byte	0xe
	.2byte	0x183
	.4byte	0x833
	.uleb128 0x14
	.4byte	.LASF184
	.byte	0xe
	.2byte	0x184
	.4byte	0x83f
	.uleb128 0x14
	.4byte	.LASF185
	.byte	0xe
	.2byte	0x185
	.4byte	0x893
	.uleb128 0x14
	.4byte	.LASF186
	.byte	0xe
	.2byte	0x186
	.4byte	0x8d0
	.uleb128 0x14
	.4byte	.LASF187
	.byte	0xe
	.2byte	0x187
	.4byte	0x923
	.uleb128 0x14
	.4byte	.LASF108
	.byte	0xe
	.2byte	0x188
	.4byte	0x946
	.byte	0
	.uleb128 0x16
	.4byte	.LASF188
	.byte	0xe
	.2byte	0x189
	.4byte	0x952
	.uleb128 0x17
	.byte	0x34
	.byte	0xe
	.2byte	0x18e
	.4byte	0xa4b
	.uleb128 0x1b
	.string	"id"
	.byte	0xe
	.2byte	0x18f
	.4byte	0x6d3
	.byte	0
	.uleb128 0x18
	.4byte	.LASF189
	.byte	0xe
	.2byte	0x190
	.4byte	0xa1c
	.byte	0x4
	.byte	0
	.uleb128 0x16
	.4byte	.LASF190
	.byte	0xe
	.2byte	0x191
	.4byte	0xa28
	.uleb128 0x16
	.4byte	.LASF191
	.byte	0xe
	.2byte	0x198
	.4byte	0xa63
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa69
	.uleb128 0x1c
	.4byte	0xa74
	.uleb128 0x13
	.4byte	0xa4b
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.4byte	.LASF192
	.uleb128 0x8
	.byte	0x4
	.4byte	0x2c
	.byte	0xf
	.byte	0x1f
	.4byte	0xaac
	.uleb128 0x9
	.4byte	.LASF193
	.byte	0
	.uleb128 0x9
	.4byte	.LASF194
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF195
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF196
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF197
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF198
	.byte	0x5
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF199
	.byte	0x1
	.byte	0x29
	.4byte	0xf4
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xae2
	.uleb128 0x1e
	.4byte	.LASF201
	.byte	0x1
	.byte	0x29
	.4byte	0x611
	.4byte	.LLST0
	.uleb128 0x1f
	.4byte	.LVL2
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LASF200
	.byte	0x1
	.byte	0x31
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbeb
	.uleb128 0x22
	.4byte	.LASF202
	.byte	0x1
	.byte	0x31
	.4byte	0xa2
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x23
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x24
	.string	"evt"
	.byte	0x1
	.byte	0x34
	.4byte	0x606
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x25
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.4byte	0xbcd
	.uleb128 0x26
	.string	"ret"
	.byte	0x1
	.byte	0x36
	.4byte	0xf4
	.4byte	.LLST1
	.uleb128 0x27
	.4byte	.LVL7
	.4byte	0xe87
	.4byte	0xb4d
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x28
	.4byte	.LVL8
	.4byte	0xe92
	.uleb128 0x27
	.4byte	.LVL9
	.4byte	0xe9d
	.4byte	0xb84
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x27
	.4byte	.LVL10
	.4byte	0xaac
	.4byte	0xb99
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x28
	.4byte	.LVL11
	.4byte	0xe92
	.uleb128 0x29
	.4byte	.LVL12
	.4byte	0xe9d
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL6
	.4byte	0xea8
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF204
	.byte	0x1
	.byte	0x42
	.4byte	0x617
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc2d
	.uleb128 0x2b
	.string	"cb"
	.byte	0x1
	.byte	0x42
	.4byte	0x617
	.4byte	.LLST2
	.uleb128 0x2c
	.string	"ctx"
	.byte	0x1
	.byte	0x42
	.4byte	0xa2
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2d
	.4byte	.LASF203
	.byte	0x1
	.byte	0x44
	.4byte	0x617
	.uleb128 0x1
	.byte	0x59
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF205
	.byte	0x1
	.byte	0x4a
	.4byte	0xf4
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd7f
	.uleb128 0x1e
	.4byte	.LASF201
	.byte	0x1
	.byte	0x4a
	.4byte	0x611
	.4byte	.LLST3
	.uleb128 0x26
	.string	"ret"
	.byte	0x1
	.byte	0x5e
	.4byte	0x25
	.4byte	.LLST4
	.uleb128 0x25
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.4byte	0xcbf
	.uleb128 0x2d
	.4byte	.LASF206
	.byte	0x1
	.byte	0x53
	.4byte	0xa4b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x27
	.4byte	.LVL21
	.4byte	0xeb4
	.4byte	0xca0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 4
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x29
	.4byte	.LVL22
	.4byte	0xeb4
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x34
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL17
	.4byte	0xe92
	.uleb128 0x27
	.4byte	.LVL18
	.4byte	0xe9d
	.4byte	0xcf6
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC13
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x27
	.4byte	.LVL24
	.4byte	0xebd
	.4byte	0xd14
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x28
	.4byte	.LVL25
	.4byte	0xe92
	.uleb128 0x27
	.4byte	.LVL26
	.4byte	0xe9d
	.4byte	0xd4b
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC16
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x28
	.4byte	.LVL29
	.4byte	0xe92
	.uleb128 0x29
	.4byte	.LVL30
	.4byte	0xe9d
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC18
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF222
	.byte	0x1
	.byte	0x6a
	.4byte	0x11c
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2a
	.4byte	.LASF207
	.byte	0x1
	.byte	0x6f
	.4byte	0xf4
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe25
	.uleb128 0x2b
	.string	"cb"
	.byte	0x1
	.byte	0x6f
	.4byte	0x617
	.4byte	.LLST5
	.uleb128 0x2b
	.string	"ctx"
	.byte	0x1
	.byte	0x6f
	.4byte	0xa2
	.4byte	.LLST6
	.uleb128 0x27
	.4byte	.LVL36
	.4byte	0xec9
	.4byte	0xde9
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x30
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x29
	.4byte	.LVL37
	.4byte	0xed5
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	esp_event_loop_task
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC26
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0xb00
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x44
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x24
	.string	"TAG"
	.byte	0x1
	.byte	0x23
	.4byte	0x189
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC3
	.byte	0x9f
	.uleb128 0x2d
	.4byte	.LASF208
	.byte	0x1
	.byte	0x24
	.4byte	0xff
	.uleb128 0x5
	.byte	0x3
	.4byte	s_event_init_flag
	.uleb128 0x2d
	.4byte	.LASF209
	.byte	0x1
	.byte	0x25
	.4byte	0x11c
	.uleb128 0x5
	.byte	0x3
	.4byte	s_event_queue
	.uleb128 0x2d
	.4byte	.LASF210
	.byte	0x1
	.byte	0x26
	.4byte	0x617
	.uleb128 0x5
	.byte	0x3
	.4byte	s_event_handler_cb
	.uleb128 0x2d
	.4byte	.LASF211
	.byte	0x1
	.byte	0x27
	.4byte	0xa2
	.uleb128 0x5
	.byte	0x3
	.4byte	s_event_ctx
	.uleb128 0x30
	.4byte	.LASF223
	.byte	0xe
	.2byte	0x1f8
	.4byte	0xa57
	.uleb128 0x31
	.4byte	.LASF212
	.4byte	.LASF212
	.byte	0xc
	.byte	0xa9
	.uleb128 0x31
	.4byte	.LASF213
	.4byte	.LASF213
	.byte	0xf
	.byte	0x57
	.uleb128 0x31
	.4byte	.LASF214
	.4byte	.LASF214
	.byte	0xf
	.byte	0x6b
	.uleb128 0x32
	.4byte	.LASF215
	.4byte	.LASF215
	.byte	0x6
	.2byte	0x38a
	.uleb128 0x33
	.4byte	.LASF224
	.4byte	.LASF224
	.uleb128 0x32
	.4byte	.LASF216
	.4byte	.LASF216
	.byte	0x6
	.2byte	0x265
	.uleb128 0x32
	.4byte	.LASF217
	.4byte	.LASF217
	.byte	0x6
	.2byte	0x5d0
	.uleb128 0x32
	.4byte	.LASF218
	.4byte	.LASF218
	.byte	0x10
	.2byte	0x14d
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
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
	.uleb128 0xe
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
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
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x28
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL1
	.4byte	.LVL2-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL2-1
	.4byte	.LVL3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL4
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL7
	.4byte	.LVL8-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL10
	.4byte	.LVL11-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL13
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL15
	.4byte	.LFE19
	.2byte	0x5
	.byte	0x3
	.4byte	s_event_handler_cb
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL16
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL32
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
.LLST4:
	.4byte	.LVL24
	.4byte	.LVL25-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL28
	.4byte	.LVL29-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL32
	.4byte	.LFE20
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL35
	.4byte	.LVL36-1
	.2byte	0x5
	.byte	0x3
	.4byte	s_event_handler_cb
	.4byte	.LVL36-1
	.4byte	.LVL39
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL40
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL34
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL39
	.4byte	.LFE22
	.2byte	0x1
	.byte	0x53
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
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
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
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF168:
	.string	"capacity"
.LASF188:
	.string	"mesh_event_info_t"
.LASF135:
	.string	"MESH_EVENT_VOTE_STOPPED"
.LASF65:
	.string	"SYSTEM_EVENT_AP_STAIPASSIGNED"
.LASF46:
	.string	"TCPIP_ADAPTER_IF_MAX"
.LASF64:
	.string	"SYSTEM_EVENT_AP_STADISCONNECTED"
.LASF63:
	.string	"SYSTEM_EVENT_AP_STACONNECTED"
.LASF136:
	.string	"MESH_EVENT_ROOT_ADDRESS"
.LASF153:
	.string	"mesh_event_no_parent_found_t"
.LASF150:
	.string	"self_layer"
.LASF4:
	.string	"__uint8_t"
.LASF97:
	.string	"pin_code"
.LASF119:
	.string	"event_info"
.LASF116:
	.string	"got_ip6"
.LASF190:
	.string	"mesh_event_t"
.LASF124:
	.string	"MESH_EVENT_CHANNEL_SWITCH"
.LASF174:
	.string	"mesh_event_root_fixed_t"
.LASF131:
	.string	"MESH_EVENT_NO_PARNET_FOUND"
.LASF90:
	.string	"system_event_sta_disconnected_t"
.LASF145:
	.string	"mesh_event_id_t"
.LASF214:
	.string	"esp_log_write"
.LASF38:
	.string	"addr"
.LASF98:
	.string	"system_event_sta_wps_er_pin_t"
.LASF202:
	.string	"pvParameters"
.LASF129:
	.string	"MESH_EVENT_PARENT_CONNECTED"
.LASF25:
	.string	"QueueHandle_t"
.LASF203:
	.string	"old_cb"
.LASF207:
	.string	"esp_event_loop_init"
.LASF104:
	.string	"rssi"
.LASF50:
	.string	"SYSTEM_EVENT_STA_START"
.LASF197:
	.string	"ESP_LOG_DEBUG"
.LASF10:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF137:
	.string	"MESH_EVENT_ROOT_SWITCH_REQ"
.LASF138:
	.string	"MESH_EVENT_ROOT_SWITCH_ACK"
.LASF162:
	.string	"mesh_event_root_got_ip_t"
.LASF170:
	.string	"rt_size_new"
.LASF11:
	.string	"long long unsigned int"
.LASF45:
	.string	"TCPIP_ADAPTER_IF_ETH"
.LASF3:
	.string	"__int8_t"
.LASF59:
	.string	"SYSTEM_EVENT_STA_WPS_ER_TIMEOUT"
.LASF184:
	.string	"root_addr"
.LASF88:
	.string	"system_event_sta_connected_t"
.LASF110:
	.string	"got_ip"
.LASF211:
	.string	"s_event_ctx"
.LASF133:
	.string	"MESH_EVENT_TODS_STATE"
.LASF218:
	.string	"xTaskCreatePinnedToCore"
.LASF12:
	.string	"long int"
.LASF172:
	.string	"mesh_event_routing_table_change_t"
.LASF36:
	.string	"ip4_addr"
.LASF92:
	.string	"new_mode"
.LASF33:
	.string	"wifi_auth_mode_t"
.LASF26:
	.string	"WIFI_AUTH_OPEN"
.LASF224:
	.string	"memcpy"
.LASF51:
	.string	"SYSTEM_EVENT_STA_STOP"
.LASF143:
	.string	"MESH_EVENT_SCAN_DONE"
.LASF99:
	.string	"if_index"
.LASF18:
	.string	"uint16_t"
.LASF173:
	.string	"is_fixed"
.LASF221:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\esp32"
.LASF23:
	.string	"BaseType_t"
.LASF40:
	.string	"netmask"
.LASF81:
	.string	"scan_id"
.LASF149:
	.string	"mesh_event_channel_switch_t"
.LASF148:
	.string	"mesh_addr_t"
.LASF204:
	.string	"esp_event_loop_set_cb"
.LASF78:
	.string	"system_event_sta_wps_fail_reason_t"
.LASF134:
	.string	"MESH_EVENT_VOTE_STARTED"
.LASF9:
	.string	"__uint32_t"
.LASF101:
	.string	"system_event_got_ip6_t"
.LASF200:
	.string	"esp_event_loop_task"
.LASF32:
	.string	"WIFI_AUTH_MAX"
.LASF128:
	.string	"MESH_EVENT_ROUTING_TABLE_REMOVE"
.LASF113:
	.string	"sta_connected"
.LASF215:
	.string	"xQueueGenericReceive"
.LASF29:
	.string	"WIFI_AUTH_WPA2_PSK"
.LASF132:
	.string	"MESH_EVENT_LAYER_CHANGE"
.LASF167:
	.string	"mesh_event_root_switch_req_t"
.LASF56:
	.string	"SYSTEM_EVENT_STA_LOST_IP"
.LASF100:
	.string	"ip6_info"
.LASF0:
	.string	"unsigned int"
.LASF83:
	.string	"ssid"
.LASF70:
	.string	"SYSTEM_EVENT_ETH_CONNECTED"
.LASF117:
	.string	"system_event_info_t"
.LASF14:
	.string	"long unsigned int"
.LASF28:
	.string	"WIFI_AUTH_WPA_PSK"
.LASF186:
	.string	"root_conflict"
.LASF34:
	.string	"u32_t"
.LASF111:
	.string	"sta_er_pin"
.LASF87:
	.string	"authmode"
.LASF102:
	.string	"system_event_ap_staconnected_t"
.LASF216:
	.string	"xQueueGenericSend"
.LASF201:
	.string	"event"
.LASF112:
	.string	"sta_er_fail_reason"
.LASF1:
	.string	"short unsigned int"
.LASF43:
	.string	"TCPIP_ADAPTER_IF_STA"
.LASF146:
	.string	"port"
.LASF72:
	.string	"SYSTEM_EVENT_ETH_GOT_IP"
.LASF208:
	.string	"s_event_init_flag"
.LASF80:
	.string	"number"
.LASF144:
	.string	"MESH_EVENT_MAX"
.LASF41:
	.string	"tcpip_adapter_ip_info_t"
.LASF155:
	.string	"mesh_event_layer_change_t"
.LASF209:
	.string	"s_event_queue"
.LASF164:
	.string	"mesh_event_disconnected_t"
.LASF118:
	.string	"event_id"
.LASF158:
	.string	"mesh_event_toDS_state_t"
.LASF84:
	.string	"ssid_len"
.LASF183:
	.string	"vote_started"
.LASF120:
	.string	"system_event_t"
.LASF30:
	.string	"WIFI_AUTH_WPA_WPA2_PSK"
.LASF140:
	.string	"MESH_EVENT_ROOT_LOST_IP"
.LASF196:
	.string	"ESP_LOG_INFO"
.LASF31:
	.string	"WIFI_AUTH_WPA2_ENTERPRISE"
.LASF16:
	.string	"int8_t"
.LASF75:
	.string	"WPS_FAIL_REASON_NORMAL"
.LASF125:
	.string	"MESH_EVENT_CHILD_CONNECTED"
.LASF13:
	.string	"sizetype"
.LASF220:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/esp32/event_loop.c"
.LASF152:
	.string	"scan_times"
.LASF122:
	.string	"MESH_EVENT_STARTED"
.LASF107:
	.string	"disconnected"
.LASF24:
	.string	"TickType_t"
.LASF115:
	.string	"ap_probereqrecved"
.LASF54:
	.string	"SYSTEM_EVENT_STA_AUTHMODE_CHANGE"
.LASF76:
	.string	"WPS_FAIL_REASON_RECV_M2D"
.LASF93:
	.string	"system_event_sta_authmode_change_t"
.LASF154:
	.string	"new_layer"
.LASF49:
	.string	"SYSTEM_EVENT_SCAN_DONE"
.LASF103:
	.string	"system_event_ap_stadisconnected_t"
.LASF175:
	.string	"mesh_event_scan_done_t"
.LASF67:
	.string	"SYSTEM_EVENT_GOT_IP6"
.LASF47:
	.string	"tcpip_adapter_if_t"
.LASF171:
	.string	"rt_size_change"
.LASF105:
	.string	"system_event_ap_probe_req_rx_t"
.LASF223:
	.string	"g_mesh_event_cb"
.LASF139:
	.string	"MESH_EVENT_ROOT_GOT_IP"
.LASF192:
	.string	"float"
.LASF85:
	.string	"bssid"
.LASF180:
	.string	"no_parent"
.LASF123:
	.string	"MESH_EVENT_STOPPED"
.LASF95:
	.string	"ip_changed"
.LASF74:
	.string	"system_event_id_t"
.LASF22:
	.string	"_Bool"
.LASF19:
	.string	"int32_t"
.LASF5:
	.string	"unsigned char"
.LASF182:
	.string	"toDS_state"
.LASF114:
	.string	"sta_disconnected"
.LASF94:
	.string	"ip_info"
.LASF121:
	.string	"system_event_cb_t"
.LASF205:
	.string	"esp_event_send"
.LASF6:
	.string	"short int"
.LASF189:
	.string	"info"
.LASF206:
	.string	"mevent"
.LASF213:
	.string	"esp_log_timestamp"
.LASF156:
	.string	"MESH_TODS_UNREACHABLE"
.LASF91:
	.string	"old_mode"
.LASF60:
	.string	"SYSTEM_EVENT_STA_WPS_ER_PIN"
.LASF217:
	.string	"xQueueGenericCreate"
.LASF96:
	.string	"system_event_sta_got_ip_t"
.LASF44:
	.string	"TCPIP_ADAPTER_IF_AP"
.LASF89:
	.string	"reason"
.LASF126:
	.string	"MESH_EVENT_CHILD_DISCONNECTED"
.LASF86:
	.string	"channel"
.LASF109:
	.string	"auth_change"
.LASF73:
	.string	"SYSTEM_EVENT_MAX"
.LASF222:
	.string	"esp_event_loop_get_queue"
.LASF151:
	.string	"mesh_event_connected_t"
.LASF69:
	.string	"SYSTEM_EVENT_ETH_STOP"
.LASF212:
	.string	"esp_event_process_default"
.LASF166:
	.string	"mesh_event_child_disconnected_t"
.LASF191:
	.string	"mesh_event_cb_t"
.LASF37:
	.string	"ip6_addr"
.LASF15:
	.string	"char"
.LASF198:
	.string	"ESP_LOG_VERBOSE"
.LASF52:
	.string	"SYSTEM_EVENT_STA_CONNECTED"
.LASF62:
	.string	"SYSTEM_EVENT_AP_STOP"
.LASF7:
	.string	"__uint16_t"
.LASF108:
	.string	"scan_done"
.LASF193:
	.string	"ESP_LOG_NONE"
.LASF130:
	.string	"MESH_EVENT_PARENT_DISCONNECTED"
.LASF8:
	.string	"__int32_t"
.LASF71:
	.string	"SYSTEM_EVENT_ETH_DISCONNECTED"
.LASF58:
	.string	"SYSTEM_EVENT_STA_WPS_ER_FAILED"
.LASF57:
	.string	"SYSTEM_EVENT_STA_WPS_ER_SUCCESS"
.LASF210:
	.string	"s_event_handler_cb"
.LASF169:
	.string	"mesh_event_root_conflict_t"
.LASF194:
	.string	"ESP_LOG_ERROR"
.LASF35:
	.string	"ip4_addr_t"
.LASF177:
	.string	"child_connected"
.LASF106:
	.string	"connected"
.LASF179:
	.string	"routing_table"
.LASF20:
	.string	"uint32_t"
.LASF39:
	.string	"ip6_addr_t"
.LASF195:
	.string	"ESP_LOG_WARN"
.LASF48:
	.string	"SYSTEM_EVENT_WIFI_READY"
.LASF142:
	.string	"MESH_EVENT_ROOT_FIXED"
.LASF79:
	.string	"status"
.LASF147:
	.string	"mip_t"
.LASF21:
	.string	"esp_err_t"
.LASF161:
	.string	"mesh_event_vote_started_t"
.LASF53:
	.string	"SYSTEM_EVENT_STA_DISCONNECTED"
.LASF68:
	.string	"SYSTEM_EVENT_ETH_START"
.LASF17:
	.string	"uint8_t"
.LASF178:
	.string	"child_disconnected"
.LASF185:
	.string	"switch_req"
.LASF159:
	.string	"attempts"
.LASF165:
	.string	"mesh_event_child_connected_t"
.LASF219:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF127:
	.string	"MESH_EVENT_ROUTING_TABLE_ADD"
.LASF187:
	.string	"root_fixed"
.LASF199:
	.string	"esp_event_post_to_user"
.LASF77:
	.string	"WPS_FAIL_REASON_MAX"
.LASF181:
	.string	"layer_change"
.LASF141:
	.string	"MESH_EVENT_ROOT_ASKED_YIELD"
.LASF42:
	.string	"tcpip_adapter_ip6_info_t"
.LASF176:
	.string	"channel_switch"
.LASF82:
	.string	"system_event_sta_scan_done_t"
.LASF55:
	.string	"SYSTEM_EVENT_STA_GOT_IP"
.LASF66:
	.string	"SYSTEM_EVENT_AP_PROBEREQRECVED"
.LASF157:
	.string	"MESH_TODS_REACHABLE"
.LASF160:
	.string	"rc_addr"
.LASF61:
	.string	"SYSTEM_EVENT_AP_START"
.LASF27:
	.string	"WIFI_AUTH_WEP"
.LASF163:
	.string	"mesh_event_root_address_t"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
