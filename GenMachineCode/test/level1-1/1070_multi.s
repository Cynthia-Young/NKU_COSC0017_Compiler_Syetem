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
.L4:
	ldr r10, =0
	str r10, [fp, #-4]
	ldr r10, =0
	str r10, [fp, #-8]
	b .L7
.L7:
	ldr r10, [fp, #-8]
	ldr r9, =21
	cmp r10, r9
	movlt r10, #1
	movge r10, #0
	blt .L8
	b .L12
.L8:
	ldr r10, [fp, #-4]
	ldr r9, [fp, #-8]
	mul r8, r10, r9
	str r8, [fp, #-4]
	ldr r10, [fp, #-8]
	add r9, r10, #1
	str r9, [fp, #-8]
	b .L7
.L12:
	b .L9
.L9:
	ldr r10, [fp, #-4]
	mov r0, r10
	bl  putint
	ldr r10, =0
	mov r0, r10
	b .Lmain_END
.Lmain_END:
	add sp, sp, #8
	pop {r8, r9, r10, fp, lr}
	bx  lr

