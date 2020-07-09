	.file ""
	.section .data
	.globl	camlMclock__data_begin
	.type	camlMclock__data_begin, @object
camlMclock__data_begin:
	.section .text
	.globl	camlMclock__code_begin
	.type	camlMclock__code_begin, @object
camlMclock__code_begin:
	.section .data
	.quad	4864
	.globl	camlMclock
	.type	camlMclock, @object
camlMclock:
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.section .data
	.globl	camlMclock__gc_roots
	.type	camlMclock__gc_roots, @object
camlMclock__gc_roots:
	.quad	camlMclock
	.quad	0
	.globl	camlMclock__fun_1118
	.type	camlMclock__fun_1118, @function
	.section .text
	.align	2
camlMclock__fun_1118:
# checkcap -1
	addi	sp, sp, -16
	sd	ra, 8(sp)
L101:
	la	t2, caml_get_monotonic_time
	call	caml_c_call
L100:
	ld	ra, 8(sp)
	addi	sp, sp, 16
	ret
	.size	camlMclock__fun_1118, .-camlMclock__fun_1118
	.globl	camlMclock__connect_1103
	.type	camlMclock__connect_1103, @function
	.section .text
	.align	2
camlMclock__connect_1103:
# checkcap -1
L102:
	la	a1, camlLwt
	ld	a0, 240(a1)
	ret
	.size	camlMclock__connect_1103, .-camlMclock__connect_1103
	.globl	camlMclock__disconnect_1105
	.type	camlMclock__disconnect_1105, @function
	.section .text
	.align	2
camlMclock__disconnect_1105:
# checkcap -1
L103:
	la	a1, camlLwt
	ld	a0, 240(a1)
	ret
	.size	camlMclock__disconnect_1105, .-camlMclock__disconnect_1105
	.globl	camlMclock__period_ns_1108
	.type	camlMclock__period_ns_1108, @function
	.section .text
	.align	2
camlMclock__period_ns_1108:
# checkcap -1
L104:
	li	a0, 1
	ret
	.size	camlMclock__period_ns_1108, .-camlMclock__period_ns_1108
	.section .data
	.quad	3063
camlMclock__1:
	.quad	camlMclock__period_ns_1108
	.quad	3
	.section .data
	.quad	3063
camlMclock__2:
	.quad	camlMclock__disconnect_1105
	.quad	3
	.section .data
	.quad	3063
camlMclock__3:
	.quad	camlMclock__connect_1103
	.quad	3
	.section .data
	.quad	3063
camlMclock__4:
	.quad	camlMclock__fun_1118
	.quad	3
	.globl	camlMclock__entry
	.type	camlMclock__entry, @function
	.section .text
	.align	2
camlMclock__entry:
# checkcap -1
L105:
	la	a0, camlMclock
	la	a1, camlMclock__4
	sd	a1, 8(a0)
	la	a2, camlMclock__3
	sd	a2, 24(a0)
	la	a4, camlMclock__2
	sd	a4, 0(a0)
	la	a6, camlMclock__1
	sd	a6, 16(a0)
	li	a0, 1
	ret
	.size	camlMclock__entry, .-camlMclock__entry
	.section .data
	.quad	caml_get_monotonic_time
	.section .text
	.globl	camlMclock__code_end
	.type	camlMclock__code_end, @object
camlMclock__code_end:
	.long	0
	.section .data
	.globl	camlMclock__data_end
	.type	camlMclock__data_end, @object
camlMclock__data_end:
	.quad	0
	.section .rodata
	.globl	camlMclock__frametable
	.type	camlMclock__frametable, @object
camlMclock__frametable:
	.quad	1
	.quad	L100
	.short	16
	.short	0
	.align	3
