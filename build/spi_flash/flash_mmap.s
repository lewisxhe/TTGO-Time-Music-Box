	.file	"flash_mmap.c"
	.text
.Ltext0:
	.section	.iram1,"ax",@progbits
	.literal_position
	.literal .LC0, 1061158912
	.literal .LC1, 1074593792
	.align	4
	.type	get_mmu_region, @function
get_mmu_region:
.LFB26:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/spi_flash/flash_mmap.c"
	.loc 1 103 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 104 0
	bnez.n	a2, .L2
	.loc 1 106 0
	movi.n	a8, 0
	s32i.n	a8, a3, 0
	.loc 1 107 0
	movi.n	a3, 0x40
.LVL1:
	s32i.n	a3, a4, 0
	.loc 1 108 0
	l32r	a3, .LC0
	s32i.n	a3, a5, 0
	retw.n
.LVL2:
.L2:
	.loc 1 111 0
	movi.n	a8, 0x4d
	s32i.n	a8, a3, 0
	.loc 1 112 0
	movi	a3, 0x73
.LVL3:
	s32i.n	a3, a4, 0
	.loc 1 113 0
	l32r	a3, .LC1
	s32i.n	a3, a5, 0
	retw.n
.LFE26:
	.size	get_mmu_region, .-get_mmu_region
	.literal_position
	.literal .LC2, s_mmap_page_refcnt
	.literal .LC3, 1072758784
	.literal .LC4, 1072766976
	.align	4
	.type	spi_flash_mmap_init, @function
spi_flash_mmap_init:
.LFB25:
	.loc 1 78 0
	entry	sp, 32
.LCFI1:
	.loc 1 79 0
	l32r	a2, .LC2
	l8ui	a2, a2, 0
	bnez.n	a2, .L4
.LBB50:
	.loc 1 82 0
#APP
# 82 "D:/ESP32/esp-idf-v3.1-rc1/components/spi_flash/flash_mmap.c" 1
	rsil	a6, 3

# 0 "" 2
.LVL4:
#NO_APP
.LBE50:
.LBB51:
	.loc 1 83 0
	movi.n	a3, 0
	j	.L6
.LVL5:
.L11:
.LBB52:
	.loc 1 84 0
	slli	a5, a3, 2
	l32r	a4, .LC3
	add.n	a4, a5, a4
.LVL6:
.LBB53:
.LBB54:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/dport_access.h"
	.loc 2 112 0
	mov.n	a10, a4
	call8	esp_dport_access_sequence_reg_read
.LVL7:
	mov.n	a2, a10
.LBE54:
.LBE53:
	.loc 1 85 0
	l32r	a8, .LC4
	add.n	a5, a5, a8
.LVL8:
.LBB55:
.LBB56:
	.loc 2 112 0
	mov.n	a10, a5
	call8	esp_dport_access_sequence_reg_read
.LVL9:
.LBE56:
.LBE55:
	.loc 1 87 0
	beq	a2, a10, .L7
.LVL10:
	.loc 1 90 0
	movi	a2, 0x100
	memw
	s32i.n	a2, a4, 0
.LVL11:
.L7:
	.loc 1 92 0
	bbsi	a2, 8, .L8
	.loc 1 92 0 is_stmt 0 discriminator 1
	movi.n	a11, 1
	movi.n	a8, 0
	mov.n	a9, a8
	moveqz	a9, a11, a3
	addi	a10, a3, -77
	moveqz	a8, a11, a10
	or	a8, a8, a9
	bnez.n	a8, .L9
	.loc 1 92 0 discriminator 2
	beqz.n	a2, .L8
.L9:
	.loc 1 93 0 is_stmt 1
	l32r	a2, .LC2
.LVL12:
	add.n	a2, a2, a3
	movi.n	a4, 1
.LVL13:
	s8i	a4, a2, 0
	j	.L10
.LVL14:
.L8:
	.loc 1 95 0
	movi	a2, 0x100
.LVL15:
	memw
	s32i.n	a2, a4, 0
	.loc 1 96 0
	memw
	s32i.n	a2, a5, 0
.LVL16:
.L10:
.LBE52:
	.loc 1 83 0 discriminator 2
	addi.n	a3, a3, 1
.LVL17:
.L6:
	.loc 1 83 0 is_stmt 0 discriminator 1
	movi	a2, 0xff
	bge	a2, a3, .L11
.LBE51:
	.loc 1 99 0 is_stmt 1
	mov.n	a10, a6
	call8	_xtos_set_intlevel
.LVL18:
.L4:
	retw.n
.LFE25:
	.size	spi_flash_mmap_init, .-spi_flash_mmap_init
	.literal_position
	.literal .LC5, -65536
	.literal .LC6, 65535
	.literal .LC7, written_pages
	.literal .LC8, 65536
	.align	4
	.type	spi_flash_ensure_unmodified_region, @function
spi_flash_ensure_unmodified_region:
.LFB33:
	.loc 1 345 0
.LVL19:
	entry	sp, 32
.LCFI2:
.LVL20:
.LBB65:
.LBB66:
	.loc 1 353 0
	l32r	a8, .LC5
	and	a13, a2, a8
.LVL21:
	.loc 1 354 0
	sub	a2, a2, a13
.LVL22:
	add.n	a3, a3, a2
.LVL23:
	.loc 1 355 0
	l32r	a12, .LC6
	add.n	a2, a3, a12
	and	a12, a2, a8
.LVL24:
.LBB67:
	.loc 1 356 0
	mov.n	a8, a13
	j	.L13
.LVL25:
.L16:
.LBB68:
	.loc 1 357 0
	extui	a9, a8, 16, 16
.LVL26:
	.loc 1 358 0
	movi	a10, 0xff
	blt	a10, a9, .L17
	.loc 1 362 0
	srli	a11, a9, 5
.LVL27:
	.loc 1 363 0
	movi.n	a10, 1
	ssl	a9
	sll	a9, a10
.LVL28:
	.loc 1 367 0
	l32r	a10, .LC7
	addx4	a10, a11, a10
	l32i.n	a10, a10, 0
	bnone	a9, a10, .L15
.LVL29:
.LBB69:
.LBB70:
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/cache.h"
	.loc 3 149 0
	call8	esp_dport_access_stall_other_cpu_start
.LVL30:
	.loc 3 150 0
	movi.n	a10, 0
	call8	Cache_Flush_rom
.LVL31:
	.loc 3 151 0
	call8	esp_dport_access_stall_other_cpu_end
.LVL32:
.LBE70:
.LBE69:
.LBB71:
.LBB72:
	.loc 3 149 0
	call8	esp_dport_access_stall_other_cpu_start
.LVL33:
	.loc 3 150 0
	movi.n	a10, 1
	call8	Cache_Flush_rom
.LVL34:
	.loc 3 151 0
	call8	esp_dport_access_stall_other_cpu_end
.LVL35:
.LBE72:
.LBE71:
	.loc 1 380 0
	l32r	a2, .LC7
.LVL36:
	movi.n	a8, 0
	s32i.n	a8, a2, 0
	s32i.n	a8, a2, 4
	s32i.n	a8, a2, 8
	s32i.n	a8, a2, 12
	s32i.n	a8, a2, 16
	s32i.n	a8, a2, 20
	s32i.n	a8, a2, 24
	s32i.n	a8, a2, 28
	.loc 1 381 0
	movi.n	a2, 1
	retw.n
.LVL37:
.L15:
.LBE68:
	.loc 1 356 0
	l32r	a9, .LC8
.LVL38:
	add.n	a8, a8, a9
.LVL39:
.L13:
	add.n	a9, a13, a12
	bltu	a8, a9, .L16
.LBE67:
	.loc 1 384 0
	movi.n	a2, 0
	retw.n
.LVL40:
.L17:
.LBB74:
.LBB73:
	.loc 1 359 0
	movi.n	a2, 0
.LBE73:
.LBE74:
.LBE66:
.LBE65:
	.loc 1 347 0
	retw.n
.LFE33:
	.size	spi_flash_ensure_unmodified_region, .-spi_flash_ensure_unmodified_region
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC19:
	.string	"s_mmap_page_refcnt[i] == 0 || (entry_pro == pages[pageno] && entry_app == pages[pageno])"
	.align	4
.LC22:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/spi_flash/flash_mmap.c"
	.section	.iram1
	.literal_position
	.literal .LC9, -1073283072
	.literal .LC10, 1253375
	.literal .LC11, -1342177280
	.literal .LC12, 8191
	.literal .LC13, g_rom_flashchip
	.literal .LC14, 2052
	.literal .LC15, 65536
	.literal .LC16, 1072758784
	.literal .LC17, s_mmap_page_refcnt
	.literal .LC18, 1072766976
	.literal .LC20, .LC19
	.literal .LC21, __func__$5732
	.literal .LC23, .LC22
	.literal .LC24, s_mmap_entries_head
	.literal .LC25, s_mmap_last_handle
	.align	4
	.global	spi_flash_mmap_pages
	.type	spi_flash_mmap_pages, @function
spi_flash_mmap_pages:
.LFB28:
	.loc 1 145 0
.LVL41:
	entry	sp, 80
.LCFI3:
	s32i.n	a5, sp, 16
	s32i.n	a6, sp, 20
.LVL42:
	.loc 1 148 0
	beqz.n	a3, .L44
.LVL43:
.LBB75:
.LBB76:
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/include/soc/soc_memory_layout.h"
	.loc 4 88 0
	l32r	a6, .LC9
.LVL44:
	add.n	a6, a2, a6
	movi.n	a5, 1
.LVL45:
	l32r	a7, .LC10
	bgeu	a7, a6, .L20
	movi.n	a5, 0
.L20:
	extui	a5, a5, 0, 8
.LVL46:
	.loc 4 89 0
	l32r	a7, .LC11
	add.n	a7, a2, a7
	movi.n	a6, 1
	l32r	a8, .LC12
	bgeu	a8, a7, .L21
	movi.n	a6, 0
.L21:
	extui	a6, a6, 0, 8
.LVL47:
.LBE76:
.LBE75:
	.loc 1 151 0
	bnez.n	a5, .L45
	bnez.n	a6, .L45
	.loc 1 152 0
	movi	a2, 0x102
.LVL48:
	retw.n
.LVL49:
.L23:
.LBB77:
	.loc 1 155 0
	addx4	a5, a6, a2
	l32i.n	a5, a5, 0
	bltz	a5, .L46
	.loc 1 155 0 is_stmt 0 discriminator 1
	slli	a5, a5, 16
	l32r	a7, .LC13
	l32i.n	a7, a7, 4
	bgeu	a5, a7, .L47
	.loc 1 154 0 is_stmt 1 discriminator 2
	addi.n	a6, a6, 1
.LVL50:
	j	.L22
.LVL51:
.L45:
.LBE77:
	movi.n	a6, 0
.LVL52:
.L22:
.LBB78:
	.loc 1 154 0 is_stmt 0 discriminator 1
	bltu	a6, a3, .L23
.LBE78:
	.loc 1 159 0 is_stmt 1
	l32r	a11, .LC14
	movi.n	a10, 0x14
	call8	heap_caps_malloc
.LVL53:
	s32i.n	a10, sp, 32
.LVL54:
	.loc 1 160 0
	beqz.n	a10, .L48
	.loc 1 164 0
	call8	spi_flash_disable_interrupts_caches_and_other_cpu
.LVL55:
.LBB79:
	.loc 1 167 0
	movi.n	a5, 0
.LBE79:
	.loc 1 166 0
	s32i.n	a5, sp, 40
	mov.n	a6, a5
.LVL56:
.LBB80:
	.loc 1 167 0
	j	.L24
.LVL57:
.L26:
	.loc 1 168 0
	addx4	a7, a5, a2
	l32i.n	a10, a7, 0
	l32r	a11, .LC15
	slli	a10, a10, 16
	call8	spi_flash_ensure_unmodified_region
.LVL58:
	beqz.n	a10, .L25
	.loc 1 169 0
	movi.n	a6, 1
.LVL59:
.L25:
	.loc 1 167 0 discriminator 2
	addi.n	a5, a5, 1
.LVL60:
.L24:
	.loc 1 167 0 is_stmt 0 discriminator 1
	bltu	a5, a3, .L26
	s32i.n	a6, sp, 40
.LBE80:
	.loc 1 172 0 is_stmt 1
	call8	spi_flash_mmap_init
.LVL61:
	.loc 1 177 0
	addi.n	a13, sp, 8
	addi.n	a12, sp, 4
	mov.n	a11, sp
	mov.n	a10, a4
	call8	get_mmu_region
.LVL62:
	.loc 1 178 0
	l32i.n	a4, sp, 4
.LVL63:
	bltu	a4, a3, .L50
	.loc 1 187 0
	l32i.n	a6, sp, 0
.LVL64:
	add.n	a4, a4, a6
	sub	a4, a4, a3
	addi.n	a4, a4, 1
	s32i.n	a4, sp, 24
.LVL65:
	.loc 1 188 0
	j	.L27
.LVL66:
.L33:
.LBB81:
.LBB82:
	.loc 1 191 0
#APP
# 191 "D:/ESP32/esp-idf-v3.1-rc1/components/spi_flash/flash_mmap.c" 1
	rsil	a7, 3

# 0 "" 2
.LVL67:
#NO_APP
.LBE82:
	.loc 1 192 0
	mov.n	a4, a6
	.loc 1 189 0
	movi.n	a5, 0
	.loc 1 192 0
	j	.L28
.LVL68:
.L31:
.LBB83:
.LBB84:
.LBB85:
	.loc 2 112 0
	l32r	a10, .LC16
	addx4	a10, a4, a10
.LVL69:
	call8	esp_dport_access_sequence_reg_read
.LVL70:
.LBE85:
.LBE84:
	.loc 1 194 0
	l32r	a8, .LC17
	add.n	a8, a8, a4
	l8ui	a8, a8, 0
.LVL71:
	.loc 1 195 0
	beqz.n	a8, .L29
	.loc 1 195 0 is_stmt 0 discriminator 1
	addx4	a8, a5, a2
	l32i.n	a8, a8, 0
	bne	a10, a8, .L30
.L29:
.LBE83:
	.loc 1 192 0 is_stmt 1 discriminator 2
	addi.n	a4, a4, 1
.LVL72:
	addi.n	a5, a5, 1
.LVL73:
.L28:
	.loc 1 192 0 is_stmt 0 discriminator 1
	add.n	a8, a6, a3
	bltu	a4, a8, .L31
.L30:
	.loc 1 199 0 is_stmt 1
	mov.n	a10, a7
	call8	_xtos_set_intlevel
.LVL74:
	.loc 1 201 0
	sub	a4, a4, a6
.LVL75:
	beq	a3, a4, .L32
.LBE81:
	.loc 1 188 0 discriminator 2
	addi.n	a6, a6, 1
.LVL76:
.L27:
	.loc 1 188 0 is_stmt 0 discriminator 1
	l32i.n	a4, sp, 24
	blt	a6, a4, .L33
.L32:
	.loc 1 206 0 is_stmt 1
	l32i.n	a5, sp, 24
	bne	a6, a5, .L34
	.loc 1 207 0
	movi.n	a2, 0
.LVL77:
	l32i.n	a3, sp, 20
.LVL78:
	s32i.n	a2, a3, 0
	.loc 1 208 0
	l32i.n	a4, sp, 16
	s32i.n	a2, a4, 0
.LVL79:
	.loc 1 147 0
	s32i.n	a2, sp, 36
	.loc 1 209 0
	movi	a2, 0x101
	j	.L35
.LVL80:
.L34:
.LBB86:
.LBB87:
	.loc 1 213 0
#APP
# 213 "D:/ESP32/esp-idf-v3.1-rc1/components/spi_flash/flash_mmap.c" 1
	rsil	a5, 3

# 0 "" 2
#NO_APP
	s32i.n	a5, sp, 44
.LVL81:
.LBE87:
.LBB88:
	.loc 1 214 0
	mov.n	a7, a6
.LBE88:
	.loc 1 212 0
	movi.n	a5, 0
.LVL82:
.LBE86:
	.loc 1 147 0
	s32i.n	a5, sp, 36
	s32i.n	a6, sp, 24
.LVL83:
	s32i.n	a2, sp, 28
.LBB95:
.LBB94:
	.loc 1 214 0
	j	.L36
.LVL84:
.L41:
.LBB89:
	.loc 1 216 0
	slli	a2, a7, 2
	l32r	a4, .LC16
	add.n	a4, a2, a4
.LVL85:
.LBB90:
.LBB91:
	.loc 2 112 0
	mov.n	a10, a4
	call8	esp_dport_access_sequence_reg_read
.LVL86:
	mov.n	a6, a10
.LBE91:
.LBE90:
	.loc 1 217 0
	l32r	a8, .LC18
	add.n	a2, a2, a8
.LVL87:
.LBB92:
.LBB93:
	.loc 2 112 0
	mov.n	a10, a2
	call8	esp_dport_access_sequence_reg_read
.LVL88:
.LBE93:
.LBE92:
	.loc 1 218 0
	l32r	a8, .LC17
	add.n	a8, a8, a7
	l8ui	a8, a8, 0
	beqz.n	a8, .L37
	.loc 1 218 0 is_stmt 0 discriminator 1
	l32i.n	a11, sp, 28
	addx4	a9, a5, a11
	l32i.n	a9, a9, 0
	bne	a6, a9, .L38
	.loc 1 218 0 discriminator 3
	beq	a10, a9, .L37
.L38:
	.loc 1 218 0 discriminator 4
	l32r	a13, .LC20
	l32r	a12, .LC21
	movi	a11, 0xdc
	l32r	a10, .LC23
	call8	__assert_func
.LVL89:
.L37:
	.loc 1 221 0 is_stmt 1
	bnez.n	a8, .L39
	.loc 1 222 0
	l32i.n	a8, sp, 28
	addx4	a9, a5, a8
	l32i.n	a8, a9, 0
	bne	a6, a8, .L40
	.loc 1 222 0 is_stmt 0 discriminator 1
	beq	a10, a8, .L39
.L40:
	.loc 1 223 0 is_stmt 1
	memw
	s32i.n	a8, a4, 0
	.loc 1 224 0
	l32i.n	a4, a9, 0
.LVL90:
	memw
	s32i.n	a4, a2, 0
.LVL91:
	.loc 1 225 0
	movi.n	a2, 1
.LVL92:
	s32i.n	a2, sp, 36
.LVL93:
.L39:
	.loc 1 228 0 discriminator 2
	l32r	a2, .LC17
	add.n	a2, a2, a7
	l8ui	a4, a2, 0
	addi.n	a4, a4, 1
	s8i	a4, a2, 0
.LBE89:
	.loc 1 214 0 discriminator 2
	addi.n	a7, a7, 1
.LVL94:
	addi.n	a5, a5, 1
.LVL95:
.L36:
	.loc 1 214 0 is_stmt 0 discriminator 1
	l32i.n	a4, sp, 24
	add.n	a2, a4, a3
	bne	a2, a7, .L41
	mov.n	a6, a4
.LBE94:
	.loc 1 230 0 is_stmt 1
	l32i.n	a10, sp, 44
	call8	_xtos_set_intlevel
.LVL96:
	.loc 1 231 0
	l32r	a2, .LC24
	l32i.n	a2, a2, 0
	l32i.n	a5, sp, 32
.LVL97:
	s32i.n	a2, a5, 12
	beqz.n	a2, .L42
	.loc 1 231 0 discriminator 1
	addi.n	a4, a5, 12
	s32i.n	a4, a2, 16
.L42:
	.loc 1 231 0 is_stmt 0 discriminator 3
	l32r	a2, .LC24
	l32i.n	a4, sp, 32
	s32i.n	a4, a2, 0
	s32i.n	a2, a4, 16
	.loc 1 232 0 is_stmt 1 discriminator 3
	s32i.n	a6, a4, 4
	.loc 1 233 0 discriminator 3
	s32i.n	a3, a4, 8
	.loc 1 234 0 discriminator 3
	l32r	a3, .LC25
.LVL98:
	l32i.n	a2, a3, 0
	addi.n	a2, a2, 1
	s32i.n	a2, a3, 0
	s32i.n	a2, a4, 0
	.loc 1 235 0 discriminator 3
	l32i.n	a5, sp, 20
	s32i.n	a2, a5, 0
.LVL99:
	.loc 1 236 0 discriminator 3
	l32i.n	a2, sp, 0
	sub	a2, a6, a2
	slli	a2, a2, 16
	l32i.n	a3, sp, 8
	add.n	a2, a2, a3
	l32i.n	a3, sp, 16
	s32i.n	a2, a3, 0
.LVL100:
	.loc 1 237 0 discriminator 3
	movi.n	a2, 0
.LVL101:
.L35:
.LBE95:
	.loc 1 246 0
	l32i.n	a4, sp, 40
	l32i.n	a5, sp, 36
	bgeu	a4, a5, .L43
.LVL102:
.LBB96:
.LBB97:
	.loc 3 149 0
	call8	esp_dport_access_stall_other_cpu_start
.LVL103:
	.loc 3 150 0
	movi.n	a10, 0
	call8	Cache_Flush_rom
.LVL104:
	.loc 3 151 0
	call8	esp_dport_access_stall_other_cpu_end
.LVL105:
.LBE97:
.LBE96:
.LBB98:
.LBB99:
	.loc 3 149 0
	call8	esp_dport_access_stall_other_cpu_start
.LVL106:
	.loc 3 150 0
	movi.n	a10, 1
	call8	Cache_Flush_rom
.LVL107:
	.loc 3 151 0
	call8	esp_dport_access_stall_other_cpu_end
.LVL108:
.L43:
.LBE99:
.LBE98:
	.loc 1 254 0
	call8	spi_flash_enable_interrupts_caches_and_other_cpu
.LVL109:
	.loc 1 255 0
	l32i.n	a4, sp, 16
	l32i.n	a3, a4, 0
	bnez.n	a3, .L19
	.loc 1 256 0
	l32i.n	a10, sp, 32
	call8	free
.LVL110:
	retw.n
.LVL111:
.L44:
	.loc 1 149 0
	movi	a2, 0x102
.LVL112:
	retw.n
.LVL113:
.L46:
.LBB100:
	.loc 1 156 0
	movi	a2, 0x102
.LVL114:
	retw.n
.LVL115:
.L47:
	movi	a2, 0x102
.LVL116:
	retw.n
.LVL117:
.L48:
.LBE100:
	.loc 1 161 0
	movi	a2, 0x101
.LVL118:
	retw.n
.LVL119:
.L50:
	.loc 1 179 0
	movi	a2, 0x101
.LVL120:
.L19:
	.loc 1 259 0
	retw.n
.LFE28:
	.size	spi_flash_mmap_pages, .-spi_flash_mmap_pages
	.literal_position
	.literal .LC26, g_rom_flashchip
	.literal .LC27, 65535
	.literal .LC28, 2048
	.align	4
	.global	spi_flash_mmap
	.type	spi_flash_mmap, @function
spi_flash_mmap:
.LFB27:
	.loc 1 119 0
.LVL121:
	entry	sp, 48
.LCFI4:
	.loc 1 121 0
	extui	a7, a2, 0, 16
	bnez.n	a7, .L56
	.loc 1 124 0
	add.n	a7, a2, a3
	l32r	a8, .LC26
	l32i.n	a8, a8, 4
	bltu	a8, a7, .L57
	.loc 1 128 0
	extui	a2, a2, 16, 16
.LVL122:
	.loc 1 129 0
	l32r	a7, .LC27
	add.n	a3, a3, a7
.LVL123:
	extui	a3, a3, 16, 16
	s32i.n	a3, sp, 0
	mov.n	a7, a3
.LVL124:
	.loc 1 131 0
	l32r	a11, .LC28
	slli	a10, a3, 2
	call8	heap_caps_malloc
.LVL125:
	mov.n	a3, a10
.LVL126:
	.loc 1 132 0
	beqz.n	a10, .L58
	movi.n	a8, 0
	j	.L54
.LVL127:
.L55:
.LBB101:
	.loc 1 136 0 discriminator 3
	addx4	a9, a8, a3
	add.n	a10, a8, a2
	s32i.n	a10, a9, 0
	.loc 1 135 0 discriminator 3
	addi.n	a8, a8, 1
.LVL128:
.L54:
	.loc 1 135 0 is_stmt 0 discriminator 1
	blt	a8, a7, .L55
.LBE101:
	.loc 1 138 0 is_stmt 1
	mov.n	a14, a6
	mov.n	a13, a5
	mov.n	a12, a4
	l32i.n	a11, sp, 0
	mov.n	a10, a3
	call8	spi_flash_mmap_pages
.LVL129:
	mov.n	a2, a10
.LVL130:
	.loc 1 139 0
	mov.n	a10, a3
	call8	free
.LVL131:
	.loc 1 140 0
	retw.n
.LVL132:
.L56:
	.loc 1 122 0
	movi	a2, 0x102
.LVL133:
	retw.n
.LVL134:
.L57:
	.loc 1 125 0
	movi	a2, 0x102
.LVL135:
	retw.n
.LVL136:
.L58:
	.loc 1 133 0
	movi	a2, 0x101
.LVL137:
	.loc 1 141 0
	retw.n
.LFE27:
	.size	spi_flash_mmap, .-spi_flash_mmap
	.section	.rodata.str1.4
	.align	4
.LC31:
	.string	"s_mmap_page_refcnt[i] > 0"
	.align	4
.LC37:
	.string	"0 && \"invalid handle, or handle already unmapped\""
	.section	.iram1
	.literal_position
	.literal .LC29, s_mmap_entries_head
	.literal .LC30, s_mmap_page_refcnt
	.literal .LC32, .LC31
	.literal .LC33, __func__$5741
	.literal .LC34, .LC22
	.literal .LC35, 1072758784
	.literal .LC36, 1072766976
	.literal .LC38, .LC37
	.align	4
	.global	spi_flash_munmap
	.type	spi_flash_munmap, @function
spi_flash_munmap:
.LFB29:
	.loc 1 262 0
.LVL138:
	entry	sp, 32
.LCFI5:
	.loc 1 263 0
	call8	spi_flash_disable_interrupts_caches_and_other_cpu
.LVL139:
	.loc 1 266 0
	l32r	a3, .LC29
	l32i.n	a3, a3, 0
.LVL140:
	j	.L60
.L68:
	.loc 1 267 0
	l32i.n	a8, a3, 0
	bne	a8, a2, .L61
.LBB102:
	.loc 1 271 0
	l32i.n	a9, a3, 4
.LVL141:
	j	.L62
.L65:
	.loc 1 272 0
	l32r	a8, .LC30
	add.n	a8, a8, a9
	l8ui	a8, a8, 0
	bnez.n	a8, .L63
	.loc 1 272 0 is_stmt 0 discriminator 1
	l32r	a13, .LC32
	l32r	a12, .LC33
	movi	a11, 0x110
	l32r	a10, .LC34
	call8	__assert_func
.LVL142:
.L63:
	.loc 1 273 0 is_stmt 1
	addi.n	a8, a8, -1
	extui	a8, a8, 0, 8
	l32r	a10, .LC30
	add.n	a10, a10, a9
	s8i	a8, a10, 0
	bnez.n	a8, .L64
	.loc 1 274 0
	slli	a8, a9, 2
	l32r	a10, .LC35
	add.n	a10, a8, a10
	movi	a11, 0x100
	memw
	s32i.n	a11, a10, 0
	.loc 1 275 0
	l32r	a10, .LC36
	add.n	a8, a8, a10
	memw
	s32i.n	a11, a8, 0
.L64:
	.loc 1 271 0 discriminator 2
	addi.n	a9, a9, 1
.LVL143:
.L62:
	.loc 1 271 0 is_stmt 0 discriminator 1
	l32i.n	a10, a3, 4
	l32i.n	a8, a3, 8
	add.n	a8, a10, a8
	blt	a9, a8, .L65
.LBE102:
	.loc 1 278 0 is_stmt 1
	l32i.n	a2, a3, 12
.LVL144:
	beqz.n	a2, .L66
	.loc 1 278 0 discriminator 1
	l32i.n	a8, a3, 16
	s32i.n	a8, a2, 16
.L66:
	.loc 1 278 0 is_stmt 0 discriminator 3
	l32i.n	a2, a3, 16
	l32i.n	a8, a3, 12
	s32i.n	a8, a2, 0
	.loc 1 279 0 is_stmt 1 discriminator 3
	j	.L67
.LVL145:
.L61:
	.loc 1 266 0 discriminator 2
	l32i.n	a3, a3, 12
.LVL146:
.L60:
	.loc 1 266 0 discriminator 1
	bnez.n	a3, .L68
.LVL147:
.L67:
	.loc 1 282 0
	call8	spi_flash_enable_interrupts_caches_and_other_cpu
.LVL148:
	.loc 1 283 0
	bnez.n	a3, .L69
	.loc 1 284 0
	l32r	a13, .LC38
	l32r	a12, .LC33
	movi	a11, 0x11c
	l32r	a10, .LC34
	call8	__assert_func
.LVL149:
.L69:
	.loc 1 286 0
	mov.n	a10, a3
	call8	free
.LVL150:
	retw.n
.LFE29:
	.size	spi_flash_munmap, .-spi_flash_munmap
	.section	.rodata.str1.4
	.align	4
.LC40:
	.string	"handle=%d page=%d count=%d\n"
	.align	4
.LC44:
	.string	"page %d: refcnt=%d paddr=%d\n"
	.section	.text.spi_flash_mmap_dump,"ax",@progbits
	.literal_position
	.literal .LC39, s_mmap_entries_head
	.literal .LC41, .LC40
	.literal .LC42, s_mmap_page_refcnt
	.literal .LC43, 1072758784
	.literal .LC45, .LC44
	.align	4
	.global	spi_flash_mmap_dump
	.type	spi_flash_mmap_dump, @function
spi_flash_mmap_dump:
.LFB30:
	.loc 1 290 0
	entry	sp, 32
.LCFI6:
	.loc 1 291 0
	call8	spi_flash_mmap_init
.LVL151:
	.loc 1 293 0
	l32r	a2, .LC39
	l32i.n	a2, a2, 0
.LVL152:
	j	.L71
.L72:
	.loc 1 294 0 discriminator 3
	l32i.n	a13, a2, 8
	l32i.n	a12, a2, 4
	l32i.n	a11, a2, 0
	l32r	a10, .LC41
	call8	printf
.LVL153:
	.loc 1 293 0 discriminator 3
	l32i.n	a2, a2, 12
.LVL154:
.L71:
	.loc 1 293 0 discriminator 1
	bnez.n	a2, .L72
	j	.L73
.LVL155:
.L75:
.LBB103:
	.loc 1 297 0
	l32r	a8, .LC42
	add.n	a8, a8, a2
	l8ui	a3, a8, 0
	beqz.n	a3, .L74
.LVL156:
.LBB104:
.LBB105:
	.loc 2 79 0
	l32r	a10, .LC43
	addx4	a10, a2, a10
.LVL157:
	call8	esp_dport_access_reg_read
.LVL158:
.LBE105:
.LBE104:
	.loc 1 298 0
	mov.n	a13, a10
	mov.n	a12, a3
	mov.n	a11, a2
	l32r	a10, .LC45
	call8	printf
.LVL159:
.L74:
	.loc 1 296 0 discriminator 2
	addi.n	a2, a2, 1
.LVL160:
.L73:
	.loc 1 296 0 is_stmt 0 discriminator 1
	movi	a3, 0xff
	bge	a3, a2, .L75
.LBE103:
	.loc 1 302 0 is_stmt 1
	retw.n
.LFE30:
	.size	spi_flash_mmap_dump, .-spi_flash_mmap_dump
	.section	.text.spi_flash_mmap_get_free_pages,"ax",@progbits
	.literal_position
	.literal .LC46, s_mmap_page_refcnt
	.literal .LC47, 1072758784
	.align	4
	.global	spi_flash_mmap_get_free_pages
	.type	spi_flash_mmap_get_free_pages, @function
spi_flash_mmap_get_free_pages:
.LFB31:
	.loc 1 305 0
.LVL161:
	entry	sp, 48
.LCFI7:
	.loc 1 306 0
	call8	spi_flash_mmap_init
.LVL162:
	.loc 1 311 0
	addi.n	a13, sp, 8
	addi.n	a12, sp, 4
	mov.n	a11, sp
	mov.n	a10, a2
	call8	get_mmu_region
.LVL163:
.LBB106:
	.loc 1 312 0
#APP
# 312 "D:/ESP32/esp-idf-v3.1-rc1/components/spi_flash/flash_mmap.c" 1
	rsil	a4, 3

# 0 "" 2
.LVL164:
#NO_APP
.LBE106:
.LBB107:
	.loc 1 313 0
	l32i.n	a3, sp, 0
.LVL165:
.LBE107:
	.loc 1 307 0
	movi.n	a2, 0
.LVL166:
.LBB110:
	.loc 1 313 0
	j	.L77
.LVL167:
.L79:
	.loc 1 314 0
	l32r	a8, .LC46
	add.n	a8, a8, a3
	l8ui	a8, a8, 0
	bnez.n	a8, .L78
.LVL168:
.LBB108:
.LBB109:
	.loc 2 112 0 discriminator 1
	l32r	a10, .LC47
	addx4	a10, a3, a10
.LVL169:
	call8	esp_dport_access_sequence_reg_read
.LVL170:
.LBE109:
.LBE108:
	.loc 1 314 0 discriminator 1
	bnei	a10, 256, .L78
	.loc 1 315 0
	addi.n	a2, a2, 1
.LVL171:
.L78:
	.loc 1 313 0 discriminator 2
	addi.n	a3, a3, 1
.LVL172:
.L77:
	.loc 1 313 0 is_stmt 0 discriminator 1
	l32i.n	a8, sp, 4
	l32i.n	a9, sp, 0
	add.n	a8, a9, a8
	blt	a3, a8, .L79
.LBE110:
	.loc 1 318 0 is_stmt 1
	mov.n	a10, a4
	call8	_xtos_set_intlevel
.LVL173:
	.loc 1 320 0
	retw.n
.LFE31:
	.size	spi_flash_mmap_get_free_pages, .-spi_flash_mmap_get_free_pages
	.section	.iram1
	.literal_position
	.literal .LC48, -65536
	.literal .LC49, 65535
	.literal .LC50, written_pages
	.literal .LC51, 65536
	.align	4
	.global	spi_flash_mark_modified_region
	.type	spi_flash_mark_modified_region, @function
spi_flash_mark_modified_region:
.LFB32:
	.loc 1 340 0
.LVL174:
	entry	sp, 32
.LCFI8:
.LVL175:
.LBB119:
.LBB120:
	.loc 1 353 0
	l32r	a8, .LC48
	and	a12, a2, a8
.LVL176:
	.loc 1 354 0
	sub	a2, a2, a12
.LVL177:
	add.n	a3, a3, a2
.LVL178:
	.loc 1 355 0
	l32r	a13, .LC49
	add.n	a2, a3, a13
	and	a13, a2, a8
.LVL179:
.LBB121:
	.loc 1 356 0
	mov.n	a10, a12
	j	.L81
.LVL180:
.L83:
.LBB122:
	.loc 1 357 0
	extui	a11, a10, 16, 16
.LVL181:
	.loc 1 358 0
	movi	a8, 0xff
	blt	a8, a11, .L80
	.loc 1 362 0
	srli	a9, a11, 5
.LVL182:
	.loc 1 363 0
	movi.n	a8, 1
	ssl	a11
	sll	a8, a8
.LVL183:
	.loc 1 366 0
	l32r	a11, .LC50
.LVL184:
	addx4	a9, a9, a11
.LVL185:
	l32i.n	a11, a9, 0
	or	a8, a11, a8
.LVL186:
	s32i.n	a8, a9, 0
.LBE122:
	.loc 1 356 0
	l32r	a8, .LC51
	add.n	a10, a10, a8
.LVL187:
.L81:
	add.n	a8, a12, a13
	bltu	a10, a8, .L83
.L80:
	retw.n
.LBE121:
.LBE120:
.LBE119:
.LFE32:
	.size	spi_flash_mark_modified_region, .-spi_flash_mark_modified_region
	.section	.text.spi_flash_cache2phys,"ax",@progbits
	.literal_position
	.literal .LC52, -1073741824
	.literal .LC53, 851967
	.literal .LC54, 1074593791
	.literal .LC55, -1061158912
	.literal .LC56, 65535
	.literal .LC57, 1072758784
	.align	4
	.global	spi_flash_cache2phys
	.type	spi_flash_cache2phys, @function
spi_flash_cache2phys:
.LFB35:
	.loc 1 389 0
.LVL188:
	entry	sp, 32
.LCFI9:
.LVL189:
	.loc 1 392 0
	l32r	a8, .LC52
	add.n	a8, a2, a8
	l32r	a9, .LC53
	bgeu	a9, a8, .L88
	.loc 1 396 0
	l32r	a8, .LC54
	blt	a8, a2, .L86
	.loc 1 398 0
	l32r	a9, .LC55
	add.n	a9, a2, a9
	l32r	a8, .LC56
	add.n	a8, a9, a8
	movgez	a8, a9, a9
	srai	a8, a8, 16
.LVL190:
	j	.L87
.LVL191:
.L86:
	.loc 1 401 0
	l32r	a9, .LC52
	add.n	a9, a2, a9
	l32r	a8, .LC56
	add.n	a8, a9, a8
	movgez	a8, a9, a9
	srai	a8, a8, 16
	addi	a8, a8, 64
.LVL192:
.L87:
	.loc 1 404 0
	movi	a9, 0xff
	bltu	a9, a8, .L89
.LVL193:
.LBB123:
.LBB124:
	.loc 2 79 0
	l32r	a10, .LC57
	addx4	a10, a8, a10
.LVL194:
	call8	esp_dport_access_reg_read
.LVL195:
.LBE124:
.LBE123:
	.loc 1 409 0
	beqi	a10, 256, .L90
	.loc 1 413 0
	slli	a10, a10, 16
.LVL196:
	.loc 1 414 0
	extui	a2, a2, 0, 16
.LVL197:
	or	a2, a10, a2
	retw.n
.LVL198:
.L88:
	.loc 1 394 0
	movi.n	a2, -1
.LVL199:
	retw.n
.LVL200:
.L89:
	.loc 1 406 0
	movi.n	a2, -1
.LVL201:
	retw.n
.LVL202:
.L90:
	.loc 1 411 0
	movi.n	a2, -1
.LVL203:
	.loc 1 415 0
	retw.n
.LFE35:
	.size	spi_flash_cache2phys, .-spi_flash_cache2phys
	.section	.text.spi_flash_phys2cache,"ax",@progbits
	.literal_position
	.literal .LC58, 1061158912
	.literal .LC59, 1073741824
	.literal .LC60, 1072758784
	.align	4
	.global	spi_flash_phys2cache
	.type	spi_flash_phys2cache, @function
spi_flash_phys2cache:
.LFB36:
	.loc 1 419 0
.LVL204:
	entry	sp, 48
.LCFI10:
	.loc 1 420 0
	extui	a5, a2, 16, 16
.LVL205:
	.loc 1 424 0
	bnez.n	a3, .L97
	.loc 1 427 0
	l32r	a3, .LC58
.LVL206:
	s32i.n	a3, sp, 0
	.loc 1 428 0
	movi.n	a7, 0
	.loc 1 426 0
	movi.n	a4, 0x40
	.loc 1 425 0
	mov.n	a3, a7
	j	.L92
.LVL207:
.L97:
	.loc 1 432 0
	l32r	a4, .LC59
	s32i.n	a4, sp, 0
	.loc 1 433 0
	movi.n	a7, 0x40
	.loc 1 431 0
	movi	a4, 0x100
	.loc 1 430 0
	movi.n	a3, 0x4d
.LVL208:
.L92:
.LBB125:
	.loc 1 435 0
#APP
# 435 "D:/ESP32/esp-idf-v3.1-rc1/components/spi_flash/flash_mmap.c" 1
	rsil	a6, 3

# 0 "" 2
.LVL209:
#NO_APP
.LBE125:
.LBB126:
	.loc 1 436 0
	j	.L93
.LVL210:
.L96:
.LBB127:
.LBB128:
	.loc 2 112 0
	l32r	a10, .LC60
	addx4	a10, a3, a10
.LVL211:
	call8	esp_dport_access_sequence_reg_read
.LVL212:
.LBE128:
.LBE127:
	.loc 1 437 0
	bne	a5, a10, .L94
.LBB129:
	.loc 1 438 0
	sub	a3, a3, a7
.LVL213:
	.loc 1 439 0
	slli	a3, a3, 16
.LVL214:
	l32i.n	a4, sp, 0
.LVL215:
	add.n	a3, a4, a3
.LVL216:
	.loc 1 440 0
	mov.n	a10, a6
	call8	_xtos_set_intlevel
.LVL217:
	.loc 1 441 0
	extui	a2, a2, 0, 16
.LVL218:
	or	a2, a3, a2
	retw.n
.LVL219:
.L94:
.LBE129:
	.loc 1 436 0 discriminator 2
	addi.n	a3, a3, 1
.LVL220:
.L93:
	.loc 1 436 0 is_stmt 0 discriminator 1
	blt	a3, a4, .L96
.LBE126:
	.loc 1 444 0 is_stmt 1
	mov.n	a10, a6
	call8	_xtos_set_intlevel
.LVL221:
	.loc 1 445 0
	movi.n	a2, 0
.LVL222:
	.loc 1 446 0
	retw.n
.LFE36:
	.size	spi_flash_phys2cache, .-spi_flash_phys2cache
	.section	.rodata.__func__$5741,"a",@progbits
	.align	4
	.type	__func__$5741, @object
	.size	__func__$5741, 17
__func__$5741:
	.string	"spi_flash_munmap"
	.section	.rodata.__func__$5732,"a",@progbits
	.align	4
	.type	__func__$5732, @object
	.size	__func__$5732, 21
__func__$5732:
	.string	"spi_flash_mmap_pages"
	.section	.bss.written_pages,"aw",@nobits
	.align	4
	.type	written_pages, @object
	.size	written_pages, 32
written_pages:
	.zero	32
	.section	.bss.s_mmap_last_handle,"aw",@nobits
	.align	4
	.type	s_mmap_last_handle, @object
	.size	s_mmap_last_handle, 4
s_mmap_last_handle:
	.zero	4
	.section	.bss.s_mmap_page_refcnt,"aw",@nobits
	.align	4
	.type	s_mmap_page_refcnt, @object
	.size	s_mmap_page_refcnt, 256
s_mmap_page_refcnt:
	.zero	256
	.section	.bss.s_mmap_entries_head,"aw",@nobits
	.align	4
	.type	s_mmap_entries_head, @object
	.size	s_mmap_entries_head, 4
s_mmap_entries_head:
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
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI2-.LFB33
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI3-.LFB28
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI4-.LFB27
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI5-.LFB29
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI6-.LFB30
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
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI8-.LFB32
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x4
	.4byte	.LCFI9-.LFB35
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x4
	.4byte	.LCFI10-.LFB36
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE20:
	.text
.Letext0:
	.file 5 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_err.h"
	.file 9 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/spi_flash.h"
	.file 10 "D:/ESP32/esp-idf-v3.1-rc1/components/spi_flash/include/esp_spi_flash.h"
	.file 11 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_dport_access.h"
	.file 12 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/xtensa/xtruntime.h"
	.file 13 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/assert.h"
	.file 14 "D:/ESP32/esp-idf-v3.1-rc1/components/heap/include/esp_heap_caps.h"
	.file 15 "D:/ESP32/esp-idf-v3.1-rc1/components/spi_flash/cache_utils.h"
	.file 16 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdlib.h"
	.file 17 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1120
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF106
	.byte	0xc
	.4byte	.LASF107
	.4byte	.LASF108
	.4byte	.Ldebug_ranges0+0xb0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF3
	.byte	0x5
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
	.byte	0x6
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
	.byte	0x6
	.byte	0x19
	.4byte	0x3e
	.uleb128 0x2
	.4byte	.LASF8
	.byte	0x6
	.byte	0x1a
	.4byte	0x30
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
	.byte	0x6
	.byte	0x31
	.4byte	0x3e
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
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0x5
	.byte	0x4
	.4byte	0xb6
	.uleb128 0x6
	.uleb128 0x2
	.4byte	.LASF16
	.byte	0x7
	.byte	0x15
	.4byte	0x4c
	.uleb128 0x2
	.4byte	.LASF17
	.byte	0x7
	.byte	0x2c
	.4byte	0x65
	.uleb128 0x2
	.4byte	.LASF18
	.byte	0x7
	.byte	0x2d
	.4byte	0x70
	.uleb128 0x2
	.4byte	.LASF19
	.byte	0x7
	.byte	0xa9
	.4byte	0x89
	.uleb128 0x2
	.4byte	.LASF20
	.byte	0x8
	.byte	0x18
	.4byte	0xc2
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF21
	.uleb128 0x7
	.byte	0x18
	.byte	0x9
	.byte	0x89
	.4byte	0x146
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0x9
	.byte	0x8a
	.4byte	0xcd
	.byte	0
	.uleb128 0x8
	.4byte	.LASF23
	.byte	0x9
	.byte	0x8b
	.4byte	0xcd
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF24
	.byte	0x9
	.byte	0x8c
	.4byte	0xcd
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF25
	.byte	0x9
	.byte	0x8d
	.4byte	0xcd
	.byte	0xc
	.uleb128 0x8
	.4byte	.LASF26
	.byte	0x9
	.byte	0x8e
	.4byte	0xcd
	.byte	0x10
	.uleb128 0x8
	.4byte	.LASF27
	.byte	0x9
	.byte	0x8f
	.4byte	0xcd
	.byte	0x14
	.byte	0
	.uleb128 0x2
	.4byte	.LASF28
	.byte	0x9
	.byte	0x90
	.4byte	0xf5
	.uleb128 0x9
	.byte	0x4
	.4byte	0x30
	.byte	0xa
	.byte	0xa1
	.4byte	0x16a
	.uleb128 0xa
	.4byte	.LASF29
	.byte	0
	.uleb128 0xa
	.4byte	.LASF30
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.4byte	.LASF31
	.byte	0xa
	.byte	0xa4
	.4byte	0x151
	.uleb128 0x2
	.4byte	.LASF32
	.byte	0xa
	.byte	0xa9
	.4byte	0xcd
	.uleb128 0x7
	.byte	0x8
	.byte	0x1
	.byte	0x43
	.4byte	0x1a1
	.uleb128 0x8
	.4byte	.LASF33
	.byte	0x1
	.byte	0x43
	.4byte	0x1de
	.byte	0
	.uleb128 0x8
	.4byte	.LASF34
	.byte	0x1
	.byte	0x43
	.4byte	0x1e4
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.4byte	.LASF40
	.byte	0x14
	.byte	0x1
	.byte	0x3f
	.4byte	0x1de
	.uleb128 0x8
	.4byte	.LASF35
	.byte	0x1
	.byte	0x40
	.4byte	0xcd
	.byte	0
	.uleb128 0x8
	.4byte	.LASF36
	.byte	0x1
	.byte	0x41
	.4byte	0x3e
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF37
	.byte	0x1
	.byte	0x42
	.4byte	0x3e
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF38
	.byte	0x1
	.byte	0x43
	.4byte	0x180
	.byte	0xc
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1a1
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1de
	.uleb128 0x2
	.4byte	.LASF39
	.byte	0x1
	.byte	0x44
	.4byte	0x1a1
	.uleb128 0xb
	.4byte	.LASF41
	.byte	0x4
	.byte	0x1
	.byte	0x47
	.4byte	0x20e
	.uleb128 0x8
	.4byte	.LASF42
	.byte	0x1
	.byte	0x47
	.4byte	0x1de
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	.LASF44
	.byte	0x2
	.byte	0x6b
	.4byte	0xcd
	.byte	0x3
	.4byte	0x22a
	.uleb128 0xd
	.string	"reg"
	.byte	0x2
	.byte	0x6b
	.4byte	0xcd
	.byte	0
	.uleb128 0xe
	.4byte	.LASF109
	.byte	0x3
	.byte	0x92
	.byte	0x3
	.4byte	0x24a
	.uleb128 0xf
	.4byte	.LASF43
	.byte	0x3
	.byte	0x92
	.4byte	0x3e
	.uleb128 0x10
	.4byte	.LASF97
	.byte	0x3
	.byte	0x94
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	.LASF45
	.byte	0x4
	.byte	0x56
	.4byte	0xee
	.byte	0x3
	.4byte	0x26d
	.uleb128 0xd
	.string	"p"
	.byte	0x4
	.byte	0x56
	.4byte	0xb0
	.uleb128 0x11
	.string	"r"
	.byte	0x4
	.byte	0x57
	.4byte	0xee
	.byte	0
	.uleb128 0xc
	.4byte	.LASF46
	.byte	0x2
	.byte	0x4a
	.4byte	0xcd
	.byte	0x3
	.4byte	0x289
	.uleb128 0xd
	.string	"reg"
	.byte	0x2
	.byte	0x4a
	.4byte	0xcd
	.byte	0
	.uleb128 0x12
	.4byte	.LASF110
	.byte	0x1
	.byte	0x66
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2d5
	.uleb128 0x13
	.4byte	.LASF47
	.byte	0x1
	.byte	0x66
	.4byte	0x16a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x14
	.4byte	.LASF48
	.byte	0x1
	.byte	0x66
	.4byte	0x2d5
	.4byte	.LLST0
	.uleb128 0x13
	.4byte	.LASF49
	.byte	0x1
	.byte	0x66
	.4byte	0x2d5
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x13
	.4byte	.LASF50
	.byte	0x1
	.byte	0x66
	.4byte	0x2db
	.uleb128 0x1
	.byte	0x55
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x3e
	.uleb128 0x5
	.byte	0x4
	.4byte	0xcd
	.uleb128 0x15
	.4byte	.LASF111
	.byte	0x1
	.byte	0x4d
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3c8
	.uleb128 0x16
	.4byte	.LASF51
	.byte	0x1
	.byte	0x52
	.4byte	0x30
	.4byte	.LLST1
	.uleb128 0x17
	.4byte	.LBB50
	.4byte	.LBE50-.LBB50
	.4byte	0x322
	.uleb128 0x16
	.4byte	.LASF52
	.byte	0x1
	.byte	0x52
	.4byte	0x30
	.4byte	.LLST1
	.byte	0
	.uleb128 0x17
	.4byte	.LBB51
	.4byte	.LBE51-.LBB51
	.4byte	0x3b7
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.byte	0x53
	.4byte	0x3e
	.4byte	.LLST3
	.uleb128 0x19
	.4byte	.LBB52
	.4byte	.LBE52-.LBB52
	.uleb128 0x16
	.4byte	.LASF53
	.byte	0x1
	.byte	0x54
	.4byte	0xcd
	.4byte	.LLST4
	.uleb128 0x1a
	.4byte	.LASF54
	.byte	0x1
	.byte	0x55
	.4byte	0xcd
	.uleb128 0x1b
	.4byte	0x20e
	.4byte	.LBB53
	.4byte	.LBE53-.LBB53
	.byte	0x1
	.byte	0x54
	.4byte	0x38c
	.uleb128 0x1c
	.4byte	0x21e
	.4byte	.LLST5
	.uleb128 0x1d
	.4byte	.LVL7
	.4byte	0x109f
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	0x20e
	.4byte	.LBB55
	.4byte	.LBE55-.LBB55
	.byte	0x1
	.byte	0x55
	.uleb128 0x1c
	.4byte	0x21e
	.4byte	.LLST6
	.uleb128 0x1d
	.4byte	.LVL9
	.4byte	0x109f
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL18
	.4byte	0x10aa
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LASF55
	.byte	0x1
	.2byte	0x15e
	.4byte	0xee
	.byte	0x3
	.4byte	0x43e
	.uleb128 0x21
	.4byte	.LASF56
	.byte	0x1
	.2byte	0x15e
	.4byte	0x25
	.uleb128 0x21
	.4byte	.LASF57
	.byte	0x1
	.2byte	0x15e
	.4byte	0x25
	.uleb128 0x21
	.4byte	.LASF58
	.byte	0x1
	.2byte	0x15e
	.4byte	0xee
	.uleb128 0x22
	.4byte	.LASF59
	.byte	0x1
	.2byte	0x161
	.4byte	0xcd
	.uleb128 0x23
	.uleb128 0x22
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x164
	.4byte	0xcd
	.uleb128 0x23
	.uleb128 0x22
	.4byte	.LASF36
	.byte	0x1
	.2byte	0x165
	.4byte	0x3e
	.uleb128 0x24
	.string	"idx"
	.byte	0x1
	.2byte	0x16a
	.4byte	0x3e
	.uleb128 0x24
	.string	"bit"
	.byte	0x1
	.2byte	0x16b
	.4byte	0xcd
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	.LASF112
	.byte	0x1
	.2byte	0x158
	.4byte	0xee
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x57b
	.uleb128 0x26
	.4byte	.LASF56
	.byte	0x1
	.2byte	0x158
	.4byte	0x25
	.4byte	.LLST7
	.uleb128 0x26
	.4byte	.LASF57
	.byte	0x1
	.2byte	0x158
	.4byte	0x25
	.4byte	.LLST8
	.uleb128 0x27
	.4byte	0x3c8
	.4byte	.LBB65
	.4byte	.LBE65-.LBB65
	.byte	0x1
	.2byte	0x15a
	.uleb128 0x28
	.4byte	0x3f1
	.byte	0
	.uleb128 0x1c
	.4byte	0x3e5
	.4byte	.LLST9
	.uleb128 0x1c
	.4byte	0x3d9
	.4byte	.LLST10
	.uleb128 0x19
	.4byte	.LBB66
	.4byte	.LBE66-.LBB66
	.uleb128 0x29
	.4byte	0x3fd
	.4byte	.LLST11
	.uleb128 0x2a
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x29
	.4byte	0x40a
	.4byte	.LLST12
	.uleb128 0x2a
	.4byte	.Ldebug_ranges0+0x18
	.uleb128 0x29
	.4byte	0x417
	.4byte	.LLST13
	.uleb128 0x29
	.4byte	0x423
	.4byte	.LLST14
	.uleb128 0x29
	.4byte	0x42f
	.4byte	.LLST15
	.uleb128 0x2b
	.4byte	0x22a
	.4byte	.LBB69
	.4byte	.LBE69-.LBB69
	.byte	0x1
	.2byte	0x178
	.4byte	0x52d
	.uleb128 0x1c
	.4byte	0x236
	.4byte	.LLST16
	.uleb128 0x19
	.4byte	.LBB70
	.4byte	.LBE70-.LBB70
	.uleb128 0x2c
	.4byte	.LVL30
	.4byte	0x10b5
	.uleb128 0x2d
	.4byte	.LVL31
	.4byte	0x10c0
	.4byte	0x522
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL32
	.4byte	0x10cb
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	0x22a
	.4byte	.LBB71
	.4byte	.LBE71-.LBB71
	.byte	0x1
	.2byte	0x17a
	.uleb128 0x1c
	.4byte	0x236
	.4byte	.LLST17
	.uleb128 0x19
	.4byte	.LBB72
	.4byte	.LBE72-.LBB72
	.uleb128 0x2c
	.4byte	.LVL33
	.4byte	0x10b5
	.uleb128 0x2d
	.4byte	.LVL34
	.4byte	0x10c0
	.4byte	0x56b
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL35
	.4byte	0x10cb
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF75
	.byte	0x1
	.byte	0x8f
	.4byte	0xe3
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9c3
	.uleb128 0x14
	.4byte	.LASF61
	.byte	0x1
	.byte	0x8f
	.4byte	0x9c3
	.4byte	.LLST18
	.uleb128 0x14
	.4byte	.LASF62
	.byte	0x1
	.byte	0x8f
	.4byte	0x25
	.4byte	.LLST19
	.uleb128 0x14
	.4byte	.LASF47
	.byte	0x1
	.byte	0x8f
	.4byte	0x16a
	.4byte	.LLST20
	.uleb128 0x14
	.4byte	.LASF63
	.byte	0x1
	.byte	0x90
	.4byte	0x9ce
	.4byte	.LLST21
	.uleb128 0x14
	.4byte	.LASF64
	.byte	0x1
	.byte	0x90
	.4byte	0x9d4
	.4byte	.LLST22
	.uleb128 0x18
	.string	"ret"
	.byte	0x1
	.byte	0x92
	.4byte	0xe3
	.4byte	.LLST23
	.uleb128 0x16
	.4byte	.LASF65
	.byte	0x1
	.byte	0x93
	.4byte	0xee
	.4byte	.LLST24
	.uleb128 0x16
	.4byte	.LASF66
	.byte	0x1
	.byte	0x93
	.4byte	0xee
	.4byte	.LLST25
	.uleb128 0x16
	.4byte	.LASF67
	.byte	0x1
	.byte	0x9f
	.4byte	0x9da
	.4byte	.LLST26
	.uleb128 0x2f
	.4byte	.LASF68
	.byte	0x1
	.byte	0xae
	.4byte	0x3e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2f
	.4byte	.LASF69
	.byte	0x1
	.byte	0xaf
	.4byte	0x3e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2f
	.4byte	.LASF50
	.byte	0x1
	.byte	0xb0
	.4byte	0xcd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x16
	.4byte	.LASF70
	.byte	0x1
	.byte	0xb8
	.4byte	0x3e
	.4byte	.LLST27
	.uleb128 0x18
	.string	"end"
	.byte	0x1
	.byte	0xbb
	.4byte	0x3e
	.4byte	.LLST28
	.uleb128 0x30
	.4byte	.LASF71
	.4byte	0x9f0
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5732
	.uleb128 0x1b
	.4byte	0x24a
	.4byte	.LBB75
	.4byte	.LBE75-.LBB75
	.byte	0x1
	.byte	0x97
	.4byte	0x6a5
	.uleb128 0x1c
	.4byte	0x25a
	.4byte	.LLST29
	.uleb128 0x19
	.4byte	.LBB76
	.4byte	.LBE76-.LBB76
	.uleb128 0x29
	.4byte	0x263
	.4byte	.LLST30
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.Ldebug_ranges0+0x30
	.4byte	0x6bc
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.byte	0x9a
	.4byte	0x3e
	.4byte	.LLST31
	.byte	0
	.uleb128 0x31
	.4byte	.Ldebug_ranges0+0x50
	.4byte	0x6e4
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.byte	0xa7
	.4byte	0x3e
	.4byte	.LLST32
	.uleb128 0x1d
	.4byte	.LVL58
	.4byte	0x43e
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x40
	.byte	0x3c
	.byte	0x24
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LBB81
	.4byte	.LBE81-.LBB81
	.4byte	0x7a9
	.uleb128 0x16
	.4byte	.LASF72
	.byte	0x1
	.byte	0xbd
	.4byte	0x3e
	.4byte	.LLST33
	.uleb128 0x18
	.string	"pos"
	.byte	0x1
	.byte	0xbe
	.4byte	0x3e
	.4byte	.LLST34
	.uleb128 0x16
	.4byte	.LASF51
	.byte	0x1
	.byte	0xbf
	.4byte	0x30
	.4byte	.LLST35
	.uleb128 0x17
	.4byte	.LBB82
	.4byte	.LBE82-.LBB82
	.4byte	0x73b
	.uleb128 0x16
	.4byte	.LASF52
	.byte	0x1
	.byte	0xbf
	.4byte	0x30
	.4byte	.LLST35
	.byte	0
	.uleb128 0x17
	.4byte	.LBB83
	.4byte	.LBE83-.LBB83
	.4byte	0x798
	.uleb128 0x16
	.4byte	.LASF73
	.byte	0x1
	.byte	0xc1
	.4byte	0x3e
	.4byte	.LLST37
	.uleb128 0x16
	.4byte	.LASF74
	.byte	0x1
	.byte	0xc2
	.4byte	0xb7
	.4byte	.LLST38
	.uleb128 0x1f
	.4byte	0x20e
	.4byte	.LBB84
	.4byte	.LBE84-.LBB84
	.byte	0x1
	.byte	0xc1
	.uleb128 0x1c
	.4byte	0x21e
	.4byte	.LLST39
	.uleb128 0x1d
	.4byte	.LVL70
	.4byte	0x109f
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0xa
	.byte	0x74
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x23
	.uleb128 0x3ff10000
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL74
	.4byte	0x10aa
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.Ldebug_ranges0+0x68
	.4byte	0x8bb
	.uleb128 0x16
	.4byte	.LASF72
	.byte	0x1
	.byte	0xd4
	.4byte	0xcd
	.4byte	.LLST40
	.uleb128 0x16
	.4byte	.LASF51
	.byte	0x1
	.byte	0xd5
	.4byte	0x30
	.4byte	.LLST41
	.uleb128 0x17
	.4byte	.LBB87
	.4byte	.LBE87-.LBB87
	.4byte	0x7ed
	.uleb128 0x16
	.4byte	.LASF52
	.byte	0x1
	.byte	0xd5
	.4byte	0x30
	.4byte	.LLST41
	.byte	0
	.uleb128 0x31
	.4byte	.Ldebug_ranges0+0x80
	.4byte	0x8a9
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.byte	0xd6
	.4byte	0x3e
	.4byte	.LLST43
	.uleb128 0x19
	.4byte	.LBB89
	.4byte	.LBE89-.LBB89
	.uleb128 0x1a
	.4byte	.LASF53
	.byte	0x1
	.byte	0xd8
	.4byte	0xcd
	.uleb128 0x1a
	.4byte	.LASF54
	.byte	0x1
	.byte	0xd9
	.4byte	0xcd
	.uleb128 0x1b
	.4byte	0x20e
	.4byte	.LBB90
	.4byte	.LBE90-.LBB90
	.byte	0x1
	.byte	0xd8
	.4byte	0x84f
	.uleb128 0x1c
	.4byte	0x21e
	.4byte	.LLST44
	.uleb128 0x1d
	.4byte	.LVL86
	.4byte	0x109f
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	0x20e
	.4byte	.LBB92
	.4byte	.LBE92-.LBB92
	.byte	0x1
	.byte	0xd9
	.4byte	0x87c
	.uleb128 0x1c
	.4byte	0x21e
	.4byte	.LLST45
	.uleb128 0x1d
	.4byte	.LVL88
	.4byte	0x109f
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL89
	.4byte	0x10d6
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC22
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xdc
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5732
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC19
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL96
	.4byte	0x10aa
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -36
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	0x22a
	.4byte	.LBB96
	.4byte	.LBE96-.LBB96
	.byte	0x1
	.byte	0xfa
	.4byte	0x907
	.uleb128 0x1c
	.4byte	0x236
	.4byte	.LLST46
	.uleb128 0x19
	.4byte	.LBB97
	.4byte	.LBE97-.LBB97
	.uleb128 0x2c
	.4byte	.LVL103
	.4byte	0x10b5
	.uleb128 0x2d
	.4byte	.LVL104
	.4byte	0x10c0
	.4byte	0x8fc
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL105
	.4byte	0x10cb
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	0x22a
	.4byte	.LBB98
	.4byte	.LBE98-.LBB98
	.byte	0x1
	.byte	0xfb
	.4byte	0x953
	.uleb128 0x1c
	.4byte	0x236
	.4byte	.LLST47
	.uleb128 0x19
	.4byte	.LBB99
	.4byte	.LBE99-.LBB99
	.uleb128 0x2c
	.4byte	.LVL106
	.4byte	0x10b5
	.uleb128 0x2d
	.4byte	.LVL107
	.4byte	0x10c0
	.4byte	0x948
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL108
	.4byte	0x10cb
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL53
	.4byte	0x10e1
	.4byte	0x96d
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x44
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x804
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL55
	.4byte	0x10ec
	.uleb128 0x2c
	.4byte	.LVL61
	.4byte	0x2e1
	.uleb128 0x2d
	.4byte	.LVL62
	.4byte	0x289
	.4byte	0x9a8
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL109
	.4byte	0x10f7
	.uleb128 0x1d
	.4byte	.LVL110
	.4byte	0x1102
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x9c9
	.uleb128 0x32
	.4byte	0x3e
	.uleb128 0x5
	.byte	0x4
	.4byte	0xb0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x175
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1ea
	.uleb128 0x33
	.4byte	0xa9
	.4byte	0x9f0
	.uleb128 0x34
	.4byte	0x9b
	.byte	0x14
	.byte	0
	.uleb128 0x32
	.4byte	0x9e0
	.uleb128 0x2e
	.4byte	.LASF76
	.byte	0x1
	.byte	0x75
	.4byte	0xe3
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb05
	.uleb128 0x14
	.4byte	.LASF77
	.byte	0x1
	.byte	0x75
	.4byte	0x25
	.4byte	.LLST48
	.uleb128 0x14
	.4byte	.LASF78
	.byte	0x1
	.byte	0x75
	.4byte	0x25
	.4byte	.LLST49
	.uleb128 0x13
	.4byte	.LASF47
	.byte	0x1
	.byte	0x75
	.4byte	0x16a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x13
	.4byte	.LASF63
	.byte	0x1
	.byte	0x76
	.4byte	0x9ce
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x13
	.4byte	.LASF64
	.byte	0x1
	.byte	0x76
	.4byte	0x9d4
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x18
	.string	"ret"
	.byte	0x1
	.byte	0x78
	.4byte	0xe3
	.4byte	.LLST50
	.uleb128 0x16
	.4byte	.LASF79
	.byte	0x1
	.byte	0x80
	.4byte	0x3e
	.4byte	.LLST51
	.uleb128 0x16
	.4byte	.LASF62
	.byte	0x1
	.byte	0x81
	.4byte	0x3e
	.4byte	.LLST52
	.uleb128 0x16
	.4byte	.LASF61
	.byte	0x1
	.byte	0x83
	.4byte	0x2d5
	.4byte	.LLST53
	.uleb128 0x17
	.4byte	.LBB101
	.4byte	.LBE101-.LBB101
	.4byte	0xaaa
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.byte	0x87
	.4byte	0x3e
	.4byte	.LLST54
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL125
	.4byte	0x10e1
	.4byte	0xac7
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x4
	.byte	0x73
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x800
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL129
	.4byte	0x57b
	.4byte	0xaf4
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL131
	.4byte	0x1102
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x35
	.4byte	.LASF81
	.byte	0x1
	.2byte	0x105
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbe2
	.uleb128 0x26
	.4byte	.LASF35
	.byte	0x1
	.2byte	0x105
	.4byte	0x175
	.4byte	.LLST55
	.uleb128 0x36
	.string	"it"
	.byte	0x1
	.2byte	0x108
	.4byte	0x9da
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x30
	.4byte	.LASF71
	.4byte	0xbf2
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5741
	.uleb128 0x17
	.4byte	.LBB102
	.4byte	.LBE102-.LBB102
	.4byte	0xb8f
	.uleb128 0x37
	.string	"i"
	.byte	0x1
	.2byte	0x10f
	.4byte	0x3e
	.4byte	.LLST56
	.uleb128 0x1d
	.4byte	.LVL142
	.4byte	0x10d6
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC22
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x110
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5741
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC31
	.byte	0
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL139
	.4byte	0x10ec
	.uleb128 0x2c
	.4byte	.LVL148
	.4byte	0x10f7
	.uleb128 0x2d
	.4byte	.LVL149
	.4byte	0x10d6
	.4byte	0xbd1
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC22
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x11c
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5741
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC37
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL150
	.4byte	0x1102
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x33
	.4byte	0xa9
	.4byte	0xbf2
	.uleb128 0x34
	.4byte	0x9b
	.byte	0x10
	.byte	0
	.uleb128 0x32
	.4byte	0xbe2
	.uleb128 0x38
	.4byte	.LASF113
	.byte	0x1
	.2byte	0x121
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xca8
	.uleb128 0x37
	.string	"it"
	.byte	0x1
	.2byte	0x124
	.4byte	0x9da
	.4byte	.LLST57
	.uleb128 0x17
	.4byte	.LBB103
	.4byte	.LBE103-.LBB103
	.4byte	0xc8b
	.uleb128 0x36
	.string	"i"
	.byte	0x1
	.2byte	0x128
	.4byte	0x3e
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2b
	.4byte	0x26d
	.4byte	.LBB104
	.4byte	.LBE104-.LBB104
	.byte	0x1
	.2byte	0x12a
	.4byte	0xc6b
	.uleb128 0x1c
	.4byte	0x27d
	.4byte	.LLST58
	.uleb128 0x1d
	.4byte	.LVL158
	.4byte	0x110d
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0xa
	.byte	0x72
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x23
	.uleb128 0x3ff10000
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL159
	.4byte	0x1118
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC44
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL151
	.4byte	0x2e1
	.uleb128 0x1d
	.4byte	.LVL153
	.4byte	0x1118
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC40
	.byte	0
	.byte	0
	.uleb128 0x39
	.4byte	.LASF80
	.byte	0x1
	.2byte	0x130
	.4byte	0xcd
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdc1
	.uleb128 0x26
	.4byte	.LASF47
	.byte	0x1
	.2byte	0x130
	.4byte	0x16a
	.4byte	.LLST59
	.uleb128 0x3a
	.4byte	.LASF37
	.byte	0x1
	.2byte	0x133
	.4byte	0x3e
	.4byte	.LLST60
	.uleb128 0x3b
	.4byte	.LASF68
	.byte	0x1
	.2byte	0x134
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3b
	.4byte	.LASF69
	.byte	0x1
	.2byte	0x135
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3b
	.4byte	.LASF50
	.byte	0x1
	.2byte	0x136
	.4byte	0xcd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3b
	.4byte	.LASF51
	.byte	0x1
	.2byte	0x138
	.4byte	0x30
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x17
	.4byte	.LBB106
	.4byte	.LBE106-.LBB106
	.4byte	0xd39
	.uleb128 0x3b
	.4byte	.LASF52
	.byte	0x1
	.2byte	0x138
	.4byte	0x30
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.uleb128 0x31
	.4byte	.Ldebug_ranges0+0x98
	.4byte	0xd81
	.uleb128 0x36
	.string	"i"
	.byte	0x1
	.2byte	0x139
	.4byte	0x3e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x27
	.4byte	0x20e
	.4byte	.LBB108
	.4byte	.LBE108-.LBB108
	.byte	0x1
	.2byte	0x13a
	.uleb128 0x1c
	.4byte	0x21e
	.4byte	.LLST61
	.uleb128 0x1d
	.4byte	.LVL170
	.4byte	0x109f
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0xa
	.byte	0x73
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x23
	.uleb128 0x3ff10000
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL162
	.4byte	0x2e1
	.uleb128 0x2d
	.4byte	.LVL163
	.4byte	0x289
	.4byte	0xdb0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL173
	.4byte	0x10aa
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x35
	.4byte	.LASF82
	.byte	0x1
	.2byte	0x153
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe6a
	.uleb128 0x26
	.4byte	.LASF56
	.byte	0x1
	.2byte	0x153
	.4byte	0x25
	.4byte	.LLST62
	.uleb128 0x26
	.4byte	.LASF57
	.byte	0x1
	.2byte	0x153
	.4byte	0x25
	.4byte	.LLST63
	.uleb128 0x27
	.4byte	0x3c8
	.4byte	.LBB119
	.4byte	.LBE119-.LBB119
	.byte	0x1
	.2byte	0x155
	.uleb128 0x28
	.4byte	0x3f1
	.byte	0x1
	.uleb128 0x1c
	.4byte	0x3e5
	.4byte	.LLST64
	.uleb128 0x1c
	.4byte	0x3d9
	.4byte	.LLST65
	.uleb128 0x19
	.4byte	.LBB120
	.4byte	.LBE120-.LBB120
	.uleb128 0x3c
	.4byte	0x3fd
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x19
	.4byte	.LBB121
	.4byte	.LBE121-.LBB121
	.uleb128 0x29
	.4byte	0x40a
	.4byte	.LLST66
	.uleb128 0x19
	.4byte	.LBB122
	.4byte	.LBE122-.LBB122
	.uleb128 0x29
	.4byte	0x417
	.4byte	.LLST67
	.uleb128 0x29
	.4byte	0x423
	.4byte	.LLST68
	.uleb128 0x29
	.4byte	0x42f
	.4byte	.LLST69
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x39
	.4byte	.LASF83
	.byte	0x1
	.2byte	0x184
	.4byte	0xcd
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xef2
	.uleb128 0x26
	.4byte	.LASF84
	.byte	0x1
	.2byte	0x184
	.4byte	0xb0
	.4byte	.LLST70
	.uleb128 0x37
	.string	"c"
	.byte	0x1
	.2byte	0x186
	.4byte	0xd8
	.4byte	.LLST71
	.uleb128 0x3a
	.4byte	.LASF85
	.byte	0x1
	.2byte	0x187
	.4byte	0x25
	.4byte	.LLST72
	.uleb128 0x22
	.4byte	.LASF79
	.byte	0x1
	.2byte	0x198
	.4byte	0xcd
	.uleb128 0x3a
	.4byte	.LASF86
	.byte	0x1
	.2byte	0x19d
	.4byte	0xcd
	.4byte	.LLST73
	.uleb128 0x27
	.4byte	0x26d
	.4byte	.LBB123
	.4byte	.LBE123-.LBB123
	.byte	0x1
	.2byte	0x198
	.uleb128 0x1c
	.4byte	0x27d
	.4byte	.LLST74
	.uleb128 0x2c
	.4byte	.LVL195
	.4byte	0x110d
	.byte	0
	.byte	0
	.uleb128 0x39
	.4byte	.LASF87
	.byte	0x1
	.2byte	0x1a2
	.4byte	0xb0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x102e
	.uleb128 0x26
	.4byte	.LASF86
	.byte	0x1
	.2byte	0x1a2
	.4byte	0xcd
	.4byte	.LLST75
	.uleb128 0x26
	.4byte	.LASF47
	.byte	0x1
	.2byte	0x1a2
	.4byte	0x16a
	.4byte	.LLST76
	.uleb128 0x3b
	.4byte	.LASF79
	.byte	0x1
	.2byte	0x1a4
	.4byte	0xcd
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3a
	.4byte	.LASF70
	.byte	0x1
	.2byte	0x1a5
	.4byte	0x3e
	.4byte	.LLST77
	.uleb128 0x37
	.string	"end"
	.byte	0x1
	.2byte	0x1a5
	.4byte	0x3e
	.4byte	.LLST78
	.uleb128 0x3b
	.4byte	.LASF88
	.byte	0x1
	.2byte	0x1a5
	.4byte	0x3e
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x3b
	.4byte	.LASF89
	.byte	0x1
	.2byte	0x1a6
	.4byte	0xd8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3b
	.4byte	.LASF51
	.byte	0x1
	.2byte	0x1b3
	.4byte	0x30
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x17
	.4byte	.LBB125
	.4byte	.LBE125-.LBB125
	.4byte	0xfa1
	.uleb128 0x3b
	.4byte	.LASF52
	.byte	0x1
	.2byte	0x1b3
	.4byte	0x30
	.uleb128 0x1
	.byte	0x56
	.byte	0
	.uleb128 0x17
	.4byte	.LBB126
	.4byte	.LBE126-.LBB126
	.4byte	0x101d
	.uleb128 0x37
	.string	"i"
	.byte	0x1
	.2byte	0x1b4
	.4byte	0x3e
	.4byte	.LLST79
	.uleb128 0x2b
	.4byte	0x20e
	.4byte	.LBB127
	.4byte	.LBE127-.LBB127
	.byte	0x1
	.2byte	0x1b5
	.4byte	0xff2
	.uleb128 0x1c
	.4byte	0x21e
	.4byte	.LLST80
	.uleb128 0x1d
	.4byte	.LVL212
	.4byte	0x109f
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0xa
	.byte	0x73
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x23
	.uleb128 0x3ff10000
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LBB129
	.4byte	.LBE129-.LBB129
	.uleb128 0x3a
	.4byte	.LASF85
	.byte	0x1
	.2byte	0x1b7
	.4byte	0xd8
	.4byte	.LLST81
	.uleb128 0x1d
	.4byte	.LVL217
	.4byte	0x10aa
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL221
	.4byte	0x10aa
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF90
	.byte	0x1
	.byte	0x47
	.4byte	0x1f5
	.uleb128 0x5
	.byte	0x3
	.4byte	s_mmap_entries_head
	.uleb128 0x33
	.4byte	0xb7
	.4byte	0x104f
	.uleb128 0x34
	.4byte	0x9b
	.byte	0xff
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF91
	.byte	0x1
	.byte	0x49
	.4byte	0x103f
	.uleb128 0x5
	.byte	0x3
	.4byte	s_mmap_page_refcnt
	.uleb128 0x2f
	.4byte	.LASF92
	.byte	0x1
	.byte	0x4a
	.4byte	0xcd
	.uleb128 0x5
	.byte	0x3
	.4byte	s_mmap_last_handle
	.uleb128 0x33
	.4byte	0xcd
	.4byte	0x1081
	.uleb128 0x34
	.4byte	0x9b
	.byte	0x7
	.byte	0
	.uleb128 0x3b
	.4byte	.LASF93
	.byte	0x1
	.2byte	0x14f
	.4byte	0x1071
	.uleb128 0x5
	.byte	0x3
	.4byte	written_pages
	.uleb128 0x3d
	.4byte	.LASF114
	.byte	0x9
	.2byte	0x21a
	.4byte	0x146
	.uleb128 0x3e
	.4byte	.LASF94
	.4byte	.LASF94
	.byte	0xb
	.byte	0x1f
	.uleb128 0x3e
	.4byte	.LASF95
	.4byte	.LASF95
	.byte	0xc
	.byte	0x99
	.uleb128 0x3e
	.4byte	.LASF96
	.4byte	.LASF96
	.byte	0xb
	.byte	0x18
	.uleb128 0x3e
	.4byte	.LASF97
	.4byte	.LASF97
	.byte	0x3
	.byte	0x94
	.uleb128 0x3e
	.4byte	.LASF98
	.4byte	.LASF98
	.byte	0xb
	.byte	0x19
	.uleb128 0x3e
	.4byte	.LASF99
	.4byte	.LASF99
	.byte	0xd
	.byte	0x29
	.uleb128 0x3e
	.4byte	.LASF100
	.4byte	.LASF100
	.byte	0xe
	.byte	0x37
	.uleb128 0x3e
	.4byte	.LASF101
	.4byte	.LASF101
	.byte	0xf
	.byte	0x26
	.uleb128 0x3e
	.4byte	.LASF102
	.4byte	.LASF102
	.byte	0xf
	.byte	0x29
	.uleb128 0x3e
	.4byte	.LASF103
	.4byte	.LASF103
	.byte	0x10
	.byte	0x5a
	.uleb128 0x3e
	.4byte	.LASF104
	.4byte	.LASF104
	.byte	0xb
	.byte	0x1e
	.uleb128 0x3e
	.4byte	.LASF105
	.4byte	.LASF105
	.byte	0x11
	.byte	0xb2
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
	.uleb128 0xa
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x18
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
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0xb
	.byte	0x1
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x3b
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
	.uleb128 0x3c
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x3e
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
	.byte	0x53
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL3
	.4byte	.LFE26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL4
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x4
	.byte	0xa
	.2byte	0x100
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL6
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x4
	.byte	0x75
	.sleb128 -8192
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x4
	.byte	0x75
	.sleb128 -8192
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL8
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL19
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL22
	.4byte	.LFE33
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL19
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL23
	.4byte	.LFE33
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL20
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL24
	.4byte	.LVL30-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL30-1
	.4byte	.LVL36
	.2byte	0x8
	.byte	0x72
	.sleb128 0
	.byte	0x11
	.sleb128 -65536
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0xa
	.byte	0x73
	.sleb128 65535
	.byte	0x11
	.sleb128 -65536
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL37
	.4byte	.LFE33
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL20
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL22
	.4byte	.LFE33
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL21
	.4byte	.LVL30-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL30-1
	.4byte	.LVL37
	.2byte	0x9
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x11
	.sleb128 -65536
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL37
	.4byte	.LFE33
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL25
	.4byte	.LVL30-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL37
	.4byte	.LFE33
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL26
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL28
	.4byte	.LVL30-1
	.2byte	0x5
	.byte	0x78
	.sleb128 0
	.byte	0x40
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL37
	.4byte	.LVL39
	.2byte	0x5
	.byte	0x78
	.sleb128 0
	.byte	0x40
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL40
	.4byte	.LFE33
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL27
	.4byte	.LVL30-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL37
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL28
	.4byte	.LVL30-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x7
	.byte	0x31
	.byte	0x78
	.sleb128 0
	.byte	0x40
	.byte	0x25
	.byte	0x24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL29
	.4byte	.LVL37
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL32
	.4byte	.LVL37
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL41
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL49
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL77
	.4byte	.LVL80
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL80
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL84
	.4byte	.LVL101
	.2byte	0x2
	.byte	0x91
	.sleb128 -52
	.4byte	.LVL101
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
	.4byte	.LVL113
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL113
	.4byte	.LVL114
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL114
	.4byte	.LVL115
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL115
	.4byte	.LVL116
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL116
	.4byte	.LVL117
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL117
	.4byte	.LVL118
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL118
	.4byte	.LVL119
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL119
	.4byte	.LVL120
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL120
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL41
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL78
	.4byte	.LVL80
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL80
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL98
	.4byte	.LVL99
	.2byte	0x2
	.byte	0x74
	.sleb128 8
	.4byte	.LVL99
	.4byte	.LVL111
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL111
	.4byte	.LVL120
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL120
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL41
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL63
	.4byte	.LVL111
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL111
	.4byte	.LVL119
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL119
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL41
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL45
	.4byte	.LVL111
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
	.4byte	.LVL111
	.4byte	.LVL113
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL113
	.4byte	.LFE28
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL41
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL44
	.4byte	.LVL111
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	.LVL111
	.4byte	.LVL113
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL113
	.4byte	.LFE28
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL79
	.4byte	.LVL80
	.2byte	0x4
	.byte	0xa
	.2byte	0x101
	.byte	0x9f
	.4byte	.LVL100
	.4byte	.LVL101
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL101
	.4byte	.LVL111
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL55
	.4byte	.LVL57
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL57
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL64
	.4byte	.LVL111
	.2byte	0x2
	.byte	0x91
	.sleb128 -40
	.4byte	.LVL119
	.4byte	.LVL120
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL120
	.4byte	.LFE28
	.2byte	0x2
	.byte	0x91
	.sleb128 -40
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL42
	.4byte	.LVL84
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL84
	.4byte	.LVL91
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	.LVL91
	.4byte	.LVL93
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL93
	.4byte	.LVL111
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	.LVL111
	.4byte	.LVL120
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL54
	.4byte	.LVL55-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL55-1
	.4byte	.LVL111
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL117
	.4byte	.LVL119
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL119
	.4byte	.LFE28
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL65
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL84
	.4byte	.LVL101
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL65
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL66
	.4byte	.LVL83
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL43
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL49
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL77
	.4byte	.LVL80
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL80
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL84
	.4byte	.LVL101
	.2byte	0x2
	.byte	0x91
	.sleb128 -52
	.4byte	.LVL101
	.4byte	.LVL111
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL113
	.4byte	.LVL114
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL114
	.4byte	.LVL115
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL115
	.4byte	.LVL116
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL116
	.4byte	.LVL117
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL117
	.4byte	.LVL118
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL118
	.4byte	.LVL119
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL119
	.4byte	.LVL120
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL120
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL47
	.4byte	.LVL49
	.2byte	0x6
	.byte	0x75
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x6
	.byte	0x75
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x21
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL49
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL52
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL113
	.4byte	.LVL119
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL55
	.4byte	.LVL57
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL57
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL119
	.4byte	.LVL120
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL66
	.4byte	.LVL68
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL68
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL67
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL68
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL67
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL70
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL71
	.4byte	.LVL72
	.2byte	0x8
	.byte	0x74
	.sleb128 0
	.byte	0x3
	.4byte	s_mmap_page_refcnt
	.byte	0x22
	.4byte	.LVL72
	.4byte	.LVL73
	.2byte	0x8
	.byte	0x74
	.sleb128 0
	.byte	0x3
	.4byte	s_mmap_page_refcnt-1
	.byte	0x22
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0xb
	.byte	0x74
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x23
	.uleb128 0x3ff10000
	.byte	0x9f
	.4byte	.LVL69
	.4byte	.LVL70-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL70-1
	.4byte	.LVL72
	.2byte	0xb
	.byte	0x74
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x23
	.uleb128 0x3ff10000
	.byte	0x9f
	.4byte	.LVL72
	.4byte	.LVL73
	.2byte	0xb
	.byte	0x74
	.sleb128 -1
	.byte	0x32
	.byte	0x24
	.byte	0x23
	.uleb128 0x3ff10000
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL80
	.4byte	.LVL84
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL84
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL81
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL82
	.4byte	.LVL101
	.2byte	0x2
	.byte	0x91
	.sleb128 -36
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL81
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL84
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL85
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL90
	.4byte	.LVL92
	.2byte	0x4
	.byte	0x72
	.sleb128 -8192
	.byte	0x9f
	.4byte	.LVL92
	.4byte	.LVL94
	.2byte	0xb
	.byte	0x77
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x23
	.uleb128 0x3ff10000
	.byte	0x9f
	.4byte	.LVL94
	.4byte	.LVL95
	.2byte	0xb
	.byte	0x77
	.sleb128 -1
	.byte	0x32
	.byte	0x24
	.byte	0x23
	.uleb128 0x3ff10000
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL87
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL92
	.4byte	.LVL94
	.2byte	0xb
	.byte	0x77
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x23
	.uleb128 0x3ff12000
	.byte	0x9f
	.4byte	.LVL94
	.4byte	.LVL95
	.2byte	0xb
	.byte	0x77
	.sleb128 -1
	.byte	0x32
	.byte	0x24
	.byte	0x23
	.uleb128 0x3ff12000
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL102
	.4byte	.LVL108
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL105
	.4byte	.LVL108
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL121
	.4byte	.LVL122
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL122
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
	.4byte	.LFE27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL121
	.4byte	.LVL123
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL123
	.4byte	.LVL132
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL132
	.4byte	.LVL136
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL136
	.4byte	.LFE27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL130
	.4byte	.LVL132
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL122
	.4byte	.LVL130
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL130
	.4byte	.LVL132
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x40
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL136
	.4byte	.LVL137
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL137
	.4byte	.LFE27
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x40
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL124
	.4byte	.LVL126
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL126
	.4byte	.LVL132
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL136
	.4byte	.LFE27
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL126
	.4byte	.LVL132
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL136
	.4byte	.LFE27
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LVL127
	.4byte	.LVL129-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LVL138
	.4byte	.LVL144
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL144
	.4byte	.LVL145
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL145
	.4byte	.LVL147
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL147
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL141
	.4byte	.LVL142-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL142
	.4byte	.LVL145
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL152
	.4byte	.LVL155
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LVL156
	.4byte	.LVL157
	.2byte	0xb
	.byte	0x72
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x23
	.uleb128 0x3ff10000
	.byte	0x9f
	.4byte	.LVL157
	.4byte	.LVL158-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL158-1
	.4byte	.LVL159
	.2byte	0xb
	.byte	0x72
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x23
	.uleb128 0x3ff10000
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST59:
	.4byte	.LVL161
	.4byte	.LVL166
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL166
	.4byte	.LFE31
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST60:
	.4byte	.LVL162
	.4byte	.LVL167
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL167
	.4byte	.LFE31
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST61:
	.4byte	.LVL168
	.4byte	.LVL169
	.2byte	0xb
	.byte	0x73
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x23
	.uleb128 0x3ff10000
	.byte	0x9f
	.4byte	.LVL169
	.4byte	.LVL170-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL170-1
	.4byte	.LVL171
	.2byte	0xb
	.byte	0x73
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x23
	.uleb128 0x3ff10000
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST62:
	.4byte	.LVL174
	.4byte	.LVL177
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL177
	.4byte	.LFE32
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST63:
	.4byte	.LVL174
	.4byte	.LVL178
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL178
	.4byte	.LFE32
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST64:
	.4byte	.LVL175
	.4byte	.LVL179
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL179
	.4byte	.LFE32
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST65:
	.4byte	.LVL175
	.4byte	.LVL177
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL177
	.4byte	.LFE32
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST66:
	.4byte	.LVL179
	.4byte	.LVL180
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL180
	.4byte	.LFE32
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST67:
	.4byte	.LVL181
	.4byte	.LVL184
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL184
	.4byte	.LVL187
	.2byte	0x5
	.byte	0x7a
	.sleb128 0
	.byte	0x40
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST68:
	.4byte	.LVL182
	.4byte	.LVL185
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL185
	.4byte	.LVL187
	.2byte	0x7
	.byte	0x7a
	.sleb128 0
	.byte	0x40
	.byte	0x25
	.byte	0x35
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST69:
	.4byte	.LVL183
	.4byte	.LVL186
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL186
	.4byte	.LVL187
	.2byte	0x7
	.byte	0x31
	.byte	0x7a
	.sleb128 0
	.byte	0x40
	.byte	0x25
	.byte	0x24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST70:
	.4byte	.LVL188
	.4byte	.LVL197
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL197
	.4byte	.LVL198
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL198
	.4byte	.LVL199
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL199
	.4byte	.LVL200
	.2byte	0x7
	.byte	0x78
	.sleb128 1073741824
	.byte	0x9f
	.4byte	.LVL200
	.4byte	.LVL201
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL201
	.4byte	.LVL202
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL202
	.4byte	.LVL203
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL203
	.4byte	.LFE35
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST71:
	.4byte	.LVL189
	.4byte	.LVL197
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL197
	.4byte	.LVL198
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL198
	.4byte	.LVL199
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL199
	.4byte	.LVL200
	.2byte	0x7
	.byte	0x78
	.sleb128 1073741824
	.byte	0x9f
	.4byte	.LVL200
	.4byte	.LVL201
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL201
	.4byte	.LVL202
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL202
	.4byte	.LVL203
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL203
	.4byte	.LFE35
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST72:
	.4byte	.LVL190
	.4byte	.LVL191
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL192
	.4byte	.LVL195-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL200
	.4byte	.LVL202
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST73:
	.4byte	.LVL196
	.4byte	.LVL198
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST74:
	.4byte	.LVL193
	.4byte	.LVL194
	.2byte	0xb
	.byte	0x78
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x23
	.uleb128 0x3ff10000
	.byte	0x9f
	.4byte	.LVL194
	.4byte	.LVL195-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST75:
	.4byte	.LVL204
	.4byte	.LVL218
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL218
	.4byte	.LVL219
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL219
	.4byte	.LVL222
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL222
	.4byte	.LFE36
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST76:
	.4byte	.LVL204
	.4byte	.LVL206
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL206
	.4byte	.LVL207
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL207
	.4byte	.LVL208
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL208
	.4byte	.LFE36
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST77:
	.4byte	.LVL208
	.4byte	.LVL210
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST78:
	.4byte	.LVL208
	.4byte	.LVL215
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL219
	.4byte	.LFE36
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST79:
	.4byte	.LVL209
	.4byte	.LVL214
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL219
	.4byte	.LFE36
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST80:
	.4byte	.LVL210
	.4byte	.LVL211
	.2byte	0xb
	.byte	0x73
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x23
	.uleb128 0x3ff10000
	.byte	0x9f
	.4byte	.LVL211
	.4byte	.LVL212-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL212-1
	.4byte	.LVL213
	.2byte	0xb
	.byte	0x73
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x23
	.uleb128 0x3ff10000
	.byte	0x9f
	.4byte	.LVL219
	.4byte	.LVL220
	.2byte	0xb
	.byte	0x73
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x23
	.uleb128 0x3ff10000
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST81:
	.4byte	.LVL216
	.4byte	.LVL219
	.2byte	0x1
	.byte	0x53
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
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB67
	.4byte	.LBE67
	.4byte	.LBB74
	.4byte	.LBE74
	.4byte	0
	.4byte	0
	.4byte	.LBB68
	.4byte	.LBE68
	.4byte	.LBB73
	.4byte	.LBE73
	.4byte	0
	.4byte	0
	.4byte	.LBB77
	.4byte	.LBE77
	.4byte	.LBB78
	.4byte	.LBE78
	.4byte	.LBB100
	.4byte	.LBE100
	.4byte	0
	.4byte	0
	.4byte	.LBB79
	.4byte	.LBE79
	.4byte	.LBB80
	.4byte	.LBE80
	.4byte	0
	.4byte	0
	.4byte	.LBB86
	.4byte	.LBE86
	.4byte	.LBB95
	.4byte	.LBE95
	.4byte	0
	.4byte	0
	.4byte	.LBB88
	.4byte	.LBE88
	.4byte	.LBB94
	.4byte	.LBE94
	.4byte	0
	.4byte	0
	.4byte	.LBB107
	.4byte	.LBE107
	.4byte	.LBB110
	.4byte	.LBE110
	.4byte	0
	.4byte	0
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	.LFB36
	.4byte	.LFE36
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF105:
	.string	"printf"
.LASF37:
	.string	"count"
.LASF45:
	.string	"esp_ptr_internal"
.LASF68:
	.string	"region_begin"
.LASF101:
	.string	"spi_flash_disable_interrupts_caches_and_other_cpu"
.LASF3:
	.string	"size_t"
.LASF26:
	.string	"page_size"
.LASF62:
	.string	"page_count"
.LASF64:
	.string	"out_handle"
.LASF4:
	.string	"__uint8_t"
.LASF61:
	.string	"pages"
.LASF100:
	.string	"heap_caps_malloc"
.LASF86:
	.string	"phys_offs"
.LASF10:
	.string	"long long unsigned int"
.LASF32:
	.string	"spi_flash_mmap_handle_t"
.LASF60:
	.string	"addr"
.LASF49:
	.string	"out_size"
.LASF44:
	.string	"DPORT_SEQUENCE_REG_READ"
.LASF80:
	.string	"spi_flash_mmap_get_free_pages"
.LASF103:
	.string	"free"
.LASF25:
	.string	"sector_size"
.LASF9:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF58:
	.string	"mark"
.LASF31:
	.string	"spi_flash_mmap_memory_t"
.LASF40:
	.string	"mmap_entry_"
.LASF12:
	.string	"long int"
.LASF63:
	.string	"out_ptr"
.LASF99:
	.string	"__assert_func"
.LASF90:
	.string	"s_mmap_entries_head"
.LASF6:
	.string	"short int"
.LASF95:
	.string	"_xtos_set_intlevel"
.LASF51:
	.string	"intLvl"
.LASF82:
	.string	"spi_flash_mark_modified_region"
.LASF112:
	.string	"spi_flash_ensure_unmodified_region"
.LASF88:
	.string	"page_delta"
.LASF93:
	.string	"written_pages"
.LASF28:
	.string	"esp_rom_spiflash_chip_t"
.LASF76:
	.string	"spi_flash_mmap"
.LASF8:
	.string	"__uint32_t"
.LASF109:
	.string	"Cache_Flush"
.LASF11:
	.string	"__intptr_t"
.LASF84:
	.string	"cached"
.LASF67:
	.string	"new_entry"
.LASF52:
	.string	"__tmp"
.LASF97:
	.string	"Cache_Flush_rom"
.LASF107:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/spi_flash/flash_mmap.c"
.LASF47:
	.string	"memory"
.LASF0:
	.string	"unsigned int"
.LASF24:
	.string	"block_size"
.LASF65:
	.string	"did_flush"
.LASF14:
	.string	"long unsigned int"
.LASF36:
	.string	"page"
.LASF92:
	.string	"s_mmap_last_handle"
.LASF78:
	.string	"size"
.LASF1:
	.string	"short unsigned int"
.LASF113:
	.string	"spi_flash_mmap_dump"
.LASF19:
	.string	"intptr_t"
.LASF94:
	.string	"esp_dport_access_sequence_reg_read"
.LASF7:
	.string	"__int32_t"
.LASF83:
	.string	"spi_flash_cache2phys"
.LASF114:
	.string	"g_rom_flashchip"
.LASF59:
	.string	"page_start_addr"
.LASF89:
	.string	"base"
.LASF27:
	.string	"status_mask"
.LASF34:
	.string	"le_prev"
.LASF39:
	.string	"mmap_entry_t"
.LASF53:
	.string	"entry_pro"
.LASF96:
	.string	"esp_dport_access_stall_other_cpu_start"
.LASF13:
	.string	"sizetype"
.LASF87:
	.string	"spi_flash_phys2cache"
.LASF85:
	.string	"cache_page"
.LASF54:
	.string	"entry_app"
.LASF29:
	.string	"SPI_FLASH_MMAP_DATA"
.LASF30:
	.string	"SPI_FLASH_MMAP_INST"
.LASF33:
	.string	"le_next"
.LASF43:
	.string	"cpu_no"
.LASF91:
	.string	"s_mmap_page_refcnt"
.LASF42:
	.string	"lh_first"
.LASF111:
	.string	"spi_flash_mmap_init"
.LASF110:
	.string	"get_mmu_region"
.LASF21:
	.string	"_Bool"
.LASF17:
	.string	"int32_t"
.LASF5:
	.string	"unsigned char"
.LASF56:
	.string	"start_addr"
.LASF106:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF48:
	.string	"out_begin"
.LASF41:
	.string	"mmap_entries_head"
.LASF66:
	.string	"need_flush"
.LASF71:
	.string	"__func__"
.LASF69:
	.string	"region_size"
.LASF50:
	.string	"region_addr"
.LASF18:
	.string	"uint32_t"
.LASF57:
	.string	"length"
.LASF15:
	.string	"char"
.LASF102:
	.string	"spi_flash_enable_interrupts_caches_and_other_cpu"
.LASF22:
	.string	"device_id"
.LASF77:
	.string	"src_addr"
.LASF38:
	.string	"entries"
.LASF104:
	.string	"esp_dport_access_reg_read"
.LASF81:
	.string	"spi_flash_munmap"
.LASF98:
	.string	"esp_dport_access_stall_other_cpu_end"
.LASF75:
	.string	"spi_flash_mmap_pages"
.LASF23:
	.string	"chip_size"
.LASF73:
	.string	"table_val"
.LASF20:
	.string	"esp_err_t"
.LASF16:
	.string	"uint8_t"
.LASF46:
	.string	"DPORT_REG_READ"
.LASF74:
	.string	"refcnt"
.LASF35:
	.string	"handle"
.LASF72:
	.string	"pageno"
.LASF70:
	.string	"start"
.LASF108:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\spi_flash"
.LASF55:
	.string	"update_written_pages"
.LASF79:
	.string	"phys_page"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
