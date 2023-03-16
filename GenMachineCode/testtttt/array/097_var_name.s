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
	sub sp, sp, #92
.L9:
	ldr r10, =2
	str r10, [fp, #-92]
	ldr r10, =20
	str r10, [fp, #-88]
	ldr r10, =0
	add r9, r10, #-84
	ldr r10, =1
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4
	add r9, r10, #-84
	ldr r10, =2
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8
	add r9, r10, #-84
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12
	add r9, r10, #-84
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16
	add r9, r10, #-84
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =20
	add r9, r10, #-84
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =24
	add r9, r10, #-84
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =28
	add r9, r10, #-84
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =32
	add r9, r10, #-84
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =36
	add r9, r10, #-84
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =40
	add r9, r10, #-84
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =44
	add r9, r10, #-84
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =48
	add r9, r10, #-84
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =52
	add r9, r10, #-84
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =56
	add r9, r10, #-84
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =60
	add r9, r10, #-84
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =64
	add r9, r10, #-84
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =68
	add r9, r10, #-84
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =72
	add r9, r10, #-84
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =76
	add r9, r10, #-84
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =0
	str r10, [fp, #-4]
	b .L34
.L34:
	ldr r10, [fp, #-92]
	ldr r9, =20
	cmp r10, r9
	movlt r10, #1
	movge r10, #0
	blt .L35
	b .L39
.L35:
	ldr r10, [fp, #-92]
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-84
	add r9, fp, r10
	ldr r10, [r9]
	ldr r9, [fp, #-92]
	sub r8, r9, #1
	ldr r9, =4
	mul r7, r8, r9
	add r9, r7, #-84
	add r8, fp, r9
	ldr r9, [r8]
	add r8, r10, r9
	ldr r10, [fp, #-92]
	sub r9, r10, #2
	ldr r10, =4
	mul r7, r9, r10
	add r10, r7, #-84
	add r9, fp, r10
	ldr r10, [r9]
	add r9, r8, r10
	ldr r10, [fp, #-92]
	ldr r8, =4
	mul r7, r10, r8
	add r10, r7, #-84
	add r8, fp, r10
	str r9, [r8]
	ldr r10, [fp, #-4]
	ldr r9, [fp, #-92]
	ldr r8, =4
	mul r7, r9, r8
	add r9, r7, #-84
	add r8, fp, r9
	ldr r9, [r8]
	add r8, r10, r9
	str r8, [fp, #-4]
	ldr r10, [fp, #-92]
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-84
	add r9, fp, r10
	ldr r10, [r9]
	mov r0, r10
	bl  putint
	ldr r10, =10
	mov r0, r10
	bl  putch
	ldr r10, [fp, #-92]
	add r9, r10, #1
	str r9, [fp, #-92]
	b .L34
	b .F0
.LTORG
.F0:
.L39:
	b .L36
.L36:
	ldr r10, [fp, #-4]
	mov r0, r10
	b .Lmain_END
.Lmain_END:
	add sp, sp, #92
	pop {r7, r8, r9, r10, fp, lr}
	bx  lr

