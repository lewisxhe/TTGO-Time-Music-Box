	.file	"transport.c"
	.text
.Ltext0:
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC0:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/esp_http_client/lib/transport.c"
	.align	4
.LC2:
	.string	"TRANSPORT"
	.align	4
.LC4:
	.string	"\033[0;31mE (%d) %s: %s:%d (%s): %s\033[0m\n"
	.align	4
.LC6:
	.string	"Memory exhausted"
	.section	.text.transport_list_init,"ax",@progbits
	.literal_position
	.literal .LC1, .LC0
	.literal .LC3, .LC2
	.literal .LC5, .LC4
	.literal .LC7, .LC6
	.literal .LC8, __FUNCTION__$3414
	.align	4
	.global	transport_list_init
	.type	transport_list_init, @function
transport_list_init:
.LFB0:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/esp_http_client/lib/transport.c"
	.loc 1 54 0
	entry	sp, 48
.LCFI0:
	.loc 1 55 0
	movi.n	a11, 8
	movi.n	a10, 1
	call8	calloc
.LVL0:
	.loc 1 56 0
	bnez.n	a10, .L2
	.loc 1 56 0 is_stmt 0 discriminator 4
	call8	esp_log_timestamp
.LVL1:
	l32r	a11, .LC3
	l32r	a2, .LC7
	s32i.n	a2, sp, 8
	l32r	a2, .LC8
	s32i.n	a2, sp, 4
	movi.n	a2, 0x38
	s32i.n	a2, sp, 0
	l32r	a15, .LC1
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC5
	movi.n	a10, 1
	call8	esp_log_write
.LVL2:
	.loc 1 56 0 is_stmt 1 discriminator 4
	movi.n	a2, 0
	retw.n
.LVL3:
.L2:
	.loc 1 57 0
	movi.n	a2, 0
	s32i.n	a2, a10, 0
	.loc 1 57 0
	s32i.n	a10, a10, 4
	.loc 1 58 0
	mov.n	a2, a10
	.loc 1 59 0
	retw.n
.LFE0:
	.size	transport_list_init, .-transport_list_init
	.section	.text.transport_list_add,"ax",@progbits
	.literal_position
	.literal .LC9, .LC0
	.literal .LC10, .LC2
	.literal .LC11, .LC4
	.literal .LC12, .LC6
	.literal .LC13, __FUNCTION__$3420
	.align	4
	.global	transport_list_add
	.type	transport_list_add, @function
transport_list_add:
.LFB1:
	.loc 1 62 0
.LVL4:
	entry	sp, 48
.LCFI1:
	.loc 1 63 0
	movi.n	a8, 1
	movi.n	a10, 0
	mov.n	a9, a10
	moveqz	a9, a8, a2
	.loc 1 63 0
	movnez	a8, a10, a3
	or	a8, a8, a9
	.loc 1 63 0
	bne	a8, a10, .L7
	.loc 1 66 0
	mov.n	a10, a4
	call8	strlen
.LVL5:
	addi.n	a11, a10, 1
	movi.n	a10, 1
	call8	calloc
.LVL6:
	s32i.n	a10, a3, 8
	.loc 1 67 0
	bnez.n	a10, .L6
	.loc 1 67 0 is_stmt 0 discriminator 4
	call8	esp_log_timestamp
.LVL7:
	l32r	a11, .LC10
	l32r	a2, .LC12
.LVL8:
	s32i.n	a2, sp, 8
	l32r	a2, .LC13
	s32i.n	a2, sp, 4
	movi.n	a2, 0x43
	s32i.n	a2, sp, 0
	l32r	a15, .LC9
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC11
	movi.n	a10, 1
	call8	esp_log_write
.LVL9:
	movi	a2, 0x101
	retw.n
.LVL10:
.L6:
	.loc 1 68 0 is_stmt 1
	mov.n	a11, a4
	call8	strcpy
.LVL11:
	.loc 1 69 0
	movi.n	a4, 0
.LVL12:
	s32i.n	a4, a3, 48
	.loc 1 69 0
	l32i.n	a8, a2, 4
	s32i.n	a3, a8, 0
	addi	a3, a3, 48
.LVL13:
	s32i.n	a3, a2, 4
.LVL14:
	.loc 1 70 0
	mov.n	a2, a4
.LVL15:
	retw.n
.LVL16:
.L7:
	.loc 1 64 0
	movi	a2, 0x102
.LVL17:
	.loc 1 71 0
	retw.n
.LFE1:
	.size	transport_list_add, .-transport_list_add
	.section	.text.transport_list_get_transport,"ax",@progbits
	.align	4
	.global	transport_list_get_transport
	.type	transport_list_get_transport, @function
transport_list_get_transport:
.LFB2:
	.loc 1 74 0
.LVL18:
	entry	sp, 32
.LCFI2:
	.loc 1 75 0
	beqz.n	a2, .L13
	.loc 1 78 0
	bnez.n	a3, .L10
	.loc 1 79 0
	l32i.n	a2, a2, 0
.LVL19:
	retw.n
.LVL20:
.L10:
	.loc 1 82 0
	l32i.n	a2, a2, 0
.LVL21:
	j	.L11
.L12:
	.loc 1 83 0
	mov.n	a11, a3
	l32i.n	a10, a2, 8
	call8	strcasecmp
.LVL22:
	beqz.n	a10, .L9
	.loc 1 82 0 discriminator 2
	l32i.n	a2, a2, 48
.LVL23:
.L11:
	.loc 1 82 0 is_stmt 0 discriminator 1
	bnez.n	a2, .L12
	retw.n
.LVL24:
.L13:
	.loc 1 76 0 is_stmt 1
	movi.n	a2, 0
.LVL25:
.L9:
	.loc 1 88 0
	retw.n
.LFE2:
	.size	transport_list_get_transport, .-transport_list_get_transport
	.section	.text.transport_init,"ax",@progbits
	.literal_position
	.literal .LC14, .LC0
	.literal .LC15, .LC2
	.literal .LC16, .LC4
	.literal .LC17, .LC6
	.literal .LC18, __FUNCTION__$3443
	.align	4
	.global	transport_init
	.type	transport_init, @function
transport_init:
.LFB5:
	.loc 1 114 0
	entry	sp, 48
.LCFI3:
	.loc 1 115 0
	movi.n	a11, 0x34
	movi.n	a10, 1
	call8	calloc
.LVL26:
	.loc 1 116 0
	bnez.n	a10, .L17
	.loc 1 116 0 is_stmt 0 discriminator 4
	call8	esp_log_timestamp
.LVL27:
	l32r	a11, .LC15
	l32r	a2, .LC17
	s32i.n	a2, sp, 8
	l32r	a2, .LC18
	s32i.n	a2, sp, 4
	movi	a2, 0x74
	s32i.n	a2, sp, 0
	l32r	a15, .LC14
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC16
	movi.n	a10, 1
	call8	esp_log_write
.LVL28:
	.loc 1 116 0 is_stmt 1 discriminator 4
	movi.n	a2, 0
	retw.n
.LVL29:
.L17:
	.loc 1 117 0
	mov.n	a2, a10
	.loc 1 118 0
	retw.n
.LFE5:
	.size	transport_init, .-transport_init
	.section	.text.transport_destroy,"ax",@progbits
	.align	4
	.global	transport_destroy
	.type	transport_destroy, @function
transport_destroy:
.LFB6:
	.loc 1 121 0
.LVL30:
	entry	sp, 32
.LCFI4:
	.loc 1 122 0
	l32i.n	a10, a2, 8
	beqz.n	a10, .L19
	.loc 1 123 0
	call8	free
.LVL31:
.L19:
	.loc 1 125 0
	mov.n	a10, a2
	call8	free
.LVL32:
	.loc 1 127 0
	movi.n	a2, 0
.LVL33:
	retw.n
.LFE6:
	.size	transport_destroy, .-transport_destroy
	.section	.text.transport_list_clean,"ax",@progbits
	.align	4
	.global	transport_list_clean
	.type	transport_list_clean, @function
transport_list_clean:
.LFB4:
	.loc 1 98 0
.LVL34:
	entry	sp, 32
.LCFI5:
	.loc 1 99 0
	l32i.n	a3, a2, 0
.LVL35:
	.loc 1 101 0
	j	.L21
.L23:
	.loc 1 102 0
	l32i.n	a4, a3, 48
.LVL36:
	.loc 1 103 0
	l32i.n	a8, a3, 44
	beqz.n	a8, .L22
	.loc 1 104 0
	mov.n	a10, a3
	callx8	a8
.LVL37:
.L22:
	.loc 1 106 0
	mov.n	a10, a3
	call8	transport_destroy
.LVL38:
	.loc 1 107 0
	mov.n	a3, a4
.LVL39:
.L21:
	.loc 1 101 0
	bnez.n	a3, .L23
	.loc 1 109 0
	s32i.n	a3, a2, 0
	.loc 1 109 0
	s32i.n	a2, a2, 4
	.loc 1 111 0
	mov.n	a2, a3
.LVL40:
	retw.n
.LFE4:
	.size	transport_list_clean, .-transport_list_clean
	.section	.text.transport_list_destroy,"ax",@progbits
	.align	4
	.global	transport_list_destroy
	.type	transport_list_destroy, @function
transport_list_destroy:
.LFB3:
	.loc 1 91 0
.LVL41:
	entry	sp, 32
.LCFI6:
	.loc 1 92 0
	mov.n	a10, a2
	call8	transport_list_clean
.LVL42:
	.loc 1 93 0
	mov.n	a10, a2
	call8	free
.LVL43:
	.loc 1 95 0
	movi.n	a2, 0
.LVL44:
	retw.n
.LFE3:
	.size	transport_list_destroy, .-transport_list_destroy
	.section	.text.transport_connect,"ax",@progbits
	.align	4
	.global	transport_connect
	.type	transport_connect, @function
transport_connect:
.LFB7:
	.loc 1 130 0
.LVL45:
	entry	sp, 32
.LCFI7:
.LVL46:
	.loc 1 132 0
	beqz.n	a2, .L27
	.loc 1 132 0 is_stmt 0 discriminator 1
	l32i.n	a8, a2, 20
	beqz.n	a8, .L28
	.loc 1 133 0 is_stmt 1
	mov.n	a13, a5
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	callx8	a8
.LVL47:
	mov.n	a2, a10
.LVL48:
	retw.n
.LVL49:
.L27:
	.loc 1 135 0
	movi.n	a2, -1
.LVL50:
	retw.n
.LVL51:
.L28:
	movi.n	a2, -1
.LVL52:
	.loc 1 136 0
	retw.n
.LFE7:
	.size	transport_connect, .-transport_connect
	.section	.text.transport_read,"ax",@progbits
	.align	4
	.global	transport_read
	.type	transport_read, @function
transport_read:
.LFB8:
	.loc 1 139 0
.LVL53:
	entry	sp, 32
.LCFI8:
	.loc 1 140 0
	beqz.n	a2, .L31
	.loc 1 140 0 is_stmt 0 discriminator 1
	l32i.n	a8, a2, 24
	beqz.n	a8, .L32
	.loc 1 141 0 is_stmt 1
	mov.n	a13, a5
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	callx8	a8
.LVL54:
	mov.n	a2, a10
.LVL55:
	retw.n
.LVL56:
.L31:
	.loc 1 143 0
	movi.n	a2, -1
.LVL57:
	retw.n
.LVL58:
.L32:
	movi.n	a2, -1
.LVL59:
	.loc 1 144 0
	retw.n
.LFE8:
	.size	transport_read, .-transport_read
	.section	.text.transport_write,"ax",@progbits
	.align	4
	.global	transport_write
	.type	transport_write, @function
transport_write:
.LFB9:
	.loc 1 147 0
.LVL60:
	entry	sp, 32
.LCFI9:
	.loc 1 148 0
	beqz.n	a2, .L35
	.loc 1 148 0 is_stmt 0 discriminator 1
	l32i.n	a8, a2, 28
	beqz.n	a8, .L36
	.loc 1 149 0 is_stmt 1
	mov.n	a13, a5
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	callx8	a8
.LVL61:
	mov.n	a2, a10
.LVL62:
	retw.n
.LVL63:
.L35:
	.loc 1 151 0
	movi.n	a2, -1
.LVL64:
	retw.n
.LVL65:
.L36:
	movi.n	a2, -1
.LVL66:
	.loc 1 152 0
	retw.n
.LFE9:
	.size	transport_write, .-transport_write
	.section	.text.transport_poll_read,"ax",@progbits
	.align	4
	.global	transport_poll_read
	.type	transport_poll_read, @function
transport_poll_read:
.LFB10:
	.loc 1 155 0
.LVL67:
	entry	sp, 32
.LCFI10:
	.loc 1 156 0
	beqz.n	a2, .L39
	.loc 1 156 0 is_stmt 0 discriminator 1
	l32i.n	a8, a2, 36
	beqz.n	a8, .L40
	.loc 1 157 0 is_stmt 1
	mov.n	a11, a3
	mov.n	a10, a2
	callx8	a8
.LVL68:
	mov.n	a2, a10
.LVL69:
	retw.n
.LVL70:
.L39:
	.loc 1 159 0
	movi.n	a2, -1
.LVL71:
	retw.n
.LVL72:
.L40:
	movi.n	a2, -1
.LVL73:
	.loc 1 160 0
	retw.n
.LFE10:
	.size	transport_poll_read, .-transport_poll_read
	.section	.text.transport_poll_write,"ax",@progbits
	.align	4
	.global	transport_poll_write
	.type	transport_poll_write, @function
transport_poll_write:
.LFB11:
	.loc 1 163 0
.LVL74:
	entry	sp, 32
.LCFI11:
	.loc 1 164 0
	beqz.n	a2, .L43
	.loc 1 164 0 is_stmt 0 discriminator 1
	l32i.n	a8, a2, 40
	beqz.n	a8, .L44
	.loc 1 165 0 is_stmt 1
	mov.n	a11, a3
	mov.n	a10, a2
	callx8	a8
.LVL75:
	mov.n	a2, a10
.LVL76:
	retw.n
.LVL77:
.L43:
	.loc 1 167 0
	movi.n	a2, -1
.LVL78:
	retw.n
.LVL79:
.L44:
	movi.n	a2, -1
.LVL80:
	.loc 1 168 0
	retw.n
.LFE11:
	.size	transport_poll_write, .-transport_poll_write
	.section	.text.transport_close,"ax",@progbits
	.align	4
	.global	transport_close
	.type	transport_close, @function
transport_close:
.LFB12:
	.loc 1 171 0
.LVL81:
	entry	sp, 32
.LCFI12:
	.loc 1 172 0
	beqz.n	a2, .L47
	.loc 1 172 0 is_stmt 0 discriminator 1
	l32i.n	a8, a2, 32
	beqz.n	a8, .L48
	.loc 1 173 0 is_stmt 1
	mov.n	a10, a2
	callx8	a8
.LVL82:
	mov.n	a2, a10
.LVL83:
	retw.n
.LVL84:
.L47:
	.loc 1 175 0
	movi.n	a2, 0
.LVL85:
	retw.n
.LVL86:
.L48:
	movi.n	a2, 0
.LVL87:
	.loc 1 176 0
	retw.n
.LFE12:
	.size	transport_close, .-transport_close
	.section	.text.transport_get_context_data,"ax",@progbits
	.align	4
	.global	transport_get_context_data
	.type	transport_get_context_data, @function
transport_get_context_data:
.LFB13:
	.loc 1 179 0
.LVL88:
	entry	sp, 32
.LCFI13:
	.loc 1 180 0
	beqz.n	a2, .L51
	.loc 1 181 0
	l32i.n	a2, a2, 16
.LVL89:
	retw.n
.LVL90:
.L51:
	.loc 1 183 0
	movi.n	a2, 0
.LVL91:
	.loc 1 184 0
	retw.n
.LFE13:
	.size	transport_get_context_data, .-transport_get_context_data
	.section	.text.transport_set_context_data,"ax",@progbits
	.align	4
	.global	transport_set_context_data
	.type	transport_set_context_data, @function
transport_set_context_data:
.LFB14:
	.loc 1 187 0
.LVL92:
	entry	sp, 32
.LCFI14:
	.loc 1 188 0
	beqz.n	a2, .L54
	.loc 1 189 0
	s32i.n	a3, a2, 16
	.loc 1 190 0
	movi.n	a2, 0
.LVL93:
	retw.n
.LVL94:
.L54:
	.loc 1 192 0
	movi.n	a2, -1
.LVL95:
	.loc 1 193 0
	retw.n
.LFE14:
	.size	transport_set_context_data, .-transport_set_context_data
	.section	.text.transport_set_func,"ax",@progbits
	.align	4
	.global	transport_set_func
	.type	transport_set_func, @function
transport_set_func:
.LFB15:
	.loc 1 203 0
.LVL96:
	entry	sp, 32
.LCFI15:
	.loc 1 204 0
	beqz.n	a2, .L57
	.loc 1 207 0
	s32i.n	a3, a2, 20
	.loc 1 208 0
	s32i.n	a4, a2, 24
	.loc 1 209 0
	s32i.n	a5, a2, 28
	.loc 1 210 0
	s32i.n	a6, a2, 32
	.loc 1 211 0
	s32i.n	a7, a2, 36
	.loc 1 212 0
	l32i.n	a3, sp, 32
.LVL97:
	s32i.n	a3, a2, 40
	.loc 1 213 0
	l32i.n	a3, sp, 36
	s32i.n	a3, a2, 44
	.loc 1 214 0
	movi.n	a2, 0
.LVL98:
	retw.n
.LVL99:
.L57:
	.loc 1 205 0
	movi.n	a2, -1
.LVL100:
	.loc 1 215 0
	retw.n
.LFE15:
	.size	transport_set_func, .-transport_set_func
	.section	.text.transport_get_default_port,"ax",@progbits
	.align	4
	.global	transport_get_default_port
	.type	transport_get_default_port, @function
transport_get_default_port:
.LFB16:
	.loc 1 218 0
.LVL101:
	entry	sp, 32
.LCFI16:
	.loc 1 219 0
	beqz.n	a2, .L60
	.loc 1 222 0
	l32i.n	a2, a2, 0
.LVL102:
	retw.n
.LVL103:
.L60:
	.loc 1 220 0
	movi.n	a2, -1
.LVL104:
	.loc 1 223 0
	retw.n
.LFE16:
	.size	transport_get_default_port, .-transport_get_default_port
	.section	.text.transport_set_default_port,"ax",@progbits
	.align	4
	.global	transport_set_default_port
	.type	transport_set_default_port, @function
transport_set_default_port:
.LFB17:
	.loc 1 226 0
.LVL105:
	entry	sp, 32
.LCFI17:
	.loc 1 227 0
	beqz.n	a2, .L63
	.loc 1 230 0
	s32i.n	a3, a2, 0
	.loc 1 231 0
	movi.n	a2, 0
.LVL106:
	retw.n
.LVL107:
.L63:
	.loc 1 228 0
	movi.n	a2, -1
.LVL108:
	.loc 1 232 0
	retw.n
.LFE17:
	.size	transport_set_default_port, .-transport_set_default_port
	.section	.rodata.__FUNCTION__$3443,"a",@progbits
	.align	4
	.type	__FUNCTION__$3443, @object
	.size	__FUNCTION__$3443, 15
__FUNCTION__$3443:
	.string	"transport_init"
	.section	.rodata.__FUNCTION__$3420,"a",@progbits
	.align	4
	.type	__FUNCTION__$3420, @object
	.size	__FUNCTION__$3420, 19
__FUNCTION__$3420:
	.string	"transport_list_add"
	.section	.rodata.__FUNCTION__$3414,"a",@progbits
	.align	4
	.type	__FUNCTION__$3414, @object
	.size	__FUNCTION__$3414, 20
__FUNCTION__$3414:
	.string	"transport_list_init"
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
	.uleb128 0x30
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
	.uleb128 0x30
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
	.uleb128 0x20
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
	.uleb128 0x30
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI4-.LFB6
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI5-.LFB4
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI6-.LFB3
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
	.uleb128 0x20
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
	.uleb128 0x20
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
	.uleb128 0x20
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
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI13-.LFB13
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI14-.LFB14
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
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI16-.LFB16
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI17-.LFB17
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE34:
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_err.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/esp_http_client/lib/include/transport.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdlib.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/log/include/esp_log.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x9fe
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF76
	.byte	0xc
	.4byte	.LASF77
	.4byte	.LASF78
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
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
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x2
	.byte	0x19
	.4byte	0x33
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x6
	.byte	0x4
	.4byte	0x85
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x6
	.byte	0x4
	.4byte	0x92
	.uleb128 0x7
	.4byte	0x85
	.uleb128 0x4
	.4byte	.LASF12
	.byte	0x3
	.byte	0x2c
	.4byte	0x4f
	.uleb128 0x8
	.byte	0x4
	.4byte	0x25
	.byte	0x7
	.byte	0x1f
	.4byte	0xd3
	.uleb128 0x9
	.4byte	.LASF13
	.byte	0
	.uleb128 0x9
	.4byte	.LASF14
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF15
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF16
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF17
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x5
	.byte	0
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x4
	.byte	0x18
	.4byte	0x97
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x5
	.byte	0x19
	.4byte	0xe9
	.uleb128 0x6
	.byte	0x4
	.4byte	0xef
	.uleb128 0xa
	.4byte	.LASF24
	.byte	0x8
	.byte	0x1
	.byte	0x32
	.4byte	0x114
	.uleb128 0xb
	.4byte	.LASF21
	.byte	0x1
	.byte	0x32
	.4byte	0x11f
	.byte	0
	.uleb128 0xb
	.4byte	.LASF22
	.byte	0x1
	.byte	0x32
	.4byte	0x291
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF23
	.byte	0x5
	.byte	0x1a
	.4byte	0x11f
	.uleb128 0x6
	.byte	0x4
	.4byte	0x125
	.uleb128 0xa
	.4byte	.LASF25
	.byte	0x34
	.byte	0x1
	.byte	0x1e
	.4byte	0x1ce
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0x1
	.byte	0x1f
	.4byte	0x33
	.byte	0
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0x1
	.byte	0x20
	.4byte	0x33
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0x1
	.byte	0x21
	.4byte	0x7f
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF29
	.byte	0x1
	.byte	0x22
	.4byte	0x76
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0x1
	.byte	0x23
	.4byte	0x76
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0x1
	.byte	0x24
	.4byte	0x1ce
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0x1
	.byte	0x25
	.4byte	0x208
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF33
	.byte	0x1
	.byte	0x26
	.4byte	0x1fd
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF34
	.byte	0x1
	.byte	0x27
	.4byte	0x237
	.byte	0x20
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0x1
	.byte	0x28
	.4byte	0x257
	.byte	0x24
	.uleb128 0xb
	.4byte	.LASF36
	.byte	0x1
	.byte	0x29
	.4byte	0x257
	.byte	0x28
	.uleb128 0xb
	.4byte	.LASF37
	.byte	0x1
	.byte	0x2a
	.4byte	0x237
	.byte	0x2c
	.uleb128 0xb
	.4byte	.LASF38
	.byte	0x1
	.byte	0x2b
	.4byte	0x27c
	.byte	0x30
	.byte	0
	.uleb128 0x4
	.4byte	.LASF39
	.byte	0x5
	.byte	0x1c
	.4byte	0x1d9
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1df
	.uleb128 0xc
	.4byte	0x33
	.4byte	0x1fd
	.uleb128 0xd
	.4byte	0x114
	.uleb128 0xd
	.4byte	0x8c
	.uleb128 0xd
	.4byte	0x33
	.uleb128 0xd
	.4byte	0x33
	.byte	0
	.uleb128 0x4
	.4byte	.LASF40
	.byte	0x5
	.byte	0x1d
	.4byte	0x1d9
	.uleb128 0x4
	.4byte	.LASF41
	.byte	0x5
	.byte	0x1e
	.4byte	0x213
	.uleb128 0x6
	.byte	0x4
	.4byte	0x219
	.uleb128 0xc
	.4byte	0x33
	.4byte	0x237
	.uleb128 0xd
	.4byte	0x114
	.uleb128 0xd
	.4byte	0x7f
	.uleb128 0xd
	.4byte	0x33
	.uleb128 0xd
	.4byte	0x33
	.byte	0
	.uleb128 0x4
	.4byte	.LASF42
	.byte	0x5
	.byte	0x1f
	.4byte	0x242
	.uleb128 0x6
	.byte	0x4
	.4byte	0x248
	.uleb128 0xc
	.4byte	0x33
	.4byte	0x257
	.uleb128 0xd
	.4byte	0x114
	.byte	0
	.uleb128 0x4
	.4byte	.LASF43
	.byte	0x5
	.byte	0x20
	.4byte	0x262
	.uleb128 0x6
	.byte	0x4
	.4byte	0x268
	.uleb128 0xc
	.4byte	0x33
	.4byte	0x27c
	.uleb128 0xd
	.4byte	0x114
	.uleb128 0xd
	.4byte	0x33
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.byte	0x1
	.byte	0x2b
	.4byte	0x291
	.uleb128 0xb
	.4byte	.LASF44
	.byte	0x1
	.byte	0x2b
	.4byte	0x11f
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x11f
	.uleb128 0xf
	.4byte	.LASF50
	.byte	0x1
	.byte	0x35
	.4byte	0xde
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x33e
	.uleb128 0x10
	.4byte	.LASF45
	.byte	0x1
	.byte	0x37
	.4byte	0xde
	.4byte	.LLST0
	.uleb128 0x11
	.4byte	.LASF46
	.4byte	0x34e
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$3414
	.uleb128 0x12
	.4byte	.LVL0
	.4byte	0x9b4
	.4byte	0x2e6
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x14
	.4byte	.LVL1
	.4byte	0x9bf
	.uleb128 0x15
	.4byte	.LVL2
	.4byte	0x9ca
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x13
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$3414
	.uleb128 0x13
	.uleb128 0x2
	.byte	0x71
	.sleb128 8
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	0x85
	.4byte	0x34e
	.uleb128 0x17
	.4byte	0x6f
	.byte	0x13
	.byte	0
	.uleb128 0x7
	.4byte	0x33e
	.uleb128 0x18
	.4byte	.LASF47
	.byte	0x1
	.byte	0x3d
	.4byte	0xd3
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x439
	.uleb128 0x19
	.4byte	.LASF45
	.byte	0x1
	.byte	0x3d
	.4byte	0xde
	.4byte	.LLST1
	.uleb128 0x1a
	.string	"t"
	.byte	0x1
	.byte	0x3d
	.4byte	0x114
	.4byte	.LLST2
	.uleb128 0x19
	.4byte	.LASF28
	.byte	0x1
	.byte	0x3d
	.4byte	0x8c
	.4byte	.LLST3
	.uleb128 0x11
	.4byte	.LASF46
	.4byte	0x449
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$3420
	.uleb128 0x12
	.4byte	.LVL5
	.4byte	0x9d5
	.4byte	0x3ba
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.4byte	.LVL6
	.4byte	0x9b4
	.4byte	0x3cd
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x14
	.4byte	.LVL7
	.4byte	0x9bf
	.uleb128 0x12
	.4byte	.LVL9
	.4byte	0x9ca
	.4byte	0x428
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x13
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$3420
	.uleb128 0x13
	.uleb128 0x2
	.byte	0x71
	.sleb128 8
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0
	.uleb128 0x15
	.4byte	.LVL11
	.4byte	0x9e0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	0x85
	.4byte	0x449
	.uleb128 0x17
	.4byte	0x6f
	.byte	0x12
	.byte	0
	.uleb128 0x7
	.4byte	0x439
	.uleb128 0x18
	.4byte	.LASF48
	.byte	0x1
	.byte	0x49
	.4byte	0x114
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4a3
	.uleb128 0x19
	.4byte	.LASF45
	.byte	0x1
	.byte	0x49
	.4byte	0xde
	.4byte	.LLST4
	.uleb128 0x1b
	.4byte	.LASF28
	.byte	0x1
	.byte	0x49
	.4byte	0x8c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x10
	.4byte	.LASF49
	.byte	0x1
	.byte	0x51
	.4byte	0x114
	.4byte	.LLST5
	.uleb128 0x15
	.4byte	.LVL22
	.4byte	0x9eb
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF51
	.byte	0x1
	.byte	0x71
	.4byte	0x114
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x549
	.uleb128 0x1c
	.string	"t"
	.byte	0x1
	.byte	0x73
	.4byte	0x114
	.4byte	.LLST6
	.uleb128 0x11
	.4byte	.LASF46
	.4byte	0x559
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$3443
	.uleb128 0x12
	.4byte	.LVL26
	.4byte	0x9b4
	.4byte	0x4f1
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x34
	.byte	0
	.uleb128 0x14
	.4byte	.LVL27
	.4byte	0x9bf
	.uleb128 0x15
	.4byte	.LVL28
	.4byte	0x9ca
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x13
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$3443
	.uleb128 0x13
	.uleb128 0x2
	.byte	0x71
	.sleb128 8
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	0x85
	.4byte	0x559
	.uleb128 0x17
	.4byte	0x6f
	.byte	0xe
	.byte	0
	.uleb128 0x7
	.4byte	0x549
	.uleb128 0x18
	.4byte	.LASF52
	.byte	0x1
	.byte	0x78
	.4byte	0xd3
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x59e
	.uleb128 0x1a
	.string	"t"
	.byte	0x1
	.byte	0x78
	.4byte	0x114
	.4byte	.LLST7
	.uleb128 0x14
	.4byte	.LVL31
	.4byte	0x9f6
	.uleb128 0x15
	.4byte	.LVL32
	.4byte	0x9f6
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF53
	.byte	0x1
	.byte	0x61
	.4byte	0xd3
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x605
	.uleb128 0x19
	.4byte	.LASF45
	.byte	0x1
	.byte	0x61
	.4byte	0xde
	.4byte	.LLST8
	.uleb128 0x10
	.4byte	.LASF49
	.byte	0x1
	.byte	0x63
	.4byte	0x114
	.4byte	.LLST9
	.uleb128 0x1c
	.string	"tmp"
	.byte	0x1
	.byte	0x64
	.4byte	0x114
	.4byte	.LLST10
	.uleb128 0x1d
	.4byte	.LVL37
	.4byte	0x5f4
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL38
	.4byte	0x55e
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF54
	.byte	0x1
	.byte	0x5a
	.4byte	0xd3
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x652
	.uleb128 0x19
	.4byte	.LASF45
	.byte	0x1
	.byte	0x5a
	.4byte	0xde
	.4byte	.LLST11
	.uleb128 0x12
	.4byte	.LVL42
	.4byte	0x59e
	.4byte	0x641
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL43
	.4byte	0x9f6
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF55
	.byte	0x1
	.byte	0x81
	.4byte	0x33
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6ca
	.uleb128 0x1a
	.string	"t"
	.byte	0x1
	.byte	0x81
	.4byte	0x114
	.4byte	.LLST12
	.uleb128 0x1b
	.4byte	.LASF56
	.byte	0x1
	.byte	0x81
	.4byte	0x8c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1b
	.4byte	.LASF26
	.byte	0x1
	.byte	0x81
	.4byte	0x33
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1b
	.4byte	.LASF57
	.byte	0x1
	.byte	0x81
	.4byte	0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1e
	.string	"ret"
	.byte	0x1
	.byte	0x83
	.4byte	0x33
	.sleb128 -1
	.uleb128 0x1f
	.4byte	.LVL47
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF58
	.byte	0x1
	.byte	0x8a
	.4byte	0x33
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x736
	.uleb128 0x1a
	.string	"t"
	.byte	0x1
	.byte	0x8a
	.4byte	0x114
	.4byte	.LLST13
	.uleb128 0x1b
	.4byte	.LASF59
	.byte	0x1
	.byte	0x8a
	.4byte	0x7f
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x20
	.string	"len"
	.byte	0x1
	.byte	0x8a
	.4byte	0x33
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1b
	.4byte	.LASF57
	.byte	0x1
	.byte	0x8a
	.4byte	0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1f
	.4byte	.LVL54
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF60
	.byte	0x1
	.byte	0x92
	.4byte	0x33
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7a2
	.uleb128 0x1a
	.string	"t"
	.byte	0x1
	.byte	0x92
	.4byte	0x114
	.4byte	.LLST14
	.uleb128 0x1b
	.4byte	.LASF59
	.byte	0x1
	.byte	0x92
	.4byte	0x8c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x20
	.string	"len"
	.byte	0x1
	.byte	0x92
	.4byte	0x33
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1b
	.4byte	.LASF57
	.byte	0x1
	.byte	0x92
	.4byte	0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1f
	.4byte	.LVL61
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF61
	.byte	0x1
	.byte	0x9a
	.4byte	0x33
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7e8
	.uleb128 0x1a
	.string	"t"
	.byte	0x1
	.byte	0x9a
	.4byte	0x114
	.4byte	.LLST15
	.uleb128 0x1b
	.4byte	.LASF57
	.byte	0x1
	.byte	0x9a
	.4byte	0x33
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1f
	.4byte	.LVL68
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF62
	.byte	0x1
	.byte	0xa2
	.4byte	0x33
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x82e
	.uleb128 0x1a
	.string	"t"
	.byte	0x1
	.byte	0xa2
	.4byte	0x114
	.4byte	.LLST16
	.uleb128 0x1b
	.4byte	.LASF57
	.byte	0x1
	.byte	0xa2
	.4byte	0x33
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1f
	.4byte	.LVL75
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF63
	.byte	0x1
	.byte	0xaa
	.4byte	0x33
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x861
	.uleb128 0x1a
	.string	"t"
	.byte	0x1
	.byte	0xaa
	.4byte	0x114
	.4byte	.LLST17
	.uleb128 0x1f
	.4byte	.LVL82
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF64
	.byte	0x1
	.byte	0xb2
	.4byte	0x76
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x888
	.uleb128 0x1a
	.string	"t"
	.byte	0x1
	.byte	0xb2
	.4byte	0x114
	.4byte	.LLST18
	.byte	0
	.uleb128 0x18
	.4byte	.LASF65
	.byte	0x1
	.byte	0xba
	.4byte	0xd3
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8bc
	.uleb128 0x1a
	.string	"t"
	.byte	0x1
	.byte	0xba
	.4byte	0x114
	.4byte	.LLST19
	.uleb128 0x1b
	.4byte	.LASF30
	.byte	0x1
	.byte	0xba
	.4byte	0x76
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x18
	.4byte	.LASF66
	.byte	0x1
	.byte	0xc3
	.4byte	0xd3
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x942
	.uleb128 0x1a
	.string	"t"
	.byte	0x1
	.byte	0xc3
	.4byte	0x114
	.4byte	.LLST20
	.uleb128 0x19
	.4byte	.LASF31
	.byte	0x1
	.byte	0xc4
	.4byte	0x1ce
	.4byte	.LLST21
	.uleb128 0x1b
	.4byte	.LASF32
	.byte	0x1
	.byte	0xc5
	.4byte	0x208
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1b
	.4byte	.LASF33
	.byte	0x1
	.byte	0xc6
	.4byte	0x1fd
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1b
	.4byte	.LASF34
	.byte	0x1
	.byte	0xc7
	.4byte	0x237
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x1b
	.4byte	.LASF35
	.byte	0x1
	.byte	0xc8
	.4byte	0x257
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x1b
	.4byte	.LASF36
	.byte	0x1
	.byte	0xc9
	.4byte	0x257
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1b
	.4byte	.LASF37
	.byte	0x1
	.byte	0xca
	.4byte	0x237
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.byte	0
	.uleb128 0x18
	.4byte	.LASF67
	.byte	0x1
	.byte	0xd9
	.4byte	0x33
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x969
	.uleb128 0x1a
	.string	"t"
	.byte	0x1
	.byte	0xd9
	.4byte	0x114
	.4byte	.LLST22
	.byte	0
	.uleb128 0x18
	.4byte	.LASF68
	.byte	0x1
	.byte	0xe1
	.4byte	0xd3
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x99d
	.uleb128 0x1a
	.string	"t"
	.byte	0x1
	.byte	0xe1
	.4byte	0x114
	.4byte	.LLST23
	.uleb128 0x1b
	.4byte	.LASF26
	.byte	0x1
	.byte	0xe1
	.4byte	0x33
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x21
	.string	"TAG"
	.byte	0x1
	.byte	0x19
	.4byte	0x9af
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC2
	.byte	0x9f
	.uleb128 0x7
	.4byte	0x8c
	.uleb128 0x22
	.4byte	.LASF69
	.4byte	.LASF69
	.byte	0x6
	.byte	0x57
	.uleb128 0x22
	.4byte	.LASF70
	.4byte	.LASF70
	.byte	0x7
	.byte	0x57
	.uleb128 0x22
	.4byte	.LASF71
	.4byte	.LASF71
	.byte	0x7
	.byte	0x6b
	.uleb128 0x22
	.4byte	.LASF72
	.4byte	.LASF72
	.byte	0x8
	.byte	0x21
	.uleb128 0x22
	.4byte	.LASF73
	.4byte	.LASF73
	.byte	0x8
	.byte	0x1e
	.uleb128 0x22
	.4byte	.LASF74
	.4byte	.LASF74
	.byte	0x8
	.byte	0x49
	.uleb128 0x22
	.4byte	.LASF75
	.4byte	.LASF75
	.byte	0x6
	.byte	0x5a
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
	.uleb128 0x9
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x3f
	.uleb128 0x19
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
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.4byte	.LVL1-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL3
	.4byte	.LFE0
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL4
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL8
	.4byte	.LVL10
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL10
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
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL4
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x2
	.byte	0x78
	.sleb128 0
	.4byte	.LVL14
	.4byte	.LVL16
	.2byte	0x3
	.byte	0x73
	.sleb128 -48
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL4
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL12
	.4byte	.LVL16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL18
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
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL21
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL26
	.4byte	.LVL27-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL29
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL30
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL33
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL34
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL40
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL35
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL39
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL36
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL41
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL44
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL45
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
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL52
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
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
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL60
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
	.4byte	.LVL65
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL65
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL66
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL67
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL69
	.4byte	.LVL70
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL70
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
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL73
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL74
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
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL81
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
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL88
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
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL91
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
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
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL96
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL98
	.4byte	.LVL99
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL99
	.4byte	.LVL100
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL100
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL96
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL97
	.4byte	.LVL98
	.2byte	0x2
	.byte	0x72
	.sleb128 20
	.4byte	.LVL98
	.4byte	.LVL99
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x23
	.uleb128 0x14
	.4byte	.LVL99
	.4byte	.LFE15
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST22:
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
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
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
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0xa4
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
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
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
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
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
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB3
	.4byte	.LFE3
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
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF41:
	.string	"io_read_func"
.LASF62:
	.string	"transport_poll_write"
.LASF55:
	.string	"transport_connect"
.LASF60:
	.string	"transport_write"
.LASF53:
	.string	"transport_list_clean"
.LASF27:
	.string	"socket"
.LASF28:
	.string	"scheme"
.LASF6:
	.string	"long long unsigned int"
.LASF43:
	.string	"poll_func"
.LASF38:
	.string	"next"
.LASF65:
	.string	"transport_set_context_data"
.LASF52:
	.string	"transport_destroy"
.LASF17:
	.string	"ESP_LOG_DEBUG"
.LASF5:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF58:
	.string	"transport_read"
.LASF7:
	.string	"long int"
.LASF71:
	.string	"esp_log_write"
.LASF77:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/esp_http_client/lib/transport.c"
.LASF67:
	.string	"transport_get_default_port"
.LASF26:
	.string	"port"
.LASF32:
	.string	"_read"
.LASF56:
	.string	"host"
.LASF0:
	.string	"unsigned int"
.LASF72:
	.string	"strlen"
.LASF34:
	.string	"_close"
.LASF9:
	.string	"long unsigned int"
.LASF46:
	.string	"__FUNCTION__"
.LASF39:
	.string	"connect_func"
.LASF30:
	.string	"data"
.LASF1:
	.string	"short unsigned int"
.LASF74:
	.string	"strcasecmp"
.LASF24:
	.string	"transport_list_t"
.LASF73:
	.string	"strcpy"
.LASF49:
	.string	"item"
.LASF25:
	.string	"transport_item_t"
.LASF33:
	.string	"_write"
.LASF16:
	.string	"ESP_LOG_INFO"
.LASF8:
	.string	"sizetype"
.LASF50:
	.string	"transport_list_init"
.LASF35:
	.string	"_poll_read"
.LASF63:
	.string	"transport_close"
.LASF31:
	.string	"_connect"
.LASF21:
	.string	"stqh_first"
.LASF51:
	.string	"transport_init"
.LASF57:
	.string	"timeout_ms"
.LASF12:
	.string	"int32_t"
.LASF3:
	.string	"unsigned char"
.LASF61:
	.string	"transport_poll_read"
.LASF76:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF4:
	.string	"short int"
.LASF37:
	.string	"_destroy"
.LASF70:
	.string	"esp_log_timestamp"
.LASF14:
	.string	"ESP_LOG_ERROR"
.LASF59:
	.string	"buffer"
.LASF68:
	.string	"transport_set_default_port"
.LASF10:
	.string	"char"
.LASF18:
	.string	"ESP_LOG_VERBOSE"
.LASF22:
	.string	"stqh_last"
.LASF13:
	.string	"ESP_LOG_NONE"
.LASF11:
	.string	"__int32_t"
.LASF66:
	.string	"transport_set_func"
.LASF48:
	.string	"transport_list_get_transport"
.LASF54:
	.string	"transport_list_destroy"
.LASF29:
	.string	"context"
.LASF75:
	.string	"free"
.LASF44:
	.string	"stqe_next"
.LASF47:
	.string	"transport_list_add"
.LASF42:
	.string	"trans_func"
.LASF20:
	.string	"transport_list_handle_t"
.LASF15:
	.string	"ESP_LOG_WARN"
.LASF23:
	.string	"transport_handle_t"
.LASF19:
	.string	"esp_err_t"
.LASF69:
	.string	"calloc"
.LASF40:
	.string	"io_func"
.LASF36:
	.string	"_poll_write"
.LASF64:
	.string	"transport_get_context_data"
.LASF45:
	.string	"list"
.LASF78:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\esp_http_client"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
