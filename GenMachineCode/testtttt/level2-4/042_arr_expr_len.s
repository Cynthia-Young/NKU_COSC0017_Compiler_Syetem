	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm
	.data
	.global arr
	.align 4
	.size arr, 24
arr:
	.word 1
	.word 2
	.word 33
	.word 4
	.word 5
	.word 6
	.text
	.global main
	.type main , %function
main:
	push {r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L14:
	ldr r10, =0
	str r10, [fp, #-8]
	ldr r10, =0
	str r10, [fp, #-4]
	b .L17
.L17:
	ldr r10, [fp, #-8]
	ldr r9, =6
	cmp r10, r9
	movlt r10, #1
	movge r10, #0
	blt .L18
	b .L22
.L18:
	ldr r10, [fp, #-4]
	ldr r9, [fp, #-8]
	ldr r8, =4
	mul r7, r9, r8
	ldr r9, addr_arr_0
	add r8, r7, r9
	ldr r9, [r8]
	add r8, r10, r9
	str r8, [fp, #-4]
	ldr r10, [fp, #-8]
	add r9, r10, #1
	str r9, [fp, #-8]
	b .L17
.L19:
	ldr r10, [fp, #-4]
	mov r0, r10
	b .Lmain_END
.L21:
.L22:
	b .L19
.L23:
.Lmain_END:
	add sp, sp, #8
	pop {r7, r8, r9, r10, fp, lr}
	bx  lr

addr_arr_0:
	.word arr
