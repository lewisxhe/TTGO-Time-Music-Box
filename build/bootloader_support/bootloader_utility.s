	.file	"bootloader_utility.c"
	.text
.Ltext0:
	.section	.text.index_to_partition,"ax",@progbits
	.align	4
	.type	index_to_partition, @function
index_to_partition:
.LFB22:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/bootloader_utility.c"
	.loc 1 157 0
.LVL0:
	entry	sp, 48
.LCFI0:
	.loc 1 158 0
	bnei	a3, -1, .L2
	.loc 1 159 0
	l32i.n	a3, a2, 8
.LVL1:
	l32i.n	a2, a2, 12
.LVL2:
	s32i.n	a3, sp, 0
	s32i.n	a2, sp, 4
	j	.L3
.LVL3:
.L2:
	.loc 1 162 0
	movi.n	a8, -2
	bne	a3, a8, .L4
	.loc 1 163 0
	l32i.n	a3, a2, 16
.LVL4:
	l32i.n	a2, a2, 20
.LVL5:
	s32i.n	a3, sp, 0
	s32i.n	a2, sp, 4
	j	.L3
.LVL6:
.L4:
	.loc 1 166 0
	movi.n	a8, 0xf
	bltu	a8, a3, .L5
	.loc 1 166 0 is_stmt 0 discriminator 1
	l32i	a8, a2, 152
	bgeu	a3, a8, .L5
	.loc 1 167 0 is_stmt 1
	addi.n	a3, a3, 2
.LVL7:
	addx8	a3, a3, a2
.LVL8:
	l32i.n	a8, a3, 8
	l32i.n	a2, a3, 12
.LVL9:
	s32i.n	a8, sp, 0
	s32i.n	a2, sp, 4
	j	.L3
.LVL10:
.L5:
	.loc 1 171 0
	movi.n	a2, 0
.LVL11:
	s32i.n	a2, sp, 0
	s32i.n	a2, sp, 4
.LVL12:
.L3:
	.loc 1 172 0
	l32i.n	a2, sp, 0
	l32i.n	a3, sp, 4
	retw.n
.LFE22:
	.size	index_to_partition, .-index_to_partition
	.section	.text.try_load_partition,"ax",@progbits
	.align	4
	.type	try_load_partition, @function
try_load_partition:
.LFB25:
	.loc 1 261 0
.LVL13:
	entry	sp, 32
.LCFI1:
	.loc 1 275 0
	movi.n	a2, 0
.LVL14:
	retw.n
.LFE25:
	.size	try_load_partition, .-try_load_partition
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC0:
	.string	" is not bootable"
	.align	4
.LC2:
	.string	"boot"
	.align	4
.LC4:
	.string	"\033[0;31mE (%d) %s: Factory app partition%s\033[0m\n"
	.align	4
.LC6:
	.string	"\033[0;31mE (%d) %s: Factory test app partition%s\033[0m\n"
	.align	4
.LC8:
	.string	"\033[0;31mE (%d) %s: OTA app partition slot %d%s\033[0m\n"
	.section	.text.log_invalid_app_partition,"ax",@progbits
	.literal_position
	.literal .LC1, .LC0
	.literal .LC3, .LC2
	.literal .LC5, .LC4
	.literal .LC7, .LC6
	.literal .LC9, .LC8
	.align	4
	.type	log_invalid_app_partition, @function
log_invalid_app_partition:
.LFB23:
	.loc 1 175 0
.LVL15:
	entry	sp, 48
.LCFI2:
.LVL16:
	.loc 1 177 0
	movi.n	a8, -2
	beq	a2, a8, .L9
	bnei	a2, -1, .L12
	.loc 1 179 0 discriminator 2
	call8	esp_log_timestamp
.LVL17:
	l32r	a11, .LC3
	l32r	a15, .LC1
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC5
	movi.n	a10, 1
	call8	esp_log_write
.LVL18:
	.loc 1 180 0 discriminator 2
	retw.n
.L9:
	.loc 1 182 0 discriminator 2
	call8	esp_log_timestamp
.LVL19:
	l32r	a11, .LC3
	l32r	a15, .LC1
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC7
	movi.n	a10, 1
	call8	esp_log_write
.LVL20:
	.loc 1 183 0 discriminator 2
	retw.n
.L12:
	.loc 1 185 0 discriminator 2
	call8	esp_log_timestamp
.LVL21:
	l32r	a11, .LC3
	l32r	a8, .LC1
	s32i.n	a8, sp, 0
	mov.n	a15, a2
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC9
	movi.n	a10, 1
	call8	esp_log_write
.LVL22:
	retw.n
.LFE23:
	.size	log_invalid_app_partition, .-log_invalid_app_partition
	.section	.text.set_cache_and_start_app,"ax",@progbits
	.literal_position
	.literal .LC10, 1072758784
	.literal .LC11, 65535
	.literal .LC12, -65536
	.literal .LC13, 1072693316
	.literal .LC14, 1072693340
	.align	4
	.type	set_cache_and_start_app, @function
set_cache_and_start_app:
.LFB29:
	.loc 1 427 0
.LVL23:
	entry	sp, 48
.LCFI3:
	s32i.n	a7, sp, 0
.LVL24:
.LBB21:
.LBB22:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/cache.h"
	.loc 2 165 0
	call8	esp_dport_access_stall_other_cpu_start
.LVL25:
	.loc 2 166 0
	movi.n	a10, 0
	call8	Cache_Read_Disable_rom
.LVL26:
	.loc 2 167 0
	call8	esp_dport_access_stall_other_cpu_end
.LVL27:
.LBE22:
.LBE21:
.LBB23:
.LBB24:
	.loc 2 149 0
	call8	esp_dport_access_stall_other_cpu_start
.LVL28:
	.loc 2 150 0
	movi.n	a10, 0
	call8	Cache_Flush_rom
.LVL29:
	.loc 2 151 0
	call8	esp_dport_access_stall_other_cpu_end
.LVL30:
.LBE24:
.LBE23:
.LBB25:
	.loc 1 435 0
	movi.n	a7, 0
.LVL31:
	j	.L14
.LVL32:
.L15:
	.loc 1 436 0 discriminator 3
	l32r	a8, .LC10
	addx4	a8, a7, a8
	movi	a9, 0x100
	memw
	s32i.n	a9, a8, 0
	.loc 1 435 0 discriminator 3
	addi.n	a7, a7, 1
.LVL33:
.L14:
	.loc 1 435 0 is_stmt 0 discriminator 1
	movi	a8, 0xff
	bge	a8, a7, .L15
.LBE25:
	.loc 1 439 0 is_stmt 1
	l32r	a8, .LC11
	add.n	a4, a4, a8
.LVL34:
	extui	a7, a4, 16, 16
.LVL35:
	.loc 1 441 0
	l32r	a4, .LC12
.LVL36:
	and	a3, a3, a4
.LVL37:
	and	a2, a2, a4
.LVL38:
.LBB26:
.LBB27:
	.loc 2 75 0
	call8	esp_dport_access_stall_other_cpu_start
.LVL39:
	.loc 2 76 0
	mov.n	a15, a7
	movi.n	a14, 0x40
	mov.n	a13, a2
	mov.n	a12, a3
	movi.n	a11, 0
	mov.n	a10, a11
	call8	cache_flash_mmu_set_rom
.LVL40:
	.loc 2 77 0
	call8	esp_dport_access_stall_other_cpu_end
.LVL41:
.LBE27:
.LBE26:
.LBB28:
.LBB29:
	.loc 2 75 0
	call8	esp_dport_access_stall_other_cpu_start
.LVL42:
	.loc 2 76 0
	mov.n	a15, a7
	movi.n	a14, 0x40
	mov.n	a13, a2
	mov.n	a12, a3
	movi.n	a11, 0
	movi.n	a10, 1
	call8	cache_flash_mmu_set_rom
.LVL43:
	.loc 2 77 0
	call8	esp_dport_access_stall_other_cpu_end
.LVL44:
.LBE29:
.LBE28:
	.loc 1 445 0
	l32i.n	a3, sp, 0
.LVL45:
	l32r	a8, .LC11
	add.n	a2, a3, a8
.LVL46:
	extui	a2, a2, 16, 16
.LVL47:
	.loc 1 447 0
	and	a6, a6, a4
.LVL48:
	and	a4, a5, a4
.LVL49:
.LBB30:
.LBB31:
	.loc 2 75 0
	call8	esp_dport_access_stall_other_cpu_start
.LVL50:
	.loc 2 76 0
	mov.n	a15, a2
	movi.n	a14, 0x40
	mov.n	a13, a4
	mov.n	a12, a6
	movi.n	a11, 0
	mov.n	a10, a11
	call8	cache_flash_mmu_set_rom
.LVL51:
	.loc 2 77 0
	call8	esp_dport_access_stall_other_cpu_end
.LVL52:
.LBE31:
.LBE30:
.LBB32:
.LBB33:
	.loc 2 75 0
	call8	esp_dport_access_stall_other_cpu_start
.LVL53:
	.loc 2 76 0
	mov.n	a15, a2
	movi.n	a14, 0x40
	mov.n	a13, a4
	mov.n	a12, a6
	movi.n	a11, 0
	movi.n	a10, 1
	call8	cache_flash_mmu_set_rom
.LVL54:
	.loc 2 77 0
	call8	esp_dport_access_stall_other_cpu_end
.LVL55:
.LBE33:
.LBE32:
.LBB34:
.LBB35:
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/dport_access.h"
	.loc 3 79 0
	l32r	a3, .LC13
	mov.n	a10, a3
	call8	esp_dport_access_reg_read
.LVL56:
.LBE35:
.LBE34:
	.loc 1 451 0
	movi.n	a2, -0x1a
.LVL57:
	and	a10, a10, a2
	memw
	s32i.n	a10, a3, 0
.LVL58:
.LBB36:
.LBB37:
	.loc 3 79 0
	l32r	a3, .LC14
	mov.n	a10, a3
	call8	esp_dport_access_reg_read
.LVL59:
.LBE37:
.LBE36:
	.loc 1 452 0
	and	a10, a10, a2
	memw
	s32i.n	a10, a3, 0
.LVL60:
.LBB38:
.LBB39:
	.loc 2 181 0
	call8	esp_dport_access_stall_other_cpu_start
.LVL61:
	.loc 2 182 0
	movi.n	a10, 0
	call8	Cache_Read_Enable_rom
.LVL62:
	.loc 2 183 0
	call8	esp_dport_access_stall_other_cpu_end
.LVL63:
.LBE39:
.LBE38:
	.loc 1 463 0
	l32i.n	a2, sp, 48
	callx8	a2
.LVL64:
.LFE29:
	.size	set_cache_and_start_app, .-set_cache_and_start_app
	.section	.rodata.str1.4
	.align	4
.LC17:
	.string	"DROM"
	.align	4
.LC20:
	.string	"\033[0;31mE (%d) %s: Image contains multiple %s segments. Only the last one will be mapped.\033[0m\n"
	.align	4
.LC24:
	.string	"IROM"
	.section	.text.unpack_load_app,"ax",@progbits
	.literal_position
	.literal .LC15, -1074593792
	.literal .LC16, 3342335
	.literal .LC18, .LC17
	.literal .LC19, .LC2
	.literal .LC21, .LC20
	.literal .LC22, -1061158912
	.literal .LC23, 4194303
	.literal .LC25, .LC24
	.align	4
	.type	unpack_load_app, @function
unpack_load_app:
.LFB28:
	.loc 1 376 0
.LVL65:
	entry	sp, 64
.LCFI4:
.LVL66:
.LBB40:
	.loc 1 385 0
	movi.n	a3, 0
.LBE40:
	.loc 1 382 0
	mov.n	a7, a3
	.loc 1 381 0
	mov.n	a6, a3
	.loc 1 380 0
	mov.n	a5, a3
	.loc 1 379 0
	s32i.n	a3, sp, 20
	.loc 1 378 0
	s32i.n	a3, sp, 16
	.loc 1 377 0
	mov.n	a4, a3
.LBB42:
	.loc 1 385 0
	j	.L17
.LVL67:
.L22:
.LBB41:
	.loc 1 387 0
	addi.n	a8, a3, 2
	addx8	a8, a8, a2
	l32i.n	a9, a8, 12
	l32r	a8, .LC15
	add.n	a8, a9, a8
	l32r	a9, .LC16
	bltu	a9, a8, .L18
	.loc 1 388 0
	beqz.n	a4, .L19
	.loc 1 389 0 discriminator 2
	call8	esp_log_timestamp
.LVL68:
	l32r	a11, .LC19
	l32r	a15, .LC18
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC21
	movi.n	a10, 1
	call8	esp_log_write
.LVL69:
.L19:
	.loc 1 393 0
	addi	a4, a3, 36
.LVL70:
	addx4	a4, a4, a2
	l32i.n	a4, a4, 12
.LVL71:
	.loc 1 394 0
	addi.n	a8, a3, 2
	addx8	a8, a8, a2
	l32i.n	a9, a8, 12
	s32i.n	a9, sp, 16
.LVL72:
	.loc 1 395 0
	l32i.n	a8, a8, 16
	s32i.n	a8, sp, 20
.LVL73:
.L18:
	.loc 1 397 0
	addi.n	a8, a3, 2
	addx8	a8, a8, a2
	l32i.n	a9, a8, 12
	l32r	a8, .LC22
	add.n	a8, a9, a8
	l32r	a9, .LC23
	bltu	a9, a8, .L20
	.loc 1 398 0
	beqz.n	a5, .L21
	.loc 1 399 0 discriminator 2
	call8	esp_log_timestamp
.LVL74:
	l32r	a11, .LC19
	l32r	a15, .LC25
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC21
	movi.n	a10, 1
	call8	esp_log_write
.LVL75:
.L21:
	.loc 1 403 0
	addi	a5, a3, 36
.LVL76:
	addx4	a5, a5, a2
	l32i.n	a5, a5, 12
.LVL77:
	.loc 1 404 0
	addi.n	a7, a3, 2
.LVL78:
	addx8	a7, a7, a2
	l32i.n	a6, a7, 12
.LVL79:
	.loc 1 405 0
	l32i.n	a7, a7, 16
.LVL80:
.L20:
.LBE41:
	.loc 1 385 0 discriminator 2
	addi.n	a3, a3, 1
.LVL81:
.L17:
	.loc 1 385 0 is_stmt 0 discriminator 1
	l8ui	a8, a2, 5
	blt	a3, a8, .L22
.LBE42:
	.loc 1 410 0 is_stmt 1
	l32i.n	a2, a2, 8
.LVL82:
	s32i.n	a2, sp, 0
	mov.n	a15, a7
	mov.n	a14, a6
	mov.n	a13, a5
	l32i.n	a12, sp, 20
	l32i.n	a11, sp, 16
	mov.n	a10, a4
	call8	set_cache_and_start_app
.LVL83:
.LFE28:
	.size	unpack_load_app, .-unpack_load_app
	.section	.rodata.str1.4
	.align	4
.LC27:
	.string	"\033[0;32mI (%d) %s: Disabling RNG early entropy source...\033[0m\n"
	.section	.text.load_image,"ax",@progbits
	.literal_position
	.literal .LC26, .LC2
	.literal .LC28, .LC27
	.align	4
	.type	load_image, @function
load_image:
.LFB27:
	.loc 1 331 0
.LVL84:
	entry	sp, 32
.LCFI5:
	.loc 1 368 0
	call8	esp_log_timestamp
.LVL85:
	l32r	a11, .LC26
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC28
	movi.n	a10, 3
	call8	esp_log_write
.LVL86:
	.loc 1 369 0
	call8	bootloader_random_disable
.LVL87:
	.loc 1 372 0
	mov.n	a10, a2
	call8	unpack_load_app
.LVL88:
.LFE27:
	.size	load_image, .-load_image
	.section	.rodata.str1.4
	.align	4
.LC29:
	.string	"RF data"
	.align	4
.LC31:
	.string	"test app"
	.align	4
.LC33:
	.string	"WiFi data"
	.align	4
.LC35:
	.string	"Unknown data"
	.align	4
.LC37:
	.string	"OTA data"
	.align	4
.LC39:
	.string	"Unknown app"
	.align	4
.LC41:
	.string	"OTA app"
	.align	4
.LC43:
	.string	"factory app"
	.align	4
.LC45:
	.string	"unknown"
	.align	4
.LC50:
	.string	"\033[0;31mE (%d) %s: bootloader_mmap(0x%x, 0x%x) failed\033[0m\n"
	.align	4
.LC52:
	.string	"\033[0;31mE (%d) %s: Failed to verify partition table\033[0m\n"
	.align	4
.LC54:
	.string	"\033[0;32mI (%d) %s: Partition Table:\033[0m\n"
	.align	4
.LC56:
	.string	"\033[0;32mI (%d) %s: ## Label            Usage          Type ST Offset   Length\033[0m\n"
	.align	4
.LC58:
	.string	"\033[0;32mI (%d) %s: %2d %-16s %-16s %02x %02x %08x %08x\033[0m\n"
	.align	4
.LC60:
	.string	"\033[0;32mI (%d) %s: End of partition table\033[0m\n"
	.section	.text.bootloader_utility_load_partition_table,"ax",@progbits
	.literal_position
	.literal .LC30, .LC29
	.literal .LC32, .LC31
	.literal .LC34, .LC33
	.literal .LC36, .LC35
	.literal .LC38, .LC37
	.literal .LC40, .LC39
	.literal .LC42, .LC41
	.literal .LC44, .LC43
	.literal .LC46, .LC45
	.literal .LC47, 3072
	.literal .LC48, 65536
	.literal .LC49, .LC2
	.literal .LC51, .LC50
	.literal .LC53, .LC52
	.literal .LC55, .LC54
	.literal .LC57, .LC56
	.literal .LC59, .LC58
	.literal .LC61, .LC60
	.align	4
	.global	bootloader_utility_load_partition_table
	.type	bootloader_utility_load_partition_table, @function
bootloader_utility_load_partition_table:
.LFB21:
	.loc 1 69 0
.LVL89:
	entry	sp, 80
.LCFI6:
	.loc 1 75 0
	l32r	a11, .LC47
	l32r	a10, .LC48
	call8	bootloader_mmap
.LVL90:
	mov.n	a5, a10
.LVL91:
	.loc 1 76 0
	bnez.n	a10, .L25
	.loc 1 77 0 discriminator 2
	call8	esp_log_timestamp
.LVL92:
	l32r	a11, .LC49
	l32r	a2, .LC47
.LVL93:
	s32i.n	a2, sp, 0
	l32r	a15, .LC48
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC51
	movi.n	a10, 1
	call8	esp_log_write
.LVL94:
	.loc 1 78 0 discriminator 2
	movi.n	a2, 0
	retw.n
.LVL95:
.L25:
	.loc 1 82 0
	addi	a12, sp, 32
	movi.n	a11, 1
	call8	esp_partition_table_verify
.LVL96:
	.loc 1 83 0
	beqz.n	a10, .L27
	.loc 1 84 0 discriminator 2
	call8	esp_log_timestamp
.LVL97:
	l32r	a11, .LC49
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC53
	movi.n	a10, 1
	call8	esp_log_write
.LVL98:
	.loc 1 85 0 discriminator 2
	movi.n	a2, 0
.LVL99:
	retw.n
.LVL100:
.L27:
	.loc 1 88 0 discriminator 9
	call8	esp_log_timestamp
.LVL101:
	l32r	a3, .LC49
	mov.n	a14, a3
	mov.n	a13, a10
	l32r	a12, .LC55
	mov.n	a11, a3
	movi.n	a10, 3
	call8	esp_log_write
.LVL102:
	.loc 1 89 0 discriminator 9
	call8	esp_log_timestamp
.LVL103:
	mov.n	a14, a3
	mov.n	a13, a10
	l32r	a12, .LC57
	mov.n	a11, a3
	movi.n	a10, 3
	call8	esp_log_write
.LVL104:
.LBB43:
	.loc 1 91 0 discriminator 9
	movi.n	a4, 0
	j	.L28
.LVL105:
.L38:
.LBB44:
	.loc 1 92 0
	slli	a3, a4, 5
	add.n	a3, a5, a3
.LVL106:
	.loc 1 98 0
	l8ui	a8, a3, 2
	beqz.n	a8, .L30
	beqi	a8, 1, .L31
	j	.L42
.L30:
	.loc 1 100 0
	l8ui	a6, a3, 3
	beqz.n	a6, .L33
	beqi	a6, 32, .L34
	j	.L43
.L33:
	.loc 1 102 0
	l32i.n	a8, a3, 4
	l32i.n	a6, a3, 8
	s32i.n	a8, a2, 8
	s32i.n	a6, a2, 12
.LVL107:
	.loc 1 103 0
	l32r	a6, .LC44
	.loc 1 104 0
	j	.L29
.LVL108:
.L34:
	.loc 1 106 0
	l32i.n	a8, a3, 4
	l32i.n	a6, a3, 8
	s32i.n	a8, a2, 16
	s32i.n	a6, a2, 20
.LVL109:
	.loc 1 107 0
	l32r	a6, .LC32
	.loc 1 108 0
	j	.L29
.LVL110:
.L43:
	.loc 1 111 0
	movi.n	a8, -0x10
	and	a8, a6, a8
	bnei	a8, 16, .L40
	.loc 1 112 0
	extui	a6, a6, 0, 4
	addi.n	a6, a6, 2
	addx8	a6, a6, a2
	l32i.n	a9, a3, 4
	l32i.n	a8, a3, 8
	s32i.n	a9, a6, 8
	s32i.n	a8, a6, 12
	.loc 1 113 0
	l32i	a6, a2, 152
	addi.n	a6, a6, 1
	s32i	a6, a2, 152
.LVL111:
	.loc 1 114 0
	l32r	a6, .LC42
	j	.L29
.LVL112:
.L31:
	.loc 1 123 0
	l8ui	a6, a3, 3
	beqi	a6, 1, .L36
	beqz.n	a6, .L37
	beqi	a6, 2, .L41
	j	.L44
.L36:
	.loc 1 129 0
	l32r	a6, .LC30
	j	.L29
.L37:
	.loc 1 125 0
	l32i.n	a8, a3, 4
	l32i.n	a6, a3, 8
	s32i.n	a8, a2, 0
	s32i.n	a6, a2, 4
.LVL113:
	.loc 1 126 0
	l32r	a6, .LC38
	.loc 1 127 0
	j	.L29
.LVL114:
.L44:
	.loc 1 135 0
	l32r	a6, .LC36
	.loc 1 136 0
	j	.L29
.LVL115:
.L42:
	.loc 1 95 0
	l32r	a6, .LC46
	j	.L29
.L40:
	.loc 1 117 0
	l32r	a6, .LC40
	j	.L29
.L41:
	.loc 1 132 0
	l32r	a6, .LC34
.LVL116:
.L29:
	.loc 1 144 0 discriminator 9
	call8	esp_log_timestamp
.LVL117:
	addi.n	a8, a3, 12
	l8ui	a9, a3, 2
	l8ui	a12, a3, 3
	l32r	a11, .LC49
	l32i.n	a13, a3, 8
	s32i.n	a13, sp, 20
	l32i.n	a3, a3, 4
.LVL118:
	s32i.n	a3, sp, 16
	s32i.n	a12, sp, 12
	s32i.n	a9, sp, 8
	s32i.n	a6, sp, 4
	s32i.n	a8, sp, 0
	mov.n	a15, a4
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC59
	movi.n	a10, 3
	call8	esp_log_write
.LVL119:
.LBE44:
	.loc 1 91 0 discriminator 9
	addi.n	a4, a4, 1
.LVL120:
.L28:
	.loc 1 91 0 is_stmt 0 discriminator 1
	l32i.n	a3, sp, 32
	blt	a4, a3, .L38
.LBE43:
	.loc 1 149 0 is_stmt 1
	mov.n	a10, a5
	call8	bootloader_munmap
.LVL121:
	.loc 1 151 0
	call8	esp_log_timestamp
.LVL122:
	l32r	a11, .LC49
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC61
	movi.n	a10, 3
	call8	esp_log_write
.LVL123:
	.loc 1 152 0
	movi.n	a2, 1
.LVL124:
	.loc 1 153 0
	retw.n
.LFE21:
	.size	bootloader_utility_load_partition_table, .-bootloader_utility_load_partition_table
	.section	.rodata.str1.4
	.align	4
.LC64:
	.string	"\033[0;31mE (%d) %s: ota_info partition size %d is too small (minimum %d bytes)\033[0m\n"
	.align	4
.LC67:
	.string	"\033[0;32mI (%d) %s: Defaulting to factory image\033[0m\n"
	.align	4
.LC69:
	.string	"\033[0;32mI (%d) %s: No factory image, trying OTA 0\033[0m\n"
	.align	4
.LC71:
	.string	"\033[0;31mE (%d) %s: ota data partition invalid, falling back to factory\033[0m\n"
	.align	4
.LC73:
	.string	"\033[0;31mE (%d) %s: ota data partition invalid and no factory, will try all partitions\033[0m\n"
	.section	.text.bootloader_utility_get_selected_boot_partition,"ax",@progbits
	.literal_position
	.literal .LC62, 8191
	.literal .LC63, .LC2
	.literal .LC65, .LC64
	.literal .LC66, .LC50
	.literal .LC68, .LC67
	.literal .LC70, .LC69
	.literal .LC72, .LC71
	.literal .LC74, .LC73
	.align	4
	.global	bootloader_utility_get_selected_boot_partition
	.type	bootloader_utility_get_selected_boot_partition, @function
bootloader_utility_get_selected_boot_partition:
.LFB24:
	.loc 1 191 0
.LVL125:
	entry	sp, 112
.LCFI7:
	.loc 1 195 0
	l32i.n	a10, a2, 0
	beqz.n	a10, .L58
	.loc 1 197 0
	l32i.n	a11, a2, 4
	l32r	a3, .LC62
	bltu	a3, a11, .L47
	.loc 1 198 0 discriminator 2
	call8	esp_log_timestamp
.LVL126:
	l32r	a11, .LC63
	movi.n	a3, 0x20
	s32i.n	a3, sp, 0
	l32i.n	a15, a2, 4
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC65
	movi.n	a10, 1
	call8	esp_log_write
.LVL127:
	.loc 1 199 0 discriminator 2
	movi	a2, -0x63
.LVL128:
	retw.n
.LVL129:
.L47:
	.loc 1 203 0
	call8	bootloader_mmap
.LVL130:
	mov.n	a3, a10
.LVL131:
	.loc 1 204 0
	bnez.n	a10, .L48
	.loc 1 205 0 discriminator 2
	call8	esp_log_timestamp
.LVL132:
	l32r	a11, .LC63
	l32i.n	a3, a2, 4
.LVL133:
	s32i.n	a3, sp, 0
	l32i.n	a15, a2, 0
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC66
	movi.n	a10, 1
	call8	esp_log_write
.LVL134:
	.loc 1 206 0 discriminator 2
	movi	a2, -0x63
.LVL135:
	retw.n
.LVL136:
.L48:
	.loc 1 208 0
	movi.n	a5, 0x20
	mov.n	a12, a5
	mov.n	a11, a10
	addi	a10, sp, 16
	call8	memcpy
.LVL137:
	.loc 1 209 0
	mov.n	a12, a5
	addmi	a11, a3, 0x1000
	addi	a10, sp, 48
	call8	memcpy
.LVL138:
	.loc 1 210 0
	mov.n	a10, a3
	call8	bootloader_munmap
.LVL139:
	.loc 1 213 0
	l32i.n	a3, sp, 16
.LVL140:
	bnei	a3, -1, .L49
	.loc 1 213 0 is_stmt 0 discriminator 1
	l32i.n	a3, sp, 48
	beqi	a3, -1, .L50
.L49:
	.loc 1 213 0 discriminator 3
	l32i	a3, a2, 152
	bnez.n	a3, .L51
.L50:
	.loc 1 215 0 is_stmt 1
	l32i.n	a2, a2, 8
.LVL141:
	beqz.n	a2, .L52
	.loc 1 216 0 discriminator 9
	call8	esp_log_timestamp
.LVL142:
	l32r	a11, .LC63
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC68
	movi.n	a10, 3
	call8	esp_log_write
.LVL143:
	.loc 1 217 0 discriminator 9
	movi.n	a2, -1
	retw.n
.L52:
	.loc 1 219 0 discriminator 9
	call8	esp_log_timestamp
.LVL144:
	l32r	a11, .LC63
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC70
	movi.n	a10, 3
	call8	esp_log_write
.LVL145:
	.loc 1 220 0 discriminator 9
	movi.n	a2, 0
	retw.n
.LVL146:
.L51:
.LBB45:
	.loc 1 226 0
	addi	a10, sp, 16
	call8	bootloader_common_ota_select_valid
.LVL147:
	beqz.n	a10, .L53
	.loc 1 226 0 is_stmt 0 discriminator 1
	addi	a10, sp, 48
	call8	bootloader_common_ota_select_valid
.LVL148:
	beqz.n	a10, .L53
.LVL149:
	.loc 1 229 0 is_stmt 1
	l32i.n	a3, sp, 16
	l32i.n	a4, sp, 48
	maxu	a4, a4, a3
	addi.n	a4, a4, -1
.LVL150:
	.loc 1 227 0
	movi.n	a3, 1
	.loc 1 229 0
	j	.L54
.LVL151:
.L53:
	.loc 1 230 0
	addi	a10, sp, 16
	call8	bootloader_common_ota_select_valid
.LVL152:
	beqz.n	a10, .L55
.LVL153:
	.loc 1 233 0
	l32i.n	a4, sp, 16
	addi.n	a4, a4, -1
.LVL154:
	.loc 1 231 0
	movi.n	a3, 1
	j	.L54
.LVL155:
.L55:
	.loc 1 234 0
	addi	a10, sp, 48
	call8	bootloader_common_ota_select_valid
.LVL156:
	beqz.n	a10, .L59
.LVL157:
	.loc 1 237 0
	l32i.n	a4, sp, 48
	addi.n	a4, a4, -1
.LVL158:
	.loc 1 235 0
	movi.n	a3, 1
	j	.L54
.LVL159:
.L59:
	.loc 1 223 0
	movi.n	a3, 0
.LVL160:
.L54:
	.loc 1 240 0
	beqz.n	a3, .L56
.LBB46:
	.loc 1 241 0
	l32i	a2, a2, 152
.LVL161:
	.loc 1 243 0
	remu	a2, a4, a2
.LVL162:
	retw.n
.LVL163:
.L56:
.LBE46:
	.loc 1 244 0
	l32i.n	a2, a2, 8
.LVL164:
	beqz.n	a2, .L57
	.loc 1 245 0 discriminator 2
	call8	esp_log_timestamp
.LVL165:
	l32r	a11, .LC63
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC72
	movi.n	a10, 1
	call8	esp_log_write
.LVL166:
	.loc 1 246 0 discriminator 2
	movi.n	a2, -1
	retw.n
.L57:
	.loc 1 248 0 discriminator 2
	call8	esp_log_timestamp
.LVL167:
	l32r	a11, .LC63
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC74
	movi.n	a10, 1
	call8	esp_log_write
.LVL168:
	.loc 1 249 0 discriminator 2
	movi.n	a2, -1
	retw.n
.LVL169:
.L58:
.LBE45:
	.loc 1 256 0
	movi.n	a2, -1
.LVL170:
	.loc 1 257 0
	retw.n
.LFE24:
	.size	bootloader_utility_get_selected_boot_partition, .-bootloader_utility_get_selected_boot_partition
	.section	.rodata.str1.4
	.align	4
.LC76:
	.string	"\033[0;31mE (%d) %s: No bootable test partition in the partition table\033[0m\n"
	.align	4
.LC78:
	.string	"\033[0;33mW (%d) %s: Falling back to test app as only bootable partition\033[0m\n"
	.align	4
.LC80:
	.string	"\033[0;31mE (%d) %s: No bootable app partitions in the partition table\033[0m\n"
	.section	.text.bootloader_utility_load_boot_image,"ax",@progbits
	.literal_position
	.literal .LC75, .LC2
	.literal .LC77, .LC76
	.literal .LC79, .LC78
	.literal .LC81, .LC80
	.align	4
	.global	bootloader_utility_load_boot_image
	.type	bootloader_utility_load_boot_image, @function
bootloader_utility_load_boot_image:
.LFB26:
	.loc 1 280 0
.LVL171:
	entry	sp, 272
.LCFI8:
.LVL172:
	.loc 1 285 0
	movi.n	a4, -2
	bne	a3, a4, .L72
	.loc 1 286 0
	addi.n	a11, sp, 8
	addi	a10, a2, 16
	call8	try_load_partition
.LVL173:
	beqz.n	a10, .L62
	.loc 1 287 0
	addi.n	a10, sp, 8
	call8	load_image
.LVL174:
.L62:
	.loc 1 289 0 discriminator 2
	call8	esp_log_timestamp
.LVL175:
	l32r	a11, .LC75
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC77
	movi.n	a10, 1
	call8	esp_log_write
.LVL176:
	retw.n
.LVL177:
.L66:
	.loc 1 296 0
	mov.n	a11, a4
	mov.n	a10, a2
	call8	index_to_partition
.LVL178:
	s32i.n	a10, sp, 0
	s32i.n	a11, sp, 4
	.loc 1 297 0
	l32i.n	a8, sp, 4
	beqz.n	a8, .L64
	.loc 1 301 0
	addi.n	a11, sp, 8
	mov.n	a10, sp
	call8	try_load_partition
.LVL179:
	beqz.n	a10, .L65
	.loc 1 302 0
	addi.n	a10, sp, 8
	call8	load_image
.LVL180:
.L65:
	.loc 1 304 0
	mov.n	a10, a4
	call8	log_invalid_app_partition
.LVL181:
.L64:
	.loc 1 295 0 discriminator 2
	addi.n	a4, a4, -1
.LVL182:
	j	.L61
.LVL183:
.L72:
	mov.n	a4, a3
.LVL184:
.L61:
	.loc 1 295 0 is_stmt 0 discriminator 1
	bgei	a4, -1, .L66
	.loc 1 308 0 is_stmt 1
	addi.n	a3, a3, 1
.LVL185:
	j	.L67
.LVL186:
.L70:
	.loc 1 309 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	index_to_partition
.LVL187:
	s32i.n	a10, sp, 0
	s32i.n	a11, sp, 4
	.loc 1 310 0
	l32i.n	a4, sp, 4
	beqz.n	a4, .L68
	.loc 1 314 0
	addi.n	a11, sp, 8
	mov.n	a10, sp
	call8	try_load_partition
.LVL188:
	beqz.n	a10, .L69
	.loc 1 315 0
	addi.n	a10, sp, 8
	call8	load_image
.LVL189:
.L69:
	.loc 1 317 0
	mov.n	a10, a3
	call8	log_invalid_app_partition
.LVL190:
.L68:
	.loc 1 308 0 discriminator 2
	addi.n	a3, a3, 1
.LVL191:
.L67:
	.loc 1 308 0 is_stmt 0 discriminator 1
	l32i	a4, a2, 152
	bltu	a3, a4, .L70
	.loc 1 320 0 is_stmt 1
	addi.n	a11, sp, 8
	addi	a10, a2, 16
	call8	try_load_partition
.LVL192:
	beqz.n	a10, .L71
	.loc 1 321 0 discriminator 4
	call8	esp_log_timestamp
.LVL193:
	l32r	a11, .LC75
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC79
	movi.n	a10, 2
	call8	esp_log_write
.LVL194:
	.loc 1 322 0 discriminator 4
	addi.n	a10, sp, 8
	call8	load_image
.LVL195:
.L71:
	.loc 1 325 0 discriminator 2
	call8	esp_log_timestamp
.LVL196:
	l32r	a11, .LC75
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC81
	movi.n	a10, 1
	call8	esp_log_write
.LVL197:
	.loc 1 326 0 discriminator 2
	movi	a12, 0xe0
	movi.n	a11, 0
	addi.n	a10, sp, 8
	call8	memset
.LVL198:
	retw.n
.LFE26:
	.size	bootloader_utility_load_boot_image, .-bootloader_utility_load_boot_image
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
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI0-.LFB22
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI1-.LFB25
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI2-.LFB23
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
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI4-.LFB28
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI5-.LFB27
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI6-.LFB21
	.byte	0xe
	.uleb128 0x50
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
	.uleb128 0x70
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI8-.LFB26
	.byte	0xe
	.uleb128 0x110
	.align	4
.LEFDE16:
	.text
.Letext0:
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/log/include/esp_log.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/rtc.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_err.h"
	.file 9 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_flash_data_types.h"
	.file 10 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include/esp_image_format.h"
	.file 11 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include_priv/bootloader_config.h"
	.file 12 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_dport_access.h"
	.file 13 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include_priv/bootloader_random.h"
	.file 14 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include_priv/bootloader_flash.h"
	.file 15 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include/esp_flash_partitions.h"
	.file 16 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include/bootloader_common.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x15c8
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF146
	.byte	0xc
	.4byte	.LASF147
	.4byte	.LASF148
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
	.byte	0x4
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
	.byte	0x4
	.byte	0x16
	.4byte	0x33
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x4
	.byte	0x19
	.4byte	0x25
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x4
	.byte	0x1a
	.4byte	0x2c
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x4
	.byte	0x31
	.4byte	0x25
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x5
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb7
	.uleb128 0x7
	.4byte	0xaa
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x5
	.byte	0x15
	.4byte	0x41
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x5
	.byte	0x21
	.4byte	0x5a
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x5
	.byte	0x2c
	.4byte	0x65
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x5
	.byte	0x2d
	.4byte	0x70
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x5
	.byte	0xa9
	.4byte	0x89
	.uleb128 0x8
	.byte	0x4
	.4byte	0x2c
	.byte	0x6
	.byte	0x1f
	.4byte	0x124
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF26
	.byte	0x5
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x2c
	.byte	0x7
	.byte	0x63
	.4byte	0x17c
	.uleb128 0x9
	.4byte	.LASF27
	.byte	0
	.uleb128 0x9
	.4byte	.LASF28
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF29
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF30
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF31
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF32
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF33
	.byte	0x20
	.uleb128 0x9
	.4byte	.LASF34
	.byte	0x40
	.uleb128 0x9
	.4byte	.LASF35
	.byte	0x80
	.uleb128 0xa
	.4byte	.LASF36
	.2byte	0x100
	.uleb128 0xa
	.4byte	.LASF37
	.2byte	0x200
	.uleb128 0xa
	.4byte	.LASF38
	.2byte	0x400
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x2c
	.byte	0x7
	.byte	0x81
	.4byte	0x1ad
	.uleb128 0x9
	.4byte	.LASF39
	.byte	0
	.uleb128 0x9
	.4byte	.LASF40
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF41
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF42
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF43
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF44
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF45
	.uleb128 0x4
	.4byte	.LASF46
	.byte	0x8
	.byte	0x18
	.4byte	0xd2
	.uleb128 0xb
	.byte	0x20
	.byte	0x9
	.byte	0x1d
	.4byte	0x1ec
	.uleb128 0xc
	.4byte	.LASF47
	.byte	0x9
	.byte	0x1e
	.4byte	0xdd
	.byte	0
	.uleb128 0xc
	.4byte	.LASF48
	.byte	0x9
	.byte	0x1f
	.4byte	0x1ec
	.byte	0x4
	.uleb128 0xd
	.string	"crc"
	.byte	0x9
	.byte	0x20
	.4byte	0xdd
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.4byte	0xbc
	.4byte	0x1fc
	.uleb128 0xf
	.4byte	0x9b
	.byte	0x17
	.byte	0
	.uleb128 0x4
	.4byte	.LASF49
	.byte	0x9
	.byte	0x21
	.4byte	0x1bf
	.uleb128 0xb
	.byte	0x8
	.byte	0x9
	.byte	0x24
	.4byte	0x228
	.uleb128 0xc
	.4byte	.LASF50
	.byte	0x9
	.byte	0x25
	.4byte	0xdd
	.byte	0
	.uleb128 0xc
	.4byte	.LASF51
	.byte	0x9
	.byte	0x26
	.4byte	0xdd
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF52
	.byte	0x9
	.byte	0x27
	.4byte	0x207
	.uleb128 0xb
	.byte	0x20
	.byte	0x9
	.byte	0x2c
	.4byte	0x284
	.uleb128 0xc
	.4byte	.LASF53
	.byte	0x9
	.byte	0x2d
	.4byte	0xc7
	.byte	0
	.uleb128 0xc
	.4byte	.LASF54
	.byte	0x9
	.byte	0x2e
	.4byte	0xbc
	.byte	0x2
	.uleb128 0xc
	.4byte	.LASF55
	.byte	0x9
	.byte	0x2f
	.4byte	0xbc
	.byte	0x3
	.uleb128 0xd
	.string	"pos"
	.byte	0x9
	.byte	0x30
	.4byte	0x228
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF56
	.byte	0x9
	.byte	0x31
	.4byte	0x284
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF57
	.byte	0x9
	.byte	0x32
	.4byte	0xdd
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.4byte	0xbc
	.4byte	0x294
	.uleb128 0xf
	.4byte	0x9b
	.byte	0xf
	.byte	0
	.uleb128 0x4
	.4byte	.LASF58
	.byte	0x9
	.byte	0x33
	.4byte	0x233
	.uleb128 0x8
	.byte	0x4
	.4byte	0x2c
	.byte	0xa
	.byte	0x27
	.4byte	0x2c4
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
	.byte	0xf
	.byte	0
	.uleb128 0xb
	.byte	0x18
	.byte	0xa
	.byte	0x3b
	.4byte	0x34b
	.uleb128 0xc
	.4byte	.LASF53
	.byte	0xa
	.byte	0x3c
	.4byte	0xbc
	.byte	0
	.uleb128 0xc
	.4byte	.LASF63
	.byte	0xa
	.byte	0x3d
	.4byte	0xbc
	.byte	0x1
	.uleb128 0xc
	.4byte	.LASF64
	.byte	0xa
	.byte	0x3f
	.4byte	0xbc
	.byte	0x2
	.uleb128 0x10
	.4byte	.LASF65
	.byte	0xa
	.byte	0x41
	.4byte	0xbc
	.byte	0x1
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x10
	.4byte	.LASF66
	.byte	0xa
	.byte	0x43
	.4byte	0xbc
	.byte	0x1
	.byte	0x4
	.byte	0
	.byte	0x3
	.uleb128 0xc
	.4byte	.LASF67
	.byte	0xa
	.byte	0x44
	.4byte	0xdd
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF68
	.byte	0xa
	.byte	0x47
	.4byte	0xbc
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF69
	.byte	0xa
	.byte	0x49
	.4byte	0x34b
	.byte	0x9
	.uleb128 0xc
	.4byte	.LASF70
	.byte	0xa
	.byte	0x4b
	.4byte	0x35b
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF71
	.byte	0xa
	.byte	0x4f
	.4byte	0xbc
	.byte	0x17
	.byte	0
	.uleb128 0xe
	.4byte	0xbc
	.4byte	0x35b
	.uleb128 0xf
	.4byte	0x9b
	.byte	0x2
	.byte	0
	.uleb128 0xe
	.4byte	0xbc
	.4byte	0x36b
	.uleb128 0xf
	.4byte	0x9b
	.byte	0xa
	.byte	0
	.uleb128 0x4
	.4byte	.LASF72
	.byte	0xa
	.byte	0x50
	.4byte	0x2c4
	.uleb128 0xb
	.byte	0x8
	.byte	0xa
	.byte	0x55
	.4byte	0x397
	.uleb128 0xc
	.4byte	.LASF73
	.byte	0xa
	.byte	0x56
	.4byte	0xdd
	.byte	0
	.uleb128 0xc
	.4byte	.LASF74
	.byte	0xa
	.byte	0x57
	.4byte	0xdd
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF75
	.byte	0xa
	.byte	0x58
	.4byte	0x376
	.uleb128 0xb
	.byte	0xe0
	.byte	0xa
	.byte	0x5d
	.4byte	0x3e7
	.uleb128 0xc
	.4byte	.LASF76
	.byte	0xa
	.byte	0x5e
	.4byte	0xdd
	.byte	0
	.uleb128 0xc
	.4byte	.LASF77
	.byte	0xa
	.byte	0x5f
	.4byte	0x36b
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF78
	.byte	0xa
	.byte	0x60
	.4byte	0x3e7
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF79
	.byte	0xa
	.byte	0x61
	.4byte	0x3f7
	.byte	0x9c
	.uleb128 0xc
	.4byte	.LASF80
	.byte	0xa
	.byte	0x62
	.4byte	0xdd
	.byte	0xdc
	.byte	0
	.uleb128 0xe
	.4byte	0x397
	.4byte	0x3f7
	.uleb128 0xf
	.4byte	0x9b
	.byte	0xf
	.byte	0
	.uleb128 0xe
	.4byte	0xdd
	.4byte	0x407
	.uleb128 0xf
	.4byte	0x9b
	.byte	0xf
	.byte	0
	.uleb128 0x4
	.4byte	.LASF81
	.byte	0xa
	.byte	0x63
	.4byte	0x3a2
	.uleb128 0xb
	.byte	0xa0
	.byte	0xb
	.byte	0x21
	.4byte	0x463
	.uleb128 0xc
	.4byte	.LASF82
	.byte	0xb
	.byte	0x22
	.4byte	0x228
	.byte	0
	.uleb128 0xc
	.4byte	.LASF83
	.byte	0xb
	.byte	0x23
	.4byte	0x228
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF84
	.byte	0xb
	.byte	0x24
	.4byte	0x228
	.byte	0x10
	.uleb128 0xd
	.string	"ota"
	.byte	0xb
	.byte	0x25
	.4byte	0x463
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF85
	.byte	0xb
	.byte	0x26
	.4byte	0xdd
	.byte	0x98
	.uleb128 0xc
	.4byte	.LASF86
	.byte	0xb
	.byte	0x27
	.4byte	0xdd
	.byte	0x9c
	.byte	0
	.uleb128 0xe
	.4byte	0x228
	.4byte	0x473
	.uleb128 0xf
	.4byte	0x9b
	.byte	0xf
	.byte	0
	.uleb128 0x4
	.4byte	.LASF87
	.byte	0xb
	.byte	0x28
	.4byte	0x412
	.uleb128 0x11
	.4byte	.LASF88
	.byte	0x2
	.byte	0x92
	.byte	0x3
	.4byte	0x49e
	.uleb128 0x12
	.4byte	.LASF90
	.byte	0x2
	.byte	0x92
	.4byte	0x25
	.uleb128 0x13
	.4byte	.LASF91
	.byte	0x2
	.byte	0x94
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	.LASF89
	.byte	0x2
	.byte	0xa2
	.byte	0x3
	.4byte	0x4be
	.uleb128 0x12
	.4byte	.LASF90
	.byte	0x2
	.byte	0xa2
	.4byte	0x25
	.uleb128 0x13
	.4byte	.LASF92
	.byte	0x2
	.byte	0xa4
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	.LASF93
	.byte	0x2
	.byte	0xb2
	.byte	0x3
	.4byte	0x4de
	.uleb128 0x12
	.4byte	.LASF90
	.byte	0x2
	.byte	0xb2
	.4byte	0x25
	.uleb128 0x13
	.4byte	.LASF94
	.byte	0x2
	.byte	0xb4
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	.LASF95
	.byte	0x3
	.byte	0x4a
	.4byte	0xdd
	.byte	0x3
	.4byte	0x4fa
	.uleb128 0x15
	.string	"reg"
	.byte	0x3
	.byte	0x4a
	.4byte	0xdd
	.byte	0
	.uleb128 0x14
	.4byte	.LASF96
	.byte	0x2
	.byte	0x45
	.4byte	0x2c
	.byte	0x3
	.4byte	0x564
	.uleb128 0x12
	.4byte	.LASF90
	.byte	0x2
	.byte	0x45
	.4byte	0x25
	.uleb128 0x15
	.string	"pid"
	.byte	0x2
	.byte	0x45
	.4byte	0x25
	.uleb128 0x12
	.4byte	.LASF97
	.byte	0x2
	.byte	0x45
	.4byte	0x2c
	.uleb128 0x12
	.4byte	.LASF98
	.byte	0x2
	.byte	0x45
	.4byte	0x2c
	.uleb128 0x12
	.4byte	.LASF99
	.byte	0x2
	.byte	0x45
	.4byte	0x25
	.uleb128 0x15
	.string	"num"
	.byte	0x2
	.byte	0x45
	.4byte	0x25
	.uleb128 0x16
	.4byte	.LASF137
	.byte	0x2
	.byte	0x47
	.4byte	0x2c
	.byte	0
	.uleb128 0x17
	.string	"ret"
	.byte	0x2
	.byte	0x49
	.4byte	0x2c
	.byte	0
	.uleb128 0x18
	.4byte	.LASF101
	.byte	0x1
	.byte	0x9c
	.4byte	0x228
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5a9
	.uleb128 0x19
	.string	"bs"
	.byte	0x1
	.byte	0x9c
	.4byte	0x5a9
	.4byte	.LLST0
	.uleb128 0x1a
	.4byte	.LASF100
	.byte	0x1
	.byte	0x9c
	.4byte	0x25
	.4byte	.LLST1
	.uleb128 0x1b
	.4byte	.LASF105
	.byte	0x1
	.byte	0xaa
	.4byte	0x228
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5af
	.uleb128 0x7
	.4byte	0x473
	.uleb128 0x1c
	.4byte	.LASF102
	.byte	0x1
	.2byte	0x104
	.4byte	0x1ad
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5ed
	.uleb128 0x1d
	.4byte	.LASF103
	.byte	0x1
	.2byte	0x104
	.4byte	0x5ed
	.4byte	.LLST2
	.uleb128 0x1e
	.4byte	.LASF104
	.byte	0x1
	.2byte	0x104
	.4byte	0x5f8
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5f3
	.uleb128 0x7
	.4byte	0x228
	.uleb128 0x6
	.byte	0x4
	.4byte	0x407
	.uleb128 0x1f
	.4byte	.LASF149
	.byte	0x1
	.byte	0xae
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6f6
	.uleb128 0x20
	.4byte	.LASF100
	.byte	0x1
	.byte	0xae
	.4byte	0x25
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1b
	.4byte	.LASF106
	.byte	0x1
	.byte	0xb0
	.4byte	0xb1
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC0
	.byte	0x9f
	.uleb128 0x21
	.4byte	.LVL17
	.4byte	0x14d5
	.uleb128 0x22
	.4byte	.LVL18
	.4byte	0x14e0
	.4byte	0x672
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL19
	.4byte	0x14d5
	.uleb128 0x22
	.4byte	.LVL20
	.4byte	0x14e0
	.4byte	0x6b2
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL21
	.4byte	0x14d5
	.uleb128 0x24
	.4byte	.LVL22
	.4byte	0x14e0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	.LASF107
	.byte	0x1
	.2byte	0x1a3
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb5d
	.uleb128 0x1d
	.4byte	.LASF108
	.byte	0x1
	.2byte	0x1a4
	.4byte	0xdd
	.4byte	.LLST3
	.uleb128 0x1d
	.4byte	.LASF109
	.byte	0x1
	.2byte	0x1a5
	.4byte	0xdd
	.4byte	.LLST4
	.uleb128 0x1d
	.4byte	.LASF110
	.byte	0x1
	.2byte	0x1a6
	.4byte	0xdd
	.4byte	.LLST5
	.uleb128 0x1e
	.4byte	.LASF111
	.byte	0x1
	.2byte	0x1a7
	.4byte	0xdd
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1d
	.4byte	.LASF112
	.byte	0x1
	.2byte	0x1a8
	.4byte	0xdd
	.4byte	.LLST6
	.uleb128 0x1d
	.4byte	.LASF113
	.byte	0x1
	.2byte	0x1a9
	.4byte	0xdd
	.4byte	.LLST7
	.uleb128 0x1e
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x1aa
	.4byte	0xdd
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x26
	.4byte	.LASF114
	.byte	0x1
	.2byte	0x1b7
	.4byte	0xdd
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x27
	.string	"rc"
	.byte	0x1
	.2byte	0x1b9
	.4byte	0x25
	.uleb128 0x28
	.4byte	.LASF115
	.byte	0x1
	.2byte	0x1bd
	.4byte	0xdd
	.4byte	.LLST8
	.uleb128 0x29
	.4byte	.LASF116
	.byte	0x1
	.2byte	0x1ca
	.4byte	0xb5d
	.uleb128 0x26
	.4byte	.LASF117
	.byte	0x1
	.2byte	0x1cb
	.4byte	0x7a2
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.4byte	0x49e
	.4byte	.LBB21
	.4byte	.LBE21-.LBB21
	.byte	0x1
	.2byte	0x1ad
	.4byte	0x807
	.uleb128 0x2b
	.4byte	0x4aa
	.byte	0
	.uleb128 0x2c
	.4byte	.LBB22
	.4byte	.LBE22-.LBB22
	.uleb128 0x21
	.4byte	.LVL25
	.4byte	0x14eb
	.uleb128 0x22
	.4byte	.LVL26
	.4byte	0x14f6
	.4byte	0x7fc
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x21
	.4byte	.LVL27
	.4byte	0x1501
	.byte	0
	.byte	0
	.uleb128 0x2a
	.4byte	0x47e
	.4byte	.LBB23
	.4byte	.LBE23-.LBB23
	.byte	0x1
	.2byte	0x1ae
	.4byte	0x851
	.uleb128 0x2b
	.4byte	0x48a
	.byte	0
	.uleb128 0x2c
	.4byte	.LBB24
	.4byte	.LBE24-.LBB24
	.uleb128 0x21
	.4byte	.LVL28
	.4byte	0x14eb
	.uleb128 0x22
	.4byte	.LVL29
	.4byte	0x150c
	.4byte	0x846
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x21
	.4byte	.LVL30
	.4byte	0x1501
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LBB25
	.4byte	.LBE25-.LBB25
	.4byte	0x86d
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.2byte	0x1b3
	.4byte	0x25
	.4byte	.LLST9
	.byte	0
	.uleb128 0x2a
	.4byte	0x4fa
	.4byte	.LBB26
	.4byte	.LBE26-.LBB26
	.byte	0x1
	.2byte	0x1b9
	.4byte	0x8fe
	.uleb128 0x2f
	.4byte	0x541
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x2b
	.4byte	0x536
	.byte	0x40
	.uleb128 0x30
	.4byte	0x52b
	.4byte	.LLST10
	.uleb128 0x30
	.4byte	0x520
	.4byte	.LLST11
	.uleb128 0x2b
	.4byte	0x515
	.byte	0
	.uleb128 0x2b
	.4byte	0x50a
	.byte	0
	.uleb128 0x2c
	.4byte	.LBB27
	.4byte	.LBE27-.LBB27
	.uleb128 0x31
	.4byte	0x558
	.uleb128 0x21
	.4byte	.LVL39
	.4byte	0x14eb
	.uleb128 0x22
	.4byte	.LVL40
	.4byte	0x1517
	.4byte	0x8f3
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL41
	.4byte	0x1501
	.byte	0
	.byte	0
	.uleb128 0x2a
	.4byte	0x4fa
	.4byte	.LBB28
	.4byte	.LBE28-.LBB28
	.byte	0x1
	.2byte	0x1bb
	.4byte	0x98f
	.uleb128 0x2f
	.4byte	0x541
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x2b
	.4byte	0x536
	.byte	0x40
	.uleb128 0x30
	.4byte	0x52b
	.4byte	.LLST12
	.uleb128 0x30
	.4byte	0x520
	.4byte	.LLST13
	.uleb128 0x2b
	.4byte	0x515
	.byte	0
	.uleb128 0x2b
	.4byte	0x50a
	.byte	0x1
	.uleb128 0x2c
	.4byte	.LBB29
	.4byte	.LBE29-.LBB29
	.uleb128 0x31
	.4byte	0x558
	.uleb128 0x21
	.4byte	.LVL42
	.4byte	0x14eb
	.uleb128 0x22
	.4byte	.LVL43
	.4byte	0x1517
	.4byte	0x984
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL44
	.4byte	0x1501
	.byte	0
	.byte	0
	.uleb128 0x2a
	.4byte	0x4fa
	.4byte	.LBB30
	.4byte	.LBE30-.LBB30
	.byte	0x1
	.2byte	0x1bf
	.4byte	0xa1e
	.uleb128 0x30
	.4byte	0x541
	.4byte	.LLST14
	.uleb128 0x2b
	.4byte	0x536
	.byte	0x40
	.uleb128 0x2f
	.4byte	0x52b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2f
	.4byte	0x520
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x2b
	.4byte	0x515
	.byte	0
	.uleb128 0x2b
	.4byte	0x50a
	.byte	0
	.uleb128 0x2c
	.4byte	.LBB31
	.4byte	.LBE31-.LBB31
	.uleb128 0x31
	.4byte	0x558
	.uleb128 0x21
	.4byte	.LVL50
	.4byte	0x14eb
	.uleb128 0x22
	.4byte	.LVL51
	.4byte	0x1517
	.4byte	0xa13
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL52
	.4byte	0x1501
	.byte	0
	.byte	0
	.uleb128 0x2a
	.4byte	0x4fa
	.4byte	.LBB32
	.4byte	.LBE32-.LBB32
	.byte	0x1
	.2byte	0x1c1
	.4byte	0xaad
	.uleb128 0x30
	.4byte	0x541
	.4byte	.LLST15
	.uleb128 0x2b
	.4byte	0x536
	.byte	0x40
	.uleb128 0x2f
	.4byte	0x52b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2f
	.4byte	0x520
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x2b
	.4byte	0x515
	.byte	0
	.uleb128 0x2b
	.4byte	0x50a
	.byte	0x1
	.uleb128 0x2c
	.4byte	.LBB33
	.4byte	.LBE33-.LBB33
	.uleb128 0x31
	.4byte	0x558
	.uleb128 0x21
	.4byte	.LVL53
	.4byte	0x14eb
	.uleb128 0x22
	.4byte	.LVL54
	.4byte	0x1517
	.4byte	0xaa2
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL55
	.4byte	0x1501
	.byte	0
	.byte	0
	.uleb128 0x2a
	.4byte	0x4de
	.4byte	.LBB34
	.4byte	.LBE34-.LBB34
	.byte	0x1
	.2byte	0x1c3
	.4byte	0xadb
	.uleb128 0x32
	.4byte	0x4ee
	.4byte	0x3ff00044
	.uleb128 0x24
	.4byte	.LVL56
	.4byte	0x1522
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.4byte	0x4de
	.4byte	.LBB36
	.4byte	.LBE36-.LBB36
	.byte	0x1
	.2byte	0x1c4
	.4byte	0xb09
	.uleb128 0x32
	.4byte	0x4ee
	.4byte	0x3ff0005c
	.uleb128 0x24
	.4byte	.LVL59
	.4byte	0x1522
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.4byte	0x4be
	.4byte	.LBB38
	.4byte	.LBE38-.LBB38
	.byte	0x1
	.2byte	0x1c5
	.4byte	0xb53
	.uleb128 0x2b
	.4byte	0x4ca
	.byte	0
	.uleb128 0x2c
	.4byte	.LBB39
	.4byte	.LBE39-.LBB39
	.uleb128 0x21
	.4byte	.LVL61
	.4byte	0x14eb
	.uleb128 0x22
	.4byte	.LVL62
	.4byte	0x152d
	.4byte	0xb48
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x21
	.4byte	.LVL63
	.4byte	0x1501
	.byte	0
	.byte	0
	.uleb128 0x33
	.4byte	.LVL64
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb63
	.uleb128 0x34
	.4byte	0xa9
	.uleb128 0x25
	.4byte	.LASF118
	.byte	0x1
	.2byte	0x177
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcd4
	.uleb128 0x1d
	.4byte	.LASF104
	.byte	0x1
	.2byte	0x177
	.4byte	0xcd4
	.4byte	.LLST16
	.uleb128 0x28
	.4byte	.LASF108
	.byte	0x1
	.2byte	0x179
	.4byte	0xdd
	.4byte	.LLST17
	.uleb128 0x28
	.4byte	.LASF109
	.byte	0x1
	.2byte	0x17a
	.4byte	0xdd
	.4byte	.LLST18
	.uleb128 0x28
	.4byte	.LASF110
	.byte	0x1
	.2byte	0x17b
	.4byte	0xdd
	.4byte	.LLST19
	.uleb128 0x28
	.4byte	.LASF111
	.byte	0x1
	.2byte	0x17c
	.4byte	0xdd
	.4byte	.LLST20
	.uleb128 0x28
	.4byte	.LASF112
	.byte	0x1
	.2byte	0x17d
	.4byte	0xdd
	.4byte	.LLST21
	.uleb128 0x28
	.4byte	.LASF113
	.byte	0x1
	.2byte	0x17e
	.4byte	0xdd
	.4byte	.LLST22
	.uleb128 0x35
	.4byte	.Ldebug_ranges0+0
	.4byte	0xc9c
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.2byte	0x181
	.4byte	0x25
	.4byte	.LLST23
	.uleb128 0x2c
	.4byte	.LBB41
	.4byte	.LBE41-.LBB41
	.uleb128 0x28
	.4byte	.LASF119
	.byte	0x1
	.2byte	0x182
	.4byte	0xcdf
	.4byte	.LLST24
	.uleb128 0x21
	.4byte	.LVL68
	.4byte	0x14d5
	.uleb128 0x22
	.4byte	.LVL69
	.4byte	0x14e0
	.4byte	0xc5e
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC20
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC17
	.byte	0
	.uleb128 0x21
	.4byte	.LVL74
	.4byte	0x14d5
	.uleb128 0x24
	.4byte	.LVL75
	.4byte	0x14e0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC20
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL83
	.4byte	0x6f6
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xcda
	.uleb128 0x7
	.4byte	0x407
	.uleb128 0x6
	.byte	0x4
	.4byte	0xce5
	.uleb128 0x7
	.4byte	0x397
	.uleb128 0x25
	.4byte	.LASF120
	.byte	0x1
	.2byte	0x14a
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd5f
	.uleb128 0x1e
	.4byte	.LASF121
	.byte	0x1
	.2byte	0x14a
	.4byte	0xcd4
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x21
	.4byte	.LVL85
	.4byte	0x14d5
	.uleb128 0x22
	.4byte	.LVL86
	.4byte	0x14e0
	.4byte	0xd45
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC27
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x21
	.4byte	.LVL87
	.4byte	0x1538
	.uleb128 0x24
	.4byte	.LVL88
	.4byte	0xb68
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	.LASF125
	.byte	0x1
	.byte	0x44
	.4byte	0x1ad
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfa3
	.uleb128 0x19
	.string	"bs"
	.byte	0x1
	.byte	0x44
	.4byte	0xfa3
	.4byte	.LLST25
	.uleb128 0x1b
	.4byte	.LASF122
	.byte	0x1
	.byte	0x46
	.4byte	0xfa9
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x37
	.4byte	.LASF123
	.byte	0x1
	.byte	0x47
	.4byte	0xb1
	.4byte	.LLST26
	.uleb128 0x38
	.string	"err"
	.byte	0x1
	.byte	0x48
	.4byte	0x1b4
	.4byte	.LLST27
	.uleb128 0x1b
	.4byte	.LASF124
	.byte	0x1
	.byte	0x49
	.4byte	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2d
	.4byte	.LBB43
	.4byte	.LBE43-.LBB43
	.4byte	0xe48
	.uleb128 0x38
	.string	"i"
	.byte	0x1
	.byte	0x5b
	.4byte	0x25
	.4byte	.LLST28
	.uleb128 0x2c
	.4byte	.LBB44
	.4byte	.LBE44-.LBB44
	.uleb128 0x37
	.4byte	.LASF103
	.byte	0x1
	.byte	0x5c
	.4byte	0xfa9
	.4byte	.LLST29
	.uleb128 0x21
	.4byte	.LVL117
	.4byte	0x14d5
	.uleb128 0x24
	.4byte	.LVL119
	.4byte	0x14e0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC58
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x9
	.byte	0x74
	.sleb128 0
	.byte	0x35
	.byte	0x24
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x23
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x2
	.byte	0x71
	.sleb128 16
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL90
	.4byte	0x1543
	.4byte	0xe64
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x40
	.byte	0x3c
	.byte	0x24
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0xc00
	.byte	0
	.uleb128 0x21
	.4byte	.LVL92
	.4byte	0x14d5
	.uleb128 0x22
	.4byte	.LVL94
	.4byte	0x14e0
	.4byte	0xea9
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC50
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x3
	.byte	0x40
	.byte	0x3c
	.byte	0x24
	.uleb128 0x23
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL96
	.4byte	0x154e
	.4byte	0xec2
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x21
	.4byte	.LVL97
	.4byte	0x14d5
	.uleb128 0x22
	.4byte	.LVL98
	.4byte	0x14e0
	.4byte	0xef9
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC52
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x21
	.4byte	.LVL101
	.4byte	0x14d5
	.uleb128 0x22
	.4byte	.LVL102
	.4byte	0x14e0
	.4byte	0xf2a
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC54
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL103
	.4byte	0x14d5
	.uleb128 0x22
	.4byte	.LVL104
	.4byte	0x14e0
	.4byte	0xf5b
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC56
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL121
	.4byte	0x1559
	.4byte	0xf6f
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL122
	.4byte	0x14d5
	.uleb128 0x24
	.4byte	.LVL123
	.4byte	0x14e0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC60
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x473
	.uleb128 0x6
	.byte	0x4
	.4byte	0xfaf
	.uleb128 0x7
	.4byte	0x294
	.uleb128 0x36
	.4byte	.LASF126
	.byte	0x1
	.byte	0xbe
	.4byte	0x25
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x125f
	.uleb128 0x19
	.string	"bs"
	.byte	0x1
	.byte	0xbe
	.4byte	0x5a9
	.4byte	.LLST30
	.uleb128 0x39
	.string	"sa"
	.byte	0x1
	.byte	0xc0
	.4byte	0x1fc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x39
	.string	"sb"
	.byte	0x1
	.byte	0xc0
	.4byte	0x1fc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x37
	.4byte	.LASF127
	.byte	0x1
	.byte	0xc1
	.4byte	0x125f
	.4byte	.LLST31
	.uleb128 0x2d
	.4byte	.LBB45
	.4byte	.LBE45-.LBB45
	.4byte	0x1119
	.uleb128 0x37
	.4byte	.LASF128
	.byte	0x1
	.byte	0xdf
	.4byte	0x1ad
	.4byte	.LLST32
	.uleb128 0x37
	.4byte	.LASF129
	.byte	0x1
	.byte	0xe0
	.4byte	0xb1
	.4byte	.LLST33
	.uleb128 0x37
	.4byte	.LASF47
	.byte	0x1
	.byte	0xe1
	.4byte	0x25
	.4byte	.LLST34
	.uleb128 0x2d
	.4byte	.LBB46
	.4byte	.LBE46-.LBB46
	.4byte	0x105c
	.uleb128 0x37
	.4byte	.LASF130
	.byte	0x1
	.byte	0xf1
	.4byte	0x25
	.4byte	.LLST35
	.byte	0
	.uleb128 0x22
	.4byte	.LVL147
	.4byte	0x15ae
	.4byte	0x1071
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x22
	.4byte	.LVL148
	.4byte	0x15ae
	.4byte	0x1085
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x22
	.4byte	.LVL152
	.4byte	0x15ae
	.4byte	0x109a
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x22
	.4byte	.LVL156
	.4byte	0x15ae
	.4byte	0x10ae
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x21
	.4byte	.LVL165
	.4byte	0x14d5
	.uleb128 0x22
	.4byte	.LVL166
	.4byte	0x14e0
	.4byte	0x10e5
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC71
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x21
	.4byte	.LVL167
	.4byte	0x14d5
	.uleb128 0x24
	.4byte	.LVL168
	.4byte	0x14e0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC73
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL126
	.4byte	0x14d5
	.uleb128 0x22
	.4byte	.LVL127
	.4byte	0x14e0
	.4byte	0x1157
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC64
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x23
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL130
	.4byte	0x1543
	.uleb128 0x21
	.4byte	.LVL132
	.4byte	0x14d5
	.uleb128 0x22
	.4byte	.LVL134
	.4byte	0x14e0
	.4byte	0x119e
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC50
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x23
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL137
	.4byte	0x15b9
	.4byte	0x11bf
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL138
	.4byte	0x15b9
	.4byte	0x11e0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x73
	.sleb128 4096
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL139
	.4byte	0x1559
	.4byte	0x11f4
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL142
	.4byte	0x14d5
	.uleb128 0x22
	.4byte	.LVL143
	.4byte	0x14e0
	.4byte	0x122b
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC67
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x21
	.4byte	.LVL144
	.4byte	0x14d5
	.uleb128 0x24
	.4byte	.LVL145
	.4byte	0x14e0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC69
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1265
	.uleb128 0x7
	.4byte	0x1fc
	.uleb128 0x3a
	.4byte	.LASF150
	.byte	0x1
	.2byte	0x117
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x14ad
	.uleb128 0x3b
	.string	"bs"
	.byte	0x1
	.2byte	0x117
	.4byte	0x5a9
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1d
	.4byte	.LASF131
	.byte	0x1
	.2byte	0x117
	.4byte	0x25
	.4byte	.LLST36
	.uleb128 0x28
	.4byte	.LASF100
	.byte	0x1
	.2byte	0x119
	.4byte	0x25
	.4byte	.LLST37
	.uleb128 0x26
	.4byte	.LASF132
	.byte	0x1
	.2byte	0x11a
	.4byte	0x228
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x26
	.4byte	.LASF121
	.byte	0x1
	.2byte	0x11b
	.4byte	0x407
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0x22
	.4byte	.LVL173
	.4byte	0x5b4
	.4byte	0x12e8
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 16
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.byte	0
	.uleb128 0x22
	.4byte	.LVL174
	.4byte	0xcea
	.4byte	0x12fd
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.byte	0
	.uleb128 0x21
	.4byte	.LVL175
	.4byte	0x14d5
	.uleb128 0x22
	.4byte	.LVL176
	.4byte	0x14e0
	.4byte	0x1334
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC76
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x22
	.4byte	.LVL178
	.4byte	0x564
	.4byte	0x134e
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL179
	.4byte	0x5b4
	.4byte	0x136a
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.byte	0
	.uleb128 0x22
	.4byte	.LVL180
	.4byte	0xcea
	.4byte	0x137f
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.byte	0
	.uleb128 0x22
	.4byte	.LVL181
	.4byte	0x5fe
	.4byte	0x1393
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL187
	.4byte	0x564
	.4byte	0x13ad
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL188
	.4byte	0x5b4
	.4byte	0x13c9
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.byte	0
	.uleb128 0x22
	.4byte	.LVL189
	.4byte	0xcea
	.4byte	0x13de
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.byte	0
	.uleb128 0x22
	.4byte	.LVL190
	.4byte	0x5fe
	.4byte	0x13f2
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL192
	.4byte	0x5b4
	.4byte	0x140d
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 16
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.byte	0
	.uleb128 0x21
	.4byte	.LVL193
	.4byte	0x14d5
	.uleb128 0x22
	.4byte	.LVL194
	.4byte	0x14e0
	.4byte	0x1444
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC78
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x22
	.4byte	.LVL195
	.4byte	0xcea
	.4byte	0x1459
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.byte	0
	.uleb128 0x21
	.4byte	.LVL196
	.4byte	0x14d5
	.uleb128 0x22
	.4byte	.LVL197
	.4byte	0x14e0
	.4byte	0x1490
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC80
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x24
	.4byte	.LVL198
	.4byte	0x15c2
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0xe0
	.byte	0
	.byte	0
	.uleb128 0x39
	.string	"TAG"
	.byte	0x1
	.byte	0x35
	.4byte	0x14bf
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC2
	.byte	0x9f
	.uleb128 0x7
	.4byte	0xb1
	.uleb128 0x3c
	.4byte	.LASF151
	.byte	0xa
	.byte	0x2c
	.4byte	0x29f
	.uleb128 0x5
	.byte	0x3
	.4byte	esp_image_spi_freq_t
	.uleb128 0x3d
	.4byte	.LASF133
	.4byte	.LASF133
	.byte	0x6
	.byte	0x57
	.uleb128 0x3d
	.4byte	.LASF134
	.4byte	.LASF134
	.byte	0x6
	.byte	0x6b
	.uleb128 0x3d
	.4byte	.LASF135
	.4byte	.LASF135
	.byte	0xc
	.byte	0x18
	.uleb128 0x3d
	.4byte	.LASF92
	.4byte	.LASF92
	.byte	0x2
	.byte	0xa4
	.uleb128 0x3d
	.4byte	.LASF136
	.4byte	.LASF136
	.byte	0xc
	.byte	0x19
	.uleb128 0x3d
	.4byte	.LASF91
	.4byte	.LASF91
	.byte	0x2
	.byte	0x94
	.uleb128 0x3d
	.4byte	.LASF137
	.4byte	.LASF137
	.byte	0x2
	.byte	0x47
	.uleb128 0x3d
	.4byte	.LASF138
	.4byte	.LASF138
	.byte	0xc
	.byte	0x1e
	.uleb128 0x3d
	.4byte	.LASF94
	.4byte	.LASF94
	.byte	0x2
	.byte	0xb4
	.uleb128 0x3d
	.4byte	.LASF139
	.4byte	.LASF139
	.byte	0xd
	.byte	0x29
	.uleb128 0x3d
	.4byte	.LASF140
	.4byte	.LASF140
	.byte	0xe
	.byte	0x31
	.uleb128 0x3d
	.4byte	.LASF141
	.4byte	.LASF141
	.byte	0xf
	.byte	0x26
	.uleb128 0x3d
	.4byte	.LASF142
	.4byte	.LASF142
	.byte	0xe
	.byte	0x39
	.uleb128 0x3e
	.uleb128 0x12
	.byte	0x9e
	.uleb128 0x10
	.byte	0x42
	.byte	0x6f
	.byte	0x74
	.byte	0x68
	.byte	0x20
	.byte	0x4f
	.byte	0x54
	.byte	0x41
	.byte	0x20
	.byte	0x76
	.byte	0x61
	.byte	0x6c
	.byte	0x75
	.byte	0x65
	.byte	0x73
	.byte	0
	.uleb128 0x3e
	.uleb128 0x19
	.byte	0x9e
	.uleb128 0x17
	.byte	0x4f
	.byte	0x6e
	.byte	0x6c
	.byte	0x79
	.byte	0x20
	.byte	0x4f
	.byte	0x54
	.byte	0x41
	.byte	0x20
	.byte	0x73
	.byte	0x65
	.byte	0x71
	.byte	0x75
	.byte	0x65
	.byte	0x6e
	.byte	0x63
	.byte	0x65
	.byte	0x20
	.byte	0x41
	.byte	0x20
	.byte	0x69
	.byte	0x73
	.byte	0
	.uleb128 0x3e
	.uleb128 0x19
	.byte	0x9e
	.uleb128 0x17
	.byte	0x4f
	.byte	0x6e
	.byte	0x6c
	.byte	0x79
	.byte	0x20
	.byte	0x4f
	.byte	0x54
	.byte	0x41
	.byte	0x20
	.byte	0x73
	.byte	0x65
	.byte	0x71
	.byte	0x75
	.byte	0x65
	.byte	0x6e
	.byte	0x63
	.byte	0x65
	.byte	0x20
	.byte	0x42
	.byte	0x20
	.byte	0x69
	.byte	0x73
	.byte	0
	.uleb128 0x3d
	.4byte	.LASF143
	.4byte	.LASF143
	.byte	0x10
	.byte	0x27
	.uleb128 0x3f
	.4byte	.LASF144
	.4byte	.LASF144
	.uleb128 0x3f
	.4byte	.LASF145
	.4byte	.LASF145
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
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
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
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x20
	.uleb128 0xb
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
	.uleb128 0x19
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
	.uleb128 0x1e
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
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x18
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
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
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x3e
	.uleb128 0x36
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x3f
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
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
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
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL4
	.4byte	.LVL6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x3
	.byte	0x73
	.sleb128 -2
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL10
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL12
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL14
	.4byte	.LFE25
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL23
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL38
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL23
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL37
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL23
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL34
	.4byte	.LVL36
	.2byte	0x5
	.byte	0x74
	.sleb128 -65535
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL23
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL48
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL23
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL31
	.4byte	.LVL58
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL58
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL47
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0xa
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0x23
	.uleb128 0xffff
	.byte	0x40
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL30
	.4byte	.LVL32
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL38
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL46
	.4byte	.LVL49
	.2byte	0x7
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x74
	.sleb128 0
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL49
	.4byte	.LFE29
	.2byte	0x9
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x11
	.sleb128 -65536
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL38
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL45
	.4byte	.LVL49
	.2byte	0x7
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x74
	.sleb128 0
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL49
	.4byte	.LFE29
	.2byte	0x9
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x11
	.sleb128 -65536
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL41
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL46
	.4byte	.LVL49
	.2byte	0x7
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x74
	.sleb128 0
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL49
	.4byte	.LFE29
	.2byte	0x9
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x11
	.sleb128 -65536
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL41
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL45
	.4byte	.LVL49
	.2byte	0x7
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x74
	.sleb128 0
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL49
	.4byte	.LFE29
	.2byte	0x9
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x11
	.sleb128 -65536
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL49
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0xa
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0x23
	.uleb128 0xffff
	.byte	0x40
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL52
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0xa
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0x23
	.uleb128 0xffff
	.byte	0x40
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL65
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL82
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL66
	.4byte	.LVL67
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL67
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL71
	.4byte	.LFE28
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL66
	.4byte	.LVL67
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL67
	.4byte	.LVL72
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL72
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL73
	.4byte	.LFE28
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL66
	.4byte	.LVL67
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL67
	.4byte	.LFE28
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL66
	.4byte	.LVL67
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL67
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL77
	.4byte	.LFE28
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL66
	.4byte	.LVL67
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL67
	.4byte	.LFE28
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL66
	.4byte	.LVL67
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL67
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL80
	.4byte	.LFE28
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL66
	.4byte	.LVL67
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL67
	.4byte	.LFE28
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL67
	.4byte	.LVL81
	.2byte	0xa
	.byte	0x73
	.sleb128 2
	.byte	0x33
	.byte	0x24
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0xc
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL89
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL93
	.4byte	.LVL95
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL95
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
	.4byte	.LVL124
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL124
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL106
	.4byte	.LVL107
	.2byte	0x6
	.byte	0x3
	.4byte	.LC45
	.byte	0x9f
	.4byte	.LVL107
	.4byte	.LVL108
	.2byte	0x6
	.byte	0x3
	.4byte	.LC43
	.byte	0x9f
	.4byte	.LVL108
	.4byte	.LVL109
	.2byte	0x6
	.byte	0x3
	.4byte	.LC45
	.byte	0x9f
	.4byte	.LVL109
	.4byte	.LVL110
	.2byte	0x6
	.byte	0x3
	.4byte	.LC31
	.byte	0x9f
	.4byte	.LVL110
	.4byte	.LVL111
	.2byte	0x6
	.byte	0x3
	.4byte	.LC45
	.byte	0x9f
	.4byte	.LVL111
	.4byte	.LVL112
	.2byte	0x6
	.byte	0x3
	.4byte	.LC41
	.byte	0x9f
	.4byte	.LVL112
	.4byte	.LVL113
	.2byte	0x6
	.byte	0x3
	.4byte	.LC45
	.byte	0x9f
	.4byte	.LVL113
	.4byte	.LVL114
	.2byte	0x6
	.byte	0x3
	.4byte	.LC37
	.byte	0x9f
	.4byte	.LVL114
	.4byte	.LVL115
	.2byte	0x6
	.byte	0x3
	.4byte	.LC35
	.byte	0x9f
	.4byte	.LVL115
	.4byte	.LVL116
	.2byte	0x6
	.byte	0x3
	.4byte	.LC45
	.byte	0x9f
	.4byte	.LVL116
	.4byte	.LVL120
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL96
	.4byte	.LVL97-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL100
	.4byte	.LVL101-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL104
	.4byte	.LVL105
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL105
	.4byte	.LFE21
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL106
	.4byte	.LVL118
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL118
	.4byte	.LVL119-1
	.2byte	0x3
	.byte	0x78
	.sleb128 -12
	.byte	0x9f
	.4byte	.LVL119-1
	.4byte	.LVL120
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
.LLST30:
	.4byte	.LVL125
	.4byte	.LVL128
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL128
	.4byte	.LVL129
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL129
	.4byte	.LVL135
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL135
	.4byte	.LVL136
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL136
	.4byte	.LVL141
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL141
	.4byte	.LVL146
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL146
	.4byte	.LVL161
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL161
	.4byte	.LVL163
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL163
	.4byte	.LVL164
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL164
	.4byte	.LVL169
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL169
	.4byte	.LVL170
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL170
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL131
	.4byte	.LVL133
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL136
	.4byte	.LVL140
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL146
	.4byte	.LVL149
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL149
	.4byte	.LVL151
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL151
	.4byte	.LVL153
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL153
	.4byte	.LVL155
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL155
	.4byte	.LVL157
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL157
	.4byte	.LVL159
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL159
	.4byte	.LVL160
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL160
	.4byte	.LVL169
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL149
	.4byte	.LVL151
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+5476
	.sleb128 0
	.4byte	.LVL153
	.4byte	.LVL155
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+5496
	.sleb128 0
	.4byte	.LVL157
	.4byte	.LVL159
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+5523
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL150
	.4byte	.LVL151
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL154
	.4byte	.LVL155
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL158
	.4byte	.LVL159
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL160
	.4byte	.LVL169
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL161
	.4byte	.LVL162
	.2byte	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x1d
	.byte	0x9f
	.4byte	.LVL162
	.4byte	.LVL163
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL171
	.4byte	.LVL185
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL185
	.4byte	.LVL186
	.2byte	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL186
	.4byte	.LFE26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL172
	.4byte	.LVL177
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL177
	.4byte	.LVL183
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL183
	.4byte	.LVL184
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL184
	.4byte	.LVL185
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL185
	.4byte	.LFE26
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x5c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB40
	.4byte	.LBE40
	.4byte	.LBB42
	.4byte	.LBE42
	.4byte	0
	.4byte	0
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF29:
	.string	"EXT_EVENT1_TRIG"
.LASF110:
	.string	"drom_size"
.LASF99:
	.string	"psize"
.LASF97:
	.string	"vaddr"
.LASF146:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF127:
	.string	"ota_select_map"
.LASF76:
	.string	"start_addr"
.LASF57:
	.string	"flags"
.LASF42:
	.string	"SDIO_IDLE_INT"
.LASF0:
	.string	"unsigned int"
.LASF101:
	.string	"index_to_partition"
.LASF7:
	.string	"__int32_t"
.LASF65:
	.string	"spi_speed"
.LASF83:
	.string	"factory"
.LASF84:
	.string	"test"
.LASF82:
	.string	"ota_info"
.LASF135:
	.string	"esp_dport_access_stall_other_cpu_start"
.LASF133:
	.string	"esp_log_timestamp"
.LASF35:
	.string	"UART1_TRIG"
.LASF75:
	.string	"esp_image_segment_header_t"
.LASF131:
	.string	"start_index"
.LASF96:
	.string	"cache_flash_mmu_set"
.LASF41:
	.string	"REJECT_INT"
.LASF142:
	.string	"bootloader_munmap"
.LASF11:
	.string	"__intptr_t"
.LASF72:
	.string	"esp_image_header_t"
.LASF123:
	.string	"partition_usage"
.LASF48:
	.string	"seq_label"
.LASF19:
	.string	"uint32_t"
.LASF39:
	.string	"NO_INT"
.LASF108:
	.string	"drom_addr"
.LASF94:
	.string	"Cache_Read_Enable_rom"
.LASF98:
	.string	"paddr"
.LASF100:
	.string	"index"
.LASF66:
	.string	"spi_size"
.LASF88:
	.string	"Cache_Flush"
.LASF10:
	.string	"long long unsigned int"
.LASF132:
	.string	"part"
.LASF37:
	.string	"SAR_TRIG"
.LASF6:
	.string	"__uint16_t"
.LASF128:
	.string	"ota_valid"
.LASF23:
	.string	"ESP_LOG_WARN"
.LASF105:
	.string	"invalid"
.LASF115:
	.string	"irom_page_count"
.LASF27:
	.string	"NO_SLEEP"
.LASF107:
	.string	"set_cache_and_start_app"
.LASF58:
	.string	"esp_partition_info_t"
.LASF50:
	.string	"offset"
.LASF92:
	.string	"Cache_Read_Disable_rom"
.LASF45:
	.string	"_Bool"
.LASF59:
	.string	"ESP_IMAGE_SPI_SPEED_40M"
.LASF80:
	.string	"image_len"
.LASF28:
	.string	"EXT_EVENT0_TRIG"
.LASF21:
	.string	"ESP_LOG_NONE"
.LASF126:
	.string	"bootloader_utility_get_selected_boot_partition"
.LASF36:
	.string	"TOUCH_TRIG"
.LASF44:
	.string	"RTC_TIME_VALID_INT"
.LASF147:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/bootloader_utility.c"
.LASF138:
	.string	"esp_dport_access_reg_read"
.LASF15:
	.string	"char"
.LASF104:
	.string	"data"
.LASF81:
	.string	"esp_image_metadata_t"
.LASF113:
	.string	"irom_size"
.LASF16:
	.string	"uint8_t"
.LASF93:
	.string	"Cache_Read_Enable"
.LASF49:
	.string	"esp_ota_select_entry_t"
.LASF124:
	.string	"num_partitions"
.LASF86:
	.string	"selected_subtype"
.LASF34:
	.string	"UART0_TRIG"
.LASF9:
	.string	"long long int"
.LASF78:
	.string	"segments"
.LASF103:
	.string	"partition"
.LASF129:
	.string	"ota_msg"
.LASF95:
	.string	"DPORT_REG_READ"
.LASF106:
	.string	"not_bootable"
.LASF89:
	.string	"Cache_Read_Disable"
.LASF145:
	.string	"memset"
.LASF61:
	.string	"ESP_IMAGE_SPI_SPEED_20M"
.LASF51:
	.string	"size"
.LASF109:
	.string	"drom_load_addr"
.LASF150:
	.string	"bootloader_utility_load_boot_image"
.LASF24:
	.string	"ESP_LOG_INFO"
.LASF77:
	.string	"image"
.LASF31:
	.string	"TIMER_EXPIRE"
.LASF119:
	.string	"header"
.LASF134:
	.string	"esp_log_write"
.LASF114:
	.string	"drom_page_count"
.LASF20:
	.string	"intptr_t"
.LASF17:
	.string	"uint16_t"
.LASF55:
	.string	"subtype"
.LASF140:
	.string	"bootloader_mmap"
.LASF74:
	.string	"data_len"
.LASF102:
	.string	"try_load_partition"
.LASF4:
	.string	"short int"
.LASF125:
	.string	"bootloader_utility_load_partition_table"
.LASF130:
	.string	"ota_slot"
.LASF12:
	.string	"long int"
.LASF139:
	.string	"bootloader_random_disable"
.LASF73:
	.string	"load_addr"
.LASF64:
	.string	"spi_mode"
.LASF141:
	.string	"esp_partition_table_verify"
.LASF112:
	.string	"irom_load_addr"
.LASF43:
	.string	"RTC_WDT_INT"
.LASF85:
	.string	"app_count"
.LASF5:
	.string	"__uint8_t"
.LASF118:
	.string	"unpack_load_app"
.LASF53:
	.string	"magic"
.LASF68:
	.string	"wp_pin"
.LASF40:
	.string	"WAKEUP_INT"
.LASF120:
	.string	"load_image"
.LASF30:
	.string	"GPIO_TRIG"
.LASF13:
	.string	"sizetype"
.LASF14:
	.string	"long unsigned int"
.LASF79:
	.string	"segment_data"
.LASF26:
	.string	"ESP_LOG_VERBOSE"
.LASF18:
	.string	"int32_t"
.LASF122:
	.string	"partitions"
.LASF117:
	.string	"entry"
.LASF32:
	.string	"SDIO_TRIG"
.LASF54:
	.string	"type"
.LASF3:
	.string	"unsigned char"
.LASF8:
	.string	"__uint32_t"
.LASF87:
	.string	"bootloader_state_t"
.LASF151:
	.string	"esp_image_spi_freq_t"
.LASF46:
	.string	"esp_err_t"
.LASF71:
	.string	"hash_appended"
.LASF69:
	.string	"spi_pin_drv"
.LASF56:
	.string	"label"
.LASF25:
	.string	"ESP_LOG_DEBUG"
.LASF90:
	.string	"cpu_no"
.LASF2:
	.string	"signed char"
.LASF1:
	.string	"short unsigned int"
.LASF144:
	.string	"memcpy"
.LASF38:
	.string	"BT_TRIG"
.LASF62:
	.string	"ESP_IMAGE_SPI_SPEED_80M"
.LASF67:
	.string	"entry_addr"
.LASF70:
	.string	"reserved"
.LASF60:
	.string	"ESP_IMAGE_SPI_SPEED_26M"
.LASF148:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\bootloader_support"
.LASF149:
	.string	"log_invalid_app_partition"
.LASF33:
	.string	"MAC_TRIG"
.LASF91:
	.string	"Cache_Flush_rom"
.LASF111:
	.string	"irom_addr"
.LASF136:
	.string	"esp_dport_access_stall_other_cpu_end"
.LASF116:
	.string	"entry_t"
.LASF121:
	.string	"image_data"
.LASF143:
	.string	"bootloader_common_ota_select_valid"
.LASF52:
	.string	"esp_partition_pos_t"
.LASF137:
	.string	"cache_flash_mmu_set_rom"
.LASF47:
	.string	"ota_seq"
.LASF22:
	.string	"ESP_LOG_ERROR"
.LASF63:
	.string	"segment_count"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
