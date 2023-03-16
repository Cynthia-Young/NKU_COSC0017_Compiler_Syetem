	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm
	.data
	.comm	array,440,4
	.global n
	.align 4
	.size n, 4
n:
	.word 0
	.text
	.global init
	.type init , %function
init:
	push {r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L71:
	str r0, [fp, #-8]
	ldr r10, =1
	str r10, [fp, #-4]
	b .L74
.L74:
	ldr r10, [fp, #-4]
	ldr r9, [fp, #-8]
	ldr r8, [fp, #-8]
	mul r7, r9, r8
	add r9, r7, #1
	cmp r10, r9
	movle r10, #1
	movgt r10, #0
	ble .L75
	b .L81
.L75:
	ldr r10, [fp, #-4]
	ldr r9, =4
	mul r8, r10, r9
	ldr r10, addr_array_0
	add r9, r8, r10
	ldr r10, =-1
	str r10, [r9]
	ldr r10, [fp, #-4]
	add r9, r10, #1
	str r9, [fp, #-4]
	b .L74
.L81:
	b .L76
.L76:
	b .Linit_END
.Linit_END:
	add sp, sp, #8
	pop {r7, r8, r9, r10, fp, lr}
	bx  lr

	.global findfa
	.type findfa , %function
findfa:
	push {r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L88:
	str r0, [fp, #-4]
	ldr r10, [fp, #-4]
	ldr r9, =4
	mul r8, r10, r9
	ldr r10, addr_array_0
	add r9, r8, r10
	ldr r10, [r9]
	ldr r9, [fp, #-4]
	cmp r10, r9
	moveq r10, #1
	movne r10, #0
	beq .L90
	b .L100
.L90:
	ldr r10, [fp, #-4]
	mov r0, r10
	b .Lfindfa_END
.L100:
	b .L92
.L92:
	ldr r10, [fp, #-4]
	ldr r9, =4
	mul r8, r10, r9
	ldr r10, addr_array_0
	add r9, r8, r10
	ldr r10, [r9]
	mov r0, r10
	bl  findfa
	mov r10, r0
	ldr r9, [fp, #-4]
	ldr r8, =4
	mul r7, r9, r8
	ldr r9, addr_array_0
	add r8, r7, r9
	str r10, [r8]
	ldr r10, [fp, #-4]
	ldr r9, =4
	mul r8, r10, r9
	ldr r10, addr_array_0
	add r9, r8, r10
	ldr r10, [r9]
	mov r0, r10
	b .Lfindfa_END
.Lfindfa_END:
	add sp, sp, #4
	pop {r7, r8, r9, r10, fp, lr}
	bx  lr

	.global mmerge
	.type mmerge , %function
mmerge:
	push {r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L117:
	str r0, [fp, #-16]
	str r1, [fp, #-12]
	ldr r10, [fp, #-16]
	mov r0, r10
	bl  findfa
	mov r10, r0
	str r10, [fp, #-8]
	ldr r10, [fp, #-12]
	mov r0, r10
	bl  findfa
	mov r10, r0
	str r10, [fp, #-4]
	ldr r10, [fp, #-8]
	ldr r9, [fp, #-4]
	cmp r10, r9
	movne r10, #1
	moveq r10, #0
	bne .L124
	b .L129
.L124:
	ldr r10, [fp, #-4]
	ldr r9, [fp, #-8]
	ldr r8, =4
	mul r7, r9, r8
	ldr r9, addr_array_0
	add r8, r7, r9
	str r10, [r8]
	b .L125
.L129:
	b .L125
.L125:
	b .Lmmerge_END
.Lmmerge_END:
	add sp, sp, #16
	pop {r7, r8, r9, r10, fp, lr}
	bx  lr

	.global main
	.type main , %function
main:
	push {r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #36
.L136:
	ldr r10, =1
	str r10, [fp, #-36]
	b .L141
.L141:
	ldr r10, [fp, #-36]
	ldr r9, =0
	cmp r9, r10
	movne r10, #1
	moveq r10, #0
	bne .L142
	b .L146
.L142:
	ldr r10, [fp, #-36]
	sub r9, r10, #1
	str r9, [fp, #-36]
	ldr r10, =4
	ldr r9, addr_n_0
	str r10, [r9]
	ldr r10, =10
	str r10, [fp, #-32]
	ldr r10, =0
	str r10, [fp, #-20]
	ldr r10, =0
	str r10, [fp, #-16]
	ldr r10, addr_n_0
	ldr r9, [r10]
	mov r0, r9
	bl  init
	ldr r10, addr_n_0
	ldr r9, [r10]
	ldr r10, addr_n_0
	ldr r8, [r10]
	mul r10, r9, r8
	add r9, r10, #1
	str r9, [fp, #-12]
	b .L155
.L146:
	b .L143
.L155:
	ldr r10, [fp, #-20]
	ldr r9, [fp, #-32]
	cmp r10, r9
	movlt r10, #1
	movge r10, #0
	blt .L156
	b .L161
.L143:
	ldr r10, =0
	mov r0, r10
	b .Lmain_END
.L156:
	bl  getint
	mov r10, r0
	str r10, [fp, #-28]
	bl  getint
	mov r10, r0
	str r10, [fp, #-24]
	ldr r10, [fp, #-16]
	ldr r9, =0
	cmp r9, r10
	moveq r10, #1
	movne r10, #0
	beq .L163
	b .L167
.L161:
	b .L157
.L163:
	ldr r10, addr_n_0
	ldr r9, [r10]
	ldr r10, [fp, #-28]
	sub r8, r10, #1
	mul r10, r9, r8
	ldr r9, [fp, #-24]
	add r8, r10, r9
	str r8, [fp, #-8]
	ldr r10, [fp, #-8]
	ldr r9, [fp, #-8]
	ldr r8, =4
	mul r7, r9, r8
	ldr r9, addr_array_0
	add r8, r7, r9
	str r10, [r8]
	ldr r10, [fp, #-28]
	ldr r9, =1
	cmp r10, r9
	moveq r10, #1
	movne r10, #0
	beq .L178
	b .L182
.L167:
	b .L164
.L157:
	ldr r10, [fp, #-16]
	ldr r9, =0
	cmp r9, r10
	moveq r10, #1
	movne r10, #0
	beq .L306
	b .L310
.L178:
	ldr r10, =0
	ldr r9, =4
	mul r8, r10, r9
	ldr r10, addr_array_0
	add r9, r8, r10
	ldr r10, =0
	str r10, [r9]
	ldr r10, [fp, #-8]
	ldr r9, =0
	mov r1, r9
	mov r0, r10
	bl  mmerge
	b .L179
.L182:
	b .L179
.L164:
	ldr r10, [fp, #-20]
	add r9, r10, #1
	str r9, [fp, #-20]
	b .L155
.L306:
	ldr r10, =0
	sub r9, r10, #1
	mov r0, r9
	bl  putint
	ldr r10, =10
	mov r0, r10
	bl  putch
	b .L307
.L310:
	b .L307
.L179:
	ldr r10, [fp, #-28]
	ldr r9, addr_n_0
	ldr r8, [r9]
	cmp r10, r8
	moveq r10, #1
	movne r10, #0
	beq .L189
	b .L194
.L307:
	b .L141
.L189:
	ldr r10, [fp, #-12]
	ldr r9, [fp, #-12]
	ldr r8, =4
	mul r7, r9, r8
	ldr r9, addr_array_0
	add r8, r7, r9
	str r10, [r8]
	ldr r10, [fp, #-8]
	ldr r9, [fp, #-12]
	mov r1, r9
	mov r0, r10
	bl  mmerge
	b .L190
.L194:
	b .L190
.L190:
	ldr r10, [fp, #-24]
	ldr r9, addr_n_0
	ldr r8, [r9]
	cmp r10, r8
	movlt r10, #1
	movge r10, #0
	blt .L205
	b .L209
.L205:
	ldr r10, [fp, #-8]
	add r9, r10, #1
	ldr r10, =4
	mul r8, r9, r10
	ldr r10, addr_array_0
	add r9, r8, r10
	ldr r10, [r9]
	ldr r9, =-1
	cmp r10, r9
	movne r10, #1
	moveq r10, #0
	bne .L203
	b .L217
.L209:
	b .L204
	b .F0
.LTORG
addr_array_0:
	.word array
addr_n_0:
	.word n
.F0:
.L203:
	ldr r10, [fp, #-8]
	ldr r9, [fp, #-8]
	add r8, r9, #1
	mov r1, r8
	mov r0, r10
	bl  mmerge
	b .L204
.L217:
	b .L204
.L204:
	ldr r10, [fp, #-24]
	ldr r9, =1
	cmp r10, r9
	movgt r10, #1
	movle r10, #0
	bgt .L223
	b .L226
.L223:
	ldr r10, [fp, #-8]
	sub r9, r10, #1
	ldr r10, =4
	mul r8, r9, r10
	ldr r10, addr_array_1
	add r9, r8, r10
	ldr r10, [r9]
	ldr r9, =-1
	cmp r10, r9
	movne r10, #1
	moveq r10, #0
	bne .L221
	b .L234
.L226:
	b .L222
.L221:
	ldr r10, [fp, #-8]
	ldr r9, [fp, #-8]
	sub r8, r9, #1
	mov r1, r8
	mov r0, r10
	bl  mmerge
	b .L222
.L234:
	b .L222
.L222:
	ldr r10, [fp, #-28]
	ldr r9, addr_n_1
	ldr r8, [r9]
	cmp r10, r8
	movlt r10, #1
	movge r10, #0
	blt .L240
	b .L244
.L240:
	ldr r10, [fp, #-8]
	ldr r9, addr_n_1
	ldr r8, [r9]
	add r9, r10, r8
	ldr r10, =4
	mul r8, r9, r10
	ldr r10, addr_array_1
	add r9, r8, r10
	ldr r10, [r9]
	ldr r9, =-1
	cmp r10, r9
	movne r10, #1
	moveq r10, #0
	bne .L238
	b .L253
.L244:
	b .L239
.L238:
	ldr r10, [fp, #-8]
	ldr r9, [fp, #-8]
	ldr r8, addr_n_1
	ldr r7, [r8]
	add r8, r9, r7
	mov r1, r8
	mov r0, r10
	bl  mmerge
	b .L239
.L253:
	b .L239
.L239:
	ldr r10, [fp, #-28]
	ldr r9, =1
	cmp r10, r9
	movgt r10, #1
	movle r10, #0
	bgt .L260
	b .L263
.L260:
	ldr r10, [fp, #-8]
	ldr r9, addr_n_1
	ldr r8, [r9]
	sub r9, r10, r8
	ldr r10, =4
	mul r8, r9, r10
	ldr r10, addr_array_1
	add r9, r8, r10
	ldr r10, [r9]
	ldr r9, =-1
	cmp r10, r9
	movne r10, #1
	moveq r10, #0
	bne .L258
	b .L272
.L263:
	b .L259
.L258:
	ldr r10, [fp, #-8]
	ldr r9, [fp, #-8]
	ldr r8, addr_n_1
	ldr r7, [r8]
	sub r8, r9, r7
	mov r1, r8
	mov r0, r10
	bl  mmerge
	b .L259
.L272:
	b .L259
.L259:
	ldr r10, =0
	ldr r9, =4
	mul r8, r10, r9
	ldr r10, addr_array_1
	add r9, r8, r10
	ldr r10, [r9]
	ldr r9, =-1
	cmp r10, r9
	movne r10, #1
	moveq r10, #0
	bne .L280
	b .L286
.L280:
	ldr r10, [fp, #-12]
	ldr r9, =4
	mul r8, r10, r9
	ldr r10, addr_array_1
	add r9, r8, r10
	ldr r10, [r9]
	ldr r9, =-1
	cmp r10, r9
	movne r10, #1
	moveq r10, #0
	bne .L279
	b .L294
.L286:
	b .L278
.L279:
	ldr r10, =0
	mov r0, r10
	bl  findfa
	mov r10, r0
	ldr r9, [fp, #-12]
	mov r0, r9
	bl  findfa
	mov r9, r0
	cmp r10, r9
	moveq r10, #1
	movne r10, #0
	beq .L277
	b .L299
.L294:
	b .L278
.L278:
	b .L164
.L277:
	ldr r10, =1
	str r10, [fp, #-16]
	ldr r10, [fp, #-20]
	add r9, r10, #1
	str r9, [fp, #-4]
	ldr r10, [fp, #-4]
	mov r0, r10
	bl  putint
	ldr r10, =10
	mov r0, r10
	bl  putch
	b .L278
.L299:
	b .L278
.Lmain_END:
	add sp, sp, #36
	pop {r7, r8, r9, r10, fp, lr}
	bx  lr

addr_array_1:
	.word array
addr_n_1:
	.word n
