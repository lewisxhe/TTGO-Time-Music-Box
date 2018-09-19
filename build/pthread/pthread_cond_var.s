	.file	"pthread_cond_var.c"
	.text
.Ltext0:
	.section	.text.pthread_cond_signal,"ax",@progbits
	.align	4
	.global	pthread_cond_signal
	.type	pthread_cond_signal, @function
pthread_cond_signal:
.LFB15:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/pthread/pthread_cond_var.c"
	.loc 1 48 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 49 0
	beqz.n	a2, .L4
	.loc 1 49 0 discriminator 1
	l32i.n	a2, a2, 0
.LVL1:
	beqz.n	a2, .L5
.LVL2:
	.loc 1 55 0
	mov.n	a10, a2
	call8	_lock_acquire_recursive
.LVL3:
	.loc 1 57 0
	l32i.n	a8, a2, 4
.LVL4:
	.loc 1 58 0
	beqz.n	a8, .L3
	.loc 1 59 0
	movi.n	a13, 0
	mov.n	a12, a13
	mov.n	a11, a13
	l32i.n	a10, a8, 0
	call8	xQueueGenericSend
.LVL5:
.L3:
	.loc 1 61 0
	mov.n	a10, a2
	call8	_lock_release_recursive
.LVL6:
	.loc 1 63 0
	movi.n	a2, 0
.LVL7:
	retw.n
.LVL8:
.L4:
	.loc 1 50 0
	movi.n	a2, 0x16
.LVL9:
	retw.n
.L5:
	movi.n	a2, 0x16
	.loc 1 64 0
	retw.n
.LFE15:
	.size	pthread_cond_signal, .-pthread_cond_signal
	.section	.text.pthread_cond_broadcast,"ax",@progbits
	.align	4
	.global	pthread_cond_broadcast
	.type	pthread_cond_broadcast, @function
pthread_cond_broadcast:
.LFB16:
	.loc 1 67 0
.LVL10:
	entry	sp, 32
.LCFI1:
	.loc 1 68 0
	beqz.n	a2, .L10
	.loc 1 68 0 discriminator 1
	l32i.n	a3, a2, 0
	beqz.n	a3, .L11
.LVL11:
	.loc 1 74 0
	mov.n	a10, a3
	call8	_lock_acquire_recursive
.LVL12:
	.loc 1 76 0
	l32i.n	a2, a3, 4
.LVL13:
	j	.L8
.L9:
	.loc 1 77 0 discriminator 3
	movi.n	a13, 0
	mov.n	a12, a13
	mov.n	a11, a13
	l32i.n	a10, a2, 0
	call8	xQueueGenericSend
.LVL14:
	.loc 1 76 0 discriminator 3
	l32i.n	a2, a2, 4
.LVL15:
.L8:
	.loc 1 76 0 is_stmt 0 discriminator 1
	bnez.n	a2, .L9
	.loc 1 79 0 is_stmt 1
	mov.n	a10, a3
	call8	_lock_release_recursive
.LVL16:
	.loc 1 81 0
	retw.n
.LVL17:
.L10:
	.loc 1 69 0
	movi.n	a2, 0x16
.LVL18:
	retw.n
.LVL19:
.L11:
	movi.n	a2, 0x16
.LVL20:
	.loc 1 82 0
	retw.n
.LFE16:
	.size	pthread_cond_broadcast, .-pthread_cond_broadcast
	.section	.text.pthread_cond_timedwait,"ax",@progbits
	.literal_position
	.literal .LC0, 274877907
	.literal .LC1, 1000000
	.literal .LC2, -858993459
	.align	4
	.global	pthread_cond_timedwait
	.type	pthread_cond_timedwait, @function
pthread_cond_timedwait:
.LFB18:
	.loc 1 90 0
.LVL21:
	entry	sp, 64
.LCFI2:
	.loc 1 94 0
	beqz.n	a2, .L25
	.loc 1 94 0 discriminator 1
	l32i.n	a5, a2, 0
	beqz.n	a5, .L26
.LVL22:
	.loc 1 100 0
	beqz.n	a4, .L27
.LBB2:
	.loc 1 106 0
	movi.n	a11, 0
	addi	a10, sp, 20
	call8	gettimeofday
.LVL23:
	.loc 1 108 0
	l32i.n	a8, a4, 0
	.loc 1 109 0
	l32i.n	a4, a4, 4
.LVL24:
	l32r	a2, .LC0
.LVL25:
	mulsh	a2, a4, a2
	srai	a2, a2, 6
	srai	a4, a4, 31
	sub	a2, a2, a4
	.loc 1 111 0
	l32i.n	a9, sp, 20
	bne	a8, a9, .L15
	.loc 1 111 0 is_stmt 0 discriminator 1
	movi.n	a4, 1
	l32i.n	a10, sp, 24
	blt	a2, a10, .L16
	movi.n	a4, 0
.L16:
	extui	a4, a4, 0, 8
	j	.L17
.L15:
	.loc 1 111 0 discriminator 2
	movi.n	a4, 1
	blt	a8, a9, .L18
	movi.n	a4, 0
.L18:
	extui	a4, a4, 0, 8
.L17:
	.loc 1 111 0 discriminator 4
	bnez.n	a4, .L28
	.loc 1 117 0 is_stmt 1
	sub	a8, a8, a9
	s32i.n	a8, sp, 12
	l32i.n	a4, sp, 24
	sub	a2, a2, a4
	s32i.n	a2, sp, 16
	bgez	a2, .L20
	.loc 1 117 0 is_stmt 0 discriminator 1
	addi.n	a8, a8, -1
	s32i.n	a8, sp, 12
	l32r	a4, .LC1
	add.n	a2, a2, a4
	s32i.n	a2, sp, 16
.L20:
	.loc 1 118 0 is_stmt 1
	l32i.n	a4, sp, 12
	slli	a2, a4, 5
	sub	a2, a2, a4
	addx4	a4, a2, a4
	slli	a9, a4, 3
	l32i.n	a8, sp, 16
	l32r	a4, .LC0
	mulsh	a4, a8, a4
	srai	a4, a4, 6
	srai	a2, a8, 31
	sub	a2, a4, a2
	add.n	a2, a9, a2
.LVL26:
	j	.L19
.LVL27:
.L28:
	.loc 1 115 0
	movi.n	a2, 0
.L19:
.LVL28:
	.loc 1 121 0
	bgei	a2, 1, .L21
	.loc 1 122 0
	movi	a2, 0x74
.LVL29:
	retw.n
.LVL30:
.L21:
	.loc 1 125 0
	l32r	a4, .LC2
	muluh	a2, a2, a4
.LVL31:
	srli	a2, a2, 3
.LVL32:
	j	.L14
.LVL33:
.L27:
.LBE2:
	.loc 1 101 0
	movi.n	a2, -1
.LVL34:
.L14:
	.loc 1 129 0
	movi.n	a11, 0
	movi.n	a10, 1
	call8	xQueueCreateCountingSemaphore
.LVL35:
	s32i.n	a10, sp, 0
	.loc 1 131 0
	mov.n	a10, a5
	call8	_lock_acquire_recursive
.LVL36:
	.loc 1 132 0
	movi.n	a4, 0
	s32i.n	a4, sp, 4
	.loc 1 132 0
	l32i.n	a8, a5, 8
	s32i.n	a8, sp, 8
	l32i.n	a8, a5, 8
	s32i.n	sp, a8, 0
	addi.n	a8, sp, 4
	s32i.n	a8, a5, 8
	.loc 1 133 0
	mov.n	a10, a5
	call8	_lock_release_recursive
.LVL37:
	.loc 1 134 0
	mov.n	a10, a3
	call8	pthread_mutex_unlock
.LVL38:
	.loc 1 136 0
	mov.n	a13, a4
	mov.n	a12, a2
	mov.n	a11, a4
	l32i.n	a10, sp, 0
	call8	xQueueGenericReceive
.LVL39:
	bnei	a10, 1, .L29
	.loc 1 137 0
	mov.n	a2, a4
.LVL40:
	j	.L22
.LVL41:
.L29:
	.loc 1 139 0
	movi	a2, 0x74
.LVL42:
.L22:
	.loc 1 142 0
	mov.n	a10, a5
	call8	_lock_acquire_recursive
.LVL43:
	.loc 1 143 0
	l32i.n	a4, sp, 4
	beqz.n	a4, .L23
	.loc 1 143 0 discriminator 1
	l32i.n	a8, sp, 8
	s32i.n	a8, a4, 8
	j	.L24
.L23:
	.loc 1 143 0 is_stmt 0 discriminator 2
	l32i.n	a8, sp, 8
	s32i.n	a8, a5, 8
.L24:
	.loc 1 143 0 discriminator 4
	l32i.n	a8, sp, 8
	s32i.n	a4, a8, 0
	.loc 1 144 0 is_stmt 1 discriminator 4
	mov.n	a10, a5
	call8	_lock_release_recursive
.LVL44:
	.loc 1 145 0 discriminator 4
	l32i.n	a10, sp, 0
	call8	vQueueDelete
.LVL45:
	.loc 1 147 0 discriminator 4
	mov.n	a10, a3
	call8	pthread_mutex_lock
.LVL46:
	.loc 1 148 0 discriminator 4
	retw.n
.LVL47:
.L25:
	.loc 1 95 0
	movi.n	a2, 0x16
.LVL48:
	retw.n
.LVL49:
.L26:
	movi.n	a2, 0x16
.LVL50:
	.loc 1 149 0
	retw.n
.LFE18:
	.size	pthread_cond_timedwait, .-pthread_cond_timedwait
	.section	.text.pthread_cond_wait,"ax",@progbits
	.align	4
	.global	pthread_cond_wait
	.type	pthread_cond_wait, @function
pthread_cond_wait:
.LFB17:
	.loc 1 85 0
.LVL51:
	entry	sp, 32
.LCFI3:
	.loc 1 86 0
	movi.n	a12, 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	pthread_cond_timedwait
.LVL52:
	.loc 1 87 0
	mov.n	a2, a10
.LVL53:
	retw.n
.LFE17:
	.size	pthread_cond_wait, .-pthread_cond_wait
	.section	.text.pthread_condattr_init,"ax",@progbits
	.align	4
	.global	pthread_condattr_init
	.type	pthread_condattr_init, @function
pthread_condattr_init:
.LFB19:
	.loc 1 152 0
.LVL54:
	entry	sp, 32
.LCFI4:
	.loc 1 155 0
	movi.n	a2, 0x58
.LVL55:
	retw.n
.LFE19:
	.size	pthread_condattr_init, .-pthread_condattr_init
	.section	.text.pthread_cond_init,"ax",@progbits
	.align	4
	.global	pthread_cond_init
	.type	pthread_cond_init, @function
pthread_cond_init:
.LFB20:
	.loc 1 158 0
.LVL56:
	entry	sp, 32
.LCFI5:
	.loc 1 161 0
	beqz.n	a2, .L34
	.loc 1 165 0
	movi.n	a11, 0xc
	movi.n	a10, 1
	call8	calloc
.LVL57:
	mov.n	a3, a10
.LVL58:
	.loc 1 166 0
	beqz.n	a10, .L35
	.loc 1 170 0
	call8	_lock_init_recursive
.LVL59:
	.loc 1 171 0
	movi.n	a8, 0
	s32i.n	a8, a3, 4
	.loc 1 171 0
	addi.n	a9, a3, 4
	s32i.n	a9, a3, 8
	.loc 1 173 0
	s32i.n	a3, a2, 0
	.loc 1 174 0
	mov.n	a2, a8
.LVL60:
	retw.n
.LVL61:
.L34:
	.loc 1 162 0
	movi.n	a2, 0x16
.LVL62:
	retw.n
.LVL63:
.L35:
	.loc 1 167 0
	movi.n	a2, 0xc
.LVL64:
	.loc 1 175 0
	retw.n
.LFE20:
	.size	pthread_cond_init, .-pthread_cond_init
	.section	.text.pthread_cond_destroy,"ax",@progbits
	.align	4
	.global	pthread_cond_destroy
	.type	pthread_cond_destroy, @function
pthread_cond_destroy:
.LFB21:
	.loc 1 178 0
.LVL65:
	entry	sp, 32
.LCFI6:
.LVL66:
	.loc 1 181 0
	beqz.n	a2, .L39
	.loc 1 181 0 discriminator 1
	l32i.n	a4, a2, 0
	beqz.n	a4, .L40
.LVL67:
	.loc 1 187 0
	mov.n	a10, a4
	call8	_lock_acquire_recursive
.LVL68:
	.loc 1 188 0
	l32i.n	a3, a4, 4
	beqz.n	a3, .L38
	.loc 1 189 0
	movi.n	a3, 0x10
.L38:
.LVL69:
	.loc 1 191 0
	mov.n	a10, a4
	call8	_lock_release_recursive
.LVL70:
	.loc 1 193 0
	bnez.n	a3, .L42
	.loc 1 194 0
	movi.n	a8, 0
	s32i.n	a8, a2, 0
	.loc 1 195 0
	mov.n	a10, a4
	call8	_lock_close_recursive
.LVL71:
	.loc 1 196 0
	mov.n	a10, a4
	call8	free
.LVL72:
	.loc 1 199 0
	mov.n	a2, a3
.LVL73:
	retw.n
.LVL74:
.L39:
	.loc 1 182 0
	movi.n	a2, 0x16
.LVL75:
	retw.n
.LVL76:
.L40:
	movi.n	a2, 0x16
.LVL77:
	retw.n
.LVL78:
.L42:
	.loc 1 199 0
	mov.n	a2, a3
.LVL79:
	.loc 1 200 0
	retw.n
.LFE21:
	.size	pthread_cond_destroy, .-pthread_cond_destroy
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
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI3-.LFB17
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
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI6-.LFB21
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/lock.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/types.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/portmacro.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/queue.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/semphr.h"
	.file 9 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/time.h"
	.file 10 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/pthread.h"
	.file 11 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdlib.h"
	.file 12 "D:/ESP32/esp-idf-v3.1-rc1/components/log/include/esp_log.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x76a
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF75
	.byte	0xc
	.4byte	.LASF76
	.4byte	.LASF77
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
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x2
	.byte	0x1a
	.4byte	0x2c
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x3
	.byte	0xb
	.4byte	0x25
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x6
	.byte	0x4
	.4byte	0x97
	.uleb128 0x7
	.4byte	0x8a
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x4
	.byte	0x7a
	.4byte	0x73
	.uleb128 0x8
	.4byte	.LASF27
	.byte	0x8
	.byte	0x4
	.byte	0x82
	.4byte	0xcc
	.uleb128 0x9
	.4byte	.LASF14
	.byte	0x4
	.byte	0x83
	.4byte	0x9c
	.byte	0
	.uleb128 0x9
	.4byte	.LASF15
	.byte	0x4
	.byte	0x84
	.4byte	0x73
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.4byte	.LASF16
	.byte	0x4
	.2byte	0x11d
	.4byte	0x73
	.uleb128 0xa
	.4byte	.LASF17
	.byte	0x4
	.2byte	0x1ba
	.4byte	0x4f
	.uleb128 0xa
	.4byte	.LASF18
	.byte	0x4
	.2byte	0x1ce
	.4byte	0x4f
	.uleb128 0xb
	.byte	0x4
	.byte	0x4
	.2byte	0x1d0
	.4byte	0x107
	.uleb128 0xc
	.4byte	.LASF19
	.byte	0x4
	.2byte	0x1d1
	.4byte	0x25
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	.LASF20
	.byte	0x4
	.2byte	0x1d5
	.4byte	0xf0
	.uleb128 0x4
	.4byte	.LASF21
	.byte	0x5
	.byte	0x2d
	.4byte	0x4f
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF22
	.uleb128 0x4
	.4byte	.LASF23
	.byte	0x6
	.byte	0x6f
	.4byte	0x25
	.uleb128 0x4
	.4byte	.LASF24
	.byte	0x6
	.byte	0x76
	.4byte	0x113
	.uleb128 0x4
	.4byte	.LASF25
	.byte	0x7
	.byte	0x58
	.4byte	0x81
	.uleb128 0x4
	.4byte	.LASF26
	.byte	0x8
	.byte	0x4f
	.4byte	0x13b
	.uleb128 0x8
	.4byte	.LASF28
	.byte	0x8
	.byte	0x9
	.byte	0x11
	.4byte	0x176
	.uleb128 0x9
	.4byte	.LASF14
	.byte	0x9
	.byte	0x12
	.4byte	0x9c
	.byte	0
	.uleb128 0x9
	.4byte	.LASF29
	.byte	0x9
	.byte	0x13
	.4byte	0xcc
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x2c
	.byte	0xc
	.byte	0x1f
	.4byte	0x1a7
	.uleb128 0xe
	.4byte	.LASF30
	.byte	0
	.uleb128 0xe
	.4byte	.LASF31
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF32
	.byte	0x2
	.uleb128 0xe
	.4byte	.LASF33
	.byte	0x3
	.uleb128 0xe
	.4byte	.LASF34
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF35
	.byte	0x5
	.byte	0
	.uleb128 0xf
	.byte	0x8
	.byte	0x1
	.byte	0x27
	.4byte	0x1c8
	.uleb128 0x9
	.4byte	.LASF36
	.byte	0x1
	.byte	0x27
	.4byte	0x1ed
	.byte	0
	.uleb128 0x9
	.4byte	.LASF37
	.byte	0x1
	.byte	0x27
	.4byte	0x1f3
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.4byte	.LASF38
	.byte	0xc
	.byte	0x1
	.byte	0x25
	.4byte	0x1ed
	.uleb128 0x9
	.4byte	.LASF39
	.byte	0x1
	.byte	0x26
	.4byte	0x146
	.byte	0
	.uleb128 0x9
	.4byte	.LASF40
	.byte	0x1
	.byte	0x27
	.4byte	0x1a7
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1c8
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1ed
	.uleb128 0x4
	.4byte	.LASF41
	.byte	0x1
	.byte	0x28
	.4byte	0x1c8
	.uleb128 0xf
	.byte	0x8
	.byte	0x1
	.byte	0x2c
	.4byte	0x225
	.uleb128 0x9
	.4byte	.LASF42
	.byte	0x1
	.byte	0x2c
	.4byte	0x1ed
	.byte	0
	.uleb128 0x9
	.4byte	.LASF43
	.byte	0x1
	.byte	0x2c
	.4byte	0x1f3
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.4byte	.LASF44
	.byte	0xc
	.byte	0x1
	.byte	0x2a
	.4byte	0x24a
	.uleb128 0x9
	.4byte	.LASF45
	.byte	0x1
	.byte	0x2b
	.4byte	0x68
	.byte	0
	.uleb128 0x9
	.4byte	.LASF46
	.byte	0x1
	.byte	0x2c
	.4byte	0x204
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF47
	.byte	0x1
	.byte	0x2d
	.4byte	0x225
	.uleb128 0x10
	.4byte	.LASF50
	.byte	0x1
	.byte	0x2f
	.4byte	0x25
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2dc
	.uleb128 0x11
	.string	"cv"
	.byte	0x1
	.byte	0x2f
	.4byte	0x2dc
	.4byte	.LLST0
	.uleb128 0x12
	.4byte	.LASF48
	.byte	0x1
	.byte	0x35
	.4byte	0x2e2
	.4byte	.LLST1
	.uleb128 0x12
	.4byte	.LASF49
	.byte	0x1
	.byte	0x38
	.4byte	0x2e8
	.4byte	.LLST2
	.uleb128 0x13
	.4byte	.LVL3
	.4byte	0x6ca
	.4byte	0x2ae
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL5
	.4byte	0x6d5
	.4byte	0x2cb
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x15
	.4byte	.LVL6
	.4byte	0x6e1
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xe4
	.uleb128 0x6
	.byte	0x4
	.4byte	0x24a
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1f9
	.uleb128 0x10
	.4byte	.LASF51
	.byte	0x1
	.byte	0x42
	.4byte	0x25
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x375
	.uleb128 0x11
	.string	"cv"
	.byte	0x1
	.byte	0x42
	.4byte	0x2dc
	.4byte	.LLST3
	.uleb128 0x12
	.4byte	.LASF48
	.byte	0x1
	.byte	0x48
	.4byte	0x2e2
	.4byte	.LLST4
	.uleb128 0x12
	.4byte	.LASF49
	.byte	0x1
	.byte	0x4b
	.4byte	0x2e8
	.4byte	.LLST5
	.uleb128 0x13
	.4byte	.LVL12
	.4byte	0x6ca
	.4byte	0x347
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL14
	.4byte	0x6d5
	.4byte	0x364
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x15
	.4byte	.LVL16
	.4byte	0x6e1
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	.LASF52
	.byte	0x1
	.byte	0x59
	.4byte	0x25
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4ff
	.uleb128 0x11
	.string	"cv"
	.byte	0x1
	.byte	0x59
	.4byte	0x2dc
	.4byte	.LLST6
	.uleb128 0x16
	.string	"mut"
	.byte	0x1
	.byte	0x59
	.4byte	0x4ff
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x11
	.string	"to"
	.byte	0x1
	.byte	0x59
	.4byte	0x505
	.4byte	.LLST7
	.uleb128 0x17
	.string	"ret"
	.byte	0x1
	.byte	0x5b
	.4byte	0x25
	.4byte	.LLST8
	.uleb128 0x12
	.4byte	.LASF53
	.byte	0x1
	.byte	0x5c
	.4byte	0x130
	.4byte	.LLST9
	.uleb128 0x12
	.4byte	.LASF48
	.byte	0x1
	.byte	0x62
	.4byte	0x2e2
	.4byte	.LLST10
	.uleb128 0x18
	.string	"w"
	.byte	0x1
	.byte	0x80
	.4byte	0x1f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x19
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.4byte	0x449
	.uleb128 0x1a
	.4byte	.LASF78
	.byte	0x1
	.byte	0x67
	.4byte	0x151
	.uleb128 0x1b
	.4byte	.LASF54
	.byte	0x1
	.byte	0x67
	.4byte	0x151
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1b
	.4byte	.LASF55
	.byte	0x1
	.byte	0x67
	.4byte	0x151
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x12
	.4byte	.LASF56
	.byte	0x1
	.byte	0x68
	.4byte	0x73
	.4byte	.LLST11
	.uleb128 0x15
	.4byte	.LVL23
	.4byte	0x6ec
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL35
	.4byte	0x6f7
	.4byte	0x461
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x13
	.4byte	.LVL36
	.4byte	0x6ca
	.4byte	0x475
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL37
	.4byte	0x6e1
	.4byte	0x489
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL38
	.4byte	0x703
	.4byte	0x49d
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL39
	.4byte	0x70e
	.4byte	0x4bd
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL43
	.4byte	0x6ca
	.4byte	0x4d1
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL44
	.4byte	0x6e1
	.4byte	0x4e5
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL45
	.4byte	0x71a
	.uleb128 0x15
	.4byte	.LVL46
	.4byte	0x726
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xd8
	.uleb128 0x6
	.byte	0x4
	.4byte	0x50b
	.uleb128 0x7
	.4byte	0xa7
	.uleb128 0x10
	.4byte	.LASF57
	.byte	0x1
	.byte	0x54
	.4byte	0x25
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x560
	.uleb128 0x11
	.string	"cv"
	.byte	0x1
	.byte	0x54
	.4byte	0x2dc
	.4byte	.LLST12
	.uleb128 0x16
	.string	"mut"
	.byte	0x1
	.byte	0x54
	.4byte	0x4ff
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x15
	.4byte	.LVL52
	.4byte	0x375
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	.LASF58
	.byte	0x1
	.byte	0x97
	.4byte	0x25
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x592
	.uleb128 0x1d
	.4byte	.LASF59
	.byte	0x1
	.byte	0x97
	.4byte	0x592
	.4byte	.LLST13
	.uleb128 0x1e
	.4byte	.LASF79
	.4byte	0x5a8
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x107
	.uleb128 0x1f
	.4byte	0x8a
	.4byte	0x5a8
	.uleb128 0x20
	.4byte	0x7a
	.byte	0x15
	.byte	0
	.uleb128 0x7
	.4byte	0x598
	.uleb128 0x10
	.4byte	.LASF60
	.byte	0x1
	.byte	0x9d
	.4byte	0x25
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x61b
	.uleb128 0x11
	.string	"cv"
	.byte	0x1
	.byte	0x9d
	.4byte	0x2dc
	.4byte	.LLST14
	.uleb128 0x11
	.string	"att"
	.byte	0x1
	.byte	0x9d
	.4byte	0x61b
	.4byte	.LLST15
	.uleb128 0x12
	.4byte	.LASF48
	.byte	0x1
	.byte	0xa5
	.4byte	0x2e2
	.4byte	.LLST16
	.uleb128 0x13
	.4byte	.LVL57
	.4byte	0x731
	.4byte	0x60a
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x3c
	.byte	0
	.uleb128 0x15
	.4byte	.LVL59
	.4byte	0x73c
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x621
	.uleb128 0x7
	.4byte	0x107
	.uleb128 0x10
	.4byte	.LASF61
	.byte	0x1
	.byte	0xb1
	.4byte	0x25
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6b8
	.uleb128 0x11
	.string	"cv"
	.byte	0x1
	.byte	0xb1
	.4byte	0x2dc
	.4byte	.LLST17
	.uleb128 0x17
	.string	"ret"
	.byte	0x1
	.byte	0xb3
	.4byte	0x25
	.4byte	.LLST18
	.uleb128 0x12
	.4byte	.LASF48
	.byte	0x1
	.byte	0xb9
	.4byte	0x2e2
	.4byte	.LLST19
	.uleb128 0x13
	.4byte	.LVL68
	.4byte	0x6ca
	.4byte	0x67f
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL70
	.4byte	0x6e1
	.4byte	0x693
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL71
	.4byte	0x747
	.4byte	0x6a7
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL72
	.4byte	0x752
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x18
	.string	"TAG"
	.byte	0x1
	.byte	0x23
	.4byte	0x91
	.uleb128 0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+1885
	.sleb128 0
	.uleb128 0x21
	.4byte	.LASF62
	.4byte	.LASF62
	.byte	0x3
	.byte	0x21
	.uleb128 0x22
	.4byte	.LASF63
	.4byte	.LASF63
	.byte	0x7
	.2byte	0x265
	.uleb128 0x21
	.4byte	.LASF64
	.4byte	.LASF64
	.byte	0x3
	.byte	0x25
	.uleb128 0x21
	.4byte	.LASF65
	.4byte	.LASF65
	.byte	0x9
	.byte	0x4d
	.uleb128 0x22
	.4byte	.LASF66
	.4byte	.LASF66
	.byte	0x7
	.2byte	0x57a
	.uleb128 0x21
	.4byte	.LASF67
	.4byte	.LASF67
	.byte	0xa
	.byte	0x56
	.uleb128 0x22
	.4byte	.LASF68
	.4byte	.LASF68
	.byte	0x7
	.2byte	0x38a
	.uleb128 0x22
	.4byte	.LASF69
	.4byte	.LASF69
	.byte	0x7
	.2byte	0x3ac
	.uleb128 0x21
	.4byte	.LASF70
	.4byte	.LASF70
	.byte	0xa
	.byte	0x54
	.uleb128 0x21
	.4byte	.LASF71
	.4byte	.LASF71
	.byte	0xb
	.byte	0x57
	.uleb128 0x21
	.4byte	.LASF72
	.4byte	.LASF72
	.byte	0x3
	.byte	0x1d
	.uleb128 0x21
	.4byte	.LASF73
	.4byte	.LASF73
	.byte	0x3
	.byte	0x1f
	.uleb128 0x21
	.4byte	.LASF74
	.4byte	.LASF74
	.byte	0xb
	.byte	0x5a
	.uleb128 0x23
	.uleb128 0xe
	.byte	0x9e
	.uleb128 0xc
	.byte	0x65
	.byte	0x73
	.byte	0x70
	.byte	0x5f
	.byte	0x70
	.byte	0x74
	.byte	0x68
	.byte	0x72
	.byte	0x65
	.byte	0x61
	.byte	0x64
	.byte	0
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
	.uleb128 0x9
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x18
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
	.uleb128 0x1a
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x36
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
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
	.4byte	.LVL8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL9
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL4
	.4byte	.LVL5-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL10
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL13
	.4byte	.LVL17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL20
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL11
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL13
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL21
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL25
	.4byte	.LVL33
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL34
	.4byte	.LVL47
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL50
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL21
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL24
	.4byte	.LVL33
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL34
	.4byte	.LVL47
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LFE18
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL42
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL34
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL22
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL51
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL53
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL55
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL56
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL64
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL56
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL58
	.4byte	.LVL61
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL61
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL63
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL58
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL63
	.4byte	.LFE20
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL65
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL73
	.4byte	.LVL74
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL74
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL75
	.4byte	.LVL76
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL76
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL77
	.4byte	.LVL78
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL78
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL79
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL66
	.4byte	.LVL69
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL69
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL74
	.4byte	.LVL78
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL78
	.4byte	.LFE21
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL67
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL78
	.4byte	.LFE21
	.2byte	0x1
	.byte	0x54
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
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF15:
	.string	"tv_nsec"
.LASF69:
	.string	"vQueueDelete"
.LASF19:
	.string	"is_initialized"
.LASF76:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/pthread/pthread_cond_var.c"
.LASF73:
	.string	"_lock_close_recursive"
.LASF46:
	.string	"waiter_list"
.LASF4:
	.string	"short int"
.LASF52:
	.string	"pthread_cond_timedwait"
.LASF10:
	.string	"sizetype"
.LASF54:
	.string	"cur_time"
.LASF51:
	.string	"pthread_cond_broadcast"
.LASF7:
	.string	"__uint32_t"
.LASF61:
	.string	"pthread_cond_destroy"
.LASF77:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\pthread"
.LASF13:
	.string	"time_t"
.LASF37:
	.string	"tqe_prev"
.LASF48:
	.string	"cond"
.LASF44:
	.string	"esp_pthread_cond"
.LASF70:
	.string	"pthread_mutex_lock"
.LASF36:
	.string	"tqe_next"
.LASF63:
	.string	"xQueueGenericSend"
.LASF57:
	.string	"pthread_cond_wait"
.LASF67:
	.string	"pthread_mutex_unlock"
.LASF5:
	.string	"long long int"
.LASF24:
	.string	"TickType_t"
.LASF42:
	.string	"tqh_first"
.LASF41:
	.string	"esp_pthread_cond_waiter_t"
.LASF9:
	.string	"long int"
.LASF38:
	.string	"esp_pthread_cond_waiter"
.LASF33:
	.string	"ESP_LOG_INFO"
.LASF79:
	.string	"__FUNCTION__"
.LASF25:
	.string	"QueueHandle_t"
.LASF39:
	.string	"wait_sem"
.LASF49:
	.string	"entry"
.LASF40:
	.string	"link"
.LASF26:
	.string	"SemaphoreHandle_t"
.LASF3:
	.string	"unsigned char"
.LASF65:
	.string	"gettimeofday"
.LASF2:
	.string	"signed char"
.LASF6:
	.string	"long long unsigned int"
.LASF21:
	.string	"uint32_t"
.LASF17:
	.string	"pthread_mutex_t"
.LASF0:
	.string	"unsigned int"
.LASF23:
	.string	"BaseType_t"
.LASF62:
	.string	"_lock_acquire_recursive"
.LASF47:
	.string	"esp_pthread_cond_t"
.LASF72:
	.string	"_lock_init_recursive"
.LASF1:
	.string	"short unsigned int"
.LASF66:
	.string	"xQueueCreateCountingSemaphore"
.LASF12:
	.string	"char"
.LASF53:
	.string	"timeout_ticks"
.LASF20:
	.string	"pthread_condattr_t"
.LASF55:
	.string	"diff_time"
.LASF30:
	.string	"ESP_LOG_NONE"
.LASF45:
	.string	"lock"
.LASF71:
	.string	"calloc"
.LASF60:
	.string	"pthread_cond_init"
.LASF22:
	.string	"_Bool"
.LASF32:
	.string	"ESP_LOG_WARN"
.LASF34:
	.string	"ESP_LOG_DEBUG"
.LASF18:
	.string	"pthread_cond_t"
.LASF11:
	.string	"long unsigned int"
.LASF58:
	.string	"pthread_condattr_init"
.LASF28:
	.string	"timeval"
.LASF59:
	.string	"attr"
.LASF35:
	.string	"ESP_LOG_VERBOSE"
.LASF29:
	.string	"tv_usec"
.LASF16:
	.string	"suseconds_t"
.LASF8:
	.string	"_lock_t"
.LASF43:
	.string	"tqh_last"
.LASF27:
	.string	"timespec"
.LASF14:
	.string	"tv_sec"
.LASF78:
	.string	"abs_time"
.LASF75:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF74:
	.string	"free"
.LASF64:
	.string	"_lock_release_recursive"
.LASF56:
	.string	"timeout_msec"
.LASF31:
	.string	"ESP_LOG_ERROR"
.LASF50:
	.string	"pthread_cond_signal"
.LASF68:
	.string	"xQueueGenericReceive"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
