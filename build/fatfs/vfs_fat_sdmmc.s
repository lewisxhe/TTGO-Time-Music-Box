	.file	"vfs_fat_sdmmc.c"
	.text
.Ltext0:
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC3:
	.string	"vfs_fat_sdmmc"
	.align	4
.LC5:
	.string	"\033[0;33mW (%d) %s: failed to mount card (%d)\033[0m\n"
	.align	4
.LC7:
	.string	"\033[0;33mW (%d) %s: partitioning card\033[0m\n"
	.align	4
.LC10:
	.string	"\033[0;33mW (%d) %s: formatting card, allocation unit size=%d\033[0m\n"
	.align	4
.LC12:
	.string	"\033[0;33mW (%d) %s: mounting again\033[0m\n"
	.section	.text.esp_vfs_fat_sdmmc_mount,"ax",@progbits
	.literal_position
	.literal .LC0, s_card
	.literal .LC1, s_base_path
	.literal .LC2, s_pdrv
	.literal .LC4, .LC3
	.literal .LC6, .LC5
	.literal .LC8, .LC7
	.literal .LC9, 4096
	.literal .LC11, .LC10
	.literal .LC13, .LC12
	.align	4
	.global	esp_vfs_fat_sdmmc_mount
	.type	esp_vfs_fat_sdmmc_mount, @function
esp_vfs_fat_sdmmc_mount:
.LFB17:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/fatfs/src/vfs_fat_sdmmc.c"
	.loc 1 36 0
.LVL0:
	entry	sp, 80
.LCFI0:
	mov.n	a7, a2
.LVL1:
	.loc 1 39 0
	movi.n	a2, 0
.LVL2:
	s32i.n	a2, sp, 0
	.loc 1 41 0
	l32r	a2, .LC0
	l32i.n	a2, a2, 0
	bnez.n	a2, .L10
	.loc 1 46 0
	movi.n	a2, -1
	s8i	a2, sp, 4
	.loc 1 47 0
	addi.n	a10, sp, 4
	call8	ff_diskio_get_drive
.LVL3:
	mov.n	a2, a10
	bnez.n	a10, .L11
	.loc 1 47 0 is_stmt 0 discriminator 1
	l8ui	a9, sp, 4
	movi	a8, 0xff
	beq	a9, a8, .L12
	.loc 1 52 0 is_stmt 1
	mov.n	a10, a7
	call8	strdup
.LVL4:
	l32r	a8, .LC1
	s32i.n	a10, a8, 0
	.loc 1 53 0
	beqz.n	a10, .L13
.LVL5:
	.loc 1 58 0
	movi	a10, 0x80
	call8	malloc
.LVL6:
	l32r	a8, .LC0
	s32i.n	a10, a8, 0
	.loc 1 59 0
	beqz.n	a10, .L14
	.loc 1 64 0
	l32i.n	a10, a3, 16
	callx8	a10
.LVL7:
	s32i.n	a10, sp, 32
.LVL8:
	.loc 1 65 0
	bnez.n	a10, .L15
	.loc 1 71 0
	l32i.n	a8, a3, 0
	bnei	a8, 8, .L4
	.loc 1 72 0
	mov.n	a11, a4
	l32i.n	a10, a3, 4
.LVL9:
	call8	sdspi_host_init_slot
.LVL10:
	s32i.n	a10, sp, 32
.LVL11:
	j	.L5
.L4:
	.loc 1 75 0
	mov.n	a11, a4
	l32i.n	a10, a3, 4
.LVL12:
	call8	sdmmc_host_init_slot
.LVL13:
	s32i.n	a10, sp, 32
.LVL14:
.L5:
	.loc 1 78 0
	l32i.n	a4, sp, 32
.LVL15:
	bnez.n	a4, .L16
	.loc 1 84 0
	l32r	a4, .LC0
	l32i.n	a11, a4, 0
	mov.n	a10, a3
	call8	sdmmc_card_init
.LVL16:
	s32i.n	a10, sp, 32
.LVL17:
	.loc 1 85 0
	bnez.n	a10, .L17
	.loc 1 89 0
	beqz.n	a6, .L6
	.loc 1 90 0
	l32r	a4, .LC0
	l32i.n	a4, a4, 0
	s32i.n	a4, a6, 0
.L6:
	.loc 1 93 0
	l32r	a4, .LC0
	l32i.n	a11, a4, 0
	l8ui	a10, sp, 4
.LVL18:
	call8	ff_diskio_register_sdmmc
.LVL19:
	.loc 1 94 0
	l8ui	a4, sp, 4
	l32r	a6, .LC2
.LVL20:
	s8i	a4, a6, 0
	.loc 1 96 0
	addi	a4, a4, 48
	s8i	a4, sp, 5
	movi.n	a4, 0x3a
	s8i	a4, sp, 6
	movi.n	a4, 0
	s8i	a4, sp, 7
	.loc 1 99 0
	mov.n	a13, sp
	l32i.n	a12, a5, 4
	addi.n	a11, sp, 5
	mov.n	a10, a7
	call8	esp_vfs_fat_register
.LVL21:
	s32i.n	a10, sp, 32
.LVL22:
	.loc 1 100 0
	movi	a4, 0x103
	beq	a10, a4, .L7
	.loc 1 102 0
	bnez.n	a10, .L18
.L7:
	.loc 1 108 0
	movi.n	a12, 1
	addi.n	a11, sp, 5
	l32i.n	a10, sp, 0
.LVL23:
	call8	f_mount
.LVL24:
	mov.n	a4, a10
.LVL25:
	.loc 1 109 0
	beqz.n	a10, .L2
.LVL26:
.LBB5:
	.loc 1 111 0
	call8	esp_log_timestamp
.LVL27:
	l32r	a11, .LC4
	mov.n	a15, a4
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC6
	movi.n	a10, 2
	call8	esp_log_write
.LVL28:
	.loc 1 112 0
	movi.n	a6, 0xd
	bne	a4, a6, .L19
	.loc 1 112 0 is_stmt 0 discriminator 1
	l8ui	a4, a5, 0
.LVL29:
	beqz.n	a4, .L20
	.loc 1 115 0 is_stmt 1 discriminator 4
	call8	esp_log_timestamp
.LVL30:
	l32r	a11, .LC4
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC8
	movi.n	a10, 2
	call8	esp_log_write
.LVL31:
	.loc 1 116 0 discriminator 4
	l32r	a10, .LC9
	call8	malloc
.LVL32:
	mov.n	a4, a10
.LVL33:
	.loc 1 117 0 discriminator 4
	beqz.n	a10, .L21
	.loc 1 121 0
	movi	a6, 0x64
	s32i.n	a6, sp, 8
	movi.n	a6, 0
	s32i.n	a6, sp, 12
	s32i.n	a6, sp, 16
	s32i.n	a6, sp, 20
	.loc 1 122 0
	mov.n	a12, a10
	addi.n	a11, sp, 8
	l32r	a6, .LC2
	l8ui	a10, a6, 0
	call8	f_fdisk
.LVL34:
	.loc 1 123 0
	bnez.n	a10, .L22
	.loc 1 129 0
	l32r	a6, .LC0
	l32i.n	a6, a6, 0
	l32i	a8, a6, 96
	.loc 1 128 0
	l32i.n	a6, a5, 8
.LVL35:
.LBB6:
.LBB7:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/fatfs/src/vfs_fat_internal.h"
	.loc 2 26 0
	slli	a9, a8, 7
.LVL36:
	.loc 2 27 0
	maxu	a5, a8, a6
.LVL37:
	.loc 2 28 0
	minu	a5, a9, a5
.LVL38:
.LBE7:
.LBE6:
	.loc 1 131 0
	call8	esp_log_timestamp
.LVL39:
	l32r	a11, .LC4
	mov.n	a15, a5
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC11
	movi.n	a10, 2
	call8	esp_log_write
.LVL40:
	.loc 1 132 0
	l32r	a14, .LC9
	mov.n	a13, a4
	mov.n	a12, a5
	movi.n	a11, 7
	addi.n	a10, sp, 5
	call8	f_mkfs
.LVL41:
	.loc 1 133 0
	bnez.n	a10, .L23
	.loc 1 138 0
	mov.n	a10, a4
.LVL42:
	call8	free
.LVL43:
	.loc 1 140 0
	call8	esp_log_timestamp
.LVL44:
	l32r	a11, .LC4
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC13
	movi.n	a10, 2
	call8	esp_log_write
.LVL45:
	.loc 1 141 0
	movi.n	a12, 0
	addi.n	a11, sp, 5
	l32i.n	a10, sp, 0
	call8	f_mount
.LVL46:
	.loc 1 142 0
	bnez.n	a10, .L24
	retw.n
.LVL47:
.L19:
	.loc 1 110 0
	movi.n	a6, -1
	s32i.n	a6, sp, 32
.LBE5:
	.loc 1 38 0
	movi.n	a4, 0
.LVL48:
	j	.L3
.L20:
.LBB8:
	.loc 1 110 0
	movi.n	a2, -1
	s32i.n	a2, sp, 32
.LBE8:
	.loc 1 38 0
	movi.n	a4, 0
	j	.L3
.LVL49:
.L21:
.LBB9:
	.loc 1 118 0
	movi	a6, 0x101
	s32i.n	a6, sp, 32
	j	.L3
.LVL50:
.L22:
	.loc 1 124 0
	movi.n	a2, -1
	s32i.n	a2, sp, 32
	j	.L3
.LVL51:
.L23:
	.loc 1 134 0
	movi.n	a6, -1
.LVL52:
	s32i.n	a6, sp, 32
	j	.L3
.LVL53:
.L24:
	.loc 1 143 0
	movi.n	a2, -1
	s32i.n	a2, sp, 32
	.loc 1 139 0
	movi.n	a4, 0
	j	.L3
.LVL54:
.L14:
.LBE9:
	.loc 1 60 0
	movi	a4, 0x101
.LVL55:
	s32i.n	a4, sp, 32
	.loc 1 38 0
	movi.n	a4, 0
	j	.L3
.LVL56:
.L15:
	movi.n	a4, 0
.LVL57:
	j	.L3
.LVL58:
.L16:
	movi.n	a4, 0
.LVL59:
	j	.L3
.LVL60:
.L17:
	movi.n	a4, 0
	j	.L3
.LVL61:
.L18:
	movi.n	a4, 0
.LVL62:
.L3:
	.loc 1 151 0
	l32i.n	a10, a3, 36
	callx8	a10
.LVL63:
	.loc 1 152 0
	mov.n	a10, a4
	call8	free
.LVL64:
	.loc 1 153 0
	l32i.n	a2, sp, 0
	beqz.n	a2, .L9
	.loc 1 154 0
	movi.n	a12, 0
	addi.n	a11, sp, 5
	mov.n	a10, a12
	call8	f_mount
.LVL65:
.L9:
	.loc 1 156 0
	mov.n	a10, a7
	call8	esp_vfs_fat_unregister_path
.LVL66:
	.loc 1 157 0
	movi.n	a11, 0
	l8ui	a10, sp, 4
	call8	ff_diskio_register
.LVL67:
	.loc 1 158 0
	l32r	a2, .LC0
	l32i.n	a10, a2, 0
	call8	free
.LVL68:
	.loc 1 159 0
	movi.n	a3, 0
.LVL69:
	s32i.n	a3, a2, 0
	.loc 1 160 0
	l32i.n	a2, sp, 32
	retw.n
.LVL70:
.L10:
	.loc 1 42 0
	movi	a2, 0x103
	retw.n
.L11:
	.loc 1 49 0
	movi	a2, 0x101
	retw.n
.L12:
	movi	a2, 0x101
	retw.n
.L13:
	.loc 1 55 0
	movi	a2, 0x101
.LVL71:
.L2:
	.loc 1 161 0
	retw.n
.LFE17:
	.size	esp_vfs_fat_sdmmc_mount, .-esp_vfs_fat_sdmmc_mount
	.section	.text.esp_vfs_fat_sdmmc_unmount,"ax",@progbits
	.literal_position
	.literal .LC14, s_card
	.literal .LC15, s_pdrv
	.literal .LC16, s_base_path
	.align	4
	.global	esp_vfs_fat_sdmmc_unmount
	.type	esp_vfs_fat_sdmmc_unmount, @function
esp_vfs_fat_sdmmc_unmount:
.LFB18:
	.loc 1 164 0
	entry	sp, 48
.LCFI1:
	.loc 1 165 0
	l32r	a2, .LC14
	l32i.n	a2, a2, 0
	beqz.n	a2, .L27
	.loc 1 169 0
	l32r	a3, .LC15
	l8ui	a2, a3, 0
	addi	a2, a2, 48
	s8i	a2, sp, 0
	movi.n	a2, 0x3a
	s8i	a2, sp, 1
	movi.n	a2, 0
	s8i	a2, sp, 2
	.loc 1 170 0
	movi.n	a12, 0
	mov.n	a11, sp
	mov.n	a10, a12
	call8	f_mount
.LVL72:
	.loc 1 172 0
	l32r	a2, .LC14
	l32i.n	a4, a2, 0
	l32i.n	a5, a4, 36
.LVL73:
	.loc 1 173 0
	movi.n	a11, 0
	l8ui	a10, a3, 0
	call8	ff_diskio_register
.LVL74:
	.loc 1 174 0
	l32i.n	a10, a2, 0
	call8	free
.LVL75:
	.loc 1 175 0
	movi.n	a4, 0
	s32i.n	a4, a2, 0
	.loc 1 176 0
	callx8	a5
.LVL76:
	.loc 1 177 0
	l32r	a3, .LC16
	l32i.n	a10, a3, 0
	call8	esp_vfs_fat_unregister_path
.LVL77:
	mov.n	a2, a10
.LVL78:
	.loc 1 178 0
	l32i.n	a10, a3, 0
	call8	free
.LVL79:
	.loc 1 179 0
	s32i.n	a4, a3, 0
	.loc 1 180 0
	retw.n
.LVL80:
.L27:
	.loc 1 166 0
	movi	a2, 0x103
	.loc 1 181 0
	retw.n
.LFE18:
	.size	esp_vfs_fat_sdmmc_unmount, .-esp_vfs_fat_sdmmc_unmount
	.section	.bss.s_base_path,"aw",@nobits
	.align	4
	.type	s_base_path, @object
	.size	s_base_path, 4
s_base_path:
	.zero	4
	.section	.bss.s_pdrv,"aw",@nobits
	.type	s_pdrv, @object
	.size	s_pdrv, 1
s_pdrv:
	.zero	1
	.section	.bss.s_card,"aw",@nobits
	.align	4
	.type	s_card, @object
	.size	s_card, 4
s_card:
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
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI0-.LFB17
	.byte	0xe
	.uleb128 0x50
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
	.uleb128 0x30
	.align	4
.LEFDE2:
	.text
.Letext0:
	.file 3 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_err.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/portmacro.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/log/include/esp_log.h"
	.file 9 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/gpio.h"
	.file 10 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/queue.h"
	.file 11 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/semphr.h"
	.file 12 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/sdmmc_types.h"
	.file 13 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/sdmmc_host.h"
	.file 14 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/sdspi_host.h"
	.file 15 "D:/ESP32/esp-idf-v3.1-rc1/components/fatfs/src/integer.h"
	.file 16 "D:/ESP32/esp-idf-v3.1-rc1/components/fatfs/src/ff.h"
	.file 17 "D:/ESP32/esp-idf-v3.1-rc1/components/fatfs/src/esp_vfs_fat.h"
	.file 18 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdlib.h"
	.file 19 "D:/ESP32/esp-idf-v3.1-rc1/components/fatfs/src/diskio.h"
	.file 20 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/string.h"
	.file 21 "D:/ESP32/esp-idf-v3.1-rc1/components/sdmmc/include/sdmmc_cmd.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xe80
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF204
	.byte	0xc
	.4byte	.LASF205
	.4byte	.LASF206
	.4byte	.Ldebug_ranges0+0x20
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF3
	.byte	0x3
	.byte	0xd8
	.4byte	0x30
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x2
	.4byte	.LASF4
	.byte	0x4
	.byte	0x12
	.4byte	0x57
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x2
	.4byte	.LASF7
	.byte	0x4
	.byte	0x16
	.4byte	0x37
	.uleb128 0x2
	.4byte	.LASF8
	.byte	0x4
	.byte	0x19
	.4byte	0x3e
	.uleb128 0x2
	.4byte	.LASF9
	.byte	0x4
	.byte	0x1a
	.4byte	0x30
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb1
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0x6
	.byte	0x4
	.4byte	0xbe
	.uleb128 0x7
	.4byte	0xb1
	.uleb128 0x8
	.4byte	0xb1
	.4byte	0xd3
	.uleb128 0x9
	.4byte	0x9b
	.byte	0x7
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xd9
	.uleb128 0xa
	.uleb128 0x2
	.4byte	.LASF16
	.byte	0x5
	.byte	0x15
	.4byte	0x4c
	.uleb128 0x2
	.4byte	.LASF17
	.byte	0x5
	.byte	0x21
	.4byte	0x65
	.uleb128 0x2
	.4byte	.LASF18
	.byte	0x5
	.byte	0x2c
	.4byte	0x70
	.uleb128 0x2
	.4byte	.LASF19
	.byte	0x5
	.byte	0x2d
	.4byte	0x7b
	.uleb128 0xb
	.byte	0x4
	.4byte	0x30
	.byte	0x8
	.byte	0x1f
	.4byte	0x137
	.uleb128 0xc
	.4byte	.LASF20
	.byte	0
	.uleb128 0xc
	.4byte	.LASF21
	.byte	0x1
	.uleb128 0xc
	.4byte	.LASF22
	.byte	0x2
	.uleb128 0xc
	.4byte	.LASF23
	.byte	0x3
	.uleb128 0xc
	.4byte	.LASF24
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF25
	.byte	0x5
	.byte	0
	.uleb128 0x2
	.4byte	.LASF26
	.byte	0x6
	.byte	0x18
	.4byte	0xf0
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF27
	.uleb128 0x2
	.4byte	.LASF28
	.byte	0x7
	.byte	0x76
	.4byte	0xfb
	.uleb128 0xb
	.byte	0x4
	.4byte	0x30
	.byte	0x9
	.byte	0x82
	.4byte	0x233
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0
	.uleb128 0xc
	.4byte	.LASF30
	.byte	0x1
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0x2
	.uleb128 0xc
	.4byte	.LASF32
	.byte	0x3
	.uleb128 0xc
	.4byte	.LASF33
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF34
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF35
	.byte	0x6
	.uleb128 0xc
	.4byte	.LASF36
	.byte	0x7
	.uleb128 0xc
	.4byte	.LASF37
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF38
	.byte	0x9
	.uleb128 0xc
	.4byte	.LASF39
	.byte	0xa
	.uleb128 0xc
	.4byte	.LASF40
	.byte	0xb
	.uleb128 0xc
	.4byte	.LASF41
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF42
	.byte	0xd
	.uleb128 0xc
	.4byte	.LASF43
	.byte	0xe
	.uleb128 0xc
	.4byte	.LASF44
	.byte	0xf
	.uleb128 0xc
	.4byte	.LASF45
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF46
	.byte	0x11
	.uleb128 0xc
	.4byte	.LASF47
	.byte	0x12
	.uleb128 0xc
	.4byte	.LASF48
	.byte	0x13
	.uleb128 0xc
	.4byte	.LASF49
	.byte	0x15
	.uleb128 0xc
	.4byte	.LASF50
	.byte	0x16
	.uleb128 0xc
	.4byte	.LASF51
	.byte	0x17
	.uleb128 0xc
	.4byte	.LASF52
	.byte	0x19
	.uleb128 0xc
	.4byte	.LASF53
	.byte	0x1a
	.uleb128 0xc
	.4byte	.LASF54
	.byte	0x1b
	.uleb128 0xc
	.4byte	.LASF55
	.byte	0x20
	.uleb128 0xc
	.4byte	.LASF56
	.byte	0x21
	.uleb128 0xc
	.4byte	.LASF57
	.byte	0x22
	.uleb128 0xc
	.4byte	.LASF58
	.byte	0x23
	.uleb128 0xc
	.4byte	.LASF59
	.byte	0x24
	.uleb128 0xc
	.4byte	.LASF60
	.byte	0x25
	.uleb128 0xc
	.4byte	.LASF61
	.byte	0x26
	.uleb128 0xc
	.4byte	.LASF62
	.byte	0x27
	.uleb128 0xc
	.4byte	.LASF63
	.byte	0x28
	.byte	0
	.uleb128 0x2
	.4byte	.LASF64
	.byte	0x9
	.byte	0xaf
	.4byte	0x154
	.uleb128 0x2
	.4byte	.LASF65
	.byte	0xa
	.byte	0x58
	.4byte	0xa2
	.uleb128 0x2
	.4byte	.LASF66
	.byte	0xb
	.byte	0x4f
	.4byte	0x23e
	.uleb128 0xd
	.byte	0x1c
	.byte	0xc
	.byte	0x1d
	.4byte	0x2b1
	.uleb128 0xe
	.4byte	.LASF67
	.byte	0xc
	.byte	0x1e
	.4byte	0x3e
	.byte	0
	.uleb128 0xe
	.4byte	.LASF68
	.byte	0xc
	.byte	0x1f
	.4byte	0x3e
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF69
	.byte	0xc
	.byte	0x20
	.4byte	0x3e
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF70
	.byte	0xc
	.byte	0x21
	.4byte	0x3e
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF71
	.byte	0xc
	.byte	0x22
	.4byte	0x3e
	.byte	0x10
	.uleb128 0xe
	.4byte	.LASF72
	.byte	0xc
	.byte	0x23
	.4byte	0x3e
	.byte	0x14
	.uleb128 0xe
	.4byte	.LASF73
	.byte	0xc
	.byte	0x24
	.4byte	0x3e
	.byte	0x18
	.byte	0
	.uleb128 0x2
	.4byte	.LASF74
	.byte	0xc
	.byte	0x25
	.4byte	0x254
	.uleb128 0xd
	.byte	0x1c
	.byte	0xc
	.byte	0x2a
	.4byte	0x30d
	.uleb128 0xe
	.4byte	.LASF75
	.byte	0xc
	.byte	0x2b
	.4byte	0x3e
	.byte	0
	.uleb128 0xe
	.4byte	.LASF76
	.byte	0xc
	.byte	0x2c
	.4byte	0x3e
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF77
	.byte	0xc
	.byte	0x2d
	.4byte	0xc3
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF78
	.byte	0xc
	.byte	0x2e
	.4byte	0x3e
	.byte	0x10
	.uleb128 0xe
	.4byte	.LASF79
	.byte	0xc
	.byte	0x2f
	.4byte	0x3e
	.byte	0x14
	.uleb128 0xe
	.4byte	.LASF80
	.byte	0xc
	.byte	0x30
	.4byte	0x3e
	.byte	0x18
	.byte	0
	.uleb128 0x2
	.4byte	.LASF81
	.byte	0xc
	.byte	0x31
	.4byte	0x2bc
	.uleb128 0xd
	.byte	0x8
	.byte	0xc
	.byte	0x36
	.4byte	0x339
	.uleb128 0xe
	.4byte	.LASF82
	.byte	0xc
	.byte	0x37
	.4byte	0x3e
	.byte	0
	.uleb128 0xe
	.4byte	.LASF83
	.byte	0xc
	.byte	0x38
	.4byte	0x3e
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.4byte	.LASF84
	.byte	0xc
	.byte	0x39
	.4byte	0x318
	.uleb128 0x2
	.4byte	.LASF85
	.byte	0xc
	.byte	0x3e
	.4byte	0x34f
	.uleb128 0x8
	.4byte	0xfb
	.4byte	0x35f
	.uleb128 0x9
	.4byte	0x9b
	.byte	0x3
	.byte	0
	.uleb128 0xd
	.byte	0x30
	.byte	0xc
	.byte	0x4a
	.4byte	0x3d4
	.uleb128 0xe
	.4byte	.LASF86
	.byte	0xc
	.byte	0x4b
	.4byte	0xfb
	.byte	0
	.uleb128 0xf
	.string	"arg"
	.byte	0xc
	.byte	0x4c
	.4byte	0xfb
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF87
	.byte	0xc
	.byte	0x4d
	.4byte	0x344
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF88
	.byte	0xc
	.byte	0x4e
	.4byte	0xa2
	.byte	0x18
	.uleb128 0xe
	.4byte	.LASF89
	.byte	0xc
	.byte	0x4f
	.4byte	0x25
	.byte	0x1c
	.uleb128 0xe
	.4byte	.LASF90
	.byte	0xc
	.byte	0x50
	.4byte	0x25
	.byte	0x20
	.uleb128 0xe
	.4byte	.LASF91
	.byte	0xc
	.byte	0x51
	.4byte	0x3e
	.byte	0x24
	.uleb128 0xe
	.4byte	.LASF92
	.byte	0xc
	.byte	0x6b
	.4byte	0x137
	.byte	0x28
	.uleb128 0xe
	.4byte	.LASF93
	.byte	0xc
	.byte	0x6c
	.4byte	0x3e
	.byte	0x2c
	.byte	0
	.uleb128 0x2
	.4byte	.LASF94
	.byte	0xc
	.byte	0x6d
	.4byte	0x35f
	.uleb128 0xd
	.byte	0x34
	.byte	0xc
	.byte	0x75
	.4byte	0x484
	.uleb128 0xe
	.4byte	.LASF91
	.byte	0xc
	.byte	0x76
	.4byte	0xfb
	.byte	0
	.uleb128 0xe
	.4byte	.LASF95
	.byte	0xc
	.byte	0x7b
	.4byte	0x3e
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF96
	.byte	0xc
	.byte	0x7c
	.4byte	0x3e
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF97
	.byte	0xc
	.byte	0x80
	.4byte	0x484
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF98
	.byte	0xc
	.byte	0x81
	.4byte	0x490
	.byte	0x10
	.uleb128 0xe
	.4byte	.LASF99
	.byte	0xc
	.byte	0x82
	.4byte	0x4aa
	.byte	0x14
	.uleb128 0xe
	.4byte	.LASF100
	.byte	0xc
	.byte	0x83
	.4byte	0x4bf
	.byte	0x18
	.uleb128 0xe
	.4byte	.LASF101
	.byte	0xc
	.byte	0x84
	.4byte	0x4d9
	.byte	0x1c
	.uleb128 0xe
	.4byte	.LASF102
	.byte	0xc
	.byte	0x85
	.4byte	0x4f9
	.byte	0x20
	.uleb128 0xe
	.4byte	.LASF103
	.byte	0xc
	.byte	0x86
	.4byte	0x490
	.byte	0x24
	.uleb128 0xe
	.4byte	.LASF104
	.byte	0xc
	.byte	0x87
	.4byte	0x50e
	.byte	0x28
	.uleb128 0xe
	.4byte	.LASF105
	.byte	0xc
	.byte	0x88
	.4byte	0x528
	.byte	0x2c
	.uleb128 0xe
	.4byte	.LASF106
	.byte	0xc
	.byte	0x89
	.4byte	0x3e
	.byte	0x30
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.4byte	.LASF107
	.uleb128 0x10
	.4byte	0x137
	.uleb128 0x6
	.byte	0x4
	.4byte	0x48b
	.uleb128 0x11
	.4byte	0x137
	.4byte	0x4aa
	.uleb128 0x12
	.4byte	0x3e
	.uleb128 0x12
	.4byte	0x25
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x496
	.uleb128 0x11
	.4byte	0x25
	.4byte	0x4bf
	.uleb128 0x12
	.4byte	0x3e
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4b0
	.uleb128 0x11
	.4byte	0x137
	.4byte	0x4d9
	.uleb128 0x12
	.4byte	0x3e
	.uleb128 0x12
	.4byte	0xfb
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4c5
	.uleb128 0x11
	.4byte	0x137
	.4byte	0x4f3
	.uleb128 0x12
	.4byte	0x3e
	.uleb128 0x12
	.4byte	0x4f3
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3d4
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4df
	.uleb128 0x11
	.4byte	0x137
	.4byte	0x50e
	.uleb128 0x12
	.4byte	0x3e
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4ff
	.uleb128 0x11
	.4byte	0x137
	.4byte	0x528
	.uleb128 0x12
	.4byte	0x3e
	.uleb128 0x12
	.4byte	0x149
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x514
	.uleb128 0x2
	.4byte	.LASF108
	.byte	0xc
	.byte	0x8a
	.4byte	0x3df
	.uleb128 0xd
	.byte	0x80
	.byte	0xc
	.byte	0x8f
	.4byte	0x5c6
	.uleb128 0xe
	.4byte	.LASF109
	.byte	0xc
	.byte	0x90
	.4byte	0x52e
	.byte	0
	.uleb128 0xf
	.string	"ocr"
	.byte	0xc
	.byte	0x91
	.4byte	0xfb
	.byte	0x34
	.uleb128 0xf
	.string	"cid"
	.byte	0xc
	.byte	0x92
	.4byte	0x30d
	.byte	0x38
	.uleb128 0xf
	.string	"csd"
	.byte	0xc
	.byte	0x93
	.4byte	0x2b1
	.byte	0x54
	.uleb128 0xf
	.string	"scr"
	.byte	0xc
	.byte	0x94
	.4byte	0x339
	.byte	0x70
	.uleb128 0xf
	.string	"rca"
	.byte	0xc
	.byte	0x95
	.4byte	0xe5
	.byte	0x78
	.uleb128 0x13
	.4byte	.LASF110
	.byte	0xc
	.byte	0x96
	.4byte	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x78
	.uleb128 0x13
	.4byte	.LASF111
	.byte	0xc
	.byte	0x97
	.4byte	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x78
	.uleb128 0x13
	.4byte	.LASF112
	.byte	0xc
	.byte	0x98
	.4byte	0xfb
	.byte	0x4
	.byte	0x3
	.byte	0xb
	.byte	0x78
	.uleb128 0x13
	.4byte	.LASF113
	.byte	0xc
	.byte	0x99
	.4byte	0xfb
	.byte	0x4
	.byte	0x1b
	.byte	0x5
	.byte	0x7c
	.byte	0
	.uleb128 0x2
	.4byte	.LASF114
	.byte	0xc
	.byte	0x9a
	.4byte	0x539
	.uleb128 0xd
	.byte	0xc
	.byte	0xd
	.byte	0x36
	.4byte	0x5fe
	.uleb128 0xe
	.4byte	.LASF115
	.byte	0xd
	.byte	0x37
	.4byte	0x233
	.byte	0
	.uleb128 0xe
	.4byte	.LASF116
	.byte	0xd
	.byte	0x38
	.4byte	0x233
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF117
	.byte	0xd
	.byte	0x39
	.4byte	0xda
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.4byte	.LASF118
	.byte	0xd
	.byte	0x3a
	.4byte	0x5d1
	.uleb128 0xd
	.byte	0x1c
	.byte	0xe
	.byte	0x37
	.4byte	0x666
	.uleb128 0xe
	.4byte	.LASF119
	.byte	0xe
	.byte	0x38
	.4byte	0x233
	.byte	0
	.uleb128 0xe
	.4byte	.LASF120
	.byte	0xe
	.byte	0x39
	.4byte	0x233
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF121
	.byte	0xe
	.byte	0x3a
	.4byte	0x233
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF122
	.byte	0xe
	.byte	0x3b
	.4byte	0x233
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF115
	.byte	0xe
	.byte	0x3c
	.4byte	0x233
	.byte	0x10
	.uleb128 0xe
	.4byte	.LASF116
	.byte	0xe
	.byte	0x3d
	.4byte	0x233
	.byte	0x14
	.uleb128 0xe
	.4byte	.LASF123
	.byte	0xe
	.byte	0x3e
	.4byte	0x3e
	.byte	0x18
	.byte	0
	.uleb128 0x2
	.4byte	.LASF124
	.byte	0xe
	.byte	0x3f
	.4byte	0x609
	.uleb128 0x2
	.4byte	.LASF125
	.byte	0xf
	.byte	0x16
	.4byte	0x57
	.uleb128 0x2
	.4byte	.LASF126
	.byte	0xf
	.byte	0x1a
	.4byte	0x37
	.uleb128 0x2
	.4byte	.LASF127
	.byte	0xf
	.byte	0x1f
	.4byte	0xa4
	.uleb128 0x14
	.2byte	0x1038
	.byte	0x10
	.byte	0x5a
	.4byte	0x78b
	.uleb128 0xe
	.4byte	.LASF128
	.byte	0x10
	.byte	0x5b
	.4byte	0x671
	.byte	0
	.uleb128 0xe
	.4byte	.LASF129
	.byte	0x10
	.byte	0x5c
	.4byte	0x671
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF130
	.byte	0x10
	.byte	0x5d
	.4byte	0x671
	.byte	0x2
	.uleb128 0xe
	.4byte	.LASF131
	.byte	0x10
	.byte	0x5e
	.4byte	0x671
	.byte	0x3
	.uleb128 0xe
	.4byte	.LASF132
	.byte	0x10
	.byte	0x5f
	.4byte	0x671
	.byte	0x4
	.uleb128 0xf
	.string	"id"
	.byte	0x10
	.byte	0x60
	.4byte	0x67c
	.byte	0x6
	.uleb128 0xe
	.4byte	.LASF133
	.byte	0x10
	.byte	0x61
	.4byte	0x67c
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF134
	.byte	0x10
	.byte	0x62
	.4byte	0x67c
	.byte	0xa
	.uleb128 0xe
	.4byte	.LASF135
	.byte	0x10
	.byte	0x64
	.4byte	0x67c
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF136
	.byte	0x10
	.byte	0x6d
	.4byte	0x249
	.byte	0x10
	.uleb128 0xe
	.4byte	.LASF137
	.byte	0x10
	.byte	0x70
	.4byte	0x687
	.byte	0x14
	.uleb128 0xe
	.4byte	.LASF138
	.byte	0x10
	.byte	0x71
	.4byte	0x687
	.byte	0x18
	.uleb128 0xe
	.4byte	.LASF139
	.byte	0x10
	.byte	0x7b
	.4byte	0x687
	.byte	0x1c
	.uleb128 0xe
	.4byte	.LASF140
	.byte	0x10
	.byte	0x7c
	.4byte	0x687
	.byte	0x20
	.uleb128 0xe
	.4byte	.LASF141
	.byte	0x10
	.byte	0x7d
	.4byte	0x687
	.byte	0x24
	.uleb128 0xe
	.4byte	.LASF142
	.byte	0x10
	.byte	0x7e
	.4byte	0x687
	.byte	0x28
	.uleb128 0xe
	.4byte	.LASF143
	.byte	0x10
	.byte	0x7f
	.4byte	0x687
	.byte	0x2c
	.uleb128 0xe
	.4byte	.LASF144
	.byte	0x10
	.byte	0x80
	.4byte	0x687
	.byte	0x30
	.uleb128 0xe
	.4byte	.LASF145
	.byte	0x10
	.byte	0x81
	.4byte	0x687
	.byte	0x34
	.uleb128 0xf
	.string	"win"
	.byte	0x10
	.byte	0x82
	.4byte	0x78b
	.byte	0x38
	.byte	0
	.uleb128 0x8
	.4byte	0x671
	.4byte	0x79c
	.uleb128 0x15
	.4byte	0x9b
	.2byte	0xfff
	.byte	0
	.uleb128 0x2
	.4byte	.LASF146
	.byte	0x10
	.byte	0x83
	.4byte	0x692
	.uleb128 0x6
	.byte	0x4
	.4byte	0x79c
	.uleb128 0xb
	.byte	0x4
	.4byte	0x30
	.byte	0x10
	.byte	0xdb
	.4byte	0x832
	.uleb128 0xc
	.4byte	.LASF147
	.byte	0
	.uleb128 0xc
	.4byte	.LASF148
	.byte	0x1
	.uleb128 0xc
	.4byte	.LASF149
	.byte	0x2
	.uleb128 0xc
	.4byte	.LASF150
	.byte	0x3
	.uleb128 0xc
	.4byte	.LASF151
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF152
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF153
	.byte	0x6
	.uleb128 0xc
	.4byte	.LASF154
	.byte	0x7
	.uleb128 0xc
	.4byte	.LASF155
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF156
	.byte	0x9
	.uleb128 0xc
	.4byte	.LASF157
	.byte	0xa
	.uleb128 0xc
	.4byte	.LASF158
	.byte	0xb
	.uleb128 0xc
	.4byte	.LASF159
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF160
	.byte	0xd
	.uleb128 0xc
	.4byte	.LASF161
	.byte	0xe
	.uleb128 0xc
	.4byte	.LASF162
	.byte	0xf
	.uleb128 0xc
	.4byte	.LASF163
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF164
	.byte	0x11
	.uleb128 0xc
	.4byte	.LASF165
	.byte	0x12
	.uleb128 0xc
	.4byte	.LASF166
	.byte	0x13
	.byte	0
	.uleb128 0x2
	.4byte	.LASF167
	.byte	0x10
	.byte	0xf0
	.4byte	0x7ad
	.uleb128 0xd
	.byte	0xc
	.byte	0x11
	.byte	0x5a
	.4byte	0x86a
	.uleb128 0xe
	.4byte	.LASF168
	.byte	0x11
	.byte	0x5f
	.4byte	0x142
	.byte	0
	.uleb128 0xe
	.4byte	.LASF169
	.byte	0x11
	.byte	0x60
	.4byte	0x3e
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF170
	.byte	0x11
	.byte	0x6e
	.4byte	0x25
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.4byte	.LASF171
	.byte	0x11
	.byte	0x6f
	.4byte	0x83d
	.uleb128 0x16
	.4byte	.LASF207
	.byte	0x2
	.byte	0x15
	.4byte	0x25
	.byte	0x3
	.4byte	0x8bd
	.uleb128 0x17
	.4byte	.LASF70
	.byte	0x2
	.byte	0x16
	.4byte	0x25
	.uleb128 0x17
	.4byte	.LASF172
	.byte	0x2
	.byte	0x16
	.4byte	0x25
	.uleb128 0x18
	.4byte	.LASF173
	.byte	0x2
	.byte	0x18
	.4byte	0x25
	.uleb128 0x18
	.4byte	.LASF174
	.byte	0x2
	.byte	0x19
	.4byte	0x8bd
	.uleb128 0x18
	.4byte	.LASF175
	.byte	0x2
	.byte	0x1a
	.4byte	0x8bd
	.byte	0
	.uleb128 0x7
	.4byte	0x25
	.uleb128 0x19
	.4byte	.LASF208
	.byte	0x1
	.byte	0x1f
	.4byte	0x137
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc99
	.uleb128 0x1a
	.4byte	.LASF176
	.byte	0x1
	.byte	0x1f
	.4byte	0xb8
	.4byte	.LLST0
	.uleb128 0x1a
	.4byte	.LASF177
	.byte	0x1
	.byte	0x20
	.4byte	0xc99
	.4byte	.LLST1
	.uleb128 0x1a
	.4byte	.LASF178
	.byte	0x1
	.byte	0x21
	.4byte	0xd3
	.4byte	.LLST2
	.uleb128 0x1a
	.4byte	.LASF179
	.byte	0x1
	.byte	0x22
	.4byte	0xca4
	.4byte	.LLST3
	.uleb128 0x1a
	.4byte	.LASF180
	.byte	0x1
	.byte	0x23
	.4byte	0xcaf
	.4byte	.LLST4
	.uleb128 0x1b
	.4byte	.LASF181
	.byte	0x1
	.byte	0x25
	.4byte	0x8bd
	.2byte	0x1000
	.uleb128 0x1c
	.4byte	.LASF182
	.byte	0x1
	.byte	0x26
	.4byte	0xa2
	.4byte	.LLST5
	.uleb128 0x1d
	.string	"fs"
	.byte	0x1
	.byte	0x27
	.4byte	0x7a7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1e
	.4byte	.LASF129
	.byte	0x1
	.byte	0x2e
	.4byte	0x671
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x1f
	.string	"err"
	.byte	0x1
	.byte	0x39
	.4byte	0x137
	.4byte	.LLST6
	.uleb128 0x20
	.4byte	.LASF209
	.byte	0x1
	.byte	0x96
	.4byte	.L3
	.uleb128 0x1d
	.string	"drv"
	.byte	0x1
	.byte	0x60
	.4byte	0xcbb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -75
	.uleb128 0x1f
	.string	"res"
	.byte	0x1
	.byte	0x6c
	.4byte	0x832
	.4byte	.LLST7
	.uleb128 0x21
	.4byte	.Ldebug_ranges0+0
	.4byte	0xb77
	.uleb128 0x1e
	.4byte	.LASF183
	.byte	0x1
	.byte	0x79
	.4byte	0xccb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1e
	.4byte	.LASF173
	.byte	0x1
	.byte	0x80
	.4byte	0x25
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x22
	.4byte	0x875
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.byte	0x1
	.byte	0x80
	.4byte	0xa07
	.uleb128 0x23
	.4byte	0x890
	.4byte	.LLST8
	.uleb128 0x23
	.4byte	0x885
	.4byte	.LLST9
	.uleb128 0x24
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.uleb128 0x25
	.4byte	0x89b
	.4byte	.LLST10
	.uleb128 0x25
	.4byte	0x8a6
	.4byte	.LLST11
	.uleb128 0x25
	.4byte	0x8b1
	.4byte	.LLST12
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL27
	.4byte	0xdd0
	.uleb128 0x27
	.4byte	.LVL28
	.4byte	0xddb
	.4byte	0xa44
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL30
	.4byte	0xdd0
	.uleb128 0x27
	.4byte	.LVL31
	.4byte	0xddb
	.4byte	0xa7b
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x27
	.4byte	.LVL32
	.4byte	0xde6
	.4byte	0xa90
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1000
	.byte	0
	.uleb128 0x27
	.4byte	.LVL34
	.4byte	0xdf1
	.4byte	0xaab
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL39
	.4byte	0xdd0
	.uleb128 0x27
	.4byte	.LVL40
	.4byte	0xddb
	.4byte	0xae8
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL41
	.4byte	0xdfd
	.4byte	0xb15
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -75
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x37
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1000
	.byte	0
	.uleb128 0x27
	.4byte	.LVL43
	.4byte	0xe09
	.4byte	0xb29
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL44
	.4byte	0xdd0
	.uleb128 0x27
	.4byte	.LVL45
	.4byte	0xddb
	.4byte	0xb60
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC12
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x29
	.4byte	.LVL46
	.4byte	0xe14
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -75
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL3
	.4byte	0xe20
	.4byte	0xb8c
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.byte	0
	.uleb128 0x27
	.4byte	.LVL4
	.4byte	0xe2b
	.4byte	0xba0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL6
	.4byte	0xde6
	.4byte	0xbb4
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x80
	.byte	0
	.uleb128 0x27
	.4byte	.LVL10
	.4byte	0xe36
	.4byte	0xbc8
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL13
	.4byte	0xe41
	.4byte	0xbdc
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL16
	.4byte	0xe4c
	.4byte	0xbf0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL19
	.4byte	0xe57
	.uleb128 0x27
	.4byte	.LVL21
	.4byte	0xe62
	.4byte	0xc1b
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -75
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x27
	.4byte	.LVL24
	.4byte	0xe14
	.4byte	0xc35
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -75
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x27
	.4byte	.LVL64
	.4byte	0xe09
	.4byte	0xc49
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL65
	.4byte	0xe14
	.4byte	0xc68
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -75
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x27
	.4byte	.LVL66
	.4byte	0xe6d
	.4byte	0xc7c
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL67
	.4byte	0xe78
	.4byte	0xc8f
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x26
	.4byte	.LVL68
	.4byte	0xe09
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xc9f
	.uleb128 0x7
	.4byte	0x52e
	.uleb128 0x6
	.byte	0x4
	.4byte	0xcaa
	.uleb128 0x7
	.4byte	0x86a
	.uleb128 0x6
	.byte	0x4
	.4byte	0xcb5
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5c6
	.uleb128 0x8
	.4byte	0xb1
	.4byte	0xccb
	.uleb128 0x9
	.4byte	0x9b
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.4byte	0x687
	.4byte	0xcdb
	.uleb128 0x9
	.4byte	0x9b
	.byte	0x3
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF210
	.byte	0x1
	.byte	0xa3
	.4byte	0x137
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd75
	.uleb128 0x1d
	.string	"drv"
	.byte	0x1
	.byte	0xa9
	.4byte	0xcbb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1c
	.4byte	.LASF184
	.byte	0x1
	.byte	0xac
	.4byte	0xd80
	.4byte	.LLST13
	.uleb128 0x1f
	.string	"err"
	.byte	0x1
	.byte	0xb1
	.4byte	0x137
	.4byte	.LLST14
	.uleb128 0x27
	.4byte	.LVL72
	.4byte	0xe14
	.4byte	0xd3e
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x27
	.4byte	.LVL74
	.4byte	0xe78
	.4byte	0xd51
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x26
	.4byte	.LVL75
	.4byte	0xe09
	.uleb128 0x2b
	.4byte	.LVL76
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x26
	.4byte	.LVL77
	.4byte	0xe6d
	.uleb128 0x26
	.4byte	.LVL79
	.4byte	0xe09
	.byte	0
	.uleb128 0x2c
	.4byte	0x137
	.4byte	0xd80
	.uleb128 0x2d
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xd75
	.uleb128 0x1d
	.string	"TAG"
	.byte	0x1
	.byte	0x1a
	.4byte	0xd98
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC3
	.byte	0x9f
	.uleb128 0x7
	.4byte	0xb8
	.uleb128 0x1e
	.4byte	.LASF185
	.byte	0x1
	.byte	0x1b
	.4byte	0xcb5
	.uleb128 0x5
	.byte	0x3
	.4byte	s_card
	.uleb128 0x1e
	.4byte	.LASF186
	.byte	0x1
	.byte	0x1c
	.4byte	0xda
	.uleb128 0x5
	.byte	0x3
	.4byte	s_pdrv
	.uleb128 0x1e
	.4byte	.LASF187
	.byte	0x1
	.byte	0x1d
	.4byte	0xab
	.uleb128 0x5
	.byte	0x3
	.4byte	s_base_path
	.uleb128 0x2e
	.4byte	.LASF188
	.4byte	.LASF188
	.byte	0x8
	.byte	0x57
	.uleb128 0x2e
	.4byte	.LASF189
	.4byte	.LASF189
	.byte	0x8
	.byte	0x6b
	.uleb128 0x2e
	.4byte	.LASF190
	.4byte	.LASF190
	.byte	0x12
	.byte	0x65
	.uleb128 0x2f
	.4byte	.LASF191
	.4byte	.LASF191
	.byte	0x10
	.2byte	0x113
	.uleb128 0x2f
	.4byte	.LASF192
	.4byte	.LASF192
	.byte	0x10
	.2byte	0x112
	.uleb128 0x2e
	.4byte	.LASF193
	.4byte	.LASF193
	.byte	0x12
	.byte	0x5a
	.uleb128 0x2f
	.4byte	.LASF194
	.4byte	.LASF194
	.byte	0x10
	.2byte	0x111
	.uleb128 0x2e
	.4byte	.LASF195
	.4byte	.LASF195
	.byte	0x13
	.byte	0x5a
	.uleb128 0x2e
	.4byte	.LASF196
	.4byte	.LASF196
	.byte	0x14
	.byte	0x50
	.uleb128 0x2e
	.4byte	.LASF197
	.4byte	.LASF197
	.byte	0xe
	.byte	0x6a
	.uleb128 0x2e
	.4byte	.LASF198
	.4byte	.LASF198
	.byte	0xd
	.byte	0x67
	.uleb128 0x2e
	.4byte	.LASF199
	.4byte	.LASF199
	.byte	0x15
	.byte	0x26
	.uleb128 0x2e
	.4byte	.LASF200
	.4byte	.LASF200
	.byte	0x13
	.byte	0x50
	.uleb128 0x2e
	.4byte	.LASF201
	.4byte	.LASF201
	.byte	0x11
	.byte	0x33
	.uleb128 0x2e
	.4byte	.LASF202
	.4byte	.LASF202
	.byte	0x11
	.byte	0x54
	.uleb128 0x2e
	.4byte	.LASF203
	.4byte	.LASF203
	.byte	0x13
	.byte	0x46
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
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1c
	.uleb128 0x5
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
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0xb
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
	.uleb128 0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.4byte	.LFE17
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL69
	.4byte	.LVL70
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL70
	.4byte	.LFE17
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL15
	.4byte	.LVL54
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL56
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL57
	.4byte	.LVL70
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL70
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL71
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL37
	.4byte	.LVL47
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL51
	.4byte	.LVL54
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL54
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL62
	.4byte	.LVL70
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL70
	.4byte	.LFE17
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL0
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL20
	.4byte	.LVL54
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	.LVL54
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL61
	.4byte	.LVL70
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	.LVL70
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL71
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL1
	.4byte	.LVL33
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL43
	.4byte	.LVL49
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL49
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL53
	.4byte	.LVL62
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL62
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL70
	.4byte	.LFE17
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL5
	.4byte	.LVL8
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL9
	.4byte	.LVL11
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL12
	.4byte	.LVL17
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL18
	.4byte	.LVL22
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL23
	.4byte	.LVL26
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL26
	.4byte	.LVL54
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL54
	.4byte	.LVL56
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL56
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL59
	.4byte	.LVL60
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL60
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL62
	.4byte	.LVL70
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL25
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL34
	.4byte	.LVL39-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL50
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL35
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL35
	.4byte	.LVL39-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL35
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL37
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL51
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL35
	.4byte	.LVL47
	.2byte	0x3
	.byte	0x8
	.byte	0x80
	.byte	0x9f
	.4byte	.LVL51
	.4byte	.LVL54
	.2byte	0x3
	.byte	0x8
	.byte	0x80
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL36
	.4byte	.LVL39-1
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL73
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL78
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x52
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
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB5
	.4byte	.LBE5
	.4byte	.LBB8
	.4byte	.LBE8
	.4byte	.LBB9
	.4byte	.LBE9
	.4byte	0
	.4byte	0
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF56:
	.string	"GPIO_NUM_33"
.LASF115:
	.string	"gpio_cd"
.LASF69:
	.string	"capacity"
.LASF59:
	.string	"GPIO_NUM_36"
.LASF60:
	.string	"GPIO_NUM_37"
.LASF190:
	.string	"malloc"
.LASF62:
	.string	"GPIO_NUM_39"
.LASF124:
	.string	"sdspi_slot_config_t"
.LASF135:
	.string	"ssize"
.LASF3:
	.string	"size_t"
.LASF128:
	.string	"fs_type"
.LASF122:
	.string	"gpio_cs"
.LASF182:
	.string	"workbuf"
.LASF26:
	.string	"esp_err_t"
.LASF4:
	.string	"__uint8_t"
.LASF78:
	.string	"revision"
.LASF67:
	.string	"csd_ver"
.LASF178:
	.string	"slot_config"
.LASF98:
	.string	"init"
.LASF12:
	.string	"long int"
.LASF173:
	.string	"alloc_unit_size"
.LASF11:
	.string	"long long unsigned int"
.LASF189:
	.string	"esp_log_write"
.LASF202:
	.string	"esp_vfs_fat_unregister_path"
.LASF72:
	.string	"card_command_class"
.LASF65:
	.string	"QueueHandle_t"
.LASF199:
	.string	"sdmmc_card_init"
.LASF30:
	.string	"GPIO_NUM_1"
.LASF193:
	.string	"free"
.LASF70:
	.string	"sector_size"
.LASF165:
	.string	"FR_TOO_MANY_OPEN_FILES"
.LASF32:
	.string	"GPIO_NUM_3"
.LASF87:
	.string	"response"
.LASF33:
	.string	"GPIO_NUM_4"
.LASF24:
	.string	"ESP_LOG_DEBUG"
.LASF10:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF121:
	.string	"gpio_sck"
.LASF136:
	.string	"sobj"
.LASF171:
	.string	"esp_vfs_fat_mount_config_t"
.LASF166:
	.string	"FR_INVALID_PARAMETER"
.LASF140:
	.string	"fsize"
.LASF197:
	.string	"sdspi_host_init_slot"
.LASF207:
	.string	"esp_vfs_fat_get_allocation_unit_size"
.LASF139:
	.string	"n_fatent"
.LASF58:
	.string	"GPIO_NUM_35"
.LASF156:
	.string	"FR_INVALID_OBJECT"
.LASF102:
	.string	"do_transaction"
.LASF71:
	.string	"read_block_len"
.LASF172:
	.string	"requested_size"
.LASF74:
	.string	"sdmmc_csd_t"
.LASF192:
	.string	"f_mkfs"
.LASF48:
	.string	"GPIO_NUM_19"
.LASF64:
	.string	"gpio_num_t"
.LASF160:
	.string	"FR_NO_FILESYSTEM"
.LASF17:
	.string	"uint16_t"
.LASF186:
	.string	"s_pdrv"
.LASF191:
	.string	"f_fdisk"
.LASF142:
	.string	"fatbase"
.LASF127:
	.string	"DWORD"
.LASF180:
	.string	"out_card"
.LASF75:
	.string	"mfg_id"
.LASF9:
	.string	"__uint32_t"
.LASF134:
	.string	"csize"
.LASF113:
	.string	"reserved"
.LASF138:
	.string	"free_clst"
.LASF125:
	.string	"BYTE"
.LASF118:
	.string	"sdmmc_slot_config_t"
.LASF81:
	.string	"sdmmc_cid_t"
.LASF181:
	.string	"workbuf_size"
.LASF109:
	.string	"host"
.LASF164:
	.string	"FR_NOT_ENOUGH_CORE"
.LASF0:
	.string	"unsigned int"
.LASF170:
	.string	"allocation_unit_size"
.LASF183:
	.string	"plist"
.LASF169:
	.string	"max_files"
.LASF14:
	.string	"long unsigned int"
.LASF112:
	.string	"num_io_functions"
.LASF203:
	.string	"ff_diskio_register"
.LASF77:
	.string	"name"
.LASF29:
	.string	"GPIO_NUM_0"
.LASF117:
	.string	"width"
.LASF31:
	.string	"GPIO_NUM_2"
.LASF88:
	.string	"data"
.LASF104:
	.string	"io_int_enable"
.LASF34:
	.string	"GPIO_NUM_5"
.LASF1:
	.string	"short unsigned int"
.LASF144:
	.string	"database"
.LASF37:
	.string	"GPIO_NUM_8"
.LASF38:
	.string	"GPIO_NUM_9"
.LASF101:
	.string	"set_card_clk"
.LASF176:
	.string	"base_path"
.LASF114:
	.string	"sdmmc_card_t"
.LASF129:
	.string	"pdrv"
.LASF149:
	.string	"FR_INT_ERR"
.LASF95:
	.string	"slot"
.LASF148:
	.string	"FR_DISK_ERR"
.LASF145:
	.string	"winsect"
.LASF174:
	.string	"max_sectors_per_cylinder"
.LASF106:
	.string	"command_timeout_ms"
.LASF6:
	.string	"short int"
.LASF126:
	.string	"WORD"
.LASF157:
	.string	"FR_WRITE_PROTECTED"
.LASF209:
	.string	"fail"
.LASF185:
	.string	"s_card"
.LASF146:
	.string	"FATFS"
.LASF61:
	.string	"GPIO_NUM_38"
.LASF23:
	.string	"ESP_LOG_INFO"
.LASF110:
	.string	"is_mem"
.LASF90:
	.string	"blklen"
.LASF84:
	.string	"sdmmc_scr_t"
.LASF13:
	.string	"sizetype"
.LASF179:
	.string	"mount_config"
.LASF89:
	.string	"datalen"
.LASF63:
	.string	"GPIO_NUM_MAX"
.LASF76:
	.string	"oem_id"
.LASF162:
	.string	"FR_TIMEOUT"
.LASF28:
	.string	"TickType_t"
.LASF73:
	.string	"tr_speed"
.LASF143:
	.string	"dirbase"
.LASF68:
	.string	"mmc_ver"
.LASF151:
	.string	"FR_NO_FILE"
.LASF159:
	.string	"FR_NOT_ENABLED"
.LASF168:
	.string	"format_if_mount_failed"
.LASF137:
	.string	"last_clst"
.LASF107:
	.string	"float"
.LASF92:
	.string	"error"
.LASF103:
	.string	"deinit"
.LASF93:
	.string	"timeout_ms"
.LASF194:
	.string	"f_mount"
.LASF208:
	.string	"esp_vfs_fat_sdmmc_mount"
.LASF27:
	.string	"_Bool"
.LASF18:
	.string	"int32_t"
.LASF5:
	.string	"unsigned char"
.LASF116:
	.string	"gpio_wp"
.LASF141:
	.string	"volbase"
.LASF119:
	.string	"gpio_miso"
.LASF188:
	.string	"esp_log_timestamp"
.LASF21:
	.string	"ESP_LOG_ERROR"
.LASF158:
	.string	"FR_INVALID_DRIVE"
.LASF131:
	.string	"wflag"
.LASF154:
	.string	"FR_DENIED"
.LASF155:
	.string	"FR_EXIST"
.LASF161:
	.string	"FR_MKFS_ABORTED"
.LASF99:
	.string	"set_bus_width"
.LASF201:
	.string	"esp_vfs_fat_register"
.LASF163:
	.string	"FR_LOCKED"
.LASF55:
	.string	"GPIO_NUM_32"
.LASF57:
	.string	"GPIO_NUM_34"
.LASF39:
	.string	"GPIO_NUM_10"
.LASF40:
	.string	"GPIO_NUM_11"
.LASF41:
	.string	"GPIO_NUM_12"
.LASF42:
	.string	"GPIO_NUM_13"
.LASF43:
	.string	"GPIO_NUM_14"
.LASF44:
	.string	"GPIO_NUM_15"
.LASF45:
	.string	"GPIO_NUM_16"
.LASF46:
	.string	"GPIO_NUM_17"
.LASF47:
	.string	"GPIO_NUM_18"
.LASF85:
	.string	"sdmmc_response_t"
.LASF15:
	.string	"char"
.LASF210:
	.string	"esp_vfs_fat_sdmmc_unmount"
.LASF66:
	.string	"SemaphoreHandle_t"
.LASF108:
	.string	"sdmmc_host_t"
.LASF25:
	.string	"ESP_LOG_VERBOSE"
.LASF35:
	.string	"GPIO_NUM_6"
.LASF36:
	.string	"GPIO_NUM_7"
.LASF7:
	.string	"__uint16_t"
.LASF147:
	.string	"FR_OK"
.LASF20:
	.string	"ESP_LOG_NONE"
.LASF205:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/fatfs/src/vfs_fat_sdmmc.c"
.LASF8:
	.string	"__int32_t"
.LASF150:
	.string	"FR_NOT_READY"
.LASF94:
	.string	"sdmmc_command_t"
.LASF123:
	.string	"dma_channel"
.LASF133:
	.string	"n_rootdir"
.LASF120:
	.string	"gpio_mosi"
.LASF153:
	.string	"FR_INVALID_NAME"
.LASF79:
	.string	"serial"
.LASF80:
	.string	"date"
.LASF132:
	.string	"fsi_flag"
.LASF187:
	.string	"s_base_path"
.LASF19:
	.string	"uint32_t"
.LASF49:
	.string	"GPIO_NUM_21"
.LASF50:
	.string	"GPIO_NUM_22"
.LASF51:
	.string	"GPIO_NUM_23"
.LASF52:
	.string	"GPIO_NUM_25"
.LASF53:
	.string	"GPIO_NUM_26"
.LASF54:
	.string	"GPIO_NUM_27"
.LASF111:
	.string	"is_sdio"
.LASF196:
	.string	"strdup"
.LASF175:
	.string	"max_size"
.LASF16:
	.string	"uint8_t"
.LASF91:
	.string	"flags"
.LASF184:
	.string	"host_deinit"
.LASF97:
	.string	"io_voltage"
.LASF105:
	.string	"io_int_wait"
.LASF130:
	.string	"n_fats"
.LASF167:
	.string	"FRESULT"
.LASF204:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF177:
	.string	"host_config"
.LASF83:
	.string	"bus_width"
.LASF152:
	.string	"FR_NO_PATH"
.LASF198:
	.string	"sdmmc_host_init_slot"
.LASF206:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\fatfs"
.LASF96:
	.string	"max_freq_khz"
.LASF200:
	.string	"ff_diskio_register_sdmmc"
.LASF100:
	.string	"get_bus_width"
.LASF82:
	.string	"sd_spec"
.LASF22:
	.string	"ESP_LOG_WARN"
.LASF195:
	.string	"ff_diskio_get_drive"
.LASF86:
	.string	"opcode"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
