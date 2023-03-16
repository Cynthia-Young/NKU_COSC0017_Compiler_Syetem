	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm
	.text
	.global ifElse
	.type ifElse , %function
ifElse:
	push {r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L3:
	ldr r10, =5
	str r10, [fp, #-4]
	ldr r10, [fp, #-4]
	ldr r9, =5
	cmp r10, r9
	moveq r10, #1
	movne r10, #0
	beq .L5
	b .L10
.L5:
	ldr r10, =25
	str r10, [fp, #-4]
	b .L6
.L6:
	ldr r10, [fp, #-4]
	mov r0, r10
	b .LifElse_END
.L7:
	ldr r10, [fp, #-4]
	ldr r9, =2
	mul r8, r10, r9
	str r8, [fp, #-4]
	b .L6
.L9:
.L10:
	b .L7
.L11:
.LifElse_END:
	add sp, sp, #4
	pop {r8, r9, r10, fp, lr}
	bx  lr

	.global main
	.type main , %function
main:
	push {r10, fp, lr}
	mov fp, sp
	sub sp, sp, #0
.L14:
	bl  ifElse
	mov r10, r0
	mov r0, r10
	b .Lmain_END
.Lmain_END:
	add sp, sp, #0
	pop {r10, fp, lr}
	bx  lr

