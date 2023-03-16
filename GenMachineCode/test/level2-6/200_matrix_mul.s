	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm
	.data
	.global M
	.align 4
	.size M, 4
M:
	.word 0
	.global L
	.align 4
	.size L, 4
L:
	.word 0
	.global N
	.align 4
	.size N, 4
N:
	.word 0
	.text
	.global mul
	.type mul , %function
mul:
	push {r9, r10, fp, lr}
	vpush {s29, s30, s31}
	mov fp, sp
	sub sp, sp, #40
.L60:
	str r0, [fp, #-40]
	str r1, [fp, #-36]
	str r2, [fp, #-32]
	str r3, [fp, #-28]
	str r3, [fp, #-24]
	str r3, [fp, #-20]
	str r3, [fp, #-16]
	str r3, [fp, #-12]
	str r3, [fp, #-8]
	ldr r10, =0
	str r10, [fp, #-4]
	ldr r10, [fp, #-40]
	ldr r9, [fp, #-28]
	vmul.f32 s31, r10, r9
	ldr r10, [fp, #-40]
	ldr r9, [fp, #-24]
	vmul.f32 s30, r10, r9
	vadd.f32 , s31, s30
	ldr r10, [fp, #-40]
	ldr r9, [fp, #-20]
	vmul.f32 s31, r10, r9
	vadd.f32 s30, s29, s31
	vstr.32 s30, [fp, #-16]
	ldr r10, [fp, #-40]
	ldr r9, [fp, #-28]
	vmul.f32 s31, r10, r9
	ldr r10, [fp, #-40]
	ldr r9, [fp, #-24]
	vmul.f32 s30, r10, r9
	vadd.f32 s29, s31, s30
	ldr r10, [fp, #-40]
	ldr r9, [fp, #-20]
	vmul.f32 s31, r10, r9
	vadd.f32 s30, s29, s31
	vstr.32 s30, [fp, #-16]
	ldr r10, [fp, #-40]
	ldr r9, [fp, #-28]
	vmul.f32 s31, r10, r9
	ldr r10, [fp, #-40]
	ldr r9, [fp, #-24]
	vmul.f32 s30, r10, r9
	vadd.f32 s29, s31, s30
	ldr r10, [fp, #-40]
	ldr r9, [fp, #-20]
	vmul.f32 s31, r10, r9
	vadd.f32 s30, s29, s31
	vstr.32 s30, [fp, #-16]
	ldr r10, [fp, #-36]
	ldr r9, [fp, #-28]
	vmul.f32 s31, r10, r9
	ldr r10, [fp, #-36]
	ldr r9, [fp, #-24]
	vmul.f32 s30, r10, r9
	vadd.f32 s29, s31, s30
	ldr r10, [fp, #-36]
	ldr r9, [fp, #-20]
	vmul.f32 s31, r10, r9
	vadd.f32 s30, s29, s31
	vstr.32 s30, [fp, #-12]
	ldr r10, [fp, #-36]
	ldr r9, [fp, #-28]
	vmul.f32 s31, r10, r9
	ldr r10, [fp, #-36]
	ldr r9, [fp, #-24]
	vmul.f32 s30, r10, r9
	vadd.f32 s29, s31, s30
	ldr r10, [fp, #-36]
	ldr r9, [fp, #-20]
	vmul.f32 s31, r10, r9
	vadd.f32 s30, s29, s31
	vstr.32 s30, [fp, #-12]
	ldr r10, [fp, #-36]
	ldr r9, [fp, #-28]
	vmul.f32 s31, r10, r9
	ldr r10, [fp, #-36]
	ldr r9, [fp, #-24]
	vmul.f32 s30, r10, r9
	vadd.f32 s29, s31, s30
	ldr r10, [fp, #-36]
	ldr r9, [fp, #-20]
	vmul.f32 s31, r10, r9
	vadd.f32 s30, s29, s31
	vstr.32 s30, [fp, #-12]
	ldr r10, [fp, #-32]
	ldr r9, [fp, #-28]
	vmul.f32 s31, r10, r9
	ldr r10, [fp, #-32]
	ldr r9, [fp, #-24]
	vmul.f32 s30, r10, r9
	vadd.f32 s29, s31, s30
	ldr r10, [fp, #-32]
	ldr r9, [fp, #-20]
	vmul.f32 s31, r10, r9
	vadd.f32 s30, s29, s31
	vstr.32 s30, [fp, #-8]
	ldr r10, [fp, #-32]
	ldr r9, [fp, #-28]
	vmul.f32 s31, r10, r9
	ldr r10, [fp, #-32]
	ldr r9, [fp, #-24]
	vmul.f32 s30, r10, r9
	vadd.f32 s29, s31, s30
	ldr r10, [fp, #-32]
	ldr r9, [fp, #-20]
	vmul.f32 s31, r10, r9
	vadd.f32 s30, s29, s31
	vstr.32 s30, [fp, #-8]
	ldr r10, [fp, #-32]
	ldr r9, [fp, #-28]
	vmul.f32 s31, r10, r9
	ldr r10, [fp, #-32]
	ldr r9, [fp, #-24]
	vmul.f32 s30, r10, r9
	vadd.f32 s29, s31, s30
	ldr r10, [fp, #-32]
	ldr r9, [fp, #-20]
	vmul.f32 s31, r10, r9
	vadd.f32 s30, s29, s31
	vstr.32 s30, [fp, #-8]
	ldr r10, =0
	mov r0, r10
	b .Lmul_END
.Lmul_END:
	add sp, sp, #40
	vpop {s29, s30, s31}
	pop {r9, r10, fp, lr}
	bx  lr

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #52
.L125:
	ldr r10, =3
	ldr r9, addr_N_0
	str r10, [r9]
	ldr r10, =3
	ldr r9, addr_M_0
	str r10, [r9]
	ldr r10, =3
	ldr r9, addr_L_0
	str r10, [r9]
	ldr r10, =0
	str r10, [fp, #-8]
	b .L136
.L136:
	ldr r10, [fp, #-8]
	ldr r9, addr_M_0
	ldr r8, [r9]
	cmp r10, r8
	movlt r10, #1
	movge r10, #0
	blt .L137
	b .L142
.L137:
	ldr r10, [fp, #-8]
	str r10, [fp, #-44]
	ldr r10, [fp, #-8]
	str r10, [fp, #-40]
	ldr r10, [fp, #-8]
	str r10, [fp, #-36]
	ldr r10, [fp, #-8]
	str r10, [fp, #-32]
	ldr r10, [fp, #-8]
	str r10, [fp, #-28]
	ldr r10, [fp, #-8]
	str r10, [fp, #-24]
	ldr r10, [fp, #-8]
	add r9, r10, #1
	str r9, [fp, #-8]
	b .L136
.L142:
	b .L138
.L138:
	ldr r10, [fp, #-44]
	ldr r10, [fp, #-40]
	ldr r10, [fp, #-36]
	ldr r9, [fp, #-32]
	ldr r9, [fp, #-32]
	ldr r8, [fp, #-28]
	ldr r7, [fp, #-24]
	ldr r6, [fp, #-20]
	ldr r6, [fp, #-20]
	ldr r5, [fp, #-16]
	ldr r4, [fp, #-12]
	mov r-1, r4
	mov r-2, r5
	mov r-3, r6
	mov r-4, r7
	mov r-5, r8
	mov r-6, r9
	mov r-7, r10
	mov r-8, r10
	mov r-9, r10
	bl  mul
	mov r10, r0
	str r10, [fp, #-8]
	b .L161
	ldr r10, [fp, #48]
	ldr r10, [fp, #52]
.L161:
	ldr r10, [fp, #-8]
	ldr r9, addr_N_0
	ldr r8, [r9]
	cmp r10, r8
	movlt r10, #1
	movge r10, #0
	blt .L162
	b .L167
.L162:
	ldr r10, [fp, #-20]
	str r10, [fp, #-4]
	ldr r10, [fp, #-4]
	mov r0, r10
	bl  putint
	ldr r10, [fp, #-8]
	add r9, r10, #1
	str r9, [fp, #-8]
	b .L161
.L167:
	b .L163
.L163:
	ldr r10, =10
	str r10, [fp, #-4]
	ldr r10, =0
	str r10, [fp, #-8]
	ldr r10, [fp, #-4]
	mov r0, r10
	bl  putch
	b .L173
.L173:
	ldr r10, [fp, #-8]
	ldr r9, addr_N_0
	ldr r8, [r9]
	cmp r10, r8
	movlt r10, #1
	movge r10, #0
	blt .L174
	b .L179
.L174:
	ldr r10, [fp, #-16]
	str r10, [fp, #-4]
	ldr r10, [fp, #-4]
	mov r0, r10
	bl  putint
	ldr r10, [fp, #-8]
	add r9, r10, #1
	str r9, [fp, #-8]
	b .L173
.L179:
	b .L175
.L175:
	ldr r10, =10
	str r10, [fp, #-4]
	ldr r10, =0
	str r10, [fp, #-8]
	ldr r10, [fp, #-4]
	mov r0, r10
	bl  putch
	b .L185
.L185:
	ldr r10, [fp, #-8]
	ldr r9, addr_N_0
	ldr r8, [r9]
	cmp r10, r8
	movlt r10, #1
	movge r10, #0
	blt .L186
	b .L191
.L186:
	ldr r10, [fp, #-12]
	str r10, [fp, #-4]
	ldr r10, [fp, #-4]
	mov r0, r10
	bl  putint
	ldr r10, [fp, #-8]
	add r9, r10, #1
	str r9, [fp, #-8]
	b .L185
.L191:
	b .L187
.L187:
	ldr r10, =10
	str r10, [fp, #-4]
	ldr r10, [fp, #-4]
	mov r0, r10
	bl  putch
	ldr r10, =0
	mov r0, r10
	b .Lmain_END
.Lmain_END:
	add sp, sp, #52
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx  lr

addr_M_0:
	.word M
addr_L_0:
	.word L
addr_N_0:
	.word N
