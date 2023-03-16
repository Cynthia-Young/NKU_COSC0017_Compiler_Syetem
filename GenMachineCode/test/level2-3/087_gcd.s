	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm
	.text
	.global gcd
	.type gcd , %function
gcd:
	push {r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L11:
	str r0, [fp, #-8]
	str r1, [fp, #-4]
	ldr r10, [fp, #-4]
	ldr r9, =0
	cmp r10, r9
	moveq r10, #1
	movne r10, #0
	beq .L14
	b .L18
.L14:
	ldr r10, [fp, #-8]
	mov r0, r10
	b .Lgcd_END
.L18:
	b .L15
.L15:
	ldr r10, [fp, #-4]
	ldr r9, [fp, #-8]
	ldr r8, [fp, #-4]
	sdiv r7, r9, r8
	mul r8, r7, r8
	sub r7, r9, r8
	mov r1, r7
	mov r0, r10
	bl  gcd
	mov r10, r0
	mov r0, r10
	b .Lgcd_END
.Lgcd_END:
	add sp, sp, #8
	pop {r7, r8, r9, r10, fp, lr}
	bx  lr

	.global main
	.type main , %function
main:
	push {r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #12
.L24:
	bl  getint
	mov r10, r0
	str r10, [fp, #-12]
	b .L26
.L26:
	ldr r10, [fp, #-12]
	ldr r9, =0
	cmp r10, r9
	movgt r10, #1
	movle r10, #0
	bgt .L27
	b .L31
.L27:
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
	bl  putint
	ldr r10, =10
	mov r0, r10
	bl  putch
	ldr r10, [fp, #-12]
	sub r9, r10, #1
	str r9, [fp, #-12]
	b .L26
.L31:
	b .L28
.L28:
	ldr r10, =0
	mov r0, r10
	b .Lmain_END
.Lmain_END:
	add sp, sp, #12
	pop {r9, r10, fp, lr}
	bx  lr

