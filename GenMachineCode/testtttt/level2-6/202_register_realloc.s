	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm
	.text
	.global func
	.type func , %function
func:
	push {r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #156
.L110:
	str r0, [fp, #-156]
	str r1, [fp, #-152]
	ldr r10, [fp, #-156]
	ldr r9, [fp, #-152]
	add r8, r10, r9
	str r8, [fp, #-148]
	ldr r10, =1
	str r10, [fp, #-144]
	ldr r10, =2
	str r10, [fp, #-140]
	ldr r10, =3
	str r10, [fp, #-136]
	ldr r10, =4
	str r10, [fp, #-132]
	ldr r10, [fp, #-144]
	ldr r9, =1
	add r8, r9, r10
	str r8, [fp, #-128]
	ldr r10, [fp, #-140]
	ldr r9, =2
	add r8, r9, r10
	str r8, [fp, #-124]
	ldr r10, [fp, #-136]
	ldr r9, =3
	add r8, r9, r10
	str r8, [fp, #-120]
	ldr r10, [fp, #-132]
	ldr r9, =4
	add r8, r9, r10
	str r8, [fp, #-116]
	ldr r10, [fp, #-128]
	ldr r9, =1
	add r8, r9, r10
	str r8, [fp, #-112]
	ldr r10, [fp, #-124]
	ldr r9, =2
	add r8, r9, r10
	str r8, [fp, #-108]
	ldr r10, [fp, #-120]
	ldr r9, =3
	add r8, r9, r10
	str r8, [fp, #-104]
	ldr r10, [fp, #-116]
	ldr r9, =4
	add r8, r9, r10
	str r8, [fp, #-100]
	ldr r10, [fp, #-112]
	ldr r9, =1
	add r8, r9, r10
	str r8, [fp, #-96]
	ldr r10, [fp, #-108]
	ldr r9, =2
	add r8, r9, r10
	str r8, [fp, #-92]
	ldr r10, [fp, #-104]
	ldr r9, =3
	add r8, r9, r10
	str r8, [fp, #-88]
	ldr r10, [fp, #-100]
	ldr r9, =4
	add r8, r9, r10
	str r8, [fp, #-84]
	ldr r10, [fp, #-96]
	ldr r9, =1
	add r8, r9, r10
	str r8, [fp, #-80]
	ldr r10, [fp, #-92]
	ldr r9, =2
	add r8, r9, r10
	str r8, [fp, #-76]
	ldr r10, [fp, #-88]
	ldr r9, =3
	add r8, r9, r10
	str r8, [fp, #-72]
	ldr r10, [fp, #-84]
	ldr r9, =4
	add r8, r9, r10
	str r8, [fp, #-68]
	ldr r10, [fp, #-80]
	ldr r9, =1
	add r8, r9, r10
	str r8, [fp, #-64]
	ldr r10, [fp, #-76]
	ldr r9, =2
	add r8, r9, r10
	str r8, [fp, #-60]
	ldr r10, [fp, #-72]
	ldr r9, =3
	add r8, r9, r10
	str r8, [fp, #-56]
	ldr r10, [fp, #-68]
	ldr r9, =4
	add r8, r9, r10
	str r8, [fp, #-52]
	ldr r10, [fp, #-64]
	ldr r9, =1
	add r8, r9, r10
	str r8, [fp, #-48]
	ldr r10, [fp, #-60]
	ldr r9, =2
	add r8, r9, r10
	str r8, [fp, #-44]
	ldr r10, [fp, #-56]
	ldr r9, =3
	add r8, r9, r10
	str r8, [fp, #-40]
	ldr r10, [fp, #-52]
	ldr r9, =4
	add r8, r9, r10
	str r8, [fp, #-36]
	ldr r10, [fp, #-48]
	ldr r9, =1
	add r8, r9, r10
	str r8, [fp, #-32]
	ldr r10, [fp, #-44]
	ldr r9, =2
	add r8, r9, r10
	str r8, [fp, #-28]
	ldr r10, [fp, #-40]
	ldr r9, =3
	add r8, r9, r10
	str r8, [fp, #-24]
	ldr r10, [fp, #-36]
	ldr r9, =4
	add r8, r9, r10
	str r8, [fp, #-20]
	ldr r10, [fp, #-32]
	ldr r9, =1
	add r8, r9, r10
	str r8, [fp, #-16]
	ldr r10, [fp, #-28]
	ldr r9, =2
	add r8, r9, r10
	str r8, [fp, #-12]
	ldr r10, [fp, #-24]
	ldr r9, =3
	add r8, r9, r10
	str r8, [fp, #-8]
	ldr r10, [fp, #-20]
	ldr r9, =4
	add r8, r9, r10
	str r8, [fp, #-4]
	ldr r10, [fp, #-156]
	ldr r9, [fp, #-152]
	sub r8, r10, r9
	add r10, r8, #10
	str r10, [fp, #-148]
	ldr r10, [fp, #-32]
	ldr r9, =1
	add r8, r9, r10
	str r8, [fp, #-16]
	ldr r10, [fp, #-28]
	ldr r9, =2
	add r8, r9, r10
	str r8, [fp, #-12]
	ldr r10, [fp, #-24]
	ldr r9, =3
	add r8, r9, r10
	str r8, [fp, #-8]
	ldr r10, [fp, #-20]
	ldr r9, =4
	add r8, r9, r10
	str r8, [fp, #-4]
	ldr r10, [fp, #-48]
	ldr r9, =1
	add r8, r9, r10
	str r8, [fp, #-32]
	ldr r10, [fp, #-44]
	ldr r9, =2
	add r8, r9, r10
	str r8, [fp, #-28]
	ldr r10, [fp, #-40]
	ldr r9, =3
	add r8, r9, r10
	str r8, [fp, #-24]
	ldr r10, [fp, #-36]
	ldr r9, =4
	add r8, r9, r10
	str r8, [fp, #-20]
	ldr r10, [fp, #-64]
	ldr r9, =1
	add r8, r9, r10
	str r8, [fp, #-48]
	ldr r10, [fp, #-60]
	ldr r9, =2
	add r8, r9, r10
	str r8, [fp, #-44]
	ldr r10, [fp, #-56]
	ldr r9, =3
	add r8, r9, r10
	str r8, [fp, #-40]
	ldr r10, [fp, #-52]
	ldr r9, =4
	add r8, r9, r10
	str r8, [fp, #-36]
	ldr r10, [fp, #-80]
	ldr r9, =1
	add r8, r9, r10
	str r8, [fp, #-64]
	ldr r10, [fp, #-76]
	ldr r9, =2
	add r8, r9, r10
	str r8, [fp, #-60]
	ldr r10, [fp, #-72]
	ldr r9, =3
	add r8, r9, r10
	str r8, [fp, #-56]
	ldr r10, [fp, #-68]
	ldr r9, =4
	add r8, r9, r10
	str r8, [fp, #-52]
	ldr r10, [fp, #-96]
	ldr r9, =1
	add r8, r9, r10
	str r8, [fp, #-80]
	ldr r10, [fp, #-92]
	ldr r9, =2
	add r8, r9, r10
	str r8, [fp, #-76]
	ldr r10, [fp, #-88]
	ldr r9, =3
	add r8, r9, r10
	str r8, [fp, #-72]
	ldr r10, [fp, #-84]
	ldr r9, =4
	add r8, r9, r10
	str r8, [fp, #-68]
	ldr r10, [fp, #-112]
	ldr r9, =1
	add r8, r9, r10
	str r8, [fp, #-96]
	ldr r10, [fp, #-108]
	ldr r9, =2
	add r8, r9, r10
	str r8, [fp, #-92]
	ldr r10, [fp, #-104]
	ldr r9, =3
	add r8, r9, r10
	str r8, [fp, #-88]
	ldr r10, [fp, #-100]
	ldr r9, =4
	add r8, r9, r10
	str r8, [fp, #-84]
	ldr r10, [fp, #-128]
	ldr r9, =1
	add r8, r9, r10
	str r8, [fp, #-112]
	ldr r10, [fp, #-124]
	ldr r9, =2
	add r8, r9, r10
	str r8, [fp, #-108]
	ldr r10, [fp, #-120]
	ldr r9, =3
	add r8, r9, r10
	str r8, [fp, #-104]
	ldr r10, [fp, #-116]
	ldr r9, =4
	add r8, r9, r10
	str r8, [fp, #-100]
	ldr r10, [fp, #-144]
	ldr r9, =1
	add r8, r9, r10
	str r8, [fp, #-128]
	ldr r10, [fp, #-140]
	ldr r9, =2
	add r8, r9, r10
	str r8, [fp, #-124]
	ldr r10, [fp, #-136]
	ldr r9, =3
	add r8, r9, r10
	str r8, [fp, #-120]
	ldr r10, [fp, #-132]
	ldr r9, =4
	add r8, r9, r10
	str r8, [fp, #-116]
	ldr r10, [fp, #-16]
	ldr r9, =1
	add r8, r9, r10
	str r8, [fp, #-144]
	ldr r10, [fp, #-12]
	ldr r9, =2
	add r8, r9, r10
	str r8, [fp, #-140]
	ldr r10, [fp, #-8]
	ldr r9, =3
	add r8, r9, r10
	str r8, [fp, #-136]
	ldr r10, [fp, #-4]
	ldr r9, =4
	add r8, r9, r10
	str r8, [fp, #-132]
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
	mov r0, r9
	b .Lfunc_END
	b .F0
.LTORG
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
.L259:
	ldr r10, =1
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
	mov r0, r10
	b .Lmain_END
.Lmain_END:
	add sp, sp, #8
	pop {r9, r10, fp, lr}
	bx  lr

