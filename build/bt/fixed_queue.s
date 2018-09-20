	.file	"fixed_queue.c"
	.text
.Ltext0:
	.section	.text.fixed_queue_is_empty,"ax",@progbits
	.align	4
	.global	fixed_queue_is_empty
	.type	fixed_queue_is_empty, @function
fixed_queue_is_empty:
.LFB28:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/osi/fixed_queue.c"
	.loc 1 97 0
.LVL0:
	entry	sp, 32
.LCFI0:
.LVL1:
	.loc 1 100 0
	beqz.n	a2, .L3
	.loc 1 104 0
	addi.n	a3, a2, 12
	movi.n	a11, -1
	mov.n	a10, a3
	call8	osi_mutex_lock
.LVL2:
	.loc 1 105 0
	l32i.n	a10, a2, 0
	call8	list_is_empty
.LVL3:
	mov.n	a2, a10
.LVL4:
	.loc 1 106 0
	mov.n	a10, a3
	call8	osi_mutex_unlock
.LVL5:
	.loc 1 108 0
	retw.n
.LVL6:
.L3:
	.loc 1 101 0
	movi.n	a2, 1
.LVL7:
	.loc 1 109 0
	retw.n
.LFE28:
	.size	fixed_queue_is_empty, .-fixed_queue_is_empty
	.section	.text.fixed_queue_length,"ax",@progbits
	.align	4
	.global	fixed_queue_length
	.type	fixed_queue_length, @function
fixed_queue_length:
.LFB29:
	.loc 1 112 0
.LVL8:
	entry	sp, 32
.LCFI1:
	.loc 1 115 0
	beqz.n	a2, .L6
	.loc 1 119 0
	addi.n	a3, a2, 12
	movi.n	a11, -1
	mov.n	a10, a3
	call8	osi_mutex_lock
.LVL9:
	.loc 1 120 0
	l32i.n	a10, a2, 0
	call8	list_length
.LVL10:
	mov.n	a2, a10
.LVL11:
	.loc 1 121 0
	mov.n	a10, a3
	call8	osi_mutex_unlock
.LVL12:
	.loc 1 123 0
	retw.n
.LVL13:
.L6:
	.loc 1 116 0
	movi.n	a2, 0
.LVL14:
	.loc 1 124 0
	retw.n
.LFE29:
	.size	fixed_queue_length, .-fixed_queue_length
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC0:
	.string	"queue != NULL"
	.align	4
.LC3:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/osi/fixed_queue.c"
	.section	.text.fixed_queue_capacity,"ax",@progbits
	.literal_position
	.literal .LC1, .LC0
	.literal .LC2, __func__$5532
	.literal .LC4, .LC3
	.align	4
	.global	fixed_queue_capacity
	.type	fixed_queue_capacity, @function
fixed_queue_capacity:
.LFB30:
	.loc 1 126 0
.LVL15:
	entry	sp, 32
.LCFI2:
	.loc 1 127 0
	bnez.n	a2, .L8
	.loc 1 127 0 is_stmt 0 discriminator 1
	l32r	a13, .LC1
	l32r	a12, .LC2
	movi	a11, 0x7f
	l32r	a10, .LC4
	call8	__assert_func
.LVL16:
.L8:
	.loc 1 130 0 is_stmt 1
	l32i.n	a2, a2, 16
.LVL17:
	retw.n
.LFE30:
	.size	fixed_queue_capacity, .-fixed_queue_capacity
	.section	.rodata.str1.4
	.align	4
.LC8:
	.string	"data != NULL"
	.section	.text.fixed_queue_enqueue,"ax",@progbits
	.literal_position
	.literal .LC5, .LC0
	.literal .LC6, __func__$5537
	.literal .LC7, .LC3
	.literal .LC9, .LC8
	.align	4
	.global	fixed_queue_enqueue
	.type	fixed_queue_enqueue, @function
fixed_queue_enqueue:
.LFB31:
	.loc 1 133 0
.LVL18:
	entry	sp, 32
.LCFI3:
	.loc 1 134 0
	bnez.n	a2, .L10
	.loc 1 134 0 is_stmt 0 discriminator 1
	l32r	a13, .LC5
	l32r	a12, .LC6
	movi	a11, 0x86
	l32r	a10, .LC7
	call8	__assert_func
.LVL19:
.L10:
	.loc 1 135 0 is_stmt 1
	bnez.n	a3, .L11
	.loc 1 135 0 is_stmt 0 discriminator 1
	l32r	a13, .LC9
	l32r	a12, .LC6
	movi	a11, 0x87
	l32r	a10, .LC7
	call8	__assert_func
.LVL20:
.L11:
	.loc 1 137 0 is_stmt 1
	movi.n	a11, -1
	addi.n	a10, a2, 4
	call8	osi_sem_take
.LVL21:
	.loc 1 139 0
	addi.n	a4, a2, 12
	movi.n	a11, -1
	mov.n	a10, a4
	call8	osi_mutex_lock
.LVL22:
	.loc 1 141 0
	mov.n	a11, a3
	l32i.n	a10, a2, 0
	call8	list_append
.LVL23:
	.loc 1 142 0
	mov.n	a10, a4
	call8	osi_mutex_unlock
.LVL24:
	.loc 1 144 0
	addi.n	a10, a2, 8
	call8	osi_sem_give
.LVL25:
	retw.n
.LFE31:
	.size	fixed_queue_enqueue, .-fixed_queue_enqueue
	.section	.text.fixed_queue_dequeue,"ax",@progbits
	.literal_position
	.literal .LC10, .LC0
	.literal .LC11, __func__$5542
	.literal .LC12, .LC3
	.align	4
	.global	fixed_queue_dequeue
	.type	fixed_queue_dequeue, @function
fixed_queue_dequeue:
.LFB32:
	.loc 1 148 0
.LVL26:
	entry	sp, 32
.LCFI4:
.LVL27:
	.loc 1 151 0
	bnez.n	a2, .L13
	.loc 1 151 0 is_stmt 0 discriminator 1
	l32r	a13, .LC10
	l32r	a12, .LC11
	movi	a11, 0x97
	l32r	a10, .LC12
	call8	__assert_func
.LVL28:
.L13:
	.loc 1 153 0 is_stmt 1
	movi.n	a11, -1
	addi.n	a10, a2, 8
	call8	osi_sem_take
.LVL29:
	.loc 1 155 0
	addi.n	a4, a2, 12
	movi.n	a11, -1
	mov.n	a10, a4
	call8	osi_mutex_lock
.LVL30:
	.loc 1 156 0
	l32i.n	a10, a2, 0
	call8	list_front
.LVL31:
	mov.n	a3, a10
.LVL32:
	.loc 1 157 0
	mov.n	a11, a10
	l32i.n	a10, a2, 0
	call8	list_remove
.LVL33:
	.loc 1 158 0
	mov.n	a10, a4
	call8	osi_mutex_unlock
.LVL34:
	.loc 1 160 0
	addi.n	a10, a2, 4
	call8	osi_sem_give
.LVL35:
	.loc 1 163 0
	mov.n	a2, a3
.LVL36:
	retw.n
.LFE32:
	.size	fixed_queue_dequeue, .-fixed_queue_dequeue
	.section	.text.fixed_queue_try_enqueue,"ax",@progbits
	.literal_position
	.literal .LC13, .LC0
	.literal .LC14, __func__$5547
	.literal .LC15, .LC3
	.literal .LC16, .LC8
	.align	4
	.global	fixed_queue_try_enqueue
	.type	fixed_queue_try_enqueue, @function
fixed_queue_try_enqueue:
.LFB33:
	.loc 1 166 0
.LVL37:
	entry	sp, 32
.LCFI5:
	.loc 1 167 0
	bnez.n	a2, .L15
	.loc 1 167 0 is_stmt 0 discriminator 1
	l32r	a13, .LC13
	l32r	a12, .LC14
	movi	a11, 0xa7
	l32r	a10, .LC15
	call8	__assert_func
.LVL38:
.L15:
	.loc 1 168 0 is_stmt 1
	bnez.n	a3, .L16
	.loc 1 168 0 is_stmt 0 discriminator 1
	l32r	a13, .LC16
	l32r	a12, .LC14
	movi	a11, 0xa8
	l32r	a10, .LC15
	call8	__assert_func
.LVL39:
.L16:
	.loc 1 170 0 is_stmt 1
	movi.n	a11, 0
	addi.n	a10, a2, 4
	call8	osi_sem_take
.LVL40:
	bnez.n	a10, .L18
	.loc 1 174 0
	addi.n	a4, a2, 12
	movi.n	a11, -1
	mov.n	a10, a4
	call8	osi_mutex_lock
.LVL41:
	.loc 1 176 0
	mov.n	a11, a3
	l32i.n	a10, a2, 0
	call8	list_append
.LVL42:
	.loc 1 177 0
	mov.n	a10, a4
	call8	osi_mutex_unlock
.LVL43:
	.loc 1 179 0
	addi.n	a10, a2, 8
	call8	osi_sem_give
.LVL44:
	.loc 1 181 0
	movi.n	a2, 1
.LVL45:
	retw.n
.LVL46:
.L18:
	.loc 1 171 0
	movi.n	a2, 0
.LVL47:
	.loc 1 182 0
	retw.n
.LFE33:
	.size	fixed_queue_try_enqueue, .-fixed_queue_try_enqueue
	.section	.text.fixed_queue_try_dequeue,"ax",@progbits
	.align	4
	.global	fixed_queue_try_dequeue
	.type	fixed_queue_try_dequeue, @function
fixed_queue_try_dequeue:
.LFB34:
	.loc 1 185 0
.LVL48:
	entry	sp, 32
.LCFI6:
.LVL49:
	.loc 1 188 0
	beqz.n	a2, .L21
	.loc 1 192 0
	movi.n	a11, 0
	l32i.n	a10, a2, 8
	call8	osi_sem_take
.LVL50:
	bnez.n	a10, .L22
	.loc 1 196 0
	addi.n	a4, a2, 12
	movi.n	a11, -1
	mov.n	a10, a4
	call8	osi_mutex_lock
.LVL51:
	.loc 1 197 0
	l32i.n	a10, a2, 0
	call8	list_front
.LVL52:
	mov.n	a3, a10
.LVL53:
	.loc 1 198 0
	mov.n	a11, a10
	l32i.n	a10, a2, 0
	call8	list_remove
.LVL54:
	.loc 1 199 0
	mov.n	a10, a4
	call8	osi_mutex_unlock
.LVL55:
	.loc 1 201 0
	addi.n	a10, a2, 4
	call8	osi_sem_give
.LVL56:
	.loc 1 203 0
	mov.n	a2, a3
.LVL57:
	retw.n
.LVL58:
.L21:
	.loc 1 189 0
	movi.n	a2, 0
.LVL59:
	retw.n
.LVL60:
.L22:
	.loc 1 193 0
	movi.n	a2, 0
.LVL61:
	.loc 1 204 0
	retw.n
.LFE34:
	.size	fixed_queue_try_dequeue, .-fixed_queue_try_dequeue
	.section	.text.fixed_queue_try_peek_first,"ax",@progbits
	.align	4
	.global	fixed_queue_try_peek_first
	.type	fixed_queue_try_peek_first, @function
fixed_queue_try_peek_first:
.LFB35:
	.loc 1 207 0
.LVL62:
	entry	sp, 32
.LCFI7:
.LVL63:
	.loc 1 210 0
	beqz.n	a2, .L26
	.loc 1 214 0
	addi.n	a3, a2, 12
	movi.n	a11, -1
	mov.n	a10, a3
	call8	osi_mutex_lock
.LVL64:
	.loc 1 215 0
	l32i.n	a10, a2, 0
	call8	list_is_empty
.LVL65:
	.loc 1 215 0
	bnez.n	a10, .L27
	.loc 1 215 0 is_stmt 0 discriminator 2
	l32i.n	a10, a2, 0
	call8	list_front
.LVL66:
	mov.n	a2, a10
.LVL67:
	j	.L25
.LVL68:
.L27:
	.loc 1 215 0
	movi.n	a2, 0
.LVL69:
.L25:
	.loc 1 216 0 is_stmt 1 discriminator 4
	mov.n	a10, a3
	call8	osi_mutex_unlock
.LVL70:
	.loc 1 218 0 discriminator 4
	retw.n
.LVL71:
.L26:
	.loc 1 211 0
	movi.n	a2, 0
.LVL72:
	.loc 1 219 0
	retw.n
.LFE35:
	.size	fixed_queue_try_peek_first, .-fixed_queue_try_peek_first
	.section	.text.fixed_queue_try_peek_last,"ax",@progbits
	.align	4
	.global	fixed_queue_try_peek_last
	.type	fixed_queue_try_peek_last, @function
fixed_queue_try_peek_last:
.LFB36:
	.loc 1 222 0
.LVL73:
	entry	sp, 32
.LCFI8:
.LVL74:
	.loc 1 225 0
	beqz.n	a2, .L31
	.loc 1 229 0
	addi.n	a3, a2, 12
	movi.n	a11, -1
	mov.n	a10, a3
	call8	osi_mutex_lock
.LVL75:
	.loc 1 230 0
	l32i.n	a10, a2, 0
	call8	list_is_empty
.LVL76:
	.loc 1 230 0
	bnez.n	a10, .L32
	.loc 1 230 0 is_stmt 0 discriminator 2
	l32i.n	a10, a2, 0
	call8	list_back
.LVL77:
	mov.n	a2, a10
.LVL78:
	j	.L30
.LVL79:
.L32:
	.loc 1 230 0
	movi.n	a2, 0
.LVL80:
.L30:
	.loc 1 231 0 is_stmt 1 discriminator 4
	mov.n	a10, a3
	call8	osi_mutex_unlock
.LVL81:
	.loc 1 233 0 discriminator 4
	retw.n
.LVL82:
.L31:
	.loc 1 226 0
	movi.n	a2, 0
.LVL83:
	.loc 1 234 0
	retw.n
.LFE36:
	.size	fixed_queue_try_peek_last, .-fixed_queue_try_peek_last
	.section	.rodata.str1.4
	.align	4
.LC17:
	.string	"removed"
	.section	.text.fixed_queue_try_remove_from_queue,"ax",@progbits
	.literal_position
	.literal .LC18, .LC17
	.literal .LC19, __func__$5565
	.literal .LC20, .LC3
	.align	4
	.global	fixed_queue_try_remove_from_queue
	.type	fixed_queue_try_remove_from_queue, @function
fixed_queue_try_remove_from_queue:
.LFB37:
	.loc 1 237 0
.LVL84:
	entry	sp, 32
.LCFI9:
.LVL85:
	.loc 1 240 0
	beqz.n	a2, .L36
	.loc 1 244 0
	addi.n	a4, a2, 12
	movi.n	a11, -1
	mov.n	a10, a4
	call8	osi_mutex_lock
.LVL86:
	.loc 1 245 0
	mov.n	a11, a3
	l32i.n	a10, a2, 0
	call8	list_contains
.LVL87:
	beqz.n	a10, .L37
	.loc 1 246 0 discriminator 1
	movi.n	a11, 0
	l32i.n	a10, a2, 8
	call8	osi_sem_take
.LVL88:
	.loc 1 245 0 discriminator 1
	bnez.n	a10, .L38
	.loc 1 247 0
	mov.n	a11, a3
	l32i.n	a10, a2, 0
	call8	list_remove
.LVL89:
	mov.n	a5, a10
.LVL90:
	.loc 1 248 0
	bnez.n	a10, .L35
	.loc 1 248 0 is_stmt 0 discriminator 1
	l32r	a13, .LC18
	l32r	a12, .LC19
	movi	a11, 0xf8
	l32r	a10, .LC20
	call8	__assert_func
.LVL91:
.L37:
	.loc 1 238 0 is_stmt 1
	movi.n	a5, 0
	j	.L35
.L38:
	movi.n	a5, 0
.LVL92:
.L35:
	.loc 1 250 0
	mov.n	a10, a4
	call8	osi_mutex_unlock
.LVL93:
	.loc 1 252 0
	beqz.n	a5, .L39
	.loc 1 253 0
	l32i.n	a10, a2, 4
	call8	osi_sem_give
.LVL94:
	.loc 1 254 0
	mov.n	a2, a3
.LVL95:
	retw.n
.LVL96:
.L36:
	.loc 1 241 0
	movi.n	a2, 0
.LVL97:
	retw.n
.LVL98:
.L39:
	.loc 1 257 0
	movi.n	a2, 0
.LVL99:
	.loc 1 258 0
	retw.n
.LFE37:
	.size	fixed_queue_try_remove_from_queue, .-fixed_queue_try_remove_from_queue
	.section	.text.fixed_queue_get_list,"ax",@progbits
	.literal_position
	.literal .LC21, .LC0
	.literal .LC22, __func__$5569
	.literal .LC23, .LC3
	.align	4
	.global	fixed_queue_get_list
	.type	fixed_queue_get_list, @function
fixed_queue_get_list:
.LFB38:
	.loc 1 261 0
.LVL100:
	entry	sp, 32
.LCFI10:
	.loc 1 262 0
	bnez.n	a2, .L41
	.loc 1 262 0 is_stmt 0 discriminator 1
	l32r	a13, .LC21
	l32r	a12, .LC22
	movi	a11, 0x106
	l32r	a10, .LC23
	call8	__assert_func
.LVL101:
.L41:
	.loc 1 267 0 is_stmt 1
	l32i.n	a2, a2, 0
.LVL102:
	retw.n
.LFE38:
	.size	fixed_queue_get_list, .-fixed_queue_get_list
	.section	.rodata.str1.4
	.align	4
.LC27:
	.string	"ready_cb != NULL"
	.section	.text.fixed_queue_register_dequeue,"ax",@progbits
	.literal_position
	.literal .LC24, .LC0
	.literal .LC25, __func__$5574
	.literal .LC26, .LC3
	.literal .LC28, .LC27
	.align	4
	.global	fixed_queue_register_dequeue
	.type	fixed_queue_register_dequeue, @function
fixed_queue_register_dequeue:
.LFB39:
	.loc 1 270 0
.LVL103:
	entry	sp, 32
.LCFI11:
	.loc 1 271 0
	bnez.n	a2, .L43
	.loc 1 271 0 is_stmt 0 discriminator 1
	l32r	a13, .LC24
	l32r	a12, .LC25
	movi	a11, 0x10f
	l32r	a10, .LC26
	call8	__assert_func
.LVL104:
.L43:
	.loc 1 272 0 is_stmt 1
	bnez.n	a3, .L44
	.loc 1 272 0 is_stmt 0 discriminator 1
	l32r	a13, .LC28
	l32r	a12, .LC25
	movi	a11, 0x110
	l32r	a10, .LC26
	call8	__assert_func
.LVL105:
.L44:
	.loc 1 274 0 is_stmt 1
	s32i.n	a3, a2, 20
	retw.n
.LFE39:
	.size	fixed_queue_register_dequeue, .-fixed_queue_register_dequeue
	.section	.text.fixed_queue_unregister_dequeue,"ax",@progbits
	.literal_position
	.literal .LC29, .LC0
	.literal .LC30, __func__$5578
	.literal .LC31, .LC3
	.align	4
	.global	fixed_queue_unregister_dequeue
	.type	fixed_queue_unregister_dequeue, @function
fixed_queue_unregister_dequeue:
.LFB40:
	.loc 1 278 0
.LVL106:
	entry	sp, 32
.LCFI12:
	.loc 1 279 0
	bnez.n	a2, .L46
	.loc 1 279 0 is_stmt 0 discriminator 1
	l32r	a13, .LC29
	l32r	a12, .LC30
	movi	a11, 0x117
	l32r	a10, .LC31
	call8	__assert_func
.LVL107:
.L46:
	.loc 1 281 0 is_stmt 1
	movi.n	a8, 0
	s32i.n	a8, a2, 20
	retw.n
.LFE40:
	.size	fixed_queue_unregister_dequeue, .-fixed_queue_unregister_dequeue
	.section	.text.fixed_queue_free,"ax",@progbits
	.align	4
	.global	fixed_queue_free
	.type	fixed_queue_free, @function
fixed_queue_free:
.LFB27:
	.loc 1 74 0
.LVL108:
	entry	sp, 32
.LCFI13:
	.loc 1 77 0
	beqz.n	a2, .L47
	.loc 1 81 0
	mov.n	a10, a2
	call8	fixed_queue_unregister_dequeue
.LVL109:
	.loc 1 83 0
	beqz.n	a3, .L49
	.loc 1 84 0
	l32i.n	a10, a2, 0
	call8	list_begin
.LVL110:
	mov.n	a4, a10
.LVL111:
	j	.L50
.L51:
	.loc 1 85 0 discriminator 3
	mov.n	a10, a4
	call8	list_node
.LVL112:
	callx8	a3
.LVL113:
	.loc 1 84 0 discriminator 3
	mov.n	a10, a4
	call8	list_next
.LVL114:
	mov.n	a4, a10
.LVL115:
.L50:
	.loc 1 84 0 is_stmt 0 discriminator 1
	l32i.n	a10, a2, 0
	call8	list_end
.LVL116:
	bne	a4, a10, .L51
.LVL117:
.L49:
	.loc 1 89 0 is_stmt 1
	l32i.n	a10, a2, 0
	call8	list_free
.LVL118:
	.loc 1 90 0
	addi.n	a10, a2, 4
	call8	osi_sem_free
.LVL119:
	.loc 1 91 0
	addi.n	a10, a2, 8
	call8	osi_sem_free
.LVL120:
	.loc 1 92 0
	addi.n	a10, a2, 12
	call8	osi_mutex_free
.LVL121:
	.loc 1 93 0
	mov.n	a10, a2
	call8	free
.LVL122:
.L47:
	retw.n
.LFE27:
	.size	fixed_queue_free, .-fixed_queue_free
	.section	.text.fixed_queue_new,"ax",@progbits
	.align	4
	.global	fixed_queue_new
	.type	fixed_queue_new, @function
fixed_queue_new:
.LFB26:
	.loc 1 41 0
.LVL123:
	entry	sp, 32
.LCFI14:
	.loc 1 42 0
	movi.n	a11, 0x18
	movi.n	a10, 1
	call8	calloc
.LVL124:
	mov.n	a3, a10
.LVL125:
	.loc 1 43 0
	beqz.n	a10, .L53
	.loc 1 47 0
	addi.n	a10, a10, 12
	call8	osi_mutex_new
.LVL126:
	.loc 1 48 0
	s32i.n	a2, a3, 16
	.loc 1 50 0
	movi.n	a10, 0
	call8	list_new
.LVL127:
	s32i.n	a10, a3, 0
	.loc 1 51 0
	beqz.n	a10, .L53
	.loc 1 56 0
	mov.n	a12, a2
	mov.n	a11, a2
	addi.n	a10, a3, 4
	call8	osi_sem_new
.LVL128:
	.loc 1 57 0
	l32i.n	a8, a3, 4
	beqz.n	a8, .L53
	.loc 1 61 0
	movi.n	a12, 0
	mov.n	a11, a2
	addi.n	a10, a3, 8
	call8	osi_sem_new
.LVL129:
	.loc 1 62 0
	l32i.n	a2, a3, 8
.LVL130:
	bnez.n	a2, .L55
.L53:
	.loc 1 69 0
	movi.n	a11, 0
	mov.n	a10, a3
	call8	fixed_queue_free
.LVL131:
	.loc 1 70 0
	movi.n	a2, 0
	retw.n
.L55:
	.loc 1 66 0
	mov.n	a2, a3
	.loc 1 71 0
	retw.n
.LFE26:
	.size	fixed_queue_new, .-fixed_queue_new
	.section	.text.fixed_queue_process,"ax",@progbits
	.literal_position
	.literal .LC32, .LC0
	.literal .LC33, __func__$5582
	.literal .LC34, .LC3
	.align	4
	.global	fixed_queue_process
	.type	fixed_queue_process, @function
fixed_queue_process:
.LFB41:
	.loc 1 285 0
.LVL132:
	entry	sp, 32
.LCFI15:
	.loc 1 286 0
	bnez.n	a2, .L57
	.loc 1 286 0 is_stmt 0 discriminator 1
	l32r	a13, .LC32
	l32r	a12, .LC33
	movi	a11, 0x11e
	l32r	a10, .LC34
	call8	__assert_func
.LVL133:
.L57:
	.loc 1 288 0 is_stmt 1
	l32i.n	a8, a2, 20
	beqz.n	a8, .L56
	.loc 1 289 0
	mov.n	a10, a2
	callx8	a8
.LVL134:
.L56:
	retw.n
.LFE41:
	.size	fixed_queue_process, .-fixed_queue_process
	.section	.rodata.__func__$5582,"a",@progbits
	.align	4
	.type	__func__$5582, @object
	.size	__func__$5582, 20
__func__$5582:
	.string	"fixed_queue_process"
	.section	.rodata.__func__$5578,"a",@progbits
	.align	4
	.type	__func__$5578, @object
	.size	__func__$5578, 31
__func__$5578:
	.string	"fixed_queue_unregister_dequeue"
	.section	.rodata.__func__$5574,"a",@progbits
	.align	4
	.type	__func__$5574, @object
	.size	__func__$5574, 29
__func__$5574:
	.string	"fixed_queue_register_dequeue"
	.section	.rodata.__func__$5569,"a",@progbits
	.align	4
	.type	__func__$5569, @object
	.size	__func__$5569, 21
__func__$5569:
	.string	"fixed_queue_get_list"
	.section	.rodata.__func__$5565,"a",@progbits
	.align	4
	.type	__func__$5565, @object
	.size	__func__$5565, 34
__func__$5565:
	.string	"fixed_queue_try_remove_from_queue"
	.section	.rodata.__func__$5547,"a",@progbits
	.align	4
	.type	__func__$5547, @object
	.size	__func__$5547, 24
__func__$5547:
	.string	"fixed_queue_try_enqueue"
	.section	.rodata.__func__$5542,"a",@progbits
	.align	4
	.type	__func__$5542, @object
	.size	__func__$5542, 20
__func__$5542:
	.string	"fixed_queue_dequeue"
	.section	.rodata.__func__$5537,"a",@progbits
	.align	4
	.type	__func__$5537, @object
	.size	__func__$5537, 20
__func__$5537:
	.string	"fixed_queue_enqueue"
	.section	.rodata.__func__$5532,"a",@progbits
	.align	4
	.type	__func__$5532, @object
	.size	__func__$5532, 21
__func__$5532:
	.string	"fixed_queue_capacity"
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
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI0-.LFB28
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI1-.LFB29
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI2-.LFB30
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI3-.LFB31
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI4-.LFB32
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI5-.LFB33
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI6-.LFB34
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x4
	.4byte	.LCFI7-.LFB35
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x4
	.4byte	.LCFI8-.LFB36
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.byte	0x4
	.4byte	.LCFI9-.LFB37
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.byte	0x4
	.4byte	.LCFI10-.LFB38
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.byte	0x4
	.4byte	.LCFI11-.LFB39
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.byte	0x4
	.4byte	.LCFI12-.LFB40
	.byte	0xe
	.uleb128 0x20
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
	.uleb128 0x20
	.align	4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI14-.LFB26
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.byte	0x4
	.4byte	.LCFI15-.LFB41
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE30:
	.text
.Letext0:
	.file 2 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/bt_types.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/osi/include/osi/list.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/osi/include/osi/fixed_queue.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/queue.h"
	.file 9 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/semphr.h"
	.file 10 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/osi/include/osi/mutex.h"
	.file 11 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/osi/include/osi/semaphore.h"
	.file 12 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/assert.h"
	.file 13 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xdc9
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF82
	.byte	0xc
	.4byte	.LASF83
	.4byte	.LASF84
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF3
	.byte	0x2
	.byte	0xd8
	.4byte	0x30
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x2
	.4byte	.LASF4
	.byte	0x3
	.byte	0x12
	.4byte	0x57
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x2
	.4byte	.LASF13
	.byte	0x4
	.byte	0x15
	.4byte	0x4c
	.uleb128 0x2
	.4byte	.LASF14
	.byte	0x5
	.byte	0x21
	.4byte	0x91
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF15
	.uleb128 0x6
	.4byte	0x9c
	.4byte	0xbe
	.uleb128 0x7
	.4byte	0x7a
	.byte	0x5
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0xc4
	.uleb128 0x9
	.4byte	0xcf
	.uleb128 0xa
	.4byte	0x81
	.byte	0
	.uleb128 0x2
	.4byte	.LASF16
	.byte	0x6
	.byte	0x7
	.4byte	0xda
	.uleb128 0xb
	.4byte	.LASF16
	.uleb128 0x2
	.4byte	.LASF17
	.byte	0x6
	.byte	0xa
	.4byte	0xea
	.uleb128 0xb
	.4byte	.LASF17
	.uleb128 0x2
	.4byte	.LASF18
	.byte	0x7
	.byte	0x1f
	.4byte	0xfa
	.uleb128 0xc
	.4byte	.LASF18
	.byte	0x18
	.byte	0x1
	.byte	0x1c
	.4byte	0x14f
	.uleb128 0xd
	.4byte	.LASF19
	.byte	0x1
	.byte	0x1e
	.4byte	0x1a8
	.byte	0
	.uleb128 0xd
	.4byte	.LASF20
	.byte	0x1
	.byte	0x1f
	.4byte	0x19d
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF21
	.byte	0x1
	.byte	0x20
	.4byte	0x19d
	.byte	0x8
	.uleb128 0xd
	.4byte	.LASF22
	.byte	0x1
	.byte	0x21
	.4byte	0x192
	.byte	0xc
	.uleb128 0xd
	.4byte	.LASF23
	.byte	0x1
	.byte	0x22
	.4byte	0x25
	.byte	0x10
	.uleb128 0xd
	.4byte	.LASF24
	.byte	0x1
	.byte	0x24
	.4byte	0x15a
	.byte	0x14
	.byte	0
	.uleb128 0x2
	.4byte	.LASF25
	.byte	0x7
	.byte	0x22
	.4byte	0xbe
	.uleb128 0x2
	.4byte	.LASF26
	.byte	0x7
	.byte	0x23
	.4byte	0x165
	.uleb128 0x8
	.byte	0x4
	.4byte	0x16b
	.uleb128 0x9
	.4byte	0x176
	.uleb128 0xa
	.4byte	0x176
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0xef
	.uleb128 0x2
	.4byte	.LASF27
	.byte	0x8
	.byte	0x58
	.4byte	0x81
	.uleb128 0x2
	.4byte	.LASF28
	.byte	0x9
	.byte	0x4f
	.4byte	0x17c
	.uleb128 0x2
	.4byte	.LASF29
	.byte	0xa
	.byte	0x21
	.4byte	0x187
	.uleb128 0x2
	.4byte	.LASF30
	.byte	0xb
	.byte	0x1d
	.4byte	0x187
	.uleb128 0x8
	.byte	0x4
	.4byte	0xdf
	.uleb128 0xe
	.4byte	.LASF31
	.byte	0x1
	.byte	0x60
	.4byte	0xa7
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x219
	.uleb128 0xf
	.4byte	.LASF33
	.byte	0x1
	.byte	0x60
	.4byte	0x219
	.4byte	.LLST0
	.uleb128 0x10
	.4byte	.LASF34
	.byte	0x1
	.byte	0x62
	.4byte	0xa7
	.4byte	.LLST1
	.uleb128 0x11
	.4byte	.LVL2
	.4byte	0xcc4
	.4byte	0x1ff
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x13
	.4byte	.LVL3
	.4byte	0xccf
	.uleb128 0x14
	.4byte	.LVL5
	.4byte	0xcda
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0xfa
	.uleb128 0xe
	.4byte	.LASF32
	.byte	0x1
	.byte	0x6f
	.4byte	0x25
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x28a
	.uleb128 0xf
	.4byte	.LASF33
	.byte	0x1
	.byte	0x6f
	.4byte	0x219
	.4byte	.LLST2
	.uleb128 0x10
	.4byte	.LASF35
	.byte	0x1
	.byte	0x71
	.4byte	0x25
	.4byte	.LLST3
	.uleb128 0x11
	.4byte	.LVL9
	.4byte	0xcc4
	.4byte	0x270
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x13
	.4byte	.LVL10
	.4byte	0xce5
	.uleb128 0x14
	.4byte	.LVL12
	.4byte	0xcda
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF36
	.byte	0x1
	.byte	0x7d
	.4byte	0x25
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2ed
	.uleb128 0xf
	.4byte	.LASF33
	.byte	0x1
	.byte	0x7d
	.4byte	0x219
	.4byte	.LLST4
	.uleb128 0x15
	.4byte	.LASF38
	.4byte	0x2fd
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5532
	.uleb128 0x14
	.4byte	.LVL16
	.4byte	0xcf0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x7f
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5532
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	0x8a
	.4byte	0x2fd
	.uleb128 0x7
	.4byte	0x7a
	.byte	0x14
	.byte	0
	.uleb128 0x16
	.4byte	0x2ed
	.uleb128 0x17
	.4byte	.LASF47
	.byte	0x1
	.byte	0x84
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x40b
	.uleb128 0x18
	.4byte	.LASF33
	.byte	0x1
	.byte	0x84
	.4byte	0x219
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x18
	.4byte	.LASF37
	.byte	0x1
	.byte	0x84
	.4byte	0x81
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x15
	.4byte	.LASF38
	.4byte	0x41b
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5537
	.uleb128 0x11
	.4byte	.LVL19
	.4byte	0xcf0
	.4byte	0x36f
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x86
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5537
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x11
	.4byte	.LVL20
	.4byte	0xcf0
	.4byte	0x39e
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x87
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5537
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.byte	0
	.uleb128 0x11
	.4byte	.LVL21
	.4byte	0xcfb
	.4byte	0x3b8
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 4
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x11
	.4byte	.LVL22
	.4byte	0xcc4
	.4byte	0x3d2
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x11
	.4byte	.LVL23
	.4byte	0xd06
	.4byte	0x3e6
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x11
	.4byte	.LVL24
	.4byte	0xcda
	.4byte	0x3fa
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.4byte	.LVL25
	.4byte	0xd11
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 8
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	0x8a
	.4byte	0x41b
	.uleb128 0x7
	.4byte	0x7a
	.byte	0x13
	.byte	0
	.uleb128 0x16
	.4byte	0x40b
	.uleb128 0xe
	.4byte	.LASF39
	.byte	0x1
	.byte	0x93
	.4byte	0x81
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x50b
	.uleb128 0xf
	.4byte	.LASF33
	.byte	0x1
	.byte	0x93
	.4byte	0x219
	.4byte	.LLST5
	.uleb128 0x19
	.string	"ret"
	.byte	0x1
	.byte	0x95
	.4byte	0x81
	.4byte	.LLST6
	.uleb128 0x15
	.4byte	.LASF38
	.4byte	0x50b
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5542
	.uleb128 0x11
	.4byte	.LVL28
	.4byte	0xcf0
	.4byte	0x495
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x97
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5542
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x11
	.4byte	.LVL29
	.4byte	0xcfb
	.4byte	0x4af
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 8
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x11
	.4byte	.LVL30
	.4byte	0xcc4
	.4byte	0x4c9
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x13
	.4byte	.LVL31
	.4byte	0xd1c
	.uleb128 0x11
	.4byte	.LVL33
	.4byte	0xd27
	.4byte	0x4e6
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x11
	.4byte	.LVL34
	.4byte	0xcda
	.4byte	0x4fa
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.4byte	.LVL35
	.4byte	0xd11
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 4
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	0x40b
	.uleb128 0xe
	.4byte	.LASF40
	.byte	0x1
	.byte	0xa5
	.4byte	0xa7
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x61e
	.uleb128 0xf
	.4byte	.LASF33
	.byte	0x1
	.byte	0xa5
	.4byte	0x219
	.4byte	.LLST7
	.uleb128 0x18
	.4byte	.LASF37
	.byte	0x1
	.byte	0xa5
	.4byte	0x81
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x15
	.4byte	.LASF38
	.4byte	0x62e
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5547
	.uleb128 0x11
	.4byte	.LVL38
	.4byte	0xcf0
	.4byte	0x583
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xa7
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5547
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x11
	.4byte	.LVL39
	.4byte	0xcf0
	.4byte	0x5b2
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xa8
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5547
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.byte	0
	.uleb128 0x11
	.4byte	.LVL40
	.4byte	0xcfb
	.4byte	0x5cb
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 4
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x11
	.4byte	.LVL41
	.4byte	0xcc4
	.4byte	0x5e5
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x11
	.4byte	.LVL42
	.4byte	0xd06
	.4byte	0x5f9
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x11
	.4byte	.LVL43
	.4byte	0xcda
	.4byte	0x60d
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.4byte	.LVL44
	.4byte	0xd11
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 8
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	0x8a
	.4byte	0x62e
	.uleb128 0x7
	.4byte	0x7a
	.byte	0x17
	.byte	0
	.uleb128 0x16
	.4byte	0x61e
	.uleb128 0xe
	.4byte	.LASF41
	.byte	0x1
	.byte	0xb8
	.4byte	0x81
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6d9
	.uleb128 0xf
	.4byte	.LASF33
	.byte	0x1
	.byte	0xb8
	.4byte	0x219
	.4byte	.LLST8
	.uleb128 0x19
	.string	"ret"
	.byte	0x1
	.byte	0xba
	.4byte	0x81
	.4byte	.LLST9
	.uleb128 0x11
	.4byte	.LVL50
	.4byte	0xcfb
	.4byte	0x67d
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x11
	.4byte	.LVL51
	.4byte	0xcc4
	.4byte	0x697
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x13
	.4byte	.LVL52
	.4byte	0xd1c
	.uleb128 0x11
	.4byte	.LVL54
	.4byte	0xd27
	.4byte	0x6b4
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x11
	.4byte	.LVL55
	.4byte	0xcda
	.4byte	0x6c8
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.4byte	.LVL56
	.4byte	0xd11
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 4
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF42
	.byte	0x1
	.byte	0xce
	.4byte	0x81
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x74d
	.uleb128 0xf
	.4byte	.LASF33
	.byte	0x1
	.byte	0xce
	.4byte	0x219
	.4byte	.LLST10
	.uleb128 0x19
	.string	"ret"
	.byte	0x1
	.byte	0xd0
	.4byte	0x81
	.4byte	.LLST11
	.uleb128 0x11
	.4byte	.LVL64
	.4byte	0xcc4
	.4byte	0x72a
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x13
	.4byte	.LVL65
	.4byte	0xccf
	.uleb128 0x13
	.4byte	.LVL66
	.4byte	0xd1c
	.uleb128 0x14
	.4byte	.LVL70
	.4byte	0xcda
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF43
	.byte	0x1
	.byte	0xdd
	.4byte	0x81
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7c1
	.uleb128 0xf
	.4byte	.LASF33
	.byte	0x1
	.byte	0xdd
	.4byte	0x219
	.4byte	.LLST12
	.uleb128 0x19
	.string	"ret"
	.byte	0x1
	.byte	0xdf
	.4byte	0x81
	.4byte	.LLST13
	.uleb128 0x11
	.4byte	.LVL75
	.4byte	0xcc4
	.4byte	0x79e
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x13
	.4byte	.LVL76
	.4byte	0xccf
	.uleb128 0x13
	.4byte	.LVL77
	.4byte	0xd32
	.uleb128 0x14
	.4byte	.LVL81
	.4byte	0xcda
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF44
	.byte	0x1
	.byte	0xec
	.4byte	0x81
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8b6
	.uleb128 0xf
	.4byte	.LASF33
	.byte	0x1
	.byte	0xec
	.4byte	0x219
	.4byte	.LLST14
	.uleb128 0x18
	.4byte	.LASF37
	.byte	0x1
	.byte	0xec
	.4byte	0x81
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x10
	.4byte	.LASF45
	.byte	0x1
	.byte	0xee
	.4byte	0xa7
	.4byte	.LLST15
	.uleb128 0x15
	.4byte	.LASF38
	.4byte	0x8c6
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5565
	.uleb128 0x11
	.4byte	.LVL86
	.4byte	0xcc4
	.4byte	0x82e
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x11
	.4byte	.LVL87
	.4byte	0xd3d
	.4byte	0x842
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x11
	.4byte	.LVL88
	.4byte	0xcfb
	.4byte	0x855
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x11
	.4byte	.LVL89
	.4byte	0xd27
	.4byte	0x869
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x11
	.4byte	.LVL91
	.4byte	0xcf0
	.4byte	0x898
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xf8
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5565
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC17
	.byte	0
	.uleb128 0x11
	.4byte	.LVL93
	.4byte	0xcda
	.4byte	0x8ac
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL94
	.4byte	0xd11
	.byte	0
	.uleb128 0x6
	.4byte	0x8a
	.4byte	0x8c6
	.uleb128 0x7
	.4byte	0x7a
	.byte	0x21
	.byte	0
	.uleb128 0x16
	.4byte	0x8b6
	.uleb128 0x1a
	.4byte	.LASF46
	.byte	0x1
	.2byte	0x104
	.4byte	0x1a8
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x931
	.uleb128 0x1b
	.4byte	.LASF33
	.byte	0x1
	.2byte	0x104
	.4byte	0x219
	.4byte	.LLST16
	.uleb128 0x15
	.4byte	.LASF38
	.4byte	0x931
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5569
	.uleb128 0x14
	.4byte	.LVL101
	.4byte	0xcf0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x106
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5569
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	0x2ed
	.uleb128 0x1c
	.4byte	.LASF48
	.byte	0x1
	.2byte	0x10d
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9d4
	.uleb128 0x1d
	.4byte	.LASF33
	.byte	0x1
	.2byte	0x10d
	.4byte	0x219
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1d
	.4byte	.LASF49
	.byte	0x1
	.2byte	0x10d
	.4byte	0x15a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x15
	.4byte	.LASF38
	.4byte	0x9e4
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5574
	.uleb128 0x11
	.4byte	.LVL104
	.4byte	0xcf0
	.4byte	0x9a7
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x10f
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5574
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x14
	.4byte	.LVL105
	.4byte	0xcf0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x110
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5574
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC27
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	0x8a
	.4byte	0x9e4
	.uleb128 0x7
	.4byte	0x7a
	.byte	0x1c
	.byte	0
	.uleb128 0x16
	.4byte	0x9d4
	.uleb128 0x1c
	.4byte	.LASF50
	.byte	0x1
	.2byte	0x115
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa49
	.uleb128 0x1d
	.4byte	.LASF33
	.byte	0x1
	.2byte	0x115
	.4byte	0x219
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x15
	.4byte	.LASF38
	.4byte	0xa59
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5578
	.uleb128 0x14
	.4byte	.LVL107
	.4byte	0xcf0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x117
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5578
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	0x8a
	.4byte	0xa59
	.uleb128 0x7
	.4byte	0x7a
	.byte	0x1e
	.byte	0
	.uleb128 0x16
	.4byte	0xa49
	.uleb128 0x1e
	.4byte	.LASF51
	.byte	0x1
	.byte	0x49
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb40
	.uleb128 0x18
	.4byte	.LASF33
	.byte	0x1
	.byte	0x49
	.4byte	0x219
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x18
	.4byte	.LASF52
	.byte	0x1
	.byte	0x49
	.4byte	0x14f
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x10
	.4byte	.LASF53
	.byte	0x1
	.byte	0x4b
	.4byte	0xb40
	.4byte	.LLST17
	.uleb128 0x11
	.4byte	.LVL109
	.4byte	0x9e9
	.4byte	0xab0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL110
	.4byte	0xd48
	.uleb128 0x11
	.4byte	.LVL112
	.4byte	0xd53
	.4byte	0xacd
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x11
	.4byte	.LVL114
	.4byte	0xd5e
	.4byte	0xae1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL116
	.4byte	0xd69
	.uleb128 0x13
	.4byte	.LVL118
	.4byte	0xd74
	.uleb128 0x11
	.4byte	.LVL119
	.4byte	0xd7f
	.4byte	0xb07
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 4
	.byte	0
	.uleb128 0x11
	.4byte	.LVL120
	.4byte	0xd7f
	.4byte	0xb1b
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 8
	.byte	0
	.uleb128 0x11
	.4byte	.LVL121
	.4byte	0xd8a
	.4byte	0xb2f
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 12
	.byte	0
	.uleb128 0x14
	.4byte	.LVL122
	.4byte	0xd95
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0xb46
	.uleb128 0x16
	.4byte	0xcf
	.uleb128 0xe
	.4byte	.LASF54
	.byte	0x1
	.byte	0x28
	.4byte	0x219
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc1f
	.uleb128 0xf
	.4byte	.LASF23
	.byte	0x1
	.byte	0x28
	.4byte	0x25
	.4byte	.LLST18
	.uleb128 0x1f
	.string	"ret"
	.byte	0x1
	.byte	0x2a
	.4byte	0x219
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x20
	.4byte	.LASF85
	.byte	0x1
	.byte	0x44
	.4byte	.L53
	.uleb128 0x11
	.4byte	.LVL124
	.4byte	0xda0
	.4byte	0xba3
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x48
	.byte	0
	.uleb128 0x11
	.4byte	.LVL126
	.4byte	0xdab
	.4byte	0xbb7
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 12
	.byte	0
	.uleb128 0x11
	.4byte	.LVL127
	.4byte	0xdb6
	.4byte	0xbca
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x11
	.4byte	.LVL128
	.4byte	0xdc1
	.4byte	0xbea
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 4
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x11
	.4byte	.LVL129
	.4byte	0xdc1
	.4byte	0xc09
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 8
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x14
	.4byte	.LVL131
	.4byte	0xa5e
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF55
	.byte	0x1
	.2byte	0x11c
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc8f
	.uleb128 0x1d
	.4byte	.LASF33
	.byte	0x1
	.2byte	0x11c
	.4byte	0x219
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x15
	.4byte	.LASF38
	.4byte	0xc8f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5582
	.uleb128 0x11
	.4byte	.LVL133
	.4byte	0xcf0
	.4byte	0xc82
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x11e
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5582
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL134
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	0x40b
	.uleb128 0x22
	.4byte	.LASF56
	.byte	0x5
	.2byte	0x2cc
	.4byte	0xca7
	.byte	0x6
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.uleb128 0x16
	.4byte	0xae
	.uleb128 0x22
	.4byte	.LASF57
	.byte	0x5
	.2byte	0x2cd
	.4byte	0xcbf
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	0xae
	.uleb128 0x23
	.4byte	.LASF58
	.4byte	.LASF58
	.byte	0xa
	.byte	0x25
	.uleb128 0x23
	.4byte	.LASF59
	.4byte	.LASF59
	.byte	0x6
	.byte	0x1f
	.uleb128 0x23
	.4byte	.LASF60
	.4byte	.LASF60
	.byte	0xa
	.byte	0x27
	.uleb128 0x23
	.4byte	.LASF61
	.4byte	.LASF61
	.byte	0x6
	.byte	0x26
	.uleb128 0x23
	.4byte	.LASF62
	.4byte	.LASF62
	.byte	0xc
	.byte	0x29
	.uleb128 0x23
	.4byte	.LASF63
	.4byte	.LASF63
	.byte	0xb
	.byte	0x26
	.uleb128 0x23
	.4byte	.LASF64
	.4byte	.LASF64
	.byte	0x6
	.byte	0x42
	.uleb128 0x23
	.4byte	.LASF65
	.4byte	.LASF65
	.byte	0xb
	.byte	0x28
	.uleb128 0x23
	.4byte	.LASF66
	.4byte	.LASF66
	.byte	0x6
	.byte	0x2a
	.uleb128 0x23
	.4byte	.LASF67
	.4byte	.LASF67
	.byte	0x6
	.byte	0x4c
	.uleb128 0x23
	.4byte	.LASF68
	.4byte	.LASF68
	.byte	0x6
	.byte	0x2e
	.uleb128 0x23
	.4byte	.LASF69
	.4byte	.LASF69
	.byte	0x6
	.byte	0x23
	.uleb128 0x23
	.4byte	.LASF70
	.4byte	.LASF70
	.byte	0x6
	.byte	0x5c
	.uleb128 0x23
	.4byte	.LASF71
	.4byte	.LASF71
	.byte	0x6
	.byte	0x6c
	.uleb128 0x23
	.4byte	.LASF72
	.4byte	.LASF72
	.byte	0x6
	.byte	0x68
	.uleb128 0x23
	.4byte	.LASF73
	.4byte	.LASF73
	.byte	0x6
	.byte	0x62
	.uleb128 0x23
	.4byte	.LASF74
	.4byte	.LASF74
	.byte	0x6
	.byte	0x1b
	.uleb128 0x23
	.4byte	.LASF75
	.4byte	.LASF75
	.byte	0xb
	.byte	0x24
	.uleb128 0x23
	.4byte	.LASF76
	.4byte	.LASF76
	.byte	0xa
	.byte	0x29
	.uleb128 0x23
	.4byte	.LASF77
	.4byte	.LASF77
	.byte	0xd
	.byte	0x5a
	.uleb128 0x23
	.4byte	.LASF78
	.4byte	.LASF78
	.byte	0xd
	.byte	0x57
	.uleb128 0x23
	.4byte	.LASF79
	.4byte	.LASF79
	.byte	0xa
	.byte	0x23
	.uleb128 0x23
	.4byte	.LASF80
	.4byte	.LASF80
	.byte	0x6
	.byte	0x15
	.uleb128 0x23
	.4byte	.LASF81
	.4byte	.LASF81
	.byte	0xb
	.byte	0x22
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
	.uleb128 0x3
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x12
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x19
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
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
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x4109
	.byte	0x1
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xa
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
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL4
	.4byte	.LVL6
	.2byte	0x3
	.byte	0x73
	.sleb128 -12
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL7
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL4
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL6
	.4byte	.LFE28
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL8
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL11
	.4byte	.LVL13
	.2byte	0x3
	.byte	0x73
	.sleb128 -12
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL14
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL11
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL15
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL17
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL26
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL36
	.4byte	.LFE32
	.2byte	0x3
	.byte	0x74
	.sleb128 -12
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL27
	.4byte	.LVL32
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LFE32
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL37
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x3
	.byte	0x74
	.sleb128 -12
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL47
	.4byte	.LFE33
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL48
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x3
	.byte	0x74
	.sleb128 -12
	.byte	0x9f
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL59
	.4byte	.LVL60
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL61
	.4byte	.LFE34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL49
	.4byte	.LVL53
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL58
	.4byte	.LFE34
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL62
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL67
	.4byte	.LVL68
	.2byte	0x3
	.byte	0x73
	.sleb128 -12
	.byte	0x9f
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL69
	.4byte	.LVL71
	.2byte	0x3
	.byte	0x73
	.sleb128 -12
	.byte	0x9f
	.4byte	.LVL71
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL72
	.4byte	.LFE35
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL63
	.4byte	.LVL69
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL69
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL71
	.4byte	.LFE35
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL73
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL78
	.4byte	.LVL79
	.2byte	0x3
	.byte	0x73
	.sleb128 -12
	.byte	0x9f
	.4byte	.LVL79
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL80
	.4byte	.LVL82
	.2byte	0x3
	.byte	0x73
	.sleb128 -12
	.byte	0x9f
	.4byte	.LVL82
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL83
	.4byte	.LFE36
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL74
	.4byte	.LVL80
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL80
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL82
	.4byte	.LFE36
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL84
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL95
	.4byte	.LVL96
	.2byte	0x3
	.byte	0x74
	.sleb128 -12
	.byte	0x9f
	.4byte	.LVL96
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL97
	.4byte	.LVL98
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL98
	.4byte	.LVL99
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL99
	.4byte	.LFE37
	.2byte	0x3
	.byte	0x74
	.sleb128 -12
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL85
	.4byte	.LVL90
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL90
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL91
	.4byte	.LVL92
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL92
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL96
	.4byte	.LVL98
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL98
	.4byte	.LFE37
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL100
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL102
	.4byte	.LFE38
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL111
	.4byte	.LVL117
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL123
	.4byte	.LVL130
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL130
	.4byte	.LFE26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x94
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
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
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
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
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB41
	.4byte	.LFE41
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF78:
	.string	"calloc"
.LASF57:
	.string	"bd_addr_null"
.LASF48:
	.string	"fixed_queue_register_dequeue"
.LASF75:
	.string	"osi_sem_free"
.LASF61:
	.string	"list_length"
.LASF29:
	.string	"osi_mutex_t"
.LASF6:
	.string	"short int"
.LASF3:
	.string	"size_t"
.LASF17:
	.string	"list_t"
.LASF74:
	.string	"list_free"
.LASF10:
	.string	"sizetype"
.LASF40:
	.string	"fixed_queue_try_enqueue"
.LASF64:
	.string	"list_append"
.LASF16:
	.string	"list_node_t"
.LASF58:
	.string	"osi_mutex_lock"
.LASF60:
	.string	"osi_mutex_unlock"
.LASF19:
	.string	"list"
.LASF13:
	.string	"uint8_t"
.LASF63:
	.string	"osi_sem_take"
.LASF71:
	.string	"list_node"
.LASF77:
	.string	"free"
.LASF70:
	.string	"list_begin"
.LASF81:
	.string	"osi_sem_new"
.LASF51:
	.string	"fixed_queue_free"
.LASF35:
	.string	"length"
.LASF72:
	.string	"list_next"
.LASF26:
	.string	"fixed_queue_cb"
.LASF36:
	.string	"fixed_queue_capacity"
.LASF7:
	.string	"long long int"
.LASF73:
	.string	"list_end"
.LASF9:
	.string	"long int"
.LASF44:
	.string	"fixed_queue_try_remove_from_queue"
.LASF32:
	.string	"fixed_queue_length"
.LASF14:
	.string	"UINT8"
.LASF4:
	.string	"__uint8_t"
.LASF27:
	.string	"QueueHandle_t"
.LASF53:
	.string	"node"
.LASF24:
	.string	"dequeue_ready"
.LASF47:
	.string	"fixed_queue_enqueue"
.LASF5:
	.string	"unsigned char"
.LASF28:
	.string	"SemaphoreHandle_t"
.LASF38:
	.string	"__func__"
.LASF84:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\bt"
.LASF2:
	.string	"signed char"
.LASF68:
	.string	"list_back"
.LASF8:
	.string	"long long unsigned int"
.LASF18:
	.string	"fixed_queue_t"
.LASF55:
	.string	"fixed_queue_process"
.LASF0:
	.string	"unsigned int"
.LASF83:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/osi/fixed_queue.c"
.LASF67:
	.string	"list_remove"
.LASF1:
	.string	"short unsigned int"
.LASF66:
	.string	"list_front"
.LASF41:
	.string	"fixed_queue_try_dequeue"
.LASF12:
	.string	"char"
.LASF42:
	.string	"fixed_queue_try_peek_first"
.LASF34:
	.string	"is_empty"
.LASF30:
	.string	"osi_sem_t"
.LASF22:
	.string	"lock"
.LASF33:
	.string	"queue"
.LASF23:
	.string	"capacity"
.LASF15:
	.string	"_Bool"
.LASF37:
	.string	"data"
.LASF49:
	.string	"ready_cb"
.LASF11:
	.string	"long unsigned int"
.LASF31:
	.string	"fixed_queue_is_empty"
.LASF76:
	.string	"osi_mutex_free"
.LASF21:
	.string	"dequeue_sem"
.LASF43:
	.string	"fixed_queue_try_peek_last"
.LASF45:
	.string	"removed"
.LASF46:
	.string	"fixed_queue_get_list"
.LASF65:
	.string	"osi_sem_give"
.LASF85:
	.string	"error"
.LASF69:
	.string	"list_contains"
.LASF62:
	.string	"__assert_func"
.LASF50:
	.string	"fixed_queue_unregister_dequeue"
.LASF82:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF56:
	.string	"bd_addr_any"
.LASF59:
	.string	"list_is_empty"
.LASF39:
	.string	"fixed_queue_dequeue"
.LASF20:
	.string	"enqueue_sem"
.LASF79:
	.string	"osi_mutex_new"
.LASF54:
	.string	"fixed_queue_new"
.LASF80:
	.string	"list_new"
.LASF25:
	.string	"fixed_queue_free_cb"
.LASF52:
	.string	"free_cb"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
