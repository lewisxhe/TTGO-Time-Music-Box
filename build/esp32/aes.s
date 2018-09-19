	.file	"aes.c"
	.text
.Ltext0:
	.section	.text.esp_aes_acquire_hardware,"ax",@progbits
	.literal_position
	.literal .LC0, aes_spinlock
	.literal .LC1, 1072693276
	.literal .LC2, 1072693280
	.align	4
	.global	esp_aes_acquire_hardware
	.type	esp_aes_acquire_hardware, @function
esp_aes_acquire_hardware:
.LFB21:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/hwcrypto/aes.c"
	.loc 1 52 0
	entry	sp, 32
.LCFI0:
	.loc 1 54 0
	l32r	a10, .LC0
	call8	vTaskEnterCritical
.LVL0:
.LBB23:
.LBB24:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/dport_access.h"
	.loc 2 79 0
	l32r	a2, .LC1
	mov.n	a10, a2
	call8	esp_dport_access_reg_read
.LVL1:
.LBE24:
.LBE23:
	.loc 1 57 0
	movi.n	a8, 1
	or	a10, a10, a8
	memw
	s32i.n	a10, a2, 0
.LVL2:
.LBB25:
.LBB26:
	.loc 2 79 0
	l32r	a2, .LC2
	mov.n	a10, a2
	call8	esp_dport_access_reg_read
.LVL3:
.LBE26:
.LBE25:
	.loc 1 60 0
	movi.n	a8, -0x1a
	and	a10, a10, a8
	memw
	s32i.n	a10, a2, 0
	retw.n
.LFE21:
	.size	esp_aes_acquire_hardware, .-esp_aes_acquire_hardware
	.section	.text.esp_aes_release_hardware,"ax",@progbits
	.literal_position
	.literal .LC3, 1072693280
	.literal .LC4, 1072693276
	.literal .LC5, aes_spinlock
	.align	4
	.global	esp_aes_release_hardware
	.type	esp_aes_release_hardware, @function
esp_aes_release_hardware:
.LFB22:
	.loc 1 67 0
	entry	sp, 32
.LCFI1:
.LVL4:
.LBB27:
.LBB28:
	.loc 2 79 0
	l32r	a2, .LC3
	mov.n	a10, a2
	call8	esp_dport_access_reg_read
.LVL5:
.LBE28:
.LBE27:
	.loc 1 69 0
	movi.n	a8, 1
	or	a10, a10, a8
	memw
	s32i.n	a10, a2, 0
.LVL6:
.LBB29:
.LBB30:
	.loc 2 79 0
	l32r	a2, .LC4
	mov.n	a10, a2
	call8	esp_dport_access_reg_read
.LVL7:
.LBE30:
.LBE29:
	.loc 1 72 0
	movi.n	a8, -2
	and	a10, a10, a8
	memw
	s32i.n	a10, a2, 0
	.loc 1 74 0
	l32r	a10, .LC5
	call8	vTaskExitCritical
.LVL8:
	retw.n
.LFE22:
	.size	esp_aes_release_hardware, .-esp_aes_release_hardware
	.section	.text.esp_aes_init,"ax",@progbits
	.align	4
	.global	esp_aes_init
	.type	esp_aes_init, @function
esp_aes_init:
.LFB23:
	.loc 1 78 0
.LVL9:
	entry	sp, 32
.LCFI2:
	.loc 1 79 0
	movi.n	a12, 0x21
	movi.n	a11, 0
	mov.n	a10, a2
	call8	memset
.LVL10:
	retw.n
.LFE23:
	.size	esp_aes_init, .-esp_aes_init
	.section	.text.esp_aes_free,"ax",@progbits
	.align	4
	.global	esp_aes_free
	.type	esp_aes_free, @function
esp_aes_free:
.LFB24:
	.loc 1 83 0
.LVL11:
	entry	sp, 32
.LCFI3:
	.loc 1 84 0
	beqz.n	a2, .L4
	.loc 1 88 0
	movi.n	a12, 0x21
	movi.n	a11, 0
	mov.n	a10, a2
	call8	memset
.LVL12:
.L4:
	retw.n
.LFE24:
	.size	esp_aes_free, .-esp_aes_free
	.section	.text.esp_aes_setkey,"ax",@progbits
	.align	4
	.global	esp_aes_setkey
	.type	esp_aes_setkey, @function
esp_aes_setkey:
.LFB25:
	.loc 1 97 0
.LVL13:
	entry	sp, 32
.LCFI4:
	.loc 1 98 0
	addi	a12, a4, -128
	movi.n	a13, 1
	movi.n	a8, 0
	mov.n	a5, a8
	movnez	a5, a13, a12
	movi	a9, -0xc0
	add.n	a9, a4, a9
	movnez	a8, a13, a9
	bnone	a8, a5, .L7
	.loc 1 98 0 is_stmt 0 discriminator 1
	bnei	a4, 256, .L9
.L7:
	.loc 1 101 0 is_stmt 1
	extui	a12, a4, 3, 8
	s8i	a12, a2, 0
	.loc 1 102 0
	mov.n	a11, a3
	addi.n	a10, a2, 1
	call8	memcpy
.LVL14:
	.loc 1 103 0
	movi.n	a2, 0
.LVL15:
	retw.n
.LVL16:
.L9:
	.loc 1 99 0
	movi.n	a2, -0x20
.LVL17:
	.loc 1 104 0
	retw.n
.LFE25:
	.size	esp_aes_setkey, .-esp_aes_setkey
	.section	.text.esp_internal_aes_encrypt,"ax",@progbits
	.literal_position
	.literal .LC6, 1072697360
	.literal .LC7, 1072697352
	.literal .LC8, 1072697392
	.literal .LC9, 1072697344
	.literal .LC10, 1072697348
	.align	4
	.global	esp_internal_aes_encrypt
	.type	esp_internal_aes_encrypt, @function
esp_internal_aes_encrypt:
.LFB28:
	.loc 1 146 0
.LVL18:
	entry	sp, 32
.LCFI5:
	.loc 1 147 0
	call8	esp_aes_acquire_hardware
.LVL19:
.LBB38:
.LBB39:
	.loc 1 117 0
	l8ui	a12, a2, 0
	addi.n	a11, a2, 1
	l32r	a10, .LC6
	call8	memcpy
.LVL20:
	.loc 1 118 0
	l8ui	a8, a2, 0
	srli	a8, a8, 3
	addi	a8, a8, -2
	l32r	a2, .LC7
.LVL21:
	memw
	s32i.n	a8, a2, 0
.LVL22:
.LBE39:
.LBE38:
.LBB40:
.LBB41:
.LBB42:
	.loc 1 131 0
	movi.n	a9, 0
	j	.L11
.LVL23:
.L12:
	.loc 1 132 0
	slli	a8, a9, 2
	l32r	a10, .LC8
	add.n	a10, a8, a10
	add.n	a8, a3, a8
	l32i.n	a8, a8, 0
	s32i.n	a8, a10, 0
	.loc 1 131 0
	addi.n	a9, a9, 1
.LVL24:
.L11:
	blti	a9, 4, .L12
.LBE42:
	.loc 1 135 0
	movi.n	a3, 1
.LVL25:
	l32r	a2, .LC9
	memw
	s32i.n	a3, a2, 0
.LVL26:
.L13:
.LBB43:
.LBB44:
	.loc 2 79 0
	l32r	a10, .LC10
	call8	esp_dport_access_reg_read
.LVL27:
.LBE44:
.LBE43:
	.loc 1 136 0
	bnei	a10, 1, .L13
	.loc 1 137 0
	movi.n	a12, 4
	l32r	a11, .LC8
	mov.n	a10, a4
	call8	esp_dport_access_read_buffer
.LVL28:
.LBE41:
.LBE40:
	.loc 1 150 0
	call8	esp_aes_release_hardware
.LVL29:
	.loc 1 152 0
	movi.n	a2, 0
	retw.n
.LFE28:
	.size	esp_internal_aes_encrypt, .-esp_internal_aes_encrypt
	.section	.text.esp_aes_encrypt,"ax",@progbits
	.align	4
	.global	esp_aes_encrypt
	.type	esp_aes_encrypt, @function
esp_aes_encrypt:
.LFB29:
	.loc 1 157 0
.LVL30:
	entry	sp, 32
.LCFI6:
	.loc 1 158 0
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	esp_internal_aes_encrypt
.LVL31:
	retw.n
.LFE29:
	.size	esp_aes_encrypt, .-esp_aes_encrypt
	.section	.text.esp_internal_aes_decrypt,"ax",@progbits
	.literal_position
	.literal .LC11, 1072697360
	.literal .LC12, 1072697352
	.literal .LC13, 1072697392
	.literal .LC14, 1072697344
	.literal .LC15, 1072697348
	.align	4
	.global	esp_internal_aes_decrypt
	.type	esp_internal_aes_decrypt, @function
esp_internal_aes_decrypt:
.LFB30:
	.loc 1 168 0
.LVL32:
	entry	sp, 32
.LCFI7:
	.loc 1 169 0
	call8	esp_aes_acquire_hardware
.LVL33:
.LBB52:
.LBB53:
	.loc 1 117 0
	l8ui	a12, a2, 0
	addi.n	a11, a2, 1
	l32r	a10, .LC11
	call8	memcpy
.LVL34:
	.loc 1 118 0
	l8ui	a8, a2, 0
	srli	a8, a8, 3
	addi.n	a8, a8, 2
	l32r	a2, .LC12
.LVL35:
	memw
	s32i.n	a8, a2, 0
.LVL36:
.LBE53:
.LBE52:
.LBB54:
.LBB55:
.LBB56:
	.loc 1 131 0
	movi.n	a9, 0
	j	.L16
.LVL37:
.L17:
	.loc 1 132 0
	slli	a8, a9, 2
	l32r	a10, .LC13
	add.n	a10, a8, a10
	add.n	a8, a3, a8
	l32i.n	a8, a8, 0
	s32i.n	a8, a10, 0
	.loc 1 131 0
	addi.n	a9, a9, 1
.LVL38:
.L16:
	blti	a9, 4, .L17
.LBE56:
	.loc 1 135 0
	movi.n	a3, 1
.LVL39:
	l32r	a2, .LC14
	memw
	s32i.n	a3, a2, 0
.LVL40:
.L18:
.LBB57:
.LBB58:
	.loc 2 79 0
	l32r	a10, .LC15
	call8	esp_dport_access_reg_read
.LVL41:
.LBE58:
.LBE57:
	.loc 1 136 0
	bnei	a10, 1, .L18
	.loc 1 137 0
	movi.n	a12, 4
	l32r	a11, .LC13
	mov.n	a10, a4
	call8	esp_dport_access_read_buffer
.LVL42:
.LBE55:
.LBE54:
	.loc 1 172 0
	call8	esp_aes_release_hardware
.LVL43:
	.loc 1 174 0
	movi.n	a2, 0
	retw.n
.LFE30:
	.size	esp_internal_aes_decrypt, .-esp_internal_aes_decrypt
	.section	.text.esp_aes_decrypt,"ax",@progbits
	.align	4
	.global	esp_aes_decrypt
	.type	esp_aes_decrypt, @function
esp_aes_decrypt:
.LFB31:
	.loc 1 179 0
.LVL44:
	entry	sp, 32
.LCFI8:
	.loc 1 180 0
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	esp_internal_aes_decrypt
.LVL45:
	retw.n
.LFE31:
	.size	esp_aes_decrypt, .-esp_aes_decrypt
	.section	.text.esp_aes_crypt_ecb,"ax",@progbits
	.literal_position
	.literal .LC16, 1072697360
	.literal .LC17, 1072697352
	.literal .LC18, 1072697392
	.literal .LC19, 1072697344
	.literal .LC20, 1072697348
	.align	4
	.global	esp_aes_crypt_ecb
	.type	esp_aes_crypt_ecb, @function
esp_aes_crypt_ecb:
.LFB32:
	.loc 1 191 0
.LVL46:
	entry	sp, 32
.LCFI9:
	.loc 1 192 0
	call8	esp_aes_acquire_hardware
.LVL47:
.LBB66:
.LBB67:
	.loc 1 115 0
	bnei	a3, 1, .L25
	movi.n	a3, 0
.LVL48:
	j	.L21
.LVL49:
.L25:
	movi.n	a3, 4
.LVL50:
.L21:
	.loc 1 117 0
	l8ui	a12, a2, 0
	addi.n	a11, a2, 1
	l32r	a10, .LC16
	call8	memcpy
.LVL51:
	.loc 1 118 0
	l8ui	a8, a2, 0
	srli	a8, a8, 3
	add.n	a8, a8, a3
	addi	a8, a8, -2
	l32r	a2, .LC17
.LVL52:
	memw
	s32i.n	a8, a2, 0
.LBE67:
.LBE66:
.LBB68:
.LBB69:
.LBB70:
	.loc 1 131 0
	movi.n	a9, 0
	j	.L22
.LVL53:
.L23:
	.loc 1 132 0
	slli	a8, a9, 2
	l32r	a10, .LC18
	add.n	a10, a8, a10
	add.n	a8, a4, a8
	l32i.n	a8, a8, 0
	s32i.n	a8, a10, 0
	.loc 1 131 0
	addi.n	a9, a9, 1
.LVL54:
.L22:
	blti	a9, 4, .L23
.LBE70:
	.loc 1 135 0
	movi.n	a3, 1
.LVL55:
	l32r	a2, .LC19
	memw
	s32i.n	a3, a2, 0
.LVL56:
.L24:
.LBB71:
.LBB72:
	.loc 2 79 0
	l32r	a10, .LC20
	call8	esp_dport_access_reg_read
.LVL57:
.LBE72:
.LBE71:
	.loc 1 136 0
	bnei	a10, 1, .L24
	.loc 1 137 0
	movi.n	a12, 4
	l32r	a11, .LC18
	mov.n	a10, a5
	call8	esp_dport_access_read_buffer
.LVL58:
.LBE69:
.LBE68:
	.loc 1 195 0
	call8	esp_aes_release_hardware
.LVL59:
	.loc 1 198 0
	movi.n	a2, 0
	retw.n
.LFE32:
	.size	esp_aes_crypt_ecb, .-esp_aes_crypt_ecb
	.section	.text.esp_aes_crypt_cbc,"ax",@progbits
	.literal_position
	.literal .LC21, 1072697360
	.literal .LC22, 1072697352
	.literal .LC23, 1072697392
	.literal .LC24, 1072697344
	.literal .LC25, 1072697348
	.align	4
	.global	esp_aes_crypt_cbc
	.type	esp_aes_crypt_cbc, @function
esp_aes_crypt_cbc:
.LFB33:
	.loc 1 210 0
.LVL60:
	entry	sp, 64
.LCFI10:
.LVL61:
	.loc 1 217 0
	extui	a8, a4, 0, 4
	bnez.n	a8, .L43
	.loc 1 221 0
	call8	esp_aes_acquire_hardware
.LVL62:
.LBB85:
.LBB86:
	.loc 1 115 0
	bnei	a3, 1, .L44
	movi.n	a8, 0
	s32i.n	a8, sp, 16
	j	.L28
.L44:
	movi.n	a8, 4
	s32i.n	a8, sp, 16
.L28:
.LVL63:
	.loc 1 117 0
	l8ui	a12, a2, 0
	addi.n	a11, a2, 1
	l32r	a10, .LC21
	call8	memcpy
.LVL64:
	.loc 1 118 0
	l8ui	a2, a2, 0
.LVL65:
	srli	a2, a2, 3
	l32i.n	a8, sp, 16
	add.n	a2, a2, a8
	addi	a2, a2, -2
	l32r	a8, .LC22
	memw
	s32i.n	a2, a8, 0
.LVL66:
.LBE86:
.LBE85:
	.loc 1 225 0
	beqz.n	a3, .L29
	j	.L30
.LVL67:
.L36:
	.loc 1 227 0
	movi.n	a12, 0x10
	mov.n	a11, a6
	mov.n	a10, sp
	call8	memcpy
.LVL68:
.LBB87:
.LBB88:
.LBB89:
	.loc 1 131 0
	movi.n	a3, 0
	j	.L31
.LVL69:
.L32:
	.loc 1 132 0
	slli	a2, a3, 2
	l32r	a8, .LC23
	add.n	a8, a2, a8
	add.n	a2, a6, a2
	l32i.n	a2, a2, 0
	s32i.n	a2, a8, 0
	.loc 1 131 0
	addi.n	a3, a3, 1
.LVL70:
.L31:
	blti	a3, 4, .L32
.LBE89:
	.loc 1 135 0
	movi.n	a3, 1
.LVL71:
	l32r	a2, .LC24
	memw
	s32i.n	a3, a2, 0
.L33:
.LVL72:
.LBB90:
.LBB91:
	.loc 2 79 0
	l32r	a10, .LC25
	call8	esp_dport_access_reg_read
.LVL73:
.LBE91:
.LBE90:
	.loc 1 136 0
	bnei	a10, 1, .L33
	.loc 1 137 0
	movi.n	a12, 4
	l32r	a11, .LC23
	mov.n	a10, a7
	call8	esp_dport_access_read_buffer
.LVL74:
.LBE88:
.LBE87:
	.loc 1 230 0
	movi.n	a3, 0
	j	.L34
.LVL75:
.L35:
	.loc 1 231 0 discriminator 3
	slli	a2, a3, 2
	add.n	a8, a7, a2
	l32i.n	a9, a8, 0
	add.n	a2, a5, a2
	l32i.n	a2, a2, 0
	xor	a2, a9, a2
	s32i.n	a2, a8, 0
	.loc 1 230 0 discriminator 3
	addi.n	a3, a3, 1
.LVL76:
.L34:
	.loc 1 230 0 is_stmt 0 discriminator 1
	blti	a3, 4, .L35
	.loc 1 234 0 is_stmt 1
	movi.n	a12, 0x10
	mov.n	a11, sp
	mov.n	a10, a5
	call8	memcpy
.LVL77:
	.loc 1 236 0
	addi	a6, a6, 16
.LVL78:
	.loc 1 237 0
	addi	a7, a7, 16
.LVL79:
	.loc 1 238 0
	addi	a4, a4, -16
.LVL80:
.L29:
	.loc 1 226 0
	bnez.n	a4, .L36
	j	.L37
.LVL81:
.L38:
	.loc 1 244 0 discriminator 3
	slli	a2, a3, 2
	add.n	a8, a7, a2
	add.n	a9, a6, a2
	l32i.n	a9, a9, 0
	add.n	a2, a5, a2
	l32i.n	a2, a2, 0
	xor	a2, a9, a2
	s32i.n	a2, a8, 0
	.loc 1 243 0 discriminator 3
	addi.n	a3, a3, 1
.LVL82:
	j	.L42
.LVL83:
.L45:
	movi.n	a3, 0
.L42:
.LVL84:
	.loc 1 243 0 is_stmt 0 discriminator 1
	blti	a3, 4, .L38
.LBB92:
.LBB93:
.LBB94:
	.loc 1 131 0 is_stmt 1
	movi.n	a3, 0
.LVL85:
	j	.L39
.LVL86:
.L40:
	.loc 1 132 0
	slli	a2, a3, 2
	l32r	a8, .LC23
	add.n	a8, a2, a8
	add.n	a2, a7, a2
	l32i.n	a2, a2, 0
	s32i.n	a2, a8, 0
	.loc 1 131 0
	addi.n	a3, a3, 1
.LVL87:
.L39:
	blti	a3, 4, .L40
.LBE94:
	.loc 1 135 0
	movi.n	a3, 1
.LVL88:
	l32r	a2, .LC24
	memw
	s32i.n	a3, a2, 0
.L41:
.LVL89:
.LBB95:
.LBB96:
	.loc 2 79 0
	l32r	a10, .LC25
	call8	esp_dport_access_reg_read
.LVL90:
.LBE96:
.LBE95:
	.loc 1 136 0
	bnei	a10, 1, .L41
	.loc 1 137 0
	movi.n	a12, 4
	l32r	a11, .LC23
	mov.n	a10, a7
	call8	esp_dport_access_read_buffer
.LVL91:
.LBE93:
.LBE92:
	.loc 1 248 0
	movi.n	a12, 0x10
	mov.n	a11, a7
	mov.n	a10, a5
	call8	memcpy
.LVL92:
	.loc 1 250 0
	addi	a6, a6, 16
.LVL93:
	.loc 1 251 0
	addi	a7, a7, 16
.LVL94:
	.loc 1 252 0
	addi	a4, a4, -16
.LVL95:
.L30:
	.loc 1 241 0
	bnez.n	a4, .L45
.L37:
	.loc 1 256 0
	call8	esp_aes_release_hardware
.LVL96:
	.loc 1 258 0
	movi.n	a2, 0
	retw.n
.LVL97:
.L43:
	.loc 1 218 0
	movi	a2, -0x22
.LVL98:
	.loc 1 259 0
	retw.n
.LFE33:
	.size	esp_aes_crypt_cbc, .-esp_aes_crypt_cbc
	.section	.text.esp_aes_crypt_cfb128,"ax",@progbits
	.literal_position
	.literal .LC26, 1072697360
	.literal .LC27, 1072697352
	.literal .LC28, 1072697392
	.literal .LC29, 1072697344
	.literal .LC30, 1072697348
	.align	4
	.global	esp_aes_crypt_cfb128
	.type	esp_aes_crypt_cfb128, @function
esp_aes_crypt_cfb128:
.LFB34:
	.loc 1 271 0
.LVL99:
	entry	sp, 48
.LCFI11:
	s32i.n	a3, sp, 4
	s32i.n	a5, sp, 0
	l32i.n	a5, sp, 48
.LVL100:
	.loc 1 273 0
	l32i.n	a8, sp, 0
	l32i.n	a3, a8, 0
.LVL101:
	.loc 1 275 0
	call8	esp_aes_acquire_hardware
.LVL102:
.LBB109:
.LBB110:
	.loc 1 117 0
	l8ui	a12, a2, 0
	addi.n	a11, a2, 1
	l32r	a10, .LC26
	call8	memcpy
.LVL103:
	.loc 1 118 0
	l8ui	a2, a2, 0
.LVL104:
	srli	a2, a2, 3
	addi	a2, a2, -2
	l32r	a8, .LC27
	memw
	s32i.n	a2, a8, 0
.LVL105:
.LBE110:
.LBE109:
	.loc 1 279 0
	l32i.n	a2, sp, 4
	beqz.n	a2, .L47
	j	.L48
.LVL106:
.L53:
	.loc 1 281 0
	bnez.n	a3, .L50
	j	.L60
.LVL107:
.L51:
.LBB111:
.LBB112:
.LBB113:
	.loc 1 132 0
	slli	a4, a8, 2
	l32r	a9, .LC28
	add.n	a9, a4, a9
	add.n	a4, a6, a4
	l32i.n	a4, a4, 0
	s32i.n	a4, a9, 0
	.loc 1 131 0
	addi.n	a8, a8, 1
.LVL108:
	j	.L49
.LVL109:
.L60:
	movi.n	a8, 0
.L49:
.LVL110:
	blti	a8, 4, .L51
.LBE113:
	.loc 1 135 0
	movi.n	a8, 1
.LVL111:
	l32r	a4, .LC29
	memw
	s32i.n	a8, a4, 0
.L52:
.LVL112:
.LBB114:
.LBB115:
	.loc 2 79 0
	l32r	a10, .LC30
	call8	esp_dport_access_reg_read
.LVL113:
.LBE115:
.LBE114:
	.loc 1 136 0
	bnei	a10, 1, .L52
	.loc 1 137 0
	movi.n	a12, 4
	l32r	a11, .LC28
	mov.n	a10, a6
	call8	esp_dport_access_read_buffer
.LVL114:
.L50:
.LBE112:
.LBE111:
	.loc 1 285 0
	l8ui	a9, a7, 0
.LVL115:
	.loc 1 286 0
	add.n	a8, a6, a3
	l8ui	a4, a8, 0
	xor	a4, a9, a4
	s8i	a4, a5, 0
	.loc 1 287 0
	s8i	a9, a8, 0
	.loc 1 289 0
	addi.n	a3, a3, 1
.LVL116:
	extui	a3, a3, 0, 4
.LVL117:
	.loc 1 280 0
	mov.n	a4, a2
	.loc 1 286 0
	addi.n	a5, a5, 1
.LVL118:
	.loc 1 285 0
	addi.n	a7, a7, 1
.LVL119:
.L47:
	.loc 1 280 0
	addi.n	a2, a4, -1
.LVL120:
	bnez.n	a4, .L53
	j	.L54
.L59:
	.loc 1 293 0
	bnez.n	a3, .L56
	j	.L61
.LVL121:
.L57:
.LBB116:
.LBB117:
.LBB118:
	.loc 1 132 0
	slli	a4, a8, 2
	l32r	a9, .LC28
	add.n	a9, a4, a9
	add.n	a4, a6, a4
	l32i.n	a4, a4, 0
	s32i.n	a4, a9, 0
	.loc 1 131 0
	addi.n	a8, a8, 1
.LVL122:
	j	.L55
.LVL123:
.L61:
	movi.n	a8, 0
.L55:
.LVL124:
	blti	a8, 4, .L57
.LBE118:
	.loc 1 135 0
	movi.n	a8, 1
.LVL125:
	l32r	a4, .LC29
	memw
	s32i.n	a8, a4, 0
.L58:
.LVL126:
.LBB119:
.LBB120:
	.loc 2 79 0
	l32r	a10, .LC30
	call8	esp_dport_access_reg_read
.LVL127:
.LBE120:
.LBE119:
	.loc 1 136 0
	bnei	a10, 1, .L58
	.loc 1 137 0
	movi.n	a12, 4
	l32r	a11, .LC28
	mov.n	a10, a6
	call8	esp_dport_access_read_buffer
.LVL128:
.L56:
.LBE117:
.LBE116:
	.loc 1 297 0
	add.n	a8, a6, a3
	l8ui	a9, a8, 0
.LVL129:
	l8ui	a4, a7, 0
	xor	a4, a9, a4
	s8i	a4, a5, 0
	s8i	a4, a8, 0
	.loc 1 299 0
	addi.n	a3, a3, 1
.LVL130:
	extui	a3, a3, 0, 4
.LVL131:
	.loc 1 292 0
	mov.n	a4, a2
	.loc 1 297 0
	addi.n	a5, a5, 1
.LVL132:
	addi.n	a7, a7, 1
.LVL133:
.L48:
	.loc 1 292 0
	addi.n	a2, a4, -1
.LVL134:
	bnez.n	a4, .L59
.L54:
	.loc 1 303 0
	l32i.n	a2, sp, 0
.LVL135:
	s32i.n	a3, a2, 0
	.loc 1 305 0
	call8	esp_aes_release_hardware
.LVL136:
	.loc 1 308 0
	movi.n	a2, 0
	retw.n
.LFE34:
	.size	esp_aes_crypt_cfb128, .-esp_aes_crypt_cfb128
	.section	.text.esp_aes_crypt_cfb8,"ax",@progbits
	.literal_position
	.literal .LC31, 1072697360
	.literal .LC32, 1072697352
	.literal .LC33, 1072697392
	.literal .LC34, 1072697344
	.literal .LC35, 1072697348
	.align	4
	.global	esp_aes_crypt_cfb8
	.type	esp_aes_crypt_cfb8, @function
esp_aes_crypt_cfb8:
.LFB35:
	.loc 1 319 0
.LVL137:
	entry	sp, 80
.LCFI12:
	.loc 1 323 0
	call8	esp_aes_acquire_hardware
.LVL138:
.LBB128:
.LBB129:
	.loc 1 117 0
	l8ui	a12, a2, 0
	addi.n	a11, a2, 1
	l32r	a10, .LC31
	call8	memcpy
.LVL139:
	.loc 1 118 0
	l8ui	a2, a2, 0
.LVL140:
	srli	a2, a2, 3
	addi	a2, a2, -2
	l32r	a8, .LC32
	memw
	s32i.n	a2, a8, 0
	j	.L63
.LVL141:
.L69:
.LBE129:
.LBE128:
	.loc 1 328 0
	movi.n	a12, 0x10
	mov.n	a11, a5
	mov.n	a10, sp
	call8	memcpy
.LVL142:
.LBB130:
.LBB131:
.LBB132:
	.loc 1 131 0
	movi.n	a8, 0
	j	.L64
.LVL143:
.L65:
	.loc 1 132 0
	slli	a4, a8, 2
	l32r	a9, .LC33
	add.n	a9, a4, a9
	add.n	a4, a5, a4
	l32i.n	a4, a4, 0
	s32i.n	a4, a9, 0
	.loc 1 131 0
	addi.n	a8, a8, 1
.LVL144:
.L64:
	blti	a8, 4, .L65
.LBE132:
	.loc 1 135 0
	movi.n	a8, 1
.LVL145:
	l32r	a4, .LC34
	memw
	s32i.n	a8, a4, 0
.L66:
.LVL146:
.LBB133:
.LBB134:
	.loc 2 79 0
	l32r	a10, .LC35
	call8	esp_dport_access_reg_read
.LVL147:
.LBE134:
.LBE133:
	.loc 1 136 0
	bnei	a10, 1, .L66
	.loc 1 137 0
	movi.n	a12, 4
	l32r	a11, .LC33
	mov.n	a10, a5
	call8	esp_dport_access_read_buffer
.LVL148:
.LBE131:
.LBE130:
	.loc 1 331 0
	bnez.n	a3, .L67
	.loc 1 332 0
	l8ui	a4, a6, 0
	s8i	a4, sp, 16
.L67:
	.loc 1 335 0
	addi.n	a4, a7, 1
	s32i.n	a4, sp, 32
.LVL149:
	l8ui	a8, a5, 0
	addi.n	a4, a6, 1
.LVL150:
	s32i.n	a4, sp, 36
.LVL151:
	l8ui	a4, a6, 0
.LVL152:
	xor	a4, a8, a4
	s8i	a4, a7, 0
.LVL153:
	.loc 1 337 0
	bnei	a3, 1, .L68
	.loc 1 338 0
	s8i	a4, sp, 16
.L68:
	.loc 1 341 0
	movi.n	a12, 0x10
	addi.n	a11, sp, 1
	mov.n	a10, a5
	call8	memcpy
.LVL154:
	.loc 1 327 0
	mov.n	a4, a2
.LVL155:
	.loc 1 335 0
	l32i.n	a7, sp, 32
	l32i.n	a6, sp, 36
.LVL156:
.L63:
	.loc 1 327 0
	addi.n	a2, a4, -1
.LVL157:
	bnez.n	a4, .L69
	.loc 1 344 0
	call8	esp_aes_release_hardware
.LVL158:
	.loc 1 347 0
	movi.n	a2, 0
.LVL159:
	retw.n
.LFE35:
	.size	esp_aes_crypt_cfb8, .-esp_aes_crypt_cfb8
	.section	.text.esp_aes_crypt_ctr,"ax",@progbits
	.literal_position
	.literal .LC36, 1072697360
	.literal .LC37, 1072697352
	.literal .LC38, 1072697392
	.literal .LC39, 1072697344
	.literal .LC40, 1072697348
	.align	4
	.global	esp_aes_crypt_ctr
	.type	esp_aes_crypt_ctr, @function
esp_aes_crypt_ctr:
.LFB36:
	.loc 1 359 0
.LVL160:
	entry	sp, 48
.LCFI13:
	s32i.n	a2, sp, 4
	s32i.n	a4, sp, 8
	s32i.n	a6, sp, 0
	l32i.n	a4, sp, 48
.LVL161:
	.loc 1 361 0
	l32i.n	a6, sp, 8
.LVL162:
	l32i.n	a2, a6, 0
.LVL163:
	.loc 1 363 0
	call8	esp_aes_acquire_hardware
.LVL164:
.LBB142:
.LBB143:
	.loc 1 117 0
	l32i.n	a8, sp, 4
	l8ui	a12, a8, 0
	addi.n	a11, a8, 1
	l32r	a10, .LC36
	call8	memcpy
.LVL165:
	.loc 1 118 0
	l32i.n	a9, sp, 4
	l8ui	a6, a9, 0
	srli	a6, a6, 3
	addi	a6, a6, -2
	l32r	a8, .LC37
	memw
	s32i.n	a6, a8, 0
.LVL166:
	j	.L71
.LVL167:
.L78:
.LBE143:
.LBE142:
	.loc 1 368 0
	bnez.n	a2, .L73
	j	.L79
.LVL168:
.L74:
.LBB144:
.LBB145:
.LBB146:
	.loc 1 132 0
	slli	a3, a8, 2
	l32r	a9, .LC38
	add.n	a9, a3, a9
	add.n	a3, a5, a3
	l32i.n	a3, a3, 0
	s32i.n	a3, a9, 0
	.loc 1 131 0
	addi.n	a8, a8, 1
.LVL169:
	j	.L72
.LVL170:
.L79:
	movi.n	a8, 0
.L72:
.LVL171:
	blti	a8, 4, .L74
.LBE146:
	.loc 1 135 0
	movi.n	a8, 1
.LVL172:
	l32r	a3, .LC39
	memw
	s32i.n	a8, a3, 0
.L75:
.LVL173:
.LBB147:
.LBB148:
	.loc 2 79 0
	l32r	a10, .LC40
	call8	esp_dport_access_reg_read
.LVL174:
.LBE148:
.LBE147:
	.loc 1 136 0
	bnei	a10, 1, .L75
	.loc 1 137 0
	movi.n	a12, 4
	l32r	a11, .LC38
	l32i.n	a10, sp, 0
	call8	esp_dport_access_read_buffer
.LVL175:
.LBE145:
.LBE144:
	.loc 1 371 0
	movi.n	a9, 0x10
	j	.L76
.LVL176:
.L77:
	.loc 1 372 0
	addi.n	a8, a9, -1
	add.n	a8, a5, a8
	l8ui	a3, a8, 0
	addi.n	a3, a3, 1
	extui	a3, a3, 0, 8
	s8i	a3, a8, 0
	bnez.n	a3, .L73
	.loc 1 371 0 discriminator 2
	addi.n	a9, a9, -1
.LVL177:
.L76:
	.loc 1 371 0 is_stmt 0 discriminator 1
	bgei	a9, 1, .L77
.LVL178:
.L73:
	.loc 1 376 0 is_stmt 1
	l8ui	a8, a7, 0
.LVL179:
	.loc 1 377 0
	l32i.n	a9, sp, 0
	add.n	a3, a9, a2
	l8ui	a3, a3, 0
	xor	a3, a8, a3
	s8i	a3, a4, 0
	.loc 1 379 0
	addi.n	a2, a2, 1
.LVL180:
	extui	a2, a2, 0, 4
.LVL181:
	.loc 1 367 0
	mov.n	a3, a6
	.loc 1 377 0
	addi.n	a4, a4, 1
.LVL182:
	.loc 1 376 0
	addi.n	a7, a7, 1
.LVL183:
.L71:
	.loc 1 367 0
	addi.n	a6, a3, -1
.LVL184:
	bnez.n	a3, .L78
	.loc 1 382 0
	l32i.n	a3, sp, 8
	s32i.n	a2, a3, 0
	.loc 1 384 0
	call8	esp_aes_release_hardware
.LVL185:
	.loc 1 387 0
	movi.n	a2, 0
.LVL186:
	retw.n
.LFE36:
	.size	esp_aes_crypt_ctr, .-esp_aes_crypt_ctr
	.section	.data.aes_spinlock,"aw",@progbits
	.align	4
	.type	aes_spinlock, @object
	.size	aes_spinlock, 8
aes_spinlock:
	.word	-1287651329
	.word	0
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
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI0-.LFB21
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI1-.LFB22
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
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI3-.LFB24
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI4-.LFB25
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI5-.LFB28
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI6-.LFB29
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI7-.LFB30
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI8-.LFB31
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI9-.LFB32
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI10-.LFB33
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI11-.LFB34
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x4
	.4byte	.LCFI12-.LFB35
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x4
	.4byte	.LCFI13-.LFB36
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE26:
	.text
.Letext0:
	.file 3 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/hwcrypto/aes.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/portmacro.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_dport_access.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x11af
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF61
	.byte	0xc
	.4byte	.LASF62
	.4byte	.LASF63
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF3
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
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x4
	.byte	0x12
	.4byte	0x57
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x4
	.byte	0x1a
	.4byte	0x37
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
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
	.uleb128 0x6
	.byte	0x4
	.4byte	0x57
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x5
	.byte	0x15
	.4byte	0x4c
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x5
	.byte	0x2d
	.4byte	0x65
	.uleb128 0x7
	.byte	0x21
	.byte	0x6
	.byte	0x31
	.4byte	0xd9
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0x6
	.byte	0x32
	.4byte	0xa2
	.byte	0
	.uleb128 0x9
	.string	"key"
	.byte	0x6
	.byte	0x33
	.4byte	0xd9
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.4byte	0xa2
	.4byte	0xe9
	.uleb128 0xb
	.4byte	0x85
	.byte	0x1f
	.byte	0
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x6
	.byte	0x34
	.4byte	0xb8
	.uleb128 0x6
	.byte	0x4
	.4byte	0xfa
	.uleb128 0xc
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.4byte	.LASF18
	.uleb128 0x7
	.byte	0x8
	.byte	0x7
	.byte	0x82
	.4byte	0x123
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0x7
	.byte	0x8a
	.4byte	0xad
	.byte	0
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0x7
	.byte	0x8f
	.4byte	0xad
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x7
	.byte	0x94
	.4byte	0x102
	.uleb128 0xd
	.4byte	.LASF64
	.byte	0x2
	.byte	0x4a
	.4byte	0xad
	.byte	0x3
	.4byte	0x14a
	.uleb128 0xe
	.string	"reg"
	.byte	0x2
	.byte	0x4a
	.4byte	0xad
	.byte	0
	.uleb128 0xf
	.4byte	.LASF30
	.byte	0x1
	.byte	0x70
	.byte	0x3
	.4byte	0x183
	.uleb128 0xe
	.string	"ctx"
	.byte	0x1
	.byte	0x70
	.4byte	0x183
	.uleb128 0x10
	.4byte	.LASF22
	.byte	0x1
	.byte	0x70
	.4byte	0x25
	.uleb128 0x11
	.4byte	.LASF23
	.byte	0x1
	.byte	0x72
	.4byte	0x189
	.uleb128 0x11
	.4byte	.LASF24
	.byte	0x1
	.byte	0x73
	.4byte	0x37
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xe9
	.uleb128 0x12
	.4byte	0xad
	.uleb128 0x13
	.4byte	.LASF25
	.byte	0x1
	.byte	0x33
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x211
	.uleb128 0x14
	.4byte	0x12e
	.4byte	.LBB23
	.4byte	.LBE23-.LBB23
	.byte	0x1
	.byte	0x39
	.4byte	0x1d0
	.uleb128 0x15
	.4byte	0x13e
	.4byte	0x3ff0001c
	.uleb128 0x16
	.4byte	.LVL1
	.4byte	0x1174
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	0x12e
	.4byte	.LBB25
	.4byte	.LBE25-.LBB25
	.byte	0x1
	.byte	0x3c
	.4byte	0x1fd
	.uleb128 0x15
	.4byte	0x13e
	.4byte	0x3ff00020
	.uleb128 0x16
	.4byte	.LVL3
	.4byte	0x1174
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL0
	.4byte	0x117f
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	aes_spinlock
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	.LASF26
	.byte	0x1
	.byte	0x42
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x294
	.uleb128 0x14
	.4byte	0x12e
	.4byte	.LBB27
	.4byte	.LBE27-.LBB27
	.byte	0x1
	.byte	0x45
	.4byte	0x253
	.uleb128 0x15
	.4byte	0x13e
	.4byte	0x3ff00020
	.uleb128 0x16
	.4byte	.LVL5
	.4byte	0x1174
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	0x12e
	.4byte	.LBB29
	.4byte	.LBE29-.LBB29
	.byte	0x1
	.byte	0x48
	.4byte	0x280
	.uleb128 0x15
	.4byte	0x13e
	.4byte	0x3ff0001c
	.uleb128 0x16
	.4byte	.LVL7
	.4byte	0x1174
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL8
	.4byte	0x118a
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	aes_spinlock
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	.LASF27
	.byte	0x1
	.byte	0x4d
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2d2
	.uleb128 0x18
	.string	"ctx"
	.byte	0x1
	.byte	0x4d
	.4byte	0x183
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x16
	.4byte	.LVL10
	.4byte	0x1195
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x21
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	.LASF28
	.byte	0x1
	.byte	0x52
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x310
	.uleb128 0x18
	.string	"ctx"
	.byte	0x1
	.byte	0x52
	.4byte	0x183
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x16
	.4byte	.LVL12
	.4byte	0x1195
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x21
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LASF37
	.byte	0x1
	.byte	0x5f
	.4byte	0x25
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x375
	.uleb128 0x1a
	.string	"ctx"
	.byte	0x1
	.byte	0x5f
	.4byte	0x183
	.4byte	.LLST0
	.uleb128 0x18
	.string	"key"
	.byte	0x1
	.byte	0x5f
	.4byte	0x375
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1b
	.4byte	.LASF29
	.byte	0x1
	.byte	0x60
	.4byte	0x37
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x16
	.4byte	.LVL14
	.4byte	0x119e
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 1
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x8
	.byte	0x74
	.sleb128 0
	.byte	0x9
	.byte	0xf9
	.byte	0x24
	.byte	0x9
	.byte	0xfc
	.byte	0x25
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x37b
	.uleb128 0x12
	.4byte	0x57
	.uleb128 0xf
	.4byte	.LASF31
	.byte	0x1
	.byte	0x7d
	.byte	0x3
	.4byte	0x3cf
	.uleb128 0x10
	.4byte	.LASF32
	.byte	0x1
	.byte	0x7d
	.4byte	0xf4
	.uleb128 0x10
	.4byte	.LASF33
	.byte	0x1
	.byte	0x7d
	.4byte	0x8c
	.uleb128 0x11
	.4byte	.LASF34
	.byte	0x1
	.byte	0x7f
	.4byte	0x3cf
	.uleb128 0x11
	.4byte	.LASF35
	.byte	0x1
	.byte	0x80
	.4byte	0x3d5
	.uleb128 0x11
	.4byte	.LASF36
	.byte	0x1
	.byte	0x81
	.4byte	0x3d5
	.uleb128 0x1c
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.byte	0x83
	.4byte	0x25
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x189
	.uleb128 0x6
	.byte	0x4
	.4byte	0xad
	.uleb128 0x19
	.4byte	.LASF38
	.byte	0x1
	.byte	0x8f
	.4byte	0x25
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x530
	.uleb128 0x1a
	.string	"ctx"
	.byte	0x1
	.byte	0x8f
	.4byte	0x183
	.4byte	.LLST1
	.uleb128 0x1e
	.4byte	.LASF32
	.byte	0x1
	.byte	0x90
	.4byte	0x375
	.4byte	.LLST2
	.uleb128 0x1b
	.4byte	.LASF33
	.byte	0x1
	.byte	0x91
	.4byte	0x95
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x14
	.4byte	0x14a
	.4byte	.LBB38
	.4byte	.LBE38-.LBB38
	.byte	0x1
	.byte	0x94
	.4byte	0x471
	.uleb128 0x1f
	.4byte	0x161
	.byte	0x1
	.uleb128 0x20
	.4byte	0x156
	.4byte	.LLST3
	.uleb128 0x21
	.4byte	.LBB39
	.4byte	.LBE39-.LBB39
	.uleb128 0x22
	.4byte	0x16c
	.byte	0x4
	.uleb128 0x22
	.4byte	0x177
	.byte	0
	.uleb128 0x16
	.4byte	.LVL20
	.4byte	0x119e
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0xc
	.4byte	0x3ff01010
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	0x380
	.4byte	.LBB40
	.4byte	.LBE40-.LBB40
	.byte	0x1
	.byte	0x95
	.4byte	0x51d
	.uleb128 0x23
	.4byte	0x397
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x20
	.4byte	0x38c
	.4byte	.LLST4
	.uleb128 0x21
	.4byte	.LBB41
	.4byte	.LBE41-.LBB41
	.uleb128 0x24
	.4byte	0x3a2
	.4byte	.LLST5
	.uleb128 0x25
	.4byte	0x3ad
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x26
	.4byte	0x3b8
	.4byte	0x3ff01030
	.uleb128 0x27
	.4byte	.LBB42
	.4byte	.LBE42-.LBB42
	.4byte	0x4cd
	.uleb128 0x24
	.4byte	0x3c4
	.4byte	.LLST6
	.byte	0
	.uleb128 0x14
	.4byte	0x12e
	.4byte	.LBB43
	.4byte	.LBE43-.LBB43
	.byte	0x1
	.byte	0x88
	.4byte	0x4fd
	.uleb128 0x15
	.4byte	0x13e
	.4byte	0x3ff01004
	.uleb128 0x16
	.4byte	.LVL27
	.4byte	0x1174
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0xc
	.4byte	0x3ff01004
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL28
	.4byte	0x11a7
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0xc
	.4byte	0x3ff01030
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL19
	.4byte	0x18e
	.uleb128 0x28
	.4byte	.LVL29
	.4byte	0x211
	.byte	0
	.uleb128 0x13
	.4byte	.LASF39
	.byte	0x1
	.byte	0x9a
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x589
	.uleb128 0x18
	.string	"ctx"
	.byte	0x1
	.byte	0x9a
	.4byte	0x183
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1b
	.4byte	.LASF32
	.byte	0x1
	.byte	0x9b
	.4byte	0x375
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1b
	.4byte	.LASF33
	.byte	0x1
	.byte	0x9c
	.4byte	0x95
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x16
	.4byte	.LVL31
	.4byte	0x3db
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LASF40
	.byte	0x1
	.byte	0xa5
	.4byte	0x25
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6de
	.uleb128 0x1a
	.string	"ctx"
	.byte	0x1
	.byte	0xa5
	.4byte	0x183
	.4byte	.LLST7
	.uleb128 0x1e
	.4byte	.LASF32
	.byte	0x1
	.byte	0xa6
	.4byte	0x375
	.4byte	.LLST8
	.uleb128 0x1b
	.4byte	.LASF33
	.byte	0x1
	.byte	0xa7
	.4byte	0x95
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x14
	.4byte	0x14a
	.4byte	.LBB52
	.4byte	.LBE52-.LBB52
	.byte	0x1
	.byte	0xaa
	.4byte	0x61f
	.uleb128 0x1f
	.4byte	0x161
	.byte	0
	.uleb128 0x20
	.4byte	0x156
	.4byte	.LLST9
	.uleb128 0x21
	.4byte	.LBB53
	.4byte	.LBE53-.LBB53
	.uleb128 0x22
	.4byte	0x16c
	.byte	0x4
	.uleb128 0x22
	.4byte	0x177
	.byte	0x4
	.uleb128 0x16
	.4byte	.LVL34
	.4byte	0x119e
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0xc
	.4byte	0x3ff01010
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	0x380
	.4byte	.LBB54
	.4byte	.LBE54-.LBB54
	.byte	0x1
	.byte	0xab
	.4byte	0x6cb
	.uleb128 0x23
	.4byte	0x397
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x20
	.4byte	0x38c
	.4byte	.LLST10
	.uleb128 0x21
	.4byte	.LBB55
	.4byte	.LBE55-.LBB55
	.uleb128 0x24
	.4byte	0x3a2
	.4byte	.LLST11
	.uleb128 0x25
	.4byte	0x3ad
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x26
	.4byte	0x3b8
	.4byte	0x3ff01030
	.uleb128 0x27
	.4byte	.LBB56
	.4byte	.LBE56-.LBB56
	.4byte	0x67b
	.uleb128 0x24
	.4byte	0x3c4
	.4byte	.LLST12
	.byte	0
	.uleb128 0x14
	.4byte	0x12e
	.4byte	.LBB57
	.4byte	.LBE57-.LBB57
	.byte	0x1
	.byte	0x88
	.4byte	0x6ab
	.uleb128 0x15
	.4byte	0x13e
	.4byte	0x3ff01004
	.uleb128 0x16
	.4byte	.LVL41
	.4byte	0x1174
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0xc
	.4byte	0x3ff01004
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL42
	.4byte	0x11a7
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0xc
	.4byte	0x3ff01030
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL33
	.4byte	0x18e
	.uleb128 0x28
	.4byte	.LVL43
	.4byte	0x211
	.byte	0
	.uleb128 0x13
	.4byte	.LASF41
	.byte	0x1
	.byte	0xb0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x737
	.uleb128 0x18
	.string	"ctx"
	.byte	0x1
	.byte	0xb0
	.4byte	0x183
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1b
	.4byte	.LASF32
	.byte	0x1
	.byte	0xb1
	.4byte	0x375
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1b
	.4byte	.LASF33
	.byte	0x1
	.byte	0xb2
	.4byte	0x95
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x16
	.4byte	.LVL45
	.4byte	0x589
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LASF42
	.byte	0x1
	.byte	0xbb
	.4byte	0x25
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x88f
	.uleb128 0x1a
	.string	"ctx"
	.byte	0x1
	.byte	0xbb
	.4byte	0x183
	.4byte	.LLST13
	.uleb128 0x1e
	.4byte	.LASF22
	.byte	0x1
	.byte	0xbc
	.4byte	0x25
	.4byte	.LLST14
	.uleb128 0x1b
	.4byte	.LASF32
	.byte	0x1
	.byte	0xbd
	.4byte	0x375
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1b
	.4byte	.LASF33
	.byte	0x1
	.byte	0xbe
	.4byte	0x95
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x14
	.4byte	0x14a
	.4byte	.LBB66
	.4byte	.LBE66-.LBB66
	.byte	0x1
	.byte	0xc1
	.4byte	0x7e0
	.uleb128 0x20
	.4byte	0x161
	.4byte	.LLST15
	.uleb128 0x20
	.4byte	0x156
	.4byte	.LLST16
	.uleb128 0x21
	.4byte	.LBB67
	.4byte	.LBE67-.LBB67
	.uleb128 0x22
	.4byte	0x16c
	.byte	0x4
	.uleb128 0x24
	.4byte	0x177
	.4byte	.LLST17
	.uleb128 0x16
	.4byte	.LVL51
	.4byte	0x119e
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0xc
	.4byte	0x3ff01010
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	0x380
	.4byte	.LBB68
	.4byte	.LBE68-.LBB68
	.byte	0x1
	.byte	0xc2
	.4byte	0x87c
	.uleb128 0x29
	.4byte	0x397
	.uleb128 0x29
	.4byte	0x38c
	.uleb128 0x21
	.4byte	.LBB69
	.4byte	.LBE69-.LBB69
	.uleb128 0x2a
	.4byte	0x3a2
	.uleb128 0x2a
	.4byte	0x3ad
	.uleb128 0x2a
	.4byte	0x3b8
	.uleb128 0x27
	.4byte	.LBB70
	.4byte	.LBE70-.LBB70
	.4byte	0x82c
	.uleb128 0x24
	.4byte	0x3c4
	.4byte	.LLST18
	.byte	0
	.uleb128 0x14
	.4byte	0x12e
	.4byte	.LBB71
	.4byte	.LBE71-.LBB71
	.byte	0x1
	.byte	0x88
	.4byte	0x85c
	.uleb128 0x15
	.4byte	0x13e
	.4byte	0x3ff01004
	.uleb128 0x16
	.4byte	.LVL57
	.4byte	0x1174
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0xc
	.4byte	0x3ff01004
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL58
	.4byte	0x11a7
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0xc
	.4byte	0x3ff01030
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL47
	.4byte	0x18e
	.uleb128 0x28
	.4byte	.LVL59
	.4byte	0x211
	.byte	0
	.uleb128 0x19
	.4byte	.LASF43
	.byte	0x1
	.byte	0xcc
	.4byte	0x25
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb58
	.uleb128 0x1a
	.string	"ctx"
	.byte	0x1
	.byte	0xcc
	.4byte	0x183
	.4byte	.LLST19
	.uleb128 0x1e
	.4byte	.LASF22
	.byte	0x1
	.byte	0xcd
	.4byte	0x25
	.4byte	.LLST20
	.uleb128 0x1e
	.4byte	.LASF44
	.byte	0x1
	.byte	0xce
	.4byte	0x2c
	.4byte	.LLST21
	.uleb128 0x18
	.string	"iv"
	.byte	0x1
	.byte	0xcf
	.4byte	0x95
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1e
	.4byte	.LASF32
	.byte	0x1
	.byte	0xd0
	.4byte	0x375
	.4byte	.LLST22
	.uleb128 0x1e
	.4byte	.LASF33
	.byte	0x1
	.byte	0xd1
	.4byte	0x95
	.4byte	.LLST23
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.byte	0xd3
	.4byte	0x25
	.4byte	.LLST24
	.uleb128 0x2c
	.4byte	.LASF35
	.byte	0x1
	.byte	0xd4
	.4byte	0x3d5
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x2c
	.4byte	.LASF34
	.byte	0x1
	.byte	0xd5
	.4byte	0x3cf
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x2c
	.4byte	.LASF45
	.byte	0x1
	.byte	0xd6
	.4byte	0x3d5
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2c
	.4byte	.LASF46
	.byte	0x1
	.byte	0xd7
	.4byte	0xb58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x14
	.4byte	0x14a
	.4byte	.LBB85
	.4byte	.LBE85-.LBB85
	.byte	0x1
	.byte	0xdf
	.4byte	0x99c
	.uleb128 0x20
	.4byte	0x161
	.4byte	.LLST25
	.uleb128 0x20
	.4byte	0x156
	.4byte	.LLST26
	.uleb128 0x21
	.4byte	.LBB86
	.4byte	.LBE86-.LBB86
	.uleb128 0x24
	.4byte	0x16c
	.4byte	.LLST27
	.uleb128 0x24
	.4byte	0x177
	.4byte	.LLST28
	.uleb128 0x16
	.4byte	.LVL64
	.4byte	0x119e
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0xc
	.4byte	0x3ff01010
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	0x380
	.4byte	.LBB87
	.4byte	.LBE87-.LBB87
	.byte	0x1
	.byte	0xe4
	.4byte	0xa4c
	.uleb128 0x20
	.4byte	0x397
	.4byte	.LLST29
	.uleb128 0x20
	.4byte	0x38c
	.4byte	.LLST30
	.uleb128 0x21
	.4byte	.LBB88
	.4byte	.LBE88-.LBB88
	.uleb128 0x24
	.4byte	0x3a2
	.4byte	.LLST30
	.uleb128 0x24
	.4byte	0x3ad
	.4byte	.LLST29
	.uleb128 0x24
	.4byte	0x3b8
	.4byte	.LLST33
	.uleb128 0x27
	.4byte	.LBB89
	.4byte	.LBE89-.LBB89
	.4byte	0x9fc
	.uleb128 0x24
	.4byte	0x3c4
	.4byte	.LLST34
	.byte	0
	.uleb128 0x14
	.4byte	0x12e
	.4byte	.LBB90
	.4byte	.LBE90-.LBB90
	.byte	0x1
	.byte	0x88
	.4byte	0xa2c
	.uleb128 0x20
	.4byte	0x13e
	.4byte	.LLST35
	.uleb128 0x16
	.4byte	.LVL73
	.4byte	0x1174
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0xc
	.4byte	0x3ff01004
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL74
	.4byte	0x11a7
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0xc
	.4byte	0x3ff01030
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	0x380
	.4byte	.LBB92
	.4byte	.LBE92-.LBB92
	.byte	0x1
	.byte	0xf7
	.4byte	0xae8
	.uleb128 0x29
	.4byte	0x397
	.uleb128 0x29
	.4byte	0x38c
	.uleb128 0x21
	.4byte	.LBB93
	.4byte	.LBE93-.LBB93
	.uleb128 0x2a
	.4byte	0x3a2
	.uleb128 0x2a
	.4byte	0x3ad
	.uleb128 0x2a
	.4byte	0x3b8
	.uleb128 0x27
	.4byte	.LBB94
	.4byte	.LBE94-.LBB94
	.4byte	0xa98
	.uleb128 0x24
	.4byte	0x3c4
	.4byte	.LLST36
	.byte	0
	.uleb128 0x14
	.4byte	0x12e
	.4byte	.LBB95
	.4byte	.LBE95-.LBB95
	.byte	0x1
	.byte	0x88
	.4byte	0xac8
	.uleb128 0x20
	.4byte	0x13e
	.4byte	.LLST37
	.uleb128 0x16
	.4byte	.LVL90
	.4byte	0x1174
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0xc
	.4byte	0x3ff01004
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL91
	.4byte	0x11a7
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0xc
	.4byte	0x3ff01030
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL62
	.4byte	0x18e
	.uleb128 0x2d
	.4byte	.LVL68
	.4byte	0x119e
	.4byte	0xb10
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL77
	.4byte	0x119e
	.4byte	0xb2f
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL92
	.4byte	0x119e
	.4byte	0xb4e
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x28
	.4byte	.LVL96
	.4byte	0x211
	.byte	0
	.uleb128 0xa
	.4byte	0x57
	.4byte	0xb68
	.uleb128 0xb
	.4byte	0x85
	.byte	0xf
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF47
	.byte	0x1
	.2byte	0x108
	.4byte	0x25
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdab
	.uleb128 0x2f
	.string	"ctx"
	.byte	0x1
	.2byte	0x108
	.4byte	0x183
	.4byte	.LLST38
	.uleb128 0x30
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x109
	.4byte	0x25
	.4byte	.LLST39
	.uleb128 0x30
	.4byte	.LASF44
	.byte	0x1
	.2byte	0x10a
	.4byte	0x2c
	.4byte	.LLST40
	.uleb128 0x30
	.4byte	.LASF48
	.byte	0x1
	.2byte	0x10b
	.4byte	0xdab
	.4byte	.LLST41
	.uleb128 0x31
	.string	"iv"
	.byte	0x1
	.2byte	0x10c
	.4byte	0x95
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x30
	.4byte	.LASF32
	.byte	0x1
	.2byte	0x10d
	.4byte	0x375
	.4byte	.LLST42
	.uleb128 0x30
	.4byte	.LASF33
	.byte	0x1
	.2byte	0x10e
	.4byte	0x95
	.4byte	.LLST43
	.uleb128 0x32
	.string	"c"
	.byte	0x1
	.2byte	0x110
	.4byte	0x25
	.4byte	.LLST44
	.uleb128 0x32
	.string	"n"
	.byte	0x1
	.2byte	0x111
	.4byte	0x2c
	.4byte	.LLST45
	.uleb128 0x33
	.4byte	0x14a
	.4byte	.LBB109
	.4byte	.LBE109-.LBB109
	.byte	0x1
	.2byte	0x115
	.4byte	0xc5e
	.uleb128 0x1f
	.4byte	0x161
	.byte	0x1
	.uleb128 0x20
	.4byte	0x156
	.4byte	.LLST46
	.uleb128 0x21
	.4byte	.LBB110
	.4byte	.LBE110-.LBB110
	.uleb128 0x22
	.4byte	0x16c
	.byte	0x4
	.uleb128 0x22
	.4byte	0x177
	.byte	0
	.uleb128 0x16
	.4byte	.LVL103
	.4byte	0x119e
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0xc
	.4byte	0x3ff01010
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x33
	.4byte	0x380
	.4byte	.LBB111
	.4byte	.LBE111-.LBB111
	.byte	0x1
	.2byte	0x11a
	.4byte	0xcfb
	.uleb128 0x29
	.4byte	0x397
	.uleb128 0x29
	.4byte	0x38c
	.uleb128 0x21
	.4byte	.LBB112
	.4byte	.LBE112-.LBB112
	.uleb128 0x2a
	.4byte	0x3a2
	.uleb128 0x2a
	.4byte	0x3ad
	.uleb128 0x2a
	.4byte	0x3b8
	.uleb128 0x27
	.4byte	.LBB113
	.4byte	.LBE113-.LBB113
	.4byte	0xcab
	.uleb128 0x24
	.4byte	0x3c4
	.4byte	.LLST47
	.byte	0
	.uleb128 0x14
	.4byte	0x12e
	.4byte	.LBB114
	.4byte	.LBE114-.LBB114
	.byte	0x1
	.byte	0x88
	.4byte	0xcdb
	.uleb128 0x20
	.4byte	0x13e
	.4byte	.LLST48
	.uleb128 0x16
	.4byte	.LVL113
	.4byte	0x1174
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0xc
	.4byte	0x3ff01004
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL114
	.4byte	0x11a7
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0xc
	.4byte	0x3ff01030
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x33
	.4byte	0x380
	.4byte	.LBB116
	.4byte	.LBE116-.LBB116
	.byte	0x1
	.2byte	0x126
	.4byte	0xd98
	.uleb128 0x29
	.4byte	0x397
	.uleb128 0x29
	.4byte	0x38c
	.uleb128 0x21
	.4byte	.LBB117
	.4byte	.LBE117-.LBB117
	.uleb128 0x2a
	.4byte	0x3a2
	.uleb128 0x2a
	.4byte	0x3ad
	.uleb128 0x2a
	.4byte	0x3b8
	.uleb128 0x27
	.4byte	.LBB118
	.4byte	.LBE118-.LBB118
	.4byte	0xd48
	.uleb128 0x24
	.4byte	0x3c4
	.4byte	.LLST49
	.byte	0
	.uleb128 0x14
	.4byte	0x12e
	.4byte	.LBB119
	.4byte	.LBE119-.LBB119
	.byte	0x1
	.byte	0x88
	.4byte	0xd78
	.uleb128 0x20
	.4byte	0x13e
	.4byte	.LLST50
	.uleb128 0x16
	.4byte	.LVL127
	.4byte	0x1174
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0xc
	.4byte	0x3ff01004
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL128
	.4byte	0x11a7
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0xc
	.4byte	0x3ff01030
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL102
	.4byte	0x18e
	.uleb128 0x28
	.4byte	.LVL136
	.4byte	0x211
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2c
	.uleb128 0x2e
	.4byte	.LASF49
	.byte	0x1
	.2byte	0x139
	.4byte	0x25
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf9a
	.uleb128 0x2f
	.string	"ctx"
	.byte	0x1
	.2byte	0x139
	.4byte	0x183
	.4byte	.LLST51
	.uleb128 0x34
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x13a
	.4byte	0x25
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x30
	.4byte	.LASF44
	.byte	0x1
	.2byte	0x13b
	.4byte	0x2c
	.4byte	.LLST52
	.uleb128 0x31
	.string	"iv"
	.byte	0x1
	.2byte	0x13c
	.4byte	0x95
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x30
	.4byte	.LASF32
	.byte	0x1
	.2byte	0x13d
	.4byte	0x375
	.4byte	.LLST53
	.uleb128 0x30
	.4byte	.LASF33
	.byte	0x1
	.2byte	0x13e
	.4byte	0x95
	.4byte	.LLST54
	.uleb128 0x32
	.string	"c"
	.byte	0x1
	.2byte	0x140
	.4byte	0x57
	.4byte	.LLST55
	.uleb128 0x35
	.string	"ov"
	.byte	0x1
	.2byte	0x141
	.4byte	0xf9a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x33
	.4byte	0x14a
	.4byte	.LBB128
	.4byte	.LBE128-.LBB128
	.byte	0x1
	.2byte	0x145
	.4byte	0xe96
	.uleb128 0x1f
	.4byte	0x161
	.byte	0x1
	.uleb128 0x20
	.4byte	0x156
	.4byte	.LLST56
	.uleb128 0x21
	.4byte	.LBB129
	.4byte	.LBE129-.LBB129
	.uleb128 0x22
	.4byte	0x16c
	.byte	0x4
	.uleb128 0x22
	.4byte	0x177
	.byte	0
	.uleb128 0x16
	.4byte	.LVL139
	.4byte	0x119e
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0xc
	.4byte	0x3ff01010
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x33
	.4byte	0x380
	.4byte	.LBB130
	.4byte	.LBE130-.LBB130
	.byte	0x1
	.2byte	0x149
	.4byte	0xf47
	.uleb128 0x20
	.4byte	0x397
	.4byte	.LLST57
	.uleb128 0x20
	.4byte	0x38c
	.4byte	.LLST57
	.uleb128 0x21
	.4byte	.LBB131
	.4byte	.LBE131-.LBB131
	.uleb128 0x24
	.4byte	0x3a2
	.4byte	.LLST57
	.uleb128 0x24
	.4byte	0x3ad
	.4byte	.LLST57
	.uleb128 0x24
	.4byte	0x3b8
	.4byte	.LLST61
	.uleb128 0x27
	.4byte	.LBB132
	.4byte	.LBE132-.LBB132
	.4byte	0xef7
	.uleb128 0x24
	.4byte	0x3c4
	.4byte	.LLST62
	.byte	0
	.uleb128 0x14
	.4byte	0x12e
	.4byte	.LBB133
	.4byte	.LBE133-.LBB133
	.byte	0x1
	.byte	0x88
	.4byte	0xf27
	.uleb128 0x20
	.4byte	0x13e
	.4byte	.LLST63
	.uleb128 0x16
	.4byte	.LVL147
	.4byte	0x1174
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0xc
	.4byte	0x3ff01004
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL148
	.4byte	0x11a7
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0xc
	.4byte	0x3ff01030
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL138
	.4byte	0x18e
	.uleb128 0x2d
	.4byte	.LVL142
	.4byte	0x119e
	.4byte	0xf70
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL154
	.4byte	0x119e
	.4byte	0xf90
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -79
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x28
	.4byte	.LVL158
	.4byte	0x211
	.byte	0
	.uleb128 0xa
	.4byte	0x57
	.4byte	0xfaa
	.uleb128 0xb
	.4byte	0x85
	.byte	0x10
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF50
	.byte	0x1
	.2byte	0x160
	.4byte	0x25
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1163
	.uleb128 0x2f
	.string	"ctx"
	.byte	0x1
	.2byte	0x160
	.4byte	0x183
	.4byte	.LLST64
	.uleb128 0x30
	.4byte	.LASF44
	.byte	0x1
	.2byte	0x161
	.4byte	0x2c
	.4byte	.LLST65
	.uleb128 0x30
	.4byte	.LASF51
	.byte	0x1
	.2byte	0x162
	.4byte	0xdab
	.4byte	.LLST66
	.uleb128 0x34
	.4byte	.LASF52
	.byte	0x1
	.2byte	0x163
	.4byte	0x95
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x30
	.4byte	.LASF53
	.byte	0x1
	.2byte	0x164
	.4byte	0x95
	.4byte	.LLST67
	.uleb128 0x30
	.4byte	.LASF32
	.byte	0x1
	.2byte	0x165
	.4byte	0x375
	.4byte	.LLST68
	.uleb128 0x30
	.4byte	.LASF33
	.byte	0x1
	.2byte	0x166
	.4byte	0x95
	.4byte	.LLST69
	.uleb128 0x32
	.string	"c"
	.byte	0x1
	.2byte	0x168
	.4byte	0x25
	.4byte	.LLST70
	.uleb128 0x32
	.string	"i"
	.byte	0x1
	.2byte	0x168
	.4byte	0x25
	.4byte	.LLST71
	.uleb128 0x32
	.string	"n"
	.byte	0x1
	.2byte	0x169
	.4byte	0x2c
	.4byte	.LLST72
	.uleb128 0x33
	.4byte	0x14a
	.4byte	.LBB142
	.4byte	.LBE142-.LBB142
	.byte	0x1
	.2byte	0x16d
	.4byte	0x10b2
	.uleb128 0x1f
	.4byte	0x161
	.byte	0x1
	.uleb128 0x20
	.4byte	0x156
	.4byte	.LLST73
	.uleb128 0x21
	.4byte	.LBB143
	.4byte	.LBE143-.LBB143
	.uleb128 0x22
	.4byte	0x16c
	.byte	0x4
	.uleb128 0x22
	.4byte	0x177
	.byte	0
	.uleb128 0x16
	.4byte	.LVL165
	.4byte	0x119e
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0xc
	.4byte	0x3ff01010
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.byte	0x23
	.uleb128 0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x33
	.4byte	0x380
	.4byte	.LBB144
	.4byte	.LBE144-.LBB144
	.byte	0x1
	.2byte	0x171
	.4byte	0x1150
	.uleb128 0x29
	.4byte	0x397
	.uleb128 0x29
	.4byte	0x38c
	.uleb128 0x21
	.4byte	.LBB145
	.4byte	.LBE145-.LBB145
	.uleb128 0x2a
	.4byte	0x3a2
	.uleb128 0x2a
	.4byte	0x3ad
	.uleb128 0x2a
	.4byte	0x3b8
	.uleb128 0x27
	.4byte	.LBB146
	.4byte	.LBE146-.LBB146
	.4byte	0x10ff
	.uleb128 0x24
	.4byte	0x3c4
	.4byte	.LLST74
	.byte	0
	.uleb128 0x14
	.4byte	0x12e
	.4byte	.LBB147
	.4byte	.LBE147-.LBB147
	.byte	0x1
	.byte	0x88
	.4byte	0x112f
	.uleb128 0x20
	.4byte	0x13e
	.4byte	.LLST75
	.uleb128 0x16
	.4byte	.LVL174
	.4byte	0x1174
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0xc
	.4byte	0x3ff01004
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL175
	.4byte	0x11a7
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0xc
	.4byte	0x3ff01030
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL164
	.4byte	0x18e
	.uleb128 0x28
	.4byte	.LVL185
	.4byte	0x211
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF54
	.byte	0x1
	.byte	0x31
	.4byte	0x123
	.uleb128 0x5
	.byte	0x3
	.4byte	aes_spinlock
	.uleb128 0x36
	.4byte	.LASF55
	.4byte	.LASF55
	.byte	0x8
	.byte	0x1e
	.uleb128 0x36
	.4byte	.LASF56
	.4byte	.LASF56
	.byte	0x7
	.byte	0xda
	.uleb128 0x36
	.4byte	.LASF57
	.4byte	.LASF57
	.byte	0x7
	.byte	0xd9
	.uleb128 0x37
	.4byte	.LASF58
	.4byte	.LASF58
	.uleb128 0x37
	.4byte	.LASF59
	.4byte	.LASF59
	.uleb128 0x36
	.4byte	.LASF60
	.4byte	.LASF60
	.byte	0x8
	.byte	0x1d
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL13
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL17
	.4byte	.LFE25
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL18
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL21
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL18
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL25
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL19
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL21
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL22
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL25
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL22
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL25
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL32
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL35
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL32
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL39
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL33
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL35
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL36
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL39
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL36
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL39
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL37
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL46
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL52
	.4byte	.LFE32
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL46
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL50
	.4byte	.LFE32
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL50
	.4byte	.LFE32
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL47
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL52
	.4byte	.LFE32
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL50
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL53
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL60
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL65
	.4byte	.LVL97
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL97
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL98
	.4byte	.LFE33
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL60
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL67
	.4byte	.LVL97
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL97
	.4byte	.LFE33
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL60
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL80
	.4byte	.LFE33
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL60
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL67
	.4byte	.LVL97
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	.LVL97
	.4byte	.LFE33
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL60
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL67
	.4byte	.LVL97
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x9f
	.4byte	.LVL97
	.4byte	.LFE33
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL75
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL81
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL84
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL62
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL67
	.4byte	.LVL97
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL62
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL65
	.4byte	.LVL97
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL62
	.4byte	.LVL97
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL63
	.4byte	.LVL66
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL68
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL79
	.4byte	.LVL80
	.2byte	0x3
	.byte	0x77
	.sleb128 -16
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL68
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL78
	.4byte	.LVL80
	.2byte	0x3
	.byte	0x76
	.sleb128 -16
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL68
	.4byte	.LVL80
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff01030
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL69
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL72
	.4byte	.LVL80
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff01004
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL86
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL89
	.4byte	.LVL95
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff01004
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL99
	.4byte	.LVL104
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL104
	.4byte	.LFE34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL99
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL101
	.4byte	.LVL105
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	.LVL105
	.4byte	.LFE34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL99
	.4byte	.LVL106
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL106
	.4byte	.LVL119
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL119
	.4byte	.LVL120
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL120
	.4byte	.LVL133
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL133
	.4byte	.LVL134
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL134
	.4byte	.LVL135
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL99
	.4byte	.LVL100
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL100
	.4byte	.LVL105
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL105
	.4byte	.LFE34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL99
	.4byte	.LVL114
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL114
	.4byte	.LVL119
	.2byte	0x3
	.byte	0x77
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL119
	.4byte	.LVL129
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL129
	.4byte	.LVL133
	.2byte	0x3
	.byte	0x77
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL133
	.4byte	.LFE34
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL99
	.4byte	.LVL106
	.2byte	0x2
	.byte	0x91
	.sleb128 0
	.4byte	.LVL106
	.4byte	.LVL115
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL115
	.4byte	.LVL118
	.2byte	0x3
	.byte	0x75
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL118
	.4byte	.LVL128
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL128
	.4byte	.LVL132
	.2byte	0x3
	.byte	0x75
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL132
	.4byte	.LFE34
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL115
	.4byte	.LVL119
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL101
	.4byte	.LVL116
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL116
	.4byte	.LVL117
	.2byte	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL117
	.4byte	.LVL130
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL130
	.4byte	.LVL131
	.2byte	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL131
	.4byte	.LFE34
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL102
	.4byte	.LVL104
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL104
	.4byte	.LFE34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL107
	.4byte	.LVL109
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL110
	.4byte	.LVL111
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL112
	.4byte	.LVL114
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff01004
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL121
	.4byte	.LVL123
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL124
	.4byte	.LVL125
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL126
	.4byte	.LVL128
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff01004
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL137
	.4byte	.LVL140
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL140
	.4byte	.LFE35
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL137
	.4byte	.LVL141
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL141
	.4byte	.LVL156
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL156
	.4byte	.LVL157
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL157
	.4byte	.LVL159
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL159
	.4byte	.LFE35
	.2byte	0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL137
	.4byte	.LVL151
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL151
	.4byte	.LVL152
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL152
	.4byte	.LVL156
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	.LVL156
	.4byte	.LFE35
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LVL137
	.4byte	.LVL149
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL149
	.4byte	.LVL150
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL150
	.4byte	.LVL156
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL156
	.4byte	.LFE35
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LVL153
	.4byte	.LVL155
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL138
	.4byte	.LVL140
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL140
	.4byte	.LFE35
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL142
	.4byte	.LVL156
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST61:
	.4byte	.LVL142
	.4byte	.LVL156
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff01030
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST62:
	.4byte	.LVL142
	.4byte	.LVL143
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL143
	.4byte	.LVL145
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST63:
	.4byte	.LVL146
	.4byte	.LVL156
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff01004
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST64:
	.4byte	.LVL160
	.4byte	.LVL163
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL163
	.4byte	.LVL166
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	.LVL166
	.4byte	.LFE36
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST65:
	.4byte	.LVL160
	.4byte	.LVL167
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL167
	.4byte	.LVL183
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL183
	.4byte	.LVL184
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL184
	.4byte	.LFE36
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST66:
	.4byte	.LVL160
	.4byte	.LVL161
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL161
	.4byte	.LVL166
	.2byte	0x2
	.byte	0x91
	.sleb128 -40
	.4byte	.LVL166
	.4byte	.LFE36
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST67:
	.4byte	.LVL160
	.4byte	.LVL162
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL162
	.4byte	.LVL166
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL166
	.4byte	.LFE36
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST68:
	.4byte	.LVL160
	.4byte	.LVL178
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL178
	.4byte	.LVL183
	.2byte	0x3
	.byte	0x77
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL183
	.4byte	.LFE36
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST69:
	.4byte	.LVL160
	.4byte	.LVL167
	.2byte	0x2
	.byte	0x91
	.sleb128 0
	.4byte	.LVL167
	.4byte	.LVL179
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL179
	.4byte	.LVL182
	.2byte	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL182
	.4byte	.LFE36
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST70:
	.4byte	.LVL179
	.4byte	.LVL183
	.2byte	0x6
	.byte	0x78
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST71:
	.4byte	.LVL176
	.4byte	.LVL178
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST72:
	.4byte	.LVL163
	.4byte	.LVL180
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL180
	.4byte	.LVL181
	.2byte	0x3
	.byte	0x72
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL181
	.4byte	.LVL186
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST73:
	.4byte	.LVL164
	.4byte	.LVL166
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	0
	.4byte	0
.LLST74:
	.4byte	.LVL168
	.4byte	.LVL170
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL171
	.4byte	.LVL172
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST75:
	.4byte	.LVL173
	.4byte	.LVL178
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff01004
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x84
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
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
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB31
	.4byte	.LFE31
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF43:
	.string	"esp_aes_crypt_cbc"
.LASF41:
	.string	"esp_aes_decrypt"
.LASF42:
	.string	"esp_aes_crypt_ecb"
.LASF46:
	.string	"temp"
.LASF56:
	.string	"vTaskEnterCritical"
.LASF3:
	.string	"size_t"
.LASF32:
	.string	"input"
.LASF11:
	.string	"sizetype"
.LASF37:
	.string	"esp_aes_setkey"
.LASF49:
	.string	"esp_aes_crypt_cfb8"
.LASF7:
	.string	"__uint32_t"
.LASF23:
	.string	"MODE_DECRYPT_BIT"
.LASF22:
	.string	"mode"
.LASF52:
	.string	"nonce_counter"
.LASF59:
	.string	"memcpy"
.LASF51:
	.string	"nc_off"
.LASF6:
	.string	"short int"
.LASF34:
	.string	"input_words"
.LASF40:
	.string	"esp_internal_aes_decrypt"
.LASF14:
	.string	"uint8_t"
.LASF26:
	.string	"esp_aes_release_hardware"
.LASF28:
	.string	"esp_aes_free"
.LASF64:
	.string	"DPORT_REG_READ"
.LASF8:
	.string	"long long int"
.LASF62:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/esp32/hwcrypto/aes.c"
.LASF58:
	.string	"memset"
.LASF10:
	.string	"long int"
.LASF53:
	.string	"stream_block"
.LASF4:
	.string	"__uint8_t"
.LASF57:
	.string	"vTaskExitCritical"
.LASF44:
	.string	"length"
.LASF30:
	.string	"esp_aes_setkey_hardware"
.LASF5:
	.string	"unsigned char"
.LASF19:
	.string	"owner"
.LASF2:
	.string	"signed char"
.LASF9:
	.string	"long long unsigned int"
.LASF15:
	.string	"uint32_t"
.LASF21:
	.string	"portMUX_TYPE"
.LASF0:
	.string	"unsigned int"
.LASF39:
	.string	"esp_aes_encrypt"
.LASF45:
	.string	"iv_words"
.LASF36:
	.string	"mem_block"
.LASF54:
	.string	"aes_spinlock"
.LASF25:
	.string	"esp_aes_acquire_hardware"
.LASF1:
	.string	"short unsigned int"
.LASF13:
	.string	"char"
.LASF31:
	.string	"esp_aes_block"
.LASF27:
	.string	"esp_aes_init"
.LASF18:
	.string	"_Bool"
.LASF24:
	.string	"mode_reg_base"
.LASF38:
	.string	"esp_internal_aes_encrypt"
.LASF55:
	.string	"esp_dport_access_reg_read"
.LASF12:
	.string	"long unsigned int"
.LASF17:
	.string	"esp_aes_context"
.LASF20:
	.string	"count"
.LASF60:
	.string	"esp_dport_access_read_buffer"
.LASF35:
	.string	"output_words"
.LASF47:
	.string	"esp_aes_crypt_cfb128"
.LASF33:
	.string	"output"
.LASF16:
	.string	"key_bytes"
.LASF48:
	.string	"iv_off"
.LASF50:
	.string	"esp_aes_crypt_ctr"
.LASF63:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\esp32"
.LASF61:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF29:
	.string	"keybits"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
