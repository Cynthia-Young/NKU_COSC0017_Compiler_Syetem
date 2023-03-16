	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm
	.data
	.global a
	.align 4
	.size a, 20
a:
	.word 0
	.word 1
	.word 2
	.word 3
	.word 4
	.text
	.global main
	.type main , %function
main:
	push {r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #0
.L5:
	ldr r10, =4
	ldr r9, =4
	mul r8, r10, r9
	ldr r10, addr_a_0
	add r9, r8, r10
	ldr r10, [r9]
	mov r0, r10
	b .Lmain_END
.Lmain_END:
	add sp, sp, #0
	pop {r8, r9, r10, fp, lr}
	bx  lr

addr_a_0:
	.word a
