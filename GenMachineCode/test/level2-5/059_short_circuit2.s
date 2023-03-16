	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm
	.text
	.global func
	.type func , %function
func:
	push {r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L19:
	str r0, [fp, #-4]
	ldr r10, [fp, #-4]
	ldr r9, =50
	cmp r10, r9
	movle r10, #1
	movgt r10, #0
	ble .L21
	b .L26
.L21:
	ldr r10, [fp, #-4]
	mov r0, r10
	bl  putint
	ldr r10, =1
	mov r0, r10
	b .Lfunc_END
.L26:
	b .L23
.L23:
	ldr r10, [fp, #-4]
	mov r0, r10
	bl  putint
	ldr r10, =0
	mov r0, r10
	b .Lfunc_END
.Lfunc_END:
	add sp, sp, #4
	pop {r9, r10, fp, lr}
	bx  lr

	.global main
	.type main , %function
main:
	push {r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L30:
	ldr r10, =0
	mov r0, r10
	bl  func
	mov r10, r0
	ldr r9, =1
	cmp r10, r9
	moveq r10, #1
	movne r10, #0
	beq .L32
	b .L38
.L32:
	ldr r10, =0
	str r10, [fp, #-4]
	b .L33
.L38:
	b .L35
.L33:
	ldr r10, =50
	mov r0, r10
	bl  func
	mov r10, r0
	ldr r9, =1
	cmp r10, r9
	moveq r10, #1
	movne r10, #0
	beq .L53
	b .L56
.L35:
	ldr r10, =50
	mov r0, r10
	bl  func
	mov r10, r0
	ldr r9, =1
	cmp r10, r9
	moveq r10, #1
	movne r10, #0
	beq .L40
	b .L43
.L53:
	ldr r10, =40
	mov r0, r10
	bl  func
	mov r10, r0
	ldr r9, =1
	cmp r10, r9
	moveq r10, #1
	movne r10, #0
	beq .L49
	b .L60
.L56:
	b .L52
.L40:
	ldr r10, =100
	mov r0, r10
	bl  func
	mov r10, r0
	ldr r9, =0
	cmp r10, r9
	moveq r10, #1
	movne r10, #0
	beq .L32
	b .L47
.L43:
	b .L34
.L49:
	ldr r10, =0
	str r10, [fp, #-4]
	b .L50
.L60:
	b .L52
.L52:
	ldr r10, =1
	mov r0, r10
	bl  func
	mov r10, r0
	ldr r9, =1
	cmp r10, r9
	moveq r10, #1
	movne r10, #0
	beq .L49
	b .L64
.L47:
	b .L34
.L34:
	ldr r10, =1
	str r10, [fp, #-4]
	b .L33
.L50:
	ldr r10, =0
	mov r0, r10
	b .Lmain_END
.L64:
	b .L51
.L51:
	ldr r10, =1
	str r10, [fp, #-4]
	b .L50
.Lmain_END:
	add sp, sp, #4
	pop {r9, r10, fp, lr}
	bx  lr

