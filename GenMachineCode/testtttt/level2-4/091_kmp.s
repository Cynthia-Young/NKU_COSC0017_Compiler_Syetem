	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm
	.text
	.global get_next
	.type get_next , %function
get_next:
	push {r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L29:
	str r0, [fp, #-16]
	str r1, [fp, #-12]
	ldr r10, [fp, #-12]
	ldr r9, =0
	ldr r8, =4
	mul r7, r9, r8
	add r9, r7, r10
	ldr r10, =-1
	str r10, [r9]
	ldr r10, =0
	str r10, [fp, #-8]
	ldr r10, =-1
	str r10, [fp, #-4]
	b .L37
.L37:
	ldr r10, [fp, #-8]
	ldr r9, [fp, #-16]
	ldr r8, =4
	mul r7, r10, r8
	add r10, r7, r9
	ldr r9, [r10]
	ldr r10, =0
	cmp r10, r9
	movne r10, #1
	moveq r10, #0
	bne .L38
	b .L46
.L38:
	ldr r10, [fp, #-4]
	ldr r9, =-1
	cmp r10, r9
	moveq r10, #1
	movne r10, #0
	beq .L48
	b .L54
.L39:
	b .Lget_next_END
.L45:
.L46:
	b .L39
.L47:
.L48:
	ldr r10, [fp, #-4]
	add r9, r10, #1
	str r9, [fp, #-4]
	ldr r10, [fp, #-8]
	add r9, r10, #1
	str r9, [fp, #-8]
	ldr r10, [fp, #-4]
	ldr r9, [fp, #-8]
	ldr r8, [fp, #-12]
	ldr r7, =4
	mul r6, r9, r7
	add r9, r6, r8
	str r10, [r9]
	b .L49
.L49:
	b .L37
.L50:
	ldr r10, [fp, #-4]
	ldr r9, [fp, #-12]
	ldr r8, =4
	mul r7, r10, r8
	add r10, r7, r9
	ldr r9, [r10]
	str r9, [fp, #-4]
	b .L49
.L51:
	ldr r10, [fp, #-8]
	ldr r9, [fp, #-16]
	ldr r8, =4
	mul r7, r10, r8
	add r10, r7, r9
	ldr r9, [r10]
	ldr r10, [fp, #-4]
	ldr r8, [fp, #-16]
	ldr r7, =4
	mul r6, r10, r7
	add r10, r6, r8
	ldr r8, [r10]
	cmp r9, r8
	moveq r10, #1
	movne r10, #0
	beq .L48
	b .L67
.L53:
.L54:
	b .L51
.L55:
.L66:
.L67:
	b .L50
.L68:
.Lget_next_END:
	add sp, sp, #16
	pop {r6, r7, r8, r9, r10, fp, lr}
	bx  lr

	.global KMP
	.type KMP , %function
KMP:
	push {r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #16400
.L81:
	str r0, [fp, #-16400]
	str r1, [fp, #-16396]
	ldr r10, [fp, #-16400]
	ldr r9, =0
	add r8, r9, r10
	ldr r10, =0
	add r9, r10, #-16392
	add r10, fp, r9
	mov r1, r10
	mov r0, r8
	bl  get_next
	ldr r10, =0
	str r10, [fp, #-8]
	ldr r10, =0
	str r10, [fp, #-4]
	b .L92
.L92:
	ldr r10, [fp, #-4]
	ldr r9, [fp, #-16396]
	ldr r8, =4
	mul r7, r10, r8
	add r10, r7, r9
	ldr r9, [r10]
	ldr r10, =0
	cmp r10, r9
	movne r10, #1
	moveq r10, #0
	bne .L93
	b .L101
.L93:
	ldr r10, [fp, #-8]
	ldr r9, [fp, #-16400]
	ldr r8, =4
	mul r7, r10, r8
	add r10, r7, r9
	ldr r9, [r10]
	ldr r10, [fp, #-4]
	ldr r8, [fp, #-16396]
	ldr r7, =4
	mul r6, r10, r7
	add r10, r6, r8
	ldr r8, [r10]
	cmp r9, r8
	moveq r10, #1
	movne r10, #0
	beq .L103
	b .L117
.L94:
	ldr r10, =-1
	mov r0, r10
	b .LKMP_END
.L100:
.L101:
	b .L94
.L102:
.L103:
	ldr r10, [fp, #-8]
	add r9, r10, #1
	str r9, [fp, #-8]
	ldr r10, [fp, #-4]
	add r9, r10, #1
	str r9, [fp, #-4]
	ldr r10, [fp, #-8]
	ldr r9, [fp, #-16400]
	ldr r8, =4
	mul r7, r10, r8
	add r10, r7, r9
	ldr r9, [r10]
	ldr r10, =0
	cmp r10, r9
	moveq r10, #1
	movne r10, #0
	beq .L121
	b .L129
.L104:
	b .L92
.L105:
	ldr r10, [fp, #-8]
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-16392
	add r9, fp, r10
	ldr r10, [r9]
	str r10, [fp, #-8]
	ldr r10, [fp, #-8]
	ldr r9, =-1
	cmp r10, r9
	moveq r10, #1
	movne r10, #0
	beq .L136
	b .L140
.L116:
.L117:
	b .L105
.L118:
.L121:
	ldr r10, [fp, #-4]
	mov r0, r10
	b .LKMP_END
.L122:
	b .L104
.L128:
.L129:
	b .L122
.L130:
.L136:
	ldr r10, [fp, #-8]
	add r9, r10, #1
	str r9, [fp, #-8]
	ldr r10, [fp, #-4]
	add r9, r10, #1
	str r9, [fp, #-4]
	b .L137
.L137:
	b .L104
.L139:
.L140:
	b .L137
.L141:
.LKMP_END:
	add sp, sp, #16400
	pop {r6, r7, r8, r9, r10, fp, lr}
	bx  lr

	.global read_str
	.type read_str , %function
read_str:
	push {r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L144:
	str r0, [fp, #-8]
	ldr r10, =0
	str r10, [fp, #-4]
	b .L147
.L147:
	ldr r10, =0
	ldr r9, =1
	cmp r10, r9
	movne r10, #1
	moveq r10, #0
	bne .L148
	b .L151
.L148:
	bl  getch
	mov r10, r0
	ldr r9, [fp, #-4]
	ldr r8, [fp, #-8]
	ldr r7, =4
	mul r6, r9, r7
	add r9, r6, r8
	str r10, [r9]
	ldr r10, [fp, #-4]
	ldr r9, [fp, #-8]
	ldr r8, =4
	mul r7, r10, r8
	add r10, r7, r9
	ldr r9, [r10]
	ldr r10, =10
	cmp r9, r10
	moveq r10, #1
	movne r10, #0
	beq .L157
	b .L165
.L149:
	ldr r10, [fp, #-4]
	ldr r9, [fp, #-8]
	ldr r8, =4
	mul r7, r10, r8
	add r10, r7, r9
	ldr r9, =0
	str r9, [r10]
	ldr r10, [fp, #-4]
	mov r0, r10
	b .Lread_str_END
.L150:
.L151:
	b .L149
.L152:
.L157:
	b .L149
.L158:
	ldr r10, [fp, #-4]
	add r9, r10, #1
	str r9, [fp, #-4]
	b .L147
.L164:
.L165:
	b .L158
.L166:
.L167:
	b .L158
.Lread_str_END:
	add sp, sp, #8
	pop {r6, r7, r8, r9, r10, fp, lr}
	bx  lr

	.global main
	.type main , %function
main:
	push {r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #32768
.L174:
	ldr r10, =0
	add r9, r10, #-32768
	add r10, fp, r9
	mov r0, r10
	bl  read_str
	mov r10, r0
	ldr r10, =0
	add r9, r10, #-16384
	add r10, fp, r9
	mov r0, r10
	bl  read_str
	mov r10, r0
	ldr r10, =0
	add r9, r10, #-32768
	ldr r10, =0
	add r8, r10, #-16384
	add r10, fp, r8
	mov r1, r10
	add r10, fp, r9
	mov r0, r10
	bl  KMP
	mov r10, r0
	mov r0, r10
	bl  putint
	ldr r10, =10
	mov r0, r10
	bl  putch
	ldr r10, =0
	mov r0, r10
	b .Lmain_END
.Lmain_END:
	add sp, sp, #32768
	pop {r8, r9, r10, fp, lr}
	bx  lr

