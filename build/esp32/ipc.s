	.file	"ipc.c"
	.text
.Ltext0:
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC0:
	.string	"cpuid == xPortGetCoreID()"
	.align	4
.LC3:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/esp32/ipc.c"
	.section	.iram1,"ax",@progbits
	.literal_position
	.literal .LC1, .LC0
	.literal .LC2, __func__$5313
	.literal .LC4, .LC3
	.literal .LC5, s_ipc_sem
	.literal .LC6, s_func
	.literal .LC7, s_func_arg
	.literal .LC8, s_ipc_wait
	.literal .LC9, s_ipc_ack
	.align	4
	.type	ipc_task, @function
ipc_task:
.LFB15:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/ipc.c"
	.loc 1 45 0
.LVL0:
	entry	sp, 32
.LCFI0:
.LVL1:
.LBB5:
.LBB6:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/portable.h"
	.loc 2 208 0
#APP
# 208 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/portable.h" 1
	rsr.prid a3
 extui a3,a3,13,1
# 0 "" 2
.LVL2:
#NO_APP
.LBE6:
.LBE5:
	.loc 1 47 0
	beq	a2, a3, .L5
	.loc 1 47 0 is_stmt 0 discriminator 1
	l32r	a13, .LC1
	l32r	a12, .LC2
	movi.n	a11, 0x2f
	l32r	a10, .LC4
	call8	__assert_func
.LVL3:
.L5:
.LBB7:
	.loc 1 52 0 is_stmt 1
	l32r	a8, .LC5
	addx4	a8, a2, a8
	movi.n	a13, 0
	movi.n	a12, -1
	mov.n	a11, a13
	l32i.n	a10, a8, 0
	call8	xQueueGenericReceive
.LVL4:
	beqi	a10, 1, .L3
	.loc 1 54 0
	call8	abort
.LVL5:
.L3:
	.loc 1 57 0
	l32r	a3, .LC6
	memw
	l32i.n	a3, a3, 0
.LVL6:
	.loc 1 58 0
	l32r	a4, .LC7
	memw
	l32i.n	a4, a4, 0
.LVL7:
	.loc 1 60 0
	l32r	a8, .LC8
	memw
	l32i.n	a8, a8, 0
	bnez.n	a8, .L4
	.loc 1 61 0
	movi.n	a13, 0
	mov.n	a12, a13
	mov.n	a11, a13
	l32r	a8, .LC9
	l32i.n	a10, a8, 0
	call8	xQueueGenericSend
.LVL8:
.L4:
	.loc 1 63 0
	mov.n	a10, a4
	callx8	a3
.LVL9:
	.loc 1 64 0
	l32r	a8, .LC8
	memw
	l32i.n	a8, a8, 0
	bnei	a8, 1, .L5
	.loc 1 65 0
	movi.n	a13, 0
	mov.n	a12, a13
	mov.n	a11, a13
	l32r	a3, .LC9
.LVL10:
	l32i.n	a10, a3, 0
	call8	xQueueGenericSend
.LVL11:
	j	.L5
.LBE7:
.LFE15:
	.size	ipc_task, .-ipc_task
	.section	.text.esp_ipc_call_and_wait,"ax",@progbits
	.literal_position
	.literal .LC10, s_ipc_mutex
	.literal .LC11, s_func
	.literal .LC12, s_func_arg
	.literal .LC13, s_ipc_wait
	.literal .LC14, s_ipc_sem
	.literal .LC15, s_ipc_ack
	.align	4
	.type	esp_ipc_call_and_wait, @function
esp_ipc_call_and_wait:
.LFB17:
	.loc 1 91 0
.LVL12:
	entry	sp, 32
.LCFI1:
	.loc 1 92 0
	bgeui	a2, 2, .L8
	.loc 1 95 0
	call8	xTaskGetSchedulerState
.LVL13:
	bnei	a10, 2, .L9
	.loc 1 99 0
	l32r	a5, .LC10
.LVL14:
	movi.n	a13, 0
	movi.n	a12, -1
	mov.n	a11, a13
	l32i.n	a10, a5, 0
	call8	xQueueGenericReceive
.LVL15:
	.loc 1 101 0
	l32r	a8, .LC11
	memw
	s32i.n	a3, a8, 0
	.loc 1 102 0
	l32r	a3, .LC12
.LVL16:
	memw
	s32i.n	a4, a3, 0
.LVL17:
	.loc 1 103 0
	movi.n	a3, 0
	l32r	a4, .LC13
.LVL18:
	memw
	s32i.n	a3, a4, 0
.LVL19:
	.loc 1 104 0
	l32r	a4, .LC14
	addx4	a2, a2, a4
.LVL20:
	mov.n	a13, a3
	mov.n	a12, a3
	mov.n	a11, a3
	l32i.n	a10, a2, 0
	call8	xQueueGenericSend
.LVL21:
	.loc 1 105 0
	mov.n	a13, a3
	movi.n	a12, -1
	mov.n	a11, a3
	l32r	a2, .LC15
	l32i.n	a10, a2, 0
	call8	xQueueGenericReceive
.LVL22:
	.loc 1 106 0
	mov.n	a13, a3
	mov.n	a12, a3
	mov.n	a11, a3
	l32i.n	a10, a5, 0
	call8	xQueueGenericSend
.LVL23:
	.loc 1 107 0
	mov.n	a2, a3
	retw.n
.LVL24:
.L8:
	.loc 1 93 0
	movi	a2, 0x102
.LVL25:
	retw.n
.LVL26:
.L9:
	.loc 1 96 0
	movi	a2, 0x103
.LVL27:
	.loc 1 108 0
	retw.n
.LFE17:
	.size	esp_ipc_call_and_wait, .-esp_ipc_call_and_wait
	.section	.rodata.str1.4
	.align	4
.LC18:
	.string	"ipc%d"
	.align	4
.LC23:
	.string	"res == pdTRUE"
	.section	.text.esp_ipc_init,"ax",@progbits
	.literal_position
	.literal .LC16, s_ipc_mutex
	.literal .LC17, s_ipc_ack
	.literal .LC19, .LC18
	.literal .LC20, s_ipc_sem
	.literal .LC21, s_ipc_tasks
	.literal .LC22, ipc_task
	.literal .LC24, .LC23
	.literal .LC25, __func__$5322
	.literal .LC26, .LC3
	.align	4
	.global	esp_ipc_init
	.type	esp_ipc_init, @function
esp_ipc_init:
.LFB16:
	.loc 1 77 0
	entry	sp, 64
.LCFI2:
	.loc 1 78 0
	movi.n	a10, 1
	call8	xQueueCreateMutex
.LVL28:
	l32r	a2, .LC16
	s32i.n	a10, a2, 0
	.loc 1 79 0
	movi.n	a12, 3
	movi.n	a11, 0
	movi.n	a10, 1
	call8	xQueueGenericCreate
.LVL29:
	l32r	a2, .LC17
	s32i.n	a10, a2, 0
.LVL30:
.LBB8:
	.loc 1 81 0
	movi.n	a2, 0
	j	.L11
.LVL31:
.L13:
.LBB9:
	.loc 1 82 0
	mov.n	a12, a2
	l32r	a11, .LC19
	addi	a10, sp, 16
	call8	sprintf
.LVL32:
	.loc 1 83 0
	movi.n	a12, 3
	movi.n	a11, 0
	movi.n	a10, 1
	call8	xQueueGenericCreate
.LVL33:
	slli	a15, a2, 2
	l32r	a8, .LC20
	add.n	a8, a8, a15
	s32i.n	a10, a8, 0
	.loc 1 84 0
	s32i.n	a2, sp, 0
	l32r	a8, .LC21
	add.n	a15, a8, a15
	movi.n	a14, 0x18
	mov.n	a13, a2
	movi	a12, 0x400
	addi	a11, sp, 16
	l32r	a10, .LC22
	call8	xTaskCreatePinnedToCore
.LVL34:
	.loc 1 86 0
	beqi	a10, 1, .L12
	.loc 1 86 0 is_stmt 0 discriminator 1
	l32r	a13, .LC24
	l32r	a12, .LC25
	movi.n	a11, 0x56
	l32r	a10, .LC26
.LVL35:
	call8	__assert_func
.LVL36:
.L12:
.LBE9:
	.loc 1 81 0 is_stmt 1 discriminator 2
	addi.n	a2, a2, 1
.LVL37:
.L11:
	.loc 1 81 0 is_stmt 0 discriminator 1
	blti	a2, 2, .L13
.LBE8:
	.loc 1 88 0 is_stmt 1
	retw.n
.LFE16:
	.size	esp_ipc_init, .-esp_ipc_init
	.section	.text.esp_ipc_call,"ax",@progbits
	.align	4
	.global	esp_ipc_call
	.type	esp_ipc_call, @function
esp_ipc_call:
.LFB18:
	.loc 1 111 0
.LVL38:
	entry	sp, 32
.LCFI3:
	.loc 1 112 0
	movi.n	a13, 0
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	esp_ipc_call_and_wait
.LVL39:
	.loc 1 113 0
	mov.n	a2, a10
.LVL40:
	retw.n
.LFE18:
	.size	esp_ipc_call, .-esp_ipc_call
	.section	.text.esp_ipc_call_blocking,"ax",@progbits
	.align	4
	.global	esp_ipc_call_blocking
	.type	esp_ipc_call_blocking, @function
esp_ipc_call_blocking:
.LFB19:
	.loc 1 116 0
.LVL41:
	entry	sp, 32
.LCFI4:
	.loc 1 117 0
	movi.n	a13, 1
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	esp_ipc_call_and_wait
.LVL42:
	.loc 1 118 0
	mov.n	a2, a10
.LVL43:
	retw.n
.LFE19:
	.size	esp_ipc_call_blocking, .-esp_ipc_call_blocking
	.section	.rodata.__func__$5313,"a",@progbits
	.align	4
	.type	__func__$5313, @object
	.size	__func__$5313, 9
__func__$5313:
	.string	"ipc_task"
	.section	.rodata.__func__$5322,"a",@progbits
	.align	4
	.type	__func__$5322, @object
	.size	__func__$5322, 13
__func__$5322:
	.string	"esp_ipc_init"
	.section	.bss.s_ipc_wait,"aw",@nobits
	.align	4
	.type	s_ipc_wait, @object
	.size	s_ipc_wait, 4
s_ipc_wait:
	.zero	4
	.section	.bss.s_func_arg,"aw",@nobits
	.align	4
	.type	s_func_arg, @object
	.size	s_func_arg, 4
s_func_arg:
	.zero	4
	.section	.bss.s_func,"aw",@nobits
	.align	4
	.type	s_func, @object
	.size	s_func, 4
s_func:
	.zero	4
	.section	.bss.s_ipc_ack,"aw",@nobits
	.align	4
	.type	s_ipc_ack, @object
	.size	s_ipc_ack, 4
s_ipc_ack:
	.zero	4
	.section	.bss.s_ipc_sem,"aw",@nobits
	.align	4
	.type	s_ipc_sem, @object
	.size	s_ipc_sem, 8
s_ipc_sem:
	.zero	8
	.section	.bss.s_ipc_mutex,"aw",@nobits
	.align	4
	.type	s_ipc_mutex, @object
	.size	s_ipc_mutex, 4
s_ipc_mutex:
	.zero	4
	.section	.bss.s_ipc_tasks,"aw",@nobits
	.align	4
	.type	s_ipc_tasks, @object
	.size	s_ipc_tasks, 8
s_ipc_tasks:
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
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI0-.LFB15
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI1-.LFB17
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
	.uleb128 0x40
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI3-.LFB18
	.byte	0xe
	.uleb128 0x20
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
	.uleb128 0x20
	.align	4
.LEFDE8:
	.text
.Letext0:
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_err.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_ipc.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/portmacro.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/task.h"
	.file 9 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/queue.h"
	.file 10 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/semphr.h"
	.file 11 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdlib.h"
	.file 12 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/assert.h"
	.file 13 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x6c2
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF55
	.byte	0xc
	.4byte	.LASF56
	.4byte	.LASF57
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
	.uleb128 0x4
	.4byte	.LASF5
	.byte	0x3
	.byte	0x12
	.4byte	0x4c
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x4
	.4byte	.LASF6
	.byte	0x3
	.byte	0x19
	.4byte	0x25
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x3
	.byte	0x1a
	.4byte	0x2c
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.uleb128 0x6
	.4byte	0x95
	.4byte	0xac
	.uleb128 0x7
	.4byte	0x85
	.byte	0x7
	.byte	0
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x4
	.byte	0x15
	.4byte	0x41
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x4
	.byte	0x2c
	.4byte	0x5a
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x4
	.byte	0x2d
	.4byte	0x65
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x5
	.byte	0x18
	.4byte	0xb7
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x6
	.byte	0x18
	.4byte	0xe3
	.uleb128 0x8
	.byte	0x4
	.4byte	0xe9
	.uleb128 0x9
	.4byte	0xf4
	.uleb128 0xa
	.4byte	0x8c
	.byte	0
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF19
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x7
	.byte	0x6f
	.4byte	0x25
	.uleb128 0x4
	.4byte	.LASF21
	.byte	0x7
	.byte	0x70
	.4byte	0x2c
	.uleb128 0x4
	.4byte	.LASF22
	.byte	0x7
	.byte	0x76
	.4byte	0xc2
	.uleb128 0x4
	.4byte	.LASF23
	.byte	0x8
	.byte	0x6b
	.4byte	0x8c
	.uleb128 0x4
	.4byte	.LASF24
	.byte	0x9
	.byte	0x58
	.4byte	0x8c
	.uleb128 0x4
	.4byte	.LASF25
	.byte	0xa
	.byte	0x4f
	.4byte	0x127
	.uleb128 0xb
	.byte	0x4
	.4byte	0x2c
	.byte	0x1
	.byte	0x23
	.4byte	0x156
	.uleb128 0xc
	.4byte	.LASF26
	.byte	0
	.uleb128 0xc
	.4byte	.LASF27
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF28
	.byte	0x1
	.byte	0x26
	.4byte	0x13d
	.uleb128 0xd
	.4byte	.LASF58
	.byte	0x2
	.byte	0xce
	.4byte	0xc2
	.byte	0x3
	.4byte	0x17c
	.uleb128 0xe
	.string	"id"
	.byte	0x2
	.byte	0xcf
	.4byte	0x25
	.byte	0
	.uleb128 0xf
	.4byte	.LASF32
	.byte	0x1
	.byte	0x2c
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2a4
	.uleb128 0x10
	.string	"arg"
	.byte	0x1
	.byte	0x2c
	.4byte	0x8c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x11
	.4byte	.LASF30
	.byte	0x1
	.byte	0x2e
	.4byte	0x2a4
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x12
	.4byte	.LASF29
	.4byte	0x2b9
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5313
	.uleb128 0x13
	.4byte	0x161
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.byte	0x1
	.byte	0x2f
	.4byte	0x1e1
	.uleb128 0x14
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.uleb128 0x15
	.4byte	0x171
	.4byte	.LLST0
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.4byte	0x278
	.uleb128 0x17
	.4byte	.LASF31
	.byte	0x1
	.byte	0x39
	.4byte	0xd8
	.4byte	.LLST1
	.uleb128 0x18
	.string	"arg"
	.byte	0x1
	.byte	0x3a
	.4byte	0x8c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x19
	.4byte	.LVL4
	.4byte	0x65c
	.4byte	0x228
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL5
	.4byte	0x668
	.uleb128 0x19
	.4byte	.LVL8
	.4byte	0x673
	.4byte	0x24e
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL9
	.4byte	0x25e
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL11
	.4byte	0x673
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL3
	.4byte	0x67f
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x2f
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5313
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	0xc2
	.uleb128 0x6
	.4byte	0x95
	.4byte	0x2b9
	.uleb128 0x7
	.4byte	0x85
	.byte	0x8
	.byte	0
	.uleb128 0x1e
	.4byte	0x2a9
	.uleb128 0x1f
	.4byte	.LASF33
	.byte	0x1
	.byte	0x5a
	.4byte	0xcd
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x397
	.uleb128 0x20
	.4byte	.LASF34
	.byte	0x1
	.byte	0x5a
	.4byte	0xc2
	.4byte	.LLST2
	.uleb128 0x20
	.4byte	.LASF31
	.byte	0x1
	.byte	0x5a
	.4byte	0xd8
	.4byte	.LLST3
	.uleb128 0x21
	.string	"arg"
	.byte	0x1
	.byte	0x5a
	.4byte	0x8c
	.4byte	.LLST4
	.uleb128 0x20
	.4byte	.LASF35
	.byte	0x1
	.byte	0x5a
	.4byte	0x156
	.4byte	.LLST5
	.uleb128 0x1b
	.4byte	.LVL13
	.4byte	0x68a
	.uleb128 0x19
	.4byte	.LVL15
	.4byte	0x65c
	.4byte	0x33a
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x19
	.4byte	.LVL21
	.4byte	0x673
	.4byte	0x35a
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL22
	.4byte	0x65c
	.4byte	0x37a
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL23
	.4byte	0x673
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	.LASF59
	.byte	0x1
	.byte	0x4c
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4d9
	.uleb128 0x11
	.4byte	.LASF36
	.byte	0x1
	.byte	0x50
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x12
	.4byte	.LASF29
	.4byte	0x4e9
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5322
	.uleb128 0x16
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.4byte	0x4ac
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.byte	0x51
	.4byte	0x25
	.4byte	.LLST6
	.uleb128 0x14
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.uleb128 0x23
	.string	"res"
	.byte	0x1
	.byte	0x54
	.4byte	0x25
	.4byte	.LLST7
	.uleb128 0x19
	.4byte	.LVL32
	.4byte	0x696
	.4byte	0x41e
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC18
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL33
	.4byte	0x6a1
	.4byte	0x43b
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x19
	.4byte	.LVL34
	.4byte	0x6ad
	.4byte	0x47f
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	ipc_task
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x400
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x48
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0xa
	.byte	0x72
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.4byte	s_ipc_tasks
	.byte	0x22
	.uleb128 0x1a
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL36
	.4byte	0x67f
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x56
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5322
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC23
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL28
	.4byte	0x6b9
	.4byte	0x4bf
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL29
	.4byte	0x6a1
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	0x95
	.4byte	0x4e9
	.uleb128 0x7
	.4byte	0x85
	.byte	0xc
	.byte	0
	.uleb128 0x1e
	.4byte	0x4d9
	.uleb128 0x24
	.4byte	.LASF37
	.byte	0x1
	.byte	0x6e
	.4byte	0xcd
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x552
	.uleb128 0x20
	.4byte	.LASF34
	.byte	0x1
	.byte	0x6e
	.4byte	0xc2
	.4byte	.LLST8
	.uleb128 0x25
	.4byte	.LASF31
	.byte	0x1
	.byte	0x6e
	.4byte	0xd8
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x10
	.string	"arg"
	.byte	0x1
	.byte	0x6e
	.4byte	0x8c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1d
	.4byte	.LVL39
	.4byte	0x2be
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.LASF38
	.byte	0x1
	.byte	0x73
	.4byte	0xcd
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5b6
	.uleb128 0x20
	.4byte	.LASF34
	.byte	0x1
	.byte	0x73
	.4byte	0xc2
	.4byte	.LLST9
	.uleb128 0x25
	.4byte	.LASF31
	.byte	0x1
	.byte	0x73
	.4byte	0xd8
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x10
	.string	"arg"
	.byte	0x1
	.byte	0x73
	.4byte	0x8c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1d
	.4byte	.LVL42
	.4byte	0x2be
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	0x11c
	.4byte	0x5c6
	.uleb128 0x7
	.4byte	0x85
	.byte	0x1
	.byte	0
	.uleb128 0x11
	.4byte	.LASF39
	.byte	0x1
	.byte	0x1c
	.4byte	0x5b6
	.uleb128 0x5
	.byte	0x3
	.4byte	s_ipc_tasks
	.uleb128 0x11
	.4byte	.LASF40
	.byte	0x1
	.byte	0x1d
	.4byte	0x132
	.uleb128 0x5
	.byte	0x3
	.4byte	s_ipc_mutex
	.uleb128 0x6
	.4byte	0x132
	.4byte	0x5f8
	.uleb128 0x7
	.4byte	0x85
	.byte	0x1
	.byte	0
	.uleb128 0x11
	.4byte	.LASF41
	.byte	0x1
	.byte	0x1e
	.4byte	0x5e8
	.uleb128 0x5
	.byte	0x3
	.4byte	s_ipc_sem
	.uleb128 0x11
	.4byte	.LASF42
	.byte	0x1
	.byte	0x1f
	.4byte	0x132
	.uleb128 0x5
	.byte	0x3
	.4byte	s_ipc_ack
	.uleb128 0x11
	.4byte	.LASF43
	.byte	0x1
	.byte	0x21
	.4byte	0x62b
	.uleb128 0x5
	.byte	0x3
	.4byte	s_func
	.uleb128 0x26
	.4byte	0xd8
	.uleb128 0x11
	.4byte	.LASF44
	.byte	0x1
	.byte	0x22
	.4byte	0x641
	.uleb128 0x5
	.byte	0x3
	.4byte	s_func_arg
	.uleb128 0x26
	.4byte	0x8c
	.uleb128 0x11
	.4byte	.LASF45
	.byte	0x1
	.byte	0x28
	.4byte	0x657
	.uleb128 0x5
	.byte	0x3
	.4byte	s_ipc_wait
	.uleb128 0x26
	.4byte	0x156
	.uleb128 0x27
	.4byte	.LASF46
	.4byte	.LASF46
	.byte	0x9
	.2byte	0x38a
	.uleb128 0x28
	.4byte	.LASF47
	.4byte	.LASF47
	.byte	0xb
	.byte	0x47
	.uleb128 0x27
	.4byte	.LASF48
	.4byte	.LASF48
	.byte	0x9
	.2byte	0x265
	.uleb128 0x28
	.4byte	.LASF49
	.4byte	.LASF49
	.byte	0xc
	.byte	0x29
	.uleb128 0x27
	.4byte	.LASF50
	.4byte	.LASF50
	.byte	0x8
	.2byte	0x8be
	.uleb128 0x28
	.4byte	.LASF51
	.4byte	.LASF51
	.byte	0xd
	.byte	0xde
	.uleb128 0x27
	.4byte	.LASF52
	.4byte	.LASF52
	.byte	0x9
	.2byte	0x5d0
	.uleb128 0x27
	.4byte	.LASF53
	.4byte	.LASF53
	.byte	0x8
	.2byte	0x14d
	.uleb128 0x27
	.4byte	.LASF54
	.4byte	.LASF54
	.byte	0x9
	.2byte	0x578
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
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x5
	.byte	0
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
	.uleb128 0xb
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
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0x10
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
	.uleb128 0x18
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
	.uleb128 0x14
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x17
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0x35
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
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL6
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL12
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL20
	.4byte	.LVL24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL27
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL12
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x5
	.byte	0x3
	.4byte	s_func
	.4byte	.LVL17
	.4byte	.LVL24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LFE17
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL12
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x5
	.byte	0x3
	.4byte	s_func_arg
	.4byte	.LVL19
	.4byte	.LVL24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LFE17
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL12
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL14
	.4byte	.LVL24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LFE17
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LFE16
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL38
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL40
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL41
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL43
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
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
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF41:
	.string	"s_ipc_sem"
.LASF39:
	.string	"s_ipc_tasks"
.LASF44:
	.string	"s_func_arg"
.LASF35:
	.string	"wait_for"
.LASF40:
	.string	"s_ipc_mutex"
.LASF38:
	.string	"esp_ipc_call_blocking"
.LASF4:
	.string	"short int"
.LASF11:
	.string	"sizetype"
.LASF58:
	.string	"xPortGetCoreID"
.LASF23:
	.string	"TaskHandle_t"
.LASF7:
	.string	"__uint32_t"
.LASF34:
	.string	"cpu_id"
.LASF18:
	.string	"esp_ipc_func_t"
.LASF37:
	.string	"esp_ipc_call"
.LASF26:
	.string	"IPC_WAIT_FOR_START"
.LASF16:
	.string	"uint32_t"
.LASF48:
	.string	"xQueueGenericSend"
.LASF31:
	.string	"func"
.LASF8:
	.string	"long long int"
.LASF9:
	.string	"long long unsigned int"
.LASF54:
	.string	"xQueueCreateMutex"
.LASF10:
	.string	"long int"
.LASF36:
	.string	"task_name"
.LASF56:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/esp32/ipc.c"
.LASF5:
	.string	"__uint8_t"
.LASF24:
	.string	"QueueHandle_t"
.LASF22:
	.string	"TickType_t"
.LASF3:
	.string	"unsigned char"
.LASF52:
	.string	"xQueueGenericCreate"
.LASF25:
	.string	"SemaphoreHandle_t"
.LASF29:
	.string	"__func__"
.LASF59:
	.string	"esp_ipc_init"
.LASF43:
	.string	"s_func"
.LASF47:
	.string	"abort"
.LASF2:
	.string	"signed char"
.LASF49:
	.string	"__assert_func"
.LASF51:
	.string	"sprintf"
.LASF0:
	.string	"unsigned int"
.LASF42:
	.string	"s_ipc_ack"
.LASF20:
	.string	"BaseType_t"
.LASF50:
	.string	"xTaskGetSchedulerState"
.LASF32:
	.string	"ipc_task"
.LASF13:
	.string	"char"
.LASF15:
	.string	"int32_t"
.LASF1:
	.string	"short unsigned int"
.LASF30:
	.string	"cpuid"
.LASF21:
	.string	"UBaseType_t"
.LASF19:
	.string	"_Bool"
.LASF46:
	.string	"xQueueGenericReceive"
.LASF33:
	.string	"esp_ipc_call_and_wait"
.LASF12:
	.string	"long unsigned int"
.LASF27:
	.string	"IPC_WAIT_FOR_END"
.LASF28:
	.string	"esp_ipc_wait_t"
.LASF53:
	.string	"xTaskCreatePinnedToCore"
.LASF6:
	.string	"__int32_t"
.LASF14:
	.string	"uint8_t"
.LASF45:
	.string	"s_ipc_wait"
.LASF57:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\esp32"
.LASF55:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF17:
	.string	"esp_err_t"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
