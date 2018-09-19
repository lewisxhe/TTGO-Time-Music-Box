	.file	"dport_access.c"
	.text
.Ltext0:
	.section	.text.dport_access_init_core,"ax",@progbits
	.literal_position
	.literal .LC0, 268435456
	.literal .LC1, dport_access_ref
	.literal .LC2, dport_access_start
	.literal .LC3, dport_access_end
	.literal .LC4, dport_core_state
	.align	4
	.type	dport_access_init_core, @function
dport_access_init_core:
.LFB30:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/dport_access.c"
	.loc 1 159 0
.LVL0:
	entry	sp, 32
.LCFI0:
.LVL1:
.LBB18:
.LBB19:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/portable.h"
	.loc 2 208 0
#APP
# 208 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/portable.h" 1
	rsr.prid a2
 extui a2,a2,13,1
# 0 "" 2
.LVL2:
#NO_APP
.LBE19:
.LBE18:
	.loc 1 165 0
	beqi	a2, 1, .L3
	.loc 1 161 0
	movi.n	a4, 0x1a
	j	.L2
.L3:
	.loc 1 166 0
	movi.n	a4, 0x1b
.L2:
.LVL3:
	.loc 1 169 0
	l32r	a3, .LC0
	mov.n	a10, a3
	call8	xt_ints_off
.LVL4:
	.loc 1 170 0
	movi.n	a12, 0x1c
	mov.n	a11, a4
	mov.n	a10, a2
	call8	intr_matrix_set
.LVL5:
	.loc 1 171 0
	mov.n	a10, a3
	call8	xt_ints_on
.LVL6:
	.loc 1 173 0
	slli	a8, a2, 2
	l32r	a2, .LC1
.LVL7:
	add.n	a2, a2, a8
	movi.n	a10, 0
	memw
	s32i.n	a10, a2, 0
	.loc 1 174 0
	l32r	a2, .LC2
	add.n	a2, a2, a8
	memw
	s32i.n	a10, a2, 0
	.loc 1 175 0
	l32r	a2, .LC3
	add.n	a2, a2, a8
	memw
	s32i.n	a10, a2, 0
	.loc 1 176 0
	l32r	a2, .LC4
	add.n	a8, a2, a8
	movi.n	a2, 1
	memw
	s32i.n	a2, a8, 0
	.loc 1 178 0
	call8	vTaskDelete
.LVL8:
	retw.n
.LFE30:
	.size	dport_access_init_core, .-dport_access_init_core
	.section	.iram1,"ax",@progbits
	.literal_position
	.literal .LC5, dport_core_state
	.literal .LC6, dport_access_ref
	.literal .LC7, g_dport_mux
	.literal .LC8, oldInterruptLevel
	.literal .LC9, dport_access_start
	.literal .LC10, dport_access_end
	.literal .LC11, 1072693480
	.literal .LC12, 1072693476
	.literal .LC13, 1073107964
	.align	4
	.global	esp_dport_access_stall_other_cpu_start
	.type	esp_dport_access_stall_other_cpu_start, @function
esp_dport_access_stall_other_cpu_start:
.LFB26:
	.loc 1 71 0
	entry	sp, 32
.LCFI1:
	.loc 1 73 0
	l32r	a2, .LC5
	memw
	l32i.n	a2, a2, 0
	beqz.n	a2, .L4
	.loc 1 74 0
	l32r	a2, .LC5
	memw
	l32i.n	a2, a2, 4
	beqz.n	a2, .L4
.LBB20:
.LBB21:
.LBB22:
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/portmacro.h"
	.loc 3 249 0
#APP
# 249 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/portmacro.h" 1
	rsil	a3, 3

# 0 "" 2
.LVL9:
#NO_APP
.LBE22:
.LBE21:
.LBE20:
.LBB23:
.LBB24:
	.loc 2 208 0
#APP
# 208 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/portable.h" 1
	rsr.prid a2
 extui a2,a2,13,1
# 0 "" 2
.LVL10:
#NO_APP
.LBE24:
.LBE23:
	.loc 1 86 0
	l32r	a8, .LC6
	addx4	a8, a2, a8
	memw
	l32i.n	a8, a8, 0
	bnez.n	a8, .L6
	.loc 1 87 0
	l32r	a10, .LC7
	call8	vTaskEnterCritical
.LVL11:
	.loc 1 89 0
	slli	a8, a2, 2
	l32r	a9, .LC8
	add.n	a9, a9, a8
	s32i.n	a3, a9, 0
	.loc 1 91 0
	l32r	a9, .LC9
	add.n	a9, a9, a8
	movi.n	a10, 0
	memw
	s32i.n	a10, a9, 0
	.loc 1 92 0
	l32r	a9, .LC10
	add.n	a8, a9, a8
	memw
	s32i.n	a10, a8, 0
	.loc 1 94 0
	bne	a2, a10, .L7
	.loc 1 95 0
	movi.n	a9, 1
	l32r	a8, .LC11
	memw
	s32i.n	a9, a8, 0
	j	.L9
.L7:
	.loc 1 97 0
	movi.n	a9, 1
	l32r	a8, .LC12
	memw
	s32i.n	a9, a8, 0
.L9:
	.loc 1 100 0 discriminator 1
	l32r	a8, .LC9
	addx4	a8, a2, a8
	memw
	l32i.n	a8, a8, 0
	beqz.n	a8, .L9
.LBB25:
	.loc 1 102 0
	l32r	a8, .LC13
	memw
	l32i.n	a8, a8, 0
.L6:
.LBE25:
	.loc 1 105 0
	l32r	a8, .LC6
	addx4	a2, a2, a8
.LVL12:
	memw
	l32i.n	a8, a2, 0
	addi.n	a8, a8, 1
	memw
	s32i.n	a8, a2, 0
	.loc 1 107 0
	memw
	l32i.n	a2, a2, 0
	bltui	a2, 2, .L4
	.loc 1 109 0
	mov.n	a10, a3
	call8	_xtos_set_intlevel
.LVL13:
.L4:
	retw.n
.LFE26:
	.size	esp_dport_access_stall_other_cpu_start, .-esp_dport_access_stall_other_cpu_start
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC16:
	.string	"0"
	.align	4
.LC19:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/esp32/dport_access.c"
	.section	.iram1
	.literal_position
	.literal .LC14, dport_core_state
	.literal .LC15, dport_access_ref
	.literal .LC17, .LC16
	.literal .LC18, __func__$5519
	.literal .LC20, .LC19
	.literal .LC21, dport_access_end
	.literal .LC22, g_dport_mux
	.literal .LC23, oldInterruptLevel
	.align	4
	.global	esp_dport_access_stall_other_cpu_end
	.type	esp_dport_access_stall_other_cpu_end, @function
esp_dport_access_stall_other_cpu_end:
.LFB27:
	.loc 1 116 0
	entry	sp, 32
.LCFI2:
.LBB26:
.LBB27:
	.loc 2 208 0
#APP
# 208 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/portable.h" 1
	rsr.prid a8
 extui a8,a8,13,1
# 0 "" 2
.LVL14:
#NO_APP
.LBE27:
.LBE26:
	.loc 1 120 0
	l32r	a2, .LC14
	memw
	l32i.n	a2, a2, 0
	beqz.n	a2, .L10
	.loc 1 121 0
	l32r	a2, .LC14
	memw
	l32i.n	a2, a2, 4
	beqz.n	a2, .L10
	.loc 1 125 0
	l32r	a2, .LC15
	addx4	a2, a8, a2
	memw
	l32i.n	a2, a2, 0
	bnez.n	a2, .L12
	.loc 1 126 0
	l32r	a13, .LC17
	l32r	a12, .LC18
	movi	a11, 0x7e
	l32r	a10, .LC20
	call8	__assert_func
.LVL15:
.L12:
	.loc 1 129 0
	l32r	a2, .LC15
	addx4	a2, a8, a2
	memw
	l32i.n	a9, a2, 0
	addi.n	a9, a9, -1
	memw
	s32i.n	a9, a2, 0
	.loc 1 131 0
	memw
	l32i.n	a2, a2, 0
	bnez.n	a2, .L10
	.loc 1 132 0
	slli	a2, a8, 2
	l32r	a8, .LC21
.LVL16:
	add.n	a8, a8, a2
	movi.n	a9, 1
	memw
	s32i.n	a9, a8, 0
	.loc 1 134 0
	l32r	a10, .LC22
	call8	vTaskExitCritical
.LVL17:
	.loc 1 136 0
	l32r	a8, .LC23
	add.n	a8, a8, a2
	l32i.n	a10, a8, 0
	call8	_xtos_set_intlevel
.LVL18:
.L10:
	retw.n
.LFE27:
	.size	esp_dport_access_stall_other_cpu_end, .-esp_dport_access_stall_other_cpu_end
	.align	4
	.global	esp_dport_access_stall_other_cpu_start_wrap
	.type	esp_dport_access_stall_other_cpu_start_wrap, @function
esp_dport_access_stall_other_cpu_start_wrap:
.LFB28:
	.loc 1 148 0
	entry	sp, 32
.LCFI3:
	.loc 1 149 0
	call8	esp_dport_access_stall_other_cpu_start
.LVL19:
	retw.n
.LFE28:
	.size	esp_dport_access_stall_other_cpu_start_wrap, .-esp_dport_access_stall_other_cpu_start_wrap
	.align	4
	.global	esp_dport_access_stall_other_cpu_end_wrap
	.type	esp_dport_access_stall_other_cpu_end_wrap, @function
esp_dport_access_stall_other_cpu_end_wrap:
.LFB29:
	.loc 1 153 0
	entry	sp, 32
.LCFI4:
	.loc 1 154 0
	call8	esp_dport_access_stall_other_cpu_end
.LVL20:
	retw.n
.LFE29:
	.size	esp_dport_access_stall_other_cpu_end_wrap, .-esp_dport_access_stall_other_cpu_end_wrap
	.section	.rodata.str1.4
	.align	4
.LC24:
	.string	"dport"
	.align	4
.LC27:
	.string	"res == pdTRUE"
	.section	.text.esp_dport_access_int_init,"ax",@progbits
	.literal_position
	.literal .LC25, .LC24
	.literal .LC26, dport_access_init_core
	.literal .LC28, .LC27
	.literal .LC29, __func__$5535
	.literal .LC30, .LC19
	.align	4
	.global	esp_dport_access_int_init
	.type	esp_dport_access_int_init, @function
esp_dport_access_int_init:
.LFB31:
	.loc 1 184 0
	entry	sp, 48
.LCFI5:
.LBB28:
.LBB29:
	.loc 2 208 0
#APP
# 208 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/portable.h" 1
	rsr.prid a8
 extui a8,a8,13,1
# 0 "" 2
.LVL21:
#NO_APP
.LBE29:
.LBE28:
	.loc 1 186 0
	s32i.n	a8, sp, 0
	movi.n	a15, 0
	movi.n	a14, 5
	mov.n	a13, a15
	movi	a12, 0x300
	l32r	a11, .LC25
	l32r	a10, .LC26
	call8	xTaskCreatePinnedToCore
.LVL22:
	.loc 1 187 0
	beqi	a10, 1, .L15
	.loc 1 187 0 is_stmt 0 discriminator 1
	l32r	a13, .LC28
	l32r	a12, .LC29
	movi	a11, 0xbb
	l32r	a10, .LC30
.LVL23:
	call8	__assert_func
.LVL24:
.L15:
	retw.n
.LFE31:
	.size	esp_dport_access_int_init, .-esp_dport_access_int_init
	.section	.iram1
	.literal_position
	.literal .LC31, g_dport_mux
	.literal .LC32, dport_core_state
	.align	4
	.global	esp_dport_access_int_pause
	.type	esp_dport_access_int_pause, @function
esp_dport_access_int_pause:
.LFB32:
	.loc 1 192 0 is_stmt 1
	entry	sp, 32
.LCFI6:
	.loc 1 194 0
	l32r	a2, .LC31
	mov.n	a10, a2
	call8	vTaskEnterCritical
.LVL25:
	.loc 1 195 0
	l32r	a8, .LC32
	movi.n	a9, 0
	memw
	s32i.n	a9, a8, 0
	.loc 1 196 0
	memw
	s32i.n	a9, a8, 4
	.loc 1 197 0
	mov.n	a10, a2
	call8	vTaskExitCritical
.LVL26:
	retw.n
.LFE32:
	.size	esp_dport_access_int_pause, .-esp_dport_access_int_pause
	.literal_position
	.literal .LC33, dport_core_state
	.align	4
	.global	esp_dport_access_int_abort
	.type	esp_dport_access_int_abort, @function
esp_dport_access_int_abort:
.LFB33:
	.loc 1 203 0
	entry	sp, 32
.LCFI7:
	.loc 1 205 0
	l32r	a8, .LC33
	movi.n	a9, 0
	memw
	s32i.n	a9, a8, 0
	.loc 1 206 0
	memw
	s32i.n	a9, a8, 4
	retw.n
.LFE33:
	.size	esp_dport_access_int_abort, .-esp_dport_access_int_abort
	.literal_position
	.literal .LC34, g_dport_mux
	.literal .LC35, dport_core_state
	.align	4
	.global	esp_dport_access_int_resume
	.type	esp_dport_access_int_resume, @function
esp_dport_access_int_resume:
.LFB34:
	.loc 1 211 0
	entry	sp, 32
.LCFI8:
	.loc 1 213 0
	l32r	a2, .LC34
	mov.n	a10, a2
	call8	vTaskEnterCritical
.LVL27:
	.loc 1 214 0
	l32r	a8, .LC35
	movi.n	a9, 1
	memw
	s32i.n	a9, a8, 0
	.loc 1 215 0
	memw
	s32i.n	a9, a8, 4
	.loc 1 216 0
	mov.n	a10, a2
	call8	vTaskExitCritical
.LVL28:
	retw.n
.LFE34:
	.size	esp_dport_access_int_resume, .-esp_dport_access_int_resume
	.align	4
	.global	esp_dport_access_reg_read
	.type	esp_dport_access_reg_read, @function
esp_dport_access_reg_read:
.LFB36:
	.loc 1 251 0
.LVL29:
	entry	sp, 32
.LCFI9:
	.loc 1 257 0
#APP
# 257 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/dport_access.c" 1
	movi a8, 0x3ff40078
rsil a9, 3
l32i a8, a8, 0
l32i a2, a2, 0
wsr  a9, 230
rsync

# 0 "" 2
.LVL30:
	.loc 1 270 0
#NO_APP
	retw.n
.LFE36:
	.size	esp_dport_access_reg_read, .-esp_dport_access_reg_read
	.align	4
	.global	esp_dport_access_sequence_reg_read
	.type	esp_dport_access_sequence_reg_read, @function
esp_dport_access_sequence_reg_read:
.LFB37:
	.loc 1 297 0
.LVL31:
	entry	sp, 32
.LCFI10:
	.loc 1 302 0
#APP
# 302 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/dport_access.c" 1
	movi a8, 0x3ff40078
l32i a8, a8, 0
l32i a2, a2, 0

# 0 "" 2
.LVL32:
	.loc 1 312 0
#NO_APP
	retw.n
.LFE37:
	.size	esp_dport_access_sequence_reg_read, .-esp_dport_access_sequence_reg_read
	.align	4
	.global	esp_dport_access_read_buffer
	.type	esp_dport_access_read_buffer, @function
esp_dport_access_read_buffer:
.LFB35:
	.loc 1 232 0
.LVL33:
	entry	sp, 32
.LCFI11:
.LBB30:
	.loc 1 233 0
#APP
# 233 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/dport_access.c" 1
	rsil	a7, 3

# 0 "" 2
.LVL34:
#NO_APP
.LBE30:
.LBB31:
	.loc 1 234 0
	movi.n	a5, 0
	j	.L23
.LVL35:
.L24:
	.loc 1 235 0 discriminator 3
	slli	a10, a5, 2
	add.n	a6, a2, a10
.LVL36:
.LBB32:
.LBB33:
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/dport_access.h"
	.loc 4 112 0 discriminator 3
	add.n	a10, a10, a3
.LVL37:
	call8	esp_dport_access_sequence_reg_read
.LVL38:
.LBE33:
.LBE32:
	.loc 1 235 0 discriminator 3
	s32i.n	a10, a6, 0
	.loc 1 234 0 discriminator 3
	addi.n	a5, a5, 1
.LVL39:
.L23:
	.loc 1 234 0 is_stmt 0 discriminator 1
	bltu	a5, a4, .L24
.LBE31:
	.loc 1 237 0 is_stmt 1
	mov.n	a10, a7
	call8	_xtos_set_intlevel
.LVL40:
	retw.n
.LFE35:
	.size	esp_dport_access_read_buffer, .-esp_dport_access_read_buffer
	.section	.rodata.__func__$5535,"a",@progbits
	.align	4
	.type	__func__$5535, @object
	.size	__func__$5535, 26
__func__$5535:
	.string	"esp_dport_access_int_init"
	.section	.rodata.__func__$5519,"a",@progbits
	.align	4
	.type	__func__$5519, @object
	.size	__func__$5519, 37
__func__$5519:
	.string	"esp_dport_access_stall_other_cpu_end"
	.section	.bss.oldInterruptLevel,"aw",@nobits
	.align	4
	.type	oldInterruptLevel, @object
	.size	oldInterruptLevel, 8
oldInterruptLevel:
	.zero	8
	.section	.bss.dport_access_ref,"aw",@nobits
	.align	4
	.type	dport_access_ref, @object
	.size	dport_access_ref, 8
dport_access_ref:
	.zero	8
	.comm	dport_access_end,8,4
	.comm	dport_access_start,8,4
	.section	.bss.dport_core_state,"aw",@nobits
	.align	4
	.type	dport_core_state, @object
	.size	dport_core_state, 8
dport_core_state:
	.zero	8
	.section	.data.g_dport_mux,"aw",@progbits
	.align	4
	.type	g_dport_mux, @object
	.size	g_dport_mux, 8
g_dport_mux:
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
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI1-.LFB26
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI2-.LFB27
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI3-.LFB28
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI4-.LFB29
	.byte	0xe
	.uleb128 0x20
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
	.uleb128 0x30
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
	.uleb128 0x20
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
	.uleb128 0x20
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
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x4
	.4byte	.LCFI9-.LFB36
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.byte	0x4
	.4byte	.LCFI10-.LFB37
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x4
	.4byte	.LCFI11-.LFB35
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE22:
	.text
.Letext0:
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/xtensa_api.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/ets_sys.h"
	.file 9 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/task.h"
	.file 10 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/xtensa/xtruntime.h"
	.file 11 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/assert.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x754
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF55
	.byte	0xc
	.4byte	.LASF56
	.4byte	.LASF57
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
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
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x5
	.byte	0x1a
	.4byte	0x53
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x6
	.byte	0x2d
	.4byte	0x48
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF13
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x3
	.byte	0x6f
	.4byte	0x41
	.uleb128 0x6
	.byte	0x8
	.byte	0x3
	.byte	0x82
	.4byte	0xc4
	.uleb128 0x7
	.4byte	.LASF15
	.byte	0x3
	.byte	0x8a
	.4byte	0x68
	.byte	0
	.uleb128 0x7
	.4byte	.LASF16
	.byte	0x3
	.byte	0x8f
	.4byte	0x68
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x3
	.byte	0x94
	.4byte	0xa3
	.uleb128 0x8
	.4byte	.LASF18
	.byte	0x2
	.byte	0xce
	.4byte	0x68
	.byte	0x3
	.4byte	0xea
	.uleb128 0x9
	.string	"id"
	.byte	0x2
	.byte	0xcf
	.4byte	0x41
	.byte	0
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0x3
	.byte	0xf8
	.4byte	0x53
	.byte	0x3
	.4byte	0x113
	.uleb128 0xa
	.4byte	.LASF20
	.byte	0x3
	.byte	0xf9
	.4byte	0x53
	.uleb128 0xb
	.uleb128 0xa
	.4byte	.LASF21
	.byte	0x3
	.byte	0xf9
	.4byte	0x53
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	.LASF58
	.byte	0x4
	.byte	0x6b
	.4byte	0x68
	.byte	0x3
	.4byte	0x12f
	.uleb128 0xd
	.string	"reg"
	.byte	0x4
	.byte	0x6b
	.4byte	0x68
	.byte	0
	.uleb128 0xe
	.4byte	.LASF59
	.byte	0x1
	.byte	0x9e
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1ef
	.uleb128 0xf
	.string	"arg"
	.byte	0x1
	.byte	0x9e
	.4byte	0x81
	.4byte	.LLST0
	.uleb128 0x10
	.4byte	.LASF22
	.byte	0x1
	.byte	0xa0
	.4byte	0x41
	.4byte	.LLST1
	.uleb128 0x10
	.4byte	.LASF23
	.byte	0x1
	.byte	0xa1
	.4byte	0x68
	.4byte	.LLST2
	.uleb128 0x11
	.4byte	0xcf
	.4byte	.LBB18
	.4byte	.LBE18-.LBB18
	.byte	0x1
	.byte	0xa4
	.4byte	0x198
	.uleb128 0x12
	.4byte	.LBB19
	.4byte	.LBE19-.LBB19
	.uleb128 0x13
	.4byte	0xdf
	.4byte	.LLST3
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	.LVL4
	.4byte	0x6f1
	.4byte	0x1ac
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.4byte	.LVL5
	.4byte	0x6fc
	.4byte	0x1cb
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x4c
	.byte	0
	.uleb128 0x14
	.4byte	.LVL6
	.4byte	0x708
	.4byte	0x1df
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL8
	.4byte	0x713
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LASF26
	.byte	0x1
	.byte	0x46
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2b4
	.uleb128 0x10
	.4byte	.LASF24
	.byte	0x1
	.byte	0x4e
	.4byte	0x98
	.4byte	.LLST4
	.uleb128 0x10
	.4byte	.LASF25
	.byte	0x1
	.byte	0x50
	.4byte	0x41
	.4byte	.LLST5
	.uleb128 0x18
	.4byte	.LASF28
	.4byte	0x2c4
	.uleb128 0x11
	.4byte	0xea
	.4byte	.LBB20
	.4byte	.LBE20-.LBB20
	.byte	0x1
	.byte	0x4e
	.4byte	0x265
	.uleb128 0x12
	.4byte	.LBB21
	.4byte	.LBE21-.LBB21
	.uleb128 0x13
	.4byte	0xfa
	.4byte	.LLST4
	.uleb128 0x12
	.4byte	.LBB22
	.4byte	.LBE22-.LBB22
	.uleb128 0x13
	.4byte	0x106
	.4byte	.LLST4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	0xcf
	.4byte	.LBB23
	.4byte	.LBE23-.LBB23
	.byte	0x1
	.byte	0x50
	.4byte	0x28c
	.uleb128 0x12
	.4byte	.LBB24
	.4byte	.LBE24-.LBB24
	.uleb128 0x13
	.4byte	0xdf
	.4byte	.LLST5
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	.LVL11
	.4byte	0x71f
	.4byte	0x2a3
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	g_dport_mux
	.byte	0
	.uleb128 0x16
	.4byte	.LVL13
	.4byte	0x72a
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	0x8a
	.4byte	0x2c4
	.uleb128 0x1a
	.4byte	0x7a
	.byte	0x26
	.byte	0
	.uleb128 0x1b
	.4byte	0x2b4
	.uleb128 0x17
	.4byte	.LASF27
	.byte	0x1
	.byte	0x73
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x373
	.uleb128 0x10
	.4byte	.LASF25
	.byte	0x1
	.byte	0x76
	.4byte	0x41
	.4byte	.LLST9
	.uleb128 0x1c
	.4byte	.LASF28
	.4byte	0x383
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5519
	.uleb128 0x11
	.4byte	0xcf
	.4byte	.LBB26
	.4byte	.LBE26-.LBB26
	.byte	0x1
	.byte	0x76
	.4byte	0x323
	.uleb128 0x12
	.4byte	.LBB27
	.4byte	.LBE27-.LBB27
	.uleb128 0x13
	.4byte	0xdf
	.4byte	.LLST9
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	.LVL15
	.4byte	0x735
	.4byte	0x352
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC19
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x7e
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5519
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC16
	.byte	0
	.uleb128 0x14
	.4byte	.LVL17
	.4byte	0x740
	.4byte	0x369
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	g_dport_mux
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL18
	.4byte	0x72a
	.byte	0
	.uleb128 0x19
	.4byte	0x8a
	.4byte	0x383
	.uleb128 0x1a
	.4byte	0x7a
	.byte	0x24
	.byte	0
	.uleb128 0x1b
	.4byte	0x373
	.uleb128 0x17
	.4byte	.LASF29
	.byte	0x1
	.byte	0x93
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3a7
	.uleb128 0x1d
	.4byte	.LVL19
	.4byte	0x1ef
	.byte	0
	.uleb128 0x17
	.4byte	.LASF30
	.byte	0x1
	.byte	0x98
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3c6
	.uleb128 0x1d
	.4byte	.LVL20
	.4byte	0x2c9
	.byte	0
	.uleb128 0x17
	.4byte	.LASF31
	.byte	0x1
	.byte	0xb7
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x482
	.uleb128 0x1e
	.string	"res"
	.byte	0x1
	.byte	0xba
	.4byte	0x41
	.4byte	.LLST11
	.uleb128 0x1c
	.4byte	.LASF28
	.4byte	0x492
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5535
	.uleb128 0x11
	.4byte	0xcf
	.4byte	.LBB28
	.4byte	.LBE28-.LBB28
	.byte	0x1
	.byte	0xba
	.4byte	0x420
	.uleb128 0x12
	.4byte	.LBB29
	.4byte	.LBE29-.LBB29
	.uleb128 0x13
	.4byte	0xdf
	.4byte	.LLST12
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	.LVL22
	.4byte	0x74b
	.4byte	0x456
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	dport_access_init_core
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC24
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x300
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x35
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x16
	.4byte	.LVL24
	.4byte	0x735
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC19
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xbb
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5535
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC27
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	0x8a
	.4byte	0x492
	.uleb128 0x1a
	.4byte	0x7a
	.byte	0x19
	.byte	0
	.uleb128 0x1b
	.4byte	0x482
	.uleb128 0x17
	.4byte	.LASF32
	.byte	0x1
	.byte	0xbf
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4d1
	.uleb128 0x14
	.4byte	.LVL25
	.4byte	0x71f
	.4byte	0x4c0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL26
	.4byte	0x740
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF60
	.byte	0x1
	.byte	0xca
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x17
	.4byte	.LASF33
	.byte	0x1
	.byte	0xd2
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x51c
	.uleb128 0x14
	.4byte	.LVL27
	.4byte	0x71f
	.4byte	0x50b
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL28
	.4byte	0x740
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LASF34
	.byte	0x1
	.byte	0xfa
	.4byte	0x68
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x55c
	.uleb128 0xf
	.string	"reg"
	.byte	0x1
	.byte	0xfa
	.4byte	0x68
	.4byte	.LLST13
	.uleb128 0x9
	.string	"apb"
	.byte	0x1
	.byte	0xff
	.4byte	0x68
	.uleb128 0x21
	.4byte	.LASF24
	.byte	0x1
	.2byte	0x100
	.4byte	0x53
	.byte	0
	.uleb128 0x22
	.4byte	.LASF35
	.byte	0x1
	.2byte	0x128
	.4byte	0x68
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x593
	.uleb128 0x23
	.string	"reg"
	.byte	0x1
	.2byte	0x128
	.4byte	0x68
	.4byte	.LLST14
	.uleb128 0x24
	.string	"apb"
	.byte	0x1
	.2byte	0x12d
	.4byte	0x68
	.byte	0
	.uleb128 0x17
	.4byte	.LASF36
	.byte	0x1
	.byte	0xe7
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x651
	.uleb128 0x25
	.4byte	.LASF37
	.byte	0x1
	.byte	0xe7
	.4byte	0x651
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x25
	.4byte	.LASF38
	.byte	0x1
	.byte	0xe7
	.4byte	0x68
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x25
	.4byte	.LASF39
	.byte	0x1
	.byte	0xe7
	.4byte	0x68
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x26
	.4byte	.LASF24
	.byte	0x1
	.byte	0xe9
	.4byte	0x53
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x27
	.4byte	.LBB30
	.4byte	.LBE30-.LBB30
	.4byte	0x5f7
	.uleb128 0x26
	.4byte	.LASF21
	.byte	0x1
	.byte	0xe9
	.4byte	0x53
	.uleb128 0x1
	.byte	0x57
	.byte	0
	.uleb128 0x27
	.4byte	.LBB31
	.4byte	.LBE31-.LBB31
	.4byte	0x640
	.uleb128 0x1e
	.string	"i"
	.byte	0x1
	.byte	0xea
	.4byte	0x68
	.4byte	.LLST15
	.uleb128 0x28
	.4byte	0x113
	.4byte	.LBB32
	.4byte	.LBE32-.LBB32
	.byte	0x1
	.byte	0xeb
	.uleb128 0x29
	.4byte	0x123
	.4byte	.LLST16
	.uleb128 0x16
	.4byte	.LVL38
	.4byte	0x55c
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x7
	.byte	0x75
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL40
	.4byte	0x72a
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.byte	0x4
	.4byte	0x68
	.uleb128 0x26
	.4byte	.LASF40
	.byte	0x1
	.byte	0x2d
	.4byte	0xc4
	.uleb128 0x5
	.byte	0x3
	.4byte	g_dport_mux
	.uleb128 0x19
	.4byte	0x68
	.4byte	0x678
	.uleb128 0x1a
	.4byte	0x7a
	.byte	0x1
	.byte	0
	.uleb128 0x26
	.4byte	.LASF41
	.byte	0x1
	.byte	0x31
	.4byte	0x689
	.uleb128 0x5
	.byte	0x3
	.4byte	dport_core_state
	.uleb128 0x2b
	.4byte	0x668
	.uleb128 0x26
	.4byte	.LASF42
	.byte	0x1
	.byte	0x37
	.4byte	0x69f
	.uleb128 0x5
	.byte	0x3
	.4byte	dport_access_ref
	.uleb128 0x2b
	.4byte	0x668
	.uleb128 0x19
	.4byte	0x98
	.4byte	0x6b4
	.uleb128 0x1a
	.4byte	0x7a
	.byte	0x1
	.byte	0
	.uleb128 0x26
	.4byte	.LASF43
	.byte	0x1
	.byte	0x42
	.4byte	0x6a4
	.uleb128 0x5
	.byte	0x3
	.4byte	oldInterruptLevel
	.uleb128 0x2c
	.4byte	.LASF44
	.byte	0x1
	.byte	0x34
	.4byte	0x6d6
	.uleb128 0x5
	.byte	0x3
	.4byte	dport_access_start
	.uleb128 0x2b
	.4byte	0x668
	.uleb128 0x2c
	.4byte	.LASF45
	.byte	0x1
	.byte	0x35
	.4byte	0x6ec
	.uleb128 0x5
	.byte	0x3
	.4byte	dport_access_end
	.uleb128 0x2b
	.4byte	0x668
	.uleb128 0x2d
	.4byte	.LASF46
	.4byte	.LASF46
	.byte	0x7
	.byte	0x5f
	.uleb128 0x2e
	.4byte	.LASF47
	.4byte	.LASF47
	.byte	0x8
	.2byte	0x21b
	.uleb128 0x2d
	.4byte	.LASF48
	.4byte	.LASF48
	.byte	0x7
	.byte	0x54
	.uleb128 0x2e
	.4byte	.LASF49
	.4byte	.LASF49
	.byte	0x9
	.2byte	0x2fe
	.uleb128 0x2d
	.4byte	.LASF50
	.4byte	.LASF50
	.byte	0x3
	.byte	0xda
	.uleb128 0x2d
	.4byte	.LASF51
	.4byte	.LASF51
	.byte	0xa
	.byte	0x99
	.uleb128 0x2d
	.4byte	.LASF52
	.4byte	.LASF52
	.byte	0xb
	.byte	0x29
	.uleb128 0x2d
	.4byte	.LASF53
	.4byte	.LASF53
	.byte	0x3
	.byte	0xd9
	.uleb128 0x2e
	.4byte	.LASF54
	.4byte	.LASF54
	.byte	0x9
	.2byte	0x14d
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
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x12
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
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
	.uleb128 0x18
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x5
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
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x2
	.byte	0x4a
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LFE30
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL2
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL9
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL10
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL14
	.4byte	.LVL15-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL24
	.4byte	.LFE31
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL21
	.4byte	.LVL22-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL30
	.4byte	.LFE36
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL32
	.4byte	.LFE37
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LFE35
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x6
	.byte	0x7a
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL37
	.4byte	.LVL38-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL38-1
	.4byte	.LVL39
	.2byte	0x8
	.byte	0x75
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x9f
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
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	.LFB36
	.4byte	.LFE36
	.4byte	.LFB37
	.4byte	.LFE37
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF58:
	.string	"DPORT_SEQUENCE_REG_READ"
.LASF20:
	.string	"state"
.LASF60:
	.string	"esp_dport_access_int_abort"
.LASF50:
	.string	"vTaskEnterCritical"
.LASF21:
	.string	"__tmp"
.LASF10:
	.string	"sizetype"
.LASF51:
	.string	"_xtos_set_intlevel"
.LASF18:
	.string	"xPortGetCoreID"
.LASF7:
	.string	"__uint32_t"
.LASF25:
	.string	"cpu_id"
.LASF23:
	.string	"intr_source"
.LASF2:
	.string	"short int"
.LASF19:
	.string	"portENTER_CRITICAL_NESTED"
.LASF39:
	.string	"num_words"
.LASF17:
	.string	"portMUX_TYPE"
.LASF31:
	.string	"esp_dport_access_int_init"
.LASF45:
	.string	"dport_access_end"
.LASF40:
	.string	"g_dport_mux"
.LASF41:
	.string	"dport_core_state"
.LASF5:
	.string	"long long int"
.LASF6:
	.string	"long long unsigned int"
.LASF29:
	.string	"esp_dport_access_stall_other_cpu_start_wrap"
.LASF9:
	.string	"long int"
.LASF37:
	.string	"buff_out"
.LASF42:
	.string	"dport_access_ref"
.LASF53:
	.string	"vTaskExitCritical"
.LASF1:
	.string	"unsigned char"
.LASF56:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/esp32/dport_access.c"
.LASF28:
	.string	"__func__"
.LASF15:
	.string	"owner"
.LASF48:
	.string	"xt_ints_on"
.LASF0:
	.string	"signed char"
.LASF38:
	.string	"address"
.LASF8:
	.string	"uint32_t"
.LASF22:
	.string	"core_id"
.LASF14:
	.string	"BaseType_t"
.LASF32:
	.string	"esp_dport_access_int_pause"
.LASF3:
	.string	"short unsigned int"
.LASF27:
	.string	"esp_dport_access_stall_other_cpu_end"
.LASF12:
	.string	"char"
.LASF30:
	.string	"esp_dport_access_stall_other_cpu_end_wrap"
.LASF49:
	.string	"vTaskDelete"
.LASF13:
	.string	"_Bool"
.LASF44:
	.string	"dport_access_start"
.LASF34:
	.string	"esp_dport_access_reg_read"
.LASF35:
	.string	"esp_dport_access_sequence_reg_read"
.LASF11:
	.string	"long unsigned int"
.LASF46:
	.string	"xt_ints_off"
.LASF47:
	.string	"intr_matrix_set"
.LASF59:
	.string	"dport_access_init_core"
.LASF16:
	.string	"count"
.LASF54:
	.string	"xTaskCreatePinnedToCore"
.LASF36:
	.string	"esp_dport_access_read_buffer"
.LASF33:
	.string	"esp_dport_access_int_resume"
.LASF24:
	.string	"intLvl"
.LASF26:
	.string	"esp_dport_access_stall_other_cpu_start"
.LASF43:
	.string	"oldInterruptLevel"
.LASF52:
	.string	"__assert_func"
.LASF57:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\esp32"
.LASF4:
	.string	"unsigned int"
.LASF55:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
