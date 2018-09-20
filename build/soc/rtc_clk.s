	.file	"rtc_clk.c"
	.text
.Ltext0:
	.section	.text.rtc_clk_32k_enable_internal,"ax",@progbits
	.literal_position
	.literal .LC0, 1072989324
	.literal .LC1, 393216
	.literal .LC2, -415629313
	.literal .LC3, -3145729
	.literal .LC4, 524288
	.align	4
	.type	rtc_clk_32k_enable_internal, @function
rtc_clk_32k_enable_internal:
.LFB7:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_clk.c"
	.loc 1 114 0
.LVL0:
	entry	sp, 32
.LCFI0:
.LBB47:
.LBB48:
	.loc 1 115 0
	l32r	a8, .LC0
	memw
	l32i.n	a10, a8, 0
.LBE48:
	l32r	a9, .LC1
	or	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
.LBE47:
.LBB49:
.LBB50:
	.loc 1 116 0
	memw
	l32i.n	a10, a8, 0
.LBE50:
	l32r	a9, .LC2
	and	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
.LBE49:
.LBB51:
.LBB52:
	.loc 1 119 0
	memw
	l32i.n	a10, a8, 0
.LBE52:
	l32r	a9, .LC3
	and	a9, a10, a9
	extui	a2, a2, 0, 2
.LVL1:
	slli	a2, a2, 20
	or	a9, a2, a9
	memw
	s32i.n	a9, a8, 0
.LBE51:
.LBB53:
.LBB54:
	.loc 1 120 0
	memw
	l32i.n	a2, a8, 0
.LBE54:
	movi.n	a9, -0x19
	and	a9, a2, a9
	extui	a3, a3, 0, 2
.LVL2:
	slli	a3, a3, 3
	or	a9, a3, a9
	memw
	s32i.n	a9, a8, 0
.LBE53:
.LBB55:
.LBB56:
	.loc 1 121 0
	memw
	l32i.n	a2, a8, 0
.LBE56:
	movi.n	a9, -7
	and	a9, a2, a9
	extui	a4, a4, 0, 2
.LVL3:
	slli	a4, a4, 1
	or	a9, a4, a9
	memw
	s32i.n	a9, a8, 0
.LBE55:
.LBB57:
.LBB58:
	.loc 1 122 0
	memw
	l32i.n	a2, a8, 0
.LBE58:
	l32r	a9, .LC4
	or	a9, a2, a9
	memw
	s32i.n	a9, a8, 0
	retw.n
.LBE57:
.LFE7:
	.size	rtc_clk_32k_enable_internal, .-rtc_clk_32k_enable_internal
	.section	.text.clk_val_is_valid,"ax",@progbits
	.align	4
	.type	clk_val_is_valid, @function
clk_val_is_valid:
.LFB28:
	.loc 1 589 0
.LVL4:
	entry	sp, 32
.LCFI1:
	.loc 1 590 0
	extui	a9, a2, 0, 16
	extui	a8, a2, 16, 16
	.loc 1 591 0
	bne	a9, a8, .L4
	.loc 1 591 0 is_stmt 0 discriminator 1
	addi.n	a2, a2, -1
.LVL5:
	movi.n	a8, -3
	bgeu	a8, a2, .L5
	.loc 1 591 0
	movi.n	a2, 0
.LVL6:
	retw.n
.LVL7:
.L4:
	movi.n	a2, 0
.LVL8:
	retw.n
.L5:
	movi.n	a2, 1
	.loc 1 593 0 is_stmt 1
	retw.n
.LFE28:
	.size	clk_val_is_valid, .-clk_val_is_valid
	.section	.text.reg_val_to_clk_val,"ax",@progbits
	.align	4
	.type	reg_val_to_clk_val, @function
reg_val_to_clk_val:
.LFB29:
	.loc 1 595 0
.LVL9:
	entry	sp, 32
.LCFI2:
	.loc 1 597 0
	extui	a2, a2, 0, 16
.LVL10:
	retw.n
.LFE29:
	.size	reg_val_to_clk_val, .-reg_val_to_clk_val
	.section	.text.clk_val_to_reg_val,"ax",@progbits
	.align	4
	.type	clk_val_to_reg_val, @function
clk_val_to_reg_val:
.LFB30:
	.loc 1 599 0
.LVL11:
	entry	sp, 32
.LCFI3:
	.loc 1 600 0
	extui	a8, a2, 0, 16
	slli	a2, a2, 16
.LVL12:
	.loc 1 601 0
	or	a2, a8, a2
	retw.n
.LFE30:
	.size	clk_val_to_reg_val, .-clk_val_to_reg_val
	.section	.text.rtc_clk_32k_enable,"ax",@progbits
	.literal_position
	.literal .LC5, 1072989324
	.literal .LC6, -524289
	.align	4
	.global	rtc_clk_32k_enable
	.type	rtc_clk_32k_enable, @function
rtc_clk_32k_enable:
.LFB8:
	.loc 1 126 0
.LVL13:
	entry	sp, 32
.LCFI4:
	extui	a2, a2, 0, 8
	.loc 1 127 0
	beqz.n	a2, .L9
	.loc 1 128 0
	movi.n	a12, 0
	movi.n	a11, 3
	movi.n	a10, 1
	call8	rtc_clk_32k_enable_internal
.LVL14:
	retw.n
.L9:
.LBB59:
.LBB60:
	.loc 1 130 0
	l32r	a9, .LC5
	memw
	l32i.n	a2, a9, 0
.LVL15:
.LBE60:
	l32r	a8, .LC6
	and	a8, a2, a8
	memw
	s32i.n	a8, a9, 0
	retw.n
.LBE59:
.LFE8:
	.size	rtc_clk_32k_enable, .-rtc_clk_32k_enable
	.section	.text.rtc_clk_32k_bootstrap,"ax",@progbits
	.literal_position
	.literal .LC7, 1072989324
	.literal .LC8, -524289
	.literal .LC9, 272629760
	.align	4
	.global	rtc_clk_32k_bootstrap
	.type	rtc_clk_32k_bootstrap, @function
rtc_clk_32k_bootstrap:
.LFB9:
	.loc 1 139 0
.LVL16:
	entry	sp, 32
.LCFI5:
	.loc 1 140 0
	beqz.n	a2, .L12
.LVL17:
.LBB61:
	.loc 1 146 0
	movi.n	a10, 0x20
	call8	gpio_pad_select_gpio
.LVL18:
	.loc 1 147 0
	movi.n	a10, 0x21
	call8	gpio_pad_select_gpio
.LVL19:
	.loc 1 148 0
	movi.n	a13, 0
	movi.n	a12, 3
	movi.n	a11, 2
	movi.n	a10, 1
	call8	gpio_output_set_high
.LVL20:
	.loc 1 151 0
	j	.L13
.L14:
	.loc 1 152 0
	movi.n	a13, 0
	movi.n	a12, 3
	movi.n	a11, 2
	movi.n	a10, 1
	call8	gpio_output_set_high
.LVL21:
	.loc 1 153 0
	movi.n	a10, 0xf
	call8	ets_delay_us
.LVL22:
	.loc 1 154 0
	movi.n	a13, 0
	movi.n	a12, 3
	movi.n	a11, 1
	movi.n	a10, 2
	call8	gpio_output_set_high
.LVL23:
	.loc 1 155 0
	movi.n	a10, 0xf
	call8	ets_delay_us
.LVL24:
	.loc 1 156 0
	addi.n	a2, a2, -1
.LVL25:
.L13:
	.loc 1 151 0
	bnez.n	a2, .L14
	.loc 1 158 0
	movi.n	a13, 3
	movi.n	a12, 0
	mov.n	a11, a12
	mov.n	a10, a12
	call8	gpio_output_set_high
.LVL26:
.L12:
.LBE61:
.LBB62:
.LBB63:
	.loc 1 161 0
	l32r	a2, .LC7
.LVL27:
	memw
	l32i.n	a9, a2, 0
.LBE63:
	l32r	a8, .LC8
	and	a8, a9, a8
	memw
	s32i.n	a8, a2, 0
.LBE62:
.LBB64:
.LBB65:
	.loc 1 162 0
	memw
	l32i.n	a9, a2, 0
.LBE65:
	l32r	a8, .LC9
	or	a8, a9, a8
	memw
	s32i.n	a8, a2, 0
.LBE64:
	.loc 1 163 0
	movi.n	a10, 7
	call8	ets_delay_us
.LVL28:
	.loc 1 165 0
	movi.n	a12, 0
	movi.n	a11, 3
	mov.n	a10, a11
	call8	rtc_clk_32k_enable_internal
.LVL29:
	retw.n
.LFE9:
	.size	rtc_clk_32k_bootstrap, .-rtc_clk_32k_bootstrap
	.section	.text.rtc_clk_32k_enabled,"ax",@progbits
	.literal_position
	.literal .LC10, 1072989324
	.literal .LC11, 524288
	.align	4
	.global	rtc_clk_32k_enabled
	.type	rtc_clk_32k_enabled, @function
rtc_clk_32k_enabled:
.LFB10:
	.loc 1 170 0
	entry	sp, 32
.LCFI6:
.LBB66:
.LBB67:
	.loc 1 171 0
	l32r	a2, .LC10
	memw
	l32i.n	a8, a2, 0
.LBE67:
	l32r	a2, .LC11
	and	a8, a8, a2
.LBE66:
	movi.n	a2, 0
	movi.n	a9, 1
	movnez	a2, a9, a8
	.loc 1 172 0
	retw.n
.LFE10:
	.size	rtc_clk_32k_enabled, .-rtc_clk_32k_enabled
	.section	.text.rtc_clk_8m_enable,"ax",@progbits
	.literal_position
	.literal .LC12, 1072988272
	.literal .LC13, 1072988188
	.literal .LC14, -16321
	.align	4
	.global	rtc_clk_8m_enable
	.type	rtc_clk_8m_enable, @function
rtc_clk_8m_enable:
.LFB11:
	.loc 1 175 0
.LVL30:
	entry	sp, 32
.LCFI7:
	extui	a2, a2, 0, 8
	extui	a3, a3, 0, 8
	.loc 1 176 0
	beqz.n	a2, .L17
.LBB68:
.LBB69:
	.loc 1 177 0
	l32r	a2, .LC12
.LVL31:
	memw
	l32i.n	a9, a2, 0
.LBE69:
	movi	a8, -0x41
	and	a8, a9, a8
	memw
	s32i.n	a8, a2, 0
.LBE68:
.LBB70:
.LBB71:
	.loc 1 179 0
	l32r	a2, .LC13
	memw
	l32i.n	a9, a2, 0
.LBE71:
	l32r	a8, .LC14
	and	a9, a9, a8
	movi.n	a8, 0x40
	or	a8, a9, a8
	memw
	s32i.n	a8, a2, 0
.LBE70:
	.loc 1 180 0
	beqz.n	a3, .L18
.LBB72:
.LBB73:
	.loc 1 181 0
	l32r	a3, .LC12
.LVL32:
	memw
	l32i.n	a8, a3, 0
.LBE73:
	movi	a2, -0x81
	and	a2, a8, a2
	memw
	s32i.n	a2, a3, 0
.LBE72:
	j	.L19
.L18:
.LBB74:
.LBB75:
	.loc 1 183 0
	l32r	a3, .LC12
	memw
	l32i.n	a8, a3, 0
.LBE75:
	movi	a2, 0x80
	or	a2, a8, a2
	memw
	s32i.n	a2, a3, 0
.L19:
.LBE74:
	.loc 1 185 0
	movi.n	a10, 0x32
	call8	ets_delay_us
.LVL33:
	retw.n
.L17:
.LBB76:
.LBB77:
	.loc 1 187 0
	l32r	a2, .LC12
	memw
	l32i.n	a3, a2, 0
.LBE77:
	movi.n	a8, 0x40
	or	a8, a3, a8
	memw
	s32i.n	a8, a2, 0
.LBE76:
.LBB78:
.LBB79:
	.loc 1 188 0
	l32r	a2, .LC13
	memw
	l32i.n	a9, a2, 0
.LBE79:
	l32r	a8, .LC14
	and	a9, a9, a8
	movi	a8, 0x500
	or	a8, a9, a8
	memw
	s32i.n	a8, a2, 0
	retw.n
.LBE78:
.LFE11:
	.size	rtc_clk_8m_enable, .-rtc_clk_8m_enable
	.section	.text.rtc_clk_8m_enabled,"ax",@progbits
	.literal_position
	.literal .LC15, 1072988272
	.align	4
	.global	rtc_clk_8m_enabled
	.type	rtc_clk_8m_enabled, @function
rtc_clk_8m_enabled:
.LFB12:
	.loc 1 193 0
	entry	sp, 32
.LCFI8:
.LBB80:
.LBB81:
	.loc 1 194 0
	l32r	a2, .LC15
	memw
	l32i.n	a8, a2, 0
.LBE81:
	movi.n	a2, 0x40
	and	a8, a8, a2
.LBE80:
	movi.n	a2, 0
	movi.n	a9, 1
	moveqz	a2, a9, a8
	.loc 1 195 0
	retw.n
.LFE12:
	.size	rtc_clk_8m_enabled, .-rtc_clk_8m_enabled
	.section	.text.rtc_clk_8md256_enabled,"ax",@progbits
	.literal_position
	.literal .LC16, 1072988272
	.align	4
	.global	rtc_clk_8md256_enabled
	.type	rtc_clk_8md256_enabled, @function
rtc_clk_8md256_enabled:
.LFB13:
	.loc 1 198 0
	entry	sp, 32
.LCFI9:
.LBB82:
.LBB83:
	.loc 1 199 0
	l32r	a2, .LC16
	memw
	l32i.n	a8, a2, 0
.LBE83:
	movi	a2, 0x80
	and	a8, a8, a2
.LBE82:
	movi.n	a2, 0
	movi.n	a9, 1
	moveqz	a2, a9, a8
	.loc 1 200 0
	retw.n
.LFE13:
	.size	rtc_clk_8md256_enabled, .-rtc_clk_8md256_enabled
	.global	__udivdi3
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC20:
	.string	"rtc_clk"
	.align	4
.LC22:
	.string	"\033[0;33mW (%d) %s: Potentially bogus XTAL frequency: %d MHz, guessing 26 MHz\033[0m\n"
	.align	4
.LC24:
	.string	"\033[0;33mW (%d) %s: Potentially bogus XTAL frequency: %d MHz, guessing 40 MHz\033[0m\n"
	.align	4
.LC26:
	.string	"\033[0;33mW (%d) %s: Bogus XTAL frequency: %d MHz\033[0m\n"
	.section	.text.rtc_clk_xtal_freq_estimate,"ax",@progbits
	.literal_position
	.literal .LC17, 8500000
	.literal .LC18, 256000000, 0
	.literal .LC19, .L27
	.literal .LC21, .LC20
	.literal .LC23, .LC22
	.literal .LC25, .LC24
	.literal .LC27, .LC26
	.align	4
	.type	rtc_clk_xtal_freq_estimate, @function
rtc_clk_xtal_freq_estimate:
.LFB33:
	.loc 1 620 0
	entry	sp, 32
.LCFI10:
	.loc 1 622 0
	call8	rtc_clk_8m_enabled
.LVL34:
	.loc 1 623 0
	call8	rtc_clk_8md256_enabled
.LVL35:
	.loc 1 624 0
	bnez.n	a10, .L24
	.loc 1 625 0
	movi.n	a11, 1
	mov.n	a10, a11
.LVL36:
	call8	rtc_clk_8m_enable
.LVL37:
.L24:
	.loc 1 628 0
	movi.n	a11, 0xa
	movi.n	a10, 1
	call8	rtc_clk_cal_ratio
.LVL38:
	.loc 1 633 0
	l32r	a2, .LC17
	muluh	a11, a10, a2
	l32r	a12, .LC18
	l32r	a13, .LC18+4
	mull	a10, a10, a2
.LVL39:
	call8	__udivdi3
.LVL40:
	slli	a2, a11, 13
	extui	a10, a10, 19, 13
	or	a2, a2, a10
.LVL41:
	.loc 1 636 0
	addi	a8, a2, -21
	movi.n	a9, 0x18
	bltu	a9, a8, .L25
	l32r	a9, .LC19
	addx4	a8, a8, a9
	l32i.n	a8, a8, 0
	jx	a8
	.section	.rodata.rtc_clk_xtal_freq_estimate,"a",@progbits
	.align	4
	.align	4
.L27:
	.word	.L26
	.word	.L26
	.word	.L26
	.word	.L26
	.word	.L26
	.word	.L26
	.word	.L26
	.word	.L26
	.word	.L26
	.word	.L26
	.word	.L26
	.word	.L28
	.word	.L28
	.word	.L29
	.word	.L29
	.word	.L31
	.word	.L31
	.word	.L31
	.word	.L31
	.word	.L31
	.word	.L31
	.word	.L31
	.word	.L31
	.word	.L31
	.word	.L31
	.section	.text.rtc_clk_xtal_freq_estimate
.L26:
	.loc 1 638 0
	movi.n	a2, 0x1a
.LVL42:
	retw.n
.LVL43:
.L28:
	.loc 1 640 0 discriminator 4
	call8	esp_log_timestamp
.LVL44:
	l32r	a11, .LC21
	mov.n	a15, a2
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC23
	movi.n	a10, 2
	call8	esp_log_write
.LVL45:
	.loc 1 641 0 discriminator 4
	movi.n	a2, 0x1a
.LVL46:
	retw.n
.LVL47:
.L29:
	.loc 1 643 0 discriminator 4
	call8	esp_log_timestamp
.LVL48:
	l32r	a11, .LC21
	mov.n	a15, a2
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC25
	movi.n	a10, 2
	call8	esp_log_write
.LVL49:
	.loc 1 644 0 discriminator 4
	movi.n	a2, 0x28
.LVL50:
	retw.n
.LVL51:
.L25:
	.loc 1 648 0 discriminator 4
	call8	esp_log_timestamp
.LVL52:
	l32r	a11, .LC21
	mov.n	a15, a2
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC27
	movi.n	a10, 2
	call8	esp_log_write
.LVL53:
	.loc 1 649 0 discriminator 4
	movi.n	a2, 0
.LVL54:
	retw.n
.LVL55:
.L31:
	.loc 1 646 0
	movi.n	a2, 0x28
.LVL56:
	.loc 1 653 0
	retw.n
.LFE33:
	.size	rtc_clk_xtal_freq_estimate, .-rtc_clk_xtal_freq_estimate
	.section	.text.rtc_clk_apll_enable,"ax",@progbits
	.literal_position
	.literal .LC28, 8388608
	.literal .LC29, 1072988208
	.literal .LC30, -8388609
	.literal .LC31, -16777217
	.literal .LC32, 1072988272
	.literal .LC33, 1072988160
	.literal .LC34, 262144
	.literal .LC35, -262145
	.literal .LC36, 1073061900
	.align	4
	.global	rtc_clk_apll_enable
	.type	rtc_clk_apll_enable, @function
rtc_clk_apll_enable:
.LFB14:
	.loc 1 203 0
.LVL57:
	entry	sp, 32
.LCFI11:
	extui	a2, a2, 0, 8
.LBB84:
.LBB85:
	.loc 1 204 0
	l32r	a8, .LC29
	memw
	l32i.n	a9, a8, 0
.LBE85:
	l32r	a8, .LC30
	and	a8, a9, a8
	beqz.n	a2, .L40
	movi.n	a9, 0
	j	.L33
.L40:
	l32r	a9, .LC28
.L33:
	.loc 1 204 0 is_stmt 0 discriminator 4
	or	a8, a9, a8
	l32r	a9, .LC29
	memw
	s32i.n	a8, a9, 0
.LBE84:
.LBB86:
.LBB87:
	.loc 1 205 0 is_stmt 1 discriminator 4
	memw
	l32i.n	a10, a9, 0
.LBE87:
	l32r	a8, .LC31
	and	a8, a10, a8
	slli	a10, a2, 24
	or	a8, a10, a8
	memw
	s32i.n	a8, a9, 0
.LBE86:
	.loc 1 207 0 discriminator 4
	bnez.n	a2, .L34
.LBB88:
.LBB89:
	.loc 1 208 0 discriminator 1
	l32r	a8, .LC32
	memw
	l32i.n	a8, a8, 0
.LBE89:
	extui	a8, a8, 27, 2
.LBE88:
	.loc 1 207 0 discriminator 1
	beqi	a8, 1, .L34
.LBB90:
	.loc 1 209 0
	l32r	a9, .LC33
	memw
	l32i.n	a10, a9, 0
	l32r	a8, .LC34
	or	a8, a10, a8
	memw
	s32i.n	a8, a9, 0
.LBE90:
	j	.L35
.L34:
.LBB91:
	.loc 1 211 0
	l32r	a9, .LC33
	memw
	l32i.n	a10, a9, 0
	l32r	a8, .LC35
	and	a8, a10, a8
	memw
	s32i.n	a8, a9, 0
.L35:
.LBE91:
	.loc 1 214 0
	beqz.n	a2, .L32
.LVL58:
.LBB92:
.LBB93:
.LBB94:
	.loc 1 216 0
	l32r	a2, .LC36
.LVL59:
	memw
	l32i.n	a2, a2, 0
.LVL60:
.LBE94:
.LBE93:
	.loc 1 217 0
	bbci	a2, 15, .L41
	.loc 1 215 0
	movi.n	a2, 0x49
.LVL61:
	j	.L37
.LVL62:
.L41:
	.loc 1 220 0
	movi	a2, 0x69
.LVL63:
	.loc 1 219 0
	movi.n	a4, 0
.LVL64:
	.loc 1 218 0
	mov.n	a3, a4
.LVL65:
.L37:
	.loc 1 222 0
	extui	a15, a5, 0, 8
	movi.n	a14, 0
	movi.n	a13, 5
	movi.n	a12, 7
	movi.n	a11, 3
	movi	a10, 0x6d
	call8	rom_i2c_writeReg_Mask
.LVL66:
	.loc 1 223 0
	extui	a15, a3, 0, 8
	movi.n	a14, 0
	movi.n	a13, 7
	movi.n	a12, 9
	movi.n	a11, 3
	movi	a10, 0x6d
	call8	rom_i2c_writeReg_Mask
.LVL67:
	.loc 1 224 0
	extui	a15, a4, 0, 8
	movi.n	a14, 0
	movi.n	a13, 7
	movi.n	a12, 8
	movi.n	a11, 3
	movi	a10, 0x6d
	call8	rom_i2c_writeReg_Mask
.LVL68:
	.loc 1 225 0
	movi.n	a13, 9
	movi.n	a12, 5
	movi.n	a11, 3
	movi	a10, 0x6d
	call8	rom_i2c_writeReg
.LVL69:
	.loc 1 226 0
	mov.n	a13, a2
	movi.n	a12, 5
	movi.n	a11, 3
	movi	a10, 0x6d
	call8	rom_i2c_writeReg
.LVL70:
	.loc 1 227 0
	extui	a15, a6, 0, 8
	movi.n	a14, 0
	movi.n	a13, 4
	mov.n	a12, a13
	movi.n	a11, 3
	movi	a10, 0x6d
	call8	rom_i2c_writeReg_Mask
.LVL71:
	.loc 1 230 0
	movi.n	a13, 0xf
	movi.n	a12, 0
	movi.n	a11, 3
	movi	a10, 0x6d
	call8	rom_i2c_writeReg
.LVL72:
	.loc 1 231 0
	movi.n	a13, 0x3f
	movi.n	a12, 0
	movi.n	a11, 3
	movi	a10, 0x6d
	call8	rom_i2c_writeReg
.LVL73:
	.loc 1 232 0
	movi.n	a13, 0x1f
	movi.n	a12, 0
	movi.n	a11, 3
	movi	a10, 0x6d
	call8	rom_i2c_writeReg
.LVL74:
	.loc 1 235 0
	j	.L38
.L39:
	.loc 1 237 0
	movi.n	a10, 1
	call8	ets_delay_us
.LVL75:
.L38:
	.loc 1 235 0
	movi.n	a14, 7
	mov.n	a13, a14
	movi.n	a12, 3
	mov.n	a11, a12
	movi	a10, 0x6d
	call8	rom_i2c_readReg_Mask
.LVL76:
	beqz.n	a10, .L39
.LVL77:
.L32:
	retw.n
.LBE92:
.LFE14:
	.size	rtc_clk_apll_enable, .-rtc_clk_apll_enable
	.section	.text.rtc_clk_slow_freq_set,"ax",@progbits
	.literal_position
	.literal .LC37, 1072988272
	.literal .LC38, 1073741823
	.align	4
	.global	rtc_clk_slow_freq_set
	.type	rtc_clk_slow_freq_set, @function
rtc_clk_slow_freq_set:
.LFB15:
	.loc 1 243 0
.LVL78:
	entry	sp, 32
.LCFI12:
.LBB95:
.LBB96:
	.loc 1 244 0
	l32r	a8, .LC37
	memw
	l32i.n	a10, a8, 0
.LBE96:
	l32r	a9, .LC38
	and	a10, a10, a9
	slli	a9, a2, 30
	or	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
.LBE95:
.LBB97:
.LBB98:
	.loc 1 246 0
	memw
	l32i.n	a9, a8, 0
.LBE98:
	movi	a8, -0x101
	and	a8, a9, a8
	bnei	a2, 1, .L44
	movi	a2, 0x100
.LVL79:
	j	.L43
.LVL80:
.L44:
	movi.n	a2, 0
.LVL81:
.L43:
	.loc 1 246 0 is_stmt 0 discriminator 4
	or	a8, a2, a8
	l32r	a2, .LC37
	memw
	s32i.n	a8, a2, 0
.LBE97:
	.loc 1 249 0 is_stmt 1 discriminator 4
	movi	a10, 0x12c
	call8	ets_delay_us
.LVL82:
	retw.n
.LFE15:
	.size	rtc_clk_slow_freq_set, .-rtc_clk_slow_freq_set
	.section	.text.rtc_clk_slow_freq_get,"ax",@progbits
	.literal_position
	.literal .LC39, 1072988272
	.align	4
	.global	rtc_clk_slow_freq_get
	.type	rtc_clk_slow_freq_get, @function
rtc_clk_slow_freq_get:
.LFB16:
	.loc 1 253 0
	entry	sp, 32
.LCFI13:
.LBB99:
.LBB100:
	.loc 1 254 0
	l32r	a2, .LC39
	memw
	l32i.n	a2, a2, 0
.LBE100:
.LBE99:
	.loc 1 255 0
	extui	a2, a2, 30, 2
	retw.n
.LFE16:
	.size	rtc_clk_slow_freq_get, .-rtc_clk_slow_freq_get
	.section	.text.rtc_clk_slow_freq_get_hz,"ax",@progbits
	.literal_position
	.literal .LC40, 150000
	.literal .LC41, 32768
	.literal .LC42, 33203
	.align	4
	.global	rtc_clk_slow_freq_get_hz
	.type	rtc_clk_slow_freq_get_hz, @function
rtc_clk_slow_freq_get_hz:
.LFB17:
	.loc 1 258 0
	entry	sp, 32
.LCFI14:
	.loc 1 259 0
	call8	rtc_clk_slow_freq_get
.LVL83:
	beqi	a10, 1, .L51
	beqz.n	a10, .L49
	beqi	a10, 2, .L50
	j	.L52
.L49:
	.loc 1 260 0
	l32r	a2, .LC40
	retw.n
.L50:
	.loc 1 262 0
	l32r	a2, .LC42
	retw.n
.L52:
	.loc 1 264 0
	movi.n	a2, 0
	retw.n
.L51:
	.loc 1 261 0
	l32r	a2, .LC41
	.loc 1 265 0
	retw.n
.LFE17:
	.size	rtc_clk_slow_freq_get_hz, .-rtc_clk_slow_freq_get_hz
	.section	.text.rtc_clk_fast_freq_set,"ax",@progbits
	.literal_position
	.literal .LC43, 1072988272
	.literal .LC44, -536870913
	.align	4
	.global	rtc_clk_fast_freq_set
	.type	rtc_clk_fast_freq_set, @function
rtc_clk_fast_freq_set:
.LFB18:
	.loc 1 268 0
.LVL84:
	entry	sp, 32
.LCFI15:
.LBB101:
.LBB102:
	.loc 1 269 0
	l32r	a9, .LC43
	memw
	l32i.n	a10, a9, 0
.LBE102:
	l32r	a8, .LC44
	and	a8, a10, a8
	extui	a2, a2, 0, 1
.LVL85:
	slli	a2, a2, 29
	or	a2, a8, a2
	memw
	s32i.n	a2, a9, 0
.LBE101:
	.loc 1 270 0
	movi.n	a10, 3
	call8	ets_delay_us
.LVL86:
	retw.n
.LFE18:
	.size	rtc_clk_fast_freq_set, .-rtc_clk_fast_freq_set
	.section	.text.rtc_clk_fast_freq_get,"ax",@progbits
	.literal_position
	.literal .LC45, 1072988272
	.align	4
	.global	rtc_clk_fast_freq_get
	.type	rtc_clk_fast_freq_get, @function
rtc_clk_fast_freq_get:
.LFB19:
	.loc 1 274 0
	entry	sp, 32
.LCFI16:
.LBB103:
.LBB104:
	.loc 1 275 0
	l32r	a2, .LC45
	memw
	l32i.n	a2, a2, 0
.LBE104:
.LBE103:
	.loc 1 276 0
	extui	a2, a2, 29, 1
	retw.n
.LFE19:
	.size	rtc_clk_fast_freq_get, .-rtc_clk_fast_freq_get
	.section	.text.rtc_clk_bbpll_set,"ax",@progbits
	.literal_position
	.literal .LC46, 1072988284
	.literal .LC47, -14337
	.literal .LC48, 8192
	.literal .LC49, 14336
	.align	4
	.global	rtc_clk_bbpll_set
	.type	rtc_clk_bbpll_set, @function
rtc_clk_bbpll_set:
.LFB20:
	.loc 1 279 0
.LVL87:
	entry	sp, 32
.LCFI17:
	.loc 1 287 0
	beqi	a3, 3, .L56
.LBB105:
.LBB106:
	.loc 1 289 0
	l32r	a5, .LC46
	memw
	l32i.n	a4, a5, 0
.LBE106:
	l32r	a3, .LC47
.LVL88:
	and	a4, a4, a3
	l32r	a3, .LC48
	or	a3, a4, a3
	memw
	s32i.n	a3, a5, 0
.LBE105:
	.loc 1 291 0
	movi.n	a3, 0x1a
	beq	a2, a3, .L67
	movi.n	a3, 0x28
	beq	a2, a3, .L59
	movi.n	a3, 0x18
	bne	a2, a3, .L70
	j	.L60
.L59:
	.loc 1 298 0
	movi.n	a2, 3
.LVL89:
	.loc 1 297 0
	movi.n	a3, 6
	.loc 1 296 0
	movi.n	a7, 0
	.loc 1 295 0
	mov.n	a6, a7
	.loc 1 294 0
	movi.n	a4, 0x20
	.loc 1 293 0
	mov.n	a5, a7
	j	.L58
.LVL90:
.L60:
	.loc 1 314 0
	movi.n	a2, 1
.LVL91:
	.loc 1 313 0
	movi.n	a3, 0
	.loc 1 312 0
	mov.n	a7, a2
	.loc 1 311 0
	movi.n	a6, 4
	.loc 1 310 0
	movi	a4, 0xe0
	.loc 1 309 0
	movi.n	a5, 0xb
	.loc 1 315 0
	j	.L58
.LVL92:
.L70:
	.loc 1 322 0
	movi.n	a2, 0
.LVL93:
	.loc 1 321 0
	mov.n	a3, a2
	.loc 1 320 0
	mov.n	a7, a2
	.loc 1 319 0
	movi.n	a6, 4
	.loc 1 318 0
	movi	a4, 0xe0
	.loc 1 317 0
	movi.n	a5, 0xc
	.loc 1 323 0
	j	.L58
.LVL94:
.L67:
	.loc 1 306 0
	movi.n	a2, 1
.LVL95:
	.loc 1 305 0
	movi.n	a3, 0
	.loc 1 304 0
	mov.n	a7, a2
	.loc 1 303 0
	movi.n	a6, 4
	.loc 1 302 0
	movi	a4, 0xe0
	.loc 1 301 0
	movi.n	a5, 0xc
.L58:
.LVL96:
	.loc 1 325 0
	movi.n	a13, 0x43
	movi.n	a12, 0xb
	movi.n	a11, 4
	movi	a10, 0x66
	call8	rom_i2c_writeReg
.LVL97:
	.loc 1 326 0
	movi	a13, 0x84
	movi.n	a12, 9
	movi.n	a11, 4
	movi	a10, 0x66
	call8	rom_i2c_writeReg
.LVL98:
	j	.L61
.LVL99:
.L56:
.LBB107:
.LBB108:
	.loc 1 329 0
	l32r	a4, .LC46
	memw
	l32i.n	a5, a4, 0
.LBE108:
	l32r	a3, .LC49
.LVL100:
	or	a3, a5, a3
	memw
	s32i.n	a3, a4, 0
.LBE107:
	.loc 1 330 0
	movi.n	a10, 3
	call8	ets_delay_us
.LVL101:
	.loc 1 332 0
	movi.n	a3, 0x1a
	beq	a2, a3, .L68
	movi.n	a3, 0x28
	beq	a2, a3, .L64
	movi.n	a3, 0x18
	bne	a2, a3, .L71
	j	.L65
.L64:
	.loc 1 339 0
	movi.n	a2, 3
.LVL102:
	.loc 1 338 0
	movi.n	a3, 6
	.loc 1 337 0
	movi.n	a7, 0
	.loc 1 336 0
	mov.n	a6, a7
	.loc 1 335 0
	movi.n	a4, 0x1c
	.loc 1 334 0
	mov.n	a5, a7
	j	.L63
.LVL103:
.L65:
	.loc 1 355 0
	movi.n	a2, 1
.LVL104:
	.loc 1 354 0
	movi.n	a3, 0
	.loc 1 353 0
	mov.n	a7, a2
	.loc 1 352 0
	movi.n	a6, 4
	.loc 1 351 0
	movi	a4, 0x90
	.loc 1 350 0
	movi.n	a5, 0xb
	.loc 1 356 0
	j	.L63
.LVL105:
.L71:
	.loc 1 363 0
	movi.n	a2, 0
.LVL106:
	.loc 1 362 0
	mov.n	a3, a2
	.loc 1 361 0
	mov.n	a7, a2
	.loc 1 360 0
	movi.n	a6, 4
	.loc 1 359 0
	movi	a4, 0xe0
	.loc 1 358 0
	movi.n	a5, 0xc
	.loc 1 364 0
	j	.L63
.LVL107:
.L68:
	.loc 1 347 0
	movi.n	a2, 1
.LVL108:
	.loc 1 346 0
	movi.n	a3, 0
	.loc 1 345 0
	mov.n	a7, a2
	.loc 1 344 0
	movi.n	a6, 4
	.loc 1 343 0
	movi	a4, 0x90
	.loc 1 342 0
	movi.n	a5, 0xc
.L63:
.LVL109:
	.loc 1 366 0
	movi	a13, 0xc3
	movi.n	a12, 0xb
	movi.n	a11, 4
	movi	a10, 0x66
	call8	rom_i2c_writeReg
.LVL110:
	.loc 1 367 0
	movi	a13, 0x74
	movi.n	a12, 9
	movi.n	a11, 4
	movi	a10, 0x66
	call8	rom_i2c_writeReg
.LVL111:
.L61:
	.loc 1 370 0
	slli	a13, a7, 7
	slli	a8, a6, 4
	or	a13, a13, a8
.LVL112:
	.loc 1 372 0
	slli	a2, a2, 6
.LVL113:
	or	a2, a2, a3
.LVL114:
	.loc 1 373 0
	or	a13, a13, a5
.LVL115:
	movi.n	a12, 2
	movi.n	a11, 4
	movi	a10, 0x66
	call8	rom_i2c_writeReg
.LVL116:
	.loc 1 374 0
	mov.n	a13, a4
	movi.n	a12, 3
	movi.n	a11, 4
	movi	a10, 0x66
	call8	rom_i2c_writeReg
.LVL117:
	.loc 1 375 0
	mov.n	a13, a2
	movi.n	a12, 5
	movi.n	a11, 4
	movi	a10, 0x66
	call8	rom_i2c_writeReg
.LVL118:
	.loc 1 376 0
	call8	rtc_clk_slow_freq_get
.LVL119:
	bnez.n	a10, .L69
	movi.n	a10, 0x50
	j	.L66
.L69:
	movi	a10, 0xa0
.L66:
.LVL120:
	.loc 1 378 0 discriminator 4
	call8	ets_delay_us
.LVL121:
	retw.n
.LFE20:
	.size	rtc_clk_bbpll_set, .-rtc_clk_bbpll_set
	.section	.rodata.str1.4
	.align	4
.LC52:
	.string	"\033[0;33mW (%d) %s: invalid RTC_XTAL_FREQ_REG value: 0x%08x\033[0m\n"
	.section	.text.rtc_clk_xtal_freq_get,"ax",@progbits
	.literal_position
	.literal .LC50, 1072988336
	.literal .LC51, .LC20
	.literal .LC53, .LC52
	.align	4
	.global	rtc_clk_xtal_freq_get
	.type	rtc_clk_xtal_freq_get, @function
rtc_clk_xtal_freq_get:
.LFB31:
	.loc 1 604 0
	entry	sp, 32
.LCFI18:
.LBB109:
	.loc 1 606 0
	l32r	a2, .LC50
	memw
	l32i.n	a2, a2, 0
.LVL122:
.LBE109:
	.loc 1 607 0
	mov.n	a10, a2
	call8	clk_val_is_valid
.LVL123:
	bnez.n	a10, .L73
	.loc 1 608 0 discriminator 4
	call8	esp_log_timestamp
.LVL124:
	l32r	a11, .LC51
	mov.n	a15, a2
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC53
	movi.n	a10, 2
	call8	esp_log_write
.LVL125:
	.loc 1 609 0 discriminator 4
	movi.n	a2, 0
.LVL126:
	retw.n
.LVL127:
.L73:
	.loc 1 611 0
	mov.n	a10, a2
	call8	reg_val_to_clk_val
.LVL128:
	mov.n	a2, a10
.LVL129:
	.loc 1 612 0
	retw.n
.LFE31:
	.size	rtc_clk_xtal_freq_get, .-rtc_clk_xtal_freq_get
	.global	rtc_get_xtal
	.set	rtc_get_xtal,rtc_clk_xtal_freq_get
	.section	.rodata.str1.4
	.align	4
.LC56:
	.string	"false && \"unsupported frequency\""
	.align	4
.LC59:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_clk.c"
	.section	.text.rtc_clk_cpu_freq_get,"ax",@progbits
	.literal_position
	.literal .LC54, 1072988272
	.literal .LC55, 1073111040
	.literal .LC57, .LC56
	.literal .LC58, __func__$3575
	.literal .LC60, .LC59
	.literal .LC61, 1072693308
	.align	4
	.global	rtc_clk_cpu_freq_get
	.type	rtc_clk_cpu_freq_get, @function
rtc_clk_cpu_freq_get:
.LFB25:
	.loc 1 513 0
	entry	sp, 32
.LCFI19:
.LBB110:
.LBB111:
	.loc 1 514 0
	l32r	a8, .LC54
	memw
	l32i.n	a8, a8, 0
.LBE111:
	extui	a8, a8, 27, 2
.LVL130:
.LBE110:
	.loc 1 515 0
	beqz.n	a8, .L77
	beqi	a8, 1, .L78
	j	.L85
.L77:
.LBB112:
.LBB113:
.LBB114:
	.loc 1 517 0
	l32r	a2, .LC55
	memw
	l32i.n	a2, a2, 0
.LBE114:
	extui	a2, a2, 0, 10
.LVL131:
.LBE113:
	.loc 1 518 0
	beqz.n	a2, .L80
	.loc 1 520 0
	call8	rtc_clk_xtal_freq_get
.LVL132:
	srli	a10, a10, 1
	addi.n	a10, a10, -1
	beq	a2, a10, .L81
	.loc 1 523 0
	l32r	a13, .LC57
	l32r	a12, .LC58
	movi	a11, 0x20b
	l32r	a10, .LC60
	call8	__assert_func
.LVL133:
.L78:
.LBE112:
.LBB115:
.LBB116:
.LBB117:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/dport_access.h"
	.loc 2 79 0
	l32r	a10, .LC61
	call8	esp_dport_access_reg_read
.LVL134:
.LBE117:
.LBE116:
	.loc 1 528 0
	extui	a10, a10, 0, 2
.LVL135:
	.loc 1 529 0
	beqz.n	a10, .L82
	.loc 1 531 0
	beqi	a10, 1, .L83
	.loc 1 533 0
	beqi	a10, 2, .L84
	.loc 1 536 0
	l32r	a13, .LC57
	l32r	a12, .LC58
	movi	a11, 0x218
	l32r	a10, .LC60
.LVL136:
	call8	__assert_func
.LVL137:
.L85:
.LBE115:
	.loc 1 543 0
	l32r	a13, .LC57
	l32r	a12, .LC58
	movi	a11, 0x21f
	l32r	a10, .LC60
	call8	__assert_func
.LVL138:
.L80:
.LBB118:
	.loc 1 519 0
	movi.n	a2, 0
.LVL139:
	retw.n
.LVL140:
.L81:
	.loc 1 521 0
	movi.n	a2, 4
.LVL141:
	retw.n
.LVL142:
.L82:
.LBE118:
.LBB119:
	.loc 1 530 0
	movi.n	a2, 1
	retw.n
.L83:
	.loc 1 532 0
	movi.n	a2, 2
	retw.n
.L84:
	.loc 1 534 0
	movi.n	a2, 3
.LBE119:
	.loc 1 546 0
	retw.n
.LFE25:
	.size	rtc_clk_cpu_freq_get, .-rtc_clk_cpu_freq_get
	.section	.rodata.str1.4
	.align	4
.LC68:
	.string	"false && \"invalid rtc_cpu_freq_t value\""
	.section	.text.rtc_clk_cpu_freq_value,"ax",@progbits
	.literal_position
	.literal .LC62, 2000000
	.literal .LC63, 80000000
	.literal .LC64, 160000000
	.literal .LC65, 240000000
	.literal .LC66, .L89
	.literal .LC67, 1000000
	.literal .LC69, .LC68
	.literal .LC70, __func__$3596
	.literal .LC71, .LC59
	.align	4
	.global	rtc_clk_cpu_freq_value
	.type	rtc_clk_cpu_freq_value, @function
rtc_clk_cpu_freq_value:
.LFB26:
	.loc 1 549 0
.LVL143:
	entry	sp, 32
.LCFI20:
	.loc 1 550 0
	bgeui	a2, 5, .L87
	l32r	a8, .LC66
	addx4	a2, a2, a8
.LVL144:
	l32i.n	a2, a2, 0
	jx	a2
	.section	.rodata.rtc_clk_cpu_freq_value,"a",@progbits
	.align	4
	.align	4
.L89:
	.word	.L88
	.word	.L94
	.word	.L91
	.word	.L92
	.word	.L93
	.section	.text.rtc_clk_cpu_freq_value
.L88:
	.loc 1 552 0
	call8	rtc_clk_xtal_freq_get
.LVL145:
	l32r	a2, .LC67
	mull	a2, a10, a2
	retw.n
.L91:
	.loc 1 558 0
	l32r	a2, .LC64
	retw.n
.L92:
	.loc 1 560 0
	l32r	a2, .LC65
	retw.n
.LVL146:
.L87:
	.loc 1 562 0
	l32r	a13, .LC69
	l32r	a12, .LC70
	movi	a11, 0x232
	l32r	a10, .LC71
	call8	__assert_func
.LVL147:
.L93:
	.loc 1 554 0
	l32r	a2, .LC62
	retw.n
.L94:
	.loc 1 556 0
	l32r	a2, .LC63
	.loc 1 565 0
	retw.n
.LFE26:
	.size	rtc_clk_cpu_freq_value, .-rtc_clk_cpu_freq_value
	.section	.text.rtc_clk_cpu_freq_from_mhz,"ax",@progbits
	.align	4
	.global	rtc_clk_cpu_freq_from_mhz
	.type	rtc_clk_cpu_freq_from_mhz, @function
rtc_clk_cpu_freq_from_mhz:
.LFB27:
	.loc 1 568 0
.LVL148:
	entry	sp, 32
.LCFI21:
	.loc 1 569 0
	movi	a8, 0xf0
	bne	a2, a8, .L96
	.loc 1 570 0
	movi.n	a2, 3
.LVL149:
	s32i.n	a2, a3, 0
	.loc 1 582 0
	movi.n	a2, 1
	retw.n
.LVL150:
.L96:
	.loc 1 571 0
	movi	a8, 0xa0
	bne	a2, a8, .L98
	.loc 1 572 0
	movi.n	a2, 2
.LVL151:
	s32i.n	a2, a3, 0
	.loc 1 582 0
	movi.n	a2, 1
	retw.n
.LVL152:
.L98:
	.loc 1 573 0
	movi.n	a8, 0x50
	bne	a2, a8, .L99
	.loc 1 574 0
	movi.n	a2, 1
.LVL153:
	s32i.n	a2, a3, 0
	retw.n
.LVL154:
.L99:
	.loc 1 575 0
	call8	rtc_clk_xtal_freq_get
.LVL155:
	bne	a2, a10, .L100
	.loc 1 576 0
	movi.n	a2, 0
.LVL156:
	s32i.n	a2, a3, 0
	.loc 1 582 0
	movi.n	a2, 1
	retw.n
.LVL157:
.L100:
	.loc 1 577 0
	bnei	a2, 2, .L101
	.loc 1 578 0
	movi.n	a2, 4
.LVL158:
	s32i.n	a2, a3, 0
	.loc 1 582 0
	movi.n	a2, 1
	retw.n
.LVL159:
.L101:
	.loc 1 580 0
	movi.n	a2, 0
.LVL160:
	.loc 1 583 0
	retw.n
.LFE27:
	.size	rtc_clk_cpu_freq_from_mhz, .-rtc_clk_cpu_freq_from_mhz
	.section	.text.rtc_clk_xtal_freq_update,"ax",@progbits
	.literal_position
	.literal .LC72, 1072988336
	.align	4
	.global	rtc_clk_xtal_freq_update
	.type	rtc_clk_xtal_freq_update, @function
rtc_clk_xtal_freq_update:
.LFB32:
	.loc 1 615 0
.LVL161:
	entry	sp, 32
.LCFI22:
.LBB120:
	.loc 1 616 0
	mov.n	a10, a2
	call8	clk_val_to_reg_val
.LVL162:
	l32r	a8, .LC72
	memw
	s32i.n	a10, a8, 0
	retw.n
.LBE120:
.LFE32:
	.size	rtc_clk_xtal_freq_update, .-rtc_clk_xtal_freq_update
	.section	.text.rtc_clk_apb_freq_update,"ax",@progbits
	.literal_position
	.literal .LC73, 1072988340
	.align	4
	.global	rtc_clk_apb_freq_update
	.type	rtc_clk_apb_freq_update, @function
rtc_clk_apb_freq_update:
.LFB34:
	.loc 1 656 0
.LVL163:
	entry	sp, 32
.LCFI23:
.LBB121:
	.loc 1 657 0
	srli	a10, a2, 12
	call8	clk_val_to_reg_val
.LVL164:
	l32r	a8, .LC73
	memw
	s32i.n	a10, a8, 0
	retw.n
.LBE121:
.LFE34:
	.size	rtc_clk_apb_freq_update, .-rtc_clk_apb_freq_update
	.section	.text.rtc_clk_cpu_freq_to_xtal,"ax",@progbits
	.literal_position
	.literal .LC74, 1072988284
	.literal .LC75, -14337
	.literal .LC76, 8192
	.literal .LC77, 1073111040
	.literal .LC78, 1072988272
	.literal .LC79, -402653185
	.literal .LC80, 1072693308
	.literal .LC81, 1000000
	.literal .LC82, s_cur_freq
	.align	4
	.type	rtc_clk_cpu_freq_to_xtal, @function
rtc_clk_cpu_freq_to_xtal:
.LFB21:
	.loc 1 385 0
	entry	sp, 32
.LCFI24:
	.loc 1 386 0
	call8	rtc_clk_xtal_freq_get
.LVL165:
	mov.n	a2, a10
.LVL166:
	.loc 1 387 0
	call8	ets_update_cpu_frequency
.LVL167:
.LBB122:
.LBB123:
	.loc 1 388 0
	l32r	a3, .LC74
	memw
	l32i.n	a9, a3, 0
.LBE123:
	l32r	a8, .LC75
	and	a9, a9, a8
	l32r	a8, .LC76
	or	a8, a9, a8
	memw
	s32i.n	a8, a3, 0
.LBE122:
.LBB124:
.LBB125:
	.loc 1 389 0
	l32r	a3, .LC77
	memw
	l32i.n	a9, a3, 0
.LBE125:
	movi	a8, -0x400
	and	a8, a9, a8
	memw
	s32i.n	a8, a3, 0
.LBE124:
.LBB126:
.LBB127:
	.loc 1 390 0
	l32r	a3, .LC78
	memw
	l32i.n	a9, a3, 0
.LBE127:
	l32r	a8, .LC79
	and	a8, a9, a8
	memw
	s32i.n	a8, a3, 0
.LBE126:
	.loc 1 391 0
	movi.n	a3, 0
	l32r	a8, .LC80
	memw
	s32i.n	a3, a8, 0
	.loc 1 393 0
	l32r	a10, .LC81
	mull	a10, a2, a10
	call8	rtc_clk_apb_freq_update
.LVL168:
	.loc 1 394 0
	l32r	a2, .LC82
.LVL169:
	s32i.n	a3, a2, 0
	retw.n
.LFE21:
	.size	rtc_clk_cpu_freq_to_xtal, .-rtc_clk_cpu_freq_to_xtal
	.section	.text.rtc_clk_cpu_freq_set,"ax",@progbits
	.literal_position
	.literal .LC83, 1072988284
	.literal .LC84, -14337
	.literal .LC85, 8192
	.literal .LC86, 1072988272
	.literal .LC87, -402653185
	.literal .LC88, 1073111040
	.literal .LC89, 1072693308
	.literal .LC90, 1072988160
	.literal .LC91, s_cur_pll
	.literal .LC92, 1000000
	.literal .LC93, 1072988208
	.literal .LC94, 262144
	.literal .LC95, 2000000
	.literal .LC96, 4096
	.literal .LC97, -263489
	.literal .LC98, 134217728
	.literal .LC99, 80000000
	.literal .LC100, s_cur_freq
	.align	4
	.global	rtc_clk_cpu_freq_set
	.type	rtc_clk_cpu_freq_set, @function
rtc_clk_cpu_freq_set:
.LFB24:
	.loc 1 450 0
.LVL170:
	entry	sp, 32
.LCFI25:
	.loc 1 451 0
	call8	rtc_clk_xtal_freq_get
.LVL171:
	mov.n	a3, a10
.LVL172:
.LBB128:
.LBB129:
	.loc 1 453 0
	l32r	a4, .LC83
	memw
	l32i.n	a9, a4, 0
.LBE129:
	l32r	a8, .LC84
	and	a9, a9, a8
	l32r	a8, .LC85
	or	a8, a9, a8
	memw
	s32i.n	a8, a4, 0
.LBE128:
.LBB130:
.LBB131:
	.loc 1 454 0
	l32r	a4, .LC86
	memw
	l32i.n	a9, a4, 0
.LBE131:
	l32r	a8, .LC87
	and	a8, a9, a8
	memw
	s32i.n	a8, a4, 0
.LBE130:
.LBB132:
.LBB133:
	.loc 1 455 0
	l32r	a4, .LC88
	memw
	l32i.n	a9, a4, 0
.LBE133:
	movi	a8, -0x400
	and	a8, a9, a8
	memw
	s32i.n	a8, a4, 0
.LBE132:
	.loc 1 456 0
	call8	ets_update_cpu_frequency
.LVL173:
	.loc 1 461 0
	call8	rtc_clk_wait_for_slow_cycle
.LVL174:
.LBB134:
.LBB135:
	.loc 2 79 0
	l32r	a4, .LC89
	mov.n	a10, a4
	call8	esp_dport_access_reg_read
.LVL175:
.LBE135:
.LBE134:
	.loc 1 463 0
	movi.n	a8, -4
	and	a10, a10, a8
	memw
	s32i.n	a10, a4, 0
.LBB136:
.LBB137:
	.loc 1 464 0
	l32r	a9, .LC90
	memw
	l32i.n	a4, a9, 0
.LBE137:
	movi	a8, 0x540
	or	a8, a4, a8
	memw
	s32i.n	a8, a9, 0
.LBE136:
	.loc 1 467 0
	movi.n	a8, 0
	l32r	a4, .LC91
	s32i.n	a8, a4, 0
	.loc 1 468 0
	l32r	a10, .LC92
	mull	a10, a3, a10
	call8	rtc_clk_apb_freq_update
.LVL176:
.LBB138:
.LBB139:
	.loc 1 471 0
	l32r	a4, .LC93
	memw
	l32i.n	a4, a4, 0
.LVL177:
.LBE139:
.LBE138:
	.loc 1 472 0
	bbci	a4, 23, .L106
.LBB140:
.LBB141:
	.loc 1 474 0
	l32r	a8, .LC90
	memw
	l32i.n	a9, a8, 0
.LBE141:
	l32r	a4, .LC94
.LVL178:
	or	a4, a9, a4
	memw
	s32i.n	a4, a8, 0
.L106:
.LBE140:
	.loc 1 477 0
	beqz.n	a2, .L107
	.loc 1 479 0
	bnei	a2, 4, .L108
.LBB142:
.LBB143:
	.loc 1 481 0
	l32r	a8, .LC88
	memw
	l32i.n	a9, a8, 0
.LBE143:
	movi	a4, -0x400
	and	a4, a9, a4
	srli	a3, a3, 1
.LVL179:
	addi.n	a3, a3, -1
	extui	a3, a3, 0, 10
	or	a3, a4, a3
	memw
	s32i.n	a3, a8, 0
.LBE142:
	.loc 1 482 0
	movi.n	a10, 2
	call8	ets_update_cpu_frequency
.LVL180:
	.loc 1 483 0
	l32r	a10, .LC95
	call8	rtc_clk_apb_freq_update
.LVL181:
.LBB144:
.LBB145:
	.loc 1 485 0
	l32r	a8, .LC83
	memw
	l32i.n	a4, a8, 0
.LBE145:
	l32r	a3, .LC84
	and	a4, a4, a3
	l32r	a3, .LC96
	or	a3, a4, a3
	memw
	s32i.n	a3, a8, 0
.LBE144:
	j	.L107
.LVL182:
.L108:
.LBB146:
.LBB147:
	.loc 1 488 0
	l32r	a8, .LC90
	memw
	l32i.n	a9, a8, 0
.LBE147:
	l32r	a4, .LC97
	and	a4, a9, a4
	memw
	s32i.n	a4, a8, 0
.LBE146:
	.loc 1 491 0
	mov.n	a11, a2
	mov.n	a10, a3
	call8	rtc_clk_bbpll_set
.LVL183:
	.loc 1 492 0
	bnei	a2, 1, .L109
.LVL184:
.LBB148:
.LBB149:
	.loc 2 79 0
	l32r	a4, .LC89
	mov.n	a10, a4
	call8	esp_dport_access_reg_read
.LVL185:
.LBE149:
.LBE148:
	.loc 1 493 0
	movi.n	a3, -4
.LVL186:
	and	a10, a10, a3
	memw
	s32i.n	a10, a4, 0
	.loc 1 494 0
	movi.n	a10, 0x50
	call8	ets_update_cpu_frequency
.LVL187:
	.loc 1 495 0
	movi.n	a4, 1
	l32r	a3, .LC91
	s32i.n	a4, a3, 0
	j	.L110
.LVL188:
.L109:
	.loc 1 496 0
	bnei	a2, 2, .L111
.LVL189:
.LBB150:
.LBB151:
	.loc 2 79 0
	l32r	a5, .LC89
	mov.n	a10, a5
	call8	esp_dport_access_reg_read
.LVL190:
.LBE151:
.LBE150:
	.loc 1 497 0
	movi.n	a3, -4
.LVL191:
	and	a10, a10, a3
	movi.n	a4, 1
	or	a3, a10, a4
	memw
	s32i.n	a3, a5, 0
	.loc 1 498 0
	movi	a10, 0xa0
	call8	ets_update_cpu_frequency
.LVL192:
	.loc 1 499 0
	l32r	a3, .LC91
	s32i.n	a4, a3, 0
	j	.L110
.LVL193:
.L111:
	.loc 1 500 0
	bnei	a2, 3, .L110
.LVL194:
.LBB152:
.LBB153:
	.loc 2 79 0
	l32r	a5, .LC89
	mov.n	a10, a5
	call8	esp_dport_access_reg_read
.LVL195:
.LBE153:
.LBE152:
	.loc 1 501 0
	movi.n	a3, -4
.LVL196:
	and	a10, a10, a3
	movi.n	a4, 2
	or	a3, a10, a4
	memw
	s32i.n	a3, a5, 0
	.loc 1 502 0
	movi	a10, 0xf0
	call8	ets_update_cpu_frequency
.LVL197:
	.loc 1 503 0
	l32r	a3, .LC91
	s32i.n	a4, a3, 0
.LVL198:
.L110:
.LBB154:
.LBB155:
	.loc 1 505 0
	l32r	a8, .LC86
	memw
	l32i.n	a4, a8, 0
.LBE155:
	l32r	a3, .LC87
	and	a4, a4, a3
	l32r	a3, .LC98
	or	a3, a4, a3
	memw
	s32i.n	a3, a8, 0
.LBE154:
	.loc 1 506 0
	call8	rtc_clk_wait_for_slow_cycle
.LVL199:
	.loc 1 507 0
	l32r	a10, .LC99
	call8	rtc_clk_apb_freq_update
.LVL200:
.L107:
	.loc 1 509 0
	l32r	a3, .LC100
	s32i.n	a2, a3, 0
	retw.n
.LFE24:
	.size	rtc_clk_cpu_freq_set, .-rtc_clk_cpu_freq_set
	.section	.text.rtc_clk_cpu_freq_to_pll,"ax",@progbits
	.literal_position
	.literal .LC101, s_cur_pll
	.literal .LC102, 1072988284
	.literal .LC103, -14337
	.literal .LC104, 8192
	.literal .LC105, 1072693308
	.literal .LC106, 14336
	.literal .LC107, 1072988272
	.literal .LC108, -402653185
	.literal .LC109, 134217728
	.literal .LC110, 80000000
	.literal .LC111, s_cur_freq
	.align	4
	.type	rtc_clk_cpu_freq_to_pll, @function
rtc_clk_cpu_freq_to_pll:
.LFB22:
	.loc 1 405 0
.LVL201:
	entry	sp, 32
.LCFI26:
.LVL202:
	.loc 1 407 0
	l32r	a8, .LC101
	l32i.n	a8, a8, 0
	beqz.n	a8, .L113
	.loc 1 407 0 is_stmt 0 discriminator 1
	bnei	a2, 3, .L114
	.loc 1 408 0 is_stmt 1
	beqi	a8, 1, .L113
.L114:
	.loc 1 408 0 is_stmt 0 discriminator 1
	beqi	a2, 3, .L115
	.loc 1 409 0 is_stmt 1
	bnei	a8, 2, .L115
.L113:
	.loc 1 411 0
	mov.n	a10, a2
	call8	rtc_clk_cpu_freq_set
.LVL203:
	.loc 1 412 0
	retw.n
.L115:
	.loc 1 415 0
	bnei	a2, 1, .L117
.LBB156:
.LBB157:
	.loc 1 416 0
	l32r	a9, .LC102
	memw
	l32i.n	a8, a9, 0
.LBE157:
	l32r	a3, .LC103
	and	a8, a8, a3
	l32r	a3, .LC104
	or	a3, a8, a3
	memw
	s32i.n	a3, a9, 0
.LBE156:
	.loc 1 417 0
	movi.n	a8, 0
	l32r	a3, .LC105
	memw
	s32i.n	a8, a3, 0
.LVL204:
	.loc 1 418 0
	movi.n	a3, 0x50
	j	.L118
.LVL205:
.L117:
	.loc 1 419 0
	bnei	a2, 2, .L119
.LBB158:
.LBB159:
	.loc 1 420 0
	l32r	a9, .LC102
	memw
	l32i.n	a8, a9, 0
.LBE159:
	l32r	a3, .LC103
	and	a8, a8, a3
	l32r	a3, .LC104
	or	a3, a8, a3
	memw
	s32i.n	a3, a9, 0
.LBE158:
	.loc 1 421 0
	movi.n	a8, 1
	l32r	a3, .LC105
	memw
	s32i.n	a8, a3, 0
.LVL206:
	.loc 1 422 0
	movi	a3, 0xa0
	j	.L118
.LVL207:
.L119:
	.loc 1 423 0
	bnei	a2, 3, .L120
.LBB160:
.LBB161:
	.loc 1 424 0
	l32r	a8, .LC102
	memw
	l32i.n	a9, a8, 0
.LBE161:
	l32r	a3, .LC106
	or	a3, a9, a3
	memw
	s32i.n	a3, a8, 0
.LBE160:
	.loc 1 425 0
	movi.n	a8, 2
	l32r	a3, .LC105
	memw
	s32i.n	a8, a3, 0
.LVL208:
	.loc 1 426 0
	movi	a3, 0xf0
	j	.L118
.LVL209:
.L120:
	.loc 1 406 0
	movi.n	a3, 0
.LVL210:
.L118:
.LBB162:
.LBB163:
	.loc 1 428 0
	l32r	a10, .LC107
	memw
	l32i.n	a9, a10, 0
.LBE163:
	l32r	a8, .LC108
	and	a9, a9, a8
	l32r	a8, .LC109
	or	a8, a9, a8
	memw
	s32i.n	a8, a10, 0
.LBE162:
	.loc 1 429 0
	l32r	a10, .LC110
	call8	rtc_clk_apb_freq_update
.LVL211:
	.loc 1 430 0
	mov.n	a10, a3
	call8	ets_update_cpu_frequency
.LVL212:
	.loc 1 431 0
	l32r	a3, .LC111
.LVL213:
	s32i.n	a2, a3, 0
	retw.n
.LFE22:
	.size	rtc_clk_cpu_freq_to_pll, .-rtc_clk_cpu_freq_to_pll
	.section	.text.rtc_clk_cpu_freq_set_fast,"ax",@progbits
	.literal_position
	.literal .LC112, s_cur_freq
	.align	4
	.global	rtc_clk_cpu_freq_set_fast
	.type	rtc_clk_cpu_freq_set_fast, @function
rtc_clk_cpu_freq_set_fast:
.LFB23:
	.loc 1 435 0
.LVL214:
	entry	sp, 32
.LCFI27:
	.loc 1 436 0
	l32r	a8, .LC112
	l32i.n	a8, a8, 0
	beq	a8, a2, .L121
	.loc 1 438 0
	beqi	a2, 4, .L123
	.loc 1 438 0 is_stmt 0 discriminator 1
	bnei	a8, 4, .L124
.L123:
	.loc 1 440 0 is_stmt 1
	mov.n	a10, a2
	call8	rtc_clk_cpu_freq_set
.LVL215:
	retw.n
.L124:
	.loc 1 441 0
	bnez.n	a2, .L125
	.loc 1 442 0
	call8	rtc_clk_cpu_freq_to_xtal
.LVL216:
	retw.n
.L125:
	.loc 1 443 0
	beqz.n	a2, .L121
	.loc 1 444 0
	mov.n	a10, a2
	call8	rtc_clk_cpu_freq_to_pll
.LVL217:
	.loc 1 445 0
	call8	rtc_clk_wait_for_slow_cycle
.LVL218:
.L121:
	retw.n
.LFE23:
	.size	rtc_clk_cpu_freq_set_fast, .-rtc_clk_cpu_freq_set_fast
	.section	.text.rtc_clk_apb_freq_get,"ax",@progbits
	.literal_position
	.literal .LC113, 1072988340
	.literal .LC114, 500000
	.literal .LC115, 1125899907
	.literal .LC116, 1000000
	.align	4
	.global	rtc_clk_apb_freq_get
	.type	rtc_clk_apb_freq_get, @function
rtc_clk_apb_freq_get:
.LFB35:
	.loc 1 661 0
	entry	sp, 32
.LCFI28:
.LBB164:
	.loc 1 662 0
	l32r	a2, .LC113
	memw
	l32i.n	a10, a2, 0
.LBE164:
	call8	reg_val_to_clk_val
.LVL219:
	slli	a10, a10, 12
.LVL220:
	.loc 1 664 0
	l32r	a8, .LC114
	add.n	a10, a10, a8
.LVL221:
	.loc 1 665 0
	l32r	a8, .LC115
	muluh	a10, a10, a8
.LVL222:
	extui	a10, a10, 18, 14
.LVL223:
	.loc 1 667 0
	l32r	a2, .LC116
	mull	a2, a10, a2
	retw.n
.LFE35:
	.size	rtc_clk_apb_freq_get, .-rtc_clk_apb_freq_get
	.section	.rodata.str1.4
	.align	4
.LC127:
	.string	"\033[0;33mW (%d) %s: Can't estimate XTAL frequency, assuming 26MHz\033[0m\n"
	.align	4
.LC129:
	.string	"\033[0;33mW (%d) %s: Possibly invalid CONFIG_ESP32_XTAL_FREQ setting (%dMHz). Detected %d MHz.\033[0m\n"
	.align	4
.LC133:
	.ascii	"\"(Cannot use REG_GET_"
	.string	"FIELD for DPORT registers use DPORT_REG_GET_FIELD)\" && (!((((((0x3ff40000 + (uart_no) * 0x10000 + ( (uart_no) > 1 ? 0xe000 : 0 ) ) + 0x1C))) >= 0x3ff00000) && ((((0x3ff40000 + (uart_no) * 0x10000 + ( (uart_no) > 1 ? 0xe000 : 0 ) ) + 0x1C))) <= 0x3ff13FFC))"
	.align	4
.LC136:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/uart.h"
	.align	4
.LC138:
	.ascii	"\"(Cannot us"
	.string	"e REG_READ for DPORT registers use DPORT_REG_READ)\" && (!((((((0x3ff40000 + (uart_no) * 0x10000 + ( (uart_no) > 1 ? 0xe000 : 0 ) ) + 0x1C))) >= 0x3ff00000) && ((((0x3ff40000 + (uart_no) * 0x10000 + ( (uart_no) > 1 ? 0xe000 : 0 ) ) + 0x1C))) <= 0x3ff13FFC))"
	.section	.text.rtc_clk_init,"ax",@progbits
	.literal_position
	.literal .LC117, 1072988272
	.literal .LC118, 1072988284
	.literal .LC119, -4177921
	.literal .LC120, -33423361
	.literal .LC121, -28673
	.literal .LC122, 1610670148
	.literal .LC123, 261888
	.literal .LC124, -147457
	.literal .LC125, 1072988336
	.literal .LC126, .LC20
	.literal .LC128, .LC127
	.literal .LC130, .LC129
	.literal .LC140, 1072955420
	.literal .LC141, 1000000
	.literal .LC142, 1125899907
	.literal .LC143, 12288
	.literal .LC144, 4096
	.align	4
	.global	rtc_clk_init
	.type	rtc_clk_init, @function
rtc_clk_init:
.LFB36:
	.loc 1 671 0
	entry	sp, 64
.LCFI29:
	s32i.n	a2, sp, 16
	s32i.n	a3, sp, 20
	.loc 1 672 0
	call8	rtc_clk_cpu_freq_get
.LVL224:
	mov.n	a4, a10
.LVL225:
.LBB187:
.LBB188:
	.loc 1 683 0
	l32r	a2, .LC117
	memw
	l32i.n	a2, a2, 0
.LBE188:
	extui	a2, a2, 27, 2
.LBE187:
	bnei	a2, 1, .L128
	.loc 1 684 0
	movi.n	a10, 0
	call8	rtc_clk_cpu_freq_set
.LVL226:
.L128:
.LBB189:
.LBB190:
	.loc 1 695 0
	l32r	a5, .LC118
	memw
	l32i.n	a3, a5, 0
.LBE190:
	l32r	a2, .LC119
	and	a3, a3, a2
	l32i.n	a2, sp, 16
	extui	a2, a2, 17, 8
	slli	a2, a2, 14
	or	a2, a2, a3
	memw
	s32i.n	a2, a5, 0
.LBE189:
.LBB191:
.LBB192:
	.loc 1 696 0
	l32r	a5, .LC117
	memw
	l32i.n	a3, a5, 0
.LBE192:
	l32r	a2, .LC120
	and	a3, a3, a2
	l8ui	a2, sp, 20
	slli	a2, a2, 17
	or	a2, a2, a3
	memw
	s32i.n	a2, a5, 0
.LBE191:
.LBB193:
.LBB194:
	.loc 1 699 0
	memw
	l32i.n	a3, a5, 0
.LBE194:
	l32r	a2, .LC121
	and	a3, a3, a2
	l32i.n	a2, sp, 16
	extui	a2, a2, 14, 3
	slli	a2, a2, 12
	or	a2, a2, a3
	memw
	s32i.n	a2, a5, 0
.LBE193:
.LBB195:
.LBB196:
	.loc 1 702 0
	l32r	a2, .LC122
	memw
	l32i.n	a5, a2, 0
.LBE196:
	l32r	a3, .LC123
	or	a3, a5, a3
	memw
	s32i.n	a3, a2, 0
.LBE195:
.LBB197:
.LBB198:
	.loc 1 703 0
	memw
	l32i.n	a5, a2, 0
.LBE198:
	l32r	a3, .LC124
	and	a3, a5, a3
	memw
	s32i.n	a3, a2, 0
.LBE197:
	.loc 1 706 0
	l8ui	a2, sp, 16
.LVL227:
	.loc 1 707 0
	bnez.n	a2, .L129
.LBB199:
	.loc 1 708 0
	l32r	a2, .LC125
.LVL228:
	memw
	l32i.n	a10, a2, 0
.LBE199:
	call8	clk_val_is_valid
.LVL229:
	beqz.n	a10, .L130
	.loc 1 710 0
	call8	rtc_clk_xtal_freq_get
.LVL230:
	mov.n	a2, a10
.LVL231:
	j	.L137
.LVL232:
.L130:
	.loc 1 713 0
	call8	rtc_clk_xtal_freq_estimate
.LVL233:
	mov.n	a2, a10
.LVL234:
	.loc 1 714 0
	bnez.n	a10, .L137
	.loc 1 715 0 discriminator 4
	call8	esp_log_timestamp
.LVL235:
	l32r	a11, .LC126
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC128
	movi.n	a10, 2
	call8	esp_log_write
.LVL236:
	.loc 1 716 0 discriminator 4
	movi.n	a2, 0x1a
	j	.L137
.LVL237:
.L129:
.LBB200:
	.loc 1 719 0
	l32r	a3, .LC125
	memw
	l32i.n	a10, a3, 0
.LBE200:
	call8	clk_val_is_valid
.LVL238:
	bnez.n	a10, .L137
.LBB201:
	.loc 1 724 0
	call8	rtc_clk_xtal_freq_estimate
.LVL239:
	mov.n	a3, a10
.LVL240:
	.loc 1 725 0
	beq	a2, a10, .L137
	.loc 1 726 0 discriminator 4
	call8	esp_log_timestamp
.LVL241:
	l32r	a11, .LC126
	s32i.n	a3, sp, 0
	mov.n	a15, a2
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC130
	movi.n	a10, 2
	call8	esp_log_write
.LVL242:
.L137:
.LBE201:
.LBB202:
.LBB203:
.LBB204:
.LBB205:
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/uart.h"
	.loc 3 270 0
	l32r	a8, .LC140
	memw
	l32i.n	a8, a8, 0
.LBE205:
	extui	a8, a8, 24, 4
.LBE204:
	bnez.n	a8, .L137
.LBE203:
.LBE202:
	.loc 1 731 0
	mov.n	a10, a2
	call8	rtc_clk_xtal_freq_update
.LVL243:
	.loc 1 732 0
	l32r	a10, .LC141
	mull	a10, a2, a10
	call8	rtc_clk_apb_freq_update
.LVL244:
	.loc 1 734 0
	l32i.n	a5, sp, 16
	extui	a5, a5, 8, 3
	mov.n	a10, a5
	call8	rtc_clk_cpu_freq_set
.LVL245:
	.loc 1 737 0
	mov.n	a10, a4
	call8	rtc_clk_cpu_freq_value
.LVL246:
	l32r	a2, .LC142
	muluh	a3, a10, a2
	extui	a3, a3, 18, 14
.LVL247:
	.loc 1 738 0
	mov.n	a10, a5
	call8	rtc_clk_cpu_freq_value
.LVL248:
	muluh	a2, a10, a2
	extui	a8, a2, 18, 14
.LVL249:
.LBB206:
.LBB207:
	.loc 1 739 0
#APP
# 739 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_clk.c" 1
	rsr.ccount a2
# 0 "" 2
.LVL250:
#NO_APP
.LBE207:
	mull	a2, a2, a8
.LVL251:
	quou	a2, a2, a3
.LVL252:
#APP
# 739 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_clk.c" 1
	wsr.ccount a2
# 0 "" 2
#NO_APP
.LBE206:
	.loc 1 742 0
	l32i.n	a3, sp, 16
.LVL253:
	l32r	a2, .LC143
.LVL254:
	and	a2, a3, a2
	l32r	a4, .LC144
.LVL255:
	bne	a2, a4, .L135
	.loc 1 743 0
	movi.n	a10, 1
	call8	rtc_clk_32k_enable
.LVL256:
.L135:
	.loc 1 745 0
	bbci	a3, 11, .L136
.LBB208:
	.loc 1 746 0
	addmi	a2, a2, -0x2000
	movi.n	a10, 1
	movi.n	a11, 0
	moveqz	a11, a10, a2
.LVL257:
	.loc 1 747 0
	call8	rtc_clk_8m_enable
.LVL258:
.L136:
.LBE208:
	.loc 1 749 0
	l32i.n	a10, sp, 16
	extui	a10, a10, 11, 1
	call8	rtc_clk_fast_freq_set
.LVL259:
	.loc 1 750 0
	l32i.n	a10, sp, 16
	extui	a10, a10, 12, 2
	call8	rtc_clk_slow_freq_set
.LVL260:
	retw.n
.LFE36:
	.size	rtc_clk_init, .-rtc_clk_init
	.section	.rodata.__func__$2427,"a",@progbits
	.align	4
	.type	__func__$2427, @object
	.size	__func__$2427, 18
__func__$2427:
	.string	"uart_tx_wait_idle"
	.section	.rodata.__func__$3596,"a",@progbits
	.align	4
	.type	__func__$3596, @object
	.size	__func__$3596, 23
__func__$3596:
	.string	"rtc_clk_cpu_freq_value"
	.section	.rodata.__func__$3575,"a",@progbits
	.align	4
	.type	__func__$3575, @object
	.size	__func__$3575, 21
__func__$3575:
	.string	"rtc_clk_cpu_freq_get"
	.section	.bss.s_cur_freq,"aw",@nobits
	.align	4
	.type	s_cur_freq, @object
	.size	s_cur_freq, 4
s_cur_freq:
	.zero	4
	.section	.bss.s_cur_pll,"aw",@nobits
	.align	4
	.type	s_cur_pll, @object
	.size	s_cur_pll, 4
s_cur_pll:
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
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI0-.LFB7
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI1-.LFB28
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI2-.LFB29
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI3-.LFB30
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x4
	.4byte	.LCFI4-.LFB8
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x4
	.4byte	.LCFI5-.LFB9
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI6-.LFB10
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x4
	.4byte	.LCFI7-.LFB11
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI8-.LFB12
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI9-.LFB13
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI10-.LFB33
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI11-.LFB14
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI12-.LFB15
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI13-.LFB16
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI14-.LFB17
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI15-.LFB18
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI16-.LFB19
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI17-.LFB20
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI18-.LFB31
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE36:
.LSFDE38:
	.4byte	.LEFDE38-.LASFDE38
.LASFDE38:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI19-.LFB25
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE38:
.LSFDE40:
	.4byte	.LEFDE40-.LASFDE40
.LASFDE40:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI20-.LFB26
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE40:
.LSFDE42:
	.4byte	.LEFDE42-.LASFDE42
.LASFDE42:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI21-.LFB27
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE42:
.LSFDE44:
	.4byte	.LEFDE44-.LASFDE44
.LASFDE44:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI22-.LFB32
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE44:
.LSFDE46:
	.4byte	.LEFDE46-.LASFDE46
.LASFDE46:
	.4byte	.Lframe0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI23-.LFB34
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE46:
.LSFDE48:
	.4byte	.LEFDE48-.LASFDE48
.LASFDE48:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI24-.LFB21
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE48:
.LSFDE50:
	.4byte	.LEFDE50-.LASFDE50
.LASFDE50:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI25-.LFB24
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE50:
.LSFDE52:
	.4byte	.LEFDE52-.LASFDE52
.LASFDE52:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI26-.LFB22
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE52:
.LSFDE54:
	.4byte	.LEFDE54-.LASFDE54
.LASFDE54:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI27-.LFB23
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE54:
.LSFDE56:
	.4byte	.LEFDE56-.LASFDE56
.LASFDE56:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x4
	.4byte	.LCFI28-.LFB35
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE56:
.LSFDE58:
	.4byte	.LEFDE58-.LASFDE58
.LASFDE58:
	.4byte	.Lframe0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x4
	.4byte	.LCFI29-.LFB36
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE58:
	.text
.Letext0:
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/rtc.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/log/include/esp_log.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/gpio.h"
	.file 9 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/ets_sys.h"
	.file 10 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/i2c_rtc_clk.h"
	.file 11 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/assert.h"
	.file 12 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_dport_access.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1758
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF149
	.byte	0xc
	.4byte	.LASF150
	.4byte	.LASF151
	.4byte	.Ldebug_ranges0+0x30
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
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x4
	.byte	0x1e
	.4byte	0x77
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x5
	.byte	0x15
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x5
	.byte	0x2d
	.4byte	0x53
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x5
	.byte	0x39
	.4byte	0x6c
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF13
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF16
	.uleb128 0x5
	.byte	0x4
	.4byte	0xc1
	.uleb128 0x6
	.4byte	0xb4
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF17
	.uleb128 0x7
	.byte	0x4
	.4byte	0x5e
	.byte	0x6
	.byte	0x3c
	.4byte	0xf2
	.uleb128 0x8
	.4byte	.LASF18
	.byte	0
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0x28
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0x1a
	.uleb128 0x8
	.4byte	.LASF21
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x6
	.byte	0x41
	.4byte	0xcd
	.uleb128 0x7
	.byte	0x4
	.4byte	0x5e
	.byte	0x6
	.byte	0x46
	.4byte	0x128
	.uleb128 0x8
	.4byte	.LASF23
	.byte	0
	.uleb128 0x8
	.4byte	.LASF24
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF25
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF26
	.byte	0x3
	.uleb128 0x8
	.4byte	.LASF27
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x6
	.byte	0x4c
	.4byte	0xfd
	.uleb128 0x7
	.byte	0x4
	.4byte	0x5e
	.byte	0x6
	.byte	0x51
	.4byte	0x152
	.uleb128 0x8
	.4byte	.LASF29
	.byte	0
	.uleb128 0x8
	.4byte	.LASF30
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF31
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF32
	.byte	0x6
	.byte	0x55
	.4byte	0x133
	.uleb128 0x7
	.byte	0x4
	.4byte	0x5e
	.byte	0x6
	.byte	0x5a
	.4byte	0x176
	.uleb128 0x8
	.4byte	.LASF33
	.byte	0
	.uleb128 0x8
	.4byte	.LASF34
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF35
	.byte	0x6
	.byte	0x5d
	.4byte	0x15d
	.uleb128 0x7
	.byte	0x4
	.4byte	0x5e
	.byte	0x6
	.byte	0x65
	.4byte	0x1a0
	.uleb128 0x8
	.4byte	.LASF36
	.byte	0
	.uleb128 0x8
	.4byte	.LASF37
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF38
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.byte	0x8
	.byte	0x6
	.byte	0x6e
	.4byte	0x212
	.uleb128 0xa
	.4byte	.LASF39
	.byte	0x6
	.byte	0x6f
	.4byte	0xf2
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xa
	.4byte	.LASF40
	.byte	0x6
	.byte	0x70
	.4byte	0x128
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0xa
	.4byte	.LASF41
	.byte	0x6
	.byte	0x71
	.4byte	0x176
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xa
	.4byte	.LASF42
	.byte	0x6
	.byte	0x72
	.4byte	0x152
	.byte	0x4
	.byte	0x2
	.byte	0x12
	.byte	0
	.uleb128 0xa
	.4byte	.LASF43
	.byte	0x6
	.byte	0x73
	.4byte	0x89
	.byte	0x4
	.byte	0x3
	.byte	0xf
	.byte	0
	.uleb128 0xa
	.4byte	.LASF44
	.byte	0x6
	.byte	0x74
	.4byte	0x89
	.byte	0x4
	.byte	0x8
	.byte	0x7
	.byte	0
	.uleb128 0xa
	.4byte	.LASF45
	.byte	0x6
	.byte	0x75
	.4byte	0x89
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF46
	.byte	0x6
	.byte	0x76
	.4byte	0x1a0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x5e
	.byte	0x7
	.byte	0x1f
	.4byte	0x24e
	.uleb128 0x8
	.4byte	.LASF47
	.byte	0
	.uleb128 0x8
	.4byte	.LASF48
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF49
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF50
	.byte	0x3
	.uleb128 0x8
	.4byte	.LASF51
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF52
	.byte	0x5
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x5e
	.byte	0x1
	.byte	0x66
	.4byte	0x26d
	.uleb128 0x8
	.4byte	.LASF53
	.byte	0
	.uleb128 0x8
	.4byte	.LASF54
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF55
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF56
	.byte	0x1
	.byte	0x6a
	.4byte	0x24e
	.uleb128 0xb
	.4byte	.LASF152
	.byte	0x2
	.byte	0x4a
	.4byte	0x89
	.byte	0x3
	.4byte	0x294
	.uleb128 0xc
	.string	"reg"
	.byte	0x2
	.byte	0x4a
	.4byte	0x89
	.byte	0
	.uleb128 0xd
	.4byte	.LASF78
	.byte	0x1
	.byte	0x71
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2e0
	.uleb128 0xe
	.string	"dac"
	.byte	0x1
	.byte	0x71
	.4byte	0x4c
	.4byte	.LLST0
	.uleb128 0xf
	.4byte	.LASF57
	.byte	0x1
	.byte	0x71
	.4byte	0x4c
	.4byte	.LLST1
	.uleb128 0xf
	.4byte	.LASF58
	.byte	0x1
	.byte	0x71
	.4byte	0x4c
	.4byte	.LLST2
	.uleb128 0x10
	.4byte	.LASF63
	.4byte	0x2f0
	.byte	0
	.uleb128 0x11
	.4byte	0xb4
	.4byte	0x2f0
	.uleb128 0x12
	.4byte	0xa6
	.byte	0x1b
	.byte	0
	.uleb128 0x6
	.4byte	0x2e0
	.uleb128 0x13
	.4byte	.LASF59
	.byte	0x1
	.2byte	0x24d
	.4byte	0xc6
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x320
	.uleb128 0x14
	.string	"val"
	.byte	0x1
	.2byte	0x24d
	.4byte	0x89
	.4byte	.LLST3
	.byte	0
	.uleb128 0x13
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x253
	.4byte	0x89
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x34b
	.uleb128 0x14
	.string	"val"
	.byte	0x1
	.2byte	0x253
	.4byte	0x89
	.4byte	.LLST4
	.byte	0
	.uleb128 0x13
	.4byte	.LASF61
	.byte	0x1
	.2byte	0x257
	.4byte	0x89
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x376
	.uleb128 0x14
	.string	"val"
	.byte	0x1
	.2byte	0x257
	.4byte	0x89
	.4byte	.LLST5
	.byte	0
	.uleb128 0x15
	.4byte	.LASF64
	.byte	0x1
	.byte	0x7d
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3bd
	.uleb128 0xf
	.4byte	.LASF62
	.byte	0x1
	.byte	0x7d
	.4byte	0xc6
	.4byte	.LLST6
	.uleb128 0x10
	.4byte	.LASF63
	.4byte	0x3cd
	.uleb128 0x16
	.4byte	.LVL14
	.4byte	0x294
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	0xb4
	.4byte	0x3cd
	.uleb128 0x12
	.4byte	0xa6
	.byte	0x12
	.byte	0
	.uleb128 0x6
	.4byte	0x3bd
	.uleb128 0x15
	.4byte	.LASF65
	.byte	0x1
	.byte	0x8a
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x557
	.uleb128 0xf
	.4byte	.LASF66
	.byte	0x1
	.byte	0x8a
	.4byte	0x89
	.4byte	.LLST7
	.uleb128 0x10
	.4byte	.LASF63
	.4byte	0x567
	.uleb128 0x18
	.4byte	.LBB61
	.4byte	.LBE61-.LBB61
	.4byte	0x52a
	.uleb128 0x19
	.4byte	.LASF67
	.byte	0x1
	.byte	0x8d
	.4byte	0x56c
	.4byte	.LLST8
	.uleb128 0x19
	.4byte	.LASF68
	.byte	0x1
	.byte	0x8e
	.4byte	0x56c
	.4byte	.LLST9
	.uleb128 0x19
	.4byte	.LASF69
	.byte	0x1
	.byte	0x8f
	.4byte	0x56c
	.4byte	.LLST10
	.uleb128 0x19
	.4byte	.LASF70
	.byte	0x1
	.byte	0x90
	.4byte	0x56c
	.4byte	.LLST11
	.uleb128 0x19
	.4byte	.LASF71
	.byte	0x1
	.byte	0x96
	.4byte	0x56c
	.4byte	.LLST12
	.uleb128 0x1a
	.4byte	.LVL18
	.4byte	0x16c8
	.4byte	0x46b
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL19
	.4byte	0x16c8
	.4byte	0x47f
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x21
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL20
	.4byte	0x16d3
	.4byte	0x4a1
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL21
	.4byte	0x16d3
	.4byte	0x4c3
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL22
	.4byte	0x16de
	.4byte	0x4d6
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x3f
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL23
	.4byte	0x16d3
	.4byte	0x4f8
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL24
	.4byte	0x16de
	.4byte	0x50b
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x3f
	.byte	0
	.uleb128 0x16
	.4byte	.LVL26
	.4byte	0x16d3
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL28
	.4byte	0x16de
	.4byte	0x53d
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x37
	.byte	0
	.uleb128 0x16
	.4byte	.LVL29
	.4byte	0x294
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	0xb4
	.4byte	0x567
	.uleb128 0x12
	.4byte	0xa6
	.byte	0x15
	.byte	0
	.uleb128 0x6
	.4byte	0x557
	.uleb128 0x6
	.4byte	0x89
	.uleb128 0x1b
	.4byte	.LASF72
	.byte	0x1
	.byte	0xa9
	.4byte	0xc6
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x594
	.uleb128 0x10
	.4byte	.LASF63
	.4byte	0x5a4
	.byte	0
	.uleb128 0x11
	.4byte	0xb4
	.4byte	0x5a4
	.uleb128 0x12
	.4byte	0xa6
	.byte	0x13
	.byte	0
	.uleb128 0x6
	.4byte	0x594
	.uleb128 0x15
	.4byte	.LASF73
	.byte	0x1
	.byte	0xae
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5f6
	.uleb128 0xf
	.4byte	.LASF74
	.byte	0x1
	.byte	0xae
	.4byte	0xc6
	.4byte	.LLST13
	.uleb128 0xf
	.4byte	.LASF75
	.byte	0x1
	.byte	0xae
	.4byte	0xc6
	.4byte	.LLST14
	.uleb128 0x10
	.4byte	.LASF63
	.4byte	0x606
	.uleb128 0x16
	.4byte	.LVL33
	.4byte	0x16de
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x32
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	0xb4
	.4byte	0x606
	.uleb128 0x12
	.4byte	0xa6
	.byte	0x11
	.byte	0
	.uleb128 0x6
	.4byte	0x5f6
	.uleb128 0x1b
	.4byte	.LASF76
	.byte	0x1
	.byte	0xc0
	.4byte	0xc6
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x62e
	.uleb128 0x10
	.4byte	.LASF63
	.4byte	0x62e
	.byte	0
	.uleb128 0x6
	.4byte	0x3bd
	.uleb128 0x1b
	.4byte	.LASF77
	.byte	0x1
	.byte	0xc5
	.4byte	0xc6
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x656
	.uleb128 0x10
	.4byte	.LASF63
	.4byte	0x666
	.byte	0
	.uleb128 0x11
	.4byte	0xb4
	.4byte	0x666
	.uleb128 0x12
	.4byte	0xa6
	.byte	0x16
	.byte	0
	.uleb128 0x6
	.4byte	0x656
	.uleb128 0x1c
	.4byte	.LASF79
	.byte	0x1
	.2byte	0x26b
	.4byte	0xf2
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7b3
	.uleb128 0x1d
	.4byte	.LASF81
	.byte	0x1
	.2byte	0x26e
	.4byte	0x7b3
	.uleb128 0x1e
	.4byte	.LASF80
	.byte	0x1
	.2byte	0x26f
	.4byte	0x7b3
	.4byte	.LLST15
	.uleb128 0x1d
	.4byte	.LASF82
	.byte	0x1
	.2byte	0x274
	.4byte	0x94
	.uleb128 0x1e
	.4byte	.LASF83
	.byte	0x1
	.2byte	0x279
	.4byte	0x89
	.4byte	.LLST16
	.uleb128 0x1f
	.4byte	.LVL34
	.4byte	0x60b
	.uleb128 0x1f
	.4byte	.LVL35
	.4byte	0x633
	.uleb128 0x1a
	.4byte	.LVL37
	.4byte	0x5a9
	.4byte	0x6e7
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL38
	.4byte	0x16ea
	.4byte	0x6ff
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL44
	.4byte	0x16f6
	.uleb128 0x1a
	.4byte	.LVL45
	.4byte	0x1701
	.4byte	0x73c
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
	.4byte	.LC20
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC22
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC20
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL48
	.4byte	0x16f6
	.uleb128 0x1a
	.4byte	.LVL49
	.4byte	0x1701
	.4byte	0x779
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
	.4byte	.LC20
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC24
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC20
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL52
	.4byte	0x16f6
	.uleb128 0x16
	.4byte	.LVL53
	.4byte	0x1701
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
	.4byte	.LC20
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC26
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC20
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	0xc6
	.uleb128 0x15
	.4byte	.LASF84
	.byte	0x1
	.byte	0xca
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9f2
	.uleb128 0xf
	.4byte	.LASF62
	.byte	0x1
	.byte	0xca
	.4byte	0xc6
	.4byte	.LLST17
	.uleb128 0xf
	.4byte	.LASF85
	.byte	0x1
	.byte	0xca
	.4byte	0x89
	.4byte	.LLST18
	.uleb128 0xf
	.4byte	.LASF86
	.byte	0x1
	.byte	0xca
	.4byte	0x89
	.4byte	.LLST19
	.uleb128 0x20
	.4byte	.LASF87
	.byte	0x1
	.byte	0xca
	.4byte	0x89
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x20
	.4byte	.LASF88
	.byte	0x1
	.byte	0xca
	.4byte	0x89
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x10
	.4byte	.LASF63
	.4byte	0x9f2
	.uleb128 0x21
	.4byte	.LBB92
	.4byte	.LBE92-.LBB92
	.uleb128 0x19
	.4byte	.LASF89
	.byte	0x1
	.byte	0xd7
	.4byte	0x7e
	.4byte	.LLST20
	.uleb128 0x19
	.4byte	.LASF90
	.byte	0x1
	.byte	0xd8
	.4byte	0x89
	.4byte	.LLST21
	.uleb128 0x1a
	.4byte	.LVL66
	.4byte	0x170c
	.4byte	0x875
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x6d
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x37
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x35
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x75
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL67
	.4byte	0x170c
	.4byte	0x8a6
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x6d
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x39
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x37
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL68
	.4byte	0x170c
	.4byte	0x8d7
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x6d
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x38
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x37
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x74
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL69
	.4byte	0x1717
	.4byte	0x8fa
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x6d
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x35
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x39
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL70
	.4byte	0x1717
	.4byte	0x91e
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x6d
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x35
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL71
	.4byte	0x170c
	.4byte	0x94f
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x6d
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x76
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL72
	.4byte	0x1717
	.4byte	0x972
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x6d
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x3f
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL73
	.4byte	0x1717
	.4byte	0x996
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x6d
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x8
	.byte	0x3f
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL74
	.4byte	0x1717
	.4byte	0x9b9
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x6d
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x4f
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL75
	.4byte	0x16de
	.4byte	0x9cc
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x16
	.4byte	.LVL76
	.4byte	0x1722
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x6d
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x37
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x37
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	0x594
	.uleb128 0x15
	.4byte	.LASF91
	.byte	0x1
	.byte	0xf2
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa36
	.uleb128 0xf
	.4byte	.LASF42
	.byte	0x1
	.byte	0xf2
	.4byte	0x152
	.4byte	.LLST22
	.uleb128 0x10
	.4byte	.LASF63
	.4byte	0xa36
	.uleb128 0x16
	.4byte	.LVL82
	.4byte	0x16de
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xa
	.2byte	0x12c
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	0x557
	.uleb128 0x1b
	.4byte	.LASF92
	.byte	0x1
	.byte	0xfc
	.4byte	0x152
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa5e
	.uleb128 0x10
	.4byte	.LASF63
	.4byte	0xa5e
	.byte	0
	.uleb128 0x6
	.4byte	0x557
	.uleb128 0x22
	.4byte	.LASF93
	.byte	0x1
	.2byte	0x101
	.4byte	0x89
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa87
	.uleb128 0x1f
	.4byte	.LVL83
	.4byte	0xa3b
	.byte	0
	.uleb128 0x23
	.4byte	.LASF94
	.byte	0x1
	.2byte	0x10b
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xac6
	.uleb128 0x24
	.4byte	.LASF41
	.byte	0x1
	.2byte	0x10b
	.4byte	0x176
	.4byte	.LLST23
	.uleb128 0x10
	.4byte	.LASF63
	.4byte	0xac6
	.uleb128 0x16
	.4byte	.LVL86
	.4byte	0x16de
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	0x557
	.uleb128 0x22
	.4byte	.LASF95
	.byte	0x1
	.2byte	0x111
	.4byte	0x176
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xaef
	.uleb128 0x10
	.4byte	.LASF63
	.4byte	0xaef
	.byte	0
	.uleb128 0x6
	.4byte	0x557
	.uleb128 0x23
	.4byte	.LASF96
	.byte	0x1
	.2byte	0x116
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcfa
	.uleb128 0x24
	.4byte	.LASF39
	.byte	0x1
	.2byte	0x116
	.4byte	0xf2
	.4byte	.LLST24
	.uleb128 0x24
	.4byte	.LASF40
	.byte	0x1
	.2byte	0x116
	.4byte	0x128
	.4byte	.LLST25
	.uleb128 0x1e
	.4byte	.LASF97
	.byte	0x1
	.2byte	0x118
	.4byte	0x7e
	.4byte	.LLST26
	.uleb128 0x1e
	.4byte	.LASF98
	.byte	0x1
	.2byte	0x119
	.4byte	0x7e
	.4byte	.LLST27
	.uleb128 0x1e
	.4byte	.LASF99
	.byte	0x1
	.2byte	0x11a
	.4byte	0x7e
	.4byte	.LLST28
	.uleb128 0x1e
	.4byte	.LASF100
	.byte	0x1
	.2byte	0x11b
	.4byte	0x7e
	.4byte	.LLST29
	.uleb128 0x1e
	.4byte	.LASF101
	.byte	0x1
	.2byte	0x11c
	.4byte	0x7e
	.4byte	.LLST30
	.uleb128 0x25
	.string	"bw"
	.byte	0x1
	.2byte	0x11d
	.4byte	0x7e
	.4byte	.LLST31
	.uleb128 0x10
	.4byte	.LASF63
	.4byte	0xcfa
	.uleb128 0x1e
	.4byte	.LASF102
	.byte	0x1
	.2byte	0x172
	.4byte	0x7e
	.4byte	.LLST32
	.uleb128 0x26
	.4byte	.LASF103
	.byte	0x1
	.2byte	0x173
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x26
	.4byte	.LASF104
	.byte	0x1
	.2byte	0x174
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1e
	.4byte	.LASF105
	.byte	0x1
	.2byte	0x178
	.4byte	0x89
	.4byte	.LLST33
	.uleb128 0x1a
	.4byte	.LVL97
	.4byte	0x1717
	.4byte	0xbf2
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x66
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x3b
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x8
	.byte	0x43
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL98
	.4byte	0x1717
	.4byte	0xc16
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x66
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x39
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x8
	.byte	0x84
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL101
	.4byte	0x16de
	.4byte	0xc29
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL110
	.4byte	0x1717
	.4byte	0xc4d
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x66
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x3b
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x8
	.byte	0xc3
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL111
	.4byte	0x1717
	.4byte	0xc71
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x66
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x39
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x8
	.byte	0x74
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL116
	.4byte	0x1717
	.4byte	0xc9f
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x66
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0xc
	.byte	0x77
	.sleb128 0
	.byte	0x37
	.byte	0x24
	.byte	0x76
	.sleb128 0
	.byte	0x34
	.byte	0x24
	.byte	0x21
	.byte	0x75
	.sleb128 0
	.byte	0x21
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL117
	.4byte	0x1717
	.4byte	0xcc3
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x66
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL118
	.4byte	0x1717
	.4byte	0xce7
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x66
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x35
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL119
	.4byte	0xa3b
	.uleb128 0x1f
	.4byte	.LVL121
	.4byte	0x16de
	.byte	0
	.uleb128 0x6
	.4byte	0x5f6
	.uleb128 0x22
	.4byte	.LASF106
	.byte	0x1
	.2byte	0x25b
	.4byte	0xf2
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd94
	.uleb128 0x1e
	.4byte	.LASF107
	.byte	0x1
	.2byte	0x25e
	.4byte	0x89
	.4byte	.LLST34
	.uleb128 0x10
	.4byte	.LASF63
	.4byte	0xd94
	.uleb128 0x1a
	.4byte	.LVL123
	.4byte	0x2f5
	.4byte	0xd46
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL124
	.4byte	0x16f6
	.uleb128 0x1a
	.4byte	.LVL125
	.4byte	0x1701
	.4byte	0xd83
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
	.4byte	.LC20
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC52
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC20
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL128
	.4byte	0x320
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	0x557
	.uleb128 0x22
	.4byte	.LASF108
	.byte	0x1
	.2byte	0x200
	.4byte	0x128
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xec5
	.uleb128 0x1e
	.4byte	.LASF109
	.byte	0x1
	.2byte	0x202
	.4byte	0x89
	.4byte	.LLST35
	.uleb128 0x27
	.4byte	.LASF63
	.4byte	0xed5
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3575
	.uleb128 0x28
	.4byte	.Ldebug_ranges0+0
	.4byte	0xe21
	.uleb128 0x1e
	.4byte	.LASF110
	.byte	0x1
	.2byte	0x205
	.4byte	0x89
	.4byte	.LLST36
	.uleb128 0x1f
	.4byte	.LVL132
	.4byte	0xcff
	.uleb128 0x16
	.4byte	.LVL133
	.4byte	0x172d
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC59
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x20b
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3575
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC56
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0xe98
	.uleb128 0x1e
	.4byte	.LASF111
	.byte	0x1
	.2byte	0x210
	.4byte	0x89
	.4byte	.LLST37
	.uleb128 0x29
	.4byte	0x278
	.4byte	.LBB116
	.4byte	.LBE116-.LBB116
	.byte	0x1
	.2byte	0x210
	.4byte	0xe6b
	.uleb128 0x2a
	.4byte	0x288
	.4byte	.LLST38
	.uleb128 0x16
	.4byte	.LVL134
	.4byte	0x1738
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0xc
	.4byte	0x3ff0003c
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL137
	.4byte	0x172d
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC59
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x218
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3575
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC56
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL138
	.4byte	0x172d
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC59
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x21f
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3575
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC56
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	0xb4
	.4byte	0xed5
	.uleb128 0x12
	.4byte	0xa6
	.byte	0x14
	.byte	0
	.uleb128 0x6
	.4byte	0xec5
	.uleb128 0x2b
	.4byte	.LASF112
	.byte	0x1
	.2byte	0x224
	.4byte	0x89
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf49
	.uleb128 0x24
	.4byte	.LASF40
	.byte	0x1
	.2byte	0x224
	.4byte	0x128
	.4byte	.LLST39
	.uleb128 0x27
	.4byte	.LASF63
	.4byte	0xf49
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3596
	.uleb128 0x1f
	.4byte	.LVL145
	.4byte	0xcff
	.uleb128 0x16
	.4byte	.LVL147
	.4byte	0x172d
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC59
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x232
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3596
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC68
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	0x656
	.uleb128 0x2b
	.4byte	.LASF113
	.byte	0x1
	.2byte	0x237
	.4byte	0xc6
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf90
	.uleb128 0x14
	.string	"mhz"
	.byte	0x1
	.2byte	0x237
	.4byte	0x4c
	.4byte	.LLST40
	.uleb128 0x2c
	.4byte	.LASF114
	.byte	0x1
	.2byte	0x237
	.4byte	0xf90
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1f
	.4byte	.LVL155
	.4byte	0xcff
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x128
	.uleb128 0x23
	.4byte	.LASF115
	.byte	0x1
	.2byte	0x266
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfd4
	.uleb128 0x2c
	.4byte	.LASF39
	.byte	0x1
	.2byte	0x266
	.4byte	0xf2
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x10
	.4byte	.LASF63
	.4byte	0xfe4
	.uleb128 0x16
	.4byte	.LVL162
	.4byte	0x34b
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	0xb4
	.4byte	0xfe4
	.uleb128 0x12
	.4byte	0xa6
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.4byte	0xfd4
	.uleb128 0x23
	.4byte	.LASF116
	.byte	0x1
	.2byte	0x28f
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1029
	.uleb128 0x2c
	.4byte	.LASF117
	.byte	0x1
	.2byte	0x28f
	.4byte	0x89
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x10
	.4byte	.LASF63
	.4byte	0x1039
	.uleb128 0x16
	.4byte	.LVL164
	.4byte	0x34b
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x4
	.byte	0x72
	.sleb128 0
	.byte	0x3c
	.byte	0x25
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	0xb4
	.4byte	0x1039
	.uleb128 0x12
	.4byte	0xa6
	.byte	0x17
	.byte	0
	.uleb128 0x6
	.4byte	0x1029
	.uleb128 0x2d
	.4byte	.LASF153
	.byte	0x1
	.2byte	0x180
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10a1
	.uleb128 0x1e
	.4byte	.LASF39
	.byte	0x1
	.2byte	0x182
	.4byte	0xf2
	.4byte	.LLST41
	.uleb128 0x10
	.4byte	.LASF63
	.4byte	0x10a1
	.uleb128 0x1f
	.4byte	.LVL165
	.4byte	0xcff
	.uleb128 0x1a
	.4byte	.LVL167
	.4byte	0x1743
	.4byte	0x108a
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL168
	.4byte	0xfe9
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x8
	.byte	0x72
	.sleb128 0
	.byte	0xc
	.4byte	0xf4240
	.byte	0x1e
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	0xfd4
	.uleb128 0x23
	.4byte	.LASF118
	.byte	0x1
	.2byte	0x1c1
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1288
	.uleb128 0x2c
	.4byte	.LASF40
	.byte	0x1
	.2byte	0x1c1
	.4byte	0x128
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1e
	.4byte	.LASF39
	.byte	0x1
	.2byte	0x1c3
	.4byte	0xf2
	.4byte	.LLST42
	.uleb128 0x10
	.4byte	.LASF63
	.4byte	0x1288
	.uleb128 0x1e
	.4byte	.LASF119
	.byte	0x1
	.2byte	0x1d7
	.4byte	0x89
	.4byte	.LLST43
	.uleb128 0x29
	.4byte	0x278
	.4byte	.LBB134
	.4byte	.LBE134-.LBB134
	.byte	0x1
	.2byte	0x1cf
	.4byte	0x1121
	.uleb128 0x2e
	.4byte	0x288
	.4byte	0x3ff0003c
	.uleb128 0x16
	.4byte	.LVL175
	.4byte	0x1738
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	0x278
	.4byte	.LBB148
	.4byte	.LBE148-.LBB148
	.byte	0x1
	.2byte	0x1ed
	.4byte	0x114f
	.uleb128 0x2a
	.4byte	0x288
	.4byte	.LLST44
	.uleb128 0x16
	.4byte	.LVL185
	.4byte	0x1738
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	0x278
	.4byte	.LBB150
	.4byte	.LBE150-.LBB150
	.byte	0x1
	.2byte	0x1f1
	.4byte	0x117d
	.uleb128 0x2a
	.4byte	0x288
	.4byte	.LLST45
	.uleb128 0x16
	.4byte	.LVL190
	.4byte	0x1738
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	0x278
	.4byte	.LBB152
	.4byte	.LBE152-.LBB152
	.byte	0x1
	.2byte	0x1f5
	.4byte	0x11ab
	.uleb128 0x2a
	.4byte	0x288
	.4byte	.LLST46
	.uleb128 0x16
	.4byte	.LVL195
	.4byte	0x1738
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL171
	.4byte	0xcff
	.uleb128 0x1a
	.4byte	.LVL173
	.4byte	0x1743
	.4byte	0x11c8
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL174
	.4byte	0x174f
	.uleb128 0x1a
	.4byte	.LVL176
	.4byte	0xfe9
	.4byte	0x11eb
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x8
	.byte	0x73
	.sleb128 0
	.byte	0xc
	.4byte	0xf4240
	.byte	0x1e
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL180
	.4byte	0x1743
	.4byte	0x11fe
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL181
	.4byte	0xfe9
	.4byte	0x1215
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0xc
	.4byte	0x1e8480
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL183
	.4byte	0xaf4
	.4byte	0x122f
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL187
	.4byte	0x1743
	.4byte	0x1243
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x50
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL192
	.4byte	0x1743
	.4byte	0x1257
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0xa0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL197
	.4byte	0x1743
	.4byte	0x126b
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0xf0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL199
	.4byte	0x174f
	.uleb128 0x16
	.4byte	.LVL200
	.4byte	0xfe9
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0xc
	.4byte	0x4c4b400
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	0xec5
	.uleb128 0x2f
	.4byte	.LASF120
	.byte	0x1
	.2byte	0x194
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1306
	.uleb128 0x2c
	.4byte	.LASF40
	.byte	0x1
	.2byte	0x194
	.4byte	0x128
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1e
	.4byte	.LASF121
	.byte	0x1
	.2byte	0x196
	.4byte	0x4c
	.4byte	.LLST47
	.uleb128 0x10
	.4byte	.LASF63
	.4byte	0x1306
	.uleb128 0x1a
	.4byte	.LVL203
	.4byte	0x10a6
	.4byte	0x12de
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL211
	.4byte	0xfe9
	.4byte	0x12f5
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0xc
	.4byte	0x4c4b400
	.byte	0
	.uleb128 0x16
	.4byte	.LVL212
	.4byte	0x1743
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	0x1029
	.uleb128 0x23
	.4byte	.LASF122
	.byte	0x1
	.2byte	0x1b2
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x136a
	.uleb128 0x2c
	.4byte	.LASF40
	.byte	0x1
	.2byte	0x1b2
	.4byte	0x128
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1a
	.4byte	.LVL215
	.4byte	0x10a6
	.4byte	0x1343
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL216
	.4byte	0x103e
	.uleb128 0x1a
	.4byte	.LVL217
	.4byte	0x128d
	.4byte	0x1360
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL218
	.4byte	0x174f
	.byte	0
	.uleb128 0x22
	.4byte	.LASF123
	.byte	0x1
	.2byte	0x294
	.4byte	0x89
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x13b3
	.uleb128 0x1e
	.4byte	.LASF124
	.byte	0x1
	.2byte	0x296
	.4byte	0x89
	.4byte	.LLST48
	.uleb128 0x10
	.4byte	.LASF63
	.4byte	0x13b3
	.uleb128 0x1d
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x299
	.4byte	0x89
	.uleb128 0x1f
	.4byte	.LVL219
	.4byte	0x320
	.byte	0
	.uleb128 0x6
	.4byte	0xec5
	.uleb128 0x30
	.4byte	.LASF154
	.byte	0x3
	.2byte	0x10d
	.byte	0x3
	.4byte	0x13df
	.uleb128 0x31
	.4byte	.LASF126
	.byte	0x3
	.2byte	0x10d
	.4byte	0x7e
	.uleb128 0x32
	.4byte	.LASF63
	.4byte	0x13df
	.4byte	.LASF154
	.byte	0
	.uleb128 0x6
	.4byte	0x5f6
	.uleb128 0x23
	.4byte	.LASF127
	.byte	0x1
	.2byte	0x29e
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x167a
	.uleb128 0x33
	.string	"cfg"
	.byte	0x1
	.2byte	0x29e
	.4byte	0x212
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1e
	.4byte	.LASF128
	.byte	0x1
	.2byte	0x2a0
	.4byte	0x128
	.4byte	.LLST49
	.uleb128 0x10
	.4byte	.LASF63
	.4byte	0x168a
	.uleb128 0x1e
	.4byte	.LASF39
	.byte	0x1
	.2byte	0x2c2
	.4byte	0xf2
	.4byte	.LLST50
	.uleb128 0x1e
	.4byte	.LASF129
	.byte	0x1
	.2byte	0x2e1
	.4byte	0x89
	.4byte	.LLST51
	.uleb128 0x1e
	.4byte	.LASF130
	.byte	0x1
	.2byte	0x2e2
	.4byte	0x89
	.4byte	.LLST52
	.uleb128 0x18
	.4byte	.LBB201
	.4byte	.LBE201-.LBB201
	.4byte	0x14b9
	.uleb128 0x1e
	.4byte	.LASF131
	.byte	0x1
	.2byte	0x2d4
	.4byte	0xf2
	.4byte	.LLST53
	.uleb128 0x1f
	.4byte	.LVL239
	.4byte	0x66b
	.uleb128 0x1f
	.4byte	.LVL241
	.4byte	0x16f6
	.uleb128 0x16
	.4byte	.LVL242
	.4byte	0x1701
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
	.4byte	.LC20
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC129
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC20
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	0x13b8
	.4byte	.LBB202
	.4byte	.LBE202-.LBB202
	.byte	0x1
	.2byte	0x2da
	.4byte	0x14e8
	.uleb128 0x34
	.4byte	0x13c5
	.uleb128 0x21
	.4byte	.LBB203
	.4byte	.LBE203-.LBB203
	.uleb128 0x35
	.4byte	0x13d1
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2427
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LBB206
	.4byte	.LBE206-.LBB206
	.4byte	0x1520
	.uleb128 0x1e
	.4byte	.LASF132
	.byte	0x1
	.2byte	0x2e3
	.4byte	0x4c
	.4byte	.LLST54
	.uleb128 0x21
	.4byte	.LBB207
	.4byte	.LBE207-.LBB207
	.uleb128 0x1e
	.4byte	.LASF132
	.byte	0x1
	.2byte	0x2e3
	.4byte	0x4c
	.4byte	.LLST55
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LBB208
	.4byte	.LBE208-.LBB208
	.4byte	0x1555
	.uleb128 0x1e
	.4byte	.LASF133
	.byte	0x1
	.2byte	0x2ea
	.4byte	0xc6
	.4byte	.LLST56
	.uleb128 0x16
	.4byte	.LVL258
	.4byte	0x5a9
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x4
	.byte	0x72
	.sleb128 0
	.byte	0x30
	.byte	0x29
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL224
	.4byte	0xd99
	.uleb128 0x1a
	.4byte	.LVL226
	.4byte	0x10a6
	.4byte	0x1571
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL229
	.4byte	0x2f5
	.uleb128 0x1f
	.4byte	.LVL230
	.4byte	0xcff
	.uleb128 0x1f
	.4byte	.LVL233
	.4byte	0x66b
	.uleb128 0x1f
	.4byte	.LVL235
	.4byte	0x16f6
	.uleb128 0x1a
	.4byte	.LVL236
	.4byte	0x1701
	.4byte	0x15c3
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
	.4byte	.LC20
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC127
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC20
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL238
	.4byte	0x2f5
	.uleb128 0x1a
	.4byte	.LVL243
	.4byte	0xf96
	.4byte	0x15e0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL244
	.4byte	0xfe9
	.4byte	0x15fa
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x8
	.byte	0x72
	.sleb128 0
	.byte	0xc
	.4byte	0xf4240
	.byte	0x1e
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL245
	.4byte	0x10a6
	.4byte	0x160e
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL246
	.4byte	0xeda
	.4byte	0x1622
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL248
	.4byte	0xeda
	.4byte	0x1636
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL256
	.4byte	0x376
	.4byte	0x1649
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL259
	.4byte	0xa87
	.4byte	0x1663
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x8
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0x9
	.byte	0xf8
	.byte	0x24
	.byte	0x33
	.byte	0x25
	.byte	0
	.uleb128 0x16
	.4byte	.LVL260
	.4byte	0x9f7
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x8
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0x9
	.byte	0xf6
	.byte	0x24
	.byte	0x32
	.byte	0x25
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	0xb4
	.4byte	0x168a
	.uleb128 0x12
	.4byte	0xa6
	.byte	0xc
	.byte	0
	.uleb128 0x6
	.4byte	0x167a
	.uleb128 0x36
	.string	"TAG"
	.byte	0x1
	.byte	0x2c
	.4byte	0x16a1
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC20
	.byte	0x9f
	.uleb128 0x6
	.4byte	0xbb
	.uleb128 0x37
	.4byte	.LASF134
	.byte	0x1
	.byte	0x6b
	.4byte	0x26d
	.uleb128 0x5
	.byte	0x3
	.4byte	s_cur_pll
	.uleb128 0x37
	.4byte	.LASF135
	.byte	0x1
	.byte	0x6e
	.4byte	0x128
	.uleb128 0x5
	.byte	0x3
	.4byte	s_cur_freq
	.uleb128 0x38
	.4byte	.LASF136
	.4byte	.LASF136
	.byte	0x8
	.byte	0xf6
	.uleb128 0x38
	.4byte	.LASF137
	.4byte	.LASF137
	.byte	0x8
	.byte	0x70
	.uleb128 0x39
	.4byte	.LASF138
	.4byte	.LASF138
	.byte	0x9
	.2byte	0x17f
	.uleb128 0x39
	.4byte	.LASF139
	.4byte	.LASF139
	.byte	0x6
	.2byte	0x180
	.uleb128 0x38
	.4byte	.LASF140
	.4byte	.LASF140
	.byte	0x7
	.byte	0x57
	.uleb128 0x38
	.4byte	.LASF141
	.4byte	.LASF141
	.byte	0x7
	.byte	0x6b
	.uleb128 0x38
	.4byte	.LASF142
	.4byte	.LASF142
	.byte	0xa
	.byte	0x21
	.uleb128 0x38
	.4byte	.LASF143
	.4byte	.LASF143
	.byte	0xa
	.byte	0x20
	.uleb128 0x38
	.4byte	.LASF144
	.4byte	.LASF144
	.byte	0xa
	.byte	0x1f
	.uleb128 0x38
	.4byte	.LASF145
	.4byte	.LASF145
	.byte	0xb
	.byte	0x29
	.uleb128 0x38
	.4byte	.LASF146
	.4byte	.LASF146
	.byte	0xc
	.byte	0x1e
	.uleb128 0x39
	.4byte	.LASF147
	.4byte	.LASF147
	.byte	0x9
	.2byte	0x189
	.uleb128 0x39
	.4byte	.LASF148
	.4byte	.LASF148
	.byte	0x6
	.2byte	0x1a8
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
	.uleb128 0xb
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
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
	.uleb128 0x14
	.uleb128 0x5
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
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x17
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
	.uleb128 0x1c
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
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
	.uleb128 0x5
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
	.uleb128 0x5
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
	.uleb128 0x34
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL1
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL2
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL3
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL6
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
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL10
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL12
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL13
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL15
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL16
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL25
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL17
	.4byte	.LVL26
	.2byte	0x3
	.byte	0x8
	.byte	0x20
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL17
	.4byte	.LVL26
	.2byte	0x3
	.byte	0x8
	.byte	0x21
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL17
	.4byte	.LVL26
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL17
	.4byte	.LVL26
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL20
	.4byte	.LVL26
	.2byte	0x2
	.byte	0x3f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL31
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL30
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL32
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x8
	.byte	0x7b
	.sleb128 0
	.byte	0x3d
	.byte	0x24
	.byte	0x7a
	.sleb128 0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL43
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL47
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL51
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL56
	.4byte	.LFE33
	.2byte	0x8
	.byte	0x7b
	.sleb128 0
	.byte	0x3d
	.byte	0x24
	.byte	0x7a
	.sleb128 0
	.byte	0x21
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL57
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL59
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL57
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL65
	.4byte	.LFE14
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL57
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL64
	.4byte	.LVL65
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL65
	.4byte	.LFE14
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL58
	.4byte	.LVL65
	.2byte	0x3
	.byte	0x8
	.byte	0x49
	.byte	0x9f
	.4byte	.LVL65
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0xd
	.byte	0x72
	.sleb128 0
	.byte	0x9
	.byte	0xf4
	.byte	0x24
	.byte	0x33
	.byte	0x25
	.byte	0x30
	.byte	0x29
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0xd
	.byte	0x72
	.sleb128 0
	.byte	0x9
	.byte	0xf4
	.byte	0x24
	.byte	0x33
	.byte	0x25
	.byte	0x30
	.byte	0x29
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL78
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL79
	.4byte	.LVL80
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL80
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL81
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL84
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL85
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL87
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL89
	.4byte	.LVL90
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL90
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL91
	.4byte	.LVL92
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL92
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL93
	.4byte	.LVL94
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL94
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL95
	.4byte	.LVL99
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL99
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL102
	.4byte	.LVL103
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL103
	.4byte	.LVL104
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL104
	.4byte	.LVL105
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL105
	.4byte	.LVL106
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL106
	.4byte	.LVL107
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL107
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL108
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL87
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL88
	.4byte	.LVL99
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL99
	.4byte	.LVL100
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL100
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL90
	.4byte	.LVL92
	.2byte	0x2
	.byte	0x3b
	.byte	0x9f
	.4byte	.LVL92
	.4byte	.LVL94
	.2byte	0x2
	.byte	0x3c
	.byte	0x9f
	.4byte	.LVL96
	.4byte	.LVL99
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL103
	.4byte	.LVL105
	.2byte	0x2
	.byte	0x3b
	.byte	0x9f
	.4byte	.LVL105
	.4byte	.LVL107
	.2byte	0x2
	.byte	0x3c
	.byte	0x9f
	.4byte	.LVL109
	.4byte	.LFE20
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL90
	.4byte	.LVL94
	.2byte	0x3
	.byte	0x9
	.byte	0xe0
	.byte	0x9f
	.4byte	.LVL96
	.4byte	.LVL99
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL103
	.4byte	.LVL105
	.2byte	0x3
	.byte	0x9
	.byte	0x90
	.byte	0x9f
	.4byte	.LVL105
	.4byte	.LVL107
	.2byte	0x3
	.byte	0x9
	.byte	0xe0
	.byte	0x9f
	.4byte	.LVL109
	.4byte	.LFE20
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL90
	.4byte	.LVL94
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	.LVL96
	.4byte	.LVL99
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL103
	.4byte	.LVL107
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	.LVL109
	.4byte	.LFE20
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL90
	.4byte	.LVL92
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL92
	.4byte	.LVL94
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL96
	.4byte	.LVL99
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL103
	.4byte	.LVL105
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL105
	.4byte	.LVL107
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL109
	.4byte	.LFE20
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL90
	.4byte	.LVL94
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL96
	.4byte	.LVL99
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL103
	.4byte	.LVL107
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL109
	.4byte	.LFE20
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL90
	.4byte	.LVL92
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL92
	.4byte	.LVL94
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL96
	.4byte	.LVL99
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL103
	.4byte	.LVL105
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL105
	.4byte	.LVL107
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL109
	.4byte	.LVL113
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL112
	.4byte	.LVL115
	.2byte	0x6
	.byte	0x7d
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL115
	.4byte	.LVL116-1
	.2byte	0xb
	.byte	0x77
	.sleb128 0
	.byte	0x37
	.byte	0x24
	.byte	0x78
	.sleb128 0
	.byte	0x21
	.byte	0x75
	.sleb128 0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL116-1
	.4byte	.LFE20
	.2byte	0xd
	.byte	0x77
	.sleb128 0
	.byte	0x37
	.byte	0x24
	.byte	0x76
	.sleb128 0
	.byte	0x34
	.byte	0x24
	.byte	0x21
	.byte	0x75
	.sleb128 0
	.byte	0x21
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL120
	.4byte	.LVL121-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL122
	.4byte	.LVL126
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL127
	.4byte	.LVL129
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL130
	.4byte	.LVL132-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL133
	.4byte	.LVL134-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL137
	.4byte	.LVL138-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL138
	.4byte	.LVL140
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL131
	.4byte	.LVL133
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL138
	.4byte	.LVL139
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL140
	.4byte	.LVL141
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL135
	.4byte	.LVL136
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL142
	.4byte	.LFE25
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL133
	.4byte	.LVL137
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff0003c
	.byte	0x9f
	.4byte	.LVL142
	.4byte	.LFE25
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff0003c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL143
	.4byte	.LVL144
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL144
	.4byte	.LVL146
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL146
	.4byte	.LVL147
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL147
	.4byte	.LFE26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL148
	.4byte	.LVL149
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL149
	.4byte	.LVL150
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL150
	.4byte	.LVL151
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL151
	.4byte	.LVL152
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL152
	.4byte	.LVL153
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL153
	.4byte	.LVL154
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL154
	.4byte	.LVL156
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL156
	.4byte	.LVL157
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL157
	.4byte	.LVL158
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL158
	.4byte	.LVL159
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL159
	.4byte	.LVL160
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL160
	.4byte	.LFE27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL166
	.4byte	.LVL169
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL172
	.4byte	.LVL179
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL182
	.4byte	.LVL186
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL188
	.4byte	.LVL191
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL193
	.4byte	.LVL196
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL177
	.4byte	.LVL178
	.2byte	0x8
	.byte	0x74
	.sleb128 0
	.byte	0x9
	.byte	0xec
	.byte	0x24
	.byte	0x33
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL184
	.4byte	.LVL188
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff0003c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL189
	.4byte	.LVL193
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff0003c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL194
	.4byte	.LVL198
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff0003c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL202
	.4byte	.LVL204
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL204
	.4byte	.LVL205
	.2byte	0x3
	.byte	0x8
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL205
	.4byte	.LVL206
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL206
	.4byte	.LVL207
	.2byte	0x3
	.byte	0x8
	.byte	0xa0
	.byte	0x9f
	.4byte	.LVL207
	.4byte	.LVL208
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL208
	.4byte	.LVL209
	.2byte	0x3
	.byte	0x8
	.byte	0xf0
	.byte	0x9f
	.4byte	.LVL209
	.4byte	.LVL210
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL210
	.4byte	.LVL213
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL220
	.4byte	.LVL222
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL225
	.4byte	.LVL255
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL227
	.4byte	.LVL228
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL228
	.4byte	.LVL231
	.2byte	0x8
	.byte	0x91
	.sleb128 -48
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL231
	.4byte	.LVL232
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL232
	.4byte	.LVL234
	.2byte	0x8
	.byte	0x91
	.sleb128 -48
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL234
	.4byte	.LVL236
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL236
	.4byte	.LVL237
	.2byte	0x2
	.byte	0x4a
	.byte	0x9f
	.4byte	.LVL237
	.4byte	.LVL242
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL247
	.4byte	.LVL253
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL249
	.4byte	.LVL256-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL240
	.4byte	.LVL242
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LVL252
	.4byte	.LVL254
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LVL250
	.4byte	.LVL251
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL257
	.4byte	.LVL258-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL258-1
	.4byte	.LVL258
	.2byte	0x5
	.byte	0x72
	.sleb128 0
	.byte	0x30
	.byte	0x29
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x104
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
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
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB112
	.4byte	.LBE112
	.4byte	.LBB118
	.4byte	.LBE118
	.4byte	0
	.4byte	0
	.4byte	.LBB115
	.4byte	.LBE115
	.4byte	.LBB119
	.4byte	.LBE119
	.4byte	0
	.4byte	0
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	.LFB14
	.4byte	.LFE14
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
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	.LFB36
	.4byte	.LFE36
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF124:
	.string	"freq_hz"
.LASF135:
	.string	"s_cur_freq"
.LASF149:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF31:
	.string	"RTC_SLOW_FREQ_8MD256"
.LASF16:
	.string	"char"
.LASF105:
	.string	"delay_pll_en"
.LASF116:
	.string	"rtc_clk_apb_freq_update"
.LASF29:
	.string	"RTC_SLOW_FREQ_RTC"
.LASF145:
	.string	"__assert_func"
.LASF56:
	.string	"rtc_pll_t"
.LASF78:
	.string	"rtc_clk_32k_enable_internal"
.LASF6:
	.string	"unsigned int"
.LASF140:
	.string	"esp_log_timestamp"
.LASF132:
	.string	"__ccount"
.LASF90:
	.string	"is_rev0"
.LASF117:
	.string	"apb_freq"
.LASF23:
	.string	"RTC_CPU_FREQ_XTAL"
.LASF142:
	.string	"rom_i2c_writeReg_Mask"
.LASF59:
	.string	"clk_val_is_valid"
.LASF125:
	.string	"remainder"
.LASF130:
	.string	"freq_after"
.LASF144:
	.string	"rom_i2c_readReg_Mask"
.LASF143:
	.string	"rom_i2c_writeReg"
.LASF112:
	.string	"rtc_clk_cpu_freq_value"
.LASF11:
	.string	"uint32_t"
.LASF110:
	.string	"pre_div"
.LASF92:
	.string	"rtc_clk_slow_freq_get"
.LASF154:
	.string	"uart_tx_wait_idle"
.LASF24:
	.string	"RTC_CPU_FREQ_80M"
.LASF60:
	.string	"reg_val_to_clk_val"
.LASF57:
	.string	"dres"
.LASF134:
	.string	"s_cur_pll"
.LASF9:
	.string	"long long unsigned int"
.LASF147:
	.string	"ets_update_cpu_frequency"
.LASF18:
	.string	"RTC_XTAL_FREQ_AUTO"
.LASF67:
	.string	"pin_32"
.LASF68:
	.string	"pin_33"
.LASF89:
	.string	"sdm_stop_val_2"
.LASF106:
	.string	"rtc_clk_xtal_freq_get"
.LASF64:
	.string	"rtc_clk_32k_enable"
.LASF49:
	.string	"ESP_LOG_WARN"
.LASF111:
	.string	"cpuperiod_sel"
.LASF62:
	.string	"enable"
.LASF93:
	.string	"rtc_clk_slow_freq_get_hz"
.LASF99:
	.string	"div10_8"
.LASF94:
	.string	"rtc_clk_fast_freq_set"
.LASF101:
	.string	"dcur"
.LASF21:
	.string	"RTC_XTAL_FREQ_24M"
.LASF17:
	.string	"_Bool"
.LASF118:
	.string	"rtc_clk_cpu_freq_set"
.LASF72:
	.string	"rtc_clk_32k_enabled"
.LASF81:
	.string	"clk_8m_enabled"
.LASF8:
	.string	"__uint64_t"
.LASF55:
	.string	"RTC_PLL_480M"
.LASF35:
	.string	"rtc_fast_freq_t"
.LASF47:
	.string	"ESP_LOG_NONE"
.LASF121:
	.string	"freq"
.LASF153:
	.string	"rtc_clk_cpu_freq_to_xtal"
.LASF102:
	.string	"i2c_bbpll_lref"
.LASF40:
	.string	"cpu_freq"
.LASF85:
	.string	"sdm0"
.LASF87:
	.string	"sdm2"
.LASF113:
	.string	"rtc_clk_cpu_freq_from_mhz"
.LASF45:
	.string	"clk_8m_dfreq"
.LASF123:
	.string	"rtc_clk_apb_freq_get"
.LASF54:
	.string	"RTC_PLL_320M"
.LASF146:
	.string	"esp_dport_access_reg_read"
.LASF150:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_clk.c"
.LASF33:
	.string	"RTC_FAST_FREQ_XTALD4"
.LASF61:
	.string	"clk_val_to_reg_val"
.LASF26:
	.string	"RTC_CPU_FREQ_240M"
.LASF28:
	.string	"rtc_cpu_freq_t"
.LASF137:
	.string	"gpio_output_set_high"
.LASF53:
	.string	"RTC_PLL_NONE"
.LASF97:
	.string	"div_ref"
.LASF10:
	.string	"uint8_t"
.LASF20:
	.string	"RTC_XTAL_FREQ_26M"
.LASF65:
	.string	"rtc_clk_32k_bootstrap"
.LASF80:
	.string	"clk_8md256_enabled"
.LASF77:
	.string	"rtc_clk_8md256_enabled"
.LASF76:
	.string	"rtc_clk_8m_enabled"
.LASF107:
	.string	"xtal_freq_reg"
.LASF7:
	.string	"long long int"
.LASF148:
	.string	"rtc_clk_wait_for_slow_cycle"
.LASF138:
	.string	"ets_delay_us"
.LASF84:
	.string	"rtc_clk_apll_enable"
.LASF152:
	.string	"DPORT_REG_READ"
.LASF41:
	.string	"fast_freq"
.LASF109:
	.string	"soc_clk_sel"
.LASF36:
	.string	"RTC_CAL_RTC_MUX"
.LASF95:
	.string	"rtc_clk_fast_freq_get"
.LASF136:
	.string	"gpio_pad_select_gpio"
.LASF50:
	.string	"ESP_LOG_INFO"
.LASF120:
	.string	"rtc_clk_cpu_freq_to_pll"
.LASF119:
	.string	"apll_fpd"
.LASF108:
	.string	"rtc_clk_cpu_freq_get"
.LASF44:
	.string	"slow_clk_dcap"
.LASF126:
	.string	"uart_no"
.LASF74:
	.string	"clk_8m_en"
.LASF34:
	.string	"RTC_FAST_FREQ_8M"
.LASF75:
	.string	"d256_en"
.LASF71:
	.string	"delay_us"
.LASF25:
	.string	"RTC_CPU_FREQ_160M"
.LASF73:
	.string	"rtc_clk_8m_enable"
.LASF98:
	.string	"div7_0"
.LASF96:
	.string	"rtc_clk_bbpll_set"
.LASF22:
	.string	"rtc_xtal_freq_t"
.LASF37:
	.string	"RTC_CAL_8MD256"
.LASF86:
	.string	"sdm1"
.LASF2:
	.string	"short int"
.LASF13:
	.string	"long int"
.LASF32:
	.string	"rtc_slow_freq_t"
.LASF66:
	.string	"cycle"
.LASF12:
	.string	"uint64_t"
.LASF69:
	.string	"mask_32"
.LASF70:
	.string	"mask_33"
.LASF88:
	.string	"o_div"
.LASF4:
	.string	"__uint8_t"
.LASF103:
	.string	"i2c_bbpll_div_7_0"
.LASF129:
	.string	"freq_before"
.LASF27:
	.string	"RTC_CPU_FREQ_2M"
.LASF128:
	.string	"cpu_source_before"
.LASF58:
	.string	"dbias"
.LASF131:
	.string	"est_xtal_freq"
.LASF39:
	.string	"xtal_freq"
.LASF14:
	.string	"sizetype"
.LASF15:
	.string	"long unsigned int"
.LASF122:
	.string	"rtc_clk_cpu_freq_set_fast"
.LASF52:
	.string	"ESP_LOG_VERBOSE"
.LASF151:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\soc"
.LASF82:
	.string	"cal_val"
.LASF114:
	.string	"out_val"
.LASF100:
	.string	"lref"
.LASF1:
	.string	"unsigned char"
.LASF5:
	.string	"__uint32_t"
.LASF42:
	.string	"slow_freq"
.LASF79:
	.string	"rtc_clk_xtal_freq_estimate"
.LASF139:
	.string	"rtc_clk_cal_ratio"
.LASF83:
	.string	"freq_mhz"
.LASF19:
	.string	"RTC_XTAL_FREQ_40M"
.LASF115:
	.string	"rtc_clk_xtal_freq_update"
.LASF38:
	.string	"RTC_CAL_32K_XTAL"
.LASF104:
	.string	"i2c_bbpll_dcur"
.LASF51:
	.string	"ESP_LOG_DEBUG"
.LASF46:
	.string	"rtc_clk_config_t"
.LASF0:
	.string	"signed char"
.LASF3:
	.string	"short unsigned int"
.LASF127:
	.string	"rtc_clk_init"
.LASF43:
	.string	"clk_8m_div"
.LASF63:
	.string	"__func__"
.LASF30:
	.string	"RTC_SLOW_FREQ_32K_XTAL"
.LASF141:
	.string	"esp_log_write"
.LASF133:
	.string	"need_8md256"
.LASF91:
	.string	"rtc_clk_slow_freq_set"
.LASF48:
	.string	"ESP_LOG_ERROR"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
