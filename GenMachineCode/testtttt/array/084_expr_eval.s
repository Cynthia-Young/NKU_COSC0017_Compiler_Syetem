	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm
	.data
	.global last_char
	.align 4
	.size last_char, 4
last_char:
	.word 32
	.global num
	.align 4
	.size num, 4
num:
	.word 0
	.global other
	.align 4
	.size other, 4
other:
	.word 0
	.global cur_token
	.align 4
	.size cur_token, 4
cur_token:
	.word 0
	.text
	.global next_char
	.type next_char , %function
next_char:
	push {r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #0
.L90:
	bl  getch
	mov r10, r0
	ldr r9, addr_last_char_0
	str r10, [r9]
	ldr r10, addr_last_char_0
	ldr r9, [r10]
	mov r0, r9
	b .Lnext_char_END
.Lnext_char_END:
	add sp, sp, #0
	pop {r9, r10, fp, lr}
	bx  lr

	.global is_space
	.type is_space , %function
is_space:
	push {r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L92:
	str r0, [fp, #-4]
	ldr r10, [fp, #-4]
	ldr r9, =32
	cmp r10, r9
	moveq r10, #1
	movne r10, #0
	beq .L94
	b .L100
.L94:
	ldr r10, =1
	mov r0, r10
	b .Lis_space_END
.L100:
	b .L97
.L97:
	ldr r10, [fp, #-4]
	ldr r9, =10
	cmp r10, r9
	moveq r10, #1
	movne r10, #0
	beq .L94
	b .L104
.L104:
	b .L96
.L96:
	ldr r10, =0
	mov r0, r10
	b .Lis_space_END
.Lis_space_END:
	add sp, sp, #4
	pop {r9, r10, fp, lr}
	bx  lr

	.global is_num
	.type is_num , %function
is_num:
	push {r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L106:
	str r0, [fp, #-4]
	ldr r10, [fp, #-4]
	ldr r9, =48
	cmp r10, r9
	movge r10, #1
	movlt r10, #0
	bge .L111
	b .L114
.L111:
	ldr r10, [fp, #-4]
	ldr r9, =57
	cmp r10, r9
	movle r10, #1
	movgt r10, #0
	ble .L108
	b .L118
.L114:
	b .L110
.L108:
	ldr r10, =1
	mov r0, r10
	b .Lis_num_END
.L118:
	b .L110
.L110:
	ldr r10, =0
	mov r0, r10
	b .Lis_num_END
.Lis_num_END:
	add sp, sp, #4
	pop {r9, r10, fp, lr}
	bx  lr

	.global next_token
	.type next_token , %function
next_token:
	push {r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #0
.L120:
	b .L121
.L121:
	ldr r10, addr_last_char_0
	ldr r9, [r10]
	mov r0, r9
	bl  is_space
	mov r10, r0
	ldr r9, =0
	cmp r9, r10
	movne r10, #1
	moveq r10, #0
	bne .L122
	b .L126
.L122:
	bl  next_char
	mov r10, r0
	b .L121
.L126:
	b .L123
.L123:
	ldr r10, addr_last_char_0
	ldr r9, [r10]
	mov r0, r9
	bl  is_num
	mov r10, r0
	ldr r9, =0
	cmp r9, r10
	movne r10, #1
	moveq r10, #0
	bne .L128
	b .L133
.L128:
	ldr r10, addr_last_char_0
	ldr r9, [r10]
	sub r10, r9, #48
	ldr r9, addr_num_0
	str r10, [r9]
	b .L136
.L133:
	b .L130
.L136:
	bl  next_char
	mov r10, r0
	mov r0, r10
	bl  is_num
	mov r10, r0
	ldr r9, =0
	cmp r9, r10
	movne r10, #1
	moveq r10, #0
	bne .L137
	b .L140
.L130:
	ldr r10, addr_last_char_0
	ldr r9, [r10]
	ldr r10, addr_other_0
	str r9, [r10]
	bl  next_char
	mov r10, r0
	ldr r10, =1
	ldr r9, addr_cur_token_0
	str r10, [r9]
	b .L129
.L137:
	ldr r10, addr_num_0
	ldr r9, [r10]
	ldr r10, =10
	mul r8, r9, r10
	ldr r10, addr_last_char_0
	ldr r9, [r10]
	add r10, r8, r9
	sub r9, r10, #48
	ldr r10, addr_num_0
	str r9, [r10]
	b .L136
.L140:
	b .L138
.L129:
	ldr r10, addr_cur_token_0
	ldr r9, [r10]
	mov r0, r9
	b .Lnext_token_END
.L138:
	ldr r10, =0
	ldr r9, addr_cur_token_0
	str r10, [r9]
	b .L129
.Lnext_token_END:
	add sp, sp, #0
	pop {r8, r9, r10, fp, lr}
	bx  lr

	.global panic
	.type panic , %function
panic:
	push {r10, fp, lr}
	mov fp, sp
	sub sp, sp, #0
.L146:
	ldr r10, =112
	mov r0, r10
	bl  putch
	ldr r10, =97
	mov r0, r10
	bl  putch
	ldr r10, =110
	mov r0, r10
	bl  putch
	ldr r10, =105
	mov r0, r10
	bl  putch
	ldr r10, =99
	mov r0, r10
	bl  putch
	ldr r10, =33
	mov r0, r10
	bl  putch
	ldr r10, =10
	mov r0, r10
	bl  putch
	ldr r10, =-1
	mov r0, r10
	b .Lpanic_END
.Lpanic_END:
	add sp, sp, #0
	pop {r10, fp, lr}
	bx  lr

	.global get_op_prec
	.type get_op_prec , %function
get_op_prec:
	push {r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L154:
	str r0, [fp, #-4]
	ldr r10, [fp, #-4]
	ldr r9, =43
	cmp r10, r9
	moveq r10, #1
	movne r10, #0
	beq .L156
	b .L161
.L156:
	ldr r10, =10
	mov r0, r10
	b .Lget_op_prec_END
.L161:
	b .L158
.L158:
	ldr r10, [fp, #-4]
	ldr r9, =45
	cmp r10, r9
	moveq r10, #1
	movne r10, #0
	beq .L156
	b .L165
.L165:
	b .L157
.L157:
	ldr r10, [fp, #-4]
	ldr r9, =42
	cmp r10, r9
	moveq r10, #1
	movne r10, #0
	beq .L167
	b .L173
.L167:
	ldr r10, =20
	mov r0, r10
	b .Lget_op_prec_END
.L173:
	b .L170
.L170:
	ldr r10, [fp, #-4]
	ldr r9, =47
	cmp r10, r9
	moveq r10, #1
	movne r10, #0
	beq .L167
	b .L177
.L177:
	b .L169
.L169:
	ldr r10, [fp, #-4]
	ldr r9, =37
	cmp r10, r9
	moveq r10, #1
	movne r10, #0
	beq .L167
	b .L181
.L181:
	b .L168
.L168:
	ldr r10, =0
	mov r0, r10
	b .Lget_op_prec_END
.Lget_op_prec_END:
	add sp, sp, #4
	pop {r9, r10, fp, lr}
	bx  lr

	.global stack_push
	.type stack_push , %function
stack_push:
	push {r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L183:
	str r0, [fp, #-8]
	str r1, [fp, #-4]
	ldr r10, [fp, #-8]
	ldr r9, =0
	ldr r8, =4
	mul r7, r9, r8
	add r9, r7, r10
	ldr r10, [r9]
	add r9, r10, #1
	ldr r10, [fp, #-8]
	ldr r8, =0
	ldr r7, =4
	mul r6, r8, r7
	add r8, r6, r10
	str r9, [r8]
	ldr r10, [fp, #-4]
	ldr r9, [fp, #-8]
	ldr r8, =0
	ldr r7, =4
	mul r6, r8, r7
	add r8, r6, r9
	ldr r9, [r8]
	ldr r8, [fp, #-8]
	ldr r7, =4
	mul r6, r9, r7
	add r9, r6, r8
	str r10, [r9]
	b .Lstack_push_END
.Lstack_push_END:
	add sp, sp, #8
	pop {r6, r7, r8, r9, r10, fp, lr}
	bx  lr

	.global stack_pop
	.type stack_pop , %function
stack_pop:
	push {r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L201:
	str r0, [fp, #-8]
	ldr r10, [fp, #-8]
	ldr r9, =0
	ldr r8, =4
	mul r7, r9, r8
	add r9, r7, r10
	ldr r10, [r9]
	ldr r9, [fp, #-8]
	ldr r8, =4
	mul r7, r10, r8
	add r10, r7, r9
	ldr r9, [r10]
	str r9, [fp, #-4]
	ldr r10, [fp, #-8]
	ldr r9, =0
	ldr r8, =4
	mul r7, r9, r8
	add r9, r7, r10
	ldr r10, [r9]
	sub r9, r10, #1
	ldr r10, [fp, #-8]
	ldr r8, =0
	ldr r7, =4
	mul r6, r8, r7
	add r8, r6, r10
	str r9, [r8]
	ldr r10, [fp, #-4]
	mov r0, r10
	b .Lstack_pop_END
.Lstack_pop_END:
	add sp, sp, #8
	pop {r6, r7, r8, r9, r10, fp, lr}
	bx  lr

	.global stack_peek
	.type stack_peek , %function
stack_peek:
	push {r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L220:
	str r0, [fp, #-4]
	ldr r10, [fp, #-4]
	ldr r9, =0
	ldr r8, =4
	mul r7, r9, r8
	add r9, r7, r10
	ldr r10, [r9]
	ldr r9, [fp, #-4]
	ldr r8, =4
	mul r7, r10, r8
	add r10, r7, r9
	ldr r9, [r10]
	mov r0, r9
	b .Lstack_peek_END
.Lstack_peek_END:
	add sp, sp, #4
	pop {r7, r8, r9, r10, fp, lr}
	bx  lr

	.global stack_size
	.type stack_size , %function
stack_size:
	push {r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L230:
	str r0, [fp, #-4]
	ldr r10, [fp, #-4]
	ldr r9, =0
	ldr r8, =4
	mul r7, r9, r8
	add r9, r7, r10
	ldr r10, [r9]
	mov r0, r10
	b .Lstack_size_END
.Lstack_size_END:
	add sp, sp, #4
	pop {r7, r8, r9, r10, fp, lr}
	bx  lr

	.global eval_op
	.type eval_op , %function
eval_op:
	push {r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #12
.L236:
	str r0, [fp, #-12]
	str r1, [fp, #-8]
	str r2, [fp, #-4]
	ldr r10, [fp, #-12]
	ldr r9, =43
	cmp r10, r9
	moveq r10, #1
	movne r10, #0
	beq .L240
	b .L244
.L240:
	ldr r10, [fp, #-8]
	ldr r9, [fp, #-4]
	add r8, r10, r9
	mov r0, r8
	b .Leval_op_END
.L244:
	b .L241
.L241:
	ldr r10, [fp, #-12]
	ldr r9, =45
	cmp r10, r9
	moveq r10, #1
	movne r10, #0
	beq .L248
	b .L252
.L248:
	ldr r10, [fp, #-8]
	ldr r9, [fp, #-4]
	sub r8, r10, r9
	mov r0, r8
	b .Leval_op_END
.L252:
	b .L249
.L249:
	ldr r10, [fp, #-12]
	ldr r9, =42
	cmp r10, r9
	moveq r10, #1
	movne r10, #0
	beq .L256
	b .L260
.L256:
	ldr r10, [fp, #-8]
	ldr r9, [fp, #-4]
	mul r8, r10, r9
	mov r0, r8
	b .Leval_op_END
.L260:
	b .L257
.L257:
	ldr r10, [fp, #-12]
	ldr r9, =47
	cmp r10, r9
	moveq r10, #1
	movne r10, #0
	beq .L264
	b .L268
.L264:
	ldr r10, [fp, #-8]
	ldr r9, [fp, #-4]
	sdiv r8, r10, r9
	mov r0, r8
	b .Leval_op_END
.L268:
	b .L265
.L265:
	ldr r10, [fp, #-12]
	ldr r9, =37
	cmp r10, r9
	moveq r10, #1
	movne r10, #0
	beq .L272
	b .L276
.L272:
	ldr r10, [fp, #-8]
	ldr r9, [fp, #-4]
	sdiv r8, r10, r9
	mul r9, r8, r9
	sub r8, r10, r9
	mov r0, r8
	b .Leval_op_END
.L276:
	b .L273
.L273:
	ldr r10, =0
	mov r0, r10
	b .Leval_op_END
.Leval_op_END:
	add sp, sp, #12
	pop {r8, r9, r10, fp, lr}
	bx  lr

	.global eval
	.type eval , %function
eval:
	push {r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #2076
.L280:
	ldr r10, =0
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =20
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =24
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =28
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =32
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =36
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =40
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =44
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =48
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =52
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =56
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =60
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =64
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =68
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =72
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =76
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =80
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =84
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =88
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =92
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =96
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =100
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =104
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =108
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =112
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =116
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =120
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =124
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =128
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =132
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =136
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =140
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =144
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =148
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =152
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =156
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =160
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =164
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =168
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =172
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =176
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =180
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =184
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =188
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =192
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =196
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =200
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =204
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =208
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =212
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =216
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =220
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =224
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =228
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =232
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =236
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =240
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =244
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =248
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =252
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =256
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =260
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =264
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =268
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =272
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =276
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =280
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =284
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =288
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =292
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =296
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =300
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =304
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =308
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =312
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =316
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =320
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =324
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =328
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =332
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =336
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =340
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =344
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =348
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =352
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =356
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =360
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =364
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =368
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =372
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =376
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =380
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =384
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =388
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =392
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =396
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =400
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =404
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =408
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =412
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =416
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =420
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =424
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =428
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =432
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =436
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =440
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =444
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =448
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =452
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =456
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =460
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =464
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =468
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =472
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =476
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =480
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =484
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =488
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =492
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =496
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =500
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =504
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =508
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =512
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =516
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =520
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =524
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =528
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =532
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =536
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =540
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =544
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =548
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =552
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =556
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =560
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =564
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =568
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =572
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =576
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =580
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =584
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =588
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =592
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =596
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =600
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =604
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =608
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =612
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =616
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =620
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =624
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =628
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =632
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =636
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =640
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =644
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =648
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =652
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =656
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =660
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =664
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =668
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =672
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =676
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =680
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =684
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =688
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =692
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =696
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =700
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =704
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =708
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =712
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =716
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =720
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =724
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =728
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =732
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =736
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =740
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =744
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =748
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =752
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =756
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =760
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =764
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =768
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =772
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =776
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =780
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =784
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =788
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =792
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =796
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =800
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =804
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =808
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =812
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =816
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =820
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =824
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =828
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =832
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =836
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =840
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =844
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =848
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =852
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =856
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =860
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =864
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =868
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =872
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =876
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =880
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =884
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =888
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =892
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =896
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =900
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =904
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =908
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =912
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =916
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =920
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =924
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =928
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =932
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =936
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =940
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =944
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =948
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =952
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =956
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =960
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =964
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =968
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =972
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =976
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =980
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =984
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =988
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =992
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =996
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1000
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1004
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1008
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1012
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1016
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1020
	add r9, r10, #-2076
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =0
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =20
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =24
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =28
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =32
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =36
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =40
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =44
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =48
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =52
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =56
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =60
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =64
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =68
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =72
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =76
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =80
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =84
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =88
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =92
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =96
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =100
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =104
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =108
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =112
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =116
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =120
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =124
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =128
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =132
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =136
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =140
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =144
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =148
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =152
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =156
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =160
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =164
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =168
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =172
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =176
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =180
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =184
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =188
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =192
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =196
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =200
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =204
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =208
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =212
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =216
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =220
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =224
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =228
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =232
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =236
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =240
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =244
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =248
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =252
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =256
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =260
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =264
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =268
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =272
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =276
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =280
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =284
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =288
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =292
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =296
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =300
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =304
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =308
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =312
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =316
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =320
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =324
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =328
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =332
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =336
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =340
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =344
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =348
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =352
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =356
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =360
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =364
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =368
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =372
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =376
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =380
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =384
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =388
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =392
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =396
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =400
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =404
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =408
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =412
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =416
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =420
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =424
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =428
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =432
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =436
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =440
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =444
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =448
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =452
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =456
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =460
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =464
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =468
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =472
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =476
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =480
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =484
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =488
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =492
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =496
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =500
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =504
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =508
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =512
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =516
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =520
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =524
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =528
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =532
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =536
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =540
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =544
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =548
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =552
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =556
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =560
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =564
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =568
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =572
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =576
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =580
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =584
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =588
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =592
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =596
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =600
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =604
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =608
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =612
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =616
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =620
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =624
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =628
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =632
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =636
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =640
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =644
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =648
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =652
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =656
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =660
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =664
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =668
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =672
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =676
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =680
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =684
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =688
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =692
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =696
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =700
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =704
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =708
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =712
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =716
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =720
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =724
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =728
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =732
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =736
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =740
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =744
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =748
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =752
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =756
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =760
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =764
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =768
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =772
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =776
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =780
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =784
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =788
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =792
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =796
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =800
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =804
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =808
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =812
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =816
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =820
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =824
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =828
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =832
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =836
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =840
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =844
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =848
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =852
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =856
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =860
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =864
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =868
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =872
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =876
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =880
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =884
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =888
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =892
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =896
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =900
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =904
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =908
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =912
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =916
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =920
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =924
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =928
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =932
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =936
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =940
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =944
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =948
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =952
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =956
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =960
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =964
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =968
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =972
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =976
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =980
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =984
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =988
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =992
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =996
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1000
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1004
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1008
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1012
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1016
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1020
	add r9, r10, #-1052
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, addr_cur_token_0
	ldr r9, [r10]
	ldr r10, =0
	cmp r9, r10
	movne r10, #1
	moveq r10, #0
	bne .L795
	b .L799
	b .F0
.LTORG
addr_last_char_0:
	.word last_char
addr_num_0:
	.word num
addr_other_0:
	.word other
addr_cur_token_0:
	.word cur_token
.F0:
.L795:
	bl  panic
	mov r10, r0
	mov r0, r10
	b .Leval_END
.L799:
	b .L796
.L796:
	ldr r10, =0
	add r9, r10, #-2076
	ldr r10, addr_num_1
	ldr r8, [r10]
	mov r1, r8
	add r10, fp, r9
	mov r0, r10
	bl  stack_push
	bl  next_token
	mov r10, r0
	b .L804
.L804:
	ldr r10, addr_cur_token_1
	ldr r9, [r10]
	ldr r10, =1
	cmp r9, r10
	moveq r10, #1
	movne r10, #0
	beq .L805
	b .L809
.L805:
	ldr r10, addr_other_1
	ldr r9, [r10]
	str r9, [fp, #-28]
	ldr r10, [fp, #-28]
	mov r0, r10
	bl  get_op_prec
	mov r10, r0
	ldr r9, =0
	cmp r9, r10
	moveq r10, #1
	movne r10, #0
	beq .L813
	b .L817
.L809:
	b .L806
.L813:
	b .L806
.L817:
	b .L814
.L806:
	bl  next_token
	mov r10, r0
	b .L861
.L814:
	bl  next_token
	mov r10, r0
	b .L820
.L861:
	ldr r10, =0
	add r9, r10, #-1052
	add r10, fp, r9
	mov r0, r10
	bl  stack_size
	mov r10, r0
	ldr r9, =0
	cmp r9, r10
	movne r10, #1
	moveq r10, #0
	bne .L862
	b .L867
.L820:
	ldr r10, =0
	add r9, r10, #-1052
	add r10, fp, r9
	mov r0, r10
	bl  stack_size
	mov r10, r0
	ldr r9, =0
	cmp r9, r10
	movne r10, #1
	moveq r10, #0
	bne .L823
	b .L827
.L862:
	ldr r10, =0
	add r9, r10, #-1052
	add r10, fp, r9
	mov r0, r10
	bl  stack_pop
	mov r10, r0
	str r10, [fp, #-12]
	ldr r10, =0
	add r9, r10, #-2076
	add r10, fp, r9
	mov r0, r10
	bl  stack_pop
	mov r10, r0
	str r10, [fp, #-8]
	ldr r10, =0
	add r9, r10, #-2076
	add r10, fp, r9
	mov r0, r10
	bl  stack_pop
	mov r10, r0
	str r10, [fp, #-4]
	ldr r10, =0
	add r9, r10, #-2076
	ldr r10, [fp, #-12]
	ldr r8, [fp, #-4]
	ldr r7, [fp, #-8]
	mov r2, r7
	mov r1, r8
	mov r0, r10
	bl  eval_op
	mov r10, r0
	mov r1, r10
	add r10, fp, r9
	mov r0, r10
	bl  stack_push
	b .L861
.L867:
	b .L863
.L823:
	ldr r10, =0
	add r9, r10, #-1052
	mov r0, r9
	bl  stack_peek
	mov r10, r0
	mov r0, r10
	bl  get_op_prec
	mov r10, r0
	ldr r9, [fp, #-28]
	mov r0, r9
	bl  get_op_prec
	mov r9, r0
	cmp r10, r9
	movge r10, #1
	movlt r10, #0
	bge .L821
	b .L833
.L827:
	b .L822
.L863:
	ldr r10, =0
	add r9, r10, #-2076
	add r10, fp, r9
	mov r0, r10
	bl  stack_peek
	mov r10, r0
	mov r0, r10
	b .Leval_END
.L821:
	ldr r10, =0
	add r9, r10, #-1052
	add r10, fp, r9
	mov r0, r10
	bl  stack_pop
	mov r10, r0
	str r10, [fp, #-24]
	ldr r10, =0
	add r9, r10, #-2076
	add r10, fp, r9
	mov r0, r10
	bl  stack_pop
	mov r10, r0
	str r10, [fp, #-20]
	ldr r10, =0
	add r9, r10, #-2076
	add r10, fp, r9
	mov r0, r10
	bl  stack_pop
	mov r10, r0
	str r10, [fp, #-16]
	ldr r10, =0
	add r9, r10, #-2076
	ldr r10, [fp, #-24]
	ldr r8, [fp, #-16]
	ldr r7, [fp, #-20]
	mov r2, r7
	mov r1, r8
	mov r0, r10
	bl  eval_op
	mov r10, r0
	mov r1, r10
	add r10, fp, r9
	mov r0, r10
	bl  stack_push
	b .L820
	b .F1
.LTORG
addr_last_char_1:
	.word last_char
addr_num_1:
	.word num
addr_other_1:
	.word other
addr_cur_token_1:
	.word cur_token
.F1:
.L833:
	b .L822
.L822:
	ldr r10, =0
	add r9, r10, #-1052
	ldr r10, [fp, #-28]
	mov r1, r10
	add r10, fp, r9
	mov r0, r10
	bl  stack_push
	ldr r10, addr_cur_token_2
	ldr r9, [r10]
	ldr r10, =0
	cmp r9, r10
	movne r10, #1
	moveq r10, #0
	bne .L852
	b .L856
.L852:
	bl  panic
	mov r10, r0
	mov r0, r10
	b .Leval_END
.L856:
	b .L853
.L853:
	ldr r10, =0
	add r9, r10, #-2076
	ldr r10, addr_num_2
	ldr r8, [r10]
	mov r1, r8
	add r10, fp, r9
	mov r0, r10
	bl  stack_push
	bl  next_token
	mov r10, r0
	b .L804
.Leval_END:
	add sp, sp, #2076
	pop {r7, r8, r9, r10, fp, lr}
	bx  lr

	.global main
	.type main , %function
main:
	push {r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L885:
	bl  getint
	mov r10, r0
	str r10, [fp, #-4]
	bl  getch
	mov r10, r0
	bl  next_token
	mov r10, r0
	b .L887
.L887:
	ldr r10, [fp, #-4]
	ldr r9, =0
	cmp r9, r10
	movne r10, #1
	moveq r10, #0
	bne .L888
	b .L892
.L888:
	bl  eval
	mov r10, r0
	mov r0, r10
	bl  putint
	ldr r10, =10
	mov r0, r10
	bl  putch
	ldr r10, [fp, #-4]
	sub r9, r10, #1
	str r9, [fp, #-4]
	b .L887
.L892:
	b .L889
.L889:
	ldr r10, =0
	mov r0, r10
	b .Lmain_END
.Lmain_END:
	add sp, sp, #4
	pop {r9, r10, fp, lr}
	bx  lr

addr_last_char_2:
	.word last_char
addr_num_2:
	.word num
addr_other_2:
	.word other
addr_cur_token_2:
	.word cur_token
