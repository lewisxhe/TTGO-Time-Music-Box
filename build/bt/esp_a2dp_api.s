	.file	"esp_a2dp_api.c"
	.text
.Ltext0:
	.section	.text.esp_a2d_sink_init,"ax",@progbits
	.align	4
	.global	esp_a2d_sink_init
	.type	esp_a2d_sink_init, @function
esp_a2d_sink_init:
.LFB26:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/api/esp_a2dp_api.c"
	.loc 1 27 0
	entry	sp, 48
.LCFI0:
	.loc 1 28 0
	call8	esp_bluedroid_get_status
.LVL0:
	bnei	a10, 2, .L3
	.loc 1 34 0
	movi.n	a2, 0
	s8i	a2, sp, 0
	.loc 1 35 0
	movi.n	a8, 0xc
	s8i	a8, sp, 2
	.loc 1 36 0
	s8i	a2, sp, 3
	.loc 1 39 0
	movi.n	a13, 0
	mov.n	a12, a13
	mov.n	a11, a13
	mov.n	a10, sp
	call8	btc_transfer_context
.LVL1:
	.loc 1 40 0
	bnez.n	a10, .L4
	movi.n	a2, 0
	retw.n
.LVL2:
.L3:
	.loc 1 29 0
	movi	a2, 0x103
	retw.n
.LVL3:
.L4:
	.loc 1 40 0
	movi.n	a2, -1
	.loc 1 41 0
	retw.n
.LFE26:
	.size	esp_a2d_sink_init, .-esp_a2d_sink_init
	.section	.text.esp_a2d_sink_deinit,"ax",@progbits
	.align	4
	.global	esp_a2d_sink_deinit
	.type	esp_a2d_sink_deinit, @function
esp_a2d_sink_deinit:
.LFB27:
	.loc 1 44 0
	entry	sp, 48
.LCFI1:
	.loc 1 45 0
	call8	esp_bluedroid_get_status
.LVL4:
	bnei	a10, 2, .L7
	.loc 1 51 0
	movi.n	a2, 0
	s8i	a2, sp, 0
	.loc 1 52 0
	movi.n	a2, 0xc
	s8i	a2, sp, 2
	.loc 1 53 0
	movi.n	a2, 1
	s8i	a2, sp, 3
	.loc 1 56 0
	movi.n	a13, 0
	mov.n	a12, a13
	mov.n	a11, a13
	mov.n	a10, sp
	call8	btc_transfer_context
.LVL5:
	.loc 1 57 0
	bnez.n	a10, .L8
	movi.n	a2, 0
	retw.n
.LVL6:
.L7:
	.loc 1 46 0
	movi	a2, 0x103
	retw.n
.LVL7:
.L8:
	.loc 1 57 0
	movi.n	a2, -1
	.loc 1 58 0
	retw.n
.LFE27:
	.size	esp_a2d_sink_deinit, .-esp_a2d_sink_deinit
	.section	.text.esp_a2d_sink_register_data_callback,"ax",@progbits
	.align	4
	.global	esp_a2d_sink_register_data_callback
	.type	esp_a2d_sink_register_data_callback, @function
esp_a2d_sink_register_data_callback:
.LFB28:
	.loc 1 61 0
.LVL8:
	entry	sp, 48
.LCFI2:
	.loc 1 62 0
	call8	esp_bluedroid_get_status
.LVL9:
	bnei	a10, 2, .L11
	.loc 1 67 0
	movi.n	a8, 0
	s8i	a8, sp, 0
	.loc 1 68 0
	movi.n	a8, 0xc
	s8i	a8, sp, 2
	.loc 1 69 0
	movi.n	a8, 4
	s8i	a8, sp, 3
	.loc 1 72 0
	movi.n	a13, 0
	s32i.n	a13, sp, 12
	.loc 1 73 0
	s32i.n	a2, sp, 8
	.loc 1 76 0
	movi.n	a12, 8
	add.n	a11, sp, a12
	mov.n	a10, sp
	call8	btc_transfer_context
.LVL10:
	.loc 1 77 0
	bnez.n	a10, .L12
	movi.n	a2, 0
.LVL11:
	retw.n
.LVL12:
.L11:
	.loc 1 63 0
	movi	a2, 0x103
.LVL13:
	retw.n
.LVL14:
.L12:
	.loc 1 77 0
	movi.n	a2, -1
.LVL15:
	.loc 1 78 0
	retw.n
.LFE28:
	.size	esp_a2d_sink_register_data_callback, .-esp_a2d_sink_register_data_callback
	.section	.text.esp_a2d_sink_connect,"ax",@progbits
	.align	4
	.global	esp_a2d_sink_connect
	.type	esp_a2d_sink_connect, @function
esp_a2d_sink_connect:
.LFB29:
	.loc 1 81 0
.LVL16:
	entry	sp, 48
.LCFI3:
	.loc 1 82 0
	call8	esp_bluedroid_get_status
.LVL17:
	bnei	a10, 2, .L15
	.loc 1 90 0
	movi.n	a3, 0
	s8i	a3, sp, 8
	.loc 1 91 0
	movi.n	a3, 0xc
	s8i	a3, sp, 10
	.loc 1 92 0
	movi.n	a3, 2
	s8i	a3, sp, 11
	.loc 1 94 0
	movi.n	a3, 0
	s32i.n	a3, sp, 0
	s32i.n	a3, sp, 4
	.loc 1 97 0
	movi.n	a12, 6
	mov.n	a11, a2
	mov.n	a10, sp
	call8	memcpy
.LVL18:
	.loc 1 98 0
	mov.n	a13, a3
	movi.n	a12, 8
	mov.n	a11, sp
	add.n	a10, sp, a12
	call8	btc_transfer_context
.LVL19:
	.loc 1 99 0
	bne	a10, a3, .L16
	mov.n	a2, a3
.LVL20:
	retw.n
.LVL21:
.L15:
	.loc 1 83 0
	movi	a2, 0x103
.LVL22:
	retw.n
.LVL23:
.L16:
	.loc 1 99 0
	movi.n	a2, -1
.LVL24:
	.loc 1 100 0
	retw.n
.LFE29:
	.size	esp_a2d_sink_connect, .-esp_a2d_sink_connect
	.section	.text.esp_a2d_sink_disconnect,"ax",@progbits
	.align	4
	.global	esp_a2d_sink_disconnect
	.type	esp_a2d_sink_disconnect, @function
esp_a2d_sink_disconnect:
.LFB30:
	.loc 1 103 0
.LVL25:
	entry	sp, 48
.LCFI4:
	.loc 1 104 0
	call8	esp_bluedroid_get_status
.LVL26:
	bnei	a10, 2, .L19
	.loc 1 111 0
	movi.n	a2, 0
.LVL27:
	s8i	a2, sp, 0
	.loc 1 112 0
	movi.n	a2, 0xc
	s8i	a2, sp, 2
	.loc 1 113 0
	movi.n	a2, 3
	s8i	a2, sp, 3
	.loc 1 116 0
	movi.n	a13, 0
	mov.n	a12, a13
	mov.n	a11, a13
	mov.n	a10, sp
	call8	btc_transfer_context
.LVL28:
	.loc 1 117 0
	bnez.n	a10, .L20
	movi.n	a2, 0
	retw.n
.LVL29:
.L19:
	.loc 1 105 0
	movi	a2, 0x103
.LVL30:
	retw.n
.LVL31:
.L20:
	.loc 1 117 0
	movi.n	a2, -1
	.loc 1 118 0
	retw.n
.LFE30:
	.size	esp_a2d_sink_disconnect, .-esp_a2d_sink_disconnect
	.section	.text.esp_a2d_register_callback,"ax",@progbits
	.align	4
	.global	esp_a2d_register_callback
	.type	esp_a2d_register_callback, @function
esp_a2d_register_callback:
.LFB31:
	.loc 1 123 0
.LVL32:
	entry	sp, 32
.LCFI5:
	.loc 1 124 0
	call8	esp_bluedroid_get_status
.LVL33:
	bnei	a10, 2, .L23
	.loc 1 128 0
	beqz.n	a2, .L24
	.loc 1 132 0
	mov.n	a11, a2
	movi.n	a10, 0xc
	call8	btc_profile_cb_set
.LVL34:
	.loc 1 133 0
	movi.n	a2, 0
.LVL35:
	retw.n
.LVL36:
.L23:
	.loc 1 125 0
	movi	a2, 0x103
.LVL37:
	retw.n
.LVL38:
.L24:
	.loc 1 129 0
	movi.n	a2, -1
.LVL39:
	.loc 1 134 0
	retw.n
.LFE31:
	.size	esp_a2d_register_callback, .-esp_a2d_register_callback
	.section	.text.esp_a2d_media_ctrl,"ax",@progbits
	.align	4
	.global	esp_a2d_media_ctrl
	.type	esp_a2d_media_ctrl, @function
esp_a2d_media_ctrl:
.LFB32:
	.loc 1 137 0
.LVL40:
	entry	sp, 48
.LCFI6:
	.loc 1 138 0
	call8	esp_bluedroid_get_status
.LVL41:
	bnei	a10, 2, .L27
	.loc 1 146 0
	movi.n	a8, 0
	s8i	a8, sp, 8
	.loc 1 147 0
	movi.n	a8, 0xc
	s8i	a8, sp, 10
	.loc 1 148 0
	movi.n	a8, 0xa
	s8i	a8, sp, 11
	.loc 1 150 0
	movi.n	a13, 0
	s32i.n	a13, sp, 4
	.loc 1 153 0
	s32i.n	a2, sp, 0
	.loc 1 154 0
	movi.n	a12, 8
	mov.n	a11, sp
	add.n	a10, sp, a12
	call8	btc_transfer_context
.LVL42:
	.loc 1 155 0
	bnez.n	a10, .L28
	movi.n	a2, 0
.LVL43:
	retw.n
.LVL44:
.L27:
	.loc 1 139 0
	movi	a2, 0x103
.LVL45:
	retw.n
.LVL46:
.L28:
	.loc 1 155 0
	movi.n	a2, -1
.LVL47:
	.loc 1 156 0
	retw.n
.LFE32:
	.size	esp_a2d_media_ctrl, .-esp_a2d_media_ctrl
	.section	.text.esp_a2d_source_init,"ax",@progbits
	.align	4
	.global	esp_a2d_source_init
	.type	esp_a2d_source_init, @function
esp_a2d_source_init:
.LFB33:
	.loc 1 160 0
	entry	sp, 48
.LCFI7:
	.loc 1 161 0
	call8	esp_bluedroid_get_status
.LVL48:
	bnei	a10, 2, .L31
	.loc 1 167 0
	movi.n	a2, 0
	s8i	a2, sp, 0
	.loc 1 168 0
	movi.n	a2, 0xc
	s8i	a2, sp, 2
	.loc 1 169 0
	movi.n	a2, 5
	s8i	a2, sp, 3
	.loc 1 172 0
	movi.n	a13, 0
	mov.n	a12, a13
	mov.n	a11, a13
	mov.n	a10, sp
	call8	btc_transfer_context
.LVL49:
	.loc 1 173 0
	bnez.n	a10, .L32
	movi.n	a2, 0
	retw.n
.LVL50:
.L31:
	.loc 1 162 0
	movi	a2, 0x103
	retw.n
.LVL51:
.L32:
	.loc 1 173 0
	movi.n	a2, -1
	.loc 1 174 0
	retw.n
.LFE33:
	.size	esp_a2d_source_init, .-esp_a2d_source_init
	.section	.text.esp_a2d_source_deinit,"ax",@progbits
	.align	4
	.global	esp_a2d_source_deinit
	.type	esp_a2d_source_deinit, @function
esp_a2d_source_deinit:
.LFB34:
	.loc 1 177 0
	entry	sp, 48
.LCFI8:
	.loc 1 178 0
	call8	esp_bluedroid_get_status
.LVL52:
	bnei	a10, 2, .L35
	.loc 1 184 0
	movi.n	a2, 0
	s8i	a2, sp, 0
	.loc 1 185 0
	movi.n	a2, 0xc
	s8i	a2, sp, 2
	.loc 1 186 0
	movi.n	a2, 6
	s8i	a2, sp, 3
	.loc 1 189 0
	movi.n	a13, 0
	mov.n	a12, a13
	mov.n	a11, a13
	mov.n	a10, sp
	call8	btc_transfer_context
.LVL53:
	.loc 1 190 0
	bnez.n	a10, .L36
	movi.n	a2, 0
	retw.n
.LVL54:
.L35:
	.loc 1 179 0
	movi	a2, 0x103
	retw.n
.LVL55:
.L36:
	.loc 1 190 0
	movi.n	a2, -1
	.loc 1 191 0
	retw.n
.LFE34:
	.size	esp_a2d_source_deinit, .-esp_a2d_source_deinit
	.section	.text.esp_a2d_source_connect,"ax",@progbits
	.align	4
	.global	esp_a2d_source_connect
	.type	esp_a2d_source_connect, @function
esp_a2d_source_connect:
.LFB35:
	.loc 1 194 0
.LVL56:
	entry	sp, 48
.LCFI9:
	.loc 1 195 0
	call8	esp_bluedroid_get_status
.LVL57:
	bnei	a10, 2, .L39
	.loc 1 203 0
	movi.n	a3, 0
	s8i	a3, sp, 8
	.loc 1 204 0
	movi.n	a3, 0xc
	s8i	a3, sp, 10
	.loc 1 205 0
	movi.n	a3, 7
	s8i	a3, sp, 11
	.loc 1 207 0
	movi.n	a3, 0
	s32i.n	a3, sp, 0
	s32i.n	a3, sp, 4
	.loc 1 210 0
	movi.n	a12, 6
	mov.n	a11, a2
	mov.n	a10, sp
	call8	memcpy
.LVL58:
	.loc 1 211 0
	mov.n	a13, a3
	movi.n	a12, 8
	mov.n	a11, sp
	add.n	a10, sp, a12
	call8	btc_transfer_context
.LVL59:
	.loc 1 212 0
	bne	a10, a3, .L40
	mov.n	a2, a3
.LVL60:
	retw.n
.LVL61:
.L39:
	.loc 1 196 0
	movi	a2, 0x103
.LVL62:
	retw.n
.LVL63:
.L40:
	.loc 1 212 0
	movi.n	a2, -1
.LVL64:
	.loc 1 213 0
	retw.n
.LFE35:
	.size	esp_a2d_source_connect, .-esp_a2d_source_connect
	.section	.text.esp_a2d_source_disconnect,"ax",@progbits
	.align	4
	.global	esp_a2d_source_disconnect
	.type	esp_a2d_source_disconnect, @function
esp_a2d_source_disconnect:
.LFB36:
	.loc 1 216 0
.LVL65:
	entry	sp, 48
.LCFI10:
	.loc 1 217 0
	call8	esp_bluedroid_get_status
.LVL66:
	bnei	a10, 2, .L43
	.loc 1 224 0
	movi.n	a2, 0
.LVL67:
	s8i	a2, sp, 0
	.loc 1 225 0
	movi.n	a2, 0xc
	s8i	a2, sp, 2
	.loc 1 226 0
	movi.n	a2, 8
	s8i	a2, sp, 3
	.loc 1 229 0
	movi.n	a13, 0
	mov.n	a12, a13
	mov.n	a11, a13
	mov.n	a10, sp
	call8	btc_transfer_context
.LVL68:
	.loc 1 230 0
	bnez.n	a10, .L44
	movi.n	a2, 0
	retw.n
.LVL69:
.L43:
	.loc 1 218 0
	movi	a2, 0x103
.LVL70:
	retw.n
.LVL71:
.L44:
	.loc 1 230 0
	movi.n	a2, -1
	.loc 1 231 0
	retw.n
.LFE36:
	.size	esp_a2d_source_disconnect, .-esp_a2d_source_disconnect
	.section	.text.esp_a2d_source_register_data_callback,"ax",@progbits
	.align	4
	.global	esp_a2d_source_register_data_callback
	.type	esp_a2d_source_register_data_callback, @function
esp_a2d_source_register_data_callback:
.LFB37:
	.loc 1 234 0
.LVL72:
	entry	sp, 48
.LCFI11:
	.loc 1 235 0
	call8	esp_bluedroid_get_status
.LVL73:
	bnei	a10, 2, .L47
	.loc 1 240 0
	movi.n	a8, 0
	s8i	a8, sp, 0
	.loc 1 241 0
	movi.n	a8, 0xc
	s8i	a8, sp, 2
	.loc 1 242 0
	movi.n	a8, 9
	s8i	a8, sp, 3
	.loc 1 245 0
	movi.n	a13, 0
	s32i.n	a13, sp, 12
	.loc 1 246 0
	s32i.n	a2, sp, 8
	.loc 1 249 0
	movi.n	a12, 8
	add.n	a11, sp, a12
	mov.n	a10, sp
	call8	btc_transfer_context
.LVL74:
	.loc 1 250 0
	bnez.n	a10, .L48
	movi.n	a2, 0
.LVL75:
	retw.n
.LVL76:
.L47:
	.loc 1 236 0
	movi	a2, 0x103
.LVL77:
	retw.n
.LVL78:
.L48:
	.loc 1 250 0
	movi.n	a2, -1
.LVL79:
	.loc 1 251 0
	retw.n
.LFE37:
	.size	esp_a2d_source_register_data_callback, .-esp_a2d_source_register_data_callback
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
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI0-.LFB26
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI1-.LFB27
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI2-.LFB28
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI3-.LFB29
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI4-.LFB30
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI5-.LFB31
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI6-.LFB32
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI7-.LFB33
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI8-.LFB34
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x4
	.4byte	.LCFI9-.LFB35
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x4
	.4byte	.LCFI10-.LFB36
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.byte	0x4
	.4byte	.LCFI11-.LFB37
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE22:
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/bt_types.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_err.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/api/include/api/esp_bt_defs.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/api/include/api/esp_a2dp_api.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/api/include/api/esp_bt_main.h"
	.file 9 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/common/include/common/bt_defs.h"
	.file 10 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/btc/include/btc/btc_task.h"
	.file 11 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/btc/profile/std/include/btc_av.h"
	.file 12 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/btc/include/btc/btc_manage.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xbfd
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF151
	.byte	0xc
	.4byte	.LASF152
	.4byte	.LASF153
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x2
	.byte	0x12
	.4byte	0x37
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x19
	.4byte	0x57
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x1a
	.4byte	0x69
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x3
	.byte	0x15
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x3
	.byte	0x2c
	.4byte	0x4c
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x2d
	.4byte	0x5e
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x4
	.byte	0x21
	.4byte	0x7e
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF14
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0x5
	.4byte	0x9f
	.4byte	0xc8
	.uleb128 0x6
	.4byte	0xb1
	.byte	0x5
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF16
	.uleb128 0x7
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF17
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF18
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x5
	.byte	0x18
	.4byte	0x89
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x6
	.byte	0x69
	.4byte	0xf5
	.uleb128 0x5
	.4byte	0x7e
	.4byte	0x105
	.uleb128 0x6
	.4byte	0xb1
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x7
	.byte	0x20
	.4byte	0x7e
	.uleb128 0x8
	.byte	0x7
	.byte	0x7
	.byte	0x29
	.4byte	0x145
	.uleb128 0x9
	.string	"sbc"
	.byte	0x7
	.byte	0x2a
	.4byte	0x145
	.uleb128 0x9
	.string	"m12"
	.byte	0x7
	.byte	0x2b
	.4byte	0x145
	.uleb128 0x9
	.string	"m24"
	.byte	0x7
	.byte	0x2c
	.4byte	0xf5
	.uleb128 0xa
	.4byte	.LASF22
	.byte	0x7
	.byte	0x2d
	.4byte	0x155
	.byte	0
	.uleb128 0x5
	.4byte	0x7e
	.4byte	0x155
	.uleb128 0x6
	.4byte	0xb1
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.4byte	0x7e
	.4byte	0x165
	.uleb128 0x6
	.4byte	0xb1
	.byte	0x6
	.byte	0
	.uleb128 0xb
	.byte	0x8
	.byte	0x7
	.byte	0x23
	.4byte	0x186
	.uleb128 0xc
	.4byte	.LASF23
	.byte	0x7
	.byte	0x24
	.4byte	0x105
	.byte	0
	.uleb128 0xd
	.string	"cie"
	.byte	0x7
	.byte	0x2e
	.4byte	0x110
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x7
	.byte	0x2f
	.4byte	0x165
	.uleb128 0xe
	.byte	0x4
	.4byte	0x69
	.byte	0x7
	.byte	0x32
	.4byte	0x1b6
	.uleb128 0xf
	.4byte	.LASF25
	.byte	0
	.uleb128 0xf
	.4byte	.LASF26
	.byte	0x1
	.uleb128 0xf
	.4byte	.LASF27
	.byte	0x2
	.uleb128 0xf
	.4byte	.LASF28
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF29
	.byte	0x7
	.byte	0x37
	.4byte	0x191
	.uleb128 0xe
	.byte	0x4
	.4byte	0x69
	.byte	0x7
	.byte	0x3a
	.4byte	0x1da
	.uleb128 0xf
	.4byte	.LASF30
	.byte	0
	.uleb128 0xf
	.4byte	.LASF31
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF32
	.byte	0x7
	.byte	0x3d
	.4byte	0x1c1
	.uleb128 0xe
	.byte	0x4
	.4byte	0x69
	.byte	0x7
	.byte	0x40
	.4byte	0x204
	.uleb128 0xf
	.4byte	.LASF33
	.byte	0
	.uleb128 0xf
	.4byte	.LASF34
	.byte	0x1
	.uleb128 0xf
	.4byte	.LASF35
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF36
	.byte	0x7
	.byte	0x44
	.4byte	0x1e5
	.uleb128 0xe
	.byte	0x4
	.4byte	0x69
	.byte	0x7
	.byte	0x47
	.4byte	0x22e
	.uleb128 0xf
	.4byte	.LASF37
	.byte	0
	.uleb128 0xf
	.4byte	.LASF38
	.byte	0x1
	.uleb128 0xf
	.4byte	.LASF39
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF40
	.byte	0x7
	.byte	0x4b
	.4byte	0x20f
	.uleb128 0xe
	.byte	0x4
	.4byte	0x69
	.byte	0x7
	.byte	0x4e
	.4byte	0x264
	.uleb128 0xf
	.4byte	.LASF41
	.byte	0
	.uleb128 0xf
	.4byte	.LASF42
	.byte	0x1
	.uleb128 0xf
	.4byte	.LASF43
	.byte	0x2
	.uleb128 0xf
	.4byte	.LASF44
	.byte	0x3
	.uleb128 0xf
	.4byte	.LASF45
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF46
	.byte	0x7
	.byte	0x54
	.4byte	0x239
	.uleb128 0xe
	.byte	0x4
	.4byte	0x69
	.byte	0x7
	.byte	0x57
	.4byte	0x294
	.uleb128 0xf
	.4byte	.LASF47
	.byte	0
	.uleb128 0xf
	.4byte	.LASF48
	.byte	0x1
	.uleb128 0xf
	.4byte	.LASF49
	.byte	0x2
	.uleb128 0xf
	.4byte	.LASF50
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF51
	.byte	0x7
	.byte	0x5c
	.4byte	0x26f
	.uleb128 0x10
	.4byte	.LASF55
	.byte	0x10
	.byte	0x7
	.byte	0x63
	.4byte	0x2d0
	.uleb128 0xc
	.4byte	.LASF52
	.byte	0x7
	.byte	0x64
	.4byte	0x1b6
	.byte	0
	.uleb128 0xc
	.4byte	.LASF53
	.byte	0x7
	.byte	0x65
	.4byte	0xea
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF54
	.byte	0x7
	.byte	0x66
	.4byte	0x1da
	.byte	0xc
	.byte	0
	.uleb128 0x10
	.4byte	.LASF56
	.byte	0xc
	.byte	0x7
	.byte	0x6c
	.4byte	0x2f5
	.uleb128 0xc
	.4byte	.LASF52
	.byte	0x7
	.byte	0x6d
	.4byte	0x204
	.byte	0
	.uleb128 0xc
	.4byte	.LASF53
	.byte	0x7
	.byte	0x6e
	.4byte	0xea
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.4byte	.LASF57
	.byte	0xe
	.byte	0x7
	.byte	0x74
	.4byte	0x31a
	.uleb128 0xc
	.4byte	.LASF53
	.byte	0x7
	.byte	0x75
	.4byte	0xea
	.byte	0
	.uleb128 0xd
	.string	"mcc"
	.byte	0x7
	.byte	0x76
	.4byte	0x186
	.byte	0x6
	.byte	0
	.uleb128 0x10
	.4byte	.LASF58
	.byte	0x8
	.byte	0x7
	.byte	0x7c
	.4byte	0x33f
	.uleb128 0xd
	.string	"cmd"
	.byte	0x7
	.byte	0x7d
	.4byte	0x264
	.byte	0
	.uleb128 0xc
	.4byte	.LASF59
	.byte	0x7
	.byte	0x7e
	.4byte	0x22e
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.byte	0x10
	.byte	0x7
	.byte	0x5f
	.4byte	0x374
	.uleb128 0xa
	.4byte	.LASF60
	.byte	0x7
	.byte	0x67
	.4byte	0x29f
	.uleb128 0xa
	.4byte	.LASF61
	.byte	0x7
	.byte	0x6f
	.4byte	0x2d0
	.uleb128 0xa
	.4byte	.LASF62
	.byte	0x7
	.byte	0x77
	.4byte	0x2f5
	.uleb128 0xa
	.4byte	.LASF63
	.byte	0x7
	.byte	0x7f
	.4byte	0x31a
	.byte	0
	.uleb128 0x3
	.4byte	.LASF64
	.byte	0x7
	.byte	0x80
	.4byte	0x33f
	.uleb128 0x3
	.4byte	.LASF65
	.byte	0x7
	.byte	0x89
	.4byte	0x38a
	.uleb128 0x11
	.byte	0x4
	.4byte	0x390
	.uleb128 0x12
	.4byte	0x3a0
	.uleb128 0x13
	.4byte	0x294
	.uleb128 0x13
	.4byte	0x3a0
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.4byte	0x374
	.uleb128 0x3
	.4byte	.LASF66
	.byte	0x7
	.byte	0x91
	.4byte	0x3b1
	.uleb128 0x11
	.byte	0x4
	.4byte	0x3b7
	.uleb128 0x12
	.4byte	0x3c7
	.uleb128 0x13
	.4byte	0x3c7
	.uleb128 0x13
	.4byte	0x94
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.4byte	0x3cd
	.uleb128 0x14
	.4byte	0x7e
	.uleb128 0x3
	.4byte	.LASF67
	.byte	0x7
	.byte	0x9e
	.4byte	0x3dd
	.uleb128 0x11
	.byte	0x4
	.4byte	0x3e3
	.uleb128 0x15
	.4byte	0x89
	.4byte	0x3f7
	.uleb128 0x13
	.4byte	0x3f7
	.uleb128 0x13
	.4byte	0x89
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.4byte	0x7e
	.uleb128 0xe
	.byte	0x4
	.4byte	0x69
	.byte	0x8
	.byte	0x1b
	.4byte	0x41c
	.uleb128 0xf
	.4byte	.LASF68
	.byte	0
	.uleb128 0xf
	.4byte	.LASF69
	.byte	0x1
	.uleb128 0xf
	.4byte	.LASF70
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.byte	0x6
	.byte	0x9
	.byte	0x3b
	.4byte	0x431
	.uleb128 0xc
	.4byte	.LASF71
	.byte	0x9
	.byte	0x3c
	.4byte	0xf5
	.byte	0
	.byte	0
	.uleb128 0x3
	.4byte	.LASF72
	.byte	0x9
	.byte	0x3d
	.4byte	0x41c
	.uleb128 0xe
	.byte	0x4
	.4byte	0x69
	.byte	0x9
	.byte	0x48
	.4byte	0x4b5
	.uleb128 0xf
	.4byte	.LASF73
	.byte	0
	.uleb128 0xf
	.4byte	.LASF74
	.byte	0x1
	.uleb128 0xf
	.4byte	.LASF75
	.byte	0x2
	.uleb128 0xf
	.4byte	.LASF76
	.byte	0x3
	.uleb128 0xf
	.4byte	.LASF77
	.byte	0x4
	.uleb128 0xf
	.4byte	.LASF78
	.byte	0x5
	.uleb128 0xf
	.4byte	.LASF79
	.byte	0x6
	.uleb128 0xf
	.4byte	.LASF80
	.byte	0x7
	.uleb128 0xf
	.4byte	.LASF81
	.byte	0x8
	.uleb128 0xf
	.4byte	.LASF82
	.byte	0x9
	.uleb128 0xf
	.4byte	.LASF83
	.byte	0xa
	.uleb128 0xf
	.4byte	.LASF84
	.byte	0xb
	.uleb128 0xf
	.4byte	.LASF85
	.byte	0xc
	.uleb128 0xf
	.4byte	.LASF86
	.byte	0xd
	.uleb128 0xf
	.4byte	.LASF87
	.byte	0xe
	.uleb128 0xf
	.4byte	.LASF88
	.byte	0xf
	.uleb128 0xf
	.4byte	.LASF89
	.byte	0x10
	.uleb128 0xf
	.4byte	.LASF90
	.byte	0x11
	.byte	0
	.uleb128 0x3
	.4byte	.LASF91
	.byte	0x9
	.byte	0x5b
	.4byte	0x43c
	.uleb128 0x10
	.4byte	.LASF92
	.byte	0x8
	.byte	0xa
	.byte	0x17
	.4byte	0x509
	.uleb128 0xd
	.string	"sig"
	.byte	0xa
	.byte	0x18
	.4byte	0x7e
	.byte	0
	.uleb128 0xd
	.string	"aid"
	.byte	0xa
	.byte	0x19
	.4byte	0x7e
	.byte	0x1
	.uleb128 0xd
	.string	"pid"
	.byte	0xa
	.byte	0x1a
	.4byte	0x7e
	.byte	0x2
	.uleb128 0xd
	.string	"act"
	.byte	0xa
	.byte	0x1b
	.4byte	0x7e
	.byte	0x3
	.uleb128 0xd
	.string	"arg"
	.byte	0xa
	.byte	0x1c
	.4byte	0xcf
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF93
	.byte	0xa
	.byte	0x1d
	.4byte	0x4c0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x69
	.byte	0xa
	.byte	0x24
	.4byte	0x533
	.uleb128 0xf
	.4byte	.LASF94
	.byte	0
	.uleb128 0xf
	.4byte	.LASF95
	.byte	0x1
	.uleb128 0xf
	.4byte	.LASF96
	.byte	0x2
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x69
	.byte	0xa
	.byte	0x2a
	.4byte	0x5a0
	.uleb128 0xf
	.4byte	.LASF97
	.byte	0
	.uleb128 0xf
	.4byte	.LASF98
	.byte	0x1
	.uleb128 0xf
	.4byte	.LASF99
	.byte	0x2
	.uleb128 0xf
	.4byte	.LASF100
	.byte	0x3
	.uleb128 0xf
	.4byte	.LASF101
	.byte	0x4
	.uleb128 0xf
	.4byte	.LASF102
	.byte	0x5
	.uleb128 0xf
	.4byte	.LASF103
	.byte	0x6
	.uleb128 0xf
	.4byte	.LASF104
	.byte	0x7
	.uleb128 0xf
	.4byte	.LASF105
	.byte	0x8
	.uleb128 0xf
	.4byte	.LASF106
	.byte	0x9
	.uleb128 0xf
	.4byte	.LASF107
	.byte	0xa
	.uleb128 0xf
	.4byte	.LASF108
	.byte	0xb
	.uleb128 0xf
	.4byte	.LASF109
	.byte	0xc
	.uleb128 0xf
	.4byte	.LASF110
	.byte	0xd
	.uleb128 0xf
	.4byte	.LASF111
	.byte	0xe
	.uleb128 0xf
	.4byte	.LASF112
	.byte	0xf
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x69
	.byte	0xb
	.byte	0x36
	.4byte	0x5f5
	.uleb128 0xf
	.4byte	.LASF113
	.byte	0
	.uleb128 0xf
	.4byte	.LASF114
	.byte	0x1
	.uleb128 0xf
	.4byte	.LASF115
	.byte	0x2
	.uleb128 0xf
	.4byte	.LASF116
	.byte	0x3
	.uleb128 0xf
	.4byte	.LASF117
	.byte	0x4
	.uleb128 0xf
	.4byte	.LASF118
	.byte	0x5
	.uleb128 0xf
	.4byte	.LASF119
	.byte	0x6
	.uleb128 0xf
	.4byte	.LASF120
	.byte	0x7
	.uleb128 0xf
	.4byte	.LASF121
	.byte	0x8
	.uleb128 0xf
	.4byte	.LASF122
	.byte	0x9
	.uleb128 0xf
	.4byte	.LASF123
	.byte	0xa
	.uleb128 0xf
	.4byte	.LASF124
	.byte	0xb
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.byte	0xb
	.byte	0x4a
	.4byte	0x64b
	.uleb128 0x9
	.string	"mcc"
	.byte	0xb
	.byte	0x4d
	.4byte	0x186
	.uleb128 0xa
	.4byte	.LASF125
	.byte	0xb
	.byte	0x4f
	.4byte	0x431
	.uleb128 0xa
	.4byte	.LASF126
	.byte	0xb
	.byte	0x51
	.4byte	0x3a6
	.uleb128 0xa
	.4byte	.LASF127
	.byte	0xb
	.byte	0x55
	.4byte	0x3d2
	.uleb128 0xa
	.4byte	.LASF128
	.byte	0xb
	.byte	0x57
	.4byte	0x431
	.uleb128 0xa
	.4byte	.LASF129
	.byte	0xb
	.byte	0x5a
	.4byte	0x264
	.uleb128 0xa
	.4byte	.LASF130
	.byte	0xb
	.byte	0x5c
	.4byte	0x94
	.byte	0
	.uleb128 0x3
	.4byte	.LASF131
	.byte	0xb
	.byte	0x5d
	.4byte	0x5f5
	.uleb128 0x16
	.4byte	.LASF133
	.byte	0x1
	.byte	0x1a
	.4byte	0xdf
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6b5
	.uleb128 0x17
	.string	"msg"
	.byte	0x1
	.byte	0x20
	.4byte	0x509
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x18
	.4byte	.LASF132
	.byte	0x1
	.byte	0x27
	.4byte	0x4b5
	.4byte	.LLST0
	.uleb128 0x19
	.4byte	.LVL0
	.4byte	0xbd6
	.uleb128 0x1a
	.4byte	.LVL1
	.4byte	0xbe1
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LASF134
	.byte	0x1
	.byte	0x2b
	.4byte	0xdf
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x714
	.uleb128 0x17
	.string	"msg"
	.byte	0x1
	.byte	0x31
	.4byte	0x509
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x18
	.4byte	.LASF132
	.byte	0x1
	.byte	0x38
	.4byte	0x4b5
	.4byte	.LLST1
	.uleb128 0x19
	.4byte	.LVL4
	.4byte	0xbd6
	.uleb128 0x1a
	.4byte	.LVL5
	.4byte	0xbe1
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LASF135
	.byte	0x1
	.byte	0x3c
	.4byte	0xdf
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x791
	.uleb128 0x1c
	.4byte	.LASF137
	.byte	0x1
	.byte	0x3c
	.4byte	0x3a6
	.4byte	.LLST2
	.uleb128 0x17
	.string	"msg"
	.byte	0x1
	.byte	0x42
	.4byte	0x509
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x17
	.string	"arg"
	.byte	0x1
	.byte	0x47
	.4byte	0x64b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x18
	.4byte	.LASF132
	.byte	0x1
	.byte	0x4c
	.4byte	0x4b5
	.4byte	.LLST3
	.uleb128 0x19
	.4byte	.LVL9
	.4byte	0xbd6
	.uleb128 0x1a
	.4byte	.LVL10
	.4byte	0xbe1
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x38
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LASF136
	.byte	0x1
	.byte	0x50
	.4byte	0xdf
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x82e
	.uleb128 0x1c
	.4byte	.LASF53
	.byte	0x1
	.byte	0x50
	.4byte	0x3f7
	.4byte	.LLST4
	.uleb128 0x18
	.4byte	.LASF132
	.byte	0x1
	.byte	0x56
	.4byte	0x4b5
	.4byte	.LLST5
	.uleb128 0x17
	.string	"arg"
	.byte	0x1
	.byte	0x57
	.4byte	0x64b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x17
	.string	"msg"
	.byte	0x1
	.byte	0x58
	.4byte	0x509
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x19
	.4byte	.LVL17
	.4byte	0xbd6
	.uleb128 0x1d
	.4byte	.LVL18
	.4byte	0xbec
	.4byte	0x80c
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL19
	.4byte	0xbe1
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x38
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LASF138
	.byte	0x1
	.byte	0x66
	.4byte	0xdf
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x89c
	.uleb128 0x1c
	.4byte	.LASF53
	.byte	0x1
	.byte	0x66
	.4byte	0x3f7
	.4byte	.LLST6
	.uleb128 0x18
	.4byte	.LASF132
	.byte	0x1
	.byte	0x6c
	.4byte	0x4b5
	.4byte	.LLST7
	.uleb128 0x17
	.string	"msg"
	.byte	0x1
	.byte	0x6d
	.4byte	0x509
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x19
	.4byte	.LVL26
	.4byte	0xbd6
	.uleb128 0x1a
	.4byte	.LVL28
	.4byte	0xbe1
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LASF139
	.byte	0x1
	.byte	0x7a
	.4byte	0xdf
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8e3
	.uleb128 0x1c
	.4byte	.LASF137
	.byte	0x1
	.byte	0x7a
	.4byte	0x37f
	.4byte	.LLST8
	.uleb128 0x19
	.4byte	.LVL33
	.4byte	0xbd6
	.uleb128 0x1a
	.4byte	.LVL34
	.4byte	0xbf5
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x3c
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LASF140
	.byte	0x1
	.byte	0x88
	.4byte	0xdf
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x960
	.uleb128 0x1c
	.4byte	.LASF129
	.byte	0x1
	.byte	0x88
	.4byte	0x264
	.4byte	.LLST9
	.uleb128 0x18
	.4byte	.LASF132
	.byte	0x1
	.byte	0x8e
	.4byte	0x4b5
	.4byte	.LLST10
	.uleb128 0x17
	.string	"arg"
	.byte	0x1
	.byte	0x8f
	.4byte	0x64b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x17
	.string	"msg"
	.byte	0x1
	.byte	0x90
	.4byte	0x509
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x19
	.4byte	.LVL41
	.4byte	0xbd6
	.uleb128 0x1a
	.4byte	.LVL42
	.4byte	0xbe1
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x38
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LASF141
	.byte	0x1
	.byte	0x9f
	.4byte	0xdf
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9bf
	.uleb128 0x17
	.string	"msg"
	.byte	0x1
	.byte	0xa5
	.4byte	0x509
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x18
	.4byte	.LASF132
	.byte	0x1
	.byte	0xac
	.4byte	0x4b5
	.4byte	.LLST11
	.uleb128 0x19
	.4byte	.LVL48
	.4byte	0xbd6
	.uleb128 0x1a
	.4byte	.LVL49
	.4byte	0xbe1
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LASF142
	.byte	0x1
	.byte	0xb0
	.4byte	0xdf
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa1e
	.uleb128 0x17
	.string	"msg"
	.byte	0x1
	.byte	0xb6
	.4byte	0x509
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x18
	.4byte	.LASF132
	.byte	0x1
	.byte	0xbd
	.4byte	0x4b5
	.4byte	.LLST12
	.uleb128 0x19
	.4byte	.LVL52
	.4byte	0xbd6
	.uleb128 0x1a
	.4byte	.LVL53
	.4byte	0xbe1
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LASF143
	.byte	0x1
	.byte	0xc1
	.4byte	0xdf
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xabb
	.uleb128 0x1c
	.4byte	.LASF53
	.byte	0x1
	.byte	0xc1
	.4byte	0x3f7
	.4byte	.LLST13
	.uleb128 0x18
	.4byte	.LASF132
	.byte	0x1
	.byte	0xc7
	.4byte	0x4b5
	.4byte	.LLST14
	.uleb128 0x17
	.string	"arg"
	.byte	0x1
	.byte	0xc8
	.4byte	0x64b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x17
	.string	"msg"
	.byte	0x1
	.byte	0xc9
	.4byte	0x509
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x19
	.4byte	.LVL57
	.4byte	0xbd6
	.uleb128 0x1d
	.4byte	.LVL58
	.4byte	0xbec
	.4byte	0xa99
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL59
	.4byte	0xbe1
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x38
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LASF144
	.byte	0x1
	.byte	0xd7
	.4byte	0xdf
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb29
	.uleb128 0x1c
	.4byte	.LASF53
	.byte	0x1
	.byte	0xd7
	.4byte	0x3f7
	.4byte	.LLST15
	.uleb128 0x18
	.4byte	.LASF132
	.byte	0x1
	.byte	0xdd
	.4byte	0x4b5
	.4byte	.LLST16
	.uleb128 0x17
	.string	"msg"
	.byte	0x1
	.byte	0xde
	.4byte	0x509
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x19
	.4byte	.LVL66
	.4byte	0xbd6
	.uleb128 0x1a
	.4byte	.LVL68
	.4byte	0xbe1
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LASF145
	.byte	0x1
	.byte	0xe9
	.4byte	0xdf
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xba6
	.uleb128 0x1c
	.4byte	.LASF137
	.byte	0x1
	.byte	0xe9
	.4byte	0x3d2
	.4byte	.LLST17
	.uleb128 0x17
	.string	"msg"
	.byte	0x1
	.byte	0xef
	.4byte	0x509
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x17
	.string	"arg"
	.byte	0x1
	.byte	0xf4
	.4byte	0x64b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x18
	.4byte	.LASF132
	.byte	0x1
	.byte	0xf9
	.4byte	0x4b5
	.4byte	.LLST18
	.uleb128 0x19
	.4byte	.LVL73
	.4byte	0xbd6
	.uleb128 0x1a
	.4byte	.LVL74
	.4byte	0xbe1
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x38
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF146
	.byte	0x4
	.2byte	0x2cc
	.4byte	0xbb9
	.byte	0x6
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.uleb128 0x14
	.4byte	0xb8
	.uleb128 0x1e
	.4byte	.LASF147
	.byte	0x4
	.2byte	0x2cd
	.4byte	0xbd1
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	0xb8
	.uleb128 0x1f
	.4byte	.LASF148
	.4byte	.LASF148
	.byte	0x8
	.byte	0x27
	.uleb128 0x1f
	.4byte	.LASF149
	.4byte	.LASF149
	.byte	0xa
	.byte	0x4c
	.uleb128 0x20
	.4byte	.LASF154
	.4byte	.LASF154
	.uleb128 0x1f
	.4byte	.LASF150
	.4byte	.LASF150
	.byte	0xc
	.byte	0x19
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
	.uleb128 0x8
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x17
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
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL3
	.4byte	.LFE26
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL7
	.4byte	.LFE27
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL8
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
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL10
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL14
	.4byte	.LFE28
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL16
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL24
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL19
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL23
	.4byte	.LFE29
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL25
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL27
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
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL31
	.4byte	.LFE30
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL32
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
	.4byte	.LFE31
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL40
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL44
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
	.4byte	.LFE32
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL42
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL46
	.4byte	.LFE32
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL51
	.4byte	.LFE33
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL55
	.4byte	.LFE34
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL56
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL60
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
	.4byte	.LFE35
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL59
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL63
	.4byte	.LFE35
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL65
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL67
	.4byte	.LVL69
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL69
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL70
	.4byte	.LFE36
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL71
	.4byte	.LFE36
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL72
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL75
	.4byte	.LVL76
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL76
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
	.4byte	.LFE37
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL74
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL78
	.4byte	.LFE37
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
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
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
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB27
	.4byte	.LFE27
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
	.4byte	.LFB37
	.4byte	.LFE37
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF113:
	.string	"BTC_AV_SINK_API_INIT_EVT"
.LASF43:
	.string	"ESP_A2D_MEDIA_CTRL_START"
.LASF83:
	.string	"BT_STATUS_RMT_DEV_DOWN"
.LASF136:
	.string	"esp_a2d_sink_connect"
.LASF93:
	.string	"btc_msg_t"
.LASF0:
	.string	"signed char"
.LASF4:
	.string	"__uint8_t"
.LASF97:
	.string	"BTC_PID_MAIN_INIT"
.LASF23:
	.string	"type"
.LASF64:
	.string	"esp_a2d_cb_param_t"
.LASF130:
	.string	"dp_evt"
.LASF9:
	.string	"long long unsigned int"
.LASF90:
	.string	"BT_STATUS_MEMORY_FULL"
.LASF65:
	.string	"esp_a2d_cb_t"
.LASF27:
	.string	"ESP_A2D_CONNECTION_STATE_CONNECTED"
.LASF33:
	.string	"ESP_A2D_AUDIO_STATE_REMOTE_SUSPEND"
.LASF144:
	.string	"esp_a2d_source_disconnect"
.LASF106:
	.string	"BTC_PID_ALARM"
.LASF132:
	.string	"stat"
.LASF8:
	.string	"long long int"
.LASF49:
	.string	"ESP_A2D_AUDIO_CFG_EVT"
.LASF134:
	.string	"esp_a2d_sink_deinit"
.LASF68:
	.string	"ESP_BLUEDROID_STATUS_UNINITIALIZED"
.LASF52:
	.string	"state"
.LASF53:
	.string	"remote_bda"
.LASF57:
	.string	"a2d_audio_cfg_param"
.LASF101:
	.string	"BTC_PID_GAP_BLE"
.LASF111:
	.string	"BTC_PID_SPP"
.LASF35:
	.string	"ESP_A2D_AUDIO_STATE_STARTED"
.LASF89:
	.string	"BT_STATUS_TIMEOUT"
.LASF82:
	.string	"BT_STATUS_AUTH_FAILURE"
.LASF17:
	.string	"long int"
.LASF140:
	.string	"esp_a2d_media_ctrl"
.LASF107:
	.string	"BTC_PID_GAP_BT"
.LASF149:
	.string	"btc_transfer_context"
.LASF39:
	.string	"ESP_A2D_MEDIA_CTRL_ACK_BUSY"
.LASF34:
	.string	"ESP_A2D_AUDIO_STATE_STOPPED"
.LASF36:
	.string	"esp_a2d_audio_state_t"
.LASF154:
	.string	"memcpy"
.LASF46:
	.string	"esp_a2d_media_ctrl_t"
.LASF127:
	.string	"src_data_cb"
.LASF88:
	.string	"BT_STATUS_PARAM_OUT_OF_RANGE"
.LASF50:
	.string	"ESP_A2D_MEDIA_CTRL_ACK_EVT"
.LASF40:
	.string	"esp_a2d_media_ctrl_ack_t"
.LASF29:
	.string	"esp_a2d_connection_state_t"
.LASF84:
	.string	"BT_STATUS_AUTH_REJECTED"
.LASF105:
	.string	"BTC_PID_DM_SEC"
.LASF85:
	.string	"BT_STATUS_INVALID_STATIC_RAND_ADDR"
.LASF38:
	.string	"ESP_A2D_MEDIA_CTRL_ACK_FAILURE"
.LASF6:
	.string	"__uint32_t"
.LASF72:
	.string	"bt_bdaddr_t"
.LASF31:
	.string	"ESP_A2D_DISC_RSN_ABNORMAL"
.LASF109:
	.string	"BTC_PID_A2DP"
.LASF91:
	.string	"bt_status_t"
.LASF76:
	.string	"BT_STATUS_NOMEM"
.LASF61:
	.string	"audio_stat"
.LASF138:
	.string	"esp_a2d_sink_disconnect"
.LASF7:
	.string	"unsigned int"
.LASF30:
	.string	"ESP_A2D_DISC_RSN_NORMAL"
.LASF133:
	.string	"esp_a2d_sink_init"
.LASF47:
	.string	"ESP_A2D_CONNECTION_STATE_EVT"
.LASF143:
	.string	"esp_a2d_source_connect"
.LASF18:
	.string	"long unsigned int"
.LASF139:
	.string	"esp_a2d_register_callback"
.LASF75:
	.string	"BT_STATUS_NOT_READY"
.LASF45:
	.string	"ESP_A2D_MEDIA_CTRL_SUSPEND"
.LASF128:
	.string	"src_connect"
.LASF103:
	.string	"BTC_PID_SPPLIKE"
.LASF3:
	.string	"short unsigned int"
.LASF131:
	.string	"btc_av_args_t"
.LASF28:
	.string	"ESP_A2D_CONNECTION_STATE_DISCONNECTING"
.LASF110:
	.string	"BTC_PID_AVRC"
.LASF102:
	.string	"BTC_PID_BLE_HID"
.LASF137:
	.string	"callback"
.LASF66:
	.string	"esp_a2d_sink_data_cb_t"
.LASF74:
	.string	"BT_STATUS_FAIL"
.LASF55:
	.string	"a2d_conn_stat_param"
.LASF22:
	.string	"atrac"
.LASF98:
	.string	"BTC_PID_DEV"
.LASF70:
	.string	"ESP_BLUEDROID_STATUS_ENABLED"
.LASF96:
	.string	"BTC_SIG_NUM"
.LASF114:
	.string	"BTC_AV_SINK_API_DEINIT_EVT"
.LASF42:
	.string	"ESP_A2D_MEDIA_CTRL_CHECK_SRC_RDY"
.LASF94:
	.string	"BTC_SIG_API_CALL"
.LASF92:
	.string	"btc_msg"
.LASF87:
	.string	"BT_STATUS_UNACCEPT_CONN_INTERVAL"
.LASF48:
	.string	"ESP_A2D_AUDIO_STATE_EVT"
.LASF142:
	.string	"esp_a2d_source_deinit"
.LASF71:
	.string	"address"
.LASF150:
	.string	"btc_profile_cb_set"
.LASF79:
	.string	"BT_STATUS_UNSUPPORTED"
.LASF81:
	.string	"BT_STATUS_UNHANDLED"
.LASF19:
	.string	"esp_err_t"
.LASF104:
	.string	"BTC_PID_BLUFI"
.LASF122:
	.string	"BTC_AV_SRC_API_REG_DATA_CB_EVT"
.LASF126:
	.string	"data_cb"
.LASF95:
	.string	"BTC_SIG_API_CB"
.LASF73:
	.string	"BT_STATUS_SUCCESS"
.LASF77:
	.string	"BT_STATUS_BUSY"
.LASF62:
	.string	"audio_cfg"
.LASF147:
	.string	"bd_addr_null"
.LASF51:
	.string	"esp_a2d_cb_event_t"
.LASF145:
	.string	"esp_a2d_source_register_data_callback"
.LASF14:
	.string	"_Bool"
.LASF11:
	.string	"int32_t"
.LASF1:
	.string	"unsigned char"
.LASF116:
	.string	"BTC_AV_SINK_API_DISCONNECT_EVT"
.LASF151:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF117:
	.string	"BTC_AV_SINK_API_REG_DATA_CB_EVT"
.LASF44:
	.string	"ESP_A2D_MEDIA_CTRL_STOP"
.LASF78:
	.string	"BT_STATUS_DONE"
.LASF25:
	.string	"ESP_A2D_CONNECTION_STATE_DISCONNECTED"
.LASF118:
	.string	"BTC_AV_SRC_API_INIT_EVT"
.LASF21:
	.string	"esp_a2d_mct_t"
.LASF54:
	.string	"disc_rsn"
.LASF125:
	.string	"connect"
.LASF135:
	.string	"esp_a2d_sink_register_data_callback"
.LASF112:
	.string	"BTC_PID_NUM"
.LASF100:
	.string	"BTC_PID_GATT_COMMON"
.LASF63:
	.string	"media_ctrl_stat"
.LASF16:
	.string	"char"
.LASF123:
	.string	"BTC_AV_API_MEDIA_CTRL_EVT"
.LASF69:
	.string	"ESP_BLUEDROID_STATUS_INITIALIZED"
.LASF24:
	.string	"esp_a2d_mcc_t"
.LASF2:
	.string	"short int"
.LASF37:
	.string	"ESP_A2D_MEDIA_CTRL_ACK_SUCCESS"
.LASF5:
	.string	"__int32_t"
.LASF148:
	.string	"esp_bluedroid_get_status"
.LASF20:
	.string	"esp_bd_addr_t"
.LASF141:
	.string	"esp_a2d_source_init"
.LASF129:
	.string	"ctrl"
.LASF60:
	.string	"conn_stat"
.LASF124:
	.string	"BTC_AV_DATAPATH_CTRL_EVT"
.LASF56:
	.string	"a2d_audio_stat_param"
.LASF12:
	.string	"uint32_t"
.LASF26:
	.string	"ESP_A2D_CONNECTION_STATE_CONNECTING"
.LASF59:
	.string	"status"
.LASF120:
	.string	"BTC_AV_SRC_API_CONNECT_EVT"
.LASF108:
	.string	"BTC_PID_PRF_QUE"
.LASF80:
	.string	"BT_STATUS_PARM_INVALID"
.LASF13:
	.string	"UINT8"
.LASF10:
	.string	"uint8_t"
.LASF146:
	.string	"bd_addr_any"
.LASF58:
	.string	"media_ctrl_stat_param"
.LASF15:
	.string	"sizetype"
.LASF153:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\bt"
.LASF115:
	.string	"BTC_AV_SINK_API_CONNECT_EVT"
.LASF99:
	.string	"BTC_PID_GATTS"
.LASF41:
	.string	"ESP_A2D_MEDIA_CTRL_NONE"
.LASF121:
	.string	"BTC_AV_SRC_API_DISCONNECT_EVT"
.LASF119:
	.string	"BTC_AV_SRC_API_DEINIT_EVT"
.LASF32:
	.string	"esp_a2d_disc_rsn_t"
.LASF67:
	.string	"esp_a2d_source_data_cb_t"
.LASF152:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/api/esp_a2dp_api.c"
.LASF86:
	.string	"BT_STATUS_PENDING"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
