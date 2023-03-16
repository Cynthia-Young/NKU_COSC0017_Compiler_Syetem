	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm
	.data
	.global a
	.align 4
	.size a, 24
a:
	.word 10
	.word 1
	.word 50
	.word 50
	.word 20
	.word 5
	.comm	dp,400,4
	.text
	.global main
	.type main , %function
main:
	push {r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #24
.L26:
	ldr r10, =6
	str r10, [fp, #-24]
	ldr r10, =3
	str r10, [fp, #-20]
	b .L33
.L33:
	ldr r10, [fp, #-20]
	ldr r9, [fp, #-24]
	cmp r10, r9
	movle r10, #1
	movgt r10, #0
	ble .L34
	b .L39
.L34:
	ldr r10, =0
	str r10, [fp, #-16]
	b .L41
.L35:
	ldr r10, [fp, #-24]
	sub r9, r10, #1
	ldr r10, =0
	ldr r8, =10
	mul r7, r10, r8
	add r10, r7, r9
	ldr r9, =4
	mul r8, r10, r9
	ldr r10, addr_dp_0
	add r9, r8, r10
	ldr r10, [r9]
	mov r0, r10
	bl  putint
	ldr r10, =0
	mov r0, r10
	b .Lmain_END
.L38:
.L39:
	b .L35
.L40:
.L41:
	ldr r10, [fp, #-16]
	ldr r9, [fp, #-24]
	ldr r8, [fp, #-20]
	sub r7, r9, r8
	add r9, r7, #1
	cmp r10, r9
	movlt r10, #1
	movge r10, #0
	blt .L42
	b .L48
.L42:
	ldr r10, [fp, #-16]
	ldr r9, [fp, #-20]
	add r8, r10, r9
	sub r10, r8, #1
	str r10, [fp, #-8]
	ldr r10, [fp, #-16]
	add r9, r10, #1
	str r9, [fp, #-12]
	b .L53
.L43:
	ldr r10, [fp, #-20]
	add r9, r10, #1
	str r9, [fp, #-20]
	b .L33
.L47:
.L48:
	b .L43
.L49:
.L53:
	ldr r10, [fp, #-12]
	ldr r9, [fp, #-8]
	cmp r10, r9
	movlt r10, #1
	movge r10, #0
	blt .L54
	b .L59
.L54:
	ldr r10, [fp, #-16]
	ldr r9, [fp, #-12]
	ldr r8, =10
	mul r7, r10, r8
	add r10, r7, r9
	ldr r9, =4
	mul r8, r10, r9
	ldr r10, addr_dp_0
	add r9, r8, r10
	ldr r10, [r9]
	ldr r9, [fp, #-12]
	ldr r8, [fp, #-8]
	ldr r7, =10
	mul r6, r9, r7
	add r9, r6, r8
	ldr r8, =4
	mul r7, r9, r8
	ldr r9, addr_dp_0
	add r8, r7, r9
	ldr r9, [r8]
	add r8, r10, r9
	ldr r10, [fp, #-16]
	ldr r9, =4
	mul r7, r10, r9
	ldr r10, addr_a_0
	add r9, r7, r10
	ldr r10, [r9]
	ldr r9, [fp, #-12]
	ldr r7, =4
	mul r6, r9, r7
	ldr r9, addr_a_0
	add r7, r6, r9
	ldr r9, [r7]
	mul r7, r10, r9
	ldr r10, [fp, #-8]
	ldr r9, =4
	mul r6, r10, r9
	ldr r10, addr_a_0
	add r9, r6, r10
	ldr r10, [r9]
	mul r9, r7, r10
	add r10, r8, r9
	str r10, [fp, #-4]
	ldr r10, [fp, #-16]
	ldr r9, [fp, #-8]
	ldr r8, =10
	mul r7, r10, r8
	add r10, r7, r9
	ldr r9, =4
	mul r8, r10, r9
	ldr r10, addr_dp_0
	add r9, r8, r10
	ldr r10, [r9]
	ldr r9, =0
	cmp r9, r10
	moveq r10, #1
	movne r10, #0
	beq .L92
	b .L104
.L55:
	ldr r10, [fp, #-16]
	add r9, r10, #1
	str r9, [fp, #-16]
	b .L41
.L58:
.L59:
	b .L55
.L60:
.L92:
	ldr r10, [fp, #-4]
	ldr r9, [fp, #-16]
	ldr r8, [fp, #-8]
	ldr r7, =10
	mul r6, r9, r7
	add r9, r6, r8
	ldr r8, =4
	mul r7, r9, r8
	ldr r9, addr_dp_0
	add r8, r7, r9
	add r9, fp, r8
	str r10, [r9]
	b .L93
.L93:
	ldr r10, [fp, #-12]
	add r9, r10, #1
	str r9, [fp, #-12]
	b .L53
.L94:
	ldr r10, [fp, #-4]
	ldr r9, [fp, #-16]
	ldr r8, [fp, #-8]
	ldr r7, =10
	mul r6, r9, r7
	add r9, r6, r8
	ldr r8, =4
	mul r7, r9, r8
	ldr r9, addr_dp_0
	add r8, r7, r9
	ldr r9, [r8]
	cmp r10, r9
	movlt r10, #1
	movge r10, #0
	blt .L92
	b .L116
.L103:
.L104:
	b .L94
.L105:
.L115:
.L116:
	b .L93
.L117:
.Lmain_END:
	add sp, sp, #24
	pop {r6, r7, r8, r9, r10, fp, lr}
	bx  lr

addr_a_0:
	.word a
addr_dp_0:
	.word dp
