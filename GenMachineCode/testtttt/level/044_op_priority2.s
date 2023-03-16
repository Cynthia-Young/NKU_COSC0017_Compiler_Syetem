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
	add r8, r10, r9
	ldr r10, [fp, #-12]
	ldr r9, [fp, #-4]
	sub r7, r10, r9
	mul r10, r8, r7
	mov r0, r10
	b .Lmain_END
.Lmain_END:
	add sp, sp, #16
	pop {r7, r8, r9, r10, fp, lr}
	bx  lr

