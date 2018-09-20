	.file	"alarm.c"
	.text
.Ltext0:
	.section	.text.alarm_cbs_lookfor_available,"ax",@progbits
	.literal_position
	.literal .LC0, alarm_cbs
	.align	4
	.type	alarm_cbs_lookfor_available, @function
alarm_cbs_lookfor_available:
.LFB30:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/osi/alarm.c"
	.loc 1 110 0
	entry	sp, 32
.LCFI0:
.LVL0:
	.loc 1 113 0
	movi.n	a8, 0
	j	.L2
.LVL1:
.L5:
	.loc 1 114 0
	addx2	a10, a8, a8
	slli	a9, a10, 3
	l32r	a10, .LC0
	add.n	a9, a10, a9
	l32i.n	a9, a9, 0
	bnez.n	a9, .L3
	.loc 1 116 0
	addx2	a8, a8, a8
.LVL2:
	slli	a9, a8, 3
	add.n	a2, a9, a10
	retw.n
.LVL3:
.L3:
	.loc 1 113 0 discriminator 2
	addi.n	a8, a8, 1
.LVL4:
.L2:
	.loc 1 113 0 is_stmt 0 discriminator 1
	movi.n	a9, 0x1d
	bge	a9, a8, .L5
	.loc 1 120 0 is_stmt 1
	movi.n	a2, 0
	.loc 1 121 0
	retw.n
.LFE30:
	.size	alarm_cbs_lookfor_available, .-alarm_cbs_lookfor_available
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC2:
	.string	"BT_OSI"
	.align	4
.LC4:
	.string	"\033[0;31mE (%d) %s: %s null\n\033[0m\n"
	.align	4
.LC6:
	.string	"\033[0;31mE (%d) %s: %s failed to delete timer, err 0x%x\n\033[0m\n"
	.section	.text.alarm_free,"ax",@progbits
	.literal_position
	.literal .LC1, __func__$5804
	.literal .LC3, .LC2
	.literal .LC5, .LC4
	.literal .LC7, .LC6
	.align	4
	.type	alarm_free, @function
alarm_free:
.LFB33:
	.loc 1 183 0
.LVL5:
	entry	sp, 48
.LCFI1:
	.loc 1 184 0
	beqz.n	a2, .L7
	.loc 1 184 0 is_stmt 0 discriminator 1
	l32i.n	a10, a2, 0
	bnez.n	a10, .L8
.L7:
	.loc 1 185 0 is_stmt 1 discriminator 1
	call8	esp_log_timestamp
.LVL6:
	l32r	a11, .LC3
	l32r	a15, .LC1
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC5
	movi.n	a10, 1
	call8	esp_log_write
.LVL7:
	.loc 1 186 0 discriminator 1
	movi.n	a2, -2
.LVL8:
	retw.n
.LVL9:
.L8:
	.loc 1 188 0
	call8	esp_timer_stop
.LVL10:
	.loc 1 189 0
	l32i.n	a10, a2, 0
	call8	esp_timer_delete
.LVL11:
	mov.n	a3, a10
.LVL12:
	.loc 1 190 0
	beqz.n	a10, .L10
	.loc 1 191 0 discriminator 1
	call8	esp_log_timestamp
.LVL13:
	l32r	a11, .LC3
	s32i.n	a3, sp, 0
	l32r	a15, .LC1
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC7
	movi.n	a10, 1
	call8	esp_log_write
.LVL14:
	.loc 1 192 0 discriminator 1
	movi.n	a2, -1
.LVL15:
	retw.n
.LVL16:
.L10:
	.loc 1 195 0
	movi.n	a12, 0x18
	movi.n	a11, 0
	mov.n	a10, a2
	call8	memset
.LVL17:
	.loc 1 196 0
	movi.n	a2, 0
.LVL18:
	.loc 1 197 0
	retw.n
.LFE33:
	.size	alarm_free, .-alarm_free
	.section	.rodata.str1.4
	.align	4
.LC11:
	.string	"\033[0;33mW (%d) %s: %s, invalid state %d\n\033[0m\n"
	.section	.text.alarm_cb_handler,"ax",@progbits
	.literal_position
	.literal .LC8, alarm_state
	.literal .LC9, __func__$5787
	.literal .LC10, .LC2
	.literal .LC12, .LC11
	.align	4
	.type	alarm_cb_handler, @function
alarm_cb_handler:
.LFB31:
	.loc 1 124 0
.LVL19:
	entry	sp, 64
.LCFI2:
	.loc 1 126 0
	l32r	a8, .LC8
	l32i.n	a8, a8, 0
	beqi	a8, 1, .L12
	.loc 1 127 0 discriminator 1
	call8	esp_log_timestamp
.LVL20:
	l32r	a11, .LC10
	l32r	a2, .LC8
.LVL21:
	l32i.n	a2, a2, 0
	s32i.n	a2, sp, 0
	l32r	a15, .LC9
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC12
	movi.n	a10, 2
	call8	esp_log_write
.LVL22:
	retw.n
.LVL23:
.L12:
	.loc 1 132 0
	movi.n	a8, 0
	s8i	a8, sp, 16
	.loc 1 133 0
	movi.n	a8, 9
	s8i	a8, sp, 18
	.loc 1 134 0
	l32i.n	a8, a2, 4
	s32i.n	a8, sp, 24
	.loc 1 135 0
	l32i.n	a2, a2, 8
.LVL24:
	s32i.n	a2, sp, 28
	.loc 1 136 0
	movi.n	a13, 0
	movi.n	a12, 8
	addi	a11, sp, 24
	addi	a10, sp, 16
	call8	btc_transfer_context
.LVL25:
	retw.n
.LFE31:
	.size	alarm_cb_handler, .-alarm_cb_handler
	.section	.rodata.str1.4
	.align	4
.LC15:
	.string	"alarm_mutex != NULL"
	.align	4
.LC18:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/osi/alarm.c"
	.align	4
.LC22:
	.string	"\033[0;31mE (%d) %s: %s, invalid state %d\n\033[0m\n"
	.align	4
.LC25:
	.string	"\033[0;31mE (%d) %s: %s failed to start timer, err 0x%x\n\033[0m\n"
	.section	.text.alarm_set,"ax",@progbits
	.literal_position
	.literal .LC14, alarm_mutex
	.literal .LC16, .LC15
	.literal .LC17, __func__$5816
	.literal .LC19, .LC18
	.literal .LC20, alarm_state
	.literal .LC21, .LC2
	.literal .LC23, .LC22
	.literal .LC24, .LC4
	.literal .LC26, .LC25
	.align	4
	.type	alarm_set, @function
alarm_set:
.LFB35:
	.loc 1 216 0
.LVL26:
	entry	sp, 48
.LCFI3:
	.loc 1 217 0
	l32r	a3, .LC14
	l32i.n	a3, a3, 0
	.loc 1 217 0
	bnez.n	a3, .L15
	.loc 1 217 0 is_stmt 0 discriminator 1
	l32r	a13, .LC16
	l32r	a12, .LC17
	movi	a11, 0xd9
	l32r	a10, .LC19
	call8	__assert_func
.LVL27:
.L15:
	.loc 1 220 0 is_stmt 1
	movi.n	a11, -1
	l32r	a10, .LC14
	call8	osi_mutex_lock
.LVL28:
	.loc 1 221 0
	l32r	a3, .LC20
	l32i.n	a3, a3, 0
	beqi	a3, 1, .L16
	.loc 1 222 0 discriminator 1
	call8	esp_log_timestamp
.LVL29:
	l32r	a11, .LC21
	l32r	a2, .LC20
.LVL30:
	l32i.n	a2, a2, 0
	s32i.n	a2, sp, 0
	l32r	a15, .LC17
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC23
	movi.n	a10, 1
	call8	esp_log_write
.LVL31:
	.loc 1 223 0 discriminator 1
	movi.n	a2, -3
	.loc 1 224 0 discriminator 1
	j	.L17
.LVL32:
.L16:
	.loc 1 227 0
	beqz.n	a2, .L18
	.loc 1 227 0 is_stmt 0 discriminator 1
	l32i.n	a10, a2, 0
	bnez.n	a10, .L19
.L18:
	.loc 1 228 0 is_stmt 1 discriminator 1
	call8	esp_log_timestamp
.LVL33:
	l32r	a11, .LC21
	l32r	a15, .LC17
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC24
	movi.n	a10, 1
	call8	esp_log_write
.LVL34:
	.loc 1 229 0 discriminator 1
	movi.n	a2, -2
.LVL35:
	.loc 1 230 0 discriminator 1
	j	.L17
.LVL36:
.L19:
	.loc 1 233 0
	movi	a11, 0x3e8
	mull	a5, a11, a5
	mull	a3, a11, a4
	muluh	a4, a11, a4
.LVL37:
	mov.n	a7, a3
	add.n	a4, a5, a4
.LVL38:
	.loc 1 235 0
	beqz.n	a6, .L20
	.loc 1 236 0
	mov.n	a12, a3
	mov.n	a13, a4
	call8	esp_timer_start_periodic
.LVL39:
	mov.n	a5, a10
.LVL40:
	j	.L21
.LVL41:
.L20:
	.loc 1 238 0
	mov.n	a12, a3
	mov.n	a13, a4
	call8	esp_timer_start_once
.LVL42:
	mov.n	a5, a10
.LVL43:
.L21:
	.loc 1 240 0
	beqz.n	a5, .L22
	.loc 1 241 0 discriminator 1
	call8	esp_log_timestamp
.LVL44:
	l32r	a11, .LC21
	s32i.n	a5, sp, 0
	l32r	a15, .LC17
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC26
	movi.n	a10, 1
	call8	esp_log_write
.LVL45:
	.loc 1 242 0 discriminator 1
	movi.n	a2, -1
.LVL46:
	.loc 1 243 0 discriminator 1
	j	.L17
.LVL47:
.L22:
	.loc 1 245 0
	bnez.n	a6, .L25
	.loc 1 245 0 is_stmt 0 discriminator 2
	call8	esp_timer_get_time
.LVL48:
	add.n	a10, a3, a10
	movi.n	a5, 1
.LVL49:
	bltu	a10, a7, .L24
	movi.n	a5, 0
.L24:
	add.n	a4, a4, a11
.LVL50:
	add.n	a5, a5, a4
	mov.n	a4, a10
	mov.n	a3, a5
	j	.L23
.LVL51:
.L25:
	.loc 1 245 0
	movi.n	a4, 0
.LVL52:
	mov.n	a3, a4
.LVL53:
.L23:
	.loc 1 245 0 discriminator 4
	s32i.n	a4, a2, 16
	s32i.n	a3, a2, 20
	.loc 1 219 0 is_stmt 1 discriminator 4
	movi.n	a2, 0
.LVL54:
.L17:
	.loc 1 248 0
	l32r	a10, .LC14
	call8	osi_mutex_unlock
.LVL55:
	.loc 1 250 0
	retw.n
.LFE35:
	.size	alarm_set, .-alarm_set
	.section	.text.osi_alarm_create_mux,"ax",@progbits
	.literal_position
	.literal .LC27, alarm_state
	.literal .LC28, __func__$5757
	.literal .LC29, .LC2
	.literal .LC30, .LC11
	.literal .LC31, alarm_mutex
	.align	4
	.global	osi_alarm_create_mux
	.type	osi_alarm_create_mux, @function
osi_alarm_create_mux:
.LFB26:
	.loc 1 53 0
	entry	sp, 48
.LCFI4:
	.loc 1 54 0
	l32r	a2, .LC27
	l32i.n	a2, a2, 0
	beqz.n	a2, .L27
	.loc 1 55 0 discriminator 1
	call8	esp_log_timestamp
.LVL56:
	l32r	a11, .LC29
	l32r	a2, .LC27
	l32i.n	a2, a2, 0
	s32i.n	a2, sp, 0
	l32r	a15, .LC28
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC30
	movi.n	a10, 2
	call8	esp_log_write
.LVL57:
	.loc 1 56 0 discriminator 1
	movi.n	a2, -1
	retw.n
.L27:
	.loc 1 58 0
	l32r	a10, .LC31
	call8	osi_mutex_new
.LVL58:
	.loc 1 60 0
	retw.n
.LFE26:
	.size	osi_alarm_create_mux, .-osi_alarm_create_mux
	.section	.text.osi_alarm_delete_mux,"ax",@progbits
	.literal_position
	.literal .LC32, alarm_state
	.literal .LC33, __func__$5761
	.literal .LC34, .LC2
	.literal .LC35, .LC11
	.literal .LC36, alarm_mutex
	.align	4
	.global	osi_alarm_delete_mux
	.type	osi_alarm_delete_mux, @function
osi_alarm_delete_mux:
.LFB27:
	.loc 1 63 0
	entry	sp, 48
.LCFI5:
	.loc 1 64 0
	l32r	a2, .LC32
	l32i.n	a2, a2, 0
	beqz.n	a2, .L30
	.loc 1 65 0 discriminator 1
	call8	esp_log_timestamp
.LVL59:
	l32r	a11, .LC34
	l32r	a2, .LC32
	l32i.n	a2, a2, 0
	s32i.n	a2, sp, 0
	l32r	a15, .LC33
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC35
	movi.n	a10, 2
	call8	esp_log_write
.LVL60:
	.loc 1 66 0 discriminator 1
	movi.n	a2, -1
	retw.n
.L30:
	.loc 1 68 0
	l32r	a10, .LC36
	call8	osi_mutex_free
.LVL61:
	.loc 1 70 0
	retw.n
.LFE27:
	.size	osi_alarm_delete_mux, .-osi_alarm_delete_mux
	.section	.text.osi_alarm_init,"ax",@progbits
	.literal_position
	.literal .LC37, alarm_mutex
	.literal .LC38, .LC15
	.literal .LC39, __func__$5765
	.literal .LC40, .LC18
	.literal .LC41, alarm_state
	.literal .LC42, .LC2
	.literal .LC43, .LC11
	.literal .LC44, alarm_cbs
	.align	4
	.global	osi_alarm_init
	.type	osi_alarm_init, @function
osi_alarm_init:
.LFB28:
	.loc 1 73 0
	entry	sp, 48
.LCFI6:
	.loc 1 74 0
	l32r	a8, .LC37
	l32i.n	a8, a8, 0
	.loc 1 74 0
	bnez.n	a8, .L33
	.loc 1 74 0 is_stmt 0 discriminator 1
	l32r	a13, .LC38
	l32r	a12, .LC39
	movi.n	a11, 0x4a
	l32r	a10, .LC40
	call8	__assert_func
.LVL62:
.L33:
	.loc 1 76 0 is_stmt 1
	movi.n	a11, -1
	l32r	a10, .LC37
	call8	osi_mutex_lock
.LVL63:
	.loc 1 77 0
	l32r	a8, .LC41
	l32i.n	a8, a8, 0
	beqz.n	a8, .L34
	.loc 1 78 0 discriminator 1
	call8	esp_log_timestamp
.LVL64:
	l32r	a11, .LC42
	l32r	a8, .LC41
	l32i.n	a8, a8, 0
	s32i.n	a8, sp, 0
	l32r	a15, .LC39
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC43
	movi.n	a10, 2
	call8	esp_log_write
.LVL65:
	.loc 1 79 0 discriminator 1
	j	.L35
.L34:
	.loc 1 81 0
	movi	a12, 0x2d0
	movi.n	a11, 0
	l32r	a10, .LC44
	call8	memset
.LVL66:
	.loc 1 82 0
	movi.n	a9, 1
	l32r	a8, .LC41
	s32i.n	a9, a8, 0
.L35:
	.loc 1 85 0
	l32r	a10, .LC37
	call8	osi_mutex_unlock
.LVL67:
	retw.n
.LFE28:
	.size	osi_alarm_init, .-osi_alarm_init
	.section	.text.osi_alarm_deinit,"ax",@progbits
	.literal_position
	.literal .LC45, alarm_mutex
	.literal .LC46, .LC15
	.literal .LC47, __func__$5770
	.literal .LC48, .LC18
	.literal .LC49, alarm_state
	.literal .LC50, .LC2
	.literal .LC51, .LC11
	.literal .LC52, alarm_cbs
	.align	4
	.global	osi_alarm_deinit
	.type	osi_alarm_deinit, @function
osi_alarm_deinit:
.LFB29:
	.loc 1 89 0
	entry	sp, 48
.LCFI7:
	.loc 1 90 0
	l32r	a2, .LC45
	l32i.n	a2, a2, 0
	.loc 1 90 0
	bnez.n	a2, .L37
	.loc 1 90 0 is_stmt 0 discriminator 1
	l32r	a13, .LC46
	l32r	a12, .LC47
	movi.n	a11, 0x5a
	l32r	a10, .LC48
	call8	__assert_func
.LVL68:
.L37:
	.loc 1 92 0 is_stmt 1
	movi.n	a11, -1
	l32r	a10, .LC45
	call8	osi_mutex_lock
.LVL69:
	.loc 1 93 0
	l32r	a2, .LC49
	l32i.n	a2, a2, 0
	beqi	a2, 1, .L42
	.loc 1 94 0 discriminator 1
	call8	esp_log_timestamp
.LVL70:
	l32r	a11, .LC50
	l32r	a2, .LC49
	l32i.n	a2, a2, 0
	s32i.n	a2, sp, 0
	l32r	a15, .LC47
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC51
	movi.n	a10, 2
	call8	esp_log_write
.LVL71:
	.loc 1 95 0 discriminator 1
	j	.L39
.LVL72:
.L41:
.LBB2:
	.loc 1 99 0
	addx2	a9, a2, a2
	slli	a8, a9, 3
	l32r	a9, .LC52
	add.n	a8, a9, a8
	l32i.n	a8, a8, 0
	beqz.n	a8, .L40
	.loc 1 100 0
	addx2	a9, a2, a2
	slli	a8, a9, 3
	l32r	a10, .LC52
	add.n	a10, a10, a8
	call8	alarm_free
.LVL73:
.L40:
	.loc 1 98 0 discriminator 2
	addi.n	a2, a2, 1
.LVL74:
	j	.L38
.LVL75:
.L42:
.LBE2:
	movi.n	a2, 0
.L38:
.LVL76:
.LBB3:
	.loc 1 98 0 is_stmt 0 discriminator 1
	movi.n	a8, 0x1d
	bge	a8, a2, .L41
.LBE3:
	.loc 1 103 0 is_stmt 1
	movi.n	a8, 0
	l32r	a2, .LC49
.LVL77:
	s32i.n	a8, a2, 0
.L39:
	.loc 1 106 0
	l32r	a10, .LC45
	call8	osi_mutex_unlock
.LVL78:
	retw.n
.LFE29:
	.size	osi_alarm_deinit, .-osi_alarm_deinit
	.section	.rodata.str1.4
	.align	4
.LC60:
	.string	"\033[0;31mE (%d) %s: %s alarm_cbs exhausted\n\033[0m\n"
	.align	4
.LC64:
	.string	"\033[0;31mE (%d) %s: %s failed to create timer, err 0x%x\n\033[0m\n"
	.section	.text.osi_alarm_new,"ax",@progbits
	.literal_position
	.literal .LC53, alarm_mutex
	.literal .LC54, .LC15
	.literal .LC55, __func__$5796
	.literal .LC56, .LC18
	.literal .LC57, alarm_state
	.literal .LC58, .LC2
	.literal .LC59, .LC22
	.literal .LC61, .LC60
	.literal .LC62, alarm_cb_handler
	.literal .LC63, 0, 0
	.literal .LC65, .LC64
	.align	4
	.global	osi_alarm_new
	.type	osi_alarm_new, @function
osi_alarm_new:
.LFB32:
	.loc 1 140 0
.LVL79:
	entry	sp, 64
.LCFI8:
	.loc 1 141 0
	l32r	a5, .LC53
	l32i.n	a5, a5, 0
	.loc 1 141 0
	bnez.n	a5, .L44
	.loc 1 141 0 is_stmt 0 discriminator 1
	l32r	a13, .LC54
	l32r	a12, .LC55
	movi	a11, 0x8d
	l32r	a10, .LC56
	call8	__assert_func
.LVL80:
.L44:
	.loc 1 145 0 is_stmt 1
	movi.n	a11, -1
	l32r	a10, .LC53
	call8	osi_mutex_lock
.LVL81:
	.loc 1 146 0
	l32r	a5, .LC57
	l32i.n	a5, a5, 0
	beqi	a5, 1, .L45
	.loc 1 147 0 discriminator 1
	call8	esp_log_timestamp
.LVL82:
	l32r	a11, .LC58
	l32r	a2, .LC57
.LVL83:
	l32i.n	a2, a2, 0
	s32i.n	a2, sp, 0
	l32r	a15, .LC55
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC59
	movi.n	a10, 1
	call8	esp_log_write
.LVL84:
	.loc 1 148 0 discriminator 1
	movi.n	a5, 0
	.loc 1 149 0 discriminator 1
	j	.L46
.LVL85:
.L45:
	.loc 1 152 0
	call8	alarm_cbs_lookfor_available
.LVL86:
	mov.n	a5, a10
.LVL87:
	.loc 1 154 0
	bnez.n	a10, .L47
	.loc 1 155 0 discriminator 1
	call8	esp_log_timestamp
.LVL88:
	l32r	a11, .LC58
	l32r	a15, .LC55
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC61
	movi.n	a10, 1
	call8	esp_log_write
.LVL89:
	.loc 1 157 0 discriminator 1
	j	.L46
.LVL90:
.L47:
	.loc 1 161 0
	l32r	a8, .LC62
	s32i.n	a8, sp, 16
	.loc 1 162 0
	s32i.n	a10, sp, 20
	.loc 1 163 0
	movi.n	a8, 0
	s32i.n	a8, sp, 24
	.loc 1 164 0
	s32i.n	a2, sp, 28
	.loc 1 166 0
	s32i.n	a3, a10, 4
	.loc 1 167 0
	s32i.n	a4, a10, 8
	.loc 1 168 0
	l32r	a2, .LC63
.LVL91:
	l32r	a3, .LC63+4
.LVL92:
	s32i.n	a2, a10, 16
	s32i.n	a3, a10, 20
	.loc 1 170 0
	mov.n	a11, a10
	addi	a10, sp, 16
	call8	esp_timer_create
.LVL93:
	mov.n	a2, a10
.LVL94:
	.loc 1 171 0
	beqz.n	a10, .L46
	.loc 1 172 0 discriminator 1
	call8	esp_log_timestamp
.LVL95:
	l32r	a11, .LC58
	s32i.n	a2, sp, 0
	l32r	a15, .LC55
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC65
	movi.n	a10, 1
	call8	esp_log_write
.LVL96:
	.loc 1 173 0 discriminator 1
	movi.n	a5, 0
.LVL97:
.L46:
	.loc 1 178 0
	l32r	a10, .LC53
	call8	osi_mutex_unlock
.LVL98:
	.loc 1 180 0
	mov.n	a2, a5
	retw.n
.LFE32:
	.size	osi_alarm_new, .-osi_alarm_new
	.section	.text.osi_alarm_free,"ax",@progbits
	.literal_position
	.literal .LC66, alarm_mutex
	.literal .LC67, .LC15
	.literal .LC68, __func__$5809
	.literal .LC69, .LC18
	.literal .LC70, alarm_state
	.literal .LC71, .LC2
	.literal .LC72, .LC22
	.align	4
	.global	osi_alarm_free
	.type	osi_alarm_free, @function
osi_alarm_free:
.LFB34:
	.loc 1 200 0
.LVL99:
	entry	sp, 48
.LCFI9:
	.loc 1 201 0
	l32r	a8, .LC66
	l32i.n	a8, a8, 0
	.loc 1 201 0
	bnez.n	a8, .L49
	.loc 1 201 0 is_stmt 0 discriminator 1
	l32r	a13, .LC67
	l32r	a12, .LC68
	movi	a11, 0xc9
	l32r	a10, .LC69
	call8	__assert_func
.LVL100:
.L49:
	.loc 1 203 0 is_stmt 1
	movi.n	a11, -1
	l32r	a10, .LC66
	call8	osi_mutex_lock
.LVL101:
	.loc 1 204 0
	l32r	a8, .LC70
	l32i.n	a8, a8, 0
	beqi	a8, 1, .L50
	.loc 1 205 0 discriminator 1
	call8	esp_log_timestamp
.LVL102:
	l32r	a11, .LC71
	l32r	a2, .LC70
.LVL103:
	l32i.n	a2, a2, 0
	s32i.n	a2, sp, 0
	l32r	a15, .LC68
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC72
	movi.n	a10, 1
	call8	esp_log_write
.LVL104:
	.loc 1 206 0 discriminator 1
	j	.L51
.LVL105:
.L50:
	.loc 1 208 0
	mov.n	a10, a2
	call8	alarm_free
.LVL106:
.L51:
	.loc 1 211 0
	l32r	a10, .LC66
	call8	osi_mutex_unlock
.LVL107:
	retw.n
.LFE34:
	.size	osi_alarm_free, .-osi_alarm_free
	.section	.text.osi_alarm_set,"ax",@progbits
	.align	4
	.global	osi_alarm_set
	.type	osi_alarm_set, @function
osi_alarm_set:
.LFB36:
	.loc 1 253 0
.LVL108:
	entry	sp, 32
.LCFI10:
	.loc 1 254 0
	movi.n	a14, 0
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a2
	call8	alarm_set
.LVL109:
	.loc 1 255 0
	mov.n	a2, a10
.LVL110:
	retw.n
.LFE36:
	.size	osi_alarm_set, .-osi_alarm_set
	.section	.text.osi_alarm_set_periodic,"ax",@progbits
	.align	4
	.global	osi_alarm_set_periodic
	.type	osi_alarm_set_periodic, @function
osi_alarm_set_periodic:
.LFB37:
	.loc 1 258 0
.LVL111:
	entry	sp, 32
.LCFI11:
	.loc 1 259 0
	movi.n	a14, 1
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a2
	call8	alarm_set
.LVL112:
	.loc 1 260 0
	mov.n	a2, a10
.LVL113:
	retw.n
.LFE37:
	.size	osi_alarm_set_periodic, .-osi_alarm_set_periodic
	.section	.text.osi_alarm_cancel,"ax",@progbits
	.literal_position
	.literal .LC73, alarm_mutex
	.literal .LC74, alarm_state
	.literal .LC75, __func__$5833
	.literal .LC76, .LC2
	.literal .LC77, .LC22
	.literal .LC78, .LC4
	.align	4
	.global	osi_alarm_cancel
	.type	osi_alarm_cancel, @function
osi_alarm_cancel:
.LFB38:
	.loc 1 263 0
.LVL114:
	entry	sp, 48
.LCFI12:
.LVL115:
	.loc 1 265 0
	movi.n	a11, -1
	l32r	a10, .LC73
	call8	osi_mutex_lock
.LVL116:
	.loc 1 266 0
	l32r	a8, .LC74
	l32i.n	a8, a8, 0
	beqi	a8, 1, .L55
	.loc 1 267 0 discriminator 1
	call8	esp_log_timestamp
.LVL117:
	l32r	a11, .LC76
	l32r	a2, .LC74
.LVL118:
	l32i.n	a2, a2, 0
	s32i.n	a2, sp, 0
	l32r	a15, .LC75
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC77
	movi.n	a10, 1
	call8	esp_log_write
.LVL119:
	.loc 1 268 0 discriminator 1
	movi.n	a2, -3
	.loc 1 269 0 discriminator 1
	j	.L56
.LVL120:
.L55:
	.loc 1 272 0
	beqz.n	a2, .L57
	.loc 1 272 0 is_stmt 0 discriminator 1
	l32i.n	a10, a2, 0
	bnez.n	a10, .L58
.L57:
	.loc 1 273 0 is_stmt 1 discriminator 1
	call8	esp_log_timestamp
.LVL121:
	l32r	a11, .LC76
	l32r	a15, .LC75
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC78
	movi.n	a10, 1
	call8	esp_log_write
.LVL122:
	.loc 1 274 0 discriminator 1
	movi.n	a2, -2
.LVL123:
	.loc 1 275 0 discriminator 1
	j	.L56
.LVL124:
.L58:
	.loc 1 278 0
	call8	esp_timer_stop
.LVL125:
	.loc 1 279 0
	bnez.n	a10, .L59
	.loc 1 264 0
	movi.n	a2, 0
.LVL126:
	j	.L56
.LVL127:
.L59:
	.loc 1 281 0
	movi.n	a2, -1
.LVL128:
.L56:
	.loc 1 285 0
	l32r	a10, .LC73
	call8	osi_mutex_unlock
.LVL129:
	.loc 1 287 0
	retw.n
.LFE38:
	.size	osi_alarm_cancel, .-osi_alarm_cancel
	.global	__divdi3
	.section	.text.osi_alarm_get_remaining_ms,"ax",@progbits
	.literal_position
	.literal .LC79, 0, 0
	.literal .LC80, alarm_mutex
	.literal .LC81, .LC15
	.literal .LC82, __func__$5839
	.literal .LC83, .LC18
	.literal .LC84, 1000, 0
	.align	4
	.global	osi_alarm_get_remaining_ms
	.type	osi_alarm_get_remaining_ms, @function
osi_alarm_get_remaining_ms:
.LFB39:
	.loc 1 290 0
.LVL130:
	entry	sp, 32
.LCFI13:
	.loc 1 291 0
	l32r	a3, .LC80
	l32i.n	a3, a3, 0
	.loc 1 291 0
	bnez.n	a3, .L61
	.loc 1 291 0 is_stmt 0 discriminator 1
	l32r	a13, .LC81
	l32r	a12, .LC82
	movi	a11, 0x123
	l32r	a10, .LC83
	call8	__assert_func
.LVL131:
.L61:
	.loc 1 294 0 is_stmt 1
	movi.n	a11, -1
	l32r	a10, .LC80
	call8	osi_mutex_lock
.LVL132:
	.loc 1 295 0
	l32i.n	a5, a2, 16
	l32i.n	a3, a2, 20
	call8	esp_timer_get_time
.LVL133:
	sub	a4, a5, a10
	movi.n	a2, 1
.LVL134:
	bltu	a5, a4, .L62
	movi.n	a2, 0
.L62:
	sub	a11, a3, a11
	sub	a2, a11, a2
	mov.n	a5, a4
.LVL135:
	.loc 1 296 0
	l32r	a10, .LC80
	call8	osi_mutex_unlock
.LVL136:
	.loc 1 298 0
	bgei	a2, 1, .L66
.LVL137:
	bnez.n	a2, .L65
	beqz.n	a4, .L65
.L66:
	.loc 1 298 0 is_stmt 0 discriminator 1
	l32r	a12, .LC84
	l32r	a13, .LC84+4
	mov.n	a10, a4
	mov.n	a11, a2
	call8	__divdi3
.LVL138:
	mov.n	a2, a10
.LVL139:
	mov.n	a3, a11
	retw.n
.LVL140:
.L65:
	.loc 1 298 0
	l32r	a2, .LC79
.LVL141:
	l32r	a3, .LC79+4
	.loc 1 299 0 is_stmt 1
	retw.n
.LFE39:
	.size	osi_alarm_get_remaining_ms, .-osi_alarm_get_remaining_ms
	.section	.text.osi_time_get_os_boottime_ms,"ax",@progbits
	.literal_position
	.literal .LC85, 1000, 0
	.align	4
	.global	osi_time_get_os_boottime_ms
	.type	osi_time_get_os_boottime_ms, @function
osi_time_get_os_boottime_ms:
.LFB40:
	.loc 1 302 0
	entry	sp, 32
.LCFI14:
	.loc 1 303 0
	call8	esp_timer_get_time
.LVL142:
	l32r	a12, .LC85
	l32r	a13, .LC85+4
	call8	__divdi3
.LVL143:
	.loc 1 304 0
	mov.n	a2, a10
	retw.n
.LFE40:
	.size	osi_time_get_os_boottime_ms, .-osi_time_get_os_boottime_ms
	.section	.rodata.__func__$5839,"a",@progbits
	.align	4
	.type	__func__$5839, @object
	.size	__func__$5839, 27
__func__$5839:
	.string	"osi_alarm_get_remaining_ms"
	.section	.rodata.__func__$5833,"a",@progbits
	.align	4
	.type	__func__$5833, @object
	.size	__func__$5833, 17
__func__$5833:
	.string	"osi_alarm_cancel"
	.section	.rodata.__func__$5816,"a",@progbits
	.align	4
	.type	__func__$5816, @object
	.size	__func__$5816, 10
__func__$5816:
	.string	"alarm_set"
	.section	.rodata.__func__$5809,"a",@progbits
	.align	4
	.type	__func__$5809, @object
	.size	__func__$5809, 15
__func__$5809:
	.string	"osi_alarm_free"
	.section	.rodata.__func__$5787,"a",@progbits
	.align	4
	.type	__func__$5787, @object
	.size	__func__$5787, 17
__func__$5787:
	.string	"alarm_cb_handler"
	.section	.rodata.__func__$5796,"a",@progbits
	.align	4
	.type	__func__$5796, @object
	.size	__func__$5796, 14
__func__$5796:
	.string	"osi_alarm_new"
	.section	.rodata.__func__$5804,"a",@progbits
	.align	4
	.type	__func__$5804, @object
	.size	__func__$5804, 11
__func__$5804:
	.string	"alarm_free"
	.section	.rodata.__func__$5770,"a",@progbits
	.align	4
	.type	__func__$5770, @object
	.size	__func__$5770, 17
__func__$5770:
	.string	"osi_alarm_deinit"
	.section	.rodata.__func__$5765,"a",@progbits
	.align	4
	.type	__func__$5765, @object
	.size	__func__$5765, 15
__func__$5765:
	.string	"osi_alarm_init"
	.section	.rodata.__func__$5761,"a",@progbits
	.align	4
	.type	__func__$5761, @object
	.size	__func__$5761, 21
__func__$5761:
	.string	"osi_alarm_delete_mux"
	.section	.rodata.__func__$5757,"a",@progbits
	.align	4
	.type	__func__$5757, @object
	.size	__func__$5757, 21
__func__$5757:
	.string	"osi_alarm_create_mux"
	.section	.bss.alarm_cbs,"aw",@nobits
	.align	8
	.type	alarm_cbs, @object
	.size	alarm_cbs, 720
alarm_cbs:
	.zero	720
	.section	.bss.alarm_state,"aw",@nobits
	.align	4
	.type	alarm_state, @object
	.size	alarm_state, 4
alarm_state:
	.zero	4
	.section	.bss.alarm_mutex,"aw",@nobits
	.align	4
	.type	alarm_mutex, @object
	.size	alarm_mutex, 4
alarm_mutex:
	.zero	4
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
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI0-.LFB30
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI1-.LFB33
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI2-.LFB31
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x4
	.4byte	.LCFI3-.LFB35
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI4-.LFB26
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI5-.LFB27
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI6-.LFB28
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI7-.LFB29
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI8-.LFB32
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI9-.LFB34
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
	.uleb128 0x20
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
	.uleb128 0x20
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.byte	0x4
	.4byte	.LCFI12-.LFB38
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.byte	0x4
	.4byte	.LCFI13-.LFB39
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.byte	0x4
	.4byte	.LCFI14-.LFB40
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE28:
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/bt_types.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_err.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_timer.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/log/include/esp_log.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/osi/include/osi/alarm.h"
	.file 9 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/queue.h"
	.file 10 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/btc/include/btc/btc_task.h"
	.file 11 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/btc/include/btc/btc_alarm.h"
	.file 12 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/semphr.h"
	.file 13 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/osi/include/osi/mutex.h"
	.file 14 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/assert.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x11c8
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF121
	.byte	0xc
	.4byte	.LASF122
	.4byte	.LASF123
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF3
	.uleb128 0x4
	.4byte	.LASF6
	.byte	0x2
	.byte	0x12
	.4byte	0x53
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x2
	.byte	0x19
	.4byte	0x3a
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x2
	.byte	0x1a
	.4byte	0x2c
	.uleb128 0x4
	.4byte	.LASF9
	.byte	0x2
	.byte	0x1d
	.4byte	0x82
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x2
	.byte	0x1e
	.4byte	0x25
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb8
	.uleb128 0x7
	.4byte	0xab
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x3
	.byte	0x15
	.4byte	0x48
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x3
	.byte	0x2c
	.4byte	0x61
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x3
	.byte	0x2d
	.4byte	0x6c
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x3
	.byte	0x38
	.4byte	0x77
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x3
	.byte	0x39
	.4byte	0x89
	.uleb128 0x4
	.4byte	.LASF21
	.byte	0x4
	.byte	0x21
	.4byte	0xbd
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF22
	.uleb128 0x8
	.4byte	0xf4
	.4byte	0x116
	.uleb128 0x9
	.4byte	0x9b
	.byte	0x5
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x11c
	.uleb128 0xa
	.4byte	0x127
	.uleb128 0xb
	.4byte	0xa2
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x2c
	.byte	0x7
	.byte	0x1f
	.4byte	0x158
	.uleb128 0xd
	.4byte	.LASF23
	.byte	0
	.uleb128 0xd
	.4byte	.LASF24
	.byte	0x1
	.uleb128 0xd
	.4byte	.LASF25
	.byte	0x2
	.uleb128 0xd
	.4byte	.LASF26
	.byte	0x3
	.uleb128 0xd
	.4byte	.LASF27
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF28
	.byte	0x5
	.byte	0
	.uleb128 0x4
	.4byte	.LASF29
	.byte	0x5
	.byte	0x18
	.4byte	0xc8
	.uleb128 0x4
	.4byte	.LASF30
	.byte	0x6
	.byte	0x35
	.4byte	0x16e
	.uleb128 0x6
	.byte	0x4
	.4byte	0x174
	.uleb128 0xe
	.4byte	.LASF124
	.uleb128 0x4
	.4byte	.LASF31
	.byte	0x6
	.byte	0x3b
	.4byte	0x116
	.uleb128 0xc
	.byte	0x4
	.4byte	0x2c
	.byte	0x6
	.byte	0x41
	.4byte	0x197
	.uleb128 0xd
	.4byte	.LASF32
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF33
	.byte	0x6
	.byte	0x4a
	.4byte	0x184
	.uleb128 0xf
	.byte	0x10
	.byte	0x6
	.byte	0x4f
	.4byte	0x1db
	.uleb128 0x10
	.4byte	.LASF34
	.byte	0x6
	.byte	0x50
	.4byte	0x179
	.byte	0
	.uleb128 0x11
	.string	"arg"
	.byte	0x6
	.byte	0x51
	.4byte	0xa2
	.byte	0x4
	.uleb128 0x10
	.4byte	.LASF35
	.byte	0x6
	.byte	0x52
	.4byte	0x197
	.byte	0x8
	.uleb128 0x10
	.4byte	.LASF36
	.byte	0x6
	.byte	0x53
	.4byte	0xb2
	.byte	0xc
	.byte	0
	.uleb128 0x4
	.4byte	.LASF37
	.byte	0x6
	.byte	0x54
	.4byte	0x1a2
	.uleb128 0x12
	.4byte	.LASF49
	.byte	0x18
	.byte	0x1
	.byte	0x1f
	.4byte	0x222
	.uleb128 0x10
	.4byte	.LASF38
	.byte	0x1
	.byte	0x21
	.4byte	0x163
	.byte	0
	.uleb128 0x11
	.string	"cb"
	.byte	0x1
	.byte	0x22
	.4byte	0x22d
	.byte	0x4
	.uleb128 0x10
	.4byte	.LASF39
	.byte	0x1
	.byte	0x23
	.4byte	0xa2
	.byte	0x8
	.uleb128 0x10
	.4byte	.LASF40
	.byte	0x1
	.byte	0x24
	.4byte	0xde
	.byte	0x10
	.byte	0
	.uleb128 0x4
	.4byte	.LASF41
	.byte	0x8
	.byte	0x1a
	.4byte	0xe9
	.uleb128 0x4
	.4byte	.LASF42
	.byte	0x8
	.byte	0x1b
	.4byte	0x179
	.uleb128 0xc
	.byte	0x4
	.4byte	0x3a
	.byte	0x8
	.byte	0x1d
	.4byte	0x25d
	.uleb128 0xd
	.4byte	.LASF43
	.byte	0
	.uleb128 0x13
	.4byte	.LASF44
	.sleb128 -1
	.uleb128 0x13
	.4byte	.LASF45
	.sleb128 -2
	.uleb128 0x13
	.4byte	.LASF46
	.sleb128 -3
	.byte	0
	.uleb128 0x4
	.4byte	.LASF47
	.byte	0x8
	.byte	0x22
	.4byte	0x238
	.uleb128 0x4
	.4byte	.LASF48
	.byte	0x9
	.byte	0x58
	.4byte	0xa2
	.uleb128 0x12
	.4byte	.LASF50
	.byte	0x8
	.byte	0xa
	.byte	0x17
	.4byte	0x2bc
	.uleb128 0x11
	.string	"sig"
	.byte	0xa
	.byte	0x18
	.4byte	0xbd
	.byte	0
	.uleb128 0x11
	.string	"aid"
	.byte	0xa
	.byte	0x19
	.4byte	0xbd
	.byte	0x1
	.uleb128 0x11
	.string	"pid"
	.byte	0xa
	.byte	0x1a
	.4byte	0xbd
	.byte	0x2
	.uleb128 0x11
	.string	"act"
	.byte	0xa
	.byte	0x1b
	.4byte	0xbd
	.byte	0x3
	.uleb128 0x11
	.string	"arg"
	.byte	0xa
	.byte	0x1c
	.4byte	0xa2
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF51
	.byte	0xa
	.byte	0x1d
	.4byte	0x273
	.uleb128 0xc
	.byte	0x4
	.4byte	0x2c
	.byte	0xa
	.byte	0x24
	.4byte	0x2e6
	.uleb128 0xd
	.4byte	.LASF52
	.byte	0
	.uleb128 0xd
	.4byte	.LASF53
	.byte	0x1
	.uleb128 0xd
	.4byte	.LASF54
	.byte	0x2
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x2c
	.byte	0xa
	.byte	0x2a
	.4byte	0x353
	.uleb128 0xd
	.4byte	.LASF55
	.byte	0
	.uleb128 0xd
	.4byte	.LASF56
	.byte	0x1
	.uleb128 0xd
	.4byte	.LASF57
	.byte	0x2
	.uleb128 0xd
	.4byte	.LASF58
	.byte	0x3
	.uleb128 0xd
	.4byte	.LASF59
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF60
	.byte	0x5
	.uleb128 0xd
	.4byte	.LASF61
	.byte	0x6
	.uleb128 0xd
	.4byte	.LASF62
	.byte	0x7
	.uleb128 0xd
	.4byte	.LASF63
	.byte	0x8
	.uleb128 0xd
	.4byte	.LASF64
	.byte	0x9
	.uleb128 0xd
	.4byte	.LASF65
	.byte	0xa
	.uleb128 0xd
	.4byte	.LASF66
	.byte	0xb
	.uleb128 0xd
	.4byte	.LASF67
	.byte	0xc
	.uleb128 0xd
	.4byte	.LASF68
	.byte	0xd
	.uleb128 0xd
	.4byte	.LASF69
	.byte	0xe
	.uleb128 0xd
	.4byte	.LASF70
	.byte	0xf
	.byte	0
	.uleb128 0xf
	.byte	0x8
	.byte	0xb
	.byte	0x17
	.4byte	0x373
	.uleb128 0x11
	.string	"cb"
	.byte	0xb
	.byte	0x18
	.4byte	0x22d
	.byte	0
	.uleb128 0x10
	.4byte	.LASF39
	.byte	0xb
	.byte	0x19
	.4byte	0xa2
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF71
	.byte	0xb
	.byte	0x1a
	.4byte	0x353
	.uleb128 0x4
	.4byte	.LASF72
	.byte	0xc
	.byte	0x4f
	.4byte	0x268
	.uleb128 0x4
	.4byte	.LASF73
	.byte	0xd
	.byte	0x21
	.4byte	0x37e
	.uleb128 0xc
	.byte	0x4
	.4byte	0x2c
	.byte	0x1
	.byte	0x27
	.4byte	0x3ad
	.uleb128 0xd
	.4byte	.LASF74
	.byte	0
	.uleb128 0xd
	.4byte	.LASF75
	.byte	0x1
	.byte	0
	.uleb128 0x14
	.4byte	.LASF76
	.byte	0x1
	.byte	0x6d
	.4byte	0x3dd
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3dd
	.uleb128 0x15
	.string	"i"
	.byte	0x1
	.byte	0x6f
	.4byte	0x3a
	.4byte	.LLST0
	.uleb128 0x16
	.4byte	.LASF80
	.4byte	0x3f3
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1e6
	.uleb128 0x8
	.4byte	0xab
	.4byte	0x3f3
	.uleb128 0x9
	.4byte	0x9b
	.byte	0x1b
	.byte	0
	.uleb128 0x7
	.4byte	0x3e3
	.uleb128 0x14
	.4byte	.LASF77
	.byte	0x1
	.byte	0xb6
	.4byte	0x25d
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4f0
	.uleb128 0x17
	.4byte	.LASF79
	.byte	0x1
	.byte	0xb6
	.4byte	0x3dd
	.4byte	.LLST1
	.uleb128 0x18
	.4byte	.LASF80
	.4byte	0x500
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5804
	.uleb128 0x19
	.4byte	.LASF78
	.byte	0x1
	.byte	0xbd
	.4byte	0x158
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1a
	.4byte	.LVL6
	.4byte	0x1128
	.uleb128 0x1b
	.4byte	.LVL7
	.4byte	0x1133
	.4byte	0x47c
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5804
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL10
	.4byte	0x113e
	.uleb128 0x1a
	.4byte	.LVL11
	.4byte	0x1149
	.uleb128 0x1a
	.4byte	.LVL13
	.4byte	0x1128
	.uleb128 0x1b
	.4byte	.LVL14
	.4byte	0x1133
	.4byte	0x4d5
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5804
	.uleb128 0x1c
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL17
	.4byte	0x1154
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x48
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0xab
	.4byte	0x500
	.uleb128 0x9
	.4byte	0x9b
	.byte	0xa
	.byte	0
	.uleb128 0x7
	.4byte	0x4f0
	.uleb128 0x1e
	.4byte	.LASF125
	.byte	0x1
	.byte	0x7b
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5bc
	.uleb128 0x17
	.4byte	.LASF79
	.byte	0x1
	.byte	0x7b
	.4byte	0x3dd
	.4byte	.LLST2
	.uleb128 0x18
	.4byte	.LASF80
	.4byte	0x5cc
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5787
	.uleb128 0x1f
	.string	"msg"
	.byte	0x1
	.byte	0x82
	.4byte	0x2bc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1f
	.string	"arg"
	.byte	0x1
	.byte	0x83
	.4byte	0x373
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1a
	.4byte	.LVL20
	.4byte	0x1128
	.uleb128 0x1b
	.4byte	.LVL22
	.4byte	0x1133
	.4byte	0x59b
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC11
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5787
	.uleb128 0x1c
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL25
	.4byte	0x115d
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x38
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0xab
	.4byte	0x5cc
	.uleb128 0x9
	.4byte	0x9b
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.4byte	0x5bc
	.uleb128 0x14
	.4byte	.LASF81
	.byte	0x1
	.byte	0xd7
	.4byte	0x25d
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7a5
	.uleb128 0x17
	.4byte	.LASF79
	.byte	0x1
	.byte	0xd7
	.4byte	0x3dd
	.4byte	.LLST3
	.uleb128 0x17
	.4byte	.LASF82
	.byte	0x1
	.byte	0xd7
	.4byte	0x222
	.4byte	.LLST4
	.uleb128 0x20
	.4byte	.LASF83
	.byte	0x1
	.byte	0xd7
	.4byte	0xff
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x18
	.4byte	.LASF80
	.4byte	0x7b5
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5816
	.uleb128 0x15
	.string	"ret"
	.byte	0x1
	.byte	0xdb
	.4byte	0x25d
	.4byte	.LLST5
	.uleb128 0x21
	.string	"end"
	.byte	0x1
	.byte	0xf7
	.4byte	.L17
	.uleb128 0x22
	.4byte	.LASF84
	.byte	0x1
	.byte	0xe9
	.4byte	0xde
	.4byte	.LLST6
	.uleb128 0x22
	.4byte	.LASF78
	.byte	0x1
	.byte	0xea
	.4byte	0x158
	.4byte	.LLST7
	.uleb128 0x1b
	.4byte	.LVL27
	.4byte	0x1168
	.4byte	0x68b
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC18
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xd9
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5816
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL28
	.4byte	0x1173
	.4byte	0x6a8
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	alarm_mutex
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL29
	.4byte	0x1128
	.uleb128 0x1b
	.4byte	.LVL31
	.4byte	0x1133
	.4byte	0x6ef
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC22
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5816
	.uleb128 0x1c
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL33
	.4byte	0x1128
	.uleb128 0x1b
	.4byte	.LVL34
	.4byte	0x1133
	.4byte	0x72f
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5816
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL39
	.4byte	0x117e
	.uleb128 0x1a
	.4byte	.LVL42
	.4byte	0x1189
	.uleb128 0x1a
	.4byte	.LVL44
	.4byte	0x1128
	.uleb128 0x1b
	.4byte	.LVL45
	.4byte	0x1133
	.4byte	0x788
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC25
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5816
	.uleb128 0x1c
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL48
	.4byte	0x1194
	.uleb128 0x1d
	.4byte	.LVL55
	.4byte	0x119f
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	alarm_mutex
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0xab
	.4byte	0x7b5
	.uleb128 0x9
	.4byte	0x9b
	.byte	0x9
	.byte	0
	.uleb128 0x7
	.4byte	0x7a5
	.uleb128 0x23
	.4byte	.LASF85
	.byte	0x1
	.byte	0x34
	.4byte	0x3a
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x83d
	.uleb128 0x18
	.4byte	.LASF80
	.4byte	0x84d
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5757
	.uleb128 0x1a
	.4byte	.LVL56
	.4byte	0x1128
	.uleb128 0x1b
	.4byte	.LVL57
	.4byte	0x1133
	.4byte	0x829
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC11
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5757
	.uleb128 0x1c
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL58
	.4byte	0x11aa
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	alarm_mutex
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0xab
	.4byte	0x84d
	.uleb128 0x9
	.4byte	0x9b
	.byte	0x14
	.byte	0
	.uleb128 0x7
	.4byte	0x83d
	.uleb128 0x23
	.4byte	.LASF86
	.byte	0x1
	.byte	0x3e
	.4byte	0x3a
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8d5
	.uleb128 0x18
	.4byte	.LASF80
	.4byte	0x8d5
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5761
	.uleb128 0x1a
	.4byte	.LVL59
	.4byte	0x1128
	.uleb128 0x1b
	.4byte	.LVL60
	.4byte	0x1133
	.4byte	0x8c1
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC11
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5761
	.uleb128 0x1c
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL61
	.4byte	0x11b5
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	alarm_mutex
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0x83d
	.uleb128 0x24
	.4byte	.LASF87
	.byte	0x1
	.byte	0x48
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9cc
	.uleb128 0x18
	.4byte	.LASF80
	.4byte	0x9dc
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5765
	.uleb128 0x21
	.string	"end"
	.byte	0x1
	.byte	0x54
	.4byte	.L35
	.uleb128 0x1b
	.4byte	.LVL62
	.4byte	0x1168
	.4byte	0x938
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC18
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x4a
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5765
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL63
	.4byte	0x1173
	.4byte	0x955
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	alarm_mutex
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL64
	.4byte	0x1128
	.uleb128 0x1b
	.4byte	.LVL65
	.4byte	0x1133
	.4byte	0x995
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC11
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5765
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL66
	.4byte	0x1154
	.4byte	0x9b8
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	alarm_cbs
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x2d0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL67
	.4byte	0x119f
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	alarm_mutex
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0xab
	.4byte	0x9dc
	.uleb128 0x9
	.4byte	0x9b
	.byte	0xe
	.byte	0
	.uleb128 0x7
	.4byte	0x9cc
	.uleb128 0x24
	.4byte	.LASF88
	.byte	0x1
	.byte	0x58
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xaeb
	.uleb128 0x18
	.4byte	.LASF80
	.4byte	0xaeb
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5770
	.uleb128 0x21
	.string	"end"
	.byte	0x1
	.byte	0x69
	.4byte	.L39
	.uleb128 0x25
	.4byte	.Ldebug_ranges0+0
	.4byte	0xa44
	.uleb128 0x15
	.string	"i"
	.byte	0x1
	.byte	0x62
	.4byte	0x3a
	.4byte	.LLST8
	.uleb128 0x1d
	.4byte	.LVL73
	.4byte	0x3f8
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0xf
	.byte	0x72
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x33
	.byte	0x24
	.byte	0x3
	.4byte	alarm_cbs
	.byte	0x22
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL68
	.4byte	0x1168
	.4byte	0xa73
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC18
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x5a
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5770
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL69
	.4byte	0x1173
	.4byte	0xa90
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	alarm_mutex
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL70
	.4byte	0x1128
	.uleb128 0x1b
	.4byte	.LVL71
	.4byte	0x1133
	.4byte	0xad7
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC11
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5770
	.uleb128 0x1c
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL78
	.4byte	0x119f
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	alarm_mutex
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0x5bc
	.uleb128 0x23
	.4byte	.LASF89
	.byte	0x1
	.byte	0x8b
	.4byte	0x3dd
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcdd
	.uleb128 0x17
	.4byte	.LASF90
	.byte	0x1
	.byte	0x8b
	.4byte	0xb2
	.4byte	.LLST9
	.uleb128 0x17
	.4byte	.LASF34
	.byte	0x1
	.byte	0x8b
	.4byte	0x22d
	.4byte	.LLST10
	.uleb128 0x20
	.4byte	.LASF91
	.byte	0x1
	.byte	0x8b
	.4byte	0xa2
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x20
	.4byte	.LASF92
	.byte	0x1
	.byte	0x8b
	.4byte	0x222
	.uleb128 0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x18
	.4byte	.LASF80
	.4byte	0xced
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5796
	.uleb128 0x22
	.4byte	.LASF93
	.byte	0x1
	.byte	0x8f
	.4byte	0x3dd
	.4byte	.LLST11
	.uleb128 0x21
	.string	"end"
	.byte	0x1
	.byte	0xb1
	.4byte	.L46
	.uleb128 0x1f
	.string	"tca"
	.byte	0x1
	.byte	0xa0
	.4byte	0x1db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x22
	.4byte	.LASF78
	.byte	0x1
	.byte	0xaa
	.4byte	0x158
	.4byte	.LLST12
	.uleb128 0x1b
	.4byte	.LVL80
	.4byte	0x1168
	.4byte	0xbbb
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC18
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x8d
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5796
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL81
	.4byte	0x1173
	.4byte	0xbd8
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	alarm_mutex
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL82
	.4byte	0x1128
	.uleb128 0x1b
	.4byte	.LVL84
	.4byte	0x1133
	.4byte	0xc1f
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC22
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5796
	.uleb128 0x1c
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL86
	.4byte	0x3ad
	.uleb128 0x1a
	.4byte	.LVL88
	.4byte	0x1128
	.uleb128 0x1b
	.4byte	.LVL89
	.4byte	0x1133
	.4byte	0xc68
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC60
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5796
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL93
	.4byte	0x11c0
	.4byte	0xc82
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL95
	.4byte	0x1128
	.uleb128 0x1b
	.4byte	.LVL96
	.4byte	0x1133
	.4byte	0xcc9
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC64
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5796
	.uleb128 0x1c
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL98
	.4byte	0x119f
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	alarm_mutex
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0xab
	.4byte	0xced
	.uleb128 0x9
	.4byte	0x9b
	.byte	0xd
	.byte	0
	.uleb128 0x7
	.4byte	0xcdd
	.uleb128 0x24
	.4byte	.LASF94
	.byte	0x1
	.byte	0xc7
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdeb
	.uleb128 0x17
	.4byte	.LASF79
	.byte	0x1
	.byte	0xc7
	.4byte	0x3dd
	.4byte	.LLST13
	.uleb128 0x18
	.4byte	.LASF80
	.4byte	0xdeb
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5809
	.uleb128 0x21
	.string	"end"
	.byte	0x1
	.byte	0xd2
	.4byte	.L51
	.uleb128 0x1b
	.4byte	.LVL100
	.4byte	0x1168
	.4byte	0xd5f
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC18
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xc9
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5809
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL101
	.4byte	0x1173
	.4byte	0xd7c
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	alarm_mutex
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL102
	.4byte	0x1128
	.uleb128 0x1b
	.4byte	.LVL104
	.4byte	0x1133
	.4byte	0xdc3
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC22
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5809
	.uleb128 0x1c
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL106
	.4byte	0x3f8
	.4byte	0xdd7
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL107
	.4byte	0x119f
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	alarm_mutex
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0x9cc
	.uleb128 0x23
	.4byte	.LASF95
	.byte	0x1
	.byte	0xfc
	.4byte	0x25d
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe40
	.uleb128 0x17
	.4byte	.LASF79
	.byte	0x1
	.byte	0xfc
	.4byte	0x3dd
	.4byte	.LLST14
	.uleb128 0x20
	.4byte	.LASF82
	.byte	0x1
	.byte	0xfc
	.4byte	0x222
	.uleb128 0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x1d
	.4byte	.LVL109
	.4byte	0x5d1
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LASF96
	.byte	0x1
	.2byte	0x101
	.4byte	0x25d
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe93
	.uleb128 0x27
	.4byte	.LASF79
	.byte	0x1
	.2byte	0x101
	.4byte	0x3dd
	.4byte	.LLST15
	.uleb128 0x28
	.4byte	.LASF97
	.byte	0x1
	.2byte	0x101
	.4byte	0x222
	.uleb128 0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x1d
	.4byte	.LVL112
	.4byte	0x5d1
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LASF98
	.byte	0x1
	.2byte	0x106
	.4byte	0x25d
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfb9
	.uleb128 0x27
	.4byte	.LASF79
	.byte	0x1
	.2byte	0x106
	.4byte	0x3dd
	.4byte	.LLST16
	.uleb128 0x29
	.string	"ret"
	.byte	0x1
	.2byte	0x108
	.4byte	0x3a
	.4byte	.LLST17
	.uleb128 0x18
	.4byte	.LASF80
	.4byte	0xfb9
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5833
	.uleb128 0x2a
	.string	"end"
	.byte	0x1
	.2byte	0x11c
	.4byte	.L56
	.uleb128 0x2b
	.4byte	.LASF78
	.byte	0x1
	.2byte	0x116
	.4byte	0x158
	.4byte	.LLST18
	.uleb128 0x1b
	.4byte	.LVL116
	.4byte	0x1173
	.4byte	0xf15
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	alarm_mutex
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL117
	.4byte	0x1128
	.uleb128 0x1b
	.4byte	.LVL119
	.4byte	0x1133
	.4byte	0xf5c
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC22
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5833
	.uleb128 0x1c
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL121
	.4byte	0x1128
	.uleb128 0x1b
	.4byte	.LVL122
	.4byte	0x1133
	.4byte	0xf9c
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5833
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL125
	.4byte	0x113e
	.uleb128 0x1d
	.4byte	.LVL129
	.4byte	0x119f
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	alarm_mutex
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0x5bc
	.uleb128 0x2c
	.4byte	.LASF99
	.byte	0x1
	.2byte	0x121
	.4byte	0x222
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1071
	.uleb128 0x27
	.4byte	.LASF79
	.byte	0x1
	.2byte	0x121
	.4byte	0x1071
	.4byte	.LLST19
	.uleb128 0x18
	.4byte	.LASF80
	.4byte	0x108c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5839
	.uleb128 0x2b
	.4byte	.LASF100
	.byte	0x1
	.2byte	0x124
	.4byte	0xde
	.4byte	.LLST20
	.uleb128 0x1b
	.4byte	.LVL131
	.4byte	0x1168
	.4byte	0x1037
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC18
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x123
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5839
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL132
	.4byte	0x1173
	.4byte	0x1054
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	alarm_mutex
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL133
	.4byte	0x1194
	.uleb128 0x1d
	.4byte	.LVL136
	.4byte	0x119f
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	alarm_mutex
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1077
	.uleb128 0x7
	.4byte	0x1e6
	.uleb128 0x8
	.4byte	0xab
	.4byte	0x108c
	.uleb128 0x9
	.4byte	0x9b
	.byte	0x1a
	.byte	0
	.uleb128 0x7
	.4byte	0x107c
	.uleb128 0x2c
	.4byte	.LASF101
	.byte	0x1
	.2byte	0x12d
	.4byte	0xd3
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10b5
	.uleb128 0x1a
	.4byte	.LVL142
	.4byte	0x1194
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF102
	.byte	0x4
	.2byte	0x2cc
	.4byte	0x10c8
	.byte	0x6
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.uleb128 0x7
	.4byte	0x106
	.uleb128 0x2d
	.4byte	.LASF103
	.byte	0x4
	.2byte	0x2cd
	.4byte	0x10e0
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0x106
	.uleb128 0x19
	.4byte	.LASF104
	.byte	0x1
	.byte	0x2c
	.4byte	0x389
	.uleb128 0x5
	.byte	0x3
	.4byte	alarm_mutex
	.uleb128 0x19
	.4byte	.LASF105
	.byte	0x1
	.byte	0x2d
	.4byte	0x3a
	.uleb128 0x5
	.byte	0x3
	.4byte	alarm_state
	.uleb128 0x8
	.4byte	0x1e6
	.4byte	0x1117
	.uleb128 0x9
	.4byte	0x9b
	.byte	0x1d
	.byte	0
	.uleb128 0x19
	.4byte	.LASF106
	.byte	0x1
	.byte	0x2f
	.4byte	0x1107
	.uleb128 0x5
	.byte	0x3
	.4byte	alarm_cbs
	.uleb128 0x2e
	.4byte	.LASF107
	.4byte	.LASF107
	.byte	0x7
	.byte	0x57
	.uleb128 0x2e
	.4byte	.LASF108
	.4byte	.LASF108
	.byte	0x7
	.byte	0x6b
	.uleb128 0x2e
	.4byte	.LASF109
	.4byte	.LASF109
	.byte	0x6
	.byte	0xaa
	.uleb128 0x2e
	.4byte	.LASF110
	.4byte	.LASF110
	.byte	0x6
	.byte	0xb7
	.uleb128 0x2f
	.4byte	.LASF126
	.4byte	.LASF126
	.uleb128 0x2e
	.4byte	.LASF111
	.4byte	.LASF111
	.byte	0xa
	.byte	0x4c
	.uleb128 0x2e
	.4byte	.LASF112
	.4byte	.LASF112
	.byte	0xe
	.byte	0x29
	.uleb128 0x2e
	.4byte	.LASF113
	.4byte	.LASF113
	.byte	0xd
	.byte	0x25
	.uleb128 0x2e
	.4byte	.LASF114
	.4byte	.LASF114
	.byte	0x6
	.byte	0x9d
	.uleb128 0x2e
	.4byte	.LASF115
	.4byte	.LASF115
	.byte	0x6
	.byte	0x8e
	.uleb128 0x2e
	.4byte	.LASF116
	.4byte	.LASF116
	.byte	0x6
	.byte	0xbe
	.uleb128 0x2e
	.4byte	.LASF117
	.4byte	.LASF117
	.byte	0xd
	.byte	0x27
	.uleb128 0x2e
	.4byte	.LASF118
	.4byte	.LASF118
	.byte	0xd
	.byte	0x23
	.uleb128 0x2e
	.4byte	.LASF119
	.4byte	.LASF119
	.byte	0xd
	.byte	0x29
	.uleb128 0x2e
	.4byte	.LASF120
	.4byte	.LASF120
	.byte	0x6
	.byte	0x7f
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
	.uleb128 0xd
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL3
	.4byte	.LFE30
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST1:
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
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL18
	.4byte	.LFE33
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL19
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL21
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
	.4byte	.LFE31
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL26
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL30
	.4byte	.LVL32
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
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
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL54
	.4byte	.LFE35
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL26
	.4byte	.LVL37
	.2byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL37
	.4byte	.LFE35
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL27
	.4byte	.LVL31
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x3
	.byte	0x9
	.byte	0xfd
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LVL34
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LVL36
	.2byte	0x3
	.byte	0x9
	.byte	0xfe
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LVL45
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL45
	.4byte	.LVL47
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LVL54
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL54
	.4byte	.LFE35
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL38
	.4byte	.LVL50
	.2byte	0x6
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x6
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL43
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL51
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL72
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL76
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL79
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL83
	.4byte	.LVL85
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL85
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL91
	.4byte	.LFE32
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL79
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL92
	.4byte	.LVL93-1
	.2byte	0x2
	.byte	0x75
	.sleb128 4
	.4byte	.LVL93-1
	.4byte	.LFE32
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL80
	.4byte	.LVL87
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL87
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL89
	.4byte	.LVL90
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL90
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL96
	.4byte	.LVL97
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL97
	.4byte	.LFE32
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL94
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL99
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL103
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
	.4byte	.LFE34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL108
	.4byte	.LVL110
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL110
	.4byte	.LFE36
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL111
	.4byte	.LVL113
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL113
	.4byte	.LFE37
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL114
	.4byte	.LVL118
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL118
	.4byte	.LVL120
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL120
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
	.4byte	.LVL126
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL126
	.4byte	.LVL127
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL127
	.4byte	.LVL128
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL128
	.4byte	.LFE38
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL115
	.4byte	.LVL119
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL119
	.4byte	.LVL120
	.2byte	0x3
	.byte	0x9
	.byte	0xfd
	.byte	0x9f
	.4byte	.LVL120
	.4byte	.LVL122
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL122
	.4byte	.LVL124
	.2byte	0x3
	.byte	0x9
	.byte	0xfe
	.byte	0x9f
	.4byte	.LVL124
	.4byte	.LVL128
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL128
	.4byte	.LFE38
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL125
	.4byte	.LVL128
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL130
	.4byte	.LVL134
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL134
	.4byte	.LFE39
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL131
	.4byte	.LVL135
	.2byte	0xa
	.byte	0x9e
	.uleb128 0x8
	.8byte	0
	.4byte	.LVL135
	.4byte	.LVL137
	.2byte	0x6
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL137
	.4byte	.LVL139
	.2byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL140
	.4byte	.LVL141
	.2byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x8c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
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
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	.LFB36
	.4byte	.LFE36
	.4byte	.LFB37
	.4byte	.LFE37
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF99:
	.string	"osi_alarm_get_remaining_ms"
.LASF43:
	.string	"OSI_ALARM_ERR_PASS"
.LASF20:
	.string	"uint64_t"
.LASF51:
	.string	"btc_msg_t"
.LASF29:
	.string	"esp_err_t"
.LASF6:
	.string	"__uint8_t"
.LASF55:
	.string	"BTC_PID_MAIN_INIT"
.LASF77:
	.string	"alarm_free"
.LASF85:
	.string	"osi_alarm_create_mux"
.LASF46:
	.string	"OSI_ALARM_ERR_INVALID_STATE"
.LASF97:
	.string	"period"
.LASF52:
	.string	"BTC_SIG_API_CALL"
.LASF0:
	.string	"long long unsigned int"
.LASF67:
	.string	"BTC_PID_A2DP"
.LASF9:
	.string	"__int64_t"
.LASF48:
	.string	"QueueHandle_t"
.LASF64:
	.string	"BTC_PID_ALARM"
.LASF122:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/osi/alarm.c"
.LASF78:
	.string	"stat"
.LASF125:
	.string	"alarm_cb_handler"
.LASF33:
	.string	"esp_timer_dispatch_t"
.LASF10:
	.string	"long long int"
.LASF3:
	.string	"signed char"
.LASF116:
	.string	"esp_timer_get_time"
.LASF42:
	.string	"osi_alarm_callback_t"
.LASF71:
	.string	"btc_alarm_args_t"
.LASF59:
	.string	"BTC_PID_GAP_BLE"
.LASF69:
	.string	"BTC_PID_SPP"
.LASF45:
	.string	"OSI_ALARM_ERR_INVALID_ARG"
.LASF12:
	.string	"long int"
.LASF79:
	.string	"alarm"
.LASF65:
	.string	"BTC_PID_GAP_BT"
.LASF111:
	.string	"btc_transfer_context"
.LASF108:
	.string	"esp_log_write"
.LASF112:
	.string	"__assert_func"
.LASF27:
	.string	"ESP_LOG_DEBUG"
.LASF83:
	.string	"is_periodic"
.LASF31:
	.string	"esp_timer_cb_t"
.LASF63:
	.string	"BTC_PID_DM_SEC"
.LASF101:
	.string	"osi_time_get_os_boottime_ms"
.LASF8:
	.string	"__uint32_t"
.LASF92:
	.string	"timer_expire"
.LASF109:
	.string	"esp_timer_stop"
.LASF1:
	.string	"unsigned int"
.LASF41:
	.string	"period_ms_t"
.LASF14:
	.string	"long unsigned int"
.LASF82:
	.string	"timeout"
.LASF36:
	.string	"name"
.LASF86:
	.string	"osi_alarm_delete_mux"
.LASF91:
	.string	"data"
.LASF110:
	.string	"esp_timer_delete"
.LASF61:
	.string	"BTC_PID_SPPLIKE"
.LASF2:
	.string	"short unsigned int"
.LASF96:
	.string	"osi_alarm_set_periodic"
.LASF118:
	.string	"osi_mutex_new"
.LASF93:
	.string	"timer_id"
.LASF68:
	.string	"BTC_PID_AVRC"
.LASF56:
	.string	"BTC_PID_DEV"
.LASF87:
	.string	"osi_alarm_init"
.LASF34:
	.string	"callback"
.LASF106:
	.string	"alarm_cbs"
.LASF49:
	.string	"alarm_t"
.LASF35:
	.string	"dispatch_method"
.LASF60:
	.string	"BTC_PID_BLE_HID"
.LASF26:
	.string	"ESP_LOG_INFO"
.LASF54:
	.string	"BTC_SIG_NUM"
.LASF94:
	.string	"osi_alarm_free"
.LASF104:
	.string	"alarm_mutex"
.LASF37:
	.string	"esp_timer_create_args_t"
.LASF47:
	.string	"osi_alarm_err_t"
.LASF50:
	.string	"btc_msg"
.LASF13:
	.string	"sizetype"
.LASF39:
	.string	"cb_data"
.LASF74:
	.string	"ALARM_STATE_IDLE"
.LASF62:
	.string	"BTC_PID_BLUFI"
.LASF32:
	.string	"ESP_TIMER_TASK"
.LASF114:
	.string	"esp_timer_start_periodic"
.LASF53:
	.string	"BTC_SIG_API_CB"
.LASF11:
	.string	"__uint64_t"
.LASF88:
	.string	"osi_alarm_deinit"
.LASF113:
	.string	"osi_mutex_lock"
.LASF103:
	.string	"bd_addr_null"
.LASF22:
	.string	"_Bool"
.LASF17:
	.string	"int32_t"
.LASF4:
	.string	"unsigned char"
.LASF121:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF5:
	.string	"short int"
.LASF84:
	.string	"timeout_us"
.LASF126:
	.string	"memset"
.LASF107:
	.string	"esp_log_timestamp"
.LASF24:
	.string	"ESP_LOG_ERROR"
.LASF80:
	.string	"__func__"
.LASF105:
	.string	"alarm_state"
.LASF70:
	.string	"BTC_PID_NUM"
.LASF117:
	.string	"osi_mutex_unlock"
.LASF58:
	.string	"BTC_PID_GATT_COMMON"
.LASF76:
	.string	"alarm_cbs_lookfor_available"
.LASF72:
	.string	"SemaphoreHandle_t"
.LASF15:
	.string	"char"
.LASF28:
	.string	"ESP_LOG_VERBOSE"
.LASF73:
	.string	"osi_mutex_t"
.LASF30:
	.string	"esp_timer_handle_t"
.LASF38:
	.string	"alarm_hdl"
.LASF23:
	.string	"ESP_LOG_NONE"
.LASF7:
	.string	"__int32_t"
.LASF90:
	.string	"alarm_name"
.LASF44:
	.string	"OSI_ALARM_ERR_FAIL"
.LASF75:
	.string	"ALARM_STATE_OPEN"
.LASF89:
	.string	"osi_alarm_new"
.LASF98:
	.string	"osi_alarm_cancel"
.LASF18:
	.string	"uint32_t"
.LASF115:
	.string	"esp_timer_start_once"
.LASF25:
	.string	"ESP_LOG_WARN"
.LASF66:
	.string	"BTC_PID_PRF_QUE"
.LASF21:
	.string	"UINT8"
.LASF16:
	.string	"uint8_t"
.LASF102:
	.string	"bd_addr_any"
.LASF95:
	.string	"osi_alarm_set"
.LASF40:
	.string	"deadline_us"
.LASF123:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\bt"
.LASF120:
	.string	"esp_timer_create"
.LASF81:
	.string	"alarm_set"
.LASF19:
	.string	"int64_t"
.LASF57:
	.string	"BTC_PID_GATTS"
.LASF119:
	.string	"osi_mutex_free"
.LASF100:
	.string	"dt_us"
.LASF124:
	.string	"esp_timer"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
