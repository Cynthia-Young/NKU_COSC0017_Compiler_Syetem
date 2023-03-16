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
	sub sp, sp, #4
.L8:
	ldr r10, =10
	str r10, [fp, #-4]
	ldr r10, [fp, #-4]
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
	bne .L10
	b .L18
.L10:
	ldr r10, =-1
	str r10, [fp, #-4]
	b .L11
.L11:
	ldr r10, [fp, #-4]
	mov r0, r10
	b .Lmain_END
.L12:
	ldr r10, =0
	str r10, [fp, #-4]
	b .L11
.L17:
.L18:
	b .L12
.L19:
.Lmain_END:
	add sp, sp, #4
	pop {r8, r9, r10, fp, lr}
	bx  lr

