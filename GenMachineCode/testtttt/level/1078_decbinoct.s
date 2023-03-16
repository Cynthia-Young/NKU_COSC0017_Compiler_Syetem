	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm
	.text
	.global dec2bin
	.type dec2bin , %function
dec2bin:
	push {r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #20
.L9:
	str r0, [fp, #-20]
	ldr r10, =0
	str r10, [fp, #-16]
	ldr r10, =1
	str r10, [fp, #-12]
	ldr r10, [fp, #-20]
	str r10, [fp, #-4]
	b .L16
.L16:
	ldr r10, [fp, #-4]
	ldr r9, =0
	cmp r10, r9
	movne r10, #1
	moveq r10, #0
	bne .L17
	b .L21
.L17:
	ldr r10, [fp, #-4]
	ldr r9, =2
	sdiv r8, r10, r9
	mul r9, r8, r9
	sub r8, r10, r9
	str r8, [fp, #-8]
	ldr r10, [fp, #-12]
	ldr r9, [fp, #-8]
	mul r8, r10, r9
	ldr r10, [fp, #-16]
	add r9, r8, r10
	str r9, [fp, #-16]
	ldr r10, [fp, #-12]
	ldr r9, =10
	mul r8, r10, r9
	str r8, [fp, #-12]
	ldr r10, [fp, #-4]
	ldr r9, =2
	sdiv r8, r10, r9
	str r8, [fp, #-4]
	b .L16
.L21:
	b .L18
.L18:
	ldr r10, [fp, #-16]
	mov r0, r10
	b .Ldec2bin_END
.Ldec2bin_END:
	add sp, sp, #20
	pop {r8, r9, r10, fp, lr}
	bx  lr

	.global main
	.type main , %function
main:
	push {r10, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L30:
	ldr r10, =400
	str r10, [fp, #-8]
	ldr r10, [fp, #-8]
	mov r0, r10
	bl  dec2bin
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

