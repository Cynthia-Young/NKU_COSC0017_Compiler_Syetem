	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm
	.text
	.global main
	.type main , %function
main:
	push {r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #116
.L6:
	ldr r10, =0
	add r9, r10, #-116
	ldr r10, =1
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4
	add r9, r10, #-116
	ldr r10, =1
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8
	add r9, r10, #-116
	ldr r10, =1
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12
	add r9, r10, #-116
	ldr r10, =1
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16
	add r9, r10, #-116
	ldr r10, =1
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =20
	add r9, r10, #-116
	ldr r10, =2
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =24
	add r9, r10, #-116
	ldr r10, =2
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =28
	add r9, r10, #-116
	ldr r10, =2
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =32
	add r9, r10, #-116
	ldr r10, =2
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =36
	add r9, r10, #-116
	ldr r10, =2
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =40
	add r9, r10, #-116
	ldr r10, =3
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =44
	add r9, r10, #-116
	ldr r10, =3
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =48
	add r9, r10, #-116
	ldr r10, =3
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =52
	add r9, r10, #-116
	ldr r10, =3
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =56
	add r9, r10, #-116
	ldr r10, =3
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =60
	add r9, r10, #-116
	ldr r10, =4
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =64
	add r9, r10, #-116
	ldr r10, =4
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =68
	add r9, r10, #-116
	ldr r10, =4
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =72
	add r9, r10, #-116
	ldr r10, =4
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =76
	add r9, r10, #-116
	ldr r10, =4
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =80
	add r9, r10, #-116
	ldr r10, =5
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =84
	add r9, r10, #-116
	ldr r10, =5
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =88
	add r9, r10, #-116
	ldr r10, =5
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =92
	add r9, r10, #-116
	ldr r10, =5
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =96
	add r9, r10, #-116
	ldr r10, =5
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2
	str r10, [fp, #-16]
	ldr r10, =3
	str r10, [fp, #-12]
	ldr r10, =0
	str r10, [fp, #-4]
	b .L37
.L37:
	ldr r10, [fp, #-4]
	ldr r9, =5
	cmp r10, r9
	movlt r10, #1
	movge r10, #0
	blt .L38
	b .L42
.L38:
	ldr r10, [fp, #-16]
	sub r9, r10, #1
	ldr r10, [fp, #-4]
	ldr r8, =5
	mul r7, r9, r8
	add r9, r7, r10
	ldr r10, =4
	mul r8, r9, r10
	add r10, r8, #-116
	add r9, fp, r10
	ldr r10, [r9]
	str r10, [fp, #-8]
	ldr r10, [fp, #-12]
	sub r9, r10, #1
	ldr r10, [fp, #-4]
	ldr r8, =5
	mul r7, r9, r8
	add r9, r7, r10
	ldr r10, =4
	mul r8, r9, r10
	add r10, r8, #-116
	add r9, fp, r10
	ldr r10, [r9]
	ldr r9, [fp, #-16]
	sub r8, r9, #1
	ldr r9, [fp, #-4]
	ldr r7, =5
	mul r6, r8, r7
	add r8, r6, r9
	ldr r9, =4
	mul r7, r8, r9
	add r9, r7, #-116
	add r8, fp, r9
	str r10, [r8]
	ldr r10, [fp, #-8]
	ldr r9, [fp, #-12]
	sub r8, r9, #1
	ldr r9, [fp, #-4]
	ldr r7, =5
	mul r6, r8, r7
	add r8, r6, r9
	ldr r9, =4
	mul r7, r8, r9
	add r9, r7, #-116
	add r8, fp, r9
	str r10, [r8]
	ldr r10, [fp, #-4]
	add r9, r10, #1
	str r9, [fp, #-4]
	b .L37
.L39:
	ldr r10, =2
	ldr r9, =5
	mul r8, r10, r9
	add r10, r8, #0
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-116
	add r9, fp, r10
	ldr r10, [r9]
	mov r0, r10
	b .Lmain_END
.L41:
.L42:
	b .L39
.L43:
.Lmain_END:
	add sp, sp, #116
	pop {r6, r7, r8, r9, r10, fp, lr}
	bx  lr

