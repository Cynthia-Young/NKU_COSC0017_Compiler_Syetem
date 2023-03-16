	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm
	.text
	.global palindrome
	.type palindrome , %function
palindrome:
	push {r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #28
.L12:
	str r0, [fp, #-28]
	ldr r10, =0
	str r10, [fp, #-8]
	b .L17
.L17:
	ldr r10, [fp, #-8]
	ldr r9, =4
	cmp r10, r9
	movlt r10, #1
	movge r10, #0
	blt .L18
	b .L22
.L18:
	ldr r10, [fp, #-28]
	ldr r9, =10
	sdiv r8, r10, r9
	mul r9, r8, r9
	sub r8, r10, r9
	ldr r10, [fp, #-8]
	ldr r9, =4
	mul r7, r10, r9
	add r10, r7, #-24
	add r9, fp, r10
	str r8, [r9]
	ldr r10, [fp, #-28]
	ldr r9, =10
	sdiv r8, r10, r9
	str r8, [fp, #-28]
	ldr r10, [fp, #-8]
	add r9, r10, #1
	str r9, [fp, #-8]
	b .L17
.L19:
	ldr r10, =0
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-24
	add r10, fp, r10
	ldr r9, [r10]
	ldr r10, =3
	ldr r8, =4
	mul r7, r10, r8
	add r10, r7, #-24
	add r8, fp, r10
	ldr r10, [r8]
	cmp r9, r10
	moveq r10, #1
	movne r10, #0
	beq .L33
	b .L41
.L21:
.L22:
	b .L19
.L23:
.L30:
	ldr r10, =1
	str r10, [fp, #-4]
	b .L31
.L31:
	ldr r10, [fp, #-4]
	mov r0, r10
	b .Lpalindrome_END
.L32:
	ldr r10, =0
	str r10, [fp, #-4]
	b .L31
.L33:
	ldr r10, =1
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-24
	add r9, fp, r10
	ldr r10, [r9]
	ldr r9, =2
	ldr r8, =4
	mul r7, r9, r8
	add r9, r7, #-24
	add r8, fp, r9
	ldr r9, [r8]
	cmp r10, r9
	moveq r10, #1
	movne r10, #0
	beq .L30
	b .L50
.L40:
.L41:
	b .L32
.L42:
.L49:
.L50:
	b .L32
.L51:
.Lpalindrome_END:
	add sp, sp, #28
	pop {r7, r8, r9, r10, fp, lr}
	bx  lr

	.global main
	.type main , %function
main:
	push {r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L53:
	ldr r10, =1221
	str r10, [fp, #-8]
	ldr r10, [fp, #-8]
	mov r0, r10
	bl  palindrome
	mov r10, r0
	str r10, [fp, #-4]
	ldr r10, [fp, #-4]
	ldr r9, =1
	cmp r10, r9
	moveq r10, #1
	movne r10, #0
	beq .L57
	b .L62
.L57:
	ldr r10, [fp, #-8]
	mov r0, r10
	bl  putint
	b .L58
.L58:
	ldr r10, =10
	str r10, [fp, #-4]
	ldr r10, [fp, #-4]
	mov r0, r10
	bl  putch
	ldr r10, =0
	mov r0, r10
	b .Lmain_END
.L59:
	ldr r10, =0
	str r10, [fp, #-4]
	ldr r10, [fp, #-4]
	mov r0, r10
	bl  putint
	b .L58
.L61:
.L62:
	b .L59
.L63:
.Lmain_END:
	add sp, sp, #8
	pop {r9, r10, fp, lr}
	bx  lr

