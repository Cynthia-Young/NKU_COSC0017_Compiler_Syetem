	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm
	.data
	.comm	image,4194304,4
	.global width
	.align 4
	.size width, 4
width:
	.word 0
	.global height
	.align 4
	.size height, 4
height:
	.word 0
	.text
	.global my_fabs
	.type my_fabs , %function
my_fabs:
	push {r10, fp, lr}
	vpush {s29, s30, s31}
	mov fp, sp
	sub sp, sp, #4
.L97:
	vstr.32 s0, [fp, #-4]
	vldr.32 s31, [fp, #-4]
	ldr r10, =0
	vmov s30, r10
	vcvt.f32.s32  s29, s30
	vcmp.f32 s31, s29
	vmrs APSR_nzcv, FPSCR
	movgt r10, #1
	movle r10, #0
	bgt .L99
	b .L104
.L99:
	vldr.32 s31, [fp, #-4]
	vmov s0, s31
	b .Lmy_fabs_END
.L104:
	b .L100
.L100:
	vldr.32 s31, [fp, #-4]
	ldr r10, =-1525194512
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
.L108:
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
.L116:
	vstr.32 s0, [fp, #-4]
	vldr.32 s31, [fp, #-4]
	vmov s0, s31
	bl  my_fabs
	vmov s31, s0
	ldr r10, =-1525194512
	vmov s30, r10
	vcmp.f32 s31, s30
	vmrs APSR_nzcv, FPSCR
	movge r10, #1
	movlt r10, #0
	ble .L118
	b .L122
.L118:
	vldr.32 s31, [fp, #-4]
	vmov s0, s31
	b .Lmy_sin_impl_END
.L122:
	b .L119
.L119:
	vldr.32 s31, [fp, #-4]
	ldr r10, =-1525194512
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
.L126:
	vstr.32 s0, [fp, #-8]
	vldr.32 s31, [fp, #-8]
	ldr r10, =-1525194512
	vmov s30, r10
	vcmp.f32 s31, s30
	vmrs APSR_nzcv, FPSCR
	movgt r10, #1
	movle r10, #0
	bgt .L128
	b .L133
.L128:
	vldr.32 s31, [fp, #-8]
	ldr r10, =-1525194512
	vmov s30, r10
	vdiv.f32 s29, s31, s30
	vcvt.s32.f32  s31, s29
	vmov r10, s31
	str r10, [fp, #-4]
	vldr.32 s31, [fp, #-8]
	ldr r10, [fp, #-4]
	vmov s30, r10
	vcvt.f32.s32  s29, s30
	ldr r10, =-1525194512
	vmov s30, r10
	vmul.f32 s28, s29, s30
	vsub.f32 s30, s31, s28
	vstr.32 s30, [fp, #-8]
	b .L129
.L133:
	b .L130
.L129:
	vldr.32 s31, [fp, #-8]
	ldr r10, =-1525194512
	vmov s30, r10
	vcmp.f32 s31, s30
	vmrs APSR_nzcv, FPSCR
	movgt r10, #1
	movle r10, #0
	bgt .L145
	b .L149
.L130:
	vldr.32 s31, [fp, #-8]
	ldr r10, =-1525194512
	vmov s30, r10
	vcmp.f32 s31, s30
	vmrs APSR_nzcv, FPSCR
	movlt r10, #1
	movge r10, #0
	blt .L128
	b .L137
.L145:
	vldr.32 s31, [fp, #-8]
	ldr r10, =-1525194512
	vmov s30, r10
	vsub.f32 s29, s31, s30
	vstr.32 s29, [fp, #-8]
	b .L146
.L149:
	b .L146
.L137:
	b .L129
.L146:
	vldr.32 s31, [fp, #-8]
	ldr r10, =-1525194512
	vmov s30, r10
	vcmp.f32 s31, s30
	vmrs APSR_nzcv, FPSCR
	movlt r10, #1
	movge r10, #0
	blt .L152
	b .L156
.L152:
	vldr.32 s31, [fp, #-8]
	ldr r10, =-1525194512
	vmov s30, r10
	vadd.f32 s29, s31, s30
	vstr.32 s29, [fp, #-8]
	b .L153
.L156:
	b .L153
.L153:
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
.L160:
	vstr.32 s0, [fp, #-4]
	vldr.32 s31, [fp, #-4]
	ldr r10, =-1525194512
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

	.global read_image
	.type read_image , %function
read_image:
	push {r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L163:
	bl  getch
	mov r10, r0
	ldr r9, =80
	cmp r10, r9
	movne r10, #1
	moveq r10, #0
	bne .L164
	b .L168
.L164:
	ldr r10, =-1
	mov r0, r10
	b .Lread_image_END
.L168:
	b .L166
.L166:
	bl  getch
	mov r10, r0
	ldr r9, =50
	cmp r10, r9
	movne r10, #1
	moveq r10, #0
	bne .L164
	b .L171
.L171:
	b .L165
.L165:
	bl  getint
	mov r10, r0
	ldr r9, addr_width_0
	str r10, [r9]
	bl  getint
	mov r10, r0
	ldr r9, addr_height_0
	str r10, [r9]
	ldr r10, addr_width_0
	ldr r9, [r10]
	ldr r10, =1024
	cmp r9, r10
	movgt r10, #1
	movle r10, #0
	bgt .L173
	b .L179
.L173:
	ldr r10, =-1
	mov r0, r10
	b .Lread_image_END
.L179:
	b .L176
.L176:
	ldr r10, addr_height_0
	ldr r9, [r10]
	ldr r10, =1024
	cmp r9, r10
	movgt r10, #1
	movle r10, #0
	bgt .L173
	b .L183
.L183:
	b .L175
.L175:
	bl  getint
	mov r10, r0
	ldr r9, =255
	cmp r10, r9
	movne r10, #1
	moveq r10, #0
	bne .L173
	b .L186
.L186:
	b .L174
.L174:
	ldr r10, =0
	str r10, [fp, #-8]
	b .L189
.L189:
	ldr r10, [fp, #-8]
	ldr r9, addr_height_0
	ldr r8, [r9]
	cmp r10, r8
	movlt r10, #1
	movge r10, #0
	blt .L190
	b .L195
.L190:
	ldr r10, =0
	str r10, [fp, #-4]
	b .L198
.L195:
	b .L191
.L198:
	ldr r10, [fp, #-4]
	ldr r9, addr_width_0
	ldr r8, [r9]
	cmp r10, r8
	movlt r10, #1
	movge r10, #0
	blt .L199
	b .L204
.L191:
	ldr r10, =0
	mov r0, r10
	b .Lread_image_END
.L199:
	bl  getint
	mov r10, r0
	ldr r9, [fp, #-8]
	ldr r8, addr_width_0
	ldr r7, [r8]
	mul r8, r9, r7
	ldr r9, [fp, #-4]
	add r7, r8, r9
	ldr r9, =4
	mul r8, r7, r9
	ldr r9, addr_image_0
	add r7, r8, r9
	str r10, [r7]
	ldr r10, [fp, #-4]
	add r9, r10, #1
	str r9, [fp, #-4]
	b .L198
.L204:
	b .L200
.L200:
	ldr r10, [fp, #-8]
	add r9, r10, #1
	str r9, [fp, #-8]
	b .L189
.Lread_image_END:
	add sp, sp, #8
	pop {r7, r8, r9, r10, fp, lr}
	bx  lr

	.global rotate
	.type rotate , %function
rotate:
	push {r8, r9, r10, fp, lr}
	vpush {s28, s29, s30, s31}
	mov fp, sp
	sub sp, sp, #44
.L214:
	str r0, [fp, #-44]
	str r1, [fp, #-40]
	vstr.32 s0, [fp, #-36]
	vldr.32 s31, [fp, #-36]
	vmov s0, s31
	bl  my_sin
	vmov s31, s0
	vstr.32 s31, [fp, #-32]
	vldr.32 s31, [fp, #-36]
	vmov s0, s31
	bl  my_cos
	vmov s31, s0
	vstr.32 s31, [fp, #-28]
	ldr r10, addr_width_0
	ldr r9, [r10]
	ldr r10, =2
	sdiv r8, r9, r10
	str r8, [fp, #-24]
	ldr r10, addr_height_0
	ldr r9, [r10]
	ldr r10, =2
	sdiv r8, r9, r10
	str r8, [fp, #-20]
	ldr r10, [fp, #-44]
	ldr r9, [fp, #-24]
	sub r8, r10, r9
	str r8, [fp, #-16]
	ldr r10, [fp, #-40]
	ldr r9, [fp, #-20]
	sub r8, r10, r9
	str r8, [fp, #-12]
	ldr r10, [fp, #-16]
	vldr.32 s31, [fp, #-28]
	vmov s30, r10
	vcvt.f32.s32  s29, s30
	vmul.f32 s30, s29, s31
	ldr r10, [fp, #-12]
	vldr.32 s31, [fp, #-32]
	vmov s29, r10
	vcvt.f32.s32  s28, s29
	vmul.f32 s29, s28, s31
	vsub.f32 s31, s30, s29
	ldr r10, [fp, #-24]
	vmov s30, r10
	vcvt.f32.s32  s29, s30
	vadd.f32 s30, s31, s29
	vcvt.s32.f32  s31, s30
	vmov r10, s31
	str r10, [fp, #-8]
	ldr r10, [fp, #-16]
	vldr.32 s31, [fp, #-32]
	vmov s30, r10
	vcvt.f32.s32  s29, s30
	vmul.f32 s30, s29, s31
	ldr r10, [fp, #-12]
	vldr.32 s31, [fp, #-28]
	vmov s29, r10
	vcvt.f32.s32  s28, s29
	vmul.f32 s29, s28, s31
	vadd.f32 s31, s30, s29
	ldr r10, [fp, #-20]
	vmov s30, r10
	vcvt.f32.s32  s29, s30
	vadd.f32 s30, s31, s29
	vcvt.s32.f32  s31, s30
	vmov r10, s31
	str r10, [fp, #-4]
	ldr r10, [fp, #-8]
	ldr r9, =0
	cmp r10, r9
	movlt r10, #1
	movge r10, #0
	blt .L252
	b .L259
.L252:
	ldr r10, =0
	mov r0, r10
	b .Lrotate_END
.L259:
	b .L256
.L256:
	ldr r10, [fp, #-8]
	ldr r9, addr_width_0
	ldr r8, [r9]
	cmp r10, r8
	movge r10, #1
	movlt r10, #0
	bge .L252
	b .L264
.L264:
	b .L255
.L255:
	ldr r10, [fp, #-4]
	ldr r9, =0
	cmp r10, r9
	movlt r10, #1
	movge r10, #0
	blt .L252
	b .L268
.L268:
	b .L254
.L254:
	ldr r10, [fp, #-4]
	ldr r9, addr_height_0
	ldr r8, [r9]
	cmp r10, r8
	movge r10, #1
	movlt r10, #0
	bge .L252
	b .L273
.L273:
	b .L253
.L253:
	ldr r10, [fp, #-4]
	ldr r9, addr_width_0
	ldr r8, [r9]
	mul r9, r10, r8
	ldr r10, [fp, #-8]
	add r8, r9, r10
	ldr r10, =4
	mul r9, r8, r10
	ldr r10, addr_image_0
	add r8, r9, r10
	ldr r10, [r8]
	mov r0, r10
	b .Lrotate_END
.Lrotate_END:
	add sp, sp, #44
	vpop {s28, s29, s30, s31}
	pop {r8, r9, r10, fp, lr}
	bx  lr

	.global write_pgm
	.type write_pgm , %function
write_pgm:
	push {r8, r9, r10, fp, lr}
	vpush {s31}
	mov fp, sp
	sub sp, sp, #12
.L282:
	vstr.32 s0, [fp, #-12]
	ldr r10, =80
	mov r0, r10
	bl  putch
	ldr r10, =50
	mov r0, r10
	bl  putch
	ldr r10, =10
	mov r0, r10
	bl  putch
	ldr r10, addr_width_0
	ldr r9, [r10]
	mov r0, r9
	bl  putint
	ldr r10, =32
	mov r0, r10
	bl  putch
	ldr r10, addr_height_0
	ldr r9, [r10]
	mov r0, r9
	bl  putint
	ldr r10, =32
	mov r0, r10
	bl  putch
	ldr r10, =255
	mov r0, r10
	bl  putint
	ldr r10, =10
	mov r0, r10
	bl  putch
	ldr r10, =0
	str r10, [fp, #-8]
	b .L294
.L294:
	ldr r10, [fp, #-8]
	ldr r9, addr_height_0
	ldr r8, [r9]
	cmp r10, r8
	movlt r10, #1
	movge r10, #0
	blt .L295
	b .L300
.L295:
	ldr r10, =0
	str r10, [fp, #-4]
	b .L303
.L300:
	b .L296
.L303:
	ldr r10, [fp, #-4]
	ldr r9, addr_width_0
	ldr r8, [r9]
	cmp r10, r8
	movlt r10, #1
	movge r10, #0
	blt .L304
	b .L309
.L296:
	b .Lwrite_pgm_END
.L304:
	ldr r10, [fp, #-4]
	ldr r9, [fp, #-8]
	vldr.32 s31, [fp, #-12]
	vmov s0, s31
	mov r1, r9
	mov r0, r10
	bl  rotate
	mov r10, r0
	mov r0, r10
	bl  putint
	ldr r10, =32
	mov r0, r10
	bl  putch
	ldr r10, [fp, #-4]
	add r9, r10, #1
	str r9, [fp, #-4]
	b .L303
.L309:
	b .L305
.L305:
	ldr r10, =10
	mov r0, r10
	bl  putch
	ldr r10, [fp, #-8]
	add r9, r10, #1
	str r9, [fp, #-8]
	b .L294
.Lwrite_pgm_END:
	add sp, sp, #12
	vpop {s31}
	pop {r8, r9, r10, fp, lr}
	bx  lr

	.global main
	.type main , %function
main:
	push {r9, r10, fp, lr}
	vpush {s31}
	mov fp, sp
	sub sp, sp, #4
.L318:
	bl  getfloat
	vmov s31, s0
	vstr.32 s31, [fp, #-4]
	bl  getch
	mov r10, r0
	bl  read_image
	mov r10, r0
	ldr r9, =0
	cmp r10, r9
	movlt r10, #1
	movge r10, #0
	blt .L320
	b .L323
.L320:
	ldr r10, =-1
	mov r0, r10
	b .Lmain_END
.L323:
	b .L321
.L321:
	vldr.32 s31, [fp, #-4]
	vmov s0, s31
	bl  write_pgm
	ldr r10, =0
	mov r0, r10
	b .Lmain_END
.Lmain_END:
	add sp, sp, #4
	vpop {s31}
	pop {r9, r10, fp, lr}
	bx  lr

addr_image_0:
	.word image
addr_width_0:
	.word width
addr_height_0:
	.word height
