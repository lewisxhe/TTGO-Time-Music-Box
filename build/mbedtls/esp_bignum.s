	.file	"esp_bignum.c"
	.text
.Ltext0:
	.global	__umoddi3
	.section	.text.modular_inverse,"ax",@progbits
	.literal_position
	.align	4
	.type	modular_inverse, @function
modular_inverse:
.LFB24:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/port/esp_bignum.c"
	.loc 1 200 0
.LVL0:
	entry	sp, 48
.LCFI0:
.LVL1:
	.loc 1 205 0
	l32i.n	a2, a2, 8
.LVL2:
	l32i.n	a7, a2, 0
.LVL3:
	.loc 1 204 0
	movi.n	a4, 4
	movi.n	a2, 0
	s32i.n	a2, sp, 0
	.loc 1 203 0
	movi.n	a5, 2
	mov.n	a3, a2
	.loc 1 202 0
	movi.n	a2, 1
	s32i.n	a3, sp, 4
	.loc 1 207 0
	mov.n	a6, a5
	j	.L2
.LVL4:
.L6:
	.loc 1 208 0
	l32i.n	a8, sp, 4
	mull	a11, a8, a7
	muluh	a8, a7, a2
	add.n	a11, a11, a8
	mov.n	a12, a4
	l32i.n	a13, sp, 0
	mull	a10, a7, a2
	call8	__umoddi3
.LVL5:
	bltu	a11, a3, .L3
	bne	a3, a11, .L7
	bltu	a10, a5, .L3
.L7:
	.loc 1 209 0
	add.n	a9, a2, a5
	movi.n	a8, 1
	bltu	a9, a2, .L5
	movi.n	a8, 0
.L5:
	l32i.n	a10, sp, 4
	add.n	a2, a10, a3
.LVL6:
	add.n	a8, a8, a2
	mov.n	a2, a9
	s32i.n	a8, sp, 4
.LVL7:
.L3:
	.loc 1 212 0 discriminator 2
	extui	a9, a5, 31, 1
	slli	a8, a3, 1
	slli	a10, a5, 1
	mov.n	a5, a10
.LVL8:
	or	a3, a9, a8
.LVL9:
	.loc 1 213 0 discriminator 2
	extui	a9, a4, 31, 1
	l32i.n	a10, sp, 0
	slli	a8, a10, 1
	slli	a10, a4, 1
	mov.n	a4, a10
.LVL10:
	or	a8, a9, a8
	s32i.n	a8, sp, 0
.LVL11:
	.loc 1 207 0 discriminator 2
	addi.n	a6, a6, 1
.LVL12:
.L2:
	.loc 1 207 0 is_stmt 0 discriminator 1
	movi.n	a8, 0x20
	bge	a8, a6, .L6
	.loc 1 217 0 is_stmt 1
	neg	a2, a2
.LVL13:
	retw.n
.LFE24:
	.size	modular_inverse, .-modular_inverse
	.section	.text.calculate_rinv,"ax",@progbits
	.align	4
	.type	calculate_rinv, @function
calculate_rinv:
.LFB25:
	.loc 1 232 0
.LVL14:
	entry	sp, 48
.LCFI1:
	mov.n	a5, a2
.LVL15:
	.loc 1 236 0
	mov.n	a10, sp
	call8	mbedtls_mpi_init
.LVL16:
	.loc 1 237 0
	movi.n	a12, 1
	slli	a11, a4, 6
	mov.n	a10, sp
	call8	mbedtls_mpi_set_bit
.LVL17:
	mov.n	a2, a10
.LVL18:
	bnez.n	a10, .L9
	.loc 1 238 0
	mov.n	a12, a3
	mov.n	a11, sp
	mov.n	a10, a5
	call8	mbedtls_mpi_mod_mpi
.LVL19:
	mov.n	a2, a10
.LVL20:
.L9:
	.loc 1 241 0
	mov.n	a10, sp
	call8	mbedtls_mpi_free
.LVL21:
	.loc 1 243 0
	retw.n
.LFE25:
	.size	calculate_rinv, .-calculate_rinv
	.section	.text.esp_mpi_acquire_hardware,"ax",@progbits
	.literal_position
	.literal .LC3, mpi_lock
	.literal .LC4, 1072693276
	.literal .LC5, 1072693280
	.literal .LC6, 1072694416
	.literal .LC7, 1072703512
	.align	4
	.global	esp_mpi_acquire_hardware
	.type	esp_mpi_acquire_hardware, @function
esp_mpi_acquire_hardware:
.LFB18:
	.loc 1 75 0
	entry	sp, 32
.LCFI2:
	.loc 1 77 0
	l32r	a10, .LC3
	call8	_lock_acquire
.LVL22:
.LBB49:
.LBB50:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/dport_access.h"
	.loc 2 79 0
	l32r	a2, .LC4
	mov.n	a10, a2
	call8	esp_dport_access_reg_read
.LVL23:
.LBE50:
.LBE49:
	.loc 1 79 0
	movi.n	a8, 4
	or	a10, a10, a8
	memw
	s32i.n	a10, a2, 0
.LVL24:
.LBB51:
.LBB52:
	.loc 2 79 0
	l32r	a2, .LC5
	mov.n	a10, a2
	call8	esp_dport_access_reg_read
.LVL25:
.LBE52:
.LBE51:
	.loc 1 81 0
	movi.n	a8, -0x15
	and	a10, a10, a8
	memw
	s32i.n	a10, a2, 0
.LVL26:
.LBB53:
.LBB54:
	.loc 2 79 0
	l32r	a2, .LC6
	mov.n	a10, a2
	call8	esp_dport_access_reg_read
.LVL27:
.LBE54:
.LBE53:
	.loc 1 85 0
	movi.n	a8, -2
	and	a10, a10, a8
	memw
	s32i.n	a10, a2, 0
.L11:
.LVL28:
.LBB55:
.LBB56:
	.loc 2 79 0 discriminator 1
	l32r	a10, .LC7
	call8	esp_dport_access_reg_read
.LVL29:
.LBE56:
.LBE55:
	.loc 1 87 0 discriminator 1
	bnei	a10, 1, .L11
	.loc 1 93 0
	retw.n
.LFE18:
	.size	esp_mpi_acquire_hardware, .-esp_mpi_acquire_hardware
	.section	.text.esp_mpi_release_hardware,"ax",@progbits
	.literal_position
	.literal .LC8, 1072694416
	.literal .LC9, 1072693280
	.literal .LC10, 1072693276
	.literal .LC11, mpi_lock
	.align	4
	.global	esp_mpi_release_hardware
	.type	esp_mpi_release_hardware, @function
esp_mpi_release_hardware:
.LFB19:
	.loc 1 96 0
	entry	sp, 32
.LCFI3:
.LVL30:
.LBB57:
.LBB58:
	.loc 2 79 0
	l32r	a2, .LC8
	mov.n	a10, a2
	call8	esp_dport_access_reg_read
.LVL31:
.LBE58:
.LBE57:
	.loc 1 97 0
	movi.n	a8, 1
	or	a10, a10, a8
	memw
	s32i.n	a10, a2, 0
.LVL32:
.LBB59:
.LBB60:
	.loc 2 79 0
	l32r	a2, .LC9
	mov.n	a10, a2
	call8	esp_dport_access_reg_read
.LVL33:
.LBE60:
.LBE59:
	.loc 1 100 0
	movi.n	a8, 4
	or	a10, a10, a8
	memw
	s32i.n	a10, a2, 0
.LVL34:
.LBB61:
.LBB62:
	.loc 2 79 0
	l32r	a2, .LC10
	mov.n	a10, a2
	call8	esp_dport_access_reg_read
.LVL35:
.LBE62:
.LBE61:
	.loc 1 101 0
	movi.n	a8, -5
	and	a10, a10, a8
	memw
	s32i.n	a10, a2, 0
	.loc 1 103 0
	l32r	a10, .LC11
	call8	_lock_release
.LVL36:
	retw.n
.LFE19:
	.size	esp_mpi_release_hardware, .-esp_mpi_release_hardware
	.section	.text.esp_mpi_mul_mpi_mod,"ax",@progbits
	.literal_position
	.literal .LC12, 1072701440
	.literal .LC13, 1072702976
	.literal .LC14, 1072701952
	.literal .LC15, 1072703488
	.literal .LC16, 1072703500
	.literal .LC17, 1072703508
	.literal .LC18, 1072703504
	.align	4
	.global	esp_mpi_mul_mpi_mod
	.type	esp_mpi_mul_mpi_mod, @function
esp_mpi_mul_mpi_mod:
.LFB28:
	.loc 1 294 0
.LVL37:
	entry	sp, 48
.LCFI4:
.LVL38:
.LBB99:
.LBB100:
.LBB101:
	.loc 1 120 0
	movi.n	a8, 0
.LBE101:
	.loc 1 119 0
	movi.n	a6, 1
	j	.L14
.LVL39:
.L16:
.LBB102:
	.loc 1 121 0
	l32i.n	a9, a5, 8
	addx4	a9, a8, a9
	l32i.n	a7, a9, 0
	beqz.n	a7, .L15
	.loc 1 122 0
	addi.n	a6, a8, 1
.LVL40:
.L15:
	.loc 1 120 0
	addi.n	a8, a8, 1
.LVL41:
.L14:
	l32i.n	a7, a5, 4
	bltu	a8, a7, .L16
.LBE102:
	.loc 1 125 0
	addi.n	a6, a6, 15
.LVL42:
	movi.n	a7, -0x10
	and	a6, a6, a7
.LVL43:
.LBE100:
.LBE99:
	.loc 1 301 0
	mov.n	a10, sp
	call8	mbedtls_mpi_init
.LVL44:
	.loc 1 302 0
	mov.n	a12, a6
	mov.n	a11, a5
	mov.n	a10, sp
	call8	calculate_rinv
.LVL45:
	mov.n	a7, a10
.LVL46:
	bnez.n	a10, .L17
	.loc 1 303 0
	mov.n	a10, a5
	call8	modular_inverse
.LVL47:
	mov.n	a7, a10
.LVL48:
	.loc 1 305 0
	call8	esp_mpi_acquire_hardware
.LVL49:
.LBB103:
.LBB104:
	.loc 1 148 0
	l32i.n	a8, a5, 4
	minu	a8, a6, a8
.LVL50:
.LBB105:
	.loc 1 151 0
	movi.n	a10, 0
	j	.L18
.LVL51:
.L19:
	.loc 1 152 0
	slli	a9, a10, 2
	l32r	a11, .LC12
	add.n	a11, a9, a11
	l32i.n	a12, a5, 8
	add.n	a9, a12, a9
	l32i.n	a9, a9, 0
	s32i.n	a9, a11, 0
	.loc 1 151 0
	addi.n	a10, a10, 1
.LVL52:
.L18:
	bltu	a10, a8, .L19
.LBE105:
.LBB106:
	.loc 1 156 0
	mov.n	a5, a8
.LVL53:
	j	.L20
.LVL54:
.L21:
	.loc 1 157 0
	l32r	a8, .LC12
	addx4	a8, a5, a8
	movi.n	a9, 0
	s32i.n	a9, a8, 0
	.loc 1 156 0
	addi.n	a5, a5, 1
.LVL55:
.L20:
	bltu	a5, a6, .L21
.LVL56:
.LBE106:
.LBE104:
.LBE103:
.LBB107:
.LBB108:
	.loc 1 148 0
	l32i.n	a5, a3, 4
.LVL57:
	minu	a5, a6, a5
.LVL58:
.LBB109:
	.loc 1 151 0
	movi.n	a9, 0
	j	.L22
.LVL59:
.L23:
	.loc 1 152 0
	slli	a8, a9, 2
	l32r	a10, .LC13
	add.n	a10, a8, a10
	l32i.n	a11, a3, 8
	add.n	a8, a11, a8
	l32i.n	a8, a8, 0
	s32i.n	a8, a10, 0
	.loc 1 151 0
	addi.n	a9, a9, 1
.LVL60:
.L22:
	bltu	a9, a5, .L23
.LVL61:
	j	.L24
.LVL62:
.L25:
.LBE109:
.LBB110:
	.loc 1 157 0
	l32r	a8, .LC13
	addx4	a8, a5, a8
	movi.n	a9, 0
	s32i.n	a9, a8, 0
	.loc 1 156 0
	addi.n	a5, a5, 1
.LVL63:
.L24:
	bltu	a5, a6, .L25
.LVL64:
.LBE110:
.LBE108:
.LBE107:
.LBB111:
.LBB112:
	.loc 1 148 0
	l32i.n	a5, sp, 4
.LVL65:
	minu	a5, a6, a5
.LVL66:
.LBB113:
	.loc 1 151 0
	movi.n	a9, 0
	j	.L26
.LVL67:
.L27:
	.loc 1 152 0
	slli	a8, a9, 2
	l32r	a10, .LC14
	add.n	a10, a8, a10
	l32i.n	a11, sp, 8
	add.n	a8, a11, a8
	l32i.n	a8, a8, 0
	s32i.n	a8, a10, 0
	.loc 1 151 0
	addi.n	a9, a9, 1
.LVL68:
.L26:
	bltu	a9, a5, .L27
.LVL69:
	j	.L28
.LVL70:
.L29:
.LBE113:
.LBB114:
	.loc 1 157 0
	l32r	a8, .LC14
	addx4	a8, a5, a8
	movi.n	a9, 0
	s32i.n	a9, a8, 0
	.loc 1 156 0
	addi.n	a5, a5, 1
.LVL71:
.L28:
	bltu	a5, a6, .L29
.LBE114:
.LBE112:
.LBE111:
	.loc 1 313 0
	l32r	a5, .LC15
.LVL72:
	memw
	s32i.n	a7, a5, 0
	.loc 1 316 0
	srli	a5, a6, 4
	addi.n	a5, a5, -1
	l32r	a7, .LC16
.LVL73:
	memw
	s32i.n	a5, a7, 0
.LVL74:
.LBB115:
.LBB116:
	.loc 1 255 0
	movi.n	a5, 1
	l32r	a7, .LC17
	memw
	s32i.n	a5, a7, 0
	.loc 1 260 0
	l32r	a7, .LC18
	memw
	s32i.n	a5, a7, 0
.L30:
.LVL75:
.LBE116:
.LBE115:
.LBB117:
.LBB118:
.LBB119:
.LBB120:
	.loc 2 79 0
	l32r	a10, .LC17
	call8	esp_dport_access_reg_read
.LVL76:
.LBE120:
.LBE119:
	.loc 1 277 0
	bnei	a10, 1, .L30
	.loc 1 281 0
	movi.n	a7, 1
	l32r	a5, .LC17
	memw
	s32i.n	a7, a5, 0
.LVL77:
.LBE118:
.LBE117:
.LBB121:
.LBB122:
.LBB123:
.LBB124:
	.loc 1 148 0
	l32i.n	a5, a4, 4
	minu	a5, a6, a5
.LVL78:
.LBB125:
	.loc 1 151 0
	movi.n	a8, 0
	j	.L31
.LVL79:
.L32:
	.loc 1 152 0
	slli	a7, a8, 2
	l32r	a9, .LC13
	add.n	a9, a7, a9
	l32i.n	a10, a4, 8
	add.n	a7, a10, a7
	l32i.n	a7, a7, 0
	s32i.n	a7, a9, 0
	.loc 1 151 0
	addi.n	a8, a8, 1
.LVL80:
.L31:
	bltu	a8, a5, .L32
.LVL81:
	j	.L33
.LVL82:
.L34:
.LBE125:
.LBB126:
	.loc 1 157 0
	l32r	a7, .LC13
	addx4	a7, a5, a7
	movi.n	a8, 0
	s32i.n	a8, a7, 0
	.loc 1 156 0
	addi.n	a5, a5, 1
.LVL83:
.L33:
	bltu	a5, a6, .L34
.LVL84:
.LBE126:
.LBE124:
.LBE123:
.LBB127:
.LBB128:
	.loc 1 255 0
	movi.n	a5, 1
.LVL85:
	l32r	a7, .LC17
	memw
	s32i.n	a5, a7, 0
	.loc 1 260 0
	l32r	a7, .LC18
	memw
	s32i.n	a5, a7, 0
.L35:
.LVL86:
.LBE128:
.LBE127:
.LBB129:
.LBB130:
.LBB131:
.LBB132:
	.loc 2 79 0
	l32r	a10, .LC17
	call8	esp_dport_access_reg_read
.LVL87:
.LBE132:
.LBE131:
	.loc 1 277 0
	bnei	a10, 1, .L35
	.loc 1 281 0
	movi.n	a7, 1
	l32r	a5, .LC17
	memw
	s32i.n	a7, a5, 0
.LVL88:
.LBE130:
.LBE129:
.LBB133:
.LBB134:
	.loc 1 175 0
	mov.n	a5, a6
	mov.n	a11, a6
	mov.n	a10, a2
	call8	mbedtls_mpi_grow
.LVL89:
	mov.n	a7, a10
.LVL90:
	bnez.n	a10, .L36
.LVL91:
	.loc 1 178 0
	mov.n	a12, a6
	l32r	a11, .LC14
	l32i.n	a10, a2, 8
	call8	esp_dport_access_read_buffer
.LVL92:
	j	.L37
.LVL93:
.L38:
.LBB135:
	.loc 1 182 0
	l32i.n	a6, a2, 8
	addx4	a6, a5, a6
	movi.n	a8, 0
	s32i.n	a8, a6, 0
	.loc 1 181 0
	addi.n	a5, a5, 1
.LVL94:
.L37:
	l32i.n	a6, a2, 4
	bltu	a5, a6, .L38
.LBE135:
	.loc 1 185 0
#APP
# 185 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/port/esp_bignum.c" 1
	memw
# 0 "" 2
.LVL95:
#NO_APP
.L36:
.LBE134:
.LBE133:
	.loc 1 446 0
	l32i.n	a5, a3, 0
	l32i.n	a3, a4, 0
.LVL96:
	mull	a3, a5, a3
	s32i.n	a3, a2, 0
.LBE122:
.LBE121:
	.loc 1 326 0
	call8	esp_mpi_release_hardware
.LVL97:
.L17:
	.loc 1 329 0
	mov.n	a10, sp
	call8	mbedtls_mpi_free
.LVL98:
	.loc 1 331 0
	mov.n	a2, a7
.LVL99:
	retw.n
.LFE28:
	.size	esp_mpi_mul_mpi_mod, .-esp_mpi_mul_mpi_mod
	.section	.bss.mpi_lock,"aw",@nobits
	.align	4
	.type	mpi_lock, @object
	.size	mpi_lock, 4
mpi_lock:
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
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI0-.LFB24
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
	.uleb128 0x30
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI2-.LFB18
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI3-.LFB19
	.byte	0xe
	.uleb128 0x20
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
	.uleb128 0x30
	.align	4
.LEFDE8:
	.text
.Letext0:
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 4 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/lock.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/bignum.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_dport_access.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xaca
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF52
	.byte	0xc
	.4byte	.LASF53
	.4byte	.LASF54
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x3
	.byte	0x1a
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x3
	.byte	0x1e
	.4byte	0x25
	.uleb128 0x4
	.4byte	.LASF9
	.byte	0x4
	.byte	0xd8
	.4byte	0x2c
	.uleb128 0x4
	.4byte	.LASF10
	.byte	0x5
	.byte	0xb
	.4byte	0x4f
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.uleb128 0x5
	.byte	0x4
	.4byte	0xab
	.uleb128 0x6
	.4byte	0x9e
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x6
	.byte	0x2d
	.4byte	0x56
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x6
	.byte	0x39
	.4byte	0x68
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x7
	.byte	0xa8
	.4byte	0xb0
	.uleb128 0x7
	.byte	0xc
	.byte	0x7
	.byte	0xb6
	.4byte	0xf8
	.uleb128 0x8
	.string	"s"
	.byte	0x7
	.byte	0xb8
	.4byte	0x4f
	.byte	0
	.uleb128 0x8
	.string	"n"
	.byte	0x7
	.byte	0xb9
	.4byte	0x73
	.byte	0x4
	.uleb128 0x8
	.string	"p"
	.byte	0x7
	.byte	0xba
	.4byte	0xf8
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xc6
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x7
	.byte	0xbc
	.4byte	0xd1
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF19
	.uleb128 0x9
	.4byte	.LASF28
	.byte	0x2
	.byte	0x4a
	.4byte	0xb0
	.byte	0x3
	.4byte	0x12c
	.uleb128 0xa
	.string	"reg"
	.byte	0x2
	.byte	0x4a
	.4byte	0xb0
	.byte	0
	.uleb128 0xb
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x10c
	.byte	0x3
	.4byte	0x146
	.uleb128 0xc
	.4byte	.LASF20
	.byte	0x1
	.2byte	0x10c
	.4byte	0xb0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF22
	.byte	0x1
	.byte	0xfc
	.byte	0x3
	.4byte	0x15e
	.uleb128 0xe
	.4byte	.LASF20
	.byte	0x1
	.byte	0xfc
	.4byte	0xb0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF23
	.byte	0x1
	.byte	0x91
	.byte	0x3
	.4byte	0x1bc
	.uleb128 0xe
	.4byte	.LASF24
	.byte	0x1
	.byte	0x91
	.4byte	0xb0
	.uleb128 0xa
	.string	"mpi"
	.byte	0x1
	.byte	0x91
	.4byte	0x1bc
	.uleb128 0xe
	.4byte	.LASF25
	.byte	0x1
	.byte	0x91
	.4byte	0x73
	.uleb128 0xf
	.4byte	.LASF26
	.byte	0x1
	.byte	0x93
	.4byte	0x1c7
	.uleb128 0xf
	.4byte	.LASF27
	.byte	0x1
	.byte	0x94
	.4byte	0xb0
	.uleb128 0x10
	.4byte	0x1b0
	.uleb128 0x11
	.string	"i"
	.byte	0x1
	.byte	0x97
	.4byte	0x4f
	.byte	0
	.uleb128 0x12
	.uleb128 0x11
	.string	"i"
	.byte	0x1
	.byte	0x9c
	.4byte	0x4f
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1c2
	.uleb128 0x6
	.4byte	0xfe
	.uleb128 0x5
	.byte	0x4
	.4byte	0xb0
	.uleb128 0x9
	.4byte	.LASF29
	.byte	0x1
	.byte	0x75
	.4byte	0x73
	.byte	0x3
	.4byte	0x1ff
	.uleb128 0xa
	.string	"mpi"
	.byte	0x1
	.byte	0x75
	.4byte	0x1bc
	.uleb128 0x11
	.string	"res"
	.byte	0x1
	.byte	0x77
	.4byte	0x73
	.uleb128 0x12
	.uleb128 0x11
	.string	"i"
	.byte	0x1
	.byte	0x78
	.4byte	0x73
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	.LASF32
	.byte	0x1
	.byte	0xc7
	.4byte	0xc6
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x26f
	.uleb128 0x14
	.string	"M"
	.byte	0x1
	.byte	0xc7
	.4byte	0x1bc
	.4byte	.LLST0
	.uleb128 0x15
	.string	"i"
	.byte	0x1
	.byte	0xc9
	.4byte	0x4f
	.4byte	.LLST1
	.uleb128 0x15
	.string	"t"
	.byte	0x1
	.byte	0xca
	.4byte	0xbb
	.4byte	.LLST2
	.uleb128 0x16
	.4byte	.LASF30
	.byte	0x1
	.byte	0xcb
	.4byte	0xbb
	.4byte	.LLST3
	.uleb128 0x16
	.4byte	.LASF31
	.byte	0x1
	.byte	0xcc
	.4byte	0xbb
	.4byte	.LLST4
	.uleb128 0x17
	.string	"N"
	.byte	0x1
	.byte	0xcd
	.4byte	0xbb
	.uleb128 0x7
	.byte	0x77
	.sleb128 0
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0x25
	.byte	0x9f
	.byte	0
	.uleb128 0x18
	.4byte	.LASF33
	.byte	0x1
	.byte	0xe7
	.4byte	0x4f
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x34b
	.uleb128 0x19
	.4byte	.LASF34
	.byte	0x1
	.byte	0xe7
	.4byte	0x34b
	.4byte	.LLST5
	.uleb128 0x1a
	.string	"M"
	.byte	0x1
	.byte	0xe7
	.4byte	0x1bc
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1b
	.4byte	.LASF25
	.byte	0x1
	.byte	0xe7
	.4byte	0x4f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x17
	.string	"ret"
	.byte	0x1
	.byte	0xe9
	.4byte	0x4f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1c
	.4byte	.LASF35
	.byte	0x1
	.byte	0xea
	.4byte	0x73
	.uleb128 0x5
	.byte	0x74
	.sleb128 0
	.byte	0x35
	.byte	0x24
	.byte	0x9f
	.uleb128 0x17
	.string	"RR"
	.byte	0x1
	.byte	0xeb
	.4byte	0xfe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1d
	.4byte	.LASF41
	.byte	0x1
	.byte	0xf0
	.4byte	.L9
	.uleb128 0x1e
	.4byte	.LVL16
	.4byte	0xa5d
	.4byte	0x2f9
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL17
	.4byte	0xa68
	.4byte	0x31a
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x4
	.byte	0x74
	.sleb128 0
	.byte	0x36
	.byte	0x24
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL19
	.4byte	0xa74
	.4byte	0x33a
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL21
	.4byte	0xa80
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xfe
	.uleb128 0x21
	.4byte	.LASF36
	.byte	0x1
	.byte	0x4a
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x431
	.uleb128 0x22
	.4byte	0x110
	.4byte	.LBB49
	.4byte	.LBE49-.LBB49
	.byte	0x1
	.byte	0x4f
	.4byte	0x393
	.uleb128 0x23
	.4byte	0x120
	.4byte	0x3ff0001c
	.uleb128 0x20
	.4byte	.LVL23
	.4byte	0xa8b
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	0x110
	.4byte	.LBB51
	.4byte	.LBE51-.LBB51
	.byte	0x1
	.byte	0x51
	.4byte	0x3c0
	.uleb128 0x23
	.4byte	0x120
	.4byte	0x3ff00020
	.uleb128 0x20
	.4byte	.LVL25
	.4byte	0xa8b
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	0x110
	.4byte	.LBB53
	.4byte	.LBE53-.LBB53
	.byte	0x1
	.byte	0x55
	.4byte	0x3ed
	.uleb128 0x23
	.4byte	0x120
	.4byte	0x3ff00490
	.uleb128 0x20
	.4byte	.LVL27
	.4byte	0xa8b
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	0x110
	.4byte	.LBB55
	.4byte	.LBE55-.LBB55
	.byte	0x1
	.byte	0x57
	.4byte	0x41d
	.uleb128 0x23
	.4byte	0x120
	.4byte	0x3ff02818
	.uleb128 0x20
	.4byte	.LVL29
	.4byte	0xa8b
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0xc
	.4byte	0x3ff02818
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL22
	.4byte	0xa96
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	mpi_lock
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LASF37
	.byte	0x1
	.byte	0x5f
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4e1
	.uleb128 0x22
	.4byte	0x110
	.4byte	.LBB57
	.4byte	.LBE57-.LBB57
	.byte	0x1
	.byte	0x61
	.4byte	0x473
	.uleb128 0x23
	.4byte	0x120
	.4byte	0x3ff00490
	.uleb128 0x20
	.4byte	.LVL31
	.4byte	0xa8b
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	0x110
	.4byte	.LBB59
	.4byte	.LBE59-.LBB59
	.byte	0x1
	.byte	0x64
	.4byte	0x4a0
	.uleb128 0x23
	.4byte	0x120
	.4byte	0x3ff00020
	.uleb128 0x20
	.4byte	.LVL33
	.4byte	0xa8b
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	0x110
	.4byte	.LBB61
	.4byte	.LBE61-.LBB61
	.byte	0x1
	.byte	0x65
	.4byte	0x4cd
	.uleb128 0x23
	.4byte	0x120
	.4byte	0x3ff0001c
	.uleb128 0x20
	.4byte	.LVL35
	.4byte	0xa8b
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL36
	.4byte	0xaa1
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	mpi_lock
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.LASF38
	.byte	0x1
	.2byte	0x1b0
	.4byte	0x4f
	.byte	0x3
	.4byte	0x529
	.uleb128 0x25
	.string	"Z"
	.byte	0x1
	.2byte	0x1b0
	.4byte	0x34b
	.uleb128 0x25
	.string	"X"
	.byte	0x1
	.2byte	0x1b0
	.4byte	0x1bc
	.uleb128 0x25
	.string	"Y"
	.byte	0x1
	.2byte	0x1b0
	.4byte	0x1bc
	.uleb128 0xc
	.4byte	.LASF25
	.byte	0x1
	.2byte	0x1b0
	.4byte	0x73
	.uleb128 0x26
	.string	"ret"
	.byte	0x1
	.2byte	0x1b2
	.4byte	0x4f
	.byte	0
	.uleb128 0x9
	.4byte	.LASF39
	.byte	0x1
	.byte	0xab
	.4byte	0x4f
	.byte	0x3
	.4byte	0x576
	.uleb128 0xa
	.string	"x"
	.byte	0x1
	.byte	0xab
	.4byte	0x34b
	.uleb128 0xe
	.4byte	.LASF24
	.byte	0x1
	.byte	0xab
	.4byte	0xb0
	.uleb128 0xe
	.4byte	.LASF25
	.byte	0x1
	.byte	0xab
	.4byte	0x4f
	.uleb128 0x11
	.string	"ret"
	.byte	0x1
	.byte	0xad
	.4byte	0x4f
	.uleb128 0x27
	.4byte	.LASF41
	.byte	0x1
	.byte	0xba
	.uleb128 0x12
	.uleb128 0x11
	.string	"i"
	.byte	0x1
	.byte	0xb5
	.4byte	0x73
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	.LASF55
	.byte	0x1
	.2byte	0x125
	.4byte	0x4f
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa3a
	.uleb128 0x29
	.string	"Z"
	.byte	0x1
	.2byte	0x125
	.4byte	0x34b
	.4byte	.LLST6
	.uleb128 0x29
	.string	"X"
	.byte	0x1
	.2byte	0x125
	.4byte	0x1bc
	.4byte	.LLST7
	.uleb128 0x2a
	.string	"Y"
	.byte	0x1
	.2byte	0x125
	.4byte	0x1bc
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x29
	.string	"M"
	.byte	0x1
	.2byte	0x125
	.4byte	0x1bc
	.4byte	.LLST8
	.uleb128 0x2b
	.string	"ret"
	.byte	0x1
	.2byte	0x127
	.4byte	0x4f
	.4byte	.LLST9
	.uleb128 0x2c
	.4byte	.LASF25
	.byte	0x1
	.2byte	0x128
	.4byte	0x73
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x2c
	.4byte	.LASF34
	.byte	0x1
	.2byte	0x129
	.4byte	0xfe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2d
	.4byte	.LASF40
	.byte	0x1
	.2byte	0x12a
	.4byte	0xc6
	.4byte	.LLST10
	.uleb128 0x2e
	.4byte	.LASF41
	.byte	0x1
	.2byte	0x148
	.4byte	.L17
	.uleb128 0x2f
	.4byte	0x1cd
	.4byte	.LBB99
	.4byte	.LBE99-.LBB99
	.byte	0x1
	.2byte	0x128
	.4byte	0x64f
	.uleb128 0x30
	.4byte	0x1dd
	.4byte	.LLST11
	.uleb128 0x31
	.4byte	.LBB100
	.4byte	.LBE100-.LBB100
	.uleb128 0x32
	.4byte	0x1e8
	.4byte	.LLST12
	.uleb128 0x33
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x32
	.4byte	0x1f4
	.4byte	.LLST13
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.4byte	0x15e
	.4byte	.LBB103
	.4byte	.LBE103-.LBB103
	.byte	0x1
	.2byte	0x136
	.4byte	0x6c5
	.uleb128 0x30
	.4byte	0x180
	.4byte	.LLST14
	.uleb128 0x30
	.4byte	0x175
	.4byte	.LLST15
	.uleb128 0x30
	.4byte	0x16a
	.4byte	.LLST16
	.uleb128 0x31
	.4byte	.LBB104
	.4byte	.LBE104-.LBB104
	.uleb128 0x32
	.4byte	0x18b
	.4byte	.LLST16
	.uleb128 0x32
	.4byte	0x196
	.4byte	.LLST18
	.uleb128 0x34
	.4byte	.LBB105
	.4byte	.LBE105-.LBB105
	.4byte	0x6b0
	.uleb128 0x32
	.4byte	0x1a6
	.4byte	.LLST19
	.byte	0
	.uleb128 0x31
	.4byte	.LBB106
	.4byte	.LBE106-.LBB106
	.uleb128 0x32
	.4byte	0x1b1
	.4byte	.LLST20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.4byte	0x15e
	.4byte	.LBB107
	.4byte	.LBE107-.LBB107
	.byte	0x1
	.2byte	0x137
	.4byte	0x73b
	.uleb128 0x30
	.4byte	0x180
	.4byte	.LLST21
	.uleb128 0x30
	.4byte	0x175
	.4byte	.LLST22
	.uleb128 0x30
	.4byte	0x16a
	.4byte	.LLST23
	.uleb128 0x31
	.4byte	.LBB108
	.4byte	.LBE108-.LBB108
	.uleb128 0x32
	.4byte	0x18b
	.4byte	.LLST23
	.uleb128 0x32
	.4byte	0x196
	.4byte	.LLST25
	.uleb128 0x34
	.4byte	.LBB109
	.4byte	.LBE109-.LBB109
	.4byte	0x726
	.uleb128 0x32
	.4byte	0x1a6
	.4byte	.LLST26
	.byte	0
	.uleb128 0x31
	.4byte	.LBB110
	.4byte	.LBE110-.LBB110
	.uleb128 0x32
	.4byte	0x1b1
	.4byte	.LLST27
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.4byte	0x15e
	.4byte	.LBB111
	.4byte	.LBE111-.LBB111
	.byte	0x1
	.2byte	0x138
	.4byte	0x7b1
	.uleb128 0x30
	.4byte	0x180
	.4byte	.LLST28
	.uleb128 0x30
	.4byte	0x175
	.4byte	.LLST29
	.uleb128 0x30
	.4byte	0x16a
	.4byte	.LLST30
	.uleb128 0x31
	.4byte	.LBB112
	.4byte	.LBE112-.LBB112
	.uleb128 0x32
	.4byte	0x18b
	.4byte	.LLST30
	.uleb128 0x32
	.4byte	0x196
	.4byte	.LLST32
	.uleb128 0x34
	.4byte	.LBB113
	.4byte	.LBE113-.LBB113
	.4byte	0x79c
	.uleb128 0x32
	.4byte	0x1a6
	.4byte	.LLST33
	.byte	0
	.uleb128 0x31
	.4byte	.LBB114
	.4byte	.LBE114-.LBB114
	.uleb128 0x32
	.4byte	0x1b1
	.4byte	.LLST34
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.4byte	0x146
	.4byte	.LBB115
	.4byte	.LBE115-.LBB115
	.byte	0x1
	.2byte	0x13f
	.4byte	0x7cf
	.uleb128 0x30
	.4byte	0x152
	.4byte	.LLST35
	.byte	0
	.uleb128 0x2f
	.4byte	0x12c
	.4byte	.LBB117
	.4byte	.LBE117-.LBB117
	.byte	0x1
	.2byte	0x141
	.4byte	0x816
	.uleb128 0x35
	.4byte	0x139
	.uleb128 0x36
	.4byte	0x110
	.4byte	.LBB119
	.4byte	.LBE119-.LBB119
	.byte	0x1
	.2byte	0x115
	.uleb128 0x30
	.4byte	0x120
	.4byte	.LLST36
	.uleb128 0x20
	.4byte	.LVL76
	.4byte	0xa8b
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0xc
	.4byte	0x3ff02814
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.4byte	0x4e1
	.4byte	.LBB121
	.4byte	.LBE121-.LBB121
	.byte	0x1
	.2byte	0x144
	.4byte	0x9cf
	.uleb128 0x30
	.4byte	0x510
	.4byte	.LLST37
	.uleb128 0x30
	.4byte	0x506
	.4byte	.LLST38
	.uleb128 0x30
	.4byte	0x4fc
	.4byte	.LLST39
	.uleb128 0x30
	.4byte	0x4f2
	.4byte	.LLST40
	.uleb128 0x31
	.4byte	.LBB122
	.4byte	.LBE122-.LBB122
	.uleb128 0x32
	.4byte	0x51c
	.4byte	.LLST41
	.uleb128 0x2f
	.4byte	0x15e
	.4byte	.LBB123
	.4byte	.LBE123-.LBB123
	.byte	0x1
	.2byte	0x1b5
	.4byte	0x8d6
	.uleb128 0x30
	.4byte	0x180
	.4byte	.LLST37
	.uleb128 0x30
	.4byte	0x175
	.4byte	.LLST38
	.uleb128 0x30
	.4byte	0x16a
	.4byte	.LLST44
	.uleb128 0x31
	.4byte	.LBB124
	.4byte	.LBE124-.LBB124
	.uleb128 0x32
	.4byte	0x18b
	.4byte	.LLST44
	.uleb128 0x32
	.4byte	0x196
	.4byte	.LLST46
	.uleb128 0x34
	.4byte	.LBB125
	.4byte	.LBE125-.LBB125
	.4byte	0x8c1
	.uleb128 0x32
	.4byte	0x1a6
	.4byte	.LLST47
	.byte	0
	.uleb128 0x31
	.4byte	.LBB126
	.4byte	.LBE126-.LBB126
	.uleb128 0x32
	.4byte	0x1b1
	.4byte	.LLST48
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.4byte	0x146
	.4byte	.LBB127
	.4byte	.LBE127-.LBB127
	.byte	0x1
	.2byte	0x1b7
	.4byte	0x8f4
	.uleb128 0x30
	.4byte	0x152
	.4byte	.LLST49
	.byte	0
	.uleb128 0x2f
	.4byte	0x12c
	.4byte	.LBB129
	.4byte	.LBE129-.LBB129
	.byte	0x1
	.2byte	0x1b9
	.4byte	0x93b
	.uleb128 0x35
	.4byte	0x139
	.uleb128 0x36
	.4byte	0x110
	.4byte	.LBB131
	.4byte	.LBE131-.LBB131
	.byte	0x1
	.2byte	0x115
	.uleb128 0x30
	.4byte	0x120
	.4byte	.LLST50
	.uleb128 0x20
	.4byte	.LVL87
	.4byte	0xa8b
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0xc
	.4byte	0x3ff02814
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	0x529
	.4byte	.LBB133
	.4byte	.LBE133-.LBB133
	.byte	0x1
	.2byte	0x1bc
	.uleb128 0x30
	.4byte	0x54d
	.4byte	.LLST51
	.uleb128 0x30
	.4byte	0x542
	.4byte	.LLST52
	.uleb128 0x30
	.4byte	0x539
	.4byte	.LLST53
	.uleb128 0x31
	.4byte	.LBB134
	.4byte	.LBE134-.LBB134
	.uleb128 0x32
	.4byte	0x558
	.4byte	.LLST54
	.uleb128 0x37
	.4byte	0x563
	.4byte	.L36
	.uleb128 0x34
	.4byte	.LBB135
	.4byte	.LBE135-.LBB135
	.4byte	0x998
	.uleb128 0x32
	.4byte	0x56b
	.4byte	.LLST55
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL89
	.4byte	0xaac
	.4byte	0x9b2
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL92
	.4byte	0xab7
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0xc
	.4byte	0x3ff02200
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL44
	.4byte	0xa5d
	.4byte	0x9e3
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL45
	.4byte	0x26f
	.4byte	0xa03
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL47
	.4byte	0x1ff
	.4byte	0xa17
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x38
	.4byte	.LVL49
	.4byte	0x351
	.uleb128 0x38
	.4byte	.LVL97
	.4byte	0x431
	.uleb128 0x20
	.4byte	.LVL98
	.4byte	0xa80
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x17
	.string	"TAG"
	.byte	0x1
	.byte	0x2c
	.4byte	0xa5
	.uleb128 0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+2754
	.sleb128 0
	.uleb128 0x1c
	.4byte	.LASF42
	.byte	0x1
	.byte	0x48
	.4byte	0x7e
	.uleb128 0x5
	.byte	0x3
	.4byte	mpi_lock
	.uleb128 0x39
	.4byte	.LASF43
	.4byte	.LASF43
	.byte	0x7
	.byte	0xc5
	.uleb128 0x3a
	.4byte	.LASF44
	.4byte	.LASF44
	.byte	0x7
	.2byte	0x146
	.uleb128 0x3a
	.4byte	.LASF45
	.4byte	.LASF45
	.byte	0x7
	.2byte	0x289
	.uleb128 0x39
	.4byte	.LASF46
	.4byte	.LASF46
	.byte	0x7
	.byte	0xcc
	.uleb128 0x39
	.4byte	.LASF47
	.4byte	.LASF47
	.byte	0x8
	.byte	0x1e
	.uleb128 0x39
	.4byte	.LASF48
	.4byte	.LASF48
	.byte	0x5
	.byte	0x20
	.uleb128 0x39
	.4byte	.LASF49
	.4byte	.LASF49
	.byte	0x5
	.byte	0x24
	.uleb128 0x39
	.4byte	.LASF50
	.4byte	.LASF50
	.byte	0x7
	.byte	0xd9
	.uleb128 0x39
	.4byte	.LASF51
	.4byte	.LASF51
	.byte	0x8
	.byte	0x1d
	.uleb128 0x3b
	.uleb128 0x9
	.byte	0x9e
	.uleb128 0x7
	.byte	0x62
	.byte	0x69
	.byte	0x67
	.byte	0x6e
	.byte	0x75
	.byte	0x6d
	.byte	0
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0xb
	.byte	0x1
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
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0x17
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0x35
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x36
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
	.uleb128 0x37
	.uleb128 0xa
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
	.uleb128 0x36
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
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
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LFE24
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL1
	.4byte	.LVL4
	.2byte	0xa
	.byte	0x9e
	.uleb128 0x8
	.8byte	0x1
	.4byte	.LVL4
	.4byte	.LVL6
	.2byte	0x7
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -44
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL7
	.4byte	.LVL13
	.2byte	0x7
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -44
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL1
	.4byte	.LVL4
	.2byte	0xa
	.byte	0x9e
	.uleb128 0x8
	.8byte	0x2
	.4byte	.LVL4
	.4byte	.LVL8
	.2byte	0x6
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL9
	.4byte	.LFE24
	.2byte	0x6
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL1
	.4byte	.LVL4
	.2byte	0xa
	.byte	0x9e
	.uleb128 0x8
	.8byte	0x4
	.4byte	.LVL4
	.4byte	.LVL10
	.2byte	0x7
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -48
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL12
	.4byte	.LFE24
	.2byte	0x7
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -48
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL14
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL18
	.4byte	.LFE25
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL37
	.4byte	.LVL99
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL99
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL37
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL96
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL37
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL53
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL46
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL97
	.4byte	.LFE28
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL48
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL73
	.4byte	.LVL74
	.2byte	0x5
	.byte	0xc
	.4byte	0x3ff02800
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL38
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL53
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL39
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x3
	.byte	0x76
	.sleb128 -15
	.byte	0x9f
	.4byte	.LVL43
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL91
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL39
	.4byte	.LVL44-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL49
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL91
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL49
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL53
	.4byte	.LVL97
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL49
	.4byte	.LVL97
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff02000
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL50
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL51
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL53
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL56
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL91
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL56
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL96
	.4byte	.LVL97
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL56
	.4byte	.LVL97
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff02600
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL58
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL59
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL61
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL64
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL91
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL64
	.4byte	.LVL97
	.2byte	0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL64
	.4byte	.LVL97
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff02200
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL66
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL66
	.4byte	.LVL67
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL67
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL69
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL74
	.4byte	.LVL97
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff02810
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL75
	.4byte	.LVL97
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff02814
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL77
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL91
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL77
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL77
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL96
	.4byte	.LVL97
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL77
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL77
	.4byte	.LVL95
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL77
	.4byte	.LVL97
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff02600
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL78
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL78
	.4byte	.LVL79
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL79
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL81
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL84
	.4byte	.LVL97
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff02810
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL86
	.4byte	.LVL97
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff02814
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL88
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL91
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL88
	.4byte	.LVL97
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff02200
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL88
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LVL88
	.4byte	.LVL90
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL90
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LVL92
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x55
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
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB101
	.4byte	.LBE101
	.4byte	.LBB102
	.4byte	.LBE102
	.4byte	0
	.4byte	0
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF37:
	.string	"esp_mpi_release_hardware"
.LASF16:
	.string	"uint64_t"
.LASF4:
	.string	"short int"
.LASF9:
	.string	"size_t"
.LASF24:
	.string	"mem_base"
.LASF12:
	.string	"sizetype"
.LASF20:
	.string	"op_reg"
.LASF55:
	.string	"esp_mpi_mul_mpi_mod"
.LASF7:
	.string	"__uint32_t"
.LASF33:
	.string	"calculate_rinv"
.LASF54:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\mbedtls"
.LASF44:
	.string	"mbedtls_mpi_set_bit"
.LASF25:
	.string	"num_words"
.LASF17:
	.string	"mbedtls_mpi_uint"
.LASF15:
	.string	"uint32_t"
.LASF48:
	.string	"_lock_acquire"
.LASF28:
	.string	"DPORT_REG_READ"
.LASF45:
	.string	"mbedtls_mpi_mod_mpi"
.LASF18:
	.string	"mbedtls_mpi"
.LASF6:
	.string	"long long int"
.LASF11:
	.string	"long int"
.LASF46:
	.string	"mbedtls_mpi_free"
.LASF36:
	.string	"esp_mpi_acquire_hardware"
.LASF50:
	.string	"mbedtls_mpi_grow"
.LASF39:
	.string	"mem_block_to_mpi"
.LASF3:
	.string	"unsigned char"
.LASF41:
	.string	"cleanup"
.LASF22:
	.string	"start_op"
.LASF2:
	.string	"signed char"
.LASF0:
	.string	"long long unsigned int"
.LASF32:
	.string	"modular_inverse"
.LASF38:
	.string	"modular_multiply_finish"
.LASF1:
	.string	"unsigned int"
.LASF21:
	.string	"wait_op_complete"
.LASF29:
	.string	"hardware_words_needed"
.LASF26:
	.string	"pbase"
.LASF34:
	.string	"Rinv"
.LASF5:
	.string	"short unsigned int"
.LASF14:
	.string	"char"
.LASF31:
	.string	"two_2_i"
.LASF35:
	.string	"num_bits"
.LASF19:
	.string	"_Bool"
.LASF30:
	.string	"two_2_i_minus_1"
.LASF8:
	.string	"__uint64_t"
.LASF47:
	.string	"esp_dport_access_reg_read"
.LASF13:
	.string	"long unsigned int"
.LASF53:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/port/esp_bignum.c"
.LASF49:
	.string	"_lock_release"
.LASF43:
	.string	"mbedtls_mpi_init"
.LASF51:
	.string	"esp_dport_access_read_buffer"
.LASF10:
	.string	"_lock_t"
.LASF23:
	.string	"mpi_to_mem_block"
.LASF27:
	.string	"copy_words"
.LASF52:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF40:
	.string	"Mprime"
.LASF42:
	.string	"mpi_lock"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
