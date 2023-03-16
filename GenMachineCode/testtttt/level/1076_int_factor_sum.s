	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm
	.data
	.global N
	.align 4
	.size N, 4
N:
	.word 0
	.global newline
	.align 4
	.size newline, 4
newline:
	.word 0
	.text
	.global factor
	.type factor , %function
factor:
	push {r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #12
.L7:
	str r0, [fp, #-12]
	ldr r10, =0
	str r10, [fp, #-4]
	ldr r10, =1
	str r10, [fp, #-8]
	b .L11
.L11:
	ldr r10, [fp, #-8]
	ldr r9, [fp, #-12]
	add r8, r9, #1
	cmp r10, r8
	movlt r10, #1
	movge r10, #0
	blt .L12
	b .L17
.L12:
	ldr r10, [fp, #-12]
	ldr r9, [fp, #-8]
	sdiv r8, r10, r9
	mul r9, r8, r9
	sub r8, r10, r9
	ldr r10, =0
	cmp r8, r10
	moveq r10, #1
	movne r10, #0
	beq .L19
	b .L24
.L17:
	b .L13
.L19:
	ldr r10, [fp, #-4]
	ldr r9, [fp, #-8]
	add r8, r10, r9
	str r8, [fp, #-4]
	b .L20
.L24:
	b .L20
.L13:
	ldr r10, [fp, #-4]
	mov r0, r10
	b .Lfactor_END
.L20:
	ldr r10, [fp, #-8]
	add r9, r10, #1
	str r9, [fp, #-8]
	b .L11
.Lfactor_END:
	add sp, sp, #12
	pop {r8, r9, r10, fp, lr}
	bx  lr

	.global main
	.type main , %function
main:
	push {r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #12
.L30:
	ldr r10, =4
	ldr r9, addr_N_0
	str r10, [r9]
	ldr r10, =10
	ldr r9, addr_newline_0
	str r10, [r9]
	ldr r10, =1478
	str r10, [fp, #-8]
	ldr r10, [fp, #-8]
	mov r0, r10
	bl  factor
	mov r10, r0
	mov r0, r10
	b .Lmain_END
.Lmain_END:
	add sp, sp, #12
	pop {r9, r10, fp, lr}
	bx  lr

addr_N_0:
	.word N
addr_newline_0:
	.word newline
