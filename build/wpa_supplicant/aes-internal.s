	.file	"aes-internal.c"
	.text
.Ltext0:
	.section	.text.rijndaelKeySetupEnc,"ax",@progbits
	.literal_position
	.literal .LC0, Te0
	.literal .LC1, -16777216
	.literal .LC2, 16711680
	.literal .LC3, 65280
	.literal .LC4, rcons
	.align	4
	.global	rijndaelKeySetupEnc
	.type	rijndaelKeySetupEnc, @function
rijndaelKeySetupEnc:
.LFB2:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/crypto/aes-internal.c"
	.loc 1 789 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 793 0
	l8ui	a9, a3, 0
	slli	a9, a9, 24
	l8ui	a8, a3, 1
	slli	a8, a8, 16
	xor	a9, a9, a8
	l8ui	a8, a3, 2
	slli	a8, a8, 8
	xor	a8, a9, a8
	l8ui	a9, a3, 3
	xor	a8, a8, a9
	s32i.n	a8, a2, 0
	.loc 1 794 0
	l8ui	a9, a3, 4
	slli	a9, a9, 24
	l8ui	a8, a3, 5
	slli	a8, a8, 16
	xor	a9, a9, a8
	l8ui	a8, a3, 6
	slli	a8, a8, 8
	xor	a8, a9, a8
	l8ui	a9, a3, 7
	xor	a8, a8, a9
	s32i.n	a8, a2, 4
	.loc 1 795 0
	l8ui	a9, a3, 8
	slli	a9, a9, 24
	l8ui	a8, a3, 9
	slli	a8, a8, 16
	xor	a9, a9, a8
	l8ui	a8, a3, 10
	slli	a8, a8, 8
	xor	a8, a9, a8
	l8ui	a9, a3, 11
	xor	a8, a8, a9
	s32i.n	a8, a2, 8
	.loc 1 796 0
	l8ui	a9, a3, 12
	slli	a9, a9, 24
	l8ui	a8, a3, 13
	slli	a8, a8, 16
	xor	a9, a9, a8
	l8ui	a8, a3, 14
	slli	a8, a8, 8
	xor	a8, a9, a8
	l8ui	a9, a3, 15
	xor	a8, a8, a9
	s32i.n	a8, a2, 12
	.loc 1 798 0
	bnei	a4, 128, .L16
	j	.L11
.LVL1:
.L4:
	.loc 1 800 0 discriminator 3
	l32i.n	a10, a2, 12
.LVL2:
	.loc 1 801 0 discriminator 3
	l32i.n	a9, a2, 0
	extui	a3, a10, 16, 8
	l32r	a13, .LC0
	addx4	a3, a3, a13
	l32i.n	a8, a3, 0
	slli	a8, a8, 8
	l32r	a3, .LC1
	and	a8, a8, a3
	xor	a8, a9, a8
	extui	a3, a10, 8, 8
	addx4	a3, a3, a13
	l32i.n	a9, a3, 0
	l32r	a3, .LC2
	and	a3, a9, a3
	xor	a9, a8, a3
	.loc 1 802 0 discriminator 3
	extui	a3, a10, 0, 8
	addx4	a3, a3, a13
	l32i.n	a8, a3, 0
	l32r	a11, .LC3
	and	a3, a8, a11
	.loc 1 801 0 discriminator 3
	xor	a8, a9, a3
	.loc 1 802 0 discriminator 3
	extui	a3, a10, 24, 8
	addx4	a13, a3, a13
	l8ui	a9, a13, 1
	xor	a9, a8, a9
	l32r	a3, .LC4
	add.n	a3, a3, a12
	l8ui	a8, a3, 0
	slli	a8, a8, 24
	xor	a8, a8, a9
	.loc 1 801 0 discriminator 3
	s32i.n	a8, a2, 16
	.loc 1 803 0 discriminator 3
	l32i.n	a3, a2, 4
	xor	a3, a8, a3
	s32i.n	a3, a2, 20
	.loc 1 804 0 discriminator 3
	l32i.n	a8, a2, 8
	xor	a3, a3, a8
	s32i.n	a3, a2, 24
	.loc 1 805 0 discriminator 3
	xor	a3, a10, a3
	s32i.n	a3, a2, 28
	.loc 1 806 0 discriminator 3
	addi	a2, a2, 16
.LVL3:
	.loc 1 799 0 discriminator 3
	addi.n	a12, a12, 1
.LVL4:
	j	.L2
.LVL5:
.L11:
	movi.n	a12, 0
.LVL6:
.L2:
	.loc 1 799 0 is_stmt 0 discriminator 1
	movi.n	a3, 9
	bge	a3, a12, .L4
	.loc 1 808 0 is_stmt 1
	movi.n	a2, 0xa
.LVL7:
	retw.n
.LVL8:
.L16:
	.loc 1 811 0
	l8ui	a9, a3, 16
	slli	a9, a9, 24
	l8ui	a8, a3, 17
	slli	a8, a8, 16
	xor	a9, a9, a8
	l8ui	a8, a3, 18
	slli	a8, a8, 8
	xor	a8, a9, a8
	l8ui	a9, a3, 19
	xor	a8, a8, a9
	s32i.n	a8, a2, 16
	.loc 1 812 0
	l8ui	a9, a3, 20
	slli	a9, a9, 24
	l8ui	a8, a3, 21
	slli	a8, a8, 16
	xor	a9, a9, a8
	l8ui	a8, a3, 22
	slli	a8, a8, 8
	xor	a8, a9, a8
	l8ui	a9, a3, 23
	xor	a8, a8, a9
	s32i.n	a8, a2, 20
	.loc 1 814 0
	movi	a8, 0xc0
	bne	a4, a8, .L7
	j	.L12
.LVL9:
.L8:
	.loc 1 816 0
	l32i.n	a13, a2, 20
.LVL10:
	.loc 1 817 0
	l32i.n	a9, a2, 0
	extui	a10, a13, 16, 8
	l32r	a14, .LC0
	addx4	a10, a10, a14
	l32i.n	a8, a10, 0
	slli	a8, a8, 8
	l32r	a10, .LC1
	and	a8, a8, a10
	xor	a9, a9, a8
	extui	a8, a13, 8, 8
	addx4	a8, a8, a14
	l32i.n	a11, a8, 0
	l32r	a10, .LC2
	and	a8, a11, a10
	xor	a11, a9, a8
	.loc 1 818 0
	extui	a8, a13, 0, 8
	addx4	a8, a8, a14
	l32i.n	a9, a8, 0
	l32r	a10, .LC3
	and	a9, a9, a10
	.loc 1 817 0
	xor	a9, a11, a9
	.loc 1 818 0
	extui	a8, a13, 24, 8
	addx4	a14, a8, a14
	l8ui	a8, a14, 1
	xor	a9, a9, a8
	l32r	a8, .LC4
	add.n	a8, a8, a12
	l8ui	a8, a8, 0
	slli	a8, a8, 24
	xor	a8, a8, a9
	.loc 1 817 0
	s32i.n	a8, a2, 24
	.loc 1 819 0
	l32i.n	a9, a2, 4
	xor	a8, a8, a9
	s32i.n	a8, a2, 28
	.loc 1 820 0
	l32i.n	a9, a2, 8
	xor	a8, a8, a9
	s32i.n	a8, a2, 32
	.loc 1 821 0
	l32i.n	a9, a2, 12
	xor	a8, a8, a9
	s32i.n	a8, a2, 36
	.loc 1 822 0
	beqi	a12, 7, .L13
	.loc 1 824 0 discriminator 2
	l32i.n	a9, a2, 16
	xor	a8, a8, a9
	s32i.n	a8, a2, 40
	.loc 1 825 0 discriminator 2
	xor	a8, a13, a8
	s32i.n	a8, a2, 44
	.loc 1 826 0 discriminator 2
	addi	a2, a2, 24
.LVL11:
	.loc 1 815 0 discriminator 2
	addi.n	a12, a12, 1
.LVL12:
	j	.L6
.LVL13:
.L12:
	movi.n	a12, 0
.L6:
.LVL14:
	.loc 1 815 0 is_stmt 0 discriminator 1
	blti	a12, 8, .L8
.LVL15:
.L7:
	.loc 1 830 0 is_stmt 1
	l8ui	a9, a3, 24
	slli	a9, a9, 24
	l8ui	a8, a3, 25
	slli	a8, a8, 16
	xor	a9, a9, a8
	l8ui	a8, a3, 26
	slli	a8, a8, 8
	xor	a8, a9, a8
	l8ui	a9, a3, 27
	xor	a8, a8, a9
	s32i.n	a8, a2, 24
	.loc 1 831 0
	l8ui	a9, a3, 28
	slli	a9, a9, 24
	l8ui	a8, a3, 29
	slli	a8, a8, 16
	xor	a9, a9, a8
	l8ui	a8, a3, 30
	slli	a8, a8, 8
	xor	a8, a9, a8
	l8ui	a3, a3, 31
.LVL16:
	xor	a8, a8, a3
	s32i.n	a8, a2, 28
	.loc 1 833 0
	beqi	a4, 256, .L14
	.loc 1 853 0
	movi.n	a2, -1
.LVL17:
	retw.n
.LVL18:
.L10:
	.loc 1 835 0
	l32i.n	a10, a2, 28
.LVL19:
	.loc 1 836 0
	l32i.n	a3, a2, 0
	extui	a9, a10, 16, 8
	l32r	a12, .LC0
	addx4	a9, a9, a12
	l32i.n	a8, a9, 0
	slli	a8, a8, 8
	l32r	a9, .LC1
	and	a8, a8, a9
	xor	a8, a3, a8
	extui	a3, a10, 8, 8
	addx4	a3, a3, a12
	l32i.n	a3, a3, 0
	l32r	a9, .LC2
	and	a3, a3, a9
	xor	a8, a8, a3
	.loc 1 837 0
	extui	a3, a10, 0, 8
	addx4	a3, a3, a12
	l32i.n	a3, a3, 0
	l32r	a9, .LC3
	and	a3, a3, a9
	.loc 1 836 0
	xor	a8, a8, a3
	.loc 1 837 0
	extui	a3, a10, 24, 8
	addx4	a12, a3, a12
	l8ui	a3, a12, 1
	xor	a8, a8, a3
	l32r	a3, .LC4
	add.n	a3, a3, a11
	l8ui	a3, a3, 0
	slli	a3, a3, 24
	xor	a3, a3, a8
	.loc 1 836 0
	s32i.n	a3, a2, 32
	.loc 1 838 0
	l32i.n	a8, a2, 4
	xor	a3, a3, a8
	s32i.n	a3, a2, 36
	.loc 1 839 0
	l32i.n	a8, a2, 8
	xor	a3, a3, a8
	s32i.n	a3, a2, 40
	.loc 1 840 0
	l32i.n	a4, a2, 12
	xor	a3, a3, a4
	s32i.n	a3, a2, 44
	.loc 1 841 0
	beqi	a11, 6, .L15
.LVL20:
	.loc 1 844 0 discriminator 2
	l32i.n	a12, a2, 16
	extui	a9, a3, 24, 8
	l32r	a14, .LC0
	addx4	a9, a9, a14
	l32i.n	a8, a9, 0
	slli	a8, a8, 8
	l32r	a9, .LC1
	and	a8, a8, a9
	xor	a13, a12, a8
	extui	a8, a3, 16, 8
	addx4	a8, a8, a14
	l32i.n	a8, a8, 0
	l32r	a9, .LC2
	and	a8, a8, a9
	xor	a12, a13, a8
	.loc 1 845 0 discriminator 2
	extui	a8, a3, 8, 8
	addx4	a8, a8, a14
	l32i.n	a8, a8, 0
	l32r	a9, .LC3
	and	a8, a8, a9
	.loc 1 844 0 discriminator 2
	xor	a8, a12, a8
	.loc 1 845 0 discriminator 2
	extui	a3, a3, 0, 8
.LVL21:
	addx4	a3, a3, a14
	l8ui	a3, a3, 1
	xor	a8, a8, a3
	.loc 1 844 0 discriminator 2
	s32i.n	a8, a2, 48
	.loc 1 846 0 discriminator 2
	l32i.n	a9, a2, 20
	xor	a8, a8, a9
	s32i.n	a8, a2, 52
	.loc 1 847 0 discriminator 2
	l32i.n	a3, a2, 24
	xor	a3, a8, a3
	s32i.n	a3, a2, 56
	.loc 1 848 0 discriminator 2
	xor	a10, a10, a3
	s32i.n	a10, a2, 60
	.loc 1 849 0 discriminator 2
	addi	a2, a2, 32
.LVL22:
	.loc 1 834 0 discriminator 2
	addi.n	a11, a11, 1
.LVL23:
	j	.L9
.LVL24:
.L14:
	movi.n	a11, 0
.LVL25:
.L9:
	.loc 1 834 0 is_stmt 0 discriminator 1
	blti	a11, 7, .L10
	.loc 1 853 0 is_stmt 1
	movi.n	a2, -1
.LVL26:
	retw.n
.LVL27:
.L13:
	.loc 1 823 0
	movi.n	a2, 0xc
.LVL28:
	retw.n
.LVL29:
.L15:
	.loc 1 842 0
	movi.n	a2, 0xe
.LVL30:
	.loc 1 854 0
	retw.n
.LFE2:
	.size	rijndaelKeySetupEnc, .-rijndaelKeySetupEnc
	.global	rcons
	.section	.rodata.rcons,"a",@progbits
	.align	4
	.type	rcons, @object
	.size	rcons, 10
rcons:
	.byte	1
	.byte	2
	.byte	4
	.byte	8
	.byte	16
	.byte	32
	.byte	64
	.byte	-128
	.byte	27
	.byte	54
	.global	Td4s
	.section	.rodata.Td4s,"a",@progbits
	.align	4
	.type	Td4s, @object
	.size	Td4s, 256
Td4s:
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
	.global	Td0
	.section	.rodata.Td0,"a",@progbits
	.align	4
	.type	Td0, @object
	.size	Td0, 1024
Td0:
	.word	1374988112
	.word	2118214995
	.word	437757123
	.word	975658646
	.word	1001089995
	.word	530400753
	.word	-1392879445
	.word	1273168787
	.word	540080725
	.word	-1384747530
	.word	-1999866223
	.word	-184398811
	.word	1340463100
	.word	-987051049
	.word	641025152
	.word	-1251826801
	.word	-558802359
	.word	632953703
	.word	1172967064
	.word	1576976609
	.word	-1020300030
	.word	-2125664238
	.word	-1924753501
	.word	1809054150
	.word	59727847
	.word	361929877
	.word	-1083344149
	.word	-1789765158
	.word	-725712083
	.word	1484005843
	.word	1239443753
	.word	-1899378620
	.word	1975683434
	.word	-191989384
	.word	-1722270101
	.word	666464733
	.word	-1092530250
	.word	-259478249
	.word	-920605594
	.word	2110667444
	.word	1675577880
	.word	-451268222
	.word	-1756286112
	.word	1649639237
	.word	-1318815776
	.word	-1150570876
	.word	-25059300
	.word	-116905068
	.word	1883793496
	.word	-1891238631
	.word	-1797362553
	.word	1383856311
	.word	-1418472669
	.word	1917518562
	.word	-484470953
	.word	1716890410
	.word	-1293211641
	.word	800440835
	.word	-2033878118
	.word	-751368027
	.word	807962610
	.word	599762354
	.word	33778362
	.word	-317291940
	.word	-1966138325
	.word	-1485196142
	.word	-217582864
	.word	1315562145
	.word	1708848333
	.word	101039829
	.word	-785096161
	.word	-995688822
	.word	875451293
	.word	-1561111136
	.word	92987698
	.word	-1527321739
	.word	193195065
	.word	1080094634
	.word	1584504582
	.word	-1116860335
	.word	1042385657
	.word	-1763899843
	.word	-583137874
	.word	1306967366
	.word	-1856729675
	.word	1908694277
	.word	67556463
	.word	1615861247
	.word	429456164
	.word	-692196969
	.word	-1992277044
	.word	1742315127
	.word	-1326955843
	.word	126454664
	.word	-417768648
	.word	2043211483
	.word	-1585706425
	.word	2084704233
	.word	-125559095
	.word	0
	.word	159417987
	.word	841739592
	.word	504459436
	.word	1817866830
	.word	-49348613
	.word	260388950
	.word	1034867998
	.word	908933415
	.word	168810852
	.word	1750902305
	.word	-1688513327
	.word	607530554
	.word	202008497
	.word	-1822955761
	.word	-1259432238
	.word	463180190
	.word	-2134850225
	.word	1641816226
	.word	1517767529
	.word	470948374
	.word	-493635062
	.word	-1063245083
	.word	1008918595
	.word	303765277
	.word	235474187
	.word	-225720403
	.word	766945465
	.word	337553864
	.word	1475418501
	.word	-1351284916
	.word	-291906117
	.word	-1551933187
	.word	-150919521
	.word	1551037884
	.word	1147550661
	.word	1543208500
	.word	-1958532746
	.word	-886847780
	.word	-1225917336
	.word	-1192955549
	.word	-684598070
	.word	1113818384
	.word	328671808
	.word	-2067394272
	.word	-2058738563
	.word	-759480840
	.word	-1359400431
	.word	-953573011
	.word	496906059
	.word	-592301837
	.word	226906860
	.word	2009195472
	.word	733156972
	.word	-1452230247
	.word	294930682
	.word	1206477858
	.word	-1459843900
	.word	-1594867942
	.word	1451044056
	.word	573804783
	.word	-2025238841
	.word	-650587711
	.word	-1932877058
	.word	-1730933962
	.word	-1493859889
	.word	-1518674392
	.word	-625504730
	.word	1068351396
	.word	742039012
	.word	1350078989
	.word	1784663195
	.word	1417561698
	.word	-158526526
	.word	-1864845080
	.word	775550814
	.word	-2101104651
	.word	-1621262146
	.word	1775276924
	.word	1876241833
	.word	-819653965
	.word	-928212677
	.word	270040487
	.word	-392404114
	.word	-616842373
	.word	-853116919
	.word	1851332852
	.word	-325404927
	.word	-2091935064
	.word	-426414491
	.word	-1426069890
	.word	566021896
	.word	-283776794
	.word	-1159226407
	.word	1248802510
	.word	-358676012
	.word	699432150
	.word	832877231
	.word	708780849
	.word	-962227152
	.word	899835584
	.word	1951317047
	.word	-58537306
	.word	-527380304
	.word	866637845
	.word	-251357110
	.word	1106041591
	.word	2144161806
	.word	395441711
	.word	1984812685
	.word	1139781709
	.word	-861254316
	.word	-459930401
	.word	-1630423581
	.word	1282050075
	.word	-1054072904
	.word	1181045119
	.word	-1654724092
	.word	25965917
	.word	-91786125
	.word	-83148498
	.word	-1285087910
	.word	-1831087534
	.word	-384805325
	.word	1842759443
	.word	-1697160820
	.word	933301370
	.word	1509430414
	.word	-351060855
	.word	-827774994
	.word	-1218328267
	.word	-518199827
	.word	2051518780
	.word	-1663901863
	.word	1441952575
	.word	404016761
	.word	1942435775
	.word	1408749034
	.word	1610459739
	.word	-549621996
	.word	2017778566
	.word	-894438527
	.word	-1184316354
	.word	941896748
	.word	-1029488545
	.word	371049330
	.word	-1126030068
	.word	675039627
	.word	-15887039
	.word	967311729
	.word	135050206
	.word	-659233636
	.word	1683407248
	.word	2076935265
	.word	-718096784
	.word	1215061108
	.word	-793225406
	.global	Te0
	.section	.rodata.Te0,"a",@progbits
	.align	4
	.type	Te0, @object
	.size	Te0, 1024
Te0:
	.word	-966564955
	.word	-126059388
	.word	-294160487
	.word	-159679603
	.word	-855539
	.word	-697603139
	.word	-563122255
	.word	-1849309868
	.word	1613770832
	.word	33620227
	.word	-832084055
	.word	1445669757
	.word	-402719207
	.word	-1244145822
	.word	1303096294
	.word	-327780710
	.word	-1882535355
	.word	528646813
	.word	-1983264448
	.word	-92439161
	.word	-268764651
	.word	-1302767125
	.word	-1907931191
	.word	-68095989
	.word	1101901292
	.word	-1277897625
	.word	1604494077
	.word	1169141738
	.word	597466303
	.word	1403299063
	.word	-462261610
	.word	-1681866661
	.word	1974974402
	.word	-503448292
	.word	1033081774
	.word	1277568618
	.word	1815492186
	.word	2118074177
	.word	-168298750
	.word	-2083730353
	.word	1748251740
	.word	1369810420
	.word	-773462732
	.word	-101584632
	.word	-495881837
	.word	-1411852173
	.word	1647391059
	.word	706024767
	.word	134480908
	.word	-1782069422
	.word	1176707941
	.word	-1648114850
	.word	806885416
	.word	932615841
	.word	168101135
	.word	798661301
	.word	235341577
	.word	605164086
	.word	461406363
	.word	-538779075
	.word	-840176858
	.word	1311188841
	.word	2142417613
	.word	-361400929
	.word	302582043
	.word	495158174
	.word	1479289972
	.word	874125870
	.word	907746093
	.word	-596742478
	.word	-1269146898
	.word	1537253627
	.word	-1538108682
	.word	1983593293
	.word	-1210657183
	.word	2108928974
	.word	1378429307
	.word	-572267714
	.word	1580150641
	.word	327451799
	.word	-1504488459
	.word	-1177431704
	.word	0
	.word	-1041371860
	.word	1075847264
	.word	-469959649
	.word	2041688520
	.word	-1235526675
	.word	-731223362
	.word	-1916023994
	.word	1740553945
	.word	1916352843
	.word	-1807070498
	.word	-1739830060
	.word	-1336387352
	.word	-2049978550
	.word	-1143943061
	.word	-974131414
	.word	1336584933
	.word	-302253290
	.word	-2042412091
	.word	-1706209833
	.word	1714631509
	.word	293963156
	.word	-1975171633
	.word	-369493744
	.word	67240454
	.word	-25198719
	.word	-1605349136
	.word	2017213508
	.word	631218106
	.word	1269344483
	.word	-1571728909
	.word	1571005438
	.word	-2143272768
	.word	93294474
	.word	1066570413
	.word	563977660
	.word	1882732616
	.word	-235539196
	.word	1673313503
	.word	2008463041
	.word	-1344611723
	.word	1109467491
	.word	537923632
	.word	-436207846
	.word	-34344178
	.word	-1076702611
	.word	-2117218996
	.word	403442708
	.word	638784309
	.word	-1007883217
	.word	-1101045791
	.word	899127202
	.word	-2008791860
	.word	773265209
	.word	-1815821225
	.word	1437050866
	.word	-58818942
	.word	2050833735
	.word	-932944724
	.word	-1168286233
	.word	840505643
	.word	-428641387
	.word	-1067425632
	.word	427917720
	.word	-1638969391
	.word	-1545806721
	.word	1143087718
	.word	1412049534
	.word	999329963
	.word	193497219
	.word	-1941551414
	.word	-940642775
	.word	1807268051
	.word	672404540
	.word	-1478566279
	.word	-1134666014
	.word	369822493
	.word	-1378100362
	.word	-606019525
	.word	1681011286
	.word	1949973070
	.word	336202270
	.word	-1840690725
	.word	201721354
	.word	1210328172
	.word	-1201906460
	.word	-1614626211
	.word	-1110191250
	.word	1135389935
	.word	-1000185178
	.word	965841320
	.word	831886756
	.word	-739974089
	.word	-226920053
	.word	-706222286
	.word	-1949775805
	.word	1849112409
	.word	-630362697
	.word	26054028
	.word	-1311386268
	.word	-1672589614
	.word	1235855840
	.word	-663982924
	.word	-1403627782
	.word	-202050553
	.word	-806688219
	.word	-899324497
	.word	-193299826
	.word	1202630377
	.word	268961816
	.word	1874508501
	.word	-260540280
	.word	1243948399
	.word	1546530418
	.word	941366308
	.word	1470539505
	.word	1941222599
	.word	-1748580783
	.word	-873928669
	.word	-1579295364
	.word	-395021156
	.word	1042226977
	.word	-1773450275
	.word	1639824860
	.word	227249030
	.word	260737669
	.word	-529502064
	.word	2084453954
	.word	1907733956
	.word	-865704278
	.word	-1874310952
	.word	100860677
	.word	-134810111
	.word	470683154
	.word	-1033805405
	.word	1781871967
	.word	-1370007559
	.word	1773779408
	.word	394692241
	.word	-1715355304
	.word	974986535
	.word	664706745
	.word	-639508168
	.word	-336005101
	.word	731420851
	.word	571543859
	.word	-764843589
	.word	-1445340816
	.word	126783113
	.word	865375399
	.word	765172662
	.word	1008606754
	.word	361203602
	.word	-907417312
	.word	-2016489911
	.word	-1437248001
	.word	1344809080
	.word	-1512054918
	.word	59542671
	.word	1503764984
	.word	160008576
	.word	437062935
	.word	1707065306
	.word	-672733647
	.word	-2076032314
	.word	-798463816
	.word	-2109652541
	.word	697932208
	.word	1512910199
	.word	504303377
	.word	2075177163
	.word	-1470868228
	.word	1841019862
	.word	739644986
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
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI0-.LFB2
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/crypto/common.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1bb
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF20
	.byte	0xc
	.4byte	.LASF21
	.4byte	.LASF22
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
	.byte	0x15
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x3
	.byte	0x2d
	.4byte	0x53
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
	.uleb128 0x5
	.string	"u32"
	.byte	0x4
	.byte	0xa6
	.4byte	0x7e
	.uleb128 0x5
	.string	"u8"
	.byte	0x4
	.byte	0xa8
	.4byte	0x73
	.uleb128 0x6
	.4byte	.LASF23
	.byte	0x1
	.2byte	0x314
	.4byte	0x4c
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x122
	.uleb128 0x7
	.string	"rk"
	.byte	0x1
	.2byte	0x314
	.4byte	0x122
	.4byte	.LLST0
	.uleb128 0x8
	.4byte	.LASF15
	.byte	0x1
	.2byte	0x314
	.4byte	0x128
	.4byte	.LLST1
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0x1
	.2byte	0x314
	.4byte	0x4c
	.4byte	.LLST2
	.uleb128 0x9
	.string	"i"
	.byte	0x1
	.2byte	0x316
	.4byte	0x4c
	.4byte	.LLST3
	.uleb128 0xa
	.4byte	.LASF17
	.byte	0x1
	.2byte	0x317
	.4byte	0xa5
	.4byte	.LLST4
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0xa5
	.uleb128 0xb
	.byte	0x4
	.4byte	0x12e
	.uleb128 0xc
	.4byte	0xb0
	.uleb128 0xd
	.4byte	0xa5
	.4byte	0x143
	.uleb128 0xe
	.4byte	0x90
	.byte	0xff
	.byte	0
	.uleb128 0xf
	.string	"Te0"
	.byte	0x1
	.byte	0x49
	.4byte	0x154
	.uleb128 0x5
	.byte	0x3
	.4byte	Te0
	.uleb128 0xc
	.4byte	0x133
	.uleb128 0x10
	.string	"Td0"
	.byte	0x1
	.2byte	0x196
	.4byte	0x16b
	.uleb128 0x5
	.byte	0x3
	.4byte	Td0
	.uleb128 0xc
	.4byte	0x133
	.uleb128 0xd
	.4byte	0xb0
	.4byte	0x180
	.uleb128 0xe
	.4byte	0x90
	.byte	0xff
	.byte	0
	.uleb128 0x11
	.4byte	.LASF18
	.byte	0x1
	.2byte	0x2e8
	.4byte	0x192
	.uleb128 0x5
	.byte	0x3
	.4byte	Td4s
	.uleb128 0xc
	.4byte	0x170
	.uleb128 0xd
	.4byte	0xb0
	.4byte	0x1a7
	.uleb128 0xe
	.4byte	0x90
	.byte	0x9
	.byte	0
	.uleb128 0x11
	.4byte	.LASF19
	.byte	0x1
	.2byte	0x30a
	.4byte	0x1b9
	.uleb128 0x5
	.byte	0x3
	.4byte	rcons
	.uleb128 0xc
	.4byte	0x197
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
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL3
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL8
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL18
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL1
	.4byte	.LVL5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL16
	.4byte	.LVL27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL29
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL18
	.4byte	.LVL24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL25
	.4byte	.LVL27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL29
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL1
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL9
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL18
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL25
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL27
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL29
	.4byte	.LFE2
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL2
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL10
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x2
	.byte	0x72
	.sleb128 44
	.4byte	.LVL22
	.4byte	.LVL24
	.2byte	0x2
	.byte	0x72
	.sleb128 12
	.4byte	.LVL27
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL29
	.4byte	.LFE2
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF19:
	.string	"rcons"
.LASF4:
	.string	"__uint8_t"
.LASF21:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/crypto/aes-internal.c"
.LASF15:
	.string	"cipherKey"
.LASF20:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF18:
	.string	"Td4s"
.LASF1:
	.string	"unsigned char"
.LASF13:
	.string	"long unsigned int"
.LASF17:
	.string	"temp"
.LASF3:
	.string	"short unsigned int"
.LASF5:
	.string	"__uint32_t"
.LASF6:
	.string	"unsigned int"
.LASF8:
	.string	"long long unsigned int"
.LASF9:
	.string	"uint8_t"
.LASF16:
	.string	"keyBits"
.LASF12:
	.string	"sizetype"
.LASF7:
	.string	"long long int"
.LASF23:
	.string	"rijndaelKeySetupEnc"
.LASF14:
	.string	"char"
.LASF2:
	.string	"short int"
.LASF10:
	.string	"uint32_t"
.LASF11:
	.string	"long int"
.LASF22:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\wpa_supplicant"
.LASF0:
	.string	"signed char"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
