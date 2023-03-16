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
	sub sp, sp, #20
.L23:
	ldr r10, =5
	str r10, [fp, #-20]
	ldr r10, =5
	str r10, [fp, #-16]
	ldr r10, =1
	str r10, [fp, #-12]
	ldr r10, =-2
	str r10, [fp, #-8]
	ldr r10, =2
	str r10, [fp, #-4]
	ldr r10, [fp, #-8]
	ldr r9, =1
	mul r8, r10, r9
	ldr r10, =2
	sdiv r9, r8, r10
	ldr r10, =0
	cmp r9, r10
	movlt r10, #1
	movge r10, #0
	blt .L29
	b .L34
.L29:
	ldr r10, [fp, #-4]
	mov r0, r10
	bl  putint
	b .L30
.L30:
	ldr r10, [fp, #-8]
	ldr r9, =2
	sdiv r8, r10, r9
	mul r9, r8, r9
	sub r8, r10, r9
	add r10, r8, #67
	ldr r9, =0
	cmp r10, r9
	movlt r10, #1
	movge r10, #0
	blt .L47
	b .L52
.L31:
	ldr r10, [fp, #-20]
	ldr r9, [fp, #-16]
	sub r8, r10, r9
	ldr r10, =0
	cmp r8, r10
	movne r10, #1
	moveq r10, #0
	bne .L36
	b .L40
.L33:
.L34:
	b .L31
.L35:
.L36:
	ldr r10, [fp, #-12]
	add r9, r10, #3
	ldr r10, =2
	sdiv r8, r9, r10
	mul r10, r8, r10
	sub r8, r9, r10
	ldr r10, =0
	cmp r8, r10
	movne r10, #1
	moveq r10, #0
	bne .L29
	b .L44
.L39:
.L40:
	b .L30
.L41:
.L43:
.L44:
	b .L30
.L45:
.L47:
	ldr r10, =4
	str r10, [fp, #-4]
	ldr r10, [fp, #-4]
	mov r0, r10
	bl  putint
	b .L48
.L48:
	mov r0, #0
	b .Lmain_END
.L49:
	ldr r10, [fp, #-20]
	ldr r9, [fp, #-16]
	sub r8, r10, r9
	ldr r10, =0
	cmp r8, r10
	movne r10, #1
	moveq r10, #0
	bne .L54
	b .L58
.L51:
.L52:
	b .L49
.L53:
.L54:
	ldr r10, [fp, #-12]
	add r9, r10, #2
	ldr r10, =2
	sdiv r8, r9, r10
	mul r10, r8, r10
	sub r8, r9, r10
	ldr r10, =0
	cmp r8, r10
	movne r10, #1
	moveq r10, #0
	bne .L47
	b .L62
.L57:
.L58:
	b .L48
.L59:
.L61:
.L62:
	b .L48
.L63:
.Lmain_END:
	add sp, sp, #20
	pop {r8, r9, r10, fp, lr}
	bx  lr

