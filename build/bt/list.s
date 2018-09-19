	.file	"list.c"
	.text
.Ltext0:
	.section	.text.list_new_internal,"ax",@progbits
	.align	4
	.global	list_new_internal
	.type	list_new_internal, @function
list_new_internal:
.LFB11:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/osi/list.c"
	.loc 1 26 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 27 0
	l32i.n	a8, a3, 0
	movi.n	a10, 0x14
	callx8	a8
.LVL1:
	.loc 1 28 0
	beqz.n	a10, .L3
	.loc 1 32 0
	movi.n	a8, 0
	s32i.n	a8, a10, 4
	s32i.n	a8, a10, 0
	.loc 1 33 0
	s32i.n	a8, a10, 8
	.loc 1 34 0
	s32i.n	a2, a10, 12
	.loc 1 35 0
	s32i.n	a3, a10, 16
	.loc 1 36 0
	mov.n	a2, a10
.LVL2:
	retw.n
.LVL3:
.L3:
	.loc 1 29 0
	movi.n	a2, 0
.LVL4:
	.loc 1 37 0
	retw.n
.LFE11:
	.size	list_new_internal, .-list_new_internal
	.section	.text.list_new,"ax",@progbits
	.literal_position
	.literal .LC0, allocator_calloc
	.align	4
	.global	list_new
	.type	list_new, @function
list_new:
.LFB12:
	.loc 1 40 0
.LVL5:
	entry	sp, 32
.LCFI1:
	.loc 1 41 0
	l32r	a11, .LC0
	mov.n	a10, a2
	call8	list_new_internal
.LVL6:
	.loc 1 42 0
	mov.n	a2, a10
.LVL7:
	retw.n
.LFE12:
	.size	list_new, .-list_new
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC1:
	.string	"list != NULL"
	.align	4
.LC4:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/osi/list.c"
	.section	.text.list_is_empty,"ax",@progbits
	.literal_position
	.literal .LC2, .LC1
	.literal .LC3, __func__$3461
	.literal .LC5, .LC4
	.align	4
	.global	list_is_empty
	.type	list_is_empty, @function
list_is_empty:
.LFB14:
	.loc 1 55 0
.LVL8:
	entry	sp, 32
.LCFI2:
	.loc 1 56 0
	bnez.n	a2, .L6
	.loc 1 56 0 is_stmt 0 discriminator 1
	l32r	a13, .LC2
	l32r	a12, .LC3
	movi.n	a11, 0x38
	l32r	a10, .LC5
	call8	__assert_func
.LVL9:
.L6:
	.loc 1 57 0 is_stmt 1
	l32i.n	a8, a2, 8
	movi.n	a2, 0
.LVL10:
	movi.n	a9, 1
	moveqz	a2, a9, a8
	.loc 1 58 0
	retw.n
.LFE14:
	.size	list_is_empty, .-list_is_empty
	.section	.text.list_length,"ax",@progbits
	.literal_position
	.literal .LC6, .LC1
	.literal .LC7, __func__$3474
	.literal .LC8, .LC4
	.align	4
	.global	list_length
	.type	list_length, @function
list_length:
.LFB16:
	.loc 1 74 0
.LVL11:
	entry	sp, 32
.LCFI3:
	.loc 1 75 0
	bnez.n	a2, .L8
	.loc 1 75 0 is_stmt 0 discriminator 1
	l32r	a13, .LC6
	l32r	a12, .LC7
	movi.n	a11, 0x4b
	l32r	a10, .LC8
	call8	__assert_func
.LVL12:
.L8:
	.loc 1 77 0 is_stmt 1
	l32i.n	a2, a2, 8
.LVL13:
	retw.n
.LFE16:
	.size	list_length, .-list_length
	.section	.rodata.str1.4
	.align	4
.LC12:
	.string	"!list_is_empty(list)"
	.section	.text.list_front,"ax",@progbits
	.literal_position
	.literal .LC9, .LC1
	.literal .LC10, __func__$3478
	.literal .LC11, .LC4
	.literal .LC13, .LC12
	.align	4
	.global	list_front
	.type	list_front, @function
list_front:
.LFB17:
	.loc 1 80 0
.LVL14:
	entry	sp, 32
.LCFI4:
	.loc 1 81 0
	bnez.n	a2, .L10
	.loc 1 81 0 is_stmt 0 discriminator 1
	l32r	a13, .LC9
	l32r	a12, .LC10
	movi.n	a11, 0x51
	l32r	a10, .LC11
	call8	__assert_func
.LVL15:
.L10:
	.loc 1 82 0 is_stmt 1
	mov.n	a10, a2
	call8	list_is_empty
.LVL16:
	beqz.n	a10, .L11
	.loc 1 82 0 is_stmt 0 discriminator 1
	l32r	a13, .LC13
	l32r	a12, .LC10
	movi.n	a11, 0x52
	l32r	a10, .LC11
	call8	__assert_func
.LVL17:
.L11:
	.loc 1 84 0 is_stmt 1
	l32i.n	a2, a2, 0
.LVL18:
	.loc 1 85 0
	l32i.n	a2, a2, 4
	retw.n
.LFE17:
	.size	list_front, .-list_front
	.section	.text.list_back,"ax",@progbits
	.literal_position
	.literal .LC14, .LC1
	.literal .LC15, __func__$3482
	.literal .LC16, .LC4
	.literal .LC17, .LC12
	.align	4
	.global	list_back
	.type	list_back, @function
list_back:
.LFB18:
	.loc 1 87 0
.LVL19:
	entry	sp, 32
.LCFI5:
	.loc 1 88 0
	bnez.n	a2, .L13
	.loc 1 88 0 is_stmt 0 discriminator 1
	l32r	a13, .LC14
	l32r	a12, .LC15
	movi.n	a11, 0x58
	l32r	a10, .LC16
	call8	__assert_func
.LVL20:
.L13:
	.loc 1 89 0 is_stmt 1
	mov.n	a10, a2
	call8	list_is_empty
.LVL21:
	beqz.n	a10, .L14
	.loc 1 89 0 is_stmt 0 discriminator 1
	l32r	a13, .LC17
	l32r	a12, .LC15
	movi.n	a11, 0x59
	l32r	a10, .LC16
	call8	__assert_func
.LVL22:
.L14:
	.loc 1 91 0 is_stmt 1
	l32i.n	a2, a2, 4
.LVL23:
	.loc 1 92 0
	l32i.n	a2, a2, 4
	retw.n
.LFE18:
	.size	list_back, .-list_back
	.section	.text.list_back_node,"ax",@progbits
	.literal_position
	.literal .LC18, .LC1
	.literal .LC19, __func__$3486
	.literal .LC20, .LC4
	.literal .LC21, .LC12
	.align	4
	.global	list_back_node
	.type	list_back_node, @function
list_back_node:
.LFB19:
	.loc 1 94 0
.LVL24:
	entry	sp, 32
.LCFI6:
	.loc 1 95 0
	bnez.n	a2, .L16
	.loc 1 95 0 is_stmt 0 discriminator 1
	l32r	a13, .LC18
	l32r	a12, .LC19
	movi.n	a11, 0x5f
	l32r	a10, .LC20
	call8	__assert_func
.LVL25:
.L16:
	.loc 1 96 0 is_stmt 1
	mov.n	a10, a2
	call8	list_is_empty
.LVL26:
	beqz.n	a10, .L17
	.loc 1 96 0 is_stmt 0 discriminator 1
	l32r	a13, .LC21
	l32r	a12, .LC19
	movi	a11, 0x60
	l32r	a10, .LC20
	call8	__assert_func
.LVL27:
.L17:
	.loc 1 99 0 is_stmt 1
	l32i.n	a2, a2, 4
.LVL28:
	retw.n
.LFE19:
	.size	list_back_node, .-list_back_node
	.section	.rodata.str1.4
	.align	4
.LC25:
	.string	"prev_node != NULL"
	.align	4
.LC27:
	.string	"data != NULL"
	.section	.text.list_insert_after,"ax",@progbits
	.literal_position
	.literal .LC22, .LC1
	.literal .LC23, __func__$3492
	.literal .LC24, .LC4
	.literal .LC26, .LC25
	.literal .LC28, .LC27
	.align	4
	.global	list_insert_after
	.type	list_insert_after, @function
list_insert_after:
.LFB20:
	.loc 1 101 0
.LVL29:
	entry	sp, 32
.LCFI7:
	.loc 1 102 0
	bnez.n	a2, .L19
	.loc 1 102 0 is_stmt 0 discriminator 1
	l32r	a13, .LC22
	l32r	a12, .LC23
	movi	a11, 0x66
	l32r	a10, .LC24
	call8	__assert_func
.LVL30:
.L19:
	.loc 1 103 0 is_stmt 1
	bnez.n	a3, .L20
	.loc 1 103 0 is_stmt 0 discriminator 1
	l32r	a13, .LC26
	l32r	a12, .LC23
	movi	a11, 0x67
	l32r	a10, .LC24
	call8	__assert_func
.LVL31:
.L20:
	.loc 1 104 0 is_stmt 1
	bnez.n	a4, .L21
	.loc 1 104 0 is_stmt 0 discriminator 1
	l32r	a13, .LC28
	l32r	a12, .LC23
	movi	a11, 0x68
	l32r	a10, .LC24
	call8	__assert_func
.LVL32:
.L21:
	.loc 1 106 0 is_stmt 1
	l32i.n	a8, a2, 16
	l32i.n	a8, a8, 0
	movi.n	a10, 8
	callx8	a8
.LVL33:
	.loc 1 107 0
	beqz.n	a10, .L24
	.loc 1 110 0
	l32i.n	a8, a3, 0
	s32i.n	a8, a10, 0
	.loc 1 111 0
	s32i.n	a4, a10, 4
	.loc 1 112 0
	s32i.n	a10, a3, 0
	.loc 1 113 0
	l32i.n	a4, a2, 4
.LVL34:
	bne	a3, a4, .L23
	.loc 1 114 0
	s32i.n	a10, a2, 4
.L23:
	.loc 1 116 0
	l32i.n	a3, a2, 8
.LVL35:
	addi.n	a3, a3, 1
	s32i.n	a3, a2, 8
	.loc 1 117 0
	movi.n	a2, 1
.LVL36:
	retw.n
.LVL37:
.L24:
	.loc 1 108 0
	movi.n	a2, 0
.LVL38:
	.loc 1 118 0
	retw.n
.LFE20:
	.size	list_insert_after, .-list_insert_after
	.section	.text.list_prepend,"ax",@progbits
	.literal_position
	.literal .LC29, .LC1
	.literal .LC30, __func__$3498
	.literal .LC31, .LC4
	.literal .LC32, .LC27
	.align	4
	.global	list_prepend
	.type	list_prepend, @function
list_prepend:
.LFB21:
	.loc 1 121 0
.LVL39:
	entry	sp, 32
.LCFI8:
	.loc 1 122 0
	bnez.n	a2, .L26
	.loc 1 122 0 is_stmt 0 discriminator 1
	l32r	a13, .LC29
	l32r	a12, .LC30
	movi	a11, 0x7a
	l32r	a10, .LC31
	call8	__assert_func
.LVL40:
.L26:
	.loc 1 123 0 is_stmt 1
	bnez.n	a3, .L27
	.loc 1 123 0 is_stmt 0 discriminator 1
	l32r	a13, .LC32
	l32r	a12, .LC30
	movi	a11, 0x7b
	l32r	a10, .LC31
	call8	__assert_func
.LVL41:
.L27:
	.loc 1 125 0 is_stmt 1
	l32i.n	a8, a2, 16
	l32i.n	a8, a8, 0
	movi.n	a10, 8
	callx8	a8
.LVL42:
	.loc 1 126 0
	beqz.n	a10, .L30
	.loc 1 129 0
	l32i.n	a8, a2, 0
	s32i.n	a8, a10, 0
	.loc 1 130 0
	s32i.n	a3, a10, 4
	.loc 1 131 0
	s32i.n	a10, a2, 0
	.loc 1 132 0
	l32i.n	a3, a2, 4
.LVL43:
	bnez.n	a3, .L29
	.loc 1 133 0
	s32i.n	a10, a2, 4
.L29:
	.loc 1 135 0
	l32i.n	a8, a2, 8
	addi.n	a8, a8, 1
	s32i.n	a8, a2, 8
	.loc 1 136 0
	movi.n	a2, 1
.LVL44:
	retw.n
.LVL45:
.L30:
	.loc 1 127 0
	movi.n	a2, 0
.LVL46:
	.loc 1 137 0
	retw.n
.LFE21:
	.size	list_prepend, .-list_prepend
	.section	.text.list_append,"ax",@progbits
	.literal_position
	.literal .LC33, .LC1
	.literal .LC34, __func__$3504
	.literal .LC35, .LC4
	.literal .LC36, .LC27
	.align	4
	.global	list_append
	.type	list_append, @function
list_append:
.LFB22:
	.loc 1 140 0
.LVL47:
	entry	sp, 32
.LCFI9:
	.loc 1 141 0
	bnez.n	a2, .L32
	.loc 1 141 0 is_stmt 0 discriminator 1
	l32r	a13, .LC33
	l32r	a12, .LC34
	movi	a11, 0x8d
	l32r	a10, .LC35
	call8	__assert_func
.LVL48:
.L32:
	.loc 1 142 0 is_stmt 1
	bnez.n	a3, .L33
	.loc 1 142 0 is_stmt 0 discriminator 1
	l32r	a13, .LC36
	l32r	a12, .LC34
	movi	a11, 0x8e
	l32r	a10, .LC35
	call8	__assert_func
.LVL49:
.L33:
	.loc 1 144 0 is_stmt 1
	l32i.n	a8, a2, 16
	l32i.n	a8, a8, 0
	movi.n	a10, 8
	callx8	a8
.LVL50:
	.loc 1 145 0
	beqz.n	a10, .L37
	.loc 1 148 0
	movi.n	a8, 0
	s32i.n	a8, a10, 0
	.loc 1 149 0
	s32i.n	a3, a10, 4
	.loc 1 150 0
	l32i.n	a3, a2, 4
.LVL51:
	bne	a3, a8, .L35
	.loc 1 151 0
	s32i.n	a10, a2, 0
.LVL52:
	.loc 1 152 0
	s32i.n	a10, a2, 4
	j	.L36
.LVL53:
.L35:
	.loc 1 154 0
	s32i.n	a10, a3, 0
.LVL54:
	.loc 1 155 0
	s32i.n	a10, a2, 4
.L36:
	.loc 1 157 0
	l32i.n	a8, a2, 8
	addi.n	a8, a8, 1
	s32i.n	a8, a2, 8
	.loc 1 158 0
	movi.n	a2, 1
.LVL55:
	retw.n
.LVL56:
.L37:
	.loc 1 146 0
	movi.n	a2, 0
.LVL57:
	.loc 1 159 0
	retw.n
.LFE22:
	.size	list_append, .-list_append
	.section	.rodata.str1.4
	.align	4
.LC40:
	.string	"callback != NULL"
	.section	.text.list_foreach,"ax",@progbits
	.literal_position
	.literal .LC37, .LC1
	.literal .LC38, __func__$3530
	.literal .LC39, .LC4
	.literal .LC41, .LC40
	.align	4
	.global	list_foreach
	.type	list_foreach, @function
list_foreach:
.LFB25:
	.loc 1 203 0
.LVL58:
	entry	sp, 32
.LCFI10:
	.loc 1 204 0
	bnez.n	a2, .L39
	.loc 1 204 0 is_stmt 0 discriminator 1
	l32r	a13, .LC37
	l32r	a12, .LC38
	movi	a11, 0xcc
	l32r	a10, .LC39
	call8	__assert_func
.LVL59:
.L39:
	.loc 1 205 0 is_stmt 1
	bnez.n	a3, .L40
	.loc 1 205 0 is_stmt 0 discriminator 1
	l32r	a13, .LC41
	l32r	a12, .LC38
	movi	a11, 0xcd
	l32r	a10, .LC39
	call8	__assert_func
.LVL60:
.L40:
.LBB2:
	.loc 1 207 0 is_stmt 1
	l32i.n	a2, a2, 0
.LVL61:
	j	.L41
.L43:
.LBB3:
	.loc 1 208 0
	l32i.n	a5, a2, 0
.LVL62:
	.loc 1 209 0
	mov.n	a11, a4
	l32i.n	a10, a2, 4
	callx8	a3
.LVL63:
	beqz.n	a10, .L42
	.loc 1 211 0
	mov.n	a2, a5
.LVL64:
.L41:
.LBE3:
	.loc 1 207 0 discriminator 1
	bnez.n	a2, .L43
.L42:
.LBE2:
	.loc 1 214 0
	retw.n
.LFE25:
	.size	list_foreach, .-list_foreach
	.section	.text.list_begin,"ax",@progbits
	.literal_position
	.literal .LC42, .LC1
	.literal .LC43, __func__$3539
	.literal .LC44, .LC4
	.align	4
	.global	list_begin
	.type	list_begin, @function
list_begin:
.LFB26:
	.loc 1 217 0
.LVL65:
	entry	sp, 32
.LCFI11:
	.loc 1 218 0
	bnez.n	a2, .L46
	.loc 1 218 0 is_stmt 0 discriminator 1
	l32r	a13, .LC42
	l32r	a12, .LC43
	movi	a11, 0xda
	l32r	a10, .LC44
	call8	__assert_func
.LVL66:
.L46:
	.loc 1 220 0 is_stmt 1
	l32i.n	a2, a2, 0
.LVL67:
	retw.n
.LFE26:
	.size	list_begin, .-list_begin
	.section	.text.list_end,"ax",@progbits
	.literal_position
	.literal .LC45, .LC1
	.literal .LC46, __func__$3543
	.literal .LC47, .LC4
	.align	4
	.global	list_end
	.type	list_end, @function
list_end:
.LFB27:
	.loc 1 223 0
.LVL68:
	entry	sp, 32
.LCFI12:
	.loc 1 224 0
	bnez.n	a2, .L48
	.loc 1 224 0 is_stmt 0 discriminator 1
	l32r	a13, .LC45
	l32r	a12, .LC46
	movi	a11, 0xe0
	l32r	a10, .LC47
	call8	__assert_func
.LVL69:
.L48:
	.loc 1 226 0 is_stmt 1
	movi.n	a2, 0
.LVL70:
	retw.n
.LFE27:
	.size	list_end, .-list_end
	.section	.rodata.str1.4
	.align	4
.LC48:
	.string	"node != NULL"
	.section	.text.list_next,"ax",@progbits
	.literal_position
	.literal .LC49, .LC48
	.literal .LC50, __func__$3547
	.literal .LC51, .LC4
	.align	4
	.global	list_next
	.type	list_next, @function
list_next:
.LFB28:
	.loc 1 229 0
.LVL71:
	entry	sp, 32
.LCFI13:
	.loc 1 230 0
	bnez.n	a2, .L50
	.loc 1 230 0 is_stmt 0 discriminator 1
	l32r	a13, .LC49
	l32r	a12, .LC50
	movi	a11, 0xe6
	l32r	a10, .LC51
	call8	__assert_func
.LVL72:
.L50:
	.loc 1 232 0 is_stmt 1
	l32i.n	a2, a2, 0
.LVL73:
	retw.n
.LFE28:
	.size	list_next, .-list_next
	.section	.text.list_node,"ax",@progbits
	.literal_position
	.literal .LC52, .LC48
	.literal .LC53, __func__$3551
	.literal .LC54, .LC4
	.align	4
	.global	list_node
	.type	list_node, @function
list_node:
.LFB29:
	.loc 1 235 0
.LVL74:
	entry	sp, 32
.LCFI14:
	.loc 1 236 0
	bnez.n	a2, .L52
	.loc 1 236 0 is_stmt 0 discriminator 1
	l32r	a13, .LC52
	l32r	a12, .LC53
	movi	a11, 0xec
	l32r	a10, .LC54
	call8	__assert_func
.LVL75:
.L52:
	.loc 1 238 0 is_stmt 1
	l32i.n	a2, a2, 4
.LVL76:
	retw.n
.LFE29:
	.size	list_node, .-list_node
	.section	.text.list_contains,"ax",@progbits
	.literal_position
	.literal .LC55, .LC1
	.literal .LC56, __func__$3466
	.literal .LC57, .LC4
	.literal .LC58, .LC27
	.align	4
	.global	list_contains
	.type	list_contains, @function
list_contains:
.LFB15:
	.loc 1 61 0
.LVL77:
	entry	sp, 32
.LCFI15:
	.loc 1 62 0
	bnez.n	a2, .L54
	.loc 1 62 0 is_stmt 0 discriminator 1
	l32r	a13, .LC55
	l32r	a12, .LC56
	movi.n	a11, 0x3e
	l32r	a10, .LC57
	call8	__assert_func
.LVL78:
.L54:
	.loc 1 63 0 is_stmt 1
	bnez.n	a3, .L55
	.loc 1 63 0 is_stmt 0 discriminator 1
	l32r	a13, .LC58
	l32r	a12, .LC56
	movi.n	a11, 0x3f
	l32r	a10, .LC57
	call8	__assert_func
.LVL79:
.L55:
.LBB4:
	.loc 1 65 0 is_stmt 1
	mov.n	a10, a2
	call8	list_begin
.LVL80:
	mov.n	a4, a10
.LVL81:
	j	.L56
.L58:
	.loc 1 66 0
	mov.n	a10, a4
	call8	list_node
.LVL82:
	beq	a3, a10, .L59
	.loc 1 65 0 discriminator 2
	mov.n	a10, a4
	call8	list_next
.LVL83:
	mov.n	a4, a10
.LVL84:
.L56:
	.loc 1 65 0 is_stmt 0 discriminator 1
	mov.n	a10, a2
	call8	list_end
.LVL85:
	bne	a4, a10, .L58
.LBE4:
	.loc 1 70 0 is_stmt 1
	movi.n	a2, 0
.LVL86:
.LBB5:
	retw.n
.LVL87:
.L59:
	.loc 1 67 0
	movi.n	a2, 1
.LVL88:
.LBE5:
	.loc 1 71 0
	retw.n
.LFE15:
	.size	list_contains, .-list_contains
	.section	.text.list_free_node,"ax",@progbits
	.literal_position
	.literal .LC59, .LC1
	.literal .LC60, __func__$3556
	.literal .LC61, .LC4
	.literal .LC62, .LC48
	.align	4
	.global	list_free_node
	.type	list_free_node, @function
list_free_node:
.LFB30:
	.loc 1 241 0
.LVL89:
	entry	sp, 32
.LCFI16:
	.loc 1 242 0
	bnez.n	a2, .L61
	.loc 1 242 0 is_stmt 0 discriminator 1
	l32r	a13, .LC59
	l32r	a12, .LC60
	movi	a11, 0xf2
	l32r	a10, .LC61
	call8	__assert_func
.LVL90:
.L61:
	.loc 1 243 0 is_stmt 1
	bnez.n	a3, .L62
	.loc 1 243 0 is_stmt 0 discriminator 1
	l32r	a13, .LC62
	l32r	a12, .LC60
	movi	a11, 0xf3
	l32r	a10, .LC61
	call8	__assert_func
.LVL91:
.L62:
	.loc 1 245 0 is_stmt 1
	l32i.n	a4, a3, 0
.LVL92:
	.loc 1 247 0
	l32i.n	a8, a2, 12
	beqz.n	a8, .L63
	.loc 1 248 0
	l32i.n	a10, a3, 4
	callx8	a8
.LVL93:
.L63:
	.loc 1 250 0
	l32i.n	a8, a2, 16
	l32i.n	a8, a8, 4
	mov.n	a10, a3
	callx8	a8
.LVL94:
	.loc 1 251 0
	l32i.n	a3, a2, 8
.LVL95:
	addi.n	a3, a3, -1
	s32i.n	a3, a2, 8
	.loc 1 254 0
	mov.n	a2, a4
.LVL96:
	retw.n
.LFE30:
	.size	list_free_node, .-list_free_node
	.section	.text.list_remove,"ax",@progbits
	.literal_position
	.literal .LC63, .LC1
	.literal .LC64, __func__$3510
	.literal .LC65, .LC4
	.literal .LC66, .LC27
	.align	4
	.global	list_remove
	.type	list_remove, @function
list_remove:
.LFB23:
	.loc 1 162 0
.LVL97:
	entry	sp, 32
.LCFI17:
	.loc 1 163 0
	bnez.n	a2, .L65
	.loc 1 163 0 is_stmt 0 discriminator 1
	l32r	a13, .LC63
	l32r	a12, .LC64
	movi	a11, 0xa3
	l32r	a10, .LC65
	call8	__assert_func
.LVL98:
.L65:
	.loc 1 164 0 is_stmt 1
	bnez.n	a3, .L66
	.loc 1 164 0 is_stmt 0 discriminator 1
	l32r	a13, .LC66
	l32r	a12, .LC64
	movi	a11, 0xa4
	l32r	a10, .LC65
	call8	__assert_func
.LVL99:
.L66:
	.loc 1 166 0 is_stmt 1
	mov.n	a10, a2
	call8	list_is_empty
.LVL100:
	bnez.n	a10, .L73
	.loc 1 170 0
	l32i.n	a5, a2, 0
	l32i.n	a4, a5, 4
	bne	a3, a4, .L68
.LBB6:
	.loc 1 171 0
	mov.n	a11, a5
	mov.n	a10, a2
	call8	list_free_node
.LVL101:
	.loc 1 172 0
	l32i.n	a4, a2, 4
	l32i.n	a3, a2, 0
.LVL102:
	bne	a4, a3, .L69
	.loc 1 173 0
	s32i.n	a10, a2, 4
.L69:
	.loc 1 175 0
	s32i.n	a10, a2, 0
	.loc 1 176 0
	movi.n	a10, 1
.LVL103:
	j	.L67
.LVL104:
.L68:
.LBE6:
.LBB7:
	.loc 1 179 0
	l32i.n	a4, a5, 0
.LVL105:
	j	.L70
.L72:
	.loc 1 180 0
	l32i.n	a8, a4, 4
	bne	a3, a8, .L71
	.loc 1 181 0
	mov.n	a11, a4
	mov.n	a10, a2
	call8	list_free_node
.LVL106:
	s32i.n	a10, a5, 0
	.loc 1 182 0
	l32i.n	a3, a2, 4
.LVL107:
	bne	a4, a3, .L74
	.loc 1 183 0
	s32i.n	a5, a2, 4
	.loc 1 185 0
	movi.n	a10, 1
	j	.L67
.LVL108:
.L71:
	.loc 1 179 0 discriminator 2
	mov.n	a5, a4
	l32i.n	a4, a4, 0
.LVL109:
.L70:
	.loc 1 179 0 is_stmt 0 discriminator 1
	bnez.n	a4, .L72
	j	.L67
.LVL110:
.L73:
.LBE7:
	.loc 1 167 0 is_stmt 1
	movi.n	a10, 0
	j	.L67
.LVL111:
.L74:
.LBB8:
	.loc 1 185 0
	movi.n	a10, 1
.LVL112:
.L67:
.LBE8:
	.loc 1 189 0
	mov.n	a2, a10
.LVL113:
	retw.n
.LFE23:
	.size	list_remove, .-list_remove
	.section	.text.list_clear,"ax",@progbits
	.literal_position
	.literal .LC67, .LC1
	.literal .LC68, __func__$3520
	.literal .LC69, .LC4
	.align	4
	.global	list_clear
	.type	list_clear, @function
list_clear:
.LFB24:
	.loc 1 192 0
.LVL114:
	entry	sp, 32
.LCFI18:
	.loc 1 193 0
	bnez.n	a2, .L76
	.loc 1 193 0 is_stmt 0 discriminator 1
	l32r	a13, .LC67
	l32r	a12, .LC68
	movi	a11, 0xc1
	l32r	a10, .LC69
	call8	__assert_func
.LVL115:
.L76:
.LBB9:
	.loc 1 194 0 is_stmt 1
	l32i.n	a10, a2, 0
.LVL116:
	j	.L77
.L78:
	.loc 1 195 0
	mov.n	a11, a10
	mov.n	a10, a2
.LVL117:
	call8	list_free_node
.LVL118:
.L77:
	.loc 1 194 0 discriminator 1
	bnez.n	a10, .L78
.LBE9:
	.loc 1 197 0
	movi.n	a8, 0
	s32i.n	a8, a2, 0
	.loc 1 198 0
	s32i.n	a8, a2, 4
	.loc 1 199 0
	s32i.n	a8, a2, 8
	retw.n
.LFE24:
	.size	list_clear, .-list_clear
	.section	.text.list_free,"ax",@progbits
	.align	4
	.global	list_free
	.type	list_free, @function
list_free:
.LFB13:
	.loc 1 45 0
.LVL119:
	entry	sp, 32
.LCFI19:
	.loc 1 46 0
	beqz.n	a2, .L79
	.loc 1 50 0
	mov.n	a10, a2
	call8	list_clear
.LVL120:
	.loc 1 51 0
	l32i.n	a8, a2, 16
	l32i.n	a8, a8, 4
	mov.n	a10, a2
	callx8	a8
.LVL121:
.L79:
	retw.n
.LFE13:
	.size	list_free, .-list_free
	.section	.rodata.__func__$3556,"a",@progbits
	.align	4
	.type	__func__$3556, @object
	.size	__func__$3556, 15
__func__$3556:
	.string	"list_free_node"
	.section	.rodata.__func__$3551,"a",@progbits
	.align	4
	.type	__func__$3551, @object
	.size	__func__$3551, 10
__func__$3551:
	.string	"list_node"
	.section	.rodata.__func__$3547,"a",@progbits
	.align	4
	.type	__func__$3547, @object
	.size	__func__$3547, 10
__func__$3547:
	.string	"list_next"
	.section	.rodata.__func__$3543,"a",@progbits
	.align	4
	.type	__func__$3543, @object
	.size	__func__$3543, 9
__func__$3543:
	.string	"list_end"
	.section	.rodata.__func__$3539,"a",@progbits
	.align	4
	.type	__func__$3539, @object
	.size	__func__$3539, 11
__func__$3539:
	.string	"list_begin"
	.section	.rodata.__func__$3530,"a",@progbits
	.align	4
	.type	__func__$3530, @object
	.size	__func__$3530, 13
__func__$3530:
	.string	"list_foreach"
	.section	.rodata.__func__$3520,"a",@progbits
	.align	4
	.type	__func__$3520, @object
	.size	__func__$3520, 11
__func__$3520:
	.string	"list_clear"
	.section	.rodata.__func__$3510,"a",@progbits
	.align	4
	.type	__func__$3510, @object
	.size	__func__$3510, 12
__func__$3510:
	.string	"list_remove"
	.section	.rodata.__func__$3504,"a",@progbits
	.align	4
	.type	__func__$3504, @object
	.size	__func__$3504, 12
__func__$3504:
	.string	"list_append"
	.section	.rodata.__func__$3498,"a",@progbits
	.align	4
	.type	__func__$3498, @object
	.size	__func__$3498, 13
__func__$3498:
	.string	"list_prepend"
	.section	.rodata.__func__$3492,"a",@progbits
	.align	4
	.type	__func__$3492, @object
	.size	__func__$3492, 18
__func__$3492:
	.string	"list_insert_after"
	.section	.rodata.__func__$3486,"a",@progbits
	.align	4
	.type	__func__$3486, @object
	.size	__func__$3486, 15
__func__$3486:
	.string	"list_back_node"
	.section	.rodata.__func__$3482,"a",@progbits
	.align	4
	.type	__func__$3482, @object
	.size	__func__$3482, 10
__func__$3482:
	.string	"list_back"
	.section	.rodata.__func__$3478,"a",@progbits
	.align	4
	.type	__func__$3478, @object
	.size	__func__$3478, 11
__func__$3478:
	.string	"list_front"
	.section	.rodata.__func__$3474,"a",@progbits
	.align	4
	.type	__func__$3474, @object
	.size	__func__$3474, 12
__func__$3474:
	.string	"list_length"
	.section	.rodata.__func__$3466,"a",@progbits
	.align	4
	.type	__func__$3466, @object
	.size	__func__$3466, 14
__func__$3466:
	.string	"list_contains"
	.section	.rodata.__func__$3461,"a",@progbits
	.align	4
	.type	__func__$3461, @object
	.size	__func__$3461, 14
__func__$3461:
	.string	"list_is_empty"
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
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI1-.LFB12
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI2-.LFB14
	.byte	0xe
	.uleb128 0x20
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
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI5-.LFB18
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI6-.LFB19
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI7-.LFB20
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI8-.LFB21
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI9-.LFB22
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI10-.LFB25
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI11-.LFB26
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI12-.LFB27
	.byte	0xe
	.uleb128 0x20
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
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI16-.LFB30
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI17-.LFB23
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI18-.LFB24
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE36:
.LSFDE38:
	.4byte	.LEFDE38-.LASFDE38
.LASFDE38:
	.4byte	.Lframe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI19-.LFB13
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE38:
	.text
.Letext0:
	.file 2 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/bt_types.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/osi/include/osi/allocator.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/osi/include/osi/list.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/assert.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xf00
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF62
	.byte	0xc
	.4byte	.LASF63
	.4byte	.LASF64
	.4byte	.Ldebug_ranges0+0x30
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF3
	.byte	0x2
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
	.byte	0x3
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
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x6
	.byte	0x4
	.4byte	0x97
	.uleb128 0x7
	.uleb128 0x2
	.4byte	.LASF13
	.byte	0x4
	.byte	0x15
	.4byte	0x4c
	.uleb128 0x2
	.4byte	.LASF14
	.byte	0x5
	.byte	0x21
	.4byte	0x98
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF15
	.uleb128 0x8
	.4byte	0xa3
	.4byte	0xc5
	.uleb128 0x9
	.4byte	0x7a
	.byte	0x5
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xcb
	.uleb128 0xa
	.4byte	0xd6
	.uleb128 0xb
	.4byte	0x81
	.byte	0
	.uleb128 0x2
	.4byte	.LASF16
	.byte	0x6
	.byte	0x1b
	.4byte	0xe1
	.uleb128 0x6
	.byte	0x4
	.4byte	0xe7
	.uleb128 0xc
	.4byte	0x81
	.4byte	0xf6
	.uleb128 0xb
	.4byte	0x25
	.byte	0
	.uleb128 0x2
	.4byte	.LASF17
	.byte	0x6
	.byte	0x1c
	.4byte	0xc5
	.uleb128 0xd
	.byte	0x8
	.byte	0x6
	.byte	0x1e
	.4byte	0x122
	.uleb128 0xe
	.4byte	.LASF18
	.byte	0x6
	.byte	0x1f
	.4byte	0xd6
	.byte	0
	.uleb128 0xe
	.4byte	.LASF19
	.byte	0x6
	.byte	0x20
	.4byte	0xf6
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.4byte	.LASF20
	.byte	0x6
	.byte	0x21
	.4byte	0x101
	.uleb128 0x2
	.4byte	.LASF21
	.byte	0x7
	.byte	0x7
	.4byte	0x138
	.uleb128 0xf
	.4byte	.LASF21
	.byte	0x8
	.byte	0x1
	.byte	0x8
	.4byte	0x15d
	.uleb128 0xe
	.4byte	.LASF22
	.byte	0x1
	.byte	0x9
	.4byte	0x1d6
	.byte	0
	.uleb128 0xe
	.4byte	.LASF23
	.byte	0x1
	.byte	0xa
	.4byte	0x81
	.byte	0x4
	.byte	0
	.uleb128 0xf
	.4byte	.LASF24
	.byte	0x14
	.byte	0x1
	.byte	0xd
	.4byte	0x1a6
	.uleb128 0xe
	.4byte	.LASF25
	.byte	0x1
	.byte	0xe
	.4byte	0x1dc
	.byte	0
	.uleb128 0xe
	.4byte	.LASF26
	.byte	0x1
	.byte	0xf
	.4byte	0x1dc
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF27
	.byte	0x1
	.byte	0x10
	.4byte	0x25
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF28
	.byte	0x1
	.byte	0x11
	.4byte	0x1a6
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF29
	.byte	0x1
	.byte	0x12
	.4byte	0x1e2
	.byte	0x10
	.byte	0
	.uleb128 0x2
	.4byte	.LASF30
	.byte	0x7
	.byte	0xc
	.4byte	0xc5
	.uleb128 0x2
	.4byte	.LASF31
	.byte	0x7
	.byte	0xd
	.4byte	0x1bc
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1c2
	.uleb128 0xc
	.4byte	0xae
	.4byte	0x1d6
	.uleb128 0xb
	.4byte	0x81
	.uleb128 0xb
	.4byte	0x81
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x138
	.uleb128 0x6
	.byte	0x4
	.4byte	0x12d
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1e8
	.uleb128 0x10
	.4byte	0x122
	.uleb128 0x11
	.4byte	.LASF34
	.byte	0x1
	.byte	0x19
	.4byte	0x23b
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x23b
	.uleb128 0x12
	.4byte	.LASF32
	.byte	0x1
	.byte	0x19
	.4byte	0x1a6
	.4byte	.LLST0
	.uleb128 0x13
	.4byte	.LASF33
	.byte	0x1
	.byte	0x19
	.4byte	0x1e2
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x14
	.4byte	.LASF37
	.byte	0x1
	.byte	0x1b
	.4byte	0x23b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x15
	.4byte	.LVL1
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x44
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x15d
	.uleb128 0x11
	.4byte	.LASF35
	.byte	0x1
	.byte	0x27
	.4byte	0x23b
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x27a
	.uleb128 0x12
	.4byte	.LASF32
	.byte	0x1
	.byte	0x27
	.4byte	0x1a6
	.4byte	.LLST1
	.uleb128 0x17
	.4byte	.LVL6
	.4byte	0x1ed
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	.LASF36
	.byte	0x1
	.byte	0x36
	.4byte	0xae
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2dd
	.uleb128 0x12
	.4byte	.LASF37
	.byte	0x1
	.byte	0x36
	.4byte	0x2dd
	.4byte	.LLST2
	.uleb128 0x18
	.4byte	.LASF39
	.4byte	0x2f8
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3461
	.uleb128 0x17
	.4byte	.LVL9
	.4byte	0xef8
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x38
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3461
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2e3
	.uleb128 0x10
	.4byte	0x15d
	.uleb128 0x8
	.4byte	0x8a
	.4byte	0x2f8
	.uleb128 0x9
	.4byte	0x7a
	.byte	0xd
	.byte	0
	.uleb128 0x10
	.4byte	0x2e8
	.uleb128 0x11
	.4byte	.LASF38
	.byte	0x1
	.byte	0x49
	.4byte	0x25
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x360
	.uleb128 0x12
	.4byte	.LASF37
	.byte	0x1
	.byte	0x49
	.4byte	0x2dd
	.4byte	.LLST3
	.uleb128 0x18
	.4byte	.LASF39
	.4byte	0x370
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3474
	.uleb128 0x17
	.4byte	.LVL12
	.4byte	0xef8
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x4b
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3474
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0x8a
	.4byte	0x370
	.uleb128 0x9
	.4byte	0x7a
	.byte	0xb
	.byte	0
	.uleb128 0x10
	.4byte	0x360
	.uleb128 0x11
	.4byte	.LASF40
	.byte	0x1
	.byte	0x4f
	.4byte	0x81
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x41b
	.uleb128 0x12
	.4byte	.LASF37
	.byte	0x1
	.byte	0x4f
	.4byte	0x2dd
	.4byte	.LLST4
	.uleb128 0x18
	.4byte	.LASF39
	.4byte	0x42b
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3478
	.uleb128 0x19
	.4byte	.LVL15
	.4byte	0xef8
	.4byte	0x3db
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x51
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3478
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x19
	.4byte	.LVL16
	.4byte	0x27a
	.4byte	0x3ef
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL17
	.4byte	0xef8
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x52
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3478
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC12
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0x8a
	.4byte	0x42b
	.uleb128 0x9
	.4byte	0x7a
	.byte	0xa
	.byte	0
	.uleb128 0x10
	.4byte	0x41b
	.uleb128 0x11
	.4byte	.LASF41
	.byte	0x1
	.byte	0x57
	.4byte	0x81
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4d6
	.uleb128 0x12
	.4byte	.LASF37
	.byte	0x1
	.byte	0x57
	.4byte	0x2dd
	.4byte	.LLST5
	.uleb128 0x18
	.4byte	.LASF39
	.4byte	0x4e6
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3482
	.uleb128 0x19
	.4byte	.LVL20
	.4byte	0xef8
	.4byte	0x496
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x58
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3482
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x19
	.4byte	.LVL21
	.4byte	0x27a
	.4byte	0x4aa
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL22
	.4byte	0xef8
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x59
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3482
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC12
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0x8a
	.4byte	0x4e6
	.uleb128 0x9
	.4byte	0x7a
	.byte	0x9
	.byte	0
	.uleb128 0x10
	.4byte	0x4d6
	.uleb128 0x11
	.4byte	.LASF42
	.byte	0x1
	.byte	0x5e
	.4byte	0x1dc
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x591
	.uleb128 0x12
	.4byte	.LASF37
	.byte	0x1
	.byte	0x5e
	.4byte	0x2dd
	.4byte	.LLST6
	.uleb128 0x18
	.4byte	.LASF39
	.4byte	0x5a1
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3486
	.uleb128 0x19
	.4byte	.LVL25
	.4byte	0xef8
	.4byte	0x551
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x5f
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3486
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x19
	.4byte	.LVL26
	.4byte	0x27a
	.4byte	0x565
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL27
	.4byte	0xef8
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x60
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3486
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC12
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0x8a
	.4byte	0x5a1
	.uleb128 0x9
	.4byte	0x7a
	.byte	0xe
	.byte	0
	.uleb128 0x10
	.4byte	0x591
	.uleb128 0x11
	.4byte	.LASF43
	.byte	0x1
	.byte	0x65
	.4byte	0xae
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6a1
	.uleb128 0x12
	.4byte	.LASF37
	.byte	0x1
	.byte	0x65
	.4byte	0x23b
	.4byte	.LLST7
	.uleb128 0x12
	.4byte	.LASF44
	.byte	0x1
	.byte	0x65
	.4byte	0x1dc
	.4byte	.LLST8
	.uleb128 0x12
	.4byte	.LASF23
	.byte	0x1
	.byte	0x65
	.4byte	0x81
	.4byte	.LLST9
	.uleb128 0x18
	.4byte	.LASF39
	.4byte	0x6b1
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3492
	.uleb128 0x14
	.4byte	.LASF45
	.byte	0x1
	.byte	0x6a
	.4byte	0x1dc
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x19
	.4byte	.LVL30
	.4byte	0xef8
	.4byte	0x637
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x66
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3492
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x19
	.4byte	.LVL31
	.4byte	0xef8
	.4byte	0x666
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x67
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3492
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC25
	.byte	0
	.uleb128 0x19
	.4byte	.LVL32
	.4byte	0xef8
	.4byte	0x695
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x68
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3492
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC27
	.byte	0
	.uleb128 0x15
	.4byte	.LVL33
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0x8a
	.4byte	0x6b1
	.uleb128 0x9
	.4byte	0x7a
	.byte	0x11
	.byte	0
	.uleb128 0x10
	.4byte	0x6a1
	.uleb128 0x11
	.4byte	.LASF46
	.byte	0x1
	.byte	0x78
	.4byte	0xae
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x773
	.uleb128 0x12
	.4byte	.LASF37
	.byte	0x1
	.byte	0x78
	.4byte	0x23b
	.4byte	.LLST10
	.uleb128 0x12
	.4byte	.LASF23
	.byte	0x1
	.byte	0x78
	.4byte	0x81
	.4byte	.LLST11
	.uleb128 0x18
	.4byte	.LASF39
	.4byte	0x783
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3498
	.uleb128 0x14
	.4byte	.LASF45
	.byte	0x1
	.byte	0x7d
	.4byte	0x1dc
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x19
	.4byte	.LVL40
	.4byte	0xef8
	.4byte	0x738
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x7a
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3498
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x19
	.4byte	.LVL41
	.4byte	0xef8
	.4byte	0x767
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x7b
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3498
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC27
	.byte	0
	.uleb128 0x15
	.4byte	.LVL42
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0x8a
	.4byte	0x783
	.uleb128 0x9
	.4byte	0x7a
	.byte	0xc
	.byte	0
	.uleb128 0x10
	.4byte	0x773
	.uleb128 0x11
	.4byte	.LASF47
	.byte	0x1
	.byte	0x8b
	.4byte	0xae
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x845
	.uleb128 0x12
	.4byte	.LASF37
	.byte	0x1
	.byte	0x8b
	.4byte	0x23b
	.4byte	.LLST12
	.uleb128 0x12
	.4byte	.LASF23
	.byte	0x1
	.byte	0x8b
	.4byte	0x81
	.4byte	.LLST13
	.uleb128 0x18
	.4byte	.LASF39
	.4byte	0x845
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3504
	.uleb128 0x14
	.4byte	.LASF45
	.byte	0x1
	.byte	0x90
	.4byte	0x1dc
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x19
	.4byte	.LVL48
	.4byte	0xef8
	.4byte	0x80a
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x8d
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3504
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x19
	.4byte	.LVL49
	.4byte	0xef8
	.4byte	0x839
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x8e
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3504
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC27
	.byte	0
	.uleb128 0x15
	.4byte	.LVL50
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	0x360
	.uleb128 0x11
	.4byte	.LASF48
	.byte	0x1
	.byte	0xca
	.4byte	0x1dc
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x936
	.uleb128 0x12
	.4byte	.LASF37
	.byte	0x1
	.byte	0xca
	.4byte	0x2dd
	.4byte	.LLST14
	.uleb128 0x13
	.4byte	.LASF32
	.byte	0x1
	.byte	0xca
	.4byte	0x1b1
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x13
	.4byte	.LASF49
	.byte	0x1
	.byte	0xca
	.4byte	0x81
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x18
	.4byte	.LASF39
	.4byte	0x936
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3530
	.uleb128 0x1a
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.4byte	0x8db
	.uleb128 0x14
	.4byte	.LASF45
	.byte	0x1
	.byte	0xcf
	.4byte	0x1dc
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1b
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.uleb128 0x1c
	.4byte	.LASF22
	.byte	0x1
	.byte	0xd0
	.4byte	0x1dc
	.4byte	.LLST15
	.uleb128 0x15
	.4byte	.LVL63
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL59
	.4byte	0xef8
	.4byte	0x90a
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xcc
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3530
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x17
	.4byte	.LVL60
	.4byte	0xef8
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xcd
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3530
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC40
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	0x773
	.uleb128 0x11
	.4byte	.LASF50
	.byte	0x1
	.byte	0xd8
	.4byte	0x1dc
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x99e
	.uleb128 0x12
	.4byte	.LASF37
	.byte	0x1
	.byte	0xd8
	.4byte	0x2dd
	.4byte	.LLST16
	.uleb128 0x18
	.4byte	.LASF39
	.4byte	0x99e
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3539
	.uleb128 0x17
	.4byte	.LVL66
	.4byte	0xef8
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xda
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3539
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	0x41b
	.uleb128 0x11
	.4byte	.LASF51
	.byte	0x1
	.byte	0xde
	.4byte	0x1dc
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa06
	.uleb128 0x12
	.4byte	.LASF37
	.byte	0x1
	.byte	0xde
	.4byte	0x2dd
	.4byte	.LLST17
	.uleb128 0x18
	.4byte	.LASF39
	.4byte	0xa16
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3543
	.uleb128 0x17
	.4byte	.LVL69
	.4byte	0xef8
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xe0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3543
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0x8a
	.4byte	0xa16
	.uleb128 0x9
	.4byte	0x7a
	.byte	0x8
	.byte	0
	.uleb128 0x10
	.4byte	0xa06
	.uleb128 0x11
	.4byte	.LASF52
	.byte	0x1
	.byte	0xe4
	.4byte	0x1dc
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa7e
	.uleb128 0x12
	.4byte	.LASF45
	.byte	0x1
	.byte	0xe4
	.4byte	0xa7e
	.4byte	.LLST18
	.uleb128 0x18
	.4byte	.LASF39
	.4byte	0xa89
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3547
	.uleb128 0x17
	.4byte	.LVL72
	.4byte	0xef8
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xe6
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3547
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC48
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa84
	.uleb128 0x10
	.4byte	0x12d
	.uleb128 0x10
	.4byte	0x4d6
	.uleb128 0x11
	.4byte	.LASF53
	.byte	0x1
	.byte	0xea
	.4byte	0x81
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xaf1
	.uleb128 0x12
	.4byte	.LASF45
	.byte	0x1
	.byte	0xea
	.4byte	0xa7e
	.4byte	.LLST19
	.uleb128 0x18
	.4byte	.LASF39
	.4byte	0xaf1
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3551
	.uleb128 0x17
	.4byte	.LVL75
	.4byte	0xef8
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xec
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3551
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC48
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	0x4d6
	.uleb128 0x11
	.4byte	.LASF54
	.byte	0x1
	.byte	0x3c
	.4byte	0xae
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbf8
	.uleb128 0x12
	.4byte	.LASF37
	.byte	0x1
	.byte	0x3c
	.4byte	0x2dd
	.4byte	.LLST20
	.uleb128 0x13
	.4byte	.LASF23
	.byte	0x1
	.byte	0x3c
	.4byte	0x91
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x18
	.4byte	.LASF39
	.4byte	0xbf8
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3466
	.uleb128 0x1d
	.4byte	.Ldebug_ranges0+0
	.4byte	0xb9d
	.uleb128 0x14
	.4byte	.LASF45
	.byte	0x1
	.byte	0x41
	.4byte	0xa7e
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x19
	.4byte	.LVL80
	.4byte	0x93b
	.4byte	0xb64
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL82
	.4byte	0xa8e
	.4byte	0xb78
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL83
	.4byte	0xa1b
	.4byte	0xb8c
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL85
	.4byte	0x9a3
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL78
	.4byte	0xef8
	.4byte	0xbcc
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x3e
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3466
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x17
	.4byte	.LVL79
	.4byte	0xef8
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x3f
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3466
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC27
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	0x2e8
	.uleb128 0x1e
	.4byte	.LASF55
	.byte	0x1
	.byte	0xf0
	.4byte	0x1dc
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcbb
	.uleb128 0x12
	.4byte	.LASF37
	.byte	0x1
	.byte	0xf0
	.4byte	0x23b
	.4byte	.LLST21
	.uleb128 0x12
	.4byte	.LASF45
	.byte	0x1
	.byte	0xf0
	.4byte	0x1dc
	.4byte	.LLST22
	.uleb128 0x18
	.4byte	.LASF39
	.4byte	0xcbb
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3556
	.uleb128 0x14
	.4byte	.LASF22
	.byte	0x1
	.byte	0xf5
	.4byte	0x1dc
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x19
	.4byte	.LVL90
	.4byte	0xef8
	.4byte	0xc7f
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xf2
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3556
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x19
	.4byte	.LVL91
	.4byte	0xef8
	.4byte	0xcae
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xf3
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3556
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC48
	.byte	0
	.uleb128 0x15
	.4byte	.LVL94
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	0x591
	.uleb128 0x11
	.4byte	.LASF56
	.byte	0x1
	.byte	0xa1
	.4byte	0xae
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xde6
	.uleb128 0x12
	.4byte	.LASF37
	.byte	0x1
	.byte	0xa1
	.4byte	0x23b
	.4byte	.LLST23
	.uleb128 0x12
	.4byte	.LASF23
	.byte	0x1
	.byte	0xa1
	.4byte	0x81
	.4byte	.LLST24
	.uleb128 0x18
	.4byte	.LASF39
	.4byte	0xde6
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3510
	.uleb128 0x1a
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.4byte	0xd39
	.uleb128 0x1c
	.4byte	.LASF22
	.byte	0x1
	.byte	0xab
	.4byte	0x1dc
	.4byte	.LLST25
	.uleb128 0x17
	.4byte	.LVL101
	.4byte	0xbfd
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0xd77
	.uleb128 0x1c
	.4byte	.LASF57
	.byte	0x1
	.byte	0xb3
	.4byte	0x1dc
	.4byte	.LLST26
	.uleb128 0x1c
	.4byte	.LASF45
	.byte	0x1
	.byte	0xb3
	.4byte	0x1dc
	.4byte	.LLST27
	.uleb128 0x17
	.4byte	.LVL106
	.4byte	0xbfd
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL98
	.4byte	0xef8
	.4byte	0xda6
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xa3
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3510
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x19
	.4byte	.LVL99
	.4byte	0xef8
	.4byte	0xdd5
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xa4
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3510
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC27
	.byte	0
	.uleb128 0x17
	.4byte	.LVL100
	.4byte	0x27a
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	0x360
	.uleb128 0x1f
	.4byte	.LASF58
	.byte	0x1
	.byte	0xbf
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe75
	.uleb128 0x13
	.4byte	.LASF37
	.byte	0x1
	.byte	0xbf
	.4byte	0x23b
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x18
	.4byte	.LASF39
	.4byte	0xe75
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3520
	.uleb128 0x1a
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.4byte	0xe49
	.uleb128 0x1c
	.4byte	.LASF45
	.byte	0x1
	.byte	0xc2
	.4byte	0x1dc
	.4byte	.LLST28
	.uleb128 0x17
	.4byte	.LVL118
	.4byte	0xbfd
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL115
	.4byte	0xef8
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xc1
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3520
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	0x41b
	.uleb128 0x1f
	.4byte	.LASF59
	.byte	0x1
	.byte	0x2c
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xebd
	.uleb128 0x13
	.4byte	.LASF37
	.byte	0x1
	.byte	0x2c
	.4byte	0x23b
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x19
	.4byte	.LVL120
	.4byte	0xdeb
	.4byte	0xeb0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL121
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LASF60
	.byte	0x5
	.2byte	0x2cc
	.4byte	0xed0
	.byte	0x6
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.uleb128 0x10
	.4byte	0xb5
	.uleb128 0x20
	.4byte	.LASF61
	.byte	0x5
	.2byte	0x2cd
	.4byte	0xee8
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	0xb5
	.uleb128 0x21
	.4byte	.LASF65
	.byte	0x6
	.byte	0x25
	.4byte	0x1e8
	.uleb128 0x22
	.4byte	.LASF66
	.4byte	.LASF66
	.byte	0x8
	.byte	0x29
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0x10
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0x15
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
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
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
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
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x2
	.byte	0x7a
	.sleb128 12
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL4
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL5
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL7
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL8
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL10
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL11
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL13
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL14
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL18
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL19
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL23
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL24
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL28
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL29
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL38
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL29
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL35
	.4byte	.LVL37
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL37
	.4byte	.LFE20
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL29
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL34
	.4byte	.LVL37
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL37
	.4byte	.LFE20
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL39
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL46
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL39
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL43
	.4byte	.LVL45
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL45
	.4byte	.LFE21
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL47
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
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL57
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL47
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x2
	.byte	0x7a
	.sleb128 4
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x2
	.byte	0x7a
	.sleb128 4
	.4byte	.LVL54
	.4byte	.LVL56
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL56
	.4byte	.LFE22
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL58
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL61
	.4byte	.LFE25
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL62
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL65
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL67
	.4byte	.LFE26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL68
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL70
	.4byte	.LFE27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL71
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL73
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL74
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL76
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL77
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
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL88
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL89
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL96
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL89
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL95
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL97
	.4byte	.LVL113
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL113
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL97
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL102
	.4byte	.LVL104
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL104
	.4byte	.LVL107
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL107
	.4byte	.LVL108
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL108
	.4byte	.LVL111
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL111
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL101
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL103
	.4byte	.LVL104
	.2byte	0x2
	.byte	0x72
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL104
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL108
	.4byte	.LVL109
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL109
	.4byte	.LVL110
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL111
	.4byte	.LVL112
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL105
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL108
	.4byte	.LVL109
	.2byte	0x2
	.byte	0x74
	.sleb128 0
	.4byte	.LVL109
	.4byte	.LVL110
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL111
	.4byte	.LVL112
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL116
	.4byte	.LVL117
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL117
	.4byte	.LVL118-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL118
	.4byte	.LFE24
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0xb4
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
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
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB4
	.4byte	.LBE4
	.4byte	.LBB5
	.4byte	.LBE5
	.4byte	0
	.4byte	0
	.4byte	.LBB7
	.4byte	.LBE7
	.4byte	.LBB8
	.4byte	.LBE8
	.4byte	0
	.4byte	0
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB14
	.4byte	.LFE14
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
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF61:
	.string	"bd_addr_null"
.LASF38:
	.string	"list_length"
.LASF29:
	.string	"allocator"
.LASF6:
	.string	"short int"
.LASF3:
	.string	"size_t"
.LASF24:
	.string	"list_t"
.LASF59:
	.string	"list_free"
.LASF10:
	.string	"sizetype"
.LASF16:
	.string	"alloc_fn"
.LASF47:
	.string	"list_append"
.LASF21:
	.string	"list_node_t"
.LASF35:
	.string	"list_new"
.LASF44:
	.string	"prev_node"
.LASF25:
	.string	"head"
.LASF13:
	.string	"uint8_t"
.LASF53:
	.string	"list_node"
.LASF33:
	.string	"zeroed_allocator"
.LASF19:
	.string	"free"
.LASF50:
	.string	"list_begin"
.LASF20:
	.string	"allocator_t"
.LASF30:
	.string	"list_free_cb"
.LASF43:
	.string	"list_insert_after"
.LASF7:
	.string	"long long int"
.LASF46:
	.string	"list_prepend"
.LASF51:
	.string	"list_end"
.LASF34:
	.string	"list_new_internal"
.LASF9:
	.string	"long int"
.LASF56:
	.string	"list_remove"
.LASF14:
	.string	"UINT8"
.LASF4:
	.string	"__uint8_t"
.LASF49:
	.string	"context"
.LASF36:
	.string	"list_is_empty"
.LASF45:
	.string	"node"
.LASF5:
	.string	"unsigned char"
.LASF27:
	.string	"length"
.LASF26:
	.string	"tail"
.LASF40:
	.string	"list_front"
.LASF64:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\bt"
.LASF2:
	.string	"signed char"
.LASF41:
	.string	"list_back"
.LASF8:
	.string	"long long unsigned int"
.LASF0:
	.string	"unsigned int"
.LASF58:
	.string	"list_clear"
.LASF63:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/osi/list.c"
.LASF18:
	.string	"alloc"
.LASF39:
	.string	"__func__"
.LASF1:
	.string	"short unsigned int"
.LASF12:
	.string	"char"
.LASF37:
	.string	"list"
.LASF42:
	.string	"list_back_node"
.LASF48:
	.string	"list_foreach"
.LASF15:
	.string	"_Bool"
.LASF23:
	.string	"data"
.LASF11:
	.string	"long unsigned int"
.LASF55:
	.string	"list_free_node"
.LASF31:
	.string	"list_iter_cb"
.LASF52:
	.string	"list_next"
.LASF17:
	.string	"free_fn"
.LASF60:
	.string	"bd_addr_any"
.LASF54:
	.string	"list_contains"
.LASF66:
	.string	"__assert_func"
.LASF57:
	.string	"prev"
.LASF65:
	.string	"allocator_calloc"
.LASF62:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF22:
	.string	"next"
.LASF32:
	.string	"callback"
.LASF28:
	.string	"free_cb"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
