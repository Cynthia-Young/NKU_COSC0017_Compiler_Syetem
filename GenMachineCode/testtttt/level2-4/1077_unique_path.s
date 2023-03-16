	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm
	.text
	.global uniquePaths
	.type uniquePaths , %function
uniquePaths:
	push {r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #52
.L31:
	str r0, [fp, #-52]
	str r1, [fp, #-48]
	ldr r10, [fp, #-52]
	ldr r9, =1
	cmp r10, r9
	moveq r10, #1
	movne r10, #0
	beq .L34
	b .L39
.L34:
	ldr r10, =1
	mov r0, r10
	b .LuniquePaths_END
.L35:
	ldr r10, =0
	str r10, [fp, #-8]
	b .L48
.L36:
	ldr r10, [fp, #-48]
	ldr r9, =1
	cmp r10, r9
	moveq r10, #1
	movne r10, #0
	beq .L34
	b .L43
.L38:
.L39:
	b .L36
.L40:
.L42:
.L43:
	b .L35
.L44:
.L48:
	ldr r10, [fp, #-8]
	ldr r9, [fp, #-52]
	cmp r10, r9
	movlt r10, #1
	movge r10, #0
	blt .L49
	b .L54
.L49:
	ldr r10, [fp, #-8]
	ldr r9, =3
	mul r8, r10, r9
	ldr r10, [fp, #-48]
	add r9, r8, r10
	sub r10, r9, #1
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-44
	ldr r9, =1
	add r8, fp, r10
	str r9, [r8]
	ldr r10, [fp, #-8]
	add r9, r10, #1
	str r9, [fp, #-8]
	b .L48
.L50:
	ldr r10, =0
	str r10, [fp, #-8]
	b .L61
.L53:
.L54:
	b .L50
.L55:
.L61:
	ldr r10, [fp, #-8]
	ldr r9, [fp, #-48]
	cmp r10, r9
	movlt r10, #1
	movge r10, #0
	blt .L62
	b .L67
.L62:
	ldr r10, [fp, #-52]
	sub r9, r10, #1
	ldr r10, =3
	mul r8, r9, r10
	ldr r10, [fp, #-8]
	add r9, r8, r10
	ldr r10, =4
	mul r8, r9, r10
	add r10, r8, #-44
	ldr r9, =1
	add r8, fp, r10
	str r9, [r8]
	ldr r10, [fp, #-8]
	add r9, r10, #1
	str r9, [fp, #-8]
	b .L61
.L63:
	ldr r10, [fp, #-52]
	sub r9, r10, #2
	str r9, [fp, #-8]
	b .L75
.L66:
.L67:
	b .L63
.L68:
.L75:
	ldr r10, [fp, #-8]
	ldr r9, =-1
	cmp r10, r9
	movgt r10, #1
	movle r10, #0
	bgt .L76
	b .L80
.L76:
	ldr r10, [fp, #-48]
	sub r9, r10, #2
	str r9, [fp, #-4]
	b .L83
.L77:
	ldr r10, =0
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-44
	add r9, fp, r10
	ldr r10, [r9]
	mov r0, r10
	b .LuniquePaths_END
.L79:
.L80:
	b .L77
.L81:
.L83:
	ldr r10, [fp, #-4]
	ldr r9, =-1
	cmp r10, r9
	movgt r10, #1
	movle r10, #0
	bgt .L84
	b .L88
.L84:
	ldr r10, [fp, #-8]
	add r9, r10, #1
	ldr r10, =3
	mul r8, r9, r10
	ldr r10, [fp, #-4]
	add r9, r8, r10
	ldr r10, =4
	mul r8, r9, r10
	add r10, r8, #-44
	add r9, fp, r10
	ldr r10, [r9]
	ldr r9, [fp, #-8]
	ldr r8, =3
	mul r7, r9, r8
	ldr r9, [fp, #-4]
	add r8, r7, r9
	add r9, r8, #1
	ldr r8, =4
	mul r7, r9, r8
	add r9, r7, #-44
	add r8, fp, r9
	ldr r9, [r8]
	add r8, r10, r9
	ldr r10, [fp, #-8]
	ldr r9, =3
	mul r7, r10, r9
	ldr r10, [fp, #-4]
	add r9, r7, r10
	ldr r10, =4
	mul r7, r9, r10
	add r10, r7, #-44
	add r9, fp, r10
	str r8, [r9]
	ldr r10, [fp, #-4]
	sub r9, r10, #1
	str r9, [fp, #-4]
	b .L83
.L85:
	ldr r10, [fp, #-8]
	sub r9, r10, #1
	str r9, [fp, #-8]
	b .L75
.L87:
.L88:
	b .L85
.L89:
.LuniquePaths_END:
	add sp, sp, #52
	pop {r7, r8, r9, r10, fp, lr}
	bx  lr

	.global main
	.type main , %function
main:
	push {r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L109:
	ldr r10, =3
	str r10, [fp, #-4]
	ldr r10, [fp, #-4]
	ldr r9, [fp, #-4]
	mov r1, r9
	mov r0, r10
	bl  uniquePaths
	mov r10, r0
	str r10, [fp, #-8]
	ldr r10, [fp, #-8]
	mov r0, r10
	b .Lmain_END
.Lmain_END:
	add sp, sp, #8
	pop {r9, r10, fp, lr}
	bx  lr

