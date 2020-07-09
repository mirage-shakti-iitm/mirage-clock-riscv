	.file ""
	.section .data
	.globl	camlPclock__data_begin
	.type	camlPclock__data_begin, @object
camlPclock__data_begin:
	.section .text
	.globl	camlPclock__code_begin
	.type	camlPclock__code_begin, @object
camlPclock__code_begin:
	.section .data
	.quad	8960
	.globl	camlPclock
	.type	camlPclock, @object
camlPclock:
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.section .data
	.globl	camlPclock__gc_roots
	.type	camlPclock__gc_roots, @object
camlPclock__gc_roots:
	.quad	camlPclock
	.quad	0
	.globl	camlPclock__connect_1107
	.type	camlPclock__connect_1107, @function
	.section .text
	.align	2
camlPclock__connect_1107:
# checkcap -1
L100:
	la	a1, camlLwt
	ld	a0, 240(a1)
	ret
	.size	camlPclock__connect_1107, .-camlPclock__connect_1107
	.globl	camlPclock__disconnect_1109
	.type	camlPclock__disconnect_1109, @function
	.section .text
	.align	2
camlPclock__disconnect_1109:
# checkcap -1
L101:
	la	a1, camlLwt
	ld	a0, 240(a1)
	ret
	.size	camlPclock__disconnect_1109, .-camlPclock__disconnect_1109
	.globl	camlPclock__now_d_ps_1111
	.type	camlPclock__now_d_ps_1111, @function
	.section .text
	.align	2
camlPclock__now_d_ps_1111:
# checkcap -1
	addi	sp, sp, -16
	sd	ra, 8(sp)
L115:
	li	a0, 1
	la	t2, unix_gettimeofday
	call	caml_c_call
L102:
	mv      s2, a0
	fld	ft0, 0(s2)
	feq.d	t0, ft0, ft0
	bnez	t0, L114
	la	a0, camlPclock__4
	ld	ra, 8(sp)
	addi	sp, sp, 16
	tail	camlStdlib__failwith_1006
L114:
	fld	ft2, L116, t0
	fdiv.d	fa0, ft0, ft2
	call	floor
	fmv.d   fs0, fa0
	fld	ft6, L117, t0
	flt.d	t0, fs0, ft6
	bnez	t0, L110
	fld	ft7, L118, t0
	flt.d	t0, ft7, fs0
	bnez	t0, L110
	fld	fa1, L119, t0
	fld	fa0, 0(s2)
	call	fmod
	fld	fa1, L120, t0
	flt.d	t0, fa0, fa1
	beqz	t0, L113
	fld	fa2, L121, t0
	fadd.d	fa3, fa2, fa0
	j	L112
L113:
	fmv.d   fa3, fa0
L112:
	fld	fa4, L122, t0
	fle.d	t0, fa4, fa3
	beqz	t0, L111
L124:
	addi	s10, s10, -24
	addi	a0, s10, 8
	bltu	s10, s11, L125
	li	a1, 2048
	sd	a1, -8(a0)
	fcvt.l.d	a2, fs0
	slli	a3, a2, 1
	addi	a4, a3, 3
	sd	a4, 0(a0)
	la	a5, camlPclock__8
	sd	a5, 8(a0)
	ld	ra, 8(sp)
	addi	sp, sp, 16
	ret
L111:
	fsd	fs0, 0(sp)
L127:
	addi	s10, s10, -16
	addi	a3, s10, 8
	bltu	s10, s11, L128
	li	a4, 1277
	sd	a4, -8(a3)
	fsd	fa3, 0(a3)
	mv      a0, a3
	la	t2, caml_modf_float
	call	caml_c_call
L105:
	mv      s2, a0
	ld	a6, 8(s2)
	fld	fa5, 0(a6)
	fmv.d   fa0, fa5
	call	caml_int64_of_float_unboxed
	mv      a7, a0
	li	s3, 1000000000000
	mul	s3, a7, s3
	fld	fa6, L129, t0
	ld	s4, 0(s2)
	fld	fa7, 0(s4)
	fmul.d	fs2, fa7, fa6
	fmv.d   fa0, fs2
	call	caml_int64_of_float_unboxed
	mv      s5, a0
L131:
	addi	s10, s10, -48
	addi	s6, s10, 8
	bltu	s10, s11, L132
	li	s7, 2303
	sd	s7, -8(s6)
	la	s8, caml_int64_ops
	sd	s8, 0(s6)
	add	s9, s3, s5
	sd	s9, 8(s6)
	addi	t2, s6, 24
	li	t3, 2048
	sd	t3, -8(t2)
	fld	fs3, 0(sp)
	fcvt.l.d	t4, fs3
	slli	t5, t4, 1
	addi	t6, t5, 1
	sd	t6, 0(t2)
	sd	s6, 8(t2)
	mv      a0, t2
	ld	ra, 8(sp)
	addi	sp, sp, 16
	ret
L110:
	la	a0, camlPclock__6
	ld	ra, 8(sp)
	addi	sp, sp, 16
	tail	camlStdlib__failwith_1006
L132:
	call	caml_call_gc
L130:
	j	L131
L128:
	call	caml_call_gc
L126:
	j	L127
L125:
	call	caml_call_gc
L123:
	j	L124
	.size	camlPclock__now_d_ps_1111, .-camlPclock__now_d_ps_1111
	.section .rodata
	.align	3
L129:
	.quad	0x426d1a94a2000000
L122:
	.quad	0x40f5180000000000
L121:
	.quad	0x40f5180000000000
L120:
	.quad	0x0
L119:
	.quad	0x40f5180000000000
L118:
	.quad	0x43d0000000000000
L117:
	.quad	0xc3d0000000000000
L116:
	.quad	0x40f5180000000000
	.globl	camlPclock__current_tz_offset_s_1160
	.type	camlPclock__current_tz_offset_s_1160, @function
	.section .text
	.align	2
camlPclock__current_tz_offset_s_1160:
# checkcap -1
L133:
	li	a0, 1
	ret
	.size	camlPclock__current_tz_offset_s_1160, .-camlPclock__current_tz_offset_s_1160
	.globl	camlPclock__period_d_ps_1163
	.type	camlPclock__period_d_ps_1163, @function
	.section .text
	.align	2
camlPclock__period_d_ps_1163:
# checkcap -1
L134:
	la	a0, camlPclock__12
	ret
	.size	camlPclock__period_d_ps_1163, .-camlPclock__period_d_ps_1163
	.section .data
	.quad	2045
	.globl	camlPclock__1
	.type	camlPclock__1, @object
camlPclock__1:
	.quad	0xc3d0000000000000
	.section .data
	.quad	2045
	.globl	camlPclock__2
	.type	camlPclock__2, @object
camlPclock__2:
	.quad	0x43d0000000000000
	.section .data
	.quad	3071
	.globl	camlPclock__3
	.type	camlPclock__3, @object
camlPclock__3:
	.quad	caml_int64_ops
	.quad	1000000000000
	.section .data
	.quad	5116
camlPclock__4:
	.byte	117,110,105,120,95,103,101,116,116,105,109,101,111,102,100,97
	.byte	121,32,114,101,116,117,114,110,101,100,32,78,97,78
	.space	1
	.byte	1
	.section .data
	.quad	2045
camlPclock__5:
	.quad	0x40f5180000000000
	.section .data
	.quad	9212
camlPclock__6:
	.byte	117,110,105,120,95,103,101,116,116,105,109,101,111,102,100,97
	.byte	121,32,114,101,116,117,114,110,101,100,32,110,117,109,98,101
	.byte	114,32,111,102,32,100,97,121,115,32,111,117,116,115,105,100
	.byte	101,32,105,110,116,32,114,97,110,103,101
	.space	4
	.byte	4
	.section .data
	.quad	2045
camlPclock__7:
	.quad	0x0
	.section .data
	.quad	3071
camlPclock__8:
	.quad	caml_int64_ops
	.quad	0
	.section .data
	.quad	2045
camlPclock__9:
	.quad	0x426d1a94a2000000
	.section .data
	.quad	3071
	.globl	camlPclock__10
	.type	camlPclock__10, @object
camlPclock__10:
	.quad	caml_int64_ops
	.quad	1000000
	.section .data
	.quad	2816
	.globl	camlPclock__11
	.type	camlPclock__11, @object
camlPclock__11:
	.quad	1
	.quad	camlPclock__10
	.section .data
	.quad	1792
	.globl	camlPclock__12
	.type	camlPclock__12, @object
camlPclock__12:
	.quad	camlPclock__11
	.section .data
	.quad	3063
camlPclock__13:
	.quad	camlPclock__period_d_ps_1163
	.quad	3
	.section .data
	.quad	3063
camlPclock__14:
	.quad	camlPclock__current_tz_offset_s_1160
	.quad	3
	.section .data
	.quad	3063
camlPclock__15:
	.quad	camlPclock__now_d_ps_1111
	.quad	3
	.section .data
	.quad	3063
camlPclock__16:
	.quad	camlPclock__disconnect_1109
	.quad	3
	.section .data
	.quad	3063
camlPclock__17:
	.quad	camlPclock__connect_1107
	.quad	3
	.globl	camlPclock__entry
	.type	camlPclock__entry, @function
	.section .text
	.align	2
camlPclock__entry:
# checkcap -1
L135:
	la	a0, camlPclock
	la	a1, camlPclock__1
	sd	a1, 40(a0)
	la	a3, camlPclock__2
	sd	a3, 48(a0)
	la	a5, camlPclock__3
	sd	a5, 56(a0)
	la	a6, camlPclock__17
	sd	a6, 32(a0)
	la	s2, camlPclock__16
	sd	s2, 0(a0)
	la	s4, camlPclock__15
	sd	s4, 8(a0)
	la	s6, camlPclock__14
	sd	s6, 16(a0)
	la	s8, camlPclock__13
	sd	s8, 24(a0)
	li	a0, 1
	ret
	.size	camlPclock__entry, .-camlPclock__entry
	.section .data
	.quad	unix_gettimeofday
	.section .text
	.globl	camlPclock__code_end
	.type	camlPclock__code_end, @object
camlPclock__code_end:
	.long	0
	.section .data
	.globl	camlPclock__data_end
	.type	camlPclock__data_end, @object
camlPclock__data_end:
	.quad	0
	.section .rodata
	.globl	camlPclock__frametable
	.type	camlPclock__frametable, @object
camlPclock__frametable:
	.quad	5
	.quad	L130
	.short	17
	.short	0
	.align	3
	.quad	L136
	.quad	L105
	.short	17
	.short	0
	.align	3
	.quad	L137
	.quad	L126
	.short	17
	.short	0
	.align	3
	.quad	L138
	.quad	L123
	.short	17
	.short	0
	.align	3
	.quad	L139
	.quad	L102
	.short	17
	.short	0
	.align	3
	.quad	L140
	.align	3
L136:
	.long	(L141 - .) + 0xc0000000
	.long	0x2a160
	.quad	0
	.align	3
L137:
	.long	(L141 - .) + 0x80000000
	.long	0x27160
	.quad	0
	.align	3
L140:
	.long	(L141 - .) + 0x50000000
	.long	0x1f0d0
	.quad	0
	.align	3
L138:
	.long	(L141 - .) + 0xc4000000
	.long	0x25210
	.quad	0
	.align	3
L139:
	.long	(L141 - .) + 0xd8000000
	.long	0x261b0
	.quad	0
L141:
	.byte	102,114,101,101,115,116,97,110,100,105,110,103,47,112,99,108
	.byte	111,99,107,46,109,108,0
	.align	3
