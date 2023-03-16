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
	.global swap
	.type swap , %function
swap:
	push {r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L31:
	str r0, [fp, #-16]
	str r1, [fp, #-12]
	str r2, [fp, #-8]
	ldr r10, [fp, #-12]
	ldr r9, [fp, #-16]
	ldr r8, =4
	mul r7, r10, r8
	add r10, r7, r9
	ldr r9, [r10]
	str r9, [fp, #-4]
	ldr r10, [fp, #-8]
	ldr r9, [fp, #-16]
	ldr r8, =4
	mul r7, r10, r8
	add r10, r7, r9
	ldr r9, [r10]
	ldr r10, [fp, #-12]
	ldr r8, [fp, #-16]
	ldr r7, =4
	mul r6, r10, r7
	add r10, r6, r8
	str r9, [r10]
	ldr r10, [fp, #-4]
	ldr r9, [fp, #-8]
	ldr r8, [fp, #-16]
	ldr r7, =4
	mul r6, r9, r7
	add r9, r6, r8
	str r10, [r9]
	ldr r10, =0
	mov r0, r10
	b .Lswap_END
.Lswap_END:
	add sp, sp, #16
	pop {r6, r7, r8, r9, r10, fp, lr}
	bx  lr

	.global heap_ajust
	.type heap_ajust , %function
heap_ajust:
	push {r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #20
.L55:
	str r0, [fp, #-20]
	str r1, [fp, #-16]
	str r2, [fp, #-12]
	ldr r10, [fp, #-16]
	str r10, [fp, #-8]
	ldr r10, [fp, #-8]
	ldr r9, =2
	mul r8, r10, r9
	add r10, r8, #1
	str r10, [fp, #-4]
	b .L63
.L63:
	ldr r10, [fp, #-4]
	ldr r9, [fp, #-12]
	add r8, r9, #1
	cmp r10, r8
	movlt r10, #1
	movge r10, #0
	blt .L64
	b .L69
.L64:
	ldr r10, [fp, #-4]
	ldr r9, [fp, #-12]
	cmp r10, r9
	movlt r10, #1
	movge r10, #0
	blt .L73
	b .L77
.L69:
	b .L65
.L73:
	ldr r10, [fp, #-4]
	ldr r9, [fp, #-20]
	ldr r8, =4
	mul r7, r10, r8
	add r10, r7, r9
	ldr r9, [r10]
	ldr r10, [fp, #-4]
	add r8, r10, #1
	ldr r10, [fp, #-20]
	ldr r7, =4
	mul r6, r8, r7
	add r8, r6, r10
	ldr r10, [r8]
	cmp r9, r10
	movlt r10, #1
	movge r10, #0
	blt .L71
	b .L90
.L77:
	b .L72
.L65:
	ldr r10, =0
	mov r0, r10
	b .Lheap_ajust_END
.L71:
	ldr r10, [fp, #-4]
	add r9, r10, #1
	str r9, [fp, #-4]
	b .L72
.L90:
	b .L72
.L72:
	ldr r10, [fp, #-8]
	ldr r9, [fp, #-20]
	ldr r8, =4
	mul r7, r10, r8
	add r10, r7, r9
	ldr r9, [r10]
	ldr r10, [fp, #-4]
	ldr r8, [fp, #-20]
	ldr r7, =4
	mul r6, r10, r7
	add r10, r6, r8
	ldr r8, [r10]
	cmp r9, r8
	movgt r10, #1
	movle r10, #0
	bgt .L93
	b .L107
.L93:
	ldr r10, =0
	mov r0, r10
	b .Lheap_ajust_END
.L107:
	b .L95
.L95:
	ldr r10, [fp, #-20]
	ldr r9, =0
	add r8, r9, r10
	ldr r10, [fp, #-8]
	ldr r9, [fp, #-4]
	mov r2, r9
	mov r1, r10
	mov r0, r8
	bl  swap
	mov r10, r0
	str r10, [fp, #-8]
	ldr r10, [fp, #-4]
	str r10, [fp, #-8]
	ldr r10, [fp, #-8]
	ldr r9, =2
	mul r8, r10, r9
	add r10, r8, #1
	str r10, [fp, #-4]
	b .L94
.L94:
	b .L63
.Lheap_ajust_END:
	add sp, sp, #20
	pop {r6, r7, r8, r9, r10, fp, lr}
	bx  lr

	.global heap_sort
	.type heap_sort , %function
heap_sort:
	push {r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #20
.L116:
	str r0, [fp, #-20]
	str r1, [fp, #-16]
	ldr r10, [fp, #-16]
	ldr r9, =2
	sdiv r8, r10, r9
	sub r10, r8, #1
	str r10, [fp, #-12]
	b .L122
.L122:
	ldr r10, [fp, #-12]
	ldr r9, =-1
	cmp r10, r9
	movgt r10, #1
	movle r10, #0
	bgt .L123
	b .L127
.L123:
	ldr r10, [fp, #-16]
	sub r9, r10, #1
	str r9, [fp, #-8]
	ldr r10, [fp, #-20]
	ldr r9, =0
	add r8, r9, r10
	ldr r10, [fp, #-12]
	ldr r9, [fp, #-8]
	mov r2, r9
	mov r1, r10
	mov r0, r8
	bl  heap_ajust
	mov r10, r0
	str r10, [fp, #-8]
	ldr r10, [fp, #-12]
	sub r9, r10, #1
	str r9, [fp, #-12]
	b .L122
.L127:
	b .L124
.L124:
	ldr r10, [fp, #-16]
	sub r9, r10, #1
	str r9, [fp, #-12]
	b .L137
.L137:
	ldr r10, [fp, #-12]
	ldr r9, =0
	cmp r10, r9
	movgt r10, #1
	movle r10, #0
	bgt .L138
	b .L142
.L138:
	ldr r10, =0
	str r10, [fp, #-4]
	ldr r10, [fp, #-20]
	ldr r9, =0
	add r8, r9, r10
	ldr r10, [fp, #-4]
	ldr r9, [fp, #-12]
	mov r2, r9
	mov r1, r10
	mov r0, r8
	bl  swap
	mov r10, r0
	str r10, [fp, #-8]
	ldr r10, [fp, #-12]
	sub r9, r10, #1
	str r9, [fp, #-8]
	ldr r10, [fp, #-20]
	ldr r9, =0
	add r8, r9, r10
	ldr r10, [fp, #-4]
	ldr r9, [fp, #-8]
	mov r2, r9
	mov r1, r10
	mov r0, r8
	bl  heap_ajust
	mov r10, r0
	str r10, [fp, #-8]
	ldr r10, [fp, #-12]
	sub r9, r10, #1
	str r9, [fp, #-12]
	b .L137
.L142:
	b .L139
.L139:
	ldr r10, =0
	mov r0, r10
	b .Lheap_sort_END
.Lheap_sort_END:
	add sp, sp, #20
	pop {r8, r9, r10, fp, lr}
	bx  lr

	.global main
	.type main , %function
main:
	push {r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #48
.L157:
	ldr r10, =10
	ldr r9, addr_n_0
	str r10, [r9]
	ldr r10, =0
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-48
	ldr r9, =4
	add r8, fp, r10
	str r9, [r8]
	ldr r10, =1
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-48
	ldr r9, =3
	add r8, fp, r10
	str r9, [r8]
	ldr r10, =2
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-48
	ldr r9, =9
	add r8, fp, r10
	str r9, [r8]
	ldr r10, =3
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-48
	ldr r9, =2
	add r8, fp, r10
	str r9, [r8]
	ldr r10, =4
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-48
	ldr r9, =0
	add r8, fp, r10
	str r9, [r8]
	ldr r10, =5
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-48
	ldr r9, =1
	add r8, fp, r10
	str r9, [r8]
	ldr r10, =6
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-48
	ldr r9, =6
	add r8, fp, r10
	str r9, [r8]
	ldr r10, =7
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-48
	ldr r9, =5
	add r8, fp, r10
	str r9, [r8]
	ldr r10, =8
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-48
	ldr r9, =7
	add r8, fp, r10
	str r9, [r8]
	ldr r10, =9
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-48
	ldr r9, =8
	add r8, fp, r10
	str r9, [r8]
	ldr r10, =0
	str r10, [fp, #-8]
	ldr r10, =0
	add r9, r10, #-48
	ldr r10, addr_n_0
	ldr r8, [r10]
	mov r1, r8
	add r10, fp, r9
	mov r0, r10
	bl  heap_sort
	mov r10, r0
	str r10, [fp, #-8]
	b .L183
.L183:
	ldr r10, [fp, #-8]
	ldr r9, addr_n_0
	ldr r8, [r9]
	cmp r10, r8
	movlt r10, #1
	movge r10, #0
	blt .L184
	b .L189
.L184:
	ldr r10, [fp, #-8]
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-48
	add r9, fp, r10
	ldr r10, [r9]
	str r10, [fp, #-4]
	ldr r10, [fp, #-4]
	mov r0, r10
	bl  putint
	ldr r10, =10
	str r10, [fp, #-4]
	ldr r10, [fp, #-4]
	mov r0, r10
	bl  putch
	ldr r10, [fp, #-8]
	add r9, r10, #1
	str r9, [fp, #-8]
	b .L183
.L189:
	b .L185
.L185:
	ldr r10, =0
	mov r0, r10
	b .Lmain_END
.Lmain_END:
	add sp, sp, #48
	pop {r8, r9, r10, fp, lr}
	bx  lr

addr_n_0:
	.word n
