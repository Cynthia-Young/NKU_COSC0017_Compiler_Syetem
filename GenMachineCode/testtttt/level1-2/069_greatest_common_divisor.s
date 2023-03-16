	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm
	.text
	.global fun
	.type fun , %function
fun:
	push {r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #12
.L6:
	str r0, [fp, #-12]
	str r1, [fp, #-8]
	b .L10
.L10:
	ldr r10, [fp, #-8]
	ldr r9, =0
	cmp r10, r9
	movgt r10, #1
	movle r10, #0
	bgt .L11
	b .L15
.L11:
	ldr r10, [fp, #-12]
	ldr r9, [fp, #-8]
	sdiv r8, r10, r9
	mul r9, r8, r9
	sub r8, r10, r9
	str r8, [fp, #-4]
	ldr r10, [fp, #-8]
	str r10, [fp, #-12]
	ldr r10, [fp, #-4]
	str r10, [fp, #-8]
	b .L10
.L12:
	ldr r10, [fp, #-12]
	mov r0, r10
	b .Lfun_END
.L14:
.L15:
	b .L12
.L16:
.Lfun_END:
	add sp, sp, #12
	pop {r8, r9, r10, fp, lr}
	bx  lr

	.global main
	.type main , %function
main:
	push {r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #12
.L22:
	bl  getint
	mov r10, r0
	str r10, [fp, #-12]
	bl  getint
	mov r10, r0
	str r10, [fp, #-8]
	ldr r10, [fp, #-12]
	ldr r9, [fp, #-8]
	mov r1, r9
	mov r0, r10
	bl  fun
	mov r10, r0
	str r10, [fp, #-4]
	ldr r10, [fp, #-4]
	mov r0, r10
	bl  putint
	ldr r10, =0
	mov r0, r10
	b .Lmain_END
.Lmain_END:
	add sp, sp, #12
	pop {r9, r10, fp, lr}
	bx  lr

