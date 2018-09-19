	.file	"locks.c"
	.text
.Ltext0:
	.section	.iram1,"ax",@progbits
	.literal_position
	.literal .LC0, lock_init_spinlock
	.align	4
	.type	lock_init_generic, @function
lock_init_generic:
.LFB19:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/locks.c"
	.loc 1 50 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 51 0
	l32r	a10, .LC0
	call8	vTaskEnterCritical
.LVL1:
	.loc 1 52 0
	call8	xTaskGetSchedulerState
.LVL2:
	bnei	a10, 1, .L2
	.loc 1 54 0
	l32r	a10, .LC0
	call8	vTaskExitCritical
.LVL3:
	.loc 1 55 0
	retw.n
.L2:
	.loc 1 58 0
	l32i.n	a8, a2, 0
	bnez.n	a8, .L4
.LBB2:
	.loc 1 79 0
	mov.n	a10, a3
	call8	xQueueCreateMutex
.LVL4:
	.loc 1 80 0
	bnez.n	a10, .L5
	.loc 1 81 0
	call8	abort
.LVL5:
.L5:
	.loc 1 83 0
	s32i.n	a10, a2, 0
.LVL6:
.L4:
.LBE2:
	.loc 1 85 0
	l32r	a10, .LC0
	call8	vTaskExitCritical
.LVL7:
	retw.n
.LFE19:
	.size	lock_init_generic, .-lock_init_generic
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC2:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/newlib/locks.c"
	.align	4
.LC4:
	.string	"%s:%d (%s)- assert failed!\n"
	.section	.iram1
	.literal_position
	.literal .LC1, __FUNCTION__$5175
	.literal .LC3, .LC2
	.literal .LC5, .LC4
	.align	4
	.type	lock_acquire_generic, @function
lock_acquire_generic:
.LFB23:
	.loc 1 124 0
.LVL8:
	entry	sp, 48
.LCFI1:
	.loc 1 125 0
	l32i.n	a5, a2, 0
.LVL9:
	.loc 1 126 0
	bnez.n	a5, .L7
	.loc 1 127 0
	call8	xTaskGetSchedulerState
.LVL10:
	beqi	a10, 1, .L15
	.loc 1 132 0
	mov.n	a11, a4
	mov.n	a10, a2
	call8	lock_init_generic
.LVL11:
	.loc 1 133 0
	l32i.n	a5, a2, 0
.LVL12:
	.loc 1 134 0
	bnez.n	a5, .L7
	.loc 1 134 0 discriminator 1
	l32r	a13, .LC1
	movi	a12, 0x86
	l32r	a11, .LC3
	l32r	a10, .LC5
	call8	ets_printf
.LVL13:
	call8	abort
.LVL14:
.L7:
	.loc 1 138 0
	call8	xPortInIsrContext
.LVL15:
	beqz.n	a10, .L9
.LBB3:
	.loc 1 140 0
	bnei	a4, 4, .L10
	.loc 1 141 0
	call8	abort
.LVL16:
.L10:
	.loc 1 143 0
	movi.n	a2, 0
.LVL17:
	s32i.n	a2, sp, 0
	.loc 1 144 0
	mov.n	a12, sp
	mov.n	a11, a2
	mov.n	a10, a5
	call8	xQueueReceiveFromISR
.LVL18:
	mov.n	a5, a10
.LVL19:
	.loc 1 145 0
	movi.n	a8, 1
	mov.n	a4, a2
.LVL20:
	moveqz	a4, a8, a10
	moveqz	a8, a2, a3
	bnone	a8, a4, .L11
	.loc 1 146 0
	call8	abort
.LVL21:
.L11:
	.loc 1 148 0
	l32i.n	a2, sp, 0
	beqz.n	a2, .L13
	.loc 1 149 0
	call8	_frxt_setup_switch
.LVL22:
	j	.L13
.LVL23:
.L9:
.LBE3:
	.loc 1 154 0
	bnei	a4, 4, .L14
	.loc 1 155 0
	mov.n	a11, a3
	mov.n	a10, a5
	call8	xQueueTakeMutexRecursive
.LVL24:
	mov.n	a5, a10
.LVL25:
	j	.L13
.LVL26:
.L14:
	.loc 1 157 0
	movi.n	a13, 0
	mov.n	a12, a3
	mov.n	a11, a13
	mov.n	a10, a5
	call8	xQueueGenericReceive
.LVL27:
	mov.n	a5, a10
.LVL28:
.L13:
	.loc 1 161 0
	bnei	a5, 1, .L16
	movi.n	a2, 0
	retw.n
.LVL29:
.L15:
	.loc 1 128 0
	movi.n	a2, 0
.LVL30:
	retw.n
.LVL31:
.L16:
	.loc 1 161 0
	movi.n	a2, -1
	.loc 1 162 0
	retw.n
.LFE23:
	.size	lock_acquire_generic, .-lock_acquire_generic
	.align	4
	.type	lock_release_generic, @function
lock_release_generic:
.LFB28:
	.loc 1 183 0
.LVL32:
	entry	sp, 48
.LCFI2:
	.loc 1 184 0
	l32i.n	a2, a2, 0
.LVL33:
	.loc 1 185 0
	beqz.n	a2, .L17
	.loc 1 192 0
	call8	xPortInIsrContext
.LVL34:
	beqz.n	a10, .L19
.LBB4:
	.loc 1 193 0
	bnei	a3, 4, .L20
	.loc 1 194 0
	call8	abort
.LVL35:
.L20:
	.loc 1 196 0
	movi.n	a3, 0
.LVL36:
	s32i.n	a3, sp, 0
	.loc 1 197 0
	mov.n	a11, sp
	mov.n	a10, a2
	call8	xQueueGiveFromISR
.LVL37:
	.loc 1 198 0
	l32i.n	a2, sp, 0
.LVL38:
	beq	a2, a3, .L17
	.loc 1 199 0
	call8	_frxt_setup_switch
.LVL39:
	retw.n
.LVL40:
.L19:
.LBE4:
	.loc 1 202 0
	bnei	a3, 4, .L22
	.loc 1 203 0
	mov.n	a10, a2
	call8	xQueueGiveMutexRecursive
.LVL41:
	retw.n
.L22:
	.loc 1 205 0
	movi.n	a13, 0
	mov.n	a12, a13
	mov.n	a11, a13
	mov.n	a10, a2
	call8	xQueueGenericSend
.LVL42:
.L17:
	retw.n
.LFE28:
	.size	lock_release_generic, .-lock_release_generic
	.align	4
	.global	_lock_init
	.type	_lock_init, @function
_lock_init:
.LFB20:
	.loc 1 88 0
.LVL43:
	entry	sp, 32
.LCFI3:
	mov.n	a10, a2
	.loc 1 89 0
	movi.n	a8, 0
	s32i.n	a8, a2, 0
	.loc 1 90 0
	movi.n	a11, 1
	call8	lock_init_generic
.LVL44:
	retw.n
.LFE20:
	.size	_lock_init, .-_lock_init
	.align	4
	.global	_lock_init_recursive
	.type	_lock_init_recursive, @function
_lock_init_recursive:
.LFB21:
	.loc 1 93 0
.LVL45:
	entry	sp, 32
.LCFI4:
	mov.n	a10, a2
	.loc 1 94 0
	movi.n	a8, 0
	s32i.n	a8, a2, 0
	.loc 1 95 0
	movi.n	a11, 4
	call8	lock_init_generic
.LVL46:
	retw.n
.LFE21:
	.size	_lock_init_recursive, .-_lock_init_recursive
	.literal_position
	.literal .LC6, lock_init_spinlock
	.literal .LC7, __FUNCTION__$5168
	.literal .LC8, .LC2
	.literal .LC9, .LC4
	.align	4
	.global	_lock_close
	.type	_lock_close, @function
_lock_close:
.LFB22:
	.loc 1 108 0
.LVL47:
	entry	sp, 32
.LCFI5:
	.loc 1 109 0
	l32r	a10, .LC6
	call8	vTaskEnterCritical
.LVL48:
	.loc 1 110 0
	l32i.n	a3, a2, 0
	beqz.n	a3, .L26
.LVL49:
.LBB5:
	.loc 1 113 0
	mov.n	a10, a3
	call8	xQueueGetMutexHolder
.LVL50:
	beqz.n	a10, .L27
	.loc 1 113 0 discriminator 1
	l32r	a13, .LC7
	movi	a12, 0x71
	l32r	a11, .LC8
	l32r	a10, .LC9
	call8	ets_printf
.LVL51:
	call8	abort
.LVL52:
.L27:
	.loc 1 115 0
	mov.n	a10, a3
	call8	vQueueDelete
.LVL53:
	.loc 1 116 0
	movi.n	a3, 0
.LVL54:
	s32i.n	a3, a2, 0
.L26:
.LBE5:
	.loc 1 118 0
	l32r	a10, .LC6
	call8	vTaskExitCritical
.LVL55:
	retw.n
.LFE22:
	.size	_lock_close, .-_lock_close
	.align	4
	.global	_lock_acquire
	.type	_lock_acquire, @function
_lock_acquire:
.LFB24:
	.loc 1 164 0
.LVL56:
	entry	sp, 32
.LCFI6:
	.loc 1 165 0
	movi.n	a12, 1
	movi.n	a11, -1
	mov.n	a10, a2
	call8	lock_acquire_generic
.LVL57:
	retw.n
.LFE24:
	.size	_lock_acquire, .-_lock_acquire
	.align	4
	.global	_lock_acquire_recursive
	.type	_lock_acquire_recursive, @function
_lock_acquire_recursive:
.LFB25:
	.loc 1 168 0
.LVL58:
	entry	sp, 32
.LCFI7:
	.loc 1 169 0
	movi.n	a12, 4
	movi.n	a11, -1
	mov.n	a10, a2
	call8	lock_acquire_generic
.LVL59:
	retw.n
.LFE25:
	.size	_lock_acquire_recursive, .-_lock_acquire_recursive
	.align	4
	.global	_lock_try_acquire
	.type	_lock_try_acquire, @function
_lock_try_acquire:
.LFB26:
	.loc 1 172 0
.LVL60:
	entry	sp, 32
.LCFI8:
	.loc 1 173 0
	movi.n	a12, 1
	movi.n	a11, 0
	mov.n	a10, a2
	call8	lock_acquire_generic
.LVL61:
	.loc 1 174 0
	mov.n	a2, a10
.LVL62:
	retw.n
.LFE26:
	.size	_lock_try_acquire, .-_lock_try_acquire
	.align	4
	.global	_lock_try_acquire_recursive
	.type	_lock_try_acquire_recursive, @function
_lock_try_acquire_recursive:
.LFB27:
	.loc 1 176 0
.LVL63:
	entry	sp, 32
.LCFI9:
	.loc 1 177 0
	movi.n	a12, 4
	movi.n	a11, 0
	mov.n	a10, a2
	call8	lock_acquire_generic
.LVL64:
	.loc 1 178 0
	mov.n	a2, a10
.LVL65:
	retw.n
.LFE27:
	.size	_lock_try_acquire_recursive, .-_lock_try_acquire_recursive
	.align	4
	.global	_lock_release
	.type	_lock_release, @function
_lock_release:
.LFB29:
	.loc 1 210 0
.LVL66:
	entry	sp, 32
.LCFI10:
	.loc 1 211 0
	movi.n	a11, 1
	mov.n	a10, a2
	call8	lock_release_generic
.LVL67:
	retw.n
.LFE29:
	.size	_lock_release, .-_lock_release
	.align	4
	.global	_lock_release_recursive
	.type	_lock_release_recursive, @function
_lock_release_recursive:
.LFB30:
	.loc 1 214 0
.LVL68:
	entry	sp, 32
.LCFI11:
	.loc 1 215 0
	movi.n	a11, 4
	mov.n	a10, a2
	call8	lock_release_generic
.LVL69:
	retw.n
.LFE30:
	.size	_lock_release_recursive, .-_lock_release_recursive
	.section	.rodata.__FUNCTION__$5175,"a",@progbits
	.align	4
	.type	__FUNCTION__$5175, @object
	.size	__FUNCTION__$5175, 21
__FUNCTION__$5175:
	.string	"lock_acquire_generic"
	.section	.rodata.__FUNCTION__$5168,"a",@progbits
	.align	4
	.type	__FUNCTION__$5168, @object
	.size	__FUNCTION__$5168, 12
__FUNCTION__$5168:
	.string	"_lock_close"
	.section	.data.lock_init_spinlock,"aw",@progbits
	.align	4
	.type	lock_init_spinlock, @object
	.size	lock_init_spinlock, 8
lock_init_spinlock:
	.word	-1287651329
	.word	0
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
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI0-.LFB19
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI1-.LFB23
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI2-.LFB28
	.byte	0xe
	.uleb128 0x30
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
	.uleb128 0x20
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
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI6-.LFB24
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI7-.LFB25
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI8-.LFB26
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI9-.LFB27
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI10-.LFB29
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI11-.LFB30
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE22:
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/lock.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/portmacro.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/queue.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/semphr.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdlib.h"
	.file 9 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/task.h"
	.file 10 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/ets_sys.h"
	.file 11 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/portable.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x79d
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF59
	.byte	0xc
	.4byte	.LASF60
	.4byte	.LASF61
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF3
	.byte	0x2
	.byte	0xb
	.4byte	0x30
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x2
	.4byte	.LASF4
	.byte	0x3
	.byte	0x12
	.4byte	0x57
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x2
	.4byte	.LASF7
	.byte	0x3
	.byte	0x1a
	.4byte	0x37
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.uleb128 0x2
	.4byte	.LASF14
	.byte	0x4
	.byte	0x15
	.4byte	0x4c
	.uleb128 0x2
	.4byte	.LASF15
	.byte	0x4
	.byte	0x2d
	.4byte	0x65
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.4byte	.LASF16
	.uleb128 0x2
	.4byte	.LASF17
	.byte	0x5
	.byte	0x6f
	.4byte	0x30
	.uleb128 0x2
	.4byte	.LASF18
	.byte	0x5
	.byte	0x76
	.4byte	0xa7
	.uleb128 0x6
	.byte	0x8
	.byte	0x5
	.byte	0x82
	.4byte	0xf0
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x5
	.byte	0x8a
	.4byte	0xa7
	.byte	0
	.uleb128 0x7
	.4byte	.LASF20
	.byte	0x5
	.byte	0x8f
	.4byte	0xa7
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.4byte	.LASF21
	.byte	0x5
	.byte	0x94
	.4byte	0xcf
	.uleb128 0x2
	.4byte	.LASF22
	.byte	0x6
	.byte	0x58
	.4byte	0x8c
	.uleb128 0x2
	.4byte	.LASF23
	.byte	0x7
	.byte	0x4f
	.4byte	0xfb
	.uleb128 0x8
	.4byte	.LASF30
	.byte	0x1
	.byte	0x32
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1c5
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x1
	.byte	0x32
	.4byte	0x1c5
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x1
	.byte	0x32
	.4byte	0x9c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xa
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.4byte	0x17a
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0x1
	.byte	0x4f
	.4byte	0x106
	.4byte	.LLST0
	.uleb128 0xc
	.4byte	.LVL4
	.4byte	0x6e5
	.4byte	0x170
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0xe
	.4byte	.LVL5
	.4byte	0x6f1
	.byte	0
	.uleb128 0xc
	.4byte	.LVL1
	.4byte	0x6fc
	.4byte	0x191
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	lock_init_spinlock
	.byte	0
	.uleb128 0xe
	.4byte	.LVL2
	.4byte	0x707
	.uleb128 0xc
	.4byte	.LVL3
	.4byte	0x713
	.4byte	0x1b1
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	lock_init_spinlock
	.byte	0
	.uleb128 0xf
	.4byte	.LVL7
	.4byte	0x713
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	lock_init_spinlock
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x25
	.uleb128 0x11
	.4byte	.LASF62
	.byte	0x1
	.byte	0x7c
	.4byte	0x30
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x330
	.uleb128 0x12
	.4byte	.LASF24
	.byte	0x1
	.byte	0x7c
	.4byte	0x1c5
	.4byte	.LLST1
	.uleb128 0x9
	.4byte	.LASF26
	.byte	0x1
	.byte	0x7c
	.4byte	0xa7
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x12
	.4byte	.LASF25
	.byte	0x1
	.byte	0x7c
	.4byte	0x9c
	.4byte	.LLST2
	.uleb128 0x13
	.string	"h"
	.byte	0x1
	.byte	0x7d
	.4byte	0x106
	.4byte	.LLST3
	.uleb128 0x14
	.4byte	.LASF35
	.4byte	0x340
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5175
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0x1
	.byte	0x89
	.4byte	0xb9
	.4byte	.LLST4
	.uleb128 0xa
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.4byte	0x291
	.uleb128 0x15
	.4byte	.LASF29
	.byte	0x1
	.byte	0x8f
	.4byte	0xb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xe
	.4byte	.LVL16
	.4byte	0x6f1
	.uleb128 0xc
	.4byte	.LVL18
	.4byte	0x71e
	.4byte	0x27e
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0xe
	.4byte	.LVL21
	.4byte	0x6f1
	.uleb128 0xe
	.4byte	.LVL22
	.4byte	0x72a
	.byte	0
	.uleb128 0xe
	.4byte	.LVL10
	.4byte	0x707
	.uleb128 0xc
	.4byte	.LVL11
	.4byte	0x111
	.4byte	0x2b4
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0xc
	.4byte	.LVL13
	.4byte	0x736
	.4byte	0x2e3
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x86
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5175
	.byte	0
	.uleb128 0xe
	.4byte	.LVL14
	.4byte	0x6f1
	.uleb128 0xe
	.4byte	.LVL15
	.4byte	0x741
	.uleb128 0xc
	.4byte	.LVL24
	.4byte	0x74c
	.4byte	0x30f
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.4byte	.LVL27
	.4byte	0x758
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	0x95
	.4byte	0x340
	.uleb128 0x17
	.4byte	0x85
	.byte	0x14
	.byte	0
	.uleb128 0x18
	.4byte	0x330
	.uleb128 0x8
	.4byte	.LASF31
	.byte	0x1
	.byte	0xb7
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x40a
	.uleb128 0x12
	.4byte	.LASF24
	.byte	0x1
	.byte	0xb7
	.4byte	0x1c5
	.4byte	.LLST5
	.uleb128 0x12
	.4byte	.LASF25
	.byte	0x1
	.byte	0xb7
	.4byte	0x9c
	.4byte	.LLST6
	.uleb128 0x13
	.string	"h"
	.byte	0x1
	.byte	0xb8
	.4byte	0x106
	.4byte	.LLST7
	.uleb128 0xa
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.4byte	0x3cd
	.uleb128 0x15
	.4byte	.LASF29
	.byte	0x1
	.byte	0xc4
	.4byte	0xb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xe
	.4byte	.LVL35
	.4byte	0x6f1
	.uleb128 0xc
	.4byte	.LVL37
	.4byte	0x764
	.4byte	0x3c3
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0xe
	.4byte	.LVL39
	.4byte	0x72a
	.byte	0
	.uleb128 0xe
	.4byte	.LVL34
	.4byte	0x741
	.uleb128 0xc
	.4byte	.LVL41
	.4byte	0x770
	.4byte	0x3ea
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.4byte	.LVL42
	.4byte	0x77c
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LASF32
	.byte	0x1
	.byte	0x58
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x442
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x1
	.byte	0x58
	.4byte	0x1c5
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xf
	.4byte	.LVL44
	.4byte	0x111
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LASF33
	.byte	0x1
	.byte	0x5d
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x47a
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x1
	.byte	0x5d
	.4byte	0x1c5
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xf
	.4byte	.LVL46
	.4byte	0x111
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LASF34
	.byte	0x1
	.byte	0x6c
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x54d
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x1
	.byte	0x6c
	.4byte	0x1c5
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x14
	.4byte	.LASF35
	.4byte	0x55d
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5168
	.uleb128 0xa
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.4byte	0x522
	.uleb128 0x13
	.string	"h"
	.byte	0x1
	.byte	0x6f
	.4byte	0x106
	.4byte	.LLST8
	.uleb128 0xc
	.4byte	.LVL50
	.4byte	0x788
	.4byte	0x4d9
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0xc
	.4byte	.LVL51
	.4byte	0x736
	.4byte	0x508
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x71
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5168
	.byte	0
	.uleb128 0xe
	.4byte	.LVL52
	.4byte	0x6f1
	.uleb128 0xf
	.4byte	.LVL53
	.4byte	0x794
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	.LVL48
	.4byte	0x6fc
	.4byte	0x539
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	lock_init_spinlock
	.byte	0
	.uleb128 0xf
	.4byte	.LVL55
	.4byte	0x713
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	lock_init_spinlock
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	0x95
	.4byte	0x55d
	.uleb128 0x17
	.4byte	0x85
	.byte	0xb
	.byte	0
	.uleb128 0x18
	.4byte	0x54d
	.uleb128 0x19
	.4byte	.LASF36
	.byte	0x1
	.byte	0xa4
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5a0
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x1
	.byte	0xa4
	.4byte	0x1c5
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xf
	.4byte	.LVL57
	.4byte	0x1cb
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LASF37
	.byte	0x1
	.byte	0xa8
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5de
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x1
	.byte	0xa8
	.4byte	0x1c5
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xf
	.4byte	.LVL59
	.4byte	0x1cb
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF38
	.byte	0x1
	.byte	0xac
	.4byte	0x30
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x621
	.uleb128 0x12
	.4byte	.LASF24
	.byte	0x1
	.byte	0xac
	.4byte	0x1c5
	.4byte	.LLST9
	.uleb128 0xf
	.4byte	.LVL61
	.4byte	0x1cb
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF39
	.byte	0x1
	.byte	0xb0
	.4byte	0x30
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x664
	.uleb128 0x12
	.4byte	.LASF24
	.byte	0x1
	.byte	0xb0
	.4byte	0x1c5
	.4byte	.LLST10
	.uleb128 0xf
	.4byte	.LVL64
	.4byte	0x1cb
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LASF40
	.byte	0x1
	.byte	0xd2
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x69c
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x1
	.byte	0xd2
	.4byte	0x1c5
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xf
	.4byte	.LVL67
	.4byte	0x345
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LASF41
	.byte	0x1
	.byte	0xd6
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6d4
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x1
	.byte	0xd6
	.4byte	0x1c5
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xf
	.4byte	.LVL69
	.4byte	0x345
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF42
	.byte	0x1
	.byte	0x2a
	.4byte	0xf0
	.uleb128 0x5
	.byte	0x3
	.4byte	lock_init_spinlock
	.uleb128 0x1b
	.4byte	.LASF43
	.4byte	.LASF43
	.byte	0x6
	.2byte	0x578
	.uleb128 0x1c
	.4byte	.LASF44
	.4byte	.LASF44
	.byte	0x8
	.byte	0x47
	.uleb128 0x1c
	.4byte	.LASF45
	.4byte	.LASF45
	.byte	0x5
	.byte	0xda
	.uleb128 0x1b
	.4byte	.LASF46
	.4byte	.LASF46
	.byte	0x9
	.2byte	0x8be
	.uleb128 0x1c
	.4byte	.LASF47
	.4byte	.LASF47
	.byte	0x5
	.byte	0xd9
	.uleb128 0x1b
	.4byte	.LASF48
	.4byte	.LASF48
	.byte	0x6
	.2byte	0x543
	.uleb128 0x1b
	.4byte	.LASF49
	.4byte	.LASF49
	.byte	0x5
	.2byte	0x13a
	.uleb128 0x1c
	.4byte	.LASF50
	.4byte	.LASF50
	.byte	0xa
	.byte	0xde
	.uleb128 0x1c
	.4byte	.LASF51
	.4byte	.LASF51
	.byte	0xb
	.byte	0xb8
	.uleb128 0x1b
	.4byte	.LASF52
	.4byte	.LASF52
	.byte	0x6
	.2byte	0x582
	.uleb128 0x1b
	.4byte	.LASF53
	.4byte	.LASF53
	.byte	0x6
	.2byte	0x38a
	.uleb128 0x1b
	.4byte	.LASF54
	.4byte	.LASF54
	.byte	0x6
	.2byte	0x4f4
	.uleb128 0x1b
	.4byte	.LASF55
	.4byte	.LASF55
	.byte	0x6
	.2byte	0x583
	.uleb128 0x1b
	.4byte	.LASF56
	.4byte	.LASF56
	.byte	0x6
	.2byte	0x265
	.uleb128 0x1b
	.4byte	.LASF57
	.4byte	.LASF57
	.byte	0x6
	.2byte	0x57c
	.uleb128 0x1b
	.4byte	.LASF58
	.4byte	.LASF58
	.byte	0x6
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x1b
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
	.4byte	.LVL4
	.4byte	.LVL5-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL8
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL17
	.4byte	.LVL23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL30
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL8
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL20
	.4byte	.LVL23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL31
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL9
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL23
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL26
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL29
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL19
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL31
	.4byte	.LFE23
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL33
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL32
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL36
	.4byte	.LVL40
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL40
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL42
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL33
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL40
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL49
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL60
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL62
	.4byte	.LFE26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL63
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL65
	.4byte	.LFE27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x74
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF30:
	.string	"lock_init_generic"
.LASF46:
	.string	"xTaskGetSchedulerState"
.LASF45:
	.string	"vTaskEnterCritical"
.LASF50:
	.string	"ets_printf"
.LASF11:
	.string	"sizetype"
.LASF31:
	.string	"lock_release_generic"
.LASF7:
	.string	"__uint32_t"
.LASF26:
	.string	"delay"
.LASF32:
	.string	"_lock_init"
.LASF6:
	.string	"short int"
.LASF14:
	.string	"uint8_t"
.LASF48:
	.string	"xQueueReceiveFromISR"
.LASF36:
	.string	"_lock_acquire"
.LASF56:
	.string	"xQueueGenericSend"
.LASF62:
	.string	"lock_acquire_generic"
.LASF8:
	.string	"long long int"
.LASF18:
	.string	"TickType_t"
.LASF43:
	.string	"xQueueCreateMutex"
.LASF10:
	.string	"long int"
.LASF52:
	.string	"xQueueTakeMutexRecursive"
.LASF4:
	.string	"__uint8_t"
.LASF22:
	.string	"QueueHandle_t"
.LASF27:
	.string	"new_sem"
.LASF57:
	.string	"xQueueGetMutexHolder"
.LASF23:
	.string	"SemaphoreHandle_t"
.LASF5:
	.string	"unsigned char"
.LASF19:
	.string	"owner"
.LASF44:
	.string	"abort"
.LASF59:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF2:
	.string	"signed char"
.LASF9:
	.string	"long long unsigned int"
.LASF15:
	.string	"uint32_t"
.LASF21:
	.string	"portMUX_TYPE"
.LASF0:
	.string	"unsigned int"
.LASF17:
	.string	"BaseType_t"
.LASF37:
	.string	"_lock_acquire_recursive"
.LASF33:
	.string	"_lock_init_recursive"
.LASF1:
	.string	"short unsigned int"
.LASF13:
	.string	"char"
.LASF54:
	.string	"xQueueGiveFromISR"
.LASF24:
	.string	"lock"
.LASF16:
	.string	"_Bool"
.LASF20:
	.string	"count"
.LASF53:
	.string	"xQueueGenericReceive"
.LASF34:
	.string	"_lock_close"
.LASF60:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/newlib/locks.c"
.LASF25:
	.string	"mutex_type"
.LASF58:
	.string	"vQueueDelete"
.LASF12:
	.string	"long unsigned int"
.LASF40:
	.string	"_lock_release"
.LASF51:
	.string	"xPortInIsrContext"
.LASF39:
	.string	"_lock_try_acquire_recursive"
.LASF61:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\newlib"
.LASF3:
	.string	"_lock_t"
.LASF47:
	.string	"vTaskExitCritical"
.LASF38:
	.string	"_lock_try_acquire"
.LASF42:
	.string	"lock_init_spinlock"
.LASF49:
	.string	"_frxt_setup_switch"
.LASF35:
	.string	"__FUNCTION__"
.LASF28:
	.string	"success"
.LASF55:
	.string	"xQueueGiveMutexRecursive"
.LASF41:
	.string	"_lock_release_recursive"
.LASF29:
	.string	"higher_task_woken"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
