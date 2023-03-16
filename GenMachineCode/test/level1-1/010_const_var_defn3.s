	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm
	.text
	.global main
	.type main , %function
main:
	push {r10, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L0:
	ldr r10, =10
	str r10, [fp, #-8]
	ldr r10, =5
	str r10, [fp, #-4]
	ldr r10, =5
	mov r0, r10
	b .Lmain_END
.Lmain_END:
	add sp, sp, #8
	pop {r10, fp, lr}
	bx  lr

