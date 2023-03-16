	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm
	.data
	.global s
	.align 4
	.size s, 4
s:
	.word 0
	.text
	.global get_ans_se
	.type get_ans_se , %function
get_ans_se:
	push {r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L57:
	str r0, [fp, #-16]
	str r1, [fp, #-12]
	str r2, [fp, #-8]
	ldr r10, =0
	str r10, [fp, #-4]
	ldr r10, [fp, #-12]
	ldr r9, [fp, #-8]
	cmp r10, r9
	moveq r10, #1
	movne r10, #0
	beq .L62
	b .L67
.L62:
	ldr r10, =1
	str r10, [fp, #-4]
	b .L63
.L67:
	b .L63
.L63:
	ldr r10, [fp, #-16]
	ldr r9, =2
	mul r8, r10, r9
	str r8, [fp, #-16]
	ldr r10, [fp, #-16]
	ldr r9, [fp, #-4]
	add r8, r10, r9
	str r8, [fp, #-16]
	ldr r10, addr_s_0
	ldr r9, [r10]
	ldr r10, [fp, #-16]
	add r8, r9, r10
	ldr r10, addr_s_0
	str r8, [r10]
	ldr r10, [fp, #-16]
	mov r0, r10
	b .Lget_ans_se_END
.Lget_ans_se_END:
	add sp, sp, #16
	pop {r8, r9, r10, fp, lr}
	bx  lr

	.global get_ans
	.type get_ans , %function
get_ans:
	push {r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L75:
	str r0, [fp, #-16]
	str r1, [fp, #-12]
	str r2, [fp, #-8]
	ldr r10, =0
	str r10, [fp, #-4]
	ldr r10, [fp, #-12]
	ldr r9, [fp, #-8]
	cmp r10, r9
	moveq r10, #1
	movne r10, #0
	beq .L80
	b .L85
.L80:
	ldr r10, =1
	str r10, [fp, #-4]
	b .L81
.L85:
	b .L81
.L81:
	ldr r10, [fp, #-16]
	ldr r9, =2
	mul r8, r10, r9
	str r8, [fp, #-16]
	ldr r10, [fp, #-16]
	ldr r9, [fp, #-4]
	add r8, r10, r9
	str r8, [fp, #-16]
	ldr r10, [fp, #-16]
	mov r0, r10
	b .Lget_ans_END
.Lget_ans_END:
	add sp, sp, #16
	pop {r8, r9, r10, fp, lr}
	bx  lr

	.global main
	.type main , %function
main:
	push {r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #36
.L91:
	ldr r10, =-2147483648
	str r10, [fp, #-36]
	ldr r10, =-2147483648
	str r10, [fp, #-32]
	ldr r10, =-2147483647
	str r10, [fp, #-28]
	ldr r10, =2147483647
	str r10, [fp, #-24]
	ldr r10, =2147483646
	str r10, [fp, #-20]
	ldr r10, =0
	ldr r9, =-2147483648
	ldr r8, =-2147483648
	mov r2, r8
	mov r1, r9
	mov r0, r10
	bl  get_ans
	mov r10, r0
	str r10, [fp, #-16]
	ldr r10, [fp, #-16]
	ldr r9, =-2147483648
	add r8, r9, #1
	ldr r9, =-2147483647
	mov r2, r9
	mov r1, r8
	mov r0, r10
	bl  get_ans
	mov r10, r0
	str r10, [fp, #-16]
	ldr r10, [fp, #-16]
	ldr r9, =-2147483647
	sub r8, r9, #1
	ldr r9, =-2147483648
	mov r2, r8
	mov r1, r9
	mov r0, r10
	bl  get_ans
	mov r10, r0
	str r10, [fp, #-16]
	ldr r10, [fp, #-16]
	ldr r9, =2147483646
	add r8, r9, #1
	ldr r9, =-2147483648
	mov r2, r8
	mov r1, r9
	mov r0, r10
	bl  get_ans
	mov r10, r0
	str r10, [fp, #-16]
	ldr r10, [fp, #-16]
	ldr r9, =-2147483648
	ldr r8, =2
	sdiv r7, r9, r8
	ldr r9, =-2147483647
	ldr r8, =2
	sdiv r6, r9, r8
	mov r2, r6
	mov r1, r7
	mov r0, r10
	bl  get_ans
	mov r10, r0
	str r10, [fp, #-16]
	ldr r10, [fp, #-16]
	ldr r9, =-2147483647
	sub r8, r9, #1
	ldr r9, =-2147483648
	mov r2, r8
	mov r1, r9
	mov r0, r10
	bl  get_ans
	mov r10, r0
	str r10, [fp, #-16]
	ldr r10, [fp, #-16]
	ldr r9, =2147483646
	add r8, r9, #1
	ldr r9, =-2147483648
	mov r2, r8
	mov r1, r9
	mov r0, r10
	bl  get_ans
	mov r10, r0
	str r10, [fp, #-16]
	ldr r10, =0
	ldr r9, =-2147483647
	ldr r8, =2147483647
	mov r2, r8
	mov r1, r9
	mov r0, r10
	bl  get_ans
	mov r10, r0
	str r10, [fp, #-12]
	ldr r10, [fp, #-12]
	ldr r9, =-2147483647
	ldr r8, =2147483646
	mov r2, r8
	mov r1, r9
	mov r0, r10
	bl  get_ans
	mov r10, r0
	str r10, [fp, #-12]
	ldr r10, [fp, #-12]
	ldr r9, =2147483647
	ldr r8, =2147483646
	mov r2, r8
	mov r1, r9
	mov r0, r10
	bl  get_ans
	mov r10, r0
	str r10, [fp, #-12]
	ldr r10, [fp, #-12]
	ldr r9, =-2147483648
	ldr r8, =2
	sdiv r7, r9, r8
	ldr r9, =-2147483648
	ldr r8, =2
	sdiv r6, r9, r8
	mov r2, r6
	mov r1, r7
	mov r0, r10
	bl  get_ans
	mov r10, r0
	str r10, [fp, #-12]
	ldr r10, =0
	ldr r9, =-2147483648
	ldr r8, =-2147483648
	mov r2, r8
	mov r1, r9
	mov r0, r10
	bl  get_ans_se
	mov r10, r0
	str r10, [fp, #-8]
	ldr r10, [fp, #-8]
	ldr r9, =-2147483648
	add r8, r9, #1
	ldr r9, =-2147483647
	mov r2, r9
	mov r1, r8
	mov r0, r10
	bl  get_ans_se
	mov r10, r0
	str r10, [fp, #-8]
	ldr r10, [fp, #-8]
	ldr r9, =-2147483647
	sub r8, r9, #1
	ldr r9, =-2147483648
	mov r2, r8
	mov r1, r9
	mov r0, r10
	bl  get_ans_se
	mov r10, r0
	str r10, [fp, #-8]
	ldr r10, [fp, #-8]
	ldr r9, =2147483646
	add r8, r9, #1
	ldr r9, =-2147483648
	mov r2, r8
	mov r1, r9
	mov r0, r10
	bl  get_ans_se
	mov r10, r0
	str r10, [fp, #-8]
	ldr r10, [fp, #-8]
	ldr r9, =-2147483648
	ldr r8, =2
	sdiv r7, r9, r8
	ldr r9, =-2147483647
	ldr r8, =2
	sdiv r6, r9, r8
	mov r2, r6
	mov r1, r7
	mov r0, r10
	bl  get_ans_se
	mov r10, r0
	str r10, [fp, #-8]
	ldr r10, [fp, #-8]
	ldr r9, =-2147483647
	sub r8, r9, #1
	ldr r9, =-2147483648
	mov r2, r8
	mov r1, r9
	mov r0, r10
	bl  get_ans_se
	mov r10, r0
	str r10, [fp, #-8]
	ldr r10, [fp, #-8]
	ldr r9, =2147483646
	add r8, r9, #1
	ldr r9, =-2147483648
	mov r2, r8
	mov r1, r9
	mov r0, r10
	bl  get_ans_se
	mov r10, r0
	str r10, [fp, #-8]
	ldr r10, =0
	ldr r9, =-2147483647
	ldr r8, =2147483647
	mov r2, r8
	mov r1, r9
	mov r0, r10
	bl  get_ans_se
	mov r10, r0
	str r10, [fp, #-4]
	ldr r10, [fp, #-4]
	ldr r9, =-2147483647
	ldr r8, =2147483646
	mov r2, r8
	mov r1, r9
	mov r0, r10
	bl  get_ans_se
	mov r10, r0
	str r10, [fp, #-4]
	ldr r10, [fp, #-4]
	ldr r9, =2147483647
	ldr r8, =2147483646
	mov r2, r8
	mov r1, r9
	mov r0, r10
	bl  get_ans_se
	mov r10, r0
	str r10, [fp, #-4]
	ldr r10, [fp, #-4]
	ldr r9, =-2147483648
	ldr r8, =2
	sdiv r7, r9, r8
	ldr r9, =-2147483648
	ldr r8, =2
	sdiv r6, r9, r8
	mov r2, r6
	mov r1, r7
	mov r0, r10
	bl  get_ans_se
	mov r10, r0
	str r10, [fp, #-4]
	ldr r10, [fp, #-16]
	ldr r9, [fp, #-12]
	add r8, r10, r9
	ldr r10, [fp, #-8]
	add r9, r8, r10
	ldr r10, [fp, #-4]
	add r8, r9, r10
	mov r0, r8
	b .Lmain_END
	b .F0
.LTORG
addr_s_0:
	.word s
.F0:
.Lmain_END:
	add sp, sp, #36
	pop {r6, r7, r8, r9, r10, fp, lr}
	bx  lr

addr_s_1:
	.word s
