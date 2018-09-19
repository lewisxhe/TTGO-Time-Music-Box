	.file	"task_wdt.c"
	.text
.Ltext0:
	.section	.text.find_task_in_twdt_list,"ax",@progbits
	.literal_position
	.literal .LC0, twdt_config
	.align	4
	.type	find_task_in_twdt_list, @function
find_task_in_twdt_list:
.LFB19:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/task_wdt.c"
	.loc 1 87 0
.LVL0:
	entry	sp, 32
.LCFI0:
	mov.n	a10, a2
.LVL1:
	.loc 1 89 0
	movi.n	a2, 1
.LVL2:
	s8i	a2, a3, 0
.LBB2:
	.loc 1 90 0
	l32r	a2, .LC0
	l32i.n	a2, a2, 0
	l32i.n	a8, a2, 0
.LVL3:
.LBE2:
	.loc 1 88 0
	movi.n	a2, 0
.LBB3:
	.loc 1 90 0
	j	.L2
.LVL4:
.L4:
	.loc 1 91 0
	l32i.n	a9, a8, 0
	beq	a9, a10, .L5
	.loc 1 94 0
	l8ui	a9, a8, 4
	bnez.n	a9, .L3
	.loc 1 95 0
	s8i	a9, a3, 0
	j	.L3
.L5:
	.loc 1 92 0
	mov.n	a2, a8
.LVL5:
.L3:
	.loc 1 90 0 discriminator 2
	l32i.n	a8, a8, 8
.LVL6:
.L2:
	.loc 1 90 0 discriminator 1
	bnez.n	a8, .L4
.LBE3:
	.loc 1 100 0
	retw.n
.LFE19:
	.size	find_task_in_twdt_list, .-find_task_in_twdt_list
	.section	.text.reset_hw_timer,"ax",@progbits
	.literal_position
	.literal .LC1, TIMERG0
	.literal .LC2, 1356348065
	.literal .LC3, twdt_config
	.align	4
	.type	reset_hw_timer, @function
reset_hw_timer:
.LFB20:
	.loc 1 107 0
	entry	sp, 32
.LCFI1:
	.loc 1 109 0
	l32r	a8, .LC1
	l32r	a9, .LC2
	memw
	s32i	a9, a8, 100
	.loc 1 110 0
	movi.n	a9, 1
	memw
	s32i	a9, a8, 96
	.loc 1 111 0
	movi.n	a9, 0
	memw
	s32i	a9, a8, 100
.LBB4:
	.loc 1 113 0
	l32r	a8, .LC3
	l32i.n	a8, a8, 0
	l32i.n	a8, a8, 0
.LVL7:
	j	.L7
.L8:
	.loc 1 114 0 discriminator 3
	movi.n	a9, 0
	s8i	a9, a8, 4
	.loc 1 113 0 discriminator 3
	l32i.n	a8, a8, 8
.LVL8:
.L7:
	.loc 1 113 0 discriminator 1
	bnez.n	a8, .L8
.LBE4:
	.loc 1 116 0
	retw.n
.LFE20:
	.size	reset_hw_timer, .-reset_hw_timer
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC11:
	.string	"Task watchdog got triggered. The following tasks did not reset the watchdog in time:\n"
	.align	4
.LC14:
	.string	" - %s (%s)\n"
	.align	4
.LC17:
	.string	"CPU %d: %s\n"
	.align	4
.LC19:
	.string	"Aborting.\n"
	.section	.text.task_wdt_isr,"ax",@progbits
	.literal_position
	.literal .LC4, __c$5770
	.literal .LC5, __c$5772
	.literal .LC6, __c$5774
	.literal .LC7, twdt_spinlock
	.literal .LC8, TIMERG0
	.literal .LC9, 1356348065
	.literal .LC10, twdt_config
	.literal .LC12, .LC11
	.literal .LC13, 2147483647
	.literal .LC15, .LC14
	.literal .LC16, __c$5779
	.literal .LC18, .LC17
	.literal .LC20, .LC19
	.align	4
	.type	task_wdt_isr, @function
task_wdt_isr:
.LFB21:
	.loc 1 123 0
.LVL9:
	entry	sp, 32
.LCFI2:
	.loc 1 124 0
	l32r	a10, .LC7
	call8	vTaskEnterCritical
.LVL10:
	.loc 1 128 0
	l32r	a2, .LC8
.LVL11:
	l32r	a3, .LC9
	memw
	s32i	a3, a2, 100
	.loc 1 129 0
	movi.n	a3, 1
	memw
	s32i	a3, a2, 96
	.loc 1 130 0
	movi.n	a3, 0
	memw
	s32i	a3, a2, 100
	.loc 1 132 0
	memw
	l32i	a8, a2, 164
	movi.n	a3, 4
	or	a3, a8, a3
	memw
	s32i	a3, a2, 164
	.loc 1 139 0
	l32r	a2, .LC10
	l32i.n	a2, a2, 0
	l32i.n	a2, a2, 0
	bnez.n	a2, .L10
	.loc 1 139 0 discriminator 1
	l32r	a10, .LC7
	call8	vTaskExitCritical
.LVL12:
	retw.n
.L10:
	.loc 1 142 0
	l32r	a10, .LC12
	call8	ets_printf
.LVL13:
	.loc 1 143 0
	l32r	a2, .LC10
	l32i.n	a2, a2, 0
	l32i.n	a2, a2, 0
.LVL14:
	j	.L12
.L16:
	.loc 1 144 0
	l8ui	a8, a2, 4
	bnez.n	a8, .L13
	.loc 1 145 0
	l32i.n	a10, a2, 0
	call8	xTaskGetAffinity
.LVL15:
	bnez.n	a10, .L20
	l32r	a3, .LC4
	j	.L14
.L20:
	l32r	a3, .LC5
.L14:
.LVL16:
	.loc 1 146 0 discriminator 4
	l32i.n	a10, a2, 0
	call8	xTaskGetAffinity
.LVL17:
	l32r	a8, .LC13
	bne	a10, a8, .L15
	.loc 1 146 0 is_stmt 0
	l32r	a3, .LC6
.LVL18:
.L15:
	.loc 1 147 0 is_stmt 1
	l32i.n	a10, a2, 0
	call8	pcTaskGetTaskName
.LVL19:
	mov.n	a12, a3
	mov.n	a11, a10
	l32r	a10, .LC15
	call8	ets_printf
.LVL20:
.L13:
	.loc 1 143 0 discriminator 2
	l32i.n	a2, a2, 8
.LVL21:
.L12:
	.loc 1 143 0 discriminator 1
	bnez.n	a2, .L16
	.loc 1 150 0
	l32r	a10, .LC16
	call8	ets_printf
.LVL22:
.LBB5:
	.loc 1 151 0
	j	.L17
.LVL23:
.L18:
	.loc 1 152 0 discriminator 3
	mov.n	a10, a2
	call8	xTaskGetCurrentTaskHandleForCPU
.LVL24:
	call8	pcTaskGetTaskName
.LVL25:
	mov.n	a12, a10
	mov.n	a11, a2
	l32r	a10, .LC18
	call8	ets_printf
.LVL26:
	.loc 1 151 0 discriminator 3
	addi.n	a2, a2, 1
.LVL27:
.L17:
	.loc 1 151 0 is_stmt 0 discriminator 1
	blti	a2, 2, .L18
.LBE5:
	.loc 1 155 0 is_stmt 1
	l32r	a2, .LC10
.LVL28:
	l32i.n	a2, a2, 0
	l8ui	a2, a2, 8
	beqz.n	a2, .L19
	.loc 1 156 0
	l32r	a10, .LC20
	call8	ets_printf
.LVL29:
	.loc 1 157 0
	l32r	a10, .LC7
	call8	vTaskExitCritical
.LVL30:
	.loc 1 158 0
	call8	abort
.LVL31:
.L19:
	.loc 1 161 0
	l32r	a10, .LC7
	call8	vTaskExitCritical
.LVL32:
	retw.n
.LFE21:
	.size	task_wdt_isr, .-task_wdt_isr
	.section	.rodata.str1.4
	.align	4
.LC24:
	.string	"esp_intr_alloc(ETS_TG0_WDT_LEVEL_INTR_SOURCE, 0, task_wdt_isr, NULL, &twdt_config->intr_handle)"
	.align	4
.LC27:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/esp32/task_wdt.c"
	.section	.text.esp_task_wdt_init,"ax",@progbits
	.literal_position
	.literal .LC21, twdt_spinlock
	.literal .LC22, twdt_config
	.literal .LC23, task_wdt_isr
	.literal .LC25, .LC24
	.literal .LC26, __func__$5790
	.literal .LC28, .LC27
	.literal .LC29, TIMERG0
	.literal .LC30, 1356348065
	.literal .LC31, 229376
	.literal .LC32, 1835008
	.literal .LC33, 2097152
	.literal .LC34, -1610612737
	.literal .LC35, 536870912
	.literal .LC36, 402653184
	.literal .LC37, -1673527296
	.literal .LC38, -2147483648
	.literal .LC39, 2147483647
	.align	4
	.global	esp_task_wdt_init
	.type	esp_task_wdt_init, @function
esp_task_wdt_init:
.LFB22:
	.loc 1 171 0
.LVL33:
	entry	sp, 32
.LCFI3:
	extui	a3, a3, 0, 8
	.loc 1 172 0
	l32r	a10, .LC21
	call8	vTaskEnterCritical
.LVL34:
	.loc 1 173 0
	l32r	a8, .LC22
	l32i.n	a10, a8, 0
	bnez.n	a10, .L23
	.loc 1 175 0
	movi.n	a11, 0x10
	movi.n	a10, 1
	call8	calloc
.LVL35:
	l32r	a8, .LC22
	s32i.n	a10, a8, 0
	.loc 1 176 0
	bnez.n	a10, .L24
	.loc 1 176 0 discriminator 1
	l32r	a10, .LC21
	call8	vTaskExitCritical
.LVL36:
	movi	a2, 0x101
.LVL37:
	retw.n
.LVL38:
.L24:
	.loc 1 178 0
	movi.n	a11, 0
	s32i.n	a11, a10, 0
	.loc 1 179 0
	s32i.n	a2, a10, 4
	.loc 1 180 0
	s8i	a3, a10, 8
.LBB6:
	.loc 1 183 0
	addi.n	a14, a10, 12
	mov.n	a13, a11
	l32r	a12, .LC23
	movi.n	a10, 0x10
	call8	esp_intr_alloc
.LVL39:
	.loc 1 183 0
	beqz.n	a10, .L26
	.loc 1 183 0 is_stmt 0 discriminator 1
	l32r	a14, .LC25
	l32r	a13, .LC26
	movi	a12, 0xb7
	l32r	a11, .LC28
	call8	_esp_error_check_failed
.LVL40:
.L26:
.LBE6:
	.loc 1 186 0 is_stmt 1
	movi.n	a10, 8
.LVL41:
	call8	periph_module_enable
.LVL42:
	.loc 1 187 0
	l32r	a2, .LC29
.LVL43:
	l32r	a3, .LC30
.LVL44:
	memw
	s32i	a3, a2, 100
	.loc 1 188 0
	memw
	l32i	a8, a2, 72
	l32r	a3, .LC31
	or	a3, a8, a3
	memw
	s32i	a3, a2, 72
	.loc 1 189 0
	memw
	l32i	a8, a2, 72
	l32r	a3, .LC32
	or	a3, a8, a3
	memw
	s32i	a3, a2, 72
	.loc 1 190 0
	memw
	l32i	a8, a2, 72
	l32r	a3, .LC33
	or	a3, a8, a3
	memw
	s32i	a3, a2, 72
	.loc 1 191 0
	memw
	l32i	a8, a2, 72
	l32r	a3, .LC34
	and	a8, a8, a3
	l32r	a3, .LC35
	or	a3, a8, a3
	memw
	s32i	a3, a2, 72
	.loc 1 192 0
	memw
	l32i	a8, a2, 72
	l32r	a3, .LC36
	or	a3, a8, a3
	memw
	s32i	a3, a2, 72
	.loc 1 193 0
	memw
	l32i	a8, a2, 76
	extui	a8, a8, 0, 16
	l32r	a3, .LC37
	or	a3, a8, a3
	memw
	s32i	a3, a2, 76
	.loc 1 194 0
	l32r	a3, .LC22
	l32i.n	a9, a3, 0
	l32i.n	a8, a9, 4
	slli	a3, a8, 5
	sub	a3, a3, a8
	addx4	a3, a3, a8
	slli	a8, a3, 4
	memw
	s32i	a8, a2, 80
	.loc 1 195 0
	l32i.n	a8, a9, 4
	slli	a3, a8, 5
	sub	a3, a3, a8
	addx4	a3, a3, a8
	slli	a8, a3, 5
	memw
	s32i	a8, a2, 84
	.loc 1 196 0
	memw
	l32i	a8, a2, 72
	l32r	a3, .LC38
	or	a3, a8, a3
	memw
	s32i	a3, a2, 72
	.loc 1 197 0
	movi.n	a3, 1
	memw
	s32i	a3, a2, 96
	.loc 1 198 0
	movi.n	a3, 0
	memw
	s32i	a3, a2, 100
	j	.L27
.LVL45:
.L23:
	.loc 1 202 0
	s8i	a3, a10, 8
	.loc 1 203 0
	s32i.n	a2, a10, 4
	.loc 1 206 0
	l32r	a8, .LC29
	l32r	a2, .LC30
.LVL46:
	memw
	s32i	a2, a8, 100
.LVL47:
	.loc 1 207 0
	memw
	l32i	a11, a8, 72
	l32r	a9, .LC39
	and	a9, a11, a9
	memw
	s32i	a9, a8, 72
	.loc 1 208 0
	l32i.n	a11, a10, 4
	slli	a9, a11, 5
	sub	a9, a9, a11
	addx4	a9, a9, a11
	slli	a11, a9, 4
	memw
	s32i	a11, a8, 80
	.loc 1 209 0
	l32i.n	a10, a10, 4
	slli	a9, a10, 5
	sub	a9, a9, a10
	addx4	a9, a9, a10
	slli	a10, a9, 5
	memw
	s32i	a10, a8, 84
	.loc 1 210 0
	memw
	l32i	a10, a8, 72
	l32r	a9, .LC38
	or	a9, a10, a9
	memw
	s32i	a9, a8, 72
	.loc 1 211 0
	movi.n	a2, 1
	memw
	s32i	a2, a8, 96
	.loc 1 212 0
	movi.n	a2, 0
	memw
	s32i	a2, a8, 100
.L27:
	.loc 1 214 0
	l32r	a10, .LC21
	call8	vTaskExitCritical
.LVL48:
	.loc 1 215 0
	movi.n	a2, 0
	.loc 1 216 0
	retw.n
.LFE22:
	.size	esp_task_wdt_init, .-esp_task_wdt_init
	.section	.rodata.str1.4
	.align	4
.LC45:
	.string	"esp_intr_free(twdt_config->intr_handle)"
	.section	.text.esp_task_wdt_deinit,"ax",@progbits
	.literal_position
	.literal .LC40, twdt_spinlock
	.literal .LC41, twdt_config
	.literal .LC42, TIMERG0
	.literal .LC43, 1356348065
	.literal .LC44, 2147483647
	.literal .LC46, .LC45
	.literal .LC47, __func__$5794
	.literal .LC48, .LC27
	.align	4
	.global	esp_task_wdt_deinit
	.type	esp_task_wdt_deinit, @function
esp_task_wdt_deinit:
.LFB23:
	.loc 1 219 0
	entry	sp, 32
.LCFI4:
	.loc 1 220 0
	l32r	a10, .LC40
	call8	vTaskEnterCritical
.LVL49:
	.loc 1 222 0
	l32r	a2, .LC41
	l32i.n	a8, a2, 0
	bnez.n	a8, .L29
	.loc 1 222 0 discriminator 1
	l32r	a10, .LC40
	call8	vTaskExitCritical
.LVL50:
	movi	a2, 0x105
	retw.n
.L29:
	.loc 1 224 0
	l32i.n	a2, a8, 0
	beqz.n	a2, .L31
	.loc 1 224 0 discriminator 1
	l32r	a10, .LC40
	call8	vTaskExitCritical
.LVL51:
	movi	a2, 0x103
	retw.n
.L31:
	.loc 1 227 0
	l32r	a2, .LC42
	l32r	a3, .LC43
	memw
	s32i	a3, a2, 100
	.loc 1 228 0
	memw
	l32i	a3, a2, 72
	l32r	a9, .LC44
	and	a9, a3, a9
	memw
	s32i	a9, a2, 72
	.loc 1 229 0
	movi.n	a3, 0
	memw
	s32i	a3, a2, 100
.LBB7:
	.loc 1 231 0
	l32i.n	a10, a8, 12
	call8	esp_intr_free
.LVL52:
	beq	a10, a3, .L32
	.loc 1 231 0 is_stmt 0 discriminator 1
	l32r	a14, .LC46
	l32r	a13, .LC47
	movi	a12, 0xe7
	l32r	a11, .LC48
	call8	_esp_error_check_failed
.LVL53:
.L32:
.LBE7:
	.loc 1 232 0 is_stmt 1
	l32r	a3, .LC41
	l32i.n	a10, a3, 0
.LVL54:
	call8	free
.LVL55:
	.loc 1 233 0
	movi.n	a2, 0
	s32i.n	a2, a3, 0
	.loc 1 234 0
	l32r	a10, .LC40
	call8	vTaskExitCritical
.LVL56:
	.loc 1 236 0
	retw.n
.LFE23:
	.size	esp_task_wdt_deinit, .-esp_task_wdt_deinit
	.section	.rodata.str1.4
	.align	4
.LC52:
	.string	"esp_register_freertos_idle_hook_for_cpu(idle_hook_cb, i)"
	.section	.text.esp_task_wdt_add,"ax",@progbits
	.literal_position
	.literal .LC49, twdt_spinlock
	.literal .LC50, twdt_config
	.literal .LC51, idle_hook_cb
	.literal .LC53, .LC52
	.literal .LC54, __func__$5806
	.literal .LC55, .LC27
	.align	4
	.global	esp_task_wdt_add
	.type	esp_task_wdt_add, @function
esp_task_wdt_add:
.LFB24:
	.loc 1 239 0
.LVL57:
	entry	sp, 48
.LCFI5:
	.loc 1 240 0
	l32r	a10, .LC49
	call8	vTaskEnterCritical
.LVL58:
	.loc 1 242 0
	l32r	a8, .LC50
	l32i.n	a8, a8, 0
	bnez.n	a8, .L34
	.loc 1 242 0 discriminator 1
	l32r	a10, .LC49
	call8	vTaskExitCritical
.LVL59:
	movi	a2, 0x103
.LVL60:
	retw.n
.LVL61:
.L34:
	.loc 1 246 0
	bnez.n	a2, .L36
	.loc 1 247 0
	call8	xTaskGetCurrentTaskHandle
.LVL62:
	mov.n	a2, a10
.LVL63:
.L36:
	.loc 1 250 0
	mov.n	a11, sp
	mov.n	a10, a2
	call8	find_task_in_twdt_list
.LVL64:
	.loc 1 252 0
	beqz.n	a10, .L37
	.loc 1 252 0 discriminator 1
	l32r	a10, .LC49
.LVL65:
	call8	vTaskExitCritical
.LVL66:
	movi	a2, 0x102
.LVL67:
	retw.n
.LVL68:
.L37:
	.loc 1 255 0
	movi.n	a11, 0xc
	movi.n	a10, 1
.LVL69:
	call8	calloc
.LVL70:
	.loc 1 256 0
	bnez.n	a10, .L38
	.loc 1 256 0 discriminator 1
	l32r	a10, .LC49
.LVL71:
	call8	vTaskExitCritical
.LVL72:
	movi	a2, 0x101
.LVL73:
	retw.n
.LVL74:
.L38:
	.loc 1 257 0
	s32i.n	a2, a10, 0
	.loc 1 258 0
	movi.n	a3, 1
	s8i	a3, a10, 4
	.loc 1 259 0
	movi.n	a3, 0
	s32i.n	a3, a10, 8
	.loc 1 260 0
	l32r	a3, .LC50
	l32i.n	a3, a3, 0
	l32i.n	a9, a3, 0
	bnez.n	a9, .L39
	.loc 1 261 0
	s32i.n	a10, a3, 0
.L41:
.LBB8:
	.loc 1 264 0 discriminator 1
	movi.n	a3, 0
	j	.L40
.LVL75:
.L46:
	.loc 1 264 0 is_stmt 0
	mov.n	a9, a8
.LVL76:
.L39:
	.loc 1 264 0 is_stmt 1 discriminator 1
	l32i.n	a8, a9, 8
	bnez.n	a8, .L46
	.loc 1 267 0
	s32i.n	a10, a9, 8
	j	.L41
.LVL77:
.L44:
.LBE8:
.LBB9:
	.loc 1 272 0
	mov.n	a4, a3
	mov.n	a10, a3
	call8	xTaskGetIdleTaskHandleForCPU
.LVL78:
	bne	a2, a10, .L42
.LBB10:
	.loc 1 273 0
	mov.n	a11, a3
	l32r	a10, .LC51
	call8	esp_register_freertos_idle_hook_for_cpu
.LVL79:
	beqz.n	a10, .L43
	.loc 1 273 0 is_stmt 0 discriminator 1
	l32r	a14, .LC53
	l32r	a13, .LC54
	movi	a12, 0x111
	l32r	a11, .LC55
	call8	_esp_error_check_failed
.LVL80:
.L42:
.LBE10:
	.loc 1 271 0 is_stmt 1 discriminator 2
	addi.n	a3, a3, 1
.LVL81:
.L40:
	.loc 1 271 0 is_stmt 0 discriminator 1
	blti	a3, 2, .L44
.L43:
.LBE9:
	.loc 1 278 0 is_stmt 1
	l8ui	a2, sp, 0
.LVL82:
	beqz.n	a2, .L45
	.loc 1 279 0
	call8	reset_hw_timer
.LVL83:
.L45:
	.loc 1 282 0
	l32r	a10, .LC49
	call8	vTaskExitCritical
.LVL84:
	.loc 1 283 0
	movi.n	a2, 0
	.loc 1 284 0
	retw.n
.LFE24:
	.size	esp_task_wdt_add, .-esp_task_wdt_add
	.section	.text.esp_task_wdt_reset,"ax",@progbits
	.literal_position
	.literal .LC56, twdt_spinlock
	.literal .LC57, twdt_config
	.align	4
	.global	esp_task_wdt_reset
	.type	esp_task_wdt_reset, @function
esp_task_wdt_reset:
.LFB25:
	.loc 1 287 0
	entry	sp, 48
.LCFI6:
	.loc 1 288 0
	l32r	a10, .LC56
	call8	vTaskEnterCritical
.LVL85:
	.loc 1 290 0
	l32r	a8, .LC57
	l32i.n	a8, a8, 0
	bnez.n	a8, .L48
	.loc 1 290 0 discriminator 1
	l32r	a10, .LC56
	call8	vTaskExitCritical
.LVL86:
	movi	a2, 0x103
	retw.n
.L48:
	.loc 1 292 0
	call8	xTaskGetCurrentTaskHandle
.LVL87:
	.loc 1 297 0
	mov.n	a11, sp
	call8	find_task_in_twdt_list
.LVL88:
	.loc 1 299 0
	bnez.n	a10, .L50
	.loc 1 299 0 discriminator 1
	l32r	a10, .LC56
.LVL89:
	call8	vTaskExitCritical
.LVL90:
	movi	a2, 0x105
	retw.n
.LVL91:
.L50:
	.loc 1 301 0
	movi.n	a2, 1
	s8i	a2, a10, 4
	.loc 1 302 0
	l8ui	a2, sp, 0
	beqz.n	a2, .L51
	.loc 1 303 0
	call8	reset_hw_timer
.LVL92:
.L51:
	.loc 1 306 0
	l32r	a10, .LC56
	call8	vTaskExitCritical
.LVL93:
	.loc 1 307 0
	movi.n	a2, 0
	.loc 1 308 0
	retw.n
.LFE25:
	.size	esp_task_wdt_reset, .-esp_task_wdt_reset
	.section	.text.idle_hook_cb,"ax",@progbits
	.align	4
	.type	idle_hook_cb, @function
idle_hook_cb:
.LFB18:
	.loc 1 76 0
	entry	sp, 32
.LCFI7:
	.loc 1 77 0
	call8	esp_task_wdt_reset
.LVL94:
	.loc 1 79 0
	movi.n	a2, 1
	retw.n
.LFE18:
	.size	idle_hook_cb, .-idle_hook_cb
	.section	.text.esp_task_wdt_delete,"ax",@progbits
	.literal_position
	.literal .LC58, twdt_spinlock
	.literal .LC59, twdt_config
	.literal .LC60, idle_hook_cb
	.align	4
	.global	esp_task_wdt_delete
	.type	esp_task_wdt_delete, @function
esp_task_wdt_delete:
.LFB26:
	.loc 1 311 0
.LVL95:
	entry	sp, 48
.LCFI8:
	.loc 1 312 0
	bnez.n	a2, .L54
	.loc 1 313 0
	call8	xTaskGetCurrentTaskHandle
.LVL96:
	mov.n	a2, a10
.LVL97:
.L54:
	.loc 1 315 0
	l32r	a10, .LC58
	call8	vTaskEnterCritical
.LVL98:
	.loc 1 317 0
	l32r	a3, .LC59
	l32i.n	a3, a3, 0
	bnez.n	a3, .L55
	.loc 1 317 0 discriminator 1
	l32r	a10, .LC58
	call8	vTaskExitCritical
.LVL99:
	movi	a2, 0x105
.LVL100:
	retw.n
.LVL101:
.L55:
	.loc 1 321 0
	mov.n	a11, sp
	mov.n	a10, a2
	call8	find_task_in_twdt_list
.LVL102:
	.loc 1 323 0
	bnez.n	a10, .L57
	.loc 1 323 0 discriminator 1
	l32r	a10, .LC58
.LVL103:
	call8	vTaskExitCritical
.LVL104:
	movi	a2, 0x102
.LVL105:
	retw.n
.LVL106:
.L57:
	.loc 1 325 0
	l32r	a3, .LC59
	l32i.n	a3, a3, 0
	l32i.n	a9, a3, 0
	bne	a10, a9, .L58
	.loc 1 326 0
	l32i.n	a4, a10, 8
	s32i.n	a4, a3, 0
	.loc 1 327 0
	call8	free
.LVL107:
.L60:
.LBB11:
	.loc 1 330 0 discriminator 1
	movi.n	a3, 0
	j	.L59
.LVL108:
.L65:
	.loc 1 330 0 is_stmt 0
	mov.n	a9, a8
.LVL109:
.L58:
	.loc 1 330 0 discriminator 1
	l32i.n	a8, a9, 8
	bne	a10, a8, .L65
	.loc 1 333 0 is_stmt 1
	l32i.n	a3, a10, 8
	s32i.n	a3, a9, 8
	.loc 1 334 0
	call8	free
.LVL110:
	j	.L60
.LVL111:
.L63:
.LBE11:
.LBB12:
	.loc 1 339 0
	mov.n	a4, a3
	mov.n	a10, a3
	call8	xTaskGetIdleTaskHandleForCPU
.LVL112:
	bne	a2, a10, .L61
	.loc 1 340 0
	mov.n	a11, a3
	l32r	a10, .LC60
	call8	esp_deregister_freertos_idle_hook_for_cpu
.LVL113:
	.loc 1 341 0
	j	.L62
.L61:
	.loc 1 338 0 discriminator 2
	addi.n	a3, a3, 1
.LVL114:
.L59:
	.loc 1 338 0 is_stmt 0 discriminator 1
	blti	a3, 2, .L63
.L62:
.LBE12:
	.loc 1 345 0 is_stmt 1
	l8ui	a2, sp, 0
.LVL115:
	beqz.n	a2, .L64
	.loc 1 346 0
	call8	reset_hw_timer
.LVL116:
.L64:
	.loc 1 349 0
	l32r	a10, .LC58
	call8	vTaskExitCritical
.LVL117:
	.loc 1 350 0
	movi.n	a2, 0
	.loc 1 351 0
	retw.n
.LFE26:
	.size	esp_task_wdt_delete, .-esp_task_wdt_delete
	.section	.text.esp_task_wdt_status,"ax",@progbits
	.literal_position
	.literal .LC61, twdt_spinlock
	.literal .LC62, twdt_config
	.align	4
	.global	esp_task_wdt_status
	.type	esp_task_wdt_status, @function
esp_task_wdt_status:
.LFB27:
	.loc 1 354 0
.LVL118:
	entry	sp, 32
.LCFI9:
	.loc 1 355 0
	bnez.n	a2, .L67
	.loc 1 356 0
	call8	xTaskGetCurrentTaskHandle
.LVL119:
	mov.n	a2, a10
.LVL120:
.L67:
	.loc 1 359 0
	l32r	a10, .LC61
	call8	vTaskEnterCritical
.LVL121:
	.loc 1 361 0
	l32r	a8, .LC62
	l32i.n	a8, a8, 0
	bnez.n	a8, .L68
	.loc 1 361 0 discriminator 1
	l32r	a10, .LC61
	call8	vTaskExitCritical
.LVL122:
	movi	a2, 0x103
.LVL123:
	retw.n
.LVL124:
.L68:
	.loc 1 364 0
	l32i.n	a8, a8, 0
.LVL125:
	j	.L70
.L72:
	.loc 1 366 0
	l32i.n	a9, a8, 0
	bne	a2, a9, .L71
	.loc 1 366 0 is_stmt 0 discriminator 1
	l32r	a10, .LC61
	call8	vTaskExitCritical
.LVL126:
	movi.n	a2, 0
.LVL127:
	retw.n
.LVL128:
.L71:
	.loc 1 364 0 is_stmt 1 discriminator 2
	l32i.n	a8, a8, 8
.LVL129:
.L70:
	.loc 1 364 0 discriminator 1
	bnez.n	a8, .L72
	.loc 1 370 0
	l32r	a10, .LC61
	call8	vTaskExitCritical
.LVL130:
	.loc 1 371 0
	movi	a2, 0x105
.LVL131:
	.loc 1 372 0
	retw.n
.LFE27:
	.size	esp_task_wdt_status, .-esp_task_wdt_status
	.section	.text.esp_task_wdt_feed,"ax",@progbits
	.literal_position
	.literal .LC63, twdt_spinlock
	.literal .LC64, twdt_config
	.align	4
	.global	esp_task_wdt_feed
	.type	esp_task_wdt_feed, @function
esp_task_wdt_feed:
.LFB28:
	.loc 1 375 0
	entry	sp, 48
.LCFI10:
	.loc 1 376 0
	l32r	a10, .LC63
	call8	vTaskEnterCritical
.LVL132:
	.loc 1 378 0
	l32r	a8, .LC64
	l32i.n	a8, a8, 0
	bnez.n	a8, .L74
	.loc 1 378 0 discriminator 1
	l32r	a10, .LC63
	call8	vTaskExitCritical
.LVL133:
	retw.n
.L74:
	.loc 1 381 0
	call8	xTaskGetCurrentTaskHandle
.LVL134:
	mov.n	a2, a10
.LVL135:
	.loc 1 383 0
	mov.n	a11, sp
	call8	find_task_in_twdt_list
.LVL136:
	.loc 1 386 0
	beqz.n	a10, .L76
	.loc 1 387 0
	movi.n	a2, 1
.LVL137:
	s8i	a2, a10, 4
	.loc 1 388 0
	l8ui	a2, sp, 0
	beqz.n	a2, .L77
	.loc 1 389 0
	call8	reset_hw_timer
.LVL138:
.L77:
	.loc 1 391 0
	l32r	a10, .LC63
	call8	vTaskExitCritical
.LVL139:
	.loc 1 392 0
	retw.n
.LVL140:
.L76:
	.loc 1 396 0
	movi.n	a11, 0xc
	movi.n	a10, 1
.LVL141:
	call8	calloc
.LVL142:
	.loc 1 397 0
	bnez.n	a10, .L78
	.loc 1 397 0 discriminator 1
	l32r	a10, .LC63
.LVL143:
	call8	vTaskExitCritical
.LVL144:
	retw.n
.LVL145:
.L78:
	.loc 1 398 0
	s32i.n	a2, a10, 0
	.loc 1 399 0
	movi.n	a2, 1
.LVL146:
	s8i	a2, a10, 4
	.loc 1 400 0
	movi.n	a2, 0
	s32i.n	a2, a10, 8
	.loc 1 402 0
	l32r	a2, .LC64
	l32i.n	a2, a2, 0
	l32i.n	a8, a2, 0
	bnez.n	a8, .L79
	.loc 1 403 0
	s32i.n	a10, a2, 0
.LVL147:
	j	.L80
.LVL148:
.L82:
.LBB13:
	.loc 1 406 0
	mov.n	a8, a2
.LVL149:
.L79:
	.loc 1 406 0 discriminator 1
	l32i.n	a2, a8, 8
	bnez.n	a2, .L82
	.loc 1 409 0
	s32i.n	a10, a8, 8
.LVL150:
.L80:
.LBE13:
	.loc 1 412 0
	l32r	a10, .LC63
.LVL151:
	call8	vTaskExitCritical
.LVL152:
	retw.n
.LFE28:
	.size	esp_task_wdt_feed, .-esp_task_wdt_feed
	.section	.rodata.__func__$5806,"a",@progbits
	.align	4
	.type	__func__$5806, @object
	.size	__func__$5806, 17
__func__$5806:
	.string	"esp_task_wdt_add"
	.section	.rodata.__func__$5794,"a",@progbits
	.align	4
	.type	__func__$5794, @object
	.size	__func__$5794, 20
__func__$5794:
	.string	"esp_task_wdt_deinit"
	.section	.rodata.__func__$5790,"a",@progbits
	.align	4
	.type	__func__$5790, @object
	.size	__func__$5790, 18
__func__$5790:
	.string	"esp_task_wdt_init"
	.section	.dram1,"a",@progbits
	.align	4
	.type	__c$5779, @object
	.size	__c$5779, 26
__c$5779:
	.string	"Tasks currently running:\n"
	.align	4
	.type	__c$5774, @object
	.size	__c$5774, 8
__c$5774:
	.string	"CPU 0/1"
	.align	4
	.type	__c$5772, @object
	.size	__c$5772, 6
__c$5772:
	.string	"CPU 1"
	.align	4
	.type	__c$5770, @object
	.size	__c$5770, 6
__c$5770:
	.string	"CPU 0"
	.section	.data.twdt_spinlock,"aw",@progbits
	.align	4
	.type	twdt_spinlock, @object
	.size	twdt_spinlock, 8
twdt_spinlock:
	.word	-1287651329
	.word	0
	.section	.bss.twdt_config,"aw",@nobits
	.align	4
	.type	twdt_config, @object
	.size	twdt_config, 4
twdt_config:
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
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI0-.LFB19
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI1-.LFB20
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI2-.LFB21
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI3-.LFB22
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI4-.LFB23
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI5-.LFB24
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI6-.LFB25
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI7-.LFB18
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI8-.LFB26
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI9-.LFB27
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI10-.LFB28
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE20:
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_err.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/portmacro.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_intr_alloc.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/task.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/timer_group_struct.h"
	.file 9 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/ets_sys.h"
	.file 10 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdlib.h"
	.file 11 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/periph_ctrl.h"
	.file 12 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_freertos_hooks.h"
	.file 13 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/periph_defs.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1595
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF184
	.byte	0xc
	.4byte	.LASF185
	.4byte	.LASF186
	.4byte	.Ldebug_ranges0+0x18
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
	.4byte	.LASF4
	.byte	0x2
	.byte	0x19
	.4byte	0x4c
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x1a
	.4byte	0x5e
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x3
	.byte	0x2c
	.4byte	0x41
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x3
	.byte	0x2d
	.4byte	0x53
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.uleb128 0x6
	.byte	0x4
	.4byte	0xad
	.uleb128 0x7
	.4byte	0xa0
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x4
	.byte	0x18
	.4byte	0x73
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF16
	.uleb128 0x8
	.byte	0x8
	.byte	0x5
	.byte	0x82
	.4byte	0xe5
	.uleb128 0x9
	.4byte	.LASF17
	.byte	0x5
	.byte	0x8a
	.4byte	0x7e
	.byte	0
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x5
	.byte	0x8f
	.4byte	0x7e
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x5
	.byte	0x94
	.4byte	0xc4
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x6
	.byte	0x56
	.4byte	0xfb
	.uleb128 0xa
	.4byte	.LASF20
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x6
	.byte	0x57
	.4byte	0x10b
	.uleb128 0x6
	.byte	0x4
	.4byte	0xf0
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x7
	.byte	0x6b
	.4byte	0x89
	.uleb128 0x8
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.4byte	0x19d
	.uleb128 0xb
	.4byte	.LASF23
	.byte	0x8
	.byte	0x19
	.4byte	0x7e
	.byte	0x4
	.byte	0xa
	.byte	0x16
	.byte	0
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0x8
	.byte	0x1a
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0x8
	.byte	0x1b
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0x8
	.byte	0x1c
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0x8
	.byte	0x1d
	.4byte	0x7e
	.byte	0x4
	.byte	0x10
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0x8
	.byte	0x1e
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.4byte	.LASF29
	.byte	0x8
	.byte	0x1f
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0x8
	.byte	0x20
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.byte	0x8
	.byte	0x17
	.4byte	0x1b6
	.uleb128 0xd
	.4byte	0x11c
	.uleb128 0xe
	.string	"val"
	.byte	0x8
	.byte	0x22
	.4byte	0x7e
	.byte	0
	.uleb128 0x8
	.byte	0x24
	.byte	0x8
	.byte	0x16
	.4byte	0x22b
	.uleb128 0x9
	.4byte	.LASF31
	.byte	0x8
	.byte	0x23
	.4byte	0x19d
	.byte	0
	.uleb128 0x9
	.4byte	.LASF32
	.byte	0x8
	.byte	0x24
	.4byte	0x7e
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF33
	.byte	0x8
	.byte	0x25
	.4byte	0x7e
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF34
	.byte	0x8
	.byte	0x26
	.4byte	0x7e
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF35
	.byte	0x8
	.byte	0x27
	.4byte	0x7e
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF36
	.byte	0x8
	.byte	0x28
	.4byte	0x7e
	.byte	0x14
	.uleb128 0x9
	.4byte	.LASF37
	.byte	0x8
	.byte	0x29
	.4byte	0x7e
	.byte	0x18
	.uleb128 0x9
	.4byte	.LASF38
	.byte	0x8
	.byte	0x2a
	.4byte	0x7e
	.byte	0x1c
	.uleb128 0x9
	.4byte	.LASF39
	.byte	0x8
	.byte	0x2b
	.4byte	0x7e
	.byte	0x20
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.byte	0x8
	.byte	0x2e
	.4byte	0x2d8
	.uleb128 0xb
	.4byte	.LASF23
	.byte	0x8
	.byte	0x2f
	.4byte	0x7e
	.byte	0x4
	.byte	0xe
	.byte	0x12
	.byte	0
	.uleb128 0xb
	.4byte	.LASF40
	.byte	0x8
	.byte	0x30
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xb
	.4byte	.LASF41
	.byte	0x8
	.byte	0x31
	.4byte	0x7e
	.byte	0x4
	.byte	0x3
	.byte	0xe
	.byte	0
	.uleb128 0xb
	.4byte	.LASF42
	.byte	0x8
	.byte	0x32
	.4byte	0x7e
	.byte	0x4
	.byte	0x3
	.byte	0xb
	.byte	0
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0x8
	.byte	0x33
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0x8
	.byte	0x34
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0xb
	.4byte	.LASF43
	.byte	0x8
	.byte	0x35
	.4byte	0x7e
	.byte	0x4
	.byte	0x2
	.byte	0x7
	.byte	0
	.uleb128 0xb
	.4byte	.LASF44
	.byte	0x8
	.byte	0x36
	.4byte	0x7e
	.byte	0x4
	.byte	0x2
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.4byte	.LASF45
	.byte	0x8
	.byte	0x37
	.4byte	0x7e
	.byte	0x4
	.byte	0x2
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.4byte	.LASF46
	.byte	0x8
	.byte	0x38
	.4byte	0x7e
	.byte	0x4
	.byte	0x2
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.string	"en"
	.byte	0x8
	.byte	0x39
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.byte	0x8
	.byte	0x2d
	.4byte	0x2f1
	.uleb128 0xd
	.4byte	0x22b
	.uleb128 0xe
	.string	"val"
	.byte	0x8
	.byte	0x3b
	.4byte	0x7e
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.byte	0x8
	.byte	0x3e
	.4byte	0x318
	.uleb128 0xb
	.4byte	.LASF23
	.byte	0x8
	.byte	0x3f
	.4byte	0x7e
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.4byte	.LASF47
	.byte	0x8
	.byte	0x40
	.4byte	0x7e
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.byte	0x8
	.byte	0x3d
	.4byte	0x331
	.uleb128 0xd
	.4byte	0x2f1
	.uleb128 0xe
	.string	"val"
	.byte	0x8
	.byte	0x42
	.4byte	0x7e
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.byte	0x8
	.byte	0x4b
	.4byte	0x394
	.uleb128 0xb
	.4byte	.LASF23
	.byte	0x8
	.byte	0x4c
	.4byte	0x7e
	.byte	0x4
	.byte	0xc
	.byte	0x14
	.byte	0
	.uleb128 0xb
	.4byte	.LASF48
	.byte	0x8
	.byte	0x4d
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xb
	.4byte	.LASF49
	.byte	0x8
	.byte	0x4e
	.4byte	0x7e
	.byte	0x4
	.byte	0x2
	.byte	0x11
	.byte	0
	.uleb128 0xf
	.string	"rdy"
	.byte	0x8
	.byte	0x4f
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.string	"max"
	.byte	0x8
	.byte	0x50
	.4byte	0x7e
	.byte	0x4
	.byte	0xf
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.4byte	.LASF50
	.byte	0x8
	.byte	0x51
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.byte	0x8
	.byte	0x4a
	.4byte	0x3ad
	.uleb128 0xd
	.4byte	0x331
	.uleb128 0xe
	.string	"val"
	.byte	0x8
	.byte	0x53
	.4byte	0x7e
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.byte	0x8
	.byte	0x56
	.4byte	0x3d4
	.uleb128 0xb
	.4byte	.LASF23
	.byte	0x8
	.byte	0x57
	.4byte	0x7e
	.byte	0x4
	.byte	0x7
	.byte	0x19
	.byte	0
	.uleb128 0xb
	.4byte	.LASF51
	.byte	0x8
	.byte	0x58
	.4byte	0x7e
	.byte	0x4
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.byte	0x8
	.byte	0x55
	.4byte	0x3ed
	.uleb128 0xd
	.4byte	0x3ad
	.uleb128 0xe
	.string	"val"
	.byte	0x8
	.byte	0x5a
	.4byte	0x7e
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.byte	0x8
	.byte	0x5d
	.4byte	0x49a
	.uleb128 0xb
	.4byte	.LASF23
	.byte	0x8
	.byte	0x5e
	.4byte	0x7e
	.byte	0x4
	.byte	0x7
	.byte	0x19
	.byte	0
	.uleb128 0xb
	.4byte	.LASF52
	.byte	0x8
	.byte	0x5f
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.4byte	.LASF53
	.byte	0x8
	.byte	0x60
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xb
	.4byte	.LASF54
	.byte	0x8
	.byte	0x61
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0x8
	.byte	0x62
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0x8
	.byte	0x63
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0x8
	.byte	0x64
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0x8
	.byte	0x65
	.4byte	0x7e
	.byte	0x4
	.byte	0x10
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0x8
	.byte	0x66
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.4byte	.LASF29
	.byte	0x8
	.byte	0x67
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.string	"en"
	.byte	0x8
	.byte	0x68
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.byte	0x8
	.byte	0x5c
	.4byte	0x4b3
	.uleb128 0xd
	.4byte	0x3ed
	.uleb128 0xe
	.string	"val"
	.byte	0x8
	.byte	0x6a
	.4byte	0x7e
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.byte	0x8
	.byte	0x6d
	.4byte	0x4da
	.uleb128 0xb
	.4byte	.LASF23
	.byte	0x8
	.byte	0x6e
	.4byte	0x7e
	.byte	0x4
	.byte	0x6
	.byte	0x1a
	.byte	0
	.uleb128 0xb
	.4byte	.LASF55
	.byte	0x8
	.byte	0x6f
	.4byte	0x7e
	.byte	0x4
	.byte	0x1a
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.byte	0x8
	.byte	0x6c
	.4byte	0x4f3
	.uleb128 0xd
	.4byte	0x4b3
	.uleb128 0xe
	.string	"val"
	.byte	0x8
	.byte	0x71
	.4byte	0x7e
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.byte	0x8
	.byte	0x7c
	.4byte	0x545
	.uleb128 0xf
	.string	"t0"
	.byte	0x8
	.byte	0x7d
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.string	"t1"
	.byte	0x8
	.byte	0x7e
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xf
	.string	"wdt"
	.byte	0x8
	.byte	0x7f
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xb
	.4byte	.LASF56
	.byte	0x8
	.byte	0x80
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xb
	.4byte	.LASF57
	.byte	0x8
	.byte	0x81
	.4byte	0x7e
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.byte	0x8
	.byte	0x7b
	.4byte	0x55e
	.uleb128 0xd
	.4byte	0x4f3
	.uleb128 0xe
	.string	"val"
	.byte	0x8
	.byte	0x83
	.4byte	0x7e
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.byte	0x8
	.byte	0x86
	.4byte	0x5b0
	.uleb128 0xf
	.string	"t0"
	.byte	0x8
	.byte	0x87
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.string	"t1"
	.byte	0x8
	.byte	0x88
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xf
	.string	"wdt"
	.byte	0x8
	.byte	0x89
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xb
	.4byte	.LASF56
	.byte	0x8
	.byte	0x8a
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xb
	.4byte	.LASF57
	.byte	0x8
	.byte	0x8b
	.4byte	0x7e
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.byte	0x8
	.byte	0x85
	.4byte	0x5c9
	.uleb128 0xd
	.4byte	0x55e
	.uleb128 0xe
	.string	"val"
	.byte	0x8
	.byte	0x8d
	.4byte	0x7e
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.byte	0x8
	.byte	0x90
	.4byte	0x61b
	.uleb128 0xf
	.string	"t0"
	.byte	0x8
	.byte	0x91
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.string	"t1"
	.byte	0x8
	.byte	0x92
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xf
	.string	"wdt"
	.byte	0x8
	.byte	0x93
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xb
	.4byte	.LASF56
	.byte	0x8
	.byte	0x94
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xb
	.4byte	.LASF57
	.byte	0x8
	.byte	0x95
	.4byte	0x7e
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.byte	0x8
	.byte	0x8f
	.4byte	0x634
	.uleb128 0xd
	.4byte	0x5c9
	.uleb128 0xe
	.string	"val"
	.byte	0x8
	.byte	0x97
	.4byte	0x7e
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.byte	0x8
	.byte	0x9a
	.4byte	0x686
	.uleb128 0xf
	.string	"t0"
	.byte	0x8
	.byte	0x9b
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.string	"t1"
	.byte	0x8
	.byte	0x9c
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xf
	.string	"wdt"
	.byte	0x8
	.byte	0x9d
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xb
	.4byte	.LASF56
	.byte	0x8
	.byte	0x9e
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xb
	.4byte	.LASF57
	.byte	0x8
	.byte	0x9f
	.4byte	0x7e
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.byte	0x8
	.byte	0x99
	.4byte	0x69f
	.uleb128 0xd
	.4byte	0x634
	.uleb128 0xe
	.string	"val"
	.byte	0x8
	.byte	0xa1
	.4byte	0x7e
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.byte	0x8
	.byte	0xb8
	.4byte	0x6c6
	.uleb128 0xb
	.4byte	.LASF58
	.byte	0x8
	.byte	0xb9
	.4byte	0x7e
	.byte	0x4
	.byte	0x1c
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.4byte	.LASF59
	.byte	0x8
	.byte	0xba
	.4byte	0x7e
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.byte	0x8
	.byte	0xb7
	.4byte	0x6df
	.uleb128 0xd
	.4byte	0x69f
	.uleb128 0xe
	.string	"val"
	.byte	0x8
	.byte	0xbc
	.4byte	0x7e
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.byte	0x8
	.byte	0xbf
	.4byte	0x705
	.uleb128 0xb
	.4byte	.LASF23
	.byte	0x8
	.byte	0xc0
	.4byte	0x7e
	.byte	0x4
	.byte	0x1f
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.string	"en"
	.byte	0x8
	.byte	0xc1
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.byte	0x8
	.byte	0xbe
	.4byte	0x71e
	.uleb128 0xd
	.4byte	0x6df
	.uleb128 0xe
	.string	"val"
	.byte	0x8
	.byte	0xc3
	.4byte	0x7e
	.byte	0
	.uleb128 0x10
	.2byte	0x100
	.byte	0x8
	.byte	0x15
	.4byte	0x95c
	.uleb128 0x9
	.4byte	.LASF60
	.byte	0x8
	.byte	0x2c
	.4byte	0x95c
	.byte	0
	.uleb128 0x9
	.4byte	.LASF61
	.byte	0x8
	.byte	0x3c
	.4byte	0x2d8
	.byte	0x48
	.uleb128 0x9
	.4byte	.LASF62
	.byte	0x8
	.byte	0x43
	.4byte	0x318
	.byte	0x4c
	.uleb128 0x9
	.4byte	.LASF63
	.byte	0x8
	.byte	0x44
	.4byte	0x7e
	.byte	0x50
	.uleb128 0x9
	.4byte	.LASF64
	.byte	0x8
	.byte	0x45
	.4byte	0x7e
	.byte	0x54
	.uleb128 0x9
	.4byte	.LASF65
	.byte	0x8
	.byte	0x46
	.4byte	0x7e
	.byte	0x58
	.uleb128 0x9
	.4byte	.LASF66
	.byte	0x8
	.byte	0x47
	.4byte	0x7e
	.byte	0x5c
	.uleb128 0x9
	.4byte	.LASF67
	.byte	0x8
	.byte	0x48
	.4byte	0x7e
	.byte	0x60
	.uleb128 0x9
	.4byte	.LASF68
	.byte	0x8
	.byte	0x49
	.4byte	0x7e
	.byte	0x64
	.uleb128 0x9
	.4byte	.LASF69
	.byte	0x8
	.byte	0x54
	.4byte	0x394
	.byte	0x68
	.uleb128 0x9
	.4byte	.LASF70
	.byte	0x8
	.byte	0x5b
	.4byte	0x3d4
	.byte	0x6c
	.uleb128 0x9
	.4byte	.LASF71
	.byte	0x8
	.byte	0x6b
	.4byte	0x49a
	.byte	0x70
	.uleb128 0x9
	.4byte	.LASF72
	.byte	0x8
	.byte	0x72
	.4byte	0x4da
	.byte	0x74
	.uleb128 0x9
	.4byte	.LASF73
	.byte	0x8
	.byte	0x73
	.4byte	0x7e
	.byte	0x78
	.uleb128 0x9
	.4byte	.LASF74
	.byte	0x8
	.byte	0x74
	.4byte	0x7e
	.byte	0x7c
	.uleb128 0x9
	.4byte	.LASF75
	.byte	0x8
	.byte	0x75
	.4byte	0x7e
	.byte	0x80
	.uleb128 0x9
	.4byte	.LASF76
	.byte	0x8
	.byte	0x76
	.4byte	0x7e
	.byte	0x84
	.uleb128 0x9
	.4byte	.LASF77
	.byte	0x8
	.byte	0x77
	.4byte	0x7e
	.byte	0x88
	.uleb128 0x9
	.4byte	.LASF78
	.byte	0x8
	.byte	0x78
	.4byte	0x7e
	.byte	0x8c
	.uleb128 0x9
	.4byte	.LASF79
	.byte	0x8
	.byte	0x79
	.4byte	0x7e
	.byte	0x90
	.uleb128 0x9
	.4byte	.LASF80
	.byte	0x8
	.byte	0x7a
	.4byte	0x7e
	.byte	0x94
	.uleb128 0x9
	.4byte	.LASF81
	.byte	0x8
	.byte	0x84
	.4byte	0x545
	.byte	0x98
	.uleb128 0x9
	.4byte	.LASF82
	.byte	0x8
	.byte	0x8e
	.4byte	0x5b0
	.byte	0x9c
	.uleb128 0x9
	.4byte	.LASF83
	.byte	0x8
	.byte	0x98
	.4byte	0x61b
	.byte	0xa0
	.uleb128 0x9
	.4byte	.LASF84
	.byte	0x8
	.byte	0xa2
	.4byte	0x686
	.byte	0xa4
	.uleb128 0x9
	.4byte	.LASF85
	.byte	0x8
	.byte	0xa3
	.4byte	0x7e
	.byte	0xa8
	.uleb128 0x9
	.4byte	.LASF86
	.byte	0x8
	.byte	0xa4
	.4byte	0x7e
	.byte	0xac
	.uleb128 0x9
	.4byte	.LASF87
	.byte	0x8
	.byte	0xa5
	.4byte	0x7e
	.byte	0xb0
	.uleb128 0x9
	.4byte	.LASF88
	.byte	0x8
	.byte	0xa6
	.4byte	0x7e
	.byte	0xb4
	.uleb128 0x9
	.4byte	.LASF89
	.byte	0x8
	.byte	0xa7
	.4byte	0x7e
	.byte	0xb8
	.uleb128 0x9
	.4byte	.LASF90
	.byte	0x8
	.byte	0xa8
	.4byte	0x7e
	.byte	0xbc
	.uleb128 0x9
	.4byte	.LASF91
	.byte	0x8
	.byte	0xa9
	.4byte	0x7e
	.byte	0xc0
	.uleb128 0x9
	.4byte	.LASF92
	.byte	0x8
	.byte	0xaa
	.4byte	0x7e
	.byte	0xc4
	.uleb128 0x9
	.4byte	.LASF93
	.byte	0x8
	.byte	0xab
	.4byte	0x7e
	.byte	0xc8
	.uleb128 0x9
	.4byte	.LASF94
	.byte	0x8
	.byte	0xac
	.4byte	0x7e
	.byte	0xcc
	.uleb128 0x9
	.4byte	.LASF95
	.byte	0x8
	.byte	0xad
	.4byte	0x7e
	.byte	0xd0
	.uleb128 0x9
	.4byte	.LASF96
	.byte	0x8
	.byte	0xae
	.4byte	0x7e
	.byte	0xd4
	.uleb128 0x9
	.4byte	.LASF97
	.byte	0x8
	.byte	0xaf
	.4byte	0x7e
	.byte	0xd8
	.uleb128 0x9
	.4byte	.LASF98
	.byte	0x8
	.byte	0xb0
	.4byte	0x7e
	.byte	0xdc
	.uleb128 0x9
	.4byte	.LASF99
	.byte	0x8
	.byte	0xb1
	.4byte	0x7e
	.byte	0xe0
	.uleb128 0x9
	.4byte	.LASF100
	.byte	0x8
	.byte	0xb2
	.4byte	0x7e
	.byte	0xe4
	.uleb128 0x9
	.4byte	.LASF101
	.byte	0x8
	.byte	0xb3
	.4byte	0x7e
	.byte	0xe8
	.uleb128 0x9
	.4byte	.LASF102
	.byte	0x8
	.byte	0xb4
	.4byte	0x7e
	.byte	0xec
	.uleb128 0x9
	.4byte	.LASF103
	.byte	0x8
	.byte	0xb5
	.4byte	0x7e
	.byte	0xf0
	.uleb128 0x9
	.4byte	.LASF104
	.byte	0x8
	.byte	0xb6
	.4byte	0x7e
	.byte	0xf4
	.uleb128 0x9
	.4byte	.LASF105
	.byte	0x8
	.byte	0xbd
	.4byte	0x6c6
	.byte	0xf8
	.uleb128 0x11
	.string	"clk"
	.byte	0x8
	.byte	0xc4
	.4byte	0x705
	.byte	0xfc
	.byte	0
	.uleb128 0x12
	.4byte	0x1b6
	.4byte	0x96c
	.uleb128 0x13
	.4byte	0x92
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF106
	.byte	0x8
	.byte	0xc5
	.4byte	0x977
	.uleb128 0x14
	.4byte	0x71e
	.uleb128 0x15
	.byte	0x4
	.4byte	0x5e
	.byte	0xd
	.byte	0x16
	.4byte	0xa49
	.uleb128 0x16
	.4byte	.LASF107
	.byte	0
	.uleb128 0x16
	.4byte	.LASF108
	.byte	0x1
	.uleb128 0x16
	.4byte	.LASF109
	.byte	0x2
	.uleb128 0x16
	.4byte	.LASF110
	.byte	0x3
	.uleb128 0x16
	.4byte	.LASF111
	.byte	0x4
	.uleb128 0x16
	.4byte	.LASF112
	.byte	0x5
	.uleb128 0x16
	.4byte	.LASF113
	.byte	0x6
	.uleb128 0x16
	.4byte	.LASF114
	.byte	0x7
	.uleb128 0x16
	.4byte	.LASF115
	.byte	0x8
	.uleb128 0x16
	.4byte	.LASF116
	.byte	0x9
	.uleb128 0x16
	.4byte	.LASF117
	.byte	0xa
	.uleb128 0x16
	.4byte	.LASF118
	.byte	0xb
	.uleb128 0x16
	.4byte	.LASF119
	.byte	0xc
	.uleb128 0x16
	.4byte	.LASF120
	.byte	0xd
	.uleb128 0x16
	.4byte	.LASF121
	.byte	0xe
	.uleb128 0x16
	.4byte	.LASF122
	.byte	0xf
	.uleb128 0x16
	.4byte	.LASF123
	.byte	0x10
	.uleb128 0x16
	.4byte	.LASF124
	.byte	0x11
	.uleb128 0x16
	.4byte	.LASF125
	.byte	0x12
	.uleb128 0x16
	.4byte	.LASF126
	.byte	0x13
	.uleb128 0x16
	.4byte	.LASF127
	.byte	0x14
	.uleb128 0x16
	.4byte	.LASF128
	.byte	0x15
	.uleb128 0x16
	.4byte	.LASF129
	.byte	0x16
	.uleb128 0x16
	.4byte	.LASF130
	.byte	0x17
	.uleb128 0x16
	.4byte	.LASF131
	.byte	0x18
	.uleb128 0x16
	.4byte	.LASF132
	.byte	0x19
	.uleb128 0x16
	.4byte	.LASF133
	.byte	0x1a
	.uleb128 0x16
	.4byte	.LASF134
	.byte	0x1b
	.uleb128 0x16
	.4byte	.LASF135
	.byte	0x1c
	.uleb128 0x16
	.4byte	.LASF136
	.byte	0x1d
	.uleb128 0x16
	.4byte	.LASF137
	.byte	0x1e
	.uleb128 0x16
	.4byte	.LASF138
	.byte	0x1f
	.byte	0
	.uleb128 0x3
	.4byte	.LASF139
	.byte	0x1
	.byte	0x33
	.4byte	0xa54
	.uleb128 0x17
	.4byte	.LASF139
	.byte	0xc
	.byte	0x1
	.byte	0x34
	.4byte	0xa85
	.uleb128 0x9
	.4byte	.LASF140
	.byte	0x1
	.byte	0x35
	.4byte	0x111
	.byte	0
	.uleb128 0x9
	.4byte	.LASF141
	.byte	0x1
	.byte	0x36
	.4byte	0xbd
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF142
	.byte	0x1
	.byte	0x37
	.4byte	0xa85
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa49
	.uleb128 0x3
	.4byte	.LASF143
	.byte	0x1
	.byte	0x3b
	.4byte	0xa96
	.uleb128 0x17
	.4byte	.LASF143
	.byte	0x10
	.byte	0x1
	.byte	0x3c
	.4byte	0xad3
	.uleb128 0x9
	.4byte	.LASF144
	.byte	0x1
	.byte	0x3d
	.4byte	0xa85
	.byte	0
	.uleb128 0x9
	.4byte	.LASF145
	.byte	0x1
	.byte	0x3e
	.4byte	0x7e
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF146
	.byte	0x1
	.byte	0x3f
	.4byte	0xbd
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF147
	.byte	0x1
	.byte	0x40
	.4byte	0x100
	.byte	0xc
	.byte	0
	.uleb128 0x18
	.4byte	.LASF160
	.byte	0x1
	.byte	0x56
	.4byte	0xa85
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb2b
	.uleb128 0x19
	.4byte	.LASF148
	.byte	0x1
	.byte	0x56
	.4byte	0x111
	.4byte	.LLST0
	.uleb128 0x1a
	.4byte	.LASF149
	.byte	0x1
	.byte	0x56
	.4byte	0xb2b
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1b
	.4byte	.LASF150
	.byte	0x1
	.byte	0x58
	.4byte	0xa85
	.4byte	.LLST1
	.uleb128 0x1c
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x1d
	.4byte	.LASF151
	.byte	0x1
	.byte	0x5a
	.4byte	0xa85
	.uleb128 0x1
	.byte	0x58
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xbd
	.uleb128 0x1e
	.4byte	.LASF187
	.byte	0x1
	.byte	0x6a
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb5e
	.uleb128 0x1f
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.uleb128 0x1d
	.4byte	.LASF151
	.byte	0x1
	.byte	0x71
	.4byte	0xa85
	.uleb128 0x1
	.byte	0x58
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LASF188
	.byte	0x1
	.byte	0x7a
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcd0
	.uleb128 0x21
	.string	"arg"
	.byte	0x1
	.byte	0x7a
	.4byte	0x89
	.4byte	.LLST2
	.uleb128 0x1b
	.4byte	.LASF152
	.byte	0x1
	.byte	0x7d
	.4byte	0xa85
	.4byte	.LLST3
	.uleb128 0x22
	.string	"cpu"
	.byte	0x1
	.byte	0x7e
	.4byte	0xa7
	.4byte	.LLST4
	.uleb128 0x23
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.4byte	0xbf1
	.uleb128 0x22
	.string	"x"
	.byte	0x1
	.byte	0x97
	.4byte	0x4c
	.4byte	.LLST5
	.uleb128 0x24
	.4byte	.LVL24
	.4byte	0x14d8
	.4byte	0xbce
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL25
	.4byte	0x14e4
	.uleb128 0x27
	.4byte	.LVL26
	.4byte	0x14f0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC17
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL10
	.4byte	0x14fb
	.4byte	0xc08
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	twdt_spinlock
	.byte	0
	.uleb128 0x24
	.4byte	.LVL12
	.4byte	0x1506
	.4byte	0xc1f
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	twdt_spinlock
	.byte	0
	.uleb128 0x24
	.4byte	.LVL13
	.4byte	0x14f0
	.4byte	0xc36
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC11
	.byte	0
	.uleb128 0x26
	.4byte	.LVL15
	.4byte	0x1511
	.uleb128 0x26
	.4byte	.LVL17
	.4byte	0x1511
	.uleb128 0x26
	.4byte	.LVL19
	.4byte	0x14e4
	.uleb128 0x24
	.4byte	.LVL20
	.4byte	0x14f0
	.4byte	0xc6e
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL22
	.4byte	0x14f0
	.4byte	0xc85
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	__c$5779
	.byte	0
	.uleb128 0x24
	.4byte	.LVL29
	.4byte	0x14f0
	.4byte	0xc9c
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC19
	.byte	0
	.uleb128 0x24
	.4byte	.LVL30
	.4byte	0x1506
	.4byte	0xcb3
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	twdt_spinlock
	.byte	0
	.uleb128 0x26
	.4byte	.LVL31
	.4byte	0x151d
	.uleb128 0x27
	.4byte	.LVL32
	.4byte	0x1506
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	twdt_spinlock
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	.LASF155
	.byte	0x1
	.byte	0xaa
	.4byte	0xb2
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdf1
	.uleb128 0x19
	.4byte	.LASF145
	.byte	0x1
	.byte	0xaa
	.4byte	0x7e
	.4byte	.LLST6
	.uleb128 0x19
	.4byte	.LASF146
	.byte	0x1
	.byte	0xaa
	.4byte	0xbd
	.4byte	.LLST7
	.uleb128 0x29
	.4byte	.LASF154
	.4byte	0xe01
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5790
	.uleb128 0x23
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.4byte	0xd84
	.uleb128 0x1b
	.4byte	.LASF153
	.byte	0x1
	.byte	0xb7
	.4byte	0xb2
	.4byte	.LLST8
	.uleb128 0x24
	.4byte	.LVL39
	.4byte	0x1528
	.4byte	0xd58
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x40
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	task_wdt_isr
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x27
	.4byte	.LVL40
	.4byte	0x1533
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC27
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0xb7
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5790
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC24
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL34
	.4byte	0x14fb
	.4byte	0xd9b
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	twdt_spinlock
	.byte	0
	.uleb128 0x24
	.4byte	.LVL35
	.4byte	0x153e
	.4byte	0xdb3
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x24
	.4byte	.LVL36
	.4byte	0x1506
	.4byte	0xdca
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	twdt_spinlock
	.byte	0
	.uleb128 0x24
	.4byte	.LVL42
	.4byte	0x1549
	.4byte	0xddd
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x27
	.4byte	.LVL48
	.4byte	0x1506
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	twdt_spinlock
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	0xa0
	.4byte	0xe01
	.uleb128 0x13
	.4byte	0x92
	.byte	0x11
	.byte	0
	.uleb128 0x7
	.4byte	0xdf1
	.uleb128 0x2a
	.4byte	.LASF158
	.byte	0x1
	.byte	0xda
	.4byte	0xb2
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xee1
	.uleb128 0x29
	.4byte	.LASF154
	.4byte	0xef1
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5794
	.uleb128 0x23
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.4byte	0xe7f
	.uleb128 0x1b
	.4byte	.LASF153
	.byte	0x1
	.byte	0xe7
	.4byte	0xb2
	.4byte	.LLST9
	.uleb128 0x26
	.4byte	.LVL52
	.4byte	0x1554
	.uleb128 0x27
	.4byte	.LVL53
	.4byte	0x1533
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC27
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0xe7
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5794
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC45
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL49
	.4byte	0x14fb
	.4byte	0xe96
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	twdt_spinlock
	.byte	0
	.uleb128 0x24
	.4byte	.LVL50
	.4byte	0x1506
	.4byte	0xead
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	twdt_spinlock
	.byte	0
	.uleb128 0x24
	.4byte	.LVL51
	.4byte	0x1506
	.4byte	0xec4
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	twdt_spinlock
	.byte	0
	.uleb128 0x26
	.4byte	.LVL55
	.4byte	0x155f
	.uleb128 0x27
	.4byte	.LVL56
	.4byte	0x1506
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	twdt_spinlock
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	0xa0
	.4byte	0xef1
	.uleb128 0x13
	.4byte	0x92
	.byte	0x13
	.byte	0
	.uleb128 0x7
	.4byte	0xee1
	.uleb128 0x28
	.4byte	.LASF156
	.byte	0x1
	.byte	0xee
	.4byte	0xb2
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10ad
	.uleb128 0x19
	.4byte	.LASF148
	.byte	0x1
	.byte	0xee
	.4byte	0x111
	.4byte	.LLST10
	.uleb128 0x1b
	.4byte	.LASF157
	.byte	0x1
	.byte	0xf4
	.4byte	0xa85
	.4byte	.LLST11
	.uleb128 0x1d
	.4byte	.LASF149
	.byte	0x1
	.byte	0xf5
	.4byte	0xbd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.4byte	.LASF154
	.4byte	0x10bd
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5806
	.uleb128 0x23
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.4byte	0xf68
	.uleb128 0x2b
	.4byte	.LASF151
	.byte	0x1
	.2byte	0x107
	.4byte	0xa85
	.4byte	.LLST12
	.byte	0
	.uleb128 0x23
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.4byte	0xff9
	.uleb128 0x2c
	.string	"i"
	.byte	0x1
	.2byte	0x10f
	.4byte	0x4c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x23
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.4byte	0xfe8
	.uleb128 0x2b
	.4byte	.LASF153
	.byte	0x1
	.2byte	0x111
	.4byte	0xb2
	.4byte	.LLST13
	.uleb128 0x24
	.4byte	.LVL79
	.4byte	0x156a
	.4byte	0xfbb
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	idle_hook_cb
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL80
	.4byte	0x1533
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC27
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x111
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5806
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC52
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL78
	.4byte	0x1575
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL58
	.4byte	0x14fb
	.4byte	0x1010
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	twdt_spinlock
	.byte	0
	.uleb128 0x24
	.4byte	.LVL59
	.4byte	0x1506
	.4byte	0x1027
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	twdt_spinlock
	.byte	0
	.uleb128 0x26
	.4byte	.LVL62
	.4byte	0x1581
	.uleb128 0x24
	.4byte	.LVL64
	.4byte	0xad3
	.4byte	0x104a
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x24
	.4byte	.LVL66
	.4byte	0x1506
	.4byte	0x1061
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	twdt_spinlock
	.byte	0
	.uleb128 0x24
	.4byte	.LVL70
	.4byte	0x153e
	.4byte	0x1079
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x3c
	.byte	0
	.uleb128 0x24
	.4byte	.LVL72
	.4byte	0x1506
	.4byte	0x1090
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	twdt_spinlock
	.byte	0
	.uleb128 0x26
	.4byte	.LVL83
	.4byte	0xb31
	.uleb128 0x27
	.4byte	.LVL84
	.4byte	0x1506
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	twdt_spinlock
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	0xa0
	.4byte	0x10bd
	.uleb128 0x13
	.4byte	0x92
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.4byte	0x10ad
	.uleb128 0x2d
	.4byte	.LASF159
	.byte	0x1
	.2byte	0x11e
	.4byte	0xb2
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x118a
	.uleb128 0x2b
	.4byte	.LASF148
	.byte	0x1
	.2byte	0x124
	.4byte	0x111
	.4byte	.LLST14
	.uleb128 0x2b
	.4byte	.LASF157
	.byte	0x1
	.2byte	0x125
	.4byte	0xa85
	.4byte	.LLST15
	.uleb128 0x2e
	.4byte	.LASF149
	.byte	0x1
	.2byte	0x126
	.4byte	0xbd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.4byte	.LVL85
	.4byte	0x14fb
	.4byte	0x1122
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	twdt_spinlock
	.byte	0
	.uleb128 0x24
	.4byte	.LVL86
	.4byte	0x1506
	.4byte	0x1139
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	twdt_spinlock
	.byte	0
	.uleb128 0x26
	.4byte	.LVL87
	.4byte	0x1581
	.uleb128 0x24
	.4byte	.LVL88
	.4byte	0xad3
	.4byte	0x1156
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x24
	.4byte	.LVL90
	.4byte	0x1506
	.4byte	0x116d
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	twdt_spinlock
	.byte	0
	.uleb128 0x26
	.4byte	.LVL92
	.4byte	0xb31
	.uleb128 0x27
	.4byte	.LVL93
	.4byte	0x1506
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	twdt_spinlock
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF161
	.byte	0x1
	.byte	0x4b
	.4byte	0xbd
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x11ad
	.uleb128 0x26
	.4byte	.LVL94
	.4byte	0x10c2
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF162
	.byte	0x1
	.2byte	0x136
	.4byte	0xb2
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x12f2
	.uleb128 0x30
	.4byte	.LASF148
	.byte	0x1
	.2byte	0x136
	.4byte	0x111
	.4byte	.LLST16
	.uleb128 0x2b
	.4byte	.LASF157
	.byte	0x1
	.2byte	0x13f
	.4byte	0xa85
	.4byte	.LLST17
	.uleb128 0x2e
	.4byte	.LASF149
	.byte	0x1
	.2byte	0x140
	.4byte	0xbd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x23
	.4byte	.LBB11
	.4byte	.LBE11-.LBB11
	.4byte	0x121d
	.uleb128 0x2b
	.4byte	.LASF163
	.byte	0x1
	.2byte	0x149
	.4byte	0xa85
	.4byte	.LLST18
	.uleb128 0x26
	.4byte	.LVL110
	.4byte	0x155f
	.byte	0
	.uleb128 0x23
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.4byte	0x1264
	.uleb128 0x2c
	.string	"i"
	.byte	0x1
	.2byte	0x152
	.4byte	0x4c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x24
	.4byte	.LVL112
	.4byte	0x1575
	.4byte	0x124a
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL113
	.4byte	0x158d
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	idle_hook_cb
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL96
	.4byte	0x1581
	.uleb128 0x24
	.4byte	.LVL98
	.4byte	0x14fb
	.4byte	0x1284
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	twdt_spinlock
	.byte	0
	.uleb128 0x24
	.4byte	.LVL99
	.4byte	0x1506
	.4byte	0x129b
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	twdt_spinlock
	.byte	0
	.uleb128 0x24
	.4byte	.LVL102
	.4byte	0xad3
	.4byte	0x12b5
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x24
	.4byte	.LVL104
	.4byte	0x1506
	.4byte	0x12cc
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	twdt_spinlock
	.byte	0
	.uleb128 0x26
	.4byte	.LVL107
	.4byte	0x155f
	.uleb128 0x26
	.4byte	.LVL116
	.4byte	0xb31
	.uleb128 0x27
	.4byte	.LVL117
	.4byte	0x1506
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	twdt_spinlock
	.byte	0
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF164
	.byte	0x1
	.2byte	0x161
	.4byte	0xb2
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x138e
	.uleb128 0x30
	.4byte	.LASF148
	.byte	0x1
	.2byte	0x161
	.4byte	0x111
	.4byte	.LLST19
	.uleb128 0x2b
	.4byte	.LASF151
	.byte	0x1
	.2byte	0x16b
	.4byte	0xa85
	.4byte	.LLST20
	.uleb128 0x26
	.4byte	.LVL119
	.4byte	0x1581
	.uleb128 0x24
	.4byte	.LVL121
	.4byte	0x14fb
	.4byte	0x134c
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	twdt_spinlock
	.byte	0
	.uleb128 0x24
	.4byte	.LVL122
	.4byte	0x1506
	.4byte	0x1363
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	twdt_spinlock
	.byte	0
	.uleb128 0x24
	.4byte	.LVL126
	.4byte	0x1506
	.4byte	0x137a
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	twdt_spinlock
	.byte	0
	.uleb128 0x27
	.4byte	.LVL130
	.4byte	0x1506
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	twdt_spinlock
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LASF189
	.byte	0x1
	.2byte	0x176
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x14a5
	.uleb128 0x2b
	.4byte	.LASF148
	.byte	0x1
	.2byte	0x17d
	.4byte	0x111
	.4byte	.LLST21
	.uleb128 0x2e
	.4byte	.LASF149
	.byte	0x1
	.2byte	0x17e
	.4byte	0xbd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.4byte	.LASF157
	.byte	0x1
	.2byte	0x17f
	.4byte	0xa85
	.4byte	.LLST22
	.uleb128 0x23
	.4byte	.LBB13
	.4byte	.LBE13-.LBB13
	.4byte	0x13f1
	.uleb128 0x2b
	.4byte	.LASF151
	.byte	0x1
	.2byte	0x195
	.4byte	0xa85
	.4byte	.LLST23
	.byte	0
	.uleb128 0x24
	.4byte	.LVL132
	.4byte	0x14fb
	.4byte	0x1408
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	twdt_spinlock
	.byte	0
	.uleb128 0x24
	.4byte	.LVL133
	.4byte	0x1506
	.4byte	0x141f
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	twdt_spinlock
	.byte	0
	.uleb128 0x26
	.4byte	.LVL134
	.4byte	0x1581
	.uleb128 0x24
	.4byte	.LVL136
	.4byte	0xad3
	.4byte	0x1442
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x26
	.4byte	.LVL138
	.4byte	0xb31
	.uleb128 0x24
	.4byte	.LVL139
	.4byte	0x1506
	.4byte	0x1462
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	twdt_spinlock
	.byte	0
	.uleb128 0x24
	.4byte	.LVL142
	.4byte	0x153e
	.4byte	0x147a
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x3c
	.byte	0
	.uleb128 0x24
	.4byte	.LVL144
	.4byte	0x1506
	.4byte	0x1491
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	twdt_spinlock
	.byte	0
	.uleb128 0x27
	.4byte	.LVL152
	.4byte	0x1506
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	twdt_spinlock
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF165
	.byte	0x1
	.byte	0x43
	.4byte	0x14b6
	.uleb128 0x5
	.byte	0x3
	.4byte	twdt_config
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa8b
	.uleb128 0x1d
	.4byte	.LASF166
	.byte	0x1
	.byte	0x44
	.4byte	0xe5
	.uleb128 0x5
	.byte	0x3
	.4byte	twdt_spinlock
	.uleb128 0x32
	.4byte	.LASF190
	.byte	0x8
	.byte	0xc6
	.4byte	0x96c
	.uleb128 0x33
	.4byte	.LASF167
	.4byte	.LASF167
	.byte	0x7
	.2byte	0x8a6
	.uleb128 0x33
	.4byte	.LASF168
	.4byte	.LASF168
	.byte	0x7
	.2byte	0x533
	.uleb128 0x34
	.4byte	.LASF169
	.4byte	.LASF169
	.byte	0x9
	.byte	0xde
	.uleb128 0x34
	.4byte	.LASF170
	.4byte	.LASF170
	.byte	0x5
	.byte	0xda
	.uleb128 0x34
	.4byte	.LASF171
	.4byte	.LASF171
	.byte	0x5
	.byte	0xd9
	.uleb128 0x33
	.4byte	.LASF172
	.4byte	.LASF172
	.byte	0x7
	.2byte	0x8d5
	.uleb128 0x34
	.4byte	.LASF173
	.4byte	.LASF173
	.byte	0xa
	.byte	0x47
	.uleb128 0x34
	.4byte	.LASF174
	.4byte	.LASF174
	.byte	0x6
	.byte	0x99
	.uleb128 0x34
	.4byte	.LASF175
	.4byte	.LASF175
	.byte	0x4
	.byte	0x4f
	.uleb128 0x34
	.4byte	.LASF176
	.4byte	.LASF176
	.byte	0xa
	.byte	0x57
	.uleb128 0x34
	.4byte	.LASF177
	.4byte	.LASF177
	.byte	0xb
	.byte	0x25
	.uleb128 0x34
	.4byte	.LASF178
	.4byte	.LASF178
	.byte	0x6
	.byte	0xd3
	.uleb128 0x34
	.4byte	.LASF179
	.4byte	.LASF179
	.byte	0xa
	.byte	0x5a
	.uleb128 0x34
	.4byte	.LASF180
	.4byte	.LASF180
	.byte	0xc
	.byte	0x31
	.uleb128 0x33
	.4byte	.LASF181
	.4byte	.LASF181
	.byte	0x7
	.2byte	0x5d9
	.uleb128 0x33
	.4byte	.LASF182
	.4byte	.LASF182
	.byte	0x7
	.2byte	0x89c
	.uleb128 0x34
	.4byte	.LASF183
	.4byte	.LASF183
	.byte	0xc
	.byte	0x62
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
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x32
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
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0x34
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
	.4byte	.LFE19
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL4
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LFE19
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL9
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL11
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL14
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL16
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL33
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
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL43
	.4byte	.LVL45
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x2
	.byte	0x7a
	.sleb128 4
	.4byte	.LVL47
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL33
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL44
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL39
	.4byte	.LVL40-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL52
	.4byte	.LVL53-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL57
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
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL68
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL74
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL64
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL70
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL74
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL75
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL79
	.4byte	.LVL80-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL87
	.4byte	.LVL88-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL88
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL91
	.4byte	.LVL92-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL95
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL97
	.4byte	.LVL100
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL101
	.4byte	.LVL105
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL106
	.4byte	.LVL115
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL102
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL106
	.4byte	.LVL107-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL108
	.4byte	.LVL110-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL108
	.4byte	.LVL110-1
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL118
	.4byte	.LVL120
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL120
	.4byte	.LVL123
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL124
	.4byte	.LVL127
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL128
	.4byte	.LVL131
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL125
	.4byte	.LVL126-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL128
	.4byte	.LVL130-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL135
	.4byte	.LVL137
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL140
	.4byte	.LVL146
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL146
	.4byte	.LVL147
	.2byte	0x2
	.byte	0x7a
	.sleb128 0
	.4byte	.LVL148
	.4byte	.LVL150
	.2byte	0x2
	.byte	0x7a
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL136
	.4byte	.LVL138-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL140
	.4byte	.LVL141
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL142
	.4byte	.LVL143
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL145
	.4byte	.LVL151
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL148
	.4byte	.LVL150
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x6c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
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
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
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
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LFB20
	.4byte	.LFE20
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
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF110:
	.string	"PERIPH_UART2_MODULE"
.LASF18:
	.string	"count"
.LASF38:
	.string	"load_high"
.LASF82:
	.string	"int_raw"
.LASF127:
	.string	"PERIPH_VSPI_MODULE"
.LASF165:
	.string	"twdt_config"
.LASF94:
	.string	"reserved_cc"
.LASF142:
	.string	"next"
.LASF172:
	.string	"xTaskGetAffinity"
.LASF120:
	.string	"PERIPH_PWM3_MODULE"
.LASF78:
	.string	"lactloadlo"
.LASF48:
	.string	"start_cycling"
.LASF95:
	.string	"reserved_d0"
.LASF139:
	.string	"twdt_task_t"
.LASF73:
	.string	"lactlo"
.LASF140:
	.string	"task_handle"
.LASF97:
	.string	"reserved_d8"
.LASF152:
	.string	"twdttask"
.LASF156:
	.string	"esp_task_wdt_add"
.LASF8:
	.string	"long long unsigned int"
.LASF61:
	.string	"wdt_config0"
.LASF62:
	.string	"wdt_config1"
.LASF63:
	.string	"wdt_config2"
.LASF64:
	.string	"wdt_config3"
.LASF65:
	.string	"wdt_config4"
.LASF66:
	.string	"wdt_config5"
.LASF105:
	.string	"timg_date"
.LASF7:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF106:
	.string	"timg_dev_t"
.LASF98:
	.string	"reserved_dc"
.LASF153:
	.string	"__err_rc"
.LASF37:
	.string	"load_low"
.LASF174:
	.string	"esp_intr_alloc"
.LASF170:
	.string	"vTaskEnterCritical"
.LASF99:
	.string	"reserved_e0"
.LASF189:
	.string	"esp_task_wdt_feed"
.LASF171:
	.string	"vTaskExitCritical"
.LASF11:
	.string	"long int"
.LASF100:
	.string	"reserved_e4"
.LASF101:
	.string	"reserved_e8"
.LASF22:
	.string	"TaskHandle_t"
.LASF30:
	.string	"enable"
.LASF179:
	.string	"free"
.LASF134:
	.string	"PERIPH_WIFI_MODULE"
.LASF36:
	.string	"alarm_high"
.LASF96:
	.string	"reserved_d4"
.LASF187:
	.string	"reset_hw_timer"
.LASF85:
	.string	"reserved_a8"
.LASF149:
	.string	"all_reset"
.LASF28:
	.string	"autoreload"
.LASF130:
	.string	"PERIPH_SDIO_SLAVE_MODULE"
.LASF143:
	.string	"twdt_config_t"
.LASF5:
	.string	"__uint32_t"
.LASF122:
	.string	"PERIPH_UHCI1_MODULE"
.LASF102:
	.string	"reserved_ec"
.LASF146:
	.string	"panic"
.LASF147:
	.string	"intr_handle"
.LASF77:
	.string	"lactalarmhi"
.LASF56:
	.string	"lact"
.LASF51:
	.string	"value"
.LASF67:
	.string	"wdt_feed"
.LASF103:
	.string	"reserved_f0"
.LASF175:
	.string	"_esp_error_check_failed"
.LASF6:
	.string	"unsigned int"
.LASF25:
	.string	"level_int_en"
.LASF133:
	.string	"PERIPH_RNG_MODULE"
.LASF32:
	.string	"cnt_low"
.LASF119:
	.string	"PERIPH_PWM2_MODULE"
.LASF13:
	.string	"long unsigned int"
.LASF39:
	.string	"reload"
.LASF145:
	.string	"timeout"
.LASF121:
	.string	"PERIPH_UHCI0_MODULE"
.LASF182:
	.string	"xTaskGetCurrentTaskHandle"
.LASF21:
	.string	"intr_handle_t"
.LASF131:
	.string	"PERIPH_CAN_MODULE"
.LASF3:
	.string	"short unsigned int"
.LASF58:
	.string	"date"
.LASF136:
	.string	"PERIPH_WIFI_BT_COMMON_MODULE"
.LASF166:
	.string	"twdt_spinlock"
.LASF83:
	.string	"int_st_timers"
.LASF60:
	.string	"hw_timer"
.LASF109:
	.string	"PERIPH_UART1_MODULE"
.LASF160:
	.string	"find_task_in_twdt_list"
.LASF80:
	.string	"lactload"
.LASF150:
	.string	"target"
.LASF29:
	.string	"increase"
.LASF132:
	.string	"PERIPH_EMAC_MODULE"
.LASF157:
	.string	"target_task"
.LASF123:
	.string	"PERIPH_RMT_MODULE"
.LASF4:
	.string	"__int32_t"
.LASF180:
	.string	"esp_register_freertos_idle_hook_for_cpu"
.LASF69:
	.string	"rtc_cali_cfg"
.LASF148:
	.string	"handle"
.LASF111:
	.string	"PERIPH_I2C0_MODULE"
.LASF12:
	.string	"sizetype"
.LASF112:
	.string	"PERIPH_I2C1_MODULE"
.LASF79:
	.string	"lactloadhi"
.LASF81:
	.string	"int_ena"
.LASF35:
	.string	"alarm_low"
.LASF74:
	.string	"lacthi"
.LASF41:
	.string	"sys_reset_length"
.LASF169:
	.string	"ets_printf"
.LASF185:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/esp32/task_wdt.c"
.LASF49:
	.string	"clk_sel"
.LASF126:
	.string	"PERIPH_HSPI_MODULE"
.LASF33:
	.string	"cnt_high"
.LASF70:
	.string	"rtc_cali_cfg1"
.LASF114:
	.string	"PERIPH_I2S1_MODULE"
.LASF162:
	.string	"esp_task_wdt_delete"
.LASF116:
	.string	"PERIPH_TIMG1_MODULE"
.LASF128:
	.string	"PERIPH_SPI_DMA_MODULE"
.LASF159:
	.string	"esp_task_wdt_reset"
.LASF167:
	.string	"xTaskGetCurrentTaskHandleForCPU"
.LASF107:
	.string	"PERIPH_LEDC_MODULE"
.LASF34:
	.string	"update"
.LASF24:
	.string	"alarm_en"
.LASF16:
	.string	"_Bool"
.LASF9:
	.string	"int32_t"
.LASF1:
	.string	"unsigned char"
.LASF118:
	.string	"PERIPH_PWM1_MODULE"
.LASF59:
	.string	"reserved28"
.LASF184:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF53:
	.string	"cpst_en"
.LASF2:
	.string	"short int"
.LASF125:
	.string	"PERIPH_SPI_MODULE"
.LASF20:
	.string	"intr_handle_data_t"
.LASF76:
	.string	"lactalarmlo"
.LASF47:
	.string	"clk_prescale"
.LASF154:
	.string	"__func__"
.LASF87:
	.string	"reserved_b0"
.LASF84:
	.string	"int_clr_timers"
.LASF68:
	.string	"wdt_wprotect"
.LASF108:
	.string	"PERIPH_UART0_MODULE"
.LASF40:
	.string	"flashboot_mod_en"
.LASF138:
	.string	"PERIPH_BT_LC_MODULE"
.LASF129:
	.string	"PERIPH_SDMMC_MODULE"
.LASF10:
	.string	"uint32_t"
.LASF23:
	.string	"reserved0"
.LASF17:
	.string	"owner"
.LASF14:
	.string	"char"
.LASF86:
	.string	"reserved_ac"
.LASF186:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\esp32"
.LASF104:
	.string	"reserved_f4"
.LASF31:
	.string	"config"
.LASF168:
	.string	"pcTaskGetTaskName"
.LASF173:
	.string	"abort"
.LASF155:
	.string	"esp_task_wdt_init"
.LASF46:
	.string	"stg0"
.LASF45:
	.string	"stg1"
.LASF44:
	.string	"stg2"
.LASF43:
	.string	"stg3"
.LASF88:
	.string	"reserved_b4"
.LASF26:
	.string	"edge_int_en"
.LASF89:
	.string	"reserved_b8"
.LASF151:
	.string	"task"
.LASF190:
	.string	"TIMERG0"
.LASF52:
	.string	"rtc_only"
.LASF71:
	.string	"lactconfig"
.LASF178:
	.string	"esp_intr_free"
.LASF158:
	.string	"esp_task_wdt_deinit"
.LASF113:
	.string	"PERIPH_I2S0_MODULE"
.LASF19:
	.string	"portMUX_TYPE"
.LASF42:
	.string	"cpu_reset_length"
.LASF15:
	.string	"esp_err_t"
.LASF115:
	.string	"PERIPH_TIMG0_MODULE"
.LASF176:
	.string	"calloc"
.LASF57:
	.string	"reserved4"
.LASF90:
	.string	"reserved_bc"
.LASF183:
	.string	"esp_deregister_freertos_idle_hook_for_cpu"
.LASF27:
	.string	"divider"
.LASF75:
	.string	"lactupdate"
.LASF91:
	.string	"reserved_c0"
.LASF141:
	.string	"has_reset"
.LASF181:
	.string	"xTaskGetIdleTaskHandleForCPU"
.LASF92:
	.string	"reserved_c4"
.LASF54:
	.string	"lac_en"
.LASF55:
	.string	"step_len"
.LASF188:
	.string	"task_wdt_isr"
.LASF93:
	.string	"reserved_c8"
.LASF124:
	.string	"PERIPH_PCNT_MODULE"
.LASF163:
	.string	"prev"
.LASF117:
	.string	"PERIPH_PWM0_MODULE"
.LASF135:
	.string	"PERIPH_BT_MODULE"
.LASF50:
	.string	"start"
.LASF144:
	.string	"list"
.LASF177:
	.string	"periph_module_enable"
.LASF137:
	.string	"PERIPH_BT_BASEBAND_MODULE"
.LASF72:
	.string	"lactrtc"
.LASF161:
	.string	"idle_hook_cb"
.LASF164:
	.string	"esp_task_wdt_status"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
