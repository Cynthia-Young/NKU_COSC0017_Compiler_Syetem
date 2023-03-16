	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm
	.text
	.global my_pow
	.type my_pow , %function
my_pow:
	push {r8, r9, r10, fp, lr}
	vpush {s29, s30, s31}
	mov fp, sp
	sub sp, sp, #12
.L35:
	vstr.32 s0, [fp, #-12]
	str r0, [fp, #-8]
	ldr r10, [fp, #-8]
	ldr r9, =0
	cmp r10, r9
	movlt r10, #1
	movge r10, #0
	blt .L38
	b .L42
.L38:
	vldr.32 s31, [fp, #-12]
	ldr r10, [fp, #-8]
	ldr r9, =0
	sub r8, r9, r10
	mov r0, r8
	vmov s0, s31
	bl  my_pow
	vmov s31, s0
	ldr r10, =1
	vmov s30, r10
	vcvt.f32.s32  s29, s30
	vdiv.f32 s30, s29, s31
	vmov s0, s30
	b .Lmy_pow_END
.L42:
	b .L39
.L39:
	ldr r10, =667521264
	vmov s31, r10
	vstr.32 s31, [fp, #-4]
	b .L48
.L48:
	ldr r10, [fp, #-8]
	ldr r9, =0
	cmp r9, r10
	movne r10, #1
	moveq r10, #0
	bne .L49
	b .L53
.L49:
	ldr r10, [fp, #-8]
	ldr r9, =2
	sdiv r8, r10, r9
	mul r9, r8, r9
	sub r8, r10, r9
	ldr r10, =0
	cmp r10, r8
	movne r10, #1
	moveq r10, #0
	bne .L55
	b .L59
.L53:
	b .L50
.L55:
	vldr.32 s31, [fp, #-4]
	vldr.32 s30, [fp, #-12]
	vmul.f32 s29, s31, s30
	vstr.32 s29, [fp, #-4]
	b .L56
.L59:
	b .L56
.L50:
	vldr.32 s31, [fp, #-4]
	vmov s0, s31
	b .Lmy_pow_END
.L56:
	vldr.32 s31, [fp, #-12]
	vldr.32 s30, [fp, #-12]
	vmul.f32 s29, s31, s30
	vstr.32 s29, [fp, #-12]
	ldr r10, [fp, #-8]
	ldr r9, =2
	sdiv r8, r10, r9
	str r8, [fp, #-8]
	b .L48
.Lmy_pow_END:
	add sp, sp, #12
	vpop {s29, s30, s31}
	pop {r8, r9, r10, fp, lr}
	bx  lr

	.global eee
	.type eee , %function
eee:
	push {r10, fp, lr}
	vpush {s28, s29, s30, s31}
	mov fp, sp
	sub sp, sp, #8
.L67:
	vstr.32 s0, [fp, #-8]
	vldr.32 s31, [fp, #-8]
	ldr r10, =667521264
	vmov s30, r10
	vcmp.f32 s31, s30
	vmrs APSR_nzcv, FPSCR
	movgt r10, #1
	movle r10, #0
	bgt .L69
	b .L73
.L69:
	vldr.32 s31, [fp, #-8]
	ldr r10, =2
	vmov s30, r10
	vcvt.f32.s32  s29, s30
	vdiv.f32 s30, s31, s29
	vmov s0, s30
	bl  eee
	vmov s31, s0
	vstr.32 s31, [fp, #-4]
	vldr.32 s31, [fp, #-4]
	vldr.32 s30, [fp, #-4]
	vmul.f32 s29, s31, s30
	vmov s0, s29
	b .Leee_END
.L73:
	b .L70
.L70:
	vldr.32 s31, [fp, #-8]
	ldr r10, =1
	vmov s30, r10
	vcvt.f32.s32  s29, s30
	vadd.f32 s30, s29, s31
	vldr.32 s31, [fp, #-8]
	vldr.32 s29, [fp, #-8]
	vmul.f32 s28, s31, s29
	ldr r10, =2
	vmov s31, r10
	vcvt.f32.s32  s29, s31
	vdiv.f32 s31, s28, s29
	vadd.f32 s29, s30, s31
	vldr.32 s31, [fp, #-8]
	ldr r10, =3
	mov r0, r10
	vmov s0, s31
	bl  my_pow
	vmov s31, s0
	ldr r10, =6
	vmov s30, r10
	vcvt.f32.s32  s28, s30
	vdiv.f32 s30, s31, s28
	vadd.f32 s31, s29, s30
	vldr.32 s30, [fp, #-8]
	ldr r10, =4
	mov r0, r10
	vmov s0, s30
	bl  my_pow
	vmov s30, s0
	ldr r10, =24
	vmov s29, r10
	vcvt.f32.s32  s28, s29
	vdiv.f32 s29, s30, s28
	vadd.f32 s30, s31, s29
	vldr.32 s31, [fp, #-8]
	ldr r10, =5
	mov r0, r10
	vmov s0, s31
	bl  my_pow
	vmov s31, s0
	ldr r10, =120
	vmov s29, r10
	vcvt.f32.s32  s28, s29
	vdiv.f32 s29, s31, s28
	vadd.f32 s31, s30, s29
	vmov s0, s31
	b .Leee_END
.Leee_END:
	add sp, sp, #8
	vpop {s28, s29, s30, s31}
	pop {r10, fp, lr}
	bx  lr

	.global my_exp
	.type my_exp , %function
my_exp:
	push {r10, fp, lr}
	vpush {s29, s30, s31}
	mov fp, sp
	sub sp, sp, #16
.L94:
	vstr.32 s0, [fp, #-16]
	vldr.32 s31, [fp, #-16]
	ldr r10, =0
	vmov s30, r10
	vcvt.f32.s32  s29, s30
	vcmp.f32 s31, s29
	vmrs APSR_nzcv, FPSCR
	movlt r10, #1
	movge r10, #0
	blt .L96
	b .L101
.L96:
	vldr.32 s31, [fp, #-16]
	ldr r10, =667521264
	vmov s30, r10
	vsub.f32 s29, s30, s31
	vmov s0, s29
	bl  my_exp
	vmov s31, s0
	ldr r10, =1
	vmov s30, r10
	vcvt.f32.s32  s29, s30
	vdiv.f32 s30, s29, s31
	vmov s0, s30
	b .Lmy_exp_END
.L101:
	b .L97
.L97:
	vldr.32 s31, [fp, #-16]
	vcvt.s32.f32  s30, s31
	vmov r10, s30
	str r10, [fp, #-12]
	vldr.32 s31, [fp, #-16]
	ldr r10, [fp, #-12]
	vmov s30, r10
	vcvt.f32.s32  s29, s30
	vsub.f32 s30, s31, s29
	vstr.32 s30, [fp, #-16]
	ldr r10, [fp, #-12]
	vldr.32 s31, =667521264
	mov r0, r10
	vmov s0, s31
	bl  my_pow
	vmov s31, s0
	vstr.32 s31, [fp, #-8]
	vldr.32 s31, [fp, #-16]
	vmov s0, s31
	bl  eee
	vmov s31, s0
	vstr.32 s31, [fp, #-4]
	vldr.32 s31, [fp, #-8]
	vldr.32 s30, [fp, #-4]
	vmul.f32 s29, s31, s30
	vmov s0, s29
	b .Lmy_exp_END
.Lmy_exp_END:
	add sp, sp, #16
	vpop {s29, s30, s31}
	pop {r10, fp, lr}
	bx  lr

