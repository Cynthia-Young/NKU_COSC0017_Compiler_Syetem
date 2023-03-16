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
	.global insertsort
	.type insertsort , %function
insertsort:
	push {r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L15:
	str r0, [fp, #-16]
	ldr r10, =1
	str r10, [fp, #-12]
	b .L18
.L18:
	ldr r10, [fp, #-12]
	ldr r9, addr_n_0
	ldr r8, [r9]
	cmp r10, r8
	movlt r10, #1
	movge r10, #0
	blt .L19
	b .L24
.L19:
	ldr r10, [fp, #-12]
	ldr r9, [fp, #-16]
	ldr r8, =4
	mul r7, r10, r8
	add r10, r7, r9
	ldr r9, [r10]
	str r9, [fp, #-8]
	ldr r10, [fp, #-12]
	sub r9, r10, #1
	str r9, [fp, #-4]
	b .L34
.L24:
	b .L20
.L34:
	ldr r10, [fp, #-4]
	ldr r9, =-1
	cmp r10, r9
	movgt r10, #1
	movle r10, #0
	bgt .L37
	b .L40
.L20:
	ldr r10, =0
	mov r0, r10
	b .Linsertsort_END
.L37:
	ldr r10, [fp, #-8]
	ldr r9, [fp, #-4]
	ldr r8, [fp, #-16]
	ldr r7, =4
	mul r6, r9, r7
	add r9, r6, r8
	ldr r8, [r9]
	cmp r10, r8
	movlt r10, #1
	movge r10, #0
	blt .L35
	b .L49
.L40:
	b .L36
.L35:
	ldr r10, [fp, #-4]
	ldr r9, [fp, #-16]
	ldr r8, =4
	mul r7, r10, r8
	add r10, r7, r9
	ldr r9, [r10]
	ldr r10, [fp, #-4]
	add r8, r10, #1
	ldr r10, [fp, #-16]
	ldr r7, =4
	mul r6, r8, r7
	add r8, r6, r10
	str r9, [r8]
	ldr r10, [fp, #-4]
	sub r9, r10, #1
	str r9, [fp, #-4]
	b .L34
.L49:
	b .L36
.L36:
	ldr r10, [fp, #-8]
	ldr r9, [fp, #-4]
	add r8, r9, #1
	ldr r9, [fp, #-16]
	ldr r7, =4
	mul r6, r8, r7
	add r8, r6, r9
	str r10, [r8]
	ldr r10, [fp, #-12]
	add r9, r10, #1
	str r9, [fp, #-12]
	b .L18
.Linsertsort_END:
	add sp, sp, #16
	pop {r6, r7, r8, r9, r10, fp, lr}
	bx  lr

	.global main
	.type main , %function
main:
	push {r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #48
.L67:
	ldr r10, =10
	ldr r9, addr_n_0
	str r10, [r9]
	ldr r10, =0
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-48
	ldr r9, =4
	add r8, fp, r10
	str r9, [r8]
	ldr r10, =1
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-48
	ldr r9, =3
	add r8, fp, r10
	str r9, [r8]
	ldr r10, =2
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-48
	ldr r9, =9
	add r8, fp, r10
	str r9, [r8]
	ldr r10, =3
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-48
	ldr r9, =2
	add r8, fp, r10
	str r9, [r8]
	ldr r10, =4
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-48
	ldr r9, =0
	add r8, fp, r10
	str r9, [r8]
	ldr r10, =5
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-48
	ldr r9, =1
	add r8, fp, r10
	str r9, [r8]
	ldr r10, =6
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-48
	ldr r9, =6
	add r8, fp, r10
	str r9, [r8]
	ldr r10, =7
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-48
	ldr r9, =5
	add r8, fp, r10
	str r9, [r8]
	ldr r10, =8
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-48
	ldr r9, =7
	add r8, fp, r10
	str r9, [r8]
	ldr r10, =9
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-48
	ldr r9, =8
	add r8, fp, r10
	str r9, [r8]
	ldr r10, =0
	add r9, r10, #-48
	add r10, fp, r9
	mov r0, r10
	bl  insertsort
	mov r10, r0
	str r10, [fp, #-8]
	b .L92
.L92:
	ldr r10, [fp, #-8]
	ldr r9, addr_n_0
	ldr r8, [r9]
	cmp r10, r8
	movlt r10, #1
	movge r10, #0
	blt .L93
	b .L98
.L93:
	ldr r10, [fp, #-8]
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-48
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
	ldr r10, [fp, #-8]
	add r9, r10, #1
	str r9, [fp, #-8]
	b .L92
.L98:
	b .L94
.L94:
	ldr r10, =0
	mov r0, r10
	b .Lmain_END
.Lmain_END:
	add sp, sp, #48
	pop {r8, r9, r10, fp, lr}
	bx  lr

addr_n_0:
	.word n
