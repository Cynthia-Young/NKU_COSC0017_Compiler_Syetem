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
	sub sp, sp, #20
.L21:
	ldr r10, =5
	str r10, [fp, #-20]
	ldr r10, =5
	str r10, [fp, #-16]
	ldr r10, =1
	str r10, [fp, #-12]
	ldr r10, =-2
	str r10, [fp, #-8]
	ldr r10, [fp, #-8]
	ldr r9, =1
	mul r8, r10, r9
	ldr r10, =2
	sdiv r9, r8, r10
	ldr r10, [fp, #-20]
	ldr r8, [fp, #-16]
	sub r7, r10, r8
	add r10, r9, r7
	ldr r9, [fp, #-12]
	add r8, r9, #3
	ldr r9, =0
	sub r7, r9, r8
	ldr r9, =2
	sdiv r8, r7, r9
	mul r9, r8, r9
	sub r8, r7, r9
	sub r9, r10, r8
	str r9, [fp, #-4]
	ldr r10, [fp, #-4]
	mov r0, r10
	bl  putint
	ldr r10, [fp, #-8]
	ldr r9, =2
	sdiv r8, r10, r9
	mul r8, r8, r9
	sub r9, r10, r8
	add r10, r9, #67
	ldr r9, [fp, #-20]
	ldr r8, [fp, #-16]
	sub r7, r9, r8
	ldr r9, =0
	sub r8, r9, r7
	add r9, r10, r8
	ldr r10, [fp, #-12]
	add r8, r10, #2
	ldr r10, =2
	sdiv r7, r8, r10
	mul r10, r7, r10
	sub r7, r8, r10
	ldr r10, =0
	sub r8, r10, r7
	sub r10, r9, r8
	str r10, [fp, #-4]
	ldr r10, [fp, #-4]
	add r9, r10, #3
	str r9, [fp, #-4]
	ldr r10, [fp, #-4]
	mov r0, r10
	bl  putint
	ldr r10, =0
	mov r0, r10
	b .Lmain_END
.Lmain_END:
	add sp, sp, #20
	pop {r7, r8, r9, r10, fp, lr}
	bx  lr

