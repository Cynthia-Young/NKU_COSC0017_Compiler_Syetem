	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm
	.text
	.global fsqrt
	.type fsqrt , %function
fsqrt:
	push {r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #12
.L9:
	str r0, [fp, #-12]
	ldr r10, =0
	str r10, [fp, #-8]
	ldr r10, [fp, #-12]
	ldr r9, =2
	sdiv r8, r10, r9
	str r8, [fp, #-4]
	b .L14
.L14:
	ldr r10, [fp, #-8]
	ldr r9, [fp, #-4]
	sub r8, r10, r9
	ldr r10, =0
	cmp r8, r10
	movne r10, #1
	moveq r10, #0
	bne .L15
	b .L20
.L15:
	ldr r10, [fp, #-4]
	str r10, [fp, #-8]
	ldr r10, [fp, #-8]
	ldr r9, [fp, #-12]
	ldr r8, [fp, #-8]
	sdiv r7, r9, r8
	add r9, r10, r7
	str r9, [fp, #-4]
	ldr r10, [fp, #-4]
	ldr r9, =2
	sdiv r8, r10, r9
	str r8, [fp, #-4]
	b .L14
.L20:
	b .L16
.L16:
	ldr r10, [fp, #-4]
	mov r0, r10
	b .Lfsqrt_END
.Lfsqrt_END:
	add sp, sp, #12
	pop {r7, r8, r9, r10, fp, lr}
	bx  lr

	.global main
	.type main , %function
main:
	push {r10, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L28:
	ldr r10, =400
	str r10, [fp, #-8]
	ldr r10, [fp, #-8]
	mov r0, r10
	bl  fsqrt
	mov r10, r0
	str r10, [fp, #-4]
	ldr r10, [fp, #-4]
	mov r0, r10
	bl  putint
	ldr r10, =10
	str r10, [fp, #-4]
	ldr r10, [fp, #-4]
	mov r0, r10
	bl  putch
	ldr r10, =0
	mov r0, r10
	b .Lmain_END
.Lmain_END:
	add sp, sp, #8
	pop {r10, fp, lr}
	bx  lr

