	.file	"esp_timer_esp32.c"
	.text
.Ltext0:
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC11:
	.string	"TIMER_IS_AFTER_OVERFLOW(REG_READ(FRC_TIMER_COUNT_REG(1)))"
	.align	4
.LC14:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/esp32/esp_timer_esp32.c"
	.section	.iram1,"ax",@progbits
	.literal_position
	.literal .LC0, s_time_update_lock
	.literal .LC1, s_overflow_happened
	.literal .LC2, 1072984104
	.literal .LC3, 1072984112
	.literal .LC4, -268435457
	.literal .LC5, 1072984100
	.literal .LC6, s_mask_overflow
	.literal .LC7, 268435457
	.literal .LC8, 1072984096
	.literal .LC9, s_time_base_us
	.literal .LC10, s_timer_us_per_overflow
	.literal .LC12, .LC11
	.literal .LC13, __func__$5353
	.literal .LC15, .LC14
	.literal .LC16, 1072984108
	.literal .LC17, s_alarm_handler
	.align	4
	.type	timer_alarm_isr, @function
timer_alarm_isr:
.LFB21:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/esp_timer_esp32.c"
	.loc 1 258 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 259 0
	l32r	a10, .LC0
	call8	vTaskEnterCritical
.LVL1:
.LBB20:
.LBB21:
	.loc 1 155 0
	l32r	a8, .LC1
	l8ui	a8, a8, 0
	bnez.n	a8, .L2
.LBB22:
	.loc 1 159 0
	l32r	a8, .LC2
	memw
	l32i.n	a8, a8, 0
.LBE22:
	bbci	a8, 8, .L9
.LBB23:
	.loc 1 160 0
	l32r	a8, .LC3
	memw
	l32i.n	a9, a8, 0
.LBE23:
	.loc 1 159 0
	l32r	a8, .LC4
	bne	a9, a8, .L4
.LBB24:
	.loc 1 160 0
	l32r	a8, .LC5
	memw
	l32i.n	a8, a8, 0
.LBE24:
	l32r	a9, .LC4
	bgeu	a9, a8, .L4
.LBB25:
	l32r	a8, .LC5
	memw
	l32i.n	a8, a8, 0
.LBE25:
	l32r	a8, .LC6
	l8ui	a8, a8, 0
	beqz.n	a8, .L10
.L4:
.LBB26:
	.loc 1 161 0
	l32r	a8, .LC3
	memw
	l32i.n	a8, a8, 0
.LBE26:
	.loc 1 160 0
	l32r	a9, .LC4
	bgeu	a9, a8, .L5
.LBB27:
	.loc 1 161 0
	l32r	a8, .LC3
	memw
	l32i.n	a8, a8, 0
.LBE27:
	.loc 1 159 0
	movi.n	a8, 0
	j	.L2
.L5:
.LBB28:
	.loc 1 161 0
	l32r	a8, .LC5
	memw
	l32i.n	a8, a8, 0
.LBE28:
	l32r	a9, .LC4
	bgeu	a9, a8, .L11
.LBB29:
	l32r	a8, .LC5
	memw
	l32i.n	a8, a8, 0
.LBE29:
	.loc 1 159 0
	movi.n	a8, 1
	j	.L2
.L9:
	movi.n	a8, 0
	j	.L2
.L10:
	movi.n	a8, 1
	j	.L2
.L11:
	movi.n	a8, 0
.L2:
.LBE21:
.LBE20:
	.loc 1 261 0
	beqz.n	a8, .L6
.LBB30:
.LBB31:
.LBB32:
	.loc 1 167 0
	l32r	a8, .LC5
	memw
	l32i.n	a8, a8, 0
.LBE32:
	l32r	a9, .LC4
	bgeu	a9, a8, .L7
.LBB33:
	l32r	a8, .LC5
	memw
	l32i.n	a9, a8, 0
.LBE33:
.LBB34:
.LBB35:
	.loc 1 176 0
	memw
	l32i.n	a9, a8, 0
.LBE35:
	l32r	a8, .LC7
	add.n	a8, a9, a8
	l32r	a9, .LC8
	memw
	s32i.n	a8, a9, 0
.LBE34:
.LBE31:
.LBE30:
	.loc 1 263 0
	l32r	a8, .LC9
	l32r	a9, .LC10
	l32i.n	a9, a9, 0
	l32i.n	a11, a8, 0
	l32i.n	a10, a8, 4
	add.n	a9, a11, a9
	movi.n	a12, 1
	bltu	a9, a11, .L8
	movi.n	a12, 0
.L8:
	add.n	a10, a12, a10
	s32i.n	a9, a8, 0
	s32i.n	a10, a8, 4
	.loc 1 264 0
	movi.n	a9, 0
	l32r	a8, .LC1
	s8i	a9, a8, 0
	j	.L6
.L7:
.LBB37:
.LBB36:
	.loc 1 167 0
	l32r	a13, .LC12
	l32r	a12, .LC13
	movi	a11, 0xa7
	l32r	a10, .LC15
	call8	__assert_func
.LVL2:
.L6:
.LBE36:
.LBE37:
	.loc 1 266 0
	movi.n	a9, 0
	l32r	a8, .LC6
	s8i	a9, a8, 0
.LBB38:
	.loc 1 268 0
	movi.n	a9, 1
	l32r	a8, .LC16
	memw
	s32i.n	a9, a8, 0
.LBE38:
.LBB39:
	.loc 1 271 0
	l32r	a9, .LC4
	l32r	a8, .LC3
	memw
	s32i.n	a9, a8, 0
.LBE39:
	.loc 1 272 0
	l32r	a10, .LC0
	call8	vTaskExitCritical
.LVL3:
	.loc 1 274 0
	l32r	a8, .LC17
	l32i.n	a8, a8, 0
	mov.n	a10, a2
	callx8	a8
.LVL4:
	retw.n
.LFE21:
	.size	timer_alarm_isr, .-timer_alarm_isr
	.section	.text.esp_timer_impl_lock,"ax",@progbits
	.literal_position
	.literal .LC18, s_time_update_lock
	.align	4
	.global	esp_timer_impl_lock
	.type	esp_timer_impl_lock, @function
esp_timer_impl_lock:
.LFB17:
	.loc 1 180 0
	entry	sp, 32
.LCFI1:
	.loc 1 181 0
	l32r	a10, .LC18
	call8	vTaskEnterCritical
.LVL5:
	retw.n
.LFE17:
	.size	esp_timer_impl_lock, .-esp_timer_impl_lock
	.section	.text.esp_timer_impl_unlock,"ax",@progbits
	.literal_position
	.literal .LC19, s_time_update_lock
	.align	4
	.global	esp_timer_impl_unlock
	.type	esp_timer_impl_unlock, @function
esp_timer_impl_unlock:
.LFB18:
	.loc 1 185 0
	entry	sp, 32
.LCFI2:
	.loc 1 186 0
	l32r	a10, .LC19
	call8	vTaskExitCritical
.LVL6:
	retw.n
.LFE18:
	.size	esp_timer_impl_unlock, .-esp_timer_impl_unlock
	.section	.iram1
	.literal_position
	.literal .LC20, 1072984100
	.literal .LC21, s_time_base_us
	.literal .LC22, s_overflow_happened
	.literal .LC23, 1072984104
	.literal .LC24, 1072984112
	.literal .LC25, -268435457
	.literal .LC26, s_mask_overflow
	.literal .LC27, s_timer_ticks_per_us
	.align	4
	.global	esp_timer_impl_get_time
	.type	esp_timer_impl_get_time, @function
esp_timer_impl_get_time:
.LFB19:
	.loc 1 190 0
	entry	sp, 32
.LCFI3:
.L19:
.LBB62:
	.loc 1 198 0
	l32r	a2, .LC20
	memw
	l32i.n	a2, a2, 0
.LVL7:
.LBE62:
	.loc 1 199 0
	l32r	a8, .LC21
	l32i.n	a10, a8, 0
	l32i.n	a3, a8, 4
.LVL8:
.LBB63:
.LBB64:
	.loc 1 155 0
	l32r	a8, .LC22
	l8ui	a8, a8, 0
	bnez.n	a8, .L15
.LBB65:
	.loc 1 159 0
	l32r	a8, .LC23
	memw
	l32i.n	a8, a8, 0
.LBE65:
	bbci	a8, 8, .L25
.LBB66:
	.loc 1 160 0
	l32r	a8, .LC24
	memw
	l32i.n	a9, a8, 0
.LBE66:
	.loc 1 159 0
	l32r	a8, .LC25
	bne	a9, a8, .L17
.LBB67:
	.loc 1 160 0
	l32r	a8, .LC20
	memw
	l32i.n	a8, a8, 0
.LBE67:
	l32r	a9, .LC25
	bgeu	a9, a8, .L17
.LBB68:
	l32r	a8, .LC20
	memw
	l32i.n	a8, a8, 0
.LBE68:
	l32r	a8, .LC26
	l8ui	a8, a8, 0
	beqz.n	a8, .L26
.L17:
.LBB69:
	.loc 1 161 0
	l32r	a8, .LC24
	memw
	l32i.n	a8, a8, 0
.LBE69:
	.loc 1 160 0
	l32r	a9, .LC25
	bgeu	a9, a8, .L18
.LBB70:
	.loc 1 161 0
	l32r	a8, .LC24
	memw
	l32i.n	a8, a8, 0
.LBE70:
	.loc 1 159 0
	movi.n	a8, 0
	j	.L15
.L18:
.LBB71:
	.loc 1 161 0
	l32r	a8, .LC20
	memw
	l32i.n	a8, a8, 0
.LBE71:
	l32r	a9, .LC25
	bgeu	a9, a8, .L27
.LBB72:
	l32r	a8, .LC20
	memw
	l32i.n	a8, a8, 0
.LBE72:
	.loc 1 159 0
	movi.n	a8, 1
	j	.L15
.L25:
	movi.n	a8, 0
	j	.L15
.L26:
	movi.n	a8, 1
	j	.L15
.L27:
	movi.n	a8, 0
.L15:
.LBE64:
.LBE63:
	.loc 1 201 0
	l32r	a9, .LC27
	l32i.n	a12, a9, 0
.LVL9:
.LBB73:
	.loc 1 207 0
	l32r	a9, .LC20
	memw
	l32i.n	a9, a9, 0
.LBE73:
	bgeu	a2, a9, .L19
	.loc 1 208 0 discriminator 1
	l32r	a9, .LC21
	memw
	l32i.n	a14, a9, 0
	memw
	l32i.n	a15, a9, 4
	.loc 1 207 0 discriminator 1
	bne	a10, a14, .L19
	bne	a3, a15, .L19
	.loc 1 209 0
	l32r	a9, .LC27
	memw
	l32i.n	a9, a9, 0
	.loc 1 208 0
	bne	a12, a9, .L19
.LBB74:
.LBB75:
	.loc 1 155 0
	l32r	a9, .LC22
	l8ui	a9, a9, 0
	bnez.n	a9, .L20
.LBB76:
	.loc 1 159 0
	l32r	a9, .LC23
	memw
	l32i.n	a9, a9, 0
.LBE76:
	bbci	a9, 8, .L28
.LBB77:
	.loc 1 160 0
	l32r	a9, .LC24
	memw
	l32i.n	a13, a9, 0
.LBE77:
	.loc 1 159 0
	l32r	a9, .LC25
	bne	a13, a9, .L22
.LBB78:
	.loc 1 160 0
	l32r	a9, .LC20
	memw
	l32i.n	a9, a9, 0
.LBE78:
	l32r	a13, .LC25
	bgeu	a13, a9, .L22
.LBB79:
	l32r	a9, .LC20
	memw
	l32i.n	a9, a9, 0
.LBE79:
	l32r	a9, .LC26
	l8ui	a9, a9, 0
	beqz.n	a9, .L29
.L22:
.LBB80:
	.loc 1 161 0
	l32r	a9, .LC24
	memw
	l32i.n	a9, a9, 0
.LBE80:
	.loc 1 160 0
	l32r	a13, .LC25
	bgeu	a13, a9, .L23
.LBB81:
	.loc 1 161 0
	l32r	a9, .LC24
	memw
	l32i.n	a9, a9, 0
.LBE81:
	.loc 1 159 0
	movi.n	a9, 0
	j	.L20
.L23:
.LBB82:
	.loc 1 161 0
	l32r	a9, .LC20
	memw
	l32i.n	a9, a9, 0
.LBE82:
	l32r	a13, .LC25
	bgeu	a13, a9, .L30
.LBB83:
	l32r	a9, .LC20
	memw
	l32i.n	a9, a9, 0
.LBE83:
	.loc 1 159 0
	movi.n	a9, 1
	j	.L20
.L28:
	movi.n	a9, 0
	j	.L20
.L29:
	movi.n	a9, 1
	j	.L20
.L30:
	movi.n	a9, 0
.L20:
.LBE75:
.LBE74:
	.loc 1 209 0
	bne	a8, a9, .L19
	.loc 1 218 0
	quou	a2, a2, a12
.LVL10:
	.loc 1 217 0
	add.n	a2, a10, a2
	movi.n	a8, 1
	bltu	a2, a10, .L24
	movi.n	a8, 0
.L24:
.LVL11:
	.loc 1 220 0
	add.n	a3, a8, a3
.LVL12:
	retw.n
.LFE19:
	.size	esp_timer_impl_get_time, .-esp_timer_impl_get_time
	.section	.rodata.str1.4
	.align	4
.LC38:
	.string	"time_after_timebase_us > s_timer_us_per_overflow"
	.section	.iram1
	.literal_position
	.literal .LC28, -268435457, 0
	.literal .LC29, -268435457
	.literal .LC30, s_time_update_lock
	.literal .LC31, s_time_base_us
	.literal .LC32, s_overflow_happened
	.literal .LC33, 1072984104
	.literal .LC34, 1072984112
	.literal .LC35, 1072984100
	.literal .LC36, s_mask_overflow
	.literal .LC37, s_timer_us_per_overflow
	.literal .LC39, .LC38
	.literal .LC40, __func__$5380
	.literal .LC41, .LC14
	.literal .LC42, s_timer_ticks_per_us
	.literal .LC43, -268435458
	.align	4
	.global	esp_timer_impl_set_alarm
	.type	esp_timer_impl_set_alarm, @function
esp_timer_impl_set_alarm:
.LFB20:
	.loc 1 223 0
.LVL13:
	entry	sp, 32
.LCFI4:
	.loc 1 224 0
	l32r	a10, .LC30
	call8	vTaskEnterCritical
.LVL14:
	.loc 1 226 0
	l32r	a9, .LC31
	l32i.n	a8, a9, 0
	l32i.n	a10, a9, 4
	sub	a8, a2, a8
	movi.n	a9, 1
	bltu	a2, a8, .L32
	movi.n	a9, 0
.L32:
	sub	a3, a3, a10
	sub	a3, a3, a9
	mov.n	a12, a8
	mov.n	a9, a3
.LVL15:
.LBB96:
.LBB97:
	.loc 1 155 0
	l32r	a2, .LC32
.LVL16:
	l8ui	a10, a2, 0
	bnez.n	a10, .L33
.LVL17:
.LBB98:
	.loc 1 159 0
	l32r	a2, .LC33
	memw
	l32i.n	a2, a2, 0
.LBE98:
	bbci	a2, 8, .L47
.LBB99:
	.loc 1 160 0
	l32r	a2, .LC34
	memw
	l32i.n	a10, a2, 0
.LBE99:
	.loc 1 159 0
	l32r	a2, .LC29
	bne	a10, a2, .L35
.LBB100:
	.loc 1 160 0
	l32r	a2, .LC35
	memw
	l32i.n	a2, a2, 0
.LBE100:
	l32r	a10, .LC29
	bgeu	a10, a2, .L35
.LBB101:
	l32r	a2, .LC35
	memw
	l32i.n	a2, a2, 0
.LBE101:
	l32r	a2, .LC36
	l8ui	a2, a2, 0
	beqz.n	a2, .L48
.L35:
.LBB102:
	.loc 1 161 0
	l32r	a2, .LC34
	memw
	l32i.n	a2, a2, 0
.LBE102:
	.loc 1 160 0
	l32r	a10, .LC29
	bgeu	a10, a2, .L36
.LBB103:
	.loc 1 161 0
	l32r	a2, .LC34
	memw
	l32i.n	a2, a2, 0
.LBE103:
	.loc 1 159 0
	movi.n	a10, 0
	j	.L33
.L36:
.LBB104:
	.loc 1 161 0
	l32r	a2, .LC35
	memw
	l32i.n	a2, a2, 0
.LBE104:
	l32r	a10, .LC29
	bgeu	a10, a2, .L49
.LBB105:
	l32r	a2, .LC35
	memw
	l32i.n	a2, a2, 0
.LBE105:
	.loc 1 159 0
	movi.n	a10, 1
	j	.L33
.L47:
	movi.n	a10, 0
	j	.L33
.L48:
	movi.n	a10, 1
	j	.L33
.L49:
	movi.n	a10, 0
.L33:
.LBE97:
.LBE96:
.LBB106:
	.loc 1 229 0
	l32r	a2, .LC35
	memw
	l32i.n	a11, a2, 0
.LVL18:
.LBE106:
	.loc 1 231 0
	beqz.n	a10, .L37
	.loc 1 232 0
	l32r	a2, .LC37
	l32i.n	a2, a2, 0
	bnez.n	a9, .L38
	bnez.n	a9, .L52
	bltu	a2, a12, .L38
.L52:
	.loc 1 232 0 is_stmt 0 discriminator 1
	l32r	a13, .LC39
	l32r	a12, .LC40
	movi	a11, 0xe8
.LVL19:
	l32r	a10, .LC41
	call8	__assert_func
.LVL20:
.L38:
	.loc 1 233 0 is_stmt 1
	sub	a8, a8, a2
.LVL21:
	movi.n	a9, 1
	bltu	a12, a8, .L40
	movi.n	a9, 0
.L40:
	mov.n	a12, a8
.LVL22:
	sub	a9, a3, a9
.LVL23:
	.loc 1 234 0
	movi.n	a3, 1
	l32r	a2, .LC32
	s8i	a3, a2, 0
.LVL24:
.L37:
	.loc 1 237 0
	l32r	a2, .LC42
	l32i.n	a10, a2, 0
	mull	a3, a9, a10
	muluh	a9, a12, a10
.LVL25:
	mull	a8, a12, a10
	add.n	a9, a3, a9
.LVL26:
	.loc 1 243 0
	slli	a10, a10, 1
.LVL27:
	.loc 1 244 0
	bnez.n	a9, .L50
	bnez.n	a9, .L53
	l32r	a2, .LC43
	bltu	a2, a8, .L50
.L53:
	.loc 1 245 0
	add.n	a11, a10, a11
.LVL28:
	movi.n	a3, 1
	bltu	a11, a10, .L43
	movi.n	a3, 0
.L43:
	mov.n	a2, a11
	bltu	a9, a3, .L54
	bne	a3, a9, .L41
	bgeu	a8, a11, .L41
.L54:
.LVL29:
	.loc 1 247 0
	bnez.n	a3, .L51
	bnez.n	a3, .L55
	l32r	a3, .LC29
.LVL30:
	bltu	a3, a2, .L51
.L55:
	.loc 1 246 0
	mov.n	a8, a11
	j	.L41
.L51:
	.loc 1 248 0
	l32r	a8, .LC28
.LVL31:
	j	.L41
.LVL32:
.L50:
	.loc 1 238 0
	l32r	a8, .LC29
.LVL33:
.L41:
.LBB107:
	.loc 1 253 0
	l32r	a2, .LC34
	memw
	s32i.n	a8, a2, 0
.LBE107:
	.loc 1 254 0
	l32r	a10, .LC30
.LVL34:
	call8	vTaskExitCritical
.LVL35:
	retw.n
.LFE20:
	.size	esp_timer_impl_set_alarm, .-esp_timer_impl_set_alarm
	.global	__udivdi3
	.literal_position
	.literal .LC45, -268435457
	.literal .LC46, s_time_update_lock
	.literal .LC47, s_timer_interrupt_handle
	.literal .LC48, 1072984112
	.literal .LC49, 1072984100
	.literal .LC50, s_timer_ticks_per_us
	.literal .LC51, s_mask_overflow
	.literal .LC52, 1072984096
	.literal .LC53, s_time_base_us
	.literal .LC54, s_timer_us_per_overflow
	.align	4
	.global	esp_timer_impl_update_apb_freq
	.type	esp_timer_impl_update_apb_freq, @function
esp_timer_impl_update_apb_freq:
.LFB22:
	.loc 1 278 0
.LVL36:
	entry	sp, 32
.LCFI5:
	.loc 1 279 0
	l32r	a10, .LC46
	call8	vTaskEnterCritical
.LVL37:
	.loc 1 281 0
	l32r	a3, .LC47
	l32i.n	a3, a3, 0
	bnez.n	a3, .L57
	.loc 1 282 0
	l32r	a10, .LC46
	call8	vTaskExitCritical
.LVL38:
	.loc 1 283 0
	retw.n
.L57:
.LVL39:
.LBB108:
	.loc 1 287 0
	l32r	a3, .LC48
	memw
	l32i.n	a4, a3, 0
.LVL40:
.LBE108:
.LBB109:
	.loc 1 288 0
	l32r	a3, .LC49
	memw
	l32i.n	a3, a3, 0
.LVL41:
.LBE109:
	.loc 1 289 0
	sub	a10, a4, a3
.LVL42:
	.loc 1 290 0
	muluh	a11, a2, a10
	l32r	a8, .LC50
	l32i.n	a12, a8, 0
	movi.n	a13, 0
	mull	a10, a2, a10
.LVL43:
	call8	__udivdi3
.LVL44:
	mov.n	a12, a10
.LVL45:
	.loc 1 292 0
	movi.n	a8, 1
	bltu	a3, a4, .L59
	movi.n	a8, 0
.L59:
	extui	a8, a8, 0, 8
	movi.n	a9, 1
	bnez.n	a11, .L61
	bnez.n	a11, .L60
	l32r	a11, .LC45
.LVL46:
	bgeu	a11, a12, .L60
.L61:
	movi.n	a9, 0
.L60:
	bany	a8, a9, .L63
.LVL47:
	.loc 1 296 0
	l32r	a8, .LC45
	beq	a4, a8, .L65
	.loc 1 297 0
	movi.n	a8, 1
	l32r	a4, .LC51
.LVL48:
	s8i	a8, a4, 0
	.loc 1 295 0
	l32r	a10, .LC45
	j	.L63
.LVL49:
.L65:
	l32r	a10, .LC45
.LVL50:
.L63:
.LBB110:
	.loc 1 300 0
	l32r	a4, .LC48
	memw
	s32i.n	a10, a4, 0
.LBE110:
.LBB111:
	.loc 1 301 0
	movi.n	a8, 0
	l32r	a4, .LC52
	memw
	s32i.n	a8, a4, 0
.LBE111:
	.loc 1 303 0
	l32r	a4, .LC50
	l32i.n	a4, a4, 0
	quou	a3, a3, a4
.LVL51:
	l32r	a8, .LC53
	l32i.n	a9, a8, 0
	l32i.n	a4, a8, 4
	add.n	a3, a9, a3
	movi.n	a10, 1
.LVL52:
	bltu	a3, a9, .L64
	movi.n	a10, 0
.L64:
	add.n	a4, a10, a4
	s32i.n	a3, a8, 0
	s32i.n	a4, a8, 4
	.loc 1 321 0
	l32r	a3, .LC50
	s32i.n	a2, a3, 0
	.loc 1 322 0
	l32r	a3, .LC45
	quou	a2, a3, a2
.LVL53:
	l32r	a3, .LC54
	s32i.n	a2, a3, 0
	.loc 1 324 0
	l32r	a10, .LC46
	call8	vTaskExitCritical
.LVL54:
	retw.n
.LFE22:
	.size	esp_timer_impl_update_apb_freq, .-esp_timer_impl_update_apb_freq
	.section	.rodata.str1.4
	.align	4
.LC55:
	.string	"time_us > 0 && \"negative adjustments not supported yet\""
	.section	.text.esp_timer_impl_advance,"ax",@progbits
	.literal_position
	.literal .LC56, .LC55
	.literal .LC57, __func__$5409
	.literal .LC58, .LC14
	.literal .LC59, s_time_update_lock
	.literal .LC60, 1072984100
	.literal .LC61, 1072984112
	.literal .LC62, 1072984096
	.literal .LC63, s_timer_ticks_per_us
	.literal .LC64, s_time_base_us
	.literal .LC65, s_overflow_happened
	.align	4
	.global	esp_timer_impl_advance
	.type	esp_timer_impl_advance, @function
esp_timer_impl_advance:
.LFB23:
	.loc 1 328 0
.LVL55:
	entry	sp, 32
.LCFI6:
	.loc 1 329 0
	bgei	a3, 1, .L67
	bnez.n	a3, .L71
	bnez.n	a2, .L67
.L71:
	.loc 1 329 0 is_stmt 0 discriminator 1
	l32r	a13, .LC56
	l32r	a12, .LC57
	movi	a11, 0x149
	l32r	a10, .LC58
	call8	__assert_func
.LVL56:
.L67:
	.loc 1 331 0 is_stmt 1
	l32r	a10, .LC59
	call8	vTaskEnterCritical
.LVL57:
.LBB112:
	.loc 1 332 0
	l32r	a8, .LC60
	memw
	l32i.n	a10, a8, 0
.LBE112:
	movi.n	a11, 0
.LVL58:
.LBB113:
	.loc 1 336 0
	l32r	a8, .LC61
	memw
	s32i.n	a11, a8, 0
.LBE113:
.LBB114:
	.loc 1 337 0
	l32r	a8, .LC62
	memw
	s32i.n	a11, a8, 0
.LBE114:
	.loc 1 338 0
	l32r	a8, .LC63
	l32i.n	a12, a8, 0
	mov.n	a13, a11
	call8	__udivdi3
.LVL59:
	add.n	a10, a2, a10
	movi.n	a8, 1
	bltu	a10, a2, .L69
	movi.n	a8, 0
.L69:
	add.n	a11, a3, a11
	add.n	a8, a8, a11
	l32r	a11, .LC64
	l32i.n	a2, a11, 0
.LVL60:
	l32i.n	a3, a11, 4
	add.n	a10, a2, a10
	movi.n	a9, 1
	bltu	a10, a2, .L70
	movi.n	a9, 0
.L70:
	add.n	a8, a3, a8
	add.n	a9, a9, a8
	s32i.n	a10, a11, 0
	s32i.n	a9, a11, 4
	.loc 1 339 0
	movi.n	a3, 0
	l32r	a2, .LC65
	s8i	a3, a2, 0
	.loc 1 340 0
	l32r	a10, .LC59
	call8	vTaskExitCritical
.LVL61:
	retw.n
.LFE23:
	.size	esp_timer_impl_advance, .-esp_timer_impl_advance
	.section	.rodata.str1.4
	.align	4
.LC70:
	.string	"esp_timer_impl"
	.align	4
.LC72:
	.string	"\033[0;31mE (%d) %s: esp_intr_alloc failed (0x%0x)\033[0m\n"
	.align	4
.LC76:
	.string	"s_timer_ticks_per_us > 0 && apb_freq % TIMER_DIV == 0 && \"APB frequency does not result in a valid ticks_per_us value\""
	.align	4
.LC88:
	.string	"esp_intr_enable(s_timer_interrupt_handle)"
	.section	.text.esp_timer_impl_init,"ax",@progbits
	.literal_position
	.literal .LC66, s_alarm_handler
	.literal .LC67, s_timer_interrupt_handle
	.literal .LC68, timer_alarm_isr
	.literal .LC69, 3072
	.literal .LC71, .LC70
	.literal .LC73, .LC72
	.literal .LC74, 1125899907
	.literal .LC75, s_timer_ticks_per_us
	.literal .LC77, .LC76
	.literal .LC78, __func__$5419
	.literal .LC79, .LC14
	.literal .LC80, -268435457
	.literal .LC81, s_timer_us_per_overflow
	.literal .LC82, s_time_base_us
	.literal .LC83, 0, 0
	.literal .LC84, 1072984112
	.literal .LC85, 1072984096
	.literal .LC86, 1072984104
	.literal .LC87, 1072984108
	.literal .LC89, .LC88
	.align	4
	.global	esp_timer_impl_init
	.type	esp_timer_impl_init, @function
esp_timer_impl_init:
.LFB24:
	.loc 1 344 0
.LVL62:
	entry	sp, 32
.LCFI7:
	.loc 1 345 0
	l32r	a8, .LC66
	s32i.n	a2, a8, 0
	.loc 1 347 0
	l32r	a14, .LC67
	movi.n	a13, 0
	l32r	a12, .LC68
	l32r	a11, .LC69
	movi.n	a10, 0x39
	call8	esp_intr_alloc
.LVL63:
	mov.n	a2, a10
.LVL64:
	.loc 1 351 0
	beqz.n	a10, .L73
	.loc 1 352 0 discriminator 1
	call8	esp_log_timestamp
.LVL65:
	mov.n	a13, a2
	l32r	a12, .LC71
	mov.n	a11, a10
	l32r	a10, .LC73
	call8	ets_printf
.LVL66:
	.loc 1 353 0 discriminator 1
	retw.n
.L73:
	.loc 1 356 0
	call8	rtc_clk_apb_freq_get
.LVL67:
	.loc 1 357 0
	l32r	a8, .LC74
	muluh	a10, a10, a8
.LVL68:
	extui	a10, a10, 18, 14
	l32r	a2, .LC75
.LVL69:
	s32i.n	a10, a2, 0
	.loc 1 358 0
	bnez.n	a10, .L75
	.loc 1 358 0 is_stmt 0 discriminator 1
	l32r	a13, .LC77
	l32r	a12, .LC78
	movi	a11, 0x168
	l32r	a10, .LC79
	call8	__assert_func
.LVL70:
.L75:
	.loc 1 361 0 is_stmt 1
	l32r	a2, .LC80
	quou	a10, a2, a10
	l32r	a8, .LC81
	s32i.n	a10, a8, 0
	.loc 1 362 0
	l32r	a10, .LC83
	l32r	a11, .LC83+4
	l32r	a8, .LC82
	s32i.n	a10, a8, 0
	s32i.n	a11, a8, 4
.LBB115:
	.loc 1 364 0
	l32r	a8, .LC84
	memw
	s32i.n	a2, a8, 0
.LBE115:
.LBB116:
	.loc 1 365 0
	movi.n	a8, 0
	l32r	a2, .LC85
	memw
	s32i.n	a8, a2, 0
.LBE116:
.LBB117:
	.loc 1 366 0
	movi	a8, 0x81
	l32r	a2, .LC86
	memw
	s32i.n	a8, a2, 0
.LBE117:
.LBB118:
	.loc 1 368 0
	movi.n	a8, 1
	l32r	a2, .LC87
	memw
	s32i.n	a8, a2, 0
.LBE118:
.LBB119:
	.loc 1 369 0
	l32r	a2, .LC67
	l32i.n	a10, a2, 0
	call8	esp_intr_enable
.LVL71:
	beqz.n	a10, .L76
	.loc 1 369 0 is_stmt 0 discriminator 1
	l32r	a14, .LC89
	l32r	a13, .LC78
	movi	a12, 0x171
	l32r	a11, .LC79
	call8	_esp_error_check_failed
.LVL72:
.L76:
.LBE119:
	.loc 1 371 0 is_stmt 1
	movi.n	a2, 0
	.loc 1 372 0
	retw.n
.LFE24:
	.size	esp_timer_impl_init, .-esp_timer_impl_init
	.section	.text.esp_timer_impl_deinit,"ax",@progbits
	.literal_position
	.literal .LC90, s_timer_interrupt_handle
	.literal .LC91, 1072984104
	.literal .LC92, 1072984112
	.literal .LC93, 1072984096
	.align	4
	.global	esp_timer_impl_deinit
	.type	esp_timer_impl_deinit, @function
esp_timer_impl_deinit:
.LFB25:
	.loc 1 375 0
	entry	sp, 32
.LCFI8:
	.loc 1 376 0
	l32r	a3, .LC90
	l32i.n	a10, a3, 0
	call8	esp_intr_disable
.LVL73:
.LBB120:
	.loc 1 378 0
	movi.n	a2, 0
	l32r	a8, .LC91
	memw
	s32i.n	a2, a8, 0
.LBE120:
.LBB121:
	.loc 1 379 0
	l32r	a8, .LC92
	memw
	s32i.n	a2, a8, 0
.LBE121:
.LBB122:
	.loc 1 380 0
	l32r	a8, .LC93
	memw
	s32i.n	a2, a8, 0
.LBE122:
	.loc 1 382 0
	l32i.n	a10, a3, 0
	call8	esp_intr_free
.LVL74:
	.loc 1 383 0
	s32i.n	a2, a3, 0
	retw.n
.LFE25:
	.size	esp_timer_impl_deinit, .-esp_timer_impl_deinit
	.section	.iram1
	.literal_position
	.literal .LC94, 50, 0
	.align	4
	.global	esp_timer_impl_get_min_period_us
	.type	esp_timer_impl_get_min_period_us, @function
esp_timer_impl_get_min_period_us:
.LFB26:
	.loc 1 390 0
	entry	sp, 32
.LCFI9:
	.loc 1 392 0
	l32r	a2, .LC94
	l32r	a3, .LC94+4
	retw.n
.LFE26:
	.size	esp_timer_impl_get_min_period_us, .-esp_timer_impl_get_min_period_us
	.section	.rodata.__func__$5353,"a",@progbits
	.align	4
	.type	__func__$5353, @object
	.size	__func__$5353, 19
__func__$5353:
	.string	"timer_count_reload"
	.section	.rodata.__func__$5419,"a",@progbits
	.align	4
	.type	__func__$5419, @object
	.size	__func__$5419, 20
__func__$5419:
	.string	"esp_timer_impl_init"
	.section	.rodata.__func__$5409,"a",@progbits
	.align	4
	.type	__func__$5409, @object
	.size	__func__$5409, 23
__func__$5409:
	.string	"esp_timer_impl_advance"
	.section	.rodata.__func__$5380,"a",@progbits
	.align	4
	.type	__func__$5380, @object
	.size	__func__$5380, 25
__func__$5380:
	.string	"esp_timer_impl_set_alarm"
	.global	s_time_update_lock
	.section	.data.s_time_update_lock,"aw",@progbits
	.align	4
	.type	s_time_update_lock, @object
	.size	s_time_update_lock, 8
s_time_update_lock:
	.word	-1287651329
	.word	0
	.section	.bss.s_overflow_happened,"aw",@nobits
	.type	s_overflow_happened, @object
	.size	s_overflow_happened, 1
s_overflow_happened:
	.zero	1
	.section	.bss.s_mask_overflow,"aw",@nobits
	.type	s_mask_overflow, @object
	.size	s_mask_overflow, 1
s_mask_overflow:
	.zero	1
	.section	.bss.s_timer_us_per_overflow,"aw",@nobits
	.align	4
	.type	s_timer_us_per_overflow, @object
	.size	s_timer_us_per_overflow, 4
s_timer_us_per_overflow:
	.zero	4
	.section	.bss.s_timer_ticks_per_us,"aw",@nobits
	.align	4
	.type	s_timer_ticks_per_us, @object
	.size	s_timer_ticks_per_us, 4
s_timer_ticks_per_us:
	.zero	4
	.section	.bss.s_time_base_us,"aw",@nobits
	.align	8
	.type	s_time_base_us, @object
	.size	s_time_base_us, 8
s_time_base_us:
	.zero	8
	.section	.bss.s_alarm_handler,"aw",@nobits
	.align	4
	.type	s_alarm_handler, @object
	.size	s_alarm_handler, 4
s_alarm_handler:
	.zero	4
	.section	.bss.s_timer_interrupt_handle,"aw",@nobits
	.align	4
	.type	s_timer_interrupt_handle, @object
	.size	s_timer_interrupt_handle, 4
s_timer_interrupt_handle:
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
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI0-.LFB21
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
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI2-.LFB18
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI3-.LFB19
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI4-.LFB20
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
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI6-.LFB23
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI7-.LFB24
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI8-.LFB25
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI9-.LFB26
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_err.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_intr_alloc.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/portmacro.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/assert.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/log/include/esp_log.h"
	.file 9 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/ets_sys.h"
	.file 10 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/rtc.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x95a
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF82
	.byte	0xc
	.4byte	.LASF83
	.4byte	.LASF84
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF4
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x19
	.4byte	0x53
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x1a
	.4byte	0x65
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x2
	.byte	0x1d
	.4byte	0x77
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x2
	.byte	0x1e
	.4byte	0x25
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x3
	.byte	0x2c
	.4byte	0x48
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x2d
	.4byte	0x5a
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x3
	.byte	0x38
	.4byte	0x6c
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0x39
	.4byte	0x7e
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF15
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF16
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF17
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF18
	.uleb128 0x6
	.byte	0x4
	.4byte	0xd9
	.uleb128 0x7
	.4byte	0xcc
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x4
	.byte	0x18
	.4byte	0x89
	.uleb128 0x6
	.byte	0x4
	.4byte	0xef
	.uleb128 0x8
	.4byte	0xfa
	.uleb128 0x9
	.4byte	0xb5
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF20
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x5
	.byte	0x53
	.4byte	0xe9
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x5
	.byte	0x56
	.4byte	0x117
	.uleb128 0xa
	.4byte	.LASF22
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x5
	.byte	0x57
	.4byte	0x127
	.uleb128 0x6
	.byte	0x4
	.4byte	0x10c
	.uleb128 0xb
	.byte	0x4
	.4byte	0x65
	.byte	0x8
	.byte	0x1f
	.4byte	0x15e
	.uleb128 0xc
	.4byte	.LASF24
	.byte	0
	.uleb128 0xc
	.4byte	.LASF25
	.byte	0x1
	.uleb128 0xc
	.4byte	.LASF26
	.byte	0x2
	.uleb128 0xc
	.4byte	.LASF27
	.byte	0x3
	.uleb128 0xc
	.4byte	.LASF28
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0x5
	.byte	0
	.uleb128 0xd
	.byte	0x8
	.byte	0x6
	.byte	0x82
	.4byte	0x17f
	.uleb128 0xe
	.4byte	.LASF30
	.byte	0x6
	.byte	0x8a
	.4byte	0x94
	.byte	0
	.uleb128 0xe
	.4byte	.LASF31
	.byte	0x6
	.byte	0x8f
	.4byte	0x94
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF32
	.byte	0x6
	.byte	0x94
	.4byte	0x15e
	.uleb128 0x7
	.4byte	0xd3
	.uleb128 0xf
	.4byte	.LASF33
	.byte	0x1
	.byte	0x99
	.4byte	0xfa
	.byte	0x3
	.4byte	0x1ad
	.uleb128 0x10
	.4byte	.LASF35
	.4byte	0x1bd
	.4byte	.LASF33
	.byte	0
	.uleb128 0x11
	.4byte	0xcc
	.4byte	0x1bd
	.uleb128 0x12
	.4byte	0xbe
	.byte	0x17
	.byte	0
	.uleb128 0x7
	.4byte	0x1ad
	.uleb128 0x13
	.4byte	.LASF34
	.byte	0x1
	.byte	0xa4
	.byte	0x3
	.4byte	0x1dc
	.uleb128 0x10
	.4byte	.LASF35
	.4byte	0x1ec
	.4byte	.LASF34
	.byte	0
	.uleb128 0x11
	.4byte	0xcc
	.4byte	0x1ec
	.uleb128 0x12
	.4byte	0xbe
	.byte	0x12
	.byte	0
	.uleb128 0x7
	.4byte	0x1dc
	.uleb128 0x14
	.4byte	.LASF85
	.byte	0x1
	.2byte	0x101
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2ce
	.uleb128 0x15
	.string	"arg"
	.byte	0x1
	.2byte	0x101
	.4byte	0xb5
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x16
	.4byte	.LASF35
	.4byte	0x2de
	.uleb128 0x17
	.4byte	0x18f
	.4byte	.LBB20
	.4byte	.LBE20-.LBB20
	.byte	0x1
	.2byte	0x105
	.4byte	0x242
	.uleb128 0x18
	.4byte	.LBB21
	.4byte	.LBE21-.LBB21
	.uleb128 0x19
	.4byte	0x19f
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	0x1c2
	.4byte	.LBB30
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.2byte	0x106
	.4byte	0x293
	.uleb128 0x1b
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x1c
	.4byte	0x1ce
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5353
	.uleb128 0x1d
	.4byte	.LVL2
	.4byte	0x8e2
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xa7
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5353
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC11
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL1
	.4byte	0x8ed
	.4byte	0x2aa
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	s_time_update_lock
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL3
	.4byte	0x8f8
	.4byte	0x2c1
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	s_time_update_lock
	.byte	0
	.uleb128 0x20
	.4byte	.LVL4
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	0xcc
	.4byte	0x2de
	.uleb128 0x12
	.4byte	0xbe
	.byte	0xf
	.byte	0
	.uleb128 0x7
	.4byte	0x2ce
	.uleb128 0x21
	.4byte	.LASF36
	.byte	0x1
	.byte	0xb3
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x30c
	.uleb128 0x1d
	.4byte	.LVL5
	.4byte	0x8ed
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	s_time_update_lock
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LASF37
	.byte	0x1
	.byte	0xb8
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x335
	.uleb128 0x1d
	.4byte	.LVL6
	.4byte	0x8f8
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	s_time_update_lock
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	.LASF43
	.byte	0x1
	.byte	0xbd
	.4byte	0xaa
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3db
	.uleb128 0x23
	.4byte	.LASF38
	.byte	0x1
	.byte	0xbf
	.4byte	0x94
	.4byte	.LLST0
	.uleb128 0x23
	.4byte	.LASF39
	.byte	0x1
	.byte	0xc0
	.4byte	0xaa
	.4byte	.LLST1
	.uleb128 0x24
	.4byte	.LASF40
	.byte	0x1
	.byte	0xc1
	.4byte	0x94
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x25
	.4byte	.LASF41
	.byte	0x1
	.byte	0xc2
	.4byte	0xfa
	.uleb128 0x16
	.4byte	.LASF35
	.4byte	0x3db
	.uleb128 0x25
	.4byte	.LASF42
	.byte	0x1
	.byte	0xd9
	.4byte	0xaa
	.uleb128 0x26
	.4byte	0x18f
	.4byte	.LBB63
	.4byte	.LBE63-.LBB63
	.byte	0x1
	.byte	0xc8
	.4byte	0x3bb
	.uleb128 0x18
	.4byte	.LBB64
	.4byte	.LBE64-.LBB64
	.uleb128 0x19
	.4byte	0x19f
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	0x18f
	.4byte	.LBB74
	.4byte	.LBE74-.LBB74
	.byte	0x1
	.byte	0xd2
	.uleb128 0x18
	.4byte	.LBB75
	.4byte	.LBE75-.LBB75
	.uleb128 0x19
	.4byte	0x19f
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0x1ad
	.uleb128 0x28
	.4byte	.LASF44
	.byte	0x1
	.byte	0xde
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4e2
	.uleb128 0x29
	.4byte	.LASF45
	.byte	0x1
	.byte	0xde
	.4byte	0xaa
	.4byte	.LLST2
	.uleb128 0x23
	.4byte	.LASF46
	.byte	0x1
	.byte	0xe2
	.4byte	0xaa
	.4byte	.LLST3
	.uleb128 0x25
	.4byte	.LASF41
	.byte	0x1
	.byte	0xe4
	.4byte	0xfa
	.uleb128 0x25
	.4byte	.LASF47
	.byte	0x1
	.byte	0xe5
	.4byte	0xaa
	.uleb128 0x2a
	.4byte	.LASF35
	.4byte	0x4f2
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5380
	.uleb128 0x23
	.4byte	.LASF48
	.byte	0x1
	.byte	0xed
	.4byte	0xaa
	.4byte	.LLST4
	.uleb128 0x23
	.4byte	.LASF49
	.byte	0x1
	.byte	0xee
	.4byte	0x94
	.4byte	.LLST5
	.uleb128 0x23
	.4byte	.LASF50
	.byte	0x1
	.byte	0xf3
	.4byte	0x4f7
	.4byte	.LLST6
	.uleb128 0x26
	.4byte	0x18f
	.4byte	.LBB96
	.4byte	.LBE96-.LBB96
	.byte	0x1
	.byte	0xe4
	.4byte	0x488
	.uleb128 0x18
	.4byte	.LBB97
	.4byte	.LBE97-.LBB97
	.uleb128 0x19
	.4byte	0x19f
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL14
	.4byte	0x8ed
	.4byte	0x49f
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	s_time_update_lock
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL20
	.4byte	0x8e2
	.4byte	0x4ce
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xe8
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5380
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC38
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL35
	.4byte	0x8f8
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	s_time_update_lock
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	0xcc
	.4byte	0x4f2
	.uleb128 0x12
	.4byte	0xbe
	.byte	0x18
	.byte	0
	.uleb128 0x7
	.4byte	0x4e2
	.uleb128 0x7
	.4byte	0x94
	.uleb128 0x2b
	.4byte	.LASF51
	.byte	0x1
	.2byte	0x115
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5c9
	.uleb128 0x2c
	.4byte	.LASF52
	.byte	0x1
	.2byte	0x115
	.4byte	0x94
	.4byte	.LLST7
	.uleb128 0x2d
	.4byte	.LASF53
	.byte	0x1
	.2byte	0x11e
	.4byte	0x94
	.4byte	.LLST8
	.uleb128 0x2d
	.4byte	.LASF54
	.byte	0x1
	.2byte	0x11f
	.4byte	0x94
	.4byte	.LLST9
	.uleb128 0x16
	.4byte	.LASF35
	.4byte	0x5d9
	.uleb128 0x2d
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x120
	.4byte	0x94
	.4byte	.LLST10
	.uleb128 0x2e
	.4byte	.LASF55
	.byte	0x1
	.2byte	0x121
	.4byte	0xaa
	.uleb128 0x2d
	.4byte	.LASF56
	.byte	0x1
	.2byte	0x122
	.4byte	0xaa
	.4byte	.LLST11
	.uleb128 0x2d
	.4byte	.LASF57
	.byte	0x1
	.2byte	0x123
	.4byte	0x94
	.4byte	.LLST12
	.uleb128 0x1f
	.4byte	.LVL37
	.4byte	0x8ed
	.4byte	0x59e
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	s_time_update_lock
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL38
	.4byte	0x8f8
	.4byte	0x5b5
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	s_time_update_lock
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL54
	.4byte	0x8f8
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	s_time_update_lock
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	0xcc
	.4byte	0x5d9
	.uleb128 0x12
	.4byte	0xbe
	.byte	0x1e
	.byte	0
	.uleb128 0x7
	.4byte	0x5c9
	.uleb128 0x2b
	.4byte	.LASF58
	.byte	0x1
	.2byte	0x147
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x67e
	.uleb128 0x2c
	.4byte	.LASF59
	.byte	0x1
	.2byte	0x147
	.4byte	0x9f
	.4byte	.LLST13
	.uleb128 0x2a
	.4byte	.LASF35
	.4byte	0x68e
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5409
	.uleb128 0x2d
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x14c
	.4byte	0xaa
	.4byte	.LLST14
	.uleb128 0x1f
	.4byte	.LVL56
	.4byte	0x8e2
	.4byte	0x653
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x149
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5409
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC55
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL57
	.4byte	0x8ed
	.4byte	0x66a
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	s_time_update_lock
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL61
	.4byte	0x8f8
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	s_time_update_lock
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	0xcc
	.4byte	0x68e
	.uleb128 0x12
	.4byte	0xbe
	.byte	0x16
	.byte	0
	.uleb128 0x7
	.4byte	0x67e
	.uleb128 0x2f
	.4byte	.LASF86
	.byte	0x1
	.2byte	0x157
	.4byte	0xde
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7d6
	.uleb128 0x2c
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x157
	.4byte	0x101
	.4byte	.LLST15
	.uleb128 0x30
	.string	"err"
	.byte	0x1
	.2byte	0x15b
	.4byte	0xde
	.4byte	.LLST16
	.uleb128 0x2d
	.4byte	.LASF61
	.byte	0x1
	.2byte	0x164
	.4byte	0x94
	.4byte	.LLST17
	.uleb128 0x2a
	.4byte	.LASF35
	.4byte	0x7e6
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5419
	.uleb128 0x31
	.4byte	.LBB119
	.4byte	.LBE119-.LBB119
	.4byte	0x73f
	.uleb128 0x2d
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x171
	.4byte	0xde
	.4byte	.LLST18
	.uleb128 0x32
	.4byte	.LVL71
	.4byte	0x903
	.uleb128 0x1d
	.4byte	.LVL72
	.4byte	0x90f
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x171
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5419
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC88
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL63
	.4byte	0x91a
	.4byte	0x771
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x39
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0xc00
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	timer_alarm_isr
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	s_timer_interrupt_handle
	.byte	0
	.uleb128 0x32
	.4byte	.LVL65
	.4byte	0x925
	.uleb128 0x1f
	.4byte	.LVL66
	.4byte	0x930
	.4byte	0x7a0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC72
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC70
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x32
	.4byte	.LVL67
	.4byte	0x93b
	.uleb128 0x1d
	.4byte	.LVL70
	.4byte	0x8e2
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x168
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5419
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC76
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	0xcc
	.4byte	0x7e6
	.uleb128 0x12
	.4byte	0xbe
	.byte	0x13
	.byte	0
	.uleb128 0x7
	.4byte	0x7d6
	.uleb128 0x33
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x176
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x81d
	.uleb128 0x16
	.4byte	.LASF35
	.4byte	0x82d
	.uleb128 0x32
	.4byte	.LVL73
	.4byte	0x947
	.uleb128 0x32
	.4byte	.LVL74
	.4byte	0x952
	.byte	0
	.uleb128 0x11
	.4byte	0xcc
	.4byte	0x82d
	.uleb128 0x12
	.4byte	0xbe
	.byte	0x15
	.byte	0
	.uleb128 0x7
	.4byte	0x81d
	.uleb128 0x34
	.4byte	.LASF87
	.byte	0x1
	.2byte	0x185
	.4byte	0xaa
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x35
	.string	"TAG"
	.byte	0x1
	.byte	0x62
	.4byte	0x18a
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC70
	.byte	0x9f
	.uleb128 0x24
	.4byte	.LASF64
	.byte	0x1
	.byte	0x65
	.4byte	0x11c
	.uleb128 0x5
	.byte	0x3
	.4byte	s_timer_interrupt_handle
	.uleb128 0x24
	.4byte	.LASF65
	.byte	0x1
	.byte	0x69
	.4byte	0x101
	.uleb128 0x5
	.byte	0x3
	.4byte	s_alarm_handler
	.uleb128 0x24
	.4byte	.LASF66
	.byte	0x1
	.byte	0x6e
	.4byte	0xaa
	.uleb128 0x5
	.byte	0x3
	.4byte	s_time_base_us
	.uleb128 0x24
	.4byte	.LASF67
	.byte	0x1
	.byte	0x71
	.4byte	0x94
	.uleb128 0x5
	.byte	0x3
	.4byte	s_timer_ticks_per_us
	.uleb128 0x24
	.4byte	.LASF68
	.byte	0x1
	.byte	0x75
	.4byte	0x94
	.uleb128 0x5
	.byte	0x3
	.4byte	s_timer_us_per_overflow
	.uleb128 0x24
	.4byte	.LASF69
	.byte	0x1
	.byte	0x80
	.4byte	0xfa
	.uleb128 0x5
	.byte	0x3
	.4byte	s_mask_overflow
	.uleb128 0x24
	.4byte	.LASF70
	.byte	0x1
	.byte	0x87
	.4byte	0xfa
	.uleb128 0x5
	.byte	0x3
	.4byte	s_overflow_happened
	.uleb128 0x36
	.4byte	.LASF88
	.byte	0x1
	.byte	0x93
	.4byte	0x17f
	.uleb128 0x5
	.byte	0x3
	.4byte	s_time_update_lock
	.uleb128 0x37
	.4byte	.LASF71
	.4byte	.LASF71
	.byte	0x7
	.byte	0x29
	.uleb128 0x37
	.4byte	.LASF72
	.4byte	.LASF72
	.byte	0x6
	.byte	0xda
	.uleb128 0x37
	.4byte	.LASF73
	.4byte	.LASF73
	.byte	0x6
	.byte	0xd9
	.uleb128 0x38
	.4byte	.LASF74
	.4byte	.LASF74
	.byte	0x5
	.2byte	0x105
	.uleb128 0x37
	.4byte	.LASF75
	.4byte	.LASF75
	.byte	0x4
	.byte	0x4f
	.uleb128 0x37
	.4byte	.LASF76
	.4byte	.LASF76
	.byte	0x5
	.byte	0x99
	.uleb128 0x37
	.4byte	.LASF77
	.4byte	.LASF77
	.byte	0x8
	.byte	0x57
	.uleb128 0x37
	.4byte	.LASF78
	.4byte	.LASF78
	.byte	0x9
	.byte	0xde
	.uleb128 0x38
	.4byte	.LASF79
	.4byte	.LASF79
	.byte	0xa
	.2byte	0x166
	.uleb128 0x37
	.4byte	.LASF80
	.4byte	.LASF80
	.byte	0x5
	.byte	0xf8
	.uleb128 0x37
	.4byte	.LASF81
	.4byte	.LASF81
	.byte	0x5
	.byte	0xd3
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
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x17
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL7
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL8
	.4byte	.LVL12
	.2byte	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL12
	.4byte	.LFE19
	.2byte	0xa
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.byte	0x3
	.4byte	s_time_base_us+4
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL13
	.4byte	.LVL16
	.2byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL16
	.4byte	.LFE20
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL15
	.4byte	.LVL17
	.2byte	0x6
	.byte	0x5c
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL17
	.4byte	.LVL20-1
	.2byte	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x6
	.byte	0x5c
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL23
	.4byte	.LVL25
	.2byte	0x6
	.byte	0x5c
	.byte	0x93
	.uleb128 0x4
	.byte	0x59
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL26
	.4byte	.LVL29
	.2byte	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x59
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x59
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL26
	.4byte	.LVL31
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0xefffffff
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0xefffffff
	.4byte	.LVL33
	.4byte	.LVL35-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL27
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL36
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL53
	.4byte	.LVL54-1
	.2byte	0x5
	.byte	0x3
	.4byte	s_timer_ticks_per_us
	.4byte	.LVL54-1
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL39
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL53
	.4byte	.LVL54-1
	.2byte	0x5
	.byte	0x3
	.4byte	s_timer_ticks_per_us
	.4byte	.LVL54-1
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL40
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL41
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL45
	.4byte	.LVL46
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
	.4byte	.LVL47
	.4byte	.LVL50
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0xefffffff
	.4byte	.LVL50
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL55
	.4byte	.LVL60
	.2byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL60
	.4byte	.LFE23
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL58
	.4byte	.LVL59-1
	.2byte	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL62
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL64
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL64
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL67
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL71
	.4byte	.LVL72-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL72
	.4byte	.LFE24
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x64
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB30
	.4byte	.LBE30
	.4byte	.LBB37
	.4byte	.LBE37
	.4byte	0
	.4byte	0
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF21:
	.string	"intr_handler_t"
.LASF81:
	.string	"esp_intr_free"
.LASF70:
	.string	"s_overflow_happened"
.LASF42:
	.string	"result"
.LASF62:
	.string	"__err_rc"
.LASF45:
	.string	"timestamp"
.LASF75:
	.string	"_esp_error_check_failed"
.LASF85:
	.string	"timer_alarm_isr"
.LASF29:
	.string	"ESP_LOG_VERBOSE"
.LASF57:
	.string	"new_alarm_val"
.LASF14:
	.string	"uint64_t"
.LASF66:
	.string	"s_time_base_us"
.LASF72:
	.string	"vTaskEnterCritical"
.LASF16:
	.string	"sizetype"
.LASF48:
	.string	"compare_val"
.LASF63:
	.string	"esp_timer_impl_deinit"
.LASF67:
	.string	"s_timer_ticks_per_us"
.LASF6:
	.string	"__uint32_t"
.LASF53:
	.string	"new_ticks_per_us"
.LASF87:
	.string	"esp_timer_impl_get_min_period_us"
.LASF27:
	.string	"ESP_LOG_INFO"
.LASF37:
	.string	"esp_timer_impl_unlock"
.LASF13:
	.string	"int64_t"
.LASF23:
	.string	"intr_handle_t"
.LASF32:
	.string	"portMUX_TYPE"
.LASF74:
	.string	"esp_intr_enable"
.LASF12:
	.string	"uint32_t"
.LASF22:
	.string	"intr_handle_data_t"
.LASF3:
	.string	"short int"
.LASF9:
	.string	"long long int"
.LASF68:
	.string	"s_timer_us_per_overflow"
.LASF52:
	.string	"apb_ticks_per_us"
.LASF60:
	.string	"alarm_handler"
.LASF15:
	.string	"long int"
.LASF8:
	.string	"__int64_t"
.LASF50:
	.string	"offset"
.LASF44:
	.string	"esp_timer_impl_set_alarm"
.LASF39:
	.string	"time_base"
.LASF69:
	.string	"s_mask_overflow"
.LASF73:
	.string	"vTaskExitCritical"
.LASF55:
	.string	"ticks_to_alarm"
.LASF46:
	.string	"time_after_timebase_us"
.LASF2:
	.string	"unsigned char"
.LASF35:
	.string	"__func__"
.LASF30:
	.string	"owner"
.LASF34:
	.string	"timer_count_reload"
.LASF1:
	.string	"signed char"
.LASF0:
	.string	"long long unsigned int"
.LASF83:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/esp32/esp_timer_esp32.c"
.LASF7:
	.string	"unsigned int"
.LASF54:
	.string	"alarm"
.LASF51:
	.string	"esp_timer_impl_update_apb_freq"
.LASF61:
	.string	"apb_freq"
.LASF38:
	.string	"timer_val"
.LASF78:
	.string	"ets_printf"
.LASF4:
	.string	"short unsigned int"
.LASF18:
	.string	"char"
.LASF56:
	.string	"new_ticks"
.LASF28:
	.string	"ESP_LOG_DEBUG"
.LASF11:
	.string	"int32_t"
.LASF24:
	.string	"ESP_LOG_NONE"
.LASF40:
	.string	"ticks_per_us"
.LASF41:
	.string	"overflow"
.LASF64:
	.string	"s_timer_interrupt_handle"
.LASF20:
	.string	"_Bool"
.LASF86:
	.string	"esp_timer_impl_init"
.LASF10:
	.string	"__uint64_t"
.LASF43:
	.string	"esp_timer_impl_get_time"
.LASF26:
	.string	"ESP_LOG_WARN"
.LASF36:
	.string	"esp_timer_impl_lock"
.LASF79:
	.string	"rtc_clk_apb_freq_get"
.LASF17:
	.string	"long unsigned int"
.LASF80:
	.string	"esp_intr_disable"
.LASF49:
	.string	"alarm_reg_val"
.LASF58:
	.string	"esp_timer_impl_advance"
.LASF31:
	.string	"count"
.LASF59:
	.string	"time_us"
.LASF5:
	.string	"__int32_t"
.LASF47:
	.string	"cur_count"
.LASF77:
	.string	"esp_log_timestamp"
.LASF88:
	.string	"s_time_update_lock"
.LASF71:
	.string	"__assert_func"
.LASF84:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\esp32"
.LASF76:
	.string	"esp_intr_alloc"
.LASF82:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF33:
	.string	"timer_overflow_happened"
.LASF25:
	.string	"ESP_LOG_ERROR"
.LASF19:
	.string	"esp_err_t"
.LASF65:
	.string	"s_alarm_handler"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
