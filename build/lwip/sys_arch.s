	.file	"sys_arch.c"
	.text
.Ltext0:
	.section	.text.sys_thread_sem_free,"ax",@progbits
	.align	4
	.type	sys_thread_sem_free, @function
sys_thread_sem_free:
.LFB38:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/port/freertos/sys_arch.c"
	.loc 1 518 0
.LVL0:
	entry	sp, 32
.LCFI0:
.LVL1:
	.loc 1 521 0
	beqz.n	a2, .L2
	.loc 1 521 0 is_stmt 0 discriminator 1
	l32i.n	a10, a2, 0
	beqz.n	a10, .L2
	.loc 1 523 0 is_stmt 1
	call8	vQueueDelete
.LVL2:
.L2:
	.loc 1 526 0
	beqz.n	a2, .L1
	.loc 1 528 0
	mov.n	a10, a2
	call8	free
.LVL3:
.L1:
	retw.n
.LFE38:
	.size	sys_thread_sem_free, .-sys_thread_sem_free
	.section	.text.sys_mutex_new,"ax",@progbits
	.align	4
	.global	sys_mutex_new
	.type	sys_mutex_new, @function
sys_mutex_new:
.LFB15:
	.loc 1 59 0
.LVL4:
	entry	sp, 32
.LCFI1:
.LVL5:
	.loc 1 62 0
	movi.n	a10, 1
	call8	xQueueCreateMutex
.LVL6:
	s32i.n	a10, a2, 0
	.loc 1 64 0
	bnez.n	a10, .L6
	.loc 1 60 0
	movi	a2, 0xff
.LVL7:
	retw.n
.LVL8:
.L6:
	.loc 1 65 0
	movi.n	a2, 0
.LVL9:
	.loc 1 71 0
	retw.n
.LFE15:
	.size	sys_mutex_new, .-sys_mutex_new
	.section	.text.sys_mutex_lock,"ax",@progbits
	.align	4
	.global	sys_mutex_lock
	.type	sys_mutex_lock, @function
sys_mutex_lock:
.LFB16:
	.loc 1 77 0
.LVL10:
	entry	sp, 32
.LCFI2:
.L8:
	.loc 1 78 0 discriminator 1
	movi.n	a13, 0
	movi.n	a12, -1
	mov.n	a11, a13
	l32i.n	a10, a2, 0
	call8	xQueueGenericReceive
.LVL11:
	bnei	a10, 1, .L8
	.loc 1 79 0
	retw.n
.LFE16:
	.size	sys_mutex_lock, .-sys_mutex_lock
	.section	.text.sys_mutex_trylock,"ax",@progbits
	.align	4
	.global	sys_mutex_trylock
	.type	sys_mutex_trylock, @function
sys_mutex_trylock:
.LFB17:
	.loc 1 83 0
.LVL12:
	entry	sp, 32
.LCFI3:
	.loc 1 84 0
	movi.n	a13, 0
	mov.n	a12, a13
	mov.n	a11, a13
	l32i.n	a10, a2, 0
	call8	xQueueGenericReceive
.LVL13:
	bnei	a10, 1, .L11
	.loc 1 84 0
	movi.n	a2, 0
.LVL14:
	retw.n
.LVL15:
.L11:
	.loc 1 85 0
	movi	a2, 0xff
.LVL16:
	.loc 1 86 0
	retw.n
.LFE17:
	.size	sys_mutex_trylock, .-sys_mutex_trylock
	.section	.text.sys_mutex_unlock,"ax",@progbits
	.align	4
	.global	sys_mutex_unlock
	.type	sys_mutex_unlock, @function
sys_mutex_unlock:
.LFB18:
	.loc 1 92 0
.LVL17:
	entry	sp, 32
.LCFI4:
	.loc 1 93 0
	movi.n	a13, 0
	mov.n	a12, a13
	mov.n	a11, a13
	l32i.n	a10, a2, 0
	call8	xQueueGenericSend
.LVL18:
	retw.n
.LFE18:
	.size	sys_mutex_unlock, .-sys_mutex_unlock
	.section	.text.sys_mutex_free,"ax",@progbits
	.align	4
	.global	sys_mutex_free
	.type	sys_mutex_free, @function
sys_mutex_free:
.LFB19:
	.loc 1 100 0
.LVL19:
	entry	sp, 32
.LCFI5:
	.loc 1 102 0
	l32i.n	a10, a2, 0
	call8	vQueueDelete
.LVL20:
	retw.n
.LFE19:
	.size	sys_mutex_free, .-sys_mutex_free
	.section	.text.sys_sem_new,"ax",@progbits
	.align	4
	.global	sys_sem_new
	.type	sys_sem_new, @function
sys_sem_new:
.LFB20:
	.loc 1 111 0
.LVL21:
	entry	sp, 32
.LCFI6:
	extui	a3, a3, 0, 8
.LVL22:
	.loc 1 113 0
	movi.n	a12, 3
	movi.n	a11, 0
	movi.n	a10, 1
	call8	xQueueGenericCreate
.LVL23:
	s32i.n	a10, a2, 0
	beqz.n	a10, .L15
	.loc 1 113 0 discriminator 1
	movi.n	a13, 0
	mov.n	a12, a13
	mov.n	a11, a13
	call8	xQueueGenericSend
.LVL24:
.L15:
	.loc 1 115 0
	l32i.n	a10, a2, 0
	beqz.n	a10, .L17
	.loc 1 116 0
	bnez.n	a3, .L18
	.loc 1 117 0
	movi.n	a13, 0
	movi.n	a12, 1
	mov.n	a11, a13
	call8	xQueueGenericReceive
.LVL25:
	.loc 1 120 0
	movi.n	a2, 0
.LVL26:
	retw.n
.LVL27:
.L17:
	.loc 1 112 0
	movi	a2, 0xff
.LVL28:
	retw.n
.LVL29:
.L18:
	.loc 1 120 0
	movi.n	a2, 0
.LVL30:
	.loc 1 126 0
	retw.n
.LFE20:
	.size	sys_sem_new, .-sys_sem_new
	.section	.text.sys_sem_signal,"ax",@progbits
	.align	4
	.global	sys_sem_signal
	.type	sys_sem_signal, @function
sys_sem_signal:
.LFB21:
	.loc 1 132 0
.LVL31:
	entry	sp, 32
.LCFI7:
	.loc 1 133 0
	movi.n	a13, 0
	mov.n	a12, a13
	mov.n	a11, a13
	l32i.n	a10, a2, 0
	call8	xQueueGenericSend
.LVL32:
	retw.n
.LFE21:
	.size	sys_sem_signal, .-sys_sem_signal
	.section	.text.sys_sem_signal_isr,"ax",@progbits
	.align	4
	.global	sys_sem_signal_isr
	.type	sys_sem_signal_isr, @function
sys_sem_signal_isr:
.LFB22:
	.loc 1 139 0
.LVL33:
	entry	sp, 48
.LCFI8:
	.loc 1 140 0
	movi.n	a3, 0
	s32i.n	a3, sp, 0
	.loc 1 141 0
	mov.n	a11, sp
	l32i.n	a10, a2, 0
	call8	xQueueGiveFromISR
.LVL34:
	.loc 1 142 0
	l32i.n	a2, sp, 0
.LVL35:
	addi.n	a2, a2, -1
	movi.n	a8, 1
	moveqz	a3, a8, a2
	mov.n	a2, a3
	.loc 1 143 0
	retw.n
.LFE22:
	.size	sys_sem_signal_isr, .-sys_sem_signal_isr
	.section	.text.sys_arch_sem_wait,"ax",@progbits
	.literal_position
	.literal .LC0, -858993459
	.align	4
	.global	sys_arch_sem_wait
	.type	sys_arch_sem_wait, @function
sys_arch_sem_wait:
.LFB23:
	.loc 1 163 0
.LVL36:
	entry	sp, 32
.LCFI9:
	.loc 1 167 0
	call8	xTaskGetTickCount
.LVL37:
	mov.n	a4, a10
.LVL38:
	.loc 1 169 0
	beqz.n	a3, .L22
	.loc 1 170 0
	l32r	a12, .LC0
	muluh	a12, a3, a12
	movi.n	a13, 0
	srli	a12, a12, 3
	mov.n	a11, a13
	l32i.n	a10, a2, 0
	call8	xQueueGenericReceive
.LVL39:
	bnei	a10, 1, .L24
	.loc 1 171 0
	call8	xTaskGetTickCount
.LVL40:
	.loc 1 172 0
	sub	a10, a10, a4
.LVL41:
	addx4	a10, a10, a10
	slli	a2, a10, 1
.LVL42:
	.loc 1 174 0
	beqz.n	a2, .L25
	retw.n
.LVL43:
.L22:
	.loc 1 183 0 discriminator 1
	movi.n	a13, 0
	movi.n	a12, -1
	mov.n	a11, a13
	l32i.n	a10, a2, 0
	call8	xQueueGenericReceive
.LVL44:
	bnei	a10, 1, .L22
	.loc 1 185 0
	call8	xTaskGetTickCount
.LVL45:
	.loc 1 186 0
	sub	a10, a10, a4
.LVL46:
	addx4	a10, a10, a10
	slli	a2, a10, 1
.LVL47:
	.loc 1 188 0
	beqz.n	a2, .L26
	retw.n
.LVL48:
.L24:
	.loc 1 180 0
	movi.n	a2, -1
.LVL49:
	retw.n
.LVL50:
.L25:
	.loc 1 175 0
	movi.n	a2, 1
.LVL51:
	retw.n
.LVL52:
.L26:
	.loc 1 189 0
	movi.n	a2, 1
.LVL53:
	.loc 1 196 0
	retw.n
.LFE23:
	.size	sys_arch_sem_wait, .-sys_arch_sem_wait
	.section	.text.sys_sem_free,"ax",@progbits
	.align	4
	.global	sys_sem_free
	.type	sys_sem_free, @function
sys_sem_free:
.LFB24:
	.loc 1 202 0
.LVL54:
	entry	sp, 32
.LCFI10:
	.loc 1 203 0
	l32i.n	a10, a2, 0
	call8	vQueueDelete
.LVL55:
	retw.n
.LFE24:
	.size	sys_sem_free, .-sys_sem_free
	.section	.text.sys_mbox_new,"ax",@progbits
	.align	4
	.global	sys_mbox_new
	.type	sys_mbox_new, @function
sys_mbox_new:
.LFB25:
	.loc 1 210 0
.LVL56:
	entry	sp, 32
.LCFI11:
	.loc 1 211 0
	movi.n	a10, 0xc
	call8	malloc
.LVL57:
	mov.n	a4, a10
	s32i.n	a10, a2, 0
	.loc 1 212 0
	beqz.n	a10, .L32
	.loc 1 217 0
	movi.n	a12, 0
	movi.n	a11, 4
	mov.n	a10, a3
	call8	xQueueGenericCreate
.LVL58:
	s32i.n	a10, a4, 0
	.loc 1 219 0
	l32i.n	a10, a2, 0
	l32i.n	a3, a10, 0
.LVL59:
	bnez.n	a3, .L30
	.loc 1 221 0
	call8	free
.LVL60:
	.loc 1 222 0
	movi	a10, 0xff
	j	.L29
.L30:
	.loc 1 225 0
	addi.n	a10, a10, 4
	call8	sys_mutex_new
.LVL61:
	extui	a10, a10, 0, 8
	beqz.n	a10, .L31
	.loc 1 227 0
	l32i.n	a3, a2, 0
	l32i.n	a10, a3, 0
	call8	vQueueDelete
.LVL62:
	.loc 1 228 0
	l32i.n	a10, a2, 0
	call8	free
.LVL63:
	.loc 1 229 0
	movi	a10, 0xff
	j	.L29
.L31:
	.loc 1 232 0
	l32i.n	a2, a2, 0
.LVL64:
	movi.n	a3, 1
	s8i	a3, a2, 8
	.loc 1 235 0
	j	.L29
.LVL65:
.L32:
	.loc 1 214 0
	movi	a10, 0xff
.LVL66:
.L29:
	.loc 1 236 0
	mov.n	a2, a10
	retw.n
.LFE25:
	.size	sys_mbox_new, .-sys_mbox_new
	.section	.text.sys_mbox_post,"ax",@progbits
	.align	4
	.global	sys_mbox_post
	.type	sys_mbox_post, @function
sys_mbox_post:
.LFB26:
	.loc 1 242 0
.LVL67:
	entry	sp, 48
.LCFI12:
	s32i.n	a3, sp, 0
.LVL68:
.L34:
	.loc 1 243 0 discriminator 1
	l32i.n	a8, a2, 0
	movi.n	a13, 0
	movi.n	a12, -1
	mov.n	a11, sp
.LVL69:
	l32i.n	a10, a8, 0
	call8	xQueueGenericSend
.LVL70:
	bnei	a10, 1, .L34
	.loc 1 244 0
	retw.n
.LFE26:
	.size	sys_mbox_post, .-sys_mbox_post
	.section	.text.sys_mbox_trypost,"ax",@progbits
	.align	4
	.global	sys_mbox_trypost
	.type	sys_mbox_trypost, @function
sys_mbox_trypost:
.LFB27:
	.loc 1 249 0
.LVL71:
	entry	sp, 48
.LCFI13:
	s32i.n	a3, sp, 0
	.loc 1 252 0
	l32i.n	a8, a2, 0
	movi.n	a13, 0
	mov.n	a12, a13
	mov.n	a11, sp
	l32i.n	a10, a8, 0
	call8	xQueueGenericSend
.LVL72:
	bnei	a10, 1, .L37
	.loc 1 253 0
	movi.n	a2, 0
.LVL73:
	retw.n
.LVL74:
.L37:
	.loc 1 256 0
	movi	a2, 0xff
.LVL75:
	.loc 1 260 0
	retw.n
.LFE27:
	.size	sys_mbox_trypost, .-sys_mbox_trypost
	.section	.text.sys_arch_mbox_fetch,"ax",@progbits
	.literal_position
	.literal .LC1, -858993459
	.align	4
	.global	sys_arch_mbox_fetch
	.type	sys_arch_mbox_fetch, @function
sys_arch_mbox_fetch:
.LFB28:
	.loc 1 280 0
.LVL76:
	entry	sp, 48
.LCFI14:
	.loc 1 285 0
	call8	xTaskGetTickCount
.LVL77:
	mov.n	a5, a10
.LVL78:
	.loc 1 286 0
	bnez.n	a3, .L39
	.loc 1 287 0
	mov.n	a3, sp
.LVL79:
.L39:
	.loc 1 290 0
	l32i.n	a10, a2, 0
	bnez.n	a10, .L40
	.loc 1 291 0
	movi.n	a2, 0
.LVL80:
	s32i.n	a2, a3, 0
	.loc 1 293 0
	movi.n	a2, -1
	retw.n
.LVL81:
.L40:
	.loc 1 296 0
	addi.n	a10, a10, 4
	call8	sys_mutex_lock
.LVL82:
	.loc 1 298 0
	beqz.n	a4, .L42
	.loc 1 299 0
	l32i.n	a8, a2, 0
	l32r	a12, .LC1
	muluh	a12, a4, a12
	movi.n	a13, 0
	srli	a12, a12, 3
	mov.n	a11, a3
	l32i.n	a10, a8, 0
	call8	xQueueGenericReceive
.LVL83:
	bnei	a10, 1, .L43
	.loc 1 300 0
	call8	xTaskGetTickCount
.LVL84:
	.loc 1 301 0
	sub	a10, a10, a5
.LVL85:
	addx4	a5, a10, a10
.LVL86:
	slli	a3, a5, 1
.LVL87:
	mov.n	a5, a3
.LVL88:
	.loc 1 303 0
	beqz.n	a3, .L47
	j	.L44
.LVL89:
.L43:
	.loc 1 309 0
	movi.n	a4, 0
.LVL90:
	s32i.n	a4, a3, 0
.LVL91:
	.loc 1 310 0
	movi.n	a3, -1
.LVL92:
	j	.L44
.LVL93:
.L42:
	.loc 1 316 0
	l32i.n	a8, a2, 0
	movi.n	a13, 0
	movi.n	a12, -1
	mov.n	a11, a3
	l32i.n	a10, a8, 0
	call8	xQueueGenericReceive
.LVL94:
	beqi	a10, 1, .L45
	.loc 1 321 0
	l32i.n	a8, a2, 0
	l8ui	a8, a8, 8
	bnez.n	a8, .L42
	.loc 1 323 0
	movi.n	a4, 0
.LVL95:
	s32i.n	a4, a3, 0
.L45:
	.loc 1 328 0
	call8	xTaskGetTickCount
.LVL96:
	.loc 1 329 0
	sub	a10, a10, a5
.LVL97:
	addx4	a10, a10, a10
	slli	a3, a10, 1
.LVL98:
	.loc 1 331 0
	beqz.n	a3, .L48
	j	.L44
.LVL99:
.L47:
	.loc 1 304 0
	movi.n	a3, 1
.LVL100:
	j	.L44
.LVL101:
.L48:
	.loc 1 332 0
	movi.n	a3, 1
.LVL102:
.L44:
	.loc 1 338 0
	l32i.n	a10, a2, 0
	addi.n	a10, a10, 4
	call8	sys_mutex_unlock
.LVL103:
	.loc 1 340 0
	mov.n	a2, a3
.LVL104:
	.loc 1 341 0
	retw.n
.LFE28:
	.size	sys_arch_mbox_fetch, .-sys_arch_mbox_fetch
	.section	.text.sys_arch_mbox_tryfetch,"ax",@progbits
	.align	4
	.global	sys_arch_mbox_tryfetch
	.type	sys_arch_mbox_tryfetch, @function
sys_arch_mbox_tryfetch:
.LFB29:
	.loc 1 346 0
.LVL105:
	entry	sp, 48
.LCFI15:
	mov.n	a11, a3
	.loc 1 350 0
	bnez.n	a3, .L50
	.loc 1 351 0
	mov.n	a11, sp
.L50:
.LVL106:
	.loc 1 354 0
	l32i.n	a8, a2, 0
	movi.n	a13, 0
	mov.n	a12, a13
	l32i.n	a10, a8, 0
	call8	xQueueGenericReceive
.LVL107:
	bnei	a10, 1, .L53
	.loc 1 355 0
	movi.n	a2, 0
.LVL108:
	retw.n
.LVL109:
.L53:
	.loc 1 357 0
	movi.n	a2, -1
.LVL110:
	.loc 1 361 0
	retw.n
.LFE29:
	.size	sys_arch_mbox_tryfetch, .-sys_arch_mbox_tryfetch
	.section	.text.sys_thread_new,"ax",@progbits
	.literal_position
	.literal .LC2, 2147483647
	.align	4
	.global	sys_thread_new
	.type	sys_thread_new, @function
sys_thread_new:
.LFB31:
	.loc 1 428 0
.LVL111:
	entry	sp, 64
.LCFI16:
.LVL112:
.LBB4:
.LBB5:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/task.h"
	.loc 2 438 0
	l32r	a8, .LC2
	s32i.n	a8, sp, 0
	addi	a15, sp, 16
.LVL113:
	mov.n	a14, a6
	mov.n	a13, a4
	mov.n	a12, a5
	mov.n	a11, a2
	mov.n	a10, a3
	call8	xTaskCreatePinnedToCore
.LVL114:
.LBE5:
.LBE4:
	.loc 1 434 0
	bnei	a10, 1, .L56
	.loc 1 435 0
	l32i.n	a2, sp, 16
.LVL115:
	retw.n
.LVL116:
.L56:
	.loc 1 437 0
	movi.n	a2, 0
.LVL117:
	.loc 1 439 0
	retw.n
.LFE31:
	.size	sys_thread_new, .-sys_thread_new
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC4:
	.string	"lwip_arch"
	.align	4
.LC6:
	.string	"\033[0;31mE (%d) %s: sys_init: failed to init lwip protect mutex\n\033[0m\n"
	.section	.text.sys_init,"ax",@progbits
	.literal_position
	.literal .LC3, g_lwip_protect_mutex
	.literal .LC5, .LC4
	.literal .LC7, .LC6
	.literal .LC8, sys_thread_sem_free
	.literal .LC9, sys_thread_sem_key
	.align	4
	.global	sys_init
	.type	sys_init, @function
sys_init:
.LFB32:
	.loc 1 445 0
	entry	sp, 32
.LCFI17:
	.loc 1 446 0
	l32r	a10, .LC3
	call8	sys_mutex_new
.LVL118:
	extui	a10, a10, 0, 8
	beqz.n	a10, .L58
	.loc 1 447 0 discriminator 2
	call8	esp_log_timestamp
.LVL119:
	l32r	a11, .LC5
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC7
	movi.n	a10, 1
	call8	esp_log_write
.LVL120:
.L58:
	.loc 1 451 0
	l32r	a11, .LC8
	l32r	a10, .LC9
	call8	pthread_key_create
.LVL121:
	.loc 1 453 0
	call8	esp_vfs_lwip_sockets_register
.LVL122:
	retw.n
.LFE32:
	.size	sys_init, .-sys_init
	.section	.text.sys_jiffies,"ax",@progbits
	.align	4
	.global	sys_jiffies
	.type	sys_jiffies, @function
sys_jiffies:
.LFB33:
	.loc 1 459 0
	entry	sp, 32
.LCFI18:
	.loc 1 460 0
	call8	xTaskGetTickCount
.LVL123:
	.loc 1 461 0
	mov.n	a2, a10
	retw.n
.LFE33:
	.size	sys_jiffies, .-sys_jiffies
	.section	.text.sys_now,"ax",@progbits
	.align	4
	.global	sys_now
	.type	sys_now, @function
sys_now:
.LFB34:
	.loc 1 466 0
	entry	sp, 32
.LCFI19:
	.loc 1 467 0
	call8	xTaskGetTickCount
.LVL124:
	addx4	a10, a10, a10
	slli	a2, a10, 1
	.loc 1 468 0
	retw.n
.LFE34:
	.size	sys_now, .-sys_now
	.section	.text.sys_arch_protect,"ax",@progbits
	.literal_position
	.literal .LC10, g_lwip_protect_mutex
	.align	4
	.global	sys_arch_protect
	.type	sys_arch_protect, @function
sys_arch_protect:
.LFB35:
	.loc 1 485 0
	entry	sp, 32
.LCFI20:
	.loc 1 486 0
	l32r	a10, .LC10
	call8	sys_mutex_lock
.LVL125:
	.loc 1 488 0
	movi.n	a2, 1
	retw.n
.LFE35:
	.size	sys_arch_protect, .-sys_arch_protect
	.section	.text.sys_arch_unprotect,"ax",@progbits
	.literal_position
	.literal .LC11, g_lwip_protect_mutex
	.align	4
	.global	sys_arch_unprotect
	.type	sys_arch_unprotect, @function
sys_arch_unprotect:
.LFB36:
	.loc 1 499 0
.LVL126:
	entry	sp, 32
.LCFI21:
	.loc 1 500 0
	l32r	a10, .LC11
	call8	sys_mutex_unlock
.LVL127:
	retw.n
.LFE36:
	.size	sys_arch_unprotect, .-sys_arch_unprotect
	.section	.rodata.str1.4
	.align	4
.LC13:
	.string	"\033[0;31mE (%d) %s: thread_sem_init: out of memory\033[0m\n"
	.section	.text.sys_thread_sem_init,"ax",@progbits
	.literal_position
	.literal .LC12, .LC4
	.literal .LC14, .LC13
	.literal .LC15, sys_thread_sem_key
	.align	4
	.global	sys_thread_sem_init
	.type	sys_thread_sem_init, @function
sys_thread_sem_init:
.LFB39:
	.loc 1 533 0
	entry	sp, 32
.LCFI22:
	.loc 1 534 0
	movi.n	a10, 4
	call8	malloc
.LVL128:
	mov.n	a2, a10
.LVL129:
	.loc 1 536 0
	bnez.n	a10, .L64
	.loc 1 537 0 discriminator 2
	call8	esp_log_timestamp
.LVL130:
	l32r	a11, .LC12
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC14
	movi.n	a10, 1
	call8	esp_log_write
.LVL131:
	.loc 1 538 0 discriminator 2
	retw.n
.L64:
	.loc 1 541 0
	movi.n	a12, 3
	movi.n	a11, 0
	movi.n	a10, 1
	call8	xQueueGenericCreate
.LVL132:
	s32i.n	a10, a2, 0
	.loc 1 542 0
	bnez.n	a10, .L66
	.loc 1 543 0
	mov.n	a10, a2
	call8	free
.LVL133:
	.loc 1 544 0
	call8	esp_log_timestamp
.LVL134:
	l32r	a11, .LC12
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC14
	movi.n	a10, 1
	call8	esp_log_write
.LVL135:
	.loc 1 545 0
	movi.n	a2, 0
.LVL136:
	retw.n
.LVL137:
.L66:
	.loc 1 548 0
	mov.n	a11, a2
	l32r	a8, .LC15
	l32i.n	a10, a8, 0
	call8	pthread_setspecific
.LVL138:
	.loc 1 550 0
	retw.n
.LFE39:
	.size	sys_thread_sem_init, .-sys_thread_sem_init
	.section	.text.sys_thread_sem_get,"ax",@progbits
	.literal_position
	.literal .LC16, sys_thread_sem_key
	.align	4
	.global	sys_thread_sem_get
	.type	sys_thread_sem_get, @function
sys_thread_sem_get:
.LFB37:
	.loc 1 507 0
	entry	sp, 32
.LCFI23:
	.loc 1 508 0
	l32r	a8, .LC16
	l32i.n	a10, a8, 0
	call8	pthread_getspecific
.LVL139:
	.loc 1 510 0
	bnez.n	a10, .L68
	.loc 1 511 0
	call8	sys_thread_sem_init
.LVL140:
.L68:
	.loc 1 515 0
	mov.n	a2, a10
	retw.n
.LFE37:
	.size	sys_thread_sem_get, .-sys_thread_sem_get
	.section	.text.sys_thread_sem_deinit,"ax",@progbits
	.literal_position
	.literal .LC17, sys_thread_sem_key
	.align	4
	.global	sys_thread_sem_deinit
	.type	sys_thread_sem_deinit, @function
sys_thread_sem_deinit:
.LFB40:
	.loc 1 553 0
	entry	sp, 32
.LCFI24:
	.loc 1 554 0
	l32r	a8, .LC17
	l32i.n	a10, a8, 0
	call8	pthread_getspecific
.LVL141:
	.loc 1 555 0
	beqz.n	a10, .L69
	.loc 1 556 0
	call8	sys_thread_sem_free
.LVL142:
	.loc 1 557 0
	movi.n	a11, 0
	l32r	a8, .LC17
	l32i.n	a10, a8, 0
	call8	pthread_setspecific
.LVL143:
.L69:
	retw.n
.LFE40:
	.size	sys_thread_sem_deinit, .-sys_thread_sem_deinit
	.section	.text.sys_delay_ms,"ax",@progbits
	.literal_position
	.literal .LC18, -858993459
	.align	4
	.global	sys_delay_ms
	.type	sys_delay_ms, @function
sys_delay_ms:
.LFB41:
	.loc 1 562 0
.LVL144:
	entry	sp, 32
.LCFI25:
	.loc 1 563 0
	l32r	a8, .LC18
	muluh	a10, a2, a8
	srli	a10, a10, 3
	call8	vTaskDelay
.LVL145:
	retw.n
.LFE41:
	.size	sys_delay_ms, .-sys_delay_ms
	.section	.rodata.str1.4
	.align	4
.LC20:
	.string	"\033[0;33mW (%d) %s: WARNING: mbox %p had a consumer who never unblocked. Leaking!\n\033[0m\n"
	.section	.text.sys_mbox_free,"ax",@progbits
	.literal_position
	.literal .LC19, .LC4
	.literal .LC21, .LC20
	.align	4
	.global	sys_mbox_free
	.type	sys_mbox_free, @function
sys_mbox_free:
.LFB30:
	.loc 1 371 0
.LVL146:
	entry	sp, 32
.LCFI26:
.LVL147:
	.loc 1 378 0
	l32i.n	a3, a2, 0
	movi.n	a4, 0
	s8i	a4, a3, 8
	.loc 1 375 0
	movi.n	a4, 1
	.loc 1 374 0
	movi.n	a8, 0
	.loc 1 380 0
	j	.L73
.LVL148:
.L78:
	.loc 1 382 0
	l32i.n	a10, a2, 0
	addi.n	a10, a10, 4
	call8	sys_mutex_trylock
.LVL149:
	extui	a10, a10, 0, 8
	bnez.n	a10, .L74
	.loc 1 384 0
	l32i.n	a10, a2, 0
	addi.n	a10, a10, 4
	call8	sys_mutex_unlock
.LVL150:
	.loc 1 385 0
	j	.L75
.L74:
	.loc 1 388 0
	beqz.n	a4, .L76
	.loc 1 390 0
	movi.n	a11, 0
	mov.n	a10, a2
	call8	sys_mbox_trypost
.LVL151:
	extui	a10, a10, 0, 8
	bnez.n	a10, .L76
	.loc 1 394 0
	movi.n	a4, 0
.LVL152:
.L76:
	.loc 1 399 0
	movi	a8, 0x63
	bne	a3, a8, .L77
	.loc 1 400 0 discriminator 4
	call8	esp_log_timestamp
.LVL153:
	l32i.n	a8, a2, 0
	l32r	a11, .LC19
	l32i.n	a15, a8, 0
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC21
	movi.n	a10, 2
	call8	esp_log_write
.LVL154:
.L77:
	.loc 1 402 0
	movi.n	a10, 0x14
	call8	sys_delay_ms
.LVL155:
	.loc 1 380 0
	mov.n	a8, a3
.LVL156:
.L73:
	addi.n	a3, a8, 1
	extui	a3, a3, 0, 16
.LVL157:
	movi	a9, 0x63
	bgeu	a9, a8, .L78
.L75:
	.loc 1 407 0
	l32i.n	a3, a2, 0
.LVL158:
	l32i.n	a10, a3, 0
	call8	uxQueueMessagesWaiting
.LVL159:
	beqz.n	a10, .L79
	.loc 1 408 0
	l32i.n	a3, a2, 0
	movi.n	a11, 0
	l32i.n	a10, a3, 0
	call8	xQueueGenericReset
.LVL160:
	.loc 1 410 0
#APP
# 410 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/port/freertos/sys_arch.c" 1
	nop
# 0 "" 2
#NO_APP
.L79:
	.loc 1 413 0
	l32i.n	a3, a2, 0
	l32i.n	a10, a3, 0
	call8	vQueueDelete
.LVL161:
	.loc 1 414 0
	l32i.n	a10, a2, 0
	addi.n	a10, a10, 4
	call8	sys_mutex_free
.LVL162:
	.loc 1 415 0
	l32i.n	a10, a2, 0
	call8	free
.LVL163:
	.loc 1 416 0
	movi.n	a3, 0
	s32i.n	a3, a2, 0
	retw.n
.LFE30:
	.size	sys_mbox_free, .-sys_mbox_free
	.section	.bss.sys_thread_sem_key,"aw",@nobits
	.align	4
	.type	sys_thread_sem_key, @object
	.size	sys_thread_sem_key, 4
sys_thread_sem_key:
	.zero	4
	.section	.bss.g_lwip_protect_mutex,"aw",@nobits
	.align	4
	.type	g_lwip_protect_mutex, @object
	.size	g_lwip_protect_mutex, 4
g_lwip_protect_mutex:
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
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.byte	0x4
	.4byte	.LCFI0-.LFB38
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI1-.LFB15
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI2-.LFB16
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI3-.LFB17
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI4-.LFB18
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI5-.LFB19
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI6-.LFB20
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI7-.LFB21
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI8-.LFB22
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI9-.LFB23
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI10-.LFB24
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI11-.LFB25
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI12-.LFB26
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI13-.LFB27
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI14-.LFB28
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI15-.LFB29
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI16-.LFB31
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI17-.LFB32
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI18-.LFB33
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE36:
.LSFDE38:
	.4byte	.LEFDE38-.LASFDE38
.LASFDE38:
	.4byte	.Lframe0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI19-.LFB34
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE38:
.LSFDE40:
	.4byte	.LEFDE40-.LASFDE40
.LASFDE40:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x4
	.4byte	.LCFI20-.LFB35
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE40:
.LSFDE42:
	.4byte	.LEFDE42-.LASFDE42
.LASFDE42:
	.4byte	.Lframe0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x4
	.4byte	.LCFI21-.LFB36
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE42:
.LSFDE44:
	.4byte	.LEFDE44-.LASFDE44
.LASFDE44:
	.4byte	.Lframe0
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.byte	0x4
	.4byte	.LCFI22-.LFB39
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE44:
.LSFDE46:
	.4byte	.LEFDE46-.LASFDE46
.LASFDE46:
	.4byte	.Lframe0
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.byte	0x4
	.4byte	.LCFI23-.LFB37
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE46:
.LSFDE48:
	.4byte	.LEFDE48-.LASFDE48
.LASFDE48:
	.4byte	.Lframe0
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.byte	0x4
	.4byte	.LCFI24-.LFB40
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE48:
.LSFDE50:
	.4byte	.LEFDE50-.LASFDE50
.LASFDE50:
	.4byte	.Lframe0
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.byte	0x4
	.4byte	.LCFI25-.LFB41
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE50:
.LSFDE52:
	.4byte	.LEFDE52-.LASFDE52
.LASFDE52:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI26-.LFB30
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE52:
	.text
.Letext0:
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/types.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/projdefs.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/portmacro.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/queue.h"
	.file 9 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/semphr.h"
	.file 10 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/port/arch/sys_arch.h"
	.file 11 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/port/arch/cc.h"
	.file 12 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/err.h"
	.file 13 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/sys.h"
	.file 14 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/memp.h"
	.file 15 "D:/ESP32/esp-idf-v3.1-rc1/components/log/include/esp_log.h"
	.file 16 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdlib.h"
	.file 17 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/pthread.h"
	.file 18 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/port/arch/vfs_lwip.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xf90
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF143
	.byte	0xc
	.4byte	.LASF144
	.4byte	.LASF145
	.4byte	.Ldebug_ranges0+0
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
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x3
	.byte	0x11
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x3
	.byte	0x12
	.4byte	0x50
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x3
	.byte	0x15
	.4byte	0x62
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x3
	.byte	0x16
	.4byte	0x74
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x3
	.byte	0x1a
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF11
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
	.4byte	.LASF16
	.byte	0x4
	.2byte	0x1d9
	.4byte	0x82
	.uleb128 0x7
	.byte	0x4
	.4byte	0xc4
	.uleb128 0x8
	.4byte	0xab
	.uleb128 0x9
	.4byte	0xd4
	.uleb128 0xa
	.4byte	0xa2
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0xc9
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x5
	.byte	0x14
	.4byte	0x33
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x5
	.byte	0x15
	.4byte	0x45
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x5
	.byte	0x20
	.4byte	0x57
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x5
	.byte	0x21
	.4byte	0x69
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x5
	.byte	0x2d
	.4byte	0x82
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x6
	.byte	0x4d
	.4byte	0xd4
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF23
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x7
	.byte	0x6f
	.4byte	0x7b
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x7
	.byte	0x70
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF26
	.byte	0x7
	.byte	0x76
	.4byte	0x106
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x2
	.byte	0x6b
	.4byte	0xa2
	.uleb128 0x8
	.4byte	0xbe
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x8
	.byte	0x58
	.4byte	0xa2
	.uleb128 0x3
	.4byte	.LASF29
	.byte	0x9
	.byte	0x4f
	.4byte	0x154
	.uleb128 0x3
	.4byte	.LASF30
	.byte	0xa
	.byte	0x2f
	.4byte	0x15f
	.uleb128 0x3
	.4byte	.LASF31
	.byte	0xa
	.byte	0x30
	.4byte	0x15f
	.uleb128 0x3
	.4byte	.LASF32
	.byte	0xa
	.byte	0x31
	.4byte	0x144
	.uleb128 0xb
	.4byte	.LASF146
	.byte	0xc
	.byte	0xa
	.byte	0x33
	.4byte	0x1bc
	.uleb128 0xc
	.4byte	.LASF33
	.byte	0xa
	.byte	0x34
	.4byte	0x154
	.byte	0
	.uleb128 0xc
	.4byte	.LASF34
	.byte	0xa
	.byte	0x35
	.4byte	0x175
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF35
	.byte	0xa
	.byte	0x36
	.4byte	0xe5
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF36
	.byte	0xa
	.byte	0x37
	.4byte	0x1c7
	.uleb128 0x7
	.byte	0x4
	.4byte	0x18b
	.uleb128 0x3
	.4byte	.LASF37
	.byte	0xb
	.byte	0x2e
	.4byte	0xe5
	.uleb128 0x3
	.4byte	.LASF38
	.byte	0xb
	.byte	0x2f
	.4byte	0xda
	.uleb128 0x3
	.4byte	.LASF39
	.byte	0xb
	.byte	0x31
	.4byte	0xf0
	.uleb128 0x3
	.4byte	.LASF40
	.byte	0xb
	.byte	0x32
	.4byte	0x106
	.uleb128 0x3
	.4byte	.LASF41
	.byte	0xb
	.byte	0x36
	.4byte	0x7b
	.uleb128 0x3
	.4byte	.LASF42
	.byte	0xc
	.byte	0x2f
	.4byte	0x1d8
	.uleb128 0x3
	.4byte	.LASF43
	.byte	0xd
	.byte	0x5d
	.4byte	0xd4
	.uleb128 0xd
	.byte	0x4
	.4byte	0x2c
	.byte	0xe
	.byte	0x2d
	.4byte	0x299
	.uleb128 0xe
	.4byte	.LASF44
	.byte	0
	.uleb128 0xe
	.4byte	.LASF45
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF46
	.byte	0x2
	.uleb128 0xe
	.4byte	.LASF47
	.byte	0x3
	.uleb128 0xe
	.4byte	.LASF48
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF49
	.byte	0x5
	.uleb128 0xe
	.4byte	.LASF50
	.byte	0x6
	.uleb128 0xe
	.4byte	.LASF51
	.byte	0x7
	.uleb128 0xe
	.4byte	.LASF52
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF53
	.byte	0x9
	.uleb128 0xe
	.4byte	.LASF54
	.byte	0xa
	.uleb128 0xe
	.4byte	.LASF55
	.byte	0xb
	.uleb128 0xe
	.4byte	.LASF56
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF57
	.byte	0xd
	.uleb128 0xe
	.4byte	.LASF58
	.byte	0xe
	.uleb128 0xe
	.4byte	.LASF59
	.byte	0xf
	.uleb128 0xe
	.4byte	.LASF60
	.byte	0x10
	.uleb128 0xe
	.4byte	.LASF61
	.byte	0x11
	.uleb128 0xe
	.4byte	.LASF62
	.byte	0x12
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x2c
	.byte	0xf
	.byte	0x1f
	.4byte	0x2ca
	.uleb128 0xe
	.4byte	.LASF63
	.byte	0
	.uleb128 0xe
	.4byte	.LASF64
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF65
	.byte	0x2
	.uleb128 0xe
	.4byte	.LASF66
	.byte	0x3
	.uleb128 0xe
	.4byte	.LASF67
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF68
	.byte	0x5
	.byte	0
	.uleb128 0xf
	.4byte	.LASF147
	.byte	0x2
	.2byte	0x1ae
	.4byte	0x123
	.byte	0x3
	.4byte	0x324
	.uleb128 0x10
	.4byte	.LASF69
	.byte	0x2
	.2byte	0x1af
	.4byte	0x111
	.uleb128 0x10
	.4byte	.LASF70
	.byte	0x2
	.2byte	0x1b0
	.4byte	0x14f
	.uleb128 0x10
	.4byte	.LASF71
	.byte	0x2
	.2byte	0x1b1
	.4byte	0x324
	.uleb128 0x10
	.4byte	.LASF72
	.byte	0x2
	.2byte	0x1b2
	.4byte	0x329
	.uleb128 0x10
	.4byte	.LASF73
	.byte	0x2
	.2byte	0x1b3
	.4byte	0x12e
	.uleb128 0x10
	.4byte	.LASF74
	.byte	0x2
	.2byte	0x1b4
	.4byte	0x334
	.byte	0
	.uleb128 0x8
	.4byte	0x106
	.uleb128 0x8
	.4byte	0xa2
	.uleb128 0x7
	.byte	0x4
	.4byte	0x144
	.uleb128 0x8
	.4byte	0x32e
	.uleb128 0x11
	.4byte	.LASF148
	.byte	0x1
	.2byte	0x205
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x385
	.uleb128 0x12
	.4byte	.LASF75
	.byte	0x1
	.2byte	0x205
	.4byte	0xa2
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x13
	.string	"sem"
	.byte	0x1
	.2byte	0x207
	.4byte	0x385
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x14
	.4byte	.LVL2
	.4byte	0xeb4
	.uleb128 0x15
	.4byte	.LVL3
	.4byte	0xec0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x16a
	.uleb128 0x17
	.4byte	.LASF78
	.byte	0x1
	.byte	0x3a
	.4byte	0x204
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3d2
	.uleb128 0x18
	.4byte	.LASF76
	.byte	0x1
	.byte	0x3a
	.4byte	0x3d2
	.4byte	.LLST0
	.uleb128 0x19
	.4byte	.LASF77
	.byte	0x1
	.byte	0x3c
	.4byte	0x204
	.4byte	.LLST1
	.uleb128 0x15
	.4byte	.LVL6
	.4byte	0xecb
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x175
	.uleb128 0x1a
	.4byte	.LASF80
	.byte	0x1
	.byte	0x4c
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x415
	.uleb128 0x1b
	.4byte	.LASF76
	.byte	0x1
	.byte	0x4c
	.4byte	0x3d2
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x15
	.4byte	.LVL11
	.4byte	0xed7
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LASF79
	.byte	0x1
	.byte	0x52
	.4byte	0x204
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x457
	.uleb128 0x18
	.4byte	.LASF76
	.byte	0x1
	.byte	0x52
	.4byte	0x3d2
	.4byte	.LLST2
	.uleb128 0x15
	.4byte	.LVL13
	.4byte	0xed7
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF81
	.byte	0x1
	.byte	0x5b
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x493
	.uleb128 0x1b
	.4byte	.LASF76
	.byte	0x1
	.byte	0x5b
	.4byte	0x3d2
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x15
	.4byte	.LVL18
	.4byte	0xee3
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF82
	.byte	0x1
	.byte	0x63
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4bf
	.uleb128 0x1b
	.4byte	.LASF76
	.byte	0x1
	.byte	0x63
	.4byte	0x3d2
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x14
	.4byte	.LVL20
	.4byte	0xeb4
	.byte	0
	.uleb128 0x17
	.4byte	.LASF83
	.byte	0x1
	.byte	0x6e
	.4byte	0x204
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x557
	.uleb128 0x1c
	.string	"sem"
	.byte	0x1
	.byte	0x6e
	.4byte	0x385
	.4byte	.LLST3
	.uleb128 0x1b
	.4byte	.LASF84
	.byte	0x1
	.byte	0x6e
	.4byte	0x1cd
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x19
	.4byte	.LASF77
	.byte	0x1
	.byte	0x70
	.4byte	0x204
	.4byte	.LLST4
	.uleb128 0x1d
	.4byte	.LVL23
	.4byte	0xeef
	.4byte	0x520
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL24
	.4byte	0xee3
	.4byte	0x53d
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x15
	.4byte	.LVL25
	.4byte	0xed7
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF85
	.byte	0x1
	.byte	0x83
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x593
	.uleb128 0x1e
	.string	"sem"
	.byte	0x1
	.byte	0x83
	.4byte	0x385
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x15
	.4byte	.LVL32
	.4byte	0xee3
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LASF86
	.byte	0x1
	.byte	0x8a
	.4byte	0x7b
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5da
	.uleb128 0x1c
	.string	"sem"
	.byte	0x1
	.byte	0x8a
	.4byte	0x385
	.4byte	.LLST5
	.uleb128 0x1f
	.4byte	.LASF87
	.byte	0x1
	.byte	0x8c
	.4byte	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x15
	.4byte	.LVL34
	.4byte	0xefb
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LASF88
	.byte	0x1
	.byte	0xa2
	.4byte	0x1ee
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6b8
	.uleb128 0x1c
	.string	"sem"
	.byte	0x1
	.byte	0xa2
	.4byte	0x385
	.4byte	.LLST6
	.uleb128 0x1b
	.4byte	.LASF89
	.byte	0x1
	.byte	0xa2
	.4byte	0x1ee
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1f
	.4byte	.LASF90
	.byte	0x1
	.byte	0xa4
	.4byte	0x139
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x19
	.4byte	.LASF91
	.byte	0x1
	.byte	0xa4
	.4byte	0x139
	.4byte	.LLST7
	.uleb128 0x19
	.4byte	.LASF92
	.byte	0x1
	.byte	0xa4
	.4byte	0x139
	.4byte	.LLST8
	.uleb128 0x1f
	.4byte	.LASF93
	.byte	0x1
	.byte	0xa5
	.4byte	0xa4
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x14
	.4byte	.LVL37
	.4byte	0xf07
	.uleb128 0x1d
	.4byte	.LVL39
	.4byte	0xed7
	.4byte	0x687
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1b
	.byte	0x73
	.sleb128 0
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0x25
	.byte	0xf4
	.uleb128 0x25
	.byte	0x8
	.8byte	0xcccccccd
	.byte	0x1e
	.byte	0x8
	.byte	0x20
	.byte	0xf7
	.uleb128 0x25
	.byte	0x25
	.byte	0xf7
	.uleb128 0x2c
	.byte	0x33
	.byte	0x25
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x14
	.4byte	.LVL40
	.4byte	0xf07
	.uleb128 0x1d
	.4byte	.LVL44
	.4byte	0xed7
	.4byte	0x6ae
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x14
	.4byte	.LVL45
	.4byte	0xf07
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF94
	.byte	0x1
	.byte	0xc9
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6e4
	.uleb128 0x1e
	.string	"sem"
	.byte	0x1
	.byte	0xc9
	.4byte	0x385
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x14
	.4byte	.LVL55
	.4byte	0xeb4
	.byte	0
	.uleb128 0x17
	.4byte	.LASF95
	.byte	0x1
	.byte	0xd1
	.4byte	0x204
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x771
	.uleb128 0x18
	.4byte	.LASF96
	.byte	0x1
	.byte	0xd1
	.4byte	0x771
	.4byte	.LLST9
	.uleb128 0x18
	.4byte	.LASF97
	.byte	0x1
	.byte	0xd1
	.4byte	0x7b
	.4byte	.LLST10
	.uleb128 0x1d
	.4byte	.LVL57
	.4byte	0xf13
	.4byte	0x72e
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x3c
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL58
	.4byte	0xeef
	.4byte	0x74c
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x14
	.4byte	.LVL60
	.4byte	0xec0
	.uleb128 0x14
	.4byte	.LVL61
	.4byte	0x38b
	.uleb128 0x14
	.4byte	.LVL62
	.4byte	0xeb4
	.uleb128 0x14
	.4byte	.LVL63
	.4byte	0xec0
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x1bc
	.uleb128 0x1a
	.4byte	.LASF98
	.byte	0x1
	.byte	0xf1
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7c4
	.uleb128 0x1b
	.4byte	.LASF96
	.byte	0x1
	.byte	0xf1
	.4byte	0x771
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1c
	.string	"msg"
	.byte	0x1
	.byte	0xf1
	.4byte	0xa2
	.4byte	.LLST11
	.uleb128 0x15
	.4byte	.LVL70
	.4byte	0xee3
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LASF99
	.byte	0x1
	.byte	0xf8
	.4byte	0x204
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x821
	.uleb128 0x18
	.4byte	.LASF96
	.byte	0x1
	.byte	0xf8
	.4byte	0x771
	.4byte	.LLST12
	.uleb128 0x1e
	.string	"msg"
	.byte	0x1
	.byte	0xf8
	.4byte	0xa2
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1f
	.4byte	.LASF77
	.byte	0x1
	.byte	0xfa
	.4byte	0x204
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x15
	.4byte	.LVL72
	.4byte	0xee3
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LASF100
	.byte	0x1
	.2byte	0x117
	.4byte	0x1ee
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x93f
	.uleb128 0x21
	.4byte	.LASF96
	.byte	0x1
	.2byte	0x117
	.4byte	0x771
	.4byte	.LLST13
	.uleb128 0x22
	.string	"msg"
	.byte	0x1
	.2byte	0x117
	.4byte	0x93f
	.4byte	.LLST14
	.uleb128 0x21
	.4byte	.LASF89
	.byte	0x1
	.2byte	0x117
	.4byte	0x1ee
	.4byte	.LLST15
	.uleb128 0x23
	.4byte	.LASF101
	.byte	0x1
	.2byte	0x119
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.4byte	.LASF90
	.byte	0x1
	.2byte	0x11a
	.4byte	0x139
	.4byte	.LLST16
	.uleb128 0x24
	.4byte	.LASF91
	.byte	0x1
	.2byte	0x11a
	.4byte	0x139
	.4byte	.LLST17
	.uleb128 0x24
	.4byte	.LASF92
	.byte	0x1
	.2byte	0x11a
	.4byte	0x139
	.4byte	.LLST18
	.uleb128 0x24
	.4byte	.LASF93
	.byte	0x1
	.2byte	0x11b
	.4byte	0xa4
	.4byte	.LLST19
	.uleb128 0x14
	.4byte	.LVL77
	.4byte	0xf07
	.uleb128 0x14
	.4byte	.LVL82
	.4byte	0x3d8
	.uleb128 0x1d
	.4byte	.LVL83
	.4byte	0xed7
	.4byte	0x904
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1b
	.byte	0x74
	.sleb128 0
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0x25
	.byte	0xf4
	.uleb128 0x25
	.byte	0x8
	.8byte	0xcccccccd
	.byte	0x1e
	.byte	0x8
	.byte	0x20
	.byte	0xf7
	.uleb128 0x25
	.byte	0x25
	.byte	0xf7
	.uleb128 0x2c
	.byte	0x33
	.byte	0x25
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x14
	.4byte	.LVL84
	.4byte	0xf07
	.uleb128 0x1d
	.4byte	.LVL94
	.4byte	0xed7
	.4byte	0x92c
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x14
	.4byte	.LVL96
	.4byte	0xf07
	.uleb128 0x14
	.4byte	.LVL103
	.4byte	0x457
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0xa2
	.uleb128 0x20
	.4byte	.LASF102
	.byte	0x1
	.2byte	0x159
	.4byte	0x1ee
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9b1
	.uleb128 0x21
	.4byte	.LASF96
	.byte	0x1
	.2byte	0x159
	.4byte	0x771
	.4byte	.LLST20
	.uleb128 0x22
	.string	"msg"
	.byte	0x1
	.2byte	0x159
	.4byte	0x93f
	.4byte	.LLST21
	.uleb128 0x23
	.4byte	.LASF103
	.byte	0x1
	.2byte	0x15b
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x23
	.4byte	.LASF93
	.byte	0x1
	.2byte	0x15c
	.4byte	0xa4
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x15
	.4byte	.LVL107
	.4byte	0xed7
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LASF104
	.byte	0x1
	.2byte	0x1ab
	.4byte	0x180
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xaa6
	.uleb128 0x21
	.4byte	.LASF105
	.byte	0x1
	.2byte	0x1ab
	.4byte	0xbe
	.4byte	.LLST22
	.uleb128 0x12
	.4byte	.LASF106
	.byte	0x1
	.2byte	0x1ab
	.4byte	0x20f
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x25
	.string	"arg"
	.byte	0x1
	.2byte	0x1ab
	.4byte	0xa2
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x12
	.4byte	.LASF107
	.byte	0x1
	.2byte	0x1ab
	.4byte	0x7b
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x12
	.4byte	.LASF108
	.byte	0x1
	.2byte	0x1ab
	.4byte	0x7b
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x23
	.4byte	.LASF109
	.byte	0x1
	.2byte	0x1ad
	.4byte	0x144
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.4byte	.LASF149
	.byte	0x1
	.2byte	0x1ae
	.4byte	0x7b
	.uleb128 0x27
	.4byte	0x2ca
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.byte	0x1
	.2byte	0x1b0
	.uleb128 0x28
	.4byte	0x317
	.4byte	.LLST23
	.uleb128 0x29
	.4byte	0x30b
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x29
	.4byte	0x2ff
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x29
	.4byte	0x2f3
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x28
	.4byte	0x2e7
	.4byte	.LLST24
	.uleb128 0x29
	.4byte	0x2db
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x15
	.4byte	.LVL114
	.4byte	0xf1e
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x16
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x5
	.byte	0xc
	.4byte	0x7fffffff
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF110
	.byte	0x1
	.2byte	0x1bc
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb34
	.uleb128 0x1d
	.4byte	.LVL118
	.4byte	0x38b
	.4byte	0xad3
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	g_lwip_protect_mutex
	.byte	0
	.uleb128 0x14
	.4byte	.LVL119
	.4byte	0xf2a
	.uleb128 0x1d
	.4byte	.LVL120
	.4byte	0xf35
	.4byte	0xb0a
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL121
	.4byte	0xf40
	.4byte	0xb2a
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	sys_thread_sem_key
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	sys_thread_sem_free
	.byte	0
	.uleb128 0x14
	.4byte	.LVL122
	.4byte	0xf4c
	.byte	0
	.uleb128 0x20
	.4byte	.LASF111
	.byte	0x1
	.2byte	0x1ca
	.4byte	0x1ee
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb58
	.uleb128 0x14
	.4byte	.LVL123
	.4byte	0xf07
	.byte	0
	.uleb128 0x20
	.4byte	.LASF112
	.byte	0x1
	.2byte	0x1d1
	.4byte	0x1ee
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb7c
	.uleb128 0x14
	.4byte	.LVL124
	.4byte	0xf07
	.byte	0
	.uleb128 0x20
	.4byte	.LASF113
	.byte	0x1
	.2byte	0x1e4
	.4byte	0x1f9
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbaa
	.uleb128 0x15
	.4byte	.LVL125
	.4byte	0x3d8
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	g_lwip_protect_mutex
	.byte	0
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF114
	.byte	0x1
	.2byte	0x1f2
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbe2
	.uleb128 0x12
	.4byte	.LASF115
	.byte	0x1
	.2byte	0x1f2
	.4byte	0x1f9
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x15
	.4byte	.LVL127
	.4byte	0x457
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	g_lwip_protect_mutex
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LASF116
	.byte	0x1
	.2byte	0x214
	.4byte	0x385
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xccf
	.uleb128 0x2b
	.string	"sem"
	.byte	0x1
	.2byte	0x216
	.4byte	0x385
	.4byte	.LLST25
	.uleb128 0x1d
	.4byte	.LVL128
	.4byte	0xf13
	.4byte	0xc1f
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.uleb128 0x14
	.4byte	.LVL130
	.4byte	0xf2a
	.uleb128 0x1d
	.4byte	.LVL131
	.4byte	0xf35
	.4byte	0xc56
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC13
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL132
	.4byte	0xeef
	.4byte	0xc73
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL133
	.4byte	0xec0
	.4byte	0xc87
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.4byte	.LVL134
	.4byte	0xf2a
	.uleb128 0x1d
	.4byte	.LVL135
	.4byte	0xf35
	.4byte	0xcbe
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC13
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.uleb128 0x15
	.4byte	.LVL138
	.4byte	0xf57
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LASF117
	.byte	0x1
	.2byte	0x1fa
	.4byte	0x385
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd0c
	.uleb128 0x2b
	.string	"sem"
	.byte	0x1
	.2byte	0x1fc
	.4byte	0x385
	.4byte	.LLST26
	.uleb128 0x14
	.4byte	.LVL139
	.4byte	0xf63
	.uleb128 0x14
	.4byte	.LVL140
	.4byte	0xbe2
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF118
	.byte	0x1
	.2byte	0x228
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd54
	.uleb128 0x2b
	.string	"sem"
	.byte	0x1
	.2byte	0x22a
	.4byte	0x385
	.4byte	.LLST27
	.uleb128 0x14
	.4byte	.LVL141
	.4byte	0xf63
	.uleb128 0x14
	.4byte	.LVL142
	.4byte	0x339
	.uleb128 0x15
	.4byte	.LVL143
	.4byte	0xf57
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF119
	.byte	0x1
	.2byte	0x231
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xda1
	.uleb128 0x25
	.string	"ms"
	.byte	0x1
	.2byte	0x231
	.4byte	0x106
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x15
	.4byte	.LVL145
	.4byte	0xf6f
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1b
	.byte	0x72
	.sleb128 0
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0x25
	.byte	0xf4
	.uleb128 0x25
	.byte	0x8
	.8byte	0xcccccccd
	.byte	0x1e
	.byte	0x8
	.byte	0x20
	.byte	0xf7
	.uleb128 0x25
	.byte	0x25
	.byte	0xf7
	.uleb128 0x2c
	.byte	0x33
	.byte	0x25
	.byte	0
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF120
	.byte	0x1
	.2byte	0x172
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe92
	.uleb128 0x12
	.4byte	.LASF96
	.byte	0x1
	.2byte	0x172
	.4byte	0x771
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x24
	.4byte	.LASF84
	.byte	0x1
	.2byte	0x176
	.4byte	0xfb
	.4byte	.LLST28
	.uleb128 0x24
	.4byte	.LASF121
	.byte	0x1
	.2byte	0x177
	.4byte	0x11c
	.4byte	.LLST29
	.uleb128 0x14
	.4byte	.LVL149
	.4byte	0x415
	.uleb128 0x14
	.4byte	.LVL150
	.4byte	0x457
	.uleb128 0x1d
	.4byte	.LVL151
	.4byte	0x7c4
	.4byte	0xe10
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x14
	.4byte	.LVL153
	.4byte	0xf2a
	.uleb128 0x1d
	.4byte	.LVL154
	.4byte	0xf35
	.4byte	0xe47
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC20
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL155
	.4byte	0xd54
	.4byte	0xe5a
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x44
	.byte	0
	.uleb128 0x14
	.4byte	.LVL159
	.4byte	0xf7b
	.uleb128 0x1d
	.4byte	.LVL160
	.4byte	0xf87
	.4byte	0xe76
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x14
	.4byte	.LVL161
	.4byte	0xeb4
	.uleb128 0x14
	.4byte	.LVL162
	.4byte	0x493
	.uleb128 0x14
	.4byte	.LVL163
	.4byte	0xec0
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF122
	.byte	0x1
	.byte	0x30
	.4byte	0x175
	.uleb128 0x5
	.byte	0x3
	.4byte	g_lwip_protect_mutex
	.uleb128 0x1f
	.4byte	.LASF123
	.byte	0x1
	.byte	0x32
	.4byte	0xb2
	.uleb128 0x5
	.byte	0x3
	.4byte	sys_thread_sem_key
	.uleb128 0x2c
	.4byte	.LASF124
	.4byte	.LASF124
	.byte	0x8
	.2byte	0x3ac
	.uleb128 0x2d
	.4byte	.LASF125
	.4byte	.LASF125
	.byte	0x10
	.byte	0x5a
	.uleb128 0x2c
	.4byte	.LASF126
	.4byte	.LASF126
	.byte	0x8
	.2byte	0x578
	.uleb128 0x2c
	.4byte	.LASF127
	.4byte	.LASF127
	.byte	0x8
	.2byte	0x38a
	.uleb128 0x2c
	.4byte	.LASF128
	.4byte	.LASF128
	.byte	0x8
	.2byte	0x265
	.uleb128 0x2c
	.4byte	.LASF129
	.4byte	.LASF129
	.byte	0x8
	.2byte	0x5d0
	.uleb128 0x2c
	.4byte	.LASF130
	.4byte	.LASF130
	.byte	0x8
	.2byte	0x4f4
	.uleb128 0x2c
	.4byte	.LASF131
	.4byte	.LASF131
	.byte	0x2
	.2byte	0x50d
	.uleb128 0x2d
	.4byte	.LASF132
	.4byte	.LASF132
	.byte	0x10
	.byte	0x65
	.uleb128 0x2c
	.4byte	.LASF133
	.4byte	.LASF133
	.byte	0x2
	.2byte	0x14d
	.uleb128 0x2d
	.4byte	.LASF134
	.4byte	.LASF134
	.byte	0xf
	.byte	0x57
	.uleb128 0x2d
	.4byte	.LASF135
	.4byte	.LASF135
	.byte	0xf
	.byte	0x6b
	.uleb128 0x2c
	.4byte	.LASF136
	.4byte	.LASF136
	.byte	0x11
	.2byte	0x119
	.uleb128 0x2d
	.4byte	.LASF137
	.4byte	.LASF137
	.byte	0x12
	.byte	0x13
	.uleb128 0x2c
	.4byte	.LASF138
	.4byte	.LASF138
	.byte	0x11
	.2byte	0x11e
	.uleb128 0x2c
	.4byte	.LASF139
	.4byte	.LASF139
	.byte	0x11
	.2byte	0x120
	.uleb128 0x2c
	.4byte	.LASF140
	.4byte	.LASF140
	.byte	0x2
	.2byte	0x32e
	.uleb128 0x2c
	.4byte	.LASF141
	.4byte	.LASF141
	.byte	0x8
	.2byte	0x395
	.uleb128 0x2c
	.4byte	.LASF142
	.4byte	.LASF142
	.byte	0x8
	.2byte	0x665
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
	.uleb128 0x16
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
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xe
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x5
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
	.uleb128 0x10
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
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
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
	.uleb128 0x18
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
	.uleb128 0x17
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
	.uleb128 0x1f
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL4
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
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL5
	.4byte	.LVL9
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LFE15
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST2:
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
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL16
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL21
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
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL22
	.4byte	.LVL30
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LFE20
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL33
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL35
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL36
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
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL49
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x5
	.byte	0x7a
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL53
	.4byte	.LFE23
	.2byte	0x5
	.byte	0x7a
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL56
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
	.4byte	.LFE25
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL56
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL59
	.4byte	.LVL65
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL65
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL66
	.4byte	.LFE25
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL67
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL69
	.4byte	.LVL70-1
	.2byte	0x2
	.byte	0x7b
	.sleb128 0
	.4byte	.LVL70-1
	.4byte	.LFE26
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL71
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL73
	.4byte	.LVL74
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL74
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL75
	.4byte	.LFE27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL76
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
	.4byte	.LVL104
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL104
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL76
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL79
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL89
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL93
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL76
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL90
	.4byte	.LVL93
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL93
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL95
	.4byte	.LVL99
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL99
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL101
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL78
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL89
	.4byte	.LVL99
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL101
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL84
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL96
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL88
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL98
	.4byte	.LVL100
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL100
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL101
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL91
	.4byte	.LVL93
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL102
	.4byte	.LFE28
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL105
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
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL105
	.4byte	.LVL106
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL106
	.4byte	.LVL107-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL111
	.4byte	.LVL115
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL115
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
	.4byte	.LFE31
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL112
	.4byte	.LVL113
	.2byte	0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x9f
	.4byte	.LVL113
	.4byte	.LVL114-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL114-1
	.4byte	.LFE31
	.2byte	0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL112
	.4byte	.LVL115
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL115
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
	.4byte	.LFE31
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL129
	.4byte	.LVL136
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL137
	.4byte	.LFE39
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL139
	.4byte	.LVL140-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL140
	.4byte	.LFE37
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL141
	.4byte	.LVL142-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL147
	.4byte	.LVL148
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL148
	.4byte	.LVL156
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL156
	.4byte	.LVL157
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL157
	.4byte	.LVL158
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL147
	.4byte	.LVL148
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL148
	.4byte	.LFE30
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0xec
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
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
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LFB18
	.4byte	.LFE18
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
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	.LFB36
	.4byte	.LFE36
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	.LFB37
	.4byte	.LFE37
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	.LFB41
	.4byte	.LFE41
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF84:
	.string	"count"
.LASF132:
	.string	"malloc"
.LASF45:
	.string	"MEMP_UDP_PCB"
.LASF55:
	.string	"MEMP_SYS_TIMEOUT"
.LASF141:
	.string	"uxQueueMessagesWaiting"
.LASF123:
	.string	"sys_thread_sem_key"
.LASF56:
	.string	"MEMP_NETDB"
.LASF100:
	.string	"sys_arch_mbox_fetch"
.LASF35:
	.string	"alive"
.LASF4:
	.string	"__uint8_t"
.LASF31:
	.string	"sys_mutex_t"
.LASF94:
	.string	"sys_sem_free"
.LASF0:
	.string	"long long unsigned int"
.LASF146:
	.string	"sys_mbox_s"
.LASF36:
	.string	"sys_mbox_t"
.LASF61:
	.string	"MEMP_PBUF_POOL"
.LASF48:
	.string	"MEMP_TCP_SEG"
.LASF28:
	.string	"QueueHandle_t"
.LASF110:
	.string	"sys_init"
.LASF125:
	.string	"free"
.LASF127:
	.string	"xQueueGenericReceive"
.LASF112:
	.string	"sys_now"
.LASF30:
	.string	"sys_sem_t"
.LASF67:
	.string	"ESP_LOG_DEBUG"
.LASF11:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF113:
	.string	"sys_arch_protect"
.LASF140:
	.string	"vTaskDelay"
.LASF90:
	.string	"StartTime"
.LASF58:
	.string	"MEMP_IP6_REASSDATA"
.LASF133:
	.string	"xTaskCreatePinnedToCore"
.LASF12:
	.string	"long int"
.LASF82:
	.string	"sys_mutex_free"
.LASF44:
	.string	"MEMP_RAW_PCB"
.LASF114:
	.string	"sys_arch_unprotect"
.LASF135:
	.string	"esp_log_write"
.LASF27:
	.string	"TaskHandle_t"
.LASF26:
	.string	"TickType_t"
.LASF69:
	.string	"pvTaskCode"
.LASF20:
	.string	"uint16_t"
.LASF136:
	.string	"pthread_key_create"
.LASF24:
	.string	"BaseType_t"
.LASF107:
	.string	"stacksize"
.LASF88:
	.string	"sys_arch_sem_wait"
.LASF78:
	.string	"sys_mutex_new"
.LASF71:
	.string	"usStackDepth"
.LASF10:
	.string	"__uint32_t"
.LASF144:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/lwip/port/freertos/sys_arch.c"
.LASF6:
	.string	"__int16_t"
.LASF39:
	.string	"s16_t"
.LASF92:
	.string	"Elapsed"
.LASF81:
	.string	"sys_mutex_unlock"
.LASF1:
	.string	"unsigned int"
.LASF37:
	.string	"u8_t"
.LASF77:
	.string	"xReturn"
.LASF54:
	.string	"MEMP_IGMP_GROUP"
.LASF116:
	.string	"sys_thread_sem_init"
.LASF104:
	.string	"sys_thread_new"
.LASF14:
	.string	"long unsigned int"
.LASF138:
	.string	"pthread_setspecific"
.LASF40:
	.string	"u32_t"
.LASF89:
	.string	"timeout"
.LASF72:
	.string	"pvParameters"
.LASF105:
	.string	"name"
.LASF46:
	.string	"MEMP_TCP_PCB"
.LASF128:
	.string	"xQueueGenericSend"
.LASF75:
	.string	"data"
.LASF148:
	.string	"sys_thread_sem_free"
.LASF97:
	.string	"size"
.LASF9:
	.string	"short unsigned int"
.LASF145:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\lwip"
.LASF52:
	.string	"MEMP_TCPIP_MSG_INPKT"
.LASF126:
	.string	"xQueueCreateMutex"
.LASF120:
	.string	"sys_mbox_free"
.LASF131:
	.string	"xTaskGetTickCount"
.LASF111:
	.string	"sys_jiffies"
.LASF7:
	.string	"short int"
.LASF76:
	.string	"pxMutex"
.LASF121:
	.string	"post_null"
.LASF99:
	.string	"sys_mbox_trypost"
.LASF66:
	.string	"ESP_LOG_INFO"
.LASF62:
	.string	"MEMP_MAX"
.LASF87:
	.string	"woken"
.LASF42:
	.string	"err_t"
.LASF13:
	.string	"sizetype"
.LASF43:
	.string	"lwip_thread_fn"
.LASF134:
	.string	"esp_log_timestamp"
.LASF147:
	.string	"xTaskCreate"
.LASF59:
	.string	"MEMP_MLD6_GROUP"
.LASF124:
	.string	"vQueueDelete"
.LASF139:
	.string	"pthread_getspecific"
.LASF41:
	.string	"sys_prot_t"
.LASF108:
	.string	"prio"
.LASF96:
	.string	"mbox"
.LASF137:
	.string	"esp_vfs_lwip_sockets_register"
.LASF86:
	.string	"sys_sem_signal_isr"
.LASF74:
	.string	"pvCreatedTask"
.LASF118:
	.string	"sys_thread_sem_deinit"
.LASF106:
	.string	"thread"
.LASF23:
	.string	"_Bool"
.LASF3:
	.string	"__int8_t"
.LASF5:
	.string	"unsigned char"
.LASF143:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF122:
	.string	"g_lwip_protect_mutex"
.LASF119:
	.string	"sys_delay_ms"
.LASF130:
	.string	"xQueueGiveFromISR"
.LASF64:
	.string	"ESP_LOG_ERROR"
.LASF91:
	.string	"EndTime"
.LASF129:
	.string	"xQueueGenericCreate"
.LASF57:
	.string	"MEMP_ND6_QUEUE"
.LASF38:
	.string	"s8_t"
.LASF32:
	.string	"sys_thread_t"
.LASF85:
	.string	"sys_sem_signal"
.LASF98:
	.string	"sys_mbox_post"
.LASF117:
	.string	"sys_thread_sem_get"
.LASF51:
	.string	"MEMP_TCPIP_MSG_API"
.LASF142:
	.string	"xQueueGenericReset"
.LASF29:
	.string	"SemaphoreHandle_t"
.LASF15:
	.string	"char"
.LASF68:
	.string	"ESP_LOG_VERBOSE"
.LASF49:
	.string	"MEMP_NETBUF"
.LASF8:
	.string	"__uint16_t"
.LASF47:
	.string	"MEMP_TCP_PCB_LISTEN"
.LASF101:
	.string	"dummyptr"
.LASF63:
	.string	"ESP_LOG_NONE"
.LASF115:
	.string	"pval"
.LASF16:
	.string	"pthread_key_t"
.LASF53:
	.string	"MEMP_ARP_QUEUE"
.LASF33:
	.string	"os_mbox"
.LASF19:
	.string	"int16_t"
.LASF80:
	.string	"sys_mutex_lock"
.LASF17:
	.string	"int8_t"
.LASF21:
	.string	"uint32_t"
.LASF83:
	.string	"sys_sem_new"
.LASF65:
	.string	"ESP_LOG_WARN"
.LASF102:
	.string	"sys_arch_mbox_tryfetch"
.LASF103:
	.string	"pvDummy"
.LASF50:
	.string	"MEMP_NETCONN"
.LASF18:
	.string	"uint8_t"
.LASF95:
	.string	"sys_mbox_new"
.LASF93:
	.string	"ulReturn"
.LASF73:
	.string	"uxPriority"
.LASF22:
	.string	"TaskFunction_t"
.LASF70:
	.string	"pcName"
.LASF34:
	.string	"lock"
.LASF109:
	.string	"CreatedTask"
.LASF25:
	.string	"UBaseType_t"
.LASF60:
	.string	"MEMP_PBUF"
.LASF149:
	.string	"result"
.LASF79:
	.string	"sys_mutex_trylock"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
