	.file	"app_trace_util.c"
	.text
.Ltext0:
	.section	.text.esp_apptrace_tmo_check,"ax",@progbits
	.literal_position
	.literal .LC0, 1125899907
	.align	4
	.global	esp_apptrace_tmo_check
	.type	esp_apptrace_tmo_check, @function
esp_apptrace_tmo_check:
.LFB19:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/app_trace/app_trace_util.c"
	.loc 1 28 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 29 0
	call8	esp_clk_cpu_freq
.LVL1:
	mov.n	a3, a10
.LVL2:
	.loc 1 30 0
	l32i.n	a8, a2, 4
	beqi	a8, -1, .L5
.LBB6:
	.loc 1 31 0
	call8	xthal_get_ccount
.LVL3:
	.loc 1 32 0
	l32i.n	a8, a2, 0
	bltu	a10, a8, .L3
	.loc 1 33 0
	sub	a10, a10, a8
.LVL4:
	l32r	a8, .LC0
	mulsh	a8, a3, a8
	srai	a8, a8, 18
	srai	a3, a3, 31
.LVL5:
	sub	a3, a8, a3
	quou	a10, a10, a3
	s32i.n	a10, a2, 8
	j	.L4
.LVL6:
.L3:
	.loc 1 35 0
	sub	a10, a10, a8
.LVL7:
	addi.n	a8, a10, -1
	l32r	a10, .LC0
	mulsh	a10, a3, a10
	srai	a10, a10, 18
	srai	a3, a3, 31
.LVL8:
	sub	a3, a10, a3
	quou	a10, a8, a3
	s32i.n	a10, a2, 8
.L4:
	.loc 1 37 0
	l32i.n	a3, a2, 8
	l32i.n	a2, a2, 4
.LVL9:
	bltu	a3, a2, .L6
	.loc 1 38 0
	movi	a2, 0x107
	retw.n
.LVL10:
.L5:
.LBE6:
	.loc 1 41 0
	movi.n	a2, 0
.LVL11:
	retw.n
.LVL12:
.L6:
	movi.n	a2, 0
	.loc 1 42 0
	retw.n
.LFE19:
	.size	esp_apptrace_tmo_check, .-esp_apptrace_tmo_check
	.section	.text.esp_apptrace_lock_take,"ax",@progbits
	.align	4
	.global	esp_apptrace_lock_take
	.type	esp_apptrace_lock_take, @function
esp_apptrace_lock_take:
.LFB20:
	.loc 1 49 0
.LVL13:
	entry	sp, 32
.LCFI1:
.L10:
.LBB7:
.LBB8:
.LBB9:
.LBB10:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/portmacro.h"
	.loc 2 249 0
#APP
# 249 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/portmacro.h" 1
	rsil	a4, 3

# 0 "" 2
#NO_APP
	mov.n	a5, a4
.LVL14:
.LBE10:
.LBE9:
.LBE8:
	.loc 1 61 0
	movi.n	a11, 0
	mov.n	a10, a2
	call8	vPortCPUAcquireMutexTimeout
.LVL15:
	.loc 1 63 0
	beqz.n	a10, .L8
	.loc 1 64 0
	s32i.n	a4, a2, 8
	.loc 1 65 0
	movi.n	a2, 0
.LVL16:
	retw.n
.LVL17:
.L8:
	.loc 1 67 0
	mov.n	a10, a4
.LVL18:
	call8	_xtos_set_intlevel
.LVL19:
	.loc 1 69 0
	mov.n	a10, a3
	call8	esp_apptrace_tmo_check
.LVL20:
	.loc 1 70 0
	beqz.n	a10, .L10
.LBE7:
	.loc 1 74 0
	mov.n	a2, a10
.LVL21:
	.loc 1 75 0
	retw.n
.LFE20:
	.size	esp_apptrace_lock_take, .-esp_apptrace_lock_take
	.section	.text.esp_apptrace_lock_give,"ax",@progbits
	.align	4
	.global	esp_apptrace_lock_give
	.type	esp_apptrace_lock_give, @function
esp_apptrace_lock_give:
.LFB21:
	.loc 1 78 0
.LVL22:
	entry	sp, 32
.LCFI2:
	mov.n	a10, a2
	.loc 1 80 0
	l32i.n	a2, a2, 8
.LVL23:
	.loc 1 86 0
	call8	vPortCPUReleaseMutex
.LVL24:
	.loc 1 88 0
	mov.n	a10, a2
	call8	_xtos_set_intlevel
.LVL25:
	.loc 1 90 0
	movi.n	a2, 0
.LVL26:
	retw.n
.LFE21:
	.size	esp_apptrace_lock_give, .-esp_apptrace_lock_give
	.section	.text.esp_apptrace_rb_produce,"ax",@progbits
	.align	4
	.global	esp_apptrace_rb_produce
	.type	esp_apptrace_rb_produce, @function
esp_apptrace_rb_produce:
.LFB22:
	.loc 1 97 0
.LVL27:
	entry	sp, 32
.LCFI3:
	mov.n	a8, a2
	.loc 1 98 0
	l32i.n	a2, a2, 0
.LVL28:
	memw
	l32i.n	a9, a8, 16
	add.n	a11, a2, a9
.LVL29:
	.loc 1 100 0
	memw
	l32i.n	a9, a8, 12
	memw
	l32i.n	a10, a8, 16
	bltu	a10, a9, .L13
	.loc 1 102 0
	memw
	l32i.n	a9, a8, 16
	add.n	a9, a9, a3
	memw
	l32i.n	a10, a8, 4
	bltu	a9, a10, .L14
	.loc 1 103 0
	memw
	l32i.n	a9, a8, 12
	beqz.n	a9, .L18
	.loc 1 106 0
	memw
	l32i.n	a9, a8, 16
	add.n	a9, a3, a9
	memw
	l32i.n	a10, a8, 4
	bne	a9, a10, .L16
	.loc 1 107 0
	movi.n	a2, 0
	memw
	s32i.n	a2, a8, 16
	.loc 1 98 0
	mov.n	a2, a11
	retw.n
.L16:
	.loc 1 110 0
	memw
	l32i.n	a9, a8, 12
	addi.n	a9, a9, -1
	bltu	a9, a3, .L19
	.loc 1 114 0
	memw
	l32i.n	a9, a8, 16
	memw
	s32i.n	a9, a8, 8
	.loc 1 115 0
	movi.n	a9, 0
	memw
	s32i.n	a9, a8, 16
.LVL30:
	.loc 1 117 0
	memw
	l32i.n	a10, a8, 12
	memw
	l32i.n	a9, a8, 8
	bne	a10, a9, .L17
	.loc 1 118 0
	movi.n	a9, 0
	memw
	s32i.n	a9, a8, 12
	.loc 1 119 0
	memw
	l32i.n	a10, a8, 8
	memw
	l32i.n	a9, a8, 4
	bgeu	a10, a9, .L17
	.loc 1 120 0
	memw
	l32i.n	a9, a8, 4
	memw
	s32i.n	a9, a8, 8
.L17:
	.loc 1 123 0
	memw
	l32i.n	a9, a8, 16
	add.n	a3, a3, a9
.LVL31:
	memw
	s32i.n	a3, a8, 16
	retw.n
.LVL32:
.L14:
	.loc 1 126 0
	memw
	l32i.n	a2, a8, 16
	add.n	a3, a3, a2
.LVL33:
	memw
	s32i.n	a3, a8, 16
	.loc 1 98 0
	mov.n	a2, a11
	retw.n
.LVL34:
.L13:
	.loc 1 130 0
	memw
	l32i.n	a2, a8, 12
	memw
	l32i.n	a9, a8, 16
	sub	a2, a2, a9
	addi.n	a2, a2, -1
	bltu	a2, a3, .L20
	.loc 1 133 0
	memw
	l32i.n	a2, a8, 16
	add.n	a3, a3, a2
.LVL35:
	memw
	s32i.n	a3, a8, 16
	.loc 1 98 0
	mov.n	a2, a11
	retw.n
.LVL36:
.L18:
	.loc 1 104 0
	movi.n	a2, 0
	retw.n
.L19:
	.loc 1 111 0
	movi.n	a2, 0
	retw.n
.L20:
	.loc 1 131 0
	movi.n	a2, 0
	.loc 1 136 0
	retw.n
.LFE22:
	.size	esp_apptrace_rb_produce, .-esp_apptrace_rb_produce
	.section	.text.esp_apptrace_rb_consume,"ax",@progbits
	.align	4
	.global	esp_apptrace_rb_consume
	.type	esp_apptrace_rb_consume, @function
esp_apptrace_rb_consume:
.LFB23:
	.loc 1 139 0
.LVL37:
	entry	sp, 32
.LCFI4:
	.loc 1 140 0
	l32i.n	a10, a2, 0
	memw
	l32i.n	a8, a2, 12
	add.n	a10, a10, a8
.LVL38:
	.loc 1 141 0
	memw
	l32i.n	a8, a2, 12
	memw
	l32i.n	a9, a2, 16
	bltu	a9, a8, .L22
	.loc 1 143 0
	memw
	l32i.n	a8, a2, 12
	add.n	a8, a8, a3
	memw
	l32i.n	a9, a2, 16
	bltu	a9, a8, .L26
	.loc 1 146 0
	memw
	l32i.n	a8, a2, 12
	add.n	a3, a3, a8
.LVL39:
	memw
	s32i.n	a3, a2, 12
	.loc 1 161 0
	mov.n	a2, a10
.LVL40:
	retw.n
.LVL41:
.L22:
	.loc 1 149 0
	memw
	l32i.n	a8, a2, 12
	add.n	a8, a3, a8
	memw
	l32i.n	a9, a2, 8
	bltu	a9, a8, .L27
	.loc 1 151 0
	memw
	l32i.n	a8, a2, 12
	add.n	a8, a3, a8
	memw
	l32i.n	a9, a2, 8
	bne	a8, a9, .L24
	.loc 1 153 0
	memw
	l32i.n	a8, a2, 8
	memw
	l32i.n	a3, a2, 4
.LVL42:
	bgeu	a8, a3, .L25
	.loc 1 154 0
	memw
	l32i.n	a3, a2, 4
	memw
	s32i.n	a3, a2, 8
.L25:
	.loc 1 156 0
	movi.n	a3, 0
	memw
	s32i.n	a3, a2, 12
	.loc 1 161 0
	mov.n	a2, a10
.LVL43:
	retw.n
.LVL44:
.L24:
	.loc 1 158 0
	memw
	l32i.n	a8, a2, 12
	add.n	a3, a3, a8
.LVL45:
	memw
	s32i.n	a3, a2, 12
	.loc 1 161 0
	mov.n	a2, a10
.LVL46:
	retw.n
.LVL47:
.L26:
	.loc 1 144 0
	movi.n	a2, 0
.LVL48:
	retw.n
.LVL49:
.L27:
	.loc 1 150 0
	movi.n	a2, 0
.LVL50:
	.loc 1 162 0
	retw.n
.LFE23:
	.size	esp_apptrace_rb_consume, .-esp_apptrace_rb_consume
	.section	.text.esp_apptrace_rb_read_size_get,"ax",@progbits
	.align	4
	.global	esp_apptrace_rb_read_size_get
	.type	esp_apptrace_rb_read_size_get, @function
esp_apptrace_rb_read_size_get:
.LFB24:
	.loc 1 165 0
.LVL51:
	entry	sp, 32
.LCFI5:
.LVL52:
	.loc 1 167 0
	memw
	l32i.n	a8, a2, 12
	memw
	l32i.n	a9, a2, 16
	bltu	a9, a8, .L29
	.loc 1 169 0
	memw
	l32i.n	a8, a2, 16
	memw
	l32i.n	a2, a2, 12
.LVL53:
	sub	a2, a8, a2
.LVL54:
	retw.n
.LVL55:
.L29:
	.loc 1 172 0
	memw
	l32i.n	a8, a2, 8
	memw
	l32i.n	a2, a2, 12
.LVL56:
	sub	a2, a8, a2
.LVL57:
	.loc 1 175 0
	retw.n
.LFE24:
	.size	esp_apptrace_rb_read_size_get, .-esp_apptrace_rb_read_size_get
	.section	.text.esp_apptrace_rb_write_size_get,"ax",@progbits
	.align	4
	.global	esp_apptrace_rb_write_size_get
	.type	esp_apptrace_rb_write_size_get, @function
esp_apptrace_rb_write_size_get:
.LFB25:
	.loc 1 178 0
.LVL58:
	entry	sp, 32
.LCFI6:
.LVL59:
	.loc 1 180 0
	memw
	l32i.n	a8, a2, 12
	memw
	l32i.n	a9, a2, 16
	bltu	a9, a8, .L32
	.loc 1 182 0
	memw
	l32i.n	a8, a2, 4
	memw
	l32i.n	a9, a2, 16
	sub	a8, a8, a9
.LVL60:
	.loc 1 183 0
	beqz.n	a8, .L33
	.loc 1 183 0 is_stmt 0 discriminator 1
	memw
	l32i.n	a2, a2, 12
.LVL61:
	bnez.n	a2, .L33
	.loc 1 184 0 is_stmt 1
	addi.n	a8, a8, -1
.LVL62:
	j	.L33
.LVL63:
.L32:
	.loc 1 188 0
	memw
	l32i.n	a8, a2, 12
	memw
	l32i.n	a2, a2, 16
.LVL64:
	sub	a8, a8, a2
	addi.n	a8, a8, -1
.LVL65:
.L33:
	.loc 1 191 0
	mov.n	a2, a8
	retw.n
.LFE25:
	.size	esp_apptrace_rb_write_size_get, .-esp_apptrace_rb_write_size_get
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
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI1-.LFB20
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI2-.LFB21
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI3-.LFB22
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI4-.LFB23
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI5-.LFB24
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI6-.LFB25
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
	.text
.Letext0:
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_err.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/app_trace/include/esp_app_trace_util.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/xtensa/hal.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_clk.h"
	.file 9 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/xtensa/xtruntime.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x4be
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF48
	.byte	0xc
	.4byte	.LASF49
	.4byte	.LASF50
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
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
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
	.4byte	0xa5
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF18
	.uleb128 0x5
	.byte	0x8
	.byte	0x2
	.byte	0x82
	.4byte	0xee
	.uleb128 0x6
	.4byte	.LASF19
	.byte	0x2
	.byte	0x8a
	.4byte	0xb0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF20
	.byte	0x2
	.byte	0x8f
	.4byte	0xb0
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF21
	.byte	0x2
	.byte	0x94
	.4byte	0xcd
	.uleb128 0x5
	.byte	0xc
	.byte	0x6
	.byte	0x1c
	.4byte	0x126
	.uleb128 0x6
	.4byte	.LASF22
	.byte	0x6
	.byte	0x1d
	.4byte	0xb0
	.byte	0
	.uleb128 0x7
	.string	"tmo"
	.byte	0x6
	.byte	0x1e
	.4byte	0xb0
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF23
	.byte	0x6
	.byte	0x1f
	.4byte	0xb0
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.4byte	.LASF24
	.byte	0x6
	.byte	0x20
	.4byte	0xf9
	.uleb128 0x5
	.byte	0xc
	.byte	0x6
	.byte	0x3d
	.4byte	0x152
	.uleb128 0x7
	.string	"mux"
	.byte	0x6
	.byte	0x3e
	.4byte	0xee
	.byte	0
	.uleb128 0x6
	.4byte	.LASF25
	.byte	0x6
	.byte	0x3f
	.4byte	0x2c
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.4byte	.LASF26
	.byte	0x6
	.byte	0x40
	.4byte	0x131
	.uleb128 0x5
	.byte	0x14
	.byte	0x6
	.byte	0x65
	.4byte	0x1a0
	.uleb128 0x6
	.4byte	.LASF27
	.byte	0x6
	.byte	0x66
	.4byte	0x1a0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF28
	.byte	0x6
	.byte	0x67
	.4byte	0x1a6
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF29
	.byte	0x6
	.byte	0x68
	.4byte	0x1a6
	.byte	0x8
	.uleb128 0x7
	.string	"rd"
	.byte	0x6
	.byte	0x69
	.4byte	0x1a6
	.byte	0xc
	.uleb128 0x7
	.string	"wr"
	.byte	0x6
	.byte	0x6a
	.4byte	0x1a6
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x9a
	.uleb128 0x9
	.4byte	0xb0
	.uleb128 0x4
	.4byte	.LASF30
	.byte	0x6
	.byte	0x6b
	.4byte	0x15d
	.uleb128 0xa
	.4byte	.LASF51
	.byte	0x2
	.byte	0xf8
	.4byte	0x2c
	.byte	0x3
	.4byte	0x1df
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0x2
	.byte	0xf9
	.4byte	0x2c
	.uleb128 0xc
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0x2
	.byte	0xf9
	.4byte	0x2c
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF34
	.byte	0x1
	.byte	0x1b
	.4byte	0xbb
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x246
	.uleb128 0xe
	.string	"tmo"
	.byte	0x1
	.byte	0x1b
	.4byte	0x246
	.4byte	.LLST0
	.uleb128 0xf
	.4byte	.LASF33
	.byte	0x1
	.byte	0x1d
	.4byte	0x25
	.4byte	.LLST1
	.uleb128 0x10
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.4byte	0x23c
	.uleb128 0x11
	.string	"cur"
	.byte	0x1
	.byte	0x1f
	.4byte	0x2c
	.4byte	.LLST2
	.uleb128 0x12
	.4byte	.LVL3
	.4byte	0x489
	.byte	0
	.uleb128 0x12
	.4byte	.LVL1
	.4byte	0x495
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x126
	.uleb128 0xd
	.4byte	.LASF35
	.byte	0x1
	.byte	0x30
	.4byte	0xbb
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x328
	.uleb128 0x13
	.4byte	.LASF36
	.byte	0x1
	.byte	0x30
	.4byte	0x328
	.4byte	.LLST3
	.uleb128 0x14
	.string	"tmo"
	.byte	0x1
	.byte	0x30
	.4byte	0x246
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x15
	.string	"res"
	.byte	0x1
	.byte	0x32
	.4byte	0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x16
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.uleb128 0x17
	.4byte	.LASF25
	.byte	0x1
	.byte	0x36
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0xf
	.4byte	.LASF37
	.byte	0x1
	.byte	0x3d
	.4byte	0xc6
	.4byte	.LLST4
	.uleb128 0x18
	.4byte	0x1b6
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.byte	0x1
	.byte	0x36
	.4byte	0x2e9
	.uleb128 0x16
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.uleb128 0x19
	.4byte	0x1c6
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x16
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.uleb128 0x19
	.4byte	0x1d2
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL15
	.4byte	0x4a0
	.4byte	0x302
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL19
	.4byte	0x4ab
	.4byte	0x316
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL20
	.4byte	0x1df
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x152
	.uleb128 0xd
	.4byte	.LASF38
	.byte	0x1
	.byte	0x4d
	.4byte	0xbb
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x38b
	.uleb128 0x13
	.4byte	.LASF36
	.byte	0x1
	.byte	0x4d
	.4byte	0x328
	.4byte	.LLST5
	.uleb128 0xf
	.4byte	.LASF25
	.byte	0x1
	.byte	0x50
	.4byte	0x2c
	.4byte	.LLST6
	.uleb128 0x1a
	.4byte	.LVL24
	.4byte	0x4b6
	.4byte	0x37a
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL25
	.4byte	0x4ab
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF39
	.byte	0x1
	.byte	0x60
	.4byte	0x1a0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3d1
	.uleb128 0xe
	.string	"rb"
	.byte	0x1
	.byte	0x60
	.4byte	0x3d1
	.4byte	.LLST7
	.uleb128 0x13
	.4byte	.LASF28
	.byte	0x1
	.byte	0x60
	.4byte	0xb0
	.4byte	.LLST8
	.uleb128 0x11
	.string	"ptr"
	.byte	0x1
	.byte	0x62
	.4byte	0x1a0
	.4byte	.LLST9
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x1ab
	.uleb128 0xd
	.4byte	.LASF40
	.byte	0x1
	.byte	0x8a
	.4byte	0x1a0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x41b
	.uleb128 0xe
	.string	"rb"
	.byte	0x1
	.byte	0x8a
	.4byte	0x3d1
	.4byte	.LLST10
	.uleb128 0x13
	.4byte	.LASF28
	.byte	0x1
	.byte	0x8a
	.4byte	0xb0
	.4byte	.LLST11
	.uleb128 0x15
	.string	"ptr"
	.byte	0x1
	.byte	0x8c
	.4byte	0x1a0
	.uleb128 0x1
	.byte	0x5a
	.byte	0
	.uleb128 0xd
	.4byte	.LASF41
	.byte	0x1
	.byte	0xa4
	.4byte	0xb0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x452
	.uleb128 0xe
	.string	"rb"
	.byte	0x1
	.byte	0xa4
	.4byte	0x3d1
	.4byte	.LLST12
	.uleb128 0xf
	.4byte	.LASF28
	.byte	0x1
	.byte	0xa6
	.4byte	0xb0
	.4byte	.LLST13
	.byte	0
	.uleb128 0xd
	.4byte	.LASF42
	.byte	0x1
	.byte	0xb1
	.4byte	0xb0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x489
	.uleb128 0xe
	.string	"rb"
	.byte	0x1
	.byte	0xb1
	.4byte	0x3d1
	.4byte	.LLST14
	.uleb128 0xf
	.4byte	.LASF28
	.byte	0x1
	.byte	0xb3
	.4byte	0xb0
	.4byte	.LLST15
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF43
	.4byte	.LASF43
	.byte	0x7
	.2byte	0x2d4
	.uleb128 0x1e
	.4byte	.LASF44
	.4byte	.LASF44
	.byte	0x8
	.byte	0x34
	.uleb128 0x1e
	.4byte	.LASF45
	.4byte	.LASF45
	.byte	0x2
	.byte	0xe5
	.uleb128 0x1e
	.4byte	.LASF46
	.4byte	.LASF46
	.byte	0x9
	.byte	0x99
	.uleb128 0x1e
	.4byte	.LASF47
	.4byte	.LASF47
	.byte	0x2
	.byte	0xe6
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x16
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x1e
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
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL11
	.4byte	.LFE19
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
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL10
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL13
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL21
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL15
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL23
	.4byte	.LVL24-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL24-1
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL23
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL28
	.4byte	.LFE22
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL27
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LFE22
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL30
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL32
	.4byte	.LFE22
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL37
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL41
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL44
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL46
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
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL37
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL39
	.4byte	.LVL41
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL42
	.4byte	.LVL44
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL45
	.4byte	.LVL47
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LFE23
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL51
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL53
	.4byte	.LVL55
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL56
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL52
	.4byte	.LVL54
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL55
	.4byte	.LVL57
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL57
	.4byte	.LFE24
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL58
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL61
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
	.4byte	.LFE25
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL59
	.4byte	.LVL60
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL60
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL63
	.4byte	.LVL65
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL65
	.4byte	.LFE25
	.2byte	0x1
	.byte	0x58
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
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF37:
	.string	"success"
.LASF42:
	.string	"esp_apptrace_rb_write_size_get"
.LASF5:
	.string	"__uint8_t"
.LASF38:
	.string	"esp_apptrace_lock_give"
.LASF31:
	.string	"state"
.LASF50:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\app_trace"
.LASF20:
	.string	"count"
.LASF21:
	.string	"portMUX_TYPE"
.LASF22:
	.string	"start"
.LASF1:
	.string	"short unsigned int"
.LASF33:
	.string	"cpu_freq"
.LASF40:
	.string	"esp_apptrace_rb_consume"
.LASF6:
	.string	"__int32_t"
.LASF48:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF34:
	.string	"esp_apptrace_tmo_check"
.LASF45:
	.string	"vPortCPUAcquireMutexTimeout"
.LASF47:
	.string	"vPortCPUReleaseMutex"
.LASF27:
	.string	"data"
.LASF9:
	.string	"long long unsigned int"
.LASF3:
	.string	"unsigned char"
.LASF29:
	.string	"cur_size"
.LASF7:
	.string	"__uint32_t"
.LASF12:
	.string	"long unsigned int"
.LASF35:
	.string	"esp_apptrace_lock_take"
.LASF25:
	.string	"int_state"
.LASF17:
	.string	"esp_err_t"
.LASF49:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/app_trace/app_trace_util.c"
.LASF26:
	.string	"esp_apptrace_lock_t"
.LASF43:
	.string	"xthal_get_ccount"
.LASF19:
	.string	"owner"
.LASF0:
	.string	"unsigned int"
.LASF51:
	.string	"portENTER_CRITICAL_NESTED"
.LASF24:
	.string	"esp_apptrace_tmo_t"
.LASF13:
	.string	"char"
.LASF14:
	.string	"uint8_t"
.LASF23:
	.string	"elapsed"
.LASF41:
	.string	"esp_apptrace_rb_read_size_get"
.LASF15:
	.string	"int32_t"
.LASF11:
	.string	"sizetype"
.LASF46:
	.string	"_xtos_set_intlevel"
.LASF8:
	.string	"long long int"
.LASF44:
	.string	"esp_clk_cpu_freq"
.LASF32:
	.string	"__tmp"
.LASF4:
	.string	"short int"
.LASF16:
	.string	"uint32_t"
.LASF10:
	.string	"long int"
.LASF2:
	.string	"signed char"
.LASF36:
	.string	"lock"
.LASF28:
	.string	"size"
.LASF18:
	.string	"_Bool"
.LASF39:
	.string	"esp_apptrace_rb_produce"
.LASF30:
	.string	"esp_apptrace_rb_t"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
