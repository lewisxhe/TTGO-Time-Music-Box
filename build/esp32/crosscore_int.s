	.file	"crosscore_int.c"
	.text
.Ltext0:
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC0:
	.string	"core_id<portNUM_PROCESSORS"
	.align	4
.LC3:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/esp32/crosscore_int.c"
	.section	.iram1,"ax",@progbits
	.literal_position
	.literal .LC1, .LC0
	.literal .LC2, __func__$5502
	.literal .LC4, .LC3
	.literal .LC5, reason_spinlock
	.literal .LC6, reason
	.literal .LC7, 1072693468
	.literal .LC8, 1072693472
	.align	4
	.type	esp_crosscore_int_send, @function
esp_crosscore_int_send:
.LFB26:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/crosscore_int.c"
	.loc 1 96 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 97 0
	blti	a2, 2, .L2
	.loc 1 97 0 is_stmt 0 discriminator 1
	l32r	a13, .LC1
	l32r	a12, .LC2
	movi	a11, 0x61
	l32r	a10, .LC4
	call8	__assert_func
.LVL1:
.L2:
	.loc 1 99 0 is_stmt 1
	l32r	a4, .LC5
	mov.n	a10, a4
	call8	vTaskEnterCritical
.LVL2:
	.loc 1 100 0
	l32r	a8, .LC6
	addx4	a8, a2, a8
	memw
	l32i.n	a9, a8, 0
	or	a3, a9, a3
.LVL3:
	memw
	s32i.n	a3, a8, 0
	.loc 1 101 0
	mov.n	a10, a4
	call8	vTaskExitCritical
.LVL4:
	.loc 1 103 0
	bnez.n	a2, .L3
	.loc 1 104 0
	movi.n	a3, 1
	l32r	a2, .LC7
.LVL5:
	memw
	s32i.n	a3, a2, 0
	retw.n
.LVL6:
.L3:
	.loc 1 106 0
	movi.n	a3, 1
	l32r	a2, .LC8
.LVL7:
	memw
	s32i.n	a3, a2, 0
	retw.n
.LFE26:
	.size	esp_crosscore_int_send, .-esp_crosscore_int_send
	.literal_position
	.literal .LC9, 1072693468
	.literal .LC10, 1072693472
	.literal .LC11, reason_spinlock
	.align	4
	.type	esp_crosscore_isr, @function
esp_crosscore_isr:
.LFB24:
	.loc 1 52 0
.LVL8:
	entry	sp, 32
.LCFI1:
.LVL9:
.LBB10:
.LBB11:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/portable.h"
	.loc 2 208 0
#APP
# 208 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/portable.h" 1
	rsr.prid a3
 extui a3,a3,13,1
# 0 "" 2
.LVL10:
#NO_APP
.LBE11:
.LBE10:
	.loc 1 58 0
	bnez.n	a3, .L6
	.loc 1 59 0
	movi.n	a4, 0
	l32r	a3, .LC9
.LVL11:
	memw
	s32i.n	a4, a3, 0
	j	.L7
.LVL12:
.L6:
	.loc 1 61 0
	movi.n	a4, 0
	l32r	a3, .LC10
.LVL13:
	memw
	s32i.n	a4, a3, 0
.L7:
	.loc 1 64 0
	l32r	a3, .LC11
	mov.n	a10, a3
	call8	vTaskEnterCritical
.LVL14:
	.loc 1 65 0
	memw
	l32i.n	a4, a2, 0
.LVL15:
	.loc 1 66 0
	movi.n	a8, 0
	memw
	s32i.n	a8, a2, 0
	.loc 1 67 0
	mov.n	a10, a3
	call8	vTaskExitCritical
.LVL16:
	.loc 1 70 0
	bbci	a4, 0, .L5
.LBB12:
.LBB13:
	.loc 1 49 0
	call8	_frxt_setup_switch
.LVL17:
.L5:
	retw.n
.LBE13:
.LBE12:
.LFE24:
	.size	esp_crosscore_isr, .-esp_crosscore_isr
	.section	.rodata.str1.4
	.align	4
.LC16:
	.string	"err == ESP_OK"
	.section	.text.esp_crosscore_int_init,"ax",@progbits
	.literal_position
	.literal .LC12, reason_spinlock
	.literal .LC13, reason
	.literal .LC14, esp_crosscore_isr
	.literal .LC15, reason+4
	.literal .LC17, .LC16
	.literal .LC18, __func__$5497
	.literal .LC19, .LC3
	.align	4
	.global	esp_crosscore_int_init
	.type	esp_crosscore_int_init, @function
esp_crosscore_int_init:
.LFB25:
	.loc 1 83 0
	entry	sp, 32
.LCFI2:
	.loc 1 84 0
	l32r	a3, .LC12
	mov.n	a10, a3
	call8	vTaskEnterCritical
.LVL18:
.LBB14:
.LBB15:
	.loc 2 208 0
#APP
# 208 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/portable.h" 1
	rsr.prid a2
 extui a2,a2,13,1
# 0 "" 2
#NO_APP
.LBE15:
.LBE14:
	.loc 1 85 0
	l32r	a8, .LC13
	addx4	a8, a2, a8
	movi.n	a9, 0
	memw
	s32i.n	a9, a8, 0
	.loc 1 86 0
	mov.n	a10, a3
	call8	vTaskExitCritical
.LVL19:
	.loc 1 88 0
	bnez.n	a2, .L10
	.loc 1 89 0
	movi.n	a14, 0
	l32r	a13, .LC13
	l32r	a12, .LC14
	movi	a11, 0x400
	movi.n	a10, 0x18
	call8	esp_intr_alloc
.LVL20:
	j	.L11
.LVL21:
.L10:
	.loc 1 91 0
	movi.n	a14, 0
	l32r	a13, .LC15
	l32r	a12, .LC14
	movi	a11, 0x400
	movi.n	a10, 0x19
	call8	esp_intr_alloc
.LVL22:
.L11:
	.loc 1 93 0
	beqz.n	a10, .L9
	.loc 1 93 0 is_stmt 0 discriminator 1
	l32r	a13, .LC17
	l32r	a12, .LC18
	movi.n	a11, 0x5d
	l32r	a10, .LC19
.LVL23:
	call8	__assert_func
.LVL24:
.L9:
	retw.n
.LFE25:
	.size	esp_crosscore_int_init, .-esp_crosscore_int_init
	.section	.iram1
	.align	4
	.global	esp_crosscore_int_send_yield
	.type	esp_crosscore_int_send_yield, @function
esp_crosscore_int_send_yield:
.LFB27:
	.loc 1 111 0 is_stmt 1
.LVL25:
	entry	sp, 32
.LCFI3:
	.loc 1 112 0
	movi.n	a11, 1
	mov.n	a10, a2
	call8	esp_crosscore_int_send
.LVL26:
	retw.n
.LFE27:
	.size	esp_crosscore_int_send_yield, .-esp_crosscore_int_send_yield
	.align	4
	.global	esp_crosscore_int_send_freq_switch
	.type	esp_crosscore_int_send_freq_switch, @function
esp_crosscore_int_send_freq_switch:
.LFB28:
	.loc 1 116 0
.LVL27:
	entry	sp, 32
.LCFI4:
	.loc 1 117 0
	movi.n	a11, 2
	mov.n	a10, a2
	call8	esp_crosscore_int_send
.LVL28:
	retw.n
.LFE28:
	.size	esp_crosscore_int_send_freq_switch, .-esp_crosscore_int_send_freq_switch
	.section	.rodata.__func__$5502,"a",@progbits
	.align	4
	.type	__func__$5502, @object
	.size	__func__$5502, 23
__func__$5502:
	.string	"esp_crosscore_int_send"
	.section	.rodata.__func__$5497,"a",@progbits
	.align	4
	.type	__func__$5497, @object
	.size	__func__$5497, 23
__func__$5497:
	.string	"esp_crosscore_int_init"
	.section	.bss.reason,"aw",@nobits
	.align	4
	.type	reason, @object
	.size	reason, 8
reason:
	.zero	8
	.section	.data.reason_spinlock,"aw",@progbits
	.align	4
	.type	reason_spinlock, @object
	.size	reason_spinlock, 8
reason_spinlock:
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
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI1-.LFB24
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI2-.LFB25
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI3-.LFB27
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI4-.LFB28
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
	.text
.Letext0:
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_err.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/portmacro.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/assert.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_intr_alloc.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x450
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF36
	.byte	0xc
	.4byte	.LASF37
	.4byte	.LASF38
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
	.4byte	.LASF4
	.byte	0x3
	.byte	0x19
	.4byte	0x4c
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x3
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
	.byte	0x4
	.byte	0x2c
	.4byte	0x41
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x4
	.byte	0x2d
	.4byte	0x53
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x5
	.byte	0x18
	.4byte	0x73
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF16
	.uleb128 0x6
	.byte	0x8
	.byte	0x6
	.byte	0x82
	.4byte	0xda
	.uleb128 0x7
	.4byte	.LASF17
	.byte	0x6
	.byte	0x8a
	.4byte	0x7e
	.byte	0
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x6
	.byte	0x8f
	.4byte	0x7e
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x6
	.byte	0x94
	.4byte	0xb9
	.uleb128 0x8
	.4byte	.LASF39
	.byte	0x2
	.byte	0xce
	.4byte	0x7e
	.byte	0x3
	.4byte	0x100
	.uleb128 0x9
	.string	"id"
	.byte	0x2
	.byte	0xcf
	.4byte	0x4c
	.byte	0
	.uleb128 0xa
	.4byte	.LASF40
	.byte	0x1
	.byte	0x2f
	.byte	0x3
	.uleb128 0xb
	.4byte	.LASF23
	.byte	0x1
	.byte	0x60
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x19e
	.uleb128 0xc
	.4byte	.LASF20
	.byte	0x1
	.byte	0x60
	.4byte	0x4c
	.4byte	.LLST0
	.uleb128 0xc
	.4byte	.LASF21
	.byte	0x1
	.byte	0x60
	.4byte	0x7e
	.4byte	.LLST1
	.uleb128 0xd
	.4byte	.LASF22
	.4byte	0x1ae
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5502
	.uleb128 0xe
	.4byte	.LVL1
	.4byte	0x41b
	.4byte	0x179
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x61
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5502
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0xe
	.4byte	.LVL2
	.4byte	0x426
	.4byte	0x18d
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x10
	.4byte	.LVL4
	.4byte	0x431
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	0xa0
	.4byte	0x1ae
	.uleb128 0x12
	.4byte	0x90
	.byte	0x16
	.byte	0
	.uleb128 0x13
	.4byte	0x19e
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0x1
	.byte	0x34
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x258
	.uleb128 0x14
	.string	"arg"
	.byte	0x1
	.byte	0x34
	.4byte	0x97
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x15
	.4byte	.LASF25
	.byte	0x1
	.byte	0x35
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x15
	.4byte	.LASF26
	.byte	0x1
	.byte	0x37
	.4byte	0x258
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x16
	.4byte	0xe5
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.byte	0x1
	.byte	0x3a
	.4byte	0x216
	.uleb128 0x17
	.4byte	.LBB11
	.4byte	.LBE11-.LBB11
	.uleb128 0x18
	.4byte	0xf5
	.4byte	.LLST2
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	0x100
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.byte	0x1
	.byte	0x47
	.4byte	0x233
	.uleb128 0x19
	.4byte	.LVL17
	.4byte	0x43c
	.byte	0
	.uleb128 0xe
	.4byte	.LVL14
	.4byte	0x426
	.4byte	0x247
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x10
	.4byte	.LVL16
	.4byte	0x431
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.byte	0x4
	.4byte	0x25e
	.uleb128 0x1b
	.4byte	0x7e
	.uleb128 0x1c
	.4byte	.LASF41
	.byte	0x1
	.byte	0x53
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x36f
	.uleb128 0x1d
	.string	"err"
	.byte	0x1
	.byte	0x57
	.4byte	0xa7
	.4byte	.LLST3
	.uleb128 0xd
	.4byte	.LASF22
	.4byte	0x36f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5497
	.uleb128 0x16
	.4byte	0xe5
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.byte	0x1
	.byte	0x55
	.4byte	0x2b9
	.uleb128 0x17
	.4byte	.LBB15
	.4byte	.LBE15-.LBB15
	.uleb128 0x1e
	.4byte	0xf5
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LVL18
	.4byte	0x426
	.4byte	0x2cd
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0xe
	.4byte	.LVL19
	.4byte	0x431
	.4byte	0x2e1
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0xe
	.4byte	.LVL20
	.4byte	0x448
	.4byte	0x312
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x48
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x400
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	esp_crosscore_isr
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	reason
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0xe
	.4byte	.LVL22
	.4byte	0x448
	.4byte	0x343
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x49
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x400
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	esp_crosscore_isr
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	reason+4
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x10
	.4byte	.LVL24
	.4byte	0x41b
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x5d
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5497
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC16
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	0x19e
	.uleb128 0x1f
	.4byte	.LASF27
	.byte	0x1
	.byte	0x6e
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3ac
	.uleb128 0x20
	.4byte	.LASF20
	.byte	0x1
	.byte	0x6e
	.4byte	0x4c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x10
	.4byte	.LVL26
	.4byte	0x108
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF28
	.byte	0x1
	.byte	0x73
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3e4
	.uleb128 0x20
	.4byte	.LASF20
	.byte	0x1
	.byte	0x73
	.4byte	0x4c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x10
	.4byte	.LVL28
	.4byte	0x108
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF29
	.byte	0x1
	.byte	0x28
	.4byte	0xda
	.uleb128 0x5
	.byte	0x3
	.4byte	reason_spinlock
	.uleb128 0x11
	.4byte	0x7e
	.4byte	0x405
	.uleb128 0x12
	.4byte	0x90
	.byte	0x1
	.byte	0
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.byte	0x29
	.4byte	0x416
	.uleb128 0x5
	.byte	0x3
	.4byte	reason
	.uleb128 0x1b
	.4byte	0x3f5
	.uleb128 0x21
	.4byte	.LASF31
	.4byte	.LASF31
	.byte	0x7
	.byte	0x29
	.uleb128 0x21
	.4byte	.LASF32
	.4byte	.LASF32
	.byte	0x6
	.byte	0xda
	.uleb128 0x21
	.4byte	.LASF33
	.4byte	.LASF33
	.byte	0x6
	.byte	0xd9
	.uleb128 0x22
	.4byte	.LASF34
	.4byte	.LASF34
	.byte	0x6
	.2byte	0x13a
	.uleb128 0x21
	.4byte	.LASF35
	.4byte	.LASF35
	.byte	0x8
	.byte	0x99
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x17
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x18
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
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
	.4byte	.LFE26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL3
	.4byte	.LFE26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL24
	.4byte	.LFE25
	.2byte	0x1
	.byte	0x5a
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
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF26:
	.string	"my_reason"
.LASF37:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/esp32/crosscore_int.c"
.LASF28:
	.string	"esp_crosscore_int_send_freq_switch"
.LASF16:
	.string	"_Bool"
.LASF33:
	.string	"vTaskExitCritical"
.LASF19:
	.string	"portMUX_TYPE"
.LASF4:
	.string	"__int32_t"
.LASF2:
	.string	"short int"
.LASF34:
	.string	"_frxt_setup_switch"
.LASF41:
	.string	"esp_crosscore_int_init"
.LASF36:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF24:
	.string	"esp_crosscore_isr"
.LASF38:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\esp32"
.LASF22:
	.string	"__func__"
.LASF8:
	.string	"long long unsigned int"
.LASF1:
	.string	"unsigned char"
.LASF20:
	.string	"core_id"
.LASF3:
	.string	"short unsigned int"
.LASF13:
	.string	"long unsigned int"
.LASF15:
	.string	"esp_err_t"
.LASF5:
	.string	"__uint32_t"
.LASF32:
	.string	"vTaskEnterCritical"
.LASF31:
	.string	"__assert_func"
.LASF17:
	.string	"owner"
.LASF6:
	.string	"unsigned int"
.LASF14:
	.string	"char"
.LASF30:
	.string	"reason"
.LASF9:
	.string	"int32_t"
.LASF12:
	.string	"sizetype"
.LASF7:
	.string	"long long int"
.LASF23:
	.string	"esp_crosscore_int_send"
.LASF39:
	.string	"xPortGetCoreID"
.LASF29:
	.string	"reason_spinlock"
.LASF18:
	.string	"count"
.LASF27:
	.string	"esp_crosscore_int_send_yield"
.LASF10:
	.string	"uint32_t"
.LASF11:
	.string	"long int"
.LASF0:
	.string	"signed char"
.LASF25:
	.string	"my_reason_val"
.LASF40:
	.string	"esp_crosscore_isr_handle_yield"
.LASF35:
	.string	"esp_intr_alloc"
.LASF21:
	.string	"reason_mask"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
