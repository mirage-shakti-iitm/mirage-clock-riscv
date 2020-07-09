	.file ""
	.section .data
	.globl	camlMirage_clock__data_begin
	.type	camlMirage_clock__data_begin, @object
camlMirage_clock__data_begin:
	.section .text
	.globl	camlMirage_clock__code_begin
	.type	camlMirage_clock__code_begin, @object
camlMirage_clock__code_begin:
	.section .data
	.quad	768
	.globl	camlMirage_clock
	.type	camlMirage_clock, @object
camlMirage_clock:
	.section .data
	.globl	camlMirage_clock__gc_roots
	.type	camlMirage_clock__gc_roots, @object
camlMirage_clock__gc_roots:
	.quad	camlMirage_clock
	.quad	0
	.globl	camlMirage_clock__entry
	.type	camlMirage_clock__entry, @function
	.section .text
	.align	2
camlMirage_clock__entry:
# checkcap -1
L100:
	li	a0, 1
	ret
	.size	camlMirage_clock__entry, .-camlMirage_clock__entry
	.section .data
	.section .text
	.globl	camlMirage_clock__code_end
	.type	camlMirage_clock__code_end, @object
camlMirage_clock__code_end:
	.long	0
	.section .data
	.globl	camlMirage_clock__data_end
	.type	camlMirage_clock__data_end, @object
camlMirage_clock__data_end:
	.quad	0
	.section .rodata
	.globl	camlMirage_clock__frametable
	.type	camlMirage_clock__frametable, @object
camlMirage_clock__frametable:
	.quad	0
