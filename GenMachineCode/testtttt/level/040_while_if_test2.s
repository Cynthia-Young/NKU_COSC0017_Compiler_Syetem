	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm
	.text
	.global ifWhile
	.type ifWhile , %function
ifWhile:
	push {r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L8:
	ldr r10, =0
	str r10, [fp, #-8]
	ldr r10, =3
	str r10, [fp, #-4]
	ldr r10, [fp, #-8]
	ldr r9, =5
	cmp r10, r9
	moveq r10, #1
	movne r10, #0
	beq .L11
	b .L16
.L11:
	b .L18
.L16:
	b .L13
.L18:
	ldr r10, [fp, #-4]
	ldr r9, =2
	cmp r10, r9
	moveq r10, #1
	movne r10, #0
	beq .L19
	b .L23
.L13:
	b .L27
.L19:
	ldr r10, [fp, #-4]
	add r9, r10, #2
	str r9, [fp, #-4]
	b .L18
.L23:
	b .L20
.L27:
	ldr r10, [fp, #-8]
	ldr r9, =5
	cmp r10, r9
	movlt r10, #1
	movge r10, #0
	blt .L28
	b .L32
.L20:
	ldr r10, [fp, #-4]
	add r9, r10, #25
	str r9, [fp, #-4]
	b .L12
.L28:
	ldr r10, [fp, #-4]
	ldr r9, =2
	mul r8, r10, r9
	str r8, [fp, #-4]
	ldr r10, [fp, #-8]
	add r9, r10, #1
	str r9, [fp, #-8]
	b .L27
.L32:
	b .L29
.L12:
	ldr r10, [fp, #-4]
	mov r0, r10
	b .LifWhile_END
.L29:
	b .L12
.LifWhile_END:
	add sp, sp, #8
	pop {r8, r9, r10, fp, lr}
	bx  lr

	.global main
	.type main , %function
main:
	push {r10, fp, lr}
	mov fp, sp
	sub sp, sp, #0
.L37:
	bl  ifWhile
	mov r10, r0
	mov r0, r10
	b .Lmain_END
.Lmain_END:
	add sp, sp, #0
	pop {r10, fp, lr}
	bx  lr

