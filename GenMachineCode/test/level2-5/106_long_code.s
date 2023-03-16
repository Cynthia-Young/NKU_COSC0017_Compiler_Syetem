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
	.global bubblesort
	.type bubblesort , %function
bubblesort:
	push {r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L121:
	str r0, [fp, #-16]
	ldr r10, =0
	str r10, [fp, #-12]
	b .L125
.L125:
	ldr r10, [fp, #-12]
	ldr r9, addr_n_0
	ldr r8, [r9]
	sub r9, r8, #1
	cmp r10, r9
	movlt r10, #1
	movge r10, #0
	blt .L126
	b .L131
.L126:
	ldr r10, =0
	str r10, [fp, #-8]
	b .L133
.L131:
	b .L127
.L133:
	ldr r10, [fp, #-8]
	ldr r9, addr_n_0
	ldr r8, [r9]
	ldr r9, [fp, #-12]
	sub r7, r8, r9
	sub r9, r7, #1
	cmp r10, r9
	movlt r10, #1
	movge r10, #0
	blt .L134
	b .L140
.L127:
	ldr r10, =0
	mov r0, r10
	b .Lbubblesort_END
.L134:
	ldr r10, [fp, #-8]
	ldr r9, [fp, #-16]
	ldr r8, =4
	mul r7, r10, r8
	add r10, r7, r9
	ldr r9, [r10]
	ldr r10, [fp, #-8]
	add r8, r10, #1
	ldr r10, [fp, #-16]
	ldr r7, =4
	mul r6, r8, r7
	add r8, r6, r10
	ldr r10, [r8]
	cmp r9, r10
	movgt r10, #1
	movle r10, #0
	bgt .L142
	b .L155
.L140:
	b .L135
.L142:
	ldr r10, [fp, #-8]
	add r9, r10, #1
	ldr r10, [fp, #-16]
	ldr r8, =4
	mul r7, r9, r8
	add r9, r7, r10
	ldr r10, [r9]
	str r10, [fp, #-4]
	ldr r10, [fp, #-8]
	ldr r9, [fp, #-16]
	ldr r8, =4
	mul r7, r10, r8
	add r10, r7, r9
	ldr r9, [r10]
	ldr r10, [fp, #-8]
	add r8, r10, #1
	ldr r10, [fp, #-16]
	ldr r7, =4
	mul r6, r8, r7
	add r8, r6, r10
	str r9, [r8]
	ldr r10, [fp, #-4]
	ldr r9, [fp, #-8]
	ldr r8, [fp, #-16]
	ldr r7, =4
	mul r6, r9, r7
	add r9, r6, r8
	str r10, [r9]
	b .L143
.L155:
	b .L143
.L135:
	ldr r10, [fp, #-12]
	add r9, r10, #1
	str r9, [fp, #-12]
	b .L125
.L143:
	ldr r10, [fp, #-8]
	add r9, r10, #1
	str r9, [fp, #-8]
	b .L133
.Lbubblesort_END:
	add sp, sp, #16
	pop {r6, r7, r8, r9, r10, fp, lr}
	bx  lr

	.global insertsort
	.type insertsort , %function
insertsort:
	push {r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L179:
	str r0, [fp, #-16]
	ldr r10, =1
	str r10, [fp, #-12]
	b .L182
.L182:
	ldr r10, [fp, #-12]
	ldr r9, addr_n_0
	ldr r8, [r9]
	cmp r10, r8
	movlt r10, #1
	movge r10, #0
	blt .L183
	b .L188
.L183:
	ldr r10, [fp, #-12]
	ldr r9, [fp, #-16]
	ldr r8, =4
	mul r7, r10, r8
	add r10, r7, r9
	ldr r9, [r10]
	str r9, [fp, #-8]
	ldr r10, [fp, #-12]
	sub r9, r10, #1
	str r9, [fp, #-4]
	b .L198
.L188:
	b .L184
.L198:
	ldr r10, [fp, #-4]
	ldr r9, =-1
	cmp r10, r9
	movgt r10, #1
	movle r10, #0
	bgt .L201
	b .L204
.L184:
	ldr r10, =0
	mov r0, r10
	b .Linsertsort_END
.L201:
	ldr r10, [fp, #-8]
	ldr r9, [fp, #-4]
	ldr r8, [fp, #-16]
	ldr r7, =4
	mul r6, r9, r7
	add r9, r6, r8
	ldr r8, [r9]
	cmp r10, r8
	movlt r10, #1
	movge r10, #0
	blt .L199
	b .L213
.L204:
	b .L200
.L199:
	ldr r10, [fp, #-4]
	ldr r9, [fp, #-16]
	ldr r8, =4
	mul r7, r10, r8
	add r10, r7, r9
	ldr r9, [r10]
	ldr r10, [fp, #-4]
	add r8, r10, #1
	ldr r10, [fp, #-16]
	ldr r7, =4
	mul r6, r8, r7
	add r8, r6, r10
	str r9, [r8]
	ldr r10, [fp, #-4]
	sub r9, r10, #1
	str r9, [fp, #-4]
	b .L198
.L213:
	b .L200
.L200:
	ldr r10, [fp, #-8]
	ldr r9, [fp, #-4]
	add r8, r9, #1
	ldr r9, [fp, #-16]
	ldr r7, =4
	mul r6, r8, r7
	add r8, r6, r9
	str r10, [r8]
	ldr r10, [fp, #-12]
	add r9, r10, #1
	str r9, [fp, #-12]
	b .L182
.Linsertsort_END:
	add sp, sp, #16
	pop {r6, r7, r8, r9, r10, fp, lr}
	bx  lr

	.global QuickSort
	.type QuickSort , %function
QuickSort:
	push {r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #28
.L231:
	str r0, [fp, #-28]
	str r1, [fp, #-24]
	str r2, [fp, #-20]
	ldr r10, [fp, #-24]
	ldr r9, [fp, #-20]
	cmp r10, r9
	movlt r10, #1
	movge r10, #0
	blt .L235
	b .L240
.L235:
	ldr r10, [fp, #-24]
	str r10, [fp, #-16]
	ldr r10, [fp, #-20]
	str r10, [fp, #-12]
	ldr r10, [fp, #-24]
	ldr r9, [fp, #-28]
	ldr r8, =4
	mul r7, r10, r8
	add r10, r7, r9
	ldr r9, [r10]
	str r9, [fp, #-8]
	b .L252
.L240:
	b .L236
.L252:
	ldr r10, [fp, #-16]
	ldr r9, [fp, #-12]
	cmp r10, r9
	movlt r10, #1
	movge r10, #0
	blt .L253
	b .L258
.L236:
	ldr r10, =0
	mov r0, r10
	b .LQuickSort_END
.L253:
	b .L260
.L258:
	b .L254
.L260:
	ldr r10, [fp, #-16]
	ldr r9, [fp, #-12]
	cmp r10, r9
	movlt r10, #1
	movge r10, #0
	blt .L263
	b .L267
.L254:
	ldr r10, [fp, #-8]
	ldr r9, [fp, #-16]
	ldr r8, [fp, #-28]
	ldr r7, =4
	mul r6, r9, r7
	add r9, r6, r8
	str r10, [r9]
	ldr r10, [fp, #-16]
	sub r9, r10, #1
	str r9, [fp, #-4]
	ldr r10, [fp, #-28]
	ldr r9, =0
	add r8, r9, r10
	ldr r10, [fp, #-24]
	ldr r9, [fp, #-4]
	mov r2, r9
	mov r1, r10
	mov r0, r8
	bl  QuickSort
	mov r10, r0
	str r10, [fp, #-4]
	ldr r10, [fp, #-16]
	add r9, r10, #1
	str r9, [fp, #-4]
	ldr r10, [fp, #-28]
	ldr r9, =0
	add r8, r9, r10
	ldr r10, [fp, #-4]
	ldr r9, [fp, #-20]
	mov r2, r9
	mov r1, r10
	mov r0, r8
	bl  QuickSort
	mov r10, r0
	str r10, [fp, #-4]
	b .L236
.L263:
	ldr r10, [fp, #-12]
	ldr r9, [fp, #-28]
	ldr r8, =4
	mul r7, r10, r8
	add r10, r7, r9
	ldr r9, [r10]
	ldr r10, [fp, #-8]
	sub r8, r10, #1
	cmp r9, r8
	movgt r10, #1
	movle r10, #0
	bgt .L261
	b .L276
.L267:
	b .L262
.L261:
	ldr r10, [fp, #-12]
	sub r9, r10, #1
	str r9, [fp, #-12]
	b .L260
.L276:
	b .L262
.L262:
	ldr r10, [fp, #-16]
	ldr r9, [fp, #-12]
	cmp r10, r9
	movlt r10, #1
	movge r10, #0
	blt .L279
	b .L284
.L279:
	ldr r10, [fp, #-12]
	ldr r9, [fp, #-28]
	ldr r8, =4
	mul r7, r10, r8
	add r10, r7, r9
	ldr r9, [r10]
	ldr r10, [fp, #-16]
	ldr r8, [fp, #-28]
	ldr r7, =4
	mul r6, r10, r7
	add r10, r6, r8
	str r9, [r10]
	ldr r10, [fp, #-16]
	add r9, r10, #1
	str r9, [fp, #-16]
	b .L280
.L284:
	b .L280
.L280:
	b .L296
.L296:
	ldr r10, [fp, #-16]
	ldr r9, [fp, #-12]
	cmp r10, r9
	movlt r10, #1
	movge r10, #0
	blt .L299
	b .L303
.L299:
	ldr r10, [fp, #-16]
	ldr r9, [fp, #-28]
	ldr r8, =4
	mul r7, r10, r8
	add r10, r7, r9
	ldr r9, [r10]
	ldr r10, [fp, #-8]
	cmp r9, r10
	movlt r10, #1
	movge r10, #0
	blt .L297
	b .L312
.L303:
	b .L298
.L297:
	ldr r10, [fp, #-16]
	add r9, r10, #1
	str r9, [fp, #-16]
	b .L296
.L312:
	b .L298
.L298:
	ldr r10, [fp, #-16]
	ldr r9, [fp, #-12]
	cmp r10, r9
	movlt r10, #1
	movge r10, #0
	blt .L315
	b .L320
.L315:
	ldr r10, [fp, #-16]
	ldr r9, [fp, #-28]
	ldr r8, =4
	mul r7, r10, r8
	add r10, r7, r9
	ldr r9, [r10]
	ldr r10, [fp, #-12]
	ldr r8, [fp, #-28]
	ldr r7, =4
	mul r6, r10, r7
	add r10, r6, r8
	str r9, [r10]
	ldr r10, [fp, #-12]
	sub r9, r10, #1
	str r9, [fp, #-12]
	b .L316
	b .F0
.LTORG
addr_n_0:
	.word n
.F0:
.L320:
	b .L316
.L316:
	b .L252
.LQuickSort_END:
	add sp, sp, #28
	pop {r6, r7, r8, r9, r10, fp, lr}
	bx  lr

	.global getMid
	.type getMid , %function
getMid:
	push {r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L350:
	str r0, [fp, #-8]
	ldr r10, addr_n_1
	ldr r9, [r10]
	ldr r10, =2
	sdiv r8, r9, r10
	mul r10, r8, r10
	sub r8, r9, r10
	ldr r10, =0
	cmp r8, r10
	moveq r10, #1
	movne r10, #0
	beq .L353
	b .L358
.L353:
	ldr r10, addr_n_1
	ldr r9, [r10]
	ldr r10, =2
	sdiv r8, r9, r10
	str r8, [fp, #-4]
	ldr r10, [fp, #-4]
	ldr r9, [fp, #-8]
	ldr r8, =4
	mul r7, r10, r8
	add r10, r7, r9
	ldr r9, [r10]
	ldr r10, [fp, #-4]
	sub r8, r10, #1
	ldr r10, [fp, #-8]
	ldr r7, =4
	mul r6, r8, r7
	add r8, r6, r10
	ldr r10, [r8]
	add r8, r9, r10
	ldr r10, =2
	sdiv r9, r8, r10
	mov r0, r9
	b .LgetMid_END
.L358:
	b .L355
.L355:
	ldr r10, addr_n_1
	ldr r9, [r10]
	ldr r10, =2
	sdiv r8, r9, r10
	str r8, [fp, #-4]
	ldr r10, [fp, #-4]
	ldr r9, [fp, #-8]
	ldr r8, =4
	mul r7, r10, r8
	add r10, r7, r9
	ldr r9, [r10]
	mov r0, r9
	b .LgetMid_END
.LgetMid_END:
	add sp, sp, #8
	pop {r6, r7, r8, r9, r10, fp, lr}
	bx  lr

	.global getMost
	.type getMost , %function
getMost:
	push {r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #4020
.L377:
	ldr r10, =-4020
	str r0, [fp, r10]
	ldr r10, =0
	str r10, [fp, #-16]
	b .L381
.L381:
	ldr r10, [fp, #-16]
	ldr r9, =1000
	cmp r10, r9
	movlt r10, #1
	movge r10, #0
	blt .L382
	b .L386
.L382:
	ldr r10, [fp, #-16]
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-4016
	ldr r9, =0
	add r8, fp, r10
	str r9, [r8]
	ldr r10, [fp, #-16]
	add r9, r10, #1
	str r9, [fp, #-16]
	b .L381
.L386:
	b .L383
.L383:
	ldr r10, =0
	str r10, [fp, #-16]
	ldr r10, =0
	str r10, [fp, #-12]
	b .L394
.L394:
	ldr r10, [fp, #-16]
	ldr r9, addr_n_1
	ldr r8, [r9]
	cmp r10, r8
	movlt r10, #1
	movge r10, #0
	blt .L395
	b .L400
.L395:
	ldr r10, [fp, #-16]
	ldr r9, [fp, #-4020]
	ldr r8, =4
	mul r7, r10, r8
	add r10, r7, r9
	ldr r9, [r10]
	str r9, [fp, #-4]
	ldr r10, [fp, #-4]
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-4016
	add r9, fp, r10
	ldr r10, [r9]
	add r9, r10, #1
	ldr r10, [fp, #-4]
	ldr r8, =4
	mul r7, r10, r8
	add r10, r7, #-4016
	add r8, fp, r10
	str r9, [r8]
	ldr r10, [fp, #-4]
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-4016
	add r9, fp, r10
	ldr r10, [r9]
	ldr r9, [fp, #-12]
	cmp r10, r9
	movgt r10, #1
	movle r10, #0
	bgt .L415
	b .L423
.L400:
	b .L396
.L415:
	ldr r10, [fp, #-4]
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-4016
	add r9, fp, r10
	ldr r10, [r9]
	str r10, [fp, #-12]
	ldr r10, [fp, #-4]
	str r10, [fp, #-8]
	b .L416
.L423:
	b .L416
.L396:
	ldr r10, [fp, #-8]
	mov r0, r10
	b .LgetMost_END
.L416:
	ldr r10, [fp, #-16]
	add r9, r10, #1
	str r9, [fp, #-16]
	b .L394
.LgetMost_END:
	add sp, sp, #4020
	pop {r7, r8, r9, r10, fp, lr}
	bx  lr

	.global revert
	.type revert , %function
revert:
	push {r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L432:
	str r0, [fp, #-16]
	ldr r10, =0
	str r10, [fp, #-8]
	ldr r10, =0
	str r10, [fp, #-4]
	b .L437
.L437:
	ldr r10, [fp, #-8]
	ldr r9, [fp, #-4]
	cmp r10, r9
	movlt r10, #1
	movge r10, #0
	blt .L438
	b .L443
.L438:
	ldr r10, [fp, #-8]
	ldr r9, [fp, #-16]
	ldr r8, =4
	mul r7, r10, r8
	add r10, r7, r9
	ldr r9, [r10]
	str r9, [fp, #-12]
	ldr r10, [fp, #-4]
	ldr r9, [fp, #-16]
	ldr r8, =4
	mul r7, r10, r8
	add r10, r7, r9
	ldr r9, [r10]
	ldr r10, [fp, #-8]
	ldr r8, [fp, #-16]
	ldr r7, =4
	mul r6, r10, r7
	add r10, r6, r8
	str r9, [r10]
	ldr r10, [fp, #-12]
	ldr r9, [fp, #-4]
	ldr r8, [fp, #-16]
	ldr r7, =4
	mul r6, r9, r7
	add r9, r6, r8
	str r10, [r9]
	ldr r10, [fp, #-8]
	add r9, r10, #1
	str r9, [fp, #-8]
	ldr r10, [fp, #-4]
	sub r9, r10, #1
	str r9, [fp, #-4]
	b .L437
.L443:
	b .L439
.L439:
	ldr r10, =0
	mov r0, r10
	b .Lrevert_END
.Lrevert_END:
	add sp, sp, #16
	pop {r6, r7, r8, r9, r10, fp, lr}
	bx  lr

	.global arrCopy
	.type arrCopy , %function
arrCopy:
	push {r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #12
.L466:
	str r0, [fp, #-12]
	str r1, [fp, #-8]
	ldr r10, =0
	str r10, [fp, #-4]
	b .L470
.L470:
	ldr r10, [fp, #-4]
	ldr r9, addr_n_1
	ldr r8, [r9]
	cmp r10, r8
	movlt r10, #1
	movge r10, #0
	blt .L471
	b .L476
.L471:
	ldr r10, [fp, #-4]
	ldr r9, [fp, #-12]
	ldr r8, =4
	mul r7, r10, r8
	add r10, r7, r9
	ldr r9, [r10]
	ldr r10, [fp, #-4]
	ldr r8, [fp, #-8]
	ldr r7, =4
	mul r6, r10, r7
	add r10, r6, r8
	str r9, [r10]
	ldr r10, [fp, #-4]
	add r9, r10, #1
	str r9, [fp, #-4]
	b .L470
.L476:
	b .L472
.L472:
	ldr r10, =0
	mov r0, r10
	b .LarrCopy_END
.LarrCopy_END:
	add sp, sp, #12
	pop {r6, r7, r8, r9, r10, fp, lr}
	bx  lr

	.global calSum
	.type calSum , %function
calSum:
	push {r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L488:
	str r0, [fp, #-16]
	str r1, [fp, #-12]
	ldr r10, =0
	str r10, [fp, #-8]
	ldr r10, =0
	str r10, [fp, #-4]
	b .L493
.L493:
	ldr r10, [fp, #-4]
	ldr r9, addr_n_1
	ldr r8, [r9]
	cmp r10, r8
	movlt r10, #1
	movge r10, #0
	blt .L494
	b .L499
.L494:
	ldr r10, [fp, #-8]
	ldr r9, [fp, #-4]
	ldr r8, [fp, #-16]
	ldr r7, =4
	mul r6, r9, r7
	add r9, r6, r8
	ldr r8, [r9]
	add r9, r10, r8
	str r9, [fp, #-8]
	ldr r10, [fp, #-4]
	ldr r9, [fp, #-12]
	sdiv r8, r10, r9
	mul r9, r8, r9
	sub r8, r10, r9
	ldr r10, [fp, #-12]
	sub r9, r10, #1
	cmp r8, r9
	movne r10, #1
	moveq r10, #0
	bne .L507
	b .L514
.L499:
	b .L495
.L507:
	ldr r10, [fp, #-4]
	ldr r9, [fp, #-16]
	ldr r8, =4
	mul r7, r10, r8
	add r10, r7, r9
	ldr r9, =0
	str r9, [r10]
	b .L508
.L514:
	b .L509
.L495:
	ldr r10, =0
	mov r0, r10
	b .LcalSum_END
.L508:
	ldr r10, [fp, #-4]
	add r9, r10, #1
	str r9, [fp, #-4]
	b .L493
.L509:
	ldr r10, [fp, #-8]
	ldr r9, [fp, #-4]
	ldr r8, [fp, #-16]
	ldr r7, =4
	mul r6, r9, r7
	add r9, r6, r8
	str r10, [r9]
	ldr r10, =0
	str r10, [fp, #-8]
	b .L508
.LcalSum_END:
	add sp, sp, #16
	pop {r6, r7, r8, r9, r10, fp, lr}
	bx  lr

	.global avgPooling
	.type avgPooling , %function
avgPooling:
	push {r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #20
.L526:
	str r0, [fp, #-20]
	str r1, [fp, #-16]
	ldr r10, =0
	str r10, [fp, #-8]
	ldr r10, =0
	str r10, [fp, #-12]
	b .L532
.L532:
	ldr r10, [fp, #-8]
	ldr r9, addr_n_1
	ldr r8, [r9]
	cmp r10, r8
	movlt r10, #1
	movge r10, #0
	blt .L533
	b .L538
.L533:
	ldr r10, [fp, #-8]
	ldr r9, [fp, #-16]
	sub r8, r9, #1
	cmp r10, r8
	movlt r10, #1
	movge r10, #0
	blt .L540
	b .L546
.L538:
	b .L534
.L540:
	ldr r10, [fp, #-12]
	ldr r9, [fp, #-8]
	ldr r8, [fp, #-20]
	ldr r7, =4
	mul r6, r9, r7
	add r9, r6, r8
	ldr r8, [r9]
	add r9, r10, r8
	str r9, [fp, #-12]
	b .L541
.L546:
	b .L542
.L534:
	ldr r10, addr_n_1
	ldr r9, [r10]
	ldr r10, [fp, #-16]
	sub r8, r9, r10
	add r10, r8, #1
	str r10, [fp, #-8]
	b .L594
.L541:
	ldr r10, [fp, #-8]
	add r9, r10, #1
	str r9, [fp, #-8]
	b .L532
.L542:
	ldr r10, [fp, #-8]
	ldr r9, [fp, #-16]
	sub r8, r9, #1
	cmp r10, r8
	moveq r10, #1
	movne r10, #0
	beq .L554
	b .L560
.L594:
	ldr r10, [fp, #-8]
	ldr r9, addr_n_1
	ldr r8, [r9]
	cmp r10, r8
	movlt r10, #1
	movge r10, #0
	blt .L595
	b .L600
.L554:
	ldr r10, [fp, #-20]
	ldr r9, =0
	ldr r8, =4
	mul r7, r9, r8
	add r9, r7, r10
	ldr r10, [r9]
	str r10, [fp, #-4]
	ldr r10, [fp, #-12]
	ldr r9, [fp, #-16]
	sdiv r8, r10, r9
	ldr r10, [fp, #-20]
	ldr r9, =0
	ldr r7, =4
	mul r6, r9, r7
	add r9, r6, r10
	str r8, [r9]
	b .L555
.L560:
	b .L556
.L595:
	ldr r10, [fp, #-8]
	ldr r9, [fp, #-20]
	ldr r8, =4
	mul r7, r10, r8
	add r10, r7, r9
	ldr r9, =0
	str r9, [r10]
	ldr r10, [fp, #-8]
	add r9, r10, #1
	str r9, [fp, #-8]
	b .L594
.L600:
	b .L596
.L555:
	b .L541
.L556:
	ldr r10, [fp, #-12]
	ldr r9, [fp, #-8]
	ldr r8, [fp, #-20]
	ldr r7, =4
	mul r6, r9, r7
	add r9, r6, r8
	ldr r8, [r9]
	add r9, r10, r8
	ldr r10, [fp, #-4]
	sub r8, r9, r10
	str r8, [fp, #-12]
	ldr r10, [fp, #-8]
	ldr r9, [fp, #-16]
	sub r8, r10, r9
	add r10, r8, #1
	ldr r9, [fp, #-20]
	ldr r8, =4
	mul r7, r10, r8
	add r10, r7, r9
	ldr r9, [r10]
	str r9, [fp, #-4]
	ldr r10, [fp, #-12]
	ldr r9, [fp, #-16]
	sdiv r8, r10, r9
	ldr r10, [fp, #-8]
	ldr r9, [fp, #-16]
	sub r7, r10, r9
	add r10, r7, #1
	ldr r9, [fp, #-20]
	ldr r7, =4
	mul r6, r10, r7
	add r10, r6, r9
	str r8, [r10]
	b .L555
.L596:
	ldr r10, =0
	mov r0, r10
	b .LavgPooling_END
.LavgPooling_END:
	add sp, sp, #20
	pop {r6, r7, r8, r9, r10, fp, lr}
	bx  lr

	.global main
	.type main , %function
main:
	push {r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #264
.L607:
	ldr r10, =32
	ldr r9, addr_n_1
	str r10, [r9]
	ldr r10, =0
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-264
	ldr r9, =7
	add r8, fp, r10
	str r9, [r8]
	ldr r10, =1
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-264
	ldr r9, =23
	add r8, fp, r10
	str r9, [r8]
	ldr r10, =2
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-264
	ldr r9, =89
	add r8, fp, r10
	str r9, [r8]
	ldr r10, =3
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-264
	ldr r9, =26
	add r8, fp, r10
	str r9, [r8]
	ldr r10, =4
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-264
	ldr r9, =282
	add r8, fp, r10
	str r9, [r8]
	ldr r10, =5
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-264
	ldr r9, =254
	add r8, fp, r10
	str r9, [r8]
	ldr r10, =6
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-264
	ldr r9, =27
	add r8, fp, r10
	str r9, [r8]
	ldr r10, =7
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-264
	ldr r9, =5
	add r8, fp, r10
	str r9, [r8]
	ldr r10, =8
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-264
	ldr r9, =83
	add r8, fp, r10
	str r9, [r8]
	ldr r10, =9
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-264
	ldr r9, =273
	add r8, fp, r10
	str r9, [r8]
	ldr r10, =10
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-264
	ldr r9, =574
	add r8, fp, r10
	str r9, [r8]
	ldr r10, =11
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-264
	ldr r9, =905
	add r8, fp, r10
	str r9, [r8]
	ldr r10, =12
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-264
	ldr r9, =354
	add r8, fp, r10
	str r9, [r8]
	ldr r10, =13
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-264
	ldr r9, =657
	add r8, fp, r10
	str r9, [r8]
	ldr r10, =14
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-264
	ldr r9, =935
	add r8, fp, r10
	str r9, [r8]
	ldr r10, =15
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-264
	ldr r9, =264
	add r8, fp, r10
	str r9, [r8]
	ldr r10, =16
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-264
	ldr r9, =639
	add r8, fp, r10
	str r9, [r8]
	ldr r10, =17
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-264
	ldr r9, =459
	add r8, fp, r10
	str r9, [r8]
	ldr r10, =18
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-264
	ldr r9, =29
	add r8, fp, r10
	str r9, [r8]
	ldr r10, =19
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-264
	ldr r9, =68
	add r8, fp, r10
	str r9, [r8]
	ldr r10, =20
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-264
	ldr r9, =929
	add r8, fp, r10
	str r9, [r8]
	ldr r10, =21
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-264
	ldr r9, =756
	add r8, fp, r10
	str r9, [r8]
	ldr r10, =22
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-264
	ldr r9, =452
	add r8, fp, r10
	str r9, [r8]
	ldr r10, =23
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-264
	ldr r9, =279
	add r8, fp, r10
	str r9, [r8]
	ldr r10, =24
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-264
	ldr r9, =58
	add r8, fp, r10
	str r9, [r8]
	ldr r10, =25
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-264
	ldr r9, =87
	add r8, fp, r10
	str r9, [r8]
	ldr r10, =26
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-264
	ldr r9, =96
	add r8, fp, r10
	str r9, [r8]
	ldr r10, =27
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-264
	ldr r9, =36
	add r8, fp, r10
	str r9, [r8]
	ldr r10, =28
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-264
	ldr r9, =39
	add r8, fp, r10
	str r9, [r8]
	ldr r10, =29
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-264
	ldr r9, =28
	add r8, fp, r10
	str r9, [r8]
	ldr r10, =30
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-264
	ldr r9, =1
	add r8, fp, r10
	str r9, [r8]
	ldr r10, =31
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-264
	ldr r9, =290
	add r8, fp, r10
	str r9, [r8]
	ldr r10, =0
	add r9, r10, #-264
	ldr r10, =0
	add r8, r10, #-136
	add r10, fp, r8
	mov r1, r10
	add r10, fp, r9
	mov r0, r10
	bl  arrCopy
	mov r10, r0
	str r10, [fp, #-8]
	ldr r10, =0
	add r9, r10, #-136
	add r10, fp, r9
	mov r0, r10
	bl  revert
	mov r10, r0
	str r10, [fp, #-8]
	ldr r10, =0
	str r10, [fp, #-4]
	b .L682
	b .F1
.LTORG
addr_n_1:
	.word n
.F1:
.L682:
	ldr r10, [fp, #-4]
	ldr r9, =32
	cmp r10, r9
	movlt r10, #1
	movge r10, #0
	blt .L683
	b .L687
.L683:
	ldr r10, [fp, #-4]
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-136
	add r9, fp, r10
	ldr r10, [r9]
	str r10, [fp, #-8]
	ldr r10, [fp, #-8]
	mov r0, r10
	bl  putint
	ldr r10, [fp, #-4]
	add r9, r10, #1
	str r9, [fp, #-4]
	b .L682
.L687:
	b .L684
.L684:
	ldr r10, =0
	add r9, r10, #-136
	add r10, fp, r9
	mov r0, r10
	bl  bubblesort
	mov r10, r0
	str r10, [fp, #-8]
	ldr r10, =0
	str r10, [fp, #-4]
	b .L697
.L697:
	ldr r10, [fp, #-4]
	ldr r9, =32
	cmp r10, r9
	movlt r10, #1
	movge r10, #0
	blt .L698
	b .L702
.L698:
	ldr r10, [fp, #-4]
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-136
	add r9, fp, r10
	ldr r10, [r9]
	str r10, [fp, #-8]
	ldr r10, [fp, #-8]
	mov r0, r10
	bl  putint
	ldr r10, [fp, #-4]
	add r9, r10, #1
	str r9, [fp, #-4]
	b .L697
.L702:
	b .L699
.L699:
	ldr r10, =0
	add r9, r10, #-136
	add r10, fp, r9
	mov r0, r10
	bl  getMid
	mov r10, r0
	str r10, [fp, #-8]
	ldr r10, [fp, #-8]
	mov r0, r10
	bl  putint
	ldr r10, =0
	add r9, r10, #-136
	add r10, fp, r9
	mov r0, r10
	bl  getMost
	mov r10, r0
	str r10, [fp, #-8]
	ldr r10, [fp, #-8]
	mov r0, r10
	bl  putint
	ldr r10, =0
	add r9, r10, #-264
	ldr r10, =0
	add r8, r10, #-136
	add r10, fp, r8
	mov r1, r10
	add r10, fp, r9
	mov r0, r10
	bl  arrCopy
	mov r10, r0
	str r10, [fp, #-8]
	ldr r10, =0
	add r9, r10, #-136
	add r10, fp, r9
	mov r0, r10
	bl  bubblesort
	mov r10, r0
	str r10, [fp, #-8]
	ldr r10, =0
	str r10, [fp, #-4]
	b .L722
.L722:
	ldr r10, [fp, #-4]
	ldr r9, =32
	cmp r10, r9
	movlt r10, #1
	movge r10, #0
	blt .L723
	b .L727
.L723:
	ldr r10, [fp, #-4]
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-136
	add r9, fp, r10
	ldr r10, [r9]
	str r10, [fp, #-8]
	ldr r10, [fp, #-8]
	mov r0, r10
	bl  putint
	ldr r10, [fp, #-4]
	add r9, r10, #1
	str r9, [fp, #-4]
	b .L722
.L727:
	b .L724
.L724:
	ldr r10, =0
	add r9, r10, #-264
	ldr r10, =0
	add r8, r10, #-136
	add r10, fp, r8
	mov r1, r10
	add r10, fp, r9
	mov r0, r10
	bl  arrCopy
	mov r10, r0
	str r10, [fp, #-8]
	ldr r10, =0
	add r9, r10, #-136
	add r10, fp, r9
	mov r0, r10
	bl  insertsort
	mov r10, r0
	str r10, [fp, #-8]
	ldr r10, =0
	str r10, [fp, #-4]
	b .L741
.L741:
	ldr r10, [fp, #-4]
	ldr r9, =32
	cmp r10, r9
	movlt r10, #1
	movge r10, #0
	blt .L742
	b .L746
.L742:
	ldr r10, [fp, #-4]
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-136
	add r9, fp, r10
	ldr r10, [r9]
	str r10, [fp, #-8]
	ldr r10, [fp, #-8]
	mov r0, r10
	bl  putint
	ldr r10, [fp, #-4]
	add r9, r10, #1
	str r9, [fp, #-4]
	b .L741
.L746:
	b .L743
.L743:
	ldr r10, =0
	add r9, r10, #-264
	ldr r10, =0
	add r8, r10, #-136
	add r10, fp, r8
	mov r1, r10
	add r10, fp, r9
	mov r0, r10
	bl  arrCopy
	mov r10, r0
	str r10, [fp, #-8]
	ldr r10, =0
	str r10, [fp, #-4]
	ldr r10, =31
	str r10, [fp, #-8]
	ldr r10, =0
	add r9, r10, #-136
	ldr r10, [fp, #-4]
	ldr r8, [fp, #-8]
	mov r2, r8
	mov r1, r10
	add r10, fp, r9
	mov r0, r10
	bl  QuickSort
	mov r10, r0
	str r10, [fp, #-8]
	b .L762
	b .F2
.LTORG
addr_n_2:
	.word n
.F2:
.L762:
	ldr r10, [fp, #-4]
	ldr r9, =32
	cmp r10, r9
	movlt r10, #1
	movge r10, #0
	blt .L763
	b .L767
.L763:
	ldr r10, [fp, #-4]
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-136
	add r9, fp, r10
	ldr r10, [r9]
	str r10, [fp, #-8]
	ldr r10, [fp, #-8]
	mov r0, r10
	bl  putint
	ldr r10, [fp, #-4]
	add r9, r10, #1
	str r9, [fp, #-4]
	b .L762
.L767:
	b .L764
.L764:
	ldr r10, =0
	add r9, r10, #-264
	ldr r10, =0
	add r8, r10, #-136
	add r10, fp, r8
	mov r1, r10
	add r10, fp, r9
	mov r0, r10
	bl  arrCopy
	mov r10, r0
	str r10, [fp, #-8]
	ldr r10, =0
	add r9, r10, #-136
	ldr r10, =4
	mov r1, r10
	add r10, fp, r9
	mov r0, r10
	bl  calSum
	mov r10, r0
	str r10, [fp, #-8]
	ldr r10, =0
	str r10, [fp, #-4]
	b .L782
.L782:
	ldr r10, [fp, #-4]
	ldr r9, =32
	cmp r10, r9
	movlt r10, #1
	movge r10, #0
	blt .L783
	b .L787
.L783:
	ldr r10, [fp, #-4]
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-136
	add r9, fp, r10
	ldr r10, [r9]
	str r10, [fp, #-8]
	ldr r10, [fp, #-8]
	mov r0, r10
	bl  putint
	ldr r10, [fp, #-4]
	add r9, r10, #1
	str r9, [fp, #-4]
	b .L782
.L787:
	b .L784
.L784:
	ldr r10, =0
	add r9, r10, #-264
	ldr r10, =0
	add r8, r10, #-136
	add r10, fp, r8
	mov r1, r10
	add r10, fp, r9
	mov r0, r10
	bl  arrCopy
	mov r10, r0
	str r10, [fp, #-8]
	ldr r10, =0
	add r9, r10, #-136
	ldr r10, =3
	mov r1, r10
	add r10, fp, r9
	mov r0, r10
	bl  avgPooling
	mov r10, r0
	str r10, [fp, #-8]
	ldr r10, =0
	str r10, [fp, #-4]
	b .L802
.L802:
	ldr r10, [fp, #-4]
	ldr r9, =32
	cmp r10, r9
	movlt r10, #1
	movge r10, #0
	blt .L803
	b .L807
.L803:
	ldr r10, [fp, #-4]
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-136
	add r9, fp, r10
	ldr r10, [r9]
	str r10, [fp, #-8]
	ldr r10, [fp, #-8]
	mov r0, r10
	bl  putint
	ldr r10, [fp, #-4]
	add r9, r10, #1
	str r9, [fp, #-4]
	b .L802
.L807:
	b .L804
.L804:
	ldr r10, =0
	mov r0, r10
	b .Lmain_END
.Lmain_END:
	add sp, sp, #264
	pop {r8, r9, r10, fp, lr}
	bx  lr

addr_n_3:
	.word n
