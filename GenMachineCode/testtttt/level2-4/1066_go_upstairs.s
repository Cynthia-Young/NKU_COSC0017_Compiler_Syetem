	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm
	.text
	.global climbStairs
	.type climbStairs , %function
climbStairs:
	push {r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #48
.L8:
	str r0, [fp, #-48]
	ldr r10, [fp, #-48]
	ldr r9, =4
	cmp r10, r9
	movlt r10, #1
	movge r10, #0
	blt .L10
	b .L14
.L10:
	ldr r10, [fp, #-48]
	mov r0, r10
	b .LclimbStairs_END
.L11:
	ldr r10, =0
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-44
	ldr r9, =0
	add r8, fp, r10
	str r9, [r8]
	ldr r10, =1
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-44
	ldr r9, =1
	add r8, fp, r10
	str r9, [r8]
	ldr r10, =2
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-44
	ldr r9, =2
	add r8, fp, r10
	str r9, [r8]
	ldr r10, =3
	str r10, [fp, #-4]
	b .L25
.L13:
.L14:
	b .L11
.L15:
.L25:
	ldr r10, [fp, #-4]
	ldr r9, [fp, #-48]
	add r8, r9, #1
	cmp r10, r8
	movlt r10, #1
	movge r10, #0
	blt .L26
	b .L31
.L26:
	ldr r10, [fp, #-4]
	sub r9, r10, #1
	ldr r10, =4
	mul r8, r9, r10
	add r10, r8, #-44
	add r9, fp, r10
	ldr r10, [r9]
	ldr r9, [fp, #-4]
	sub r8, r9, #2
	ldr r9, =4
	mul r7, r8, r9
	add r9, r7, #-44
	add r8, fp, r9
	ldr r9, [r8]
	add r8, r10, r9
	ldr r10, [fp, #-4]
	ldr r9, =4
	mul r7, r10, r9
	add r10, r7, #-44
	add r9, fp, r10
	str r8, [r9]
	ldr r10, [fp, #-4]
	add r9, r10, #1
	str r9, [fp, #-4]
	b .L25
.L27:
	ldr r10, [fp, #-48]
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-44
	add r9, fp, r10
	ldr r10, [r9]
	mov r0, r10
	b .LclimbStairs_END
.L30:
.L31:
	b .L27
.L32:
.LclimbStairs_END:
	add sp, sp, #48
	pop {r7, r8, r9, r10, fp, lr}
	bx  lr

	.global main
	.type main , %function
main:
	push {r10, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L49:
	ldr r10, =5
	str r10, [fp, #-4]
	ldr r10, [fp, #-4]
	mov r0, r10
	bl  climbStairs
	mov r10, r0
	str r10, [fp, #-8]
	ldr r10, [fp, #-8]
	mov r0, r10
	b .Lmain_END
.Lmain_END:
	add sp, sp, #8
	pop {r10, fp, lr}
	bx  lr

