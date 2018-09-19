	.file	"nghttp2_callbacks.c"
	.text
.Ltext0:
	.section	.text.nghttp2_session_callbacks_new,"ax",@progbits
	.align	4
	.global	nghttp2_session_callbacks_new
	.type	nghttp2_session_callbacks_new, @function
nghttp2_session_callbacks_new:
.LFB0:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/nghttp/nghttp2/lib/nghttp2_callbacks.c"
	.loc 1 29 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 30 0
	movi.n	a11, 0x58
	movi.n	a10, 1
	call8	calloc
.LVL1:
	s32i.n	a10, a2, 0
	.loc 1 32 0
	bnez.n	a10, .L3
	.loc 1 33 0
	movi	a2, -0x385
.LVL2:
	retw.n
.LVL3:
.L3:
	.loc 1 36 0
	movi.n	a2, 0
.LVL4:
	.loc 1 37 0
	retw.n
.LFE0:
	.size	nghttp2_session_callbacks_new, .-nghttp2_session_callbacks_new
	.section	.text.nghttp2_session_callbacks_del,"ax",@progbits
	.align	4
	.global	nghttp2_session_callbacks_del
	.type	nghttp2_session_callbacks_del, @function
nghttp2_session_callbacks_del:
.LFB1:
	.loc 1 39 0
.LVL5:
	entry	sp, 32
.LCFI1:
	.loc 1 40 0
	mov.n	a10, a2
	call8	free
.LVL6:
	retw.n
.LFE1:
	.size	nghttp2_session_callbacks_del, .-nghttp2_session_callbacks_del
	.section	.text.nghttp2_session_callbacks_set_send_callback,"ax",@progbits
	.align	4
	.global	nghttp2_session_callbacks_set_send_callback
	.type	nghttp2_session_callbacks_set_send_callback, @function
nghttp2_session_callbacks_set_send_callback:
.LFB2:
	.loc 1 44 0
.LVL7:
	entry	sp, 32
.LCFI2:
	.loc 1 45 0
	s32i.n	a3, a2, 0
	retw.n
.LFE2:
	.size	nghttp2_session_callbacks_set_send_callback, .-nghttp2_session_callbacks_set_send_callback
	.section	.text.nghttp2_session_callbacks_set_recv_callback,"ax",@progbits
	.align	4
	.global	nghttp2_session_callbacks_set_recv_callback
	.type	nghttp2_session_callbacks_set_recv_callback, @function
nghttp2_session_callbacks_set_recv_callback:
.LFB3:
	.loc 1 49 0
.LVL8:
	entry	sp, 32
.LCFI3:
	.loc 1 50 0
	s32i.n	a3, a2, 4
	retw.n
.LFE3:
	.size	nghttp2_session_callbacks_set_recv_callback, .-nghttp2_session_callbacks_set_recv_callback
	.section	.text.nghttp2_session_callbacks_set_on_frame_recv_callback,"ax",@progbits
	.align	4
	.global	nghttp2_session_callbacks_set_on_frame_recv_callback
	.type	nghttp2_session_callbacks_set_on_frame_recv_callback, @function
nghttp2_session_callbacks_set_on_frame_recv_callback:
.LFB4:
	.loc 1 55 0
.LVL9:
	entry	sp, 32
.LCFI4:
	.loc 1 56 0
	s32i.n	a3, a2, 8
	retw.n
.LFE4:
	.size	nghttp2_session_callbacks_set_on_frame_recv_callback, .-nghttp2_session_callbacks_set_on_frame_recv_callback
	.section	.text.nghttp2_session_callbacks_set_on_invalid_frame_recv_callback,"ax",@progbits
	.align	4
	.global	nghttp2_session_callbacks_set_on_invalid_frame_recv_callback
	.type	nghttp2_session_callbacks_set_on_invalid_frame_recv_callback, @function
nghttp2_session_callbacks_set_on_invalid_frame_recv_callback:
.LFB5:
	.loc 1 61 0
.LVL10:
	entry	sp, 32
.LCFI5:
	.loc 1 62 0
	s32i.n	a3, a2, 12
	retw.n
.LFE5:
	.size	nghttp2_session_callbacks_set_on_invalid_frame_recv_callback, .-nghttp2_session_callbacks_set_on_invalid_frame_recv_callback
	.section	.text.nghttp2_session_callbacks_set_on_data_chunk_recv_callback,"ax",@progbits
	.align	4
	.global	nghttp2_session_callbacks_set_on_data_chunk_recv_callback
	.type	nghttp2_session_callbacks_set_on_data_chunk_recv_callback, @function
nghttp2_session_callbacks_set_on_data_chunk_recv_callback:
.LFB6:
	.loc 1 67 0
.LVL11:
	entry	sp, 32
.LCFI6:
	.loc 1 68 0
	s32i.n	a3, a2, 16
	retw.n
.LFE6:
	.size	nghttp2_session_callbacks_set_on_data_chunk_recv_callback, .-nghttp2_session_callbacks_set_on_data_chunk_recv_callback
	.section	.text.nghttp2_session_callbacks_set_before_frame_send_callback,"ax",@progbits
	.align	4
	.global	nghttp2_session_callbacks_set_before_frame_send_callback
	.type	nghttp2_session_callbacks_set_before_frame_send_callback, @function
nghttp2_session_callbacks_set_before_frame_send_callback:
.LFB7:
	.loc 1 73 0
.LVL12:
	entry	sp, 32
.LCFI7:
	.loc 1 74 0
	s32i.n	a3, a2, 20
	retw.n
.LFE7:
	.size	nghttp2_session_callbacks_set_before_frame_send_callback, .-nghttp2_session_callbacks_set_before_frame_send_callback
	.section	.text.nghttp2_session_callbacks_set_on_frame_send_callback,"ax",@progbits
	.align	4
	.global	nghttp2_session_callbacks_set_on_frame_send_callback
	.type	nghttp2_session_callbacks_set_on_frame_send_callback, @function
nghttp2_session_callbacks_set_on_frame_send_callback:
.LFB8:
	.loc 1 79 0
.LVL13:
	entry	sp, 32
.LCFI8:
	.loc 1 80 0
	s32i.n	a3, a2, 24
	retw.n
.LFE8:
	.size	nghttp2_session_callbacks_set_on_frame_send_callback, .-nghttp2_session_callbacks_set_on_frame_send_callback
	.section	.text.nghttp2_session_callbacks_set_on_frame_not_send_callback,"ax",@progbits
	.align	4
	.global	nghttp2_session_callbacks_set_on_frame_not_send_callback
	.type	nghttp2_session_callbacks_set_on_frame_not_send_callback, @function
nghttp2_session_callbacks_set_on_frame_not_send_callback:
.LFB9:
	.loc 1 85 0
.LVL14:
	entry	sp, 32
.LCFI9:
	.loc 1 86 0
	s32i.n	a3, a2, 28
	retw.n
.LFE9:
	.size	nghttp2_session_callbacks_set_on_frame_not_send_callback, .-nghttp2_session_callbacks_set_on_frame_not_send_callback
	.section	.text.nghttp2_session_callbacks_set_on_stream_close_callback,"ax",@progbits
	.align	4
	.global	nghttp2_session_callbacks_set_on_stream_close_callback
	.type	nghttp2_session_callbacks_set_on_stream_close_callback, @function
nghttp2_session_callbacks_set_on_stream_close_callback:
.LFB10:
	.loc 1 91 0
.LVL15:
	entry	sp, 32
.LCFI10:
	.loc 1 92 0
	s32i.n	a3, a2, 32
	retw.n
.LFE10:
	.size	nghttp2_session_callbacks_set_on_stream_close_callback, .-nghttp2_session_callbacks_set_on_stream_close_callback
	.section	.text.nghttp2_session_callbacks_set_on_begin_headers_callback,"ax",@progbits
	.align	4
	.global	nghttp2_session_callbacks_set_on_begin_headers_callback
	.type	nghttp2_session_callbacks_set_on_begin_headers_callback, @function
nghttp2_session_callbacks_set_on_begin_headers_callback:
.LFB11:
	.loc 1 97 0
.LVL16:
	entry	sp, 32
.LCFI11:
	.loc 1 98 0
	s32i.n	a3, a2, 36
	retw.n
.LFE11:
	.size	nghttp2_session_callbacks_set_on_begin_headers_callback, .-nghttp2_session_callbacks_set_on_begin_headers_callback
	.section	.text.nghttp2_session_callbacks_set_on_header_callback,"ax",@progbits
	.align	4
	.global	nghttp2_session_callbacks_set_on_header_callback
	.type	nghttp2_session_callbacks_set_on_header_callback, @function
nghttp2_session_callbacks_set_on_header_callback:
.LFB12:
	.loc 1 103 0
.LVL17:
	entry	sp, 32
.LCFI12:
	.loc 1 104 0
	s32i.n	a3, a2, 40
	retw.n
.LFE12:
	.size	nghttp2_session_callbacks_set_on_header_callback, .-nghttp2_session_callbacks_set_on_header_callback
	.section	.text.nghttp2_session_callbacks_set_on_header_callback2,"ax",@progbits
	.align	4
	.global	nghttp2_session_callbacks_set_on_header_callback2
	.type	nghttp2_session_callbacks_set_on_header_callback2, @function
nghttp2_session_callbacks_set_on_header_callback2:
.LFB13:
	.loc 1 109 0
.LVL18:
	entry	sp, 32
.LCFI13:
	.loc 1 110 0
	s32i.n	a3, a2, 44
	retw.n
.LFE13:
	.size	nghttp2_session_callbacks_set_on_header_callback2, .-nghttp2_session_callbacks_set_on_header_callback2
	.section	.text.nghttp2_session_callbacks_set_on_invalid_header_callback,"ax",@progbits
	.align	4
	.global	nghttp2_session_callbacks_set_on_invalid_header_callback
	.type	nghttp2_session_callbacks_set_on_invalid_header_callback, @function
nghttp2_session_callbacks_set_on_invalid_header_callback:
.LFB14:
	.loc 1 115 0
.LVL19:
	entry	sp, 32
.LCFI14:
	.loc 1 116 0
	s32i.n	a3, a2, 48
	retw.n
.LFE14:
	.size	nghttp2_session_callbacks_set_on_invalid_header_callback, .-nghttp2_session_callbacks_set_on_invalid_header_callback
	.section	.text.nghttp2_session_callbacks_set_on_invalid_header_callback2,"ax",@progbits
	.align	4
	.global	nghttp2_session_callbacks_set_on_invalid_header_callback2
	.type	nghttp2_session_callbacks_set_on_invalid_header_callback2, @function
nghttp2_session_callbacks_set_on_invalid_header_callback2:
.LFB15:
	.loc 1 121 0
.LVL20:
	entry	sp, 32
.LCFI15:
	.loc 1 122 0
	s32i.n	a3, a2, 52
	retw.n
.LFE15:
	.size	nghttp2_session_callbacks_set_on_invalid_header_callback2, .-nghttp2_session_callbacks_set_on_invalid_header_callback2
	.section	.text.nghttp2_session_callbacks_set_select_padding_callback,"ax",@progbits
	.align	4
	.global	nghttp2_session_callbacks_set_select_padding_callback
	.type	nghttp2_session_callbacks_set_select_padding_callback, @function
nghttp2_session_callbacks_set_select_padding_callback:
.LFB16:
	.loc 1 127 0
.LVL21:
	entry	sp, 32
.LCFI16:
	.loc 1 128 0
	s32i.n	a3, a2, 56
	retw.n
.LFE16:
	.size	nghttp2_session_callbacks_set_select_padding_callback, .-nghttp2_session_callbacks_set_select_padding_callback
	.section	.text.nghttp2_session_callbacks_set_data_source_read_length_callback,"ax",@progbits
	.align	4
	.global	nghttp2_session_callbacks_set_data_source_read_length_callback
	.type	nghttp2_session_callbacks_set_data_source_read_length_callback, @function
nghttp2_session_callbacks_set_data_source_read_length_callback:
.LFB17:
	.loc 1 133 0
.LVL22:
	entry	sp, 32
.LCFI17:
	.loc 1 134 0
	s32i.n	a3, a2, 60
	retw.n
.LFE17:
	.size	nghttp2_session_callbacks_set_data_source_read_length_callback, .-nghttp2_session_callbacks_set_data_source_read_length_callback
	.section	.text.nghttp2_session_callbacks_set_on_begin_frame_callback,"ax",@progbits
	.align	4
	.global	nghttp2_session_callbacks_set_on_begin_frame_callback
	.type	nghttp2_session_callbacks_set_on_begin_frame_callback, @function
nghttp2_session_callbacks_set_on_begin_frame_callback:
.LFB18:
	.loc 1 139 0
.LVL23:
	entry	sp, 32
.LCFI18:
	.loc 1 140 0
	s32i	a3, a2, 64
	retw.n
.LFE18:
	.size	nghttp2_session_callbacks_set_on_begin_frame_callback, .-nghttp2_session_callbacks_set_on_begin_frame_callback
	.section	.text.nghttp2_session_callbacks_set_send_data_callback,"ax",@progbits
	.align	4
	.global	nghttp2_session_callbacks_set_send_data_callback
	.type	nghttp2_session_callbacks_set_send_data_callback, @function
nghttp2_session_callbacks_set_send_data_callback:
.LFB19:
	.loc 1 145 0
.LVL24:
	entry	sp, 32
.LCFI19:
	.loc 1 146 0
	s32i	a3, a2, 68
	retw.n
.LFE19:
	.size	nghttp2_session_callbacks_set_send_data_callback, .-nghttp2_session_callbacks_set_send_data_callback
	.section	.text.nghttp2_session_callbacks_set_pack_extension_callback,"ax",@progbits
	.align	4
	.global	nghttp2_session_callbacks_set_pack_extension_callback
	.type	nghttp2_session_callbacks_set_pack_extension_callback, @function
nghttp2_session_callbacks_set_pack_extension_callback:
.LFB20:
	.loc 1 151 0
.LVL25:
	entry	sp, 32
.LCFI20:
	.loc 1 152 0
	s32i	a3, a2, 72
	retw.n
.LFE20:
	.size	nghttp2_session_callbacks_set_pack_extension_callback, .-nghttp2_session_callbacks_set_pack_extension_callback
	.section	.text.nghttp2_session_callbacks_set_unpack_extension_callback,"ax",@progbits
	.align	4
	.global	nghttp2_session_callbacks_set_unpack_extension_callback
	.type	nghttp2_session_callbacks_set_unpack_extension_callback, @function
nghttp2_session_callbacks_set_unpack_extension_callback:
.LFB21:
	.loc 1 157 0
.LVL26:
	entry	sp, 32
.LCFI21:
	.loc 1 158 0
	s32i	a3, a2, 76
	retw.n
.LFE21:
	.size	nghttp2_session_callbacks_set_unpack_extension_callback, .-nghttp2_session_callbacks_set_unpack_extension_callback
	.section	.text.nghttp2_session_callbacks_set_on_extension_chunk_recv_callback,"ax",@progbits
	.align	4
	.global	nghttp2_session_callbacks_set_on_extension_chunk_recv_callback
	.type	nghttp2_session_callbacks_set_on_extension_chunk_recv_callback, @function
nghttp2_session_callbacks_set_on_extension_chunk_recv_callback:
.LFB22:
	.loc 1 163 0
.LVL27:
	entry	sp, 32
.LCFI22:
	.loc 1 164 0
	s32i	a3, a2, 80
	retw.n
.LFE22:
	.size	nghttp2_session_callbacks_set_on_extension_chunk_recv_callback, .-nghttp2_session_callbacks_set_on_extension_chunk_recv_callback
	.section	.text.nghttp2_session_callbacks_set_error_callback,"ax",@progbits
	.align	4
	.global	nghttp2_session_callbacks_set_error_callback
	.type	nghttp2_session_callbacks_set_error_callback, @function
nghttp2_session_callbacks_set_error_callback:
.LFB23:
	.loc 1 168 0
.LVL28:
	entry	sp, 32
.LCFI23:
	.loc 1 169 0
	s32i	a3, a2, 84
	retw.n
.LFE23:
	.size	nghttp2_session_callbacks_set_error_callback, .-nghttp2_session_callbacks_set_error_callback
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
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x4
	.4byte	.LCFI0-.LFB0
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x4
	.4byte	.LCFI1-.LFB1
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI2-.LFB2
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI3-.LFB3
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI4-.LFB4
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI5-.LFB5
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI6-.LFB6
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI7-.LFB7
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x4
	.4byte	.LCFI8-.LFB8
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x4
	.4byte	.LCFI9-.LFB9
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI10-.LFB10
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x4
	.4byte	.LCFI11-.LFB11
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI12-.LFB12
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI13-.LFB13
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI14-.LFB14
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI15-.LFB15
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI16-.LFB16
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI17-.LFB17
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI18-.LFB18
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE36:
.LSFDE38:
	.4byte	.LEFDE38-.LASFDE38
.LASFDE38:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI19-.LFB19
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE38:
.LSFDE40:
	.4byte	.LEFDE40-.LASFDE40
.LASFDE40:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI20-.LFB20
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE40:
.LSFDE42:
	.4byte	.LEFDE42-.LASFDE42
.LASFDE42:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI21-.LFB21
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE42:
.LSFDE44:
	.4byte	.LEFDE44-.LASFDE44
.LASFDE44:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI22-.LFB22
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE44:
.LSFDE46:
	.4byte	.LEFDE46-.LASFDE46
.LASFDE46:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI23-.LFB23
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE46:
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 3 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/_types.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/types.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/nghttp/nghttp2/lib/includes/nghttp2/nghttp2.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/nghttp/nghttp2/lib/nghttp2_callbacks.h"
	.file 9 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x108b
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF186
	.byte	0xc
	.4byte	.LASF187
	.4byte	.LASF188
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
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x19
	.4byte	0x57
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
	.byte	0xd8
	.4byte	0x69
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x4
	.byte	0x37
	.4byte	0x57
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb8
	.uleb128 0x7
	.4byte	0xab
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x5
	.byte	0xcb
	.4byte	0x92
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x6
	.byte	0x15
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x6
	.byte	0x2c
	.4byte	0x4c
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x6
	.byte	0x2d
	.4byte	0x5e
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x7
	.byte	0x7c
	.4byte	0xf4
	.uleb128 0x8
	.4byte	.LASF20
	.uleb128 0x9
	.byte	0x4
	.4byte	0x57
	.byte	0x7
	.byte	0xe7
	.4byte	0x217
	.uleb128 0xa
	.4byte	.LASF21
	.sleb128 -501
	.uleb128 0xa
	.4byte	.LASF22
	.sleb128 -502
	.uleb128 0xa
	.4byte	.LASF23
	.sleb128 -503
	.uleb128 0xa
	.4byte	.LASF24
	.sleb128 -504
	.uleb128 0xa
	.4byte	.LASF25
	.sleb128 -505
	.uleb128 0xa
	.4byte	.LASF26
	.sleb128 -506
	.uleb128 0xa
	.4byte	.LASF27
	.sleb128 -507
	.uleb128 0xa
	.4byte	.LASF28
	.sleb128 -508
	.uleb128 0xa
	.4byte	.LASF29
	.sleb128 -509
	.uleb128 0xa
	.4byte	.LASF30
	.sleb128 -510
	.uleb128 0xa
	.4byte	.LASF31
	.sleb128 -511
	.uleb128 0xa
	.4byte	.LASF32
	.sleb128 -512
	.uleb128 0xa
	.4byte	.LASF33
	.sleb128 -513
	.uleb128 0xa
	.4byte	.LASF34
	.sleb128 -514
	.uleb128 0xa
	.4byte	.LASF35
	.sleb128 -515
	.uleb128 0xa
	.4byte	.LASF36
	.sleb128 -516
	.uleb128 0xa
	.4byte	.LASF37
	.sleb128 -517
	.uleb128 0xa
	.4byte	.LASF38
	.sleb128 -518
	.uleb128 0xa
	.4byte	.LASF39
	.sleb128 -519
	.uleb128 0xa
	.4byte	.LASF40
	.sleb128 -521
	.uleb128 0xa
	.4byte	.LASF41
	.sleb128 -522
	.uleb128 0xa
	.4byte	.LASF42
	.sleb128 -523
	.uleb128 0xa
	.4byte	.LASF43
	.sleb128 -524
	.uleb128 0xa
	.4byte	.LASF44
	.sleb128 -525
	.uleb128 0xa
	.4byte	.LASF45
	.sleb128 -526
	.uleb128 0xa
	.4byte	.LASF46
	.sleb128 -527
	.uleb128 0xa
	.4byte	.LASF47
	.sleb128 -528
	.uleb128 0xa
	.4byte	.LASF48
	.sleb128 -529
	.uleb128 0xa
	.4byte	.LASF49
	.sleb128 -530
	.uleb128 0xa
	.4byte	.LASF50
	.sleb128 -531
	.uleb128 0xa
	.4byte	.LASF51
	.sleb128 -532
	.uleb128 0xa
	.4byte	.LASF52
	.sleb128 -533
	.uleb128 0xa
	.4byte	.LASF53
	.sleb128 -534
	.uleb128 0xa
	.4byte	.LASF54
	.sleb128 -535
	.uleb128 0xa
	.4byte	.LASF55
	.sleb128 -900
	.uleb128 0xa
	.4byte	.LASF56
	.sleb128 -901
	.uleb128 0xa
	.4byte	.LASF57
	.sleb128 -902
	.uleb128 0xa
	.4byte	.LASF58
	.sleb128 -903
	.uleb128 0xa
	.4byte	.LASF59
	.sleb128 -904
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xc8
	.uleb128 0xb
	.4byte	.LASF60
	.byte	0x7
	.2byte	0x1bf
	.4byte	0x229
	.uleb128 0x8
	.4byte	.LASF60
	.uleb128 0xc
	.byte	0x14
	.byte	0x7
	.2byte	0x1fb
	.4byte	0x279
	.uleb128 0xd
	.4byte	.LASF61
	.byte	0x7
	.2byte	0x208
	.4byte	0x217
	.byte	0
	.uleb128 0xd
	.4byte	.LASF62
	.byte	0x7
	.2byte	0x215
	.4byte	0x217
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF63
	.byte	0x7
	.2byte	0x219
	.4byte	0x7e
	.byte	0x8
	.uleb128 0xd
	.4byte	.LASF64
	.byte	0x7
	.2byte	0x21d
	.4byte	0x7e
	.byte	0xc
	.uleb128 0xd
	.4byte	.LASF65
	.byte	0x7
	.2byte	0x221
	.4byte	0xc8
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.4byte	.LASF66
	.byte	0x7
	.2byte	0x222
	.4byte	0x22e
	.uleb128 0xc
	.byte	0xc
	.byte	0x7
	.2byte	0x2f3
	.4byte	0x2d0
	.uleb128 0xd
	.4byte	.LASF67
	.byte	0x7
	.2byte	0x2f7
	.4byte	0x7e
	.byte	0
	.uleb128 0xd
	.4byte	.LASF68
	.byte	0x7
	.2byte	0x2fb
	.4byte	0xd3
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF69
	.byte	0x7
	.2byte	0x2ff
	.4byte	0xc8
	.byte	0x8
	.uleb128 0xd
	.4byte	.LASF65
	.byte	0x7
	.2byte	0x303
	.4byte	0xc8
	.byte	0x9
	.uleb128 0xd
	.4byte	.LASF70
	.byte	0x7
	.2byte	0x308
	.4byte	0xc8
	.byte	0xa
	.byte	0
	.uleb128 0xb
	.4byte	.LASF71
	.byte	0x7
	.2byte	0x309
	.4byte	0x285
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.2byte	0x311
	.4byte	0x2fd
	.uleb128 0xf
	.string	"fd"
	.byte	0x7
	.2byte	0x315
	.4byte	0x57
	.uleb128 0xf
	.string	"ptr"
	.byte	0x7
	.2byte	0x319
	.4byte	0x89
	.byte	0
	.uleb128 0xb
	.4byte	.LASF72
	.byte	0x7
	.2byte	0x31a
	.4byte	0x2dc
	.uleb128 0x6
	.byte	0x4
	.4byte	0xe9
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2fd
	.uleb128 0xc
	.byte	0x10
	.byte	0x7
	.2byte	0x38f
	.4byte	0x338
	.uleb128 0x10
	.string	"hd"
	.byte	0x7
	.2byte	0x390
	.4byte	0x2d0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF73
	.byte	0x7
	.2byte	0x395
	.4byte	0x7e
	.byte	0xc
	.byte	0
	.uleb128 0xb
	.4byte	.LASF74
	.byte	0x7
	.2byte	0x396
	.4byte	0x315
	.uleb128 0x11
	.byte	0x4
	.4byte	0x69
	.byte	0x7
	.2byte	0x3a1
	.4byte	0x36a
	.uleb128 0x12
	.4byte	.LASF75
	.byte	0
	.uleb128 0x12
	.4byte	.LASF76
	.byte	0x1
	.uleb128 0x12
	.4byte	.LASF77
	.byte	0x2
	.uleb128 0x12
	.4byte	.LASF78
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.4byte	.LASF79
	.byte	0x7
	.2byte	0x3b8
	.4byte	0x344
	.uleb128 0xc
	.byte	0xc
	.byte	0x7
	.2byte	0x3bf
	.4byte	0x3a7
	.uleb128 0xd
	.4byte	.LASF68
	.byte	0x7
	.2byte	0x3c4
	.4byte	0xd3
	.byte	0
	.uleb128 0xd
	.4byte	.LASF80
	.byte	0x7
	.2byte	0x3c8
	.4byte	0xd3
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF81
	.byte	0x7
	.2byte	0x3cc
	.4byte	0xc8
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.4byte	.LASF82
	.byte	0x7
	.2byte	0x3cd
	.4byte	0x376
	.uleb128 0xc
	.byte	0x28
	.byte	0x7
	.2byte	0x3d4
	.4byte	0x40a
	.uleb128 0x10
	.string	"hd"
	.byte	0x7
	.2byte	0x3d8
	.4byte	0x2d0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF73
	.byte	0x7
	.2byte	0x3dd
	.4byte	0x7e
	.byte	0xc
	.uleb128 0xd
	.4byte	.LASF83
	.byte	0x7
	.2byte	0x3e1
	.4byte	0x3a7
	.byte	0x10
	.uleb128 0x10
	.string	"nva"
	.byte	0x7
	.2byte	0x3e5
	.4byte	0x40a
	.byte	0x1c
	.uleb128 0xd
	.4byte	.LASF84
	.byte	0x7
	.2byte	0x3e9
	.4byte	0x7e
	.byte	0x20
	.uleb128 0x10
	.string	"cat"
	.byte	0x7
	.2byte	0x3ed
	.4byte	0x36a
	.byte	0x24
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x279
	.uleb128 0xb
	.4byte	.LASF85
	.byte	0x7
	.2byte	0x3ee
	.4byte	0x3b3
	.uleb128 0xc
	.byte	0x18
	.byte	0x7
	.2byte	0x3f5
	.4byte	0x43f
	.uleb128 0x10
	.string	"hd"
	.byte	0x7
	.2byte	0x3f9
	.4byte	0x2d0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF83
	.byte	0x7
	.2byte	0x3fd
	.4byte	0x3a7
	.byte	0xc
	.byte	0
	.uleb128 0xb
	.4byte	.LASF86
	.byte	0x7
	.2byte	0x3fe
	.4byte	0x41c
	.uleb128 0xc
	.byte	0x10
	.byte	0x7
	.2byte	0x405
	.4byte	0x46e
	.uleb128 0x10
	.string	"hd"
	.byte	0x7
	.2byte	0x409
	.4byte	0x2d0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF87
	.byte	0x7
	.2byte	0x40d
	.4byte	0xde
	.byte	0xc
	.byte	0
	.uleb128 0xb
	.4byte	.LASF88
	.byte	0x7
	.2byte	0x40e
	.4byte	0x44b
	.uleb128 0xc
	.byte	0x8
	.byte	0x7
	.2byte	0x415
	.4byte	0x49e
	.uleb128 0xd
	.4byte	.LASF89
	.byte	0x7
	.2byte	0x419
	.4byte	0xd3
	.byte	0
	.uleb128 0xd
	.4byte	.LASF62
	.byte	0x7
	.2byte	0x41d
	.4byte	0xde
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.4byte	.LASF90
	.byte	0x7
	.2byte	0x41e
	.4byte	0x47a
	.uleb128 0xc
	.byte	0x14
	.byte	0x7
	.2byte	0x425
	.4byte	0x4d9
	.uleb128 0x10
	.string	"hd"
	.byte	0x7
	.2byte	0x429
	.4byte	0x2d0
	.byte	0
	.uleb128 0x10
	.string	"niv"
	.byte	0x7
	.2byte	0x42d
	.4byte	0x7e
	.byte	0xc
	.uleb128 0x10
	.string	"iv"
	.byte	0x7
	.2byte	0x431
	.4byte	0x4d9
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x49e
	.uleb128 0xb
	.4byte	.LASF91
	.byte	0x7
	.2byte	0x432
	.4byte	0x4aa
	.uleb128 0xc
	.byte	0x20
	.byte	0x7
	.2byte	0x439
	.4byte	0x542
	.uleb128 0x10
	.string	"hd"
	.byte	0x7
	.2byte	0x43d
	.4byte	0x2d0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF73
	.byte	0x7
	.2byte	0x442
	.4byte	0x7e
	.byte	0xc
	.uleb128 0x10
	.string	"nva"
	.byte	0x7
	.2byte	0x446
	.4byte	0x40a
	.byte	0x10
	.uleb128 0xd
	.4byte	.LASF84
	.byte	0x7
	.2byte	0x44a
	.4byte	0x7e
	.byte	0x14
	.uleb128 0xd
	.4byte	.LASF92
	.byte	0x7
	.2byte	0x44e
	.4byte	0xd3
	.byte	0x18
	.uleb128 0xd
	.4byte	.LASF70
	.byte	0x7
	.2byte	0x453
	.4byte	0xc8
	.byte	0x1c
	.byte	0
	.uleb128 0xb
	.4byte	.LASF93
	.byte	0x7
	.2byte	0x454
	.4byte	0x4eb
	.uleb128 0xc
	.byte	0x14
	.byte	0x7
	.2byte	0x45b
	.4byte	0x571
	.uleb128 0x10
	.string	"hd"
	.byte	0x7
	.2byte	0x45f
	.4byte	0x2d0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF94
	.byte	0x7
	.2byte	0x463
	.4byte	0x571
	.byte	0xc
	.byte	0
	.uleb128 0x13
	.4byte	0xc8
	.4byte	0x581
	.uleb128 0x14
	.4byte	0x9d
	.byte	0x7
	.byte	0
	.uleb128 0xb
	.4byte	.LASF95
	.byte	0x7
	.2byte	0x464
	.4byte	0x54e
	.uleb128 0xc
	.byte	0x20
	.byte	0x7
	.2byte	0x46b
	.4byte	0x5e4
	.uleb128 0x10
	.string	"hd"
	.byte	0x7
	.2byte	0x46f
	.4byte	0x2d0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF96
	.byte	0x7
	.2byte	0x473
	.4byte	0xd3
	.byte	0xc
	.uleb128 0xd
	.4byte	.LASF87
	.byte	0x7
	.2byte	0x477
	.4byte	0xde
	.byte	0x10
	.uleb128 0xd
	.4byte	.LASF94
	.byte	0x7
	.2byte	0x47b
	.4byte	0x217
	.byte	0x14
	.uleb128 0xd
	.4byte	.LASF97
	.byte	0x7
	.2byte	0x47f
	.4byte	0x7e
	.byte	0x18
	.uleb128 0xd
	.4byte	.LASF70
	.byte	0x7
	.2byte	0x484
	.4byte	0xc8
	.byte	0x1c
	.byte	0
	.uleb128 0xb
	.4byte	.LASF98
	.byte	0x7
	.2byte	0x485
	.4byte	0x58d
	.uleb128 0xc
	.byte	0x14
	.byte	0x7
	.2byte	0x48c
	.4byte	0x620
	.uleb128 0x10
	.string	"hd"
	.byte	0x7
	.2byte	0x490
	.4byte	0x2d0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF99
	.byte	0x7
	.2byte	0x494
	.4byte	0xd3
	.byte	0xc
	.uleb128 0xd
	.4byte	.LASF70
	.byte	0x7
	.2byte	0x499
	.4byte	0xc8
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.4byte	.LASF100
	.byte	0x7
	.2byte	0x49a
	.4byte	0x5f0
	.uleb128 0xc
	.byte	0x10
	.byte	0x7
	.2byte	0x4a1
	.4byte	0x64f
	.uleb128 0x10
	.string	"hd"
	.byte	0x7
	.2byte	0x4a5
	.4byte	0x2d0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF101
	.byte	0x7
	.2byte	0x4ad
	.4byte	0x89
	.byte	0xc
	.byte	0
	.uleb128 0xb
	.4byte	.LASF102
	.byte	0x7
	.2byte	0x4ae
	.4byte	0x62c
	.uleb128 0xe
	.byte	0x28
	.byte	0x7
	.2byte	0x4b7
	.4byte	0x6e8
	.uleb128 0xf
	.string	"hd"
	.byte	0x7
	.2byte	0x4bb
	.4byte	0x2d0
	.uleb128 0x15
	.4byte	.LASF103
	.byte	0x7
	.2byte	0x4bf
	.4byte	0x338
	.uleb128 0x15
	.4byte	.LASF104
	.byte	0x7
	.2byte	0x4c3
	.4byte	0x410
	.uleb128 0x15
	.4byte	.LASF105
	.byte	0x7
	.2byte	0x4c7
	.4byte	0x43f
	.uleb128 0x15
	.4byte	.LASF106
	.byte	0x7
	.2byte	0x4cb
	.4byte	0x46e
	.uleb128 0x15
	.4byte	.LASF107
	.byte	0x7
	.2byte	0x4cf
	.4byte	0x4df
	.uleb128 0x15
	.4byte	.LASF108
	.byte	0x7
	.2byte	0x4d3
	.4byte	0x542
	.uleb128 0x15
	.4byte	.LASF109
	.byte	0x7
	.2byte	0x4d7
	.4byte	0x581
	.uleb128 0x15
	.4byte	.LASF110
	.byte	0x7
	.2byte	0x4db
	.4byte	0x5e4
	.uleb128 0x15
	.4byte	.LASF111
	.byte	0x7
	.2byte	0x4df
	.4byte	0x620
	.uleb128 0xf
	.string	"ext"
	.byte	0x7
	.2byte	0x4e3
	.4byte	0x64f
	.byte	0
	.uleb128 0xb
	.4byte	.LASF112
	.byte	0x7
	.2byte	0x4e4
	.4byte	0x65b
	.uleb128 0xb
	.4byte	.LASF113
	.byte	0x7
	.2byte	0x504
	.4byte	0x700
	.uleb128 0x6
	.byte	0x4
	.4byte	0x706
	.uleb128 0x16
	.4byte	0xbd
	.4byte	0x729
	.uleb128 0x17
	.4byte	0x309
	.uleb128 0x17
	.4byte	0x729
	.uleb128 0x17
	.4byte	0x7e
	.uleb128 0x17
	.4byte	0x57
	.uleb128 0x17
	.4byte	0x89
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x72f
	.uleb128 0x7
	.4byte	0xc8
	.uleb128 0xb
	.4byte	.LASF114
	.byte	0x7
	.2byte	0x52f
	.4byte	0x740
	.uleb128 0x6
	.byte	0x4
	.4byte	0x746
	.uleb128 0x16
	.4byte	0x57
	.4byte	0x76e
	.uleb128 0x17
	.4byte	0x309
	.uleb128 0x17
	.4byte	0x76e
	.uleb128 0x17
	.4byte	0x729
	.uleb128 0x17
	.4byte	0x7e
	.uleb128 0x17
	.4byte	0x30f
	.uleb128 0x17
	.4byte	0x89
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x6e8
	.uleb128 0xb
	.4byte	.LASF115
	.byte	0x7
	.2byte	0x54d
	.4byte	0x780
	.uleb128 0x6
	.byte	0x4
	.4byte	0x786
	.uleb128 0x16
	.4byte	0xbd
	.4byte	0x7a9
	.uleb128 0x17
	.4byte	0x309
	.uleb128 0x17
	.4byte	0x217
	.uleb128 0x17
	.4byte	0x7e
	.uleb128 0x17
	.4byte	0x57
	.uleb128 0x17
	.4byte	0x89
	.byte	0
	.uleb128 0xb
	.4byte	.LASF116
	.byte	0x7
	.2byte	0x573
	.4byte	0x7b5
	.uleb128 0x6
	.byte	0x4
	.4byte	0x7bb
	.uleb128 0x16
	.4byte	0x57
	.4byte	0x7d4
	.uleb128 0x17
	.4byte	0x309
	.uleb128 0x17
	.4byte	0x7d4
	.uleb128 0x17
	.4byte	0x89
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x7da
	.uleb128 0x7
	.4byte	0x6e8
	.uleb128 0xb
	.4byte	.LASF117
	.byte	0x7
	.2byte	0x58f
	.4byte	0x7eb
	.uleb128 0x6
	.byte	0x4
	.4byte	0x7f1
	.uleb128 0x16
	.4byte	0x57
	.4byte	0x80f
	.uleb128 0x17
	.4byte	0x309
	.uleb128 0x17
	.4byte	0x7d4
	.uleb128 0x17
	.4byte	0x57
	.uleb128 0x17
	.4byte	0x89
	.byte	0
	.uleb128 0xb
	.4byte	.LASF118
	.byte	0x7
	.2byte	0x5b1
	.4byte	0x81b
	.uleb128 0x6
	.byte	0x4
	.4byte	0x821
	.uleb128 0x16
	.4byte	0x57
	.4byte	0x849
	.uleb128 0x17
	.4byte	0x309
	.uleb128 0x17
	.4byte	0xc8
	.uleb128 0x17
	.4byte	0xd3
	.uleb128 0x17
	.4byte	0x729
	.uleb128 0x17
	.4byte	0x7e
	.uleb128 0x17
	.4byte	0x89
	.byte	0
	.uleb128 0xb
	.4byte	.LASF119
	.byte	0x7
	.2byte	0x5d1
	.4byte	0x7b5
	.uleb128 0xb
	.4byte	.LASF120
	.byte	0x7
	.2byte	0x5e4
	.4byte	0x7b5
	.uleb128 0xb
	.4byte	.LASF121
	.byte	0x7
	.2byte	0x5fd
	.4byte	0x7eb
	.uleb128 0xb
	.4byte	.LASF122
	.byte	0x7
	.2byte	0x619
	.4byte	0x879
	.uleb128 0x6
	.byte	0x4
	.4byte	0x87f
	.uleb128 0x16
	.4byte	0x57
	.4byte	0x89d
	.uleb128 0x17
	.4byte	0x309
	.uleb128 0x17
	.4byte	0xd3
	.uleb128 0x17
	.4byte	0xde
	.uleb128 0x17
	.4byte	0x89
	.byte	0
	.uleb128 0xb
	.4byte	.LASF123
	.byte	0x7
	.2byte	0x658
	.4byte	0x7b5
	.uleb128 0xb
	.4byte	.LASF124
	.byte	0x7
	.2byte	0x6a7
	.4byte	0x8b5
	.uleb128 0x6
	.byte	0x4
	.4byte	0x8bb
	.uleb128 0x16
	.4byte	0x57
	.4byte	0x8ed
	.uleb128 0x17
	.4byte	0x309
	.uleb128 0x17
	.4byte	0x7d4
	.uleb128 0x17
	.4byte	0x729
	.uleb128 0x17
	.4byte	0x7e
	.uleb128 0x17
	.4byte	0x729
	.uleb128 0x17
	.4byte	0x7e
	.uleb128 0x17
	.4byte	0xc8
	.uleb128 0x17
	.4byte	0x89
	.byte	0
	.uleb128 0xb
	.4byte	.LASF125
	.byte	0x7
	.2byte	0x6c1
	.4byte	0x8f9
	.uleb128 0x6
	.byte	0x4
	.4byte	0x8ff
	.uleb128 0x16
	.4byte	0x57
	.4byte	0x927
	.uleb128 0x17
	.4byte	0x309
	.uleb128 0x17
	.4byte	0x7d4
	.uleb128 0x17
	.4byte	0x927
	.uleb128 0x17
	.4byte	0x927
	.uleb128 0x17
	.4byte	0xc8
	.uleb128 0x17
	.4byte	0x89
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x21d
	.uleb128 0xb
	.4byte	.LASF126
	.byte	0x7
	.2byte	0x6e6
	.4byte	0x8b5
	.uleb128 0xb
	.4byte	.LASF127
	.byte	0x7
	.2byte	0x706
	.4byte	0x8f9
	.uleb128 0xb
	.4byte	.LASF128
	.byte	0x7
	.2byte	0x71b
	.4byte	0x951
	.uleb128 0x6
	.byte	0x4
	.4byte	0x957
	.uleb128 0x16
	.4byte	0xbd
	.4byte	0x975
	.uleb128 0x17
	.4byte	0x309
	.uleb128 0x17
	.4byte	0x7d4
	.uleb128 0x17
	.4byte	0x7e
	.uleb128 0x17
	.4byte	0x89
	.byte	0
	.uleb128 0xb
	.4byte	.LASF129
	.byte	0x7
	.2byte	0x738
	.4byte	0x981
	.uleb128 0x6
	.byte	0x4
	.4byte	0x987
	.uleb128 0x16
	.4byte	0xbd
	.4byte	0x9b4
	.uleb128 0x17
	.4byte	0x309
	.uleb128 0x17
	.4byte	0xc8
	.uleb128 0x17
	.4byte	0xd3
	.uleb128 0x17
	.4byte	0xd3
	.uleb128 0x17
	.4byte	0xd3
	.uleb128 0x17
	.4byte	0xde
	.uleb128 0x17
	.4byte	0x89
	.byte	0
	.uleb128 0xb
	.4byte	.LASF130
	.byte	0x7
	.2byte	0x753
	.4byte	0x9c0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x9c6
	.uleb128 0x16
	.4byte	0x57
	.4byte	0x9df
	.uleb128 0x17
	.4byte	0x309
	.uleb128 0x17
	.4byte	0x9df
	.uleb128 0x17
	.4byte	0x89
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x9e5
	.uleb128 0x7
	.4byte	0x2d0
	.uleb128 0xb
	.4byte	.LASF131
	.byte	0x7
	.2byte	0x76a
	.4byte	0x9f6
	.uleb128 0x6
	.byte	0x4
	.4byte	0x9fc
	.uleb128 0x16
	.4byte	0x57
	.4byte	0xa1f
	.uleb128 0x17
	.4byte	0x309
	.uleb128 0x17
	.4byte	0x9df
	.uleb128 0x17
	.4byte	0x729
	.uleb128 0x17
	.4byte	0x7e
	.uleb128 0x17
	.4byte	0x89
	.byte	0
	.uleb128 0xb
	.4byte	.LASF132
	.byte	0x7
	.2byte	0x78f
	.4byte	0xa2b
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa31
	.uleb128 0x16
	.4byte	0x57
	.4byte	0xa4f
	.uleb128 0x17
	.4byte	0x309
	.uleb128 0x17
	.4byte	0xa4f
	.uleb128 0x17
	.4byte	0x9df
	.uleb128 0x17
	.4byte	0x89
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x89
	.uleb128 0xb
	.4byte	.LASF133
	.byte	0x7
	.2byte	0x7af
	.4byte	0xa61
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa67
	.uleb128 0x16
	.4byte	0xbd
	.4byte	0xa8a
	.uleb128 0x17
	.4byte	0x309
	.uleb128 0x17
	.4byte	0x217
	.uleb128 0x17
	.4byte	0x7e
	.uleb128 0x17
	.4byte	0x7d4
	.uleb128 0x17
	.4byte	0x89
	.byte	0
	.uleb128 0xb
	.4byte	.LASF134
	.byte	0x7
	.2byte	0x7ca
	.4byte	0xa96
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa9c
	.uleb128 0x16
	.4byte	0x57
	.4byte	0xaba
	.uleb128 0x17
	.4byte	0x309
	.uleb128 0x17
	.4byte	0xb2
	.uleb128 0x17
	.4byte	0x7e
	.uleb128 0x17
	.4byte	0x89
	.byte	0
	.uleb128 0xb
	.4byte	.LASF135
	.byte	0x7
	.2byte	0x7d5
	.4byte	0xac6
	.uleb128 0x18
	.4byte	.LASF135
	.byte	0x58
	.byte	0x8
	.byte	0x25
	.4byte	0xbdb
	.uleb128 0x19
	.4byte	.LASF136
	.byte	0x8
	.byte	0x2c
	.4byte	0x6f4
	.byte	0
	.uleb128 0x19
	.4byte	.LASF137
	.byte	0x8
	.byte	0x33
	.4byte	0x774
	.byte	0x4
	.uleb128 0x19
	.4byte	.LASF138
	.byte	0x8
	.byte	0x38
	.4byte	0x7a9
	.byte	0x8
	.uleb128 0x19
	.4byte	.LASF139
	.byte	0x8
	.byte	0x3d
	.4byte	0x7df
	.byte	0xc
	.uleb128 0x19
	.4byte	.LASF140
	.byte	0x8
	.byte	0x42
	.4byte	0x80f
	.byte	0x10
	.uleb128 0x19
	.4byte	.LASF141
	.byte	0x8
	.byte	0x46
	.4byte	0x849
	.byte	0x14
	.uleb128 0x19
	.4byte	.LASF142
	.byte	0x8
	.byte	0x4a
	.4byte	0x855
	.byte	0x18
	.uleb128 0x19
	.4byte	.LASF143
	.byte	0x8
	.byte	0x4f
	.4byte	0x861
	.byte	0x1c
	.uleb128 0x19
	.4byte	.LASF144
	.byte	0x8
	.byte	0x53
	.4byte	0x86d
	.byte	0x20
	.uleb128 0x19
	.4byte	.LASF145
	.byte	0x8
	.byte	0x58
	.4byte	0x89d
	.byte	0x24
	.uleb128 0x19
	.4byte	.LASF146
	.byte	0x8
	.byte	0x5d
	.4byte	0x8a9
	.byte	0x28
	.uleb128 0x19
	.4byte	.LASF147
	.byte	0x8
	.byte	0x5e
	.4byte	0x8ed
	.byte	0x2c
	.uleb128 0x19
	.4byte	.LASF148
	.byte	0x8
	.byte	0x64
	.4byte	0x92d
	.byte	0x30
	.uleb128 0x19
	.4byte	.LASF149
	.byte	0x8
	.byte	0x65
	.4byte	0x939
	.byte	0x34
	.uleb128 0x19
	.4byte	.LASF150
	.byte	0x8
	.byte	0x6b
	.4byte	0x945
	.byte	0x38
	.uleb128 0x19
	.4byte	.LASF151
	.byte	0x8
	.byte	0x70
	.4byte	0x975
	.byte	0x3c
	.uleb128 0x19
	.4byte	.LASF152
	.byte	0x8
	.byte	0x74
	.4byte	0x9b4
	.byte	0x40
	.uleb128 0x19
	.4byte	.LASF153
	.byte	0x8
	.byte	0x75
	.4byte	0x734
	.byte	0x44
	.uleb128 0x19
	.4byte	.LASF154
	.byte	0x8
	.byte	0x76
	.4byte	0xa55
	.byte	0x48
	.uleb128 0x19
	.4byte	.LASF155
	.byte	0x8
	.byte	0x77
	.4byte	0xa1f
	.byte	0x4c
	.uleb128 0x19
	.4byte	.LASF156
	.byte	0x8
	.byte	0x78
	.4byte	0x9ea
	.byte	0x50
	.uleb128 0x19
	.4byte	.LASF157
	.byte	0x8
	.byte	0x79
	.4byte	0xa8a
	.byte	0x54
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF189
	.byte	0x1
	.byte	0x1d
	.4byte	0x57
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc19
	.uleb128 0x1b
	.4byte	.LASF158
	.byte	0x1
	.byte	0x1d
	.4byte	0xc19
	.4byte	.LLST0
	.uleb128 0x1c
	.4byte	.LVL1
	.4byte	0x1078
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x58
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xc1f
	.uleb128 0x6
	.byte	0x4
	.4byte	0xaba
	.uleb128 0x1e
	.4byte	.LASF160
	.byte	0x1
	.byte	0x27
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc58
	.uleb128 0x1f
	.4byte	.LASF159
	.byte	0x1
	.byte	0x27
	.4byte	0xc1f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1c
	.4byte	.LVL6
	.4byte	0x1083
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF161
	.byte	0x1
	.byte	0x2b
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc88
	.uleb128 0x20
	.string	"cbs"
	.byte	0x1
	.byte	0x2c
	.4byte	0xc1f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1f
	.4byte	.LASF136
	.byte	0x1
	.byte	0x2c
	.4byte	0x6f4
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF162
	.byte	0x1
	.byte	0x30
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcb8
	.uleb128 0x20
	.string	"cbs"
	.byte	0x1
	.byte	0x31
	.4byte	0xc1f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1f
	.4byte	.LASF137
	.byte	0x1
	.byte	0x31
	.4byte	0x774
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF163
	.byte	0x1
	.byte	0x35
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xce8
	.uleb128 0x20
	.string	"cbs"
	.byte	0x1
	.byte	0x36
	.4byte	0xc1f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1f
	.4byte	.LASF138
	.byte	0x1
	.byte	0x37
	.4byte	0x7a9
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF164
	.byte	0x1
	.byte	0x3b
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd18
	.uleb128 0x20
	.string	"cbs"
	.byte	0x1
	.byte	0x3c
	.4byte	0xc1f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1f
	.4byte	.LASF139
	.byte	0x1
	.byte	0x3d
	.4byte	0x7df
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF165
	.byte	0x1
	.byte	0x41
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd48
	.uleb128 0x20
	.string	"cbs"
	.byte	0x1
	.byte	0x42
	.4byte	0xc1f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1f
	.4byte	.LASF140
	.byte	0x1
	.byte	0x43
	.4byte	0x80f
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF166
	.byte	0x1
	.byte	0x47
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd78
	.uleb128 0x20
	.string	"cbs"
	.byte	0x1
	.byte	0x48
	.4byte	0xc1f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1f
	.4byte	.LASF141
	.byte	0x1
	.byte	0x49
	.4byte	0x849
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF167
	.byte	0x1
	.byte	0x4d
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xda8
	.uleb128 0x20
	.string	"cbs"
	.byte	0x1
	.byte	0x4e
	.4byte	0xc1f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1f
	.4byte	.LASF142
	.byte	0x1
	.byte	0x4f
	.4byte	0x855
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF168
	.byte	0x1
	.byte	0x53
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdd8
	.uleb128 0x20
	.string	"cbs"
	.byte	0x1
	.byte	0x54
	.4byte	0xc1f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1f
	.4byte	.LASF143
	.byte	0x1
	.byte	0x55
	.4byte	0x861
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF169
	.byte	0x1
	.byte	0x59
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe08
	.uleb128 0x20
	.string	"cbs"
	.byte	0x1
	.byte	0x5a
	.4byte	0xc1f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1f
	.4byte	.LASF144
	.byte	0x1
	.byte	0x5b
	.4byte	0x86d
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF170
	.byte	0x1
	.byte	0x5f
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe38
	.uleb128 0x20
	.string	"cbs"
	.byte	0x1
	.byte	0x60
	.4byte	0xc1f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1f
	.4byte	.LASF145
	.byte	0x1
	.byte	0x61
	.4byte	0x89d
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF171
	.byte	0x1
	.byte	0x65
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe68
	.uleb128 0x20
	.string	"cbs"
	.byte	0x1
	.byte	0x66
	.4byte	0xc1f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1f
	.4byte	.LASF146
	.byte	0x1
	.byte	0x67
	.4byte	0x8a9
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF172
	.byte	0x1
	.byte	0x6b
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe98
	.uleb128 0x20
	.string	"cbs"
	.byte	0x1
	.byte	0x6c
	.4byte	0xc1f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1f
	.4byte	.LASF147
	.byte	0x1
	.byte	0x6d
	.4byte	0x8ed
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF173
	.byte	0x1
	.byte	0x71
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xec8
	.uleb128 0x20
	.string	"cbs"
	.byte	0x1
	.byte	0x72
	.4byte	0xc1f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1f
	.4byte	.LASF148
	.byte	0x1
	.byte	0x73
	.4byte	0x92d
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF174
	.byte	0x1
	.byte	0x77
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xef8
	.uleb128 0x20
	.string	"cbs"
	.byte	0x1
	.byte	0x78
	.4byte	0xc1f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1f
	.4byte	.LASF149
	.byte	0x1
	.byte	0x79
	.4byte	0x939
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF175
	.byte	0x1
	.byte	0x7d
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf28
	.uleb128 0x20
	.string	"cbs"
	.byte	0x1
	.byte	0x7e
	.4byte	0xc1f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1f
	.4byte	.LASF150
	.byte	0x1
	.byte	0x7f
	.4byte	0x945
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF176
	.byte	0x1
	.byte	0x83
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf58
	.uleb128 0x20
	.string	"cbs"
	.byte	0x1
	.byte	0x84
	.4byte	0xc1f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1f
	.4byte	.LASF177
	.byte	0x1
	.byte	0x85
	.4byte	0x975
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF178
	.byte	0x1
	.byte	0x89
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf88
	.uleb128 0x20
	.string	"cbs"
	.byte	0x1
	.byte	0x8a
	.4byte	0xc1f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1f
	.4byte	.LASF152
	.byte	0x1
	.byte	0x8b
	.4byte	0x9b4
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF179
	.byte	0x1
	.byte	0x8f
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfb8
	.uleb128 0x20
	.string	"cbs"
	.byte	0x1
	.byte	0x90
	.4byte	0xc1f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1f
	.4byte	.LASF153
	.byte	0x1
	.byte	0x91
	.4byte	0x734
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF180
	.byte	0x1
	.byte	0x95
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfe8
	.uleb128 0x20
	.string	"cbs"
	.byte	0x1
	.byte	0x96
	.4byte	0xc1f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1f
	.4byte	.LASF154
	.byte	0x1
	.byte	0x97
	.4byte	0xa55
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF181
	.byte	0x1
	.byte	0x9b
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1018
	.uleb128 0x20
	.string	"cbs"
	.byte	0x1
	.byte	0x9c
	.4byte	0xc1f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1f
	.4byte	.LASF155
	.byte	0x1
	.byte	0x9d
	.4byte	0xa1f
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF182
	.byte	0x1
	.byte	0xa1
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1048
	.uleb128 0x20
	.string	"cbs"
	.byte	0x1
	.byte	0xa2
	.4byte	0xc1f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1f
	.4byte	.LASF156
	.byte	0x1
	.byte	0xa3
	.4byte	0x9ea
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF183
	.byte	0x1
	.byte	0xa7
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1078
	.uleb128 0x20
	.string	"cbs"
	.byte	0x1
	.byte	0xa8
	.4byte	0xc1f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1f
	.4byte	.LASF157
	.byte	0x1
	.byte	0xa8
	.4byte	0xa8a
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x21
	.4byte	.LASF184
	.4byte	.LASF184
	.byte	0x9
	.byte	0x57
	.uleb128 0x21
	.4byte	.LASF185
	.4byte	.LASF185
	.byte	0x9
	.byte	0x5a
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
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.4byte	.LVL3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL4
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0xd4
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
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
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB4
	.4byte	.LFE4
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF91:
	.string	"nghttp2_settings"
.LASF186:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF56:
	.string	"NGHTTP2_ERR_NOMEM"
.LASF174:
	.string	"nghttp2_session_callbacks_set_on_invalid_header_callback2"
.LASF51:
	.string	"NGHTTP2_ERR_HTTP_MESSAGING"
.LASF77:
	.string	"NGHTTP2_HCAT_PUSH_RESPONSE"
.LASF166:
	.string	"nghttp2_session_callbacks_set_before_frame_send_callback"
.LASF26:
	.string	"NGHTTP2_ERR_INVALID_FRAME"
.LASF148:
	.string	"on_invalid_header_callback"
.LASF127:
	.string	"nghttp2_on_invalid_header_callback2"
.LASF46:
	.string	"NGHTTP2_ERR_TOO_MANY_INFLIGHT_SETTINGS"
.LASF65:
	.string	"flags"
.LASF88:
	.string	"nghttp2_rst_stream"
.LASF145:
	.string	"on_begin_headers_callback"
.LASF143:
	.string	"on_frame_not_send_callback"
.LASF44:
	.string	"NGHTTP2_ERR_INSUFF_BUFSIZE"
.LASF7:
	.string	"unsigned int"
.LASF161:
	.string	"nghttp2_session_callbacks_set_send_callback"
.LASF5:
	.string	"__int32_t"
.LASF129:
	.string	"nghttp2_data_source_read_length_callback"
.LASF43:
	.string	"NGHTTP2_ERR_FLOW_CONTROL"
.LASF40:
	.string	"NGHTTP2_ERR_TEMPORAL_CALLBACK_FAILURE"
.LASF115:
	.string	"nghttp2_recv_callback"
.LASF39:
	.string	"NGHTTP2_ERR_INVALID_STATE"
.LASF182:
	.string	"nghttp2_session_callbacks_set_on_extension_chunk_recv_callback"
.LASF53:
	.string	"NGHTTP2_ERR_INTERNAL"
.LASF185:
	.string	"free"
.LASF109:
	.string	"ping"
.LASF184:
	.string	"calloc"
.LASF167:
	.string	"nghttp2_session_callbacks_set_on_frame_send_callback"
.LASF52:
	.string	"NGHTTP2_ERR_REFUSED_STREAM"
.LASF58:
	.string	"NGHTTP2_ERR_BAD_CLIENT_MAGIC"
.LASF82:
	.string	"nghttp2_priority_spec"
.LASF79:
	.string	"nghttp2_headers_category"
.LASF19:
	.string	"uint32_t"
.LASF94:
	.string	"opaque_data"
.LASF81:
	.string	"exclusive"
.LASF95:
	.string	"nghttp2_ping"
.LASF124:
	.string	"nghttp2_on_header_callback"
.LASF153:
	.string	"send_data_callback"
.LASF178:
	.string	"nghttp2_session_callbacks_set_on_begin_frame_callback"
.LASF9:
	.string	"long long unsigned int"
.LASF55:
	.string	"NGHTTP2_ERR_FATAL"
.LASF189:
	.string	"nghttp2_session_callbacks_new"
.LASF36:
	.string	"NGHTTP2_ERR_START_STREAM_NOT_ALLOWED"
.LASF84:
	.string	"nvlen"
.LASF28:
	.string	"NGHTTP2_ERR_DEFERRED"
.LASF160:
	.string	"nghttp2_session_callbacks_del"
.LASF183:
	.string	"nghttp2_session_callbacks_set_error_callback"
.LASF134:
	.string	"nghttp2_error_callback"
.LASF62:
	.string	"value"
.LASF71:
	.string	"nghttp2_frame_hd"
.LASF31:
	.string	"NGHTTP2_ERR_STREAM_CLOSING"
.LASF157:
	.string	"error_callback"
.LASF86:
	.string	"nghttp2_priority"
.LASF10:
	.string	"size_t"
.LASF141:
	.string	"before_frame_send_callback"
.LASF101:
	.string	"payload"
.LASF45:
	.string	"NGHTTP2_ERR_PAUSE"
.LASF169:
	.string	"nghttp2_session_callbacks_set_on_stream_close_callback"
.LASF54:
	.string	"NGHTTP2_ERR_CANCEL"
.LASF125:
	.string	"nghttp2_on_header_callback2"
.LASF66:
	.string	"nghttp2_nv"
.LASF111:
	.string	"window_update"
.LASF152:
	.string	"on_begin_frame_callback"
.LASF78:
	.string	"NGHTTP2_HCAT_HEADERS"
.LASF170:
	.string	"nghttp2_session_callbacks_set_on_begin_headers_callback"
.LASF177:
	.string	"data_source_read_length_callback"
.LASF128:
	.string	"nghttp2_select_padding_callback"
.LASF168:
	.string	"nghttp2_session_callbacks_set_on_frame_not_send_callback"
.LASF27:
	.string	"NGHTTP2_ERR_EOF"
.LASF107:
	.string	"settings"
.LASF119:
	.string	"nghttp2_before_frame_send_callback"
.LASF181:
	.string	"nghttp2_session_callbacks_set_unpack_extension_callback"
.LASF99:
	.string	"window_size_increment"
.LASF104:
	.string	"headers"
.LASF34:
	.string	"NGHTTP2_ERR_INVALID_STREAM_STATE"
.LASF140:
	.string	"on_data_chunk_recv_callback"
.LASF187:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/nghttp/nghttp2/lib/nghttp2_callbacks.c"
.LASF15:
	.string	"char"
.LASF158:
	.string	"callbacks_ptr"
.LASF63:
	.string	"namelen"
.LASF132:
	.string	"nghttp2_unpack_extension_callback"
.LASF21:
	.string	"NGHTTP2_ERR_INVALID_ARGUMENT"
.LASF103:
	.string	"data"
.LASF93:
	.string	"nghttp2_push_promise"
.LASF159:
	.string	"callbacks"
.LASF16:
	.string	"ssize_t"
.LASF17:
	.string	"uint8_t"
.LASF35:
	.string	"NGHTTP2_ERR_DEFERRED_DATA_EXIST"
.LASF50:
	.string	"NGHTTP2_ERR_HTTP_HEADER"
.LASF113:
	.string	"nghttp2_send_callback"
.LASF147:
	.string	"on_header_callback2"
.LASF8:
	.string	"long long int"
.LASF75:
	.string	"NGHTTP2_HCAT_REQUEST"
.LASF74:
	.string	"nghttp2_data"
.LASF165:
	.string	"nghttp2_session_callbacks_set_on_data_chunk_recv_callback"
.LASF89:
	.string	"settings_id"
.LASF176:
	.string	"nghttp2_session_callbacks_set_data_source_read_length_callback"
.LASF90:
	.string	"nghttp2_settings_entry"
.LASF146:
	.string	"on_header_callback"
.LASF163:
	.string	"nghttp2_session_callbacks_set_on_frame_recv_callback"
.LASF180:
	.string	"nghttp2_session_callbacks_set_pack_extension_callback"
.LASF47:
	.string	"NGHTTP2_ERR_PUSH_DISABLED"
.LASF112:
	.string	"nghttp2_frame"
.LASF116:
	.string	"nghttp2_on_frame_recv_callback"
.LASF102:
	.string	"nghttp2_extension"
.LASF139:
	.string	"on_invalid_frame_recv_callback"
.LASF42:
	.string	"NGHTTP2_ERR_HEADER_COMP"
.LASF121:
	.string	"nghttp2_on_frame_not_send_callback"
.LASF32:
	.string	"NGHTTP2_ERR_STREAM_SHUT_WR"
.LASF20:
	.string	"nghttp2_session"
.LASF137:
	.string	"recv_callback"
.LASF138:
	.string	"on_frame_recv_callback"
.LASF68:
	.string	"stream_id"
.LASF72:
	.string	"nghttp2_data_source"
.LASF83:
	.string	"pri_spec"
.LASF118:
	.string	"nghttp2_on_data_chunk_recv_callback"
.LASF41:
	.string	"NGHTTP2_ERR_FRAME_SIZE_ERROR"
.LASF179:
	.string	"nghttp2_session_callbacks_set_send_data_callback"
.LASF23:
	.string	"NGHTTP2_ERR_UNSUPPORTED_VERSION"
.LASF22:
	.string	"NGHTTP2_ERR_BUFFER_ERROR"
.LASF60:
	.string	"nghttp2_rcbuf"
.LASF2:
	.string	"short int"
.LASF48:
	.string	"NGHTTP2_ERR_DATA_EXIST"
.LASF154:
	.string	"pack_extension_callback"
.LASF11:
	.string	"long int"
.LASF76:
	.string	"NGHTTP2_HCAT_RESPONSE"
.LASF67:
	.string	"length"
.LASF92:
	.string	"promised_stream_id"
.LASF135:
	.string	"nghttp2_session_callbacks"
.LASF105:
	.string	"priority"
.LASF172:
	.string	"nghttp2_session_callbacks_set_on_header_callback2"
.LASF131:
	.string	"nghttp2_on_extension_chunk_recv_callback"
.LASF175:
	.string	"nghttp2_session_callbacks_set_select_padding_callback"
.LASF29:
	.string	"NGHTTP2_ERR_STREAM_ID_NOT_AVAILABLE"
.LASF155:
	.string	"unpack_extension_callback"
.LASF162:
	.string	"nghttp2_session_callbacks_set_recv_callback"
.LASF80:
	.string	"weight"
.LASF108:
	.string	"push_promise"
.LASF85:
	.string	"nghttp2_headers"
.LASF4:
	.string	"__uint8_t"
.LASF24:
	.string	"NGHTTP2_ERR_WOULDBLOCK"
.LASF123:
	.string	"nghttp2_on_begin_headers_callback"
.LASF61:
	.string	"name"
.LASF164:
	.string	"nghttp2_session_callbacks_set_on_invalid_frame_recv_callback"
.LASF133:
	.string	"nghttp2_pack_extension_callback"
.LASF37:
	.string	"NGHTTP2_ERR_GOAWAY_ALREADY_SENT"
.LASF73:
	.string	"padlen"
.LASF64:
	.string	"valuelen"
.LASF144:
	.string	"on_stream_close_callback"
.LASF13:
	.string	"sizetype"
.LASF14:
	.string	"long unsigned int"
.LASF18:
	.string	"int32_t"
.LASF130:
	.string	"nghttp2_on_begin_frame_callback"
.LASF69:
	.string	"type"
.LASF98:
	.string	"nghttp2_goaway"
.LASF1:
	.string	"unsigned char"
.LASF150:
	.string	"select_padding_callback"
.LASF25:
	.string	"NGHTTP2_ERR_PROTO"
.LASF38:
	.string	"NGHTTP2_ERR_INVALID_HEADER_BLOCK"
.LASF6:
	.string	"__uint32_t"
.LASF120:
	.string	"nghttp2_on_frame_send_callback"
.LASF110:
	.string	"goaway"
.LASF59:
	.string	"NGHTTP2_ERR_FLOODED"
.LASF188:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\nghttp"
.LASF100:
	.string	"nghttp2_window_update"
.LASF136:
	.string	"send_callback"
.LASF49:
	.string	"NGHTTP2_ERR_SESSION_CLOSING"
.LASF106:
	.string	"rst_stream"
.LASF87:
	.string	"error_code"
.LASF96:
	.string	"last_stream_id"
.LASF57:
	.string	"NGHTTP2_ERR_CALLBACK_FAILURE"
.LASF151:
	.string	"read_length_callback"
.LASF30:
	.string	"NGHTTP2_ERR_STREAM_CLOSED"
.LASF12:
	.string	"_ssize_t"
.LASF0:
	.string	"signed char"
.LASF114:
	.string	"nghttp2_send_data_callback"
.LASF3:
	.string	"short unsigned int"
.LASF149:
	.string	"on_invalid_header_callback2"
.LASF70:
	.string	"reserved"
.LASF117:
	.string	"nghttp2_on_invalid_frame_recv_callback"
.LASF173:
	.string	"nghttp2_session_callbacks_set_on_invalid_header_callback"
.LASF33:
	.string	"NGHTTP2_ERR_INVALID_STREAM_ID"
.LASF97:
	.string	"opaque_data_len"
.LASF171:
	.string	"nghttp2_session_callbacks_set_on_header_callback"
.LASF126:
	.string	"nghttp2_on_invalid_header_callback"
.LASF142:
	.string	"on_frame_send_callback"
.LASF122:
	.string	"nghttp2_on_stream_close_callback"
.LASF156:
	.string	"on_extension_chunk_recv_callback"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
