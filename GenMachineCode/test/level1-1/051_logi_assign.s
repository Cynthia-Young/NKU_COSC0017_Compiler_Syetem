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
	.global b
	.align 4
	.size b, 4
b:
	.word 0
	.text
	.global main
	.type main , %function
main:
	push {r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L5:
	bl  getint
	mov r10, r0
	ldr r9, addr_a_0
	str r10, [r9]
	bl  getint
	mov r10, r0
	ldr r9, addr_b_0
	str r10, [r9]
	ldr r10, addr_a_0
	ldr r9, [r10]
	ldr r10, addr_b_0
	ldr r8, [r10]
	cmp r9, r8
	moveq r10, #1
	movne r10, #0
	beq .L10
	b .L14
.L10:
	ldr r10, addr_a_0
	ldr r9, [r10]
	ldr r10, =3
	cmp r9, r10
	movne r10, #1
	moveq r10, #0
	bne .L7
	b .L18
.L14:
	b .L9
.L7:
	ldr r10, =1
	str r10, [fp, #-4]
	b .L8
.L18:
	b .L9
.L9:
	ldr r10, =0
	str r10, [fp, #-4]
	b .L8
.L8:
	ldr r10, [fp, #-4]
	mov r0, r10
	b .Lmain_END
.Lmain_END:
	add sp, sp, #4
	pop {r8, r9, r10, fp, lr}
	bx  lr

addr_a_0:
	.word a
addr_b_0:
	.word b
