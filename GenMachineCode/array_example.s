	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global main
	.type main , %function
main:
	push {r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #64
.L1:
	ldr r10, =0
	add r9, r10, #-64
	ldr r10, =0
	add r8, fp, r9//fp-64+0:a[0][0]
	str r10, [r8]
	ldr r10, =4
	add r9, r10, #-64
	ldr r10, =0
	add r8, fp, r9//fp-64+4:a[0][1]
	str r10, [r8]
	ldr r10, =8
	add r9, r10, #-64
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12
	add r9, r10, #-64
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16
	add r9, r10, #-64
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =20
	add r9, r10, #-64
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =24
	add r9, r10, #-64
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =28
	add r9, r10, #-64
	ldr r10, =0
	add r8, fp, r9//fp-64+28:a[4][2]
	str r10, [r8]

	ldr r10, =0
	add r9, r10, #-32
	ldr r10, =1
	add r8, fp, r9//fp-32+0:b[0][0]
	str r10, [r8]
	ldr r10, =4
	add r9, r10, #-32
	ldr r10, =2
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8
	add r9, r10, #-32
	ldr r10, =3
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12
	add r9, r10, #-32
	ldr r10, =4
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16
	add r9, r10, #-32
	ldr r10, =5
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =20
	add r9, r10, #-32
	ldr r10, =6
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =24
	add r9, r10, #-32
	ldr r10, =7
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =28
	add r9, r10, #-32
	ldr r10, =8
	add r8, fp, r9//fp-32+28:b[4][2]
	str r10, [r8]
b[3][1]: 3*2+1
	ldr r10, =3//取 一维 的 索引
	ldr r9, =2//取 二维 的 维度
	mul r8, r10, r9 //3*2
	add r10, r8, #1 //3*2+1
	ldr r9, =4
	mul r8, r10, r9 //相对偏移*4
	add r10, r8, #-32 //+基址偏移
	add r10, fp, r10 //+栈帧
	ldr r9, [r10] 
	ldr r10, =2
	ldr r8, =2
	mul r7, r10, r8
	add r10, r7, #0
	ldr r8, =4
	mul r7, r10, r8
	add r10, r7, #-64
	add r10, fp, r10
	ldr r8, [r10]
	add r10, r9, r8
	mov r0, r10
	b .Lmain_END
.Lmain_END:
	add sp, sp, #64
	pop {r7, r8, r9, r10, fp, lr}
	bx lr

