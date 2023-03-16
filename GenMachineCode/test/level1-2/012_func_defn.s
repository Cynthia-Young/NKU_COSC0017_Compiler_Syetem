	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm
	.data
	.global a
	.align 4
	.size a, 4
a:
	.word 0
	.text
	.global func
	.type func , %function
func:
	push {r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L2:
	str r0, [fp, #-4]
	ldr r10, [fp, #-4]
	sub r9, r10, #1
	str r9, [fp, #-4]
	ldr r10, [fp, #-4]
	mov r0, r10
	b .Lfunc_END
.Lfunc_END:
	add sp, sp, #4
	pop {r9, r10, fp, lr}
	bx  lr

	.global main
	.type main , %function
main:
	push {r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L6:
	ldr r10, =10
	ldr r9, addr_a_0
	str r10, [r9]
	ldr r10, addr_a_0
	ldr r9, [r10]
	mov r0, r9
	bl  func
	mov r10, r0
	str r10, [fp, #-4]
	ldr r10, [fp, #-4]
	mov r0, r10
	b .Lmain_END
.Lmain_END:
	add sp, sp, #4
	pop {r9, r10, fp, lr}
	bx  lr

addr_a_0:
	.word a
