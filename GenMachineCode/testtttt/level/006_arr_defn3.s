	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm
	.text
	.global main
	.type main , %function
main:
	push {r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #160
.L3:
	ldr r10, =0
	add r9, r10, #-160
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4
	add r9, r10, #-160
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8
	add r9, r10, #-160
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12
	add r9, r10, #-160
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16
	add r9, r10, #-160
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =20
	add r9, r10, #-160
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =24
	add r9, r10, #-160
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =28
	add r9, r10, #-160
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =0
	add r9, r10, #-128
	ldr r10, =1
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4
	add r9, r10, #-128
	ldr r10, =2
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8
	add r9, r10, #-128
	ldr r10, =3
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12
	add r9, r10, #-128
	ldr r10, =4
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16
	add r9, r10, #-128
	ldr r10, =5
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =20
	add r9, r10, #-128
	ldr r10, =6
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =24
	add r9, r10, #-128
	ldr r10, =7
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =28
	add r9, r10, #-128
	ldr r10, =8
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =0
	add r9, r10, #-96
	ldr r10, =1
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4
	add r9, r10, #-96
	ldr r10, =2
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8
	add r9, r10, #-96
	ldr r10, =3
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12
	add r9, r10, #-96
	ldr r10, =4
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16
	add r9, r10, #-96
	ldr r10, =5
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =20
	add r9, r10, #-96
	ldr r10, =6
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =24
	add r9, r10, #-96
	ldr r10, =7
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =28
	add r9, r10, #-96
	ldr r10, =8
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =0
	add r9, r10, #-64
	ldr r10, =1
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4
	add r9, r10, #-64
	ldr r10, =2
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8
	add r9, r10, #-64
	ldr r10, =3
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12
	add r9, r10, #-64
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16
	add r9, r10, #-64
	ldr r10, =5
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =20
	add r9, r10, #-64
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =24
	add r9, r10, #-64
	ldr r10, =7
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =28
	add r9, r10, #-64
	ldr r10, =8
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =2
	ldr r9, =2
	mul r8, r10, r9
	add r10, r8, #1
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-64
	add r9, fp, r10
	ldr r10, [r9]
	ldr r9, =0
	add r8, r9, #-32
	add r9, fp, r8
	str r10, [r9]
	ldr r10, =2
	ldr r9, =2
	mul r8, r10, r9
	add r10, r8, #1
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-96
	add r10, fp, r10
	ldr r9, [r10]
	ldr r10, =4
	add r8, r10, #-32
	add r10, fp, r8
	str r9, [r10]
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
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3
	ldr r9, =2
	mul r8, r10, r9
	add r10, r8, #1
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-32
	add r9, fp, r10
	ldr r10, [r9]
	ldr r9, =0
	ldr r8, =2
	mul r7, r9, r8
	add r9, r7, #0
	ldr r8, =4
	mul r7, r9, r8
	add r9, r7, #-32
	add r8, fp, r9
	ldr r9, [r8]
	add r8, r10, r9
	ldr r10, =0
	ldr r9, =2
	mul r7, r10, r9
	add r10, r7, #1
	ldr r9, =4
	mul r7, r10, r9
	add r10, r7, #-32
	add r9, fp, r10
	ldr r10, [r9]
	add r9, r8, r10
	ldr r10, =2
	ldr r8, =2
	mul r7, r10, r8
	add r10, r7, #0
	ldr r8, =4
	mul r7, r10, r8
	add r10, r7, #-160
	add r8, fp, r10
	ldr r10, [r8]
	add r8, r9, r10
	mov r0, r8
	b .Lmain_END
	b .F0
.LTORG
.F0:
.Lmain_END:
	add sp, sp, #160
	pop {r7, r8, r9, r10, fp, lr}
	bx  lr

