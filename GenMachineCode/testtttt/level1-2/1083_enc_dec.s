	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm
	.text
	.global enc
	.type enc , %function
enc:
	push {r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L10:
	str r0, [fp, #-4]
	ldr r10, [fp, #-4]
	ldr r9, =25
	cmp r10, r9
	movgt r10, #1
	movle r10, #0
	bgt .L12
	b .L17
.L12:
	ldr r10, [fp, #-4]
	add r9, r10, #60
	str r9, [fp, #-4]
	b .L13
.L13:
	ldr r10, [fp, #-4]
	mov r0, r10
	b .Lenc_END
.L14:
	ldr r10, [fp, #-4]
	sub r9, r10, #15
	str r9, [fp, #-4]
	b .L13
.L16:
.L17:
	b .L14
.L18:
.Lenc_END:
	add sp, sp, #4
	pop {r9, r10, fp, lr}
	bx  lr

	.global dec
	.type dec , %function
dec:
	push {r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L22:
	str r0, [fp, #-4]
	ldr r10, [fp, #-4]
	ldr r9, =85
	cmp r10, r9
	movgt r10, #1
	movle r10, #0
	bgt .L24
	b .L29
.L24:
	ldr r10, [fp, #-4]
	sub r9, r10, #59
	str r9, [fp, #-4]
	b .L25
.L25:
	ldr r10, [fp, #-4]
	mov r0, r10
	b .Ldec_END
.L26:
	ldr r10, [fp, #-4]
	add r9, r10, #14
	str r9, [fp, #-4]
	b .L25
.L28:
.L29:
	b .L26
.L30:
.Ldec_END:
	add sp, sp, #4
	pop {r9, r10, fp, lr}
	bx  lr

	.global main
	.type main , %function
main:
	push {r10, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L34:
	ldr r10, =400
	str r10, [fp, #-8]
	ldr r10, [fp, #-8]
	mov r0, r10
	bl  enc
	mov r10, r0
	str r10, [fp, #-4]
	ldr r10, [fp, #-4]
	mov r0, r10
	bl  dec
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

