	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm
	.data
	.global d
	.align 4
	.size d, 4
d:
	.word 0
	.global b
	.align 4
	.size b, 4
b:
	.word 0
	.global a
	.align 4
	.size a, 4
a:
	.word 0
	.text
	.global set_a
	.type set_a , %function
set_a:
	push {r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L51:
	str r0, [fp, #-4]
	ldr r10, [fp, #-4]
	ldr r9, addr_a_0
	str r10, [r9]
	ldr r10, addr_a_0
	ldr r9, [r10]
	mov r0, r9
	b .Lset_a_END
.Lset_a_END:
	add sp, sp, #4
	pop {r9, r10, fp, lr}
	bx  lr

	.global set_b
	.type set_b , %function
set_b:
	push {r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L55:
	str r0, [fp, #-4]
	ldr r10, [fp, #-4]
	ldr r9, addr_b_0
	str r10, [r9]
	ldr r10, addr_b_0
	ldr r9, [r10]
	mov r0, r9
	b .Lset_b_END
.Lset_b_END:
	add sp, sp, #4
	pop {r9, r10, fp, lr}
	bx  lr

	.global set_d
	.type set_d , %function
set_d:
	push {r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L59:
	str r0, [fp, #-4]
	ldr r10, [fp, #-4]
	ldr r9, addr_d_0
	str r10, [r9]
	ldr r10, addr_d_0
	ldr r9, [r10]
	mov r0, r9
	b .Lset_d_END
.Lset_d_END:
	add sp, sp, #4
	pop {r9, r10, fp, lr}
	bx  lr

	.global main
	.type main , %function
main:
	push {r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #20
.L63:
	ldr r10, =2
	ldr r9, addr_a_0
	str r10, [r9]
	ldr r10, =3
	ldr r9, addr_b_0
	str r10, [r9]
	ldr r10, =0
	ldr r9, =0
	cmp r10, r9
	movne r10, #1
	moveq r10, #0
	bne .L64
	b .L67
.L64:
	mov r0, #67
	bl  putch
	b .L65
.L65:
	ldr r10, =0
	ldr r9, =1
	cmp r10, r9
	movne r10, #1
	moveq r10, #0
	bne .L69
	b .L72
.L66:
.L67:
	b .L65
.L68:
.L69:
	mov r0, #68
	bl  putch
	b .L70
.L70:
	ldr r10, =0
	ldr r9, =0
	cmp r10, r9
	movne r10, #1
	moveq r10, #0
	bne .L74
	b .L77
.L71:
.L72:
	b .L70
.L73:
.L74:
	mov r0, #69
	bl  putch
	b .L75
.L75:
	ldr r10, =0
	ldr r9, =1
	cmp r10, r9
	movne r10, #1
	moveq r10, #0
	bne .L79
	b .L82
.L76:
.L77:
	b .L75
.L78:
.L79:
	mov r0, #70
	bl  putch
	b .L80
.L80:
	mov r0, #10
	bl  putch
	ldr r10, =4
	str r10, [fp, #-20]
	ldr r10, =3
	str r10, [fp, #-16]
	ldr r10, =2
	str r10, [fp, #-12]
	ldr r10, =1
	str r10, [fp, #-8]
	ldr r10, =0
	str r10, [fp, #-4]
	b .L89
.L81:
.L82:
	b .L80
.L83:
.L89:
	ldr r10, [fp, #-4]
	ldr r9, =0
	cmp r9, r10
	movne r10, #1
	moveq r10, #0
	bne .L92
	b .L95
.L90:
	mov r0, #32
	bl  putch
	b .L89
.L91:
	ldr r10, [fp, #-4]
	ldr r9, =0
	cmp r9, r10
	movne r10, #1
	moveq r10, #0
	bne .L101
	b .L106
.L92:
	ldr r10, [fp, #-8]
	ldr r9, =0
	cmp r9, r10
	movne r10, #1
	moveq r10, #0
	bne .L90
	b .L99
.L94:
.L95:
	b .L91
.L96:
.L98:
.L99:
	b .L91
.L100:
.L101:
	mov r0, #67
	bl  putch
	b .L102
.L102:
	ldr r10, [fp, #-4]
	ldr r9, [fp, #-8]
	cmp r10, r9
	movge r10, #1
	movlt r10, #0
	bge .L112
	b .L118
.L103:
	ldr r10, [fp, #-8]
	ldr r9, =0
	cmp r9, r10
	movne r10, #1
	moveq r10, #0
	bne .L101
	b .L110
.L105:
.L106:
	b .L103
.L107:
.L109:
.L110:
	b .L102
.L111:
.L112:
	mov r0, #72
	bl  putch
	b .L113
.L113:
	ldr r10, [fp, #-12]
	ldr r9, [fp, #-8]
	cmp r10, r9
	movge r10, #1
	movlt r10, #0
	bge .L127
	b .L131
.L114:
	ldr r10, [fp, #-8]
	ldr r9, [fp, #-4]
	cmp r10, r9
	movle r10, #1
	movgt r10, #0
	ble .L112
	b .L123
.L117:
.L118:
	b .L114
.L119:
.L122:
.L123:
	b .L113
.L124:
.L125:
	mov r0, #73
	bl  putch
	b .L126
.L126:
	ldr r10, [fp, #-4]
	ldr r9, [fp, #-8]
	ldr r8, =0
	cmp r8, r9
	moveq r9, #1
	movne r9, #0
	uxtb r8, r9
	cmp r10, r8
	moveq r10, #1
	movne r10, #0
	beq .L141
	b .L146
.L127:
	ldr r10, [fp, #-20]
	ldr r9, [fp, #-16]
	cmp r10, r9
	movne r10, #1
	moveq r10, #0
	bne .L125
	b .L136
.L130:
.L131:
	b .L126
.L132:
.L135:
.L136:
	b .L126
.L137:
.L138:
	mov r0, #74
	bl  putch
	b .L139
.L139:
	ldr r10, [fp, #-4]
	ldr r9, [fp, #-8]
	ldr r8, =0
	cmp r8, r9
	moveq r9, #1
	movne r9, #0
	uxtb r8, r9
	cmp r10, r8
	moveq r10, #1
	movne r10, #0
	beq .L158
	b .L165
.L140:
	ldr r10, [fp, #-20]
	ldr r9, [fp, #-20]
	cmp r10, r9
	movge r10, #1
	movlt r10, #0
	bge .L138
	b .L156
.L141:
	ldr r10, [fp, #-16]
	ldr r9, [fp, #-16]
	cmp r10, r9
	movlt r10, #1
	movge r10, #0
	blt .L138
	b .L151
.L145:
.L146:
	b .L140
.L147:
.L150:
.L151:
	b .L140
.L152:
.L155:
.L156:
	b .L139
.L157:
.L158:
	mov r0, #75
	bl  putch
	b .L159
.L159:
	mov r0, #10
	bl  putch
	ldr r10, =0
	mov r0, r10
	b .Lmain_END
.L160:
	ldr r10, [fp, #-16]
	ldr r9, [fp, #-16]
	cmp r10, r9
	movlt r10, #1
	movge r10, #0
	blt .L167
	b .L171
.L164:
.L165:
	b .L160
.L166:
.L167:
	ldr r10, [fp, #-20]
	ldr r9, [fp, #-20]
	cmp r10, r9
	movge r10, #1
	movlt r10, #0
	bge .L158
	b .L176
.L170:
.L171:
	b .L159
.L172:
.L175:
.L176:
	b .L159
.L177:
.Lmain_END:
	add sp, sp, #20
	pop {r8, r9, r10, fp, lr}
	bx  lr

addr_d_0:
	.word d
addr_b_0:
	.word b
addr_a_0:
	.word a
