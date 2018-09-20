	.file	"clk.c"
	.text
.Ltext0:
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC2:
	.string	"clk"
	.align	4
.LC4:
	.string	"\033[0;31mE (%d) %s: RTC: Not found External 32 kHz XTAL. Switching to Internal 150 kHz RC chain\033[0m\n"
	.align	4
.LC7:
	.string	"\033[0;33mW (%d) %s: still waiting for source selection RTC\033[0m\n"
	.section	.text.select_rtc_slow_clk,"ax",@progbits
	.literal_position
	.literal .LC1, 14999999
	.literal .LC3, .LC2
	.literal .LC5, .LC4
	.literal .LC6, -1431655765
	.literal .LC8, .LC7
	.align	4
	.type	select_rtc_slow_clk, @function
select_rtc_slow_clk:
.LFB11:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/clk.c"
	.loc 1 128 0
.LVL0:
	entry	sp, 32
.LCFI0:
.LVL1:
	.loc 1 132 0
	movi.n	a5, 0
	.loc 1 130 0
	mov.n	a3, a5
.LVL2:
.L6:
	.loc 1 134 0
	bnei	a2, 1, .L2
	.loc 1 143 0
	movi.n	a10, 1
	call8	rtc_clk_32k_enable
.LVL3:
	.loc 1 144 0
	movi	a11, 0x400
	movi.n	a10, 2
	call8	rtc_clk_cal
.LVL4:
	.loc 1 145 0
	l32r	a4, .LC1
	bltu	a4, a10, .L2
	.loc 1 146 0 discriminator 1
	call8	esp_log_timestamp
.LVL5:
	l32r	a12, .LC3
	mov.n	a11, a10
	l32r	a10, .LC5
	call8	ets_printf
.LVL6:
	.loc 1 148 0 discriminator 1
	movi.n	a5, 1
	.loc 1 147 0 discriminator 1
	movi.n	a2, 0
.LVL7:
.L2:
	.loc 1 151 0
	mov.n	a10, a2
	call8	rtc_clk_slow_freq_set
.LVL8:
	.loc 1 152 0
	movi.n	a4, 1
	bgeui	a3, 2, .L3
	movi.n	a4, 0
.L3:
	.loc 1 152 0
	bnone	a5, a4, .L4
.LBB22:
	.loc 1 154 0
	movi.n	a10, 0
	call8	rtc_clk_32k_enable
.LVL9:
	.loc 1 156 0
	movi.n	a10, 5
	call8	rtc_clk_32k_bootstrap
.LVL10:
	.loc 1 157 0
	movi.n	a10, 1
	call8	rtc_clk_32k_enable
.LVL11:
.L4:
.LBE22:
	.loc 1 164 0
	movi	a11, 0x400
	movi.n	a10, 0
	call8	rtc_clk_cal
.LVL12:
	mov.n	a4, a10
.LVL13:
	.loc 1 169 0
	addi.n	a3, a3, 1
.LVL14:
	l32r	a8, .LC6
	muluh	a8, a3, a8
	srli	a8, a8, 5
	addx2	a8, a8, a8
	slli	a9, a8, 4
	bne	a3, a9, .L5
	.loc 1 170 0 discriminator 1
	call8	esp_log_timestamp
.LVL15:
	l32r	a12, .LC3
	mov.n	a11, a10
	l32r	a10, .LC8
	call8	ets_printf
.LVL16:
.L5:
	.loc 1 172 0
	beqz.n	a4, .L6
	.loc 1 174 0
	mov.n	a10, a4
	call8	esp_clk_slowclk_cal_set
.LVL17:
	retw.n
.LFE11:
	.size	select_rtc_slow_clk, .-select_rtc_slow_clk
	.section	.rodata.str1.4
	.align	4
.LC10:
	.string	"rtc_clk_xtal_freq_get() != RTC_XTAL_FREQ_AUTO"
	.align	4
.LC13:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/esp32/clk.c"
	.align	4
.LC17:
	.ascii	"\"(Cannot use REG_GET_"
	.string	"FIELD for DPORT registers use DPORT_REG_GET_FIELD)\" && (!((((((0x3ff40000 + (uart_no) * 0x10000 + ( (uart_no) > 1 ? 0xe000 : 0 ) ) + 0x1C))) >= 0x3ff00000) && ((((0x3ff40000 + (uart_no) * 0x10000 + ( (uart_no) > 1 ? 0xe000 : 0 ) ) + 0x1C))) <= 0x3ff13FFC))"
	.align	4
.LC20:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/uart.h"
	.align	4
.LC22:
	.ascii	"\"(Cannot us"
	.string	"e REG_READ for DPORT registers use DPORT_REG_READ)\" && (!((((((0x3ff40000 + (uart_no) * 0x10000 + ( (uart_no) > 1 ? 0xe000 : 0 ) ) + 0x1C))) >= 0x3ff00000) && ((((0x3ff40000 + (uart_no) * 0x10000 + ( (uart_no) > 1 ? 0xe000 : 0 ) ) + 0x1C))) <= 0x3ff13FFC))"
	.section	.rodata
	.align	4
.LC0:
	.byte	20
	.byte	20
	.byte	20
	.byte	7
	.section	.text.esp_clk_init,"ax",@progbits
	.literal_position
	.literal .LC9, .LC0
	.literal .LC11, .LC10
	.literal .LC12, __func__$4147
	.literal .LC14, .LC13
	.literal .LC24, 1072955420
	.literal .LC25, 1125899907
	.align	4
	.global	esp_clk_init
	.type	esp_clk_init, @function
esp_clk_init:
.LFB7:
	.loc 1 53 0
	entry	sp, 32
.LCFI1:
	.loc 1 55 0
	l32r	a2, .LC9
	l32i.n	a10, a2, 0
	call8	rtc_init
.LVL18:
	.loc 1 69 0
	call8	rtc_clk_xtal_freq_get
.LVL19:
	bnez.n	a10, .L8
	.loc 1 69 0 is_stmt 0 discriminator 1
	l32r	a13, .LC11
	l32r	a12, .LC12
	movi.n	a11, 0x45
	l32r	a10, .LC14
	call8	__assert_func
.LVL20:
.L8:
	.loc 1 72 0 is_stmt 1
	movi.n	a10, 1
	call8	rtc_clk_fast_freq_set
.LVL21:
	.loc 1 77 0
	movi.n	a10, 0
	call8	select_rtc_slow_clk
.LVL22:
.L12:
.LBB29:
.LBB30:
.LBB31:
.LBB32:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/uart.h"
	.loc 2 270 0
	l32r	a8, .LC24
	memw
	l32i.n	a8, a8, 0
.LBE32:
	extui	a8, a8, 24, 4
.LBE31:
	bnez.n	a8, .L12
.LBE30:
.LBE29:
	.loc 1 101 0
	call8	rtc_clk_cpu_freq_get
.LVL23:
	call8	rtc_clk_cpu_freq_value
.LVL24:
	l32r	a2, .LC25
	muluh	a2, a10, a2
	extui	a2, a2, 18, 14
.LVL25:
	.loc 1 103 0
	movi.n	a10, 2
	call8	rtc_clk_cpu_freq_set
.LVL26:
.LBB33:
.LBB34:
	.loc 1 107 0
#APP
# 107 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/clk.c" 1
	rsr.ccount a8
# 0 "" 2
.LVL27:
#NO_APP
.LBE34:
	addx4	a8, a8, a8
.LVL28:
	slli	a9, a8, 5
	quou	a2, a9, a2
.LVL29:
#APP
# 107 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/clk.c" 1
	wsr.ccount a2
# 0 "" 2
#NO_APP
	retw.n
.LBE33:
.LFE7:
	.size	esp_clk_init, .-esp_clk_init
	.section	.iram1,"ax",@progbits
	.literal_position
	.literal .LC26, g_ticks_per_us_pro
	.literal .LC27, 1000000
	.align	4
	.global	esp_clk_cpu_freq
	.type	esp_clk_cpu_freq, @function
esp_clk_cpu_freq:
.LFB8:
	.loc 1 111 0
	entry	sp, 32
.LCFI2:
	.loc 1 112 0
	l32r	a2, .LC26
	l32i.n	a2, a2, 0
	.loc 1 113 0
	l32r	a8, .LC27
	mull	a2, a2, a8
	retw.n
.LFE8:
	.size	esp_clk_cpu_freq, .-esp_clk_cpu_freq
	.literal_position
	.literal .LC28, g_ticks_per_us_pro
	.literal .LC29, 1000000
	.align	4
	.global	esp_clk_apb_freq
	.type	esp_clk_apb_freq, @function
esp_clk_apb_freq:
.LFB9:
	.loc 1 116 0
	entry	sp, 32
.LCFI3:
	.loc 1 117 0
	l32r	a2, .LC28
	l32i.n	a8, a2, 0
	movi.n	a2, 0x50
	minu	a8, a2, a8
	.loc 1 118 0
	l32r	a2, .LC29
	mull	a2, a8, a2
	retw.n
.LFE9:
	.size	esp_clk_apb_freq, .-esp_clk_apb_freq
	.literal_position
	.literal .LC30, g_ticks_per_us_pro
	.literal .LC31, g_ticks_per_us_app
	.align	4
	.global	ets_update_cpu_frequency
	.type	ets_update_cpu_frequency, @function
ets_update_cpu_frequency:
.LFB10:
	.loc 1 121 0
.LVL30:
	entry	sp, 32
.LCFI4:
	.loc 1 123 0
	l32r	a8, .LC30
	s32i.n	a2, a8, 0
	.loc 1 124 0
	l32r	a8, .LC31
	s32i.n	a2, a8, 0
	retw.n
.LFE10:
	.size	ets_update_cpu_frequency, .-ets_update_cpu_frequency
	.section	.text.rtc_clk_select_rtc_slow_clk,"ax",@progbits
	.align	4
	.global	rtc_clk_select_rtc_slow_clk
	.type	rtc_clk_select_rtc_slow_clk, @function
rtc_clk_select_rtc_slow_clk:
.LFB12:
	.loc 1 178 0
	entry	sp, 32
.LCFI5:
	.loc 1 179 0
	movi.n	a10, 1
	call8	select_rtc_slow_clk
.LVL31:
	retw.n
.LFE12:
	.size	rtc_clk_select_rtc_slow_clk, .-rtc_clk_select_rtc_slow_clk
	.section	.text.esp_perip_clk_init,"ax",@progbits
	.literal_position
	.literal .LC32, 228406
	.literal .LC33, 102403080
	.literal .LC34, 1072693440
	.literal .LC35, 1072693276
	.literal .LC36, 1072693452
	.literal .LC37, 15012848
	.literal .LC38, 1073017004
	.literal .LC39, 2097152
	.literal .LC40, 1073139884
	.literal .LC41, 1072693444
	.literal .LC42, 1072693280
	.align	4
	.global	esp_perip_clk_init
	.type	esp_perip_clk_init, @function
esp_perip_clk_init:
.LFB13:
	.loc 1 189 0
	entry	sp, 32
.LCFI6:
.LVL32:
	.loc 1 198 0
	movi.n	a10, 0
	call8	rtc_get_reset_reason
.LVL33:
	mov.n	a2, a10
	.loc 1 201 0
	movi.n	a10, 1
	call8	rtc_get_reset_reason
.LVL34:
	.loc 1 207 0
	addi	a2, a2, -11
	bltui	a2, 3, .L18
	.loc 1 209 0
	addi	a10, a10, -11
	bgeui	a10, 3, .L20
.L18:
.LVL35:
.LBB35:
.LBB36:
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/dport_access.h"
	.loc 3 172 0
	l32r	a10, .LC34
	call8	esp_dport_access_reg_read
.LVL36:
.LBE36:
.LBE35:
	.loc 1 212 0
	movi.n	a3, -1
	xor	a2, a3, a10
.LVL37:
.LBB37:
.LBB38:
	.loc 3 172 0
	l32r	a10, .LC35
	call8	esp_dport_access_reg_read
.LVL38:
.LBE38:
.LBE37:
	.loc 1 213 0
	xor	a5, a3, a10
.LVL39:
.LBB39:
.LBB40:
	.loc 3 172 0
	l32r	a10, .LC36
	call8	esp_dport_access_reg_read
.LVL40:
.LBE40:
.LBE39:
	.loc 1 214 0
	xor	a3, a3, a10
.LVL41:
	j	.L19
.LVL42:
.L20:
	.loc 1 230 0
	l32r	a3, .LC32
	.loc 1 226 0
	movi.n	a5, 0xf
	.loc 1 217 0
	l32r	a2, .LC33
.LVL43:
.L19:
	.loc 1 240 0
	l32r	a10, .LC37
	or	a2, a2, a10
.LVL44:
.LBB41:
.LBB42:
	.loc 3 172 0
	l32r	a6, .LC38
	mov.n	a10, a6
	call8	esp_dport_access_reg_read
.LVL45:
.LBE42:
.LBE41:
	.loc 1 271 0
	l32r	a4, .LC39
	or	a10, a10, a4
	memw
	s32i.n	a10, a6, 0
.LVL46:
.LBB43:
.LBB44:
	.loc 3 172 0
	l32r	a6, .LC40
	mov.n	a10, a6
	call8	esp_dport_access_reg_read
.LVL47:
.LBE44:
.LBE43:
	.loc 1 272 0
	or	a10, a10, a4
	memw
	s32i.n	a10, a6, 0
.LVL48:
.LBB45:
.LBB46:
	.loc 3 172 0
	l32r	a6, .LC34
	mov.n	a10, a6
	call8	esp_dport_access_reg_read
.LVL49:
.LBE46:
.LBE45:
	.loc 1 275 0
	movi.n	a4, -1
	xor	a8, a4, a2
	and	a10, a8, a10
	memw
	s32i.n	a10, a6, 0
.LVL50:
.LBB47:
.LBB48:
	.loc 3 172 0
	l32r	a6, .LC41
	mov.n	a10, a6
	call8	esp_dport_access_reg_read
.LVL51:
.LBE48:
.LBE47:
	.loc 1 276 0
	or	a10, a2, a10
	memw
	s32i.n	a10, a6, 0
.LVL52:
.LBB49:
.LBB50:
	.loc 3 172 0
	l32r	a6, .LC35
	mov.n	a10, a6
	call8	esp_dport_access_reg_read
.LVL53:
.LBE50:
.LBE49:
	.loc 1 279 0
	xor	a2, a4, a5
.LVL54:
	and	a10, a2, a10
	memw
	s32i.n	a10, a6, 0
.LVL55:
.LBB51:
.LBB52:
	.loc 3 172 0
	l32r	a2, .LC42
	mov.n	a10, a2
	call8	esp_dport_access_reg_read
.LVL56:
.LBE52:
.LBE51:
	.loc 1 280 0
	or	a10, a5, a10
	memw
	s32i.n	a10, a2, 0
.LVL57:
.LBB53:
.LBB54:
	.loc 3 172 0
	l32r	a5, .LC36
.LVL58:
	mov.n	a10, a5
	call8	esp_dport_access_reg_read
.LVL59:
.LBE54:
.LBE53:
	.loc 1 283 0
	xor	a2, a4, a3
	and	a10, a10, a2
	memw
	s32i.n	a10, a5, 0
	.loc 1 286 0
	movi.n	a10, 0x1a
	call8	periph_module_enable
.LVL60:
	retw.n
.LFE13:
	.size	esp_perip_clk_init, .-esp_perip_clk_init
	.section	.rodata.__func__$2497,"a",@progbits
	.align	4
	.type	__func__$2497, @object
	.size	__func__$2497, 18
__func__$2497:
	.string	"uart_tx_wait_idle"
	.section	.rodata.__func__$4147,"a",@progbits
	.align	4
	.type	__func__$4147, @object
	.size	__func__$4147, 13
__func__$4147:
	.string	"esp_clk_init"
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
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x4
	.4byte	.LCFI0-.LFB11
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI1-.LFB7
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x4
	.4byte	.LCFI2-.LFB8
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x4
	.4byte	.LCFI3-.LFB9
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI4-.LFB10
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI5-.LFB12
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI6-.LFB13
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
	.text
.Letext0:
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/log/include/esp_log.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/rtc.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/rtc.h"
	.file 9 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/periph_defs.h"
	.file 10 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/ets_sys.h"
	.file 11 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_clk.h"
	.file 12 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/assert.h"
	.file 13 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_dport_access.h"
	.file 14 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/periph_ctrl.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xa4f
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF139
	.byte	0xc
	.4byte	.LASF140
	.4byte	.LASF141
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x4
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
	.byte	0x4
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
	.byte	0x5
	.byte	0x15
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x5
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
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.uleb128 0x5
	.byte	0x4
	.4byte	0xab
	.uleb128 0x6
	.4byte	0x9e
	.uleb128 0x7
	.byte	0x4
	.4byte	0x5e
	.byte	0x6
	.byte	0x1f
	.4byte	0xe1
	.uleb128 0x8
	.4byte	.LASF15
	.byte	0
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF18
	.byte	0x3
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0x5
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x5e
	.byte	0x7
	.byte	0x50
	.4byte	0x14e
	.uleb128 0x8
	.4byte	.LASF21
	.byte	0
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF23
	.byte	0x3
	.uleb128 0x8
	.4byte	.LASF24
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF25
	.byte	0x5
	.uleb128 0x8
	.4byte	.LASF26
	.byte	0x6
	.uleb128 0x8
	.4byte	.LASF27
	.byte	0x7
	.uleb128 0x8
	.4byte	.LASF28
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF29
	.byte	0x9
	.uleb128 0x8
	.4byte	.LASF30
	.byte	0xa
	.uleb128 0x8
	.4byte	.LASF31
	.byte	0xb
	.uleb128 0x8
	.4byte	.LASF32
	.byte	0xc
	.uleb128 0x8
	.4byte	.LASF33
	.byte	0xd
	.uleb128 0x8
	.4byte	.LASF34
	.byte	0xe
	.uleb128 0x8
	.4byte	.LASF35
	.byte	0xf
	.uleb128 0x8
	.4byte	.LASF36
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.4byte	.LASF37
	.byte	0x7
	.byte	0x61
	.4byte	0xe1
	.uleb128 0x7
	.byte	0x4
	.4byte	0x5e
	.byte	0x8
	.byte	0x3c
	.4byte	0x17e
	.uleb128 0x8
	.4byte	.LASF38
	.byte	0
	.uleb128 0x8
	.4byte	.LASF39
	.byte	0x28
	.uleb128 0x8
	.4byte	.LASF40
	.byte	0x1a
	.uleb128 0x8
	.4byte	.LASF41
	.byte	0x18
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x5e
	.byte	0x8
	.byte	0x46
	.4byte	0x1a9
	.uleb128 0x8
	.4byte	.LASF42
	.byte	0
	.uleb128 0x8
	.4byte	.LASF43
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF44
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF45
	.byte	0x3
	.uleb128 0x8
	.4byte	.LASF46
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF47
	.byte	0x8
	.byte	0x4c
	.4byte	0x17e
	.uleb128 0x7
	.byte	0x4
	.4byte	0x5e
	.byte	0x8
	.byte	0x51
	.4byte	0x1d3
	.uleb128 0x8
	.4byte	.LASF48
	.byte	0
	.uleb128 0x8
	.4byte	.LASF49
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF50
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF51
	.byte	0x8
	.byte	0x55
	.4byte	0x1b4
	.uleb128 0x7
	.byte	0x4
	.4byte	0x5e
	.byte	0x8
	.byte	0x5a
	.4byte	0x1f7
	.uleb128 0x8
	.4byte	.LASF52
	.byte	0
	.uleb128 0x8
	.4byte	.LASF53
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x5e
	.byte	0x8
	.byte	0x65
	.4byte	0x216
	.uleb128 0x8
	.4byte	.LASF54
	.byte	0
	.uleb128 0x8
	.4byte	.LASF55
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF56
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.byte	0x8
	.2byte	0x227
	.4byte	0x280
	.uleb128 0xa
	.4byte	.LASF57
	.byte	0x8
	.2byte	0x228
	.4byte	0x7e
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xa
	.4byte	.LASF58
	.byte	0x8
	.2byte	0x229
	.4byte	0x7e
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.4byte	.LASF59
	.byte	0x8
	.2byte	0x22a
	.4byte	0x7e
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.4byte	.LASF60
	.byte	0x8
	.2byte	0x22b
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xa
	.4byte	.LASF61
	.byte	0x8
	.2byte	0x22c
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xa
	.4byte	.LASF62
	.byte	0x8
	.2byte	0x22d
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	.LASF63
	.byte	0x8
	.2byte	0x22e
	.4byte	0x216
	.uleb128 0x7
	.byte	0x4
	.4byte	0x5e
	.byte	0x9
	.byte	0x16
	.4byte	0x359
	.uleb128 0x8
	.4byte	.LASF64
	.byte	0
	.uleb128 0x8
	.4byte	.LASF65
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF66
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF67
	.byte	0x3
	.uleb128 0x8
	.4byte	.LASF68
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF69
	.byte	0x5
	.uleb128 0x8
	.4byte	.LASF70
	.byte	0x6
	.uleb128 0x8
	.4byte	.LASF71
	.byte	0x7
	.uleb128 0x8
	.4byte	.LASF72
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF73
	.byte	0x9
	.uleb128 0x8
	.4byte	.LASF74
	.byte	0xa
	.uleb128 0x8
	.4byte	.LASF75
	.byte	0xb
	.uleb128 0x8
	.4byte	.LASF76
	.byte	0xc
	.uleb128 0x8
	.4byte	.LASF77
	.byte	0xd
	.uleb128 0x8
	.4byte	.LASF78
	.byte	0xe
	.uleb128 0x8
	.4byte	.LASF79
	.byte	0xf
	.uleb128 0x8
	.4byte	.LASF80
	.byte	0x10
	.uleb128 0x8
	.4byte	.LASF81
	.byte	0x11
	.uleb128 0x8
	.4byte	.LASF82
	.byte	0x12
	.uleb128 0x8
	.4byte	.LASF83
	.byte	0x13
	.uleb128 0x8
	.4byte	.LASF84
	.byte	0x14
	.uleb128 0x8
	.4byte	.LASF85
	.byte	0x15
	.uleb128 0x8
	.4byte	.LASF86
	.byte	0x16
	.uleb128 0x8
	.4byte	.LASF87
	.byte	0x17
	.uleb128 0x8
	.4byte	.LASF88
	.byte	0x18
	.uleb128 0x8
	.4byte	.LASF89
	.byte	0x19
	.uleb128 0x8
	.4byte	.LASF90
	.byte	0x1a
	.uleb128 0x8
	.4byte	.LASF91
	.byte	0x1b
	.uleb128 0x8
	.4byte	.LASF92
	.byte	0x1c
	.uleb128 0x8
	.4byte	.LASF93
	.byte	0x1d
	.uleb128 0x8
	.4byte	.LASF94
	.byte	0x1e
	.uleb128 0x8
	.4byte	.LASF95
	.byte	0x1f
	.byte	0
	.uleb128 0xc
	.4byte	.LASF142
	.byte	0x3
	.byte	0xa7
	.4byte	0x7e
	.byte	0x3
	.4byte	0x375
	.uleb128 0xd
	.string	"reg"
	.byte	0x3
	.byte	0xa7
	.4byte	0x7e
	.byte	0
	.uleb128 0xe
	.4byte	.LASF143
	.byte	0x1
	.byte	0x7f
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4e2
	.uleb128 0xf
	.4byte	.LASF113
	.byte	0x1
	.byte	0x7f
	.4byte	0x1d3
	.4byte	.LLST0
	.uleb128 0x10
	.4byte	.LASF96
	.byte	0x1
	.byte	0x81
	.4byte	0x7e
	.4byte	.LLST1
	.uleb128 0x10
	.4byte	.LASF97
	.byte	0x1
	.byte	0x82
	.4byte	0x7e
	.4byte	.LLST2
	.uleb128 0x11
	.4byte	.LASF98
	.byte	0x1
	.byte	0x83
	.4byte	0x4e2
	.byte	0x30
	.uleb128 0x10
	.4byte	.LASF99
	.byte	0x1
	.byte	0x84
	.4byte	0x4e7
	.4byte	.LLST3
	.uleb128 0x12
	.4byte	.LBB22
	.4byte	.LBE22-.LBB22
	.4byte	0x424
	.uleb128 0x10
	.4byte	.LASF100
	.byte	0x1
	.byte	0x9b
	.4byte	0x7e
	.4byte	.LLST4
	.uleb128 0x13
	.4byte	.LVL9
	.4byte	0x991
	.4byte	0x401
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x13
	.4byte	.LVL10
	.4byte	0x99c
	.4byte	0x414
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x15
	.4byte	.LVL11
	.4byte	0x991
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL3
	.4byte	0x991
	.4byte	0x437
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x13
	.4byte	.LVL4
	.4byte	0x9a7
	.4byte	0x451
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x400
	.byte	0
	.uleb128 0x16
	.4byte	.LVL5
	.4byte	0x9b3
	.uleb128 0x13
	.4byte	.LVL6
	.4byte	0x9be
	.4byte	0x47a
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x13
	.4byte	.LVL8
	.4byte	0x9c9
	.4byte	0x48e
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL12
	.4byte	0x9a7
	.4byte	0x4a8
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x400
	.byte	0
	.uleb128 0x16
	.4byte	.LVL15
	.4byte	0x9b3
	.uleb128 0x13
	.4byte	.LVL16
	.4byte	0x9be
	.4byte	0x4d1
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x15
	.4byte	.LVL17
	.4byte	0x9d4
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	0x7e
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF101
	.uleb128 0x17
	.4byte	.LASF144
	.byte	0x2
	.2byte	0x10d
	.byte	0x3
	.4byte	0x515
	.uleb128 0x18
	.4byte	.LASF102
	.byte	0x2
	.2byte	0x10d
	.4byte	0x73
	.uleb128 0x19
	.4byte	.LASF103
	.4byte	0x525
	.4byte	.LASF144
	.byte	0
	.uleb128 0x1a
	.4byte	0x9e
	.4byte	0x525
	.uleb128 0x1b
	.4byte	0x90
	.byte	0x11
	.byte	0
	.uleb128 0x6
	.4byte	0x515
	.uleb128 0x1c
	.4byte	.LASF111
	.byte	0x1
	.byte	0x34
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x678
	.uleb128 0x1d
	.string	"cfg"
	.byte	0x1
	.byte	0x36
	.4byte	0x280
	.uleb128 0x1e
	.4byte	.LASF103
	.4byte	0x688
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$4147
	.uleb128 0x11
	.4byte	.LASF104
	.byte	0x1
	.byte	0x50
	.4byte	0x7e
	.byte	0xa0
	.uleb128 0x11
	.4byte	.LASF105
	.byte	0x1
	.byte	0x51
	.4byte	0x1a9
	.byte	0x2
	.uleb128 0x10
	.4byte	.LASF106
	.byte	0x1
	.byte	0x65
	.4byte	0x7e
	.4byte	.LLST5
	.uleb128 0x11
	.4byte	.LASF107
	.byte	0x1
	.byte	0x6a
	.4byte	0x7e
	.byte	0xa0
	.uleb128 0x1f
	.4byte	0x4ee
	.4byte	.LBB29
	.4byte	.LBE29-.LBB29
	.byte	0x1
	.byte	0x63
	.4byte	0x5bb
	.uleb128 0x20
	.4byte	0x4fb
	.byte	0
	.uleb128 0x21
	.4byte	.LBB30
	.4byte	.LBE30-.LBB30
	.uleb128 0x22
	.4byte	0x507
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2497
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LBB33
	.4byte	.LBE33-.LBB33
	.4byte	0x5ef
	.uleb128 0x23
	.4byte	.LASF108
	.byte	0x1
	.byte	0x6b
	.4byte	0x4c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x21
	.4byte	.LBB34
	.4byte	.LBE34-.LBB34
	.uleb128 0x10
	.4byte	.LASF108
	.byte	0x1
	.byte	0x6b
	.4byte	0x4c
	.4byte	.LLST6
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL18
	.4byte	0x9df
	.uleb128 0x16
	.4byte	.LVL19
	.4byte	0x9eb
	.uleb128 0x13
	.4byte	.LVL20
	.4byte	0x9f6
	.4byte	0x630
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC13
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x45
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$4147
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0
	.uleb128 0x13
	.4byte	.LVL21
	.4byte	0xa01
	.4byte	0x643
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x13
	.4byte	.LVL22
	.4byte	0x375
	.4byte	0x656
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x16
	.4byte	.LVL23
	.4byte	0xa0d
	.uleb128 0x16
	.4byte	.LVL24
	.4byte	0xa19
	.uleb128 0x15
	.4byte	.LVL26
	.4byte	0xa25
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	0x9e
	.4byte	0x688
	.uleb128 0x1b
	.4byte	0x90
	.byte	0xc
	.byte	0
	.uleb128 0x6
	.4byte	0x678
	.uleb128 0x24
	.4byte	.LASF109
	.byte	0x1
	.byte	0x6e
	.4byte	0x4c
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x24
	.4byte	.LASF110
	.byte	0x1
	.byte	0x73
	.4byte	0x4c
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1c
	.4byte	.LASF112
	.byte	0x1
	.byte	0x78
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6da
	.uleb128 0x25
	.4byte	.LASF114
	.byte	0x1
	.byte	0x78
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x26
	.4byte	.LASF145
	.byte	0x1
	.byte	0xb1
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6ff
	.uleb128 0x15
	.4byte	.LVL31
	.4byte	0x375
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF115
	.byte	0x1
	.byte	0xbc
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x954
	.uleb128 0x10
	.4byte	.LASF116
	.byte	0x1
	.byte	0xbe
	.4byte	0x7e
	.4byte	.LLST7
	.uleb128 0x10
	.4byte	.LASF117
	.byte	0x1
	.byte	0xbe
	.4byte	0x7e
	.4byte	.LLST8
	.uleb128 0x10
	.4byte	.LASF118
	.byte	0x1
	.byte	0xbe
	.4byte	0x7e
	.4byte	.LLST9
	.uleb128 0x27
	.4byte	.LASF119
	.byte	0x1
	.byte	0xc3
	.4byte	0x954
	.uleb128 0x1f
	.4byte	0x359
	.4byte	.LBB35
	.4byte	.LBE35-.LBB35
	.byte	0x1
	.byte	0xd4
	.4byte	0x77c
	.uleb128 0x28
	.4byte	0x369
	.4byte	.LLST10
	.uleb128 0x15
	.4byte	.LVL36
	.4byte	0xa31
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0xc
	.4byte	0x3ff000c0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	0x359
	.4byte	.LBB37
	.4byte	.LBE37-.LBB37
	.byte	0x1
	.byte	0xd5
	.4byte	0x7ac
	.uleb128 0x28
	.4byte	0x369
	.4byte	.LLST11
	.uleb128 0x15
	.4byte	.LVL38
	.4byte	0xa31
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0xc
	.4byte	0x3ff0001c
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	0x359
	.4byte	.LBB39
	.4byte	.LBE39-.LBB39
	.byte	0x1
	.byte	0xd6
	.4byte	0x7dc
	.uleb128 0x28
	.4byte	0x369
	.4byte	.LLST12
	.uleb128 0x15
	.4byte	.LVL40
	.4byte	0xa31
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0xc
	.4byte	0x3ff000cc
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	0x359
	.4byte	.LBB41
	.4byte	.LBE41-.LBB41
	.byte	0x1
	.2byte	0x10f
	.4byte	0x80a
	.uleb128 0x2a
	.4byte	0x369
	.4byte	0x3ff4f0ac
	.uleb128 0x15
	.4byte	.LVL45
	.4byte	0xa31
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	0x359
	.4byte	.LBB43
	.4byte	.LBE43-.LBB43
	.byte	0x1
	.2byte	0x110
	.4byte	0x838
	.uleb128 0x2a
	.4byte	0x369
	.4byte	0x3ff6d0ac
	.uleb128 0x15
	.4byte	.LVL47
	.4byte	0xa31
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	0x359
	.4byte	.LBB45
	.4byte	.LBE45-.LBB45
	.byte	0x1
	.2byte	0x113
	.4byte	0x866
	.uleb128 0x2a
	.4byte	0x369
	.4byte	0x3ff000c0
	.uleb128 0x15
	.4byte	.LVL49
	.4byte	0xa31
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	0x359
	.4byte	.LBB47
	.4byte	.LBE47-.LBB47
	.byte	0x1
	.2byte	0x114
	.4byte	0x894
	.uleb128 0x2a
	.4byte	0x369
	.4byte	0x3ff000c4
	.uleb128 0x15
	.4byte	.LVL51
	.4byte	0xa31
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	0x359
	.4byte	.LBB49
	.4byte	.LBE49-.LBB49
	.byte	0x1
	.2byte	0x117
	.4byte	0x8c2
	.uleb128 0x2a
	.4byte	0x369
	.4byte	0x3ff0001c
	.uleb128 0x15
	.4byte	.LVL53
	.4byte	0xa31
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	0x359
	.4byte	.LBB51
	.4byte	.LBE51-.LBB51
	.byte	0x1
	.2byte	0x118
	.4byte	0x8f0
	.uleb128 0x2a
	.4byte	0x369
	.4byte	0x3ff00020
	.uleb128 0x15
	.4byte	.LVL56
	.4byte	0xa31
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	0x359
	.4byte	.LBB53
	.4byte	.LBE53-.LBB53
	.byte	0x1
	.2byte	0x11b
	.4byte	0x91e
	.uleb128 0x2a
	.4byte	0x369
	.4byte	0x3ff000cc
	.uleb128 0x15
	.4byte	.LVL59
	.4byte	0xa31
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL33
	.4byte	0xa3c
	.4byte	0x931
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x13
	.4byte	.LVL34
	.4byte	0xa3c
	.4byte	0x944
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x15
	.4byte	.LVL60
	.4byte	0xa47
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x4a
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	0x14e
	.4byte	0x964
	.uleb128 0x1b
	.4byte	0x90
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.string	"TAG"
	.byte	0x1
	.byte	0x31
	.4byte	0x976
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC2
	.byte	0x9f
	.uleb128 0x6
	.4byte	0xa5
	.uleb128 0x2c
	.4byte	.LASF120
	.byte	0x1
	.byte	0x2e
	.4byte	0x7e
	.uleb128 0x2c
	.4byte	.LASF121
	.byte	0x1
	.byte	0x2f
	.4byte	0x7e
	.uleb128 0x2d
	.4byte	.LASF122
	.4byte	.LASF122
	.byte	0x8
	.byte	0xae
	.uleb128 0x2d
	.4byte	.LASF123
	.4byte	.LASF123
	.byte	0x8
	.byte	0xc0
	.uleb128 0x2e
	.4byte	.LASF124
	.4byte	.LASF124
	.byte	0x8
	.2byte	0x177
	.uleb128 0x2d
	.4byte	.LASF125
	.4byte	.LASF125
	.byte	0x6
	.byte	0x57
	.uleb128 0x2d
	.4byte	.LASF126
	.4byte	.LASF126
	.byte	0xa
	.byte	0xde
	.uleb128 0x2d
	.4byte	.LASF127
	.4byte	.LASF127
	.byte	0x8
	.byte	0xf7
	.uleb128 0x2d
	.4byte	.LASF128
	.4byte	.LASF128
	.byte	0xb
	.byte	0x2a
	.uleb128 0x2e
	.4byte	.LASF129
	.4byte	.LASF129
	.byte	0x8
	.2byte	0x243
	.uleb128 0x2d
	.4byte	.LASF130
	.4byte	.LASF130
	.byte	0x8
	.byte	0x9e
	.uleb128 0x2d
	.4byte	.LASF131
	.4byte	.LASF131
	.byte	0xc
	.byte	0x29
	.uleb128 0x2e
	.4byte	.LASF132
	.4byte	.LASF132
	.byte	0x8
	.2byte	0x111
	.uleb128 0x2e
	.4byte	.LASF133
	.4byte	.LASF133
	.byte	0x8
	.2byte	0x143
	.uleb128 0x2e
	.4byte	.LASF134
	.4byte	.LASF134
	.byte	0x8
	.2byte	0x14a
	.uleb128 0x2e
	.4byte	.LASF135
	.4byte	.LASF135
	.byte	0x8
	.2byte	0x123
	.uleb128 0x2d
	.4byte	.LASF136
	.4byte	.LASF136
	.byte	0xd
	.byte	0x1e
	.uleb128 0x2d
	.4byte	.LASF137
	.4byte	.LASF137
	.byte	0x7
	.byte	0x9a
	.uleb128 0x2d
	.4byte	.LASF138
	.4byte	.LASF138
	.byte	0xe
	.byte	0x25
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
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x1c
	.uleb128 0xe
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL5-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL13
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL9
	.4byte	.LVL11
	.2byte	0x2
	.byte	0x35
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL25
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL37
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL43
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL39
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL43
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL32
	.4byte	.LVL41
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL43
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL35
	.4byte	.LVL42
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff000c0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL37
	.4byte	.LVL42
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff0001c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL39
	.4byte	.LVL42
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff000cc
	.byte	0x9f
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
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF91:
	.string	"PERIPH_WIFI_MODULE"
.LASF71:
	.string	"PERIPH_I2S1_MODULE"
.LASF139:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF50:
	.string	"RTC_SLOW_FREQ_8MD256"
.LASF33:
	.string	"RTCWDT_CPU_RESET"
.LASF68:
	.string	"PERIPH_I2C0_MODULE"
.LASF22:
	.string	"POWERON_RESET"
.LASF48:
	.string	"RTC_SLOW_FREQ_RTC"
.LASF81:
	.string	"PERIPH_PCNT_MODULE"
.LASF131:
	.string	"__assert_func"
.LASF6:
	.string	"unsigned int"
.LASF118:
	.string	"wifi_bt_sdio_clk"
.LASF58:
	.string	"xtal_wait"
.LASF88:
	.string	"PERIPH_CAN_MODULE"
.LASF95:
	.string	"PERIPH_BT_LC_MODULE"
.LASF125:
	.string	"esp_log_timestamp"
.LASF92:
	.string	"PERIPH_BT_MODULE"
.LASF108:
	.string	"__ccount"
.LASF99:
	.string	"changing_clock_to_150k"
.LASF94:
	.string	"PERIPH_BT_BASEBAND_MODULE"
.LASF42:
	.string	"RTC_CPU_FREQ_XTAL"
.LASF73:
	.string	"PERIPH_TIMG1_MODULE"
.LASF60:
	.string	"clkctl_init"
.LASF107:
	.string	"freq_after"
.LASF67:
	.string	"PERIPH_UART2_MODULE"
.LASF76:
	.string	"PERIPH_PWM2_MODULE"
.LASF134:
	.string	"rtc_clk_cpu_freq_value"
.LASF10:
	.string	"uint32_t"
.LASF144:
	.string	"uart_tx_wait_idle"
.LASF43:
	.string	"RTC_CPU_FREQ_80M"
.LASF140:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/esp32/clk.c"
.LASF126:
	.string	"ets_printf"
.LASF64:
	.string	"PERIPH_LEDC_MODULE"
.LASF8:
	.string	"long long unsigned int"
.LASF25:
	.string	"DEEPSLEEP_RESET"
.LASF112:
	.string	"ets_update_cpu_frequency"
.LASF38:
	.string	"RTC_XTAL_FREQ_AUTO"
.LASF137:
	.string	"rtc_get_reset_reason"
.LASF130:
	.string	"rtc_clk_xtal_freq_get"
.LASF122:
	.string	"rtc_clk_32k_enable"
.LASF17:
	.string	"ESP_LOG_WARN"
.LASF28:
	.string	"TG1WDT_SYS_RESET"
.LASF124:
	.string	"rtc_clk_cal"
.LASF132:
	.string	"rtc_clk_fast_freq_set"
.LASF80:
	.string	"PERIPH_RMT_MODULE"
.LASF27:
	.string	"TG0WDT_SYS_RESET"
.LASF37:
	.string	"RESET_REASON"
.LASF41:
	.string	"RTC_XTAL_FREQ_24M"
.LASF101:
	.string	"_Bool"
.LASF135:
	.string	"rtc_clk_cpu_freq_set"
.LASF23:
	.string	"SW_RESET"
.LASF119:
	.string	"rst_reas"
.LASF26:
	.string	"SDIO_RESET"
.LASF15:
	.string	"ESP_LOG_NONE"
.LASF105:
	.string	"freq"
.LASF34:
	.string	"EXT_CPU_RESET"
.LASF121:
	.string	"g_ticks_per_us_app"
.LASF82:
	.string	"PERIPH_SPI_MODULE"
.LASF84:
	.string	"PERIPH_VSPI_MODULE"
.LASF113:
	.string	"slow_clk"
.LASF89:
	.string	"PERIPH_EMAC_MODULE"
.LASF136:
	.string	"esp_dport_access_reg_read"
.LASF14:
	.string	"char"
.LASF52:
	.string	"RTC_FAST_FREQ_XTALD4"
.LASF45:
	.string	"RTC_CPU_FREQ_240M"
.LASF69:
	.string	"PERIPH_I2C1_MODULE"
.LASF47:
	.string	"rtc_cpu_freq_t"
.LASF65:
	.string	"PERIPH_UART0_MODULE"
.LASF74:
	.string	"PERIPH_PWM0_MODULE"
.LASF63:
	.string	"rtc_config_t"
.LASF78:
	.string	"PERIPH_UHCI0_MODULE"
.LASF9:
	.string	"uint8_t"
.LASF120:
	.string	"g_ticks_per_us_pro"
.LASF40:
	.string	"RTC_XTAL_FREQ_26M"
.LASF114:
	.string	"ticks_per_us"
.LASF123:
	.string	"rtc_clk_32k_bootstrap"
.LASF7:
	.string	"long long int"
.LASF35:
	.string	"RTCWDT_BROWN_OUT_RESET"
.LASF128:
	.string	"esp_clk_slowclk_cal_set"
.LASF31:
	.string	"TGWDT_CPU_RESET"
.LASF98:
	.string	"warning_timeout"
.LASF57:
	.string	"ck8m_wait"
.LASF111:
	.string	"esp_clk_init"
.LASF87:
	.string	"PERIPH_SDIO_SLAVE_MODULE"
.LASF54:
	.string	"RTC_CAL_RTC_MUX"
.LASF143:
	.string	"select_rtc_slow_clk"
.LASF117:
	.string	"hwcrypto_perip_clk"
.LASF77:
	.string	"PERIPH_PWM3_MODULE"
.LASF116:
	.string	"common_perip_clk"
.LASF18:
	.string	"ESP_LOG_INFO"
.LASF133:
	.string	"rtc_clk_cpu_freq_get"
.LASF100:
	.string	"min_bootstrap"
.LASF115:
	.string	"esp_perip_clk_init"
.LASF97:
	.string	"wait"
.LASF129:
	.string	"rtc_init"
.LASF53:
	.string	"RTC_FAST_FREQ_8M"
.LASF102:
	.string	"uart_no"
.LASF44:
	.string	"RTC_CPU_FREQ_160M"
.LASF70:
	.string	"PERIPH_I2S0_MODULE"
.LASF110:
	.string	"esp_clk_apb_freq"
.LASF55:
	.string	"RTC_CAL_8MD256"
.LASF2:
	.string	"short int"
.LASF11:
	.string	"long int"
.LASF51:
	.string	"rtc_slow_freq_t"
.LASF83:
	.string	"PERIPH_HSPI_MODULE"
.LASF32:
	.string	"SW_CPU_RESET"
.LASF138:
	.string	"periph_module_enable"
.LASF85:
	.string	"PERIPH_SPI_DMA_MODULE"
.LASF4:
	.string	"__uint8_t"
.LASF106:
	.string	"freq_before"
.LASF29:
	.string	"RTCWDT_SYS_RESET"
.LASF46:
	.string	"RTC_CPU_FREQ_2M"
.LASF72:
	.string	"PERIPH_TIMG0_MODULE"
.LASF36:
	.string	"RTCWDT_RTC_RESET"
.LASF12:
	.string	"sizetype"
.LASF13:
	.string	"long unsigned int"
.LASF21:
	.string	"NO_MEAN"
.LASF20:
	.string	"ESP_LOG_VERBOSE"
.LASF66:
	.string	"PERIPH_UART1_MODULE"
.LASF59:
	.string	"pll_wait"
.LASF96:
	.string	"cal_val"
.LASF75:
	.string	"PERIPH_PWM1_MODULE"
.LASF79:
	.string	"PERIPH_UHCI1_MODULE"
.LASF1:
	.string	"unsigned char"
.LASF93:
	.string	"PERIPH_WIFI_BT_COMMON_MODULE"
.LASF5:
	.string	"__uint32_t"
.LASF61:
	.string	"pwrctl_init"
.LASF24:
	.string	"OWDT_RESET"
.LASF104:
	.string	"freq_mhz"
.LASF62:
	.string	"rtc_dboost_fpd"
.LASF39:
	.string	"RTC_XTAL_FREQ_40M"
.LASF56:
	.string	"RTC_CAL_32K_XTAL"
.LASF142:
	.string	"DPORT_READ_PERI_REG"
.LASF19:
	.string	"ESP_LOG_DEBUG"
.LASF109:
	.string	"esp_clk_cpu_freq"
.LASF30:
	.string	"INTRUSION_RESET"
.LASF86:
	.string	"PERIPH_SDMMC_MODULE"
.LASF0:
	.string	"signed char"
.LASF3:
	.string	"short unsigned int"
.LASF103:
	.string	"__func__"
.LASF49:
	.string	"RTC_SLOW_FREQ_32K_XTAL"
.LASF90:
	.string	"PERIPH_RNG_MODULE"
.LASF127:
	.string	"rtc_clk_slow_freq_set"
.LASF145:
	.string	"rtc_clk_select_rtc_slow_clk"
.LASF141:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\esp32"
.LASF16:
	.string	"ESP_LOG_ERROR"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
