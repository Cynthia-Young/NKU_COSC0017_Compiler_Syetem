	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm
	.data
	.global n
	.align 4
	.size n, 4
n:
	.word 0
	.text
	.global gcd
	.type gcd , %function
gcd:
	push {r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #24
.L9:
	str r0, [fp, #-24]
	str r1, [fp, #-20]
	ldr r10, [fp, #-24]
	str r10, [fp, #-16]
	ldr r10, [fp, #-20]
	str r10, [fp, #-12]
	ldr r10, [fp, #-24]
	ldr r9, [fp, #-20]
	cmp r10, r9
	movlt r10, #1
	movge r10, #0
	blt .L18
	b .L23
.L18:
	ldr r10, [fp, #-24]
	str r10, [fp, #-8]
	ldr r10, [fp, #-20]
	str r10, [fp, #-24]
	ldr r10, [fp, #-8]
	str r10, [fp, #-20]
	b .L19
.L19:
	ldr r10, [fp, #-24]
	ldr r9, [fp, #-20]
	sdiv r8, r10, r9
	mul r9, r8, r9
	sub r8, r10, r9
	str r8, [fp, #-4]
	b .L30
.L22:
.L23:
	b .L19
.L24:
.L30:
	ldr r10, [fp, #-4]
	ldr r9, =0
	cmp r10, r9
	movne r10, #1
	moveq r10, #0
	bne .L31
	b .L35
.L31:
	ldr r10, [fp, #-20]
	str r10, [fp, #-24]
	ldr r10, [fp, #-4]
	str r10, [fp, #-20]
	ldr r10, [fp, #-24]
	ldr r9, [fp, #-20]
	sdiv r8, r10, r9
	mul r9, r8, r9
	sub r8, r10, r9
	str r8, [fp, #-4]
	b .L30
.L32:
	ldr r10, [fp, #-16]
	ldr r9, [fp, #-12]
	mul r8, r10, r9
	ldr r10, [fp, #-20]
	sdiv r9, r8, r10
	mov r0, r9
	b .Lgcd_END
.L34:
.L35:
	b .L32
.L36:
.Lgcd_END:
	add sp, sp, #24
	pop {r8, r9, r10, fp, lr}
	bx  lr

	.global main
	.type main , %function
main:
	push {r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L44:
	bl  getint
	mov r10, r0
	str r10, [fp, #-8]
	bl  getint
	mov r10, r0
	str r10, [fp, #-4]
	ldr r10, [fp, #-8]
	ldr r9, [fp, #-4]
	mov r1, r9
	mov r0, r10
	bl  gcd
	mov r10, r0
	mov r0, r10
	b .Lmain_END
.Lmain_END:
	add sp, sp, #8
	pop {r9, r10, fp, lr}
	bx  lr

addr_n_0:
	.word n
