	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm
	.text
	.global main
	.type main , %function
main:
	push {r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L3:
	ldr r10, =10
	str r10, [fp, #-16]
	ldr r10, =4
	str r10, [fp, #-12]
	ldr r10, =2
	str r10, [fp, #-8]
	ldr r10, =2
	str r10, [fp, #-4]
	ldr r10, [fp, #-8]
	ldr r9, [fp, #-16]
	ldr r8, [fp, #-12]
	mul r7, r9, r8
	add r9, r10, r7
	ldr r10, [fp, #-4]
	sub r8, r9, r10
	mov r0, r8
	b .Lmain_END
.Lmain_END:
	add sp, sp, #16
	pop {r7, r8, r9, r10, fp, lr}
	bx  lr

