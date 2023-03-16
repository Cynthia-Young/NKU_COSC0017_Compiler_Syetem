	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm
	.data
	.comm	buf,800,4
	.text
	.global merge_sort
	.type merge_sort , %function
merge_sort:
	push {r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #24
.L24:
	str r0, [fp, #-24]
	str r1, [fp, #-20]
	ldr r10, [fp, #-24]
	add r9, r10, #1
	ldr r10, [fp, #-20]
	cmp r9, r10
	movge r10, #1
	movlt r10, #0
	bge .L27
	b .L32
.L27:
	b .Lmerge_sort_END
.L32:
	b .L28
.L28:
	ldr r10, [fp, #-24]
	ldr r9, [fp, #-20]
	add r8, r10, r9
	ldr r10, =2
	sdiv r9, r8, r10
	str r9, [fp, #-16]
	ldr r10, [fp, #-24]
	ldr r9, [fp, #-16]
	mov r1, r9
	mov r0, r10
	bl  merge_sort
	ldr r10, [fp, #-16]
	ldr r9, [fp, #-20]
	mov r1, r9
	mov r0, r10
	bl  merge_sort
	ldr r10, [fp, #-24]
	str r10, [fp, #-12]
	ldr r10, [fp, #-16]
	str r10, [fp, #-8]
	ldr r10, [fp, #-24]
	str r10, [fp, #-4]
	b .L47
.L47:
	ldr r10, [fp, #-12]
	ldr r9, [fp, #-16]
	cmp r10, r9
	movlt r10, #1
	movge r10, #0
	blt .L50
	b .L54
.L50:
	ldr r10, [fp, #-8]
	ldr r9, [fp, #-20]
	cmp r10, r9
	movlt r10, #1
	movge r10, #0
	blt .L48
	b .L59
.L54:
	b .L49
.L48:
	ldr r10, [fp, #-12]
	ldr r9, =0
	ldr r8, =100
	mul r7, r9, r8
	add r9, r7, r10
	ldr r10, =4
	mul r8, r9, r10
	ldr r10, addr_buf_0
	add r9, r8, r10
	ldr r10, [r9]
	ldr r9, [fp, #-8]
	ldr r8, =0
	ldr r7, =100
	mul r6, r8, r7
	add r8, r6, r9
	ldr r9, =4
	mul r7, r8, r9
	ldr r9, addr_buf_0
	add r8, r7, r9
	ldr r9, [r8]
	cmp r10, r9
	movlt r10, #1
	movge r10, #0
	blt .L61
	b .L79
.L59:
	b .L49
.L49:
	b .L110
.L61:
	ldr r10, [fp, #-12]
	ldr r9, =0
	ldr r8, =100
	mul r7, r9, r8
	add r9, r7, r10
	ldr r10, =4
	mul r8, r9, r10
	ldr r10, addr_buf_0
	add r9, r8, r10
	ldr r10, [r9]
	ldr r9, [fp, #-4]
	ldr r8, =1
	ldr r7, =100
	mul r6, r8, r7
	add r8, r6, r9
	ldr r9, =4
	mul r7, r8, r9
	ldr r9, addr_buf_0
	add r8, r7, r9
	str r10, [r8]
	ldr r10, [fp, #-12]
	add r9, r10, #1
	str r9, [fp, #-12]
	b .L62
.L79:
	b .L63
.L110:
	ldr r10, [fp, #-12]
	ldr r9, [fp, #-16]
	cmp r10, r9
	movlt r10, #1
	movge r10, #0
	blt .L111
	b .L116
.L62:
	ldr r10, [fp, #-4]
	add r9, r10, #1
	str r9, [fp, #-4]
	b .L47
.L63:
	ldr r10, [fp, #-8]
	ldr r9, =0
	ldr r8, =100
	mul r7, r9, r8
	add r9, r7, r10
	ldr r10, =4
	mul r8, r9, r10
	ldr r10, addr_buf_0
	add r9, r8, r10
	ldr r10, [r9]
	ldr r9, [fp, #-4]
	ldr r8, =1
	ldr r7, =100
	mul r6, r8, r7
	add r8, r6, r9
	ldr r9, =4
	mul r7, r8, r9
	ldr r9, addr_buf_0
	add r8, r7, r9
	str r10, [r8]
	ldr r10, [fp, #-8]
	add r9, r10, #1
	str r9, [fp, #-8]
	b .L62
.L111:
	ldr r10, [fp, #-12]
	ldr r9, =0
	ldr r8, =100
	mul r7, r9, r8
	add r9, r7, r10
	ldr r10, =4
	mul r8, r9, r10
	ldr r10, addr_buf_0
	add r9, r8, r10
	ldr r10, [r9]
	ldr r9, [fp, #-4]
	ldr r8, =1
	ldr r7, =100
	mul r6, r8, r7
	add r8, r6, r9
	ldr r9, =4
	mul r7, r8, r9
	ldr r9, addr_buf_0
	add r8, r7, r9
	str r10, [r8]
	ldr r10, [fp, #-12]
	add r9, r10, #1
	str r9, [fp, #-12]
	ldr r10, [fp, #-4]
	add r9, r10, #1
	str r9, [fp, #-4]
	b .L110
	b .F0
.LTORG
addr_buf_0:
	.word buf
.F0:
.L116:
	b .L112
.L112:
	b .L133
.L133:
	ldr r10, [fp, #-8]
	ldr r9, [fp, #-20]
	cmp r10, r9
	movlt r10, #1
	movge r10, #0
	blt .L134
	b .L139
.L134:
	ldr r10, [fp, #-8]
	ldr r9, =0
	ldr r8, =100
	mul r7, r9, r8
	add r9, r7, r10
	ldr r10, =4
	mul r8, r9, r10
	ldr r10, addr_buf_1
	add r9, r8, r10
	ldr r10, [r9]
	ldr r9, [fp, #-4]
	ldr r8, =1
	ldr r7, =100
	mul r6, r8, r7
	add r8, r6, r9
	ldr r9, =4
	mul r7, r8, r9
	ldr r9, addr_buf_1
	add r8, r7, r9
	str r10, [r8]
	ldr r10, [fp, #-8]
	add r9, r10, #1
	str r9, [fp, #-8]
	ldr r10, [fp, #-4]
	add r9, r10, #1
	str r9, [fp, #-4]
	b .L133
.L139:
	b .L135
.L135:
	b .L156
.L156:
	ldr r10, [fp, #-24]
	ldr r9, [fp, #-20]
	cmp r10, r9
	movlt r10, #1
	movge r10, #0
	blt .L157
	b .L162
.L157:
	ldr r10, [fp, #-24]
	ldr r9, =1
	ldr r8, =100
	mul r7, r9, r8
	add r9, r7, r10
	ldr r10, =4
	mul r8, r9, r10
	ldr r10, addr_buf_1
	add r9, r8, r10
	ldr r10, [r9]
	ldr r9, [fp, #-24]
	ldr r8, =0
	ldr r7, =100
	mul r6, r8, r7
	add r8, r6, r9
	ldr r9, =4
	mul r7, r8, r9
	ldr r9, addr_buf_1
	add r8, r7, r9
	str r10, [r8]
	ldr r10, [fp, #-24]
	add r9, r10, #1
	str r9, [fp, #-24]
	b .L156
.L162:
	b .L158
.L158:
.Lmerge_sort_END:
	add sp, sp, #24
	pop {r6, r7, r8, r9, r10, fp, lr}
	bx  lr

	.global main
	.type main , %function
main:
	push {r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L178:
	ldr r10, =0
	ldr r9, =100
	mul r8, r10, r9
	ldr r10, =4
	mul r9, r8, r10
	ldr r10, addr_buf_1
	add r8, r9, r10
	mov r0, r8
	bl  getarray
	mov r10, r0
	str r10, [fp, #-4]
	ldr r10, [fp, #-4]
	ldr r9, =0
	mov r1, r10
	mov r0, r9
	bl  merge_sort
	ldr r10, [fp, #-4]
	ldr r9, =0
	ldr r8, =100
	mul r7, r9, r8
	ldr r9, =4
	mul r8, r7, r9
	ldr r9, addr_buf_1
	add r7, r8, r9
	mov r1, r7
	mov r0, r10
	bl  putarray
	ldr r10, =0
	mov r0, r10
	b .Lmain_END
.Lmain_END:
	add sp, sp, #4
	pop {r7, r8, r9, r10, fp, lr}
	bx  lr

addr_buf_1:
	.word buf
