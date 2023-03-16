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
	.global main
	.type main , %function
main:
	push {r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #0
.L1:
	ldr r10, =10
	ldr r9, addr_a_0
	str r10, [r9]
	ldr r10, addr_a_0
	ldr r9, [r10]
	ldr r10, =0
	cmp r9, r10
	movgt r10, #1
	movle r10, #0
	bgt .L2
	b .L7
.L2:
	ldr r10, =1
	mov r0, r10
	b .Lmain_END
.L7:
	b .L4
.L4:
	ldr r10, =0
	mov r0, r10
	b .Lmain_END
.Lmain_END:
	add sp, sp, #0
	pop {r9, r10, fp, lr}
	bx  lr

addr_a_0:
	.word a
