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
	sub sp, sp, #12
.L1:
	ldr r10, =1
	str r10, [fp, #-12]
	ldr r10, =2
	str r10, [fp, #-8]
	ldr r10, =3
	str r10, [fp, #-4]
	ldr r10, [fp, #-8]
	ldr r9, [fp, #-4]
	add r8, r10, r9
	mov r0, r8
	b .Lmain_END
.Lmain_END:
	add sp, sp, #12
	pop {r8, r9, r10, fp, lr}
	bx  lr

