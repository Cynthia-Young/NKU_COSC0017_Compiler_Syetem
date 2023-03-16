	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm
	.text
	.global canJump
	.type canJump , %function
canJump:
	push {r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #56
.L22:
	str r0, [fp, #-56]
	str r1, [fp, #-52]
	ldr r10, [fp, #-52]
	ldr r9, =1
	cmp r10, r9
	moveq r10, #1
	movne r10, #0
	beq .L25
	b .L29
.L25:
	ldr r10, =1
	mov r0, r10
	b .LcanJump_END
.L26:
	ldr r10, [fp, #-56]
	ldr r9, =0
	ldr r8, =4
	mul r7, r9, r8
	add r9, r7, r10
	ldr r10, [r9]
	ldr r9, [fp, #-52]
	sub r8, r9, #2
	cmp r10, r8
	movgt r10, #1
	movle r10, #0
	bgt .L31
	b .L39
.L28:
.L29:
	b .L26
.L30:
.L31:
	ldr r10, =1
	mov r0, r10
	b .LcanJump_END
.L32:
	ldr r10, =0
	str r10, [fp, #-8]
	b .L43
.L38:
.L39:
	b .L32
.L40:
.L43:
	ldr r10, [fp, #-8]
	ldr r9, [fp, #-52]
	sub r8, r9, #1
	cmp r10, r8
	movlt r10, #1
	movge r10, #0
	blt .L44
	b .L49
.L44:
	ldr r10, [fp, #-8]
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-48
	ldr r9, =0
	add r8, fp, r10
	str r9, [r8]
	ldr r10, [fp, #-8]
	add r9, r10, #1
	str r9, [fp, #-8]
	b .L43
.L45:
	ldr r10, [fp, #-52]
	sub r9, r10, #1
	ldr r10, =4
	mul r8, r9, r10
	add r10, r8, #-48
	ldr r9, =1
	add r8, fp, r10
	str r9, [r8]
	ldr r10, [fp, #-52]
	sub r9, r10, #2
	str r9, [fp, #-8]
	b .L59
.L48:
.L49:
	b .L45
.L50:
.L59:
	ldr r10, [fp, #-8]
	ldr r9, =-1
	cmp r10, r9
	movgt r10, #1
	movle r10, #0
	bgt .L60
	b .L64
.L60:
	ldr r10, [fp, #-8]
	ldr r9, [fp, #-56]
	ldr r8, =4
	mul r7, r10, r8
	add r10, r7, r9
	ldr r9, [r10]
	ldr r10, [fp, #-52]
	sub r8, r10, #1
	ldr r10, [fp, #-8]
	sub r7, r8, r10
	cmp r9, r7
	movlt r10, #1
	movge r10, #0
	blt .L67
	b .L78
.L61:
	ldr r10, =0
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-48
	add r9, fp, r10
	ldr r10, [r9]
	mov r0, r10
	b .LcanJump_END
.L63:
.L64:
	b .L61
.L65:
.L67:
	ldr r10, [fp, #-8]
	ldr r9, [fp, #-56]
	ldr r8, =4
	mul r7, r10, r8
	add r10, r7, r9
	ldr r9, [r10]
	str r9, [fp, #-4]
	b .L68
.L68:
	b .L87
.L69:
	ldr r10, [fp, #-52]
	sub r9, r10, #1
	ldr r10, [fp, #-8]
	sub r8, r9, r10
	str r8, [fp, #-4]
	b .L68
.L77:
.L78:
	b .L69
.L79:
.L87:
	ldr r10, [fp, #-4]
	ldr r9, =-1
	cmp r10, r9
	movgt r10, #1
	movle r10, #0
	bgt .L88
	b .L92
.L88:
	ldr r10, [fp, #-8]
	ldr r9, [fp, #-4]
	add r8, r10, r9
	ldr r10, =4
	mul r9, r8, r10
	add r10, r9, #-48
	add r9, fp, r10
	ldr r10, [r9]
	ldr r9, =0
	cmp r10, r9
	movne r10, #1
	moveq r10, #0
	bne .L94
	b .L102
.L89:
	ldr r10, [fp, #-8]
	sub r9, r10, #1
	str r9, [fp, #-8]
	b .L59
.L91:
.L92:
	b .L89
.L93:
.L94:
	ldr r10, [fp, #-8]
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-48
	ldr r9, =1
	add r8, fp, r10
	str r9, [r8]
	b .L95
.L95:
	ldr r10, [fp, #-4]
	sub r9, r10, #1
	str r9, [fp, #-4]
	b .L87
.L101:
.L102:
	b .L95
.L103:
.LcanJump_END:
	add sp, sp, #56
	pop {r7, r8, r9, r10, fp, lr}
	bx  lr

	.global main
	.type main , %function
main:
	push {r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #44
.L112:
	ldr r10, =0
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-40
	ldr r9, =3
	add r8, fp, r10
	str r9, [r8]
	ldr r10, =1
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-40
	ldr r9, =3
	add r8, fp, r10
	str r9, [r8]
	ldr r10, =2
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-40
	ldr r9, =9
	add r8, fp, r10
	str r9, [r8]
	ldr r10, =3
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-40
	ldr r9, =0
	add r8, fp, r10
	str r9, [r8]
	ldr r10, =4
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-40
	ldr r9, =0
	add r8, fp, r10
	str r9, [r8]
	ldr r10, =5
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-40
	ldr r9, =1
	add r8, fp, r10
	str r9, [r8]
	ldr r10, =6
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-40
	ldr r9, =1
	add r8, fp, r10
	str r9, [r8]
	ldr r10, =7
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-40
	ldr r9, =5
	add r8, fp, r10
	str r9, [r8]
	ldr r10, =8
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-40
	ldr r9, =7
	add r8, fp, r10
	str r9, [r8]
	ldr r10, =9
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-40
	ldr r9, =8
	add r8, fp, r10
	str r9, [r8]
	ldr r10, =10
	str r10, [fp, #-44]
	ldr r10, =0
	add r9, r10, #-40
	ldr r10, [fp, #-44]
	mov r1, r10
	add r10, fp, r9
	mov r0, r10
	bl  canJump
	mov r10, r0
	str r10, [fp, #-44]
	ldr r10, [fp, #-44]
	mov r0, r10
	b .Lmain_END
.Lmain_END:
	add sp, sp, #44
	pop {r8, r9, r10, fp, lr}
	bx  lr

