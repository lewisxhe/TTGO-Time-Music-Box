	.file	"bootloader_common.c"
	.text
.Ltext0:
	.section	.text.bootloader_common_ota_select_crc,"ax",@progbits
	.align	4
	.global	bootloader_common_ota_select_crc
	.type	bootloader_common_ota_select_crc, @function
bootloader_common_ota_select_crc:
.LFB6:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/bootloader_common.c"
	.loc 1 34 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 35 0
	movi.n	a12, 4
	mov.n	a11, a2
	movi.n	a10, -1
	call8	crc32_le
.LVL1:
	.loc 1 36 0
	mov.n	a2, a10
.LVL2:
	retw.n
.LFE6:
	.size	bootloader_common_ota_select_crc, .-bootloader_common_ota_select_crc
	.section	.text.bootloader_common_ota_select_valid,"ax",@progbits
	.align	4
	.global	bootloader_common_ota_select_valid
	.type	bootloader_common_ota_select_valid, @function
bootloader_common_ota_select_valid:
.LFB7:
	.loc 1 39 0
.LVL3:
	entry	sp, 32
.LCFI1:
	.loc 1 40 0
	l32i.n	a8, a2, 0
	beqi	a8, -1, .L4
	.loc 1 40 0 is_stmt 0 discriminator 1
	l32i.n	a3, a2, 28
	mov.n	a10, a2
	call8	bootloader_common_ota_select_crc
.LVL4:
	bne	a3, a10, .L5
	.loc 1 40 0
	movi.n	a2, 1
.LVL5:
	retw.n
.LVL6:
.L4:
	movi.n	a2, 0
.LVL7:
	retw.n
.LVL8:
.L5:
	movi.n	a2, 0
.LVL9:
	.loc 1 41 0 is_stmt 1
	retw.n
.LFE7:
	.size	bootloader_common_ota_select_valid, .-bootloader_common_ota_select_valid
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC3:
	.string	"\"(Cannot use SET_PERI_REG_MASK for DPORT registers use DPORT_SET_PERI_REG_MASK)\" && (!((((GPIO_PIN_MUX_REG[num_pin])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[num_pin])) <= 0x3ff13FFC))"
	.align	4
.LC6:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/bootloader_common.c"
	.align	4
.LC8:
	.string	"\"(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)\" && (!(((((GPIO_PIN_MUX_REG[num_pin]))) >= 0x3ff00000) && (((GPIO_PIN_MUX_REG[num_pin]))) <= 0x3ff13FFC))"
	.align	4
.LC10:
	.string	"\"(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)\" && (!((((GPIO_PIN_MUX_REG[num_pin])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[num_pin])) <= 0x3ff13FFC))"
	.section	.text.bootloader_common_check_long_hold_gpio,"ax",@progbits
	.literal_position
	.literal .LC0, GPIO_PIN_MUX_REG
	.literal .LC1, -1072693248
	.literal .LC2, 81916
	.literal .LC4, .LC3
	.literal .LC5, __func__$3645
	.literal .LC7, .LC6
	.literal .LC9, .LC8
	.literal .LC11, .LC10
	.literal .LC12, 274877907
	.align	4
	.global	bootloader_common_check_long_hold_gpio
	.type	bootloader_common_check_long_hold_gpio, @function
bootloader_common_check_long_hold_gpio:
.LFB8:
	.loc 1 44 0
.LVL10:
	entry	sp, 32
.LCFI2:
	.loc 1 45 0
	extui	a5, a2, 0, 8
	mov.n	a10, a5
	call8	gpio_pad_select_gpio
.LVL11:
	.loc 1 46 0
	l32r	a4, .LC0
	addx4	a4, a2, a4
	l32i.n	a8, a4, 0
	beqz.n	a8, .L7
.LBB2:
	.loc 1 47 0
	l32r	a4, .LC1
	add.n	a4, a8, a4
	l32r	a9, .LC2
	bltu	a9, a4, .L8
	.loc 1 47 0 is_stmt 0 discriminator 1
	l32r	a13, .LC4
	l32r	a12, .LC5
	movi.n	a11, 0x2f
	l32r	a10, .LC7
	call8	__assert_func
.LVL12:
.L8:
.LBB3:
	.loc 1 47 0 discriminator 2
	l32r	a9, .LC2
	bltu	a9, a4, .L9
	.loc 1 47 0 discriminator 3
	l32r	a13, .LC9
	l32r	a12, .LC5
	movi.n	a11, 0x2f
	l32r	a10, .LC7
	call8	__assert_func
.LVL13:
.L9:
.LBB4:
	.loc 1 47 0 discriminator 4
	l32r	a9, .LC2
	bltu	a9, a4, .L10
	.loc 1 47 0 discriminator 5
	l32r	a13, .LC11
	l32r	a12, .LC5
	movi.n	a11, 0x2f
	l32r	a10, .LC7
	call8	__assert_func
.LVL14:
.L10:
	.loc 1 47 0 discriminator 6
	memw
	l32i.n	a9, a8, 0
.LBE4:
	movi	a4, 0x200
	or	a4, a9, a4
	memw
	s32i.n	a4, a8, 0
.L7:
.LBE3:
.LBE2:
	.loc 1 49 0 is_stmt 1
	mov.n	a10, a5
	call8	gpio_pad_pullup
.LVL15:
	.loc 1 50 0
	call8	esp_log_early_timestamp
.LVL16:
	mov.n	a4, a10
.LVL17:
	.loc 1 51 0
	movi.n	a5, 0x1f
	bltu	a5, a2, .L11
	.loc 1 51 0 is_stmt 0 discriminator 1
	call8	gpio_input_get
.LVL18:
	ssr	a2
	srl	a10, a10
	extui	a10, a10, 0, 1
	j	.L12
.L11:
	.loc 1 51 0 discriminator 2
	call8	gpio_input_get_high
.LVL19:
	ssr	a2
	srl	a10, a10
	extui	a10, a10, 0, 1
.L12:
	.loc 1 51 0 discriminator 4
	bnez.n	a10, .L17
.L16:
	.loc 1 55 0 is_stmt 1
	movi.n	a8, 0x1f
	bltu	a8, a2, .L14
	.loc 1 55 0 is_stmt 0 discriminator 1
	call8	gpio_input_get
.LVL20:
	ssr	a2
	srl	a10, a10
	extui	a10, a10, 0, 1
	j	.L15
.L14:
	.loc 1 55 0 discriminator 2
	call8	gpio_input_get_high
.LVL21:
	ssr	a2
	srl	a10, a10
	extui	a10, a10, 0, 1
.L15:
	.loc 1 55 0 discriminator 4
	bnez.n	a10, .L18
	.loc 1 58 0 is_stmt 1
	call8	esp_log_early_timestamp
.LVL22:
	sub	a10, a10, a4
	l32r	a8, .LC12
	muluh	a10, a10, a8
	srli	a10, a10, 6
	bltu	a10, a3, .L16
	.loc 1 59 0
	movi.n	a2, 1
.LVL23:
	retw.n
.LVL24:
.L17:
	.loc 1 52 0
	movi.n	a2, 0
.LVL25:
	retw.n
.LVL26:
.L18:
	.loc 1 56 0
	movi.n	a2, -1
.LVL27:
	.loc 1 60 0
	retw.n
.LFE8:
	.size	bootloader_common_check_long_hold_gpio, .-bootloader_common_check_long_hold_gpio
	.section	.rodata.str1.4
	.align	4
.LC13:
	.string	", "
	.section	.text.bootloader_common_label_search,"ax",@progbits
	.literal_position
	.literal .LC14, .LC13
	.align	4
	.global	bootloader_common_label_search
	.type	bootloader_common_label_search, @function
bootloader_common_label_search:
.LFB9:
	.loc 1 64 0
.LVL28:
	entry	sp, 32
.LCFI3:
	mov.n	a5, a2
	.loc 1 65 0
	movi.n	a4, 1
	movi.n	a2, 0
.LVL29:
	mov.n	a6, a2
	moveqz	a6, a4, a5
	.loc 1 65 0
	movnez	a4, a2, a3
	or	a2, a4, a6
	.loc 1 65 0
	bnez.n	a2, .L25
	.loc 1 68 0
	mov.n	a11, a3
	mov.n	a10, a5
	call8	strstr
.LVL30:
	mov.n	a4, a10
.LVL31:
	.loc 1 69 0
	j	.L21
.L24:
.LBB5:
	.loc 1 73 0
	sub	a8, a4, a5
.LVL32:
	.loc 1 74 0
	beqz.n	a8, .L22
	.loc 1 74 0 is_stmt 0 discriminator 1
	add.n	a8, a5, a8
.LVL33:
	addi.n	a8, a8, -1
	l8ui	a8, a8, 0
	addi	a6, a8, -44
	movi.n	a11, 1
	movi.n	a10, 0
	mov.n	a9, a10
	moveqz	a9, a11, a6
	mov.n	a6, a9
	addi	a9, a8, -32
	mov.n	a8, a10
	moveqz	a8, a11, a9
	or	a8, a6, a8
	beq	a8, a10, .L23
.L22:
.LBB6:
	.loc 1 76 0 is_stmt 1
	mov.n	a10, a3
	call8	strlen
.LVL34:
	.loc 1 77 0
	add.n	a10, a4, a10
.LVL35:
	l8ui	a10, a10, 0
	movi.n	a8, 1
	movi.n	a6, 0
	mov.n	a11, a6
	moveqz	a11, a8, a10
	addi	a9, a10, -44
	movnez	a8, a6, a9
	or	a8, a11, a8
	bne	a8, a6, .L26
	.loc 1 78 0
	beqi	a10, 32, .L27
.L23:
.LBE6:
	.loc 1 86 0
	l32r	a11, .LC14
	mov.n	a10, a4
	call8	strcspn
.LVL36:
	mov.n	a6, a10
.LVL37:
	.loc 1 87 0
	mov.n	a10, a4
	call8	strlen
.LVL38:
	beq	a6, a10, .L20
	.loc 1 90 0
	mov.n	a11, a3
	add.n	a10, a4, a6
	call8	strstr
.LVL39:
	mov.n	a4, a10
.LVL40:
.L21:
.LBE5:
	.loc 1 69 0
	bnez.n	a4, .L24
	retw.n
.LVL41:
.L25:
	.loc 1 66 0
	movi.n	a2, 0
	retw.n
.LVL42:
.L26:
.LBB8:
.LBB7:
	.loc 1 80 0
	mov.n	a2, a8
	retw.n
.L27:
	movi.n	a2, 1
.L20:
.LBE7:
.LBE8:
	.loc 1 93 0
	retw.n
.LFE9:
	.size	bootloader_common_label_search, .-bootloader_common_label_search
	.section	.rodata.str1.4
	.align	4
.LC15:
	.string	"no"
	.align	4
.LC17:
	.string	"yes"
	.align	4
.LC19:
	.string	"err"
	.align	4
.LC23:
	.string	"boot_comm"
	.align	4
.LC25:
	.string	"\033[0;31mE (%d) %s: bootloader_mmap(0x%x, 0x%x) failed\033[0m\n"
	.align	4
.LC27:
	.string	"\033[0;31mE (%d) %s: Failed to verify partition table\033[0m\n"
	.align	4
.LC29:
	.string	"\033[0;32mI (%d) %s: ## Label            Usage Offset   Length   Cleaned\033[0m\n"
	.align	4
.LC31:
	.string	"\033[0;32mI (%d) %s: %2d %-16s data  %08x %08x [%s]\033[0m\n"
	.section	.text.bootloader_common_erase_part_type_data,"ax",@progbits
	.literal_position
	.literal .LC16, .LC15
	.literal .LC18, .LC17
	.literal .LC20, .LC19
	.literal .LC21, 3072
	.literal .LC22, 65536
	.literal .LC24, .LC23
	.literal .LC26, .LC25
	.literal .LC28, .LC27
	.literal .LC30, .LC29
	.literal .LC32, .LC31
	.align	4
	.global	bootloader_common_erase_part_type_data
	.type	bootloader_common_erase_part_type_data, @function
bootloader_common_erase_part_type_data:
.LFB10:
	.loc 1 96 0
.LVL43:
	entry	sp, 96
.LCFI4:
	extui	a3, a3, 0, 8
	s32i.n	a3, sp, 52
.LVL44:
	.loc 1 103 0
	l32r	a11, .LC21
	l32r	a10, .LC22
	call8	bootloader_mmap
.LVL45:
	mov.n	a5, a10
.LVL46:
	.loc 1 104 0
	bnez.n	a10, .L29
	.loc 1 105 0 discriminator 2
	call8	esp_log_timestamp
.LVL47:
	l32r	a11, .LC24
	l32r	a2, .LC21
.LVL48:
	s32i.n	a2, sp, 0
	l32r	a15, .LC22
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC26
	movi.n	a10, 1
	call8	esp_log_write
.LVL49:
	.loc 1 106 0 discriminator 2
	movi.n	a2, 0
	retw.n
.LVL50:
.L29:
	.loc 1 110 0
	addi	a12, sp, 16
	movi.n	a11, 1
	call8	esp_partition_table_verify
.LVL51:
	.loc 1 111 0
	beqz.n	a10, .L31
	.loc 1 112 0 discriminator 2
	call8	esp_log_timestamp
.LVL52:
	l32r	a11, .LC24
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC28
	movi.n	a10, 1
	call8	esp_log_write
.LVL53:
	.loc 1 113 0 discriminator 2
	movi.n	a2, 0
.LVL54:
	s32i.n	a2, sp, 48
	j	.L32
.LVL55:
.L31:
	.loc 1 115 0 discriminator 9
	call8	esp_log_timestamp
.LVL56:
	l32r	a11, .LC24
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC30
	movi.n	a10, 3
	call8	esp_log_write
.LVL57:
.LBB9:
	.loc 1 116 0 discriminator 9
	movi.n	a4, 0
.LBE9:
	.loc 1 101 0 discriminator 9
	movi.n	a3, 1
.LVL58:
	s32i.n	a3, sp, 48
.LBB12:
	.loc 1 116 0 discriminator 9
	j	.L33
.LVL59:
.L38:
.LBB10:
	.loc 1 117 0
	slli	a3, a4, 5
	add.n	a3, a5, a3
.LVL60:
	.loc 1 118 0
	movi.n	a6, 0
	s32i.n	a6, sp, 20
	s32i.n	a6, sp, 24
	s32i.n	a6, sp, 28
	s32i.n	a6, sp, 32
	s8i	a6, sp, 36
	.loc 1 119 0
	l8ui	a6, a3, 2
	bnei	a6, 1, .L34
.LVL61:
.LBB11:
	.loc 1 121 0
	l32i.n	a6, sp, 52
	beqz.n	a6, .L39
	.loc 1 121 0 discriminator 1
	l8ui	a6, a3, 3
	beqz.n	a6, .L40
	.loc 1 120 0
	movi.n	a7, 0
	j	.L35
.L39:
	movi.n	a7, 0
	j	.L35
.L40:
	.loc 1 122 0
	movi.n	a7, 1
.L35:
.LVL62:
	.loc 1 125 0
	addi.n	a6, a3, 12
	movi.n	a12, 0x10
	mov.n	a11, a6
	addi	a10, sp, 20
	call8	strncpy
.LVL63:
	.loc 1 126 0
	bnez.n	a7, .L36
	.loc 1 126 0 discriminator 1
	addi	a11, sp, 20
	mov.n	a10, a2
	call8	bootloader_common_label_search
.LVL64:
	beqz.n	a10, .L41
.L36:
	.loc 1 127 0
	l32i.n	a11, a3, 8
	l32i.n	a10, a3, 4
	call8	esp_rom_spiflash_erase_area
.LVL65:
	.loc 1 128 0
	beqz.n	a10, .L42
	.loc 1 129 0
	movi.n	a8, 0
	s32i.n	a8, sp, 48
.LVL66:
	.loc 1 130 0
	l32r	a7, .LC20
.LVL67:
	j	.L37
.LVL68:
.L41:
	.loc 1 135 0
	l32r	a7, .LC16
.LVL69:
	j	.L37
.LVL70:
.L42:
	.loc 1 132 0
	l32r	a7, .LC18
.LVL71:
.L37:
	.loc 1 138 0 discriminator 9
	call8	esp_log_timestamp
.LVL72:
	l32r	a11, .LC24
	s32i.n	a7, sp, 12
	l32i.n	a7, a3, 8
.LVL73:
	s32i.n	a7, sp, 8
	l32i.n	a3, a3, 4
.LVL74:
	s32i.n	a3, sp, 4
	s32i.n	a6, sp, 0
	mov.n	a15, a4
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC32
	movi.n	a10, 3
	call8	esp_log_write
.LVL75:
.L34:
.LBE11:
.LBE10:
	.loc 1 116 0 discriminator 2
	addi.n	a4, a4, 1
.LVL76:
.L33:
	.loc 1 116 0 is_stmt 0 discriminator 1
	l32i.n	a3, sp, 16
	blt	a4, a3, .L38
.LVL77:
.L32:
.LBE12:
	.loc 1 144 0 is_stmt 1
	mov.n	a10, a5
	call8	bootloader_munmap
.LVL78:
	.loc 1 146 0
	l32i.n	a2, sp, 48
	.loc 1 147 0
	retw.n
.LFE10:
	.size	bootloader_common_erase_part_type_data, .-bootloader_common_erase_part_type_data
	.section	.rodata.__func__$3645,"a",@progbits
	.align	4
	.type	__func__$3645, @object
	.size	__func__$3645, 39
__func__$3645:
	.string	"bootloader_common_check_long_hold_gpio"
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
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI0-.LFB6
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
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x4
	.4byte	.LCFI2-.LFB8
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x4
	.4byte	.LCFI3-.LFB9
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI4-.LFB10
	.byte	0xe
	.uleb128 0x60
	.align	4
.LEFDE8:
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_err.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_flash_data_types.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/log/include/esp_log.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include/bootloader_common.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/crc.h"
	.file 9 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/gpio.h"
	.file 10 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/assert.h"
	.file 11 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/string.h"
	.file 12 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/spi_flash.h"
	.file 13 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include_priv/bootloader_flash.h"
	.file 14 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include/esp_flash_partitions.h"
	.file 15 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/include/soc/gpio_periph.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x881
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF82
	.byte	0xc
	.4byte	.LASF83
	.4byte	.LASF84
	.4byte	.Ldebug_ranges0+0x48
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x4
	.4byte	.LASF5
	.byte	0x2
	.byte	0x12
	.4byte	0x4c
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x4
	.4byte	.LASF6
	.byte	0x2
	.byte	0x16
	.4byte	0x2c
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x2
	.byte	0x19
	.4byte	0x33
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x2
	.byte	0x1a
	.4byte	0x25
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x2
	.byte	0x31
	.4byte	0x33
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x5
	.byte	0x4
	.4byte	0xaf
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0x5
	.byte	0x4
	.4byte	0xbc
	.uleb128 0x6
	.4byte	0xaf
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x3
	.byte	0x15
	.4byte	0x41
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x3
	.byte	0x21
	.4byte	0x5a
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x3
	.byte	0x2c
	.4byte	0x65
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x3
	.byte	0x2d
	.4byte	0x70
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x3
	.byte	0xa9
	.4byte	0x89
	.uleb128 0x4
	.4byte	.LASF21
	.byte	0x4
	.byte	0x18
	.4byte	0xd7
	.uleb128 0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x6
	.byte	0x1f
	.4byte	0x134
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0
	.uleb128 0x8
	.4byte	.LASF23
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF24
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF25
	.byte	0x3
	.uleb128 0x8
	.4byte	.LASF26
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF27
	.byte	0x5
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF28
	.uleb128 0x9
	.byte	0x20
	.byte	0x5
	.byte	0x1d
	.4byte	0x168
	.uleb128 0xa
	.4byte	.LASF29
	.byte	0x5
	.byte	0x1e
	.4byte	0xe2
	.byte	0
	.uleb128 0xa
	.4byte	.LASF30
	.byte	0x5
	.byte	0x1f
	.4byte	0x168
	.byte	0x4
	.uleb128 0xb
	.string	"crc"
	.byte	0x5
	.byte	0x20
	.4byte	0xe2
	.byte	0x1c
	.byte	0
	.uleb128 0xc
	.4byte	0xc1
	.4byte	0x178
	.uleb128 0xd
	.4byte	0x9b
	.byte	0x17
	.byte	0
	.uleb128 0x4
	.4byte	.LASF31
	.byte	0x5
	.byte	0x21
	.4byte	0x13b
	.uleb128 0x9
	.byte	0x8
	.byte	0x5
	.byte	0x24
	.4byte	0x1a4
	.uleb128 0xa
	.4byte	.LASF32
	.byte	0x5
	.byte	0x25
	.4byte	0xe2
	.byte	0
	.uleb128 0xa
	.4byte	.LASF33
	.byte	0x5
	.byte	0x26
	.4byte	0xe2
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF34
	.byte	0x5
	.byte	0x27
	.4byte	0x183
	.uleb128 0x9
	.byte	0x20
	.byte	0x5
	.byte	0x2c
	.4byte	0x200
	.uleb128 0xa
	.4byte	.LASF35
	.byte	0x5
	.byte	0x2d
	.4byte	0xcc
	.byte	0
	.uleb128 0xa
	.4byte	.LASF36
	.byte	0x5
	.byte	0x2e
	.4byte	0xc1
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF37
	.byte	0x5
	.byte	0x2f
	.4byte	0xc1
	.byte	0x3
	.uleb128 0xb
	.string	"pos"
	.byte	0x5
	.byte	0x30
	.4byte	0x1a4
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF38
	.byte	0x5
	.byte	0x31
	.4byte	0x200
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF39
	.byte	0x5
	.byte	0x32
	.4byte	0xe2
	.byte	0x1c
	.byte	0
	.uleb128 0xc
	.4byte	0xc1
	.4byte	0x210
	.uleb128 0xd
	.4byte	0x9b
	.byte	0xf
	.byte	0
	.uleb128 0x4
	.4byte	.LASF40
	.byte	0x5
	.byte	0x33
	.4byte	0x1af
	.uleb128 0x7
	.byte	0x4
	.4byte	0x33
	.byte	0x7
	.byte	0x13
	.4byte	0x23a
	.uleb128 0x8
	.4byte	.LASF41
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF42
	.sleb128 -1
	.uleb128 0x8
	.4byte	.LASF43
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF44
	.byte	0x7
	.byte	0x17
	.4byte	0x21b
	.uleb128 0xf
	.4byte	.LASF45
	.byte	0x1
	.byte	0x21
	.4byte	0xe2
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x287
	.uleb128 0x10
	.string	"s"
	.byte	0x1
	.byte	0x21
	.4byte	0x287
	.4byte	.LLST0
	.uleb128 0x11
	.4byte	.LVL1
	.4byte	0x7c7
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x28d
	.uleb128 0x6
	.4byte	0x178
	.uleb128 0xf
	.4byte	.LASF46
	.byte	0x1
	.byte	0x26
	.4byte	0x134
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2c9
	.uleb128 0x10
	.string	"s"
	.byte	0x1
	.byte	0x26
	.4byte	0x287
	.4byte	.LLST1
	.uleb128 0x11
	.4byte	.LVL4
	.4byte	0x245
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF47
	.byte	0x1
	.byte	0x2b
	.4byte	0x23a
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x406
	.uleb128 0x13
	.4byte	.LASF48
	.byte	0x1
	.byte	0x2b
	.4byte	0xe2
	.4byte	.LLST2
	.uleb128 0x14
	.4byte	.LASF49
	.byte	0x1
	.byte	0x2b
	.4byte	0xe2
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x15
	.4byte	.LASF85
	.4byte	0x416
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3645
	.uleb128 0x16
	.4byte	.LASF52
	.byte	0x1
	.byte	0x32
	.4byte	0xe2
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x17
	.4byte	.LVL11
	.4byte	0x7d2
	.4byte	0x32e
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL12
	.4byte	0x7dd
	.4byte	0x35d
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x2f
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3645
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x17
	.4byte	.LVL13
	.4byte	0x7dd
	.4byte	0x38c
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x2f
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3645
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.byte	0
	.uleb128 0x17
	.4byte	.LVL14
	.4byte	0x7dd
	.4byte	0x3bb
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x2f
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3645
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0
	.uleb128 0x17
	.4byte	.LVL15
	.4byte	0x7e8
	.4byte	0x3cf
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL16
	.4byte	0x7f4
	.uleb128 0x18
	.4byte	.LVL18
	.4byte	0x7ff
	.uleb128 0x18
	.4byte	.LVL19
	.4byte	0x80a
	.uleb128 0x18
	.4byte	.LVL20
	.4byte	0x7ff
	.uleb128 0x18
	.4byte	.LVL21
	.4byte	0x80a
	.uleb128 0x18
	.4byte	.LVL22
	.4byte	0x7f4
	.byte	0
	.uleb128 0xc
	.4byte	0xaf
	.4byte	0x416
	.uleb128 0xd
	.4byte	0x9b
	.byte	0x26
	.byte	0
	.uleb128 0x6
	.4byte	0x406
	.uleb128 0xf
	.4byte	.LASF50
	.byte	0x1
	.byte	0x3f
	.4byte	0x134
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x511
	.uleb128 0x13
	.4byte	.LASF51
	.byte	0x1
	.byte	0x3f
	.4byte	0xb6
	.4byte	.LLST3
	.uleb128 0x14
	.4byte	.LASF38
	.byte	0x1
	.byte	0x3f
	.4byte	0xa9
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x19
	.4byte	.LASF53
	.byte	0x1
	.byte	0x44
	.4byte	0xb6
	.4byte	.LLST4
	.uleb128 0x1a
	.4byte	.Ldebug_ranges0+0
	.4byte	0x4fa
	.uleb128 0x19
	.4byte	.LASF54
	.byte	0x1
	.byte	0x49
	.4byte	0x33
	.4byte	.LLST5
	.uleb128 0x19
	.4byte	.LASF55
	.byte	0x1
	.byte	0x56
	.4byte	0x33
	.4byte	.LLST6
	.uleb128 0x1a
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0x4af
	.uleb128 0x19
	.4byte	.LASF56
	.byte	0x1
	.byte	0x4c
	.4byte	0x33
	.4byte	.LLST7
	.uleb128 0x11
	.4byte	.LVL34
	.4byte	0x815
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL36
	.4byte	0x820
	.4byte	0x4cc
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC13
	.byte	0
	.uleb128 0x17
	.4byte	.LVL38
	.4byte	0x815
	.4byte	0x4e0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x11
	.4byte	.LVL39
	.4byte	0x82b
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x74
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	.LVL30
	.4byte	0x82b
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF57
	.byte	0x1
	.byte	0x5f
	.4byte	0x134
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x775
	.uleb128 0x13
	.4byte	.LASF58
	.byte	0x1
	.byte	0x5f
	.4byte	0xb6
	.4byte	.LLST8
	.uleb128 0x13
	.4byte	.LASF59
	.byte	0x1
	.byte	0x5f
	.4byte	0x134
	.4byte	.LLST9
	.uleb128 0x16
	.4byte	.LASF60
	.byte	0x1
	.byte	0x61
	.4byte	0x775
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x19
	.4byte	.LASF61
	.byte	0x1
	.byte	0x62
	.4byte	0xb6
	.4byte	.LLST10
	.uleb128 0x1b
	.string	"err"
	.byte	0x1
	.byte	0x63
	.4byte	0xf8
	.4byte	.LLST11
	.uleb128 0x16
	.4byte	.LASF62
	.byte	0x1
	.byte	0x64
	.4byte	0x33
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1b
	.string	"ret"
	.byte	0x1
	.byte	0x65
	.4byte	0x134
	.4byte	.LLST12
	.uleb128 0x1a
	.4byte	.Ldebug_ranges0+0x30
	.4byte	0x67b
	.uleb128 0x1b
	.string	"i"
	.byte	0x1
	.byte	0x74
	.4byte	0x33
	.4byte	.LLST13
	.uleb128 0x1c
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.uleb128 0x19
	.4byte	.LASF63
	.byte	0x1
	.byte	0x75
	.4byte	0x775
	.4byte	.LLST14
	.uleb128 0x16
	.4byte	.LASF38
	.byte	0x1
	.byte	0x76
	.4byte	0x780
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x1c
	.4byte	.LBB11
	.4byte	.LBE11-.LBB11
	.uleb128 0x19
	.4byte	.LASF64
	.byte	0x1
	.byte	0x78
	.4byte	0x134
	.4byte	.LLST15
	.uleb128 0x17
	.4byte	.LVL63
	.4byte	0x836
	.4byte	0x606
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x17
	.4byte	.LVL64
	.4byte	0x41b
	.4byte	0x621
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.byte	0
	.uleb128 0x18
	.4byte	.LVL65
	.4byte	0x841
	.uleb128 0x18
	.4byte	.LVL72
	.4byte	0x84d
	.uleb128 0x11
	.4byte	.LVL75
	.4byte	0x858
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC23
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC31
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC23
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x2
	.byte	0x71
	.sleb128 8
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL45
	.4byte	0x863
	.4byte	0x697
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x40
	.byte	0x3c
	.byte	0x24
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0xc00
	.byte	0
	.uleb128 0x18
	.4byte	.LVL47
	.4byte	0x84d
	.uleb128 0x17
	.4byte	.LVL49
	.4byte	0x858
	.4byte	0x6dc
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC23
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC25
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC23
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x3
	.byte	0x40
	.byte	0x3c
	.byte	0x24
	.uleb128 0x12
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL51
	.4byte	0x86e
	.4byte	0x6f6
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x18
	.4byte	.LVL52
	.4byte	0x84d
	.uleb128 0x17
	.4byte	.LVL53
	.4byte	0x858
	.4byte	0x72d
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC23
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC27
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC23
	.byte	0
	.uleb128 0x18
	.4byte	.LVL56
	.4byte	0x84d
	.uleb128 0x17
	.4byte	.LVL57
	.4byte	0x858
	.4byte	0x764
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC23
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC29
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC23
	.byte	0
	.uleb128 0x11
	.4byte	.LVL78
	.4byte	0x879
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x77b
	.uleb128 0x6
	.4byte	0x210
	.uleb128 0xc
	.4byte	0xaf
	.4byte	0x790
	.uleb128 0xd
	.4byte	0x9b
	.byte	0x10
	.byte	0
	.uleb128 0x1d
	.string	"TAG"
	.byte	0x1
	.byte	0x1f
	.4byte	0x7a2
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC23
	.byte	0x9f
	.uleb128 0x6
	.4byte	0xb6
	.uleb128 0xc
	.4byte	0xe2
	.4byte	0x7b7
	.uleb128 0xd
	.4byte	0x9b
	.byte	0x27
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF86
	.byte	0xf
	.byte	0x19
	.4byte	0x7c2
	.uleb128 0x6
	.4byte	0x7a7
	.uleb128 0x1f
	.4byte	.LASF65
	.4byte	.LASF65
	.byte	0x8
	.byte	0x33
	.uleb128 0x1f
	.4byte	.LASF66
	.4byte	.LASF66
	.byte	0x9
	.byte	0xf6
	.uleb128 0x1f
	.4byte	.LASF67
	.4byte	.LASF67
	.byte	0xa
	.byte	0x29
	.uleb128 0x20
	.4byte	.LASF68
	.4byte	.LASF68
	.byte	0x9
	.2byte	0x10a
	.uleb128 0x1f
	.4byte	.LASF69
	.4byte	.LASF69
	.byte	0x6
	.byte	0x61
	.uleb128 0x1f
	.4byte	.LASF70
	.4byte	.LASF70
	.byte	0x9
	.byte	0x79
	.uleb128 0x1f
	.4byte	.LASF71
	.4byte	.LASF71
	.byte	0x9
	.byte	0x82
	.uleb128 0x1f
	.4byte	.LASF72
	.4byte	.LASF72
	.byte	0xb
	.byte	0x21
	.uleb128 0x1f
	.4byte	.LASF73
	.4byte	.LASF73
	.byte	0xb
	.byte	0x1f
	.uleb128 0x1f
	.4byte	.LASF74
	.4byte	.LASF74
	.byte	0xb
	.byte	0x28
	.uleb128 0x1f
	.4byte	.LASF75
	.4byte	.LASF75
	.byte	0xb
	.byte	0x24
	.uleb128 0x20
	.4byte	.LASF76
	.4byte	.LASF76
	.byte	0xc
	.2byte	0x19f
	.uleb128 0x1f
	.4byte	.LASF77
	.4byte	.LASF77
	.byte	0x6
	.byte	0x57
	.uleb128 0x1f
	.4byte	.LASF78
	.4byte	.LASF78
	.byte	0x6
	.byte	0x6b
	.uleb128 0x1f
	.4byte	.LASF79
	.4byte	.LASF79
	.byte	0xd
	.byte	0x31
	.uleb128 0x1f
	.4byte	.LASF80
	.4byte	.LASF80
	.byte	0xe
	.byte	0x26
	.uleb128 0x1f
	.4byte	.LASF81
	.4byte	.LASF81
	.byte	0xd
	.byte	0x39
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
	.uleb128 0x38
	.uleb128 0xb
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x18
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
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL3
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
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL10
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL25
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
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL29
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL31
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL42
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL33
	.4byte	.LVL40
	.2byte	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LFE9
	.2byte	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL37
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL43
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL48
	.4byte	.LVL50
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL50
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
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL77
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL43
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL58
	.4byte	.LFE10
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL71
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL73
	.4byte	.LVL75-1
	.2byte	0x3
	.byte	0x91
	.sleb128 -84
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL51
	.4byte	.LVL52-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL55
	.4byte	.LVL56-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL65
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL70
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL44
	.4byte	.LVL53
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LVL55
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL55
	.4byte	.LVL59
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL59
	.4byte	.LVL66
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL68
	.4byte	.LFE10
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL57
	.4byte	.LVL59
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL59
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL60
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL74
	.4byte	.LVL75
	.2byte	0x3
	.byte	0x76
	.sleb128 -12
	.byte	0x9f
	.4byte	.LVL75
	.4byte	.LVL76
	.2byte	0x8
	.byte	0x74
	.sleb128 0
	.byte	0x35
	.byte	0x24
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL62
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL70
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x57
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
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB5
	.4byte	.LBE5
	.4byte	.LBB8
	.4byte	.LBE8
	.4byte	0
	.4byte	0
	.4byte	.LBB6
	.4byte	.LBE6
	.4byte	.LBB7
	.4byte	.LBE7
	.4byte	0
	.4byte	0
	.4byte	.LBB9
	.4byte	.LBE9
	.4byte	.LBB12
	.4byte	.LBE12
	.4byte	0
	.4byte	0
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF75:
	.string	"strncpy"
.LASF58:
	.string	"list_erase"
.LASF54:
	.string	"idx_first"
.LASF80:
	.string	"esp_partition_table_verify"
.LASF27:
	.string	"ESP_LOG_VERBOSE"
.LASF62:
	.string	"num_partitions"
.LASF4:
	.string	"short int"
.LASF38:
	.string	"label"
.LASF20:
	.string	"intptr_t"
.LASF13:
	.string	"sizetype"
.LASF8:
	.string	"__uint32_t"
.LASF61:
	.string	"marker"
.LASF6:
	.string	"__uint16_t"
.LASF69:
	.string	"esp_log_early_timestamp"
.LASF36:
	.string	"type"
.LASF65:
	.string	"crc32_le"
.LASF16:
	.string	"uint8_t"
.LASF41:
	.string	"GPIO_LONG_HOLD"
.LASF11:
	.string	"__intptr_t"
.LASF73:
	.string	"strcspn"
.LASF40:
	.string	"esp_partition_info_t"
.LASF64:
	.string	"fl_ota_data_erase"
.LASF9:
	.string	"long long int"
.LASF63:
	.string	"partition"
.LASF53:
	.string	"sub_list_start_like_label"
.LASF12:
	.string	"long int"
.LASF32:
	.string	"offset"
.LASF25:
	.string	"ESP_LOG_INFO"
.LASF57:
	.string	"bootloader_common_erase_part_type_data"
.LASF5:
	.string	"__uint8_t"
.LASF43:
	.string	"GPIO_NOT_HOLD"
.LASF34:
	.string	"esp_partition_pos_t"
.LASF3:
	.string	"unsigned char"
.LASF86:
	.string	"GPIO_PIN_MUX_REG"
.LASF2:
	.string	"signed char"
.LASF39:
	.string	"flags"
.LASF10:
	.string	"long long unsigned int"
.LASF19:
	.string	"uint32_t"
.LASF0:
	.string	"unsigned int"
.LASF17:
	.string	"uint16_t"
.LASF45:
	.string	"bootloader_common_ota_select_crc"
.LASF52:
	.string	"tm_start"
.LASF71:
	.string	"gpio_input_get_high"
.LASF85:
	.string	"__func__"
.LASF78:
	.string	"esp_log_write"
.LASF44:
	.string	"esp_comm_gpio_hold_t"
.LASF81:
	.string	"bootloader_munmap"
.LASF42:
	.string	"GPIO_SHORT_HOLD"
.LASF15:
	.string	"char"
.LASF47:
	.string	"bootloader_common_check_long_hold_gpio"
.LASF72:
	.string	"strlen"
.LASF18:
	.string	"int32_t"
.LASF22:
	.string	"ESP_LOG_NONE"
.LASF51:
	.string	"list"
.LASF1:
	.string	"short unsigned int"
.LASF30:
	.string	"seq_label"
.LASF68:
	.string	"gpio_pad_pullup"
.LASF29:
	.string	"ota_seq"
.LASF28:
	.string	"_Bool"
.LASF83:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/bootloader_common.c"
.LASF33:
	.string	"size"
.LASF24:
	.string	"ESP_LOG_WARN"
.LASF26:
	.string	"ESP_LOG_DEBUG"
.LASF46:
	.string	"bootloader_common_ota_select_valid"
.LASF48:
	.string	"num_pin"
.LASF14:
	.string	"long unsigned int"
.LASF76:
	.string	"esp_rom_spiflash_erase_area"
.LASF56:
	.string	"len_label"
.LASF50:
	.string	"bootloader_common_label_search"
.LASF31:
	.string	"esp_ota_select_entry_t"
.LASF7:
	.string	"__int32_t"
.LASF37:
	.string	"subtype"
.LASF59:
	.string	"ota_data_erase"
.LASF70:
	.string	"gpio_input_get"
.LASF74:
	.string	"strstr"
.LASF77:
	.string	"esp_log_timestamp"
.LASF35:
	.string	"magic"
.LASF67:
	.string	"__assert_func"
.LASF82:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF49:
	.string	"delay_sec"
.LASF60:
	.string	"partitions"
.LASF23:
	.string	"ESP_LOG_ERROR"
.LASF66:
	.string	"gpio_pad_select_gpio"
.LASF21:
	.string	"esp_err_t"
.LASF55:
	.string	"pos_delim"
.LASF79:
	.string	"bootloader_mmap"
.LASF84:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\bootloader_support"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
