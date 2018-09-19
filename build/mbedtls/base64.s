	.file	"base64.c"
	.text
.Ltext0:
	.section	.text.mbedtls_base64_encode,"ax",@progbits
	.literal_position
	.literal .LC0, -1431655765
	.literal .LC1, 1073741823
	.literal .LC2, base64_enc_map
	.align	4
	.global	mbedtls_base64_encode
	.type	mbedtls_base64_encode, @function
mbedtls_base64_encode:
.LFB0:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/library/base64.c"
	.loc 1 79 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 84 0
	bnez.n	a6, .L2
	.loc 1 86 0
	movi.n	a2, 0
.LVL1:
	s32i.n	a2, a4, 0
	.loc 1 87 0
	retw.n
.LVL2:
.L2:
	.loc 1 90 0
	l32r	a13, .LC0
	muluh	a13, a6, a13
	srli	a13, a13, 1
	addx2	a8, a13, a13
	sub	a8, a6, a8
	movi.n	a9, 0
	movi.n	a10, 1
	movnez	a9, a10, a8
	add.n	a8, a13, a9
.LVL3:
	.loc 1 92 0
	l32r	a9, .LC1
	bgeu	a9, a8, .L4
	.loc 1 94 0
	movi.n	a2, -1
.LVL4:
	s32i.n	a2, a4, 0
	.loc 1 95 0
	movi	a2, -0x2a
	retw.n
.LVL5:
.L4:
	.loc 1 98 0
	slli	a8, a8, 2
.LVL6:
	.loc 1 100 0
	addi.n	a8, a8, 1
.LVL7:
	bltu	a3, a8, .L5
	.loc 1 100 0 is_stmt 0 discriminator 1
	bnez.n	a2, .L6
.L5:
	.loc 1 102 0 is_stmt 1
	s32i.n	a8, a4, 0
	.loc 1 103 0
	movi	a2, -0x2a
.LVL8:
	retw.n
.LVL9:
.L6:
	.loc 1 106 0
	addx2	a13, a13, a13
.LVL10:
	.loc 1 108 0
	mov.n	a10, a2
	movi.n	a12, 0
	j	.L7
.LVL11:
.L8:
	.loc 1 110 0 discriminator 3
	l8ui	a14, a5, 0
.LVL12:
	.loc 1 111 0 discriminator 3
	l8ui	a8, a5, 1
.LVL13:
	.loc 1 112 0 discriminator 3
	l8ui	a9, a5, 2
.LVL14:
	.loc 1 114 0 discriminator 3
	srli	a15, a14, 2
	l32r	a11, .LC2
	add.n	a15, a11, a15
	l8ui	a15, a15, 0
	s8i	a15, a10, 0
.LVL15:
	.loc 1 115 0 discriminator 3
	extui	a14, a14, 0, 2
.LVL16:
	slli	a14, a14, 4
	srai	a15, a8, 4
	add.n	a14, a14, a15
	extui	a14, a14, 0, 6
	add.n	a14, a11, a14
	l8ui	a14, a14, 0
	s8i	a14, a10, 1
.LVL17:
	.loc 1 116 0 discriminator 3
	extui	a8, a8, 0, 4
.LVL18:
	srai	a14, a9, 6
	addx4	a8, a8, a14
	extui	a8, a8, 0, 6
	add.n	a8, a11, a8
	l8ui	a8, a8, 0
	s8i	a8, a10, 2
.LVL19:
	.loc 1 117 0 discriminator 3
	extui	a9, a9, 0, 6
.LVL20:
	add.n	a11, a11, a9
	l8ui	a8, a11, 0
	s8i	a8, a10, 3
	.loc 1 108 0 discriminator 3
	addi.n	a12, a12, 3
.LVL21:
	.loc 1 117 0 discriminator 3
	addi.n	a10, a10, 4
.LVL22:
	.loc 1 112 0 discriminator 3
	addi.n	a5, a5, 3
.LVL23:
.L7:
	.loc 1 108 0 discriminator 1
	bltu	a12, a13, .L8
	.loc 1 120 0
	bgeu	a12, a6, .L9
.LVL24:
	.loc 1 122 0
	l8ui	a8, a5, 0
.LVL25:
	.loc 1 123 0
	addi.n	a12, a12, 1
.LVL26:
	bgeu	a12, a6, .L13
.LVL27:
	.loc 1 123 0 is_stmt 0 discriminator 1
	l8ui	a9, a5, 1
	j	.L10
.LVL28:
.L13:
	.loc 1 123 0
	movi.n	a9, 0
.LVL29:
.L10:
	.loc 1 125 0 is_stmt 1 discriminator 4
	srli	a5, a8, 2
	l32r	a11, .LC2
	add.n	a5, a11, a5
	l8ui	a3, a5, 0
.LVL30:
	s8i	a3, a10, 0
.LVL31:
	.loc 1 126 0 discriminator 4
	extui	a3, a8, 0, 2
	slli	a3, a3, 4
	srai	a5, a9, 4
	add.n	a3, a3, a5
	extui	a3, a3, 0, 6
	add.n	a3, a11, a3
	l8ui	a3, a3, 0
	s8i	a3, a10, 1
	.loc 1 128 0 discriminator 4
	bgeu	a12, a6, .L11
	.loc 1 129 0
	addi.n	a3, a10, 3
.LVL32:
	extui	a9, a9, 0, 4
.LVL33:
	addx4	a9, a9, a11
	l8ui	a5, a9, 0
	s8i	a5, a10, 2
	j	.L12
.LVL34:
.L11:
	.loc 1 130 0
	addi.n	a3, a10, 3
.LVL35:
	movi.n	a5, 0x3d
	s8i	a5, a10, 2
.LVL36:
.L12:
	.loc 1 132 0
	addi.n	a10, a3, 1
.LVL37:
	movi.n	a5, 0x3d
	s8i	a5, a3, 0
.LVL38:
.L9:
	.loc 1 135 0
	sub	a2, a10, a2
.LVL39:
	s32i.n	a2, a4, 0
	.loc 1 136 0
	movi.n	a2, 0
	s8i	a2, a10, 0
	.loc 1 138 0
	movi.n	a2, 0
	.loc 1 139 0
	retw.n
.LFE0:
	.size	mbedtls_base64_encode, .-mbedtls_base64_encode
	.section	.text.mbedtls_base64_decode,"ax",@progbits
	.literal_position
	.literal .LC3, base64_dec_map
	.align	4
	.global	mbedtls_base64_decode
	.type	mbedtls_base64_decode, @function
mbedtls_base64_decode:
.LFB1:
	.loc 1 146 0
.LVL40:
	entry	sp, 32
.LCFI1:
.LVL41:
	.loc 1 152 0
	movi.n	a12, 0
	mov.n	a11, a12
	mov.n	a8, a12
	j	.L15
.LVL42:
.L17:
	.loc 1 158 0
	addi.n	a8, a8, 1
.LVL43:
	.loc 1 159 0
	addi.n	a9, a9, 1
.LVL44:
	j	.L24
.LVL45:
.L37:
	movi.n	a9, 0
.L24:
.LVL46:
	.loc 1 156 0
	bgeu	a8, a6, .L16
	.loc 1 156 0 is_stmt 0 discriminator 1
	add.n	a10, a5, a8
	l8ui	a10, a10, 0
	beqi	a10, 32, .L17
.L16:
	.loc 1 163 0 is_stmt 1
	beq	a8, a6, .L18
	.loc 1 166 0
	sub	a10, a6, a8
	bltui	a10, 2, .L19
	.loc 1 167 0 discriminator 1
	add.n	a10, a5, a8
	l8ui	a13, a10, 0
	.loc 1 166 0 discriminator 1
	movi.n	a10, 0xd
	bne	a13, a10, .L19
	.loc 1 167 0
	add.n	a10, a5, a8
	l8ui	a10, a10, 1
	beqi	a10, 10, .L20
.L19:
	.loc 1 170 0
	add.n	a10, a5, a8
	l8ui	a10, a10, 0
	beqi	a10, 10, .L20
	.loc 1 174 0
	bnez.n	a9, .L32
	.loc 1 177 0
	movi.n	a9, 0x3d
.LVL47:
	bne	a10, a9, .L22
	.loc 1 177 0 is_stmt 0 discriminator 1
	addi.n	a12, a12, 1
.LVL48:
	bgeui	a12, 3, .L33
.L22:
	.loc 1 180 0 is_stmt 1
	sext	a9, a10, 7
	bltz	a9, .L34
	.loc 1 180 0 is_stmt 0 discriminator 1
	l32r	a9, .LC3
	add.n	a10, a9, a10
	l8ui	a9, a10, 0
	movi	a10, 0x7f
	beq	a9, a10, .L35
	.loc 1 183 0 is_stmt 1
	movi.n	a10, 0x3f
	bltu	a10, a9, .L23
	.loc 1 183 0 is_stmt 0 discriminator 1
	bnez.n	a12, .L36
.L23:
	.loc 1 186 0 is_stmt 1
	addi.n	a11, a11, 1
.LVL49:
.L20:
	.loc 1 152 0 discriminator 2
	addi.n	a8, a8, 1
.LVL50:
.L15:
	.loc 1 152 0 is_stmt 0 discriminator 1
	bltu	a8, a6, .L37
.L18:
	.loc 1 189 0 is_stmt 1
	bnez.n	a11, .L25
	.loc 1 191 0
	movi.n	a2, 0
.LVL51:
	s32i.n	a2, a4, 0
	.loc 1 192 0
	retw.n
.LVL52:
.L25:
	.loc 1 199 0
	srli	a9, a11, 3
	addx2	a9, a9, a9
	slli	a10, a9, 1
	extui	a11, a11, 0, 3
.LVL53:
	addx2	a11, a11, a11
	slli	a6, a11, 1
.LVL54:
	addi.n	a6, a6, 7
	srli	a6, a6, 3
	add.n	a6, a10, a6
.LVL55:
	.loc 1 200 0
	sub	a12, a6, a12
.LVL56:
	.loc 1 202 0
	movi.n	a6, 1
	movi.n	a9, 0
	moveqz	a9, a6, a2
	extui	a9, a9, 0, 8
	.loc 1 202 0
	bltu	a3, a12, .L26
	movi.n	a6, 0
.L26:
	extui	a6, a6, 0, 8
	or	a3, a9, a6
.LVL57:
	.loc 1 202 0
	beqz.n	a3, .L38
	.loc 1 204 0
	s32i.n	a12, a4, 0
	.loc 1 205 0
	movi	a2, -0x2a
.LVL58:
	retw.n
.LVL59:
.L31:
	.loc 1 210 0
	l8ui	a9, a5, 0
	addi	a10, a9, -13
	movi.n	a15, 1
	movi.n	a3, 0
	mov.n	a6, a3
	moveqz	a6, a15, a10
	mov.n	a10, a6
	addi	a6, a9, -10
	moveqz	a3, a15, a6
	or	a3, a10, a3
	bnez.n	a3, .L28
	.loc 1 210 0 is_stmt 0 discriminator 1
	beqi	a9, 32, .L28
	.loc 1 213 0 is_stmt 1
	l32r	a3, .LC3
	add.n	a9, a3, a9
	l8ui	a3, a9, 0
	addi	a9, a3, -64
	movi.n	a6, 0
	moveqz	a6, a15, a9
	sub	a13, a13, a6
.LVL60:
	.loc 1 214 0
	slli	a11, a11, 6
.LVL61:
	extui	a3, a3, 0, 6
	or	a11, a11, a3
.LVL62:
	.loc 1 216 0
	add.n	a12, a12, a15
.LVL63:
	bnei	a12, 4, .L28
.LVL64:
	.loc 1 219 0
	beqz.n	a13, .L29
.LVL65:
	.loc 1 219 0 is_stmt 0 discriminator 1
	extui	a3, a11, 16, 8
	s8i	a3, a14, 0
	add.n	a14, a14, a15
.LVL66:
.L29:
	.loc 1 220 0 is_stmt 1
	bltui	a13, 2, .L30
.LVL67:
	.loc 1 220 0 is_stmt 0 discriminator 1
	extui	a3, a11, 8, 8
	s8i	a3, a14, 0
	addi.n	a14, a14, 1
.LVL68:
.L30:
	.loc 1 221 0 is_stmt 1
	bltui	a13, 3, .L39
.LVL69:
	.loc 1 221 0 is_stmt 0 discriminator 1
	s8i	a11, a14, 0
	addi.n	a14, a14, 1
.LVL70:
	.loc 1 218 0 is_stmt 1 discriminator 1
	movi.n	a12, 0
	j	.L28
.L39:
	.loc 1 218 0 is_stmt 0
	movi.n	a12, 0
.LVL71:
.L28:
	.loc 1 208 0 is_stmt 1 discriminator 2
	addi.n	a8, a8, -1
.LVL72:
	addi.n	a5, a5, 1
.LVL73:
	j	.L27
.LVL74:
.L38:
	mov.n	a14, a2
	movi.n	a11, 0
	movi.n	a13, 3
	mov.n	a12, a11
.LVL75:
.L27:
	.loc 1 208 0 is_stmt 0 discriminator 1
	bnez.n	a8, .L31
	.loc 1 225 0 is_stmt 1
	sub	a2, a14, a2
.LVL76:
	s32i.n	a2, a4, 0
	.loc 1 227 0
	movi.n	a2, 0
	retw.n
.LVL77:
.L32:
	.loc 1 175 0
	movi	a2, -0x2c
.LVL78:
	retw.n
.LVL79:
.L33:
	.loc 1 178 0
	movi	a2, -0x2c
.LVL80:
	retw.n
.LVL81:
.L34:
	.loc 1 181 0
	movi	a2, -0x2c
.LVL82:
	retw.n
.LVL83:
.L35:
	movi	a2, -0x2c
.LVL84:
	retw.n
.LVL85:
.L36:
	.loc 1 184 0
	movi	a2, -0x2c
.LVL86:
	.loc 1 228 0
	retw.n
.LFE1:
	.size	mbedtls_base64_decode, .-mbedtls_base64_decode
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC4:
	.string	"  Base64 encoding test: "
	.align	4
.LC8:
	.string	"failed"
	.align	4
.LC10:
	.string	"passed\n  Base64 decoding test: "
	.align	4
.LC12:
	.string	"passed\n"
	.section	.text.mbedtls_base64_self_test,"ax",@progbits
	.literal_position
	.literal .LC5, .LC4
	.literal .LC6, base64_test_dec
	.literal .LC7, base64_test_enc
	.literal .LC9, .LC8
	.literal .LC11, .LC10
	.literal .LC13, .LC12
	.align	4
	.global	mbedtls_base64_self_test
	.type	mbedtls_base64_self_test, @function
mbedtls_base64_self_test:
.LFB2:
	.loc 1 252 0
.LVL87:
	entry	sp, 176
.LCFI2:
	.loc 1 257 0
	beqz.n	a2, .L41
	.loc 1 258 0
	l32r	a10, .LC5
	call8	printf
.LVL88:
.L41:
	.loc 1 262 0
	movi.n	a14, 0x40
	l32r	a13, .LC6
	mov.n	a12, sp
	movi	a11, 0x80
	addi.n	a10, sp, 4
	call8	mbedtls_base64_encode
.LVL89:
	bnez.n	a10, .L42
	.loc 1 263 0 discriminator 1
	movi.n	a12, 0x58
	addi.n	a11, sp, 4
	l32r	a10, .LC7
	call8	memcmp
.LVL90:
	.loc 1 262 0 discriminator 1
	beqz.n	a10, .L43
.L42:
	.loc 1 265 0
	beqz.n	a2, .L48
	.loc 1 266 0
	l32r	a10, .LC9
	call8	puts
.LVL91:
	.loc 1 268 0
	movi.n	a3, 1
	j	.L44
.L43:
	.loc 1 271 0
	beqz.n	a2, .L45
	.loc 1 272 0
	l32r	a10, .LC11
	call8	printf
.LVL92:
.L45:
	.loc 1 276 0
	movi.n	a14, 0x58
	l32r	a13, .LC7
	mov.n	a12, sp
	movi	a11, 0x80
	addi.n	a10, sp, 4
	call8	mbedtls_base64_decode
.LVL93:
	bnez.n	a10, .L46
	.loc 1 277 0 discriminator 1
	movi.n	a12, 0x40
	addi.n	a11, sp, 4
	l32r	a10, .LC6
	call8	memcmp
.LVL94:
	mov.n	a3, a10
	.loc 1 276 0 discriminator 1
	beqz.n	a10, .L47
.L46:
	.loc 1 279 0
	beqz.n	a2, .L49
	.loc 1 280 0
	l32r	a10, .LC9
	call8	puts
.LVL95:
	.loc 1 282 0
	movi.n	a3, 1
	j	.L44
.L47:
	.loc 1 285 0
	beqz.n	a2, .L44
	.loc 1 286 0
	l32r	a10, .LC13
	call8	puts
.LVL96:
	j	.L44
.LVL97:
.L48:
	.loc 1 268 0
	movi.n	a3, 1
	j	.L44
.LVL98:
.L49:
	.loc 1 282 0
	movi.n	a3, 1
.LVL99:
.L44:
	.loc 1 289 0
	mov.n	a2, a3
.LVL100:
	retw.n
.LFE2:
	.size	mbedtls_base64_self_test, .-mbedtls_base64_self_test
	.section	.rodata.base64_test_enc,"a",@progbits
	.align	4
	.type	base64_test_enc, @object
	.size	base64_test_enc, 89
base64_test_enc:
	.string	"JEhuVodiWr2/F9mixBcaAZTtjx4Rs9cJDLbpEG8i7hPKswcFdsn6MWwINP+Nwmw4AEPpVJevUEvRQbqVMVoLlw=="
	.section	.rodata.base64_test_dec,"a",@progbits
	.align	4
	.type	base64_test_dec, @object
	.size	base64_test_dec, 64
base64_test_dec:
	.byte	36
	.byte	72
	.byte	110
	.byte	86
	.byte	-121
	.byte	98
	.byte	90
	.byte	-67
	.byte	-65
	.byte	23
	.byte	-39
	.byte	-94
	.byte	-60
	.byte	23
	.byte	26
	.byte	1
	.byte	-108
	.byte	-19
	.byte	-113
	.byte	30
	.byte	17
	.byte	-77
	.byte	-41
	.byte	9
	.byte	12
	.byte	-74
	.byte	-23
	.byte	16
	.byte	111
	.byte	34
	.byte	-18
	.byte	19
	.byte	-54
	.byte	-77
	.byte	7
	.byte	5
	.byte	118
	.byte	-55
	.byte	-6
	.byte	49
	.byte	108
	.byte	8
	.byte	52
	.byte	-1
	.byte	-115
	.byte	-62
	.byte	108
	.byte	56
	.byte	0
	.byte	67
	.byte	-23
	.byte	84
	.byte	-105
	.byte	-81
	.byte	80
	.byte	75
	.byte	-47
	.byte	65
	.byte	-70
	.byte	-107
	.byte	49
	.byte	90
	.byte	11
	.byte	-105
	.section	.rodata.base64_dec_map,"a",@progbits
	.align	4
	.type	base64_dec_map, @object
	.size	base64_dec_map, 128
base64_dec_map:
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	62
	.byte	127
	.byte	127
	.byte	127
	.byte	63
	.byte	52
	.byte	53
	.byte	54
	.byte	55
	.byte	56
	.byte	57
	.byte	58
	.byte	59
	.byte	60
	.byte	61
	.byte	127
	.byte	127
	.byte	127
	.byte	64
	.byte	127
	.byte	127
	.byte	127
	.byte	0
	.byte	1
	.byte	2
	.byte	3
	.byte	4
	.byte	5
	.byte	6
	.byte	7
	.byte	8
	.byte	9
	.byte	10
	.byte	11
	.byte	12
	.byte	13
	.byte	14
	.byte	15
	.byte	16
	.byte	17
	.byte	18
	.byte	19
	.byte	20
	.byte	21
	.byte	22
	.byte	23
	.byte	24
	.byte	25
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	26
	.byte	27
	.byte	28
	.byte	29
	.byte	30
	.byte	31
	.byte	32
	.byte	33
	.byte	34
	.byte	35
	.byte	36
	.byte	37
	.byte	38
	.byte	39
	.byte	40
	.byte	41
	.byte	42
	.byte	43
	.byte	44
	.byte	45
	.byte	46
	.byte	47
	.byte	48
	.byte	49
	.byte	50
	.byte	51
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.section	.rodata.base64_enc_map,"a",@progbits
	.align	4
	.type	base64_enc_map, @object
	.size	base64_enc_map, 64
base64_enc_map:
	.byte	65
	.byte	66
	.byte	67
	.byte	68
	.byte	69
	.byte	70
	.byte	71
	.byte	72
	.byte	73
	.byte	74
	.byte	75
	.byte	76
	.byte	77
	.byte	78
	.byte	79
	.byte	80
	.byte	81
	.byte	82
	.byte	83
	.byte	84
	.byte	85
	.byte	86
	.byte	87
	.byte	88
	.byte	89
	.byte	90
	.byte	97
	.byte	98
	.byte	99
	.byte	100
	.byte	101
	.byte	102
	.byte	103
	.byte	104
	.byte	105
	.byte	106
	.byte	107
	.byte	108
	.byte	109
	.byte	110
	.byte	111
	.byte	112
	.byte	113
	.byte	114
	.byte	115
	.byte	116
	.byte	117
	.byte	118
	.byte	119
	.byte	120
	.byte	121
	.byte	122
	.byte	48
	.byte	49
	.byte	50
	.byte	51
	.byte	52
	.byte	53
	.byte	54
	.byte	55
	.byte	56
	.byte	57
	.byte	43
	.byte	47
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
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x4
	.4byte	.LCFI0-.LFB0
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x4
	.4byte	.LCFI1-.LFB1
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI2-.LFB2
	.byte	0xe
	.uleb128 0xb0
	.align	4
.LEFDE4:
	.text
.Letext0:
	.file 2 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdio.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/string.h"
	.file 7 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x47d
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF28
	.byte	0xc
	.4byte	.LASF29
	.4byte	.LASF30
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x2
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
	.byte	0x3
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
	.byte	0x2d
	.4byte	0x5a
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x5
	.byte	0x4
	.4byte	0x4c
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.uleb128 0x6
	.4byte	.LASF17
	.byte	0x1
	.byte	0x4d
	.4byte	0x25
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x152
	.uleb128 0x7
	.string	"dst"
	.byte	0x1
	.byte	0x4d
	.4byte	0x93
	.4byte	.LLST0
	.uleb128 0x8
	.4byte	.LASF14
	.byte	0x1
	.byte	0x4d
	.4byte	0x2c
	.4byte	.LLST1
	.uleb128 0x9
	.4byte	.LASF15
	.byte	0x1
	.byte	0x4d
	.4byte	0x152
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x7
	.string	"src"
	.byte	0x1
	.byte	0x4e
	.4byte	0x158
	.4byte	.LLST2
	.uleb128 0x9
	.4byte	.LASF16
	.byte	0x1
	.byte	0x4e
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x56
	.uleb128 0xa
	.string	"i"
	.byte	0x1
	.byte	0x50
	.4byte	0x2c
	.4byte	.LLST3
	.uleb128 0xa
	.string	"n"
	.byte	0x1
	.byte	0x50
	.4byte	0x2c
	.4byte	.LLST4
	.uleb128 0xa
	.string	"C1"
	.byte	0x1
	.byte	0x51
	.4byte	0x25
	.4byte	.LLST5
	.uleb128 0xa
	.string	"C2"
	.byte	0x1
	.byte	0x51
	.4byte	0x25
	.4byte	.LLST6
	.uleb128 0xa
	.string	"C3"
	.byte	0x1
	.byte	0x51
	.4byte	0x25
	.4byte	.LLST7
	.uleb128 0xa
	.string	"p"
	.byte	0x1
	.byte	0x52
	.4byte	0x93
	.4byte	.LLST8
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x2c
	.uleb128 0x5
	.byte	0x4
	.4byte	0x15e
	.uleb128 0xb
	.4byte	0x4c
	.uleb128 0x6
	.4byte	.LASF18
	.byte	0x1
	.byte	0x90
	.4byte	0x25
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x207
	.uleb128 0x7
	.string	"dst"
	.byte	0x1
	.byte	0x90
	.4byte	0x93
	.4byte	.LLST9
	.uleb128 0x8
	.4byte	.LASF14
	.byte	0x1
	.byte	0x90
	.4byte	0x2c
	.4byte	.LLST10
	.uleb128 0x9
	.4byte	.LASF15
	.byte	0x1
	.byte	0x90
	.4byte	0x152
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x7
	.string	"src"
	.byte	0x1
	.byte	0x91
	.4byte	0x158
	.4byte	.LLST11
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0x1
	.byte	0x91
	.4byte	0x2c
	.4byte	.LLST12
	.uleb128 0xa
	.string	"i"
	.byte	0x1
	.byte	0x93
	.4byte	0x2c
	.4byte	.LLST13
	.uleb128 0xa
	.string	"n"
	.byte	0x1
	.byte	0x93
	.4byte	0x2c
	.4byte	.LLST14
	.uleb128 0xa
	.string	"j"
	.byte	0x1
	.byte	0x94
	.4byte	0x73
	.4byte	.LLST15
	.uleb128 0xa
	.string	"x"
	.byte	0x1
	.byte	0x94
	.4byte	0x73
	.4byte	.LLST16
	.uleb128 0xa
	.string	"p"
	.byte	0x1
	.byte	0x95
	.4byte	0x93
	.4byte	.LLST17
	.byte	0
	.uleb128 0x6
	.4byte	.LASF19
	.byte	0x1
	.byte	0xfb
	.4byte	0x25
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x376
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0x1
	.byte	0xfb
	.4byte	0x25
	.4byte	.LLST18
	.uleb128 0xc
	.string	"len"
	.byte	0x1
	.byte	0xfd
	.4byte	0x2c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0xa
	.string	"src"
	.byte	0x1
	.byte	0xfe
	.4byte	0x158
	.4byte	.LLST19
	.uleb128 0xd
	.4byte	.LASF21
	.byte	0x1
	.byte	0xff
	.4byte	0x376
	.uleb128 0x3
	.byte	0x91
	.sleb128 -172
	.uleb128 0xe
	.4byte	.LVL88
	.4byte	0x45b
	.4byte	0x273
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.uleb128 0xe
	.4byte	.LVL89
	.4byte	0xa0
	.4byte	0x2a4
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -172
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x80
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	base64_test_dec
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.uleb128 0xe
	.4byte	.LVL90
	.4byte	0x466
	.4byte	0x2c8
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	base64_test_enc
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -172
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x58
	.byte	0
	.uleb128 0xe
	.4byte	.LVL91
	.4byte	0x471
	.4byte	0x2df
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.byte	0
	.uleb128 0xe
	.4byte	.LVL92
	.4byte	0x45b
	.4byte	0x2f6
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0
	.uleb128 0xe
	.4byte	.LVL93
	.4byte	0x163
	.4byte	0x327
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -172
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x80
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	base64_test_enc
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x8
	.byte	0x58
	.byte	0
	.uleb128 0xe
	.4byte	.LVL94
	.4byte	0x466
	.4byte	0x34b
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	base64_test_dec
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -172
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.uleb128 0xe
	.4byte	.LVL95
	.4byte	0x471
	.4byte	0x362
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.byte	0
	.uleb128 0x10
	.4byte	.LVL96
	.4byte	0x471
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC12
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	0x4c
	.4byte	0x386
	.uleb128 0x12
	.4byte	0x85
	.byte	0x7f
	.byte	0
	.uleb128 0x11
	.4byte	0x4c
	.4byte	0x396
	.uleb128 0x12
	.4byte	0x85
	.byte	0x3f
	.byte	0
	.uleb128 0xd
	.4byte	.LASF22
	.byte	0x1
	.byte	0x2c
	.4byte	0x3a7
	.uleb128 0x5
	.byte	0x3
	.4byte	base64_enc_map
	.uleb128 0xb
	.4byte	0x386
	.uleb128 0xd
	.4byte	.LASF23
	.byte	0x1
	.byte	0x37
	.4byte	0x3bd
	.uleb128 0x5
	.byte	0x3
	.4byte	base64_dec_map
	.uleb128 0xb
	.4byte	0x376
	.uleb128 0xd
	.4byte	.LASF24
	.byte	0x1
	.byte	0xe8
	.4byte	0x3d3
	.uleb128 0x5
	.byte	0x3
	.4byte	base64_test_dec
	.uleb128 0xb
	.4byte	0x386
	.uleb128 0x11
	.4byte	0x4c
	.4byte	0x3e8
	.uleb128 0x12
	.4byte	0x85
	.byte	0x58
	.byte	0
	.uleb128 0xd
	.4byte	.LASF25
	.byte	0x1
	.byte	0xf4
	.4byte	0x3f9
	.uleb128 0x5
	.byte	0x3
	.4byte	base64_test_enc
	.uleb128 0xb
	.4byte	0x3d8
	.uleb128 0x13
	.uleb128 0x5b
	.byte	0x9e
	.uleb128 0x59
	.byte	0x4a
	.byte	0x45
	.byte	0x68
	.byte	0x75
	.byte	0x56
	.byte	0x6f
	.byte	0x64
	.byte	0x69
	.byte	0x57
	.byte	0x72
	.byte	0x32
	.byte	0x2f
	.byte	0x46
	.byte	0x39
	.byte	0x6d
	.byte	0x69
	.byte	0x78
	.byte	0x42
	.byte	0x63
	.byte	0x61
	.byte	0x41
	.byte	0x5a
	.byte	0x54
	.byte	0x74
	.byte	0x6a
	.byte	0x78
	.byte	0x34
	.byte	0x52
	.byte	0x73
	.byte	0x39
	.byte	0x63
	.byte	0x4a
	.byte	0x44
	.byte	0x4c
	.byte	0x62
	.byte	0x70
	.byte	0x45
	.byte	0x47
	.byte	0x38
	.byte	0x69
	.byte	0x37
	.byte	0x68
	.byte	0x50
	.byte	0x4b
	.byte	0x73
	.byte	0x77
	.byte	0x63
	.byte	0x46
	.byte	0x64
	.byte	0x73
	.byte	0x6e
	.byte	0x36
	.byte	0x4d
	.byte	0x57
	.byte	0x77
	.byte	0x49
	.byte	0x4e
	.byte	0x50
	.byte	0x2b
	.byte	0x4e
	.byte	0x77
	.byte	0x6d
	.byte	0x77
	.byte	0x34
	.byte	0x41
	.byte	0x45
	.byte	0x50
	.byte	0x70
	.byte	0x56
	.byte	0x4a
	.byte	0x65
	.byte	0x76
	.byte	0x55
	.byte	0x45
	.byte	0x76
	.byte	0x52
	.byte	0x51
	.byte	0x62
	.byte	0x71
	.byte	0x56
	.byte	0x4d
	.byte	0x56
	.byte	0x6f
	.byte	0x4c
	.byte	0x6c
	.byte	0x77
	.byte	0x3d
	.byte	0x3d
	.byte	0
	.uleb128 0x14
	.4byte	.LASF26
	.4byte	.LASF26
	.byte	0x5
	.byte	0xb2
	.uleb128 0x14
	.4byte	.LASF27
	.4byte	.LASF27
	.byte	0x6
	.byte	0x16
	.uleb128 0x15
	.4byte	.LASF31
	.4byte	.LASF32
	.byte	0x7
	.byte	0
	.4byte	.LASF31
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x36
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL2
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
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL39
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL30
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x3
	.byte	0x75
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x3
	.byte	0x75
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL23
	.2byte	0x3
	.byte	0x75
	.sleb128 3
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL24
	.4byte	.LVL27
	.2byte	0x3
	.byte	0x75
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x3
	.byte	0x75
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x3
	.byte	0x75
	.sleb128 1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL26
	.4byte	.LVL38
	.2byte	0x3
	.byte	0x7c
	.sleb128 -1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL3
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL7
	.4byte	.LVL10
	.2byte	0x3
	.byte	0x78
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LFE0
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL12
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL25
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL13
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL29
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL34
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL14
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL11
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x3
	.byte	0x7a
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LVL17
	.2byte	0x3
	.byte	0x7a
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LVL19
	.2byte	0x3
	.byte	0x7a
	.sleb128 3
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL22
	.2byte	0x3
	.byte	0x7a
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL29
	.4byte	.LVL31
	.2byte	0x3
	.byte	0x7a
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x3
	.byte	0x7a
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x3
	.byte	0x7a
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL37
	.4byte	.LFE0
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL40
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL52
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL59
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL76
	.4byte	.LVL77
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL77
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL78
	.4byte	.LVL79
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL79
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL80
	.4byte	.LVL81
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL81
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL82
	.4byte	.LVL83
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL83
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL84
	.4byte	.LVL85
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL85
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL86
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL40
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL57
	.4byte	.LVL77
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL77
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL40
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL73
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL40
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL54
	.4byte	.LVL77
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	.LVL77
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL56
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL64
	.4byte	.LVL71
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL71
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL77
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL59
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL75
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL77
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL42
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL59
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL62
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL75
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL77
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL59
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL65
	.4byte	.LVL66
	.2byte	0x3
	.byte	0x7e
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL66
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL67
	.4byte	.LVL68
	.2byte	0x3
	.byte	0x7e
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL69
	.4byte	.LVL70
	.2byte	0x3
	.byte	0x7e
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL70
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL75
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL87
	.4byte	.LVL100
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL100
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL88
	.4byte	.LVL92
	.2byte	0x6
	.byte	0x3
	.4byte	base64_test_dec
	.byte	0x9f
	.4byte	.LVL92
	.4byte	.LVL97
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+1022
	.sleb128 0
	.4byte	.LVL97
	.4byte	.LVL98
	.2byte	0x6
	.byte	0x3
	.4byte	base64_test_dec
	.byte	0x9f
	.4byte	.LVL98
	.4byte	.LVL99
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+1022
	.sleb128 0
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x2c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF24:
	.string	"base64_test_dec"
.LASF20:
	.string	"verbose"
.LASF29:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/library/base64.c"
.LASF27:
	.string	"memcmp"
.LASF25:
	.string	"base64_test_enc"
.LASF19:
	.string	"mbedtls_base64_self_test"
.LASF28:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF14:
	.string	"dlen"
.LASF32:
	.string	"__builtin_puts"
.LASF3:
	.string	"unsigned char"
.LASF16:
	.string	"slen"
.LASF12:
	.string	"long unsigned int"
.LASF1:
	.string	"short unsigned int"
.LASF5:
	.string	"size_t"
.LASF9:
	.string	"uint32_t"
.LASF6:
	.string	"__uint32_t"
.LASF17:
	.string	"mbedtls_base64_encode"
.LASF0:
	.string	"unsigned int"
.LASF8:
	.string	"long long unsigned int"
.LASF15:
	.string	"olen"
.LASF22:
	.string	"base64_enc_map"
.LASF11:
	.string	"sizetype"
.LASF7:
	.string	"long long int"
.LASF13:
	.string	"char"
.LASF23:
	.string	"base64_dec_map"
.LASF26:
	.string	"printf"
.LASF4:
	.string	"short int"
.LASF21:
	.string	"buffer"
.LASF30:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\mbedtls"
.LASF10:
	.string	"long int"
.LASF31:
	.string	"puts"
.LASF2:
	.string	"signed char"
.LASF18:
	.string	"mbedtls_base64_decode"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
