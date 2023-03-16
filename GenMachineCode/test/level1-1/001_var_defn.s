	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm
	.data
	.global a
	.align 4
	.size a, 4
a:
	.word 3
	.global b
	.align 4
	.size b, 4
b:
	.word 5
	.text
	.global main
	.type main , %function
main:
	push {r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #0
.L1:
	ldr r10, addr_a_0
	ldr r9, [r10]
	ldr r10, addr_b_0
	ldr r8, [r10]
	add r10, r9, r8
	mov r0, r10
	b .Lmain_END
.Lmain_END:
	add sp, sp, #0
	pop {r8, r9, r10, fp, lr}
	bx  lr

addr_a_0:
	.word a
addr_b_0:
	.word b
