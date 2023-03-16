	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm
	.data
	.global b
	.align 4
	.size b, 4
b:
	.word 5
	.global c
	.align 4
	.size c, 16
c:
	.word 6
	.word 7
	.word 8
	.word 9
	.text
	.global main
	.type main , %function
main:
	push {r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #220
.L25:
	ldr r10, =1
	str r10, [fp, #-220]
	ldr r10, =2
	str r10, [fp, #-216]
	ldr r10, =3
	str r10, [fp, #-216]
	ldr r10, [fp, #-216]
	mov r0, r10
	bl  putint
	ldr r10, [fp, #-216]
	mov r0, r10
	bl  putint
	ldr r10, [fp, #-220]
	mov r0, r10
	bl  putint
	ldr r10, =10
	mov r0, r10
	bl  putch
	b .L32
.L32:
	ldr r10, [fp, #-220]
	ldr r9, =5
	cmp r10, r9
	movlt r10, #1
	movge r10, #0
	blt .L33
	b .L37
.L33:
	ldr r10, =0
	str r10, [fp, #-212]
	ldr r10, [fp, #-212]
	add r9, r10, #1
	str r9, [fp, #-212]
	ldr r10, [fp, #-212]
	ldr r9, =0
	cmp r9, r10
	movne r10, #1
	moveq r10, #0
	bne .L41
	b .L45
.L37:
	b .L34
.L41:
	b .L34
.L45:
	b .L42
.L34:
	ldr r10, [fp, #-220]
	mov r0, r10
	bl  putint
	ldr r10, =10
	mov r0, r10
	bl  putch
	ldr r10, =2
	ldr r9, =4
	mul r8, r10, r9
	ldr r10, addr_c_0
	add r9, r8, r10
	ldr r10, =1
	str r10, [r9]
	ldr r10, =0
	add r9, r10, #-208
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4
	add r9, r10, #-208
	ldr r10, =9
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8
	add r9, r10, #-208
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12
	add r9, r10, #-208
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16
	add r9, r10, #-208
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =20
	add r9, r10, #-208
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =24
	add r9, r10, #-208
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =28
	add r9, r10, #-208
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =32
	add r9, r10, #-208
	ldr r10, =8
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =36
	add r9, r10, #-208
	ldr r10, =3
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =40
	add r9, r10, #-208
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =44
	add r9, r10, #-208
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =48
	add r9, r10, #-208
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =52
	add r9, r10, #-208
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =56
	add r9, r10, #-208
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =60
	add r9, r10, #-208
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2
	str r10, [fp, #-144]
	ldr r10, =2
	ldr r9, =4
	mul r8, r10, r9
	ldr r10, addr_c_0
	add r9, r8, r10
	ldr r10, [r9]
	ldr r9, =0
	cmp r9, r10
	movne r10, #1
	moveq r10, #0
	bne .L71
	b .L78
.L42:
	b .L32
.L71:
	ldr r10, =0
	add r9, r10, #-140
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4
	add r9, r10, #-140
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8
	add r9, r10, #-140
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12
	add r9, r10, #-140
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16
	add r9, r10, #-140
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =20
	add r9, r10, #-140
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =24
	add r9, r10, #-140
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =28
	add r9, r10, #-140
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =32
	add r9, r10, #-140
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =36
	add r9, r10, #-140
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =40
	add r9, r10, #-140
	ldr r10, =2
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =44
	add r9, r10, #-140
	ldr r10, =1
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =48
	add r9, r10, #-140
	ldr r10, =8
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =52
	add r9, r10, #-140
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =56
	add r9, r10, #-140
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =60
	add r9, r10, #-140
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =64
	add r9, r10, #-140
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =68
	add r9, r10, #-140
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =72
	add r9, r10, #-140
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =76
	add r9, r10, #-140
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =80
	add r9, r10, #-140
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =84
	add r9, r10, #-140
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =88
	add r9, r10, #-140
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =92
	add r9, r10, #-140
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =96
	add r9, r10, #-140
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =100
	add r9, r10, #-140
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =104
	add r9, r10, #-140
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =108
	add r9, r10, #-140
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =112
	add r9, r10, #-140
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =116
	add r9, r10, #-140
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =120
	add r9, r10, #-140
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =124
	add r9, r10, #-140
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =128
	add r9, r10, #-140
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =132
	add r9, r10, #-140
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =136
	add r9, r10, #-140
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, [fp, #-144]
	ldr r9, =1
	mul r8, r10, r9
	add r10, r8, #0
	ldr r9, =5
	mul r8, r10, r9
	add r10, r8, #0
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-140
	add r10, fp, r10
	ldr r9, [r10]
	mov r0, r9
	bl  putint
	ldr r10, [fp, #-144]
	ldr r9, =1
	mul r8, r10, r9
	add r10, r8, #0
	ldr r9, =5
	mul r8, r10, r9
	add r10, r8, #1
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-140
	add r9, fp, r10
	ldr r10, [r9]
	mov r0, r10
	bl  putint
	ldr r10, [fp, #-144]
	ldr r9, =1
	mul r8, r10, r9
	add r10, r8, #0
	ldr r9, =5
	mul r8, r10, r9
	add r10, r8, #2
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-140
	add r9, fp, r10
	ldr r10, [r9]
	mov r0, r10
	bl  putint
	b .L72
	b .F0
.LTORG
addr_b_0:
	.word b
addr_c_0:
	.word c
.F0:
.L78:
	b .L72
.L72:
	ldr r10, =10
	mov r0, r10
	bl  putch
	ldr r10, addr_b_1
	ldr r9, [r10]
	mov r0, r9
	bl  putint
	ldr r10, =10
	mov r0, r10
	bl  putch
	ldr r10, =0
	ldr r9, =4
	mul r8, r10, r9
	ldr r10, addr_c_1
	add r9, r8, r10
	ldr r10, [r9]
	mov r0, r10
	bl  putint
	ldr r10, =1
	ldr r9, =4
	mul r8, r10, r9
	ldr r10, addr_c_1
	add r9, r8, r10
	ldr r10, [r9]
	mov r0, r10
	bl  putint
	ldr r10, =2
	ldr r9, =4
	mul r8, r10, r9
	ldr r10, addr_c_1
	add r9, r8, r10
	ldr r10, [r9]
	mov r0, r10
	bl  putint
	ldr r10, =3
	ldr r9, =4
	mul r8, r10, r9
	ldr r10, addr_c_1
	add r9, r8, r10
	ldr r10, [r9]
	mov r0, r10
	bl  putint
	ldr r10, =10
	mov r0, r10
	bl  putch
	ldr r10, =0
	mov r0, r10
	b .Lmain_END
.Lmain_END:
	add sp, sp, #220
	pop {r8, r9, r10, fp, lr}
	bx  lr

addr_b_1:
	.word b
addr_c_1:
	.word c
