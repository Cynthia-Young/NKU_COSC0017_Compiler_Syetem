	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm
	.data
	.comm	size,40,4
	.comm	to,400,4
	.comm	cap,400,4
	.comm	rev,400,4
	.comm	used,40,4
	.text
	.global my_memset
	.type my_memset , %function
my_memset:
	push {r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L33:
	str r0, [fp, #-16]
	str r1, [fp, #-12]
	str r2, [fp, #-8]
	ldr r10, =0
	str r10, [fp, #-4]
	b .L38
.L38:
	ldr r10, [fp, #-4]
	ldr r9, [fp, #-8]
	cmp r10, r9
	movlt r10, #1
	movge r10, #0
	blt .L39
	b .L44
.L39:
	ldr r10, [fp, #-12]
	ldr r9, [fp, #-4]
	ldr r8, [fp, #-16]
	ldr r7, =4
	mul r6, r9, r7
	add r9, r6, r8
	str r10, [r9]
	ldr r10, [fp, #-4]
	add r9, r10, #1
	str r9, [fp, #-4]
	b .L38
.L40:
	b .Lmy_memset_END
.L43:
.L44:
	b .L40
.L45:
.Lmy_memset_END:
	add sp, sp, #16
	pop {r6, r7, r8, r9, r10, fp, lr}
	bx  lr

	.global add_node
	.type add_node , %function
add_node:
	push {r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #12
.L52:
	str r0, [fp, #-12]
	str r1, [fp, #-8]
	str r2, [fp, #-4]
	ldr r10, [fp, #-8]
	ldr r9, [fp, #-12]
	ldr r8, [fp, #-12]
	ldr r7, =4
	mul r6, r8, r7
	ldr r8, addr_size_0
	add r7, r6, r8
	ldr r8, [r7]
	ldr r7, =10
	mul r6, r9, r7
	add r9, r6, r8
	ldr r8, =4
	mul r7, r9, r8
	ldr r9, addr_to_0
	add r8, r7, r9
	add r9, fp, r8
	str r10, [r9]
	ldr r10, [fp, #-4]
	ldr r9, [fp, #-12]
	ldr r8, [fp, #-12]
	ldr r7, =4
	mul r6, r8, r7
	ldr r8, addr_size_0
	add r7, r6, r8
	ldr r8, [r7]
	ldr r7, =10
	mul r6, r9, r7
	add r9, r6, r8
	ldr r8, =4
	mul r7, r9, r8
	ldr r9, addr_cap_0
	add r8, r7, r9
	add r9, fp, r8
	str r10, [r9]
	ldr r10, [fp, #-8]
	ldr r9, =4
	mul r8, r10, r9
	ldr r10, addr_size_0
	add r9, r8, r10
	ldr r10, [r9]
	ldr r9, [fp, #-12]
	ldr r8, [fp, #-12]
	ldr r7, =4
	mul r6, r8, r7
	ldr r8, addr_size_0
	add r7, r6, r8
	ldr r8, [r7]
	ldr r7, =10
	mul r6, r9, r7
	add r9, r6, r8
	ldr r8, =4
	mul r7, r9, r8
	ldr r9, addr_rev_0
	add r8, r7, r9
	str r10, [r8]
	ldr r10, [fp, #-12]
	ldr r9, [fp, #-8]
	ldr r8, [fp, #-8]
	ldr r7, =4
	mul r6, r8, r7
	ldr r8, addr_size_0
	add r7, r6, r8
	ldr r8, [r7]
	ldr r7, =10
	mul r6, r9, r7
	add r9, r6, r8
	ldr r8, =4
	mul r7, r9, r8
	ldr r9, addr_to_0
	add r8, r7, r9
	add r9, fp, r8
	str r10, [r9]
	ldr r10, [fp, #-8]
	ldr r9, [fp, #-8]
	ldr r8, =4
	mul r7, r9, r8
	ldr r9, addr_size_0
	add r8, r7, r9
	ldr r9, [r8]
	ldr r8, =10
	mul r7, r10, r8
	add r10, r7, r9
	ldr r9, =4
	mul r8, r10, r9
	ldr r10, addr_cap_0
	add r9, r8, r10
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, [fp, #-12]
	ldr r9, =4
	mul r8, r10, r9
	ldr r10, addr_size_0
	add r9, r8, r10
	ldr r10, [r9]
	ldr r9, [fp, #-8]
	ldr r8, [fp, #-8]
	ldr r7, =4
	mul r6, r8, r7
	ldr r8, addr_size_0
	add r7, r6, r8
	ldr r8, [r7]
	ldr r7, =10
	mul r6, r9, r7
	add r9, r6, r8
	ldr r8, =4
	mul r7, r9, r8
	ldr r9, addr_rev_0
	add r8, r7, r9
	str r10, [r8]
	ldr r10, [fp, #-12]
	ldr r9, =4
	mul r8, r10, r9
	ldr r10, addr_size_0
	add r9, r8, r10
	ldr r10, [r9]
	add r9, r10, #1
	ldr r10, [fp, #-12]
	ldr r8, =4
	mul r7, r10, r8
	ldr r10, addr_size_0
	add r8, r7, r10
	add r10, fp, r8
	str r9, [r10]
	ldr r10, [fp, #-8]
	ldr r9, =4
	mul r8, r10, r9
	ldr r10, addr_size_0
	add r9, r8, r10
	ldr r10, [r9]
	add r9, r10, #1
	ldr r10, [fp, #-8]
	ldr r8, =4
	mul r7, r10, r8
	ldr r10, addr_size_0
	add r8, r7, r10
	add r10, fp, r8
	str r9, [r10]
	b .Ladd_node_END
.Ladd_node_END:
	add sp, sp, #12
	pop {r6, r7, r8, r9, r10, fp, lr}
	bx  lr

	.global dfs
	.type dfs , %function
dfs:
	push {r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #24
.L153:
	str r0, [fp, #-24]
	str r1, [fp, #-20]
	str r2, [fp, #-16]
	ldr r10, [fp, #-24]
	ldr r9, [fp, #-20]
	cmp r10, r9
	moveq r10, #1
	movne r10, #0
	beq .L157
	b .L162
.L157:
	ldr r10, [fp, #-16]
	mov r0, r10
	b .Ldfs_END
.L158:
	ldr r10, [fp, #-24]
	ldr r9, =4
	mul r8, r10, r9
	ldr r10, addr_used_0
	add r9, r8, r10
	ldr r10, =1
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =0
	str r10, [fp, #-12]
	b .L170
.L161:
.L162:
	b .L158
.L163:
.L170:
	ldr r10, [fp, #-12]
	ldr r9, [fp, #-24]
	ldr r8, =4
	mul r7, r9, r8
	ldr r9, addr_size_0
	add r8, r7, r9
	ldr r9, [r8]
	cmp r10, r9
	movlt r10, #1
	movge r10, #0
	blt .L171
	b .L180
.L171:
	ldr r10, [fp, #-24]
	ldr r9, [fp, #-12]
	ldr r8, =10
	mul r7, r10, r8
	add r10, r7, r9
	ldr r9, =4
	mul r8, r10, r9
	ldr r10, addr_to_0
	add r9, r8, r10
	ldr r10, [r9]
	ldr r9, =4
	mul r8, r10, r9
	ldr r10, addr_used_0
	add r9, r8, r10
	ldr r10, [r9]
	ldr r9, =0
	cmp r9, r10
	movne r10, #1
	moveq r10, #0
	bne .L182
	b .L197
.L172:
	ldr r10, =0
	mov r0, r10
	b .Ldfs_END
.L179:
.L180:
	b .L172
.L181:
.L182:
	ldr r10, [fp, #-12]
	add r9, r10, #1
	str r9, [fp, #-12]
	b .L170
.L183:
	ldr r10, [fp, #-24]
	ldr r9, [fp, #-12]
	ldr r8, =10
	mul r7, r10, r8
	add r10, r7, r9
	ldr r9, =4
	mul r8, r10, r9
	ldr r10, addr_cap_0
	add r9, r8, r10
	ldr r10, [r9]
	ldr r9, =0
	cmp r10, r9
	movle r10, #1
	movgt r10, #0
	ble .L201
	b .L212
.L196:
.L197:
	b .L183
.L198:
.L200:
	b .L183
.L201:
	ldr r10, [fp, #-12]
	add r9, r10, #1
	str r9, [fp, #-12]
	b .L170
.L202:
	ldr r10, [fp, #-16]
	ldr r9, [fp, #-24]
	ldr r8, [fp, #-12]
	ldr r7, =10
	mul r6, r9, r7
	add r9, r6, r8
	ldr r8, =4
	mul r7, r9, r8
	ldr r9, addr_cap_0
	add r8, r7, r9
	ldr r9, [r8]
	cmp r10, r9
	movlt r10, #1
	movge r10, #0
	blt .L217
	b .L230
.L211:
.L212:
	b .L202
.L213:
.L215:
	b .L202
.L217:
	ldr r10, [fp, #-16]
	str r10, [fp, #-8]
	b .L218
.L218:
	ldr r10, [fp, #-24]
	ldr r9, [fp, #-12]
	ldr r8, =10
	mul r7, r10, r8
	add r10, r7, r9
	ldr r9, =4
	mul r8, r10, r9
	ldr r10, addr_to_0
	add r9, r8, r10
	ldr r10, [r9]
	ldr r9, [fp, #-20]
	ldr r8, [fp, #-8]
	mov r2, r8
	mov r1, r9
	mov r0, r10
	bl  dfs
	mov r10, r0
	str r10, [fp, #-4]
	ldr r10, [fp, #-4]
	ldr r9, =0
	cmp r10, r9
	movgt r10, #1
	movle r10, #0
	bgt .L252
	b .L256
.L219:
	ldr r10, [fp, #-24]
	ldr r9, [fp, #-12]
	ldr r8, =10
	mul r7, r10, r8
	add r10, r7, r9
	ldr r9, =4
	mul r8, r10, r9
	ldr r10, addr_cap_0
	add r9, r8, r10
	ldr r10, [r9]
	str r10, [fp, #-8]
	b .L218
.L229:
.L230:
	b .L219
.L231:
.L252:
	ldr r10, [fp, #-24]
	ldr r9, [fp, #-12]
	ldr r8, =10
	mul r7, r10, r8
	add r10, r7, r9
	ldr r9, =4
	mul r8, r10, r9
	ldr r10, addr_cap_0
	add r9, r8, r10
	ldr r10, [r9]
	ldr r9, [fp, #-4]
	sub r8, r10, r9
	ldr r10, [fp, #-24]
	ldr r9, [fp, #-12]
	ldr r7, =10
	mul r6, r10, r7
	add r10, r6, r9
	ldr r9, =4
	mul r7, r10, r9
	ldr r10, addr_cap_0
	add r9, r7, r10
	add r10, fp, r9
	str r8, [r10]
	ldr r10, [fp, #-24]
	ldr r9, [fp, #-12]
	ldr r8, =10
	mul r7, r10, r8
	add r10, r7, r9
	ldr r9, =4
	mul r8, r10, r9
	ldr r10, addr_to_0
	add r9, r8, r10
	ldr r10, [r9]
	ldr r9, [fp, #-24]
	ldr r8, [fp, #-12]
	ldr r7, =10
	mul r6, r9, r7
	add r9, r6, r8
	ldr r8, =4
	mul r7, r9, r8
	ldr r9, addr_rev_0
	add r8, r7, r9
	ldr r9, [r8]
	ldr r8, =10
	mul r7, r10, r8
	add r10, r7, r9
	ldr r9, =4
	mul r8, r10, r9
	ldr r10, addr_cap_0
	add r9, r8, r10
	ldr r10, [r9]
	ldr r9, [fp, #-4]
	add r8, r10, r9
	ldr r10, [fp, #-24]
	ldr r9, [fp, #-12]
	ldr r7, =10
	mul r6, r10, r7
	add r10, r6, r9
	ldr r9, =4
	mul r7, r10, r9
	ldr r10, addr_to_0
	add r9, r7, r10
	ldr r10, [r9]
	ldr r9, [fp, #-24]
	ldr r7, [fp, #-12]
	ldr r6, =10
	mul r5, r9, r6
	add r9, r5, r7
	ldr r7, =4
	mul r6, r9, r7
	ldr r9, addr_rev_0
	add r7, r6, r9
	ldr r9, [r7]
	ldr r7, =10
	mul r6, r10, r7
	add r10, r6, r9
	ldr r9, =4
	mul r7, r10, r9
	ldr r10, addr_cap_0
	add r9, r7, r10
	add r10, fp, r9
	str r8, [r10]
	ldr r10, [fp, #-4]
	mov r0, r10
	b .Ldfs_END
.L253:
	ldr r10, [fp, #-12]
	add r9, r10, #1
	str r9, [fp, #-12]
	b .L170
.L255:
.L256:
	b .L253
.L257:
.Ldfs_END:
	add sp, sp, #24
	pop {r5, r6, r7, r8, r9, r10, fp, lr}
	bx  lr

	.global max_flow
	.type max_flow , %function
max_flow:
	push {r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L320:
	str r0, [fp, #-16]
	str r1, [fp, #-12]
	ldr r10, =0
	str r10, [fp, #-8]
	b .L324
.L324:
	ldr r10, =0
	ldr r9, =1
	cmp r10, r9
	movne r10, #1
	moveq r10, #0
	bne .L325
	b .L328
.L325:
	ldr r10, addr_used_0
	ldr r9, =0
	add r8, r9, r10
	ldr r10, =0
	ldr r9, =10
	mov r2, r9
	mov r1, r10
	mov r0, r8
	bl  my_memset
	ldr r10, [fp, #-16]
	ldr r9, [fp, #-12]
	ldr r8, =1879048192
	mov r2, r8
	mov r1, r9
	mov r0, r10
	bl  dfs
	mov r10, r0
	str r10, [fp, #-4]
	ldr r10, [fp, #-4]
	ldr r9, =0
	cmp r10, r9
	moveq r10, #1
	movne r10, #0
	beq .L339
	b .L343
.L326:
.L327:
.L328:
	b .L326
.L329:
.L339:
	ldr r10, [fp, #-8]
	mov r0, r10
	b .Lmax_flow_END
.L340:
	ldr r10, [fp, #-8]
	ldr r9, [fp, #-4]
	add r8, r10, r9
	str r8, [fp, #-8]
	b .L324
.L342:
.L343:
	b .L340
.L344:
.Lmax_flow_END:
	add sp, sp, #16
	pop {r8, r9, r10, fp, lr}
	bx  lr

	.global main
	.type main , %function
main:
	push {r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #20
.L348:
	bl  getint
	mov r10, r0
	str r10, [fp, #-20]
	bl  getint
	mov r10, r0
	str r10, [fp, #-16]
	ldr r10, addr_size_0
	ldr r9, =0
	add r8, r9, r10
	ldr r10, =0
	ldr r9, =10
	mov r2, r9
	mov r1, r10
	mov r0, r8
	bl  my_memset
	b .L356
.L356:
	ldr r10, [fp, #-16]
	ldr r9, =0
	cmp r10, r9
	movgt r10, #1
	movle r10, #0
	bgt .L357
	b .L361
.L357:
	bl  getint
	mov r10, r0
	str r10, [fp, #-12]
	bl  getint
	mov r10, r0
	str r10, [fp, #-8]
	bl  getint
	mov r10, r0
	str r10, [fp, #-4]
	ldr r10, [fp, #-12]
	ldr r9, [fp, #-8]
	ldr r8, [fp, #-4]
	mov r2, r8
	mov r1, r9
	mov r0, r10
	bl  add_node
	ldr r10, [fp, #-16]
	sub r9, r10, #1
	str r9, [fp, #-16]
	b .L356
.L358:
	ldr r10, [fp, #-20]
	ldr r9, =1
	mov r1, r10
	mov r0, r9
	bl  max_flow
	mov r10, r0
	mov r0, r10
	bl  putint
	ldr r10, =10
	mov r0, r10
	bl  putch
	ldr r10, =0
	mov r0, r10
	b .Lmain_END
.L360:
.L361:
	b .L358
.L362:
.Lmain_END:
	add sp, sp, #20
	pop {r8, r9, r10, fp, lr}
	bx  lr

addr_size_0:
	.word size
addr_to_0:
	.word to
addr_cap_0:
	.word cap
addr_rev_0:
	.word rev
addr_used_0:
	.word used
