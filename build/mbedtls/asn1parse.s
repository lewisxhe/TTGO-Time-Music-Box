	.file	"asn1parse.c"
	.text
.Ltext0:
	.section	.text.mbedtls_asn1_get_len,"ax",@progbits
	.align	4
	.global	mbedtls_asn1_get_len
	.type	mbedtls_asn1_get_len, @function
mbedtls_asn1_get_len:
.LFB0:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/library/asn1parse.c"
	.loc 1 53 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 54 0
	l32i.n	a8, a2, 0
	sub	a10, a3, a8
	blti	a10, 1, .L10
	.loc 1 57 0
	l8ui	a9, a8, 0
	sext	a11, a9, 7
	bltz	a11, .L3
	.loc 1 58 0
	addi.n	a9, a8, 1
	s32i.n	a9, a2, 0
	l8ui	a8, a8, 0
	s32i.n	a8, a4, 0
	j	.L4
.L3:
	.loc 1 61 0
	extui	a9, a9, 0, 7
	beqi	a9, 2, .L5
	bgeui	a9, 3, .L6
	beqi	a9, 1, .L7
	j	.L11
.L6:
	beqi	a9, 3, .L8
	beqi	a9, 4, .L9
	j	.L11
.L7:
	.loc 1 64 0
	blti	a10, 2, .L12
	.loc 1 67 0
	l8ui	a8, a8, 1
	s32i.n	a8, a4, 0
	.loc 1 68 0
	l32i.n	a8, a2, 0
	addi.n	a8, a8, 2
	s32i.n	a8, a2, 0
	.loc 1 69 0
	j	.L4
.L5:
	.loc 1 72 0
	blti	a10, 3, .L13
	.loc 1 75 0
	l8ui	a9, a8, 1
	slli	a9, a9, 8
	l8ui	a8, a8, 2
	or	a8, a8, a9
	s32i.n	a8, a4, 0
	.loc 1 76 0
	l32i.n	a8, a2, 0
	addi.n	a8, a8, 3
	s32i.n	a8, a2, 0
	.loc 1 77 0
	j	.L4
.L8:
	.loc 1 80 0
	blti	a10, 4, .L14
	.loc 1 83 0
	l8ui	a9, a8, 1
	slli	a10, a9, 16
	.loc 1 84 0
	l8ui	a9, a8, 2
	slli	a9, a9, 8
	.loc 1 83 0
	or	a9, a10, a9
	.loc 1 84 0
	l8ui	a8, a8, 3
	or	a8, a8, a9
	.loc 1 83 0
	s32i.n	a8, a4, 0
	.loc 1 85 0
	l32i.n	a8, a2, 0
	addi.n	a8, a8, 4
	s32i.n	a8, a2, 0
	.loc 1 86 0
	j	.L4
.L9:
	.loc 1 89 0
	blti	a10, 5, .L15
	.loc 1 92 0
	l8ui	a10, a8, 1
	slli	a10, a10, 24
	l8ui	a9, a8, 2
	slli	a9, a9, 16
	or	a10, a10, a9
	.loc 1 93 0
	l8ui	a9, a8, 3
	slli	a9, a9, 8
	.loc 1 92 0
	or	a9, a10, a9
	.loc 1 93 0
	l8ui	a8, a8, 4
	or	a8, a8, a9
	.loc 1 92 0
	s32i.n	a8, a4, 0
	.loc 1 94 0
	l32i.n	a8, a2, 0
	addi.n	a8, a8, 5
	s32i.n	a8, a2, 0
.L4:
	.loc 1 102 0
	l32i.n	a4, a4, 0
.LVL1:
	l32i.n	a2, a2, 0
.LVL2:
	sub	a3, a3, a2
.LVL3:
	bgeu	a3, a4, .L16
	.loc 1 103 0
	movi	a2, -0x60
	retw.n
.LVL4:
.L10:
	.loc 1 55 0
	movi	a2, -0x60
.LVL5:
	retw.n
.LVL6:
.L11:
	.loc 1 98 0
	movi	a2, -0x64
.LVL7:
	retw.n
.LVL8:
.L12:
	.loc 1 65 0
	movi	a2, -0x60
.LVL9:
	retw.n
.LVL10:
.L13:
	.loc 1 73 0
	movi	a2, -0x60
.LVL11:
	retw.n
.LVL12:
.L14:
	.loc 1 81 0
	movi	a2, -0x60
.LVL13:
	retw.n
.LVL14:
.L15:
	.loc 1 90 0
	movi	a2, -0x60
.LVL15:
	retw.n
.LVL16:
.L16:
	.loc 1 105 0
	movi.n	a2, 0
	.loc 1 106 0
	retw.n
.LFE0:
	.size	mbedtls_asn1_get_len, .-mbedtls_asn1_get_len
	.section	.text.mbedtls_asn1_get_tag,"ax",@progbits
	.align	4
	.global	mbedtls_asn1_get_tag
	.type	mbedtls_asn1_get_tag, @function
mbedtls_asn1_get_tag:
.LFB1:
	.loc 1 111 0
.LVL17:
	entry	sp, 32
.LCFI1:
	.loc 1 112 0
	l32i.n	a8, a2, 0
	sub	a9, a3, a8
	blti	a9, 1, .L19
	.loc 1 115 0
	l8ui	a9, a8, 0
	bne	a9, a5, .L20
	.loc 1 118 0
	addi.n	a8, a8, 1
	s32i.n	a8, a2, 0
	.loc 1 120 0
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	mbedtls_asn1_get_len
.LVL18:
	mov.n	a2, a10
.LVL19:
	retw.n
.LVL20:
.L19:
	.loc 1 113 0
	movi	a2, -0x60
.LVL21:
	retw.n
.LVL22:
.L20:
	.loc 1 116 0
	movi	a2, -0x62
.LVL23:
	.loc 1 121 0
	retw.n
.LFE1:
	.size	mbedtls_asn1_get_tag, .-mbedtls_asn1_get_tag
	.section	.text.mbedtls_asn1_get_bool,"ax",@progbits
	.align	4
	.global	mbedtls_asn1_get_bool
	.type	mbedtls_asn1_get_bool, @function
mbedtls_asn1_get_bool:
.LFB2:
	.loc 1 126 0
.LVL24:
	entry	sp, 48
.LCFI2:
	.loc 1 130 0
	movi.n	a13, 1
	mov.n	a12, sp
	mov.n	a11, a3
	mov.n	a10, a2
	call8	mbedtls_asn1_get_tag
.LVL25:
	bnez.n	a10, .L23
	.loc 1 133 0
	l32i.n	a8, sp, 0
	bnei	a8, 1, .L24
	.loc 1 136 0
	l32i.n	a8, a2, 0
	l8ui	a8, a8, 0
	movi.n	a9, 1
	moveqz	a9, a10, a8
	s32i.n	a9, a4, 0
	.loc 1 137 0
	l32i.n	a8, a2, 0
	addi.n	a8, a8, 1
	s32i.n	a8, a2, 0
	.loc 1 139 0
	mov.n	a2, a10
.LVL26:
	retw.n
.LVL27:
.L23:
	.loc 1 131 0
	mov.n	a2, a10
.LVL28:
	retw.n
.LVL29:
.L24:
	.loc 1 134 0
	movi	a2, -0x64
.LVL30:
	.loc 1 140 0
	retw.n
.LFE2:
	.size	mbedtls_asn1_get_bool, .-mbedtls_asn1_get_bool
	.section	.text.mbedtls_asn1_get_int,"ax",@progbits
	.align	4
	.global	mbedtls_asn1_get_int
	.type	mbedtls_asn1_get_int, @function
mbedtls_asn1_get_int:
.LFB3:
	.loc 1 145 0
.LVL31:
	entry	sp, 48
.LCFI3:
	.loc 1 149 0
	movi.n	a13, 2
	mov.n	a12, sp
	mov.n	a11, a3
	mov.n	a10, a2
	call8	mbedtls_asn1_get_tag
.LVL32:
	bnez.n	a10, .L29
	.loc 1 152 0
	l32i.n	a8, sp, 0
	addi.n	a8, a8, -1
	bgeui	a8, 4, .L30
	.loc 1 152 0 is_stmt 0 discriminator 1
	l32i.n	a8, a2, 0
	l8ui	a8, a8, 0
	sext	a8, a8, 7
	bltz	a8, .L31
	.loc 1 155 0 is_stmt 1
	movi.n	a8, 0
	s32i.n	a8, a4, 0
	.loc 1 157 0
	j	.L27
.L28:
	.loc 1 159 0
	l32i.n	a8, a4, 0
	slli	a8, a8, 8
	l32i.n	a9, a2, 0
	l8ui	a9, a9, 0
	or	a8, a9, a8
	s32i.n	a8, a4, 0
	.loc 1 160 0
	l32i.n	a8, a2, 0
	addi.n	a8, a8, 1
	s32i.n	a8, a2, 0
.L27:
	.loc 1 157 0
	l32i.n	a8, sp, 0
	addi.n	a9, a8, -1
	s32i.n	a9, sp, 0
	bnez.n	a8, .L28
	.loc 1 163 0
	movi.n	a2, 0
.LVL33:
	retw.n
.LVL34:
.L29:
	.loc 1 150 0
	mov.n	a2, a10
.LVL35:
	retw.n
.LVL36:
.L30:
	.loc 1 153 0
	movi	a2, -0x64
.LVL37:
	retw.n
.LVL38:
.L31:
	movi	a2, -0x64
.LVL39:
	.loc 1 164 0
	retw.n
.LFE3:
	.size	mbedtls_asn1_get_int, .-mbedtls_asn1_get_int
	.section	.text.mbedtls_asn1_get_mpi,"ax",@progbits
	.align	4
	.global	mbedtls_asn1_get_mpi
	.type	mbedtls_asn1_get_mpi, @function
mbedtls_asn1_get_mpi:
.LFB4:
	.loc 1 170 0
.LVL40:
	entry	sp, 48
.LCFI4:
	.loc 1 174 0
	movi.n	a13, 2
	mov.n	a12, sp
	mov.n	a11, a3
	mov.n	a10, a2
	call8	mbedtls_asn1_get_tag
.LVL41:
	bnez.n	a10, .L34
	.loc 1 177 0
	l32i.n	a12, sp, 0
	l32i.n	a11, a2, 0
	mov.n	a10, a4
.LVL42:
	call8	mbedtls_mpi_read_binary
.LVL43:
	.loc 1 179 0
	l32i.n	a4, a2, 0
.LVL44:
	l32i.n	a8, sp, 0
	add.n	a8, a4, a8
	s32i.n	a8, a2, 0
	.loc 1 181 0
	mov.n	a2, a10
.LVL45:
	retw.n
.LVL46:
.L34:
	.loc 1 175 0
	mov.n	a2, a10
.LVL47:
	.loc 1 182 0
	retw.n
.LFE4:
	.size	mbedtls_asn1_get_mpi, .-mbedtls_asn1_get_mpi
	.section	.text.mbedtls_asn1_get_bitstring,"ax",@progbits
	.align	4
	.global	mbedtls_asn1_get_bitstring
	.type	mbedtls_asn1_get_bitstring, @function
mbedtls_asn1_get_bitstring:
.LFB5:
	.loc 1 187 0
.LVL48:
	entry	sp, 32
.LCFI5:
	.loc 1 191 0
	movi.n	a13, 3
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	mbedtls_asn1_get_tag
.LVL49:
	bnez.n	a10, .L37
	.loc 1 195 0
	l32i.n	a8, a4, 0
	beqz.n	a8, .L38
	.loc 1 197 0
	addi.n	a8, a8, -1
	s32i.n	a8, a4, 0
	.loc 1 200 0
	l32i.n	a8, a2, 0
	l8ui	a8, a8, 0
	s8i	a8, a4, 4
	.loc 1 201 0
	bgeui	a8, 8, .L39
	.loc 1 203 0
	l32i.n	a8, a2, 0
	addi.n	a8, a8, 1
	s32i.n	a8, a2, 0
	.loc 1 206 0
	s32i.n	a8, a4, 8
	.loc 1 207 0
	l32i.n	a8, a2, 0
	l32i.n	a4, a4, 0
.LVL50:
	add.n	a4, a8, a4
	s32i.n	a4, a2, 0
	.loc 1 209 0
	beq	a3, a4, .L40
	.loc 1 210 0
	movi	a2, -0x66
.LVL51:
	retw.n
.LVL52:
.L37:
	.loc 1 192 0
	mov.n	a2, a10
.LVL53:
	retw.n
.LVL54:
.L38:
	.loc 1 196 0
	movi	a2, -0x60
.LVL55:
	retw.n
.LVL56:
.L39:
	.loc 1 202 0
	movi	a2, -0x64
.LVL57:
	retw.n
.LVL58:
.L40:
	.loc 1 212 0
	movi.n	a2, 0
.LVL59:
	.loc 1 213 0
	retw.n
.LFE5:
	.size	mbedtls_asn1_get_bitstring, .-mbedtls_asn1_get_bitstring
	.section	.text.mbedtls_asn1_get_bitstring_null,"ax",@progbits
	.align	4
	.global	mbedtls_asn1_get_bitstring_null
	.type	mbedtls_asn1_get_bitstring_null, @function
mbedtls_asn1_get_bitstring_null:
.LFB6:
	.loc 1 220 0
.LVL60:
	entry	sp, 32
.LCFI6:
	.loc 1 223 0
	movi.n	a13, 3
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	mbedtls_asn1_get_tag
.LVL61:
	bnez.n	a10, .L43
	.loc 1 226 0
	l32i.n	a8, a4, 0
	addi.n	a9, a8, -1
	s32i.n	a9, a4, 0
	bltui	a8, 2, .L44
	.loc 1 226 0 is_stmt 0 discriminator 1
	l32i.n	a4, a2, 0
.LVL62:
	addi.n	a8, a4, 1
	s32i.n	a8, a2, 0
	l8ui	a2, a4, 0
.LVL63:
	bnez.n	a2, .L45
	retw.n
.LVL64:
.L43:
	.loc 1 224 0 is_stmt 1
	mov.n	a2, a10
.LVL65:
	retw.n
.LVL66:
.L44:
	.loc 1 227 0
	movi	a2, -0x68
.LVL67:
	retw.n
.LVL68:
.L45:
	movi	a2, -0x68
	.loc 1 230 0
	retw.n
.LFE6:
	.size	mbedtls_asn1_get_bitstring_null, .-mbedtls_asn1_get_bitstring_null
	.section	.text.mbedtls_asn1_get_sequence_of,"ax",@progbits
	.align	4
	.global	mbedtls_asn1_get_sequence_of
	.type	mbedtls_asn1_get_sequence_of, @function
mbedtls_asn1_get_sequence_of:
.LFB7:
	.loc 1 241 0
.LVL69:
	entry	sp, 48
.LCFI7:
	.loc 1 247 0
	movi.n	a13, 0x30
	mov.n	a12, sp
	mov.n	a11, a3
	mov.n	a10, a2
	call8	mbedtls_asn1_get_tag
.LVL70:
	bnez.n	a10, .L51
	.loc 1 251 0
	l32i.n	a9, a2, 0
	l32i.n	a8, sp, 0
	add.n	a8, a9, a8
	beq	a3, a8, .L49
	j	.L52
.LVL71:
.L50:
	.loc 1 257 0
	l8ui	a8, a8, 0
	s32i.n	a8, a4, 0
	.loc 1 259 0
	mov.n	a13, a5
	addi.n	a12, a4, 4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	mbedtls_asn1_get_tag
.LVL72:
	bnez.n	a10, .L53
	.loc 1 262 0
	l32i.n	a8, a2, 0
	s32i.n	a8, a4, 8
	.loc 1 263 0
	l32i.n	a9, a2, 0
	l32i.n	a8, a4, 4
	add.n	a8, a9, a8
	s32i.n	a8, a2, 0
	.loc 1 266 0
	bgeu	a8, a3, .L49
	.loc 1 268 0
	movi.n	a11, 0x10
	movi.n	a10, 1
.LVL73:
	call8	calloc
.LVL74:
	s32i.n	a10, a4, 12
	.loc 1 271 0
	beqz.n	a10, .L54
	.loc 1 274 0
	mov.n	a4, a10
.LVL75:
.L49:
	.loc 1 254 0
	l32i.n	a8, a2, 0
	bltu	a8, a3, .L50
	.loc 1 279 0
	movi.n	a5, 0
.LVL76:
	s32i.n	a5, a4, 12
	.loc 1 281 0
	l32i.n	a2, a2, 0
.LVL77:
	beq	a3, a2, .L55
	.loc 1 282 0
	movi	a2, -0x66
	retw.n
.LVL78:
.L51:
	.loc 1 249 0
	mov.n	a2, a10
.LVL79:
	retw.n
.LVL80:
.L52:
	.loc 1 252 0
	movi	a2, -0x66
.LVL81:
	retw.n
.LVL82:
.L53:
	.loc 1 260 0
	mov.n	a2, a10
.LVL83:
	retw.n
.LVL84:
.L54:
	.loc 1 272 0
	movi	a2, -0x6a
.LVL85:
	retw.n
.LVL86:
.L55:
	.loc 1 284 0
	movi.n	a2, 0
	.loc 1 285 0
	retw.n
.LFE7:
	.size	mbedtls_asn1_get_sequence_of, .-mbedtls_asn1_get_sequence_of
	.section	.text.mbedtls_asn1_get_alg,"ax",@progbits
	.align	4
	.global	mbedtls_asn1_get_alg
	.type	mbedtls_asn1_get_alg, @function
mbedtls_asn1_get_alg:
.LFB8:
	.loc 1 290 0
.LVL87:
	entry	sp, 48
.LCFI8:
	.loc 1 294 0
	movi.n	a13, 0x30
	mov.n	a12, sp
	mov.n	a11, a3
	mov.n	a10, a2
	call8	mbedtls_asn1_get_tag
.LVL88:
	bnez.n	a10, .L59
	.loc 1 298 0
	l32i.n	a8, a2, 0
	sub	a3, a3, a8
.LVL89:
	blti	a3, 1, .L60
	.loc 1 301 0
	l8ui	a3, a8, 0
	s32i.n	a3, a4, 0
	.loc 1 302 0
	l32i.n	a8, a2, 0
	l32i.n	a3, sp, 0
	add.n	a3, a8, a3
.LVL90:
	.loc 1 304 0
	movi.n	a13, 6
	addi.n	a12, a4, 4
	mov.n	a11, a3
	mov.n	a10, a2
.LVL91:
	call8	mbedtls_asn1_get_tag
.LVL92:
	bnez.n	a10, .L61
	.loc 1 307 0
	l32i.n	a8, a2, 0
	s32i.n	a8, a4, 8
	.loc 1 308 0
	l32i.n	a8, a2, 0
	l32i.n	a4, a4, 4
.LVL93:
	add.n	a4, a8, a4
	s32i.n	a4, a2, 0
	.loc 1 310 0
	bne	a3, a4, .L58
	.loc 1 312 0
	movi.n	a11, 0xc
	mov.n	a10, a5
.LVL94:
	call8	mbedtls_platform_zeroize
.LVL95:
	.loc 1 313 0
	movi.n	a2, 0
.LVL96:
	retw.n
.LVL97:
.L58:
	.loc 1 316 0
	l8ui	a4, a4, 0
	s32i.n	a4, a5, 0
	.loc 1 317 0
	l32i.n	a4, a2, 0
	addi.n	a4, a4, 1
	s32i.n	a4, a2, 0
	.loc 1 319 0
	addi.n	a12, a5, 4
	mov.n	a11, a3
	mov.n	a10, a2
.LVL98:
	call8	mbedtls_asn1_get_len
.LVL99:
	bnez.n	a10, .L62
	.loc 1 322 0
	l32i.n	a4, a2, 0
	s32i.n	a4, a5, 8
	.loc 1 323 0
	l32i.n	a8, a2, 0
	l32i.n	a4, a5, 4
	add.n	a4, a8, a4
	s32i.n	a4, a2, 0
	.loc 1 325 0
	beq	a3, a4, .L63
	.loc 1 326 0
	movi	a2, -0x66
.LVL100:
	retw.n
.LVL101:
.L59:
	.loc 1 296 0
	mov.n	a2, a10
.LVL102:
	retw.n
.LVL103:
.L60:
	.loc 1 299 0
	movi	a2, -0x60
.LVL104:
	retw.n
.LVL105:
.L61:
	.loc 1 305 0
	mov.n	a2, a10
.LVL106:
	retw.n
.LVL107:
.L62:
	.loc 1 320 0
	mov.n	a2, a10
.LVL108:
	retw.n
.LVL109:
.L63:
	.loc 1 328 0
	movi.n	a2, 0
.LVL110:
	.loc 1 329 0
	retw.n
.LFE8:
	.size	mbedtls_asn1_get_alg, .-mbedtls_asn1_get_alg
	.section	.text.mbedtls_asn1_get_alg_null,"ax",@progbits
	.align	4
	.global	mbedtls_asn1_get_alg_null
	.type	mbedtls_asn1_get_alg_null, @function
mbedtls_asn1_get_alg_null:
.LFB9:
	.loc 1 334 0
.LVL111:
	entry	sp, 48
.LCFI9:
	.loc 1 338 0
	movi.n	a8, 0
	s32i.n	a8, sp, 0
	s32i.n	a8, sp, 4
	s32i.n	a8, sp, 8
	.loc 1 340 0
	mov.n	a13, sp
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	mbedtls_asn1_get_alg
.LVL112:
	bnez.n	a10, .L66
	.loc 1 343 0
	l32i.n	a2, sp, 0
.LVL113:
	addi	a8, a2, -5
	movi.n	a10, 1
.LVL114:
	movi.n	a9, 0
	mov.n	a3, a9
.LVL115:
	movnez	a3, a10, a8
	movnez	a9, a10, a2
	bany	a3, a9, .L67
	.loc 1 343 0 is_stmt 0 discriminator 1
	l32i.n	a2, sp, 4
	beqz.n	a2, .L68
	.loc 1 344 0 is_stmt 1
	movi	a2, -0x68
	retw.n
.LVL116:
.L66:
	.loc 1 341 0
	mov.n	a2, a10
.LVL117:
	retw.n
.LVL118:
.L67:
	.loc 1 344 0
	movi	a2, -0x68
	retw.n
.L68:
	.loc 1 346 0
	movi.n	a2, 0
	.loc 1 347 0
	retw.n
.LFE9:
	.size	mbedtls_asn1_get_alg_null, .-mbedtls_asn1_get_alg_null
	.section	.text.mbedtls_asn1_free_named_data,"ax",@progbits
	.align	4
	.global	mbedtls_asn1_free_named_data
	.type	mbedtls_asn1_free_named_data, @function
mbedtls_asn1_free_named_data:
.LFB10:
	.loc 1 350 0
.LVL119:
	entry	sp, 32
.LCFI10:
	.loc 1 351 0
	beqz.n	a2, .L69
	.loc 1 354 0
	l32i.n	a10, a2, 8
	call8	free
.LVL120:
	.loc 1 355 0
	l32i.n	a10, a2, 20
	call8	free
.LVL121:
	.loc 1 357 0
	movi.n	a11, 0x20
	mov.n	a10, a2
	call8	mbedtls_platform_zeroize
.LVL122:
.L69:
	retw.n
.LFE10:
	.size	mbedtls_asn1_free_named_data, .-mbedtls_asn1_free_named_data
	.section	.text.mbedtls_asn1_free_named_data_list,"ax",@progbits
	.align	4
	.global	mbedtls_asn1_free_named_data_list
	.type	mbedtls_asn1_free_named_data_list, @function
mbedtls_asn1_free_named_data_list:
.LFB11:
	.loc 1 361 0
.LVL123:
	entry	sp, 32
.LCFI11:
	.loc 1 364 0
	j	.L72
.LVL124:
.L73:
	.loc 1 366 0
	l32i.n	a8, a3, 24
	s32i.n	a8, a2, 0
	.loc 1 367 0
	mov.n	a10, a3
	call8	mbedtls_asn1_free_named_data
.LVL125:
	.loc 1 368 0
	mov.n	a10, a3
	call8	free
.LVL126:
.L72:
	.loc 1 364 0
	l32i.n	a3, a2, 0
.LVL127:
	bnez.n	a3, .L73
	.loc 1 370 0
	retw.n
.LFE11:
	.size	mbedtls_asn1_free_named_data_list, .-mbedtls_asn1_free_named_data_list
	.section	.text.mbedtls_asn1_find_named_data,"ax",@progbits
	.align	4
	.global	mbedtls_asn1_find_named_data
	.type	mbedtls_asn1_find_named_data, @function
mbedtls_asn1_find_named_data:
.LFB12:
	.loc 1 374 0
.LVL128:
	entry	sp, 32
.LCFI12:
	.loc 1 375 0
	j	.L75
.L78:
	.loc 1 377 0
	l32i.n	a8, a2, 4
	bne	a8, a4, .L76
	.loc 1 378 0 discriminator 1
	mov.n	a12, a4
	mov.n	a11, a3
	l32i.n	a10, a2, 8
	call8	memcmp
.LVL129:
	.loc 1 377 0 discriminator 1
	beqz.n	a10, .L77
.L76:
	.loc 1 383 0
	l32i.n	a2, a2, 24
.LVL130:
.L75:
	.loc 1 375 0
	bnez.n	a2, .L78
.L77:
	.loc 1 387 0
	retw.n
.LFE12:
	.size	mbedtls_asn1_find_named_data, .-mbedtls_asn1_find_named_data
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
	.uleb128 0x30
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
	.uleb128 0x30
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI4-.LFB4
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI5-.LFB5
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI6-.LFB6
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI7-.LFB7
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x4
	.4byte	.LCFI8-.LFB8
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x4
	.4byte	.LCFI9-.LFB9
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI10-.LFB10
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x4
	.4byte	.LCFI11-.LFB11
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI12-.LFB12
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE24:
	.text
.Letext0:
	.file 2 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/bignum.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/asn1.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdlib.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/platform_util.h"
	.file 9 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x8d8
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF44
	.byte	0xc
	.4byte	.LASF45
	.4byte	.LASF46
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
	.uleb128 0x5
	.byte	0x4
	.4byte	0xa6
	.uleb128 0x6
	.4byte	0x99
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x5
	.byte	0xa8
	.4byte	0x73
	.uleb128 0x7
	.byte	0xc
	.byte	0x5
	.byte	0xb6
	.4byte	0xdd
	.uleb128 0x8
	.string	"s"
	.byte	0x5
	.byte	0xb8
	.4byte	0x25
	.byte	0
	.uleb128 0x8
	.string	"n"
	.byte	0x5
	.byte	0xb9
	.4byte	0x2c
	.byte	0x4
	.uleb128 0x8
	.string	"p"
	.byte	0x5
	.byte	0xba
	.4byte	0xdd
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xab
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x5
	.byte	0xbc
	.4byte	0xb6
	.uleb128 0x9
	.4byte	.LASF16
	.byte	0xc
	.byte	0x6
	.byte	0x86
	.4byte	0x11d
	.uleb128 0x8
	.string	"tag"
	.byte	0x6
	.byte	0x88
	.4byte	0x25
	.byte	0
	.uleb128 0x8
	.string	"len"
	.byte	0x6
	.byte	0x89
	.4byte	0x2c
	.byte	0x4
	.uleb128 0x8
	.string	"p"
	.byte	0x6
	.byte	0x8a
	.4byte	0x93
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x6
	.byte	0x8c
	.4byte	0xee
	.uleb128 0x9
	.4byte	.LASF17
	.byte	0xc
	.byte	0x6
	.byte	0x91
	.4byte	0x157
	.uleb128 0x8
	.string	"len"
	.byte	0x6
	.byte	0x93
	.4byte	0x2c
	.byte	0
	.uleb128 0xa
	.4byte	.LASF18
	.byte	0x6
	.byte	0x94
	.4byte	0x4c
	.byte	0x4
	.uleb128 0x8
	.string	"p"
	.byte	0x6
	.byte	0x95
	.4byte	0x93
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x6
	.byte	0x97
	.4byte	0x128
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0x10
	.byte	0x6
	.byte	0x9c
	.4byte	0x187
	.uleb128 0x8
	.string	"buf"
	.byte	0x6
	.byte	0x9e
	.4byte	0x11d
	.byte	0
	.uleb128 0xa
	.4byte	.LASF20
	.byte	0x6
	.byte	0x9f
	.4byte	0x187
	.byte	0xc
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x162
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x6
	.byte	0xa1
	.4byte	0x162
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x20
	.byte	0x6
	.byte	0xa6
	.4byte	0x1d5
	.uleb128 0x8
	.string	"oid"
	.byte	0x6
	.byte	0xa8
	.4byte	0x11d
	.byte	0
	.uleb128 0x8
	.string	"val"
	.byte	0x6
	.byte	0xa9
	.4byte	0x11d
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF20
	.byte	0x6
	.byte	0xaa
	.4byte	0x1d5
	.byte	0x18
	.uleb128 0xa
	.4byte	.LASF22
	.byte	0x6
	.byte	0xab
	.4byte	0x4c
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x198
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x6
	.byte	0xad
	.4byte	0x198
	.uleb128 0xb
	.4byte	.LASF23
	.byte	0x1
	.byte	0x32
	.4byte	0x25
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x22b
	.uleb128 0xc
	.string	"p"
	.byte	0x1
	.byte	0x32
	.4byte	0x22b
	.4byte	.LLST0
	.uleb128 0xc
	.string	"end"
	.byte	0x1
	.byte	0x33
	.4byte	0x231
	.4byte	.LLST1
	.uleb128 0xc
	.string	"len"
	.byte	0x1
	.byte	0x34
	.4byte	0x23c
	.4byte	.LLST2
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x93
	.uleb128 0x5
	.byte	0x4
	.4byte	0x237
	.uleb128 0x6
	.4byte	0x4c
	.uleb128 0x5
	.byte	0x4
	.4byte	0x2c
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0x1
	.byte	0x6c
	.4byte	0x25
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2ac
	.uleb128 0xc
	.string	"p"
	.byte	0x1
	.byte	0x6c
	.4byte	0x22b
	.4byte	.LLST3
	.uleb128 0xd
	.string	"end"
	.byte	0x1
	.byte	0x6d
	.4byte	0x231
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xd
	.string	"len"
	.byte	0x1
	.byte	0x6e
	.4byte	0x23c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xd
	.string	"tag"
	.byte	0x1
	.byte	0x6e
	.4byte	0x25
	.uleb128 0x1
	.byte	0x55
	.uleb128 0xe
	.4byte	.LVL18
	.4byte	0x1e6
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0x1
	.byte	0x7b
	.4byte	0x25
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x329
	.uleb128 0xc
	.string	"p"
	.byte	0x1
	.byte	0x7b
	.4byte	0x22b
	.4byte	.LLST4
	.uleb128 0xd
	.string	"end"
	.byte	0x1
	.byte	0x7c
	.4byte	0x231
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xd
	.string	"val"
	.byte	0x1
	.byte	0x7d
	.4byte	0x329
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x10
	.string	"ret"
	.byte	0x1
	.byte	0x7f
	.4byte	0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x10
	.string	"len"
	.byte	0x1
	.byte	0x80
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xe
	.4byte	.LVL25
	.4byte	0x242
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x25
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0x1
	.byte	0x8e
	.4byte	0x25
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3ac
	.uleb128 0xc
	.string	"p"
	.byte	0x1
	.byte	0x8e
	.4byte	0x22b
	.4byte	.LLST5
	.uleb128 0xd
	.string	"end"
	.byte	0x1
	.byte	0x8f
	.4byte	0x231
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xd
	.string	"val"
	.byte	0x1
	.byte	0x90
	.4byte	0x329
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x10
	.string	"ret"
	.byte	0x1
	.byte	0x92
	.4byte	0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x10
	.string	"len"
	.byte	0x1
	.byte	0x93
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xe
	.4byte	.LVL32
	.4byte	0x242
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0x1
	.byte	0xa7
	.4byte	0x25
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x43f
	.uleb128 0xc
	.string	"p"
	.byte	0x1
	.byte	0xa7
	.4byte	0x22b
	.4byte	.LLST6
	.uleb128 0xd
	.string	"end"
	.byte	0x1
	.byte	0xa8
	.4byte	0x231
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xc
	.string	"X"
	.byte	0x1
	.byte	0xa9
	.4byte	0x43f
	.4byte	.LLST7
	.uleb128 0x11
	.string	"ret"
	.byte	0x1
	.byte	0xab
	.4byte	0x25
	.4byte	.LLST8
	.uleb128 0x10
	.string	"len"
	.byte	0x1
	.byte	0xac
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x12
	.4byte	.LVL41
	.4byte	0x242
	.4byte	0x42e
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0xe
	.4byte	.LVL43
	.4byte	0x8a3
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xe3
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0x1
	.byte	0xb9
	.4byte	0x25
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4b5
	.uleb128 0xc
	.string	"p"
	.byte	0x1
	.byte	0xb9
	.4byte	0x22b
	.4byte	.LLST9
	.uleb128 0xd
	.string	"end"
	.byte	0x1
	.byte	0xb9
	.4byte	0x231
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xc
	.string	"bs"
	.byte	0x1
	.byte	0xba
	.4byte	0x4b5
	.4byte	.LLST10
	.uleb128 0x10
	.string	"ret"
	.byte	0x1
	.byte	0xbc
	.4byte	0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0xe
	.4byte	.LVL49
	.4byte	0x242
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x157
	.uleb128 0xb
	.4byte	.LASF29
	.byte	0x1
	.byte	0xda
	.4byte	0x25
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x52c
	.uleb128 0xc
	.string	"p"
	.byte	0x1
	.byte	0xda
	.4byte	0x22b
	.4byte	.LLST11
	.uleb128 0xd
	.string	"end"
	.byte	0x1
	.byte	0xda
	.4byte	0x231
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xc
	.string	"len"
	.byte	0x1
	.byte	0xdb
	.4byte	0x23c
	.4byte	.LLST12
	.uleb128 0x10
	.string	"ret"
	.byte	0x1
	.byte	0xdd
	.4byte	0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0xe
	.4byte	.LVL61
	.4byte	0x242
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0x1
	.byte	0xed
	.4byte	0x25
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x60a
	.uleb128 0xc
	.string	"p"
	.byte	0x1
	.byte	0xed
	.4byte	0x22b
	.4byte	.LLST13
	.uleb128 0xd
	.string	"end"
	.byte	0x1
	.byte	0xee
	.4byte	0x231
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xc
	.string	"cur"
	.byte	0x1
	.byte	0xef
	.4byte	0x60a
	.4byte	.LLST14
	.uleb128 0xc
	.string	"tag"
	.byte	0x1
	.byte	0xf0
	.4byte	0x25
	.4byte	.LLST15
	.uleb128 0x11
	.string	"ret"
	.byte	0x1
	.byte	0xf2
	.4byte	0x25
	.4byte	.LLST16
	.uleb128 0x10
	.string	"len"
	.byte	0x1
	.byte	0xf3
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x11
	.string	"buf"
	.byte	0x1
	.byte	0xf4
	.4byte	0x610
	.4byte	.LLST17
	.uleb128 0x12
	.4byte	.LVL70
	.4byte	0x242
	.4byte	0x5cf
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x8
	.byte	0x30
	.byte	0
	.uleb128 0x12
	.4byte	.LVL72
	.4byte	0x242
	.4byte	0x5f5
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 4
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0xe
	.4byte	.LVL74
	.4byte	0x8af
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x18d
	.uleb128 0x5
	.byte	0x4
	.4byte	0x11d
	.uleb128 0x13
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x11f
	.4byte	0x25
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x70c
	.uleb128 0x14
	.string	"p"
	.byte	0x1
	.2byte	0x11f
	.4byte	0x22b
	.4byte	.LLST18
	.uleb128 0x14
	.string	"end"
	.byte	0x1
	.2byte	0x120
	.4byte	0x231
	.4byte	.LLST19
	.uleb128 0x14
	.string	"alg"
	.byte	0x1
	.2byte	0x121
	.4byte	0x610
	.4byte	.LLST20
	.uleb128 0x15
	.4byte	.LASF32
	.byte	0x1
	.2byte	0x121
	.4byte	0x610
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x16
	.string	"ret"
	.byte	0x1
	.2byte	0x123
	.4byte	0x25
	.4byte	.LLST21
	.uleb128 0x17
	.string	"len"
	.byte	0x1
	.2byte	0x124
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x12
	.4byte	.LVL88
	.4byte	0x242
	.4byte	0x6b1
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x8
	.byte	0x30
	.byte	0
	.uleb128 0x12
	.4byte	.LVL92
	.4byte	0x242
	.4byte	0x6d6
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 4
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.uleb128 0x12
	.4byte	.LVL95
	.4byte	0x8ba
	.4byte	0x6ef
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x3c
	.byte	0
	.uleb128 0xe
	.4byte	.LVL99
	.4byte	0x1e6
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 4
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	.LASF33
	.byte	0x1
	.2byte	0x14b
	.4byte	0x25
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x794
	.uleb128 0x14
	.string	"p"
	.byte	0x1
	.2byte	0x14b
	.4byte	0x22b
	.4byte	.LLST22
	.uleb128 0x14
	.string	"end"
	.byte	0x1
	.2byte	0x14c
	.4byte	0x231
	.4byte	.LLST23
	.uleb128 0x18
	.string	"alg"
	.byte	0x1
	.2byte	0x14d
	.4byte	0x610
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x16
	.string	"ret"
	.byte	0x1
	.2byte	0x14f
	.4byte	0x25
	.4byte	.LLST24
	.uleb128 0x19
	.4byte	.LASF32
	.byte	0x1
	.2byte	0x150
	.4byte	0x11d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xe
	.4byte	.LVL112
	.4byte	0x616
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF34
	.byte	0x1
	.2byte	0x15d
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7e1
	.uleb128 0x18
	.string	"cur"
	.byte	0x1
	.2byte	0x15d
	.4byte	0x7e1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1b
	.4byte	.LVL120
	.4byte	0x8c5
	.uleb128 0x1b
	.4byte	.LVL121
	.4byte	0x8c5
	.uleb128 0xe
	.4byte	.LVL122
	.4byte	0x8ba
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1db
	.uleb128 0x1a
	.4byte	.LASF35
	.byte	0x1
	.2byte	0x168
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x840
	.uleb128 0x15
	.4byte	.LASF36
	.byte	0x1
	.2byte	0x168
	.4byte	0x840
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x16
	.string	"cur"
	.byte	0x1
	.2byte	0x16a
	.4byte	0x7e1
	.4byte	.LLST25
	.uleb128 0x12
	.4byte	.LVL125
	.4byte	0x794
	.4byte	0x82f
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0xe
	.4byte	.LVL126
	.4byte	0x8c5
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x7e1
	.uleb128 0x13
	.4byte	.LASF37
	.byte	0x1
	.2byte	0x174
	.4byte	0x7e1
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8a3
	.uleb128 0x1c
	.4byte	.LASF38
	.byte	0x1
	.2byte	0x174
	.4byte	0x7e1
	.4byte	.LLST26
	.uleb128 0x18
	.string	"oid"
	.byte	0x1
	.2byte	0x175
	.4byte	0xa0
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x18
	.string	"len"
	.byte	0x1
	.2byte	0x175
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xe
	.4byte	.LVL129
	.4byte	0x8d0
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF39
	.4byte	.LASF39
	.byte	0x5
	.2byte	0x1b1
	.uleb128 0x1e
	.4byte	.LASF40
	.4byte	.LASF40
	.byte	0x7
	.byte	0x57
	.uleb128 0x1e
	.4byte	.LASF41
	.4byte	.LASF41
	.byte	0x8
	.byte	0x38
	.uleb128 0x1e
	.4byte	.LASF42
	.4byte	.LASF42
	.byte	0x7
	.byte	0x5a
	.uleb128 0x1e
	.4byte	.LASF43
	.4byte	.LASF43
	.byte	0x9
	.byte	0x16
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
	.uleb128 0xc
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL2
	.4byte	.LVL4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL4
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
	.4byte	.LVL12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL15
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
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL16
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
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL1
	.4byte	.LVL4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL16
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL17
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL23
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL24
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL30
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL31
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL36
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
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL39
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL40
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL47
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL40
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL44
	.4byte	.LVL46
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL43
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL48
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
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL54
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
	.4byte	.LVL58
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL59
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL48
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL50
	.4byte	.LVL52
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL52
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL58
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL60
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL64
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL65
	.4byte	.LVL66
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL66
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL67
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL60
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL62
	.4byte	.LVL64
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL64
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL68
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL69
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL77
	.4byte	.LVL78
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL78
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL79
	.4byte	.LVL80
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL80
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL81
	.4byte	.LVL82
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL82
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL83
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
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL69
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL75
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL69
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL76
	.4byte	.LVL78
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL78
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL86
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL70
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL72
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL78
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL71
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL82
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL87
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL96
	.4byte	.LVL97
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL97
	.4byte	.LVL100
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL100
	.4byte	.LVL101
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL101
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL102
	.4byte	.LVL103
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL103
	.4byte	.LVL104
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL104
	.4byte	.LVL105
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL105
	.4byte	.LVL106
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL106
	.4byte	.LVL107
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL107
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL108
	.4byte	.LVL109
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL109
	.4byte	.LVL110
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL110
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL87
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL89
	.4byte	.LVL90
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL90
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL103
	.4byte	.LVL105
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL105
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL87
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL93
	.4byte	.LVL101
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL101
	.4byte	.LVL107
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL107
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL88
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL92
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL97
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL99
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL111
	.4byte	.LVL113
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL113
	.4byte	.LVL116
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL116
	.4byte	.LVL117
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL117
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL111
	.4byte	.LVL115
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL115
	.4byte	.LVL116
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL116
	.4byte	.LVL118
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL118
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL112
	.4byte	.LVL114
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL116
	.4byte	.LVL118
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL124
	.4byte	.LVL126
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL127
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL128
	.4byte	.LVL130
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL130
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x7c
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
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
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
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
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
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB5
	.4byte	.LFE5
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
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF40:
	.string	"calloc"
.LASF20:
	.string	"next"
.LASF41:
	.string	"mbedtls_platform_zeroize"
.LASF16:
	.string	"mbedtls_asn1_buf"
.LASF45:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/library/asn1parse.c"
.LASF26:
	.string	"mbedtls_asn1_get_int"
.LASF31:
	.string	"mbedtls_asn1_get_alg"
.LASF44:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF38:
	.string	"list"
.LASF30:
	.string	"mbedtls_asn1_get_sequence_of"
.LASF3:
	.string	"unsigned char"
.LASF36:
	.string	"head"
.LASF19:
	.string	"mbedtls_asn1_sequence"
.LASF12:
	.string	"long unsigned int"
.LASF23:
	.string	"mbedtls_asn1_get_len"
.LASF1:
	.string	"short unsigned int"
.LASF5:
	.string	"size_t"
.LASF14:
	.string	"mbedtls_mpi_uint"
.LASF9:
	.string	"uint32_t"
.LASF32:
	.string	"params"
.LASF27:
	.string	"mbedtls_asn1_get_mpi"
.LASF6:
	.string	"__uint32_t"
.LASF15:
	.string	"mbedtls_mpi"
.LASF0:
	.string	"unsigned int"
.LASF18:
	.string	"unused_bits"
.LASF8:
	.string	"long long unsigned int"
.LASF17:
	.string	"mbedtls_asn1_bitstring"
.LASF37:
	.string	"mbedtls_asn1_find_named_data"
.LASF29:
	.string	"mbedtls_asn1_get_bitstring_null"
.LASF11:
	.string	"sizetype"
.LASF28:
	.string	"mbedtls_asn1_get_bitstring"
.LASF42:
	.string	"free"
.LASF7:
	.string	"long long int"
.LASF13:
	.string	"char"
.LASF34:
	.string	"mbedtls_asn1_free_named_data"
.LASF21:
	.string	"mbedtls_asn1_named_data"
.LASF4:
	.string	"short int"
.LASF43:
	.string	"memcmp"
.LASF35:
	.string	"mbedtls_asn1_free_named_data_list"
.LASF46:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\mbedtls"
.LASF39:
	.string	"mbedtls_mpi_read_binary"
.LASF25:
	.string	"mbedtls_asn1_get_bool"
.LASF10:
	.string	"long int"
.LASF2:
	.string	"signed char"
.LASF33:
	.string	"mbedtls_asn1_get_alg_null"
.LASF24:
	.string	"mbedtls_asn1_get_tag"
.LASF22:
	.string	"next_merged"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
