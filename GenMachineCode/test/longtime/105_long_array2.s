	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm
	.data
	.comm	a,16384,4
	.text
	.global f1
	.type f1 , %function
f1:
	push {r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L4:
	str r0, [fp, #-4]
	ldr r10, =5
	ldr r9, =4
	mul r8, r10, r9
	ldr r10, addr_a_0
	add r9, r8, r10
	ldr r10, =4000
	str r10, [r9]
	ldr r10, =4000
	ldr r9, =4
	mul r8, r10, r9
	ldr r10, addr_a_0
	add r9, r8, r10
	ldr r10, =3
	str r10, [r9]
	ldr r10, =4095
	ldr r9, =4
	mul r8, r10, r9
	ldr r10, addr_a_0
	add r9, r8, r10
	ldr r10, =7
	str r10, [r9]
	ldr r10, =2216
	ldr r9, =4
	mul r8, r10, r9
	ldr r10, addr_a_0
	add r9, r8, r10
	ldr r10, [r9]
	add r9, r10, #9
	ldr r10, =4095
	ldr r8, =4
	mul r7, r10, r8
	ldr r10, addr_a_0
	add r8, r7, r10
	ldr r10, [r8]
	ldr r8, [fp, #-4]
	ldr r7, =4
	mul r6, r10, r7
	add r10, r6, r8
	str r9, [r10]
	ldr r10, =5
	ldr r9, =4
	mul r8, r10, r9
	ldr r10, addr_a_0
	add r9, r8, r10
	ldr r10, [r9]
	ldr r9, =4
	mul r8, r10, r9
	ldr r10, addr_a_0
	add r9, r8, r10
	ldr r10, [r9]
	mov r0, r10
	b .Lf1_END
.Lf1_END:
	add sp, sp, #4
	pop {r6, r7, r8, r9, r10, fp, lr}
	bx  lr

	.global main
	.type main , %function
main:
	push {r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #32768
.L34:
	ldr r10, =0
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =20
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =24
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =28
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =32
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =36
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =40
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =44
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =48
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =52
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =56
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =60
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =64
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =68
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =72
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =76
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =80
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =84
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =88
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =92
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =96
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =100
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =104
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =108
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =112
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =116
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =120
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =124
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =128
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =132
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =136
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =140
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =144
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =148
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =152
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =156
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =160
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =164
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =168
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =172
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =176
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =180
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =184
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =188
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =192
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =196
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =200
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =204
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =208
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =212
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =216
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =220
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =224
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =228
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =232
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =236
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =240
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =244
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =248
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =252
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =256
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =260
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =264
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =268
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =272
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =276
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =280
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =284
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =288
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =292
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =296
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =300
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =304
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =308
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =312
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =316
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =320
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =324
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =328
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =332
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =336
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =340
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =344
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =348
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =352
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =356
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =360
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =364
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =368
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =372
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =376
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =380
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =384
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =388
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =392
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =396
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =400
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =404
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =408
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =412
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =416
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =420
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =424
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =428
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =432
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =436
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =440
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =444
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =448
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =452
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =456
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =460
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =464
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =468
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =472
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =476
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =480
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =484
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =488
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =492
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =496
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =500
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =504
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =508
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =512
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =516
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =520
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =524
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =528
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =532
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =536
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =540
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =544
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =548
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =552
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =556
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =560
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =564
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =568
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =572
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =576
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =580
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =584
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =588
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =592
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =596
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =600
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =604
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =608
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =612
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =616
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =620
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =624
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =628
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =632
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =636
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =640
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =644
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =648
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =652
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =656
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =660
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =664
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =668
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =672
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =676
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =680
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =684
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =688
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =692
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =696
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =700
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =704
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =708
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =712
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =716
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =720
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =724
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =728
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =732
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =736
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =740
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =744
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =748
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =752
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =756
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =760
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =764
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =768
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =772
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =776
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =780
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =784
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =788
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =792
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =796
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =800
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =804
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =808
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =812
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =816
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =820
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =824
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =828
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =832
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =836
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =840
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =844
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =848
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =852
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =856
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =860
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =864
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =868
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =872
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =876
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =880
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =884
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =888
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =892
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =896
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =900
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =904
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =908
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =912
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =916
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =920
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =924
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =928
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =932
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =936
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =940
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =944
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =948
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =952
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =956
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =960
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =964
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =968
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =972
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =976
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =980
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =984
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =988
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =992
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =996
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1000
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1004
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1008
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1012
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1016
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1020
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1024
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1028
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1032
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1036
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1040
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1044
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1048
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1052
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1056
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1060
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1064
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1068
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1072
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1076
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1080
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1084
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1088
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1092
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1096
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1100
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1104
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1108
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1112
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1116
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1120
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1124
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1128
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1132
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1136
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1140
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1144
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1148
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1152
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1156
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1160
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1164
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1168
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1172
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1176
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1180
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1184
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1188
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1192
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1196
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1200
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1204
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1208
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1212
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1216
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1220
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1224
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1228
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1232
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1236
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1240
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1244
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1248
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1252
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1256
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1260
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1264
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1268
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1272
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1276
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1280
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1284
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1288
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1292
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1296
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1300
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1304
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1308
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1312
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1316
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1320
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1324
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1328
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1332
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1336
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1340
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1344
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1348
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1352
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1356
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1360
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1364
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1368
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1372
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1376
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1380
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1384
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1388
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1392
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1396
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1400
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1404
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1408
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1412
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1416
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1420
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1424
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1428
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1432
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1436
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1440
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1444
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1448
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1452
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1456
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1460
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1464
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1468
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1472
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1476
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1480
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1484
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1488
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1492
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1496
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1500
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1504
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1508
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1512
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1516
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1520
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1524
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1528
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1532
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1536
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1540
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1544
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1548
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1552
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1556
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1560
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1564
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1568
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1572
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1576
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1580
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1584
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1588
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1592
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1596
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1600
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1604
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1608
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1612
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1616
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1620
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1624
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1628
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1632
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1636
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1640
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1644
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1648
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1652
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1656
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1660
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1664
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1668
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1672
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1676
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1680
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1684
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1688
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1692
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1696
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1700
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1704
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1708
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1712
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1716
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1720
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1724
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1728
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1732
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1736
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1740
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1744
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1748
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1752
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1756
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1760
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1764
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1768
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1772
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1776
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1780
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1784
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1788
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1792
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1796
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1800
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1804
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1808
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1812
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1816
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1820
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1824
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1828
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1832
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1836
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1840
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1844
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1848
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1852
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1856
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1860
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1864
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1868
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1872
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1876
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1880
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1884
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1888
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1892
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1896
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1900
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1904
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1908
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1912
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1916
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1920
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1924
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1928
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1932
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1936
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1940
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1944
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1948
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1952
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1956
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1960
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1964
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1968
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1972
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1976
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1980
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1984
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1988
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1992
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1996
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2000
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2004
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2008
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2012
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2016
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2020
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2024
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2028
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2032
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2036
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2040
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2044
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2048
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2052
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2056
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2060
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2064
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2068
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2072
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2076
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2080
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2084
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2088
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2092
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2096
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2100
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2104
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2108
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2112
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2116
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2120
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2124
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2128
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2132
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2136
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2140
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2144
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2148
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2152
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2156
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2160
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2164
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2168
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2172
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2176
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2180
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2184
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2188
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2192
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2196
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2200
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2204
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2208
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2212
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2216
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2220
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2224
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2228
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2232
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2236
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2240
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2244
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2248
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2252
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2256
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2260
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2264
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2268
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2272
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2276
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2280
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2284
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2288
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2292
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2296
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2300
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2304
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2308
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2312
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2316
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2320
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2324
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2328
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2332
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2336
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2340
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2344
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2348
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2352
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2356
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2360
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2364
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2368
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2372
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2376
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2380
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2384
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2388
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2392
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2396
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2400
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2404
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2408
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2412
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2416
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2420
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2424
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2428
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2432
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2436
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2440
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2444
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2448
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2452
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2456
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2460
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2464
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2468
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2472
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2476
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2480
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2484
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2488
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2492
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2496
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2500
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2504
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2508
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2512
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2516
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2520
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2524
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2528
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2532
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2536
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2540
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2544
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2548
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2552
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2556
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2560
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2564
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2568
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2572
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2576
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2580
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2584
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2588
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2592
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2596
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2600
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2604
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2608
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2612
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2616
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2620
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2624
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2628
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2632
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2636
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2640
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2644
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2648
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2652
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2656
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2660
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2664
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2668
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2672
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2676
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2680
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2684
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2688
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2692
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2696
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2700
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2704
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2708
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2712
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2716
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2720
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2724
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2728
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2732
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2736
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2740
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2744
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2748
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2752
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2756
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2760
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2764
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2768
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2772
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2776
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2780
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2784
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2788
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2792
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2796
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2800
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2804
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2808
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2812
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2816
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2820
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2824
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2828
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2832
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2836
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2840
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2844
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2848
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2852
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2856
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2860
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2864
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2868
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2872
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2876
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2880
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2884
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2888
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2892
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2896
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2900
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2904
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2908
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2912
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2916
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2920
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2924
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2928
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2932
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2936
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2940
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2944
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2948
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2952
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2956
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2960
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2964
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2968
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2972
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2976
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2980
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2984
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2988
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2992
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2996
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3000
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3004
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3008
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3012
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3016
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3020
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3024
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3028
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3032
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3036
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3040
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3044
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3048
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3052
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3056
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3060
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3064
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3068
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3072
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3076
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3080
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3084
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3088
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3092
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3096
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3100
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3104
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3108
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3112
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3116
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3120
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3124
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3128
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3132
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3136
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3140
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3144
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3148
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3152
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3156
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3160
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3164
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3168
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3172
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3176
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3180
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3184
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3188
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3192
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3196
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3200
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3204
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3208
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3212
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3216
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3220
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3224
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3228
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3232
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3236
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3240
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3244
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3248
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3252
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3256
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3260
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3264
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3268
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3272
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3276
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3280
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3284
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3288
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3292
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3296
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3300
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3304
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3308
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3312
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3316
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3320
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3324
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3328
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3332
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3336
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3340
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3344
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3348
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3352
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3356
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3360
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3364
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3368
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3372
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3376
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3380
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3384
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3388
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3392
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3396
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3400
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3404
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3408
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3412
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3416
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3420
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3424
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3428
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3432
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3436
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3440
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3444
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3448
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3452
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3456
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3460
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3464
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3468
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3472
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3476
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3480
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3484
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3488
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3492
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3496
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3500
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3504
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3508
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3512
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3516
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3520
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3524
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3528
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3532
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3536
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3540
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3544
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3548
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3552
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3556
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3560
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3564
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3568
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3572
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3576
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3580
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3584
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3588
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3592
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3596
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3600
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3604
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3608
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3612
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3616
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3620
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3624
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3628
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3632
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3636
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3640
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3644
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3648
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3652
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3656
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3660
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3664
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3668
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3672
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3676
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3680
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3684
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3688
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3692
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3696
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3700
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3704
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3708
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3712
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3716
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3720
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3724
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3728
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3732
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3736
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3740
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3744
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3748
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3752
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3756
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3760
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3764
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3768
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3772
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3776
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3780
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3784
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3788
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3792
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3796
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3800
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3804
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3808
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3812
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3816
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3820
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3824
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3828
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3832
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3836
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3840
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3844
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3848
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3852
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3856
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3860
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3864
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3868
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3872
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3876
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3880
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3884
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3888
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3892
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3896
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3900
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3904
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3908
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3912
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3916
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3920
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3924
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3928
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3932
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3936
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3940
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3944
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3948
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3952
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3956
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3960
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3964
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3968
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3972
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3976
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3980
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3984
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3988
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3992
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3996
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4000
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4004
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4008
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4012
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4016
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4020
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4024
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4028
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4032
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4036
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4040
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4044
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4048
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4052
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4056
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4060
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4064
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4068
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4072
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4076
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4080
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4084
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4088
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4092
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4096
	add r9, r10, #-32768
	ldr r10, =1
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4100
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4104
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4108
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4112
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4116
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4120
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4124
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4128
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4132
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4136
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4140
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4144
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4148
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4152
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4156
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4160
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4164
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4168
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4172
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4176
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4180
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4184
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4188
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4192
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4196
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4200
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4204
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4208
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4212
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4216
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4220
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4224
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4228
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4232
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4236
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4240
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4244
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4248
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4252
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4256
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4260
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4264
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4268
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4272
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4276
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4280
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4284
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4288
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4292
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4296
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4300
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4304
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4308
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4312
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4316
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4320
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4324
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4328
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4332
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4336
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4340
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4344
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4348
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4352
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4356
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4360
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4364
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4368
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4372
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4376
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4380
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4384
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4388
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4392
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4396
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4400
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4404
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4408
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4412
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4416
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4420
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4424
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4428
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4432
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4436
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4440
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4444
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4448
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4452
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4456
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4460
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4464
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4468
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4472
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4476
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4480
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4484
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4488
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4492
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4496
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4500
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4504
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4508
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4512
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4516
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4520
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4524
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4528
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4532
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4536
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4540
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4544
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4548
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4552
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4556
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4560
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4564
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4568
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4572
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4576
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4580
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4584
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4588
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4592
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4596
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4600
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4604
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4608
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4612
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4616
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4620
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4624
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4628
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4632
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4636
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4640
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4644
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4648
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4652
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4656
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4660
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4664
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4668
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4672
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4676
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4680
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4684
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4688
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4692
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4696
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4700
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4704
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4708
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4712
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4716
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4720
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4724
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4728
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4732
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4736
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4740
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4744
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4748
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4752
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4756
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4760
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4764
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4768
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4772
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4776
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4780
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4784
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4788
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4792
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4796
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4800
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4804
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4808
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4812
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4816
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4820
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4824
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4828
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4832
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4836
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4840
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4844
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4848
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4852
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4856
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4860
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4864
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4868
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4872
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4876
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4880
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4884
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4888
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4892
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4896
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4900
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4904
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4908
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4912
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4916
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4920
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4924
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4928
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4932
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4936
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4940
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4944
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4948
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4952
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4956
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4960
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4964
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4968
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4972
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4976
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4980
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4984
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4988
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4992
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4996
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5000
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5004
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5008
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5012
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5016
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5020
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5024
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5028
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5032
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5036
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5040
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5044
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5048
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5052
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5056
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5060
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5064
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5068
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5072
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5076
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5080
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5084
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5088
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5092
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5096
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5100
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5104
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5108
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5112
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5116
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5120
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5124
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5128
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5132
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5136
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5140
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5144
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5148
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5152
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5156
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5160
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5164
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5168
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5172
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5176
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5180
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5184
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5188
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5192
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5196
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5200
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5204
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5208
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5212
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5216
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5220
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5224
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5228
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5232
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5236
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5240
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5244
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5248
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5252
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5256
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5260
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5264
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5268
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5272
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5276
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5280
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5284
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5288
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5292
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5296
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5300
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5304
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5308
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5312
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5316
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5320
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5324
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5328
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5332
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5336
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5340
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5344
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5348
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5352
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5356
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5360
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5364
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5368
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5372
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5376
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5380
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5384
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5388
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5392
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5396
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5400
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5404
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5408
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5412
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5416
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5420
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5424
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5428
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5432
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5436
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5440
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5444
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5448
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5452
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5456
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5460
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5464
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5468
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5472
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5476
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5480
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5484
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5488
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5492
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5496
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5500
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5504
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5508
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5512
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5516
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5520
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5524
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5528
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5532
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5536
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5540
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5544
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5548
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5552
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5556
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5560
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5564
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5568
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5572
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5576
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5580
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5584
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5588
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5592
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5596
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5600
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5604
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5608
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5612
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5616
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5620
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5624
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5628
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5632
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5636
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5640
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5644
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5648
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5652
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5656
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5660
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5664
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5668
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5672
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5676
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5680
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5684
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5688
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5692
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5696
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5700
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5704
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5708
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5712
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5716
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5720
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5724
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5728
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5732
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5736
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5740
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5744
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5748
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5752
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5756
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5760
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5764
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5768
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5772
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5776
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5780
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5784
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5788
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5792
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5796
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5800
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5804
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5808
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5812
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5816
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5820
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5824
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5828
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5832
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5836
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5840
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5844
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5848
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5852
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5856
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5860
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5864
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5868
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5872
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5876
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5880
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5884
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5888
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5892
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5896
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5900
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5904
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5908
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5912
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5916
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5920
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5924
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5928
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5932
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5936
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5940
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5944
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5948
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5952
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5956
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5960
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5964
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5968
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5972
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5976
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5980
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5984
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5988
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5992
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5996
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6000
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6004
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6008
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6012
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6016
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6020
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6024
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6028
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6032
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6036
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6040
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6044
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6048
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6052
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6056
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6060
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6064
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6068
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6072
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6076
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6080
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6084
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6088
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6092
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6096
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6100
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6104
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6108
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6112
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6116
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6120
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6124
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6128
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6132
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6136
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6140
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6144
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6148
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6152
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6156
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6160
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6164
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6168
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6172
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6176
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6180
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6184
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6188
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6192
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6196
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6200
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6204
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6208
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6212
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6216
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6220
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6224
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6228
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6232
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6236
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6240
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6244
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6248
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6252
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6256
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6260
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6264
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6268
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6272
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6276
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6280
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6284
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6288
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6292
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6296
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6300
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6304
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6308
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6312
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6316
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6320
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6324
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6328
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6332
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6336
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6340
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6344
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6348
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6352
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6356
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6360
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6364
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6368
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6372
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6376
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6380
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6384
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6388
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6392
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6396
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6400
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6404
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6408
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6412
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6416
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6420
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6424
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6428
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6432
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6436
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6440
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6444
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6448
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6452
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6456
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6460
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6464
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6468
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6472
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6476
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6480
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6484
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6488
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6492
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6496
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6500
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6504
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6508
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6512
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6516
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6520
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6524
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6528
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6532
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6536
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6540
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6544
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6548
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6552
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6556
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6560
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6564
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6568
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6572
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6576
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6580
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6584
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6588
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6592
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6596
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6600
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6604
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6608
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6612
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6616
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6620
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6624
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6628
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6632
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6636
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6640
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6644
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6648
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6652
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6656
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6660
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6664
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6668
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6672
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6676
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6680
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6684
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6688
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6692
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6696
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6700
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6704
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6708
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6712
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6716
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6720
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6724
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6728
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6732
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6736
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6740
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6744
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6748
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6752
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6756
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6760
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6764
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6768
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6772
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6776
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6780
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6784
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6788
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6792
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6796
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6800
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6804
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6808
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6812
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6816
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6820
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6824
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6828
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6832
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6836
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6840
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6844
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6848
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6852
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6856
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6860
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6864
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6868
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6872
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6876
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6880
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6884
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6888
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6892
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6896
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6900
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6904
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6908
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6912
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6916
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6920
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6924
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6928
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6932
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6936
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6940
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6944
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6948
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6952
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6956
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6960
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6964
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6968
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6972
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6976
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6980
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6984
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6988
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6992
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6996
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7000
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7004
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7008
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7012
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7016
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7020
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7024
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7028
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7032
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7036
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7040
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7044
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7048
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7052
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7056
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7060
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7064
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7068
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7072
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7076
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7080
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7084
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7088
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7092
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7096
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7100
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7104
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7108
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7112
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7116
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7120
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7124
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7128
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7132
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7136
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7140
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7144
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7148
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7152
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7156
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7160
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7164
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7168
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7172
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7176
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7180
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7184
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7188
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7192
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7196
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7200
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7204
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7208
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7212
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7216
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7220
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7224
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7228
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7232
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7236
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7240
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7244
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7248
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7252
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7256
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7260
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7264
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7268
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7272
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7276
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7280
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7284
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7288
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7292
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7296
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7300
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7304
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7308
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7312
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7316
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7320
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7324
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7328
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7332
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7336
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7340
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7344
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7348
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7352
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7356
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7360
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7364
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7368
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7372
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7376
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7380
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7384
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7388
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7392
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7396
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7400
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7404
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7408
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7412
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7416
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7420
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7424
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7428
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7432
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7436
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7440
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7444
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7448
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7452
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7456
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7460
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7464
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7468
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7472
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7476
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7480
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7484
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7488
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7492
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7496
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7500
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7504
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7508
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7512
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7516
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7520
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7524
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7528
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7532
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7536
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7540
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7544
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7548
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7552
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7556
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7560
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7564
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7568
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7572
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7576
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7580
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7584
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7588
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7592
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7596
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7600
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7604
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7608
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7612
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7616
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7620
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7624
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7628
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7632
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7636
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7640
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7644
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7648
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7652
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7656
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7660
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7664
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7668
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7672
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7676
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7680
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7684
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7688
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7692
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7696
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7700
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7704
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7708
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7712
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7716
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7720
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7724
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7728
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7732
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7736
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7740
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7744
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7748
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7752
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7756
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7760
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7764
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7768
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7772
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7776
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7780
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7784
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7788
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7792
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7796
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7800
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7804
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7808
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7812
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7816
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7820
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7824
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7828
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7832
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7836
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7840
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7844
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7848
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7852
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7856
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7860
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7864
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7868
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7872
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7876
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7880
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7884
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7888
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7892
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7896
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7900
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7904
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7908
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7912
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7916
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7920
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7924
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7928
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7932
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7936
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7940
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7944
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7948
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7952
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7956
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7960
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7964
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7968
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7972
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7976
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7980
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7984
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7988
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7992
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7996
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8000
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8004
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8008
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8012
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8016
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8020
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8024
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8028
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8032
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8036
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8040
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8044
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8048
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8052
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8056
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8060
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8064
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8068
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8072
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8076
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8080
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8084
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8088
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8092
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8096
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8100
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8104
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8108
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8112
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8116
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8120
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8124
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8128
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8132
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8136
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8140
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8144
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8148
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8152
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8156
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8160
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8164
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8168
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8172
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8176
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8180
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8184
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8188
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8192
	add r9, r10, #-32768
	ldr r10, =2
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8196
	add r9, r10, #-32768
	ldr r10, =3
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8200
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8204
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8208
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8212
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8216
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8220
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8224
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8228
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8232
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8236
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8240
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8244
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8248
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8252
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8256
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8260
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8264
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8268
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8272
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8276
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8280
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8284
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8288
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8292
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8296
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8300
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8304
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8308
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8312
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8316
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8320
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8324
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8328
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8332
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8336
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8340
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8344
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8348
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8352
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8356
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8360
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8364
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8368
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8372
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8376
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8380
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8384
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8388
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8392
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8396
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8400
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8404
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8408
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8412
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8416
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8420
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8424
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8428
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8432
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8436
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8440
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8444
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8448
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8452
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8456
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8460
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8464
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8468
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8472
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8476
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8480
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8484
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8488
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8492
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8496
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8500
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8504
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8508
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8512
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8516
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8520
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8524
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8528
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8532
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8536
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8540
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8544
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8548
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8552
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8556
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8560
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8564
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8568
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8572
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8576
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8580
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8584
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8588
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8592
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8596
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8600
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8604
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8608
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8612
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8616
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8620
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8624
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8628
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8632
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8636
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8640
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8644
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8648
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8652
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8656
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8660
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8664
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8668
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8672
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8676
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8680
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8684
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8688
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8692
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8696
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8700
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8704
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8708
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8712
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8716
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8720
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8724
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8728
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8732
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8736
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8740
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8744
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8748
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8752
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8756
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8760
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8764
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8768
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8772
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8776
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8780
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8784
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8788
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8792
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8796
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8800
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8804
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8808
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8812
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8816
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8820
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8824
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8828
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8832
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8836
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8840
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8844
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8848
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8852
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8856
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8860
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8864
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8868
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8872
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8876
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8880
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8884
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8888
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8892
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8896
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8900
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8904
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8908
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8912
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8916
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8920
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8924
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8928
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8932
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8936
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8940
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8944
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8948
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8952
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8956
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8960
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8964
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8968
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8972
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8976
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8980
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8984
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8988
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8992
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8996
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9000
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9004
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9008
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9012
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9016
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9020
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9024
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9028
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9032
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9036
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9040
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9044
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9048
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9052
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9056
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9060
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9064
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9068
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9072
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9076
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9080
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9084
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9088
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9092
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9096
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9100
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9104
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9108
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9112
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9116
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9120
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9124
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9128
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9132
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9136
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9140
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9144
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9148
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9152
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9156
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9160
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9164
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9168
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9172
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9176
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9180
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9184
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9188
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9192
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9196
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9200
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9204
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9208
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9212
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9216
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9220
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9224
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9228
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9232
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9236
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9240
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9244
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9248
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9252
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9256
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9260
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9264
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9268
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9272
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9276
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9280
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9284
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9288
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9292
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9296
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9300
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9304
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9308
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9312
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9316
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9320
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9324
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9328
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9332
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9336
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9340
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9344
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9348
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9352
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9356
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9360
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9364
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9368
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9372
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9376
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9380
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9384
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9388
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9392
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9396
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9400
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9404
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9408
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9412
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9416
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9420
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9424
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9428
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9432
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9436
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9440
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9444
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9448
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9452
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9456
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9460
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9464
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9468
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9472
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9476
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9480
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9484
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9488
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9492
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9496
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9500
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9504
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9508
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9512
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9516
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9520
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9524
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9528
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9532
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9536
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9540
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9544
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9548
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9552
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9556
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9560
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9564
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9568
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9572
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9576
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9580
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9584
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9588
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9592
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9596
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9600
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9604
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9608
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9612
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9616
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9620
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9624
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9628
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9632
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9636
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9640
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9644
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9648
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9652
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9656
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9660
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9664
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9668
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9672
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9676
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9680
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9684
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9688
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9692
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9696
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9700
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9704
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9708
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9712
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9716
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9720
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9724
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9728
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9732
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9736
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9740
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9744
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9748
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9752
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9756
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9760
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9764
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9768
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9772
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9776
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9780
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9784
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9788
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9792
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9796
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9800
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9804
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9808
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9812
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9816
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9820
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9824
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9828
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9832
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9836
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9840
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9844
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9848
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9852
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9856
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9860
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9864
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9868
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9872
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9876
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9880
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9884
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9888
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9892
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9896
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9900
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9904
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9908
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9912
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9916
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9920
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9924
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9928
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9932
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9936
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9940
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9944
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9948
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9952
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9956
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9960
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9964
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9968
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9972
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9976
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9980
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9984
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9988
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9992
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9996
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10000
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10004
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10008
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10012
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10016
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10020
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10024
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10028
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10032
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10036
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10040
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10044
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10048
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10052
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10056
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10060
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10064
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10068
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10072
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10076
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10080
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10084
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10088
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10092
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10096
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10100
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10104
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10108
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10112
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10116
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10120
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10124
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10128
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10132
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10136
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10140
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10144
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10148
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10152
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10156
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10160
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10164
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10168
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10172
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10176
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10180
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10184
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10188
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10192
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10196
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10200
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10204
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10208
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10212
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10216
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10220
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10224
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10228
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10232
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10236
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10240
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10244
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10248
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10252
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10256
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10260
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10264
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10268
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10272
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10276
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10280
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10284
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10288
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10292
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10296
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10300
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10304
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10308
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10312
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10316
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10320
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10324
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10328
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10332
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10336
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10340
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10344
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10348
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10352
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10356
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10360
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10364
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10368
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10372
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10376
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10380
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10384
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10388
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10392
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10396
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10400
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10404
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10408
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10412
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10416
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10420
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10424
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10428
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10432
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10436
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10440
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10444
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10448
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10452
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10456
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10460
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10464
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10468
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10472
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10476
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10480
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10484
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10488
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10492
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10496
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10500
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10504
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10508
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10512
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10516
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10520
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10524
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10528
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10532
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10536
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10540
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10544
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10548
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10552
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10556
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10560
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10564
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10568
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10572
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10576
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10580
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10584
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10588
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10592
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10596
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10600
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10604
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10608
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10612
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10616
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10620
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10624
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10628
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10632
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10636
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10640
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10644
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10648
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10652
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10656
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10660
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10664
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10668
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10672
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10676
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10680
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10684
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10688
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10692
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10696
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10700
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10704
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10708
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10712
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10716
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10720
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10724
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10728
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10732
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10736
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10740
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10744
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10748
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10752
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10756
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10760
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10764
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10768
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10772
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10776
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10780
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10784
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10788
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10792
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10796
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10800
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10804
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10808
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10812
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10816
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10820
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10824
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10828
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10832
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10836
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10840
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10844
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10848
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10852
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10856
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10860
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10864
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10868
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10872
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10876
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10880
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10884
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10888
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10892
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10896
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10900
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10904
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10908
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10912
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10916
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10920
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10924
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10928
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10932
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10936
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10940
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10944
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10948
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10952
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10956
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10960
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10964
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10968
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10972
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10976
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10980
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10984
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10988
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10992
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10996
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11000
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11004
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11008
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11012
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11016
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11020
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11024
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11028
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11032
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11036
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11040
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11044
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11048
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11052
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11056
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11060
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11064
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11068
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11072
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11076
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11080
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11084
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11088
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11092
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11096
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11100
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11104
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11108
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11112
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11116
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11120
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11124
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11128
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11132
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11136
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11140
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11144
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11148
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11152
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11156
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11160
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11164
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11168
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11172
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11176
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11180
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11184
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11188
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11192
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11196
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11200
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11204
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11208
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11212
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11216
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11220
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11224
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11228
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11232
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11236
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11240
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11244
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11248
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11252
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11256
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11260
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11264
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11268
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11272
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11276
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11280
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11284
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11288
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11292
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11296
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11300
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11304
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11308
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11312
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11316
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11320
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11324
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11328
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11332
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11336
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11340
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11344
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11348
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11352
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11356
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11360
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11364
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11368
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11372
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11376
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11380
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11384
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11388
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11392
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11396
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11400
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11404
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11408
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11412
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11416
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11420
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11424
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11428
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11432
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11436
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11440
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11444
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11448
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11452
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11456
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11460
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11464
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11468
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11472
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11476
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11480
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11484
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11488
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11492
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11496
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11500
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11504
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11508
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11512
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11516
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11520
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11524
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11528
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11532
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11536
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11540
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11544
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11548
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11552
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11556
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11560
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11564
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11568
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11572
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11576
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11580
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11584
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11588
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11592
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11596
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11600
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11604
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11608
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11612
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11616
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11620
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11624
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11628
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11632
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11636
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11640
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11644
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11648
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11652
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11656
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11660
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11664
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11668
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11672
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11676
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11680
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11684
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11688
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11692
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11696
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11700
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11704
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11708
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11712
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11716
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11720
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11724
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11728
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11732
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11736
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11740
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11744
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11748
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11752
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11756
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11760
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11764
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11768
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11772
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11776
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11780
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11784
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11788
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11792
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11796
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11800
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11804
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11808
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11812
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11816
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11820
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11824
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11828
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11832
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11836
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11840
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11844
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11848
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11852
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11856
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11860
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11864
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11868
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11872
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11876
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11880
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11884
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11888
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11892
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11896
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11900
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11904
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11908
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11912
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11916
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11920
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11924
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11928
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11932
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11936
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11940
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11944
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11948
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11952
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11956
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11960
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11964
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11968
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11972
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11976
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11980
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11984
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11988
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11992
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11996
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12000
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12004
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12008
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12012
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12016
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12020
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12024
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12028
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12032
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12036
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12040
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12044
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12048
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12052
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12056
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12060
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12064
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12068
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12072
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12076
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12080
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12084
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12088
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12092
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12096
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12100
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12104
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12108
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12112
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12116
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12120
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12124
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12128
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12132
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12136
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12140
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12144
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12148
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12152
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12156
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12160
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12164
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12168
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12172
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12176
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12180
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12184
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12188
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12192
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12196
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12200
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12204
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12208
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12212
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12216
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12220
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12224
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12228
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12232
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12236
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12240
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12244
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12248
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12252
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12256
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12260
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12264
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12268
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12272
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12276
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12280
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12284
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12288
	add r9, r10, #-32768
	ldr r10, =4
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12292
	add r9, r10, #-32768
	ldr r10, =5
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12296
	add r9, r10, #-32768
	ldr r10, =6
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12300
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12304
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12308
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12312
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12316
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12320
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12324
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12328
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12332
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12336
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12340
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12344
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12348
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12352
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12356
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12360
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12364
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12368
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12372
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12376
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12380
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12384
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12388
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12392
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12396
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12400
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12404
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12408
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12412
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12416
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12420
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12424
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12428
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12432
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12436
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12440
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12444
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12448
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12452
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12456
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12460
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12464
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12468
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12472
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12476
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12480
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12484
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12488
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12492
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12496
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12500
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12504
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12508
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12512
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12516
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12520
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12524
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12528
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12532
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12536
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12540
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12544
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12548
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12552
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12556
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12560
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12564
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12568
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12572
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12576
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12580
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12584
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12588
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12592
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12596
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12600
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12604
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12608
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12612
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12616
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12620
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12624
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12628
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12632
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12636
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12640
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12644
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12648
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12652
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12656
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12660
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12664
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12668
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12672
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12676
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12680
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12684
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12688
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12692
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12696
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12700
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12704
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12708
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12712
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12716
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12720
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12724
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12728
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12732
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12736
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12740
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12744
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12748
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12752
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12756
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12760
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12764
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12768
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12772
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12776
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12780
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12784
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12788
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12792
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12796
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12800
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12804
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12808
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12812
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12816
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12820
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12824
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12828
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12832
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12836
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12840
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12844
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12848
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12852
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12856
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12860
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12864
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12868
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12872
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12876
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12880
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12884
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12888
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12892
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12896
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12900
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12904
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12908
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12912
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12916
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12920
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12924
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12928
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12932
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12936
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12940
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12944
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12948
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12952
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12956
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12960
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12964
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12968
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12972
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12976
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12980
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12984
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12988
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12992
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12996
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13000
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13004
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13008
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13012
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13016
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13020
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13024
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13028
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13032
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13036
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13040
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13044
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13048
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13052
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13056
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13060
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13064
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13068
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13072
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13076
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13080
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13084
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13088
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13092
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13096
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13100
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13104
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13108
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13112
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13116
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13120
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13124
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13128
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13132
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13136
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13140
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13144
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13148
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13152
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13156
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13160
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13164
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13168
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13172
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13176
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13180
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13184
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13188
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13192
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13196
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13200
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13204
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13208
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13212
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13216
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13220
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13224
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13228
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13232
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13236
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13240
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13244
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13248
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13252
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13256
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13260
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13264
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13268
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13272
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13276
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13280
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13284
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13288
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13292
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13296
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13300
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13304
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13308
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13312
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13316
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13320
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13324
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13328
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13332
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13336
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13340
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13344
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13348
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13352
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13356
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13360
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13364
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13368
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13372
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13376
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13380
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13384
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13388
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13392
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13396
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13400
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13404
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13408
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13412
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13416
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13420
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13424
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13428
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13432
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13436
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13440
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13444
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13448
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13452
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13456
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13460
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13464
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13468
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13472
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13476
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13480
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13484
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13488
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13492
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13496
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13500
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13504
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13508
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13512
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13516
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13520
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13524
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13528
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13532
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13536
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13540
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13544
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13548
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13552
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13556
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13560
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13564
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13568
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13572
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13576
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13580
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13584
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13588
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13592
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13596
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13600
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13604
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13608
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13612
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13616
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13620
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13624
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13628
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13632
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13636
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13640
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13644
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13648
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13652
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13656
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13660
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13664
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13668
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13672
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13676
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13680
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13684
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13688
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13692
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13696
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13700
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13704
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13708
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13712
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13716
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13720
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13724
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13728
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13732
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13736
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13740
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13744
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13748
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13752
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13756
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13760
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13764
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13768
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13772
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13776
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13780
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13784
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13788
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13792
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13796
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13800
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13804
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13808
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13812
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13816
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13820
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13824
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13828
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13832
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13836
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13840
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13844
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13848
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13852
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13856
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13860
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13864
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13868
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13872
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13876
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13880
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13884
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13888
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13892
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13896
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13900
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13904
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13908
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13912
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13916
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13920
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13924
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13928
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13932
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13936
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13940
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13944
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13948
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13952
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13956
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13960
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13964
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13968
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13972
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13976
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13980
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13984
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13988
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13992
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13996
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14000
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14004
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14008
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14012
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14016
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14020
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14024
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14028
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14032
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14036
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14040
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14044
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14048
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14052
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14056
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14060
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14064
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14068
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14072
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14076
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14080
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14084
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14088
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14092
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14096
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14100
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14104
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14108
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14112
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14116
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14120
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14124
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14128
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14132
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14136
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14140
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14144
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14148
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14152
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14156
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14160
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14164
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14168
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14172
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14176
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14180
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14184
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14188
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14192
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14196
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14200
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14204
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14208
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14212
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14216
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14220
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14224
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14228
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14232
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14236
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14240
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14244
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14248
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14252
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14256
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14260
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14264
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14268
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14272
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14276
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14280
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14284
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14288
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14292
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14296
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14300
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14304
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14308
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14312
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14316
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14320
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14324
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14328
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14332
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14336
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14340
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14344
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14348
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14352
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14356
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14360
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14364
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14368
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14372
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14376
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14380
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14384
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14388
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14392
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14396
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14400
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14404
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14408
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14412
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14416
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14420
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14424
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14428
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14432
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14436
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14440
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14444
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14448
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14452
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14456
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14460
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14464
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14468
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14472
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14476
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14480
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14484
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14488
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14492
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14496
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14500
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14504
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14508
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14512
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14516
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14520
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14524
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14528
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14532
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14536
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14540
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14544
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14548
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14552
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14556
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14560
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14564
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14568
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14572
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14576
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14580
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14584
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14588
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14592
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14596
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14600
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14604
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14608
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14612
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14616
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14620
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14624
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14628
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14632
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14636
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14640
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14644
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14648
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14652
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14656
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14660
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14664
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14668
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14672
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14676
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14680
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14684
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14688
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14692
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14696
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14700
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14704
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14708
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14712
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14716
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14720
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14724
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14728
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14732
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14736
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14740
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14744
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14748
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14752
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14756
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14760
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14764
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14768
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14772
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14776
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14780
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14784
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14788
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14792
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14796
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14800
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14804
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14808
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14812
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14816
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14820
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14824
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14828
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14832
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14836
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14840
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14844
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14848
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14852
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14856
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14860
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14864
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14868
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14872
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14876
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14880
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14884
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14888
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14892
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14896
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14900
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14904
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14908
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14912
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14916
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14920
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14924
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14928
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14932
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14936
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14940
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14944
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14948
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14952
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14956
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14960
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14964
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14968
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14972
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14976
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14980
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14984
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14988
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14992
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14996
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15000
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15004
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15008
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15012
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15016
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15020
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15024
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15028
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15032
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15036
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15040
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15044
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15048
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15052
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15056
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15060
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15064
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15068
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15072
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15076
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15080
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15084
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15088
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15092
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15096
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15100
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15104
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15108
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15112
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15116
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15120
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15124
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15128
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15132
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15136
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15140
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15144
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15148
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15152
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15156
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15160
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15164
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15168
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15172
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15176
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15180
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15184
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15188
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15192
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15196
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15200
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15204
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15208
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15212
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15216
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15220
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15224
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15228
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15232
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15236
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15240
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15244
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15248
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15252
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15256
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15260
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15264
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15268
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15272
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15276
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15280
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15284
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15288
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15292
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15296
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15300
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15304
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15308
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15312
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15316
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15320
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15324
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15328
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15332
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15336
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15340
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15344
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15348
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15352
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15356
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15360
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15364
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15368
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15372
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15376
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15380
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15384
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15388
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15392
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15396
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15400
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15404
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15408
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15412
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15416
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15420
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15424
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15428
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15432
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15436
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15440
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15444
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15448
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15452
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15456
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15460
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15464
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15468
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15472
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15476
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15480
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15484
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15488
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15492
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15496
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15500
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15504
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15508
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15512
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15516
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15520
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15524
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15528
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15532
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15536
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15540
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15544
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15548
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15552
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15556
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15560
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15564
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15568
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15572
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15576
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15580
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15584
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15588
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15592
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15596
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15600
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15604
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15608
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15612
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15616
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15620
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15624
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15628
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15632
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15636
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15640
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15644
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15648
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15652
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15656
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15660
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15664
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15668
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15672
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15676
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15680
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15684
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15688
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15692
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15696
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15700
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15704
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15708
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15712
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15716
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15720
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15724
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15728
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15732
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15736
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15740
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15744
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15748
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15752
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15756
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15760
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15764
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15768
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15772
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15776
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15780
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15784
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15788
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15792
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15796
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15800
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15804
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15808
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15812
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15816
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15820
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15824
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15828
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15832
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15836
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15840
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15844
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15848
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15852
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15856
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15860
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15864
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15868
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15872
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15876
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15880
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15884
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15888
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15892
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15896
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15900
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15904
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15908
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15912
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15916
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15920
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15924
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15928
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15932
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15936
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15940
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15944
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15948
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15952
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15956
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15960
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15964
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15968
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15972
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15976
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15980
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15984
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15988
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15992
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15996
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16000
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16004
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16008
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16012
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16016
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16020
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16024
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16028
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16032
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16036
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16040
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16044
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16048
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16052
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16056
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16060
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16064
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16068
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16072
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16076
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16080
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16084
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16088
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16092
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16096
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16100
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16104
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16108
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16112
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16116
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16120
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16124
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16128
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16132
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16136
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16140
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16144
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16148
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16152
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16156
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16160
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16164
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16168
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16172
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16176
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16180
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16184
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16188
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16192
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16196
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16200
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16204
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16208
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16212
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16216
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16220
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16224
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16228
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16232
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16236
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16240
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16244
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16248
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16252
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16256
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16260
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16264
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16268
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16272
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16276
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16280
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16284
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16288
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16292
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16296
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16300
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16304
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16308
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16312
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16316
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16320
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16324
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16328
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16332
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16336
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16340
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16344
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16348
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16352
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16356
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16360
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16364
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16368
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16372
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16376
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16380
	add r9, r10, #-32768
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =0
	add r9, r10, #-16384
	ldr r10, =1
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4
	add r9, r10, #-16384
	ldr r10, =2
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16
	add r9, r10, #-16384
	ldr r10, =3
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =20
	add r9, r10, #-16384
	ldr r10, =4
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =24
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =28
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =32
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =36
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =40
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =44
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =48
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =52
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =56
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =60
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =64
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =68
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =72
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =76
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =80
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =84
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =88
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =92
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =96
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =100
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =104
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =108
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =112
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =116
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =120
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =124
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =128
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =132
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =136
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =140
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =144
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =148
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =152
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =156
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =160
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =164
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =168
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =172
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =176
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =180
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =184
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =188
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =192
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =196
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =200
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =204
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =208
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =212
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =216
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =220
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =224
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =228
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =232
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =236
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =240
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =244
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =248
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =252
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =256
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =260
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =264
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =268
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =272
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =276
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =280
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =284
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =288
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =292
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =296
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =300
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =304
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =308
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =312
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =316
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =320
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =324
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =328
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =332
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =336
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =340
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =344
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =348
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =352
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =356
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =360
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =364
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =368
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =372
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =376
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =380
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =384
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =388
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =392
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =396
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =400
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =404
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =408
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =412
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =416
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =420
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =424
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =428
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =432
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =436
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =440
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =444
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =448
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =452
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =456
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =460
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =464
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =468
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =472
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =476
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =480
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =484
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =488
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =492
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =496
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =500
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =504
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =508
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =512
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =516
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =520
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =524
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =528
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =532
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =536
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =540
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =544
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =548
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =552
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =556
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =560
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =564
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =568
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =572
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =576
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =580
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =584
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =588
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =592
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =596
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =600
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =604
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =608
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =612
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =616
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =620
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =624
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =628
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =632
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =636
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =640
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =644
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =648
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =652
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =656
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =660
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =664
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =668
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =672
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =676
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =680
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =684
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =688
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =692
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =696
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =700
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =704
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =708
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =712
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =716
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =720
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =724
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =728
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =732
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =736
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =740
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =744
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =748
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =752
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =756
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =760
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =764
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =768
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =772
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =776
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =780
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =784
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =788
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =792
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =796
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =800
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =804
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =808
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =812
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =816
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =820
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =824
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =828
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =832
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =836
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =840
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =844
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =848
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =852
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =856
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =860
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =864
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =868
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =872
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =876
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =880
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =884
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =888
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =892
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =896
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =900
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =904
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =908
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =912
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =916
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =920
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =924
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =928
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =932
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =936
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =940
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =944
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =948
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =952
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =956
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =960
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =964
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =968
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =972
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =976
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =980
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =984
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =988
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =992
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =996
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1000
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1004
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1008
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1012
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1016
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1020
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1024
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1028
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1032
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1036
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1040
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1044
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1048
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1052
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1056
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1060
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1064
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1068
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1072
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1076
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1080
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1084
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1088
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1092
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1096
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1100
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1104
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1108
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1112
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1116
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1120
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1124
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1128
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1132
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1136
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1140
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1144
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1148
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1152
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1156
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1160
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1164
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1168
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1172
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1176
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1180
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1184
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1188
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1192
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1196
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1200
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1204
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1208
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1212
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1216
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1220
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1224
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1228
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1232
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1236
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1240
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1244
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1248
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1252
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1256
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1260
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1264
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1268
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1272
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1276
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1280
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1284
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1288
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1292
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1296
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1300
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1304
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1308
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1312
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1316
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1320
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1324
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1328
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1332
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1336
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1340
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1344
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1348
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1352
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1356
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1360
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1364
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1368
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1372
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1376
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1380
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1384
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1388
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1392
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1396
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1400
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1404
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1408
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1412
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1416
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1420
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1424
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1428
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1432
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1436
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1440
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1444
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1448
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1452
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1456
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1460
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1464
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1468
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1472
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1476
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1480
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1484
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1488
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1492
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1496
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1500
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1504
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1508
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1512
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1516
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1520
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1524
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1528
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1532
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1536
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1540
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1544
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1548
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1552
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1556
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1560
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1564
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1568
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1572
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1576
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1580
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1584
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1588
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1592
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1596
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1600
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1604
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1608
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1612
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1616
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1620
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1624
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1628
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1632
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1636
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1640
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1644
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1648
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1652
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1656
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1660
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1664
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1668
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1672
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1676
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1680
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1684
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1688
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1692
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1696
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1700
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1704
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1708
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1712
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1716
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1720
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1724
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1728
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1732
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1736
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1740
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1744
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1748
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1752
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1756
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1760
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1764
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1768
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1772
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1776
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1780
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1784
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1788
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1792
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1796
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1800
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1804
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1808
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1812
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1816
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1820
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1824
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1828
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1832
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1836
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1840
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1844
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1848
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1852
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1856
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1860
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1864
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1868
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1872
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1876
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1880
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1884
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1888
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1892
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1896
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1900
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1904
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1908
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1912
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1916
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1920
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1924
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1928
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1932
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1936
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1940
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1944
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1948
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1952
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1956
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1960
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1964
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1968
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1972
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1976
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1980
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1984
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1988
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1992
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1996
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2000
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2004
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2008
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2012
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2016
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2020
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2024
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2028
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2032
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2036
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2040
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2044
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2048
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2052
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2056
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2060
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2064
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2068
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2072
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2076
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2080
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2084
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2088
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2092
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2096
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2100
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2104
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2108
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2112
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2116
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2120
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2124
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2128
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2132
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2136
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2140
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2144
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2148
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2152
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2156
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2160
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2164
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2168
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2172
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2176
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2180
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2184
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2188
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2192
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2196
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2200
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2204
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2208
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2212
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2216
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2220
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2224
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2228
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2232
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2236
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2240
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2244
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2248
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2252
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2256
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2260
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2264
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2268
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2272
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2276
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2280
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2284
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2288
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2292
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2296
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2300
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2304
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2308
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2312
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2316
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2320
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2324
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2328
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2332
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2336
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2340
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2344
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2348
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2352
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2356
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2360
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2364
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2368
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2372
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2376
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2380
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2384
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2388
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2392
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2396
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2400
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2404
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2408
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2412
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2416
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2420
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2424
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2428
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2432
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2436
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2440
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2444
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2448
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2452
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2456
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2460
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2464
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2468
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2472
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2476
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2480
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2484
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2488
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2492
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2496
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2500
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2504
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2508
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2512
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2516
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2520
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2524
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2528
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2532
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2536
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2540
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2544
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2548
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2552
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2556
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2560
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2564
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2568
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2572
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2576
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2580
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2584
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2588
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2592
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2596
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2600
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2604
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2608
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2612
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2616
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2620
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2624
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2628
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2632
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2636
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2640
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2644
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2648
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2652
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2656
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2660
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2664
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2668
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2672
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2676
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2680
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2684
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2688
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2692
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2696
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2700
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2704
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2708
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2712
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2716
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2720
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2724
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2728
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2732
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2736
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2740
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2744
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2748
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2752
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2756
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2760
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2764
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2768
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2772
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2776
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2780
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2784
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2788
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2792
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2796
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2800
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2804
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2808
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2812
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2816
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2820
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2824
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2828
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2832
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2836
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2840
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2844
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2848
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2852
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2856
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2860
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2864
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2868
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2872
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2876
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2880
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2884
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2888
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2892
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2896
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2900
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2904
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2908
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2912
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2916
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2920
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2924
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2928
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2932
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2936
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2940
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2944
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2948
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2952
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2956
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2960
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2964
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2968
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2972
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2976
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2980
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2984
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2988
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2992
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2996
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3000
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3004
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3008
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3012
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3016
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3020
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3024
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3028
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3032
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3036
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3040
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3044
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3048
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3052
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3056
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3060
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3064
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3068
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3072
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3076
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3080
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3084
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3088
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3092
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3096
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3100
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3104
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3108
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3112
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3116
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3120
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3124
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3128
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3132
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3136
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3140
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3144
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3148
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3152
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3156
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3160
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3164
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3168
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3172
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3176
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3180
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3184
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3188
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3192
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3196
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3200
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3204
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3208
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3212
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3216
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3220
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3224
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3228
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3232
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3236
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3240
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3244
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3248
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3252
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3256
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3260
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3264
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3268
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3272
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3276
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3280
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3284
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3288
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3292
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3296
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3300
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3304
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3308
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3312
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3316
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3320
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3324
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3328
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3332
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3336
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3340
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3344
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3348
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3352
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3356
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3360
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3364
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3368
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3372
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3376
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3380
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3384
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3388
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3392
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3396
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3400
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3404
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3408
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3412
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3416
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3420
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3424
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3428
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3432
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3436
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3440
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3444
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3448
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3452
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3456
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3460
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3464
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3468
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3472
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3476
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3480
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3484
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3488
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3492
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3496
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3500
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3504
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3508
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3512
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3516
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3520
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3524
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3528
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3532
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3536
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3540
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3544
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3548
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3552
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3556
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3560
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3564
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3568
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3572
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3576
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3580
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3584
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3588
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3592
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3596
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3600
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3604
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3608
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3612
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3616
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3620
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3624
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3628
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3632
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3636
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3640
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3644
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3648
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3652
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3656
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3660
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3664
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3668
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3672
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3676
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3680
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3684
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3688
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3692
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3696
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3700
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3704
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3708
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3712
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3716
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3720
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3724
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3728
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3732
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3736
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3740
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3744
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3748
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3752
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3756
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3760
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3764
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3768
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3772
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3776
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3780
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3784
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3788
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3792
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3796
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3800
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3804
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3808
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3812
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3816
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3820
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3824
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3828
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3832
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3836
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3840
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3844
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3848
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3852
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3856
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3860
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3864
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3868
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3872
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3876
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3880
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3884
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3888
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3892
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3896
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3900
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3904
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3908
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3912
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3916
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3920
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3924
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3928
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3932
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3936
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3940
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3944
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3948
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3952
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3956
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3960
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3964
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3968
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3972
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3976
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3980
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3984
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3988
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3992
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3996
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4000
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4004
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4008
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4012
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4016
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4020
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4024
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4028
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4032
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4036
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4040
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4044
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4048
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4052
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4056
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4060
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4064
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4068
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4072
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4076
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4080
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4084
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4088
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4092
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4096
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4100
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4104
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4108
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4112
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4116
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4120
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4124
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4128
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4132
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4136
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4140
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4144
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4148
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4152
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4156
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4160
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4164
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4168
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4172
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4176
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4180
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4184
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4188
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4192
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4196
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4200
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4204
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4208
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4212
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4216
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4220
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4224
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4228
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4232
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4236
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4240
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4244
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4248
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4252
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4256
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4260
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4264
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4268
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4272
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4276
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4280
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4284
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4288
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4292
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4296
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4300
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4304
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4308
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4312
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4316
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4320
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4324
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4328
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4332
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4336
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4340
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4344
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4348
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4352
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4356
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4360
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4364
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4368
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4372
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4376
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4380
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4384
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4388
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4392
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4396
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4400
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4404
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4408
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4412
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4416
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4420
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4424
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4428
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4432
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4436
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4440
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4444
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4448
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4452
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4456
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4460
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4464
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4468
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4472
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4476
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4480
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4484
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4488
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4492
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4496
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4500
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4504
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4508
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4512
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4516
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4520
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4524
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4528
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4532
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4536
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4540
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4544
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4548
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4552
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4556
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4560
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4564
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4568
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4572
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4576
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4580
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4584
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4588
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4592
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4596
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4600
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4604
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4608
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4612
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4616
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4620
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4624
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4628
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4632
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4636
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4640
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4644
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4648
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4652
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4656
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4660
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4664
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4668
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4672
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4676
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4680
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4684
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4688
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4692
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4696
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4700
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4704
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4708
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4712
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4716
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4720
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4724
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4728
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4732
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4736
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4740
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4744
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4748
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4752
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4756
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4760
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4764
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4768
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4772
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4776
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4780
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4784
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4788
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4792
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4796
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4800
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4804
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4808
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4812
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4816
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4820
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4824
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4828
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4832
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4836
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4840
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4844
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4848
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4852
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4856
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4860
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4864
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4868
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4872
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4876
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4880
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4884
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4888
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4892
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4896
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4900
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4904
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4908
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4912
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4916
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4920
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4924
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4928
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4932
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4936
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4940
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4944
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4948
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4952
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4956
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4960
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4964
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4968
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4972
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4976
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4980
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4984
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4988
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4992
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4996
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5000
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5004
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5008
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5012
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5016
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5020
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5024
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5028
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5032
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5036
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5040
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5044
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5048
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5052
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5056
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5060
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5064
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5068
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5072
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5076
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5080
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5084
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5088
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5092
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5096
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5100
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5104
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5108
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5112
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5116
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5120
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5124
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5128
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5132
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5136
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5140
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5144
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5148
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5152
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5156
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5160
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5164
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5168
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5172
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5176
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5180
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5184
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5188
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5192
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5196
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5200
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5204
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5208
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5212
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5216
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5220
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5224
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5228
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5232
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5236
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5240
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5244
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5248
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5252
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5256
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5260
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5264
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5268
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5272
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5276
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5280
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5284
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5288
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5292
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5296
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5300
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5304
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5308
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5312
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5316
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5320
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5324
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5328
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5332
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5336
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5340
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5344
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5348
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5352
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5356
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5360
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5364
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5368
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5372
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5376
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5380
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5384
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5388
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5392
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5396
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5400
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5404
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5408
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5412
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5416
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5420
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5424
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5428
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5432
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5436
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5440
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5444
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5448
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5452
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5456
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5460
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5464
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5468
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5472
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5476
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5480
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5484
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5488
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5492
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5496
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5500
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5504
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5508
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5512
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5516
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5520
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5524
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5528
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5532
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5536
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5540
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5544
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5548
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5552
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5556
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5560
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5564
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5568
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5572
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5576
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5580
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5584
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5588
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5592
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5596
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5600
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5604
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5608
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5612
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5616
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5620
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5624
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5628
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5632
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5636
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5640
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5644
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5648
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5652
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5656
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5660
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5664
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5668
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5672
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5676
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5680
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5684
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5688
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5692
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5696
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5700
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5704
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5708
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5712
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5716
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5720
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5724
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5728
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5732
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5736
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5740
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5744
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5748
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5752
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5756
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5760
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5764
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5768
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5772
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5776
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5780
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5784
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5788
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5792
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5796
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5800
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5804
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5808
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5812
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5816
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5820
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5824
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5828
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5832
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5836
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5840
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5844
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5848
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5852
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5856
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5860
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5864
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5868
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5872
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5876
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5880
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5884
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5888
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5892
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5896
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5900
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5904
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5908
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5912
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5916
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5920
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5924
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5928
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5932
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5936
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5940
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5944
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5948
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5952
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5956
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5960
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5964
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5968
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5972
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5976
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5980
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5984
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5988
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5992
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =5996
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6000
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6004
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6008
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6012
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6016
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6020
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6024
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6028
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6032
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6036
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6040
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6044
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6048
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6052
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6056
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6060
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6064
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6068
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6072
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6076
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6080
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6084
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6088
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6092
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6096
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6100
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6104
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6108
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6112
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6116
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6120
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6124
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6128
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6132
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6136
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6140
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6144
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6148
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6152
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6156
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6160
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6164
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6168
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6172
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6176
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6180
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6184
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6188
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6192
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6196
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6200
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6204
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6208
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6212
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6216
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6220
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6224
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6228
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6232
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6236
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6240
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6244
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6248
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6252
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6256
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6260
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6264
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6268
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6272
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6276
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6280
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6284
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6288
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6292
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6296
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6300
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6304
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6308
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6312
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6316
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6320
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6324
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6328
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6332
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6336
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6340
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6344
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6348
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6352
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6356
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6360
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6364
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6368
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6372
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6376
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6380
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6384
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6388
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6392
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6396
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6400
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6404
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6408
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6412
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6416
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6420
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6424
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6428
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6432
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6436
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6440
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6444
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6448
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6452
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6456
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6460
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6464
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6468
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6472
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6476
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6480
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6484
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6488
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6492
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6496
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6500
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6504
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6508
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6512
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6516
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6520
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6524
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6528
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6532
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6536
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6540
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6544
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6548
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6552
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6556
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6560
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6564
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6568
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6572
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6576
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6580
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6584
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6588
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6592
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6596
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6600
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6604
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6608
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6612
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6616
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6620
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6624
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6628
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6632
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6636
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6640
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6644
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6648
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6652
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6656
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6660
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6664
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6668
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6672
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6676
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6680
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6684
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6688
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6692
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6696
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6700
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6704
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6708
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6712
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6716
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6720
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6724
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6728
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6732
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6736
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6740
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6744
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6748
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6752
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6756
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6760
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6764
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6768
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6772
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6776
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6780
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6784
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6788
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6792
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6796
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6800
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6804
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6808
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6812
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6816
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6820
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6824
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6828
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6832
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6836
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6840
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6844
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6848
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6852
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6856
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6860
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6864
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6868
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6872
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6876
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6880
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6884
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6888
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6892
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6896
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6900
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6904
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6908
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6912
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6916
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6920
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6924
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6928
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6932
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6936
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6940
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6944
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6948
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6952
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6956
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6960
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6964
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6968
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6972
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6976
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6980
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6984
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6988
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6992
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =6996
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7000
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7004
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7008
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7012
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7016
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7020
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7024
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7028
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7032
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7036
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7040
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7044
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7048
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7052
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7056
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7060
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7064
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7068
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7072
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7076
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7080
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7084
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7088
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7092
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7096
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7100
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7104
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7108
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7112
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7116
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7120
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7124
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7128
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7132
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7136
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7140
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7144
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7148
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7152
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7156
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7160
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7164
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7168
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7172
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7176
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7180
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7184
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7188
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7192
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7196
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7200
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7204
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7208
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7212
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7216
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7220
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7224
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7228
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7232
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7236
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7240
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7244
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7248
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7252
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7256
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7260
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7264
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7268
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7272
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7276
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7280
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7284
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7288
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7292
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7296
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7300
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7304
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7308
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7312
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7316
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7320
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7324
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7328
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7332
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7336
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7340
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7344
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7348
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7352
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7356
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7360
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7364
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7368
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7372
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7376
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7380
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7384
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7388
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7392
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7396
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7400
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7404
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7408
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7412
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7416
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7420
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7424
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7428
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7432
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7436
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7440
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7444
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7448
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7452
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7456
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7460
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7464
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7468
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7472
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7476
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7480
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7484
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7488
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7492
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7496
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7500
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7504
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7508
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7512
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7516
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7520
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7524
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7528
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7532
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7536
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7540
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7544
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7548
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7552
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7556
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7560
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7564
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7568
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7572
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7576
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7580
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7584
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7588
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7592
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7596
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7600
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7604
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7608
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7612
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7616
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7620
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7624
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7628
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7632
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7636
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7640
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7644
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7648
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7652
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7656
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7660
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7664
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7668
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7672
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7676
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7680
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7684
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7688
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7692
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7696
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7700
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7704
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7708
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7712
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7716
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7720
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7724
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7728
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7732
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7736
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7740
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7744
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7748
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7752
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7756
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7760
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7764
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7768
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7772
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7776
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7780
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7784
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7788
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7792
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7796
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7800
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7804
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7808
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7812
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7816
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7820
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7824
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7828
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7832
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7836
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7840
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7844
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7848
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7852
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7856
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7860
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7864
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7868
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7872
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7876
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7880
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7884
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7888
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7892
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7896
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7900
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7904
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7908
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7912
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7916
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7920
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7924
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7928
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7932
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7936
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7940
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7944
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7948
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7952
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7956
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7960
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7964
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7968
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7972
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7976
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7980
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7984
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7988
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7992
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =7996
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8000
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8004
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8008
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8012
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8016
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8020
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8024
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8028
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8032
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8036
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8040
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8044
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8048
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8052
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8056
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8060
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8064
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8068
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8072
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8076
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8080
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8084
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8088
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8092
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8096
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8100
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8104
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8108
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8112
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8116
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8120
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8124
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8128
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8132
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8136
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8140
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8144
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8148
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8152
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8156
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8160
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8164
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8168
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8172
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8176
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8180
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8184
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8188
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8192
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8196
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8200
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8204
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8208
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8212
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8216
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8220
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8224
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8228
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8232
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8236
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8240
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8244
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8248
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8252
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8256
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8260
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8264
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8268
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8272
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8276
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8280
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8284
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8288
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8292
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8296
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8300
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8304
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8308
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8312
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8316
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8320
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8324
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8328
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8332
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8336
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8340
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8344
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8348
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8352
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8356
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8360
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8364
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8368
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8372
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8376
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8380
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8384
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8388
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8392
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8396
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8400
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8404
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8408
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8412
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8416
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8420
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8424
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8428
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8432
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8436
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8440
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8444
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8448
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8452
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8456
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8460
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8464
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8468
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8472
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8476
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8480
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8484
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8488
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8492
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8496
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8500
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8504
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8508
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8512
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8516
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8520
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8524
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8528
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8532
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8536
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8540
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8544
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8548
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8552
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8556
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8560
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8564
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8568
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8572
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8576
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8580
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8584
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8588
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8592
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8596
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8600
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8604
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8608
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8612
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8616
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8620
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8624
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8628
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8632
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8636
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8640
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8644
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8648
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8652
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8656
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8660
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8664
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8668
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8672
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8676
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8680
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8684
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8688
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8692
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8696
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8700
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8704
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8708
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8712
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8716
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8720
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8724
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8728
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8732
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8736
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8740
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8744
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8748
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8752
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8756
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8760
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8764
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8768
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8772
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8776
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8780
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8784
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8788
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8792
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8796
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8800
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8804
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8808
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8812
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8816
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8820
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8824
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8828
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8832
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8836
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8840
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8844
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8848
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8852
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8856
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8860
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8864
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8868
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8872
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8876
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8880
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8884
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8888
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8892
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8896
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8900
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8904
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8908
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8912
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8916
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8920
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8924
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8928
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8932
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8936
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8940
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8944
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8948
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8952
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8956
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8960
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8964
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8968
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8972
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8976
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8980
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8984
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8988
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8992
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8996
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9000
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9004
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9008
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9012
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9016
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9020
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9024
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9028
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9032
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9036
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9040
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9044
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9048
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9052
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9056
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9060
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9064
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9068
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9072
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9076
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9080
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9084
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9088
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9092
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9096
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9100
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9104
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9108
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9112
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9116
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9120
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9124
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9128
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9132
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9136
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9140
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9144
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9148
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9152
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9156
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9160
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9164
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9168
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9172
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9176
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9180
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9184
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9188
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9192
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9196
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9200
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9204
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9208
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9212
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9216
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9220
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9224
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9228
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9232
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9236
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9240
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9244
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9248
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9252
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9256
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9260
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9264
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9268
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9272
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9276
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9280
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9284
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9288
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9292
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9296
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9300
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9304
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9308
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9312
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9316
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9320
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9324
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9328
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9332
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9336
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9340
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9344
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9348
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9352
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9356
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9360
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9364
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9368
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9372
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9376
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9380
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9384
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9388
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9392
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9396
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9400
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9404
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9408
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9412
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9416
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9420
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9424
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9428
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9432
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9436
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9440
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9444
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9448
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9452
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9456
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9460
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9464
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9468
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9472
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9476
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9480
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9484
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9488
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9492
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9496
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9500
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9504
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9508
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9512
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9516
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9520
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9524
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9528
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9532
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9536
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9540
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9544
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9548
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9552
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9556
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9560
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9564
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9568
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9572
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9576
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9580
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9584
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9588
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9592
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9596
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9600
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9604
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9608
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9612
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9616
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9620
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9624
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9628
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9632
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9636
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9640
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9644
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9648
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9652
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9656
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9660
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9664
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9668
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9672
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9676
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9680
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9684
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9688
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9692
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9696
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9700
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9704
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9708
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9712
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9716
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9720
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9724
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9728
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9732
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9736
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9740
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9744
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9748
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9752
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9756
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9760
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9764
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9768
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9772
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9776
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9780
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9784
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9788
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9792
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9796
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9800
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9804
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9808
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9812
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9816
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9820
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9824
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9828
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9832
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9836
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9840
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9844
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9848
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9852
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9856
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9860
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9864
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9868
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9872
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9876
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9880
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9884
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9888
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9892
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9896
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9900
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9904
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9908
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9912
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9916
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9920
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9924
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9928
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9932
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9936
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9940
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9944
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9948
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9952
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9956
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9960
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9964
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9968
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9972
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9976
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9980
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9984
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9988
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9992
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =9996
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10000
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10004
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10008
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10012
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10016
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10020
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10024
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10028
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10032
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10036
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10040
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10044
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10048
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10052
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10056
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10060
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10064
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10068
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10072
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10076
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10080
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10084
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10088
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10092
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10096
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10100
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10104
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10108
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10112
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10116
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10120
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10124
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10128
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10132
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10136
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10140
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10144
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10148
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10152
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10156
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10160
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10164
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10168
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10172
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10176
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10180
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10184
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10188
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10192
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10196
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10200
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10204
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10208
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10212
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10216
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10220
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10224
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10228
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10232
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10236
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10240
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10244
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10248
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10252
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10256
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10260
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10264
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10268
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10272
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10276
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10280
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10284
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10288
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10292
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10296
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10300
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10304
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10308
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10312
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10316
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10320
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10324
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10328
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10332
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10336
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10340
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10344
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10348
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10352
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10356
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10360
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10364
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10368
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10372
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10376
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10380
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10384
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10388
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10392
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10396
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10400
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10404
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10408
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10412
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10416
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10420
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10424
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10428
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10432
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10436
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10440
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10444
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10448
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10452
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10456
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10460
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10464
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10468
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10472
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10476
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10480
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10484
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10488
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10492
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10496
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10500
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10504
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10508
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10512
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10516
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10520
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10524
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10528
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10532
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10536
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10540
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10544
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10548
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10552
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10556
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10560
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10564
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10568
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10572
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10576
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10580
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10584
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10588
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10592
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10596
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10600
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10604
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10608
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10612
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10616
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10620
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10624
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10628
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10632
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10636
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10640
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10644
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10648
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10652
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10656
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10660
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10664
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10668
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10672
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10676
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10680
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10684
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10688
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10692
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10696
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10700
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10704
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10708
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10712
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10716
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10720
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10724
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10728
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10732
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10736
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10740
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10744
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10748
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10752
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10756
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10760
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10764
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10768
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10772
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10776
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10780
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10784
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10788
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10792
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10796
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10800
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10804
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10808
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10812
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10816
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10820
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10824
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10828
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10832
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10836
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10840
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10844
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10848
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10852
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10856
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10860
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10864
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10868
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10872
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10876
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10880
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10884
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10888
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10892
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10896
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10900
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10904
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10908
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10912
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10916
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10920
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10924
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10928
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10932
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10936
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10940
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10944
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10948
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10952
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10956
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10960
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10964
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10968
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10972
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10976
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10980
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10984
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10988
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10992
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =10996
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11000
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11004
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11008
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11012
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11016
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11020
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11024
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11028
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11032
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11036
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11040
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11044
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11048
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11052
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11056
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11060
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11064
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11068
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11072
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11076
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11080
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11084
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11088
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11092
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11096
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11100
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11104
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11108
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11112
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11116
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11120
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11124
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11128
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11132
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11136
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11140
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11144
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11148
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11152
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11156
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11160
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11164
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11168
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11172
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11176
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11180
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11184
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11188
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11192
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11196
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11200
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11204
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11208
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11212
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11216
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11220
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11224
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11228
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11232
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11236
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11240
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11244
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11248
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11252
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11256
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11260
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11264
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11268
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11272
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11276
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11280
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11284
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11288
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11292
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11296
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11300
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11304
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11308
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11312
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11316
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11320
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11324
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11328
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11332
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11336
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11340
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11344
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11348
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11352
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11356
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11360
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11364
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11368
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11372
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11376
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11380
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11384
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11388
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11392
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11396
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11400
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11404
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11408
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11412
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11416
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11420
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11424
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11428
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11432
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11436
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11440
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11444
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11448
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11452
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11456
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11460
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11464
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11468
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11472
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11476
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11480
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11484
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11488
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11492
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11496
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11500
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11504
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11508
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11512
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11516
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11520
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11524
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11528
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11532
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11536
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11540
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11544
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11548
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11552
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11556
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11560
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11564
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11568
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11572
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11576
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11580
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11584
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11588
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11592
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11596
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11600
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11604
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11608
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11612
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11616
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11620
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11624
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11628
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11632
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11636
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11640
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11644
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11648
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11652
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11656
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11660
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11664
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11668
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11672
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11676
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11680
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11684
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11688
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11692
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11696
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11700
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11704
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11708
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11712
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11716
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11720
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11724
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11728
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11732
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11736
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11740
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11744
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11748
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11752
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11756
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11760
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11764
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11768
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11772
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11776
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11780
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11784
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11788
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11792
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11796
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11800
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11804
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11808
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11812
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11816
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11820
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11824
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11828
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11832
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11836
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11840
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11844
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11848
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11852
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11856
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11860
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11864
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11868
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11872
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11876
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11880
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11884
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11888
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11892
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11896
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11900
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11904
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11908
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11912
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11916
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11920
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11924
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11928
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11932
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11936
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11940
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11944
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11948
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11952
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11956
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11960
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11964
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11968
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11972
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11976
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11980
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11984
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11988
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11992
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =11996
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12000
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12004
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12008
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12012
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12016
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12020
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12024
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12028
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12032
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12036
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12040
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12044
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12048
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12052
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12056
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12060
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12064
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12068
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12072
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12076
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12080
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12084
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12088
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12092
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12096
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12100
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12104
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12108
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12112
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12116
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12120
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12124
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12128
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12132
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12136
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12140
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12144
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12148
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12152
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12156
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12160
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12164
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12168
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12172
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12176
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12180
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12184
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12188
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12192
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12196
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12200
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12204
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12208
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12212
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12216
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12220
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12224
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12228
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12232
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12236
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12240
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12244
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12248
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12252
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12256
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12260
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12264
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12268
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12272
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12276
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12280
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12284
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12288
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12292
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12296
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12300
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12304
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12308
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12312
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12316
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12320
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12324
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12328
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12332
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12336
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12340
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12344
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12348
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12352
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12356
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12360
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12364
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12368
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12372
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12376
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12380
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12384
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12388
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12392
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12396
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12400
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12404
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12408
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12412
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12416
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12420
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12424
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12428
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12432
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12436
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12440
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12444
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12448
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12452
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12456
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12460
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12464
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12468
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12472
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12476
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12480
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12484
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12488
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12492
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12496
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12500
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12504
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12508
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12512
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12516
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12520
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12524
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12528
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12532
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12536
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12540
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12544
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12548
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12552
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12556
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12560
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12564
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12568
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12572
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12576
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12580
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12584
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12588
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12592
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12596
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12600
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12604
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12608
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12612
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12616
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12620
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12624
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12628
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12632
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12636
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12640
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12644
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12648
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12652
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12656
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12660
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12664
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12668
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12672
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12676
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12680
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12684
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12688
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12692
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12696
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12700
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12704
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12708
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12712
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12716
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12720
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12724
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12728
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12732
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12736
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12740
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12744
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12748
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12752
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12756
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12760
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12764
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12768
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12772
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12776
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12780
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12784
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12788
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12792
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12796
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12800
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12804
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12808
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12812
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12816
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12820
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12824
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12828
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12832
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12836
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12840
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12844
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12848
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12852
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12856
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12860
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12864
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12868
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12872
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12876
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12880
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12884
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12888
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12892
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12896
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12900
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12904
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12908
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12912
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12916
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12920
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12924
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12928
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12932
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12936
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12940
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12944
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12948
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12952
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12956
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12960
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12964
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12968
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12972
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12976
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12980
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12984
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12988
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12992
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12996
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13000
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13004
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13008
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13012
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13016
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13020
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13024
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13028
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13032
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13036
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13040
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13044
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13048
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13052
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13056
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13060
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13064
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13068
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13072
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13076
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13080
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13084
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13088
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13092
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13096
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13100
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13104
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13108
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13112
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13116
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13120
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13124
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13128
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13132
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13136
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13140
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13144
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13148
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13152
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13156
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13160
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13164
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13168
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13172
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13176
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13180
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13184
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13188
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13192
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13196
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13200
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13204
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13208
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13212
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13216
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13220
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13224
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13228
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13232
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13236
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13240
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13244
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13248
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13252
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13256
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13260
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13264
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13268
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13272
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13276
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13280
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13284
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13288
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13292
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13296
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13300
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13304
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13308
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13312
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13316
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13320
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13324
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13328
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13332
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13336
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13340
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13344
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13348
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13352
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13356
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13360
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13364
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13368
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13372
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13376
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13380
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13384
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13388
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13392
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13396
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13400
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13404
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13408
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13412
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13416
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13420
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13424
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13428
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13432
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13436
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13440
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13444
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13448
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13452
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13456
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13460
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13464
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13468
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13472
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13476
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13480
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13484
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13488
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13492
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13496
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13500
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13504
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13508
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13512
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13516
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13520
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13524
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13528
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13532
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13536
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13540
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13544
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13548
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13552
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13556
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13560
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13564
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13568
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13572
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13576
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13580
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13584
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13588
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13592
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13596
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13600
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13604
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13608
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13612
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13616
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13620
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13624
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13628
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13632
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13636
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13640
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13644
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13648
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13652
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13656
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13660
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13664
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13668
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13672
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13676
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13680
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13684
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13688
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13692
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13696
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13700
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13704
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13708
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13712
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13716
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13720
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13724
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13728
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13732
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13736
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13740
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13744
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13748
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13752
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13756
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13760
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13764
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13768
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13772
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13776
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13780
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13784
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13788
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13792
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13796
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13800
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13804
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13808
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13812
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13816
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13820
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13824
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13828
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13832
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13836
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13840
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13844
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13848
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13852
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13856
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13860
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13864
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13868
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13872
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13876
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13880
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13884
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13888
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13892
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13896
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13900
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13904
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13908
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13912
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13916
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13920
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13924
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13928
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13932
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13936
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13940
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13944
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13948
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13952
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13956
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13960
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13964
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13968
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13972
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13976
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13980
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13984
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13988
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13992
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =13996
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14000
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14004
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14008
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14012
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14016
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14020
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14024
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14028
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14032
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14036
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14040
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14044
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14048
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14052
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14056
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14060
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14064
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14068
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14072
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14076
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14080
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14084
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14088
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14092
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14096
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14100
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14104
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14108
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14112
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14116
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14120
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14124
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14128
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14132
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14136
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14140
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14144
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14148
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14152
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14156
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14160
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14164
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14168
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14172
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14176
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14180
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14184
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14188
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14192
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14196
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14200
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14204
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14208
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14212
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14216
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14220
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14224
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14228
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14232
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14236
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14240
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14244
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14248
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14252
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14256
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14260
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14264
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14268
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14272
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14276
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14280
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14284
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14288
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14292
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14296
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14300
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14304
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14308
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14312
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14316
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14320
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14324
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14328
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14332
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14336
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14340
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14344
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14348
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14352
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14356
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14360
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14364
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14368
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14372
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14376
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14380
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14384
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14388
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14392
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14396
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14400
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14404
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14408
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14412
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14416
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14420
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14424
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14428
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14432
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14436
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14440
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14444
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14448
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14452
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14456
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14460
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14464
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14468
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14472
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14476
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14480
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14484
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14488
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14492
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14496
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14500
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14504
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14508
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14512
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14516
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14520
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14524
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14528
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14532
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14536
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14540
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14544
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14548
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14552
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14556
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14560
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14564
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14568
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14572
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14576
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14580
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14584
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14588
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14592
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14596
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14600
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14604
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14608
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14612
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14616
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14620
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14624
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14628
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14632
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14636
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14640
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14644
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14648
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14652
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14656
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14660
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14664
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14668
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14672
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14676
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14680
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14684
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14688
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14692
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14696
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14700
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14704
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14708
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14712
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14716
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14720
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14724
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14728
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14732
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14736
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14740
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14744
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14748
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14752
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14756
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14760
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14764
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14768
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14772
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14776
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14780
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14784
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14788
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14792
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14796
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14800
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14804
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14808
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14812
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14816
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14820
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14824
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14828
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14832
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14836
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14840
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14844
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14848
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14852
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14856
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14860
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14864
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14868
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14872
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14876
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14880
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14884
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14888
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14892
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14896
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14900
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14904
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14908
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14912
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14916
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14920
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14924
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14928
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14932
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14936
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14940
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14944
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14948
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14952
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14956
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14960
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14964
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14968
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14972
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14976
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14980
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14984
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14988
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14992
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =14996
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15000
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15004
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15008
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15012
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15016
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15020
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15024
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15028
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15032
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15036
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15040
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15044
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15048
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15052
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15056
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15060
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15064
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15068
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15072
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15076
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15080
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15084
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15088
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15092
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15096
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15100
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15104
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15108
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15112
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15116
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15120
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15124
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15128
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15132
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15136
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15140
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15144
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15148
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15152
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15156
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15160
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15164
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15168
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15172
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15176
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15180
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15184
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15188
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15192
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15196
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15200
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15204
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15208
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15212
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15216
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15220
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15224
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15228
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15232
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15236
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15240
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15244
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15248
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15252
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15256
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15260
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15264
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15268
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15272
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15276
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15280
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15284
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15288
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15292
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15296
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15300
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15304
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15308
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15312
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15316
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15320
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15324
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15328
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15332
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15336
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15340
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15344
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15348
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15352
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15356
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15360
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15364
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15368
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15372
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15376
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15380
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15384
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15388
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15392
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15396
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15400
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15404
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15408
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15412
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15416
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15420
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15424
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15428
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15432
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15436
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15440
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15444
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15448
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15452
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15456
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15460
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15464
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15468
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15472
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15476
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15480
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15484
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15488
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15492
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15496
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15500
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15504
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15508
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15512
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15516
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15520
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15524
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15528
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15532
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15536
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15540
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15544
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15548
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15552
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15556
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15560
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15564
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15568
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15572
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15576
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15580
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15584
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15588
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15592
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15596
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15600
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15604
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15608
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15612
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15616
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15620
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15624
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15628
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15632
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15636
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15640
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15644
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15648
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15652
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15656
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15660
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15664
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15668
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15672
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15676
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15680
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15684
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15688
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15692
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15696
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15700
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15704
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15708
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15712
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15716
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15720
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15724
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15728
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15732
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15736
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15740
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15744
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15748
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15752
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15756
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15760
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15764
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15768
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15772
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15776
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15780
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15784
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15788
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15792
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15796
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15800
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15804
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15808
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15812
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15816
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15820
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15824
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15828
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15832
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15836
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15840
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15844
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15848
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15852
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15856
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15860
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15864
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15868
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15872
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15876
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15880
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15884
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15888
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15892
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15896
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15900
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15904
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15908
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15912
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15916
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15920
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15924
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15928
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15932
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15936
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15940
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15944
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15948
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15952
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15956
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15960
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15964
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15968
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15972
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15976
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15980
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15984
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15988
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15992
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =15996
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16000
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16004
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16008
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16012
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16016
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16020
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16024
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16028
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16032
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16036
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16040
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16044
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16048
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16052
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16056
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16060
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16064
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16068
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16072
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16076
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16080
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16084
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16088
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16092
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16096
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16100
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16104
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16108
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16112
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16116
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16120
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16124
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16128
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16132
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16136
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16140
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16144
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16148
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16152
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16156
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16160
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16164
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16168
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16172
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16176
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16180
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16184
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16188
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16192
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16196
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16200
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16204
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16208
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16212
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16216
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16220
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16224
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16228
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16232
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16236
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16240
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16244
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16248
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16252
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16256
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16260
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16264
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16268
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16272
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16276
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16280
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16284
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16288
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16292
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16296
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16300
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16304
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16308
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16312
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16316
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16320
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16324
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16328
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16332
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16336
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16340
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16344
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16348
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16352
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16356
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16360
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16364
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16368
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16372
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16376
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16380
	add r9, r10, #-16384
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =0
	ldr r9, =4
	mul r8, r10, r9
	ldr r10, =4
	mul r9, r8, r10
	add r10, r9, #-16384
	add r10, fp, r10
	mov r0, r10
	bl  f1
	mov r10, r0
	mov r0, r10
	bl  putint
	ldr r10, =10
	mov r0, r10
	bl  putch
	ldr r10, =2
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #0
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-16384
	add r9, fp, r10
	ldr r10, [r9]
	mov r0, r10
	b .Lmain_END
	b .F0
.LTORG
addr_a_0:
	.word a
.F0:
.Lmain_END:
	add sp, sp, #32768
	pop {r8, r9, r10, fp, lr}
	bx  lr

addr_a_1:
	.word a
