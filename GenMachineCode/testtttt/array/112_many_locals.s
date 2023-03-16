	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm
	.text
	.global foo
	.type foo , %function
foo:
	push {r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #136
.L45:
	ldr r10, =0
	add r9, r10, #-136
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =4
	add r9, r10, #-136
	ldr r10, =1
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =8
	add r9, r10, #-136
	ldr r10, =2
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =12
	add r9, r10, #-136
	ldr r10, =3
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =16
	add r9, r10, #-136
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =20
	add r9, r10, #-136
	ldr r10, =1
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =24
	add r9, r10, #-136
	ldr r10, =2
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =28
	add r9, r10, #-136
	ldr r10, =3
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =32
	add r9, r10, #-136
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =36
	add r9, r10, #-136
	ldr r10, =1
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =40
	add r9, r10, #-136
	ldr r10, =2
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =44
	add r9, r10, #-136
	ldr r10, =3
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =48
	add r9, r10, #-136
	ldr r10, =0
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =52
	add r9, r10, #-136
	ldr r10, =1
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =56
	add r9, r10, #-136
	ldr r10, =2
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =60
	add r9, r10, #-136
	ldr r10, =3
	add r8, fp, r9
	str r10, [r8]
	ldr r10, =3
	str r10, [fp, #-72]
	ldr r10, =7
	str r10, [fp, #-68]
	ldr r10, =5
	str r10, [fp, #-64]
	ldr r10, =6
	str r10, [fp, #-60]
	ldr r10, =1
	str r10, [fp, #-56]
	ldr r10, =0
	str r10, [fp, #-52]
	ldr r10, =3
	str r10, [fp, #-48]
	ldr r10, =5
	str r10, [fp, #-44]
	ldr r10, =4
	str r10, [fp, #-40]
	ldr r10, =2
	str r10, [fp, #-36]
	ldr r10, =7
	str r10, [fp, #-32]
	ldr r10, =9
	str r10, [fp, #-28]
	ldr r10, =8
	str r10, [fp, #-24]
	ldr r10, =1
	str r10, [fp, #-20]
	ldr r10, =4
	str r10, [fp, #-16]
	ldr r10, =6
	str r10, [fp, #-12]
	ldr r10, [fp, #-72]
	ldr r9, [fp, #-68]
	add r8, r10, r9
	ldr r10, [fp, #-64]
	add r9, r8, r10
	ldr r10, [fp, #-60]
	add r8, r9, r10
	ldr r10, [fp, #-56]
	add r9, r8, r10
	ldr r10, [fp, #-52]
	add r8, r9, r10
	ldr r10, [fp, #-48]
	add r9, r8, r10
	ldr r10, [fp, #-44]
	add r8, r9, r10
	str r8, [fp, #-8]
	ldr r10, [fp, #-40]
	ldr r9, [fp, #-36]
	add r8, r10, r9
	ldr r10, [fp, #-32]
	add r9, r8, r10
	ldr r10, [fp, #-28]
	add r8, r9, r10
	ldr r10, [fp, #-24]
	add r9, r8, r10
	ldr r10, [fp, #-20]
	add r8, r9, r10
	ldr r10, [fp, #-16]
	add r9, r8, r10
	ldr r10, [fp, #-12]
	add r8, r9, r10
	str r8, [fp, #-4]
	ldr r10, [fp, #-8]
	ldr r9, [fp, #-4]
	add r8, r10, r9
	ldr r10, [fp, #-72]
	ldr r9, =4
	mul r7, r10, r9
	add r10, r7, #-136
	add r9, fp, r10
	ldr r10, [r9]
	add r9, r8, r10
	mov r0, r9
	b .Lfoo_END
.Lfoo_END:
	add sp, sp, #136
	pop {r7, r8, r9, r10, fp, lr}
	bx  lr

	.global main
	.type main , %function
main:
	push {r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #112
.L103:
	ldr r10, =3
	str r10, [fp, #-112]
	ldr r10, =7
	str r10, [fp, #-108]
	ldr r10, =5
	str r10, [fp, #-104]
	ldr r10, =6
	str r10, [fp, #-100]
	ldr r10, =1
	str r10, [fp, #-96]
	ldr r10, =0
	str r10, [fp, #-92]
	ldr r10, =3
	str r10, [fp, #-88]
	ldr r10, =5
	str r10, [fp, #-84]
	ldr r10, =4
	str r10, [fp, #-80]
	ldr r10, =2
	str r10, [fp, #-76]
	ldr r10, =7
	str r10, [fp, #-72]
	ldr r10, =9
	str r10, [fp, #-68]
	ldr r10, =8
	str r10, [fp, #-64]
	ldr r10, =1
	str r10, [fp, #-60]
	ldr r10, =4
	str r10, [fp, #-56]
	ldr r10, =6
	str r10, [fp, #-52]
	ldr r10, [fp, #-112]
	ldr r9, [fp, #-108]
	add r8, r10, r9
	ldr r10, [fp, #-104]
	add r9, r8, r10
	ldr r10, [fp, #-100]
	add r8, r9, r10
	ldr r10, [fp, #-96]
	add r9, r8, r10
	ldr r10, [fp, #-92]
	add r8, r9, r10
	ldr r10, [fp, #-88]
	add r9, r8, r10
	ldr r10, [fp, #-84]
	add r8, r9, r10
	str r8, [fp, #-48]
	ldr r10, [fp, #-80]
	ldr r9, [fp, #-76]
	add r8, r10, r9
	ldr r10, [fp, #-72]
	add r9, r8, r10
	ldr r10, [fp, #-68]
	add r8, r9, r10
	ldr r10, [fp, #-64]
	add r9, r8, r10
	ldr r10, [fp, #-60]
	add r8, r9, r10
	ldr r10, [fp, #-56]
	add r9, r8, r10
	ldr r10, [fp, #-52]
	add r8, r9, r10
	str r8, [fp, #-44]
	ldr r10, [fp, #-48]
	bl  foo
	mov r9, r0
	add r8, r10, r9
	str r8, [fp, #-48]
	ldr r10, =4
	str r10, [fp, #-40]
	ldr r10, =7
	str r10, [fp, #-36]
	ldr r10, =2
	str r10, [fp, #-32]
	ldr r10, =5
	str r10, [fp, #-28]
	ldr r10, =8
	str r10, [fp, #-24]
	ldr r10, =0
	str r10, [fp, #-20]
	ldr r10, =6
	str r10, [fp, #-16]
	ldr r10, =3
	str r10, [fp, #-12]
	ldr r10, [fp, #-44]
	bl  foo
	mov r9, r0
	add r8, r10, r9
	str r8, [fp, #-44]
	ldr r10, [fp, #-80]
	str r10, [fp, #-112]
	ldr r10, [fp, #-76]
	str r10, [fp, #-108]
	ldr r10, [fp, #-72]
	str r10, [fp, #-104]
	ldr r10, [fp, #-68]
	str r10, [fp, #-100]
	ldr r10, [fp, #-64]
	str r10, [fp, #-96]
	ldr r10, [fp, #-60]
	str r10, [fp, #-92]
	ldr r10, [fp, #-56]
	str r10, [fp, #-88]
	ldr r10, [fp, #-52]
	str r10, [fp, #-84]
	ldr r10, [fp, #-40]
	ldr r9, [fp, #-36]
	add r8, r10, r9
	ldr r10, [fp, #-32]
	add r9, r8, r10
	ldr r10, [fp, #-28]
	add r8, r9, r10
	ldr r10, [fp, #-24]
	add r9, r8, r10
	ldr r10, [fp, #-20]
	add r8, r9, r10
	ldr r10, [fp, #-16]
	add r9, r8, r10
	ldr r10, [fp, #-12]
	add r8, r9, r10
	str r8, [fp, #-8]
	ldr r10, [fp, #-48]
	ldr r9, [fp, #-44]
	add r8, r10, r9
	ldr r10, [fp, #-8]
	add r9, r8, r10
	str r9, [fp, #-4]
	ldr r10, [fp, #-4]
	mov r0, r10
	bl  putint
	ldr r10, =10
	mov r0, r10
	bl  putch
	ldr r10, =0
	mov r0, r10
	b .Lmain_END
.Lmain_END:
	add sp, sp, #112
	pop {r8, r9, r10, fp, lr}
	bx  lr

