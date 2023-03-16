	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm
	.data
	.global a1
	.align 4
	.size a1, 4
a1:
	.word 1
	.global a2
	.align 4
	.size a2, 4
a2:
	.word 2
	.global a3
	.align 4
	.size a3, 4
a3:
	.word 3
	.global a4
	.align 4
	.size a4, 4
a4:
	.word 4
	.global a5
	.align 4
	.size a5, 4
a5:
	.word 5
	.global a6
	.align 4
	.size a6, 4
a6:
	.word 6
	.global a7
	.align 4
	.size a7, 4
a7:
	.word 7
	.global a8
	.align 4
	.size a8, 4
a8:
	.word 8
	.global a9
	.align 4
	.size a9, 4
a9:
	.word 9
	.global a10
	.align 4
	.size a10, 4
a10:
	.word 10
	.global a11
	.align 4
	.size a11, 4
a11:
	.word 11
	.global a12
	.align 4
	.size a12, 4
a12:
	.word 12
	.global a13
	.align 4
	.size a13, 4
a13:
	.word 13
	.global a14
	.align 4
	.size a14, 4
a14:
	.word 14
	.global a15
	.align 4
	.size a15, 4
a15:
	.word 15
	.global a16
	.align 4
	.size a16, 4
a16:
	.word 16
	.global a17
	.align 4
	.size a17, 4
a17:
	.word 1
	.global a18
	.align 4
	.size a18, 4
a18:
	.word 2
	.global a19
	.align 4
	.size a19, 4
a19:
	.word 3
	.global a20
	.align 4
	.size a20, 4
a20:
	.word 4
	.global a21
	.align 4
	.size a21, 4
a21:
	.word 5
	.global a22
	.align 4
	.size a22, 4
a22:
	.word 6
	.global a23
	.align 4
	.size a23, 4
a23:
	.word 7
	.global a24
	.align 4
	.size a24, 4
a24:
	.word 8
	.global a25
	.align 4
	.size a25, 4
a25:
	.word 9
	.global a26
	.align 4
	.size a26, 4
a26:
	.word 10
	.global a27
	.align 4
	.size a27, 4
a27:
	.word 11
	.global a28
	.align 4
	.size a28, 4
a28:
	.word 12
	.global a29
	.align 4
	.size a29, 4
a29:
	.word 13
	.global a30
	.align 4
	.size a30, 4
a30:
	.word 14
	.global a31
	.align 4
	.size a31, 4
a31:
	.word 15
	.global a32
	.align 4
	.size a32, 4
a32:
	.word 16
	.text
	.global func
	.type func , %function
func:
	push {r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #156
.L216:
	str r0, [fp, #-156]
	str r1, [fp, #-152]
	ldr r10, [fp, #-156]
	ldr r9, [fp, #-152]
	add r8, r10, r9
	str r8, [fp, #-148]
	bl  getint
	mov r10, r0
	str r10, [fp, #-144]
	bl  getint
	mov r10, r0
	str r10, [fp, #-140]
	bl  getint
	mov r10, r0
	str r10, [fp, #-136]
	bl  getint
	mov r10, r0
	str r10, [fp, #-132]
	ldr r10, [fp, #-144]
	ldr r9, =1
	add r8, r9, r10
	ldr r10, addr_a1_0
	ldr r9, [r10]
	add r10, r8, r9
	str r10, [fp, #-128]
	ldr r10, [fp, #-140]
	ldr r9, =2
	add r8, r9, r10
	ldr r10, addr_a2_0
	ldr r9, [r10]
	add r10, r8, r9
	str r10, [fp, #-124]
	ldr r10, [fp, #-136]
	ldr r9, =3
	add r8, r9, r10
	ldr r10, addr_a3_0
	ldr r9, [r10]
	add r10, r8, r9
	str r10, [fp, #-120]
	ldr r10, [fp, #-132]
	ldr r9, =4
	add r8, r9, r10
	ldr r10, addr_a4_0
	ldr r9, [r10]
	add r10, r8, r9
	str r10, [fp, #-116]
	ldr r10, [fp, #-128]
	ldr r9, =1
	add r8, r9, r10
	ldr r10, addr_a5_0
	ldr r9, [r10]
	add r10, r8, r9
	str r10, [fp, #-112]
	ldr r10, [fp, #-124]
	ldr r9, =2
	add r8, r9, r10
	ldr r10, addr_a6_0
	ldr r9, [r10]
	add r10, r8, r9
	str r10, [fp, #-108]
	ldr r10, [fp, #-120]
	ldr r9, =3
	add r8, r9, r10
	ldr r10, addr_a7_0
	ldr r9, [r10]
	add r10, r8, r9
	str r10, [fp, #-104]
	ldr r10, [fp, #-116]
	ldr r9, =4
	add r8, r9, r10
	ldr r10, addr_a8_0
	ldr r9, [r10]
	add r10, r8, r9
	str r10, [fp, #-100]
	ldr r10, [fp, #-112]
	ldr r9, =1
	add r8, r9, r10
	ldr r10, addr_a9_0
	ldr r9, [r10]
	add r10, r8, r9
	str r10, [fp, #-96]
	ldr r10, [fp, #-108]
	ldr r9, =2
	add r8, r9, r10
	ldr r10, addr_a10_0
	ldr r9, [r10]
	add r10, r8, r9
	str r10, [fp, #-92]
	ldr r10, [fp, #-104]
	ldr r9, =3
	add r8, r9, r10
	ldr r10, addr_a11_0
	ldr r9, [r10]
	add r10, r8, r9
	str r10, [fp, #-88]
	ldr r10, [fp, #-100]
	ldr r9, =4
	add r8, r9, r10
	ldr r10, addr_a12_0
	ldr r9, [r10]
	add r10, r8, r9
	str r10, [fp, #-84]
	ldr r10, [fp, #-96]
	ldr r9, =1
	add r8, r9, r10
	ldr r10, addr_a13_0
	ldr r9, [r10]
	add r10, r8, r9
	str r10, [fp, #-80]
	ldr r10, [fp, #-92]
	ldr r9, =2
	add r8, r9, r10
	ldr r10, addr_a14_0
	ldr r9, [r10]
	add r10, r8, r9
	str r10, [fp, #-76]
	ldr r10, [fp, #-88]
	ldr r9, =3
	add r8, r9, r10
	ldr r10, addr_a15_0
	ldr r9, [r10]
	add r10, r8, r9
	str r10, [fp, #-72]
	ldr r10, [fp, #-84]
	ldr r9, =4
	add r8, r9, r10
	ldr r10, addr_a16_0
	ldr r9, [r10]
	add r10, r8, r9
	str r10, [fp, #-68]
	ldr r10, [fp, #-80]
	ldr r9, =1
	add r8, r9, r10
	ldr r10, addr_a17_0
	ldr r9, [r10]
	add r10, r8, r9
	str r10, [fp, #-64]
	ldr r10, [fp, #-76]
	ldr r9, =2
	add r8, r9, r10
	ldr r10, addr_a18_0
	ldr r9, [r10]
	add r10, r8, r9
	str r10, [fp, #-60]
	ldr r10, [fp, #-72]
	ldr r9, =3
	add r8, r9, r10
	ldr r10, addr_a19_0
	ldr r9, [r10]
	add r10, r8, r9
	str r10, [fp, #-56]
	ldr r10, [fp, #-68]
	ldr r9, =4
	add r8, r9, r10
	ldr r10, addr_a20_0
	ldr r9, [r10]
	add r10, r8, r9
	str r10, [fp, #-52]
	ldr r10, [fp, #-64]
	ldr r9, =1
	add r8, r9, r10
	ldr r10, addr_a21_0
	ldr r9, [r10]
	add r10, r8, r9
	str r10, [fp, #-48]
	ldr r10, [fp, #-60]
	ldr r9, =2
	add r8, r9, r10
	ldr r10, addr_a22_0
	ldr r9, [r10]
	add r10, r8, r9
	str r10, [fp, #-44]
	ldr r10, [fp, #-56]
	ldr r9, =3
	add r8, r9, r10
	ldr r10, addr_a23_0
	ldr r9, [r10]
	add r10, r8, r9
	str r10, [fp, #-40]
	ldr r10, [fp, #-52]
	ldr r9, =4
	add r8, r9, r10
	ldr r10, addr_a24_0
	ldr r9, [r10]
	add r10, r8, r9
	str r10, [fp, #-36]
	ldr r10, [fp, #-48]
	ldr r9, =1
	add r8, r9, r10
	ldr r10, addr_a25_0
	ldr r9, [r10]
	add r10, r8, r9
	str r10, [fp, #-32]
	ldr r10, [fp, #-44]
	ldr r9, =2
	add r8, r9, r10
	ldr r10, addr_a26_0
	ldr r9, [r10]
	add r10, r8, r9
	str r10, [fp, #-28]
	ldr r10, [fp, #-40]
	ldr r9, =3
	add r8, r9, r10
	ldr r10, addr_a27_0
	ldr r9, [r10]
	add r10, r8, r9
	str r10, [fp, #-24]
	ldr r10, [fp, #-36]
	ldr r9, =4
	add r8, r9, r10
	ldr r10, addr_a28_0
	ldr r9, [r10]
	add r10, r8, r9
	str r10, [fp, #-20]
	ldr r10, [fp, #-32]
	ldr r9, =1
	add r8, r9, r10
	ldr r10, addr_a29_0
	ldr r9, [r10]
	add r10, r8, r9
	str r10, [fp, #-16]
	ldr r10, [fp, #-28]
	ldr r9, =2
	add r8, r9, r10
	ldr r10, addr_a30_0
	ldr r9, [r10]
	add r10, r8, r9
	str r10, [fp, #-12]
	ldr r10, [fp, #-24]
	ldr r9, =3
	add r8, r9, r10
	ldr r10, addr_a31_0
	ldr r9, [r10]
	add r10, r8, r9
	str r10, [fp, #-8]
	ldr r10, [fp, #-20]
	ldr r9, =4
	add r8, r9, r10
	ldr r10, addr_a32_0
	ldr r9, [r10]
	add r10, r8, r9
	str r10, [fp, #-4]
	ldr r10, [fp, #-156]
	ldr r9, [fp, #-152]
	sub r8, r10, r9
	add r10, r8, #10
	str r10, [fp, #-148]
	ldr r10, [fp, #-32]
	ldr r9, =1
	add r8, r9, r10
	ldr r10, addr_a29_0
	ldr r9, [r10]
	add r10, r8, r9
	str r10, [fp, #-16]
	ldr r10, [fp, #-28]
	ldr r9, =2
	add r8, r9, r10
	ldr r10, addr_a30_0
	ldr r9, [r10]
	add r10, r8, r9
	str r10, [fp, #-12]
	ldr r10, [fp, #-24]
	ldr r9, =3
	add r8, r9, r10
	ldr r10, addr_a31_0
	ldr r9, [r10]
	add r10, r8, r9
	str r10, [fp, #-8]
	ldr r10, [fp, #-20]
	ldr r9, =4
	add r8, r9, r10
	ldr r10, addr_a32_0
	ldr r9, [r10]
	add r10, r8, r9
	str r10, [fp, #-4]
	ldr r10, [fp, #-48]
	ldr r9, =1
	add r8, r9, r10
	ldr r10, addr_a25_0
	ldr r9, [r10]
	add r10, r8, r9
	str r10, [fp, #-32]
	ldr r10, [fp, #-44]
	ldr r9, =2
	add r8, r9, r10
	ldr r10, addr_a26_0
	ldr r9, [r10]
	add r10, r8, r9
	str r10, [fp, #-28]
	ldr r10, [fp, #-40]
	ldr r9, =3
	add r8, r9, r10
	ldr r10, addr_a27_0
	ldr r9, [r10]
	add r10, r8, r9
	str r10, [fp, #-24]
	ldr r10, [fp, #-36]
	ldr r9, =4
	add r8, r9, r10
	ldr r10, addr_a28_0
	ldr r9, [r10]
	add r10, r8, r9
	str r10, [fp, #-20]
	ldr r10, [fp, #-64]
	ldr r9, =1
	add r8, r9, r10
	ldr r10, addr_a21_0
	ldr r9, [r10]
	add r10, r8, r9
	str r10, [fp, #-48]
	ldr r10, [fp, #-60]
	ldr r9, =2
	add r8, r9, r10
	ldr r10, addr_a22_0
	ldr r9, [r10]
	add r10, r8, r9
	str r10, [fp, #-44]
	ldr r10, [fp, #-56]
	ldr r9, =3
	add r8, r9, r10
	ldr r10, addr_a23_0
	ldr r9, [r10]
	add r10, r8, r9
	str r10, [fp, #-40]
	ldr r10, [fp, #-52]
	ldr r9, =4
	add r8, r9, r10
	ldr r10, addr_a24_0
	ldr r9, [r10]
	add r10, r8, r9
	str r10, [fp, #-36]
	ldr r10, [fp, #-80]
	ldr r9, =1
	add r8, r9, r10
	ldr r10, addr_a17_0
	ldr r9, [r10]
	add r10, r8, r9
	str r10, [fp, #-64]
	ldr r10, [fp, #-76]
	ldr r9, =2
	add r8, r9, r10
	ldr r10, addr_a18_0
	ldr r9, [r10]
	add r10, r8, r9
	str r10, [fp, #-60]
	ldr r10, [fp, #-72]
	ldr r9, =3
	add r8, r9, r10
	ldr r10, addr_a19_0
	ldr r9, [r10]
	add r10, r8, r9
	str r10, [fp, #-56]
	ldr r10, [fp, #-68]
	ldr r9, =4
	add r8, r9, r10
	ldr r10, addr_a20_0
	ldr r9, [r10]
	add r10, r8, r9
	str r10, [fp, #-52]
	ldr r10, [fp, #-96]
	ldr r9, =1
	add r8, r9, r10
	ldr r10, addr_a13_0
	ldr r9, [r10]
	add r10, r8, r9
	str r10, [fp, #-80]
	ldr r10, [fp, #-92]
	ldr r9, =2
	add r8, r9, r10
	ldr r10, addr_a14_0
	ldr r9, [r10]
	add r10, r8, r9
	str r10, [fp, #-76]
	ldr r10, [fp, #-88]
	ldr r9, =3
	add r8, r9, r10
	ldr r10, addr_a15_0
	ldr r9, [r10]
	add r10, r8, r9
	str r10, [fp, #-72]
	ldr r10, [fp, #-84]
	ldr r9, =4
	add r8, r9, r10
	ldr r10, addr_a16_0
	ldr r9, [r10]
	add r10, r8, r9
	str r10, [fp, #-68]
	ldr r10, [fp, #-112]
	ldr r9, =1
	add r8, r9, r10
	ldr r10, addr_a9_0
	ldr r9, [r10]
	add r10, r8, r9
	str r10, [fp, #-96]
	ldr r10, [fp, #-108]
	ldr r9, =2
	add r8, r9, r10
	ldr r10, addr_a10_0
	ldr r9, [r10]
	add r10, r8, r9
	str r10, [fp, #-92]
	ldr r10, [fp, #-104]
	ldr r9, =3
	add r8, r9, r10
	ldr r10, addr_a11_0
	ldr r9, [r10]
	add r10, r8, r9
	str r10, [fp, #-88]
	ldr r10, [fp, #-100]
	ldr r9, =4
	add r8, r9, r10
	ldr r10, addr_a12_0
	ldr r9, [r10]
	add r10, r8, r9
	str r10, [fp, #-84]
	ldr r10, [fp, #-128]
	ldr r9, =1
	add r8, r9, r10
	ldr r10, addr_a5_0
	ldr r9, [r10]
	add r10, r8, r9
	str r10, [fp, #-112]
	ldr r10, [fp, #-124]
	ldr r9, =2
	add r8, r9, r10
	ldr r10, addr_a6_0
	ldr r9, [r10]
	add r10, r8, r9
	str r10, [fp, #-108]
	ldr r10, [fp, #-120]
	ldr r9, =3
	add r8, r9, r10
	ldr r10, addr_a7_0
	ldr r9, [r10]
	add r10, r8, r9
	str r10, [fp, #-104]
	ldr r10, [fp, #-116]
	ldr r9, =4
	add r8, r9, r10
	ldr r10, addr_a8_0
	ldr r9, [r10]
	add r10, r8, r9
	str r10, [fp, #-100]
	ldr r10, [fp, #-144]
	ldr r9, =1
	add r8, r9, r10
	ldr r10, addr_a1_0
	ldr r9, [r10]
	add r10, r8, r9
	str r10, [fp, #-128]
	ldr r10, [fp, #-140]
	ldr r9, =2
	add r8, r9, r10
	ldr r10, addr_a2_0
	ldr r9, [r10]
	add r10, r8, r9
	str r10, [fp, #-124]
	ldr r10, [fp, #-136]
	ldr r9, =3
	add r8, r9, r10
	ldr r10, addr_a3_0
	ldr r9, [r10]
	add r10, r8, r9
	str r10, [fp, #-120]
	ldr r10, [fp, #-132]
	ldr r9, =4
	add r8, r9, r10
	ldr r10, addr_a4_0
	ldr r9, [r10]
	add r10, r8, r9
	str r10, [fp, #-116]
	ldr r10, [fp, #-144]
	ldr r9, =1
	add r8, r9, r10
	ldr r10, addr_a1_0
	ldr r9, [r10]
	add r10, r8, r9
	str r10, [fp, #-128]
	ldr r10, [fp, #-140]
	ldr r9, =2
	add r8, r9, r10
	ldr r10, addr_a2_0
	ldr r9, [r10]
	add r10, r8, r9
	str r10, [fp, #-124]
	ldr r10, [fp, #-136]
	ldr r9, =3
	add r8, r9, r10
	ldr r10, addr_a3_0
	ldr r9, [r10]
	add r10, r8, r9
	str r10, [fp, #-120]
	ldr r10, [fp, #-132]
	ldr r9, =4
	add r8, r9, r10
	ldr r10, addr_a4_0
	ldr r9, [r10]
	add r10, r8, r9
	str r10, [fp, #-116]
	ldr r10, [fp, #-148]
	ldr r9, [fp, #-144]
	add r8, r10, r9
	ldr r10, [fp, #-140]
	add r9, r8, r10
	ldr r10, [fp, #-136]
	add r8, r9, r10
	ldr r10, [fp, #-132]
	add r9, r8, r10
	ldr r10, [fp, #-128]
	sub r8, r9, r10
	ldr r10, [fp, #-124]
	sub r9, r8, r10
	ldr r10, [fp, #-120]
	sub r8, r9, r10
	ldr r10, [fp, #-116]
	sub r9, r8, r10
	ldr r10, [fp, #-112]
	add r8, r9, r10
	ldr r10, [fp, #-108]
	add r9, r8, r10
	ldr r10, [fp, #-104]
	add r8, r9, r10
	ldr r10, [fp, #-100]
	add r9, r8, r10
	ldr r10, [fp, #-96]
	sub r8, r9, r10
	ldr r10, [fp, #-92]
	sub r9, r8, r10
	ldr r10, [fp, #-88]
	sub r8, r9, r10
	ldr r10, [fp, #-84]
	sub r9, r8, r10
	ldr r10, [fp, #-80]
	add r8, r9, r10
	ldr r10, [fp, #-76]
	add r9, r8, r10
	ldr r10, [fp, #-72]
	add r8, r9, r10
	ldr r10, [fp, #-68]
	add r9, r8, r10
	ldr r10, [fp, #-64]
	sub r8, r9, r10
	ldr r10, [fp, #-60]
	sub r9, r8, r10
	ldr r10, [fp, #-56]
	sub r8, r9, r10
	ldr r10, [fp, #-52]
	sub r9, r8, r10
	ldr r10, [fp, #-48]
	add r8, r9, r10
	ldr r10, [fp, #-44]
	add r9, r8, r10
	ldr r10, [fp, #-40]
	add r8, r9, r10
	ldr r10, [fp, #-36]
	add r9, r8, r10
	ldr r10, [fp, #-32]
	sub r8, r9, r10
	ldr r10, [fp, #-28]
	sub r9, r8, r10
	ldr r10, [fp, #-24]
	sub r8, r9, r10
	ldr r10, [fp, #-20]
	sub r9, r8, r10
	ldr r10, [fp, #-16]
	add r8, r9, r10
	ldr r10, [fp, #-12]
	add r9, r8, r10
	ldr r10, [fp, #-8]
	add r8, r9, r10
	ldr r10, [fp, #-4]
	add r9, r8, r10
	ldr r10, addr_a1_0
	ldr r8, [r10]
	add r10, r9, r8
	ldr r9, addr_a2_0
	ldr r8, [r9]
	sub r9, r10, r8
	ldr r10, addr_a3_0
	ldr r8, [r10]
	add r10, r9, r8
	ldr r9, addr_a4_0
	ldr r8, [r9]
	sub r9, r10, r8
	ldr r10, addr_a5_0
	ldr r8, [r10]
	add r10, r9, r8
	ldr r9, addr_a6_0
	ldr r8, [r9]
	sub r9, r10, r8
	ldr r10, addr_a7_0
	ldr r8, [r10]
	add r10, r9, r8
	ldr r9, addr_a8_0
	ldr r8, [r9]
	sub r9, r10, r8
	ldr r10, addr_a9_0
	ldr r8, [r10]
	add r10, r9, r8
	ldr r9, addr_a10_0
	ldr r8, [r9]
	sub r9, r10, r8
	ldr r10, addr_a11_0
	ldr r8, [r10]
	add r10, r9, r8
	ldr r9, addr_a12_0
	ldr r8, [r9]
	sub r9, r10, r8
	ldr r10, addr_a13_0
	ldr r8, [r10]
	add r10, r9, r8
	ldr r9, addr_a14_0
	ldr r8, [r9]
	sub r9, r10, r8
	ldr r10, addr_a15_0
	ldr r8, [r10]
	add r10, r9, r8
	ldr r9, addr_a16_0
	ldr r8, [r9]
	sub r9, r10, r8
	ldr r10, addr_a17_0
	ldr r8, [r10]
	add r10, r9, r8
	ldr r9, addr_a18_0
	ldr r8, [r9]
	sub r9, r10, r8
	ldr r10, addr_a19_0
	ldr r8, [r10]
	add r10, r9, r8
	ldr r9, addr_a20_0
	ldr r8, [r9]
	sub r9, r10, r8
	ldr r10, addr_a21_0
	ldr r8, [r10]
	add r10, r9, r8
	ldr r9, addr_a22_0
	ldr r8, [r9]
	sub r9, r10, r8
	ldr r10, addr_a23_0
	ldr r8, [r10]
	add r10, r9, r8
	ldr r9, addr_a24_0
	ldr r8, [r9]
	sub r9, r10, r8
	ldr r10, addr_a25_0
	ldr r8, [r10]
	add r10, r9, r8
	ldr r9, addr_a26_0
	ldr r8, [r9]
	sub r9, r10, r8
	ldr r10, addr_a27_0
	ldr r8, [r10]
	add r10, r9, r8
	ldr r9, addr_a28_0
	ldr r8, [r9]
	sub r9, r10, r8
	ldr r10, addr_a29_0
	ldr r8, [r10]
	add r10, r9, r8
	ldr r9, addr_a30_0
	ldr r8, [r9]
	sub r9, r10, r8
	ldr r10, addr_a31_0
	ldr r8, [r10]
	add r10, r9, r8
	ldr r9, addr_a32_0
	ldr r8, [r9]
	sub r9, r10, r8
	mov r0, r9
	b .Lfunc_END
	b .F0
.LTORG
addr_a1_0:
	.word a1
addr_a2_0:
	.word a2
addr_a3_0:
	.word a3
addr_a4_0:
	.word a4
addr_a5_0:
	.word a5
addr_a6_0:
	.word a6
addr_a7_0:
	.word a7
addr_a8_0:
	.word a8
addr_a9_0:
	.word a9
addr_a10_0:
	.word a10
addr_a11_0:
	.word a11
addr_a12_0:
	.word a12
addr_a13_0:
	.word a13
addr_a14_0:
	.word a14
addr_a15_0:
	.word a15
addr_a16_0:
	.word a16
addr_a17_0:
	.word a17
addr_a18_0:
	.word a18
addr_a19_0:
	.word a19
addr_a20_0:
	.word a20
addr_a21_0:
	.word a21
addr_a22_0:
	.word a22
addr_a23_0:
	.word a23
addr_a24_0:
	.word a24
addr_a25_0:
	.word a25
addr_a26_0:
	.word a26
addr_a27_0:
	.word a27
addr_a28_0:
	.word a28
addr_a29_0:
	.word a29
addr_a30_0:
	.word a30
addr_a31_0:
	.word a31
addr_a32_0:
	.word a32
.F0:
.Lfunc_END:
	add sp, sp, #156
	pop {r8, r9, r10, fp, lr}
	bx  lr

	.global main
	.type main , %function
main:
	push {r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L465:
	bl  getint
	mov r10, r0
	str r10, [fp, #-8]
	ldr r10, [fp, #-8]
	add r9, r10, #18
	str r9, [fp, #-4]
	ldr r10, [fp, #-8]
	ldr r9, [fp, #-4]
	mov r1, r9
	mov r0, r10
	bl  func
	mov r10, r0
	str r10, [fp, #-8]
	ldr r10, [fp, #-8]
	mov r0, r10
	bl  putint
	ldr r10, [fp, #-8]
	mov r0, r10
	b .Lmain_END
.Lmain_END:
	add sp, sp, #8
	pop {r9, r10, fp, lr}
	bx  lr

addr_a1_1:
	.word a1
addr_a2_1:
	.word a2
addr_a3_1:
	.word a3
addr_a4_1:
	.word a4
addr_a5_1:
	.word a5
addr_a6_1:
	.word a6
addr_a7_1:
	.word a7
addr_a8_1:
	.word a8
addr_a9_1:
	.word a9
addr_a10_1:
	.word a10
addr_a11_1:
	.word a11
addr_a12_1:
	.word a12
addr_a13_1:
	.word a13
addr_a14_1:
	.word a14
addr_a15_1:
	.word a15
addr_a16_1:
	.word a16
addr_a17_1:
	.word a17
addr_a18_1:
	.word a18
addr_a19_1:
	.word a19
addr_a20_1:
	.word a20
addr_a21_1:
	.word a21
addr_a22_1:
	.word a22
addr_a23_1:
	.word a23
addr_a24_1:
	.word a24
addr_a25_1:
	.word a25
addr_a26_1:
	.word a26
addr_a27_1:
	.word a27
addr_a28_1:
	.word a28
addr_a29_1:
	.word a29
addr_a30_1:
	.word a30
addr_a31_1:
	.word a31
addr_a32_1:
	.word a32
