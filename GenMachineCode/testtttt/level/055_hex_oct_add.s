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
.L2:
	ldr r10, =15
	str r10, [fp, #-8]
	ldr r10, =12
	str r10, [fp, #-4]
	ldr r10, [fp, #-8]
	ldr r9, [fp, #-4]
	add r8, r10, r9
	add r10, r8, #61
	mov r0, r10
	b .Lmain_END
.Lmain_END:
	add sp, sp, #8
	pop {r8, r9, r10, fp, lr}
	bx  lr

