	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm
	.text
	.global concat
	.type concat , %function
concat:
	push {r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #20
.L12:
	str r0, [fp, #-20]
	str r1, [fp, #-16]
	str r2, [fp, #-12]
	ldr r10, =0
	str r10, [fp, #-8]
	b .L17
.L17:
	ldr r10, [fp, #-8]
	ldr r9, =3
	cmp r10, r9
	movlt r10, #1
	movge r10, #0
	blt .L18
	b .L22
.L18:
	ldr r10, [fp, #-8]
	ldr r9, [fp, #-20]
	ldr r8, =4
	mul r7, r10, r8
	add r10, r7, r9
	ldr r9, [r10]
	ldr r10, [fp, #-8]
	ldr r8, [fp, #-12]
	ldr r7, =4
	mul r6, r10, r7
	add r10, r6, r8
	str r9, [r10]
	ldr r10, [fp, #-8]
	add r9, r10, #1
	str r9, [fp, #-8]
	b .L17
.L19:
	ldr r10, =0
	str r10, [fp, #-4]
	b .L35
.L21:
.L22:
	b .L19
.L23:
.L35:
	ldr r10, [fp, #-4]
	ldr r9, =3
	cmp r10, r9
	movlt r10, #1
	movge r10, #0
	blt .L36
	b .L40
.L36:
	ldr r10, [fp, #-4]
	ldr r9, [fp, #-16]
	ldr r8, =4
	mul r7, r10, r8
	add r10, r7, r9
	ldr r9, [r10]
	ldr r10, [fp, #-8]
	ldr r8, [fp, #-12]
	ldr r7, =4
	mul r6, r10, r7
	add r10, r6, r8
	str r9, [r10]
	ldr r10, [fp, #-8]
	add r9, r10, #1
	str r9, [fp, #-8]
	ldr r10, [fp, #-4]
	add r9, r10, #1
	str r9, [fp, #-4]
	b .L35
.L37:
	ldr r10, =0
	mov r0, r10
	b .Lconcat_END
.L39:
.L40:
	b .L37
.L41:
.Lconcat_END:
	add sp, sp, #20
	pop {r6, r7, r8, r9, r10, fp, lr}
	bx  lr

	.global main
	.type main , %function
main:
	push {r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #128
.L53:
	ldr r10, =0
	str r10, [fp, #-8]
	b .L64
.L64:
	ldr r10, [fp, #-8]
	ldr r9, =3
	cmp r10, r9
	movlt r10, #1
	movge r10, #0
	blt .L65
	b .L69
.L65:
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
	b .L64
.L66:
	ldr r10, =0
	add r9, r10, #-128
	ldr r10, =0
	add r8, r10, #-92
	ldr r10, =0
	add r7, r10, #-56
	add r10, fp, r7
	mov r2, r10
	add r10, fp, r8
	mov r1, r10
	add r10, fp, r9
	mov r0, r10
	bl  concat
	mov r10, r0
	str r10, [fp, #-8]
	b .L103
.L68:
.L69:
	b .L66
.L70:
.L103:
	ldr r10, [fp, #-8]
	ldr r9, =6
	cmp r10, r9
	movlt r10, #1
	movge r10, #0
	blt .L104
	b .L108
.L104:
	ldr r10, [fp, #-8]
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-56
	add r9, fp, r10
	ldr r10, [r9]
	str r10, [fp, #-4]
	ldr r10, [fp, #-4]
	mov r0, r10
	bl  putint
	ldr r10, [fp, #-8]
	add r9, r10, #1
	str r9, [fp, #-8]
	b .L103
.L105:
	ldr r10, =10
	str r10, [fp, #-4]
	ldr r10, [fp, #-4]
	mov r0, r10
	bl  putch
	ldr r10, =0
	mov r0, r10
	b .Lmain_END
.L107:
.L108:
	b .L105
.L109:
.Lmain_END:
	add sp, sp, #128
	pop {r7, r8, r9, r10, fp, lr}
	bx  lr

