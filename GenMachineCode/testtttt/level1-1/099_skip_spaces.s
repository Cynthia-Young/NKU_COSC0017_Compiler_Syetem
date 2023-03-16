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
	sub sp, sp, #408
.L8:
	ldr r10, =0
	str r10, [fp, #-408]
	ldr r10, =0
	str r10, [fp, #-404]
	b .L12
.L12:
	bl  getint
	mov r10, r0
	ldr r9, =0
	cmp r9, r10
	movne r10, #1
	moveq r10, #0
	bne .L13
	b .L16
.L13:
	bl  getint
	mov r10, r0
	ldr r9, [fp, #-404]
	ldr r8, =4
	mul r7, r9, r8
	add r9, r7, #-400
	add r8, fp, r9
	str r10, [r8]
	ldr r10, [fp, #-404]
	add r9, r10, #1
	str r9, [fp, #-404]
	b .L12
.L14:
	b .L22
.L15:
.L16:
	b .L14
.L17:
.L22:
	ldr r10, [fp, #-404]
	ldr r9, =0
	cmp r9, r10
	movne r10, #1
	moveq r10, #0
	bne .L23
	b .L27
.L23:
	ldr r10, [fp, #-404]
	sub r9, r10, #1
	str r9, [fp, #-404]
	ldr r10, [fp, #-408]
	ldr r9, [fp, #-404]
	ldr r8, =4
	mul r7, r9, r8
	add r9, r7, #-400
	add r8, fp, r9
	ldr r9, [r8]
	add r8, r10, r9
	str r8, [fp, #-408]
	b .L22
.L24:
	ldr r10, [fp, #-408]
	ldr r9, =79
	sdiv r8, r10, r9
	mul r9, r8, r9
	sub r8, r10, r9
	mov r0, r8
	b .Lmain_END
.L26:
.L27:
	b .L24
.L28:
.Lmain_END:
	add sp, sp, #408
	pop {r7, r8, r9, r10, fp, lr}
	bx  lr

