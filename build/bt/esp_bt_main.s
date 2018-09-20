	.file	"esp_bt_main.c"
	.text
.Ltext0:
	.section	.text.esp_bluedroid_get_status,"ax",@progbits
	.literal_position
	.literal .LC0, bd_already_init
	.literal .LC1, bd_already_enable
	.align	4
	.global	esp_bluedroid_get_status
	.type	esp_bluedroid_get_status, @function
esp_bluedroid_get_status:
.LFB26:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/api/esp_bt_main.c"
	.loc 1 27 0
	entry	sp, 32
.LCFI0:
	.loc 1 28 0
	l32r	a8, .LC0
	l8ui	a8, a8, 0
	beqz.n	a8, .L3
	.loc 1 29 0
	l32r	a2, .LC1
	l8ui	a2, a2, 0
	beqz.n	a2, .L4
	.loc 1 30 0
	movi.n	a2, 2
	retw.n
.L3:
	.loc 1 35 0
	movi.n	a2, 0
	retw.n
.L4:
	.loc 1 32 0
	movi.n	a2, 1
	.loc 1 37 0
	retw.n
.LFE26:
	.size	esp_bluedroid_get_status, .-esp_bluedroid_get_status
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC3:
	.string	"BT_LOG"
	.align	4
.LC5:
	.string	"\033[0;31mE (%d) %s: Bludroid not initialised\n\033[0m\n"
	.align	4
.LC8:
	.string	"\033[0;31mE (%d) %s: Bluedroid already enabled\n\033[0m\n"
	.align	4
.LC10:
	.string	"\033[0;31mE (%d) %s: Bluedroid enable failed\n\033[0m\n"
	.section	.text.esp_bluedroid_enable,"ax",@progbits
	.literal_position
	.literal .LC2, bd_already_init
	.literal .LC4, .LC3
	.literal .LC6, .LC5
	.literal .LC7, bd_already_enable
	.literal .LC9, .LC8
	.literal .LC11, .LC10
	.align	4
	.global	esp_bluedroid_enable
	.type	esp_bluedroid_enable, @function
esp_bluedroid_enable:
.LFB27:
	.loc 1 40 0
	entry	sp, 48
.LCFI1:
	.loc 1 44 0
	l32r	a8, .LC2
	l8ui	a8, a8, 0
	bnez.n	a8, .L6
	.loc 1 45 0 discriminator 1
	call8	esp_log_timestamp
.LVL0:
	l32r	a11, .LC4
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC6
	movi.n	a10, 1
	call8	esp_log_write
.LVL1:
	.loc 1 46 0 discriminator 1
	movi	a2, 0x103
	retw.n
.L6:
	.loc 1 49 0
	l32r	a2, .LC7
	l8ui	a2, a2, 0
	beqz.n	a2, .L8
	.loc 1 50 0 discriminator 1
	call8	esp_log_timestamp
.LVL2:
	l32r	a11, .LC4
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC9
	movi.n	a10, 1
	call8	esp_log_write
.LVL3:
	.loc 1 51 0 discriminator 1
	movi	a2, 0x103
	retw.n
.L8:
	.loc 1 54 0
	movi.n	a10, 2
	call8	btc_main_get_future_p
.LVL4:
	mov.n	a2, a10
.LVL5:
	.loc 1 55 0
	call8	future_new
.LVL6:
	s32i.n	a10, a2, 0
	.loc 1 56 0
	bnez.n	a10, .L9
	.loc 1 57 0 discriminator 1
	call8	esp_log_timestamp
.LVL7:
	l32r	a11, .LC4
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC11
	movi.n	a10, 1
	call8	esp_log_write
.LVL8:
	.loc 1 58 0 discriminator 1
	movi	a2, 0x101
.LVL9:
	retw.n
.LVL10:
.L9:
	.loc 1 61 0
	movi.n	a8, 0
	s8i	a8, sp, 0
	.loc 1 62 0
	s8i	a8, sp, 2
	.loc 1 63 0
	movi.n	a8, 2
	s8i	a8, sp, 3
	.loc 1 65 0
	movi.n	a13, 0
	mov.n	a12, a13
	mov.n	a11, a13
	mov.n	a10, sp
	call8	btc_transfer_context
.LVL11:
	beqz.n	a10, .L10
	.loc 1 66 0 discriminator 1
	call8	esp_log_timestamp
.LVL12:
	l32r	a11, .LC4
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC11
	movi.n	a10, 1
	call8	esp_log_write
.LVL13:
	.loc 1 67 0 discriminator 1
	movi.n	a2, -1
.LVL14:
	retw.n
.LVL15:
.L10:
	.loc 1 70 0
	l32i.n	a10, a2, 0
	call8	future_await
.LVL16:
	bnez.n	a10, .L11
	.loc 1 71 0 discriminator 1
	call8	esp_log_timestamp
.LVL17:
	l32r	a11, .LC4
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC11
	movi.n	a10, 1
	call8	esp_log_write
.LVL18:
	.loc 1 72 0 discriminator 1
	movi.n	a2, -1
.LVL19:
	retw.n
.LVL20:
.L11:
	.loc 1 75 0
	movi.n	a8, 1
	l32r	a2, .LC7
.LVL21:
	s8i	a8, a2, 0
	.loc 1 77 0
	movi.n	a2, 0
	.loc 1 78 0
	retw.n
.LFE27:
	.size	esp_bluedroid_enable, .-esp_bluedroid_enable
	.section	.rodata.str1.4
	.align	4
.LC14:
	.string	"\033[0;31mE (%d) %s: Bluedroid already disabled\n\033[0m\n"
	.align	4
.LC16:
	.string	"\033[0;31mE (%d) %s: Bluedroid disable failed\n\033[0m\n"
	.section	.text.esp_bluedroid_disable,"ax",@progbits
	.literal_position
	.literal .LC12, bd_already_enable
	.literal .LC13, .LC3
	.literal .LC15, .LC14
	.literal .LC17, .LC16
	.align	4
	.global	esp_bluedroid_disable
	.type	esp_bluedroid_disable, @function
esp_bluedroid_disable:
.LFB28:
	.loc 1 81 0
	entry	sp, 48
.LCFI2:
	.loc 1 85 0
	l32r	a8, .LC12
	l8ui	a8, a8, 0
	bnez.n	a8, .L13
	.loc 1 86 0 discriminator 1
	call8	esp_log_timestamp
.LVL22:
	l32r	a11, .LC13
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC15
	movi.n	a10, 1
	call8	esp_log_write
.LVL23:
	.loc 1 87 0 discriminator 1
	movi	a2, 0x103
	retw.n
.L13:
	.loc 1 90 0
	movi.n	a10, 3
	call8	btc_main_get_future_p
.LVL24:
	mov.n	a2, a10
.LVL25:
	.loc 1 91 0
	call8	future_new
.LVL26:
	s32i.n	a10, a2, 0
	.loc 1 92 0
	bnez.n	a10, .L15
	.loc 1 93 0 discriminator 1
	call8	esp_log_timestamp
.LVL27:
	l32r	a11, .LC13
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC17
	movi.n	a10, 1
	call8	esp_log_write
.LVL28:
	.loc 1 94 0 discriminator 1
	movi	a2, 0x101
.LVL29:
	retw.n
.LVL30:
.L15:
	.loc 1 97 0
	movi.n	a8, 0
	s8i	a8, sp, 0
	.loc 1 98 0
	s8i	a8, sp, 2
	.loc 1 99 0
	movi.n	a8, 3
	s8i	a8, sp, 3
	.loc 1 101 0
	movi.n	a13, 0
	mov.n	a12, a13
	mov.n	a11, a13
	mov.n	a10, sp
	call8	btc_transfer_context
.LVL31:
	beqz.n	a10, .L16
	.loc 1 102 0 discriminator 1
	call8	esp_log_timestamp
.LVL32:
	l32r	a11, .LC13
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC17
	movi.n	a10, 1
	call8	esp_log_write
.LVL33:
	.loc 1 103 0 discriminator 1
	movi.n	a2, -1
.LVL34:
	retw.n
.LVL35:
.L16:
	.loc 1 106 0
	l32i.n	a10, a2, 0
	call8	future_await
.LVL36:
	bnez.n	a10, .L17
	.loc 1 107 0 discriminator 1
	call8	esp_log_timestamp
.LVL37:
	l32r	a11, .LC13
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC17
	movi.n	a10, 1
	call8	esp_log_write
.LVL38:
	.loc 1 108 0 discriminator 1
	movi.n	a2, -1
.LVL39:
	retw.n
.LVL40:
.L17:
	.loc 1 111 0
	movi.n	a8, 0
	l32r	a2, .LC12
.LVL41:
	s8i	a8, a2, 0
	.loc 1 113 0
	movi.n	a2, 0
	.loc 1 114 0
	retw.n
.LFE28:
	.size	esp_bluedroid_disable, .-esp_bluedroid_disable
	.section	.rodata.str1.4
	.align	4
.LC19:
	.string	"\033[0;31mE (%d) %s: Conroller not initialised\n\033[0m\n"
	.align	4
.LC22:
	.string	"\033[0;31mE (%d) %s: Bluedroid already initialised\n\033[0m\n"
	.align	4
.LC24:
	.string	"\033[0;31mE (%d) %s: Bluedroid initialise failed\n\033[0m\n"
	.section	.text.esp_bluedroid_init,"ax",@progbits
	.literal_position
	.literal .LC18, .LC3
	.literal .LC20, .LC19
	.literal .LC21, bd_already_init
	.literal .LC23, .LC22
	.literal .LC25, .LC24
	.align	4
	.global	esp_bluedroid_init
	.type	esp_bluedroid_init, @function
esp_bluedroid_init:
.LFB29:
	.loc 1 117 0
	entry	sp, 48
.LCFI3:
	.loc 1 121 0
	call8	esp_bt_controller_get_status
.LVL42:
	beqi	a10, 2, .L19
	.loc 1 122 0 discriminator 1
	call8	esp_log_timestamp
.LVL43:
	l32r	a11, .LC18
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC20
	movi.n	a10, 1
	call8	esp_log_write
.LVL44:
	.loc 1 123 0 discriminator 1
	movi	a2, 0x103
	retw.n
.L19:
	.loc 1 126 0
	l32r	a2, .LC21
	l8ui	a2, a2, 0
	beqz.n	a2, .L21
	.loc 1 127 0 discriminator 1
	call8	esp_log_timestamp
.LVL45:
	l32r	a11, .LC18
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC23
	movi.n	a10, 1
	call8	esp_log_write
.LVL46:
	.loc 1 128 0 discriminator 1
	movi	a2, 0x103
	retw.n
.L21:
	.loc 1 135 0
	movi.n	a10, 0
	call8	btc_main_get_future_p
.LVL47:
	mov.n	a3, a10
.LVL48:
	.loc 1 136 0
	call8	future_new
.LVL49:
	s32i.n	a10, a3, 0
	.loc 1 137 0
	bnez.n	a10, .L22
	.loc 1 138 0 discriminator 1
	call8	esp_log_timestamp
.LVL50:
	l32r	a11, .LC18
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC25
	movi.n	a10, 1
	call8	esp_log_write
.LVL51:
	.loc 1 139 0 discriminator 1
	movi	a2, 0x101
	retw.n
.L22:
	.loc 1 142 0
	call8	btc_init
.LVL52:
	.loc 1 144 0
	movi.n	a2, 0
	s8i	a2, sp, 0
	.loc 1 145 0
	s8i	a2, sp, 2
	.loc 1 146 0
	s8i	a2, sp, 3
	.loc 1 148 0
	movi.n	a13, 0
	mov.n	a12, a13
	mov.n	a11, a13
	mov.n	a10, sp
	call8	btc_transfer_context
.LVL53:
	beqz.n	a10, .L23
	.loc 1 149 0 discriminator 1
	call8	esp_log_timestamp
.LVL54:
	l32r	a11, .LC18
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC25
	movi.n	a10, 1
	call8	esp_log_write
.LVL55:
	.loc 1 150 0 discriminator 1
	movi.n	a2, -1
	retw.n
.L23:
	.loc 1 153 0
	l32i.n	a10, a3, 0
	call8	future_await
.LVL56:
	bnez.n	a10, .L24
	.loc 1 154 0 discriminator 1
	call8	esp_log_timestamp
.LVL57:
	l32r	a11, .LC18
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC25
	movi.n	a10, 1
	call8	esp_log_write
.LVL58:
	.loc 1 155 0 discriminator 1
	movi.n	a2, -1
	retw.n
.L24:
	.loc 1 158 0
	movi.n	a3, 1
.LVL59:
	l32r	a2, .LC21
	s8i	a3, a2, 0
	.loc 1 160 0
	movi.n	a2, 0
	.loc 1 161 0
	retw.n
.LFE29:
	.size	esp_bluedroid_init, .-esp_bluedroid_init
	.section	.rodata.str1.4
	.align	4
.LC28:
	.string	"\033[0;31mE (%d) %s: Bluedroid already de-initialised\n\033[0m\n"
	.align	4
.LC31:
	.string	"\033[0;31mE (%d) %s: Bludroid already enabled, do disable first\n\033[0m\n"
	.align	4
.LC33:
	.string	"\033[0;31mE (%d) %s: Bluedroid de-initialise failed\n\033[0m\n"
	.section	.text.esp_bluedroid_deinit,"ax",@progbits
	.literal_position
	.literal .LC26, bd_already_init
	.literal .LC27, .LC3
	.literal .LC29, .LC28
	.literal .LC30, bd_already_enable
	.literal .LC32, .LC31
	.literal .LC34, .LC33
	.align	4
	.global	esp_bluedroid_deinit
	.type	esp_bluedroid_deinit, @function
esp_bluedroid_deinit:
.LFB30:
	.loc 1 165 0
	entry	sp, 48
.LCFI4:
	.loc 1 169 0
	l32r	a8, .LC26
	l8ui	a8, a8, 0
	bnez.n	a8, .L26
	.loc 1 170 0 discriminator 1
	call8	esp_log_timestamp
.LVL60:
	l32r	a11, .LC27
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC29
	movi.n	a10, 1
	call8	esp_log_write
.LVL61:
	.loc 1 171 0 discriminator 1
	movi	a2, 0x103
	retw.n
.L26:
	.loc 1 174 0
	l32r	a2, .LC30
	l8ui	a2, a2, 0
	beqz.n	a2, .L28
	.loc 1 175 0 discriminator 1
	call8	esp_log_timestamp
.LVL62:
	l32r	a11, .LC27
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC32
	movi.n	a10, 1
	call8	esp_log_write
.LVL63:
	.loc 1 176 0 discriminator 1
	movi	a2, 0x103
	retw.n
.L28:
	.loc 1 179 0
	movi.n	a10, 1
	call8	btc_main_get_future_p
.LVL64:
	mov.n	a2, a10
.LVL65:
	.loc 1 180 0
	call8	future_new
.LVL66:
	s32i.n	a10, a2, 0
	.loc 1 181 0
	bnez.n	a10, .L29
	.loc 1 182 0 discriminator 1
	call8	esp_log_timestamp
.LVL67:
	l32r	a11, .LC27
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC34
	movi.n	a10, 1
	call8	esp_log_write
.LVL68:
	.loc 1 183 0 discriminator 1
	movi	a2, 0x101
.LVL69:
	retw.n
.LVL70:
.L29:
	.loc 1 186 0
	movi.n	a8, 0
	s8i	a8, sp, 0
	.loc 1 187 0
	s8i	a8, sp, 2
	.loc 1 188 0
	movi.n	a8, 1
	s8i	a8, sp, 3
	.loc 1 190 0
	movi.n	a13, 0
	mov.n	a12, a13
	mov.n	a11, a13
	mov.n	a10, sp
	call8	btc_transfer_context
.LVL71:
	beqz.n	a10, .L30
	.loc 1 191 0 discriminator 1
	call8	esp_log_timestamp
.LVL72:
	l32r	a11, .LC27
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC34
	movi.n	a10, 1
	call8	esp_log_write
.LVL73:
	.loc 1 192 0 discriminator 1
	movi.n	a2, -1
.LVL74:
	retw.n
.LVL75:
.L30:
	.loc 1 195 0
	l32i.n	a10, a2, 0
	call8	future_await
.LVL76:
	bnez.n	a10, .L31
	.loc 1 196 0 discriminator 1
	call8	esp_log_timestamp
.LVL77:
	l32r	a11, .LC27
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC34
	movi.n	a10, 1
	call8	esp_log_write
.LVL78:
	.loc 1 197 0 discriminator 1
	movi.n	a2, -1
.LVL79:
	retw.n
.LVL80:
.L31:
	.loc 1 200 0
	call8	btc_deinit
.LVL81:
	.loc 1 202 0
	movi.n	a8, 0
	l32r	a2, .LC26
.LVL82:
	s8i	a8, a2, 0
	.loc 1 204 0
	movi.n	a2, 0
	.loc 1 205 0
	retw.n
.LFE30:
	.size	esp_bluedroid_deinit, .-esp_bluedroid_deinit
	.section	.bss.bd_already_init,"aw",@nobits
	.type	bd_already_init, @object
	.size	bd_already_init, 1
bd_already_init:
	.zero	1
	.section	.bss.bd_already_enable,"aw",@nobits
	.type	bd_already_enable, @object
	.size	bd_already_enable, 1
bd_already_enable:
	.zero	1
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
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI1-.LFB27
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI2-.LFB28
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI3-.LFB29
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI4-.LFB30
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE8:
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_err.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/api/include/api/esp_bt_main.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/bt_types.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/log/include/esp_log.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/common/include/common/bt_defs.h"
	.file 9 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/queue.h"
	.file 10 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/btc/include/btc/btc_task.h"
	.file 11 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/semphr.h"
	.file 12 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/osi/include/osi/semaphore.h"
	.file 13 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/osi/include/osi/future.h"
	.file 14 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
	.file 15 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/btc/include/btc/btc_main.h"
	.file 16 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/include/esp_bt.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xbcf
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF163
	.byte	0xc
	.4byte	.LASF164
	.4byte	.LASF165
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x2
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
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x19
	.4byte	0x57
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x1a
	.4byte	0x69
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x3
	.byte	0x15
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x3
	.byte	0x2c
	.4byte	0x4c
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x2d
	.4byte	0x5e
	.uleb128 0x5
	.byte	0x4
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
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x4
	.byte	0x18
	.4byte	0x89
	.uleb128 0x6
	.byte	0x4
	.4byte	0x69
	.byte	0x5
	.byte	0x1b
	.4byte	0xe7
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF20
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x5
	.byte	0x1f
	.4byte	0xc8
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x6
	.byte	0x21
	.4byte	0x7e
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x6
	.byte	0x23
	.4byte	0x94
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF24
	.uleb128 0x8
	.4byte	0xf2
	.4byte	0x11f
	.uleb128 0x9
	.4byte	0xa8
	.byte	0x5
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x69
	.byte	0x7
	.byte	0x1f
	.4byte	0x150
	.uleb128 0x7
	.4byte	.LASF25
	.byte	0
	.uleb128 0x7
	.4byte	.LASF26
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF27
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF28
	.byte	0x3
	.uleb128 0x7
	.4byte	.LASF29
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF30
	.byte	0x5
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x69
	.byte	0x8
	.byte	0x48
	.4byte	0x1c9
	.uleb128 0x7
	.4byte	.LASF31
	.byte	0
	.uleb128 0x7
	.4byte	.LASF32
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF33
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF34
	.byte	0x3
	.uleb128 0x7
	.4byte	.LASF35
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF36
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF37
	.byte	0x6
	.uleb128 0x7
	.4byte	.LASF38
	.byte	0x7
	.uleb128 0x7
	.4byte	.LASF39
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF40
	.byte	0x9
	.uleb128 0x7
	.4byte	.LASF41
	.byte	0xa
	.uleb128 0x7
	.4byte	.LASF42
	.byte	0xb
	.uleb128 0x7
	.4byte	.LASF43
	.byte	0xc
	.uleb128 0x7
	.4byte	.LASF44
	.byte	0xd
	.uleb128 0x7
	.4byte	.LASF45
	.byte	0xe
	.uleb128 0x7
	.4byte	.LASF46
	.byte	0xf
	.uleb128 0x7
	.4byte	.LASF47
	.byte	0x10
	.uleb128 0x7
	.4byte	.LASF48
	.byte	0x11
	.byte	0
	.uleb128 0x3
	.4byte	.LASF49
	.byte	0x9
	.byte	0x58
	.4byte	0x9f
	.uleb128 0xa
	.4byte	.LASF72
	.byte	0x8
	.byte	0xa
	.byte	0x17
	.4byte	0x21d
	.uleb128 0xb
	.string	"sig"
	.byte	0xa
	.byte	0x18
	.4byte	0x7e
	.byte	0
	.uleb128 0xb
	.string	"aid"
	.byte	0xa
	.byte	0x19
	.4byte	0x7e
	.byte	0x1
	.uleb128 0xb
	.string	"pid"
	.byte	0xa
	.byte	0x1a
	.4byte	0x7e
	.byte	0x2
	.uleb128 0xb
	.string	"act"
	.byte	0xa
	.byte	0x1b
	.4byte	0x7e
	.byte	0x3
	.uleb128 0xb
	.string	"arg"
	.byte	0xa
	.byte	0x1c
	.4byte	0x9f
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF50
	.byte	0xa
	.byte	0x1d
	.4byte	0x1d4
	.uleb128 0x6
	.byte	0x4
	.4byte	0x69
	.byte	0xa
	.byte	0x24
	.4byte	0x247
	.uleb128 0x7
	.4byte	.LASF51
	.byte	0
	.uleb128 0x7
	.4byte	.LASF52
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF53
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x69
	.byte	0xa
	.byte	0x2a
	.4byte	0x2b4
	.uleb128 0x7
	.4byte	.LASF54
	.byte	0
	.uleb128 0x7
	.4byte	.LASF55
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF56
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF57
	.byte	0x3
	.uleb128 0x7
	.4byte	.LASF58
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF59
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF60
	.byte	0x6
	.uleb128 0x7
	.4byte	.LASF61
	.byte	0x7
	.uleb128 0x7
	.4byte	.LASF62
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF63
	.byte	0x9
	.uleb128 0x7
	.4byte	.LASF64
	.byte	0xa
	.uleb128 0x7
	.4byte	.LASF65
	.byte	0xb
	.uleb128 0x7
	.4byte	.LASF66
	.byte	0xc
	.uleb128 0x7
	.4byte	.LASF67
	.byte	0xd
	.uleb128 0x7
	.4byte	.LASF68
	.byte	0xe
	.uleb128 0x7
	.4byte	.LASF69
	.byte	0xf
	.byte	0
	.uleb128 0x3
	.4byte	.LASF70
	.byte	0xb
	.byte	0x4f
	.4byte	0x1c9
	.uleb128 0x3
	.4byte	.LASF71
	.byte	0xc
	.byte	0x1d
	.4byte	0x2b4
	.uleb128 0xa
	.4byte	.LASF73
	.byte	0xc
	.byte	0xd
	.byte	0x18
	.4byte	0x2fb
	.uleb128 0xc
	.4byte	.LASF74
	.byte	0xd
	.byte	0x19
	.4byte	0x108
	.byte	0
	.uleb128 0xc
	.4byte	.LASF75
	.byte	0xd
	.byte	0x1a
	.4byte	0x2bf
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF76
	.byte	0xd
	.byte	0x1b
	.4byte	0x9f
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF77
	.byte	0xd
	.byte	0x1d
	.4byte	0x2ca
	.uleb128 0xd
	.byte	0x4
	.4byte	0x69
	.byte	0xe
	.2byte	0x1c0
	.4byte	0x42e
	.uleb128 0x7
	.4byte	.LASF78
	.byte	0
	.uleb128 0x7
	.4byte	.LASF79
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF80
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF81
	.byte	0x3
	.uleb128 0x7
	.4byte	.LASF82
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF83
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF84
	.byte	0x6
	.uleb128 0x7
	.4byte	.LASF85
	.byte	0x7
	.uleb128 0x7
	.4byte	.LASF86
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF87
	.byte	0x9
	.uleb128 0x7
	.4byte	.LASF88
	.byte	0xa
	.uleb128 0x7
	.4byte	.LASF89
	.byte	0xb
	.uleb128 0x7
	.4byte	.LASF90
	.byte	0xc
	.uleb128 0x7
	.4byte	.LASF91
	.byte	0xd
	.uleb128 0x7
	.4byte	.LASF92
	.byte	0xe
	.uleb128 0x7
	.4byte	.LASF93
	.byte	0xf
	.uleb128 0x7
	.4byte	.LASF94
	.byte	0x10
	.uleb128 0x7
	.4byte	.LASF95
	.byte	0x11
	.uleb128 0x7
	.4byte	.LASF96
	.byte	0x12
	.uleb128 0x7
	.4byte	.LASF97
	.byte	0x13
	.uleb128 0x7
	.4byte	.LASF98
	.byte	0x14
	.uleb128 0x7
	.4byte	.LASF99
	.byte	0x15
	.uleb128 0x7
	.4byte	.LASF100
	.byte	0x16
	.uleb128 0x7
	.4byte	.LASF101
	.byte	0x17
	.uleb128 0x7
	.4byte	.LASF102
	.byte	0x18
	.uleb128 0x7
	.4byte	.LASF103
	.byte	0x19
	.uleb128 0x7
	.4byte	.LASF104
	.byte	0x1a
	.uleb128 0x7
	.4byte	.LASF105
	.byte	0x1b
	.uleb128 0x7
	.4byte	.LASF106
	.byte	0x1c
	.uleb128 0x7
	.4byte	.LASF107
	.byte	0x1d
	.uleb128 0x7
	.4byte	.LASF108
	.byte	0x1e
	.uleb128 0x7
	.4byte	.LASF109
	.byte	0x1f
	.uleb128 0x7
	.4byte	.LASF110
	.byte	0x20
	.uleb128 0x7
	.4byte	.LASF111
	.byte	0x21
	.uleb128 0x7
	.4byte	.LASF112
	.byte	0x22
	.uleb128 0x7
	.4byte	.LASF113
	.byte	0x23
	.uleb128 0x7
	.4byte	.LASF114
	.byte	0x24
	.uleb128 0x7
	.4byte	.LASF115
	.byte	0x25
	.uleb128 0x7
	.4byte	.LASF116
	.byte	0x26
	.uleb128 0x7
	.4byte	.LASF117
	.byte	0x27
	.uleb128 0x7
	.4byte	.LASF118
	.byte	0x28
	.uleb128 0x7
	.4byte	.LASF119
	.byte	0x29
	.uleb128 0x7
	.4byte	.LASF120
	.byte	0x2a
	.uleb128 0x7
	.4byte	.LASF121
	.byte	0x2b
	.uleb128 0x7
	.4byte	.LASF122
	.byte	0x2c
	.uleb128 0x7
	.4byte	.LASF123
	.byte	0x2d
	.uleb128 0x7
	.4byte	.LASF124
	.byte	0x2e
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x69
	.byte	0xe
	.2byte	0x6ea
	.4byte	0x466
	.uleb128 0x7
	.4byte	.LASF125
	.byte	0
	.uleb128 0x7
	.4byte	.LASF126
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF127
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF128
	.byte	0x3
	.uleb128 0x7
	.4byte	.LASF129
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF130
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF131
	.byte	0x6
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x69
	.byte	0xf
	.byte	0x18
	.4byte	0x48b
	.uleb128 0x7
	.4byte	.LASF132
	.byte	0
	.uleb128 0x7
	.4byte	.LASF133
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF134
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF135
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x69
	.byte	0xf
	.byte	0x1f
	.4byte	0x4b6
	.uleb128 0x7
	.4byte	.LASF136
	.byte	0
	.uleb128 0x7
	.4byte	.LASF137
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF138
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF139
	.byte	0x3
	.uleb128 0x7
	.4byte	.LASF140
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x69
	.byte	0x10
	.byte	0x77
	.4byte	0x4db
	.uleb128 0x7
	.4byte	.LASF141
	.byte	0
	.uleb128 0x7
	.4byte	.LASF142
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF143
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF144
	.byte	0x3
	.byte	0
	.uleb128 0xe
	.4byte	.LASF166
	.byte	0x1
	.byte	0x1a
	.4byte	0xe7
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xf
	.4byte	.LASF146
	.byte	0x1
	.byte	0x27
	.4byte	0xbd
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x67e
	.uleb128 0x10
	.string	"msg"
	.byte	0x1
	.byte	0x29
	.4byte	0x21d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x11
	.4byte	.LASF145
	.byte	0x1
	.byte	0x2a
	.4byte	0x67e
	.4byte	.LLST0
	.uleb128 0x12
	.4byte	.LVL0
	.4byte	0xb6e
	.uleb128 0x13
	.4byte	.LVL1
	.4byte	0xb79
	.4byte	0x55d
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x12
	.4byte	.LVL2
	.4byte	0xb6e
	.uleb128 0x13
	.4byte	.LVL3
	.4byte	0xb79
	.4byte	0x594
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x13
	.4byte	.LVL4
	.4byte	0xb84
	.4byte	0x5a7
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x12
	.4byte	.LVL6
	.4byte	0xb8f
	.uleb128 0x12
	.4byte	.LVL7
	.4byte	0xb6e
	.uleb128 0x13
	.4byte	.LVL8
	.4byte	0xb79
	.4byte	0x5e7
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x13
	.4byte	.LVL11
	.4byte	0xb9a
	.4byte	0x60a
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
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
	.uleb128 0x12
	.4byte	.LVL12
	.4byte	0xb6e
	.uleb128 0x13
	.4byte	.LVL13
	.4byte	0xb79
	.4byte	0x641
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x12
	.4byte	.LVL16
	.4byte	0xba5
	.uleb128 0x12
	.4byte	.LVL17
	.4byte	0xb6e
	.uleb128 0x15
	.4byte	.LVL18
	.4byte	0xb79
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0
	.uleb128 0x16
	.byte	0x4
	.4byte	0x684
	.uleb128 0x16
	.byte	0x4
	.4byte	0x2fb
	.uleb128 0xf
	.4byte	.LASF147
	.byte	0x1
	.byte	0x50
	.4byte	0xbd
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7e1
	.uleb128 0x10
	.string	"msg"
	.byte	0x1
	.byte	0x52
	.4byte	0x21d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x11
	.4byte	.LASF145
	.byte	0x1
	.byte	0x53
	.4byte	0x67e
	.4byte	.LLST1
	.uleb128 0x12
	.4byte	.LVL22
	.4byte	0xb6e
	.uleb128 0x13
	.4byte	.LVL23
	.4byte	0xb79
	.4byte	0x6f7
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x13
	.4byte	.LVL24
	.4byte	0xb84
	.4byte	0x70a
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x12
	.4byte	.LVL26
	.4byte	0xb8f
	.uleb128 0x12
	.4byte	.LVL27
	.4byte	0xb6e
	.uleb128 0x13
	.4byte	.LVL28
	.4byte	0xb79
	.4byte	0x74a
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC16
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x13
	.4byte	.LVL31
	.4byte	0xb9a
	.4byte	0x76d
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
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
	.uleb128 0x12
	.4byte	.LVL32
	.4byte	0xb6e
	.uleb128 0x13
	.4byte	.LVL33
	.4byte	0xb79
	.4byte	0x7a4
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC16
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x12
	.4byte	.LVL36
	.4byte	0xba5
	.uleb128 0x12
	.4byte	.LVL37
	.4byte	0xb6e
	.uleb128 0x15
	.4byte	.LVL38
	.4byte	0xb79
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC16
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF148
	.byte	0x1
	.byte	0x74
	.4byte	0xbd
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x981
	.uleb128 0x10
	.string	"msg"
	.byte	0x1
	.byte	0x76
	.4byte	0x21d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x11
	.4byte	.LASF145
	.byte	0x1
	.byte	0x77
	.4byte	0x67e
	.4byte	.LLST2
	.uleb128 0x12
	.4byte	.LVL42
	.4byte	0xbb0
	.uleb128 0x12
	.4byte	.LVL43
	.4byte	0xb6e
	.uleb128 0x13
	.4byte	.LVL44
	.4byte	0xb79
	.4byte	0x857
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC19
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x12
	.4byte	.LVL45
	.4byte	0xb6e
	.uleb128 0x13
	.4byte	.LVL46
	.4byte	0xb79
	.4byte	0x88e
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC22
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x13
	.4byte	.LVL47
	.4byte	0xb84
	.4byte	0x8a1
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x12
	.4byte	.LVL49
	.4byte	0xb8f
	.uleb128 0x12
	.4byte	.LVL50
	.4byte	0xb6e
	.uleb128 0x13
	.4byte	.LVL51
	.4byte	0xb79
	.4byte	0x8e1
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC24
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x12
	.4byte	.LVL52
	.4byte	0xbbc
	.uleb128 0x13
	.4byte	.LVL53
	.4byte	0xb9a
	.4byte	0x90d
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
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
	.uleb128 0x12
	.4byte	.LVL54
	.4byte	0xb6e
	.uleb128 0x13
	.4byte	.LVL55
	.4byte	0xb79
	.4byte	0x944
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC24
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x12
	.4byte	.LVL56
	.4byte	0xba5
	.uleb128 0x12
	.4byte	.LVL57
	.4byte	0xb6e
	.uleb128 0x15
	.4byte	.LVL58
	.4byte	0xb79
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC24
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF149
	.byte	0x1
	.byte	0xa4
	.4byte	0xbd
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb1c
	.uleb128 0x10
	.string	"msg"
	.byte	0x1
	.byte	0xa6
	.4byte	0x21d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x11
	.4byte	.LASF145
	.byte	0x1
	.byte	0xa7
	.4byte	0x67e
	.4byte	.LLST3
	.uleb128 0x12
	.4byte	.LVL60
	.4byte	0xb6e
	.uleb128 0x13
	.4byte	.LVL61
	.4byte	0xb79
	.4byte	0x9ee
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC28
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x12
	.4byte	.LVL62
	.4byte	0xb6e
	.uleb128 0x13
	.4byte	.LVL63
	.4byte	0xb79
	.4byte	0xa25
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC31
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x13
	.4byte	.LVL64
	.4byte	0xb84
	.4byte	0xa38
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x12
	.4byte	.LVL66
	.4byte	0xb8f
	.uleb128 0x12
	.4byte	.LVL67
	.4byte	0xb6e
	.uleb128 0x13
	.4byte	.LVL68
	.4byte	0xb79
	.4byte	0xa78
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC33
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x13
	.4byte	.LVL71
	.4byte	0xb9a
	.4byte	0xa9b
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
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
	.uleb128 0x12
	.4byte	.LVL72
	.4byte	0xb6e
	.uleb128 0x13
	.4byte	.LVL73
	.4byte	0xb79
	.4byte	0xad2
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC33
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x12
	.4byte	.LVL76
	.4byte	0xba5
	.uleb128 0x12
	.4byte	.LVL77
	.4byte	0xb6e
	.uleb128 0x13
	.4byte	.LVL78
	.4byte	0xb79
	.4byte	0xb12
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC33
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x12
	.4byte	.LVL81
	.4byte	0xbc7
	.byte	0
	.uleb128 0x17
	.4byte	.LASF150
	.byte	0x6
	.2byte	0x2cc
	.4byte	0xb2f
	.byte	0x6
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.uleb128 0x18
	.4byte	0x10f
	.uleb128 0x17
	.4byte	.LASF151
	.byte	0x6
	.2byte	0x2cd
	.4byte	0xb47
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	0x10f
	.uleb128 0x19
	.4byte	.LASF152
	.byte	0x1
	.byte	0x17
	.4byte	0x108
	.uleb128 0x5
	.byte	0x3
	.4byte	bd_already_enable
	.uleb128 0x19
	.4byte	.LASF153
	.byte	0x1
	.byte	0x18
	.4byte	0x108
	.uleb128 0x5
	.byte	0x3
	.4byte	bd_already_init
	.uleb128 0x1a
	.4byte	.LASF154
	.4byte	.LASF154
	.byte	0x7
	.byte	0x57
	.uleb128 0x1a
	.4byte	.LASF155
	.4byte	.LASF155
	.byte	0x7
	.byte	0x6b
	.uleb128 0x1a
	.4byte	.LASF156
	.4byte	.LASF156
	.byte	0xf
	.byte	0x27
	.uleb128 0x1a
	.4byte	.LASF157
	.4byte	.LASF157
	.byte	0xd
	.byte	0x23
	.uleb128 0x1a
	.4byte	.LASF158
	.4byte	.LASF158
	.byte	0xa
	.byte	0x4c
	.uleb128 0x1a
	.4byte	.LASF159
	.4byte	.LASF159
	.byte	0xd
	.byte	0x31
	.uleb128 0x1b
	.4byte	.LASF160
	.4byte	.LASF160
	.byte	0x10
	.2byte	0x10e
	.uleb128 0x1a
	.4byte	.LASF161
	.4byte	.LASF161
	.byte	0xa
	.byte	0x4e
	.uleb128 0x1a
	.4byte	.LASF162
	.4byte	.LASF162
	.byte	0xa
	.byte	0x4f
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
	.uleb128 0x7
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x1b
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
	.4byte	.LVL5
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL10
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL15
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL25
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL30
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL35
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL48
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL65
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL70
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL75
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL80
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x52
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
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF79:
	.string	"BTM_EIR_UUID_SERVCLASS_SERIAL_PORT"
.LASF73:
	.string	"future"
.LASF41:
	.string	"BT_STATUS_RMT_DEV_DOWN"
.LASF109:
	.string	"BTM_EIR_UUID_SERVCLASS_CABLE_REPLACEMENT"
.LASF50:
	.string	"btc_msg_t"
.LASF17:
	.string	"esp_err_t"
.LASF4:
	.string	"__uint8_t"
.LASF54:
	.string	"BTC_PID_MAIN_INIT"
.LASF152:
	.string	"bd_already_enable"
.LASF138:
	.string	"BTC_MAIN_ENABLE_FUTURE"
.LASF114:
	.string	"BTM_EIR_UUID_SERVCLASS_PBAP_PSE"
.LASF136:
	.string	"BTC_MAIN_INIT_FUTURE"
.LASF48:
	.string	"BT_STATUS_MEMORY_FULL"
.LASF49:
	.string	"QueueHandle_t"
.LASF117:
	.string	"BTM_EIR_UUID_SERVCLASS_PNP_INFORMATION"
.LASF63:
	.string	"BTC_PID_ALARM"
.LASF29:
	.string	"ESP_LOG_DEBUG"
.LASF8:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF18:
	.string	"ESP_BLUEDROID_STATUS_UNINITIALIZED"
.LASF91:
	.string	"BTM_EIR_UUID_SERVCLASS_AV_REMOTE_CONTROL"
.LASF9:
	.string	"long long unsigned int"
.LASF148:
	.string	"esp_bluedroid_init"
.LASF112:
	.string	"BTM_EIR_UUID_SERVCLASS_SAP"
.LASF107:
	.string	"BTM_EIR_UUID_SERVCLASS_PRINTING_STATUS"
.LASF58:
	.string	"BTC_PID_GAP_BLE"
.LASF68:
	.string	"BTC_PID_SPP"
.LASF80:
	.string	"BTM_EIR_UUID_SERVCLASS_LAN_ACCESS_USING_PPP"
.LASF149:
	.string	"esp_bluedroid_deinit"
.LASF40:
	.string	"BT_STATUS_AUTH_FAILURE"
.LASF13:
	.string	"long int"
.LASF64:
	.string	"BTC_PID_GAP_BT"
.LASF158:
	.string	"btc_transfer_context"
.LASF155:
	.string	"esp_log_write"
.LASF36:
	.string	"BT_STATUS_DONE"
.LASF90:
	.string	"BTM_EIR_UUID_SERVCLASS_AV_REM_CTRL_TARGET"
.LASF46:
	.string	"BT_STATUS_PARAM_OUT_OF_RANGE"
.LASF126:
	.string	"BTM_PM_STS_HOLD"
.LASF141:
	.string	"ESP_BT_CONTROLLER_STATUS_IDLE"
.LASF147:
	.string	"esp_bluedroid_disable"
.LASF104:
	.string	"BTM_EIR_UUID_SERVCLASS_AG_HANDSFREE"
.LASF74:
	.string	"ready_can_be_called"
.LASF106:
	.string	"BTM_EIR_UUID_SERVCLASS_BASIC_PRINTING"
.LASF42:
	.string	"BT_STATUS_AUTH_REJECTED"
.LASF133:
	.string	"BTC_MAIN_ACT_DEINIT"
.LASF62:
	.string	"BTC_PID_DM_SEC"
.LASF119:
	.string	"BTM_EIR_UUID_SERVCLASS_VIDEO_SINK"
.LASF43:
	.string	"BT_STATUS_INVALID_STATIC_RAND_ADDR"
.LASF129:
	.string	"BTM_PM_STS_SSR"
.LASF105:
	.string	"BTM_EIR_UUID_SERVCLASS_DIR_PRT_REF_OBJ_SERVICE"
.LASF66:
	.string	"BTC_PID_A2DP"
.LASF34:
	.string	"BT_STATUS_NOMEM"
.LASF124:
	.string	"BTM_EIR_MAX_SERVICES"
.LASF151:
	.string	"bd_addr_null"
.LASF161:
	.string	"btc_init"
.LASF7:
	.string	"unsigned int"
.LASF84:
	.string	"BTM_EIR_UUID_SERVCLASS_OBEX_FILE_TRANSFER"
.LASF159:
	.string	"future_await"
.LASF81:
	.string	"BTM_EIR_UUID_SERVCLASS_DIALUP_NETWORKING"
.LASF15:
	.string	"long unsigned int"
.LASF33:
	.string	"BT_STATUS_NOT_READY"
.LASF139:
	.string	"BTC_MAIN_DISABLE_FUTURE"
.LASF125:
	.string	"BTM_PM_STS_ACTIVE"
.LASF115:
	.string	"BTM_EIR_UUID_SERVCLASS_PHONE_ACCESS"
.LASF60:
	.string	"BTC_PID_SPPLIKE"
.LASF3:
	.string	"short unsigned int"
.LASF97:
	.string	"BTM_EIR_UUID_SERVCLASS_GN"
.LASF111:
	.string	"BTM_EIR_UUID_SERVCLASS_HCRP_SCAN"
.LASF132:
	.string	"BTC_MAIN_ACT_INIT"
.LASF67:
	.string	"BTC_PID_AVRC"
.LASF59:
	.string	"BTC_PID_BLE_HID"
.LASF27:
	.string	"ESP_LOG_WARN"
.LASF135:
	.string	"BTC_MAIN_ACT_DISABLE"
.LASF121:
	.string	"BTM_EIR_UUID_SERVCLASS_MESSAGE_NOTIFICATION"
.LASF32:
	.string	"BT_STATUS_FAIL"
.LASF2:
	.string	"short int"
.LASF55:
	.string	"BTC_PID_DEV"
.LASF134:
	.string	"BTC_MAIN_ACT_ENABLE"
.LASF20:
	.string	"ESP_BLUEDROID_STATUS_ENABLED"
.LASF53:
	.string	"BTC_SIG_NUM"
.LASF51:
	.string	"BTC_SIG_API_CALL"
.LASF28:
	.string	"ESP_LOG_INFO"
.LASF131:
	.string	"BTM_PM_STS_ERROR"
.LASF72:
	.string	"btc_msg"
.LASF45:
	.string	"BT_STATUS_UNACCEPT_CONN_INTERVAL"
.LASF14:
	.string	"sizetype"
.LASF96:
	.string	"BTM_EIR_UUID_SERVCLASS_NAP"
.LASF23:
	.string	"UINT32"
.LASF37:
	.string	"BT_STATUS_UNSUPPORTED"
.LASF157:
	.string	"future_new"
.LASF39:
	.string	"BT_STATUS_UNHANDLED"
.LASF120:
	.string	"BTM_EIR_UUID_SERVCLASS_MESSAGE_ACCESS"
.LASF61:
	.string	"BTC_PID_BLUFI"
.LASF52:
	.string	"BTC_SIG_API_CB"
.LASF102:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING_REF_OBJECTS"
.LASF86:
	.string	"BTM_EIR_UUID_SERVCLASS_HEADSET"
.LASF87:
	.string	"BTM_EIR_UUID_SERVCLASS_CORDLESS_TELEPHONY"
.LASF100:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING_RESPONDER"
.LASF31:
	.string	"BT_STATUS_SUCCESS"
.LASF144:
	.string	"ESP_BT_CONTROLLER_STATUS_NUM"
.LASF35:
	.string	"BT_STATUS_BUSY"
.LASF99:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING"
.LASF98:
	.string	"BTM_EIR_UUID_SERVCLASS_DIRECT_PRINTING"
.LASF101:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING_AUTO_ARCHIVE"
.LASF140:
	.string	"BTC_MAIN_FUTURE_NUM"
.LASF75:
	.string	"semaphore"
.LASF24:
	.string	"_Bool"
.LASF11:
	.string	"int32_t"
.LASF1:
	.string	"unsigned char"
.LASF145:
	.string	"future_p"
.LASF77:
	.string	"future_t"
.LASF82:
	.string	"BTM_EIR_UUID_SERVCLASS_IRMC_SYNC"
.LASF153:
	.string	"bd_already_init"
.LASF146:
	.string	"esp_bluedroid_enable"
.LASF154:
	.string	"esp_log_timestamp"
.LASF26:
	.string	"ESP_LOG_ERROR"
.LASF127:
	.string	"BTM_PM_STS_SNIFF"
.LASF128:
	.string	"BTM_PM_STS_PARK"
.LASF137:
	.string	"BTC_MAIN_DEINIT_FUTURE"
.LASF88:
	.string	"BTM_EIR_UUID_SERVCLASS_AUDIO_SOURCE"
.LASF83:
	.string	"BTM_EIR_UUID_SERVCLASS_OBEX_OBJECT_PUSH"
.LASF69:
	.string	"BTC_PID_NUM"
.LASF57:
	.string	"BTC_PID_GATT_COMMON"
.LASF44:
	.string	"BT_STATUS_PENDING"
.LASF70:
	.string	"SemaphoreHandle_t"
.LASF16:
	.string	"char"
.LASF30:
	.string	"ESP_LOG_VERBOSE"
.LASF21:
	.string	"esp_bluedroid_status_t"
.LASF19:
	.string	"ESP_BLUEDROID_STATUS_INITIALIZED"
.LASF142:
	.string	"ESP_BT_CONTROLLER_STATUS_INITED"
.LASF25:
	.string	"ESP_LOG_NONE"
.LASF94:
	.string	"BTM_EIR_UUID_SERVCLASS_HEADSET_AUDIO_GATEWAY"
.LASF162:
	.string	"btc_deinit"
.LASF5:
	.string	"__int32_t"
.LASF6:
	.string	"__uint32_t"
.LASF166:
	.string	"esp_bluedroid_get_status"
.LASF110:
	.string	"BTM_EIR_UUID_SERVCLASS_HCRP_PRINT"
.LASF85:
	.string	"BTM_EIR_UUID_SERVCLASS_IRMC_SYNC_COMMAND"
.LASF164:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/api/esp_bt_main.c"
.LASF122:
	.string	"BTM_EIR_UUID_SERVCLASS_HDP_SOURCE"
.LASF12:
	.string	"uint32_t"
.LASF95:
	.string	"BTM_EIR_UUID_SERVCLASS_PANU"
.LASF92:
	.string	"BTM_EIR_UUID_SERVCLASS_INTERCOM"
.LASF65:
	.string	"BTC_PID_PRF_QUE"
.LASF38:
	.string	"BT_STATUS_PARM_INVALID"
.LASF22:
	.string	"UINT8"
.LASF116:
	.string	"BTM_EIR_UUID_SERVCLASS_HEADSET_HS"
.LASF10:
	.string	"uint8_t"
.LASF150:
	.string	"bd_addr_any"
.LASF71:
	.string	"osi_sem_t"
.LASF130:
	.string	"BTM_PM_STS_PENDING"
.LASF160:
	.string	"esp_bt_controller_get_status"
.LASF89:
	.string	"BTM_EIR_UUID_SERVCLASS_AUDIO_SINK"
.LASF103:
	.string	"BTM_EIR_UUID_SERVCLASS_HF_HANDSFREE"
.LASF78:
	.string	"BTM_EIR_UUID_SERVCLASS_SERVICE_DISCOVERY_SERVER"
.LASF165:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\bt"
.LASF163:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF123:
	.string	"BTM_EIR_UUID_SERVCLASS_HDP_SINK"
.LASF108:
	.string	"BTM_EIR_UUID_SERVCLASS_HUMAN_INTERFACE"
.LASF56:
	.string	"BTC_PID_GATTS"
.LASF156:
	.string	"btc_main_get_future_p"
.LASF47:
	.string	"BT_STATUS_TIMEOUT"
.LASF93:
	.string	"BTM_EIR_UUID_SERVCLASS_FAX"
.LASF76:
	.string	"result"
.LASF113:
	.string	"BTM_EIR_UUID_SERVCLASS_PBAP_PCE"
.LASF143:
	.string	"ESP_BT_CONTROLLER_STATUS_ENABLED"
.LASF118:
	.string	"BTM_EIR_UUID_SERVCLASS_VIDEO_SOURCE"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
