	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm
	.data
	.global N
	.align 4
	.size N, 4
N:
	.word 0
	.text
	.global insert
	.type insert , %function
insert:
	push {r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L13:
	str r0, [fp, #-16]
	str r1, [fp, #-12]
	ldr r10, =0
	str r10, [fp, #-8]
	b .L18
.L18:
	ldr r10, [fp, #-12]
	ldr r9, [fp, #-8]
	ldr r8, [fp, #-16]
	ldr r7, =4
	mul r6, r9, r7
	add r9, r6, r8
	ldr r8, [r9]
	cmp r10, r8
	movgt r10, #1
	movle r10, #0
	bgt .L21
	b .L29
.L19:
	ldr r10, [fp, #-8]
	add r9, r10, #1
	str r9, [fp, #-8]
	b .L18
.L20:
	ldr r10, addr_N_0
	ldr r9, [r10]
	str r9, [fp, #-4]
	b .L38
.L21:
	ldr r10, [fp, #-8]
	ldr r9, addr_N_0
	ldr r8, [r9]
	cmp r10, r8
	movlt r10, #1
	movge r10, #0
	blt .L19
	b .L34
.L28:
.L29:
	b .L20
.L30:
.L33:
.L34:
	b .L20
.L35:
.L38:
	ldr r10, [fp, #-4]
	ldr r9, [fp, #-8]
	cmp r10, r9
	movgt r10, #1
	movle r10, #0
	bgt .L39
	b .L44
.L39:
	ldr r10, [fp, #-4]
	sub r9, r10, #1
	ldr r10, [fp, #-16]
	ldr r8, =4
	mul r7, r9, r8
	add r9, r7, r10
	ldr r10, [r9]
	ldr r9, [fp, #-4]
	ldr r8, [fp, #-16]
	ldr r7, =4
	mul r6, r9, r7
	add r9, r6, r8
	str r10, [r9]
	ldr r10, [fp, #-12]
	ldr r9, [fp, #-8]
	ldr r8, [fp, #-16]
	ldr r7, =4
	mul r6, r9, r7
	add r9, r6, r8
	str r10, [r9]
	ldr r10, [fp, #-4]
	sub r9, r10, #1
	str r9, [fp, #-4]
	b .L38
.L40:
	ldr r10, =0
	mov r0, r10
	b .Linsert_END
.L43:
.L44:
	b .L40
.L45:
.Linsert_END:
	add sp, sp, #16
	pop {r6, r7, r8, r9, r10, fp, lr}
	bx  lr

	.global main
	.type main , %function
main:
	push {r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #52
.L61:
	ldr r10, =10
	ldr r9, addr_N_0
	str r10, [r9]
	ldr r10, =0
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-52
	ldr r9, =1
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
	ldr r9, =4
	add r8, fp, r10
	str r9, [r8]
	ldr r10, =3
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-52
	ldr r9, =7
	add r8, fp, r10
	str r9, [r8]
	ldr r10, =4
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-52
	ldr r9, =8
	add r8, fp, r10
	str r9, [r8]
	ldr r10, =5
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-52
	ldr r9, =11
	add r8, fp, r10
	str r9, [r8]
	ldr r10, =6
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-52
	ldr r9, =13
	add r8, fp, r10
	str r9, [r8]
	ldr r10, =7
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-52
	ldr r9, =18
	add r8, fp, r10
	str r9, [r8]
	ldr r10, =8
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-52
	ldr r9, =56
	add r8, fp, r10
	str r9, [r8]
	ldr r10, =9
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-52
	ldr r9, =78
	add r8, fp, r10
	str r9, [r8]
	ldr r10, =0
	str r10, [fp, #-4]
	bl  getint
	mov r10, r0
	str r10, [fp, #-8]
	ldr r10, =0
	add r9, r10, #-52
	ldr r10, [fp, #-8]
	mov r1, r10
	add r10, fp, r9
	mov r0, r10
	bl  insert
	mov r10, r0
	str r10, [fp, #-8]
	b .L88
.L88:
	ldr r10, [fp, #-4]
	ldr r9, addr_N_0
	ldr r8, [r9]
	cmp r10, r8
	movlt r10, #1
	movge r10, #0
	blt .L89
	b .L94
.L89:
	ldr r10, [fp, #-4]
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-52
	add r9, fp, r10
	ldr r10, [r9]
	str r10, [fp, #-8]
	ldr r10, [fp, #-8]
	mov r0, r10
	bl  putint
	ldr r10, =10
	str r10, [fp, #-8]
	ldr r10, [fp, #-8]
	mov r0, r10
	bl  putch
	ldr r10, [fp, #-4]
	add r9, r10, #1
	str r9, [fp, #-4]
	b .L88
.L90:
	ldr r10, =0
	mov r0, r10
	b .Lmain_END
.L93:
.L94:
	b .L90
.L95:
.Lmain_END:
	add sp, sp, #52
	pop {r8, r9, r10, fp, lr}
	bx  lr

addr_N_0:
	.word N
