	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm
	.text
	.global maxArea
	.type maxArea , %function
maxArea:
	push {r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #24
.L13:
	str r0, [fp, #-24]
	str r1, [fp, #-20]
	ldr r10, =0
	str r10, [fp, #-16]
	ldr r10, [fp, #-20]
	sub r9, r10, #1
	str r9, [fp, #-12]
	ldr r10, =-1
	str r10, [fp, #-8]
	b .L20
.L20:
	ldr r10, [fp, #-16]
	ldr r9, [fp, #-12]
	cmp r10, r9
	movlt r10, #1
	movge r10, #0
	blt .L21
	b .L26
.L21:
	ldr r10, [fp, #-16]
	ldr r9, [fp, #-24]
	ldr r8, =4
	mul r7, r10, r8
	add r10, r7, r9
	ldr r9, [r10]
	ldr r10, [fp, #-12]
	ldr r8, [fp, #-24]
	ldr r7, =4
	mul r6, r10, r7
	add r10, r6, r8
	ldr r8, [r10]
	cmp r9, r8
	movlt r10, #1
	movge r10, #0
	blt .L29
	b .L43
.L26:
	b .L22
.L29:
	ldr r10, [fp, #-12]
	ldr r9, [fp, #-16]
	sub r8, r10, r9
	ldr r10, [fp, #-16]
	ldr r9, [fp, #-24]
	ldr r7, =4
	mul r6, r10, r7
	add r10, r6, r9
	ldr r9, [r10]
	mul r10, r8, r9
	str r10, [fp, #-4]
	b .L30
.L43:
	b .L31
.L22:
	ldr r10, [fp, #-8]
	mov r0, r10
	b .LmaxArea_END
.L30:
	ldr r10, [fp, #-4]
	ldr r9, [fp, #-8]
	cmp r10, r9
	movgt r10, #1
	movle r10, #0
	bgt .L59
	b .L64
.L31:
	ldr r10, [fp, #-12]
	ldr r9, [fp, #-16]
	sub r8, r10, r9
	ldr r10, [fp, #-12]
	ldr r9, [fp, #-24]
	ldr r7, =4
	mul r6, r10, r7
	add r10, r6, r9
	ldr r9, [r10]
	mul r10, r8, r9
	str r10, [fp, #-4]
	b .L30
.L59:
	ldr r10, [fp, #-4]
	str r10, [fp, #-8]
	b .L60
.L64:
	b .L60
.L60:
	ldr r10, [fp, #-16]
	ldr r9, [fp, #-24]
	ldr r8, =4
	mul r7, r10, r8
	add r10, r7, r9
	ldr r9, [r10]
	ldr r10, [fp, #-12]
	ldr r8, [fp, #-24]
	ldr r7, =4
	mul r6, r10, r7
	add r10, r6, r8
	ldr r8, [r10]
	cmp r9, r8
	movgt r10, #1
	movle r10, #0
	bgt .L67
	b .L81
.L67:
	ldr r10, [fp, #-12]
	sub r9, r10, #1
	str r9, [fp, #-12]
	b .L68
.L81:
	b .L69
.L68:
	b .L20
.L69:
	ldr r10, [fp, #-16]
	add r9, r10, #1
	str r9, [fp, #-16]
	b .L68
.LmaxArea_END:
	add sp, sp, #24
	pop {r6, r7, r8, r9, r10, fp, lr}
	bx  lr

	.global main
	.type main , %function
main:
	push {r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #44
.L86:
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
	bl  maxArea
	mov r10, r0
	str r10, [fp, #-44]
	ldr r10, [fp, #-44]
	mov r0, r10
	b .Lmain_END
.Lmain_END:
	add sp, sp, #44
	pop {r8, r9, r10, fp, lr}
	bx  lr

