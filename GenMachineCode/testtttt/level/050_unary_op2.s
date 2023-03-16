	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm
	.text
	.global main
	.type main , %function
main:
	push {r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L13:
	ldr r10, =56
	str r10, [fp, #-8]
	ldr r10, =4
	str r10, [fp, #-4]
	ldr r10, [fp, #-8]
	sub r9, r10, #-4
	ldr r10, [fp, #-4]
	add r8, r9, r10
	str r8, [fp, #-8]
	ldr r10, [fp, #-8]
	ldr r9, =0
	cmp r9, r10
	moveq r10, #1
	movne r10, #0
	uxtb r9, r10
	ldr r10, =0
	cmp r10, r9
	moveq r10, #1
	movne r10, #0
	uxtb r9, r10
	ldr r10, =0
	cmp r10, r9
	moveq r10, #1
	movne r10, #0
	uxtb r9, r10
	ldr r10, =0
	sub r8, r10, r9
	ldr r10, =0
	cmp r10, r8
	movne r10, #1
	moveq r10, #0
	bne .L18
	b .L26
.L18:
	ldr r10, =-1
	str r10, [fp, #-8]
	b .L19
.L26:
	b .L20
.L19:
	ldr r10, [fp, #-8]
	mov r0, r10
	bl  putint
	ldr r10, =0
	mov r0, r10
	b .Lmain_END
.L20:
	ldr r10, [fp, #-4]
	ldr r9, =0
	add r8, r9, r10
	str r8, [fp, #-8]
	b .L19
.Lmain_END:
	add sp, sp, #8
	pop {r8, r9, r10, fp, lr}
	bx  lr

