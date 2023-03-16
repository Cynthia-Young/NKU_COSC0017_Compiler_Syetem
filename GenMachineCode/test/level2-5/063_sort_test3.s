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
	.global QuickSort
	.type QuickSort , %function
QuickSort:
	push {r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #28
.L24:
	str r0, [fp, #-28]
	str r1, [fp, #-24]
	str r2, [fp, #-20]
	ldr r10, [fp, #-24]
	ldr r9, [fp, #-20]
	cmp r10, r9
	movlt r10, #1
	movge r10, #0
	blt .L28
	b .L33
.L28:
	ldr r10, [fp, #-24]
	str r10, [fp, #-16]
	ldr r10, [fp, #-20]
	str r10, [fp, #-12]
	ldr r10, [fp, #-24]
	ldr r9, [fp, #-28]
	ldr r8, =4
	mul r7, r10, r8
	add r10, r7, r9
	ldr r9, [r10]
	str r9, [fp, #-8]
	b .L45
.L33:
	b .L29
.L45:
	ldr r10, [fp, #-16]
	ldr r9, [fp, #-12]
	cmp r10, r9
	movlt r10, #1
	movge r10, #0
	blt .L46
	b .L51
.L29:
	ldr r10, =0
	mov r0, r10
	b .LQuickSort_END
.L46:
	b .L53
.L51:
	b .L47
.L53:
	ldr r10, [fp, #-16]
	ldr r9, [fp, #-12]
	cmp r10, r9
	movlt r10, #1
	movge r10, #0
	blt .L56
	b .L60
.L47:
	ldr r10, [fp, #-8]
	ldr r9, [fp, #-16]
	ldr r8, [fp, #-28]
	ldr r7, =4
	mul r6, r9, r7
	add r9, r6, r8
	str r10, [r9]
	ldr r10, [fp, #-16]
	sub r9, r10, #1
	str r9, [fp, #-4]
	ldr r10, [fp, #-28]
	ldr r9, =0
	add r8, r9, r10
	ldr r10, [fp, #-24]
	ldr r9, [fp, #-4]
	mov r2, r9
	mov r1, r10
	mov r0, r8
	bl  QuickSort
	mov r10, r0
	str r10, [fp, #-4]
	ldr r10, [fp, #-16]
	add r9, r10, #1
	str r9, [fp, #-4]
	ldr r10, [fp, #-28]
	ldr r9, =0
	add r8, r9, r10
	ldr r10, [fp, #-4]
	ldr r9, [fp, #-20]
	mov r2, r9
	mov r1, r10
	mov r0, r8
	bl  QuickSort
	mov r10, r0
	str r10, [fp, #-4]
	b .L29
.L56:
	ldr r10, [fp, #-12]
	ldr r9, [fp, #-28]
	ldr r8, =4
	mul r7, r10, r8
	add r10, r7, r9
	ldr r9, [r10]
	ldr r10, [fp, #-8]
	sub r8, r10, #1
	cmp r9, r8
	movgt r10, #1
	movle r10, #0
	bgt .L54
	b .L69
.L60:
	b .L55
.L54:
	ldr r10, [fp, #-12]
	sub r9, r10, #1
	str r9, [fp, #-12]
	b .L53
.L69:
	b .L55
.L55:
	ldr r10, [fp, #-16]
	ldr r9, [fp, #-12]
	cmp r10, r9
	movlt r10, #1
	movge r10, #0
	blt .L72
	b .L77
.L72:
	ldr r10, [fp, #-12]
	ldr r9, [fp, #-28]
	ldr r8, =4
	mul r7, r10, r8
	add r10, r7, r9
	ldr r9, [r10]
	ldr r10, [fp, #-16]
	ldr r8, [fp, #-28]
	ldr r7, =4
	mul r6, r10, r7
	add r10, r6, r8
	str r9, [r10]
	ldr r10, [fp, #-16]
	add r9, r10, #1
	str r9, [fp, #-16]
	b .L73
.L77:
	b .L73
.L73:
	b .L89
.L89:
	ldr r10, [fp, #-16]
	ldr r9, [fp, #-12]
	cmp r10, r9
	movlt r10, #1
	movge r10, #0
	blt .L92
	b .L96
.L92:
	ldr r10, [fp, #-16]
	ldr r9, [fp, #-28]
	ldr r8, =4
	mul r7, r10, r8
	add r10, r7, r9
	ldr r9, [r10]
	ldr r10, [fp, #-8]
	cmp r9, r10
	movlt r10, #1
	movge r10, #0
	blt .L90
	b .L105
.L96:
	b .L91
.L90:
	ldr r10, [fp, #-16]
	add r9, r10, #1
	str r9, [fp, #-16]
	b .L89
.L105:
	b .L91
.L91:
	ldr r10, [fp, #-16]
	ldr r9, [fp, #-12]
	cmp r10, r9
	movlt r10, #1
	movge r10, #0
	blt .L108
	b .L113
.L108:
	ldr r10, [fp, #-16]
	ldr r9, [fp, #-28]
	ldr r8, =4
	mul r7, r10, r8
	add r10, r7, r9
	ldr r9, [r10]
	ldr r10, [fp, #-12]
	ldr r8, [fp, #-28]
	ldr r7, =4
	mul r6, r10, r7
	add r10, r6, r8
	str r9, [r10]
	ldr r10, [fp, #-12]
	sub r9, r10, #1
	str r9, [fp, #-12]
	b .L109
	b .F0
.LTORG
addr_n_0:
	.word n
.F0:
.L113:
	b .L109
.L109:
	b .L45
.LQuickSort_END:
	add sp, sp, #28
	pop {r6, r7, r8, r9, r10, fp, lr}
	bx  lr

	.global main
	.type main , %function
main:
	push {r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #52
.L143:
	ldr r10, =10
	ldr r9, addr_n_1
	str r10, [r9]
	ldr r10, =0
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-52
	ldr r9, =4
	add r8, fp, r10
	str r9, [r8]
	ldr r10, =1
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-52
	ldr r9, =3
	add r8, fp, r10
	str r9, [r8]
	ldr r10, =2
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-52
	ldr r9, =9
	add r8, fp, r10
	str r9, [r8]
	ldr r10, =3
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-52
	ldr r9, =2
	add r8, fp, r10
	str r9, [r8]
	ldr r10, =4
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-52
	ldr r9, =0
	add r8, fp, r10
	str r9, [r8]
	ldr r10, =5
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-52
	ldr r9, =1
	add r8, fp, r10
	str r9, [r8]
	ldr r10, =6
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-52
	ldr r9, =6
	add r8, fp, r10
	str r9, [r8]
	ldr r10, =7
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-52
	ldr r9, =5
	add r8, fp, r10
	str r9, [r8]
	ldr r10, =8
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-52
	ldr r9, =7
	add r8, fp, r10
	str r9, [r8]
	ldr r10, =9
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-52
	ldr r9, =8
	add r8, fp, r10
	str r9, [r8]
	ldr r10, =0
	str r10, [fp, #-12]
	ldr r10, =9
	str r10, [fp, #-8]
	ldr r10, =0
	add r9, r10, #-52
	ldr r10, [fp, #-12]
	ldr r8, [fp, #-8]
	mov r2, r8
	mov r1, r10
	add r10, fp, r9
	mov r0, r10
	bl  QuickSort
	mov r10, r0
	str r10, [fp, #-12]
	b .L171
.L171:
	ldr r10, [fp, #-12]
	ldr r9, addr_n_1
	ldr r8, [r9]
	cmp r10, r8
	movlt r10, #1
	movge r10, #0
	blt .L172
	b .L177
.L172:
	ldr r10, [fp, #-12]
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-52
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
	ldr r10, [fp, #-12]
	add r9, r10, #1
	str r9, [fp, #-12]
	b .L171
.L177:
	b .L173
.L173:
	ldr r10, =0
	mov r0, r10
	b .Lmain_END
.Lmain_END:
	add sp, sp, #52
	pop {r8, r9, r10, fp, lr}
	bx  lr

addr_n_1:
	.word n
