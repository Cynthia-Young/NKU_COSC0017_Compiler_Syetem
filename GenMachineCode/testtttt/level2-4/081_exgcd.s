	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm
	.text
	.global exgcd
	.type exgcd , %function
exgcd:
	push {r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #24
.L11:
	str r0, [fp, #-24]
	str r1, [fp, #-20]
	str r2, [fp, #-16]
	str r3, [fp, #-12]
	ldr r10, [fp, #-20]
	ldr r9, =0
	cmp r10, r9
	moveq r10, #1
	movne r10, #0
	beq .L16
	b .L21
.L16:
	ldr r10, [fp, #-16]
	ldr r9, =0
	ldr r8, =4
	mul r7, r9, r8
	add r9, r7, r10
	ldr r10, =1
	str r10, [r9]
	ldr r10, [fp, #-12]
	ldr r9, =0
	ldr r8, =4
	mul r7, r9, r8
	add r9, r7, r10
	ldr r10, =0
	str r10, [r9]
	ldr r10, [fp, #-24]
	mov r0, r10
	b .Lexgcd_END
.L17:
.L18:
	ldr r10, [fp, #-20]
	ldr r9, [fp, #-24]
	ldr r8, [fp, #-20]
	sdiv r7, r9, r8
	mul r8, r7, r8
	sub r7, r9, r8
	ldr r9, [fp, #-16]
	ldr r8, =0
	add r6, r8, r9
	ldr r9, [fp, #-12]
	ldr r8, =0
	add r5, r8, r9
	mov r3, r5
	mov r2, r6
	mov r1, r7
	mov r0, r10
	bl  exgcd
	mov r10, r0
	str r10, [fp, #-8]
	ldr r10, [fp, #-16]
	ldr r9, =0
	ldr r8, =4
	mul r7, r9, r8
	add r9, r7, r10
	ldr r10, [r9]
	str r10, [fp, #-4]
	ldr r10, [fp, #-12]
	ldr r9, =0
	ldr r8, =4
	mul r7, r9, r8
	add r9, r7, r10
	ldr r10, [r9]
	ldr r9, [fp, #-16]
	ldr r8, =0
	ldr r7, =4
	mul r6, r8, r7
	add r8, r6, r9
	str r10, [r8]
	ldr r10, [fp, #-4]
	ldr r9, [fp, #-24]
	ldr r8, [fp, #-20]
	sdiv r7, r9, r8
	ldr r9, [fp, #-12]
	ldr r8, =0
	ldr r6, =4
	mul r5, r8, r6
	add r8, r5, r9
	ldr r9, [r8]
	mul r8, r7, r9
	sub r9, r10, r8
	ldr r10, [fp, #-12]
	ldr r8, =0
	ldr r7, =4
	mul r6, r8, r7
	add r8, r6, r10
	str r9, [r8]
	ldr r10, [fp, #-8]
	mov r0, r10
	b .Lexgcd_END
.L20:
.L21:
	b .L18
.L22:
.Lexgcd_END:
	add sp, sp, #24
	pop {r5, r6, r7, r8, r9, r10, fp, lr}
	bx  lr

	.global main
	.type main , %function
main:
	push {r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L63:
	ldr r10, =7
	str r10, [fp, #-16]
	ldr r10, =15
	str r10, [fp, #-12]
	ldr r10, =0
	add r9, r10, #-8
	ldr r10, =1
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =0
	add r9, r10, #-4
	ldr r10, =1
	add r8, fp, r9
	str r10, [r8]
	ldr r10, [fp, #-16]
	ldr r9, [fp, #-12]
	ldr r8, =0
	add r7, r8, #-8
	ldr r8, =0
	add r6, r8, #-4
	add r8, fp, r6
	mov r3, r8
	add r8, fp, r7
	mov r2, r8
	mov r1, r9
	mov r0, r10
	bl  exgcd
	mov r10, r0
	ldr r10, =0
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-8
	add r9, fp, r10
	ldr r10, [r9]
	ldr r9, [fp, #-12]
	sdiv r8, r10, r9
	mul r9, r8, r9
	sub r8, r10, r9
	ldr r10, [fp, #-12]
	add r9, r8, r10
	ldr r10, [fp, #-12]
	sdiv r8, r9, r10
	mul r10, r8, r10
	sub r8, r9, r10
	ldr r10, =0
	ldr r9, =4
	mul r7, r10, r9
	add r10, r7, #-8
	add r9, fp, r10
	str r8, [r9]
	ldr r10, =0
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-8
	add r9, fp, r10
	ldr r10, [r9]
	mov r0, r10
	bl  putint
	ldr r10, =0
	mov r0, r10
	b .Lmain_END
.Lmain_END:
	add sp, sp, #16
	pop {r6, r7, r8, r9, r10, fp, lr}
	bx  lr

