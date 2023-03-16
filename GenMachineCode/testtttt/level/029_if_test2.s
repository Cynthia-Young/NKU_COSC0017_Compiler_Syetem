	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm
	.text
	.global ifElseIf
	.type ifElseIf , %function
ifElseIf:
	push {r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L14:
	ldr r10, =5
	str r10, [fp, #-8]
	ldr r10, =10
	str r10, [fp, #-4]
	ldr r10, [fp, #-8]
	ldr r9, =6
	cmp r10, r9
	moveq r10, #1
	movne r10, #0
	beq .L17
	b .L23
.L17:
	ldr r10, [fp, #-8]
	mov r0, r10
	b .LifElseIf_END
.L23:
	b .L20
.L20:
	ldr r10, [fp, #-4]
	ldr r9, =11
	cmp r10, r9
	moveq r10, #1
	movne r10, #0
	beq .L17
	b .L27
.L27:
	b .L19
.L19:
	ldr r10, [fp, #-4]
	ldr r9, =10
	cmp r10, r9
	moveq r10, #1
	movne r10, #0
	beq .L33
	b .L36
.L33:
	ldr r10, [fp, #-8]
	ldr r9, =1
	cmp r10, r9
	moveq r10, #1
	movne r10, #0
	beq .L30
	b .L40
.L36:
	b .L32
.L30:
	ldr r10, =25
	str r10, [fp, #-8]
	b .L31
.L40:
	b .L32
.L32:
	ldr r10, [fp, #-4]
	ldr r9, =10
	cmp r10, r9
	moveq r10, #1
	movne r10, #0
	beq .L45
	b .L48
.L31:
	b .L18
.L45:
	ldr r10, [fp, #-8]
	ldr r9, =-5
	cmp r10, r9
	moveq r10, #1
	movne r10, #0
	beq .L42
	b .L52
.L48:
	b .L44
.L18:
	ldr r10, [fp, #-8]
	mov r0, r10
	b .LifElseIf_END
.L42:
	ldr r10, [fp, #-8]
	add r9, r10, #15
	str r9, [fp, #-8]
	b .L43
.L52:
	b .L44
.L44:
	ldr r10, [fp, #-8]
	ldr r9, =0
	sub r8, r9, r10
	str r8, [fp, #-8]
	b .L43
.L43:
	b .L31
.LifElseIf_END:
	add sp, sp, #8
	pop {r8, r9, r10, fp, lr}
	bx  lr

	.global main
	.type main , %function
main:
	push {r10, fp, lr}
	mov fp, sp
	sub sp, sp, #0
.L57:
	bl  ifElseIf
	mov r10, r0
	mov r0, r10
	bl  putint
	ldr r10, =0
	mov r0, r10
	b .Lmain_END
.Lmain_END:
	add sp, sp, #0
	pop {r10, fp, lr}
	bx  lr

