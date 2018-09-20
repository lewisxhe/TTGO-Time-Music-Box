	.file	"aes.c"
	.text
.Ltext0:
	.section	.text.xor_block,"ax",@progbits
	.align	4
	.type	xor_block, @function
xor_block:
.LFB5:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/smp/aes.c"
	.loc 1 349 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 351 0
	l32i.n	a8, a3, 0
	l32i.n	a9, a2, 0
	xor	a8, a9, a8
	s32i.n	a8, a2, 0
	.loc 1 352 0
	l32i.n	a8, a3, 4
	l32i.n	a9, a2, 4
	xor	a8, a9, a8
	s32i.n	a8, a2, 4
	.loc 1 353 0
	l32i.n	a8, a3, 8
	l32i.n	a9, a2, 8
	xor	a8, a9, a8
	s32i.n	a8, a2, 8
	.loc 1 354 0
	l32i.n	a3, a3, 12
.LVL1:
	l32i.n	a8, a2, 12
	xor	a3, a8, a3
	s32i.n	a3, a2, 12
	retw.n
.LFE5:
	.size	xor_block, .-xor_block
	.section	.text.copy_and_key,"ax",@progbits
	.align	4
	.type	copy_and_key, @function
copy_and_key:
.LFB6:
	.loc 1 376 0
.LVL2:
	entry	sp, 32
.LCFI1:
	.loc 1 378 0
	l32i.n	a9, a3, 0
	l32i.n	a8, a4, 0
	xor	a8, a9, a8
	s32i.n	a8, a2, 0
	.loc 1 379 0
	l32i.n	a9, a3, 4
	l32i.n	a8, a4, 4
	xor	a8, a9, a8
	s32i.n	a8, a2, 4
	.loc 1 380 0
	l32i.n	a9, a3, 8
	l32i.n	a8, a4, 8
	xor	a8, a9, a8
	s32i.n	a8, a2, 8
	.loc 1 381 0
	l32i.n	a8, a3, 12
	l32i.n	a3, a4, 12
.LVL3:
	xor	a3, a8, a3
	s32i.n	a3, a2, 12
	retw.n
.LFE6:
	.size	copy_and_key, .-copy_and_key
	.section	.text.add_round_key,"ax",@progbits
	.align	4
	.type	add_round_key, @function
add_round_key:
.LFB7:
	.loc 1 406 0
.LVL4:
	entry	sp, 32
.LCFI2:
	.loc 1 407 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	xor_block
.LVL5:
	retw.n
.LFE7:
	.size	add_round_key, .-add_round_key
	.section	.text.shift_sub_rows,"ax",@progbits
	.literal_position
	.literal .LC0, sbox
	.align	4
	.type	shift_sub_rows, @function
shift_sub_rows:
.LFB8:
	.loc 1 411 0
.LVL6:
	entry	sp, 32
.LCFI3:
	.loc 1 414 0
	l8ui	a9, a2, 0
	l32r	a8, .LC0
	add.n	a9, a8, a9
	l8ui	a9, a9, 0
	s8i	a9, a2, 0
	l8ui	a9, a2, 4
	add.n	a9, a8, a9
	l8ui	a9, a9, 0
	s8i	a9, a2, 4
	.loc 1 415 0
	l8ui	a9, a2, 8
	add.n	a9, a8, a9
	l8ui	a9, a9, 0
	s8i	a9, a2, 8
	l8ui	a9, a2, 12
	add.n	a9, a8, a9
	l8ui	a9, a9, 0
	s8i	a9, a2, 12
	.loc 1 417 0
	l8ui	a9, a2, 1
.LVL7:
	l8ui	a10, a2, 5
	add.n	a10, a8, a10
	l8ui	a10, a10, 0
	s8i	a10, a2, 1
.LVL8:
	l8ui	a10, a2, 9
	add.n	a10, a8, a10
	l8ui	a10, a10, 0
	s8i	a10, a2, 5
	.loc 1 418 0
	l8ui	a10, a2, 13
	add.n	a10, a8, a10
	l8ui	a10, a10, 0
	s8i	a10, a2, 9
	add.n	a9, a8, a9
.LVL9:
	l8ui	a9, a9, 0
	s8i	a9, a2, 13
	.loc 1 420 0
	l8ui	a9, a2, 2
.LVL10:
	l8ui	a10, a2, 10
	add.n	a10, a8, a10
	l8ui	a10, a10, 0
	s8i	a10, a2, 2
.LVL11:
	add.n	a9, a8, a9
.LVL12:
	l8ui	a9, a9, 0
	s8i	a9, a2, 10
	.loc 1 421 0
	l8ui	a9, a2, 6
.LVL13:
	l8ui	a10, a2, 14
	add.n	a10, a8, a10
	l8ui	a10, a10, 0
	s8i	a10, a2, 6
.LVL14:
	add.n	a9, a8, a9
.LVL15:
	l8ui	a9, a9, 0
	s8i	a9, a2, 14
	.loc 1 423 0
	l8ui	a9, a2, 15
.LVL16:
	l8ui	a10, a2, 11
	add.n	a10, a8, a10
	l8ui	a10, a10, 0
	s8i	a10, a2, 15
.LVL17:
	l8ui	a10, a2, 7
	add.n	a10, a8, a10
	l8ui	a10, a10, 0
	s8i	a10, a2, 11
	.loc 1 424 0
	l8ui	a10, a2, 3
	add.n	a10, a8, a10
	l8ui	a10, a10, 0
	s8i	a10, a2, 7
	add.n	a8, a8, a9
	l8ui	a8, a8, 0
	s8i	a8, a2, 3
	retw.n
.LFE8:
	.size	shift_sub_rows, .-shift_sub_rows
	.section	.text.inv_shift_sub_rows,"ax",@progbits
	.literal_position
	.literal .LC1, isbox
	.align	4
	.type	inv_shift_sub_rows, @function
inv_shift_sub_rows:
.LFB9:
	.loc 1 428 0
.LVL18:
	entry	sp, 32
.LCFI4:
	.loc 1 431 0
	l8ui	a9, a2, 0
	l32r	a8, .LC1
	add.n	a9, a8, a9
	l8ui	a9, a9, 0
	s8i	a9, a2, 0
	l8ui	a9, a2, 4
	add.n	a9, a8, a9
	l8ui	a9, a9, 0
	s8i	a9, a2, 4
	.loc 1 432 0
	l8ui	a9, a2, 8
	add.n	a9, a8, a9
	l8ui	a9, a9, 0
	s8i	a9, a2, 8
	l8ui	a9, a2, 12
	add.n	a9, a8, a9
	l8ui	a9, a9, 0
	s8i	a9, a2, 12
	.loc 1 434 0
	l8ui	a9, a2, 13
.LVL19:
	l8ui	a10, a2, 9
	add.n	a10, a8, a10
	l8ui	a10, a10, 0
	s8i	a10, a2, 13
.LVL20:
	l8ui	a10, a2, 5
	add.n	a10, a8, a10
	l8ui	a10, a10, 0
	s8i	a10, a2, 9
	.loc 1 435 0
	l8ui	a10, a2, 1
	add.n	a10, a8, a10
	l8ui	a10, a10, 0
	s8i	a10, a2, 5
	add.n	a9, a8, a9
.LVL21:
	l8ui	a9, a9, 0
	s8i	a9, a2, 1
	.loc 1 437 0
	l8ui	a9, a2, 2
.LVL22:
	l8ui	a10, a2, 10
	add.n	a10, a8, a10
	l8ui	a10, a10, 0
	s8i	a10, a2, 2
.LVL23:
	add.n	a9, a8, a9
.LVL24:
	l8ui	a9, a9, 0
	s8i	a9, a2, 10
	.loc 1 438 0
	l8ui	a9, a2, 6
.LVL25:
	l8ui	a10, a2, 14
	add.n	a10, a8, a10
	l8ui	a10, a10, 0
	s8i	a10, a2, 6
.LVL26:
	add.n	a9, a8, a9
.LVL27:
	l8ui	a9, a9, 0
	s8i	a9, a2, 14
	.loc 1 440 0
	l8ui	a9, a2, 3
.LVL28:
	l8ui	a10, a2, 7
	add.n	a10, a8, a10
	l8ui	a10, a10, 0
	s8i	a10, a2, 3
.LVL29:
	l8ui	a10, a2, 11
	add.n	a10, a8, a10
	l8ui	a10, a10, 0
	s8i	a10, a2, 7
	.loc 1 441 0
	l8ui	a10, a2, 15
	add.n	a10, a8, a10
	l8ui	a10, a10, 0
	s8i	a10, a2, 11
	add.n	a8, a8, a9
	l8ui	a8, a8, 0
	s8i	a8, a2, 15
	retw.n
.LFE9:
	.size	inv_shift_sub_rows, .-inv_shift_sub_rows
	.section	.text.mix_sub_columns,"ax",@progbits
	.literal_position
	.literal .LC2, gfm2_sbox
	.literal .LC3, gfm3_sbox
	.literal .LC4, sbox
	.align	4
	.type	mix_sub_columns, @function
mix_sub_columns:
.LFB10:
	.loc 1 446 0
.LVL30:
	entry	sp, 48
.LCFI5:
	.loc 1 448 0
	movi.n	a12, 0x10
	mov.n	a11, a2
	mov.n	a10, sp
	call8	memcpy
.LVL31:
	.loc 1 453 0
	l8ui	a14, sp, 0
	l32r	a8, .LC2
	add.n	a3, a8, a14
	l8ui	a5, a3, 0
	l8ui	a3, sp, 5
	l32r	a9, .LC3
	add.n	a4, a9, a3
	l8ui	a4, a4, 0
	l8ui	a12, sp, 10
	l32r	a10, .LC4
	add.n	a6, a10, a12
	l8ui	a6, a6, 0
	l8ui	a13, sp, 15
	add.n	a11, a10, a13
	l8ui	a15, a11, 0
	xor	a4, a5, a4
	xor	a4, a6, a4
	xor	a4, a15, a4
	s8i	a4, a2, 0
	.loc 1 454 0
	add.n	a4, a10, a14
	l8ui	a11, a4, 0
	add.n	a4, a8, a3
	l8ui	a5, a4, 0
	add.n	a4, a9, a12
	l8ui	a4, a4, 0
	xor	a5, a11, a5
	xor	a4, a4, a5
	xor	a4, a15, a4
	s8i	a4, a2, 1
	.loc 1 455 0
	add.n	a3, a10, a3
	l8ui	a3, a3, 0
	add.n	a12, a8, a12
	l8ui	a5, a12, 0
	add.n	a4, a9, a13
	l8ui	a4, a4, 0
	xor	a12, a11, a3
	xor	a11, a5, a12
	xor	a11, a4, a11
	s8i	a11, a2, 2
	.loc 1 456 0
	add.n	a14, a9, a14
	l8ui	a4, a14, 0
	add.n	a13, a8, a13
	l8ui	a5, a13, 0
	xor	a4, a3, a4
	xor	a3, a6, a4
	xor	a3, a5, a3
	s8i	a3, a2, 3
	.loc 1 458 0
	l8ui	a14, sp, 4
	add.n	a3, a8, a14
	l8ui	a5, a3, 0
	l8ui	a3, sp, 9
	add.n	a4, a9, a3
	l8ui	a4, a4, 0
	l8ui	a12, sp, 14
	add.n	a6, a10, a12
	l8ui	a6, a6, 0
	l8ui	a13, sp, 3
	add.n	a11, a10, a13
	l8ui	a15, a11, 0
	xor	a4, a5, a4
	xor	a4, a6, a4
	xor	a4, a15, a4
	s8i	a4, a2, 4
	.loc 1 459 0
	add.n	a4, a10, a14
	l8ui	a11, a4, 0
	add.n	a4, a8, a3
	l8ui	a5, a4, 0
	add.n	a4, a9, a12
	l8ui	a4, a4, 0
	xor	a5, a11, a5
	xor	a4, a4, a5
	xor	a4, a15, a4
	s8i	a4, a2, 5
	.loc 1 460 0
	add.n	a3, a10, a3
	l8ui	a3, a3, 0
	add.n	a12, a8, a12
	l8ui	a5, a12, 0
	add.n	a4, a9, a13
	l8ui	a4, a4, 0
	xor	a12, a11, a3
	xor	a11, a5, a12
	xor	a11, a4, a11
	s8i	a11, a2, 6
	.loc 1 461 0
	add.n	a14, a9, a14
	l8ui	a4, a14, 0
	add.n	a13, a8, a13
	l8ui	a5, a13, 0
	xor	a4, a3, a4
	xor	a3, a6, a4
	xor	a3, a5, a3
	s8i	a3, a2, 7
	.loc 1 463 0
	l8ui	a14, sp, 8
	add.n	a3, a8, a14
	l8ui	a5, a3, 0
	l8ui	a3, sp, 13
	add.n	a4, a9, a3
	l8ui	a4, a4, 0
	l8ui	a12, sp, 2
	add.n	a6, a10, a12
	l8ui	a6, a6, 0
	l8ui	a13, sp, 7
	add.n	a11, a10, a13
	l8ui	a15, a11, 0
	xor	a4, a5, a4
	xor	a4, a6, a4
	xor	a4, a15, a4
	s8i	a4, a2, 8
	.loc 1 464 0
	add.n	a4, a10, a14
	l8ui	a11, a4, 0
	add.n	a4, a8, a3
	l8ui	a5, a4, 0
	add.n	a4, a9, a12
	l8ui	a4, a4, 0
	xor	a5, a11, a5
	xor	a4, a4, a5
	xor	a4, a15, a4
	s8i	a4, a2, 9
	.loc 1 465 0
	add.n	a3, a10, a3
	l8ui	a3, a3, 0
	add.n	a12, a8, a12
	l8ui	a5, a12, 0
	add.n	a4, a9, a13
	l8ui	a4, a4, 0
	xor	a12, a11, a3
	xor	a11, a5, a12
	xor	a11, a4, a11
	s8i	a11, a2, 10
	.loc 1 466 0
	add.n	a14, a9, a14
	l8ui	a4, a14, 0
	add.n	a13, a8, a13
	l8ui	a5, a13, 0
	xor	a4, a3, a4
	xor	a3, a6, a4
	xor	a3, a5, a3
	s8i	a3, a2, 11
	.loc 1 468 0
	l8ui	a3, sp, 12
	add.n	a4, a8, a3
	l8ui	a12, a4, 0
	l8ui	a5, sp, 1
	add.n	a4, a9, a5
	l8ui	a11, a4, 0
	l8ui	a4, sp, 6
	add.n	a6, a10, a4
	l8ui	a14, a6, 0
	l8ui	a15, sp, 11
	add.n	a6, a10, a15
	l8ui	a6, a6, 0
	xor	a11, a12, a11
	xor	a11, a14, a11
	xor	a11, a6, a11
	s8i	a11, a2, 12
	.loc 1 469 0
	add.n	a11, a10, a3
	l8ui	a11, a11, 0
	add.n	a12, a8, a5
	l8ui	a13, a12, 0
	add.n	a12, a9, a4
	l8ui	a12, a12, 0
	xor	a13, a11, a13
	xor	a12, a12, a13
	xor	a12, a6, a12
	s8i	a12, a2, 13
	.loc 1 470 0
	add.n	a10, a10, a5
	l8ui	a5, a10, 0
	add.n	a4, a8, a4
	l8ui	a6, a4, 0
	add.n	a4, a9, a15
	l8ui	a4, a4, 0
	xor	a10, a11, a5
	xor	a11, a6, a10
	xor	a11, a4, a11
	s8i	a11, a2, 14
	.loc 1 471 0
	add.n	a9, a9, a3
	l8ui	a9, a9, 0
	add.n	a15, a8, a15
	l8ui	a3, a15, 0
	xor	a9, a5, a9
	xor	a8, a14, a9
	xor	a8, a3, a8
	s8i	a8, a2, 15
	retw.n
.LFE10:
	.size	mix_sub_columns, .-mix_sub_columns
	.section	.text.inv_mix_sub_columns,"ax",@progbits
	.literal_position
	.literal .LC5, gfmul_e
	.literal .LC6, gfmul_b
	.literal .LC7, gfmul_d
	.literal .LC8, gfmul_9
	.literal .LC9, isbox
	.align	4
	.type	inv_mix_sub_columns, @function
inv_mix_sub_columns:
.LFB11:
	.loc 1 476 0
.LVL32:
	entry	sp, 48
.LCFI6:
	.loc 1 478 0
	movi.n	a12, 0x10
	mov.n	a11, a2
	mov.n	a10, sp
	call8	memcpy
.LVL33:
	.loc 1 483 0
	l8ui	a15, sp, 0
	l32r	a9, .LC5
	add.n	a3, a9, a15
	l8ui	a7, a3, 0
	l8ui	a14, sp, 1
	l32r	a12, .LC6
	add.n	a3, a12, a14
	l8ui	a4, a3, 0
	l8ui	a13, sp, 2
	l32r	a11, .LC7
	add.n	a3, a11, a13
	l8ui	a3, a3, 0
	l8ui	a5, sp, 3
	l32r	a10, .LC8
	add.n	a6, a10, a5
	l8ui	a6, a6, 0
	xor	a4, a7, a4
	xor	a3, a3, a4
	xor	a3, a6, a3
	l32r	a8, .LC9
	add.n	a3, a8, a3
	l8ui	a3, a3, 0
	s8i	a3, a2, 0
	.loc 1 484 0
	add.n	a3, a10, a15
	l8ui	a7, a3, 0
	add.n	a3, a9, a14
	l8ui	a4, a3, 0
	add.n	a3, a12, a13
	l8ui	a3, a3, 0
	add.n	a6, a11, a5
	l8ui	a6, a6, 0
	xor	a4, a7, a4
	xor	a3, a3, a4
	xor	a3, a6, a3
	add.n	a3, a8, a3
	l8ui	a3, a3, 0
	s8i	a3, a2, 5
	.loc 1 485 0
	add.n	a3, a11, a15
	l8ui	a7, a3, 0
	add.n	a3, a10, a14
	l8ui	a4, a3, 0
	add.n	a3, a9, a13
	l8ui	a3, a3, 0
	add.n	a6, a12, a5
	l8ui	a6, a6, 0
	xor	a4, a7, a4
	xor	a3, a3, a4
	xor	a3, a6, a3
	add.n	a3, a8, a3
	l8ui	a3, a3, 0
	s8i	a3, a2, 10
	.loc 1 486 0
	add.n	a15, a12, a15
	l8ui	a6, a15, 0
	add.n	a14, a11, a14
	l8ui	a4, a14, 0
	add.n	a13, a10, a13
	l8ui	a3, a13, 0
	add.n	a5, a9, a5
	l8ui	a5, a5, 0
	xor	a4, a6, a4
	xor	a3, a3, a4
	xor	a3, a5, a3
	add.n	a3, a8, a3
	l8ui	a3, a3, 0
	s8i	a3, a2, 15
	.loc 1 488 0
	l8ui	a15, sp, 4
	add.n	a3, a9, a15
	l8ui	a7, a3, 0
	l8ui	a14, sp, 5
	add.n	a3, a12, a14
	l8ui	a4, a3, 0
	l8ui	a13, sp, 6
	add.n	a3, a11, a13
	l8ui	a3, a3, 0
	l8ui	a5, sp, 7
	add.n	a6, a10, a5
	l8ui	a6, a6, 0
	xor	a4, a7, a4
	xor	a3, a3, a4
	xor	a3, a6, a3
	add.n	a3, a8, a3
	l8ui	a3, a3, 0
	s8i	a3, a2, 4
	.loc 1 489 0
	add.n	a3, a10, a15
	l8ui	a7, a3, 0
	add.n	a3, a9, a14
	l8ui	a4, a3, 0
	add.n	a3, a12, a13
	l8ui	a3, a3, 0
	add.n	a6, a11, a5
	l8ui	a6, a6, 0
	xor	a4, a7, a4
	xor	a3, a3, a4
	xor	a3, a6, a3
	add.n	a3, a8, a3
	l8ui	a3, a3, 0
	s8i	a3, a2, 9
	.loc 1 490 0
	add.n	a3, a11, a15
	l8ui	a7, a3, 0
	add.n	a3, a10, a14
	l8ui	a4, a3, 0
	add.n	a3, a9, a13
	l8ui	a3, a3, 0
	add.n	a6, a12, a5
	l8ui	a6, a6, 0
	xor	a4, a7, a4
	xor	a3, a3, a4
	xor	a3, a6, a3
	add.n	a3, a8, a3
	l8ui	a3, a3, 0
	s8i	a3, a2, 14
	.loc 1 491 0
	add.n	a15, a12, a15
	l8ui	a6, a15, 0
	add.n	a14, a11, a14
	l8ui	a4, a14, 0
	add.n	a13, a10, a13
	l8ui	a3, a13, 0
	add.n	a5, a9, a5
	l8ui	a5, a5, 0
	xor	a4, a6, a4
	xor	a3, a3, a4
	xor	a3, a5, a3
	add.n	a3, a8, a3
	l8ui	a3, a3, 0
	s8i	a3, a2, 3
	.loc 1 493 0
	l8ui	a15, sp, 8
	add.n	a3, a9, a15
	l8ui	a7, a3, 0
	l8ui	a14, sp, 9
	add.n	a3, a12, a14
	l8ui	a4, a3, 0
	l8ui	a13, sp, 10
	add.n	a3, a11, a13
	l8ui	a3, a3, 0
	l8ui	a5, sp, 11
	add.n	a6, a10, a5
	l8ui	a6, a6, 0
	xor	a4, a7, a4
	xor	a3, a3, a4
	xor	a3, a6, a3
	add.n	a3, a8, a3
	l8ui	a3, a3, 0
	s8i	a3, a2, 8
	.loc 1 494 0
	add.n	a3, a10, a15
	l8ui	a7, a3, 0
	add.n	a3, a9, a14
	l8ui	a4, a3, 0
	add.n	a3, a12, a13
	l8ui	a3, a3, 0
	add.n	a6, a11, a5
	l8ui	a6, a6, 0
	xor	a4, a7, a4
	xor	a3, a3, a4
	xor	a3, a6, a3
	add.n	a3, a8, a3
	l8ui	a3, a3, 0
	s8i	a3, a2, 13
	.loc 1 495 0
	add.n	a3, a11, a15
	l8ui	a7, a3, 0
	add.n	a3, a10, a14
	l8ui	a4, a3, 0
	add.n	a3, a9, a13
	l8ui	a3, a3, 0
	add.n	a6, a12, a5
	l8ui	a6, a6, 0
	xor	a4, a7, a4
	xor	a3, a3, a4
	xor	a3, a6, a3
	add.n	a3, a8, a3
	l8ui	a3, a3, 0
	s8i	a3, a2, 2
	.loc 1 496 0
	add.n	a15, a12, a15
	l8ui	a6, a15, 0
	add.n	a14, a11, a14
	l8ui	a4, a14, 0
	add.n	a13, a10, a13
	l8ui	a3, a13, 0
	add.n	a5, a9, a5
	l8ui	a5, a5, 0
	xor	a4, a6, a4
	xor	a3, a3, a4
	xor	a3, a5, a3
	add.n	a3, a8, a3
	l8ui	a3, a3, 0
	s8i	a3, a2, 7
	.loc 1 498 0
	l8ui	a5, sp, 12
	add.n	a3, a9, a5
	l8ui	a7, a3, 0
	l8ui	a4, sp, 13
	add.n	a3, a12, a4
	l8ui	a14, a3, 0
	l8ui	a3, sp, 14
	add.n	a6, a11, a3
	l8ui	a13, a6, 0
	l8ui	a15, sp, 15
	add.n	a6, a10, a15
	l8ui	a6, a6, 0
	xor	a14, a7, a14
	xor	a13, a13, a14
	xor	a13, a6, a13
	add.n	a13, a8, a13
	l8ui	a6, a13, 0
	s8i	a6, a2, 12
	.loc 1 499 0
	add.n	a6, a10, a5
	l8ui	a7, a6, 0
	add.n	a6, a9, a4
	l8ui	a14, a6, 0
	add.n	a6, a12, a3
	l8ui	a13, a6, 0
	add.n	a6, a11, a15
	l8ui	a6, a6, 0
	xor	a14, a7, a14
	xor	a13, a13, a14
	xor	a13, a6, a13
	add.n	a13, a8, a13
	l8ui	a6, a13, 0
	s8i	a6, a2, 1
	.loc 1 500 0
	add.n	a6, a11, a5
	l8ui	a7, a6, 0
	add.n	a6, a10, a4
	l8ui	a14, a6, 0
	add.n	a6, a9, a3
	l8ui	a13, a6, 0
	add.n	a6, a12, a15
	l8ui	a6, a6, 0
	xor	a14, a7, a14
	xor	a13, a13, a14
	xor	a13, a6, a13
	add.n	a13, a8, a13
	l8ui	a13, a13, 0
	s8i	a13, a2, 6
	.loc 1 501 0
	add.n	a12, a12, a5
	l8ui	a5, a12, 0
	add.n	a11, a11, a4
	l8ui	a11, a11, 0
	add.n	a3, a10, a3
	l8ui	a4, a3, 0
	add.n	a15, a9, a15
	l8ui	a3, a15, 0
	xor	a10, a5, a11
	xor	a9, a4, a10
	xor	a9, a3, a9
	add.n	a8, a8, a9
	l8ui	a3, a8, 0
	s8i	a3, a2, 11
	retw.n
.LFE11:
	.size	inv_mix_sub_columns, .-inv_mix_sub_columns
	.section	.text.update_encrypt_key_128,"ax",@progbits
	.literal_position
	.literal .LC10, sbox
	.align	4
	.type	update_encrypt_key_128, @function
update_encrypt_key_128:
.LFB17:
	.loc 1 678 0
.LVL34:
	entry	sp, 32
.LCFI7:
	.loc 1 681 0
	l8ui	a9, a2, 13
	l32r	a8, .LC10
	add.n	a9, a8, a9
	l8ui	a10, a9, 0
	l8ui	a9, a3, 0
	xor	a10, a10, a9
	l8ui	a9, a2, 0
	xor	a9, a10, a9
	s8i	a9, a2, 0
	.loc 1 682 0
	l8ui	a9, a2, 14
	add.n	a9, a8, a9
	l8ui	a10, a9, 0
	l8ui	a9, a2, 1
	xor	a9, a10, a9
	s8i	a9, a2, 1
	.loc 1 683 0
	l8ui	a9, a2, 15
	add.n	a9, a8, a9
	l8ui	a10, a9, 0
	l8ui	a9, a2, 2
	xor	a9, a10, a9
	s8i	a9, a2, 2
	.loc 1 684 0
	l8ui	a9, a2, 12
	add.n	a8, a8, a9
	l8ui	a9, a8, 0
	l8ui	a8, a2, 3
	xor	a8, a9, a8
	s8i	a8, a2, 3
	.loc 1 685 0
	l8ui	a8, a3, 0
	slli	a10, a8, 1
	srli	a8, a8, 7
	slli	a9, a8, 1
	add.n	a8, a8, a9
	addx8	a8, a8, a8
	xor	a8, a8, a10
	s8i	a8, a3, 0
.LVL35:
	.loc 1 687 0
	movi.n	a8, 4
	j	.L9
.LVL36:
.L10:
	.loc 1 688 0 discriminator 3
	add.n	a9, a2, a8
	addi	a10, a9, -4
	l8ui	a11, a10, 0
	l8ui	a10, a9, 0
	xor	a10, a11, a10
	s8i	a10, a9, 0
	.loc 1 689 0 discriminator 3
	addi.n	a10, a8, 1
	add.n	a10, a2, a10
	addi	a11, a9, -3
	l8ui	a12, a11, 0
	l8ui	a11, a10, 0
	xor	a11, a12, a11
	s8i	a11, a10, 0
	.loc 1 690 0 discriminator 3
	addi.n	a10, a8, 2
	add.n	a10, a2, a10
	addi	a11, a9, -2
	l8ui	a12, a11, 0
	l8ui	a11, a10, 0
	xor	a11, a12, a11
	s8i	a11, a10, 0
	.loc 1 691 0 discriminator 3
	addi.n	a10, a8, 3
	add.n	a10, a2, a10
	addi.n	a9, a9, -1
	l8ui	a11, a9, 0
	l8ui	a9, a10, 0
	xor	a9, a11, a9
	s8i	a9, a10, 0
	.loc 1 687 0 discriminator 3
	addi.n	a8, a8, 4
.LVL37:
	extui	a8, a8, 0, 8
.LVL38:
.L9:
	.loc 1 687 0 is_stmt 0 discriminator 1
	movi.n	a9, 0xf
	bgeu	a9, a8, .L10
	.loc 1 693 0 is_stmt 1
	retw.n
.LFE17:
	.size	update_encrypt_key_128, .-update_encrypt_key_128
	.section	.text.update_decrypt_key_128,"ax",@progbits
	.literal_position
	.literal .LC11, sbox
	.align	4
	.type	update_decrypt_key_128, @function
update_decrypt_key_128:
.LFB19:
	.loc 1 735 0
.LVL39:
	entry	sp, 32
.LCFI8:
.LVL40:
	.loc 1 738 0
	movi.n	a8, 0xc
	j	.L12
.LVL41:
.L13:
	.loc 1 739 0 discriminator 3
	add.n	a9, a2, a8
	addi	a10, a9, -4
	l8ui	a11, a10, 0
	l8ui	a10, a9, 0
	xor	a10, a11, a10
	s8i	a10, a9, 0
	.loc 1 740 0 discriminator 3
	addi.n	a10, a8, 1
	add.n	a10, a2, a10
	addi	a11, a9, -3
	l8ui	a12, a11, 0
	l8ui	a11, a10, 0
	xor	a11, a12, a11
	s8i	a11, a10, 0
	.loc 1 741 0 discriminator 3
	addi.n	a10, a8, 2
	add.n	a10, a2, a10
	addi	a11, a9, -2
	l8ui	a12, a11, 0
	l8ui	a11, a10, 0
	xor	a11, a12, a11
	s8i	a11, a10, 0
	.loc 1 742 0 discriminator 3
	addi.n	a10, a8, 3
	add.n	a10, a2, a10
	addi.n	a9, a9, -1
	l8ui	a11, a9, 0
	l8ui	a9, a10, 0
	xor	a9, a11, a9
	s8i	a9, a10, 0
	.loc 1 738 0 discriminator 3
	addi	a8, a8, -4
.LVL42:
	extui	a8, a8, 0, 8
.LVL43:
.L12:
	.loc 1 738 0 is_stmt 0 discriminator 1
	bnez.n	a8, .L13
	.loc 1 744 0 is_stmt 1
	l8ui	a9, a3, 0
	srli	a8, a9, 1
.LVL44:
	bbci	a9, 0, .L15
	movi	a9, 0x8d
	j	.L14
.L15:
	movi.n	a9, 0
.L14:
	.loc 1 744 0 is_stmt 0 discriminator 4
	xor	a8, a9, a8
	s8i	a8, a3, 0
	.loc 1 745 0 is_stmt 1 discriminator 4
	l8ui	a9, a2, 13
	l32r	a3, .LC11
.LVL45:
	add.n	a9, a3, a9
	l8ui	a9, a9, 0
	xor	a8, a8, a9
	l8ui	a9, a2, 0
	xor	a8, a8, a9
	s8i	a8, a2, 0
	.loc 1 746 0 discriminator 4
	l8ui	a8, a2, 14
	add.n	a8, a3, a8
	l8ui	a9, a8, 0
	l8ui	a8, a2, 1
	xor	a8, a9, a8
	s8i	a8, a2, 1
	.loc 1 747 0 discriminator 4
	l8ui	a8, a2, 15
	add.n	a8, a3, a8
	l8ui	a9, a8, 0
	l8ui	a8, a2, 2
	xor	a8, a9, a8
	s8i	a8, a2, 2
	.loc 1 748 0 discriminator 4
	l8ui	a8, a2, 12
	add.n	a3, a3, a8
	l8ui	a8, a3, 0
	l8ui	a3, a2, 3
	xor	a3, a8, a3
	s8i	a3, a2, 3
	retw.n
.LFE19:
	.size	update_decrypt_key_128, .-update_decrypt_key_128
	.section	.text.update_encrypt_key_256,"ax",@progbits
	.literal_position
	.literal .LC12, sbox
	.align	4
	.type	update_encrypt_key_256, @function
update_encrypt_key_256:
.LFB21:
	.loc 1 790 0
.LVL46:
	entry	sp, 32
.LCFI9:
	.loc 1 793 0
	l8ui	a9, a2, 29
	l32r	a8, .LC12
	add.n	a9, a8, a9
	l8ui	a10, a9, 0
	l8ui	a9, a3, 0
	xor	a10, a10, a9
	l8ui	a9, a2, 0
	xor	a9, a10, a9
	s8i	a9, a2, 0
	.loc 1 794 0
	l8ui	a9, a2, 30
	add.n	a9, a8, a9
	l8ui	a10, a9, 0
	l8ui	a9, a2, 1
	xor	a9, a10, a9
	s8i	a9, a2, 1
	.loc 1 795 0
	l8ui	a9, a2, 31
	add.n	a9, a8, a9
	l8ui	a10, a9, 0
	l8ui	a9, a2, 2
	xor	a9, a10, a9
	s8i	a9, a2, 2
	.loc 1 796 0
	l8ui	a9, a2, 28
	add.n	a8, a8, a9
	l8ui	a9, a8, 0
	l8ui	a8, a2, 3
	xor	a8, a9, a8
	s8i	a8, a2, 3
	.loc 1 797 0
	l8ui	a8, a3, 0
	slli	a10, a8, 1
	srli	a8, a8, 7
	slli	a9, a8, 1
	add.n	a8, a8, a9
	addx8	a8, a8, a8
	xor	a8, a8, a10
	s8i	a8, a3, 0
.LVL47:
	.loc 1 799 0
	movi.n	a8, 4
	j	.L17
.LVL48:
.L18:
	.loc 1 800 0 discriminator 3
	add.n	a9, a2, a8
	addi	a10, a9, -4
	l8ui	a11, a10, 0
	l8ui	a10, a9, 0
	xor	a10, a11, a10
	s8i	a10, a9, 0
	.loc 1 801 0 discriminator 3
	addi.n	a10, a8, 1
	add.n	a10, a2, a10
	addi	a11, a9, -3
	l8ui	a12, a11, 0
	l8ui	a11, a10, 0
	xor	a11, a12, a11
	s8i	a11, a10, 0
	.loc 1 802 0 discriminator 3
	addi.n	a10, a8, 2
	add.n	a10, a2, a10
	addi	a11, a9, -2
	l8ui	a12, a11, 0
	l8ui	a11, a10, 0
	xor	a11, a12, a11
	s8i	a11, a10, 0
	.loc 1 803 0 discriminator 3
	addi.n	a10, a8, 3
	add.n	a10, a2, a10
	addi.n	a9, a9, -1
	l8ui	a11, a9, 0
	l8ui	a9, a10, 0
	xor	a9, a11, a9
	s8i	a9, a10, 0
	.loc 1 799 0 discriminator 3
	addi.n	a8, a8, 4
.LVL49:
	extui	a8, a8, 0, 8
.LVL50:
.L17:
	.loc 1 799 0 is_stmt 0 discriminator 1
	movi.n	a9, 0xf
	bgeu	a9, a8, .L18
	.loc 1 806 0 is_stmt 1
	l8ui	a9, a2, 12
	l32r	a8, .LC12
.LVL51:
	add.n	a9, a8, a9
	l8ui	a3, a9, 0
.LVL52:
	l8ui	a9, a2, 16
	xor	a9, a3, a9
	s8i	a9, a2, 16
	.loc 1 807 0
	l8ui	a9, a2, 13
	add.n	a9, a8, a9
	l8ui	a3, a9, 0
	l8ui	a9, a2, 17
	xor	a9, a3, a9
	s8i	a9, a2, 17
	.loc 1 808 0
	l8ui	a9, a2, 14
	add.n	a9, a8, a9
	l8ui	a3, a9, 0
	l8ui	a9, a2, 18
	xor	a9, a3, a9
	s8i	a9, a2, 18
	.loc 1 809 0
	l8ui	a9, a2, 15
	add.n	a8, a8, a9
	l8ui	a3, a8, 0
	l8ui	a8, a2, 19
	xor	a8, a3, a8
	s8i	a8, a2, 19
.LVL53:
	.loc 1 811 0
	movi.n	a8, 0x14
	j	.L19
.LVL54:
.L20:
	.loc 1 812 0 discriminator 3
	add.n	a9, a2, a8
	addi	a10, a9, -4
	l8ui	a11, a10, 0
	l8ui	a10, a9, 0
	xor	a10, a11, a10
	s8i	a10, a9, 0
	.loc 1 813 0 discriminator 3
	addi.n	a10, a8, 1
	add.n	a10, a2, a10
	addi	a11, a9, -3
	l8ui	a12, a11, 0
	l8ui	a11, a10, 0
	xor	a11, a12, a11
	s8i	a11, a10, 0
	.loc 1 814 0 discriminator 3
	addi.n	a10, a8, 2
	add.n	a10, a2, a10
	addi	a11, a9, -2
	l8ui	a12, a11, 0
	l8ui	a11, a10, 0
	xor	a11, a12, a11
	s8i	a11, a10, 0
	.loc 1 815 0 discriminator 3
	addi.n	a10, a8, 3
	add.n	a10, a2, a10
	addi.n	a9, a9, -1
	l8ui	a11, a9, 0
	l8ui	a9, a10, 0
	xor	a9, a11, a9
	s8i	a9, a10, 0
	.loc 1 811 0 discriminator 3
	addi.n	a8, a8, 4
.LVL55:
	extui	a8, a8, 0, 8
.LVL56:
.L19:
	.loc 1 811 0 is_stmt 0 discriminator 1
	movi.n	a9, 0x1f
	bgeu	a9, a8, .L20
	.loc 1 817 0 is_stmt 1
	retw.n
.LFE21:
	.size	update_encrypt_key_256, .-update_encrypt_key_256
	.section	.text.update_decrypt_key_256,"ax",@progbits
	.literal_position
	.literal .LC13, sbox
	.align	4
	.type	update_decrypt_key_256, @function
update_decrypt_key_256:
.LFB23:
	.loc 1 867 0
.LVL57:
	entry	sp, 32
.LCFI10:
.LVL58:
	.loc 1 870 0
	movi.n	a8, 0x1c
	j	.L22
.LVL59:
.L23:
	.loc 1 871 0 discriminator 3
	add.n	a9, a2, a8
	addi	a10, a9, -4
	l8ui	a11, a10, 0
	l8ui	a10, a9, 0
	xor	a10, a11, a10
	s8i	a10, a9, 0
	.loc 1 872 0 discriminator 3
	addi.n	a10, a8, 1
	add.n	a10, a2, a10
	addi	a11, a9, -3
	l8ui	a12, a11, 0
	l8ui	a11, a10, 0
	xor	a11, a12, a11
	s8i	a11, a10, 0
	.loc 1 873 0 discriminator 3
	addi.n	a10, a8, 2
	add.n	a10, a2, a10
	addi	a11, a9, -2
	l8ui	a12, a11, 0
	l8ui	a11, a10, 0
	xor	a11, a12, a11
	s8i	a11, a10, 0
	.loc 1 874 0 discriminator 3
	addi.n	a10, a8, 3
	add.n	a10, a2, a10
	addi.n	a9, a9, -1
	l8ui	a11, a9, 0
	l8ui	a9, a10, 0
	xor	a9, a11, a9
	s8i	a9, a10, 0
	.loc 1 870 0 discriminator 3
	addi	a8, a8, -4
.LVL60:
	extui	a8, a8, 0, 8
.LVL61:
.L22:
	.loc 1 870 0 is_stmt 0 discriminator 1
	movi.n	a9, 0x10
	bltu	a9, a8, .L23
	.loc 1 877 0 is_stmt 1
	l8ui	a9, a2, 12
	l32r	a8, .LC13
.LVL62:
	add.n	a9, a8, a9
	l8ui	a10, a9, 0
	l8ui	a9, a2, 16
	xor	a9, a10, a9
	s8i	a9, a2, 16
	.loc 1 878 0
	l8ui	a9, a2, 13
	add.n	a9, a8, a9
	l8ui	a10, a9, 0
	l8ui	a9, a2, 17
	xor	a9, a10, a9
	s8i	a9, a2, 17
	.loc 1 879 0
	l8ui	a9, a2, 14
	add.n	a9, a8, a9
	l8ui	a10, a9, 0
	l8ui	a9, a2, 18
	xor	a9, a10, a9
	s8i	a9, a2, 18
	.loc 1 880 0
	l8ui	a9, a2, 15
	add.n	a8, a8, a9
	l8ui	a9, a8, 0
	l8ui	a8, a2, 19
	xor	a8, a9, a8
	s8i	a8, a2, 19
.LVL63:
	.loc 1 882 0
	movi.n	a8, 0xc
	j	.L24
.LVL64:
.L25:
	.loc 1 883 0 discriminator 3
	add.n	a9, a2, a8
	addi	a10, a9, -4
	l8ui	a11, a10, 0
	l8ui	a10, a9, 0
	xor	a10, a11, a10
	s8i	a10, a9, 0
	.loc 1 884 0 discriminator 3
	addi.n	a10, a8, 1
	add.n	a10, a2, a10
	addi	a11, a9, -3
	l8ui	a12, a11, 0
	l8ui	a11, a10, 0
	xor	a11, a12, a11
	s8i	a11, a10, 0
	.loc 1 885 0 discriminator 3
	addi.n	a10, a8, 2
	add.n	a10, a2, a10
	addi	a11, a9, -2
	l8ui	a12, a11, 0
	l8ui	a11, a10, 0
	xor	a11, a12, a11
	s8i	a11, a10, 0
	.loc 1 886 0 discriminator 3
	addi.n	a10, a8, 3
	add.n	a10, a2, a10
	addi.n	a9, a9, -1
	l8ui	a11, a9, 0
	l8ui	a9, a10, 0
	xor	a9, a11, a9
	s8i	a9, a10, 0
	.loc 1 882 0 discriminator 3
	addi	a8, a8, -4
.LVL65:
	extui	a8, a8, 0, 8
.LVL66:
.L24:
	.loc 1 882 0 is_stmt 0 discriminator 1
	bnez.n	a8, .L25
	.loc 1 889 0 is_stmt 1
	l8ui	a9, a3, 0
	srli	a8, a9, 1
.LVL67:
	bbci	a9, 0, .L27
	movi	a9, 0x8d
	j	.L26
.L27:
	movi.n	a9, 0
.L26:
	.loc 1 889 0 is_stmt 0 discriminator 4
	xor	a8, a9, a8
	s8i	a8, a3, 0
	.loc 1 890 0 is_stmt 1 discriminator 4
	l8ui	a9, a2, 29
	l32r	a3, .LC13
.LVL68:
	add.n	a9, a3, a9
	l8ui	a9, a9, 0
	xor	a8, a8, a9
	l8ui	a9, a2, 0
	xor	a8, a8, a9
	s8i	a8, a2, 0
	.loc 1 891 0 discriminator 4
	l8ui	a8, a2, 30
	add.n	a8, a3, a8
	l8ui	a9, a8, 0
	l8ui	a8, a2, 1
	xor	a8, a9, a8
	s8i	a8, a2, 1
	.loc 1 892 0 discriminator 4
	l8ui	a8, a2, 31
	add.n	a8, a3, a8
	l8ui	a9, a8, 0
	l8ui	a8, a2, 2
	xor	a8, a9, a8
	s8i	a8, a2, 2
	.loc 1 893 0 discriminator 4
	l8ui	a8, a2, 28
	add.n	a3, a3, a8
	l8ui	a8, a3, 0
	l8ui	a3, a2, 3
	xor	a3, a8, a3
	s8i	a3, a2, 3
	retw.n
.LFE23:
	.size	update_decrypt_key_256, .-update_decrypt_key_256
	.section	.text.aes_set_key,"ax",@progbits
	.literal_position
	.literal .LC14, sbox
	.align	4
	.global	aes_set_key
	.type	aes_set_key, @function
aes_set_key:
.LFB12:
	.loc 1 514 0
.LVL69:
	entry	sp, 32
.LCFI11:
	extui	a3, a3, 0, 8
	.loc 1 517 0
	beqi	a3, 32, .L33
	movi.n	a5, 0x20
	bltu	a5, a3, .L31
	beqi	a3, 16, .L32
	movi.n	a5, 0x18
	beq	a3, a5, .L39
	j	.L29
.L31:
	beqi	a3, 128, .L32
	movi	a5, 0xc0
	beq	a3, a5, .L39
.L29:
	.loc 1 531 0
	movi.n	a2, 0
.LVL70:
	s8i	a2, a4, 240
	.loc 1 532 0
	movi	a2, 0xff
	retw.n
.LVL71:
.L32:
	.loc 1 520 0
	movi.n	a3, 0x10
.LVL72:
	j	.L33
.L39:
	.loc 1 524 0
	movi.n	a3, 0x18
.L33:
.LVL73:
	.loc 1 534 0
	mov.n	a12, a3
	mov.n	a11, a2
	mov.n	a10, a4
	call8	memcpy
.LVL74:
	.loc 1 535 0
	addi	a15, a3, 28
	slli	a15, a15, 2
	extui	a15, a15, 0, 8
.LVL75:
	.loc 1 536 0
	srli	a2, a15, 4
.LVL76:
	addi.n	a2, a2, -1
	s8i	a2, a4, 240
.LVL77:
	.loc 1 537 0
	mov.n	a8, a3
	movi.n	a14, 1
	j	.L35
.LVL78:
.L38:
.LBB2:
	.loc 1 540 0
	mov.n	a10, a8
	addi	a2, a8, -4
	add.n	a2, a4, a2
	l8ui	a6, a2, 0
.LVL79:
	.loc 1 541 0
	addi	a2, a8, -3
.LVL80:
	add.n	a2, a4, a2
	l8ui	a12, a2, 0
.LVL81:
	.loc 1 542 0
	addi	a2, a8, -2
.LVL82:
	add.n	a2, a4, a2
	l8ui	a11, a2, 0
.LVL83:
	.loc 1 543 0
	addi.n	a5, a8, -1
	add.n	a5, a4, a5
	l8ui	a13, a5, 0
.LVL84:
	.loc 1 544 0
	remu	a2, a8, a3
.LVL85:
	bnez.n	a2, .L36
.LVL86:
	.loc 1 546 0
	l32r	a2, .LC14
	add.n	a12, a2, a12
	l8ui	a5, a12, 0
.LVL87:
	xor	a5, a14, a5
.LVL88:
	.loc 1 547 0
	add.n	a11, a2, a11
	l8ui	a12, a11, 0
.LVL89:
	.loc 1 548 0
	add.n	a13, a2, a13
	l8ui	a11, a13, 0
.LVL90:
	.loc 1 549 0
	add.n	a2, a2, a6
.LVL91:
	l8ui	a13, a2, 0
.LVL92:
	.loc 1 550 0
	slli	a6, a14, 1
	srli	a14, a14, 7
.LVL93:
	slli	a2, a14, 1
.LVL94:
	add.n	a14, a14, a2
	addx8	a14, a14, a14
	xor	a14, a14, a6
	extui	a14, a14, 0, 8
.LVL95:
	.loc 1 546 0
	mov.n	a6, a5
	j	.L37
.LVL96:
.L36:
	.loc 1 551 0
	movi.n	a5, 0x18
.LVL97:
	bgeu	a5, a3, .L37
	.loc 1 551 0 is_stmt 0 discriminator 1
	bnei	a2, 16, .L37
	.loc 1 552 0 is_stmt 1
	l32r	a5, .LC14
	add.n	a2, a5, a6
	l8ui	a6, a2, 0
.LVL98:
	.loc 1 553 0
	add.n	a12, a5, a12
	l8ui	a12, a12, 0
.LVL99:
	.loc 1 554 0
	add.n	a11, a5, a11
	l8ui	a11, a11, 0
.LVL100:
	.loc 1 555 0
	add.n	a13, a5, a13
	l8ui	a13, a13, 0
.LVL101:
.L37:
	.loc 1 557 0 discriminator 2
	sub	a9, a8, a3
	extui	a9, a9, 0, 8
.LVL102:
	.loc 1 558 0 discriminator 2
	add.n	a2, a4, a9
	l8ui	a2, a2, 0
	add.n	a5, a4, a10
	xor	a2, a6, a2
	s8i	a2, a5, 0
	.loc 1 559 0 discriminator 2
	addi.n	a2, a10, 1
	addi.n	a5, a9, 1
	add.n	a5, a4, a5
	l8ui	a5, a5, 0
	add.n	a2, a4, a2
	xor	a12, a12, a5
.LVL103:
	s8i	a12, a2, 0
	.loc 1 560 0 discriminator 2
	addi.n	a12, a10, 2
	addi.n	a2, a9, 2
	add.n	a2, a4, a2
	l8ui	a2, a2, 0
	add.n	a12, a4, a12
	xor	a11, a11, a2
.LVL104:
	s8i	a11, a12, 0
	.loc 1 561 0 discriminator 2
	addi.n	a10, a10, 3
	addi.n	a9, a9, 3
.LVL105:
	add.n	a9, a4, a9
.LVL106:
	l8ui	a9, a9, 0
	add.n	a10, a4, a10
	xor	a13, a13, a9
.LVL107:
	s8i	a13, a10, 0
.LBE2:
	.loc 1 537 0 discriminator 2
	addi.n	a8, a8, 4
.LVL108:
	extui	a8, a8, 0, 8
.LVL109:
.L35:
	.loc 1 537 0 is_stmt 0 discriminator 1
	bltu	a8, a15, .L38
	.loc 1 563 0 is_stmt 1
	movi.n	a2, 0
	.loc 1 564 0
	retw.n
.LFE12:
	.size	aes_set_key, .-aes_set_key
	.section	.text.bluedroid_aes_encrypt,"ax",@progbits
	.align	4
	.global	bluedroid_aes_encrypt
	.type	bluedroid_aes_encrypt, @function
bluedroid_aes_encrypt:
.LFB13:
	.loc 1 574 0
.LVL110:
	entry	sp, 48
.LCFI12:
	.loc 1 575 0
	l8ui	a5, a4, 240
	beqz.n	a5, .L44
.LBB3:
	.loc 1 577 0
	mov.n	a5, a4
	mov.n	a12, a4
	mov.n	a11, a2
	mov.n	a10, sp
	call8	copy_and_key
.LVL111:
	.loc 1 579 0
	movi.n	a2, 1
.LVL112:
	j	.L42
.LVL113:
.L43:
	.loc 1 582 0 discriminator 3
	mov.n	a10, sp
	call8	mix_sub_columns
.LVL114:
	.loc 1 583 0 discriminator 3
	slli	a11, a2, 4
	add.n	a11, a5, a11
	mov.n	a10, sp
	call8	add_round_key
.LVL115:
	.loc 1 579 0 discriminator 3
	addi.n	a2, a2, 1
.LVL116:
	extui	a2, a2, 0, 8
.LVL117:
.L42:
	.loc 1 579 0 is_stmt 0 discriminator 1
	l8ui	a8, a4, 240
	bltu	a2, a8, .L43
	.loc 1 592 0 is_stmt 1
	mov.n	a10, sp
	call8	shift_sub_rows
.LVL118:
	.loc 1 593 0
	slli	a12, a2, 4
	add.n	a12, a4, a12
	mov.n	a11, sp
	mov.n	a10, a3
	call8	copy_and_key
.LVL119:
.LBE3:
	.loc 1 597 0
	movi.n	a2, 0
.LVL120:
	retw.n
.LVL121:
.L44:
	.loc 1 595 0
	movi	a2, 0xff
.LVL122:
	.loc 1 598 0
	retw.n
.LFE13:
	.size	bluedroid_aes_encrypt, .-bluedroid_aes_encrypt
	.section	.text.aes_cbc_encrypt,"ax",@progbits
	.align	4
	.global	aes_cbc_encrypt
	.type	aes_cbc_encrypt, @function
aes_cbc_encrypt:
.LFB14:
	.loc 1 604 0
.LVL123:
	entry	sp, 32
.LCFI13:
	.loc 1 606 0
	j	.L46
.LVL124:
.L48:
	.loc 1 607 0
	mov.n	a11, a2
	mov.n	a10, a5
	call8	xor_block
.LVL125:
	.loc 1 608 0
	mov.n	a12, a6
	mov.n	a11, a5
	mov.n	a10, a5
	call8	bluedroid_aes_encrypt
.LVL126:
	bnez.n	a10, .L49
	.loc 1 611 0
	movi.n	a12, 0x10
	mov.n	a11, a5
	mov.n	a10, a3
	call8	memcpy
.LVL127:
	.loc 1 612 0
	addi	a2, a2, 16
.LVL128:
	.loc 1 613 0
	addi	a3, a3, 16
.LVL129:
	.loc 1 606 0
	mov.n	a4, a7
.LVL130:
.L46:
	addi.n	a7, a4, -1
.LVL131:
	bnez.n	a4, .L48
	.loc 1 615 0
	movi.n	a2, 0
.LVL132:
	retw.n
.LVL133:
.L49:
	.loc 1 609 0
	movi.n	a2, 1
.LVL134:
	.loc 1 616 0
	retw.n
.LFE14:
	.size	aes_cbc_encrypt, .-aes_cbc_encrypt
	.section	.text.bluedroid_aes_decrypt,"ax",@progbits
	.align	4
	.global	bluedroid_aes_decrypt
	.type	bluedroid_aes_decrypt, @function
bluedroid_aes_decrypt:
.LFB15:
	.loc 1 625 0
.LVL135:
	entry	sp, 48
.LCFI14:
	.loc 1 626 0
	l8ui	a12, a4, 240
	beqz.n	a12, .L54
.LBB4:
	.loc 1 628 0
	mov.n	a5, a4
	slli	a12, a12, 4
	add.n	a12, a4, a12
	mov.n	a11, a2
	mov.n	a10, sp
	call8	copy_and_key
.LVL136:
	.loc 1 629 0
	mov.n	a10, sp
	call8	inv_shift_sub_rows
.LVL137:
	.loc 1 631 0
	l8ui	a2, a4, 240
.LVL138:
	j	.L52
.LVL139:
.L53:
	.loc 1 634 0
	slli	a11, a2, 4
	add.n	a11, a5, a11
	mov.n	a10, sp
	call8	add_round_key
.LVL140:
	.loc 1 635 0
	mov.n	a10, sp
	call8	inv_mix_sub_columns
.LVL141:
.L52:
	.loc 1 631 0 discriminator 1
	addi.n	a2, a2, -1
.LVL142:
	extui	a2, a2, 0, 8
.LVL143:
	bnez.n	a2, .L53
	.loc 1 644 0
	mov.n	a12, a4
	mov.n	a11, sp
	mov.n	a10, a3
	call8	copy_and_key
.LVL144:
.LBE4:
	.loc 1 648 0
	retw.n
.LVL145:
.L54:
	.loc 1 646 0
	movi	a2, 0xff
.LVL146:
	.loc 1 649 0
	retw.n
.LFE15:
	.size	bluedroid_aes_decrypt, .-bluedroid_aes_decrypt
	.section	.text.aes_cbc_decrypt,"ax",@progbits
	.align	4
	.global	aes_cbc_decrypt
	.type	aes_cbc_decrypt, @function
aes_cbc_decrypt:
.LFB16:
	.loc 1 655 0
.LVL147:
	entry	sp, 48
.LCFI15:
	.loc 1 656 0
	j	.L56
.LVL148:
.L59:
.LBB5:
	.loc 1 659 0
	movi.n	a12, 0x10
	mov.n	a11, a2
	mov.n	a10, sp
	call8	memcpy
.LVL149:
	.loc 1 660 0
	mov.n	a12, a6
	mov.n	a11, a3
	mov.n	a10, a2
	call8	bluedroid_aes_decrypt
.LVL150:
	beqz.n	a10, .L57
	.loc 1 661 0
	movi.n	a2, 1
.LVL151:
	retw.n
.LVL152:
.L57:
	.loc 1 663 0
	mov.n	a11, a5
	mov.n	a10, a3
	call8	xor_block
.LVL153:
	.loc 1 664 0
	movi.n	a12, 0x10
	mov.n	a11, sp
	mov.n	a10, a5
	call8	memcpy
.LVL154:
	.loc 1 665 0
	addi	a2, a2, 16
.LVL155:
	.loc 1 666 0
	addi	a3, a3, 16
.LVL156:
.LBE5:
	.loc 1 656 0
	mov.n	a4, a7
.LVL157:
.L56:
	addi.n	a7, a4, -1
.LVL158:
	bnez.n	a4, .L59
	.loc 1 668 0
	movi.n	a2, 0
.LVL159:
	.loc 1 669 0
	retw.n
.LFE16:
	.size	aes_cbc_decrypt, .-aes_cbc_decrypt
	.section	.text.bluedroid_aes_encrypt_128,"ax",@progbits
	.align	4
	.global	bluedroid_aes_encrypt_128
	.type	bluedroid_aes_encrypt_128, @function
bluedroid_aes_encrypt_128:
.LFB18:
	.loc 1 699 0
.LVL160:
	entry	sp, 64
.LCFI16:
	.loc 1 700 0
	movi.n	a8, 1
	s8i	a8, sp, 16
	.loc 1 702 0
	beq	a5, a4, .L61
	.loc 1 703 0
	movi.n	a12, 0x10
	mov.n	a11, a4
	mov.n	a10, a5
	call8	memcpy
.LVL161:
.L61:
	.loc 1 705 0
	mov.n	a12, a5
	mov.n	a11, a2
	mov.n	a10, sp
	call8	copy_and_key
.LVL162:
	.loc 1 707 0
	movi.n	a2, 1
.LVL163:
	j	.L62
.LVL164:
.L63:
	.loc 1 710 0 discriminator 3
	mov.n	a10, sp
	call8	mix_sub_columns
.LVL165:
	.loc 1 711 0 discriminator 3
	addi	a11, sp, 16
	mov.n	a10, a5
	call8	update_encrypt_key_128
.LVL166:
	.loc 1 712 0 discriminator 3
	mov.n	a11, a5
	mov.n	a10, sp
	call8	add_round_key
.LVL167:
	.loc 1 707 0 discriminator 3
	addi.n	a2, a2, 1
.LVL168:
	extui	a2, a2, 0, 8
.LVL169:
.L62:
	.loc 1 707 0 is_stmt 0 discriminator 1
	movi.n	a8, 9
	bgeu	a8, a2, .L63
	.loc 1 723 0 is_stmt 1
	mov.n	a10, sp
	call8	shift_sub_rows
.LVL170:
	.loc 1 724 0
	addi	a11, sp, 16
	mov.n	a10, a5
	call8	update_encrypt_key_128
.LVL171:
	.loc 1 725 0
	mov.n	a12, a5
	mov.n	a11, sp
	mov.n	a10, a3
	call8	copy_and_key
.LVL172:
	retw.n
.LFE18:
	.size	bluedroid_aes_encrypt_128, .-bluedroid_aes_encrypt_128
	.section	.text.bluedroid_aes_decrypt_128,"ax",@progbits
	.align	4
	.global	bluedroid_aes_decrypt_128
	.type	bluedroid_aes_decrypt_128, @function
bluedroid_aes_decrypt_128:
.LFB20:
	.loc 1 755 0
.LVL173:
	entry	sp, 64
.LCFI17:
	.loc 1 756 0
	movi	a8, 0x6c
	s8i	a8, sp, 16
	.loc 1 757 0
	beq	a5, a4, .L65
	.loc 1 758 0
	movi.n	a12, 0x10
	mov.n	a11, a4
	mov.n	a10, a5
	call8	memcpy
.LVL174:
.L65:
	.loc 1 761 0
	mov.n	a12, a5
	mov.n	a11, a2
	mov.n	a10, sp
	call8	copy_and_key
.LVL175:
	.loc 1 762 0
	mov.n	a10, sp
	call8	inv_shift_sub_rows
.LVL176:
	.loc 1 764 0
	movi.n	a2, 0xa
.LVL177:
	j	.L66
.LVL178:
.L67:
	.loc 1 767 0
	addi	a11, sp, 16
	mov.n	a10, a5
	call8	update_decrypt_key_128
.LVL179:
	.loc 1 768 0
	mov.n	a11, a5
	mov.n	a10, sp
	call8	add_round_key
.LVL180:
	.loc 1 769 0
	mov.n	a10, sp
	call8	inv_mix_sub_columns
.LVL181:
.L66:
	.loc 1 764 0 discriminator 1
	addi.n	a2, a2, -1
.LVL182:
	extui	a2, a2, 0, 8
.LVL183:
	bnez.n	a2, .L67
	.loc 1 779 0
	addi	a11, sp, 16
	mov.n	a10, a5
	call8	update_decrypt_key_128
.LVL184:
	.loc 1 780 0
	mov.n	a12, a5
	mov.n	a11, sp
	mov.n	a10, a3
	call8	copy_and_key
.LVL185:
	retw.n
.LFE20:
	.size	bluedroid_aes_decrypt_128, .-bluedroid_aes_decrypt_128
	.section	.text.bluedroid_aes_encrypt_256,"ax",@progbits
	.align	4
	.global	bluedroid_aes_encrypt_256
	.type	bluedroid_aes_encrypt_256, @function
bluedroid_aes_encrypt_256:
.LFB22:
	.loc 1 823 0
.LVL186:
	entry	sp, 64
.LCFI18:
	.loc 1 824 0
	movi.n	a6, 1
	s8i	a6, sp, 16
	.loc 1 825 0
	beq	a5, a4, .L69
	.loc 1 826 0
	movi.n	a6, 0x10
	mov.n	a12, a6
	mov.n	a11, a4
	mov.n	a10, a5
	call8	memcpy
.LVL187:
	.loc 1 827 0
	mov.n	a12, a6
	add.n	a11, a4, a6
	add.n	a10, a5, a6
	call8	memcpy
.LVL188:
.L69:
	.loc 1 829 0
	mov.n	a12, a5
	mov.n	a11, a2
	mov.n	a10, sp
	call8	copy_and_key
.LVL189:
	.loc 1 831 0
	movi.n	a2, 1
.LVL190:
	j	.L70
.LVL191:
.L73:
	.loc 1 834 0
	mov.n	a10, sp
	call8	mix_sub_columns
.LVL192:
	.loc 1 835 0
	bbci	a2, 0, .L71
	.loc 1 836 0
	addi	a11, a5, 16
	mov.n	a10, sp
	call8	add_round_key
.LVL193:
	j	.L72
.L71:
	.loc 1 838 0
	addi	a11, sp, 16
	mov.n	a10, a5
	call8	update_encrypt_key_256
.LVL194:
	.loc 1 839 0
	mov.n	a11, a5
	mov.n	a10, sp
	call8	add_round_key
.LVL195:
.L72:
	.loc 1 831 0 discriminator 2
	addi.n	a2, a2, 1
.LVL196:
	extui	a2, a2, 0, 8
.LVL197:
.L70:
	.loc 1 831 0 is_stmt 0 discriminator 1
	movi.n	a8, 0xd
	bgeu	a8, a2, .L73
	.loc 1 855 0 is_stmt 1
	mov.n	a10, sp
	call8	shift_sub_rows
.LVL198:
	.loc 1 856 0
	addi	a11, sp, 16
	mov.n	a10, a5
	call8	update_encrypt_key_256
.LVL199:
	.loc 1 857 0
	mov.n	a12, a5
	mov.n	a11, sp
	mov.n	a10, a3
	call8	copy_and_key
.LVL200:
	retw.n
.LFE22:
	.size	bluedroid_aes_encrypt_256, .-bluedroid_aes_encrypt_256
	.section	.text.bluedroid_aes_decrypt_256,"ax",@progbits
	.align	4
	.global	bluedroid_aes_decrypt_256
	.type	bluedroid_aes_decrypt_256, @function
bluedroid_aes_decrypt_256:
.LFB24:
	.loc 1 901 0
.LVL201:
	entry	sp, 64
.LCFI19:
	.loc 1 902 0
	movi	a6, -0x80
	s8i	a6, sp, 16
	.loc 1 904 0
	beq	a5, a4, .L75
	.loc 1 905 0
	movi.n	a6, 0x10
	mov.n	a12, a6
	mov.n	a11, a4
	mov.n	a10, a5
	call8	memcpy
.LVL202:
	.loc 1 906 0
	mov.n	a12, a6
	add.n	a11, a4, a6
	add.n	a10, a5, a6
	call8	memcpy
.LVL203:
.L75:
	.loc 1 909 0
	mov.n	a12, a5
	mov.n	a11, a2
	mov.n	a10, sp
	call8	copy_and_key
.LVL204:
	.loc 1 910 0
	mov.n	a10, sp
	call8	inv_shift_sub_rows
.LVL205:
	.loc 1 912 0
	movi.n	a2, 0xe
.LVL206:
	j	.L76
.LVL207:
.L79:
	.loc 1 915 0
	bbci	a2, 0, .L77
	.loc 1 916 0
	addi	a11, sp, 16
	mov.n	a10, a5
	call8	update_decrypt_key_256
.LVL208:
	.loc 1 917 0
	addi	a11, a5, 16
	mov.n	a10, sp
	call8	add_round_key
.LVL209:
	j	.L78
.L77:
	.loc 1 919 0
	mov.n	a11, a5
	mov.n	a10, sp
	call8	add_round_key
.LVL210:
.L78:
	.loc 1 921 0
	mov.n	a10, sp
	call8	inv_mix_sub_columns
.LVL211:
.L76:
	.loc 1 912 0 discriminator 1
	addi.n	a2, a2, -1
.LVL212:
	extui	a2, a2, 0, 8
.LVL213:
	bnez.n	a2, .L79
	.loc 1 935 0
	mov.n	a12, a5
	mov.n	a11, sp
	mov.n	a10, a3
	call8	copy_and_key
.LVL214:
	retw.n
.LFE24:
	.size	bluedroid_aes_decrypt_256, .-bluedroid_aes_decrypt_256
	.section	.rodata.gfmul_e,"a",@progbits
	.align	4
	.type	gfmul_e, @object
	.size	gfmul_e, 256
gfmul_e:
	.byte	0
	.byte	14
	.byte	28
	.byte	18
	.byte	56
	.byte	54
	.byte	36
	.byte	42
	.byte	112
	.byte	126
	.byte	108
	.byte	98
	.byte	72
	.byte	70
	.byte	84
	.byte	90
	.byte	-32
	.byte	-18
	.byte	-4
	.byte	-14
	.byte	-40
	.byte	-42
	.byte	-60
	.byte	-54
	.byte	-112
	.byte	-98
	.byte	-116
	.byte	-126
	.byte	-88
	.byte	-90
	.byte	-76
	.byte	-70
	.byte	-37
	.byte	-43
	.byte	-57
	.byte	-55
	.byte	-29
	.byte	-19
	.byte	-1
	.byte	-15
	.byte	-85
	.byte	-91
	.byte	-73
	.byte	-71
	.byte	-109
	.byte	-99
	.byte	-113
	.byte	-127
	.byte	59
	.byte	53
	.byte	39
	.byte	41
	.byte	3
	.byte	13
	.byte	31
	.byte	17
	.byte	75
	.byte	69
	.byte	87
	.byte	89
	.byte	115
	.byte	125
	.byte	111
	.byte	97
	.byte	-83
	.byte	-93
	.byte	-79
	.byte	-65
	.byte	-107
	.byte	-101
	.byte	-119
	.byte	-121
	.byte	-35
	.byte	-45
	.byte	-63
	.byte	-49
	.byte	-27
	.byte	-21
	.byte	-7
	.byte	-9
	.byte	77
	.byte	67
	.byte	81
	.byte	95
	.byte	117
	.byte	123
	.byte	105
	.byte	103
	.byte	61
	.byte	51
	.byte	33
	.byte	47
	.byte	5
	.byte	11
	.byte	25
	.byte	23
	.byte	118
	.byte	120
	.byte	106
	.byte	100
	.byte	78
	.byte	64
	.byte	82
	.byte	92
	.byte	6
	.byte	8
	.byte	26
	.byte	20
	.byte	62
	.byte	48
	.byte	34
	.byte	44
	.byte	-106
	.byte	-104
	.byte	-118
	.byte	-124
	.byte	-82
	.byte	-96
	.byte	-78
	.byte	-68
	.byte	-26
	.byte	-24
	.byte	-6
	.byte	-12
	.byte	-34
	.byte	-48
	.byte	-62
	.byte	-52
	.byte	65
	.byte	79
	.byte	93
	.byte	83
	.byte	121
	.byte	119
	.byte	101
	.byte	107
	.byte	49
	.byte	63
	.byte	45
	.byte	35
	.byte	9
	.byte	7
	.byte	21
	.byte	27
	.byte	-95
	.byte	-81
	.byte	-67
	.byte	-77
	.byte	-103
	.byte	-105
	.byte	-123
	.byte	-117
	.byte	-47
	.byte	-33
	.byte	-51
	.byte	-61
	.byte	-23
	.byte	-25
	.byte	-11
	.byte	-5
	.byte	-102
	.byte	-108
	.byte	-122
	.byte	-120
	.byte	-94
	.byte	-84
	.byte	-66
	.byte	-80
	.byte	-22
	.byte	-28
	.byte	-10
	.byte	-8
	.byte	-46
	.byte	-36
	.byte	-50
	.byte	-64
	.byte	122
	.byte	116
	.byte	102
	.byte	104
	.byte	66
	.byte	76
	.byte	94
	.byte	80
	.byte	10
	.byte	4
	.byte	22
	.byte	24
	.byte	50
	.byte	60
	.byte	46
	.byte	32
	.byte	-20
	.byte	-30
	.byte	-16
	.byte	-2
	.byte	-44
	.byte	-38
	.byte	-56
	.byte	-58
	.byte	-100
	.byte	-110
	.byte	-128
	.byte	-114
	.byte	-92
	.byte	-86
	.byte	-72
	.byte	-74
	.byte	12
	.byte	2
	.byte	16
	.byte	30
	.byte	52
	.byte	58
	.byte	40
	.byte	38
	.byte	124
	.byte	114
	.byte	96
	.byte	110
	.byte	68
	.byte	74
	.byte	88
	.byte	86
	.byte	55
	.byte	57
	.byte	43
	.byte	37
	.byte	15
	.byte	1
	.byte	19
	.byte	29
	.byte	71
	.byte	73
	.byte	91
	.byte	85
	.byte	127
	.byte	113
	.byte	99
	.byte	109
	.byte	-41
	.byte	-39
	.byte	-53
	.byte	-59
	.byte	-17
	.byte	-31
	.byte	-13
	.byte	-3
	.byte	-89
	.byte	-87
	.byte	-69
	.byte	-75
	.byte	-97
	.byte	-111
	.byte	-125
	.byte	-115
	.section	.rodata.gfmul_d,"a",@progbits
	.align	4
	.type	gfmul_d, @object
	.size	gfmul_d, 256
gfmul_d:
	.byte	0
	.byte	13
	.byte	26
	.byte	23
	.byte	52
	.byte	57
	.byte	46
	.byte	35
	.byte	104
	.byte	101
	.byte	114
	.byte	127
	.byte	92
	.byte	81
	.byte	70
	.byte	75
	.byte	-48
	.byte	-35
	.byte	-54
	.byte	-57
	.byte	-28
	.byte	-23
	.byte	-2
	.byte	-13
	.byte	-72
	.byte	-75
	.byte	-94
	.byte	-81
	.byte	-116
	.byte	-127
	.byte	-106
	.byte	-101
	.byte	-69
	.byte	-74
	.byte	-95
	.byte	-84
	.byte	-113
	.byte	-126
	.byte	-107
	.byte	-104
	.byte	-45
	.byte	-34
	.byte	-55
	.byte	-60
	.byte	-25
	.byte	-22
	.byte	-3
	.byte	-16
	.byte	107
	.byte	102
	.byte	113
	.byte	124
	.byte	95
	.byte	82
	.byte	69
	.byte	72
	.byte	3
	.byte	14
	.byte	25
	.byte	20
	.byte	55
	.byte	58
	.byte	45
	.byte	32
	.byte	109
	.byte	96
	.byte	119
	.byte	122
	.byte	89
	.byte	84
	.byte	67
	.byte	78
	.byte	5
	.byte	8
	.byte	31
	.byte	18
	.byte	49
	.byte	60
	.byte	43
	.byte	38
	.byte	-67
	.byte	-80
	.byte	-89
	.byte	-86
	.byte	-119
	.byte	-124
	.byte	-109
	.byte	-98
	.byte	-43
	.byte	-40
	.byte	-49
	.byte	-62
	.byte	-31
	.byte	-20
	.byte	-5
	.byte	-10
	.byte	-42
	.byte	-37
	.byte	-52
	.byte	-63
	.byte	-30
	.byte	-17
	.byte	-8
	.byte	-11
	.byte	-66
	.byte	-77
	.byte	-92
	.byte	-87
	.byte	-118
	.byte	-121
	.byte	-112
	.byte	-99
	.byte	6
	.byte	11
	.byte	28
	.byte	17
	.byte	50
	.byte	63
	.byte	40
	.byte	37
	.byte	110
	.byte	99
	.byte	116
	.byte	121
	.byte	90
	.byte	87
	.byte	64
	.byte	77
	.byte	-38
	.byte	-41
	.byte	-64
	.byte	-51
	.byte	-18
	.byte	-29
	.byte	-12
	.byte	-7
	.byte	-78
	.byte	-65
	.byte	-88
	.byte	-91
	.byte	-122
	.byte	-117
	.byte	-100
	.byte	-111
	.byte	10
	.byte	7
	.byte	16
	.byte	29
	.byte	62
	.byte	51
	.byte	36
	.byte	41
	.byte	98
	.byte	111
	.byte	120
	.byte	117
	.byte	86
	.byte	91
	.byte	76
	.byte	65
	.byte	97
	.byte	108
	.byte	123
	.byte	118
	.byte	85
	.byte	88
	.byte	79
	.byte	66
	.byte	9
	.byte	4
	.byte	19
	.byte	30
	.byte	61
	.byte	48
	.byte	39
	.byte	42
	.byte	-79
	.byte	-68
	.byte	-85
	.byte	-90
	.byte	-123
	.byte	-120
	.byte	-97
	.byte	-110
	.byte	-39
	.byte	-44
	.byte	-61
	.byte	-50
	.byte	-19
	.byte	-32
	.byte	-9
	.byte	-6
	.byte	-73
	.byte	-70
	.byte	-83
	.byte	-96
	.byte	-125
	.byte	-114
	.byte	-103
	.byte	-108
	.byte	-33
	.byte	-46
	.byte	-59
	.byte	-56
	.byte	-21
	.byte	-26
	.byte	-15
	.byte	-4
	.byte	103
	.byte	106
	.byte	125
	.byte	112
	.byte	83
	.byte	94
	.byte	73
	.byte	68
	.byte	15
	.byte	2
	.byte	21
	.byte	24
	.byte	59
	.byte	54
	.byte	33
	.byte	44
	.byte	12
	.byte	1
	.byte	22
	.byte	27
	.byte	56
	.byte	53
	.byte	34
	.byte	47
	.byte	100
	.byte	105
	.byte	126
	.byte	115
	.byte	80
	.byte	93
	.byte	74
	.byte	71
	.byte	-36
	.byte	-47
	.byte	-58
	.byte	-53
	.byte	-24
	.byte	-27
	.byte	-14
	.byte	-1
	.byte	-76
	.byte	-71
	.byte	-82
	.byte	-93
	.byte	-128
	.byte	-115
	.byte	-102
	.byte	-105
	.section	.rodata.gfmul_b,"a",@progbits
	.align	4
	.type	gfmul_b, @object
	.size	gfmul_b, 256
gfmul_b:
	.byte	0
	.byte	11
	.byte	22
	.byte	29
	.byte	44
	.byte	39
	.byte	58
	.byte	49
	.byte	88
	.byte	83
	.byte	78
	.byte	69
	.byte	116
	.byte	127
	.byte	98
	.byte	105
	.byte	-80
	.byte	-69
	.byte	-90
	.byte	-83
	.byte	-100
	.byte	-105
	.byte	-118
	.byte	-127
	.byte	-24
	.byte	-29
	.byte	-2
	.byte	-11
	.byte	-60
	.byte	-49
	.byte	-46
	.byte	-39
	.byte	123
	.byte	112
	.byte	109
	.byte	102
	.byte	87
	.byte	92
	.byte	65
	.byte	74
	.byte	35
	.byte	40
	.byte	53
	.byte	62
	.byte	15
	.byte	4
	.byte	25
	.byte	18
	.byte	-53
	.byte	-64
	.byte	-35
	.byte	-42
	.byte	-25
	.byte	-20
	.byte	-15
	.byte	-6
	.byte	-109
	.byte	-104
	.byte	-123
	.byte	-114
	.byte	-65
	.byte	-76
	.byte	-87
	.byte	-94
	.byte	-10
	.byte	-3
	.byte	-32
	.byte	-21
	.byte	-38
	.byte	-47
	.byte	-52
	.byte	-57
	.byte	-82
	.byte	-91
	.byte	-72
	.byte	-77
	.byte	-126
	.byte	-119
	.byte	-108
	.byte	-97
	.byte	70
	.byte	77
	.byte	80
	.byte	91
	.byte	106
	.byte	97
	.byte	124
	.byte	119
	.byte	30
	.byte	21
	.byte	8
	.byte	3
	.byte	50
	.byte	57
	.byte	36
	.byte	47
	.byte	-115
	.byte	-122
	.byte	-101
	.byte	-112
	.byte	-95
	.byte	-86
	.byte	-73
	.byte	-68
	.byte	-43
	.byte	-34
	.byte	-61
	.byte	-56
	.byte	-7
	.byte	-14
	.byte	-17
	.byte	-28
	.byte	61
	.byte	54
	.byte	43
	.byte	32
	.byte	17
	.byte	26
	.byte	7
	.byte	12
	.byte	101
	.byte	110
	.byte	115
	.byte	120
	.byte	73
	.byte	66
	.byte	95
	.byte	84
	.byte	-9
	.byte	-4
	.byte	-31
	.byte	-22
	.byte	-37
	.byte	-48
	.byte	-51
	.byte	-58
	.byte	-81
	.byte	-92
	.byte	-71
	.byte	-78
	.byte	-125
	.byte	-120
	.byte	-107
	.byte	-98
	.byte	71
	.byte	76
	.byte	81
	.byte	90
	.byte	107
	.byte	96
	.byte	125
	.byte	118
	.byte	31
	.byte	20
	.byte	9
	.byte	2
	.byte	51
	.byte	56
	.byte	37
	.byte	46
	.byte	-116
	.byte	-121
	.byte	-102
	.byte	-111
	.byte	-96
	.byte	-85
	.byte	-74
	.byte	-67
	.byte	-44
	.byte	-33
	.byte	-62
	.byte	-55
	.byte	-8
	.byte	-13
	.byte	-18
	.byte	-27
	.byte	60
	.byte	55
	.byte	42
	.byte	33
	.byte	16
	.byte	27
	.byte	6
	.byte	13
	.byte	100
	.byte	111
	.byte	114
	.byte	121
	.byte	72
	.byte	67
	.byte	94
	.byte	85
	.byte	1
	.byte	10
	.byte	23
	.byte	28
	.byte	45
	.byte	38
	.byte	59
	.byte	48
	.byte	89
	.byte	82
	.byte	79
	.byte	68
	.byte	117
	.byte	126
	.byte	99
	.byte	104
	.byte	-79
	.byte	-70
	.byte	-89
	.byte	-84
	.byte	-99
	.byte	-106
	.byte	-117
	.byte	-128
	.byte	-23
	.byte	-30
	.byte	-1
	.byte	-12
	.byte	-59
	.byte	-50
	.byte	-45
	.byte	-40
	.byte	122
	.byte	113
	.byte	108
	.byte	103
	.byte	86
	.byte	93
	.byte	64
	.byte	75
	.byte	34
	.byte	41
	.byte	52
	.byte	63
	.byte	14
	.byte	5
	.byte	24
	.byte	19
	.byte	-54
	.byte	-63
	.byte	-36
	.byte	-41
	.byte	-26
	.byte	-19
	.byte	-16
	.byte	-5
	.byte	-110
	.byte	-103
	.byte	-124
	.byte	-113
	.byte	-66
	.byte	-75
	.byte	-88
	.byte	-93
	.section	.rodata.gfmul_9,"a",@progbits
	.align	4
	.type	gfmul_9, @object
	.size	gfmul_9, 256
gfmul_9:
	.byte	0
	.byte	9
	.byte	18
	.byte	27
	.byte	36
	.byte	45
	.byte	54
	.byte	63
	.byte	72
	.byte	65
	.byte	90
	.byte	83
	.byte	108
	.byte	101
	.byte	126
	.byte	119
	.byte	-112
	.byte	-103
	.byte	-126
	.byte	-117
	.byte	-76
	.byte	-67
	.byte	-90
	.byte	-81
	.byte	-40
	.byte	-47
	.byte	-54
	.byte	-61
	.byte	-4
	.byte	-11
	.byte	-18
	.byte	-25
	.byte	59
	.byte	50
	.byte	41
	.byte	32
	.byte	31
	.byte	22
	.byte	13
	.byte	4
	.byte	115
	.byte	122
	.byte	97
	.byte	104
	.byte	87
	.byte	94
	.byte	69
	.byte	76
	.byte	-85
	.byte	-94
	.byte	-71
	.byte	-80
	.byte	-113
	.byte	-122
	.byte	-99
	.byte	-108
	.byte	-29
	.byte	-22
	.byte	-15
	.byte	-8
	.byte	-57
	.byte	-50
	.byte	-43
	.byte	-36
	.byte	118
	.byte	127
	.byte	100
	.byte	109
	.byte	82
	.byte	91
	.byte	64
	.byte	73
	.byte	62
	.byte	55
	.byte	44
	.byte	37
	.byte	26
	.byte	19
	.byte	8
	.byte	1
	.byte	-26
	.byte	-17
	.byte	-12
	.byte	-3
	.byte	-62
	.byte	-53
	.byte	-48
	.byte	-39
	.byte	-82
	.byte	-89
	.byte	-68
	.byte	-75
	.byte	-118
	.byte	-125
	.byte	-104
	.byte	-111
	.byte	77
	.byte	68
	.byte	95
	.byte	86
	.byte	105
	.byte	96
	.byte	123
	.byte	114
	.byte	5
	.byte	12
	.byte	23
	.byte	30
	.byte	33
	.byte	40
	.byte	51
	.byte	58
	.byte	-35
	.byte	-44
	.byte	-49
	.byte	-58
	.byte	-7
	.byte	-16
	.byte	-21
	.byte	-30
	.byte	-107
	.byte	-100
	.byte	-121
	.byte	-114
	.byte	-79
	.byte	-72
	.byte	-93
	.byte	-86
	.byte	-20
	.byte	-27
	.byte	-2
	.byte	-9
	.byte	-56
	.byte	-63
	.byte	-38
	.byte	-45
	.byte	-92
	.byte	-83
	.byte	-74
	.byte	-65
	.byte	-128
	.byte	-119
	.byte	-110
	.byte	-101
	.byte	124
	.byte	117
	.byte	110
	.byte	103
	.byte	88
	.byte	81
	.byte	74
	.byte	67
	.byte	52
	.byte	61
	.byte	38
	.byte	47
	.byte	16
	.byte	25
	.byte	2
	.byte	11
	.byte	-41
	.byte	-34
	.byte	-59
	.byte	-52
	.byte	-13
	.byte	-6
	.byte	-31
	.byte	-24
	.byte	-97
	.byte	-106
	.byte	-115
	.byte	-124
	.byte	-69
	.byte	-78
	.byte	-87
	.byte	-96
	.byte	71
	.byte	78
	.byte	85
	.byte	92
	.byte	99
	.byte	106
	.byte	113
	.byte	120
	.byte	15
	.byte	6
	.byte	29
	.byte	20
	.byte	43
	.byte	34
	.byte	57
	.byte	48
	.byte	-102
	.byte	-109
	.byte	-120
	.byte	-127
	.byte	-66
	.byte	-73
	.byte	-84
	.byte	-91
	.byte	-46
	.byte	-37
	.byte	-64
	.byte	-55
	.byte	-10
	.byte	-1
	.byte	-28
	.byte	-19
	.byte	10
	.byte	3
	.byte	24
	.byte	17
	.byte	46
	.byte	39
	.byte	60
	.byte	53
	.byte	66
	.byte	75
	.byte	80
	.byte	89
	.byte	102
	.byte	111
	.byte	116
	.byte	125
	.byte	-95
	.byte	-88
	.byte	-77
	.byte	-70
	.byte	-123
	.byte	-116
	.byte	-105
	.byte	-98
	.byte	-23
	.byte	-32
	.byte	-5
	.byte	-14
	.byte	-51
	.byte	-60
	.byte	-33
	.byte	-42
	.byte	49
	.byte	56
	.byte	35
	.byte	42
	.byte	21
	.byte	28
	.byte	7
	.byte	14
	.byte	121
	.byte	112
	.byte	107
	.byte	98
	.byte	93
	.byte	84
	.byte	79
	.byte	70
	.section	.rodata.gfm3_sbox,"a",@progbits
	.align	4
	.type	gfm3_sbox, @object
	.size	gfm3_sbox, 256
gfm3_sbox:
	.byte	-91
	.byte	-124
	.byte	-103
	.byte	-115
	.byte	13
	.byte	-67
	.byte	-79
	.byte	84
	.byte	80
	.byte	3
	.byte	-87
	.byte	125
	.byte	25
	.byte	98
	.byte	-26
	.byte	-102
	.byte	69
	.byte	-99
	.byte	64
	.byte	-121
	.byte	21
	.byte	-21
	.byte	-55
	.byte	11
	.byte	-20
	.byte	103
	.byte	-3
	.byte	-22
	.byte	-65
	.byte	-9
	.byte	-106
	.byte	91
	.byte	-62
	.byte	28
	.byte	-82
	.byte	106
	.byte	90
	.byte	65
	.byte	2
	.byte	79
	.byte	92
	.byte	-12
	.byte	52
	.byte	8
	.byte	-109
	.byte	115
	.byte	83
	.byte	63
	.byte	12
	.byte	82
	.byte	101
	.byte	94
	.byte	40
	.byte	-95
	.byte	15
	.byte	-75
	.byte	9
	.byte	54
	.byte	-101
	.byte	61
	.byte	38
	.byte	105
	.byte	-51
	.byte	-97
	.byte	27
	.byte	-98
	.byte	116
	.byte	46
	.byte	45
	.byte	-78
	.byte	-18
	.byte	-5
	.byte	-10
	.byte	77
	.byte	97
	.byte	-50
	.byte	123
	.byte	62
	.byte	113
	.byte	-105
	.byte	-11
	.byte	104
	.byte	0
	.byte	44
	.byte	96
	.byte	31
	.byte	-56
	.byte	-19
	.byte	-66
	.byte	70
	.byte	-39
	.byte	75
	.byte	-34
	.byte	-44
	.byte	-24
	.byte	74
	.byte	107
	.byte	42
	.byte	-27
	.byte	22
	.byte	-59
	.byte	-41
	.byte	85
	.byte	-108
	.byte	-49
	.byte	16
	.byte	6
	.byte	-127
	.byte	-16
	.byte	68
	.byte	-70
	.byte	-29
	.byte	-13
	.byte	-2
	.byte	-64
	.byte	-118
	.byte	-83
	.byte	-68
	.byte	72
	.byte	4
	.byte	-33
	.byte	-63
	.byte	117
	.byte	99
	.byte	48
	.byte	26
	.byte	14
	.byte	109
	.byte	76
	.byte	20
	.byte	53
	.byte	47
	.byte	-31
	.byte	-94
	.byte	-52
	.byte	57
	.byte	87
	.byte	-14
	.byte	-126
	.byte	71
	.byte	-84
	.byte	-25
	.byte	43
	.byte	-107
	.byte	-96
	.byte	-104
	.byte	-47
	.byte	127
	.byte	102
	.byte	126
	.byte	-85
	.byte	-125
	.byte	-54
	.byte	41
	.byte	-45
	.byte	60
	.byte	121
	.byte	-30
	.byte	29
	.byte	118
	.byte	59
	.byte	86
	.byte	78
	.byte	30
	.byte	-37
	.byte	10
	.byte	108
	.byte	-28
	.byte	93
	.byte	110
	.byte	-17
	.byte	-90
	.byte	-88
	.byte	-92
	.byte	55
	.byte	-117
	.byte	50
	.byte	67
	.byte	89
	.byte	-73
	.byte	-116
	.byte	100
	.byte	-46
	.byte	-32
	.byte	-76
	.byte	-6
	.byte	7
	.byte	37
	.byte	-81
	.byte	-114
	.byte	-23
	.byte	24
	.byte	-43
	.byte	-120
	.byte	111
	.byte	114
	.byte	36
	.byte	-15
	.byte	-57
	.byte	81
	.byte	35
	.byte	124
	.byte	-100
	.byte	33
	.byte	-35
	.byte	-36
	.byte	-122
	.byte	-123
	.byte	-112
	.byte	66
	.byte	-60
	.byte	-86
	.byte	-40
	.byte	5
	.byte	1
	.byte	18
	.byte	-93
	.byte	95
	.byte	-7
	.byte	-48
	.byte	-111
	.byte	88
	.byte	39
	.byte	-71
	.byte	56
	.byte	19
	.byte	-77
	.byte	51
	.byte	-69
	.byte	112
	.byte	-119
	.byte	-89
	.byte	-74
	.byte	34
	.byte	-110
	.byte	32
	.byte	73
	.byte	-1
	.byte	120
	.byte	122
	.byte	-113
	.byte	-8
	.byte	-128
	.byte	23
	.byte	-38
	.byte	49
	.byte	-58
	.byte	-72
	.byte	-61
	.byte	-80
	.byte	119
	.byte	17
	.byte	-53
	.byte	-4
	.byte	-42
	.byte	58
	.section	.rodata.gfm2_sbox,"a",@progbits
	.align	4
	.type	gfm2_sbox, @object
	.size	gfm2_sbox, 256
gfm2_sbox:
	.byte	-58
	.byte	-8
	.byte	-18
	.byte	-10
	.byte	-1
	.byte	-42
	.byte	-34
	.byte	-111
	.byte	96
	.byte	2
	.byte	-50
	.byte	86
	.byte	-25
	.byte	-75
	.byte	77
	.byte	-20
	.byte	-113
	.byte	31
	.byte	-119
	.byte	-6
	.byte	-17
	.byte	-78
	.byte	-114
	.byte	-5
	.byte	65
	.byte	-77
	.byte	95
	.byte	69
	.byte	35
	.byte	83
	.byte	-28
	.byte	-101
	.byte	117
	.byte	-31
	.byte	61
	.byte	76
	.byte	108
	.byte	126
	.byte	-11
	.byte	-125
	.byte	104
	.byte	81
	.byte	-47
	.byte	-7
	.byte	-30
	.byte	-85
	.byte	98
	.byte	42
	.byte	8
	.byte	-107
	.byte	70
	.byte	-99
	.byte	48
	.byte	55
	.byte	10
	.byte	47
	.byte	14
	.byte	36
	.byte	27
	.byte	-33
	.byte	-51
	.byte	78
	.byte	127
	.byte	-22
	.byte	18
	.byte	29
	.byte	88
	.byte	52
	.byte	54
	.byte	-36
	.byte	-76
	.byte	91
	.byte	-92
	.byte	118
	.byte	-73
	.byte	125
	.byte	82
	.byte	-35
	.byte	94
	.byte	19
	.byte	-90
	.byte	-71
	.byte	0
	.byte	-63
	.byte	64
	.byte	-29
	.byte	121
	.byte	-74
	.byte	-44
	.byte	-115
	.byte	103
	.byte	114
	.byte	-108
	.byte	-104
	.byte	-80
	.byte	-123
	.byte	-69
	.byte	-59
	.byte	79
	.byte	-19
	.byte	-122
	.byte	-102
	.byte	102
	.byte	17
	.byte	-118
	.byte	-23
	.byte	4
	.byte	-2
	.byte	-96
	.byte	120
	.byte	37
	.byte	75
	.byte	-94
	.byte	93
	.byte	-128
	.byte	5
	.byte	63
	.byte	33
	.byte	112
	.byte	-15
	.byte	99
	.byte	119
	.byte	-81
	.byte	66
	.byte	32
	.byte	-27
	.byte	-3
	.byte	-65
	.byte	-127
	.byte	24
	.byte	38
	.byte	-61
	.byte	-66
	.byte	53
	.byte	-120
	.byte	46
	.byte	-109
	.byte	85
	.byte	-4
	.byte	122
	.byte	-56
	.byte	-70
	.byte	50
	.byte	-26
	.byte	-64
	.byte	25
	.byte	-98
	.byte	-93
	.byte	68
	.byte	84
	.byte	59
	.byte	11
	.byte	-116
	.byte	-57
	.byte	107
	.byte	40
	.byte	-89
	.byte	-68
	.byte	22
	.byte	-83
	.byte	-37
	.byte	100
	.byte	116
	.byte	20
	.byte	-110
	.byte	12
	.byte	72
	.byte	-72
	.byte	-97
	.byte	-67
	.byte	67
	.byte	-60
	.byte	57
	.byte	49
	.byte	-45
	.byte	-14
	.byte	-43
	.byte	-117
	.byte	110
	.byte	-38
	.byte	1
	.byte	-79
	.byte	-100
	.byte	73
	.byte	-40
	.byte	-84
	.byte	-13
	.byte	-49
	.byte	-54
	.byte	-12
	.byte	71
	.byte	16
	.byte	111
	.byte	-16
	.byte	74
	.byte	92
	.byte	56
	.byte	87
	.byte	115
	.byte	-105
	.byte	-53
	.byte	-95
	.byte	-24
	.byte	62
	.byte	-106
	.byte	97
	.byte	13
	.byte	15
	.byte	-32
	.byte	124
	.byte	113
	.byte	-52
	.byte	-112
	.byte	6
	.byte	-9
	.byte	28
	.byte	-62
	.byte	106
	.byte	-82
	.byte	105
	.byte	23
	.byte	-103
	.byte	58
	.byte	39
	.byte	-39
	.byte	-21
	.byte	43
	.byte	34
	.byte	-46
	.byte	-87
	.byte	7
	.byte	51
	.byte	45
	.byte	60
	.byte	21
	.byte	-55
	.byte	-121
	.byte	-86
	.byte	80
	.byte	-91
	.byte	3
	.byte	89
	.byte	9
	.byte	26
	.byte	101
	.byte	-41
	.byte	-124
	.byte	-48
	.byte	-126
	.byte	41
	.byte	90
	.byte	30
	.byte	123
	.byte	-88
	.byte	109
	.byte	44
	.section	.rodata.isbox,"a",@progbits
	.align	4
	.type	isbox, @object
	.size	isbox, 256
isbox:
	.byte	82
	.byte	9
	.byte	106
	.byte	-43
	.byte	48
	.byte	54
	.byte	-91
	.byte	56
	.byte	-65
	.byte	64
	.byte	-93
	.byte	-98
	.byte	-127
	.byte	-13
	.byte	-41
	.byte	-5
	.byte	124
	.byte	-29
	.byte	57
	.byte	-126
	.byte	-101
	.byte	47
	.byte	-1
	.byte	-121
	.byte	52
	.byte	-114
	.byte	67
	.byte	68
	.byte	-60
	.byte	-34
	.byte	-23
	.byte	-53
	.byte	84
	.byte	123
	.byte	-108
	.byte	50
	.byte	-90
	.byte	-62
	.byte	35
	.byte	61
	.byte	-18
	.byte	76
	.byte	-107
	.byte	11
	.byte	66
	.byte	-6
	.byte	-61
	.byte	78
	.byte	8
	.byte	46
	.byte	-95
	.byte	102
	.byte	40
	.byte	-39
	.byte	36
	.byte	-78
	.byte	118
	.byte	91
	.byte	-94
	.byte	73
	.byte	109
	.byte	-117
	.byte	-47
	.byte	37
	.byte	114
	.byte	-8
	.byte	-10
	.byte	100
	.byte	-122
	.byte	104
	.byte	-104
	.byte	22
	.byte	-44
	.byte	-92
	.byte	92
	.byte	-52
	.byte	93
	.byte	101
	.byte	-74
	.byte	-110
	.byte	108
	.byte	112
	.byte	72
	.byte	80
	.byte	-3
	.byte	-19
	.byte	-71
	.byte	-38
	.byte	94
	.byte	21
	.byte	70
	.byte	87
	.byte	-89
	.byte	-115
	.byte	-99
	.byte	-124
	.byte	-112
	.byte	-40
	.byte	-85
	.byte	0
	.byte	-116
	.byte	-68
	.byte	-45
	.byte	10
	.byte	-9
	.byte	-28
	.byte	88
	.byte	5
	.byte	-72
	.byte	-77
	.byte	69
	.byte	6
	.byte	-48
	.byte	44
	.byte	30
	.byte	-113
	.byte	-54
	.byte	63
	.byte	15
	.byte	2
	.byte	-63
	.byte	-81
	.byte	-67
	.byte	3
	.byte	1
	.byte	19
	.byte	-118
	.byte	107
	.byte	58
	.byte	-111
	.byte	17
	.byte	65
	.byte	79
	.byte	103
	.byte	-36
	.byte	-22
	.byte	-105
	.byte	-14
	.byte	-49
	.byte	-50
	.byte	-16
	.byte	-76
	.byte	-26
	.byte	115
	.byte	-106
	.byte	-84
	.byte	116
	.byte	34
	.byte	-25
	.byte	-83
	.byte	53
	.byte	-123
	.byte	-30
	.byte	-7
	.byte	55
	.byte	-24
	.byte	28
	.byte	117
	.byte	-33
	.byte	110
	.byte	71
	.byte	-15
	.byte	26
	.byte	113
	.byte	29
	.byte	41
	.byte	-59
	.byte	-119
	.byte	111
	.byte	-73
	.byte	98
	.byte	14
	.byte	-86
	.byte	24
	.byte	-66
	.byte	27
	.byte	-4
	.byte	86
	.byte	62
	.byte	75
	.byte	-58
	.byte	-46
	.byte	121
	.byte	32
	.byte	-102
	.byte	-37
	.byte	-64
	.byte	-2
	.byte	120
	.byte	-51
	.byte	90
	.byte	-12
	.byte	31
	.byte	-35
	.byte	-88
	.byte	51
	.byte	-120
	.byte	7
	.byte	-57
	.byte	49
	.byte	-79
	.byte	18
	.byte	16
	.byte	89
	.byte	39
	.byte	-128
	.byte	-20
	.byte	95
	.byte	96
	.byte	81
	.byte	127
	.byte	-87
	.byte	25
	.byte	-75
	.byte	74
	.byte	13
	.byte	45
	.byte	-27
	.byte	122
	.byte	-97
	.byte	-109
	.byte	-55
	.byte	-100
	.byte	-17
	.byte	-96
	.byte	-32
	.byte	59
	.byte	77
	.byte	-82
	.byte	42
	.byte	-11
	.byte	-80
	.byte	-56
	.byte	-21
	.byte	-69
	.byte	60
	.byte	-125
	.byte	83
	.byte	-103
	.byte	97
	.byte	23
	.byte	43
	.byte	4
	.byte	126
	.byte	-70
	.byte	119
	.byte	-42
	.byte	38
	.byte	-31
	.byte	105
	.byte	20
	.byte	99
	.byte	85
	.byte	33
	.byte	12
	.byte	125
	.section	.rodata.sbox,"a",@progbits
	.align	4
	.type	sbox, @object
	.size	sbox, 256
sbox:
	.byte	99
	.byte	124
	.byte	119
	.byte	123
	.byte	-14
	.byte	107
	.byte	111
	.byte	-59
	.byte	48
	.byte	1
	.byte	103
	.byte	43
	.byte	-2
	.byte	-41
	.byte	-85
	.byte	118
	.byte	-54
	.byte	-126
	.byte	-55
	.byte	125
	.byte	-6
	.byte	89
	.byte	71
	.byte	-16
	.byte	-83
	.byte	-44
	.byte	-94
	.byte	-81
	.byte	-100
	.byte	-92
	.byte	114
	.byte	-64
	.byte	-73
	.byte	-3
	.byte	-109
	.byte	38
	.byte	54
	.byte	63
	.byte	-9
	.byte	-52
	.byte	52
	.byte	-91
	.byte	-27
	.byte	-15
	.byte	113
	.byte	-40
	.byte	49
	.byte	21
	.byte	4
	.byte	-57
	.byte	35
	.byte	-61
	.byte	24
	.byte	-106
	.byte	5
	.byte	-102
	.byte	7
	.byte	18
	.byte	-128
	.byte	-30
	.byte	-21
	.byte	39
	.byte	-78
	.byte	117
	.byte	9
	.byte	-125
	.byte	44
	.byte	26
	.byte	27
	.byte	110
	.byte	90
	.byte	-96
	.byte	82
	.byte	59
	.byte	-42
	.byte	-77
	.byte	41
	.byte	-29
	.byte	47
	.byte	-124
	.byte	83
	.byte	-47
	.byte	0
	.byte	-19
	.byte	32
	.byte	-4
	.byte	-79
	.byte	91
	.byte	106
	.byte	-53
	.byte	-66
	.byte	57
	.byte	74
	.byte	76
	.byte	88
	.byte	-49
	.byte	-48
	.byte	-17
	.byte	-86
	.byte	-5
	.byte	67
	.byte	77
	.byte	51
	.byte	-123
	.byte	69
	.byte	-7
	.byte	2
	.byte	127
	.byte	80
	.byte	60
	.byte	-97
	.byte	-88
	.byte	81
	.byte	-93
	.byte	64
	.byte	-113
	.byte	-110
	.byte	-99
	.byte	56
	.byte	-11
	.byte	-68
	.byte	-74
	.byte	-38
	.byte	33
	.byte	16
	.byte	-1
	.byte	-13
	.byte	-46
	.byte	-51
	.byte	12
	.byte	19
	.byte	-20
	.byte	95
	.byte	-105
	.byte	68
	.byte	23
	.byte	-60
	.byte	-89
	.byte	126
	.byte	61
	.byte	100
	.byte	93
	.byte	25
	.byte	115
	.byte	96
	.byte	-127
	.byte	79
	.byte	-36
	.byte	34
	.byte	42
	.byte	-112
	.byte	-120
	.byte	70
	.byte	-18
	.byte	-72
	.byte	20
	.byte	-34
	.byte	94
	.byte	11
	.byte	-37
	.byte	-32
	.byte	50
	.byte	58
	.byte	10
	.byte	73
	.byte	6
	.byte	36
	.byte	92
	.byte	-62
	.byte	-45
	.byte	-84
	.byte	98
	.byte	-111
	.byte	-107
	.byte	-28
	.byte	121
	.byte	-25
	.byte	-56
	.byte	55
	.byte	109
	.byte	-115
	.byte	-43
	.byte	78
	.byte	-87
	.byte	108
	.byte	86
	.byte	-12
	.byte	-22
	.byte	101
	.byte	122
	.byte	-82
	.byte	8
	.byte	-70
	.byte	120
	.byte	37
	.byte	46
	.byte	28
	.byte	-90
	.byte	-76
	.byte	-58
	.byte	-24
	.byte	-35
	.byte	116
	.byte	31
	.byte	75
	.byte	-67
	.byte	-117
	.byte	-118
	.byte	112
	.byte	62
	.byte	-75
	.byte	102
	.byte	72
	.byte	3
	.byte	-10
	.byte	14
	.byte	97
	.byte	53
	.byte	87
	.byte	-71
	.byte	-122
	.byte	-63
	.byte	29
	.byte	-98
	.byte	-31
	.byte	-8
	.byte	-104
	.byte	17
	.byte	105
	.byte	-39
	.byte	-114
	.byte	-108
	.byte	-101
	.byte	30
	.byte	-121
	.byte	-23
	.byte	-50
	.byte	85
	.byte	40
	.byte	-33
	.byte	-116
	.byte	-95
	.byte	-119
	.byte	13
	.byte	-65
	.byte	-26
	.byte	66
	.byte	104
	.byte	65
	.byte	-103
	.byte	45
	.byte	15
	.byte	-80
	.byte	84
	.byte	-69
	.byte	22
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
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI0-.LFB5
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI1-.LFB6
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI2-.LFB7
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x4
	.4byte	.LCFI3-.LFB8
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x4
	.4byte	.LCFI4-.LFB9
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI5-.LFB10
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x4
	.4byte	.LCFI6-.LFB11
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI7-.LFB17
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI8-.LFB19
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI9-.LFB21
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI10-.LFB23
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI11-.LFB12
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI12-.LFB13
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI13-.LFB14
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI14-.LFB15
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI15-.LFB16
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI16-.LFB18
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI17-.LFB20
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI18-.LFB22
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE36:
.LSFDE38:
	.4byte	.LEFDE38-.LASFDE38
.LASFDE38:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI19-.LFB24
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE38:
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/bt_types.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/smp/include/aes.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xf37
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF57
	.byte	0xc
	.4byte	.LASF58
	.4byte	.LASF59
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x4
	.4byte	.LASF5
	.byte	0x2
	.byte	0x12
	.4byte	0x4c
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x4
	.4byte	.LASF6
	.byte	0x2
	.byte	0x1a
	.4byte	0x2c
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
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4c
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x6
	.byte	0x4
	.4byte	0x9d
	.uleb128 0x7
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x3
	.byte	0x15
	.4byte	0x41
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x3
	.byte	0x2d
	.4byte	0x5a
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x4
	.byte	0x21
	.4byte	0x9e
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x4
	.byte	0x23
	.4byte	0xa9
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF17
	.uleb128 0x8
	.4byte	0xb4
	.4byte	0xe1
	.uleb128 0x9
	.4byte	0x7a
	.byte	0x5
	.byte	0
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x5
	.byte	0x3a
	.4byte	0x4c
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x5
	.byte	0x3c
	.4byte	0xe1
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x5
	.byte	0x42
	.4byte	0xe1
	.uleb128 0xa
	.byte	0xf1
	.byte	0x5
	.byte	0x44
	.4byte	0x123
	.uleb128 0xb
	.4byte	.LASF21
	.byte	0x5
	.byte	0x45
	.4byte	0x123
	.byte	0
	.uleb128 0xc
	.string	"rnd"
	.byte	0x5
	.byte	0x46
	.4byte	0xe1
	.byte	0xf0
	.byte	0
	.uleb128 0x8
	.4byte	0xe1
	.4byte	0x133
	.uleb128 0x9
	.4byte	0x7a
	.byte	0xef
	.byte	0
	.uleb128 0x4
	.4byte	.LASF22
	.byte	0x5
	.byte	0x47
	.4byte	0x102
	.uleb128 0x4
	.4byte	.LASF23
	.byte	0x1
	.byte	0x47
	.4byte	0xbf
	.uleb128 0xd
	.4byte	.LASF24
	.byte	0x1
	.2byte	0x15c
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x17a
	.uleb128 0xe
	.string	"d"
	.byte	0x1
	.2byte	0x15c
	.4byte	0x81
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xf
	.string	"s"
	.byte	0x1
	.2byte	0x15c
	.4byte	0x97
	.4byte	.LLST0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF25
	.byte	0x1
	.2byte	0x177
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1b7
	.uleb128 0xe
	.string	"d"
	.byte	0x1
	.2byte	0x177
	.4byte	0x81
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xf
	.string	"s"
	.byte	0x1
	.2byte	0x177
	.4byte	0x97
	.4byte	.LLST1
	.uleb128 0xe
	.string	"k"
	.byte	0x1
	.2byte	0x177
	.4byte	0x97
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.uleb128 0xd
	.4byte	.LASF26
	.byte	0x1
	.2byte	0x195
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1fc
	.uleb128 0xe
	.string	"d"
	.byte	0x1
	.2byte	0x195
	.4byte	0x1fc
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xe
	.string	"k"
	.byte	0x1
	.2byte	0x195
	.4byte	0x202
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x10
	.4byte	.LVL5
	.4byte	0x149
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xe1
	.uleb128 0x6
	.byte	0x4
	.4byte	0x208
	.uleb128 0x12
	.4byte	0xe1
	.uleb128 0xd
	.4byte	.LASF27
	.byte	0x1
	.2byte	0x19a
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x240
	.uleb128 0xe
	.string	"st"
	.byte	0x1
	.2byte	0x19a
	.4byte	0x1fc
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x13
	.string	"tt"
	.byte	0x1
	.2byte	0x19c
	.4byte	0xe1
	.4byte	.LLST2
	.byte	0
	.uleb128 0xd
	.4byte	.LASF28
	.byte	0x1
	.2byte	0x1ab
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x273
	.uleb128 0xe
	.string	"st"
	.byte	0x1
	.2byte	0x1ab
	.4byte	0x1fc
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x13
	.string	"tt"
	.byte	0x1
	.2byte	0x1ad
	.4byte	0xe1
	.4byte	.LLST3
	.byte	0
	.uleb128 0xd
	.4byte	.LASF29
	.byte	0x1
	.2byte	0x1bd
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2c0
	.uleb128 0xe
	.string	"dt"
	.byte	0x1
	.2byte	0x1bd
	.4byte	0x1fc
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x14
	.string	"st"
	.byte	0x1
	.2byte	0x1bf
	.4byte	0x2c0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x10
	.4byte	.LVL31
	.4byte	0xf31
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0xe1
	.4byte	0x2d0
	.uleb128 0x9
	.4byte	0x7a
	.byte	0xf
	.byte	0
	.uleb128 0xd
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x1db
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x31d
	.uleb128 0xe
	.string	"dt"
	.byte	0x1
	.2byte	0x1db
	.4byte	0x1fc
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x14
	.string	"st"
	.byte	0x1
	.2byte	0x1dd
	.4byte	0x2c0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x10
	.4byte	.LVL33
	.4byte	0xf31
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x2a5
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x35c
	.uleb128 0xe
	.string	"k"
	.byte	0x1
	.2byte	0x2a5
	.4byte	0x1fc
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xe
	.string	"rc"
	.byte	0x1
	.2byte	0x2a5
	.4byte	0x1fc
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x13
	.string	"cc"
	.byte	0x1
	.2byte	0x2a7
	.4byte	0xe1
	.4byte	.LLST4
	.byte	0
	.uleb128 0xd
	.4byte	.LASF32
	.byte	0x1
	.2byte	0x2de
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x39d
	.uleb128 0xe
	.string	"k"
	.byte	0x1
	.2byte	0x2de
	.4byte	0x1fc
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xf
	.string	"rc"
	.byte	0x1
	.2byte	0x2de
	.4byte	0x1fc
	.4byte	.LLST5
	.uleb128 0x13
	.string	"cc"
	.byte	0x1
	.2byte	0x2e0
	.4byte	0xe1
	.4byte	.LLST6
	.byte	0
	.uleb128 0xd
	.4byte	.LASF33
	.byte	0x1
	.2byte	0x315
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3de
	.uleb128 0xe
	.string	"k"
	.byte	0x1
	.2byte	0x315
	.4byte	0x1fc
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xf
	.string	"rc"
	.byte	0x1
	.2byte	0x315
	.4byte	0x1fc
	.4byte	.LLST7
	.uleb128 0x13
	.string	"cc"
	.byte	0x1
	.2byte	0x317
	.4byte	0xe1
	.4byte	.LLST8
	.byte	0
	.uleb128 0xd
	.4byte	.LASF34
	.byte	0x1
	.2byte	0x362
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x41f
	.uleb128 0xe
	.string	"k"
	.byte	0x1
	.2byte	0x362
	.4byte	0x1fc
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xf
	.string	"rc"
	.byte	0x1
	.2byte	0x362
	.4byte	0x1fc
	.4byte	.LLST9
	.uleb128 0x13
	.string	"cc"
	.byte	0x1
	.2byte	0x364
	.4byte	0xe1
	.4byte	.LLST10
	.byte	0
	.uleb128 0x15
	.4byte	.LASF36
	.byte	0x1
	.2byte	0x201
	.4byte	0xec
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x508
	.uleb128 0xf
	.string	"key"
	.byte	0x1
	.2byte	0x201
	.4byte	0x508
	.4byte	.LLST11
	.uleb128 0x16
	.4byte	.LASF35
	.byte	0x1
	.2byte	0x201
	.4byte	0xf7
	.4byte	.LLST12
	.uleb128 0xe
	.string	"ctx"
	.byte	0x1
	.2byte	0x201
	.4byte	0x513
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x13
	.string	"cc"
	.byte	0x1
	.2byte	0x203
	.4byte	0xe1
	.4byte	.LLST13
	.uleb128 0x13
	.string	"rc"
	.byte	0x1
	.2byte	0x203
	.4byte	0xe1
	.4byte	.LLST14
	.uleb128 0x14
	.string	"hi"
	.byte	0x1
	.2byte	0x203
	.4byte	0xe1
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x17
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.4byte	0x4eb
	.uleb128 0x13
	.string	"tt"
	.byte	0x1
	.2byte	0x21a
	.4byte	0xe1
	.4byte	.LLST15
	.uleb128 0x13
	.string	"t0"
	.byte	0x1
	.2byte	0x21a
	.4byte	0xe1
	.4byte	.LLST16
	.uleb128 0x13
	.string	"t1"
	.byte	0x1
	.2byte	0x21a
	.4byte	0xe1
	.4byte	.LLST17
	.uleb128 0x13
	.string	"t2"
	.byte	0x1
	.2byte	0x21a
	.4byte	0xe1
	.4byte	.LLST18
	.uleb128 0x13
	.string	"t3"
	.byte	0x1
	.2byte	0x21a
	.4byte	0xe1
	.4byte	.LLST19
	.byte	0
	.uleb128 0x10
	.4byte	.LVL74
	.4byte	0xf31
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x50e
	.uleb128 0x12
	.4byte	0x4c
	.uleb128 0x6
	.byte	0x4
	.4byte	0x133
	.uleb128 0x15
	.4byte	.LASF37
	.byte	0x1
	.2byte	0x23d
	.4byte	0xec
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x60d
	.uleb128 0xf
	.string	"in"
	.byte	0x1
	.2byte	0x23d
	.4byte	0x508
	.4byte	.LLST20
	.uleb128 0xe
	.string	"out"
	.byte	0x1
	.2byte	0x23d
	.4byte	0x8a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xe
	.string	"ctx"
	.byte	0x1
	.2byte	0x23d
	.4byte	0x60d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x18
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.uleb128 0x14
	.string	"s1"
	.byte	0x1
	.2byte	0x240
	.4byte	0x2c0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x13
	.string	"r"
	.byte	0x1
	.2byte	0x240
	.4byte	0xe1
	.4byte	.LLST21
	.uleb128 0x19
	.4byte	.LVL111
	.4byte	0x17a
	.4byte	0x5a3
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL114
	.4byte	0x273
	.4byte	0x5b7
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x19
	.4byte	.LVL115
	.4byte	0x1b7
	.4byte	0x5d6
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x7
	.byte	0x72
	.sleb128 0
	.byte	0x34
	.byte	0x24
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0
	.uleb128 0x19
	.4byte	.LVL118
	.4byte	0x20d
	.4byte	0x5ea
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x10
	.4byte	.LVL119
	.4byte	0x17a
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x7
	.byte	0x72
	.sleb128 0
	.byte	0x34
	.byte	0x24
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x613
	.uleb128 0x12
	.4byte	0x133
	.uleb128 0x15
	.4byte	.LASF38
	.byte	0x1
	.2byte	0x25a
	.4byte	0xec
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6d2
	.uleb128 0xf
	.string	"in"
	.byte	0x1
	.2byte	0x25a
	.4byte	0x508
	.4byte	.LLST22
	.uleb128 0xf
	.string	"out"
	.byte	0x1
	.2byte	0x25a
	.4byte	0x8a
	.4byte	.LLST23
	.uleb128 0x16
	.4byte	.LASF39
	.byte	0x1
	.2byte	0x25b
	.4byte	0x25
	.4byte	.LLST24
	.uleb128 0xe
	.string	"iv"
	.byte	0x1
	.2byte	0x25b
	.4byte	0x8a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0xe
	.string	"ctx"
	.byte	0x1
	.2byte	0x25b
	.4byte	0x60d
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x19
	.4byte	.LVL125
	.4byte	0x149
	.4byte	0x696
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL126
	.4byte	0x519
	.4byte	0x6b6
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x10
	.4byte	.LVL127
	.4byte	0xf31
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF40
	.byte	0x1
	.2byte	0x270
	.4byte	0xec
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7bb
	.uleb128 0xf
	.string	"in"
	.byte	0x1
	.2byte	0x270
	.4byte	0x508
	.4byte	.LLST25
	.uleb128 0xe
	.string	"out"
	.byte	0x1
	.2byte	0x270
	.4byte	0x8a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xe
	.string	"ctx"
	.byte	0x1
	.2byte	0x270
	.4byte	0x60d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x18
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.uleb128 0x14
	.string	"s1"
	.byte	0x1
	.2byte	0x273
	.4byte	0x2c0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x13
	.string	"r"
	.byte	0x1
	.2byte	0x273
	.4byte	0xe1
	.4byte	.LLST26
	.uleb128 0x19
	.4byte	.LVL136
	.4byte	0x17a
	.4byte	0x756
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL137
	.4byte	0x240
	.4byte	0x76a
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x19
	.4byte	.LVL140
	.4byte	0x1b7
	.4byte	0x789
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x7
	.byte	0x72
	.sleb128 0
	.byte	0x34
	.byte	0x24
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0
	.uleb128 0x19
	.4byte	.LVL141
	.4byte	0x2d0
	.4byte	0x79d
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x10
	.4byte	.LVL144
	.4byte	0x17a
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF41
	.byte	0x1
	.2byte	0x28d
	.4byte	0xec
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8ad
	.uleb128 0xf
	.string	"in"
	.byte	0x1
	.2byte	0x28d
	.4byte	0x508
	.4byte	.LLST27
	.uleb128 0xf
	.string	"out"
	.byte	0x1
	.2byte	0x28d
	.4byte	0x8a
	.4byte	.LLST28
	.uleb128 0x16
	.4byte	.LASF39
	.byte	0x1
	.2byte	0x28e
	.4byte	0x25
	.4byte	.LLST29
	.uleb128 0xe
	.string	"iv"
	.byte	0x1
	.2byte	0x28e
	.4byte	0x8a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0xe
	.string	"ctx"
	.byte	0x1
	.2byte	0x28e
	.4byte	0x60d
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x18
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.uleb128 0x14
	.string	"tmp"
	.byte	0x1
	.2byte	0x291
	.4byte	0x2c0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x19
	.4byte	.LVL149
	.4byte	0xf31
	.4byte	0x856
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x19
	.4byte	.LVL150
	.4byte	0x6d2
	.4byte	0x876
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL153
	.4byte	0x149
	.4byte	0x890
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x10
	.4byte	.LVL154
	.4byte	0xf31
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF43
	.byte	0x1
	.2byte	0x2b9
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9f8
	.uleb128 0xf
	.string	"in"
	.byte	0x1
	.2byte	0x2b9
	.4byte	0x508
	.4byte	.LLST30
	.uleb128 0xe
	.string	"out"
	.byte	0x1
	.2byte	0x2b9
	.4byte	0x8a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xe
	.string	"key"
	.byte	0x1
	.2byte	0x2ba
	.4byte	0x508
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1b
	.4byte	.LASF42
	.byte	0x1
	.2byte	0x2ba
	.4byte	0x8a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x14
	.string	"s1"
	.byte	0x1
	.2byte	0x2bc
	.4byte	0x2c0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x13
	.string	"r"
	.byte	0x1
	.2byte	0x2bc
	.4byte	0xe1
	.4byte	.LLST31
	.uleb128 0x14
	.string	"rc"
	.byte	0x1
	.2byte	0x2bc
	.4byte	0xe1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x19
	.4byte	.LVL161
	.4byte	0xf31
	.4byte	0x945
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x19
	.4byte	.LVL162
	.4byte	0x17a
	.4byte	0x965
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL165
	.4byte	0x273
	.4byte	0x979
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x19
	.4byte	.LVL166
	.4byte	0x31d
	.4byte	0x993
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x19
	.4byte	.LVL167
	.4byte	0x1b7
	.4byte	0x9ad
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL170
	.4byte	0x20d
	.4byte	0x9c1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x19
	.4byte	.LVL171
	.4byte	0x31d
	.4byte	0x9db
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x10
	.4byte	.LVL172
	.4byte	0x17a
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF44
	.byte	0x1
	.2byte	0x2f1
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb43
	.uleb128 0xf
	.string	"in"
	.byte	0x1
	.2byte	0x2f1
	.4byte	0x508
	.4byte	.LLST32
	.uleb128 0xe
	.string	"out"
	.byte	0x1
	.2byte	0x2f1
	.4byte	0x8a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xe
	.string	"key"
	.byte	0x1
	.2byte	0x2f2
	.4byte	0x508
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1b
	.4byte	.LASF42
	.byte	0x1
	.2byte	0x2f2
	.4byte	0x8a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x14
	.string	"s1"
	.byte	0x1
	.2byte	0x2f4
	.4byte	0x2c0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x13
	.string	"r"
	.byte	0x1
	.2byte	0x2f4
	.4byte	0xe1
	.4byte	.LLST33
	.uleb128 0x14
	.string	"rc"
	.byte	0x1
	.2byte	0x2f4
	.4byte	0xe1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x19
	.4byte	.LVL174
	.4byte	0xf31
	.4byte	0xa90
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x19
	.4byte	.LVL175
	.4byte	0x17a
	.4byte	0xab0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL176
	.4byte	0x240
	.4byte	0xac4
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x19
	.4byte	.LVL179
	.4byte	0x35c
	.4byte	0xade
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x19
	.4byte	.LVL180
	.4byte	0x1b7
	.4byte	0xaf8
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL181
	.4byte	0x2d0
	.4byte	0xb0c
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x19
	.4byte	.LVL184
	.4byte	0x35c
	.4byte	0xb26
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x10
	.4byte	.LVL185
	.4byte	0x17a
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF45
	.byte	0x1
	.2byte	0x335
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xccf
	.uleb128 0xf
	.string	"in"
	.byte	0x1
	.2byte	0x335
	.4byte	0x508
	.4byte	.LLST34
	.uleb128 0xe
	.string	"out"
	.byte	0x1
	.2byte	0x335
	.4byte	0x8a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xe
	.string	"key"
	.byte	0x1
	.2byte	0x336
	.4byte	0x508
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1b
	.4byte	.LASF42
	.byte	0x1
	.2byte	0x336
	.4byte	0x8a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x14
	.string	"s1"
	.byte	0x1
	.2byte	0x338
	.4byte	0x2c0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x13
	.string	"r"
	.byte	0x1
	.2byte	0x338
	.4byte	0xe1
	.4byte	.LLST35
	.uleb128 0x14
	.string	"rc"
	.byte	0x1
	.2byte	0x338
	.4byte	0xe1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x19
	.4byte	.LVL187
	.4byte	0xf31
	.4byte	0xbdc
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL188
	.4byte	0xf31
	.4byte	0xc02
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x75
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x74
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL189
	.4byte	0x17a
	.4byte	0xc22
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL192
	.4byte	0x273
	.4byte	0xc36
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x19
	.4byte	.LVL193
	.4byte	0x1b7
	.4byte	0xc50
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 16
	.byte	0
	.uleb128 0x19
	.4byte	.LVL194
	.4byte	0x39d
	.4byte	0xc6a
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x19
	.4byte	.LVL195
	.4byte	0x1b7
	.4byte	0xc84
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL198
	.4byte	0x20d
	.4byte	0xc98
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x19
	.4byte	.LVL199
	.4byte	0x39d
	.4byte	0xcb2
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x10
	.4byte	.LVL200
	.4byte	0x17a
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF46
	.byte	0x1
	.2byte	0x383
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe41
	.uleb128 0xf
	.string	"in"
	.byte	0x1
	.2byte	0x383
	.4byte	0x508
	.4byte	.LLST36
	.uleb128 0xe
	.string	"out"
	.byte	0x1
	.2byte	0x383
	.4byte	0x8a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xe
	.string	"key"
	.byte	0x1
	.2byte	0x384
	.4byte	0x508
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1b
	.4byte	.LASF42
	.byte	0x1
	.2byte	0x384
	.4byte	0x8a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x14
	.string	"s1"
	.byte	0x1
	.2byte	0x386
	.4byte	0x2c0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x13
	.string	"r"
	.byte	0x1
	.2byte	0x386
	.4byte	0xe1
	.4byte	.LLST37
	.uleb128 0x14
	.string	"rc"
	.byte	0x1
	.2byte	0x386
	.4byte	0xe1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x19
	.4byte	.LVL202
	.4byte	0xf31
	.4byte	0xd68
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL203
	.4byte	0xf31
	.4byte	0xd8e
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x75
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x74
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL204
	.4byte	0x17a
	.4byte	0xdae
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL205
	.4byte	0x240
	.4byte	0xdc2
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x19
	.4byte	.LVL208
	.4byte	0x3de
	.4byte	0xddc
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x19
	.4byte	.LVL209
	.4byte	0x1b7
	.4byte	0xdf6
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 16
	.byte	0
	.uleb128 0x19
	.4byte	.LVL210
	.4byte	0x1b7
	.4byte	0xe10
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL211
	.4byte	0x2d0
	.4byte	0xe24
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x10
	.4byte	.LVL214
	.4byte	0x17a
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF47
	.byte	0x4
	.2byte	0x2cc
	.4byte	0xe54
	.byte	0x6
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.uleb128 0x12
	.4byte	0xd1
	.uleb128 0x1c
	.4byte	.LASF48
	.byte	0x4
	.2byte	0x2cd
	.4byte	0xe6c
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	0xd1
	.uleb128 0x8
	.4byte	0xe1
	.4byte	0xe81
	.uleb128 0x9
	.4byte	0x7a
	.byte	0xff
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF49
	.byte	0x1
	.byte	0xc5
	.4byte	0xe92
	.uleb128 0x5
	.byte	0x3
	.4byte	sbox
	.uleb128 0x12
	.4byte	0xe71
	.uleb128 0x1d
	.4byte	.LASF50
	.byte	0x1
	.byte	0xc6
	.4byte	0xea8
	.uleb128 0x5
	.byte	0x3
	.4byte	isbox
	.uleb128 0x12
	.4byte	0xe71
	.uleb128 0x1d
	.4byte	.LASF51
	.byte	0x1
	.byte	0xc8
	.4byte	0xebe
	.uleb128 0x5
	.byte	0x3
	.4byte	gfm2_sbox
	.uleb128 0x12
	.4byte	0xe71
	.uleb128 0x1d
	.4byte	.LASF52
	.byte	0x1
	.byte	0xc9
	.4byte	0xed4
	.uleb128 0x5
	.byte	0x3
	.4byte	gfm3_sbox
	.uleb128 0x12
	.4byte	0xe71
	.uleb128 0x1d
	.4byte	.LASF53
	.byte	0x1
	.byte	0xcb
	.4byte	0xeea
	.uleb128 0x5
	.byte	0x3
	.4byte	gfmul_9
	.uleb128 0x12
	.4byte	0xe71
	.uleb128 0x1d
	.4byte	.LASF54
	.byte	0x1
	.byte	0xcc
	.4byte	0xf00
	.uleb128 0x5
	.byte	0x3
	.4byte	gfmul_b
	.uleb128 0x12
	.4byte	0xe71
	.uleb128 0x1d
	.4byte	.LASF55
	.byte	0x1
	.byte	0xcd
	.4byte	0xf16
	.uleb128 0x5
	.byte	0x3
	.4byte	gfmul_d
	.uleb128 0x12
	.4byte	0xe71
	.uleb128 0x1d
	.4byte	.LASF56
	.byte	0x1
	.byte	0xce
	.4byte	0xf2c
	.uleb128 0x5
	.byte	0x3
	.4byte	gfmul_e
	.uleb128 0x12
	.4byte	0xe71
	.uleb128 0x1e
	.4byte	.LASF60
	.4byte	.LASF60
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.4byte	.LFE5
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
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x2
	.byte	0x72
	.sleb128 1
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x2
	.byte	0x72
	.sleb128 2
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x2
	.byte	0x72
	.sleb128 6
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x2
	.byte	0x72
	.sleb128 15
	.4byte	.LVL17
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x2
	.byte	0x72
	.sleb128 13
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x2
	.byte	0x72
	.sleb128 2
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x2
	.byte	0x72
	.sleb128 6
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x2
	.byte	0x72
	.sleb128 3
	.4byte	.LVL29
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x3
	.byte	0x78
	.sleb128 -4
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LFE17
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL39
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL45
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x2
	.byte	0x3c
	.byte	0x9f
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x3
	.byte	0x78
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL46
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL52
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x3
	.byte	0x78
	.sleb128 -4
	.byte	0x9f
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x2
	.byte	0x44
	.byte	0x9f
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x3
	.byte	0x78
	.sleb128 -4
	.byte	0x9f
	.4byte	.LVL56
	.4byte	.LFE21
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL57
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL68
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x2
	.byte	0x4c
	.byte	0x9f
	.4byte	.LVL59
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x3
	.byte	0x78
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x2
	.byte	0x3c
	.byte	0x9f
	.4byte	.LVL64
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL65
	.4byte	.LVL66
	.2byte	0x3
	.byte	0x78
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL66
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST11:
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
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL76
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL69
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL72
	.4byte	.LVL73
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL73
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL77
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL78
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL108
	.4byte	.LVL109
	.2byte	0x3
	.byte	0x78
	.sleb128 -4
	.byte	0x9f
	.4byte	.LVL109
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL77
	.4byte	.LVL78
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL78
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL95
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL86
	.4byte	.LVL96
	.2byte	0x7
	.byte	0x74
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x34
	.byte	0x1c
	.4byte	.LVL102
	.4byte	.LVL105
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL105
	.4byte	.LVL106
	.2byte	0x3
	.byte	0x79
	.sleb128 -3
	.byte	0x9f
	.4byte	.LVL106
	.4byte	.LVL108
	.2byte	0x6
	.byte	0x78
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL108
	.4byte	.LVL109
	.2byte	0x8
	.byte	0x78
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x1c
	.byte	0x34
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL79
	.4byte	.LVL80
	.2byte	0x2
	.byte	0x72
	.sleb128 0
	.4byte	.LVL80
	.4byte	.LVL86
	.2byte	0x7
	.byte	0x74
	.sleb128 0
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.byte	0x34
	.byte	0x1c
	.4byte	.LVL86
	.4byte	.LVL88
	.2byte	0x7
	.byte	0x74
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x34
	.byte	0x1c
	.4byte	.LVL88
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL96
	.4byte	.LVL98
	.2byte	0x7
	.byte	0x74
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x34
	.byte	0x1c
	.4byte	.LVL98
	.4byte	.LVL101
	.2byte	0x2
	.byte	0x72
	.sleb128 0
	.4byte	.LVL101
	.4byte	.LVL109
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL81
	.4byte	.LVL82
	.2byte	0x2
	.byte	0x72
	.sleb128 0
	.4byte	.LVL82
	.4byte	.LVL86
	.2byte	0x7
	.byte	0x74
	.sleb128 0
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.byte	0x33
	.byte	0x1c
	.4byte	.LVL86
	.4byte	.LVL89
	.2byte	0x7
	.byte	0x74
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x33
	.byte	0x1c
	.4byte	.LVL89
	.4byte	.LVL90
	.2byte	0x2
	.byte	0x7b
	.sleb128 0
	.4byte	.LVL90
	.4byte	.LVL91
	.2byte	0xf
	.byte	0x74
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x32
	.byte	0x1c
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.4byte	.LVL91
	.4byte	.LVL96
	.2byte	0x12
	.byte	0x74
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x32
	.byte	0x1c
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3
	.4byte	sbox
	.byte	0x22
	.4byte	.LVL96
	.4byte	.LVL99
	.2byte	0x7
	.byte	0x74
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x33
	.byte	0x1c
	.4byte	.LVL99
	.4byte	.LVL101
	.2byte	0xf
	.byte	0x74
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x33
	.byte	0x1c
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.4byte	.LVL101
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL83
	.4byte	.LVL85
	.2byte	0x2
	.byte	0x72
	.sleb128 0
	.4byte	.LVL85
	.4byte	.LVL86
	.2byte	0x7
	.byte	0x74
	.sleb128 0
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.byte	0x32
	.byte	0x1c
	.4byte	.LVL86
	.4byte	.LVL90
	.2byte	0x7
	.byte	0x74
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x32
	.byte	0x1c
	.4byte	.LVL90
	.4byte	.LVL92
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LVL92
	.4byte	.LVL96
	.2byte	0x12
	.byte	0x74
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x1c
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3
	.4byte	sbox
	.byte	0x22
	.4byte	.LVL96
	.4byte	.LVL100
	.2byte	0x7
	.byte	0x74
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x32
	.byte	0x1c
	.4byte	.LVL100
	.4byte	.LVL101
	.2byte	0xf
	.byte	0x74
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x32
	.byte	0x1c
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.4byte	.LVL101
	.4byte	.LVL104
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL84
	.4byte	.LVL87
	.2byte	0x2
	.byte	0x75
	.sleb128 0
	.4byte	.LVL87
	.4byte	.LVL92
	.2byte	0x7
	.byte	0x74
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x1c
	.4byte	.LVL92
	.4byte	.LVL94
	.2byte	0x2
	.byte	0x72
	.sleb128 0
	.4byte	.LVL94
	.4byte	.LVL96
	.2byte	0x12
	.byte	0x74
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x34
	.byte	0x1c
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3
	.4byte	sbox
	.byte	0x22
	.4byte	.LVL96
	.4byte	.LVL97
	.2byte	0x2
	.byte	0x75
	.sleb128 0
	.4byte	.LVL97
	.4byte	.LVL101
	.2byte	0x7
	.byte	0x74
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x1c
	.4byte	.LVL101
	.4byte	.LVL107
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL110
	.4byte	.LVL112
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL112
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
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL111
	.4byte	.LVL113
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL113
	.4byte	.LVL116
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL116
	.4byte	.LVL117
	.2byte	0x3
	.byte	0x72
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL117
	.4byte	.LVL120
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL123
	.4byte	.LVL128
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL128
	.4byte	.LVL132
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL133
	.4byte	.LVL134
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL123
	.4byte	.LVL129
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL129
	.4byte	.LFE14
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL123
	.4byte	.LVL124
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL124
	.4byte	.LVL130
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL130
	.4byte	.LVL131
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL131
	.4byte	.LFE14
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL135
	.4byte	.LVL138
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL138
	.4byte	.LVL145
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL145
	.4byte	.LVL146
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL146
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL138
	.4byte	.LVL139
	.2byte	0x3
	.byte	0x74
	.sleb128 240
	.4byte	.LVL139
	.4byte	.LVL142
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL142
	.4byte	.LVL143
	.2byte	0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL143
	.4byte	.LVL145
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL147
	.4byte	.LVL151
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL152
	.4byte	.LVL159
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL147
	.4byte	.LVL156
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL156
	.4byte	.LFE16
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL147
	.4byte	.LVL148
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL148
	.4byte	.LVL157
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL157
	.4byte	.LVL158
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL158
	.4byte	.LFE16
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL160
	.4byte	.LVL163
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL163
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL162
	.4byte	.LVL164
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL164
	.4byte	.LVL168
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL168
	.4byte	.LVL169
	.2byte	0x3
	.byte	0x72
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL169
	.4byte	.LFE18
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL173
	.4byte	.LVL177
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL177
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL176
	.4byte	.LVL178
	.2byte	0x2
	.byte	0x3a
	.byte	0x9f
	.4byte	.LVL178
	.4byte	.LVL182
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL182
	.4byte	.LVL183
	.2byte	0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL183
	.4byte	.LFE20
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL186
	.4byte	.LVL190
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL190
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL189
	.4byte	.LVL191
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL191
	.4byte	.LVL196
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL196
	.4byte	.LVL197
	.2byte	0x3
	.byte	0x72
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL197
	.4byte	.LFE22
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL201
	.4byte	.LVL206
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL206
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL205
	.4byte	.LVL207
	.2byte	0x2
	.byte	0x3e
	.byte	0x9f
	.4byte	.LVL207
	.4byte	.LVL212
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL212
	.4byte	.LVL213
	.2byte	0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL213
	.4byte	.LFE24
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0xb4
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
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
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
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
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
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
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LFB23
	.4byte	.LFE23
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
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF56:
	.string	"gfmul_e"
.LASF22:
	.string	"aes_context"
.LASF43:
	.string	"bluedroid_aes_encrypt_128"
.LASF20:
	.string	"length_type"
.LASF51:
	.string	"gfm2_sbox"
.LASF28:
	.string	"inv_shift_sub_rows"
.LASF10:
	.string	"sizetype"
.LASF24:
	.string	"xor_block"
.LASF16:
	.string	"UINT32"
.LASF26:
	.string	"add_round_key"
.LASF46:
	.string	"bluedroid_aes_decrypt_256"
.LASF60:
	.string	"memcpy"
.LASF4:
	.string	"short int"
.LASF34:
	.string	"update_decrypt_key_256"
.LASF13:
	.string	"uint8_t"
.LASF35:
	.string	"keylen"
.LASF59:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\bt"
.LASF33:
	.string	"update_encrypt_key_256"
.LASF18:
	.string	"uint_8t"
.LASF7:
	.string	"long long int"
.LASF45:
	.string	"bluedroid_aes_encrypt_256"
.LASF9:
	.string	"long int"
.LASF15:
	.string	"UINT8"
.LASF5:
	.string	"__uint8_t"
.LASF39:
	.string	"n_block"
.LASF41:
	.string	"aes_cbc_decrypt"
.LASF50:
	.string	"isbox"
.LASF29:
	.string	"mix_sub_columns"
.LASF40:
	.string	"bluedroid_aes_decrypt"
.LASF3:
	.string	"unsigned char"
.LASF30:
	.string	"inv_mix_sub_columns"
.LASF44:
	.string	"bluedroid_aes_decrypt_128"
.LASF2:
	.string	"signed char"
.LASF8:
	.string	"long long unsigned int"
.LASF14:
	.string	"uint32_t"
.LASF0:
	.string	"unsigned int"
.LASF25:
	.string	"copy_and_key"
.LASF48:
	.string	"bd_addr_null"
.LASF31:
	.string	"update_encrypt_key_128"
.LASF1:
	.string	"short unsigned int"
.LASF12:
	.string	"char"
.LASF17:
	.string	"_Bool"
.LASF42:
	.string	"o_key"
.LASF32:
	.string	"update_decrypt_key_128"
.LASF36:
	.string	"aes_set_key"
.LASF52:
	.string	"gfm3_sbox"
.LASF49:
	.string	"sbox"
.LASF11:
	.string	"long unsigned int"
.LASF6:
	.string	"__uint32_t"
.LASF23:
	.string	"uint_32t"
.LASF53:
	.string	"gfmul_9"
.LASF19:
	.string	"return_type"
.LASF58:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/smp/aes.c"
.LASF47:
	.string	"bd_addr_any"
.LASF38:
	.string	"aes_cbc_encrypt"
.LASF27:
	.string	"shift_sub_rows"
.LASF21:
	.string	"ksch"
.LASF57:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF37:
	.string	"bluedroid_aes_encrypt"
.LASF54:
	.string	"gfmul_b"
.LASF55:
	.string	"gfmul_d"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
