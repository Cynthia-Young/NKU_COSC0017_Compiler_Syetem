	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm
	.text
	.global move
	.type move , %function
move:
	push {r10, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L18:
	str r0, [fp, #-8]
	str r1, [fp, #-4]
	ldr r10, [fp, #-8]
	mov r0, r10
	bl  putint
	ldr r10, =32
	mov r0, r10
	bl  putch
	ldr r10, [fp, #-4]
	mov r0, r10
	bl  putint
	ldr r10, =44
	mov r0, r10
	bl  putch
	ldr r10, =32
	mov r0, r10
	bl  putch
	b .Lmove_END
.Lmove_END:
	add sp, sp, #8
	pop {r10, fp, lr}
	bx  lr

	.global hanoi
	.type hanoi , %function
hanoi:
	push {r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L26:
	str r0, [fp, #-16]
	str r1, [fp, #-12]
	str r2, [fp, #-8]
	str r3, [fp, #-4]
	ldr r10, [fp, #-16]
	ldr r9, =1
	cmp r10, r9
	moveq r10, #1
	movne r10, #0
	beq .L31
	b .L36
.L31:
	ldr r10, [fp, #-12]
	ldr r9, [fp, #-4]
	mov r1, r9
	mov r0, r10
	bl  move
	b .L32
.L36:
	b .L33
.L32:
	b .Lhanoi_END
.L33:
	ldr r10, [fp, #-16]
	sub r9, r10, #1
	ldr r10, [fp, #-12]
	ldr r8, [fp, #-4]
	ldr r7, [fp, #-8]
	mov r3, r7
	mov r2, r8
	mov r1, r10
	mov r0, r9
	bl  hanoi
	ldr r10, [fp, #-12]
	ldr r9, [fp, #-4]
	mov r1, r9
	mov r0, r10
	bl  move
	ldr r10, [fp, #-16]
	sub r9, r10, #1
	ldr r10, [fp, #-8]
	ldr r8, [fp, #-12]
	ldr r7, [fp, #-4]
	mov r3, r7
	mov r2, r8
	mov r1, r10
	mov r0, r9
	bl  hanoi
	b .L32
.Lhanoi_END:
	add sp, sp, #16
	pop {r7, r8, r9, r10, fp, lr}
	bx  lr

	.global main
	.type main , %function
main:
	push {r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L50:
	bl  getint
	mov r10, r0
	str r10, [fp, #-4]
	b .L52
.L52:
	ldr r10, [fp, #-4]
	ldr r9, =0
	cmp r10, r9
	movgt r10, #1
	movle r10, #0
	bgt .L53
	b .L57
.L53:
	bl  getint
	mov r10, r0
	ldr r9, =1
	ldr r8, =2
	ldr r7, =3
	mov r3, r7
	mov r2, r8
	mov r1, r9
	mov r0, r10
	bl  hanoi
	ldr r10, =10
	mov r0, r10
	bl  putch
	ldr r10, [fp, #-4]
	sub r9, r10, #1
	str r9, [fp, #-4]
	b .L52
.L57:
	b .L54
.L54:
	ldr r10, =0
	mov r0, r10
	b .Lmain_END
.Lmain_END:
	add sp, sp, #4
	pop {r7, r8, r9, r10, fp, lr}
	bx  lr

