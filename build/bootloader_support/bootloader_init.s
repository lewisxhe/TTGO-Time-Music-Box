	.file	"bootloader_init.c"
	.text
.Ltext0:
	.section	.text.wdt_reset_cpu0_info_enable,"ax",@progbits
	.literal_position
	.literal .LC1, 1072694336
	.align	4
	.type	wdt_reset_cpu0_info_enable, @function
wdt_reset_cpu0_info_enable:
.LFB28:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/bootloader_init.c"
	.loc 1 445 0
	entry	sp, 32
.LCFI0:
.LVL0:
.LBB76:
.LBB77:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/dport_access.h"
	.loc 2 79 0
	l32r	a2, .LC1
	mov.n	a10, a2
	call8	esp_dport_access_reg_read
.LVL1:
.LBE77:
.LBE76:
	.loc 1 447 0
	movi	a8, 0x101
	or	a10, a10, a8
	memw
	s32i.n	a10, a2, 0
.LVL2:
.LBB78:
.LBB79:
	.loc 2 79 0
	mov.n	a10, a2
	call8	esp_dport_access_reg_read
.LVL3:
.LBE79:
.LBE78:
	.loc 1 448 0
	movi.n	a8, -2
	and	a10, a10, a8
	memw
	s32i.n	a10, a2, 0
	retw.n
.LFE28:
	.size	wdt_reset_cpu0_info_enable, .-wdt_reset_cpu0_info_enable
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC2:
	.string	"APP"
	.align	4
.LC4:
	.string	"PRO"
	.align	4
.LC24:
	.string	"boot"
	.align	4
.LC26:
	.string	"\033[0;33mW (%d) %s: WDT reset info: %s CPU PC=0x%x (waiti mode)\033[0m\n"
	.align	4
.LC28:
	.string	"\033[0;33mW (%d) %s: WDT reset info: %s CPU PC=0x%x\033[0m\n"
	.section	.text.wdt_reset_info_dump,"ax",@progbits
	.literal_position
	.literal .LC3, .LC2
	.literal .LC5, .LC4
	.literal .LC6, 1072694340
	.literal .LC7, 1072694344
	.literal .LC8, 1072694348
	.literal .LC9, 1072694352
	.literal .LC10, 1072694356
	.literal .LC11, 1072694360
	.literal .LC12, 1072694364
	.literal .LC13, 1072694368
	.literal .LC14, 1072694372
	.literal .LC15, 1072694380
	.literal .LC16, 1072694384
	.literal .LC17, 1072694388
	.literal .LC18, 1072694392
	.literal .LC19, 1072694396
	.literal .LC20, 1072694400
	.literal .LC21, 1072694404
	.literal .LC22, 1072694408
	.literal .LC23, 1072694412
	.literal .LC25, .LC24
	.literal .LC27, .LC26
	.literal .LC29, .LC28
	.align	4
	.type	wdt_reset_info_dump, @function
wdt_reset_info_dump:
.LFB29:
	.loc 1 452 0
.LVL4:
	entry	sp, 48
.LCFI1:
.LVL5:
	.loc 1 455 0
	beqz.n	a2, .L8
	l32r	a4, .LC3
	j	.L3
.L8:
	l32r	a4, .LC5
.L3:
.LVL6:
	.loc 1 457 0 discriminator 4
	bnez.n	a2, .L4
.LVL7:
.LBB80:
.LBB81:
	.loc 2 79 0
	l32r	a10, .LC6
	call8	esp_dport_access_reg_read
.LVL8:
.LBE81:
.LBE80:
.LBB82:
.LBB83:
	l32r	a10, .LC7
	call8	esp_dport_access_reg_read
.LVL9:
.LBE83:
.LBE82:
.LBB84:
.LBB85:
	l32r	a10, .LC8
	call8	esp_dport_access_reg_read
.LVL10:
	mov.n	a2, a10
.LVL11:
.LBE85:
.LBE84:
.LBB86:
.LBB87:
	l32r	a10, .LC9
	call8	esp_dport_access_reg_read
.LVL12:
	mov.n	a3, a10
.LVL13:
.LBE87:
.LBE86:
.LBB88:
.LBB89:
	l32r	a10, .LC10
	call8	esp_dport_access_reg_read
.LVL14:
.LBE89:
.LBE88:
.LBB90:
.LBB91:
	l32r	a10, .LC11
	call8	esp_dport_access_reg_read
.LVL15:
	mov.n	a5, a10
.LVL16:
.LBE91:
.LBE90:
.LBB92:
.LBB93:
	l32r	a10, .LC12
	call8	esp_dport_access_reg_read
.LVL17:
.LBE93:
.LBE92:
.LBB94:
.LBB95:
	l32r	a10, .LC13
	call8	esp_dport_access_reg_read
.LVL18:
.LBE95:
.LBE94:
.LBB96:
.LBB97:
	l32r	a10, .LC14
	call8	esp_dport_access_reg_read
.LVL19:
.LBE97:
.LBE96:
	j	.L5
.LVL20:
.L4:
.LBB98:
.LBB99:
	l32r	a10, .LC15
	call8	esp_dport_access_reg_read
.LVL21:
.LBE99:
.LBE98:
.LBB100:
.LBB101:
	l32r	a10, .LC16
	call8	esp_dport_access_reg_read
.LVL22:
.LBE101:
.LBE100:
.LBB102:
.LBB103:
	l32r	a10, .LC17
	call8	esp_dport_access_reg_read
.LVL23:
	mov.n	a2, a10
.LVL24:
.LBE103:
.LBE102:
.LBB104:
.LBB105:
	l32r	a10, .LC18
	call8	esp_dport_access_reg_read
.LVL25:
	mov.n	a3, a10
.LVL26:
.LBE105:
.LBE104:
.LBB106:
.LBB107:
	l32r	a10, .LC19
	call8	esp_dport_access_reg_read
.LVL27:
.LBE107:
.LBE106:
.LBB108:
.LBB109:
	l32r	a10, .LC20
	call8	esp_dport_access_reg_read
.LVL28:
	mov.n	a5, a10
.LVL29:
.LBE109:
.LBE108:
.LBB110:
.LBB111:
	l32r	a10, .LC21
	call8	esp_dport_access_reg_read
.LVL30:
.LBE111:
.LBE110:
.LBB112:
.LBB113:
	l32r	a10, .LC22
	call8	esp_dport_access_reg_read
.LVL31:
.LBE113:
.LBE112:
.LBB114:
.LBB115:
	l32r	a10, .LC23
	call8	esp_dport_access_reg_read
.LVL32:
.L5:
.LBE115:
.LBE114:
	.loc 1 479 0
	extui	a2, a2, 0, 8
.LVL33:
	bnez.n	a2, .L6
	.loc 1 480 0 discriminator 1
	extui	a3, a3, 0, 6
.LVL34:
	.loc 1 479 0 discriminator 1
	movi.n	a2, 0x28
	bne	a3, a2, .L6
	.loc 1 481 0 discriminator 4
	call8	esp_log_timestamp
.LVL35:
	l32r	a11, .LC25
	s32i.n	a5, sp, 0
	mov.n	a15, a4
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC27
	movi.n	a10, 2
	call8	esp_log_write
.LVL36:
	retw.n
.L6:
	.loc 1 483 0 discriminator 4
	call8	esp_log_timestamp
.LVL37:
	l32r	a11, .LC25
	s32i.n	a5, sp, 0
	mov.n	a15, a4
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC29
	movi.n	a10, 2
	call8	esp_log_write
.LVL38:
	retw.n
.LFE29:
	.size	wdt_reset_info_dump, .-wdt_reset_info_dump
	.section	.rodata.str1.4
	.align	4
.LC30:
	.string	"26.7MHz"
	.align	4
.LC32:
	.string	"40MHz"
	.align	4
.LC34:
	.string	"20MHz"
	.align	4
.LC36:
	.string	"80MHz"
	.align	4
.LC38:
	.string	"QOUT"
	.align	4
.LC40:
	.string	"QIO"
	.align	4
.LC42:
	.string	"SLOW READ"
	.align	4
.LC44:
	.string	"FAST READ"
	.align	4
.LC46:
	.string	"DOUT"
	.align	4
.LC48:
	.string	"DIO"
	.align	4
.LC50:
	.string	"2MB"
	.align	4
.LC52:
	.string	"1MB"
	.align	4
.LC54:
	.string	"4MB"
	.align	4
.LC56:
	.string	"16MB"
	.align	4
.LC58:
	.string	"8MB"
	.align	4
.LC61:
	.string	"\033[0;32mI (%d) %s: SPI Speed      : %s\033[0m\n"
	.align	4
.LC69:
	.string	"\033[0;32mI (%d) %s: SPI Mode       : %s\033[0m\n"
	.align	4
.LC71:
	.string	"\033[0;32mI (%d) %s: SPI Flash Size : %s\033[0m\n"
	.section	.text.print_flash_info,"ax",@progbits
	.literal_position
	.literal .LC31, .LC30
	.literal .LC33, .LC32
	.literal .LC35, .LC34
	.literal .LC37, .LC36
	.literal .LC39, .LC38
	.literal .LC41, .LC40
	.literal .LC43, .LC42
	.literal .LC45, .LC44
	.literal .LC47, .LC46
	.literal .LC49, .LC48
	.literal .LC51, .LC50
	.literal .LC53, .LC52
	.literal .LC55, .LC54
	.literal .LC57, .LC56
	.literal .LC59, .LC58
	.literal .LC60, .LC24
	.literal .LC62, .LC61
	.literal .LC63, 1072967688
	.literal .LC70, .LC69
	.literal .LC72, .LC71
	.align	4
	.type	print_flash_info, @function
print_flash_info:
.LFB24:
	.loc 1 204 0
.LVL39:
	entry	sp, 32
.LCFI2:
	.loc 1 214 0
	l8ui	a8, a2, 3
	extui	a8, a8, 0, 4
	beqi	a8, 1, .L22
	beqz.n	a8, .L12
	beqi	a8, 2, .L13
	movi.n	a3, 0xf
	beq	a8, a3, .L14
	j	.L29
.L12:
	.loc 1 216 0
	l32r	a3, .LC33
	j	.L11
.L13:
.LVL40:
	.loc 1 222 0
	l32r	a3, .LC35
	.loc 1 223 0
	j	.L11
.LVL41:
.L14:
	.loc 1 225 0
	l32r	a3, .LC37
	.loc 1 226 0
	j	.L11
.LVL42:
.L29:
	.loc 1 228 0
	l32r	a3, .LC35
	.loc 1 229 0
	j	.L11
.LVL43:
.L22:
	.loc 1 219 0
	l32r	a3, .LC31
.L11:
.LVL44:
	.loc 1 231 0 discriminator 9
	call8	esp_log_timestamp
.LVL45:
	l32r	a11, .LC60
	mov.n	a15, a3
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC62
	movi.n	a10, 3
	call8	esp_log_write
.LVL46:
.LBB116:
	.loc 1 235 0 discriminator 9
	l32r	a3, .LC63
.LVL47:
	memw
	l32i.n	a8, a3, 0
.LVL48:
.LBE116:
	.loc 1 236 0 discriminator 9
	bbsi	a8, 24, .L23
	.loc 1 238 0
	bbsi	a8, 20, .L24
	.loc 1 240 0
	bbsi	a8, 23, .L25
	.loc 1 242 0
	bbsi	a8, 14, .L26
	.loc 1 244 0
	bbci	a8, 13, .L27
	.loc 1 245 0
	l32r	a3, .LC45
	j	.L15
.L23:
	.loc 1 237 0
	l32r	a3, .LC41
	j	.L15
.L24:
	.loc 1 239 0
	l32r	a3, .LC39
	j	.L15
.L25:
	.loc 1 241 0
	l32r	a3, .LC49
	j	.L15
.L26:
	.loc 1 243 0
	l32r	a3, .LC47
	j	.L15
.L27:
	.loc 1 247 0
	l32r	a3, .LC43
.L15:
.LVL49:
	.loc 1 249 0 discriminator 9
	call8	esp_log_timestamp
.LVL50:
	l32r	a11, .LC60
	mov.n	a15, a3
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC70
	movi.n	a10, 3
	call8	esp_log_write
.LVL51:
	.loc 1 251 0 discriminator 9
	l8ui	a8, a2, 3
	extui	a8, a8, 4, 4
	beqi	a8, 2, .L17
	bgeui	a8, 3, .L18
	beqz.n	a8, .L19
	j	.L28
.L18:
	beqi	a8, 3, .L20
	beqi	a8, 4, .L21
	j	.L28
.L19:
	.loc 1 253 0
	l32r	a2, .LC53
.LVL52:
	j	.L16
.LVL53:
.L17:
	.loc 1 259 0
	l32r	a2, .LC55
.LVL54:
	.loc 1 260 0
	j	.L16
.LVL55:
.L20:
	.loc 1 262 0
	l32r	a2, .LC59
.LVL56:
	.loc 1 263 0
	j	.L16
.LVL57:
.L21:
	.loc 1 265 0
	l32r	a2, .LC57
.LVL58:
	.loc 1 266 0
	j	.L16
.LVL59:
.L28:
	.loc 1 256 0
	l32r	a2, .LC51
.LVL60:
.L16:
	.loc 1 271 0 discriminator 9
	call8	esp_log_timestamp
.LVL61:
	l32r	a11, .LC60
	mov.n	a15, a2
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC72
	movi.n	a10, 3
	call8	esp_log_write
.LVL62:
	retw.n
.LFE24:
	.size	print_flash_info, .-print_flash_info
	.section	.text.vddsdio_configure,"ax",@progbits
	.align	4
	.type	vddsdio_configure, @function
vddsdio_configure:
.LFB25:
	.loc 1 276 0
	entry	sp, 32
.LCFI3:
	.loc 1 278 0
	call8	rtc_vddsdio_get_config
.LVL63:
	.loc 1 279 0
	movi.n	a8, 6
.LVL64:
	and	a8, a10, a8
	bnei	a8, 2, .L30
	.loc 1 280 0
	movi.n	a8, 0x18
	or	a10, a10, a8
.LVL65:
	.loc 1 281 0
	movi	a8, 0x60
.LVL66:
	or	a10, a10, a8
.LVL67:
	.loc 1 282 0
	movi	a8, 0x180
.LVL68:
	or	a10, a10, a8
.LVL69:
	.loc 1 284 0
	movi.n	a8, 1
.LVL70:
	or	a10, a10, a8
.LVL71:
	call8	rtc_vddsdio_set_config
.LVL72:
	.loc 1 285 0
	movi.n	a10, 0xa
	call8	ets_delay_us
.LVL73:
.L30:
	retw.n
.LFE25:
	.size	vddsdio_configure, .-vddsdio_configure
	.section	.iram1,"ax",@progbits
	.literal_position
	.literal .LC73, g_rom_spiflash_dummy_len_plus
	.literal .LC74, 1072967712
	.literal .LC75, 1073061900
	.literal .LC76, 1072992352
	.literal .LC77, -28673
	.literal .LC78, 4096
	.literal .LC79, -3073
	.literal .LC80, 1072992356
	.literal .LC81, 8192
	.literal .LC82, 1072992360
	.literal .LC83, 1072992340
	.literal .LC84, 1072992344
	.literal .LC85, 1072992348
	.align	4
	.type	flash_gpio_configure, @function
flash_gpio_configure:
.LFB26:
	.loc 1 305 0
.LVL74:
	entry	sp, 32
.LCFI4:
.LVL75:
	.loc 1 308 0
	l8ui	a8, a2, 2
	beqz.n	a8, .L34
	bnei	a8, 2, .L44
.L34:
	.loc 1 310 0
	movi.n	a9, 3
	j	.L33
.L44:
	.loc 1 318 0
	movi.n	a9, 7
.L33:
.LVL76:
	.loc 1 324 0
	l8ui	a8, a2, 3
	extui	a8, a8, 0, 4
	beqz.n	a8, .L36
	movi.n	a2, 0xf
.LVL77:
	bne	a8, a2, .L45
	.loc 1 326 0
	l32r	a2, .LC73
	movi.n	a8, 2
	s8i	a8, a2, 0
	.loc 1 327 0
	s8i	a8, a2, 1
.LBB117:
.LBB118:
	.loc 1 328 0
	l32r	a8, .LC74
	memw
	l32i.n	a10, a8, 0
.LBE118:
	movi	a2, -0x100
	and	a2, a10, a2
	addi.n	a9, a9, 2
.LVL78:
	or	a9, a9, a2
.LVL79:
	memw
	s32i.n	a9, a8, 0
.LVL80:
.LBE117:
	.loc 1 330 0
	movi.n	a2, 3
	.loc 1 331 0
	j	.L35
.LVL81:
.L36:
	.loc 1 333 0
	l32r	a2, .LC73
.LVL82:
	movi.n	a8, 1
	s8i	a8, a2, 0
	.loc 1 334 0
	s8i	a8, a2, 1
.LBB119:
.LBB120:
	.loc 1 335 0
	l32r	a8, .LC74
	memw
	l32i.n	a10, a8, 0
.LBE120:
	movi	a2, -0x100
	and	a2, a10, a2
	addi.n	a9, a9, 1
.LVL83:
	or	a9, a9, a2
.LVL84:
	memw
	s32i.n	a9, a8, 0
.LBE119:
	.loc 1 307 0
	movi.n	a2, 2
	.loc 1 337 0
	j	.L35
.LVL85:
.L45:
	.loc 1 307 0
	movi.n	a2, 2
.LVL86:
.L35:
.LBB121:
.LBB122:
	.loc 1 342 0
	l32r	a8, .LC75
	memw
	l32i.n	a8, a8, 0
.LBE122:
	extui	a8, a8, 9, 3
.LVL87:
.LBE121:
	.loc 1 345 0
	bnei	a8, 2, .L38
.LBB123:
.LBB124:
	.loc 1 348 0
	l32r	a9, .LC76
	memw
	l32i.n	a10, a9, 0
.LBE124:
	l32r	a8, .LC77
.LVL88:
	and	a10, a10, a8
	l32r	a8, .LC78
	or	a8, a10, a8
	memw
	s32i.n	a8, a9, 0
.LBE123:
.LBB125:
.LBB126:
	.loc 1 349 0
	memw
	l32i.n	a10, a9, 0
.LBE126:
	l32r	a8, .LC79
	and	a8, a10, a8
	slli	a2, a2, 10
.LVL89:
	or	a2, a2, a8
	memw
	s32i.n	a2, a9, 0
.LBE125:
	retw.n
.LVL90:
.L38:
	.loc 1 350 0
	bnei	a8, 4, .L40
.LBB127:
.LBB128:
	.loc 1 353 0
	l32r	a9, .LC76
	memw
	l32i.n	a10, a9, 0
.LBE128:
	l32r	a8, .LC77
.LVL91:
	and	a10, a10, a8
	l32r	a8, .LC78
	or	a8, a10, a8
	memw
	s32i.n	a8, a9, 0
.LBE127:
.LBB129:
.LBB130:
	.loc 1 354 0
	memw
	l32i.n	a10, a9, 0
.LBE130:
	l32r	a8, .LC79
	and	a8, a10, a8
	slli	a2, a2, 10
.LVL92:
	or	a2, a2, a8
	memw
	s32i.n	a2, a9, 0
.LBE129:
	retw.n
.LVL93:
.L40:
	.loc 1 355 0
	bnei	a8, 5, .L41
.LBB131:
.LBB132:
	.loc 1 358 0
	l32r	a9, .LC76
	memw
	l32i.n	a10, a9, 0
.LBE132:
	l32r	a8, .LC77
.LVL94:
	and	a10, a10, a8
	l32r	a8, .LC78
	or	a8, a10, a8
	memw
	s32i.n	a8, a9, 0
.LBE131:
.LBB133:
.LBB134:
	.loc 1 359 0
	memw
	l32i.n	a10, a9, 0
.LBE134:
	l32r	a8, .LC79
	and	a8, a10, a8
	slli	a2, a2, 10
.LVL95:
	or	a2, a2, a8
	memw
	s32i.n	a2, a9, 0
.LBE133:
	retw.n
.LVL96:
.L41:
.LBB135:
	.loc 1 361 0
	call8	ets_efuse_get_spiconfig
.LVL97:
	.loc 1 362 0
	bnez.n	a10, .L32
	.loc 1 363 0
	movi.n	a13, 0
	mov.n	a12, a13
	movi.n	a11, 5
	movi.n	a10, 0xb
.LVL98:
	call8	gpio_matrix_out
.LVL99:
	.loc 1 364 0
	movi.n	a13, 0
	mov.n	a12, a13
	movi.n	a11, 1
	movi.n	a10, 7
	call8	gpio_matrix_out
.LVL100:
	.loc 1 365 0
	movi.n	a12, 0
	movi.n	a11, 1
	movi.n	a10, 7
	call8	gpio_matrix_in
.LVL101:
	.loc 1 366 0
	movi.n	a13, 0
	mov.n	a12, a13
	movi.n	a11, 2
	movi.n	a10, 8
	call8	gpio_matrix_out
.LVL102:
	.loc 1 367 0
	movi.n	a12, 0
	movi.n	a11, 2
	movi.n	a10, 8
	call8	gpio_matrix_in
.LVL103:
	.loc 1 368 0
	movi.n	a13, 0
	mov.n	a12, a13
	movi.n	a11, 4
	movi.n	a10, 0xa
	call8	gpio_matrix_out
.LVL104:
	.loc 1 369 0
	movi.n	a12, 0
	movi.n	a11, 4
	movi.n	a10, 0xa
	call8	gpio_matrix_in
.LVL105:
	.loc 1 370 0
	movi.n	a13, 0
	mov.n	a12, a13
	movi.n	a11, 3
	movi.n	a10, 9
	call8	gpio_matrix_out
.LVL106:
	.loc 1 371 0
	movi.n	a12, 0
	movi.n	a11, 3
	movi.n	a10, 9
	call8	gpio_matrix_in
.LVL107:
.LBB136:
.LBB137:
	.loc 1 373 0
	l32r	a11, .LC80
	memw
	l32i.n	a10, a11, 0
.LBE137:
	l32r	a8, .LC77
	and	a10, a10, a8
	l32r	a9, .LC81
	or	a10, a10, a9
	memw
	s32i.n	a10, a11, 0
.LBE136:
.LBB138:
.LBB139:
	.loc 1 374 0
	l32r	a11, .LC82
	memw
	l32i.n	a10, a11, 0
.LBE139:
	and	a10, a10, a8
	or	a10, a10, a9
	memw
	s32i.n	a10, a11, 0
.LBE138:
.LBB140:
.LBB141:
	.loc 1 375 0
	l32r	a11, .LC83
	memw
	l32i.n	a10, a11, 0
.LBE141:
	and	a10, a10, a8
	or	a10, a10, a9
	memw
	s32i.n	a10, a11, 0
.LBE140:
.LBB142:
.LBB143:
	.loc 1 376 0
	l32r	a11, .LC84
	memw
	l32i.n	a10, a11, 0
.LBE143:
	and	a10, a10, a8
	or	a10, a10, a9
	memw
	s32i.n	a10, a11, 0
.LBE142:
.LBB144:
.LBB145:
	.loc 1 377 0
	l32r	a11, .LC85
	memw
	l32i.n	a10, a11, 0
.LBE145:
	and	a10, a10, a8
	or	a9, a10, a9
	memw
	s32i.n	a9, a11, 0
.LBE144:
.LBB146:
.LBB147:
	.loc 1 380 0
	l32r	a9, .LC76
	memw
	l32i.n	a10, a9, 0
.LBE147:
	and	a8, a10, a8
	l32r	a10, .LC78
	or	a8, a8, a10
	memw
	s32i.n	a8, a9, 0
.LBE146:
.LBB148:
.LBB149:
	.loc 1 381 0
	memw
	l32i.n	a10, a9, 0
.LBE149:
	l32r	a8, .LC79
	and	a8, a10, a8
	slli	a2, a2, 10
.LVL108:
	or	a2, a2, a8
	memw
	s32i.n	a2, a9, 0
.L32:
	retw.n
.LBE148:
.LBE135:
.LFE26:
	.size	flash_gpio_configure, .-flash_gpio_configure
	.section	.rodata.str1.4
	.align	4
.LC87:
	.string	"\033[0;33mW (%d) %s: PRO CPU has been reset by WDT.\033[0m\n"
	.align	4
.LC89:
	.string	"\033[0;33mW (%d) %s: APP CPU has been reset by WDT.\033[0m\n"
	.section	.text.wdt_reset_check,"ax",@progbits
	.literal_position
	.literal .LC86, .LC24
	.literal .LC88, .LC87
	.literal .LC90, .LC89
	.align	4
	.type	wdt_reset_check, @function
wdt_reset_check:
.LFB30:
	.loc 1 497 0
	entry	sp, 32
.LCFI5:
.LVL109:
	.loc 1 501 0
	movi.n	a10, 0
	call8	rtc_get_reset_reason
.LVL110:
	mov.n	a3, a10
	.loc 1 502 0
	movi.n	a10, 1
	call8	rtc_get_reset_reason
.LVL111:
	mov.n	a2, a10
	.loc 1 503 0
	addi	a10, a3, -9
	movi.n	a11, 1
	movi.n	a8, 0
	mov.n	a4, a8
	moveqz	a4, a11, a10
	addi	a9, a3, -7
	moveqz	a8, a11, a9
	or	a8, a4, a8
	bnez.n	a8, .L47
	.loc 1 503 0 is_stmt 0 discriminator 1
	beqi	a3, 8, .L47
	.loc 1 503 0 discriminator 2
	movi.n	a8, 0xb
	beq	a3, a8, .L47
	.loc 1 504 0 is_stmt 1
	movi.n	a8, 0xd
	bne	a3, a8, .L52
.L47:
	.loc 1 505 0 discriminator 4
	call8	esp_log_timestamp
.LVL112:
	l32r	a11, .LC86
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC88
	movi.n	a10, 2
	call8	esp_log_write
.LVL113:
	.loc 1 506 0 discriminator 4
	movi.n	a11, 1
	j	.L48
.LVL114:
.L52:
	.loc 1 498 0
	movi.n	a11, 0
.LVL115:
.L48:
	.loc 1 508 0
	addi	a3, a2, -9
	movi.n	a10, 1
	movi.n	a8, 0
	mov.n	a4, a8
	moveqz	a4, a10, a3
	mov.n	a3, a4
	addi	a9, a2, -7
	moveqz	a8, a10, a9
	or	a8, a4, a8
	bnez.n	a8, .L49
	.loc 1 508 0 is_stmt 0 discriminator 1
	beqi	a2, 8, .L49
	.loc 1 508 0 discriminator 2
	movi.n	a3, 0xb
	beq	a2, a3, .L49
	.loc 1 509 0 is_stmt 1
	movi.n	a3, 0xd
	bne	a2, a3, .L50
.L49:
	.loc 1 510 0 discriminator 4
	call8	esp_log_timestamp
.LVL116:
	l32r	a11, .LC86
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC90
	movi.n	a10, 2
	call8	esp_log_write
.LVL117:
	.loc 1 511 0 discriminator 4
	movi.n	a11, 1
.LVL118:
.L50:
	.loc 1 513 0
	beqz.n	a11, .L51
	.loc 1 515 0
	movi.n	a10, 0
	call8	wdt_reset_info_dump
.LVL119:
	.loc 1 516 0
	movi.n	a10, 1
	call8	wdt_reset_info_dump
.LVL120:
.L51:
	.loc 1 518 0
	call8	wdt_reset_cpu0_info_enable
.LVL121:
	retw.n
.LFE30:
	.size	wdt_reset_check, .-wdt_reset_check
	.section	.text.update_flash_config,"ax",@progbits
	.literal_position
	.literal .LC91, 65535
	.literal .LC92, 4096
	.literal .LC93, 65536
	.literal .LC94, g_rom_flashchip
	.align	4
	.type	update_flash_config, @function
update_flash_config:
.LFB23:
	.loc 1 173 0
.LVL122:
	entry	sp, 32
.LCFI6:
	.loc 1 175 0
	l8ui	a8, a2, 3
	extui	a8, a8, 4, 4
	beqi	a8, 2, .L55
	bgeui	a8, 3, .L56
	beqz.n	a8, .L57
	j	.L60
.L56:
	beqi	a8, 3, .L58
	beqi	a8, 4, .L59
	j	.L60
.L57:
	.loc 1 177 0
	movi.n	a2, 1
.LVL123:
	j	.L54
.LVL124:
.L55:
	.loc 1 183 0
	movi.n	a2, 4
.LVL125:
	.loc 1 184 0
	j	.L54
.LVL126:
.L58:
	.loc 1 186 0
	movi.n	a2, 8
.LVL127:
	.loc 1 187 0
	j	.L54
.LVL128:
.L59:
	.loc 1 189 0
	movi.n	a2, 0x10
.LVL129:
	.loc 1 190 0
	j	.L54
.LVL130:
.L60:
	.loc 1 180 0
	movi.n	a2, 2
.LVL131:
.L54:
.LBB150:
.LBB151:
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/cache.h"
	.loc 3 165 0
	call8	esp_dport_access_stall_other_cpu_start
.LVL132:
	.loc 3 166 0
	movi.n	a10, 0
	call8	Cache_Read_Disable_rom
.LVL133:
	.loc 3 167 0
	call8	esp_dport_access_stall_other_cpu_end
.LVL134:
.LBE151:
.LBE150:
	.loc 1 196 0
	l32r	a15, .LC91
	movi	a14, 0x100
	l32r	a13, .LC92
	l32r	a12, .LC93
	slli	a11, a2, 20
	l32r	a8, .LC94
	l32i.n	a10, a8, 0
	call8	esp_rom_spiflash_config_param
.LVL135:
.LBB152:
.LBB153:
	.loc 3 149 0
	call8	esp_dport_access_stall_other_cpu_start
.LVL136:
	.loc 3 150 0
	movi.n	a10, 0
	call8	Cache_Flush_rom
.LVL137:
	.loc 3 151 0
	call8	esp_dport_access_stall_other_cpu_end
.LVL138:
.LBE153:
.LBE152:
.LBB154:
.LBB155:
	.loc 3 181 0
	call8	esp_dport_access_stall_other_cpu_start
.LVL139:
	.loc 3 182 0
	movi.n	a10, 0
	call8	Cache_Read_Enable_rom
.LVL140:
	.loc 3 183 0
	call8	esp_dport_access_stall_other_cpu_end
.LVL141:
	retw.n
.LBE155:
.LBE154:
.LFE23:
	.size	update_flash_config, .-update_flash_config
	.section	.rodata.str1.4
	.align	4
.LC96:
	.string	"\033[0;31mE (%d) %s: Assert failed in %s, %s:%d (%s)\033[0m\n"
	.section	.text.__assert_func,"ax",@progbits
	.literal_position
	.literal .LC95, .LC24
	.literal .LC97, .LC96
	.align	4
	.global	__assert_func
	.type	__assert_func, @function
__assert_func:
.LFB31:
	.loc 1 522 0
.LVL142:
	entry	sp, 48
.LCFI7:
	.loc 1 523 0
	call8	esp_log_timestamp
.LVL143:
	l32r	a11, .LC95
	s32i.n	a5, sp, 8
	s32i.n	a3, sp, 4
	s32i.n	a2, sp, 0
	mov.n	a15, a4
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC97
	movi.n	a10, 1
	call8	esp_log_write
.LVL144:
.L62:
	j	.L62
.LFE31:
	.size	__assert_func, .-__assert_func
	.section	.rodata.str1.4
	.align	4
.LC100:
	.ascii	"\"(Cannot use REG_GET_"
	.string	"FIELD for DPORT registers use DPORT_REG_GET_FIELD)\" && (!((((((0x3ff40000 + (uart_no) * 0x10000 + ( (uart_no) > 1 ? 0xe000 : 0 ) ) + 0x1C))) >= 0x3ff00000) && ((((0x3ff40000 + (uart_no) * 0x10000 + ( (uart_no) > 1 ? 0xe000 : 0 ) ) + 0x1C))) <= 0x3ff13FFC))"
	.align	4
.LC103:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/uart.h"
	.align	4
.LC105:
	.ascii	"\"(Cannot us"
	.string	"e REG_READ for DPORT registers use DPORT_REG_READ)\" && (!((((((0x3ff40000 + (uart_no) * 0x10000 + ( (uart_no) > 1 ? 0xe000 : 0 ) ) + 0x1C))) >= 0x3ff00000) && ((((0x3ff40000 + (uart_no) * 0x10000 + ( (uart_no) > 1 ? 0xe000 : 0 ) ) + 0x1C))) <= 0x3ff13FFC))"
	.section	.text.uart_console_configure,"ax",@progbits
	.literal_position
	.literal .LC107, 1072955420
	.literal .LC108, -1851608123
	.align	4
	.type	uart_console_configure, @function
uart_console_configure:
.LFB27:
	.loc 1 400 0
	entry	sp, 32
.LCFI8:
.LVL145:
	.loc 1 407 0
	call8	uartAttach
.LVL146:
	.loc 1 408 0
	call8	ets_install_uart_printf
.LVL147:
.L67:
.LBB160:
.LBB161:
.LBB162:
.LBB163:
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/uart.h"
	.loc 4 270 0
	l32r	a8, .LC107
	memw
	l32i.n	a8, a8, 0
.LBE163:
	extui	a8, a8, 24, 4
.LBE162:
	bnez.n	a8, .L67
.LVL148:
.LBE161:
.LBE160:
	.loc 1 439 0
	call8	rtc_clk_apb_freq_get
.LVL149:
	slli	a10, a10, 4
	l32r	a8, .LC108
	muluh	a11, a10, a8
	extui	a11, a11, 16, 16
	movi.n	a10, 0
	call8	uart_div_modify
.LVL150:
	retw.n
.LFE27:
	.size	uart_console_configure, .-uart_console_configure
	.section	.rodata.str1.4
	.align	4
.LC112:
	.string	"\033[0;31mE (%d) %s: failed to load bootloader header!\033[0m\n"
	.align	4
.LC114:
	.string	"v3.1-rc1-dirty"
	.align	4
.LC116:
	.string	"\033[0;32mI (%d) %s: ESP-IDF %s 2nd stage bootloader\033[0m\n"
	.align	4
.LC118:
	.string	"\033[0;32mI (%d) %s: compile time 09:08:24\033[0m\n"
	.align	4
.LC123:
	.string	"\033[0;32mI (%d) %s: Enabling RNG early entropy source...\033[0m\n"
	.section	.text.bootloader_main,"ax",@progbits
	.literal_position
	.literal .LC109, g_rom_flashchip
	.literal .LC110, 4096
	.literal .LC111, .LC24
	.literal .LC113, .LC112
	.literal .LC115, .LC114
	.literal .LC117, .LC116
	.literal .LC119, .LC118
	.literal .LC120, 1072988300
	.literal .LC121, 1073082440
	.literal .LC122, -16385
	.literal .LC124, .LC123
	.align	4
	.type	bootloader_main, @function
bootloader_main:
.LFB22:
	.loc 1 119 0
	entry	sp, 64
.LCFI9:
	.loc 1 120 0
	call8	vddsdio_configure
.LVL151:
	.loc 1 122 0
	call8	bootloader_read_flash_id
.LVL152:
	l32r	a2, .LC109
	s32i.n	a10, a2, 0
	.loc 1 124 0
	movi.n	a13, 1
	movi.n	a12, 0x18
	mov.n	a11, sp
	l32r	a10, .LC110
	call8	bootloader_flash_read
.LVL153:
	mov.n	a2, a10
	beqz.n	a10, .L69
	.loc 1 125 0 discriminator 2
	call8	esp_log_timestamp
.LVL154:
	l32r	a11, .LC111
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC113
	movi.n	a10, 1
	call8	esp_log_write
.LVL155:
	.loc 1 126 0 discriminator 2
	movi.n	a2, -1
	retw.n
.L69:
	.loc 1 128 0
	mov.n	a10, sp
	call8	flash_gpio_configure
.LVL156:
	.loc 1 137 0
	call8	bootloader_clock_configure
.LVL157:
	.loc 1 138 0
	call8	uart_console_configure
.LVL158:
	.loc 1 139 0
	call8	wdt_reset_check
.LVL159:
	.loc 1 140 0
	call8	esp_log_timestamp
.LVL160:
	l32r	a3, .LC111
	l32r	a15, .LC115
	mov.n	a14, a3
	mov.n	a13, a10
	l32r	a12, .LC117
	mov.n	a11, a3
	movi.n	a10, 3
	call8	esp_log_write
.LVL161:
	.loc 1 142 0
	call8	esp_log_timestamp
.LVL162:
	mov.n	a14, a3
	mov.n	a13, a10
	l32r	a12, .LC119
	mov.n	a11, a3
	movi.n	a10, 3
	call8	esp_log_write
.LVL163:
	.loc 1 143 0
	movi.n	a10, 0
	call8	ets_set_appcpu_boot_addr
.LVL164:
.LBB164:
	.loc 1 146 0
	l32r	a9, .LC120
	memw
	l32i.n	a10, a9, 0
	movi	a8, -0x401
	and	a8, a10, a8
	memw
	s32i.n	a8, a9, 0
.LBE164:
.LBB165:
	.loc 1 147 0
	l32r	a9, .LC121
	memw
	l32i.n	a10, a9, 0
	l32r	a8, .LC122
	and	a8, a10, a8
	memw
	s32i.n	a8, a9, 0
.LBE165:
	.loc 1 157 0
	call8	esp_rom_spiflash_unlock
.LVL165:
	.loc 1 159 0
	call8	esp_log_timestamp
.LVL166:
	mov.n	a14, a3
	mov.n	a13, a10
	l32r	a12, .LC124
	mov.n	a11, a3
	movi.n	a10, 3
	call8	esp_log_write
.LVL167:
	.loc 1 160 0
	call8	bootloader_random_enable
.LVL168:
	.loc 1 166 0
	mov.n	a10, sp
	call8	print_flash_info
.LVL169:
	.loc 1 168 0
	mov.n	a10, sp
	call8	update_flash_config
.LVL170:
	.loc 1 170 0
	retw.n
.LFE22:
	.size	bootloader_main, .-bootloader_main
	.section	.rodata.str1.4
	.align	4
.LC129:
	.string	"&_bss_start <= &_bss_end"
	.align	4
.LC132:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/bootloader_init.c"
	.align	4
.LC136:
	.string	"&_data_start <= &_data_end"
	.align	4
.LC138:
	.string	"sp < &_bss_start"
	.align	4
.LC140:
	.string	"sp < &_data_start"
	.section	.rodata
	.align	4
.LC0:
	.word	0
	.word	-2147483648
	.word	-1610612736
	.word	-1073741824
	.word	-536870912
	.section	.text.bootloader_init,"ax",@progbits
	.literal_position
	.literal .LC125, .LC0
	.literal .LC126, 536870912
	.literal .LC127, _bss_start
	.literal .LC128, _bss_end
	.literal .LC130, .LC129
	.literal .LC131, __func__$4790
	.literal .LC133, .LC132
	.literal .LC134, _data_start
	.literal .LC135, _data_end
	.literal .LC137, .LC136
	.literal .LC139, .LC138
	.literal .LC141, .LC140
	.literal .LC142, 1072693340
	.literal .LC143, 8192
	.literal .LC144, -8193
	.literal .LC145, 1072693316
	.align	4
	.global	bootloader_init
	.type	bootloader_init, @function
bootloader_init:
.LFB21:
	.loc 1 72 0
	entry	sp, 64
.LCFI10:
.LBB196:
.LBB197:
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/cpu.h"
	.loc 5 67 0
	movi.n	a12, 0x14
	l32r	a11, .LC125
	mov.n	a10, sp
	call8	memcpy
.LVL171:
.LBB198:
	.loc 5 68 0
	movi.n	a8, 0
	j	.L72
.LVL172:
.L73:
	.loc 5 69 0
	addx4	a9, a8, sp
	l32i.n	a9, a9, 0
.LVL173:
.LBB199:
.LBB200:
	.loc 5 45 0
	movi.n	a10, 0xf
#APP
# 45 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/cpu.h" 1
	wdtlb  a10, a9; dsync

# 0 "" 2
.LVL174:
#NO_APP
.LBE200:
.LBE199:
.LBB201:
.LBB202:
	.loc 5 51 0
#APP
# 51 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/cpu.h" 1
	witlb  a10, a9; isync

# 0 "" 2
#NO_APP
.LBE202:
.LBE201:
	.loc 5 68 0
	addi.n	a8, a8, 1
.LVL175:
.L72:
	bltui	a8, 5, .L73
.LVL176:
.LBE198:
.LBB203:
.LBB204:
	.loc 5 45 0
	l32r	a2, .LC126
	movi.n	a3, 0
#APP
# 45 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/cpu.h" 1
	wdtlb  a3, a2; dsync

# 0 "" 2
.LVL177:
#NO_APP
.LBE204:
.LBE203:
.LBB205:
.LBB206:
	.loc 5 51 0
#APP
# 51 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/cpu.h" 1
	witlb  a3, a2; isync

# 0 "" 2
#NO_APP
.LBE206:
.LBE205:
.LBE197:
.LBE196:
.LBB207:
.LBB208:
.LBB209:
	.loc 5 35 0
#APP
# 35 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/cpu.h" 1
	mov a2, sp;
# 0 "" 2
.LVL178:
#NO_APP
.LBE209:
.LBE208:
	.loc 1 79 0
	l32r	a4, .LC128
	l32r	a3, .LC127
	bgeu	a4, a3, .L74
	.loc 1 79 0 is_stmt 0 discriminator 1
	l32r	a13, .LC130
	l32r	a12, .LC131
	movi.n	a11, 0x4f
	l32r	a10, .LC133
	call8	__assert_func
.LVL179:
.L74:
	.loc 1 80 0 is_stmt 1
	l32r	a4, .LC135
	l32r	a3, .LC134
	bgeu	a4, a3, .L75
	.loc 1 80 0 is_stmt 0 discriminator 1
	l32r	a13, .LC137
	l32r	a12, .LC131
	movi.n	a11, 0x50
	l32r	a10, .LC133
	call8	__assert_func
.LVL180:
.L75:
	.loc 1 81 0 is_stmt 1
	l32r	a3, .LC127
	bltu	a2, a3, .L76
	.loc 1 81 0 is_stmt 0 discriminator 1
	l32r	a13, .LC139
	l32r	a12, .LC131
	movi.n	a11, 0x51
	l32r	a10, .LC133
	call8	__assert_func
.LVL181:
.L76:
	.loc 1 82 0 is_stmt 1
	l32r	a3, .LC134
	bltu	a2, a3, .L77
	.loc 1 82 0 is_stmt 0 discriminator 1
	l32r	a13, .LC141
	l32r	a12, .LC131
	movi.n	a11, 0x52
	l32r	a10, .LC133
	call8	__assert_func
.LVL182:
.L77:
.LBE207:
	.loc 1 87 0 is_stmt 1
	l32r	a10, .LC127
	l32r	a12, .LC128
	sub	a12, a12, a10
	movi.n	a11, 0
	call8	memset
.LVL183:
.LBB210:
.LBB211:
	.loc 3 165 0
	call8	esp_dport_access_stall_other_cpu_start
.LVL184:
	.loc 3 166 0
	movi.n	a10, 0
	call8	Cache_Read_Disable_rom
.LVL185:
	.loc 3 167 0
	call8	esp_dport_access_stall_other_cpu_end
.LVL186:
.LBE211:
.LBE210:
.LBB212:
.LBB213:
	.loc 3 165 0
	call8	esp_dport_access_stall_other_cpu_start
.LVL187:
	.loc 3 166 0
	movi.n	a10, 1
	call8	Cache_Read_Disable_rom
.LVL188:
	.loc 3 167 0
	call8	esp_dport_access_stall_other_cpu_end
.LVL189:
.LBE213:
.LBE212:
.LBB214:
.LBB215:
	.loc 3 149 0
	call8	esp_dport_access_stall_other_cpu_start
.LVL190:
	.loc 3 150 0
	movi.n	a10, 0
	call8	Cache_Flush_rom
.LVL191:
	.loc 3 151 0
	call8	esp_dport_access_stall_other_cpu_end
.LVL192:
.LBE215:
.LBE214:
.LBB216:
.LBB217:
	.loc 3 149 0
	call8	esp_dport_access_stall_other_cpu_start
.LVL193:
	.loc 3 150 0
	movi.n	a10, 1
	call8	Cache_Flush_rom
.LVL194:
	.loc 3 151 0
	call8	esp_dport_access_stall_other_cpu_end
.LVL195:
.LBE217:
.LBE216:
	.loc 1 95 0
	movi.n	a10, 0
	call8	mmu_init
.LVL196:
.LBB218:
.LBB219:
	.loc 2 79 0
	l32r	a2, .LC142
.LVL197:
	mov.n	a10, a2
	call8	esp_dport_access_reg_read
.LVL198:
.LBE219:
.LBE218:
	.loc 1 96 0
	l32r	a3, .LC143
	or	a10, a10, a3
	memw
	s32i.n	a10, a2, 0
	.loc 1 97 0
	movi.n	a10, 1
	call8	mmu_init
.LVL199:
.LBB220:
.LBB221:
	.loc 2 79 0
	mov.n	a10, a2
	call8	esp_dport_access_reg_read
.LVL200:
.LBE221:
.LBE220:
	.loc 1 98 0
	l32r	a3, .LC144
	and	a10, a10, a3
	memw
	s32i.n	a10, a2, 0
.LVL201:
.LBB222:
.LBB223:
	.loc 2 79 0
	l32r	a4, .LC145
	mov.n	a10, a4
	call8	esp_dport_access_reg_read
.LVL202:
.LBE223:
.LBE222:
	.loc 1 109 0
	movi.n	a3, -0x11
	and	a10, a10, a3
	memw
	s32i.n	a10, a4, 0
.LVL203:
.LBB224:
.LBB225:
	.loc 2 79 0
	mov.n	a10, a2
	call8	esp_dport_access_reg_read
.LVL204:
.LBE225:
.LBE224:
	.loc 1 110 0
	and	a10, a10, a3
	memw
	s32i.n	a10, a2, 0
	.loc 1 112 0
	call8	bootloader_main
.LVL205:
	mov.n	a2, a10
	beqz.n	a10, .L78
	.loc 1 113 0
	movi.n	a2, -1
.L78:
	.loc 1 116 0
	retw.n
.LFE21:
	.size	bootloader_init, .-bootloader_init
	.section	.rodata.__func__$3403,"a",@progbits
	.align	4
	.type	__func__$3403, @object
	.size	__func__$3403, 18
__func__$3403:
	.string	"uart_tx_wait_idle"
	.section	.rodata.__func__$4790,"a",@progbits
	.align	4
	.type	__func__$4790, @object
	.size	__func__$4790, 16
__func__$4790:
	.string	"bootloader_init"
	.comm	esp_image_spi_freq_t,4,4
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
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI0-.LFB28
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI1-.LFB29
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI2-.LFB24
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI3-.LFB25
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI4-.LFB26
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI5-.LFB30
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
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI7-.LFB31
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI8-.LFB27
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI9-.LFB22
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI10-.LFB21
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE20:
	.text
.Letext0:
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/spi_flash.h"
	.file 9 "D:/ESP32/esp-idf-v3.1-rc1/components/log/include/esp_log.h"
	.file 10 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/rtc.h"
	.file 11 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/rtc.h"
	.file 12 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_err.h"
	.file 13 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include/esp_image_format.h"
	.file 14 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_dport_access.h"
	.file 15 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/ets_sys.h"
	.file 16 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/efuse.h"
	.file 17 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/gpio.h"
	.file 18 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include_priv/flash_qio_mode.h"
	.file 19 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include_priv/bootloader_flash.h"
	.file 20 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include/bootloader_clock.h"
	.file 21 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include_priv/bootloader_random.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x18ec
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF182
	.byte	0xc
	.4byte	.LASF183
	.4byte	.LASF184
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
	.byte	0x6
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
	.byte	0x6
	.byte	0x19
	.4byte	0x25
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x6
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
	.byte	0x7
	.byte	0x15
	.4byte	0x41
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x7
	.byte	0x2c
	.4byte	0x5a
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x7
	.byte	0x2d
	.4byte	0x65
	.uleb128 0x8
	.byte	0x4
	.4byte	0x2c
	.byte	0x9
	.byte	0x1f
	.4byte	0xf9
	.uleb128 0x9
	.4byte	.LASF17
	.byte	0
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x5
	.byte	0
	.uleb128 0xa
	.byte	0x18
	.byte	0x8
	.byte	0x89
	.4byte	0x14a
	.uleb128 0xb
	.4byte	.LASF23
	.byte	0x8
	.byte	0x8a
	.4byte	0xbd
	.byte	0
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0x8
	.byte	0x8b
	.4byte	0xbd
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0x8
	.byte	0x8c
	.4byte	0xbd
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0x8
	.byte	0x8d
	.4byte	0xbd
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0x8
	.byte	0x8e
	.4byte	0xbd
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0x8
	.byte	0x8f
	.4byte	0xbd
	.byte	0x14
	.byte	0
	.uleb128 0x4
	.4byte	.LASF29
	.byte	0x8
	.byte	0x90
	.4byte	0xf9
	.uleb128 0x8
	.byte	0x4
	.4byte	0x2c
	.byte	0xa
	.byte	0x50
	.4byte	0x1c2
	.uleb128 0x9
	.4byte	.LASF30
	.byte	0
	.uleb128 0x9
	.4byte	.LASF31
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF32
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF33
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF34
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF35
	.byte	0x6
	.uleb128 0x9
	.4byte	.LASF36
	.byte	0x7
	.uleb128 0x9
	.4byte	.LASF37
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF38
	.byte	0x9
	.uleb128 0x9
	.4byte	.LASF39
	.byte	0xa
	.uleb128 0x9
	.4byte	.LASF40
	.byte	0xb
	.uleb128 0x9
	.4byte	.LASF41
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF42
	.byte	0xd
	.uleb128 0x9
	.4byte	.LASF43
	.byte	0xe
	.uleb128 0x9
	.4byte	.LASF44
	.byte	0xf
	.uleb128 0x9
	.4byte	.LASF45
	.byte	0x10
	.byte	0
	.uleb128 0x4
	.4byte	.LASF46
	.byte	0xa
	.byte	0x61
	.4byte	0x155
	.uleb128 0x8
	.byte	0x4
	.4byte	0x2c
	.byte	0xa
	.byte	0x63
	.4byte	0x225
	.uleb128 0x9
	.4byte	.LASF47
	.byte	0
	.uleb128 0x9
	.4byte	.LASF48
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF49
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF50
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF51
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF52
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF53
	.byte	0x20
	.uleb128 0x9
	.4byte	.LASF54
	.byte	0x40
	.uleb128 0x9
	.4byte	.LASF55
	.byte	0x80
	.uleb128 0xc
	.4byte	.LASF56
	.2byte	0x100
	.uleb128 0xc
	.4byte	.LASF57
	.2byte	0x200
	.uleb128 0xc
	.4byte	.LASF58
	.2byte	0x400
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x2c
	.byte	0xa
	.byte	0x81
	.4byte	0x256
	.uleb128 0x9
	.4byte	.LASF59
	.byte	0
	.uleb128 0x9
	.4byte	.LASF60
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF61
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF62
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF63
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF64
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF65
	.uleb128 0xd
	.byte	0x4
	.byte	0xb
	.2byte	0x24b
	.4byte	0x2c7
	.uleb128 0xe
	.4byte	.LASF66
	.byte	0xb
	.2byte	0x24c
	.4byte	0xbd
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.4byte	.LASF67
	.byte	0xb
	.2byte	0x24d
	.4byte	0xbd
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.4byte	.LASF68
	.byte	0xb
	.2byte	0x24e
	.4byte	0xbd
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.4byte	.LASF69
	.byte	0xb
	.2byte	0x24f
	.4byte	0xbd
	.byte	0x4
	.byte	0x2
	.byte	0x1b
	.byte	0
	.uleb128 0xe
	.4byte	.LASF70
	.byte	0xb
	.2byte	0x250
	.4byte	0xbd
	.byte	0x4
	.byte	0x2
	.byte	0x19
	.byte	0
	.uleb128 0xe
	.4byte	.LASF71
	.byte	0xb
	.2byte	0x251
	.4byte	0xbd
	.byte	0x4
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF72
	.byte	0xb
	.2byte	0x252
	.4byte	0x25d
	.uleb128 0x4
	.4byte	.LASF73
	.byte	0xc
	.byte	0x18
	.4byte	0xb2
	.uleb128 0x8
	.byte	0x4
	.4byte	0x2c
	.byte	0xd
	.byte	0x1d
	.4byte	0x30f
	.uleb128 0x9
	.4byte	.LASF74
	.byte	0
	.uleb128 0x9
	.4byte	.LASF75
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF76
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF77
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF78
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF79
	.byte	0x5
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x2c
	.byte	0xd
	.byte	0x27
	.4byte	0x334
	.uleb128 0x9
	.4byte	.LASF80
	.byte	0
	.uleb128 0x9
	.4byte	.LASF81
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF82
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF83
	.byte	0xf
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x2c
	.byte	0xd
	.byte	0x2f
	.4byte	0x365
	.uleb128 0x9
	.4byte	.LASF84
	.byte	0
	.uleb128 0x9
	.4byte	.LASF85
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF86
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF87
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF88
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF89
	.byte	0x5
	.byte	0
	.uleb128 0xa
	.byte	0x18
	.byte	0xd
	.byte	0x3b
	.4byte	0x3ec
	.uleb128 0xb
	.4byte	.LASF90
	.byte	0xd
	.byte	0x3c
	.4byte	0xa7
	.byte	0
	.uleb128 0xb
	.4byte	.LASF91
	.byte	0xd
	.byte	0x3d
	.4byte	0xa7
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF92
	.byte	0xd
	.byte	0x3f
	.4byte	0xa7
	.byte	0x2
	.uleb128 0x10
	.4byte	.LASF93
	.byte	0xd
	.byte	0x41
	.4byte	0xa7
	.byte	0x1
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x10
	.4byte	.LASF94
	.byte	0xd
	.byte	0x43
	.4byte	0xa7
	.byte	0x1
	.byte	0x4
	.byte	0
	.byte	0x3
	.uleb128 0xb
	.4byte	.LASF95
	.byte	0xd
	.byte	0x44
	.4byte	0xbd
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF96
	.byte	0xd
	.byte	0x47
	.4byte	0xa7
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF97
	.byte	0xd
	.byte	0x49
	.4byte	0x3ec
	.byte	0x9
	.uleb128 0xb
	.4byte	.LASF98
	.byte	0xd
	.byte	0x4b
	.4byte	0x3fc
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF99
	.byte	0xd
	.byte	0x4f
	.4byte	0xa7
	.byte	0x17
	.byte	0
	.uleb128 0x11
	.4byte	0xa7
	.4byte	0x3fc
	.uleb128 0x12
	.4byte	0x85
	.byte	0x2
	.byte	0
	.uleb128 0x11
	.4byte	0xa7
	.4byte	0x40c
	.uleb128 0x12
	.4byte	0x85
	.byte	0xa
	.byte	0
	.uleb128 0x4
	.4byte	.LASF100
	.byte	0xd
	.byte	0x50
	.4byte	0x365
	.uleb128 0x13
	.4byte	.LASF102
	.byte	0x5
	.byte	0x31
	.byte	0x3
	.4byte	0x43a
	.uleb128 0x14
	.string	"vpn"
	.byte	0x5
	.byte	0x31
	.4byte	0x2c
	.uleb128 0x15
	.4byte	.LASF101
	.byte	0x5
	.byte	0x31
	.4byte	0x2c
	.byte	0
	.uleb128 0x13
	.4byte	.LASF103
	.byte	0x5
	.byte	0x2b
	.byte	0x3
	.4byte	0x45d
	.uleb128 0x14
	.string	"vpn"
	.byte	0x5
	.byte	0x2b
	.4byte	0xbd
	.uleb128 0x15
	.4byte	.LASF101
	.byte	0x5
	.byte	0x2b
	.4byte	0x2c
	.byte	0
	.uleb128 0x16
	.4byte	.LASF185
	.byte	0x2
	.byte	0x4a
	.4byte	0xbd
	.byte	0x3
	.4byte	0x479
	.uleb128 0x14
	.string	"reg"
	.byte	0x2
	.byte	0x4a
	.4byte	0xbd
	.byte	0
	.uleb128 0x13
	.4byte	.LASF104
	.byte	0x3
	.byte	0xb2
	.byte	0x3
	.4byte	0x499
	.uleb128 0x15
	.4byte	.LASF105
	.byte	0x3
	.byte	0xb2
	.4byte	0x25
	.uleb128 0x17
	.4byte	.LASF107
	.byte	0x3
	.byte	0xb4
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	.LASF106
	.byte	0x3
	.byte	0x92
	.byte	0x3
	.4byte	0x4b9
	.uleb128 0x15
	.4byte	.LASF105
	.byte	0x3
	.byte	0x92
	.4byte	0x25
	.uleb128 0x17
	.4byte	.LASF108
	.byte	0x3
	.byte	0x94
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	.LASF109
	.byte	0x3
	.byte	0xa2
	.byte	0x3
	.4byte	0x4d9
	.uleb128 0x15
	.4byte	.LASF105
	.byte	0x3
	.byte	0xa2
	.4byte	0x25
	.uleb128 0x17
	.4byte	.LASF110
	.byte	0x3
	.byte	0xa4
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF111
	.byte	0x5
	.byte	0x20
	.4byte	0x8c
	.byte	0x3
	.4byte	0x4f4
	.uleb128 0x19
	.string	"sp"
	.byte	0x5
	.byte	0x22
	.4byte	0x8c
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF112
	.byte	0x1
	.2byte	0x1bc
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x563
	.uleb128 0x1b
	.4byte	0x45d
	.4byte	.LBB76
	.4byte	.LBE76-.LBB76
	.byte	0x1
	.2byte	0x1bf
	.4byte	0x538
	.uleb128 0x1c
	.4byte	0x46d
	.4byte	0x3ff00440
	.uleb128 0x1d
	.4byte	.LVL1
	.4byte	0x17ad
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	0x45d
	.4byte	.LBB78
	.4byte	.LBE78-.LBB78
	.byte	0x1
	.2byte	0x1c0
	.uleb128 0x1c
	.4byte	0x46d
	.4byte	0x3ff00440
	.uleb128 0x1d
	.4byte	.LVL3
	.4byte	0x17ad
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF113
	.byte	0x1
	.2byte	0x1c3
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa1d
	.uleb128 0x20
	.string	"cpu"
	.byte	0x1
	.2byte	0x1c3
	.4byte	0x25
	.4byte	.LLST0
	.uleb128 0x21
	.4byte	.LASF114
	.byte	0x1
	.2byte	0x1c5
	.4byte	0xbd
	.4byte	.LLST1
	.uleb128 0x22
	.string	"pid"
	.byte	0x1
	.2byte	0x1c5
	.4byte	0xbd
	.4byte	.LLST2
	.uleb128 0x21
	.4byte	.LASF115
	.byte	0x1
	.2byte	0x1c5
	.4byte	0xbd
	.4byte	.LLST3
	.uleb128 0x21
	.4byte	.LASF116
	.byte	0x1
	.2byte	0x1c5
	.4byte	0xbd
	.4byte	.LLST4
	.uleb128 0x22
	.string	"pc"
	.byte	0x1
	.2byte	0x1c5
	.4byte	0xbd
	.4byte	.LLST5
	.uleb128 0x21
	.4byte	.LASF117
	.byte	0x1
	.2byte	0x1c6
	.4byte	0xbd
	.4byte	.LLST6
	.uleb128 0x21
	.4byte	.LASF118
	.byte	0x1
	.2byte	0x1c6
	.4byte	0xbd
	.4byte	.LLST7
	.uleb128 0x21
	.4byte	.LASF119
	.byte	0x1
	.2byte	0x1c6
	.4byte	0xbd
	.4byte	.LLST8
	.uleb128 0x21
	.4byte	.LASF120
	.byte	0x1
	.2byte	0x1c6
	.4byte	0xbd
	.4byte	.LLST9
	.uleb128 0x23
	.4byte	.LASF121
	.byte	0x1
	.2byte	0x1c7
	.4byte	0x9c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1b
	.4byte	0x45d
	.4byte	.LBB80
	.4byte	.LBE80-.LBB80
	.byte	0x1
	.2byte	0x1ca
	.4byte	0x657
	.uleb128 0x24
	.4byte	0x46d
	.4byte	.LLST10
	.uleb128 0x1d
	.4byte	.LVL8
	.4byte	0x17ad
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0xc
	.4byte	0x3ff00444
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	0x45d
	.4byte	.LBB82
	.4byte	.LBE82-.LBB82
	.byte	0x1
	.2byte	0x1cb
	.4byte	0x688
	.uleb128 0x24
	.4byte	0x46d
	.4byte	.LLST11
	.uleb128 0x1d
	.4byte	.LVL9
	.4byte	0x17ad
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0xc
	.4byte	0x3ff00448
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	0x45d
	.4byte	.LBB84
	.4byte	.LBE84-.LBB84
	.byte	0x1
	.2byte	0x1cc
	.4byte	0x6b9
	.uleb128 0x24
	.4byte	0x46d
	.4byte	.LLST12
	.uleb128 0x1d
	.4byte	.LVL10
	.4byte	0x17ad
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0xc
	.4byte	0x3ff0044c
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	0x45d
	.4byte	.LBB86
	.4byte	.LBE86-.LBB86
	.byte	0x1
	.2byte	0x1cd
	.4byte	0x6ea
	.uleb128 0x24
	.4byte	0x46d
	.4byte	.LLST13
	.uleb128 0x1d
	.4byte	.LVL12
	.4byte	0x17ad
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0xc
	.4byte	0x3ff00450
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	0x45d
	.4byte	.LBB88
	.4byte	.LBE88-.LBB88
	.byte	0x1
	.2byte	0x1ce
	.4byte	0x71b
	.uleb128 0x24
	.4byte	0x46d
	.4byte	.LLST14
	.uleb128 0x1d
	.4byte	.LVL14
	.4byte	0x17ad
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0xc
	.4byte	0x3ff00454
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	0x45d
	.4byte	.LBB90
	.4byte	.LBE90-.LBB90
	.byte	0x1
	.2byte	0x1cf
	.4byte	0x74c
	.uleb128 0x24
	.4byte	0x46d
	.4byte	.LLST15
	.uleb128 0x1d
	.4byte	.LVL15
	.4byte	0x17ad
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0xc
	.4byte	0x3ff00458
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	0x45d
	.4byte	.LBB92
	.4byte	.LBE92-.LBB92
	.byte	0x1
	.2byte	0x1d0
	.4byte	0x77d
	.uleb128 0x24
	.4byte	0x46d
	.4byte	.LLST16
	.uleb128 0x1d
	.4byte	.LVL17
	.4byte	0x17ad
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0xc
	.4byte	0x3ff0045c
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	0x45d
	.4byte	.LBB94
	.4byte	.LBE94-.LBB94
	.byte	0x1
	.2byte	0x1d1
	.4byte	0x7ae
	.uleb128 0x24
	.4byte	0x46d
	.4byte	.LLST17
	.uleb128 0x1d
	.4byte	.LVL18
	.4byte	0x17ad
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0xc
	.4byte	0x3ff00460
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	0x45d
	.4byte	.LBB96
	.4byte	.LBE96-.LBB96
	.byte	0x1
	.2byte	0x1d2
	.4byte	0x7df
	.uleb128 0x24
	.4byte	0x46d
	.4byte	.LLST18
	.uleb128 0x1d
	.4byte	.LVL19
	.4byte	0x17ad
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0xc
	.4byte	0x3ff00464
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	0x45d
	.4byte	.LBB98
	.4byte	.LBE98-.LBB98
	.byte	0x1
	.2byte	0x1d5
	.4byte	0x810
	.uleb128 0x24
	.4byte	0x46d
	.4byte	.LLST19
	.uleb128 0x1d
	.4byte	.LVL21
	.4byte	0x17ad
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0xc
	.4byte	0x3ff0046c
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	0x45d
	.4byte	.LBB100
	.4byte	.LBE100-.LBB100
	.byte	0x1
	.2byte	0x1d6
	.4byte	0x841
	.uleb128 0x24
	.4byte	0x46d
	.4byte	.LLST20
	.uleb128 0x1d
	.4byte	.LVL22
	.4byte	0x17ad
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0xc
	.4byte	0x3ff00470
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	0x45d
	.4byte	.LBB102
	.4byte	.LBE102-.LBB102
	.byte	0x1
	.2byte	0x1d7
	.4byte	0x872
	.uleb128 0x24
	.4byte	0x46d
	.4byte	.LLST21
	.uleb128 0x1d
	.4byte	.LVL23
	.4byte	0x17ad
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0xc
	.4byte	0x3ff00474
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	0x45d
	.4byte	.LBB104
	.4byte	.LBE104-.LBB104
	.byte	0x1
	.2byte	0x1d8
	.4byte	0x8a3
	.uleb128 0x24
	.4byte	0x46d
	.4byte	.LLST22
	.uleb128 0x1d
	.4byte	.LVL25
	.4byte	0x17ad
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0xc
	.4byte	0x3ff00478
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	0x45d
	.4byte	.LBB106
	.4byte	.LBE106-.LBB106
	.byte	0x1
	.2byte	0x1d9
	.4byte	0x8d4
	.uleb128 0x24
	.4byte	0x46d
	.4byte	.LLST23
	.uleb128 0x1d
	.4byte	.LVL27
	.4byte	0x17ad
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0xc
	.4byte	0x3ff0047c
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	0x45d
	.4byte	.LBB108
	.4byte	.LBE108-.LBB108
	.byte	0x1
	.2byte	0x1da
	.4byte	0x905
	.uleb128 0x24
	.4byte	0x46d
	.4byte	.LLST24
	.uleb128 0x1d
	.4byte	.LVL28
	.4byte	0x17ad
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0xc
	.4byte	0x3ff00480
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	0x45d
	.4byte	.LBB110
	.4byte	.LBE110-.LBB110
	.byte	0x1
	.2byte	0x1db
	.4byte	0x936
	.uleb128 0x24
	.4byte	0x46d
	.4byte	.LLST25
	.uleb128 0x1d
	.4byte	.LVL30
	.4byte	0x17ad
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0xc
	.4byte	0x3ff00484
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	0x45d
	.4byte	.LBB112
	.4byte	.LBE112-.LBB112
	.byte	0x1
	.2byte	0x1dc
	.4byte	0x967
	.uleb128 0x24
	.4byte	0x46d
	.4byte	.LLST26
	.uleb128 0x1d
	.4byte	.LVL31
	.4byte	0x17ad
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0xc
	.4byte	0x3ff00488
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	0x45d
	.4byte	.LBB114
	.4byte	.LBE114-.LBB114
	.byte	0x1
	.2byte	0x1dd
	.4byte	0x998
	.uleb128 0x24
	.4byte	0x46d
	.4byte	.LLST27
	.uleb128 0x1d
	.4byte	.LVL32
	.4byte	0x17ad
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0xc
	.4byte	0x3ff0048c
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL35
	.4byte	0x17b8
	.uleb128 0x26
	.4byte	.LVL36
	.4byte	0x17c3
	.4byte	0x9dc
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC24
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC26
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC24
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL37
	.4byte	0x17b8
	.uleb128 0x1d
	.4byte	.LVL38
	.4byte	0x17c3
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC24
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC28
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC24
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LASF122
	.byte	0x1
	.byte	0xcb
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb1c
	.uleb128 0x28
	.4byte	.LASF123
	.byte	0x1
	.byte	0xcb
	.4byte	0xb1c
	.4byte	.LLST28
	.uleb128 0x29
	.string	"str"
	.byte	0x1
	.byte	0xd5
	.4byte	0x9c
	.4byte	.LLST29
	.uleb128 0x2a
	.4byte	.LASF124
	.byte	0x1
	.byte	0xeb
	.4byte	0xbd
	.4byte	.LLST30
	.uleb128 0x2b
	.4byte	.LASF128
	.4byte	0xb37
	.uleb128 0x25
	.4byte	.LVL45
	.4byte	0x17b8
	.uleb128 0x26
	.4byte	.LVL46
	.4byte	0x17c3
	.4byte	0xaa5
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC24
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC61
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC24
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL50
	.4byte	0x17b8
	.uleb128 0x26
	.4byte	.LVL51
	.4byte	0x17c3
	.4byte	0xae2
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC24
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC69
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC24
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL61
	.4byte	0x17b8
	.uleb128 0x1d
	.4byte	.LVL62
	.4byte	0x17c3
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC24
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC71
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC24
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb22
	.uleb128 0x7
	.4byte	0x40c
	.uleb128 0x11
	.4byte	0x95
	.4byte	0xb37
	.uleb128 0x12
	.4byte	0x85
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.4byte	0xb27
	.uleb128 0x2c
	.4byte	.LASF186
	.byte	0x1
	.2byte	0x113
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb84
	.uleb128 0x22
	.string	"cfg"
	.byte	0x1
	.2byte	0x116
	.4byte	0x2c7
	.4byte	.LLST31
	.uleb128 0x25
	.4byte	.LVL63
	.4byte	0x17ce
	.uleb128 0x25
	.4byte	.LVL72
	.4byte	0x17da
	.uleb128 0x1d
	.4byte	.LVL73
	.4byte	0x17e6
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x130
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd3d
	.uleb128 0x2d
	.4byte	.LASF126
	.byte	0x1
	.2byte	0x130
	.4byte	0xb1c
	.4byte	.LLST32
	.uleb128 0x21
	.4byte	.LASF127
	.byte	0x1
	.2byte	0x132
	.4byte	0x25
	.4byte	.LLST33
	.uleb128 0x22
	.string	"drv"
	.byte	0x1
	.2byte	0x133
	.4byte	0x25
	.4byte	.LLST34
	.uleb128 0x2e
	.4byte	.LASF149
	.byte	0x1
	.2byte	0x143
	.4byte	0xd3d
	.uleb128 0x2b
	.4byte	.LASF128
	.4byte	0xd58
	.uleb128 0x21
	.4byte	.LASF129
	.byte	0x1
	.2byte	0x156
	.4byte	0xbd
	.4byte	.LLST35
	.uleb128 0x21
	.4byte	.LASF130
	.byte	0x1
	.2byte	0x157
	.4byte	0xbd
	.4byte	.LLST35
	.uleb128 0x2f
	.4byte	.LBB135
	.4byte	.LBE135-.LBB135
	.uleb128 0x21
	.4byte	.LASF131
	.byte	0x1
	.2byte	0x169
	.4byte	0xd5d
	.4byte	.LLST37
	.uleb128 0x25
	.4byte	.LVL97
	.4byte	0x17f2
	.uleb128 0x26
	.4byte	.LVL99
	.4byte	0x17fd
	.4byte	0xc43
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x3b
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x35
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x26
	.4byte	.LVL100
	.4byte	0x17fd
	.4byte	0xc65
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x37
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x26
	.4byte	.LVL101
	.4byte	0x1808
	.4byte	0xc82
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x37
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x26
	.4byte	.LVL102
	.4byte	0x17fd
	.4byte	0xca4
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x38
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x26
	.4byte	.LVL103
	.4byte	0x1808
	.4byte	0xcc1
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x38
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x26
	.4byte	.LVL104
	.4byte	0x17fd
	.4byte	0xce3
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x3a
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x26
	.4byte	.LVL105
	.4byte	0x1808
	.4byte	0xd00
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x3a
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x26
	.4byte	.LVL106
	.4byte	0x17fd
	.4byte	0xd22
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x39
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL107
	.4byte	0x1808
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x39
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	0xa7
	.4byte	0xd48
	.uleb128 0x30
	.byte	0
	.uleb128 0x11
	.4byte	0x95
	.4byte	0xd58
	.uleb128 0x12
	.4byte	0x85
	.byte	0x14
	.byte	0
	.uleb128 0x7
	.4byte	0xd48
	.uleb128 0x7
	.4byte	0xbd
	.uleb128 0x1a
	.4byte	.LASF132
	.byte	0x1
	.2byte	0x1f0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe58
	.uleb128 0x21
	.4byte	.LASF133
	.byte	0x1
	.2byte	0x1f2
	.4byte	0x25
	.4byte	.LLST38
	.uleb128 0x31
	.4byte	.LASF134
	.byte	0x1
	.2byte	0x1f3
	.4byte	0xe58
	.uleb128 0x26
	.4byte	.LVL110
	.4byte	0x1813
	.4byte	0xda7
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x26
	.4byte	.LVL111
	.4byte	0x1813
	.4byte	0xdba
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x25
	.4byte	.LVL112
	.4byte	0x17b8
	.uleb128 0x26
	.4byte	.LVL113
	.4byte	0x17c3
	.4byte	0xdf1
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC24
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC87
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC24
	.byte	0
	.uleb128 0x25
	.4byte	.LVL116
	.4byte	0x17b8
	.uleb128 0x26
	.4byte	.LVL117
	.4byte	0x17c3
	.4byte	0xe28
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC24
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC89
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC24
	.byte	0
	.uleb128 0x26
	.4byte	.LVL119
	.4byte	0x563
	.4byte	0xe3b
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x26
	.4byte	.LVL120
	.4byte	0x563
	.4byte	0xe4e
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x25
	.4byte	.LVL121
	.4byte	0x4f4
	.byte	0
	.uleb128 0x11
	.4byte	0x1c2
	.4byte	0xe68
	.uleb128 0x12
	.4byte	0x85
	.byte	0x1
	.byte	0
	.uleb128 0x27
	.4byte	.LASF135
	.byte	0x1
	.byte	0xac
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfa5
	.uleb128 0x28
	.4byte	.LASF126
	.byte	0x1
	.byte	0xac
	.4byte	0xb1c
	.4byte	.LLST39
	.uleb128 0x2a
	.4byte	.LASF136
	.byte	0x1
	.byte	0xae
	.4byte	0xbd
	.4byte	.LLST40
	.uleb128 0x32
	.4byte	0x4b9
	.4byte	.LBB150
	.4byte	.LBE150-.LBB150
	.byte	0x1
	.byte	0xc2
	.4byte	0xee4
	.uleb128 0x33
	.4byte	0x4c5
	.byte	0
	.uleb128 0x2f
	.4byte	.LBB151
	.4byte	.LBE151-.LBB151
	.uleb128 0x25
	.4byte	.LVL132
	.4byte	0x181e
	.uleb128 0x26
	.4byte	.LVL133
	.4byte	0x1829
	.4byte	0xed9
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x25
	.4byte	.LVL134
	.4byte	0x1834
	.byte	0
	.byte	0
	.uleb128 0x32
	.4byte	0x499
	.4byte	.LBB152
	.4byte	.LBE152-.LBB152
	.byte	0x1
	.byte	0xc7
	.4byte	0xf2d
	.uleb128 0x33
	.4byte	0x4a5
	.byte	0
	.uleb128 0x2f
	.4byte	.LBB153
	.4byte	.LBE153-.LBB153
	.uleb128 0x25
	.4byte	.LVL136
	.4byte	0x181e
	.uleb128 0x26
	.4byte	.LVL137
	.4byte	0x183f
	.4byte	0xf22
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x25
	.4byte	.LVL138
	.4byte	0x1834
	.byte	0
	.byte	0
	.uleb128 0x32
	.4byte	0x479
	.4byte	.LBB154
	.4byte	.LBE154-.LBB154
	.byte	0x1
	.byte	0xc8
	.4byte	0xf76
	.uleb128 0x33
	.4byte	0x485
	.byte	0
	.uleb128 0x2f
	.4byte	.LBB155
	.4byte	.LBE155-.LBB155
	.uleb128 0x25
	.4byte	.LVL139
	.4byte	0x181e
	.uleb128 0x26
	.4byte	.LVL140
	.4byte	0x184a
	.4byte	0xf6b
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x25
	.4byte	.LVL141
	.4byte	0x1834
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL135
	.4byte	0x1855
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x4
	.byte	0x72
	.sleb128 0
	.byte	0x44
	.byte	0x24
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x40
	.byte	0x3c
	.byte	0x24
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1000
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0xa
	.2byte	0x100
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x3
	.byte	0xa
	.2byte	0xffff
	.byte	0
	.byte	0
	.uleb128 0x34
	.4byte	.LASF187
	.byte	0x1
	.2byte	0x209
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1042
	.uleb128 0x35
	.4byte	.LASF137
	.byte	0x1
	.2byte	0x209
	.4byte	0x9c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x35
	.4byte	.LASF138
	.byte	0x1
	.2byte	0x209
	.4byte	0x25
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x35
	.4byte	.LASF139
	.byte	0x1
	.2byte	0x209
	.4byte	0x9c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x35
	.4byte	.LASF140
	.byte	0x1
	.2byte	0x209
	.4byte	0x9c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x25
	.4byte	.LVL143
	.4byte	0x17b8
	.uleb128 0x1d
	.4byte	.LVL144
	.4byte	0x17c3
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC24
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC96
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC24
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x71
	.sleb128 8
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	.LASF141
	.byte	0x4
	.2byte	0x10d
	.byte	0x3
	.4byte	0x1069
	.uleb128 0x37
	.4byte	.LASF142
	.byte	0x4
	.2byte	0x10d
	.4byte	0xa7
	.uleb128 0x38
	.4byte	.LASF128
	.4byte	0x1079
	.4byte	.LASF141
	.byte	0
	.uleb128 0x11
	.4byte	0x95
	.4byte	0x1079
	.uleb128 0x12
	.4byte	0x85
	.byte	0x11
	.byte	0
	.uleb128 0x7
	.4byte	0x1069
	.uleb128 0x1a
	.4byte	.LASF143
	.byte	0x1
	.2byte	0x18f
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x110c
	.uleb128 0x39
	.4byte	.LASF144
	.byte	0x1
	.2byte	0x195
	.4byte	0x110c
	.byte	0
	.uleb128 0x3a
	.4byte	.LASF145
	.byte	0x1
	.2byte	0x1b6
	.4byte	0x110c
	.4byte	0x1c200
	.uleb128 0x1b
	.4byte	0x1042
	.4byte	.LBB160
	.4byte	.LBE160-.LBB160
	.byte	0x1
	.2byte	0x19b
	.4byte	0x10e1
	.uleb128 0x33
	.4byte	0x104f
	.byte	0
	.uleb128 0x2f
	.4byte	.LBB161
	.4byte	.LBE161-.LBB161
	.uleb128 0x3b
	.4byte	0x105b
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3403
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL146
	.4byte	0x1861
	.uleb128 0x25
	.4byte	.LVL147
	.4byte	0x186c
	.uleb128 0x25
	.4byte	.LVL149
	.4byte	0x1878
	.uleb128 0x1d
	.4byte	.LVL150
	.4byte	0x1884
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0x25
	.uleb128 0x3c
	.4byte	.LASF146
	.byte	0x1
	.byte	0x76
	.4byte	0x2d3
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x12c4
	.uleb128 0x3d
	.4byte	.LASF147
	.byte	0x1
	.byte	0x7b
	.4byte	0x40c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2b
	.4byte	.LASF128
	.4byte	0x12d4
	.uleb128 0x25
	.4byte	.LVL151
	.4byte	0xb3c
	.uleb128 0x25
	.4byte	.LVL152
	.4byte	0x188f
	.uleb128 0x26
	.4byte	.LVL153
	.4byte	0x189a
	.4byte	0x1178
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1000
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x48
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x25
	.4byte	.LVL154
	.4byte	0x17b8
	.uleb128 0x26
	.4byte	.LVL155
	.4byte	0x17c3
	.4byte	0x11af
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC24
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC112
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC24
	.byte	0
	.uleb128 0x26
	.4byte	.LVL156
	.4byte	0xb84
	.4byte	0x11c3
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x25
	.4byte	.LVL157
	.4byte	0x18a5
	.uleb128 0x25
	.4byte	.LVL158
	.4byte	0x107e
	.uleb128 0x25
	.4byte	.LVL159
	.4byte	0xd62
	.uleb128 0x25
	.4byte	.LVL160
	.4byte	0x17b8
	.uleb128 0x26
	.4byte	.LVL161
	.4byte	0x17c3
	.4byte	0x1218
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC116
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC114
	.byte	0
	.uleb128 0x25
	.4byte	.LVL162
	.4byte	0x17b8
	.uleb128 0x26
	.4byte	.LVL163
	.4byte	0x17c3
	.4byte	0x1249
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC118
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL164
	.4byte	0x18b0
	.4byte	0x125c
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x25
	.4byte	.LVL165
	.4byte	0x18bb
	.uleb128 0x25
	.4byte	.LVL166
	.4byte	0x17b8
	.uleb128 0x26
	.4byte	.LVL167
	.4byte	0x17c3
	.4byte	0x1296
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC123
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL168
	.4byte	0x18c7
	.uleb128 0x26
	.4byte	.LVL169
	.4byte	0xa1d
	.4byte	0x12b3
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL170
	.4byte	0xe68
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	0x95
	.4byte	0x12d4
	.uleb128 0x12
	.4byte	0x85
	.byte	0xf
	.byte	0
	.uleb128 0x7
	.4byte	0x12c4
	.uleb128 0x3e
	.4byte	.LASF188
	.byte	0x5
	.byte	0x41
	.byte	0x3
	.4byte	0x12fc
	.uleb128 0x3f
	.4byte	.LASF148
	.byte	0x5
	.byte	0x43
	.4byte	0x130c
	.uleb128 0x40
	.uleb128 0x19
	.string	"i"
	.byte	0x5
	.byte	0x44
	.4byte	0x25
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	0xbd
	.4byte	0x130c
	.uleb128 0x12
	.4byte	0x85
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.4byte	0x12fc
	.uleb128 0x41
	.4byte	.LASF189
	.byte	0x1
	.byte	0x47
	.4byte	0x2d3
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1736
	.uleb128 0x42
	.4byte	.LASF128
	.4byte	0x1736
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$4790
	.uleb128 0x32
	.4byte	0x12d9
	.4byte	.LBB196
	.4byte	.LBE196-.LBB196
	.byte	0x1
	.byte	0x49
	.4byte	0x1422
	.uleb128 0x2f
	.4byte	.LBB197
	.4byte	.LBE197-.LBB197
	.uleb128 0x3b
	.4byte	0x12e5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x43
	.4byte	.LBB198
	.4byte	.LBE198-.LBB198
	.4byte	0x13bc
	.uleb128 0x44
	.4byte	0x12f1
	.4byte	.LLST41
	.uleb128 0x32
	.4byte	0x43a
	.4byte	.LBB199
	.4byte	.LBE199-.LBB199
	.byte	0x5
	.byte	0x45
	.4byte	0x1399
	.uleb128 0x24
	.4byte	0x451
	.4byte	.LLST42
	.uleb128 0x24
	.4byte	0x446
	.4byte	.LLST43
	.byte	0
	.uleb128 0x45
	.4byte	0x417
	.4byte	.LBB201
	.4byte	.LBE201-.LBB201
	.byte	0x5
	.byte	0x46
	.uleb128 0x24
	.4byte	0x42e
	.4byte	.LLST44
	.uleb128 0x24
	.4byte	0x423
	.4byte	.LLST45
	.byte	0
	.byte	0
	.uleb128 0x32
	.4byte	0x43a
	.4byte	.LBB203
	.4byte	.LBE203-.LBB203
	.byte	0x5
	.byte	0x48
	.4byte	0x13df
	.uleb128 0x33
	.4byte	0x451
	.byte	0
	.uleb128 0x1c
	.4byte	0x446
	.4byte	0x20000000
	.byte	0
	.uleb128 0x32
	.4byte	0x417
	.4byte	.LBB205
	.4byte	.LBE205-.LBB205
	.byte	0x5
	.byte	0x49
	.4byte	0x1402
	.uleb128 0x33
	.4byte	0x42e
	.byte	0
	.uleb128 0x1c
	.4byte	0x423
	.4byte	0x20000000
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL171
	.4byte	0x18d2
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x44
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x43
	.4byte	.LBB207
	.4byte	.LBE207-.LBB207
	.4byte	0x151b
	.uleb128 0x46
	.string	"sp"
	.byte	0x1
	.byte	0x4e
	.4byte	0x173b
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x32
	.4byte	0x4d9
	.4byte	.LBB208
	.4byte	.LBE208-.LBB208
	.byte	0x1
	.byte	0x4e
	.4byte	0x1462
	.uleb128 0x2f
	.4byte	.LBB209
	.4byte	.LBE209-.LBB209
	.uleb128 0x44
	.4byte	0x4e9
	.4byte	.LLST46
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL179
	.4byte	0xfa5
	.4byte	0x1491
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC132
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x4f
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$4790
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC129
	.byte	0
	.uleb128 0x26
	.4byte	.LVL180
	.4byte	0xfa5
	.4byte	0x14c0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC132
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x50
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$4790
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC136
	.byte	0
	.uleb128 0x26
	.4byte	.LVL181
	.4byte	0xfa5
	.4byte	0x14ef
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC132
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x51
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$4790
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC138
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL182
	.4byte	0xfa5
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC132
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x52
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$4790
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC140
	.byte	0
	.byte	0
	.uleb128 0x32
	.4byte	0x4b9
	.4byte	.LBB210
	.4byte	.LBE210-.LBB210
	.byte	0x1
	.byte	0x5b
	.4byte	0x1564
	.uleb128 0x33
	.4byte	0x4c5
	.byte	0
	.uleb128 0x2f
	.4byte	.LBB211
	.4byte	.LBE211-.LBB211
	.uleb128 0x25
	.4byte	.LVL184
	.4byte	0x181e
	.uleb128 0x26
	.4byte	.LVL185
	.4byte	0x1829
	.4byte	0x1559
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x25
	.4byte	.LVL186
	.4byte	0x1834
	.byte	0
	.byte	0
	.uleb128 0x32
	.4byte	0x4b9
	.4byte	.LBB212
	.4byte	.LBE212-.LBB212
	.byte	0x1
	.byte	0x5c
	.4byte	0x15ad
	.uleb128 0x33
	.4byte	0x4c5
	.byte	0x1
	.uleb128 0x2f
	.4byte	.LBB213
	.4byte	.LBE213-.LBB213
	.uleb128 0x25
	.4byte	.LVL187
	.4byte	0x181e
	.uleb128 0x26
	.4byte	.LVL188
	.4byte	0x1829
	.4byte	0x15a2
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x25
	.4byte	.LVL189
	.4byte	0x1834
	.byte	0
	.byte	0
	.uleb128 0x32
	.4byte	0x499
	.4byte	.LBB214
	.4byte	.LBE214-.LBB214
	.byte	0x1
	.byte	0x5d
	.4byte	0x15f6
	.uleb128 0x33
	.4byte	0x4a5
	.byte	0
	.uleb128 0x2f
	.4byte	.LBB215
	.4byte	.LBE215-.LBB215
	.uleb128 0x25
	.4byte	.LVL190
	.4byte	0x181e
	.uleb128 0x26
	.4byte	.LVL191
	.4byte	0x183f
	.4byte	0x15eb
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x25
	.4byte	.LVL192
	.4byte	0x1834
	.byte	0
	.byte	0
	.uleb128 0x32
	.4byte	0x499
	.4byte	.LBB216
	.4byte	.LBE216-.LBB216
	.byte	0x1
	.byte	0x5e
	.4byte	0x163f
	.uleb128 0x33
	.4byte	0x4a5
	.byte	0x1
	.uleb128 0x2f
	.4byte	.LBB217
	.4byte	.LBE217-.LBB217
	.uleb128 0x25
	.4byte	.LVL193
	.4byte	0x181e
	.uleb128 0x26
	.4byte	.LVL194
	.4byte	0x183f
	.4byte	0x1634
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x25
	.4byte	.LVL195
	.4byte	0x1834
	.byte	0
	.byte	0
	.uleb128 0x32
	.4byte	0x45d
	.4byte	.LBB218
	.4byte	.LBE218-.LBB218
	.byte	0x1
	.byte	0x60
	.4byte	0x166c
	.uleb128 0x1c
	.4byte	0x46d
	.4byte	0x3ff0005c
	.uleb128 0x1d
	.4byte	.LVL198
	.4byte	0x17ad
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x32
	.4byte	0x45d
	.4byte	.LBB220
	.4byte	.LBE220-.LBB220
	.byte	0x1
	.byte	0x62
	.4byte	0x1699
	.uleb128 0x1c
	.4byte	0x46d
	.4byte	0x3ff0005c
	.uleb128 0x1d
	.4byte	.LVL200
	.4byte	0x17ad
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x32
	.4byte	0x45d
	.4byte	.LBB222
	.4byte	.LBE222-.LBB222
	.byte	0x1
	.byte	0x6d
	.4byte	0x16c6
	.uleb128 0x1c
	.4byte	0x46d
	.4byte	0x3ff00044
	.uleb128 0x1d
	.4byte	.LVL202
	.4byte	0x17ad
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x32
	.4byte	0x45d
	.4byte	.LBB224
	.4byte	.LBE224-.LBB224
	.byte	0x1
	.byte	0x6e
	.4byte	0x16f3
	.uleb128 0x1c
	.4byte	0x46d
	.4byte	0x3ff0005c
	.uleb128 0x1d
	.4byte	.LVL204
	.4byte	0x17ad
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL183
	.4byte	0x18db
	.4byte	0x1706
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x26
	.4byte	.LVL196
	.4byte	0x18e4
	.4byte	0x1719
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x26
	.4byte	.LVL199
	.4byte	0x18e4
	.4byte	0x172c
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x25
	.4byte	.LVL205
	.4byte	0x1111
	.byte	0
	.uleb128 0x7
	.4byte	0x12c4
	.uleb128 0x6
	.byte	0x4
	.4byte	0x25
	.uleb128 0x46
	.string	"TAG"
	.byte	0x1
	.byte	0x3c
	.4byte	0x1753
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC24
	.byte	0x9f
	.uleb128 0x7
	.4byte	0x9c
	.uleb128 0x2e
	.4byte	.LASF150
	.byte	0x8
	.2byte	0x21a
	.4byte	0x14a
	.uleb128 0x47
	.4byte	.LASF151
	.byte	0xd
	.byte	0x2c
	.4byte	0x30f
	.uleb128 0x5
	.byte	0x3
	.4byte	esp_image_spi_freq_t
	.uleb128 0x48
	.4byte	.LASF152
	.byte	0x1
	.byte	0x37
	.4byte	0x25
	.uleb128 0x48
	.4byte	.LASF153
	.byte	0x1
	.byte	0x38
	.4byte	0x25
	.uleb128 0x48
	.4byte	.LASF154
	.byte	0x1
	.byte	0x39
	.4byte	0x25
	.uleb128 0x48
	.4byte	.LASF155
	.byte	0x1
	.byte	0x3a
	.4byte	0x25
	.uleb128 0x2e
	.4byte	.LASF149
	.byte	0x1
	.2byte	0x143
	.4byte	0xd3d
	.uleb128 0x49
	.4byte	.LASF156
	.4byte	.LASF156
	.byte	0xe
	.byte	0x1e
	.uleb128 0x49
	.4byte	.LASF157
	.4byte	.LASF157
	.byte	0x9
	.byte	0x57
	.uleb128 0x49
	.4byte	.LASF158
	.4byte	.LASF158
	.byte	0x9
	.byte	0x6b
	.uleb128 0x4a
	.4byte	.LASF159
	.4byte	.LASF159
	.byte	0xb
	.2byte	0x25b
	.uleb128 0x4a
	.4byte	.LASF160
	.4byte	.LASF160
	.byte	0xb
	.2byte	0x264
	.uleb128 0x4a
	.4byte	.LASF161
	.4byte	.LASF161
	.byte	0xf
	.2byte	0x17f
	.uleb128 0x49
	.4byte	.LASF162
	.4byte	.LASF162
	.byte	0x10
	.byte	0x48
	.uleb128 0x49
	.4byte	.LASF163
	.4byte	.LASF163
	.byte	0x11
	.byte	0xed
	.uleb128 0x49
	.4byte	.LASF164
	.4byte	.LASF164
	.byte	0x11
	.byte	0xdd
	.uleb128 0x49
	.4byte	.LASF165
	.4byte	.LASF165
	.byte	0xa
	.byte	0x9a
	.uleb128 0x49
	.4byte	.LASF166
	.4byte	.LASF166
	.byte	0xe
	.byte	0x18
	.uleb128 0x49
	.4byte	.LASF110
	.4byte	.LASF110
	.byte	0x3
	.byte	0xa4
	.uleb128 0x49
	.4byte	.LASF167
	.4byte	.LASF167
	.byte	0xe
	.byte	0x19
	.uleb128 0x49
	.4byte	.LASF108
	.4byte	.LASF108
	.byte	0x3
	.byte	0x94
	.uleb128 0x49
	.4byte	.LASF107
	.4byte	.LASF107
	.byte	0x3
	.byte	0xb4
	.uleb128 0x4a
	.4byte	.LASF168
	.4byte	.LASF168
	.byte	0x8
	.2byte	0x16a
	.uleb128 0x49
	.4byte	.LASF169
	.4byte	.LASF169
	.byte	0x4
	.byte	0xae
	.uleb128 0x4a
	.4byte	.LASF170
	.4byte	.LASF170
	.byte	0xf
	.2byte	0x106
	.uleb128 0x4a
	.4byte	.LASF171
	.4byte	.LASF171
	.byte	0xb
	.2byte	0x166
	.uleb128 0x49
	.4byte	.LASF172
	.4byte	.LASF172
	.byte	0x4
	.byte	0xc6
	.uleb128 0x49
	.4byte	.LASF173
	.4byte	.LASF173
	.byte	0x12
	.byte	0x21
	.uleb128 0x49
	.4byte	.LASF174
	.4byte	.LASF174
	.byte	0x13
	.byte	0x4a
	.uleb128 0x49
	.4byte	.LASF175
	.4byte	.LASF175
	.byte	0x14
	.byte	0x15
	.uleb128 0x49
	.4byte	.LASF176
	.4byte	.LASF176
	.byte	0xf
	.byte	0xa3
	.uleb128 0x4a
	.4byte	.LASF177
	.4byte	.LASF177
	.byte	0x8
	.2byte	0x148
	.uleb128 0x49
	.4byte	.LASF178
	.4byte	.LASF178
	.byte	0x15
	.byte	0x21
	.uleb128 0x4b
	.4byte	.LASF179
	.4byte	.LASF179
	.uleb128 0x4b
	.4byte	.LASF180
	.4byte	.LASF180
	.uleb128 0x49
	.4byte	.LASF181
	.4byte	.LASF181
	.byte	0x3
	.byte	0x28
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
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
	.uleb128 0x5
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
	.uleb128 0xf
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
	.uleb128 0x17
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
	.uleb128 0x20
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x6
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x3b
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x3e
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3f
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
	.uleb128 0x40
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x41
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
	.uleb128 0x42
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
	.uleb128 0x43
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
	.uleb128 0x44
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x45
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
	.uleb128 0x46
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
	.uleb128 0x47
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
	.uleb128 0x48
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
	.uleb128 0x49
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
	.uleb128 0x4a
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
	.uleb128 0x4b
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
	.4byte	.LVL4
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL11
	.4byte	.LVL20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL24
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL5
	.4byte	.LVL11
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL24
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL5
	.4byte	.LVL9
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL22
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL5
	.4byte	.LVL8
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL5
	.4byte	.LVL14
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL27
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL5
	.4byte	.LVL16
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL29
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LFE29
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL5
	.4byte	.LVL17
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL30
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL5
	.4byte	.LVL18
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL31
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL5
	.4byte	.LVL19
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL32
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL5
	.4byte	.LVL13
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL26
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL7
	.4byte	.LVL20
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff00444
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL8
	.4byte	.LVL20
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff00448
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL9
	.4byte	.LVL20
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff0044c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL11
	.4byte	.LVL20
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff00450
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL13
	.4byte	.LVL20
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff00454
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL14
	.4byte	.LVL20
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff00458
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL16
	.4byte	.LVL20
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff0045c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL17
	.4byte	.LVL20
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff00460
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL18
	.4byte	.LVL20
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff00464
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL20
	.4byte	.LVL32
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff0046c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL21
	.4byte	.LVL32
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff00470
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL22
	.4byte	.LVL32
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff00474
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL24
	.4byte	.LVL32
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff00478
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL26
	.4byte	.LVL32
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff0047c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL27
	.4byte	.LVL32
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff00480
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL29
	.4byte	.LVL32
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff00484
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL30
	.4byte	.LVL32
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff00488
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff0048c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL39
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL54
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
	.4byte	.LVL57
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL59
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL60
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x6
	.byte	0x3
	.4byte	.LC34
	.byte	0x9f
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x6
	.byte	0x3
	.4byte	.LC36
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x6
	.byte	0x3
	.4byte	.LC34
	.byte	0x9f
	.4byte	.LVL44
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL49
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL53
	.4byte	.LVL55
	.2byte	0x6
	.byte	0x3
	.4byte	.LC54
	.byte	0x9f
	.4byte	.LVL55
	.4byte	.LVL57
	.2byte	0x6
	.byte	0x3
	.4byte	.LC58
	.byte	0x9f
	.4byte	.LVL57
	.4byte	.LVL59
	.2byte	0x6
	.byte	0x3
	.4byte	.LC56
	.byte	0x9f
	.4byte	.LVL59
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL60
	.4byte	.LFE24
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL48
	.4byte	.LVL50-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL64
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL66
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL70
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL73
	.4byte	.LFE25
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL74
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL77
	.4byte	.LVL81
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL81
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL82
	.4byte	.LFE26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL75
	.4byte	.LVL76
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL76
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL78
	.4byte	.LVL79
	.2byte	0x3
	.byte	0x79
	.sleb128 -2
	.byte	0x9f
	.4byte	.LVL81
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL83
	.4byte	.LVL84
	.2byte	0x3
	.byte	0x79
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL85
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL75
	.4byte	.LVL80
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL80
	.4byte	.LVL81
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL81
	.4byte	.LVL86
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL86
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL90
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL93
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL96
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL87
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL90
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL93
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL96
	.4byte	.LVL97-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL97
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL109
	.4byte	.LVL113
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL113
	.4byte	.LVL114
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL114
	.4byte	.LVL115
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL115
	.4byte	.LVL116-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL117
	.4byte	.LVL118
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL118
	.4byte	.LVL119-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL122
	.4byte	.LVL123
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL123
	.4byte	.LVL124
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL124
	.4byte	.LVL125
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL125
	.4byte	.LVL126
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL126
	.4byte	.LVL127
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL127
	.4byte	.LVL128
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL128
	.4byte	.LVL129
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL129
	.4byte	.LVL130
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL130
	.4byte	.LVL131
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL131
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL124
	.4byte	.LVL126
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	.LVL126
	.4byte	.LVL128
	.2byte	0x2
	.byte	0x38
	.byte	0x9f
	.4byte	.LVL128
	.4byte	.LVL130
	.2byte	0x2
	.byte	0x40
	.byte	0x9f
	.4byte	.LVL131
	.4byte	.LFE23
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL171
	.4byte	.LVL172
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL172
	.4byte	.LVL179-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL179
	.4byte	.LVL180-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL180
	.4byte	.LVL181-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL181
	.4byte	.LVL182-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL182
	.4byte	.LVL183-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL173
	.4byte	.LVL175
	.2byte	0x2
	.byte	0x3f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL173
	.4byte	.LVL175
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL174
	.4byte	.LVL175
	.2byte	0x2
	.byte	0x3f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL174
	.4byte	.LVL175
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL178
	.4byte	.LVL197
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x6c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF167:
	.string	"esp_dport_access_stall_other_cpu_end"
.LASF186:
	.string	"vddsdio_configure"
.LASF134:
	.string	"rst_reas"
.LASF153:
	.string	"_bss_end"
.LASF73:
	.string	"esp_err_t"
.LASF5:
	.string	"__uint8_t"
.LASF53:
	.string	"MAC_TRIG"
.LASF141:
	.string	"uart_tx_wait_idle"
.LASF160:
	.string	"rtc_vddsdio_set_config"
.LASF94:
	.string	"spi_size"
.LASF33:
	.string	"OWDT_RESET"
.LASF95:
	.string	"entry_addr"
.LASF45:
	.string	"RTCWDT_RTC_RESET"
.LASF72:
	.string	"rtc_vddsdio_config_t"
.LASF9:
	.string	"long long unsigned int"
.LASF158:
	.string	"esp_log_write"
.LASF32:
	.string	"SW_RESET"
.LASF116:
	.string	"data"
.LASF93:
	.string	"spi_speed"
.LASF177:
	.string	"esp_rom_spiflash_unlock"
.LASF88:
	.string	"ESP_IMAGE_FLASH_SIZE_16MB"
.LASF71:
	.string	"drefl"
.LASF69:
	.string	"drefh"
.LASF61:
	.string	"REJECT_INT"
.LASF54:
	.string	"UART0_TRIG"
.LASF70:
	.string	"drefm"
.LASF109:
	.string	"Cache_Read_Disable"
.LASF1:
	.string	"short unsigned int"
.LASF115:
	.string	"stat"
.LASF162:
	.string	"ets_efuse_get_spiconfig"
.LASF21:
	.string	"ESP_LOG_DEBUG"
.LASF8:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF64:
	.string	"RTC_TIME_VALID_INT"
.LASF122:
	.string	"print_flash_info"
.LASF89:
	.string	"ESP_IMAGE_FLASH_SIZE_MAX"
.LASF35:
	.string	"SDIO_RESET"
.LASF117:
	.string	"lsstat"
.LASF80:
	.string	"ESP_IMAGE_SPI_SPEED_40M"
.LASF10:
	.string	"long int"
.LASF126:
	.string	"pfhdr"
.LASF188:
	.string	"cpu_configure_region_protection"
.LASF111:
	.string	"get_sp"
.LASF139:
	.string	"func"
.LASF86:
	.string	"ESP_IMAGE_FLASH_SIZE_4MB"
.LASF179:
	.string	"memcpy"
.LASF113:
	.string	"wdt_reset_info_dump"
.LASF67:
	.string	"enable"
.LASF173:
	.string	"bootloader_read_flash_id"
.LASF55:
	.string	"UART1_TRIG"
.LASF133:
	.string	"wdt_rst"
.LASF107:
	.string	"Cache_Read_Enable_rom"
.LASF49:
	.string	"EXT_EVENT1_TRIG"
.LASF47:
	.string	"NO_SLEEP"
.LASF43:
	.string	"EXT_CPU_RESET"
.LASF138:
	.string	"line"
.LASF143:
	.string	"uart_console_configure"
.LASF7:
	.string	"__uint32_t"
.LASF106:
	.string	"Cache_Flush"
.LASF41:
	.string	"SW_CPU_RESET"
.LASF108:
	.string	"Cache_Flush_rom"
.LASF144:
	.string	"uart_num"
.LASF164:
	.string	"gpio_matrix_in"
.LASF31:
	.string	"POWERON_RESET"
.LASF101:
	.string	"attr"
.LASF48:
	.string	"EXT_EVENT0_TRIG"
.LASF159:
	.string	"rtc_vddsdio_get_config"
.LASF0:
	.string	"unsigned int"
.LASF25:
	.string	"block_size"
.LASF52:
	.string	"SDIO_TRIG"
.LASF77:
	.string	"ESP_IMAGE_SPI_MODE_DOUT"
.LASF12:
	.string	"long unsigned int"
.LASF44:
	.string	"RTCWDT_BROWN_OUT_RESET"
.LASF130:
	.string	"pkg_ver"
.LASF125:
	.string	"flash_gpio_configure"
.LASF146:
	.string	"bootloader_main"
.LASF136:
	.string	"size"
.LASF114:
	.string	"inst"
.LASF127:
	.string	"spi_cache_dummy"
.LASF170:
	.string	"ets_install_uart_printf"
.LASF19:
	.string	"ESP_LOG_WARN"
.LASF189:
	.string	"bootloader_init"
.LASF155:
	.string	"_data_end"
.LASF118:
	.string	"lsaddr"
.LASF4:
	.string	"short int"
.LASF175:
	.string	"bootloader_clock_configure"
.LASF46:
	.string	"RESET_REASON"
.LASF58:
	.string	"BT_TRIG"
.LASF176:
	.string	"ets_set_appcpu_boot_addr"
.LASF20:
	.string	"ESP_LOG_INFO"
.LASF28:
	.string	"status_mask"
.LASF87:
	.string	"ESP_IMAGE_FLASH_SIZE_8MB"
.LASF37:
	.string	"TG1WDT_SYS_RESET"
.LASF166:
	.string	"esp_dport_access_stall_other_cpu_start"
.LASF11:
	.string	"sizetype"
.LASF96:
	.string	"wp_pin"
.LASF68:
	.string	"tieh"
.LASF171:
	.string	"rtc_clk_apb_freq_get"
.LASF104:
	.string	"Cache_Read_Enable"
.LASF99:
	.string	"hash_appended"
.LASF132:
	.string	"wdt_reset_check"
.LASF51:
	.string	"TIMER_EXPIRE"
.LASF40:
	.string	"TGWDT_CPU_RESET"
.LASF38:
	.string	"RTCWDT_SYS_RESET"
.LASF151:
	.string	"esp_image_spi_freq_t"
.LASF105:
	.string	"cpu_no"
.LASF98:
	.string	"reserved"
.LASF91:
	.string	"segment_count"
.LASF85:
	.string	"ESP_IMAGE_FLASH_SIZE_2MB"
.LASF183:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/bootloader_init.c"
.LASF56:
	.string	"TOUCH_TRIG"
.LASF76:
	.string	"ESP_IMAGE_SPI_MODE_DIO"
.LASF168:
	.string	"esp_rom_spiflash_config_param"
.LASF27:
	.string	"page_size"
.LASF26:
	.string	"sector_size"
.LASF42:
	.string	"RTCWDT_CPU_RESET"
.LASF140:
	.string	"expr"
.LASF100:
	.string	"esp_image_header_t"
.LASF62:
	.string	"SDIO_IDLE_INT"
.LASF65:
	.string	"_Bool"
.LASF15:
	.string	"int32_t"
.LASF81:
	.string	"ESP_IMAGE_SPI_SPEED_26M"
.LASF36:
	.string	"TG0WDT_SYS_RESET"
.LASF150:
	.string	"g_rom_flashchip"
.LASF182:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF120:
	.string	"dstat"
.LASF39:
	.string	"INTRUSION_RESET"
.LASF50:
	.string	"GPIO_TRIG"
.LASF152:
	.string	"_bss_start"
.LASF180:
	.string	"memset"
.LASF137:
	.string	"file"
.LASF163:
	.string	"gpio_matrix_out"
.LASF157:
	.string	"esp_log_timestamp"
.LASF18:
	.string	"ESP_LOG_ERROR"
.LASF128:
	.string	"__func__"
.LASF181:
	.string	"mmu_init"
.LASF110:
	.string	"Cache_Read_Disable_rom"
.LASF57:
	.string	"SAR_TRIG"
.LASF90:
	.string	"magic"
.LASF97:
	.string	"spi_pin_drv"
.LASF119:
	.string	"lsdata"
.LASF60:
	.string	"WAKEUP_INT"
.LASF16:
	.string	"uint32_t"
.LASF145:
	.string	"uart_baud"
.LASF92:
	.string	"spi_mode"
.LASF142:
	.string	"uart_no"
.LASF84:
	.string	"ESP_IMAGE_FLASH_SIZE_1MB"
.LASF13:
	.string	"char"
.LASF22:
	.string	"ESP_LOG_VERBOSE"
.LASF169:
	.string	"uartAttach"
.LASF149:
	.string	"g_rom_spiflash_dummy_len_plus"
.LASF23:
	.string	"device_id"
.LASF74:
	.string	"ESP_IMAGE_SPI_MODE_QIO"
.LASF17:
	.string	"ESP_LOG_NONE"
.LASF184:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\bootloader_support"
.LASF154:
	.string	"_data_start"
.LASF172:
	.string	"uart_div_modify"
.LASF6:
	.string	"__int32_t"
.LASF78:
	.string	"ESP_IMAGE_SPI_MODE_FAST_READ"
.LASF124:
	.string	"spi_ctrl"
.LASF156:
	.string	"esp_dport_access_reg_read"
.LASF147:
	.string	"fhdr"
.LASF3:
	.string	"unsigned char"
.LASF59:
	.string	"NO_INT"
.LASF103:
	.string	"cpu_write_dtlb"
.LASF34:
	.string	"DEEPSLEEP_RESET"
.LASF102:
	.string	"cpu_write_itlb"
.LASF82:
	.string	"ESP_IMAGE_SPI_SPEED_20M"
.LASF24:
	.string	"chip_size"
.LASF165:
	.string	"rtc_get_reset_reason"
.LASF121:
	.string	"cpu_name"
.LASF148:
	.string	"pages_to_protect"
.LASF83:
	.string	"ESP_IMAGE_SPI_SPEED_80M"
.LASF14:
	.string	"uint8_t"
.LASF75:
	.string	"ESP_IMAGE_SPI_MODE_QOUT"
.LASF185:
	.string	"DPORT_REG_READ"
.LASF187:
	.string	"__assert_func"
.LASF112:
	.string	"wdt_reset_cpu0_info_enable"
.LASF135:
	.string	"update_flash_config"
.LASF131:
	.string	"spiconfig"
.LASF66:
	.string	"force"
.LASF178:
	.string	"bootloader_random_enable"
.LASF63:
	.string	"RTC_WDT_INT"
.LASF161:
	.string	"ets_delay_us"
.LASF29:
	.string	"esp_rom_spiflash_chip_t"
.LASF129:
	.string	"chip_ver"
.LASF30:
	.string	"NO_MEAN"
.LASF174:
	.string	"bootloader_flash_read"
.LASF123:
	.string	"phdr"
.LASF79:
	.string	"ESP_IMAGE_SPI_MODE_SLOW_READ"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
