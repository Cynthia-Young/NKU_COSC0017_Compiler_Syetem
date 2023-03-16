	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm
	.data
	.comm	e,1024,4
	.comm	book,64,4
	.comm	dis,64,4
	.global n
	.align 4
	.size n, 4
n:
	.word 0
	.global m
	.align 4
	.size m, 4
m:
	.word 0
	.global v1
	.align 4
	.size v1, 4
v1:
	.word 0
	.global v2
	.align 4
	.size v2, 4
v2:
	.word 0
	.global w
	.align 4
	.size w, 4
w:
	.word 0
	.text
	.global Dijkstra
	.type Dijkstra , %function
Dijkstra:
	push {r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #24
.L34:
	ldr r10, =1
	str r10, [fp, #-24]
	b .L37
.L37:
	ldr r10, [fp, #-24]
	ldr r9, addr_n_0
	ldr r8, [r9]
	cmp r10, r8
	movle r10, #1
	movgt r10, #0
	ble .L38
	b .L43
.L38:
	ldr r10, [fp, #-24]
	ldr r9, =1
	ldr r8, =16
	mul r7, r9, r8
	add r9, r7, r10
	ldr r10, =4
	mul r8, r9, r10
	ldr r10, addr_e_0
	add r9, r8, r10
	ldr r10, [r9]
	ldr r9, [fp, #-24]
	ldr r8, =4
	mul r7, r9, r8
	ldr r9, addr_dis_0
	add r8, r7, r9
	str r10, [r8]
	ldr r10, [fp, #-24]
	ldr r9, =4
	mul r8, r10, r9
	ldr r10, addr_book_0
	add r9, r8, r10
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, [fp, #-24]
	add r9, r10, #1
	str r9, [fp, #-24]
	b .L37
.L39:
	ldr r10, =1
	ldr r9, =4
	mul r8, r10, r9
	ldr r10, addr_book_0
	add r9, r8, r10
	ldr r10, =1
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1
	str r10, [fp, #-24]
	b .L64
.L42:
.L43:
	b .L39
.L44:
.L64:
	ldr r10, [fp, #-24]
	ldr r9, addr_n_0
	ldr r8, [r9]
	sub r9, r8, #1
	cmp r10, r9
	movle r10, #1
	movgt r10, #0
	ble .L65
	b .L70
.L65:
	ldr r10, =65535
	str r10, [fp, #-16]
	ldr r10, =0
	str r10, [fp, #-12]
	ldr r10, =1
	str r10, [fp, #-8]
	b .L75
.L66:
	b .LDijkstra_END
.L69:
.L70:
	b .L66
.L71:
.L75:
	ldr r10, [fp, #-8]
	ldr r9, addr_n_0
	ldr r8, [r9]
	cmp r10, r8
	movle r10, #1
	movgt r10, #0
	ble .L76
	b .L81
.L76:
	ldr r10, [fp, #-16]
	ldr r9, [fp, #-8]
	ldr r8, =4
	mul r7, r9, r8
	ldr r9, addr_dis_0
	add r8, r7, r9
	ldr r9, [r8]
	cmp r10, r9
	movgt r10, #1
	movle r10, #0
	bgt .L85
	b .L93
.L77:
	ldr r10, [fp, #-12]
	ldr r9, =4
	mul r8, r10, r9
	ldr r10, addr_book_0
	add r9, r8, r10
	ldr r10, =1
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =1
	str r10, [fp, #-4]
	b .L115
.L80:
.L81:
	b .L77
.L82:
.L83:
	ldr r10, [fp, #-8]
	ldr r9, =4
	mul r8, r10, r9
	ldr r10, addr_dis_0
	add r9, r8, r10
	ldr r10, [r9]
	str r10, [fp, #-16]
	ldr r10, [fp, #-8]
	str r10, [fp, #-12]
	b .L84
.L84:
	ldr r10, [fp, #-8]
	add r9, r10, #1
	str r9, [fp, #-8]
	b .L75
.L85:
	ldr r10, [fp, #-8]
	ldr r9, =4
	mul r8, r10, r9
	ldr r10, addr_book_0
	add r9, r8, r10
	ldr r10, [r9]
	ldr r9, =0
	cmp r10, r9
	moveq r10, #1
	movne r10, #0
	beq .L83
	b .L101
.L92:
.L93:
	b .L84
.L94:
.L100:
.L101:
	b .L84
.L102:
.L115:
	ldr r10, [fp, #-4]
	ldr r9, addr_n_0
	ldr r8, [r9]
	cmp r10, r8
	movle r10, #1
	movgt r10, #0
	ble .L116
	b .L121
.L116:
	ldr r10, [fp, #-12]
	ldr r9, [fp, #-4]
	ldr r8, =16
	mul r7, r10, r8
	add r10, r7, r9
	ldr r9, =4
	mul r8, r10, r9
	ldr r10, addr_e_0
	add r9, r8, r10
	ldr r10, [r9]
	ldr r9, =65535
	cmp r10, r9
	movlt r10, #1
	movge r10, #0
	blt .L123
	b .L134
.L117:
	ldr r10, [fp, #-24]
	add r9, r10, #1
	str r9, [fp, #-24]
	b .L64
.L120:
.L121:
	b .L117
.L122:
.L123:
	ldr r10, [fp, #-4]
	ldr r9, =4
	mul r8, r10, r9
	ldr r10, addr_dis_0
	add r9, r8, r10
	ldr r10, [r9]
	ldr r9, [fp, #-12]
	ldr r8, =4
	mul r7, r9, r8
	ldr r9, addr_dis_0
	add r8, r7, r9
	ldr r9, [r8]
	ldr r8, [fp, #-12]
	ldr r7, [fp, #-4]
	ldr r6, =16
	mul r5, r8, r6
	add r8, r5, r7
	ldr r7, =4
	mul r6, r8, r7
	ldr r8, addr_e_0
	add r7, r6, r8
	ldr r8, [r7]
	add r7, r9, r8
	cmp r10, r7
	movgt r10, #1
	movle r10, #0
	bgt .L136
	b .L157
.L124:
	ldr r10, [fp, #-4]
	add r9, r10, #1
	str r9, [fp, #-4]
	b .L115
.L133:
.L134:
	b .L124
.L135:
.L136:
	ldr r10, [fp, #-12]
	ldr r9, =4
	mul r8, r10, r9
	ldr r10, addr_dis_0
	add r9, r8, r10
	ldr r10, [r9]
	ldr r9, [fp, #-12]
	ldr r8, [fp, #-4]
	ldr r7, =16
	mul r6, r9, r7
	add r9, r6, r8
	ldr r8, =4
	mul r7, r9, r8
	ldr r9, addr_e_0
	add r8, r7, r9
	ldr r9, [r8]
	add r8, r10, r9
	ldr r10, [fp, #-4]
	ldr r9, =4
	mul r7, r10, r9
	ldr r10, addr_dis_0
	add r9, r7, r10
	add r10, fp, r9
	str r8, [r10]
	b .L137
.L137:
	b .L124
.L156:
.L157:
	b .L137
.L158:
.LDijkstra_END:
	add sp, sp, #24
	pop {r5, r6, r7, r8, r9, r10, fp, lr}
	bx  lr

	.global main
	.type main , %function
main:
	push {r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L178:
	bl  getint
	mov r10, r0
	ldr r9, addr_n_0
	str r10, [r9]
	bl  getint
	mov r10, r0
	ldr r9, addr_m_0
	str r10, [r9]
	ldr r10, =1
	str r10, [fp, #-16]
	b .L180
.L180:
	ldr r10, [fp, #-16]
	ldr r9, addr_n_0
	ldr r8, [r9]
	cmp r10, r8
	movle r10, #1
	movgt r10, #0
	ble .L181
	b .L186
.L181:
	ldr r10, =1
	str r10, [fp, #-12]
	b .L189
.L182:
	ldr r10, =1
	str r10, [fp, #-16]
	b .L221
.L185:
.L186:
	b .L182
.L187:
.L189:
	ldr r10, [fp, #-12]
	ldr r9, addr_n_0
	ldr r8, [r9]
	cmp r10, r8
	movle r10, #1
	movgt r10, #0
	ble .L190
	b .L195
.L190:
	ldr r10, [fp, #-16]
	ldr r9, [fp, #-12]
	cmp r10, r9
	moveq r10, #1
	movne r10, #0
	beq .L197
	b .L203
.L191:
	ldr r10, [fp, #-16]
	add r9, r10, #1
	str r9, [fp, #-16]
	b .L180
.L194:
.L195:
	b .L191
.L196:
.L197:
	ldr r10, [fp, #-16]
	ldr r9, [fp, #-12]
	ldr r8, =16
	mul r7, r10, r8
	add r10, r7, r9
	ldr r9, =4
	mul r8, r10, r9
	ldr r10, addr_e_0
	add r9, r8, r10
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	b .L198
.L198:
	ldr r10, [fp, #-12]
	add r9, r10, #1
	str r9, [fp, #-12]
	b .L189
.L199:
	ldr r10, [fp, #-16]
	ldr r9, [fp, #-12]
	ldr r8, =16
	mul r7, r10, r8
	add r10, r7, r9
	ldr r9, =4
	mul r8, r10, r9
	ldr r10, addr_e_0
	add r9, r8, r10
	ldr r10, =65535
	add r8, fp, r9
	str r10, [r8]
	b .L198
.L202:
.L203:
	b .L199
.L204:
.L221:
	ldr r10, [fp, #-16]
	ldr r9, addr_m_0
	ldr r8, [r9]
	cmp r10, r8
	movle r10, #1
	movgt r10, #0
	ble .L222
	b .L227
.L222:
	bl  getint
	mov r10, r0
	str r10, [fp, #-8]
	bl  getint
	mov r10, r0
	str r10, [fp, #-4]
	bl  getint
	mov r10, r0
	ldr r9, [fp, #-8]
	ldr r8, [fp, #-4]
	ldr r7, =16
	mul r6, r9, r7
	add r9, r6, r8
	ldr r8, =4
	mul r7, r9, r8
	ldr r9, addr_e_0
	add r8, r7, r9
	add r9, fp, r8
	str r10, [r9]
	ldr r10, [fp, #-16]
	add r9, r10, #1
	str r9, [fp, #-16]
	b .L221
.L223:
	bl  Dijkstra
	ldr r10, =1
	str r10, [fp, #-16]
	b .L239
.L226:
.L227:
	b .L223
.L228:
.L239:
	ldr r10, [fp, #-16]
	ldr r9, addr_n_0
	ldr r8, [r9]
	cmp r10, r8
	movle r10, #1
	movgt r10, #0
	ble .L240
	b .L245
.L240:
	ldr r10, [fp, #-16]
	ldr r9, =4
	mul r8, r10, r9
	ldr r10, addr_dis_0
	add r9, r8, r10
	ldr r10, [r9]
	mov r0, r10
	bl  putint
	ldr r10, =32
	mov r0, r10
	bl  putch
	ldr r10, [fp, #-16]
	add r9, r10, #1
	str r9, [fp, #-16]
	b .L239
.L241:
	ldr r10, =10
	mov r0, r10
	bl  putch
	ldr r10, =0
	mov r0, r10
	b .Lmain_END
.L244:
.L245:
	b .L241
.L246:
.Lmain_END:
	add sp, sp, #16
	pop {r6, r7, r8, r9, r10, fp, lr}
	bx  lr

addr_e_0:
	.word e
addr_book_0:
	.word book
addr_dis_0:
	.word dis
addr_n_0:
	.word n
addr_m_0:
	.word m
addr_v1_0:
	.word v1
addr_v2_0:
	.word v2
addr_w_0:
	.word w
