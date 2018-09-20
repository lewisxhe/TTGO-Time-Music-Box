	.file	"controller.c"
	.text
.Ltext0:
	.section	.text.shut_down,"ax",@progbits
	.literal_position
	.literal .LC0, readable
	.align	4
	.type	shut_down, @function
shut_down:
.LFB27:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/device/controller.c"
	.loc 1 271 0
	entry	sp, 32
.LCFI0:
	.loc 1 272 0
	movi.n	a9, 0
	l32r	a8, .LC0
	s8i	a9, a8, 0
	retw.n
.LFE27:
	.size	shut_down, .-shut_down
	.section	.text.get_is_ready,"ax",@progbits
	.literal_position
	.literal .LC1, readable
	.align	4
	.type	get_is_ready, @function
get_is_ready:
.LFB28:
	.loc 1 276 0
	entry	sp, 32
.LCFI1:
	.loc 1 278 0
	l32r	a8, .LC1
	l8ui	a2, a8, 0
	retw.n
.LFE28:
	.size	get_is_ready, .-get_is_ready
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC3:
	.string	"readable"
	.align	4
.LC6:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/device/controller.c"
	.align	4
.LC9:
	.string	"ble_supported"
	.section	.text.set_ble_resolving_list_max_size,"ax",@progbits
	.literal_position
	.literal .LC2, readable
	.literal .LC4, .LC3
	.literal .LC5, __func__$8287
	.literal .LC7, .LC6
	.literal .LC8, ble_supported
	.literal .LC10, .LC9
	.literal .LC11, ble_resolving_list_max_size
	.align	4
	.type	set_ble_resolving_list_max_size, @function
set_ble_resolving_list_max_size:
.LFB57:
	.loc 1 462 0
.LVL0:
	entry	sp, 32
.LCFI2:
	.loc 1 463 0
	l32r	a8, .LC2
	l8ui	a8, a8, 0
	bnez.n	a8, .L4
	.loc 1 463 0 is_stmt 0 discriminator 1
	l32r	a13, .LC4
	l32r	a12, .LC5
	movi	a11, 0x1cf
	l32r	a10, .LC7
	call8	__assert_func
.LVL1:
.L4:
	.loc 1 464 0 is_stmt 1
	l32r	a8, .LC8
	l8ui	a8, a8, 0
	bnez.n	a8, .L5
	.loc 1 464 0 is_stmt 0 discriminator 1
	l32r	a13, .LC10
	l32r	a12, .LC5
	movi	a11, 0x1d0
	l32r	a10, .LC7
	call8	__assert_func
.LVL2:
.L5:
	.loc 1 465 0 is_stmt 1
	l32r	a8, .LC11
	s8i	a2, a8, 0
	retw.n
.LFE57:
	.size	set_ble_resolving_list_max_size, .-set_ble_resolving_list_max_size
	.section	.text.get_ble_resolving_list_max_size,"ax",@progbits
	.literal_position
	.literal .LC12, readable
	.literal .LC13, .LC3
	.literal .LC14, __func__$8283
	.literal .LC15, .LC6
	.literal .LC16, ble_supported
	.literal .LC17, .LC9
	.literal .LC18, ble_resolving_list_max_size
	.align	4
	.type	get_ble_resolving_list_max_size, @function
get_ble_resolving_list_max_size:
.LFB56:
	.loc 1 455 0
	entry	sp, 32
.LCFI3:
	.loc 1 456 0
	l32r	a8, .LC12
	l8ui	a8, a8, 0
	bnez.n	a8, .L7
	.loc 1 456 0 is_stmt 0 discriminator 1
	l32r	a13, .LC13
	l32r	a12, .LC14
	movi	a11, 0x1c8
	l32r	a10, .LC15
	call8	__assert_func
.LVL3:
.L7:
	.loc 1 457 0 is_stmt 1
	l32r	a8, .LC16
	l8ui	a8, a8, 0
	bnez.n	a8, .L8
	.loc 1 457 0 is_stmt 0 discriminator 1
	l32r	a13, .LC17
	l32r	a12, .LC14
	movi	a11, 0x1c9
	l32r	a10, .LC15
	call8	__assert_func
.LVL4:
.L8:
	.loc 1 459 0 is_stmt 1
	l32r	a8, .LC18
	l8ui	a2, a8, 0
	retw.n
.LFE56:
	.size	get_ble_resolving_list_max_size, .-get_ble_resolving_list_max_size
	.section	.text.get_ble_white_list_size,"ax",@progbits
	.literal_position
	.literal .LC19, readable
	.literal .LC20, .LC3
	.literal .LC21, __func__$8279
	.literal .LC22, .LC6
	.literal .LC23, ble_supported
	.literal .LC24, .LC9
	.literal .LC25, ble_white_list_size
	.align	4
	.type	get_ble_white_list_size, @function
get_ble_white_list_size:
.LFB55:
	.loc 1 448 0
	entry	sp, 32
.LCFI4:
	.loc 1 449 0
	l32r	a8, .LC19
	l8ui	a8, a8, 0
	bnez.n	a8, .L10
	.loc 1 449 0 is_stmt 0 discriminator 1
	l32r	a13, .LC20
	l32r	a12, .LC21
	movi	a11, 0x1c1
	l32r	a10, .LC22
	call8	__assert_func
.LVL5:
.L10:
	.loc 1 450 0 is_stmt 1
	l32r	a8, .LC23
	l8ui	a8, a8, 0
	bnez.n	a8, .L11
	.loc 1 450 0 is_stmt 0 discriminator 1
	l32r	a13, .LC24
	l32r	a12, .LC21
	movi	a11, 0x1c2
	l32r	a10, .LC22
	call8	__assert_func
.LVL6:
.L11:
	.loc 1 452 0 is_stmt 1
	l32r	a8, .LC25
	l8ui	a2, a8, 0
	retw.n
.LFE55:
	.size	get_ble_white_list_size, .-get_ble_white_list_size
	.section	.text.get_acl_buffer_count_ble,"ax",@progbits
	.literal_position
	.literal .LC26, readable
	.literal .LC27, .LC3
	.literal .LC28, __func__$8275
	.literal .LC29, .LC6
	.literal .LC30, ble_supported
	.literal .LC31, .LC9
	.literal .LC32, acl_buffer_count_ble
	.align	4
	.type	get_acl_buffer_count_ble, @function
get_acl_buffer_count_ble:
.LFB54:
	.loc 1 441 0
	entry	sp, 32
.LCFI5:
	.loc 1 442 0
	l32r	a8, .LC26
	l8ui	a8, a8, 0
	bnez.n	a8, .L13
	.loc 1 442 0 is_stmt 0 discriminator 1
	l32r	a13, .LC27
	l32r	a12, .LC28
	movi	a11, 0x1ba
	l32r	a10, .LC29
	call8	__assert_func
.LVL7:
.L13:
	.loc 1 443 0 is_stmt 1
	l32r	a8, .LC30
	l8ui	a8, a8, 0
	bnez.n	a8, .L14
	.loc 1 443 0 is_stmt 0 discriminator 1
	l32r	a13, .LC31
	l32r	a12, .LC28
	movi	a11, 0x1bb
	l32r	a10, .LC29
	call8	__assert_func
.LVL8:
.L14:
	.loc 1 445 0 is_stmt 1
	l32r	a8, .LC32
	l8ui	a2, a8, 0
	retw.n
.LFE54:
	.size	get_acl_buffer_count_ble, .-get_acl_buffer_count_ble
	.section	.text.get_acl_buffer_count_classic,"ax",@progbits
	.literal_position
	.literal .LC33, readable
	.literal .LC34, .LC3
	.literal .LC35, __func__$8271
	.literal .LC36, .LC6
	.literal .LC37, acl_buffer_count_classic
	.align	4
	.type	get_acl_buffer_count_classic, @function
get_acl_buffer_count_classic:
.LFB53:
	.loc 1 435 0
	entry	sp, 32
.LCFI6:
	.loc 1 436 0
	l32r	a8, .LC33
	l8ui	a8, a8, 0
	bnez.n	a8, .L16
	.loc 1 436 0 is_stmt 0 discriminator 1
	l32r	a13, .LC34
	l32r	a12, .LC35
	movi	a11, 0x1b4
	l32r	a10, .LC36
	call8	__assert_func
.LVL9:
.L16:
	.loc 1 438 0 is_stmt 1
	l32r	a8, .LC37
	l16ui	a2, a8, 0
	retw.n
.LFE53:
	.size	get_acl_buffer_count_classic, .-get_acl_buffer_count_classic
	.section	.text.get_ble_suggested_default_data_txtime,"ax",@progbits
	.literal_position
	.literal .LC38, readable
	.literal .LC39, .LC3
	.literal .LC40, __func__$8267
	.literal .LC41, .LC6
	.literal .LC42, ble_supported
	.literal .LC43, .LC9
	.literal .LC44, ble_suggested_default_data_txtime
	.align	4
	.type	get_ble_suggested_default_data_txtime, @function
get_ble_suggested_default_data_txtime:
.LFB52:
	.loc 1 428 0
	entry	sp, 32
.LCFI7:
	.loc 1 429 0
	l32r	a8, .LC38
	l8ui	a8, a8, 0
	bnez.n	a8, .L18
	.loc 1 429 0 is_stmt 0 discriminator 1
	l32r	a13, .LC39
	l32r	a12, .LC40
	movi	a11, 0x1ad
	l32r	a10, .LC41
	call8	__assert_func
.LVL10:
.L18:
	.loc 1 430 0 is_stmt 1
	l32r	a8, .LC42
	l8ui	a8, a8, 0
	bnez.n	a8, .L19
	.loc 1 430 0 is_stmt 0 discriminator 1
	l32r	a13, .LC43
	l32r	a12, .LC40
	movi	a11, 0x1ae
	l32r	a10, .LC41
	call8	__assert_func
.LVL11:
.L19:
	.loc 1 432 0 is_stmt 1
	l32r	a8, .LC44
	l16ui	a2, a8, 0
	retw.n
.LFE52:
	.size	get_ble_suggested_default_data_txtime, .-get_ble_suggested_default_data_txtime
	.section	.text.get_ble_suggested_default_data_length,"ax",@progbits
	.literal_position
	.literal .LC45, readable
	.literal .LC46, .LC3
	.literal .LC47, __func__$8263
	.literal .LC48, .LC6
	.literal .LC49, ble_supported
	.literal .LC50, .LC9
	.literal .LC51, ble_suggested_default_data_length
	.align	4
	.type	get_ble_suggested_default_data_length, @function
get_ble_suggested_default_data_length:
.LFB51:
	.loc 1 421 0
	entry	sp, 32
.LCFI8:
	.loc 1 422 0
	l32r	a8, .LC45
	l8ui	a8, a8, 0
	bnez.n	a8, .L21
	.loc 1 422 0 is_stmt 0 discriminator 1
	l32r	a13, .LC46
	l32r	a12, .LC47
	movi	a11, 0x1a6
	l32r	a10, .LC48
	call8	__assert_func
.LVL12:
.L21:
	.loc 1 423 0 is_stmt 1
	l32r	a8, .LC49
	l8ui	a8, a8, 0
	bnez.n	a8, .L22
	.loc 1 423 0 is_stmt 0 discriminator 1
	l32r	a13, .LC50
	l32r	a12, .LC47
	movi	a11, 0x1a7
	l32r	a10, .LC48
	call8	__assert_func
.LVL13:
.L22:
	.loc 1 425 0 is_stmt 1
	l32r	a8, .LC51
	l16ui	a2, a8, 0
	retw.n
.LFE51:
	.size	get_ble_suggested_default_data_length, .-get_ble_suggested_default_data_length
	.section	.text.get_acl_packet_size_ble,"ax",@progbits
	.literal_position
	.literal .LC52, readable
	.literal .LC53, .LC3
	.literal .LC54, __func__$8259
	.literal .LC55, .LC6
	.literal .LC56, acl_data_size_ble
	.align	4
	.type	get_acl_packet_size_ble, @function
get_acl_packet_size_ble:
.LFB50:
	.loc 1 415 0
	entry	sp, 32
.LCFI9:
	.loc 1 416 0
	l32r	a2, .LC52
	l8ui	a2, a2, 0
	bnez.n	a2, .L24
	.loc 1 416 0 is_stmt 0 discriminator 1
	l32r	a13, .LC53
	l32r	a12, .LC54
	movi	a11, 0x1a0
	l32r	a10, .LC55
	call8	__assert_func
.LVL14:
.L24:
	.loc 1 417 0 is_stmt 1
	l32r	a2, .LC56
	l16ui	a2, a2, 0
	addi.n	a2, a2, 4
	.loc 1 418 0
	extui	a2, a2, 0, 16
	retw.n
.LFE50:
	.size	get_acl_packet_size_ble, .-get_acl_packet_size_ble
	.section	.text.get_acl_packet_size_classic,"ax",@progbits
	.literal_position
	.literal .LC57, readable
	.literal .LC58, .LC3
	.literal .LC59, __func__$8255
	.literal .LC60, .LC6
	.literal .LC61, acl_data_size_classic
	.align	4
	.type	get_acl_packet_size_classic, @function
get_acl_packet_size_classic:
.LFB49:
	.loc 1 409 0
	entry	sp, 32
.LCFI10:
	.loc 1 410 0
	l32r	a2, .LC57
	l8ui	a2, a2, 0
	bnez.n	a2, .L26
	.loc 1 410 0 is_stmt 0 discriminator 1
	l32r	a13, .LC58
	l32r	a12, .LC59
	movi	a11, 0x19a
	l32r	a10, .LC60
	call8	__assert_func
.LVL15:
.L26:
	.loc 1 411 0 is_stmt 1
	l32r	a2, .LC61
	l16ui	a2, a2, 0
	addi.n	a2, a2, 4
	.loc 1 412 0
	extui	a2, a2, 0, 16
	retw.n
.LFE49:
	.size	get_acl_packet_size_classic, .-get_acl_packet_size_classic
	.section	.text.get_acl_data_size_ble,"ax",@progbits
	.literal_position
	.literal .LC62, readable
	.literal .LC63, .LC3
	.literal .LC64, __func__$8251
	.literal .LC65, .LC6
	.literal .LC66, ble_supported
	.literal .LC67, .LC9
	.literal .LC68, acl_data_size_ble
	.align	4
	.type	get_acl_data_size_ble, @function
get_acl_data_size_ble:
.LFB48:
	.loc 1 402 0
	entry	sp, 32
.LCFI11:
	.loc 1 403 0
	l32r	a8, .LC62
	l8ui	a8, a8, 0
	bnez.n	a8, .L28
	.loc 1 403 0 is_stmt 0 discriminator 1
	l32r	a13, .LC63
	l32r	a12, .LC64
	movi	a11, 0x193
	l32r	a10, .LC65
	call8	__assert_func
.LVL16:
.L28:
	.loc 1 404 0 is_stmt 1
	l32r	a8, .LC66
	l8ui	a8, a8, 0
	bnez.n	a8, .L29
	.loc 1 404 0 is_stmt 0 discriminator 1
	l32r	a13, .LC67
	l32r	a12, .LC64
	movi	a11, 0x194
	l32r	a10, .LC65
	call8	__assert_func
.LVL17:
.L29:
	.loc 1 406 0 is_stmt 1
	l32r	a8, .LC68
	l16ui	a2, a8, 0
	retw.n
.LFE48:
	.size	get_acl_data_size_ble, .-get_acl_data_size_ble
	.section	.text.get_acl_data_size_classic,"ax",@progbits
	.literal_position
	.literal .LC69, readable
	.literal .LC70, .LC3
	.literal .LC71, __func__$8247
	.literal .LC72, .LC6
	.literal .LC73, acl_data_size_classic
	.align	4
	.type	get_acl_data_size_classic, @function
get_acl_data_size_classic:
.LFB47:
	.loc 1 396 0
	entry	sp, 32
.LCFI12:
	.loc 1 397 0
	l32r	a8, .LC69
	l8ui	a8, a8, 0
	bnez.n	a8, .L31
	.loc 1 397 0 is_stmt 0 discriminator 1
	l32r	a13, .LC70
	l32r	a12, .LC71
	movi	a11, 0x18d
	l32r	a10, .LC72
	call8	__assert_func
.LVL18:
.L31:
	.loc 1 399 0 is_stmt 1
	l32r	a8, .LC73
	l16ui	a2, a8, 0
	retw.n
.LFE47:
	.size	get_acl_data_size_classic, .-get_acl_data_size_classic
	.section	.text.supports_ble_privacy,"ax",@progbits
	.literal_position
	.literal .LC74, readable
	.literal .LC75, .LC3
	.literal .LC76, __func__$8235
	.literal .LC77, .LC6
	.literal .LC78, ble_supported
	.literal .LC79, .LC9
	.literal .LC80, features_ble
	.align	4
	.type	supports_ble_privacy, @function
supports_ble_privacy:
.LFB44:
	.loc 1 375 0
	entry	sp, 32
.LCFI13:
	.loc 1 376 0
	l32r	a8, .LC74
	l8ui	a8, a8, 0
	bnez.n	a8, .L33
	.loc 1 376 0 is_stmt 0 discriminator 1
	l32r	a13, .LC75
	l32r	a12, .LC76
	movi	a11, 0x178
	l32r	a10, .LC77
	call8	__assert_func
.LVL19:
.L33:
	.loc 1 377 0 is_stmt 1
	l32r	a2, .LC78
	l8ui	a2, a2, 0
	bnez.n	a2, .L34
	.loc 1 377 0 is_stmt 0 discriminator 1
	l32r	a13, .LC79
	l32r	a12, .LC76
	movi	a11, 0x179
	l32r	a10, .LC77
	call8	__assert_func
.LVL20:
.L34:
	.loc 1 378 0 is_stmt 1
	l32r	a2, .LC80
	l8ui	a2, a2, 0
	.loc 1 379 0
	extui	a2, a2, 6, 1
	retw.n
.LFE44:
	.size	supports_ble_privacy, .-supports_ble_privacy
	.section	.text.supports_ble_connection_parameters_request,"ax",@progbits
	.literal_position
	.literal .LC81, readable
	.literal .LC82, .LC3
	.literal .LC83, __func__$8243
	.literal .LC84, .LC6
	.literal .LC85, ble_supported
	.literal .LC86, .LC9
	.literal .LC87, features_ble
	.align	4
	.type	supports_ble_connection_parameters_request, @function
supports_ble_connection_parameters_request:
.LFB46:
	.loc 1 389 0
	entry	sp, 32
.LCFI14:
	.loc 1 390 0
	l32r	a8, .LC81
	l8ui	a8, a8, 0
	bnez.n	a8, .L36
	.loc 1 390 0 is_stmt 0 discriminator 1
	l32r	a13, .LC82
	l32r	a12, .LC83
	movi	a11, 0x186
	l32r	a10, .LC84
	call8	__assert_func
.LVL21:
.L36:
	.loc 1 391 0 is_stmt 1
	l32r	a2, .LC85
	l8ui	a2, a2, 0
	bnez.n	a2, .L37
	.loc 1 391 0 is_stmt 0 discriminator 1
	l32r	a13, .LC86
	l32r	a12, .LC83
	movi	a11, 0x187
	l32r	a10, .LC84
	call8	__assert_func
.LVL22:
.L37:
	.loc 1 392 0 is_stmt 1
	l32r	a2, .LC87
	l8ui	a2, a2, 0
	.loc 1 393 0
	extui	a2, a2, 1, 1
	retw.n
.LFE46:
	.size	supports_ble_connection_parameters_request, .-supports_ble_connection_parameters_request
	.section	.text.supports_ble_packet_extension,"ax",@progbits
	.literal_position
	.literal .LC88, readable
	.literal .LC89, .LC3
	.literal .LC90, __func__$8239
	.literal .LC91, .LC6
	.literal .LC92, ble_supported
	.literal .LC93, .LC9
	.literal .LC94, features_ble
	.align	4
	.type	supports_ble_packet_extension, @function
supports_ble_packet_extension:
.LFB45:
	.loc 1 382 0
	entry	sp, 32
.LCFI15:
	.loc 1 383 0
	l32r	a8, .LC88
	l8ui	a8, a8, 0
	bnez.n	a8, .L39
	.loc 1 383 0 is_stmt 0 discriminator 1
	l32r	a13, .LC89
	l32r	a12, .LC90
	movi	a11, 0x17f
	l32r	a10, .LC91
	call8	__assert_func
.LVL23:
.L39:
	.loc 1 384 0 is_stmt 1
	l32r	a2, .LC92
	l8ui	a2, a2, 0
	bnez.n	a2, .L40
	.loc 1 384 0 is_stmt 0 discriminator 1
	l32r	a13, .LC93
	l32r	a12, .LC90
	movi	a11, 0x180
	l32r	a10, .LC91
	call8	__assert_func
.LVL24:
.L40:
	.loc 1 385 0 is_stmt 1
	l32r	a2, .LC94
	l8ui	a2, a2, 0
	.loc 1 386 0
	extui	a2, a2, 5, 1
	retw.n
.LFE45:
	.size	supports_ble_packet_extension, .-supports_ble_packet_extension
	.section	.text.supports_ble,"ax",@progbits
	.literal_position
	.literal .LC95, readable
	.literal .LC96, .LC3
	.literal .LC97, __func__$8231
	.literal .LC98, .LC6
	.literal .LC99, ble_supported
	.align	4
	.type	supports_ble, @function
supports_ble:
.LFB43:
	.loc 1 369 0
	entry	sp, 32
.LCFI16:
	.loc 1 370 0
	l32r	a8, .LC95
	l8ui	a8, a8, 0
	bnez.n	a8, .L42
	.loc 1 370 0 is_stmt 0 discriminator 1
	l32r	a13, .LC96
	l32r	a12, .LC97
	movi	a11, 0x172
	l32r	a10, .LC98
	call8	__assert_func
.LVL25:
.L42:
	.loc 1 372 0 is_stmt 1
	l32r	a8, .LC99
	l8ui	a2, a8, 0
	retw.n
.LFE43:
	.size	supports_ble, .-supports_ble
	.section	.text.supports_master_slave_role_switch,"ax",@progbits
	.literal_position
	.literal .LC100, readable
	.literal .LC101, .LC3
	.literal .LC102, __func__$8227
	.literal .LC103, .LC6
	.align	4
	.type	supports_master_slave_role_switch, @function
supports_master_slave_role_switch:
.LFB42:
	.loc 1 363 0
	entry	sp, 32
.LCFI17:
	.loc 1 364 0
	l32r	a8, .LC100
	l8ui	a8, a8, 0
	bnez.n	a8, .L44
	.loc 1 364 0 is_stmt 0 discriminator 1
	l32r	a13, .LC101
	l32r	a12, .LC102
	movi	a11, 0x16c
	l32r	a10, .LC103
	call8	__assert_func
.LVL26:
.L44:
	.loc 1 366 0 is_stmt 1
	movi.n	a2, 0
	retw.n
.LFE42:
	.size	supports_master_slave_role_switch, .-supports_master_slave_role_switch
	.section	.text.supports_extended_inquiry_response,"ax",@progbits
	.literal_position
	.literal .LC104, readable
	.literal .LC105, .LC3
	.literal .LC106, __func__$8223
	.literal .LC107, .LC6
	.literal .LC108, features_classic
	.align	4
	.type	supports_extended_inquiry_response, @function
supports_extended_inquiry_response:
.LFB41:
	.loc 1 357 0
	entry	sp, 32
.LCFI18:
	.loc 1 358 0
	l32r	a8, .LC104
	l8ui	a8, a8, 0
	bnez.n	a8, .L46
	.loc 1 358 0 is_stmt 0 discriminator 1
	l32r	a13, .LC105
	l32r	a12, .LC106
	movi	a11, 0x166
	l32r	a10, .LC107
	call8	__assert_func
.LVL27:
.L46:
	.loc 1 359 0 is_stmt 1
	l32r	a2, .LC108
	l8ui	a2, a2, 6
	.loc 1 360 0
	extui	a2, a2, 0, 1
	retw.n
.LFE41:
	.size	supports_extended_inquiry_response, .-supports_extended_inquiry_response
	.section	.text.supports_rssi_with_inquiry_results,"ax",@progbits
	.literal_position
	.literal .LC109, readable
	.literal .LC110, .LC3
	.literal .LC111, __func__$8219
	.literal .LC112, .LC6
	.literal .LC113, features_classic
	.align	4
	.type	supports_rssi_with_inquiry_results, @function
supports_rssi_with_inquiry_results:
.LFB40:
	.loc 1 351 0
	entry	sp, 32
.LCFI19:
	.loc 1 352 0
	l32r	a8, .LC109
	l8ui	a8, a8, 0
	bnez.n	a8, .L48
	.loc 1 352 0 is_stmt 0 discriminator 1
	l32r	a13, .LC110
	l32r	a12, .LC111
	movi	a11, 0x160
	l32r	a10, .LC112
	call8	__assert_func
.LVL28:
.L48:
	.loc 1 353 0 is_stmt 1
	l32r	a2, .LC113
	l8ui	a2, a2, 3
	.loc 1 354 0
	extui	a2, a2, 6, 1
	retw.n
.LFE40:
	.size	supports_rssi_with_inquiry_results, .-supports_rssi_with_inquiry_results
	.section	.text.supports_interlaced_inquiry_scan,"ax",@progbits
	.literal_position
	.literal .LC114, readable
	.literal .LC115, .LC3
	.literal .LC116, __func__$8215
	.literal .LC117, .LC6
	.literal .LC118, features_classic
	.align	4
	.type	supports_interlaced_inquiry_scan, @function
supports_interlaced_inquiry_scan:
.LFB39:
	.loc 1 345 0
	entry	sp, 32
.LCFI20:
	.loc 1 346 0
	l32r	a8, .LC114
	l8ui	a8, a8, 0
	bnez.n	a8, .L50
	.loc 1 346 0 is_stmt 0 discriminator 1
	l32r	a13, .LC115
	l32r	a12, .LC116
	movi	a11, 0x15a
	l32r	a10, .LC117
	call8	__assert_func
.LVL29:
.L50:
	.loc 1 347 0 is_stmt 1
	l32r	a2, .LC118
	l8ui	a2, a2, 3
	.loc 1 348 0
	extui	a2, a2, 4, 1
	retw.n
.LFE39:
	.size	supports_interlaced_inquiry_scan, .-supports_interlaced_inquiry_scan
	.section	.text.supports_reading_remote_extended_features,"ax",@progbits
	.literal_position
	.literal .LC119, readable
	.literal .LC120, .LC3
	.literal .LC121, __func__$8211
	.literal .LC122, .LC6
	.literal .LC123, supported_commands
	.align	4
	.type	supports_reading_remote_extended_features, @function
supports_reading_remote_extended_features:
.LFB38:
	.loc 1 339 0
	entry	sp, 32
.LCFI21:
	.loc 1 340 0
	l32r	a8, .LC119
	l8ui	a8, a8, 0
	bnez.n	a8, .L52
	.loc 1 340 0 is_stmt 0 discriminator 1
	l32r	a13, .LC120
	l32r	a12, .LC121
	movi	a11, 0x154
	l32r	a10, .LC122
	call8	__assert_func
.LVL30:
.L52:
	.loc 1 341 0 is_stmt 1
	l32r	a2, .LC123
	l8ui	a2, a2, 2
	.loc 1 342 0
	extui	a2, a2, 6, 1
	retw.n
.LFE38:
	.size	supports_reading_remote_extended_features, .-supports_reading_remote_extended_features
	.section	.text.supports_simultaneous_le_bredr,"ax",@progbits
	.literal_position
	.literal .LC124, readable
	.literal .LC125, .LC3
	.literal .LC126, __func__$8207
	.literal .LC127, .LC6
	.literal .LC128, features_classic
	.align	4
	.type	supports_simultaneous_le_bredr, @function
supports_simultaneous_le_bredr:
.LFB37:
	.loc 1 333 0
	entry	sp, 32
.LCFI22:
	.loc 1 334 0
	l32r	a8, .LC124
	l8ui	a8, a8, 0
	bnez.n	a8, .L54
	.loc 1 334 0 is_stmt 0 discriminator 1
	l32r	a13, .LC125
	l32r	a12, .LC126
	movi	a11, 0x14e
	l32r	a10, .LC127
	call8	__assert_func
.LVL31:
.L54:
	.loc 1 335 0 is_stmt 1
	l32r	a2, .LC128
	l8ui	a2, a2, 6
	.loc 1 336 0
	extui	a2, a2, 1, 1
	retw.n
.LFE37:
	.size	supports_simultaneous_le_bredr, .-supports_simultaneous_le_bredr
	.section	.text.supports_secure_connections,"ax",@progbits
	.literal_position
	.literal .LC129, readable
	.literal .LC130, .LC3
	.literal .LC131, __func__$8203
	.literal .LC132, .LC6
	.align	4
	.type	supports_secure_connections, @function
supports_secure_connections:
.LFB36:
	.loc 1 327 0
	entry	sp, 32
.LCFI23:
	.loc 1 328 0
	l32r	a8, .LC129
	l8ui	a8, a8, 0
	bnez.n	a8, .L56
	.loc 1 328 0 is_stmt 0 discriminator 1
	l32r	a13, .LC130
	l32r	a12, .LC131
	movi	a11, 0x148
	l32r	a10, .LC132
	call8	__assert_func
.LVL32:
.L56:
	.loc 1 330 0 is_stmt 1
	movi.n	a2, 0
	retw.n
.LFE36:
	.size	supports_secure_connections, .-supports_secure_connections
	.section	.text.supports_simple_pairing,"ax",@progbits
	.literal_position
	.literal .LC133, readable
	.literal .LC134, .LC3
	.literal .LC135, __func__$8199
	.literal .LC136, .LC6
	.literal .LC137, simple_pairing_supported
	.align	4
	.type	supports_simple_pairing, @function
supports_simple_pairing:
.LFB35:
	.loc 1 321 0
	entry	sp, 32
.LCFI24:
	.loc 1 322 0
	l32r	a8, .LC133
	l8ui	a8, a8, 0
	bnez.n	a8, .L58
	.loc 1 322 0 is_stmt 0 discriminator 1
	l32r	a13, .LC134
	l32r	a12, .LC135
	movi	a11, 0x142
	l32r	a10, .LC136
	call8	__assert_func
.LVL33:
.L58:
	.loc 1 324 0 is_stmt 1
	l32r	a8, .LC137
	l8ui	a2, a8, 0
	retw.n
.LFE35:
	.size	supports_simple_pairing, .-supports_simple_pairing
	.section	.text.get_ble_supported_states,"ax",@progbits
	.literal_position
	.literal .LC138, readable
	.literal .LC139, .LC3
	.literal .LC140, __func__$8195
	.literal .LC141, .LC6
	.literal .LC142, ble_supported
	.literal .LC143, .LC9
	.literal .LC144, ble_supported_states
	.align	4
	.type	get_ble_supported_states, @function
get_ble_supported_states:
.LFB34:
	.loc 1 314 0
	entry	sp, 32
.LCFI25:
	.loc 1 315 0
	l32r	a8, .LC138
	l8ui	a8, a8, 0
	bnez.n	a8, .L60
	.loc 1 315 0 is_stmt 0 discriminator 1
	l32r	a13, .LC139
	l32r	a12, .LC140
	movi	a11, 0x13b
	l32r	a10, .LC141
	call8	__assert_func
.LVL34:
.L60:
	.loc 1 316 0 is_stmt 1
	l32r	a8, .LC142
	l8ui	a8, a8, 0
	bnez.n	a8, .L61
	.loc 1 316 0 is_stmt 0 discriminator 1
	l32r	a13, .LC143
	l32r	a12, .LC140
	movi	a11, 0x13c
	l32r	a10, .LC141
	call8	__assert_func
.LVL35:
.L61:
	.loc 1 318 0 is_stmt 1
	l32r	a2, .LC144
	retw.n
.LFE34:
	.size	get_ble_supported_states, .-get_ble_supported_states
	.section	.text.get_features_ble,"ax",@progbits
	.literal_position
	.literal .LC145, readable
	.literal .LC146, .LC3
	.literal .LC147, __func__$8191
	.literal .LC148, .LC6
	.literal .LC149, ble_supported
	.literal .LC150, .LC9
	.literal .LC151, features_ble
	.align	4
	.type	get_features_ble, @function
get_features_ble:
.LFB33:
	.loc 1 307 0
	entry	sp, 32
.LCFI26:
	.loc 1 308 0
	l32r	a8, .LC145
	l8ui	a8, a8, 0
	bnez.n	a8, .L63
	.loc 1 308 0 is_stmt 0 discriminator 1
	l32r	a13, .LC146
	l32r	a12, .LC147
	movi	a11, 0x134
	l32r	a10, .LC148
	call8	__assert_func
.LVL36:
.L63:
	.loc 1 309 0 is_stmt 1
	l32r	a8, .LC149
	l8ui	a8, a8, 0
	bnez.n	a8, .L64
	.loc 1 309 0 is_stmt 0 discriminator 1
	l32r	a13, .LC150
	l32r	a12, .LC147
	movi	a11, 0x135
	l32r	a10, .LC148
	call8	__assert_func
.LVL37:
.L64:
	.loc 1 311 0 is_stmt 1
	l32r	a2, .LC151
	retw.n
.LFE33:
	.size	get_features_ble, .-get_features_ble
	.section	.text.get_last_features_classic_index,"ax",@progbits
	.literal_position
	.literal .LC152, readable
	.literal .LC153, .LC3
	.literal .LC154, __func__$8187
	.literal .LC155, .LC6
	.literal .LC156, last_features_classic_page_index
	.align	4
	.type	get_last_features_classic_index, @function
get_last_features_classic_index:
.LFB32:
	.loc 1 301 0
	entry	sp, 32
.LCFI27:
	.loc 1 302 0
	l32r	a8, .LC152
	l8ui	a8, a8, 0
	bnez.n	a8, .L66
	.loc 1 302 0 is_stmt 0 discriminator 1
	l32r	a13, .LC153
	l32r	a12, .LC154
	movi	a11, 0x12e
	l32r	a10, .LC155
	call8	__assert_func
.LVL38:
.L66:
	.loc 1 304 0 is_stmt 1
	l32r	a8, .LC156
	l8ui	a2, a8, 0
	retw.n
.LFE32:
	.size	get_last_features_classic_index, .-get_last_features_classic_index
	.section	.rodata.str1.4
	.align	4
.LC161:
	.string	"index < MAX_FEATURES_CLASSIC_PAGE_COUNT"
	.section	.text.get_features_classic,"ax",@progbits
	.literal_position
	.literal .LC157, readable
	.literal .LC158, .LC3
	.literal .LC159, __func__$8183
	.literal .LC160, .LC6
	.literal .LC162, .LC161
	.literal .LC163, features_classic
	.align	4
	.type	get_features_classic, @function
get_features_classic:
.LFB31:
	.loc 1 294 0
.LVL39:
	entry	sp, 32
.LCFI28:
	.loc 1 295 0
	l32r	a8, .LC157
	l8ui	a8, a8, 0
	bnez.n	a8, .L68
	.loc 1 295 0 is_stmt 0 discriminator 1
	l32r	a13, .LC158
	l32r	a12, .LC159
	movi	a11, 0x127
	l32r	a10, .LC160
	call8	__assert_func
.LVL40:
.L68:
	.loc 1 296 0 is_stmt 1
	blti	a2, 3, .L69
	.loc 1 296 0 is_stmt 0 discriminator 1
	l32r	a13, .LC162
	l32r	a12, .LC159
	movi	a11, 0x128
	l32r	a10, .LC160
	call8	__assert_func
.LVL41:
.L69:
	.loc 1 298 0 is_stmt 1
	l32r	a8, .LC163
	addx8	a2, a2, a8
.LVL42:
	retw.n
.LFE31:
	.size	get_features_classic, .-get_features_classic
	.section	.text.get_bt_version,"ax",@progbits
	.literal_position
	.literal .LC164, readable
	.literal .LC165, .LC3
	.literal .LC166, __func__$8179
	.literal .LC167, .LC6
	.literal .LC168, bt_version
	.align	4
	.type	get_bt_version, @function
get_bt_version:
.LFB30:
	.loc 1 287 0
	entry	sp, 32
.LCFI29:
	.loc 1 288 0
	l32r	a8, .LC164
	l8ui	a8, a8, 0
	bnez.n	a8, .L71
	.loc 1 288 0 is_stmt 0 discriminator 1
	l32r	a13, .LC165
	l32r	a12, .LC166
	movi	a11, 0x120
	l32r	a10, .LC167
	call8	__assert_func
.LVL43:
.L71:
	.loc 1 290 0 is_stmt 1
	l32r	a2, .LC168
	retw.n
.LFE30:
	.size	get_bt_version, .-get_bt_version
	.section	.text.get_address,"ax",@progbits
	.literal_position
	.literal .LC169, readable
	.literal .LC170, .LC3
	.literal .LC171, __func__$8175
	.literal .LC172, .LC6
	.literal .LC173, address
	.align	4
	.type	get_address, @function
get_address:
.LFB29:
	.loc 1 281 0
	entry	sp, 32
.LCFI30:
	.loc 1 282 0
	l32r	a8, .LC169
	l8ui	a8, a8, 0
	bnez.n	a8, .L73
	.loc 1 282 0 is_stmt 0 discriminator 1
	l32r	a13, .LC170
	l32r	a12, .LC171
	movi	a11, 0x11a
	l32r	a10, .LC172
	call8	__assert_func
.LVL44:
.L73:
	.loc 1 284 0 is_stmt 1
	l32r	a2, .LC173
	retw.n
.LFE29:
	.size	get_address, .-get_address
	.section	.rodata.str1.4
	.align	4
.LC186:
	.string	"page_number == 0"
	.section	.text.start_up,"ax",@progbits
	.literal_position
	.literal .LC174, hci
	.literal .LC175, packet_factory
	.literal .LC176, packet_parser
	.literal .LC177, sco_buffer_count
	.literal .LC178, sco_data_size
	.literal .LC179, acl_buffer_count_classic
	.literal .LC180, acl_data_size_classic
	.literal .LC181, bt_version
	.literal .LC182, address
	.literal .LC183, supported_commands
	.literal .LC184, features_classic
	.literal .LC185, last_features_classic_page_index
	.literal .LC187, .LC186
	.literal .LC188, __func__$8161
	.literal .LC189, .LC6
	.literal .LC190, simple_pairing_supported
	.literal .LC191, ble_supported
	.literal .LC192, ble_white_list_size
	.literal .LC193, acl_buffer_count_ble
	.literal .LC194, acl_data_size_ble
	.literal .LC195, ble_supported_states
	.literal .LC196, features_ble
	.literal .LC197, ble_resolving_list_max_size
	.literal .LC198, 2120
	.literal .LC199, ble_suggested_default_data_txtime
	.literal .LC200, ble_suggested_default_data_length
	.literal .LC201, BLE_EVENT_MASK
	.literal .LC202, CLASSIC_EVENT_MASK
	.literal .LC203, readable
	.align	4
	.type	start_up, @function
start_up:
.LFB26:
	.loc 1 85 0
	entry	sp, 48
.LCFI31:
	.loc 1 89 0
	l32r	a4, .LC174
	l32i.n	a2, a4, 0
	l32i.n	a2, a2, 8
	l32r	a3, .LC175
	l32i.n	a5, a3, 0
	l32i.n	a10, a5, 0
	callx8	a10
.LVL45:
	callx8	a2
.LVL46:
	call8	future_await
.LVL47:
	.loc 1 90 0
	l32r	a2, .LC176
	l32i.n	a5, a2, 0
	l32i.n	a5, a5, 0
	callx8	a5
.LVL48:
	.loc 1 93 0
	l32i.n	a5, a4, 0
	l32i.n	a5, a5, 8
	l32i.n	a8, a3, 0
	l32i.n	a10, a8, 4
	callx8	a10
.LVL49:
	callx8	a5
.LVL50:
	call8	future_await
.LVL51:
	.loc 1 94 0
	l32i.n	a5, a2, 0
	l32i.n	a5, a5, 4
	l32r	a14, .LC177
	l32r	a13, .LC178
	l32r	a12, .LC179
	l32r	a11, .LC180
	callx8	a5
.LVL52:
	.loc 1 100 0
	l32i.n	a5, a4, 0
	l32i.n	a5, a5, 8
	l32i.n	a8, a3, 0
	l32i.n	a8, a8, 8
	movi.n	a10, 1
	callx8	a8
.LVL53:
	callx8	a5
.LVL54:
	call8	future_await
.LVL55:
	.loc 1 101 0
	l32i.n	a5, a2, 0
	l32i.n	a5, a5, 0
	callx8	a5
.LVL56:
	.loc 1 106 0
	l32i.n	a5, a4, 0
	l32i.n	a5, a5, 8
	l32i.n	a8, a3, 0
	l32i.n	a8, a8, 12
	movi.n	a13, 0xa
	movi.n	a12, 0x14
	movi	a11, 0xff
	movi	a10, 0x69b
	callx8	a8
.LVL57:
	callx8	a5
.LVL58:
	call8	future_await
.LVL59:
	.loc 1 115 0
	l32i.n	a5, a2, 0
	l32i.n	a5, a5, 0
	callx8	a5
.LVL60:
	.loc 1 119 0
	l32i.n	a5, a4, 0
	l32i.n	a5, a5, 8
	l32i.n	a8, a3, 0
	l32i.n	a10, a8, 16
	callx8	a10
.LVL61:
	callx8	a5
.LVL62:
	call8	future_await
.LVL63:
	.loc 1 120 0
	l32i.n	a5, a2, 0
	l32i.n	a5, a5, 8
	l32r	a11, .LC181
	callx8	a5
.LVL64:
	.loc 1 123 0
	l32i.n	a5, a4, 0
	l32i.n	a5, a5, 8
	l32i.n	a8, a3, 0
	l32i.n	a10, a8, 20
	callx8	a10
.LVL65:
	callx8	a5
.LVL66:
	call8	future_await
.LVL67:
	.loc 1 124 0
	l32i.n	a5, a2, 0
	l32i.n	a5, a5, 12
	l32r	a11, .LC182
	callx8	a5
.LVL68:
	.loc 1 127 0
	l32i.n	a5, a4, 0
	l32i.n	a5, a5, 8
	l32i.n	a8, a3, 0
	l32i.n	a10, a8, 24
	callx8	a10
.LVL69:
	callx8	a5
.LVL70:
	call8	future_await
.LVL71:
	.loc 1 128 0
	l32i.n	a8, a2, 0
	l32i.n	a8, a8, 16
	movi.n	a12, 0x40
	l32r	a11, .LC183
	callx8	a8
.LVL72:
	.loc 1 135 0
	movi.n	a8, 0
	s8i	a8, sp, 0
	.loc 1 136 0
	l32i.n	a4, a4, 0
	l32i.n	a4, a4, 8
	l32i.n	a3, a3, 0
	l32i.n	a3, a3, 28
	movi.n	a10, 0
	callx8	a3
.LVL73:
	callx8	a4
.LVL74:
	call8	future_await
.LVL75:
	.loc 1 137 0
	l32i.n	a2, a2, 0
	l32i.n	a2, a2, 20
	movi.n	a14, 3
	l32r	a13, .LC184
	l32r	a12, .LC185
	mov.n	a11, sp
	callx8	a2
.LVL76:
	.loc 1 145 0
	l8ui	a2, sp, 0
	beqz.n	a2, .L75
	.loc 1 145 0 is_stmt 0 discriminator 1
	l32r	a13, .LC187
	l32r	a12, .LC188
	movi	a11, 0x91
	l32r	a10, .LC189
	call8	__assert_func
.LVL77:
.L75:
	.loc 1 146 0 is_stmt 1
	addi.n	a2, a2, 1
	s8i	a2, sp, 0
	.loc 1 152 0
	l32r	a2, .LC184
	l8ui	a2, a2, 6
	extui	a2, a2, 3, 1
	l32r	a3, .LC190
	s8i	a2, a3, 0
	.loc 1 153 0
	beqz.n	a2, .L76
	.loc 1 154 0
	l32r	a2, .LC174
	l32i.n	a2, a2, 0
	l32i.n	a2, a2, 8
	l32r	a3, .LC175
	l32i.n	a3, a3, 0
	l32i.n	a3, a3, 32
	movi.n	a10, 1
	callx8	a3
.LVL78:
	callx8	a2
.LVL79:
	call8	future_await
.LVL80:
	.loc 1 155 0
	l32r	a2, .LC176
	l32i.n	a2, a2, 0
	l32i.n	a2, a2, 0
	callx8	a2
.LVL81:
.L76:
	.loc 1 159 0
	l32r	a2, .LC184
	l8ui	a2, a2, 4
	bbci	a2, 6, .L78
.LBB2:
	.loc 1 160 0
	l32r	a2, .LC184
	l8ui	a11, a2, 6
.LVL82:
	.loc 1 161 0
	l32r	a2, .LC174
	l32i.n	a2, a2, 0
	l32i.n	a2, a2, 8
	l32r	a3, .LC175
	l32i.n	a3, a3, 0
	l32i.n	a3, a3, 44
	extui	a11, a11, 1, 1
.LVL83:
	movi.n	a10, 1
	callx8	a3
.LVL84:
	callx8	a2
.LVL85:
	call8	future_await
.LVL86:
	.loc 1 165 0
	l32r	a2, .LC176
	l32i.n	a2, a2, 0
	l32i.n	a2, a2, 0
	callx8	a2
.LVL87:
	j	.L78
.L80:
.LBE2:
	.loc 1 173 0
	l32r	a2, .LC174
	l32i.n	a2, a2, 0
	l32i.n	a2, a2, 8
	l32r	a8, .LC175
	l32i.n	a8, a8, 0
	l32i.n	a8, a8, 28
	callx8	a8
.LVL88:
	callx8	a2
.LVL89:
	call8	future_await
.LVL90:
	.loc 1 174 0
	l32r	a8, .LC176
	l32i.n	a8, a8, 0
	l32i.n	a8, a8, 20
	movi.n	a14, 3
	l32r	a13, .LC184
	l32r	a12, .LC185
	mov.n	a11, sp
	callx8	a8
.LVL91:
	.loc 1 182 0
	l8ui	a8, sp, 0
	addi.n	a8, a8, 1
	s8i	a8, sp, 0
.L78:
	.loc 1 171 0
	l8ui	a10, sp, 0
	l32r	a8, .LC185
	l8ui	a8, a8, 0
	bltu	a8, a10, .L79
	.loc 1 171 0 is_stmt 0 discriminator 1
	bltui	a10, 3, .L80
.L79:
	.loc 1 194 0 is_stmt 1
	beqz.n	a8, .L87
	.loc 1 194 0 is_stmt 0 discriminator 1
	l32r	a2, .LC184
	l8ui	a2, a2, 8
	bbsi	a2, 1, .L88
	.loc 1 194 0
	movi.n	a2, 0
	j	.L81
.L87:
	movi.n	a2, 0
	j	.L81
.L88:
	movi.n	a2, 1
.L81:
	.loc 1 194 0 discriminator 6
	l32r	a3, .LC191
	s8i	a2, a3, 0
	.loc 1 195 0 is_stmt 1 discriminator 6
	beqz.n	a2, .L82
	.loc 1 197 0
	l32r	a4, .LC174
	l32i.n	a2, a4, 0
	l32i.n	a2, a2, 8
	l32r	a3, .LC175
	l32i.n	a5, a3, 0
	l32i.n	a10, a5, 48
	callx8	a10
.LVL92:
	callx8	a2
.LVL93:
	call8	future_await
.LVL94:
	.loc 1 198 0
	l32r	a2, .LC176
	l32i.n	a5, a2, 0
	l32i.n	a5, a5, 24
	l32r	a11, .LC192
	callx8	a5
.LVL95:
	.loc 1 201 0
	l32i.n	a4, a4, 0
	l32i.n	a4, a4, 8
	l32i.n	a3, a3, 0
	l32i.n	a10, a3, 52
	callx8	a10
.LVL96:
	callx8	a4
.LVL97:
	call8	future_await
.LVL98:
	.loc 1 202 0
	l32i.n	a2, a2, 0
	l32i.n	a3, a2, 28
	l32r	a2, .LC194
	l32r	a12, .LC193
	mov.n	a11, a2
	callx8	a3
.LVL99:
	.loc 1 209 0
	l16ui	a2, a2, 0
	bnez.n	a2, .L83
	.loc 1 210 0
	l32r	a2, .LC180
	l16ui	a3, a2, 0
	l32r	a2, .LC194
	s16i	a3, a2, 0
.L83:
	.loc 1 214 0
	l32r	a4, .LC174
	l32i.n	a2, a4, 0
	l32i.n	a2, a2, 8
	l32r	a3, .LC175
	l32i.n	a5, a3, 0
	l32i.n	a10, a5, 56
	callx8	a10
.LVL100:
	callx8	a2
.LVL101:
	call8	future_await
.LVL102:
	.loc 1 215 0
	l32r	a2, .LC176
	l32i.n	a5, a2, 0
	l32i.n	a5, a5, 32
	movi.n	a12, 8
	l32r	a11, .LC195
	callx8	a5
.LVL103:
	.loc 1 222 0
	l32i.n	a4, a4, 0
	l32i.n	a4, a4, 8
	l32i.n	a3, a3, 0
	l32i.n	a10, a3, 60
	callx8	a10
.LVL104:
	callx8	a4
.LVL105:
	call8	future_await
.LVL106:
	.loc 1 223 0
	l32i.n	a2, a2, 0
	l32i.n	a3, a2, 36
	l32r	a2, .LC196
	mov.n	a11, a2
	callx8	a3
.LVL107:
	.loc 1 228 0
	l8ui	a2, a2, 0
	bbci	a2, 6, .L84
	.loc 1 229 0
	l32r	a2, .LC174
	l32i.n	a2, a2, 0
	l32i.n	a2, a2, 8
	l32r	a3, .LC175
	l32i.n	a3, a3, 0
	l32i	a10, a3, 64
	callx8	a10
.LVL108:
	callx8	a2
.LVL109:
	call8	future_await
.LVL110:
	.loc 1 230 0
	l32r	a2, .LC176
	l32i.n	a2, a2, 0
	l32i.n	a2, a2, 40
	l32r	a11, .LC197
	callx8	a2
.LVL111:
.L84:
	.loc 1 235 0
	l32r	a2, .LC196
	l8ui	a2, a2, 0
	bbci	a2, 5, .L85
	.loc 1 237 0
	l32r	a4, .LC174
	l32i.n	a2, a4, 0
	l32i.n	a2, a2, 8
	l32r	a3, .LC175
	l32i.n	a5, a3, 0
	l32i	a5, a5, 72
	l32r	a11, .LC198
	movi	a10, 0xfb
	callx8	a5
.LVL112:
	callx8	a2
.LVL113:
	call8	future_await
.LVL114:
	.loc 1 238 0
	l32r	a2, .LC176
	l32i.n	a5, a2, 0
	l32i.n	a5, a5, 0
	callx8	a5
.LVL115:
	.loc 1 240 0
	l32i.n	a4, a4, 0
	l32i.n	a4, a4, 8
	l32i.n	a3, a3, 0
	l32i	a10, a3, 68
	callx8	a10
.LVL116:
	callx8	a4
.LVL117:
	call8	future_await
.LVL118:
	.loc 1 241 0
	l32i.n	a2, a2, 0
	l32i.n	a2, a2, 44
	l32r	a12, .LC199
	l32r	a11, .LC200
	callx8	a2
.LVL119:
.L85:
	.loc 1 248 0
	l32r	a2, .LC174
	l32i.n	a2, a2, 0
	l32i.n	a2, a2, 8
	l32r	a3, .LC175
	l32i.n	a3, a3, 0
	l32i	a3, a3, 76
	l32r	a10, .LC201
	callx8	a3
.LVL120:
	callx8	a2
.LVL121:
	call8	future_await
.LVL122:
	.loc 1 249 0
	l32r	a2, .LC176
	l32i.n	a2, a2, 0
	l32i.n	a2, a2, 0
	callx8	a2
.LVL123:
.L82:
	.loc 1 253 0
	l32r	a2, .LC190
	l8ui	a2, a2, 0
	beqz.n	a2, .L86
	.loc 1 254 0
	l32r	a2, .LC174
	l32i.n	a2, a2, 0
	l32i.n	a2, a2, 8
	l32r	a3, .LC175
	l32i.n	a3, a3, 0
	l32i.n	a3, a3, 40
	l32r	a10, .LC202
	callx8	a3
.LVL124:
	callx8	a2
.LVL125:
	call8	future_await
.LVL126:
	.loc 1 255 0
	l32r	a2, .LC176
	l32i.n	a2, a2, 0
	l32i.n	a2, a2, 0
	callx8	a2
.LVL127:
.L86:
	.loc 1 265 0
	movi.n	a3, 1
	l32r	a2, .LC203
	s8i	a3, a2, 0
	retw.n
.LFE26:
	.size	start_up, .-start_up
	.section	.text.controller_get_interface,"ax",@progbits
	.literal_position
	.literal .LC204, loaded$8291
	.literal .LC205, hci
	.literal .LC206, packet_factory
	.literal .LC207, packet_parser
	.literal .LC208, interface
	.align	4
	.global	controller_get_interface
	.type	controller_get_interface, @function
controller_get_interface:
.LFB58:
	.loc 1 532 0
	entry	sp, 32
.LCFI32:
	.loc 1 534 0
	l32r	a8, .LC204
	l8ui	a8, a8, 0
	bnez.n	a8, .L90
	.loc 1 535 0
	movi.n	a9, 1
	l32r	a8, .LC204
	s8i	a9, a8, 0
	.loc 1 537 0
	call8	hci_layer_get_interface
.LVL128:
	l32r	a8, .LC205
	s32i.n	a10, a8, 0
	.loc 1 538 0
	call8	hci_packet_factory_get_interface
.LVL129:
	l32r	a8, .LC206
	s32i.n	a10, a8, 0
	.loc 1 539 0
	call8	hci_packet_parser_get_interface
.LVL130:
	l32r	a8, .LC207
	s32i.n	a10, a8, 0
.L90:
	.loc 1 543 0
	l32r	a2, .LC208
	retw.n
.LFE58:
	.size	controller_get_interface, .-controller_get_interface
	.section	.rodata.__func__$8161,"a",@progbits
	.align	4
	.type	__func__$8161, @object
	.size	__func__$8161, 9
__func__$8161:
	.string	"start_up"
	.section	.rodata.__func__$8175,"a",@progbits
	.align	4
	.type	__func__$8175, @object
	.size	__func__$8175, 12
__func__$8175:
	.string	"get_address"
	.section	.rodata.__func__$8179,"a",@progbits
	.align	4
	.type	__func__$8179, @object
	.size	__func__$8179, 15
__func__$8179:
	.string	"get_bt_version"
	.section	.rodata.__func__$8183,"a",@progbits
	.align	4
	.type	__func__$8183, @object
	.size	__func__$8183, 21
__func__$8183:
	.string	"get_features_classic"
	.section	.rodata.__func__$8187,"a",@progbits
	.align	4
	.type	__func__$8187, @object
	.size	__func__$8187, 32
__func__$8187:
	.string	"get_last_features_classic_index"
	.section	.rodata.__func__$8191,"a",@progbits
	.align	4
	.type	__func__$8191, @object
	.size	__func__$8191, 17
__func__$8191:
	.string	"get_features_ble"
	.section	.rodata.__func__$8195,"a",@progbits
	.align	4
	.type	__func__$8195, @object
	.size	__func__$8195, 25
__func__$8195:
	.string	"get_ble_supported_states"
	.section	.rodata.__func__$8199,"a",@progbits
	.align	4
	.type	__func__$8199, @object
	.size	__func__$8199, 24
__func__$8199:
	.string	"supports_simple_pairing"
	.section	.rodata.__func__$8203,"a",@progbits
	.align	4
	.type	__func__$8203, @object
	.size	__func__$8203, 28
__func__$8203:
	.string	"supports_secure_connections"
	.section	.rodata.__func__$8207,"a",@progbits
	.align	4
	.type	__func__$8207, @object
	.size	__func__$8207, 31
__func__$8207:
	.string	"supports_simultaneous_le_bredr"
	.section	.rodata.__func__$8211,"a",@progbits
	.align	4
	.type	__func__$8211, @object
	.size	__func__$8211, 42
__func__$8211:
	.string	"supports_reading_remote_extended_features"
	.section	.rodata.__func__$8215,"a",@progbits
	.align	4
	.type	__func__$8215, @object
	.size	__func__$8215, 33
__func__$8215:
	.string	"supports_interlaced_inquiry_scan"
	.section	.rodata.__func__$8219,"a",@progbits
	.align	4
	.type	__func__$8219, @object
	.size	__func__$8219, 35
__func__$8219:
	.string	"supports_rssi_with_inquiry_results"
	.section	.rodata.__func__$8223,"a",@progbits
	.align	4
	.type	__func__$8223, @object
	.size	__func__$8223, 35
__func__$8223:
	.string	"supports_extended_inquiry_response"
	.section	.rodata.__func__$8227,"a",@progbits
	.align	4
	.type	__func__$8227, @object
	.size	__func__$8227, 34
__func__$8227:
	.string	"supports_master_slave_role_switch"
	.section	.rodata.__func__$8231,"a",@progbits
	.align	4
	.type	__func__$8231, @object
	.size	__func__$8231, 13
__func__$8231:
	.string	"supports_ble"
	.section	.rodata.__func__$8239,"a",@progbits
	.align	4
	.type	__func__$8239, @object
	.size	__func__$8239, 30
__func__$8239:
	.string	"supports_ble_packet_extension"
	.section	.rodata.__func__$8243,"a",@progbits
	.align	4
	.type	__func__$8243, @object
	.size	__func__$8243, 43
__func__$8243:
	.string	"supports_ble_connection_parameters_request"
	.section	.rodata.__func__$8235,"a",@progbits
	.align	4
	.type	__func__$8235, @object
	.size	__func__$8235, 21
__func__$8235:
	.string	"supports_ble_privacy"
	.section	.rodata.__func__$8247,"a",@progbits
	.align	4
	.type	__func__$8247, @object
	.size	__func__$8247, 26
__func__$8247:
	.string	"get_acl_data_size_classic"
	.section	.rodata.__func__$8251,"a",@progbits
	.align	4
	.type	__func__$8251, @object
	.size	__func__$8251, 22
__func__$8251:
	.string	"get_acl_data_size_ble"
	.section	.rodata.__func__$8255,"a",@progbits
	.align	4
	.type	__func__$8255, @object
	.size	__func__$8255, 28
__func__$8255:
	.string	"get_acl_packet_size_classic"
	.section	.rodata.__func__$8259,"a",@progbits
	.align	4
	.type	__func__$8259, @object
	.size	__func__$8259, 24
__func__$8259:
	.string	"get_acl_packet_size_ble"
	.section	.rodata.__func__$8263,"a",@progbits
	.align	4
	.type	__func__$8263, @object
	.size	__func__$8263, 38
__func__$8263:
	.string	"get_ble_suggested_default_data_length"
	.section	.rodata.__func__$8267,"a",@progbits
	.align	4
	.type	__func__$8267, @object
	.size	__func__$8267, 38
__func__$8267:
	.string	"get_ble_suggested_default_data_txtime"
	.section	.rodata.__func__$8271,"a",@progbits
	.align	4
	.type	__func__$8271, @object
	.size	__func__$8271, 29
__func__$8271:
	.string	"get_acl_buffer_count_classic"
	.section	.rodata.__func__$8275,"a",@progbits
	.align	4
	.type	__func__$8275, @object
	.size	__func__$8275, 25
__func__$8275:
	.string	"get_acl_buffer_count_ble"
	.section	.rodata.__func__$8279,"a",@progbits
	.align	4
	.type	__func__$8279, @object
	.size	__func__$8279, 24
__func__$8279:
	.string	"get_ble_white_list_size"
	.section	.rodata.__func__$8283,"a",@progbits
	.align	4
	.type	__func__$8283, @object
	.size	__func__$8283, 32
__func__$8283:
	.string	"get_ble_resolving_list_max_size"
	.section	.rodata.__func__$8287,"a",@progbits
	.align	4
	.type	__func__$8287, @object
	.size	__func__$8287, 32
__func__$8287:
	.string	"set_ble_resolving_list_max_size"
	.section	.bss.loaded$8291,"aw",@nobits
	.type	loaded$8291, @object
	.size	loaded$8291, 1
loaded$8291:
	.zero	1
	.section	.rodata.interface,"a",@progbits
	.align	4
	.type	interface, @object
	.size	interface, 128
interface:
	.word	start_up
	.word	shut_down
	.word	get_is_ready
	.word	get_address
	.word	get_bt_version
	.word	get_features_classic
	.word	get_last_features_classic_index
	.word	get_features_ble
	.word	get_ble_supported_states
	.word	supports_simple_pairing
	.word	supports_secure_connections
	.word	supports_simultaneous_le_bredr
	.word	supports_reading_remote_extended_features
	.word	supports_interlaced_inquiry_scan
	.word	supports_rssi_with_inquiry_results
	.word	supports_extended_inquiry_response
	.word	supports_master_slave_role_switch
	.word	supports_ble
	.word	supports_ble_packet_extension
	.word	supports_ble_connection_parameters_request
	.word	supports_ble_privacy
	.word	get_acl_data_size_classic
	.word	get_acl_data_size_ble
	.word	get_acl_packet_size_classic
	.word	get_acl_packet_size_ble
	.word	get_ble_suggested_default_data_length
	.word	get_ble_suggested_default_data_txtime
	.word	get_acl_buffer_count_classic
	.word	get_acl_buffer_count_ble
	.word	get_ble_white_list_size
	.word	get_ble_resolving_list_max_size
	.word	set_ble_resolving_list_max_size
	.section	.bss.simple_pairing_supported,"aw",@nobits
	.type	simple_pairing_supported, @object
	.size	simple_pairing_supported, 1
simple_pairing_supported:
	.zero	1
	.section	.bss.ble_supported,"aw",@nobits
	.type	ble_supported, @object
	.size	ble_supported, 1
ble_supported:
	.zero	1
	.section	.bss.readable,"aw",@nobits
	.type	readable, @object
	.size	readable, 1
readable:
	.zero	1
	.section	.bss.ble_suggested_default_data_txtime,"aw",@nobits
	.align	2
	.type	ble_suggested_default_data_txtime, @object
	.size	ble_suggested_default_data_txtime, 2
ble_suggested_default_data_txtime:
	.zero	2
	.section	.bss.ble_suggested_default_data_length,"aw",@nobits
	.align	2
	.type	ble_suggested_default_data_length, @object
	.size	ble_suggested_default_data_length, 2
ble_suggested_default_data_length:
	.zero	2
	.section	.bss.features_ble,"aw",@nobits
	.align	4
	.type	features_ble, @object
	.size	features_ble, 8
features_ble:
	.zero	8
	.section	.bss.ble_supported_states,"aw",@nobits
	.align	4
	.type	ble_supported_states, @object
	.size	ble_supported_states, 8
ble_supported_states:
	.zero	8
	.section	.bss.ble_resolving_list_max_size,"aw",@nobits
	.type	ble_resolving_list_max_size, @object
	.size	ble_resolving_list_max_size, 1
ble_resolving_list_max_size:
	.zero	1
	.section	.bss.ble_white_list_size,"aw",@nobits
	.type	ble_white_list_size, @object
	.size	ble_white_list_size, 1
ble_white_list_size:
	.zero	1
	.section	.bss.sco_buffer_count,"aw",@nobits
	.align	2
	.type	sco_buffer_count, @object
	.size	sco_buffer_count, 2
sco_buffer_count:
	.zero	2
	.section	.bss.sco_data_size,"aw",@nobits
	.type	sco_data_size, @object
	.size	sco_data_size, 1
sco_data_size:
	.zero	1
	.section	.bss.acl_buffer_count_ble,"aw",@nobits
	.type	acl_buffer_count_ble, @object
	.size	acl_buffer_count_ble, 1
acl_buffer_count_ble:
	.zero	1
	.section	.bss.acl_buffer_count_classic,"aw",@nobits
	.align	2
	.type	acl_buffer_count_classic, @object
	.size	acl_buffer_count_classic, 2
acl_buffer_count_classic:
	.zero	2
	.section	.bss.acl_data_size_ble,"aw",@nobits
	.align	2
	.type	acl_data_size_ble, @object
	.size	acl_data_size_ble, 2
acl_data_size_ble:
	.zero	2
	.section	.bss.acl_data_size_classic,"aw",@nobits
	.align	2
	.type	acl_data_size_classic, @object
	.size	acl_data_size_classic, 2
acl_data_size_classic:
	.zero	2
	.section	.bss.last_features_classic_page_index,"aw",@nobits
	.type	last_features_classic_page_index, @object
	.size	last_features_classic_page_index, 1
last_features_classic_page_index:
	.zero	1
	.section	.bss.features_classic,"aw",@nobits
	.align	4
	.type	features_classic, @object
	.size	features_classic, 24
features_classic:
	.zero	24
	.section	.bss.supported_commands,"aw",@nobits
	.align	4
	.type	supported_commands, @object
	.size	supported_commands, 64
supported_commands:
	.zero	64
	.section	.bss.bt_version,"aw",@nobits
	.align	4
	.type	bt_version, @object
	.size	bt_version, 10
bt_version:
	.zero	10
	.section	.bss.address,"aw",@nobits
	.align	4
	.type	address, @object
	.size	address, 6
address:
	.zero	6
	.section	.bss.packet_parser,"aw",@nobits
	.align	4
	.type	packet_parser, @object
	.size	packet_parser, 4
packet_parser:
	.zero	4
	.section	.bss.packet_factory,"aw",@nobits
	.align	4
	.type	packet_factory, @object
	.size	packet_factory, 4
packet_factory:
	.zero	4
	.section	.bss.hci,"aw",@nobits
	.align	4
	.type	hci, @object
	.size	hci, 4
hci:
	.zero	4
	.global	SCO_HOST_BUFFER_SIZE
	.section	.rodata.SCO_HOST_BUFFER_SIZE,"a",@progbits
	.type	SCO_HOST_BUFFER_SIZE, @object
	.size	SCO_HOST_BUFFER_SIZE, 1
SCO_HOST_BUFFER_SIZE:
	.byte	-1
	.global	CLASSIC_EVENT_MASK
	.section	.rodata.CLASSIC_EVENT_MASK,"a",@progbits
	.align	4
	.type	CLASSIC_EVENT_MASK, @object
	.size	CLASSIC_EVENT_MASK, 8
CLASSIC_EVENT_MASK:
	.ascii	"=\277\377\377\377\377\377\377"
	.global	BLE_EVENT_MASK
	.section	.rodata.BLE_EVENT_MASK,"a",@progbits
	.align	4
	.type	BLE_EVENT_MASK, @object
	.size	BLE_EVENT_MASK, 8
BLE_EVENT_MASK:
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.ascii	"\006\177"
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
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI0-.LFB27
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI1-.LFB28
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.byte	0x4
	.4byte	.LCFI2-.LFB57
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.byte	0x4
	.4byte	.LCFI3-.LFB56
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.byte	0x4
	.4byte	.LCFI4-.LFB55
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.byte	0x4
	.4byte	.LCFI5-.LFB54
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.byte	0x4
	.4byte	.LCFI6-.LFB53
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.byte	0x4
	.4byte	.LCFI7-.LFB52
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.byte	0x4
	.4byte	.LCFI8-.LFB51
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.byte	0x4
	.4byte	.LCFI9-.LFB50
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.byte	0x4
	.4byte	.LCFI10-.LFB49
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.byte	0x4
	.4byte	.LCFI11-.LFB48
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.byte	0x4
	.4byte	.LCFI12-.LFB47
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.byte	0x4
	.4byte	.LCFI13-.LFB44
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.byte	0x4
	.4byte	.LCFI14-.LFB46
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.byte	0x4
	.4byte	.LCFI15-.LFB45
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.byte	0x4
	.4byte	.LCFI16-.LFB43
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.byte	0x4
	.4byte	.LCFI17-.LFB42
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.byte	0x4
	.4byte	.LCFI18-.LFB41
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE36:
.LSFDE38:
	.4byte	.LEFDE38-.LASFDE38
.LASFDE38:
	.4byte	.Lframe0
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.byte	0x4
	.4byte	.LCFI19-.LFB40
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE38:
.LSFDE40:
	.4byte	.LEFDE40-.LASFDE40
.LASFDE40:
	.4byte	.Lframe0
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.byte	0x4
	.4byte	.LCFI20-.LFB39
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE40:
.LSFDE42:
	.4byte	.LEFDE42-.LASFDE42
.LASFDE42:
	.4byte	.Lframe0
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.byte	0x4
	.4byte	.LCFI21-.LFB38
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE42:
.LSFDE44:
	.4byte	.LEFDE44-.LASFDE44
.LASFDE44:
	.4byte	.Lframe0
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.byte	0x4
	.4byte	.LCFI22-.LFB37
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE44:
.LSFDE46:
	.4byte	.LEFDE46-.LASFDE46
.LASFDE46:
	.4byte	.Lframe0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x4
	.4byte	.LCFI23-.LFB36
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE46:
.LSFDE48:
	.4byte	.LEFDE48-.LASFDE48
.LASFDE48:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x4
	.4byte	.LCFI24-.LFB35
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE48:
.LSFDE50:
	.4byte	.LEFDE50-.LASFDE50
.LASFDE50:
	.4byte	.Lframe0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI25-.LFB34
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE50:
.LSFDE52:
	.4byte	.LEFDE52-.LASFDE52
.LASFDE52:
	.4byte	.Lframe0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI26-.LFB33
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE52:
.LSFDE54:
	.4byte	.LEFDE54-.LASFDE54
.LASFDE54:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI27-.LFB32
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE54:
.LSFDE56:
	.4byte	.LEFDE56-.LASFDE56
.LASFDE56:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI28-.LFB31
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE56:
.LSFDE58:
	.4byte	.LEFDE58-.LASFDE58
.LASFDE58:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI29-.LFB30
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE58:
.LSFDE60:
	.4byte	.LEFDE60-.LASFDE60
.LASFDE60:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI30-.LFB29
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE60:
.LSFDE62:
	.4byte	.LEFDE62-.LASFDE62
.LASFDE62:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI31-.LFB26
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE62:
.LSFDE64:
	.4byte	.LEFDE64-.LASFDE64
.LASFDE64:
	.4byte	.Lframe0
	.4byte	.LFB58
	.4byte	.LFE58-.LFB58
	.byte	0x4
	.4byte	.LCFI32-.LFB58
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE64:
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/bt_types.h"
	.file 5 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/common/include/common/bt_defs.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/device/include/device/device_features.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/queue.h"
	.file 9 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/semphr.h"
	.file 10 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/osi/include/osi/semaphore.h"
	.file 11 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/osi/include/osi/future.h"
	.file 12 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/device/include/device/controller.h"
	.file 13 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/hci/include/hci/hci_layer.h"
	.file 14 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/device/include/device/event_mask.h"
	.file 15 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/hci/include/hci/hci_packet_factory.h"
	.file 16 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/device/include/device/version.h"
	.file 17 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/hci/include/hci/hci_packet_parser.h"
	.file 18 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
	.file 19 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/assert.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1fc8
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF217
	.byte	0xc
	.4byte	.LASF218
	.4byte	.LASF219
	.4byte	.Ldebug_ranges0+0
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
	.byte	0x21
	.4byte	0x45
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
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x4
	.byte	0x23
	.4byte	0x94
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF15
	.uleb128 0x5
	.byte	0x8
	.byte	0x4
	.byte	0xc6
	.4byte	0x101
	.uleb128 0x6
	.4byte	.LASF16
	.byte	0x4
	.byte	0xc7
	.4byte	0x89
	.byte	0
	.uleb128 0x7
	.string	"len"
	.byte	0x4
	.byte	0xc8
	.4byte	0x89
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF17
	.byte	0x4
	.byte	0xc9
	.4byte	0x89
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF18
	.byte	0x4
	.byte	0xca
	.4byte	0x89
	.byte	0x6
	.uleb128 0x6
	.4byte	.LASF19
	.byte	0x4
	.byte	0xcb
	.4byte	0x101
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.4byte	0x7e
	.4byte	0x110
	.uleb128 0x9
	.4byte	0x110
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF20
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x4
	.byte	0xcc
	.4byte	0xbc
	.uleb128 0x8
	.4byte	0x9f
	.4byte	0x132
	.uleb128 0xa
	.4byte	0x110
	.byte	0x5
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF22
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x5
	.byte	0xd8
	.4byte	0x69
	.uleb128 0xb
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF24
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF25
	.uleb128 0xc
	.byte	0x4
	.4byte	0x15a
	.uleb128 0xd
	.uleb128 0xe
	.4byte	0x166
	.uleb128 0xf
	.4byte	0x57
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x15b
	.uleb128 0x5
	.byte	0x6
	.byte	0x6
	.byte	0x3b
	.4byte	0x181
	.uleb128 0x6
	.4byte	.LASF26
	.byte	0x6
	.byte	0x3c
	.4byte	0x181
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0x7e
	.4byte	0x191
	.uleb128 0xa
	.4byte	0x110
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x6
	.byte	0x3d
	.4byte	0x16c
	.uleb128 0x5
	.byte	0x8
	.byte	0x7
	.byte	0x19
	.4byte	0x1b1
	.uleb128 0x6
	.4byte	.LASF28
	.byte	0x7
	.byte	0x1a
	.4byte	0x1b1
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0x7e
	.4byte	0x1c1
	.uleb128 0xa
	.4byte	0x110
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.4byte	.LASF29
	.byte	0x7
	.byte	0x1b
	.4byte	0x19c
	.uleb128 0xc
	.byte	0x4
	.4byte	0x89
	.uleb128 0x3
	.4byte	.LASF30
	.byte	0x8
	.byte	0x58
	.4byte	0x144
	.uleb128 0x3
	.4byte	.LASF31
	.byte	0x9
	.byte	0x4f
	.4byte	0x1d2
	.uleb128 0x3
	.4byte	.LASF32
	.byte	0xa
	.byte	0x1d
	.4byte	0x1dd
	.uleb128 0x10
	.4byte	.LASF37
	.byte	0xc
	.byte	0xb
	.byte	0x18
	.4byte	0x224
	.uleb128 0x6
	.4byte	.LASF33
	.byte	0xb
	.byte	0x19
	.4byte	0xb5
	.byte	0
	.uleb128 0x6
	.4byte	.LASF34
	.byte	0xb
	.byte	0x1a
	.4byte	0x1e8
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF35
	.byte	0xb
	.byte	0x1b
	.4byte	0x144
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF36
	.byte	0xb
	.byte	0x1d
	.4byte	0x1f3
	.uleb128 0x10
	.4byte	.LASF38
	.byte	0x80
	.byte	0xc
	.byte	0x20
	.4byte	0x3bc
	.uleb128 0x6
	.4byte	.LASF39
	.byte	0xc
	.byte	0x21
	.4byte	0x154
	.byte	0
	.uleb128 0x6
	.4byte	.LASF40
	.byte	0xc
	.byte	0x22
	.4byte	0x154
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF41
	.byte	0xc
	.byte	0x23
	.4byte	0x88b
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF42
	.byte	0xc
	.byte	0x25
	.4byte	0x8a1
	.byte	0xc
	.uleb128 0x6
	.4byte	.LASF43
	.byte	0xc
	.byte	0x26
	.4byte	0x8b7
	.byte	0x10
	.uleb128 0x6
	.4byte	.LASF44
	.byte	0xc
	.byte	0x28
	.4byte	0x8d7
	.byte	0x14
	.uleb128 0x6
	.4byte	.LASF45
	.byte	0xc
	.byte	0x2a
	.4byte	0x8e2
	.byte	0x18
	.uleb128 0x6
	.4byte	.LASF46
	.byte	0xc
	.byte	0x2c
	.4byte	0x8ed
	.byte	0x1c
	.uleb128 0x6
	.4byte	.LASF47
	.byte	0xc
	.byte	0x2d
	.4byte	0x903
	.byte	0x20
	.uleb128 0x6
	.4byte	.LASF48
	.byte	0xc
	.byte	0x2f
	.4byte	0x88b
	.byte	0x24
	.uleb128 0x6
	.4byte	.LASF49
	.byte	0xc
	.byte	0x30
	.4byte	0x88b
	.byte	0x28
	.uleb128 0x6
	.4byte	.LASF50
	.byte	0xc
	.byte	0x31
	.4byte	0x88b
	.byte	0x2c
	.uleb128 0x6
	.4byte	.LASF51
	.byte	0xc
	.byte	0x32
	.4byte	0x88b
	.byte	0x30
	.uleb128 0x6
	.4byte	.LASF52
	.byte	0xc
	.byte	0x33
	.4byte	0x88b
	.byte	0x34
	.uleb128 0x6
	.4byte	.LASF53
	.byte	0xc
	.byte	0x34
	.4byte	0x88b
	.byte	0x38
	.uleb128 0x6
	.4byte	.LASF54
	.byte	0xc
	.byte	0x35
	.4byte	0x88b
	.byte	0x3c
	.uleb128 0x6
	.4byte	.LASF55
	.byte	0xc
	.byte	0x36
	.4byte	0x88b
	.byte	0x40
	.uleb128 0x6
	.4byte	.LASF56
	.byte	0xc
	.byte	0x38
	.4byte	0x88b
	.byte	0x44
	.uleb128 0x6
	.4byte	.LASF57
	.byte	0xc
	.byte	0x39
	.4byte	0x88b
	.byte	0x48
	.uleb128 0x6
	.4byte	.LASF58
	.byte	0xc
	.byte	0x3a
	.4byte	0x88b
	.byte	0x4c
	.uleb128 0x6
	.4byte	.LASF59
	.byte	0xc
	.byte	0x3b
	.4byte	0x88b
	.byte	0x50
	.uleb128 0x6
	.4byte	.LASF60
	.byte	0xc
	.byte	0x3e
	.4byte	0x90e
	.byte	0x54
	.uleb128 0x6
	.4byte	.LASF61
	.byte	0xc
	.byte	0x3f
	.4byte	0x90e
	.byte	0x58
	.uleb128 0x6
	.4byte	.LASF62
	.byte	0xc
	.byte	0x44
	.4byte	0x90e
	.byte	0x5c
	.uleb128 0x6
	.4byte	.LASF63
	.byte	0xc
	.byte	0x45
	.4byte	0x90e
	.byte	0x60
	.uleb128 0x6
	.4byte	.LASF64
	.byte	0xc
	.byte	0x47
	.4byte	0x90e
	.byte	0x64
	.uleb128 0x6
	.4byte	.LASF65
	.byte	0xc
	.byte	0x48
	.4byte	0x90e
	.byte	0x68
	.uleb128 0x6
	.4byte	.LASF66
	.byte	0xc
	.byte	0x4b
	.4byte	0x90e
	.byte	0x6c
	.uleb128 0x6
	.4byte	.LASF67
	.byte	0xc
	.byte	0x4c
	.4byte	0x8e2
	.byte	0x70
	.uleb128 0x6
	.4byte	.LASF68
	.byte	0xc
	.byte	0x4e
	.4byte	0x8e2
	.byte	0x74
	.uleb128 0x6
	.4byte	.LASF69
	.byte	0xc
	.byte	0x50
	.4byte	0x8e2
	.byte	0x78
	.uleb128 0x6
	.4byte	.LASF70
	.byte	0xc
	.byte	0x51
	.4byte	0x166
	.byte	0x7c
	.byte	0
	.uleb128 0x3
	.4byte	.LASF71
	.byte	0xd
	.byte	0x45
	.4byte	0x3c7
	.uleb128 0xc
	.byte	0x4
	.4byte	0x3cd
	.uleb128 0xe
	.4byte	0x3dd
	.uleb128 0xf
	.4byte	0x3dd
	.uleb128 0xf
	.4byte	0x144
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x117
	.uleb128 0x3
	.4byte	.LASF72
	.byte	0xd
	.byte	0x46
	.4byte	0x3ee
	.uleb128 0xc
	.byte	0x4
	.4byte	0x3f4
	.uleb128 0xe
	.4byte	0x409
	.uleb128 0xf
	.4byte	0x7e
	.uleb128 0xf
	.4byte	0x3dd
	.uleb128 0xf
	.4byte	0x144
	.byte	0
	.uleb128 0x10
	.4byte	.LASF73
	.byte	0x10
	.byte	0xd
	.byte	0x48
	.4byte	0x446
	.uleb128 0x6
	.4byte	.LASF74
	.byte	0xd
	.byte	0x4d
	.4byte	0x154
	.byte	0
	.uleb128 0x6
	.4byte	.LASF75
	.byte	0xd
	.byte	0x50
	.4byte	0x460
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF76
	.byte	0xd
	.byte	0x57
	.4byte	0x47b
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF77
	.byte	0xd
	.byte	0x5a
	.4byte	0x491
	.byte	0xc
	.byte	0
	.uleb128 0xe
	.4byte	0x460
	.uleb128 0xf
	.4byte	0x3dd
	.uleb128 0xf
	.4byte	0x3bc
	.uleb128 0xf
	.4byte	0x3e3
	.uleb128 0xf
	.4byte	0x144
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x446
	.uleb128 0x11
	.4byte	0x475
	.4byte	0x475
	.uleb128 0xf
	.4byte	0x3dd
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x224
	.uleb128 0xc
	.byte	0x4
	.4byte	0x466
	.uleb128 0xe
	.4byte	0x491
	.uleb128 0xf
	.4byte	0x89
	.uleb128 0xf
	.4byte	0x144
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x481
	.uleb128 0x3
	.4byte	.LASF73
	.byte	0xd
	.byte	0x5b
	.4byte	0x409
	.uleb128 0x5
	.byte	0x8
	.byte	0xe
	.byte	0x1a
	.4byte	0x4b7
	.uleb128 0x6
	.4byte	.LASF28
	.byte	0xe
	.byte	0x1b
	.4byte	0x1b1
	.byte	0
	.byte	0
	.uleb128 0x3
	.4byte	.LASF78
	.byte	0xe
	.byte	0x1c
	.4byte	0x4a2
	.uleb128 0x5
	.byte	0x58
	.byte	0xf
	.byte	0x19
	.4byte	0x5d3
	.uleb128 0x6
	.4byte	.LASF79
	.byte	0xf
	.byte	0x1a
	.4byte	0x5d8
	.byte	0
	.uleb128 0x6
	.4byte	.LASF80
	.byte	0xf
	.byte	0x1b
	.4byte	0x5d8
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF81
	.byte	0xf
	.byte	0x1c
	.4byte	0x5ed
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF82
	.byte	0xf
	.byte	0x1d
	.4byte	0x611
	.byte	0xc
	.uleb128 0x6
	.4byte	.LASF83
	.byte	0xf
	.byte	0x1e
	.4byte	0x5d8
	.byte	0x10
	.uleb128 0x6
	.4byte	.LASF84
	.byte	0xf
	.byte	0x1f
	.4byte	0x5d8
	.byte	0x14
	.uleb128 0x6
	.4byte	.LASF85
	.byte	0xf
	.byte	0x20
	.4byte	0x5d8
	.byte	0x18
	.uleb128 0x6
	.4byte	.LASF86
	.byte	0xf
	.byte	0x21
	.4byte	0x5ed
	.byte	0x1c
	.uleb128 0x6
	.4byte	.LASF87
	.byte	0xf
	.byte	0x22
	.4byte	0x5ed
	.byte	0x20
	.uleb128 0x6
	.4byte	.LASF88
	.byte	0xf
	.byte	0x23
	.4byte	0x5ed
	.byte	0x24
	.uleb128 0x6
	.4byte	.LASF89
	.byte	0xf
	.byte	0x24
	.4byte	0x631
	.byte	0x28
	.uleb128 0x6
	.4byte	.LASF90
	.byte	0xf
	.byte	0x25
	.4byte	0x64b
	.byte	0x2c
	.uleb128 0x6
	.4byte	.LASF91
	.byte	0xf
	.byte	0x26
	.4byte	0x5d8
	.byte	0x30
	.uleb128 0x6
	.4byte	.LASF92
	.byte	0xf
	.byte	0x27
	.4byte	0x5d8
	.byte	0x34
	.uleb128 0x6
	.4byte	.LASF93
	.byte	0xf
	.byte	0x28
	.4byte	0x5d8
	.byte	0x38
	.uleb128 0x6
	.4byte	.LASF94
	.byte	0xf
	.byte	0x29
	.4byte	0x5d8
	.byte	0x3c
	.uleb128 0x6
	.4byte	.LASF95
	.byte	0xf
	.byte	0x2a
	.4byte	0x5d8
	.byte	0x40
	.uleb128 0x6
	.4byte	.LASF96
	.byte	0xf
	.byte	0x2b
	.4byte	0x5d8
	.byte	0x44
	.uleb128 0x6
	.4byte	.LASF97
	.byte	0xf
	.byte	0x2c
	.4byte	0x665
	.byte	0x48
	.uleb128 0x6
	.4byte	.LASF98
	.byte	0xf
	.byte	0x2d
	.4byte	0x631
	.byte	0x4c
	.uleb128 0x6
	.4byte	.LASF99
	.byte	0xf
	.byte	0x2e
	.4byte	0x5ed
	.byte	0x50
	.uleb128 0x6
	.4byte	.LASF100
	.byte	0xf
	.byte	0x2f
	.4byte	0x5ed
	.byte	0x54
	.byte	0
	.uleb128 0x12
	.4byte	0x3dd
	.uleb128 0xc
	.byte	0x4
	.4byte	0x5d3
	.uleb128 0x11
	.4byte	0x3dd
	.4byte	0x5ed
	.uleb128 0xf
	.4byte	0x7e
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x5de
	.uleb128 0x11
	.4byte	0x3dd
	.4byte	0x611
	.uleb128 0xf
	.4byte	0x89
	.uleb128 0xf
	.4byte	0x7e
	.uleb128 0xf
	.4byte	0x89
	.uleb128 0xf
	.4byte	0x89
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x5f3
	.uleb128 0x11
	.4byte	0x3dd
	.4byte	0x626
	.uleb128 0xf
	.4byte	0x626
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x62c
	.uleb128 0x13
	.4byte	0x4b7
	.uleb128 0xc
	.byte	0x4
	.4byte	0x617
	.uleb128 0x11
	.4byte	0x3dd
	.4byte	0x64b
	.uleb128 0xf
	.4byte	0x7e
	.uleb128 0xf
	.4byte	0x7e
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x637
	.uleb128 0x11
	.4byte	0x3dd
	.4byte	0x665
	.uleb128 0xf
	.4byte	0x89
	.uleb128 0xf
	.4byte	0x89
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x651
	.uleb128 0x3
	.4byte	.LASF101
	.byte	0xf
	.byte	0x30
	.4byte	0x4c2
	.uleb128 0x5
	.byte	0xa
	.byte	0x10
	.byte	0x17
	.4byte	0x6bb
	.uleb128 0x6
	.4byte	.LASF102
	.byte	0x10
	.byte	0x18
	.4byte	0x7e
	.byte	0
	.uleb128 0x6
	.4byte	.LASF103
	.byte	0x10
	.byte	0x19
	.4byte	0x89
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF104
	.byte	0x10
	.byte	0x1a
	.4byte	0x7e
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF105
	.byte	0x10
	.byte	0x1b
	.4byte	0x89
	.byte	0x6
	.uleb128 0x6
	.4byte	.LASF106
	.byte	0x10
	.byte	0x1c
	.4byte	0x89
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF107
	.byte	0x10
	.byte	0x1d
	.4byte	0x676
	.uleb128 0x5
	.byte	0x30
	.byte	0x11
	.byte	0x1f
	.4byte	0x75f
	.uleb128 0x6
	.4byte	.LASF108
	.byte	0x11
	.byte	0x20
	.4byte	0x76a
	.byte	0
	.uleb128 0x6
	.4byte	.LASF109
	.byte	0x11
	.byte	0x22
	.4byte	0x795
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF110
	.byte	0x11
	.byte	0x2a
	.4byte	0x7b1
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF111
	.byte	0x11
	.byte	0x2f
	.4byte	0x7cd
	.byte	0xc
	.uleb128 0x6
	.4byte	.LASF112
	.byte	0x11
	.byte	0x34
	.4byte	0x7e8
	.byte	0x10
	.uleb128 0x6
	.4byte	.LASF113
	.byte	0x11
	.byte	0x3a
	.4byte	0x813
	.byte	0x14
	.uleb128 0x6
	.4byte	.LASF114
	.byte	0x11
	.byte	0x42
	.4byte	0x829
	.byte	0x18
	.uleb128 0x6
	.4byte	.LASF115
	.byte	0x11
	.byte	0x47
	.4byte	0x844
	.byte	0x1c
	.uleb128 0x6
	.4byte	.LASF116
	.byte	0x11
	.byte	0x4d
	.4byte	0x7e8
	.byte	0x20
	.uleb128 0x6
	.4byte	.LASF117
	.byte	0x11
	.byte	0x53
	.4byte	0x85a
	.byte	0x24
	.uleb128 0x6
	.4byte	.LASF118
	.byte	0x11
	.byte	0x58
	.4byte	0x829
	.byte	0x28
	.uleb128 0x6
	.4byte	.LASF119
	.byte	0x11
	.byte	0x5d
	.4byte	0x875
	.byte	0x2c
	.byte	0
	.uleb128 0xe
	.4byte	0x76a
	.uleb128 0xf
	.4byte	0x3dd
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x75f
	.uleb128 0xe
	.4byte	0x78f
	.uleb128 0xf
	.4byte	0x3dd
	.uleb128 0xf
	.4byte	0x1cc
	.uleb128 0xf
	.4byte	0x1cc
	.uleb128 0xf
	.4byte	0x78f
	.uleb128 0xf
	.4byte	0x1cc
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x7e
	.uleb128 0xc
	.byte	0x4
	.4byte	0x770
	.uleb128 0xe
	.4byte	0x7ab
	.uleb128 0xf
	.4byte	0x3dd
	.uleb128 0xf
	.4byte	0x7ab
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x6bb
	.uleb128 0xc
	.byte	0x4
	.4byte	0x79b
	.uleb128 0xe
	.4byte	0x7c7
	.uleb128 0xf
	.4byte	0x3dd
	.uleb128 0xf
	.4byte	0x7c7
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x191
	.uleb128 0xc
	.byte	0x4
	.4byte	0x7b7
	.uleb128 0xe
	.4byte	0x7e8
	.uleb128 0xf
	.4byte	0x3dd
	.uleb128 0xf
	.4byte	0x78f
	.uleb128 0xf
	.4byte	0x139
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x7d3
	.uleb128 0xe
	.4byte	0x80d
	.uleb128 0xf
	.4byte	0x3dd
	.uleb128 0xf
	.4byte	0x78f
	.uleb128 0xf
	.4byte	0x78f
	.uleb128 0xf
	.4byte	0x80d
	.uleb128 0xf
	.4byte	0x139
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x1c1
	.uleb128 0xc
	.byte	0x4
	.4byte	0x7ee
	.uleb128 0xe
	.4byte	0x829
	.uleb128 0xf
	.4byte	0x3dd
	.uleb128 0xf
	.4byte	0x78f
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x819
	.uleb128 0xe
	.4byte	0x844
	.uleb128 0xf
	.4byte	0x3dd
	.uleb128 0xf
	.4byte	0x1cc
	.uleb128 0xf
	.4byte	0x78f
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x82f
	.uleb128 0xe
	.4byte	0x85a
	.uleb128 0xf
	.4byte	0x3dd
	.uleb128 0xf
	.4byte	0x80d
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x84a
	.uleb128 0xe
	.4byte	0x875
	.uleb128 0xf
	.4byte	0x3dd
	.uleb128 0xf
	.4byte	0x1cc
	.uleb128 0xf
	.4byte	0x1cc
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x860
	.uleb128 0x3
	.4byte	.LASF120
	.byte	0x11
	.byte	0x62
	.4byte	0x6c6
	.uleb128 0x12
	.4byte	0xb5
	.uleb128 0xc
	.byte	0x4
	.4byte	0x886
	.uleb128 0x12
	.4byte	0x896
	.uleb128 0xc
	.byte	0x4
	.4byte	0x89c
	.uleb128 0x13
	.4byte	0x191
	.uleb128 0xc
	.byte	0x4
	.4byte	0x891
	.uleb128 0x12
	.4byte	0x8ac
	.uleb128 0xc
	.byte	0x4
	.4byte	0x8b2
	.uleb128 0x13
	.4byte	0x6bb
	.uleb128 0xc
	.byte	0x4
	.4byte	0x8a7
	.uleb128 0x11
	.4byte	0x8cc
	.4byte	0x8cc
	.uleb128 0xf
	.4byte	0x57
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x8d2
	.uleb128 0x13
	.4byte	0x1c1
	.uleb128 0xc
	.byte	0x4
	.4byte	0x8bd
	.uleb128 0x12
	.4byte	0x7e
	.uleb128 0xc
	.byte	0x4
	.4byte	0x8dd
	.uleb128 0x12
	.4byte	0x8cc
	.uleb128 0xc
	.byte	0x4
	.4byte	0x8e8
	.uleb128 0x12
	.4byte	0x8f8
	.uleb128 0xc
	.byte	0x4
	.4byte	0x8fe
	.uleb128 0x13
	.4byte	0x7e
	.uleb128 0xc
	.byte	0x4
	.4byte	0x8f3
	.uleb128 0x12
	.4byte	0x89
	.uleb128 0xc
	.byte	0x4
	.4byte	0x909
	.uleb128 0x14
	.byte	0x4
	.4byte	0x69
	.byte	0x12
	.2byte	0x1c0
	.4byte	0xa3c
	.uleb128 0x15
	.4byte	.LASF121
	.byte	0
	.uleb128 0x15
	.4byte	.LASF122
	.byte	0x1
	.uleb128 0x15
	.4byte	.LASF123
	.byte	0x2
	.uleb128 0x15
	.4byte	.LASF124
	.byte	0x3
	.uleb128 0x15
	.4byte	.LASF125
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF126
	.byte	0x5
	.uleb128 0x15
	.4byte	.LASF127
	.byte	0x6
	.uleb128 0x15
	.4byte	.LASF128
	.byte	0x7
	.uleb128 0x15
	.4byte	.LASF129
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF130
	.byte	0x9
	.uleb128 0x15
	.4byte	.LASF131
	.byte	0xa
	.uleb128 0x15
	.4byte	.LASF132
	.byte	0xb
	.uleb128 0x15
	.4byte	.LASF133
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF134
	.byte	0xd
	.uleb128 0x15
	.4byte	.LASF135
	.byte	0xe
	.uleb128 0x15
	.4byte	.LASF136
	.byte	0xf
	.uleb128 0x15
	.4byte	.LASF137
	.byte	0x10
	.uleb128 0x15
	.4byte	.LASF138
	.byte	0x11
	.uleb128 0x15
	.4byte	.LASF139
	.byte	0x12
	.uleb128 0x15
	.4byte	.LASF140
	.byte	0x13
	.uleb128 0x15
	.4byte	.LASF141
	.byte	0x14
	.uleb128 0x15
	.4byte	.LASF142
	.byte	0x15
	.uleb128 0x15
	.4byte	.LASF143
	.byte	0x16
	.uleb128 0x15
	.4byte	.LASF144
	.byte	0x17
	.uleb128 0x15
	.4byte	.LASF145
	.byte	0x18
	.uleb128 0x15
	.4byte	.LASF146
	.byte	0x19
	.uleb128 0x15
	.4byte	.LASF147
	.byte	0x1a
	.uleb128 0x15
	.4byte	.LASF148
	.byte	0x1b
	.uleb128 0x15
	.4byte	.LASF149
	.byte	0x1c
	.uleb128 0x15
	.4byte	.LASF150
	.byte	0x1d
	.uleb128 0x15
	.4byte	.LASF151
	.byte	0x1e
	.uleb128 0x15
	.4byte	.LASF152
	.byte	0x1f
	.uleb128 0x15
	.4byte	.LASF153
	.byte	0x20
	.uleb128 0x15
	.4byte	.LASF154
	.byte	0x21
	.uleb128 0x15
	.4byte	.LASF155
	.byte	0x22
	.uleb128 0x15
	.4byte	.LASF156
	.byte	0x23
	.uleb128 0x15
	.4byte	.LASF157
	.byte	0x24
	.uleb128 0x15
	.4byte	.LASF158
	.byte	0x25
	.uleb128 0x15
	.4byte	.LASF159
	.byte	0x26
	.uleb128 0x15
	.4byte	.LASF160
	.byte	0x27
	.uleb128 0x15
	.4byte	.LASF161
	.byte	0x28
	.uleb128 0x15
	.4byte	.LASF162
	.byte	0x29
	.uleb128 0x15
	.4byte	.LASF163
	.byte	0x2a
	.uleb128 0x15
	.4byte	.LASF164
	.byte	0x2b
	.uleb128 0x15
	.4byte	.LASF165
	.byte	0x2c
	.uleb128 0x15
	.4byte	.LASF166
	.byte	0x2d
	.uleb128 0x15
	.4byte	.LASF167
	.byte	0x2e
	.byte	0
	.uleb128 0x14
	.byte	0x4
	.4byte	0x69
	.byte	0x12
	.2byte	0x6ea
	.4byte	0xa74
	.uleb128 0x15
	.4byte	.LASF168
	.byte	0
	.uleb128 0x15
	.4byte	.LASF169
	.byte	0x1
	.uleb128 0x15
	.4byte	.LASF170
	.byte	0x2
	.uleb128 0x15
	.4byte	.LASF171
	.byte	0x3
	.uleb128 0x15
	.4byte	.LASF172
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF173
	.byte	0x5
	.uleb128 0x15
	.4byte	.LASF174
	.byte	0x6
	.byte	0
	.uleb128 0x16
	.4byte	.LASF40
	.byte	0x1
	.2byte	0x10e
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x17
	.4byte	.LASF41
	.byte	0x1
	.2byte	0x113
	.4byte	0xb5
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x18
	.4byte	.LASF70
	.byte	0x1
	.2byte	0x1cd
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb2c
	.uleb128 0x19
	.4byte	.LASF178
	.byte	0x1
	.2byte	0x1cd
	.4byte	0x57
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1a
	.4byte	.LASF175
	.4byte	0xb3c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8287
	.uleb128 0x1b
	.4byte	.LVL1
	.4byte	0x1f94
	.4byte	0xaff
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1cf
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8287
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL2
	.4byte	0x1f94
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1d0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8287
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0x132
	.4byte	0xb3c
	.uleb128 0xa
	.4byte	0x110
	.byte	0x1f
	.byte	0
	.uleb128 0x13
	.4byte	0xb2c
	.uleb128 0x1e
	.4byte	.LASF69
	.byte	0x1
	.2byte	0x1c6
	.4byte	0x7e
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbc7
	.uleb128 0x1a
	.4byte	.LASF175
	.4byte	0xbc7
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8283
	.uleb128 0x1b
	.4byte	.LVL3
	.4byte	0x1f94
	.4byte	0xb9a
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1c8
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8283
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL4
	.4byte	0x1f94
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1c9
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8283
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	0xb2c
	.uleb128 0x1e
	.4byte	.LASF68
	.byte	0x1
	.2byte	0x1bf
	.4byte	0x7e
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc52
	.uleb128 0x1a
	.4byte	.LASF175
	.4byte	0xc62
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8279
	.uleb128 0x1b
	.4byte	.LVL5
	.4byte	0x1f94
	.4byte	0xc25
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1c1
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8279
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL6
	.4byte	0x1f94
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1c2
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8279
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0x132
	.4byte	0xc62
	.uleb128 0xa
	.4byte	0x110
	.byte	0x17
	.byte	0
	.uleb128 0x13
	.4byte	0xc52
	.uleb128 0x1e
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x1b8
	.4byte	0x7e
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xced
	.uleb128 0x1a
	.4byte	.LASF175
	.4byte	0xcfd
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8275
	.uleb128 0x1b
	.4byte	.LVL7
	.4byte	0x1f94
	.4byte	0xcc0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1ba
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8275
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL8
	.4byte	0x1f94
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1bb
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8275
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0x132
	.4byte	0xcfd
	.uleb128 0xa
	.4byte	0x110
	.byte	0x18
	.byte	0
	.uleb128 0x13
	.4byte	0xced
	.uleb128 0x1e
	.4byte	.LASF66
	.byte	0x1
	.2byte	0x1b2
	.4byte	0x89
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd58
	.uleb128 0x1a
	.4byte	.LASF175
	.4byte	0xd68
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8271
	.uleb128 0x1d
	.4byte	.LVL9
	.4byte	0x1f94
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1b4
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8271
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0x132
	.4byte	0xd68
	.uleb128 0xa
	.4byte	0x110
	.byte	0x1c
	.byte	0
	.uleb128 0x13
	.4byte	0xd58
	.uleb128 0x1e
	.4byte	.LASF176
	.byte	0x1
	.2byte	0x1ab
	.4byte	0x89
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdf3
	.uleb128 0x1a
	.4byte	.LASF175
	.4byte	0xe03
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8267
	.uleb128 0x1b
	.4byte	.LVL10
	.4byte	0x1f94
	.4byte	0xdc6
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1ad
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8267
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL11
	.4byte	0x1f94
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1ae
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8267
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0x132
	.4byte	0xe03
	.uleb128 0xa
	.4byte	0x110
	.byte	0x25
	.byte	0
	.uleb128 0x13
	.4byte	0xdf3
	.uleb128 0x1e
	.4byte	.LASF177
	.byte	0x1
	.2byte	0x1a4
	.4byte	0x89
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe8e
	.uleb128 0x1a
	.4byte	.LASF175
	.4byte	0xe8e
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8263
	.uleb128 0x1b
	.4byte	.LVL12
	.4byte	0x1f94
	.4byte	0xe61
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1a6
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8263
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL13
	.4byte	0x1f94
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1a7
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8263
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	0xdf3
	.uleb128 0x1e
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x19e
	.4byte	0x89
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xee9
	.uleb128 0x1a
	.4byte	.LASF175
	.4byte	0xee9
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8259
	.uleb128 0x1d
	.4byte	.LVL14
	.4byte	0x1f94
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1a0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8259
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	0xc52
	.uleb128 0x1e
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x198
	.4byte	0x89
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf44
	.uleb128 0x1a
	.4byte	.LASF175
	.4byte	0xf54
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8255
	.uleb128 0x1d
	.4byte	.LVL15
	.4byte	0x1f94
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x19a
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8255
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0x132
	.4byte	0xf54
	.uleb128 0xa
	.4byte	0x110
	.byte	0x1b
	.byte	0
	.uleb128 0x13
	.4byte	0xf44
	.uleb128 0x1e
	.4byte	.LASF61
	.byte	0x1
	.2byte	0x191
	.4byte	0x89
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfdf
	.uleb128 0x1a
	.4byte	.LASF175
	.4byte	0xfef
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8251
	.uleb128 0x1b
	.4byte	.LVL16
	.4byte	0x1f94
	.4byte	0xfb2
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x193
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8251
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL17
	.4byte	0x1f94
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x194
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8251
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0x132
	.4byte	0xfef
	.uleb128 0xa
	.4byte	0x110
	.byte	0x15
	.byte	0
	.uleb128 0x13
	.4byte	0xfdf
	.uleb128 0x1e
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x18b
	.4byte	0x89
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x104a
	.uleb128 0x1a
	.4byte	.LASF175
	.4byte	0x105a
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8247
	.uleb128 0x1d
	.4byte	.LVL18
	.4byte	0x1f94
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x18d
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8247
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0x132
	.4byte	0x105a
	.uleb128 0xa
	.4byte	0x110
	.byte	0x19
	.byte	0
	.uleb128 0x13
	.4byte	0x104a
	.uleb128 0x1e
	.4byte	.LASF59
	.byte	0x1
	.2byte	0x176
	.4byte	0xb5
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10e5
	.uleb128 0x1a
	.4byte	.LASF175
	.4byte	0x10f5
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8235
	.uleb128 0x1b
	.4byte	.LVL19
	.4byte	0x1f94
	.4byte	0x10b8
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x178
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8235
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL20
	.4byte	0x1f94
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x179
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8235
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0x132
	.4byte	0x10f5
	.uleb128 0xa
	.4byte	0x110
	.byte	0x14
	.byte	0
	.uleb128 0x13
	.4byte	0x10e5
	.uleb128 0x1e
	.4byte	.LASF58
	.byte	0x1
	.2byte	0x184
	.4byte	0xb5
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1180
	.uleb128 0x1a
	.4byte	.LASF175
	.4byte	0x1190
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8243
	.uleb128 0x1b
	.4byte	.LVL21
	.4byte	0x1f94
	.4byte	0x1153
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x186
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8243
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL22
	.4byte	0x1f94
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x187
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8243
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0x132
	.4byte	0x1190
	.uleb128 0xa
	.4byte	0x110
	.byte	0x2a
	.byte	0
	.uleb128 0x13
	.4byte	0x1180
	.uleb128 0x1e
	.4byte	.LASF57
	.byte	0x1
	.2byte	0x17d
	.4byte	0xb5
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x121b
	.uleb128 0x1a
	.4byte	.LASF175
	.4byte	0x122b
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8239
	.uleb128 0x1b
	.4byte	.LVL23
	.4byte	0x1f94
	.4byte	0x11ee
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x17f
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8239
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL24
	.4byte	0x1f94
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x180
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8239
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0x132
	.4byte	0x122b
	.uleb128 0xa
	.4byte	0x110
	.byte	0x1d
	.byte	0
	.uleb128 0x13
	.4byte	0x121b
	.uleb128 0x1e
	.4byte	.LASF56
	.byte	0x1
	.2byte	0x170
	.4byte	0xb5
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1286
	.uleb128 0x1a
	.4byte	.LASF175
	.4byte	0x1296
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8231
	.uleb128 0x1d
	.4byte	.LVL25
	.4byte	0x1f94
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x172
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8231
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0x132
	.4byte	0x1296
	.uleb128 0xa
	.4byte	0x110
	.byte	0xc
	.byte	0
	.uleb128 0x13
	.4byte	0x1286
	.uleb128 0x1e
	.4byte	.LASF55
	.byte	0x1
	.2byte	0x16a
	.4byte	0xb5
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x12f1
	.uleb128 0x1a
	.4byte	.LASF175
	.4byte	0x1301
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8227
	.uleb128 0x1d
	.4byte	.LVL26
	.4byte	0x1f94
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x16c
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8227
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0x132
	.4byte	0x1301
	.uleb128 0xa
	.4byte	0x110
	.byte	0x21
	.byte	0
	.uleb128 0x13
	.4byte	0x12f1
	.uleb128 0x1e
	.4byte	.LASF54
	.byte	0x1
	.2byte	0x164
	.4byte	0xb5
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x135c
	.uleb128 0x1a
	.4byte	.LASF175
	.4byte	0x136c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8223
	.uleb128 0x1d
	.4byte	.LVL27
	.4byte	0x1f94
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x166
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8223
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0x132
	.4byte	0x136c
	.uleb128 0xa
	.4byte	0x110
	.byte	0x22
	.byte	0
	.uleb128 0x13
	.4byte	0x135c
	.uleb128 0x1e
	.4byte	.LASF53
	.byte	0x1
	.2byte	0x15e
	.4byte	0xb5
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x13c7
	.uleb128 0x1a
	.4byte	.LASF175
	.4byte	0x13c7
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8219
	.uleb128 0x1d
	.4byte	.LVL28
	.4byte	0x1f94
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x160
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8219
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	0x135c
	.uleb128 0x1e
	.4byte	.LASF52
	.byte	0x1
	.2byte	0x158
	.4byte	0xb5
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1422
	.uleb128 0x1a
	.4byte	.LASF175
	.4byte	0x1432
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8215
	.uleb128 0x1d
	.4byte	.LVL29
	.4byte	0x1f94
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x15a
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8215
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0x132
	.4byte	0x1432
	.uleb128 0xa
	.4byte	0x110
	.byte	0x20
	.byte	0
	.uleb128 0x13
	.4byte	0x1422
	.uleb128 0x1e
	.4byte	.LASF51
	.byte	0x1
	.2byte	0x152
	.4byte	0xb5
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x148d
	.uleb128 0x1a
	.4byte	.LASF175
	.4byte	0x149d
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8211
	.uleb128 0x1d
	.4byte	.LVL30
	.4byte	0x1f94
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x154
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8211
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0x132
	.4byte	0x149d
	.uleb128 0xa
	.4byte	0x110
	.byte	0x29
	.byte	0
	.uleb128 0x13
	.4byte	0x148d
	.uleb128 0x1e
	.4byte	.LASF50
	.byte	0x1
	.2byte	0x14c
	.4byte	0xb5
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x14f8
	.uleb128 0x1a
	.4byte	.LASF175
	.4byte	0x1508
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8207
	.uleb128 0x1d
	.4byte	.LVL31
	.4byte	0x1f94
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x14e
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8207
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0x132
	.4byte	0x1508
	.uleb128 0xa
	.4byte	0x110
	.byte	0x1e
	.byte	0
	.uleb128 0x13
	.4byte	0x14f8
	.uleb128 0x1e
	.4byte	.LASF49
	.byte	0x1
	.2byte	0x146
	.4byte	0xb5
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1563
	.uleb128 0x1a
	.4byte	.LASF175
	.4byte	0x1563
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8203
	.uleb128 0x1d
	.4byte	.LVL32
	.4byte	0x1f94
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x148
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8203
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	0xf44
	.uleb128 0x1e
	.4byte	.LASF48
	.byte	0x1
	.2byte	0x140
	.4byte	0xb5
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x15be
	.uleb128 0x1a
	.4byte	.LASF175
	.4byte	0x15be
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8199
	.uleb128 0x1d
	.4byte	.LVL33
	.4byte	0x1f94
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x142
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8199
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	0xc52
	.uleb128 0x1e
	.4byte	.LASF47
	.byte	0x1
	.2byte	0x139
	.4byte	0x8f8
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1649
	.uleb128 0x1a
	.4byte	.LASF175
	.4byte	0x1649
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8195
	.uleb128 0x1b
	.4byte	.LVL34
	.4byte	0x1f94
	.4byte	0x161c
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x13b
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8195
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL35
	.4byte	0x1f94
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x13c
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8195
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	0xced
	.uleb128 0x1e
	.4byte	.LASF46
	.byte	0x1
	.2byte	0x132
	.4byte	0x8cc
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x16d4
	.uleb128 0x1a
	.4byte	.LASF175
	.4byte	0x16e4
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8191
	.uleb128 0x1b
	.4byte	.LVL36
	.4byte	0x1f94
	.4byte	0x16a7
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x134
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8191
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL37
	.4byte	0x1f94
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x135
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8191
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0x132
	.4byte	0x16e4
	.uleb128 0xa
	.4byte	0x110
	.byte	0x10
	.byte	0
	.uleb128 0x13
	.4byte	0x16d4
	.uleb128 0x1e
	.4byte	.LASF45
	.byte	0x1
	.2byte	0x12c
	.4byte	0x7e
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x173f
	.uleb128 0x1a
	.4byte	.LASF175
	.4byte	0x173f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8187
	.uleb128 0x1d
	.4byte	.LVL38
	.4byte	0x1f94
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x12e
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8187
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	0xb2c
	.uleb128 0x1e
	.4byte	.LASF44
	.byte	0x1
	.2byte	0x125
	.4byte	0x8cc
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x17da
	.uleb128 0x1f
	.4byte	.LASF179
	.byte	0x1
	.2byte	0x125
	.4byte	0x57
	.4byte	.LLST0
	.uleb128 0x1a
	.4byte	.LASF175
	.4byte	0x17da
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8183
	.uleb128 0x1b
	.4byte	.LVL40
	.4byte	0x1f94
	.4byte	0x17ad
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x127
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8183
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL41
	.4byte	0x1f94
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x128
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8183
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC161
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	0x10e5
	.uleb128 0x1e
	.4byte	.LASF43
	.byte	0x1
	.2byte	0x11e
	.4byte	0x8ac
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1835
	.uleb128 0x1a
	.4byte	.LASF175
	.4byte	0x1845
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8179
	.uleb128 0x1d
	.4byte	.LVL43
	.4byte	0x1f94
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x120
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8179
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0x132
	.4byte	0x1845
	.uleb128 0xa
	.4byte	0x110
	.byte	0xe
	.byte	0
	.uleb128 0x13
	.4byte	0x1835
	.uleb128 0x1e
	.4byte	.LASF42
	.byte	0x1
	.2byte	0x118
	.4byte	0x896
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x18a0
	.uleb128 0x1a
	.4byte	.LASF175
	.4byte	0x18b0
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8175
	.uleb128 0x1d
	.4byte	.LVL44
	.4byte	0x1f94
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x11a
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8175
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0x132
	.4byte	0x18b0
	.uleb128 0xa
	.4byte	0x110
	.byte	0xb
	.byte	0
	.uleb128 0x13
	.4byte	0x18a0
	.uleb128 0x20
	.4byte	.LASF39
	.byte	0x1
	.byte	0x54
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1cdf
	.uleb128 0x21
	.4byte	.LASF180
	.byte	0x1
	.byte	0x56
	.4byte	0x3dd
	.4byte	.LLST1
	.uleb128 0x22
	.4byte	.LASF181
	.byte	0x1
	.byte	0x87
	.4byte	0x7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1a
	.4byte	.LASF175
	.4byte	0x1cef
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8161
	.uleb128 0x23
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.4byte	0x193e
	.uleb128 0x21
	.4byte	.LASF182
	.byte	0x1
	.byte	0xa0
	.4byte	0x7e
	.4byte	.LLST2
	.uleb128 0x24
	.4byte	.LVL84
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.4byte	0x1924
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x25
	.4byte	.LVL85
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x26
	.4byte	.LVL86
	.4byte	0x1f9f
	.uleb128 0x25
	.4byte	.LVL87
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL46
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x26
	.4byte	.LVL47
	.4byte	0x1f9f
	.uleb128 0x25
	.4byte	.LVL48
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x25
	.4byte	.LVL50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x26
	.4byte	.LVL51
	.4byte	0x1f9f
	.uleb128 0x24
	.4byte	.LVL52
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.4byte	0x1999
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	acl_data_size_classic
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	acl_buffer_count_classic
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	sco_data_size
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	sco_buffer_count
	.byte	0
	.uleb128 0x27
	.4byte	.LVL53
	.4byte	0x19a8
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x25
	.4byte	.LVL54
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x26
	.4byte	.LVL55
	.4byte	0x1f9f
	.uleb128 0x25
	.4byte	.LVL56
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x27
	.4byte	.LVL57
	.4byte	0x19e2
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xa
	.2byte	0x69b
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xff
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x44
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x25
	.4byte	.LVL58
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x26
	.4byte	.LVL59
	.4byte	0x1f9f
	.uleb128 0x25
	.4byte	.LVL60
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x25
	.4byte	.LVL62
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x26
	.4byte	.LVL63
	.4byte	0x1f9f
	.uleb128 0x24
	.4byte	.LVL64
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.4byte	0x1a22
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	bt_version
	.byte	0
	.uleb128 0x25
	.4byte	.LVL66
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x26
	.4byte	.LVL67
	.4byte	0x1f9f
	.uleb128 0x24
	.4byte	.LVL68
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.4byte	0x1a49
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	address
	.byte	0
	.uleb128 0x25
	.4byte	.LVL70
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x26
	.4byte	.LVL71
	.4byte	0x1f9f
	.uleb128 0x27
	.4byte	.LVL72
	.4byte	0x1a73
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	supported_commands
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.uleb128 0x24
	.4byte	.LVL73
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.4byte	0x1a85
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x25
	.4byte	.LVL74
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x26
	.4byte	.LVL75
	.4byte	0x1f9f
	.uleb128 0x24
	.4byte	.LVL76
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.4byte	0x1ac0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	last_features_classic_page_index
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	features_classic
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL77
	.4byte	0x1f94
	.4byte	0x1aef
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x91
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8161
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC186
	.byte	0
	.uleb128 0x24
	.4byte	.LVL78
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.4byte	0x1b01
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x25
	.4byte	.LVL79
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x26
	.4byte	.LVL80
	.4byte	0x1f9f
	.uleb128 0x25
	.4byte	.LVL81
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x25
	.4byte	.LVL89
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x26
	.4byte	.LVL90
	.4byte	0x1f9f
	.uleb128 0x27
	.4byte	.LVL91
	.4byte	0x1b52
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	last_features_classic_page_index
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	features_classic
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x25
	.4byte	.LVL93
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x26
	.4byte	.LVL94
	.4byte	0x1f9f
	.uleb128 0x24
	.4byte	.LVL95
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.4byte	0x1b79
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	ble_white_list_size
	.byte	0
	.uleb128 0x25
	.4byte	.LVL97
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x26
	.4byte	.LVL98
	.4byte	0x1f9f
	.uleb128 0x24
	.4byte	.LVL99
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.4byte	0x1ba6
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	acl_buffer_count_ble
	.byte	0
	.uleb128 0x25
	.4byte	.LVL101
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x26
	.4byte	.LVL102
	.4byte	0x1f9f
	.uleb128 0x24
	.4byte	.LVL103
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.4byte	0x1bd2
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	ble_supported_states
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x25
	.4byte	.LVL105
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x26
	.4byte	.LVL106
	.4byte	0x1f9f
	.uleb128 0x24
	.4byte	.LVL107
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.4byte	0x1bf6
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL109
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x26
	.4byte	.LVL110
	.4byte	0x1f9f
	.uleb128 0x24
	.4byte	.LVL111
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.4byte	0x1c1d
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	ble_resolving_list_max_size
	.byte	0
	.uleb128 0x24
	.4byte	.LVL112
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.4byte	0x1c37
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0xfb
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x848
	.byte	0
	.uleb128 0x25
	.4byte	.LVL113
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x26
	.4byte	.LVL114
	.4byte	0x1f9f
	.uleb128 0x25
	.4byte	.LVL115
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x25
	.4byte	.LVL117
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x26
	.4byte	.LVL118
	.4byte	0x1f9f
	.uleb128 0x24
	.4byte	.LVL119
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.4byte	0x1c80
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	ble_suggested_default_data_length
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	ble_suggested_default_data_txtime
	.byte	0
	.uleb128 0x24
	.4byte	.LVL120
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.4byte	0x1c96
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	BLE_EVENT_MASK
	.byte	0
	.uleb128 0x25
	.4byte	.LVL121
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x26
	.4byte	.LVL122
	.4byte	0x1f9f
	.uleb128 0x25
	.4byte	.LVL123
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x24
	.4byte	.LVL124
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.4byte	0x1cc5
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	CLASSIC_EVENT_MASK
	.byte	0
	.uleb128 0x25
	.4byte	.LVL125
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x26
	.4byte	.LVL126
	.4byte	0x1f9f
	.uleb128 0x25
	.4byte	.LVL127
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x8
	.4byte	0x132
	.4byte	0x1cef
	.uleb128 0xa
	.4byte	0x110
	.byte	0x8
	.byte	0
	.uleb128 0x13
	.4byte	0x1cdf
	.uleb128 0x28
	.4byte	.LASF220
	.byte	0x1
	.2byte	0x213
	.4byte	0x1d3c
	.4byte	.LFB58
	.4byte	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1d3c
	.uleb128 0x29
	.4byte	.LASF183
	.byte	0x1
	.2byte	0x215
	.4byte	0xb5
	.uleb128 0x5
	.byte	0x3
	.4byte	loaded$8291
	.uleb128 0x26
	.4byte	.LVL128
	.4byte	0x1faa
	.uleb128 0x26
	.4byte	.LVL129
	.4byte	0x1fb5
	.uleb128 0x26
	.4byte	.LVL130
	.4byte	0x1fc0
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x1d42
	.uleb128 0x13
	.4byte	0x22f
	.uleb128 0x2a
	.4byte	.LASF184
	.byte	0x4
	.2byte	0x2cc
	.4byte	0x1d5a
	.byte	0x6
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.uleb128 0x13
	.4byte	0x122
	.uleb128 0x2a
	.4byte	.LASF185
	.byte	0x4
	.2byte	0x2cd
	.4byte	0x1d72
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	0x122
	.uleb128 0x2b
	.string	"hci"
	.byte	0x1
	.byte	0x31
	.4byte	0x1d88
	.uleb128 0x5
	.byte	0x3
	.4byte	hci
	.uleb128 0xc
	.byte	0x4
	.4byte	0x1d8e
	.uleb128 0x13
	.4byte	0x497
	.uleb128 0x22
	.4byte	.LASF186
	.byte	0x1
	.byte	0x32
	.4byte	0x1da4
	.uleb128 0x5
	.byte	0x3
	.4byte	packet_factory
	.uleb128 0xc
	.byte	0x4
	.4byte	0x1daa
	.uleb128 0x13
	.4byte	0x66b
	.uleb128 0x22
	.4byte	.LASF187
	.byte	0x1
	.byte	0x33
	.4byte	0x1dc0
	.uleb128 0x5
	.byte	0x3
	.4byte	packet_parser
	.uleb128 0xc
	.byte	0x4
	.4byte	0x1dc6
	.uleb128 0x13
	.4byte	0x87b
	.uleb128 0x22
	.4byte	.LASF26
	.byte	0x1
	.byte	0x35
	.4byte	0x191
	.uleb128 0x5
	.byte	0x3
	.4byte	address
	.uleb128 0x22
	.4byte	.LASF188
	.byte	0x1
	.byte	0x36
	.4byte	0x6bb
	.uleb128 0x5
	.byte	0x3
	.4byte	bt_version
	.uleb128 0x8
	.4byte	0x7e
	.4byte	0x1dfd
	.uleb128 0xa
	.4byte	0x110
	.byte	0x3f
	.byte	0
	.uleb128 0x22
	.4byte	.LASF189
	.byte	0x1
	.byte	0x38
	.4byte	0x1ded
	.uleb128 0x5
	.byte	0x3
	.4byte	supported_commands
	.uleb128 0x8
	.4byte	0x1c1
	.4byte	0x1e1e
	.uleb128 0xa
	.4byte	0x110
	.byte	0x2
	.byte	0
	.uleb128 0x22
	.4byte	.LASF190
	.byte	0x1
	.byte	0x39
	.4byte	0x1e0e
	.uleb128 0x5
	.byte	0x3
	.4byte	features_classic
	.uleb128 0x22
	.4byte	.LASF191
	.byte	0x1
	.byte	0x3a
	.4byte	0x7e
	.uleb128 0x5
	.byte	0x3
	.4byte	last_features_classic_page_index
	.uleb128 0x22
	.4byte	.LASF192
	.byte	0x1
	.byte	0x3c
	.4byte	0x89
	.uleb128 0x5
	.byte	0x3
	.4byte	acl_data_size_classic
	.uleb128 0x22
	.4byte	.LASF193
	.byte	0x1
	.byte	0x3d
	.4byte	0x89
	.uleb128 0x5
	.byte	0x3
	.4byte	acl_data_size_ble
	.uleb128 0x22
	.4byte	.LASF194
	.byte	0x1
	.byte	0x3e
	.4byte	0x89
	.uleb128 0x5
	.byte	0x3
	.4byte	acl_buffer_count_classic
	.uleb128 0x22
	.4byte	.LASF195
	.byte	0x1
	.byte	0x3f
	.4byte	0x7e
	.uleb128 0x5
	.byte	0x3
	.4byte	acl_buffer_count_ble
	.uleb128 0x22
	.4byte	.LASF196
	.byte	0x1
	.byte	0x41
	.4byte	0x7e
	.uleb128 0x5
	.byte	0x3
	.4byte	sco_data_size
	.uleb128 0x22
	.4byte	.LASF197
	.byte	0x1
	.byte	0x42
	.4byte	0x89
	.uleb128 0x5
	.byte	0x3
	.4byte	sco_buffer_count
	.uleb128 0x22
	.4byte	.LASF198
	.byte	0x1
	.byte	0x44
	.4byte	0x7e
	.uleb128 0x5
	.byte	0x3
	.4byte	ble_white_list_size
	.uleb128 0x22
	.4byte	.LASF199
	.byte	0x1
	.byte	0x45
	.4byte	0x7e
	.uleb128 0x5
	.byte	0x3
	.4byte	ble_resolving_list_max_size
	.uleb128 0x22
	.4byte	.LASF200
	.byte	0x1
	.byte	0x46
	.4byte	0x1b1
	.uleb128 0x5
	.byte	0x3
	.4byte	ble_supported_states
	.uleb128 0x22
	.4byte	.LASF201
	.byte	0x1
	.byte	0x47
	.4byte	0x1c1
	.uleb128 0x5
	.byte	0x3
	.4byte	features_ble
	.uleb128 0x22
	.4byte	.LASF202
	.byte	0x1
	.byte	0x48
	.4byte	0x89
	.uleb128 0x5
	.byte	0x3
	.4byte	ble_suggested_default_data_length
	.uleb128 0x22
	.4byte	.LASF203
	.byte	0x1
	.byte	0x49
	.4byte	0x89
	.uleb128 0x5
	.byte	0x3
	.4byte	ble_suggested_default_data_txtime
	.uleb128 0x22
	.4byte	.LASF204
	.byte	0x1
	.byte	0x4b
	.4byte	0xb5
	.uleb128 0x5
	.byte	0x3
	.4byte	readable
	.uleb128 0x22
	.4byte	.LASF205
	.byte	0x1
	.byte	0x4c
	.4byte	0xb5
	.uleb128 0x5
	.byte	0x3
	.4byte	ble_supported
	.uleb128 0x22
	.4byte	.LASF206
	.byte	0x1
	.byte	0x4d
	.4byte	0xb5
	.uleb128 0x5
	.byte	0x3
	.4byte	simple_pairing_supported
	.uleb128 0x2c
	.4byte	.LASF207
	.byte	0x1
	.byte	0x4e
	.4byte	0x1f4a
	.uleb128 0x13
	.4byte	0xb5
	.uleb128 0x29
	.4byte	.LASF208
	.byte	0x1
	.2byte	0x1e2
	.4byte	0x1d42
	.uleb128 0x5
	.byte	0x3
	.4byte	interface
	.uleb128 0x2d
	.4byte	.LASF209
	.byte	0x1
	.byte	0x21
	.4byte	0x62c
	.uleb128 0x5
	.byte	0x3
	.4byte	BLE_EVENT_MASK
	.uleb128 0x2d
	.4byte	.LASF210
	.byte	0x1
	.byte	0x24
	.4byte	0x62c
	.uleb128 0x5
	.byte	0x3
	.4byte	CLASSIC_EVENT_MASK
	.uleb128 0x2d
	.4byte	.LASF211
	.byte	0x1
	.byte	0x2a
	.4byte	0x8fe
	.uleb128 0x5
	.byte	0x3
	.4byte	SCO_HOST_BUFFER_SIZE
	.uleb128 0x2e
	.4byte	.LASF212
	.4byte	.LASF212
	.byte	0x13
	.byte	0x29
	.uleb128 0x2e
	.4byte	.LASF213
	.4byte	.LASF213
	.byte	0xb
	.byte	0x31
	.uleb128 0x2e
	.4byte	.LASF214
	.4byte	.LASF214
	.byte	0xd
	.byte	0x5d
	.uleb128 0x2e
	.4byte	.LASF215
	.4byte	.LASF215
	.byte	0xf
	.byte	0x32
	.uleb128 0x2e
	.4byte	.LASF216
	.4byte	.LASF216
	.byte	0x11
	.byte	0x64
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x12
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1f
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
	.uleb128 0x2116
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
	.uleb128 0x2113
	.uleb128 0x18
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
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
	.uleb128 0x1
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x18
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL39
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL42
	.4byte	.LFE31
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL47
	.4byte	.LVL48-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL51
	.4byte	.LVL52-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL55
	.4byte	.LVL56-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL59
	.4byte	.LVL60-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL63
	.4byte	.LVL64-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL67
	.4byte	.LVL68-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL71
	.4byte	.LVL72-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL75
	.4byte	.LVL76-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL80
	.4byte	.LVL81-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL86
	.4byte	.LVL87-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL90
	.4byte	.LVL91-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL94
	.4byte	.LVL95-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL98
	.4byte	.LVL99-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL102
	.4byte	.LVL103-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL106
	.4byte	.LVL107-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL110
	.4byte	.LVL111-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL114
	.4byte	.LVL115-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL118
	.4byte	.LVL119-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL122
	.4byte	.LVL123-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL126
	.4byte	.LVL127-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL82
	.4byte	.LVL83
	.2byte	0x7
	.byte	0x7b
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x33
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL83
	.4byte	.LVL84-1
	.2byte	0xf
	.byte	0x3
	.4byte	features_classic+6
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x32
	.byte	0x24
	.byte	0x33
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x11c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB58
	.4byte	.LFE58-.LFB58
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB57
	.4byte	.LFE57
	.4byte	.LFB56
	.4byte	.LFE56
	.4byte	.LFB55
	.4byte	.LFE55
	.4byte	.LFB54
	.4byte	.LFE54
	.4byte	.LFB53
	.4byte	.LFE53
	.4byte	.LFB52
	.4byte	.LFE52
	.4byte	.LFB51
	.4byte	.LFE51
	.4byte	.LFB50
	.4byte	.LFE50
	.4byte	.LFB49
	.4byte	.LFE49
	.4byte	.LFB48
	.4byte	.LFE48
	.4byte	.LFB47
	.4byte	.LFE47
	.4byte	.LFB44
	.4byte	.LFE44
	.4byte	.LFB46
	.4byte	.LFE46
	.4byte	.LFB45
	.4byte	.LFE45
	.4byte	.LFB43
	.4byte	.LFE43
	.4byte	.LFB42
	.4byte	.LFE42
	.4byte	.LFB41
	.4byte	.LFE41
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	.LFB37
	.4byte	.LFE37
	.4byte	.LFB36
	.4byte	.LFE36
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB58
	.4byte	.LFE58
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF122:
	.string	"BTM_EIR_UUID_SERVCLASS_SERIAL_PORT"
.LASF195:
	.string	"acl_buffer_count_ble"
.LASF101:
	.string	"hci_packet_factory_t"
.LASF188:
	.string	"bt_version"
.LASF23:
	.string	"size_t"
.LASF183:
	.string	"loaded"
.LASF152:
	.string	"BTM_EIR_UUID_SERVCLASS_CABLE_REPLACEMENT"
.LASF108:
	.string	"parse_generic_command_complete"
.LASF100:
	.string	"make_write_default_erroneous_data_report"
.LASF73:
	.string	"hci_t"
.LASF118:
	.string	"parse_ble_read_resolving_list_size_response"
.LASF3:
	.string	"__uint8_t"
.LASF88:
	.string	"make_write_secure_connections_host_support"
.LASF83:
	.string	"make_read_local_version_info"
.LASF75:
	.string	"transmit_command"
.LASF196:
	.string	"sco_data_size"
.LASF81:
	.string	"make_set_c2h_flow_control"
.LASF112:
	.string	"parse_read_local_supported_commands_response"
.LASF151:
	.string	"BTM_EIR_UUID_SERVCLASS_HUMAN_INTERFACE"
.LASF190:
	.string	"features_classic"
.LASF157:
	.string	"BTM_EIR_UUID_SERVCLASS_PBAP_PSE"
.LASF29:
	.string	"bt_device_features_t"
.LASF19:
	.string	"data"
.LASF178:
	.string	"resolving_list_max_size"
.LASF63:
	.string	"get_acl_packet_size_ble"
.LASF30:
	.string	"QueueHandle_t"
.LASF38:
	.string	"controller_t"
.LASF89:
	.string	"make_set_event_mask"
.LASF55:
	.string	"supports_master_slave_role_switch"
.LASF160:
	.string	"BTM_EIR_UUID_SERVCLASS_PNP_INFORMATION"
.LASF90:
	.string	"make_ble_write_host_support"
.LASF72:
	.string	"command_status_cb"
.LASF180:
	.string	"response"
.LASF116:
	.string	"parse_ble_read_supported_states_response"
.LASF91:
	.string	"make_ble_read_white_list_size"
.LASF0:
	.string	"signed char"
.LASF210:
	.string	"CLASSIC_EVENT_MASK"
.LASF113:
	.string	"parse_read_local_extended_features_response"
.LASF148:
	.string	"BTM_EIR_UUID_SERVCLASS_DIR_PRT_REF_OBJ_SERVICE"
.LASF134:
	.string	"BTM_EIR_UUID_SERVCLASS_AV_REMOTE_CONTROL"
.LASF44:
	.string	"get_features_classic"
.LASF9:
	.string	"long long unsigned int"
.LASF207:
	.string	"secure_connections_supported"
.LASF150:
	.string	"BTM_EIR_UUID_SERVCLASS_PRINTING_STATUS"
.LASF181:
	.string	"page_number"
.LASF123:
	.string	"BTM_EIR_UUID_SERVCLASS_LAN_ACCESS_USING_PPP"
.LASF176:
	.string	"get_ble_suggested_default_data_txtime"
.LASF110:
	.string	"parse_read_local_version_info_response"
.LASF24:
	.string	"long int"
.LASF45:
	.string	"get_last_features_classic_index"
.LASF78:
	.string	"bt_event_mask_t"
.LASF215:
	.string	"hci_packet_factory_get_interface"
.LASF7:
	.string	"unsigned int"
.LASF95:
	.string	"make_ble_read_resolving_list_size"
.LASF133:
	.string	"BTM_EIR_UUID_SERVCLASS_AV_REM_CTRL_TARGET"
.LASF8:
	.string	"long long int"
.LASF84:
	.string	"make_read_bd_addr"
.LASF97:
	.string	"make_ble_write_suggested_default_data_length"
.LASF11:
	.string	"uint16_t"
.LASF71:
	.string	"command_complete_cb"
.LASF169:
	.string	"BTM_PM_STS_HOLD"
.LASF147:
	.string	"BTM_EIR_UUID_SERVCLASS_AG_HANDSFREE"
.LASF43:
	.string	"get_bt_version"
.LASF149:
	.string	"BTM_EIR_UUID_SERVCLASS_BASIC_PRINTING"
.LASF111:
	.string	"parse_read_bd_addr_response"
.LASF162:
	.string	"BTM_EIR_UUID_SERVCLASS_VIDEO_SINK"
.LASF168:
	.string	"BTM_PM_STS_ACTIVE"
.LASF117:
	.string	"parse_ble_read_local_supported_features_response"
.LASF27:
	.string	"bt_bdaddr_t"
.LASF197:
	.string	"sco_buffer_count"
.LASF69:
	.string	"get_ble_resolving_list_max_size"
.LASF92:
	.string	"make_ble_read_buffer_size"
.LASF167:
	.string	"BTM_EIR_MAX_SERVICES"
.LASF185:
	.string	"bd_addr_null"
.LASF58:
	.string	"supports_ble_connection_parameters_request"
.LASF94:
	.string	"make_ble_read_local_supported_features"
.LASF206:
	.string	"simple_pairing_supported"
.LASF194:
	.string	"acl_buffer_count_classic"
.LASF77:
	.string	"transmit_downward"
.LASF127:
	.string	"BTM_EIR_UUID_SERVCLASS_OBEX_FILE_TRANSFER"
.LASF213:
	.string	"future_await"
.LASF64:
	.string	"get_ble_default_data_packet_length"
.LASF124:
	.string	"BTM_EIR_UUID_SERVCLASS_DIALUP_NETWORKING"
.LASF21:
	.string	"BT_HDR"
.LASF25:
	.string	"long unsigned int"
.LASF59:
	.string	"supports_ble_privacy"
.LASF66:
	.string	"get_acl_buffer_count_classic"
.LASF186:
	.string	"packet_factory"
.LASF135:
	.string	"BTM_EIR_UUID_SERVCLASS_INTERCOM"
.LASF158:
	.string	"BTM_EIR_UUID_SERVCLASS_PHONE_ACCESS"
.LASF51:
	.string	"supports_reading_remote_extended_features"
.LASF182:
	.string	"simultaneous_le_host"
.LASF49:
	.string	"supports_secure_connections"
.LASF16:
	.string	"event"
.LASF5:
	.string	"short unsigned int"
.LASF140:
	.string	"BTM_EIR_UUID_SERVCLASS_GN"
.LASF114:
	.string	"parse_ble_read_white_list_size_response"
.LASF211:
	.string	"SCO_HOST_BUFFER_SIZE"
.LASF154:
	.string	"BTM_EIR_UUID_SERVCLASS_HCRP_SCAN"
.LASF191:
	.string	"last_features_classic_page_index"
.LASF52:
	.string	"supports_interlaced_inquiry_scan"
.LASF56:
	.string	"supports_ble"
.LASF164:
	.string	"BTM_EIR_UUID_SERVCLASS_MESSAGE_NOTIFICATION"
.LASF187:
	.string	"packet_parser"
.LASF102:
	.string	"hci_version"
.LASF208:
	.string	"interface"
.LASF46:
	.string	"get_features_ble"
.LASF99:
	.string	"make_write_sync_flow_control_enable"
.LASF115:
	.string	"parse_ble_read_buffer_size_response"
.LASF103:
	.string	"hci_revision"
.LASF61:
	.string	"get_acl_data_size_ble"
.LASF174:
	.string	"BTM_PM_STS_ERROR"
.LASF62:
	.string	"get_acl_packet_size_classic"
.LASF166:
	.string	"BTM_EIR_UUID_SERVCLASS_HDP_SINK"
.LASF20:
	.string	"sizetype"
.LASF107:
	.string	"bt_version_t"
.LASF80:
	.string	"make_read_buffer_size"
.LASF26:
	.string	"address"
.LASF209:
	.string	"BLE_EVENT_MASK"
.LASF14:
	.string	"UINT32"
.LASF131:
	.string	"BTM_EIR_UUID_SERVCLASS_AUDIO_SOURCE"
.LASF54:
	.string	"supports_extended_inquiry_response"
.LASF37:
	.string	"future"
.LASF39:
	.string	"start_up"
.LASF163:
	.string	"BTM_EIR_UUID_SERVCLASS_MESSAGE_ACCESS"
.LASF106:
	.string	"lmp_subversion"
.LASF33:
	.string	"ready_can_be_called"
.LASF82:
	.string	"make_host_buffer_size"
.LASF145:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING_REF_OBJECTS"
.LASF129:
	.string	"BTM_EIR_UUID_SERVCLASS_HEADSET"
.LASF130:
	.string	"BTM_EIR_UUID_SERVCLASS_CORDLESS_TELEPHONY"
.LASF143:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING_RESPONDER"
.LASF155:
	.string	"BTM_EIR_UUID_SERVCLASS_SAP"
.LASF177:
	.string	"get_ble_suggested_default_data_length"
.LASF70:
	.string	"set_ble_resolving_list_max_size"
.LASF142:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING"
.LASF98:
	.string	"make_ble_set_event_mask"
.LASF104:
	.string	"lmp_version"
.LASF141:
	.string	"BTM_EIR_UUID_SERVCLASS_DIRECT_PRINTING"
.LASF144:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING_AUTO_ARCHIVE"
.LASF189:
	.string	"supported_commands"
.LASF204:
	.string	"readable"
.LASF34:
	.string	"semaphore"
.LASF15:
	.string	"_Bool"
.LASF212:
	.string	"__assert_func"
.LASF1:
	.string	"unsigned char"
.LASF120:
	.string	"hci_packet_parser_t"
.LASF36:
	.string	"future_t"
.LASF125:
	.string	"BTM_EIR_UUID_SERVCLASS_IRMC_SYNC"
.LASF2:
	.string	"short int"
.LASF199:
	.string	"ble_resolving_list_max_size"
.LASF42:
	.string	"get_address"
.LASF119:
	.string	"parse_ble_read_suggested_default_data_length_response"
.LASF170:
	.string	"BTM_PM_STS_SNIFF"
.LASF175:
	.string	"__func__"
.LASF171:
	.string	"BTM_PM_STS_PARK"
.LASF105:
	.string	"manufacturer"
.LASF40:
	.string	"shut_down"
.LASF198:
	.string	"ble_white_list_size"
.LASF86:
	.string	"make_read_local_extended_features"
.LASF93:
	.string	"make_ble_read_supported_states"
.LASF193:
	.string	"acl_data_size_ble"
.LASF57:
	.string	"supports_ble_packet_extension"
.LASF126:
	.string	"BTM_EIR_UUID_SERVCLASS_OBEX_OBJECT_PUSH"
.LASF12:
	.string	"uint32_t"
.LASF218:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/device/controller.c"
.LASF146:
	.string	"BTM_EIR_UUID_SERVCLASS_HF_HANDSFREE"
.LASF203:
	.string	"ble_suggested_default_data_txtime"
.LASF31:
	.string	"SemaphoreHandle_t"
.LASF22:
	.string	"char"
.LASF220:
	.string	"controller_get_interface"
.LASF74:
	.string	"do_postload"
.LASF4:
	.string	"__uint16_t"
.LASF179:
	.string	"index"
.LASF192:
	.string	"acl_data_size_classic"
.LASF137:
	.string	"BTM_EIR_UUID_SERVCLASS_HEADSET_AUDIO_GATEWAY"
.LASF216:
	.string	"hci_packet_parser_get_interface"
.LASF6:
	.string	"__uint32_t"
.LASF139:
	.string	"BTM_EIR_UUID_SERVCLASS_NAP"
.LASF87:
	.string	"make_write_simple_pairing_mode"
.LASF153:
	.string	"BTM_EIR_UUID_SERVCLASS_HCRP_PRINT"
.LASF17:
	.string	"offset"
.LASF214:
	.string	"hci_layer_get_interface"
.LASF28:
	.string	"as_array"
.LASF172:
	.string	"BTM_PM_STS_SSR"
.LASF68:
	.string	"get_ble_white_list_size"
.LASF67:
	.string	"get_acl_buffer_count_ble"
.LASF205:
	.string	"ble_supported"
.LASF53:
	.string	"supports_rssi_with_inquiry_results"
.LASF18:
	.string	"layer_specific"
.LASF200:
	.string	"ble_supported_states"
.LASF128:
	.string	"BTM_EIR_UUID_SERVCLASS_IRMC_SYNC_COMMAND"
.LASF60:
	.string	"get_acl_data_size_classic"
.LASF165:
	.string	"BTM_EIR_UUID_SERVCLASS_HDP_SOURCE"
.LASF47:
	.string	"get_ble_supported_states"
.LASF138:
	.string	"BTM_EIR_UUID_SERVCLASS_PANU"
.LASF76:
	.string	"transmit_command_futured"
.LASF202:
	.string	"ble_suggested_default_data_length"
.LASF201:
	.string	"features_ble"
.LASF13:
	.string	"UINT8"
.LASF159:
	.string	"BTM_EIR_UUID_SERVCLASS_HEADSET_HS"
.LASF10:
	.string	"uint8_t"
.LASF184:
	.string	"bd_addr_any"
.LASF32:
	.string	"osi_sem_t"
.LASF173:
	.string	"BTM_PM_STS_PENDING"
.LASF65:
	.string	"get_ble_default_data_packet_txtime"
.LASF132:
	.string	"BTM_EIR_UUID_SERVCLASS_AUDIO_SINK"
.LASF48:
	.string	"supports_simple_pairing"
.LASF121:
	.string	"BTM_EIR_UUID_SERVCLASS_SERVICE_DISCOVERY_SERVER"
.LASF219:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\bt"
.LASF217:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF79:
	.string	"make_reset"
.LASF109:
	.string	"parse_read_buffer_size_response"
.LASF96:
	.string	"make_ble_read_suggested_default_data_length"
.LASF50:
	.string	"supports_simultaneous_le_bredr"
.LASF85:
	.string	"make_read_local_supported_commands"
.LASF136:
	.string	"BTM_EIR_UUID_SERVCLASS_FAX"
.LASF41:
	.string	"get_is_ready"
.LASF35:
	.string	"result"
.LASF156:
	.string	"BTM_EIR_UUID_SERVCLASS_PBAP_PCE"
.LASF161:
	.string	"BTM_EIR_UUID_SERVCLASS_VIDEO_SOURCE"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
