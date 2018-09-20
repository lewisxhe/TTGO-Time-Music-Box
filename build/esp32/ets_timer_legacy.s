	.file	"ets_timer_legacy.c"
	.text
.Ltext0:
	.section	.iram1,"ax",@progbits
	.literal_position
	.literal .LC0, -303174162
	.align	4
	.type	timer_initialized, @function
timer_initialized:
.LFB15:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/ets_timer_legacy.c"
	.loc 1 47 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 48 0
	l32i.n	a8, a2, 4
	l32r	a2, .LC0
.LVL1:
	add.n	a8, a8, a2
	movi.n	a2, 0
	movi.n	a9, 1
	moveqz	a2, a9, a8
	.loc 1 49 0
	retw.n
.LFE15:
	.size	timer_initialized, .-timer_initialized
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC2:
	.string	"ETSTimer"
	.align	4
.LC4:
	.string	"esp_timer_create(&create_args, (esp_timer_handle_t*)&(ptimer->timer_arg))"
	.align	4
.LC7:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/esp32/ets_timer_legacy.c"
	.section	.text.ets_timer_setfn,"ax",@progbits
	.literal_position
	.literal .LC1, 303174162
	.literal .LC3, .LC2
	.literal .LC5, .LC4
	.literal .LC6, __func__$5350
	.literal .LC8, .LC7
	.align	4
	.global	ets_timer_setfn
	.type	ets_timer_setfn, @function
ets_timer_setfn:
.LFB16:
	.loc 1 52 0
.LVL2:
	entry	sp, 48
.LCFI1:
	.loc 1 53 0
	mov.n	a10, a2
	call8	timer_initialized
.LVL3:
	bnez.n	a10, .L3
	.loc 1 54 0
	movi.n	a12, 0x14
	movi.n	a11, 0
	mov.n	a10, a2
	call8	memset
.LVL4:
	.loc 1 55 0
	l32r	a8, .LC1
	s32i.n	a8, a2, 4
.L3:
	.loc 1 58 0
	l32i.n	a8, a2, 16
	bnez.n	a8, .L2
.LBB2:
	.loc 1 59 0
	s32i.n	a3, sp, 0
	s32i.n	a4, sp, 4
	movi.n	a3, 0
.LVL5:
	s32i.n	a3, sp, 8
	l32r	a3, .LC3
	s32i.n	a3, sp, 12
.LBB3:
	.loc 1 66 0
	addi	a11, a2, 16
	mov.n	a10, sp
.LVL6:
	call8	esp_timer_create
.LVL7:
	beqz.n	a10, .L2
	.loc 1 66 0 is_stmt 0 discriminator 1
	l32r	a14, .LC5
	l32r	a13, .LC6
	movi.n	a12, 0x42
	l32r	a11, .LC8
	call8	_esp_error_check_failed
.LVL8:
.L2:
	retw.n
.LBE3:
.LBE2:
.LFE16:
	.size	ets_timer_setfn, .-ets_timer_setfn
	.global	os_timer_setfn
	.set	os_timer_setfn,ets_timer_setfn
	.section	.rodata.str1.4
	.align	4
.LC9:
	.string	"timer_initialized(ptimer)"
	.align	4
.LC13:
	.string	"esp_timer_start_once(ESP_TIMER(ptimer), time_us)"
	.align	4
.LC15:
	.string	"esp_timer_start_periodic(ESP_TIMER(ptimer), time_us)"
	.section	.iram1
	.literal_position
	.literal .LC10, .LC9
	.literal .LC11, __func__$5356
	.literal .LC12, .LC7
	.literal .LC14, .LC13
	.literal .LC16, .LC15
	.align	4
	.global	ets_timer_arm_us
	.type	ets_timer_arm_us, @function
ets_timer_arm_us:
.LFB17:
	.loc 1 72 0 is_stmt 1
.LVL9:
	entry	sp, 32
.LCFI2:
	extui	a4, a4, 0, 8
	.loc 1 73 0
	mov.n	a10, a2
	call8	timer_initialized
.LVL10:
	bnez.n	a10, .L7
	.loc 1 73 0 is_stmt 0 discriminator 1
	l32r	a13, .LC10
	l32r	a12, .LC11
	movi.n	a11, 0x49
	l32r	a10, .LC12
	call8	__assert_func
.LVL11:
.L7:
	.loc 1 74 0 is_stmt 1
	l32i.n	a10, a2, 16
	call8	esp_timer_stop
.LVL12:
	.loc 1 75 0
	bnez.n	a4, .L8
.LBB4:
	.loc 1 76 0
	mov.n	a12, a3
	movi.n	a13, 0
	l32i.n	a10, a2, 16
	call8	esp_timer_start_once
.LVL13:
	beqz.n	a10, .L6
	.loc 1 76 0 is_stmt 0 discriminator 1
	l32r	a14, .LC14
	l32r	a13, .LC11
	movi.n	a12, 0x4c
	l32r	a11, .LC12
	call8	_esp_error_check_failed
.LVL14:
.L8:
.LBE4:
.LBB5:
	.loc 1 78 0 is_stmt 1
	mov.n	a12, a3
	movi.n	a13, 0
	l32i.n	a10, a2, 16
	call8	esp_timer_start_periodic
.LVL15:
	beqz.n	a10, .L6
	.loc 1 78 0 is_stmt 0 discriminator 1
	l32r	a14, .LC16
	l32r	a13, .LC11
	movi.n	a12, 0x4e
	l32r	a11, .LC12
	call8	_esp_error_check_failed
.LVL16:
.L6:
	retw.n
.LBE5:
.LFE17:
	.size	ets_timer_arm_us, .-ets_timer_arm_us
	.global	os_timer_arm_us
	.set	os_timer_arm_us,ets_timer_arm_us
	.literal_position
	.literal .LC17, .LC9
	.literal .LC18, __func__$5365
	.literal .LC19, .LC7
	.literal .LC20, .LC13
	.literal .LC21, .LC15
	.align	4
	.global	ets_timer_arm
	.type	ets_timer_arm, @function
ets_timer_arm:
.LFB18:
	.loc 1 83 0 is_stmt 1
.LVL17:
	entry	sp, 32
.LCFI3:
	extui	a4, a4, 0, 8
	.loc 1 84 0
	movi	a8, 0x3e8
	mull	a5, a8, a3
	muluh	a3, a8, a3
.LVL18:
	.loc 1 85 0
	mov.n	a10, a2
	call8	timer_initialized
.LVL19:
	bnez.n	a10, .L11
	.loc 1 85 0 is_stmt 0 discriminator 1
	l32r	a13, .LC17
	l32r	a12, .LC18
	movi.n	a11, 0x55
	l32r	a10, .LC19
	call8	__assert_func
.LVL20:
.L11:
	.loc 1 86 0 is_stmt 1
	l32i.n	a10, a2, 16
	call8	esp_timer_stop
.LVL21:
	.loc 1 87 0
	bnez.n	a4, .L12
.LBB6:
	.loc 1 88 0
	mov.n	a12, a5
	mov.n	a13, a3
	l32i.n	a10, a2, 16
	call8	esp_timer_start_once
.LVL22:
	beqz.n	a10, .L10
	.loc 1 88 0 is_stmt 0 discriminator 1
	l32r	a14, .LC20
	l32r	a13, .LC18
	movi.n	a12, 0x58
	l32r	a11, .LC19
	call8	_esp_error_check_failed
.LVL23:
.L12:
.LBE6:
.LBB7:
	.loc 1 90 0 is_stmt 1
	mov.n	a12, a5
	mov.n	a13, a3
	l32i.n	a10, a2, 16
	call8	esp_timer_start_periodic
.LVL24:
	beqz.n	a10, .L10
	.loc 1 90 0 is_stmt 0 discriminator 1
	l32r	a14, .LC21
	l32r	a13, .LC18
	movi.n	a12, 0x5a
	l32r	a11, .LC19
	call8	_esp_error_check_failed
.LVL25:
.L10:
	retw.n
.LBE7:
.LFE18:
	.size	ets_timer_arm, .-ets_timer_arm
	.global	os_timer_arm
	.set	os_timer_arm,ets_timer_arm
	.section	.text.ets_timer_done,"ax",@progbits
	.align	4
	.global	ets_timer_done
	.type	ets_timer_done, @function
ets_timer_done:
.LFB19:
	.loc 1 95 0 is_stmt 1
.LVL26:
	entry	sp, 32
.LCFI4:
	.loc 1 96 0
	mov.n	a10, a2
	call8	timer_initialized
.LVL27:
	beqz.n	a10, .L14
	.loc 1 97 0
	l32i.n	a10, a2, 16
	call8	esp_timer_delete
.LVL28:
	.loc 1 98 0
	movi.n	a8, 0
	s32i.n	a8, a2, 16
	.loc 1 99 0
	s32i.n	a8, a2, 4
.L14:
	retw.n
.LFE19:
	.size	ets_timer_done, .-ets_timer_done
	.global	os_timer_done
	.set	os_timer_done,ets_timer_done
	.section	.iram1
	.align	4
	.global	ets_timer_disarm
	.type	ets_timer_disarm, @function
ets_timer_disarm:
.LFB20:
	.loc 1 104 0
.LVL29:
	entry	sp, 32
.LCFI5:
	.loc 1 105 0
	mov.n	a10, a2
	call8	timer_initialized
.LVL30:
	beqz.n	a10, .L16
	.loc 1 106 0
	l32i.n	a10, a2, 16
	call8	esp_timer_stop
.LVL31:
.L16:
	retw.n
.LFE20:
	.size	ets_timer_disarm, .-ets_timer_disarm
	.global	os_timer_disarm
	.set	os_timer_disarm,ets_timer_disarm
	.section	.text.ets_timer_init,"ax",@progbits
	.align	4
	.global	ets_timer_init
	.type	ets_timer_init, @function
ets_timer_init:
.LFB21:
	.loc 1 112 0
	entry	sp, 32
.LCFI6:
	retw.n
.LFE21:
	.size	ets_timer_init, .-ets_timer_init
	.section	.text.ets_timer_deinit,"ax",@progbits
	.align	4
	.global	ets_timer_deinit
	.type	ets_timer_deinit, @function
ets_timer_deinit:
.LFB22:
	.loc 1 117 0
	.loc 1 117 0
	entry	sp, 32
.LCFI7:
	retw.n
.LFE22:
	.size	ets_timer_deinit, .-ets_timer_deinit
	.section	.rodata.__func__$5365,"a",@progbits
	.align	4
	.type	__func__$5365, @object
	.size	__func__$5365, 14
__func__$5365:
	.string	"ets_timer_arm"
	.section	.rodata.__func__$5356,"a",@progbits
	.align	4
	.type	__func__$5356, @object
	.size	__func__$5356, 17
__func__$5356:
	.string	"ets_timer_arm_us"
	.section	.rodata.__func__$5350,"a",@progbits
	.align	4
	.type	__func__$5350, @object
	.size	__func__$5350, 16
__func__$5350:
	.string	"ets_timer_setfn"
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
	.uleb128 0x30
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI2-.LFB17
	.byte	0xe
	.uleb128 0x20
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
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI7-.LFB22
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/ets_sys.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_err.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_timer.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/assert.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x6c7
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF56
	.byte	0xc
	.4byte	.LASF57
	.4byte	.LASF58
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
	.4byte	.LASF5
	.byte	0x2
	.byte	0x19
	.4byte	0x25
	.uleb128 0x4
	.4byte	.LASF6
	.byte	0x2
	.byte	0x1a
	.4byte	0x2c
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x2
	.byte	0x1e
	.4byte	0x77
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
	.byte	0x4
	.4byte	0xa2
	.uleb128 0x7
	.4byte	0x95
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x3
	.byte	0x2c
	.4byte	0x4f
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x3
	.byte	0x2d
	.4byte	0x5a
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x3
	.byte	0x39
	.4byte	0x6c
	.uleb128 0x6
	.byte	0x4
	.4byte	0xce
	.uleb128 0x8
	.4byte	0xd9
	.uleb128 0x9
	.4byte	0x8c
	.byte	0
	.uleb128 0xa
	.4byte	.LASF17
	.byte	0x4
	.2byte	0x11c
	.4byte	0xce
	.uleb128 0xb
	.4byte	.LASF59
	.byte	0x14
	.byte	0x4
	.2byte	0x11e
	.4byte	0x134
	.uleb128 0xc
	.4byte	.LASF18
	.byte	0x4
	.2byte	0x11f
	.4byte	0x134
	.byte	0
	.uleb128 0xc
	.4byte	.LASF19
	.byte	0x4
	.2byte	0x120
	.4byte	0xb2
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF20
	.byte	0x4
	.2byte	0x121
	.4byte	0xb2
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF21
	.byte	0x4
	.2byte	0x122
	.4byte	0x13a
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF22
	.byte	0x4
	.2byte	0x123
	.4byte	0x8c
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xe5
	.uleb128 0x6
	.byte	0x4
	.4byte	0xd9
	.uleb128 0xa
	.4byte	.LASF23
	.byte	0x4
	.2byte	0x124
	.4byte	0xe5
	.uleb128 0x4
	.4byte	.LASF24
	.byte	0x5
	.byte	0x18
	.4byte	0xa7
	.uleb128 0x4
	.4byte	.LASF25
	.byte	0x6
	.byte	0x35
	.4byte	0x162
	.uleb128 0x6
	.byte	0x4
	.4byte	0x168
	.uleb128 0xd
	.4byte	.LASF60
	.uleb128 0x4
	.4byte	.LASF26
	.byte	0x6
	.byte	0x3b
	.4byte	0xc8
	.uleb128 0xe
	.byte	0x4
	.4byte	0x2c
	.byte	0x6
	.byte	0x41
	.4byte	0x18b
	.uleb128 0xf
	.4byte	.LASF61
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF27
	.byte	0x6
	.byte	0x4a
	.4byte	0x178
	.uleb128 0x10
	.byte	0x10
	.byte	0x6
	.byte	0x4f
	.4byte	0x1cf
	.uleb128 0x11
	.4byte	.LASF28
	.byte	0x6
	.byte	0x50
	.4byte	0x16d
	.byte	0
	.uleb128 0x12
	.string	"arg"
	.byte	0x6
	.byte	0x51
	.4byte	0x8c
	.byte	0x4
	.uleb128 0x11
	.4byte	.LASF29
	.byte	0x6
	.byte	0x52
	.4byte	0x18b
	.byte	0x8
	.uleb128 0x11
	.4byte	.LASF30
	.byte	0x6
	.byte	0x53
	.4byte	0x9c
	.byte	0xc
	.byte	0
	.uleb128 0x4
	.4byte	.LASF31
	.byte	0x6
	.byte	0x54
	.4byte	0x196
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF32
	.uleb128 0x13
	.4byte	.LASF62
	.byte	0x1
	.byte	0x2e
	.4byte	0x1da
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x20a
	.uleb128 0x14
	.4byte	.LASF33
	.byte	0x1
	.byte	0x2e
	.4byte	0x20a
	.4byte	.LLST0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x140
	.uleb128 0x15
	.4byte	.LASF38
	.byte	0x1
	.byte	0x33
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x306
	.uleb128 0x16
	.4byte	.LASF33
	.byte	0x1
	.byte	0x33
	.4byte	0x20a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x14
	.4byte	.LASF34
	.byte	0x1
	.byte	0x33
	.4byte	0x13a
	.4byte	.LLST1
	.uleb128 0x16
	.4byte	.LASF35
	.byte	0x1
	.byte	0x33
	.4byte	0x8c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x17
	.4byte	.LASF42
	.4byte	0x316
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5350
	.uleb128 0x18
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.4byte	0x2d7
	.uleb128 0x19
	.4byte	.LASF36
	.byte	0x1
	.byte	0x3b
	.4byte	0x31b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1a
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.uleb128 0x1b
	.4byte	.LASF37
	.byte	0x1
	.byte	0x42
	.4byte	0x14c
	.4byte	.LLST2
	.uleb128 0x1c
	.4byte	.LVL7
	.4byte	0x674
	.4byte	0x2aa
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 16
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL8
	.4byte	0x67f
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x42
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5350
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL3
	.4byte	0x1e1
	.4byte	0x2eb
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL4
	.4byte	0x68a
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x44
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	0x95
	.4byte	0x316
	.uleb128 0x20
	.4byte	0x85
	.byte	0xf
	.byte	0
	.uleb128 0x7
	.4byte	0x306
	.uleb128 0x7
	.4byte	0x1cf
	.uleb128 0x15
	.4byte	.LASF39
	.byte	0x1
	.byte	0x47
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x45a
	.uleb128 0x16
	.4byte	.LASF33
	.byte	0x1
	.byte	0x47
	.4byte	0x20a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x16
	.4byte	.LASF40
	.byte	0x1
	.byte	0x47
	.4byte	0xb2
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x16
	.4byte	.LASF41
	.byte	0x1
	.byte	0x47
	.4byte	0x1da
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x17
	.4byte	.LASF42
	.4byte	0x46a
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5356
	.uleb128 0x18
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.4byte	0x3bc
	.uleb128 0x1b
	.4byte	.LASF37
	.byte	0x1
	.byte	0x4c
	.4byte	0x14c
	.4byte	.LLST3
	.uleb128 0x21
	.4byte	.LVL13
	.4byte	0x693
	.uleb128 0x1e
	.4byte	.LVL14
	.4byte	0x67f
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x4c
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5356
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC13
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.4byte	0x40d
	.uleb128 0x1b
	.4byte	.LASF37
	.byte	0x1
	.byte	0x4e
	.4byte	0x14c
	.4byte	.LLST4
	.uleb128 0x21
	.4byte	.LVL15
	.4byte	0x69e
	.uleb128 0x1e
	.4byte	.LVL16
	.4byte	0x67f
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x4e
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5356
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL10
	.4byte	0x1e1
	.4byte	0x421
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL11
	.4byte	0x6a9
	.4byte	0x450
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x49
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5356
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0
	.uleb128 0x21
	.4byte	.LVL12
	.4byte	0x6b4
	.byte	0
	.uleb128 0x1f
	.4byte	0x95
	.4byte	0x46a
	.uleb128 0x20
	.4byte	0x85
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.4byte	0x45a
	.uleb128 0x15
	.4byte	.LASF43
	.byte	0x1
	.byte	0x52
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5bd
	.uleb128 0x16
	.4byte	.LASF33
	.byte	0x1
	.byte	0x52
	.4byte	0x20a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x14
	.4byte	.LASF44
	.byte	0x1
	.byte	0x52
	.4byte	0xb2
	.4byte	.LLST5
	.uleb128 0x16
	.4byte	.LASF41
	.byte	0x1
	.byte	0x52
	.4byte	0x1da
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x19
	.4byte	.LASF40
	.byte	0x1
	.byte	0x54
	.4byte	0xbd
	.uleb128 0x6
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x17
	.4byte	.LASF42
	.4byte	0x5cd
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5365
	.uleb128 0x18
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.4byte	0x51f
	.uleb128 0x1b
	.4byte	.LASF37
	.byte	0x1
	.byte	0x58
	.4byte	0x14c
	.4byte	.LLST6
	.uleb128 0x21
	.4byte	.LVL22
	.4byte	0x693
	.uleb128 0x1e
	.4byte	.LVL23
	.4byte	0x67f
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x58
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5365
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC13
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.4byte	0x570
	.uleb128 0x1b
	.4byte	.LASF37
	.byte	0x1
	.byte	0x5a
	.4byte	0x14c
	.4byte	.LLST7
	.uleb128 0x21
	.4byte	.LVL24
	.4byte	0x69e
	.uleb128 0x1e
	.4byte	.LVL25
	.4byte	0x67f
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x5a
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5365
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL19
	.4byte	0x1e1
	.4byte	0x584
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL20
	.4byte	0x6a9
	.4byte	0x5b3
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x55
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5365
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0
	.uleb128 0x21
	.4byte	.LVL21
	.4byte	0x6b4
	.byte	0
	.uleb128 0x1f
	.4byte	0x95
	.4byte	0x5cd
	.uleb128 0x20
	.4byte	0x85
	.byte	0xd
	.byte	0
	.uleb128 0x7
	.4byte	0x5bd
	.uleb128 0x15
	.4byte	.LASF45
	.byte	0x1
	.byte	0x5e
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x612
	.uleb128 0x16
	.4byte	.LASF33
	.byte	0x1
	.byte	0x5e
	.4byte	0x20a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1c
	.4byte	.LVL27
	.4byte	0x1e1
	.4byte	0x608
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL28
	.4byte	0x6bf
	.byte	0
	.uleb128 0x15
	.4byte	.LASF46
	.byte	0x1
	.byte	0x67
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x652
	.uleb128 0x16
	.4byte	.LASF33
	.byte	0x1
	.byte	0x67
	.4byte	0x20a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1c
	.4byte	.LVL30
	.4byte	0x1e1
	.4byte	0x648
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL31
	.4byte	0x6b4
	.byte	0
	.uleb128 0x22
	.4byte	.LASF47
	.byte	0x1
	.byte	0x6f
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x22
	.4byte	.LASF48
	.byte	0x1
	.byte	0x74
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x23
	.4byte	.LASF49
	.4byte	.LASF49
	.byte	0x6
	.byte	0x7f
	.uleb128 0x23
	.4byte	.LASF50
	.4byte	.LASF50
	.byte	0x5
	.byte	0x4f
	.uleb128 0x24
	.4byte	.LASF63
	.4byte	.LASF63
	.uleb128 0x23
	.4byte	.LASF51
	.4byte	.LASF51
	.byte	0x6
	.byte	0x8e
	.uleb128 0x23
	.4byte	.LASF52
	.4byte	.LASF52
	.byte	0x6
	.byte	0x9d
	.uleb128 0x23
	.4byte	.LASF53
	.4byte	.LASF53
	.byte	0x7
	.byte	0x29
	.uleb128 0x23
	.4byte	.LASF54
	.4byte	.LASF54
	.byte	0x6
	.byte	0xaa
	.uleb128 0x23
	.4byte	.LASF55
	.4byte	.LASF55
	.byte	0x6
	.byte	0xb7
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
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x1a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
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
	.uleb128 0x17
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
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL6
	.4byte	.LVL7-1
	.2byte	0x2
	.byte	0x7a
	.sleb128 0
	.4byte	.LVL7-1
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL7
	.4byte	.LVL8-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL13
	.4byte	.LVL14-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL15
	.4byte	.LVL16-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL18
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL22
	.4byte	.LVL23-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL24
	.4byte	.LVL25-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x54
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
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB16
	.4byte	.LFE16
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
.LASF37:
	.string	"__err_rc"
.LASF59:
	.string	"_ETSTIMER_"
.LASF21:
	.string	"timer_func"
.LASF48:
	.string	"ets_timer_deinit"
.LASF60:
	.string	"esp_timer"
.LASF16:
	.string	"uint64_t"
.LASF4:
	.string	"short int"
.LASF11:
	.string	"sizetype"
.LASF38:
	.string	"ets_timer_setfn"
.LASF6:
	.string	"__uint32_t"
.LASF52:
	.string	"esp_timer_start_periodic"
.LASF33:
	.string	"ptimer"
.LASF15:
	.string	"uint32_t"
.LASF36:
	.string	"create_args"
.LASF35:
	.string	"parg"
.LASF41:
	.string	"repeat_flag"
.LASF7:
	.string	"long long int"
.LASF63:
	.string	"memset"
.LASF10:
	.string	"long int"
.LASF30:
	.string	"name"
.LASF3:
	.string	"unsigned char"
.LASF61:
	.string	"ESP_TIMER_TASK"
.LASF42:
	.string	"__func__"
.LASF26:
	.string	"esp_timer_cb_t"
.LASF50:
	.string	"_esp_error_check_failed"
.LASF2:
	.string	"signed char"
.LASF9:
	.string	"long long unsigned int"
.LASF22:
	.string	"timer_arg"
.LASF43:
	.string	"ets_timer_arm"
.LASF0:
	.string	"unsigned int"
.LASF45:
	.string	"ets_timer_done"
.LASF39:
	.string	"ets_timer_arm_us"
.LASF34:
	.string	"pfunction"
.LASF25:
	.string	"esp_timer_handle_t"
.LASF49:
	.string	"esp_timer_create"
.LASF13:
	.string	"char"
.LASF32:
	.string	"_Bool"
.LASF14:
	.string	"int32_t"
.LASF5:
	.string	"__int32_t"
.LASF1:
	.string	"short unsigned int"
.LASF27:
	.string	"esp_timer_dispatch_t"
.LASF44:
	.string	"time_ms"
.LASF18:
	.string	"timer_next"
.LASF8:
	.string	"__uint64_t"
.LASF47:
	.string	"ets_timer_init"
.LASF62:
	.string	"timer_initialized"
.LASF12:
	.string	"long unsigned int"
.LASF31:
	.string	"esp_timer_create_args_t"
.LASF17:
	.string	"ETSTimerFunc"
.LASF29:
	.string	"dispatch_method"
.LASF20:
	.string	"timer_period"
.LASF40:
	.string	"time_us"
.LASF54:
	.string	"esp_timer_stop"
.LASF57:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/esp32/ets_timer_legacy.c"
.LASF19:
	.string	"timer_expire"
.LASF23:
	.string	"ETSTimer"
.LASF46:
	.string	"ets_timer_disarm"
.LASF55:
	.string	"esp_timer_delete"
.LASF53:
	.string	"__assert_func"
.LASF51:
	.string	"esp_timer_start_once"
.LASF58:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\esp32"
.LASF56:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF24:
	.string	"esp_err_t"
.LASF28:
	.string	"callback"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
