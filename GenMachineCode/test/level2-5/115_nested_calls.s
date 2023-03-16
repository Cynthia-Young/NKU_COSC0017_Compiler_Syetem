	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm
	.text
	.global func1
	.type func1 , %function
func1:
	push {r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #12
.L58:
	str r0, [fp, #-12]
	str r1, [fp, #-8]
	str r2, [fp, #-4]
	ldr r10, [fp, #-4]
	ldr r9, =0
	cmp r10, r9
	moveq r10, #1
	movne r10, #0
	beq .L62
	b .L67
.L62:
	ldr r10, [fp, #-12]
	ldr r9, [fp, #-8]
	mul r8, r10, r9
	mov r0, r8
	b .Lfunc1_END
.L67:
	b .L64
.L64:
	ldr r10, [fp, #-12]
	ldr r9, [fp, #-8]
	ldr r8, [fp, #-4]
	sub r7, r9, r8
	ldr r9, =0
	mov r2, r9
	mov r1, r7
	mov r0, r10
	bl  func1
	mov r10, r0
	mov r0, r10
	b .Lfunc1_END
.Lfunc1_END:
	add sp, sp, #12
	pop {r7, r8, r9, r10, fp, lr}
	bx  lr

	.global func2
	.type func2 , %function
func2:
	push {r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L75:
	str r0, [fp, #-8]
	str r1, [fp, #-4]
	ldr r10, [fp, #-4]
	ldr r9, =0
	cmp r9, r10
	movne r10, #1
	moveq r10, #0
	bne .L78
	b .L83
.L78:
	ldr r10, [fp, #-8]
	ldr r9, [fp, #-4]
	sdiv r8, r10, r9
	mul r9, r8, r9
	sub r8, r10, r9
	ldr r10, =0
	mov r1, r10
	mov r0, r8
	bl  func2
	mov r10, r0
	mov r0, r10
	b .Lfunc2_END
.L83:
	b .L80
.L80:
	ldr r10, [fp, #-8]
	mov r0, r10
	b .Lfunc2_END
.Lfunc2_END:
	add sp, sp, #8
	pop {r8, r9, r10, fp, lr}
	bx  lr

	.global func3
	.type func3 , %function
func3:
	push {r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L89:
	str r0, [fp, #-8]
	str r1, [fp, #-4]
	ldr r10, [fp, #-4]
	ldr r9, =0
	cmp r10, r9
	moveq r10, #1
	movne r10, #0
	beq .L92
	b .L97
.L92:
	ldr r10, [fp, #-8]
	add r9, r10, #1
	mov r0, r9
	b .Lfunc3_END
.L97:
	b .L94
.L94:
	ldr r10, [fp, #-8]
	ldr r9, [fp, #-4]
	add r8, r10, r9
	ldr r10, =0
	mov r1, r10
	mov r0, r8
	bl  func3
	mov r10, r0
	mov r0, r10
	b .Lfunc3_END
.Lfunc3_END:
	add sp, sp, #8
	pop {r8, r9, r10, fp, lr}
	bx  lr

	.global func4
	.type func4 , %function
func4:
	push {r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #12
.L103:
	str r0, [fp, #-12]
	str r1, [fp, #-8]
	str r2, [fp, #-4]
	ldr r10, [fp, #-12]
	ldr r9, =0
	cmp r9, r10
	movne r10, #1
	moveq r10, #0
	bne .L107
	b .L112
.L107:
	ldr r10, [fp, #-8]
	mov r0, r10
	b .Lfunc4_END
.L112:
	b .L109
.L109:
	ldr r10, [fp, #-4]
	mov r0, r10
	b .Lfunc4_END
.Lfunc4_END:
	add sp, sp, #12
	pop {r9, r10, fp, lr}
	bx  lr

	.global func5
	.type func5 , %function
func5:
	push {r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L116:
	str r0, [fp, #-4]
	ldr r10, [fp, #-4]
	ldr r9, =0
	sub r8, r9, r10
	mov r0, r8
	b .Lfunc5_END
.Lfunc5_END:
	add sp, sp, #4
	pop {r8, r9, r10, fp, lr}
	bx  lr

	.global func6
	.type func6 , %function
func6:
	push {r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L119:
	str r0, [fp, #-8]
	str r1, [fp, #-4]
	ldr r10, [fp, #-8]
	ldr r9, =0
	cmp r9, r10
	movne r10, #1
	moveq r10, #0
	bne .L125
	b .L128
.L125:
	ldr r10, [fp, #-4]
	ldr r9, =0
	cmp r9, r10
	movne r10, #1
	moveq r10, #0
	bne .L122
	b .L132
.L128:
	b .L124
.L122:
	ldr r10, =1
	mov r0, r10
	b .Lfunc6_END
.L132:
	b .L124
.L124:
	ldr r10, =0
	mov r0, r10
	b .Lfunc6_END
.Lfunc6_END:
	add sp, sp, #8
	pop {r9, r10, fp, lr}
	bx  lr

	.global func7
	.type func7 , %function
func7:
	push {r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L134:
	str r0, [fp, #-4]
	ldr r10, [fp, #-4]
	ldr r9, =0
	cmp r9, r10
	moveq r10, #1
	movne r10, #0
	beq .L136
	b .L141
.L136:
	ldr r10, =1
	mov r0, r10
	b .Lfunc7_END
.L141:
	b .L138
.L138:
	ldr r10, =0
	mov r0, r10
	b .Lfunc7_END
.Lfunc7_END:
	add sp, sp, #4
	pop {r9, r10, fp, lr}
	bx  lr

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #68
.L143:
	bl  getint
	mov r10, r0
	str r10, [fp, #-64]
	bl  getint
	mov r10, r0
	str r10, [fp, #-60]
	bl  getint
	mov r10, r0
	str r10, [fp, #-56]
	bl  getint
	mov r10, r0
	str r10, [fp, #-52]
	ldr r10, =0
	str r10, [fp, #-8]
	b .L150
.L150:
	ldr r10, [fp, #-8]
	ldr r9, =10
	cmp r10, r9
	movlt r10, #1
	movge r10, #0
	blt .L151
	b .L155
.L151:
	bl  getint
	mov r10, r0
	ldr r9, [fp, #-8]
	ldr r8, =4
	mul r7, r9, r8
	add r9, r7, #-48
	add r8, fp, r9
	str r10, [r8]
	ldr r10, [fp, #-8]
	add r9, r10, #1
	str r9, [fp, #-8]
	b .L150
.L155:
	b .L152
.L152:
	ldr r10, [fp, #-64]
	mov r0, r10
	bl  func7
	mov r10, r0
	ldr r9, [fp, #-60]
	mov r0, r9
	bl  func5
	mov r9, r0
	mov r1, r9
	mov r0, r10
	bl  func6
	mov r10, r0
	ldr r9, [fp, #-56]
	mov r1, r9
	mov r0, r10
	bl  func2
	mov r10, r0
	ldr r9, [fp, #-52]
	mov r1, r9
	mov r0, r10
	bl  func3
	mov r10, r0
	mov r0, r10
	bl  func5
	mov r10, r0
	ldr r10, =0
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-48
	add r9, fp, r10
	ldr r10, [r9]
	ldr r9, =1
	ldr r8, =4
	mul r7, r9, r8
	add r9, r7, #-48
	add r8, fp, r9
	ldr r9, [r8]
	mov r0, r9
	bl  func5
	mov r9, r0
	ldr r8, =2
	ldr r7, =4
	mul r6, r8, r7
	add r8, r6, #-48
	add r8, fp, r8
	ldr r7, [r8]
	ldr r8, =3
	ldr r6, =4
	mul r5, r8, r6
	add r8, r5, #-48
	add r6, fp, r8
	ldr r8, [r6]
	mov r0, r8
	bl  func7
	mov r8, r0
	mov r1, r8
	mov r0, r7
	bl  func6
	mov r8, r0
	ldr r7, =4
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, #-48
	add r6, fp, r7
	ldr r7, [r6]
	ldr r6, =5
	ldr r5, =4
	mul r4, r6, r5
	add r6, r4, #-48
	add r5, fp, r6
	ldr r6, [r5]
	mov r0, r6
	bl  func7
	mov r6, r0
	mov r1, r6
	mov r0, r7
	bl  func2
	mov r7, r0
	mov r2, r7
	mov r1, r8
	mov r0, r9
	bl  func4
	mov r9, r0
	ldr r8, =6
	ldr r7, =4
	mul r6, r8, r7
	add r8, r6, #-48
	add r7, fp, r8
	ldr r8, [r7]
	mov r1, r8
	mov r0, r9
	bl  func3
	mov r9, r0
	ldr r8, =7
	ldr r7, =4
	mul r6, r8, r7
	add r8, r6, #-48
	add r7, fp, r8
	ldr r8, [r7]
	mov r1, r8
	mov r0, r9
	bl  func2
	mov r9, r0
	ldr r8, =8
	ldr r7, =4
	mul r6, r8, r7
	add r8, r6, #-48
	add r7, fp, r8
	ldr r8, [r7]
	ldr r7, =9
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, #-48
	add r6, fp, r7
	ldr r7, [r6]
	mov r0, r7
	bl  func7
	mov r7, r0
	mov r1, r7
	mov r0, r8
	bl  func3
	mov r8, r0
	ldr r7, [fp, #-64]
	mov r2, r7
	mov r1, r8
	mov r0, r9
	bl  func1
	mov r9, r0
	mov r2, r9
	mov r1, r10
	mov r0, r10
	bl  func4
	mov r10, r0
	ldr r9, [fp, #-60]
	ldr r8, [fp, #-56]
	mov r0, r8
	bl  func7
	mov r8, r0
	ldr r7, [fp, #-52]
	mov r1, r7
	mov r0, r8
	bl  func3
	mov r8, r0
	mov r1, r8
	mov r0, r9
	bl  func2
	mov r9, r0
	mov r1, r9
	mov r0, r10
	bl  func3
	mov r10, r0
	ldr r9, =0
	ldr r8, =4
	mul r7, r9, r8
	add r9, r7, #-48
	add r8, fp, r9
	ldr r9, [r8]
	ldr r8, =1
	ldr r7, =4
	mul r6, r8, r7
	add r8, r6, #-48
	add r7, fp, r8
	ldr r8, [r7]
	mov r2, r8
	mov r1, r9
	mov r0, r10
	bl  func1
	mov r10, r0
	ldr r9, =2
	ldr r8, =4
	mul r7, r9, r8
	add r9, r7, #-48
	add r8, fp, r9
	ldr r9, [r8]
	mov r1, r9
	mov r0, r10
	bl  func2
	mov r10, r0
	ldr r9, =3
	ldr r8, =4
	mul r7, r9, r8
	add r9, r7, #-48
	add r8, fp, r9
	ldr r9, [r8]
	ldr r8, =4
	ldr r7, =4
	mul r6, r8, r7
	add r8, r6, #-48
	add r7, fp, r8
	ldr r8, [r7]
	ldr r7, =5
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, #-48
	add r6, fp, r7
	ldr r7, [r6]
	mov r0, r7
	bl  func5
	mov r7, r0
	mov r1, r7
	mov r0, r8
	bl  func3
	mov r8, r0
	ldr r7, =6
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, #-48
	add r6, fp, r7
	ldr r7, [r6]
	mov r0, r7
	bl  func5
	mov r7, r0
	mov r1, r7
	mov r0, r8
	bl  func2
	mov r8, r0
	ldr r7, =7
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, #-48
	add r6, fp, r7
	ldr r7, [r6]
	ldr r6, =8
	ldr r5, =4
	mul r4, r6, r5
	add r6, r4, #-48
	add r5, fp, r6
	ldr r6, [r5]
	mov r0, r6
	bl  func7
	mov r6, r0
	mov r2, r6
	mov r1, r7
	mov r0, r8
	bl  func1
	mov r8, r0
	ldr r7, =9
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, #-48
	add r6, fp, r7
	ldr r7, [r6]
	mov r0, r7
	bl  func5
	mov r7, r0
	mov r1, r7
	mov r1, r7
	mov r0, r8
	bl  func2
	mov r8, r0
	ldr r7, [fp, #-64]
	mov r1, r7
	mov r0, r8
	bl  func3
	mov r8, r0
	mov r2, r8
	mov r1, r9
	mov r0, r10
	bl  func1
	mov r10, r0
	str r10, [fp, #-4]
	ldr r10, [fp, #-4]
	mov r0, r10
	b .Lmain_END
	ldr r10, [fp, #68]
	b .F0
.LTORG
.F0:
.Lmain_END:
	add sp, sp, #68
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx  lr

