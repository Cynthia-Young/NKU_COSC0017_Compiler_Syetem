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
	.global d
	.align 4
	.size d, 4
d:
	.word 0
	.text
	.global set_a
	.type set_a , %function
set_a:
	push {r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L94:
	str r0, [fp, #-4]
	ldr r10, [fp, #-4]
	ldr r9, addr_a_0
	str r10, [r9]
	ldr r10, addr_a_0
	ldr r9, [r10]
	mov r0, r9
	b .Lset_a_END
.Lset_a_END:
	add sp, sp, #4
	pop {r9, r10, fp, lr}
	bx  lr

	.global set_b
	.type set_b , %function
set_b:
	push {r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L98:
	str r0, [fp, #-4]
	ldr r10, [fp, #-4]
	ldr r9, addr_b_0
	str r10, [r9]
	ldr r10, addr_b_0
	ldr r9, [r10]
	mov r0, r9
	b .Lset_b_END
.Lset_b_END:
	add sp, sp, #4
	pop {r9, r10, fp, lr}
	bx  lr

	.global set_d
	.type set_d , %function
set_d:
	push {r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L102:
	str r0, [fp, #-4]
	ldr r10, [fp, #-4]
	ldr r9, addr_d_0
	str r10, [r9]
	ldr r10, addr_d_0
	ldr r9, [r10]
	mov r0, r9
	b .Lset_d_END
.Lset_d_END:
	add sp, sp, #4
	pop {r9, r10, fp, lr}
	bx  lr

	.global main
	.type main , %function
main:
	push {r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #24
.L106:
	ldr r10, =2
	ldr r9, addr_a_0
	str r10, [r9]
	ldr r10, =3
	ldr r9, addr_b_0
	str r10, [r9]
	ldr r10, =0
	mov r0, r10
	bl  set_a
	mov r10, r0
	ldr r9, =0
	cmp r9, r10
	movne r10, #1
	moveq r10, #0
	bne .L109
	b .L112
.L109:
	ldr r10, =1
	mov r0, r10
	bl  set_b
	mov r10, r0
	ldr r9, =0
	cmp r9, r10
	movne r10, #1
	moveq r10, #0
	bne .L107
	b .L116
.L112:
	b .L108
.L107:
	b .L108
.L116:
	b .L108
.L108:
	ldr r10, addr_a_0
	ldr r9, [r10]
	mov r0, r9
	bl  putint
	ldr r10, =32
	mov r0, r10
	bl  putch
	ldr r10, addr_b_0
	ldr r9, [r10]
	mov r0, r9
	bl  putint
	ldr r10, =32
	mov r0, r10
	bl  putch
	ldr r10, =2
	ldr r9, addr_a_0
	str r10, [r9]
	ldr r10, =3
	ldr r9, addr_b_0
	str r10, [r9]
	ldr r10, =0
	mov r0, r10
	bl  set_a
	mov r10, r0
	ldr r9, =0
	cmp r9, r10
	movne r10, #1
	moveq r10, #0
	bne .L124
	b .L127
.L124:
	ldr r10, =1
	mov r0, r10
	bl  set_b
	mov r10, r0
	ldr r9, =0
	cmp r9, r10
	movne r10, #1
	moveq r10, #0
	bne .L122
	b .L131
.L127:
	b .L123
.L122:
	b .L123
.L131:
	b .L123
.L123:
	ldr r10, addr_a_0
	ldr r9, [r10]
	mov r0, r9
	bl  putint
	ldr r10, =32
	mov r0, r10
	bl  putch
	ldr r10, addr_b_0
	ldr r9, [r10]
	mov r0, r9
	bl  putint
	ldr r10, =10
	mov r0, r10
	bl  putch
	ldr r10, =1
	str r10, [fp, #-24]
	ldr r10, =2
	ldr r9, addr_d_0
	str r10, [r9]
	ldr r10, =0
	ldr r9, =1
	cmp r10, r9
	movne r10, #1
	moveq r10, #0
	bne .L140
	b .L142
.L140:
	ldr r10, =3
	mov r0, r10
	bl  set_d
	mov r10, r0
	ldr r9, =0
	cmp r9, r10
	movne r10, #1
	moveq r10, #0
	bne .L138
	b .L146
.L142:
	b .L139
.L138:
	b .L139
.L146:
	b .L139
.L139:
	ldr r10, addr_d_0
	ldr r9, [r10]
	mov r0, r9
	bl  putint
	ldr r10, =32
	mov r0, r10
	bl  putch
	ldr r10, =0
	ldr r9, =1
	cmp r10, r9
	movne r10, #1
	moveq r10, #0
	bne .L150
	b .L154
.L150:
	b .L151
.L154:
	b .L152
.L151:
	ldr r10, addr_d_0
	ldr r9, [r10]
	mov r0, r9
	bl  putint
	ldr r10, =10
	mov r0, r10
	bl  putch
	ldr r10, =0
	ldr r9, =1
	cmp r10, r9
	movne r10, #1
	moveq r10, #0
	bne .L162
	b .L165
.L152:
	ldr r10, =4
	mov r0, r10
	bl  set_d
	mov r10, r0
	ldr r9, =0
	cmp r9, r10
	movne r10, #1
	moveq r10, #0
	bne .L150
	b .L158
.L162:
	ldr r10, =65
	mov r0, r10
	bl  putch
	b .L163
.L165:
	b .L163
.L158:
	b .L151
.L163:
	ldr r10, =0
	ldr r9, =0
	cmp r10, r9
	movne r10, #1
	moveq r10, #0
	bne .L168
	b .L171
	b .F0
.LTORG
addr_a_0:
	.word a
addr_b_0:
	.word b
addr_d_0:
	.word d
.F0:
.L168:
	ldr r10, =66
	mov r0, r10
	bl  putch
	b .L169
.L171:
	b .L169
.L169:
	ldr r10, =0
	ldr r9, =0
	cmp r10, r9
	movne r10, #1
	moveq r10, #0
	bne .L174
	b .L177
.L174:
	ldr r10, =67
	mov r0, r10
	bl  putch
	b .L175
.L177:
	b .L175
.L175:
	ldr r10, =0
	ldr r9, =1
	cmp r10, r9
	movne r10, #1
	moveq r10, #0
	bne .L180
	b .L183
.L180:
	ldr r10, =68
	mov r0, r10
	bl  putch
	b .L181
.L183:
	b .L181
.L181:
	ldr r10, =0
	ldr r9, =0
	cmp r10, r9
	movne r10, #1
	moveq r10, #0
	bne .L186
	b .L189
.L186:
	ldr r10, =69
	mov r0, r10
	bl  putch
	b .L187
.L189:
	b .L187
.L187:
	ldr r10, =0
	ldr r9, =1
	cmp r10, r9
	movne r10, #1
	moveq r10, #0
	bne .L192
	b .L195
.L192:
	ldr r10, =70
	mov r0, r10
	bl  putch
	b .L193
.L195:
	b .L193
.L193:
	ldr r10, =10
	mov r0, r10
	bl  putch
	ldr r10, =0
	str r10, [fp, #-20]
	ldr r10, =1
	str r10, [fp, #-16]
	ldr r10, =2
	str r10, [fp, #-12]
	ldr r10, =3
	str r10, [fp, #-8]
	ldr r10, =4
	str r10, [fp, #-4]
	b .L204
.L204:
	ldr r10, [fp, #-20]
	ldr r9, =0
	cmp r9, r10
	movne r10, #1
	moveq r10, #0
	bne .L207
	b .L210
.L207:
	ldr r10, [fp, #-16]
	ldr r9, =0
	cmp r9, r10
	movne r10, #1
	moveq r10, #0
	bne .L205
	b .L214
.L210:
	b .L206
.L205:
	ldr r10, =32
	mov r0, r10
	bl  putch
	b .L204
.L214:
	b .L206
.L206:
	ldr r10, [fp, #-20]
	ldr r9, =0
	cmp r9, r10
	movne r10, #1
	moveq r10, #0
	bne .L217
	b .L222
.L217:
	ldr r10, =67
	mov r0, r10
	bl  putch
	b .L218
.L222:
	b .L219
.L218:
	ldr r10, [fp, #-20]
	ldr r9, [fp, #-16]
	cmp r10, r9
	movge r10, #1
	movlt r10, #0
	bge .L229
	b .L235
.L219:
	ldr r10, [fp, #-16]
	ldr r9, =0
	cmp r9, r10
	movne r10, #1
	moveq r10, #0
	bne .L217
	b .L226
.L229:
	ldr r10, =72
	mov r0, r10
	bl  putch
	b .L230
.L235:
	b .L231
.L226:
	b .L218
.L230:
	ldr r10, [fp, #-12]
	ldr r9, [fp, #-16]
	cmp r10, r9
	movge r10, #1
	movlt r10, #0
	bge .L245
	b .L249
.L231:
	ldr r10, [fp, #-16]
	ldr r9, [fp, #-20]
	cmp r10, r9
	movle r10, #1
	movgt r10, #0
	ble .L229
	b .L240
.L245:
	ldr r10, [fp, #-4]
	ldr r9, [fp, #-8]
	cmp r10, r9
	movne r10, #1
	moveq r10, #0
	bne .L243
	b .L254
.L249:
	b .L244
.L240:
	b .L230
.L243:
	ldr r10, =73
	mov r0, r10
	bl  putch
	b .L244
.L254:
	b .L244
.L244:
	ldr r10, [fp, #-20]
	ldr r9, [fp, #-16]
	ldr r8, =0
	cmp r8, r9
	moveq r9, #1
	movne r9, #0
	uxtb r8, r9
	cmp r10, r8
	moveq r10, #1
	movne r10, #0
	beq .L260
	b .L265
.L260:
	ldr r10, [fp, #-8]
	ldr r9, [fp, #-8]
	cmp r10, r9
	movlt r10, #1
	movge r10, #0
	blt .L257
	b .L270
	b .F1
.LTORG
addr_a_1:
	.word a
addr_b_1:
	.word b
addr_d_1:
	.word d
.F1:
.L265:
	b .L259
.L257:
	ldr r10, =74
	mov r0, r10
	bl  putch
	b .L258
.L270:
	b .L259
.L259:
	ldr r10, [fp, #-4]
	ldr r9, [fp, #-4]
	cmp r10, r9
	movge r10, #1
	movlt r10, #0
	bge .L257
	b .L275
.L258:
	ldr r10, [fp, #-20]
	ldr r9, [fp, #-16]
	ldr r8, =0
	cmp r8, r9
	moveq r9, #1
	movne r9, #0
	uxtb r8, r9
	cmp r10, r8
	moveq r10, #1
	movne r10, #0
	beq .L278
	b .L285
.L275:
	b .L258
.L278:
	ldr r10, =75
	mov r0, r10
	bl  putch
	b .L279
.L285:
	b .L280
.L279:
	ldr r10, =10
	mov r0, r10
	bl  putch
	ldr r10, =0
	mov r0, r10
	b .Lmain_END
.L280:
	ldr r10, [fp, #-8]
	ldr r9, [fp, #-8]
	cmp r10, r9
	movlt r10, #1
	movge r10, #0
	blt .L287
	b .L291
.L287:
	ldr r10, [fp, #-4]
	ldr r9, [fp, #-4]
	cmp r10, r9
	movge r10, #1
	movlt r10, #0
	bge .L278
	b .L296
.L291:
	b .L279
.L296:
	b .L279
.Lmain_END:
	add sp, sp, #24
	pop {r8, r9, r10, fp, lr}
	bx  lr

addr_a_2:
	.word a
addr_b_2:
	.word b
addr_d_2:
	.word d
