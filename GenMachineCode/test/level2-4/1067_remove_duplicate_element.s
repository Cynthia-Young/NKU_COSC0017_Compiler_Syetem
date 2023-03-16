	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm
	.text
	.global removeElement
	.type removeElement , %function
removeElement:
	push {r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L6:
	str r0, [fp, #-16]
	str r1, [fp, #-12]
	str r2, [fp, #-8]
	ldr r10, =0
	str r10, [fp, #-4]
	b .L11
.L11:
	ldr r10, [fp, #-4]
	ldr r9, [fp, #-12]
	cmp r10, r9
	movlt r10, #1
	movge r10, #0
	blt .L12
	b .L17
.L12:
	ldr r10, [fp, #-4]
	ldr r9, [fp, #-16]
	ldr r8, =4
	mul r7, r10, r8
	add r10, r7, r9
	ldr r9, [r10]
	ldr r10, [fp, #-8]
	cmp r9, r10
	moveq r10, #1
	movne r10, #0
	beq .L19
	b .L29
.L17:
	b .L13
.L19:
	ldr r10, [fp, #-12]
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
	sub r9, r10, #1
	str r9, [fp, #-12]
	b .L20
.L29:
	b .L21
.L13:
	ldr r10, [fp, #-12]
	mov r0, r10
	b .LremoveElement_END
.L20:
	b .L11
.L21:
	ldr r10, [fp, #-4]
	add r9, r10, #1
	str r9, [fp, #-4]
	b .L20
.LremoveElement_END:
	add sp, sp, #16
	pop {r6, r7, r8, r9, r10, fp, lr}
	bx  lr

	.global main
	.type main , %function
main:
	push {r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #48
.L43:
	ldr r10, =0
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-44
	ldr r9, =3
	add r8, fp, r10
	str r9, [r8]
	ldr r10, =1
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-44
	ldr r9, =3
	add r8, fp, r10
	str r9, [r8]
	ldr r10, =2
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-44
	ldr r9, =9
	add r8, fp, r10
	str r9, [r8]
	ldr r10, =3
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-44
	ldr r9, =0
	add r8, fp, r10
	str r9, [r8]
	ldr r10, =4
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-44
	ldr r9, =0
	add r8, fp, r10
	str r9, [r8]
	ldr r10, =5
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-44
	ldr r9, =1
	add r8, fp, r10
	str r9, [r8]
	ldr r10, =6
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-44
	ldr r9, =1
	add r8, fp, r10
	str r9, [r8]
	ldr r10, =7
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-44
	ldr r9, =5
	add r8, fp, r10
	str r9, [r8]
	ldr r10, =8
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-44
	ldr r9, =7
	add r8, fp, r10
	str r9, [r8]
	ldr r10, =9
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-44
	ldr r9, =8
	add r8, fp, r10
	str r9, [r8]
	ldr r10, =10
	str r10, [fp, #-48]
	ldr r10, =3
	str r10, [fp, #-4]
	ldr r10, =0
	add r9, r10, #-44
	ldr r10, [fp, #-48]
	ldr r8, [fp, #-4]
	mov r2, r8
	mov r1, r10
	add r10, fp, r9
	mov r0, r10
	bl  removeElement
	mov r10, r0
	str r10, [fp, #-48]
	ldr r10, [fp, #-48]
	mov r0, r10
	b .Lmain_END
.Lmain_END:
	add sp, sp, #48
	pop {r8, r9, r10, fp, lr}
	bx  lr

