	.file	"sbc_analysis.c"
	.text
.Ltext0:
	.section	.text.SbcAnalysisFilter4,"ax",@progbits
	.literal_position
	.literal .LC0, EncMaxShiftCounter
	.literal .LC1, ShiftCounter
	.literal .LC2, s32X
	.literal .LC3, 4443
	.literal .LC4, s32DCTY
	.literal .LC5, 6389
	.literal .LC6, -2544
	.literal .LC7, 9644
	.align	4
	.global	SbcAnalysisFilter4
	.type	SbcAnalysisFilter4, @function
SbcAnalysisFilter4:
.LFB5:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/external/sbc/encoder/srce/sbc_analysis.c"
	.loc 1 910 0
.LVL0:
	entry	sp, 48
.LCFI0:
	.loc 1 935 0
	l16si	a5, a2, 6
.LVL1:
	.loc 1 936 0
	l16si	a3, a2, 8
	s32i.n	a3, sp, 8
.LVL2:
	.loc 1 938 0
	l32i	a7, a2, 68
.LVL3:
	.loc 1 940 0
	movi	a3, 0x268
.LVL4:
	add.n	a3, a2, a3
.LVL5:
	.loc 1 941 0
	l32r	a2, .LC0
.LVL6:
	l16si	a2, a2, 0
	s32i.n	a2, sp, 4
	addi	a6, a2, 40
.LVL7:
	.loc 1 942 0
	movi.n	a4, 0
	s32i.n	a4, sp, 0
	j	.L2
.LVL8:
.L15:
	.loc 1 943 0
	l32r	a2, .LC0
	l16si	a4, a2, 0
.LVL9:
	l32r	a2, .LC1
	l16si	a2, a2, 0
	sub	a4, a4, a2
.LVL10:
	.loc 1 945 0
	bnei	a5, 1, .L3
	.loc 1 946 0
	addi.n	a8, a4, 3
	l32r	a2, .LC2
	addx2	a8, a8, a2
	l16ui	a9, a7, 0
	s16i	a9, a8, 0
.LVL11:
	.loc 1 947 0
	addi.n	a8, a4, 2
	addx2	a8, a8, a2
	l16ui	a9, a7, 2
	s16i	a9, a8, 0
.LVL12:
	.loc 1 948 0
	addi.n	a8, a4, 1
	addx2	a8, a8, a2
	l16ui	a9, a7, 4
	s16i	a9, a8, 0
.LVL13:
	.loc 1 949 0
	addx2	a2, a4, a2
	l16ui	a8, a7, 6
	s16i	a8, a2, 0
	addi.n	a7, a7, 8
.LVL14:
	j	.L4
.L3:
	.loc 1 951 0
	addi.n	a8, a4, 3
	l32r	a2, .LC2
	addx2	a8, a8, a2
	l16ui	a9, a7, 0
	s16i	a9, a8, 0
.LVL15:
	.loc 1 952 0
	l32i.n	a9, sp, 4
	addi	a8, a9, 43
	add.n	a8, a4, a8
	addx2	a8, a8, a2
	l16ui	a9, a7, 2
	s16i	a9, a8, 0
.LVL16:
	.loc 1 953 0
	addi.n	a8, a4, 2
	addx2	a8, a8, a2
	l16ui	a9, a7, 4
	s16i	a9, a8, 0
.LVL17:
	.loc 1 954 0
	l32i.n	a9, sp, 4
	addi	a8, a9, 42
	add.n	a8, a4, a8
	addx2	a8, a8, a2
	l16ui	a9, a7, 6
	s16i	a9, a8, 0
.LVL18:
	.loc 1 955 0
	addi.n	a8, a4, 1
	addx2	a8, a8, a2
	l16ui	a9, a7, 8
	s16i	a9, a8, 0
.LVL19:
	.loc 1 956 0
	l32i.n	a9, sp, 4
	addi	a8, a9, 41
	add.n	a8, a4, a8
	addx2	a8, a8, a2
	l16ui	a9, a7, 10
	s16i	a9, a8, 0
.LVL20:
	.loc 1 957 0
	addx2	a8, a4, a2
	l16ui	a9, a7, 12
	s16i	a9, a8, 0
.LVL21:
	.loc 1 958 0
	add.n	a8, a6, a4
	addx2	a2, a8, a2
	l16ui	a8, a7, 14
	s16i	a8, a2, 0
	addi	a7, a7, 16
.LVL22:
.L4:
	.loc 1 960 0
	movi.n	a2, 0
	j	.L5
.LVL23:
.L6:
	.loc 1 961 0 discriminator 3
	mull	a8, a2, a6
	add.n	a8, a4, a8
.LVL24:
	.loc 1 963 0 discriminator 3
	addi.n	a10, a8, 8
	l32r	a9, .LC2
	addx2	a10, a10, a9
	l16si	a10, a10, 0
	addi	a11, a8, 32
	addx2	a11, a11, a9
	l16si	a11, a11, 0
	sub	a11, a10, a11
	movi	a12, 0x166
	mull	a12, a11, a12
.LVL25:
	addi	a10, a8, 16
	addx2	a10, a10, a9
	l16si	a10, a10, 0
	addi	a11, a8, 24
	addx2	a11, a11, a9
	l16si	a11, a11, 0
	sub	a11, a10, a11
	l32r	a10, .LC3
	mull	a10, a11, a10
	add.n	a11, a12, a10
.LVL26:
	l32r	a10, .LC4
	s32i.n	a11, a10, 0
	addi.n	a11, a8, 1
.LVL27:
	addx2	a11, a11, a9
	l16si	a11, a11, 0
	addx8	a11, a11, a11
	slli	a14, a11, 1
.LVL28:
	addi	a11, a8, 39
	addx2	a11, a11, a9
	l16si	a12, a11, 0
	addx8	a12, a12, a12
	slli	a15, a12, 1
.LVL29:
	addi.n	a11, a8, 9
	addx2	a11, a11, a9
	l16si	a11, a11, 0
	movi	a13, 0x29e
	mull	a11, a11, a13
	add.n	a14, a14, a11
.LVL30:
	addi	a11, a8, 31
	addx2	a11, a11, a9
	l16si	a11, a11, 0
	mull	a11, a11, a13
	add.n	a15, a15, a11
.LVL31:
	addi	a11, a8, 17
	addx2	a11, a11, a9
	l16si	a11, a11, 0
	l32r	a12, .LC5
	mull	a11, a11, a12
	add.n	a14, a14, a11
.LVL32:
	addi	a11, a8, 23
	addx2	a11, a11, a9
	l16si	a11, a11, 0
	mull	a11, a11, a12
	add.n	a12, a15, a11
.LVL33:
	addi	a11, a8, 25
	addx2	a11, a11, a9
	l16si	a13, a11, 0
	l32r	a11, .LC6
	mull	a13, a13, a11
	add.n	a14, a14, a13
.LVL34:
	addi.n	a13, a8, 15
	addx2	a13, a13, a9
	l16si	a13, a13, 0
	mull	a11, a13, a11
	add.n	a12, a12, a11
.LVL35:
	addi	a11, a8, 33
	addx2	a11, a11, a9
	l16si	a13, a11, 0
	movi	a11, -0x64
	mull	a13, a13, a11
	add.n	a14, a14, a13
.LVL36:
	addi.n	a13, a8, 7
	addx2	a13, a13, a9
	l16si	a13, a13, 0
	mull	a11, a13, a11
	add.n	a11, a12, a11
.LVL37:
	s32i.n	a14, a10, 4
	s32i.n	a11, a10, 28
	addi.n	a11, a8, 2
.LVL38:
	addx2	a11, a11, a9
	l16si	a13, a11, 0
	subx8	a13, a13, a13
	subx8	a13, a13, a13
.LVL39:
	addi	a11, a8, 38
	addx2	a11, a11, a9
	l16si	a11, a11, 0
	subx8	a11, a11, a11
	subx8	a11, a11, a11
.LVL40:
	addi.n	a12, a8, 10
	addx2	a12, a12, a9
	l16si	a12, a12, 0
	slli	a14, a12, 4
	sub	a14, a14, a12
	slli	a15, a14, 6
	sub	a15, a15, a14
	add.n	a15, a15, a12
	add.n	a12, a13, a15
.LVL41:
	addi	a13, a8, 30
	addx2	a13, a13, a9
	l16si	a14, a13, 0
	slli	a15, a14, 4
	sub	a15, a15, a14
	slli	a13, a15, 6
	sub	a13, a13, a15
	add.n	a13, a13, a14
	add.n	a14, a11, a13
.LVL42:
	addi	a11, a8, 18
	addx2	a11, a11, a9
	l16si	a13, a11, 0
	slli	a11, a13, 6
	sub	a11, a11, a13
	addx8	a11, a11, a13
	slli	a11, a11, 4
	add.n	a13, a11, a13
	add.n	a13, a12, a13
.LVL43:
	addi	a11, a8, 22
	addx2	a11, a11, a9
	l16si	a12, a11, 0
	slli	a11, a12, 6
	sub	a11, a11, a12
	addx8	a11, a11, a12
	slli	a11, a11, 4
	add.n	a11, a11, a12
	add.n	a11, a14, a11
.LVL44:
	addi	a12, a8, 26
	addx2	a12, a12, a9
	l16si	a14, a12, 0
	movi	a12, -0x3b0
	mull	a14, a14, a12
	add.n	a13, a13, a14
.LVL45:
	addi.n	a14, a8, 14
	addx2	a14, a14, a9
	l16si	a14, a14, 0
	mull	a12, a14, a12
	add.n	a11, a11, a12
.LVL46:
	addi	a12, a8, 34
	addx2	a12, a12, a9
	l16si	a14, a12, 0
	slli	a12, a14, 4
	sub	a12, a12, a14
	addx4	a12, a12, a14
	add.n	a13, a13, a12
.LVL47:
	addi.n	a12, a8, 6
	addx2	a12, a12, a9
	l16si	a14, a12, 0
	slli	a12, a14, 4
	sub	a12, a12, a14
	addx4	a12, a12, a14
	add.n	a11, a11, a12
.LVL48:
	s32i.n	a13, a10, 8
	s32i.n	a11, a10, 24
	addi.n	a11, a8, 3
.LVL49:
	addx2	a11, a11, a9
	l16si	a11, a11, 0
	addx2	a11, a11, a11
	slli	a12, a11, 4
	sub	a11, a12, a11
	slli	a15, a11, 1
.LVL50:
	addi	a11, a8, 37
	addx2	a11, a11, a9
	l16si	a11, a11, 0
	addx2	a11, a11, a11
	slli	a12, a11, 4
	sub	a11, a12, a11
	slli	a12, a11, 1
.LVL51:
	addi.n	a11, a8, 11
	addx2	a11, a11, a9
	l16si	a11, a11, 0
	slli	a14, a11, 5
	add.n	a14, a14, a11
	slli	a14, a14, 5
	sub	a13, a14, a11
	add.n	a11, a15, a13
.LVL52:
	addi	a13, a8, 29
	addx2	a13, a13, a9
	l16si	a14, a13, 0
	slli	a15, a14, 5
	add.n	a15, a15, a14
	slli	a15, a15, 5
	sub	a14, a15, a14
	add.n	a12, a12, a14
.LVL53:
	addi	a13, a8, 19
	addx2	a13, a13, a9
	l16si	a15, a13, 0
	addx8	a13, a15, a15
	slli	a14, a13, 9
	add.n	a13, a13, a14
	addx2	a13, a13, a15
	add.n	a13, a11, a13
.LVL54:
	addi	a11, a8, 21
	addx2	a11, a11, a9
	l16si	a14, a11, 0
	addx8	a11, a14, a14
	slli	a15, a11, 9
	add.n	a11, a11, a15
	addx2	a11, a11, a14
	add.n	a14, a12, a11
.LVL55:
	addi	a11, a8, 27
	addx2	a11, a11, a9
	l16si	a12, a11, 0
	slli	a11, a12, 5
	add.n	a11, a11, a12
	addx2	a11, a11, a12
	subx4	a11, a11, a11
	add.n	a13, a13, a11
.LVL56:
	addi.n	a11, a8, 13
	addx2	a11, a11, a9
	l16si	a11, a11, 0
	slli	a12, a11, 5
	add.n	a12, a12, a11
	addx2	a11, a12, a11
	subx4	a11, a11, a11
	add.n	a11, a14, a11
.LVL57:
	addi	a12, a8, 35
	addx2	a12, a12, a9
	l16si	a12, a12, 0
	slli	a12, a12, 7
	add.n	a13, a13, a12
.LVL58:
	addi.n	a12, a8, 5
	addx2	a12, a12, a9
	l16si	a12, a12, 0
	slli	a12, a12, 7
	add.n	a11, a11, a12
.LVL59:
	s32i.n	a13, a10, 12
	s32i.n	a11, a10, 20
	addi.n	a11, a8, 4
.LVL60:
	addx2	a11, a11, a9
	l16si	a12, a11, 0
	addi	a11, a8, 36
	addx2	a11, a11, a9
	l16si	a11, a11, 0
	add.n	a12, a12, a11
	slli	a11, a12, 6
	sub	a12, a11, a12
	slli	a13, a12, 1
.LVL61:
	addi.n	a11, a8, 12
	addx2	a11, a11, a9
	l16si	a14, a11, 0
	addi	a12, a8, 28
	addx2	a12, a12, a9
	l16si	a11, a12, 0
	add.n	a11, a14, a11
	movi	a12, 0x350
	mull	a11, a11, a12
	add.n	a11, a13, a11
.LVL62:
	addi	a8, a8, 20
.LVL63:
	addx2	a8, a8, a9
	l16si	a8, a8, 0
	l32r	a9, .LC7
	mull	a8, a8, a9
	add.n	a8, a11, a8
.LVL64:
	s32i.n	a8, a10, 16
	.loc 1 965 0 discriminator 3
	mov.n	a11, a3
	call8	SBC_FastIDCT4
.LVL65:
	.loc 1 967 0 discriminator 3
	addi	a3, a3, 16
.LVL66:
	.loc 1 960 0 discriminator 3
	addi.n	a2, a2, 1
.LVL67:
.L5:
	.loc 1 960 0 is_stmt 0 discriminator 1
	blt	a2, a5, .L6
	.loc 1 969 0 is_stmt 1
	bnei	a5, 1, .L7
	.loc 1 970 0
	l32r	a2, .LC1
.LVL68:
	l16ui	a2, a2, 0
	sext	a10, a2, 15
	l32r	a4, .LC0
.LVL69:
	l16si	a4, a4, 0
	blt	a10, a4, .L8
	.loc 1 971 0
	addi	a4, a4, 38
	l32r	a8, .LC2
	addx2	a8, a4, a8
.LVL70:
	movi.n	a9, 0
	j	.L9
.LVL71:
.L10:
	.loc 1 971 0 is_stmt 0 discriminator 3
	srai	a4, a10, 1
	slli	a2, a4, 30
	sub	a4, a2, a4
	slli	a2, a4, 2
	addi	a4, a2, -8
	add.n	a4, a8, a4
	l32i.n	a4, a4, 0
	s32i.n	a4, a8, 0
.LVL72:
	addi	a2, a2, -12
	add.n	a2, a8, a2
	l32i.n	a4, a2, 0
	addi	a2, a8, -4
.LVL73:
	s32i.n	a4, a2, 0
	addi	a8, a8, -8
.LVL74:
	addi.n	a9, a9, 1
.LVL75:
.L9:
	.loc 1 971 0 discriminator 1
	movi.n	a2, 8
	bge	a2, a9, .L10
	.loc 1 972 0 is_stmt 1
	movi.n	a4, 0
	l32r	a2, .LC1
	s16i	a4, a2, 0
	j	.L11
.LVL76:
.L8:
	.loc 1 974 0
	addi.n	a2, a2, 4
	l32r	a4, .LC1
	s16i	a2, a4, 0
	j	.L11
.LVL77:
.L7:
	.loc 1 977 0
	l32r	a2, .LC1
.LVL78:
	l16ui	a4, a2, 0
.LVL79:
	sext	a11, a4, 15
	l32r	a2, .LC0
	l16si	a2, a2, 0
	blt	a11, a2, .L12
	.loc 1 978 0
	addi	a9, a2, 38
	l32r	a8, .LC2
	addx2	a9, a9, a8
.LVL80:
	slli	a2, a2, 1
	addi	a2, a2, 78
	addx2	a8, a2, a8
.LVL81:
	movi.n	a10, 0
	j	.L13
.LVL82:
.L14:
	.loc 1 978 0 is_stmt 0 discriminator 3
	srai	a4, a11, 1
	slli	a2, a4, 30
	sub	a4, a2, a4
	slli	a2, a4, 2
	addi	a4, a2, -8
	add.n	a12, a9, a4
	l32i.n	a12, a12, 0
	s32i.n	a12, a9, 0
	add.n	a4, a8, a4
	l32i.n	a4, a4, 0
	s32i.n	a4, a8, 0
.LVL83:
	addi	a2, a2, -12
	add.n	a4, a9, a2
	l32i.n	a12, a4, 0
	addi	a4, a9, -4
.LVL84:
	s32i.n	a12, a4, 0
	add.n	a2, a8, a2
	l32i.n	a4, a2, 0
.LVL85:
	addi	a2, a8, -4
.LVL86:
	s32i.n	a4, a2, 0
	addi	a9, a9, -8
.LVL87:
	addi	a8, a8, -8
.LVL88:
	addi.n	a10, a10, 1
.LVL89:
.L13:
	.loc 1 978 0 discriminator 1
	movi.n	a2, 8
	bge	a2, a10, .L14
	.loc 1 979 0 is_stmt 1
	movi.n	a4, 0
	l32r	a2, .LC1
	s16i	a4, a2, 0
	j	.L11
.LVL90:
.L12:
	.loc 1 981 0
	addi.n	a4, a4, 4
	l32r	a2, .LC1
	s16i	a4, a2, 0
.L11:
	.loc 1 942 0 discriminator 2
	l32i.n	a2, sp, 0
	addi.n	a2, a2, 1
	s32i.n	a2, sp, 0
.LVL91:
.L2:
	.loc 1 942 0 is_stmt 0 discriminator 1
	l32i.n	a4, sp, 0
	l32i.n	a2, sp, 8
	blt	a4, a2, .L15
	.loc 1 985 0 is_stmt 1
	retw.n
.LFE5:
	.size	SbcAnalysisFilter4, .-SbcAnalysisFilter4
	.section	.text.SbcAnalysisFilter8,"ax",@progbits
	.literal_position
	.literal .LC8, EncMaxShiftCounter
	.literal .LC9, ShiftCounter
	.literal .LC10, s32X
	.literal .LC11, 2228
	.literal .LC12, s32DCTY
	.literal .LC13, 3197
	.literal .LC14, 3644
	.literal .LC15, 4764
	.align	4
	.global	SbcAnalysisFilter8
	.type	SbcAnalysisFilter8, @function
SbcAnalysisFilter8:
.LFB6:
	.loc 1 989 0
.LVL92:
	entry	sp, 48
.LCFI1:
	.loc 1 1013 0
	l16si	a6, a2, 6
.LVL93:
	.loc 1 1014 0
	l16si	a3, a2, 8
	s32i.n	a3, sp, 8
.LVL94:
	.loc 1 1016 0
	l32i	a5, a2, 68
.LVL95:
	.loc 1 1018 0
	movi	a3, 0x268
.LVL96:
	add.n	a3, a2, a3
.LVL97:
	.loc 1 1019 0
	l32r	a2, .LC8
.LVL98:
	l16si	a2, a2, 0
	s32i.n	a2, sp, 0
	addi	a7, a2, 80
.LVL99:
	.loc 1 1020 0
	movi.n	a4, 0
	s32i.n	a4, sp, 4
	j	.L17
.LVL100:
.L30:
	.loc 1 1021 0
	l32r	a2, .LC8
	l16si	a4, a2, 0
.LVL101:
	l32r	a2, .LC9
	l16si	a2, a2, 0
	sub	a4, a4, a2
.LVL102:
	.loc 1 1023 0
	bnei	a6, 1, .L18
	.loc 1 1024 0
	addi.n	a8, a4, 7
	l32r	a2, .LC10
	addx2	a8, a8, a2
	l16ui	a9, a5, 0
	s16i	a9, a8, 0
.LVL103:
	.loc 1 1025 0
	addi.n	a8, a4, 6
	addx2	a8, a8, a2
	l16ui	a9, a5, 2
	s16i	a9, a8, 0
.LVL104:
	.loc 1 1026 0
	addi.n	a8, a4, 5
	addx2	a8, a8, a2
	l16ui	a9, a5, 4
	s16i	a9, a8, 0
.LVL105:
	.loc 1 1027 0
	addi.n	a8, a4, 4
	addx2	a8, a8, a2
	l16ui	a9, a5, 6
	s16i	a9, a8, 0
.LVL106:
	.loc 1 1028 0
	addi.n	a8, a4, 3
	addx2	a8, a8, a2
	l16ui	a9, a5, 8
	s16i	a9, a8, 0
.LVL107:
	.loc 1 1029 0
	addi.n	a8, a4, 2
	addx2	a8, a8, a2
	l16ui	a9, a5, 10
	s16i	a9, a8, 0
.LVL108:
	.loc 1 1030 0
	addi.n	a8, a4, 1
	addx2	a8, a8, a2
	l16ui	a9, a5, 12
	s16i	a9, a8, 0
.LVL109:
	.loc 1 1031 0
	addx2	a2, a4, a2
	l16ui	a8, a5, 14
	s16i	a8, a2, 0
	addi	a5, a5, 16
.LVL110:
	j	.L19
.L18:
	.loc 1 1033 0
	addi.n	a8, a4, 7
	l32r	a2, .LC10
	addx2	a8, a8, a2
	l16ui	a9, a5, 0
	s16i	a9, a8, 0
.LVL111:
	.loc 1 1034 0
	l32i.n	a9, sp, 0
	addi	a8, a9, 87
	add.n	a8, a4, a8
	addx2	a8, a8, a2
	l16ui	a9, a5, 2
	s16i	a9, a8, 0
.LVL112:
	.loc 1 1035 0
	addi.n	a8, a4, 6
	addx2	a8, a8, a2
	l16ui	a9, a5, 4
	s16i	a9, a8, 0
.LVL113:
	.loc 1 1036 0
	l32i.n	a9, sp, 0
	addi	a8, a9, 86
	add.n	a8, a4, a8
	addx2	a8, a8, a2
	l16ui	a9, a5, 6
	s16i	a9, a8, 0
.LVL114:
	.loc 1 1037 0
	addi.n	a8, a4, 5
	addx2	a8, a8, a2
	l16ui	a9, a5, 8
	s16i	a9, a8, 0
.LVL115:
	.loc 1 1038 0
	l32i.n	a9, sp, 0
	addi	a8, a9, 85
	add.n	a8, a4, a8
	addx2	a8, a8, a2
	l16ui	a9, a5, 10
	s16i	a9, a8, 0
.LVL116:
	.loc 1 1039 0
	addi.n	a8, a4, 4
	addx2	a8, a8, a2
	l16ui	a9, a5, 12
	s16i	a9, a8, 0
.LVL117:
	.loc 1 1040 0
	l32i.n	a9, sp, 0
	addi	a8, a9, 84
	add.n	a8, a4, a8
	addx2	a8, a8, a2
	l16ui	a9, a5, 14
	s16i	a9, a8, 0
.LVL118:
	.loc 1 1041 0
	addi.n	a8, a4, 3
	addx2	a8, a8, a2
	l16ui	a9, a5, 16
	s16i	a9, a8, 0
.LVL119:
	.loc 1 1042 0
	l32i.n	a9, sp, 0
	addi	a8, a9, 83
	add.n	a8, a4, a8
	addx2	a8, a8, a2
	l16ui	a9, a5, 18
	s16i	a9, a8, 0
.LVL120:
	.loc 1 1043 0
	addi.n	a8, a4, 2
	addx2	a8, a8, a2
	l16ui	a9, a5, 20
	s16i	a9, a8, 0
.LVL121:
	.loc 1 1044 0
	l32i.n	a9, sp, 0
	addi	a8, a9, 82
	add.n	a8, a4, a8
	addx2	a8, a8, a2
	l16ui	a9, a5, 22
	s16i	a9, a8, 0
.LVL122:
	.loc 1 1045 0
	addi.n	a8, a4, 1
	addx2	a8, a8, a2
	l16ui	a9, a5, 24
	s16i	a9, a8, 0
.LVL123:
	.loc 1 1046 0
	l32i.n	a9, sp, 0
	addi	a8, a9, 81
	add.n	a8, a4, a8
	addx2	a8, a8, a2
	l16ui	a9, a5, 26
	s16i	a9, a8, 0
.LVL124:
	.loc 1 1047 0
	addx2	a8, a4, a2
	l16ui	a9, a5, 28
	s16i	a9, a8, 0
.LVL125:
	.loc 1 1048 0
	add.n	a8, a7, a4
	addx2	a2, a8, a2
	l16ui	a8, a5, 30
	s16i	a8, a2, 0
	addi	a5, a5, 32
.LVL126:
.L19:
	.loc 1 1050 0
	movi.n	a2, 0
	j	.L20
.LVL127:
.L21:
	.loc 1 1051 0 discriminator 3
	mull	a8, a2, a7
	add.n	a8, a4, a8
.LVL128:
	.loc 1 1053 0 discriminator 3
	addi	a10, a8, 16
	l32r	a9, .LC10
	addx2	a10, a10, a9
	l16si	a10, a10, 0
	addi	a11, a8, 64
	addx2	a11, a11, a9
	l16si	a11, a11, 0
	sub	a10, a10, a11
	addx8	a11, a10, a10
	addx4	a10, a11, a10
	addx4	a12, a10, a10
.LVL129:
	addi	a10, a8, 32
	addx2	a10, a10, a9
	l16si	a10, a10, 0
	addi	a11, a8, 48
	addx2	a11, a11, a9
	l16si	a11, a11, 0
	sub	a11, a10, a11
	l32r	a10, .LC11
	mull	a10, a11, a10
	add.n	a11, a12, a10
.LVL130:
	l32r	a10, .LC12
	s32i.n	a11, a10, 0
	addi.n	a11, a8, 1
.LVL131:
	addx2	a11, a11, a9
	l16si	a13, a11, 0
	addx4	a13, a13, a13
.LVL132:
	addi	a11, a8, 79
	addx2	a11, a11, a9
	l16si	a11, a11, 0
	addx4	a11, a11, a11
.LVL133:
	addi	a12, a8, 17
	addx2	a12, a12, a9
	l16si	a12, a12, 0
	slli	a14, a12, 5
	add.n	a14, a14, a12
	subx8	a14, a14, a12
	add.n	a12, a13, a14
.LVL134:
	addi	a13, a8, 63
	addx2	a13, a13, a9
	l16si	a14, a13, 0
	slli	a13, a14, 5
	add.n	a13, a13, a14
	subx8	a13, a13, a14
	add.n	a14, a11, a13
.LVL135:
	addi	a11, a8, 33
	addx2	a11, a11, a9
	l16si	a13, a11, 0
	addx4	a15, a13, a13
	slli	a11, a15, 4
	add.n	a11, a15, a11
	slli	a11, a11, 5
	sub	a11, a11, a13
	add.n	a13, a12, a11
.LVL136:
	addi	a11, a8, 47
	addx2	a11, a11, a9
	l16si	a11, a11, 0
	addx4	a15, a11, a11
	slli	a12, a15, 4
	add.n	a12, a15, a12
	slli	a12, a12, 5
	sub	a11, a12, a11
	add.n	a11, a14, a11
.LVL137:
	addi	a12, a8, 49
	addx2	a12, a12, a9
	l16si	a14, a12, 0
	movi	a12, -0x6cf
	mull	a14, a14, a12
	add.n	a13, a13, a14
.LVL138:
	addi	a14, a8, 31
	addx2	a14, a14, a9
	l16si	a14, a14, 0
	mull	a12, a14, a12
	add.n	a11, a11, a12
.LVL139:
	addi	a12, a8, 65
	addx2	a12, a12, a9
	l16si	a14, a12, 0
	movi	a12, -0x73
	mull	a14, a14, a12
	add.n	a13, a13, a14
.LVL140:
	addi.n	a14, a8, 15
	addx2	a14, a14, a9
	l16si	a14, a14, 0
	mull	a12, a14, a12
	add.n	a11, a11, a12
.LVL141:
	s32i.n	a13, a10, 4
	s32i.n	a11, a10, 60
	addi.n	a11, a8, 2
.LVL142:
	addx2	a11, a11, a9
	l16si	a11, a11, 0
	addx4	a12, a11, a11
	addx2	a14, a12, a11
.LVL143:
	addi	a11, a8, 78
	addx2	a11, a11, a9
	l16si	a11, a11, 0
	addx4	a13, a11, a11
	addx2	a13, a13, a11
.LVL144:
	addi	a11, a8, 18
	addx2	a11, a11, a9
	l16si	a11, a11, 0
	subx8	a11, a11, a11
	subx8	a11, a11, a11
	subx8	a11, a11, a11
	add.n	a12, a14, a11
.LVL145:
	addi	a11, a8, 62
	addx2	a11, a11, a9
	l16si	a11, a11, 0
	subx8	a11, a11, a11
	subx8	a11, a11, a11
	subx8	a11, a11, a11
	add.n	a11, a13, a11
.LVL146:
	addi	a13, a8, 34
	addx2	a13, a13, a9
	l16si	a14, a13, 0
	l32r	a13, .LC13
	mull	a14, a14, a13
	add.n	a12, a12, a14
.LVL147:
	addi	a14, a8, 46
	addx2	a14, a14, a9
	l16si	a14, a14, 0
	mull	a13, a14, a13
	add.n	a11, a11, a13
.LVL148:
	addi	a13, a8, 50
	addx2	a13, a13, a9
	l16si	a14, a13, 0
	slli	a13, a14, 22
	sub	a13, a13, a14
	subx4	a13, a13, a14
	slli	a14, a13, 8
	add.n	a12, a12, a14
.LVL149:
	addi	a13, a8, 30
	addx2	a13, a13, a9
	l16si	a14, a13, 0
	slli	a13, a14, 22
	sub	a13, a13, a14
	subx4	a14, a13, a14
	slli	a13, a14, 8
	add.n	a11, a11, a13
.LVL150:
	addi	a13, a8, 66
	addx2	a13, a13, a9
	l16si	a14, a13, 0
	movi	a13, -0x36
	mull	a14, a14, a13
	add.n	a12, a12, a14
.LVL151:
	addi.n	a14, a8, 14
	addx2	a14, a14, a9
	l16si	a14, a14, 0
	mull	a13, a14, a13
	add.n	a13, a11, a13
.LVL152:
	s32i.n	a12, a10, 8
	s32i.n	a13, a10, 56
	addi.n	a11, a8, 3
	addx2	a11, a11, a9
	l16si	a11, a11, 0
	addx8	a11, a11, a11
	slli	a13, a11, 1
.LVL153:
	addi	a11, a8, 77
	addx2	a11, a11, a9
	l16si	a11, a11, 0
	addx8	a11, a11, a11
	slli	a15, a11, 1
.LVL154:
	addi	a11, a8, 19
	addx2	a11, a11, a9
	l16si	a14, a11, 0
	movi	a12, 0x1a2
	mull	a14, a14, a12
	add.n	a14, a13, a14
.LVL155:
	addi	a11, a8, 61
	addx2	a11, a11, a9
	l16si	a11, a11, 0
	mull	a11, a11, a12
	add.n	a15, a15, a11
.LVL156:
	addi	a11, a8, 35
	addx2	a11, a11, a9
	l16si	a11, a11, 0
	l32r	a13, .LC14
	mull	a11, a11, a13
	add.n	a14, a14, a11
.LVL157:
	addi	a11, a8, 45
	addx2	a11, a11, a9
	l16si	a11, a11, 0
	mull	a11, a11, a13
	add.n	a15, a15, a11
.LVL158:
	addi	a11, a8, 51
	addx2	a11, a11, a9
	l16si	a13, a11, 0
	movi	a11, -0x358
	mull	a13, a13, a11
	add.n	a13, a14, a13
.LVL159:
	addi	a12, a8, 29
	addx2	a12, a12, a9
	l16si	a12, a12, 0
	mull	a11, a12, a11
	add.n	a12, a15, a11
.LVL160:
	addi	a11, a8, 67
	addx2	a11, a11, a9
	l16si	a11, a11, 0
	slli	a14, a11, 2
	sub	a11, a11, a14
	slli	a14, a11, 1
	add.n	a14, a13, a14
.LVL161:
	addi.n	a11, a8, 13
	addx2	a11, a11, a9
	l16si	a11, a11, 0
	slli	a13, a11, 2
	sub	a11, a11, a13
	slli	a13, a11, 1
	add.n	a12, a12, a13
.LVL162:
	s32i.n	a14, a10, 12
	s32i.n	a12, a10, 52
	addi.n	a11, a8, 4
	addx2	a11, a11, a9
	l16si	a12, a11, 0
.LVL163:
	addx2	a12, a12, a12
	addx8	a12, a12, a12
.LVL164:
	addi	a11, a8, 76
	addx2	a11, a11, a9
	l16si	a11, a11, 0
	addx2	a11, a11, a11
	addx8	a11, a11, a11
.LVL165:
	addi	a13, a8, 20
	addx2	a13, a13, a9
	l16si	a14, a13, 0
	slli	a13, a14, 4
	sub	a13, a13, a14
	slli	a14, a13, 5
	add.n	a12, a12, a14
.LVL166:
	addi	a13, a8, 60
	addx2	a13, a13, a9
	l16si	a14, a13, 0
	slli	a13, a14, 4
	sub	a14, a13, a14
	slli	a13, a14, 5
	add.n	a13, a11, a13
.LVL167:
	addi	a11, a8, 36
	addx2	a11, a11, a9
	l16si	a11, a11, 0
	addx8	a14, a11, a11
	slli	a14, a14, 6
	add.n	a11, a14, a11
	subx8	a11, a11, a11
	add.n	a12, a12, a11
.LVL168:
	addi	a11, a8, 44
	addx2	a11, a11, a9
	l16si	a11, a11, 0
	addx8	a14, a11, a11
	slli	a14, a14, 6
	add.n	a11, a14, a11
	subx8	a11, a11, a11
	add.n	a11, a13, a11
.LVL169:
	addi	a13, a8, 52
	addx2	a13, a13, a9
	l16si	a13, a13, 0
	slli	a14, a13, 4
	sub	a13, a13, a14
	slli	a14, a13, 5
	add.n	a12, a12, a14
.LVL170:
	addi	a13, a8, 28
	addx2	a13, a13, a9
	l16si	a13, a13, 0
	slli	a14, a13, 4
	sub	a13, a13, a14
	slli	a14, a13, 5
	add.n	a11, a11, a14
.LVL171:
	addi	a13, a8, 68
	addx2	a13, a13, a9
	l16si	a14, a13, 0
	slli	a13, a14, 4
	sub	a13, a13, a14
	slli	a14, a13, 1
	add.n	a12, a12, a14
.LVL172:
	addi.n	a13, a8, 12
	addx2	a13, a13, a9
	l16si	a14, a13, 0
	slli	a13, a14, 4
	sub	a14, a13, a14
	slli	a13, a14, 1
	add.n	a13, a11, a13
.LVL173:
	s32i.n	a12, a10, 16
	s32i.n	a13, a10, 48
	addi.n	a11, a8, 5
	addx2	a11, a11, a9
	l16si	a11, a11, 0
	addx8	a13, a11, a11
.LVL174:
	addx4	a13, a13, a11
.LVL175:
	addi	a11, a8, 75
	addx2	a11, a11, a9
	l16si	a11, a11, 0
	addx8	a14, a11, a11
	addx4	a15, a14, a11
.LVL176:
	addi	a11, a8, 21
	addx2	a11, a11, a9
	l16si	a12, a11, 0
	slli	a11, a12, 6
	add.n	a11, a11, a12
	addx8	a11, a11, a12
	add.n	a12, a13, a11
.LVL177:
	addi	a11, a8, 59
	addx2	a11, a11, a9
	l16si	a11, a11, 0
	slli	a13, a11, 6
	add.n	a13, a13, a11
	addx8	a11, a13, a11
	add.n	a14, a15, a11
.LVL178:
	addi	a11, a8, 37
	addx2	a11, a11, a9
	l16si	a13, a11, 0
	slli	a11, a13, 4
	add.n	a11, a11, a13
	slli	a11, a11, 4
	add.n	a11, a11, a13
	slli	a11, a11, 4
	sub	a11, a11, a13
	add.n	a13, a12, a11
.LVL179:
	addi	a11, a8, 43
	addx2	a11, a11, a9
	l16si	a11, a11, 0
	slli	a12, a11, 4
	add.n	a12, a12, a11
	slli	a12, a12, 4
	add.n	a12, a12, a11
	slli	a12, a12, 4
	sub	a11, a12, a11
	add.n	a11, a14, a11
.LVL180:
	addi	a12, a8, 53
	addx2	a12, a12, a9
	l16si	a14, a12, 0
	slli	a12, a14, 25
	sub	a12, a12, a14
	subx4	a12, a12, a14
	slli	a12, a12, 5
	sub	a12, a12, a14
	add.n	a13, a13, a12
.LVL181:
	addi	a12, a8, 27
	addx2	a12, a12, a9
	l16si	a14, a12, 0
	slli	a12, a14, 25
	sub	a12, a12, a14
	subx4	a12, a12, a14
	slli	a12, a12, 5
	sub	a12, a12, a14
	add.n	a11, a11, a12
.LVL182:
	addi	a12, a8, 69
	addx2	a12, a12, a9
	l16si	a14, a12, 0
	addx2	a12, a14, a14
	addx4	a12, a12, a14
	addx4	a12, a12, a14
	add.n	a13, a13, a12
.LVL183:
	addi.n	a12, a8, 11
	addx2	a12, a12, a9
	l16si	a14, a12, 0
	addx2	a12, a14, a14
	addx4	a12, a12, a14
	addx4	a12, a12, a14
	add.n	a11, a11, a12
.LVL184:
	s32i.n	a13, a10, 20
	s32i.n	a11, a10, 44
	addi.n	a11, a8, 6
.LVL185:
	addx2	a11, a11, a9
	l16si	a11, a11, 0
	addx2	a11, a11, a11
	slli	a13, a11, 4
.LVL186:
	addi	a11, a8, 74
	addx2	a11, a11, a9
	l16si	a12, a11, 0
	addx2	a12, a12, a12
	slli	a11, a12, 4
.LVL187:
	addi	a12, a8, 22
	addx2	a12, a12, a9
	l16si	a14, a12, 0
	slli	a12, a14, 5
	add.n	a12, a12, a14
	addx4	a12, a12, a14
	slli	a14, a12, 2
	add.n	a13, a13, a14
.LVL188:
	addi	a12, a8, 58
	addx2	a12, a12, a9
	l16si	a14, a12, 0
	slli	a12, a14, 5
	add.n	a12, a12, a14
	addx4	a12, a12, a14
	slli	a14, a12, 2
	add.n	a11, a11, a14
.LVL189:
	addi	a12, a8, 38
	addx2	a12, a12, a9
	l16si	a12, a12, 0
	addx8	a14, a12, a12
	slli	a14, a14, 7
	add.n	a12, a14, a12
	slli	a14, a12, 2
	add.n	a13, a13, a14
.LVL190:
	addi	a12, a8, 42
	addx2	a12, a12, a9
	l16si	a12, a12, 0
	addx8	a14, a12, a12
	slli	a14, a14, 7
	add.n	a12, a14, a12
	slli	a14, a12, 2
	add.n	a11, a11, a14
.LVL191:
	addi	a12, a8, 54
	addx2	a12, a12, a9
	l16si	a12, a12, 0
	addx2	a12, a12, a12
	slli	a14, a12, 5
	add.n	a13, a13, a14
.LVL192:
	addi	a12, a8, 26
	addx2	a12, a12, a9
	l16si	a12, a12, 0
	addx2	a12, a12, a12
	slli	a14, a12, 5
	add.n	a14, a11, a14
.LVL193:
	addi	a11, a8, 70
	addx2	a11, a11, a9
	l16si	a12, a11, 0
	slli	a11, a12, 6
	add.n	a12, a11, a12
	add.n	a13, a13, a12
.LVL194:
	addi.n	a11, a8, 10
	addx2	a11, a11, a9
	l16si	a11, a11, 0
	slli	a12, a11, 6
	add.n	a11, a12, a11
	add.n	a11, a14, a11
.LVL195:
	s32i.n	a13, a10, 24
	s32i.n	a11, a10, 40
	addi.n	a10, a8, 7
	addx2	a10, a10, a9
	l16si	a11, a10, 0
.LVL196:
	subx8	a10, a11, a11
	addx4	a10, a10, a11
	slli	a11, a10, 1
.LVL197:
	addi	a10, a8, 73
	addx2	a10, a10, a9
	l16si	a12, a10, 0
	subx8	a10, a12, a12
	addx4	a12, a10, a12
	slli	a10, a12, 1
.LVL198:
	addi	a12, a8, 23
	addx2	a12, a12, a9
	l16si	a13, a12, 0
	slli	a12, a13, 6
	sub	a12, a12, a13
	subx4	a12, a12, a13
	slli	a13, a12, 1
	add.n	a11, a11, a13
.LVL199:
	addi	a12, a8, 57
	addx2	a12, a12, a9
	l16si	a13, a12, 0
	slli	a12, a13, 6
	sub	a12, a12, a13
	subx4	a12, a12, a13
	slli	a13, a12, 1
	add.n	a10, a10, a13
.LVL200:
	addi	a12, a8, 39
	addx2	a12, a12, a9
	l16si	a13, a12, 0
	l32r	a12, .LC15
	mull	a13, a13, a12
	add.n	a11, a11, a13
.LVL201:
	addi	a13, a8, 41
	addx2	a13, a13, a9
	l16si	a13, a13, 0
	mull	a12, a13, a12
	add.n	a10, a10, a12
.LVL202:
	addi	a12, a8, 55
	addx2	a12, a12, a9
	l16si	a12, a12, 0
	addx8	a13, a12, a12
	slli	a13, a13, 4
	add.n	a12, a13, a12
	slli	a13, a12, 1
	add.n	a13, a11, a13
.LVL203:
	addi	a11, a8, 25
	addx2	a11, a11, a9
	l16si	a12, a11, 0
	addx8	a11, a12, a12
	slli	a11, a11, 4
	add.n	a12, a11, a12
	slli	a11, a12, 1
	add.n	a12, a10, a11
.LVL204:
	addi	a10, a8, 71
	addx2	a10, a10, a9
	l16si	a10, a10, 0
	slli	a11, a10, 4
	add.n	a11, a11, a10
	addx4	a11, a11, a10
	add.n	a11, a13, a11
.LVL205:
	addi.n	a10, a8, 9
	addx2	a9, a10, a9
	l16si	a9, a9, 0
	slli	a10, a9, 4
	add.n	a10, a10, a9
	addx4	a9, a10, a9
	add.n	a9, a12, a9
.LVL206:
	l32r	a10, .LC12
	s32i.n	a11, a10, 28
	s32i.n	a9, a10, 36
	addi.n	a9, a8, 8
.LVL207:
	l32r	a11, .LC10
.LVL208:
	addx2	a9, a9, a11
	l16si	a13, a9, 0
	addi	a12, a8, 72
	addx2	a12, a12, a11
	l16si	a9, a12, 0
	add.n	a9, a13, a9
	slli	a12, a9, 5
	add.n	a9, a12, a9
	slli	a13, a9, 1
.LVL209:
	addi	a9, a8, 24
	addx2	a9, a9, a11
	l16si	a14, a9, 0
	addi	a12, a8, 56
	addx2	a12, a12, a11
	l16si	a9, a12, 0
	add.n	a9, a14, a9
	movi	a12, 0x1a8
	mull	a9, a9, a12
	add.n	a9, a13, a9
.LVL210:
	addi	a8, a8, 40
.LVL211:
	addx2	a8, a8, a11
	l16si	a8, a8, 0
	addx4	a11, a8, a8
	slli	a11, a11, 6
	add.n	a8, a11, a8
	slli	a11, a8, 4
	sub	a8, a11, a8
	add.n	a8, a9, a8
.LVL212:
	s32i.n	a8, a10, 32
	.loc 1 1055 0 discriminator 3
	mov.n	a11, a3
	call8	SBC_FastIDCT8
.LVL213:
	.loc 1 1057 0 discriminator 3
	addi	a3, a3, 32
.LVL214:
	.loc 1 1050 0 discriminator 3
	addi.n	a2, a2, 1
.LVL215:
.L20:
	.loc 1 1050 0 is_stmt 0 discriminator 1
	blt	a2, a6, .L21
	.loc 1 1059 0 is_stmt 1
	bnei	a6, 1, .L22
	.loc 1 1060 0
	l32r	a2, .LC9
.LVL216:
	l16ui	a2, a2, 0
	sext	a10, a2, 15
	l32r	a4, .LC8
.LVL217:
	l16si	a4, a4, 0
	blt	a10, a4, .L23
	.loc 1 1061 0
	addi	a4, a4, 78
	l32r	a2, .LC10
	addx2	a2, a4, a2
.LVL218:
	movi.n	a9, 0
	j	.L24
.LVL219:
.L25:
	.loc 1 1061 0 is_stmt 0 discriminator 3
	srai	a8, a10, 1
	slli	a4, a8, 30
	sub	a8, a4, a8
	slli	a4, a8, 2
	addi	a8, a4, -16
	add.n	a11, a2, a8
	l32i.n	a11, a11, 0
	s32i.n	a11, a2, 0
.LVL220:
	addi	a4, a4, -20
	add.n	a4, a2, a4
	l32i.n	a11, a4, 0
	addi	a4, a2, -4
.LVL221:
	s32i.n	a11, a4, 0
	addi	a4, a2, -8
.LVL222:
	add.n	a11, a4, a8
	l32i.n	a11, a11, 0
	s32i.n	a11, a4, 0
	addi	a4, a2, -12
.LVL223:
	add.n	a8, a4, a8
	l32i.n	a8, a8, 0
	s32i.n	a8, a4, 0
	addi	a2, a2, -16
.LVL224:
	addi.n	a9, a9, 1
.LVL225:
.L24:
	.loc 1 1061 0 discriminator 1
	movi.n	a4, 8
	bge	a4, a9, .L25
	.loc 1 1062 0 is_stmt 1
	movi.n	a4, 0
	l32r	a2, .LC9
.LVL226:
	s16i	a4, a2, 0
	j	.L26
.LVL227:
.L23:
	.loc 1 1064 0
	addi.n	a2, a2, 8
	l32r	a4, .LC9
	s16i	a2, a4, 0
	j	.L26
.LVL228:
.L22:
	.loc 1 1067 0
	l32r	a2, .LC9
.LVL229:
	l16ui	a4, a2, 0
.LVL230:
	sext	a10, a4, 15
	l32r	a2, .LC8
	l16si	a2, a2, 0
	blt	a10, a2, .L27
	.loc 1 1068 0
	addi	a8, a2, 78
	l32r	a9, .LC10
	addx2	a8, a8, a9
.LVL231:
	movi	a4, 0x9e
	addx2	a2, a2, a4
	addx2	a4, a2, a9
.LVL232:
	movi.n	a9, 0
	j	.L28
.LVL233:
.L29:
	.loc 1 1068 0 is_stmt 0 discriminator 3
	srai	a11, a10, 1
	slli	a2, a11, 30
	sub	a2, a2, a11
	slli	a11, a2, 2
	addi	a2, a11, -16
	add.n	a12, a8, a2
	l32i.n	a12, a12, 0
	s32i.n	a12, a8, 0
	add.n	a12, a4, a2
	l32i.n	a12, a12, 0
	s32i.n	a12, a4, 0
.LVL234:
	addi	a11, a11, -20
	add.n	a12, a8, a11
	l32i.n	a13, a12, 0
	addi	a12, a8, -4
.LVL235:
	s32i.n	a13, a12, 0
	add.n	a11, a4, a11
	l32i.n	a12, a11, 0
.LVL236:
	addi	a11, a4, -4
.LVL237:
	s32i.n	a12, a11, 0
	addi	a12, a8, -8
.LVL238:
	addi	a11, a4, -8
.LVL239:
	add.n	a13, a12, a2
	l32i.n	a13, a13, 0
	s32i.n	a13, a12, 0
	add.n	a12, a11, a2
.LVL240:
	l32i.n	a12, a12, 0
	s32i.n	a12, a11, 0
	addi	a12, a8, -12
.LVL241:
	addi	a11, a4, -12
.LVL242:
	add.n	a13, a12, a2
	l32i.n	a13, a13, 0
	s32i.n	a13, a12, 0
	add.n	a2, a11, a2
	l32i.n	a2, a2, 0
	s32i.n	a2, a11, 0
	addi	a8, a8, -16
.LVL243:
	addi	a4, a4, -16
.LVL244:
	addi.n	a9, a9, 1
.LVL245:
.L28:
	.loc 1 1068 0 discriminator 1
	movi.n	a2, 8
	bge	a2, a9, .L29
	.loc 1 1069 0 is_stmt 1
	movi.n	a4, 0
.LVL246:
	l32r	a2, .LC9
	s16i	a4, a2, 0
	j	.L26
.LVL247:
.L27:
	.loc 1 1071 0
	addi.n	a4, a4, 8
	l32r	a2, .LC9
	s16i	a4, a2, 0
.L26:
	.loc 1 1020 0 discriminator 2
	l32i.n	a2, sp, 4
	addi.n	a2, a2, 1
	s32i.n	a2, sp, 4
.LVL248:
.L17:
	.loc 1 1020 0 is_stmt 0 discriminator 1
	l32i.n	a4, sp, 4
	l32i.n	a2, sp, 8
	blt	a4, a2, .L30
	.loc 1 1075 0 is_stmt 1
	retw.n
.LFE6:
	.size	SbcAnalysisFilter8, .-SbcAnalysisFilter8
	.section	.text.SbcAnalysisInit,"ax",@progbits
	.literal_position
	.literal .LC16, s32X
	.literal .LC17, ShiftCounter
	.align	4
	.global	SbcAnalysisInit
	.type	SbcAnalysisInit, @function
SbcAnalysisInit:
.LFB7:
	.loc 1 1078 0
	entry	sp, 32
.LCFI2:
	.loc 1 1079 0
	movi	a12, 0x1c0
	movi.n	a11, 0
	l32r	a10, .LC16
	call8	memset
.LVL249:
	.loc 1 1080 0
	movi.n	a9, 0
	l32r	a8, .LC17
	s16i	a9, a8, 0
	retw.n
.LFE7:
	.size	SbcAnalysisInit, .-SbcAnalysisInit
	.section	.bss.ShiftCounter,"aw",@nobits
	.align	2
	.type	ShiftCounter, @object
	.size	ShiftCounter, 2
ShiftCounter:
	.zero	2
	.section	.bss.s32X,"aw",@nobits
	.align	4
	.type	s32X, @object
	.size	s32X, 448
s32X:
	.zero	448
	.section	.bss.s32DCTY,"aw",@nobits
	.align	4
	.type	s32DCTY, @object
	.size	s32DCTY, 64
s32DCTY:
	.zero	64
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
	.uleb128 0x30
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
	.uleb128 0x30
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
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/bt_types.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/external/sbc/encoder/include/sbc_types.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/external/sbc/encoder/include/sbc_encoder.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/external/sbc/encoder/include/sbc_enc_func_declare.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x585
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF67
	.byte	0xc
	.4byte	.LASF68
	.4byte	.LASF69
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
	.byte	0x21
	.4byte	0x45
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x4
	.byte	0x21
	.4byte	0x73
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x4
	.byte	0x22
	.4byte	0x7e
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF13
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x5
	.4byte	0x89
	.4byte	0xbd
	.uleb128 0x6
	.4byte	0xa6
	.byte	0x5
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x89
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF16
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF17
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x5
	.byte	0x24
	.4byte	0x3e
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x5
	.byte	0x25
	.4byte	0xca
	.uleb128 0x8
	.4byte	.LASF70
	.2byte	0x694
	.byte	0x6
	.byte	0x9a
	.4byte	0x1ff
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x6
	.byte	0x9b
	.4byte	0xd8
	.byte	0
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x6
	.byte	0x9c
	.4byte	0xd8
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x6
	.byte	0x9d
	.4byte	0xd8
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x6
	.byte	0x9e
	.4byte	0xd8
	.byte	0x6
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x6
	.byte	0x9f
	.4byte	0xd8
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x6
	.byte	0xa0
	.4byte	0xd8
	.byte	0xa
	.uleb128 0x9
	.4byte	.LASF26
	.byte	0x6
	.byte	0xa1
	.4byte	0xd8
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF27
	.byte	0x6
	.byte	0xa3
	.4byte	0x94
	.byte	0xe
	.uleb128 0x9
	.4byte	.LASF28
	.byte	0x6
	.byte	0xa4
	.4byte	0x89
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF29
	.byte	0x6
	.byte	0xa6
	.4byte	0x1ff
	.byte	0x12
	.uleb128 0x9
	.4byte	.LASF30
	.byte	0x6
	.byte	0xa9
	.4byte	0xd8
	.byte	0x22
	.uleb128 0x9
	.4byte	.LASF31
	.byte	0x6
	.byte	0xaa
	.4byte	0x20f
	.byte	0x24
	.uleb128 0x9
	.4byte	.LASF32
	.byte	0x6
	.byte	0xac
	.4byte	0x21f
	.byte	0x44
	.uleb128 0x9
	.4byte	.LASF33
	.byte	0x6
	.byte	0xb0
	.4byte	0x225
	.byte	0x48
	.uleb128 0xa
	.4byte	.LASF34
	.byte	0x6
	.byte	0xb3
	.4byte	0x20f
	.2byte	0x248
	.uleb128 0xa
	.4byte	.LASF35
	.byte	0x6
	.byte	0xb5
	.4byte	0x235
	.2byte	0x268
	.uleb128 0xa
	.4byte	.LASF36
	.byte	0x6
	.byte	0xb7
	.4byte	0x20f
	.2byte	0x668
	.uleb128 0xa
	.4byte	.LASF37
	.byte	0x6
	.byte	0xb9
	.4byte	0xbd
	.2byte	0x688
	.uleb128 0xa
	.4byte	.LASF38
	.byte	0x6
	.byte	0xba
	.4byte	0xbd
	.2byte	0x68c
	.uleb128 0xa
	.4byte	.LASF39
	.byte	0x6
	.byte	0xbb
	.4byte	0x94
	.2byte	0x690
	.uleb128 0xa
	.4byte	.LASF40
	.byte	0x6
	.byte	0xbc
	.4byte	0x94
	.2byte	0x692
	.byte	0
	.uleb128 0x5
	.4byte	0xd8
	.4byte	0x20f
	.uleb128 0x6
	.4byte	0xa6
	.byte	0x7
	.byte	0
	.uleb128 0x5
	.4byte	0xd8
	.4byte	0x21f
	.uleb128 0x6
	.4byte	0xa6
	.byte	0xf
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0xd8
	.uleb128 0x5
	.4byte	0xd8
	.4byte	0x235
	.uleb128 0x6
	.4byte	0xa6
	.byte	0xff
	.byte	0
	.uleb128 0x5
	.4byte	0xe3
	.4byte	0x245
	.uleb128 0x6
	.4byte	0xa6
	.byte	0xff
	.byte	0
	.uleb128 0x3
	.4byte	.LASF41
	.byte	0x6
	.byte	0xbe
	.4byte	0xee
	.uleb128 0xb
	.4byte	.LASF55
	.byte	0x1
	.2byte	0x38d
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x368
	.uleb128 0xc
	.4byte	.LASF57
	.byte	0x1
	.2byte	0x38d
	.4byte	0x368
	.4byte	.LLST0
	.uleb128 0xd
	.4byte	.LASF42
	.byte	0x1
	.2byte	0x38f
	.4byte	0x21f
	.4byte	.LLST1
	.uleb128 0xe
	.4byte	.LASF43
	.byte	0x1
	.2byte	0x390
	.4byte	0x36e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xd
	.4byte	.LASF44
	.byte	0x1
	.2byte	0x391
	.4byte	0xe3
	.4byte	.LLST2
	.uleb128 0xd
	.4byte	.LASF45
	.byte	0x1
	.2byte	0x391
	.4byte	0xe3
	.4byte	.LLST3
	.uleb128 0xe
	.4byte	.LASF46
	.byte	0x1
	.2byte	0x392
	.4byte	0xe3
	.uleb128 0x1
	.byte	0x55
	.uleb128 0xd
	.4byte	.LASF47
	.byte	0x1
	.2byte	0x392
	.4byte	0xe3
	.4byte	.LLST4
	.uleb128 0xf
	.string	"i"
	.byte	0x1
	.2byte	0x393
	.4byte	0xe3
	.4byte	.LLST5
	.uleb128 0xd
	.4byte	.LASF48
	.byte	0x1
	.2byte	0x393
	.4byte	0x36e
	.4byte	.LLST6
	.uleb128 0xd
	.4byte	.LASF49
	.byte	0x1
	.2byte	0x393
	.4byte	0x36e
	.4byte	.LLST7
	.uleb128 0xd
	.4byte	.LASF50
	.byte	0x1
	.2byte	0x394
	.4byte	0xe3
	.4byte	.LLST8
	.uleb128 0xe
	.4byte	.LASF51
	.byte	0x1
	.2byte	0x394
	.4byte	0xe3
	.uleb128 0x1
	.byte	0x56
	.uleb128 0xd
	.4byte	.LASF52
	.byte	0x1
	.2byte	0x394
	.4byte	0xe3
	.4byte	.LLST9
	.uleb128 0xd
	.4byte	.LASF53
	.byte	0x1
	.2byte	0x39c
	.4byte	0xe3
	.4byte	.LLST10
	.uleb128 0xd
	.4byte	.LASF54
	.byte	0x1
	.2byte	0x39c
	.4byte	0xe3
	.4byte	.LLST11
	.uleb128 0x10
	.4byte	.LVL65
	.4byte	0x569
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	s32DCTY
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x245
	.uleb128 0x7
	.byte	0x4
	.4byte	0xe3
	.uleb128 0xb
	.4byte	.LASF56
	.byte	0x1
	.2byte	0x3dc
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x48c
	.uleb128 0xc
	.4byte	.LASF57
	.byte	0x1
	.2byte	0x3dc
	.4byte	0x368
	.4byte	.LLST12
	.uleb128 0xd
	.4byte	.LASF42
	.byte	0x1
	.2byte	0x3de
	.4byte	0x21f
	.4byte	.LLST13
	.uleb128 0xe
	.4byte	.LASF43
	.byte	0x1
	.2byte	0x3df
	.4byte	0x36e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xd
	.4byte	.LASF44
	.byte	0x1
	.2byte	0x3e0
	.4byte	0xe3
	.4byte	.LLST14
	.uleb128 0xd
	.4byte	.LASF45
	.byte	0x1
	.2byte	0x3e0
	.4byte	0xe3
	.4byte	.LLST15
	.uleb128 0xd
	.4byte	.LASF50
	.byte	0x1
	.2byte	0x3e1
	.4byte	0xe3
	.4byte	.LLST16
	.uleb128 0xe
	.4byte	.LASF51
	.byte	0x1
	.2byte	0x3e1
	.4byte	0xe3
	.uleb128 0x1
	.byte	0x57
	.uleb128 0xe
	.4byte	.LASF46
	.byte	0x1
	.2byte	0x3e2
	.4byte	0xe3
	.uleb128 0x1
	.byte	0x56
	.uleb128 0xd
	.4byte	.LASF47
	.byte	0x1
	.2byte	0x3e2
	.4byte	0xe3
	.4byte	.LLST17
	.uleb128 0xf
	.string	"i"
	.byte	0x1
	.2byte	0x3e3
	.4byte	0xe3
	.4byte	.LLST18
	.uleb128 0xd
	.4byte	.LASF48
	.byte	0x1
	.2byte	0x3e3
	.4byte	0x36e
	.4byte	.LLST19
	.uleb128 0xd
	.4byte	.LASF49
	.byte	0x1
	.2byte	0x3e3
	.4byte	0x36e
	.4byte	.LLST20
	.uleb128 0xd
	.4byte	.LASF52
	.byte	0x1
	.2byte	0x3e4
	.4byte	0xe3
	.4byte	.LLST21
	.uleb128 0xd
	.4byte	.LASF53
	.byte	0x1
	.2byte	0x3ec
	.4byte	0xe3
	.4byte	.LLST22
	.uleb128 0xd
	.4byte	.LASF54
	.byte	0x1
	.2byte	0x3ec
	.4byte	0xe3
	.4byte	.LLST23
	.uleb128 0x10
	.4byte	.LVL213
	.4byte	0x574
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	s32DCTY
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	.LASF58
	.byte	0x1
	.2byte	0x435
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4c2
	.uleb128 0x10
	.4byte	.LVL249
	.4byte	0x57f
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	s32X
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1c0
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF59
	.byte	0x4
	.2byte	0x2cc
	.4byte	0x4d5
	.byte	0x6
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.uleb128 0x13
	.4byte	0xad
	.uleb128 0x12
	.4byte	.LASF60
	.byte	0x4
	.2byte	0x2cd
	.4byte	0x4ed
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	0xad
	.uleb128 0x5
	.4byte	0xe3
	.4byte	0x502
	.uleb128 0x6
	.4byte	0xa6
	.byte	0xf
	.byte	0
	.uleb128 0x14
	.4byte	.LASF61
	.byte	0x1
	.byte	0xa1
	.4byte	0x4f2
	.uleb128 0x5
	.byte	0x3
	.4byte	s32DCTY
	.uleb128 0x5
	.4byte	0xe3
	.4byte	0x523
	.uleb128 0x6
	.4byte	0xa6
	.byte	0x6f
	.byte	0
	.uleb128 0x14
	.4byte	.LASF62
	.byte	0x1
	.byte	0xa2
	.4byte	0x513
	.uleb128 0x5
	.byte	0x3
	.4byte	s32X
	.uleb128 0x14
	.4byte	.LASF63
	.byte	0x1
	.byte	0xa3
	.4byte	0x546
	.uleb128 0x6
	.byte	0x3
	.4byte	s32X
	.byte	0x9f
	.uleb128 0x13
	.4byte	0x21f
	.uleb128 0xe
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x386
	.4byte	0xd8
	.uleb128 0x5
	.byte	0x3
	.4byte	ShiftCounter
	.uleb128 0x15
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x387
	.4byte	0xd8
	.uleb128 0x16
	.4byte	.LASF65
	.4byte	.LASF65
	.byte	0x7
	.byte	0x31
	.uleb128 0x16
	.4byte	.LASF66
	.4byte	.LASF66
	.byte	0x7
	.byte	0x30
	.uleb128 0x17
	.4byte	.LASF72
	.4byte	.LASF72
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x13
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0x4
	.byte	0x73
	.sleb128 -616
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL3
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x3
	.byte	0x77
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x3
	.byte	0x77
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x3
	.byte	0x77
	.sleb128 6
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x3
	.byte	0x77
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x3
	.byte	0x77
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x3
	.byte	0x77
	.sleb128 6
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x3
	.byte	0x77
	.sleb128 8
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x3
	.byte	0x77
	.sleb128 10
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x3
	.byte	0x77
	.sleb128 12
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x3
	.byte	0x77
	.sleb128 14
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL9
	.4byte	.LFE5
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL77
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL2
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL4
	.4byte	.LFE5
	.2byte	0x2
	.byte	0x91
	.sleb128 -40
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL70
	.4byte	.LVL71
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL71
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL81
	.4byte	.LVL82
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL82
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL70
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL72
	.4byte	.LVL73
	.2byte	0x3
	.byte	0x78
	.sleb128 -4
	.byte	0x9f
	.4byte	.LVL73
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL74
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL80
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL83
	.4byte	.LVL84
	.2byte	0x3
	.byte	0x79
	.sleb128 -4
	.byte	0x9f
	.4byte	.LVL84
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL85
	.4byte	.LVL87
	.2byte	0x3
	.byte	0x79
	.sleb128 -4
	.byte	0x9f
	.4byte	.LVL87
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL81
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL83
	.4byte	.LVL86
	.2byte	0x3
	.byte	0x78
	.sleb128 -4
	.byte	0x9f
	.4byte	.LVL86
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL88
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL10
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL77
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL24
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL63
	.4byte	.LVL67
	.2byte	0x9
	.byte	0x72
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x1e
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x5
	.byte	0x3
	.4byte	s32DCTY
	.4byte	.LVL28
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL39
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL41
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL43
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL50
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL52
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL54
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL62
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL64
	.4byte	.LVL65-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL29
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL33
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL38
	.4byte	.LVL40
	.2byte	0x5
	.byte	0x3
	.4byte	s32DCTY+28
	.4byte	.LVL40
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL42
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL44
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL49
	.4byte	.LVL51
	.2byte	0x5
	.byte	0x3
	.4byte	s32DCTY+24
	.4byte	.LVL51
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL55
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL57
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL60
	.4byte	.LVL65-1
	.2byte	0x5
	.byte	0x3
	.4byte	s32DCTY+20
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL92
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL98
	.4byte	.LVL100
	.2byte	0x4
	.byte	0x73
	.sleb128 -616
	.byte	0x9f
	.4byte	.LVL100
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL95
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL103
	.4byte	.LVL104
	.2byte	0x3
	.byte	0x75
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL104
	.4byte	.LVL105
	.2byte	0x3
	.byte	0x75
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL105
	.4byte	.LVL106
	.2byte	0x3
	.byte	0x75
	.sleb128 6
	.byte	0x9f
	.4byte	.LVL106
	.4byte	.LVL107
	.2byte	0x3
	.byte	0x75
	.sleb128 8
	.byte	0x9f
	.4byte	.LVL107
	.4byte	.LVL108
	.2byte	0x3
	.byte	0x75
	.sleb128 10
	.byte	0x9f
	.4byte	.LVL108
	.4byte	.LVL109
	.2byte	0x3
	.byte	0x75
	.sleb128 12
	.byte	0x9f
	.4byte	.LVL109
	.4byte	.LVL110
	.2byte	0x3
	.byte	0x75
	.sleb128 14
	.byte	0x9f
	.4byte	.LVL110
	.4byte	.LVL111
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL111
	.4byte	.LVL112
	.2byte	0x3
	.byte	0x75
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL112
	.4byte	.LVL113
	.2byte	0x3
	.byte	0x75
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL113
	.4byte	.LVL114
	.2byte	0x3
	.byte	0x75
	.sleb128 6
	.byte	0x9f
	.4byte	.LVL114
	.4byte	.LVL115
	.2byte	0x3
	.byte	0x75
	.sleb128 8
	.byte	0x9f
	.4byte	.LVL115
	.4byte	.LVL116
	.2byte	0x3
	.byte	0x75
	.sleb128 10
	.byte	0x9f
	.4byte	.LVL116
	.4byte	.LVL117
	.2byte	0x3
	.byte	0x75
	.sleb128 12
	.byte	0x9f
	.4byte	.LVL117
	.4byte	.LVL118
	.2byte	0x3
	.byte	0x75
	.sleb128 14
	.byte	0x9f
	.4byte	.LVL118
	.4byte	.LVL119
	.2byte	0x3
	.byte	0x75
	.sleb128 16
	.byte	0x9f
	.4byte	.LVL119
	.4byte	.LVL120
	.2byte	0x3
	.byte	0x75
	.sleb128 18
	.byte	0x9f
	.4byte	.LVL120
	.4byte	.LVL121
	.2byte	0x3
	.byte	0x75
	.sleb128 20
	.byte	0x9f
	.4byte	.LVL121
	.4byte	.LVL122
	.2byte	0x3
	.byte	0x75
	.sleb128 22
	.byte	0x9f
	.4byte	.LVL122
	.4byte	.LVL123
	.2byte	0x3
	.byte	0x75
	.sleb128 24
	.byte	0x9f
	.4byte	.LVL123
	.4byte	.LVL124
	.2byte	0x3
	.byte	0x75
	.sleb128 26
	.byte	0x9f
	.4byte	.LVL124
	.4byte	.LVL125
	.2byte	0x3
	.byte	0x75
	.sleb128 28
	.byte	0x9f
	.4byte	.LVL125
	.4byte	.LVL126
	.2byte	0x3
	.byte	0x75
	.sleb128 30
	.byte	0x9f
	.4byte	.LVL126
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL99
	.4byte	.LVL100
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL100
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL101
	.4byte	.LFE6
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL126
	.4byte	.LVL127
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL127
	.4byte	.LVL216
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL228
	.4byte	.LVL229
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL102
	.4byte	.LVL217
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL228
	.4byte	.LVL230
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL94
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL96
	.4byte	.LFE6
	.2byte	0x2
	.byte	0x91
	.sleb128 -40
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL218
	.4byte	.LVL219
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL219
	.4byte	.LVL227
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL232
	.4byte	.LVL233
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL233
	.4byte	.LVL247
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL218
	.4byte	.LVL220
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL220
	.4byte	.LVL221
	.2byte	0x3
	.byte	0x72
	.sleb128 -4
	.byte	0x9f
	.4byte	.LVL221
	.4byte	.LVL224
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL224
	.4byte	.LVL226
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL231
	.4byte	.LVL234
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL234
	.4byte	.LVL235
	.2byte	0x3
	.byte	0x78
	.sleb128 -4
	.byte	0x9f
	.4byte	.LVL235
	.4byte	.LVL236
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL236
	.4byte	.LVL238
	.2byte	0x3
	.byte	0x78
	.sleb128 -4
	.byte	0x9f
	.4byte	.LVL238
	.4byte	.LVL240
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL240
	.4byte	.LVL241
	.2byte	0x3
	.byte	0x78
	.sleb128 -8
	.byte	0x9f
	.4byte	.LVL241
	.4byte	.LVL243
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL243
	.4byte	.LVL247
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL232
	.4byte	.LVL234
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL234
	.4byte	.LVL237
	.2byte	0x3
	.byte	0x74
	.sleb128 -4
	.byte	0x9f
	.4byte	.LVL237
	.4byte	.LVL244
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL244
	.4byte	.LVL246
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL128
	.4byte	.LVL211
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL211
	.4byte	.LVL215
	.2byte	0x9
	.byte	0x72
	.sleb128 0
	.byte	0x77
	.sleb128 0
	.byte	0x1e
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL129
	.4byte	.LVL130
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL130
	.4byte	.LVL131
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL131
	.4byte	.LVL132
	.2byte	0x5
	.byte	0x3
	.4byte	s32DCTY
	.4byte	.LVL132
	.4byte	.LVL134
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL134
	.4byte	.LVL136
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL136
	.4byte	.LVL143
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL143
	.4byte	.LVL145
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL145
	.4byte	.LVL153
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL153
	.4byte	.LVL155
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL155
	.4byte	.LVL159
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL159
	.4byte	.LVL161
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL161
	.4byte	.LVL164
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL164
	.4byte	.LVL175
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL175
	.4byte	.LVL177
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL177
	.4byte	.LVL179
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL179
	.4byte	.LVL197
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL197
	.4byte	.LVL203
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL203
	.4byte	.LVL205
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL205
	.4byte	.LVL208
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL208
	.4byte	.LVL209
	.2byte	0x5
	.byte	0x3
	.4byte	s32DCTY+28
	.4byte	.LVL209
	.4byte	.LVL210
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL210
	.4byte	.LVL212
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL212
	.4byte	.LVL213-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL133
	.4byte	.LVL135
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL135
	.4byte	.LVL137
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL137
	.4byte	.LVL142
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL142
	.4byte	.LVL144
	.2byte	0x5
	.byte	0x3
	.4byte	s32DCTY+60
	.4byte	.LVL144
	.4byte	.LVL146
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL146
	.4byte	.LVL152
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL152
	.4byte	.LVL153
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL153
	.4byte	.LVL154
	.2byte	0x5
	.byte	0x3
	.4byte	s32DCTY+56
	.4byte	.LVL154
	.4byte	.LVL160
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL160
	.4byte	.LVL163
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL163
	.4byte	.LVL165
	.2byte	0x5
	.byte	0x3
	.4byte	s32DCTY+52
	.4byte	.LVL165
	.4byte	.LVL167
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL167
	.4byte	.LVL169
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL169
	.4byte	.LVL173
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL173
	.4byte	.LVL174
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL174
	.4byte	.LVL176
	.2byte	0x5
	.byte	0x3
	.4byte	s32DCTY+48
	.4byte	.LVL176
	.4byte	.LVL178
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL178
	.4byte	.LVL180
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL180
	.4byte	.LVL185
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL185
	.4byte	.LVL187
	.2byte	0x5
	.byte	0x3
	.4byte	s32DCTY+44
	.4byte	.LVL187
	.4byte	.LVL193
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL193
	.4byte	.LVL195
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL195
	.4byte	.LVL196
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL196
	.4byte	.LVL198
	.2byte	0x5
	.byte	0x3
	.4byte	s32DCTY+40
	.4byte	.LVL198
	.4byte	.LVL204
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL204
	.4byte	.LVL206
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL206
	.4byte	.LVL207
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL207
	.4byte	.LVL213-1
	.2byte	0x5
	.byte	0x3
	.4byte	s32DCTY+36
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x2c
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF49:
	.string	"ps32X2"
.LASF60:
	.string	"bd_addr_null"
.LASF45:
	.string	"s32Ch"
.LASF63:
	.string	"s16X"
.LASF2:
	.string	"short int"
.LASF26:
	.string	"s16BitPool"
.LASF18:
	.string	"SINT16"
.LASF4:
	.string	"__uint16_t"
.LASF53:
	.string	"s32Temp"
.LASF31:
	.string	"as16ScaleFactor"
.LASF9:
	.string	"uint8_t"
.LASF61:
	.string	"s32DCTY"
.LASF25:
	.string	"s16AllocationMethod"
.LASF22:
	.string	"s16NumOfSubBands"
.LASF65:
	.string	"SBC_FastIDCT4"
.LASF47:
	.string	"s32NumOfBlocks"
.LASF58:
	.string	"SbcAnalysisInit"
.LASF66:
	.string	"SBC_FastIDCT8"
.LASF48:
	.string	"ps32X"
.LASF7:
	.string	"long long int"
.LASF72:
	.string	"memset"
.LASF16:
	.string	"long int"
.LASF14:
	.string	"sizetype"
.LASF36:
	.string	"as16Bits"
.LASF11:
	.string	"UINT8"
.LASF3:
	.string	"__uint8_t"
.LASF37:
	.string	"pu8Packet"
.LASF64:
	.string	"ShiftCounter"
.LASF24:
	.string	"s16NumOfBlocks"
.LASF55:
	.string	"SbcAnalysisFilter4"
.LASF56:
	.string	"SbcAnalysisFilter8"
.LASF32:
	.string	"ps16NextPcmBuffer"
.LASF21:
	.string	"s16ChannelMode"
.LASF34:
	.string	"s16ScartchMemForBitAlloc"
.LASF20:
	.string	"s16SamplingFreq"
.LASF1:
	.string	"unsigned char"
.LASF69:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\bt"
.LASF0:
	.string	"signed char"
.LASF8:
	.string	"long long unsigned int"
.LASF6:
	.string	"unsigned int"
.LASF10:
	.string	"uint16_t"
.LASF33:
	.string	"as16PcmBuffer"
.LASF17:
	.string	"long unsigned int"
.LASF38:
	.string	"pu8NextPacket"
.LASF50:
	.string	"Offset"
.LASF30:
	.string	"s16MaxBitNeed"
.LASF44:
	.string	"s32Blk"
.LASF12:
	.string	"UINT16"
.LASF15:
	.string	"char"
.LASF35:
	.string	"s32SbBuffer"
.LASF54:
	.string	"s32Temp2"
.LASF40:
	.string	"u16PacketLength"
.LASF19:
	.string	"SINT32"
.LASF5:
	.string	"short unsigned int"
.LASF13:
	.string	"_Bool"
.LASF41:
	.string	"SBC_ENC_PARAMS"
.LASF27:
	.string	"u16BitRate"
.LASF23:
	.string	"s16NumOfChannels"
.LASF70:
	.string	"SBC_ENC_PARAMS_TAG"
.LASF51:
	.string	"Offset2"
.LASF71:
	.string	"EncMaxShiftCounter"
.LASF62:
	.string	"s32X"
.LASF29:
	.string	"as16Join"
.LASF46:
	.string	"s32NumOfChannels"
.LASF39:
	.string	"FrameHeader"
.LASF28:
	.string	"u8NumPacketToEncode"
.LASF57:
	.string	"pstrEncParams"
.LASF59:
	.string	"bd_addr_any"
.LASF42:
	.string	"ps16PcmBuf"
.LASF52:
	.string	"ChOffset"
.LASF67:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF68:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/external/sbc/encoder/srce/sbc_analysis.c"
.LASF43:
	.string	"ps32SbBuf"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
