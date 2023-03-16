	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm
	.data
	.global a
	.align 4
	.size a, 4
a:
	.word 1
	.global b
	.align 4
	.size b, 4
b:
	.word 0
	.global c
	.align 4
	.size c, 4
c:
	.word 1
	.global d
	.align 4
	.size d, 4
d:
	.word 2
	.global e
	.align 4
	.size e, 4
e:
	.word 4
	.text
	.global main
	.type main , %function
main:
	push {r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L17:
	ldr r10, =0
	str r10, [fp, #-4]
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
	b .L29
.L22:
	ldr r10, addr_a_0
	ldr r9, [r10]
	ldr r10, addr_a_0
	ldr r8, [r10]
	ldr r10, addr_b_0
	ldr r7, [r10]
	add r10, r8, r7
	mul r8, r9, r10
	ldr r10, addr_c_0
	ldr r9, [r10]
	add r10, r8, r9
	ldr r9, addr_d_0
	ldr r8, [r9]
	ldr r9, addr_e_0
	ldr r7, [r9]
	add r9, r8, r7
	cmp r10, r9
	movle r10, #1
	movgt r10, #0
	ble .L19
	b .L38
.L29:
	b .L21
.L19:
	ldr r10, =1
	str r10, [fp, #-4]
	b .L20
.L38:
	b .L21
.L21:
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
	moveq r10, #1
	movne r10, #0
	beq .L19
	b .L47
.L20:
	ldr r10, [fp, #-4]
	mov r0, r10
	bl  putint
	ldr r10, [fp, #-4]
	mov r0, r10
	b .Lmain_END
.L47:
	b .L20
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
