	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm
	.data
	.global n
	.align 4
	.size n, 4
n:
	.word 0
	.text
	.global main
	.type main , %function
main:
	push {r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #132
.L65:
	bl  getint
	mov r10, r0
	str r10, [fp, #-12]
	b .L97
.L97:
	ldr r10, [fp, #-12]
	ldr r9, =5
	cmp r10, r9
	moveq r10, #1
	movne r10, #0
	beq .L98
	b .L102
.L98:
	ldr r10, [fp, #-12]
	add r9, r10, #1
	str r9, [fp, #-12]
	b .L97
.L102:
	b .L99
.L99:
	ldr r10, =0
	str r10, [fp, #-132]
	ldr r10, [fp, #-132]
	add r9, r10, #1
	str r9, [fp, #-128]
	ldr r10, [fp, #-128]
	add r9, r10, #1
	str r9, [fp, #-124]
	ldr r10, [fp, #-124]
	add r9, r10, #1
	str r9, [fp, #-120]
	ldr r10, [fp, #-120]
	add r9, r10, #1
	str r9, [fp, #-116]
	ldr r10, [fp, #-116]
	add r9, r10, #1
	str r9, [fp, #-112]
	ldr r10, [fp, #-112]
	add r9, r10, #1
	str r9, [fp, #-108]
	ldr r10, [fp, #-108]
	add r9, r10, #1
	str r9, [fp, #-104]
	ldr r10, [fp, #-104]
	add r9, r10, #1
	str r9, [fp, #-100]
	ldr r10, [fp, #-100]
	add r9, r10, #1
	str r9, [fp, #-96]
	ldr r10, [fp, #-96]
	add r9, r10, #1
	str r9, [fp, #-92]
	ldr r10, [fp, #-92]
	add r9, r10, #1
	str r9, [fp, #-88]
	ldr r10, [fp, #-88]
	add r9, r10, #1
	str r9, [fp, #-84]
	ldr r10, [fp, #-84]
	add r9, r10, #1
	str r9, [fp, #-80]
	ldr r10, [fp, #-80]
	add r9, r10, #1
	str r9, [fp, #-76]
	ldr r10, [fp, #-76]
	add r9, r10, #1
	str r9, [fp, #-72]
	ldr r10, [fp, #-72]
	add r9, r10, #1
	str r9, [fp, #-68]
	ldr r10, [fp, #-68]
	add r9, r10, #1
	str r9, [fp, #-64]
	ldr r10, [fp, #-64]
	add r9, r10, #1
	str r9, [fp, #-60]
	ldr r10, [fp, #-60]
	add r9, r10, #1
	str r9, [fp, #-56]
	ldr r10, [fp, #-56]
	add r9, r10, #1
	str r9, [fp, #-52]
	ldr r10, [fp, #-52]
	add r9, r10, #1
	str r9, [fp, #-48]
	ldr r10, [fp, #-48]
	add r9, r10, #1
	str r9, [fp, #-44]
	ldr r10, [fp, #-44]
	add r9, r10, #1
	str r9, [fp, #-40]
	ldr r10, [fp, #-40]
	add r9, r10, #1
	str r9, [fp, #-36]
	ldr r10, [fp, #-36]
	add r9, r10, #1
	str r9, [fp, #-32]
	ldr r10, [fp, #-32]
	add r9, r10, #1
	str r9, [fp, #-28]
	ldr r10, [fp, #-28]
	add r9, r10, #1
	str r9, [fp, #-24]
	ldr r10, [fp, #-24]
	add r9, r10, #1
	str r9, [fp, #-20]
	ldr r10, [fp, #-20]
	add r9, r10, #1
	str r9, [fp, #-16]
	ldr r10, [fp, #-132]
	mov r0, r10
	bl  putint
	ldr r10, [fp, #-128]
	mov r0, r10
	bl  putint
	ldr r10, [fp, #-124]
	mov r0, r10
	bl  putint
	ldr r10, [fp, #-120]
	mov r0, r10
	bl  putint
	ldr r10, [fp, #-116]
	mov r0, r10
	bl  putint
	ldr r10, [fp, #-112]
	mov r0, r10
	bl  putint
	ldr r10, [fp, #-108]
	mov r0, r10
	bl  putint
	ldr r10, [fp, #-104]
	mov r0, r10
	bl  putint
	ldr r10, [fp, #-100]
	mov r0, r10
	bl  putint
	ldr r10, [fp, #-96]
	mov r0, r10
	bl  putint
	ldr r10, [fp, #-92]
	mov r0, r10
	bl  putint
	ldr r10, [fp, #-88]
	mov r0, r10
	bl  putint
	ldr r10, [fp, #-84]
	mov r0, r10
	bl  putint
	ldr r10, [fp, #-80]
	mov r0, r10
	bl  putint
	ldr r10, [fp, #-76]
	mov r0, r10
	bl  putint
	ldr r10, [fp, #-72]
	mov r0, r10
	bl  putint
	ldr r10, [fp, #-68]
	mov r0, r10
	bl  putint
	ldr r10, [fp, #-64]
	mov r0, r10
	bl  putint
	ldr r10, [fp, #-60]
	mov r0, r10
	bl  putint
	ldr r10, [fp, #-56]
	mov r0, r10
	bl  putint
	ldr r10, [fp, #-52]
	mov r0, r10
	bl  putint
	ldr r10, [fp, #-48]
	mov r0, r10
	bl  putint
	ldr r10, [fp, #-44]
	mov r0, r10
	bl  putint
	ldr r10, [fp, #-40]
	mov r0, r10
	bl  putint
	ldr r10, [fp, #-36]
	mov r0, r10
	bl  putint
	ldr r10, [fp, #-32]
	mov r0, r10
	bl  putint
	ldr r10, [fp, #-28]
	mov r0, r10
	bl  putint
	ldr r10, [fp, #-24]
	mov r0, r10
	bl  putint
	ldr r10, [fp, #-20]
	mov r0, r10
	bl  putint
	ldr r10, [fp, #-16]
	mov r0, r10
	bl  putint
	ldr r10, =10
	str r10, [fp, #-4]
	ldr r10, [fp, #-4]
	mov r0, r10
	bl  putch
	ldr r10, [fp, #-12]
	mov r0, r10
	bl  putint
	ldr r10, [fp, #-4]
	mov r0, r10
	bl  putch
	ldr r10, [fp, #-32]
	mov r0, r10
	b .Lmain_END
	b .F0
.LTORG
addr_n_0:
	.word n
.F0:
.Lmain_END:
	add sp, sp, #132
	pop {r9, r10, fp, lr}
	bx  lr

addr_n_1:
	.word n
