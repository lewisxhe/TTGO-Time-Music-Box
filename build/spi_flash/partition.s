	.file	"partition.c"
	.text
.Ltext0:
	.section	.text.iterator_create,"ax",@progbits
	.literal_position
	.literal .LC0, s_partition_list
	.align	4
	.type	iterator_create, @function
iterator_create:
.LFB5:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/spi_flash/partition.c"
	.loc 1 130 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 131 0
	movi.n	a10, 0x14
	call8	malloc
.LVL1:
	.loc 1 133 0
	s32i.n	a2, a10, 0
	.loc 1 134 0
	s32i.n	a3, a10, 4
	.loc 1 135 0
	s32i.n	a4, a10, 8
	.loc 1 136 0
	l32r	a8, .LC0
	l32i.n	a8, a8, 0
	s32i.n	a8, a10, 12
	.loc 1 137 0
	movi.n	a8, 0
	s32i.n	a8, a10, 16
	.loc 1 139 0
	mov.n	a2, a10
.LVL2:
	retw.n
.LFE5:
	.size	iterator_create, .-iterator_create
	.section	.text.load_partitions,"ax",@progbits
	.literal_position
	.literal .LC1, 4096
	.literal .LC2, 65536
	.literal .LC3, 20650
	.literal .LC4, 1073061888
	.literal .LC5, -65536
	.literal .LC6, s_partition_list
	.align	4
	.type	load_partitions, @function
load_partitions:
.LFB6:
	.loc 1 144 0
	entry	sp, 48
.LCFI1:
	.loc 1 148 0
	addi.n	a14, sp, 4
	mov.n	a13, sp
	movi.n	a12, 0
	l32r	a11, .LC1
	l32r	a10, .LC2
	call8	spi_flash_mmap
.LVL3:
	.loc 1 150 0
	bnez.n	a10, .L14
	.loc 1 154 0
	l32i.n	a3, sp, 0
.LVL4:
	.loc 1 156 0
	addmi	a5, a3, 0x1000
.LVL5:
	.loc 1 158 0
	movi.n	a4, 0
	.loc 1 159 0
	j	.L4
.LVL6:
.L13:
.LBB7:
	.loc 1 160 0
	l16ui	a8, a3, 0
	l32r	a2, .LC3
	bne	a8, a2, .L5
	.loc 1 164 0
	movi.n	a10, 0x28
	call8	malloc
.LVL7:
	mov.n	a2, a10
.LVL8:
	.loc 1 165 0
	l32i.n	a8, a3, 4
	s32i.n	a8, a10, 8
	.loc 1 166 0
	l32i.n	a8, a3, 8
	s32i.n	a8, a10, 12
	.loc 1 167 0
	l8ui	a8, a3, 2
	s32i.n	a8, a10, 0
	.loc 1 168 0
	l8ui	a8, a3, 3
	s32i.n	a8, a10, 4
	.loc 1 169 0
	l32i.n	a8, a3, 28
	extui	a8, a8, 0, 1
	s8i	a8, a10, 33
.LBB8:
.LBB9:
.LBB10:
.LBB11:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include/esp_flash_encrypt.h"
	.loc 2 37 0
	l32r	a8, .LC4
	memw
	l32i.n	a8, a8, 0
.LBE11:
	extui	a8, a8, 20, 8
.LVL9:
.LBE10:
	.loc 2 39 0
	movi.n	a9, 0
	j	.L6
.LVL10:
.L8:
	.loc 2 41 0
	bbci	a8, 0, .L7
	.loc 2 42 0
	movi.n	a10, 1
	xor	a9, a9, a10
.LVL11:
	extui	a9, a9, 0, 8
.LVL12:
.L7:
	.loc 2 44 0
	srli	a8, a8, 1
.LVL13:
.L6:
	.loc 2 40 0
	bnez.n	a8, .L8
.LBE9:
.LBE8:
	.loc 1 170 0
	beqz.n	a9, .L9
	.loc 1 171 0 discriminator 1
	l8ui	a8, a3, 2
.LVL14:
	.loc 1 170 0 discriminator 1
	beqz.n	a8, .L10
	.loc 1 172 0
	l32i.n	a9, a3, 0
.LVL15:
	l32r	a8, .LC5
	and	a8, a9, a8
	l32r	a9, .LC2
	bne	a8, a9, .L9
.L10:
	.loc 1 175 0
	movi.n	a8, 1
	s8i	a8, a2, 33
.L9:
	.loc 1 179 0
	movi.n	a12, 0x10
	addi.n	a11, a3, 12
	add.n	a10, a2, a12
	call8	strncpy
.LVL16:
	.loc 1 180 0
	movi.n	a8, 0
	s8i	a8, a2, 32
	.loc 1 182 0
	bnez.n	a4, .L11
	.loc 1 183 0
	l32r	a4, .LC6
.LVL17:
	l32i.n	a8, a4, 0
	s32i.n	a8, a2, 36
	s32i.n	a2, a4, 0
	j	.L12
.LVL18:
.L11:
	.loc 1 185 0
	l32i.n	a8, a4, 36
	s32i.n	a8, a2, 36
	s32i.n	a2, a4, 36
.LVL19:
.L12:
.LBE7:
	.loc 1 159 0
	addi	a3, a3, 32
.LVL20:
.LBB12:
	.loc 1 187 0
	mov.n	a4, a2
.LVL21:
.L4:
.LBE12:
	.loc 1 159 0 discriminator 1
	bne	a3, a5, .L13
.L5:
	.loc 1 189 0
	l32i.n	a10, sp, 4
	call8	spi_flash_munmap
.LVL22:
	.loc 1 190 0
	movi.n	a2, 0
	retw.n
.LVL23:
.L14:
	.loc 1 151 0
	mov.n	a2, a10
	.loc 1 191 0
	retw.n
.LFE6:
	.size	load_partitions, .-load_partitions
	.section	.text.esp_partition_iterator_release,"ax",@progbits
	.align	4
	.global	esp_partition_iterator_release
	.type	esp_partition_iterator_release, @function
esp_partition_iterator_release:
.LFB7:
	.loc 1 194 0
.LVL24:
	entry	sp, 32
.LCFI2:
	.loc 1 196 0
	mov.n	a10, a2
	call8	free
.LVL25:
	retw.n
.LFE7:
	.size	esp_partition_iterator_release, .-esp_partition_iterator_release
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC7:
	.string	"it"
	.align	4
.LC10:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/spi_flash/partition.c"
	.section	.text.esp_partition_next,"ax",@progbits
	.literal_position
	.literal .LC8, .LC7
	.literal .LC9, __func__$3487
	.literal .LC11, .LC10
	.literal .LC12, s_partition_list_lock
	.align	4
	.global	esp_partition_next
	.type	esp_partition_next, @function
esp_partition_next:
.LFB3:
	.loc 1 84 0
.LVL26:
	entry	sp, 32
.LCFI3:
	.loc 1 85 0
	bnez.n	a2, .L17
	.loc 1 85 0 is_stmt 0 discriminator 1
	l32r	a13, .LC8
	l32r	a12, .LC9
	movi.n	a11, 0x55
	l32r	a10, .LC11
	call8	__assert_func
.LVL27:
.L17:
	.loc 1 87 0 is_stmt 1
	l32i.n	a3, a2, 12
	bnez.n	a3, .L18
	.loc 1 88 0
	mov.n	a10, a2
	call8	esp_partition_iterator_release
.LVL28:
	.loc 1 89 0
	movi.n	a2, 0
.LVL29:
	retw.n
.LVL30:
.L18:
	.loc 1 91 0
	l32r	a10, .LC12
	call8	_lock_acquire
.LVL31:
	.loc 1 92 0
	j	.L20
.L24:
.LVL32:
.LBB13:
	.loc 1 94 0
	l32i.n	a9, a2, 0
	l32i.n	a8, a3, 0
	bne	a9, a8, .L21
	.loc 1 97 0
	l32i.n	a8, a2, 4
	movi	a9, 0xff
	beq	a8, a9, .L22
	.loc 1 97 0 is_stmt 0 discriminator 1
	l32i.n	a9, a3, 4
	bne	a8, a9, .L21
.L22:
	.loc 1 100 0 is_stmt 1
	l32i.n	a10, a2, 8
	beqz.n	a10, .L23
	.loc 1 100 0 discriminator 1
	addi	a11, a3, 16
	call8	strcmp
.LVL33:
	beqz.n	a10, .L23
.L21:
.LBE13:
	.loc 1 92 0
	l32i.n	a3, a3, 36
.LVL34:
	s32i.n	a3, a2, 12
.L20:
	.loc 1 92 0 discriminator 1
	l32i.n	a3, a2, 12
	bnez.n	a3, .L24
.L23:
	.loc 1 106 0
	l32r	a10, .LC12
	call8	_lock_release
.LVL35:
	.loc 1 107 0
	l32i.n	a3, a2, 12
	bnez.n	a3, .L25
	.loc 1 108 0
	mov.n	a10, a2
	call8	esp_partition_iterator_release
.LVL36:
	.loc 1 109 0
	movi.n	a2, 0
.LVL37:
	retw.n
.LVL38:
.L25:
	.loc 1 111 0
	s32i.n	a3, a2, 16
	.loc 1 112 0
	l32i.n	a3, a3, 36
	s32i.n	a3, a2, 12
	.loc 1 114 0
	retw.n
.LFE3:
	.size	esp_partition_next, .-esp_partition_next
	.section	.text.esp_partition_find,"ax",@progbits
	.literal_position
	.literal .LC13, s_partition_list
	.literal .LC14, s_partition_list_lock
	.align	4
	.global	esp_partition_find
	.type	esp_partition_find, @function
esp_partition_find:
.LFB2:
	.loc 1 61 0
.LVL39:
	entry	sp, 32
.LCFI4:
	.loc 1 62 0
	l32r	a8, .LC13
	l32i.n	a8, a8, 0
	bnez.n	a8, .L27
.LBB14:
	.loc 1 64 0
	l32r	a10, .LC14
	call8	_lock_acquire
.LVL40:
	.loc 1 66 0
	l32r	a8, .LC13
	l32i.n	a8, a8, 0
	bnez.n	a8, .L30
	.loc 1 67 0
	call8	load_partitions
.LVL41:
	mov.n	a5, a10
.LVL42:
	j	.L28
.LVL43:
.L30:
	.loc 1 65 0
	movi.n	a5, 0
.LVL44:
.L28:
	.loc 1 69 0
	l32r	a10, .LC14
	call8	_lock_release
.LVL45:
	.loc 1 70 0
	bnez.n	a5, .L31
.LVL46:
.L27:
.LBE14:
	.loc 1 76 0
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	iterator_create
.LVL47:
	.loc 1 78 0
	call8	esp_partition_next
.LVL48:
	mov.n	a2, a10
.LVL49:
	.loc 1 80 0
	retw.n
.LVL50:
.L31:
.LBB15:
	.loc 1 71 0
	movi.n	a2, 0
.LVL51:
.LBE15:
	.loc 1 81 0
	retw.n
.LFE2:
	.size	esp_partition_find, .-esp_partition_find
	.section	.rodata.str1.4
	.align	4
.LC15:
	.string	"iterator != NULL"
	.section	.text.esp_partition_get,"ax",@progbits
	.literal_position
	.literal .LC16, .LC15
	.literal .LC17, __func__$3524
	.literal .LC18, .LC10
	.align	4
	.global	esp_partition_get
	.type	esp_partition_get, @function
esp_partition_get:
.LFB8:
	.loc 1 200 0
.LVL52:
	entry	sp, 32
.LCFI5:
	.loc 1 201 0
	bnez.n	a2, .L33
	.loc 1 201 0 is_stmt 0 discriminator 1
	l32r	a13, .LC16
	l32r	a12, .LC17
	movi	a11, 0xc9
	l32r	a10, .LC18
	call8	__assert_func
.LVL53:
.L33:
	.loc 1 203 0 is_stmt 1
	l32i.n	a2, a2, 16
.LVL54:
	retw.n
.LFE8:
	.size	esp_partition_get, .-esp_partition_get
	.section	.text.esp_partition_find_first,"ax",@progbits
	.align	4
	.global	esp_partition_find_first
	.type	esp_partition_find_first, @function
esp_partition_find_first:
.LFB4:
	.loc 1 118 0
.LVL55:
	entry	sp, 32
.LCFI6:
	.loc 1 119 0
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	esp_partition_find
.LVL56:
	mov.n	a3, a10
.LVL57:
	.loc 1 120 0
	beqz.n	a10, .L36
	.loc 1 123 0
	call8	esp_partition_get
.LVL58:
	mov.n	a2, a10
.LVL59:
	.loc 1 124 0
	mov.n	a10, a3
	call8	esp_partition_iterator_release
.LVL60:
	.loc 1 125 0
	retw.n
.LVL61:
.L36:
	.loc 1 121 0
	movi.n	a2, 0
.LVL62:
	.loc 1 126 0
	retw.n
.LFE4:
	.size	esp_partition_find_first, .-esp_partition_find_first
	.section	.rodata.str1.4
	.align	4
.LC19:
	.string	"partition != NULL"
	.section	.text.esp_partition_verify,"ax",@progbits
	.literal_position
	.literal .LC20, .LC19
	.literal .LC21, __func__$3528
	.literal .LC22, .LC10
	.align	4
	.global	esp_partition_verify
	.type	esp_partition_verify, @function
esp_partition_verify:
.LFB9:
	.loc 1 206 0
.LVL63:
	entry	sp, 32
.LCFI7:
	.loc 1 207 0
	bnez.n	a2, .L38
	.loc 1 207 0 is_stmt 0 discriminator 1
	l32r	a13, .LC20
	l32r	a12, .LC21
	movi	a11, 0xcf
	l32r	a10, .LC22
	call8	__assert_func
.LVL64:
.L38:
	.loc 1 208 0 is_stmt 1
	l8ui	a3, a2, 16
	beqz.n	a3, .L44
	.loc 1 208 0 is_stmt 0 discriminator 1
	addi	a12, a2, 16
	j	.L39
.L44:
	.loc 1 208 0
	movi.n	a12, 0
.L39:
.LVL65:
	.loc 1 209 0 is_stmt 1 discriminator 4
	l32i.n	a11, a2, 4
	l32i.n	a10, a2, 0
	call8	esp_partition_find
.LVL66:
	mov.n	a3, a10
.LVL67:
	.loc 1 212 0 discriminator 4
	j	.L40
.L43:
.LBB16:
	.loc 1 213 0
	mov.n	a10, a3
	call8	esp_partition_get
.LVL68:
	mov.n	a4, a10
.LVL69:
	.loc 1 215 0
	l32i.n	a9, a10, 8
	l32i.n	a8, a2, 8
	bne	a9, a8, .L41
	.loc 1 216 0
	l32i.n	a9, a2, 12
	l32i.n	a8, a10, 12
	bne	a9, a8, .L41
	.loc 1 217 0
	l8ui	a9, a2, 33
	l8ui	a8, a10, 33
	bne	a9, a8, .L41
	.loc 1 218 0
	mov.n	a10, a3
	call8	esp_partition_iterator_release
.LVL70:
	.loc 1 219 0
	mov.n	a2, a4
.LVL71:
	retw.n
.LVL72:
.L41:
	.loc 1 221 0
	mov.n	a10, a3
	call8	esp_partition_next
.LVL73:
	mov.n	a3, a10
.LVL74:
.L40:
.LBE16:
	.loc 1 212 0
	bnez.n	a3, .L43
	.loc 1 223 0
	mov.n	a10, a3
	call8	esp_partition_iterator_release
.LVL75:
	.loc 1 224 0
	movi.n	a2, 0
.LVL76:
	.loc 1 225 0
	retw.n
.LFE9:
	.size	esp_partition_verify, .-esp_partition_verify
	.section	.text.esp_partition_write,"ax",@progbits
	.literal_position
	.literal .LC23, .LC19
	.literal .LC24, __func__$3551
	.literal .LC25, .LC10
	.align	4
	.global	esp_partition_write
	.type	esp_partition_write, @function
esp_partition_write:
.LFB11:
	.loc 1 259 0
.LVL77:
	entry	sp, 32
.LCFI8:
	.loc 1 260 0
	bnez.n	a2, .L46
	.loc 1 260 0 is_stmt 0 discriminator 1
	l32r	a13, .LC23
	l32r	a12, .LC24
	movi	a11, 0x104
	l32r	a10, .LC25
	call8	__assert_func
.LVL78:
.L46:
	.loc 1 261 0 is_stmt 1
	l32i.n	a8, a2, 12
	bltu	a8, a3, .L49
	.loc 1 264 0
	add.n	a9, a3, a5
	bltu	a8, a9, .L50
	.loc 1 267 0
	l32i.n	a10, a2, 8
	add.n	a10, a3, a10
.LVL79:
	.loc 1 268 0
	l8ui	a2, a2, 33
.LVL80:
	beqz.n	a2, .L48
	.loc 1 269 0
	mov.n	a12, a5
	mov.n	a11, a4
	call8	spi_flash_write_encrypted
.LVL81:
	mov.n	a2, a10
	retw.n
.LVL82:
.L48:
	.loc 1 271 0
	mov.n	a12, a5
	mov.n	a11, a4
	call8	spi_flash_write
.LVL83:
	mov.n	a2, a10
	retw.n
.LVL84:
.L49:
	.loc 1 262 0
	movi	a2, 0x102
.LVL85:
	retw.n
.LVL86:
.L50:
	.loc 1 265 0
	movi	a2, 0x104
.LVL87:
	.loc 1 273 0
	retw.n
.LFE11:
	.size	esp_partition_write, .-esp_partition_write
	.section	.text.esp_partition_erase_range,"ax",@progbits
	.literal_position
	.literal .LC26, .LC19
	.literal .LC27, __func__$3557
	.literal .LC28, .LC10
	.align	4
	.global	esp_partition_erase_range
	.type	esp_partition_erase_range, @function
esp_partition_erase_range:
.LFB12:
	.loc 1 277 0
.LVL88:
	entry	sp, 32
.LCFI9:
	.loc 1 278 0
	bnez.n	a2, .L52
	.loc 1 278 0 is_stmt 0 discriminator 1
	l32r	a13, .LC26
	l32r	a12, .LC27
	movi	a11, 0x116
	l32r	a10, .LC28
	call8	__assert_func
.LVL89:
.L52:
	.loc 1 279 0 is_stmt 1
	l32i.n	a8, a2, 12
	bltu	a8, a3, .L54
	.loc 1 282 0
	add.n	a9, a3, a4
	bltu	a8, a9, .L55
	.loc 1 285 0
	extui	a8, a4, 0, 12
	bnez.n	a8, .L56
	.loc 1 288 0
	extui	a8, a3, 0, 12
	bnez.n	a8, .L57
	.loc 1 291 0
	l32i.n	a10, a2, 8
	mov.n	a11, a4
	add.n	a10, a3, a10
	call8	spi_flash_erase_range
.LVL90:
	mov.n	a2, a10
.LVL91:
	retw.n
.LVL92:
.L54:
	.loc 1 280 0
	movi	a2, 0x102
.LVL93:
	retw.n
.LVL94:
.L55:
	.loc 1 283 0
	movi	a2, 0x104
.LVL95:
	retw.n
.LVL96:
.L56:
	.loc 1 286 0
	movi	a2, 0x104
.LVL97:
	retw.n
.LVL98:
.L57:
	.loc 1 289 0
	movi	a2, 0x102
.LVL99:
	.loc 1 293 0
	retw.n
.LFE12:
	.size	esp_partition_erase_range, .-esp_partition_erase_range
	.section	.text.esp_partition_mmap,"ax",@progbits
	.literal_position
	.literal .LC29, .LC19
	.literal .LC30, __func__$3566
	.literal .LC31, .LC10
	.literal .LC32, -65536
	.align	4
	.global	esp_partition_mmap
	.type	esp_partition_mmap, @function
esp_partition_mmap:
.LFB13:
	.loc 1 306 0
.LVL100:
	entry	sp, 32
.LCFI10:
	.loc 1 307 0
	bnez.n	a2, .L59
	.loc 1 307 0 is_stmt 0 discriminator 1
	l32r	a13, .LC29
	l32r	a12, .LC30
	movi	a11, 0x133
	l32r	a10, .LC31
	call8	__assert_func
.LVL101:
.L59:
	.loc 1 308 0 is_stmt 1
	l32i.n	a8, a2, 12
	bltu	a8, a3, .L61
	.loc 1 311 0
	add.n	a9, a3, a4
	bltu	a8, a9, .L62
	.loc 1 314 0
	l32i.n	a10, a2, 8
	add.n	a3, a3, a10
.LVL102:
	.loc 1 316 0
	extui	a2, a3, 0, 16
.LVL103:
	.loc 1 318 0
	mov.n	a14, a7
	mov.n	a13, a6
	mov.n	a12, a5
	add.n	a11, a4, a2
	l32r	a10, .LC32
	and	a10, a3, a10
.LVL104:
	call8	spi_flash_mmap
.LVL105:
	.loc 1 320 0
	bnez.n	a10, .L63
	.loc 1 321 0
	l32i.n	a3, a6, 0
.LVL106:
	add.n	a2, a3, a2
.LVL107:
	s32i.n	a2, a6, 0
	.loc 1 323 0
	mov.n	a2, a10
	retw.n
.LVL108:
.L61:
	.loc 1 309 0
	movi	a2, 0x102
.LVL109:
	retw.n
.LVL110:
.L62:
	.loc 1 312 0
	movi	a2, 0x104
.LVL111:
	retw.n
.LVL112:
.L63:
	.loc 1 323 0
	mov.n	a2, a10
.LVL113:
	.loc 1 324 0
	retw.n
.LFE13:
	.size	esp_partition_mmap, .-esp_partition_mmap
	.section	.text.esp_partition_read,"ax",@progbits
	.literal_position
	.literal .LC33, .LC19
	.literal .LC34, __func__$3541
	.literal .LC35, .LC10
	.align	4
	.global	esp_partition_read
	.type	esp_partition_read, @function
esp_partition_read:
.LFB10:
	.loc 1 229 0
.LVL114:
	entry	sp, 48
.LCFI11:
	.loc 1 230 0
	bnez.n	a2, .L65
	.loc 1 230 0 is_stmt 0 discriminator 1
	l32r	a13, .LC33
	l32r	a12, .LC34
	movi	a11, 0xe6
	l32r	a10, .LC35
	call8	__assert_func
.LVL115:
.L65:
	.loc 1 231 0 is_stmt 1
	l32i.n	a8, a2, 12
	bltu	a8, a3, .L69
	.loc 1 234 0
	add.n	a9, a3, a5
	bltu	a8, a9, .L70
	.loc 1 238 0
	l8ui	a8, a2, 33
	bnez.n	a8, .L67
	.loc 1 239 0
	l32i.n	a10, a2, 8
	mov.n	a12, a5
	mov.n	a11, a4
	add.n	a10, a3, a10
	call8	spi_flash_read
.LVL116:
	mov.n	a2, a10
.LVL117:
	retw.n
.LVL118:
.L67:
.LBB17:
	.loc 1 246 0
	mov.n	a15, sp
	addi.n	a14, sp, 4
	movi.n	a13, 0
	mov.n	a12, a5
	mov.n	a11, a3
	mov.n	a10, a2
	call8	esp_partition_mmap
.LVL119:
	.loc 1 248 0
	bnez.n	a10, .L71
	.loc 1 251 0
	mov.n	a12, a5
	l32i.n	a11, sp, 4
	mov.n	a10, a4
.LVL120:
	call8	memcpy
.LVL121:
	.loc 1 252 0
	l32i.n	a10, sp, 0
	call8	spi_flash_munmap
.LVL122:
	.loc 1 253 0
	movi.n	a2, 0
.LVL123:
	retw.n
.LVL124:
.L71:
	.loc 1 249 0
	mov.n	a2, a10
.LVL125:
	retw.n
.LVL126:
.L69:
.LBE17:
	.loc 1 232 0
	movi	a2, 0x102
.LVL127:
	retw.n
.LVL128:
.L70:
	.loc 1 235 0
	movi	a2, 0x104
.LVL129:
	.loc 1 255 0
	retw.n
.LFE10:
	.size	esp_partition_read, .-esp_partition_read
	.section	.rodata.__func__$3566,"a",@progbits
	.align	4
	.type	__func__$3566, @object
	.size	__func__$3566, 19
__func__$3566:
	.string	"esp_partition_mmap"
	.section	.rodata.__func__$3557,"a",@progbits
	.align	4
	.type	__func__$3557, @object
	.size	__func__$3557, 26
__func__$3557:
	.string	"esp_partition_erase_range"
	.section	.rodata.__func__$3551,"a",@progbits
	.align	4
	.type	__func__$3551, @object
	.size	__func__$3551, 20
__func__$3551:
	.string	"esp_partition_write"
	.section	.rodata.__func__$3541,"a",@progbits
	.align	4
	.type	__func__$3541, @object
	.size	__func__$3541, 19
__func__$3541:
	.string	"esp_partition_read"
	.section	.rodata.__func__$3528,"a",@progbits
	.align	4
	.type	__func__$3528, @object
	.size	__func__$3528, 21
__func__$3528:
	.string	"esp_partition_verify"
	.section	.rodata.__func__$3524,"a",@progbits
	.align	4
	.type	__func__$3524, @object
	.size	__func__$3524, 18
__func__$3524:
	.string	"esp_partition_get"
	.section	.rodata.__func__$3487,"a",@progbits
	.align	4
	.type	__func__$3487, @object
	.size	__func__$3487, 19
__func__$3487:
	.string	"esp_partition_next"
	.section	.bss.s_partition_list_lock,"aw",@nobits
	.align	4
	.type	s_partition_list_lock, @object
	.size	s_partition_list_lock, 4
s_partition_list_lock:
	.zero	4
	.section	.bss.s_partition_list,"aw",@nobits
	.align	4
	.type	s_partition_list, @object
	.size	s_partition_list, 4
s_partition_list:
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
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI0-.LFB5
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI1-.LFB6
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI2-.LFB7
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI3-.LFB3
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI4-.LFB2
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x4
	.4byte	.LCFI5-.LFB8
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI6-.LFB4
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x4
	.4byte	.LCFI7-.LFB9
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x4
	.4byte	.LCFI8-.LFB11
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI9-.LFB12
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI10-.LFB13
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI11-.LFB10
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE22:
	.text
.Letext0:
	.file 3 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/lock.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_err.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_flash_data_types.h"
	.file 9 "D:/ESP32/esp-idf-v3.1-rc1/components/spi_flash/include/esp_spi_flash.h"
	.file 10 "D:/ESP32/esp-idf-v3.1-rc1/components/spi_flash/include/esp_partition.h"
	.file 11 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdlib.h"
	.file 12 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/string.h"
	.file 13 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/assert.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xeab
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF124
	.byte	0xc
	.4byte	.LASF125
	.4byte	.LASF126
	.4byte	.Ldebug_ranges0+0x30
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF2
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
	.uleb128 0x2
	.4byte	.LASF3
	.byte	0x3
	.byte	0x95
	.4byte	0x49
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF4
	.uleb128 0x2
	.4byte	.LASF5
	.byte	0x4
	.byte	0x12
	.4byte	0x62
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF6
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x2
	.4byte	.LASF8
	.byte	0x4
	.byte	0x16
	.4byte	0x37
	.uleb128 0x2
	.4byte	.LASF9
	.byte	0x4
	.byte	0x19
	.4byte	0x49
	.uleb128 0x2
	.4byte	.LASF10
	.byte	0x4
	.byte	0x1a
	.4byte	0x30
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x2
	.4byte	.LASF13
	.byte	0x5
	.byte	0xb
	.4byte	0x49
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF14
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF16
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF17
	.uleb128 0x6
	.byte	0x4
	.4byte	0xce
	.uleb128 0x7
	.4byte	0xc1
	.uleb128 0x6
	.byte	0x4
	.4byte	0xd9
	.uleb128 0x8
	.uleb128 0x2
	.4byte	.LASF18
	.byte	0x6
	.byte	0x15
	.4byte	0x57
	.uleb128 0x2
	.4byte	.LASF19
	.byte	0x6
	.byte	0x21
	.4byte	0x70
	.uleb128 0x2
	.4byte	.LASF20
	.byte	0x6
	.byte	0x2c
	.4byte	0x7b
	.uleb128 0x2
	.4byte	.LASF21
	.byte	0x6
	.byte	0x2d
	.4byte	0x86
	.uleb128 0x2
	.4byte	.LASF22
	.byte	0x7
	.byte	0x18
	.4byte	0xf0
	.uleb128 0x9
	.byte	0x8
	.byte	0x8
	.byte	0x24
	.4byte	0x132
	.uleb128 0xa
	.4byte	.LASF23
	.byte	0x8
	.byte	0x25
	.4byte	0xfb
	.byte	0
	.uleb128 0xa
	.4byte	.LASF24
	.byte	0x8
	.byte	0x26
	.4byte	0xfb
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.4byte	.LASF25
	.byte	0x8
	.byte	0x27
	.4byte	0x111
	.uleb128 0x9
	.byte	0x20
	.byte	0x8
	.byte	0x2c
	.4byte	0x18e
	.uleb128 0xa
	.4byte	.LASF26
	.byte	0x8
	.byte	0x2d
	.4byte	0xe5
	.byte	0
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0x8
	.byte	0x2e
	.4byte	0xda
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0x8
	.byte	0x2f
	.4byte	0xda
	.byte	0x3
	.uleb128 0xb
	.string	"pos"
	.byte	0x8
	.byte	0x30
	.4byte	0x132
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF29
	.byte	0x8
	.byte	0x31
	.4byte	0x18e
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF30
	.byte	0x8
	.byte	0x32
	.4byte	0xfb
	.byte	0x1c
	.byte	0
	.uleb128 0xc
	.4byte	0xda
	.4byte	0x19e
	.uleb128 0xd
	.4byte	0xb1
	.byte	0xf
	.byte	0
	.uleb128 0x2
	.4byte	.LASF31
	.byte	0x8
	.byte	0x33
	.4byte	0x13d
	.uleb128 0xe
	.byte	0x4
	.4byte	0x30
	.byte	0x9
	.byte	0xa1
	.4byte	0x1c2
	.uleb128 0xf
	.4byte	.LASF32
	.byte	0
	.uleb128 0xf
	.4byte	.LASF33
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.4byte	.LASF34
	.byte	0x9
	.byte	0xa4
	.4byte	0x1a9
	.uleb128 0x2
	.4byte	.LASF35
	.byte	0x9
	.byte	0xa9
	.4byte	0xfb
	.uleb128 0xe
	.byte	0x4
	.4byte	0x30
	.byte	0xa
	.byte	0x26
	.4byte	0x1f1
	.uleb128 0xf
	.4byte	.LASF36
	.byte	0
	.uleb128 0xf
	.4byte	.LASF37
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.4byte	.LASF38
	.byte	0xa
	.byte	0x29
	.4byte	0x1d8
	.uleb128 0xe
	.byte	0x4
	.4byte	0x30
	.byte	0xa
	.byte	0x2f
	.4byte	0x2b1
	.uleb128 0xf
	.4byte	.LASF39
	.byte	0
	.uleb128 0xf
	.4byte	.LASF40
	.byte	0x10
	.uleb128 0xf
	.4byte	.LASF41
	.byte	0x10
	.uleb128 0xf
	.4byte	.LASF42
	.byte	0x11
	.uleb128 0xf
	.4byte	.LASF43
	.byte	0x12
	.uleb128 0xf
	.4byte	.LASF44
	.byte	0x13
	.uleb128 0xf
	.4byte	.LASF45
	.byte	0x14
	.uleb128 0xf
	.4byte	.LASF46
	.byte	0x15
	.uleb128 0xf
	.4byte	.LASF47
	.byte	0x16
	.uleb128 0xf
	.4byte	.LASF48
	.byte	0x17
	.uleb128 0xf
	.4byte	.LASF49
	.byte	0x18
	.uleb128 0xf
	.4byte	.LASF50
	.byte	0x19
	.uleb128 0xf
	.4byte	.LASF51
	.byte	0x1a
	.uleb128 0xf
	.4byte	.LASF52
	.byte	0x1b
	.uleb128 0xf
	.4byte	.LASF53
	.byte	0x1c
	.uleb128 0xf
	.4byte	.LASF54
	.byte	0x1d
	.uleb128 0xf
	.4byte	.LASF55
	.byte	0x1e
	.uleb128 0xf
	.4byte	.LASF56
	.byte	0x1f
	.uleb128 0xf
	.4byte	.LASF57
	.byte	0x20
	.uleb128 0xf
	.4byte	.LASF58
	.byte	0x20
	.uleb128 0xf
	.4byte	.LASF59
	.byte	0
	.uleb128 0xf
	.4byte	.LASF60
	.byte	0x1
	.uleb128 0xf
	.4byte	.LASF61
	.byte	0x2
	.uleb128 0xf
	.4byte	.LASF62
	.byte	0x3
	.uleb128 0xf
	.4byte	.LASF63
	.byte	0x80
	.uleb128 0xf
	.4byte	.LASF64
	.byte	0x81
	.uleb128 0xf
	.4byte	.LASF65
	.byte	0x82
	.uleb128 0xf
	.4byte	.LASF66
	.byte	0xff
	.byte	0
	.uleb128 0x2
	.4byte	.LASF67
	.byte	0xa
	.byte	0x4f
	.4byte	0x1fc
	.uleb128 0x2
	.4byte	.LASF68
	.byte	0xa
	.byte	0x59
	.4byte	0x2c7
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2cd
	.uleb128 0x10
	.4byte	.LASF76
	.byte	0x14
	.byte	0x1
	.byte	0x29
	.4byte	0x316
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0x1
	.byte	0x2a
	.4byte	0x1f1
	.byte	0
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0x1
	.byte	0x2b
	.4byte	0x2b1
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF29
	.byte	0x1
	.byte	0x2c
	.4byte	0xc8
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF69
	.byte	0x1
	.byte	0x2d
	.4byte	0x3d4
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF70
	.byte	0x1
	.byte	0x2e
	.4byte	0x3da
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.byte	0x24
	.byte	0xa
	.byte	0x62
	.4byte	0x367
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0xa
	.byte	0x63
	.4byte	0x1f1
	.byte	0
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0xa
	.byte	0x64
	.4byte	0x2b1
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF71
	.byte	0xa
	.byte	0x65
	.4byte	0xfb
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF24
	.byte	0xa
	.byte	0x66
	.4byte	0xfb
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF29
	.byte	0xa
	.byte	0x67
	.4byte	0x367
	.byte	0x10
	.uleb128 0xa
	.4byte	.LASF72
	.byte	0xa
	.byte	0x68
	.4byte	0x377
	.byte	0x21
	.byte	0
	.uleb128 0xc
	.4byte	0xc1
	.4byte	0x377
	.uleb128 0xd
	.4byte	0xb1
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF73
	.uleb128 0x2
	.4byte	.LASF74
	.byte	0xa
	.byte	0x69
	.4byte	0x316
	.uleb128 0x9
	.byte	0x4
	.byte	0x1
	.byte	0x26
	.4byte	0x39e
	.uleb128 0xa
	.4byte	.LASF75
	.byte	0x1
	.byte	0x26
	.4byte	0x3c3
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	.LASF77
	.byte	0x28
	.byte	0x1
	.byte	0x24
	.4byte	0x3c3
	.uleb128 0xa
	.4byte	.LASF70
	.byte	0x1
	.byte	0x25
	.4byte	0x37e
	.byte	0
	.uleb128 0xa
	.4byte	.LASF78
	.byte	0x1
	.byte	0x26
	.4byte	0x389
	.byte	0x24
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x39e
	.uleb128 0x2
	.4byte	.LASF79
	.byte	0x1
	.byte	0x27
	.4byte	0x39e
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3c9
	.uleb128 0x6
	.byte	0x4
	.4byte	0x37e
	.uleb128 0x2
	.4byte	.LASF80
	.byte	0x1
	.byte	0x2f
	.4byte	0x2cd
	.uleb128 0x10
	.4byte	.LASF81
	.byte	0x4
	.byte	0x1
	.byte	0x36
	.4byte	0x404
	.uleb128 0xa
	.4byte	.LASF82
	.byte	0x1
	.byte	0x36
	.4byte	0x3c3
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	.LASF127
	.byte	0x2
	.byte	0x24
	.4byte	0x377
	.byte	0x3
	.4byte	0x438
	.uleb128 0x12
	.4byte	.LASF83
	.byte	0x2
	.byte	0x25
	.4byte	0xfb
	.uleb128 0x13
	.4byte	.LASF84
	.4byte	0x448
	.4byte	.LASF127
	.uleb128 0x12
	.4byte	.LASF85
	.byte	0x2
	.byte	0x27
	.4byte	0x377
	.byte	0
	.uleb128 0xc
	.4byte	0xc1
	.4byte	0x448
	.uleb128 0xd
	.4byte	0xb1
	.byte	0x1c
	.byte	0
	.uleb128 0x7
	.4byte	0x438
	.uleb128 0x14
	.4byte	.LASF128
	.byte	0x1
	.byte	0x80
	.4byte	0x4ab
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4ab
	.uleb128 0x15
	.4byte	.LASF27
	.byte	0x1
	.byte	0x80
	.4byte	0x1f1
	.4byte	.LLST0
	.uleb128 0x16
	.4byte	.LASF28
	.byte	0x1
	.byte	0x81
	.4byte	0x2b1
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x16
	.4byte	.LASF29
	.byte	0x1
	.byte	0x81
	.4byte	0xc8
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x17
	.string	"it"
	.byte	0x1
	.byte	0x83
	.4byte	0x4ab
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x18
	.4byte	.LVL1
	.4byte	0xe16
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x44
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3e0
	.uleb128 0x1a
	.4byte	.LASF129
	.byte	0x1
	.byte	0x8f
	.4byte	0x106
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5d5
	.uleb128 0x17
	.string	"ptr"
	.byte	0x1
	.byte	0x91
	.4byte	0x5d5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1b
	.4byte	.LASF86
	.byte	0x1
	.byte	0x92
	.4byte	0x1cd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1c
	.string	"err"
	.byte	0x1
	.byte	0x94
	.4byte	0x106
	.4byte	.LLST1
	.uleb128 0x1c
	.string	"it"
	.byte	0x1
	.byte	0x9a
	.4byte	0x5e0
	.4byte	.LLST2
	.uleb128 0x1c
	.string	"end"
	.byte	0x1
	.byte	0x9c
	.4byte	0x5e0
	.4byte	.LLST3
	.uleb128 0x1d
	.4byte	.LASF87
	.byte	0x1
	.byte	0x9e
	.4byte	0x3d4
	.4byte	.LLST4
	.uleb128 0x1e
	.4byte	.Ldebug_ranges0+0
	.4byte	0x59e
	.uleb128 0x1d
	.4byte	.LASF88
	.byte	0x1
	.byte	0xa4
	.4byte	0x3d4
	.4byte	.LLST5
	.uleb128 0x1f
	.4byte	0x404
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.byte	0x1
	.byte	0xaa
	.4byte	0x56e
	.uleb128 0x20
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.uleb128 0x21
	.4byte	0x414
	.4byte	.LLST6
	.uleb128 0x21
	.4byte	0x42c
	.4byte	.LLST7
	.uleb128 0x22
	.4byte	0x41f
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL7
	.4byte	0xe16
	.4byte	0x582
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x28
	.byte	0
	.uleb128 0x18
	.4byte	.LVL16
	.4byte	0xe21
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 16
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 12
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL3
	.4byte	0xe2c
	.4byte	0x5cb
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x40
	.byte	0x3c
	.byte	0x24
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1000
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x24
	.4byte	.LVL22
	.4byte	0xe37
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5db
	.uleb128 0x7
	.4byte	0xfb
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5e6
	.uleb128 0x7
	.4byte	0x19e
	.uleb128 0x25
	.4byte	.LASF130
	.byte	0x1
	.byte	0xc1
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x61e
	.uleb128 0x16
	.4byte	.LASF89
	.byte	0x1
	.byte	0xc1
	.4byte	0x2bc
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x18
	.4byte	.LVL25
	.4byte	0xe42
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LASF90
	.byte	0x1
	.byte	0x53
	.4byte	0x2bc
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x701
	.uleb128 0x27
	.string	"it"
	.byte	0x1
	.byte	0x53
	.4byte	0x2bc
	.4byte	.LLST8
	.uleb128 0x28
	.4byte	.LASF84
	.4byte	0x711
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3487
	.uleb128 0x29
	.4byte	.LBB13
	.4byte	.LBE13-.LBB13
	.4byte	0x67f
	.uleb128 0x1c
	.string	"p"
	.byte	0x1
	.byte	0x5d
	.4byte	0x3da
	.4byte	.LLST9
	.uleb128 0x18
	.4byte	.LVL33
	.4byte	0xe4d
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 16
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL27
	.4byte	0xe58
	.4byte	0x6ae
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x55
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3487
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0
	.uleb128 0x23
	.4byte	.LVL28
	.4byte	0x5eb
	.4byte	0x6c2
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL31
	.4byte	0xe63
	.4byte	0x6d9
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	s_partition_list_lock
	.byte	0
	.uleb128 0x23
	.4byte	.LVL35
	.4byte	0xe6e
	.4byte	0x6f0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	s_partition_list_lock
	.byte	0
	.uleb128 0x18
	.4byte	.LVL36
	.4byte	0x5eb
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	0xc1
	.4byte	0x711
	.uleb128 0xd
	.4byte	0xb1
	.byte	0x12
	.byte	0
	.uleb128 0x7
	.4byte	0x701
	.uleb128 0x26
	.4byte	.LASF91
	.byte	0x1
	.byte	0x3b
	.4byte	0x2bc
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7dc
	.uleb128 0x15
	.4byte	.LASF27
	.byte	0x1
	.byte	0x3b
	.4byte	0x1f1
	.4byte	.LLST10
	.uleb128 0x16
	.4byte	.LASF28
	.byte	0x1
	.byte	0x3c
	.4byte	0x2b1
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x16
	.4byte	.LASF29
	.byte	0x1
	.byte	0x3c
	.4byte	0xc8
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1c
	.string	"it"
	.byte	0x1
	.byte	0x4c
	.4byte	0x2bc
	.4byte	.LLST11
	.uleb128 0x1e
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0x7b2
	.uleb128 0x1c
	.string	"err"
	.byte	0x1
	.byte	0x41
	.4byte	0x106
	.4byte	.LLST12
	.uleb128 0x23
	.4byte	.LVL40
	.4byte	0xe63
	.4byte	0x795
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	s_partition_list_lock
	.byte	0
	.uleb128 0x24
	.4byte	.LVL41
	.4byte	0x4b1
	.uleb128 0x18
	.4byte	.LVL45
	.4byte	0xe6e
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	s_partition_list_lock
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL47
	.4byte	0x44d
	.4byte	0x7d2
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL48
	.4byte	0x61e
	.byte	0
	.uleb128 0x26
	.4byte	.LASF92
	.byte	0x1
	.byte	0xc7
	.4byte	0x83f
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x83f
	.uleb128 0x15
	.4byte	.LASF89
	.byte	0x1
	.byte	0xc7
	.4byte	0x2bc
	.4byte	.LLST13
	.uleb128 0x28
	.4byte	.LASF84
	.4byte	0x85a
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3524
	.uleb128 0x18
	.4byte	.LVL53
	.4byte	0xe58
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xc9
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3524
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x845
	.uleb128 0x7
	.4byte	0x37e
	.uleb128 0xc
	.4byte	0xc1
	.4byte	0x85a
	.uleb128 0xd
	.4byte	0xb1
	.byte	0x11
	.byte	0
	.uleb128 0x7
	.4byte	0x84a
	.uleb128 0x26
	.4byte	.LASF93
	.byte	0x1
	.byte	0x74
	.4byte	0x83f
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x903
	.uleb128 0x15
	.4byte	.LASF27
	.byte	0x1
	.byte	0x74
	.4byte	0x1f1
	.4byte	.LLST14
	.uleb128 0x15
	.4byte	.LASF28
	.byte	0x1
	.byte	0x75
	.4byte	0x2b1
	.4byte	.LLST15
	.uleb128 0x16
	.4byte	.LASF29
	.byte	0x1
	.byte	0x75
	.4byte	0xc8
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x17
	.string	"it"
	.byte	0x1
	.byte	0x77
	.4byte	0x2bc
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1c
	.string	"res"
	.byte	0x1
	.byte	0x7b
	.4byte	0x83f
	.4byte	.LLST16
	.uleb128 0x23
	.4byte	.LVL56
	.4byte	0x716
	.4byte	0x8de
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL58
	.4byte	0x7dc
	.4byte	0x8f2
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL60
	.4byte	0x5eb
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LASF94
	.byte	0x1
	.byte	0xcd
	.4byte	0x83f
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9f1
	.uleb128 0x15
	.4byte	.LASF95
	.byte	0x1
	.byte	0xcd
	.4byte	0x83f
	.4byte	.LLST17
	.uleb128 0x28
	.4byte	.LASF84
	.4byte	0xa01
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3528
	.uleb128 0x1d
	.4byte	.LASF29
	.byte	0x1
	.byte	0xd0
	.4byte	0xc8
	.4byte	.LLST18
	.uleb128 0x17
	.string	"it"
	.byte	0x1
	.byte	0xd1
	.4byte	0x2bc
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x29
	.4byte	.LBB16
	.4byte	.LBE16-.LBB16
	.4byte	0x9a8
	.uleb128 0x1c
	.string	"p"
	.byte	0x1
	.byte	0xd5
	.4byte	0x83f
	.4byte	.LLST19
	.uleb128 0x23
	.4byte	.LVL68
	.4byte	0x7dc
	.4byte	0x983
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL70
	.4byte	0x5eb
	.4byte	0x997
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL73
	.4byte	0x61e
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL64
	.4byte	0xe58
	.4byte	0x9d7
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xcf
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3528
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC19
	.byte	0
	.uleb128 0x24
	.4byte	.LVL66
	.4byte	0x716
	.uleb128 0x18
	.4byte	.LVL75
	.4byte	0x5eb
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	0xc1
	.4byte	0xa01
	.uleb128 0xd
	.4byte	0xb1
	.byte	0x14
	.byte	0
	.uleb128 0x7
	.4byte	0x9f1
	.uleb128 0x2a
	.4byte	.LASF96
	.byte	0x1
	.2byte	0x101
	.4byte	0x106
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xacc
	.uleb128 0x2b
	.4byte	.LASF95
	.byte	0x1
	.2byte	0x101
	.4byte	0x83f
	.4byte	.LLST20
	.uleb128 0x2b
	.4byte	.LASF97
	.byte	0x1
	.2byte	0x102
	.4byte	0x25
	.4byte	.LLST21
	.uleb128 0x2c
	.string	"src"
	.byte	0x1
	.2byte	0x102
	.4byte	0xd3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2d
	.4byte	.LASF24
	.byte	0x1
	.2byte	0x102
	.4byte	0x25
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x28
	.4byte	.LASF84
	.4byte	0xadc
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3551
	.uleb128 0x23
	.4byte	.LVL78
	.4byte	0xe58
	.4byte	0xa9b
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x104
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3551
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC19
	.byte	0
	.uleb128 0x23
	.4byte	.LVL81
	.4byte	0xe79
	.4byte	0xab5
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL83
	.4byte	0xe84
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	0xc1
	.4byte	0xadc
	.uleb128 0xd
	.4byte	0xb1
	.byte	0x13
	.byte	0
	.uleb128 0x7
	.4byte	0xacc
	.uleb128 0x2a
	.4byte	.LASF98
	.byte	0x1
	.2byte	0x113
	.4byte	0x106
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb77
	.uleb128 0x2b
	.4byte	.LASF95
	.byte	0x1
	.2byte	0x113
	.4byte	0x83f
	.4byte	.LLST22
	.uleb128 0x2d
	.4byte	.LASF99
	.byte	0x1
	.2byte	0x114
	.4byte	0x25
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2d
	.4byte	.LASF24
	.byte	0x1
	.2byte	0x114
	.4byte	0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x28
	.4byte	.LASF84
	.4byte	0xb87
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3557
	.uleb128 0x23
	.4byte	.LVL89
	.4byte	0xe58
	.4byte	0xb66
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x116
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3557
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC19
	.byte	0
	.uleb128 0x18
	.4byte	.LVL90
	.4byte	0xe8f
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	0xc1
	.4byte	0xb87
	.uleb128 0xd
	.4byte	0xb1
	.byte	0x19
	.byte	0
	.uleb128 0x7
	.4byte	0xb77
	.uleb128 0x2a
	.4byte	.LASF100
	.byte	0x1
	.2byte	0x12f
	.4byte	0x106
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcad
	.uleb128 0x2b
	.4byte	.LASF95
	.byte	0x1
	.2byte	0x12f
	.4byte	0x83f
	.4byte	.LLST23
	.uleb128 0x2b
	.4byte	.LASF23
	.byte	0x1
	.2byte	0x12f
	.4byte	0xfb
	.4byte	.LLST24
	.uleb128 0x2d
	.4byte	.LASF24
	.byte	0x1
	.2byte	0x12f
	.4byte	0xfb
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2d
	.4byte	.LASF101
	.byte	0x1
	.2byte	0x130
	.4byte	0x1c2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2d
	.4byte	.LASF102
	.byte	0x1
	.2byte	0x131
	.4byte	0xcad
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x2d
	.4byte	.LASF103
	.byte	0x1
	.2byte	0x131
	.4byte	0xcb3
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x28
	.4byte	.LASF84
	.4byte	0xcb9
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3566
	.uleb128 0x2e
	.4byte	.LASF104
	.byte	0x1
	.2byte	0x13a
	.4byte	0x25
	.4byte	.LLST25
	.uleb128 0x2e
	.4byte	.LASF105
	.byte	0x1
	.2byte	0x13c
	.4byte	0x25
	.4byte	.LLST26
	.uleb128 0x2e
	.4byte	.LASF106
	.byte	0x1
	.2byte	0x13d
	.4byte	0x25
	.4byte	.LLST27
	.uleb128 0x2f
	.string	"rc"
	.byte	0x1
	.2byte	0x13e
	.4byte	0x106
	.4byte	.LLST28
	.uleb128 0x23
	.4byte	.LVL101
	.4byte	0xe58
	.4byte	0xc7c
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x133
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3566
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC19
	.byte	0
	.uleb128 0x18
	.4byte	.LVL105
	.4byte	0xe2c
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x7
	.byte	0x73
	.sleb128 0
	.byte	0x11
	.sleb128 -65536
	.byte	0x1a
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x74
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xd3
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1cd
	.uleb128 0x7
	.4byte	0x701
	.uleb128 0x26
	.4byte	.LASF107
	.byte	0x1
	.byte	0xe3
	.4byte	0x106
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdef
	.uleb128 0x15
	.4byte	.LASF95
	.byte	0x1
	.byte	0xe3
	.4byte	0x83f
	.4byte	.LLST29
	.uleb128 0x16
	.4byte	.LASF108
	.byte	0x1
	.byte	0xe4
	.4byte	0x25
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x30
	.string	"dst"
	.byte	0x1
	.byte	0xe4
	.4byte	0xb8
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x16
	.4byte	.LASF24
	.byte	0x1
	.byte	0xe4
	.4byte	0x25
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x28
	.4byte	.LASF84
	.4byte	0xdef
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3541
	.uleb128 0x29
	.4byte	.LBB17
	.4byte	.LBE17-.LBB17
	.4byte	0xda9
	.uleb128 0x17
	.string	"buf"
	.byte	0x1
	.byte	0xf2
	.4byte	0xd3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1b
	.4byte	.LASF86
	.byte	0x1
	.byte	0xf3
	.4byte	0x1cd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1c
	.string	"err"
	.byte	0x1
	.byte	0xf4
	.4byte	0x106
	.4byte	.LLST30
	.uleb128 0x23
	.4byte	.LVL119
	.4byte	0xb8c
	.4byte	0xd85
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x23
	.4byte	.LVL121
	.4byte	0xe9a
	.4byte	0xd9f
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL122
	.4byte	0xe37
	.byte	0
	.uleb128 0x23
	.4byte	.LVL115
	.4byte	0xe58
	.4byte	0xdd8
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xe6
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3541
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC19
	.byte	0
	.uleb128 0x18
	.4byte	.LVL116
	.4byte	0xea3
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0x701
	.uleb128 0x1b
	.4byte	.LASF109
	.byte	0x1
	.byte	0x36
	.4byte	0x3eb
	.uleb128 0x5
	.byte	0x3
	.4byte	s_partition_list
	.uleb128 0x1b
	.4byte	.LASF110
	.byte	0x1
	.byte	0x38
	.4byte	0x9f
	.uleb128 0x5
	.byte	0x3
	.4byte	s_partition_list_lock
	.uleb128 0x31
	.4byte	.LASF111
	.4byte	.LASF111
	.byte	0xb
	.byte	0x65
	.uleb128 0x31
	.4byte	.LASF112
	.4byte	.LASF112
	.byte	0xc
	.byte	0x24
	.uleb128 0x31
	.4byte	.LASF113
	.4byte	.LASF113
	.byte	0x9
	.byte	0xc1
	.uleb128 0x31
	.4byte	.LASF114
	.4byte	.LASF114
	.byte	0x9
	.byte	0xe9
	.uleb128 0x31
	.4byte	.LASF115
	.4byte	.LASF115
	.byte	0xb
	.byte	0x5a
	.uleb128 0x31
	.4byte	.LASF116
	.4byte	.LASF116
	.byte	0xc
	.byte	0x1c
	.uleb128 0x31
	.4byte	.LASF117
	.4byte	.LASF117
	.byte	0xd
	.byte	0x29
	.uleb128 0x31
	.4byte	.LASF118
	.4byte	.LASF118
	.byte	0x5
	.byte	0x20
	.uleb128 0x31
	.4byte	.LASF119
	.4byte	.LASF119
	.byte	0x5
	.byte	0x24
	.uleb128 0x31
	.4byte	.LASF120
	.4byte	.LASF120
	.byte	0x9
	.byte	0x74
	.uleb128 0x31
	.4byte	.LASF121
	.4byte	.LASF121
	.byte	0x9
	.byte	0x5d
	.uleb128 0x31
	.4byte	.LASF122
	.4byte	.LASF122
	.byte	0x9
	.byte	0x4a
	.uleb128 0x32
	.4byte	.LASF131
	.4byte	.LASF131
	.uleb128 0x31
	.4byte	.LASF123
	.4byte	.LASF123
	.byte	0x9
	.byte	0x8b
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
	.uleb128 0x26
	.byte	0
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
	.uleb128 0xf
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x20
	.uleb128 0xb
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
	.uleb128 0x1c
	.uleb128 0xe
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
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
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
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2c
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
	.uleb128 0x18
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.4byte	.LFE5
	.2byte	0x2
	.byte	0x7a
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL3
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL23
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL4
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL5
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL19
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL21
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL8
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL9
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL12
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL26
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL32
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL39
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL51
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL47
	.4byte	.LVL48-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL40
	.4byte	.LVL42
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL44
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL50
	.4byte	.LFE2
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL52
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL54
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL55
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL59
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
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL55
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL57
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL59
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL63
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL71
	.4byte	.LVL72
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL72
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL76
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL65
	.4byte	.LVL66-1
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL69
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL77
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL80
	.4byte	.LVL84
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL84
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL85
	.4byte	.LVL86
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL86
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL87
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL77
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL79
	.4byte	.LVL81-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL82
	.4byte	.LVL83-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL84
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL88
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
	.4byte	.LVL98
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL98
	.4byte	.LVL99
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL99
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL100
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL103
	.4byte	.LVL108
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL108
	.4byte	.LVL109
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL109
	.4byte	.LVL110
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL110
	.4byte	.LVL111
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL111
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL100
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL102
	.4byte	.LVL108
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL108
	.4byte	.LVL112
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL112
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL102
	.4byte	.LVL106
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL112
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL103
	.4byte	.LVL107
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL112
	.4byte	.LVL113
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL113
	.4byte	.LFE13
	.2byte	0x7
	.byte	0x73
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL103
	.4byte	.LVL104
	.2byte	0x8
	.byte	0x73
	.sleb128 0
	.byte	0x11
	.sleb128 -65536
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL104
	.4byte	.LVL105-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL105-1
	.4byte	.LVL106
	.2byte	0x8
	.byte	0x73
	.sleb128 0
	.byte	0x11
	.sleb128 -65536
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL112
	.4byte	.LFE13
	.2byte	0x8
	.byte	0x73
	.sleb128 0
	.byte	0x11
	.sleb128 -65536
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL105
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL112
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL114
	.4byte	.LVL117
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL117
	.4byte	.LVL118
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL118
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
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL119
	.4byte	.LVL120
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL124
	.4byte	.LVL126
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x74
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB7
	.4byte	.LBE7
	.4byte	.LBB12
	.4byte	.LBE12
	.4byte	0
	.4byte	0
	.4byte	.LBB14
	.4byte	.LBE14
	.4byte	.LBB15
	.4byte	.LBE15
	.4byte	0
	.4byte	0
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF85:
	.string	"enabled"
.LASF109:
	.string	"s_partition_list"
.LASF87:
	.string	"last"
.LASF124:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF113:
	.string	"spi_flash_mmap"
.LASF13:
	.string	"_lock_t"
.LASF89:
	.string	"iterator"
.LASF118:
	.string	"_lock_acquire"
.LASF99:
	.string	"start_addr"
.LASF30:
	.string	"flags"
.LASF37:
	.string	"ESP_PARTITION_TYPE_DATA"
.LASF51:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_10"
.LASF52:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_11"
.LASF53:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_12"
.LASF54:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_13"
.LASF55:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_14"
.LASF56:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_15"
.LASF0:
	.string	"unsigned int"
.LASF78:
	.string	"next"
.LASF90:
	.string	"esp_partition_next"
.LASF9:
	.string	"__int32_t"
.LASF119:
	.string	"_lock_release"
.LASF66:
	.string	"ESP_PARTITION_SUBTYPE_ANY"
.LASF36:
	.string	"ESP_PARTITION_TYPE_APP"
.LASF77:
	.string	"partition_list_item_"
.LASF114:
	.string	"spi_flash_munmap"
.LASF100:
	.string	"esp_partition_mmap"
.LASF128:
	.string	"iterator_create"
.LASF121:
	.string	"spi_flash_write"
.LASF21:
	.string	"uint32_t"
.LASF130:
	.string	"esp_partition_iterator_release"
.LASF39:
	.string	"ESP_PARTITION_SUBTYPE_APP_FACTORY"
.LASF33:
	.string	"SPI_FLASH_MMAP_INST"
.LASF120:
	.string	"spi_flash_write_encrypted"
.LASF111:
	.string	"malloc"
.LASF12:
	.string	"long long unsigned int"
.LASF122:
	.string	"spi_flash_erase_range"
.LASF112:
	.string	"strncpy"
.LASF8:
	.string	"__uint16_t"
.LASF104:
	.string	"phys_addr"
.LASF43:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_2"
.LASF35:
	.string	"spi_flash_mmap_handle_t"
.LASF72:
	.string	"encrypted"
.LASF68:
	.string	"esp_partition_iterator_t"
.LASF58:
	.string	"ESP_PARTITION_SUBTYPE_APP_TEST"
.LASF74:
	.string	"esp_partition_t"
.LASF2:
	.string	"size_t"
.LASF40:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_MIN"
.LASF31:
	.string	"esp_partition_info_t"
.LASF23:
	.string	"offset"
.LASF60:
	.string	"ESP_PARTITION_SUBTYPE_DATA_PHY"
.LASF32:
	.string	"SPI_FLASH_MMAP_DATA"
.LASF73:
	.string	"_Bool"
.LASF34:
	.string	"spi_flash_mmap_memory_t"
.LASF94:
	.string	"esp_partition_verify"
.LASF115:
	.string	"free"
.LASF92:
	.string	"esp_partition_get"
.LASF91:
	.string	"esp_partition_find"
.LASF17:
	.string	"char"
.LASF3:
	.string	"ptrdiff_t"
.LASF127:
	.string	"esp_flash_encryption_enabled"
.LASF61:
	.string	"ESP_PARTITION_SUBTYPE_DATA_NVS"
.LASF18:
	.string	"uint8_t"
.LASF11:
	.string	"long long int"
.LASF93:
	.string	"esp_partition_find_first"
.LASF79:
	.string	"partition_list_item_t"
.LASF24:
	.string	"size"
.LASF88:
	.string	"item"
.LASF95:
	.string	"partition"
.LASF70:
	.string	"info"
.LASF117:
	.string	"__assert_func"
.LASF63:
	.string	"ESP_PARTITION_SUBTYPE_DATA_ESPHTTPD"
.LASF82:
	.string	"slh_first"
.LASF110:
	.string	"s_partition_list_lock"
.LASF26:
	.string	"magic"
.LASF19:
	.string	"uint16_t"
.LASF28:
	.string	"subtype"
.LASF81:
	.string	"partition_list_head_"
.LASF96:
	.string	"esp_partition_write"
.LASF69:
	.string	"next_item"
.LASF7:
	.string	"short int"
.LASF14:
	.string	"long int"
.LASF102:
	.string	"out_ptr"
.LASF59:
	.string	"ESP_PARTITION_SUBTYPE_DATA_OTA"
.LASF123:
	.string	"spi_flash_read"
.LASF98:
	.string	"esp_partition_erase_range"
.LASF5:
	.string	"__uint8_t"
.LASF105:
	.string	"region_offset"
.LASF41:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_0"
.LASF42:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_1"
.LASF125:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/spi_flash/partition.c"
.LASF44:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_3"
.LASF45:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_4"
.LASF46:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_5"
.LASF47:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_6"
.LASF48:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_7"
.LASF49:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_8"
.LASF50:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_9"
.LASF15:
	.string	"sizetype"
.LASF129:
	.string	"load_partitions"
.LASF16:
	.string	"long unsigned int"
.LASF103:
	.string	"out_handle"
.LASF71:
	.string	"address"
.LASF20:
	.string	"int32_t"
.LASF57:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_MAX"
.LASF101:
	.string	"memory"
.LASF27:
	.string	"type"
.LASF6:
	.string	"unsigned char"
.LASF10:
	.string	"__uint32_t"
.LASF22:
	.string	"esp_err_t"
.LASF107:
	.string	"esp_partition_read"
.LASF29:
	.string	"label"
.LASF126:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\spi_flash"
.LASF67:
	.string	"esp_partition_subtype_t"
.LASF38:
	.string	"esp_partition_type_t"
.LASF62:
	.string	"ESP_PARTITION_SUBTYPE_DATA_COREDUMP"
.LASF64:
	.string	"ESP_PARTITION_SUBTYPE_DATA_FAT"
.LASF83:
	.string	"flash_crypt_cnt"
.LASF4:
	.string	"signed char"
.LASF1:
	.string	"short unsigned int"
.LASF97:
	.string	"dst_offset"
.LASF86:
	.string	"handle"
.LASF131:
	.string	"memcpy"
.LASF84:
	.string	"__func__"
.LASF106:
	.string	"mmap_addr"
.LASF75:
	.string	"sle_next"
.LASF108:
	.string	"src_offset"
.LASF25:
	.string	"esp_partition_pos_t"
.LASF76:
	.string	"esp_partition_iterator_opaque_"
.LASF65:
	.string	"ESP_PARTITION_SUBTYPE_DATA_SPIFFS"
.LASF116:
	.string	"strcmp"
.LASF80:
	.string	"esp_partition_iterator_opaque_t"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
