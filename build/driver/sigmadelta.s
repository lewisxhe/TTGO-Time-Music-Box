	.file	"sigmadelta.c"
	.text
.Ltext0:
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC0:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/driver/sigmadelta.c"
	.align	4
.LC2:
	.string	"SIGMADELTA"
	.align	4
.LC4:
	.string	"\033[0;31mE (%d) %s: %s:%d (%s):%s\033[0m\n"
	.align	4
.LC6:
	.string	"SIGMADELTA CHANNEL ERROR"
	.section	.text.sigmadelta_set_duty,"ax",@progbits
	.literal_position
	.literal .LC1, .LC0
	.literal .LC3, .LC2
	.literal .LC5, .LC4
	.literal .LC7, .LC6
	.literal .LC8, __FUNCTION__$4279
	.literal .LC9, SIGMADELTA
	.align	4
	.global	sigmadelta_set_duty
	.type	sigmadelta_set_duty, @function
sigmadelta_set_duty:
.LFB8:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sigmadelta.c"
	.loc 1 39 0
.LVL0:
	entry	sp, 48
.LCFI0:
	extui	a3, a3, 0, 8
	.loc 1 40 0
	bltui	a2, 8, .L2
	.loc 1 40 0 is_stmt 0 discriminator 4
	call8	esp_log_timestamp
.LVL1:
	l32r	a11, .LC3
	l32r	a2, .LC7
.LVL2:
	s32i.n	a2, sp, 8
	l32r	a2, .LC8
	s32i.n	a2, sp, 4
	movi.n	a2, 0x28
	s32i.n	a2, sp, 0
	l32r	a15, .LC1
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC5
	movi.n	a10, 1
	call8	esp_log_write
.LVL3:
	movi	a2, 0x102
	retw.n
.LVL4:
.L2:
	.loc 1 41 0 is_stmt 1
	l32r	a8, .LC9
	addx4	a2, a2, a8
.LVL5:
	memw
	l32i.n	a9, a2, 0
	movi	a8, -0x100
	and	a8, a9, a8
	or	a3, a8, a3
.LVL6:
	memw
	s32i.n	a3, a2, 0
	.loc 1 42 0
	movi.n	a2, 0
	.loc 1 43 0
	retw.n
.LFE8:
	.size	sigmadelta_set_duty, .-sigmadelta_set_duty
	.section	.text.sigmadelta_set_prescale,"ax",@progbits
	.literal_position
	.literal .LC10, .LC0
	.literal .LC11, .LC2
	.literal .LC12, .LC4
	.literal .LC13, .LC6
	.literal .LC14, __FUNCTION__$4284
	.literal .LC15, SIGMADELTA
	.literal .LC16, -65281
	.align	4
	.global	sigmadelta_set_prescale
	.type	sigmadelta_set_prescale, @function
sigmadelta_set_prescale:
.LFB9:
	.loc 1 46 0
.LVL7:
	entry	sp, 48
.LCFI1:
	extui	a3, a3, 0, 8
	.loc 1 47 0
	bltui	a2, 8, .L5
	.loc 1 47 0 is_stmt 0 discriminator 4
	call8	esp_log_timestamp
.LVL8:
	l32r	a11, .LC11
	l32r	a2, .LC13
.LVL9:
	s32i.n	a2, sp, 8
	l32r	a2, .LC14
	s32i.n	a2, sp, 4
	movi.n	a2, 0x2f
	s32i.n	a2, sp, 0
	l32r	a15, .LC10
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC12
	movi.n	a10, 1
	call8	esp_log_write
.LVL10:
	movi	a2, 0x102
	retw.n
.LVL11:
.L5:
	.loc 1 48 0 is_stmt 1
	l32r	a8, .LC15
	addx4	a2, a2, a8
.LVL12:
	memw
	l32i.n	a9, a2, 0
	slli	a3, a3, 8
.LVL13:
	l32r	a8, .LC16
	and	a8, a9, a8
	or	a3, a8, a3
	memw
	s32i.n	a3, a2, 0
	.loc 1 49 0
	movi.n	a2, 0
	.loc 1 50 0
	retw.n
.LFE9:
	.size	sigmadelta_set_prescale, .-sigmadelta_set_prescale
	.section	.rodata.str1.4
	.align	4
.LC23:
	.string	"SIGMADELTA GPIO NUM ERROR"
	.align	4
.LC27:
	.string	"\"(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)\" && (!((((GPIO_PIN_MUX_REG[gpio_num])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[gpio_num])) <= 0x3ff13FFC))"
	.align	4
.LC30:
	.string	"\"(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)\" && (!(((((GPIO_PIN_MUX_REG[gpio_num]))) >= 0x3ff00000) && (((GPIO_PIN_MUX_REG[gpio_num]))) <= 0x3ff13FFC))"
	.align	4
.LC32:
	.string	"\"(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)\" && (!((((GPIO_PIN_MUX_REG[gpio_num])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[gpio_num])) <= 0x3ff13FFC))"
	.section	.text.sigmadelta_set_pin,"ax",@progbits
	.literal_position
	.literal .LC17, .LC0
	.literal .LC18, .LC2
	.literal .LC19, .LC4
	.literal .LC20, .LC6
	.literal .LC21, __FUNCTION__$4289
	.literal .LC22, GPIO_PIN_MUX_REG
	.literal .LC24, .LC23
	.literal .LC25, -1072693248
	.literal .LC26, 81916
	.literal .LC28, .LC27
	.literal .LC29, __func__$4290
	.literal .LC31, .LC30
	.literal .LC33, .LC32
	.literal .LC34, -28673
	.literal .LC35, 8192
	.align	4
	.global	sigmadelta_set_pin
	.type	sigmadelta_set_pin, @function
sigmadelta_set_pin:
.LFB10:
	.loc 1 53 0
.LVL14:
	entry	sp, 48
.LCFI2:
	.loc 1 54 0
	bltui	a2, 8, .L8
	.loc 1 54 0 is_stmt 0 discriminator 4
	call8	esp_log_timestamp
.LVL15:
	l32r	a11, .LC18
	l32r	a2, .LC20
.LVL16:
	s32i.n	a2, sp, 8
	l32r	a2, .LC21
	s32i.n	a2, sp, 4
	movi.n	a2, 0x36
	s32i.n	a2, sp, 0
	l32r	a15, .LC17
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC19
	movi.n	a10, 1
	call8	esp_log_write
.LVL17:
	movi	a2, 0x102
	retw.n
.LVL18:
.L8:
	.loc 1 55 0 is_stmt 1
	movi.n	a8, 0x27
	bltu	a8, a3, .L10
	.loc 1 55 0 is_stmt 0 discriminator 2
	l32r	a8, .LC22
	addx4	a8, a3, a8
	l32i.n	a8, a8, 0
	beqz.n	a8, .L10
	.loc 1 55 0 discriminator 4
	movi.n	a9, 0x21
	bgeu	a9, a3, .L11
.L10:
	.loc 1 55 0 discriminator 8
	call8	esp_log_timestamp
.LVL19:
	l32r	a11, .LC18
	l32r	a2, .LC24
.LVL20:
	s32i.n	a2, sp, 8
	l32r	a2, .LC21
	s32i.n	a2, sp, 4
	movi.n	a2, 0x37
	s32i.n	a2, sp, 0
	l32r	a15, .LC17
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC19
	movi.n	a10, 1
	call8	esp_log_write
.LVL21:
	movi	a2, 0x102
	retw.n
.LVL22:
.L11:
.LBB2:
	.loc 1 56 0 is_stmt 1
	l32r	a9, .LC25
	add.n	a9, a8, a9
	l32r	a10, .LC26
	bltu	a10, a9, .L12
	.loc 1 56 0 is_stmt 0 discriminator 1
	l32r	a13, .LC28
	l32r	a12, .LC29
	movi.n	a11, 0x38
	l32r	a10, .LC17
	call8	__assert_func
.LVL23:
.L12:
.LBB3:
	.loc 1 56 0 discriminator 2
	l32r	a10, .LC26
	bltu	a10, a9, .L13
	.loc 1 56 0 discriminator 3
	l32r	a13, .LC31
	l32r	a12, .LC29
	movi.n	a11, 0x38
	l32r	a10, .LC17
	call8	__assert_func
.LVL24:
.L13:
.LBB4:
	.loc 1 56 0 discriminator 4
	l32r	a10, .LC26
	bltu	a10, a9, .L14
	.loc 1 56 0 discriminator 5
	l32r	a13, .LC33
	l32r	a12, .LC29
	movi.n	a11, 0x38
	l32r	a10, .LC17
	call8	__assert_func
.LVL25:
.L14:
	.loc 1 56 0 discriminator 6
	memw
	l32i.n	a10, a8, 0
.LBE4:
	l32r	a9, .LC34
	and	a10, a10, a9
	l32r	a9, .LC35
	or	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
.LBE3:
.LBE2:
	.loc 1 57 0 is_stmt 1 discriminator 6
	movi.n	a11, 2
	mov.n	a10, a3
	call8	gpio_set_direction
.LVL26:
	.loc 1 58 0 discriminator 6
	movi.n	a13, 0
	mov.n	a12, a13
	addi	a11, a2, 100
	mov.n	a10, a3
	call8	gpio_matrix_out
.LVL27:
	.loc 1 59 0 discriminator 6
	movi.n	a2, 0
.LVL28:
	.loc 1 60 0 discriminator 6
	retw.n
.LFE10:
	.size	sigmadelta_set_pin, .-sigmadelta_set_pin
	.section	.text.sigmadelta_config,"ax",@progbits
	.literal_position
	.literal .LC36, .LC0
	.literal .LC37, .LC2
	.literal .LC38, .LC4
	.literal .LC39, .LC6
	.literal .LC40, __FUNCTION__$4274
	.literal .LC41, GPIO_PIN_MUX_REG
	.literal .LC42, .LC23
	.align	4
	.global	sigmadelta_config
	.type	sigmadelta_config, @function
sigmadelta_config:
.LFB7:
	.loc 1 29 0
.LVL29:
	entry	sp, 48
.LCFI3:
	.loc 1 30 0
	l32i.n	a10, a2, 0
	bltui	a10, 8, .L16
	.loc 1 30 0 is_stmt 0 discriminator 4
	call8	esp_log_timestamp
.LVL30:
	l32r	a11, .LC37
	l32r	a2, .LC39
.LVL31:
	s32i.n	a2, sp, 8
	l32r	a2, .LC40
	s32i.n	a2, sp, 4
	movi.n	a2, 0x1e
	s32i.n	a2, sp, 0
	l32r	a15, .LC36
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC38
	movi.n	a10, 1
	call8	esp_log_write
.LVL32:
	movi	a2, 0x102
	retw.n
.LVL33:
.L16:
	.loc 1 31 0 is_stmt 1
	l8ui	a8, a2, 6
	movi.n	a9, 0x27
	bltu	a9, a8, .L18
	.loc 1 31 0 is_stmt 0 discriminator 2
	l32r	a9, .LC41
	addx4	a9, a8, a9
	l32i.n	a9, a9, 0
	beqz.n	a9, .L18
	.loc 1 31 0 discriminator 4
	movi.n	a9, 0x21
	bgeu	a9, a8, .L19
.L18:
	.loc 1 31 0 discriminator 8
	call8	esp_log_timestamp
.LVL34:
	l32r	a11, .LC37
	l32r	a2, .LC42
.LVL35:
	s32i.n	a2, sp, 8
	l32r	a2, .LC40
	s32i.n	a2, sp, 4
	movi.n	a2, 0x1f
	s32i.n	a2, sp, 0
	l32r	a15, .LC36
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC38
	movi.n	a10, 1
	call8	esp_log_write
.LVL36:
	movi	a2, 0x102
	retw.n
.LVL37:
.L19:
	.loc 1 32 0 is_stmt 1
	l8ui	a11, a2, 4
	sext	a11, a11, 7
	call8	sigmadelta_set_duty
.LVL38:
	.loc 1 33 0
	l8ui	a11, a2, 5
	l32i.n	a10, a2, 0
	call8	sigmadelta_set_prescale
.LVL39:
	.loc 1 34 0
	l8ui	a11, a2, 6
	l32i.n	a10, a2, 0
	call8	sigmadelta_set_pin
.LVL40:
	.loc 1 35 0
	movi.n	a2, 0
.LVL41:
	.loc 1 36 0
	retw.n
.LFE7:
	.size	sigmadelta_config, .-sigmadelta_config
	.section	.rodata.__func__$4290,"a",@progbits
	.align	4
	.type	__func__$4290, @object
	.size	__func__$4290, 19
__func__$4290:
	.string	"sigmadelta_set_pin"
	.section	.rodata.__FUNCTION__$4289,"a",@progbits
	.align	4
	.type	__FUNCTION__$4289, @object
	.size	__FUNCTION__$4289, 19
__FUNCTION__$4289:
	.string	"sigmadelta_set_pin"
	.section	.rodata.__FUNCTION__$4284,"a",@progbits
	.align	4
	.type	__FUNCTION__$4284, @object
	.size	__FUNCTION__$4284, 24
__FUNCTION__$4284:
	.string	"sigmadelta_set_prescale"
	.section	.rodata.__FUNCTION__$4279,"a",@progbits
	.align	4
	.type	__FUNCTION__$4279, @object
	.size	__FUNCTION__$4279, 20
__FUNCTION__$4279:
	.string	"sigmadelta_set_duty"
	.section	.rodata.__FUNCTION__$4274,"a",@progbits
	.align	4
	.type	__FUNCTION__$4274, @object
	.size	__FUNCTION__$4274, 18
__FUNCTION__$4274:
	.string	"sigmadelta_config"
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
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x4
	.4byte	.LCFI0-.LFB8
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x4
	.4byte	.LCFI1-.LFB9
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI2-.LFB10
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI3-.LFB7
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE6:
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_err.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/gpio_sd_struct.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/log/include/esp_log.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/gpio.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/sigmadelta.h"
	.file 9 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/include/soc/gpio_periph.h"
	.file 10 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/assert.h"
	.file 11 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/gpio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x924
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF110
	.byte	0xc
	.4byte	.LASF111
	.4byte	.LASF112
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF0
	.byte	0x2
	.byte	0x11
	.4byte	0x30
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x2
	.4byte	.LASF1
	.byte	0x2
	.byte	0x12
	.4byte	0x42
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x2
	.4byte	.LASF6
	.byte	0x2
	.byte	0x19
	.4byte	0x62
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.4byte	.LASF7
	.byte	0x2
	.byte	0x1a
	.4byte	0x74
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x2
	.4byte	.LASF11
	.byte	0x3
	.byte	0x14
	.4byte	0x25
	.uleb128 0x2
	.4byte	.LASF12
	.byte	0x3
	.byte	0x15
	.4byte	0x37
	.uleb128 0x2
	.4byte	.LASF13
	.byte	0x3
	.byte	0x2c
	.4byte	0x57
	.uleb128 0x2
	.4byte	.LASF14
	.byte	0x3
	.byte	0x2d
	.4byte	0x69
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF15
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF16
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF17
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF18
	.uleb128 0x5
	.byte	0x4
	.4byte	0xd7
	.uleb128 0x6
	.4byte	0xca
	.uleb128 0x7
	.byte	0x4
	.4byte	0x74
	.byte	0x6
	.byte	0x1f
	.4byte	0x10d
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF21
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0x3
	.uleb128 0x8
	.4byte	.LASF23
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF24
	.byte	0x5
	.byte	0
	.uleb128 0x2
	.4byte	.LASF25
	.byte	0x4
	.byte	0x18
	.4byte	0x9f
	.uleb128 0x9
	.byte	0x4
	.byte	0x5
	.byte	0x17
	.4byte	0x14e
	.uleb128 0xa
	.4byte	.LASF26
	.byte	0x5
	.byte	0x18
	.4byte	0xaa
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0x5
	.byte	0x19
	.4byte	0xaa
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0x5
	.byte	0x1a
	.4byte	0xaa
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0x5
	.byte	0x16
	.4byte	0x167
	.uleb128 0xc
	.4byte	0x118
	.uleb128 0xd
	.string	"val"
	.byte	0x5
	.byte	0x1c
	.4byte	0xaa
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.byte	0x5
	.byte	0x1f
	.4byte	0x18e
	.uleb128 0xa
	.4byte	.LASF29
	.byte	0x5
	.byte	0x20
	.4byte	0xaa
	.byte	0x4
	.byte	0x1f
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.4byte	.LASF30
	.byte	0x5
	.byte	0x21
	.4byte	0xaa
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0x5
	.byte	0x1e
	.4byte	0x1a7
	.uleb128 0xc
	.4byte	0x167
	.uleb128 0xd
	.string	"val"
	.byte	0x5
	.byte	0x23
	.4byte	0xaa
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.byte	0x5
	.byte	0x26
	.4byte	0x1ce
	.uleb128 0xa
	.4byte	.LASF29
	.byte	0x5
	.byte	0x27
	.4byte	0xaa
	.byte	0x4
	.byte	0x1f
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.4byte	.LASF31
	.byte	0x5
	.byte	0x28
	.4byte	0xaa
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0x5
	.byte	0x25
	.4byte	0x1e7
	.uleb128 0xc
	.4byte	0x1a7
	.uleb128 0xd
	.string	"val"
	.byte	0x5
	.byte	0x2a
	.4byte	0xaa
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.byte	0x5
	.byte	0x2d
	.4byte	0x20e
	.uleb128 0xa
	.4byte	.LASF32
	.byte	0x5
	.byte	0x2e
	.4byte	0xaa
	.byte	0x4
	.byte	0x1c
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.4byte	.LASF33
	.byte	0x5
	.byte	0x2f
	.4byte	0xaa
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0x5
	.byte	0x2c
	.4byte	0x227
	.uleb128 0xc
	.4byte	0x1e7
	.uleb128 0xd
	.string	"val"
	.byte	0x5
	.byte	0x31
	.4byte	0xaa
	.byte	0
	.uleb128 0x9
	.byte	0x2c
	.byte	0x5
	.byte	0x15
	.4byte	0x25f
	.uleb128 0xe
	.4byte	.LASF34
	.byte	0x5
	.byte	0x1d
	.4byte	0x25f
	.byte	0
	.uleb128 0xf
	.string	"cg"
	.byte	0x5
	.byte	0x24
	.4byte	0x18e
	.byte	0x20
	.uleb128 0xe
	.4byte	.LASF35
	.byte	0x5
	.byte	0x2b
	.4byte	0x1ce
	.byte	0x24
	.uleb128 0xe
	.4byte	.LASF36
	.byte	0x5
	.byte	0x32
	.4byte	0x20e
	.byte	0x28
	.byte	0
	.uleb128 0x10
	.4byte	0x14e
	.4byte	0x26f
	.uleb128 0x11
	.4byte	0xbc
	.byte	0x7
	.byte	0
	.uleb128 0x2
	.4byte	.LASF37
	.byte	0x5
	.byte	0x33
	.4byte	0x27a
	.uleb128 0x12
	.4byte	0x227
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF38
	.uleb128 0x7
	.byte	0x4
	.4byte	0x74
	.byte	0x7
	.byte	0x82
	.4byte	0x365
	.uleb128 0x8
	.4byte	.LASF39
	.byte	0
	.uleb128 0x8
	.4byte	.LASF40
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF41
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF42
	.byte	0x3
	.uleb128 0x8
	.4byte	.LASF43
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF44
	.byte	0x5
	.uleb128 0x8
	.4byte	.LASF45
	.byte	0x6
	.uleb128 0x8
	.4byte	.LASF46
	.byte	0x7
	.uleb128 0x8
	.4byte	.LASF47
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF48
	.byte	0x9
	.uleb128 0x8
	.4byte	.LASF49
	.byte	0xa
	.uleb128 0x8
	.4byte	.LASF50
	.byte	0xb
	.uleb128 0x8
	.4byte	.LASF51
	.byte	0xc
	.uleb128 0x8
	.4byte	.LASF52
	.byte	0xd
	.uleb128 0x8
	.4byte	.LASF53
	.byte	0xe
	.uleb128 0x8
	.4byte	.LASF54
	.byte	0xf
	.uleb128 0x8
	.4byte	.LASF55
	.byte	0x10
	.uleb128 0x8
	.4byte	.LASF56
	.byte	0x11
	.uleb128 0x8
	.4byte	.LASF57
	.byte	0x12
	.uleb128 0x8
	.4byte	.LASF58
	.byte	0x13
	.uleb128 0x8
	.4byte	.LASF59
	.byte	0x15
	.uleb128 0x8
	.4byte	.LASF60
	.byte	0x16
	.uleb128 0x8
	.4byte	.LASF61
	.byte	0x17
	.uleb128 0x8
	.4byte	.LASF62
	.byte	0x19
	.uleb128 0x8
	.4byte	.LASF63
	.byte	0x1a
	.uleb128 0x8
	.4byte	.LASF64
	.byte	0x1b
	.uleb128 0x8
	.4byte	.LASF65
	.byte	0x20
	.uleb128 0x8
	.4byte	.LASF66
	.byte	0x21
	.uleb128 0x8
	.4byte	.LASF67
	.byte	0x22
	.uleb128 0x8
	.4byte	.LASF68
	.byte	0x23
	.uleb128 0x8
	.4byte	.LASF69
	.byte	0x24
	.uleb128 0x8
	.4byte	.LASF70
	.byte	0x25
	.uleb128 0x8
	.4byte	.LASF71
	.byte	0x26
	.uleb128 0x8
	.4byte	.LASF72
	.byte	0x27
	.uleb128 0x8
	.4byte	.LASF73
	.byte	0x28
	.byte	0
	.uleb128 0x2
	.4byte	.LASF74
	.byte	0x7
	.byte	0xaf
	.4byte	0x286
	.uleb128 0x7
	.byte	0x4
	.4byte	0x74
	.byte	0x7
	.byte	0xbb
	.4byte	0x3a1
	.uleb128 0x8
	.4byte	.LASF75
	.byte	0
	.uleb128 0x8
	.4byte	.LASF76
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF77
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF78
	.byte	0x6
	.uleb128 0x8
	.4byte	.LASF79
	.byte	0x7
	.uleb128 0x8
	.4byte	.LASF80
	.byte	0x3
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x74
	.byte	0x8
	.byte	0x1d
	.4byte	0x3e4
	.uleb128 0x8
	.4byte	.LASF81
	.byte	0
	.uleb128 0x8
	.4byte	.LASF82
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF83
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF84
	.byte	0x3
	.uleb128 0x8
	.4byte	.LASF85
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF86
	.byte	0x5
	.uleb128 0x8
	.4byte	.LASF87
	.byte	0x6
	.uleb128 0x8
	.4byte	.LASF88
	.byte	0x7
	.uleb128 0x8
	.4byte	.LASF89
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.4byte	.LASF90
	.byte	0x8
	.byte	0x27
	.4byte	0x3a1
	.uleb128 0x9
	.byte	0x8
	.byte	0x8
	.byte	0x2c
	.4byte	0x428
	.uleb128 0xe
	.4byte	.LASF34
	.byte	0x8
	.byte	0x2d
	.4byte	0x3e4
	.byte	0
	.uleb128 0xe
	.4byte	.LASF91
	.byte	0x8
	.byte	0x2e
	.4byte	0x89
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF92
	.byte	0x8
	.byte	0x2f
	.4byte	0x94
	.byte	0x5
	.uleb128 0xe
	.4byte	.LASF93
	.byte	0x8
	.byte	0x30
	.4byte	0x94
	.byte	0x6
	.byte	0
	.uleb128 0x2
	.4byte	.LASF94
	.byte	0x8
	.byte	0x31
	.4byte	0x3ef
	.uleb128 0x13
	.4byte	.LASF95
	.byte	0x1
	.byte	0x26
	.4byte	0x10d
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4d1
	.uleb128 0x14
	.4byte	.LASF34
	.byte	0x1
	.byte	0x26
	.4byte	0x3e4
	.4byte	.LLST0
	.uleb128 0x14
	.4byte	.LASF26
	.byte	0x1
	.byte	0x26
	.4byte	0x89
	.4byte	.LLST1
	.uleb128 0x15
	.4byte	.LASF97
	.4byte	0x4e1
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$4279
	.uleb128 0x16
	.4byte	.LVL1
	.4byte	0x8ef
	.uleb128 0x17
	.4byte	.LVL3
	.4byte	0x8fa
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x18
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$4279
	.uleb128 0x18
	.uleb128 0x2
	.byte	0x71
	.sleb128 8
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	0xca
	.4byte	0x4e1
	.uleb128 0x11
	.4byte	0xbc
	.byte	0x13
	.byte	0
	.uleb128 0x6
	.4byte	0x4d1
	.uleb128 0x13
	.4byte	.LASF96
	.byte	0x1
	.byte	0x2d
	.4byte	0x10d
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x584
	.uleb128 0x14
	.4byte	.LASF34
	.byte	0x1
	.byte	0x2d
	.4byte	0x3e4
	.4byte	.LLST2
	.uleb128 0x14
	.4byte	.LASF27
	.byte	0x1
	.byte	0x2d
	.4byte	0x94
	.4byte	.LLST3
	.uleb128 0x15
	.4byte	.LASF97
	.4byte	0x594
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$4284
	.uleb128 0x16
	.4byte	.LVL8
	.4byte	0x8ef
	.uleb128 0x17
	.4byte	.LVL10
	.4byte	0x8fa
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x18
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$4284
	.uleb128 0x18
	.uleb128 0x2
	.byte	0x71
	.sleb128 8
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	0xca
	.4byte	0x594
	.uleb128 0x11
	.4byte	0xbc
	.byte	0x17
	.byte	0
	.uleb128 0x6
	.4byte	0x584
	.uleb128 0x13
	.4byte	.LASF98
	.byte	0x1
	.byte	0x34
	.4byte	0x10d
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x76a
	.uleb128 0x14
	.4byte	.LASF34
	.byte	0x1
	.byte	0x34
	.4byte	0x3e4
	.4byte	.LLST4
	.uleb128 0x19
	.4byte	.LASF99
	.byte	0x1
	.byte	0x34
	.4byte	0x365
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x15
	.4byte	.LASF97
	.4byte	0x77a
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$4289
	.uleb128 0x15
	.4byte	.LASF100
	.4byte	0x77f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$4290
	.uleb128 0x16
	.4byte	.LVL15
	.4byte	0x8ef
	.uleb128 0x1a
	.4byte	.LVL17
	.4byte	0x8fa
	.4byte	0x647
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x18
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$4289
	.uleb128 0x18
	.uleb128 0x2
	.byte	0x71
	.sleb128 8
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0
	.uleb128 0x16
	.4byte	.LVL19
	.4byte	0x8ef
	.uleb128 0x1a
	.4byte	.LVL21
	.4byte	0x8fa
	.4byte	0x6a2
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x18
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$4289
	.uleb128 0x18
	.uleb128 0x2
	.byte	0x71
	.sleb128 8
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC23
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL23
	.4byte	0x905
	.4byte	0x6d1
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x38
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$4290
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC27
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL24
	.4byte	0x905
	.4byte	0x700
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x38
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$4290
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC30
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL25
	.4byte	0x905
	.4byte	0x72f
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x38
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$4290
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC32
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL26
	.4byte	0x910
	.4byte	0x748
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x17
	.4byte	.LVL27
	.4byte	0x91c
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x72
	.sleb128 100
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	0xca
	.4byte	0x77a
	.uleb128 0x11
	.4byte	0xbc
	.byte	0x12
	.byte	0
	.uleb128 0x6
	.4byte	0x76a
	.uleb128 0x6
	.4byte	0x76a
	.uleb128 0x13
	.4byte	.LASF101
	.byte	0x1
	.byte	0x1c
	.4byte	0x10d
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x88d
	.uleb128 0x14
	.4byte	.LASF102
	.byte	0x1
	.byte	0x1c
	.4byte	0x88d
	.4byte	.LLST5
	.uleb128 0x15
	.4byte	.LASF97
	.4byte	0x8a8
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$4274
	.uleb128 0x16
	.4byte	.LVL30
	.4byte	0x8ef
	.uleb128 0x1a
	.4byte	.LVL32
	.4byte	0x8fa
	.4byte	0x816
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x18
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$4274
	.uleb128 0x18
	.uleb128 0x2
	.byte	0x71
	.sleb128 8
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0
	.uleb128 0x16
	.4byte	.LVL34
	.4byte	0x8ef
	.uleb128 0x1a
	.4byte	.LVL36
	.4byte	0x8fa
	.4byte	0x871
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x18
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$4274
	.uleb128 0x18
	.uleb128 0x2
	.byte	0x71
	.sleb128 8
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC23
	.byte	0
	.uleb128 0x16
	.4byte	.LVL38
	.4byte	0x433
	.uleb128 0x16
	.4byte	.LVL39
	.4byte	0x4e6
	.uleb128 0x16
	.4byte	.LVL40
	.4byte	0x599
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x893
	.uleb128 0x6
	.4byte	0x428
	.uleb128 0x10
	.4byte	0xca
	.4byte	0x8a8
	.uleb128 0x11
	.4byte	0xbc
	.byte	0x11
	.byte	0
	.uleb128 0x6
	.4byte	0x898
	.uleb128 0x1b
	.4byte	.LASF113
	.byte	0x1
	.byte	0x13
	.4byte	0x8bf
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC2
	.byte	0x9f
	.uleb128 0x6
	.4byte	0xd1
	.uleb128 0x1c
	.4byte	.LASF103
	.byte	0x5
	.byte	0x34
	.4byte	0x26f
	.uleb128 0x10
	.4byte	0xaa
	.4byte	0x8df
	.uleb128 0x11
	.4byte	0xbc
	.byte	0x27
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF104
	.byte	0x9
	.byte	0x19
	.4byte	0x8ea
	.uleb128 0x6
	.4byte	0x8cf
	.uleb128 0x1d
	.4byte	.LASF105
	.4byte	.LASF105
	.byte	0x6
	.byte	0x57
	.uleb128 0x1d
	.4byte	.LASF106
	.4byte	.LASF106
	.byte	0x6
	.byte	0x6b
	.uleb128 0x1d
	.4byte	.LASF107
	.4byte	.LASF107
	.byte	0xa
	.byte	0x29
	.uleb128 0x1e
	.4byte	.LASF108
	.4byte	.LASF108
	.byte	0x7
	.2byte	0x158
	.uleb128 0x1d
	.4byte	.LASF109
	.4byte	.LASF109
	.byte	0xb
	.byte	0xed
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
	.uleb128 0xe
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
	.uleb128 0x17
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
	.uleb128 0xc
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0xb
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL2
	.4byte	.LVL4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL5
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL6
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL9
	.4byte	.LVL11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL12
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL7
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL13
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL14
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL16
	.4byte	.LVL18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL20
	.4byte	.LVL22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL28
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL29
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL31
	.4byte	.LVL33
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL35
	.4byte	.LVL37
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL37
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL41
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x34
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF59:
	.string	"GPIO_NUM_21"
.LASF60:
	.string	"GPIO_NUM_22"
.LASF61:
	.string	"GPIO_NUM_23"
.LASF98:
	.string	"sigmadelta_set_pin"
.LASF62:
	.string	"GPIO_NUM_25"
.LASF36:
	.string	"version"
.LASF64:
	.string	"GPIO_NUM_27"
.LASF88:
	.string	"SIGMADELTA_CHANNEL_7"
.LASF103:
	.string	"SIGMADELTA"
.LASF11:
	.string	"int8_t"
.LASF4:
	.string	"short int"
.LASF99:
	.string	"gpio_num"
.LASF16:
	.string	"sizetype"
.LASF75:
	.string	"GPIO_MODE_DISABLE"
.LASF30:
	.string	"clk_en"
.LASF7:
	.string	"__uint32_t"
.LASF112:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\driver"
.LASF102:
	.string	"config"
.LASF89:
	.string	"SIGMADELTA_CHANNEL_MAX"
.LASF12:
	.string	"uint8_t"
.LASF33:
	.string	"reserved28"
.LASF113:
	.string	"SIGMADELTA_TAG"
.LASF95:
	.string	"sigmadelta_set_duty"
.LASF106:
	.string	"esp_log_write"
.LASF65:
	.string	"GPIO_NUM_32"
.LASF66:
	.string	"GPIO_NUM_33"
.LASF67:
	.string	"GPIO_NUM_34"
.LASF68:
	.string	"GPIO_NUM_35"
.LASF69:
	.string	"GPIO_NUM_36"
.LASF70:
	.string	"GPIO_NUM_37"
.LASF71:
	.string	"GPIO_NUM_38"
.LASF72:
	.string	"GPIO_NUM_39"
.LASF9:
	.string	"long long int"
.LASF37:
	.string	"gpio_sd_dev_t"
.LASF15:
	.string	"long int"
.LASF29:
	.string	"reserved0"
.LASF22:
	.string	"ESP_LOG_INFO"
.LASF101:
	.string	"sigmadelta_config"
.LASF96:
	.string	"sigmadelta_set_prescale"
.LASF97:
	.string	"__FUNCTION__"
.LASF39:
	.string	"GPIO_NUM_0"
.LASF40:
	.string	"GPIO_NUM_1"
.LASF41:
	.string	"GPIO_NUM_2"
.LASF42:
	.string	"GPIO_NUM_3"
.LASF73:
	.string	"GPIO_NUM_MAX"
.LASF44:
	.string	"GPIO_NUM_5"
.LASF3:
	.string	"unsigned char"
.LASF81:
	.string	"SIGMADELTA_CHANNEL_0"
.LASF91:
	.string	"sigmadelta_duty"
.LASF82:
	.string	"SIGMADELTA_CHANNEL_1"
.LASF83:
	.string	"SIGMADELTA_CHANNEL_2"
.LASF26:
	.string	"duty"
.LASF85:
	.string	"SIGMADELTA_CHANNEL_4"
.LASF86:
	.string	"SIGMADELTA_CHANNEL_5"
.LASF104:
	.string	"GPIO_PIN_MUX_REG"
.LASF2:
	.string	"signed char"
.LASF10:
	.string	"long long unsigned int"
.LASF45:
	.string	"GPIO_NUM_6"
.LASF14:
	.string	"uint32_t"
.LASF46:
	.string	"GPIO_NUM_7"
.LASF8:
	.string	"unsigned int"
.LASF20:
	.string	"ESP_LOG_ERROR"
.LASF48:
	.string	"GPIO_NUM_9"
.LASF76:
	.string	"GPIO_MODE_INPUT"
.LASF17:
	.string	"long unsigned int"
.LASF43:
	.string	"GPIO_NUM_4"
.LASF100:
	.string	"__func__"
.LASF108:
	.string	"gpio_set_direction"
.LASF111:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/driver/sigmadelta.c"
.LASF0:
	.string	"__int8_t"
.LASF18:
	.string	"char"
.LASF23:
	.string	"ESP_LOG_DEBUG"
.LASF13:
	.string	"int32_t"
.LASF19:
	.string	"ESP_LOG_NONE"
.LASF5:
	.string	"short unsigned int"
.LASF109:
	.string	"gpio_matrix_out"
.LASF38:
	.string	"_Bool"
.LASF79:
	.string	"GPIO_MODE_INPUT_OUTPUT_OD"
.LASF94:
	.string	"sigmadelta_config_t"
.LASF34:
	.string	"channel"
.LASF92:
	.string	"sigmadelta_prescale"
.LASF32:
	.string	"date"
.LASF49:
	.string	"GPIO_NUM_10"
.LASF50:
	.string	"GPIO_NUM_11"
.LASF51:
	.string	"GPIO_NUM_12"
.LASF52:
	.string	"GPIO_NUM_13"
.LASF53:
	.string	"GPIO_NUM_14"
.LASF54:
	.string	"GPIO_NUM_15"
.LASF55:
	.string	"GPIO_NUM_16"
.LASF56:
	.string	"GPIO_NUM_17"
.LASF57:
	.string	"GPIO_NUM_18"
.LASF58:
	.string	"GPIO_NUM_19"
.LASF90:
	.string	"sigmadelta_channel_t"
.LASF80:
	.string	"GPIO_MODE_INPUT_OUTPUT"
.LASF21:
	.string	"ESP_LOG_WARN"
.LASF24:
	.string	"ESP_LOG_VERBOSE"
.LASF27:
	.string	"prescale"
.LASF6:
	.string	"__int32_t"
.LASF63:
	.string	"GPIO_NUM_26"
.LASF93:
	.string	"sigmadelta_gpio"
.LASF35:
	.string	"misc"
.LASF105:
	.string	"esp_log_timestamp"
.LASF77:
	.string	"GPIO_MODE_OUTPUT"
.LASF74:
	.string	"gpio_num_t"
.LASF78:
	.string	"GPIO_MODE_OUTPUT_OD"
.LASF107:
	.string	"__assert_func"
.LASF47:
	.string	"GPIO_NUM_8"
.LASF31:
	.string	"spi_swap"
.LASF110:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF84:
	.string	"SIGMADELTA_CHANNEL_3"
.LASF28:
	.string	"reserved16"
.LASF25:
	.string	"esp_err_t"
.LASF1:
	.string	"__uint8_t"
.LASF87:
	.string	"SIGMADELTA_CHANNEL_6"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
