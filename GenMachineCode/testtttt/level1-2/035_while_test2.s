	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm
	.text
	.global FourWhile
	.type FourWhile , %function
FourWhile:
	push {r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L15:
	ldr r10, =5
	str r10, [fp, #-16]
	ldr r10, =6
	str r10, [fp, #-12]
	ldr r10, =7
	str r10, [fp, #-8]
	ldr r10, =10
	str r10, [fp, #-4]
	b .L20
.L20:
	ldr r10, [fp, #-16]
	ldr r9, =20
	cmp r10, r9
	movlt r10, #1
	movge r10, #0
	blt .L21
	b .L25
.L21:
	ldr r10, [fp, #-16]
	add r9, r10, #3
	str r9, [fp, #-16]
	b .L28
.L22:
	ldr r10, [fp, #-16]
	ldr r9, [fp, #-12]
	ldr r8, [fp, #-4]
	add r7, r9, r8
	add r9, r10, r7
	ldr r10, [fp, #-8]
	add r8, r9, r10
	mov r0, r8
	b .LFourWhile_END
.L24:
.L25:
	b .L22
.L26:
.L28:
	ldr r10, [fp, #-12]
	ldr r9, =10
	cmp r10, r9
	movlt r10, #1
	movge r10, #0
	blt .L29
	b .L33
.L29:
	ldr r10, [fp, #-12]
	add r9, r10, #1
	str r9, [fp, #-12]
	b .L36
.L30:
	ldr r10, [fp, #-12]
	sub r9, r10, #2
	str r9, [fp, #-12]
	b .L20
.L32:
.L33:
	b .L30
.L34:
.L36:
	ldr r10, [fp, #-8]
	ldr r9, =7
	cmp r10, r9
	moveq r10, #1
	movne r10, #0
	beq .L37
	b .L41
.L37:
	ldr r10, [fp, #-8]
	sub r9, r10, #1
	str r9, [fp, #-8]
	b .L44
.L38:
	ldr r10, [fp, #-8]
	add r9, r10, #1
	str r9, [fp, #-8]
	b .L28
.L40:
.L41:
	b .L38
.L42:
.L44:
	ldr r10, [fp, #-4]
	ldr r9, =20
	cmp r10, r9
	movlt r10, #1
	movge r10, #0
	blt .L45
	b .L49
.L45:
	ldr r10, [fp, #-4]
	add r9, r10, #3
	str r9, [fp, #-4]
	b .L44
.L46:
	ldr r10, [fp, #-4]
	sub r9, r10, #1
	str r9, [fp, #-4]
	b .L36
.L48:
.L49:
	b .L46
.L50:
.LFourWhile_END:
	add sp, sp, #16
	pop {r7, r8, r9, r10, fp, lr}
	bx  lr

	.global main
	.type main , %function
main:
	push {r10, fp, lr}
	mov fp, sp
	sub sp, sp, #0
.L59:
	bl  FourWhile
	mov r10, r0
	mov r0, r10
	b .Lmain_END
.Lmain_END:
	add sp, sp, #0
	pop {r10, fp, lr}
	bx  lr

