	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm
	.data
	.global test_block
	.align 4
	.size test_block, 4
test_block:
	.word 0
	.global test_dct
	.align 4
	.size test_dct, 4
test_dct:
	.word 0
	.global test_idct
	.align 4
	.size test_idct, 4
test_idct:
	.word 0
	.text
	.global my_fabs
	.type my_fabs , %function
my_fabs:
	push {r10, fp, lr}
	vpush {s29, s30, s31}
	mov fp, sp
	sub sp, sp, #4
.L110:
	vstr.32 s0, [fp, #-4]
	vldr.32 s31, [fp, #-4]
	ldr r10, =0
	vmov s30, r10
	vcvt.f32.s32  s29, s30
	vcmp.f32 s31, s29
	vmrs APSR_nzcv, FPSCR
	movgt r10, #1
	movle r10, #0
	bgt .L112
	b .L117
.L112:
	vldr.32 s31, [fp, #-4]
	vmov s0, s31
	b .Lmy_fabs_END
.L117:
	b .L113
.L113:
	vldr.32 s31, [fp, #-4]
	ldr r10, =0
	vmov s30, r10
	vsub.f32 s29, s30, s31
	vmov s0, s29
	b .Lmy_fabs_END
.Lmy_fabs_END:
	add sp, sp, #4
	vpop {s29, s30, s31}
	pop {r10, fp, lr}
	bx  lr

	.global p
	.type p , %function
p:
	push {r10, fp, lr}
	vpush {s28, s29, s30, s31}
	mov fp, sp
	sub sp, sp, #4
.L121:
	vstr.32 s0, [fp, #-4]
	vldr.32 s31, [fp, #-4]
	ldr r10, =3
	vmov s30, r10
	vcvt.f32.s32  s29, s30
	vmul.f32 s30, s29, s31
	vldr.32 s31, [fp, #-4]
	ldr r10, =4
	vmov s29, r10
	vcvt.f32.s32  s28, s29
	vmul.f32 s29, s28, s31
	vldr.32 s31, [fp, #-4]
	vmul.f32 s28, s29, s31
	vldr.32 s31, [fp, #-4]
	vmul.f32 s29, s28, s31
	vsub.f32 s31, s30, s29
	vmov s0, s31
	b .Lp_END
.Lp_END:
	add sp, sp, #4
	vpop {s28, s29, s30, s31}
	pop {r10, fp, lr}
	bx  lr

	.global my_sin_impl
	.type my_sin_impl , %function
my_sin_impl:
	push {r10, fp, lr}
	vpush {s29, s30, s31}
	mov fp, sp
	sub sp, sp, #4
.L129:
	vstr.32 s0, [fp, #-4]
	vldr.32 s31, [fp, #-4]
	vmov s0, s31
	bl  my_fabs
	vmov s31, s0
	ldr r10, =897988541
	vmov s30, r10
	vcmp.f32 s31, s30
	vmrs APSR_nzcv, FPSCR
	movge r10, #1
	movlt r10, #0
	ble .L131
	b .L135
.L131:
	vldr.32 s31, [fp, #-4]
	vmov s0, s31
	b .Lmy_sin_impl_END
.L135:
	b .L132
.L132:
	vldr.32 s31, [fp, #-4]
	ldr r10, =1077936128
	vmov s30, r10
	vdiv.f32 s29, s31, s30
	vmov s0, s29
	bl  my_sin_impl
	vmov s31, s0
	vmov s0, s31
	bl  p
	vmov s31, s0
	vmov s0, s31
	b .Lmy_sin_impl_END
.Lmy_sin_impl_END:
	add sp, sp, #4
	vpop {s29, s30, s31}
	pop {r10, fp, lr}
	bx  lr

	.global my_sin
	.type my_sin , %function
my_sin:
	push {r10, fp, lr}
	vpush {s28, s29, s30, s31}
	mov fp, sp
	sub sp, sp, #8
.L139:
	vstr.32 s0, [fp, #-8]
	vldr.32 s31, [fp, #-8]
	ldr r10, =1086918619
	vmov s30, r10
	vcmp.f32 s31, s30
	vmrs APSR_nzcv, FPSCR
	movgt r10, #1
	movle r10, #0
	bgt .L141
	b .L146
.L141:
	vldr.32 s31, [fp, #-8]
	ldr r10, =1086918619
	vmov s30, r10
	vdiv.f32 s29, s31, s30
	vcvt.s32.f32  s31, s29
	vmov r10, s31
	str r10, [fp, #-4]
	vldr.32 s31, [fp, #-8]
	ldr r10, [fp, #-4]
	vmov s30, r10
	vcvt.f32.s32  s29, s30
	ldr r10, =1086918619
	vmov s30, r10
	vmul.f32 s28, s29, s30
	vsub.f32 s30, s31, s28
	vstr.32 s30, [fp, #-8]
	b .L142
.L146:
	b .L143
.L142:
	vldr.32 s31, [fp, #-8]
	ldr r10, =1078530011
	vmov s30, r10
	vcmp.f32 s31, s30
	vmrs APSR_nzcv, FPSCR
	movgt r10, #1
	movle r10, #0
	bgt .L158
	b .L162
.L143:
	vldr.32 s31, [fp, #-8]
	ldr r10, =3233808384
	vmov s30, r10
	vcmp.f32 s31, s30
	vmrs APSR_nzcv, FPSCR
	movlt r10, #1
	movge r10, #0
	blt .L141
	b .L150
.L158:
	vldr.32 s31, [fp, #-8]
	ldr r10, =1086918619
	vmov s30, r10
	vsub.f32 s29, s31, s30
	vstr.32 s29, [fp, #-8]
	b .L159
.L162:
	b .L159
.L150:
	b .L142
.L159:
	vldr.32 s31, [fp, #-8]
	ldr r10, =3225419776
	vmov s30, r10
	vcmp.f32 s31, s30
	vmrs APSR_nzcv, FPSCR
	movlt r10, #1
	movge r10, #0
	blt .L165
	b .L169
.L165:
	vldr.32 s31, [fp, #-8]
	ldr r10, =1086918619
	vmov s30, r10
	vadd.f32 s29, s31, s30
	vstr.32 s29, [fp, #-8]
	b .L166
.L169:
	b .L166
.L166:
	vldr.32 s31, [fp, #-8]
	vmov s0, s31
	bl  my_sin_impl
	vmov s31, s0
	vmov s0, s31
	b .Lmy_sin_END
.Lmy_sin_END:
	add sp, sp, #8
	vpop {s28, s29, s30, s31}
	pop {r10, fp, lr}
	bx  lr

	.global my_cos
	.type my_cos , %function
my_cos:
	push {r10, fp, lr}
	vpush {s29, s30, s31}
	mov fp, sp
	sub sp, sp, #4
.L173:
	vstr.32 s0, [fp, #-4]
	vldr.32 s31, [fp, #-4]
	ldr r10, =1070141403
	vmov s30, r10
	vadd.f32 s29, s31, s30
	vmov s0, s29
	bl  my_sin
	vmov s31, s0
	vmov s0, s31
	b .Lmy_cos_END
.Lmy_cos_END:
	add sp, sp, #4
	vpop {s29, s30, s31}
	pop {r10, fp, lr}
	bx  lr

	.global write_mat
	.type write_mat , %function
write_mat:
	push {r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #20
.L176:
	str r0, [fp, #-20]
	str r1, [fp, #-16]
	str r2, [fp, #-12]
	ldr r10, =0
	str r10, [fp, #-8]
	b .L181
.L181:
	ldr r10, [fp, #-8]
	ldr r9, [fp, #-16]
	cmp r10, r9
	movlt r10, #1
	movge r10, #0
	blt .L182
	b .L187
.L182:
	ldr r10, [fp, #-20]
	mov r-1, r10
	bl  putfloat
	ldr r10, =1
	str r10, [fp, #-4]
	b .L191
.L187:
	b .L183
.L191:
	ldr r10, [fp, #-4]
	ldr r9, [fp, #-12]
	cmp r10, r9
	movlt r10, #1
	movge r10, #0
	blt .L192
	b .L197
.L183:
	ldr r10, =10
	mov r0, r10
	bl  putch
	b .Lwrite_mat_END
.L192:
	ldr r10, =32
	mov r0, r10
	bl  putch
	ldr r10, [fp, #-20]
	mov r-1, r10
	bl  putfloat
	ldr r10, [fp, #-4]
	add r9, r10, #1
	str r9, [fp, #-4]
	b .L191
.L197:
	b .L193
.L193:
	ldr r10, =10
	mov r0, r10
	bl  putch
	ldr r10, [fp, #-8]
	add r9, r10, #1
	str r9, [fp, #-8]
	b .L181
.Lwrite_mat_END:
	add sp, sp, #20
	pop {r9, r10, fp, lr}
	bx  lr

	.global dct
	.type dct , %function
dct:
	push {r8, r9, r10, fp, lr}
	vpush {s27, s28, s29, s30, s31}
	mov fp, sp
	sub sp, sp, #32
.L205:
	str r0, [fp, #-32]
	str r1, [fp, #-28]
	str r2, [fp, #-24]
	str r3, [fp, #-20]
	ldr r10, =0
	str r10, [fp, #-16]
	b .L211
.L211:
	ldr r10, [fp, #-16]
	ldr r9, [fp, #-24]
	cmp r10, r9
	movlt r10, #1
	movge r10, #0
	blt .L212
	b .L217
.L212:
	ldr r10, =0
	str r10, [fp, #-12]
	b .L220
.L217:
	b .L213
.L220:
	ldr r10, [fp, #-12]
	ldr r9, [fp, #-20]
	cmp r10, r9
	movlt r10, #1
	movge r10, #0
	blt .L221
	b .L226
.L213:
	b .Ldct_END
.L221:
	ldr r10, =0
	str r10, [fp, #-32]
	ldr r10, =0
	str r10, [fp, #-8]
	b .L229
.L226:
	b .L222
.L229:
	ldr r10, [fp, #-8]
	ldr r9, [fp, #-24]
	cmp r10, r9
	movlt r10, #1
	movge r10, #0
	blt .L230
	b .L235
.L222:
	ldr r10, [fp, #-16]
	add r9, r10, #1
	str r9, [fp, #-16]
	b .L211
.L230:
	ldr r10, =0
	str r10, [fp, #-4]
	b .L238
.L235:
	b .L231
.L238:
	ldr r10, [fp, #-4]
	ldr r9, [fp, #-20]
	cmp r10, r9
	movlt r10, #1
	movge r10, #0
	blt .L239
	b .L244
.L231:
	ldr r10, [fp, #-12]
	add r9, r10, #1
	str r9, [fp, #-12]
	b .L220
.L239:
	ldr r10, [fp, #-32]
	ldr r9, [fp, #-28]
	ldr r8, [fp, #-24]
	vmov s31, r8
	vcvt.f32.s32  s30, s31
	ldr r8, =1078530011
	vmov s31, r8
	vdiv.f32 s29, s31, s30
	ldr r8, [fp, #-8]
	vmov s31, r8
	vcvt.f32.s32  s30, s31
	ldr r8, =1056964608
	vmov s31, r8
	vadd.f32 s28, s30, s31
	vmul.f32 s31, s29, s28
	ldr r8, [fp, #-16]
	vmov s30, r8
	vcvt.f32.s32  s29, s30
	vmul.f32 s30, s31, s29
	vmov s0, s30
	bl  my_cos
	vmov s31, s0
	vmul.f32 s30, r9, s31
	ldr r9, [fp, #-20]
	vmov s31, r9
	vcvt.f32.s32  s29, s31
	ldr r9, =1078530011
	vmov s31, r9
	vdiv.f32 s28, s31, s29
	ldr r9, [fp, #-4]
	vmov s31, r9
	vcvt.f32.s32  s29, s31
	ldr r9, =1056964608
	vmov s31, r9
	vadd.f32 s27, s29, s31
	vmul.f32 s31, s28, s27
	ldr r9, [fp, #-12]
	vmov s29, r9
	vcvt.f32.s32  s28, s29
	vmul.f32 s29, s31, s28
	vmov s0, s29
	bl  my_cos
	vmov s31, s0
	vmul.f32 s29, s30, s31
	vadd.f32 s31, r10, s29
	vstr.32 s31, [fp, #-32]
	ldr r10, [fp, #-4]
	add r9, r10, #1
	str r9, [fp, #-4]
	b .L238
.L244:
	b .L240
.L240:
	ldr r10, [fp, #-8]
	add r9, r10, #1
	str r9, [fp, #-8]
	b .L229
.Ldct_END:
	add sp, sp, #32
	vpop {s27, s28, s29, s30, s31}
	pop {r8, r9, r10, fp, lr}
	bx  lr

	.global idct
	.type idct , %function
idct:
	push {r8, r9, r10, fp, lr}
	vpush {s27, s28, s29, s30, s31}
	mov fp, sp
	sub sp, sp, #32
.L264:
	str r0, [fp, #-32]
	str r1, [fp, #-28]
	str r2, [fp, #-24]
	str r3, [fp, #-20]
	ldr r10, =0
	str r10, [fp, #-16]
	b .L270
.L270:
	ldr r10, [fp, #-16]
	ldr r9, [fp, #-24]
	cmp r10, r9
	movlt r10, #1
	movge r10, #0
	blt .L271
	b .L276
.L271:
	ldr r10, =0
	str r10, [fp, #-12]
	b .L279
.L276:
	b .L272
.L279:
	ldr r10, [fp, #-12]
	ldr r9, [fp, #-20]
	cmp r10, r9
	movlt r10, #1
	movge r10, #0
	blt .L280
	b .L285
.L272:
	b .Lidct_END
.L280:
	ldr r10, [fp, #-28]
	ldr r9, =1048576000
	vmov s31, r9
	vmul.f32 s30, s31, r10
	vstr.32 s30, [fp, #-32]
	ldr r10, =1
	str r10, [fp, #-8]
	b .L290
.L285:
	b .L281
.L290:
	ldr r10, [fp, #-8]
	ldr r9, [fp, #-24]
	cmp r10, r9
	movlt r10, #1
	movge r10, #0
	blt .L291
	b .L296
.L281:
	ldr r10, [fp, #-16]
	add r9, r10, #1
	str r9, [fp, #-16]
	b .L270
.L291:
	ldr r10, [fp, #-32]
	ldr r9, [fp, #-28]
	ldr r8, =1056964608
	vmov s31, r8
	vmul.f32 s30, s31, r9
	vadd.f32 s31, r10, s30
	vstr.32 s31, [fp, #-32]
	ldr r10, [fp, #-8]
	add r9, r10, #1
	str r9, [fp, #-8]
	b .L290
.L296:
	b .L292
.L292:
	ldr r10, =1
	str r10, [fp, #-4]
	b .L301
.L301:
	ldr r10, [fp, #-4]
	ldr r9, [fp, #-20]
	cmp r10, r9
	movlt r10, #1
	movge r10, #0
	blt .L302
	b .L307
.L302:
	ldr r10, [fp, #-32]
	ldr r9, [fp, #-28]
	ldr r8, =1056964608
	vmov s31, r8
	vmul.f32 s30, s31, r9
	vadd.f32 s31, r10, s30
	vstr.32 s31, [fp, #-32]
	ldr r10, [fp, #-4]
	add r9, r10, #1
	str r9, [fp, #-4]
	b .L301
.L307:
	b .L303
.L303:
	ldr r10, =1
	str r10, [fp, #-8]
	b .L312
.L312:
	ldr r10, [fp, #-8]
	ldr r9, [fp, #-24]
	cmp r10, r9
	movlt r10, #1
	movge r10, #0
	blt .L313
	b .L318
.L313:
	ldr r10, =1
	str r10, [fp, #-4]
	b .L320
.L318:
	b .L314
.L320:
	ldr r10, [fp, #-4]
	ldr r9, [fp, #-20]
	cmp r10, r9
	movlt r10, #1
	movge r10, #0
	blt .L321
	b .L326
.L314:
	ldr r10, [fp, #-32]
	ldr r9, =1073741824
	vmov s31, r9
	vmul.f32 s30, r10, s31
	ldr r10, [fp, #-24]
	vmov s31, r10
	vcvt.f32.s32  s29, s31
	vdiv.f32 s31, s30, s29
	ldr r10, =1073741824
	vmov s30, r10
	vmul.f32 s29, s31, s30
	ldr r10, [fp, #-20]
	vmov s31, r10
	vcvt.f32.s32  s30, s31
	vdiv.f32 s31, s29, s30
	vstr.32 s31, [fp, #-32]
	ldr r10, [fp, #-12]
	add r9, r10, #1
	str r9, [fp, #-12]
	b .L279
.L321:
	ldr r10, [fp, #-32]
	ldr r9, [fp, #-28]
	ldr r8, [fp, #-24]
	vmov s31, r8
	vcvt.f32.s32  s30, s31
	ldr r8, =1078530011
	vmov s31, r8
	vdiv.f32 s29, s31, s30
	ldr r8, [fp, #-16]
	vmov s31, r8
	vcvt.f32.s32  s30, s31
	ldr r8, =1056964608
	vmov s31, r8
	vadd.f32 s28, s30, s31
	vmul.f32 s31, s29, s28
	ldr r8, [fp, #-8]
	vmov s30, r8
	vcvt.f32.s32  s29, s30
	vmul.f32 s30, s31, s29
	vmov s0, s30
	bl  my_cos
	vmov s31, s0
	vmul.f32 s30, r9, s31
	ldr r9, [fp, #-20]
	vmov s31, r9
	vcvt.f32.s32  s29, s31
	ldr r9, =1078530011
	vmov s31, r9
	vdiv.f32 s28, s31, s29
	ldr r9, [fp, #-12]
	vmov s31, r9
	vcvt.f32.s32  s29, s31
	ldr r9, =1056964608
	vmov s31, r9
	vadd.f32 s27, s29, s31
	vmul.f32 s31, s28, s27
	ldr r9, [fp, #-4]
	vmov s29, r9
	vcvt.f32.s32  s28, s29
	vmul.f32 s29, s31, s28
	vmov s0, s29
	bl  my_cos
	vmov s31, s0
	vmul.f32 s29, s30, s31
	vadd.f32 s31, r10, s29
	vstr.32 s31, [fp, #-32]
	ldr r10, [fp, #-4]
	add r9, r10, #1
	str r9, [fp, #-4]
	b .L320
	b .F0
.LTORG
addr_test_block_0:
	.word test_block
addr_test_dct_0:
	.word test_dct
addr_test_idct_0:
	.word test_idct
.F0:
.L326:
	b .L322
.L322:
	ldr r10, [fp, #-8]
	add r9, r10, #1
	str r9, [fp, #-8]
	b .L312
.Lidct_END:
	add sp, sp, #32
	vpop {s27, s28, s29, s30, s31}
	pop {r8, r9, r10, fp, lr}
	bx  lr

	.global main
	.type main , %function
main:
	push {r7, r8, r9, r10, fp, lr}
	vpush {s31}
	mov fp, sp
	sub sp, sp, #16
.L351:
	bl  getint
	mov r10, r0
	str r10, [fp, #-16]
	bl  getint
	mov r10, r0
	str r10, [fp, #-12]
	ldr r10, =0
	str r10, [fp, #-8]
	b .L355
.L355:
	ldr r10, [fp, #-8]
	ldr r9, [fp, #-16]
	cmp r10, r9
	movlt r10, #1
	movge r10, #0
	blt .L356
	b .L361
.L356:
	ldr r10, =0
	str r10, [fp, #-4]
	b .L364
.L361:
	b .L357
.L364:
	ldr r10, [fp, #-4]
	ldr r9, [fp, #-12]
	cmp r10, r9
	movlt r10, #1
	movge r10, #0
	blt .L365
	b .L370
.L357:
	ldr r10, addr_test_dct_1
	ldr r9, [r10]
	ldr r10, addr_test_block_1
	ldr r8, [r10]
	ldr r10, [fp, #-16]
	ldr r7, [fp, #-12]
	mov r1, r7
	mov r0, r10
	mov r-1, r8
	mov r-2, r9
	bl  dct
	ldr r10, addr_test_dct_1
	ldr r9, [r10]
	ldr r10, [fp, #-16]
	ldr r8, [fp, #-12]
	mov r1, r8
	mov r0, r10
	mov r-1, r9
	bl  write_mat
	ldr r10, addr_test_idct_1
	ldr r9, [r10]
	ldr r10, addr_test_dct_1
	ldr r8, [r10]
	ldr r10, [fp, #-16]
	ldr r7, [fp, #-12]
	mov r1, r7
	mov r0, r10
	mov r-1, r8
	mov r-2, r9
	bl  idct
	ldr r10, addr_test_idct_1
	ldr r9, [r10]
	ldr r10, [fp, #-16]
	ldr r8, [fp, #-12]
	mov r1, r8
	mov r0, r10
	mov r-1, r9
	bl  write_mat
	ldr r10, =0
	mov r0, r10
	b .Lmain_END
.L365:
	bl  getfloat
	vmov s31, s0
	ldr r10, addr_test_block_1
	vstr.32 s31, [r10]
	ldr r10, [fp, #-4]
	add r9, r10, #1
	str r9, [fp, #-4]
	b .L364
.L370:
	b .L366
.L366:
	ldr r10, [fp, #-8]
	add r9, r10, #1
	str r9, [fp, #-8]
	b .L355
.Lmain_END:
	add sp, sp, #16
	vpop {s31}
	pop {r7, r8, r9, r10, fp, lr}
	bx  lr

addr_test_block_1:
	.word test_block
addr_test_dct_1:
	.word test_dct
addr_test_idct_1:
	.word test_idct
