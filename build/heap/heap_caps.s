	.file	"heap_caps.c"
	.text
.Ltext0:
	.section	.iram1,"ax",@progbits
	.literal_position
	.literal .LC0, registered_heaps
	.align	4
	.type	find_containing_heap, @function
find_containing_heap:
.LFB24:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/heap/heap_caps.c"
	.loc 1 233 0
.LVL0:
	entry	sp, 32
.LCFI0:
.LVL1:
	.loc 1 236 0
	l32r	a8, .LC0
	l32i.n	a8, a8, 0
.LVL2:
	j	.L2
.L5:
	.loc 1 237 0
	l32i.n	a9, a8, 28
	beqz.n	a9, .L3
	.loc 1 237 0 discriminator 1
	l32i.n	a9, a8, 12
	blt	a2, a9, .L3
	.loc 1 237 0 is_stmt 0 discriminator 2
	l32i.n	a9, a8, 16
	blt	a2, a9, .L6
.L3:
	.loc 1 236 0 is_stmt 1 discriminator 2
	l32i.n	a8, a8, 32
.LVL3:
.L2:
	.loc 1 236 0 is_stmt 0 discriminator 1
	bnez.n	a8, .L5
	.loc 1 241 0 is_stmt 1
	movi.n	a2, 0
.LVL4:
	retw.n
.LVL5:
.L6:
	.loc 1 238 0
	mov.n	a2, a8
.LVL6:
	.loc 1 242 0
	retw.n
.LFE24:
	.size	find_containing_heap, .-find_containing_heap
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC2:
	.string	"dstart >= SOC_DIRAM_DRAM_LOW"
	.align	4
.LC5:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/heap/heap_caps.c"
	.align	4
.LC8:
	.string	"dend <= SOC_DIRAM_DRAM_HIGH"
	.align	4
.LC10:
	.string	"(dstart & 3) == 0"
	.align	4
.LC12:
	.string	"(dend & 3) == 0"
	.section	.iram1
	.literal_position
	.literal .LC1, 1073610751
	.literal .LC3, .LC2
	.literal .LC4, __func__$4993
	.literal .LC6, .LC5
	.literal .LC7, 1073741820
	.literal .LC9, .LC8
	.literal .LC11, .LC10
	.literal .LC13, .LC12
	.literal .LC14, -2146828292
	.align	4
	.type	dram_alloc_to_iram_addr, @function
dram_alloc_to_iram_addr:
.LFB15:
	.loc 1 45 0
.LVL7:
	entry	sp, 32
.LCFI1:
.LVL8:
	.loc 1 47 0
	add.n	a3, a2, a3
.LVL9:
	addi	a3, a3, -4
.LVL10:
	.loc 1 48 0
	l32r	a9, .LC1
	bltu	a9, a2, .L8
	.loc 1 48 0 is_stmt 0 discriminator 1
	l32r	a13, .LC3
	l32r	a12, .LC4
	movi.n	a11, 0x30
	l32r	a10, .LC6
	call8	__assert_func
.LVL11:
.L8:
	.loc 1 49 0 is_stmt 1
	l32r	a8, .LC7
	bgeu	a8, a3, .L9
	.loc 1 49 0 is_stmt 0 discriminator 1
	l32r	a13, .LC9
	l32r	a12, .LC4
	movi.n	a11, 0x31
	l32r	a10, .LC6
	call8	__assert_func
.LVL12:
.L9:
	.loc 1 50 0 is_stmt 1
	extui	a8, a2, 0, 2
	beqz.n	a8, .L10
	.loc 1 50 0 is_stmt 0 discriminator 1
	l32r	a13, .LC11
	l32r	a12, .LC4
	movi.n	a11, 0x32
	l32r	a10, .LC6
	call8	__assert_func
.LVL13:
.L10:
	.loc 1 51 0 is_stmt 1
	extui	a8, a3, 0, 2
	beqz.n	a8, .L11
	.loc 1 51 0 is_stmt 0 discriminator 1
	l32r	a13, .LC13
	l32r	a12, .LC4
	movi.n	a11, 0x33
	l32r	a10, .LC6
	call8	__assert_func
.LVL14:
.L11:
	.loc 1 52 0 is_stmt 1
	l32r	a8, .LC14
	sub	a3, a8, a3
.LVL15:
	.loc 1 54 0
	s32i.n	a2, a3, 0
	.loc 1 56 0
	addi.n	a2, a3, 4
.LVL16:
	retw.n
.LFE15:
	.size	dram_alloc_to_iram_addr, .-dram_alloc_to_iram_addr
	.section	.text.heap_caps_match,"ax",@progbits
	.align	4
	.global	heap_caps_match
	.type	heap_caps_match, @function
heap_caps_match:
.LFB16:
	.loc 1 59 0
.LVL17:
	entry	sp, 32
.LCFI2:
	.loc 1 60 0
	l32i.n	a8, a2, 28
	.loc 1 60 0
	beqz.n	a8, .L17
.LVL18:
.LBB21:
.LBB22:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/heap/heap_private.h"
	.loc 2 54 0
	beqz.n	a8, .L18
	movi.n	a8, 0
	mov.n	a9, a8
	j	.L15
.LVL19:
.L16:
.LBB23:
	.loc 2 59 0
	addx4	a10, a8, a2
	l32i.n	a10, a10, 0
	or	a9, a9, a10
.LVL20:
	.loc 2 58 0
	addi.n	a8, a8, 1
.LVL21:
.L15:
	blti	a8, 3, .L16
	j	.L14
.LVL22:
.L18:
.LBE23:
	.loc 2 55 0
	movi.n	a9, 0
.L14:
.LBE22:
.LBE21:
	.loc 1 60 0
	and	a9, a3, a9
	bne	a3, a9, .L19
	movi.n	a2, 1
.LVL23:
	retw.n
.LVL24:
.L17:
	movi.n	a2, 0
.LVL25:
	retw.n
.LVL26:
.L19:
	movi.n	a2, 0
.LVL27:
	.loc 1 61 0
	retw.n
.LFE16:
	.size	heap_caps_match, .-heap_caps_match
	.section	.iram1
	.literal_position
	.literal .LC15, registered_heaps
	.literal .LC16, 1073610751
	.literal .LC17, 1073741819
	.align	4
	.global	heap_caps_malloc
	.type	heap_caps_malloc, @function
heap_caps_malloc:
.LFB17:
	.loc 1 67 0
.LVL28:
	entry	sp, 32
.LCFI3:
.LVL29:
	.loc 1 70 0
	extui	a6, a3, 0, 1
	beqz.n	a6, .L21
	.loc 1 75 0
	movi.n	a4, 0xc
	bany	a3, a4, .L32
	.loc 1 79 0
	addi.n	a2, a2, 3
.LVL30:
	movi.n	a4, -4
	and	a2, a2, a4
.LVL31:
.L21:
.LBB24:
	.loc 1 81 0
	movi.n	a5, 0
	j	.L23
.LVL32:
.L31:
.LBB25:
	.loc 1 84 0
	l32r	a4, .LC15
	l32i.n	a4, a4, 0
.LVL33:
	j	.L24
.L30:
	.loc 1 85 0
	l32i.n	a10, a4, 28
	beqz.n	a10, .L25
	.loc 1 88 0
	addx4	a7, a5, a4
	l32i.n	a7, a7, 0
	bnone	a3, a7, .L25
.LVL34:
.LBB26:
.LBB27:
	.loc 2 54 0
	beqz.n	a10, .L33
	movi.n	a8, 0
	mov.n	a9, a8
	j	.L27
.LVL35:
.L28:
.LBB28:
	.loc 2 59 0
	addx4	a7, a8, a4
	l32i.n	a7, a7, 0
	or	a9, a9, a7
.LVL36:
	.loc 2 58 0
	addi.n	a8, a8, 1
.LVL37:
.L27:
	blti	a8, 3, .L28
	j	.L26
.LVL38:
.L33:
.LBE28:
	.loc 2 55 0
	movi.n	a9, 0
.L26:
.LBE27:
.LBE26:
	.loc 1 91 0
	and	a9, a3, a9
	bne	a3, a9, .L25
	.loc 1 93 0
	beqz.n	a6, .L29
	.loc 1 93 0 is_stmt 0 discriminator 1
	l32i.n	a7, a4, 12
	l32r	a8, .LC16
	bge	a8, a7, .L29
	.loc 1 93 0 discriminator 2
	l32r	a8, .LC17
	blt	a8, a7, .L29
	.loc 1 97 0 is_stmt 1
	addi.n	a7, a2, 4
	mov.n	a11, a7
	call8	multi_heap_malloc
.LVL39:
	.loc 1 98 0
	beqz.n	a10, .L25
	.loc 1 99 0
	mov.n	a11, a7
	call8	dram_alloc_to_iram_addr
.LVL40:
	mov.n	a2, a10
.LVL41:
	retw.n
.LVL42:
.L29:
	.loc 1 103 0
	mov.n	a11, a2
	call8	multi_heap_malloc
.LVL43:
	.loc 1 104 0
	bnez.n	a10, .L34
.LVL44:
.L25:
	.loc 1 84 0 discriminator 2
	l32i.n	a4, a4, 32
.LVL45:
.L24:
	.loc 1 84 0 is_stmt 0 discriminator 1
	bnez.n	a4, .L30
.LBE25:
	.loc 1 81 0 is_stmt 1 discriminator 2
	addi.n	a5, a5, 1
.LVL46:
.L23:
	.loc 1 81 0 is_stmt 0 discriminator 1
	blti	a5, 3, .L31
.LBE24:
	.loc 1 113 0 is_stmt 1
	movi.n	a2, 0
.LVL47:
.LBB30:
	retw.n
.LVL48:
.L32:
.LBE30:
	.loc 1 76 0
	movi.n	a2, 0
.LVL49:
	retw.n
.LVL50:
.L34:
.LBB31:
.LBB29:
	.loc 1 105 0
	mov.n	a2, a10
.LVL51:
.LBE29:
.LBE31:
	.loc 1 114 0
	retw.n
.LFE17:
	.size	heap_caps_malloc, .-heap_caps_malloc
	.section	.text.heap_caps_malloc_extmem_enable,"ax",@progbits
	.literal_position
	.literal .LC18, malloc_alwaysinternal_limit
	.align	4
	.global	heap_caps_malloc_extmem_enable
	.type	heap_caps_malloc_extmem_enable, @function
heap_caps_malloc_extmem_enable:
.LFB18:
	.loc 1 122 0
.LVL52:
	entry	sp, 32
.LCFI4:
	.loc 1 123 0
	l32r	a8, .LC18
	s32i.n	a2, a8, 0
	retw.n
.LFE18:
	.size	heap_caps_malloc_extmem_enable, .-heap_caps_malloc_extmem_enable
	.section	.iram1
	.literal_position
	.literal .LC19, malloc_alwaysinternal_limit
	.literal .LC20, 6144
	.literal .LC21, 5120
	.literal .LC22, 4096
	.align	4
	.global	heap_caps_malloc_default
	.type	heap_caps_malloc_default, @function
heap_caps_malloc_default:
.LFB19:
	.loc 1 130 0
.LVL53:
	entry	sp, 32
.LCFI5:
	.loc 1 131 0
	l32r	a8, .LC19
	l32i.n	a8, a8, 0
	bnei	a8, -1, .L37
	.loc 1 132 0
	l32r	a11, .LC20
	mov.n	a10, a2
	call8	heap_caps_malloc
.LVL54:
	mov.n	a2, a10
.LVL55:
	retw.n
.LVL56:
.L37:
.LBB32:
	.loc 1 135 0
	bltu	a8, a2, .L39
	.loc 1 136 0
	l32r	a11, .LC20
	mov.n	a10, a2
	call8	heap_caps_malloc
.LVL57:
	j	.L40
.LVL58:
.L39:
	.loc 1 138 0
	l32r	a11, .LC21
	mov.n	a10, a2
	call8	heap_caps_malloc
.LVL59:
.L40:
	.loc 1 140 0
	bnez.n	a10, .L41
	.loc 1 142 0
	l32r	a11, .LC22
	mov.n	a10, a2
.LVL60:
	call8	heap_caps_malloc
.LVL61:
	mov.n	a2, a10
.LVL62:
	retw.n
.LVL63:
.L41:
	mov.n	a2, a10
.LVL64:
.LBE32:
	.loc 1 146 0
	retw.n
.LFE19:
	.size	heap_caps_malloc_default, .-heap_caps_malloc_default
	.align	4
	.global	heap_caps_malloc_prefer
	.type	heap_caps_malloc_prefer, @function
heap_caps_malloc_prefer:
.LFB21:
	.loc 1 175 0
.LVL65:
	entry	sp, 80
.LCFI6:
	.loc 1 177 0
	s32i.n	a4, sp, 24
	s32i.n	a5, sp, 28
	s32i.n	a6, sp, 32
	s32i.n	a7, sp, 36
	.loc 1 177 0
	addi	a4, sp, 16
	s32i.n	a4, sp, 4
	addi	a4, sp, 48
	s32i.n	a4, sp, 0
	movi.n	a4, 8
	s32i.n	a4, sp, 8
.LVL66:
	.loc 1 178 0
	movi.n	a10, 0
	.loc 1 179 0
	j	.L43
.LVL67:
.L48:
.LBB33:
	.loc 1 180 0
	l32i.n	a8, sp, 8
	addi.n	a3, a8, 4
	s32i.n	a3, sp, 8
	movi.n	a9, 0x18
	blt	a9, a3, .L44
	.loc 1 180 0 is_stmt 0 discriminator 2
	l32i.n	a3, sp, 4
	j	.L45
.L44:
	.loc 1 180 0 discriminator 1
	movi.n	a3, 0x18
	blt	a3, a8, .L46
	.loc 1 180 0 discriminator 5
	movi.n	a3, 0x24
	s32i.n	a3, sp, 8
.L46:
	.loc 1 180 0 discriminator 6
	l32i.n	a3, sp, 0
.L45:
	.loc 1 180 0 discriminator 7
	l32i.n	a8, sp, 8
	addi	a8, a8, -4
	add.n	a8, a3, a8
.LVL68:
	.loc 1 181 0 is_stmt 1 discriminator 7
	l32i.n	a11, a8, 0
	mov.n	a10, a2
.LVL69:
	call8	heap_caps_malloc
.LVL70:
.LBE33:
	.loc 1 179 0 discriminator 7
	mov.n	a3, a4
.LBB34:
	.loc 1 182 0 discriminator 7
	bnez.n	a10, .L47
.LVL71:
.L43:
.LBE34:
	.loc 1 179 0
	addi.n	a4, a3, -1
.LVL72:
	bnez.n	a3, .L48
.L47:
	.loc 1 188 0
	mov.n	a2, a10
.LVL73:
	retw.n
.LFE21:
	.size	heap_caps_malloc_prefer, .-heap_caps_malloc_prefer
	.section	.rodata.str1.4
	.align	4
.LC25:
	.string	"heap != NULL && \"free() target pointer is outside heap areas\""
	.section	.iram1
	.literal_position
	.literal .LC23, -1074397184
	.literal .LC24, 131068
	.literal .LC26, .LC25
	.literal .LC27, __func__$5073
	.literal .LC28, .LC5
	.align	4
	.global	heap_caps_free
	.type	heap_caps_free, @function
heap_caps_free:
.LFB25:
	.loc 1 245 0
.LVL74:
	entry	sp, 32
.LCFI7:
.LVL75:
	.loc 1 248 0
	beqz.n	a2, .L49
	.loc 1 252 0
	l32r	a8, .LC23
	add.n	a8, a2, a8
	l32r	a9, .LC24
	bltu	a9, a8, .L51
.LVL76:
.LBB35:
	.loc 1 257 0
	addi	a2, a2, -4
.LVL77:
	l32i.n	a2, a2, 0
.LVL78:
.L51:
.LBE35:
	.loc 1 260 0
	mov.n	a10, a2
	call8	find_containing_heap
.LVL79:
	.loc 1 261 0
	bnez.n	a10, .L52
	.loc 1 261 0 is_stmt 0 discriminator 1
	l32r	a13, .LC26
	l32r	a12, .LC27
	movi	a11, 0x105
	l32r	a10, .LC28
.LVL80:
	call8	__assert_func
.LVL81:
.L52:
	.loc 1 262 0 is_stmt 1
	mov.n	a11, a2
	l32i.n	a10, a10, 28
.LVL82:
	call8	multi_heap_free
.LVL83:
.L49:
	retw.n
.LFE25:
	.size	heap_caps_free, .-heap_caps_free
	.section	.rodata.str1.4
	.align	4
.LC29:
	.string	"heap != NULL && \"realloc() pointer is outside heap areas\""
	.align	4
.LC33:
	.string	"old_size > 0"
	.section	.iram1
	.literal_position
	.literal .LC30, .LC29
	.literal .LC31, __func__$5080
	.literal .LC32, .LC5
	.literal .LC34, .LC33
	.align	4
	.global	heap_caps_realloc
	.type	heap_caps_realloc, @function
heap_caps_realloc:
.LFB26:
	.loc 1 266 0
.LVL84:
	entry	sp, 32
.LCFI8:
	.loc 1 267 0
	bnez.n	a2, .L54
	.loc 1 268 0
	mov.n	a11, a4
	mov.n	a10, a3
	call8	heap_caps_malloc
.LVL85:
	mov.n	a2, a10
.LVL86:
	retw.n
.LVL87:
.L54:
	.loc 1 271 0
	bnez.n	a3, .L56
	.loc 1 272 0
	mov.n	a10, a2
	call8	heap_caps_free
.LVL88:
	.loc 1 273 0
	movi.n	a2, 0
.LVL89:
	retw.n
.LVL90:
.L56:
	.loc 1 276 0
	mov.n	a10, a2
	call8	find_containing_heap
.LVL91:
	mov.n	a5, a10
.LVL92:
	.loc 1 278 0
	bnez.n	a10, .L57
	.loc 1 278 0 is_stmt 0 discriminator 1
	l32r	a13, .LC30
	l32r	a12, .LC31
	movi	a11, 0x116
	l32r	a10, .LC32
	call8	__assert_func
.LVL93:
.L57:
.LBB36:
.LBB37:
	.loc 2 54 0 is_stmt 1
	l32i.n	a10, a10, 28
	beqz.n	a10, .L63
	movi.n	a8, 0
	mov.n	a9, a8
	j	.L59
.LVL94:
.L60:
.LBB38:
	.loc 2 59 0
	addx4	a11, a8, a5
	l32i.n	a11, a11, 0
	or	a9, a9, a11
.LVL95:
	.loc 2 58 0
	addi.n	a8, a8, 1
.LVL96:
.L59:
	blti	a8, 3, .L60
	j	.L58
.LVL97:
.L63:
.LBE38:
	.loc 2 55 0
	movi.n	a9, 0
.L58:
.LBE37:
.LBE36:
	.loc 1 282 0
	and	a9, a4, a9
.LVL98:
	.loc 1 284 0
	bne	a4, a9, .L61
.LBB39:
	.loc 1 287 0
	mov.n	a12, a3
	mov.n	a11, a2
	call8	multi_heap_realloc
.LVL99:
	.loc 1 288 0
	bnez.n	a10, .L64
.LVL100:
.L61:
.LBE39:
	.loc 1 295 0
	mov.n	a11, a4
	mov.n	a10, a3
	call8	heap_caps_malloc
.LVL101:
	mov.n	a4, a10
.LVL102:
	.loc 1 296 0
	beqz.n	a10, .L65
.LBB40:
	.loc 1 297 0
	mov.n	a11, a2
	l32i.n	a10, a5, 28
	call8	multi_heap_get_allocated_size
.LVL103:
	.loc 1 298 0
	bnez.n	a10, .L62
	.loc 1 298 0 is_stmt 0 discriminator 1
	l32r	a13, .LC34
	l32r	a12, .LC31
	movi	a11, 0x12a
	l32r	a10, .LC32
.LVL104:
	call8	__assert_func
.LVL105:
.L62:
	.loc 1 299 0 is_stmt 1
	minu	a12, a3, a10
	mov.n	a11, a2
	mov.n	a10, a4
.LVL106:
	call8	memcpy
.LVL107:
	.loc 1 300 0
	mov.n	a10, a2
	call8	heap_caps_free
.LVL108:
	.loc 1 301 0
	mov.n	a2, a4
.LVL109:
	retw.n
.LVL110:
.L64:
.LBE40:
.LBB41:
	.loc 1 289 0
	mov.n	a2, a10
.LVL111:
	retw.n
.LVL112:
.L65:
.LBE41:
	.loc 1 303 0
	movi.n	a2, 0
.LVL113:
	.loc 1 304 0
	retw.n
.LFE26:
	.size	heap_caps_realloc, .-heap_caps_realloc
	.literal_position
	.literal .LC35, malloc_alwaysinternal_limit
	.literal .LC36, 6144
	.literal .LC37, 5120
	.literal .LC38, 4096
	.align	4
	.global	heap_caps_realloc_default
	.type	heap_caps_realloc_default, @function
heap_caps_realloc_default:
.LFB20:
	.loc 1 153 0
.LVL114:
	entry	sp, 32
.LCFI9:
	.loc 1 154 0
	l32r	a8, .LC35
	l32i.n	a8, a8, 0
	bnei	a8, -1, .L67
	.loc 1 155 0
	l32r	a12, .LC36
	mov.n	a11, a3
	mov.n	a10, a2
	call8	heap_caps_realloc
.LVL115:
	mov.n	a2, a10
.LVL116:
	retw.n
.LVL117:
.L67:
.LBB42:
	.loc 1 158 0
	bltu	a8, a3, .L69
	.loc 1 159 0
	l32r	a12, .LC36
	mov.n	a11, a3
	mov.n	a10, a2
	call8	heap_caps_realloc
.LVL118:
	j	.L70
.LVL119:
.L69:
	.loc 1 161 0
	l32r	a12, .LC37
	mov.n	a11, a3
	mov.n	a10, a2
	call8	heap_caps_realloc
.LVL120:
.L70:
	.loc 1 163 0
	movi.n	a8, 1
	movi.n	a9, 0
	mov.n	a11, a9
	moveqz	a11, a8, a10
	.loc 1 163 0
	moveqz	a8, a9, a3
	.loc 1 163 0
	bnone	a8, a11, .L71
	.loc 1 165 0
	l32r	a12, .LC38
	mov.n	a11, a3
	mov.n	a10, a2
.LVL121:
	call8	heap_caps_realloc
.LVL122:
	mov.n	a2, a10
.LVL123:
	retw.n
.LVL124:
.L71:
	mov.n	a2, a10
.LVL125:
.LBE42:
	.loc 1 169 0
	retw.n
.LFE20:
	.size	heap_caps_realloc_default, .-heap_caps_realloc_default
	.align	4
	.global	heap_caps_realloc_prefer
	.type	heap_caps_realloc_prefer, @function
heap_caps_realloc_prefer:
.LFB22:
	.loc 1 194 0
.LVL126:
	entry	sp, 80
.LCFI10:
	.loc 1 196 0
	s32i.n	a5, sp, 28
	s32i.n	a6, sp, 32
	s32i.n	a7, sp, 36
	.loc 1 196 0
	addi	a5, sp, 16
	s32i.n	a5, sp, 4
	addi	a5, sp, 48
	s32i.n	a5, sp, 0
	movi.n	a5, 0xc
	s32i.n	a5, sp, 8
.LVL127:
	.loc 1 197 0
	movi.n	a10, 0
	.loc 1 198 0
	j	.L73
.LVL128:
.L78:
.LBB43:
	.loc 1 199 0
	l32i.n	a8, sp, 8
	addi.n	a4, a8, 4
	s32i.n	a4, sp, 8
	movi.n	a9, 0x18
	blt	a9, a4, .L74
	.loc 1 199 0 is_stmt 0 discriminator 2
	l32i.n	a4, sp, 4
	j	.L75
.L74:
	.loc 1 199 0 discriminator 1
	movi.n	a4, 0x18
	blt	a4, a8, .L76
	.loc 1 199 0 discriminator 5
	movi.n	a4, 0x24
	s32i.n	a4, sp, 8
.L76:
	.loc 1 199 0 discriminator 6
	l32i.n	a4, sp, 0
.L75:
	.loc 1 199 0 discriminator 7
	l32i.n	a8, sp, 8
	addi	a8, a8, -4
	add.n	a8, a4, a8
.LVL129:
	.loc 1 200 0 is_stmt 1 discriminator 7
	l32i.n	a12, a8, 0
	mov.n	a11, a3
	mov.n	a10, a2
.LVL130:
	call8	heap_caps_realloc
.LVL131:
	.loc 1 201 0 discriminator 7
	movi.n	a8, 1
	movi.n	a4, 0
	mov.n	a9, a4
	movnez	a9, a8, a10
	.loc 1 201 0 discriminator 7
	movnez	a8, a4, a3
	or	a8, a8, a9
.LBE43:
	.loc 1 198 0 discriminator 7
	mov.n	a4, a5
.LBB44:
	.loc 1 201 0 discriminator 7
	bnez.n	a8, .L77
.LVL132:
.L73:
.LBE44:
	.loc 1 198 0
	addi.n	a5, a4, -1
.LVL133:
	bnez.n	a4, .L78
.L77:
	.loc 1 207 0
	mov.n	a2, a10
.LVL134:
	retw.n
.LFE22:
	.size	heap_caps_realloc_prefer, .-heap_caps_realloc_prefer
	.align	4
	.global	heap_caps_calloc
	.type	heap_caps_calloc, @function
heap_caps_calloc:
.LFB27:
	.loc 1 307 0
.LVL135:
	entry	sp, 32
.LCFI11:
	.loc 1 309 0
	mull	a3, a2, a3
.LVL136:
	mov.n	a11, a4
	mov.n	a10, a3
	call8	heap_caps_malloc
.LVL137:
	mov.n	a2, a10
.LVL138:
	.loc 1 310 0
	beqz.n	a10, .L80
	.loc 1 311 0
	mov.n	a12, a3
	movi.n	a11, 0
	call8	memset
.LVL139:
.L80:
	.loc 1 314 0
	retw.n
.LFE27:
	.size	heap_caps_calloc, .-heap_caps_calloc
	.align	4
	.global	heap_caps_calloc_prefer
	.type	heap_caps_calloc_prefer, @function
heap_caps_calloc_prefer:
.LFB23:
	.loc 1 213 0
.LVL140:
	entry	sp, 80
.LCFI12:
	.loc 1 215 0
	s32i.n	a5, sp, 28
	s32i.n	a6, sp, 32
	s32i.n	a7, sp, 36
	.loc 1 215 0
	addi	a5, sp, 16
	s32i.n	a5, sp, 4
	addi	a5, sp, 48
	s32i.n	a5, sp, 0
	movi.n	a5, 0xc
	s32i.n	a5, sp, 8
.LVL141:
	.loc 1 216 0
	movi.n	a10, 0
	.loc 1 217 0
	j	.L82
.LVL142:
.L87:
.LBB45:
	.loc 1 218 0
	l32i.n	a8, sp, 8
	addi.n	a4, a8, 4
	s32i.n	a4, sp, 8
	movi.n	a9, 0x18
	blt	a9, a4, .L83
	.loc 1 218 0 is_stmt 0 discriminator 2
	l32i.n	a4, sp, 4
	j	.L84
.L83:
	.loc 1 218 0 discriminator 1
	movi.n	a4, 0x18
	blt	a4, a8, .L85
	.loc 1 218 0 discriminator 5
	movi.n	a4, 0x24
	s32i.n	a4, sp, 8
.L85:
	.loc 1 218 0 discriminator 6
	l32i.n	a4, sp, 0
.L84:
	.loc 1 218 0 discriminator 7
	l32i.n	a8, sp, 8
	addi	a8, a8, -4
	add.n	a8, a4, a8
.LVL143:
	.loc 1 219 0 is_stmt 1 discriminator 7
	l32i.n	a12, a8, 0
	mov.n	a11, a3
	mov.n	a10, a2
.LVL144:
	call8	heap_caps_calloc
.LVL145:
.LBE45:
	.loc 1 217 0 discriminator 7
	mov.n	a4, a5
.LBB46:
	.loc 1 220 0 discriminator 7
	bnez.n	a10, .L86
.LVL146:
.L82:
.LBE46:
	.loc 1 217 0
	addi.n	a5, a4, -1
.LVL147:
	bnez.n	a4, .L87
.L86:
	.loc 1 224 0
	mov.n	a2, a10
.LVL148:
	retw.n
.LFE23:
	.size	heap_caps_calloc_prefer, .-heap_caps_calloc_prefer
	.section	.text.heap_caps_get_free_size,"ax",@progbits
	.literal_position
	.literal .LC39, registered_heaps
	.align	4
	.global	heap_caps_get_free_size
	.type	heap_caps_get_free_size, @function
heap_caps_get_free_size:
.LFB28:
	.loc 1 317 0
.LVL149:
	entry	sp, 32
.LCFI13:
.LVL150:
	.loc 1 320 0
	l32r	a3, .LC39
	l32i.n	a3, a3, 0
.LVL151:
	.loc 1 318 0
	movi.n	a4, 0
	.loc 1 320 0
	j	.L89
.LVL152:
.L91:
	.loc 1 321 0
	mov.n	a11, a2
	mov.n	a10, a3
	call8	heap_caps_match
.LVL153:
	beqz.n	a10, .L90
	.loc 1 322 0
	l32i.n	a10, a3, 28
	call8	multi_heap_free_size
.LVL154:
	add.n	a4, a4, a10
.LVL155:
.L90:
	.loc 1 320 0 discriminator 2
	l32i.n	a3, a3, 32
.LVL156:
.L89:
	.loc 1 320 0 is_stmt 0 discriminator 1
	bnez.n	a3, .L91
	.loc 1 326 0 is_stmt 1
	mov.n	a2, a4
.LVL157:
	retw.n
.LFE28:
	.size	heap_caps_get_free_size, .-heap_caps_get_free_size
	.section	.text.heap_caps_get_minimum_free_size,"ax",@progbits
	.literal_position
	.literal .LC40, registered_heaps
	.align	4
	.global	heap_caps_get_minimum_free_size
	.type	heap_caps_get_minimum_free_size, @function
heap_caps_get_minimum_free_size:
.LFB29:
	.loc 1 329 0
.LVL158:
	entry	sp, 32
.LCFI14:
.LVL159:
	.loc 1 332 0
	l32r	a3, .LC40
	l32i.n	a3, a3, 0
.LVL160:
	.loc 1 330 0
	movi.n	a4, 0
	.loc 1 332 0
	j	.L93
.LVL161:
.L95:
	.loc 1 333 0
	mov.n	a11, a2
	mov.n	a10, a3
	call8	heap_caps_match
.LVL162:
	beqz.n	a10, .L94
	.loc 1 334 0
	l32i.n	a10, a3, 28
	call8	multi_heap_minimum_free_size
.LVL163:
	add.n	a4, a4, a10
.LVL164:
.L94:
	.loc 1 332 0 discriminator 2
	l32i.n	a3, a3, 32
.LVL165:
.L93:
	.loc 1 332 0 is_stmt 0 discriminator 1
	bnez.n	a3, .L95
	.loc 1 338 0 is_stmt 1
	mov.n	a2, a4
.LVL166:
	retw.n
.LFE29:
	.size	heap_caps_get_minimum_free_size, .-heap_caps_get_minimum_free_size
	.section	.text.heap_caps_get_info,"ax",@progbits
	.literal_position
	.literal .LC41, registered_heaps
	.align	4
	.global	heap_caps_get_info
	.type	heap_caps_get_info, @function
heap_caps_get_info:
.LFB31:
	.loc 1 348 0
.LVL167:
	entry	sp, 64
.LCFI15:
	.loc 1 349 0
	movi.n	a12, 0x1c
	movi.n	a11, 0
	mov.n	a10, a2
	call8	memset
.LVL168:
	.loc 1 352 0
	l32r	a4, .LC41
	l32i.n	a4, a4, 0
.LVL169:
	j	.L97
.L99:
	.loc 1 353 0
	mov.n	a11, a3
	mov.n	a10, a4
	call8	heap_caps_match
.LVL170:
	beqz.n	a10, .L98
.LBB47:
	.loc 1 355 0
	mov.n	a11, sp
	l32i.n	a10, a4, 28
	call8	multi_heap_get_info
.LVL171:
	.loc 1 357 0
	l32i.n	a9, a2, 0
	l32i.n	a8, sp, 0
	add.n	a8, a9, a8
	s32i.n	a8, a2, 0
	.loc 1 358 0
	l32i.n	a9, a2, 4
	l32i.n	a8, sp, 4
	add.n	a8, a9, a8
	s32i.n	a8, a2, 4
	.loc 1 359 0
	l32i.n	a8, a2, 8
	l32i.n	a9, sp, 8
	maxu	a8, a9, a8
	s32i.n	a8, a2, 8
	.loc 1 361 0
	l32i.n	a9, a2, 12
	l32i.n	a8, sp, 12
	add.n	a8, a9, a8
	s32i.n	a8, a2, 12
	.loc 1 362 0
	l32i.n	a9, a2, 16
	l32i.n	a8, sp, 16
	add.n	a8, a9, a8
	s32i.n	a8, a2, 16
	.loc 1 363 0
	l32i.n	a9, a2, 20
	l32i.n	a8, sp, 20
	add.n	a8, a9, a8
	s32i.n	a8, a2, 20
	.loc 1 364 0
	l32i.n	a9, a2, 24
	l32i.n	a8, sp, 24
	add.n	a8, a9, a8
	s32i.n	a8, a2, 24
.L98:
.LBE47:
	.loc 1 352 0 discriminator 2
	l32i.n	a4, a4, 32
.LVL172:
.L97:
	.loc 1 352 0 is_stmt 0 discriminator 1
	bnez.n	a4, .L99
	.loc 1 367 0 is_stmt 1
	retw.n
.LFE31:
	.size	heap_caps_get_info, .-heap_caps_get_info
	.section	.text.heap_caps_get_largest_free_block,"ax",@progbits
	.align	4
	.global	heap_caps_get_largest_free_block
	.type	heap_caps_get_largest_free_block, @function
heap_caps_get_largest_free_block:
.LFB30:
	.loc 1 341 0
.LVL173:
	entry	sp, 64
.LCFI16:
	.loc 1 343 0
	mov.n	a11, a2
	mov.n	a10, sp
	call8	heap_caps_get_info
.LVL174:
	.loc 1 345 0
	l32i.n	a2, sp, 8
.LVL175:
	retw.n
.LFE30:
	.size	heap_caps_get_largest_free_block, .-heap_caps_get_largest_free_block
	.section	.rodata.str1.4
	.align	4
.LC42:
	.string	"Heap summary for capabilities 0x%08X:\n"
	.align	4
.LC45:
	.string	"  At 0x%08x len %d free %d allocated %d min_free %d\n"
	.align	4
.LC47:
	.string	"    largest_free_block %d alloc_blocks %d free_blocks %d total_blocks %d\n"
	.align	4
.LC49:
	.string	"  Totals:"
	.align	4
.LC51:
	.string	"    free %d allocated %d min_free %d largest_free_block %d\n"
	.section	.text.heap_caps_print_heap_info,"ax",@progbits
	.literal_position
	.literal .LC43, .LC42
	.literal .LC44, registered_heaps
	.literal .LC46, .LC45
	.literal .LC48, .LC47
	.literal .LC50, .LC49
	.literal .LC52, .LC51
	.align	4
	.global	heap_caps_print_heap_info
	.type	heap_caps_print_heap_info, @function
heap_caps_print_heap_info:
.LFB32:
	.loc 1 370 0
.LVL176:
	entry	sp, 64
.LCFI17:
	.loc 1 372 0
	mov.n	a11, a2
	l32r	a10, .LC43
	call8	printf
.LVL177:
	.loc 1 374 0
	l32r	a3, .LC44
	l32i.n	a3, a3, 0
.LVL178:
	j	.L102
.L104:
	.loc 1 375 0
	mov.n	a11, a2
	mov.n	a10, a3
	call8	heap_caps_match
.LVL179:
	beqz.n	a10, .L103
	.loc 1 376 0
	mov.n	a11, sp
	l32i.n	a10, a3, 28
	call8	multi_heap_get_info
.LVL180:
	.loc 1 379 0
	l32i.n	a12, a3, 16
	l32i.n	a11, a3, 12
	.loc 1 378 0
	l32i.n	a15, sp, 12
	l32i.n	a14, sp, 4
	l32i.n	a13, sp, 0
	sub	a12, a12, a11
	l32r	a10, .LC46
	call8	printf
.LVL181:
	.loc 1 380 0
	l32i.n	a14, sp, 24
	l32i.n	a13, sp, 20
	l32i.n	a12, sp, 16
	l32i.n	a11, sp, 8
	l32r	a10, .LC48
	call8	printf
.LVL182:
.L103:
	.loc 1 374 0 discriminator 2
	l32i.n	a3, a3, 32
.LVL183:
.L102:
	.loc 1 374 0 is_stmt 0 discriminator 1
	bnez.n	a3, .L104
	.loc 1 385 0 is_stmt 1
	l32r	a10, .LC50
	call8	puts
.LVL184:
	.loc 1 386 0
	mov.n	a11, a2
	mov.n	a10, sp
	call8	heap_caps_get_info
.LVL185:
	.loc 1 388 0
	l32i.n	a14, sp, 8
	l32i.n	a13, sp, 12
	l32i.n	a12, sp, 4
	l32i.n	a11, sp, 0
	l32r	a10, .LC52
	call8	printf
.LVL186:
	retw.n
.LFE32:
	.size	heap_caps_print_heap_info, .-heap_caps_print_heap_info
	.section	.text.heap_caps_check_integrity,"ax",@progbits
	.literal_position
	.literal .LC53, -2147483648
	.literal .LC54, registered_heaps
	.align	4
	.global	heap_caps_check_integrity
	.type	heap_caps_check_integrity, @function
heap_caps_check_integrity:
.LFB33:
	.loc 1 392 0
.LVL187:
	entry	sp, 32
.LCFI18:
	mov.n	a5, a2
	extui	a3, a3, 0, 8
	.loc 1 393 0
	l32r	a6, .LC53
	and	a6, a2, a6
.LVL188:
	.loc 1 397 0
	l32r	a2, .LC54
.LVL189:
	l32i.n	a4, a2, 0
.LVL190:
	.loc 1 394 0
	movi.n	a2, 1
	.loc 1 397 0
	j	.L106
.LVL191:
.L113:
	.loc 1 398 0
	l32i.n	a10, a4, 28
	beqz.n	a10, .L107
	.loc 1 399 0
	bnez.n	a6, .L108
.LVL192:
.LBB48:
.LBB49:
	.loc 2 54 0
	beqz.n	a10, .L114
	movi.n	a8, 0
	mov.n	a9, a8
	j	.L110
.LVL193:
.L111:
.LBB50:
	.loc 2 59 0
	addx4	a11, a8, a4
	l32i.n	a11, a11, 0
	or	a9, a9, a11
.LVL194:
	.loc 2 58 0
	addi.n	a8, a8, 1
.LVL195:
.L110:
	blti	a8, 3, .L111
	j	.L109
.LVL196:
.L114:
.LBE50:
	.loc 2 55 0
	mov.n	a9, a6
.L109:
.LBE49:
.LBE48:
	.loc 1 399 0
	and	a9, a5, a9
	bne	a5, a9, .L107
.LVL197:
.L108:
	.loc 1 400 0
	mov.n	a11, a3
	call8	multi_heap_check
.LVL198:
	beqz.n	a10, .L115
	.loc 1 400 0 is_stmt 0 discriminator 1
	bnez.n	a2, .L116
	j	.L107
.L115:
	.loc 1 400 0
	movi.n	a2, 0
.LVL199:
	j	.L107
.LVL200:
.L116:
	movi.n	a2, 1
.LVL201:
.L107:
	.loc 1 397 0 is_stmt 1 discriminator 2
	l32i.n	a4, a4, 32
.LVL202:
.L106:
	.loc 1 397 0 is_stmt 0 discriminator 1
	bnez.n	a4, .L113
	.loc 1 405 0 is_stmt 1
	retw.n
.LFE33:
	.size	heap_caps_check_integrity, .-heap_caps_check_integrity
	.section	.text.heap_caps_check_integrity_all,"ax",@progbits
	.literal_position
	.literal .LC55, -2147483648
	.align	4
	.global	heap_caps_check_integrity_all
	.type	heap_caps_check_integrity_all, @function
heap_caps_check_integrity_all:
.LFB34:
	.loc 1 408 0
.LVL203:
	entry	sp, 32
.LCFI19:
	.loc 1 409 0
	extui	a11, a2, 0, 8
	l32r	a10, .LC55
	call8	heap_caps_check_integrity
.LVL204:
	.loc 1 410 0
	mov.n	a2, a10
.LVL205:
	retw.n
.LFE34:
	.size	heap_caps_check_integrity_all, .-heap_caps_check_integrity_all
	.section	.text.heap_caps_check_integrity_addr,"ax",@progbits
	.align	4
	.global	heap_caps_check_integrity_addr
	.type	heap_caps_check_integrity_addr, @function
heap_caps_check_integrity_addr:
.LFB35:
	.loc 1 413 0
.LVL206:
	entry	sp, 32
.LCFI20:
	extui	a3, a3, 0, 8
	.loc 1 414 0
	mov.n	a10, a2
	call8	find_containing_heap
.LVL207:
	.loc 1 415 0
	beqz.n	a10, .L120
	.loc 1 418 0
	mov.n	a11, a3
	l32i.n	a10, a10, 28
.LVL208:
	call8	multi_heap_check
.LVL209:
	mov.n	a2, a10
.LVL210:
	retw.n
.LVL211:
.L120:
	.loc 1 416 0
	movi.n	a2, 0
.LVL212:
	.loc 1 419 0
	retw.n
.LFE35:
	.size	heap_caps_check_integrity_addr, .-heap_caps_check_integrity_addr
	.section	.text.heap_caps_dump,"ax",@progbits
	.literal_position
	.literal .LC56, -2147483648
	.literal .LC57, registered_heaps
	.align	4
	.global	heap_caps_dump
	.type	heap_caps_dump, @function
heap_caps_dump:
.LFB36:
	.loc 1 422 0
.LVL213:
	entry	sp, 32
.LCFI21:
	.loc 1 423 0
	l32r	a4, .LC56
	and	a4, a2, a4
.LVL214:
	.loc 1 425 0
	l32r	a3, .LC57
	l32i.n	a3, a3, 0
.LVL215:
	j	.L122
.L128:
	.loc 1 426 0
	l32i.n	a10, a3, 28
	beqz.n	a10, .L123
	.loc 1 427 0
	bnez.n	a4, .L124
.LVL216:
.LBB51:
.LBB52:
	.loc 2 54 0
	beqz.n	a10, .L129
	movi.n	a8, 0
	mov.n	a9, a8
	j	.L126
.LVL217:
.L127:
.LBB53:
	.loc 2 59 0
	addx4	a11, a8, a3
	l32i.n	a11, a11, 0
	or	a9, a9, a11
.LVL218:
	.loc 2 58 0
	addi.n	a8, a8, 1
.LVL219:
.L126:
	blti	a8, 3, .L127
	j	.L125
.LVL220:
.L129:
.LBE53:
	.loc 2 55 0
	mov.n	a9, a4
.L125:
.LBE52:
.LBE51:
	.loc 1 427 0
	and	a9, a2, a9
	bne	a2, a9, .L123
.LVL221:
.L124:
	.loc 1 428 0
	call8	multi_heap_dump
.LVL222:
.L123:
	.loc 1 425 0 discriminator 2
	l32i.n	a3, a3, 32
.LVL223:
.L122:
	.loc 1 425 0 is_stmt 0 discriminator 1
	bnez.n	a3, .L128
	.loc 1 431 0 is_stmt 1
	retw.n
.LFE36:
	.size	heap_caps_dump, .-heap_caps_dump
	.section	.text.heap_caps_dump_all,"ax",@progbits
	.literal_position
	.literal .LC58, -2147483648
	.align	4
	.global	heap_caps_dump_all
	.type	heap_caps_dump_all, @function
heap_caps_dump_all:
.LFB37:
	.loc 1 434 0
	entry	sp, 32
.LCFI22:
	.loc 1 435 0
	l32r	a10, .LC58
	call8	heap_caps_dump
.LVL224:
	retw.n
.LFE37:
	.size	heap_caps_dump_all, .-heap_caps_dump_all
	.section	.rodata.__func__$5080,"a",@progbits
	.align	4
	.type	__func__$5080, @object
	.size	__func__$5080, 18
__func__$5080:
	.string	"heap_caps_realloc"
	.section	.rodata.__func__$5073,"a",@progbits
	.align	4
	.type	__func__$5073, @object
	.size	__func__$5073, 15
__func__$5073:
	.string	"heap_caps_free"
	.section	.rodata.__func__$4993,"a",@progbits
	.align	4
	.type	__func__$4993, @object
	.size	__func__$4993, 24
__func__$4993:
	.string	"dram_alloc_to_iram_addr"
	.section	.data.malloc_alwaysinternal_limit,"aw",@progbits
	.align	4
	.type	malloc_alwaysinternal_limit, @object
	.size	malloc_alwaysinternal_limit, 4
malloc_alwaysinternal_limit:
	.word	-1
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
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI1-.LFB15
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI2-.LFB16
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI3-.LFB17
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI4-.LFB18
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI5-.LFB19
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
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI7-.LFB25
	.byte	0xe
	.uleb128 0x20
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
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI9-.LFB20
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI10-.LFB22
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI11-.LFB27
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI12-.LFB23
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI13-.LFB28
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI14-.LFB29
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI15-.LFB31
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI16-.LFB30
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI17-.LFB32
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI18-.LFB33
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE36:
.LSFDE38:
	.4byte	.LEFDE38-.LASFDE38
.LASFDE38:
	.4byte	.Lframe0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI19-.LFB34
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE38:
.LSFDE40:
	.4byte	.LEFDE40-.LASFDE40
.LASFDE40:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x4
	.4byte	.LCFI20-.LFB35
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE40:
.LSFDE42:
	.4byte	.LEFDE42-.LASFDE42
.LASFDE42:
	.4byte	.Lframe0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x4
	.4byte	.LCFI21-.LFB36
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE42:
.LSFDE44:
	.4byte	.LEFDE44-.LASFDE44
.LASFDE44:
	.4byte	.Lframe0
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.byte	0x4
	.4byte	.LCFI22-.LFB37
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE44:
	.text
.Letext0:
	.file 3 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 5 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stdarg.h"
	.file 6 "<built-in>"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/heap/include/multi_heap.h"
	.file 9 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/portmacro.h"
	.file 10 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/assert.h"
	.file 11 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x11dd
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF101
	.byte	0xc
	.4byte	.LASF102
	.4byte	.LASF103
	.4byte	.Ldebug_ranges0+0x98
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF5
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
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x4
	.byte	0x1a
	.4byte	0x37
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x4
	.byte	0x31
	.4byte	0x25
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x5
	.byte	0x28
	.4byte	0xa7
	.uleb128 0x6
	.4byte	.LASF35
	.byte	0xc
	.byte	0x6
	.byte	0
	.4byte	0xd8
	.uleb128 0x7
	.4byte	.LASF15
	.byte	0x6
	.byte	0
	.4byte	0x8c
	.byte	0
	.uleb128 0x7
	.4byte	.LASF16
	.byte	0x6
	.byte	0
	.4byte	0x8c
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF17
	.byte	0x6
	.byte	0
	.4byte	0x25
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x7
	.byte	0x2d
	.4byte	0x5a
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x7
	.byte	0xa9
	.4byte	0x73
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x8
	.byte	0x1e
	.4byte	0xf9
	.uleb128 0x8
	.byte	0x4
	.4byte	0xff
	.uleb128 0x9
	.4byte	.LASF104
	.uleb128 0xa
	.byte	0x1c
	.byte	0x8
	.byte	0x96
	.4byte	0x161
	.uleb128 0x7
	.4byte	.LASF21
	.byte	0x8
	.byte	0x97
	.4byte	0x2c
	.byte	0
	.uleb128 0x7
	.4byte	.LASF22
	.byte	0x8
	.byte	0x98
	.4byte	0x2c
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF23
	.byte	0x8
	.byte	0x99
	.4byte	0x2c
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF24
	.byte	0x8
	.byte	0x9a
	.4byte	0x2c
	.byte	0xc
	.uleb128 0x7
	.4byte	.LASF25
	.byte	0x8
	.byte	0x9b
	.4byte	0x2c
	.byte	0x10
	.uleb128 0x7
	.4byte	.LASF26
	.byte	0x8
	.byte	0x9c
	.4byte	0x2c
	.byte	0x14
	.uleb128 0x7
	.4byte	.LASF27
	.byte	0x8
	.byte	0x9d
	.4byte	0x2c
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x8
	.byte	0x9e
	.4byte	0x104
	.uleb128 0x3
	.4byte	.LASF29
	.byte	0x5
	.byte	0x62
	.4byte	0x9c
	.uleb128 0xb
	.4byte	0xd8
	.4byte	0x187
	.uleb128 0xc
	.4byte	0x85
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.4byte	.LASF30
	.uleb128 0xa
	.byte	0x8
	.byte	0x9
	.byte	0x82
	.4byte	0x1af
	.uleb128 0x7
	.4byte	.LASF31
	.byte	0x9
	.byte	0x8a
	.4byte	0xd8
	.byte	0
	.uleb128 0x7
	.4byte	.LASF32
	.byte	0x9
	.byte	0x8f
	.4byte	0xd8
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF33
	.byte	0x9
	.byte	0x94
	.4byte	0x18e
	.uleb128 0xa
	.byte	0x4
	.byte	0x2
	.byte	0x26
	.4byte	0x1cf
	.uleb128 0x7
	.4byte	.LASF34
	.byte	0x2
	.byte	0x26
	.4byte	0x224
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF36
	.byte	0x24
	.byte	0x2
	.byte	0x20
	.4byte	0x224
	.uleb128 0x7
	.4byte	.LASF37
	.byte	0x2
	.byte	0x21
	.4byte	0x177
	.byte	0
	.uleb128 0x7
	.4byte	.LASF38
	.byte	0x2
	.byte	0x22
	.4byte	0xe3
	.byte	0xc
	.uleb128 0xd
	.string	"end"
	.byte	0x2
	.byte	0x23
	.4byte	0xe3
	.byte	0x10
	.uleb128 0x7
	.4byte	.LASF39
	.byte	0x2
	.byte	0x24
	.4byte	0x1af
	.byte	0x14
	.uleb128 0x7
	.4byte	.LASF40
	.byte	0x2
	.byte	0x25
	.4byte	0xee
	.byte	0x1c
	.uleb128 0x7
	.4byte	.LASF41
	.byte	0x2
	.byte	0x26
	.4byte	0x1ba
	.byte	0x20
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x1cf
	.uleb128 0x3
	.4byte	.LASF42
	.byte	0x2
	.byte	0x27
	.4byte	0x1cf
	.uleb128 0x6
	.4byte	.LASF43
	.byte	0x4
	.byte	0x2
	.byte	0x2f
	.4byte	0x24e
	.uleb128 0x7
	.4byte	.LASF44
	.byte	0x2
	.byte	0x2f
	.4byte	0x224
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF105
	.byte	0x2
	.byte	0x34
	.4byte	0xd8
	.byte	0x3
	.4byte	0x282
	.uleb128 0xf
	.4byte	.LASF40
	.byte	0x2
	.byte	0x34
	.4byte	0x282
	.uleb128 0x10
	.4byte	.LASF45
	.byte	0x2
	.byte	0x39
	.4byte	0xd8
	.uleb128 0x11
	.uleb128 0x10
	.4byte	.LASF46
	.byte	0x2
	.byte	0x3a
	.4byte	0x25
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x288
	.uleb128 0x12
	.4byte	0x22a
	.uleb128 0x13
	.4byte	.LASF47
	.byte	0x1
	.byte	0xe8
	.4byte	0x2d0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2d0
	.uleb128 0x14
	.string	"ptr"
	.byte	0x1
	.byte	0xe8
	.4byte	0x8c
	.4byte	.LLST0
	.uleb128 0x15
	.string	"p"
	.byte	0x1
	.byte	0xea
	.4byte	0xe3
	.4byte	.LLST1
	.uleb128 0x16
	.4byte	.LASF40
	.byte	0x1
	.byte	0xeb
	.4byte	0x2d0
	.uleb128 0x1
	.byte	0x58
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x22a
	.uleb128 0x13
	.4byte	.LASF48
	.byte	0x1
	.byte	0x2c
	.4byte	0x8c
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x40d
	.uleb128 0x17
	.4byte	.LASF49
	.byte	0x1
	.byte	0x2c
	.4byte	0x8c
	.4byte	.LLST2
	.uleb128 0x14
	.string	"len"
	.byte	0x1
	.byte	0x2c
	.4byte	0x2c
	.4byte	.LLST3
	.uleb128 0x18
	.4byte	.LASF50
	.byte	0x1
	.byte	0x2e
	.4byte	0xd8
	.4byte	.LLST4
	.uleb128 0x18
	.4byte	.LASF51
	.byte	0x1
	.byte	0x2f
	.4byte	0xd8
	.4byte	.LLST5
	.uleb128 0x19
	.4byte	.LASF52
	.4byte	0x41d
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$4993
	.uleb128 0x16
	.4byte	.LASF53
	.byte	0x1
	.byte	0x34
	.4byte	0xd8
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x16
	.4byte	.LASF54
	.byte	0x1
	.byte	0x35
	.4byte	0x422
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1a
	.4byte	.LVL11
	.4byte	0x1146
	.4byte	0x383
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x30
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$4993
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL12
	.4byte	0x1146
	.4byte	0x3b2
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x31
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$4993
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL13
	.4byte	0x1146
	.4byte	0x3e1
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x32
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$4993
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL14
	.4byte	0x1146
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x33
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$4993
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC12
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	0x95
	.4byte	0x41d
	.uleb128 0xc
	.4byte	0x85
	.byte	0x17
	.byte	0
	.uleb128 0x12
	.4byte	0x40d
	.uleb128 0x8
	.byte	0x4
	.4byte	0xd8
	.uleb128 0x1d
	.4byte	.LASF55
	.byte	0x1
	.byte	0x3a
	.4byte	0x187
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x49d
	.uleb128 0x17
	.4byte	.LASF40
	.byte	0x1
	.byte	0x3a
	.4byte	0x282
	.4byte	.LLST6
	.uleb128 0x1e
	.4byte	.LASF37
	.byte	0x1
	.byte	0x3a
	.4byte	0xd8
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1f
	.4byte	0x24e
	.4byte	.LBB21
	.4byte	.LBE21-.LBB21
	.byte	0x1
	.byte	0x3c
	.uleb128 0x20
	.4byte	0x25e
	.4byte	.LLST7
	.uleb128 0x21
	.4byte	.LBB22
	.4byte	.LBE22-.LBB22
	.uleb128 0x22
	.4byte	0x269
	.4byte	.LLST8
	.uleb128 0x21
	.4byte	.LBB23
	.4byte	.LBE23-.LBB23
	.uleb128 0x22
	.4byte	0x275
	.4byte	.LLST9
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF56
	.byte	0x1
	.byte	0x42
	.4byte	0x8c
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x587
	.uleb128 0x17
	.4byte	.LASF57
	.byte	0x1
	.byte	0x42
	.4byte	0x2c
	.4byte	.LLST10
	.uleb128 0x1e
	.4byte	.LASF37
	.byte	0x1
	.byte	0x42
	.4byte	0xd8
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x15
	.string	"ret"
	.byte	0x1
	.byte	0x44
	.4byte	0x8c
	.4byte	.LLST11
	.uleb128 0x23
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x18
	.4byte	.LASF46
	.byte	0x1
	.byte	0x51
	.4byte	0x25
	.4byte	.LLST12
	.uleb128 0x23
	.4byte	.Ldebug_ranges0+0x20
	.uleb128 0x18
	.4byte	.LASF40
	.byte	0x1
	.byte	0x53
	.4byte	0x2d0
	.4byte	.LLST13
	.uleb128 0x24
	.4byte	0x24e
	.4byte	.LBB26
	.4byte	.LBE26-.LBB26
	.byte	0x1
	.byte	0x5b
	.4byte	0x54c
	.uleb128 0x20
	.4byte	0x25e
	.4byte	.LLST14
	.uleb128 0x21
	.4byte	.LBB27
	.4byte	.LBE27-.LBB27
	.uleb128 0x22
	.4byte	0x269
	.4byte	.LLST15
	.uleb128 0x21
	.4byte	.LBB28
	.4byte	.LBE28-.LBB28
	.uleb128 0x22
	.4byte	0x275
	.4byte	.LLST16
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL39
	.4byte	0x1151
	.4byte	0x560
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL40
	.4byte	0x2d6
	.4byte	0x574
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL43
	.4byte	0x1151
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	.LASF62
	.byte	0x1
	.byte	0x79
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5aa
	.uleb128 0x1e
	.4byte	.LASF58
	.byte	0x1
	.byte	0x79
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF59
	.byte	0x1
	.byte	0x81
	.4byte	0x8c
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x652
	.uleb128 0x17
	.4byte	.LASF57
	.byte	0x1
	.byte	0x81
	.4byte	0x2c
	.4byte	.LLST17
	.uleb128 0x26
	.4byte	.LBB32
	.4byte	.LBE32-.LBB32
	.4byte	0x63a
	.uleb128 0x15
	.string	"r"
	.byte	0x1
	.byte	0x86
	.4byte	0x8c
	.4byte	.LLST18
	.uleb128 0x1a
	.4byte	.LVL57
	.4byte	0x49d
	.4byte	0x607
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1800
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL59
	.4byte	0x49d
	.4byte	0x622
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1400
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL61
	.4byte	0x49d
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1000
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL54
	.4byte	0x49d
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1800
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF60
	.byte	0x1
	.byte	0xae
	.4byte	0x8c
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6cc
	.uleb128 0x17
	.4byte	.LASF57
	.byte	0x1
	.byte	0xae
	.4byte	0x2c
	.4byte	.LLST19
	.uleb128 0x14
	.string	"num"
	.byte	0x1
	.byte	0xae
	.4byte	0x2c
	.4byte	.LLST20
	.uleb128 0x27
	.uleb128 0x16
	.4byte	.LASF61
	.byte	0x1
	.byte	0xb0
	.4byte	0x16c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x15
	.string	"r"
	.byte	0x1
	.byte	0xb2
	.4byte	0x8c
	.4byte	.LLST21
	.uleb128 0x23
	.4byte	.Ldebug_ranges0+0x38
	.uleb128 0x18
	.4byte	.LASF37
	.byte	0x1
	.byte	0xb4
	.4byte	0xd8
	.4byte	.LLST22
	.uleb128 0x1c
	.4byte	.LVL70
	.4byte	0x49d
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	.LASF63
	.byte	0x1
	.byte	0xf4
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x78f
	.uleb128 0x14
	.string	"ptr"
	.byte	0x1
	.byte	0xf4
	.4byte	0x8c
	.4byte	.LLST23
	.uleb128 0x15
	.string	"p"
	.byte	0x1
	.byte	0xf6
	.4byte	0xe3
	.4byte	.LLST24
	.uleb128 0x28
	.4byte	.LASF40
	.byte	0x1
	.2byte	0x104
	.4byte	0x2d0
	.4byte	.LLST25
	.uleb128 0x19
	.4byte	.LASF52
	.4byte	0x79f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5073
	.uleb128 0x26
	.4byte	.LBB35
	.4byte	.LBE35-.LBB35
	.4byte	0x73a
	.uleb128 0x28
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x100
	.4byte	0x422
	.4byte	.LLST26
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL79
	.4byte	0x28d
	.4byte	0x74e
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL81
	.4byte	0x1146
	.4byte	0x77e
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x105
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5073
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC25
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL83
	.4byte	0x115c
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	0x95
	.4byte	0x79f
	.uleb128 0xc
	.4byte	0x85
	.byte	0xe
	.byte	0
	.uleb128 0x12
	.4byte	0x78f
	.uleb128 0x29
	.4byte	.LASF65
	.byte	0x1
	.2byte	0x109
	.4byte	0x8c
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9ae
	.uleb128 0x2a
	.string	"ptr"
	.byte	0x1
	.2byte	0x109
	.4byte	0x8c
	.4byte	.LLST27
	.uleb128 0x2b
	.4byte	.LASF57
	.byte	0x1
	.2byte	0x109
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2c
	.4byte	.LASF37
	.byte	0x1
	.2byte	0x109
	.4byte	0x25
	.4byte	.LLST28
	.uleb128 0x2d
	.4byte	.LASF40
	.byte	0x1
	.2byte	0x114
	.4byte	0x2d0
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x19
	.4byte	.LASF52
	.4byte	0x9be
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5080
	.uleb128 0x28
	.4byte	.LASF66
	.byte	0x1
	.2byte	0x11a
	.4byte	0x187
	.4byte	.LLST29
	.uleb128 0x28
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x127
	.4byte	0x8c
	.4byte	.LLST30
	.uleb128 0x2e
	.4byte	0x24e
	.4byte	.LBB36
	.4byte	.LBE36-.LBB36
	.byte	0x1
	.2byte	0x11a
	.4byte	0x86b
	.uleb128 0x2f
	.4byte	0x25e
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x21
	.4byte	.LBB37
	.4byte	.LBE37-.LBB37
	.uleb128 0x22
	.4byte	0x269
	.4byte	.LLST31
	.uleb128 0x21
	.4byte	.LBB38
	.4byte	.LBE38-.LBB38
	.uleb128 0x22
	.4byte	0x275
	.4byte	.LLST32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x30
	.4byte	.Ldebug_ranges0+0x50
	.4byte	0x899
	.uleb128 0x31
	.string	"r"
	.byte	0x1
	.2byte	0x11f
	.4byte	0x8c
	.4byte	.LLST33
	.uleb128 0x1c
	.4byte	.LVL99
	.4byte	0x1167
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LBB40
	.4byte	.LBE40-.LBB40
	.4byte	0x925
	.uleb128 0x28
	.4byte	.LASF68
	.byte	0x1
	.2byte	0x129
	.4byte	0x2c
	.4byte	.LLST34
	.uleb128 0x1a
	.4byte	.LVL103
	.4byte	0x1172
	.4byte	0x8ca
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL105
	.4byte	0x1146
	.4byte	0x8fa
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x12a
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5080
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC33
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL107
	.4byte	0x117d
	.4byte	0x914
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL108
	.4byte	0x6cc
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL85
	.4byte	0x49d
	.4byte	0x93f
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL88
	.4byte	0x6cc
	.4byte	0x953
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL91
	.4byte	0x28d
	.4byte	0x967
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL93
	.4byte	0x1146
	.4byte	0x997
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x116
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5080
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC29
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL101
	.4byte	0x49d
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	0x95
	.4byte	0x9be
	.uleb128 0xc
	.4byte	0x85
	.byte	0x11
	.byte	0
	.uleb128 0x12
	.4byte	0x9ae
	.uleb128 0x1d
	.4byte	.LASF69
	.byte	0x1
	.byte	0x98
	.4byte	0x8c
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa90
	.uleb128 0x14
	.string	"ptr"
	.byte	0x1
	.byte	0x98
	.4byte	0x8c
	.4byte	.LLST35
	.uleb128 0x1e
	.4byte	.LASF57
	.byte	0x1
	.byte	0x98
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x26
	.4byte	.LBB42
	.4byte	.LBE42-.LBB42
	.4byte	0xa72
	.uleb128 0x15
	.string	"r"
	.byte	0x1
	.byte	0x9d
	.4byte	0x8c
	.4byte	.LLST36
	.uleb128 0x1a
	.4byte	.LVL118
	.4byte	0x7a4
	.4byte	0xa33
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1800
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL120
	.4byte	0x7a4
	.4byte	0xa54
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1400
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL122
	.4byte	0x7a4
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1000
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL115
	.4byte	0x7a4
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1800
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF70
	.byte	0x1
	.byte	0xc1
	.4byte	0x8c
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb1d
	.uleb128 0x14
	.string	"ptr"
	.byte	0x1
	.byte	0xc1
	.4byte	0x8c
	.4byte	.LLST37
	.uleb128 0x1e
	.4byte	.LASF57
	.byte	0x1
	.byte	0xc1
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x14
	.string	"num"
	.byte	0x1
	.byte	0xc1
	.4byte	0x2c
	.4byte	.LLST38
	.uleb128 0x27
	.uleb128 0x16
	.4byte	.LASF61
	.byte	0x1
	.byte	0xc3
	.4byte	0x16c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x15
	.string	"r"
	.byte	0x1
	.byte	0xc5
	.4byte	0x8c
	.4byte	.LLST39
	.uleb128 0x23
	.4byte	.Ldebug_ranges0+0x68
	.uleb128 0x18
	.4byte	.LASF37
	.byte	0x1
	.byte	0xc7
	.4byte	0xd8
	.4byte	.LLST40
	.uleb128 0x1c
	.4byte	.LVL131
	.4byte	0x7a4
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x132
	.4byte	0x8c
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xba5
	.uleb128 0x2a
	.string	"n"
	.byte	0x1
	.2byte	0x132
	.4byte	0x2c
	.4byte	.LLST41
	.uleb128 0x2c
	.4byte	.LASF57
	.byte	0x1
	.2byte	0x132
	.4byte	0x2c
	.4byte	.LLST42
	.uleb128 0x2b
	.4byte	.LASF37
	.byte	0x1
	.2byte	0x132
	.4byte	0xd8
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x32
	.string	"r"
	.byte	0x1
	.2byte	0x134
	.4byte	0x8c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1a
	.4byte	.LVL137
	.4byte	0x49d
	.4byte	0xb89
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL139
	.4byte	0x1186
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF72
	.byte	0x1
	.byte	0xd4
	.4byte	0x8c
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc30
	.uleb128 0x14
	.string	"n"
	.byte	0x1
	.byte	0xd4
	.4byte	0x2c
	.4byte	.LLST43
	.uleb128 0x1e
	.4byte	.LASF57
	.byte	0x1
	.byte	0xd4
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x14
	.string	"num"
	.byte	0x1
	.byte	0xd4
	.4byte	0x2c
	.4byte	.LLST44
	.uleb128 0x27
	.uleb128 0x16
	.4byte	.LASF61
	.byte	0x1
	.byte	0xd6
	.4byte	0x16c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x15
	.string	"r"
	.byte	0x1
	.byte	0xd8
	.4byte	0x8c
	.4byte	.LLST45
	.uleb128 0x23
	.4byte	.Ldebug_ranges0+0x80
	.uleb128 0x18
	.4byte	.LASF37
	.byte	0x1
	.byte	0xda
	.4byte	0xd8
	.4byte	.LLST46
	.uleb128 0x1c
	.4byte	.LVL145
	.4byte	0xb1d
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	.LASF73
	.byte	0x1
	.2byte	0x13c
	.4byte	0x2c
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc9c
	.uleb128 0x2c
	.4byte	.LASF37
	.byte	0x1
	.2byte	0x13c
	.4byte	0xd8
	.4byte	.LLST47
	.uleb128 0x31
	.string	"ret"
	.byte	0x1
	.2byte	0x13e
	.4byte	0x2c
	.4byte	.LLST48
	.uleb128 0x2d
	.4byte	.LASF40
	.byte	0x1
	.2byte	0x13f
	.4byte	0x2d0
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1a
	.4byte	.LVL153
	.4byte	0x428
	.4byte	0xc92
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x33
	.4byte	.LVL154
	.4byte	0x118f
	.byte	0
	.uleb128 0x29
	.4byte	.LASF74
	.byte	0x1
	.2byte	0x148
	.4byte	0x2c
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd08
	.uleb128 0x2c
	.4byte	.LASF37
	.byte	0x1
	.2byte	0x148
	.4byte	0xd8
	.4byte	.LLST49
	.uleb128 0x31
	.string	"ret"
	.byte	0x1
	.2byte	0x14a
	.4byte	0x2c
	.4byte	.LLST50
	.uleb128 0x2d
	.4byte	.LASF40
	.byte	0x1
	.2byte	0x14b
	.4byte	0x2d0
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1a
	.4byte	.LVL162
	.4byte	0x428
	.4byte	0xcfe
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x33
	.4byte	.LVL163
	.4byte	0x119a
	.byte	0
	.uleb128 0x34
	.4byte	.LASF75
	.byte	0x1
	.2byte	0x15b
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdaa
	.uleb128 0x2b
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x15b
	.4byte	0xdaa
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2b
	.4byte	.LASF37
	.byte	0x1
	.2byte	0x15b
	.4byte	0xd8
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2d
	.4byte	.LASF40
	.byte	0x1
	.2byte	0x15f
	.4byte	0x2d0
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x26
	.4byte	.LBB47
	.4byte	.LBE47-.LBB47
	.4byte	0xd75
	.uleb128 0x2d
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x162
	.4byte	0x161
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1c
	.4byte	.LVL171
	.4byte	0x11a5
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL168
	.4byte	0x1186
	.4byte	0xd93
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x4c
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL170
	.4byte	0x428
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x161
	.uleb128 0x29
	.4byte	.LASF78
	.byte	0x1
	.2byte	0x154
	.4byte	0x2c
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe00
	.uleb128 0x2c
	.4byte	.LASF37
	.byte	0x1
	.2byte	0x154
	.4byte	0xd8
	.4byte	.LLST51
	.uleb128 0x2d
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x156
	.4byte	0x161
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1c
	.4byte	.LVL174
	.4byte	0xd08
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x34
	.4byte	.LASF79
	.byte	0x1
	.2byte	0x171
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xeff
	.uleb128 0x2b
	.4byte	.LASF37
	.byte	0x1
	.2byte	0x171
	.4byte	0xd8
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2d
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x173
	.4byte	0x161
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2d
	.4byte	.LASF40
	.byte	0x1
	.2byte	0x175
	.4byte	0x2d0
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1a
	.4byte	.LVL177
	.4byte	0x11b0
	.4byte	0xe5e
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC42
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL179
	.4byte	0x428
	.4byte	0xe78
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL180
	.4byte	0x11a5
	.4byte	0xe8c
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL181
	.4byte	0x11b0
	.4byte	0xea3
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC45
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL182
	.4byte	0x11b0
	.4byte	0xeba
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC47
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL184
	.4byte	0x11bb
	.4byte	0xed1
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC49
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL185
	.4byte	0xd08
	.4byte	0xeeb
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL186
	.4byte	0x11b0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC51
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	.LASF80
	.byte	0x1
	.2byte	0x187
	.4byte	0x187
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfbc
	.uleb128 0x2c
	.4byte	.LASF37
	.byte	0x1
	.2byte	0x187
	.4byte	0xd8
	.4byte	.LLST52
	.uleb128 0x2b
	.4byte	.LASF81
	.byte	0x1
	.2byte	0x187
	.4byte	0x187
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2d
	.4byte	.LASF82
	.byte	0x1
	.2byte	0x189
	.4byte	0x187
	.uleb128 0x5
	.byte	0x76
	.sleb128 0
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.uleb128 0x28
	.4byte	.LASF83
	.byte	0x1
	.2byte	0x18a
	.4byte	0x187
	.4byte	.LLST53
	.uleb128 0x2d
	.4byte	.LASF40
	.byte	0x1
	.2byte	0x18c
	.4byte	0x2d0
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2e
	.4byte	0x24e
	.4byte	.LBB48
	.4byte	.LBE48-.LBB48
	.byte	0x1
	.2byte	0x18f
	.4byte	0xfab
	.uleb128 0x20
	.4byte	0x25e
	.4byte	.LLST54
	.uleb128 0x21
	.4byte	.LBB49
	.4byte	.LBE49-.LBB49
	.uleb128 0x22
	.4byte	0x269
	.4byte	.LLST55
	.uleb128 0x21
	.4byte	.LBB50
	.4byte	.LBE50-.LBB50
	.uleb128 0x22
	.4byte	0x275
	.4byte	.LLST56
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL198
	.4byte	0x11ca
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	.LASF84
	.byte	0x1
	.2byte	0x197
	.4byte	0x187
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1002
	.uleb128 0x2c
	.4byte	.LASF81
	.byte	0x1
	.2byte	0x197
	.4byte	0x187
	.4byte	.LLST57
	.uleb128 0x1c
	.4byte	.LVL204
	.4byte	0xeff
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x4
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x1f
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x72
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	.LASF85
	.byte	0x1
	.2byte	0x19c
	.4byte	0x187
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x106f
	.uleb128 0x2c
	.4byte	.LASF49
	.byte	0x1
	.2byte	0x19c
	.4byte	0xe3
	.4byte	.LLST58
	.uleb128 0x2b
	.4byte	.LASF81
	.byte	0x1
	.2byte	0x19c
	.4byte	0x187
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x28
	.4byte	.LASF40
	.byte	0x1
	.2byte	0x19e
	.4byte	0x2d0
	.4byte	.LLST59
	.uleb128 0x1a
	.4byte	.LVL207
	.4byte	0x28d
	.4byte	0x105e
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL209
	.4byte	0x11ca
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x34
	.4byte	.LASF86
	.byte	0x1
	.2byte	0x1a5
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1101
	.uleb128 0x2b
	.4byte	.LASF37
	.byte	0x1
	.2byte	0x1a5
	.4byte	0xd8
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2d
	.4byte	.LASF82
	.byte	0x1
	.2byte	0x1a7
	.4byte	0x187
	.uleb128 0x5
	.byte	0x74
	.sleb128 0
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.uleb128 0x2d
	.4byte	.LASF40
	.byte	0x1
	.2byte	0x1a8
	.4byte	0x2d0
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2e
	.4byte	0x24e
	.4byte	.LBB51
	.4byte	.LBE51-.LBB51
	.byte	0x1
	.2byte	0x1ab
	.4byte	0x10f7
	.uleb128 0x20
	.4byte	0x25e
	.4byte	.LLST60
	.uleb128 0x21
	.4byte	.LBB52
	.4byte	.LBE52-.LBB52
	.uleb128 0x22
	.4byte	0x269
	.4byte	.LLST61
	.uleb128 0x21
	.4byte	.LBB53
	.4byte	.LBE53-.LBB53
	.uleb128 0x22
	.4byte	0x275
	.4byte	.LLST62
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x33
	.4byte	.LVL222
	.4byte	0x11d5
	.byte	0
	.uleb128 0x35
	.4byte	.LASF106
	.byte	0x1
	.2byte	0x1b1
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x112a
	.uleb128 0x1c
	.4byte	.LVL224
	.4byte	0x106f
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x4
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x1f
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LASF87
	.byte	0x1
	.byte	0x77
	.4byte	0x25
	.uleb128 0x5
	.byte	0x3
	.4byte	malloc_alwaysinternal_limit
	.uleb128 0x36
	.4byte	.LASF107
	.byte	0x2
	.byte	0x2f
	.4byte	0x235
	.uleb128 0x37
	.4byte	.LASF88
	.4byte	.LASF88
	.byte	0xa
	.byte	0x29
	.uleb128 0x37
	.4byte	.LASF89
	.4byte	.LASF89
	.byte	0x8
	.byte	0x29
	.uleb128 0x37
	.4byte	.LASF90
	.4byte	.LASF90
	.byte	0x8
	.byte	0x32
	.uleb128 0x37
	.4byte	.LASF91
	.4byte	.LASF91
	.byte	0x8
	.byte	0x3e
	.uleb128 0x37
	.4byte	.LASF92
	.4byte	.LASF92
	.byte	0x8
	.byte	0x49
	.uleb128 0x38
	.4byte	.LASF93
	.4byte	.LASF93
	.uleb128 0x38
	.4byte	.LASF94
	.4byte	.LASF94
	.uleb128 0x37
	.4byte	.LASF95
	.4byte	.LASF95
	.byte	0x8
	.byte	0x87
	.uleb128 0x37
	.4byte	.LASF96
	.4byte	.LASF96
	.byte	0x8
	.byte	0x93
	.uleb128 0x37
	.4byte	.LASF97
	.4byte	.LASF97
	.byte	0x8
	.byte	0xa7
	.uleb128 0x37
	.4byte	.LASF98
	.4byte	.LASF98
	.byte	0xb
	.byte	0xb2
	.uleb128 0x39
	.4byte	.LASF108
	.4byte	.LASF109
	.byte	0x6
	.byte	0
	.4byte	.LASF108
	.uleb128 0x37
	.4byte	.LASF99
	.4byte	.LASF99
	.byte	0x8
	.byte	0x79
	.uleb128 0x37
	.4byte	.LASF100
	.4byte	.LASF100
	.byte	0x8
	.byte	0x6d
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
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
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
	.uleb128 0x11
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x2117
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
	.uleb128 0x18
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x18
	.byte	0
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
	.uleb128 0x17
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x6e
	.uleb128 0xe
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL6
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL6
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL7
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL16
	.4byte	.LFE15
	.2byte	0x2
	.byte	0x73
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL9
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL8
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL16
	.4byte	.LFE15
	.2byte	0x2
	.byte	0x73
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL10
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x9
	.byte	0x72
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x22
	.byte	0x34
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LFE15
	.2byte	0xa
	.byte	0x73
	.sleb128 0
	.byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x22
	.byte	0x34
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL17
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
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL18
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
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL27
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL19
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL19
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL28
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x3
	.byte	0x72
	.sleb128 -3
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x3
	.byte	0x77
	.sleb128 -4
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL48
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
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL29
	.4byte	.LVL32
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL39
	.4byte	.LVL40-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL48
	.4byte	.LVL50
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL50
	.4byte	.LFE17
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL50
	.4byte	.LFE17
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL33
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL50
	.4byte	.LFE17
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL34
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL50
	.4byte	.LFE17
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL35
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL35
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL53
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL56
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL64
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL59
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL63
	.4byte	.LFE19
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL65
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL73
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL65
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL67
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL71
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL72
	.4byte	.LFE21
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL66
	.4byte	.LVL67
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL67
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL70
	.4byte	.LFE21
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL68
	.4byte	.LVL70-1
	.2byte	0x2
	.byte	0x78
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL74
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL77
	.4byte	.LVL78
	.2byte	0x3
	.byte	0x72
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL78
	.4byte	.LFE25
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL75
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL77
	.4byte	.LVL78
	.2byte	0x3
	.byte	0x72
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL78
	.4byte	.LVL79-1
	.2byte	0x7
	.byte	0x78
	.sleb128 1074397184
	.byte	0x9f
	.4byte	.LVL79-1
	.4byte	.LFE25
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL79
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL81
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL76
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL77
	.4byte	.LVL78
	.2byte	0x3
	.byte	0x72
	.sleb128 4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL84
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL86
	.4byte	.LVL87
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL87
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL89
	.4byte	.LVL90
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL90
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
	.4byte	.LVL112
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL112
	.4byte	.LVL113
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL113
	.4byte	.LFE26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL84
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL102
	.4byte	.LVL110
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL110
	.4byte	.LVL112
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL112
	.4byte	.LFE26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL98
	.4byte	.LVL99-1
	.2byte	0x6
	.byte	0x79
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x29
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL102
	.4byte	.LVL110
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL112
	.4byte	.LFE26
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL94
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL94
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL99
	.4byte	.LVL100
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL110
	.4byte	.LVL112
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL103
	.4byte	.LVL104
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL105
	.4byte	.LVL106
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL114
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
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL118
	.4byte	.LVL119
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL120
	.4byte	.LVL121
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL124
	.4byte	.LFE20
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL126
	.4byte	.LVL134
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL134
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL126
	.4byte	.LVL128
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL128
	.4byte	.LVL132
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL132
	.4byte	.LVL133
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL133
	.4byte	.LFE22
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL127
	.4byte	.LVL128
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL128
	.4byte	.LVL130
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL131
	.4byte	.LFE22
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL129
	.4byte	.LVL131-1
	.2byte	0x2
	.byte	0x78
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL135
	.4byte	.LVL138
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL138
	.4byte	.LFE27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL135
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
.LLST43:
	.4byte	.LVL140
	.4byte	.LVL148
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL148
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL140
	.4byte	.LVL142
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL142
	.4byte	.LVL146
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL146
	.4byte	.LVL147
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL147
	.4byte	.LFE23
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL141
	.4byte	.LVL142
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL142
	.4byte	.LVL144
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL145
	.4byte	.LFE23
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL143
	.4byte	.LVL145-1
	.2byte	0x2
	.byte	0x78
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL149
	.4byte	.LVL157
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL157
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL150
	.4byte	.LVL152
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL152
	.4byte	.LFE28
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL158
	.4byte	.LVL166
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL166
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL159
	.4byte	.LVL161
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL161
	.4byte	.LFE29
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL173
	.4byte	.LVL175
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL175
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL187
	.4byte	.LVL189
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL189
	.4byte	.LFE33
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL188
	.4byte	.LVL191
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL191
	.4byte	.LVL199
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL200
	.4byte	.LFE33
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LVL192
	.4byte	.LVL197
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LVL193
	.4byte	.LVL196
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL193
	.4byte	.LVL196
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL203
	.4byte	.LVL205
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL205
	.4byte	.LFE34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LVL206
	.4byte	.LVL210
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL210
	.4byte	.LVL211
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL211
	.4byte	.LVL212
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL212
	.4byte	.LFE35
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST59:
	.4byte	.LVL207
	.4byte	.LVL208
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL211
	.4byte	.LFE35
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST60:
	.4byte	.LVL216
	.4byte	.LVL221
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST61:
	.4byte	.LVL217
	.4byte	.LVL220
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST62:
	.4byte	.LVL217
	.4byte	.LVL220
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0xcc
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
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
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB24
	.4byte	.LBE24
	.4byte	.LBB30
	.4byte	.LBE30
	.4byte	.LBB31
	.4byte	.LBE31
	.4byte	0
	.4byte	0
	.4byte	.LBB25
	.4byte	.LBE25
	.4byte	.LBB29
	.4byte	.LBE29
	.4byte	0
	.4byte	0
	.4byte	.LBB33
	.4byte	.LBE33
	.4byte	.LBB34
	.4byte	.LBE34
	.4byte	0
	.4byte	0
	.4byte	.LBB39
	.4byte	.LBE39
	.4byte	.LBB41
	.4byte	.LBE41
	.4byte	0
	.4byte	0
	.4byte	.LBB43
	.4byte	.LBE43
	.4byte	.LBB44
	.4byte	.LBE44
	.4byte	0
	.4byte	0
	.4byte	.LBB45
	.4byte	.LBE45
	.4byte	.LBB46
	.4byte	.LBE46
	.4byte	0
	.4byte	0
	.4byte	.LFB24
	.4byte	.LFE24
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
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	.LFB36
	.4byte	.LFE36
	.4byte	.LFB37
	.4byte	.LFE37
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF56:
	.string	"heap_caps_malloc"
.LASF81:
	.string	"print_errors"
.LASF83:
	.string	"valid"
.LASF49:
	.string	"addr"
.LASF42:
	.string	"heap_t"
.LASF70:
	.string	"heap_caps_realloc_prefer"
.LASF90:
	.string	"multi_heap_free"
.LASF41:
	.string	"next"
.LASF69:
	.string	"heap_caps_realloc_default"
.LASF5:
	.string	"size_t"
.LASF11:
	.string	"sizetype"
.LASF107:
	.string	"registered_heaps"
.LASF48:
	.string	"dram_alloc_to_iram_addr"
.LASF17:
	.string	"__va_ndx"
.LASF53:
	.string	"istart"
.LASF6:
	.string	"__uint32_t"
.LASF68:
	.string	"old_size"
.LASF29:
	.string	"va_list"
.LASF103:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\heap"
.LASF35:
	.string	"__va_list_tag"
.LASF60:
	.string	"heap_caps_malloc_prefer"
.LASF23:
	.string	"largest_free_block"
.LASF97:
	.string	"multi_heap_get_info"
.LASF93:
	.string	"memcpy"
.LASF62:
	.string	"heap_caps_malloc_extmem_enable"
.LASF9:
	.string	"__intptr_t"
.LASF95:
	.string	"multi_heap_free_size"
.LASF87:
	.string	"malloc_alwaysinternal_limit"
.LASF40:
	.string	"heap"
.LASF102:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/heap/heap_caps.c"
.LASF4:
	.string	"short int"
.LASF19:
	.string	"intptr_t"
.LASF22:
	.string	"total_allocated_bytes"
.LASF7:
	.string	"long long int"
.LASF26:
	.string	"free_blocks"
.LASF54:
	.string	"iptr"
.LASF58:
	.string	"limit"
.LASF63:
	.string	"heap_caps_free"
.LASF105:
	.string	"get_all_caps"
.LASF94:
	.string	"memset"
.LASF10:
	.string	"long int"
.LASF50:
	.string	"dstart"
.LASF75:
	.string	"heap_caps_get_info"
.LASF98:
	.string	"printf"
.LASF55:
	.string	"heap_caps_match"
.LASF100:
	.string	"multi_heap_dump"
.LASF79:
	.string	"heap_caps_print_heap_info"
.LASF3:
	.string	"unsigned char"
.LASF37:
	.string	"caps"
.LASF74:
	.string	"heap_caps_get_minimum_free_size"
.LASF91:
	.string	"multi_heap_realloc"
.LASF99:
	.string	"multi_heap_check"
.LASF52:
	.string	"__func__"
.LASF31:
	.string	"owner"
.LASF21:
	.string	"total_free_bytes"
.LASF96:
	.string	"multi_heap_minimum_free_size"
.LASF101:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF80:
	.string	"heap_caps_check_integrity"
.LASF2:
	.string	"signed char"
.LASF8:
	.string	"long long unsigned int"
.LASF92:
	.string	"multi_heap_get_allocated_size"
.LASF106:
	.string	"heap_caps_dump_all"
.LASF33:
	.string	"portMUX_TYPE"
.LASF65:
	.string	"heap_caps_realloc"
.LASF0:
	.string	"unsigned int"
.LASF45:
	.string	"all_caps"
.LASF61:
	.string	"argp"
.LASF43:
	.string	"registered_heap_ll"
.LASF71:
	.string	"heap_caps_calloc"
.LASF64:
	.string	"dramAddrPtr"
.LASF108:
	.string	"puts"
.LASF44:
	.string	"slh_first"
.LASF15:
	.string	"__va_stk"
.LASF38:
	.string	"start"
.LASF1:
	.string	"short unsigned int"
.LASF57:
	.string	"size"
.LASF36:
	.string	"heap_t_"
.LASF13:
	.string	"char"
.LASF24:
	.string	"minimum_free_bytes"
.LASF51:
	.string	"dend"
.LASF86:
	.string	"heap_caps_dump"
.LASF77:
	.string	"hinfo"
.LASF30:
	.string	"_Bool"
.LASF28:
	.string	"multi_heap_info_t"
.LASF89:
	.string	"multi_heap_malloc"
.LASF20:
	.string	"multi_heap_handle_t"
.LASF18:
	.string	"uint32_t"
.LASF39:
	.string	"heap_mux"
.LASF12:
	.string	"long unsigned int"
.LASF25:
	.string	"allocated_blocks"
.LASF72:
	.string	"heap_caps_calloc_prefer"
.LASF34:
	.string	"sle_next"
.LASF27:
	.string	"total_blocks"
.LASF32:
	.string	"count"
.LASF76:
	.string	"info"
.LASF67:
	.string	"new_p"
.LASF47:
	.string	"find_containing_heap"
.LASF14:
	.string	"__gnuc_va_list"
.LASF16:
	.string	"__va_reg"
.LASF59:
	.string	"heap_caps_malloc_default"
.LASF109:
	.string	"__builtin_puts"
.LASF84:
	.string	"heap_caps_check_integrity_all"
.LASF88:
	.string	"__assert_func"
.LASF82:
	.string	"all_heaps"
.LASF66:
	.string	"compatible_caps"
.LASF85:
	.string	"heap_caps_check_integrity_addr"
.LASF46:
	.string	"prio"
.LASF104:
	.string	"multi_heap_info"
.LASF73:
	.string	"heap_caps_get_free_size"
.LASF78:
	.string	"heap_caps_get_largest_free_block"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
