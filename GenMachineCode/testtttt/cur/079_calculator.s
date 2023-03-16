	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm
	.data
	.comm	ints,40000,4
	.global intt
	.align 4
	.size intt, 4
intt:
	.word 0
	.comm	chas,40000,4
	.global chat
	.align 4
	.size chat, 4
chat:
	.word 0
	.global i
	.align 4
	.size i, 4
i:
	.word 0
	.global ii
	.align 4
	.size ii, 4
ii:
	.word 1
	.global c
	.align 4
	.size c, 4
c:
	.word 0
	.comm	get,40000,4
	.comm	get2,40000,4
	.text
	.global isdigit
	.type isdigit , %function
isdigit:
	push {r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L148:
	str r0, [fp, #-4]
	ldr r10, [fp, #-4]
	ldr r9, =48
	cmp r10, r9
	movge r10, #1
	movlt r10, #0
	bge .L152
	b .L155
.L152:
	ldr r10, [fp, #-4]
	ldr r9, =57
	cmp r10, r9
	movle r10, #1
	movgt r10, #0
	ble .L150
	b .L159
.L155:
	b .L151
.L150:
	ldr r10, =1
	mov r0, r10
	b .Lisdigit_END
.L159:
	b .L151
.L151:
	ldr r10, =0
	mov r0, r10
	b .Lisdigit_END
.Lisdigit_END:
	add sp, sp, #4
	pop {r9, r10, fp, lr}
	bx  lr

	.global power
	.type power , %function
power:
	push {r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #12
.L161:
	str r0, [fp, #-12]
	str r1, [fp, #-8]
	ldr r10, =1
	str r10, [fp, #-4]
	b .L165
.L165:
	ldr r10, [fp, #-8]
	ldr r9, =0
	cmp r10, r9
	movne r10, #1
	moveq r10, #0
	bne .L166
	b .L170
.L166:
	ldr r10, [fp, #-4]
	ldr r9, [fp, #-12]
	mul r8, r10, r9
	str r8, [fp, #-4]
	ldr r10, [fp, #-8]
	sub r9, r10, #1
	str r9, [fp, #-8]
	b .L165
.L170:
	b .L167
.L167:
	ldr r10, [fp, #-4]
	mov r0, r10
	b .Lpower_END
.Lpower_END:
	add sp, sp, #12
	pop {r8, r9, r10, fp, lr}
	bx  lr

	.global getstr
	.type getstr , %function
getstr:
	push {r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #12
.L176:
	str r0, [fp, #-12]
	bl  getch
	mov r10, r0
	str r10, [fp, #-8]
	ldr r10, =0
	str r10, [fp, #-4]
	b .L180
.L180:
	ldr r10, [fp, #-8]
	ldr r9, =13
	cmp r10, r9
	movne r10, #1
	moveq r10, #0
	bne .L183
	b .L186
.L183:
	ldr r10, [fp, #-8]
	ldr r9, =10
	cmp r10, r9
	movne r10, #1
	moveq r10, #0
	bne .L181
	b .L190
.L186:
	b .L182
.L181:
	ldr r10, [fp, #-8]
	ldr r9, [fp, #-4]
	ldr r8, [fp, #-12]
	ldr r7, =4
	mul r6, r9, r7
	add r9, r6, r8
	str r10, [r9]
	ldr r10, [fp, #-4]
	add r9, r10, #1
	str r9, [fp, #-4]
	bl  getch
	mov r10, r0
	str r10, [fp, #-8]
	b .L180
.L190:
	b .L182
.L182:
	ldr r10, [fp, #-4]
	mov r0, r10
	b .Lgetstr_END
.Lgetstr_END:
	add sp, sp, #12
	pop {r6, r7, r8, r9, r10, fp, lr}
	bx  lr

	.global intpush
	.type intpush , %function
intpush:
	push {r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L199:
	str r0, [fp, #-4]
	ldr r10, addr_intt_0
	ldr r9, [r10]
	add r10, r9, #1
	ldr r9, addr_intt_0
	str r10, [r9]
	ldr r10, [fp, #-4]
	ldr r9, addr_intt_0
	ldr r8, [r9]
	ldr r9, =4
	mul r7, r8, r9
	ldr r9, addr_ints_0
	add r8, r7, r9
	str r10, [r8]
	b .Lintpush_END
.Lintpush_END:
	add sp, sp, #4
	pop {r7, r8, r9, r10, fp, lr}
	bx  lr

	.global chapush
	.type chapush , %function
chapush:
	push {r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L207:
	str r0, [fp, #-4]
	ldr r10, addr_chat_0
	ldr r9, [r10]
	add r10, r9, #1
	ldr r9, addr_chat_0
	str r10, [r9]
	ldr r10, [fp, #-4]
	ldr r9, addr_chat_0
	ldr r8, [r9]
	ldr r9, =4
	mul r7, r8, r9
	ldr r9, addr_chas_0
	add r8, r7, r9
	str r10, [r8]
	b .Lchapush_END
.Lchapush_END:
	add sp, sp, #4
	pop {r7, r8, r9, r10, fp, lr}
	bx  lr

	.global intpop
	.type intpop , %function
intpop:
	push {r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #0
.L215:
	ldr r10, addr_intt_0
	ldr r9, [r10]
	sub r10, r9, #1
	ldr r9, addr_intt_0
	str r10, [r9]
	ldr r10, addr_intt_0
	ldr r9, [r10]
	add r10, r9, #1
	ldr r9, =4
	mul r8, r10, r9
	ldr r10, addr_ints_0
	add r9, r8, r10
	ldr r10, [r9]
	mov r0, r10
	b .Lintpop_END
.Lintpop_END:
	add sp, sp, #0
	pop {r8, r9, r10, fp, lr}
	bx  lr

	.global chapop
	.type chapop , %function
chapop:
	push {r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #0
.L222:
	ldr r10, addr_chat_0
	ldr r9, [r10]
	sub r10, r9, #1
	ldr r9, addr_chat_0
	str r10, [r9]
	ldr r10, addr_chat_0
	ldr r9, [r10]
	add r10, r9, #1
	ldr r9, =4
	mul r8, r10, r9
	ldr r10, addr_chas_0
	add r9, r8, r10
	ldr r10, [r9]
	mov r0, r10
	b .Lchapop_END
.Lchapop_END:
	add sp, sp, #0
	pop {r8, r9, r10, fp, lr}
	bx  lr

	.global intadd
	.type intadd , %function
intadd:
	push {r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L229:
	str r0, [fp, #-4]
	ldr r10, addr_intt_0
	ldr r9, [r10]
	ldr r10, =4
	mul r8, r9, r10
	ldr r10, addr_ints_0
	add r9, r8, r10
	ldr r10, [r9]
	ldr r9, =10
	mul r8, r10, r9
	ldr r10, addr_intt_0
	ldr r9, [r10]
	ldr r10, =4
	mul r7, r9, r10
	ldr r10, addr_ints_0
	add r9, r7, r10
	str r8, [r9]
	ldr r10, addr_intt_0
	ldr r9, [r10]
	ldr r10, =4
	mul r8, r9, r10
	ldr r10, addr_ints_0
	add r9, r8, r10
	ldr r10, [r9]
	ldr r9, [fp, #-4]
	add r8, r10, r9
	ldr r10, addr_intt_0
	ldr r9, [r10]
	ldr r10, =4
	mul r7, r9, r10
	ldr r10, addr_ints_0
	add r9, r7, r10
	str r8, [r9]
	b .Lintadd_END
.Lintadd_END:
	add sp, sp, #4
	pop {r7, r8, r9, r10, fp, lr}
	bx  lr

	.global find
	.type find , %function
find:
	push {r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #0
.L250:
	bl  chapop
	mov r10, r0
	ldr r9, addr_c_0
	str r10, [r9]
	ldr r10, addr_ii_0
	ldr r9, [r10]
	ldr r10, =4
	mul r8, r9, r10
	ldr r10, addr_get2_0
	add r9, r8, r10
	ldr r10, =32
	str r10, [r9]
	ldr r10, addr_c_0
	ldr r9, [r10]
	ldr r10, addr_ii_0
	ldr r8, [r10]
	add r10, r8, #1
	ldr r8, =4
	mul r7, r10, r8
	ldr r10, addr_get2_0
	add r8, r7, r10
	str r9, [r8]
	ldr r10, addr_ii_0
	ldr r9, [r10]
	add r10, r9, #2
	ldr r9, addr_ii_0
	str r10, [r9]
	ldr r10, addr_chat_0
	ldr r9, [r10]
	ldr r10, =0
	cmp r9, r10
	moveq r10, #1
	movne r10, #0
	beq .L261
	b .L265
.L261:
	ldr r10, =0
	mov r0, r10
	b .Lfind_END
.L265:
	b .L262
.L262:
	ldr r10, =1
	mov r0, r10
	b .Lfind_END
.Lfind_END:
	add sp, sp, #0
	pop {r7, r8, r9, r10, fp, lr}
	bx  lr

	.global main
	.type main , %function
main:
	push {r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #20
.L267:
	ldr r10, =0
	ldr r9, addr_intt_0
	str r10, [r9]
	ldr r10, =0
	ldr r9, addr_chat_0
	str r10, [r9]
	ldr r10, addr_get_0
	ldr r9, =0
	add r8, r9, r10
	mov r0, r8
	bl  getstr
	mov r10, r0
	str r10, [fp, #-20]
	b .L272
.L272:
	ldr r10, addr_i_0
	ldr r9, [r10]
	ldr r10, [fp, #-20]
	cmp r9, r10
	movlt r10, #1
	movge r10, #0
	blt .L273
	b .L278
.L273:
	ldr r10, addr_i_0
	ldr r9, [r10]
	ldr r10, =4
	mul r8, r9, r10
	ldr r10, addr_get_0
	add r9, r8, r10
	ldr r10, [r9]
	mov r0, r10
	bl  isdigit
	mov r10, r0
	ldr r9, =1
	cmp r10, r9
	moveq r10, #1
	movne r10, #0
	beq .L280
	b .L289
.L278:
	b .L274
.L280:
	ldr r10, addr_i_0
	ldr r9, [r10]
	ldr r10, =4
	mul r8, r9, r10
	ldr r10, addr_get_0
	add r9, r8, r10
	ldr r10, [r9]
	ldr r9, addr_ii_0
	ldr r8, [r9]
	ldr r9, =4
	mul r7, r8, r9
	ldr r9, addr_get2_0
	add r8, r7, r9
	str r10, [r8]
	ldr r10, addr_ii_0
	ldr r9, [r10]
	add r10, r9, #1
	ldr r9, addr_ii_0
	str r10, [r9]
	b .L281
.L289:
	b .L282
.L274:
	b .L667
.L281:
	ldr r10, addr_i_0
	ldr r9, [r10]
	add r10, r9, #1
	ldr r9, addr_i_0
	str r10, [r9]
	b .L272
.L282:
	ldr r10, addr_i_0
	ldr r9, [r10]
	ldr r10, =4
	mul r8, r9, r10
	ldr r10, addr_get_0
	add r9, r8, r10
	ldr r10, [r9]
	ldr r9, =40
	cmp r10, r9
	moveq r10, #1
	movne r10, #0
	beq .L301
	b .L309
.L667:
	ldr r10, addr_chat_0
	ldr r9, [r10]
	ldr r10, =0
	cmp r9, r10
	movgt r10, #1
	movle r10, #0
	bgt .L668
	b .L672
.L301:
	ldr r10, =40
	mov r0, r10
	bl  chapush
	b .L302
.L309:
	b .L302
.L668:
	bl  chapop
	mov r10, r0
	str r10, [fp, #-16]
	ldr r10, addr_ii_0
	ldr r9, [r10]
	ldr r10, =4
	mul r8, r9, r10
	ldr r10, addr_get2_0
	add r9, r8, r10
	ldr r10, =32
	str r10, [r9]
	ldr r10, [fp, #-16]
	ldr r9, addr_ii_0
	ldr r8, [r9]
	add r9, r8, #1
	ldr r8, =4
	mul r7, r9, r8
	ldr r9, addr_get2_0
	add r8, r7, r9
	str r10, [r8]
	ldr r10, addr_ii_0
	ldr r9, [r10]
	add r10, r9, #2
	ldr r9, addr_ii_0
	str r10, [r9]
	b .L667
.L672:
	b .L669
.L302:
	ldr r10, addr_i_0
	ldr r9, [r10]
	ldr r10, =4
	mul r8, r9, r10
	ldr r10, addr_get_0
	add r9, r8, r10
	ldr r10, [r9]
	ldr r9, =94
	cmp r10, r9
	moveq r10, #1
	movne r10, #0
	beq .L312
	b .L320
.L669:
	ldr r10, addr_ii_0
	ldr r9, [r10]
	ldr r10, =4
	mul r8, r9, r10
	ldr r10, addr_get2_0
	add r9, r8, r10
	ldr r10, =64
	str r10, [r9]
	ldr r10, =1
	ldr r9, addr_i_0
	str r10, [r9]
	b .L689
.L312:
	ldr r10, =94
	mov r0, r10
	bl  chapush
	b .L313
.L320:
	b .L313
.L689:
	ldr r10, addr_i_0
	ldr r9, [r10]
	ldr r10, =4
	mul r8, r9, r10
	ldr r10, addr_get2_0
	add r9, r8, r10
	ldr r10, [r9]
	ldr r9, =64
	cmp r10, r9
	movne r10, #1
	moveq r10, #0
	bne .L690
	b .L698
	b .F0
.LTORG
addr_ints_0:
	.word ints
addr_intt_0:
	.word intt
addr_chas_0:
	.word chas
addr_chat_0:
	.word chat
addr_i_0:
	.word i
addr_ii_0:
	.word ii
addr_c_0:
	.word c
addr_get_0:
	.word get
addr_get2_0:
	.word get2
.F0:
.L313:
	ldr r10, addr_i_1
	ldr r9, [r10]
	ldr r10, =4
	mul r8, r9, r10
	ldr r10, addr_get_1
	add r9, r8, r10
	ldr r10, [r9]
	ldr r9, =41
	cmp r10, r9
	moveq r10, #1
	movne r10, #0
	beq .L323
	b .L331
.L690:
	ldr r10, addr_i_1
	ldr r9, [r10]
	ldr r10, =4
	mul r8, r9, r10
	ldr r10, addr_get2_1
	add r9, r8, r10
	ldr r10, [r9]
	ldr r9, =43
	cmp r10, r9
	moveq r10, #1
	movne r10, #0
	beq .L700
	b .L714
.L698:
	b .L691
.L323:
	bl  chapop
	mov r10, r0
	ldr r9, addr_c_1
	str r10, [r9]
	b .L333
.L331:
	b .L324
.L700:
	bl  intpop
	mov r10, r0
	str r10, [fp, #-12]
	bl  intpop
	mov r10, r0
	str r10, [fp, #-8]
	ldr r10, addr_i_1
	ldr r9, [r10]
	ldr r10, =4
	mul r8, r9, r10
	ldr r10, addr_get2_1
	add r9, r8, r10
	ldr r10, [r9]
	ldr r9, =43
	cmp r10, r9
	moveq r10, #1
	movne r10, #0
	beq .L759
	b .L767
.L714:
	b .L707
.L691:
	ldr r10, =1
	ldr r9, =4
	mul r8, r10, r9
	ldr r10, addr_ints_1
	add r9, r8, r10
	ldr r10, [r9]
	mov r0, r10
	bl  putint
	ldr r10, =0
	mov r0, r10
	b .Lmain_END
.L333:
	ldr r10, addr_c_1
	ldr r9, [r10]
	ldr r10, =40
	cmp r9, r10
	movne r10, #1
	moveq r10, #0
	bne .L334
	b .L338
.L324:
	ldr r10, addr_i_1
	ldr r9, [r10]
	ldr r10, =4
	mul r8, r9, r10
	ldr r10, addr_get_1
	add r9, r8, r10
	ldr r10, [r9]
	ldr r9, =43
	cmp r10, r9
	moveq r10, #1
	movne r10, #0
	beq .L350
	b .L358
.L759:
	ldr r10, [fp, #-12]
	ldr r9, [fp, #-8]
	add r8, r10, r9
	str r8, [fp, #-4]
	b .L760
.L767:
	b .L760
.L707:
	ldr r10, addr_i_1
	ldr r9, [r10]
	ldr r10, =4
	mul r8, r9, r10
	ldr r10, addr_get2_1
	add r9, r8, r10
	ldr r10, [r9]
	ldr r9, =45
	cmp r10, r9
	moveq r10, #1
	movne r10, #0
	beq .L700
	b .L722
.L334:
	ldr r10, addr_ii_1
	ldr r9, [r10]
	ldr r10, =4
	mul r8, r9, r10
	ldr r10, addr_get2_1
	add r9, r8, r10
	ldr r10, =32
	str r10, [r9]
	ldr r10, addr_c_1
	ldr r9, [r10]
	ldr r10, addr_ii_1
	ldr r8, [r10]
	add r10, r8, #1
	ldr r8, =4
	mul r7, r10, r8
	ldr r10, addr_get2_1
	add r8, r7, r10
	str r9, [r8]
	ldr r10, addr_ii_1
	ldr r9, [r10]
	add r10, r9, #2
	ldr r9, addr_ii_1
	str r10, [r9]
	bl  chapop
	mov r10, r0
	ldr r9, addr_c_1
	str r10, [r9]
	b .L333
.L338:
	b .L335
.L350:
	b .L360
.L358:
	b .L351
.L760:
	ldr r10, addr_i_1
	ldr r9, [r10]
	ldr r10, =4
	mul r8, r9, r10
	ldr r10, addr_get2_1
	add r9, r8, r10
	ldr r10, [r9]
	ldr r9, =45
	cmp r10, r9
	moveq r10, #1
	movne r10, #0
	beq .L771
	b .L779
.L722:
	b .L706
.L335:
	b .L324
.L360:
	ldr r10, addr_chat_1
	ldr r9, [r10]
	ldr r10, =4
	mul r8, r9, r10
	ldr r10, addr_chas_1
	add r9, r8, r10
	ldr r10, [r9]
	ldr r9, =43
	cmp r10, r9
	moveq r10, #1
	movne r10, #0
	beq .L361
	b .L374
	b .F1
.LTORG
addr_ints_1:
	.word ints
addr_intt_1:
	.word intt
addr_chas_1:
	.word chas
addr_chat_1:
	.word chat
addr_i_1:
	.word i
addr_ii_1:
	.word ii
addr_c_1:
	.word c
addr_get_1:
	.word get
addr_get2_1:
	.word get2
.F1:
.L351:
	ldr r10, addr_i_2
	ldr r9, [r10]
	ldr r10, =4
	mul r8, r9, r10
	ldr r10, addr_get_2
	add r9, r8, r10
	ldr r10, [r9]
	ldr r9, =45
	cmp r10, r9
	moveq r10, #1
	movne r10, #0
	beq .L423
	b .L431
.L771:
	ldr r10, [fp, #-8]
	ldr r9, [fp, #-12]
	sub r8, r10, r9
	str r8, [fp, #-4]
	b .L772
.L779:
	b .L772
.L706:
	ldr r10, addr_i_2
	ldr r9, [r10]
	ldr r10, =4
	mul r8, r9, r10
	ldr r10, addr_get2_2
	add r9, r8, r10
	ldr r10, [r9]
	ldr r9, =42
	cmp r10, r9
	moveq r10, #1
	movne r10, #0
	beq .L700
	b .L730
.L361:
	bl  find
	mov r10, r0
	ldr r9, =0
	cmp r10, r9
	moveq r10, #1
	movne r10, #0
	beq .L416
	b .L419
.L374:
	b .L367
.L423:
	b .L433
.L431:
	b .L424
.L772:
	ldr r10, addr_i_2
	ldr r9, [r10]
	ldr r10, =4
	mul r8, r9, r10
	ldr r10, addr_get2_2
	add r9, r8, r10
	ldr r10, [r9]
	ldr r9, =42
	cmp r10, r9
	moveq r10, #1
	movne r10, #0
	beq .L783
	b .L791
.L730:
	b .L705
.L416:
	b .L362
.L419:
	b .L417
.L367:
	ldr r10, addr_chat_2
	ldr r9, [r10]
	ldr r10, =4
	mul r8, r9, r10
	ldr r10, addr_chas_2
	add r9, r8, r10
	ldr r10, [r9]
	ldr r9, =45
	cmp r10, r9
	moveq r10, #1
	movne r10, #0
	beq .L361
	b .L382
.L433:
	ldr r10, addr_chat_2
	ldr r9, [r10]
	ldr r10, =4
	mul r8, r9, r10
	ldr r10, addr_chas_2
	add r9, r8, r10
	ldr r10, [r9]
	ldr r9, =43
	cmp r10, r9
	moveq r10, #1
	movne r10, #0
	beq .L434
	b .L447
.L424:
	ldr r10, addr_i_2
	ldr r9, [r10]
	ldr r10, =4
	mul r8, r9, r10
	ldr r10, addr_get_2
	add r9, r8, r10
	ldr r10, [r9]
	ldr r9, =42
	cmp r10, r9
	moveq r10, #1
	movne r10, #0
	beq .L496
	b .L504
.L783:
	ldr r10, [fp, #-12]
	ldr r9, [fp, #-8]
	mul r8, r10, r9
	str r8, [fp, #-4]
	b .L784
.L791:
	b .L784
.L705:
	ldr r10, addr_i_2
	ldr r9, [r10]
	ldr r10, =4
	mul r8, r9, r10
	ldr r10, addr_get2_2
	add r9, r8, r10
	ldr r10, [r9]
	ldr r9, =47
	cmp r10, r9
	moveq r10, #1
	movne r10, #0
	beq .L700
	b .L738
.L362:
	ldr r10, =43
	mov r0, r10
	bl  chapush
	b .L351
.L417:
	b .L360
.L382:
	b .L366
.L434:
	bl  find
	mov r10, r0
	ldr r9, =0
	cmp r10, r9
	moveq r10, #1
	movne r10, #0
	beq .L489
	b .L492
.L447:
	b .L440
.L496:
	b .L506
.L504:
	b .L497
.L784:
	ldr r10, addr_i_2
	ldr r9, [r10]
	ldr r10, =4
	mul r8, r9, r10
	ldr r10, addr_get2_2
	add r9, r8, r10
	ldr r10, [r9]
	ldr r9, =47
	cmp r10, r9
	moveq r10, #1
	movne r10, #0
	beq .L795
	b .L803
.L738:
	b .L704
.L366:
	ldr r10, addr_chat_2
	ldr r9, [r10]
	ldr r10, =4
	mul r8, r9, r10
	ldr r10, addr_chas_2
	add r9, r8, r10
	ldr r10, [r9]
	ldr r9, =42
	cmp r10, r9
	moveq r10, #1
	movne r10, #0
	beq .L361
	b .L390
	b .F2
.LTORG
addr_ints_2:
	.word ints
addr_intt_2:
	.word intt
addr_chas_2:
	.word chas
addr_chat_2:
	.word chat
addr_i_2:
	.word i
addr_ii_2:
	.word ii
addr_c_2:
	.word c
addr_get_2:
	.word get
addr_get2_2:
	.word get2
.F2:
.L489:
	b .L435
.L492:
	b .L490
.L440:
	ldr r10, addr_chat_3
	ldr r9, [r10]
	ldr r10, =4
	mul r8, r9, r10
	ldr r10, addr_chas_3
	add r9, r8, r10
	ldr r10, [r9]
	ldr r9, =45
	cmp r10, r9
	moveq r10, #1
	movne r10, #0
	beq .L434
	b .L455
.L506:
	ldr r10, addr_chat_3
	ldr r9, [r10]
	ldr r10, =4
	mul r8, r9, r10
	ldr r10, addr_chas_3
	add r9, r8, r10
	ldr r10, [r9]
	ldr r9, =42
	cmp r10, r9
	moveq r10, #1
	movne r10, #0
	beq .L507
	b .L518
.L497:
	ldr r10, addr_i_3
	ldr r9, [r10]
	ldr r10, =4
	mul r8, r9, r10
	ldr r10, addr_get_3
	add r9, r8, r10
	ldr r10, [r9]
	ldr r9, =47
	cmp r10, r9
	moveq r10, #1
	movne r10, #0
	beq .L551
	b .L559
.L795:
	ldr r10, [fp, #-8]
	ldr r9, [fp, #-12]
	sdiv r8, r10, r9
	str r8, [fp, #-4]
	b .L796
.L803:
	b .L796
.L704:
	ldr r10, addr_i_3
	ldr r9, [r10]
	ldr r10, =4
	mul r8, r9, r10
	ldr r10, addr_get2_3
	add r9, r8, r10
	ldr r10, [r9]
	ldr r9, =37
	cmp r10, r9
	moveq r10, #1
	movne r10, #0
	beq .L700
	b .L746
.L390:
	b .L365
.L435:
	ldr r10, =45
	mov r0, r10
	bl  chapush
	b .L424
.L490:
	b .L433
.L455:
	b .L439
.L507:
	bl  find
	mov r10, r0
	ldr r9, =0
	cmp r10, r9
	moveq r10, #1
	movne r10, #0
	beq .L544
	b .L547
.L518:
	b .L511
.L551:
	b .L561
.L559:
	b .L552
.L796:
	ldr r10, addr_i_3
	ldr r9, [r10]
	ldr r10, =4
	mul r8, r9, r10
	ldr r10, addr_get2_3
	add r9, r8, r10
	ldr r10, [r9]
	ldr r9, =37
	cmp r10, r9
	moveq r10, #1
	movne r10, #0
	beq .L807
	b .L815
.L746:
	b .L703
.L365:
	ldr r10, addr_chat_3
	ldr r9, [r10]
	ldr r10, =4
	mul r8, r9, r10
	ldr r10, addr_chas_3
	add r9, r8, r10
	ldr r10, [r9]
	ldr r9, =47
	cmp r10, r9
	moveq r10, #1
	movne r10, #0
	beq .L361
	b .L398
.L439:
	ldr r10, addr_chat_3
	ldr r9, [r10]
	ldr r10, =4
	mul r8, r9, r10
	ldr r10, addr_chas_3
	add r9, r8, r10
	ldr r10, [r9]
	ldr r9, =42
	cmp r10, r9
	moveq r10, #1
	movne r10, #0
	beq .L434
	b .L463
.L544:
	b .L508
.L547:
	b .L545
.L511:
	ldr r10, addr_chat_3
	ldr r9, [r10]
	ldr r10, =4
	mul r8, r9, r10
	ldr r10, addr_chas_3
	add r9, r8, r10
	ldr r10, [r9]
	ldr r9, =47
	cmp r10, r9
	moveq r10, #1
	movne r10, #0
	beq .L507
	b .L526
.L561:
	ldr r10, addr_chat_3
	ldr r9, [r10]
	ldr r10, =4
	mul r8, r9, r10
	ldr r10, addr_chas_3
	add r9, r8, r10
	ldr r10, [r9]
	ldr r9, =42
	cmp r10, r9
	moveq r10, #1
	movne r10, #0
	beq .L562
	b .L573
.L552:
	ldr r10, addr_i_3
	ldr r9, [r10]
	ldr r10, =4
	mul r8, r9, r10
	ldr r10, addr_get_3
	add r9, r8, r10
	ldr r10, [r9]
	ldr r9, =37
	cmp r10, r9
	moveq r10, #1
	movne r10, #0
	beq .L606
	b .L614
.L807:
	ldr r10, [fp, #-8]
	ldr r9, [fp, #-12]
	sdiv r8, r10, r9
	mul r9, r8, r9
	sub r8, r10, r9
	str r8, [fp, #-4]
	b .L808
	b .F3
.LTORG
addr_ints_3:
	.word ints
addr_intt_3:
	.word intt
addr_chas_3:
	.word chas
addr_chat_3:
	.word chat
addr_i_3:
	.word i
addr_ii_3:
	.word ii
addr_c_3:
	.word c
addr_get_3:
	.word get
addr_get2_3:
	.word get2
.F3:
.L815:
	b .L808
.L703:
	ldr r10, addr_i_4
	ldr r9, [r10]
	ldr r10, =4
	mul r8, r9, r10
	ldr r10, addr_get2_4
	add r9, r8, r10
	ldr r10, [r9]
	ldr r9, =94
	cmp r10, r9
	moveq r10, #1
	movne r10, #0
	beq .L700
	b .L754
.L398:
	b .L364
.L463:
	b .L438
.L508:
	ldr r10, =42
	mov r0, r10
	bl  chapush
	b .L497
.L545:
	b .L506
.L526:
	b .L510
.L562:
	bl  find
	mov r10, r0
	ldr r9, =0
	cmp r10, r9
	moveq r10, #1
	movne r10, #0
	beq .L599
	b .L602
.L573:
	b .L566
.L606:
	b .L616
.L614:
	b .L607
.L808:
	ldr r10, addr_i_4
	ldr r9, [r10]
	ldr r10, =4
	mul r8, r9, r10
	ldr r10, addr_get2_4
	add r9, r8, r10
	ldr r10, [r9]
	ldr r9, =94
	cmp r10, r9
	moveq r10, #1
	movne r10, #0
	beq .L819
	b .L827
.L754:
	b .L702
.L364:
	ldr r10, addr_chat_4
	ldr r9, [r10]
	ldr r10, =4
	mul r8, r9, r10
	ldr r10, addr_chas_4
	add r9, r8, r10
	ldr r10, [r9]
	ldr r9, =37
	cmp r10, r9
	moveq r10, #1
	movne r10, #0
	beq .L361
	b .L406
.L438:
	ldr r10, addr_chat_4
	ldr r9, [r10]
	ldr r10, =4
	mul r8, r9, r10
	ldr r10, addr_chas_4
	add r9, r8, r10
	ldr r10, [r9]
	ldr r9, =47
	cmp r10, r9
	moveq r10, #1
	movne r10, #0
	beq .L434
	b .L471
.L510:
	ldr r10, addr_chat_4
	ldr r9, [r10]
	ldr r10, =4
	mul r8, r9, r10
	ldr r10, addr_chas_4
	add r9, r8, r10
	ldr r10, [r9]
	ldr r9, =37
	cmp r10, r9
	moveq r10, #1
	movne r10, #0
	beq .L507
	b .L534
.L599:
	b .L563
.L602:
	b .L600
.L566:
	ldr r10, addr_chat_4
	ldr r9, [r10]
	ldr r10, =4
	mul r8, r9, r10
	ldr r10, addr_chas_4
	add r9, r8, r10
	ldr r10, [r9]
	ldr r9, =47
	cmp r10, r9
	moveq r10, #1
	movne r10, #0
	beq .L562
	b .L581
.L616:
	ldr r10, addr_chat_4
	ldr r9, [r10]
	ldr r10, =4
	mul r8, r9, r10
	ldr r10, addr_chas_4
	add r9, r8, r10
	ldr r10, [r9]
	ldr r9, =42
	cmp r10, r9
	moveq r10, #1
	movne r10, #0
	beq .L617
	b .L628
.L607:
	ldr r10, addr_ii_4
	ldr r9, [r10]
	ldr r10, =4
	mul r8, r9, r10
	ldr r10, addr_get2_4
	add r9, r8, r10
	ldr r10, =32
	str r10, [r9]
	ldr r10, addr_ii_4
	ldr r9, [r10]
	add r10, r9, #1
	ldr r9, addr_ii_4
	str r10, [r9]
	b .L281
.L819:
	ldr r10, [fp, #-8]
	ldr r9, [fp, #-12]
	mov r1, r9
	mov r0, r10
	bl  power
	mov r10, r0
	str r10, [fp, #-4]
	b .L820
.L827:
	b .L820
.L702:
	ldr r10, addr_i_4
	ldr r9, [r10]
	ldr r10, =4
	mul r8, r9, r10
	ldr r10, addr_get2_4
	add r9, r8, r10
	ldr r10, [r9]
	ldr r9, =32
	cmp r10, r9
	movne r10, #1
	moveq r10, #0
	bne .L832
	b .L840
.L406:
	b .L363
.L471:
	b .L437
.L534:
	b .L509
.L563:
	ldr r10, =47
	mov r0, r10
	bl  chapush
	b .L552
.L600:
	b .L561
.L581:
	b .L565
.L617:
	bl  find
	mov r10, r0
	ldr r9, =0
	cmp r10, r9
	moveq r10, #1
	movne r10, #0
	beq .L654
	b .L657
	b .F4
.LTORG
addr_ints_4:
	.word ints
addr_intt_4:
	.word intt
addr_chas_4:
	.word chas
addr_chat_4:
	.word chat
addr_i_4:
	.word i
addr_ii_4:
	.word ii
addr_c_4:
	.word c
addr_get_4:
	.word get
addr_get2_4:
	.word get2
.F4:
.L628:
	b .L621
.L820:
	ldr r10, [fp, #-4]
	mov r0, r10
	bl  intpush
	b .L701
.L832:
	ldr r10, addr_i_5
	ldr r9, [r10]
	ldr r10, =4
	mul r8, r9, r10
	ldr r10, addr_get2_5
	add r9, r8, r10
	ldr r10, [r9]
	sub r9, r10, #48
	mov r0, r9
	bl  intpush
	ldr r10, =1
	ldr r9, addr_ii_5
	str r10, [r9]
	b .L847
.L840:
	b .L833
.L363:
	ldr r10, addr_chat_5
	ldr r9, [r10]
	ldr r10, =4
	mul r8, r9, r10
	ldr r10, addr_chas_5
	add r9, r8, r10
	ldr r10, [r9]
	ldr r9, =94
	cmp r10, r9
	moveq r10, #1
	movne r10, #0
	beq .L361
	b .L414
.L437:
	ldr r10, addr_chat_5
	ldr r9, [r10]
	ldr r10, =4
	mul r8, r9, r10
	ldr r10, addr_chas_5
	add r9, r8, r10
	ldr r10, [r9]
	ldr r9, =37
	cmp r10, r9
	moveq r10, #1
	movne r10, #0
	beq .L434
	b .L479
.L509:
	ldr r10, addr_chat_5
	ldr r9, [r10]
	ldr r10, =4
	mul r8, r9, r10
	ldr r10, addr_chas_5
	add r9, r8, r10
	ldr r10, [r9]
	ldr r9, =94
	cmp r10, r9
	moveq r10, #1
	movne r10, #0
	beq .L507
	b .L542
.L565:
	ldr r10, addr_chat_5
	ldr r9, [r10]
	ldr r10, =4
	mul r8, r9, r10
	ldr r10, addr_chas_5
	add r9, r8, r10
	ldr r10, [r9]
	ldr r9, =37
	cmp r10, r9
	moveq r10, #1
	movne r10, #0
	beq .L562
	b .L589
.L654:
	b .L618
.L657:
	b .L655
.L621:
	ldr r10, addr_chat_5
	ldr r9, [r10]
	ldr r10, =4
	mul r8, r9, r10
	ldr r10, addr_chas_5
	add r9, r8, r10
	ldr r10, [r9]
	ldr r9, =47
	cmp r10, r9
	moveq r10, #1
	movne r10, #0
	beq .L617
	b .L636
.L701:
	ldr r10, addr_i_5
	ldr r9, [r10]
	add r10, r9, #1
	ldr r9, addr_i_5
	str r10, [r9]
	b .L689
.L847:
	ldr r10, addr_i_5
	ldr r9, [r10]
	ldr r10, addr_ii_5
	ldr r8, [r10]
	add r10, r9, r8
	ldr r9, =4
	mul r8, r10, r9
	ldr r10, addr_get2_5
	add r9, r8, r10
	ldr r10, [r9]
	ldr r9, =32
	cmp r10, r9
	movne r10, #1
	moveq r10, #0
	bne .L848
	b .L857
.L833:
	b .L701
.L414:
	b .L362
.L479:
	b .L436
.L542:
	b .L508
.L589:
	b .L564
.L618:
	ldr r10, =37
	mov r0, r10
	bl  chapush
	b .L607
.L655:
	b .L616
.L636:
	b .L620
.L848:
	ldr r10, addr_i_5
	ldr r9, [r10]
	ldr r10, addr_ii_5
	ldr r8, [r10]
	add r10, r9, r8
	ldr r9, =4
	mul r8, r10, r9
	ldr r10, addr_get2_5
	add r9, r8, r10
	ldr r10, [r9]
	sub r9, r10, #48
	mov r0, r9
	bl  intadd
	ldr r10, addr_ii_5
	ldr r9, [r10]
	add r10, r9, #1
	ldr r9, addr_ii_5
	str r10, [r9]
	b .L847
.L857:
	b .L849
.L436:
	ldr r10, addr_chat_5
	ldr r9, [r10]
	ldr r10, =4
	mul r8, r9, r10
	ldr r10, addr_chas_5
	add r9, r8, r10
	ldr r10, [r9]
	ldr r9, =94
	cmp r10, r9
	moveq r10, #1
	movne r10, #0
	beq .L434
	b .L487
.L564:
	ldr r10, addr_chat_5
	ldr r9, [r10]
	ldr r10, =4
	mul r8, r9, r10
	ldr r10, addr_chas_5
	add r9, r8, r10
	ldr r10, [r9]
	ldr r9, =94
	cmp r10, r9
	moveq r10, #1
	movne r10, #0
	beq .L562
	b .L597
	b .F5
.LTORG
addr_ints_5:
	.word ints
addr_intt_5:
	.word intt
addr_chas_5:
	.word chas
addr_chat_5:
	.word chat
addr_i_5:
	.word i
addr_ii_5:
	.word ii
addr_c_5:
	.word c
addr_get_5:
	.word get
addr_get2_5:
	.word get2
.F5:
.L620:
	ldr r10, addr_chat_6
	ldr r9, [r10]
	ldr r10, =4
	mul r8, r9, r10
	ldr r10, addr_chas_6
	add r9, r8, r10
	ldr r10, [r9]
	ldr r9, =37
	cmp r10, r9
	moveq r10, #1
	movne r10, #0
	beq .L617
	b .L644
.L849:
	ldr r10, addr_i_6
	ldr r9, [r10]
	ldr r10, addr_ii_6
	ldr r8, [r10]
	add r10, r9, r8
	sub r9, r10, #1
	ldr r10, addr_i_6
	str r9, [r10]
	b .L833
.L487:
	b .L435
.L597:
	b .L563
.L644:
	b .L619
.L619:
	ldr r10, addr_chat_6
	ldr r9, [r10]
	ldr r10, =4
	mul r8, r9, r10
	ldr r10, addr_chas_6
	add r9, r8, r10
	ldr r10, [r9]
	ldr r9, =94
	cmp r10, r9
	moveq r10, #1
	movne r10, #0
	beq .L617
	b .L652
.L652:
	b .L618
.Lmain_END:
	add sp, sp, #20
	pop {r7, r8, r9, r10, fp, lr}
	bx  lr

addr_ints_6:
	.word ints
addr_intt_6:
	.word intt
addr_chas_6:
	.word chas
addr_chat_6:
	.word chat
addr_i_6:
	.word i
addr_ii_6:
	.word ii
addr_c_6:
	.word c
addr_get_6:
	.word get
addr_get2_6:
	.word get2
