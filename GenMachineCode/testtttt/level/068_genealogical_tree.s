	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm
	.data
	.comm	map,400,4
	.comm	indegree,40,4
	.comm	queue,40,4
	.text
	.global topo
	.type topo , %function
topo:
	push {r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #20
.L22:
	str r0, [fp, #-20]
	ldr r10, =0
	str r10, [fp, #-16]
	ldr r10, =0
	str r10, [fp, #-12]
	ldr r10, =1
	str r10, [fp, #-8]
	ldr r10, =1
	str r10, [fp, #-4]
	b .L28
.L28:
	ldr r10, [fp, #-8]
	ldr r9, [fp, #-20]
	cmp r10, r9
	movle r10, #1
	movgt r10, #0
	ble .L29
	b .L34
.L29:
	ldr r10, =1
	str r10, [fp, #-4]
	b .L36
.L34:
	b .L30
.L36:
	ldr r10, [fp, #-4]
	ldr r9, [fp, #-20]
	cmp r10, r9
	movle r10, #1
	movgt r10, #0
	ble .L37
	b .L42
.L30:
	ldr r10, =0
	str r10, [fp, #-8]
	b .L99
.L37:
	ldr r10, [fp, #-4]
	ldr r9, =4
	mul r8, r10, r9
	ldr r10, addr_indegree_0
	add r9, r8, r10
	ldr r10, [r9]
	ldr r9, =0
	cmp r10, r9
	moveq r10, #1
	movne r10, #0
	beq .L44
	b .L52
.L42:
	b .L38
.L99:
	ldr r10, [fp, #-8]
	ldr r9, [fp, #-20]
	cmp r10, r9
	movlt r10, #1
	movge r10, #0
	blt .L100
	b .L105
.L44:
	ldr r10, [fp, #-4]
	str r10, [fp, #-16]
	b .L38
.L52:
	b .L45
.L38:
	ldr r10, [fp, #-16]
	ldr r9, [fp, #-12]
	ldr r8, =4
	mul r7, r9, r8
	ldr r9, addr_queue_0
	add r8, r7, r9
	str r10, [r8]
	ldr r10, [fp, #-12]
	add r9, r10, #1
	str r9, [fp, #-12]
	ldr r10, [fp, #-16]
	ldr r9, =4
	mul r8, r10, r9
	ldr r10, addr_indegree_0
	add r9, r8, r10
	ldr r10, =-1
	str r10, [r9]
	ldr r10, =1
	str r10, [fp, #-4]
	b .L67
.L100:
	ldr r10, [fp, #-8]
	ldr r9, =4
	mul r8, r10, r9
	ldr r10, addr_queue_0
	add r9, r8, r10
	ldr r10, [r9]
	mov r0, r10
	bl  putint
	ldr r10, =10
	mov r0, r10
	bl  putch
	ldr r10, [fp, #-8]
	add r9, r10, #1
	str r9, [fp, #-8]
	b .L99
.L105:
	b .L101
.L45:
	ldr r10, [fp, #-4]
	add r9, r10, #1
	str r9, [fp, #-4]
	b .L36
.L67:
	ldr r10, [fp, #-4]
	ldr r9, [fp, #-20]
	cmp r10, r9
	movle r10, #1
	movgt r10, #0
	ble .L68
	b .L73
.L101:
	b .Ltopo_END
.L68:
	ldr r10, [fp, #-16]
	ldr r9, [fp, #-4]
	ldr r8, =10
	mul r7, r10, r8
	add r10, r7, r9
	ldr r9, =4
	mul r8, r10, r9
	ldr r10, addr_map_0
	add r9, r8, r10
	ldr r10, [r9]
	ldr r9, =0
	cmp r9, r10
	movne r10, #1
	moveq r10, #0
	bne .L75
	b .L86
.L73:
	b .L69
.L75:
	ldr r10, [fp, #-4]
	ldr r9, =4
	mul r8, r10, r9
	ldr r10, addr_indegree_0
	add r9, r8, r10
	ldr r10, [r9]
	sub r9, r10, #1
	ldr r10, [fp, #-4]
	ldr r8, =4
	mul r7, r10, r8
	ldr r10, addr_indegree_0
	add r8, r7, r10
	str r9, [r8]
	b .L76
.L86:
	b .L76
.L69:
	ldr r10, [fp, #-8]
	add r9, r10, #1
	str r9, [fp, #-8]
	b .L28
.L76:
	ldr r10, [fp, #-4]
	add r9, r10, #1
	str r9, [fp, #-4]
	b .L67
.Ltopo_END:
	add sp, sp, #20
	pop {r7, r8, r9, r10, fp, lr}
	bx  lr

	.global main
	.type main , %function
main:
	push {r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #12
.L114:
	ldr r10, =1
	str r10, [fp, #-4]
	ldr r10, =5
	str r10, [fp, #-12]
	b .L118
.L118:
	ldr r10, [fp, #-4]
	ldr r9, [fp, #-12]
	cmp r10, r9
	movle r10, #1
	movgt r10, #0
	ble .L119
	b .L124
.L119:
	bl  getint
	mov r10, r0
	str r10, [fp, #-8]
	b .L126
.L124:
	b .L120
.L126:
	ldr r10, [fp, #-8]
	ldr r9, =0
	cmp r10, r9
	movne r10, #1
	moveq r10, #0
	bne .L127
	b .L131
.L120:
	ldr r10, [fp, #-12]
	mov r0, r10
	bl  topo
	ldr r10, =0
	mov r0, r10
	b .Lmain_END
.L127:
	ldr r10, [fp, #-4]
	ldr r9, [fp, #-8]
	ldr r8, =10
	mul r7, r10, r8
	add r10, r7, r9
	ldr r9, =4
	mul r8, r10, r9
	ldr r10, addr_map_0
	add r9, r8, r10
	ldr r10, =1
	str r10, [r9]
	ldr r10, [fp, #-8]
	ldr r9, =4
	mul r8, r10, r9
	ldr r10, addr_indegree_0
	add r9, r8, r10
	ldr r10, [r9]
	add r9, r10, #1
	ldr r10, [fp, #-8]
	ldr r8, =4
	mul r7, r10, r8
	ldr r10, addr_indegree_0
	add r8, r7, r10
	str r9, [r8]
	bl  getint
	mov r10, r0
	str r10, [fp, #-8]
	b .L126
.L131:
	b .L128
.L128:
	ldr r10, [fp, #-4]
	add r9, r10, #1
	str r9, [fp, #-4]
	b .L118
.Lmain_END:
	add sp, sp, #12
	pop {r7, r8, r9, r10, fp, lr}
	bx  lr

addr_map_0:
	.word map
addr_indegree_0:
	.word indegree
addr_queue_0:
	.word queue
