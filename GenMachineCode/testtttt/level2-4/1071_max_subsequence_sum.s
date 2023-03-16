	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm
	.text
	.global maxSubArray
	.type maxSubArray , %function
maxSubArray:
	push {r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #20
.L11:
	str r0, [fp, #-20]
	str r1, [fp, #-16]
	ldr r10, [fp, #-16]
	ldr r9, =0
	cmp r10, r9
	moveq r10, #1
	movne r10, #0
	beq .L14
	b .L18
.L14:
	ldr r10, =0
	mov r0, r10
	b .LmaxSubArray_END
.L15:
	ldr r10, [fp, #-16]
	ldr r9, =1
	cmp r10, r9
	moveq r10, #1
	movne r10, #0
	beq .L20
	b .L24
.L17:
.L18:
	b .L15
.L19:
.L20:
	ldr r10, [fp, #-20]
	ldr r9, =0
	ldr r8, =4
	mul r7, r9, r8
	add r9, r7, r10
	ldr r10, [r9]
	mov r0, r10
	b .LmaxSubArray_END
.L21:
	ldr r10, [fp, #-20]
	ldr r9, =0
	ldr r8, =4
	mul r7, r9, r8
	add r9, r7, r10
	ldr r10, [r9]
	str r10, [fp, #-12]
	ldr r10, [fp, #-12]
	str r10, [fp, #-8]
	ldr r10, =1
	str r10, [fp, #-4]
	b .L38
.L23:
.L24:
	b .L21
.L25:
.L38:
	ldr r10, [fp, #-4]
	ldr r9, [fp, #-16]
	cmp r10, r9
	movlt r10, #1
	movge r10, #0
	blt .L39
	b .L44
.L39:
	ldr r10, [fp, #-12]
	ldr r9, =0
	cmp r10, r9
	movlt r10, #1
	movge r10, #0
	blt .L46
	b .L50
.L40:
	ldr r10, [fp, #-8]
	mov r0, r10
	b .LmaxSubArray_END
.L43:
.L44:
	b .L40
.L45:
.L46:
	ldr r10, =0
	str r10, [fp, #-12]
	b .L47
.L47:
	ldr r10, [fp, #-12]
	ldr r9, [fp, #-4]
	ldr r8, [fp, #-20]
	ldr r7, =4
	mul r6, r9, r7
	add r9, r6, r8
	ldr r8, [r9]
	add r9, r10, r8
	str r9, [fp, #-12]
	ldr r10, [fp, #-8]
	ldr r9, [fp, #-12]
	cmp r10, r9
	movlt r10, #1
	movge r10, #0
	blt .L58
	b .L63
.L49:
.L50:
	b .L47
.L51:
.L58:
	ldr r10, [fp, #-12]
	str r10, [fp, #-8]
	b .L59
.L59:
	ldr r10, [fp, #-4]
	add r9, r10, #1
	str r9, [fp, #-4]
	b .L38
.L62:
.L63:
	b .L59
.L64:
.LmaxSubArray_END:
	add sp, sp, #20
	pop {r6, r7, r8, r9, r10, fp, lr}
	bx  lr

	.global main
	.type main , %function
main:
	push {r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #44
.L68:
	ldr r10, =0
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-40
	ldr r9, =-4
	add r8, fp, r10
	str r9, [r8]
	ldr r10, =1
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-40
	ldr r9, =3
	add r8, fp, r10
	str r9, [r8]
	ldr r10, =2
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-40
	ldr r9, =9
	add r8, fp, r10
	str r9, [r8]
	ldr r10, =3
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-40
	ldr r9, =-2
	add r8, fp, r10
	str r9, [r8]
	ldr r10, =4
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-40
	ldr r9, =0
	add r8, fp, r10
	str r9, [r8]
	ldr r10, =5
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-40
	ldr r9, =1
	add r8, fp, r10
	str r9, [r8]
	ldr r10, =6
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-40
	ldr r9, =-6
	add r8, fp, r10
	str r9, [r8]
	ldr r10, =7
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-40
	ldr r9, =5
	add r8, fp, r10
	str r9, [r8]
	ldr r10, =8
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-40
	ldr r9, =7
	add r8, fp, r10
	str r9, [r8]
	ldr r10, =9
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-40
	ldr r9, =8
	add r8, fp, r10
	str r9, [r8]
	ldr r10, =10
	str r10, [fp, #-44]
	ldr r10, =0
	add r9, r10, #-40
	ldr r10, [fp, #-44]
	mov r1, r10
	add r10, fp, r9
	mov r0, r10
	bl  maxSubArray
	mov r10, r0
	str r10, [fp, #-44]
	ldr r10, [fp, #-44]
	mov r0, r10
	b .Lmain_END
.Lmain_END:
	add sp, sp, #44
	pop {r8, r9, r10, fp, lr}
	bx  lr

