	.file	"p_256_ecc_pp.c"
	.text
.Ltext0:
	.section	.text.p_256_init_point,"ax",@progbits
	.align	4
	.type	p_256_init_point, @function
p_256_init_point:
.LFB4:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/smp/p_256_ecc_pp.c"
	.loc 1 34 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 35 0
	movi	a12, 0x60
	movi.n	a11, 0
	mov.n	a10, a2
	call8	memset
.LVL1:
	retw.n
.LFE4:
	.size	p_256_init_point, .-p_256_init_point
	.section	.text.ECC_NAF,"ax",@progbits
	.align	4
	.type	ECC_NAF, @function
ECC_NAF:
.LFB8:
	.loc 1 154 0
.LVL2:
	entry	sp, 32
.LCFI1:
.LVL3:
	.loc 1 156 0
	movi.n	a6, 0
	.loc 1 160 0
	j	.L3
.LVL4:
.L7:
	.loc 1 161 0
	l32i.n	a8, a4, 0
	bbci	a8, 0, .L8
	.loc 1 162 0
	extui	a7, a8, 0, 2
.LVL5:
	.loc 1 165 0
	bnei	a7, 1, .L5
	.loc 1 166 0
	movi.n	a9, -2
	and	a8, a8, a9
	s32i.n	a8, a4, 0
	j	.L4
.L5:
	.loc 1 168 0
	addi.n	a8, a8, 1
	s32i.n	a8, a4, 0
	.loc 1 169 0
	bnez.n	a8, .L4
	movi.n	a9, 1
.LVL6:
.L6:
	.loc 1 172 0 discriminator 1
	addx4	a10, a9, a4
	l32i.n	a8, a10, 0
	addi.n	a8, a8, 1
	s32i.n	a8, a10, 0
	.loc 1 173 0 discriminator 1
	addi.n	a9, a9, 1
.LVL7:
	beqz.n	a8, .L6
	j	.L4
.LVL8:
.L8:
	.loc 1 177 0
	movi.n	a7, 0
.LVL9:
.L4:
	.loc 1 180 0
	mov.n	a12, a5
	mov.n	a11, a4
	mov.n	a10, a4
	call8	multiprecision_rshift
.LVL10:
	.loc 1 181 0
	addi.n	a8, a6, 3
	movgez	a8, a6, a6
	srai	a8, a8, 2
	add.n	a8, a2, a8
	srai	a9, a6, 31
	extui	a10, a9, 30, 2
	add.n	a9, a6, a10
	extui	a9, a9, 0, 2
	sub	a9, a9, a10
	slli	a9, a9, 1
	ssl	a9
	sll	a7, a7
.LVL11:
	l8ui	a9, a8, 0
	or	a7, a7, a9
	s8i	a7, a8, 0
	.loc 1 182 0
	addi.n	a6, a6, 1
.LVL12:
.L3:
	.loc 1 160 0
	mov.n	a11, a5
	mov.n	a10, a4
	call8	multiprecision_most_signbits
.LVL13:
	bnez.n	a10, .L7
	.loc 1 185 0
	s32i.n	a6, a3, 0
	retw.n
.LFE8:
	.size	ECC_NAF, .-ECC_NAF
	.section	.text.ECC_Double,"ax",@progbits
	.align	4
	.type	ECC_Double, @function
ECC_Double:
.LFB6:
	.loc 1 45 0
.LVL14:
	entry	sp, 144
.LCFI2:
	.loc 1 56 0
	addi	a7, a3, 64
	mov.n	a11, a4
	mov.n	a10, a7
	call8	multiprecision_iszero
.LVL15:
	beqz.n	a10, .L10
	.loc 1 57 0
	mov.n	a11, a4
	addi	a10, a2, 64
	call8	multiprecision_init
.LVL16:
	retw.n
.L10:
.LVL17:
	.loc 1 61 0
	addi	a5, a3, 32
	s32i	a5, sp, 96
.LVL18:
	.loc 1 62 0
	addi	a5, a2, 32
.LVL19:
	addi	a6, a2, 64
.LVL20:
	.loc 1 64 0
	mov.n	a12, a4
	mov.n	a11, a7
	mov.n	a10, sp
	call8	multiprecision_mersenns_squa_mod
.LVL21:
	.loc 1 65 0
	mov.n	a13, a4
	mov.n	a12, sp
	mov.n	a11, a3
	addi	a10, sp, 32
	call8	multiprecision_sub_mod
.LVL22:
	.loc 1 66 0
	mov.n	a13, a4
	mov.n	a12, sp
	mov.n	a11, a3
	mov.n	a10, sp
	call8	multiprecision_add_mod
.LVL23:
	.loc 1 67 0
	mov.n	a13, a4
	addi	a12, sp, 32
	mov.n	a11, sp
	mov.n	a10, a12
	call8	multiprecision_mersenns_mult_mod
.LVL24:
	.loc 1 68 0
	mov.n	a12, a4
	addi	a11, sp, 32
	addi	a10, sp, 64
	call8	multiprecision_lshift_mod
.LVL25:
	.loc 1 69 0
	mov.n	a13, a4
	addi	a12, sp, 32
	addi	a11, sp, 64
	mov.n	a10, a12
	call8	multiprecision_add_mod
.LVL26:
	.loc 1 71 0
	mov.n	a13, a4
	mov.n	a12, a7
	l32i	a11, sp, 96
	mov.n	a10, a6
	call8	multiprecision_mersenns_mult_mod
.LVL27:
	.loc 1 72 0
	mov.n	a12, a4
	mov.n	a11, a6
	mov.n	a10, a6
	call8	multiprecision_lshift_mod
.LVL28:
	.loc 1 74 0
	mov.n	a12, a4
	l32i	a11, sp, 96
	mov.n	a10, a5
	call8	multiprecision_mersenns_squa_mod
.LVL29:
	.loc 1 75 0
	mov.n	a12, a4
	mov.n	a11, a5
	mov.n	a10, a5
	call8	multiprecision_lshift_mod
.LVL30:
	.loc 1 76 0
	mov.n	a13, a4
	mov.n	a12, a3
	mov.n	a11, a5
	addi	a10, sp, 64
	call8	multiprecision_mersenns_mult_mod
.LVL31:
	.loc 1 77 0
	mov.n	a12, a4
	addi	a11, sp, 64
	mov.n	a10, a11
	call8	multiprecision_lshift_mod
.LVL32:
	.loc 1 78 0
	mov.n	a12, a4
	mov.n	a11, a5
	mov.n	a10, a5
	call8	multiprecision_mersenns_squa_mod
.LVL33:
	.loc 1 79 0
	mov.n	a12, a4
	mov.n	a11, a5
	mov.n	a10, a5
	call8	multiprecision_lshift_mod
.LVL34:
	.loc 1 81 0
	mov.n	a12, a4
	addi	a11, sp, 32
	mov.n	a10, a2
	call8	multiprecision_mersenns_squa_mod
.LVL35:
	.loc 1 82 0
	mov.n	a12, a4
	addi	a11, sp, 64
	mov.n	a10, sp
	call8	multiprecision_lshift_mod
.LVL36:
	.loc 1 83 0
	mov.n	a13, a4
	mov.n	a12, sp
	mov.n	a11, a2
	mov.n	a10, a2
	call8	multiprecision_sub_mod
.LVL37:
	.loc 1 84 0
	mov.n	a13, a4
	mov.n	a12, a2
	addi	a11, sp, 64
	mov.n	a10, sp
	call8	multiprecision_sub_mod
.LVL38:
	.loc 1 85 0
	mov.n	a13, a4
	addi	a12, sp, 32
	mov.n	a11, sp
	mov.n	a10, sp
	call8	multiprecision_mersenns_mult_mod
.LVL39:
	.loc 1 86 0
	mov.n	a13, a4
	mov.n	a12, a5
	mov.n	a11, sp
	mov.n	a10, a5
	call8	multiprecision_sub_mod
.LVL40:
	retw.n
.LFE6:
	.size	ECC_Double, .-ECC_Double
	.section	.text.p_256_copy_point,"ax",@progbits
	.align	4
	.type	p_256_copy_point, @function
p_256_copy_point:
.LFB5:
	.loc 1 39 0
.LVL41:
	entry	sp, 32
.LCFI3:
	.loc 1 40 0
	movi	a12, 0x60
	mov.n	a11, a3
	mov.n	a10, a2
	call8	memcpy
.LVL42:
	retw.n
.LFE5:
	.size	p_256_copy_point, .-p_256_copy_point
	.section	.text.ECC_Add,"ax",@progbits
	.align	4
	.type	ECC_Add, @function
ECC_Add:
.LFB7:
	.loc 1 91 0
.LVL43:
	entry	sp, 112
.LCFI4:
	mov.n	a7, a5
.LVL44:
	.loc 1 104 0
	addi	a5, a3, 32
.LVL45:
	s32i	a5, sp, 64
.LVL46:
	addi	a5, a3, 64
.LVL47:
	.loc 1 105 0
	addi	a6, a4, 32
	s32i	a6, sp, 68
.LVL48:
	.loc 1 106 0
	addi	a6, a2, 32
.LVL49:
	addi	a8, a2, 64
	s32i	a8, sp, 72
.LVL50:
	.loc 1 109 0
	mov.n	a11, a7
	addi	a10, a4, 64
.LVL51:
	call8	multiprecision_iszero
.LVL52:
	beqz.n	a10, .L14
	.loc 1 110 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	p_256_copy_point
.LVL53:
	.loc 1 111 0
	retw.n
.L14:
	.loc 1 115 0
	mov.n	a11, a7
	mov.n	a10, a5
	call8	multiprecision_iszero
.LVL54:
	beqz.n	a10, .L16
	.loc 1 116 0
	mov.n	a11, a4
	mov.n	a10, a2
	call8	p_256_copy_point
.LVL55:
	.loc 1 117 0
	retw.n
.L16:
	.loc 1 120 0
	mov.n	a12, a7
	mov.n	a11, a5
	mov.n	a10, sp
	call8	multiprecision_mersenns_squa_mod
.LVL56:
	.loc 1 121 0
	mov.n	a13, a7
	mov.n	a12, sp
	mov.n	a11, a5
	addi	a10, sp, 32
	call8	multiprecision_mersenns_mult_mod
.LVL57:
	.loc 1 122 0
	mov.n	a13, a7
	mov.n	a12, sp
	mov.n	a11, a4
	mov.n	a10, sp
	call8	multiprecision_mersenns_mult_mod
.LVL58:
	.loc 1 123 0
	mov.n	a13, a7
	addi	a12, sp, 32
	l32i	a11, sp, 68
	mov.n	a10, a12
	call8	multiprecision_mersenns_mult_mod
.LVL59:
	.loc 1 125 0
	mov.n	a13, a7
	mov.n	a12, a3
	mov.n	a11, sp
	mov.n	a10, sp
	call8	multiprecision_sub_mod
.LVL60:
	.loc 1 126 0
	mov.n	a13, a7
	l32i	a12, sp, 64
	addi	a11, sp, 32
	mov.n	a10, a11
	call8	multiprecision_sub_mod
.LVL61:
	.loc 1 128 0
	mov.n	a11, a7
	mov.n	a10, sp
	call8	multiprecision_iszero
.LVL62:
	beqz.n	a10, .L17
	.loc 1 129 0
	mov.n	a11, a7
	addi	a10, sp, 32
	call8	multiprecision_iszero
.LVL63:
	beqz.n	a10, .L18
	.loc 1 130 0
	mov.n	a12, a7
	mov.n	a11, a4
	mov.n	a10, a2
	call8	ECC_Double
.LVL64:
	.loc 1 131 0
	retw.n
.L18:
	.loc 1 133 0
	mov.n	a11, a7
	l32i	a10, sp, 72
	call8	multiprecision_init
.LVL65:
	.loc 1 134 0
	retw.n
.L17:
	.loc 1 138 0
	mov.n	a13, a7
	mov.n	a12, sp
	mov.n	a11, a5
	l32i	a10, sp, 72
	call8	multiprecision_mersenns_mult_mod
.LVL66:
	.loc 1 139 0
	mov.n	a12, a7
	mov.n	a11, sp
	mov.n	a10, a6
	call8	multiprecision_mersenns_squa_mod
.LVL67:
	.loc 1 140 0
	mov.n	a13, a7
	mov.n	a12, sp
	mov.n	a11, a6
	mov.n	a10, a5
	call8	multiprecision_mersenns_mult_mod
.LVL68:
	.loc 1 141 0
	mov.n	a13, a7
	mov.n	a12, a3
	mov.n	a11, a6
	mov.n	a10, a6
	call8	multiprecision_mersenns_mult_mod
.LVL69:
	.loc 1 142 0
	mov.n	a12, a7
	mov.n	a11, a6
	mov.n	a10, sp
	call8	multiprecision_lshift_mod
.LVL70:
	.loc 1 143 0
	mov.n	a12, a7
	addi	a11, sp, 32
	mov.n	a10, a2
	call8	multiprecision_mersenns_squa_mod
.LVL71:
	.loc 1 144 0
	mov.n	a13, a7
	mov.n	a12, sp
	mov.n	a11, a2
	mov.n	a10, a2
	call8	multiprecision_sub_mod
.LVL72:
	.loc 1 145 0
	mov.n	a13, a7
	mov.n	a12, a5
	mov.n	a11, a2
	mov.n	a10, a2
	call8	multiprecision_sub_mod
.LVL73:
	.loc 1 146 0
	mov.n	a13, a7
	mov.n	a12, a2
	mov.n	a11, a6
	mov.n	a10, a6
	call8	multiprecision_sub_mod
.LVL74:
	.loc 1 147 0
	mov.n	a13, a7
	addi	a12, sp, 32
	mov.n	a11, a6
	mov.n	a10, a6
	call8	multiprecision_mersenns_mult_mod
.LVL75:
	.loc 1 148 0
	mov.n	a13, a7
	l32i	a12, sp, 64
	mov.n	a11, a5
	mov.n	a10, a5
	call8	multiprecision_mersenns_mult_mod
.LVL76:
	.loc 1 149 0
	mov.n	a13, a7
	mov.n	a12, a5
	mov.n	a11, a6
	mov.n	a10, a6
	call8	multiprecision_sub_mod
.LVL77:
	retw.n
.LFE7:
	.size	ECC_Add, .-ECC_Add
	.section	.text.ECC_PointMult_Bin_NAF,"ax",@progbits
	.literal_position
	.literal .LC0, curve_p256+68
	.literal .LC1, curve+68
	.align	4
	.global	ECC_PointMult_Bin_NAF
	.type	ECC_PointMult_Bin_NAF, @function
ECC_PointMult_Bin_NAF:
.LFB9:
	.loc 1 190 0
.LVL78:
	entry	sp, 304
.LCFI5:
	.loc 1 198 0
	bnei	a5, 8, .L26
	.loc 1 199 0
	l32r	a7, .LC0
	j	.L21
.L26:
	.loc 1 201 0
	l32r	a7, .LC1
.L21:
.LVL79:
	.loc 1 204 0
	movi	a10, 0xa8
	add.n	a10, sp, a10
	call8	p_256_init_point
.LVL80:
	.loc 1 205 0
	mov.n	a11, a5
	addi	a10, a3, 64
	call8	multiprecision_init
.LVL81:
	.loc 1 206 0
	movi.n	a6, 1
	s32i	a6, a3, 64
	.loc 1 209 0
	mov.n	a10, a2
	call8	p_256_init_point
.LVL82:
	.loc 1 212 0
	mov.n	a12, a5
	mov.n	a11, a3
	addi	a10, sp, 72
	call8	multiprecision_copy
.LVL83:
	.loc 1 213 0
	mov.n	a13, a5
	addi	a12, a3, 32
	mov.n	a11, a7
	addi	a10, sp, 104
	call8	multiprecision_sub
.LVL84:
	.loc 1 215 0
	mov.n	a11, a5
	addi	a8, sp, 72
	addi	a10, a8, 64
	call8	multiprecision_init
.LVL85:
	.loc 1 216 0
	s32i	a6, sp, 136
	.loc 1 219 0
	movi.n	a12, 0x41
	movi.n	a11, 0
	mov.n	a10, sp
	call8	memset
.LVL86:
	.loc 1 220 0
	mov.n	a13, a5
	mov.n	a12, a4
	addi	a11, sp, 68
	mov.n	a10, sp
	call8	ECC_NAF
.LVL87:
.LBB2:
	.loc 1 222 0
	l32i	a4, sp, 68
.LVL88:
	addi.n	a4, a4, -1
.LVL89:
	j	.L22
.L25:
	.loc 1 223 0
	mov.n	a11, a2
	movi	a10, 0xa8
	add.n	a10, a10, sp
	call8	p_256_copy_point
.LVL90:
	.loc 1 224 0
	mov.n	a12, a5
	movi	a11, 0xa8
	add.n	a11, a11, sp
	mov.n	a10, a2
	call8	ECC_Double
.LVL91:
	.loc 1 225 0
	addi.n	a8, a4, 3
	movgez	a8, a4, a4
	srai	a8, a8, 2
	add.n	a8, sp, a8
	l8ui	a10, a8, 0
	srai	a8, a4, 31
	extui	a8, a8, 30, 2
	add.n	a9, a4, a8
	extui	a9, a9, 0, 2
	sub	a8, a9, a8
	slli	a8, a8, 1
	ssr	a8
	sra	a8, a10
	extui	a8, a8, 0, 2
.LVL92:
	.loc 1 227 0
	bnei	a8, 1, .L23
	.loc 1 228 0
	mov.n	a11, a2
	movi	a10, 0xa8
	add.n	a10, a10, sp
	call8	p_256_copy_point
.LVL93:
	.loc 1 229 0
	mov.n	a13, a5
	mov.n	a12, a3
	movi	a11, 0xa8
	add.n	a11, a11, sp
	mov.n	a10, a2
	call8	ECC_Add
.LVL94:
	j	.L24
.LVL95:
.L23:
	.loc 1 230 0
	bnei	a8, 3, .L24
	.loc 1 231 0
	mov.n	a11, a2
	movi	a10, 0xa8
	add.n	a10, a10, sp
	call8	p_256_copy_point
.LVL96:
	.loc 1 232 0
	mov.n	a13, a5
	addi	a12, sp, 72
	movi	a11, 0xa8
	add.n	a11, a11, sp
	mov.n	a10, a2
	call8	ECC_Add
.LVL97:
.L24:
	.loc 1 222 0 discriminator 2
	addi.n	a4, a4, -1
.LVL98:
.L22:
	.loc 1 222 0 is_stmt 0 discriminator 1
	bgez	a4, .L25
.LBE2:
	.loc 1 236 0 is_stmt 1
	addi	a3, a2, 64
.LVL99:
	mov.n	a12, a5
	mov.n	a11, a3
	addi	a10, sp, 72
	call8	multiprecision_inv_mod
.LVL100:
	.loc 1 237 0
	mov.n	a12, a5
	addi	a11, sp, 72
	mov.n	a10, a3
	call8	multiprecision_mersenns_squa_mod
.LVL101:
	.loc 1 238 0
	mov.n	a13, a5
	mov.n	a12, a3
	mov.n	a11, a2
	mov.n	a10, a2
	call8	multiprecision_mersenns_mult_mod
.LVL102:
	.loc 1 239 0
	mov.n	a13, a5
	addi	a12, sp, 72
	mov.n	a11, a3
	mov.n	a10, a3
	call8	multiprecision_mersenns_mult_mod
.LVL103:
	.loc 1 240 0
	addi	a10, a2, 32
	mov.n	a13, a5
	mov.n	a12, a3
	mov.n	a11, a10
	call8	multiprecision_mersenns_mult_mod
.LVL104:
	retw.n
.LFE9:
	.size	ECC_PointMult_Bin_NAF, .-ECC_PointMult_Bin_NAF
	.section	.text.ECC_CheckPointIsInElliCur_P256,"ax",@progbits
	.literal_position
	.literal .LC2, curve_p256+32
	.align	4
	.global	ECC_CheckPointIsInElliCur_P256
	.type	ECC_CheckPointIsInElliCur_P256, @function
ECC_CheckPointIsInElliCur_P256:
.LFB10:
	.loc 1 244 0
.LVL105:
	entry	sp, 192
.LCFI6:
	.loc 1 246 0
	movi.n	a11, 0
	s32i.n	a11, sp, 0
	s32i.n	a11, sp, 4
	s32i.n	a11, sp, 8
	s32i.n	a11, sp, 12
	s32i.n	a11, sp, 16
	s32i.n	a11, sp, 20
	s32i.n	a11, sp, 24
	s32i.n	a11, sp, 28
	.loc 1 248 0
	s32i.n	a11, sp, 32
	s32i.n	a11, sp, 36
	s32i.n	a11, sp, 40
	s32i.n	a11, sp, 44
	s32i.n	a11, sp, 48
	s32i.n	a11, sp, 52
	s32i.n	a11, sp, 56
	s32i.n	a11, sp, 60
	.loc 1 250 0
	s32i	a11, sp, 64
	s32i	a11, sp, 68
	s32i	a11, sp, 72
	s32i	a11, sp, 76
	s32i	a11, sp, 80
	s32i	a11, sp, 84
	s32i	a11, sp, 88
	s32i	a11, sp, 92
	.loc 1 253 0
	movi.n	a12, 0x40
	addi	a10, sp, 96
	call8	memset
.LVL106:
	.loc 1 255 0
	movi.n	a12, 8
	addi	a11, a2, 32
	mov.n	a10, sp
	call8	multiprecision_mersenns_squa_mod
.LVL107:
	.loc 1 257 0
	movi.n	a13, 8
	mov.n	a12, a2
	mov.n	a11, a2
	addi	a10, sp, 96
	call8	multiprecision_mult
.LVL108:
	.loc 1 261 0
	l32i	a8, sp, 96
	addi	a8, a8, -3
	s32i	a8, sp, 96
	.loc 1 264 0
	addi	a11, sp, 96
	addi	a10, sp, 32
	call8	multiprecision_fast_mod_P256
.LVL109:
	.loc 1 266 0
	movi.n	a13, 8
	mov.n	a12, a2
	addi	a11, sp, 32
	addi	a10, sp, 96
	call8	multiprecision_mult
.LVL110:
	.loc 1 268 0
	addi	a11, sp, 96
	addi	a10, sp, 64
	call8	multiprecision_fast_mod_P256
.LVL111:
	.loc 1 270 0
	movi.n	a13, 8
	l32r	a12, .LC2
	addi	a11, sp, 64
	addi	a10, sp, 32
	call8	multiprecision_add_mod
.LVL112:
	.loc 1 272 0
	movi.n	a12, 8
	addi	a11, sp, 32
	mov.n	a10, sp
	call8	multiprecision_compare
.LVL113:
	beqz.n	a10, .L29
	.loc 1 273 0
	movi.n	a2, 0
.LVL114:
	retw.n
.LVL115:
.L29:
	.loc 1 275 0
	movi.n	a2, 1
.LVL116:
	.loc 1 277 0
	retw.n
.LFE10:
	.size	ECC_CheckPointIsInElliCur_P256, .-ECC_CheckPointIsInElliCur_P256
	.comm	curve_p256,228,4
	.comm	curve,228,4
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
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI0-.LFB4
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x4
	.4byte	.LCFI1-.LFB8
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI2-.LFB6
	.byte	0xe
	.uleb128 0x90
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI3-.LFB5
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI4-.LFB7
	.byte	0xe
	.uleb128 0x70
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x4
	.4byte	.LCFI5-.LFB9
	.byte	0xe
	.uleb128 0x130
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI6-.LFB10
	.byte	0xe
	.uleb128 0xc0
	.align	4
.LEFDE12:
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/bt_types.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/smp/include/p_256_ecc_pp.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/smp/include/p_256_multprecision.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1060
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF55
	.byte	0xc
	.4byte	.LASF56
	.4byte	.Ldebug_ranges0+0
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
	.byte	0x2
	.byte	0x12
	.4byte	0x48
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
	.byte	0x2
	.byte	0x1a
	.4byte	0x28
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
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x3
	.byte	0x15
	.4byte	0x3d
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x3
	.byte	0x2d
	.4byte	0x56
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x4
	.byte	0x21
	.4byte	0x8b
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF16
	.uleb128 0x5
	.4byte	0xa1
	.4byte	0xc3
	.uleb128 0x6
	.4byte	0x76
	.byte	0x5
	.byte	0
	.uleb128 0x7
	.byte	0x60
	.byte	0x5
	.byte	0x1f
	.4byte	0xea
	.uleb128 0x8
	.string	"x"
	.byte	0x5
	.byte	0x20
	.4byte	0xea
	.byte	0
	.uleb128 0x8
	.string	"y"
	.byte	0x5
	.byte	0x21
	.4byte	0xea
	.byte	0x20
	.uleb128 0x8
	.string	"z"
	.byte	0x5
	.byte	0x22
	.4byte	0xea
	.byte	0x40
	.byte	0
	.uleb128 0x5
	.4byte	0x7d
	.4byte	0xfa
	.uleb128 0x6
	.4byte	0x76
	.byte	0x7
	.byte	0
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x5
	.byte	0x23
	.4byte	0xc3
	.uleb128 0x7
	.byte	0xe4
	.byte	0x5
	.byte	0x25
	.4byte	0x14e
	.uleb128 0x8
	.string	"a"
	.byte	0x5
	.byte	0x27
	.4byte	0xea
	.byte	0
	.uleb128 0x8
	.string	"b"
	.byte	0x5
	.byte	0x28
	.4byte	0xea
	.byte	0x20
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x5
	.byte	0x2b
	.4byte	0x21
	.byte	0x40
	.uleb128 0x8
	.string	"p"
	.byte	0x5
	.byte	0x2e
	.4byte	0xea
	.byte	0x44
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0x5
	.byte	0x31
	.4byte	0xea
	.byte	0x64
	.uleb128 0x8
	.string	"G"
	.byte	0x5
	.byte	0x34
	.4byte	0xfa
	.byte	0x84
	.byte	0
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x5
	.byte	0x36
	.4byte	0x105
	.uleb128 0xa
	.4byte	.LASF21
	.byte	0x1
	.byte	0x21
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x195
	.uleb128 0xb
	.string	"q"
	.byte	0x1
	.byte	0x21
	.4byte	0x195
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xc
	.4byte	.LVL1
	.4byte	0xfac
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x60
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0xfa
	.uleb128 0xa
	.4byte	.LASF22
	.byte	0x1
	.byte	0x99
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x251
	.uleb128 0xb
	.string	"naf"
	.byte	0x1
	.byte	0x99
	.4byte	0x251
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xf
	.4byte	.LASF23
	.byte	0x1
	.byte	0x99
	.4byte	0x257
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xb
	.string	"k"
	.byte	0x1
	.byte	0x99
	.4byte	0x25d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xf
	.4byte	.LASF24
	.byte	0x1
	.byte	0x99
	.4byte	0x96
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x10
	.4byte	.LASF25
	.byte	0x1
	.byte	0x9b
	.4byte	0x96
	.4byte	.LLST0
	.uleb128 0x11
	.string	"i"
	.byte	0x1
	.byte	0x9c
	.4byte	0x21
	.4byte	.LLST1
	.uleb128 0x11
	.string	"j"
	.byte	0x1
	.byte	0x9d
	.4byte	0x21
	.4byte	.LLST2
	.uleb128 0x11
	.string	"var"
	.byte	0x1
	.byte	0x9e
	.4byte	0x96
	.4byte	.LLST3
	.uleb128 0x12
	.4byte	.LVL10
	.4byte	0xfb5
	.4byte	0x23a
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0xc
	.4byte	.LVL13
	.4byte	0xfc0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x8b
	.uleb128 0xe
	.byte	0x4
	.4byte	0x96
	.uleb128 0xe
	.byte	0x4
	.4byte	0x7d
	.uleb128 0xa
	.4byte	.LASF26
	.byte	0x1
	.byte	0x2c
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x619
	.uleb128 0xb
	.string	"q"
	.byte	0x1
	.byte	0x2c
	.4byte	0x195
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xb
	.string	"p"
	.byte	0x1
	.byte	0x2c
	.4byte	0x195
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xf
	.4byte	.LASF24
	.byte	0x1
	.byte	0x2c
	.4byte	0x96
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x13
	.string	"t1"
	.byte	0x1
	.byte	0x2e
	.4byte	0xea
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x13
	.string	"t2"
	.byte	0x1
	.byte	0x2f
	.4byte	0xea
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x13
	.string	"t3"
	.byte	0x1
	.byte	0x30
	.4byte	0xea
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x13
	.string	"x1"
	.byte	0x1
	.byte	0x31
	.4byte	0x25d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x13
	.string	"x3"
	.byte	0x1
	.byte	0x32
	.4byte	0x25d
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x11
	.string	"y1"
	.byte	0x1
	.byte	0x33
	.4byte	0x25d
	.4byte	.LLST4
	.uleb128 0x13
	.string	"y3"
	.byte	0x1
	.byte	0x34
	.4byte	0x25d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x13
	.string	"z1"
	.byte	0x1
	.byte	0x35
	.4byte	0x25d
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x13
	.string	"z3"
	.byte	0x1
	.byte	0x36
	.4byte	0x25d
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x12
	.4byte	.LVL15
	.4byte	0xfcb
	.4byte	0x329
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.4byte	.LVL16
	.4byte	0xfd6
	.4byte	0x344
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x72
	.sleb128 64
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.4byte	.LVL21
	.4byte	0xfe1
	.4byte	0x365
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.4byte	.LVL22
	.4byte	0xfec
	.4byte	0x38d
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.4byte	.LVL23
	.4byte	0xff7
	.4byte	0x3b5
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.4byte	.LVL24
	.4byte	0x1002
	.4byte	0x3de
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.4byte	.LVL25
	.4byte	0x100d
	.4byte	0x400
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.4byte	.LVL26
	.4byte	0xff7
	.4byte	0x429
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.4byte	.LVL27
	.4byte	0x1002
	.4byte	0x450
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.4byte	.LVL28
	.4byte	0x100d
	.4byte	0x470
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.4byte	.LVL29
	.4byte	0xfe1
	.4byte	0x491
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.4byte	.LVL30
	.4byte	0x100d
	.4byte	0x4b1
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.4byte	.LVL31
	.4byte	0x1002
	.4byte	0x4d8
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.4byte	.LVL32
	.4byte	0x100d
	.4byte	0x4fa
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.4byte	.LVL33
	.4byte	0xfe1
	.4byte	0x51a
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.4byte	.LVL34
	.4byte	0x100d
	.4byte	0x53a
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.4byte	.LVL35
	.4byte	0xfe1
	.4byte	0x55b
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.4byte	.LVL36
	.4byte	0x100d
	.4byte	0x57d
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.4byte	.LVL37
	.4byte	0xfec
	.4byte	0x5a4
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.4byte	.LVL38
	.4byte	0xfec
	.4byte	0x5cc
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.4byte	.LVL39
	.4byte	0x1002
	.4byte	0x5f5
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0xc
	.4byte	.LVL40
	.4byte	0xfec
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0x1
	.byte	0x26
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x661
	.uleb128 0xb
	.string	"q"
	.byte	0x1
	.byte	0x26
	.4byte	0x195
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xb
	.string	"p"
	.byte	0x1
	.byte	0x26
	.4byte	0x195
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xc
	.4byte	.LVL42
	.4byte	0x1018
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x60
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0x1
	.byte	0x5a
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xab7
	.uleb128 0xb
	.string	"r"
	.byte	0x1
	.byte	0x5a
	.4byte	0x195
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xb
	.string	"p"
	.byte	0x1
	.byte	0x5a
	.4byte	0x195
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xb
	.string	"q"
	.byte	0x1
	.byte	0x5a
	.4byte	0x195
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x14
	.4byte	.LASF24
	.byte	0x1
	.byte	0x5a
	.4byte	0x96
	.4byte	.LLST5
	.uleb128 0x13
	.string	"t1"
	.byte	0x1
	.byte	0x5c
	.4byte	0xea
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x13
	.string	"t2"
	.byte	0x1
	.byte	0x5d
	.4byte	0xea
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x13
	.string	"x1"
	.byte	0x1
	.byte	0x5e
	.4byte	0x25d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x13
	.string	"x2"
	.byte	0x1
	.byte	0x5f
	.4byte	0x25d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x13
	.string	"x3"
	.byte	0x1
	.byte	0x60
	.4byte	0x25d
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x11
	.string	"y1"
	.byte	0x1
	.byte	0x61
	.4byte	0x25d
	.4byte	.LLST6
	.uleb128 0x11
	.string	"y2"
	.byte	0x1
	.byte	0x62
	.4byte	0x25d
	.4byte	.LLST7
	.uleb128 0x13
	.string	"y3"
	.byte	0x1
	.byte	0x63
	.4byte	0x25d
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x13
	.string	"z1"
	.byte	0x1
	.byte	0x64
	.4byte	0x25d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x11
	.string	"z2"
	.byte	0x1
	.byte	0x65
	.4byte	0x25d
	.4byte	.LLST8
	.uleb128 0x11
	.string	"z3"
	.byte	0x1
	.byte	0x66
	.4byte	0x25d
	.4byte	.LLST9
	.uleb128 0x12
	.4byte	.LVL52
	.4byte	0xfcb
	.4byte	0x751
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x74
	.sleb128 64
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.4byte	.LVL53
	.4byte	0x619
	.4byte	0x76b
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.4byte	.LVL54
	.4byte	0xfcb
	.4byte	0x785
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.4byte	.LVL55
	.4byte	0x619
	.4byte	0x79f
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.4byte	.LVL56
	.4byte	0xfe1
	.4byte	0x7c0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.4byte	.LVL57
	.4byte	0x1002
	.4byte	0x7e8
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.4byte	.LVL58
	.4byte	0x1002
	.4byte	0x810
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.4byte	.LVL59
	.4byte	0x1002
	.4byte	0x839
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.4byte	.LVL60
	.4byte	0xfec
	.4byte	0x861
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.4byte	.LVL61
	.4byte	0xfec
	.4byte	0x88a
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.4byte	.LVL62
	.4byte	0xfcb
	.4byte	0x8a5
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.4byte	.LVL63
	.4byte	0xfcb
	.4byte	0x8c0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.4byte	.LVL64
	.4byte	0x263
	.4byte	0x8e0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.4byte	.LVL65
	.4byte	0xfd6
	.4byte	0x8fb
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -40
	.byte	0x6
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.4byte	.LVL66
	.4byte	0x1002
	.4byte	0x923
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -40
	.byte	0x6
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.4byte	.LVL67
	.4byte	0xfe1
	.4byte	0x944
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.4byte	.LVL68
	.4byte	0x1002
	.4byte	0x96b
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.4byte	.LVL69
	.4byte	0x1002
	.4byte	0x991
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.4byte	.LVL70
	.4byte	0x100d
	.4byte	0x9b2
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.4byte	.LVL71
	.4byte	0xfe1
	.4byte	0x9d3
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.4byte	.LVL72
	.4byte	0xfec
	.4byte	0x9fa
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.4byte	.LVL73
	.4byte	0xfec
	.4byte	0xa20
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.4byte	.LVL74
	.4byte	0xfec
	.4byte	0xa46
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.4byte	.LVL75
	.4byte	0x1002
	.4byte	0xa6d
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.4byte	.LVL76
	.4byte	0x1002
	.4byte	0xa94
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0xc
	.4byte	.LVL77
	.4byte	0xfec
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF57
	.byte	0x1
	.byte	0xbd
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdcb
	.uleb128 0xb
	.string	"q"
	.byte	0x1
	.byte	0xbd
	.4byte	0x195
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x16
	.string	"p"
	.byte	0x1
	.byte	0xbd
	.4byte	0x195
	.4byte	.LLST10
	.uleb128 0x16
	.string	"n"
	.byte	0x1
	.byte	0xbd
	.4byte	0x25d
	.4byte	.LLST11
	.uleb128 0xf
	.4byte	.LASF24
	.byte	0x1
	.byte	0xbd
	.4byte	0x96
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x10
	.4byte	.LASF25
	.byte	0x1
	.byte	0xbf
	.4byte	0x96
	.4byte	.LLST12
	.uleb128 0x13
	.string	"naf"
	.byte	0x1
	.byte	0xc0
	.4byte	0xdcb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x17
	.4byte	.LASF29
	.byte	0x1
	.byte	0xc1
	.4byte	0x96
	.uleb128 0x3
	.byte	0x91
	.sleb128 -236
	.uleb128 0x17
	.4byte	.LASF30
	.byte	0x1
	.byte	0xc2
	.4byte	0xfa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x13
	.string	"r"
	.byte	0x1
	.byte	0xc3
	.4byte	0xfa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x17
	.4byte	.LASF31
	.byte	0x1
	.byte	0xc4
	.4byte	0x25d
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x18
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.4byte	0xc2a
	.uleb128 0x13
	.string	"i"
	.byte	0x1
	.byte	0xde
	.4byte	0x21
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x12
	.4byte	.LVL90
	.4byte	0x619
	.4byte	0xb87
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.4byte	.LVL91
	.4byte	0x263
	.4byte	0xba8
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.4byte	.LVL93
	.4byte	0x619
	.4byte	0xbc3
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.4byte	.LVL94
	.4byte	0x661
	.4byte	0xbea
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.4byte	.LVL96
	.4byte	0x619
	.4byte	0xc05
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0xc
	.4byte	.LVL97
	.4byte	0x661
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LVL80
	.4byte	0x159
	.4byte	0xc3f
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.byte	0
	.uleb128 0x12
	.4byte	.LVL81
	.4byte	0xfd6
	.4byte	0xc5a
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x73
	.sleb128 64
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.4byte	.LVL82
	.4byte	0x159
	.4byte	0xc6e
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.4byte	.LVL83
	.4byte	0x1021
	.4byte	0xc8f
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.4byte	.LVL84
	.4byte	0x102c
	.4byte	0xcb6
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 32
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.4byte	.LVL85
	.4byte	0xfd6
	.4byte	0xcd1
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.4byte	.LVL86
	.4byte	0xfac
	.4byte	0xcf1
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x41
	.byte	0
	.uleb128 0x12
	.4byte	.LVL87
	.4byte	0x19b
	.4byte	0xd19
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -236
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.4byte	.LVL100
	.4byte	0x1037
	.4byte	0xd3a
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.4byte	.LVL101
	.4byte	0xfe1
	.4byte	0xd5b
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.4byte	.LVL102
	.4byte	0x1002
	.4byte	0xd81
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.4byte	.LVL103
	.4byte	0x1002
	.4byte	0xda8
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0xc
	.4byte	.LVL104
	.4byte	0x1002
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 32
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 32
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	0xa1
	.4byte	0xddb
	.uleb128 0x6
	.4byte	0x76
	.byte	0x40
	.byte	0
	.uleb128 0x19
	.4byte	.LASF58
	.byte	0x1
	.byte	0xf3
	.4byte	0xac
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf4a
	.uleb128 0x16
	.string	"p"
	.byte	0x1
	.byte	0xf3
	.4byte	0x195
	.4byte	.LLST13
	.uleb128 0x17
	.4byte	.LASF32
	.byte	0x1
	.byte	0xf6
	.4byte	0xea
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x17
	.4byte	.LASF33
	.byte	0x1
	.byte	0xf8
	.4byte	0xea
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x13
	.string	"x_q"
	.byte	0x1
	.byte	0xfa
	.4byte	0xea
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x13
	.string	"x_x"
	.byte	0x1
	.byte	0xfd
	.4byte	0xf4a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x12
	.4byte	.LVL106
	.4byte	0xfac
	.4byte	0xe5d
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.uleb128 0x12
	.4byte	.LVL107
	.4byte	0xfe1
	.4byte	0xe7d
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 32
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x12
	.4byte	.LVL108
	.4byte	0x1042
	.4byte	0xea3
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x12
	.4byte	.LVL109
	.4byte	0x104d
	.4byte	0xebf
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x12
	.4byte	.LVL110
	.4byte	0x1042
	.4byte	0xee6
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x12
	.4byte	.LVL111
	.4byte	0x104d
	.4byte	0xf02
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x12
	.4byte	.LVL112
	.4byte	0xff7
	.4byte	0xf2c
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	curve_p256+32
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0xc
	.4byte	.LVL113
	.4byte	0x1058
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	0x7d
	.4byte	0xf5a
	.uleb128 0x6
	.4byte	0x76
	.byte	0xf
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF34
	.byte	0x4
	.2byte	0x2cc
	.4byte	0xf6d
	.byte	0x6
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.uleb128 0x1b
	.4byte	0xb3
	.uleb128 0x1a
	.4byte	.LASF35
	.byte	0x4
	.2byte	0x2cd
	.4byte	0xf85
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	0xb3
	.uleb128 0x1c
	.4byte	.LASF36
	.byte	0x1
	.byte	0x1e
	.4byte	0x14e
	.uleb128 0x5
	.byte	0x3
	.4byte	curve
	.uleb128 0x1c
	.4byte	.LASF37
	.byte	0x1
	.byte	0x1f
	.4byte	0x14e
	.uleb128 0x5
	.byte	0x3
	.4byte	curve_p256
	.uleb128 0x1d
	.4byte	.LASF47
	.4byte	.LASF47
	.uleb128 0x1e
	.4byte	.LASF38
	.4byte	.LASF38
	.byte	0x6
	.byte	0x33
	.uleb128 0x1e
	.4byte	.LASF39
	.4byte	.LASF39
	.byte	0x6
	.byte	0x2d
	.uleb128 0x1e
	.4byte	.LASF40
	.4byte	.LASF40
	.byte	0x6
	.byte	0x28
	.uleb128 0x1e
	.4byte	.LASF41
	.4byte	.LASF41
	.byte	0x6
	.byte	0x29
	.uleb128 0x1e
	.4byte	.LASF42
	.4byte	.LASF42
	.byte	0x6
	.byte	0x38
	.uleb128 0x1e
	.4byte	.LASF43
	.4byte	.LASF43
	.byte	0x6
	.byte	0x32
	.uleb128 0x1e
	.4byte	.LASF44
	.4byte	.LASF44
	.byte	0x6
	.byte	0x30
	.uleb128 0x1e
	.4byte	.LASF45
	.4byte	.LASF45
	.byte	0x6
	.byte	0x37
	.uleb128 0x1e
	.4byte	.LASF46
	.4byte	.LASF46
	.byte	0x6
	.byte	0x34
	.uleb128 0x1d
	.4byte	.LASF48
	.4byte	.LASF48
	.uleb128 0x1e
	.4byte	.LASF49
	.4byte	.LASF49
	.byte	0x6
	.byte	0x2a
	.uleb128 0x1e
	.4byte	.LASF50
	.4byte	.LASF50
	.byte	0x6
	.byte	0x31
	.uleb128 0x1e
	.4byte	.LASF51
	.4byte	.LASF51
	.byte	0x6
	.byte	0x2e
	.uleb128 0x1e
	.4byte	.LASF52
	.4byte	.LASF52
	.byte	0x6
	.byte	0x3a
	.uleb128 0x1e
	.4byte	.LASF53
	.4byte	.LASF53
	.byte	0x6
	.byte	0x3c
	.uleb128 0x1e
	.4byte	.LASF54
	.4byte	.LASF54
	.byte	0x6
	.byte	0x27
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
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
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.4byte	.LVL5
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL9
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL4
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL13
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL19
	.4byte	.LFE6
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL43
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL45
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL47
	.4byte	.LFE7
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL49
	.4byte	.LFE7
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL48
	.4byte	.LVL51
	.2byte	0x4
	.byte	0x74
	.sleb128 64
	.byte	0x9f
	.4byte	.LVL51
	.4byte	.LVL52-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL52-1
	.4byte	.LFE7
	.2byte	0x4
	.byte	0x74
	.sleb128 64
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL50
	.4byte	.LVL52-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL52-1
	.4byte	.LFE7
	.2byte	0x2
	.byte	0x91
	.sleb128 -40
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL78
	.4byte	.LVL99
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL99
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL78
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL88
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL92
	.4byte	.LVL93-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL95
	.4byte	.LVL96-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL105
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
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
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
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF41:
	.string	"multiprecision_init"
.LASF30:
	.string	"minus_p"
.LASF5:
	.string	"__uint8_t"
.LASF32:
	.string	"y_y_q"
.LASF20:
	.string	"elliptic_curve_t"
.LASF8:
	.string	"long long unsigned int"
.LASF57:
	.string	"ECC_PointMult_Bin_NAF"
.LASF7:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF51:
	.string	"multiprecision_inv_mod"
.LASF9:
	.string	"long int"
.LASF48:
	.string	"memcpy"
.LASF23:
	.string	"NumNAF"
.LASF17:
	.string	"Point"
.LASF44:
	.string	"multiprecision_add_mod"
.LASF46:
	.string	"multiprecision_lshift_mod"
.LASF6:
	.string	"__uint32_t"
.LASF22:
	.string	"ECC_NAF"
.LASF18:
	.string	"a_minus3"
.LASF28:
	.string	"ECC_Add"
.LASF26:
	.string	"ECC_Double"
.LASF0:
	.string	"unsigned int"
.LASF56:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/smp/p_256_ecc_pp.c"
.LASF11:
	.string	"long unsigned int"
.LASF24:
	.string	"keyLength"
.LASF1:
	.string	"short unsigned int"
.LASF38:
	.string	"multiprecision_rshift"
.LASF53:
	.string	"multiprecision_fast_mod_P256"
.LASF49:
	.string	"multiprecision_copy"
.LASF10:
	.string	"sizetype"
.LASF45:
	.string	"multiprecision_mersenns_mult_mod"
.LASF40:
	.string	"multiprecision_iszero"
.LASF29:
	.string	"NumNaf"
.LASF42:
	.string	"multiprecision_mersenns_squa_mod"
.LASF43:
	.string	"multiprecision_sub_mod"
.LASF37:
	.string	"curve_p256"
.LASF58:
	.string	"ECC_CheckPointIsInElliCur_P256"
.LASF35:
	.string	"bd_addr_null"
.LASF16:
	.string	"_Bool"
.LASF3:
	.string	"unsigned char"
.LASF55:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF4:
	.string	"short int"
.LASF52:
	.string	"multiprecision_mult"
.LASF19:
	.string	"omega"
.LASF14:
	.string	"uint32_t"
.LASF27:
	.string	"p_256_copy_point"
.LASF33:
	.string	"x_x_q"
.LASF12:
	.string	"char"
.LASF31:
	.string	"modp"
.LASF21:
	.string	"p_256_init_point"
.LASF47:
	.string	"memset"
.LASF54:
	.string	"multiprecision_compare"
.LASF15:
	.string	"UINT8"
.LASF13:
	.string	"uint8_t"
.LASF34:
	.string	"bd_addr_any"
.LASF25:
	.string	"sign"
.LASF36:
	.string	"curve"
.LASF50:
	.string	"multiprecision_sub"
.LASF39:
	.string	"multiprecision_most_signbits"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
