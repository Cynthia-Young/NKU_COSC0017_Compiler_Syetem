	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm
	.text
	.global deepWhileBr
	.type deepWhileBr , %function
deepWhileBr:
	push {r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #20
.L10:
	str r0, [fp, #-20]
	str r1, [fp, #-16]
	ldr r10, [fp, #-20]
	ldr r9, [fp, #-16]
	add r8, r10, r9
	str r8, [fp, #-12]
	b .L16
.L16:
	ldr r10, [fp, #-12]
	ldr r9, =75
	cmp r10, r9
	movlt r10, #1
	movge r10, #0
	blt .L17
	b .L21
.L17:
	ldr r10, =42
	str r10, [fp, #-8]
	ldr r10, [fp, #-12]
	ldr r9, =100
	cmp r10, r9
	movlt r10, #1
	movge r10, #0
	blt .L24
	b .L28
.L21:
	b .L18
.L24:
	ldr r10, [fp, #-12]
	ldr r9, [fp, #-8]
	add r8, r10, r9
	str r8, [fp, #-12]
	ldr r10, [fp, #-12]
	ldr r9, =99
	cmp r10, r9
	movgt r10, #1
	movle r10, #0
	bgt .L32
	b .L36
.L28:
	b .L25
.L18:
	ldr r10, [fp, #-12]
	mov r0, r10
	b .LdeepWhileBr_END
.L32:
	ldr r10, [fp, #-8]
	ldr r9, =2
	mul r8, r10, r9
	str r8, [fp, #-4]
	ldr r10, =0
	ldr r9, =1
	cmp r10, r9
	movne r10, #1
	moveq r10, #0
	bne .L40
	b .L43
.L36:
	b .L33
.L25:
	b .L16
.L40:
	ldr r10, [fp, #-4]
	ldr r9, =2
	mul r8, r10, r9
	str r8, [fp, #-12]
	b .L41
.L43:
	b .L41
.L33:
	b .L25
.L41:
	b .L33
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
.L47:
	ldr r10, =2
	str r10, [fp, #-4]
	ldr r10, [fp, #-4]
	ldr r9, [fp, #-4]
	mov r1, r9
	mov r0, r10
	bl  deepWhileBr
	mov r10, r0
	mov r0, r10
	b .Lmain_END
.Lmain_END:
	add sp, sp, #4
	pop {r9, r10, fp, lr}
	bx  lr

