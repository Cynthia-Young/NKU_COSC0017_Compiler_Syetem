	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm
	.data
	.global k
	.align 4
	.size k, 4
k:
	.word 0
	.text
	.global main
	.type main , %function
main:
	push {r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L6:
	ldr r10, =0
	str r10, [fp, #-4]
	ldr r10, =1
	ldr r9, addr_k_0
	str r10, [r9]
	b .L8
.L8:
	ldr r10, [fp, #-4]
	ldr r9, =9
	cmp r10, r9
	movle r10, #1
	movgt r10, #0
	ble .L9
	b .L13
.L9:
	ldr r10, [fp, #-4]
	add r9, r10, #1
	str r9, [fp, #-4]
	ldr r10, addr_k_0
	ldr r9, [r10]
	add r10, r9, #1
	ldr r10, addr_k_0
	ldr r9, [r10]
	ldr r10, addr_k_0
	ldr r8, [r10]
	add r10, r9, r8
	ldr r9, addr_k_0
	str r10, [r9]
	b .L8
.L10:
	ldr r10, addr_k_0
	ldr r9, [r10]
	mov r0, r9
	bl  putint
	ldr r10, addr_k_0
	ldr r9, [r10]
	mov r0, r9
	b .Lmain_END
.L12:
.L13:
	b .L10
.L14:
.Lmain_END:
	add sp, sp, #4
	pop {r8, r9, r10, fp, lr}
	bx  lr

addr_k_0:
	.word k
