	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm
	.text
	.global MAX
	.type MAX , %function
MAX:
	push {r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L29:
	str r0, [fp, #-8]
	str r1, [fp, #-4]
	ldr r10, [fp, #-8]
	ldr r9, [fp, #-4]
	cmp r10, r9
	moveq r10, #1
	movne r10, #0
	beq .L32
	b .L38
.L32:
	ldr r10, [fp, #-8]
	mov r0, r10
	b .LMAX_END
.L33:
.L34:
	ldr r10, [fp, #-8]
	ldr r9, [fp, #-4]
	cmp r10, r9
	movgt r10, #1
	movle r10, #0
	bgt .L41
	b .L47
.L37:
.L38:
	b .L34
.L39:
.L41:
	ldr r10, [fp, #-8]
	mov r0, r10
	b .LMAX_END
.L42:
	b .L33
.L43:
	ldr r10, [fp, #-4]
	mov r0, r10
	b .LMAX_END
.L46:
.L47:
	b .L43
.L48:
.LMAX_END:
	add sp, sp, #8
	pop {r9, r10, fp, lr}
	bx  lr

	.global 0…°RU
	.type 0…°RU , %function
0…°RU:
	push {r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #76
.L51:
	str r0, [fp, #-76]
	str r1, [fp, #-72]
	ldr r10, =0
	add r9, r10, #-68
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4
	add r9, r10, #-68
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8
	add r9, r10, #-68
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12
	add r9, r10, #-68
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16
	add r9, r10, #-68
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =20
	add r9, r10, #-68
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =24
	add r9, r10, #-68
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =28
	add r9, r10, #-68
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =32
	add r9, r10, #-68
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =36
	add r9, r10, #-68
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =40
	add r9, r10, #-68
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =44
	add r9, r10, #-68
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =48
	add r9, r10, #-68
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =52
	add r9, r10, #-68
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =56
	add r9, r10, #-68
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =60
	add r9, r10, #-68
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, [fp, #-76]
	ldr r9, =0
	ldr r8, =4
	mul r7, r9, r8
	add r9, r7, r10
	ldr r10, [r9]
	ldr r9, =0
	ldr r8, =4
	mul r7, r9, r8
	add r9, r7, #-68
	add r8, fp, r9
	str r10, [r8]
	ldr r10, [fp, #-76]
	ldr r9, =0
	ldr r8, =4
	mul r7, r9, r8
	add r9, r7, r10
	ldr r10, [r9]
	ldr r9, [fp, #-76]
	ldr r8, =1
	ldr r7, =4
	mul r6, r8, r7
	add r8, r6, r9
	ldr r9, [r8]
	mov r1, r9
	mov r0, r10
	bl  MAX
	mov r10, r0
	ldr r9, =1
	ldr r8, =4
	mul r7, r9, r8
	add r9, r7, #-68
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2
	str r10, [fp, #-4]
	b .L88
.L88:
	ldr r10, [fp, #-4]
	ldr r9, [fp, #-72]
	cmp r10, r9
	movlt r10, #1
	movge r10, #0
	blt .L89
	b .L94
.L89:
	ldr r10, [fp, #-4]
	sub r9, r10, #2
	ldr r10, =4
	mul r8, r9, r10
	add r10, r8, #-68
	add r9, fp, r10
	ldr r10, [r9]
	ldr r9, [fp, #-4]
	ldr r8, [fp, #-76]
	ldr r7, =4
	mul r6, r9, r7
	add r9, r6, r8
	ldr r8, [r9]
	add r9, r10, r8
	ldr r10, [fp, #-4]
	sub r8, r10, #1
	ldr r10, =4
	mul r7, r8, r10
	add r10, r7, #-68
	add r10, fp, r10
	ldr r8, [r10]
	mov r1, r8
	mov r0, r9
	bl  MAX
	mov r10, r0
	ldr r9, [fp, #-4]
	ldr r8, =4
	mul r7, r9, r8
	add r9, r7, #-68
	add r8, fp, r9
	str r10, [r8]
	ldr r10, [fp, #-4]
	add r9, r10, #1
	str r9, [fp, #-4]
	b .L88
.L90:
	ldr r10, [fp, #-72]
	sub r9, r10, #1
	ldr r10, =4
	mul r8, r9, r10
	add r10, r8, #-68
	add r9, fp, r10
	ldr r10, [r9]
	mov r0, r10
	b .Lmax_sum_nonadjacent_END
.L93:
.L94:
	b .L90
.L95:
.Lmax_sum_nonadjacent_END:
	add sp, sp, #76
	pop {r6, r7, r8, r9, r10, fp, lr}
	bx  lr

	.global 0…°RU
	.type 0…°RU , %function
0…°RU:
	push {r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #1048
.L117:
	str r0, [fp, #-1048]
	str r1, [fp, #-1044]
	str r2, [fp, #-1040]
	str r3, [fp, #-1036]
	ldr r10, =0
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =20
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =24
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =28
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =32
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =36
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =40
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =44
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =48
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =52
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =56
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =60
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =64
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =68
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =72
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =76
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =80
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =84
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =88
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =92
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =96
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =100
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =104
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =108
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =112
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =116
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =120
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =124
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =128
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =132
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =136
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =140
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =144
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =148
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =152
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =156
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =160
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =164
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =168
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =172
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =176
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =180
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =184
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =188
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =192
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =196
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =200
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =204
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =208
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =212
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =216
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =220
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =224
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =228
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =232
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =236
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =240
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =244
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =248
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =252
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =256
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =260
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =264
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =268
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =272
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =276
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =280
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =284
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =288
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =292
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =296
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =300
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =304
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =308
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =312
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =316
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =320
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =324
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =328
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =332
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =336
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =340
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =344
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =348
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =352
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =356
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =360
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =364
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =368
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =372
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =376
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =380
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =384
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =388
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =392
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =396
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =400
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =404
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =408
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =412
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =416
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =420
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =424
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =428
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =432
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =436
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =440
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =444
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =448
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =452
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =456
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =460
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =464
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =468
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =472
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =476
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =480
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =484
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =488
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =492
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =496
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =500
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =504
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =508
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =512
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =516
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =520
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =524
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =528
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =532
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =536
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =540
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =544
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =548
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =552
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =556
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =560
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =564
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =568
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =572
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =576
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =580
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =584
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =588
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =592
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =596
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =600
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =604
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =608
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =612
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =616
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =620
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =624
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =628
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =632
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =636
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =640
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =644
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =648
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =652
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =656
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =660
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =664
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =668
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =672
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =676
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =680
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =684
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =688
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =692
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =696
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =700
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =704
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =708
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =712
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =716
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =720
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =724
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =728
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =732
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =736
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =740
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =744
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =748
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =752
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =756
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =760
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =764
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =768
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =772
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =776
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =780
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =784
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =788
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =792
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =796
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =800
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =804
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =808
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =812
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =816
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =820
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =824
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =828
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =832
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =836
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =840
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =844
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =848
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =852
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =856
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =860
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =864
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =868
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =872
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =876
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =880
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =884
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =888
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =892
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =896
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =900
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =904
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =908
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =912
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =916
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =920
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =924
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =928
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =932
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =936
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =940
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =944
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =948
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =952
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =956
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =960
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =964
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =968
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =972
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =976
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =980
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =984
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =988
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =992
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =996
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1000
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1004
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1008
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1012
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1016
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1020
	add r9, r10, #-1032
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1
	str r10, [fp, #-8]
	b .L381
.L381:
	ldr r10, [fp, #-8]
	ldr r9, [fp, #-1044]
	cmp r10, r9
	movle r10, #1
	movgt r10, #0
	ble .L382
	b .L387
.L382:
	ldr r10, =1
	str r10, [fp, #-4]
	b .L389
.L383:
	ldr r10, [fp, #-1044]
	ldr r9, [fp, #-1036]
	ldr r8, =16
	mul r7, r10, r8
	add r10, r7, r9
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-1032
	add r9, fp, r10
	ldr r10, [r9]
	mov r0, r10
	b .Llongest_common_subseq_END
.L386:
.L387:
	b .L383
.L388:
.L389:
	ldr r10, [fp, #-4]
	ldr r9, [fp, #-1036]
	cmp r10, r9
	movle r10, #1
	movgt r10, #0
	ble .L390
	b .L395
.L390:
	ldr r10, [fp, #-8]
	sub r9, r10, #1
	ldr r10, [fp, #-1048]
	ldr r8, =4
	mul r7, r9, r8
	add r9, r7, r10
	ldr r10, [r9]
	ldr r9, [fp, #-4]
	sub r8, r9, #1
	ldr r9, [fp, #-1040]
	ldr r7, =4
	mul r6, r8, r7
	add r8, r6, r9
	ldr r9, [r8]
	cmp r10, r9
	moveq r10, #1
	movne r10, #0
	beq .L397
	b .L411
.L391:
	ldr r10, [fp, #-8]
	add r9, r10, #1
	str r9, [fp, #-8]
	b .L381
.L394:
.L395:
	b .L391
.L396:
.L397:
	ldr r10, [fp, #-8]
	sub r9, r10, #1
	ldr r10, [fp, #-4]
	sub r8, r10, #1
	ldr r10, =16
	mul r7, r9, r10
	add r10, r7, r8
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-1032
	add r9, fp, r10
	ldr r10, [r9]
	add r9, r10, #1
	ldr r10, [fp, #-8]
	ldr r8, [fp, #-4]
	ldr r7, =16
	mul r6, r10, r7
	add r10, r6, r8
	ldr r8, =4
	mul r7, r10, r8
	add r10, r7, #-1032
	add r8, fp, r10
	str r9, [r8]
	b .L398
.L398:
	ldr r10, [fp, #-4]
	add r9, r10, #1
	str r9, [fp, #-4]
	b .L389
.L399:
	ldr r10, [fp, #-8]
	sub r9, r10, #1
	ldr r10, [fp, #-4]
	ldr r8, =16
	mul r7, r9, r8
	add r9, r7, r10
	ldr r10, =4
	mul r8, r9, r10
	add r10, r8, #-1032
	add r9, fp, r10
	ldr r10, [r9]
	ldr r9, [fp, #-8]
	ldr r8, [fp, #-4]
	sub r7, r8, #1
	ldr r8, =16
	mul r6, r9, r8
	add r9, r6, r7
	ldr r8, =4
	mul r7, r9, r8
	add r9, r7, #-1032
	add r8, fp, r9
	ldr r9, [r8]
	mov r1, r9
	mov r0, r10
	bl  MAX
	mov r10, r0
	ldr r9, [fp, #-8]
	ldr r8, [fp, #-4]
	ldr r7, =16
	mul r6, r9, r7
	add r9, r6, r8
	ldr r8, =4
	mul r7, r9, r8
	add r9, r7, #-1032
	add r8, fp, r9
	str r10, [r8]
	b .L398
.L410:
.L411:
	b .L399
.L412:
.Llongest_common_subseq_END:
	add sp, sp, #1048
	pop {r6, r7, r8, r9, r10, fp, lr}
	bx  lr

	.global main
	.type main , %function
main:
	push {r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #120
.L455:
	ldr r10, =0
	add r9, r10, #-120
	ldr r10, =8
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4
	add r9, r10, #-120
	ldr r10, =7
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8
	add r9, r10, #-120
	ldr r10, =4
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12
	add r9, r10, #-120
	ldr r10, =1
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16
	add r9, r10, #-120
	ldr r10, =2
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =20
	add r9, r10, #-120
	ldr r10, =7
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =24
	add r9, r10, #-120
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =28
	add r9, r10, #-120
	ldr r10, =1
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =32
	add r9, r10, #-120
	ldr r10, =9
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =36
	add r9, r10, #-120
	ldr r10, =3
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =40
	add r9, r10, #-120
	ldr r10, =4
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =44
	add r9, r10, #-120
	ldr r10, =8
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =48
	add r9, r10, #-120
	ldr r10, =3
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =52
	add r9, r10, #-120
	ldr r10, =7
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =56
	add r9, r10, #-120
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =0
	add r9, r10, #-60
	ldr r10, =3
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4
	add r9, r10, #-60
	ldr r10, =9
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8
	add r9, r10, #-60
	ldr r10, =7
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12
	add r9, r10, #-60
	ldr r10, =1
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16
	add r9, r10, #-60
	ldr r10, =4
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =20
	add r9, r10, #-60
	ldr r10, =2
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =24
	add r9, r10, #-60
	ldr r10, =4
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =28
	add r9, r10, #-60
	ldr r10, =3
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =32
	add r9, r10, #-60
	ldr r10, =6
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =36
	add r9, r10, #-60
	ldr r10, =8
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =40
	add r9, r10, #-60
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =44
	add r9, r10, #-60
	ldr r10, =1
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =48
	add r9, r10, #-60
	ldr r10, =5
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =0
	add r9, r10, #-120
	ldr r10, =15
	mov r1, r10
	add r10, fp, r9
	mov r0, r10
	bl  max_sum_nonadjacent
	mov r10, r0
	mov r0, r10
	bl  putint
	ldr r10, =10
	mov r0, r10
	bl  putch
	ldr r10, =0
	add r9, r10, #-120
	ldr r10, =0
	add r8, r10, #-60
	ldr r10, =15
	ldr r7, =13
	mov r3, r7
	add r8, fp, r8
	mov r2, r8
	mov r1, r10
	add r10, fp, r9
	mov r0, r10
	bl  longest_common_subseq
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
	add sp, sp, #120
	pop {r7, r8, r9, r10, fp, lr}
	bx  lr

