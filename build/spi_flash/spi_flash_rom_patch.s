	.file	"spi_flash_rom_patch.c"
	.text
.Ltext0:
	.section	.text.spi_cache_mode_switch,"ax",@progbits
	.literal_position
	.literal .LC0, 16785408
	.literal .LC1, 1072967708
	.literal .LC2, -134217729
	.literal .LC3, 1879048192
	.literal .LC4, 1072967712
	.literal .LC5, 67108863
	.literal .LC6, 2080374784
	.literal .LC7, g_rom_spiflash_dummy_len_plus
	.literal .LC8, 1072967716
	.literal .LC9, -65536
	.literal .LC11, 1543503872
	.literal .LC15, -536870913
	.literal .LC16, 536870912
	.literal .LC17, 1342177280
	.align	4
	.type	spi_cache_mode_switch, @function
spi_cache_mode_switch:
.LFB11:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/spi_flash/spi_flash_rom_patch.c"
	.loc 1 310 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 311 0
	l32r	a8, .LC0
	and	a9, a2, a8
	bne	a9, a8, .L2
.LBB2:
	.loc 1 312 0
	l32r	a2, .LC1
.LVL1:
	memw
	l32i.n	a9, a2, 0
	l32r	a8, .LC2
	and	a8, a9, a8
	memw
	s32i.n	a8, a2, 0
.LBE2:
.LBB3:
	.loc 1 313 0
	memw
	l32i.n	a9, a2, 0
	l32r	a8, .LC3
	or	a8, a9, a8
	memw
	s32i.n	a8, a2, 0
.LBE3:
.LBB4:
.LBB5:
	.loc 1 314 0
	l32r	a9, .LC4
	memw
	l32i.n	a8, a9, 0
.LBE5:
	l32r	a2, .LC5
	and	a8, a8, a2
	l32r	a2, .LC6
	or	a2, a8, a2
	memw
	s32i.n	a2, a9, 0
.LBE4:
.LBB6:
.LBB7:
	.loc 1 315 0
	memw
	l32i.n	a8, a9, 0
.LBE7:
	movi	a2, -0x100
	and	a8, a8, a2
	l32r	a2, .LC7
	l8ui	a2, a2, 0
	addi.n	a2, a2, 3
	extui	a2, a2, 0, 8
	or	a2, a2, a8
	memw
	s32i.n	a2, a9, 0
.LBE6:
.LBB8:
.LBB9:
	.loc 1 316 0
	l32r	a9, .LC8
	memw
	l32i.n	a8, a9, 0
.LBE9:
	l32r	a2, .LC9
	and	a8, a8, a2
	movi	a2, 0xeb
	or	a2, a8, a2
	memw
	s32i.n	a2, a9, 0
.LBE8:
	retw.n
.LVL2:
.L2:
	.loc 1 317 0
	bbci	a2, 13, .L4
.LBB10:
	.loc 1 318 0
	l32r	a8, .LC1
	memw
	l32i.n	a10, a8, 0
	l32r	a9, .LC2
	and	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
.LBE10:
.LBB11:
	.loc 1 319 0
	memw
	l32i.n	a10, a8, 0
	l32r	a9, .LC3
	or	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
.LBE11:
.LBB12:
.LBB13:
	.loc 1 320 0
	l32r	a10, .LC4
	memw
	l32i.n	a9, a10, 0
.LBE13:
	l32r	a8, .LC5
	and	a9, a9, a8
	l32r	a8, .LC11
	or	a8, a9, a8
	memw
	s32i.n	a8, a10, 0
.LBE12:
	.loc 1 321 0
	bbci	a2, 20, .L5
.LBB14:
.LBB15:
	.loc 1 322 0
	l32r	a9, .LC8
	memw
	l32i.n	a8, a9, 0
.LBE15:
	l32r	a2, .LC9
.LVL3:
	and	a8, a8, a2
	movi	a2, 0x6b
	or	a2, a8, a2
	memw
	s32i.n	a2, a9, 0
.LBE14:
.LBB16:
.LBB17:
	.loc 1 323 0
	memw
	l32i.n	a8, a10, 0
.LBE17:
	movi	a2, -0x100
	and	a8, a8, a2
	l32r	a2, .LC7
	l8ui	a2, a2, 0
	addi.n	a2, a2, 7
	extui	a2, a2, 0, 8
	or	a2, a2, a8
	memw
	s32i.n	a2, a10, 0
.LBE16:
	retw.n
.LVL4:
.L5:
	.loc 1 324 0
	bbci	a2, 23, .L6
.LBB18:
.LBB19:
	.loc 1 325 0
	l32r	a9, .LC4
	memw
	l32i.n	a8, a9, 0
.LBE19:
	movi	a2, -0x100
.LVL5:
	and	a8, a8, a2
	l32r	a2, .LC7
	l8ui	a2, a2, 0
	addi.n	a2, a2, 3
	extui	a2, a2, 0, 8
	or	a2, a2, a8
	memw
	s32i.n	a2, a9, 0
.LBE18:
.LBB20:
.LBB21:
	.loc 1 326 0
	l32r	a9, .LC8
	memw
	l32i.n	a8, a9, 0
.LBE21:
	l32r	a2, .LC9
	and	a8, a8, a2
	movi	a2, 0xbb
	or	a2, a8, a2
	memw
	s32i.n	a2, a9, 0
.LBE20:
	retw.n
.LVL6:
.L6:
	.loc 1 327 0
	bbci	a2, 14, .L7
.LBB22:
.LBB23:
	.loc 1 328 0
	l32r	a9, .LC4
	memw
	l32i.n	a8, a9, 0
.LBE23:
	movi	a2, -0x100
.LVL7:
	and	a8, a8, a2
	l32r	a2, .LC7
	l8ui	a2, a2, 0
	addi.n	a2, a2, 7
	extui	a2, a2, 0, 8
	or	a2, a2, a8
	memw
	s32i.n	a2, a9, 0
.LBE22:
.LBB24:
.LBB25:
	.loc 1 329 0
	l32r	a9, .LC8
	memw
	l32i.n	a8, a9, 0
.LBE25:
	l32r	a2, .LC9
	and	a8, a8, a2
	movi.n	a2, 0x3b
	or	a2, a8, a2
	memw
	s32i.n	a2, a9, 0
.LBE24:
	retw.n
.LVL8:
.L7:
.LBB26:
.LBB27:
	.loc 1 331 0
	l32r	a9, .LC4
	memw
	l32i.n	a8, a9, 0
.LBE27:
	movi	a2, -0x100
.LVL9:
	and	a8, a8, a2
	l32r	a2, .LC7
	l8ui	a2, a2, 0
	addi.n	a2, a2, 7
	extui	a2, a2, 0, 8
	or	a2, a2, a8
	memw
	s32i.n	a2, a9, 0
.LBE26:
.LBB28:
.LBB29:
	.loc 1 332 0
	l32r	a9, .LC8
	memw
	l32i.n	a8, a9, 0
.LBE29:
	l32r	a2, .LC9
	and	a8, a8, a2
	movi.n	a2, 0xb
	or	a2, a8, a2
	memw
	s32i.n	a2, a9, 0
	retw.n
.LVL10:
.L4:
.LBE28:
.LBB30:
	.loc 1 335 0
	l32r	a8, .LC1
	memw
	l32i.n	a9, a8, 0
	l32r	a2, .LC2
.LVL11:
	and	a2, a9, a2
	memw
	s32i.n	a2, a8, 0
.LBE30:
	.loc 1 336 0
	l32r	a2, .LC7
	l8ui	a2, a2, 0
	bnez.n	a2, .L8
.LBB31:
	.loc 1 337 0
	memw
	l32i.n	a9, a8, 0
	l32r	a2, .LC15
	and	a2, a9, a2
	memw
	s32i.n	a2, a8, 0
.LBE31:
	j	.L9
.L8:
.LBB32:
	.loc 1 339 0
	l32r	a8, .LC1
	memw
	l32i.n	a9, a8, 0
	l32r	a2, .LC16
	or	a2, a9, a2
	memw
	s32i.n	a2, a8, 0
.LBE32:
.LBB33:
.LBB34:
	.loc 1 340 0
	l32r	a9, .LC4
	memw
	l32i.n	a8, a9, 0
.LBE34:
	movi	a2, -0x100
	and	a8, a8, a2
	l32r	a2, .LC7
	l8ui	a2, a2, 0
	addi.n	a2, a2, -1
	extui	a2, a2, 0, 8
	or	a2, a2, a8
	memw
	s32i.n	a2, a9, 0
.L9:
.LBE33:
.LBB35:
	.loc 1 342 0
	l32r	a8, .LC1
	memw
	l32i.n	a9, a8, 0
	l32r	a2, .LC17
	or	a2, a9, a2
	memw
	s32i.n	a2, a8, 0
.LBE35:
.LBB36:
.LBB37:
	.loc 1 343 0
	l32r	a9, .LC4
	memw
	l32i.n	a8, a9, 0
.LBE37:
	l32r	a2, .LC5
	and	a8, a8, a2
	l32r	a2, .LC11
	or	a2, a8, a2
	memw
	s32i.n	a2, a9, 0
.LBE36:
.LBB38:
.LBB39:
	.loc 1 344 0
	l32r	a9, .LC8
	memw
	l32i.n	a8, a9, 0
.LBE39:
	l32r	a2, .LC9
	and	a8, a8, a2
	movi.n	a2, 3
	or	a2, a8, a2
	memw
	s32i.n	a2, a9, 0
	retw.n
.LBE38:
.LFE11:
	.size	spi_cache_mode_switch, .-spi_cache_mode_switch
	.section	.text.esp_rom_spiflash_read_status,"ax",@progbits
	.literal_position
	.literal .LC18, g_rom_spiflash_dummy_len_plus
	.literal .LC19, 1072963600
	.literal .LC20, 1072963584
	.literal .LC21, 134217728
	.align	4
	.global	esp_rom_spiflash_read_status
	.type	esp_rom_spiflash_read_status, @function
esp_rom_spiflash_read_status:
.LFB7:
	.loc 1 248 0
.LVL12:
	entry	sp, 48
.LCFI1:
	.loc 1 249 0
	movi.n	a8, 1
	s32i.n	a8, sp, 0
	.loc 1 251 0
	l32r	a8, .LC18
	l8ui	a8, a8, 1
	beqz.n	a8, .L11
	j	.L12
.L14:
.LBB40:
	.loc 1 253 0
	movi.n	a9, 0
	l32r	a8, .LC19
	memw
	s32i.n	a9, a8, 0
.LBE40:
.LBB41:
	.loc 1 254 0
	l32r	a9, .LC21
	l32r	a8, .LC20
	memw
	s32i.n	a9, a8, 0
.L13:
.LBE41:
.LBB42:
	.loc 1 255 0 discriminator 1
	l32r	a8, .LC20
	memw
	l32i.n	a8, a8, 0
.LBE42:
	bnez.n	a8, .L13
.LBB43:
	.loc 1 257 0
	l32r	a8, .LC19
	memw
	l32i.n	a9, a8, 0
.LBE43:
	l32i.n	a8, a2, 20
	and	a8, a9, a8
	s32i.n	a8, sp, 0
.L11:
	.loc 1 252 0
	l32i.n	a8, sp, 0
	bbsi	a8, 0, .L14
	j	.L15
.L16:
	.loc 1 261 0
	movi.n	a11, 5
	mov.n	a10, sp
	call8	esp_rom_spiflash_read_user_cmd
.LVL13:
.L12:
	.loc 1 260 0
	l32i.n	a8, sp, 0
	bbsi	a8, 0, .L16
.L15:
	.loc 1 264 0
	l32i.n	a2, sp, 0
.LVL14:
	s32i.n	a2, a3, 0
	.loc 1 267 0
	movi.n	a2, 0
	retw.n
.LFE7:
	.size	esp_rom_spiflash_read_status, .-esp_rom_spiflash_read_status
	.section	.text.esp_rom_spiflash_wait_idle,"ax",@progbits
	.literal_position
	.literal .LC22, 1072963832
	.literal .LC23, 1072967928
	.align	4
	.global	esp_rom_spiflash_wait_idle
	.type	esp_rom_spiflash_wait_idle, @function
esp_rom_spiflash_wait_idle:
.LFB0:
	.loc 1 26 0
.LVL15:
	entry	sp, 48
.LCFI2:
	mov.n	a10, a2
.L18:
.LBB44:
	.loc 1 30 0 discriminator 1
	l32r	a8, .LC22
	memw
	l32i.n	a8, a8, 0
.LBE44:
	extui	a8, a8, 0, 3
	bnez.n	a8, .L18
.L19:
.LBB45:
	.loc 1 32 0 discriminator 1
	l32r	a8, .LC23
	memw
	l32i.n	a8, a8, 0
.LBE45:
	extui	a8, a8, 0, 3
	bnez.n	a8, .L19
	.loc 1 35 0
	mov.n	a11, sp
	call8	esp_rom_spiflash_read_status
.LVL16:
	beqz.n	a10, .L20
	.loc 1 36 0
	movi.n	a10, 1
.L20:
	.loc 1 39 0
	mov.n	a2, a10
.LVL17:
	retw.n
.LFE0:
	.size	esp_rom_spiflash_wait_idle, .-esp_rom_spiflash_wait_idle
	.section	.text.esp_rom_spiflash_erase_chip_internal,"ax",@progbits
	.literal_position
	.literal .LC24, 1072963584
	.literal .LC25, 4194304
	.align	4
	.type	esp_rom_spiflash_erase_chip_internal, @function
esp_rom_spiflash_erase_chip_internal:
.LFB2:
	.loc 1 93 0
.LVL18:
	entry	sp, 32
.LCFI3:
	.loc 1 94 0
	mov.n	a10, a2
	call8	esp_rom_spiflash_wait_idle
.LVL19:
.LBB46:
	.loc 1 97 0
	l32r	a9, .LC25
	l32r	a8, .LC24
	memw
	s32i.n	a9, a8, 0
.L22:
.LBE46:
.LBB47:
	.loc 1 98 0 discriminator 1
	l32r	a8, .LC24
	memw
	l32i.n	a8, a8, 0
.LBE47:
	bnez.n	a8, .L22
	.loc 1 101 0
	mov.n	a10, a2
	call8	esp_rom_spiflash_wait_idle
.LVL20:
	.loc 1 104 0
	movi.n	a2, 0
.LVL21:
	retw.n
.LFE2:
	.size	esp_rom_spiflash_erase_chip_internal, .-esp_rom_spiflash_erase_chip_internal
	.section	.text.esp_rom_spiflash_erase_block_internal,"ax",@progbits
	.literal_position
	.literal .LC26, 16777215
	.literal .LC27, 1072963588
	.literal .LC28, 1072963584
	.literal .LC29, 8388608
	.align	4
	.type	esp_rom_spiflash_erase_block_internal, @function
esp_rom_spiflash_erase_block_internal:
.LFB4:
	.loc 1 128 0
.LVL22:
	entry	sp, 32
.LCFI4:
	.loc 1 129 0
	mov.n	a10, a2
	call8	esp_rom_spiflash_wait_idle
.LVL23:
.LBB48:
	.loc 1 132 0
	l32r	a8, .LC26
	and	a3, a3, a8
.LVL24:
	l32r	a8, .LC27
	memw
	s32i.n	a3, a8, 0
.LBE48:
.LBB49:
	.loc 1 133 0
	l32r	a8, .LC29
	l32r	a3, .LC28
	memw
	s32i.n	a8, a3, 0
.L24:
.LBE49:
.LBB50:
	.loc 1 134 0 discriminator 1
	l32r	a8, .LC28
	memw
	l32i.n	a8, a8, 0
.LBE50:
	bnez.n	a8, .L24
	.loc 1 136 0
	mov.n	a10, a2
	call8	esp_rom_spiflash_wait_idle
.LVL25:
	.loc 1 139 0
	movi.n	a2, 0
.LVL26:
	retw.n
.LFE4:
	.size	esp_rom_spiflash_erase_block_internal, .-esp_rom_spiflash_erase_block_internal
	.section	.text.esp_rom_spiflash_erase_sector_internal,"ax",@progbits
	.literal_position
	.literal .LC30, 16777215
	.literal .LC31, 1072963588
	.literal .LC32, 1072963584
	.literal .LC33, 16777216
	.align	4
	.type	esp_rom_spiflash_erase_sector_internal, @function
esp_rom_spiflash_erase_sector_internal:
.LFB3:
	.loc 1 108 0
.LVL27:
	entry	sp, 32
.LCFI5:
	.loc 1 110 0
	extui	a8, a3, 0, 12
	bnez.n	a8, .L28
	.loc 1 114 0
	mov.n	a10, a2
	call8	esp_rom_spiflash_wait_idle
.LVL28:
.LBB51:
	.loc 1 117 0
	l32r	a8, .LC30
	and	a3, a3, a8
.LVL29:
	l32r	a8, .LC31
	memw
	s32i.n	a3, a8, 0
.LBE51:
.LBB52:
	.loc 1 118 0
	l32r	a8, .LC33
	l32r	a3, .LC32
	memw
	s32i.n	a8, a3, 0
.L27:
.LBE52:
.LBB53:
	.loc 1 119 0 discriminator 1
	l32r	a8, .LC32
	memw
	l32i.n	a8, a8, 0
.LBE53:
	bnez.n	a8, .L27
	.loc 1 121 0
	mov.n	a10, a2
	call8	esp_rom_spiflash_wait_idle
.LVL30:
	.loc 1 123 0
	movi.n	a2, 0
.LVL31:
	retw.n
.LVL32:
.L28:
	.loc 1 111 0
	movi.n	a2, 1
.LVL33:
	.loc 1 124 0
	retw.n
.LFE3:
	.size	esp_rom_spiflash_erase_sector_internal, .-esp_rom_spiflash_erase_sector_internal
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC41:
	.ascii	"\"(Cannot use READ_PERI_REG for DPORT registers use DPORT_"
	.string	"READ_PERI_REG)\" && (!((((((0x3ff42000 + (((1)>1) ? (((1)* 0x1000) + 0x20000) : (((~(1)) & 1)* 0x1000 ))) + 0x80) + i * 4)) >= 0x3ff00000) && ((((0x3ff42000 + (((1)>1) ? (((1)* 0x1000) + 0x20000) : (((~(1)) & 1)* 0x1000 ))) + 0x80) + i * 4)) <= 0x3ff13FFC))"
	.align	4
.LC44:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/spi_flash/spi_flash_rom_patch.c"
	.section	.text.esp_rom_spiflash_read_data,"ax",@progbits
	.literal_position
	.literal .LC34, 1072963628
	.literal .LC35, 1072963588
	.literal .LC36, 1072963584
	.literal .LC37, 262144
	.literal .LC38, 268240928
	.literal .LC39, -1072693248
	.literal .LC40, 81916
	.literal .LC42, .LC41
	.literal .LC43, __func__$2513
	.literal .LC45, .LC44
	.align	4
	.type	esp_rom_spiflash_read_data, @function
esp_rom_spiflash_read_data:
.LFB6:
	.loc 1 200 0
.LVL34:
	entry	sp, 32
.LCFI6:
	.loc 1 207 0
	add.n	a8, a5, a3
	l32i.n	a9, a2, 4
	bltu	a9, a8, .L45
.LVL35:
	.loc 1 214 0
	mov.n	a10, a2
	call8	esp_rom_spiflash_wait_idle
.LVL36:
	.loc 1 216 0
	j	.L31
.LVL37:
.L44:
	.loc 1 217 0
	movi.n	a8, 0x3f
	bge	a8, a5, .L32
.LBB54:
	.loc 1 219 0
	movi	a9, 0x1ff
	l32r	a8, .LC34
	memw
	s32i.n	a9, a8, 0
.LBE54:
.LBB55:
	.loc 1 220 0
	slli	a8, a3, 8
	l32r	a9, .LC35
	memw
	s32i.n	a8, a9, 0
.LBE55:
.LBB56:
	.loc 1 221 0
	l32r	a9, .LC37
	l32r	a8, .LC36
	memw
	s32i.n	a9, a8, 0
.L33:
.LBE56:
.LBB57:
	.loc 1 222 0 discriminator 1
	l32r	a8, .LC36
	memw
	l32i.n	a8, a8, 0
.LBE57:
	bnez.n	a8, .L33
	movi.n	a9, 0
	j	.L34
.LVL38:
.L36:
	.loc 1 225 0
	addi.n	a11, a4, 4
.LVL39:
.LBB58:
	l32r	a8, .LC38
	add.n	a8, a9, a8
	slli	a8, a8, 2
	l32r	a10, .LC39
	add.n	a10, a8, a10
	l32r	a12, .LC40
	bltu	a12, a10, .L35
	.loc 1 225 0 is_stmt 0 discriminator 1
	l32r	a13, .LC42
	l32r	a12, .LC43
	movi	a11, 0xe1
.LVL40:
	l32r	a10, .LC45
	call8	__assert_func
.LVL41:
.L35:
	.loc 1 225 0 discriminator 2
	memw
	l32i.n	a8, a8, 0
.LBE58:
	s32i.n	a8, a4, 0
	.loc 1 224 0 is_stmt 1 discriminator 2
	addi.n	a9, a9, 1
.LVL42:
	extui	a9, a9, 0, 8
.LVL43:
	.loc 1 225 0 discriminator 2
	mov.n	a4, a11
.LVL44:
.L34:
	.loc 1 224 0 discriminator 2
	movi.n	a8, 0xf
	bgeu	a8, a9, .L36
	.loc 1 227 0
	addi	a5, a5, -64
.LVL45:
	.loc 1 228 0
	addi	a3, a3, 64
.LVL46:
	j	.L31
.LVL47:
.L32:
.LBB59:
	.loc 1 231 0
	slli	a8, a3, 8
	l32r	a9, .LC35
	memw
	s32i.n	a8, a9, 0
.LBE59:
.LBB60:
	.loc 1 232 0
	movi	a9, 0x1ff
	l32r	a8, .LC34
	memw
	s32i.n	a9, a8, 0
.LBE60:
.LBB61:
	.loc 1 233 0
	l32r	a9, .LC37
	l32r	a8, .LC36
	memw
	s32i.n	a9, a8, 0
.L38:
.LBE61:
.LBB62:
	.loc 1 234 0 discriminator 1
	l32r	a8, .LC36
	memw
	l32i.n	a8, a8, 0
.LBE62:
	bnez.n	a8, .L38
	.loc 1 236 0
	extui	a8, a5, 0, 2
	bnez.n	a8, .L39
	.loc 1 236 0 is_stmt 0 discriminator 1
	extui	a5, a5, 2, 8
.LVL48:
	j	.L40
.LVL49:
.L39:
	.loc 1 236 0 discriminator 2
	srai	a5, a5, 2
.LVL50:
	addi.n	a5, a5, 1
	extui	a5, a5, 0, 8
.L40:
.LVL51:
	.loc 1 237 0 is_stmt 1 discriminator 4
	movi.n	a9, 0
	j	.L41
.LVL52:
.L43:
	.loc 1 238 0
	addi.n	a12, a4, 4
.LVL53:
.LBB63:
	l32r	a8, .LC38
	add.n	a8, a9, a8
	slli	a8, a8, 2
	l32r	a10, .LC39
	add.n	a10, a8, a10
	l32r	a11, .LC40
	bltu	a11, a10, .L42
	.loc 1 238 0 is_stmt 0 discriminator 1
	l32r	a13, .LC42
	l32r	a12, .LC43
.LVL54:
	movi	a11, 0xee
	l32r	a10, .LC45
	call8	__assert_func
.LVL55:
.L42:
	.loc 1 238 0 discriminator 2
	memw
	l32i.n	a8, a8, 0
.LBE63:
	s32i.n	a8, a4, 0
	.loc 1 237 0 is_stmt 1 discriminator 2
	addi.n	a9, a9, 1
.LVL56:
	extui	a9, a9, 0, 8
.LVL57:
	.loc 1 238 0 discriminator 2
	mov.n	a4, a12
.LVL58:
.L41:
	.loc 1 237 0 discriminator 2
	bltu	a9, a5, .L43
	.loc 1 240 0
	movi.n	a5, 0
.LVL59:
.L31:
	.loc 1 216 0
	bgei	a5, 1, .L44
	.loc 1 244 0
	movi.n	a2, 0
.LVL60:
	retw.n
.LVL61:
.L45:
	.loc 1 208 0
	movi.n	a2, 1
.LVL62:
	.loc 1 245 0
	retw.n
.LFE6:
	.size	esp_rom_spiflash_read_data, .-esp_rom_spiflash_read_data
	.section	.text.esp_rom_spiflash_enable_write,"ax",@progbits
	.literal_position
	.literal .LC46, 1072963584
	.literal .LC47, 1073741824
	.align	4
	.type	esp_rom_spiflash_enable_write, @function
esp_rom_spiflash_enable_write:
.LFB10:
	.loc 1 292 0
.LVL63:
	entry	sp, 48
.LCFI7:
	.loc 1 293 0
	movi.n	a8, 0
	s32i.n	a8, sp, 0
	.loc 1 295 0
	mov.n	a10, a2
	call8	esp_rom_spiflash_wait_idle
.LVL64:
.LBB64:
	.loc 1 298 0
	l32r	a9, .LC47
	l32r	a8, .LC46
	memw
	s32i.n	a9, a8, 0
.L47:
.LBE64:
.LBB65:
	.loc 1 299 0 discriminator 1
	l32r	a8, .LC46
	memw
	l32i.n	a8, a8, 0
.LBE65:
	bnez.n	a8, .L47
	j	.L48
.L49:
	.loc 1 303 0
	mov.n	a11, sp
	mov.n	a10, a2
	call8	esp_rom_spiflash_read_status
.LVL65:
.L48:
	.loc 1 302 0
	l32i.n	a8, sp, 0
	bbci	a8, 1, .L49
	.loc 1 307 0
	movi.n	a2, 0
.LVL66:
	retw.n
.LFE10:
	.size	esp_rom_spiflash_enable_write, .-esp_rom_spiflash_enable_write
	.section	.rodata.str1.4
	.align	4
.LC54:
	.ascii	"\"(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_W"
	.string	"RITE_PERI_REG)\" && (!((((((0x3ff42000 + (((1)>1) ? (((1)* 0x1000) + 0x20000) : (((~(1)) & 1)* 0x1000 ))) + 0x80) + i * 4)) >= 0x3ff00000) && ((((0x3ff42000 + (((1)>1) ? (((1)* 0x1000) + 0x20000) : (((~(1)) & 1)* 0x1000 ))) + 0x80) + i * 4)) <= 0x3ff13FFC))"
	.section	.text.esp_rom_spiflash_program_page_internal,"ax",@progbits
	.literal_position
	.literal .LC48, 16777215
	.literal .LC49, 536870912
	.literal .LC50, 1072963588
	.literal .LC51, 268240928
	.literal .LC52, -1072693248
	.literal .LC53, 81916
	.literal .LC55, .LC54
	.literal .LC56, __func__$2484
	.literal .LC57, .LC44
	.literal .LC58, 1072963584
	.literal .LC59, 33554432
	.align	4
	.type	esp_rom_spiflash_program_page_internal, @function
esp_rom_spiflash_program_page_internal:
.LFB5:
	.loc 1 144 0
.LVL67:
	entry	sp, 32
.LCFI8:
	.loc 1 151 0
	extui	a8, a5, 0, 2
	bnez.n	a8, .L65
	.loc 1 156 0
	l32i.n	a9, a2, 16
	remu	a8, a3, a9
	add.n	a8, a5, a8
	bltu	a9, a8, .L66
	.loc 1 160 0
	mov.n	a10, a2
	call8	esp_rom_spiflash_wait_idle
.LVL68:
	.loc 1 165 0
	j	.L52
.LVL69:
.L64:
	.loc 1 166 0
	mov.n	a10, a2
	call8	esp_rom_spiflash_enable_write
.LVL70:
	bnez.n	a10, .L67
	.loc 1 169 0
	movi.n	a8, 0x1f
	bge	a8, a5, .L53
.LBB66:
	.loc 1 170 0
	l32r	a8, .LC48
	and	a9, a3, a8
	l32r	a8, .LC49
	or	a8, a9, a8
	l32r	a9, .LC50
	memw
	s32i.n	a8, a9, 0
.LVL71:
.LBE66:
	.loc 1 172 0
	movi.n	a9, 0
	j	.L54
.LVL72:
.L56:
.LBB67:
	.loc 1 173 0
	l32r	a8, .LC51
	add.n	a8, a9, a8
	slli	a8, a8, 2
	l32r	a10, .LC52
	add.n	a10, a8, a10
	l32r	a11, .LC53
	bltu	a11, a10, .L55
	.loc 1 173 0 is_stmt 0 discriminator 1
	l32r	a13, .LC55
	l32r	a12, .LC56
	movi	a11, 0xad
	l32r	a10, .LC57
	call8	__assert_func
.LVL73:
.L55:
	.loc 1 173 0 discriminator 2
	l32i.n	a10, a4, 0
	memw
	s32i.n	a10, a8, 0
.LBE67:
	.loc 1 172 0 is_stmt 1 discriminator 2
	addi.n	a9, a9, 1
.LVL74:
	extui	a9, a9, 0, 8
.LVL75:
.LBB68:
	.loc 1 173 0 discriminator 2
	addi.n	a4, a4, 4
.LVL76:
.L54:
.LBE68:
	.loc 1 172 0 discriminator 2
	bltui	a9, 8, .L56
	.loc 1 175 0
	addi	a5, a5, -32
.LVL77:
	.loc 1 176 0
	addi	a3, a3, 32
.LVL78:
	j	.L57
.LVL79:
.L53:
.LBB69:
	.loc 1 178 0
	l32r	a8, .LC48
	and	a9, a3, a8
	slli	a8, a5, 24
	or	a8, a9, a8
	l32r	a9, .LC50
	memw
	s32i.n	a8, a9, 0
.LBE69:
	.loc 1 180 0
	extui	a8, a5, 0, 2
	bnez.n	a8, .L58
	.loc 1 180 0 is_stmt 0 discriminator 1
	extui	a5, a5, 2, 8
.LVL80:
	j	.L59
.LVL81:
.L58:
	.loc 1 180 0 discriminator 2
	srai	a5, a5, 2
.LVL82:
	addi.n	a5, a5, 1
	extui	a5, a5, 0, 8
.L59:
.LVL83:
	.loc 1 181 0 is_stmt 1 discriminator 4
	movi.n	a9, 0
	j	.L60
.LVL84:
.L62:
.LBB70:
	.loc 1 182 0
	l32r	a8, .LC51
	add.n	a8, a9, a8
	slli	a8, a8, 2
	l32r	a10, .LC52
	add.n	a10, a8, a10
	l32r	a11, .LC53
	bltu	a11, a10, .L61
	.loc 1 182 0 is_stmt 0 discriminator 1
	l32r	a13, .LC55
	l32r	a12, .LC56
	movi	a11, 0xb6
	l32r	a10, .LC57
	call8	__assert_func
.LVL85:
.L61:
	.loc 1 182 0 discriminator 2
	l32i.n	a10, a4, 0
	memw
	s32i.n	a10, a8, 0
.LBE70:
	.loc 1 181 0 is_stmt 1 discriminator 2
	addi.n	a9, a9, 1
.LVL86:
	extui	a9, a9, 0, 8
.LVL87:
.LBB71:
	.loc 1 182 0 discriminator 2
	addi.n	a4, a4, 4
.LVL88:
.L60:
.LBE71:
	.loc 1 181 0 discriminator 2
	bltu	a9, a5, .L62
	.loc 1 185 0
	movi.n	a5, 0
.LVL89:
.L57:
.LBB72:
	.loc 1 188 0
	l32r	a9, .LC59
	l32r	a8, .LC58
	memw
	s32i.n	a9, a8, 0
.L63:
.LBE72:
.LBB73:
	.loc 1 189 0 discriminator 1
	l32r	a8, .LC58
	memw
	l32i.n	a8, a8, 0
.LBE73:
	bnez.n	a8, .L63
	.loc 1 191 0
	mov.n	a10, a2
	call8	esp_rom_spiflash_wait_idle
.LVL90:
.L52:
	.loc 1 165 0
	bgei	a5, 1, .L64
	.loc 1 194 0
	movi.n	a2, 0
.LVL91:
	retw.n
.LVL92:
.L65:
	.loc 1 152 0
	movi.n	a2, 1
.LVL93:
	retw.n
.LVL94:
.L66:
	.loc 1 157 0
	movi.n	a2, 1
.LVL95:
	retw.n
.LVL96:
.L67:
	.loc 1 167 0
	movi.n	a2, 1
.LVL97:
	.loc 1 195 0
	retw.n
.LFE5:
	.size	esp_rom_spiflash_program_page_internal, .-esp_rom_spiflash_program_page_internal
	.section	.text.esp_rom_spiflash_read_statushigh,"ax",@progbits
	.literal_position
	.literal .LC60, g_rom_spiflash_chip
	.align	4
	.global	esp_rom_spiflash_read_statushigh
	.type	esp_rom_spiflash_read_statushigh, @function
esp_rom_spiflash_read_statushigh:
.LFB8:
	.loc 1 270 0
.LVL98:
	entry	sp, 32
.LCFI9:
	.loc 1 272 0
	l32r	a10, .LC60
	call8	esp_rom_spiflash_wait_idle
.LVL99:
	.loc 1 273 0
	movi.n	a11, 0x35
	mov.n	a10, a3
	call8	esp_rom_spiflash_read_user_cmd
.LVL100:
	.loc 1 274 0
	l32i.n	a8, a3, 0
	slli	a8, a8, 8
	s32i.n	a8, a3, 0
	.loc 1 276 0
	mov.n	a2, a10
.LVL101:
	retw.n
.LFE8:
	.size	esp_rom_spiflash_read_statushigh, .-esp_rom_spiflash_read_statushigh
	.section	.text.esp_rom_spiflash_write_status,"ax",@progbits
	.literal_position
	.literal .LC61, 1072963600
	.literal .LC62, 1072963584
	.literal .LC63, 67108864
	.align	4
	.global	esp_rom_spiflash_write_status
	.type	esp_rom_spiflash_write_status, @function
esp_rom_spiflash_write_status:
.LFB9:
	.loc 1 279 0
.LVL102:
	entry	sp, 32
.LCFI10:
	.loc 1 280 0
	mov.n	a10, a2
	call8	esp_rom_spiflash_wait_idle
.LVL103:
.LBB74:
	.loc 1 283 0
	l32r	a8, .LC61
	memw
	s32i.n	a3, a8, 0
.LBE74:
.LBB75:
	.loc 1 284 0
	l32r	a9, .LC63
	l32r	a8, .LC62
	memw
	s32i.n	a9, a8, 0
.L70:
.LBE75:
.LBB76:
	.loc 1 285 0 discriminator 1
	l32r	a8, .LC62
	memw
	l32i.n	a8, a8, 0
.LBE76:
	bnez.n	a8, .L70
	.loc 1 286 0
	mov.n	a10, a2
	call8	esp_rom_spiflash_wait_idle
.LVL104:
	.loc 1 289 0
	movi.n	a2, 0
.LVL105:
	retw.n
.LFE9:
	.size	esp_rom_spiflash_write_status, .-esp_rom_spiflash_write_status
	.section	.text.esp_rom_spiflash_unlock,"ax",@progbits
	.literal_position
	.literal .LC64, g_rom_spiflash_chip
	.literal .LC65, 1072963584
	.literal .LC66, 1073741824
	.literal .LC67, 1072963592
	.literal .LC68, 4194304
	.align	4
	.global	esp_rom_spiflash_unlock
	.type	esp_rom_spiflash_unlock, @function
esp_rom_spiflash_unlock:
.LFB1:
	.loc 1 55 0
	entry	sp, 48
.LCFI11:
	.loc 1 58 0
	l32r	a2, .LC64
	mov.n	a10, a2
	call8	esp_rom_spiflash_wait_idle
.LVL106:
	.loc 1 60 0
	mov.n	a11, sp
	mov.n	a10, a2
	call8	esp_rom_spiflash_read_statushigh
.LVL107:
	bnez.n	a10, .L74
	.loc 1 67 0
	l32i.n	a3, sp, 0
	movi	a2, 0x200
	and	a2, a3, a2
	s32i.n	a2, sp, 0
	.loc 1 69 0
	l32r	a10, .LC64
	call8	esp_rom_spiflash_wait_idle
.LVL108:
.LBB77:
	.loc 1 70 0
	l32r	a3, .LC66
	l32r	a2, .LC65
	memw
	s32i.n	a3, a2, 0
.L73:
.LBE77:
.LBB78:
	.loc 1 71 0 discriminator 1
	l32r	a8, .LC65
	memw
	l32i.n	a8, a8, 0
.LBE78:
	bnez.n	a8, .L73
	.loc 1 73 0
	l32r	a3, .LC64
	mov.n	a10, a3
	call8	esp_rom_spiflash_wait_idle
.LVL109:
.LBB79:
.LBB80:
	.loc 1 75 0
	l32r	a8, .LC67
	memw
	l32i.n	a9, a8, 0
.LBE80:
	l32r	a2, .LC68
	or	a2, a9, a2
	memw
	s32i.n	a2, a8, 0
.LBE79:
	.loc 1 76 0
	l32i.n	a11, sp, 0
	mov.n	a10, a3
	call8	esp_rom_spiflash_write_status
.LVL110:
	mov.n	a2, a10
	beqz.n	a10, .L72
	.loc 1 77 0
	movi.n	a2, 1
	retw.n
.L74:
	.loc 1 61 0
	movi.n	a2, 1
.L72:
	.loc 1 81 0
	retw.n
.LFE1:
	.size	esp_rom_spiflash_unlock, .-esp_rom_spiflash_unlock
	.section	.text.esp_rom_spiflash_lock,"ax",@progbits
	.literal_position
	.literal .LC69, g_rom_spiflash_chip
	.literal .LC70, 1072963592
	.literal .LC71, 4194304
	.align	4
	.global	esp_rom_spiflash_lock
	.type	esp_rom_spiflash_lock, @function
esp_rom_spiflash_lock:
.LFB12:
	.loc 1 350 0
	entry	sp, 48
.LCFI12:
	.loc 1 354 0
	mov.n	a11, sp
	l32r	a10, .LC69
	call8	esp_rom_spiflash_read_statushigh
.LVL111:
	bnez.n	a10, .L77
.LBB81:
.LBB82:
	.loc 1 358 0
	l32r	a8, .LC70
	memw
	l32i.n	a9, a8, 0
.LBE82:
	l32r	a2, .LC71
	or	a2, a9, a2
	memw
	s32i.n	a2, a8, 0
.LBE81:
	.loc 1 360 0
	l32r	a10, .LC69
	call8	esp_rom_spiflash_enable_write
.LVL112:
	bnez.n	a10, .L78
	.loc 1 364 0
	l32i.n	a2, sp, 0
	movi.n	a11, 0x1c
	or	a11, a11, a2
	l32r	a10, .LC69
	call8	esp_rom_spiflash_write_status
.LVL113:
	mov.n	a2, a10
	beqz.n	a10, .L76
	.loc 1 365 0
	movi.n	a2, 1
	retw.n
.L77:
	.loc 1 355 0
	movi.n	a2, 1
	retw.n
.L78:
	.loc 1 361 0
	movi.n	a2, 1
.L76:
	.loc 1 369 0
	retw.n
.LFE12:
	.size	esp_rom_spiflash_lock, .-esp_rom_spiflash_lock
	.section	.text.esp_rom_spiflash_config_readmode,"ax",@progbits
	.literal_position
	.literal .LC72, 16785408
	.literal .LC73, 1056768
	.literal .LC74, 8396800
	.literal .LC75, 24576
	.literal .LC76, 8192
	.literal .LC77, 1072963832
	.literal .LC78, 1072967928
	.literal .LC79, 1072963592
	.literal .LC80, -26238977
	.literal .LC81, 1072967688
	.literal .LC82, .L84
	.align	4
	.global	esp_rom_spiflash_config_readmode
	.type	esp_rom_spiflash_config_readmode, @function
esp_rom_spiflash_config_readmode:
.LFB13:
	.loc 1 373 0
.LVL114:
	entry	sp, 32
.LCFI13:
.L80:
.LBB83:
	.loc 1 376 0 discriminator 1
	l32r	a8, .LC77
	memw
	l32i.n	a8, a8, 0
.LBE83:
	extui	a8, a8, 0, 3
	bnez.n	a8, .L80
.L81:
.LBB84:
	.loc 1 378 0 discriminator 1
	l32r	a8, .LC78
	memw
	l32i.n	a8, a8, 0
.LBE84:
	extui	a8, a8, 0, 3
	bnez.n	a8, .L81
.LBB85:
.LBB86:
	.loc 1 381 0
	l32r	a10, .LC79
	memw
	l32i.n	a9, a10, 0
.LBE86:
	l32r	a8, .LC80
	and	a9, a9, a8
	memw
	s32i.n	a9, a10, 0
.LBE85:
.LBB87:
.LBB88:
	.loc 1 382 0
	l32r	a9, .LC81
	memw
	l32i.n	a10, a9, 0
.LBE88:
	and	a8, a10, a8
	memw
	s32i.n	a8, a9, 0
.LBE87:
	.loc 1 384 0
	bgeui	a2, 6, .L82
	l32r	a8, .LC82
	addx4	a2, a2, a8
.LVL115:
	l32i.n	a2, a2, 0
	jx	a2
	.section	.rodata.esp_rom_spiflash_config_readmode,"a",@progbits
	.align	4
	.align	4
.L84:
	.word	.L83
	.word	.L90
	.word	.L86
	.word	.L87
	.word	.L88
	.word	.L89
	.section	.text.esp_rom_spiflash_config_readmode
.L83:
	.loc 1 385 0
	l32r	a10, .LC72
	j	.L85
.L86:
.LVL116:
	.loc 1 387 0
	l32r	a10, .LC74
	j	.L85
.LVL117:
.L87:
	.loc 1 388 0
	l32r	a10, .LC75
	j	.L85
.LVL118:
.L88:
	.loc 1 389 0
	l32r	a10, .LC76
	j	.L85
.LVL119:
.L89:
	.loc 1 390 0
	movi.n	a10, 0
	j	.L85
.LVL120:
.L82:
	.loc 1 391 0
	movi.n	a10, 0
	j	.L85
.LVL121:
.L90:
	.loc 1 386 0
	l32r	a10, .LC73
.L85:
.LVL122:
.LBB89:
.LBB90:
	.loc 1 394 0
	l32r	a8, .LC79
	memw
	l32i.n	a2, a8, 0
.LBE90:
	or	a2, a10, a2
	memw
	s32i.n	a2, a8, 0
.LBE89:
.LBB91:
.LBB92:
	.loc 1 395 0
	l32r	a8, .LC81
	memw
	l32i.n	a2, a8, 0
.LBE92:
	or	a2, a10, a2
	memw
	s32i.n	a2, a8, 0
.LBE91:
	.loc 1 396 0
	call8	spi_cache_mode_switch
.LVL123:
	.loc 1 399 0
	movi.n	a2, 0
	retw.n
.LFE13:
	.size	esp_rom_spiflash_config_readmode, .-esp_rom_spiflash_config_readmode
	.section	.text.esp_rom_spiflash_erase_chip,"ax",@progbits
	.literal_position
	.literal .LC83, g_rom_spiflash_chip
	.align	4
	.global	esp_rom_spiflash_erase_chip
	.type	esp_rom_spiflash_erase_chip, @function
esp_rom_spiflash_erase_chip:
.LFB14:
	.loc 1 402 0
	entry	sp, 32
.LCFI14:
	.loc 1 403 0
	l32r	a10, .LC83
	call8	esp_rom_spiflash_enable_write
.LVL124:
	bnez.n	a10, .L93
	.loc 1 407 0
	l32r	a10, .LC83
	call8	esp_rom_spiflash_erase_chip_internal
.LVL125:
	mov.n	a2, a10
	beqz.n	a10, .L92
	.loc 1 408 0
	movi.n	a2, 1
	retw.n
.L93:
	.loc 1 404 0
	movi.n	a2, 1
.L92:
	.loc 1 412 0
	retw.n
.LFE14:
	.size	esp_rom_spiflash_erase_chip, .-esp_rom_spiflash_erase_chip
	.section	.text.esp_rom_spiflash_erase_block,"ax",@progbits
	.literal_position
	.literal .LC84, 1072963612
	.literal .LC85, -536870913
	.literal .LC86, 1072963616
	.literal .LC87, 67108863
	.literal .LC88, 1543503872
	.literal .LC89, g_rom_spiflash_chip
	.align	4
	.global	esp_rom_spiflash_erase_block
	.type	esp_rom_spiflash_erase_block, @function
esp_rom_spiflash_erase_block:
.LFB15:
	.loc 1 415 0
.LVL126:
	entry	sp, 32
.LCFI15:
.LBB93:
	.loc 1 417 0
	l32r	a9, .LC84
	memw
	l32i.n	a10, a9, 0
	l32r	a8, .LC85
	and	a8, a10, a8
	memw
	s32i.n	a8, a9, 0
.LBE93:
.LBB94:
.LBB95:
	.loc 1 418 0
	l32r	a10, .LC86
	memw
	l32i.n	a9, a10, 0
.LBE95:
	l32r	a8, .LC87
	and	a9, a9, a8
	l32r	a8, .LC88
	or	a8, a9, a8
	memw
	s32i.n	a8, a10, 0
.LBE94:
	.loc 1 421 0
	l32r	a9, .LC89
	l32i.n	a8, a9, 4
	l32i.n	a9, a9, 8
	quou	a8, a8, a9
	bgeu	a2, a8, .L96
	.loc 1 425 0
	l32r	a10, .LC89
	call8	esp_rom_spiflash_enable_write
.LVL127:
	bnez.n	a10, .L97
	.loc 1 429 0
	l32r	a10, .LC89
	l32i.n	a11, a10, 8
	mull	a11, a2, a11
	call8	esp_rom_spiflash_erase_block_internal
.LVL128:
	mov.n	a2, a10
.LVL129:
	beqz.n	a10, .L95
	.loc 1 430 0
	movi.n	a2, 1
	retw.n
.LVL130:
.L96:
	.loc 1 422 0
	movi.n	a2, 1
.LVL131:
	retw.n
.LVL132:
.L97:
	.loc 1 426 0
	movi.n	a2, 1
.LVL133:
.L95:
	.loc 1 433 0
	retw.n
.LFE15:
	.size	esp_rom_spiflash_erase_block, .-esp_rom_spiflash_erase_block
	.section	.text.esp_rom_spiflash_erase_sector,"ax",@progbits
	.literal_position
	.literal .LC90, 1072963612
	.literal .LC91, -536870913
	.literal .LC92, 1072963616
	.literal .LC93, 67108863
	.literal .LC94, 1543503872
	.literal .LC95, g_rom_spiflash_chip
	.align	4
	.global	esp_rom_spiflash_erase_sector
	.type	esp_rom_spiflash_erase_sector, @function
esp_rom_spiflash_erase_sector:
.LFB16:
	.loc 1 436 0
.LVL134:
	entry	sp, 32
.LCFI16:
.LBB96:
	.loc 1 438 0
	l32r	a9, .LC90
	memw
	l32i.n	a10, a9, 0
	l32r	a8, .LC91
	and	a8, a10, a8
	memw
	s32i.n	a8, a9, 0
.LBE96:
.LBB97:
.LBB98:
	.loc 1 439 0
	l32r	a10, .LC92
	memw
	l32i.n	a9, a10, 0
.LBE98:
	l32r	a8, .LC93
	and	a9, a9, a8
	l32r	a8, .LC94
	or	a8, a9, a8
	memw
	s32i.n	a8, a10, 0
.LBE97:
	.loc 1 442 0
	l32r	a9, .LC95
	l32i.n	a8, a9, 4
	l32i.n	a9, a9, 12
	quou	a8, a8, a9
	bgeu	a2, a8, .L100
	.loc 1 446 0
	l32r	a10, .LC95
	call8	esp_rom_spiflash_enable_write
.LVL135:
	bnez.n	a10, .L101
	.loc 1 450 0
	l32r	a10, .LC95
	l32i.n	a11, a10, 12
	mull	a11, a2, a11
	call8	esp_rom_spiflash_erase_sector_internal
.LVL136:
	mov.n	a2, a10
.LVL137:
	beqz.n	a10, .L99
	.loc 1 451 0
	movi.n	a2, 1
	retw.n
.LVL138:
.L100:
	.loc 1 443 0
	movi.n	a2, 1
.LVL139:
	retw.n
.LVL140:
.L101:
	.loc 1 447 0
	movi.n	a2, 1
.LVL141:
.L99:
	.loc 1 455 0
	retw.n
.LFE16:
	.size	esp_rom_spiflash_erase_sector, .-esp_rom_spiflash_erase_sector
	.section	.text.esp_rom_spiflash_write,"ax",@progbits
	.literal_position
	.literal .LC96, 1072963612
	.literal .LC97, -536870913
	.literal .LC98, 1072963616
	.literal .LC99, 67108863
	.literal .LC100, 1543503872
	.literal .LC101, g_rom_spiflash_chip
	.align	4
	.global	esp_rom_spiflash_write
	.type	esp_rom_spiflash_write, @function
esp_rom_spiflash_write:
.LFB17:
	.loc 1 458 0
.LVL142:
	entry	sp, 48
.LCFI17:
.LBB99:
	.loc 1 464 0
	l32r	a6, .LC96
	memw
	l32i.n	a7, a6, 0
	l32r	a5, .LC97
	and	a5, a7, a5
	memw
	s32i.n	a5, a6, 0
.LBE99:
.LBB100:
.LBB101:
	.loc 1 465 0
	l32r	a7, .LC98
	memw
	l32i.n	a6, a7, 0
.LBE101:
	l32r	a5, .LC99
	and	a6, a6, a5
	l32r	a5, .LC100
	or	a5, a6, a5
	memw
	s32i.n	a5, a7, 0
.LBE100:
	.loc 1 468 0
	add.n	a5, a4, a2
	l32r	a6, .LC101
	l32i.n	a6, a6, 4
	bltu	a6, a5, .L107
	.loc 1 472 0
	l32r	a5, .LC101
	l32i.n	a7, a5, 16
.LVL143:
	.loc 1 473 0
	remu	a5, a2, a7
	sub	a5, a7, a5
.LVL144:
	.loc 1 474 0
	bgeu	a4, a5, .L104
	.loc 1 475 0
	mov.n	a13, a4
	mov.n	a12, a3
	mov.n	a11, a2
	l32r	a10, .LC101
	call8	esp_rom_spiflash_program_page_internal
.LVL145:
	mov.n	a2, a10
.LVL146:
	beqz.n	a10, .L103
	.loc 1 477 0
	movi.n	a2, 1
	retw.n
.LVL147:
.L104:
	.loc 1 480 0
	mov.n	a13, a5
	mov.n	a12, a3
	mov.n	a11, a2
	l32r	a10, .LC101
	call8	esp_rom_spiflash_program_page_internal
.LVL148:
	bnez.n	a10, .L108
	.loc 1 486 0
	sub	a6, a4, a5
	quou	a6, a6, a7
	s32i.n	a6, sp, 0
.LVL149:
	.loc 1 487 0
	movi.n	a6, 0
.LVL150:
	j	.L105
.LVL151:
.L106:
	.loc 1 489 0
	srli	a12, a5, 2
	.loc 1 488 0
	mov.n	a13, a7
	addx4	a12, a12, a3
	add.n	a11, a5, a2
	l32r	a10, .LC101
	call8	esp_rom_spiflash_program_page_internal
.LVL152:
	bnez.n	a10, .L109
	.loc 1 492 0 discriminator 2
	add.n	a5, a5, a7
.LVL153:
	.loc 1 487 0 discriminator 2
	addi.n	a6, a6, 1
.LVL154:
	extui	a6, a6, 0, 8
.LVL155:
.L105:
	.loc 1 487 0 is_stmt 0 discriminator 1
	l32i.n	a8, sp, 0
	bltu	a6, a8, .L106
	.loc 1 497 0 is_stmt 1
	srli	a12, a5, 2
	.loc 1 496 0
	sub	a13, a4, a5
	addx4	a12, a12, a3
	add.n	a11, a5, a2
	l32r	a10, .LC101
	call8	esp_rom_spiflash_program_page_internal
.LVL156:
	mov.n	a2, a10
.LVL157:
	beqz.n	a10, .L103
	.loc 1 498 0
	movi.n	a2, 1
	retw.n
.LVL158:
.L107:
	.loc 1 469 0
	movi.n	a2, 1
.LVL159:
	retw.n
.LVL160:
.L108:
	.loc 1 482 0
	movi.n	a2, 1
.LVL161:
	retw.n
.LVL162:
.L109:
	.loc 1 490 0
	movi.n	a2, 1
.LVL163:
.L103:
	.loc 1 502 0
	retw.n
.LFE17:
	.size	esp_rom_spiflash_write, .-esp_rom_spiflash_write
	.section	.text.esp_rom_spiflash_write_encrypted,"ax",@progbits
	.align	4
	.global	esp_rom_spiflash_write_encrypted
	.type	esp_rom_spiflash_write_encrypted, @function
esp_rom_spiflash_write_encrypted:
.LFB18:
	.loc 1 505 0
.LVL164:
	entry	sp, 32
.LCFI18:
.LVL165:
	.loc 1 509 0
	extui	a5, a2, 0, 5
	bnez.n	a5, .L115
	.loc 1 509 0 is_stmt 0 discriminator 1
	extui	a5, a4, 0, 5
	bnez.n	a5, .L116
	.loc 1 513 0 is_stmt 1
	call8	esp_rom_spiflash_write_encrypted_enable
.LVL166:
	.loc 1 515 0
	movi.n	a6, 0
	.loc 1 506 0
	mov.n	a5, a6
	.loc 1 515 0
	j	.L112
.LVL167:
.L114:
	.loc 1 516 0
	slli	a11, a6, 5
	add.n	a7, a2, a11
	add.n	a11, a3, a11
	mov.n	a10, a7
	call8	esp_rom_spiflash_prepare_encrypted_data
.LVL168:
	mov.n	a5, a10
.LVL169:
	bnez.n	a10, .L113
	.loc 1 520 0
	movi.n	a12, 0x20
	mov.n	a11, a3
	mov.n	a10, a7
	call8	esp_rom_spiflash_write
.LVL170:
	mov.n	a5, a10
.LVL171:
	bnez.n	a10, .L113
	.loc 1 515 0 discriminator 2
	addi.n	a6, a6, 1
.LVL172:
.L112:
	.loc 1 515 0 is_stmt 0 discriminator 1
	srli	a7, a4, 5
	bltu	a6, a7, .L114
.L113:
	.loc 1 525 0 is_stmt 1
	call8	esp_rom_spiflash_write_encrypted_disable
.LVL173:
	.loc 1 527 0
	mov.n	a2, a5
.LVL174:
	retw.n
.LVL175:
.L115:
	.loc 1 510 0
	movi.n	a2, 1
.LVL176:
	retw.n
.LVL177:
.L116:
	movi.n	a2, 1
.LVL178:
	.loc 1 528 0
	retw.n
.LFE18:
	.size	esp_rom_spiflash_write_encrypted, .-esp_rom_spiflash_write_encrypted
	.section	.text.esp_rom_spiflash_read,"ax",@progbits
	.literal_position
	.literal .LC102, 1072963592
	.literal .LC103, 16785408
	.literal .LC104, 1072963612
	.literal .LC105, -134217729
	.literal .LC106, 1879048192
	.literal .LC107, 1072963616
	.literal .LC108, 67108863
	.literal .LC109, 2080374784
	.literal .LC110, g_rom_spiflash_dummy_len_plus
	.literal .LC111, 1072963620
	.literal .LC112, 1879048427
	.literal .LC114, 1342177280
	.literal .LC116, -536870913
	.literal .LC117, 1879048379
	.literal .LC118, 536870912
	.literal .LC119, -65536
	.literal .LC121, 1879048299
	.literal .LC123, 1879048251
	.literal .LC124, 1879048203
	.literal .LC125, 1543503872
	.literal .LC126, 1879048195
	.literal .LC127, g_rom_spiflash_chip
	.align	4
	.global	esp_rom_spiflash_read
	.type	esp_rom_spiflash_read, @function
esp_rom_spiflash_read:
.LFB19:
	.loc 1 532 0
.LVL179:
	entry	sp, 32
.LCFI19:
	mov.n	a11, a2
	mov.n	a12, a3
	mov.n	a13, a4
.LBB102:
	.loc 1 535 0
	l32r	a8, .LC102
	memw
	l32i.n	a8, a8, 0
.LVL180:
.LBE102:
	.loc 1 536 0
	l32r	a9, .LC103
	and	a10, a8, a9
	bne	a10, a9, .L118
.LBB103:
	.loc 1 537 0
	l32r	a8, .LC104
.LVL181:
	memw
	l32i.n	a10, a8, 0
	l32r	a9, .LC105
	and	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
.LBE103:
.LBB104:
	.loc 1 538 0
	memw
	l32i.n	a10, a8, 0
	l32r	a9, .LC106
	or	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
.LBE104:
.LBB105:
.LBB106:
	.loc 1 539 0
	l32r	a10, .LC107
	memw
	l32i.n	a9, a10, 0
.LBE106:
	l32r	a8, .LC108
	and	a9, a9, a8
	l32r	a8, .LC109
	or	a8, a9, a8
	memw
	s32i.n	a8, a10, 0
.LBE105:
.LBB107:
.LBB108:
	.loc 1 540 0
	memw
	l32i.n	a9, a10, 0
.LBE108:
	movi	a8, -0x100
	and	a9, a9, a8
	l32r	a8, .LC110
	l8ui	a8, a8, 1
	addi.n	a8, a8, 3
	extui	a8, a8, 0, 8
	or	a8, a8, a9
	memw
	s32i.n	a8, a10, 0
.LBE107:
.LBB109:
	.loc 1 542 0
	l32r	a9, .LC112
	l32r	a8, .LC111
	memw
	s32i.n	a9, a8, 0
.LBE109:
	j	.L119
.LVL182:
.L118:
	.loc 1 543 0
	bbci	a8, 13, .L120
.LBB110:
	.loc 1 544 0
	l32r	a9, .LC104
	memw
	l32i.n	a14, a9, 0
	l32r	a10, .LC105
	and	a10, a14, a10
	memw
	s32i.n	a10, a9, 0
.LBE110:
.LBB111:
	.loc 1 545 0
	memw
	l32i.n	a14, a9, 0
	l32r	a10, .LC114
	or	a10, a14, a10
	memw
	s32i.n	a10, a9, 0
.LBE111:
	.loc 1 546 0
	bbci	a8, 23, .L121
	.loc 1 547 0
	l32r	a8, .LC110
.LVL183:
	l8ui	a8, a8, 1
	bnez.n	a8, .L122
.LBB112:
	.loc 1 548 0
	memw
	l32i.n	a10, a9, 0
	l32r	a8, .LC116
	and	a8, a10, a8
	memw
	s32i.n	a8, a9, 0
.LBE112:
.LBB113:
.LBB114:
	.loc 1 549 0
	l32r	a10, .LC107
	memw
	l32i.n	a9, a10, 0
.LBE114:
	l32r	a8, .LC108
	and	a9, a9, a8
	l32r	a8, .LC109
	or	a8, a9, a8
	memw
	s32i.n	a8, a10, 0
.LBE113:
.LBB115:
	.loc 1 550 0
	l32r	a9, .LC117
	l32r	a8, .LC111
	memw
	s32i.n	a9, a8, 0
.LBE115:
	j	.L119
.L122:
.LBB116:
	.loc 1 552 0
	l32r	a9, .LC104
	memw
	l32i.n	a10, a9, 0
	l32r	a8, .LC118
	or	a8, a10, a8
	memw
	s32i.n	a8, a9, 0
.LBE116:
.LBB117:
.LBB118:
	.loc 1 553 0
	l32r	a10, .LC107
	memw
	l32i.n	a9, a10, 0
.LBE118:
	l32r	a8, .LC108
	and	a9, a9, a8
	l32r	a8, .LC109
	or	a8, a9, a8
	memw
	s32i.n	a8, a10, 0
.LBE117:
.LBB119:
.LBB120:
	.loc 1 554 0
	memw
	l32i.n	a9, a10, 0
.LBE120:
	movi	a8, -0x100
	and	a9, a9, a8
	l32r	a8, .LC110
	l8ui	a8, a8, 1
	addi.n	a8, a8, -1
	extui	a8, a8, 0, 8
	or	a8, a8, a9
	memw
	s32i.n	a8, a10, 0
.LBE119:
.LBB121:
.LBB122:
	.loc 1 555 0
	l32r	a10, .LC111
	memw
	l32i.n	a9, a10, 0
.LBE122:
	l32r	a8, .LC119
	and	a9, a9, a8
	movi	a8, 0xbb
	or	a8, a9, a8
	memw
	s32i.n	a8, a10, 0
	j	.L119
.LVL184:
.L121:
.LBE121:
	.loc 1 558 0
	bbci	a8, 20, .L123
.LBB123:
	.loc 1 560 0
	l32r	a9, .LC121
	l32r	a8, .LC111
.LVL185:
	memw
	s32i.n	a9, a8, 0
.LBE123:
	j	.L124
.LVL186:
.L123:
	.loc 1 561 0
	bbci	a8, 14, .L125
.LBB124:
	.loc 1 563 0
	l32r	a9, .LC123
	l32r	a8, .LC111
.LVL187:
	memw
	s32i.n	a9, a8, 0
.LBE124:
	j	.L124
.LVL188:
.L125:
.LBB125:
	.loc 1 566 0
	l32r	a9, .LC124
	l32r	a8, .LC111
.LVL189:
	memw
	s32i.n	a9, a8, 0
.L124:
.LBE125:
.LBB126:
	.loc 1 568 0
	l32r	a9, .LC104
	memw
	l32i.n	a10, a9, 0
	l32r	a8, .LC118
	or	a8, a10, a8
	memw
	s32i.n	a8, a9, 0
.LBE126:
.LBB127:
.LBB128:
	.loc 1 569 0
	l32r	a10, .LC107
	memw
	l32i.n	a9, a10, 0
.LBE128:
	l32r	a8, .LC108
	and	a9, a9, a8
	l32r	a8, .LC125
	or	a8, a9, a8
	memw
	s32i.n	a8, a10, 0
.LBE127:
.LBB129:
.LBB130:
	.loc 1 570 0
	memw
	l32i.n	a9, a10, 0
.LBE130:
	movi	a8, -0x100
	and	a9, a9, a8
	l32r	a8, .LC110
	l8ui	a8, a8, 1
	addi.n	a8, a8, 7
	extui	a8, a8, 0, 8
	or	a8, a8, a9
	memw
	s32i.n	a8, a10, 0
	j	.L119
.LVL190:
.L120:
.LBE129:
.LBB131:
	.loc 1 573 0
	l32r	a9, .LC104
	memw
	l32i.n	a10, a9, 0
	l32r	a8, .LC105
.LVL191:
	and	a8, a10, a8
	memw
	s32i.n	a8, a9, 0
.LBE131:
	.loc 1 574 0
	l32r	a8, .LC110
	l8ui	a8, a8, 1
	bnez.n	a8, .L126
.LBB132:
	.loc 1 575 0
	memw
	l32i.n	a10, a9, 0
	l32r	a8, .LC116
	and	a8, a10, a8
	memw
	s32i.n	a8, a9, 0
.LBE132:
	j	.L127
.L126:
.LBB133:
	.loc 1 577 0
	l32r	a9, .LC104
	memw
	l32i.n	a10, a9, 0
	l32r	a8, .LC118
	or	a8, a10, a8
	memw
	s32i.n	a8, a9, 0
.LBE133:
.LBB134:
.LBB135:
	.loc 1 578 0
	l32r	a10, .LC107
	memw
	l32i.n	a9, a10, 0
.LBE135:
	movi	a8, -0x100
	and	a9, a9, a8
	l32r	a8, .LC110
	l8ui	a8, a8, 1
	addi.n	a8, a8, -1
	extui	a8, a8, 0, 8
	or	a8, a8, a9
	memw
	s32i.n	a8, a10, 0
.L127:
.LBE134:
.LBB136:
	.loc 1 580 0
	l32r	a9, .LC104
	memw
	l32i.n	a10, a9, 0
	l32r	a8, .LC114
	or	a8, a10, a8
	memw
	s32i.n	a8, a9, 0
.LBE136:
.LBB137:
.LBB138:
	.loc 1 581 0
	l32r	a10, .LC107
	memw
	l32i.n	a9, a10, 0
.LBE138:
	l32r	a8, .LC108
	and	a9, a9, a8
	l32r	a8, .LC125
	or	a8, a9, a8
	memw
	s32i.n	a8, a10, 0
.LBE137:
.LBB139:
	.loc 1 583 0
	l32r	a9, .LC126
	l32r	a8, .LC111
	memw
	s32i.n	a9, a8, 0
.L119:
.LBE139:
	.loc 1 586 0
	l32r	a10, .LC127
	call8	esp_rom_spiflash_read_data
.LVL192:
	beqz.n	a10, .L128
	.loc 1 587 0
	movi.n	a10, 1
.L128:
	.loc 1 590 0
	mov.n	a2, a10
.LVL193:
	retw.n
.LFE19:
	.size	esp_rom_spiflash_read, .-esp_rom_spiflash_read
	.section	.text.esp_rom_spiflash_erase_area,"ax",@progbits
	.literal_position
	.literal .LC128, g_rom_spiflash_chip
	.align	4
	.global	esp_rom_spiflash_erase_area
	.type	esp_rom_spiflash_erase_area, @function
esp_rom_spiflash_erase_area:
.LFB20:
	.loc 1 593 0
.LVL194:
	entry	sp, 32
.LCFI20:
	.loc 1 603 0
	movi.n	a10, 5
	call8	esp_rom_spiflash_config_readmode
.LVL195:
	.loc 1 606 0
	add.n	a4, a2, a3
	l32r	a5, .LC128
	l32i.n	a5, a5, 4
	bltu	a5, a4, .L139
	.loc 1 611 0
	l32r	a4, .LC128
	l32i.n	a4, a4, 12
	remu	a4, a2, a4
	bnez.n	a4, .L140
	.loc 1 616 0
	call8	esp_rom_spiflash_unlock
.LVL196:
	mov.n	a6, a10
	bnez.n	a10, .L141
	.loc 1 620 0
	l32r	a5, .LC128
	l32i.n	a8, a5, 12
	quou	a4, a2, a8
.LVL197:
	.loc 1 621 0
	l32i.n	a5, a5, 8
	quou	a5, a5, a8
.LVL198:
	.loc 1 622 0
	remu	a2, a3, a8
.LVL199:
	bnez.n	a2, .L131
	.loc 1 622 0 is_stmt 0 discriminator 1
	quou	a3, a3, a8
.LVL200:
	j	.L132
.LVL201:
.L131:
	.loc 1 623 0 is_stmt 1 discriminator 2
	quou	a3, a3, a8
.LVL202:
	addi.n	a3, a3, 1
.L132:
.LVL203:
	.loc 1 626 0 discriminator 4
	remu	a2, a4, a5
	sub	a2, a5, a2
.LVL204:
	.loc 1 628 0 discriminator 4
	min	a2, a3, a2
.LVL205:
	.loc 1 632 0 discriminator 4
	sub	a3, a3, a2
.LVL206:
	.loc 1 635 0 discriminator 4
	j	.L133
.L134:
	.loc 1 636 0
	mov.n	a10, a4
	call8	esp_rom_spiflash_erase_sector
.LVL207:
	bnez.n	a10, .L142
	.loc 1 639 0
	addi.n	a4, a4, 1
.LVL208:
	.loc 1 640 0
	addi.n	a2, a2, -1
.LVL209:
.L133:
	.loc 1 635 0
	bnez.n	a2, .L134
	j	.L135
.LVL210:
.L136:
	.loc 1 643 0
	quou	a10, a4, a5
	call8	esp_rom_spiflash_erase_block
.LVL211:
	bnez.n	a10, .L143
	.loc 1 646 0
	add.n	a4, a4, a5
.LVL212:
	.loc 1 647 0
	sub	a3, a2, a5
.LVL213:
.L135:
	.loc 1 642 0
	mov.n	a2, a3
	bltu	a5, a3, .L136
.LVL214:
	j	.L137
.LVL215:
.L138:
	.loc 1 652 0
	mov.n	a10, a4
	call8	esp_rom_spiflash_erase_sector
.LVL216:
	bnez.n	a10, .L144
	.loc 1 655 0
	addi.n	a4, a4, 1
.LVL217:
	.loc 1 656 0
	addi.n	a3, a3, -1
.LVL218:
.L137:
	.loc 1 651 0
	bgei	a3, 1, .L138
	j	.L130
.LVL219:
.L139:
	.loc 1 607 0
	movi.n	a6, 1
	j	.L130
.L140:
	.loc 1 612 0
	movi.n	a6, 1
	j	.L130
.L141:
	.loc 1 617 0
	movi.n	a6, 1
	j	.L130
.LVL220:
.L142:
	.loc 1 637 0
	movi.n	a6, 1
	j	.L130
.LVL221:
.L143:
	.loc 1 644 0
	movi.n	a6, 1
	j	.L130
.LVL222:
.L144:
	.loc 1 653 0
	movi.n	a6, 1
.LVL223:
.L130:
	.loc 1 660 0
	mov.n	a2, a6
	retw.n
.LFE20:
	.size	esp_rom_spiflash_erase_area, .-esp_rom_spiflash_erase_area
	.section	.rodata.__func__$2513,"a",@progbits
	.align	4
	.type	__func__$2513, @object
	.size	__func__$2513, 27
__func__$2513:
	.string	"esp_rom_spiflash_read_data"
	.section	.rodata.__func__$2484,"a",@progbits
	.align	4
	.type	__func__$2484, @object
	.size	__func__$2484, 39
__func__$2484:
	.string	"esp_rom_spiflash_program_page_internal"
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
	.uleb128 0x30
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x4
	.4byte	.LCFI2-.LFB0
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI3-.LFB2
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI4-.LFB4
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI5-.LFB3
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI6-.LFB6
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI7-.LFB10
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI8-.LFB5
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x4
	.4byte	.LCFI9-.LFB8
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x4
	.4byte	.LCFI10-.LFB9
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x4
	.4byte	.LCFI11-.LFB1
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI12-.LFB12
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI13-.LFB13
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI14-.LFB14
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI15-.LFB15
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI16-.LFB16
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI17-.LFB17
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI18-.LFB18
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE36:
.LSFDE38:
	.4byte	.LEFDE38-.LASFDE38
.LASFDE38:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI19-.LFB19
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE38:
.LSFDE40:
	.4byte	.LEFDE40-.LASFDE40
.LASFDE40:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI20-.LFB20
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE40:
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/spi_flash.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/assert.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xd6e
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF93
	.byte	0xc
	.4byte	.LASF94
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x12
	.4byte	0x3a
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
	.4byte	.LASF6
	.byte	0x2
	.byte	0x19
	.4byte	0x5a
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x2
	.byte	0x1a
	.4byte	0x21
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
	.4byte	0x2f
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x3
	.byte	0x2c
	.4byte	0x4f
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x2d
	.4byte	0x61
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
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF17
	.uleb128 0x5
	.byte	0x4
	.4byte	0x21
	.byte	0x4
	.byte	0x7a
	.4byte	0xef
	.uleb128 0x6
	.4byte	.LASF18
	.byte	0
	.uleb128 0x6
	.4byte	.LASF19
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF20
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF21
	.byte	0x3
	.uleb128 0x6
	.4byte	.LASF22
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF23
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x4
	.byte	0x81
	.4byte	0xbe
	.uleb128 0x5
	.byte	0x4
	.4byte	0x21
	.byte	0x4
	.byte	0x83
	.4byte	0x119
	.uleb128 0x6
	.4byte	.LASF25
	.byte	0
	.uleb128 0x6
	.4byte	.LASF26
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF27
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x4
	.byte	0x87
	.4byte	0xfa
	.uleb128 0x7
	.byte	0x18
	.byte	0x4
	.byte	0x89
	.4byte	0x175
	.uleb128 0x8
	.4byte	.LASF29
	.byte	0x4
	.byte	0x8a
	.4byte	0x90
	.byte	0
	.uleb128 0x8
	.4byte	.LASF30
	.byte	0x4
	.byte	0x8b
	.4byte	0x90
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF31
	.byte	0x4
	.byte	0x8c
	.4byte	0x90
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF32
	.byte	0x4
	.byte	0x8d
	.4byte	0x90
	.byte	0xc
	.uleb128 0x8
	.4byte	.LASF33
	.byte	0x4
	.byte	0x8e
	.4byte	0x90
	.byte	0x10
	.uleb128 0x8
	.4byte	.LASF34
	.byte	0x4
	.byte	0x8f
	.4byte	0x90
	.byte	0x14
	.byte	0
	.uleb128 0x3
	.4byte	.LASF35
	.byte	0x4
	.byte	0x90
	.4byte	0x124
	.uleb128 0x9
	.4byte	.LASF95
	.byte	0x1
	.2byte	0x135
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1b0
	.uleb128 0xa
	.4byte	.LASF36
	.byte	0x1
	.2byte	0x135
	.4byte	0x90
	.4byte	.LLST0
	.uleb128 0xb
	.4byte	.LASF38
	.4byte	0x1c0
	.byte	0
	.uleb128 0xc
	.4byte	0xb0
	.4byte	0x1c0
	.uleb128 0xd
	.4byte	0xa2
	.byte	0x15
	.byte	0
	.uleb128 0xe
	.4byte	0x1b0
	.uleb128 0xf
	.4byte	.LASF39
	.byte	0x1
	.byte	0xf7
	.4byte	0x119
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x227
	.uleb128 0x10
	.string	"spi"
	.byte	0x1
	.byte	0xf7
	.4byte	0x227
	.4byte	.LLST1
	.uleb128 0x11
	.4byte	.LASF37
	.byte	0x1
	.byte	0xf7
	.4byte	0x22d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x12
	.4byte	.LASF41
	.byte	0x1
	.byte	0xf9
	.4byte	0x90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xb
	.4byte	.LASF38
	.4byte	0x243
	.uleb128 0x13
	.4byte	.LVL13
	.4byte	0xd36
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
	.byte	0x35
	.byte	0
	.byte	0
	.uleb128 0x15
	.byte	0x4
	.4byte	0x175
	.uleb128 0x15
	.byte	0x4
	.4byte	0x90
	.uleb128 0xc
	.4byte	0xb0
	.4byte	0x243
	.uleb128 0xd
	.4byte	0xa2
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.4byte	0x233
	.uleb128 0xf
	.4byte	.LASF40
	.byte	0x1
	.byte	0x19
	.4byte	0x119
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x298
	.uleb128 0x10
	.string	"spi"
	.byte	0x1
	.byte	0x19
	.4byte	0x227
	.4byte	.LLST2
	.uleb128 0x12
	.4byte	.LASF37
	.byte	0x1
	.byte	0x1b
	.4byte	0x90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xb
	.4byte	.LASF38
	.4byte	0x2a8
	.uleb128 0x13
	.4byte	.LVL16
	.4byte	0x1c5
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	0xb0
	.4byte	0x2a8
	.uleb128 0xd
	.4byte	0xa2
	.byte	0x1a
	.byte	0
	.uleb128 0xe
	.4byte	0x298
	.uleb128 0x16
	.4byte	.LASF42
	.byte	0x1
	.byte	0x5c
	.4byte	0x119
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x303
	.uleb128 0x10
	.string	"spi"
	.byte	0x1
	.byte	0x5c
	.4byte	0x227
	.4byte	.LLST3
	.uleb128 0xb
	.4byte	.LASF38
	.4byte	0x313
	.uleb128 0x17
	.4byte	.LVL19
	.4byte	0x248
	.4byte	0x2f2
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL20
	.4byte	0x248
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	0xb0
	.4byte	0x313
	.uleb128 0xd
	.4byte	0xa2
	.byte	0x24
	.byte	0
	.uleb128 0xe
	.4byte	0x303
	.uleb128 0x16
	.4byte	.LASF43
	.byte	0x1
	.byte	0x7f
	.4byte	0x119
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x37d
	.uleb128 0x10
	.string	"spi"
	.byte	0x1
	.byte	0x7f
	.4byte	0x227
	.4byte	.LLST4
	.uleb128 0x18
	.4byte	.LASF44
	.byte	0x1
	.byte	0x7f
	.4byte	0x90
	.4byte	.LLST5
	.uleb128 0xb
	.4byte	.LASF38
	.4byte	0x38d
	.uleb128 0x17
	.4byte	.LVL23
	.4byte	0x248
	.4byte	0x36c
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL25
	.4byte	0x248
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	0xb0
	.4byte	0x38d
	.uleb128 0xd
	.4byte	0xa2
	.byte	0x25
	.byte	0
	.uleb128 0xe
	.4byte	0x37d
	.uleb128 0x16
	.4byte	.LASF45
	.byte	0x1
	.byte	0x6b
	.4byte	0x119
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3f7
	.uleb128 0x10
	.string	"spi"
	.byte	0x1
	.byte	0x6b
	.4byte	0x227
	.4byte	.LLST6
	.uleb128 0x18
	.4byte	.LASF44
	.byte	0x1
	.byte	0x6b
	.4byte	0x90
	.4byte	.LLST7
	.uleb128 0xb
	.4byte	.LASF38
	.4byte	0x407
	.uleb128 0x17
	.4byte	.LVL28
	.4byte	0x248
	.4byte	0x3e6
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL30
	.4byte	0x248
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	0xb0
	.4byte	0x407
	.uleb128 0xd
	.4byte	0xa2
	.byte	0x26
	.byte	0
	.uleb128 0xe
	.4byte	0x3f7
	.uleb128 0x16
	.4byte	.LASF46
	.byte	0x1
	.byte	0xc6
	.4byte	0x119
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x519
	.uleb128 0x10
	.string	"spi"
	.byte	0x1
	.byte	0xc6
	.4byte	0x227
	.4byte	.LLST8
	.uleb128 0x18
	.4byte	.LASF47
	.byte	0x1
	.byte	0xc6
	.4byte	0x90
	.4byte	.LLST9
	.uleb128 0x18
	.4byte	.LASF48
	.byte	0x1
	.byte	0xc7
	.4byte	0x22d
	.4byte	.LLST10
	.uleb128 0x18
	.4byte	.LASF49
	.byte	0x1
	.byte	0xc7
	.4byte	0x85
	.4byte	.LLST11
	.uleb128 0x19
	.4byte	.LASF50
	.byte	0x1
	.byte	0xc9
	.4byte	0x90
	.4byte	.LLST12
	.uleb128 0x19
	.4byte	.LASF51
	.byte	0x1
	.byte	0xca
	.4byte	0x85
	.4byte	.LLST13
	.uleb128 0x1a
	.string	"i"
	.byte	0x1
	.byte	0xcb
	.4byte	0x7a
	.4byte	.LLST14
	.uleb128 0x19
	.4byte	.LASF52
	.byte	0x1
	.byte	0xcc
	.4byte	0x7a
	.4byte	.LLST15
	.uleb128 0x1b
	.4byte	.LASF38
	.4byte	0x519
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2513
	.uleb128 0x17
	.4byte	.LVL36
	.4byte	0x248
	.4byte	0x4be
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL41
	.4byte	0xd42
	.4byte	0x4ed
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC44
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xe1
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2513
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC41
	.byte	0
	.uleb128 0x13
	.4byte	.LVL55
	.4byte	0xd42
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC44
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xee
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2513
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC41
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	0x298
	.uleb128 0x1c
	.4byte	.LASF53
	.byte	0x1
	.2byte	0x123
	.4byte	0x119
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x58b
	.uleb128 0x1d
	.string	"spi"
	.byte	0x1
	.2byte	0x123
	.4byte	0x227
	.4byte	.LLST16
	.uleb128 0x1e
	.4byte	.LASF54
	.byte	0x1
	.2byte	0x125
	.4byte	0x90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xb
	.4byte	.LASF38
	.4byte	0x59b
	.uleb128 0x17
	.4byte	.LVL64
	.4byte	0x248
	.4byte	0x574
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL65
	.4byte	0x1c5
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	0xb0
	.4byte	0x59b
	.uleb128 0xd
	.4byte	0xa2
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.4byte	0x58b
	.uleb128 0x16
	.4byte	.LASF55
	.byte	0x1
	.byte	0x8e
	.4byte	0x119
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6d5
	.uleb128 0x10
	.string	"spi"
	.byte	0x1
	.byte	0x8e
	.4byte	0x227
	.4byte	.LLST17
	.uleb128 0x18
	.4byte	.LASF56
	.byte	0x1
	.byte	0x8e
	.4byte	0x90
	.4byte	.LLST18
	.uleb128 0x18
	.4byte	.LASF57
	.byte	0x1
	.byte	0x8f
	.4byte	0x22d
	.4byte	.LLST19
	.uleb128 0x18
	.4byte	.LASF49
	.byte	0x1
	.byte	0x8f
	.4byte	0x85
	.4byte	.LLST20
	.uleb128 0x19
	.4byte	.LASF50
	.byte	0x1
	.byte	0x91
	.4byte	0x90
	.4byte	.LLST21
	.uleb128 0x19
	.4byte	.LASF58
	.byte	0x1
	.byte	0x92
	.4byte	0x85
	.4byte	.LLST22
	.uleb128 0x1a
	.string	"i"
	.byte	0x1
	.byte	0x93
	.4byte	0x7a
	.4byte	.LLST23
	.uleb128 0x19
	.4byte	.LASF52
	.byte	0x1
	.byte	0x94
	.4byte	0x7a
	.4byte	.LLST24
	.uleb128 0x1b
	.4byte	.LASF38
	.4byte	0x6d5
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2484
	.uleb128 0x17
	.4byte	.LVL68
	.4byte	0x248
	.4byte	0x652
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL70
	.4byte	0x51e
	.4byte	0x666
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL73
	.4byte	0xd42
	.4byte	0x695
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC44
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xad
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2484
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC54
	.byte	0
	.uleb128 0x17
	.4byte	.LVL85
	.4byte	0xd42
	.4byte	0x6c4
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC44
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xb6
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2484
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC54
	.byte	0
	.uleb128 0x13
	.4byte	.LVL90
	.4byte	0x248
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	0x3f7
	.uleb128 0x1f
	.4byte	.LASF59
	.byte	0x1
	.2byte	0x10d
	.4byte	0x119
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x740
	.uleb128 0x1d
	.string	"spi"
	.byte	0x1
	.2byte	0x10d
	.4byte	0x227
	.4byte	.LLST25
	.uleb128 0x20
	.4byte	.LASF37
	.byte	0x1
	.2byte	0x10d
	.4byte	0x22d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x21
	.string	"ret"
	.byte	0x1
	.2byte	0x10f
	.4byte	0x119
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x22
	.4byte	.LVL99
	.4byte	0x248
	.uleb128 0x13
	.4byte	.LVL100
	.4byte	0xd36
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x35
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x116
	.4byte	0x119
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7a6
	.uleb128 0x1d
	.string	"spi"
	.byte	0x1
	.2byte	0x116
	.4byte	0x227
	.4byte	.LLST26
	.uleb128 0x20
	.4byte	.LASF41
	.byte	0x1
	.2byte	0x116
	.4byte	0x90
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xb
	.4byte	.LASF38
	.4byte	0x7a6
	.uleb128 0x17
	.4byte	.LVL103
	.4byte	0x248
	.4byte	0x795
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL104
	.4byte	0x248
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	0x58b
	.uleb128 0xf
	.4byte	.LASF61
	.byte	0x1
	.byte	0x36
	.4byte	0x119
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x837
	.uleb128 0x12
	.4byte	.LASF37
	.byte	0x1
	.byte	0x38
	.4byte	0x90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xb
	.4byte	.LASF38
	.4byte	0x847
	.uleb128 0x17
	.4byte	.LVL106
	.4byte	0x248
	.4byte	0x7ef
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL107
	.4byte	0x6da
	.4byte	0x809
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x22
	.4byte	.LVL108
	.4byte	0x248
	.uleb128 0x17
	.4byte	.LVL109
	.4byte	0x248
	.4byte	0x826
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL110
	.4byte	0x740
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	0xb0
	.4byte	0x847
	.uleb128 0xd
	.4byte	0xa2
	.byte	0x17
	.byte	0
	.uleb128 0xe
	.4byte	0x837
	.uleb128 0x1f
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x15d
	.4byte	0x119
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8ae
	.uleb128 0x1e
	.4byte	.LASF37
	.byte	0x1
	.2byte	0x15f
	.4byte	0x90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xb
	.4byte	.LASF38
	.4byte	0x8ae
	.uleb128 0x17
	.4byte	.LVL111
	.4byte	0x6da
	.4byte	0x892
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x22
	.4byte	.LVL112
	.4byte	0x51e
	.uleb128 0x13
	.4byte	.LVL113
	.4byte	0x740
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x4
	.byte	0x72
	.sleb128 0
	.byte	0x4c
	.byte	0x21
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	0x1b0
	.uleb128 0x1f
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x174
	.4byte	0x119
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x900
	.uleb128 0xa
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x174
	.4byte	0xef
	.4byte	.LLST27
	.uleb128 0x23
	.4byte	.LASF36
	.byte	0x1
	.2byte	0x176
	.4byte	0x90
	.4byte	.LLST28
	.uleb128 0xb
	.4byte	.LASF38
	.4byte	0x910
	.uleb128 0x22
	.4byte	.LVL123
	.4byte	0x180
	.byte	0
	.uleb128 0xc
	.4byte	0xb0
	.4byte	0x910
	.uleb128 0xd
	.4byte	0xa2
	.byte	0x20
	.byte	0
	.uleb128 0xe
	.4byte	0x900
	.uleb128 0x1f
	.4byte	.LASF65
	.byte	0x1
	.2byte	0x191
	.4byte	0x119
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x942
	.uleb128 0x22
	.4byte	.LVL124
	.4byte	0x51e
	.uleb128 0x22
	.4byte	.LVL125
	.4byte	0x2ad
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF66
	.byte	0x1
	.2byte	0x19e
	.4byte	0x119
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x988
	.uleb128 0xa
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x19e
	.4byte	0x90
	.4byte	.LLST29
	.uleb128 0xb
	.4byte	.LASF38
	.4byte	0x988
	.uleb128 0x22
	.4byte	.LVL127
	.4byte	0x51e
	.uleb128 0x22
	.4byte	.LVL128
	.4byte	0x318
	.byte	0
	.uleb128 0xe
	.4byte	0x233
	.uleb128 0x1f
	.4byte	.LASF68
	.byte	0x1
	.2byte	0x1b3
	.4byte	0x119
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9d3
	.uleb128 0xa
	.4byte	.LASF69
	.byte	0x1
	.2byte	0x1b3
	.4byte	0x90
	.4byte	.LLST30
	.uleb128 0xb
	.4byte	.LASF38
	.4byte	0x9d3
	.uleb128 0x22
	.4byte	.LVL135
	.4byte	0x51e
	.uleb128 0x22
	.4byte	.LVL136
	.4byte	0x392
	.byte	0
	.uleb128 0xe
	.4byte	0x58b
	.uleb128 0x1f
	.4byte	.LASF70
	.byte	0x1
	.2byte	0x1c9
	.4byte	0x119
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xaf9
	.uleb128 0xa
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x1c9
	.4byte	0x90
	.4byte	.LLST31
	.uleb128 0x20
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x1c9
	.4byte	0xaf9
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x24
	.string	"len"
	.byte	0x1
	.2byte	0x1c9
	.4byte	0x85
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x23
	.4byte	.LASF33
	.byte	0x1
	.2byte	0x1cb
	.4byte	0x90
	.4byte	.LLST32
	.uleb128 0x23
	.4byte	.LASF73
	.byte	0x1
	.2byte	0x1cc
	.4byte	0x90
	.4byte	.LLST33
	.uleb128 0x23
	.4byte	.LASF74
	.byte	0x1
	.2byte	0x1cc
	.4byte	0x90
	.4byte	.LLST34
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.2byte	0x1cd
	.4byte	0x7a
	.4byte	.LLST35
	.uleb128 0xb
	.4byte	.LASF38
	.4byte	0xb14
	.uleb128 0x17
	.4byte	.LVL145
	.4byte	0x5a0
	.4byte	0xa85
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL148
	.4byte	0x5a0
	.4byte	0xaa5
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL152
	.4byte	0x5a0
	.4byte	0xacf
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x75
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x9
	.byte	0x75
	.sleb128 0
	.byte	0x32
	.byte	0x25
	.byte	0x32
	.byte	0x24
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL156
	.4byte	0x5a0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x75
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x9
	.byte	0x75
	.sleb128 0
	.byte	0x32
	.byte	0x25
	.byte	0x32
	.byte	0x24
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x74
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x1c
	.byte	0
	.byte	0
	.uleb128 0x15
	.byte	0x4
	.4byte	0xaff
	.uleb128 0xe
	.4byte	0x90
	.uleb128 0xc
	.4byte	0xb0
	.4byte	0xb14
	.uleb128 0xd
	.4byte	0xa2
	.byte	0x16
	.byte	0
	.uleb128 0xe
	.4byte	0xb04
	.uleb128 0x1f
	.4byte	.LASF75
	.byte	0x1
	.2byte	0x1f8
	.4byte	0x119
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbcf
	.uleb128 0xa
	.4byte	.LASF47
	.byte	0x1
	.2byte	0x1f8
	.4byte	0x90
	.4byte	.LLST36
	.uleb128 0x20
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x1f8
	.4byte	0x22d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x24
	.string	"len"
	.byte	0x1
	.2byte	0x1f8
	.4byte	0x90
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x25
	.string	"ret"
	.byte	0x1
	.2byte	0x1fa
	.4byte	0x119
	.4byte	.LLST37
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.2byte	0x1fb
	.4byte	0x90
	.4byte	.LLST38
	.uleb128 0x22
	.4byte	.LVL166
	.4byte	0xd4d
	.uleb128 0x17
	.4byte	.LVL168
	.4byte	0xd59
	.4byte	0xba5
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x7
	.byte	0x76
	.sleb128 0
	.byte	0x35
	.byte	0x24
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0
	.uleb128 0x17
	.4byte	.LVL170
	.4byte	0x9d8
	.4byte	0xbc5
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x22
	.4byte	.LVL173
	.4byte	0xd65
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x213
	.4byte	0x119
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc38
	.uleb128 0xa
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x213
	.4byte	0x90
	.4byte	.LLST39
	.uleb128 0x20
	.4byte	.LASF78
	.byte	0x1
	.2byte	0x213
	.4byte	0x22d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x24
	.string	"len"
	.byte	0x1
	.2byte	0x213
	.4byte	0x85
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x23
	.4byte	.LASF36
	.byte	0x1
	.2byte	0x216
	.4byte	0x90
	.4byte	.LLST40
	.uleb128 0xb
	.4byte	.LASF38
	.4byte	0xc38
	.uleb128 0x22
	.4byte	.LVL192
	.4byte	0x40c
	.byte	0
	.uleb128 0xe
	.4byte	0x1b0
	.uleb128 0x1f
	.4byte	.LASF79
	.byte	0x1
	.2byte	0x250
	.4byte	0x119
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd15
	.uleb128 0xa
	.4byte	.LASF80
	.byte	0x1
	.2byte	0x250
	.4byte	0x90
	.4byte	.LLST41
	.uleb128 0xa
	.4byte	.LASF81
	.byte	0x1
	.2byte	0x250
	.4byte	0x90
	.4byte	.LLST42
	.uleb128 0x23
	.4byte	.LASF82
	.byte	0x1
	.2byte	0x252
	.4byte	0x85
	.4byte	.LLST43
	.uleb128 0x23
	.4byte	.LASF83
	.byte	0x1
	.2byte	0x253
	.4byte	0x85
	.4byte	.LLST44
	.uleb128 0x23
	.4byte	.LASF84
	.byte	0x1
	.2byte	0x254
	.4byte	0x90
	.4byte	.LLST45
	.uleb128 0x23
	.4byte	.LASF85
	.byte	0x1
	.2byte	0x255
	.4byte	0x90
	.4byte	.LLST46
	.uleb128 0x17
	.4byte	.LVL195
	.4byte	0x8b3
	.4byte	0xcca
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x22
	.4byte	.LVL196
	.4byte	0x7ab
	.uleb128 0x17
	.4byte	.LVL207
	.4byte	0x98d
	.4byte	0xce7
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL211
	.4byte	0x942
	.4byte	0xd04
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0xb
	.byte	0x74
	.sleb128 0
	.byte	0xf7
	.uleb128 0x21
	.byte	0x75
	.sleb128 0
	.byte	0xf7
	.uleb128 0x21
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL216
	.4byte	0x98d
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LASF86
	.byte	0x1
	.byte	0x17
	.4byte	0x175
	.uleb128 0xc
	.4byte	0x7a
	.4byte	0xd2b
	.uleb128 0x27
	.byte	0
	.uleb128 0x26
	.4byte	.LASF87
	.byte	0x1
	.byte	0x56
	.4byte	0xd20
	.uleb128 0x28
	.4byte	.LASF88
	.4byte	.LASF88
	.byte	0x4
	.2byte	0x114
	.uleb128 0x29
	.4byte	.LASF89
	.4byte	.LASF89
	.byte	0x5
	.byte	0x29
	.uleb128 0x28
	.4byte	.LASF90
	.4byte	.LASF90
	.byte	0x4
	.2byte	0x1c9
	.uleb128 0x28
	.4byte	.LASF91
	.4byte	.LASF91
	.byte	0x4
	.2byte	0x1d7
	.uleb128 0x28
	.4byte	.LASF92
	.4byte	.LASF92
	.byte	0x4
	.2byte	0x1e1
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
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
	.uleb128 0x18
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x18
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
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
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL3
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
	.4byte	.LVL8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL8
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
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL12
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL14
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL15
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL17
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL18
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL21
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL22
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL26
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL22
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL24
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL27
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL33
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL27
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL29
	.4byte	.LVL32
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL34
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL62
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL34
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL37
	.4byte	.LVL61
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL61
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL34
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x3
	.byte	0x74
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL41
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL44
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x3
	.byte	0x74
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL55
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL58
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL34
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL37
	.4byte	.LVL61
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL61
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL35
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL35
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL59
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL38
	.4byte	.LVL41-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x3
	.byte	0x79
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL43
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL52
	.4byte	.LVL55-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL56
	.4byte	.LVL57
	.2byte	0x3
	.byte	0x79
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL57
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL51
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL63
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL66
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL67
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
	.4byte	.LVL96
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL96
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL97
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL67
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL69
	.4byte	.LVL92
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL92
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL96
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL67
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL73
	.4byte	.LVL76
	.2byte	0x3
	.byte	0x74
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL76
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL85
	.4byte	.LVL88
	.2byte	0x3
	.byte	0x74
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL88
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL67
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL69
	.4byte	.LVL92
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL92
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL96
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL68
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL96
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL68
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL81
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL89
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL96
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL71
	.4byte	.LVL72
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL72
	.4byte	.LVL73-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL73
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL74
	.4byte	.LVL75
	.2byte	0x3
	.byte	0x79
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL75
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL83
	.4byte	.LVL84
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL84
	.4byte	.LVL85-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL85
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL86
	.4byte	.LVL87
	.2byte	0x3
	.byte	0x79
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL87
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL83
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL98
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL101
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL102
	.4byte	.LVL105
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL105
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL114
	.4byte	.LVL115
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL115
	.4byte	.LVL120
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL120
	.4byte	.LVL121
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL121
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL116
	.4byte	.LVL117
	.2byte	0x6
	.byte	0xc
	.4byte	0x802000
	.byte	0x9f
	.4byte	.LVL117
	.4byte	.LVL118
	.2byte	0x4
	.byte	0xa
	.2byte	0x6000
	.byte	0x9f
	.4byte	.LVL118
	.4byte	.LVL119
	.2byte	0x4
	.byte	0xa
	.2byte	0x2000
	.byte	0x9f
	.4byte	.LVL119
	.4byte	.LVL121
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL122
	.4byte	.LVL123-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL126
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
	.4byte	.LVL132
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL132
	.4byte	.LVL133
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL133
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL134
	.4byte	.LVL137
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL137
	.4byte	.LVL138
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL138
	.4byte	.LVL139
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL139
	.4byte	.LVL140
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL140
	.4byte	.LVL141
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL141
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL142
	.4byte	.LVL146
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL146
	.4byte	.LVL147
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL147
	.4byte	.LVL157
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL157
	.4byte	.LVL158
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL158
	.4byte	.LVL159
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL159
	.4byte	.LVL160
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL160
	.4byte	.LVL161
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL161
	.4byte	.LVL162
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL162
	.4byte	.LVL163
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL163
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL143
	.4byte	.LVL158
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL160
	.4byte	.LFE17
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL144
	.4byte	.LVL158
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL160
	.4byte	.LFE17
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL149
	.4byte	.LVL150
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL150
	.4byte	.LVL158
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL162
	.4byte	.LVL163
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL149
	.4byte	.LVL151
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL151
	.4byte	.LVL154
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL154
	.4byte	.LVL155
	.2byte	0x3
	.byte	0x76
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL155
	.4byte	.LVL158
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL162
	.4byte	.LVL163
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL164
	.4byte	.LVL174
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL174
	.4byte	.LVL175
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL175
	.4byte	.LVL176
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL176
	.4byte	.LVL177
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL177
	.4byte	.LVL178
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL178
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL165
	.4byte	.LVL167
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL167
	.4byte	.LVL175
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL175
	.4byte	.LFE18
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL166
	.4byte	.LVL167
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL167
	.4byte	.LVL175
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL179
	.4byte	.LVL193
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL193
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL180
	.4byte	.LVL181
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL182
	.4byte	.LVL183
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL184
	.4byte	.LVL185
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL186
	.4byte	.LVL187
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL188
	.4byte	.LVL189
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL190
	.4byte	.LVL191
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL194
	.4byte	.LVL199
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL199
	.4byte	.LVL219
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL219
	.4byte	.LVL220
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL220
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL194
	.4byte	.LVL200
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL200
	.4byte	.LVL201
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL201
	.4byte	.LVL202
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL202
	.4byte	.LVL219
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL219
	.4byte	.LVL220
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL220
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL203
	.4byte	.LVL210
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL210
	.4byte	.LVL213
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL213
	.4byte	.LVL214
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL214
	.4byte	.LVL215
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL215
	.4byte	.LVL219
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL220
	.4byte	.LVL221
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL221
	.4byte	.LVL222
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL222
	.4byte	.LVL223
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL204
	.4byte	.LVL210
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL220
	.4byte	.LVL221
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL197
	.4byte	.LVL219
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL220
	.4byte	.LVL223
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL198
	.4byte	.LVL219
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL220
	.4byte	.LVL223
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0xbc
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
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
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
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB13
	.4byte	.LFE13
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF21:
	.string	"ESP_ROM_SPIFLASH_DOUT_MODE"
.LASF33:
	.string	"page_size"
.LASF88:
	.string	"esp_rom_spiflash_read_user_cmd"
.LASF5:
	.string	"__uint8_t"
.LASF39:
	.string	"esp_rom_spiflash_read_status"
.LASF24:
	.string	"esp_rom_spiflash_read_mode_t"
.LASF50:
	.string	"temp_addr"
.LASF83:
	.string	"head_sector_num"
.LASF56:
	.string	"spi_addr"
.LASF9:
	.string	"long long unsigned int"
.LASF44:
	.string	"addr"
.LASF61:
	.string	"esp_rom_spiflash_unlock"
.LASF8:
	.string	"long long int"
.LASF1:
	.string	"signed char"
.LASF75:
	.string	"esp_rom_spiflash_write_encrypted"
.LASF70:
	.string	"esp_rom_spiflash_write"
.LASF94:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/spi_flash/spi_flash_rom_patch.c"
.LASF41:
	.string	"status_value"
.LASF13:
	.string	"long int"
.LASF36:
	.string	"modebit"
.LASF53:
	.string	"esp_rom_spiflash_enable_write"
.LASF79:
	.string	"esp_rom_spiflash_erase_area"
.LASF22:
	.string	"ESP_ROM_SPIFLASH_FASTRD_MODE"
.LASF63:
	.string	"esp_rom_spiflash_config_readmode"
.LASF57:
	.string	"addr_source"
.LASF43:
	.string	"esp_rom_spiflash_erase_block_internal"
.LASF35:
	.string	"esp_rom_spiflash_chip_t"
.LASF7:
	.string	"__uint32_t"
.LASF67:
	.string	"block_num"
.LASF54:
	.string	"flash_status"
.LASF81:
	.string	"area_len"
.LASF0:
	.string	"unsigned int"
.LASF31:
	.string	"block_size"
.LASF15:
	.string	"long unsigned int"
.LASF27:
	.string	"ESP_ROM_SPIFLASH_RESULT_TIMEOUT"
.LASF76:
	.string	"data"
.LASF92:
	.string	"esp_rom_spiflash_write_encrypted_disable"
.LASF4:
	.string	"short unsigned int"
.LASF65:
	.string	"esp_rom_spiflash_erase_chip"
.LASF71:
	.string	"target"
.LASF90:
	.string	"esp_rom_spiflash_write_encrypted_enable"
.LASF49:
	.string	"byte_length"
.LASF34:
	.string	"status_mask"
.LASF28:
	.string	"esp_rom_spiflash_result_t"
.LASF14:
	.string	"sizetype"
.LASF86:
	.string	"g_rom_spiflash_chip"
.LASF48:
	.string	"addr_dest"
.LASF69:
	.string	"sector_num"
.LASF46:
	.string	"esp_rom_spiflash_read_data"
.LASF47:
	.string	"flash_addr"
.LASF62:
	.string	"esp_rom_spiflash_lock"
.LASF60:
	.string	"esp_rom_spiflash_write_status"
.LASF30:
	.string	"chip_size"
.LASF77:
	.string	"esp_rom_spiflash_read"
.LASF68:
	.string	"esp_rom_spiflash_erase_sector"
.LASF74:
	.string	"pgm_num"
.LASF82:
	.string	"total_sector_num"
.LASF42:
	.string	"esp_rom_spiflash_erase_chip_internal"
.LASF32:
	.string	"sector_size"
.LASF17:
	.string	"_Bool"
.LASF11:
	.string	"int32_t"
.LASF2:
	.string	"unsigned char"
.LASF18:
	.string	"ESP_ROM_SPIFLASH_QIO_MODE"
.LASF80:
	.string	"start_addr"
.LASF93:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF3:
	.string	"short int"
.LASF66:
	.string	"esp_rom_spiflash_erase_block"
.LASF38:
	.string	"__func__"
.LASF85:
	.string	"sector_num_per_block"
.LASF95:
	.string	"spi_cache_mode_switch"
.LASF12:
	.string	"uint32_t"
.LASF55:
	.string	"esp_rom_spiflash_program_page_internal"
.LASF16:
	.string	"char"
.LASF64:
	.string	"mode"
.LASF25:
	.string	"ESP_ROM_SPIFLASH_RESULT_OK"
.LASF87:
	.string	"g_rom_spiflash_dummy_len_plus"
.LASF29:
	.string	"device_id"
.LASF72:
	.string	"src_addr"
.LASF6:
	.string	"__int32_t"
.LASF23:
	.string	"ESP_ROM_SPIFLASH_SLOWRD_MODE"
.LASF73:
	.string	"pgm_len"
.LASF59:
	.string	"esp_rom_spiflash_read_statushigh"
.LASF58:
	.string	"temp_bl"
.LASF26:
	.string	"ESP_ROM_SPIFLASH_RESULT_ERR"
.LASF78:
	.string	"dest_addr"
.LASF37:
	.string	"status"
.LASF10:
	.string	"uint8_t"
.LASF40:
	.string	"esp_rom_spiflash_wait_idle"
.LASF89:
	.string	"__assert_func"
.LASF45:
	.string	"esp_rom_spiflash_erase_sector_internal"
.LASF52:
	.string	"remain_word_num"
.LASF19:
	.string	"ESP_ROM_SPIFLASH_QOUT_MODE"
.LASF91:
	.string	"esp_rom_spiflash_prepare_encrypted_data"
.LASF84:
	.string	"sector_no"
.LASF20:
	.string	"ESP_ROM_SPIFLASH_DIO_MODE"
.LASF51:
	.string	"temp_length"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
