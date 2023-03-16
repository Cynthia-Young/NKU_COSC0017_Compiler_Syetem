	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm
	.data
	.global n
	.align 4
	.size n, 4
n:
	.word 0
	.text
	.global counting_sort
	.type counting_sort , %function
counting_sort:
	push {r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #64
.L21:
	str r0, [fp, #-64]
	str r1, [fp, #-60]
	str r2, [fp, #-56]
	ldr r10, =0
	str r10, [fp, #-4]
	ldr r10, =0
	str r10, [fp, #-12]
	ldr r10, =0
	str r10, [fp, #-8]
	b .L29
.L29:
	ldr r10, [fp, #-4]
	ldr r9, =10
	cmp r10, r9
	movlt r10, #1
	movge r10, #0
	blt .L30
	b .L34
.L30:
	ldr r10, [fp, #-4]
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-52
	ldr r9, =0
	add r8, fp, r10
	str r9, [r8]
	ldr r10, [fp, #-4]
	add r9, r10, #1
	str r9, [fp, #-4]
	b .L29
.L31:
	b .L40
.L33:
.L34:
	b .L31
.L35:
.L40:
	ldr r10, [fp, #-12]
	ldr r9, [fp, #-56]
	cmp r10, r9
	movlt r10, #1
	movge r10, #0
	blt .L41
	b .L46
.L41:
	ldr r10, [fp, #-12]
	ldr r9, [fp, #-64]
	ldr r8, =4
	mul r7, r10, r8
	add r10, r7, r9
	ldr r9, [r10]
	ldr r10, =4
	mul r8, r9, r10
	add r10, r8, #-52
	add r9, fp, r10
	ldr r10, [r9]
	add r9, r10, #1
	ldr r10, [fp, #-12]
	ldr r8, [fp, #-64]
	ldr r7, =4
	mul r6, r10, r7
	add r10, r6, r8
	ldr r8, [r10]
	ldr r10, =4
	mul r7, r8, r10
	add r10, r7, #-52
	add r8, fp, r10
	str r9, [r8]
	ldr r10, [fp, #-12]
	add r9, r10, #1
	str r9, [fp, #-12]
	b .L40
.L42:
	ldr r10, =1
	str r10, [fp, #-4]
	b .L64
.L45:
.L46:
	b .L42
.L47:
.L64:
	ldr r10, [fp, #-4]
	ldr r9, =10
	cmp r10, r9
	movlt r10, #1
	movge r10, #0
	blt .L65
	b .L69
.L65:
	ldr r10, [fp, #-4]
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-52
	add r9, fp, r10
	ldr r10, [r9]
	ldr r9, [fp, #-4]
	sub r8, r9, #1
	ldr r9, =4
	mul r7, r8, r9
	add r9, r7, #-52
	add r8, fp, r9
	ldr r9, [r8]
	add r8, r10, r9
	ldr r10, [fp, #-4]
	ldr r9, =4
	mul r7, r10, r9
	add r10, r7, #-52
	add r9, fp, r10
	str r8, [r9]
	ldr r10, [fp, #-4]
	add r9, r10, #1
	str r9, [fp, #-4]
	b .L64
.L66:
	ldr r10, [fp, #-56]
	str r10, [fp, #-8]
	b .L84
.L68:
.L69:
	b .L66
.L70:
.L84:
	ldr r10, [fp, #-8]
	ldr r9, =0
	cmp r10, r9
	movgt r10, #1
	movle r10, #0
	bgt .L85
	b .L89
.L85:
	ldr r10, [fp, #-8]
	sub r9, r10, #1
	ldr r10, [fp, #-64]
	ldr r8, =4
	mul r7, r9, r8
	add r9, r7, r10
	ldr r10, [r9]
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-52
	add r9, fp, r10
	ldr r10, [r9]
	sub r9, r10, #1
	ldr r10, [fp, #-8]
	sub r8, r10, #1
	ldr r10, [fp, #-64]
	ldr r7, =4
	mul r6, r8, r7
	add r8, r6, r10
	ldr r10, [r8]
	ldr r8, =4
	mul r7, r10, r8
	add r10, r7, #-52
	add r8, fp, r10
	str r9, [r8]
	ldr r10, [fp, #-8]
	sub r9, r10, #1
	ldr r10, [fp, #-64]
	ldr r8, =4
	mul r7, r9, r8
	add r9, r7, r10
	ldr r10, [r9]
	ldr r9, [fp, #-8]
	sub r8, r9, #1
	ldr r9, [fp, #-64]
	ldr r7, =4
	mul r6, r8, r7
	add r8, r6, r9
	ldr r9, [r8]
	ldr r8, =4
	mul r7, r9, r8
	add r9, r7, #-52
	add r8, fp, r9
	ldr r9, [r8]
	ldr r8, [fp, #-60]
	ldr r7, =4
	mul r6, r9, r7
	add r9, r6, r8
	str r10, [r9]
	ldr r10, [fp, #-8]
	sub r9, r10, #1
	str r9, [fp, #-8]
	b .L84
.L86:
	ldr r10, =0
	mov r0, r10
	b .Lcounting_sort_END
.L88:
.L89:
	b .L86
.L90:
.Lcounting_sort_END:
	add sp, sp, #64
	pop {r6, r7, r8, r9, r10, fp, lr}
	bx  lr

	.global main
	.type main , %function
main:
	push {r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #88
.L123:
	ldr r10, =10
	ldr r9, addr_n_0
	str r10, [r9]
	ldr r10, =0
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-88
	ldr r9, =4
	add r8, fp, r10
	str r9, [r8]
	ldr r10, =1
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-88
	ldr r9, =3
	add r8, fp, r10
	str r9, [r8]
	ldr r10, =2
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-88
	ldr r9, =9
	add r8, fp, r10
	str r9, [r8]
	ldr r10, =3
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-88
	ldr r9, =2
	add r8, fp, r10
	str r9, [r8]
	ldr r10, =4
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-88
	ldr r9, =0
	add r8, fp, r10
	str r9, [r8]
	ldr r10, =5
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-88
	ldr r9, =1
	add r8, fp, r10
	str r9, [r8]
	ldr r10, =6
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-88
	ldr r9, =6
	add r8, fp, r10
	str r9, [r8]
	ldr r10, =7
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-88
	ldr r9, =5
	add r8, fp, r10
	str r9, [r8]
	ldr r10, =8
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-88
	ldr r9, =7
	add r8, fp, r10
	str r9, [r8]
	ldr r10, =9
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-88
	ldr r9, =8
	add r8, fp, r10
	str r9, [r8]
	ldr r10, =0
	str r10, [fp, #-48]
	ldr r10, =0
	add r9, r10, #-88
	ldr r10, =0
	add r8, r10, #-44
	ldr r10, addr_n_0
	ldr r7, [r10]
	mov r2, r7
	add r10, fp, r8
	mov r1, r10
	add r10, fp, r9
	mov r0, r10
	bl  counting_sort
	mov r10, r0
	str r10, [fp, #-48]
	b .L152
.L152:
	ldr r10, [fp, #-48]
	ldr r9, addr_n_0
	ldr r8, [r9]
	cmp r10, r8
	movlt r10, #1
	movge r10, #0
	blt .L153
	b .L158
.L153:
	ldr r10, [fp, #-48]
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-44
	add r9, fp, r10
	ldr r10, [r9]
	str r10, [fp, #-4]
	ldr r10, [fp, #-4]
	mov r0, r10
	bl  putint
	ldr r10, =10
	str r10, [fp, #-4]
	ldr r10, [fp, #-4]
	mov r0, r10
	bl  putch
	ldr r10, [fp, #-48]
	add r9, r10, #1
	str r9, [fp, #-48]
	b .L152
.L154:
	ldr r10, =0
	mov r0, r10
	b .Lmain_END
.L157:
.L158:
	b .L154
.L159:
.Lmain_END:
	add sp, sp, #88
	pop {r7, r8, r9, r10, fp, lr}
	bx  lr

addr_n_0:
	.word n
