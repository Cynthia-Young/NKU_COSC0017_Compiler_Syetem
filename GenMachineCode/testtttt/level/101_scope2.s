	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm
	.data
	.global k
	.align 4
	.size k, 4
k:
	.word 0
	.text
	.global main
	.type main , %function
main:
	push {r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L9:
	ldr r10, =3389
	ldr r9, addr_k_0
	str r10, [r9]
	ldr r10, addr_k_0
	ldr r9, [r10]
	ldr r10, =10000
	cmp r9, r10
	movlt r10, #1
	movge r10, #0
	blt .L10
	b .L14
.L10:
	ldr r10, addr_k_0
	ldr r9, [r10]
	add r10, r9, #1
	ldr r9, addr_k_0
	str r10, [r9]
	ldr r10, =112
	str r10, [fp, #-16]
	b .L18
.L14:
	b .L11
.L18:
	ldr r10, [fp, #-16]
	ldr r9, =10
	cmp r10, r9
	movgt r10, #1
	movle r10, #0
	bgt .L19
	b .L23
.L11:
	ldr r10, addr_k_0
	ldr r9, [r10]
	mov r0, r9
	b .Lmain_END
.L19:
	ldr r10, [fp, #-16]
	sub r9, r10, #88
	str r9, [fp, #-16]
	ldr r10, [fp, #-16]
	ldr r9, =1000
	cmp r10, r9
	movlt r10, #1
	movge r10, #0
	blt .L26
	b .L30
.L23:
	b .L20
.L26:
	ldr r10, =9
	str r10, [fp, #-12]
	ldr r10, =11
	str r10, [fp, #-8]
	ldr r10, =10
	str r10, [fp, #-12]
	ldr r10, [fp, #-16]
	ldr r9, [fp, #-12]
	sub r8, r10, r9
	str r8, [fp, #-16]
	ldr r10, =11
	str r10, [fp, #-4]
	ldr r10, [fp, #-16]
	ldr r9, [fp, #-4]
	add r8, r10, r9
	ldr r10, [fp, #-8]
	add r9, r8, r10
	str r9, [fp, #-16]
	b .L27
.L30:
	b .L27
.L20:
	ldr r10, [fp, #-16]
	mov r0, r10
	bl  putint
	b .L11
.L27:
	b .L18
.Lmain_END:
	add sp, sp, #16
	pop {r8, r9, r10, fp, lr}
	bx  lr

addr_k_0:
	.word k
