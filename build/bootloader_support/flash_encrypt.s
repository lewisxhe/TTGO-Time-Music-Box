	.file	"flash_encrypt.c"
	.text
.Ltext0:
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC10:
	.string	"flash_encrypt"
	.align	4
.LC12:
	.string	"\033[0;32mI (%d) %s: Generating new flash encryption key...\033[0m\n"
	.align	4
.LC17:
	.string	"\"(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)\" && (!(((((0x3ff5A000 + 0x098) + 4*i)) >= 0x3ff00000) && (((0x3ff5A000 + 0x098) + 4*i)) <= 0x3ff13FFC))"
	.align	4
.LC20:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/flash_encrypt.c"
	.align	4
.LC22:
	.string	"\033[0;32mI (%d) %s: Read & write protecting new key...\033[0m\n"
	.align	4
.LC26:
	.string	"\033[0;31mE (%d) %s: Flash encryption key has to be either unset or both read and write protected\033[0m\n"
	.align	4
.LC28:
	.string	"\033[0;33mW (%d) %s: Using pre-loaded flash encryption key in EFUSE block 1\033[0m\n"
	.align	4
.LC30:
	.string	"\033[0;32mI (%d) %s: Setting CRYPT_CONFIG efuse to 0xF\033[0m\n"
	.align	4
.LC34:
	.string	"\033[0;32mI (%d) %s: Disable UART bootloader encryption...\033[0m\n"
	.align	4
.LC36:
	.string	"\033[0;32mI (%d) %s: Disable UART bootloader decryption...\033[0m\n"
	.align	4
.LC38:
	.string	"\033[0;32mI (%d) %s: Disable UART bootloader MMU cache...\033[0m\n"
	.align	4
.LC40:
	.string	"\033[0;32mI (%d) %s: Disable JTAG...\033[0m\n"
	.align	4
.LC42:
	.string	"\033[0;32mI (%d) %s: Disable ROM BASIC interpreter fallback...\033[0m\n"
	.section	.text.initialise_flash_encryption,"ax",@progbits
	.literal_position
	.literal .LC0, 1073061888
	.literal .LC1, 65536
	.literal .LC2, 1073061944
	.literal .LC3, 1073061948
	.literal .LC4, 1073061952
	.literal .LC5, 1073061956
	.literal .LC6, 1073061960
	.literal .LC7, 1073061964
	.literal .LC8, 1073061968
	.literal .LC9, 1073061972
	.literal .LC11, .LC10
	.literal .LC13, .LC12
	.literal .LC14, 268265510
	.literal .LC15, -1072693248
	.literal .LC16, 81916
	.literal .LC18, .LC17
	.literal .LC19, __func__$4141
	.literal .LC21, .LC20
	.literal .LC23, .LC22
	.literal .LC24, 1073061916
	.literal .LC25, 65664
	.literal .LC27, .LC26
	.literal .LC29, .LC28
	.literal .LC31, .LC30
	.literal .LC32, 1073061936
	.literal .LC33, -268435456
	.literal .LC35, .LC34
	.literal .LC37, .LC36
	.literal .LC39, .LC38
	.literal .LC41, .LC40
	.literal .LC43, .LC42
	.literal .LC44, 1073061940
	.align	4
	.type	initialise_flash_encryption, @function
initialise_flash_encryption:
.LFB13:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/flash_encrypt.c"
	.loc 1 64 0
	entry	sp, 64
.LCFI0:
.LBB5:
	.loc 1 68 0
	l32r	a2, .LC0
	memw
	l32i.n	a8, a2, 0
.LVL0:
.LBE5:
	.loc 1 69 0
	l32r	a10, .LC1
	and	a10, a8, a10
.LVL1:
	.loc 1 70 0
	movi	a9, 0x80
	and	a9, a8, a9
.LVL2:
	.loc 1 71 0
	movi.n	a8, 1
.LVL3:
	movi.n	a2, 0
	mov.n	a3, a2
	moveqz	a3, a8, a10
	extui	a10, a3, 0, 8
.LVL4:
	.loc 1 72 0
	movnez	a8, a2, a9
	extui	a8, a8, 0, 8
	.loc 1 71 0
	bnone	a10, a8, .L2
.LBB6:
	.loc 1 73 0
	l32r	a2, .LC2
	memw
	l32i.n	a2, a2, 0
.LBE6:
	bnez.n	a2, .L2
.LBB7:
	.loc 1 74 0
	l32r	a2, .LC3
	memw
	l32i.n	a2, a2, 0
.LBE7:
	bnez.n	a2, .L2
.LBB8:
	.loc 1 75 0
	l32r	a2, .LC4
	memw
	l32i.n	a2, a2, 0
.LBE8:
	bnez.n	a2, .L2
.LBB9:
	.loc 1 76 0
	l32r	a2, .LC5
	memw
	l32i.n	a2, a2, 0
.LBE9:
	bnez.n	a2, .L2
.LBB10:
	.loc 1 77 0
	l32r	a2, .LC6
	memw
	l32i.n	a2, a2, 0
.LBE10:
	bnez.n	a2, .L2
.LBB11:
	.loc 1 78 0
	l32r	a2, .LC7
	memw
	l32i.n	a2, a2, 0
.LBE11:
	bnez.n	a2, .L2
.LBB12:
	.loc 1 79 0
	l32r	a2, .LC8
	memw
	l32i.n	a2, a2, 0
.LBE12:
	bnez.n	a2, .L2
.LBB13:
	.loc 1 80 0
	l32r	a2, .LC9
	memw
	l32i.n	a2, a2, 0
.LBE13:
	bnez.n	a2, .L2
.LBB14:
	.loc 1 81 0 discriminator 9
	call8	esp_log_timestamp
.LVL5:
	l32r	a11, .LC11
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC13
	movi.n	a10, 3
	call8	esp_log_write
.LVL6:
	.loc 1 83 0 discriminator 9
	movi.n	a11, 0x20
	mov.n	a10, sp
	call8	bootloader_fill_random
.LVL7:
.LBB15:
	.loc 1 84 0 discriminator 9
	movi.n	a8, 0
	j	.L3
.LVL8:
.L5:
.LBB16:
	.loc 1 86 0
	l32r	a2, .LC14
	add.n	a2, a8, a2
	slli	a2, a2, 2
	l32r	a9, .LC15
	add.n	a9, a2, a9
	l32r	a10, .LC16
	bltu	a10, a9, .L4
	.loc 1 86 0 is_stmt 0 discriminator 1
	l32r	a13, .LC18
	l32r	a12, .LC19
	movi.n	a11, 0x56
	l32r	a10, .LC21
	call8	__assert_func
.LVL9:
.L4:
	.loc 1 86 0 discriminator 2
	addx4	a9, a8, sp
	l32i.n	a9, a9, 0
	memw
	s32i.n	a9, a2, 0
.LBE16:
	.loc 1 84 0 is_stmt 1 discriminator 2
	addi.n	a8, a8, 1
.LVL10:
.L3:
	blti	a8, 8, .L5
.LBE15:
	.loc 1 88 0
	movi.n	a2, 0
	s32i.n	a2, sp, 0
	s32i.n	a2, sp, 4
	s32i.n	a2, sp, 8
	s32i.n	a2, sp, 12
	s32i.n	a2, sp, 16
	s32i.n	a2, sp, 20
	s32i.n	a2, sp, 24
	s32i.n	a2, sp, 28
	.loc 1 89 0
	call8	esp_efuse_burn_new_values
.LVL11:
	.loc 1 91 0
	call8	esp_log_timestamp
.LVL12:
	l32r	a11, .LC11
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC23
	movi.n	a10, 3
	call8	esp_log_write
.LVL13:
.LBB17:
	.loc 1 92 0
	l32r	a8, .LC25
	l32r	a2, .LC24
	memw
	s32i.n	a8, a2, 0
.LBE17:
	.loc 1 93 0
	call8	esp_efuse_burn_new_values
.LVL14:
.LBE14:
	.loc 1 80 0
	j	.L6
.LVL15:
.L2:
	.loc 1 96 0
	or	a8, a10, a8
	beqz.n	a8, .L7
	.loc 1 97 0 discriminator 2
	call8	esp_log_timestamp
.LVL16:
	l32r	a11, .LC11
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC27
	movi.n	a10, 1
	call8	esp_log_write
.LVL17:
	.loc 1 98 0 discriminator 2
	movi	a2, 0x103
	retw.n
.LVL18:
.L7:
	.loc 1 100 0 discriminator 4
	call8	esp_log_timestamp
.LVL19:
	l32r	a11, .LC11
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC29
	movi.n	a10, 2
	call8	esp_log_write
.LVL20:
.L6:
	.loc 1 113 0 discriminator 9
	call8	esp_log_timestamp
.LVL21:
	l32r	a2, .LC11
	mov.n	a14, a2
	mov.n	a13, a10
	l32r	a12, .LC31
	mov.n	a11, a2
	movi.n	a10, 3
	call8	esp_log_write
.LVL22:
.LBB18:
	.loc 1 114 0 discriminator 9
	l32r	a9, .LC33
	l32r	a8, .LC32
	memw
	s32i.n	a9, a8, 0
.LBE18:
	.loc 1 115 0 discriminator 9
	call8	esp_efuse_burn_new_values
.LVL23:
	.loc 1 119 0 discriminator 9
	call8	esp_log_timestamp
.LVL24:
	mov.n	a14, a2
	mov.n	a13, a10
	l32r	a12, .LC35
	mov.n	a11, a2
	movi.n	a10, 3
	call8	esp_log_write
.LVL25:
	.loc 1 125 0 discriminator 9
	call8	esp_log_timestamp
.LVL26:
	mov.n	a14, a2
	mov.n	a13, a10
	l32r	a12, .LC37
	mov.n	a11, a2
	movi.n	a10, 3
	call8	esp_log_write
.LVL27:
	.loc 1 131 0 discriminator 9
	call8	esp_log_timestamp
.LVL28:
	mov.n	a14, a2
	mov.n	a13, a10
	l32r	a12, .LC39
	mov.n	a11, a2
	movi.n	a10, 3
	call8	esp_log_write
.LVL29:
	.loc 1 137 0 discriminator 9
	call8	esp_log_timestamp
.LVL30:
	mov.n	a14, a2
	mov.n	a13, a10
	l32r	a12, .LC41
	mov.n	a11, a2
	movi.n	a10, 3
	call8	esp_log_write
.LVL31:
	.loc 1 143 0 discriminator 9
	call8	esp_log_timestamp
.LVL32:
	mov.n	a14, a2
	mov.n	a13, a10
	l32r	a12, .LC43
	mov.n	a11, a2
	movi.n	a10, 3
	call8	esp_log_write
.LVL33:
.LBB19:
	.loc 1 150 0 discriminator 9
	movi	a8, 0x3c4
	l32r	a2, .LC44
	memw
	s32i.n	a8, a2, 0
.LBE19:
	.loc 1 151 0 discriminator 9
	call8	esp_efuse_burn_new_values
.LVL34:
	.loc 1 154 0 discriminator 9
	movi.n	a2, 0
	.loc 1 155 0 discriminator 9
	retw.n
.LFE13:
	.size	initialise_flash_encryption, .-initialise_flash_encryption
	.section	.rodata.str1.4
	.align	4
.LC46:
	.string	"\033[0;31mE (%d) %s: esp_flash_encrypt_region bad src_addr 0x%x\033[0m\n"
	.align	4
.LC49:
	.string	"\033[0;31mE (%d) %s: flash operation failed: 0x%x\033[0m\n"
	.section	.text.esp_flash_encrypt_region,"ax",@progbits
	.literal_position
	.literal .LC45, .LC10
	.literal .LC47, .LC46
	.literal .LC48, 4096
	.literal .LC50, .LC49
	.align	4
	.global	esp_flash_encrypt_region
	.type	esp_flash_encrypt_region, @function
esp_flash_encrypt_region:
.LFB18:
	.loc 1 310 0
.LVL35:
	entry	sp, 4128
.LCFI1:
	.loc 1 314 0
	extui	a4, a2, 0, 12
	beqz.n	a4, .L14
	.loc 1 315 0 discriminator 2
	call8	esp_log_timestamp
.LVL36:
	l32r	a11, .LC45
	mov.n	a15, a2
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC47
	movi.n	a10, 1
	call8	esp_log_write
.LVL37:
	.loc 1 316 0 discriminator 2
	movi.n	a2, -1
.LVL38:
	retw.n
.LVL39:
.L13:
.LBB20:
.LBB21:
	.loc 1 320 0
	add.n	a6, a5, a2
.LVL40:
	.loc 1 321 0
	movi.n	a13, 0
	l32r	a12, .LC48
	mov.n	a11, sp
	mov.n	a10, a6
	call8	bootloader_flash_read
.LVL41:
	mov.n	a4, a10
.LVL42:
	.loc 1 322 0
	bnez.n	a10, .L12
	.loc 1 325 0
	srli	a10, a6, 12
	call8	bootloader_flash_erase_sector
.LVL43:
	mov.n	a4, a10
.LVL44:
	.loc 1 326 0
	bnez.n	a10, .L12
	.loc 1 329 0
	movi.n	a13, 1
	l32r	a12, .LC48
	mov.n	a11, sp
	mov.n	a10, a6
	call8	bootloader_flash_write
.LVL45:
	mov.n	a4, a10
.LVL46:
	.loc 1 330 0
	bnez.n	a10, .L12
.LBE21:
	.loc 1 319 0 discriminator 2
	addmi	a5, a5, 0x1000
.LVL47:
	j	.L10
.LVL48:
.L14:
.LBE20:
	movi.n	a5, 0
.L10:
.LVL49:
.LBB22:
	.loc 1 319 0 is_stmt 0 discriminator 1
	bltu	a5, a3, .L13
.LBE22:
	.loc 1 334 0 is_stmt 1
	movi.n	a2, 0
.LVL50:
	retw.n
.LVL51:
.L12:
	.loc 1 337 0 discriminator 2
	call8	esp_log_timestamp
.LVL52:
	l32r	a11, .LC45
	mov.n	a15, a4
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC50
	movi.n	a10, 1
	call8	esp_log_write
.LVL53:
	.loc 1 338 0 discriminator 2
	mov.n	a2, a4
.LVL54:
	.loc 1 339 0 discriminator 2
	retw.n
.LFE18:
	.size	esp_flash_encrypt_region, .-esp_flash_encrypt_region
	.section	.rodata.str1.4
	.align	4
.LC53:
	.string	"\033[0;31mE (%d) %s: Failed to encrypt bootloader in place: 0x%x\033[0m\n"
	.align	4
.LC56:
	.string	"\033[0;31mE (%d) %s: Failed to encrypt bootloader IV & digest in place: 0x%x\033[0m\n"
	.align	4
.LC58:
	.string	"\033[0;33mW (%d) %s: no valid bootloader was found\033[0m\n"
	.section	.text.encrypt_bootloader,"ax",@progbits
	.literal_position
	.literal .LC51, 4096
	.literal .LC52, .LC10
	.literal .LC54, .LC53
	.literal .LC55, 1073061912
	.literal .LC57, .LC56
	.literal .LC59, .LC58
	.align	4
	.type	encrypt_bootloader, @function
encrypt_bootloader:
.LFB15:
	.loc 1 216 0
	entry	sp, 48
.LCFI2:
	.loc 1 220 0
	mov.n	a10, sp
	call8	esp_image_verify_bootloader
.LVL55:
	mov.n	a2, a10
	bnez.n	a10, .L16
	.loc 1 222 0
	l32i.n	a11, sp, 0
	l32r	a10, .LC51
	call8	esp_flash_encrypt_region
.LVL56:
	mov.n	a3, a10
.LVL57:
	.loc 1 223 0
	beqz.n	a10, .L17
	.loc 1 224 0 discriminator 2
	call8	esp_log_timestamp
.LVL58:
	l32r	a11, .LC52
	mov.n	a15, a3
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC54
	movi.n	a10, 1
	call8	esp_log_write
.LVL59:
	.loc 1 225 0 discriminator 2
	mov.n	a2, a3
	retw.n
.L17:
.LBB23:
.LBB24:
.LBB25:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include/esp_secure_boot.h"
	.loc 2 38 0
	l32r	a3, .LC55
.LVL60:
	memw
	l32i.n	a3, a3, 0
.LBE25:
.LBE24:
.LBE23:
	.loc 1 228 0
	bbci	a3, 4, .L18
	.loc 1 233 0
	l32r	a11, .LC51
	movi.n	a10, 0
.LVL61:
	call8	esp_flash_encrypt_region
.LVL62:
	mov.n	a3, a10
.LVL63:
	.loc 1 235 0
	beqz.n	a10, .L18
	.loc 1 236 0 discriminator 2
	call8	esp_log_timestamp
.LVL64:
	l32r	a11, .LC52
	mov.n	a15, a3
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC57
	movi.n	a10, 1
	call8	esp_log_write
.LVL65:
	.loc 1 237 0 discriminator 2
	mov.n	a2, a3
	retw.n
.LVL66:
.L16:
	.loc 1 242 0 discriminator 4
	call8	esp_log_timestamp
.LVL67:
	l32r	a11, .LC52
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC59
	movi.n	a10, 2
	call8	esp_log_write
.LVL68:
	.loc 1 245 0 discriminator 4
	movi.n	a2, 0
.L18:
	.loc 1 246 0
	retw.n
.LFE15:
	.size	encrypt_bootloader, .-encrypt_bootloader
	.section	.rodata.str1.4
	.align	4
.LC63:
	.string	"\033[0;31mE (%d) %s: Failed to read partition table data\033[0m\n"
	.align	4
.LC66:
	.string	"\033[0;31mE (%d) %s: Failed to encrypt partition table in place. %x\033[0m\n"
	.align	4
.LC68:
	.string	"\033[0;31mE (%d) %s: Failed to read partition table data - not plaintext?\033[0m\n"
	.section	.text.encrypt_and_load_partition_table,"ax",@progbits
	.literal_position
	.literal .LC60, 3072
	.literal .LC61, 65536
	.literal .LC62, .LC10
	.literal .LC64, .LC63
	.literal .LC65, 4096
	.literal .LC67, .LC66
	.literal .LC69, .LC68
	.align	4
	.type	encrypt_and_load_partition_table, @function
encrypt_and_load_partition_table:
.LFB16:
	.loc 1 249 0
.LVL69:
	entry	sp, 32
.LCFI3:
	.loc 1 252 0
	movi.n	a13, 0
	l32r	a12, .LC60
	mov.n	a11, a2
	l32r	a10, .LC61
	call8	bootloader_flash_read
.LVL70:
	mov.n	a4, a10
.LVL71:
	.loc 1 253 0
	beqz.n	a10, .L20
	.loc 1 254 0 discriminator 2
	call8	esp_log_timestamp
.LVL72:
	l32r	a11, .LC62
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC64
	movi.n	a10, 1
	call8	esp_log_write
.LVL73:
	.loc 1 255 0 discriminator 2
	mov.n	a2, a4
.LVL74:
	retw.n
.LVL75:
.L20:
	.loc 1 257 0
	mov.n	a12, a3
	movi.n	a11, 0
	mov.n	a10, a2
	call8	esp_partition_table_verify
.LVL76:
	mov.n	a2, a10
.LVL77:
	bnez.n	a10, .L22
.LBB26:
	.loc 1 259 0
	l32r	a11, .LC65
	l32r	a10, .LC61
	call8	esp_flash_encrypt_region
.LVL78:
	mov.n	a3, a10
.LVL79:
	.loc 1 261 0
	beqz.n	a10, .L21
	.loc 1 262 0 discriminator 2
	call8	esp_log_timestamp
.LVL80:
	l32r	a11, .LC62
	mov.n	a15, a3
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC67
	movi.n	a10, 1
	call8	esp_log_write
.LVL81:
	.loc 1 263 0 discriminator 2
	mov.n	a2, a3
	retw.n
.LVL82:
.L22:
.LBE26:
	.loc 1 267 0 discriminator 2
	call8	esp_log_timestamp
.LVL83:
	l32r	a11, .LC62
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC69
	movi.n	a10, 1
	call8	esp_log_write
.LVL84:
	.loc 1 268 0 discriminator 2
	movi	a2, 0x103
.LVL85:
.L21:
	.loc 1 273 0
	retw.n
.LFE16:
	.size	encrypt_and_load_partition_table, .-encrypt_and_load_partition_table
	.section	.rodata.str1.4
	.align	4
.LC73:
	.string	"\033[0;32mI (%d) %s: Encrypting partition %d at offset 0x%x...\033[0m\n"
	.align	4
.LC75:
	.string	"\033[0;31mE (%d) %s: Failed to encrypt partition %d\033[0m\n"
	.section	.text.encrypt_partition,"ax",@progbits
	.literal_position
	.literal .LC70, -65536
	.literal .LC71, 65536
	.literal .LC72, .LC10
	.literal .LC74, .LC73
	.literal .LC76, .LC75
	.align	4
	.type	encrypt_partition, @function
encrypt_partition:
.LFB17:
	.loc 1 277 0
.LVL86:
	entry	sp, 272
.LCFI4:
	.loc 1 279 0
	l32i.n	a10, a3, 28
	extui	a10, a10, 0, 1
.LVL87:
	.loc 1 281 0
	l8ui	a8, a3, 2
	bnez.n	a8, .L24
.LBB27:
	.loc 1 284 0
	addi	a12, sp, 16
	addi.n	a11, a3, 4
	movi.n	a10, 0
.LVL88:
	call8	esp_image_load
.LVL89:
	.loc 1 287 0
	movi.n	a8, 0
	movi.n	a9, 1
	moveqz	a8, a9, a10
	extui	a10, a8, 0, 8
.LVL90:
.LBE27:
	j	.L25
.LVL91:
.L24:
	.loc 1 288 0
	l32i.n	a9, a3, 0
	l32r	a8, .LC70
	and	a8, a9, a8
	l32r	a9, .LC71
	bne	a8, a9, .L25
	.loc 1 290 0
	movi.n	a10, 1
.LVL92:
.L25:
	.loc 1 293 0
	beqz.n	a10, .L28
	.loc 1 298 0 discriminator 9
	call8	esp_log_timestamp
.LVL93:
	l32r	a11, .LC72
	l32i.n	a8, a3, 4
	s32i.n	a8, sp, 0
	mov.n	a15, a2
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC74
	movi.n	a10, 3
	call8	esp_log_write
.LVL94:
	.loc 1 300 0 discriminator 9
	l32i.n	a11, a3, 8
	l32i.n	a10, a3, 4
	call8	esp_flash_encrypt_region
.LVL95:
	mov.n	a3, a10
.LVL96:
	.loc 1 301 0 discriminator 9
	beqz.n	a10, .L29
	.loc 1 302 0 discriminator 2
	call8	esp_log_timestamp
.LVL97:
	l32r	a11, .LC72
	mov.n	a15, a2
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC76
	movi.n	a10, 1
	call8	esp_log_write
.LVL98:
	.loc 1 304 0 discriminator 2
	mov.n	a2, a3
.LVL99:
	retw.n
.LVL100:
.L28:
	.loc 1 294 0
	movi.n	a2, 0
.LVL101:
	retw.n
.LVL102:
.L29:
	.loc 1 304 0
	mov.n	a2, a10
.LVL103:
	.loc 1 306 0
	retw.n
.LFE17:
	.size	encrypt_partition, .-encrypt_partition
	.section	.rodata.str1.4
	.align	4
.LC78:
	.string	"\033[0;31mE (%d) %s: Cannot re-encrypt data (FLASH_CRYPT_CNT 0x%02x write disabled %d\033[0m\n"
	.align	4
.LC82:
	.string	"\033[0;32mI (%d) %s: Flash encryption completed\033[0m\n"
	.section	.text.encrypt_flash_contents,"ax",@progbits
	.literal_position
	.literal .LC77, .LC10
	.literal .LC79, .LC78
	.literal .LC80, 1073061916
	.literal .LC81, -267386881
	.literal .LC83, .LC82
	.align	4
	.type	encrypt_flash_contents, @function
encrypt_flash_contents:
.LFB14:
	.loc 1 159 0
.LVL104:
	entry	sp, 3136
.LCFI5:
	.loc 1 166 0
	movi	a8, -0xff
	add.n	a9, a2, a8
	movi.n	a8, 0
	movi.n	a10, 1
	moveqz	a8, a10, a9
	or	a8, a8, a3
	beqz.n	a8, .L31
	.loc 1 167 0 discriminator 2
	call8	esp_log_timestamp
.LVL105:
	l32r	a11, .LC77
	s32i.n	a3, sp, 0
	mov.n	a15, a2
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC79
	movi.n	a10, 1
	call8	esp_log_write
.LVL106:
	.loc 1 168 0 discriminator 2
	movi.n	a2, -1
.LVL107:
	retw.n
.LVL108:
.L31:
	.loc 1 171 0
	bnez.n	a2, .L33
	.loc 1 173 0
	call8	initialise_flash_encryption
.LVL109:
	.loc 1 174 0
	bnez.n	a10, .L36
.LVL110:
.L33:
	.loc 1 179 0
	call8	encrypt_bootloader
.LVL111:
	.loc 1 180 0
	bnez.n	a10, .L37
	.loc 1 184 0
	addi	a3, sp, 16
.LVL112:
	addmi	a11, a3, 0xc00
	mov.n	a10, a3
.LVL113:
	call8	encrypt_and_load_partition_table
.LVL114:
	.loc 1 185 0
	bnez.n	a10, .L38
	movi.n	a3, 0
	j	.L34
.LVL115:
.L35:
.LBB28:
	.loc 1 194 0
	slli	a11, a3, 5
	addi	a4, sp, 16
	add.n	a11, a4, a11
	mov.n	a10, a3
.LVL116:
	call8	encrypt_partition
.LVL117:
	.loc 1 195 0
	bnez.n	a10, .L39
	.loc 1 193 0 discriminator 2
	addi.n	a3, a3, 1
.LVL118:
.L34:
	.loc 1 193 0 is_stmt 0 discriminator 1
	addi	a4, sp, 16
	addmi	a8, a4, 0xc00
	l32i.n	a8, a8, 0
	blt	a3, a8, .L35
.LBE28:
	.loc 1 203 0 is_stmt 1
	movi.n	a8, -1
	xor	a8, a8, a2
	extui	a8, a8, 0, 8
	neg	a3, a8
.LVL119:
	and	a3, a3, a8
	nsau	a3, a3
	neg	a3, a3
.LVL120:
	.loc 1 205 0
	addi	a8, a3, 31
	movi.n	a3, 1
.LVL121:
	ssl	a8
	sll	a3, a3
	add.n	a2, a2, a3
.LVL122:
.LBB29:
.LBB30:
	.loc 1 207 0
	l32r	a8, .LC80
.LVL123:
	memw
	l32i.n	a9, a8, 0
.LBE30:
	l32r	a3, .LC81
	and	a3, a9, a3
	extui	a2, a2, 0, 8
.LVL124:
	slli	a2, a2, 20
	or	a2, a3, a2
	memw
	s32i.n	a2, a8, 0
.LBE29:
	.loc 1 208 0
	call8	esp_efuse_burn_new_values
.LVL125:
	.loc 1 210 0
	call8	esp_log_timestamp
.LVL126:
	l32r	a11, .LC77
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC83
	movi.n	a10, 3
	call8	esp_log_write
.LVL127:
	.loc 1 212 0
	movi.n	a2, 0
	retw.n
.LVL128:
.L36:
	.loc 1 175 0
	mov.n	a2, a10
.LVL129:
	retw.n
.LVL130:
.L37:
	.loc 1 181 0
	mov.n	a2, a10
.LVL131:
	retw.n
.LVL132:
.L38:
	.loc 1 186 0
	mov.n	a2, a10
.LVL133:
	retw.n
.LVL134:
.L39:
.LBB31:
	.loc 1 196 0
	mov.n	a2, a10
.LVL135:
.LBE31:
	.loc 1 213 0
	retw.n
.LFE14:
	.size	encrypt_flash_contents, .-encrypt_flash_contents
	.global	__paritysi2
	.global	__popcountsi2
	.section	.rodata.str1.4
	.align	4
.LC87:
	.string	"\033[0;32mI (%d) %s: flash encryption is enabled (%d plaintext flashes left)\033[0m\n"
	.section	.text.esp_flash_encrypt_check_and_update,"ax",@progbits
	.literal_position
	.literal .LC84, 1073061888
	.literal .LC85, 267386880
	.literal .LC86, .LC10
	.literal .LC88, .LC87
	.align	4
	.global	esp_flash_encrypt_check_and_update
	.type	esp_flash_encrypt_check_and_update, @function
esp_flash_encrypt_check_and_update:
.LFB12:
	.loc 1 41 0
	entry	sp, 32
.LCFI6:
.LBB32:
	.loc 1 42 0
	l32r	a2, .LC84
	memw
	l32i.n	a3, a2, 0
.LVL136:
.LBE32:
	.loc 1 44 0
	l32r	a2, .LC85
	and	a2, a3, a2
	extui	a2, a2, 20, 12
.LVL137:
	.loc 1 45 0
	movi.n	a4, 4
	and	a4, a3, a4
	movi.n	a11, 0
	movi.n	a8, 1
	movnez	a11, a8, a4
	extui	a3, a11, 0, 8
.LVL138:
	.loc 1 48 0
	mov.n	a10, a2
	call8	__paritysi2
.LVL139:
	bnei	a10, 1, .L41
.LBB33:
	.loc 1 50 0
	mov.n	a10, a2
	call8	__popcountsi2
.LVL140:
	movi.n	a2, 7
.LVL141:
	sub	a10, a2, a10
	extui	a2, a10, 31, 1
	add.n	a10, a2, a10
	srai	a2, a10, 1
.LVL142:
	.loc 1 51 0
	beqz.n	a4, .L42
	.loc 1 52 0
	movi.n	a2, 0
.LVL143:
.L42:
	.loc 1 54 0 discriminator 9
	call8	esp_log_timestamp
.LVL144:
	l32r	a11, .LC86
	mov.n	a15, a2
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC88
	movi.n	a10, 3
	call8	esp_log_write
.LVL145:
	.loc 1 55 0 discriminator 9
	movi.n	a2, 0
.LVL146:
	retw.n
.LVL147:
.L41:
.LBE33:
	.loc 1 59 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	encrypt_flash_contents
.LVL148:
	mov.n	a2, a10
.LVL149:
	.loc 1 61 0
	retw.n
.LFE12:
	.size	esp_flash_encrypt_check_and_update, .-esp_flash_encrypt_check_and_update
	.section	.rodata.__func__$4141,"a",@progbits
	.align	4
	.type	__func__$4141, @object
	.size	__func__$4141, 28
__func__$4141:
	.string	"initialise_flash_encryption"
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
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI0-.LFB13
	.byte	0xe
	.uleb128 0x40
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
	.uleb128 0x1020
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI2-.LFB15
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI3-.LFB16
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI4-.LFB17
	.byte	0xe
	.uleb128 0x110
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI5-.LFB14
	.byte	0xe
	.uleb128 0xc40
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI6-.LFB12
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
	.text
.Letext0:
	.file 3 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_err.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_flash_data_types.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include/esp_image_format.h"
	.file 9 "D:/ESP32/esp-idf-v3.1-rc1/components/log/include/esp_log.h"
	.file 10 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/assert.h"
	.file 11 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include_priv/bootloader_random.h"
	.file 12 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include/esp_efuse.h"
	.file 13 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include_priv/bootloader_flash.h"
	.file 14 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include/esp_flash_partitions.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xf06
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF100
	.byte	0xc
	.4byte	.LASF101
	.4byte	.LASF102
	.4byte	.Ldebug_ranges0+0x30
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x3
	.byte	0xd8
	.4byte	0x37
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x4
	.byte	0x12
	.4byte	0x57
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x4
	.byte	0x16
	.4byte	0x3e
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x4
	.byte	0x19
	.4byte	0x25
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x4
	.byte	0x1a
	.4byte	0x37
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0x5
	.byte	0x4
	.4byte	0xb6
	.uleb128 0x6
	.4byte	0xa9
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x5
	.byte	0x15
	.4byte	0x4c
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x5
	.byte	0x21
	.4byte	0x65
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x5
	.byte	0x2c
	.4byte	0x70
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x5
	.byte	0x2d
	.4byte	0x7b
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x6
	.byte	0x18
	.4byte	0xd1
	.uleb128 0x7
	.byte	0x8
	.byte	0x7
	.byte	0x24
	.4byte	0x113
	.uleb128 0x8
	.4byte	.LASF21
	.byte	0x7
	.byte	0x25
	.4byte	0xdc
	.byte	0
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0x7
	.byte	0x26
	.4byte	0xdc
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x7
	.byte	0x27
	.4byte	0xf2
	.uleb128 0x7
	.byte	0x20
	.byte	0x7
	.byte	0x2c
	.4byte	0x16f
	.uleb128 0x8
	.4byte	.LASF24
	.byte	0x7
	.byte	0x2d
	.4byte	0xc6
	.byte	0
	.uleb128 0x8
	.4byte	.LASF25
	.byte	0x7
	.byte	0x2e
	.4byte	0xbb
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF26
	.byte	0x7
	.byte	0x2f
	.4byte	0xbb
	.byte	0x3
	.uleb128 0x9
	.string	"pos"
	.byte	0x7
	.byte	0x30
	.4byte	0x113
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF27
	.byte	0x7
	.byte	0x31
	.4byte	0x16f
	.byte	0xc
	.uleb128 0x8
	.4byte	.LASF28
	.byte	0x7
	.byte	0x32
	.4byte	0xdc
	.byte	0x1c
	.byte	0
	.uleb128 0xa
	.4byte	0xbb
	.4byte	0x17f
	.uleb128 0xb
	.4byte	0x9b
	.byte	0xf
	.byte	0
	.uleb128 0x3
	.4byte	.LASF29
	.byte	0x7
	.byte	0x33
	.4byte	0x11e
	.uleb128 0xc
	.byte	0x4
	.4byte	0x37
	.byte	0x8
	.byte	0x27
	.4byte	0x1af
	.uleb128 0xd
	.4byte	.LASF30
	.byte	0
	.uleb128 0xd
	.4byte	.LASF31
	.byte	0x1
	.uleb128 0xd
	.4byte	.LASF32
	.byte	0x2
	.uleb128 0xd
	.4byte	.LASF33
	.byte	0xf
	.byte	0
	.uleb128 0x7
	.byte	0x18
	.byte	0x8
	.byte	0x3b
	.4byte	0x236
	.uleb128 0x8
	.4byte	.LASF24
	.byte	0x8
	.byte	0x3c
	.4byte	0xbb
	.byte	0
	.uleb128 0x8
	.4byte	.LASF34
	.byte	0x8
	.byte	0x3d
	.4byte	0xbb
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF35
	.byte	0x8
	.byte	0x3f
	.4byte	0xbb
	.byte	0x2
	.uleb128 0xe
	.4byte	.LASF36
	.byte	0x8
	.byte	0x41
	.4byte	0xbb
	.byte	0x1
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0xe
	.4byte	.LASF37
	.byte	0x8
	.byte	0x43
	.4byte	0xbb
	.byte	0x1
	.byte	0x4
	.byte	0
	.byte	0x3
	.uleb128 0x8
	.4byte	.LASF38
	.byte	0x8
	.byte	0x44
	.4byte	0xdc
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF39
	.byte	0x8
	.byte	0x47
	.4byte	0xbb
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF40
	.byte	0x8
	.byte	0x49
	.4byte	0x236
	.byte	0x9
	.uleb128 0x8
	.4byte	.LASF41
	.byte	0x8
	.byte	0x4b
	.4byte	0x246
	.byte	0xc
	.uleb128 0x8
	.4byte	.LASF42
	.byte	0x8
	.byte	0x4f
	.4byte	0xbb
	.byte	0x17
	.byte	0
	.uleb128 0xa
	.4byte	0xbb
	.4byte	0x246
	.uleb128 0xb
	.4byte	0x9b
	.byte	0x2
	.byte	0
	.uleb128 0xa
	.4byte	0xbb
	.4byte	0x256
	.uleb128 0xb
	.4byte	0x9b
	.byte	0xa
	.byte	0
	.uleb128 0x3
	.4byte	.LASF43
	.byte	0x8
	.byte	0x50
	.4byte	0x1af
	.uleb128 0x7
	.byte	0x8
	.byte	0x8
	.byte	0x55
	.4byte	0x282
	.uleb128 0x8
	.4byte	.LASF44
	.byte	0x8
	.byte	0x56
	.4byte	0xdc
	.byte	0
	.uleb128 0x8
	.4byte	.LASF45
	.byte	0x8
	.byte	0x57
	.4byte	0xdc
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF46
	.byte	0x8
	.byte	0x58
	.4byte	0x261
	.uleb128 0x7
	.byte	0xe0
	.byte	0x8
	.byte	0x5d
	.4byte	0x2d2
	.uleb128 0x8
	.4byte	.LASF47
	.byte	0x8
	.byte	0x5e
	.4byte	0xdc
	.byte	0
	.uleb128 0x8
	.4byte	.LASF48
	.byte	0x8
	.byte	0x5f
	.4byte	0x256
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF49
	.byte	0x8
	.byte	0x60
	.4byte	0x2d2
	.byte	0x1c
	.uleb128 0x8
	.4byte	.LASF50
	.byte	0x8
	.byte	0x61
	.4byte	0x2e2
	.byte	0x9c
	.uleb128 0x8
	.4byte	.LASF51
	.byte	0x8
	.byte	0x62
	.4byte	0xdc
	.byte	0xdc
	.byte	0
	.uleb128 0xa
	.4byte	0x282
	.4byte	0x2e2
	.uleb128 0xb
	.4byte	0x9b
	.byte	0xf
	.byte	0
	.uleb128 0xa
	.4byte	0xdc
	.4byte	0x2f2
	.uleb128 0xb
	.4byte	0x9b
	.byte	0xf
	.byte	0
	.uleb128 0x3
	.4byte	.LASF52
	.byte	0x8
	.byte	0x63
	.4byte	0x28d
	.uleb128 0xc
	.byte	0x4
	.4byte	0x37
	.byte	0x8
	.byte	0x66
	.4byte	0x316
	.uleb128 0xd
	.4byte	.LASF53
	.byte	0
	.uleb128 0xd
	.4byte	.LASF54
	.byte	0x1
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x37
	.byte	0x9
	.byte	0x1f
	.4byte	0x347
	.uleb128 0xd
	.4byte	.LASF55
	.byte	0
	.uleb128 0xd
	.4byte	.LASF56
	.byte	0x1
	.uleb128 0xd
	.4byte	.LASF57
	.byte	0x2
	.uleb128 0xd
	.4byte	.LASF58
	.byte	0x3
	.uleb128 0xd
	.4byte	.LASF59
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF60
	.byte	0x5
	.byte	0
	.uleb128 0xf
	.4byte	.LASF103
	.byte	0x2
	.byte	0x25
	.4byte	0x365
	.byte	0x3
	.4byte	0x365
	.uleb128 0x10
	.4byte	.LASF62
	.4byte	0x37c
	.4byte	.LASF103
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.4byte	.LASF61
	.uleb128 0xa
	.4byte	0xa9
	.4byte	0x37c
	.uleb128 0xb
	.4byte	0x9b
	.byte	0x17
	.byte	0
	.uleb128 0x6
	.4byte	0x36c
	.uleb128 0x11
	.4byte	.LASF71
	.byte	0x1
	.byte	0x3f
	.4byte	0xe7
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x688
	.uleb128 0x12
	.4byte	.LASF63
	.byte	0x1
	.byte	0x44
	.4byte	0xdc
	.4byte	.LLST0
	.uleb128 0x13
	.4byte	.LASF62
	.4byte	0x698
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$4141
	.uleb128 0x12
	.4byte	.LASF64
	.byte	0x1
	.byte	0x45
	.4byte	0x365
	.4byte	.LLST1
	.uleb128 0x12
	.4byte	.LASF65
	.byte	0x1
	.byte	0x46
	.4byte	0x365
	.4byte	.LLST2
	.uleb128 0x12
	.4byte	.LASF66
	.byte	0x1
	.byte	0x75
	.4byte	0xdc
	.4byte	.LLST3
	.uleb128 0x14
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.4byte	0x4e1
	.uleb128 0x15
	.string	"buf"
	.byte	0x1
	.byte	0x52
	.4byte	0x69d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x14
	.4byte	.LBB15
	.4byte	.LBE15-.LBB15
	.4byte	0x446
	.uleb128 0x16
	.string	"i"
	.byte	0x1
	.byte	0x54
	.4byte	0x25
	.4byte	.LLST4
	.uleb128 0x17
	.4byte	.LVL9
	.4byte	0xe90
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC20
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x56
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$4141
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC17
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL5
	.4byte	0xe9b
	.uleb128 0x1a
	.4byte	.LVL6
	.4byte	0xea6
	.4byte	0x47d
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC12
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL7
	.4byte	0xeb1
	.4byte	0x497
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x19
	.4byte	.LVL11
	.4byte	0xebc
	.uleb128 0x19
	.4byte	.LVL12
	.4byte	0xe9b
	.uleb128 0x1a
	.4byte	.LVL13
	.4byte	0xea6
	.4byte	0x4d7
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC22
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0
	.uleb128 0x19
	.4byte	.LVL14
	.4byte	0xebc
	.byte	0
	.uleb128 0x19
	.4byte	.LVL16
	.4byte	0xe9b
	.uleb128 0x1a
	.4byte	.LVL17
	.4byte	0xea6
	.4byte	0x518
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
	.4byte	.LC10
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC26
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0
	.uleb128 0x19
	.4byte	.LVL19
	.4byte	0xe9b
	.uleb128 0x1a
	.4byte	.LVL20
	.4byte	0xea6
	.4byte	0x54f
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC28
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0
	.uleb128 0x19
	.4byte	.LVL21
	.4byte	0xe9b
	.uleb128 0x1a
	.4byte	.LVL22
	.4byte	0xea6
	.4byte	0x580
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC30
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL23
	.4byte	0xebc
	.uleb128 0x19
	.4byte	.LVL24
	.4byte	0xe9b
	.uleb128 0x1a
	.4byte	.LVL25
	.4byte	0xea6
	.4byte	0x5ba
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC34
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL26
	.4byte	0xe9b
	.uleb128 0x1a
	.4byte	.LVL27
	.4byte	0xea6
	.4byte	0x5eb
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC36
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL28
	.4byte	0xe9b
	.uleb128 0x1a
	.4byte	.LVL29
	.4byte	0xea6
	.4byte	0x61c
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC38
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL30
	.4byte	0xe9b
	.uleb128 0x1a
	.4byte	.LVL31
	.4byte	0xea6
	.4byte	0x64d
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC40
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL32
	.4byte	0xe9b
	.uleb128 0x1a
	.4byte	.LVL33
	.4byte	0xea6
	.4byte	0x67e
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC42
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL34
	.4byte	0xebc
	.byte	0
	.uleb128 0xa
	.4byte	0xa9
	.4byte	0x698
	.uleb128 0xb
	.4byte	0x9b
	.byte	0x1b
	.byte	0
	.uleb128 0x6
	.4byte	0x688
	.uleb128 0xa
	.4byte	0xdc
	.4byte	0x6ad
	.uleb128 0xb
	.4byte	0x9b
	.byte	0x7
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF85
	.byte	0x1
	.2byte	0x135
	.4byte	0xe7
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x81a
	.uleb128 0x1c
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x135
	.4byte	0xdc
	.4byte	.LLST5
	.uleb128 0x1d
	.4byte	.LASF68
	.byte	0x1
	.2byte	0x135
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1e
	.string	"err"
	.byte	0x1
	.2byte	0x137
	.4byte	0xe7
	.4byte	.LLST6
	.uleb128 0x1f
	.string	"buf"
	.byte	0x1
	.2byte	0x138
	.4byte	0x81a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4128
	.uleb128 0x20
	.4byte	.LASF104
	.byte	0x1
	.2byte	0x150
	.4byte	.L12
	.uleb128 0x21
	.4byte	.Ldebug_ranges0+0
	.4byte	0x7a3
	.uleb128 0x1e
	.string	"i"
	.byte	0x1
	.2byte	0x13f
	.4byte	0x2c
	.4byte	.LLST7
	.uleb128 0x22
	.4byte	.LBB21
	.4byte	.LBE21-.LBB21
	.uleb128 0x23
	.4byte	.LASF69
	.byte	0x1
	.2byte	0x140
	.4byte	0xdc
	.4byte	.LLST8
	.uleb128 0x1a
	.4byte	.LVL41
	.4byte	0xec7
	.4byte	0x768
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4128
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1000
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL43
	.4byte	0xed2
	.4byte	0x77e
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x4
	.byte	0x76
	.sleb128 0
	.byte	0x3c
	.byte	0x25
	.byte	0
	.uleb128 0x17
	.4byte	.LVL45
	.4byte	0xedd
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4128
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1000
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL36
	.4byte	0xe9b
	.uleb128 0x1a
	.4byte	.LVL37
	.4byte	0xea6
	.4byte	0x7e0
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
	.4byte	.LC10
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC46
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL52
	.4byte	0xe9b
	.uleb128 0x17
	.4byte	.LVL53
	.4byte	0xea6
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
	.4byte	.LC10
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC49
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	0xdc
	.4byte	0x82b
	.uleb128 0x24
	.4byte	0x9b
	.2byte	0x3ff
	.byte	0
	.uleb128 0x25
	.4byte	.LASF105
	.byte	0x1
	.byte	0xd7
	.4byte	0xe7
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x975
	.uleb128 0x16
	.string	"err"
	.byte	0x1
	.byte	0xd9
	.4byte	0xe7
	.4byte	.LLST9
	.uleb128 0x26
	.4byte	.LASF70
	.byte	0x1
	.byte	0xda
	.4byte	0xdc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.4byte	0x347
	.4byte	.LBB23
	.4byte	.LBE23-.LBB23
	.byte	0x1
	.byte	0xe4
	.4byte	0x884
	.uleb128 0x22
	.4byte	.LBB24
	.4byte	.LBE24-.LBB24
	.uleb128 0x28
	.4byte	0x357
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL55
	.4byte	0xee8
	.4byte	0x898
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL56
	.4byte	0x6ad
	.4byte	0x8ad
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1000
	.byte	0
	.uleb128 0x19
	.4byte	.LVL58
	.4byte	0xe9b
	.uleb128 0x1a
	.4byte	.LVL59
	.4byte	0xea6
	.4byte	0x8ea
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
	.4byte	.LC10
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC53
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL62
	.4byte	0x6ad
	.4byte	0x904
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1000
	.byte	0
	.uleb128 0x19
	.4byte	.LVL64
	.4byte	0xe9b
	.uleb128 0x1a
	.4byte	.LVL65
	.4byte	0xea6
	.4byte	0x941
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
	.4byte	.LC10
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC56
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL67
	.4byte	0xe9b
	.uleb128 0x17
	.4byte	.LVL68
	.4byte	0xea6
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC58
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	.LASF72
	.byte	0x1
	.byte	0xf8
	.4byte	0xe7
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xadd
	.uleb128 0x29
	.4byte	.LASF73
	.byte	0x1
	.byte	0xf8
	.4byte	0xadd
	.4byte	.LLST10
	.uleb128 0x29
	.4byte	.LASF74
	.byte	0x1
	.byte	0xf8
	.4byte	0xae3
	.4byte	.LLST11
	.uleb128 0x15
	.string	"err"
	.byte	0x1
	.byte	0xfa
	.4byte	0xe7
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x14
	.4byte	.LBB26
	.4byte	.LBE26-.LBB26
	.4byte	0xa2c
	.uleb128 0x1e
	.string	"err"
	.byte	0x1
	.2byte	0x103
	.4byte	0xe7
	.4byte	.LLST12
	.uleb128 0x1a
	.4byte	.LVL78
	.4byte	0x6ad
	.4byte	0x9f2
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x40
	.byte	0x3c
	.byte	0x24
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1000
	.byte	0
	.uleb128 0x19
	.4byte	.LVL80
	.4byte	0xe9b
	.uleb128 0x17
	.4byte	.LVL81
	.4byte	0xea6
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
	.4byte	.LC10
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC66
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL70
	.4byte	0xec7
	.4byte	0xa53
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x40
	.byte	0x3c
	.byte	0x24
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0xc00
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x19
	.4byte	.LVL72
	.4byte	0xe9b
	.uleb128 0x1a
	.4byte	.LVL73
	.4byte	0xea6
	.4byte	0xa8a
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
	.4byte	.LC10
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC63
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL76
	.4byte	0xef3
	.4byte	0xaa9
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL83
	.4byte	0xe9b
	.uleb128 0x17
	.4byte	.LVL84
	.4byte	0xea6
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
	.4byte	.LC10
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC68
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x17f
	.uleb128 0x5
	.byte	0x4
	.4byte	0x25
	.uleb128 0x2a
	.4byte	.LASF75
	.byte	0x1
	.2byte	0x114
	.4byte	0xe7
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbfd
	.uleb128 0x1c
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x114
	.4byte	0x25
	.4byte	.LLST13
	.uleb128 0x1c
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x114
	.4byte	0xbfd
	.4byte	.LLST14
	.uleb128 0x1e
	.string	"err"
	.byte	0x1
	.2byte	0x116
	.4byte	0xe7
	.4byte	.LLST15
	.uleb128 0x23
	.4byte	.LASF78
	.byte	0x1
	.2byte	0x117
	.4byte	0x365
	.4byte	.LLST16
	.uleb128 0x14
	.4byte	.LBB27
	.4byte	.LBE27-.LBB27
	.4byte	0xb7d
	.uleb128 0x2b
	.4byte	.LASF79
	.byte	0x1
	.2byte	0x11b
	.4byte	0x2f2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x17
	.4byte	.LVL89
	.4byte	0xefe
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 4
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL93
	.4byte	0xe9b
	.uleb128 0x1a
	.4byte	.LVL94
	.4byte	0xea6
	.4byte	0xbba
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC73
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL95
	.4byte	0x6ad
	.uleb128 0x19
	.4byte	.LVL97
	.4byte	0xe9b
	.uleb128 0x17
	.4byte	.LVL98
	.4byte	0xea6
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
	.4byte	.LC10
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC75
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xc03
	.uleb128 0x6
	.4byte	0x17f
	.uleb128 0x11
	.4byte	.LASF80
	.byte	0x1
	.byte	0x9e
	.4byte	0xe7
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd72
	.uleb128 0x29
	.4byte	.LASF81
	.byte	0x1
	.byte	0x9e
	.4byte	0xdc
	.4byte	.LLST17
	.uleb128 0x29
	.4byte	.LASF82
	.byte	0x1
	.byte	0x9e
	.4byte	0x365
	.4byte	.LLST18
	.uleb128 0x16
	.string	"err"
	.byte	0x1
	.byte	0xa0
	.4byte	0xe7
	.4byte	.LLST19
	.uleb128 0x26
	.4byte	.LASF73
	.byte	0x1
	.byte	0xa1
	.4byte	0xd72
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3120
	.uleb128 0x26
	.4byte	.LASF74
	.byte	0x1
	.byte	0xa2
	.4byte	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x12
	.4byte	.LASF83
	.byte	0x1
	.byte	0xcb
	.4byte	0x25
	.4byte	.LLST20
	.uleb128 0x12
	.4byte	.LASF84
	.byte	0x1
	.byte	0xcd
	.4byte	0xdc
	.4byte	.LLST21
	.uleb128 0x2c
	.4byte	.LASF62
	.4byte	0xd92
	.uleb128 0x21
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0xcc4
	.uleb128 0x16
	.string	"i"
	.byte	0x1
	.byte	0xc1
	.4byte	0x25
	.4byte	.LLST22
	.uleb128 0x17
	.4byte	.LVL117
	.4byte	0xae9
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x7
	.byte	0x73
	.sleb128 0
	.byte	0x35
	.byte	0x24
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL105
	.4byte	0xe9b
	.uleb128 0x1a
	.4byte	.LVL106
	.4byte	0xea6
	.4byte	0xd08
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
	.4byte	.LC10
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC78
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL109
	.4byte	0x381
	.uleb128 0x19
	.4byte	.LVL111
	.4byte	0x82b
	.uleb128 0x1a
	.4byte	.LVL114
	.4byte	0x975
	.4byte	0xd35
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
	.byte	0x73
	.sleb128 3072
	.byte	0
	.uleb128 0x19
	.4byte	.LVL125
	.4byte	0xebc
	.uleb128 0x19
	.4byte	.LVL126
	.4byte	0xe9b
	.uleb128 0x17
	.4byte	.LVL127
	.4byte	0xea6
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC82
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	0x17f
	.4byte	0xd82
	.uleb128 0xb
	.4byte	0x9b
	.byte	0x5f
	.byte	0
	.uleb128 0xa
	.4byte	0xa9
	.4byte	0xd92
	.uleb128 0xb
	.4byte	0x9b
	.byte	0x16
	.byte	0
	.uleb128 0x6
	.4byte	0xd82
	.uleb128 0x2d
	.4byte	.LASF86
	.byte	0x1
	.byte	0x28
	.4byte	0xe7
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe53
	.uleb128 0x12
	.4byte	.LASF87
	.byte	0x1
	.byte	0x2a
	.4byte	0xdc
	.4byte	.LLST23
	.uleb128 0x2c
	.4byte	.LASF62
	.4byte	0xe63
	.uleb128 0x12
	.4byte	.LASF81
	.byte	0x1
	.byte	0x2c
	.4byte	0xdc
	.4byte	.LLST24
	.uleb128 0x12
	.4byte	.LASF82
	.byte	0x1
	.byte	0x2d
	.4byte	0x365
	.4byte	.LLST25
	.uleb128 0x14
	.4byte	.LBB33
	.4byte	.LBE33-.LBB33
	.4byte	0xe3c
	.uleb128 0x12
	.4byte	.LASF88
	.byte	0x1
	.byte	0x32
	.4byte	0x25
	.4byte	.LLST26
	.uleb128 0x19
	.4byte	.LVL144
	.4byte	0xe9b
	.uleb128 0x17
	.4byte	.LVL145
	.4byte	0xea6
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC87
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL148
	.4byte	0xc08
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	0xa9
	.4byte	0xe63
	.uleb128 0xb
	.4byte	0x9b
	.byte	0x22
	.byte	0
	.uleb128 0x6
	.4byte	0xe53
	.uleb128 0x15
	.string	"TAG"
	.byte	0x1
	.byte	0x1f
	.4byte	0xe7a
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC10
	.byte	0x9f
	.uleb128 0x6
	.4byte	0xb0
	.uleb128 0x2e
	.4byte	.LASF106
	.byte	0x8
	.byte	0x2c
	.4byte	0x18a
	.uleb128 0x5
	.byte	0x3
	.4byte	esp_image_spi_freq_t
	.uleb128 0x2f
	.4byte	.LASF89
	.4byte	.LASF89
	.byte	0xa
	.byte	0x29
	.uleb128 0x2f
	.4byte	.LASF90
	.4byte	.LASF90
	.byte	0x9
	.byte	0x57
	.uleb128 0x2f
	.4byte	.LASF91
	.4byte	.LASF91
	.byte	0x9
	.byte	0x6b
	.uleb128 0x2f
	.4byte	.LASF92
	.4byte	.LASF92
	.byte	0xb
	.byte	0x31
	.uleb128 0x2f
	.4byte	.LASF93
	.4byte	.LASF93
	.byte	0xc
	.byte	0x2a
	.uleb128 0x2f
	.4byte	.LASF94
	.4byte	.LASF94
	.byte	0xd
	.byte	0x4a
	.uleb128 0x2f
	.4byte	.LASF95
	.4byte	.LASF95
	.byte	0xd
	.byte	0x65
	.uleb128 0x2f
	.4byte	.LASF96
	.4byte	.LASF96
	.byte	0xd
	.byte	0x5c
	.uleb128 0x2f
	.4byte	.LASF97
	.4byte	.LASF97
	.byte	0x8
	.byte	0x8f
	.uleb128 0x2f
	.4byte	.LASF98
	.4byte	.LASF98
	.byte	0xe
	.byte	0x26
	.uleb128 0x2f
	.4byte	.LASF99
	.4byte	.LASF99
	.byte	0x8
	.byte	0x85
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
	.uleb128 0xe
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
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
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
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL4
	.2byte	0x5
	.byte	0x7a
	.sleb128 0
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL2
	.4byte	.LVL5-1
	.2byte	0x5
	.byte	0x79
	.sleb128 0
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LVL16-1
	.2byte	0x5
	.byte	0x79
	.sleb128 0
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LVL19-1
	.2byte	0x5
	.byte	0x79
	.sleb128 0
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL23
	.4byte	.LVL25
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LVL27
	.2byte	0x3
	.byte	0x8
	.byte	0x80
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL29
	.2byte	0x4
	.byte	0xa
	.2byte	0x180
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LVL31
	.2byte	0x4
	.byte	0xa
	.2byte	0x380
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LVL33
	.2byte	0x4
	.byte	0xa
	.2byte	0x3c0
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xa
	.2byte	0x3c4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL9-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL9
	.4byte	.LVL11-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL35
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL39
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL51
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL54
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL42
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL51
	.4byte	.LFE18
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL39
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL49
	.4byte	.LFE18
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL40
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL51
	.4byte	.LFE18
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL57
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL63
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL69
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL74
	.4byte	.LVL75
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL75
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL77
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL69
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL79
	.4byte	.LVL82
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL82
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL85
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL79
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL86
	.4byte	.LVL99
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL99
	.4byte	.LVL100
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL100
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL101
	.4byte	.LVL102
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL102
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL103
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL86
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL96
	.4byte	.LVL100
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL100
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL102
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL89
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL96
	.4byte	.LVL100
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL102
	.4byte	.LFE17
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL87
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL88
	.4byte	.LVL89-1
	.2byte	0x6
	.byte	0x73
	.sleb128 28
	.byte	0x6
	.byte	0x31
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL90
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL91
	.4byte	.LVL93-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL100
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL104
	.4byte	.LVL107
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL107
	.4byte	.LVL108
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL108
	.4byte	.LVL122
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL122
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
	.4byte	.LVL134
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL134
	.4byte	.LVL135
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL135
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL104
	.4byte	.LVL112
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL112
	.4byte	.LVL128
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL128
	.4byte	.LVL132
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL132
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL109
	.4byte	.LVL110
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL111
	.4byte	.LVL113
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL114
	.4byte	.LVL116
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL117
	.4byte	.LVL125-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL128
	.4byte	.LFE14
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL120
	.4byte	.LVL121
	.2byte	0x3
	.byte	0x73
	.sleb128 32
	.byte	0x9f
	.4byte	.LVL121
	.4byte	.LVL123
	.2byte	0x3
	.byte	0x78
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL123
	.4byte	.LVL128
	.2byte	0x33
	.byte	0x8
	.byte	0x20
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x20
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x20
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x1f
	.byte	0x1a
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x12
	.byte	0x28
	.2byte	0x6
	.byte	0x13
	.byte	0x8
	.byte	0x20
	.byte	0x2f
	.2byte	0x14
	.byte	0x30
	.byte	0x16
	.byte	0x12
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x1a
	.byte	0x28
	.2byte	0x9
	.byte	0x31
	.byte	0x24
	.byte	0x16
	.byte	0x23
	.uleb128 0x1
	.byte	0x16
	.byte	0x2f
	.2byte	0xffef
	.byte	0x13
	.byte	0x96
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL122
	.4byte	.LVL124
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL124
	.4byte	.LVL128
	.2byte	0x38
	.byte	0x31
	.byte	0x4f
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x20
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x20
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x1f
	.byte	0x1a
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x12
	.byte	0x28
	.2byte	0x6
	.byte	0x13
	.byte	0x8
	.byte	0x20
	.byte	0x2f
	.2byte	0x14
	.byte	0x30
	.byte	0x16
	.byte	0x12
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x1a
	.byte	0x28
	.2byte	0x9
	.byte	0x31
	.byte	0x24
	.byte	0x16
	.byte	0x23
	.uleb128 0x1
	.byte	0x16
	.byte	0x2f
	.2byte	0xffef
	.byte	0x13
	.byte	0x96
	.byte	0x1c
	.byte	0x24
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL115
	.4byte	.LVL119
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL134
	.4byte	.LFE14
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL136
	.4byte	.LVL138
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL137
	.4byte	.LVL141
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL147
	.4byte	.LVL149
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL138
	.4byte	.LVL139-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL139-1
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL142
	.4byte	.LVL146
	.2byte	0x1
	.byte	0x52
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
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB20
	.4byte	.LBE20
	.4byte	.LBB22
	.4byte	.LBE22
	.4byte	0
	.4byte	0
	.4byte	.LBB28
	.4byte	.LBE28
	.4byte	.LBB31
	.4byte	.LBE31
	.4byte	0
	.4byte	0
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF47:
	.string	"start_addr"
.LASF40:
	.string	"spi_pin_drv"
.LASF86:
	.string	"esp_flash_encrypt_check_and_update"
.LASF84:
	.string	"new_flash_crypt_cnt"
.LASF94:
	.string	"bootloader_flash_read"
.LASF35:
	.string	"spi_mode"
.LASF2:
	.string	"signed char"
.LASF74:
	.string	"num_partitions"
.LASF69:
	.string	"sec_start"
.LASF97:
	.string	"esp_image_verify_bootloader"
.LASF34:
	.string	"segment_count"
.LASF6:
	.string	"short int"
.LASF3:
	.string	"size_t"
.LASF27:
	.string	"label"
.LASF104:
	.string	"flash_failed"
.LASF32:
	.string	"ESP_IMAGE_SPI_SPEED_20M"
.LASF68:
	.string	"data_length"
.LASF13:
	.string	"sizetype"
.LASF7:
	.string	"__uint16_t"
.LASF9:
	.string	"__uint32_t"
.LASF37:
	.string	"spi_size"
.LASF50:
	.string	"segment_data"
.LASF76:
	.string	"index"
.LASF93:
	.string	"esp_efuse_burn_new_values"
.LASF85:
	.string	"esp_flash_encrypt_region"
.LASF83:
	.string	"ffs_inv"
.LASF46:
	.string	"esp_image_segment_header_t"
.LASF29:
	.string	"esp_partition_info_t"
.LASF102:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\bootloader_support"
.LASF10:
	.string	"long long int"
.LASF77:
	.string	"partition"
.LASF87:
	.string	"efuse_blk0"
.LASF12:
	.string	"long int"
.LASF78:
	.string	"should_encrypt"
.LASF21:
	.string	"offset"
.LASF58:
	.string	"ESP_LOG_INFO"
.LASF18:
	.string	"int32_t"
.LASF67:
	.string	"src_addr"
.LASF4:
	.string	"__uint8_t"
.LASF70:
	.string	"image_length"
.LASF106:
	.string	"esp_image_spi_freq_t"
.LASF45:
	.string	"data_len"
.LASF33:
	.string	"ESP_IMAGE_SPI_SPEED_80M"
.LASF23:
	.string	"esp_partition_pos_t"
.LASF72:
	.string	"encrypt_and_load_partition_table"
.LASF99:
	.string	"esp_image_load"
.LASF5:
	.string	"unsigned char"
.LASF42:
	.string	"hash_appended"
.LASF92:
	.string	"bootloader_fill_random"
.LASF28:
	.string	"flags"
.LASF11:
	.string	"long long unsigned int"
.LASF19:
	.string	"uint32_t"
.LASF0:
	.string	"unsigned int"
.LASF17:
	.string	"uint16_t"
.LASF66:
	.string	"new_wdata6"
.LASF14:
	.string	"long unsigned int"
.LASF36:
	.string	"spi_speed"
.LASF39:
	.string	"wp_pin"
.LASF54:
	.string	"ESP_IMAGE_VERIFY_SILENT"
.LASF53:
	.string	"ESP_IMAGE_VERIFY"
.LASF62:
	.string	"__func__"
.LASF91:
	.string	"esp_log_write"
.LASF64:
	.string	"efuse_key_read_protected"
.LASF44:
	.string	"load_addr"
.LASF15:
	.string	"char"
.LASF25:
	.string	"type"
.LASF88:
	.string	"left"
.LASF55:
	.string	"ESP_LOG_NONE"
.LASF38:
	.string	"entry_addr"
.LASF1:
	.string	"short unsigned int"
.LASF63:
	.string	"dis_reg"
.LASF61:
	.string	"_Bool"
.LASF65:
	.string	"efuse_key_write_protected"
.LASF105:
	.string	"encrypt_bootloader"
.LASF57:
	.string	"ESP_LOG_WARN"
.LASF51:
	.string	"image_len"
.LASF101:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/flash_encrypt.c"
.LASF31:
	.string	"ESP_IMAGE_SPI_SPEED_26M"
.LASF96:
	.string	"bootloader_flash_write"
.LASF103:
	.string	"esp_secure_boot_enabled"
.LASF71:
	.string	"initialise_flash_encryption"
.LASF80:
	.string	"encrypt_flash_contents"
.LASF95:
	.string	"bootloader_flash_erase_sector"
.LASF52:
	.string	"esp_image_metadata_t"
.LASF98:
	.string	"esp_partition_table_verify"
.LASF81:
	.string	"flash_crypt_cnt"
.LASF48:
	.string	"image"
.LASF22:
	.string	"size"
.LASF82:
	.string	"flash_crypt_wr_dis"
.LASF60:
	.string	"ESP_LOG_VERBOSE"
.LASF8:
	.string	"__int32_t"
.LASF79:
	.string	"data_ignored"
.LASF26:
	.string	"subtype"
.LASF16:
	.string	"uint8_t"
.LASF90:
	.string	"esp_log_timestamp"
.LASF59:
	.string	"ESP_LOG_DEBUG"
.LASF49:
	.string	"segments"
.LASF75:
	.string	"encrypt_partition"
.LASF30:
	.string	"ESP_IMAGE_SPI_SPEED_40M"
.LASF24:
	.string	"magic"
.LASF73:
	.string	"partition_table"
.LASF89:
	.string	"__assert_func"
.LASF100:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF41:
	.string	"reserved"
.LASF56:
	.string	"ESP_LOG_ERROR"
.LASF20:
	.string	"esp_err_t"
.LASF43:
	.string	"esp_image_header_t"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
