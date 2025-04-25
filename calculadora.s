	.file	"calculadora.c"
	.text
	.globl	main                            // -- Begin function main
	.p2align	2
	.type	main,@function
main:                                   // @main
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	wzr, [x29, #-4]
	mov	w0, #6                          // =0x6
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	setlocale
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	printf
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	printf
	adrp	x0, .L.str.3
	add	x0, x0, :lo12:.L.str.3
	bl	printf
	adrp	x0, .L.str.4
	add	x0, x0, :lo12:.L.str.4
	bl	printf
	adrp	x0, .L.str.5
	add	x0, x0, :lo12:.L.str.5
	bl	printf
	adrp	x0, .L.str.6
	add	x0, x0, :lo12:.L.str.6
	bl	printf
	adrp	x0, .L.str.7
	add	x0, x0, :lo12:.L.str.7
	sub	x1, x29, #8
	bl	scanf
	adrp	x0, .L.str.8
	add	x0, x0, :lo12:.L.str.8
	bl	printf
	adrp	x0, .L.str.9
	add	x0, x0, :lo12:.L.str.9
	str	x0, [sp]                        // 8-byte Folded Spill
	sub	x1, x29, #12
	bl	scanf
	adrp	x0, .L.str.10
	add	x0, x0, :lo12:.L.str.10
	bl	printf
	ldr	x0, [sp]                        // 8-byte Folded Reload
	add	x1, sp, #16
	bl	scanf
	ldur	w8, [x29, #-8]
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	subs	w8, w8, #1
	b.eq	.LBB0_4
	b	.LBB0_1
.LBB0_1:
	ldr	w8, [sp, #8]                    // 4-byte Folded Reload
	subs	w8, w8, #2
	b.eq	.LBB0_5
	b	.LBB0_2
.LBB0_2:
	ldr	w8, [sp, #8]                    // 4-byte Folded Reload
	subs	w8, w8, #3
	b.eq	.LBB0_6
	b	.LBB0_3
.LBB0_3:
	ldr	w8, [sp, #8]                    // 4-byte Folded Reload
	subs	w8, w8, #4
	b.eq	.LBB0_7
	b	.LBB0_11
.LBB0_4:
	ldur	s0, [x29, #-12]
	ldr	s1, [sp, #16]
	fadd	s0, s0, s1
	str	s0, [sp, #12]
	ldr	s0, [sp, #12]
	fcvt	d0, s0
	adrp	x0, .L.str.11
	add	x0, x0, :lo12:.L.str.11
	bl	printf
	b	.LBB0_12
.LBB0_5:
	ldur	s0, [x29, #-12]
	ldr	s1, [sp, #16]
	fsub	s0, s0, s1
	str	s0, [sp, #12]
	ldr	s0, [sp, #12]
	fcvt	d0, s0
	adrp	x0, .L.str.11
	add	x0, x0, :lo12:.L.str.11
	bl	printf
	b	.LBB0_12
.LBB0_6:
	ldur	s0, [x29, #-12]
	ldr	s1, [sp, #16]
	fmul	s0, s0, s1
	str	s0, [sp, #12]
	ldr	s0, [sp, #12]
	fcvt	d0, s0
	adrp	x0, .L.str.11
	add	x0, x0, :lo12:.L.str.11
	bl	printf
	b	.LBB0_12
.LBB0_7:
	ldr	s0, [sp, #16]
	fcmp	s0, #0.0
	b.ne	.LBB0_9
	b	.LBB0_8
.LBB0_8:
	adrp	x0, .L.str.12
	add	x0, x0, :lo12:.L.str.12
	bl	printf
	b	.LBB0_10
.LBB0_9:
	ldur	s0, [x29, #-12]
	ldr	s1, [sp, #16]
	fdiv	s0, s0, s1
	str	s0, [sp, #12]
	ldr	s0, [sp, #12]
	fcvt	d0, s0
	adrp	x0, .L.str.11
	add	x0, x0, :lo12:.L.str.11
	bl	printf
	b	.LBB0_10
.LBB0_10:
	b	.LBB0_12
.LBB0_11:
	adrp	x0, .L.str.13
	add	x0, x0, :lo12:.L.str.13
	bl	printf
	b	.LBB0_12
.LBB0_12:
	mov	w0, wzr
	.cfi_def_cfa wsp, 48
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Portuguese"
	.size	.L.str, 11

	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"Calculos\n"
	.size	.L.str.1, 10

	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"-------------------------\n"
	.size	.L.str.2, 27

	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"\n1 - Soma\n"
	.size	.L.str.3, 11

	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.asciz	"\n2 - Subtra\303\247\303\243o\n"
	.size	.L.str.4, 18

	.type	.L.str.5,@object                // @.str.5
.L.str.5:
	.asciz	"\n3 - Multiplica\303\247\303\243o\n"
	.size	.L.str.5, 22

	.type	.L.str.6,@object                // @.str.6
.L.str.6:
	.asciz	"\n4 - Divis\303\243o\n"
	.size	.L.str.6, 15

	.type	.L.str.7,@object                // @.str.7
.L.str.7:
	.asciz	"%d"
	.size	.L.str.7, 3

	.type	.L.str.8,@object                // @.str.8
.L.str.8:
	.asciz	"Digite o primeiro n\303\272mero: "
	.size	.L.str.8, 28

	.type	.L.str.9,@object                // @.str.9
.L.str.9:
	.asciz	"%f"
	.size	.L.str.9, 3

	.type	.L.str.10,@object               // @.str.10
.L.str.10:
	.asciz	"Digite o segundo n\303\272mero: "
	.size	.L.str.10, 27

	.type	.L.str.11,@object               // @.str.11
.L.str.11:
	.asciz	"Resultado %f\n"
	.size	.L.str.11, 14

	.type	.L.str.12,@object               // @.str.12
.L.str.12:
	.asciz	"Erro\n"
	.size	.L.str.12, 6

	.type	.L.str.13,@object               // @.str.13
.L.str.13:
	.asciz	"Inv\303\241lido\n"
	.size	.L.str.13, 11

	.ident	"clang version 20.1.3"
	.section	".note.GNU-stack","",@progbits
