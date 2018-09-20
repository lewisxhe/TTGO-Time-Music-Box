	.file	"secure_boot.c"
	.text
.Ltext0:
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC0:
	.string	"secure_boot"
	.align	4
.LC2:
	.string	"\033[0;31mE (%d) %s: SPI erase failed: 0x%x\033[0m\n"
	.align	4
.LC5:
	.string	"\033[0;31mE (%d) %s: bootloader_mmap(0x1000, 0x%x) failed\033[0m\n"
	.align	4
.LC8:
	.string	"\033[0;31mE (%d) %s: SPI write failed: 0x%x\033[0m\n"
	.section	.text.secure_boot_generate,"ax",@progbits
	.literal_position
	.literal .LC1, .LC0
	.literal .LC3, .LC2
	.literal .LC4, 4096
	.literal .LC6, .LC5
	.literal .LC7, 1073061888
	.literal .LC9, .LC8
	.align	4
	.type	secure_boot_generate, @function
secure_boot_generate:
.LFB16:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/secure_boot.c"
	.loc 1 47 0
.LVL0:
	entry	sp, 224
.LCFI0:
	.loc 1 55 0
	extui	a3, a2, 0, 7
	beqz.n	a3, .L2
	.loc 1 56 0
	srli	a2, a2, 7
.LVL1:
	addi.n	a2, a2, 1
	slli	a2, a2, 7
.LVL2:
.L2:
	.loc 1 58 0
	call8	ets_secure_boot_start
.LVL3:
	.loc 1 59 0
	mov.n	a10, sp
	call8	ets_secure_boot_rd_iv
.LVL4:
	.loc 1 60 0
	movi.n	a10, 0
	call8	ets_secure_boot_hash
.LVL5:
	.loc 1 62 0
	movi.n	a10, 0
	call8	bootloader_flash_erase_sector
.LVL6:
	mov.n	a3, a10
.LVL7:
	.loc 1 63 0
	beqz.n	a10, .L3
	.loc 1 65 0 discriminator 2
	call8	esp_log_timestamp
.LVL8:
	l32r	a11, .LC1
	mov.n	a15, a3
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC3
	movi.n	a10, 1
	call8	esp_log_write
.LVL9:
	.loc 1 66 0 discriminator 2
	movi.n	a2, 0
.LVL10:
	retw.n
.LVL11:
.L3:
	.loc 1 70 0
	mov.n	a11, a2
	l32r	a10, .LC4
	call8	bootloader_mmap
.LVL12:
	mov.n	a4, a10
.LVL13:
	.loc 1 71 0
	bnez.n	a10, .L11
	.loc 1 72 0 discriminator 2
	call8	esp_log_timestamp
.LVL14:
	l32r	a11, .LC1
	mov.n	a15, a2
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC6
	movi.n	a10, 1
	call8	esp_log_write
.LVL15:
	.loc 1 73 0 discriminator 2
	movi.n	a2, 0
.LVL16:
	retw.n
.LVL17:
.L6:
.LBB33:
	.loc 1 76 0 discriminator 3
	srli	a10, a3, 2
	addx4	a10, a10, a4
	call8	ets_secure_boot_hash
.LVL18:
	.loc 1 75 0 discriminator 3
	movi	a8, 0x80
	add.n	a3, a3, a8
.LVL19:
	j	.L5
.LVL20:
.L11:
.LBE33:
	movi.n	a3, 0
.LVL21:
.L5:
.LBB34:
	.loc 1 75 0 is_stmt 0 discriminator 1
	bltu	a3, a2, .L6
.LBE34:
	.loc 1 78 0 is_stmt 1
	mov.n	a10, a4
	call8	bootloader_munmap
.LVL22:
	.loc 1 80 0
	call8	ets_secure_boot_obtain
.LVL23:
	.loc 1 81 0
	movi	a10, 0x80
	add.n	a10, sp, a10
	call8	ets_secure_boot_rd_abstract
.LVL24:
	.loc 1 82 0
	call8	ets_secure_boot_finish
.LVL25:
.LBB35:
.LBB36:
.LBB37:
.LBB38:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include/esp_flash_encrypt.h"
	.loc 2 37 0
	l32r	a2, .LC7
.LVL26:
	memw
	l32i.n	a8, a2, 0
.LBE38:
	extui	a8, a8, 20, 8
.LVL27:
.LBE37:
	.loc 2 39 0
	movi.n	a13, 0
	j	.L7
.LVL28:
.L9:
	.loc 2 41 0
	bbci	a8, 0, .L8
	.loc 2 42 0
	movi.n	a2, 1
	xor	a13, a13, a2
.LVL29:
	extui	a13, a13, 0, 8
.LVL30:
.L8:
	.loc 2 44 0
	srli	a8, a8, 1
.LVL31:
.L7:
	.loc 2 40 0
	bnez.n	a8, .L9
.LBE36:
.LBE35:
	.loc 1 85 0
	movi	a12, 0xc0
	mov.n	a11, sp
	movi.n	a10, 0
	call8	bootloader_flash_write
.LVL32:
	mov.n	a2, a10
.LVL33:
	.loc 1 87 0
	beqz.n	a10, .L10
	.loc 1 88 0 discriminator 2
	call8	esp_log_timestamp
.LVL34:
	l32r	a11, .LC1
	mov.n	a15, a2
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC9
	movi.n	a10, 1
	call8	esp_log_write
.LVL35:
	.loc 1 89 0 discriminator 2
	movi.n	a2, 0
.LVL36:
	retw.n
.LVL37:
.L10:
.LBB39:
.LBB40:
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/cache.h"
	.loc 3 181 0
	call8	esp_dport_access_stall_other_cpu_start
.LVL38:
	.loc 3 182 0
	movi.n	a10, 0
	call8	Cache_Read_Enable_rom
.LVL39:
	.loc 3 183 0
	call8	esp_dport_access_stall_other_cpu_end
.LVL40:
.LBE40:
.LBE39:
	.loc 1 92 0
	movi.n	a2, 1
.LVL41:
	.loc 1 93 0
	retw.n
.LFE16:
	.size	secure_boot_generate, .-secure_boot_generate
	.section	.rodata.str1.4
	.align	4
.LC12:
	.string	"\033[0;32mI (%d) %s: bootloader secure boot is already enabled, continuing..\033[0m\n"
	.align	4
.LC14:
	.string	"\033[0;31mE (%d) %s: bootloader image appears invalid! error %d\033[0m\n"
	.align	4
.LC26:
	.string	"\033[0;32mI (%d) %s: Generating new secure boot key...\033[0m\n"
	.align	4
.LC31:
	.string	"\"(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)\" && (!(((((0x3ff5A000 + 0x0b8) + 4*i)) >= 0x3ff00000) && (((0x3ff5A000 + 0x0b8) + 4*i)) <= 0x3ff13FFC))"
	.align	4
.LC34:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/secure_boot.c"
	.align	4
.LC36:
	.string	"\033[0;32mI (%d) %s: Read & write protecting new key...\033[0m\n"
	.align	4
.LC40:
	.string	"\033[0;33mW (%d) %s: Using pre-loaded secure boot key in EFUSE block 2\033[0m\n"
	.align	4
.LC42:
	.string	"\033[0;32mI (%d) %s: Generating secure boot digest...\033[0m\n"
	.align	4
.LC44:
	.string	"\033[0;31mE (%d) %s: secure boot generation failed\033[0m\n"
	.align	4
.LC46:
	.string	"\033[0;32mI (%d) %s: Digest generation complete.\033[0m\n"
	.align	4
.LC48:
	.string	"\033[0;31mE (%d) %s: Pre-loaded key is not read protected. Refusing to blow secure boot efuse.\033[0m\n"
	.align	4
.LC50:
	.string	"\033[0;31mE (%d) %s: Pre-loaded key is not write protected. Refusing to blow secure boot efuse.\033[0m\n"
	.align	4
.LC52:
	.string	"\033[0;32mI (%d) %s: blowing secure boot efuse...\033[0m\n"
	.align	4
.LC54:
	.string	"\033[0;32mI (%d) %s: Disable JTAG...\033[0m\n"
	.align	4
.LC56:
	.string	"\033[0;32mI (%d) %s: Disable ROM BASIC interpreter fallback...\033[0m\n"
	.align	4
.LC59:
	.string	"\033[0;32mI (%d) %s: secure boot is now enabled for bootloader image\033[0m\n"
	.align	4
.LC61:
	.string	"\033[0;31mE (%d) %s: secure boot not enabled for bootloader image, EFUSE_RD_ABS_DONE_0 is probably write protected!\033[0m\n"
	.section	.text.esp_secure_boot_permanently_enable,"ax",@progbits
	.literal_position
	.literal .LC10, 1073061912
	.literal .LC11, .LC0
	.literal .LC13, .LC12
	.literal .LC15, .LC14
	.literal .LC16, 1073061888
	.literal .LC17, 131072
	.literal .LC18, 1073061976
	.literal .LC19, 1073061980
	.literal .LC20, 1073061984
	.literal .LC21, 1073061988
	.literal .LC22, 1073061992
	.literal .LC23, 1073061996
	.literal .LC24, 1073062000
	.literal .LC25, 1073062004
	.literal .LC27, .LC26
	.literal .LC28, 268265518
	.literal .LC29, -1072693248
	.literal .LC30, 81916
	.literal .LC32, .LC31
	.literal .LC33, __func__$4180
	.literal .LC35, .LC34
	.literal .LC37, .LC36
	.literal .LC38, 1073061916
	.literal .LC39, 131328
	.literal .LC41, .LC40
	.literal .LC43, .LC42
	.literal .LC45, .LC44
	.literal .LC47, .LC46
	.literal .LC49, .LC48
	.literal .LC51, .LC50
	.literal .LC53, .LC52
	.literal .LC55, .LC54
	.literal .LC57, .LC56
	.literal .LC58, 1073061940
	.literal .LC60, .LC59
	.literal .LC62, .LC61
	.align	4
	.global	esp_secure_boot_permanently_enable
	.type	esp_secure_boot_permanently_enable, @function
esp_secure_boot_permanently_enable:
.LFB18:
	.loc 1 105 0
	entry	sp, 80
.LCFI1:
	.loc 1 107 0
	movi.n	a2, 0
	s32i.n	a2, sp, 0
.LBB41:
.LBB42:
.LBB43:
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include/esp_secure_boot.h"
	.loc 4 38 0
	l32r	a2, .LC10
	memw
	l32i.n	a2, a2, 0
.LBE43:
.LBE42:
.LBE41:
	.loc 1 108 0
	bbci	a2, 4, .L13
	.loc 1 110 0 discriminator 9
	call8	esp_log_timestamp
.LVL42:
	l32r	a11, .LC11
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC13
	movi.n	a10, 3
	call8	esp_log_write
.LVL43:
	.loc 1 111 0 discriminator 9
	movi.n	a2, 0
	retw.n
.L13:
	.loc 1 114 0
	mov.n	a10, sp
	call8	esp_image_verify_bootloader
.LVL44:
	mov.n	a2, a10
.LVL45:
	.loc 1 115 0
	beqz.n	a10, .L15
	.loc 1 116 0 discriminator 2
	call8	esp_log_timestamp
.LVL46:
	l32r	a11, .LC11
	mov.n	a15, a2
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC15
	movi.n	a10, 1
	call8	esp_log_write
.LVL47:
	.loc 1 117 0 discriminator 2
	retw.n
.L15:
.LBB44:
	.loc 1 120 0
	l32r	a2, .LC16
.LVL48:
	memw
	l32i.n	a8, a2, 0
.LVL49:
.LBE44:
	.loc 1 121 0
	l32r	a2, .LC17
	and	a2, a8, a2
	movi.n	a11, 1
	movi.n	a10, 0
.LVL50:
	mov.n	a3, a10
	movnez	a3, a11, a2
	extui	a3, a3, 0, 8
.LVL51:
	.loc 1 122 0
	movi	a9, 0x100
	and	a8, a8, a9
.LVL52:
	mov.n	a4, a10
	movnez	a4, a11, a8
	extui	a4, a4, 0, 8
.LVL53:
	.loc 1 123 0
	mov.n	a5, a10
	moveqz	a5, a11, a2
	.loc 1 124 0
	moveqz	a10, a11, a8
	.loc 1 123 0
	bnone	a10, a5, .L16
.LBB45:
	.loc 1 125 0
	l32r	a2, .LC18
	memw
	l32i.n	a2, a2, 0
.LBE45:
	bnez.n	a2, .L16
.LBB46:
	.loc 1 126 0
	l32r	a2, .LC19
	memw
	l32i.n	a2, a2, 0
.LBE46:
	bnez.n	a2, .L16
.LBB47:
	.loc 1 127 0
	l32r	a2, .LC20
	memw
	l32i.n	a2, a2, 0
.LBE47:
	bnez.n	a2, .L16
.LBB48:
	.loc 1 128 0
	l32r	a2, .LC21
	memw
	l32i.n	a2, a2, 0
.LBE48:
	bnez.n	a2, .L16
.LBB49:
	.loc 1 129 0
	l32r	a2, .LC22
	memw
	l32i.n	a2, a2, 0
.LBE49:
	bnez.n	a2, .L16
.LBB50:
	.loc 1 130 0
	l32r	a2, .LC23
	memw
	l32i.n	a2, a2, 0
.LBE50:
	bnez.n	a2, .L16
.LBB51:
	.loc 1 131 0
	l32r	a2, .LC24
	memw
	l32i.n	a2, a2, 0
.LBE51:
	bnez.n	a2, .L16
.LBB52:
	.loc 1 132 0
	l32r	a2, .LC25
	memw
	l32i.n	a2, a2, 0
.LBE52:
	bnez.n	a2, .L16
.LBB53:
	.loc 1 133 0 discriminator 9
	call8	esp_log_timestamp
.LVL54:
	l32r	a11, .LC11
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC27
	movi.n	a10, 3
	call8	esp_log_write
.LVL55:
	.loc 1 135 0 discriminator 9
	movi.n	a11, 0x20
	addi.n	a10, sp, 4
	call8	bootloader_fill_random
.LVL56:
.LBB54:
	.loc 1 136 0 discriminator 9
	movi.n	a3, 0
.LVL57:
	j	.L17
.LVL58:
.L19:
.LBB55:
	.loc 1 138 0
	l32r	a2, .LC28
	add.n	a2, a3, a2
	slli	a2, a2, 2
	l32r	a4, .LC29
	add.n	a4, a2, a4
	l32r	a8, .LC30
	bltu	a8, a4, .L18
	.loc 1 138 0 is_stmt 0 discriminator 1
	l32r	a13, .LC32
	l32r	a12, .LC33
	movi	a11, 0x8a
	l32r	a10, .LC35
	call8	__assert_func
.LVL59:
.L18:
	.loc 1 138 0 discriminator 2
	addx4	a4, a3, sp
	l32i.n	a4, a4, 4
	memw
	s32i.n	a4, a2, 0
.LBE55:
	.loc 1 136 0 is_stmt 1 discriminator 2
	addi.n	a3, a3, 1
.LVL60:
.L17:
	blti	a3, 8, .L19
.LBE54:
	.loc 1 140 0
	movi.n	a12, 0x20
	movi.n	a11, 0
	addi.n	a10, sp, 4
	call8	memset
.LVL61:
.LBB56:
.LBB57:
	.loc 1 101 0
	call8	esp_efuse_burn_new_values
.LVL62:
.LBE57:
.LBE56:
	.loc 1 142 0
	call8	esp_log_timestamp
.LVL63:
	l32r	a11, .LC11
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC37
	movi.n	a10, 3
	call8	esp_log_write
.LVL64:
.LBB58:
	.loc 1 143 0
	l32r	a3, .LC39
.LVL65:
	l32r	a2, .LC38
	memw
	s32i.n	a3, a2, 0
.LBE58:
.LBB59:
.LBB60:
	.loc 1 101 0
	call8	esp_efuse_burn_new_values
.LVL66:
.LBE60:
.LBE59:
	.loc 1 146 0
	movi.n	a4, 1
	.loc 1 145 0
	mov.n	a3, a4
.LBE53:
	.loc 1 132 0
	j	.L20
.LVL67:
.L16:
	.loc 1 149 0 discriminator 4
	call8	esp_log_timestamp
.LVL68:
	l32r	a11, .LC11
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC41
	movi.n	a10, 2
	call8	esp_log_write
.LVL69:
.L20:
	.loc 1 152 0 discriminator 9
	call8	esp_log_timestamp
.LVL70:
	l32r	a11, .LC11
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC43
	movi.n	a10, 3
	call8	esp_log_write
.LVL71:
	.loc 1 153 0 discriminator 9
	l32i.n	a10, sp, 0
	call8	secure_boot_generate
.LVL72:
	.loc 1 153 0 discriminator 9
	bnez.n	a10, .L21
	.loc 1 154 0 discriminator 2
	call8	esp_log_timestamp
.LVL73:
	l32r	a11, .LC11
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC45
	movi.n	a10, 1
	call8	esp_log_write
.LVL74:
	.loc 1 155 0 discriminator 2
	movi.n	a2, -1
	retw.n
.L21:
	.loc 1 157 0 discriminator 9
	call8	esp_log_timestamp
.LVL75:
	l32r	a11, .LC11
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC47
	movi.n	a10, 3
	call8	esp_log_write
.LVL76:
	.loc 1 160 0 discriminator 9
	bnez.n	a3, .L22
	.loc 1 161 0 discriminator 2
	call8	esp_log_timestamp
.LVL77:
	l32r	a11, .LC11
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC49
	movi.n	a10, 1
	call8	esp_log_write
.LVL78:
	.loc 1 162 0 discriminator 2
	movi	a2, 0x103
	retw.n
.L22:
	.loc 1 164 0
	bnez.n	a4, .L23
	.loc 1 165 0 discriminator 2
	call8	esp_log_timestamp
.LVL79:
	l32r	a11, .LC11
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC51
	movi.n	a10, 1
	call8	esp_log_write
.LVL80:
	.loc 1 166 0 discriminator 2
	movi	a2, 0x103
	retw.n
.L23:
	.loc 1 170 0 discriminator 9
	call8	esp_log_timestamp
.LVL81:
	l32r	a2, .LC11
	mov.n	a14, a2
	mov.n	a13, a10
	l32r	a12, .LC53
	mov.n	a11, a2
	movi.n	a10, 3
	call8	esp_log_write
.LVL82:
	.loc 1 176 0 discriminator 9
	call8	esp_log_timestamp
.LVL83:
	mov.n	a14, a2
	mov.n	a13, a10
	l32r	a12, .LC55
	mov.n	a11, a2
	movi.n	a10, 3
	call8	esp_log_write
.LVL84:
	.loc 1 183 0 discriminator 9
	call8	esp_log_timestamp
.LVL85:
	mov.n	a14, a2
	mov.n	a13, a10
	l32r	a12, .LC57
	mov.n	a11, a2
	movi.n	a10, 3
	call8	esp_log_write
.LVL86:
.LBB61:
	.loc 1 189 0 discriminator 9
	movi.n	a3, 0x54
.LVL87:
	l32r	a2, .LC58
	memw
	s32i.n	a3, a2, 0
.LBE61:
.LBB62:
.LBB63:
	.loc 1 101 0 discriminator 9
	call8	esp_efuse_burn_new_values
.LVL88:
.LBE63:
.LBE62:
.LBB64:
	.loc 1 191 0 discriminator 9
	l32r	a2, .LC10
	memw
	l32i.n	a2, a2, 0
.LVL89:
.LBE64:
	.loc 1 193 0 discriminator 9
	bbci	a2, 4, .L24
	.loc 1 194 0 discriminator 9
	call8	esp_log_timestamp
.LVL90:
	l32r	a11, .LC11
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC60
	movi.n	a10, 3
	call8	esp_log_write
.LVL91:
	.loc 1 195 0 discriminator 9
	movi.n	a2, 0
.LVL92:
	retw.n
.LVL93:
.L24:
	.loc 1 200 0 discriminator 2
	call8	esp_log_timestamp
.LVL94:
	l32r	a11, .LC11
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC62
	movi.n	a10, 1
	call8	esp_log_write
.LVL95:
	.loc 1 202 0 discriminator 2
	movi	a2, 0x103
.LVL96:
	.loc 1 204 0 discriminator 2
	retw.n
.LFE18:
	.size	esp_secure_boot_permanently_enable, .-esp_secure_boot_permanently_enable
	.section	.rodata.__func__$4180,"a",@progbits
	.align	4
	.type	__func__$4180, @object
	.size	__func__$4180, 35
__func__$4180:
	.string	"esp_secure_boot_permanently_enable"
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
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI0-.LFB16
	.byte	0xe
	.uleb128 0xe0
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI1-.LFB18
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE2:
	.text
.Letext0:
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_err.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/log/include/esp_log.h"
	.file 9 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include/esp_image_format.h"
	.file 10 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/secure_boot.h"
	.file 11 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_dport_access.h"
	.file 12 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include_priv/bootloader_flash.h"
	.file 13 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/assert.h"
	.file 14 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include/esp_efuse.h"
	.file 15 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include_priv/bootloader_random.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xaa6
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF62
	.byte	0xc
	.4byte	.LASF63
	.4byte	.LASF64
	.4byte	.Ldebug_ranges0+0x18
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
	.byte	0x5
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
	.byte	0x5
	.byte	0x19
	.4byte	0x25
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x5
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
	.uleb128 0x5
	.byte	0x4
	.4byte	0xa0
	.uleb128 0x6
	.4byte	0x93
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x6
	.byte	0x15
	.4byte	0x41
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x6
	.byte	0x2c
	.4byte	0x5a
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x6
	.byte	0x2d
	.4byte	0x65
	.uleb128 0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0x8
	.byte	0x1f
	.4byte	0xf7
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0
	.uleb128 0x8
	.4byte	.LASF18
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0x3
	.uleb128 0x8
	.4byte	.LASF21
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0x5
	.byte	0
	.uleb128 0x4
	.4byte	.LASF23
	.byte	0x7
	.byte	0x18
	.4byte	0xb0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0x9
	.byte	0x27
	.4byte	0x127
	.uleb128 0x8
	.4byte	.LASF24
	.byte	0
	.uleb128 0x8
	.4byte	.LASF25
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF26
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF27
	.byte	0xf
	.byte	0
	.uleb128 0x9
	.4byte	0xa5
	.4byte	0x137
	.uleb128 0xa
	.4byte	0x85
	.byte	0x3f
	.byte	0
	.uleb128 0xb
	.byte	0xc0
	.byte	0x4
	.byte	0x63
	.4byte	0x157
	.uleb128 0xc
	.string	"iv"
	.byte	0x4
	.byte	0x64
	.4byte	0x157
	.byte	0
	.uleb128 0xd
	.4byte	.LASF28
	.byte	0x4
	.byte	0x65
	.4byte	0x127
	.byte	0x80
	.byte	0
	.uleb128 0x9
	.4byte	0xa5
	.4byte	0x167
	.uleb128 0xa
	.4byte	0x85
	.byte	0x7f
	.byte	0
	.uleb128 0x4
	.4byte	.LASF29
	.byte	0x4
	.byte	0x66
	.4byte	0x137
	.uleb128 0xe
	.4byte	.LASF34
	.byte	0x2
	.byte	0x24
	.4byte	0x1a6
	.byte	0x3
	.4byte	0x1a6
	.uleb128 0xf
	.4byte	.LASF30
	.byte	0x2
	.byte	0x25
	.4byte	0xbb
	.uleb128 0x10
	.4byte	.LASF31
	.4byte	0x1bd
	.4byte	.LASF34
	.uleb128 0xf
	.4byte	.LASF32
	.byte	0x2
	.byte	0x27
	.4byte	0x1a6
	.byte	0
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF33
	.uleb128 0x9
	.4byte	0x93
	.4byte	0x1bd
	.uleb128 0xa
	.4byte	0x85
	.byte	0x1c
	.byte	0
	.uleb128 0x6
	.4byte	0x1ad
	.uleb128 0x11
	.4byte	.LASF65
	.byte	0x3
	.byte	0xb2
	.byte	0x3
	.4byte	0x1e2
	.uleb128 0x12
	.4byte	.LASF66
	.byte	0x3
	.byte	0xb2
	.4byte	0x25
	.uleb128 0x13
	.4byte	.LASF45
	.byte	0x3
	.byte	0xb4
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF35
	.byte	0x4
	.byte	0x25
	.4byte	0x1a6
	.byte	0x3
	.4byte	0x200
	.uleb128 0x10
	.4byte	.LASF31
	.4byte	0x210
	.4byte	.LASF35
	.byte	0
	.uleb128 0x9
	.4byte	0x93
	.4byte	0x210
	.uleb128 0xa
	.4byte	0x85
	.byte	0x17
	.byte	0
	.uleb128 0x6
	.4byte	0x200
	.uleb128 0x14
	.4byte	.LASF67
	.byte	0x1
	.byte	0x60
	.byte	0x3
	.uleb128 0x15
	.4byte	.LASF68
	.byte	0x1
	.byte	0x2f
	.4byte	0x1a6
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x48a
	.uleb128 0x16
	.4byte	.LASF37
	.byte	0x1
	.byte	0x2f
	.4byte	0xbb
	.4byte	.LLST0
	.uleb128 0x17
	.string	"err"
	.byte	0x1
	.byte	0x30
	.4byte	0xf7
	.4byte	.LLST1
	.uleb128 0x18
	.4byte	.LASF28
	.byte	0x1
	.byte	0x31
	.4byte	0x167
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x18
	.4byte	.LASF36
	.byte	0x1
	.byte	0x32
	.4byte	0x48a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x19
	.4byte	.Ldebug_ranges0+0
	.4byte	0x29e
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.byte	0x4b
	.4byte	0x25
	.4byte	.LLST2
	.uleb128 0x1a
	.4byte	.LVL18
	.4byte	0x9cf
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x9
	.byte	0x73
	.sleb128 0
	.byte	0x32
	.byte	0x25
	.byte	0x32
	.byte	0x24
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	0x172
	.4byte	.LBB35
	.4byte	.LBE35-.LBB35
	.byte	0x1
	.byte	0x56
	.4byte	0x2d3
	.uleb128 0x1d
	.4byte	.LBB36
	.4byte	.LBE36-.LBB36
	.uleb128 0x1e
	.4byte	0x182
	.4byte	.LLST3
	.uleb128 0x1e
	.4byte	0x19a
	.4byte	.LLST4
	.uleb128 0x1f
	.4byte	0x18d
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	0x1c2
	.4byte	.LBB39
	.4byte	.LBE39-.LBB39
	.byte	0x1
	.byte	0x5b
	.4byte	0x31c
	.uleb128 0x20
	.4byte	0x1ce
	.byte	0
	.uleb128 0x1d
	.4byte	.LBB40
	.4byte	.LBE40-.LBB40
	.uleb128 0x21
	.4byte	.LVL38
	.4byte	0x9da
	.uleb128 0x22
	.4byte	.LVL39
	.4byte	0x9e5
	.4byte	0x311
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x21
	.4byte	.LVL40
	.4byte	0x9f0
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL3
	.4byte	0x9fb
	.uleb128 0x22
	.4byte	.LVL4
	.4byte	0xa06
	.4byte	0x33a
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.byte	0
	.uleb128 0x22
	.4byte	.LVL5
	.4byte	0x9cf
	.4byte	0x34d
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x22
	.4byte	.LVL6
	.4byte	0xa11
	.4byte	0x360
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x21
	.4byte	.LVL8
	.4byte	0xa1c
	.uleb128 0x22
	.4byte	.LVL9
	.4byte	0xa27
	.4byte	0x39d
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL12
	.4byte	0xa32
	.4byte	0x3b8
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1000
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL14
	.4byte	0xa1c
	.uleb128 0x22
	.4byte	.LVL15
	.4byte	0xa27
	.4byte	0x3f5
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL22
	.4byte	0xa3d
	.4byte	0x409
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL23
	.4byte	0xa48
	.uleb128 0x22
	.4byte	.LVL24
	.4byte	0xa53
	.4byte	0x427
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x21
	.4byte	.LVL25
	.4byte	0xa5e
	.uleb128 0x22
	.4byte	.LVL32
	.4byte	0xa69
	.4byte	0x450
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0xc0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL34
	.4byte	0xa1c
	.uleb128 0x1a
	.4byte	.LVL35
	.4byte	0xa27
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x490
	.uleb128 0x6
	.4byte	0xbb
	.uleb128 0x23
	.4byte	.LASF69
	.byte	0x1
	.byte	0x69
	.4byte	0xf7
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x982
	.uleb128 0x17
	.string	"err"
	.byte	0x1
	.byte	0x6a
	.4byte	0xf7
	.4byte	.LLST5
	.uleb128 0x18
	.4byte	.LASF37
	.byte	0x1
	.byte	0x6b
	.4byte	0xbb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x24
	.4byte	.LASF38
	.byte	0x1
	.byte	0x78
	.4byte	0xbb
	.4byte	.LLST6
	.uleb128 0x25
	.4byte	.LASF31
	.4byte	0x992
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$4180
	.uleb128 0x24
	.4byte	.LASF39
	.byte	0x1
	.byte	0x79
	.4byte	0x1a6
	.4byte	.LLST7
	.uleb128 0x24
	.4byte	.LASF40
	.byte	0x1
	.byte	0x7a
	.4byte	0x1a6
	.4byte	.LLST8
	.uleb128 0x24
	.4byte	.LASF41
	.byte	0x1
	.byte	0xad
	.4byte	0xbb
	.4byte	.LLST9
	.uleb128 0x24
	.4byte	.LASF42
	.byte	0x1
	.byte	0xbf
	.4byte	0xbb
	.4byte	.LLST10
	.uleb128 0x1c
	.4byte	0x1e2
	.4byte	.LBB41
	.4byte	.LBE41-.LBB41
	.byte	0x1
	.byte	0x6c
	.4byte	0x549
	.uleb128 0x1d
	.4byte	.LBB42
	.4byte	.LBE42-.LBB42
	.uleb128 0x1f
	.4byte	0x1f2
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LBB53
	.4byte	.LBE53-.LBB53
	.4byte	0x68b
	.uleb128 0x27
	.string	"buf"
	.byte	0x1
	.byte	0x86
	.4byte	0x997
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x26
	.4byte	.LBB54
	.4byte	.LBE54-.LBB54
	.4byte	0x5ab
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.byte	0x88
	.4byte	0x25
	.4byte	.LLST11
	.uleb128 0x1a
	.4byte	.LVL59
	.4byte	0xa74
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC34
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x8a
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$4180
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC31
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	0x215
	.4byte	.LBB56
	.4byte	.LBE56-.LBB56
	.byte	0x1
	.byte	0x8d
	.4byte	0x5c8
	.uleb128 0x21
	.4byte	.LVL62
	.4byte	0xa7f
	.byte	0
	.uleb128 0x1c
	.4byte	0x215
	.4byte	.LBB59
	.4byte	.LBE59-.LBB59
	.byte	0x1
	.byte	0x90
	.4byte	0x5e5
	.uleb128 0x21
	.4byte	.LVL66
	.4byte	0xa7f
	.byte	0
	.uleb128 0x21
	.4byte	.LVL54
	.4byte	0xa1c
	.uleb128 0x22
	.4byte	.LVL55
	.4byte	0xa27
	.4byte	0x61c
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC26
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL56
	.4byte	0xa8a
	.4byte	0x637
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x22
	.4byte	.LVL61
	.4byte	0xa95
	.4byte	0x657
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x21
	.4byte	.LVL63
	.4byte	0xa1c
	.uleb128 0x1a
	.4byte	.LVL64
	.4byte	0xa27
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC36
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	0x215
	.4byte	.LBB62
	.4byte	.LBE62-.LBB62
	.byte	0x1
	.byte	0xbe
	.4byte	0x6a8
	.uleb128 0x21
	.4byte	.LVL88
	.4byte	0xa7f
	.byte	0
	.uleb128 0x21
	.4byte	.LVL42
	.4byte	0xa1c
	.uleb128 0x22
	.4byte	.LVL43
	.4byte	0xa27
	.4byte	0x6df
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC12
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL44
	.4byte	0xa9e
	.4byte	0x6f4
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x21
	.4byte	.LVL46
	.4byte	0xa1c
	.uleb128 0x22
	.4byte	.LVL47
	.4byte	0xa27
	.4byte	0x731
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL68
	.4byte	0xa1c
	.uleb128 0x22
	.4byte	.LVL69
	.4byte	0xa27
	.4byte	0x768
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC40
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL70
	.4byte	0xa1c
	.uleb128 0x22
	.4byte	.LVL71
	.4byte	0xa27
	.4byte	0x79f
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC42
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL72
	.4byte	0x21d
	.uleb128 0x21
	.4byte	.LVL73
	.4byte	0xa1c
	.uleb128 0x22
	.4byte	.LVL74
	.4byte	0xa27
	.4byte	0x7df
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC44
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL75
	.4byte	0xa1c
	.uleb128 0x22
	.4byte	.LVL76
	.4byte	0xa27
	.4byte	0x816
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC46
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL77
	.4byte	0xa1c
	.uleb128 0x22
	.4byte	.LVL78
	.4byte	0xa27
	.4byte	0x84d
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC48
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL79
	.4byte	0xa1c
	.uleb128 0x22
	.4byte	.LVL80
	.4byte	0xa27
	.4byte	0x884
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC50
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL81
	.4byte	0xa1c
	.uleb128 0x22
	.4byte	.LVL82
	.4byte	0xa27
	.4byte	0x8b5
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC52
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL83
	.4byte	0xa1c
	.uleb128 0x22
	.4byte	.LVL84
	.4byte	0xa27
	.4byte	0x8e6
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC54
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL85
	.4byte	0xa1c
	.uleb128 0x22
	.4byte	.LVL86
	.4byte	0xa27
	.4byte	0x917
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC56
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL90
	.4byte	0xa1c
	.uleb128 0x22
	.4byte	.LVL91
	.4byte	0xa27
	.4byte	0x94e
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC59
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL94
	.4byte	0xa1c
	.uleb128 0x1a
	.4byte	.LVL95
	.4byte	0xa27
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC61
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0x93
	.4byte	0x992
	.uleb128 0xa
	.4byte	0x85
	.byte	0x22
	.byte	0
	.uleb128 0x6
	.4byte	0x982
	.uleb128 0x9
	.4byte	0xbb
	.4byte	0x9a7
	.uleb128 0xa
	.4byte	0x85
	.byte	0x7
	.byte	0
	.uleb128 0x27
	.string	"TAG"
	.byte	0x1
	.byte	0x27
	.4byte	0x9b9
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC0
	.byte	0x9f
	.uleb128 0x6
	.4byte	0x9a
	.uleb128 0x28
	.4byte	.LASF70
	.byte	0x9
	.byte	0x2c
	.4byte	0x102
	.uleb128 0x5
	.byte	0x3
	.4byte	esp_image_spi_freq_t
	.uleb128 0x29
	.4byte	.LASF43
	.4byte	.LASF43
	.byte	0xa
	.byte	0x1c
	.uleb128 0x29
	.4byte	.LASF44
	.4byte	.LASF44
	.byte	0xb
	.byte	0x18
	.uleb128 0x29
	.4byte	.LASF45
	.4byte	.LASF45
	.byte	0x3
	.byte	0xb4
	.uleb128 0x29
	.4byte	.LASF46
	.4byte	.LASF46
	.byte	0xb
	.byte	0x19
	.uleb128 0x29
	.4byte	.LASF47
	.4byte	.LASF47
	.byte	0xa
	.byte	0x18
	.uleb128 0x29
	.4byte	.LASF48
	.4byte	.LASF48
	.byte	0xa
	.byte	0x22
	.uleb128 0x29
	.4byte	.LASF49
	.4byte	.LASF49
	.byte	0xc
	.byte	0x65
	.uleb128 0x29
	.4byte	.LASF50
	.4byte	.LASF50
	.byte	0x8
	.byte	0x57
	.uleb128 0x29
	.4byte	.LASF51
	.4byte	.LASF51
	.byte	0x8
	.byte	0x6b
	.uleb128 0x29
	.4byte	.LASF52
	.4byte	.LASF52
	.byte	0xc
	.byte	0x31
	.uleb128 0x29
	.4byte	.LASF53
	.4byte	.LASF53
	.byte	0xc
	.byte	0x39
	.uleb128 0x29
	.4byte	.LASF54
	.4byte	.LASF54
	.byte	0xa
	.byte	0x1e
	.uleb128 0x29
	.4byte	.LASF55
	.4byte	.LASF55
	.byte	0xa
	.byte	0x24
	.uleb128 0x29
	.4byte	.LASF56
	.4byte	.LASF56
	.byte	0xa
	.byte	0x1a
	.uleb128 0x29
	.4byte	.LASF57
	.4byte	.LASF57
	.byte	0xc
	.byte	0x5c
	.uleb128 0x29
	.4byte	.LASF58
	.4byte	.LASF58
	.byte	0xd
	.byte	0x29
	.uleb128 0x29
	.4byte	.LASF59
	.4byte	.LASF59
	.byte	0xe
	.byte	0x2a
	.uleb128 0x29
	.4byte	.LASF60
	.4byte	.LASF60
	.byte	0xf
	.byte	0x31
	.uleb128 0x2a
	.4byte	.LASF71
	.4byte	.LASF71
	.uleb128 0x29
	.4byte	.LASF61
	.4byte	.LASF61
	.byte	0x9
	.byte	0x8f
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x1d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x2a
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
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL11
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL17
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL7
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL33
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL37
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL17
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL21
	.4byte	.LFE16
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL27
	.4byte	.LVL32-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL30
	.4byte	.LVL32-1
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL45
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL48
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL49
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL51
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL66
	.4byte	.LVL67
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL67
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL53
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL66
	.4byte	.LVL67
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL67
	.4byte	.LFE18
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL82
	.4byte	.LVL84
	.2byte	0x2
	.byte	0x40
	.byte	0x9f
	.4byte	.LVL84
	.4byte	.LVL86
	.2byte	0x3
	.byte	0x8
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL86
	.4byte	.LFE18
	.2byte	0x3
	.byte	0x8
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL89
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL93
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL56
	.4byte	.LVL58
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL58
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x24
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB33
	.4byte	.LBE33
	.4byte	.LBB34
	.4byte	.LBE34
	.4byte	0
	.4byte	0
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF61:
	.string	"esp_image_verify_bootloader"
.LASF4:
	.string	"short int"
.LASF43:
	.string	"ets_secure_boot_hash"
.LASF11:
	.string	"sizetype"
.LASF26:
	.string	"ESP_IMAGE_SPI_SPEED_20M"
.LASF7:
	.string	"__uint32_t"
.LASF54:
	.string	"ets_secure_boot_obtain"
.LASF63:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/secure_boot.c"
.LASF28:
	.string	"digest"
.LASF14:
	.string	"uint8_t"
.LASF59:
	.string	"esp_efuse_burn_new_values"
.LASF65:
	.string	"Cache_Read_Enable"
.LASF34:
	.string	"esp_flash_encryption_enabled"
.LASF2:
	.string	"signed char"
.LASF64:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\bootloader_support"
.LASF8:
	.string	"long long int"
.LASF71:
	.string	"memset"
.LASF10:
	.string	"long int"
.LASF56:
	.string	"ets_secure_boot_finish"
.LASF20:
	.string	"ESP_LOG_INFO"
.LASF45:
	.string	"Cache_Read_Enable_rom"
.LASF5:
	.string	"__uint8_t"
.LASF70:
	.string	"esp_image_spi_freq_t"
.LASF27:
	.string	"ESP_IMAGE_SPI_SPEED_80M"
.LASF47:
	.string	"ets_secure_boot_start"
.LASF55:
	.string	"ets_secure_boot_rd_abstract"
.LASF3:
	.string	"unsigned char"
.LASF42:
	.string	"after"
.LASF69:
	.string	"esp_secure_boot_permanently_enable"
.LASF60:
	.string	"bootloader_fill_random"
.LASF9:
	.string	"long long unsigned int"
.LASF16:
	.string	"uint32_t"
.LASF66:
	.string	"cpu_no"
.LASF0:
	.string	"unsigned int"
.LASF41:
	.string	"new_wdata6"
.LASF12:
	.string	"long unsigned int"
.LASF31:
	.string	"__func__"
.LASF51:
	.string	"esp_log_write"
.LASF39:
	.string	"efuse_key_read_protected"
.LASF53:
	.string	"bootloader_munmap"
.LASF67:
	.string	"burn_efuses"
.LASF13:
	.string	"char"
.LASF21:
	.string	"ESP_LOG_DEBUG"
.LASF15:
	.string	"int32_t"
.LASF17:
	.string	"ESP_LOG_NONE"
.LASF1:
	.string	"short unsigned int"
.LASF38:
	.string	"dis_reg"
.LASF33:
	.string	"_Bool"
.LASF40:
	.string	"efuse_key_write_protected"
.LASF35:
	.string	"esp_secure_boot_enabled"
.LASF19:
	.string	"ESP_LOG_WARN"
.LASF37:
	.string	"image_len"
.LASF25:
	.string	"ESP_IMAGE_SPI_SPEED_26M"
.LASF57:
	.string	"bootloader_flash_write"
.LASF29:
	.string	"esp_secure_boot_iv_digest_t"
.LASF49:
	.string	"bootloader_flash_erase_sector"
.LASF30:
	.string	"flash_crypt_cnt"
.LASF36:
	.string	"image"
.LASF48:
	.string	"ets_secure_boot_rd_iv"
.LASF22:
	.string	"ESP_LOG_VERBOSE"
.LASF6:
	.string	"__int32_t"
.LASF32:
	.string	"enabled"
.LASF50:
	.string	"esp_log_timestamp"
.LASF44:
	.string	"esp_dport_access_stall_other_cpu_start"
.LASF24:
	.string	"ESP_IMAGE_SPI_SPEED_40M"
.LASF58:
	.string	"__assert_func"
.LASF62:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF46:
	.string	"esp_dport_access_stall_other_cpu_end"
.LASF18:
	.string	"ESP_LOG_ERROR"
.LASF68:
	.string	"secure_boot_generate"
.LASF23:
	.string	"esp_err_t"
.LASF52:
	.string	"bootloader_mmap"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
