	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm
	.text
	.global f
	.type f , %function
f:
	push {r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L9:
	str r0, [fp, #-8]
	str r1, [fp, #-4]
	ldr r10, [fp, #-8]
	ldr r9, [fp, #-4]
	mul r8, r10, r9
	mov r0, r8
	b .Lf_END
.Lf_END:
	add sp, sp, #8
	pop {r8, r9, r10, fp, lr}
	bx  lr

	.global g
	.type g , %function
g:
	push {r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L14:
	str r0, [fp, #-8]
	str r1, [fp, #-4]
	ldr r10, [fp, #-8]
	ldr r9, [fp, #-4]
	sdiv r8, r10, r9
	mul r9, r8, r9
	sub r8, r10, r9
	mov r0, r8
	b .Lg_END
.Lg_END:
	add sp, sp, #8
	pop {r8, r9, r10, fp, lr}
	bx  lr

	.global h
	.type h , %function
h:
	push {r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L19:
	str r0, [fp, #-8]
	str r1, [fp, #-4]
	ldr r10, [fp, #-8]
	ldr r9, [fp, #-4]
	mov r1, r9
	mov r0, r10
	bl  g
	mov r10, r0
	ldr r9, =2
	mov r1, r10
	mov r0, r9
	bl  f
	mov r10, r0
	ldr r9, [fp, #-8]
	ldr r8, [fp, #-4]
	mov r1, r8
	mov r0, r9
	bl  f
	mov r9, r0
	ldr r8, =4
	mov r1, r8
	mov r0, r9
	bl  g
	mov r9, r0
	mov r1, r9
	mov r0, r10
	bl  f
	mov r10, r0
	mov r0, r10
	b .Lh_END
.Lh_END:
	add sp, sp, #8
	pop {r8, r9, r10, fp, lr}
	bx  lr

	.global main
	.type main , %function
main:
	push {r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #0
.L28:
	ldr r10, =11
	ldr r9, =3
	mov r1, r9
	mov r0, r10
	bl  h
	mov r10, r0
	mov r0, r10
	bl  putint
	ldr r10, =0
	mov r0, r10
	b .Lmain_END
.Lmain_END:
	add sp, sp, #0
	pop {r9, r10, fp, lr}
	bx  lr

