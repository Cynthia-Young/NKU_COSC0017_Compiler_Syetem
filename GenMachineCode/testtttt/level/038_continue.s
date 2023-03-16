	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm
	.text
	.global main
	.type main , %function
main:
	push {r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L5:
	ldr r10, =0
	str r10, [fp, #-8]
	ldr r10, =0
	str r10, [fp, #-4]
	b .L8
.L8:
	ldr r10, [fp, #-8]
	ldr r9, =100
	cmp r10, r9
	movlt r10, #1
	movge r10, #0
	blt .L9
	b .L13
.L9:
	ldr r10, [fp, #-8]
	ldr r9, =50
	cmp r10, r9
	moveq r10, #1
	movne r10, #0
	beq .L15
	b .L19
.L13:
	b .L10
.L15:
	ldr r10, [fp, #-8]
	add r9, r10, #1
	str r9, [fp, #-8]
	b .L8
.L19:
	b .L16
.L10:
	ldr r10, [fp, #-4]
	mov r0, r10
	b .Lmain_END
.L16:
	ldr r10, [fp, #-4]
	ldr r9, [fp, #-8]
	add r8, r10, r9
	str r8, [fp, #-4]
	ldr r10, [fp, #-8]
	add r9, r10, #1
	str r9, [fp, #-8]
	b .L8
.Lmain_END:
	add sp, sp, #8
	pop {r8, r9, r10, fp, lr}
	bx  lr

