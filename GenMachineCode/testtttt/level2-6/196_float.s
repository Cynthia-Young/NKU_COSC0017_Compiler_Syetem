	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm
	.text
	.global float_abs
	.type float_abs , %function
float_abs:
	push {r10, fp, lr}
	vpush {s29, s30, s31}
	mov fp, sp
	sub sp, sp, #4
.L81:
	vstr.32 s0, [fp, #-4]
	vldr.32 s31, [fp, #-4]
	ldr r10, =0
	vmov s30, r10
	vcvt.f32.s32  s29, s30
	vcmp.f32 s31, s29
	vmrs APSR_nzcv, FPSCR
	movlt r10, #1
	movge r10, #0
	blt .L83
	b .L88
.L83:
	vldr.32 s31, [fp, #-4]
	ldr r10, =1335156976
	vmov s30, r10
	vsub.f32 s29, s30, s31
	vmov s0, s29
	b .Lfloat_abs_END
.L88:
	b .L84
.L84:
	vldr.32 s31, [fp, #-4]
	vmov s0, s31
	b .Lfloat_abs_END
.Lfloat_abs_END:
	add sp, sp, #4
	vpop {s29, s30, s31}
	pop {r10, fp, lr}
	bx  lr

	.global circle_area
	.type circle_area , %function
circle_area:
	push {r8, r9, r10, fp, lr}
	vpush {s28, s29, s30, s31}
	mov fp, sp
	sub sp, sp, #4
.L92:
	str r0, [fp, #-4]
	ldr r10, [fp, #-4]
	vmov s31, r10
	vcvt.f32.s32  s30, s31
	ldr r10, =1335156976
	vmov s31, r10
	vmul.f32 s29, s31, s30
	ldr r10, [fp, #-4]
	vmov s31, r10
	vcvt.f32.s32  s30, s31
	vmul.f32 s31, s29, s30
	ldr r10, [fp, #-4]
	ldr r9, [fp, #-4]
	mul r8, r10, r9
	vmov s30, r8
	vcvt.f32.s32  s29, s30
	ldr r10, =1335156976
	vmov s30, r10
	vmul.f32 s28, s29, s30
	vadd.f32 s30, s31, s28
	ldr r10, =2
	vmov s31, r10
	vcvt.f32.s32  s29, s31
	vdiv.f32 s31, s30, s29
	vmov s0, s31
	b .Lcircle_area_END
.Lcircle_area_END:
	add sp, sp, #4
	vpop {s28, s29, s30, s31}
	pop {r8, r9, r10, fp, lr}
	bx  lr

	.global float_eq
	.type float_eq , %function
float_eq:
	push {r10, fp, lr}
	vpush {s29, s30, s31}
	mov fp, sp
	sub sp, sp, #8
.L102:
	vstr.32 s0, [fp, #-8]
	vstr.32 s1, [fp, #-4]
	vldr.32 s31, [fp, #-8]
	vldr.32 s30, [fp, #-4]
	vsub.f32 s29, s31, s30
	vmov s0, s29
	bl  float_abs
	vmov s31, s0
	ldr r10, =1335156976
	vmov s30, r10
	vcmp.f32 s31, s30
	vmrs APSR_nzcv, FPSCR
	movlt r10, #1
	movge r10, #0
	blt .L105
	b .L111
.L105:
	ldr r10, =1335156976
	vmov s31, r10
	vcvt.s32.f32  s30, s31
	vmov r10, s30
	mov r0, r10
	b .Lfloat_eq_END
.L111:
	b .L107
.L107:
	ldr r10, =0
	mov r0, r10
	b .Lfloat_eq_END
.Lfloat_eq_END:
	add sp, sp, #8
	vpop {s29, s30, s31}
	pop {r10, fp, lr}
	bx  lr

	.global error
	.type error , %function
error:
	push {r10, fp, lr}
	mov fp, sp
	sub sp, sp, #0
.L114:
	ldr r10, =101
	mov r0, r10
	bl  putch
	ldr r10, =114
	mov r0, r10
	bl  putch
	ldr r10, =114
	mov r0, r10
	bl  putch
	ldr r10, =111
	mov r0, r10
	bl  putch
	ldr r10, =114
	mov r0, r10
	bl  putch
	ldr r10, =10
	mov r0, r10
	bl  putch
	b .Lerror_END
.Lerror_END:
	add sp, sp, #0
	pop {r10, fp, lr}
	bx  lr

	.global ok
	.type ok , %function
ok:
	push {r10, fp, lr}
	mov fp, sp
	sub sp, sp, #0
.L121:
	ldr r10, =111
	mov r0, r10
	bl  putch
	ldr r10, =107
	mov r0, r10
	bl  putch
	ldr r10, =10
	mov r0, r10
	bl  putch
	b .Lok_END
.Lok_END:
	add sp, sp, #0
	pop {r10, fp, lr}
	bx  lr

	.global assert
	.type assert , %function
assert:
	push {r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L125:
	str r0, [fp, #-4]
	ldr r10, [fp, #-4]
	ldr r9, =0
	cmp r9, r10
	moveq r10, #1
	movne r10, #0
	beq .L127
	b .L132
.L127:
	bl  error
	b .L128
.L132:
	b .L129
.L128:
	b .Lassert_END
.L129:
	bl  ok
	b .L128
.Lassert_END:
	add sp, sp, #4
	pop {r9, r10, fp, lr}
	bx  lr

	.global main
	.type main , %function
main:
	push {r9, r10, fp, lr}
	vpush {s29, s30, s31}
	mov fp, sp
	sub sp, sp, #28
.L134:
	vldr.32 s31, =1335156976
	vldr.32 s30, =1335156976
	vmov s1, s30
	vmov s0, s31
	bl  float_eq
	mov r10, r0
	ldr r9, =0
	cmp r9, r10
	moveq r10, #1
	movne r10, #0
	beq .L137
	b .L138
	mov r0, r10
	bl  assert
	vldr.32 s31, =1335156976
	vldr.32 s30, =1335156976
	vmov s1, s30
	vmov s0, s31
	bl  float_eq
	mov r10, r0
	ldr r9, =0
	cmp r9, r10
	moveq r10, #1
	movne r10, #0
	beq .L142
	b .L143
	mov r0, r10
	bl  assert
	vldr.32 s31, =1335156976
	vldr.32 s30, =1335156976
	vmov s1, s30
	vmov s0, s31
	bl  float_eq
	mov r10, r0
	mov r0, r10
	bl  assert
	vldr.32 s31, =1335156976
	vmov s0, s31
	bl  circle_area
	vmov s31, s0
	ldr r10, =6
	mov r0, r10
	bl  circle_area
	vmov s30, s0
	vmov s1, s30
	vmov s0, s31
	bl  float_eq
	mov r10, r0
	mov r0, r10
	bl  assert
	vldr.32 s31, =1335156976
	vldr.32 s30, =1335156976
	vmov s1, s30
	vmov s0, s31
	bl  float_eq
	mov r10, r0
	ldr r9, =0
	cmp r9, r10
	moveq r10, #1
	movne r10, #0
	beq .L151
	b .L152
	mov r0, r10
	bl  assert
	ldr r10, =0
	ldr r9, =1
	cmp r10, r9
	movne r10, #1
	moveq r10, #0
	bne .L154
	b .L157
.L154:
	bl  ok
	b .L155
.L157:
	b .L155
.L155:
	ldr r10, =0
	ldr r9, =1
	cmp r10, r9
	movne r10, #1
	moveq r10, #0
	bne .L159
	b .L162
.L159:
	bl  ok
	b .L160
.L162:
	b .L160
.L160:
	ldr r10, =0
	ldr r9, =0
	cmp r10, r9
	movne r10, #1
	moveq r10, #0
	bne .L164
	b .L167
.L164:
	bl  error
	b .L165
.L167:
	b .L165
.L165:
	ldr r10, =0
	ldr r9, =1
	cmp r10, r9
	movne r10, #1
	moveq r10, #0
	bne .L169
	b .L172
.L169:
	bl  ok
	b .L170
.L172:
	b .L170
.L170:
	ldr r10, =1
	str r10, [fp, #-28]
	ldr r10, =0
	str r10, [fp, #-24]
	ldr r10, =1
	vmov s31, r10
	vcvt.f32.s32  r10, s31
	str r10, [fp, #-20]
	ldr r10, [fp, #-20]
	mov r-1, r10
	bl  getfarray
	mov r10, r0
	str r10, [fp, #-16]
	b .L180
.L180:
	ldr r10, [fp, #-28]
	ldr r9, =1000000000
	cmp r10, r9
	movlt r10, #1
	movge r10, #0
	blt .L181
	b .L185
.L181:
	bl  getfloat
	vmov s31, s0
	vstr.32 s31, [fp, #-12]
	vldr.32 s31, [fp, #-12]
	ldr r10, =1335156976
	vmov s30, r10
	vmul.f32 s29, s30, s31
	vldr.32 s31, [fp, #-12]
	vmul.f32 s30, s29, s31
	vstr.32 s30, [fp, #-8]
	vldr.32 s31, [fp, #-12]
	vmov s0, s31
	bl  circle_area
	vmov s31, s0
	vstr.32 s31, [fp, #-4]
	ldr r10, [fp, #-20]
	vldr.32 s31, [fp, #-12]
	vadd.f32 s30, r10, s31
	vstr.32 s30, [fp, #-20]
	vldr.32 s31, [fp, #-8]
	vmov s0, s31
	bl  putfloat
	ldr r10, =32
	mov r0, r10
	bl  putch
	vldr.32 s31, [fp, #-4]
	vmov s0, s31
	bl  putint
	ldr r10, =10
	mov r0, r10
	bl  putch
	ldr r10, [fp, #-28]
	vmov s31, r10
	vcvt.f32.s32  s30, s31
	ldr r10, =1335156976
	vmov s31, r10
	vmul.f32 s29, s30, s31
	vstr.32 s29, [fp, #-28]
	ldr r10, [fp, #-24]
	add r9, r10, #1
	str r9, [fp, #-24]
	b .L180
	b .F0
.LTORG
.F0:
.L185:
	b .L182
.L182:
	ldr r10, [fp, #-16]
	ldr r9, [fp, #-20]
	mov r0, r9
	mov r-1, r10
	bl  putfarray
	ldr r10, =0
	mov r0, r10
	b .Lmain_END
.Lmain_END:
	add sp, sp, #28
	vpop {s29, s30, s31}
	pop {r9, r10, fp, lr}
	bx  lr

