	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm
	.text
	.global û”-V
	.type û”-V , %function
û”-V:
	push {r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L23:
	str r0, [fp, #-16]
	str r1, [fp, #-12]
	ldr r10, [fp, #-12]
	ldr r9, =0
	cmp r10, r9
	moveq r10, #1
	movne r10, #0
	beq .L26
	b .L30
.L26:
	ldr r10, =0
	mov r0, r10
	b .LlengthOfLastWord_END
.L27:
	ldr r10, [fp, #-12]
	sub r9, r10, #1
	str r9, [fp, #-8]
	b .L34
.L29:
.L30:
	b .L27
.L31:
.L34:
	ldr r10, [fp, #-8]
	ldr r9, =-1
	cmp r10, r9
	movgt r10, #1
	movle r10, #0
	bgt .L37
	b .L40
.L35:
	ldr r10, [fp, #-8]
	sub r9, r10, #1
	str r9, [fp, #-8]
	b .L34
.L36:
	ldr r10, [fp, #-8]
	ldr r9, =-1
	cmp r10, r9
	moveq r10, #1
	movne r10, #0
	beq .L51
	b .L55
.L37:
	ldr r10, [fp, #-8]
	ldr r9, [fp, #-16]
	ldr r8, =4
	mul r7, r10, r8
	add r10, r7, r9
	ldr r9, [r10]
	ldr r10, =0
	cmp r9, r10
	moveq r10, #1
	movne r10, #0
	beq .L35
	b .L48
.L39:
.L40:
	b .L36
.L41:
.L47:
.L48:
	b .L36
.L49:
.L51:
	ldr r10, =0
	mov r0, r10
	b .LlengthOfLastWord_END
.L52:
	ldr r10, [fp, #-8]
	str r10, [fp, #-4]
	b .L59
.L54:
.L55:
	b .L52
.L56:
.L59:
	ldr r10, [fp, #-4]
	ldr r9, =-1
	cmp r10, r9
	movgt r10, #1
	movle r10, #0
	bgt .L60
	b .L64
.L60:
	ldr r10, [fp, #-4]
	ldr r9, [fp, #-16]
	ldr r8, =4
	mul r7, r10, r8
	add r10, r7, r9
	ldr r9, [r10]
	ldr r10, =0
	cmp r9, r10
	moveq r10, #1
	movne r10, #0
	beq .L66
	b .L74
.L61:
	ldr r10, [fp, #-8]
	ldr r9, [fp, #-4]
	sub r8, r10, r9
	mov r0, r8
	b .LlengthOfLastWord_END
.L63:
.L64:
	b .L61
.L65:
.L66:
	ldr r10, [fp, #-12]
	ldr r9, [fp, #-4]
	sub r8, r10, r9
	sub r10, r8, #1
	ldr r9, [fp, #-12]
	sub r8, r9, #1
	ldr r9, [fp, #-8]
	sub r7, r8, r9
	sub r9, r10, r7
	mov r0, r9
	b .LlengthOfLastWord_END
.L67:
	ldr r10, [fp, #-4]
	sub r9, r10, #1
	str r9, [fp, #-4]
	b .L59
.L73:
.L74:
	b .L67
.L75:
.LlengthOfLastWord_END:
	add sp, sp, #16
	pop {r7, r8, r9, r10, fp, lr}
	bx  lr

	.global main
	.type main , %function
main:
	push {r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #44
.L83:
	ldr r10, =0
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-40
	ldr r9, =-4
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
	ldr r9, =-2
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
	ldr r9, =-6
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
	bl  lengthOfLastWord
	mov r10, r0
	str r10, [fp, #-44]
	ldr r10, [fp, #-44]
	mov r0, r10
	b .Lmain_END
.Lmain_END:
	add sp, sp, #44
	pop {r8, r9, r10, fp, lr}
	bx  lr

