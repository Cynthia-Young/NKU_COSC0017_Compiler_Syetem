	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm
	.data
	.global a
	.align 4
	.size a, 4
a:
	.word 0
	.global b
	.align 4
	.size b, 4
b:
	.word 0
	.global c
	.align 4
	.size c, 4
c:
	.word 0
	.global d
	.align 4
	.size d, 4
d:
	.word 0
	.global e
	.align 4
	.size e, 4
e:
	.word 0
	.text
	.global main
	.type main , %function
main:
	push {r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L20:
	bl  getint
	mov r10, r0
	ldr r9, addr_a_0
	str r10, [r9]
	bl  getint
	mov r10, r0
	ldr r9, addr_b_0
	str r10, [r9]
	bl  getint
	mov r10, r0
	ldr r9, addr_c_0
	str r10, [r9]
	bl  getint
	mov r10, r0
	ldr r9, addr_d_0
	str r10, [r9]
	bl  getint
	mov r10, r0
	ldr r9, addr_e_0
	str r10, [r9]
	ldr r10, =0
	str r10, [fp, #-4]
	ldr r10, addr_a_0
	ldr r9, [r10]
	ldr r10, addr_b_0
	ldr r8, [r10]
	ldr r10, addr_c_0
	ldr r7, [r10]
	mul r10, r8, r7
	sub r8, r9, r10
	ldr r10, addr_d_0
	ldr r9, [r10]
	ldr r10, addr_a_0
	ldr r7, [r10]
	ldr r10, addr_c_0
	ldr r6, [r10]
	sdiv r10, r7, r6
	sub r7, r9, r10
	cmp r8, r7
	movne r10, #1
	moveq r10, #0
	bne .L22
	b .L33
.L22:
	ldr r10, =1
	str r10, [fp, #-4]
	b .L23
.L33:
	b .L25
.L23:
	ldr r10, [fp, #-4]
	mov r0, r10
	b .Lmain_END
.L25:
	ldr r10, addr_a_0
	ldr r9, [r10]
	ldr r10, addr_b_0
	ldr r8, [r10]
	mul r10, r9, r8
	ldr r9, addr_c_0
	ldr r8, [r9]
	sdiv r9, r10, r8
	ldr r10, addr_e_0
	ldr r8, [r10]
	ldr r10, addr_d_0
	ldr r7, [r10]
	add r10, r8, r7
	cmp r9, r10
	moveq r10, #1
	movne r10, #0
	beq .L22
	b .L41
.L41:
	b .L24
.L24:
	ldr r10, addr_a_0
	ldr r9, [r10]
	ldr r10, addr_b_0
	ldr r8, [r10]
	add r10, r9, r8
	ldr r9, addr_c_0
	ldr r8, [r9]
	add r9, r10, r8
	ldr r10, addr_d_0
	ldr r8, [r10]
	ldr r10, addr_e_0
	ldr r7, [r10]
	add r10, r8, r7
	cmp r9, r10
	moveq r10, #1
	movne r10, #0
	beq .L22
	b .L49
.L49:
	b .L23
.Lmain_END:
	add sp, sp, #4
	pop {r6, r7, r8, r9, r10, fp, lr}
	bx  lr

addr_a_0:
	.word a
addr_b_0:
	.word b
addr_c_0:
	.word c
addr_d_0:
	.word d
addr_e_0:
	.word e
