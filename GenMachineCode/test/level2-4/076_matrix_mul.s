	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm
	.data
	.global M
	.align 4
	.size M, 4
M:
	.word 0
	.global L
	.align 4
	.size L, 4
L:
	.word 0
	.global N
	.align 4
	.size N, 4
N:
	.word 0
	.text
	.global mul
	.type mul , %function
mul:
	push {r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #40
.L60:
	str r0, [fp, #-40]
	str r1, [fp, #-36]
	str r2, [fp, #-32]
	str r3, [fp, #-28]
	ldr r10, =0
	str r10, [fp, #-4]
	ldr r10, [fp, #-40]
	ldr r9, =0
	ldr r8, =4
	mul r7, r9, r8
	add r9, r7, r10
	ldr r10, [r9]
	ldr r9, [fp, #-28]
	ldr r8, =0
	ldr r7, =4
	mul r6, r8, r7
	add r8, r6, r9
	ldr r9, [r8]
	mul r8, r10, r9
	ldr r10, [fp, #-40]
	ldr r9, =1
	ldr r7, =4
	mul r6, r9, r7
	add r9, r6, r10
	ldr r10, [r9]
	ldr r9, [fp, #0]
	ldr r7, =0
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r9
	ldr r9, [r7]
	mul r7, r10, r9
	add r10, r8, r7
	ldr r9, [fp, #-40]
	ldr r8, =2
	ldr r7, =4
	mul r6, r8, r7
	add r8, r6, r9
	ldr r9, [r8]
	ldr r8, [fp, #4]
	ldr r7, =0
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r8
	ldr r8, [r7]
	mul r7, r9, r8
	add r9, r10, r7
	ldr r10, [fp, #8]
	ldr r8, =0
	ldr r7, =4
	mul r6, r8, r7
	add r8, r6, r10
	str r9, [r8]
	ldr r10, [fp, #-40]
	ldr r9, =0
	ldr r8, =4
	mul r7, r9, r8
	add r9, r7, r10
	ldr r10, [r9]
	ldr r9, [fp, #-28]
	ldr r8, =1
	ldr r7, =4
	mul r6, r8, r7
	add r8, r6, r9
	ldr r9, [r8]
	mul r8, r10, r9
	ldr r10, [fp, #-40]
	ldr r9, =1
	ldr r7, =4
	mul r6, r9, r7
	add r9, r6, r10
	ldr r10, [r9]
	ldr r9, [fp, #0]
	ldr r7, =1
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r9
	ldr r9, [r7]
	mul r7, r10, r9
	add r10, r8, r7
	ldr r9, [fp, #-40]
	ldr r8, =2
	ldr r7, =4
	mul r6, r8, r7
	add r8, r6, r9
	ldr r9, [r8]
	ldr r8, [fp, #4]
	ldr r7, =1
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r8
	ldr r8, [r7]
	mul r7, r9, r8
	add r9, r10, r7
	ldr r10, [fp, #8]
	ldr r8, =1
	ldr r7, =4
	mul r6, r8, r7
	add r8, r6, r10
	str r9, [r8]
	ldr r10, [fp, #-40]
	ldr r9, =0
	ldr r8, =4
	mul r7, r9, r8
	add r9, r7, r10
	ldr r10, [r9]
	ldr r9, [fp, #-28]
	ldr r8, =2
	ldr r7, =4
	mul r6, r8, r7
	add r8, r6, r9
	ldr r9, [r8]
	mul r8, r10, r9
	ldr r10, [fp, #-40]
	ldr r9, =1
	ldr r7, =4
	mul r6, r9, r7
	add r9, r6, r10
	ldr r10, [r9]
	ldr r9, [fp, #0]
	ldr r7, =2
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r9
	ldr r9, [r7]
	mul r7, r10, r9
	add r10, r8, r7
	ldr r9, [fp, #-40]
	ldr r8, =2
	ldr r7, =4
	mul r6, r8, r7
	add r8, r6, r9
	ldr r9, [r8]
	ldr r8, [fp, #4]
	ldr r7, =2
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r8
	ldr r8, [r7]
	mul r7, r9, r8
	add r9, r10, r7
	ldr r10, [fp, #8]
	ldr r8, =2
	ldr r7, =4
	mul r6, r8, r7
	add r8, r6, r10
	str r9, [r8]
	ldr r10, [fp, #-36]
	ldr r9, =0
	ldr r8, =4
	mul r7, r9, r8
	add r9, r7, r10
	ldr r10, [r9]
	ldr r9, [fp, #-28]
	ldr r8, =0
	ldr r7, =4
	mul r6, r8, r7
	add r8, r6, r9
	ldr r9, [r8]
	mul r8, r10, r9
	ldr r10, [fp, #-36]
	ldr r9, =1
	ldr r7, =4
	mul r6, r9, r7
	add r9, r6, r10
	ldr r10, [r9]
	ldr r9, [fp, #0]
	ldr r7, =0
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r9
	ldr r9, [r7]
	mul r7, r10, r9
	add r10, r8, r7
	ldr r9, [fp, #-36]
	ldr r8, =2
	ldr r7, =4
	mul r6, r8, r7
	add r8, r6, r9
	ldr r9, [r8]
	ldr r8, [fp, #4]
	ldr r7, =0
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r8
	ldr r8, [r7]
	mul r7, r9, r8
	add r9, r10, r7
	ldr r10, [fp, #12]
	ldr r8, =0
	ldr r7, =4
	mul r6, r8, r7
	add r8, r6, r10
	str r9, [r8]
	ldr r10, [fp, #-36]
	ldr r9, =0
	ldr r8, =4
	mul r7, r9, r8
	add r9, r7, r10
	ldr r10, [r9]
	ldr r9, [fp, #-28]
	ldr r8, =1
	ldr r7, =4
	mul r6, r8, r7
	add r8, r6, r9
	ldr r9, [r8]
	mul r8, r10, r9
	ldr r10, [fp, #-36]
	ldr r9, =1
	ldr r7, =4
	mul r6, r9, r7
	add r9, r6, r10
	ldr r10, [r9]
	ldr r9, [fp, #0]
	ldr r7, =1
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r9
	ldr r9, [r7]
	mul r7, r10, r9
	add r10, r8, r7
	ldr r9, [fp, #-36]
	ldr r8, =2
	ldr r7, =4
	mul r6, r8, r7
	add r8, r6, r9
	ldr r9, [r8]
	ldr r8, [fp, #4]
	ldr r7, =1
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r8
	ldr r8, [r7]
	mul r7, r9, r8
	add r9, r10, r7
	ldr r10, [fp, #12]
	ldr r8, =1
	ldr r7, =4
	mul r6, r8, r7
	add r8, r6, r10
	str r9, [r8]
	ldr r10, [fp, #-36]
	ldr r9, =0
	ldr r8, =4
	mul r7, r9, r8
	add r9, r7, r10
	ldr r10, [r9]
	ldr r9, [fp, #-28]
	ldr r8, =2
	ldr r7, =4
	mul r6, r8, r7
	add r8, r6, r9
	ldr r9, [r8]
	mul r8, r10, r9
	ldr r10, [fp, #-36]
	ldr r9, =1
	ldr r7, =4
	mul r6, r9, r7
	add r9, r6, r10
	ldr r10, [r9]
	ldr r9, [fp, #0]
	ldr r7, =2
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r9
	ldr r9, [r7]
	mul r7, r10, r9
	add r10, r8, r7
	ldr r9, [fp, #-36]
	ldr r8, =2
	ldr r7, =4
	mul r6, r8, r7
	add r8, r6, r9
	ldr r9, [r8]
	ldr r8, [fp, #4]
	ldr r7, =2
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r8
	ldr r8, [r7]
	mul r7, r9, r8
	add r9, r10, r7
	ldr r10, [fp, #12]
	ldr r8, =2
	ldr r7, =4
	mul r6, r8, r7
	add r8, r6, r10
	str r9, [r8]
	ldr r10, [fp, #-32]
	ldr r9, =0
	ldr r8, =4
	mul r7, r9, r8
	add r9, r7, r10
	ldr r10, [r9]
	ldr r9, [fp, #-28]
	ldr r8, =0
	ldr r7, =4
	mul r6, r8, r7
	add r8, r6, r9
	ldr r9, [r8]
	mul r8, r10, r9
	ldr r10, [fp, #-32]
	ldr r9, =1
	ldr r7, =4
	mul r6, r9, r7
	add r9, r6, r10
	ldr r10, [r9]
	ldr r9, [fp, #0]
	ldr r7, =0
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r9
	ldr r9, [r7]
	mul r7, r10, r9
	add r10, r8, r7
	ldr r9, [fp, #-32]
	ldr r8, =2
	ldr r7, =4
	mul r6, r8, r7
	add r8, r6, r9
	ldr r9, [r8]
	ldr r8, [fp, #4]
	ldr r7, =0
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r8
	ldr r8, [r7]
	mul r7, r9, r8
	add r9, r10, r7
	ldr r10, [fp, #16]
	ldr r8, =0
	ldr r7, =4
	mul r6, r8, r7
	add r8, r6, r10
	str r9, [r8]
	ldr r10, [fp, #-32]
	ldr r9, =0
	ldr r8, =4
	mul r7, r9, r8
	add r9, r7, r10
	ldr r10, [r9]
	ldr r9, [fp, #-28]
	ldr r8, =1
	ldr r7, =4
	mul r6, r8, r7
	add r8, r6, r9
	ldr r9, [r8]
	mul r8, r10, r9
	ldr r10, [fp, #-32]
	ldr r9, =1
	ldr r7, =4
	mul r6, r9, r7
	add r9, r6, r10
	ldr r10, [r9]
	ldr r9, [fp, #0]
	ldr r7, =1
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r9
	ldr r9, [r7]
	mul r7, r10, r9
	add r10, r8, r7
	ldr r9, [fp, #-32]
	ldr r8, =2
	ldr r7, =4
	mul r6, r8, r7
	add r8, r6, r9
	ldr r9, [r8]
	ldr r8, [fp, #4]
	ldr r7, =1
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r8
	ldr r8, [r7]
	mul r7, r9, r8
	add r9, r10, r7
	ldr r10, [fp, #16]
	ldr r8, =1
	ldr r7, =4
	mul r6, r8, r7
	add r8, r6, r10
	str r9, [r8]
	ldr r10, [fp, #-32]
	ldr r9, =0
	ldr r8, =4
	mul r7, r9, r8
	add r9, r7, r10
	ldr r10, [r9]
	ldr r9, [fp, #-28]
	ldr r8, =2
	ldr r7, =4
	mul r6, r8, r7
	add r8, r6, r9
	ldr r9, [r8]
	mul r8, r10, r9
	ldr r10, [fp, #-32]
	ldr r9, =1
	ldr r7, =4
	mul r6, r9, r7
	add r9, r6, r10
	ldr r10, [r9]
	ldr r9, [fp, #0]
	ldr r7, =2
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r9
	ldr r9, [r7]
	mul r7, r10, r9
	add r10, r8, r7
	ldr r9, [fp, #-32]
	ldr r8, =2
	ldr r7, =4
	mul r6, r8, r7
	add r8, r6, r9
	ldr r9, [r8]
	ldr r8, [fp, #4]
	ldr r7, =2
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r8
	ldr r8, [r7]
	mul r7, r9, r8
	add r9, r10, r7
	ldr r10, [fp, #16]
	ldr r8, =2
	ldr r7, =4
	mul r6, r8, r7
	add r8, r6, r10
	str r9, [r8]
	ldr r10, =0
	mov r0, r10
	b .Lmul_END
	b .F0
.LTORG
addr_M_0:
	.word M
addr_L_0:
	.word L
addr_N_0:
	.word N
.F0:
.Lmul_END:
	add sp, sp, #40
	pop {r5, r6, r7, r8, r9, r10, fp, lr}
	bx  lr

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #144
.L314:
	ldr r10, =3
	ldr r9, addr_N_1
	str r10, [r9]
	ldr r10, =3
	ldr r9, addr_M_1
	str r10, [r9]
	ldr r10, =3
	ldr r9, addr_L_1
	str r10, [r9]
	ldr r10, =0
	str r10, [fp, #-8]
	b .L325
.L325:
	ldr r10, [fp, #-8]
	ldr r9, addr_M_1
	ldr r8, [r9]
	cmp r10, r8
	movlt r10, #1
	movge r10, #0
	blt .L326
	b .L331
.L326:
	ldr r10, [fp, #-8]
	ldr r9, [fp, #-8]
	ldr r8, =4
	mul r7, r9, r8
	add r9, r7, #-128
	add r8, fp, r9
	str r10, [r8]
	ldr r10, [fp, #-8]
	ldr r9, [fp, #-8]
	ldr r8, =4
	mul r7, r9, r8
	add r9, r7, #-116
	add r8, fp, r9
	str r10, [r8]
	ldr r10, [fp, #-8]
	ldr r9, [fp, #-8]
	ldr r8, =4
	mul r7, r9, r8
	add r9, r7, #-104
	add r8, fp, r9
	str r10, [r8]
	ldr r10, [fp, #-8]
	ldr r9, [fp, #-8]
	ldr r8, =4
	mul r7, r9, r8
	add r9, r7, #-92
	add r8, fp, r9
	str r10, [r8]
	ldr r10, [fp, #-8]
	ldr r9, [fp, #-8]
	ldr r8, =4
	mul r7, r9, r8
	add r9, r7, #-80
	add r8, fp, r9
	str r10, [r8]
	ldr r10, [fp, #-8]
	ldr r9, [fp, #-8]
	ldr r8, =4
	mul r7, r9, r8
	add r9, r7, #-68
	add r8, fp, r9
	str r10, [r8]
	ldr r10, [fp, #-8]
	add r9, r10, #1
	str r9, [fp, #-8]
	b .L325
.L331:
	b .L327
.L327:
	ldr r10, =0
	add r10, r10, #-128
	ldr r10, =0
	add r10, r10, #-116
	ldr r10, =0
	add r10, r10, #-104
	ldr r10, =0
	add r9, r10, #-92
	ldr r10, =0
	add r8, r10, #-80
	ldr r10, =0
	add r7, r10, #-68
	ldr r10, =0
	add r6, r10, #-56
	ldr r10, =0
	add r5, r10, #-32
	ldr r10, =0
	add r4, r10, #-20
	add r10, fp, r4
	push {r10}
	add r10, fp, r5
	push {r10}
	add r10, fp, r6
	push {r10}
	push {r10}
	push {r10}
	add r10, fp, r7
	push {r10}
	push {r10}
	push {r10}
	add r10, fp, r8
	push {r10}
	add r10, fp, r9
	mov r3, r10
	add r10, fp, r10
	mov r2, r10
	add r10, fp, r10
	mov r1, r10
	add r10, fp, r10
	mov r0, r10
	bl  mul
	mov r10, r0
	add sp, sp, #20
	str r10, [fp, #-8]
	b .L377
	ldr r10, [fp, #132]
	ldr r10, [fp, #136]
	ldr r10, [fp, #140]
	ldr r10, [fp, #144]
.L377:
	ldr r10, [fp, #-8]
	ldr r9, addr_N_1
	ldr r8, [r9]
	cmp r10, r8
	movlt r10, #1
	movge r10, #0
	blt .L378
	b .L383
.L378:
	ldr r10, [fp, #-8]
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-56
	add r10, fp, r10
	ldr r9, [r10]
	str r9, [fp, #-4]
	ldr r10, [fp, #-4]
	mov r0, r10
	bl  putint
	ldr r10, [fp, #-8]
	add r9, r10, #1
	str r9, [fp, #-8]
	b .L377
.L383:
	b .L379
.L379:
	ldr r10, =10
	str r10, [fp, #-4]
	ldr r10, =0
	str r10, [fp, #-8]
	ldr r10, [fp, #-4]
	mov r0, r10
	bl  putch
	b .L392
.L392:
	ldr r10, [fp, #-8]
	ldr r9, addr_N_1
	ldr r8, [r9]
	cmp r10, r8
	movlt r10, #1
	movge r10, #0
	blt .L393
	b .L398
.L393:
	ldr r10, [fp, #-8]
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-32
	add r9, fp, r10
	ldr r10, [r9]
	str r10, [fp, #-4]
	ldr r10, [fp, #-4]
	mov r0, r10
	bl  putint
	ldr r10, [fp, #-8]
	add r9, r10, #1
	str r9, [fp, #-8]
	b .L392
	b .F1
.LTORG
addr_M_1:
	.word M
addr_L_1:
	.word L
addr_N_1:
	.word N
.F1:
.L398:
	b .L394
.L394:
	ldr r10, =10
	str r10, [fp, #-4]
	ldr r10, =0
	str r10, [fp, #-8]
	ldr r10, [fp, #-4]
	mov r0, r10
	bl  putch
	b .L407
.L407:
	ldr r10, [fp, #-8]
	ldr r9, addr_N_2
	ldr r8, [r9]
	cmp r10, r8
	movlt r10, #1
	movge r10, #0
	blt .L408
	b .L413
.L408:
	ldr r10, [fp, #-8]
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-20
	add r9, fp, r10
	ldr r10, [r9]
	str r10, [fp, #-4]
	ldr r10, [fp, #-4]
	mov r0, r10
	bl  putint
	ldr r10, [fp, #-8]
	add r9, r10, #1
	str r9, [fp, #-8]
	b .L407
.L413:
	b .L409
.L409:
	ldr r10, =10
	str r10, [fp, #-4]
	ldr r10, [fp, #-4]
	mov r0, r10
	bl  putch
	ldr r10, =0
	mov r0, r10
	b .Lmain_END
.Lmain_END:
	add sp, sp, #144
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx  lr

addr_M_2:
	.word M
addr_L_2:
	.word L
addr_N_2:
	.word N
