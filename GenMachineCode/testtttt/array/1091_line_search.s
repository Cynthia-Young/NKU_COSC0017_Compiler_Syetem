	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm
	.text
	.global main
	.type main , %function
main:
	push {r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #76
.L16:
	ldr r10, =0
	str r10, [fp, #-72]
	ldr r10, =0
	str r10, [fp, #-76]
	b .L20
.L20:
	ldr r10, [fp, #-76]
	ldr r9, =10
	cmp r10, r9
	movlt r10, #1
	movge r10, #0
	blt .L21
	b .L25
.L21:
	ldr r10, [fp, #-76]
	add r9, r10, #1
	ldr r10, [fp, #-76]
	ldr r8, =4
	mul r7, r10, r8
	add r10, r7, #-68
	add r8, fp, r10
	str r9, [r8]
	ldr r10, [fp, #-76]
	add r9, r10, #1
	str r9, [fp, #-76]
	b .L20
.L25:
	b .L22
.L22:
	ldr r10, =10
	str r10, [fp, #-12]
	bl  getint
	mov r10, r0
	str r10, [fp, #-28]
	ldr r10, [fp, #-12]
	sub r9, r10, #1
	str r9, [fp, #-24]
	ldr r10, =0
	str r10, [fp, #-20]
	ldr r10, [fp, #-24]
	ldr r9, [fp, #-20]
	add r8, r10, r9
	ldr r10, =2
	sdiv r9, r8, r10
	str r9, [fp, #-16]
	ldr r10, =0
	str r10, [fp, #-8]
	ldr r10, =0
	str r10, [fp, #-76]
	ldr r10, =0
	str r10, [fp, #-4]
	b .L42
.L42:
	ldr r10, [fp, #-76]
	ldr r9, =10
	cmp r10, r9
	movlt r10, #1
	movge r10, #0
	blt .L45
	b .L48
.L45:
	ldr r10, [fp, #-8]
	ldr r9, =0
	cmp r10, r9
	moveq r10, #1
	movne r10, #0
	beq .L43
	b .L52
.L48:
	b .L44
.L43:
	ldr r10, [fp, #-76]
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-68
	add r9, fp, r10
	ldr r10, [r9]
	ldr r9, [fp, #-28]
	cmp r10, r9
	moveq r10, #1
	movne r10, #0
	beq .L54
	b .L62
.L52:
	b .L44
.L44:
	ldr r10, [fp, #-8]
	ldr r9, =1
	cmp r10, r9
	moveq r10, #1
	movne r10, #0
	beq .L66
	b .L71
.L54:
	ldr r10, =1
	str r10, [fp, #-8]
	ldr r10, [fp, #-76]
	str r10, [fp, #-4]
	b .L55
.L62:
	b .L55
.L66:
	ldr r10, [fp, #-4]
	mov r0, r10
	bl  putint
	b .L67
.L71:
	b .L68
.L55:
	ldr r10, [fp, #-76]
	add r9, r10, #1
	str r9, [fp, #-76]
	b .L42
.L67:
	ldr r10, =10
	str r10, [fp, #-28]
	ldr r10, [fp, #-28]
	mov r0, r10
	bl  putch
	ldr r10, =0
	mov r0, r10
	b .Lmain_END
.L68:
	ldr r10, =0
	str r10, [fp, #-28]
	ldr r10, [fp, #-28]
	mov r0, r10
	bl  putint
	b .L67
.Lmain_END:
	add sp, sp, #76
	pop {r7, r8, r9, r10, fp, lr}
	bx  lr

