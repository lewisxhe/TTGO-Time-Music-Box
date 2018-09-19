	.file	"nghttp2_helper.c"
	.text
.Ltext0:
	.section	.text.nghttp2_put_uint16be,"ax",@progbits
	.align	4
	.global	nghttp2_put_uint16be
	.type	nghttp2_put_uint16be, @function
nghttp2_put_uint16be:
.LFB0:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/nghttp/nghttp2/lib/nghttp2_helper.c"
	.loc 1 32 0
.LVL0:
	entry	sp, 48
.LCFI0:
	extui	a3, a3, 0, 16
	.loc 1 33 0
	slli	a9, a3, 8
	srli	a8, a3, 8
	or	a8, a8, a9
	extui	a8, a8, 0, 16
	.loc 1 34 0
	srli	a3, a8, 8
.LVL1:
	s8i	a8, a2, 0
	s8i	a3, a2, 1
	retw.n
.LFE0:
	.size	nghttp2_put_uint16be, .-nghttp2_put_uint16be
	.section	.text.nghttp2_put_uint32be,"ax",@progbits
	.literal_position
	.literal .LC0, 65280
	.align	4
	.global	nghttp2_put_uint32be
	.type	nghttp2_put_uint32be, @function
nghttp2_put_uint32be:
.LFB1:
	.loc 1 37 0
.LVL2:
	entry	sp, 48
.LCFI1:
	.loc 1 38 0
	slli	a10, a3, 24
	l32r	a8, .LC0
	and	a9, a3, a8
	slli	a9, a9, 8
	or	a9, a10, a9
	srli	a10, a3, 8
	and	a8, a10, a8
	or	a8, a9, a8
	extui	a3, a3, 24, 8
.LVL3:
	or	a3, a8, a3
	.loc 1 39 0
	srli	a9, a3, 8
	s8i	a3, a2, 0
	extui	a8, a3, 16, 16
	s8i	a9, a2, 1
	extui	a3, a3, 24, 8
	s8i	a8, a2, 2
	s8i	a3, a2, 3
	retw.n
.LFE1:
	.size	nghttp2_put_uint32be, .-nghttp2_put_uint32be
	.section	.text.nghttp2_get_uint16,"ax",@progbits
	.align	4
	.global	nghttp2_get_uint16
	.type	nghttp2_get_uint16, @function
nghttp2_get_uint16:
.LFB2:
	.loc 1 42 0
.LVL4:
	entry	sp, 48
.LCFI2:
	.loc 1 44 0
	l8ui	a8, a2, 0
	l8ui	a2, a2, 1
.LVL5:
	s8i	a8, sp, 0
	s8i	a2, sp, 1
	.loc 1 45 0
	l16ui	a8, sp, 0
	slli	a2, a8, 8
	srli	a8, a8, 8
	or	a2, a8, a2
	.loc 1 46 0
	extui	a2, a2, 0, 16
	retw.n
.LFE2:
	.size	nghttp2_get_uint16, .-nghttp2_get_uint16
	.section	.text.nghttp2_get_uint32,"ax",@progbits
	.literal_position
	.literal .LC1, 65280
	.align	4
	.global	nghttp2_get_uint32
	.type	nghttp2_get_uint32, @function
nghttp2_get_uint32:
.LFB3:
	.loc 1 48 0
.LVL6:
	entry	sp, 48
.LCFI3:
	.loc 1 50 0
	l8ui	a8, a2, 0
	l8ui	a9, a2, 1
	s8i	a8, sp, 0
	l8ui	a8, a2, 2
	s8i	a9, sp, 1
	l8ui	a2, a2, 3
.LVL7:
	s8i	a8, sp, 2
	s8i	a2, sp, 3
	.loc 1 51 0
	l32i.n	a8, sp, 0
	slli	a11, a8, 24
	l32r	a9, .LC1
	and	a10, a8, a9
	slli	a2, a10, 8
	or	a10, a11, a2
	srli	a2, a8, 8
	and	a9, a2, a9
	or	a2, a10, a9
	extui	a8, a8, 24, 8
	.loc 1 52 0
	or	a2, a2, a8
	retw.n
.LFE3:
	.size	nghttp2_get_uint32, .-nghttp2_get_uint32
	.section	.text.nghttp2_downcase,"ax",@progbits
	.literal_position
	.literal .LC2, DOWNCASE_TBL
	.align	4
	.global	nghttp2_downcase
	.type	nghttp2_downcase, @function
nghttp2_downcase:
.LFB4:
	.loc 1 122 0
.LVL8:
	entry	sp, 32
.LCFI4:
.LVL9:
	.loc 1 124 0
	movi.n	a8, 0
	j	.L6
.LVL10:
.L7:
	.loc 1 125 0 discriminator 3
	add.n	a10, a2, a8
	l8ui	a9, a10, 0
	l32r	a11, .LC2
	add.n	a9, a11, a9
	l8ui	a9, a9, 0
	s8i	a9, a10, 0
	.loc 1 124 0 discriminator 3
	addi.n	a8, a8, 1
.LVL11:
.L6:
	.loc 1 124 0 is_stmt 0 discriminator 1
	bltu	a8, a3, .L7
	.loc 1 127 0 is_stmt 1
	retw.n
.LFE4:
	.size	nghttp2_downcase, .-nghttp2_downcase
	.section	.text.nghttp2_adjust_local_window_size,"ax",@progbits
	.literal_position
	.literal .LC3, 2147483647
	.literal .LC4, -2147483648
	.align	4
	.global	nghttp2_adjust_local_window_size
	.type	nghttp2_adjust_local_window_size, @function
nghttp2_adjust_local_window_size:
.LFB5:
	.loc 1 158 0
.LVL12:
	entry	sp, 32
.LCFI5:
	.loc 1 159 0
	l32i.n	a10, a5, 0
	blti	a10, 1, .L9
.LBB2:
	.loc 1 163 0
	l32i.n	a8, a3, 0
	movi.n	a9, 0
	max	a8, a8, a9
	.loc 1 162 0
	sub	a8, a8, a10
.LVL13:
	.loc 1 165 0
	blt	a8, a9, .L10
	.loc 1 166 0
	s32i.n	a8, a3, 0
	.loc 1 167 0
	mov.n	a2, a9
.LVL14:
	retw.n
.LVL15:
.L10:
	.loc 1 170 0
	neg	a9, a8
.LVL16:
	.loc 1 174 0
	l32i.n	a10, a2, 0
	l32r	a11, .LC3
	add.n	a11, a8, a11
	blt	a11, a10, .L14
	.loc 1 177 0
	sub	a8, a10, a8
.LVL17:
	s32i.n	a8, a2, 0
	.loc 1 180 0
	l32i.n	a8, a4, 0
	min	a2, a9, a8
.LVL18:
	.loc 1 181 0
	sub	a8, a8, a2
	s32i.n	a8, a4, 0
	.loc 1 182 0
	l32i.n	a4, a3, 0
.LVL19:
	bgez	a4, .L12
	.loc 1 183 0
	add.n	a4, a2, a4
	s32i.n	a4, a3, 0
	j	.L13
.L12:
	.loc 1 190 0
	s32i.n	a2, a3, 0
.L13:
	.loc 1 194 0
	l32i.n	a3, a5, 0
.LVL20:
	sub	a2, a3, a2
.LVL21:
	s32i.n	a2, a5, 0
	.loc 1 196 0
	movi.n	a2, 0
	retw.n
.LVL22:
.L9:
.LBE2:
	.loc 1 199 0
	l32i.n	a9, a2, 0
	add.n	a9, a10, a9
	bltz	a9, .L15
	.loc 1 200 0 discriminator 1
	l32i.n	a11, a3, 0
	l32r	a8, .LC4
	sub	a8, a8, a10
	.loc 1 199 0 discriminator 1
	blt	a11, a8, .L16
	.loc 1 201 0
	l32i.n	a11, a4, 0
	l32r	a8, .LC3
	add.n	a8, a10, a8
	.loc 1 200 0
	blt	a8, a11, .L17
	.loc 1 208 0
	s32i.n	a9, a2, 0
	.loc 1 209 0
	l32i.n	a2, a5, 0
.LVL23:
	l32i.n	a8, a3, 0
	add.n	a2, a8, a2
	s32i.n	a2, a3, 0
	.loc 1 210 0
	l32i.n	a3, a5, 0
.LVL24:
	l32i.n	a2, a4, 0
	sub	a2, a2, a3
	s32i.n	a2, a4, 0
	.loc 1 211 0
	movi.n	a2, 0
	s32i.n	a2, a5, 0
	.loc 1 213 0
	retw.n
.LVL25:
.L14:
.LBB3:
	.loc 1 175 0
	movi	a2, -0x20c
.LVL26:
	retw.n
.LVL27:
.L15:
.LBE3:
	.loc 1 202 0
	movi	a2, -0x20c
.LVL28:
	retw.n
.LVL29:
.L16:
	movi	a2, -0x20c
.LVL30:
	retw.n
.LVL31:
.L17:
	movi	a2, -0x20c
.LVL32:
	.loc 1 214 0
	retw.n
.LFE5:
	.size	nghttp2_adjust_local_window_size, .-nghttp2_adjust_local_window_size
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC5:
	.string	"delta >= 0"
	.align	4
.LC8:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/nghttp/nghttp2/lib/nghttp2_helper.c"
	.section	.text.nghttp2_increase_local_window_size,"ax",@progbits
	.literal_position
	.literal .LC6, .LC5
	.literal .LC7, __func__$4087
	.literal .LC9, .LC8
	.literal .LC10, 2147483647
	.align	4
	.global	nghttp2_increase_local_window_size
	.type	nghttp2_increase_local_window_size, @function
nghttp2_increase_local_window_size:
.LFB6:
	.loc 1 219 0
.LVL33:
	entry	sp, 32
.LCFI6:
	.loc 1 223 0
	l32i.n	a8, a5, 0
.LVL34:
	.loc 1 225 0
	bgez	a8, .L19
	.loc 1 225 0 is_stmt 0 discriminator 1
	l32r	a13, .LC6
	l32r	a12, .LC7
	movi	a11, 0xe1
	l32r	a10, .LC9
	call8	__assert_func
.LVL35:
.L19:
	.loc 1 229 0 is_stmt 1
	l32i.n	a9, a2, 0
	l32r	a10, .LC10
	sub	a10, a10, a8
	blt	a10, a9, .L21
	.loc 1 233 0
	add.n	a9, a8, a9
	s32i.n	a9, a2, 0
	.loc 1 236 0
	l32i.n	a9, a4, 0
	min	a8, a8, a9
.LVL36:
	.loc 1 237 0
	sub	a9, a9, a8
	s32i.n	a9, a4, 0
	.loc 1 239 0
	l32i.n	a9, a3, 0
	add.n	a9, a9, a8
	s32i.n	a9, a3, 0
	.loc 1 243 0
	l32i.n	a9, a5, 0
	sub	a8, a9, a8
.LVL37:
	s32i.n	a8, a5, 0
	.loc 1 245 0
	movi.n	a2, 0
.LVL38:
	retw.n
.LVL39:
.L21:
	.loc 1 230 0
	movi	a2, -0x20c
.LVL40:
	.loc 1 246 0
	retw.n
.LFE6:
	.size	nghttp2_increase_local_window_size, .-nghttp2_increase_local_window_size
	.section	.text.nghttp2_should_send_window_update,"ax",@progbits
	.align	4
	.global	nghttp2_should_send_window_update
	.type	nghttp2_should_send_window_update, @function
nghttp2_should_send_window_update:
.LFB7:
	.loc 1 249 0
.LVL41:
	entry	sp, 32
.LCFI7:
	.loc 1 250 0
	blti	a3, 1, .L24
	.loc 1 250 0 is_stmt 0 discriminator 1
	extui	a8, a2, 31, 1
	add.n	a2, a8, a2
.LVL42:
	srai	a2, a2, 1
	bge	a3, a2, .L25
	.loc 1 250 0
	movi.n	a2, 0
	retw.n
.LVL43:
.L24:
	movi.n	a2, 0
.LVL44:
	retw.n
.L25:
	movi.n	a2, 1
	.loc 1 251 0 is_stmt 1
	retw.n
.LFE7:
	.size	nghttp2_should_send_window_update, .-nghttp2_should_send_window_update
	.section	.rodata.str1.4
	.align	4
.LC11:
	.string	"Success"
	.align	4
.LC13:
	.string	"Invalid argument"
	.align	4
.LC15:
	.string	"Out of buffer space"
	.align	4
.LC17:
	.string	"Unsupported SPDY version"
	.align	4
.LC19:
	.string	"Operation would block"
	.align	4
.LC21:
	.string	"Protocol error"
	.align	4
.LC23:
	.string	"Invalid frame octets"
	.align	4
.LC25:
	.string	"EOF"
	.align	4
.LC27:
	.string	"Data transfer deferred"
	.align	4
.LC29:
	.string	"No more Stream ID available"
	.align	4
.LC31:
	.string	"Stream was already closed or invalid"
	.align	4
.LC33:
	.string	"Stream is closing"
	.align	4
.LC35:
	.string	"The transmission is not allowed for this stream"
	.align	4
.LC37:
	.string	"Stream ID is invalid"
	.align	4
.LC39:
	.string	"Invalid stream state"
	.align	4
.LC41:
	.string	"Another DATA frame has already been deferred"
	.align	4
.LC43:
	.string	"request HEADERS is not allowed"
	.align	4
.LC45:
	.string	"GOAWAY has already been sent"
	.align	4
.LC47:
	.string	"Invalid header block"
	.align	4
.LC49:
	.string	"Invalid state"
	.align	4
.LC51:
	.string	"The user callback function failed due to the temporal error"
	.align	4
.LC53:
	.string	"The length of the frame is invalid"
	.align	4
.LC55:
	.string	"Header compression/decompression error"
	.align	4
.LC57:
	.string	"Flow control error"
	.align	4
.LC59:
	.string	"Insufficient buffer size given to function"
	.align	4
.LC61:
	.string	"Callback was paused by the application"
	.align	4
.LC63:
	.string	"Too many inflight SETTINGS"
	.align	4
.LC65:
	.string	"Server push is disabled by peer"
	.align	4
.LC67:
	.string	"DATA or HEADERS frame has already been submitted for the stream"
	.align	4
.LC69:
	.string	"The current session is closing"
	.align	4
.LC71:
	.string	"Invalid HTTP header field was received"
	.align	4
.LC73:
	.string	"Violation in HTTP messaging rule"
	.align	4
.LC75:
	.string	"Stream was refused"
	.align	4
.LC77:
	.string	"Internal error"
	.align	4
.LC79:
	.string	"Cancel"
	.align	4
.LC81:
	.string	"Out of memory"
	.align	4
.LC83:
	.string	"The user callback function failed"
	.align	4
.LC85:
	.string	"Received bad client magic byte string"
	.align	4
.LC87:
	.string	"Flooding was detected in this HTTP/2 session, and it must be closed"
	.align	4
.LC89:
	.string	"Unknown error code"
	.section	.text.nghttp2_strerror,"ax",@progbits
	.literal_position
	.literal .LC12, .LC11
	.literal .LC14, .LC13
	.literal .LC16, .LC15
	.literal .LC18, .LC17
	.literal .LC20, .LC19
	.literal .LC22, .LC21
	.literal .LC24, .LC23
	.literal .LC26, .LC25
	.literal .LC28, .LC27
	.literal .LC30, .LC29
	.literal .LC32, .LC31
	.literal .LC34, .LC33
	.literal .LC36, .LC35
	.literal .LC38, .LC37
	.literal .LC40, .LC39
	.literal .LC42, .LC41
	.literal .LC44, .LC43
	.literal .LC46, .LC45
	.literal .LC48, .LC47
	.literal .LC50, .LC49
	.literal .LC52, .LC51
	.literal .LC54, .LC53
	.literal .LC56, .LC55
	.literal .LC58, .LC57
	.literal .LC60, .LC59
	.literal .LC62, .LC61
	.literal .LC64, .LC63
	.literal .LC66, .LC65
	.literal .LC68, .LC67
	.literal .LC70, .LC69
	.literal .LC72, .LC71
	.literal .LC74, .LC73
	.literal .LC76, .LC75
	.literal .LC78, .LC77
	.literal .LC80, .LC79
	.literal .LC82, .LC81
	.literal .LC84, .LC83
	.literal .LC86, .LC85
	.literal .LC88, .LC87
	.literal .LC90, .LC89
	.align	4
	.global	nghttp2_strerror
	.type	nghttp2_strerror, @function
nghttp2_strerror:
.LFB8:
	.loc 1 253 0
.LVL45:
	entry	sp, 32
.LCFI8:
	.loc 1 254 0
	movi	a8, -0x207
	beq	a2, a8, .L28
	blt	a8, a2, .L29
	movi	a8, -0x212
	beq	a2, a8, .L30
	blt	a8, a2, .L31
	movi	a8, -0x217
	beq	a2, a8, .L32
	blt	a8, a2, .L33
	movi	a8, -0x387
	beq	a2, a8, .L34
	blt	a8, a2, .L35
	movi	a8, -0x388
	beq	a2, a8, .L36
	j	.L27
.L35:
	movi	a8, -0x386
	beq	a2, a8, .L37
	movi	a8, -0x385
	beq	a2, a8, .L38
	j	.L27
.L33:
	movi	a8, -0x215
	beq	a2, a8, .L39
	blt	a2, a8, .L40
	movi	a8, -0x214
	beq	a2, a8, .L41
	movi	a8, -0x213
	beq	a2, a8, .L42
	j	.L27
.L31:
	movi	a8, -0x20d
	beq	a2, a8, .L43
	blt	a8, a2, .L44
	movi	a8, -0x210
	beq	a2, a8, .L45
	blt	a2, a8, .L46
	movi	a8, -0x20f
	beq	a2, a8, .L47
	movi	a8, -0x20e
	beq	a2, a8, .L48
	j	.L27
.L44:
	movi	a8, -0x20b
	beq	a2, a8, .L49
	blt	a2, a8, .L50
	movi	a8, -0x20a
	beq	a2, a8, .L51
	movi	a8, -0x209
	beq	a2, a8, .L52
	j	.L27
.L29:
	movi	a8, -0x1fd
	beq	a2, a8, .L53
	blt	a8, a2, .L54
	movi	a8, -0x202
	beq	a2, a8, .L55
	blt	a8, a2, .L56
	movi	a8, -0x205
	beq	a2, a8, .L57
	blt	a2, a8, .L58
	movi	a8, -0x204
	beq	a2, a8, .L59
	movi	a8, -0x203
	beq	a2, a8, .L60
	j	.L27
.L56:
	movi	a8, -0x200
	beq	a2, a8, .L61
	blt	a2, a8, .L62
	movi	a8, -0x1ff
	beq	a2, a8, .L63
	movi	a8, -0x1fe
	beq	a2, a8, .L64
	j	.L27
.L54:
	movi	a8, -0x1f8
	beq	a2, a8, .L65
	blt	a8, a2, .L66
	movi	a8, -0x1fb
	beq	a2, a8, .L67
	blt	a2, a8, .L68
	movi	a8, -0x1fa
	beq	a2, a8, .L69
	movi	a8, -0x1f9
	beq	a2, a8, .L70
	j	.L27
.L66:
	movi	a8, -0x1f6
	beq	a2, a8, .L71
	blt	a2, a8, .L72
	movi	a8, -0x1f5
	beq	a2, a8, .L75
	bnez.n	a2, .L27
	.loc 1 256 0
	l32r	a2, .LC12
.LVL46:
	retw.n
.LVL47:
.L71:
	.loc 1 260 0
	l32r	a2, .LC16
.LVL48:
	retw.n
.LVL49:
.L72:
	.loc 1 262 0
	l32r	a2, .LC18
.LVL50:
	retw.n
.LVL51:
.L65:
	.loc 1 264 0
	l32r	a2, .LC20
.LVL52:
	retw.n
.LVL53:
.L70:
	.loc 1 266 0
	l32r	a2, .LC22
.LVL54:
	retw.n
.LVL55:
.L69:
	.loc 1 268 0
	l32r	a2, .LC24
.LVL56:
	retw.n
.LVL57:
.L67:
	.loc 1 270 0
	l32r	a2, .LC26
.LVL58:
	retw.n
.LVL59:
.L68:
	.loc 1 272 0
	l32r	a2, .LC28
.LVL60:
	retw.n
.LVL61:
.L53:
	.loc 1 274 0
	l32r	a2, .LC30
.LVL62:
	retw.n
.LVL63:
.L64:
	.loc 1 276 0
	l32r	a2, .LC32
.LVL64:
	retw.n
.LVL65:
.L63:
	.loc 1 278 0
	l32r	a2, .LC34
.LVL66:
	retw.n
.LVL67:
.L61:
	.loc 1 280 0
	l32r	a2, .LC36
.LVL68:
	retw.n
.LVL69:
.L62:
	.loc 1 282 0
	l32r	a2, .LC38
.LVL70:
	retw.n
.LVL71:
.L55:
	.loc 1 284 0
	l32r	a2, .LC40
.LVL72:
	retw.n
.LVL73:
.L60:
	.loc 1 286 0
	l32r	a2, .LC42
.LVL74:
	retw.n
.LVL75:
.L59:
	.loc 1 288 0
	l32r	a2, .LC44
.LVL76:
	retw.n
.LVL77:
.L57:
	.loc 1 290 0
	l32r	a2, .LC46
.LVL78:
	retw.n
.LVL79:
.L58:
	.loc 1 292 0
	l32r	a2, .LC48
.LVL80:
	retw.n
.LVL81:
.L28:
	.loc 1 294 0
	l32r	a2, .LC50
.LVL82:
	retw.n
.LVL83:
.L52:
	.loc 1 296 0
	l32r	a2, .LC52
.LVL84:
	retw.n
.LVL85:
.L51:
	.loc 1 298 0
	l32r	a2, .LC54
.LVL86:
	retw.n
.LVL87:
.L49:
	.loc 1 300 0
	l32r	a2, .LC56
.LVL88:
	retw.n
.LVL89:
.L50:
	.loc 1 302 0
	l32r	a2, .LC58
.LVL90:
	retw.n
.LVL91:
.L43:
	.loc 1 304 0
	l32r	a2, .LC60
.LVL92:
	retw.n
.LVL93:
.L48:
	.loc 1 306 0
	l32r	a2, .LC62
.LVL94:
	retw.n
.LVL95:
.L47:
	.loc 1 308 0
	l32r	a2, .LC64
.LVL96:
	retw.n
.LVL97:
.L45:
	.loc 1 310 0
	l32r	a2, .LC66
.LVL98:
	retw.n
.LVL99:
.L46:
	.loc 1 312 0
	l32r	a2, .LC68
.LVL100:
	retw.n
.LVL101:
.L30:
	.loc 1 314 0
	l32r	a2, .LC70
.LVL102:
	retw.n
.LVL103:
.L42:
	.loc 1 316 0
	l32r	a2, .LC72
.LVL104:
	retw.n
.LVL105:
.L41:
	.loc 1 318 0
	l32r	a2, .LC74
.LVL106:
	retw.n
.LVL107:
.L39:
	.loc 1 320 0
	l32r	a2, .LC76
.LVL108:
	retw.n
.LVL109:
.L40:
	.loc 1 322 0
	l32r	a2, .LC78
.LVL110:
	retw.n
.LVL111:
.L32:
	.loc 1 324 0
	l32r	a2, .LC80
.LVL112:
	retw.n
.LVL113:
.L38:
	.loc 1 326 0
	l32r	a2, .LC82
.LVL114:
	retw.n
.LVL115:
.L37:
	.loc 1 328 0
	l32r	a2, .LC84
.LVL116:
	retw.n
.LVL117:
.L34:
	.loc 1 330 0
	l32r	a2, .LC86
.LVL118:
	retw.n
.LVL119:
.L36:
	.loc 1 332 0
	l32r	a2, .LC88
.LVL120:
	retw.n
.LVL121:
.L27:
	.loc 1 335 0
	l32r	a2, .LC90
.LVL122:
	retw.n
.LVL123:
.L75:
	.loc 1 258 0
	l32r	a2, .LC14
.LVL124:
	.loc 1 337 0
	retw.n
.LFE8:
	.size	nghttp2_strerror, .-nghttp2_strerror
	.section	.text.nghttp2_check_header_name,"ax",@progbits
	.literal_position
	.literal .LC91, VALID_HD_NAME_CHARS
	.align	4
	.global	nghttp2_check_header_name
	.type	nghttp2_check_header_name, @function
nghttp2_check_header_name:
.LFB9:
	.loc 1 407 0
.LVL125:
	entry	sp, 32
.LCFI9:
	mov.n	a8, a2
	.loc 1 409 0
	beqz.n	a3, .L81
	.loc 1 412 0
	l8ui	a9, a2, 0
	movi.n	a2, 0x3a
.LVL126:
	bne	a9, a2, .L78
	.loc 1 413 0
	beqi	a3, 1, .L82
	.loc 1 416 0
	addi.n	a8, a8, 1
.LVL127:
	.loc 1 417 0
	addi.n	a3, a3, -1
.LVL128:
.L78:
	.loc 1 419 0
	add.n	a3, a8, a3
.LVL129:
	j	.L79
.L80:
	.loc 1 420 0
	l8ui	a9, a8, 0
	l32r	a2, .LC91
	addx4	a9, a9, a2
	l32i.n	a2, a9, 0
	beqz.n	a2, .L77
	.loc 1 419 0 discriminator 2
	addi.n	a8, a8, 1
.LVL130:
.L79:
	.loc 1 419 0 is_stmt 0 discriminator 1
	bne	a8, a3, .L80
	.loc 1 424 0 is_stmt 1
	movi.n	a2, 1
	retw.n
.LVL131:
.L81:
	.loc 1 410 0
	movi.n	a2, 0
.LVL132:
	retw.n
.L82:
	.loc 1 414 0
	movi.n	a2, 0
.LVL133:
.L77:
	.loc 1 425 0
	retw.n
.LFE9:
	.size	nghttp2_check_header_name, .-nghttp2_check_header_name
	.section	.text.nghttp2_check_header_value,"ax",@progbits
	.literal_position
	.literal .LC92, VALID_HD_VALUE_CHARS
	.align	4
	.global	nghttp2_check_header_value
	.type	nghttp2_check_header_value, @function
nghttp2_check_header_value:
.LFB10:
	.loc 1 495 0
.LVL134:
	entry	sp, 32
.LCFI10:
	mov.n	a8, a2
	.loc 1 497 0
	add.n	a3, a2, a3
.LVL135:
	j	.L84
.LVL136:
.L86:
	.loc 1 498 0
	l8ui	a9, a8, 0
	l32r	a2, .LC92
	addx4	a9, a9, a2
	l32i.n	a2, a9, 0
	beqz.n	a2, .L85
	.loc 1 497 0 discriminator 2
	addi.n	a8, a8, 1
.LVL137:
.L84:
	.loc 1 497 0 is_stmt 0 discriminator 1
	bne	a8, a3, .L86
	.loc 1 502 0 is_stmt 1
	movi.n	a2, 1
.L85:
	.loc 1 503 0
	retw.n
.LFE10:
	.size	nghttp2_check_header_value, .-nghttp2_check_header_value
	.section	.text.nghttp2_cpymem,"ax",@progbits
	.align	4
	.global	nghttp2_cpymem
	.type	nghttp2_cpymem, @function
nghttp2_cpymem:
.LFB11:
	.loc 1 505 0
.LVL138:
	entry	sp, 32
.LCFI11:
	.loc 1 506 0
	beqz.n	a4, .L88
	.loc 1 510 0
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	memcpy
.LVL139:
	.loc 1 512 0
	add.n	a2, a2, a4
.LVL140:
.L88:
	.loc 1 513 0
	retw.n
.LFE11:
	.size	nghttp2_cpymem, .-nghttp2_cpymem
	.section	.rodata.str1.4
	.align	4
.LC93:
	.string	"NO_ERROR"
	.align	4
.LC95:
	.string	"PROTOCOL_ERROR"
	.align	4
.LC97:
	.string	"INTERNAL_ERROR"
	.align	4
.LC99:
	.string	"FLOW_CONTROL_ERROR"
	.align	4
.LC101:
	.string	"SETTINGS_TIMEOUT"
	.align	4
.LC103:
	.string	"STREAM_CLOSED"
	.align	4
.LC105:
	.string	"FRAME_SIZE_ERROR"
	.align	4
.LC107:
	.string	"REFUSED_STREAM"
	.align	4
.LC109:
	.string	"CANCEL"
	.align	4
.LC111:
	.string	"COMPRESSION_ERROR"
	.align	4
.LC113:
	.string	"CONNECT_ERROR"
	.align	4
.LC115:
	.string	"ENHANCE_YOUR_CALM"
	.align	4
.LC117:
	.string	"INADEQUATE_SECURITY"
	.align	4
.LC119:
	.string	"HTTP_1_1_REQUIRED"
	.align	4
.LC121:
	.string	"unknown"
	.section	.text.nghttp2_http2_strerror,"ax",@progbits
	.literal_position
	.literal .LC94, .LC93
	.literal .LC96, .LC95
	.literal .LC98, .LC97
	.literal .LC100, .LC99
	.literal .LC102, .LC101
	.literal .LC104, .LC103
	.literal .LC106, .LC105
	.literal .LC108, .LC107
	.literal .LC110, .LC109
	.literal .LC112, .LC111
	.literal .LC114, .LC113
	.literal .LC116, .LC115
	.literal .LC118, .LC117
	.literal .LC120, .LC119
	.literal .LC122, .LC121
	.literal .LC123, .L93
	.align	4
	.global	nghttp2_http2_strerror
	.type	nghttp2_http2_strerror, @function
nghttp2_http2_strerror:
.LFB12:
	.loc 1 515 0
.LVL141:
	entry	sp, 32
.LCFI12:
	.loc 1 516 0
	movi.n	a8, 0xd
	bltu	a8, a2, .L91
	l32r	a8, .LC123
	addx4	a2, a2, a8
.LVL142:
	l32i.n	a2, a2, 0
	jx	a2
	.section	.rodata.nghttp2_http2_strerror,"a",@progbits
	.align	4
	.align	4
.L93:
	.word	.L92
	.word	.L107
	.word	.L95
	.word	.L96
	.word	.L97
	.word	.L98
	.word	.L99
	.word	.L100
	.word	.L101
	.word	.L102
	.word	.L103
	.word	.L104
	.word	.L105
	.word	.L106
	.section	.text.nghttp2_http2_strerror
.L92:
	.loc 1 518 0
	l32r	a2, .LC94
	retw.n
.L95:
	.loc 1 522 0
	l32r	a2, .LC98
	retw.n
.L96:
	.loc 1 524 0
	l32r	a2, .LC100
	retw.n
.L97:
	.loc 1 526 0
	l32r	a2, .LC102
	retw.n
.L98:
	.loc 1 528 0
	l32r	a2, .LC104
	retw.n
.L99:
	.loc 1 530 0
	l32r	a2, .LC106
	retw.n
.L100:
	.loc 1 532 0
	l32r	a2, .LC108
	retw.n
.L101:
	.loc 1 534 0
	l32r	a2, .LC110
	retw.n
.L102:
	.loc 1 536 0
	l32r	a2, .LC112
	retw.n
.L103:
	.loc 1 538 0
	l32r	a2, .LC114
	retw.n
.L104:
	.loc 1 540 0
	l32r	a2, .LC116
	retw.n
.L105:
	.loc 1 542 0
	l32r	a2, .LC118
	retw.n
.L106:
	.loc 1 544 0
	l32r	a2, .LC120
	retw.n
.LVL143:
.L91:
	.loc 1 546 0
	l32r	a2, .LC122
.LVL144:
	retw.n
.L107:
	.loc 1 520 0
	l32r	a2, .LC96
	.loc 1 548 0
	retw.n
.LFE12:
	.size	nghttp2_http2_strerror, .-nghttp2_http2_strerror
	.section	.rodata.__func__$4087,"a",@progbits
	.align	4
	.type	__func__$4087, @object
	.size	__func__$4087, 35
__func__$4087:
	.string	"nghttp2_increase_local_window_size"
	.section	.rodata.VALID_HD_VALUE_CHARS,"a",@progbits
	.align	4
	.type	VALID_HD_VALUE_CHARS, @object
	.size	VALID_HD_VALUE_CHARS, 1024
VALID_HD_VALUE_CHARS:
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	1
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	0
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.section	.rodata.VALID_HD_NAME_CHARS,"a",@progbits
	.align	4
	.type	VALID_HD_NAME_CHARS, @object
	.size	VALID_HD_NAME_CHARS, 1024
VALID_HD_NAME_CHARS:
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	1
	.word	0
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	0
	.word	0
	.word	1
	.word	1
	.word	0
	.word	1
	.word	1
	.word	0
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	0
	.word	1
	.word	0
	.word	1
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.section	.rodata.DOWNCASE_TBL,"a",@progbits
	.align	4
	.type	DOWNCASE_TBL, @object
	.size	DOWNCASE_TBL, 256
DOWNCASE_TBL:
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
	.byte	62
	.byte	63
	.byte	64
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
	.byte	91
	.byte	92
	.byte	93
	.byte	94
	.byte	95
	.byte	96
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
	.byte	123
	.byte	124
	.byte	125
	.byte	126
	.byte	127
	.byte	-128
	.byte	-127
	.byte	-126
	.byte	-125
	.byte	-124
	.byte	-123
	.byte	-122
	.byte	-121
	.byte	-120
	.byte	-119
	.byte	-118
	.byte	-117
	.byte	-116
	.byte	-115
	.byte	-114
	.byte	-113
	.byte	-112
	.byte	-111
	.byte	-110
	.byte	-109
	.byte	-108
	.byte	-107
	.byte	-106
	.byte	-105
	.byte	-104
	.byte	-103
	.byte	-102
	.byte	-101
	.byte	-100
	.byte	-99
	.byte	-98
	.byte	-97
	.byte	-96
	.byte	-95
	.byte	-94
	.byte	-93
	.byte	-92
	.byte	-91
	.byte	-90
	.byte	-89
	.byte	-88
	.byte	-87
	.byte	-86
	.byte	-85
	.byte	-84
	.byte	-83
	.byte	-82
	.byte	-81
	.byte	-80
	.byte	-79
	.byte	-78
	.byte	-77
	.byte	-76
	.byte	-75
	.byte	-74
	.byte	-73
	.byte	-72
	.byte	-71
	.byte	-70
	.byte	-69
	.byte	-68
	.byte	-67
	.byte	-66
	.byte	-65
	.byte	-64
	.byte	-63
	.byte	-62
	.byte	-61
	.byte	-60
	.byte	-59
	.byte	-58
	.byte	-57
	.byte	-56
	.byte	-55
	.byte	-54
	.byte	-53
	.byte	-52
	.byte	-51
	.byte	-50
	.byte	-49
	.byte	-48
	.byte	-47
	.byte	-46
	.byte	-45
	.byte	-44
	.byte	-43
	.byte	-42
	.byte	-41
	.byte	-40
	.byte	-39
	.byte	-38
	.byte	-37
	.byte	-36
	.byte	-35
	.byte	-34
	.byte	-33
	.byte	-32
	.byte	-31
	.byte	-30
	.byte	-29
	.byte	-28
	.byte	-27
	.byte	-26
	.byte	-25
	.byte	-24
	.byte	-23
	.byte	-22
	.byte	-21
	.byte	-20
	.byte	-19
	.byte	-18
	.byte	-17
	.byte	-16
	.byte	-15
	.byte	-14
	.byte	-13
	.byte	-12
	.byte	-11
	.byte	-10
	.byte	-9
	.byte	-8
	.byte	-7
	.byte	-6
	.byte	-5
	.byte	-4
	.byte	-3
	.byte	-2
	.byte	-1
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
	.uleb128 0x20
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
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 3 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/nghttp/nghttp2/lib/includes/nghttp2/nghttp2.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/assert.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x6dc
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF104
	.byte	0xc
	.4byte	.LASF105
	.4byte	.LASF106
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF3
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
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x2
	.byte	0x16
	.4byte	0x50
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x19
	.4byte	0x62
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x2
	.byte	0x1a
	.4byte	0x74
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x3
	.byte	0xd8
	.4byte	0x74
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0x5
	.byte	0x4
	.4byte	0xb6
	.uleb128 0x6
	.4byte	0xa9
	.uleb128 0x5
	.byte	0x4
	.4byte	0xc1
	.uleb128 0x7
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x4
	.byte	0x15
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x4
	.byte	0x21
	.4byte	0x45
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x4
	.byte	0x2c
	.4byte	0x57
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x4
	.byte	0x2d
	.4byte	0x69
	.uleb128 0x8
	.byte	0x4
	.4byte	0x62
	.byte	0x5
	.byte	0xe7
	.4byte	0x20c
	.uleb128 0x9
	.4byte	.LASF20
	.sleb128 -501
	.uleb128 0x9
	.4byte	.LASF21
	.sleb128 -502
	.uleb128 0x9
	.4byte	.LASF22
	.sleb128 -503
	.uleb128 0x9
	.4byte	.LASF23
	.sleb128 -504
	.uleb128 0x9
	.4byte	.LASF24
	.sleb128 -505
	.uleb128 0x9
	.4byte	.LASF25
	.sleb128 -506
	.uleb128 0x9
	.4byte	.LASF26
	.sleb128 -507
	.uleb128 0x9
	.4byte	.LASF27
	.sleb128 -508
	.uleb128 0x9
	.4byte	.LASF28
	.sleb128 -509
	.uleb128 0x9
	.4byte	.LASF29
	.sleb128 -510
	.uleb128 0x9
	.4byte	.LASF30
	.sleb128 -511
	.uleb128 0x9
	.4byte	.LASF31
	.sleb128 -512
	.uleb128 0x9
	.4byte	.LASF32
	.sleb128 -513
	.uleb128 0x9
	.4byte	.LASF33
	.sleb128 -514
	.uleb128 0x9
	.4byte	.LASF34
	.sleb128 -515
	.uleb128 0x9
	.4byte	.LASF35
	.sleb128 -516
	.uleb128 0x9
	.4byte	.LASF36
	.sleb128 -517
	.uleb128 0x9
	.4byte	.LASF37
	.sleb128 -518
	.uleb128 0x9
	.4byte	.LASF38
	.sleb128 -519
	.uleb128 0x9
	.4byte	.LASF39
	.sleb128 -521
	.uleb128 0x9
	.4byte	.LASF40
	.sleb128 -522
	.uleb128 0x9
	.4byte	.LASF41
	.sleb128 -523
	.uleb128 0x9
	.4byte	.LASF42
	.sleb128 -524
	.uleb128 0x9
	.4byte	.LASF43
	.sleb128 -525
	.uleb128 0x9
	.4byte	.LASF44
	.sleb128 -526
	.uleb128 0x9
	.4byte	.LASF45
	.sleb128 -527
	.uleb128 0x9
	.4byte	.LASF46
	.sleb128 -528
	.uleb128 0x9
	.4byte	.LASF47
	.sleb128 -529
	.uleb128 0x9
	.4byte	.LASF48
	.sleb128 -530
	.uleb128 0x9
	.4byte	.LASF49
	.sleb128 -531
	.uleb128 0x9
	.4byte	.LASF50
	.sleb128 -532
	.uleb128 0x9
	.4byte	.LASF51
	.sleb128 -533
	.uleb128 0x9
	.4byte	.LASF52
	.sleb128 -534
	.uleb128 0x9
	.4byte	.LASF53
	.sleb128 -535
	.uleb128 0x9
	.4byte	.LASF54
	.sleb128 -900
	.uleb128 0x9
	.4byte	.LASF55
	.sleb128 -901
	.uleb128 0x9
	.4byte	.LASF56
	.sleb128 -902
	.uleb128 0x9
	.4byte	.LASF57
	.sleb128 -903
	.uleb128 0x9
	.4byte	.LASF58
	.sleb128 -904
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xc2
	.uleb128 0xa
	.byte	0x4
	.4byte	0x74
	.byte	0x5
	.2byte	0x2b4
	.4byte	0x274
	.uleb128 0xb
	.4byte	.LASF59
	.byte	0
	.uleb128 0xb
	.4byte	.LASF60
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF61
	.byte	0x2
	.uleb128 0xb
	.4byte	.LASF62
	.byte	0x3
	.uleb128 0xb
	.4byte	.LASF63
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF64
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF65
	.byte	0x6
	.uleb128 0xb
	.4byte	.LASF66
	.byte	0x7
	.uleb128 0xb
	.4byte	.LASF67
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF68
	.byte	0x9
	.uleb128 0xb
	.4byte	.LASF69
	.byte	0xa
	.uleb128 0xb
	.4byte	.LASF70
	.byte	0xb
	.uleb128 0xb
	.4byte	.LASF71
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF72
	.byte	0xd
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x27a
	.uleb128 0x6
	.4byte	0xc2
	.uleb128 0xc
	.4byte	.LASF73
	.byte	0x1
	.byte	0x20
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2bb
	.uleb128 0xd
	.string	"buf"
	.byte	0x1
	.byte	0x20
	.4byte	0x20c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xe
	.string	"n"
	.byte	0x1
	.byte	0x20
	.4byte	0xcd
	.4byte	.LLST0
	.uleb128 0xf
	.string	"x"
	.byte	0x1
	.byte	0x21
	.4byte	0xcd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0xc
	.4byte	.LASF74
	.byte	0x1
	.byte	0x25
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2f7
	.uleb128 0xd
	.string	"buf"
	.byte	0x1
	.byte	0x25
	.4byte	0x20c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xe
	.string	"n"
	.byte	0x1
	.byte	0x25
	.4byte	0xe3
	.4byte	.LLST1
	.uleb128 0xf
	.string	"x"
	.byte	0x1
	.byte	0x26
	.4byte	0xe3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x10
	.4byte	.LASF76
	.byte	0x1
	.byte	0x2a
	.4byte	0xcd
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x32c
	.uleb128 0x11
	.4byte	.LASF75
	.byte	0x1
	.byte	0x2a
	.4byte	0x274
	.4byte	.LLST2
	.uleb128 0xf
	.string	"n"
	.byte	0x1
	.byte	0x2b
	.4byte	0xcd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x10
	.4byte	.LASF77
	.byte	0x1
	.byte	0x30
	.4byte	0xe3
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x361
	.uleb128 0x11
	.4byte	.LASF75
	.byte	0x1
	.byte	0x30
	.4byte	0x274
	.4byte	.LLST3
	.uleb128 0xf
	.string	"n"
	.byte	0x1
	.byte	0x31
	.4byte	0xe3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0xc
	.4byte	.LASF78
	.byte	0x1
	.byte	0x7a
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x39c
	.uleb128 0xd
	.string	"s"
	.byte	0x1
	.byte	0x7a
	.4byte	0x20c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xd
	.string	"len"
	.byte	0x1
	.byte	0x7a
	.4byte	0x89
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x12
	.string	"i"
	.byte	0x1
	.byte	0x7b
	.4byte	0x89
	.4byte	.LLST4
	.byte	0
	.uleb128 0x10
	.4byte	.LASF79
	.byte	0x1
	.byte	0x9b
	.4byte	0x62
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x423
	.uleb128 0x11
	.4byte	.LASF80
	.byte	0x1
	.byte	0x9b
	.4byte	0x423
	.4byte	.LLST5
	.uleb128 0x11
	.4byte	.LASF81
	.byte	0x1
	.byte	0x9c
	.4byte	0x423
	.4byte	.LLST6
	.uleb128 0x11
	.4byte	.LASF82
	.byte	0x1
	.byte	0x9d
	.4byte	0x423
	.4byte	.LLST7
	.uleb128 0x13
	.4byte	.LASF83
	.byte	0x1
	.byte	0x9e
	.4byte	0x423
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x14
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x15
	.4byte	.LASF84
	.byte	0x1
	.byte	0xa0
	.4byte	0xd8
	.4byte	.LLST8
	.uleb128 0x15
	.4byte	.LASF85
	.byte	0x1
	.byte	0xa1
	.4byte	0xd8
	.4byte	.LLST9
	.uleb128 0x15
	.4byte	.LASF86
	.byte	0x1
	.byte	0xa2
	.4byte	0xd8
	.4byte	.LLST10
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xd8
	.uleb128 0x10
	.4byte	.LASF87
	.byte	0x1
	.byte	0xd8
	.4byte	0x62
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4d1
	.uleb128 0x11
	.4byte	.LASF80
	.byte	0x1
	.byte	0xd8
	.4byte	0x423
	.4byte	.LLST11
	.uleb128 0x13
	.4byte	.LASF81
	.byte	0x1
	.byte	0xd9
	.4byte	0x423
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x13
	.4byte	.LASF82
	.byte	0x1
	.byte	0xda
	.4byte	0x423
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x13
	.4byte	.LASF83
	.byte	0x1
	.byte	0xdb
	.4byte	0x423
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x15
	.4byte	.LASF84
	.byte	0x1
	.byte	0xdc
	.4byte	0xd8
	.4byte	.LLST12
	.uleb128 0x15
	.4byte	.LASF85
	.byte	0x1
	.byte	0xdd
	.4byte	0xd8
	.4byte	.LLST13
	.uleb128 0x16
	.4byte	.LASF107
	.4byte	0x4e1
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$4087
	.uleb128 0x17
	.4byte	.LVL35
	.4byte	0x6cb
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xe1
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$4087
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	0xa9
	.4byte	0x4e1
	.uleb128 0x1a
	.4byte	0x9b
	.byte	0x22
	.byte	0
	.uleb128 0x6
	.4byte	0x4d1
	.uleb128 0x10
	.4byte	.LASF88
	.byte	0x1
	.byte	0xf8
	.4byte	0x62
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x51c
	.uleb128 0x11
	.4byte	.LASF89
	.byte	0x1
	.byte	0xf8
	.4byte	0xd8
	.4byte	.LLST14
	.uleb128 0x13
	.4byte	.LASF90
	.byte	0x1
	.byte	0xf9
	.4byte	0xd8
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x10
	.4byte	.LASF91
	.byte	0x1
	.byte	0xfd
	.4byte	0xb0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x545
	.uleb128 0x11
	.4byte	.LASF92
	.byte	0x1
	.byte	0xfd
	.4byte	0x62
	.4byte	.LLST15
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF93
	.byte	0x1
	.2byte	0x197
	.4byte	0x62
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x590
	.uleb128 0x1c
	.4byte	.LASF94
	.byte	0x1
	.2byte	0x197
	.4byte	0x274
	.4byte	.LLST16
	.uleb128 0x1d
	.string	"len"
	.byte	0x1
	.2byte	0x197
	.4byte	0x89
	.4byte	.LLST17
	.uleb128 0x1e
	.4byte	.LASF95
	.byte	0x1
	.2byte	0x198
	.4byte	0x274
	.4byte	.LLST18
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF96
	.byte	0x1
	.2byte	0x1ef
	.4byte	0x62
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5d9
	.uleb128 0x1c
	.4byte	.LASF97
	.byte	0x1
	.2byte	0x1ef
	.4byte	0x274
	.4byte	.LLST19
	.uleb128 0x1d
	.string	"len"
	.byte	0x1
	.2byte	0x1ef
	.4byte	0x89
	.4byte	.LLST20
	.uleb128 0x1f
	.4byte	.LASF95
	.byte	0x1
	.2byte	0x1f0
	.4byte	0x274
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF98
	.byte	0x1
	.2byte	0x1f9
	.4byte	0x20c
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x63c
	.uleb128 0x1c
	.4byte	.LASF99
	.byte	0x1
	.2byte	0x1f9
	.4byte	0x20c
	.4byte	.LLST21
	.uleb128 0x20
	.string	"src"
	.byte	0x1
	.2byte	0x1f9
	.4byte	0xbb
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x20
	.string	"len"
	.byte	0x1
	.2byte	0x1f9
	.4byte	0x89
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x17
	.4byte	.LVL139
	.4byte	0x6d6
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF100
	.byte	0x1
	.2byte	0x203
	.4byte	0xb0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x667
	.uleb128 0x1c
	.4byte	.LASF92
	.byte	0x1
	.2byte	0x203
	.4byte	0xe3
	.4byte	.LLST22
	.byte	0
	.uleb128 0x19
	.4byte	0xc2
	.4byte	0x677
	.uleb128 0x1a
	.4byte	0x9b
	.byte	0xff
	.byte	0
	.uleb128 0x21
	.4byte	.LASF101
	.byte	0x1
	.byte	0x37
	.4byte	0x688
	.uleb128 0x5
	.byte	0x3
	.4byte	DOWNCASE_TBL
	.uleb128 0x6
	.4byte	0x667
	.uleb128 0x19
	.4byte	0x62
	.4byte	0x69d
	.uleb128 0x1a
	.4byte	0x9b
	.byte	0xff
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF102
	.byte	0x1
	.2byte	0x154
	.4byte	0x6af
	.uleb128 0x5
	.byte	0x3
	.4byte	VALID_HD_NAME_CHARS
	.uleb128 0x6
	.4byte	0x68d
	.uleb128 0x1f
	.4byte	.LASF103
	.byte	0x1
	.2byte	0x1ac
	.4byte	0x6c6
	.uleb128 0x5
	.byte	0x3
	.4byte	VALID_HD_VALUE_CHARS
	.uleb128 0x6
	.4byte	0x68d
	.uleb128 0x22
	.4byte	.LASF108
	.4byte	.LASF108
	.byte	0x6
	.byte	0x29
	.uleb128 0x23
	.4byte	.LASF109
	.4byte	.LASF109
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
	.uleb128 0x26
	.byte	0
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
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x4
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x23
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
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL1
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL3
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL5
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL7
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL12
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL18
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
	.4byte	.LVL25
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL25
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
	.4byte	.LVL31
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL32
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL12
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL20
	.4byte	.LVL22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL12
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL19
	.4byte	.LVL22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL18
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL16
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL25
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL13
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL17
	.4byte	.LVL22
	.2byte	0x7
	.byte	0x7b
	.sleb128 -2147483647
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL33
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL40
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL34
	.4byte	.LVL35-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL39
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL44
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL47
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
	.4byte	.LVL53
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL56
	.4byte	.LVL57
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL57
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
	.4byte	.LVL67
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL67
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL68
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
	.4byte	.LVL71
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL71
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL72
	.4byte	.LVL73
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL73
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL74
	.4byte	.LVL75
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL75
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
	.4byte	.LVL89
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL89
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL90
	.4byte	.LVL91
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL91
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL92
	.4byte	.LVL93
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL93
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL94
	.4byte	.LVL95
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL95
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
	.4byte	.LVL111
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL111
	.4byte	.LVL112
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL112
	.4byte	.LVL113
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL113
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
	.4byte	.LVL117
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL117
	.4byte	.LVL118
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL118
	.4byte	.LVL119
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL119
	.4byte	.LVL120
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL120
	.4byte	.LVL121
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL121
	.4byte	.LVL122
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL122
	.4byte	.LVL123
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL123
	.4byte	.LVL124
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL124
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL125
	.4byte	.LVL126
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL126
	.4byte	.LVL131
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL131
	.4byte	.LVL132
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL132
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL125
	.4byte	.LVL128
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL128
	.4byte	.LVL129
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL131
	.4byte	.LVL133
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL129
	.4byte	.LVL131
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL134
	.4byte	.LVL136
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL136
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL134
	.4byte	.LVL135
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL135
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL138
	.4byte	.LVL140
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL140
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL141
	.4byte	.LVL142
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL142
	.4byte	.LVL143
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL143
	.4byte	.LVL144
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL144
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
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
	.4byte	.LBB2
	.4byte	.LBE2
	.4byte	.LBB3
	.4byte	.LBE3
	.4byte	0
	.4byte	0
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
.LASF66:
	.string	"NGHTTP2_REFUSED_STREAM"
.LASF37:
	.string	"NGHTTP2_ERR_INVALID_HEADER_BLOCK"
.LASF87:
	.string	"nghttp2_increase_local_window_size"
.LASF88:
	.string	"nghttp2_should_send_window_update"
.LASF99:
	.string	"dest"
.LASF0:
	.string	"signed char"
.LASF63:
	.string	"NGHTTP2_SETTINGS_TIMEOUT"
.LASF48:
	.string	"NGHTTP2_ERR_SESSION_CLOSING"
.LASF2:
	.string	"short int"
.LASF11:
	.string	"size_t"
.LASF78:
	.string	"nghttp2_downcase"
.LASF32:
	.string	"NGHTTP2_ERR_INVALID_STREAM_ID"
.LASF31:
	.string	"NGHTTP2_ERR_STREAM_SHUT_WR"
.LASF77:
	.string	"nghttp2_get_uint32"
.LASF30:
	.string	"NGHTTP2_ERR_STREAM_CLOSING"
.LASF85:
	.string	"delta"
.LASF81:
	.string	"recv_window_size_ptr"
.LASF51:
	.string	"NGHTTP2_ERR_REFUSED_STREAM"
.LASF7:
	.string	"__uint32_t"
.LASF27:
	.string	"NGHTTP2_ERR_DEFERRED"
.LASF4:
	.string	"__uint16_t"
.LASF82:
	.string	"recv_reduction_ptr"
.LASF46:
	.string	"NGHTTP2_ERR_PUSH_DISABLED"
.LASF59:
	.string	"NGHTTP2_NO_ERROR"
.LASF97:
	.string	"value"
.LASF20:
	.string	"NGHTTP2_ERR_INVALID_ARGUMENT"
.LASF61:
	.string	"NGHTTP2_INTERNAL_ERROR"
.LASF100:
	.string	"nghttp2_http2_strerror"
.LASF16:
	.string	"uint8_t"
.LASF42:
	.string	"NGHTTP2_ERR_FLOW_CONTROL"
.LASF92:
	.string	"error_code"
.LASF91:
	.string	"nghttp2_strerror"
.LASF109:
	.string	"memcpy"
.LASF90:
	.string	"recv_window_size"
.LASF84:
	.string	"recv_reduction_delta"
.LASF58:
	.string	"NGHTTP2_ERR_FLOODED"
.LASF29:
	.string	"NGHTTP2_ERR_STREAM_CLOSED"
.LASF22:
	.string	"NGHTTP2_ERR_UNSUPPORTED_VERSION"
.LASF83:
	.string	"delta_ptr"
.LASF9:
	.string	"long long int"
.LASF10:
	.string	"long long unsigned int"
.LASF103:
	.string	"VALID_HD_VALUE_CHARS"
.LASF65:
	.string	"NGHTTP2_FRAME_SIZE_ERROR"
.LASF72:
	.string	"NGHTTP2_HTTP_1_1_REQUIRED"
.LASF34:
	.string	"NGHTTP2_ERR_DEFERRED_DATA_EXIST"
.LASF12:
	.string	"long int"
.LASF21:
	.string	"NGHTTP2_ERR_BUFFER_ERROR"
.LASF93:
	.string	"nghttp2_check_header_name"
.LASF54:
	.string	"NGHTTP2_ERR_FATAL"
.LASF45:
	.string	"NGHTTP2_ERR_TOO_MANY_INFLIGHT_SETTINGS"
.LASF40:
	.string	"NGHTTP2_ERR_FRAME_SIZE_ERROR"
.LASF23:
	.string	"NGHTTP2_ERR_WOULDBLOCK"
.LASF94:
	.string	"name"
.LASF64:
	.string	"NGHTTP2_STREAM_CLOSED"
.LASF50:
	.string	"NGHTTP2_ERR_HTTP_MESSAGING"
.LASF38:
	.string	"NGHTTP2_ERR_INVALID_STATE"
.LASF35:
	.string	"NGHTTP2_ERR_START_STREAM_NOT_ALLOWED"
.LASF1:
	.string	"unsigned char"
.LASF74:
	.string	"nghttp2_put_uint32be"
.LASF26:
	.string	"NGHTTP2_ERR_EOF"
.LASF73:
	.string	"nghttp2_put_uint16be"
.LASF25:
	.string	"NGHTTP2_ERR_INVALID_FRAME"
.LASF19:
	.string	"uint32_t"
.LASF8:
	.string	"unsigned int"
.LASF44:
	.string	"NGHTTP2_ERR_PAUSE"
.LASF14:
	.string	"long unsigned int"
.LASF86:
	.string	"new_recv_window_size"
.LASF95:
	.string	"last"
.LASF52:
	.string	"NGHTTP2_ERR_INTERNAL"
.LASF76:
	.string	"nghttp2_get_uint16"
.LASF5:
	.string	"short unsigned int"
.LASF70:
	.string	"NGHTTP2_ENHANCE_YOUR_CALM"
.LASF41:
	.string	"NGHTTP2_ERR_HEADER_COMP"
.LASF96:
	.string	"nghttp2_check_header_value"
.LASF102:
	.string	"VALID_HD_NAME_CHARS"
.LASF15:
	.string	"char"
.LASF17:
	.string	"uint16_t"
.LASF18:
	.string	"int32_t"
.LASF43:
	.string	"NGHTTP2_ERR_INSUFF_BUFSIZE"
.LASF49:
	.string	"NGHTTP2_ERR_HTTP_HEADER"
.LASF60:
	.string	"NGHTTP2_PROTOCOL_ERROR"
.LASF55:
	.string	"NGHTTP2_ERR_NOMEM"
.LASF106:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\nghttp"
.LASF75:
	.string	"data"
.LASF57:
	.string	"NGHTTP2_ERR_BAD_CLIENT_MAGIC"
.LASF107:
	.string	"__func__"
.LASF71:
	.string	"NGHTTP2_INADEQUATE_SECURITY"
.LASF56:
	.string	"NGHTTP2_ERR_CALLBACK_FAILURE"
.LASF69:
	.string	"NGHTTP2_CONNECT_ERROR"
.LASF98:
	.string	"nghttp2_cpymem"
.LASF36:
	.string	"NGHTTP2_ERR_GOAWAY_ALREADY_SENT"
.LASF79:
	.string	"nghttp2_adjust_local_window_size"
.LASF39:
	.string	"NGHTTP2_ERR_TEMPORAL_CALLBACK_FAILURE"
.LASF6:
	.string	"__int32_t"
.LASF62:
	.string	"NGHTTP2_FLOW_CONTROL_ERROR"
.LASF68:
	.string	"NGHTTP2_COMPRESSION_ERROR"
.LASF13:
	.string	"sizetype"
.LASF33:
	.string	"NGHTTP2_ERR_INVALID_STREAM_STATE"
.LASF28:
	.string	"NGHTTP2_ERR_STREAM_ID_NOT_AVAILABLE"
.LASF67:
	.string	"NGHTTP2_CANCEL"
.LASF89:
	.string	"local_window_size"
.LASF108:
	.string	"__assert_func"
.LASF80:
	.string	"local_window_size_ptr"
.LASF104:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF47:
	.string	"NGHTTP2_ERR_DATA_EXIST"
.LASF24:
	.string	"NGHTTP2_ERR_PROTO"
.LASF105:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/nghttp/nghttp2/lib/nghttp2_helper.c"
.LASF101:
	.string	"DOWNCASE_TBL"
.LASF3:
	.string	"__uint8_t"
.LASF53:
	.string	"NGHTTP2_ERR_CANCEL"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
