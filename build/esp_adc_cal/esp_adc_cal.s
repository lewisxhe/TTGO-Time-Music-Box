	.file	"esp_adc_cal.c"
	.text
.Ltext0:
	.section	.text.check_efuse_vref,"ax",@progbits
	.literal_position
	.literal .LC0, 1073061904
	.align	4
	.type	check_efuse_vref, @function
check_efuse_vref:
.LFB4:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/esp_adc_cal/esp_adc_cal.c"
	.loc 1 114 0
	entry	sp, 32
.LCFI0:
.LBB22:
.LBB23:
	.loc 1 116 0
	l32r	a2, .LC0
	memw
	l32i.n	a2, a2, 0
.LBE23:
	extui	a8, a2, 8, 5
.LBE22:
	movi.n	a2, 0
	movi.n	a9, 1
	movnez	a2, a9, a8
	.loc 1 117 0
	retw.n
.LFE4:
	.size	check_efuse_vref, .-check_efuse_vref
	.section	.text.check_efuse_tp,"ax",@progbits
	.literal_position
	.literal .LC1, 1073061900
	.literal .LC2, 1073062020
	.align	4
	.type	check_efuse_tp, @function
check_efuse_tp:
.LFB5:
	.loc 1 120 0
	entry	sp, 32
.LCFI1:
.LBB24:
.LBB25:
	.loc 1 122 0
	l32r	a8, .LC1
	memw
	l32i.n	a8, a8, 0
.LBE25:
.LBE24:
	bbci	a8, 14, .L4
.LBB26:
.LBB27:
	.loc 1 126 0
	l32r	a2, .LC2
	memw
	l32i.n	a8, a2, 0
.LBE27:
	extui	a8, a8, 0, 7
.LBE26:
	beqz.n	a8, .L5
.LBB28:
.LBB29:
	.loc 1 127 0 discriminator 1
	memw
	l32i.n	a2, a2, 0
.LBE29:
	extui	a2, a2, 16, 7
.LBE28:
	.loc 1 126 0 discriminator 1
	beqz.n	a2, .L6
.LBB30:
.LBB31:
	.loc 1 128 0
	l32r	a2, .LC2
	memw
	l32i.n	a2, a2, 0
.LBE31:
	extui	a2, a2, 7, 9
.LBE30:
	.loc 1 127 0
	beqz.n	a2, .L7
.LBB32:
.LBB33:
	.loc 1 129 0
	l32r	a2, .LC2
	memw
	l32i.n	a2, a2, 0
.LBE33:
	extui	a2, a2, 23, 9
.LBE32:
	.loc 1 128 0
	bnez.n	a2, .L8
	retw.n
.L4:
	.loc 1 123 0
	movi.n	a2, 0
	retw.n
.L5:
	.loc 1 132 0
	movi.n	a2, 0
	retw.n
.L6:
	movi.n	a2, 0
	retw.n
.L7:
	movi.n	a2, 0
	retw.n
.L8:
	.loc 1 130 0
	movi.n	a2, 1
	.loc 1 134 0
	retw.n
.LFE5:
	.size	check_efuse_tp, .-check_efuse_tp
	.section	.text.read_efuse_vref,"ax",@progbits
	.literal_position
	.literal .LC3, 1073061904
	.align	4
	.type	read_efuse_vref, @function
read_efuse_vref:
.LFB7:
	.loc 1 154 0
	entry	sp, 32
.LCFI2:
.LVL0:
.LBB34:
.LBB35:
	.loc 1 157 0
	l32r	a2, .LC3
	memw
	l32i.n	a2, a2, 0
.LBE35:
	srli	a2, a2, 8
.LVL1:
.LBE34:
.LBB36:
.LBB37:
	.loc 1 139 0
	bbci	a2, 4, .L10
	.loc 1 144 0
	extui	a2, a2, 0, 4
.LVL2:
	neg	a2, a2
.LVL3:
	j	.L11
.LVL4:
.L10:
	.loc 1 148 0
	extui	a2, a2, 0, 4
.LVL5:
.L11:
.LBE37:
.LBE36:
	.loc 1 158 0
	subx8	a2, a2, a2
.LVL6:
	.loc 1 160 0
	movi	a8, 0x44c
	add.n	a2, a2, a8
.LVL7:
	retw.n
.LFE7:
	.size	read_efuse_vref, .-read_efuse_vref
	.section	.text.read_efuse_tp_low,"ax",@progbits
	.literal_position
	.literal .LC4, 1073062020
	.align	4
	.type	read_efuse_tp_low, @function
read_efuse_tp_low:
.LFB8:
	.loc 1 163 0
.LVL8:
	entry	sp, 32
.LCFI3:
	.loc 1 168 0
	bnei	a2, 1, .L13
.LVL9:
.LBB38:
.LBB39:
	.loc 1 170 0
	l32r	a2, .LC4
.LVL10:
	memw
	l32i.n	a8, a2, 0
.LBE39:
	extui	a8, a8, 0, 7
.LVL11:
.LBE38:
	.loc 1 169 0
	movi	a2, 0x116
	j	.L14
.LVL12:
.L13:
.LBB40:
.LBB41:
	.loc 1 173 0
	l32r	a2, .LC4
.LVL13:
	memw
	l32i.n	a8, a2, 0
.LBE41:
	extui	a8, a8, 16, 7
.LVL14:
.LBE40:
	.loc 1 172 0
	movi	a2, 0x1a5
.LVL15:
.L14:
.LBB42:
.LBB43:
	.loc 1 139 0
	movi.n	a9, 0x40
	bnone	a8, a9, .L15
	.loc 1 142 0
	neg	a8, a8
.LVL16:
	extui	a8, a8, 0, 6
.LVL17:
	neg	a8, a8
.LVL18:
	j	.L16
.LVL19:
.L15:
	.loc 1 148 0
	extui	a8, a8, 0, 6
.LVL20:
.L16:
.LBE43:
.LBE42:
	.loc 1 177 0
	addx4	a2, a8, a2
.LVL21:
	retw.n
.LFE8:
	.size	read_efuse_tp_low, .-read_efuse_tp_low
	.section	.text.read_efuse_tp_high,"ax",@progbits
	.literal_position
	.literal .LC5, 3265
	.literal .LC6, 3406
	.literal .LC7, 1073062020
	.align	4
	.type	read_efuse_tp_high, @function
read_efuse_tp_high:
.LFB9:
	.loc 1 180 0
.LVL22:
	entry	sp, 32
.LCFI4:
	.loc 1 185 0
	bnei	a2, 1, .L18
.LVL23:
.LBB44:
.LBB45:
	.loc 1 187 0
	l32r	a2, .LC7
.LVL24:
	memw
	l32i.n	a8, a2, 0
.LBE45:
	extui	a8, a8, 7, 9
.LVL25:
.LBE44:
	.loc 1 186 0
	l32r	a2, .LC5
	j	.L19
.LVL26:
.L18:
.LBB46:
.LBB47:
	.loc 1 190 0
	l32r	a2, .LC7
.LVL27:
	memw
	l32i.n	a8, a2, 0
.LBE47:
	extui	a8, a8, 23, 9
.LVL28:
.LBE46:
	.loc 1 189 0
	l32r	a2, .LC6
.LVL29:
.L19:
.LBB48:
.LBB49:
	.loc 1 139 0
	movi	a9, 0x100
	bnone	a8, a9, .L20
	.loc 1 142 0
	neg	a8, a8
.LVL30:
	extui	a8, a8, 0, 8
.LVL31:
	neg	a8, a8
.LVL32:
	j	.L21
.LVL33:
.L20:
	.loc 1 148 0
	extui	a8, a8, 0, 8
.LVL34:
.L21:
.LBE49:
.LBE48:
	.loc 1 194 0
	addx4	a2, a8, a2
.LVL35:
	retw.n
.LFE9:
	.size	read_efuse_tp_high, .-read_efuse_tp_high
	.section	.text.characterize_using_two_point,"ax",@progbits
	.literal_position
	.literal .LC8, adc1_tp_atten_offset
	.literal .LC9, adc1_tp_atten_scale
	.literal .LC10, adc2_tp_atten_offset
	.literal .LC11, adc2_tp_atten_scale
	.align	4
	.type	characterize_using_two_point, @function
characterize_using_two_point:
.LFB10:
	.loc 1 203 0
.LVL36:
	entry	sp, 32
.LCFI5:
	.loc 1 207 0
	bnei	a2, 1, .L24
	.loc 1 209 0
	l32r	a10, .LC8
	.loc 1 208 0
	l32r	a9, .LC9
	j	.L23
.L24:
	.loc 1 212 0
	l32r	a10, .LC10
	.loc 1 211 0
	l32r	a9, .LC11
.L23:
.LVL37:
	.loc 1 215 0
	sub	a5, a4, a5
.LVL38:
	.loc 1 218 0
	slli	a3, a3, 2
.LVL39:
	add.n	a8, a9, a3
	l32i.n	a9, a8, 0
.LVL40:
	movi	a8, 0x2bc
	mull	a9, a9, a8
	srli	a11, a5, 1
	add.n	a9, a9, a11
	quou	a9, a9, a5
	s32i.n	a9, a6, 0
	.loc 1 220 0
	add.n	a3, a10, a3
	mull	a4, a4, a8
.LVL41:
	add.n	a8, a11, a4
	quou	a8, a8, a5
	l32i.n	a5, a3, 0
.LVL42:
	sub	a8, a5, a8
	movi	a3, 0x352
	add.n	a8, a8, a3
	s32i.n	a8, a7, 0
	retw.n
.LFE10:
	.size	characterize_using_two_point, .-characterize_using_two_point
	.section	.text.characterize_using_vref,"ax",@progbits
	.literal_position
	.literal .LC12, adc1_vref_atten_offset
	.literal .LC13, adc1_vref_atten_scale
	.literal .LC14, adc2_vref_atten_offset
	.literal .LC15, adc2_vref_atten_scale
	.align	4
	.type	characterize_using_vref, @function
characterize_using_vref:
.LFB11:
	.loc 1 228 0
.LVL43:
	entry	sp, 32
.LCFI6:
	.loc 1 232 0
	bnei	a2, 1, .L27
	.loc 1 234 0
	l32r	a9, .LC12
	.loc 1 233 0
	l32r	a8, .LC13
	j	.L26
.L27:
	.loc 1 237 0
	l32r	a9, .LC14
	.loc 1 236 0
	l32r	a8, .LC15
.L26:
.LVL44:
	.loc 1 241 0
	slli	a3, a3, 2
.LVL45:
	add.n	a8, a8, a3
.LVL46:
	l32i.n	a8, a8, 0
	mull	a4, a8, a4
.LVL47:
	srli	a4, a4, 12
	s32i.n	a4, a5, 0
	.loc 1 242 0
	add.n	a3, a9, a3
	l32i.n	a3, a3, 0
	s32i.n	a3, a6, 0
	retw.n
.LFE11:
	.size	characterize_using_vref, .-characterize_using_vref
	.section	.text.calculate_voltage_linear,"ax",@progbits
	.literal_position
	.literal .LC16, 32768
	.align	4
	.type	calculate_voltage_linear, @function
calculate_voltage_linear:
.LFB12:
	.loc 1 247 0
.LVL48:
	entry	sp, 32
.LCFI7:
	.loc 1 249 0
	mull	a2, a3, a2
.LVL49:
	l32r	a8, .LC16
	add.n	a2, a2, a8
	extui	a2, a2, 16, 16
	.loc 1 250 0
	add.n	a2, a2, a4
	retw.n
.LFE12:
	.size	calculate_voltage_linear, .-calculate_voltage_linear
	.section	.text.calculate_voltage_lut,"ax",@progbits
	.literal_position
	.literal .LC17, -2880
	.literal .LC18, 1374389535
	.align	4
	.type	calculate_voltage_lut, @function
calculate_voltage_lut:
.LFB13:
	.loc 1 254 0
.LVL50:
	entry	sp, 32
.LCFI8:
	.loc 1 256 0
	l32r	a8, .LC17
	add.n	a8, a2, a8
	srli	a8, a8, 6
.LVL51:
	.loc 1 259 0
	movi	a10, 0x4b0
	sub	a14, a10, a3
.LVL52:
	.loc 1 260 0
	movi	a6, -0x3e8
	add.n	a3, a3, a6
.LVL53:
	.loc 1 261 0
	addi	a12, a8, 46
	slli	a12, a12, 6
	sub	a12, a12, a2
.LVL54:
	.loc 1 262 0
	addi	a6, a8, 45
	slli	a6, a6, 6
	sub	a2, a2, a6
.LVL55:
	.loc 1 265 0
	slli	a15, a8, 2
	add.n	a6, a4, a15
	l32i.n	a6, a6, 0
.LVL56:
	.loc 1 266 0
	addi.n	a10, a8, 1
	slli	a9, a10, 2
	add.n	a4, a4, a9
.LVL57:
	l32i.n	a11, a4, 0
.LVL58:
	.loc 1 267 0
	add.n	a15, a5, a15
	l32i.n	a13, a15, 0
.LVL59:
	.loc 1 268 0
	add.n	a9, a5, a9
	l32i.n	a9, a9, 0
.LVL60:
	.loc 1 272 0
	mull	a6, a14, a6
.LVL61:
	mull	a13, a3, a13
.LVL62:
	add.n	a13, a6, a13
	mull	a8, a13, a12
.LVL63:
	mull	a10, a14, a11
.LVL64:
	mull	a10, a2, a10
	add.n	a10, a8, a10
	mull	a3, a3, a9
.LVL65:
	mull	a2, a2, a3
.LVL66:
	add.n	a8, a10, a2
.LVL67:
	.loc 1 273 0
	addmi	a8, a8, 0x1900
.LVL68:
	.loc 1 274 0
	l32r	a2, .LC18
	mulsh	a2, a8, a2
	srai	a2, a2, 12
	srai	a8, a8, 31
.LVL69:
	.loc 1 276 0
	sub	a2, a2, a8
.LVL70:
	retw.n
.LFE13:
	.size	calculate_voltage_lut, .-calculate_voltage_lut
	.section	.text.esp_adc_cal_check_efuse,"ax",@progbits
	.align	4
	.global	esp_adc_cal_check_efuse
	.type	esp_adc_cal_check_efuse, @function
esp_adc_cal_check_efuse:
.LFB15:
	.loc 1 286 0
.LVL71:
	entry	sp, 32
.LCFI9:
	.loc 1 287 0
	bnei	a2, 1, .L31
	.loc 1 288 0
	call8	check_efuse_tp
.LVL72:
	beqz.n	a10, .L33
	movi.n	a2, 0
.LVL73:
	retw.n
.LVL74:
.L31:
	.loc 1 289 0
	bnez.n	a2, .L34
	.loc 1 290 0
	call8	check_efuse_vref
.LVL75:
	beqz.n	a10, .L35
	retw.n
.L33:
	.loc 1 288 0
	movi	a2, 0x106
.LVL76:
	retw.n
.LVL77:
.L34:
	.loc 1 292 0
	movi	a2, 0x102
.LVL78:
	retw.n
.LVL79:
.L35:
	.loc 1 290 0
	movi	a2, 0x106
.LVL80:
	.loc 1 294 0
	retw.n
.LFE15:
	.size	esp_adc_cal_check_efuse, .-esp_adc_cal_check_efuse
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC23:
	.string	"(adc_num == ADC_UNIT_1) || (adc_num == ADC_UNIT_2)"
	.align	4
.LC26:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/esp_adc_cal/esp_adc_cal.c"
	.align	4
.LC28:
	.string	"chars != NULL"
	.align	4
.LC30:
	.string	"bit_width < ADC_WIDTH_MAX"
	.section	.text.esp_adc_cal_characterize,"ax",@progbits
	.literal_position
	.literal .LC19, lut_adc1_low
	.literal .LC20, lut_adc2_low
	.literal .LC21, lut_adc1_high
	.literal .LC22, lut_adc2_high
	.literal .LC24, .LC23
	.literal .LC25, __func__$3699
	.literal .LC27, .LC26
	.literal .LC29, .LC28
	.literal .LC31, .LC30
	.align	4
	.global	esp_adc_cal_characterize
	.type	esp_adc_cal_characterize, @function
esp_adc_cal_characterize:
.LFB16:
	.loc 1 301 0
.LVL81:
	entry	sp, 48
.LCFI10:
	s32i.n	a5, sp, 0
	.loc 1 303 0
	addi.n	a5, a2, -1
.LVL82:
	bltui	a5, 2, .L37
	.loc 1 303 0 is_stmt 0 discriminator 1
	l32r	a13, .LC24
	l32r	a12, .LC25
	movi	a11, 0x12f
	l32r	a10, .LC27
	call8	__assert_func
.LVL83:
.L37:
	.loc 1 304 0 is_stmt 1
	bnez.n	a6, .L38
	.loc 1 304 0 is_stmt 0 discriminator 1
	l32r	a13, .LC29
	l32r	a12, .LC25
	movi	a11, 0x130
	l32r	a10, .LC27
	call8	__assert_func
.LVL84:
.L38:
	.loc 1 305 0 is_stmt 1
	bltui	a4, 4, .L39
	.loc 1 305 0 is_stmt 0 discriminator 1
	l32r	a13, .LC31
	l32r	a12, .LC25
	movi	a11, 0x131
	l32r	a10, .LC27
	call8	__assert_func
.LVL85:
.L39:
	.loc 1 308 0 is_stmt 1
	call8	check_efuse_tp
.LVL86:
	mov.n	a7, a10
.LVL87:
	.loc 1 309 0
	call8	check_efuse_vref
.LVL88:
	mov.n	a5, a10
.LVL89:
	.loc 1 312 0
	beqz.n	a7, .L40
.LBB50:
	.loc 1 314 0
	mov.n	a10, a2
	call8	read_efuse_tp_high
.LVL90:
	mov.n	a7, a10
.LVL91:
	.loc 1 315 0
	mov.n	a10, a2
	call8	read_efuse_tp_low
.LVL92:
	.loc 1 316 0
	addi	a15, a6, 16
	addi.n	a14, a6, 12
	mov.n	a13, a10
	mov.n	a12, a7
	mov.n	a11, a3
	mov.n	a10, a2
.LVL93:
	call8	characterize_using_two_point
.LVL94:
	.loc 1 317 0
	movi.n	a7, 1
.LVL95:
.LBE50:
	j	.L41
.LVL96:
.L40:
	.loc 1 318 0
	beqz.n	a10, .L42
.LBB51:
	.loc 1 320 0
	call8	read_efuse_vref
.LVL97:
	.loc 1 321 0
	addi	a14, a6, 16
	addi.n	a13, a6, 12
	mov.n	a12, a10
	mov.n	a11, a3
	mov.n	a10, a2
.LVL98:
	call8	characterize_using_vref
.LVL99:
	.loc 1 322 0
	movi.n	a7, 0
.LVL100:
.LBE51:
	j	.L41
.LVL101:
.L42:
	.loc 1 325 0
	addi	a14, a6, 16
	addi.n	a13, a6, 12
	l32i.n	a12, sp, 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	characterize_using_vref
.LVL102:
	.loc 1 326 0
	movi.n	a7, 2
.LVL103:
.L41:
	.loc 1 330 0
	s32i.n	a2, a6, 0
	.loc 1 331 0
	s32i.n	a3, a6, 4
	.loc 1 332 0
	s32i.n	a4, a6, 8
	.loc 1 333 0
	beqz.n	a5, .L48
	.loc 1 333 0 is_stmt 0 discriminator 1
	call8	read_efuse_vref
.LVL104:
	j	.L43
.L48:
	.loc 1 333 0
	l32i.n	a10, sp, 0
.L43:
	.loc 1 333 0 discriminator 4
	s32i.n	a10, a6, 20
	.loc 1 335 0 is_stmt 1 discriminator 4
	bnei	a3, 3, .L44
	.loc 1 336 0
	bnei	a2, 1, .L49
	l32r	a3, .LC19
.LVL105:
	j	.L45
.LVL106:
.L49:
	l32r	a3, .LC20
.LVL107:
.L45:
	.loc 1 336 0 is_stmt 0 discriminator 4
	s32i.n	a3, a6, 24
	.loc 1 337 0 is_stmt 1 discriminator 4
	bnei	a2, 1, .L50
	.loc 1 337 0 is_stmt 0
	l32r	a2, .LC21
.LVL108:
	j	.L46
.LVL109:
.L50:
	l32r	a2, .LC22
.LVL110:
.L46:
	.loc 1 337 0 discriminator 4
	s32i.n	a2, a6, 28
	j	.L47
.LVL111:
.L44:
	.loc 1 339 0 is_stmt 1
	movi.n	a2, 0
.LVL112:
	s32i.n	a2, a6, 24
	.loc 1 340 0
	s32i.n	a2, a6, 28
.LVL113:
.L47:
	.loc 1 343 0
	mov.n	a2, a7
	retw.n
.LFE16:
	.size	esp_adc_cal_characterize, .-esp_adc_cal_characterize
	.section	.text.esp_adc_cal_raw_to_voltage,"ax",@progbits
	.literal_position
	.literal .LC32, 4095
	.literal .LC33, .LC28
	.literal .LC34, __func__$3710
	.literal .LC35, .LC26
	.literal .LC36, 2879
	.literal .LC37, 2944
	.literal .LC38, -2880
	.align	4
	.global	esp_adc_cal_raw_to_voltage
	.type	esp_adc_cal_raw_to_voltage, @function
esp_adc_cal_raw_to_voltage:
.LFB17:
	.loc 1 346 0
.LVL114:
	entry	sp, 32
.LCFI11:
	.loc 1 347 0
	bnez.n	a3, .L52
	.loc 1 347 0 is_stmt 0 discriminator 1
	l32r	a13, .LC33
	l32r	a12, .LC34
	movi	a11, 0x15b
	l32r	a10, .LC35
	call8	__assert_func
.LVL115:
.L52:
	.loc 1 350 0 is_stmt 1
	l32i.n	a4, a3, 8
	movi.n	a8, 3
	sub	a8, a8, a4
	ssl	a8
	sll	a2, a2
.LVL116:
	.loc 1 351 0
	l32r	a4, .LC32
	bgeu	a4, a2, .L53
	.loc 1 352 0
	mov.n	a2, a4
.LVL117:
.L53:
	.loc 1 355 0
	l32i.n	a4, a3, 4
	bnei	a4, 3, .L54
	.loc 1 355 0 is_stmt 0 discriminator 1
	l32r	a4, .LC36
	bgeu	a4, a2, .L54
.LBB52:
	.loc 1 357 0 is_stmt 1
	l32i.n	a13, a3, 28
	l32i.n	a12, a3, 24
	l32i.n	a11, a3, 20
	mov.n	a10, a2
	call8	calculate_voltage_lut
.LVL118:
	mov.n	a4, a10
.LVL119:
	.loc 1 358 0
	l32r	a8, .LC37
	bltu	a8, a2, .L57
.LBB53:
	.loc 1 360 0
	l32i.n	a12, a3, 16
	l32i.n	a11, a3, 12
	mov.n	a10, a2
	call8	calculate_voltage_linear
.LVL120:
	.loc 1 361 0
	l32r	a3, .LC38
.LVL121:
	add.n	a8, a2, a3
.LVL122:
.LBB54:
.LBB55:
	.loc 1 281 0
	slli	a3, a10, 6
	mull	a2, a4, a8
.LVL123:
	add.n	a4, a2, a3
.LVL124:
	mull	a2, a10, a8
	sub	a2, a4, a2
	addi	a2, a2, 32
	srli	a2, a2, 6
.LBE55:
.LBE54:
	.loc 1 361 0
	retw.n
.LVL125:
.L54:
.LBE53:
.LBE52:
	.loc 1 366 0
	l32i.n	a12, a3, 16
	l32i.n	a11, a3, 12
	mov.n	a10, a2
	call8	calculate_voltage_linear
.LVL126:
	mov.n	a2, a10
.LVL127:
	retw.n
.LVL128:
.L57:
.LBB56:
	.loc 1 363 0
	mov.n	a2, a10
.LVL129:
.LBE56:
	.loc 1 368 0
	retw.n
.LFE17:
	.size	esp_adc_cal_raw_to_voltage, .-esp_adc_cal_raw_to_voltage
	.section	.text.esp_adc_cal_get_voltage,"ax",@progbits
	.align	4
	.global	esp_adc_cal_get_voltage
	.type	esp_adc_cal_get_voltage, @function
esp_adc_cal_get_voltage:
.LFB18:
	.loc 1 373 0
.LVL130:
	entry	sp, 48
.LCFI12:
	.loc 1 375 0
	beqz.n	a3, .L62
	.loc 1 376 0
	beqz.n	a4, .L63
	.loc 1 379 0
	l32i.n	a8, a3, 0
	bnei	a8, 1, .L60
	.loc 1 381 0
	bgeui	a2, 8, .L64
	.loc 1 382 0
	mov.n	a10, a2
	call8	adc1_get_raw
.LVL131:
	s32i.n	a10, sp, 0
	j	.L61
.L60:
	.loc 1 385 0
	movi.n	a8, 9
	bltu	a8, a2, .L65
	.loc 1 386 0
	mov.n	a12, sp
	l32i.n	a11, a3, 8
	mov.n	a10, a2
	call8	adc2_get_raw
.LVL132:
	bnez.n	a10, .L66
.L61:
	.loc 1 390 0
	mov.n	a11, a3
	l32i.n	a10, sp, 0
	call8	esp_adc_cal_raw_to_voltage
.LVL133:
	s32i.n	a10, a4, 0
	.loc 1 391 0
	movi.n	a2, 0
.LVL134:
	retw.n
.LVL135:
.L62:
	.loc 1 375 0
	movi	a2, 0x102
.LVL136:
	retw.n
.LVL137:
.L63:
	.loc 1 376 0
	movi	a2, 0x102
.LVL138:
	retw.n
.LVL139:
.L64:
	.loc 1 381 0
	movi	a2, 0x102
.LVL140:
	retw.n
.LVL141:
.L65:
	.loc 1 385 0
	movi	a2, 0x102
.LVL142:
	retw.n
.LVL143:
.L66:
	.loc 1 387 0
	movi	a2, 0x107
.LVL144:
	.loc 1 392 0
	retw.n
.LFE18:
	.size	esp_adc_cal_get_voltage, .-esp_adc_cal_get_voltage
	.section	.text.esp_adc_cal_get_characteristics,"ax",@progbits
	.literal_position
	.literal .LC39, .LC28
	.literal .LC40, __func__$3725
	.literal .LC41, .LC26
	.align	4
	.global	esp_adc_cal_get_characteristics
	.type	esp_adc_cal_get_characteristics, @function
esp_adc_cal_get_characteristics:
.LFB19:
	.loc 1 399 0
.LVL145:
	entry	sp, 32
.LCFI13:
	.loc 1 400 0
	bnez.n	a5, .L68
	.loc 1 400 0 is_stmt 0 discriminator 1
	l32r	a13, .LC39
	l32r	a12, .LC40
	movi	a11, 0x190
	l32r	a10, .LC41
	call8	__assert_func
.LVL146:
.L68:
	.loc 1 401 0 is_stmt 1
	mov.n	a14, a5
	mov.n	a13, a2
	mov.n	a12, a4
	mov.n	a11, a3
	movi.n	a10, 1
	call8	esp_adc_cal_characterize
.LVL147:
	retw.n
.LFE19:
	.size	esp_adc_cal_get_characteristics, .-esp_adc_cal_get_characteristics
	.section	.text.adc1_to_voltage,"ax",@progbits
	.literal_position
	.literal .LC42, .LC28
	.literal .LC43, __func__$3730
	.literal .LC44, .LC26
	.align	4
	.global	adc1_to_voltage
	.type	adc1_to_voltage, @function
adc1_to_voltage:
.LFB20:
	.loc 1 405 0
.LVL148:
	entry	sp, 48
.LCFI14:
	.loc 1 406 0
	bnez.n	a3, .L70
	.loc 1 406 0 is_stmt 0 discriminator 1
	l32r	a13, .LC42
	l32r	a12, .LC43
	movi	a11, 0x196
	l32r	a10, .LC44
	call8	__assert_func
.LVL149:
.L70:
	.loc 1 407 0 is_stmt 1
	movi.n	a8, 0
	s32i.n	a8, sp, 0
	.loc 1 408 0
	mov.n	a12, sp
	mov.n	a11, a3
	mov.n	a10, a2
	call8	esp_adc_cal_get_voltage
.LVL150:
	.loc 1 410 0
	l32i.n	a2, sp, 0
.LVL151:
	retw.n
.LFE20:
	.size	adc1_to_voltage, .-adc1_to_voltage
	.section	.rodata.__func__$3730,"a",@progbits
	.align	4
	.type	__func__$3730, @object
	.size	__func__$3730, 16
__func__$3730:
	.string	"adc1_to_voltage"
	.section	.rodata.__func__$3725,"a",@progbits
	.align	4
	.type	__func__$3725, @object
	.size	__func__$3725, 32
__func__$3725:
	.string	"esp_adc_cal_get_characteristics"
	.section	.rodata.__func__$3710,"a",@progbits
	.align	4
	.type	__func__$3710, @object
	.size	__func__$3710, 27
__func__$3710:
	.string	"esp_adc_cal_raw_to_voltage"
	.section	.rodata.__func__$3699,"a",@progbits
	.align	4
	.type	__func__$3699, @object
	.size	__func__$3699, 25
__func__$3699:
	.string	"esp_adc_cal_characterize"
	.section	.rodata.lut_adc2_high,"a",@progbits
	.align	4
	.type	lut_adc2_high, @object
	.size	lut_adc2_high, 80
lut_adc2_high:
	.word	2657
	.word	2698
	.word	2738
	.word	2774
	.word	2807
	.word	2838
	.word	2867
	.word	2894
	.word	2921
	.word	2946
	.word	2971
	.word	2996
	.word	3020
	.word	3043
	.word	3067
	.word	3092
	.word	3116
	.word	3139
	.word	3162
	.word	3185
	.section	.rodata.lut_adc2_low,"a",@progbits
	.align	4
	.type	lut_adc2_low, @object
	.size	lut_adc2_low, 80
lut_adc2_low:
	.word	2238
	.word	2293
	.word	2347
	.word	2399
	.word	2451
	.word	2507
	.word	2561
	.word	2613
	.word	2662
	.word	2710
	.word	2754
	.word	2792
	.word	2831
	.word	2869
	.word	2904
	.word	2937
	.word	2968
	.word	2999
	.word	3029
	.word	3059
	.section	.rodata.lut_adc1_high,"a",@progbits
	.align	4
	.type	lut_adc1_high, @object
	.size	lut_adc1_high, 80
lut_adc1_high:
	.word	2667
	.word	2706
	.word	2745
	.word	2780
	.word	2813
	.word	2844
	.word	2873
	.word	2901
	.word	2928
	.word	2956
	.word	2982
	.word	3006
	.word	3032
	.word	3059
	.word	3084
	.word	3110
	.word	3135
	.word	3160
	.word	3184
	.word	3209
	.section	.rodata.lut_adc1_low,"a",@progbits
	.align	4
	.type	lut_adc1_low, @object
	.size	lut_adc1_low, 80
lut_adc1_low:
	.word	2240
	.word	2297
	.word	2352
	.word	2405
	.word	2457
	.word	2512
	.word	2564
	.word	2616
	.word	2664
	.word	2709
	.word	2754
	.word	2795
	.word	2832
	.word	2868
	.word	2903
	.word	2937
	.word	2969
	.word	3000
	.word	3030
	.word	3060
	.section	.rodata.adc2_vref_atten_offset,"a",@progbits
	.align	4
	.type	adc2_vref_atten_offset, @object
	.size	adc2_vref_atten_offset, 16
adc2_vref_atten_offset:
	.word	63
	.word	66
	.word	89
	.word	128
	.section	.rodata.adc1_vref_atten_offset,"a",@progbits
	.align	4
	.type	adc1_vref_atten_offset, @object
	.size	adc1_vref_atten_offset, 16
adc1_vref_atten_offset:
	.word	75
	.word	78
	.word	107
	.word	142
	.section	.rodata.adc2_vref_atten_scale,"a",@progbits
	.align	4
	.type	adc2_vref_atten_scale, @object
	.size	adc2_vref_atten_scale, 16
adc2_vref_atten_scale:
	.word	57236
	.word	76175
	.word	105678
	.word	197170
	.section	.rodata.adc1_vref_atten_scale,"a",@progbits
	.align	4
	.type	adc1_vref_atten_scale, @object
	.size	adc1_vref_atten_scale, 16
adc1_vref_atten_scale:
	.word	57431
	.word	76236
	.word	105481
	.word	196602
	.section	.rodata.adc2_tp_atten_offset,"a",@progbits
	.align	4
	.type	adc2_tp_atten_offset, @object
	.size	adc2_tp_atten_offset, 16
adc2_tp_atten_offset:
	.word	0
	.word	9
	.word	26
	.word	66
	.section	.rodata.adc1_tp_atten_offset,"a",@progbits
	.align	4
	.type	adc1_tp_atten_offset, @object
	.size	adc1_tp_atten_offset, 16
adc1_tp_atten_offset:
	.word	0
	.word	1
	.word	27
	.word	54
	.section	.rodata.adc2_tp_atten_scale,"a",@progbits
	.align	4
	.type	adc2_tp_atten_scale, @object
	.size	adc2_tp_atten_scale, 16
adc2_tp_atten_scale:
	.word	65467
	.word	86861
	.word	120416
	.word	224708
	.section	.rodata.adc1_tp_atten_scale,"a",@progbits
	.align	4
	.type	adc1_tp_atten_scale, @object
	.size	adc1_tp_atten_scale, 16
adc1_tp_atten_scale:
	.word	65504
	.word	86975
	.word	120389
	.word	224310
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
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI0-.LFB4
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI1-.LFB5
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI2-.LFB7
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x4
	.4byte	.LCFI3-.LFB8
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x4
	.4byte	.LCFI4-.LFB9
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI5-.LFB10
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x4
	.4byte	.LCFI6-.LFB11
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI7-.LFB12
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI8-.LFB13
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI9-.LFB15
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI10-.LFB16
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI11-.LFB17
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI12-.LFB18
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI13-.LFB19
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI14-.LFB20
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE28:
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_err.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/adc.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/esp_adc_cal/include/esp_adc_cal.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/assert.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xf27
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF139
	.byte	0xc
	.4byte	.LASF140
	.4byte	.LASF141
	.4byte	.Ldebug_ranges0+0x18
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
	.byte	0x2
	.byte	0x19
	.4byte	0x4c
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x2
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
	.byte	0x3
	.byte	0x2c
	.4byte	0x41
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x3
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
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x4
	.byte	0x18
	.4byte	0x73
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF16
	.uleb128 0x5
	.byte	0x4
	.4byte	0x5e
	.byte	0x5
	.byte	0x1c
	.4byte	0xe2
	.uleb128 0x6
	.4byte	.LASF17
	.byte	0
	.uleb128 0x6
	.4byte	.LASF18
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF19
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF20
	.byte	0x3
	.uleb128 0x6
	.4byte	.LASF21
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x5
	.byte	0x22
	.4byte	0xb7
	.uleb128 0x5
	.byte	0x4
	.4byte	0x5e
	.byte	0x5
	.byte	0x24
	.4byte	0x118
	.uleb128 0x6
	.4byte	.LASF23
	.byte	0
	.uleb128 0x6
	.4byte	.LASF24
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF25
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF26
	.byte	0x3
	.uleb128 0x6
	.4byte	.LASF27
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x5
	.byte	0x2a
	.4byte	0xed
	.uleb128 0x5
	.byte	0x4
	.4byte	0x5e
	.byte	0x5
	.byte	0x37
	.4byte	0x166
	.uleb128 0x6
	.4byte	.LASF29
	.byte	0
	.uleb128 0x6
	.4byte	.LASF30
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF31
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF32
	.byte	0x3
	.uleb128 0x6
	.4byte	.LASF33
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF34
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF35
	.byte	0x6
	.uleb128 0x6
	.4byte	.LASF36
	.byte	0x7
	.uleb128 0x6
	.4byte	.LASF37
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF38
	.byte	0x5
	.byte	0x41
	.4byte	0x123
	.uleb128 0x5
	.byte	0x4
	.4byte	0x5e
	.byte	0x5
	.byte	0x43
	.4byte	0x1c0
	.uleb128 0x6
	.4byte	.LASF39
	.byte	0
	.uleb128 0x6
	.4byte	.LASF40
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF41
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF42
	.byte	0x3
	.uleb128 0x6
	.4byte	.LASF43
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF44
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF45
	.byte	0x6
	.uleb128 0x6
	.4byte	.LASF46
	.byte	0x7
	.uleb128 0x6
	.4byte	.LASF47
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF48
	.byte	0x9
	.uleb128 0x6
	.4byte	.LASF49
	.byte	0xa
	.byte	0
	.uleb128 0x3
	.4byte	.LASF50
	.byte	0x5
	.byte	0x4f
	.4byte	0x171
	.uleb128 0x5
	.byte	0x4
	.4byte	0x5e
	.byte	0x5
	.byte	0x51
	.4byte	0x21a
	.uleb128 0x6
	.4byte	.LASF51
	.byte	0
	.uleb128 0x6
	.4byte	.LASF52
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF53
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF54
	.byte	0x3
	.uleb128 0x6
	.4byte	.LASF55
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF56
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF57
	.byte	0x6
	.uleb128 0x6
	.4byte	.LASF58
	.byte	0x7
	.uleb128 0x6
	.4byte	.LASF59
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF60
	.byte	0x9
	.uleb128 0x6
	.4byte	.LASF61
	.byte	0xa
	.byte	0
	.uleb128 0x3
	.4byte	.LASF62
	.byte	0x5
	.byte	0x5d
	.4byte	0x1cb
	.uleb128 0x5
	.byte	0x4
	.4byte	0x5e
	.byte	0x5
	.byte	0x5f
	.4byte	0x250
	.uleb128 0x6
	.4byte	.LASF63
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF64
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF65
	.byte	0x3
	.uleb128 0x6
	.4byte	.LASF66
	.byte	0x7
	.uleb128 0x6
	.4byte	.LASF67
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF68
	.byte	0x5
	.byte	0x65
	.4byte	0x225
	.uleb128 0x5
	.byte	0x4
	.4byte	0x5e
	.byte	0x6
	.byte	0x1d
	.4byte	0x27a
	.uleb128 0x6
	.4byte	.LASF69
	.byte	0
	.uleb128 0x6
	.4byte	.LASF70
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF71
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF72
	.byte	0x6
	.byte	0x21
	.4byte	0x25b
	.uleb128 0x7
	.byte	0x20
	.byte	0x6
	.byte	0x28
	.4byte	0x2ee
	.uleb128 0x8
	.4byte	.LASF73
	.byte	0x6
	.byte	0x29
	.4byte	0x250
	.byte	0
	.uleb128 0x8
	.4byte	.LASF74
	.byte	0x6
	.byte	0x2a
	.4byte	0xe2
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF75
	.byte	0x6
	.byte	0x2b
	.4byte	0x118
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF76
	.byte	0x6
	.byte	0x2c
	.4byte	0x7e
	.byte	0xc
	.uleb128 0x8
	.4byte	.LASF77
	.byte	0x6
	.byte	0x2d
	.4byte	0x7e
	.byte	0x10
	.uleb128 0x8
	.4byte	.LASF78
	.byte	0x6
	.byte	0x2e
	.4byte	0x7e
	.byte	0x14
	.uleb128 0x8
	.4byte	.LASF79
	.byte	0x6
	.byte	0x2f
	.4byte	0x2ee
	.byte	0x18
	.uleb128 0x8
	.4byte	.LASF80
	.byte	0x6
	.byte	0x30
	.4byte	0x2ee
	.byte	0x1c
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x2f4
	.uleb128 0xa
	.4byte	0x7e
	.uleb128 0x3
	.4byte	.LASF81
	.byte	0x6
	.byte	0x31
	.4byte	0x285
	.uleb128 0xb
	.4byte	.LASF85
	.byte	0x1
	.byte	0x88
	.4byte	0x4c
	.byte	0x3
	.4byte	0x341
	.uleb128 0xc
	.4byte	.LASF82
	.byte	0x1
	.byte	0x88
	.4byte	0x7e
	.uleb128 0xc
	.4byte	.LASF83
	.byte	0x1
	.byte	0x88
	.4byte	0x7e
	.uleb128 0xc
	.4byte	.LASF84
	.byte	0x1
	.byte	0x88
	.4byte	0xb0
	.uleb128 0xd
	.string	"ret"
	.byte	0x1
	.byte	0x8a
	.4byte	0x4c
	.byte	0
	.uleb128 0xe
	.4byte	.LASF86
	.byte	0x1
	.2byte	0x116
	.4byte	0x7e
	.byte	0x3
	.4byte	0x37f
	.uleb128 0xf
	.string	"y1"
	.byte	0x1
	.2byte	0x116
	.4byte	0x7e
	.uleb128 0xf
	.string	"y2"
	.byte	0x1
	.2byte	0x116
	.4byte	0x7e
	.uleb128 0x10
	.4byte	.LASF87
	.byte	0x1
	.2byte	0x116
	.4byte	0x7e
	.uleb128 0xf
	.string	"x"
	.byte	0x1
	.2byte	0x116
	.4byte	0x7e
	.byte	0
	.uleb128 0x11
	.4byte	.LASF88
	.byte	0x1
	.byte	0x71
	.4byte	0xb0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3a2
	.uleb128 0x12
	.4byte	.LASF90
	.4byte	0x3b2
	.byte	0
	.uleb128 0x13
	.4byte	0x9e
	.4byte	0x3b2
	.uleb128 0x14
	.4byte	0x90
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.4byte	0x3a2
	.uleb128 0x11
	.4byte	.LASF89
	.byte	0x1
	.byte	0x77
	.4byte	0xb0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3da
	.uleb128 0x12
	.4byte	.LASF90
	.4byte	0x3ea
	.byte	0
	.uleb128 0x13
	.4byte	0x9e
	.4byte	0x3ea
	.uleb128 0x14
	.4byte	0x90
	.byte	0xe
	.byte	0
	.uleb128 0xa
	.4byte	0x3da
	.uleb128 0x11
	.4byte	.LASF91
	.byte	0x1
	.byte	0x99
	.4byte	0x7e
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x468
	.uleb128 0x15
	.string	"ret"
	.byte	0x1
	.byte	0x9c
	.4byte	0x7e
	.4byte	.LLST0
	.uleb128 0x16
	.4byte	.LASF82
	.byte	0x1
	.byte	0x9d
	.4byte	0x7e
	.4byte	.LLST1
	.uleb128 0x12
	.4byte	.LASF90
	.4byte	0x478
	.uleb128 0x17
	.4byte	0x304
	.4byte	.LBB36
	.4byte	.LBE36-.LBB36
	.byte	0x1
	.byte	0x9e
	.uleb128 0x18
	.4byte	0x32a
	.byte	0
	.uleb128 0x18
	.4byte	0x31f
	.byte	0x1f
	.uleb128 0x19
	.4byte	0x314
	.4byte	.LLST1
	.uleb128 0x1a
	.4byte	.LBB37
	.4byte	.LBE37-.LBB37
	.uleb128 0x1b
	.4byte	0x335
	.4byte	.LLST3
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	0x9e
	.4byte	0x478
	.uleb128 0x14
	.4byte	0x90
	.byte	0xf
	.byte	0
	.uleb128 0xa
	.4byte	0x468
	.uleb128 0x1c
	.4byte	.LASF92
	.byte	0x1
	.byte	0xa2
	.4byte	0x7e
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x505
	.uleb128 0x1d
	.4byte	.LASF73
	.byte	0x1
	.byte	0xa2
	.4byte	0x250
	.4byte	.LLST4
	.uleb128 0x15
	.string	"ret"
	.byte	0x1
	.byte	0xa5
	.4byte	0x7e
	.4byte	.LLST5
	.uleb128 0x16
	.4byte	.LASF82
	.byte	0x1
	.byte	0xa6
	.4byte	0x7e
	.4byte	.LLST6
	.uleb128 0x12
	.4byte	.LASF90
	.4byte	0x515
	.uleb128 0x17
	.4byte	0x304
	.4byte	.LBB42
	.4byte	.LBE42-.LBB42
	.byte	0x1
	.byte	0xaf
	.uleb128 0x18
	.4byte	0x32a
	.byte	0x1
	.uleb128 0x18
	.4byte	0x31f
	.byte	0x7f
	.uleb128 0x19
	.4byte	0x314
	.4byte	.LLST7
	.uleb128 0x1a
	.4byte	.LBB43
	.4byte	.LBE43-.LBB43
	.uleb128 0x1b
	.4byte	0x335
	.4byte	.LLST8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	0x9e
	.4byte	0x515
	.uleb128 0x14
	.4byte	0x90
	.byte	0x11
	.byte	0
	.uleb128 0xa
	.4byte	0x505
	.uleb128 0x1c
	.4byte	.LASF93
	.byte	0x1
	.byte	0xb3
	.4byte	0x7e
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5a3
	.uleb128 0x1d
	.4byte	.LASF73
	.byte	0x1
	.byte	0xb3
	.4byte	0x250
	.4byte	.LLST9
	.uleb128 0x15
	.string	"ret"
	.byte	0x1
	.byte	0xb6
	.4byte	0x7e
	.4byte	.LLST10
	.uleb128 0x16
	.4byte	.LASF82
	.byte	0x1
	.byte	0xb7
	.4byte	0x7e
	.4byte	.LLST11
	.uleb128 0x12
	.4byte	.LASF90
	.4byte	0x5b3
	.uleb128 0x17
	.4byte	0x304
	.4byte	.LBB48
	.4byte	.LBE48-.LBB48
	.byte	0x1
	.byte	0xc0
	.uleb128 0x18
	.4byte	0x32a
	.byte	0x1
	.uleb128 0x1e
	.4byte	0x31f
	.2byte	0x1ff
	.uleb128 0x19
	.4byte	0x314
	.4byte	.LLST12
	.uleb128 0x1a
	.4byte	.LBB49
	.4byte	.LBE49-.LBB49
	.uleb128 0x1b
	.4byte	0x335
	.4byte	.LLST13
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	0x9e
	.4byte	0x5b3
	.uleb128 0x14
	.4byte	0x90
	.byte	0x12
	.byte	0
	.uleb128 0xa
	.4byte	0x5a3
	.uleb128 0x1f
	.4byte	.LASF94
	.byte	0x1
	.byte	0xc5
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x65a
	.uleb128 0x20
	.4byte	.LASF73
	.byte	0x1
	.byte	0xc5
	.4byte	0x250
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1d
	.4byte	.LASF74
	.byte	0x1
	.byte	0xc6
	.4byte	0xe2
	.4byte	.LLST14
	.uleb128 0x1d
	.4byte	.LASF95
	.byte	0x1
	.byte	0xc7
	.4byte	0x7e
	.4byte	.LLST15
	.uleb128 0x21
	.string	"low"
	.byte	0x1
	.byte	0xc8
	.4byte	0x7e
	.4byte	.LLST16
	.uleb128 0x20
	.4byte	.LASF76
	.byte	0x1
	.byte	0xc9
	.4byte	0x65a
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x20
	.4byte	.LASF77
	.byte	0x1
	.byte	0xca
	.4byte	0x65a
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x16
	.4byte	.LASF96
	.byte	0x1
	.byte	0xcc
	.4byte	0x2ee
	.4byte	.LLST17
	.uleb128 0x22
	.4byte	.LASF97
	.byte	0x1
	.byte	0xcd
	.4byte	0x2ee
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x16
	.4byte	.LASF98
	.byte	0x1
	.byte	0xd7
	.4byte	0x7e
	.4byte	.LLST18
	.uleb128 0x23
	.4byte	.LASF99
	.byte	0x1
	.byte	0xd8
	.4byte	0x7e
	.2byte	0x2bc
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x7e
	.uleb128 0x1f
	.4byte	.LASF100
	.byte	0x1
	.byte	0xdf
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6d7
	.uleb128 0x20
	.4byte	.LASF73
	.byte	0x1
	.byte	0xdf
	.4byte	0x250
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1d
	.4byte	.LASF74
	.byte	0x1
	.byte	0xe0
	.4byte	0xe2
	.4byte	.LLST19
	.uleb128 0x1d
	.4byte	.LASF78
	.byte	0x1
	.byte	0xe1
	.4byte	0x7e
	.4byte	.LLST20
	.uleb128 0x20
	.4byte	.LASF76
	.byte	0x1
	.byte	0xe2
	.4byte	0x65a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x20
	.4byte	.LASF77
	.byte	0x1
	.byte	0xe3
	.4byte	0x65a
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x16
	.4byte	.LASF96
	.byte	0x1
	.byte	0xe5
	.4byte	0x2ee
	.4byte	.LLST21
	.uleb128 0x22
	.4byte	.LASF97
	.byte	0x1
	.byte	0xe6
	.4byte	0x2ee
	.uleb128 0x1
	.byte	0x59
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF101
	.byte	0x1
	.byte	0xf6
	.4byte	0x7e
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x71a
	.uleb128 0x1d
	.4byte	.LASF102
	.byte	0x1
	.byte	0xf6
	.4byte	0x7e
	.4byte	.LLST22
	.uleb128 0x20
	.4byte	.LASF76
	.byte	0x1
	.byte	0xf6
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x20
	.4byte	.LASF77
	.byte	0x1
	.byte	0xf6
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF103
	.byte	0x1
	.byte	0xfd
	.4byte	0x7e
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x804
	.uleb128 0x21
	.string	"adc"
	.byte	0x1
	.byte	0xfd
	.4byte	0x7e
	.4byte	.LLST23
	.uleb128 0x1d
	.4byte	.LASF78
	.byte	0x1
	.byte	0xfd
	.4byte	0x7e
	.4byte	.LLST24
	.uleb128 0x1d
	.4byte	.LASF104
	.byte	0x1
	.byte	0xfd
	.4byte	0x2ee
	.4byte	.LLST25
	.uleb128 0x20
	.4byte	.LASF105
	.byte	0x1
	.byte	0xfd
	.4byte	0x2ee
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.2byte	0x100
	.4byte	0x7e
	.4byte	.LLST26
	.uleb128 0x25
	.4byte	.LASF106
	.byte	0x1
	.2byte	0x103
	.4byte	0x4c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x26
	.4byte	.LASF107
	.byte	0x1
	.2byte	0x104
	.4byte	0x4c
	.4byte	.LLST27
	.uleb128 0x25
	.4byte	.LASF108
	.byte	0x1
	.2byte	0x105
	.4byte	0x4c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x26
	.4byte	.LASF109
	.byte	0x1
	.2byte	0x106
	.4byte	0x4c
	.4byte	.LLST28
	.uleb128 0x24
	.string	"q11"
	.byte	0x1
	.2byte	0x109
	.4byte	0x4c
	.4byte	.LLST29
	.uleb128 0x27
	.string	"q12"
	.byte	0x1
	.2byte	0x10a
	.4byte	0x4c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x24
	.string	"q21"
	.byte	0x1
	.2byte	0x10b
	.4byte	0x4c
	.4byte	.LLST30
	.uleb128 0x27
	.string	"q22"
	.byte	0x1
	.2byte	0x10c
	.4byte	0x4c
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x26
	.4byte	.LASF110
	.byte	0x1
	.2byte	0x110
	.4byte	0x4c
	.4byte	.LLST31
	.byte	0
	.uleb128 0x28
	.4byte	.LASF112
	.byte	0x1
	.2byte	0x11d
	.4byte	0xa5
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x841
	.uleb128 0x29
	.4byte	.LASF111
	.byte	0x1
	.2byte	0x11d
	.4byte	0x27a
	.4byte	.LLST32
	.uleb128 0x2a
	.4byte	.LVL72
	.4byte	0x3b7
	.uleb128 0x2a
	.4byte	.LVL75
	.4byte	0x37f
	.byte	0
	.uleb128 0x28
	.4byte	.LASF113
	.byte	0x1
	.2byte	0x128
	.4byte	0x27a
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa84
	.uleb128 0x29
	.4byte	.LASF73
	.byte	0x1
	.2byte	0x128
	.4byte	0x250
	.4byte	.LLST33
	.uleb128 0x29
	.4byte	.LASF74
	.byte	0x1
	.2byte	0x129
	.4byte	0xe2
	.4byte	.LLST34
	.uleb128 0x2b
	.4byte	.LASF75
	.byte	0x1
	.2byte	0x12a
	.4byte	0x118
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x29
	.4byte	.LASF114
	.byte	0x1
	.2byte	0x12b
	.4byte	0x7e
	.4byte	.LLST35
	.uleb128 0x2b
	.4byte	.LASF115
	.byte	0x1
	.2byte	0x12c
	.4byte	0xa84
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x2c
	.4byte	.LASF90
	.4byte	0xa9a
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3699
	.uleb128 0x26
	.4byte	.LASF116
	.byte	0x1
	.2byte	0x134
	.4byte	0xb0
	.4byte	.LLST36
	.uleb128 0x25
	.4byte	.LASF117
	.byte	0x1
	.2byte	0x135
	.4byte	0xb0
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x24
	.string	"ret"
	.byte	0x1
	.2byte	0x136
	.4byte	0x27a
	.4byte	.LLST37
	.uleb128 0x2d
	.4byte	.LBB50
	.4byte	.LBE50-.LBB50
	.4byte	0x962
	.uleb128 0x26
	.4byte	.LASF95
	.byte	0x1
	.2byte	0x13a
	.4byte	0x7e
	.4byte	.LLST38
	.uleb128 0x24
	.string	"low"
	.byte	0x1
	.2byte	0x13b
	.4byte	0x7e
	.4byte	.LLST39
	.uleb128 0x2e
	.4byte	.LVL90
	.4byte	0x51a
	.4byte	0x925
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL92
	.4byte	0x47d
	.4byte	0x939
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.4byte	.LVL94
	.4byte	0x5b8
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x76
	.sleb128 12
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x76
	.sleb128 16
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LBB51
	.4byte	.LBE51-.LBB51
	.4byte	0x9ab
	.uleb128 0x26
	.4byte	.LASF78
	.byte	0x1
	.2byte	0x140
	.4byte	0x7e
	.4byte	.LLST40
	.uleb128 0x2a
	.4byte	.LVL97
	.4byte	0x3ef
	.uleb128 0x30
	.4byte	.LVL99
	.4byte	0x660
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x76
	.sleb128 12
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x76
	.sleb128 16
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL83
	.4byte	0xf08
	.4byte	0x9db
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC26
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x12f
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3699
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC23
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL84
	.4byte	0xf08
	.4byte	0xa0b
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC26
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x130
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3699
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC28
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL85
	.4byte	0xf08
	.4byte	0xa3b
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC26
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x131
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3699
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC30
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL86
	.4byte	0x3b7
	.uleb128 0x2a
	.4byte	.LVL88
	.4byte	0x37f
	.uleb128 0x2e
	.4byte	.LVL102
	.4byte	0x660
	.4byte	0xa7a
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x76
	.sleb128 12
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x76
	.sleb128 16
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL104
	.4byte	0x3ef
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x2f9
	.uleb128 0x13
	.4byte	0x9e
	.4byte	0xa9a
	.uleb128 0x14
	.4byte	0x90
	.byte	0x18
	.byte	0
	.uleb128 0xa
	.4byte	0xa8a
	.uleb128 0x28
	.4byte	.LASF118
	.byte	0x1
	.2byte	0x159
	.4byte	0x7e
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbba
	.uleb128 0x29
	.4byte	.LASF102
	.byte	0x1
	.2byte	0x159
	.4byte	0x7e
	.4byte	.LLST41
	.uleb128 0x29
	.4byte	.LASF115
	.byte	0x1
	.2byte	0x159
	.4byte	0xbba
	.4byte	.LLST42
	.uleb128 0x2c
	.4byte	.LASF90
	.4byte	0xbd5
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3710
	.uleb128 0x31
	.4byte	.Ldebug_ranges0+0
	.4byte	0xb79
	.uleb128 0x26
	.4byte	.LASF119
	.byte	0x1
	.2byte	0x165
	.4byte	0x7e
	.4byte	.LLST43
	.uleb128 0x2d
	.4byte	.LBB53
	.4byte	.LBE53-.LBB53
	.4byte	0xb68
	.uleb128 0x26
	.4byte	.LASF120
	.byte	0x1
	.2byte	0x168
	.4byte	0x7e
	.4byte	.LLST44
	.uleb128 0x32
	.4byte	0x341
	.4byte	.LBB54
	.4byte	.LBE54-.LBB54
	.byte	0x1
	.2byte	0x169
	.4byte	0xb57
	.uleb128 0x19
	.4byte	0x374
	.4byte	.LLST45
	.uleb128 0x19
	.4byte	0x368
	.4byte	.LLST46
	.uleb128 0x19
	.4byte	0x35d
	.4byte	.LLST47
	.uleb128 0x19
	.4byte	0x352
	.4byte	.LLST48
	.byte	0
	.uleb128 0x30
	.4byte	.LVL120
	.4byte	0x6d7
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x30
	.4byte	.LVL118
	.4byte	0x71a
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL115
	.4byte	0xf08
	.4byte	0xba9
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC26
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x15b
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3710
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC28
	.byte	0
	.uleb128 0x30
	.4byte	.LVL126
	.4byte	0x6d7
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0xbc0
	.uleb128 0xa
	.4byte	0x2f9
	.uleb128 0x13
	.4byte	0x9e
	.4byte	0xbd5
	.uleb128 0x14
	.4byte	0x90
	.byte	0x1a
	.byte	0
	.uleb128 0xa
	.4byte	0xbc5
	.uleb128 0x28
	.4byte	.LASF121
	.byte	0x1
	.2byte	0x172
	.4byte	0xa5
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc6e
	.uleb128 0x29
	.4byte	.LASF122
	.byte	0x1
	.2byte	0x172
	.4byte	0x21a
	.4byte	.LLST49
	.uleb128 0x2b
	.4byte	.LASF115
	.byte	0x1
	.2byte	0x173
	.4byte	0xbba
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2b
	.4byte	.LASF110
	.byte	0x1
	.2byte	0x174
	.4byte	0x65a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x25
	.4byte	.LASF102
	.byte	0x1
	.2byte	0x17a
	.4byte	0x4c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2e
	.4byte	.LVL131
	.4byte	0xf13
	.4byte	0xc43
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL132
	.4byte	0xf1e
	.4byte	0xc5d
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x30
	.4byte	.LVL133
	.4byte	0xa9f
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x33
	.4byte	.LASF142
	.byte	0x1
	.2byte	0x18b
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd23
	.uleb128 0x2b
	.4byte	.LASF78
	.byte	0x1
	.2byte	0x18b
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2b
	.4byte	.LASF74
	.byte	0x1
	.2byte	0x18c
	.4byte	0xe2
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2b
	.4byte	.LASF75
	.byte	0x1
	.2byte	0x18d
	.4byte	0x118
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2b
	.4byte	.LASF115
	.byte	0x1
	.2byte	0x18e
	.4byte	0xa84
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2c
	.4byte	.LASF90
	.4byte	0xd33
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3725
	.uleb128 0x2e
	.4byte	.LVL146
	.4byte	0xf08
	.4byte	0xcfb
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC26
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x190
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3725
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC28
	.byte	0
	.uleb128 0x30
	.4byte	.LVL147
	.4byte	0x841
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	0x9e
	.4byte	0xd33
	.uleb128 0x14
	.4byte	0x90
	.byte	0x1f
	.byte	0
	.uleb128 0xa
	.4byte	0xd23
	.uleb128 0x28
	.4byte	.LASF123
	.byte	0x1
	.2byte	0x194
	.4byte	0x7e
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xddb
	.uleb128 0x29
	.4byte	.LASF122
	.byte	0x1
	.2byte	0x194
	.4byte	0x166
	.4byte	.LLST50
	.uleb128 0x2b
	.4byte	.LASF115
	.byte	0x1
	.2byte	0x194
	.4byte	0xbba
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2c
	.4byte	.LASF90
	.4byte	0xddb
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3730
	.uleb128 0x25
	.4byte	.LASF110
	.byte	0x1
	.2byte	0x197
	.4byte	0x7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2e
	.4byte	.LVL149
	.4byte	0xf08
	.4byte	0xdbe
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC26
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x196
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3730
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC28
	.byte	0
	.uleb128 0x30
	.4byte	.LVL150
	.4byte	0xbda
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	0x468
	.uleb128 0x13
	.4byte	0x7e
	.4byte	0xdf0
	.uleb128 0x14
	.4byte	0x90
	.byte	0x3
	.byte	0
	.uleb128 0x22
	.4byte	.LASF124
	.byte	0x1
	.byte	0x5c
	.4byte	0xe01
	.uleb128 0x5
	.byte	0x3
	.4byte	adc1_tp_atten_scale
	.uleb128 0xa
	.4byte	0xde0
	.uleb128 0x22
	.4byte	.LASF125
	.byte	0x1
	.byte	0x5d
	.4byte	0xe17
	.uleb128 0x5
	.byte	0x3
	.4byte	adc2_tp_atten_scale
	.uleb128 0xa
	.4byte	0xde0
	.uleb128 0x22
	.4byte	.LASF126
	.byte	0x1
	.byte	0x5e
	.4byte	0xe2d
	.uleb128 0x5
	.byte	0x3
	.4byte	adc1_tp_atten_offset
	.uleb128 0xa
	.4byte	0xde0
	.uleb128 0x22
	.4byte	.LASF127
	.byte	0x1
	.byte	0x5f
	.4byte	0xe43
	.uleb128 0x5
	.byte	0x3
	.4byte	adc2_tp_atten_offset
	.uleb128 0xa
	.4byte	0xde0
	.uleb128 0x22
	.4byte	.LASF128
	.byte	0x1
	.byte	0x61
	.4byte	0xe59
	.uleb128 0x5
	.byte	0x3
	.4byte	adc1_vref_atten_scale
	.uleb128 0xa
	.4byte	0xde0
	.uleb128 0x22
	.4byte	.LASF129
	.byte	0x1
	.byte	0x62
	.4byte	0xe6f
	.uleb128 0x5
	.byte	0x3
	.4byte	adc2_vref_atten_scale
	.uleb128 0xa
	.4byte	0xde0
	.uleb128 0x22
	.4byte	.LASF130
	.byte	0x1
	.byte	0x63
	.4byte	0xe85
	.uleb128 0x5
	.byte	0x3
	.4byte	adc1_vref_atten_offset
	.uleb128 0xa
	.4byte	0xde0
	.uleb128 0x22
	.4byte	.LASF131
	.byte	0x1
	.byte	0x64
	.4byte	0xe9b
	.uleb128 0x5
	.byte	0x3
	.4byte	adc2_vref_atten_offset
	.uleb128 0xa
	.4byte	0xde0
	.uleb128 0x13
	.4byte	0x7e
	.4byte	0xeb0
	.uleb128 0x14
	.4byte	0x90
	.byte	0x13
	.byte	0
	.uleb128 0x22
	.4byte	.LASF132
	.byte	0x1
	.byte	0x67
	.4byte	0xec1
	.uleb128 0x5
	.byte	0x3
	.4byte	lut_adc1_low
	.uleb128 0xa
	.4byte	0xea0
	.uleb128 0x22
	.4byte	.LASF133
	.byte	0x1
	.byte	0x69
	.4byte	0xed7
	.uleb128 0x5
	.byte	0x3
	.4byte	lut_adc1_high
	.uleb128 0xa
	.4byte	0xea0
	.uleb128 0x22
	.4byte	.LASF134
	.byte	0x1
	.byte	0x6b
	.4byte	0xeed
	.uleb128 0x5
	.byte	0x3
	.4byte	lut_adc2_low
	.uleb128 0xa
	.4byte	0xea0
	.uleb128 0x22
	.4byte	.LASF135
	.byte	0x1
	.byte	0x6d
	.4byte	0xf03
	.uleb128 0x5
	.byte	0x3
	.4byte	lut_adc2_high
	.uleb128 0xa
	.4byte	0xea0
	.uleb128 0x34
	.4byte	.LASF136
	.4byte	.LASF136
	.byte	0x7
	.byte	0x29
	.uleb128 0x34
	.4byte	.LASF137
	.4byte	.LASF137
	.byte	0x5
	.byte	0xd5
	.uleb128 0x35
	.4byte	.LASF138
	.4byte	.LASF138
	.byte	0x5
	.2byte	0x181
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
	.uleb128 0x6
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x5
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
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.2byte	0x4
	.byte	0xa
	.2byte	0x44c
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x4
	.byte	0x72
	.sleb128 1100
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x5
	.byte	0x72
	.sleb128 0
	.byte	0x4f
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x5
	.byte	0x72
	.sleb128 0
	.byte	0x4f
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL8
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL10
	.4byte	.LVL12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL13
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL9
	.4byte	.LVL12
	.2byte	0x4
	.byte	0xa
	.2byte	0x116
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL15
	.2byte	0x4
	.byte	0xa
	.2byte	0x1a5
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x8
	.byte	0x78
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL14
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x4
	.byte	0x78
	.sleb128 0
	.byte	0x1f
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x4
	.byte	0x78
	.sleb128 0
	.byte	0x1f
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL20
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL22
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL24
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
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL23
	.4byte	.LVL26
	.2byte	0x4
	.byte	0xa
	.2byte	0xcc1
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LVL29
	.2byte	0x4
	.byte	0xa
	.2byte	0xd4e
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x8
	.byte	0x78
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL28
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x4
	.byte	0x78
	.sleb128 0
	.byte	0x1f
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x4
	.byte	0x78
	.sleb128 0
	.byte	0x1f
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL34
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL36
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL39
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL36
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL41
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL36
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL38
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL37
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL38
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL42
	.4byte	.LFE10
	.2byte	0x8
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL43
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL45
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL43
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL47
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL44
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL49
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL50
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL55
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL50
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL53
	.4byte	.LVL65
	.2byte	0x4
	.byte	0x73
	.sleb128 1000
	.byte	0x9f
	.4byte	.LVL65
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL50
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL57
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL51
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x3
	.byte	0x7a
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL64
	.4byte	.LFE13
	.2byte	0xa
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0xa
	.2byte	0xb40
	.byte	0x1c
	.byte	0x36
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL53
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL65
	.4byte	.LFE13
	.2byte	0x8
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0xa
	.2byte	0x3e8
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL55
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL66
	.4byte	.LFE13
	.2byte	0x12
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0xa
	.2byte	0xb40
	.byte	0x1c
	.byte	0x36
	.byte	0x25
	.byte	0x23
	.uleb128 0x2d
	.byte	0x36
	.byte	0x24
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL56
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL61
	.4byte	.LVL63
	.2byte	0x8
	.byte	0x78
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x22
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x8
	.byte	0x7a
	.sleb128 -1
	.byte	0x32
	.byte	0x24
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x22
	.4byte	.LVL64
	.4byte	.LFE13
	.2byte	0xf
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0xa
	.2byte	0xb40
	.byte	0x1c
	.byte	0x36
	.byte	0x25
	.byte	0x32
	.byte	0x24
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x22
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL59
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL62
	.4byte	.LFE13
	.2byte	0x2
	.byte	0x7f
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL67
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL69
	.4byte	.LVL70
	.2byte	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL70
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL71
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
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL76
	.4byte	.LVL77
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL77
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL78
	.4byte	.LVL79
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL79
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL80
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL81
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL108
	.4byte	.LVL109
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL109
	.4byte	.LVL110
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL110
	.4byte	.LVL111
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL111
	.4byte	.LVL112
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL112
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL81
	.4byte	.LVL105
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL105
	.4byte	.LVL106
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL106
	.4byte	.LVL107
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL107
	.4byte	.LVL111
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL111
	.4byte	.LVL113
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL113
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL81
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL82
	.4byte	.LFE16
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL87
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL96
	.4byte	.LVL100
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL101
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL94
	.4byte	.LVL96
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL99
	.4byte	.LVL101
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL102
	.4byte	.LVL103
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL103
	.4byte	.LFE16
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL91
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL92
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL93
	.4byte	.LVL94-1
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL97
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL98
	.4byte	.LVL99-1
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL114
	.4byte	.LVL116
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL116
	.4byte	.LVL123
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL123
	.4byte	.LVL125
	.2byte	0x4
	.byte	0x78
	.sleb128 2880
	.byte	0x9f
	.4byte	.LVL125
	.4byte	.LVL127
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL128
	.4byte	.LVL129
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL114
	.4byte	.LVL121
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL121
	.4byte	.LVL125
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL125
	.4byte	.LFE17
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL119
	.4byte	.LVL124
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL128
	.4byte	.LFE17
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL120
	.4byte	.LVL125
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL122
	.4byte	.LVL125
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL122
	.4byte	.LVL125
	.2byte	0x3
	.byte	0x8
	.byte	0x40
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL122
	.4byte	.LVL124
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL122
	.4byte	.LVL125
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL130
	.4byte	.LVL134
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL134
	.4byte	.LVL135
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL135
	.4byte	.LVL136
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL136
	.4byte	.LVL137
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL137
	.4byte	.LVL138
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL138
	.4byte	.LVL139
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL139
	.4byte	.LVL140
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL140
	.4byte	.LVL141
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL141
	.4byte	.LVL142
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL142
	.4byte	.LVL143
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL143
	.4byte	.LVL144
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL144
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL148
	.4byte	.LVL151
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL151
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x8c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
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
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB52
	.4byte	.LBE52
	.4byte	.LBB56
	.4byte	.LBE56
	.4byte	0
	.4byte	0
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB7
	.4byte	.LFE7
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF81:
	.string	"esp_adc_cal_characteristics_t"
.LASF91:
	.string	"read_efuse_vref"
.LASF123:
	.string	"adc1_to_voltage"
.LASF139:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF70:
	.string	"ESP_ADC_CAL_VAL_EFUSE_TP"
.LASF71:
	.string	"ESP_ADC_CAL_VAL_DEFAULT_VREF"
.LASF136:
	.string	"__assert_func"
.LASF49:
	.string	"ADC2_CHANNEL_MAX"
.LASF6:
	.string	"unsigned int"
.LASF39:
	.string	"ADC2_CHANNEL_0"
.LASF40:
	.string	"ADC2_CHANNEL_1"
.LASF41:
	.string	"ADC2_CHANNEL_2"
.LASF42:
	.string	"ADC2_CHANNEL_3"
.LASF43:
	.string	"ADC2_CHANNEL_4"
.LASF44:
	.string	"ADC2_CHANNEL_5"
.LASF45:
	.string	"ADC2_CHANNEL_6"
.LASF46:
	.string	"ADC2_CHANNEL_7"
.LASF47:
	.string	"ADC2_CHANNEL_8"
.LASF48:
	.string	"ADC2_CHANNEL_9"
.LASF4:
	.string	"__int32_t"
.LASF110:
	.string	"voltage"
.LASF140:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/esp_adc_cal/esp_adc_cal.c"
.LASF130:
	.string	"adc1_vref_atten_offset"
.LASF87:
	.string	"x_step"
.LASF134:
	.string	"lut_adc2_low"
.LASF107:
	.string	"x1dist"
.LASF24:
	.string	"ADC_WIDTH_BIT_10"
.LASF25:
	.string	"ADC_WIDTH_BIT_11"
.LASF26:
	.string	"ADC_WIDTH_BIT_12"
.LASF127:
	.string	"adc2_tp_atten_offset"
.LASF86:
	.string	"interpolate_two_points"
.LASF131:
	.string	"adc2_vref_atten_offset"
.LASF100:
	.string	"characterize_using_vref"
.LASF17:
	.string	"ADC_ATTEN_DB_0"
.LASF97:
	.string	"atten_offsets"
.LASF92:
	.string	"read_efuse_tp_low"
.LASF19:
	.string	"ADC_ATTEN_DB_6"
.LASF102:
	.string	"adc_reading"
.LASF10:
	.string	"uint32_t"
.LASF28:
	.string	"adc_bits_width_t"
.LASF135:
	.string	"lut_adc2_high"
.LASF79:
	.string	"low_curve"
.LASF8:
	.string	"long long unsigned int"
.LASF119:
	.string	"lut_voltage"
.LASF27:
	.string	"ADC_WIDTH_MAX"
.LASF95:
	.string	"high"
.LASF51:
	.string	"ADC_CHANNEL_0"
.LASF52:
	.string	"ADC_CHANNEL_1"
.LASF53:
	.string	"ADC_CHANNEL_2"
.LASF54:
	.string	"ADC_CHANNEL_3"
.LASF55:
	.string	"ADC_CHANNEL_4"
.LASF56:
	.string	"ADC_CHANNEL_5"
.LASF57:
	.string	"ADC_CHANNEL_6"
.LASF58:
	.string	"ADC_CHANNEL_7"
.LASF59:
	.string	"ADC_CHANNEL_8"
.LASF60:
	.string	"ADC_CHANNEL_9"
.LASF61:
	.string	"ADC_CHANNEL_MAX"
.LASF120:
	.string	"linear_voltage"
.LASF94:
	.string	"characterize_using_two_point"
.LASF76:
	.string	"coeff_a"
.LASF77:
	.string	"coeff_b"
.LASF108:
	.string	"y2dist"
.LASF18:
	.string	"ADC_ATTEN_DB_2_5"
.LASF68:
	.string	"adc_unit_t"
.LASF29:
	.string	"ADC1_CHANNEL_0"
.LASF30:
	.string	"ADC1_CHANNEL_1"
.LASF31:
	.string	"ADC1_CHANNEL_2"
.LASF32:
	.string	"ADC1_CHANNEL_3"
.LASF33:
	.string	"ADC1_CHANNEL_4"
.LASF34:
	.string	"ADC1_CHANNEL_5"
.LASF35:
	.string	"ADC1_CHANNEL_6"
.LASF36:
	.string	"ADC1_CHANNEL_7"
.LASF16:
	.string	"_Bool"
.LASF104:
	.string	"low_vref_curve"
.LASF96:
	.string	"atten_scales"
.LASF93:
	.string	"read_efuse_tp_high"
.LASF117:
	.string	"efuse_vref_present"
.LASF69:
	.string	"ESP_ADC_CAL_VAL_EFUSE_VREF"
.LASF14:
	.string	"char"
.LASF66:
	.string	"ADC_UNIT_ALTER"
.LASF67:
	.string	"ADC_UNIT_MAX"
.LASF20:
	.string	"ADC_ATTEN_DB_11"
.LASF82:
	.string	"bits"
.LASF78:
	.string	"vref"
.LASF129:
	.string	"adc2_vref_atten_scale"
.LASF98:
	.string	"delta_x"
.LASF132:
	.string	"lut_adc1_low"
.LASF7:
	.string	"long long int"
.LASF142:
	.string	"esp_adc_cal_get_characteristics"
.LASF115:
	.string	"chars"
.LASF118:
	.string	"esp_adc_cal_raw_to_voltage"
.LASF63:
	.string	"ADC_UNIT_1"
.LASF64:
	.string	"ADC_UNIT_2"
.LASF125:
	.string	"adc2_tp_atten_scale"
.LASF65:
	.string	"ADC_UNIT_BOTH"
.LASF83:
	.string	"mask"
.LASF88:
	.string	"check_efuse_vref"
.LASF133:
	.string	"lut_adc1_high"
.LASF141:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\esp_adc_cal"
.LASF137:
	.string	"adc1_get_raw"
.LASF72:
	.string	"esp_adc_cal_value_t"
.LASF50:
	.string	"adc2_channel_t"
.LASF21:
	.string	"ADC_ATTEN_MAX"
.LASF103:
	.string	"calculate_voltage_lut"
.LASF122:
	.string	"channel"
.LASF37:
	.string	"ADC1_CHANNEL_MAX"
.LASF2:
	.string	"short int"
.LASF109:
	.string	"y1dist"
.LASF114:
	.string	"default_vref"
.LASF11:
	.string	"long int"
.LASF62:
	.string	"adc_channel_t"
.LASF105:
	.string	"high_vref_curve"
.LASF128:
	.string	"adc1_vref_atten_scale"
.LASF111:
	.string	"source"
.LASF112:
	.string	"esp_adc_cal_check_efuse"
.LASF38:
	.string	"adc1_channel_t"
.LASF12:
	.string	"sizetype"
.LASF13:
	.string	"long unsigned int"
.LASF106:
	.string	"x2dist"
.LASF9:
	.string	"int32_t"
.LASF74:
	.string	"atten"
.LASF99:
	.string	"delta_v"
.LASF22:
	.string	"adc_atten_t"
.LASF1:
	.string	"unsigned char"
.LASF5:
	.string	"__uint32_t"
.LASF85:
	.string	"decode_bits"
.LASF89:
	.string	"check_efuse_tp"
.LASF15:
	.string	"esp_err_t"
.LASF73:
	.string	"adc_num"
.LASF84:
	.string	"is_twos_compl"
.LASF0:
	.string	"signed char"
.LASF138:
	.string	"adc2_get_raw"
.LASF3:
	.string	"short unsigned int"
.LASF121:
	.string	"esp_adc_cal_get_voltage"
.LASF90:
	.string	"__func__"
.LASF126:
	.string	"adc1_tp_atten_offset"
.LASF116:
	.string	"efuse_tp_present"
.LASF23:
	.string	"ADC_WIDTH_BIT_9"
.LASF75:
	.string	"bit_width"
.LASF101:
	.string	"calculate_voltage_linear"
.LASF113:
	.string	"esp_adc_cal_characterize"
.LASF80:
	.string	"high_curve"
.LASF124:
	.string	"adc1_tp_atten_scale"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
