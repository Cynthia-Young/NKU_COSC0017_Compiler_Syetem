	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm
	.data
	.global a
	.align 4
	.size a, 4
a:
	.word -1
	.global b
	.align 4
	.size b, 4
b:
	.word 1
	.text
	.global inc_a
	.type inc_a , %function
inc_a:
	push {r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L35:
	ldr r10, addr_a_0
	ldr r9, [r10]
	str r9, [fp, #-4]
	ldr r10, [fp, #-4]
	add r9, r10, #1
	str r9, [fp, #-4]
	ldr r10, [fp, #-4]
	ldr r9, addr_a_0
	str r10, [r9]
	ldr r10, addr_a_0
	ldr r9, [r10]
	mov r0, r9
	b .Linc_a_END
.Linc_a_END:
	add sp, sp, #4
	pop {r9, r10, fp, lr}
	bx  lr

	.global main
	.type main , %function
main:
	push {r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L41:
	ldr r10, =5
	str r10, [fp, #-4]
	b .L43
.L43:
	ldr r10, [fp, #-4]
	ldr r9, =0
	cmp r10, r9
	movge r10, #1
	movlt r10, #0
	bge .L44
	b .L48
.L44:
	bl  inc_a
	mov r10, r0
	ldr r9, =0
	cmp r9, r10
	movne r10, #1
	moveq r10, #0
	bne .L53
	b .L55
.L48:
	b .L45
.L53:
	bl  inc_a
	mov r10, r0
	ldr r9, =0
	cmp r9, r10
	movne r10, #1
	moveq r10, #0
	bne .L52
	b .L58
.L55:
	b .L51
.L45:
	ldr r10, addr_a_0
	ldr r9, [r10]
	mov r0, r9
	bl  putint
	ldr r10, =32
	mov r0, r10
	bl  putch
	ldr r10, addr_b_0
	ldr r9, [r10]
	mov r0, r9
	bl  putint
	ldr r10, =10
	mov r0, r10
	bl  putch
	ldr r10, addr_a_0
	ldr r9, [r10]
	mov r0, r9
	b .Lmain_END
.L52:
	bl  inc_a
	mov r10, r0
	ldr r9, =0
	cmp r9, r10
	movne r10, #1
	moveq r10, #0
	bne .L50
	b .L61
.L58:
	b .L51
.L51:
	bl  inc_a
	mov r10, r0
	ldr r9, =14
	cmp r10, r9
	movlt r10, #1
	movge r10, #0
	blt .L67
	b .L72
.L50:
	ldr r10, addr_a_0
	ldr r9, [r10]
	mov r0, r9
	bl  putint
	ldr r10, =32
	mov r0, r10
	bl  putch
	ldr r10, addr_b_0
	ldr r9, [r10]
	mov r0, r9
	bl  putint
	ldr r10, =10
	mov r0, r10
	bl  putch
	b .L51
.L61:
	b .L51
.L67:
	ldr r10, addr_a_0
	ldr r9, [r10]
	mov r0, r9
	bl  putint
	ldr r10, =10
	mov r0, r10
	bl  putch
	ldr r10, addr_b_0
	ldr r9, [r10]
	ldr r10, =2
	mul r8, r9, r10
	ldr r10, addr_b_0
	str r8, [r10]
	b .L68
.L72:
	b .L70
.L68:
	ldr r10, [fp, #-4]
	sub r9, r10, #1
	str r9, [fp, #-4]
	b .L43
.L70:
	bl  inc_a
	mov r10, r0
	ldr r9, =0
	cmp r9, r10
	movne r10, #1
	moveq r10, #0
	bne .L74
	b .L76
.L74:
	bl  inc_a
	mov r10, r0
	bl  inc_a
	mov r9, r0
	sub r8, r10, r9
	add r10, r8, #1
	ldr r9, =0
	cmp r9, r10
	movne r10, #1
	moveq r10, #0
	bne .L67
	b .L79
.L76:
	b .L69
.L79:
	b .L69
.L69:
	bl  inc_a
	mov r10, r0
	b .L68
.Lmain_END:
	add sp, sp, #4
	pop {r8, r9, r10, fp, lr}
	bx  lr

addr_a_0:
	.word a
addr_b_0:
	.word b
