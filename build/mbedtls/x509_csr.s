	.file	"x509_csr.c"
	.text
.Ltext0:
	.section	.text.x509_csr_get_version,"ax",@progbits
	.align	4
	.type	x509_csr_get_version, @function
x509_csr_get_version:
.LFB10:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/library/x509_csr.c"
	.loc 1 70 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 73 0
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	mbedtls_asn1_get_int
.LVL1:
	beqz.n	a10, .L4
	.loc 1 75 0
	movi	a2, -0x62
.LVL2:
	bne	a10, a2, .L3
	.loc 1 77 0
	movi.n	a10, 0
.LVL3:
	s32i.n	a10, a4, 0
	.loc 1 78 0
	mov.n	a2, a10
	retw.n
.LVL4:
.L3:
	.loc 1 81 0
	addmi	a2, a10, -0x2200
	retw.n
.LVL5:
.L4:
	.loc 1 84 0
	movi.n	a2, 0
.LVL6:
	.loc 1 85 0
	retw.n
.LFE10:
	.size	x509_csr_get_version, .-x509_csr_get_version
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC1:
	.string	"%sCSR version   : %d"
	.align	4
.LC3:
	.string	"\n%ssubject name  : "
	.align	4
.LC5:
	.string	"\n%ssigned using  : "
	.align	4
.LC7:
	.string	"\n%s%-14s: %d bits\n"
	.section	.text.mbedtls_x509_csr_info,"ax",@progbits
	.literal_position
	.literal .LC0, -10624
	.literal .LC2, .LC1
	.literal .LC4, .LC3
	.literal .LC6, .LC5
	.literal .LC8, .LC7
	.align	4
	.global	mbedtls_x509_csr_info
	.type	mbedtls_x509_csr_info, @function
mbedtls_x509_csr_info:
.LFB14:
	.loc 1 329 0
.LVL7:
	entry	sp, 48
.LCFI1:
.LVL8:
	.loc 1 338 0
	l32i.n	a14, a5, 24
	mov.n	a13, a4
	l32r	a12, .LC2
	mov.n	a11, a3
	mov.n	a10, a2
	call8	snprintf
.LVL9:
	.loc 1 340 0
	extui	a8, a10, 31, 1
	movi.n	a6, 1
	bgeu	a10, a3, .L6
	movi.n	a6, 0
.L6:
	extui	a6, a6, 0, 8
	or	a6, a8, a6
	bnez.n	a6, .L13
	.loc 1 340 0 is_stmt 0 discriminator 2
	sub	a6, a3, a10
.LVL10:
	add.n	a2, a2, a10
.LVL11:
	.loc 1 342 0 is_stmt 1 discriminator 2
	mov.n	a13, a4
	l32r	a12, .LC4
	mov.n	a11, a6
	mov.n	a10, a2
.LVL12:
	call8	snprintf
.LVL13:
	.loc 1 343 0 discriminator 2
	extui	a9, a10, 31, 1
	movi.n	a8, 1
	bgeu	a10, a6, .L8
	movi.n	a8, 0
.L8:
	extui	a8, a8, 0, 8
	or	a8, a9, a8
	bnez.n	a8, .L14
	sub	a6, a6, a10
.LVL14:
	add.n	a2, a2, a10
.LVL15:
	.loc 1 344 0 discriminator 2
	addi	a12, a5, 40
	mov.n	a11, a6
	mov.n	a10, a2
.LVL16:
	call8	mbedtls_x509_dn_gets
.LVL17:
	.loc 1 345 0 discriminator 2
	extui	a9, a10, 31, 1
	movi.n	a8, 1
	bgeu	a10, a6, .L9
	movi.n	a8, 0
.L9:
	extui	a8, a8, 0, 8
	or	a8, a9, a8
	bnez.n	a8, .L15
	sub	a6, a6, a10
.LVL18:
	add.n	a2, a2, a10
.LVL19:
	.loc 1 347 0 discriminator 2
	mov.n	a13, a4
	l32r	a12, .LC6
	mov.n	a11, a6
	mov.n	a10, a2
.LVL20:
	call8	snprintf
.LVL21:
	.loc 1 348 0 discriminator 2
	extui	a9, a10, 31, 1
	movi.n	a8, 1
	bgeu	a10, a6, .L10
	movi.n	a8, 0
.L10:
	extui	a8, a8, 0, 8
	or	a8, a9, a8
	bnez.n	a8, .L16
	sub	a6, a6, a10
.LVL22:
	add.n	a2, a2, a10
.LVL23:
	.loc 1 350 0 discriminator 2
	l32i	a15, a5, 112
	l32i	a14, a5, 104
	l32i	a13, a5, 108
	addi	a12, a5, 80
	mov.n	a11, a6
	mov.n	a10, a2
.LVL24:
	call8	mbedtls_x509_sig_alg_gets
.LVL25:
	.loc 1 352 0 discriminator 2
	extui	a9, a10, 31, 1
	movi.n	a8, 1
	bgeu	a10, a6, .L11
	movi.n	a8, 0
.L11:
	extui	a8, a8, 0, 8
	or	a8, a9, a8
	bnez.n	a8, .L17
	sub	a6, a6, a10
.LVL26:
	add.n	a2, a2, a10
.LVL27:
	.loc 1 354 0 discriminator 2
	addi	a5, a5, 72
.LVL28:
	mov.n	a10, a5
.LVL29:
	call8	mbedtls_pk_get_name
.LVL30:
	mov.n	a12, a10
	movi.n	a11, 0xe
	mov.n	a10, sp
	call8	mbedtls_x509_key_size_helper
.LVL31:
	bnez.n	a10, .L18
	.loc 1 361 0
	mov.n	a10, a5
.LVL32:
	call8	mbedtls_pk_get_bitlen
.LVL33:
	.loc 1 360 0
	mov.n	a15, a10
	mov.n	a14, sp
	mov.n	a13, a4
	l32r	a12, .LC8
	mov.n	a11, a6
	mov.n	a10, a2
	call8	snprintf
.LVL34:
	.loc 1 362 0
	extui	a2, a10, 31, 1
.LVL35:
	movi.n	a4, 1
.LVL36:
	bgeu	a10, a6, .L12
	movi.n	a4, 0
.L12:
	extui	a4, a4, 0, 8
	or	a4, a2, a4
	bnez.n	a4, .L19
	.loc 1 362 0 is_stmt 0 discriminator 2
	sub	a6, a6, a10
.LVL37:
	.loc 1 364 0 is_stmt 1 discriminator 2
	sub	a2, a3, a6
	retw.n
.LVL38:
.L13:
	.loc 1 340 0
	l32r	a2, .LC0
.LVL39:
	retw.n
.LVL40:
.L14:
	.loc 1 343 0
	l32r	a2, .LC0
.LVL41:
	retw.n
.LVL42:
.L15:
	.loc 1 345 0
	l32r	a2, .LC0
.LVL43:
	retw.n
.LVL44:
.L16:
	.loc 1 348 0
	l32r	a2, .LC0
.LVL45:
	retw.n
.LVL46:
.L17:
	.loc 1 352 0
	l32r	a2, .LC0
.LVL47:
	retw.n
.LVL48:
.L18:
	.loc 1 357 0
	mov.n	a2, a10
.LVL49:
	retw.n
.LVL50:
.L19:
	.loc 1 362 0
	l32r	a2, .LC0
	.loc 1 365 0
	retw.n
.LFE14:
	.size	mbedtls_x509_csr_info, .-mbedtls_x509_csr_info
	.section	.text.mbedtls_x509_csr_init,"ax",@progbits
	.align	4
	.global	mbedtls_x509_csr_init
	.type	mbedtls_x509_csr_init, @function
mbedtls_x509_csr_init:
.LFB15:
	.loc 1 371 0
.LVL51:
	entry	sp, 32
.LCFI2:
	.loc 1 372 0
	movi	a12, 0x74
	movi.n	a11, 0
	mov.n	a10, a2
	call8	memset
.LVL52:
	retw.n
.LFE15:
	.size	mbedtls_x509_csr_init, .-mbedtls_x509_csr_init
	.section	.text.mbedtls_x509_csr_free,"ax",@progbits
	.align	4
	.global	mbedtls_x509_csr_free
	.type	mbedtls_x509_csr_free, @function
mbedtls_x509_csr_free:
.LFB16:
	.loc 1 379 0
.LVL53:
	entry	sp, 32
.LCFI3:
	.loc 1 383 0
	beqz.n	a2, .L21
	.loc 1 386 0
	addi	a10, a2, 72
	call8	mbedtls_pk_free
.LVL54:
	.loc 1 389 0
	l32i	a10, a2, 112
	call8	free
.LVL55:
	.loc 1 392 0
	l32i	a3, a2, 64
.LVL56:
	.loc 1 393 0
	j	.L23
.L24:
.LVL57:
	.loc 1 396 0
	l32i.n	a4, a3, 24
.LVL58:
	.loc 1 397 0
	movi.n	a11, 0x20
	mov.n	a10, a3
	call8	mbedtls_platform_zeroize
.LVL59:
	.loc 1 398 0
	mov.n	a10, a3
	call8	free
.LVL60:
	.loc 1 396 0
	mov.n	a3, a4
.LVL61:
.L23:
	.loc 1 393 0
	bnez.n	a3, .L24
	.loc 1 401 0
	l32i.n	a10, a2, 8
	beqz.n	a10, .L25
	.loc 1 403 0
	l32i.n	a11, a2, 4
	call8	mbedtls_platform_zeroize
.LVL62:
	.loc 1 404 0
	l32i.n	a10, a2, 8
	call8	free
.LVL63:
.L25:
	.loc 1 407 0
	movi	a11, 0x74
	mov.n	a10, a2
	call8	mbedtls_platform_zeroize
.LVL64:
.L21:
	retw.n
.LFE16:
	.size	mbedtls_x509_csr_free, .-mbedtls_x509_csr_free
	.section	.text.mbedtls_x509_csr_parse_der,"ax",@progbits
	.literal_position
	.literal .LC9, -10240
	.literal .LC10, -10368
	.literal .LC11, -8576
	.literal .LC12, -8678
	.literal .LC13, -9600
	.literal .LC14, -9728
	.align	4
	.global	mbedtls_x509_csr_parse_der
	.type	mbedtls_x509_csr_parse_der, @function
mbedtls_x509_csr_parse_der:
.LFB11:
	.loc 1 92 0
.LVL65:
	entry	sp, 64
.LCFI4:
	mov.n	a5, a2
	.loc 1 98 0
	movi.n	a8, 0
	s32i.n	a8, sp, 8
	s32i.n	a8, sp, 12
	s32i.n	a8, sp, 16
	.loc 1 103 0
	movi.n	a2, 1
.LVL66:
	mov.n	a9, a8
	moveqz	a9, a2, a5
	.loc 1 103 0
	moveqz	a8, a2, a3
	or	a8, a8, a9
	.loc 1 103 0
	bnez.n	a8, .L40
	.loc 1 103 0 discriminator 1
	beqz.n	a4, .L41
	.loc 1 106 0
	mov.n	a10, a5
	call8	mbedtls_x509_csr_init
.LVL67:
	.loc 1 111 0
	s32i.n	a4, sp, 0
	mov.n	a11, a4
	mov.n	a10, a2
	call8	calloc
.LVL68:
	s32i.n	a10, sp, 4
	.loc 1 113 0
	beqz.n	a10, .L42
	.loc 1 116 0
	mov.n	a12, a4
	mov.n	a11, a3
	call8	memcpy
.LVL69:
	.loc 1 118 0
	l32i.n	a3, sp, 4
.LVL70:
	s32i.n	a3, a5, 8
	.loc 1 119 0
	l32i.n	a2, sp, 0
	s32i.n	a2, a5, 4
	.loc 1 120 0
	add.n	a2, a3, a2
.LVL71:
	.loc 1 129 0
	movi.n	a13, 0x30
	mov.n	a12, sp
	mov.n	a11, a2
	addi.n	a10, sp, 4
	call8	mbedtls_asn1_get_tag
.LVL72:
	beqz.n	a10, .L28
	.loc 1 132 0
	mov.n	a10, a5
.LVL73:
	call8	mbedtls_x509_csr_free
.LVL74:
	.loc 1 133 0
	l32r	a2, .LC11
.LVL75:
	retw.n
.LVL76:
.L28:
	.loc 1 136 0
	l32i.n	a3, sp, 4
	sub	a8, a2, a3
	l32i.n	a4, sp, 0
.LVL77:
	beq	a8, a4, .L29
	.loc 1 138 0
	mov.n	a10, a5
.LVL78:
	call8	mbedtls_x509_csr_free
.LVL79:
	.loc 1 139 0
	l32r	a2, .LC12
.LVL80:
	retw.n
.LVL81:
.L29:
	.loc 1 146 0
	s32i.n	a3, a5, 20
	.loc 1 148 0
	movi.n	a13, 0x30
	mov.n	a12, sp
	mov.n	a11, a2
	addi.n	a10, sp, 4
.LVL82:
	call8	mbedtls_asn1_get_tag
.LVL83:
	mov.n	a2, a10
.LVL84:
	beqz.n	a10, .L30
	.loc 1 151 0
	mov.n	a10, a5
	call8	mbedtls_x509_csr_free
.LVL85:
	.loc 1 152 0
	l32r	a3, .LC11
	add.n	a2, a2, a3
.LVL86:
	retw.n
.LVL87:
.L30:
	.loc 1 155 0
	l32i.n	a2, sp, 0
.LVL88:
	l32i.n	a3, sp, 4
	add.n	a3, a3, a2
.LVL89:
	.loc 1 156 0
	l32i.n	a2, a5, 20
	sub	a2, a3, a2
	s32i.n	a2, a5, 16
	.loc 1 161 0
	addi	a12, a5, 24
	mov.n	a11, a3
	addi.n	a10, sp, 4
.LVL90:
	call8	x509_csr_get_version
.LVL91:
	mov.n	a2, a10
.LVL92:
	beqz.n	a10, .L31
	.loc 1 163 0
	mov.n	a10, a5
	call8	mbedtls_x509_csr_free
.LVL93:
	.loc 1 164 0
	retw.n
.L31:
	.loc 1 167 0
	l32i.n	a2, a5, 24
.LVL94:
	beqz.n	a2, .L32
	.loc 1 169 0
	mov.n	a10, a5
.LVL95:
	call8	mbedtls_x509_csr_free
.LVL96:
	.loc 1 170 0
	l32r	a2, .LC13
	retw.n
.LVL97:
.L32:
	.loc 1 173 0
	addi.n	a4, a2, 1
	s32i.n	a4, a5, 24
	.loc 1 178 0
	l32i.n	a4, sp, 4
	s32i.n	a4, a5, 36
	.loc 1 180 0
	movi.n	a13, 0x30
	mov.n	a12, sp
	mov.n	a11, a3
	addi.n	a10, sp, 4
.LVL98:
	call8	mbedtls_asn1_get_tag
.LVL99:
	mov.n	a4, a10
.LVL100:
	beqz.n	a10, .L33
	.loc 1 183 0
	mov.n	a10, a5
	call8	mbedtls_x509_csr_free
.LVL101:
	.loc 1 184 0
	l32r	a2, .LC11
	add.n	a2, a4, a2
	retw.n
.L33:
	.loc 1 187 0
	addi	a12, a5, 40
	l32i.n	a4, sp, 0
.LVL102:
	l32i.n	a11, sp, 4
	add.n	a11, a11, a4
	addi.n	a10, sp, 4
.LVL103:
	call8	mbedtls_x509_get_name
.LVL104:
	mov.n	a4, a10
.LVL105:
	beqz.n	a10, .L34
	.loc 1 189 0
	mov.n	a10, a5
	call8	mbedtls_x509_csr_free
.LVL106:
	.loc 1 190 0
	mov.n	a2, a4
	retw.n
.L34:
	.loc 1 193 0
	l32i.n	a8, a5, 36
	l32i.n	a4, sp, 4
.LVL107:
	sub	a4, a4, a8
	s32i.n	a4, a5, 32
	.loc 1 198 0
	addi	a12, a5, 72
	mov.n	a11, a3
	addi.n	a10, sp, 4
.LVL108:
	call8	mbedtls_pk_parse_subpubkey
.LVL109:
	mov.n	a4, a10
.LVL110:
	beqz.n	a10, .L35
	.loc 1 200 0
	mov.n	a10, a5
	call8	mbedtls_x509_csr_free
.LVL111:
	.loc 1 201 0
	mov.n	a2, a4
	retw.n
.L35:
	.loc 1 214 0
	movi	a13, 0xa0
	mov.n	a12, sp
	mov.n	a11, a3
	addi.n	a10, sp, 4
	call8	mbedtls_asn1_get_tag
.LVL112:
	mov.n	a3, a10
.LVL113:
	beqz.n	a10, .L36
	.loc 1 217 0
	mov.n	a10, a5
	call8	mbedtls_x509_csr_free
.LVL114:
	.loc 1 218 0
	l32r	a2, .LC11
	add.n	a2, a3, a2
	retw.n
.L36:
	.loc 1 221 0
	l32i.n	a3, sp, 0
.LVL115:
	l32i.n	a4, sp, 4
	add.n	a3, a4, a3
	s32i.n	a3, sp, 4
	.loc 1 223 0
	l32i.n	a4, a5, 8
	l32i.n	a3, a5, 4
	add.n	a3, a4, a3
.LVL116:
	.loc 1 229 0
	addi	a4, a5, 80
	addi.n	a13, sp, 8
	mov.n	a12, a4
	mov.n	a11, a3
	addi.n	a10, sp, 4
.LVL117:
	call8	mbedtls_x509_get_alg
.LVL118:
	mov.n	a6, a10
.LVL119:
	beqz.n	a10, .L37
	.loc 1 231 0
	mov.n	a10, a5
	call8	mbedtls_x509_csr_free
.LVL120:
	.loc 1 232 0
	mov.n	a2, a6
	retw.n
.L37:
	.loc 1 235 0
	addi	a14, a5, 112
	addi	a13, a5, 108
	addi	a12, a5, 104
	addi.n	a11, sp, 8
	mov.n	a10, a4
	call8	mbedtls_x509_get_sig_alg
.LVL121:
	beqz.n	a10, .L38
	.loc 1 239 0
	mov.n	a10, a5
.LVL122:
	call8	mbedtls_x509_csr_free
.LVL123:
	.loc 1 240 0
	l32r	a2, .LC14
	retw.n
.LVL124:
.L38:
	.loc 1 243 0
	addi	a12, a5, 92
	mov.n	a11, a3
	addi.n	a10, sp, 4
.LVL125:
	call8	mbedtls_x509_get_sig
.LVL126:
	mov.n	a4, a10
.LVL127:
	beqz.n	a10, .L39
	.loc 1 245 0
	mov.n	a10, a5
	call8	mbedtls_x509_csr_free
.LVL128:
	.loc 1 246 0
	mov.n	a2, a4
	retw.n
.L39:
	.loc 1 249 0
	l32i.n	a4, sp, 4
.LVL129:
	beq	a3, a4, .L27
	.loc 1 251 0
	mov.n	a10, a5
.LVL130:
	call8	mbedtls_x509_csr_free
.LVL131:
	.loc 1 252 0
	l32r	a2, .LC12
	retw.n
.LVL132:
.L40:
	.loc 1 104 0
	l32r	a2, .LC9
	retw.n
.L41:
	l32r	a2, .LC9
	retw.n
.L42:
	.loc 1 114 0
	l32r	a2, .LC10
.LVL133:
.L27:
	.loc 1 257 0
	retw.n
.LFE11:
	.size	mbedtls_x509_csr_parse_der, .-mbedtls_x509_csr_parse_der
	.section	.rodata.str1.4
	.align	4
.LC16:
	.string	"-----END CERTIFICATE REQUEST-----"
	.align	4
.LC18:
	.string	"-----BEGIN CERTIFICATE REQUEST-----"
	.section	.text.mbedtls_x509_csr_parse,"ax",@progbits
	.literal_position
	.literal .LC15, -10240
	.literal .LC17, .LC16
	.literal .LC19, .LC18
	.literal .LC20, -4224
	.align	4
	.global	mbedtls_x509_csr_parse
	.type	mbedtls_x509_csr_parse, @function
mbedtls_x509_csr_parse:
.LFB12:
	.loc 1 263 0
.LVL134:
	entry	sp, 64
.LCFI5:
	.loc 1 273 0
	movi.n	a8, 1
	movi.n	a5, 0
	mov.n	a9, a5
	moveqz	a9, a8, a2
	.loc 1 273 0
	movnez	a8, a5, a3
	or	a8, a8, a9
	.loc 1 273 0
	bne	a8, a5, .L47
	.loc 1 273 0 discriminator 1
	beq	a4, a5, .L48
	.loc 1 278 0
	add.n	a5, a3, a4
	addi.n	a5, a5, -1
	l8ui	a5, a5, 0
	bnez.n	a5, .L45
	.loc 1 280 0
	addi	a10, sp, 20
	call8	mbedtls_pem_init
.LVL135:
	.loc 1 281 0
	addi	a5, sp, 16
	s32i.n	a5, sp, 0
	movi.n	a15, 0
	mov.n	a14, a15
	mov.n	a13, a3
	l32r	a12, .LC17
	l32r	a11, .LC19
	addi	a10, sp, 20
	call8	mbedtls_pem_read_buffer
.LVL136:
	mov.n	a5, a10
.LVL137:
	.loc 1 286 0
	bnez.n	a10, .L46
	.loc 1 290 0
	l32i.n	a12, sp, 24
	l32i.n	a11, sp, 20
	mov.n	a10, a2
	call8	mbedtls_x509_csr_parse_der
.LVL138:
	mov.n	a5, a10
.LVL139:
.L46:
	.loc 1 292 0
	addi	a10, sp, 20
	call8	mbedtls_pem_free
.LVL140:
	.loc 1 293 0
	l32r	a8, .LC20
	bne	a5, a8, .L49
.LVL141:
.L45:
	.loc 1 297 0
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	mbedtls_x509_csr_parse_der
.LVL142:
	mov.n	a2, a10
.LVL143:
	retw.n
.LVL144:
.L47:
	.loc 1 274 0
	l32r	a2, .LC15
.LVL145:
	retw.n
.LVL146:
.L48:
	l32r	a2, .LC15
.LVL147:
	retw.n
.LVL148:
.L49:
	.loc 1 294 0
	mov.n	a2, a5
.LVL149:
	.loc 1 298 0
	retw.n
.LFE12:
	.size	mbedtls_x509_csr_parse, .-mbedtls_x509_csr_parse
	.section	.text.mbedtls_x509_csr_parse_file,"ax",@progbits
	.align	4
	.global	mbedtls_x509_csr_parse_file
	.type	mbedtls_x509_csr_parse_file, @function
mbedtls_x509_csr_parse_file:
.LFB13:
	.loc 1 305 0
.LVL150:
	entry	sp, 48
.LCFI6:
	.loc 1 310 0
	mov.n	a12, sp
	addi.n	a11, sp, 4
	mov.n	a10, a3
	call8	mbedtls_pk_load_file
.LVL151:
	bnez.n	a10, .L52
	.loc 1 313 0
	l32i.n	a12, sp, 0
	l32i.n	a11, sp, 4
	mov.n	a10, a2
.LVL152:
	call8	mbedtls_x509_csr_parse
.LVL153:
	mov.n	a2, a10
.LVL154:
	.loc 1 315 0
	l32i.n	a11, sp, 0
	l32i.n	a10, sp, 4
	call8	mbedtls_platform_zeroize
.LVL155:
	.loc 1 316 0
	l32i.n	a10, sp, 4
	call8	free
.LVL156:
	.loc 1 318 0
	retw.n
.LVL157:
.L52:
	.loc 1 311 0
	mov.n	a2, a10
.LVL158:
	.loc 1 319 0
	retw.n
.LFE13:
	.size	mbedtls_x509_csr_parse_file, .-mbedtls_x509_csr_parse_file
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
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI0-.LFB10
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI1-.LFB14
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI2-.LFB15
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
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x4
	.4byte	.LCFI4-.LFB11
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI5-.LFB12
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI6-.LFB13
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE12:
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/asn1.h"
	.file 3 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/md.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/pk.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/x509.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/x509_csr.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/pem.h"
	.file 9 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdio.h"
	.file 10 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdlib.h"
	.file 11 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/platform_util.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xc3d
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF89
	.byte	0xc
	.4byte	.LASF90
	.4byte	.LASF91
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF11
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
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4c
	.uleb128 0x6
	.byte	0x4
	.4byte	0x8b
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x6
	.byte	0x4
	.4byte	0x98
	.uleb128 0x7
	.4byte	0x8b
	.uleb128 0x8
	.4byte	.LASF12
	.byte	0xc
	.byte	0x2
	.byte	0x86
	.4byte	0xcc
	.uleb128 0x9
	.string	"tag"
	.byte	0x2
	.byte	0x88
	.4byte	0x25
	.byte	0
	.uleb128 0x9
	.string	"len"
	.byte	0x2
	.byte	0x89
	.4byte	0x2c
	.byte	0x4
	.uleb128 0x9
	.string	"p"
	.byte	0x2
	.byte	0x8a
	.4byte	0x7f
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x2
	.byte	0x8c
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF13
	.byte	0x20
	.byte	0x2
	.byte	0xa6
	.4byte	0x114
	.uleb128 0x9
	.string	"oid"
	.byte	0x2
	.byte	0xa8
	.4byte	0xcc
	.byte	0
	.uleb128 0x9
	.string	"val"
	.byte	0x2
	.byte	0xa9
	.4byte	0xcc
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF14
	.byte	0x2
	.byte	0xaa
	.4byte	0x114
	.byte	0x18
	.uleb128 0xa
	.4byte	.LASF15
	.byte	0x2
	.byte	0xab
	.4byte	0x4c
	.byte	0x1c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xd7
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x2
	.byte	0xad
	.4byte	0xd7
	.uleb128 0xb
	.byte	0x4
	.4byte	0x37
	.byte	0x4
	.byte	0x38
	.4byte	0x16e
	.uleb128 0xc
	.4byte	.LASF16
	.byte	0
	.uleb128 0xc
	.4byte	.LASF17
	.byte	0x1
	.uleb128 0xc
	.4byte	.LASF18
	.byte	0x2
	.uleb128 0xc
	.4byte	.LASF19
	.byte	0x3
	.uleb128 0xc
	.4byte	.LASF20
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF21
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF22
	.byte	0x6
	.uleb128 0xc
	.4byte	.LASF23
	.byte	0x7
	.uleb128 0xc
	.4byte	.LASF24
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF25
	.byte	0x9
	.byte	0
	.uleb128 0x3
	.4byte	.LASF26
	.byte	0x4
	.byte	0x43
	.4byte	0x125
	.uleb128 0xb
	.byte	0x4
	.4byte	0x37
	.byte	0x5
	.byte	0x4c
	.4byte	0x1b0
	.uleb128 0xc
	.4byte	.LASF27
	.byte	0
	.uleb128 0xc
	.4byte	.LASF28
	.byte	0x1
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0x2
	.uleb128 0xc
	.4byte	.LASF30
	.byte	0x3
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF32
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF33
	.byte	0x6
	.byte	0
	.uleb128 0x3
	.4byte	.LASF34
	.byte	0x5
	.byte	0x54
	.4byte	0x179
	.uleb128 0x3
	.4byte	.LASF35
	.byte	0x5
	.byte	0x7b
	.4byte	0x1c6
	.uleb128 0xd
	.4byte	.LASF35
	.uleb128 0xe
	.byte	0x8
	.byte	0x5
	.byte	0x80
	.4byte	0x1ec
	.uleb128 0xa
	.4byte	.LASF36
	.byte	0x5
	.byte	0x82
	.4byte	0x1ec
	.byte	0
	.uleb128 0xa
	.4byte	.LASF37
	.byte	0x5
	.byte	0x83
	.4byte	0x68
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1f2
	.uleb128 0x7
	.4byte	0x1bb
	.uleb128 0x3
	.4byte	.LASF38
	.byte	0x5
	.byte	0x84
	.4byte	0x1cb
	.uleb128 0x6
	.byte	0x4
	.4byte	0x208
	.uleb128 0x7
	.4byte	0x4c
	.uleb128 0x3
	.4byte	.LASF39
	.byte	0x6
	.byte	0xbd
	.4byte	0xcc
	.uleb128 0x3
	.4byte	.LASF40
	.byte	0x6
	.byte	0xc8
	.4byte	0x11a
	.uleb128 0x8
	.4byte	.LASF41
	.byte	0x74
	.byte	0x7
	.byte	0x33
	.4byte	0x2b3
	.uleb128 0x9
	.string	"raw"
	.byte	0x7
	.byte	0x35
	.4byte	0x20d
	.byte	0
	.uleb128 0x9
	.string	"cri"
	.byte	0x7
	.byte	0x36
	.4byte	0x20d
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF42
	.byte	0x7
	.byte	0x38
	.4byte	0x25
	.byte	0x18
	.uleb128 0xa
	.4byte	.LASF43
	.byte	0x7
	.byte	0x3a
	.4byte	0x20d
	.byte	0x1c
	.uleb128 0xa
	.4byte	.LASF44
	.byte	0x7
	.byte	0x3b
	.4byte	0x218
	.byte	0x28
	.uleb128 0x9
	.string	"pk"
	.byte	0x7
	.byte	0x3d
	.4byte	0x1f7
	.byte	0x48
	.uleb128 0xa
	.4byte	.LASF45
	.byte	0x7
	.byte	0x3f
	.4byte	0x20d
	.byte	0x50
	.uleb128 0x9
	.string	"sig"
	.byte	0x7
	.byte	0x40
	.4byte	0x20d
	.byte	0x5c
	.uleb128 0xa
	.4byte	.LASF46
	.byte	0x7
	.byte	0x41
	.4byte	0x16e
	.byte	0x68
	.uleb128 0xa
	.4byte	.LASF47
	.byte	0x7
	.byte	0x42
	.4byte	0x1b0
	.byte	0x6c
	.uleb128 0xa
	.4byte	.LASF48
	.byte	0x7
	.byte	0x43
	.4byte	0x68
	.byte	0x70
	.byte	0
	.uleb128 0x3
	.4byte	.LASF41
	.byte	0x7
	.byte	0x45
	.4byte	0x223
	.uleb128 0xe
	.byte	0xc
	.byte	0x8
	.byte	0x36
	.4byte	0x2eb
	.uleb128 0x9
	.string	"buf"
	.byte	0x8
	.byte	0x38
	.4byte	0x7f
	.byte	0
	.uleb128 0xa
	.4byte	.LASF49
	.byte	0x8
	.byte	0x39
	.4byte	0x2c
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF50
	.byte	0x8
	.byte	0x3a
	.4byte	0x7f
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF51
	.byte	0x8
	.byte	0x3c
	.4byte	0x2be
	.uleb128 0xf
	.4byte	.LASF92
	.byte	0x1
	.byte	0x43
	.4byte	0x25
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x362
	.uleb128 0x10
	.string	"p"
	.byte	0x1
	.byte	0x43
	.4byte	0x362
	.4byte	.LLST0
	.uleb128 0x11
	.string	"end"
	.byte	0x1
	.byte	0x44
	.4byte	0x202
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x11
	.string	"ver"
	.byte	0x1
	.byte	0x45
	.4byte	0x368
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x12
	.string	"ret"
	.byte	0x1
	.byte	0x47
	.4byte	0x25
	.4byte	.LLST1
	.uleb128 0x13
	.4byte	.LVL1
	.4byte	0xb3d
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x7f
	.uleb128 0x6
	.byte	0x4
	.4byte	0x25
	.uleb128 0x15
	.4byte	.LASF59
	.byte	0x1
	.2byte	0x147
	.4byte	0x25
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x52a
	.uleb128 0x16
	.string	"buf"
	.byte	0x1
	.2byte	0x147
	.4byte	0x85
	.4byte	.LLST2
	.uleb128 0x17
	.4byte	.LASF52
	.byte	0x1
	.2byte	0x147
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x18
	.4byte	.LASF53
	.byte	0x1
	.2byte	0x147
	.4byte	0x92
	.4byte	.LLST3
	.uleb128 0x16
	.string	"csr"
	.byte	0x1
	.2byte	0x148
	.4byte	0x52a
	.4byte	.LLST4
	.uleb128 0x19
	.string	"ret"
	.byte	0x1
	.2byte	0x14a
	.4byte	0x25
	.4byte	.LLST5
	.uleb128 0x19
	.string	"n"
	.byte	0x1
	.2byte	0x14b
	.4byte	0x2c
	.4byte	.LLST6
	.uleb128 0x19
	.string	"p"
	.byte	0x1
	.2byte	0x14c
	.4byte	0x85
	.4byte	.LLST7
	.uleb128 0x1a
	.4byte	.LASF54
	.byte	0x1
	.2byte	0x14d
	.4byte	0x535
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1b
	.4byte	.LVL9
	.4byte	0xb48
	.4byte	0x42a
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL13
	.4byte	0xb48
	.4byte	0x453
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL17
	.4byte	0xb54
	.4byte	0x473
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 40
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL21
	.4byte	0xb48
	.4byte	0x49c
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL25
	.4byte	0xb5f
	.4byte	0x4bd
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x75
	.sleb128 80
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL30
	.4byte	0xb6b
	.4byte	0x4d1
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL31
	.4byte	0xb77
	.4byte	0x4ea
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x3e
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL33
	.4byte	0xb83
	.4byte	0x4fe
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL34
	.4byte	0xb48
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x530
	.uleb128 0x7
	.4byte	0x2b3
	.uleb128 0x1c
	.4byte	0x8b
	.4byte	0x545
	.uleb128 0x1d
	.4byte	0x71
	.byte	0xd
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF55
	.byte	0x1
	.2byte	0x172
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x585
	.uleb128 0x1f
	.string	"csr"
	.byte	0x1
	.2byte	0x172
	.4byte	0x585
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x13
	.4byte	.LVL52
	.4byte	0xb8e
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x74
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2b3
	.uleb128 0x1e
	.4byte	.LASF56
	.byte	0x1
	.2byte	0x17a
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x644
	.uleb128 0x1f
	.string	"csr"
	.byte	0x1
	.2byte	0x17a
	.4byte	0x585
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x20
	.4byte	.LASF57
	.byte	0x1
	.2byte	0x17c
	.4byte	0x644
	.4byte	.LLST8
	.uleb128 0x20
	.4byte	.LASF58
	.byte	0x1
	.2byte	0x17d
	.4byte	0x644
	.4byte	.LLST9
	.uleb128 0x1b
	.4byte	.LVL54
	.4byte	0xb97
	.4byte	0x5e4
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x72
	.sleb128 72
	.byte	0
	.uleb128 0x21
	.4byte	.LVL55
	.4byte	0xba2
	.uleb128 0x1b
	.4byte	.LVL59
	.4byte	0xbad
	.4byte	0x607
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL60
	.4byte	0xba2
	.4byte	0x61b
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL62
	.4byte	0xbad
	.uleb128 0x21
	.4byte	.LVL63
	.4byte	0xba2
	.uleb128 0x13
	.4byte	.LVL64
	.4byte	0xbad
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x74
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x218
	.uleb128 0x22
	.4byte	.LASF60
	.byte	0x1
	.byte	0x5a
	.4byte	0x25
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x988
	.uleb128 0x10
	.string	"csr"
	.byte	0x1
	.byte	0x5a
	.4byte	0x585
	.4byte	.LLST10
	.uleb128 0x10
	.string	"buf"
	.byte	0x1
	.byte	0x5b
	.4byte	0x202
	.4byte	.LLST11
	.uleb128 0x23
	.4byte	.LASF49
	.byte	0x1
	.byte	0x5b
	.4byte	0x2c
	.4byte	.LLST12
	.uleb128 0x12
	.string	"ret"
	.byte	0x1
	.byte	0x5d
	.4byte	0x25
	.4byte	.LLST13
	.uleb128 0x24
	.string	"len"
	.byte	0x1
	.byte	0x5e
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x24
	.string	"p"
	.byte	0x1
	.byte	0x5f
	.4byte	0x7f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x12
	.string	"end"
	.byte	0x1
	.byte	0x5f
	.4byte	0x7f
	.4byte	.LLST14
	.uleb128 0x25
	.4byte	.LASF61
	.byte	0x1
	.byte	0x60
	.4byte	0x20d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1b
	.4byte	.LVL67
	.4byte	0x545
	.4byte	0x6ea
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL68
	.4byte	0xbb8
	.4byte	0x704
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL69
	.4byte	0xbc3
	.4byte	0x71e
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL72
	.4byte	0xbcc
	.4byte	0x744
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x8
	.byte	0x30
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL74
	.4byte	0x58b
	.4byte	0x758
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL79
	.4byte	0x58b
	.4byte	0x76c
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL83
	.4byte	0xbcc
	.4byte	0x792
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x8
	.byte	0x30
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL85
	.4byte	0x58b
	.4byte	0x7a6
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL91
	.4byte	0x2f6
	.4byte	0x7c6
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 24
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL93
	.4byte	0x58b
	.4byte	0x7da
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL96
	.4byte	0x58b
	.4byte	0x7ee
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL99
	.4byte	0xbcc
	.4byte	0x814
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x8
	.byte	0x30
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL101
	.4byte	0x58b
	.4byte	0x828
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL104
	.4byte	0xbd7
	.4byte	0x842
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 40
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL106
	.4byte	0x58b
	.4byte	0x856
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL109
	.4byte	0xbe3
	.4byte	0x877
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x75
	.sleb128 72
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL111
	.4byte	0x58b
	.4byte	0x88b
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL112
	.4byte	0xbcc
	.4byte	0x8b1
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x8
	.byte	0xa0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL114
	.4byte	0x58b
	.4byte	0x8c5
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL118
	.4byte	0xbef
	.4byte	0x8eb
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL120
	.4byte	0x58b
	.4byte	0x8ff
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL121
	.4byte	0xbfb
	.4byte	0x92e
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x75
	.sleb128 104
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.byte	0x75
	.sleb128 108
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0x75
	.sleb128 112
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL123
	.4byte	0x58b
	.4byte	0x942
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL126
	.4byte	0xc07
	.4byte	0x963
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x75
	.sleb128 92
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL128
	.4byte	0x58b
	.4byte	0x977
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL131
	.4byte	0x58b
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x106
	.4byte	0x25
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa92
	.uleb128 0x16
	.string	"csr"
	.byte	0x1
	.2byte	0x106
	.4byte	0x585
	.4byte	.LLST15
	.uleb128 0x1f
	.string	"buf"
	.byte	0x1
	.2byte	0x106
	.4byte	0x202
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x17
	.4byte	.LASF49
	.byte	0x1
	.2byte	0x106
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x19
	.string	"ret"
	.byte	0x1
	.2byte	0x109
	.4byte	0x25
	.4byte	.LLST16
	.uleb128 0x1a
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x10a
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.string	"pem"
	.byte	0x1
	.2byte	0x10b
	.4byte	0x2eb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1b
	.4byte	.LVL135
	.4byte	0xc13
	.4byte	0xa10
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL136
	.4byte	0xc1e
	.4byte	0xa4d
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC18
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC16
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x14
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL138
	.4byte	0x64a
	.4byte	0xa61
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL140
	.4byte	0xc29
	.4byte	0xa75
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x13
	.4byte	.LVL142
	.4byte	0x64a
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x130
	.4byte	0x25
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb3d
	.uleb128 0x16
	.string	"csr"
	.byte	0x1
	.2byte	0x130
	.4byte	0x585
	.4byte	.LLST17
	.uleb128 0x17
	.4byte	.LASF65
	.byte	0x1
	.2byte	0x130
	.4byte	0x92
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x19
	.string	"ret"
	.byte	0x1
	.2byte	0x132
	.4byte	0x25
	.4byte	.LLST18
	.uleb128 0x26
	.string	"n"
	.byte	0x1
	.2byte	0x133
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.string	"buf"
	.byte	0x1
	.2byte	0x134
	.4byte	0x7f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1b
	.4byte	.LVL151
	.4byte	0xc34
	.4byte	0xb16
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL153
	.4byte	0x988
	.4byte	0xb2a
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL155
	.4byte	0xbad
	.uleb128 0x21
	.4byte	.LVL156
	.4byte	0xba2
	.byte	0
	.uleb128 0x27
	.4byte	.LASF66
	.4byte	.LASF66
	.byte	0x2
	.byte	0xe7
	.uleb128 0x28
	.4byte	.LASF67
	.4byte	.LASF67
	.byte	0x9
	.2byte	0x10c
	.uleb128 0x27
	.4byte	.LASF68
	.4byte	.LASF68
	.byte	0x6
	.byte	0xe5
	.uleb128 0x28
	.4byte	.LASF69
	.4byte	.LASF69
	.byte	0x6
	.2byte	0x130
	.uleb128 0x28
	.4byte	.LASF70
	.4byte	.LASF70
	.byte	0x5
	.2byte	0x1a5
	.uleb128 0x28
	.4byte	.LASF71
	.4byte	.LASF71
	.byte	0x6
	.2byte	0x133
	.uleb128 0x27
	.4byte	.LASF72
	.4byte	.LASF72
	.byte	0x5
	.byte	0xed
	.uleb128 0x29
	.4byte	.LASF77
	.4byte	.LASF77
	.uleb128 0x27
	.4byte	.LASF73
	.4byte	.LASF73
	.byte	0x5
	.byte	0xbf
	.uleb128 0x27
	.4byte	.LASF74
	.4byte	.LASF74
	.byte	0xa
	.byte	0x5a
	.uleb128 0x27
	.4byte	.LASF75
	.4byte	.LASF75
	.byte	0xb
	.byte	0x38
	.uleb128 0x27
	.4byte	.LASF76
	.4byte	.LASF76
	.byte	0xa
	.byte	0x57
	.uleb128 0x29
	.4byte	.LASF78
	.4byte	.LASF78
	.uleb128 0x27
	.4byte	.LASF79
	.4byte	.LASF79
	.byte	0x2
	.byte	0xcb
	.uleb128 0x28
	.4byte	.LASF80
	.4byte	.LASF80
	.byte	0x6
	.2byte	0x11b
	.uleb128 0x28
	.4byte	.LASF81
	.4byte	.LASF81
	.byte	0x5
	.2byte	0x24b
	.uleb128 0x28
	.4byte	.LASF82
	.4byte	.LASF82
	.byte	0x6
	.2byte	0x11f
	.uleb128 0x28
	.4byte	.LASF83
	.4byte	.LASF83
	.byte	0x6
	.2byte	0x127
	.uleb128 0x28
	.4byte	.LASF84
	.4byte	.LASF84
	.byte	0x6
	.2byte	0x126
	.uleb128 0x27
	.4byte	.LASF85
	.4byte	.LASF85
	.byte	0x8
	.byte	0x43
	.uleb128 0x27
	.4byte	.LASF86
	.4byte	.LASF86
	.byte	0x8
	.byte	0x5b
	.uleb128 0x27
	.4byte	.LASF87
	.4byte	.LASF87
	.byte	0x8
	.byte	0x65
	.uleb128 0x28
	.4byte	.LASF88
	.4byte	.LASF88
	.byte	0x5
	.2byte	0x263
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
	.uleb128 0x9
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
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x1f
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
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL4
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL7
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL11
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
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL7
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL36
	.4byte	.LVL38
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL50
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL7
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL28
	.4byte	.LVL38
	.2byte	0x4
	.byte	0x75
	.sleb128 -72
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL48
	.4byte	.LFE14
	.2byte	0x4
	.byte	0x75
	.sleb128 -72
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL9
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL13
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL17
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL21
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL25
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL34
	.4byte	.LFE14
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL8
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL10
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL38
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL40
	.4byte	.LFE14
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL8
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL56
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL58
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL61
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL57
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL65
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL66
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL65
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL70
	.4byte	.LVL132
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL132
	.4byte	.LVL133
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL133
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL65
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL77
	.4byte	.LVL132
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL132
	.4byte	.LVL133
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL133
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL72
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL76
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL81
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL84
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL86
	.4byte	.LVL87
	.2byte	0x5
	.byte	0x72
	.sleb128 8576
	.byte	0x9f
	.4byte	.LVL87
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL88
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL92
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL94
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL97
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL100
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL102
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL105
	.4byte	.LVL107
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL107
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL110
	.4byte	.LVL113
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL113
	.4byte	.LVL115
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL115
	.4byte	.LVL117
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL119
	.4byte	.LVL121
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL121
	.4byte	.LVL122
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL124
	.4byte	.LVL125
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL127
	.4byte	.LVL129
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL129
	.4byte	.LVL130
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL71
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL76
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL81
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL89
	.4byte	.LVL113
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL116
	.4byte	.LVL132
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL134
	.4byte	.LVL143
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL143
	.4byte	.LVL144
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL144
	.4byte	.LVL145
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL145
	.4byte	.LVL146
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL146
	.4byte	.LVL147
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL147
	.4byte	.LVL148
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL148
	.4byte	.LVL149
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL149
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL137
	.4byte	.LVL141
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL148
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL150
	.4byte	.LVL154
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL154
	.4byte	.LVL157
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL157
	.4byte	.LVL158
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL158
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL151
	.4byte	.LVL152
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL154
	.4byte	.LVL157
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL157
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x5a
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
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF83:
	.string	"mbedtls_x509_get_sig_alg"
.LASF33:
	.string	"MBEDTLS_PK_RSASSA_PSS"
.LASF49:
	.string	"buflen"
.LASF55:
	.string	"mbedtls_x509_csr_init"
.LASF42:
	.string	"version"
.LASF68:
	.string	"mbedtls_x509_dn_gets"
.LASF73:
	.string	"mbedtls_pk_free"
.LASF43:
	.string	"subject_raw"
.LASF4:
	.string	"short int"
.LASF11:
	.string	"size_t"
.LASF20:
	.string	"MBEDTLS_MD_SHA1"
.LASF8:
	.string	"sizetype"
.LASF64:
	.string	"mbedtls_x509_csr_parse_file"
.LASF44:
	.string	"subject"
.LASF24:
	.string	"MBEDTLS_MD_SHA512"
.LASF78:
	.string	"memcpy"
.LASF67:
	.string	"snprintf"
.LASF91:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\mbedtls"
.LASF90:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/library/x509_csr.c"
.LASF85:
	.string	"mbedtls_pem_init"
.LASF26:
	.string	"mbedtls_md_type_t"
.LASF32:
	.string	"MBEDTLS_PK_RSA_ALT"
.LASF13:
	.string	"mbedtls_asn1_named_data"
.LASF23:
	.string	"MBEDTLS_MD_SHA384"
.LASF34:
	.string	"mbedtls_pk_type_t"
.LASF74:
	.string	"free"
.LASF66:
	.string	"mbedtls_asn1_get_int"
.LASF81:
	.string	"mbedtls_pk_parse_subpubkey"
.LASF69:
	.string	"mbedtls_x509_sig_alg_gets"
.LASF54:
	.string	"key_size_str"
.LASF40:
	.string	"mbedtls_x509_name"
.LASF5:
	.string	"long long int"
.LASF77:
	.string	"memset"
.LASF86:
	.string	"mbedtls_pem_read_buffer"
.LASF60:
	.string	"mbedtls_x509_csr_parse_der"
.LASF10:
	.string	"char"
.LASF87:
	.string	"mbedtls_pem_free"
.LASF7:
	.string	"long int"
.LASF47:
	.string	"sig_pk"
.LASF53:
	.string	"prefix"
.LASF29:
	.string	"MBEDTLS_PK_ECKEY"
.LASF71:
	.string	"mbedtls_x509_key_size_helper"
.LASF72:
	.string	"mbedtls_pk_get_bitlen"
.LASF3:
	.string	"unsigned char"
.LASF75:
	.string	"mbedtls_platform_zeroize"
.LASF27:
	.string	"MBEDTLS_PK_NONE"
.LASF30:
	.string	"MBEDTLS_PK_ECKEY_DH"
.LASF48:
	.string	"sig_opts"
.LASF45:
	.string	"sig_oid"
.LASF58:
	.string	"name_prv"
.LASF2:
	.string	"signed char"
.LASF6:
	.string	"long long unsigned int"
.LASF79:
	.string	"mbedtls_asn1_get_tag"
.LASF46:
	.string	"sig_md"
.LASF0:
	.string	"unsigned int"
.LASF36:
	.string	"pk_info"
.LASF22:
	.string	"MBEDTLS_MD_SHA256"
.LASF39:
	.string	"mbedtls_x509_buf"
.LASF62:
	.string	"mbedtls_x509_csr_parse"
.LASF1:
	.string	"short unsigned int"
.LASF28:
	.string	"MBEDTLS_PK_RSA"
.LASF57:
	.string	"name_cur"
.LASF63:
	.string	"use_len"
.LASF56:
	.string	"mbedtls_x509_csr_free"
.LASF76:
	.string	"calloc"
.LASF80:
	.string	"mbedtls_x509_get_name"
.LASF37:
	.string	"pk_ctx"
.LASF17:
	.string	"MBEDTLS_MD_MD2"
.LASF18:
	.string	"MBEDTLS_MD_MD4"
.LASF19:
	.string	"MBEDTLS_MD_MD5"
.LASF35:
	.string	"mbedtls_pk_info_t"
.LASF70:
	.string	"mbedtls_pk_get_name"
.LASF9:
	.string	"long unsigned int"
.LASF61:
	.string	"sig_params"
.LASF21:
	.string	"MBEDTLS_MD_SHA224"
.LASF38:
	.string	"mbedtls_pk_context"
.LASF52:
	.string	"size"
.LASF25:
	.string	"MBEDTLS_MD_RIPEMD160"
.LASF12:
	.string	"mbedtls_asn1_buf"
.LASF88:
	.string	"mbedtls_pk_load_file"
.LASF50:
	.string	"info"
.LASF82:
	.string	"mbedtls_x509_get_alg"
.LASF59:
	.string	"mbedtls_x509_csr_info"
.LASF65:
	.string	"path"
.LASF51:
	.string	"mbedtls_pem_context"
.LASF16:
	.string	"MBEDTLS_MD_NONE"
.LASF31:
	.string	"MBEDTLS_PK_ECDSA"
.LASF92:
	.string	"x509_csr_get_version"
.LASF89:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF84:
	.string	"mbedtls_x509_get_sig"
.LASF15:
	.string	"next_merged"
.LASF14:
	.string	"next"
.LASF41:
	.string	"mbedtls_x509_csr"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
