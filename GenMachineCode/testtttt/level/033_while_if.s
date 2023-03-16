	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm
	.text
	.global get_one
	.type get_one , %function
get_one:
	push {r10, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L11:
	str r0, [fp, #-4]
	ldr r10, =1
	mov r0, r10
	b .Lget_one_END
.Lget_one_END:
	add sp, sp, #4
	pop {r10, fp, lr}
	bx  lr

	.global deepWhileBr
	.type deepWhileBr , %function
deepWhileBr:
	push {r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #20
.L13:
	str r0, [fp, #-20]
	str r1, [fp, #-16]
	ldr r10, [fp, #-20]
	ldr r9, [fp, #-16]
	add r8, r10, r9
	str r8, [fp, #-12]
	b .L19
.L19:
	ldr r10, [fp, #-12]
	ldr r9, =75
	cmp r10, r9
	movlt r10, #1
	movge r10, #0
	blt .L20
	b .L24
.L20:
	ldr r10, =42
	str r10, [fp, #-8]
	ldr r10, [fp, #-12]
	ldr r9, =100
	cmp r10, r9
	movlt r10, #1
	movge r10, #0
	blt .L27
	b .L31
.L24:
	b .L21
.L27:
	ldr r10, [fp, #-12]
	ldr r9, [fp, #-8]
	add r8, r10, r9
	str r8, [fp, #-12]
	ldr r10, [fp, #-12]
	ldr r9, =99
	cmp r10, r9
	movgt r10, #1
	movle r10, #0
	bgt .L35
	b .L39
.L31:
	b .L28
.L21:
	ldr r10, [fp, #-12]
	mov r0, r10
	b .LdeepWhileBr_END
.L35:
	ldr r10, [fp, #-8]
	ldr r9, =2
	mul r8, r10, r9
	str r8, [fp, #-4]
	ldr r10, =0
	mov r0, r10
	bl  get_one
	mov r10, r0
	ldr r9, =1
	cmp r10, r9
	moveq r10, #1
	movne r10, #0
	beq .L43
	b .L47
.L39:
	b .L36
.L28:
	b .L19
.L43:
	ldr r10, [fp, #-4]
	ldr r9, =2
	mul r8, r10, r9
	str r8, [fp, #-12]
	b .L44
.L47:
	b .L44
.L36:
	b .L28
.L44:
	b .L36
.LdeepWhileBr_END:
	add sp, sp, #20
	pop {r8, r9, r10, fp, lr}
	bx  lr

	.global main
	.type main , %function
main:
	push {r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L51:
	ldr r10, =2
	str r10, [fp, #-4]
	ldr r10, [fp, #-4]
	ldr r9, [fp, #-4]
	mov r1, r9
	mov r0, r10
	bl  deepWhileBr
	mov r10, r0
	str r10, [fp, #-4]
	ldr r10, [fp, #-4]
	mov r0, r10
	bl  putint
	ldr r10, =0
	mov r0, r10
	b .Lmain_END
.Lmain_END:
	add sp, sp, #4
	pop {r9, r10, fp, lr}
	bx  lr

