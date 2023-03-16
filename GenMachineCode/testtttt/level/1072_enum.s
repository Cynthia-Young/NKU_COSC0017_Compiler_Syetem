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
	sub sp, sp, #16
.L17:
	ldr r10, =0
	str r10, [fp, #-16]
	ldr r10, =0
	str r10, [fp, #-12]
	ldr r10, =0
	str r10, [fp, #-8]
	b .L22
.L22:
	ldr r10, [fp, #-16]
	ldr r9, =21
	cmp r10, r9
	movlt r10, #1
	movge r10, #0
	blt .L23
	b .L27
.L23:
	b .L29
.L27:
	b .L24
.L29:
	ldr r10, [fp, #-12]
	ldr r9, [fp, #-16]
	ldr r8, =101
	sub r7, r8, r9
	cmp r10, r7
	movlt r10, #1
	movge r10, #0
	blt .L30
	b .L35
.L24:
	ldr r10, =0
	mov r0, r10
	b .Lmain_END
.L30:
	ldr r10, [fp, #-16]
	ldr r9, =100
	sub r8, r9, r10
	ldr r10, [fp, #-12]
	sub r9, r8, r10
	str r9, [fp, #-8]
	ldr r10, [fp, #-16]
	ldr r9, =5
	mul r8, r9, r10
	ldr r10, [fp, #-12]
	ldr r9, =1
	mul r7, r9, r10
	add r10, r8, r7
	ldr r9, [fp, #-8]
	ldr r8, =2
	sdiv r7, r9, r8
	add r9, r10, r7
	ldr r10, =100
	cmp r9, r10
	moveq r10, #1
	movne r10, #0
	beq .L39
	b .L45
.L35:
	b .L31
.L39:
	ldr r10, [fp, #-16]
	mov r0, r10
	bl  putint
	ldr r10, [fp, #-12]
	mov r0, r10
	bl  putint
	ldr r10, [fp, #-8]
	mov r0, r10
	bl  putint
	ldr r10, =10
	str r10, [fp, #-4]
	ldr r10, [fp, #-4]
	mov r0, r10
	bl  putch
	b .L40
.L45:
	b .L40
.L31:
	ldr r10, [fp, #-16]
	add r9, r10, #1
	str r9, [fp, #-16]
	b .L22
.L40:
	ldr r10, [fp, #-12]
	add r9, r10, #1
	str r9, [fp, #-12]
	b .L29
.Lmain_END:
	add sp, sp, #16
	pop {r7, r8, r9, r10, fp, lr}
	bx  lr

