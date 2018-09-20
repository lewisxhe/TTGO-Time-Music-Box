	.file	"sleep_modes.c"
	.text
.Ltext0:
	.section	.text.rtc_wdt_disable,"ax",@progbits
	.literal_position
	.literal .LC4, 1072988324
	.literal .LC5, 1356348065
	.literal .LC6, 1072988320
	.literal .LC7, 1072988300
	.literal .LC8, -1879048193
	.literal .LC9, 2147483647
	.align	4
	.type	rtc_wdt_disable, @function
rtc_wdt_disable:
.LFB40:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/sleep_modes.c"
	.loc 1 254 0
	entry	sp, 32
.LCFI0:
.LBB13:
	.loc 1 255 0
	l32r	a10, .LC4
	l32r	a8, .LC5
	memw
	s32i.n	a8, a10, 0
.LBE13:
.LBB14:
	.loc 1 256 0
	movi.n	a9, 1
	l32r	a8, .LC6
	memw
	s32i.n	a9, a8, 0
.LBE14:
.LBB15:
.LBB16:
	.loc 1 257 0
	l32r	a8, .LC7
	memw
	l32i.n	a11, a8, 0
.LBE16:
	l32r	a9, .LC8
	and	a9, a11, a9
	memw
	s32i.n	a9, a8, 0
.LBE15:
.LBB17:
	.loc 1 258 0
	memw
	l32i.n	a11, a8, 0
	l32r	a9, .LC9
	and	a9, a11, a9
	memw
	s32i.n	a9, a8, 0
.LBE17:
.LBB18:
	.loc 1 259 0
	movi.n	a8, 0
	memw
	s32i.n	a8, a10, 0
	retw.n
.LBE18:
.LFE40:
	.size	rtc_wdt_disable, .-rtc_wdt_disable
	.section	.text.get_power_down_flags,"ax",@progbits
	.literal_position
	.literal .LC10, s_config
	.literal .LC11, _rtc_data_end
	.literal .LC12, _rtc_data_start
	.literal .LC13, _rtc_bss_end
	.literal .LC14, _rtc_bss_start
	.align	4
	.type	get_power_down_flags, @function
get_power_down_flags:
.LFB56:
	.loc 1 601 0
	entry	sp, 32
.LCFI1:
	.loc 1 612 0
	l32r	a2, .LC10
	l32i.n	a2, a2, 4
	bnei	a2, 2, .L3
	.loc 1 612 0 is_stmt 0 discriminator 1
	l32r	a8, .LC12
	l32r	a2, .LC11
	bltu	a8, a2, .L4
	.loc 1 613 0 is_stmt 1
	l32r	a8, .LC14
	l32r	a2, .LC13
	bltu	a8, a2, .L4
	.loc 1 614 0 discriminator 1
	l32r	a2, .LC10
	l32i.n	a2, a2, 24
	.loc 1 613 0 discriminator 1
	bbci	a2, 9, .L3
.L4:
	.loc 1 615 0
	movi.n	a8, 1
	l32r	a2, .LC10
	s32i.n	a8, a2, 4
.L3:
	.loc 1 623 0
	l32r	a2, .LC10
	l32i.n	a2, a2, 8
	bnei	a2, 2, .L5
	.loc 1 624 0
	movi.n	a8, 1
	l32r	a2, .LC10
	s32i.n	a8, a2, 8
.L5:
	.loc 1 629 0
	l32r	a2, .LC10
	l32i.n	a2, a2, 0
	bnei	a2, 2, .L6
	.loc 1 630 0
	l32r	a2, .LC10
	l32i.n	a2, a2, 24
	extui	a2, a2, 0, 11
	bbci	a2, 0, .L7
	.loc 1 631 0
	movi.n	a8, 1
	l32r	a2, .LC10
	s32i.n	a8, a2, 0
	j	.L6
.L7:
	.loc 1 632 0
	movi	a8, 0x300
	bnone	a2, a8, .L6
	.loc 1 635 0
	movi.n	a8, 0
	l32r	a2, .LC10
	s32i.n	a8, a2, 0
.L6:
	.loc 1 639 0
	l32r	a2, .LC10
	l32i.n	a2, a2, 12
	bnei	a2, 2, .L8
	.loc 1 640 0
	movi.n	a8, 0
	l32r	a2, .LC10
	s32i.n	a8, a2, 12
.L8:
.LVL0:
	.loc 1 651 0
	l32r	a2, .LC10
	l32i.n	a2, a2, 8
	bnei	a2, 1, .L13
	.loc 1 650 0
	movi.n	a2, 0
	j	.L9
.L13:
	.loc 1 652 0
	movi.n	a2, 8
.L9:
.LVL1:
	.loc 1 654 0
	l32r	a8, .LC10
	l32i.n	a8, a8, 4
	beqi	a8, 1, .L10
	.loc 1 655 0
	movi.n	a8, 4
	or	a2, a2, a8
.LVL2:
.L10:
	.loc 1 657 0
	l32r	a8, .LC10
	l32i.n	a8, a8, 0
	beqi	a8, 1, .L11
	.loc 1 658 0
	movi.n	a8, 2
	or	a2, a2, a8
.LVL3:
.L11:
	.loc 1 660 0
	l32r	a8, .LC10
	l32i.n	a8, a8, 12
	beqi	a8, 1, .L12
	.loc 1 661 0
	movi.n	a8, 0x40
	or	a2, a2, a8
.LVL4:
.L12:
	.loc 1 664 0
	retw.n
.LFE56:
	.size	get_power_down_flags, .-get_power_down_flags
	.section	.rtc.text,"ax",@progbits
	.literal_position
	.literal .LC15, 1072693316
	.literal .LC16, 8192
	.literal .LC17, -8193
	.literal .LC18, 1125899907
	.align	4
	.global	esp_default_wake_deep_sleep
	.type	esp_default_wake_deep_sleep, @function
esp_default_wake_deep_sleep:
.LFB32:
	.loc 1 120 0
	entry	sp, 32
.LCFI2:
	.loc 1 122 0
	l32r	a8, .LC15
	memw
	l32i.n	a10, a8, 0
	l32r	a9, .LC16
	or	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
	.loc 1 124 0
	memw
	l32i.n	a10, a8, 0
	l32r	a9, .LC17
	and	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
	.loc 1 129 0
	call8	ets_get_detected_xtal_freq
.LVL5:
	l32r	a8, .LC18
	muluh	a10, a10, a8
	extui	a10, a10, 18, 14
	call8	ets_update_cpu_frequency_rom
.LVL6:
	.loc 1 132 0
	movi	a10, 0x7d0
	call8	ets_delay_us
.LVL7:
	retw.n
.LFE32:
	.size	esp_default_wake_deep_sleep, .-esp_default_wake_deep_sleep
	.weak	esp_wake_deep_sleep
	.set	esp_wake_deep_sleep,esp_default_wake_deep_sleep
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC23:
	.string	"\"(Cannot use REG_SET_BIT for DPORT registers use DPORT_REG_SET_BIT)\" && (!((((((0x3ff40000 + (i) * 0x10000 + ( (i) > 1 ? 0xe000 : 0 ) ) + 0x34))) >= 0x3ff00000) && ((((0x3ff40000 + (i) * 0x10000 + ( (i) > 1 ? 0xe000 : 0 ) ) + 0x34))) <= 0x3ff13FFC))"
	.align	4
.LC26:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/esp32/sleep_modes.c"
	.align	4
.LC29:
	.ascii	"\"(Cannot use REG_GET_"
	.string	"FIELD for DPORT registers use DPORT_REG_GET_FIELD)\" && (!((((((0x3ff40000 + (uart_no) * 0x10000 + ( (uart_no) > 1 ? 0xe000 : 0 ) ) + 0x1C))) >= 0x3ff00000) && ((((0x3ff40000 + (uart_no) * 0x10000 + ( (uart_no) > 1 ? 0xe000 : 0 ) ) + 0x1C))) <= 0x3ff13FFC))"
	.align	4
.LC32:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/uart.h"
	.align	4
.LC34:
	.ascii	"\"(Cannot us"
	.string	"e REG_READ for DPORT registers use DPORT_REG_READ)\" && (!((((((0x3ff40000 + (uart_no) * 0x10000 + ( (uart_no) > 1 ? 0xe000 : 0 ) ) + 0x1C))) >= 0x3ff00000) && ((((0x3ff40000 + (uart_no) * 0x10000 + ( (uart_no) > 1 ? 0xe000 : 0 ) ) + 0x1C))) <= 0x3ff13FFC))"
	.section	.iram1,"ax",@progbits
	.literal_position
	.literal .LC19, 57344
	.literal .LC20, 16372
	.literal .LC21, -1072693196
	.literal .LC22, 81916
	.literal .LC24, .LC23
	.literal .LC25, __func__$5736
	.literal .LC27, .LC26
	.literal .LC28, -1072693220
	.literal .LC30, .LC29
	.literal .LC31, __func__$4801
	.literal .LC33, .LC32
	.literal .LC35, .LC34
	.align	4
	.type	suspend_uarts, @function
suspend_uarts:
.LFB35:
	.loc 1 152 0
	entry	sp, 32
.LCFI3:
.LVL8:
.LBB25:
	.loc 1 153 0
	movi.n	a12, 0
	j	.L16
.LVL9:
.L27:
.LBB26:
	.loc 1 154 0
	l32r	a8, .LC20
	add.n	a8, a12, a8
	slli	a8, a8, 16
	blti	a12, 2, .L28
	l32r	a9, .LC19
	j	.L17
.L28:
	movi.n	a9, 0
.L17:
	.loc 1 154 0 is_stmt 0 discriminator 4
	add.n	a10, a9, a8
	l32r	a9, .LC21
	add.n	a9, a10, a9
	l32r	a10, .LC22
	bltu	a10, a9, .L18
	.loc 1 154 0 discriminator 5
	l32r	a13, .LC24
	l32r	a12, .LC25
.LVL10:
	movi	a11, 0x9a
	l32r	a10, .LC27
	call8	__assert_func
.LVL11:
.L18:
	.loc 1 154 0 discriminator 6
	blti	a12, 2, .L29
	.loc 1 154 0
	l32r	a9, .LC19
	j	.L19
.L29:
	movi.n	a9, 0
.L19:
	.loc 1 154 0 discriminator 10
	add.n	a9, a9, a8
	blti	a12, 2, .L30
	.loc 1 154 0
	l32r	a10, .LC19
	j	.L20
.L30:
	movi.n	a10, 0
.L20:
	.loc 1 154 0 discriminator 14
	add.n	a8, a10, a8
	memw
	l32i.n	a10, a8, 52
	movi.n	a8, 8
	or	a8, a10, a8
	memw
	s32i.n	a8, a9, 52
	extui	a9, a12, 0, 8
.LVL12:
.L26:
.LBE26:
.LBB27:
.LBB28:
.LBB29:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/uart.h"
	.loc 2 270 0 is_stmt 1
	l32r	a8, .LC20
	add.n	a8, a9, a8
	slli	a8, a8, 16
	bltui	a9, 2, .L31
	l32r	a10, .LC19
	j	.L21
.L31:
	movi.n	a10, 0
.L21:
	add.n	a11, a8, a10
	l32r	a10, .LC28
	add.n	a10, a11, a10
	l32r	a11, .LC22
	bltu	a11, a10, .L22
	l32r	a13, .LC30
	l32r	a12, .LC31
.LVL13:
	movi	a11, 0x10e
	l32r	a10, .LC33
	call8	__assert_func
.LVL14:
.L22:
.LBB30:
	bltui	a9, 2, .L32
	l32r	a10, .LC19
	j	.L23
.L32:
	movi.n	a10, 0
.L23:
	add.n	a11, a8, a10
	l32r	a10, .LC28
	add.n	a10, a11, a10
	l32r	a11, .LC22
	bltu	a11, a10, .L24
	l32r	a13, .LC35
	l32r	a12, .LC31
.LVL15:
	movi	a11, 0x10e
	l32r	a10, .LC33
	call8	__assert_func
.LVL16:
.L24:
	bltui	a9, 2, .L33
	l32r	a10, .LC19
	j	.L25
.L33:
	movi.n	a10, 0
.L25:
	add.n	a8, a8, a10
	memw
	l32i.n	a8, a8, 28
.LBE30:
	extui	a8, a8, 24, 4
.LBE29:
	bnez.n	a8, .L26
.LBE28:
.LBE27:
	.loc 1 153 0 discriminator 14
	addi.n	a12, a12, 1
.LVL17:
.L16:
	.loc 1 153 0 is_stmt 0 discriminator 2
	blti	a12, 3, .L27
.LBE25:
	.loc 1 157 0 is_stmt 1
	retw.n
.LFE35:
	.size	suspend_uarts, .-suspend_uarts
	.section	.rodata.str1.4
	.align	4
.LC44:
	.string	"\"(Cannot use REG_SET_BIT for DPORT registers use DPORT_REG_SET_BIT)\" && (!((((desc->reg)) >= 0x3ff00000) && ((desc->reg)) <= 0x3ff13FFC))"
	.align	4
.LC48:
	.string	"\"(Cannot use SET_PERI_REG_BITS for DPORT registers use DPORT_SET_PERI_REG_BITS)\" && (!((((desc->reg)) >= 0x3ff00000) && ((desc->reg)) <= 0x3ff13FFC))"
	.align	4
.LC50:
	.string	"\"(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)\" && (!(((((desc->reg))) >= 0x3ff00000) && (((desc->reg))) <= 0x3ff13FFC))"
	.align	4
.LC52:
	.string	"\"(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)\" && (!((((desc->reg)) >= 0x3ff00000) && ((desc->reg)) <= 0x3ff13FFC))"
	.section	.text.ext0_wakeup_prepare,"ax",@progbits
	.literal_position
	.literal .LC36, s_config
	.literal .LC37, 1072989372
	.literal .LC38, 134217727
	.literal .LC39, 1072988256
	.literal .LC40, -1073741825
	.literal .LC41, rtc_gpio_desc
	.literal .LC42, -1072693248
	.literal .LC43, 81916
	.literal .LC45, .LC44
	.literal .LC46, __func__$5848
	.literal .LC47, .LC26
	.literal .LC49, .LC48
	.literal .LC51, .LC50
	.literal .LC53, .LC52
	.align	4
	.type	ext0_wakeup_prepare, @function
ext0_wakeup_prepare:
.LFB50:
	.loc 1 469 0
	entry	sp, 32
.LCFI4:
	.loc 1 470 0
	l32r	a12, .LC36
	l32i.n	a11, a12, 28
	extui	a11, a11, 0, 5
.LVL18:
.LBB31:
.LBB32:
	.loc 1 472 0
	l32r	a9, .LC37
	memw
	l32i.n	a10, a9, 0
.LBE32:
	l32r	a8, .LC38
	and	a8, a10, a8
	slli	a10, a11, 27
	or	a8, a10, a8
	memw
	s32i.n	a8, a9, 0
.LBE31:
.LBB33:
.LBB34:
	.loc 1 474 0
	l32r	a10, .LC39
	memw
	l32i.n	a9, a10, 0
.LBE34:
	l32r	a8, .LC40
	and	a9, a9, a8
	l32i.n	a8, a12, 24
	extui	a8, a8, 30, 1
	slli	a8, a8, 30
	or	a8, a8, a9
	memw
	s32i.n	a8, a10, 0
.LVL19:
.LBE33:
.LBB35:
	.loc 1 477 0
	movi.n	a8, 0
	j	.L35
.LVL20:
.L43:
.LBB36:
	.loc 1 479 0
	addx2	a10, a8, a8
	addx4	a10, a10, a8
	slli	a9, a10, 2
	l32r	a10, .LC41
	add.n	a9, a10, a9
	l32i.n	a9, a9, 48
	bne	a11, a9, .L36
.LBB37:
	.loc 1 480 0
	addx2	a10, a8, a8
	addx4	a10, a10, a8
	slli	a9, a10, 2
	l32r	a10, .LC41
	add.n	a9, a10, a9
	l32i.n	a9, a9, 0
	l32r	a10, .LC42
	add.n	a10, a9, a10
	l32r	a11, .LC43
.LVL21:
	bltu	a11, a10, .L37
	.loc 1 480 0 is_stmt 0 discriminator 1
	l32r	a13, .LC45
	l32r	a12, .LC46
	movi	a11, 0x1e0
	l32r	a10, .LC47
	call8	__assert_func
.LVL22:
.L37:
	.loc 1 480 0 discriminator 2
	memw
	l32i.n	a13, a9, 0
	addx2	a12, a8, a8
	addx4	a12, a12, a8
	slli	a11, a12, 2
	l32r	a12, .LC41
	add.n	a11, a12, a11
	l32i.n	a11, a11, 4
	or	a11, a13, a11
	memw
	s32i.n	a11, a9, 0
.LBE37:
.LBB38:
	.loc 1 481 0 is_stmt 1 discriminator 2
	l32r	a11, .LC43
	bltu	a11, a10, .L38
	.loc 1 481 0 is_stmt 0 discriminator 1
	l32r	a13, .LC49
	l32r	a12, .LC46
	movi	a11, 0x1e1
	l32r	a10, .LC47
	call8	__assert_func
.LVL23:
.L38:
.LBB39:
	.loc 1 481 0 discriminator 2
	l32r	a11, .LC43
	bltu	a11, a10, .L39
	.loc 1 481 0 discriminator 3
	l32r	a13, .LC51
	l32r	a12, .LC46
	movi	a11, 0x1e1
	l32r	a10, .LC47
	call8	__assert_func
.LVL24:
.L39:
.LBB40:
	.loc 1 481 0 discriminator 4
	l32r	a11, .LC43
	bltu	a11, a10, .L40
	.loc 1 481 0 discriminator 5
	l32r	a13, .LC53
	l32r	a12, .LC46
	movi	a11, 0x1e1
	l32r	a10, .LC47
	call8	__assert_func
.LVL25:
.L40:
	.loc 1 481 0 discriminator 6
	memw
	l32i.n	a14, a9, 0
.LBE40:
	addx2	a13, a8, a8
	addx4	a13, a13, a8
	slli	a12, a13, 2
	l32r	a11, .LC41
	add.n	a12, a11, a12
	l32i.n	a11, a12, 8
	movi.n	a12, 3
	ssl	a11
	sll	a12, a12
	movi.n	a11, -1
	xor	a11, a11, a12
	and	a11, a11, a14
	memw
	s32i.n	a11, a9, 0
.LBE39:
.LBE38:
.LBB41:
	.loc 1 482 0 is_stmt 1 discriminator 6
	l32r	a11, .LC43
	bltu	a11, a10, .L41
	.loc 1 482 0 is_stmt 0 discriminator 1
	l32r	a13, .LC45
	l32r	a12, .LC46
	movi	a11, 0x1e2
	l32r	a10, .LC47
	call8	__assert_func
.LVL26:
.L41:
	.loc 1 482 0 discriminator 2
	memw
	l32i.n	a11, a9, 0
	addx2	a10, a8, a8
	addx4	a8, a10, a8
.LVL27:
	slli	a10, a8, 2
	l32r	a8, .LC41
	add.n	a10, a8, a10
	l32i.n	a8, a10, 12
	or	a8, a11, a8
	memw
	s32i.n	a8, a9, 0
.LBE41:
	.loc 1 483 0 is_stmt 1 discriminator 2
	retw.n
.LVL28:
.L36:
.LBE36:
	.loc 1 477 0 discriminator 2
	addi.n	a8, a8, 1
.LVL29:
.L35:
	.loc 1 477 0 is_stmt 0 discriminator 1
	movi.n	a9, 0x27
	bgeu	a9, a8, .L43
	retw.n
.LBE35:
.LFE50:
	.size	ext0_wakeup_prepare, .-ext0_wakeup_prepare
	.section	.rodata.str1.4
	.align	4
.LC65:
	.string	"\"(Cannot use REG_CLR_BIT for DPORT registers use DPORT_REG_CLR_BIT)\" && (!((((desc->reg)) >= 0x3ff00000) && ((desc->reg)) <= 0x3ff13FFC))"
	.section	.text.ext1_wakeup_prepare,"ax",@progbits
	.literal_position
	.literal .LC54, s_config
	.literal .LC55, 262143
	.literal .LC56, rtc_gpio_desc
	.literal .LC57, -1072693248
	.literal .LC58, 81916
	.literal .LC59, .LC44
	.literal .LC60, __func__$5882
	.literal .LC61, .LC26
	.literal .LC62, .LC48
	.literal .LC63, .LC50
	.literal .LC64, .LC52
	.literal .LC66, .LC65
	.literal .LC67, 1072988360
	.literal .LC68, 1072988364
	.literal .LC69, 262144
	.literal .LC70, -262144
	.literal .LC71, 1072988256
	.literal .LC72, 2147483647
	.align	4
	.type	ext1_wakeup_prepare, @function
ext1_wakeup_prepare:
.LFB52:
	.loc 1 512 0 is_stmt 1
	entry	sp, 32
.LCFI5:
	.loc 1 514 0
	l32r	a2, .LC54
	l32i.n	a2, a2, 24
	srli	a2, a2, 12
	l32r	a11, .LC55
	and	a11, a2, a11
.LVL30:
.LBB42:
	.loc 1 515 0
	movi.n	a8, 0
	j	.L45
.LVL31:
.L56:
.LBB43:
	.loc 1 516 0
	addx2	a10, a8, a8
	addx4	a10, a10, a8
	slli	a9, a10, 2
	l32r	a10, .LC56
	add.n	a9, a10, a9
	l32i.n	a14, a9, 48
.LVL32:
	.loc 1 517 0
	bbc	a11, a14, .L46
.LVL33:
.LBB44:
	.loc 1 522 0
	addx2	a9, a8, a8
	addx4	a9, a9, a8
	slli	a10, a9, 2
	l32r	a2, .LC56
	add.n	a10, a2, a10
	l32i.n	a9, a10, 0
	l32r	a10, .LC57
	add.n	a10, a9, a10
	l32r	a2, .LC58
	bltu	a2, a10, .L47
	.loc 1 522 0 is_stmt 0 discriminator 1
	l32r	a13, .LC59
	l32r	a12, .LC60
	movi	a11, 0x20a
.LVL34:
	l32r	a10, .LC61
	call8	__assert_func
.LVL35:
.L47:
	.loc 1 522 0 discriminator 2
	memw
	l32i.n	a15, a9, 0
	addx2	a13, a8, a8
	addx4	a13, a13, a8
	slli	a12, a13, 2
	l32r	a2, .LC56
	add.n	a12, a2, a12
	l32i.n	a2, a12, 4
	or	a2, a15, a2
	memw
	s32i.n	a2, a9, 0
.LBE44:
.LBB45:
	.loc 1 523 0 is_stmt 1 discriminator 2
	l32r	a2, .LC58
	bltu	a2, a10, .L48
	.loc 1 523 0 is_stmt 0 discriminator 1
	l32r	a13, .LC62
	l32r	a12, .LC60
	movi	a11, 0x20b
.LVL36:
	l32r	a10, .LC61
	call8	__assert_func
.LVL37:
.L48:
.LBB46:
	.loc 1 523 0 discriminator 2
	l32r	a2, .LC58
	bltu	a2, a10, .L49
	.loc 1 523 0 discriminator 3
	l32r	a13, .LC63
	l32r	a12, .LC60
	movi	a11, 0x20b
.LVL38:
	l32r	a10, .LC61
	call8	__assert_func
.LVL39:
.L49:
.LBB47:
	.loc 1 523 0 discriminator 4
	l32r	a2, .LC58
	bltu	a2, a10, .L50
	.loc 1 523 0 discriminator 5
	l32r	a13, .LC64
	l32r	a12, .LC60
	movi	a11, 0x20b
.LVL40:
	l32r	a10, .LC61
	call8	__assert_func
.LVL41:
.L50:
	.loc 1 523 0 discriminator 6
	memw
	l32i.n	a2, a9, 0
.LBE47:
	addx2	a15, a8, a8
	addx4	a15, a15, a8
	slli	a13, a15, 2
	l32r	a12, .LC56
	add.n	a13, a12, a13
	l32i.n	a12, a13, 8
	movi.n	a13, 3
	ssl	a12
	sll	a13, a13
	movi.n	a12, -1
	xor	a12, a12, a13
	and	a12, a12, a2
	memw
	s32i.n	a12, a9, 0
.LBE46:
.LBE45:
.LBB48:
	.loc 1 525 0 is_stmt 1 discriminator 6
	l32r	a2, .LC58
	bltu	a2, a10, .L51
	.loc 1 525 0 is_stmt 0 discriminator 1
	l32r	a13, .LC59
	l32r	a12, .LC60
	movi	a11, 0x20d
.LVL42:
	l32r	a10, .LC61
	call8	__assert_func
.LVL43:
.L51:
	.loc 1 525 0 discriminator 2
	memw
	l32i.n	a2, a9, 0
	addx2	a13, a8, a8
	addx4	a13, a13, a8
	slli	a12, a13, 2
	l32r	a13, .LC56
	add.n	a12, a13, a12
	l32i.n	a12, a12, 12
	or	a12, a2, a12
	memw
	s32i.n	a12, a9, 0
.LBE48:
	.loc 1 527 0 is_stmt 1 discriminator 2
	l32r	a2, .LC54
	l32i.n	a2, a2, 0
	beqi	a2, 1, .L52
.LBB49:
	.loc 1 531 0
	l32r	a2, .LC58
	bltu	a2, a10, .L53
	.loc 1 531 0 is_stmt 0 discriminator 1
	l32r	a13, .LC66
	l32r	a12, .LC60
	movi	a11, 0x213
.LVL44:
	l32r	a10, .LC61
	call8	__assert_func
.LVL45:
.L53:
	.loc 1 531 0 discriminator 2
	memw
	l32i.n	a15, a9, 0
	addx2	a13, a8, a8
	addx4	a13, a13, a8
	slli	a2, a13, 2
	l32r	a12, .LC56
	add.n	a2, a12, a2
	l32i.n	a13, a2, 20
	movi.n	a12, -1
	xor	a12, a12, a13
	and	a12, a15, a12
	memw
	s32i.n	a12, a9, 0
.LBE49:
.LBB50:
	.loc 1 532 0 is_stmt 1 discriminator 2
	l32r	a2, .LC58
	bltu	a2, a10, .L54
	.loc 1 532 0 is_stmt 0 discriminator 1
	l32r	a13, .LC66
	l32r	a12, .LC60
	movi	a11, 0x214
.LVL46:
	l32r	a10, .LC61
	call8	__assert_func
.LVL47:
.L54:
	.loc 1 532 0 discriminator 2
	memw
	l32i.n	a2, a9, 0
	addx2	a10, a8, a8
	slli	a10, a10, 2
	add.n	a10, a10, a8
	slli	a12, a10, 2
	l32r	a10, .LC56
	add.n	a10, a10, a12
	l32i.n	a13, a10, 16
	movi.n	a12, -1
	xor	a12, a12, a13
	and	a12, a2, a12
	memw
	s32i.n	a12, a9, 0
.LBE50:
.LBB51:
	.loc 1 533 0 is_stmt 1 discriminator 2
	l32r	a9, .LC67
	memw
	l32i.n	a12, a9, 0
	l32i.n	a2, a10, 36
	or	a2, a12, a2
	memw
	s32i.n	a2, a9, 0
.L52:
.LBE51:
	.loc 1 536 0
	movi.n	a9, 1
	ssl	a14
	sll	a9, a9
	movi.n	a2, -1
	xor	a9, a2, a9
	and	a11, a11, a9
.LVL48:
.L46:
.LBE43:
	.loc 1 515 0 discriminator 2
	addi.n	a8, a8, 1
.LVL49:
.L45:
	.loc 1 515 0 is_stmt 0 discriminator 1
	movi.n	a10, 1
	movi.n	a9, 0x27
	bge	a9, a8, .L55
	movi.n	a10, 0
.L55:
	movi.n	a12, 0
	movi.n	a9, 1
	moveqz	a9, a12, a11
	bany	a9, a10, .L56
.LBE42:
.LBB52:
	.loc 1 539 0 is_stmt 1
	l32r	a9, .LC68
	memw
	l32i.n	a8, a9, 0
.LVL50:
	l32r	a2, .LC69
	or	a2, a8, a2
	memw
	s32i.n	a2, a9, 0
.LBE52:
.LBB53:
.LBB54:
	.loc 1 541 0
	memw
	l32i.n	a8, a9, 0
.LBE54:
	l32r	a2, .LC70
	and	a8, a8, a2
	l32r	a2, .LC54
	l32i.n	a2, a2, 24
	srli	a10, a2, 12
	l32r	a11, .LC55
.LVL51:
	and	a10, a10, a11
	or	a8, a10, a8
	memw
	s32i.n	a8, a9, 0
.LBE53:
.LBB55:
.LBB56:
	.loc 1 543 0
	l32r	a9, .LC71
	memw
	l32i.n	a10, a9, 0
.LBE56:
	l32r	a8, .LC72
	and	a8, a10, a8
	extui	a2, a2, 11, 1
	slli	a2, a2, 31
	or	a2, a2, a8
	memw
	s32i.n	a2, a9, 0
	retw.n
.LBE55:
.LFE52:
	.size	ext1_wakeup_prepare, .-ext1_wakeup_prepare
	.section	.rodata.str1.4
	.align	4
.LC77:
	.string	"\"(Cannot use REG_CLR_BIT for DPORT registers use DPORT_REG_CLR_BIT)\" && (!((((((0x3ff40000 + (i) * 0x10000 + ( (i) > 1 ? 0xe000 : 0 ) ) + 0x34))) >= 0x3ff00000) && ((((0x3ff40000 + (i) * 0x10000 + ( (i) > 1 ? 0xe000 : 0 ) ) + 0x34))) <= 0x3ff13FFC))"
	.section	.iram1
	.literal_position
	.literal .LC73, 57344
	.literal .LC74, 16372
	.literal .LC75, -1072693196
	.literal .LC76, 81916
	.literal .LC78, .LC77
	.literal .LC79, __func__$5744
	.literal .LC80, .LC26
	.literal .LC81, .LC23
	.align	4
	.type	resume_uarts, @function
resume_uarts:
.LFB36:
	.loc 1 160 0
	entry	sp, 32
.LCFI6:
.LVL52:
.LBB57:
	.loc 1 161 0
	movi.n	a10, 0
	j	.L58
.LVL53:
.L71:
.LBB58:
	.loc 1 162 0
	l32r	a8, .LC74
	add.n	a8, a10, a8
	slli	a8, a8, 16
	blti	a10, 2, .L72
	l32r	a9, .LC73
	j	.L59
.L72:
	movi.n	a9, 0
.L59:
	.loc 1 162 0 is_stmt 0 discriminator 4
	add.n	a11, a9, a8
	l32r	a9, .LC75
	add.n	a9, a11, a9
	l32r	a11, .LC76
	bltu	a11, a9, .L60
	.loc 1 162 0 discriminator 5
	l32r	a13, .LC78
	l32r	a12, .LC79
	movi	a11, 0xa2
	l32r	a10, .LC80
.LVL54:
	call8	__assert_func
.LVL55:
.L60:
	.loc 1 162 0 discriminator 6
	blti	a10, 2, .L73
	.loc 1 162 0
	l32r	a11, .LC73
	j	.L61
.L73:
	movi.n	a11, 0
.L61:
	.loc 1 162 0 discriminator 10
	add.n	a11, a11, a8
	blti	a10, 2, .L74
	.loc 1 162 0
	l32r	a9, .LC73
	j	.L62
.L74:
	movi.n	a9, 0
.L62:
	.loc 1 162 0 discriminator 14
	add.n	a9, a9, a8
	memw
	l32i.n	a12, a9, 52
	movi.n	a9, -9
	and	a9, a12, a9
	memw
	s32i.n	a9, a11, 52
.LBE58:
.LBB59:
	.loc 1 163 0 is_stmt 1 discriminator 14
	blti	a10, 2, .L75
	.loc 1 163 0 is_stmt 0
	l32r	a9, .LC73
	j	.L63
.L75:
	movi.n	a9, 0
.L63:
	.loc 1 163 0 discriminator 4
	add.n	a11, a9, a8
	l32r	a9, .LC75
	add.n	a9, a11, a9
	l32r	a11, .LC76
	bltu	a11, a9, .L64
	.loc 1 163 0 discriminator 5
	l32r	a13, .LC81
	l32r	a12, .LC79
	movi	a11, 0xa3
	l32r	a10, .LC80
.LVL56:
	call8	__assert_func
.LVL57:
.L64:
	.loc 1 163 0 discriminator 6
	blti	a10, 2, .L76
	.loc 1 163 0
	l32r	a11, .LC73
	j	.L65
.L76:
	movi.n	a11, 0
.L65:
	.loc 1 163 0 discriminator 10
	add.n	a11, a11, a8
	blti	a10, 2, .L77
	.loc 1 163 0
	l32r	a9, .LC73
	j	.L66
.L77:
	movi.n	a9, 0
.L66:
	.loc 1 163 0 discriminator 14
	add.n	a9, a9, a8
	memw
	l32i.n	a12, a9, 52
	movi.n	a9, 4
	or	a9, a12, a9
	memw
	s32i.n	a9, a11, 52
.LBE59:
.LBB60:
	.loc 1 164 0 is_stmt 1 discriminator 14
	blti	a10, 2, .L78
	.loc 1 164 0 is_stmt 0
	l32r	a9, .LC73
	j	.L67
.L78:
	movi.n	a9, 0
.L67:
	.loc 1 164 0 discriminator 4
	add.n	a11, a9, a8
	l32r	a9, .LC75
	add.n	a9, a11, a9
	l32r	a11, .LC76
	bltu	a11, a9, .L68
	.loc 1 164 0 discriminator 5
	l32r	a13, .LC78
	l32r	a12, .LC79
	movi	a11, 0xa4
	l32r	a10, .LC80
.LVL58:
	call8	__assert_func
.LVL59:
.L68:
	.loc 1 164 0 discriminator 6
	blti	a10, 2, .L79
	.loc 1 164 0
	l32r	a9, .LC73
	j	.L69
.L79:
	movi.n	a9, 0
.L69:
	.loc 1 164 0 discriminator 10
	add.n	a9, a9, a8
	blti	a10, 2, .L80
	.loc 1 164 0
	l32r	a11, .LC73
	j	.L70
.L80:
	movi.n	a11, 0
.L70:
	.loc 1 164 0 discriminator 14
	add.n	a8, a11, a8
	memw
	l32i.n	a11, a8, 52
	movi.n	a8, -5
	and	a8, a11, a8
	memw
	s32i.n	a8, a9, 52
.LBE60:
	.loc 1 161 0 is_stmt 1 discriminator 14
	addi.n	a10, a10, 1
.LVL60:
.L58:
	.loc 1 161 0 is_stmt 0 discriminator 2
	blti	a10, 3, .L71
.LBE57:
	.loc 1 166 0 is_stmt 1
	retw.n
.LFE36:
	.size	resume_uarts, .-resume_uarts
	.section	.text.timer_wakeup_prepare,"ax",@progbits
	.literal_position
	.literal .LC83, s_config
	.align	4
	.type	timer_wakeup_prepare, @function
timer_wakeup_prepare:
.LFB46:
	.loc 1 418 0
	entry	sp, 32
.LCFI7:
	.loc 1 419 0
	call8	esp_clk_slowclk_cal_get
.LVL61:
	.loc 1 420 0
	l32r	a9, .LC83
	l32i.n	a8, a9, 16
	l32i.n	a12, a9, 20
	mov.n	a11, a8
	l32i.n	a9, a9, 32
	sub	a8, a8, a9
	movi.n	a13, 1
	bltu	a11, a8, .L82
	movi.n	a13, 0
.L82:
	mov.n	a9, a8
	sub	a11, a12, a13
.LVL62:
	.loc 1 421 0
	bgez	a11, .L83
.LVL63:
	.loc 1 422 0
	movi.n	a9, 0
	mov.n	a11, a9
.LVL64:
.L83:
	.loc 1 424 0
	mov.n	a12, a10
	mov.n	a10, a9
.LVL65:
	call8	rtc_time_us_to_slowclk
.LVL66:
	.loc 1 426 0
	l32r	a8, .LC83
	l32i.n	a9, a8, 40
	l32i.n	a12, a8, 44
	add.n	a9, a10, a9
	movi.n	a8, 1
	bltu	a9, a10, .L85
	movi.n	a8, 0
.L85:
	add.n	a10, a11, a12
.LVL67:
	add.n	a11, a8, a10
	mov.n	a10, a9
	call8	rtc_sleep_set_wakeup_time
.LVL68:
	retw.n
.LFE46:
	.size	timer_wakeup_prepare, .-timer_wakeup_prepare
	.section	.text.rtc_wdt_enable,"ax",@progbits
	.literal_position
	.literal .LC84, 1072988324
	.literal .LC85, 1356348065
	.literal .LC86, 1072988320
	.literal .LC87, 1072988300
	.literal .LC88, 14336
	.literal .LC89, 114688
	.literal .LC90, -1879048193
	.literal .LC91, 1073741824
	.literal .LC92, 274877907
	.literal .LC93, 1072988304
	.literal .LC94, -2147483520
	.align	4
	.type	rtc_wdt_enable, @function
rtc_wdt_enable:
.LFB39:
	.loc 1 242 0
.LVL69:
	entry	sp, 32
.LCFI8:
.LBB61:
	.loc 1 243 0
	l32r	a4, .LC84
	l32r	a3, .LC85
	memw
	s32i.n	a3, a4, 0
.LBE61:
.LBB62:
	.loc 1 244 0
	movi.n	a8, 1
	l32r	a3, .LC86
	memw
	s32i.n	a8, a3, 0
.LBE62:
.LBB63:
.LBB64:
	.loc 1 245 0
	l32r	a3, .LC87
	memw
	l32i.n	a9, a3, 0
.LBE64:
	l32r	a8, .LC88
	or	a8, a9, a8
	memw
	s32i.n	a8, a3, 0
.LBE63:
.LBB65:
.LBB66:
	.loc 1 246 0
	memw
	l32i.n	a9, a3, 0
.LBE66:
	l32r	a8, .LC89
	or	a8, a9, a8
	memw
	s32i.n	a8, a3, 0
.LBE65:
.LBB67:
.LBB68:
	.loc 1 247 0
	memw
	l32i.n	a9, a3, 0
.LBE68:
	l32r	a8, .LC90
	and	a9, a9, a8
	l32r	a8, .LC91
	or	a8, a9, a8
	memw
	s32i.n	a8, a3, 0
.LBE67:
.LBB69:
	.loc 1 248 0
	call8	rtc_clk_slow_freq_get_hz
.LVL70:
	mull	a10, a2, a10
	l32r	a8, .LC92
	muluh	a10, a10, a8
	srli	a10, a10, 6
	l32r	a2, .LC93
.LVL71:
	memw
	s32i.n	a10, a2, 0
.LBE69:
.LBB70:
.LBB71:
	.loc 1 249 0
	memw
	l32i.n	a2, a3, 0
.LBE71:
	l32r	a8, .LC94
	or	a8, a2, a8
	memw
	s32i.n	a8, a3, 0
.LBE70:
.LBB72:
	.loc 1 250 0
	movi.n	a2, 0
	memw
	s32i.n	a2, a4, 0
	retw.n
.LBE72:
.LFE39:
	.size	rtc_wdt_enable, .-rtc_wdt_enable
	.section	.iram1
	.literal_position
	.literal .LC95, 57344
	.literal .LC96, 16372
	.literal .LC97, -1072693220
	.literal .LC98, 81916
	.literal .LC99, .LC29
	.literal .LC100, __func__$4801
	.literal .LC101, .LC32
	.literal .LC102, .LC34
	.align	4
	.type	flush_uarts, @function
flush_uarts:
.LFB34:
	.loc 1 145 0
	entry	sp, 32
.LCFI9:
.LVL72:
.LBB78:
	.loc 1 146 0
	movi.n	a12, 0
	j	.L89
.LVL73:
.L96:
	extui	a9, a12, 0, 8
.LVL74:
.L95:
.LBB79:
.LBB80:
.LBB81:
	.loc 2 270 0
	l32r	a8, .LC96
	add.n	a8, a9, a8
	slli	a8, a8, 16
	bltui	a9, 2, .L97
	l32r	a10, .LC95
	j	.L90
.L97:
	movi.n	a10, 0
.L90:
	add.n	a11, a8, a10
	l32r	a10, .LC97
	add.n	a10, a11, a10
	l32r	a11, .LC98
	bltu	a11, a10, .L91
	l32r	a13, .LC99
	l32r	a12, .LC100
.LVL75:
	movi	a11, 0x10e
	l32r	a10, .LC101
	call8	__assert_func
.LVL76:
.L91:
.LBB82:
	bltui	a9, 2, .L98
	l32r	a10, .LC95
	j	.L92
.L98:
	movi.n	a10, 0
.L92:
	add.n	a11, a8, a10
	l32r	a10, .LC97
	add.n	a10, a11, a10
	l32r	a11, .LC98
	bltu	a11, a10, .L93
	l32r	a13, .LC102
	l32r	a12, .LC100
.LVL77:
	movi	a11, 0x10e
	l32r	a10, .LC101
	call8	__assert_func
.LVL78:
.L93:
	bltui	a9, 2, .L99
	l32r	a10, .LC95
	j	.L94
.L99:
	movi.n	a10, 0
.L94:
	add.n	a8, a8, a10
	memw
	l32i.n	a8, a8, 28
.LBE82:
	extui	a8, a8, 24, 4
.LBE81:
	bnez.n	a8, .L95
.LBE80:
.LBE79:
	.loc 1 146 0 discriminator 3
	addi.n	a12, a12, 1
.LVL79:
.L89:
	.loc 1 146 0 is_stmt 0 discriminator 1
	blti	a12, 3, .L96
.LBE78:
	.loc 1 149 0 is_stmt 1
	retw.n
.LFE34:
	.size	flush_uarts, .-flush_uarts
	.literal_position
	.literal .LC103, s_config
	.literal .LC104, 1072988184
	.literal .LC105, 2097152
	.literal .LC107, 4096
	.literal .LC108, -57345
	.literal .LC109, -458753
	.literal .LC110, 262144
	.literal .LC111, -3670017
	.literal .LC112, 4194304
	.literal .LC113, -8388609
	.literal .LC114, -16777217
	.align	4
	.type	esp_sleep_start, @function
esp_sleep_start:
.LFB37:
	.loc 1 169 0
.LVL80:
	entry	sp, 32
.LCFI10:
	.loc 1 173 0
	extui	a5, a2, 0, 1
	beqz.n	a5, .L101
	.loc 1 174 0
	call8	flush_uarts
.LVL81:
	j	.L102
.L101:
	.loc 1 176 0
	call8	suspend_uarts
.LVL82:
.L102:
	.loc 1 180 0
	call8	rtc_clk_cpu_freq_get
.LVL83:
	mov.n	a4, a10
.LVL84:
	.loc 1 181 0
	movi.n	a10, 0
	call8	rtc_clk_cpu_freq_set
.LVL85:
	.loc 1 184 0
	l32r	a3, .LC103
	l32i.n	a3, a3, 24
	bbci	a3, 0, .L103
	.loc 1 185 0
	call8	ext0_wakeup_prepare
.LVL86:
.L103:
	.loc 1 187 0
	l32r	a3, .LC103
	l32i.n	a3, a3, 24
	bbci	a3, 1, .L104
	.loc 1 188 0
	call8	ext1_wakeup_prepare
.LVL87:
.L104:
	.loc 1 191 0
	l32r	a3, .LC103
	l32i.n	a3, a3, 24
	bbci	a3, 9, .L105
.LBB83:
.LBB84:
	.loc 1 192 0
	l32r	a8, .LC104
	memw
	l32i.n	a9, a8, 0
.LBE84:
	l32r	a3, .LC105
	or	a3, a9, a3
	memw
	s32i.n	a3, a8, 0
.L105:
.LBE83:
	.loc 1 196 0
	movi.n	a8, 0x10
	and	a8, a2, a8
	movi.n	a13, 1
	movi.n	a12, 0
	mov.n	a3, a12
	movnez	a3, a13, a8
	mov.n	a8, a3
	movi.n	a3, 8
	and	a9, a2, a3
	slli	a8, a8, 2
	movi.n	a11, 4
	and	a11, a2, a11
	mov.n	a6, a12
	movnez	a6, a13, a11
	slli	a11, a6, 4
	or	a8, a8, a9
	movi.n	a9, 2
	and	a9, a2, a9
	mov.n	a6, a12
	movnez	a6, a13, a9
	slli	a9, a6, 5
	or	a8, a8, a11
	ssl	a3
	sll	a5, a5
	or	a8, a8, a9
	or	a8, a8, a5
	l32r	a10, .LC107
	or	a8, a8, a10
.LVL88:
	l32r	a5, .LC108
.LVL89:
	and	a8, a8, a5
.LVL90:
	l32r	a10, .LC109
.LVL91:
	and	a8, a8, a10
.LVL92:
	l32r	a10, .LC110
	or	a8, a8, a10
	l32r	a5, .LC111
.LVL93:
	and	a8, a8, a5
.LVL94:
	l32r	a5, .LC112
.LVL95:
	or	a8, a8, a5
.LVL96:
	movi.n	a5, 0x20
	and	a5, a2, a5
	mov.n	a6, a12
	movnez	a6, a13, a5
	slli	a5, a6, 23
	l32r	a10, .LC113
.LVL97:
	and	a8, a8, a10
.LVL98:
	or	a8, a8, a5
	movi.n	a10, 0x40
	and	a2, a2, a10
.LVL99:
	moveqz	a12, a13, a2
	slli	a12, a12, 24
	l32r	a10, .LC114
.LVL100:
	and	a10, a8, a10
	.loc 1 197 0
	or	a10, a10, a12
	call8	rtc_sleep_init
.LVL101:
	.loc 1 200 0
	l32r	a2, .LC103
	l32i.n	a2, a2, 24
	bnone	a2, a3, .L106
	.loc 1 201 0 discriminator 1
	l32r	a3, .LC103
	l32i.n	a5, a3, 16
	l32i.n	a2, a3, 20
	.loc 1 200 0 discriminator 1
	or	a2, a5, a2
	beqz.n	a2, .L106
	.loc 1 202 0 discriminator 1
	call8	timer_wakeup_prepare
.LVL102:
.L106:
	.loc 1 204 0
	l32r	a2, .LC103
	l32i.n	a10, a2, 24
	movi.n	a11, 0
	extui	a10, a10, 0, 11
	call8	rtc_sleep_start
.LVL103:
	mov.n	a2, a10
.LVL104:
	.loc 1 207 0
	mov.n	a10, a4
	call8	rtc_clk_cpu_freq_set
.LVL105:
	.loc 1 210 0
	call8	resume_uarts
.LVL106:
	.loc 1 213 0
	retw.n
.LFE37:
	.size	esp_sleep_start, .-esp_sleep_start
	.align	4
	.type	esp_light_sleep_inner, @function
esp_light_sleep_inner:
.LFB41:
	.loc 1 273 0
.LVL107:
	entry	sp, 32
.LCFI11:
	.loc 1 275 0
	mov.n	a10, a2
	call8	esp_sleep_start
.LVL108:
	mov.n	a5, a10
.LVL109:
	.loc 1 279 0
	bbci	a4, 0, .L109
	.loc 1 280 0
	mov.n	a10, a4
	call8	rtc_vddsdio_set_config
.LVL110:
.L109:
	.loc 1 284 0
	bbci	a2, 5, .L110
	.loc 1 286 0
	mov.n	a10, a3
	call8	ets_delay_us
.LVL111:
.L110:
	.loc 1 289 0
	mov.n	a2, a5
.LVL112:
	retw.n
.LFE41:
	.size	esp_light_sleep_inner, .-esp_light_sleep_inner
	.section	.text.esp_get_deep_sleep_wake_stub,"ax",@progbits
	.literal_position
	.literal .LC115, lock_rtc_memory_crc
	.literal .LC116, 1072988348
	.literal .LC117, 1072988344
	.align	4
	.global	esp_get_deep_sleep_wake_stub
	.type	esp_get_deep_sleep_wake_stub, @function
esp_get_deep_sleep_wake_stub:
.LFB30:
	.loc 1 97 0
	entry	sp, 32
.LCFI12:
	.loc 1 98 0
	l32r	a4, .LC115
	mov.n	a10, a4
	call8	_lock_acquire
.LVL113:
.LBB85:
	.loc 1 99 0
	l32r	a2, .LC116
	memw
	l32i.n	a3, a2, 0
.LVL114:
.LBE85:
	.loc 1 100 0
	call8	set_rtc_memory_crc
.LVL115:
.LBB86:
	.loc 1 101 0
	memw
	l32i.n	a5, a2, 0
.LVL116:
.LBE86:
.LBB87:
	.loc 1 102 0
	memw
	s32i.n	a3, a2, 0
.LBE87:
	.loc 1 103 0
	mov.n	a10, a4
	call8	_lock_release
.LVL117:
	.loc 1 105 0
	bne	a3, a5, .L113
.LBB88:
	.loc 1 106 0
	l32r	a2, .LC117
	memw
	l32i.n	a2, a2, 0
.LBE88:
	retw.n
.L113:
	.loc 1 108 0
	movi.n	a2, 0
	.loc 1 110 0
	retw.n
.LFE30:
	.size	esp_get_deep_sleep_wake_stub, .-esp_get_deep_sleep_wake_stub
	.section	.text.esp_set_deep_sleep_wake_stub,"ax",@progbits
	.literal_position
	.literal .LC118, lock_rtc_memory_crc
	.literal .LC119, 1072988344
	.align	4
	.global	esp_set_deep_sleep_wake_stub
	.type	esp_set_deep_sleep_wake_stub, @function
esp_set_deep_sleep_wake_stub:
.LFB31:
	.loc 1 113 0
.LVL118:
	entry	sp, 32
.LCFI13:
	.loc 1 114 0
	l32r	a3, .LC118
	mov.n	a10, a3
	call8	_lock_acquire
.LVL119:
.LBB89:
	.loc 1 115 0
	l32r	a8, .LC119
	memw
	s32i.n	a2, a8, 0
.LBE89:
	.loc 1 116 0
	call8	set_rtc_memory_crc
.LVL120:
	.loc 1 117 0
	mov.n	a10, a3
	call8	_lock_release
.LVL121:
	retw.n
.LFE31:
	.size	esp_set_deep_sleep_wake_stub, .-esp_set_deep_sleep_wake_stub
	.section	.iram1
	.literal_position
	.literal .LC120, s_config
	.literal .LC121, esp_wake_deep_sleep
	.align	4
	.global	esp_deep_sleep_start
	.type	esp_deep_sleep_start, @function
esp_deep_sleep_start:
.LFB38:
	.loc 1 216 0
	entry	sp, 32
.LCFI14:
	.loc 1 218 0
	call8	rtc_time_get
.LVL122:
	l32r	a8, .LC120
	s32i.n	a10, a8, 40
	s32i.n	a11, a8, 44
	.loc 1 219 0
	call8	esp_sync_counters_rtc_and_frc
.LVL123:
	.loc 1 221 0
	call8	esp_get_deep_sleep_wake_stub
.LVL124:
	bnez.n	a10, .L116
	.loc 1 222 0
	l32r	a10, .LC121
	call8	esp_set_deep_sleep_wake_stub
.LVL125:
.L116:
	.loc 1 226 0
	call8	get_power_down_flags
.LVL126:
	.loc 1 229 0
	movi	a9, 0x190
	l32r	a8, .LC120
	s32i.n	a9, a8, 32
	.loc 1 232 0
	movi	a8, 0x61
	or	a10, a10, a8
.LVL127:
	call8	esp_sleep_start
.LVL128:
.L117:
	j	.L117
.LFE38:
	.size	esp_deep_sleep_start, .-esp_deep_sleep_start
	.section	.text.esp_light_sleep_start,"ax",@progbits
	.literal_position
	.literal .LC122, light_sleep_lock$5807
	.literal .LC123, s_config
	.literal .LC124, 3195
	.literal .LC125, 2995
	.literal .LC126, 2700
	.align	4
	.global	esp_light_sleep_start
	.type	esp_light_sleep_start, @function
esp_light_sleep_start:
.LFB42:
	.loc 1 292 0
	entry	sp, 48
.LCFI15:
	.loc 1 294 0
	l32r	a10, .LC122
	call8	vTaskEnterCritical
.LVL129:
	.loc 1 299 0
	call8	esp_timer_impl_lock
.LVL130:
	.loc 1 300 0
	call8	rtc_time_get
.LVL131:
	l32r	a2, .LC123
	s32i.n	a10, a2, 40
	s32i.n	a11, a2, 44
	.loc 1 301 0
	call8	esp_timer_get_time
.LVL132:
	mov.n	a7, a10
	s32i.n	a11, sp, 8
.LVL133:
	.loc 1 302 0
	call8	esp_dport_access_stall_other_cpu_start
.LVL134:
	.loc 1 305 0
	call8	get_power_down_flags
.LVL135:
	mov.n	a3, a10
.LVL136:
	.loc 1 309 0
	movi	a4, 0x127
	s32i.n	a4, a2, 32
.LVL137:
	.loc 1 320 0
	l32i.n	a4, a2, 16
	l32i.n	a2, a2, 20
	bnez.n	a2, .L126
	bnez.n	a2, .L119
	l32r	a2, .LC124
	bgeu	a2, a4, .L119
.L126:
	.loc 1 321 0
	movi.n	a2, 0x20
	or	a3, a3, a2
.LVL138:
	.loc 1 322 0
	l32r	a4, .LC125
	l32r	a2, .LC123
	s32i.n	a4, a2, 32
.L119:
	.loc 1 326 0
	call8	rtc_vddsdio_get_config
.LVL139:
	mov.n	a2, a10
.LVL140:
	.loc 1 329 0
	movi	a10, 0x3e8
	call8	rtc_wdt_enable
.LVL141:
	.loc 1 332 0
	mov.n	a12, a2
	l32r	a11, .LC126
	mov.n	a10, a3
	call8	esp_light_sleep_inner
.LVL142:
	s32i.n	a10, sp, 0
.LVL143:
	.loc 1 336 0
	call8	rtc_time_get
.LVL144:
	mov.n	a6, a10
	mov.n	a5, a11
.LVL145:
	.loc 1 337 0
	call8	esp_timer_get_time
.LVL146:
	mov.n	a2, a10
.LVL147:
	mov.n	a3, a11
.LVL148:
	s32i.n	a10, sp, 4
.LVL149:
	.loc 1 339 0
	l32r	a8, .LC123
	l32i.n	a4, a8, 40
	l32i.n	a9, a8, 44
	sub	a4, a6, a4
	movi.n	a8, 1
	bltu	a6, a4, .L121
	movi.n	a8, 0
.L121:
	sub	a5, a5, a9
.LVL150:
	sub	a6, a5, a8
	call8	esp_clk_slowclk_cal_get
.LVL151:
	mov.n	a12, a10
	mov.n	a10, a4
	mov.n	a11, a6
	call8	rtc_time_slowclk_to_us
.LVL152:
	.loc 1 341 0
	sub	a2, a2, a7
.LVL153:
	movi.n	a4, 1
	l32i.n	a5, sp, 4
	bltu	a5, a2, .L122
	movi.n	a4, 0
.L122:
	l32i.n	a5, sp, 8
	sub	a3, a3, a5
.LVL154:
	sub	a4, a3, a4
.LVL155:
	.loc 1 343 0
	sub	a2, a10, a2
.LVL156:
	movi.n	a3, 1
	bltu	a10, a2, .L123
	movi.n	a3, 0
.L123:
	sub	a4, a11, a4
.LVL157:
	sub	a11, a4, a3
.LVL158:
	mov.n	a4, a2
	mov.n	a3, a11
.LVL159:
	.loc 1 348 0
	bgei	a11, 1, .L127
.LVL160:
	bnez.n	a11, .L124
	beqz.n	a2, .L124
.L127:
	.loc 1 349 0
	mov.n	a10, a2
	call8	esp_timer_impl_advance
.LVL161:
.L124:
	.loc 1 351 0
	call8	esp_set_time_from_rtc
.LVL162:
	.loc 1 353 0
	call8	esp_timer_impl_unlock
.LVL163:
	.loc 1 354 0
	call8	esp_dport_access_stall_other_cpu_end
.LVL164:
	.loc 1 355 0
	call8	rtc_wdt_disable
.LVL165:
	.loc 1 356 0
	l32r	a10, .LC122
	call8	vTaskExitCritical
.LVL166:
	.loc 1 358 0
	l32i.n	a2, sp, 0
.LVL167:
	retw.n
.LFE42:
	.size	esp_light_sleep_start, .-esp_light_sleep_start
	.section	.rodata.str1.4
	.align	4
.LC132:
	.string	"sleep"
	.align	4
.LC134:
	.string	"\033[0;31mE (%d) %s: Incorrect wakeup source (%d) to disable.\033[0m\n"
	.section	.text.esp_sleep_disable_wakeup_source,"ax",@progbits
	.literal_position
	.literal .LC127, s_config
	.literal .LC128, 0, 0
	.literal .LC129, -1073741825
	.literal .LC130, -1073737729
	.literal .LC131, -2049
	.literal .LC133, .LC132
	.literal .LC135, .LC134
	.align	4
	.global	esp_sleep_disable_wakeup_source
	.type	esp_sleep_disable_wakeup_source, @function
esp_sleep_disable_wakeup_source:
.LFB43:
	.loc 1 363 0
.LVL168:
	entry	sp, 32
.LCFI16:
	.loc 1 367 0
	l32r	a8, .LC127
	l32i.n	a8, a8, 24
	extui	a8, a8, 0, 11
	bbci	a8, 3, .L129
	.loc 1 367 0 is_stmt 0 discriminator 1
	bnei	a2, 3, .L129
	.loc 1 368 0 is_stmt 1
	l32r	a9, .LC127
	movi	a2, 0x7f7
.LVL169:
	and	a8, a8, a2
	l32i.n	a10, a9, 24
	movi	a2, -0x800
	and	a2, a10, a2
	or	a8, a2, a8
	s32i.n	a8, a9, 24
	.loc 1 369 0
	l32r	a10, .LC128
	l32r	a11, .LC128+4
	s32i.n	a10, a9, 16
	s32i.n	a11, a9, 20
	.loc 1 393 0
	movi.n	a2, 0
	.loc 1 369 0
	retw.n
.LVL170:
.L129:
	.loc 1 371 0
	bbci	a8, 0, .L131
	.loc 1 371 0 is_stmt 0 discriminator 1
	bnei	a2, 1, .L131
	.loc 1 372 0 is_stmt 1
	l32r	a9, .LC127
	l32i.n	a10, a9, 28
	movi.n	a2, -0x20
.LVL171:
	and	a2, a10, a2
	s32i.n	a2, a9, 28
	.loc 1 373 0
	l32i.n	a10, a9, 24
	l32r	a2, .LC129
	and	a10, a10, a2
	.loc 1 374 0
	movi	a2, 0x7fe
	and	a8, a8, a2
	movi	a2, -0x800
	and	a2, a10, a2
	or	a8, a2, a8
	s32i.n	a8, a9, 24
	.loc 1 393 0
	movi.n	a2, 0
	.loc 1 374 0
	retw.n
.LVL172:
.L131:
	.loc 1 376 0
	bbci	a8, 1, .L132
	.loc 1 376 0 is_stmt 0 discriminator 1
	bnei	a2, 2, .L132
	.loc 1 377 0 is_stmt 1
	l32r	a10, .LC127
	l32i.n	a9, a10, 24
	l32r	a2, .LC130
.LVL173:
	and	a9, a9, a2
	.loc 1 378 0
	l32r	a2, .LC131
	and	a9, a9, a2
	.loc 1 379 0
	movi	a2, 0x7fd
	and	a8, a8, a2
	movi	a2, -0x800
	and	a2, a9, a2
	or	a8, a2, a8
	s32i.n	a8, a10, 24
	.loc 1 393 0
	movi.n	a2, 0
	.loc 1 379 0
	retw.n
.LVL174:
.L132:
	.loc 1 381 0
	bbci	a8, 8, .L133
	.loc 1 381 0 is_stmt 0 discriminator 1
	bnei	a2, 4, .L133
	.loc 1 382 0 is_stmt 1
	l32r	a9, .LC127
	movi	a2, 0x6ff
.LVL175:
	and	a8, a8, a2
	l32i.n	a10, a9, 24
	movi	a2, -0x800
	and	a2, a10, a2
	or	a8, a2, a8
	s32i.n	a8, a9, 24
	.loc 1 393 0
	movi.n	a2, 0
	.loc 1 382 0
	retw.n
.LVL176:
.L133:
	.loc 1 390 0 discriminator 2
	call8	esp_log_timestamp
.LVL177:
	l32r	a11, .LC133
	mov.n	a15, a2
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC135
	movi.n	a10, 1
	call8	esp_log_write
.LVL178:
	.loc 1 391 0 discriminator 2
	movi	a2, 0x103
.LVL179:
	.loc 1 394 0 discriminator 2
	retw.n
.LFE43:
	.size	esp_sleep_disable_wakeup_source, .-esp_sleep_disable_wakeup_source
	.section	.text.esp_sleep_enable_ulp_wakeup,"ax",@progbits
	.align	4
	.global	esp_sleep_enable_ulp_wakeup
	.type	esp_sleep_enable_ulp_wakeup, @function
esp_sleep_enable_ulp_wakeup:
.LFB44:
	.loc 1 397 0
	entry	sp, 32
.LCFI17:
	.loc 1 408 0
	movi	a2, 0x103
	retw.n
.LFE44:
	.size	esp_sleep_enable_ulp_wakeup, .-esp_sleep_enable_ulp_wakeup
	.section	.text.esp_sleep_enable_timer_wakeup,"ax",@progbits
	.literal_position
	.literal .LC136, s_config
	.align	4
	.global	esp_sleep_enable_timer_wakeup
	.type	esp_sleep_enable_timer_wakeup, @function
esp_sleep_enable_timer_wakeup:
.LFB45:
	.loc 1 411 0
.LVL180:
	entry	sp, 32
.LCFI18:
	.loc 1 412 0
	l32r	a8, .LC136
	l32i.n	a10, a8, 24
	movi.n	a9, 8
	or	a9, a10, a9
	s32i.n	a9, a8, 24
	.loc 1 413 0
	s32i.n	a2, a8, 16
	s32i.n	a3, a8, 20
	.loc 1 415 0
	movi.n	a2, 0
.LVL181:
	retw.n
.LFE45:
	.size	esp_sleep_enable_timer_wakeup, .-esp_sleep_enable_timer_wakeup
	.section	.text.esp_deep_sleep,"ax",@progbits
	.align	4
	.global	esp_deep_sleep
	.type	esp_deep_sleep, @function
esp_deep_sleep:
.LFB33:
	.loc 1 139 0
.LVL182:
	entry	sp, 32
.LCFI19:
	.loc 1 140 0
	mov.n	a10, a2
	mov.n	a11, a3
	call8	esp_sleep_enable_timer_wakeup
.LVL183:
	.loc 1 141 0
	call8	esp_deep_sleep_start
.LVL184:
.LFE33:
	.size	esp_deep_sleep, .-esp_deep_sleep
	.global	system_deep_sleep
	.set	system_deep_sleep,esp_deep_sleep
	.section	.rodata.str1.4
	.align	4
.LC139:
	.string	"\033[0;31mE (%d) %s: Conflicting wake-up trigger: ext0\033[0m\n"
	.section	.text.esp_sleep_enable_touchpad_wakeup,"ax",@progbits
	.literal_position
	.literal .LC137, s_config
	.literal .LC138, .LC132
	.literal .LC140, .LC139
	.align	4
	.global	esp_sleep_enable_touchpad_wakeup
	.type	esp_sleep_enable_touchpad_wakeup, @function
esp_sleep_enable_touchpad_wakeup:
.LFB47:
	.loc 1 430 0
	entry	sp, 32
.LCFI20:
	.loc 1 431 0
	l32r	a8, .LC137
	l32i.n	a8, a8, 24
	extui	a8, a8, 0, 11
	bbci	a8, 0, .L138
	.loc 1 432 0 discriminator 2
	call8	esp_log_timestamp
.LVL185:
	l32r	a11, .LC138
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC140
	movi.n	a10, 1
	call8	esp_log_write
.LVL186:
	.loc 1 433 0 discriminator 2
	movi	a2, 0x103
	retw.n
.L138:
	.loc 1 435 0
	l32r	a2, .LC137
	movi	a9, 0x100
	or	a8, a8, a9
	extui	a9, a8, 0, 11
	l32i.n	a10, a2, 24
	movi	a8, -0x800
	and	a8, a10, a8
	or	a8, a8, a9
	s32i.n	a8, a2, 24
	.loc 1 436 0
	movi.n	a2, 0
	.loc 1 437 0
	retw.n
.LFE47:
	.size	esp_sleep_enable_touchpad_wakeup, .-esp_sleep_enable_touchpad_wakeup
	.section	.rodata.str1.4
	.align	4
.LC144:
	.string	"\033[0;31mE (%d) %s: Conflicting wake-up triggers: touch / ULP\033[0m\n"
	.section	.text.esp_sleep_enable_ext0_wakeup,"ax",@progbits
	.literal_position
	.literal .LC141, rtc_gpio_desc
	.literal .LC142, s_config
	.literal .LC143, .LC132
	.literal .LC145, .LC144
	.literal .LC146, -1073741825
	.align	4
	.global	esp_sleep_enable_ext0_wakeup
	.type	esp_sleep_enable_ext0_wakeup, @function
esp_sleep_enable_ext0_wakeup:
.LFB49:
	.loc 1 451 0
.LVL187:
	entry	sp, 32
.LCFI21:
	.loc 1 452 0
	bgeui	a3, 2, .L144
.LVL188:
.LBB90:
.LBB91:
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/rtc_io.h"
	.loc 3 43 0
	movi.n	a8, 0x27
	bltu	a8, a2, .L145
	addx2	a8, a2, a2
	addx4	a8, a8, a2
	l32r	a9, .LC141
	addx4	a8, a8, a9
	l32i.n	a8, a8, 0
	bnez.n	a8, .L146
	j	.L142
.L145:
	movi.n	a8, 0
	j	.L142
.L146:
	movi.n	a8, 1
.L142:
.LBE91:
.LBE90:
	.loc 1 455 0
	beqz.n	a8, .L147
	.loc 1 458 0
	l32r	a8, .LC142
	l32i.n	a9, a8, 24
	extui	a9, a9, 0, 11
	movi	a8, 0x300
	bnone	a9, a8, .L143
	.loc 1 459 0 discriminator 2
	call8	esp_log_timestamp
.LVL189:
	l32r	a11, .LC143
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC145
	movi.n	a10, 1
	call8	esp_log_write
.LVL190:
	.loc 1 460 0 discriminator 2
	movi	a2, 0x103
.LVL191:
	retw.n
.LVL192:
.L143:
	.loc 1 462 0
	addx2	a8, a2, a2
	addx4	a2, a8, a2
.LVL193:
	l32r	a8, .LC141
	addx4	a2, a2, a8
	l32r	a10, .LC142
	l8ui	a2, a2, 48
	extui	a8, a2, 0, 5
	l32i.n	a11, a10, 28
	movi.n	a2, -0x20
	and	a2, a11, a2
	or	a2, a2, a8
	s32i.n	a2, a10, 28
	.loc 1 463 0
	extui	a3, a3, 0, 1
.LVL194:
	slli	a8, a3, 30
	l32i.n	a3, a10, 24
	l32r	a2, .LC146
	and	a3, a3, a2
	or	a3, a3, a8
	.loc 1 464 0
	movi.n	a2, 1
	or	a9, a9, a2
	extui	a9, a9, 0, 11
	movi	a2, -0x800
	and	a3, a3, a2
	or	a3, a3, a9
	s32i.n	a3, a10, 24
	.loc 1 465 0
	movi.n	a2, 0
	retw.n
.LVL195:
.L144:
	.loc 1 453 0
	movi	a2, 0x102
.LVL196:
	retw.n
.LVL197:
.L147:
	.loc 1 456 0
	movi	a2, 0x102
.LVL198:
	.loc 1 466 0
	retw.n
.LFE49:
	.size	esp_sleep_enable_ext0_wakeup, .-esp_sleep_enable_ext0_wakeup
	.section	.rodata.str1.4
	.align	4
.LC149:
	.string	"\033[0;31mE (%d) %s: Not an RTC IO: GPIO%d\033[0m\n"
	.section	.text.esp_sleep_enable_ext1_wakeup,"ax",@progbits
	.literal_position
	.literal .LC147, rtc_gpio_desc
	.literal .LC148, .LC132
	.literal .LC150, .LC149
	.literal .LC151, s_config
	.literal .LC152, 262143
	.literal .LC153, -1073737729
	.literal .LC154, -2049
	.align	4
	.global	esp_sleep_enable_ext1_wakeup
	.type	esp_sleep_enable_ext1_wakeup, @function
esp_sleep_enable_ext1_wakeup:
.LFB51:
	.loc 1 489 0
.LVL199:
	entry	sp, 32
.LCFI22:
	.loc 1 490 0
	bgeui	a4, 2, .L156
	movi.n	a5, 0
	mov.n	a9, a5
	j	.L150
.LVL200:
.L155:
.LBB92:
	.loc 1 496 0
	bbci	a2, 0, .L151
.LVL201:
.LBB93:
.LBB94:
	.loc 3 43 0
	movi.n	a8, 0x27
	bltu	a8, a5, .L157
	addx2	a8, a5, a5
	addx4	a8, a8, a5
	l32r	a10, .LC147
	addx4	a8, a8, a10
	l32i.n	a8, a8, 0
	bnez.n	a8, .L158
	j	.L153
.L157:
	movi.n	a8, 0
	j	.L153
.L158:
	movi.n	a8, 1
.L153:
.LBE94:
.LBE93:
	.loc 1 499 0
	bnez.n	a8, .L154
	.loc 1 500 0 discriminator 2
	call8	esp_log_timestamp
.LVL202:
	l32r	a11, .LC148
	mov.n	a15, a5
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC150
	movi.n	a10, 1
	call8	esp_log_write
.LVL203:
	.loc 1 501 0 discriminator 2
	movi	a2, 0x102
.LVL204:
	retw.n
.LVL205:
.L154:
	.loc 1 503 0
	addx2	a8, a5, a5
	addx4	a8, a8, a5
	l32r	a10, .LC147
	addx4	a8, a8, a10
	l32i.n	a10, a8, 48
	movi.n	a8, 1
	ssl	a10
	sll	a8, a8
	or	a9, a9, a8
.LVL206:
.L151:
	.loc 1 495 0 discriminator 2
	addi.n	a5, a5, 1
.LVL207:
	slli	a8, a3, 31
	srli	a2, a2, 1
.LVL208:
	or	a2, a8, a2
	srli	a3, a3, 1
.LVL209:
.L150:
	.loc 1 495 0 is_stmt 0 discriminator 1
	or	a8, a2, a3
	bnez.n	a8, .L155
.LBE92:
	.loc 1 505 0 is_stmt 1
	l32r	a5, .LC151
.LVL210:
	l32r	a2, .LC152
.LVL211:
	and	a9, a9, a2
.LVL212:
	slli	a9, a9, 12
	l32i.n	a3, a5, 24
	l32r	a2, .LC153
	and	a2, a3, a2
	or	a2, a2, a9
	.loc 1 506 0
	extui	a4, a4, 0, 1
.LVL213:
	slli	a4, a4, 11
	l32r	a3, .LC154
	and	a2, a2, a3
	or	a2, a2, a4
	.loc 1 507 0
	movi.n	a3, 2
	or	a2, a2, a3
	s32i.n	a2, a5, 24
	.loc 1 508 0
	movi.n	a2, 0
	retw.n
.LVL214:
.L156:
	.loc 1 491 0
	movi	a2, 0x102
.LVL215:
	.loc 1 509 0
	retw.n
.LFE51:
	.size	esp_sleep_enable_ext1_wakeup, .-esp_sleep_enable_ext1_wakeup
	.section	.text.esp_sleep_get_wakeup_cause,"ax",@progbits
	.literal_position
	.literal .LC155, 1072988216
	.align	4
	.global	esp_sleep_get_wakeup_cause
	.type	esp_sleep_get_wakeup_cause, @function
esp_sleep_get_wakeup_cause:
.LFB54:
	.loc 1 569 0
	entry	sp, 32
.LCFI23:
	.loc 1 570 0
	movi.n	a10, 0
	call8	rtc_get_reset_reason
.LVL216:
	bnei	a10, 5, .L161
.LBB95:
	.loc 1 574 0
	l32r	a2, .LC155
	memw
	l32i.n	a2, a2, 0
.LVL217:
.LBE95:
	.loc 1 575 0
	bbsi	a2, 0, .L162
	.loc 1 577 0
	bbsi	a2, 1, .L163
	.loc 1 579 0
	bbsi	a2, 3, .L164
	.loc 1 581 0
	bbsi	a2, 8, .L165
	.loc 1 583 0
	bbci	a2, 9, .L166
	.loc 1 584 0
	movi.n	a2, 5
.LVL218:
	retw.n
.L161:
	.loc 1 571 0
	movi.n	a2, 0
	retw.n
.LVL219:
.L162:
	.loc 1 576 0
	movi.n	a2, 1
.LVL220:
	retw.n
.LVL221:
.L163:
	.loc 1 578 0
	movi.n	a2, 2
.LVL222:
	retw.n
.LVL223:
.L164:
	.loc 1 580 0
	movi.n	a2, 3
.LVL224:
	retw.n
.LVL225:
.L165:
	.loc 1 582 0
	movi.n	a2, 4
.LVL226:
	retw.n
.LVL227:
.L166:
	.loc 1 586 0
	movi.n	a2, 0
.LVL228:
	.loc 1 588 0
	retw.n
.LFE54:
	.size	esp_sleep_get_wakeup_cause, .-esp_sleep_get_wakeup_cause
	.section	.rodata.str1.4
	.align	4
.LC156:
	.string	"ret == ESP_OK && \"wakeup reason is RTC_TOUCH_TRIG_EN but SENS_TOUCH_MEAS_EN is zero\""
	.section	.text.esp_sleep_get_touchpad_wakeup_status,"ax",@progbits
	.literal_position
	.literal .LC157, .LC156
	.literal .LC158, __func__$5840
	.literal .LC159, .LC26
	.align	4
	.global	esp_sleep_get_touchpad_wakeup_status
	.type	esp_sleep_get_touchpad_wakeup_status, @function
esp_sleep_get_touchpad_wakeup_status:
.LFB48:
	.loc 1 440 0
	entry	sp, 48
.LCFI24:
	.loc 1 441 0
	call8	esp_sleep_get_wakeup_cause
.LVL229:
	bnei	a10, 4, .L170
	.loc 1 445 0
	mov.n	a10, sp
	call8	touch_pad_get_wakeup_status
.LVL230:
	.loc 1 446 0
	beqz.n	a10, .L169
	.loc 1 446 0 is_stmt 0 discriminator 1
	l32r	a13, .LC157
	l32r	a12, .LC158
	movi	a11, 0x1be
	l32r	a10, .LC159
.LVL231:
	call8	__assert_func
.LVL232:
.L169:
	.loc 1 447 0 is_stmt 1
	l32i.n	a2, sp, 0
	retw.n
.LVL233:
.L170:
	.loc 1 442 0
	movi.n	a2, 0xa
	.loc 1 448 0
	retw.n
.LFE48:
	.size	esp_sleep_get_touchpad_wakeup_status, .-esp_sleep_get_touchpad_wakeup_status
	.section	.text.esp_sleep_get_ext1_wakeup_status,"ax",@progbits
	.literal_position
	.literal .LC161, 1072988368
	.literal .LC162, 262143
	.literal .LC163, rtc_gpio_desc
	.align	4
	.global	esp_sleep_get_ext1_wakeup_status
	.type	esp_sleep_get_ext1_wakeup_status, @function
esp_sleep_get_ext1_wakeup_status:
.LFB53:
	.loc 1 548 0
	entry	sp, 32
.LCFI25:
	.loc 1 549 0
	call8	esp_sleep_get_wakeup_cause
.LVL234:
	bnei	a10, 2, .L177
.LBB96:
.LBB97:
	.loc 1 552 0
	l32r	a2, .LC161
	memw
	l32i.n	a11, a2, 0
.LBE97:
	l32r	a2, .LC162
	and	a11, a11, a2
.LVL235:
.LBE96:
.LBB98:
	.loc 1 555 0
	movi.n	a8, 0
.LBE98:
	.loc 1 554 0
	mov.n	a2, a8
	mov.n	a3, a8
.LBB102:
	.loc 1 555 0
	j	.L173
.LVL236:
.L176:
.LBB99:
.LBB100:
.LBB101:
	.loc 3 43 0
	movi.n	a9, 0x27
	bltu	a9, a8, .L178
	addx2	a10, a8, a8
	addx4	a10, a10, a8
	slli	a9, a10, 2
	l32r	a10, .LC163
	add.n	a9, a10, a9
	l32i.n	a9, a9, 0
	bnez.n	a9, .L179
	j	.L174
.L178:
	movi.n	a9, 0
	j	.L174
.L179:
	movi.n	a9, 1
.L174:
.LBE101:
.LBE100:
	.loc 1 556 0
	beqz.n	a9, .L175
	.loc 1 559 0
	addx2	a10, a8, a8
	addx4	a10, a10, a8
	slli	a9, a10, 2
	l32r	a10, .LC163
	add.n	a9, a10, a9
	l32i.n	a9, a9, 48
.LVL237:
	.loc 1 560 0
	bbc	a11, a9, .L175
	.loc 1 563 0
	movi.n	a13, 0x20
	and	a13, a8, a13
	movi.n	a12, 0
	movi.n	a9, 1
.LVL238:
	ssl	a8
	sll	a9, a9
	mov.n	a10, a9
.LVL239:
	moveqz	a10, a12, a13
	movnez	a9, a12, a13
	or	a9, a2, a9
	or	a10, a3, a10
	mov.n	a2, a9
.LVL240:
	mov.n	a3, a10
.LVL241:
.L175:
.LBE99:
	.loc 1 555 0 discriminator 2
	addi.n	a8, a8, 1
.LVL242:
.L173:
	.loc 1 555 0 is_stmt 0 discriminator 1
	movi.n	a9, 0x27
	bge	a9, a8, .L176
	retw.n
.LVL243:
.L177:
.LBE102:
	.loc 1 550 0 is_stmt 1
	movi.n	a2, 0
	mov.n	a3, a2
	.loc 1 566 0
	retw.n
.LFE53:
	.size	esp_sleep_get_ext1_wakeup_status, .-esp_sleep_get_ext1_wakeup_status
	.section	.text.esp_sleep_pd_config,"ax",@progbits
	.literal_position
	.literal .LC164, s_config
	.align	4
	.global	esp_sleep_pd_config
	.type	esp_sleep_pd_config, @function
esp_sleep_pd_config:
.LFB55:
	.loc 1 592 0
.LVL244:
	entry	sp, 32
.LCFI26:
	.loc 1 593 0
	movi.n	a8, 1
	bgeui	a2, 4, .L181
	movi.n	a8, 0
.L181:
	extui	a9, a8, 0, 8
	movi.n	a8, 1
	bgeui	a3, 3, .L182
	movi.n	a8, 0
.L182:
	extui	a8, a8, 0, 8
	or	a8, a9, a8
	bnez.n	a8, .L184
	.loc 1 596 0
	l32r	a8, .LC164
	addx4	a2, a2, a8
.LVL245:
	s32i.n	a3, a2, 0
	.loc 1 597 0
	movi.n	a2, 0
	retw.n
.LVL246:
.L184:
	.loc 1 594 0
	movi	a2, 0x102
.LVL247:
	.loc 1 598 0
	retw.n
.LFE55:
	.size	esp_sleep_pd_config, .-esp_sleep_pd_config
	.section	.rodata.__func__$5840,"a",@progbits
	.align	4
	.type	__func__$5840, @object
	.size	__func__$5840, 37
__func__$5840:
	.string	"esp_sleep_get_touchpad_wakeup_status"
	.section	.data.light_sleep_lock$5807,"aw",@progbits
	.align	4
	.type	light_sleep_lock$5807, @object
	.size	light_sleep_lock$5807, 8
light_sleep_lock$5807:
	.word	-1287651329
	.word	0
	.section	.rodata.__func__$5744,"a",@progbits
	.align	4
	.type	__func__$5744, @object
	.size	__func__$5744, 13
__func__$5744:
	.string	"resume_uarts"
	.section	.rodata.__func__$5882,"a",@progbits
	.align	4
	.type	__func__$5882, @object
	.size	__func__$5882, 20
__func__$5882:
	.string	"ext1_wakeup_prepare"
	.section	.rodata.__func__$5848,"a",@progbits
	.align	4
	.type	__func__$5848, @object
	.size	__func__$5848, 20
__func__$5848:
	.string	"ext0_wakeup_prepare"
	.section	.rodata.__func__$5736,"a",@progbits
	.align	4
	.type	__func__$5736, @object
	.size	__func__$5736, 14
__func__$5736:
	.string	"suspend_uarts"
	.section	.rodata.__func__$4801,"a",@progbits
	.align	4
	.type	__func__$4801, @object
	.size	__func__$4801, 18
__func__$4801:
	.string	"uart_tx_wait_idle"
	.section	.bss.lock_rtc_memory_crc,"aw",@nobits
	.align	4
	.type	lock_rtc_memory_crc, @object
	.size	lock_rtc_memory_crc, 4
lock_rtc_memory_crc:
	.zero	4
	.section	.data.s_config,"aw",@progbits
	.align	8
	.type	s_config, @object
	.size	s_config, 48
s_config:
	.word	2
	.word	2
	.word	2
	.zero	4
	.zero	8
	.byte	0
	.byte	0
	.zero	22
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
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.byte	0x4
	.4byte	.LCFI0-.LFB40
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.byte	0x4
	.4byte	.LCFI1-.LFB56
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI2-.LFB32
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x4
	.4byte	.LCFI3-.LFB35
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.byte	0x4
	.4byte	.LCFI4-.LFB50
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.byte	0x4
	.4byte	.LCFI5-.LFB52
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x4
	.4byte	.LCFI6-.LFB36
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.byte	0x4
	.4byte	.LCFI7-.LFB46
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.byte	0x4
	.4byte	.LCFI8-.LFB39
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI9-.LFB34
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.byte	0x4
	.4byte	.LCFI10-.LFB37
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.byte	0x4
	.4byte	.LCFI11-.LFB41
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI12-.LFB30
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI13-.LFB31
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.byte	0x4
	.4byte	.LCFI14-.LFB38
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.byte	0x4
	.4byte	.LCFI15-.LFB42
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.byte	0x4
	.4byte	.LCFI16-.LFB43
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.byte	0x4
	.4byte	.LCFI17-.LFB44
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.byte	0x4
	.4byte	.LCFI18-.LFB45
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE36:
.LSFDE38:
	.4byte	.LEFDE38-.LASFDE38
.LASFDE38:
	.4byte	.Lframe0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI19-.LFB33
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE38:
.LSFDE40:
	.4byte	.LEFDE40-.LASFDE40
.LASFDE40:
	.4byte	.Lframe0
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.byte	0x4
	.4byte	.LCFI20-.LFB47
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE40:
.LSFDE42:
	.4byte	.LEFDE42-.LASFDE42
.LASFDE42:
	.4byte	.Lframe0
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.byte	0x4
	.4byte	.LCFI21-.LFB49
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE42:
.LSFDE44:
	.4byte	.LEFDE44-.LASFDE44
.LASFDE44:
	.4byte	.Lframe0
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.byte	0x4
	.4byte	.LCFI22-.LFB51
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE44:
.LSFDE46:
	.4byte	.LEFDE46-.LASFDE46
.LASFDE46:
	.4byte	.Lframe0
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.byte	0x4
	.4byte	.LCFI23-.LFB54
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE46:
.LSFDE48:
	.4byte	.LEFDE48-.LASFDE48
.LASFDE48:
	.4byte	.Lframe0
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.byte	0x4
	.4byte	.LCFI24-.LFB48
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE48:
.LSFDE50:
	.4byte	.LEFDE50-.LASFDE50
.LASFDE50:
	.4byte	.Lframe0
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.byte	0x4
	.4byte	.LCFI25-.LFB53
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE50:
.LSFDE52:
	.4byte	.LEFDE52-.LASFDE52
.LASFDE52:
	.4byte	.Lframe0
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.byte	0x4
	.4byte	.LCFI26-.LFB55
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE52:
	.text
.Letext0:
	.file 4 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/lock.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_err.h"
	.file 9 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/gpio.h"
	.file 10 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/touch_pad.h"
	.file 11 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_sleep.h"
	.file 12 "D:/ESP32/esp-idf-v3.1-rc1/components/log/include/esp_log.h"
	.file 13 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/rtc.h"
	.file 14 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/rtc.h"
	.file 15 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/include/soc/rtc_periph.h"
	.file 16 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/portmacro.h"
	.file 17 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/ets_sys.h"
	.file 18 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/assert.h"
	.file 19 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_clk.h"
	.file 20 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/platform_include/esp_newlib.h"
	.file 21 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/esp_timer_impl.h"
	.file 22 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_timer.h"
	.file 23 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_dport_access.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1a44
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF296
	.byte	0xc
	.4byte	.LASF297
	.4byte	.LASF298
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.4byte	.LASF3
	.byte	0x4
	.byte	0xd8
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x4
	.4byte	.LASF4
	.byte	0x5
	.byte	0xb
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF5
	.uleb128 0x4
	.4byte	.LASF6
	.byte	0x6
	.byte	0x12
	.4byte	0x69
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x4
	.4byte	.LASF9
	.byte	0x6
	.byte	0x19
	.4byte	0x2c
	.uleb128 0x4
	.4byte	.LASF10
	.byte	0x6
	.byte	0x1a
	.4byte	0x3e
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x6
	.byte	0x1d
	.4byte	0x98
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x6
	.byte	0x1e
	.4byte	0x25
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x7
	.byte	0x15
	.4byte	0x5e
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x7
	.byte	0x2c
	.4byte	0x77
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x7
	.byte	0x2d
	.4byte	0x82
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x7
	.byte	0x38
	.4byte	0x8d
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x7
	.byte	0x39
	.4byte	0x9f
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF19
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF20
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF21
	.uleb128 0x5
	.byte	0x4
	.4byte	0xfc
	.uleb128 0x6
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF22
	.uleb128 0x5
	.byte	0x4
	.4byte	0x10a
	.uleb128 0x7
	.4byte	0xfd
	.uleb128 0x4
	.4byte	.LASF23
	.byte	0x8
	.byte	0x18
	.4byte	0xb5
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF24
	.uleb128 0x8
	.byte	0x4
	.4byte	0x3e
	.byte	0x9
	.byte	0x82
	.4byte	0x200
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0
	.uleb128 0x9
	.4byte	.LASF26
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF27
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF28
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF29
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF30
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF31
	.byte	0x6
	.uleb128 0x9
	.4byte	.LASF32
	.byte	0x7
	.uleb128 0x9
	.4byte	.LASF33
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF34
	.byte	0x9
	.uleb128 0x9
	.4byte	.LASF35
	.byte	0xa
	.uleb128 0x9
	.4byte	.LASF36
	.byte	0xb
	.uleb128 0x9
	.4byte	.LASF37
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF38
	.byte	0xd
	.uleb128 0x9
	.4byte	.LASF39
	.byte	0xe
	.uleb128 0x9
	.4byte	.LASF40
	.byte	0xf
	.uleb128 0x9
	.4byte	.LASF41
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF42
	.byte	0x11
	.uleb128 0x9
	.4byte	.LASF43
	.byte	0x12
	.uleb128 0x9
	.4byte	.LASF44
	.byte	0x13
	.uleb128 0x9
	.4byte	.LASF45
	.byte	0x15
	.uleb128 0x9
	.4byte	.LASF46
	.byte	0x16
	.uleb128 0x9
	.4byte	.LASF47
	.byte	0x17
	.uleb128 0x9
	.4byte	.LASF48
	.byte	0x19
	.uleb128 0x9
	.4byte	.LASF49
	.byte	0x1a
	.uleb128 0x9
	.4byte	.LASF50
	.byte	0x1b
	.uleb128 0x9
	.4byte	.LASF51
	.byte	0x20
	.uleb128 0x9
	.4byte	.LASF52
	.byte	0x21
	.uleb128 0x9
	.4byte	.LASF53
	.byte	0x22
	.uleb128 0x9
	.4byte	.LASF54
	.byte	0x23
	.uleb128 0x9
	.4byte	.LASF55
	.byte	0x24
	.uleb128 0x9
	.4byte	.LASF56
	.byte	0x25
	.uleb128 0x9
	.4byte	.LASF57
	.byte	0x26
	.uleb128 0x9
	.4byte	.LASF58
	.byte	0x27
	.uleb128 0x9
	.4byte	.LASF59
	.byte	0x28
	.byte	0
	.uleb128 0x4
	.4byte	.LASF60
	.byte	0x9
	.byte	0xaf
	.4byte	0x121
	.uleb128 0x8
	.byte	0x4
	.4byte	0x3e
	.byte	0xa
	.byte	0x19
	.4byte	0x25a
	.uleb128 0x9
	.4byte	.LASF61
	.byte	0
	.uleb128 0x9
	.4byte	.LASF62
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF63
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF64
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF65
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF66
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF67
	.byte	0x6
	.uleb128 0x9
	.4byte	.LASF68
	.byte	0x7
	.uleb128 0x9
	.4byte	.LASF69
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF70
	.byte	0x9
	.uleb128 0x9
	.4byte	.LASF71
	.byte	0xa
	.byte	0
	.uleb128 0x4
	.4byte	.LASF72
	.byte	0xa
	.byte	0x25
	.4byte	0x20b
	.uleb128 0x8
	.byte	0x4
	.4byte	0x3e
	.byte	0xb
	.byte	0x1d
	.4byte	0x27e
	.uleb128 0x9
	.4byte	.LASF73
	.byte	0
	.uleb128 0x9
	.4byte	.LASF74
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF75
	.byte	0xb
	.byte	0x20
	.4byte	0x265
	.uleb128 0x8
	.byte	0x4
	.4byte	0x3e
	.byte	0xb
	.byte	0x25
	.4byte	0x2b4
	.uleb128 0x9
	.4byte	.LASF76
	.byte	0
	.uleb128 0x9
	.4byte	.LASF77
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF78
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF79
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF80
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF81
	.byte	0xb
	.byte	0x2b
	.4byte	0x289
	.uleb128 0x8
	.byte	0x4
	.4byte	0x3e
	.byte	0xb
	.byte	0x30
	.4byte	0x2de
	.uleb128 0x9
	.4byte	.LASF82
	.byte	0
	.uleb128 0x9
	.4byte	.LASF83
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF84
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.4byte	.LASF85
	.byte	0xb
	.byte	0x34
	.4byte	0x2bf
	.uleb128 0x8
	.byte	0x4
	.4byte	0x3e
	.byte	0xb
	.byte	0x39
	.4byte	0x31a
	.uleb128 0x9
	.4byte	.LASF86
	.byte	0
	.uleb128 0x9
	.4byte	.LASF87
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF88
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF89
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF90
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF91
	.byte	0x5
	.byte	0
	.uleb128 0x4
	.4byte	.LASF92
	.byte	0xb
	.byte	0x40
	.4byte	0x2e9
	.uleb128 0x4
	.4byte	.LASF93
	.byte	0xb
	.byte	0x43
	.4byte	0x31a
	.uleb128 0xa
	.4byte	.LASF94
	.byte	0xb
	.2byte	0x125
	.4byte	0xf6
	.uleb128 0x8
	.byte	0x4
	.4byte	0x3e
	.byte	0xc
	.byte	0x1f
	.4byte	0x36d
	.uleb128 0x9
	.4byte	.LASF95
	.byte	0
	.uleb128 0x9
	.4byte	.LASF96
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF97
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF98
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF99
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF100
	.byte	0x5
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x3e
	.byte	0xd
	.byte	0x50
	.4byte	0x3da
	.uleb128 0x9
	.4byte	.LASF101
	.byte	0
	.uleb128 0x9
	.4byte	.LASF102
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF103
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF104
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF105
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF106
	.byte	0x6
	.uleb128 0x9
	.4byte	.LASF107
	.byte	0x7
	.uleb128 0x9
	.4byte	.LASF108
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF109
	.byte	0x9
	.uleb128 0x9
	.4byte	.LASF110
	.byte	0xa
	.uleb128 0x9
	.4byte	.LASF111
	.byte	0xb
	.uleb128 0x9
	.4byte	.LASF112
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF113
	.byte	0xd
	.uleb128 0x9
	.4byte	.LASF114
	.byte	0xe
	.uleb128 0x9
	.4byte	.LASF115
	.byte	0xf
	.uleb128 0x9
	.4byte	.LASF116
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x3e
	.byte	0xd
	.byte	0x63
	.4byte	0x432
	.uleb128 0x9
	.4byte	.LASF117
	.byte	0
	.uleb128 0x9
	.4byte	.LASF118
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF119
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF120
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF121
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF122
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF123
	.byte	0x20
	.uleb128 0x9
	.4byte	.LASF124
	.byte	0x40
	.uleb128 0x9
	.4byte	.LASF125
	.byte	0x80
	.uleb128 0xb
	.4byte	.LASF126
	.2byte	0x100
	.uleb128 0xb
	.4byte	.LASF127
	.2byte	0x200
	.uleb128 0xb
	.4byte	.LASF128
	.2byte	0x400
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x3e
	.byte	0xd
	.byte	0x81
	.4byte	0x463
	.uleb128 0x9
	.4byte	.LASF129
	.byte	0
	.uleb128 0x9
	.4byte	.LASF130
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF131
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF132
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF133
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF134
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x3e
	.byte	0xe
	.byte	0x46
	.4byte	0x48e
	.uleb128 0x9
	.4byte	.LASF135
	.byte	0
	.uleb128 0x9
	.4byte	.LASF136
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF137
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF138
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF139
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF140
	.byte	0xe
	.byte	0x4c
	.4byte	0x463
	.uleb128 0xc
	.byte	0x4
	.byte	0xe
	.2byte	0x1ad
	.4byte	0x5b3
	.uleb128 0xd
	.4byte	.LASF141
	.byte	0xe
	.2byte	0x1ae
	.4byte	0xc0
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.4byte	.LASF142
	.byte	0xe
	.2byte	0x1af
	.4byte	0xc0
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xd
	.4byte	.LASF143
	.byte	0xe
	.2byte	0x1b0
	.4byte	0xc0
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xd
	.4byte	.LASF144
	.byte	0xe
	.2byte	0x1b1
	.4byte	0xc0
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xd
	.4byte	.LASF145
	.byte	0xe
	.2byte	0x1b2
	.4byte	0xc0
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xd
	.4byte	.LASF146
	.byte	0xe
	.2byte	0x1b3
	.4byte	0xc0
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xd
	.4byte	.LASF147
	.byte	0xe
	.2byte	0x1b4
	.4byte	0xc0
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xd
	.4byte	.LASF148
	.byte	0xe
	.2byte	0x1b5
	.4byte	0xc0
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.4byte	.LASF149
	.byte	0xe
	.2byte	0x1b6
	.4byte	0xc0
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xd
	.4byte	.LASF150
	.byte	0xe
	.2byte	0x1b7
	.4byte	0xc0
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xd
	.4byte	.LASF151
	.byte	0xe
	.2byte	0x1b8
	.4byte	0xc0
	.byte	0x4
	.byte	0x3
	.byte	0x13
	.byte	0
	.uleb128 0xd
	.4byte	.LASF152
	.byte	0xe
	.2byte	0x1b9
	.4byte	0xc0
	.byte	0x4
	.byte	0x3
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.4byte	.LASF153
	.byte	0xe
	.2byte	0x1ba
	.4byte	0xc0
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0xd
	.4byte	.LASF154
	.byte	0xe
	.2byte	0x1bb
	.4byte	0xc0
	.byte	0x4
	.byte	0x3
	.byte	0xa
	.byte	0
	.uleb128 0xd
	.4byte	.LASF155
	.byte	0xe
	.2byte	0x1bc
	.4byte	0xc0
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0xd
	.4byte	.LASF156
	.byte	0xe
	.2byte	0x1bd
	.4byte	0xc0
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.4byte	.LASF157
	.byte	0xe
	.2byte	0x1be
	.4byte	0xc0
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	.LASF158
	.byte	0xe
	.2byte	0x1bf
	.4byte	0x499
	.uleb128 0xc
	.byte	0x4
	.byte	0xe
	.2byte	0x24b
	.4byte	0x629
	.uleb128 0xd
	.4byte	.LASF159
	.byte	0xe
	.2byte	0x24c
	.4byte	0xc0
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.4byte	.LASF160
	.byte	0xe
	.2byte	0x24d
	.4byte	0xc0
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xd
	.4byte	.LASF161
	.byte	0xe
	.2byte	0x24e
	.4byte	0xc0
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xd
	.4byte	.LASF162
	.byte	0xe
	.2byte	0x24f
	.4byte	0xc0
	.byte	0x4
	.byte	0x2
	.byte	0x1b
	.byte	0
	.uleb128 0xd
	.4byte	.LASF163
	.byte	0xe
	.2byte	0x250
	.4byte	0xc0
	.byte	0x4
	.byte	0x2
	.byte	0x19
	.byte	0
	.uleb128 0xd
	.4byte	.LASF164
	.byte	0xe
	.2byte	0x251
	.4byte	0xc0
	.byte	0x4
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	.LASF165
	.byte	0xe
	.2byte	0x252
	.4byte	0x5bf
	.uleb128 0xe
	.byte	0x34
	.byte	0xf
	.byte	0x21
	.4byte	0x6d9
	.uleb128 0xf
	.string	"reg"
	.byte	0xf
	.byte	0x22
	.4byte	0xc0
	.byte	0
	.uleb128 0xf
	.string	"mux"
	.byte	0xf
	.byte	0x23
	.4byte	0xc0
	.byte	0x4
	.uleb128 0x10
	.4byte	.LASF166
	.byte	0xf
	.byte	0x24
	.4byte	0xc0
	.byte	0x8
	.uleb128 0xf
	.string	"ie"
	.byte	0xf
	.byte	0x25
	.4byte	0xc0
	.byte	0xc
	.uleb128 0x10
	.4byte	.LASF167
	.byte	0xf
	.byte	0x26
	.4byte	0xc0
	.byte	0x10
	.uleb128 0x10
	.4byte	.LASF168
	.byte	0xf
	.byte	0x27
	.4byte	0xc0
	.byte	0x14
	.uleb128 0x10
	.4byte	.LASF169
	.byte	0xf
	.byte	0x28
	.4byte	0xc0
	.byte	0x18
	.uleb128 0x10
	.4byte	.LASF170
	.byte	0xf
	.byte	0x29
	.4byte	0xc0
	.byte	0x1c
	.uleb128 0x10
	.4byte	.LASF171
	.byte	0xf
	.byte	0x2a
	.4byte	0xc0
	.byte	0x20
	.uleb128 0x10
	.4byte	.LASF172
	.byte	0xf
	.byte	0x2b
	.4byte	0xc0
	.byte	0x24
	.uleb128 0x10
	.4byte	.LASF173
	.byte	0xf
	.byte	0x2c
	.4byte	0xc0
	.byte	0x28
	.uleb128 0x10
	.4byte	.LASF174
	.byte	0xf
	.byte	0x2d
	.4byte	0xc0
	.byte	0x2c
	.uleb128 0x10
	.4byte	.LASF175
	.byte	0xf
	.byte	0x2e
	.4byte	0x2c
	.byte	0x30
	.byte	0
	.uleb128 0x4
	.4byte	.LASF176
	.byte	0xf
	.byte	0x2f
	.4byte	0x635
	.uleb128 0xe
	.byte	0x8
	.byte	0x10
	.byte	0x82
	.4byte	0x705
	.uleb128 0x10
	.4byte	.LASF177
	.byte	0x10
	.byte	0x8a
	.4byte	0xc0
	.byte	0
	.uleb128 0x10
	.4byte	.LASF178
	.byte	0x10
	.byte	0x8f
	.4byte	0xc0
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF179
	.byte	0x10
	.byte	0x94
	.4byte	0x6e4
	.uleb128 0x7
	.4byte	0x104
	.uleb128 0xe
	.byte	0x30
	.byte	0x1
	.byte	0x41
	.4byte	0x799
	.uleb128 0x10
	.4byte	.LASF180
	.byte	0x1
	.byte	0x42
	.4byte	0x799
	.byte	0
	.uleb128 0x10
	.4byte	.LASF181
	.byte	0x1
	.byte	0x43
	.4byte	0xd6
	.byte	0x10
	.uleb128 0x11
	.4byte	.LASF182
	.byte	0x1
	.byte	0x44
	.4byte	0xc0
	.byte	0x4
	.byte	0xb
	.byte	0x15
	.byte	0x18
	.uleb128 0x11
	.4byte	.LASF183
	.byte	0x1
	.byte	0x45
	.4byte	0xc0
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x18
	.uleb128 0x11
	.4byte	.LASF184
	.byte	0x1
	.byte	0x46
	.4byte	0xc0
	.byte	0x4
	.byte	0x12
	.byte	0x2
	.byte	0x18
	.uleb128 0x11
	.4byte	.LASF185
	.byte	0x1
	.byte	0x47
	.4byte	0xc0
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x18
	.uleb128 0x11
	.4byte	.LASF186
	.byte	0x1
	.byte	0x48
	.4byte	0xc0
	.byte	0x4
	.byte	0x5
	.byte	0x1b
	.byte	0x1c
	.uleb128 0x10
	.4byte	.LASF187
	.byte	0x1
	.byte	0x49
	.4byte	0xc0
	.byte	0x20
	.uleb128 0x10
	.4byte	.LASF188
	.byte	0x1
	.byte	0x4a
	.4byte	0xd6
	.byte	0x28
	.byte	0
	.uleb128 0x12
	.4byte	0x2de
	.4byte	0x7a9
	.uleb128 0x13
	.4byte	0xe8
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.4byte	.LASF189
	.byte	0x1
	.byte	0x4b
	.4byte	0x715
	.uleb128 0x14
	.4byte	.LASF299
	.byte	0x3
	.byte	0x28
	.4byte	0x11a
	.byte	0x3
	.4byte	0x7d0
	.uleb128 0x15
	.4byte	.LASF194
	.byte	0x3
	.byte	0x28
	.4byte	0x200
	.byte	0
	.uleb128 0x16
	.4byte	.LASF198
	.byte	0x1
	.byte	0xfd
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7ef
	.uleb128 0x17
	.4byte	.LASF197
	.4byte	0x7ff
	.byte	0
	.uleb128 0x12
	.4byte	0xfd
	.4byte	0x7ff
	.uleb128 0x13
	.4byte	0xe8
	.byte	0xf
	.byte	0
	.uleb128 0x7
	.4byte	0x7ef
	.uleb128 0x18
	.4byte	.LASF212
	.byte	0x1
	.2byte	0x258
	.4byte	0xc0
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x86b
	.uleb128 0x19
	.4byte	.LASF190
	.byte	0x1
	.2byte	0x262
	.4byte	0x2c
	.uleb128 0x19
	.4byte	.LASF191
	.byte	0x1
	.2byte	0x262
	.4byte	0x2c
	.uleb128 0x19
	.4byte	.LASF192
	.byte	0x1
	.2byte	0x262
	.4byte	0x2c
	.uleb128 0x19
	.4byte	.LASF193
	.byte	0x1
	.2byte	0x262
	.4byte	0x2c
	.uleb128 0x1a
	.4byte	.LASF196
	.byte	0x1
	.2byte	0x283
	.4byte	0x86b
	.uleb128 0x1b
	.4byte	.LASF200
	.byte	0x1
	.2byte	0x28a
	.4byte	0xc0
	.4byte	.LLST0
	.byte	0
	.uleb128 0x12
	.4byte	0x104
	.4byte	0x87b
	.uleb128 0x13
	.4byte	0xe8
	.byte	0x2
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF225
	.byte	0x1
	.byte	0x78
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8b4
	.uleb128 0x1d
	.4byte	.LVL5
	.4byte	0x18cd
	.uleb128 0x1d
	.4byte	.LVL6
	.4byte	0x18d9
	.uleb128 0x1e
	.4byte	.LVL7
	.4byte	0x18e5
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xa
	.2byte	0x7d0
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LASF300
	.byte	0x2
	.2byte	0x10d
	.byte	0x3
	.4byte	0x8db
	.uleb128 0x21
	.4byte	.LASF195
	.byte	0x2
	.2byte	0x10d
	.4byte	0xaa
	.uleb128 0x22
	.4byte	.LASF197
	.4byte	0x8eb
	.4byte	.LASF300
	.byte	0
	.uleb128 0x12
	.4byte	0xfd
	.4byte	0x8eb
	.uleb128 0x13
	.4byte	0xe8
	.byte	0x11
	.byte	0
	.uleb128 0x7
	.4byte	0x8db
	.uleb128 0x16
	.4byte	.LASF199
	.byte	0x1
	.byte	0x97
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9e5
	.uleb128 0x23
	.4byte	.LASF197
	.4byte	0x9f5
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5736
	.uleb128 0x24
	.4byte	.LBB25
	.4byte	.LBE25-.LBB25
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.byte	0x99
	.4byte	0x2c
	.4byte	.LLST1
	.uleb128 0x26
	.4byte	0x8b4
	.4byte	.LBB27
	.4byte	.LBE27-.LBB27
	.byte	0x1
	.byte	0x9b
	.4byte	0x9b8
	.uleb128 0x27
	.4byte	0x8c1
	.4byte	.LLST2
	.uleb128 0x24
	.4byte	.LBB28
	.4byte	.LBE28-.LBB28
	.uleb128 0x28
	.4byte	0x8cd
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$4801
	.uleb128 0x29
	.4byte	.LVL14
	.4byte	0x18f1
	.4byte	0x98a
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC32
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x10e
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$4801
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC29
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL16
	.4byte	0x18f1
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC32
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x10e
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$4801
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC34
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL11
	.4byte	0x18f1
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC26
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x9a
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5736
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC23
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	0xfd
	.4byte	0x9f5
	.uleb128 0x13
	.4byte	0xe8
	.byte	0xd
	.byte	0
	.uleb128 0x7
	.4byte	0x9e5
	.uleb128 0x2a
	.4byte	.LASF201
	.byte	0x1
	.2byte	0x1d4
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb4c
	.uleb128 0x1b
	.4byte	.LASF202
	.byte	0x1
	.2byte	0x1d6
	.4byte	0x2c
	.4byte	.LLST3
	.uleb128 0x23
	.4byte	.LASF197
	.4byte	0xb5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5848
	.uleb128 0x24
	.4byte	.LBB35
	.4byte	.LBE35-.LBB35
	.uleb128 0x1b
	.4byte	.LASF194
	.byte	0x1
	.2byte	0x1dd
	.4byte	0x33
	.4byte	.LLST4
	.uleb128 0x24
	.4byte	.LBB36
	.4byte	.LBE36-.LBB36
	.uleb128 0x1a
	.4byte	.LASF203
	.byte	0x1
	.2byte	0x1de
	.4byte	0xb61
	.uleb128 0x29
	.4byte	.LVL22
	.4byte	0x18f1
	.4byte	0xa8d
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC26
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1e0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5848
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC44
	.byte	0
	.uleb128 0x29
	.4byte	.LVL23
	.4byte	0x18f1
	.4byte	0xabd
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC26
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1e1
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5848
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC48
	.byte	0
	.uleb128 0x29
	.4byte	.LVL24
	.4byte	0x18f1
	.4byte	0xaed
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC26
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1e1
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5848
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC50
	.byte	0
	.uleb128 0x29
	.4byte	.LVL25
	.4byte	0x18f1
	.4byte	0xb1d
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC26
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1e1
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5848
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC52
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL26
	.4byte	0x18f1
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC26
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1e2
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5848
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC44
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	0xfd
	.4byte	0xb5c
	.uleb128 0x13
	.4byte	0xe8
	.byte	0x13
	.byte	0
	.uleb128 0x7
	.4byte	0xb4c
	.uleb128 0x5
	.byte	0x4
	.4byte	0xb67
	.uleb128 0x7
	.4byte	0x6d9
	.uleb128 0x2a
	.4byte	.LASF204
	.byte	0x1
	.2byte	0x1ff
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd2e
	.uleb128 0x1b
	.4byte	.LASF205
	.byte	0x1
	.2byte	0x202
	.4byte	0xc0
	.4byte	.LLST5
	.uleb128 0x23
	.4byte	.LASF197
	.4byte	0xd2e
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5882
	.uleb128 0x24
	.4byte	.LBB42
	.4byte	.LBE42-.LBB42
	.uleb128 0x1b
	.4byte	.LASF206
	.byte	0x1
	.2byte	0x203
	.4byte	0x2c
	.4byte	.LLST6
	.uleb128 0x24
	.4byte	.LBB43
	.4byte	.LBE43-.LBB43
	.uleb128 0x1b
	.4byte	.LASF207
	.byte	0x1
	.2byte	0x204
	.4byte	0x2c
	.4byte	.LLST7
	.uleb128 0x1a
	.4byte	.LASF203
	.byte	0x1
	.2byte	0x208
	.4byte	0xb61
	.uleb128 0x29
	.4byte	.LVL35
	.4byte	0x18f1
	.4byte	0xc0f
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC26
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x20a
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5882
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC44
	.byte	0
	.uleb128 0x29
	.4byte	.LVL37
	.4byte	0x18f1
	.4byte	0xc3f
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC26
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x20b
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5882
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC48
	.byte	0
	.uleb128 0x29
	.4byte	.LVL39
	.4byte	0x18f1
	.4byte	0xc6f
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC26
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x20b
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5882
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC50
	.byte	0
	.uleb128 0x29
	.4byte	.LVL41
	.4byte	0x18f1
	.4byte	0xc9f
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC26
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x20b
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5882
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC52
	.byte	0
	.uleb128 0x29
	.4byte	.LVL43
	.4byte	0x18f1
	.4byte	0xccf
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC26
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x20d
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5882
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC44
	.byte	0
	.uleb128 0x29
	.4byte	.LVL45
	.4byte	0x18f1
	.4byte	0xcff
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC26
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x213
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5882
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC65
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL47
	.4byte	0x18f1
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC26
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x214
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5882
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC65
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0xb4c
	.uleb128 0x16
	.4byte	.LASF208
	.byte	0x1
	.byte	0x9f
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdf8
	.uleb128 0x23
	.4byte	.LASF197
	.4byte	0xe08
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5744
	.uleb128 0x24
	.4byte	.LBB57
	.4byte	.LBE57-.LBB57
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.byte	0xa1
	.4byte	0x2c
	.4byte	.LLST8
	.uleb128 0x29
	.4byte	.LVL55
	.4byte	0x18f1
	.4byte	0xd9c
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC26
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xa2
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5744
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC77
	.byte	0
	.uleb128 0x29
	.4byte	.LVL57
	.4byte	0x18f1
	.4byte	0xdcb
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC26
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xa3
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5744
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC23
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL59
	.4byte	0x18f1
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC26
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xa4
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5744
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC77
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	0xfd
	.4byte	0xe08
	.uleb128 0x13
	.4byte	0xe8
	.byte	0xc
	.byte	0
	.uleb128 0x7
	.4byte	0xdf8
	.uleb128 0x2a
	.4byte	.LASF209
	.byte	0x1
	.2byte	0x1a1
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe6f
	.uleb128 0x1b
	.4byte	.LASF210
	.byte	0x1
	.2byte	0x1a3
	.4byte	0xc0
	.4byte	.LLST9
	.uleb128 0x1b
	.4byte	.LASF181
	.byte	0x1
	.2byte	0x1a4
	.4byte	0xcb
	.4byte	.LLST10
	.uleb128 0x1b
	.4byte	.LASF211
	.byte	0x1
	.2byte	0x1a8
	.4byte	0xcb
	.4byte	.LLST11
	.uleb128 0x1d
	.4byte	.LVL61
	.4byte	0x18fc
	.uleb128 0x1d
	.4byte	.LVL66
	.4byte	0x1907
	.uleb128 0x1d
	.4byte	.LVL68
	.4byte	0x1913
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF213
	.byte	0x1
	.byte	0xf1
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xea6
	.uleb128 0x2c
	.4byte	.LASF215
	.byte	0x1
	.byte	0xf1
	.4byte	0x2c
	.4byte	.LLST12
	.uleb128 0x17
	.4byte	.LASF197
	.4byte	0xeb6
	.uleb128 0x1d
	.4byte	.LVL70
	.4byte	0x191f
	.byte	0
	.uleb128 0x12
	.4byte	0xfd
	.4byte	0xeb6
	.uleb128 0x13
	.4byte	0xe8
	.byte	0xe
	.byte	0
	.uleb128 0x7
	.4byte	0xea6
	.uleb128 0x16
	.4byte	.LASF214
	.byte	0x1
	.byte	0x90
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf72
	.uleb128 0x24
	.4byte	.LBB78
	.4byte	.LBE78-.LBB78
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.byte	0x92
	.4byte	0x2c
	.4byte	.LLST13
	.uleb128 0x2d
	.4byte	0x8b4
	.4byte	.LBB79
	.4byte	.LBE79-.LBB79
	.byte	0x1
	.byte	0x93
	.uleb128 0x27
	.4byte	0x8c1
	.4byte	.LLST14
	.uleb128 0x24
	.4byte	.LBB80
	.4byte	.LBE80-.LBB80
	.uleb128 0x28
	.4byte	0x8cd
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$4801
	.uleb128 0x29
	.4byte	.LVL76
	.4byte	0x18f1
	.4byte	0xf42
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC32
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x10e
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$4801
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC29
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL78
	.4byte	0x18f1
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC32
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x10e
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$4801
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC34
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF219
	.byte	0x1
	.byte	0xa8
	.4byte	0xc0
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x104f
	.uleb128 0x2c
	.4byte	.LASF200
	.byte	0x1
	.byte	0xa8
	.4byte	0xc0
	.4byte	.LLST15
	.uleb128 0x2f
	.4byte	.LASF216
	.byte	0x1
	.byte	0xb4
	.4byte	0x48e
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x17
	.4byte	.LASF197
	.4byte	0x104f
	.uleb128 0x30
	.4byte	.LASF217
	.byte	0x1
	.byte	0xc4
	.4byte	0x5b3
	.4byte	.LLST16
	.uleb128 0x2f
	.4byte	.LASF218
	.byte	0x1
	.byte	0xcc
	.4byte	0xc0
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1d
	.4byte	.LVL81
	.4byte	0xebb
	.uleb128 0x1d
	.4byte	.LVL82
	.4byte	0x8f0
	.uleb128 0x1d
	.4byte	.LVL83
	.4byte	0x192b
	.uleb128 0x29
	.4byte	.LVL85
	.4byte	0x1937
	.4byte	0xffa
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL86
	.4byte	0x9fa
	.uleb128 0x1d
	.4byte	.LVL87
	.4byte	0xb6c
	.uleb128 0x1d
	.4byte	.LVL101
	.4byte	0x1943
	.uleb128 0x1d
	.4byte	.LVL102
	.4byte	0xe0d
	.uleb128 0x29
	.4byte	.LVL103
	.4byte	0x194f
	.4byte	0x1031
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x29
	.4byte	.LVL105
	.4byte	0x1937
	.4byte	0x1045
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL106
	.4byte	0xd33
	.byte	0
	.uleb128 0x7
	.4byte	0x7ef
	.uleb128 0x31
	.4byte	.LASF220
	.byte	0x1
	.2byte	0x10e
	.4byte	0x10f
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10e1
	.uleb128 0x32
	.4byte	.LASF200
	.byte	0x1
	.2byte	0x10e
	.4byte	0xc0
	.4byte	.LLST17
	.uleb128 0x33
	.4byte	.LASF221
	.byte	0x1
	.2byte	0x10f
	.4byte	0xc0
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x33
	.4byte	.LASF222
	.byte	0x1
	.2byte	0x110
	.4byte	0x629
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x34
	.string	"err"
	.byte	0x1
	.2byte	0x113
	.4byte	0x10f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x29
	.4byte	.LVL108
	.4byte	0xf72
	.4byte	0x10bc
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL110
	.4byte	0x195b
	.4byte	0x10d0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL111
	.4byte	0x18e5
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x35
	.4byte	.LASF238
	.byte	0x1
	.byte	0x60
	.4byte	0x330
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x114b
	.uleb128 0x2f
	.4byte	.LASF223
	.byte	0x1
	.byte	0x63
	.4byte	0xc0
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x17
	.4byte	.LASF197
	.4byte	0x115b
	.uleb128 0x2f
	.4byte	.LASF224
	.byte	0x1
	.byte	0x65
	.4byte	0xc0
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x29
	.4byte	.LVL113
	.4byte	0x1967
	.4byte	0x1131
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL115
	.4byte	0x1972
	.uleb128 0x1e
	.4byte	.LVL117
	.4byte	0x197d
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	0xfd
	.4byte	0x115b
	.uleb128 0x13
	.4byte	0xe8
	.byte	0x1c
	.byte	0
	.uleb128 0x7
	.4byte	0x114b
	.uleb128 0x1c
	.4byte	.LASF226
	.byte	0x1
	.byte	0x70
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x11b9
	.uleb128 0x36
	.4byte	.LASF227
	.byte	0x1
	.byte	0x70
	.4byte	0x330
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x17
	.4byte	.LASF197
	.4byte	0x11b9
	.uleb128 0x29
	.4byte	.LVL119
	.4byte	0x1967
	.4byte	0x119f
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL120
	.4byte	0x1972
	.uleb128 0x1e
	.4byte	.LVL121
	.4byte	0x197d
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0x114b
	.uleb128 0x37
	.4byte	.LASF228
	.byte	0x1
	.byte	0xd7
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1227
	.uleb128 0x30
	.4byte	.LASF200
	.byte	0x1
	.byte	0xe2
	.4byte	0xc0
	.4byte	.LLST18
	.uleb128 0x1d
	.4byte	.LVL122
	.4byte	0x1988
	.uleb128 0x1d
	.4byte	.LVL123
	.4byte	0x1994
	.uleb128 0x1d
	.4byte	.LVL124
	.4byte	0x10e1
	.uleb128 0x29
	.4byte	.LVL125
	.4byte	0x1160
	.4byte	0x1214
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	esp_wake_deep_sleep
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL126
	.4byte	0x804
	.uleb128 0x1d
	.4byte	.LVL128
	.4byte	0xf72
	.byte	0
	.uleb128 0x38
	.4byte	.LASF229
	.byte	0x1
	.2byte	0x123
	.4byte	0x10f
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x13e7
	.uleb128 0x39
	.4byte	.LASF230
	.byte	0x1
	.2byte	0x125
	.4byte	0x705
	.uleb128 0x5
	.byte	0x3
	.4byte	light_sleep_lock$5807
	.uleb128 0x1b
	.4byte	.LASF231
	.byte	0x1
	.2byte	0x12d
	.4byte	0xd6
	.4byte	.LLST19
	.uleb128 0x1b
	.4byte	.LASF200
	.byte	0x1
	.2byte	0x131
	.4byte	0xc0
	.4byte	.LLST20
	.uleb128 0x3a
	.4byte	.LASF221
	.byte	0x1
	.2byte	0x139
	.4byte	0x13e7
	.2byte	0xa8c
	.uleb128 0x3a
	.4byte	.LASF232
	.byte	0x1
	.2byte	0x13d
	.4byte	0x13e7
	.2byte	0xc7b
	.uleb128 0x1b
	.4byte	.LASF222
	.byte	0x1
	.2byte	0x146
	.4byte	0x629
	.4byte	.LLST21
	.uleb128 0x3b
	.string	"err"
	.byte	0x1
	.2byte	0x14c
	.4byte	0x10f
	.4byte	.LLST22
	.uleb128 0x1b
	.4byte	.LASF233
	.byte	0x1
	.2byte	0x150
	.4byte	0xd6
	.4byte	.LLST23
	.uleb128 0x1b
	.4byte	.LASF234
	.byte	0x1
	.2byte	0x151
	.4byte	0xd6
	.4byte	.LLST24
	.uleb128 0x1b
	.4byte	.LASF235
	.byte	0x1
	.2byte	0x153
	.4byte	0xd6
	.4byte	.LLST25
	.uleb128 0x1b
	.4byte	.LASF236
	.byte	0x1
	.2byte	0x155
	.4byte	0xd6
	.4byte	.LLST26
	.uleb128 0x1b
	.4byte	.LASF237
	.byte	0x1
	.2byte	0x157
	.4byte	0xcb
	.4byte	.LLST27
	.uleb128 0x29
	.4byte	.LVL129
	.4byte	0x199f
	.4byte	0x1316
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	light_sleep_lock$5807
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL130
	.4byte	0x19aa
	.uleb128 0x1d
	.4byte	.LVL131
	.4byte	0x1988
	.uleb128 0x1d
	.4byte	.LVL132
	.4byte	0x19b5
	.uleb128 0x1d
	.4byte	.LVL134
	.4byte	0x19c0
	.uleb128 0x1d
	.4byte	.LVL135
	.4byte	0x804
	.uleb128 0x1d
	.4byte	.LVL139
	.4byte	0x19cb
	.uleb128 0x29
	.4byte	.LVL141
	.4byte	0xe6f
	.4byte	0x1361
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xa
	.2byte	0x3e8
	.byte	0
	.uleb128 0x29
	.4byte	.LVL142
	.4byte	0x1054
	.4byte	0x1382
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0xa8c
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL144
	.4byte	0x1988
	.uleb128 0x1d
	.4byte	.LVL146
	.4byte	0x19b5
	.uleb128 0x1d
	.4byte	.LVL151
	.4byte	0x18fc
	.uleb128 0x1d
	.4byte	.LVL152
	.4byte	0x19d7
	.uleb128 0x1d
	.4byte	.LVL161
	.4byte	0x19e3
	.uleb128 0x1d
	.4byte	.LVL162
	.4byte	0x19ee
	.uleb128 0x1d
	.4byte	.LVL163
	.4byte	0x19f9
	.uleb128 0x1d
	.4byte	.LVL164
	.4byte	0x1a04
	.uleb128 0x1d
	.4byte	.LVL165
	.4byte	0x7d0
	.uleb128 0x1e
	.4byte	.LVL166
	.4byte	0x1a0f
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	light_sleep_lock$5807
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0xc0
	.uleb128 0x3c
	.4byte	.LASF239
	.byte	0x1
	.2byte	0x16a
	.4byte	0x10f
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1450
	.uleb128 0x32
	.4byte	.LASF240
	.byte	0x1
	.2byte	0x16a
	.4byte	0x31a
	.4byte	.LLST28
	.uleb128 0x1d
	.4byte	.LVL177
	.4byte	0x1a1a
	.uleb128 0x1e
	.4byte	.LVL178
	.4byte	0x1a25
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC132
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC134
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC132
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3d
	.4byte	.LASF301
	.byte	0x1
	.2byte	0x18c
	.4byte	0x10f
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3c
	.4byte	.LASF241
	.byte	0x1
	.2byte	0x19a
	.4byte	0x10f
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1491
	.uleb128 0x32
	.4byte	.LASF242
	.byte	0x1
	.2byte	0x19a
	.4byte	0xd6
	.4byte	.LLST29
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF243
	.byte	0x1
	.byte	0x8a
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x14cb
	.uleb128 0x36
	.4byte	.LASF242
	.byte	0x1
	.byte	0x8a
	.4byte	0xd6
	.uleb128 0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x1d
	.4byte	.LVL183
	.4byte	0x1466
	.uleb128 0x1d
	.4byte	.LVL184
	.4byte	0x11be
	.byte	0
	.uleb128 0x38
	.4byte	.LASF244
	.byte	0x1
	.2byte	0x1ad
	.4byte	0x10f
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1519
	.uleb128 0x1d
	.4byte	.LVL185
	.4byte	0x1a1a
	.uleb128 0x1e
	.4byte	.LVL186
	.4byte	0x1a25
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC132
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC139
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC132
	.byte	0
	.byte	0
	.uleb128 0x3c
	.4byte	.LASF245
	.byte	0x1
	.2byte	0x1c2
	.4byte	0x10f
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x15a5
	.uleb128 0x32
	.4byte	.LASF194
	.byte	0x1
	.2byte	0x1c2
	.4byte	0x200
	.4byte	.LLST30
	.uleb128 0x32
	.4byte	.LASF246
	.byte	0x1
	.2byte	0x1c2
	.4byte	0x2c
	.4byte	.LLST31
	.uleb128 0x3f
	.4byte	0x7b4
	.4byte	.LBB90
	.4byte	.LBE90-.LBB90
	.byte	0x1
	.2byte	0x1c7
	.4byte	0x1571
	.uleb128 0x27
	.4byte	0x7c4
	.4byte	.LLST32
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL189
	.4byte	0x1a1a
	.uleb128 0x1e
	.4byte	.LVL190
	.4byte	0x1a25
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC132
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC144
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC132
	.byte	0
	.byte	0
	.uleb128 0x3c
	.4byte	.LASF247
	.byte	0x1
	.2byte	0x1e8
	.4byte	0x10f
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1661
	.uleb128 0x32
	.4byte	.LASF248
	.byte	0x1
	.2byte	0x1e8
	.4byte	0xd6
	.4byte	.LLST33
	.uleb128 0x32
	.4byte	.LASF249
	.byte	0x1
	.2byte	0x1e8
	.4byte	0x27e
	.4byte	.LLST34
	.uleb128 0x1b
	.4byte	.LASF205
	.byte	0x1
	.2byte	0x1ee
	.4byte	0xc0
	.4byte	.LLST35
	.uleb128 0x24
	.4byte	.LBB92
	.4byte	.LBE92-.LBB92
	.uleb128 0x1b
	.4byte	.LASF206
	.byte	0x1
	.2byte	0x1ef
	.4byte	0x2c
	.4byte	.LLST36
	.uleb128 0x3f
	.4byte	0x7b4
	.4byte	.LBB93
	.4byte	.LBE93-.LBB93
	.byte	0x1
	.2byte	0x1f3
	.4byte	0x1626
	.uleb128 0x27
	.4byte	0x7c4
	.4byte	.LLST37
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL202
	.4byte	0x1a1a
	.uleb128 0x1e
	.4byte	.LVL203
	.4byte	0x1a25
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC132
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC149
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC132
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	.LASF250
	.byte	0x1
	.2byte	0x238
	.4byte	0x325
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x16a4
	.uleb128 0x1b
	.4byte	.LASF251
	.byte	0x1
	.2byte	0x23e
	.4byte	0xc0
	.4byte	.LLST38
	.uleb128 0x17
	.4byte	.LASF197
	.4byte	0x16b4
	.uleb128 0x1e
	.4byte	.LVL216
	.4byte	0x1a30
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	0xfd
	.4byte	0x16b4
	.uleb128 0x13
	.4byte	0xe8
	.byte	0x1a
	.byte	0
	.uleb128 0x7
	.4byte	0x16a4
	.uleb128 0x38
	.4byte	.LASF252
	.byte	0x1
	.2byte	0x1b7
	.4byte	0x25a
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x174b
	.uleb128 0x39
	.4byte	.LASF253
	.byte	0x1
	.2byte	0x1bc
	.4byte	0x25a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3b
	.string	"ret"
	.byte	0x1
	.2byte	0x1bd
	.4byte	0x10f
	.4byte	.LLST39
	.uleb128 0x23
	.4byte	.LASF197
	.4byte	0x175b
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5840
	.uleb128 0x1d
	.4byte	.LVL229
	.4byte	0x1661
	.uleb128 0x29
	.4byte	.LVL230
	.4byte	0x1a3b
	.4byte	0x171e
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL232
	.4byte	0x18f1
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC26
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1be
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5840
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC156
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	0xfd
	.4byte	0x175b
	.uleb128 0x13
	.4byte	0xe8
	.byte	0x24
	.byte	0
	.uleb128 0x7
	.4byte	0x174b
	.uleb128 0x38
	.4byte	.LASF254
	.byte	0x1
	.2byte	0x223
	.4byte	0xd6
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x17fb
	.uleb128 0x1b
	.4byte	.LASF255
	.byte	0x1
	.2byte	0x228
	.4byte	0xc0
	.4byte	.LLST40
	.uleb128 0x17
	.4byte	.LASF197
	.4byte	0x180b
	.uleb128 0x1b
	.4byte	.LASF256
	.byte	0x1
	.2byte	0x22a
	.4byte	0xd6
	.4byte	.LLST41
	.uleb128 0x40
	.4byte	.Ldebug_ranges0+0
	.4byte	0x17f1
	.uleb128 0x1b
	.4byte	.LASF206
	.byte	0x1
	.2byte	0x22b
	.4byte	0x2c
	.4byte	.LLST42
	.uleb128 0x24
	.4byte	.LBB99
	.4byte	.LBE99-.LBB99
	.uleb128 0x1b
	.4byte	.LASF207
	.byte	0x1
	.2byte	0x22f
	.4byte	0x2c
	.4byte	.LLST43
	.uleb128 0x41
	.4byte	0x7b4
	.4byte	.LBB100
	.4byte	.LBE100-.LBB100
	.byte	0x1
	.2byte	0x22c
	.uleb128 0x27
	.4byte	0x7c4
	.4byte	.LLST44
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL234
	.4byte	0x1661
	.byte	0
	.uleb128 0x12
	.4byte	0xfd
	.4byte	0x180b
	.uleb128 0x13
	.4byte	0xe8
	.byte	0x20
	.byte	0
	.uleb128 0x7
	.4byte	0x17fb
	.uleb128 0x3c
	.4byte	.LASF257
	.byte	0x1
	.2byte	0x24e
	.4byte	0x10f
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1849
	.uleb128 0x32
	.4byte	.LASF258
	.byte	0x1
	.2byte	0x24e
	.4byte	0x2b4
	.4byte	.LLST45
	.uleb128 0x33
	.4byte	.LASF259
	.byte	0x1
	.2byte	0x24f
	.4byte	0x2de
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF260
	.byte	0x1
	.byte	0x4d
	.4byte	0x7a9
	.uleb128 0x5
	.byte	0x3
	.4byte	s_config
	.uleb128 0x2f
	.4byte	.LASF261
	.byte	0x1
	.byte	0x54
	.4byte	0x4c
	.uleb128 0x5
	.byte	0x3
	.4byte	lock_rtc_memory_crc
	.uleb128 0x42
	.string	"TAG"
	.byte	0x1
	.byte	0x56
	.4byte	0x710
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC132
	.byte	0x9f
	.uleb128 0x12
	.4byte	0x6d9
	.4byte	0x188d
	.uleb128 0x13
	.4byte	0xe8
	.byte	0x27
	.byte	0
	.uleb128 0x43
	.4byte	.LASF262
	.byte	0xf
	.byte	0x38
	.4byte	0x1898
	.uleb128 0x7
	.4byte	0x187d
	.uleb128 0x19
	.4byte	.LASF190
	.byte	0x1
	.2byte	0x262
	.4byte	0x2c
	.uleb128 0x19
	.4byte	.LASF191
	.byte	0x1
	.2byte	0x262
	.4byte	0x2c
	.uleb128 0x19
	.4byte	.LASF192
	.byte	0x1
	.2byte	0x262
	.4byte	0x2c
	.uleb128 0x19
	.4byte	.LASF193
	.byte	0x1
	.2byte	0x262
	.4byte	0x2c
	.uleb128 0x44
	.4byte	.LASF263
	.4byte	.LASF263
	.byte	0x11
	.2byte	0x1b5
	.uleb128 0x44
	.4byte	.LASF264
	.4byte	.LASF264
	.byte	0x11
	.2byte	0x195
	.uleb128 0x44
	.4byte	.LASF265
	.4byte	.LASF265
	.byte	0x11
	.2byte	0x17f
	.uleb128 0x45
	.4byte	.LASF266
	.4byte	.LASF266
	.byte	0x12
	.byte	0x29
	.uleb128 0x45
	.4byte	.LASF267
	.4byte	.LASF267
	.byte	0x13
	.byte	0x1f
	.uleb128 0x44
	.4byte	.LASF268
	.4byte	.LASF268
	.byte	0xe
	.2byte	0x189
	.uleb128 0x44
	.4byte	.LASF269
	.4byte	.LASF269
	.byte	0xe
	.2byte	0x1fa
	.uleb128 0x44
	.4byte	.LASF270
	.4byte	.LASF270
	.byte	0xe
	.2byte	0x10b
	.uleb128 0x44
	.4byte	.LASF271
	.4byte	.LASF271
	.byte	0xe
	.2byte	0x143
	.uleb128 0x44
	.4byte	.LASF272
	.4byte	.LASF272
	.byte	0xe
	.2byte	0x123
	.uleb128 0x44
	.4byte	.LASF273
	.4byte	.LASF273
	.byte	0xe
	.2byte	0x1f2
	.uleb128 0x44
	.4byte	.LASF274
	.4byte	.LASF274
	.byte	0xe
	.2byte	0x222
	.uleb128 0x44
	.4byte	.LASF275
	.4byte	.LASF275
	.byte	0xe
	.2byte	0x264
	.uleb128 0x45
	.4byte	.LASF276
	.4byte	.LASF276
	.byte	0x5
	.byte	0x20
	.uleb128 0x45
	.4byte	.LASF277
	.4byte	.LASF277
	.byte	0xd
	.byte	0xb7
	.uleb128 0x45
	.4byte	.LASF278
	.4byte	.LASF278
	.byte	0x5
	.byte	0x24
	.uleb128 0x44
	.4byte	.LASF279
	.4byte	.LASF279
	.byte	0xe
	.2byte	0x19f
	.uleb128 0x45
	.4byte	.LASF280
	.4byte	.LASF280
	.byte	0x14
	.byte	0x2c
	.uleb128 0x45
	.4byte	.LASF281
	.4byte	.LASF281
	.byte	0x10
	.byte	0xda
	.uleb128 0x45
	.4byte	.LASF282
	.4byte	.LASF282
	.byte	0x15
	.byte	0x5f
	.uleb128 0x45
	.4byte	.LASF283
	.4byte	.LASF283
	.byte	0x16
	.byte	0xbe
	.uleb128 0x45
	.4byte	.LASF284
	.4byte	.LASF284
	.byte	0x17
	.byte	0x18
	.uleb128 0x44
	.4byte	.LASF285
	.4byte	.LASF285
	.byte	0xe
	.2byte	0x25b
	.uleb128 0x44
	.4byte	.LASF286
	.4byte	.LASF286
	.byte	0xe
	.2byte	0x192
	.uleb128 0x45
	.4byte	.LASF287
	.4byte	.LASF287
	.byte	0x15
	.byte	0x46
	.uleb128 0x45
	.4byte	.LASF288
	.4byte	.LASF288
	.byte	0x14
	.byte	0x27
	.uleb128 0x45
	.4byte	.LASF289
	.4byte	.LASF289
	.byte	0x15
	.byte	0x65
	.uleb128 0x45
	.4byte	.LASF290
	.4byte	.LASF290
	.byte	0x17
	.byte	0x19
	.uleb128 0x45
	.4byte	.LASF291
	.4byte	.LASF291
	.byte	0x10
	.byte	0xd9
	.uleb128 0x45
	.4byte	.LASF292
	.4byte	.LASF292
	.byte	0xc
	.byte	0x57
	.uleb128 0x45
	.4byte	.LASF293
	.4byte	.LASF293
	.byte	0xc
	.byte	0x6b
	.uleb128 0x45
	.4byte	.LASF294
	.4byte	.LASF294
	.byte	0xd
	.byte	0x9a
	.uleb128 0x44
	.4byte	.LASF295
	.4byte	.LASF295
	.byte	0xa
	.2byte	0x231
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
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
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
	.uleb128 0x5
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
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
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
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x39
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x3a
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x3b
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
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
	.uleb128 0x3d
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x3e
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
	.uleb128 0x3f
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
	.uleb128 0x40
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x41
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
	.byte	0
	.byte	0
	.uleb128 0x42
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
	.uleb128 0x43
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
	.uleb128 0x44
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
	.uleb128 0x45
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
	.4byte	.LVL1
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL1
	.4byte	.LFE56
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL11
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL16
	.4byte	.LFE35
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL13
	.4byte	.LVL14-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL15
	.4byte	.LVL16-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL18
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL21
	.4byte	.LVL22-1
	.2byte	0x9
	.byte	0x3
	.4byte	s_config+28
	.byte	0x6
	.byte	0x4f
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LVL23-1
	.2byte	0x9
	.byte	0x3
	.4byte	s_config+28
	.byte	0x6
	.byte	0x4f
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL24-1
	.2byte	0x9
	.byte	0x3
	.4byte	s_config+28
	.byte	0x6
	.byte	0x4f
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LVL25-1
	.2byte	0x9
	.byte	0x3
	.4byte	s_config+28
	.byte	0x6
	.byte	0x4f
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LVL26-1
	.2byte	0x9
	.byte	0x3
	.4byte	s_config+28
	.byte	0x6
	.byte	0x4f
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LVL28
	.2byte	0x9
	.byte	0x3
	.4byte	s_config+28
	.byte	0x6
	.byte	0x4f
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LFE50
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL22-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL22
	.4byte	.LVL23-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL23
	.4byte	.LVL24-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL24
	.4byte	.LVL25-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL25
	.4byte	.LVL26-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL28
	.4byte	.LFE50
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL30
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL47
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LVL35-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL35
	.4byte	.LVL37-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL37
	.4byte	.LVL39-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL39
	.4byte	.LVL41-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL41
	.4byte	.LVL43-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL43
	.4byte	.LVL45-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL45
	.4byte	.LVL47-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL47
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL32
	.4byte	.LVL35-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL35
	.4byte	.LVL37-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL37
	.4byte	.LVL39-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL39
	.4byte	.LVL41-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL41
	.4byte	.LVL43-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL43
	.4byte	.LVL45-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL45
	.4byte	.LVL47-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL47
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL59
	.4byte	.LFE36
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL61
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL65
	.4byte	.LVL66-1
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x6
	.byte	0x59
	.byte	0x93
	.uleb128 0x4
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL64
	.4byte	.LVL66-1
	.2byte	0x6
	.byte	0x59
	.byte	0x93
	.uleb128 0x4
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL66
	.4byte	.LVL67
	.2byte	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL69
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL71
	.4byte	.LFE39
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL72
	.4byte	.LVL73
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL73
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL76
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL78
	.4byte	.LFE34
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL74
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL75
	.4byte	.LVL76-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL76
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL77
	.4byte	.LVL78-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL78
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL80
	.4byte	.LVL99
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL99
	.4byte	.LFE37
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL89
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL91
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL93
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL95
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL97
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL100
	.4byte	.LVL101-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL107
	.4byte	.LVL112
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL112
	.4byte	.LFE41
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL126
	.4byte	.LVL127
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL133
	.4byte	.LVL134-1
	.2byte	0x6
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL134-1
	.4byte	.LFE42
	.2byte	0x7
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -40
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL136
	.4byte	.LVL148
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL141
	.4byte	.LVL147
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL143
	.4byte	.LVL144-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL144-1
	.4byte	.LFE42
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL145
	.4byte	.LVL150
	.2byte	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL149
	.4byte	.LVL153
	.2byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL153
	.4byte	.LVL154
	.2byte	0x7
	.byte	0x91
	.sleb128 -44
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL152
	.4byte	.LVL158
	.2byte	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL155
	.4byte	.LVL156
	.2byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL159
	.4byte	.LVL160
	.2byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL160
	.4byte	.LVL167
	.2byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL167
	.4byte	.LFE42
	.2byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL168
	.4byte	.LVL169
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL169
	.4byte	.LVL170
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL170
	.4byte	.LVL171
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL171
	.4byte	.LVL172
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL172
	.4byte	.LVL173
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL173
	.4byte	.LVL174
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL174
	.4byte	.LVL175
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL175
	.4byte	.LVL176
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL176
	.4byte	.LVL179
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL179
	.4byte	.LFE43
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL180
	.4byte	.LVL181
	.2byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL181
	.4byte	.LFE45
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL187
	.4byte	.LVL191
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL191
	.4byte	.LVL192
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL192
	.4byte	.LVL193
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL193
	.4byte	.LVL195
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL195
	.4byte	.LVL196
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL196
	.4byte	.LVL197
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL197
	.4byte	.LVL198
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL198
	.4byte	.LFE49
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL187
	.4byte	.LVL194
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL194
	.4byte	.LVL195
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL195
	.4byte	.LFE49
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL188
	.4byte	.LVL191
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL191
	.4byte	.LVL192
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL192
	.4byte	.LVL193
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL193
	.4byte	.LVL195
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL197
	.4byte	.LVL198
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL198
	.4byte	.LFE49
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL199
	.4byte	.LVL200
	.2byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL200
	.4byte	.LVL204
	.2byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL205
	.4byte	.LVL208
	.2byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL209
	.4byte	.LVL211
	.2byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL214
	.4byte	.LVL215
	.2byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL215
	.4byte	.LFE51
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL199
	.4byte	.LVL213
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL213
	.4byte	.LVL214
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL214
	.4byte	.LFE51
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL200
	.4byte	.LVL202-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL205
	.4byte	.LVL212
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL200
	.4byte	.LVL210
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL201
	.4byte	.LVL206
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL217
	.4byte	.LVL218
	.2byte	0x7
	.byte	0x72
	.sleb128 0
	.byte	0xa
	.2byte	0x7ff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL219
	.4byte	.LVL220
	.2byte	0x7
	.byte	0x72
	.sleb128 0
	.byte	0xa
	.2byte	0x7ff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL221
	.4byte	.LVL222
	.2byte	0x7
	.byte	0x72
	.sleb128 0
	.byte	0xa
	.2byte	0x7ff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL223
	.4byte	.LVL224
	.2byte	0x7
	.byte	0x72
	.sleb128 0
	.byte	0xa
	.2byte	0x7ff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL225
	.4byte	.LVL226
	.2byte	0x7
	.byte	0x72
	.sleb128 0
	.byte	0xa
	.2byte	0x7ff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL227
	.4byte	.LVL228
	.2byte	0x7
	.byte	0x72
	.sleb128 0
	.byte	0xa
	.2byte	0x7ff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL230
	.4byte	.LVL231
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL232
	.4byte	.LVL233
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL235
	.4byte	.LVL243
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL235
	.4byte	.LVL236
	.2byte	0xa
	.byte	0x9e
	.uleb128 0x8
	.8byte	0
	.4byte	.LVL236
	.4byte	.LVL240
	.2byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL241
	.4byte	.LVL243
	.2byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL235
	.4byte	.LVL236
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL236
	.4byte	.LVL243
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL237
	.4byte	.LVL238
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL238
	.4byte	.LVL239
	.2byte	0x13
	.byte	0x78
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x32
	.byte	0x24
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x32
	.byte	0x24
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x30
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL236
	.4byte	.LVL242
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL244
	.4byte	.LVL245
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL245
	.4byte	.LVL246
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL246
	.4byte	.LVL247
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL247
	.4byte	.LFE55
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0xec
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB98
	.4byte	.LBE98
	.4byte	.LBB102
	.4byte	.LBE102
	.4byte	0
	.4byte	0
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	.LFB56
	.4byte	.LFE56
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	.LFB50
	.4byte	.LFE50
	.4byte	.LFB52
	.4byte	.LFE52
	.4byte	.LFB36
	.4byte	.LFE36
	.4byte	.LFB46
	.4byte	.LFE46
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	.LFB37
	.4byte	.LFE37
	.4byte	.LFB41
	.4byte	.LFE41
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	.LFB42
	.4byte	.LFE42
	.4byte	.LFB43
	.4byte	.LFE43
	.4byte	.LFB44
	.4byte	.LFE44
	.4byte	.LFB45
	.4byte	.LFE45
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	.LFB47
	.4byte	.LFE47
	.4byte	.LFB49
	.4byte	.LFE49
	.4byte	.LFB51
	.4byte	.LFE51
	.4byte	.LFB54
	.4byte	.LFE54
	.4byte	.LFB48
	.4byte	.LFE48
	.4byte	.LFB53
	.4byte	.LFE53
	.4byte	.LFB55
	.4byte	.LFE55
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF246:
	.string	"level"
.LASF285:
	.string	"rtc_vddsdio_get_config"
.LASF3:
	.string	"size_t"
.LASF184:
	.string	"ext1_rtc_gpio_mask"
.LASF262:
	.string	"rtc_gpio_desc"
.LASF20:
	.string	"sizetype"
.LASF177:
	.string	"owner"
.LASF216:
	.string	"cpu_freq"
.LASF287:
	.string	"esp_timer_impl_advance"
.LASF124:
	.string	"UART0_TRIG"
.LASF291:
	.string	"vTaskExitCritical"
.LASF15:
	.string	"int32_t"
.LASF167:
	.string	"pullup"
.LASF103:
	.string	"SW_RESET"
.LASF277:
	.string	"set_rtc_memory_crc"
.LASF299:
	.string	"rtc_gpio_is_valid_gpio"
.LASF197:
	.string	"__func__"
.LASF215:
	.string	"time_ms"
.LASF250:
	.string	"esp_sleep_get_wakeup_cause"
.LASF92:
	.string	"esp_sleep_source_t"
.LASF74:
	.string	"ESP_EXT1_WAKEUP_ANY_HIGH"
.LASF251:
	.string	"wakeup_cause"
.LASF140:
	.string	"rtc_cpu_freq_t"
.LASF135:
	.string	"RTC_CPU_FREQ_XTAL"
.LASF242:
	.string	"time_in_us"
.LASF107:
	.string	"TG0WDT_SYS_RESET"
.LASF244:
	.string	"esp_sleep_enable_touchpad_wakeup"
.LASF159:
	.string	"force"
.LASF194:
	.string	"gpio_num"
.LASF6:
	.string	"__uint8_t"
.LASF61:
	.string	"TOUCH_PAD_NUM0"
.LASF62:
	.string	"TOUCH_PAD_NUM1"
.LASF63:
	.string	"TOUCH_PAD_NUM2"
.LASF64:
	.string	"TOUCH_PAD_NUM3"
.LASF65:
	.string	"TOUCH_PAD_NUM4"
.LASF66:
	.string	"TOUCH_PAD_NUM5"
.LASF67:
	.string	"TOUCH_PAD_NUM6"
.LASF68:
	.string	"TOUCH_PAD_NUM7"
.LASF69:
	.string	"TOUCH_PAD_NUM8"
.LASF70:
	.string	"TOUCH_PAD_NUM9"
.LASF218:
	.string	"result"
.LASF81:
	.string	"esp_sleep_pd_domain_t"
.LASF19:
	.string	"long int"
.LASF128:
	.string	"BT_TRIG"
.LASF252:
	.string	"esp_sleep_get_touchpad_wakeup_status"
.LASF289:
	.string	"esp_timer_impl_unlock"
.LASF290:
	.string	"esp_dport_access_stall_other_cpu_end"
.LASF180:
	.string	"pd_options"
.LASF206:
	.string	"gpio"
.LASF265:
	.string	"ets_delay_us"
.LASF119:
	.string	"EXT_EVENT1_TRIG"
.LASF258:
	.string	"domain"
.LASF247:
	.string	"esp_sleep_enable_ext1_wakeup"
.LASF223:
	.string	"stored_crc"
.LASF5:
	.string	"signed char"
.LASF14:
	.string	"uint8_t"
.LASF234:
	.string	"frc_time_at_end"
.LASF301:
	.string	"esp_sleep_enable_ulp_wakeup"
.LASF25:
	.string	"GPIO_NUM_0"
.LASF26:
	.string	"GPIO_NUM_1"
.LASF27:
	.string	"GPIO_NUM_2"
.LASF28:
	.string	"GPIO_NUM_3"
.LASF29:
	.string	"GPIO_NUM_4"
.LASF30:
	.string	"GPIO_NUM_5"
.LASF31:
	.string	"GPIO_NUM_6"
.LASF32:
	.string	"GPIO_NUM_7"
.LASF33:
	.string	"GPIO_NUM_8"
.LASF34:
	.string	"GPIO_NUM_9"
.LASF176:
	.string	"rtc_gpio_desc_t"
.LASF227:
	.string	"new_stub"
.LASF113:
	.string	"RTCWDT_CPU_RESET"
.LASF280:
	.string	"esp_sync_counters_rtc_and_frc"
.LASF131:
	.string	"REJECT_INT"
.LASF7:
	.string	"unsigned char"
.LASF208:
	.string	"resume_uarts"
.LASF264:
	.string	"ets_update_cpu_frequency_rom"
.LASF185:
	.string	"ext0_trigger_level"
.LASF101:
	.string	"NO_MEAN"
.LASF24:
	.string	"_Bool"
.LASF85:
	.string	"esp_sleep_pd_option_t"
.LASF90:
	.string	"ESP_SLEEP_WAKEUP_TOUCHPAD"
.LASF228:
	.string	"esp_deep_sleep_start"
.LASF22:
	.string	"char"
.LASF222:
	.string	"vddsdio_config"
.LASF110:
	.string	"INTRUSION_RESET"
.LASF151:
	.string	"dig_dbias_wak"
.LASF239:
	.string	"esp_sleep_disable_wakeup_source"
.LASF237:
	.string	"time_diff"
.LASF294:
	.string	"rtc_get_reset_reason"
.LASF273:
	.string	"rtc_sleep_init"
.LASF153:
	.string	"rtc_dbias_wak"
.LASF240:
	.string	"source"
.LASF71:
	.string	"TOUCH_PAD_MAX"
.LASF134:
	.string	"RTC_TIME_VALID_INT"
.LASF271:
	.string	"rtc_clk_cpu_freq_get"
.LASF76:
	.string	"ESP_PD_DOMAIN_RTC_PERIPH"
.LASF241:
	.string	"esp_sleep_enable_timer_wakeup"
.LASF165:
	.string	"rtc_vddsdio_config_t"
.LASF96:
	.string	"ESP_LOG_ERROR"
.LASF279:
	.string	"rtc_time_get"
.LASF78:
	.string	"ESP_PD_DOMAIN_RTC_FAST_MEM"
.LASF115:
	.string	"RTCWDT_BROWN_OUT_RESET"
.LASF72:
	.string	"touch_pad_t"
.LASF297:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/esp32/sleep_modes.c"
.LASF112:
	.string	"SW_CPU_RESET"
.LASF114:
	.string	"EXT_CPU_RESET"
.LASF155:
	.string	"lslp_meminf_pd"
.LASF202:
	.string	"rtc_gpio_num"
.LASF195:
	.string	"uart_no"
.LASF117:
	.string	"NO_SLEEP"
.LASF148:
	.string	"rom_mem_pd_en"
.LASF266:
	.string	"__assert_func"
.LASF143:
	.string	"rtc_mem_inf_follow_cpu"
.LASF126:
	.string	"TOUCH_TRIG"
.LASF13:
	.string	"__uint64_t"
.LASF162:
	.string	"drefh"
.LASF21:
	.string	"long unsigned int"
.LASF164:
	.string	"drefl"
.LASF163:
	.string	"drefm"
.LASF255:
	.string	"status"
.LASF172:
	.string	"hold_force"
.LASF259:
	.string	"option"
.LASF214:
	.string	"flush_uarts"
.LASF245:
	.string	"esp_sleep_enable_ext0_wakeup"
.LASF60:
	.string	"gpio_num_t"
.LASF83:
	.string	"ESP_PD_OPTION_ON"
.LASF105:
	.string	"DEEPSLEEP_RESET"
.LASF230:
	.string	"light_sleep_lock"
.LASF286:
	.string	"rtc_time_slowclk_to_us"
.LASF288:
	.string	"esp_set_time_from_rtc"
.LASF75:
	.string	"esp_sleep_ext1_wakeup_mode_t"
.LASF79:
	.string	"ESP_PD_DOMAIN_XTAL"
.LASF256:
	.string	"gpio_mask"
.LASF127:
	.string	"SAR_TRIG"
.LASF10:
	.string	"__uint32_t"
.LASF4:
	.string	"_lock_t"
.LASF12:
	.string	"long long int"
.LASF175:
	.string	"rtc_num"
.LASF161:
	.string	"tieh"
.LASF160:
	.string	"enable"
.LASF169:
	.string	"slpsel"
.LASF207:
	.string	"rtc_pin"
.LASF217:
	.string	"config"
.LASF120:
	.string	"GPIO_TRIG"
.LASF129:
	.string	"NO_INT"
.LASF84:
	.string	"ESP_PD_OPTION_AUTO"
.LASF275:
	.string	"rtc_vddsdio_set_config"
.LASF233:
	.string	"rtc_ticks_at_end"
.LASF23:
	.string	"esp_err_t"
.LASF248:
	.string	"mask"
.LASF156:
	.string	"vddsdio_pd_en"
.LASF35:
	.string	"GPIO_NUM_10"
.LASF36:
	.string	"GPIO_NUM_11"
.LASF37:
	.string	"GPIO_NUM_12"
.LASF38:
	.string	"GPIO_NUM_13"
.LASF39:
	.string	"GPIO_NUM_14"
.LASF40:
	.string	"GPIO_NUM_15"
.LASF41:
	.string	"GPIO_NUM_16"
.LASF42:
	.string	"GPIO_NUM_17"
.LASF43:
	.string	"GPIO_NUM_18"
.LASF44:
	.string	"GPIO_NUM_19"
.LASF59:
	.string	"GPIO_NUM_MAX"
.LASF77:
	.string	"ESP_PD_DOMAIN_RTC_SLOW_MEM"
.LASF296:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF238:
	.string	"esp_get_deep_sleep_wake_stub"
.LASF178:
	.string	"count"
.LASF118:
	.string	"EXT_EVENT0_TRIG"
.LASF171:
	.string	"hold"
.LASF1:
	.string	"unsigned int"
.LASF45:
	.string	"GPIO_NUM_21"
.LASF46:
	.string	"GPIO_NUM_22"
.LASF47:
	.string	"GPIO_NUM_23"
.LASF48:
	.string	"GPIO_NUM_25"
.LASF49:
	.string	"GPIO_NUM_26"
.LASF50:
	.string	"GPIO_NUM_27"
.LASF295:
	.string	"touch_pad_get_wakeup_status"
.LASF157:
	.string	"xtal_fpu"
.LASF136:
	.string	"RTC_CPU_FREQ_80M"
.LASF298:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\esp32"
.LASF229:
	.string	"esp_light_sleep_start"
.LASF209:
	.string	"timer_wakeup_prepare"
.LASF97:
	.string	"ESP_LOG_WARN"
.LASF204:
	.string	"ext1_wakeup_prepare"
.LASF111:
	.string	"TGWDT_CPU_RESET"
.LASF94:
	.string	"esp_deep_sleep_wake_stub_fn_t"
.LASF51:
	.string	"GPIO_NUM_32"
.LASF52:
	.string	"GPIO_NUM_33"
.LASF53:
	.string	"GPIO_NUM_34"
.LASF54:
	.string	"GPIO_NUM_35"
.LASF55:
	.string	"GPIO_NUM_36"
.LASF56:
	.string	"GPIO_NUM_37"
.LASF57:
	.string	"GPIO_NUM_38"
.LASF58:
	.string	"GPIO_NUM_39"
.LASF261:
	.string	"lock_rtc_memory_crc"
.LASF91:
	.string	"ESP_SLEEP_WAKEUP_ULP"
.LASF253:
	.string	"pad_num"
.LASF225:
	.string	"esp_default_wake_deep_sleep"
.LASF102:
	.string	"POWERON_RESET"
.LASF282:
	.string	"esp_timer_impl_lock"
.LASF174:
	.string	"drv_s"
.LASF173:
	.string	"drv_v"
.LASF219:
	.string	"esp_sleep_start"
.LASF73:
	.string	"ESP_EXT1_WAKEUP_ALL_LOW"
.LASF100:
	.string	"ESP_LOG_VERBOSE"
.LASF80:
	.string	"ESP_PD_DOMAIN_MAX"
.LASF147:
	.string	"wifi_pd_en"
.LASF125:
	.string	"UART1_TRIG"
.LASF268:
	.string	"rtc_time_us_to_slowclk"
.LASF189:
	.string	"sleep_config_t"
.LASF87:
	.string	"ESP_SLEEP_WAKEUP_EXT0"
.LASF88:
	.string	"ESP_SLEEP_WAKEUP_EXT1"
.LASF292:
	.string	"esp_log_timestamp"
.LASF0:
	.string	"long long unsigned int"
.LASF170:
	.string	"slpie"
.LASF236:
	.string	"frc_time_diff"
.LASF109:
	.string	"RTCWDT_SYS_RESET"
.LASF211:
	.string	"rtc_count_delta"
.LASF192:
	.string	"_rtc_bss_start"
.LASF130:
	.string	"WAKEUP_INT"
.LASF272:
	.string	"rtc_clk_cpu_freq_set"
.LASF150:
	.string	"wdt_flashboot_mod_en"
.LASF95:
	.string	"ESP_LOG_NONE"
.LASF106:
	.string	"SDIO_RESET"
.LASF179:
	.string	"portMUX_TYPE"
.LASF274:
	.string	"rtc_sleep_start"
.LASF210:
	.string	"period"
.LASF98:
	.string	"ESP_LOG_INFO"
.LASF199:
	.string	"suspend_uarts"
.LASF231:
	.string	"frc_time_at_start"
.LASF93:
	.string	"esp_sleep_wakeup_cause_t"
.LASF278:
	.string	"_lock_release"
.LASF203:
	.string	"desc"
.LASF205:
	.string	"rtc_gpio_mask"
.LASF144:
	.string	"rtc_fastmem_pd_en"
.LASF191:
	.string	"_rtc_data_end"
.LASF149:
	.string	"deep_slp"
.LASF283:
	.string	"esp_timer_get_time"
.LASF300:
	.string	"uart_tx_wait_idle"
.LASF137:
	.string	"RTC_CPU_FREQ_160M"
.LASF139:
	.string	"RTC_CPU_FREQ_2M"
.LASF281:
	.string	"vTaskEnterCritical"
.LASF122:
	.string	"SDIO_TRIG"
.LASF183:
	.string	"ext1_trigger_mode"
.LASF145:
	.string	"rtc_slowmem_pd_en"
.LASF226:
	.string	"esp_set_deep_sleep_wake_stub"
.LASF123:
	.string	"MAC_TRIG"
.LASF254:
	.string	"esp_sleep_get_ext1_wakeup_status"
.LASF8:
	.string	"short int"
.LASF18:
	.string	"uint64_t"
.LASF249:
	.string	"mode"
.LASF166:
	.string	"func"
.LASF235:
	.string	"rtc_time_diff"
.LASF267:
	.string	"esp_clk_slowclk_cal_get"
.LASF212:
	.string	"get_power_down_flags"
.LASF168:
	.string	"pulldown"
.LASF152:
	.string	"dig_dbias_slp"
.LASF104:
	.string	"OWDT_RESET"
.LASF201:
	.string	"ext0_wakeup_prepare"
.LASF154:
	.string	"rtc_dbias_slp"
.LASF269:
	.string	"rtc_sleep_set_wakeup_time"
.LASF198:
	.string	"rtc_wdt_disable"
.LASF232:
	.string	"vddsdio_pd_sleep_duration"
.LASF116:
	.string	"RTCWDT_RTC_RESET"
.LASF257:
	.string	"esp_sleep_pd_config"
.LASF243:
	.string	"esp_deep_sleep"
.LASF99:
	.string	"ESP_LOG_DEBUG"
.LASF270:
	.string	"rtc_clk_slow_freq_get_hz"
.LASF11:
	.string	"__int64_t"
.LASF108:
	.string	"TG1WDT_SYS_RESET"
.LASF224:
	.string	"calc_crc"
.LASF188:
	.string	"rtc_ticks_at_sleep_start"
.LASF138:
	.string	"RTC_CPU_FREQ_240M"
.LASF16:
	.string	"uint32_t"
.LASF276:
	.string	"_lock_acquire"
.LASF141:
	.string	"lslp_mem_inf_fpu"
.LASF190:
	.string	"_rtc_data_start"
.LASF2:
	.string	"short unsigned int"
.LASF213:
	.string	"rtc_wdt_enable"
.LASF186:
	.string	"ext0_rtc_gpio_num"
.LASF260:
	.string	"s_config"
.LASF284:
	.string	"esp_dport_access_stall_other_cpu_start"
.LASF221:
	.string	"flash_enable_time_us"
.LASF9:
	.string	"__int32_t"
.LASF17:
	.string	"int64_t"
.LASF82:
	.string	"ESP_PD_OPTION_OFF"
.LASF181:
	.string	"sleep_duration"
.LASF89:
	.string	"ESP_SLEEP_WAKEUP_TIMER"
.LASF158:
	.string	"rtc_sleep_config_t"
.LASF142:
	.string	"rtc_mem_inf_fpu"
.LASF86:
	.string	"ESP_SLEEP_WAKEUP_UNDEFINED"
.LASF187:
	.string	"sleep_time_adjustment"
.LASF196:
	.string	"option_str"
.LASF132:
	.string	"SDIO_IDLE_INT"
.LASF293:
	.string	"esp_log_write"
.LASF182:
	.string	"wakeup_triggers"
.LASF220:
	.string	"esp_light_sleep_inner"
.LASF263:
	.string	"ets_get_detected_xtal_freq"
.LASF121:
	.string	"TIMER_EXPIRE"
.LASF133:
	.string	"RTC_WDT_INT"
.LASF193:
	.string	"_rtc_bss_end"
.LASF200:
	.string	"pd_flags"
.LASF146:
	.string	"rtc_peri_pd_en"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
