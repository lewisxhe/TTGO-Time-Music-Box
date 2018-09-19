	.file	"synthesis-8-generated.c"
	.text
.Ltext0:
	.section	.text.SynthWindow80_generated,"ax",@progbits
	.literal_position
	.literal .LC0, 32767
	.literal .LC1, -32768
	.literal .LC2, 8235
	.literal .LC3, -23167
	.literal .LC4, 26479
	.literal .LC5, -17397
	.literal .LC6, 9399
	.literal .LC7, 17397
	.literal .LC8, 23167
	.literal .LC9, -3263
	.literal .LC10, 9293
	.literal .LC11, 29293
	.literal .LC12, -6087
	.literal .LC13, -5229
	.literal .LC14, 30835
	.literal .LC15, -2893
	.literal .LC16, -27021
	.literal .LC17, 23671
	.literal .LC18, 31633
	.literal .LC19, 18055
	.literal .LC20, 17319
	.literal .LC21, 11537
	.literal .LC22, 26663
	.literal .LC23, 4555
	.literal .LC24, 12419
	.literal .LC25, -10385
	.literal .LC26, 11167
	.literal .LC27, 24995
	.literal .LC28, -10337
	.literal .LC29, 9161
	.literal .LC30, -30605
	.literal .LC31, -23063
	.literal .LC32, 27561
	.literal .LC33, 9553
	.literal .LC34, 22117
	.literal .LC35, 7543
	.literal .LC36, 8603
	.literal .LC37, -16457
	.literal .LC38, 19083
	.literal .LC39, -8443
	.literal .LC40, -23641
	.literal .LC41, 3687
	.literal .LC42, -29015
	.literal .LC43, -12889
	.literal .LC44, 15447
	.literal .LC45, 24211
	.literal .LC46, -18233
	.literal .LC47, 23469
	.literal .LC48, 9405
	.literal .LC49, 21223
	.literal .LC50, 26913
	.literal .LC51, 26189
	.literal .LC52, 10445
	.literal .LC53, -5297
	.literal .LC54, 22299
	.literal .LC55, 10603
	.literal .LC56, 9539
	.align	4
	.global	SynthWindow80_generated
	.type	SynthWindow80_generated, @function
SynthWindow80_generated:
.LFB5:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/external/sbc/decoder/srce/synthesis-8-generated.c"
	.loc 1 45 0
.LVL0:
	entry	sp, 32
.LCFI0:
.LVL1:
	.loc 1 48 0
	l16si	a11, a3, 24
	l32r	a9, .LC2
	mull	a11, a11, a9
	srai	a11, a11, 3
.LVL2:
	.loc 1 49 0
	l16si	a12, a3, 40
	l32r	a8, .LC3
	mull	a8, a12, a8
	srai	a8, a8, 3
	add.n	a12, a11, a8
.LVL3:
	.loc 1 50 0
	l16si	a11, a3, 56
	l32r	a13, .LC4
	mull	a11, a11, a13
	srai	a11, a11, 2
	add.n	a11, a12, a11
.LVL4:
	.loc 1 51 0
	l16si	a10, a3, 72
	l32r	a8, .LC5
	mull	a10, a10, a8
	addx2	a11, a10, a11
.LVL5:
	.loc 1 52 0
	l16si	a10, a3, 88
	l32r	a12, .LC6
	mull	a8, a10, a12
	addx8	a10, a8, a11
.LVL6:
	.loc 1 53 0
	l16si	a8, a3, 104
	l32r	a12, .LC7
	mull	a8, a8, a12
	addx2	a10, a8, a10
.LVL7:
	.loc 1 54 0
	l16si	a8, a3, 120
	mull	a8, a8, a13
	srai	a8, a8, 2
	add.n	a10, a10, a8
.LVL8:
	.loc 1 55 0
	l16si	a11, a3, 136
	l32r	a8, .LC8
	mull	a8, a11, a8
	srai	a8, a8, 3
	add.n	a10, a10, a8
.LVL9:
	.loc 1 56 0
	l16si	a8, a3, 152
	mull	a8, a8, a9
	srai	a8, a8, 3
	add.n	a8, a10, a8
.LVL10:
	.loc 1 57 0
	l32r	a10, .LC0
	add.n	a9, a8, a10
	movgez	a9, a8, a8
	srai	a8, a9, 15
.LVL11:
	blt	a10, a8, .L10
	.loc 1 57 0 is_stmt 0 discriminator 2
	l32r	a9, .LC1
	blt	a8, a9, .L11
	j	.L2
.L10:
	.loc 1 57 0
	l32r	a8, .LC0
.LVL12:
	j	.L2
.LVL13:
.L11:
	l32r	a8, .LC1
.LVL14:
.L2:
	.loc 1 57 0 discriminator 6
	s16i	a8, a2, 0
.LVL15:
	.loc 1 60 0 is_stmt 1 discriminator 6
	l16si	a10, a3, 10
	l32r	a12, .LC9
	mull	a12, a10, a12
	srai	a12, a12, 5
.LVL16:
	.loc 1 61 0 discriminator 6
	l32r	a8, .LC10
	mull	a10, a10, a8
	srai	a10, a10, 3
.LVL17:
	.loc 1 62 0 discriminator 6
	l16si	a8, a3, 22
	l32r	a9, .LC11
	mull	a9, a8, a9
	srai	a9, a9, 5
	add.n	a12, a12, a9
.LVL18:
	.loc 1 63 0 discriminator 6
	l32r	a11, .LC12
	mull	a8, a8, a11
	srai	a8, a8, 2
	add.n	a10, a10, a8
.LVL19:
	.loc 1 64 0 discriminator 6
	l16si	a8, a3, 42
	l32r	a9, .LC13
	mull	a9, a8, a9
	add.n	a11, a12, a9
.LVL20:
	.loc 1 65 0 discriminator 6
	addx4	a9, a8, a8
	subx8	a9, a9, a8
	slli	a9, a9, 5
	sub	a8, a9, a8
	addx8	a8, a8, a10
.LVL21:
	.loc 1 66 0 discriminator 6
	l16si	a12, a3, 54
	l32r	a9, .LC14
	mull	a9, a12, a9
	srai	a9, a9, 3
	add.n	a9, a11, a9
.LVL22:
	.loc 1 67 0 discriminator 6
	l32r	a10, .LC15
	mull	a12, a12, a10
	addx8	a8, a12, a8
.LVL23:
	.loc 1 68 0 discriminator 6
	l16si	a12, a3, 74
	l32r	a11, .LC16
	mull	a11, a12, a11
	addx2	a11, a11, a9
.LVL24:
	.loc 1 69 0 discriminator 6
	l32r	a10, .LC17
	mull	a12, a12, a10
	addx4	a12, a12, a8
.LVL25:
	.loc 1 70 0 discriminator 6
	l16si	a10, a3, 86
	l32r	a13, .LC18
	mull	a13, a10, a13
	addx2	a11, a13, a11
.LVL26:
	.loc 1 71 0 discriminator 6
	l32r	a13, .LC19
	mull	a10, a10, a13
	addx2	a12, a10, a12
.LVL27:
	.loc 1 72 0 discriminator 6
	l16si	a10, a3, 106
	l32r	a13, .LC20
	mull	a13, a10, a13
	addx2	a11, a13, a11
.LVL28:
	.loc 1 73 0 discriminator 6
	l32r	a13, .LC21
	mull	a10, a10, a13
	srai	a10, a10, 1
	add.n	a12, a12, a10
.LVL29:
	.loc 1 74 0 discriminator 6
	l16si	a10, a3, 118
	l32r	a9, .LC22
	mull	a9, a10, a9
	srai	a9, a9, 2
	add.n	a11, a11, a9
.LVL30:
	.loc 1 75 0 discriminator 6
	movi	a8, 0x6d3
	mull	a10, a10, a8
	addx2	a12, a10, a12
.LVL31:
	.loc 1 76 0 discriminator 6
	l16si	a10, a3, 138
	l32r	a9, .LC23
	mull	a9, a10, a9
	srai	a9, a9, 1
	add.n	a9, a11, a9
.LVL32:
	.loc 1 77 0 discriminator 6
	slli	a11, a10, 4
	add.n	a11, a11, a10
	addx8	a10, a11, a10
	addx4	a10, a10, a10
	addx2	a10, a10, a12
.LVL33:
	.loc 1 78 0 discriminator 6
	l16si	a13, a3, 150
	l32r	a14, .LC24
	mull	a14, a13, a14
	srai	a14, a14, 4
	add.n	a9, a9, a14
.LVL34:
	.loc 1 79 0 discriminator 6
	slli	a8, a13, 4
	add.n	a13, a8, a13
	slli	a11, a13, 9
	add.n	a13, a13, a11
	srai	a13, a13, 7
	add.n	a8, a10, a13
.LVL35:
	.loc 1 80 0 discriminator 6
	l32r	a11, .LC0
	add.n	a10, a9, a11
	movgez	a10, a9, a9
	srai	a9, a10, 15
.LVL36:
	blt	a11, a9, .L12
	.loc 1 80 0 is_stmt 0 discriminator 2
	l32r	a10, .LC1
	blt	a9, a10, .L13
	j	.L3
.L12:
	.loc 1 80 0
	l32r	a9, .LC0
.LVL37:
	j	.L3
.LVL38:
.L13:
	l32r	a9, .LC1
.LVL39:
.L3:
	.loc 1 80 0 discriminator 6
	movi.n	a10, 2
	ssl	a4
	sll	a10, a10
	add.n	a10, a2, a10
	s16i	a9, a10, 0
	.loc 1 81 0 is_stmt 1 discriminator 6
	l32r	a10, .LC0
	add.n	a9, a8, a10
.LVL40:
	movgez	a9, a8, a8
	srai	a8, a9, 15
.LVL41:
	blt	a10, a8, .L14
	.loc 1 81 0 is_stmt 0 discriminator 2
	l32r	a9, .LC1
	blt	a8, a9, .L15
	j	.L4
.L14:
	.loc 1 81 0
	l32r	a8, .LC0
.LVL42:
	j	.L4
.LVL43:
.L15:
	l32r	a8, .LC1
.LVL44:
.L4:
	.loc 1 81 0 discriminator 6
	movi.n	a9, 7
	ssl	a4
	sll	a9, a9
	addx2	a9, a9, a2
	s16i	a8, a9, 0
.LVL45:
	.loc 1 84 0 is_stmt 1 discriminator 6
	l16si	a12, a3, 12
	l32r	a9, .LC25
	mull	a9, a12, a9
	srai	a10, a9, 6
.LVL46:
	.loc 1 85 0 discriminator 6
	l32r	a8, .LC26
	mull	a12, a12, a8
	srai	a12, a12, 4
.LVL47:
	.loc 1 86 0 discriminator 6
	l16si	a8, a3, 20
	l32r	a9, .LC27
	mull	a9, a8, a9
	srai	a9, a9, 5
	add.n	a9, a10, a9
.LVL48:
	.loc 1 87 0 discriminator 6
	l32r	a10, .LC28
	mull	a8, a8, a10
	srai	a8, a8, 4
	add.n	a12, a12, a8
.LVL49:
	.loc 1 88 0 discriminator 6
	l16si	a8, a3, 44
	movi	a10, -0x135
	mull	a10, a8, a10
	slli	a10, a10, 4
	add.n	a11, a9, a10
.LVL50:
	.loc 1 89 0 discriminator 6
	slli	a9, a8, 4
	sub	a9, a9, a8
	slli	a9, a9, 5
	sub	a9, a9, a8
	addx4	a8, a9, a8
	addx4	a8, a8, a12
.LVL51:
	.loc 1 90 0 discriminator 6
	l16si	a12, a3, 52
	l32r	a10, .LC29
	mull	a10, a12, a10
	srai	a10, a10, 3
	add.n	a10, a11, a10
.LVL52:
	.loc 1 91 0 discriminator 6
	l32r	a9, .LC30
	mull	a9, a12, a9
	srai	a9, a9, 1
	add.n	a8, a8, a9
.LVL53:
	.loc 1 92 0 discriminator 6
	l16si	a12, a3, 76
	l32r	a11, .LC31
	mull	a11, a12, a11
	addx2	a10, a11, a10
.LVL54:
	.loc 1 93 0 discriminator 6
	slli	a9, a12, 5
	add.n	a9, a9, a12
	slli	a11, a9, 6
	sub	a9, a11, a9
	addx4	a9, a9, a12
	addx8	a8, a9, a8
.LVL55:
	.loc 1 94 0 discriminator 6
	l16si	a13, a3, 84
	l32r	a11, .LC32
	mull	a11, a13, a11
	addx2	a11, a11, a10
.LVL56:
	.loc 1 95 0 discriminator 6
	l32r	a9, .LC33
	mull	a13, a13, a9
	addx4	a8, a13, a8
.LVL57:
	.loc 1 96 0 discriminator 6
	l16si	a9, a3, 108
	addx8	a10, a9, a9
	slli	a10, a10, 6
	add.n	a10, a10, a9
	addx4	a10, a10, a9
	addx8	a10, a10, a11
.LVL58:
	.loc 1 97 0 discriminator 6
	l32r	a11, .LC34
	mull	a9, a9, a11
	srai	a9, a9, 4
	add.n	a13, a8, a9
.LVL59:
	.loc 1 98 0 discriminator 6
	l16si	a9, a3, 116
	addx2	a11, a9, a9
	slli	a11, a11, 7
	add.n	a11, a11, a9
	slli	a8, a11, 5
	add.n	a11, a11, a8
	srai	a11, a11, 1
	add.n	a8, a10, a11
.LVL60:
	.loc 1 99 0 discriminator 6
	slli	a12, a9, 14
	sub	a9, a12, a9
	srai	a9, a9, 2
	add.n	a13, a13, a9
.LVL61:
	.loc 1 100 0 discriminator 6
	l16si	a9, a3, 140
	addx2	a10, a9, a9
	slli	a11, a10, 6
	add.n	a10, a10, a11
	slli	a10, a10, 5
	sub	a10, a10, a9
	srai	a10, a10, 3
	add.n	a10, a8, a10
.LVL62:
	.loc 1 101 0 discriminator 6
	l32r	a11, .LC35
	mull	a9, a9, a11
	srai	a9, a9, 3
	add.n	a13, a13, a9
.LVL63:
	.loc 1 102 0 discriminator 6
	l16si	a11, a3, 148
	addx8	a8, a11, a11
	slli	a9, a8, 8
	add.n	a8, a8, a9
	subx4	a8, a8, a11
	srai	a8, a8, 4
	add.n	a8, a10, a8
.LVL64:
	.loc 1 103 0 discriminator 6
	l32r	a10, .LC36
	mull	a9, a11, a10
	srai	a9, a9, 6
	add.n	a9, a13, a9
.LVL65:
	.loc 1 104 0 discriminator 6
	l32r	a11, .LC0
	add.n	a10, a8, a11
	movgez	a10, a8, a8
	srai	a8, a10, 15
.LVL66:
	blt	a11, a8, .L16
	.loc 1 104 0 is_stmt 0 discriminator 2
	l32r	a10, .LC1
	blt	a8, a10, .L17
	j	.L5
.L16:
	.loc 1 104 0
	l32r	a8, .LC0
.LVL67:
	j	.L5
.LVL68:
.L17:
	l32r	a8, .LC1
.LVL69:
.L5:
	.loc 1 104 0 discriminator 6
	movi.n	a10, 2
	ssl	a4
	sll	a10, a10
	addx2	a10, a10, a2
	s16i	a8, a10, 0
	.loc 1 105 0 is_stmt 1 discriminator 6
	l32r	a10, .LC0
	add.n	a8, a9, a10
.LVL70:
	movgez	a8, a9, a9
	srai	a8, a8, 15
.LVL71:
	blt	a10, a8, .L18
	.loc 1 105 0 is_stmt 0 discriminator 2
	l32r	a9, .LC1
	blt	a8, a9, .L19
	j	.L6
.L18:
	.loc 1 105 0
	l32r	a8, .LC0
.LVL72:
	j	.L6
.LVL73:
.L19:
	l32r	a8, .LC1
.LVL74:
.L6:
	.loc 1 105 0 discriminator 6
	movi.n	a9, 6
	ssl	a4
	sll	a9, a9
	addx2	a9, a9, a2
	s16i	a8, a9, 0
.LVL75:
	.loc 1 108 0 is_stmt 1 discriminator 6
	l16si	a8, a3, 14
	l32r	a12, .LC37
	mull	a12, a8, a12
	srai	a12, a12, 6
.LVL76:
	.loc 1 109 0 discriminator 6
	slli	a9, a8, 5
	add.n	a9, a9, a8
	slli	a9, a9, 5
	add.n	a9, a9, a8
	slli	a9, a9, 4
	add.n	a8, a9, a8
	srai	a8, a8, 5
.LVL77:
	.loc 1 110 0 discriminator 6
	l16si	a11, a3, 18
	l32r	a9, .LC38
	mull	a9, a11, a9
	srai	a9, a9, 5
	add.n	a12, a12, a9
.LVL78:
	.loc 1 111 0 discriminator 6
	l32r	a10, .LC39
	mull	a10, a11, a10
	srai	a10, a10, 7
	add.n	a8, a8, a10
.LVL79:
	.loc 1 112 0 discriminator 6
	l16si	a10, a3, 46
	l32r	a9, .LC40
	mull	a9, a10, a9
	srai	a9, a9, 2
	add.n	a12, a12, a9
.LVL80:
	.loc 1 113 0 discriminator 6
	l32r	a9, .LC41
	mull	a10, a10, a9
	addx2	a8, a10, a8
.LVL81:
	.loc 1 114 0 discriminator 6
	l16si	a10, a3, 50
	l32r	a9, .LC42
	mull	a9, a10, a9
	srai	a9, a9, 4
	add.n	a12, a12, a9
.LVL82:
	.loc 1 115 0 discriminator 6
	movi	a11, -0x12d
	mull	a10, a10, a11
	slli	a10, a10, 5
	add.n	a10, a8, a10
.LVL83:
	.loc 1 116 0 discriminator 6
	l16si	a11, a3, 78
	l32r	a9, .LC43
	mull	a9, a11, a9
	addx4	a12, a9, a12
.LVL84:
	.loc 1 117 0 discriminator 6
	l32r	a8, .LC44
	mull	a8, a11, a8
	addx4	a10, a8, a10
.LVL85:
	.loc 1 118 0 discriminator 6
	l16si	a8, a3, 82
	addx2	a9, a8, a8
	slli	a9, a9, 11
	add.n	a9, a9, a8
	addx8	a12, a9, a12
.LVL86:
	.loc 1 119 0 discriminator 6
	addx4	a9, a8, a8
	slli	a9, a9, 7
	add.n	a9, a9, a8
	slli	a9, a9, 4
	sub	a8, a9, a8
	addx4	a8, a8, a10
.LVL87:
	.loc 1 120 0 discriminator 6
	l16si	a13, a3, 110
	l32r	a11, .LC45
	mull	a11, a13, a11
	srai	a11, a11, 1
	add.n	a9, a12, a11
.LVL88:
	.loc 1 121 0 discriminator 6
	l32r	a10, .LC46
	mull	a10, a13, a10
	srai	a10, a10, 3
	add.n	a8, a8, a10
.LVL89:
	.loc 1 122 0 discriminator 6
	l16si	a10, a3, 114
	l32r	a11, .LC47
	mull	a11, a10, a11
	srai	a11, a11, 2
	add.n	a9, a9, a11
.LVL90:
	.loc 1 123 0 discriminator 6
	l32r	a11, .LC48
	mull	a10, a10, a11
	srai	a10, a10, 1
	add.n	a8, a8, a10
.LVL91:
	.loc 1 124 0 discriminator 6
	l16si	a10, a3, 142
	l32r	a11, .LC49
	mull	a11, a10, a11
	srai	a11, a11, 8
	add.n	a12, a9, a11
.LVL92:
	.loc 1 125 0 discriminator 6
	movi	a11, 0x5db
	mull	a10, a10, a11
	srai	a10, a10, 1
	add.n	a10, a8, a10
.LVL93:
	.loc 1 126 0 discriminator 6
	l16si	a11, a3, 146
	l32r	a9, .LC50
	mull	a9, a11, a9
	srai	a9, a9, 6
	add.n	a9, a12, a9
.LVL94:
	.loc 1 127 0 discriminator 6
	l32r	a8, .LC51
	mull	a8, a11, a8
	srai	a8, a8, 7
	add.n	a8, a10, a8
.LVL95:
	.loc 1 128 0 discriminator 6
	l32r	a11, .LC0
	add.n	a10, a9, a11
	movgez	a10, a9, a9
	srai	a9, a10, 15
.LVL96:
	blt	a11, a9, .L20
	.loc 1 128 0 is_stmt 0 discriminator 2
	l32r	a10, .LC1
	blt	a9, a10, .L21
	j	.L7
.L20:
	.loc 1 128 0
	l32r	a9, .LC0
.LVL97:
	j	.L7
.LVL98:
.L21:
	l32r	a9, .LC1
.LVL99:
.L7:
	.loc 1 128 0 discriminator 6
	movi.n	a10, 3
	ssl	a4
	sll	a10, a10
	addx2	a10, a10, a2
	s16i	a9, a10, 0
	.loc 1 129 0 is_stmt 1 discriminator 6
	l32r	a10, .LC0
	add.n	a9, a8, a10
.LVL100:
	movgez	a9, a8, a8
	srai	a8, a9, 15
.LVL101:
	blt	a10, a8, .L22
	.loc 1 129 0 is_stmt 0 discriminator 2
	l32r	a9, .LC1
	blt	a8, a9, .L23
	j	.L8
.L22:
	.loc 1 129 0
	l32r	a8, .LC0
.LVL102:
	j	.L8
.LVL103:
.L23:
	l32r	a8, .LC1
.LVL104:
.L8:
	.loc 1 129 0 discriminator 6
	movi.n	a9, 5
	ssl	a4
	sll	a9, a9
	addx2	a9, a9, a2
	s16i	a8, a9, 0
.LVL105:
	.loc 1 131 0 is_stmt 1 discriminator 6
	l16si	a10, a3, 16
	l32r	a8, .LC52
.LVL106:
	mull	a10, a10, a8
	srai	a10, a10, 4
.LVL107:
	.loc 1 132 0 discriminator 6
	l16si	a9, a3, 48
	l32r	a8, .LC53
	mull	a9, a9, a8
	addx2	a9, a9, a10
.LVL108:
	.loc 1 133 0 discriminator 6
	l16si	a10, a3, 80
	l32r	a8, .LC54
	mull	a8, a10, a8
	addx4	a10, a8, a9
.LVL109:
	.loc 1 134 0 discriminator 6
	l16si	a9, a3, 112
	l32r	a8, .LC55
	mull	a8, a9, a8
	add.n	a9, a10, a8
.LVL110:
	.loc 1 135 0 discriminator 6
	l16si	a3, a3, 144
.LVL111:
	l32r	a8, .LC56
	mull	a3, a3, a8
	srai	a3, a3, 4
	add.n	a3, a9, a3
.LVL112:
	.loc 1 136 0 discriminator 6
	l32r	a9, .LC0
	add.n	a8, a3, a9
	movgez	a8, a3, a3
	srai	a3, a8, 15
.LVL113:
	blt	a9, a3, .L24
	.loc 1 136 0 is_stmt 0 discriminator 2
	l32r	a8, .LC1
	blt	a3, a8, .L25
	j	.L9
.L24:
	.loc 1 136 0
	l32r	a3, .LC0
.LVL114:
	j	.L9
.LVL115:
.L25:
	l32r	a3, .LC1
.LVL116:
.L9:
	.loc 1 136 0 discriminator 6
	movi.n	a8, 4
	ssl	a4
	sll	a4, a8
.LVL117:
	addx2	a2, a4, a2
.LVL118:
	s16i	a3, a2, 0
	retw.n
.LFE5:
	.size	SynthWindow80_generated, .-SynthWindow80_generated
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
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/bt_types.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/external/sbc/decoder/include/oi_cpu_dep.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/external/sbc/decoder/include/oi_codec_sbc.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/external/sbc/decoder/include/oi_codec_sbc_private.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x21c
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF31
	.byte	0xc
	.4byte	.LASF32
	.4byte	.LASF33
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF7
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
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x3
	.byte	0x15
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x4
	.byte	0x21
	.4byte	0x68
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x5
	.4byte	0x73
	.4byte	0x9c
	.uleb128 0x6
	.4byte	0x85
	.byte	0x5
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF13
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x5
	.byte	0x67
	.4byte	0x53
	.uleb128 0x7
	.4byte	.LASF16
	.byte	0x5
	.2byte	0x136
	.4byte	0x3e
	.uleb128 0x7
	.4byte	.LASF17
	.byte	0x5
	.2byte	0x137
	.4byte	0xa3
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x5
	.2byte	0x138
	.4byte	0x37
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x5
	.2byte	0x139
	.4byte	0x45
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x6
	.byte	0x7b
	.4byte	0xbc
	.uleb128 0x8
	.4byte	.LASF34
	.byte	0x1
	.byte	0x2c
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x158
	.uleb128 0x9
	.string	"pcm"
	.byte	0x1
	.byte	0x2c
	.4byte	0x158
	.4byte	.LLST0
	.uleb128 0xa
	.4byte	.LASF21
	.byte	0x1
	.byte	0x2c
	.4byte	0x15e
	.4byte	.LLST1
	.uleb128 0xa
	.4byte	.LASF22
	.byte	0x1
	.byte	0x2c
	.4byte	0xb1
	.4byte	.LLST2
	.uleb128 0xb
	.4byte	.LASF23
	.byte	0x1
	.byte	0x2e
	.4byte	0xc8
	.4byte	.LLST3
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0x1
	.byte	0x2e
	.4byte	0xc8
	.4byte	.LLST4
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0xbc
	.uleb128 0xc
	.byte	0x4
	.4byte	0x164
	.uleb128 0xd
	.4byte	0xec
	.uleb128 0xe
	.4byte	.LASF25
	.byte	0x4
	.2byte	0x2cc
	.4byte	0x17c
	.byte	0x6
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.uleb128 0xd
	.4byte	0x8c
	.uleb128 0xe
	.4byte	.LASF26
	.byte	0x4
	.2byte	0x2cd
	.4byte	0x194
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	0x8c
	.uleb128 0x5
	.4byte	0xe0
	.4byte	0x1a9
	.uleb128 0x6
	.4byte	0x85
	.byte	0x3
	.byte	0
	.uleb128 0xf
	.4byte	.LASF27
	.byte	0x7
	.byte	0x56
	.4byte	0x1bd
	.byte	0x8
	.byte	0x80
	.byte	0x3e
	.byte	0
	.byte	0x7d
	.byte	0x44
	.byte	0xac
	.byte	0x80
	.byte	0xbb
	.uleb128 0xd
	.4byte	0x199
	.uleb128 0x5
	.4byte	0xd4
	.4byte	0x1d2
	.uleb128 0x6
	.4byte	0x85
	.byte	0x3
	.byte	0
	.uleb128 0xf
	.4byte	.LASF28
	.byte	0x7
	.byte	0x57
	.4byte	0x1e2
	.byte	0x4
	.byte	0x4
	.byte	0x8
	.byte	0xc
	.byte	0x10
	.uleb128 0xd
	.4byte	0x1c2
	.uleb128 0xf
	.4byte	.LASF29
	.byte	0x7
	.byte	0x58
	.4byte	0x1f7
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x2
	.uleb128 0xd
	.4byte	0x1c2
	.uleb128 0x5
	.4byte	0xd4
	.4byte	0x20c
	.uleb128 0x6
	.4byte	0x85
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.4byte	.LASF30
	.byte	0x7
	.byte	0x59
	.4byte	0x21a
	.byte	0x2
	.byte	0x4
	.byte	0x8
	.uleb128 0xd
	.4byte	0x1fc
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL118
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL118
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL111
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL111
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL117
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL117
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL20
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL22
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL24
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL32
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x5
	.byte	0x7a
	.sleb128 0
	.byte	0x3f
	.byte	0x26
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL48
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL50
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL52
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL56
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL58
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL60
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL62
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL64
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL67
	.4byte	.LVL68
	.2byte	0x5
	.byte	0x7a
	.sleb128 0
	.byte	0x3f
	.byte	0x26
	.byte	0x9f
	.4byte	.LVL68
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL75
	.4byte	.LVL76
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL76
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL88
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL92
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL94
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL97
	.4byte	.LVL98
	.2byte	0x5
	.byte	0x7a
	.sleb128 0
	.byte	0x3f
	.byte	0x26
	.byte	0x9f
	.4byte	.LVL98
	.4byte	.LVL100
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL105
	.4byte	.LVL107
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL107
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL108
	.4byte	.LVL109
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL109
	.4byte	.LVL110
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL110
	.4byte	.LVL112
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL112
	.4byte	.LVL114
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL114
	.4byte	.LVL115
	.2byte	0x5
	.byte	0x78
	.sleb128 0
	.byte	0x3f
	.byte	0x26
	.byte	0x9f
	.4byte	.LVL115
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL4
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL6
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL10
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x5
	.byte	0x79
	.sleb128 0
	.byte	0x3f
	.byte	0x26
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL15
	.4byte	.LVL17
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL21
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL25
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL33
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL35
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x5
	.byte	0x79
	.sleb128 0
	.byte	0x3f
	.byte	0x26
	.byte	0x9f
	.4byte	.LVL43
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL45
	.4byte	.LVL47
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL51
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL59
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL65
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL71
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL72
	.4byte	.LVL73
	.2byte	0x13
	.byte	0x79
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x79
	.sleb128 0
	.byte	0x79
	.sleb128 0
	.byte	0x30
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x3f
	.byte	0x26
	.byte	0x9f
	.4byte	.LVL73
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL75
	.4byte	.LVL77
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL77
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL83
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL87
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL93
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL95
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL102
	.4byte	.LVL103
	.2byte	0x5
	.byte	0x79
	.sleb128 0
	.byte	0x3f
	.byte	0x26
	.byte	0x9f
	.4byte	.LVL103
	.4byte	.LVL106
	.2byte	0x1
	.byte	0x58
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
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF7:
	.string	"__uint8_t"
.LASF26:
	.string	"bd_addr_null"
.LASF28:
	.string	"block_values"
.LASF32:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/external/sbc/decoder/srce/synthesis-8-generated.c"
.LASF9:
	.string	"UINT8"
.LASF18:
	.string	"OI_UINT8"
.LASF31:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF20:
	.string	"SBC_BUFFER_T"
.LASF22:
	.string	"strideShift"
.LASF33:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\bt"
.LASF30:
	.string	"band_values"
.LASF14:
	.string	"long unsigned int"
.LASF3:
	.string	"short unsigned int"
.LASF1:
	.string	"unsigned char"
.LASF29:
	.string	"channel_values"
.LASF34:
	.string	"SynthWindow80_generated"
.LASF4:
	.string	"unsigned int"
.LASF19:
	.string	"OI_UINT16"
.LASF12:
	.string	"char"
.LASF8:
	.string	"uint8_t"
.LASF11:
	.string	"sizetype"
.LASF5:
	.string	"long long int"
.LASF25:
	.string	"bd_addr_any"
.LASF2:
	.string	"short int"
.LASF17:
	.string	"OI_INT32"
.LASF21:
	.string	"buffer"
.LASF27:
	.string	"freq_values"
.LASF15:
	.string	"OI_UINT"
.LASF13:
	.string	"long int"
.LASF16:
	.string	"OI_INT16"
.LASF23:
	.string	"pcm_a"
.LASF24:
	.string	"pcm_b"
.LASF0:
	.string	"signed char"
.LASF10:
	.string	"_Bool"
.LASF6:
	.string	"long long unsigned int"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
