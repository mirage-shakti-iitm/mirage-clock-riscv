	.file ""
	.section .data
	.globl	camlMirage_clock_lwt__data_begin
	.type	camlMirage_clock_lwt__data_begin, @object
camlMirage_clock_lwt__data_begin:
	.section .text
	.globl	camlMirage_clock_lwt__code_begin
	.type	camlMirage_clock_lwt__code_begin, @object
camlMirage_clock_lwt__code_begin:
	.section .data
	.quad	768
	.globl	camlMirage_clock_lwt
	.type	camlMirage_clock_lwt, @object
camlMirage_clock_lwt:
	.section .data
	.globl	camlMirage_clock_lwt__gc_roots
	.type	camlMirage_clock_lwt__gc_roots, @object
camlMirage_clock_lwt__gc_roots:
	.quad	camlMirage_clock_lwt
	.quad	0
	.globl	camlMirage_clock_lwt__entry
	.type	camlMirage_clock_lwt__entry, @function
	.section .text
	.align	2
camlMirage_clock_lwt__entry:
# checkcap -1
L100:
	li	a0, 1
	ret
	.size	camlMirage_clock_lwt__entry, .-camlMirage_clock_lwt__entry
	.section .data
	.section .text
	.globl	camlMirage_clock_lwt__code_end
	.type	camlMirage_clock_lwt__code_end, @object
camlMirage_clock_lwt__code_end:
	.long	0
	.section .data
	.globl	camlMirage_clock_lwt__data_end
	.type	camlMirage_clock_lwt__data_end, @object
camlMirage_clock_lwt__data_end:
	.quad	0
	.section .rodata
	.globl	camlMirage_clock_lwt__frametable
	.type	camlMirage_clock_lwt__frametable, @object
camlMirage_clock_lwt__frametable:
	.quad	0
