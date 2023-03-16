	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm
	.text
	.global reverse
	.type reverse , %function
reverse:
	push {r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L8:
	str r0, [fp, #-8]
	ldr r10, [fp, #-8]
	ldr r9, =1
	cmp r10, r9
	movle r10, #1
	movgt r10, #0
	ble .L11
	b .L16
.L11:
	bl  getint
	mov r10, r0
	str r10, [fp, #-4]
	ldr r10, [fp, #-4]
	mov r0, r10
	bl  putint
	b .L12
.L16:
	b .L13
.L12:
	b .Lreverse_END
.L13:
	bl  getint
	mov r10, r0
	str r10, [fp, #-4]
	ldr r10, [fp, #-8]
	sub r9, r10, #1
	mov r0, r9
	bl  reverse
	ldr r10, [fp, #-4]
	mov r0, r10
	bl  putint
	b .L12
.Lreverse_END:
	add sp, sp, #8
	pop {r9, r10, fp, lr}
	bx  lr

	.global main
	.type main , %function
main:
	push {r10, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L21:
	ldr r10, =200
	str r10, [fp, #-4]
	ldr r10, [fp, #-4]
	mov r0, r10
	bl  reverse
	ldr r10, =0
	mov r0, r10
	b .Lmain_END
.Lmain_END:
	add sp, sp, #4
	pop {r10, fp, lr}
	bx  lr

