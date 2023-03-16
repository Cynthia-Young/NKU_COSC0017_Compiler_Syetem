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
	sub sp, sp, #68
.L19:
	ldr r10, =0
	str r10, [fp, #-64]
	ldr r10, =0
	str r10, [fp, #-68]
	b .L23
.L23:
	ldr r10, [fp, #-68]
	ldr r9, =10
	cmp r10, r9
	movlt r10, #1
	movge r10, #0
	blt .L24
	b .L28
.L24:
	ldr r10, [fp, #-68]
	add r9, r10, #1
	ldr r10, [fp, #-68]
	ldr r8, =4
	mul r7, r10, r8
	add r10, r7, #-60
	add r8, fp, r10
	str r9, [r8]
	ldr r10, [fp, #-68]
	add r9, r10, #1
	str r9, [fp, #-68]
	b .L23
.L28:
	b .L25
.L25:
	ldr r10, =10
	str r10, [fp, #-4]
	bl  getint
	mov r10, r0
	str r10, [fp, #-20]
	ldr r10, [fp, #-4]
	sub r9, r10, #1
	str r9, [fp, #-16]
	ldr r10, =0
	str r10, [fp, #-12]
	ldr r10, [fp, #-16]
	ldr r9, [fp, #-12]
	add r8, r10, r9
	ldr r10, =2
	sdiv r9, r8, r10
	str r9, [fp, #-8]
	b .L43
.L43:
	ldr r10, [fp, #-8]
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-60
	add r9, fp, r10
	ldr r10, [r9]
	ldr r9, [fp, #-20]
	cmp r10, r9
	movne r10, #1
	moveq r10, #0
	bne .L46
	b .L53
.L46:
	ldr r10, [fp, #-12]
	ldr r9, [fp, #-16]
	cmp r10, r9
	movlt r10, #1
	movge r10, #0
	blt .L44
	b .L58
.L53:
	b .L45
.L44:
	ldr r10, [fp, #-16]
	ldr r9, [fp, #-12]
	add r8, r10, r9
	ldr r10, =2
	sdiv r9, r8, r10
	str r9, [fp, #-8]
	ldr r10, [fp, #-20]
	ldr r9, [fp, #-8]
	ldr r8, =4
	mul r7, r9, r8
	add r9, r7, #-60
	add r9, fp, r9
	ldr r8, [r9]
	cmp r10, r8
	movlt r10, #1
	movge r10, #0
	blt .L62
	b .L71
.L58:
	b .L45
.L45:
	ldr r10, [fp, #-20]
	ldr r9, [fp, #-8]
	ldr r8, =4
	mul r7, r9, r8
	add r9, r7, #-60
	add r8, fp, r9
	ldr r9, [r8]
	cmp r10, r9
	moveq r10, #1
	movne r10, #0
	beq .L75
	b .L84
.L62:
	ldr r10, [fp, #-8]
	sub r9, r10, #1
	str r9, [fp, #-16]
	b .L63
.L71:
	b .L64
.L75:
	ldr r10, [fp, #-20]
	mov r0, r10
	bl  putint
	b .L76
.L84:
	b .L77
.L63:
	b .L43
.L64:
	ldr r10, [fp, #-8]
	add r9, r10, #1
	str r9, [fp, #-12]
	b .L63
.L76:
	ldr r10, =10
	str r10, [fp, #-20]
	ldr r10, [fp, #-20]
	mov r0, r10
	bl  putch
	ldr r10, =0
	mov r0, r10
	b .Lmain_END
.L77:
	ldr r10, =0
	str r10, [fp, #-20]
	ldr r10, [fp, #-20]
	mov r0, r10
	bl  putint
	b .L76
.Lmain_END:
	add sp, sp, #68
	pop {r7, r8, r9, r10, fp, lr}
	bx  lr

