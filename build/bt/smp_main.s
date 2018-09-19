	.file	"smp_main.c"
	.text
.Ltext0:
	.section	.text.smp_set_state,"ax",@progbits
	.literal_position
	.literal .LC0, smp_cb
	.align	4
	.global	smp_set_state
	.type	smp_set_state, @function
smp_set_state:
.LFB26:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/smp/smp_main.c"
	.loc 1 689 0
.LVL0:
	entry	sp, 32
.LCFI0:
	extui	a2, a2, 0, 8
	.loc 1 690 0
	movi.n	a8, 0x10
	bltu	a8, a2, .L1
	.loc 1 694 0
	l32r	a8, .LC0
	s8i	a2, a8, 43
.L1:
	retw.n
.LFE26:
	.size	smp_set_state, .-smp_set_state
	.section	.text.smp_get_state,"ax",@progbits
	.literal_position
	.literal .LC1, smp_cb
	.align	4
	.global	smp_get_state
	.type	smp_get_state, @function
smp_get_state:
.LFB27:
	.loc 1 705 0
	entry	sp, 32
.LCFI1:
	.loc 1 707 0
	l32r	a8, .LC1
	l8ui	a2, a8, 43
	retw.n
.LFE27:
	.size	smp_get_state, .-smp_get_state
	.section	.text.smp_sm_event,"ax",@progbits
	.literal_position
	.literal .LC2, smp_all_table
	.literal .LC3, smp_entry_table
	.literal .LC4, smp_state_table
	.literal .LC5, smp_sm_action
	.align	4
	.global	smp_sm_event
	.type	smp_sm_event, @function
smp_sm_event:
.LFB28:
	.loc 1 725 0
.LVL1:
	entry	sp, 32
.LCFI2:
	extui	a3, a3, 0, 8
	.loc 1 726 0
	l8ui	a5, a2, 43
.LVL2:
	.loc 1 729 0
	l8ui	a9, a2, 57
	l32r	a8, .LC3
	addx4	a8, a9, a8
	l32i.n	a10, a8, 0
.LVL3:
	.loc 1 732 0
	movi.n	a8, 0x10
	bltu	a8, a5, .L4
	.loc 1 745 0
	movi.n	a8, 0x28
	bltu	a8, a3, .L4
	.loc 1 745 0 is_stmt 0 discriminator 1
	slli	a8, a3, 4
	add.n	a3, a8, a3
.LVL4:
	addi	a3, a3, -17
	add.n	a3, a10, a3
	add.n	a3, a3, a5
	l8ui	a8, a3, 0
.LVL5:
	beqz.n	a8, .L4
	.loc 1 746 0 is_stmt 1
	sext	a3, a8, 7
.LVL6:
	bgez	a3, .L6
	.loc 1 747 0
	extui	a8, a8, 0, 7
.LVL7:
	.loc 1 748 0
	l32r	a5, .LC2
	j	.L7
.LVL8:
.L6:
	.loc 1 750 0
	addx2	a3, a5, a9
	l32r	a5, .LC4
	addx4	a3, a3, a5
	l32i.n	a5, a3, 0
.LVL9:
.L7:
	.loc 1 761 0
	addx2	a8, a8, a8
.LVL10:
	addi	a8, a8, -3
	add.n	a5, a5, a8
.LVL11:
	l8ui	a10, a5, 2
.LVL12:
	call8	smp_set_state
.LVL13:
	.loc 1 768 0
	movi.n	a3, 0
	j	.L8
.LVL14:
.L9:
	.loc 1 769 0
	add.n	a8, a5, a3
	l8ui	a8, a8, 0
.LVL15:
	movi.n	a9, 0x3d
	beq	a8, a9, .L4
	.loc 1 770 0 discriminator 2
	l32r	a9, .LC5
	addx4	a8, a8, a9
	l32i.n	a8, a8, 0
	mov.n	a11, a4
	mov.n	a10, a2
	callx8	a8
.LVL16:
	.loc 1 768 0 discriminator 2
	addi.n	a3, a3, 1
.LVL17:
	extui	a3, a3, 0, 8
.LVL18:
.L8:
	.loc 1 768 0 is_stmt 0 discriminator 1
	bltui	a3, 2, .L9
.LVL19:
.L4:
	retw.n
.LFE28:
	.size	smp_sm_event, .-smp_sm_event
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC6:
	.string	"SMP_STATE_MAX"
	.section	.text.smp_get_state_name,"ax",@progbits
	.literal_position
	.literal .LC7, .LC6
	.literal .LC8, smp_state_name
	.align	4
	.global	smp_get_state_name
	.type	smp_get_state_name, @function
smp_get_state_name:
.LFB29:
	.loc 1 783 0 is_stmt 1
.LVL20:
	entry	sp, 32
.LCFI3:
	extui	a2, a2, 0, 8
.LVL21:
	.loc 1 786 0
	movi.n	a8, 0x10
	bltu	a8, a2, .L12
	.loc 1 787 0
	l32r	a8, .LC8
	addx4	a2, a2, a8
.LVL22:
	l32i.n	a2, a2, 0
.LVL23:
	retw.n
.LVL24:
.L12:
	.loc 1 784 0
	l32r	a2, .LC7
.LVL25:
	.loc 1 790 0
	retw.n
.LFE29:
	.size	smp_get_state_name, .-smp_get_state_name
	.section	.rodata.str1.4
	.align	4
.LC9:
	.string	"OUT_OF_RANGE_EVT"
	.section	.text.smp_get_event_name,"ax",@progbits
	.literal_position
	.literal .LC10, .LC9
	.literal .LC11, smp_event_name
	.align	4
	.global	smp_get_event_name
	.type	smp_get_event_name, @function
smp_get_event_name:
.LFB30:
	.loc 1 797 0
.LVL26:
	entry	sp, 32
.LCFI4:
	extui	a2, a2, 0, 8
.LVL27:
	.loc 1 800 0
	movi.n	a8, 0x28
	bltu	a8, a2, .L15
	.loc 1 801 0
	addi.n	a2, a2, -1
.LVL28:
	l32r	a8, .LC11
	addx4	a2, a2, a8
.LVL29:
	l32i.n	a2, a2, 0
.LVL30:
	retw.n
.LVL31:
.L15:
	.loc 1 798 0
	l32r	a2, .LC10
.LVL32:
	.loc 1 804 0
	retw.n
.LFE30:
	.size	smp_get_event_name, .-smp_get_event_name
	.comm	smp_cb,712,4
	.section	.rodata.smp_entry_table,"a",@progbits
	.align	4
	.type	smp_entry_table, @object
	.size	smp_entry_table, 8
smp_entry_table:
	.word	smp_master_entry_map
	.word	smp_slave_entry_map
	.section	.rodata.smp_state_table,"a",@progbits
	.align	4
	.type	smp_state_table, @object
	.size	smp_state_table, 136
smp_state_table:
	.word	smp_master_idle_table
	.word	smp_slave_idle_table
	.word	smp_master_wait_for_app_response_table
	.word	smp_slave_wait_for_app_response_table
	.word	0
	.word	smp_slave_sec_request_table
	.word	smp_master_pair_request_response_table
	.word	smp_slave_pair_request_response_table
	.word	smp_master_wait_for_confirm_table
	.word	smp_slave_wait_confirm_table
	.word	smp_master_confirm_table
	.word	smp_slave_confirm_table
	.word	smp_master_rand_table
	.word	smp_slave_rand_table
	.word	smp_master_public_key_exchange_table
	.word	smp_slave_public_key_exch_table
	.word	smp_master_sec_conn_phs1_start_table
	.word	smp_slave_sec_conn_phs1_start_table
	.word	smp_master_wait_commitment_table
	.word	smp_slave_wait_commitment_table
	.word	smp_master_wait_nonce_table
	.word	smp_slave_wait_nonce_table
	.word	smp_master_sec_conn_phs2_start_table
	.word	smp_slave_sec_conn_phs2_start_table
	.word	smp_master_wait_dhk_check_table
	.word	smp_slave_wait_dhk_check_table
	.word	smp_master_dhk_check_table
	.word	smp_slave_dhk_check_table
	.word	smp_master_enc_pending_table
	.word	smp_slave_enc_pending_table
	.word	smp_master_bond_pending_table
	.word	smp_slave_bond_pending_table
	.word	smp_master_create_local_sec_conn_oob_data
	.word	smp_slave_create_local_sec_conn_oob_data
	.section	.rodata.smp_slave_create_local_sec_conn_oob_data,"a",@progbits
	.align	4
	.type	smp_slave_create_local_sec_conn_oob_data, @object
	.size	smp_slave_create_local_sec_conn_oob_data, 6
smp_slave_create_local_sec_conn_oob_data:
	.byte	57
	.byte	61
	.byte	16
	.byte	58
	.byte	61
	.byte	0
	.section	.rodata.smp_slave_bond_pending_table,"a",@progbits
	.align	4
	.type	smp_slave_bond_pending_table, @object
	.size	smp_slave_bond_pending_table, 18
smp_slave_bond_pending_table:
	.byte	6
	.byte	61
	.byte	15
	.byte	17
	.byte	61
	.byte	15
	.byte	13
	.byte	61
	.byte	15
	.byte	15
	.byte	61
	.byte	15
	.byte	14
	.byte	61
	.byte	15
	.byte	16
	.byte	61
	.byte	15
	.section	.rodata.smp_slave_enc_pending_table,"a",@progbits
	.align	4
	.type	smp_slave_enc_pending_table, @object
	.size	smp_slave_enc_pending_table, 12
smp_slave_enc_pending_table:
	.byte	24
	.byte	61
	.byte	14
	.byte	8
	.byte	61
	.byte	14
	.byte	30
	.byte	61
	.byte	14
	.byte	25
	.byte	61
	.byte	15
	.section	.rodata.smp_slave_dhk_check_table,"a",@progbits
	.align	4
	.type	smp_slave_dhk_check_table, @object
	.size	smp_slave_dhk_check_table, 6
smp_slave_dhk_check_table:
	.byte	48
	.byte	61
	.byte	13
	.byte	45
	.byte	61
	.byte	14
	.section	.rodata.smp_slave_wait_dhk_check_table,"a",@progbits
	.align	4
	.type	smp_slave_wait_dhk_check_table, @object
	.size	smp_slave_wait_dhk_check_table, 6
smp_slave_wait_dhk_check_table:
	.byte	46
	.byte	47
	.byte	13
	.byte	47
	.byte	61
	.byte	13
	.section	.rodata.smp_slave_sec_conn_phs2_start_table,"a",@progbits
	.align	4
	.type	smp_slave_sec_conn_phs2_start_table, @object
	.size	smp_slave_sec_conn_phs2_start_table, 6
smp_slave_sec_conn_phs2_start_table:
	.byte	44
	.byte	51
	.byte	12
	.byte	46
	.byte	61
	.byte	11
	.section	.rodata.smp_slave_wait_nonce_table,"a",@progbits
	.align	4
	.type	smp_slave_wait_nonce_table, @object
	.size	smp_slave_wait_nonce_table, 9
smp_slave_wait_nonce_table:
	.byte	12
	.byte	43
	.byte	11
	.byte	49
	.byte	61
	.byte	10
	.byte	29
	.byte	61
	.byte	1
	.section	.rodata.smp_slave_wait_commitment_table,"a",@progbits
	.align	4
	.type	smp_slave_wait_commitment_table, @object
	.size	smp_slave_wait_commitment_table, 6
smp_slave_wait_commitment_table:
	.byte	42
	.byte	41
	.byte	10
	.byte	55
	.byte	29
	.byte	9
	.section	.rodata.smp_slave_sec_conn_phs1_start_table,"a",@progbits
	.align	4
	.type	smp_slave_sec_conn_phs1_start_table, @object
	.size	smp_slave_sec_conn_phs1_start_table, 18
smp_slave_sec_conn_phs1_start_table:
	.byte	39
	.byte	61
	.byte	8
	.byte	40
	.byte	61
	.byte	9
	.byte	29
	.byte	61
	.byte	1
	.byte	53
	.byte	61
	.byte	8
	.byte	55
	.byte	29
	.byte	8
	.byte	42
	.byte	61
	.byte	8
	.section	.rodata.smp_slave_public_key_exch_table,"a",@progbits
	.align	4
	.type	smp_slave_public_key_exch_table, @object
	.size	smp_slave_public_key_exch_table, 9
smp_slave_public_key_exch_table:
	.byte	52
	.byte	61
	.byte	7
	.byte	37
	.byte	61
	.byte	7
	.byte	38
	.byte	61
	.byte	8
	.section	.rodata.smp_slave_rand_table,"a",@progbits
	.align	4
	.type	smp_slave_rand_table, @object
	.size	smp_slave_rand_table, 6
smp_slave_rand_table:
	.byte	20
	.byte	61
	.byte	6
	.byte	5
	.byte	61
	.byte	14
	.section	.rodata.smp_slave_confirm_table,"a",@progbits
	.align	4
	.type	smp_slave_confirm_table, @object
	.size	smp_slave_confirm_table, 6
smp_slave_confirm_table:
	.byte	12
	.byte	22
	.byte	6
	.byte	19
	.byte	61
	.byte	5
	.section	.rodata.smp_slave_wait_confirm_table,"a",@progbits
	.align	4
	.type	smp_slave_wait_confirm_table, @object
	.size	smp_slave_wait_confirm_table, 6
smp_slave_wait_confirm_table:
	.byte	11
	.byte	3
	.byte	5
	.byte	19
	.byte	61
	.byte	4
	.section	.rodata.smp_slave_pair_request_response_table,"a",@progbits
	.align	4
	.type	smp_slave_pair_request_response_table, @object
	.size	smp_slave_pair_request_response_table, 15
smp_slave_pair_request_response_table:
	.byte	11
	.byte	61
	.byte	5
	.byte	29
	.byte	61
	.byte	1
	.byte	19
	.byte	61
	.byte	3
	.byte	34
	.byte	61
	.byte	7
	.byte	37
	.byte	61
	.byte	3
	.section	.rodata.smp_slave_sec_request_table,"a",@progbits
	.align	4
	.type	smp_slave_sec_request_table, @object
	.size	smp_slave_sec_request_table, 6
smp_slave_sec_request_table:
	.byte	9
	.byte	61
	.byte	3
	.byte	32
	.byte	61
	.byte	3
	.section	.rodata.smp_slave_wait_for_app_response_table,"a",@progbits
	.align	4
	.type	smp_slave_wait_for_app_response_table, @object
	.size	smp_slave_wait_for_app_response_table, 33
smp_slave_wait_for_app_response_table:
	.byte	21
	.byte	60
	.byte	3
	.byte	18
	.byte	29
	.byte	1
	.byte	19
	.byte	61
	.byte	1
	.byte	11
	.byte	61
	.byte	5
	.byte	46
	.byte	61
	.byte	1
	.byte	50
	.byte	61
	.byte	11
	.byte	53
	.byte	61
	.byte	8
	.byte	42
	.byte	61
	.byte	1
	.byte	55
	.byte	29
	.byte	1
	.byte	54
	.byte	61
	.byte	1
	.byte	2
	.byte	61
	.byte	3
	.section	.rodata.smp_slave_idle_table,"a",@progbits
	.align	4
	.type	smp_slave_idle_table, @object
	.size	smp_slave_idle_table, 9
smp_slave_idle_table:
	.byte	29
	.byte	61
	.byte	1
	.byte	9
	.byte	29
	.byte	1
	.byte	34
	.byte	61
	.byte	16
	.section	.rodata.smp_slave_entry_map,"a",@progbits
	.align	4
	.type	smp_slave_entry_map, @object
	.size	smp_slave_entry_map, 680
smp_slave_entry_map:
	.byte	2
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	4
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	2
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-127
	.byte	-127
	.byte	-127
	.byte	-127
	.byte	-127
	.byte	-127
	.byte	-127
	.byte	-127
	.byte	-127
	.byte	-127
	.byte	-127
	.byte	-127
	.byte	-127
	.byte	-127
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	3
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	5
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	4
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	5
	.byte	0
	.byte	0
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	5
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	2
	.byte	1
	.byte	2
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	9
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	5
	.byte	2
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	8
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	6
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	3
	.byte	0
	.byte	3
	.byte	2
	.byte	2
	.byte	1
	.byte	0
	.byte	4
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	2
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	3
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-125
	.byte	-125
	.byte	-125
	.byte	-125
	.byte	-125
	.byte	-125
	.byte	-125
	.byte	-125
	.byte	-125
	.byte	-125
	.byte	-125
	.byte	-125
	.byte	-125
	.byte	-125
	.byte	-125
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	3
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-126
	.byte	-126
	.byte	-126
	.byte	-126
	.byte	-126
	.byte	-126
	.byte	-126
	.byte	-126
	.byte	-126
	.byte	-126
	.byte	-126
	.byte	-126
	.byte	-126
	.byte	-126
	.byte	-126
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	4
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	4
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	3
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	3
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	7
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	10
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	11
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	3
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.rodata.smp_master_create_local_sec_conn_oob_data,"a",@progbits
	.align	4
	.type	smp_master_create_local_sec_conn_oob_data, @object
	.size	smp_master_create_local_sec_conn_oob_data, 6
smp_master_create_local_sec_conn_oob_data:
	.byte	57
	.byte	61
	.byte	16
	.byte	58
	.byte	61
	.byte	0
	.section	.rodata.smp_master_bond_pending_table,"a",@progbits
	.align	4
	.type	smp_master_bond_pending_table, @object
	.size	smp_master_bond_pending_table, 18
smp_master_bond_pending_table:
	.byte	13
	.byte	61
	.byte	15
	.byte	15
	.byte	61
	.byte	15
	.byte	17
	.byte	61
	.byte	15
	.byte	14
	.byte	61
	.byte	15
	.byte	16
	.byte	61
	.byte	15
	.byte	6
	.byte	61
	.byte	15
	.section	.rodata.smp_master_enc_pending_table,"a",@progbits
	.align	4
	.type	smp_master_enc_pending_table, @object
	.size	smp_master_enc_pending_table, 9
smp_master_enc_pending_table:
	.byte	26
	.byte	61
	.byte	14
	.byte	30
	.byte	61
	.byte	14
	.byte	25
	.byte	61
	.byte	15
	.section	.rodata.smp_master_dhk_check_table,"a",@progbits
	.align	4
	.type	smp_master_dhk_check_table, @object
	.size	smp_master_dhk_check_table, 6
smp_master_dhk_check_table:
	.byte	48
	.byte	61
	.byte	13
	.byte	24
	.byte	61
	.byte	14
	.section	.rodata.smp_master_wait_dhk_check_table,"a",@progbits
	.align	4
	.type	smp_master_wait_dhk_check_table, @object
	.size	smp_master_wait_dhk_check_table, 3
smp_master_wait_dhk_check_table:
	.byte	46
	.byte	47
	.byte	13
	.section	.rodata.smp_master_sec_conn_phs2_start_table,"a",@progbits
	.align	4
	.type	smp_master_sec_conn_phs2_start_table, @object
	.size	smp_master_sec_conn_phs2_start_table, 3
smp_master_sec_conn_phs2_start_table:
	.byte	44
	.byte	45
	.byte	12
	.section	.rodata.smp_master_wait_nonce_table,"a",@progbits
	.align	4
	.type	smp_master_wait_nonce_table, @object
	.size	smp_master_wait_nonce_table, 9
smp_master_wait_nonce_table:
	.byte	12
	.byte	43
	.byte	11
	.byte	49
	.byte	61
	.byte	10
	.byte	29
	.byte	61
	.byte	1
	.section	.rodata.smp_master_wait_commitment_table,"a",@progbits
	.align	4
	.type	smp_master_wait_commitment_table, @object
	.size	smp_master_wait_commitment_table, 6
smp_master_wait_commitment_table:
	.byte	42
	.byte	5
	.byte	10
	.byte	55
	.byte	29
	.byte	9
	.section	.rodata.smp_master_sec_conn_phs1_start_table,"a",@progbits
	.align	4
	.type	smp_master_sec_conn_phs1_start_table, @object
	.size	smp_master_sec_conn_phs1_start_table, 18
smp_master_sec_conn_phs1_start_table:
	.byte	39
	.byte	61
	.byte	8
	.byte	40
	.byte	61
	.byte	9
	.byte	29
	.byte	61
	.byte	1
	.byte	53
	.byte	61
	.byte	8
	.byte	55
	.byte	29
	.byte	8
	.byte	42
	.byte	61
	.byte	8
	.section	.rodata.smp_master_public_key_exchange_table,"a",@progbits
	.align	4
	.type	smp_master_public_key_exchange_table, @object
	.size	smp_master_public_key_exchange_table, 9
smp_master_public_key_exchange_table:
	.byte	36
	.byte	61
	.byte	7
	.byte	37
	.byte	61
	.byte	7
	.byte	38
	.byte	61
	.byte	8
	.section	.rodata.smp_master_rand_table,"a",@progbits
	.align	4
	.type	smp_master_rand_table, @object
	.size	smp_master_rand_table, 9
smp_master_rand_table:
	.byte	12
	.byte	22
	.byte	6
	.byte	20
	.byte	61
	.byte	6
	.byte	24
	.byte	61
	.byte	14
	.section	.rodata.smp_master_confirm_table,"a",@progbits
	.align	4
	.type	smp_master_confirm_table, @object
	.size	smp_master_confirm_table, 3
smp_master_confirm_table:
	.byte	11
	.byte	5
	.byte	6
	.section	.rodata.smp_master_wait_for_confirm_table,"a",@progbits
	.align	4
	.type	smp_master_wait_for_confirm_table, @object
	.size	smp_master_wait_for_confirm_table, 3
smp_master_wait_for_confirm_table:
	.byte	3
	.byte	61
	.byte	5
	.section	.rodata.smp_master_pair_request_response_table,"a",@progbits
	.align	4
	.type	smp_master_pair_request_response_table, @object
	.size	smp_master_pair_request_response_table, 12
smp_master_pair_request_response_table:
	.byte	9
	.byte	61
	.byte	3
	.byte	29
	.byte	61
	.byte	1
	.byte	23
	.byte	61
	.byte	4
	.byte	34
	.byte	61
	.byte	7
	.section	.rodata.smp_master_wait_for_app_response_table,"a",@progbits
	.align	4
	.type	smp_master_wait_for_app_response_table, @object
	.size	smp_master_wait_for_app_response_table, 30
smp_master_wait_for_app_response_table:
	.byte	18
	.byte	29
	.byte	1
	.byte	1
	.byte	60
	.byte	3
	.byte	23
	.byte	61
	.byte	4
	.byte	26
	.byte	60
	.byte	14
	.byte	33
	.byte	61
	.byte	0
	.byte	50
	.byte	61
	.byte	11
	.byte	53
	.byte	61
	.byte	8
	.byte	55
	.byte	29
	.byte	1
	.byte	54
	.byte	61
	.byte	1
	.byte	35
	.byte	61
	.byte	7
	.section	.rodata.smp_master_idle_table,"a",@progbits
	.align	4
	.type	smp_master_idle_table, @object
	.size	smp_master_idle_table, 15
smp_master_idle_table:
	.byte	29
	.byte	61
	.byte	1
	.byte	0
	.byte	29
	.byte	1
	.byte	59
	.byte	61
	.byte	0
	.byte	27
	.byte	61
	.byte	0
	.byte	34
	.byte	61
	.byte	16
	.section	.rodata.smp_all_table,"a",@progbits
	.align	4
	.type	smp_all_table, @object
	.size	smp_all_table, 9
smp_all_table:
	.byte	10
	.byte	27
	.byte	0
	.byte	4
	.byte	27
	.byte	0
	.byte	31
	.byte	61
	.byte	0
	.section	.rodata.smp_master_entry_map,"a",@progbits
	.align	4
	.type	smp_master_entry_map, @object
	.size	smp_master_entry_map, 680
smp_master_entry_map:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-127
	.byte	0
	.byte	-127
	.byte	-127
	.byte	-127
	.byte	-127
	.byte	-127
	.byte	-127
	.byte	-127
	.byte	-127
	.byte	-127
	.byte	-127
	.byte	-127
	.byte	0
	.byte	-127
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	4
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	5
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	3
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	8
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	5
	.byte	2
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	6
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	3
	.byte	0
	.byte	3
	.byte	1
	.byte	0
	.byte	2
	.byte	0
	.byte	4
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	3
	.byte	-125
	.byte	0
	.byte	-125
	.byte	-125
	.byte	-125
	.byte	-125
	.byte	-125
	.byte	-125
	.byte	-125
	.byte	-125
	.byte	-125
	.byte	-125
	.byte	-125
	.byte	-125
	.byte	-125
	.byte	0
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	3
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	4
	.byte	-126
	.byte	0
	.byte	-126
	.byte	-126
	.byte	-126
	.byte	-126
	.byte	-126
	.byte	-126
	.byte	-126
	.byte	-126
	.byte	-126
	.byte	-126
	.byte	-126
	.byte	-126
	.byte	-126
	.byte	0
	.byte	0
	.byte	4
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	3
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	3
	.byte	0
	.byte	0
	.byte	0
	.byte	5
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	3
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	4
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	3
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	3
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	7
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	9
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	10
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	5
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.rodata.smp_sm_action,"a",@progbits
	.align	4
	.type	smp_sm_action, @object
	.size	smp_sm_action, 244
smp_sm_action:
	.word	smp_proc_sec_req
	.word	smp_send_pair_req
	.word	smp_send_pair_rsp
	.word	smp_send_confirm
	.word	smp_send_pair_fail
	.word	smp_send_rand
	.word	smp_send_enc_info
	.word	smp_send_id_info
	.word	smp_send_ltk_reply
	.word	smp_proc_pair_cmd
	.word	smp_proc_pair_fail
	.word	smp_proc_confirm
	.word	smp_proc_rand
	.word	smp_proc_enc_info
	.word	smp_proc_master_id
	.word	smp_proc_id_info
	.word	smp_proc_id_addr
	.word	smp_proc_srk_info
	.word	smp_proc_sec_grant
	.word	smp_proc_sl_key
	.word	smp_proc_compare
	.word	smp_process_io_response
	.word	smp_generate_compare
	.word	smp_generate_srand_mrand_confirm
	.word	smp_generate_stk
	.word	smp_key_distribution
	.word	smp_start_enc
	.word	smp_pairing_cmpl
	.word	smp_decide_association_model
	.word	smp_send_app_cback
	.word	smp_check_auth_req
	.word	smp_pair_terminate
	.word	smp_enc_cmpl
	.word	smp_proc_discard
	.word	smp_create_private_key
	.word	smp_use_oob_private_key
	.word	smp_send_pair_public_key
	.word	smp_process_pairing_public_key
	.word	smp_both_have_public_keys
	.word	smp_start_secure_connection_phase1
	.word	smp_process_local_nonce
	.word	smp_send_commitment
	.word	smp_process_pairing_commitment
	.word	smp_process_peer_nonce
	.word	smp_calculate_local_dhkey_check
	.word	smp_send_dhkey_check
	.word	smp_process_dhkey_check
	.word	smp_calculate_peer_dhkey_check
	.word	smp_match_dhkey_checks
	.word	smp_calculate_numeric_comparison_display_number
	.word	smp_move_to_secure_connections_phase2
	.word	smp_phase_2_dhkey_checks_are_present
	.word	smp_wait_for_both_public_keys
	.word	smp_start_passkey_verification
	.word	smp_send_keypress_notification
	.word	smp_process_keypress_notification
	.word	smp_process_secure_connection_oob_data
	.word	smp_set_local_oob_keys
	.word	smp_set_local_oob_random_commitment
	.word	smp_idle_terminate
	.word	smp_fast_conn_param
	.global	smp_event_name
	.section	.rodata.str1.4
	.align	4
.LC12:
	.string	"PAIRING_REQ_EVT"
	.align	4
.LC13:
	.string	"PAIRING_RSP_EVT"
	.align	4
.LC14:
	.string	"CONFIRM_EVT"
	.align	4
.LC15:
	.string	"RAND_EVT"
	.align	4
.LC16:
	.string	"PAIRING_FAILED_EVT"
	.align	4
.LC17:
	.string	"ENC_INFO_EVT"
	.align	4
.LC18:
	.string	"MASTER_ID_EVT"
	.align	4
.LC19:
	.string	"ID_INFO_EVT"
	.align	4
.LC20:
	.string	"ID_ADDR_EVT"
	.align	4
.LC21:
	.string	"SIGN_INFO_EVT"
	.align	4
.LC22:
	.string	"SECURITY_REQ_EVT"
	.align	4
.LC23:
	.string	"PAIR_PUBLIC_KEY_EVT"
	.align	4
.LC24:
	.string	"PAIR_DHKEY_CHECK_EVT"
	.align	4
.LC25:
	.string	"PAIR_KEYPRESS_NOTIFICATION_EVT"
	.align	4
.LC26:
	.string	"PAIR_COMMITMENT_EVT"
	.align	4
.LC27:
	.string	"KEY_READY_EVT"
	.align	4
.LC28:
	.string	"ENCRYPTED_EVT"
	.align	4
.LC29:
	.string	"L2CAP_CONN_EVT"
	.align	4
.LC30:
	.string	"L2CAP_DISCONN_EVT"
	.align	4
.LC31:
	.string	"API_IO_RSP_EVT"
	.align	4
.LC32:
	.string	"API_SEC_GRANT_EVT"
	.align	4
.LC33:
	.string	"TK_REQ_EVT"
	.align	4
.LC34:
	.string	"AUTH_CMPL_EVT"
	.align	4
.LC35:
	.string	"ENC_REQ_EVT"
	.align	4
.LC36:
	.string	"BOND_REQ_EVT"
	.align	4
.LC37:
	.string	"DISCARD_SEC_REQ_EVT"
	.align	4
.LC38:
	.string	"PUBLIC_KEY_EXCHANGE_REQ_EVT"
	.align	4
.LC39:
	.string	"LOCAL_PUBLIC_KEY_CRTD_EVT"
	.align	4
.LC40:
	.string	"BOTH_PUBLIC_KEYS_RCVD_EVT"
	.align	4
.LC41:
	.string	"SEC_CONN_DHKEY_COMPLETE_EVT"
	.align	4
.LC42:
	.string	"HAVE_LOCAL_NONCE_EVT"
	.align	4
.LC43:
	.string	"SEC_CONN_PHASE1_CMPLT_EVT"
	.align	4
.LC44:
	.string	"SEC_CONN_CALC_NC_EVT"
	.align	4
.LC45:
	.string	"SEC_CONN_DISPLAY_NC_EVT"
	.align	4
.LC46:
	.string	"SEC_CONN_OK_EVT"
	.align	4
.LC47:
	.string	"SEC_CONN_2_DHCK_CHECKS_PRESENT_EVT"
	.align	4
.LC48:
	.string	"SEC_CONN_KEY_READY_EVT"
	.align	4
.LC49:
	.string	"KEYPRESS_NOTIFICATION_EVT"
	.align	4
.LC50:
	.string	"SEC_CONN_OOB_DATA_EVT"
	.align	4
.LC51:
	.string	"CREATE_LOCAL_SEC_CONN_OOB_DATA_EVT"
	.section	.rodata.smp_event_name,"a",@progbits
	.align	4
	.type	smp_event_name, @object
	.size	smp_event_name, 164
smp_event_name:
	.word	.LC12
	.word	.LC13
	.word	.LC14
	.word	.LC15
	.word	.LC16
	.word	.LC17
	.word	.LC18
	.word	.LC19
	.word	.LC20
	.word	.LC21
	.word	.LC22
	.word	.LC23
	.word	.LC24
	.word	.LC25
	.word	.LC26
	.word	.LC27
	.word	.LC28
	.word	.LC29
	.word	.LC30
	.word	.LC31
	.word	.LC32
	.word	.LC33
	.word	.LC34
	.word	.LC35
	.word	.LC36
	.word	.LC37
	.word	.LC38
	.word	.LC39
	.word	.LC40
	.word	.LC41
	.word	.LC42
	.word	.LC43
	.word	.LC44
	.word	.LC45
	.word	.LC46
	.word	.LC47
	.word	.LC48
	.word	.LC49
	.word	.LC50
	.word	.LC51
	.word	.LC9
	.global	smp_state_name
	.section	.rodata.str1.4
	.align	4
.LC52:
	.string	"SMP_STATE_IDLE"
	.align	4
.LC53:
	.string	"SMP_STATE_WAIT_APP_RSP"
	.align	4
.LC54:
	.string	"SMP_STATE_SEC_REQ_PENDING"
	.align	4
.LC55:
	.string	"SMP_STATE_PAIR_REQ_RSP"
	.align	4
.LC56:
	.string	"SMP_STATE_WAIT_CONFIRM"
	.align	4
.LC57:
	.string	"SMP_STATE_CONFIRM"
	.align	4
.LC58:
	.string	"SMP_STATE_RAND"
	.align	4
.LC59:
	.string	"SMP_STATE_PUBLIC_KEY_EXCH"
	.align	4
.LC60:
	.string	"SMP_STATE_SEC_CONN_PHS1_START"
	.align	4
.LC61:
	.string	"SMP_STATE_WAIT_COMMITMENT"
	.align	4
.LC62:
	.string	"SMP_STATE_WAIT_NONCE"
	.align	4
.LC63:
	.string	"SMP_STATE_SEC_CONN_PHS2_START"
	.align	4
.LC64:
	.string	"SMP_STATE_WAIT_DHK_CHECK"
	.align	4
.LC65:
	.string	"SMP_STATE_DHK_CHECK"
	.align	4
.LC66:
	.string	"SMP_STATE_ENCRYPTION_PENDING"
	.align	4
.LC67:
	.string	"SMP_STATE_BOND_PENDING"
	.align	4
.LC68:
	.string	"SMP_STATE_CREATE_LOCAL_SEC_CONN_OOB_DATA"
	.section	.rodata.smp_state_name,"a",@progbits
	.align	4
	.type	smp_state_name, @object
	.size	smp_state_name, 72
smp_state_name:
	.word	.LC52
	.word	.LC53
	.word	.LC54
	.word	.LC55
	.word	.LC56
	.word	.LC57
	.word	.LC58
	.word	.LC59
	.word	.LC60
	.word	.LC61
	.word	.LC62
	.word	.LC63
	.word	.LC64
	.word	.LC65
	.word	.LC66
	.word	.LC67
	.word	.LC68
	.word	.LC6
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
	.uleb128 0x20
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
	.uleb128 0x20
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
	.uleb128 0x20
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
	.uleb128 0x20
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
	.uleb128 0x20
	.align	4
.LEFDE8:
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/bt_types.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/common/include/common/bt_defs.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/smp_api.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/log/include/esp_log.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
	.file 9 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/smp/include/smp_int.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x13d1
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF352
	.byte	0xc
	.4byte	.LASF353
	.4byte	.LASF354
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
	.byte	0x15
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x21
	.4byte	0x45
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x3
	.byte	0x2c
	.4byte	0x57
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0x2d
	.4byte	0x69
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x4
	.byte	0x21
	.4byte	0x89
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x4
	.byte	0x22
	.4byte	0x94
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x4
	.byte	0x23
	.4byte	0xaa
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x4
	.byte	0x28
	.4byte	0x9f
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x4
	.byte	0x29
	.4byte	0xec
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF20
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF21
	.uleb128 0x5
	.4byte	.LASF22
	.byte	0x4
	.2byte	0x132
	.4byte	0x106
	.uleb128 0x6
	.4byte	0xb5
	.4byte	0x116
	.uleb128 0x7
	.4byte	0xf3
	.byte	0x5
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0xb5
	.uleb128 0x5
	.4byte	.LASF23
	.byte	0x4
	.2byte	0x13b
	.4byte	0x128
	.uleb128 0x6
	.4byte	0xb5
	.4byte	0x138
	.uleb128 0x7
	.4byte	0xf3
	.byte	0x7
	.byte	0
	.uleb128 0x6
	.4byte	0xb5
	.4byte	0x148
	.uleb128 0x7
	.4byte	0xf3
	.byte	0xf
	.byte	0
	.uleb128 0x6
	.4byte	0xb5
	.4byte	0x158
	.uleb128 0x7
	.4byte	0xf3
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.4byte	.LASF24
	.byte	0x4
	.2byte	0x144
	.4byte	0x138
	.uleb128 0x5
	.4byte	.LASF25
	.byte	0x4
	.2byte	0x14b
	.4byte	0x148
	.uleb128 0x6
	.4byte	0xb5
	.4byte	0x180
	.uleb128 0x7
	.4byte	0xf3
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.4byte	.LASF26
	.byte	0x4
	.2byte	0x1f8
	.4byte	0xb5
	.uleb128 0x9
	.byte	0x7
	.byte	0x4
	.2byte	0x202
	.4byte	0x1b0
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0x4
	.2byte	0x203
	.4byte	0x180
	.byte	0
	.uleb128 0xb
	.string	"bda"
	.byte	0x4
	.2byte	0x204
	.4byte	0xfa
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.4byte	.LASF28
	.byte	0x4
	.2byte	0x205
	.4byte	0x18c
	.uleb128 0x8
	.byte	0x4
	.4byte	0x1c9
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF29
	.uleb128 0xc
	.4byte	0x1c2
	.uleb128 0xd
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF30
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF31
	.uleb128 0xe
	.4byte	0x1e9
	.uleb128 0xf
	.4byte	0x1ce
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x74
	.byte	0x7
	.byte	0x1f
	.4byte	0x21a
	.uleb128 0x11
	.4byte	.LASF32
	.byte	0
	.uleb128 0x11
	.4byte	.LASF33
	.byte	0x1
	.uleb128 0x11
	.4byte	.LASF34
	.byte	0x2
	.uleb128 0x11
	.4byte	.LASF35
	.byte	0x3
	.uleb128 0x11
	.4byte	.LASF36
	.byte	0x4
	.uleb128 0x11
	.4byte	.LASF37
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.4byte	.LASF38
	.byte	0x5
	.byte	0x20
	.4byte	0x1de
	.uleb128 0x12
	.4byte	.LASF355
	.byte	0x20
	.byte	0x5
	.byte	0x21
	.4byte	0x29e
	.uleb128 0x13
	.4byte	.LASF39
	.byte	0x5
	.byte	0x22
	.4byte	0x29e
	.byte	0
	.uleb128 0x13
	.4byte	.LASF40
	.byte	0x5
	.byte	0x23
	.4byte	0x29e
	.byte	0x4
	.uleb128 0x13
	.4byte	.LASF41
	.byte	0x5
	.byte	0x24
	.4byte	0x2a4
	.byte	0x8
	.uleb128 0x13
	.4byte	.LASF42
	.byte	0x5
	.byte	0x25
	.4byte	0xd6
	.byte	0xc
	.uleb128 0x13
	.4byte	.LASF43
	.byte	0x5
	.byte	0x26
	.4byte	0xd6
	.byte	0x10
	.uleb128 0x13
	.4byte	.LASF44
	.byte	0x5
	.byte	0x27
	.4byte	0xcb
	.byte	0x14
	.uleb128 0x13
	.4byte	.LASF45
	.byte	0x5
	.byte	0x28
	.4byte	0xcb
	.byte	0x18
	.uleb128 0x13
	.4byte	.LASF46
	.byte	0x5
	.byte	0x29
	.4byte	0xc0
	.byte	0x1c
	.uleb128 0x13
	.4byte	.LASF47
	.byte	0x5
	.byte	0x2a
	.4byte	0xb5
	.byte	0x1e
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x225
	.uleb128 0x8
	.byte	0x4
	.4byte	0x21a
	.uleb128 0x3
	.4byte	.LASF48
	.byte	0x5
	.byte	0x2b
	.4byte	0x225
	.uleb128 0x3
	.4byte	.LASF49
	.byte	0x6
	.byte	0x43
	.4byte	0xb5
	.uleb128 0x3
	.4byte	.LASF50
	.byte	0x6
	.byte	0x6b
	.4byte	0xb5
	.uleb128 0x3
	.4byte	.LASF51
	.byte	0x6
	.byte	0x75
	.4byte	0xb5
	.uleb128 0x3
	.4byte	.LASF52
	.byte	0x6
	.byte	0x81
	.4byte	0xb5
	.uleb128 0x3
	.4byte	.LASF53
	.byte	0x6
	.byte	0x8a
	.4byte	0xb5
	.uleb128 0x3
	.4byte	.LASF54
	.byte	0x6
	.byte	0xb3
	.4byte	0xb5
	.uleb128 0x3
	.4byte	.LASF55
	.byte	0x6
	.byte	0xb8
	.4byte	0xb5
	.uleb128 0x3
	.4byte	.LASF56
	.byte	0x6
	.byte	0xc3
	.4byte	0xb5
	.uleb128 0x3
	.4byte	.LASF57
	.byte	0x6
	.byte	0xd2
	.4byte	0xb5
	.uleb128 0x14
	.byte	0x6
	.byte	0x6
	.byte	0xd5
	.4byte	0x369
	.uleb128 0x13
	.4byte	.LASF58
	.byte	0x6
	.byte	0xd6
	.4byte	0x2cb
	.byte	0
	.uleb128 0x13
	.4byte	.LASF59
	.byte	0x6
	.byte	0xd7
	.4byte	0x2d6
	.byte	0x1
	.uleb128 0x13
	.4byte	.LASF60
	.byte	0x6
	.byte	0xd8
	.4byte	0x2ec
	.byte	0x2
	.uleb128 0x13
	.4byte	.LASF61
	.byte	0x6
	.byte	0xd9
	.4byte	0xb5
	.byte	0x3
	.uleb128 0x13
	.4byte	.LASF62
	.byte	0x6
	.byte	0xda
	.4byte	0x302
	.byte	0x4
	.uleb128 0x13
	.4byte	.LASF63
	.byte	0x6
	.byte	0xdb
	.4byte	0x302
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.4byte	.LASF64
	.byte	0x6
	.byte	0xdc
	.4byte	0x318
	.uleb128 0x14
	.byte	0x4
	.byte	0x6
	.byte	0xde
	.4byte	0x3ad
	.uleb128 0x13
	.4byte	.LASF65
	.byte	0x6
	.byte	0xdf
	.4byte	0x2c0
	.byte	0
	.uleb128 0x13
	.4byte	.LASF66
	.byte	0x6
	.byte	0xe0
	.4byte	0x2f7
	.byte	0x1
	.uleb128 0x13
	.4byte	.LASF67
	.byte	0x6
	.byte	0xe1
	.4byte	0xe1
	.byte	0x2
	.uleb128 0x13
	.4byte	.LASF68
	.byte	0x6
	.byte	0xe2
	.4byte	0xe1
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF69
	.byte	0x6
	.byte	0xe3
	.4byte	0x374
	.uleb128 0x14
	.byte	0x40
	.byte	0x6
	.byte	0xe5
	.4byte	0x3d5
	.uleb128 0x15
	.string	"x"
	.byte	0x6
	.byte	0xe6
	.4byte	0x164
	.byte	0
	.uleb128 0x15
	.string	"y"
	.byte	0x6
	.byte	0xe7
	.4byte	0x164
	.byte	0x20
	.byte	0
	.uleb128 0x3
	.4byte	.LASF70
	.byte	0x6
	.byte	0xe8
	.4byte	0x3b8
	.uleb128 0x14
	.byte	0x88
	.byte	0x6
	.byte	0xeb
	.4byte	0x431
	.uleb128 0x13
	.4byte	.LASF71
	.byte	0x6
	.byte	0xec
	.4byte	0xe1
	.byte	0
	.uleb128 0x13
	.4byte	.LASF72
	.byte	0x6
	.byte	0xed
	.4byte	0x158
	.byte	0x1
	.uleb128 0x13
	.4byte	.LASF73
	.byte	0x6
	.byte	0xee
	.4byte	0x158
	.byte	0x11
	.uleb128 0x13
	.4byte	.LASF74
	.byte	0x6
	.byte	0xf0
	.4byte	0x1b0
	.byte	0x21
	.uleb128 0x13
	.4byte	.LASF75
	.byte	0x6
	.byte	0xf1
	.4byte	0x164
	.byte	0x28
	.uleb128 0x13
	.4byte	.LASF76
	.byte	0x6
	.byte	0xf5
	.4byte	0x3d5
	.byte	0x48
	.byte	0
	.uleb128 0x3
	.4byte	.LASF77
	.byte	0x6
	.byte	0xf6
	.4byte	0x3e0
	.uleb128 0x14
	.byte	0x28
	.byte	0x6
	.byte	0xf9
	.4byte	0x475
	.uleb128 0x13
	.4byte	.LASF71
	.byte	0x6
	.byte	0xfa
	.4byte	0xe1
	.byte	0
	.uleb128 0x13
	.4byte	.LASF72
	.byte	0x6
	.byte	0xfb
	.4byte	0x158
	.byte	0x1
	.uleb128 0x13
	.4byte	.LASF73
	.byte	0x6
	.byte	0xfc
	.4byte	0x158
	.byte	0x11
	.uleb128 0x13
	.4byte	.LASF78
	.byte	0x6
	.byte	0xfd
	.4byte	0x1b0
	.byte	0x21
	.byte	0
	.uleb128 0x3
	.4byte	.LASF79
	.byte	0x6
	.byte	0xfe
	.4byte	0x43c
	.uleb128 0x9
	.byte	0xb0
	.byte	0x6
	.2byte	0x100
	.4byte	0x4a4
	.uleb128 0xa
	.4byte	.LASF80
	.byte	0x6
	.2byte	0x101
	.4byte	0x431
	.byte	0
	.uleb128 0xa
	.4byte	.LASF81
	.byte	0x6
	.2byte	0x102
	.4byte	0x475
	.byte	0x88
	.byte	0
	.uleb128 0x5
	.4byte	.LASF82
	.byte	0x6
	.2byte	0x103
	.4byte	0x480
	.uleb128 0x16
	.byte	0x88
	.byte	0x6
	.2byte	0x106
	.4byte	0x4f6
	.uleb128 0x17
	.4byte	.LASF83
	.byte	0x6
	.2byte	0x107
	.4byte	0xcb
	.uleb128 0x17
	.4byte	.LASF84
	.byte	0x6
	.2byte	0x108
	.4byte	0x369
	.uleb128 0x17
	.4byte	.LASF85
	.byte	0x6
	.2byte	0x109
	.4byte	0x3ad
	.uleb128 0x17
	.4byte	.LASF86
	.byte	0x6
	.2byte	0x10a
	.4byte	0x2e1
	.uleb128 0x17
	.4byte	.LASF80
	.byte	0x6
	.2byte	0x10b
	.4byte	0x431
	.byte	0
	.uleb128 0x5
	.4byte	.LASF87
	.byte	0x6
	.2byte	0x10c
	.4byte	0x4b0
	.uleb128 0x5
	.4byte	.LASF88
	.byte	0x6
	.2byte	0x118
	.4byte	0x50e
	.uleb128 0x18
	.4byte	0xb5
	.4byte	0x527
	.uleb128 0xf
	.4byte	0x2b5
	.uleb128 0xf
	.4byte	0x116
	.uleb128 0xf
	.4byte	0x527
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x4f6
	.uleb128 0x19
	.byte	0x4
	.4byte	0x74
	.byte	0x8
	.2byte	0x1c0
	.4byte	0x655
	.uleb128 0x11
	.4byte	.LASF89
	.byte	0
	.uleb128 0x11
	.4byte	.LASF90
	.byte	0x1
	.uleb128 0x11
	.4byte	.LASF91
	.byte	0x2
	.uleb128 0x11
	.4byte	.LASF92
	.byte	0x3
	.uleb128 0x11
	.4byte	.LASF93
	.byte	0x4
	.uleb128 0x11
	.4byte	.LASF94
	.byte	0x5
	.uleb128 0x11
	.4byte	.LASF95
	.byte	0x6
	.uleb128 0x11
	.4byte	.LASF96
	.byte	0x7
	.uleb128 0x11
	.4byte	.LASF97
	.byte	0x8
	.uleb128 0x11
	.4byte	.LASF98
	.byte	0x9
	.uleb128 0x11
	.4byte	.LASF99
	.byte	0xa
	.uleb128 0x11
	.4byte	.LASF100
	.byte	0xb
	.uleb128 0x11
	.4byte	.LASF101
	.byte	0xc
	.uleb128 0x11
	.4byte	.LASF102
	.byte	0xd
	.uleb128 0x11
	.4byte	.LASF103
	.byte	0xe
	.uleb128 0x11
	.4byte	.LASF104
	.byte	0xf
	.uleb128 0x11
	.4byte	.LASF105
	.byte	0x10
	.uleb128 0x11
	.4byte	.LASF106
	.byte	0x11
	.uleb128 0x11
	.4byte	.LASF107
	.byte	0x12
	.uleb128 0x11
	.4byte	.LASF108
	.byte	0x13
	.uleb128 0x11
	.4byte	.LASF109
	.byte	0x14
	.uleb128 0x11
	.4byte	.LASF110
	.byte	0x15
	.uleb128 0x11
	.4byte	.LASF111
	.byte	0x16
	.uleb128 0x11
	.4byte	.LASF112
	.byte	0x17
	.uleb128 0x11
	.4byte	.LASF113
	.byte	0x18
	.uleb128 0x11
	.4byte	.LASF114
	.byte	0x19
	.uleb128 0x11
	.4byte	.LASF115
	.byte	0x1a
	.uleb128 0x11
	.4byte	.LASF116
	.byte	0x1b
	.uleb128 0x11
	.4byte	.LASF117
	.byte	0x1c
	.uleb128 0x11
	.4byte	.LASF118
	.byte	0x1d
	.uleb128 0x11
	.4byte	.LASF119
	.byte	0x1e
	.uleb128 0x11
	.4byte	.LASF120
	.byte	0x1f
	.uleb128 0x11
	.4byte	.LASF121
	.byte	0x20
	.uleb128 0x11
	.4byte	.LASF122
	.byte	0x21
	.uleb128 0x11
	.4byte	.LASF123
	.byte	0x22
	.uleb128 0x11
	.4byte	.LASF124
	.byte	0x23
	.uleb128 0x11
	.4byte	.LASF125
	.byte	0x24
	.uleb128 0x11
	.4byte	.LASF126
	.byte	0x25
	.uleb128 0x11
	.4byte	.LASF127
	.byte	0x26
	.uleb128 0x11
	.4byte	.LASF128
	.byte	0x27
	.uleb128 0x11
	.4byte	.LASF129
	.byte	0x28
	.uleb128 0x11
	.4byte	.LASF130
	.byte	0x29
	.uleb128 0x11
	.4byte	.LASF131
	.byte	0x2a
	.uleb128 0x11
	.4byte	.LASF132
	.byte	0x2b
	.uleb128 0x11
	.4byte	.LASF133
	.byte	0x2c
	.uleb128 0x11
	.4byte	.LASF134
	.byte	0x2d
	.uleb128 0x11
	.4byte	.LASF135
	.byte	0x2e
	.byte	0
	.uleb128 0x19
	.byte	0x4
	.4byte	0x74
	.byte	0x8
	.2byte	0x6ea
	.4byte	0x68d
	.uleb128 0x11
	.4byte	.LASF136
	.byte	0
	.uleb128 0x11
	.4byte	.LASF137
	.byte	0x1
	.uleb128 0x11
	.4byte	.LASF138
	.byte	0x2
	.uleb128 0x11
	.4byte	.LASF139
	.byte	0x3
	.uleb128 0x11
	.4byte	.LASF140
	.byte	0x4
	.uleb128 0x11
	.4byte	.LASF141
	.byte	0x5
	.uleb128 0x11
	.4byte	.LASF142
	.byte	0x6
	.byte	0
	.uleb128 0x6
	.4byte	0xb5
	.4byte	0x69d
	.uleb128 0x7
	.4byte	0xf3
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.4byte	.LASF143
	.byte	0x9
	.byte	0x2e
	.4byte	0xb5
	.uleb128 0x3
	.4byte	.LASF144
	.byte	0x9
	.byte	0x82
	.4byte	0xb5
	.uleb128 0x10
	.byte	0x4
	.4byte	0x74
	.byte	0x9
	.byte	0x88
	.4byte	0x72c
	.uleb128 0x11
	.4byte	.LASF145
	.byte	0
	.uleb128 0x11
	.4byte	.LASF146
	.byte	0x1
	.uleb128 0x11
	.4byte	.LASF147
	.byte	0x2
	.uleb128 0x11
	.4byte	.LASF148
	.byte	0x3
	.uleb128 0x11
	.4byte	.LASF149
	.byte	0x4
	.uleb128 0x11
	.4byte	.LASF150
	.byte	0x5
	.uleb128 0x11
	.4byte	.LASF151
	.byte	0x6
	.uleb128 0x11
	.4byte	.LASF152
	.byte	0x7
	.uleb128 0x11
	.4byte	.LASF153
	.byte	0x8
	.uleb128 0x11
	.4byte	.LASF154
	.byte	0x9
	.uleb128 0x11
	.4byte	.LASF155
	.byte	0xa
	.uleb128 0x11
	.4byte	.LASF156
	.byte	0xb
	.uleb128 0x11
	.4byte	.LASF157
	.byte	0xc
	.uleb128 0x11
	.4byte	.LASF158
	.byte	0xd
	.uleb128 0x11
	.4byte	.LASF159
	.byte	0xe
	.uleb128 0x11
	.4byte	.LASF160
	.byte	0xf
	.uleb128 0x11
	.4byte	.LASF161
	.byte	0x10
	.uleb128 0x11
	.4byte	.LASF162
	.byte	0x11
	.byte	0
	.uleb128 0x3
	.4byte	.LASF163
	.byte	0x9
	.byte	0x9c
	.4byte	0xb5
	.uleb128 0x3
	.4byte	.LASF164
	.byte	0x9
	.byte	0xc4
	.4byte	0xb5
	.uleb128 0x14
	.byte	0x8
	.byte	0x9
	.byte	0xe1
	.4byte	0x763
	.uleb128 0x13
	.4byte	.LASF165
	.byte	0x9
	.byte	0xe2
	.4byte	0xb5
	.byte	0
	.uleb128 0x13
	.4byte	.LASF166
	.byte	0x9
	.byte	0xe3
	.4byte	0x116
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF167
	.byte	0x9
	.byte	0xe4
	.4byte	0x742
	.uleb128 0x1a
	.byte	0x8
	.byte	0x9
	.byte	0xe6
	.4byte	0x7ae
	.uleb128 0x1b
	.4byte	.LASF166
	.byte	0x9
	.byte	0xe7
	.4byte	0x116
	.uleb128 0x1c
	.string	"key"
	.byte	0x9
	.byte	0xe8
	.4byte	0x763
	.uleb128 0x1b
	.4byte	.LASF65
	.byte	0x9
	.byte	0xe9
	.4byte	0xc0
	.uleb128 0x1b
	.4byte	.LASF83
	.byte	0x9
	.byte	0xea
	.4byte	0xcb
	.uleb128 0x1b
	.4byte	.LASF86
	.byte	0x9
	.byte	0xeb
	.4byte	0x2e1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF168
	.byte	0x9
	.byte	0xec
	.4byte	0x76e
	.uleb128 0x1d
	.2byte	0x2c8
	.byte	0x9
	.2byte	0x105
	.4byte	0xb7a
	.uleb128 0xa
	.4byte	.LASF169
	.byte	0x9
	.2byte	0x106
	.4byte	0xb7a
	.byte	0
	.uleb128 0xa
	.4byte	.LASF170
	.byte	0x9
	.2byte	0x107
	.4byte	0x2aa
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF171
	.byte	0x9
	.2byte	0x108
	.4byte	0xb5
	.byte	0x24
	.uleb128 0xa
	.4byte	.LASF172
	.byte	0x9
	.2byte	0x109
	.4byte	0xfa
	.byte	0x25
	.uleb128 0xa
	.4byte	.LASF173
	.byte	0x9
	.2byte	0x10a
	.4byte	0x72c
	.byte	0x2b
	.uleb128 0xa
	.4byte	.LASF174
	.byte	0x9
	.2byte	0x10b
	.4byte	0xe1
	.byte	0x2c
	.uleb128 0xa
	.4byte	.LASF175
	.byte	0x9
	.2byte	0x10c
	.4byte	0xe1
	.byte	0x2d
	.uleb128 0xa
	.4byte	.LASF176
	.byte	0x9
	.2byte	0x10d
	.4byte	0x180
	.byte	0x2e
	.uleb128 0xa
	.4byte	.LASF177
	.byte	0x9
	.2byte	0x10e
	.4byte	0xfa
	.byte	0x2f
	.uleb128 0xa
	.4byte	.LASF68
	.byte	0x9
	.2byte	0x10f
	.4byte	0xe1
	.byte	0x35
	.uleb128 0xa
	.4byte	.LASF178
	.byte	0x9
	.2byte	0x110
	.4byte	0x737
	.byte	0x36
	.uleb128 0xa
	.4byte	.LASF179
	.byte	0x9
	.2byte	0x111
	.4byte	0xb5
	.byte	0x37
	.uleb128 0xa
	.4byte	.LASF180
	.byte	0x9
	.2byte	0x112
	.4byte	0xb5
	.byte	0x38
	.uleb128 0xa
	.4byte	.LASF181
	.byte	0x9
	.2byte	0x113
	.4byte	0xb5
	.byte	0x39
	.uleb128 0xa
	.4byte	.LASF182
	.byte	0x9
	.2byte	0x114
	.4byte	0xc0
	.byte	0x3a
	.uleb128 0xa
	.4byte	.LASF183
	.byte	0x9
	.2byte	0x115
	.4byte	0xb5
	.byte	0x3c
	.uleb128 0xa
	.4byte	.LASF66
	.byte	0x9
	.2byte	0x116
	.4byte	0x2f7
	.byte	0x3d
	.uleb128 0xa
	.4byte	.LASF184
	.byte	0x9
	.2byte	0x117
	.4byte	0xe1
	.byte	0x3e
	.uleb128 0xa
	.4byte	.LASF185
	.byte	0x9
	.2byte	0x118
	.4byte	0x158
	.byte	0x3f
	.uleb128 0xa
	.4byte	.LASF186
	.byte	0x9
	.2byte	0x119
	.4byte	0x158
	.byte	0x4f
	.uleb128 0xa
	.4byte	.LASF187
	.byte	0x9
	.2byte	0x11a
	.4byte	0x158
	.byte	0x5f
	.uleb128 0xa
	.4byte	.LASF188
	.byte	0x9
	.2byte	0x11b
	.4byte	0x158
	.byte	0x6f
	.uleb128 0xa
	.4byte	.LASF189
	.byte	0x9
	.2byte	0x11c
	.4byte	0x164
	.byte	0x7f
	.uleb128 0xa
	.4byte	.LASF190
	.byte	0x9
	.2byte	0x11d
	.4byte	0x164
	.byte	0x9f
	.uleb128 0xa
	.4byte	.LASF73
	.byte	0x9
	.2byte	0x11e
	.4byte	0x158
	.byte	0xbf
	.uleb128 0xa
	.4byte	.LASF191
	.byte	0x9
	.2byte	0x11f
	.4byte	0x158
	.byte	0xcf
	.uleb128 0xa
	.4byte	.LASF192
	.byte	0x9
	.2byte	0x120
	.4byte	0x158
	.byte	0xdf
	.uleb128 0xa
	.4byte	.LASF193
	.byte	0x9
	.2byte	0x121
	.4byte	0x158
	.byte	0xef
	.uleb128 0xa
	.4byte	.LASF194
	.byte	0x9
	.2byte	0x122
	.4byte	0x158
	.byte	0xff
	.uleb128 0x1e
	.4byte	.LASF195
	.byte	0x9
	.2byte	0x123
	.4byte	0x158
	.2byte	0x10f
	.uleb128 0x1e
	.4byte	.LASF196
	.byte	0x9
	.2byte	0x124
	.4byte	0x3d5
	.2byte	0x11f
	.uleb128 0x1e
	.4byte	.LASF197
	.byte	0x9
	.2byte	0x125
	.4byte	0x3d5
	.2byte	0x15f
	.uleb128 0x1e
	.4byte	.LASF86
	.byte	0x9
	.2byte	0x126
	.4byte	0x2e1
	.2byte	0x19f
	.uleb128 0x1e
	.4byte	.LASF198
	.byte	0x9
	.2byte	0x127
	.4byte	0x4a4
	.2byte	0x1a0
	.uleb128 0x1e
	.4byte	.LASF199
	.byte	0x9
	.2byte	0x128
	.4byte	0x2cb
	.2byte	0x250
	.uleb128 0x1e
	.4byte	.LASF200
	.byte	0x9
	.2byte	0x129
	.4byte	0x2cb
	.2byte	0x251
	.uleb128 0x1e
	.4byte	.LASF201
	.byte	0x9
	.2byte	0x12a
	.4byte	0x2d6
	.2byte	0x252
	.uleb128 0x1e
	.4byte	.LASF202
	.byte	0x9
	.2byte	0x12b
	.4byte	0x2d6
	.2byte	0x253
	.uleb128 0x1e
	.4byte	.LASF203
	.byte	0x9
	.2byte	0x12c
	.4byte	0x2ec
	.2byte	0x254
	.uleb128 0x1e
	.4byte	.LASF204
	.byte	0x9
	.2byte	0x12d
	.4byte	0x2ec
	.2byte	0x255
	.uleb128 0x1e
	.4byte	.LASF205
	.byte	0x9
	.2byte	0x12e
	.4byte	0xe1
	.2byte	0x256
	.uleb128 0x1e
	.4byte	.LASF206
	.byte	0x9
	.2byte	0x130
	.4byte	0x69d
	.2byte	0x257
	.uleb128 0x1e
	.4byte	.LASF207
	.byte	0x9
	.2byte	0x131
	.4byte	0xe1
	.2byte	0x258
	.uleb128 0x1e
	.4byte	.LASF208
	.byte	0x9
	.2byte	0x132
	.4byte	0xe1
	.2byte	0x259
	.uleb128 0x1e
	.4byte	.LASF209
	.byte	0x9
	.2byte	0x133
	.4byte	0x30d
	.2byte	0x25a
	.uleb128 0x1e
	.4byte	.LASF210
	.byte	0x9
	.2byte	0x134
	.4byte	0x30d
	.2byte	0x25b
	.uleb128 0x1e
	.4byte	.LASF211
	.byte	0x9
	.2byte	0x135
	.4byte	0xb5
	.2byte	0x25c
	.uleb128 0x1e
	.4byte	.LASF212
	.byte	0x9
	.2byte	0x136
	.4byte	0xcb
	.2byte	0x260
	.uleb128 0x1e
	.4byte	.LASF213
	.byte	0x9
	.2byte	0x137
	.4byte	0x158
	.2byte	0x264
	.uleb128 0x1e
	.4byte	.LASF214
	.byte	0x9
	.2byte	0x138
	.4byte	0xb5
	.2byte	0x274
	.uleb128 0x1e
	.4byte	.LASF215
	.byte	0x9
	.2byte	0x139
	.4byte	0xb5
	.2byte	0x275
	.uleb128 0x1e
	.4byte	.LASF216
	.byte	0x9
	.2byte	0x13a
	.4byte	0xb5
	.2byte	0x276
	.uleb128 0x1e
	.4byte	.LASF217
	.byte	0x9
	.2byte	0x13b
	.4byte	0xb5
	.2byte	0x277
	.uleb128 0x1e
	.4byte	.LASF218
	.byte	0x9
	.2byte	0x13c
	.4byte	0xb5
	.2byte	0x278
	.uleb128 0x1e
	.4byte	.LASF219
	.byte	0x9
	.2byte	0x13d
	.4byte	0xb5
	.2byte	0x279
	.uleb128 0x1f
	.string	"tk"
	.byte	0x9
	.2byte	0x13f
	.4byte	0x158
	.2byte	0x27a
	.uleb128 0x1f
	.string	"ltk"
	.byte	0x9
	.2byte	0x140
	.4byte	0x158
	.2byte	0x28a
	.uleb128 0x1f
	.string	"div"
	.byte	0x9
	.2byte	0x141
	.4byte	0xc0
	.2byte	0x29a
	.uleb128 0x1e
	.4byte	.LASF220
	.byte	0x9
	.2byte	0x142
	.4byte	0x158
	.2byte	0x29c
	.uleb128 0x1e
	.4byte	.LASF221
	.byte	0x9
	.2byte	0x143
	.4byte	0xc0
	.2byte	0x2ac
	.uleb128 0x1e
	.4byte	.LASF222
	.byte	0x9
	.2byte	0x144
	.4byte	0x11c
	.2byte	0x2ae
	.uleb128 0x1e
	.4byte	.LASF223
	.byte	0x9
	.2byte	0x145
	.4byte	0xb5
	.2byte	0x2b6
	.uleb128 0x1e
	.4byte	.LASF224
	.byte	0x9
	.2byte	0x146
	.4byte	0xb5
	.2byte	0x2b7
	.uleb128 0x1e
	.4byte	.LASF225
	.byte	0x9
	.2byte	0x147
	.4byte	0xfa
	.2byte	0x2b8
	.uleb128 0x1e
	.4byte	.LASF67
	.byte	0x9
	.2byte	0x148
	.4byte	0xe1
	.2byte	0x2be
	.uleb128 0x1e
	.4byte	.LASF226
	.byte	0x9
	.2byte	0x149
	.4byte	0xe1
	.2byte	0x2bf
	.uleb128 0x1e
	.4byte	.LASF227
	.byte	0x9
	.2byte	0x14a
	.4byte	0xb5
	.2byte	0x2c0
	.uleb128 0x1e
	.4byte	.LASF228
	.byte	0x9
	.2byte	0x14b
	.4byte	0xb5
	.2byte	0x2c1
	.uleb128 0x1e
	.4byte	.LASF229
	.byte	0x9
	.2byte	0x14c
	.4byte	0xc0
	.2byte	0x2c2
	.uleb128 0x1e
	.4byte	.LASF230
	.byte	0x9
	.2byte	0x14d
	.4byte	0xe1
	.2byte	0x2c4
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x502
	.uleb128 0x5
	.4byte	.LASF231
	.byte	0x9
	.2byte	0x14e
	.4byte	0x7b9
	.uleb128 0x5
	.4byte	.LASF232
	.byte	0x9
	.2byte	0x151
	.4byte	0xb98
	.uleb128 0x8
	.byte	0x4
	.4byte	0xb9e
	.uleb128 0xe
	.4byte	0xbae
	.uleb128 0xf
	.4byte	0xbae
	.uleb128 0xf
	.4byte	0xbb4
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0xb80
	.uleb128 0x8
	.byte	0x4
	.4byte	0x7ae
	.uleb128 0x3
	.4byte	.LASF233
	.byte	0x1
	.byte	0x63
	.4byte	0xbc5
	.uleb128 0x8
	.byte	0x4
	.4byte	0x170
	.uleb128 0x10
	.byte	0x4
	.4byte	0x74
	.byte	0x1
	.byte	0x65
	.4byte	0xd4c
	.uleb128 0x11
	.4byte	.LASF234
	.byte	0
	.uleb128 0x11
	.4byte	.LASF235
	.byte	0x1
	.uleb128 0x11
	.4byte	.LASF236
	.byte	0x2
	.uleb128 0x11
	.4byte	.LASF237
	.byte	0x3
	.uleb128 0x11
	.4byte	.LASF238
	.byte	0x4
	.uleb128 0x11
	.4byte	.LASF239
	.byte	0x5
	.uleb128 0x11
	.4byte	.LASF240
	.byte	0x6
	.uleb128 0x11
	.4byte	.LASF241
	.byte	0x7
	.uleb128 0x11
	.4byte	.LASF242
	.byte	0x8
	.uleb128 0x11
	.4byte	.LASF243
	.byte	0x9
	.uleb128 0x11
	.4byte	.LASF244
	.byte	0xa
	.uleb128 0x11
	.4byte	.LASF245
	.byte	0xb
	.uleb128 0x11
	.4byte	.LASF246
	.byte	0xc
	.uleb128 0x11
	.4byte	.LASF247
	.byte	0xd
	.uleb128 0x11
	.4byte	.LASF248
	.byte	0xe
	.uleb128 0x11
	.4byte	.LASF249
	.byte	0xf
	.uleb128 0x11
	.4byte	.LASF250
	.byte	0x10
	.uleb128 0x11
	.4byte	.LASF251
	.byte	0x11
	.uleb128 0x11
	.4byte	.LASF252
	.byte	0x12
	.uleb128 0x11
	.4byte	.LASF253
	.byte	0x13
	.uleb128 0x11
	.4byte	.LASF254
	.byte	0x14
	.uleb128 0x11
	.4byte	.LASF255
	.byte	0x15
	.uleb128 0x11
	.4byte	.LASF256
	.byte	0x16
	.uleb128 0x11
	.4byte	.LASF257
	.byte	0x17
	.uleb128 0x11
	.4byte	.LASF258
	.byte	0x18
	.uleb128 0x11
	.4byte	.LASF259
	.byte	0x19
	.uleb128 0x11
	.4byte	.LASF260
	.byte	0x1a
	.uleb128 0x11
	.4byte	.LASF261
	.byte	0x1b
	.uleb128 0x11
	.4byte	.LASF262
	.byte	0x1c
	.uleb128 0x11
	.4byte	.LASF263
	.byte	0x1d
	.uleb128 0x11
	.4byte	.LASF264
	.byte	0x1e
	.uleb128 0x11
	.4byte	.LASF265
	.byte	0x1f
	.uleb128 0x11
	.4byte	.LASF266
	.byte	0x20
	.uleb128 0x11
	.4byte	.LASF267
	.byte	0x21
	.uleb128 0x11
	.4byte	.LASF268
	.byte	0x22
	.uleb128 0x11
	.4byte	.LASF269
	.byte	0x23
	.uleb128 0x11
	.4byte	.LASF270
	.byte	0x24
	.uleb128 0x11
	.4byte	.LASF271
	.byte	0x25
	.uleb128 0x11
	.4byte	.LASF272
	.byte	0x26
	.uleb128 0x11
	.4byte	.LASF273
	.byte	0x27
	.uleb128 0x11
	.4byte	.LASF274
	.byte	0x28
	.uleb128 0x11
	.4byte	.LASF275
	.byte	0x29
	.uleb128 0x11
	.4byte	.LASF276
	.byte	0x2a
	.uleb128 0x11
	.4byte	.LASF277
	.byte	0x2b
	.uleb128 0x11
	.4byte	.LASF278
	.byte	0x2c
	.uleb128 0x11
	.4byte	.LASF279
	.byte	0x2d
	.uleb128 0x11
	.4byte	.LASF280
	.byte	0x2e
	.uleb128 0x11
	.4byte	.LASF281
	.byte	0x2f
	.uleb128 0x11
	.4byte	.LASF282
	.byte	0x30
	.uleb128 0x11
	.4byte	.LASF283
	.byte	0x31
	.uleb128 0x11
	.4byte	.LASF284
	.byte	0x32
	.uleb128 0x11
	.4byte	.LASF285
	.byte	0x33
	.uleb128 0x11
	.4byte	.LASF286
	.byte	0x34
	.uleb128 0x11
	.4byte	.LASF287
	.byte	0x35
	.uleb128 0x11
	.4byte	.LASF288
	.byte	0x36
	.uleb128 0x11
	.4byte	.LASF289
	.byte	0x37
	.uleb128 0x11
	.4byte	.LASF290
	.byte	0x38
	.uleb128 0x11
	.4byte	.LASF291
	.byte	0x39
	.uleb128 0x11
	.4byte	.LASF292
	.byte	0x3a
	.uleb128 0x11
	.4byte	.LASF293
	.byte	0x3b
	.uleb128 0x11
	.4byte	.LASF294
	.byte	0x3c
	.uleb128 0x11
	.4byte	.LASF295
	.byte	0x3d
	.byte	0
	.uleb128 0x5
	.4byte	.LASF296
	.byte	0x1
	.2byte	0x29f
	.4byte	0xd58
	.uleb128 0x8
	.byte	0x4
	.4byte	0x68d
	.uleb128 0x20
	.4byte	.LASF297
	.byte	0x1
	.2byte	0x2b0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd83
	.uleb128 0x21
	.4byte	.LASF173
	.byte	0x1
	.2byte	0x2b0
	.4byte	0x72c
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x22
	.4byte	.LASF356
	.byte	0x1
	.2byte	0x2c0
	.4byte	0x72c
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x20
	.4byte	.LASF298
	.byte	0x1
	.2byte	0x2d4
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe55
	.uleb128 0x21
	.4byte	.LASF299
	.byte	0x1
	.2byte	0x2d4
	.4byte	0xbae
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x23
	.4byte	.LASF46
	.byte	0x1
	.2byte	0x2d4
	.4byte	0x6a8
	.4byte	.LLST0
	.uleb128 0x21
	.4byte	.LASF166
	.byte	0x1
	.2byte	0x2d4
	.4byte	0x1ce
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x24
	.4byte	.LASF300
	.byte	0x1
	.2byte	0x2d6
	.4byte	0xb5
	.4byte	.LLST1
	.uleb128 0x24
	.4byte	.LASF301
	.byte	0x1
	.2byte	0x2d7
	.4byte	0xbba
	.4byte	.LLST2
	.uleb128 0x24
	.4byte	.LASF302
	.byte	0x1
	.2byte	0x2d8
	.4byte	0xb5
	.4byte	.LLST3
	.uleb128 0x24
	.4byte	.LASF303
	.byte	0x1
	.2byte	0x2d8
	.4byte	0xb5
	.4byte	.LLST4
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.2byte	0x2d8
	.4byte	0xb5
	.4byte	.LLST5
	.uleb128 0x24
	.4byte	.LASF304
	.byte	0x1
	.2byte	0x2d9
	.4byte	0xd4c
	.4byte	.LLST6
	.uleb128 0x26
	.4byte	.LVL13
	.4byte	0xd5e
	.uleb128 0x27
	.4byte	.LVL16
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	.LASF306
	.byte	0x1
	.2byte	0x30e
	.4byte	0x1bc
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe90
	.uleb128 0x23
	.4byte	.LASF173
	.byte	0x1
	.2byte	0x30e
	.4byte	0x72c
	.4byte	.LLST7
	.uleb128 0x24
	.4byte	.LASF305
	.byte	0x1
	.2byte	0x310
	.4byte	0x1bc
	.4byte	.LLST8
	.byte	0
	.uleb128 0x29
	.4byte	.LASF307
	.byte	0x1
	.2byte	0x31c
	.4byte	0x1bc
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xecb
	.uleb128 0x23
	.4byte	.LASF46
	.byte	0x1
	.2byte	0x31c
	.4byte	0x6a8
	.4byte	.LLST9
	.uleb128 0x24
	.4byte	.LASF305
	.byte	0x1
	.2byte	0x31e
	.4byte	0x1bc
	.4byte	.LLST10
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF308
	.byte	0x4
	.2byte	0x2cc
	.4byte	0xede
	.byte	0x6
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.uleb128 0xc
	.4byte	0x106
	.uleb128 0x2a
	.4byte	.LASF309
	.byte	0x4
	.2byte	0x2cd
	.4byte	0xef6
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	0x106
	.uleb128 0x6
	.4byte	0xb8c
	.4byte	0xf0b
	.uleb128 0x7
	.4byte	0xf3
	.byte	0x3c
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF310
	.byte	0x1
	.byte	0xa6
	.4byte	0xf1c
	.uleb128 0x5
	.byte	0x3
	.4byte	smp_sm_action
	.uleb128 0xc
	.4byte	0xefb
	.uleb128 0x6
	.4byte	0xb5
	.4byte	0xf37
	.uleb128 0x7
	.4byte	0xf3
	.byte	0x27
	.uleb128 0x7
	.4byte	0xf3
	.byte	0x10
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF311
	.byte	0x1
	.byte	0xe7
	.4byte	0xf48
	.uleb128 0x5
	.byte	0x3
	.4byte	smp_master_entry_map
	.uleb128 0xc
	.4byte	0xf21
	.uleb128 0x6
	.4byte	0xb5
	.4byte	0xf63
	.uleb128 0x7
	.4byte	0xf3
	.byte	0x2
	.uleb128 0x7
	.4byte	0xf3
	.byte	0x2
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF312
	.byte	0x1
	.2byte	0x114
	.4byte	0xf75
	.uleb128 0x5
	.byte	0x3
	.4byte	smp_all_table
	.uleb128 0xc
	.4byte	0xf4d
	.uleb128 0x6
	.4byte	0xb5
	.4byte	0xf90
	.uleb128 0x7
	.4byte	0xf3
	.byte	0x4
	.uleb128 0x7
	.4byte	0xf3
	.byte	0x2
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF313
	.byte	0x1
	.2byte	0x11b
	.4byte	0xfa2
	.uleb128 0x5
	.byte	0x3
	.4byte	smp_master_idle_table
	.uleb128 0xc
	.4byte	0xf7a
	.uleb128 0x6
	.4byte	0xb5
	.4byte	0xfbd
	.uleb128 0x7
	.4byte	0xf3
	.byte	0x9
	.uleb128 0x7
	.4byte	0xf3
	.byte	0x2
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF314
	.byte	0x1
	.2byte	0x125
	.4byte	0xfcf
	.uleb128 0x5
	.byte	0x3
	.4byte	smp_master_wait_for_app_response_table
	.uleb128 0xc
	.4byte	0xfa7
	.uleb128 0x6
	.4byte	0xb5
	.4byte	0xfea
	.uleb128 0x7
	.4byte	0xf3
	.byte	0x3
	.uleb128 0x7
	.4byte	0xf3
	.byte	0x2
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF315
	.byte	0x1
	.2byte	0x139
	.4byte	0xffc
	.uleb128 0x5
	.byte	0x3
	.4byte	smp_master_pair_request_response_table
	.uleb128 0xc
	.4byte	0xfd4
	.uleb128 0x6
	.4byte	0xb5
	.4byte	0x1017
	.uleb128 0x7
	.4byte	0xf3
	.byte	0
	.uleb128 0x7
	.4byte	0xf3
	.byte	0x2
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF316
	.byte	0x1
	.2byte	0x143
	.4byte	0x1029
	.uleb128 0x5
	.byte	0x3
	.4byte	smp_master_wait_for_confirm_table
	.uleb128 0xc
	.4byte	0x1001
	.uleb128 0x2c
	.4byte	.LASF317
	.byte	0x1
	.2byte	0x148
	.4byte	0x1040
	.uleb128 0x5
	.byte	0x3
	.4byte	smp_master_confirm_table
	.uleb128 0xc
	.4byte	0x1001
	.uleb128 0x2c
	.4byte	.LASF318
	.byte	0x1
	.2byte	0x14d
	.4byte	0x1057
	.uleb128 0x5
	.byte	0x3
	.4byte	smp_master_rand_table
	.uleb128 0xc
	.4byte	0xf4d
	.uleb128 0x2c
	.4byte	.LASF319
	.byte	0x1
	.2byte	0x154
	.4byte	0x106e
	.uleb128 0x5
	.byte	0x3
	.4byte	smp_master_public_key_exchange_table
	.uleb128 0xc
	.4byte	0xf4d
	.uleb128 0x6
	.4byte	0xb5
	.4byte	0x1089
	.uleb128 0x7
	.4byte	0xf3
	.byte	0x5
	.uleb128 0x7
	.4byte	0xf3
	.byte	0x2
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF320
	.byte	0x1
	.2byte	0x15b
	.4byte	0x109b
	.uleb128 0x5
	.byte	0x3
	.4byte	smp_master_sec_conn_phs1_start_table
	.uleb128 0xc
	.4byte	0x1073
	.uleb128 0x6
	.4byte	0xb5
	.4byte	0x10b6
	.uleb128 0x7
	.4byte	0xf3
	.byte	0x1
	.uleb128 0x7
	.4byte	0xf3
	.byte	0x2
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF321
	.byte	0x1
	.2byte	0x167
	.4byte	0x10c8
	.uleb128 0x5
	.byte	0x3
	.4byte	smp_master_wait_commitment_table
	.uleb128 0xc
	.4byte	0x10a0
	.uleb128 0x2c
	.4byte	.LASF322
	.byte	0x1
	.2byte	0x16d
	.4byte	0x10df
	.uleb128 0x5
	.byte	0x3
	.4byte	smp_master_wait_nonce_table
	.uleb128 0xc
	.4byte	0xf4d
	.uleb128 0x2c
	.4byte	.LASF323
	.byte	0x1
	.2byte	0x177
	.4byte	0x10f6
	.uleb128 0x5
	.byte	0x3
	.4byte	smp_master_sec_conn_phs2_start_table
	.uleb128 0xc
	.4byte	0x1001
	.uleb128 0x2c
	.4byte	.LASF324
	.byte	0x1
	.2byte	0x17c
	.4byte	0x110d
	.uleb128 0x5
	.byte	0x3
	.4byte	smp_master_wait_dhk_check_table
	.uleb128 0xc
	.4byte	0x1001
	.uleb128 0x2c
	.4byte	.LASF325
	.byte	0x1
	.2byte	0x181
	.4byte	0x1124
	.uleb128 0x5
	.byte	0x3
	.4byte	smp_master_dhk_check_table
	.uleb128 0xc
	.4byte	0x10a0
	.uleb128 0x2c
	.4byte	.LASF326
	.byte	0x1
	.2byte	0x18a
	.4byte	0x113b
	.uleb128 0x5
	.byte	0x3
	.4byte	smp_master_enc_pending_table
	.uleb128 0xc
	.4byte	0xf4d
	.uleb128 0x2c
	.4byte	.LASF327
	.byte	0x1
	.2byte	0x191
	.4byte	0x1152
	.uleb128 0x5
	.byte	0x3
	.4byte	smp_master_bond_pending_table
	.uleb128 0xc
	.4byte	0x1073
	.uleb128 0x2c
	.4byte	.LASF328
	.byte	0x1
	.2byte	0x19b
	.4byte	0x1169
	.uleb128 0x5
	.byte	0x3
	.4byte	smp_master_create_local_sec_conn_oob_data
	.uleb128 0xc
	.4byte	0x10a0
	.uleb128 0x2c
	.4byte	.LASF329
	.byte	0x1
	.2byte	0x1a3
	.4byte	0x1180
	.uleb128 0x5
	.byte	0x3
	.4byte	smp_slave_entry_map
	.uleb128 0xc
	.4byte	0xf21
	.uleb128 0x2c
	.4byte	.LASF330
	.byte	0x1
	.2byte	0x1d0
	.4byte	0x1197
	.uleb128 0x5
	.byte	0x3
	.4byte	smp_slave_idle_table
	.uleb128 0xc
	.4byte	0xf4d
	.uleb128 0x6
	.4byte	0xb5
	.4byte	0x11b2
	.uleb128 0x7
	.4byte	0xf3
	.byte	0xa
	.uleb128 0x7
	.4byte	0xf3
	.byte	0x2
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF331
	.byte	0x1
	.2byte	0x1d7
	.4byte	0x11c4
	.uleb128 0x5
	.byte	0x3
	.4byte	smp_slave_wait_for_app_response_table
	.uleb128 0xc
	.4byte	0x119c
	.uleb128 0x2c
	.4byte	.LASF332
	.byte	0x1
	.2byte	0x1eb
	.4byte	0x11db
	.uleb128 0x5
	.byte	0x3
	.4byte	smp_slave_sec_request_table
	.uleb128 0xc
	.4byte	0x10a0
	.uleb128 0x2c
	.4byte	.LASF333
	.byte	0x1
	.2byte	0x1f1
	.4byte	0x11f2
	.uleb128 0x5
	.byte	0x3
	.4byte	smp_slave_pair_request_response_table
	.uleb128 0xc
	.4byte	0xf7a
	.uleb128 0x2c
	.4byte	.LASF334
	.byte	0x1
	.2byte	0x1fb
	.4byte	0x1209
	.uleb128 0x5
	.byte	0x3
	.4byte	smp_slave_wait_confirm_table
	.uleb128 0xc
	.4byte	0x10a0
	.uleb128 0x2c
	.4byte	.LASF335
	.byte	0x1
	.2byte	0x201
	.4byte	0x1220
	.uleb128 0x5
	.byte	0x3
	.4byte	smp_slave_confirm_table
	.uleb128 0xc
	.4byte	0x10a0
	.uleb128 0x2c
	.4byte	.LASF336
	.byte	0x1
	.2byte	0x209
	.4byte	0x1237
	.uleb128 0x5
	.byte	0x3
	.4byte	smp_slave_rand_table
	.uleb128 0xc
	.4byte	0x10a0
	.uleb128 0x2c
	.4byte	.LASF337
	.byte	0x1
	.2byte	0x20f
	.4byte	0x124e
	.uleb128 0x5
	.byte	0x3
	.4byte	smp_slave_public_key_exch_table
	.uleb128 0xc
	.4byte	0xf4d
	.uleb128 0x2c
	.4byte	.LASF338
	.byte	0x1
	.2byte	0x216
	.4byte	0x1265
	.uleb128 0x5
	.byte	0x3
	.4byte	smp_slave_sec_conn_phs1_start_table
	.uleb128 0xc
	.4byte	0x1073
	.uleb128 0x2c
	.4byte	.LASF339
	.byte	0x1
	.2byte	0x222
	.4byte	0x127c
	.uleb128 0x5
	.byte	0x3
	.4byte	smp_slave_wait_commitment_table
	.uleb128 0xc
	.4byte	0x10a0
	.uleb128 0x2c
	.4byte	.LASF340
	.byte	0x1
	.2byte	0x228
	.4byte	0x1293
	.uleb128 0x5
	.byte	0x3
	.4byte	smp_slave_wait_nonce_table
	.uleb128 0xc
	.4byte	0xf4d
	.uleb128 0x2c
	.4byte	.LASF341
	.byte	0x1
	.2byte	0x232
	.4byte	0x12aa
	.uleb128 0x5
	.byte	0x3
	.4byte	smp_slave_sec_conn_phs2_start_table
	.uleb128 0xc
	.4byte	0x10a0
	.uleb128 0x2c
	.4byte	.LASF342
	.byte	0x1
	.2byte	0x239
	.4byte	0x12c1
	.uleb128 0x5
	.byte	0x3
	.4byte	smp_slave_wait_dhk_check_table
	.uleb128 0xc
	.4byte	0x10a0
	.uleb128 0x2c
	.4byte	.LASF343
	.byte	0x1
	.2byte	0x240
	.4byte	0x12d8
	.uleb128 0x5
	.byte	0x3
	.4byte	smp_slave_dhk_check_table
	.uleb128 0xc
	.4byte	0x10a0
	.uleb128 0x2c
	.4byte	.LASF344
	.byte	0x1
	.2byte	0x24c
	.4byte	0x12ef
	.uleb128 0x5
	.byte	0x3
	.4byte	smp_slave_enc_pending_table
	.uleb128 0xc
	.4byte	0xfd4
	.uleb128 0x2c
	.4byte	.LASF345
	.byte	0x1
	.2byte	0x255
	.4byte	0x1306
	.uleb128 0x5
	.byte	0x3
	.4byte	smp_slave_bond_pending_table
	.uleb128 0xc
	.4byte	0x1073
	.uleb128 0x2c
	.4byte	.LASF346
	.byte	0x1
	.2byte	0x264
	.4byte	0x131d
	.uleb128 0x5
	.byte	0x3
	.4byte	smp_slave_create_local_sec_conn_oob_data
	.uleb128 0xc
	.4byte	0x10a0
	.uleb128 0x6
	.4byte	0xbba
	.4byte	0x1338
	.uleb128 0x7
	.4byte	0xf3
	.byte	0x10
	.uleb128 0x7
	.4byte	0xf3
	.byte	0x1
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF347
	.byte	0x1
	.2byte	0x26a
	.4byte	0x134a
	.uleb128 0x5
	.byte	0x3
	.4byte	smp_state_table
	.uleb128 0xc
	.4byte	0x1322
	.uleb128 0x6
	.4byte	0xd4c
	.4byte	0x135f
	.uleb128 0x7
	.4byte	0xf3
	.byte	0x1
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF348
	.byte	0x1
	.2byte	0x2a0
	.4byte	0x1371
	.uleb128 0x5
	.byte	0x3
	.4byte	smp_entry_table
	.uleb128 0xc
	.4byte	0x134f
	.uleb128 0x2d
	.4byte	.LASF349
	.byte	0x1
	.2byte	0x2a6
	.4byte	0xb80
	.uleb128 0x5
	.byte	0x3
	.4byte	smp_cb
	.uleb128 0x6
	.4byte	0x1bc
	.4byte	0x1398
	.uleb128 0x7
	.4byte	0xf3
	.byte	0x11
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF350
	.byte	0x1
	.byte	0x1a
	.4byte	0x13a9
	.uleb128 0x5
	.byte	0x3
	.4byte	smp_state_name
	.uleb128 0xc
	.4byte	0x1388
	.uleb128 0x6
	.4byte	0x1bc
	.4byte	0x13be
	.uleb128 0x7
	.4byte	0xf3
	.byte	0x28
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF351
	.byte	0x1
	.byte	0x2f
	.4byte	0x13cf
	.uleb128 0x5
	.byte	0x3
	.4byte	smp_event_name
	.uleb128 0xc
	.4byte	0x13ae
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
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x11
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0xd
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2c
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL1
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL4
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL13-1
	.2byte	0x2
	.byte	0x72
	.sleb128 43
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x6
	.byte	0x3
	.4byte	smp_all_table
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL15
	.4byte	.LVL16-1
	.2byte	0x5
	.byte	0x75
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x2
	.byte	0x73
	.sleb128 0
	.4byte	.LVL6
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL3
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL12
	.4byte	.LVL13-1
	.2byte	0xa
	.byte	0x79
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.4byte	smp_entry_table
	.byte	0x22
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL20
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL22
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL21
	.4byte	.LVL23
	.2byte	0x6
	.byte	0x3
	.4byte	.LC6
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x6
	.byte	0x3
	.4byte	.LC6
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LFE29
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL26
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL27
	.4byte	.LVL30
	.2byte	0x6
	.byte	0x3
	.4byte	.LC9
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x6
	.byte	0x3
	.4byte	.LC9
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LFE30
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x3c
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF186:
	.string	"rconfirm"
.LASF251:
	.string	"SMP_PROC_SRK_INFO"
.LASF315:
	.string	"smp_master_pair_request_response_table"
.LASF318:
	.string	"smp_master_rand_table"
.LASF132:
	.string	"BTM_EIR_UUID_SERVCLASS_MESSAGE_NOTIFICATION"
.LASF324:
	.string	"smp_master_wait_dhk_check_table"
.LASF101:
	.string	"BTM_EIR_UUID_SERVCLASS_AV_REM_CTRL_TARGET"
.LASF352:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF326:
	.string	"smp_master_enc_pending_table"
.LASF38:
	.string	"TIMER_CBACK"
.LASF349:
	.string	"smp_cb"
.LASF136:
	.string	"BTM_PM_STS_ACTIVE"
.LASF222:
	.string	"enc_rand"
.LASF189:
	.string	"private_key"
.LASF327:
	.string	"smp_master_bond_pending_table"
.LASF264:
	.string	"SMP_CHECK_AUTH_REQ"
.LASF159:
	.string	"SMP_STATE_ENCRYPTION_PENDING"
.LASF316:
	.string	"smp_master_wait_for_confirm_table"
.LASF160:
	.string	"SMP_STATE_BOND_PENDING"
.LASF96:
	.string	"BTM_EIR_UUID_SERVCLASS_IRMC_SYNC_COMMAND"
.LASF182:
	.string	"flags"
.LASF50:
	.string	"tSMP_STATUS"
.LASF290:
	.string	"SMP_PROCESS_SECURE_CONNECTION_OOB_DATA"
.LASF305:
	.string	"p_str"
.LASF16:
	.string	"UINT16"
.LASF63:
	.string	"resp_keys"
.LASF192:
	.string	"local_random"
.LASF8:
	.string	"unsigned int"
.LASF166:
	.string	"p_data"
.LASF48:
	.string	"TIMER_LIST_ENT"
.LASF74:
	.string	"addr_sent_to"
.LASF219:
	.string	"local_r_key"
.LASF258:
	.string	"SMP_GENERATE_STK"
.LASF287:
	.string	"SMP_START_PASSKEY_VERIFICATION"
.LASF168:
	.string	"tSMP_INT_DATA"
.LASF337:
	.string	"smp_slave_public_key_exch_table"
.LASF6:
	.string	"__int32_t"
.LASF118:
	.string	"BTM_EIR_UUID_SERVCLASS_PRINTING_STATUS"
.LASF87:
	.string	"tSMP_EVT_DATA"
.LASF161:
	.string	"SMP_STATE_CREATE_LOCAL_SEC_CONN_OOB_DATA"
.LASF152:
	.string	"SMP_STATE_PUBLIC_KEY_EXCH"
.LASF351:
	.string	"smp_event_name"
.LASF62:
	.string	"init_keys"
.LASF328:
	.string	"smp_master_create_local_sec_conn_oob_data"
.LASF237:
	.string	"SMP_SEND_CONFIRM"
.LASF133:
	.string	"BTM_EIR_UUID_SERVCLASS_HDP_SOURCE"
.LASF345:
	.string	"smp_slave_bond_pending_table"
.LASF203:
	.string	"peer_auth_req"
.LASF84:
	.string	"io_req"
.LASF26:
	.string	"tBLE_ADDR_TYPE"
.LASF92:
	.string	"BTM_EIR_UUID_SERVCLASS_DIALUP_NETWORKING"
.LASF202:
	.string	"loc_oob_flag"
.LASF112:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING_AUTO_ARCHIVE"
.LASF322:
	.string	"smp_master_wait_nonce_table"
.LASF83:
	.string	"passkey"
.LASF286:
	.string	"SMP_WAIT_FOR_BOTH_PUBLIC_KEYS"
.LASF178:
	.string	"br_state"
.LASF81:
	.string	"peer_oob_data"
.LASF240:
	.string	"SMP_SEND_ENC_INFO"
.LASF348:
	.string	"smp_entry_table"
.LASF88:
	.string	"tSMP_CALLBACK"
.LASF307:
	.string	"smp_get_event_name"
.LASF344:
	.string	"smp_slave_enc_pending_table"
.LASF64:
	.string	"tSMP_IO_REQ"
.LASF14:
	.string	"uint32_t"
.LASF226:
	.string	"discard_sec_req"
.LASF162:
	.string	"SMP_STATE_MAX"
.LASF339:
	.string	"smp_slave_wait_commitment_table"
.LASF70:
	.string	"tSMP_PUBLIC_KEY"
.LASF334:
	.string	"smp_slave_wait_confirm_table"
.LASF184:
	.string	"connect_initialized"
.LASF52:
	.string	"tSMP_OOB_FLAG"
.LASF218:
	.string	"local_i_key"
.LASF46:
	.string	"event"
.LASF310:
	.string	"smp_sm_action"
.LASF296:
	.string	"tSMP_ENTRY_TBL"
.LASF18:
	.string	"INT32"
.LASF10:
	.string	"long long unsigned int"
.LASF138:
	.string	"BTM_PM_STS_SNIFF"
.LASF102:
	.string	"BTM_EIR_UUID_SERVCLASS_AV_REMOTE_CONTROL"
.LASF128:
	.string	"BTM_EIR_UUID_SERVCLASS_PNP_INFORMATION"
.LASF91:
	.string	"BTM_EIR_UUID_SERVCLASS_LAN_ACCESS_USING_PPP"
.LASF24:
	.string	"BT_OCTET16"
.LASF120:
	.string	"BTM_EIR_UUID_SERVCLASS_CABLE_REPLACEMENT"
.LASF236:
	.string	"SMP_SEND_PAIR_RSP"
.LASF293:
	.string	"SMP_IDLE_TERMINATE"
.LASF308:
	.string	"bd_addr_any"
.LASF224:
	.string	"addr_type"
.LASF110:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING"
.LASF157:
	.string	"SMP_STATE_WAIT_DHK_CHECK"
.LASF126:
	.string	"BTM_EIR_UUID_SERVCLASS_PHONE_ACCESS"
.LASF4:
	.string	"__uint16_t"
.LASF336:
	.string	"smp_slave_rand_table"
.LASF89:
	.string	"BTM_EIR_UUID_SERVCLASS_SERVICE_DISCOVERY_SERVER"
.LASF155:
	.string	"SMP_STATE_WAIT_NONCE"
.LASF338:
	.string	"smp_slave_sec_conn_phs1_start_table"
.LASF127:
	.string	"BTM_EIR_UUID_SERVCLASS_HEADSET_HS"
.LASF144:
	.string	"tSMP_EVENT"
.LASF69:
	.string	"tSMP_CMPL"
.LASF148:
	.string	"SMP_STATE_PAIR_REQ_RSP"
.LASF140:
	.string	"BTM_PM_STS_SSR"
.LASF190:
	.string	"dhkey"
.LASF100:
	.string	"BTM_EIR_UUID_SERVCLASS_AUDIO_SINK"
.LASF153:
	.string	"SMP_STATE_SEC_CONN_PHS1_START"
.LASF82:
	.string	"tSMP_SC_OOB_DATA"
.LASF268:
	.string	"SMP_CREATE_PRIVATE_KEY"
.LASF39:
	.string	"p_next"
.LASF254:
	.string	"SMP_PROC_COMPARE"
.LASF252:
	.string	"SMP_PROC_SEC_GRANT"
.LASF343:
	.string	"smp_slave_dhk_check_table"
.LASF56:
	.string	"tSMP_KEYS"
.LASF67:
	.string	"is_pair_cancel"
.LASF175:
	.string	"id_addr_rcvd"
.LASF346:
	.string	"smp_slave_create_local_sec_conn_oob_data"
.LASF235:
	.string	"SMP_SEND_PAIR_REQ"
.LASF208:
	.string	"le_sc_kp_notif_is_used"
.LASF20:
	.string	"_Bool"
.LASF195:
	.string	"remote_dhkey_check"
.LASF269:
	.string	"SMP_USE_OOB_PRIVATE_KEY"
.LASF284:
	.string	"SMP_MOVE_TO_SEC_CONN_PHASE2"
.LASF221:
	.string	"ediv"
.LASF289:
	.string	"SMP_PROCESS_KEYPRESS_NOTIFICATION"
.LASF23:
	.string	"BT_OCTET8"
.LASF59:
	.string	"oob_data"
.LASF191:
	.string	"remote_commitment"
.LASF176:
	.string	"id_addr_type"
.LASF265:
	.string	"SMP_PAIR_TERMINATE"
.LASF93:
	.string	"BTM_EIR_UUID_SERVCLASS_IRMC_SYNC"
.LASF146:
	.string	"SMP_STATE_WAIT_APP_RSP"
.LASF249:
	.string	"SMP_PROC_ID_INFO"
.LASF73:
	.string	"commitment"
.LASF42:
	.string	"ticks"
.LASF283:
	.string	"SMP_CALCULATE_NUMERIC_COMPARISON_DISPLAY_NUMBER"
.LASF314:
	.string	"smp_master_wait_for_app_response_table"
.LASF188:
	.string	"rand"
.LASF22:
	.string	"BD_ADDR"
.LASF54:
	.string	"tSMP_AUTH_REQ"
.LASF29:
	.string	"char"
.LASF256:
	.string	"SMP_GENERATE_COMPARE"
.LASF273:
	.string	"SMP_START_SEC_CONN_PHASE1"
.LASF304:
	.string	"entry_table"
.LASF260:
	.string	"SMP_START_ENC"
.LASF35:
	.string	"ESP_LOG_INFO"
.LASF354:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\bt"
.LASF45:
	.string	"data"
.LASF9:
	.string	"long long int"
.LASF181:
	.string	"role"
.LASF201:
	.string	"peer_oob_flag"
.LASF259:
	.string	"SMP_KEY_DISTRIBUTE"
.LASF217:
	.string	"peer_r_key"
.LASF11:
	.string	"uint8_t"
.LASF299:
	.string	"p_cb"
.LASF165:
	.string	"key_type"
.LASF335:
	.string	"smp_slave_confirm_table"
.LASF278:
	.string	"SMP_CALCULATE_LOCAL_DHKEY_CHECK"
.LASF297:
	.string	"smp_set_state"
.LASF79:
	.string	"tSMP_PEER_OOB_DATA"
.LASF317:
	.string	"smp_master_confirm_table"
.LASF68:
	.string	"smp_over_br"
.LASF66:
	.string	"sec_level"
.LASF303:
	.string	"entry"
.LASF319:
	.string	"smp_master_public_key_exchange_table"
.LASF257:
	.string	"SMP_GENERATE_CONFIRM"
.LASF103:
	.string	"BTM_EIR_UUID_SERVCLASS_INTERCOM"
.LASF169:
	.string	"p_callback"
.LASF291:
	.string	"SMP_SET_LOCAL_OOB_KEYS"
.LASF32:
	.string	"ESP_LOG_NONE"
.LASF193:
	.string	"peer_random"
.LASF329:
	.string	"smp_slave_entry_map"
.LASF34:
	.string	"ESP_LOG_WARN"
.LASF262:
	.string	"SMP_DECIDE_ASSO_MODEL"
.LASF149:
	.string	"SMP_STATE_WAIT_CONFIRM"
.LASF174:
	.string	"derive_lk"
.LASF99:
	.string	"BTM_EIR_UUID_SERVCLASS_AUDIO_SOURCE"
.LASF323:
	.string	"smp_master_sec_conn_phs2_start_table"
.LASF115:
	.string	"BTM_EIR_UUID_SERVCLASS_AG_HANDSFREE"
.LASF158:
	.string	"SMP_STATE_DHK_CHECK"
.LASF198:
	.string	"sc_oob_data"
.LASF197:
	.string	"peer_publ_key"
.LASF215:
	.string	"loc_enc_size"
.LASF119:
	.string	"BTM_EIR_UUID_SERVCLASS_HUMAN_INTERFACE"
.LASF281:
	.string	"SMP_CALCULATE_PEER_DHKEY_CHECK"
.LASF243:
	.string	"SMP_PROC_PAIR_CMD"
.LASF41:
	.string	"p_cback"
.LASF313:
	.string	"smp_master_idle_table"
.LASF150:
	.string	"SMP_STATE_CONFIRM"
.LASF277:
	.string	"SMP_PROCESS_PEER_NONCE"
.LASF172:
	.string	"pairing_bda"
.LASF288:
	.string	"SMP_SEND_KEYPRESS_NOTIFICATION"
.LASF233:
	.string	"tSMP_SM_TBL"
.LASF121:
	.string	"BTM_EIR_UUID_SERVCLASS_HCRP_PRINT"
.LASF86:
	.string	"req_oob_type"
.LASF97:
	.string	"BTM_EIR_UUID_SERVCLASS_HEADSET"
.LASF331:
	.string	"smp_slave_wait_for_app_response_table"
.LASF183:
	.string	"cb_evt"
.LASF113:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING_REF_OBJECTS"
.LASF44:
	.string	"param"
.LASF147:
	.string	"SMP_STATE_SEC_REQ_PENDING"
.LASF355:
	.string	"_tle"
.LASF137:
	.string	"BTM_PM_STS_HOLD"
.LASF47:
	.string	"in_use"
.LASF49:
	.string	"tSMP_EVT"
.LASF108:
	.string	"BTM_EIR_UUID_SERVCLASS_GN"
.LASF78:
	.string	"addr_rcvd_from"
.LASF142:
	.string	"BTM_PM_STS_ERROR"
.LASF285:
	.string	"SMP_PH2_DHKEY_CHECKS_ARE_PRESENT"
.LASF57:
	.string	"tSMP_SC_KEY_TYPE"
.LASF282:
	.string	"SMP_MATCH_DHKEY_CHECKS"
.LASF19:
	.string	"BOOLEAN"
.LASF255:
	.string	"SMP_PROC_IO_RSP"
.LASF196:
	.string	"loc_publ_key"
.LASF131:
	.string	"BTM_EIR_UUID_SERVCLASS_MESSAGE_ACCESS"
.LASF232:
	.string	"tSMP_ACT"
.LASF212:
	.string	"number_to_display"
.LASF185:
	.string	"confirm"
.LASF12:
	.string	"uint16_t"
.LASF60:
	.string	"auth_req"
.LASF145:
	.string	"SMP_STATE_IDLE"
.LASF7:
	.string	"__uint32_t"
.LASF234:
	.string	"SMP_PROC_SEC_REQ"
.LASF194:
	.string	"dhkey_check"
.LASF272:
	.string	"SMP_HAVE_BOTH_PUBLIC_KEYS"
.LASF309:
	.string	"bd_addr_null"
.LASF350:
	.string	"smp_state_name"
.LASF248:
	.string	"SMP_PROC_MASTER_ID"
.LASF292:
	.string	"SMP_SET_LOCAL_OOB_RAND_COMMITMENT"
.LASF246:
	.string	"SMP_PROC_RAND"
.LASF143:
	.string	"tSMP_ASSO_MODEL"
.LASF242:
	.string	"SMP_SEND_LTK_REPLY"
.LASF187:
	.string	"rrand"
.LASF2:
	.string	"short int"
.LASF72:
	.string	"randomizer"
.LASF117:
	.string	"BTM_EIR_UUID_SERVCLASS_BASIC_PRINTING"
.LASF250:
	.string	"SMP_PROC_ID_ADDR"
.LASF104:
	.string	"BTM_EIR_UUID_SERVCLASS_FAX"
.LASF311:
	.string	"smp_master_entry_map"
.LASF30:
	.string	"long int"
.LASF122:
	.string	"BTM_EIR_UUID_SERVCLASS_HCRP_SCAN"
.LASF180:
	.string	"status"
.LASF230:
	.string	"wait_for_authorization_complete"
.LASF17:
	.string	"UINT32"
.LASF245:
	.string	"SMP_PROC_CONFIRM"
.LASF61:
	.string	"max_key_size"
.LASF28:
	.string	"tBLE_BD_ADDR"
.LASF77:
	.string	"tSMP_LOC_OOB_DATA"
.LASF302:
	.string	"action"
.LASF167:
	.string	"tSMP_KEY"
.LASF253:
	.string	"SMP_PROC_SL_KEY"
.LASF279:
	.string	"SMP_SEND_DHKEY_CHECK"
.LASF306:
	.string	"smp_get_state_name"
.LASF301:
	.string	"state_table"
.LASF261:
	.string	"SMP_PAIRING_CMPL"
.LASF3:
	.string	"__uint8_t"
.LASF114:
	.string	"BTM_EIR_UUID_SERVCLASS_HF_HANDSFREE"
.LASF210:
	.string	"peer_keypress_notification"
.LASF177:
	.string	"id_addr"
.LASF320:
	.string	"smp_master_sec_conn_phs1_start_table"
.LASF270:
	.string	"SMP_SEND_PAIR_PUBLIC_KEY"
.LASF179:
	.string	"failure"
.LASF294:
	.string	"SMP_FAST_CONN_PARAM"
.LASF151:
	.string	"SMP_STATE_RAND"
.LASF75:
	.string	"private_key_used"
.LASF40:
	.string	"p_prev"
.LASF43:
	.string	"ticks_initial"
.LASF94:
	.string	"BTM_EIR_UUID_SERVCLASS_OBEX_OBJECT_PUSH"
.LASF21:
	.string	"sizetype"
.LASF207:
	.string	"le_secure_connections_mode_is_used"
.LASF31:
	.string	"long unsigned int"
.LASF106:
	.string	"BTM_EIR_UUID_SERVCLASS_PANU"
.LASF298:
	.string	"smp_sm_event"
.LASF330:
	.string	"smp_slave_idle_table"
.LASF37:
	.string	"ESP_LOG_VERBOSE"
.LASF76:
	.string	"publ_key_used"
.LASF241:
	.string	"SMP_SEND_ID_INFO"
.LASF13:
	.string	"int32_t"
.LASF98:
	.string	"BTM_EIR_UUID_SERVCLASS_CORDLESS_TELEPHONY"
.LASF199:
	.string	"peer_io_caps"
.LASF247:
	.string	"SMP_PROC_ENC_INFO"
.LASF129:
	.string	"BTM_EIR_UUID_SERVCLASS_VIDEO_SOURCE"
.LASF300:
	.string	"curr_state"
.LASF266:
	.string	"SMP_ENC_CMPL"
.LASF164:
	.string	"tSMP_BR_STATE"
.LASF171:
	.string	"trace_level"
.LASF116:
	.string	"BTM_EIR_UUID_SERVCLASS_DIR_PRT_REF_OBJ_SERVICE"
.LASF65:
	.string	"reason"
.LASF95:
	.string	"BTM_EIR_UUID_SERVCLASS_OBEX_FILE_TRANSFER"
.LASF214:
	.string	"peer_enc_size"
.LASF204:
	.string	"loc_auth_req"
.LASF356:
	.string	"smp_get_state"
.LASF27:
	.string	"type"
.LASF244:
	.string	"SMP_PROC_PAIR_FAIL"
.LASF123:
	.string	"BTM_EIR_UUID_SERVCLASS_SAP"
.LASF1:
	.string	"unsigned char"
.LASF239:
	.string	"SMP_SEND_RAND"
.LASF223:
	.string	"rand_enc_proc_state"
.LASF333:
	.string	"smp_slave_pair_request_response_table"
.LASF271:
	.string	"SMP_PROCESS_PAIR_PUBLIC_KEY"
.LASF111:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING_RESPONDER"
.LASF51:
	.string	"tSMP_IO_CAP"
.LASF107:
	.string	"BTM_EIR_UUID_SERVCLASS_NAP"
.LASF341:
	.string	"smp_slave_sec_conn_phs2_start_table"
.LASF340:
	.string	"smp_slave_wait_nonce_table"
.LASF105:
	.string	"BTM_EIR_UUID_SERVCLASS_HEADSET_AUDIO_GATEWAY"
.LASF156:
	.string	"SMP_STATE_SEC_CONN_PHS2_START"
.LASF200:
	.string	"local_io_capability"
.LASF280:
	.string	"SMP_PROCESS_DHKEY_CHECK"
.LASF124:
	.string	"BTM_EIR_UUID_SERVCLASS_PBAP_PCE"
.LASF80:
	.string	"loc_oob_data"
.LASF312:
	.string	"smp_all_table"
.LASF342:
	.string	"smp_slave_wait_dhk_check_table"
.LASF173:
	.string	"state"
.LASF211:
	.string	"round"
.LASF213:
	.string	"mac_key"
.LASF347:
	.string	"smp_state_table"
.LASF275:
	.string	"SMP_SEND_COMMITMENT"
.LASF36:
	.string	"ESP_LOG_DEBUG"
.LASF220:
	.string	"csrk"
.LASF216:
	.string	"peer_i_key"
.LASF263:
	.string	"SMP_SEND_APP_CBACK"
.LASF238:
	.string	"SMP_SEND_PAIR_FAIL"
.LASF55:
	.string	"tSMP_SEC_LEVEL"
.LASF71:
	.string	"present"
.LASF109:
	.string	"BTM_EIR_UUID_SERVCLASS_DIRECT_PRINTING"
.LASF231:
	.string	"tSMP_CB"
.LASF139:
	.string	"BTM_PM_STS_PARK"
.LASF0:
	.string	"signed char"
.LASF25:
	.string	"BT_OCTET32"
.LASF125:
	.string	"BTM_EIR_UUID_SERVCLASS_PBAP_PSE"
.LASF53:
	.string	"tSMP_OOB_DATA_TYPE"
.LASF170:
	.string	"rsp_timer_ent"
.LASF5:
	.string	"short unsigned int"
.LASF58:
	.string	"io_cap"
.LASF90:
	.string	"BTM_EIR_UUID_SERVCLASS_SERIAL_PORT"
.LASF163:
	.string	"tSMP_STATE"
.LASF332:
	.string	"smp_slave_sec_request_table"
.LASF227:
	.string	"rcvd_cmd_code"
.LASF228:
	.string	"rcvd_cmd_len"
.LASF154:
	.string	"SMP_STATE_WAIT_COMMITMENT"
.LASF134:
	.string	"BTM_EIR_UUID_SERVCLASS_HDP_SINK"
.LASF325:
	.string	"smp_master_dhk_check_table"
.LASF15:
	.string	"UINT8"
.LASF276:
	.string	"SMP_PROCESS_PAIRING_COMMITMENT"
.LASF229:
	.string	"total_tx_unacked"
.LASF85:
	.string	"cmplt"
.LASF274:
	.string	"SMP_PROCESS_LOCAL_NONCE"
.LASF321:
	.string	"smp_master_wait_commitment_table"
.LASF295:
	.string	"SMP_SM_NO_ACTION"
.LASF130:
	.string	"BTM_EIR_UUID_SERVCLASS_VIDEO_SINK"
.LASF353:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/smp/smp_main.c"
.LASF225:
	.string	"local_bda"
.LASF205:
	.string	"secure_connections_only_mode_required"
.LASF141:
	.string	"BTM_PM_STS_PENDING"
.LASF206:
	.string	"selected_association_model"
.LASF33:
	.string	"ESP_LOG_ERROR"
.LASF267:
	.string	"SMP_PROC_DISCARD"
.LASF135:
	.string	"BTM_EIR_MAX_SERVICES"
.LASF209:
	.string	"local_keypress_notification"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
