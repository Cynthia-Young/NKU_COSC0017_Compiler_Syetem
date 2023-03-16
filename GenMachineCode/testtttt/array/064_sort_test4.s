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
	.global select_sort
	.type select_sort , %function
select_sort:
	push {r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #24
.L13:
	str r0, [fp, #-24]
	str r1, [fp, #-20]
	ldr r10, =0
	str r10, [fp, #-16]
	b .L19
.L19:
	ldr r10, [fp, #-16]
	ldr r9, [fp, #-20]
	sub r8, r9, #1
	cmp r10, r8
	movlt r10, #1
	movge r10, #0
	blt .L20
	b .L25
.L20:
	ldr r10, [fp, #-16]
	str r10, [fp, #-8]
	ldr r10, [fp, #-16]
	add r9, r10, #1
	str r9, [fp, #-12]
	b .L29
.L25:
	b .L21
.L29:
	ldr r10, [fp, #-12]
	ldr r9, [fp, #-20]
	cmp r10, r9
	movlt r10, #1
	movge r10, #0
	blt .L30
	b .L35
.L21:
	ldr r10, =0
	mov r0, r10
	b .Lselect_sort_END
.L30:
	ldr r10, [fp, #-8]
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
	bgt .L37
	b .L50
.L35:
	b .L31
.L37:
	ldr r10, [fp, #-12]
	str r10, [fp, #-8]
	b .L38
.L50:
	b .L38
.L31:
	ldr r10, [fp, #-8]
	ldr r9, [fp, #-16]
	cmp r10, r9
	movne r10, #1
	moveq r10, #0
	bne .L54
	b .L59
.L38:
	ldr r10, [fp, #-12]
	add r9, r10, #1
	str r9, [fp, #-12]
	b .L29
.L54:
	ldr r10, [fp, #-8]
	ldr r9, [fp, #-24]
	ldr r8, =4
	mul r7, r10, r8
	add r10, r7, r9
	ldr r9, [r10]
	str r9, [fp, #-4]
	ldr r10, [fp, #-16]
	ldr r9, [fp, #-24]
	ldr r8, =4
	mul r7, r10, r8
	add r10, r7, r9
	ldr r9, [r10]
	ldr r10, [fp, #-8]
	ldr r8, [fp, #-24]
	ldr r7, =4
	mul r6, r10, r7
	add r10, r6, r8
	str r9, [r10]
	ldr r10, [fp, #-4]
	ldr r9, [fp, #-16]
	ldr r8, [fp, #-24]
	ldr r7, =4
	mul r6, r9, r7
	add r9, r6, r8
	str r10, [r9]
	b .L55
.L59:
	b .L55
.L55:
	ldr r10, [fp, #-16]
	add r9, r10, #1
	str r9, [fp, #-16]
	b .L19
.Lselect_sort_END:
	add sp, sp, #24
	pop {r6, r7, r8, r9, r10, fp, lr}
	bx  lr

	.global main
	.type main , %function
main:
	push {r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #48
.L82:
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
	str r10, [fp, #-8]
	ldr r10, =0
	add r9, r10, #-48
	ldr r10, addr_n_0
	ldr r8, [r10]
	mov r1, r8
	add r10, fp, r9
	mov r0, r10
	bl  select_sort
	mov r10, r0
	str r10, [fp, #-8]
	b .L108
.L108:
	ldr r10, [fp, #-8]
	ldr r9, addr_n_0
	ldr r8, [r9]
	cmp r10, r8
	movlt r10, #1
	movge r10, #0
	blt .L109
	b .L114
.L109:
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
	b .L108
.L114:
	b .L110
.L110:
	ldr r10, =0
	mov r0, r10
	b .Lmain_END
.Lmain_END:
	add sp, sp, #48
	pop {r8, r9, r10, fp, lr}
	bx  lr

addr_n_0:
	.word n
