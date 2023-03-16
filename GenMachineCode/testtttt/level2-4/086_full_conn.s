	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm
	.text
	.global relu_reg
	.type relu_reg , %function
relu_reg:
	push {r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L667:
	str r0, [fp, #-4]
	ldr r10, [fp, #-4]
	ldr r9, =127
	cmp r10, r9
	movgt r10, #1
	movle r10, #0
	bgt .L669
	b .L673
.L669:
	ldr r10, =127
	mov r0, r10
	b .Lrelu_reg_END
.L670:
	ldr r10, [fp, #-4]
	ldr r9, =0
	cmp r10, r9
	movlt r10, #1
	movge r10, #0
	blt .L675
	b .L679
.L672:
.L673:
	b .L670
.L674:
.L675:
	ldr r10, =0
	mov r0, r10
	b .Lrelu_reg_END
.L676:
	ldr r10, [fp, #-4]
	mov r0, r10
	b .Lrelu_reg_END
.L678:
.L679:
	b .L676
.L680:
.Lrelu_reg_END:
	add sp, sp, #4
	pop {r9, r10, fp, lr}
	bx  lr

	.global model
	.type model , %function
model:
	push {r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #20
.L682:
	str r0, [fp, #-20]
	ldr r10, [fp, #-20]
	ldr r9, =0
	ldr r8, =5
	mul r7, r9, r8
	add r9, r7, #0
	ldr r8, =4
	mul r7, r9, r8
	add r9, r7, r10
	ldr r10, [r9]
	ldr r9, =85
	mul r8, r10, r9
	ldr r10, [fp, #-20]
	ldr r9, =0
	ldr r7, =5
	mul r6, r9, r7
	add r9, r6, #1
	ldr r7, =4
	mul r6, r9, r7
	add r9, r6, r10
	ldr r10, [r9]
	ldr r9, =23
	mul r7, r10, r9
	add r10, r8, r7
	ldr r9, [fp, #-20]
	ldr r8, =0
	ldr r7, =5
	mul r6, r8, r7
	add r8, r6, #2
	ldr r7, =4
	mul r6, r8, r7
	add r8, r6, r9
	ldr r9, [r8]
	ldr r8, =-82
	mul r7, r9, r8
	add r9, r10, r7
	ldr r10, [fp, #-20]
	ldr r8, =0
	ldr r7, =5
	mul r6, r8, r7
	add r8, r6, #3
	ldr r7, =4
	mul r6, r8, r7
	add r8, r6, r10
	ldr r10, [r8]
	ldr r8, =-103
	mul r7, r10, r8
	add r10, r9, r7
	ldr r9, [fp, #-20]
	ldr r8, =0
	ldr r7, =5
	mul r6, r8, r7
	add r8, r6, #4
	ldr r7, =4
	mul r6, r8, r7
	add r8, r6, r9
	ldr r9, [r8]
	ldr r8, =-123
	mul r7, r9, r8
	add r9, r10, r7
	ldr r10, [fp, #-20]
	ldr r8, =1
	ldr r7, =5
	mul r6, r8, r7
	add r8, r6, #0
	ldr r7, =4
	mul r6, r8, r7
	add r8, r6, r10
	ldr r10, [r8]
	ldr r8, =64
	mul r7, r10, r8
	add r10, r9, r7
	ldr r9, [fp, #-20]
	ldr r8, =1
	ldr r7, =5
	mul r6, r8, r7
	add r8, r6, #1
	ldr r7, =4
	mul r6, r8, r7
	add r8, r6, r9
	ldr r9, [r8]
	ldr r8, =-120
	mul r7, r9, r8
	add r9, r10, r7
	ldr r10, [fp, #-20]
	ldr r8, =1
	ldr r7, =5
	mul r6, r8, r7
	add r8, r6, #2
	ldr r7, =4
	mul r6, r8, r7
	add r8, r6, r10
	ldr r10, [r8]
	ldr r8, =50
	mul r7, r10, r8
	add r10, r9, r7
	ldr r9, [fp, #-20]
	ldr r8, =1
	ldr r7, =5
	mul r6, r8, r7
	add r8, r6, #3
	ldr r7, =4
	mul r6, r8, r7
	add r8, r6, r9
	ldr r9, [r8]
	ldr r8, =-59
	mul r7, r9, r8
	add r9, r10, r7
	ldr r10, [fp, #-20]
	ldr r8, =1
	ldr r7, =5
	mul r6, r8, r7
	add r8, r6, #4
	ldr r7, =4
	mul r6, r8, r7
	add r8, r6, r10
	ldr r10, [r8]
	ldr r8, =47
	mul r7, r10, r8
	add r10, r9, r7
	ldr r9, [fp, #-20]
	ldr r8, =2
	ldr r7, =5
	mul r6, r8, r7
	add r8, r6, #0
	ldr r7, =4
	mul r6, r8, r7
	add r8, r6, r9
	ldr r9, [r8]
	ldr r8, =-111
	mul r7, r9, r8
	add r9, r10, r7
	ldr r10, [fp, #-20]
	ldr r8, =2
	ldr r7, =5
	mul r6, r8, r7
	add r8, r6, #1
	ldr r7, =4
	mul r6, r8, r7
	add r8, r6, r10
	ldr r10, [r8]
	ldr r8, =-67
	mul r7, r10, r8
	add r10, r9, r7
	ldr r9, [fp, #-20]
	ldr r8, =2
	ldr r7, =5
	mul r6, r8, r7
	add r8, r6, #2
	ldr r7, =4
	mul r6, r8, r7
	add r8, r6, r9
	ldr r9, [r8]
	ldr r8, =-106
	mul r7, r9, r8
	add r9, r10, r7
	ldr r10, [fp, #-20]
	ldr r8, =2
	ldr r7, =5
	mul r6, r8, r7
	add r8, r6, #3
	ldr r7, =4
	mul r6, r8, r7
	add r8, r6, r10
	ldr r10, [r8]
	ldr r8, =-75
	mul r7, r10, r8
	add r10, r9, r7
	ldr r9, [fp, #-20]
	ldr r8, =2
	ldr r7, =5
	mul r6, r8, r7
	add r8, r6, #4
	ldr r7, =4
	mul r6, r8, r7
	add r8, r6, r9
	ldr r9, [r8]
	ldr r8, =-102
	mul r7, r9, r8
	add r9, r10, r7
	ldr r10, [fp, #-20]
	ldr r8, =3
	ldr r7, =5
	mul r6, r8, r7
	add r8, r6, #0
	ldr r7, =4
	mul r6, r8, r7
	add r8, r6, r10
	ldr r10, [r8]
	ldr r8, =34
	mul r7, r10, r8
	add r10, r9, r7
	ldr r9, [fp, #-20]
	ldr r8, =3
	ldr r7, =5
	mul r6, r8, r7
	add r8, r6, #1
	ldr r7, =4
	mul r6, r8, r7
	add r8, r6, r9
	ldr r9, [r8]
	ldr r8, =-39
	mul r7, r9, r8
	add r9, r10, r7
	ldr r10, [fp, #-20]
	ldr r8, =3
	ldr r7, =5
	mul r6, r8, r7
	add r8, r6, #2
	ldr r7, =4
	mul r6, r8, r7
	add r8, r6, r10
	ldr r10, [r8]
	ldr r8, =65
	mul r7, r10, r8
	add r10, r9, r7
	ldr r9, [fp, #-20]
	ldr r8, =3
	ldr r7, =5
	mul r6, r8, r7
	add r8, r6, #3
	ldr r7, =4
	mul r6, r8, r7
	add r8, r6, r9
	ldr r9, [r8]
	ldr r8, =47
	mul r7, r9, r8
	add r9, r10, r7
	ldr r10, [fp, #-20]
	ldr r8, =3
	ldr r7, =5
	mul r6, r8, r7
	add r8, r6, #4
	ldr r7, =4
	mul r6, r8, r7
	add r8, r6, r10
	ldr r10, [r8]
	ldr r8, =113
	mul r7, r10, r8
	add r10, r9, r7
	ldr r9, [fp, #-20]
	ldr r8, =4
	ldr r7, =5
	mul r6, r8, r7
	add r8, r6, #0
	ldr r7, =4
	mul r6, r8, r7
	add r8, r6, r9
	ldr r9, [r8]
	ldr r8, =110
	mul r7, r9, r8
	add r9, r10, r7
	ldr r10, [fp, #-20]
	ldr r8, =4
	ldr r7, =5
	mul r6, r8, r7
	add r8, r6, #1
	ldr r7, =4
	mul r6, r8, r7
	add r8, r6, r10
	ldr r10, [r8]
	ldr r8, =47
	mul r7, r10, r8
	add r10, r9, r7
	ldr r9, [fp, #-20]
	ldr r8, =4
	ldr r7, =5
	mul r6, r8, r7
	add r8, r6, #2
	ldr r7, =4
	mul r6, r8, r7
	add r8, r6, r9
	ldr r9, [r8]
	ldr r8, =-4
	mul r7, r9, r8
	add r9, r10, r7
	ldr r10, [fp, #-20]
	ldr r8, =4
	ldr r7, =5
	mul r6, r8, r7
	add r8, r6, #3
	ldr r7, =4
	mul r6, r8, r7
	add r8, r6, r10
	ldr r10, [r8]
	ldr r8, =80
	mul r7, r10, r8
	add r10, r9, r7
	ldr r9, [fp, #-20]
	ldr r8, =4
	ldr r7, =5
	mul r6, r8, r7
	add r8, r6, #4
	ldr r7, =4
	mul r6, r8, r7
	add r8, r6, r9
	ldr r9, [r8]
	ldr r8, =46
	mul r7, r9, r8
	add r9, r10, r7
	mov r0, r9
	bl  relu_reg
	mov r10, r0
	ldr r9, =39
	mul r8, r10, r9
	ldr r10, [fp, #-20]
	ldr r9, =0
	ldr r7, =5
	mul r6, r9, r7
	add r9, r6, #0
	ldr r7, =4
	mul r6, r9, r7
	add r9, r6, r10
	ldr r10, [r9]
	ldr r9, =-106
	mul r7, r10, r9
	ldr r10, [fp, #-20]
	ldr r9, =0
	ldr r6, =5
	mul r5, r9, r6
	add r9, r5, #1
	ldr r6, =4
	mul r5, r9, r6
	add r9, r5, r10
	ldr r10, [r9]
	ldr r9, =126
	mul r6, r10, r9
	add r10, r7, r6
	ldr r9, [fp, #-20]
	ldr r7, =0
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #2
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r9
	ldr r9, [r7]
	ldr r7, =-18
	mul r6, r9, r7
	add r9, r10, r6
	ldr r10, [fp, #-20]
	ldr r7, =0
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #3
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r10
	ldr r10, [r7]
	ldr r7, =-31
	mul r6, r10, r7
	add r10, r9, r6
	ldr r9, [fp, #-20]
	ldr r7, =0
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #4
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r9
	ldr r9, [r7]
	ldr r7, =-8
	mul r6, r9, r7
	add r9, r10, r6
	ldr r10, [fp, #-20]
	ldr r7, =1
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #0
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r10
	ldr r10, [r7]
	ldr r7, =47
	mul r6, r10, r7
	add r10, r9, r6
	ldr r9, [fp, #-20]
	ldr r7, =1
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #1
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r9
	ldr r9, [r7]
	ldr r7, =-4
	mul r6, r9, r7
	add r9, r10, r6
	ldr r10, [fp, #-20]
	ldr r7, =1
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #2
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r10
	ldr r10, [r7]
	ldr r7, =67
	mul r6, r10, r7
	add r10, r9, r6
	ldr r9, [fp, #-20]
	ldr r7, =1
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #3
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r9
	ldr r9, [r7]
	ldr r7, =-94
	mul r6, r9, r7
	add r9, r10, r6
	ldr r10, [fp, #-20]
	ldr r7, =1
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #4
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r10
	ldr r10, [r7]
	ldr r7, =-121
	mul r6, r10, r7
	add r10, r9, r6
	ldr r9, [fp, #-20]
	ldr r7, =2
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #0
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r9
	ldr r9, [r7]
	ldr r7, =7
	mul r6, r9, r7
	add r9, r10, r6
	ldr r10, [fp, #-20]
	ldr r7, =2
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #1
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r10
	ldr r10, [r7]
	ldr r7, =-21
	mul r6, r10, r7
	add r10, r9, r6
	ldr r9, [fp, #-20]
	ldr r7, =2
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #2
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r9
	ldr r9, [r7]
	ldr r7, =-60
	mul r6, r9, r7
	add r9, r10, r6
	ldr r10, [fp, #-20]
	ldr r7, =2
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #3
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r10
	ldr r10, [r7]
	ldr r7, =-43
	mul r6, r10, r7
	add r10, r9, r6
	ldr r9, [fp, #-20]
	ldr r7, =2
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #4
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r9
	ldr r9, [r7]
	ldr r7, =105
	mul r6, r9, r7
	add r9, r10, r6
	ldr r10, [fp, #-20]
	ldr r7, =3
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #0
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r10
	ldr r10, [r7]
	ldr r7, =-42
	mul r6, r10, r7
	add r10, r9, r6
	ldr r9, [fp, #-20]
	ldr r7, =3
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #1
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r9
	ldr r9, [r7]
	ldr r7, =87
	mul r6, r9, r7
	add r9, r10, r6
	ldr r10, [fp, #-20]
	ldr r7, =3
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #2
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r10
	ldr r10, [r7]
	ldr r7, =29
	mul r6, r10, r7
	add r10, r9, r6
	ldr r9, [fp, #-20]
	ldr r7, =3
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #3
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r9
	ldr r9, [r7]
	ldr r7, =-106
	mul r6, r9, r7
	add r9, r10, r6
	ldr r10, [fp, #-20]
	ldr r7, =3
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #4
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r10
	ldr r10, [r7]
	ldr r7, =-31
	mul r6, r10, r7
	add r10, r9, r6
	ldr r9, [fp, #-20]
	ldr r7, =4
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #0
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r9
	ldr r9, [r7]
	ldr r7, =-110
	mul r6, r9, r7
	add r9, r10, r6
	ldr r10, [fp, #-20]
	ldr r7, =4
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #1
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r10
	ldr r10, [r7]
	ldr r7, =-100
	mul r6, r10, r7
	add r10, r9, r6
	ldr r9, [fp, #-20]
	ldr r7, =4
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #2
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r9
	ldr r9, [r7]
	ldr r7, =-22
	mul r6, r9, r7
	add r9, r10, r6
	ldr r10, [fp, #-20]
	ldr r7, =4
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #3
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r10
	ldr r10, [r7]
	ldr r7, =-75
	mul r6, r10, r7
	add r10, r9, r6
	ldr r9, [fp, #-20]
	ldr r7, =4
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #4
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r9
	ldr r9, [r7]
	ldr r7, =-125
	mul r6, r9, r7
	add r9, r10, r6
	mov r0, r9
	bl  relu_reg
	mov r10, r0
	ldr r9, =77
	mul r7, r10, r9
	add r10, r8, r7
	ldr r9, [fp, #-20]
	ldr r8, =0
	ldr r7, =5
	mul r6, r8, r7
	add r8, r6, #0
	ldr r7, =4
	mul r6, r8, r7
	add r8, r6, r9
	ldr r9, [r8]
	ldr r8, =26
	mul r7, r9, r8
	ldr r9, [fp, #-20]
	ldr r8, =0
	ldr r6, =5
	mul r5, r8, r6
	add r8, r5, #1
	ldr r6, =4
	mul r5, r8, r6
	add r8, r5, r9
	ldr r9, [r8]
	ldr r8, =76
	mul r6, r9, r8
	add r9, r7, r6
	ldr r8, [fp, #-20]
	ldr r7, =0
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #2
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r8
	ldr r8, [r7]
	ldr r7, =-70
	mul r6, r8, r7
	add r8, r9, r6
	ldr r9, [fp, #-20]
	ldr r7, =0
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #3
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r9
	ldr r9, [r7]
	ldr r7, =29
	mul r6, r9, r7
	add r9, r8, r6
	ldr r8, [fp, #-20]
	ldr r7, =0
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #4
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r8
	ldr r8, [r7]
	ldr r7, =-95
	mul r6, r8, r7
	add r8, r9, r6
	ldr r9, [fp, #-20]
	ldr r7, =1
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #0
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r9
	ldr r9, [r7]
	ldr r7, =96
	mul r6, r9, r7
	add r9, r8, r6
	ldr r8, [fp, #-20]
	ldr r7, =1
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #1
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r8
	ldr r8, [r7]
	ldr r7, =52
	mul r6, r8, r7
	add r8, r9, r6
	ldr r9, [fp, #-20]
	ldr r7, =1
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #2
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r9
	ldr r9, [r7]
	ldr r7, =-68
	mul r6, r9, r7
	add r9, r8, r6
	ldr r8, [fp, #-20]
	ldr r7, =1
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #3
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r8
	ldr r8, [r7]
	ldr r7, =-5
	mul r6, r8, r7
	add r8, r9, r6
	ldr r9, [fp, #-20]
	ldr r7, =1
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #4
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r9
	ldr r9, [r7]
	ldr r7, =34
	mul r6, r9, r7
	add r9, r8, r6
	ldr r8, [fp, #-20]
	ldr r7, =2
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #0
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r8
	ldr r8, [r7]
	ldr r7, =-34
	mul r6, r8, r7
	add r8, r9, r6
	ldr r9, [fp, #-20]
	ldr r7, =2
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #1
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r9
	ldr r9, [r7]
	ldr r7, =102
	mul r6, r9, r7
	add r9, r8, r6
	ldr r8, [fp, #-20]
	ldr r7, =2
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #2
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r8
	ldr r8, [r7]
	ldr r7, =6
	mul r6, r8, r7
	add r8, r9, r6
	ldr r9, [fp, #-20]
	ldr r7, =2
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #3
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r9
	ldr r9, [r7]
	ldr r7, =-38
	mul r6, r9, r7
	add r9, r8, r6
	ldr r8, [fp, #-20]
	ldr r7, =2
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #4
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r8
	ldr r8, [r7]
	ldr r7, =27
	mul r6, r8, r7
	add r8, r9, r6
	ldr r9, [fp, #-20]
	ldr r7, =3
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #0
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r9
	ldr r9, [r7]
	ldr r7, =110
	mul r6, r9, r7
	add r9, r8, r6
	ldr r8, [fp, #-20]
	ldr r7, =3
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #1
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r8
	ldr r8, [r7]
	ldr r7, =116
	mul r6, r8, r7
	add r8, r9, r6
	ldr r9, [fp, #-20]
	ldr r7, =3
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #2
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r9
	ldr r9, [r7]
	ldr r7, =39
	mul r6, r9, r7
	add r9, r8, r6
	ldr r8, [fp, #-20]
	ldr r7, =3
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #3
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r8
	ldr r8, [r7]
	ldr r7, =-63
	mul r6, r8, r7
	add r8, r9, r6
	ldr r9, [fp, #-20]
	ldr r7, =3
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #4
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r9
	ldr r9, [r7]
	ldr r7, =-99
	mul r6, r9, r7
	add r9, r8, r6
	ldr r8, [fp, #-20]
	ldr r7, =4
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #0
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r8
	ldr r8, [r7]
	ldr r7, =65
	mul r6, r8, r7
	add r8, r9, r6
	ldr r9, [fp, #-20]
	ldr r7, =4
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #1
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r9
	ldr r9, [r7]
	ldr r7, =120
	mul r6, r9, r7
	add r9, r8, r6
	ldr r8, [fp, #-20]
	ldr r7, =4
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #2
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r8
	ldr r8, [r7]
	ldr r7, =-39
	mul r6, r8, r7
	add r8, r9, r6
	ldr r9, [fp, #-20]
	ldr r7, =4
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #3
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r9
	ldr r9, [r7]
	ldr r7, =-6
	mul r6, r9, r7
	add r9, r8, r6
	ldr r8, [fp, #-20]
	ldr r7, =4
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #4
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r8
	ldr r8, [r7]
	ldr r7, =94
	mul r6, r8, r7
	add r8, r9, r6
	mov r0, r8
	bl  relu_reg
	mov r9, r0
	ldr r8, =127
	mul r7, r9, r8
	add r9, r10, r7
	ldr r10, [fp, #-20]
	ldr r8, =0
	ldr r7, =5
	mul r6, r8, r7
	add r8, r6, #0
	ldr r7, =4
	mul r6, r8, r7
	add r8, r6, r10
	ldr r10, [r8]
	ldr r8, =-23
	mul r7, r10, r8
	ldr r10, [fp, #-20]
	ldr r8, =0
	ldr r6, =5
	mul r5, r8, r6
	add r8, r5, #1
	ldr r6, =4
	mul r5, r8, r6
	add r8, r5, r10
	ldr r10, [r8]
	ldr r8, =-63
	mul r6, r10, r8
	add r10, r7, r6
	ldr r8, [fp, #-20]
	ldr r7, =0
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #2
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r8
	ldr r8, [r7]
	ldr r7, =49
	mul r6, r8, r7
	add r8, r10, r6
	ldr r10, [fp, #-20]
	ldr r7, =0
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #3
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r10
	ldr r10, [r7]
	ldr r7, =50
	mul r6, r10, r7
	add r10, r8, r6
	ldr r8, [fp, #-20]
	ldr r7, =0
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #4
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r8
	ldr r8, [r7]
	ldr r7, =72
	mul r6, r8, r7
	add r8, r10, r6
	ldr r10, [fp, #-20]
	ldr r7, =1
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #0
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r10
	ldr r10, [r7]
	ldr r7, =85
	mul r6, r10, r7
	add r10, r8, r6
	ldr r8, [fp, #-20]
	ldr r7, =1
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #1
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r8
	ldr r8, [r7]
	ldr r7, =-30
	mul r6, r8, r7
	add r8, r10, r6
	ldr r10, [fp, #-20]
	ldr r7, =1
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #2
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r10
	ldr r10, [r7]
	ldr r7, =12
	mul r6, r10, r7
	add r10, r8, r6
	ldr r8, [fp, #-20]
	ldr r7, =1
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #3
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r8
	ldr r8, [r7]
	ldr r7, =125
	mul r6, r8, r7
	add r8, r10, r6
	ldr r10, [fp, #-20]
	ldr r7, =1
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #4
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r10
	ldr r10, [r7]
	ldr r7, =-117
	mul r6, r10, r7
	add r10, r8, r6
	ldr r8, [fp, #-20]
	ldr r7, =2
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #0
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r8
	ldr r8, [r7]
	ldr r7, =-65
	mul r6, r8, r7
	add r8, r10, r6
	ldr r10, [fp, #-20]
	ldr r7, =2
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #1
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r10
	ldr r10, [r7]
	ldr r7, =-67
	mul r6, r10, r7
	add r10, r8, r6
	ldr r8, [fp, #-20]
	ldr r7, =2
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #2
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r8
	ldr r8, [r7]
	ldr r7, =125
	mul r6, r8, r7
	add r8, r10, r6
	ldr r10, [fp, #-20]
	ldr r7, =2
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #3
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r10
	ldr r10, [r7]
	ldr r7, =110
	mul r6, r10, r7
	add r10, r8, r6
	ldr r8, [fp, #-20]
	ldr r7, =2
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #4
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r8
	ldr r8, [r7]
	ldr r7, =-31
	mul r6, r8, r7
	add r8, r10, r6
	ldr r10, [fp, #-20]
	ldr r7, =3
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #0
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r10
	ldr r10, [r7]
	ldr r7, =-123
	mul r6, r10, r7
	add r10, r8, r6
	ldr r8, [fp, #-20]
	ldr r7, =3
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #1
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r8
	ldr r8, [r7]
	ldr r7, =83
	mul r6, r8, r7
	add r8, r10, r6
	ldr r10, [fp, #-20]
	ldr r7, =3
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #2
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r10
	ldr r10, [r7]
	ldr r7, =122
	mul r6, r10, r7
	add r10, r8, r6
	ldr r8, [fp, #-20]
	ldr r7, =3
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #3
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r8
	ldr r8, [r7]
	ldr r7, =11
	mul r6, r8, r7
	add r8, r10, r6
	ldr r10, [fp, #-20]
	ldr r7, =3
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #4
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r10
	ldr r10, [r7]
	ldr r7, =-23
	mul r6, r10, r7
	add r10, r8, r6
	ldr r8, [fp, #-20]
	ldr r7, =4
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #0
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r8
	ldr r8, [r7]
	ldr r7, =-47
	mul r6, r8, r7
	add r8, r10, r6
	ldr r10, [fp, #-20]
	ldr r7, =4
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #1
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r10
	ldr r10, [r7]
	ldr r7, =-32
	mul r6, r10, r7
	add r10, r8, r6
	ldr r8, [fp, #-20]
	ldr r7, =4
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #2
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r8
	ldr r8, [r7]
	ldr r7, =-117
	mul r6, r8, r7
	add r8, r10, r6
	ldr r10, [fp, #-20]
	ldr r7, =4
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #3
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r10
	ldr r10, [r7]
	ldr r7, =95
	mul r6, r10, r7
	add r10, r8, r6
	ldr r8, [fp, #-20]
	ldr r7, =4
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #4
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r8
	ldr r8, [r7]
	ldr r7, =118
	mul r6, r8, r7
	add r8, r10, r6
	mov r0, r8
	bl  relu_reg
	mov r10, r0
	ldr r8, =-106
	mul r7, r10, r8
	add r10, r9, r7
	ldr r9, [fp, #-20]
	ldr r8, =0
	ldr r7, =5
	mul r6, r8, r7
	add r8, r6, #0
	ldr r7, =4
	mul r6, r8, r7
	add r8, r6, r9
	ldr r9, [r8]
	ldr r8, =8
	mul r7, r9, r8
	ldr r9, [fp, #-20]
	ldr r8, =0
	ldr r6, =5
	mul r5, r8, r6
	add r8, r5, #1
	ldr r6, =4
	mul r5, r8, r6
	add r8, r5, r9
	ldr r9, [r8]
	ldr r8, =82
	mul r6, r9, r8
	add r9, r7, r6
	ldr r8, [fp, #-20]
	ldr r7, =0
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #2
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r8
	ldr r8, [r7]
	ldr r7, =-104
	mul r6, r8, r7
	add r8, r9, r6
	ldr r9, [fp, #-20]
	ldr r7, =0
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #3
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r9
	ldr r9, [r7]
	ldr r7, =101
	mul r6, r9, r7
	add r9, r8, r6
	ldr r8, [fp, #-20]
	ldr r7, =0
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #4
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r8
	ldr r8, [r7]
	ldr r7, =-116
	mul r6, r8, r7
	add r8, r9, r6
	ldr r9, [fp, #-20]
	ldr r7, =1
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #0
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r9
	ldr r9, [r7]
	ldr r7, =-63
	mul r6, r9, r7
	add r9, r8, r6
	ldr r8, [fp, #-20]
	ldr r7, =1
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #1
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r8
	ldr r8, [r7]
	ldr r7, =-16
	mul r6, r8, r7
	add r8, r9, r6
	ldr r9, [fp, #-20]
	ldr r7, =1
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #2
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r9
	ldr r9, [r7]
	ldr r7, =-70
	mul r6, r9, r7
	add r9, r8, r6
	ldr r8, [fp, #-20]
	ldr r7, =1
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #3
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r8
	ldr r8, [r7]
	ldr r7, =125
	mul r6, r8, r7
	add r8, r9, r6
	ldr r9, [fp, #-20]
	ldr r7, =1
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #4
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r9
	ldr r9, [r7]
	ldr r7, =75
	mul r6, r9, r7
	add r9, r8, r6
	ldr r8, [fp, #-20]
	ldr r7, =2
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #0
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r8
	ldr r8, [r7]
	ldr r7, =66
	mul r6, r8, r7
	add r8, r9, r6
	ldr r9, [fp, #-20]
	ldr r7, =2
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #1
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r9
	ldr r9, [r7]
	ldr r7, =-96
	mul r6, r9, r7
	add r9, r8, r6
	ldr r8, [fp, #-20]
	ldr r7, =2
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #2
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r8
	ldr r8, [r7]
	ldr r7, =-101
	mul r6, r8, r7
	add r8, r9, r6
	ldr r9, [fp, #-20]
	ldr r7, =2
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #3
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r9
	ldr r9, [r7]
	ldr r7, =-114
	mul r6, r9, r7
	add r9, r8, r6
	ldr r8, [fp, #-20]
	ldr r7, =2
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #4
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r8
	ldr r8, [r7]
	ldr r7, =59
	mul r6, r8, r7
	add r8, r9, r6
	ldr r9, [fp, #-20]
	ldr r7, =3
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #0
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r9
	ldr r9, [r7]
	ldr r7, =12
	mul r6, r9, r7
	add r9, r8, r6
	ldr r8, [fp, #-20]
	ldr r7, =3
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #1
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r8
	ldr r8, [r7]
	ldr r7, =5
	mul r6, r8, r7
	add r8, r9, r6
	ldr r9, [fp, #-20]
	ldr r7, =3
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #2
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r9
	ldr r9, [r7]
	ldr r7, =-95
	mul r6, r9, r7
	add r9, r8, r6
	ldr r8, [fp, #-20]
	ldr r7, =3
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #3
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r8
	ldr r8, [r7]
	ldr r7, =116
	mul r6, r8, r7
	add r8, r9, r6
	ldr r9, [fp, #-20]
	ldr r7, =3
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #4
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r9
	ldr r9, [r7]
	ldr r7, =-93
	mul r6, r9, r7
	add r9, r8, r6
	ldr r8, [fp, #-20]
	ldr r7, =4
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #0
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r8
	ldr r8, [r7]
	ldr r7, =15
	mul r6, r8, r7
	add r8, r9, r6
	ldr r9, [fp, #-20]
	ldr r7, =4
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #1
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r9
	ldr r9, [r7]
	ldr r7, =79
	mul r6, r9, r7
	add r9, r8, r6
	ldr r8, [fp, #-20]
	ldr r7, =4
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #2
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r8
	ldr r8, [r7]
	ldr r7, =3
	mul r6, r8, r7
	add r8, r9, r6
	ldr r9, [fp, #-20]
	ldr r7, =4
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #3
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r9
	ldr r9, [r7]
	ldr r7, =49
	mul r6, r9, r7
	add r9, r8, r6
	ldr r8, [fp, #-20]
	ldr r7, =4
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #4
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r8
	ldr r8, [r7]
	ldr r7, =-124
	mul r6, r8, r7
	add r8, r9, r6
	mov r0, r8
	bl  relu_reg
	mov r9, r0
	ldr r8, =-3
	mul r7, r9, r8
	add r9, r10, r7
	ldr r10, [fp, #-20]
	ldr r8, =0
	ldr r7, =5
	mul r6, r8, r7
	add r8, r6, #0
	ldr r7, =4
	mul r6, r8, r7
	add r8, r6, r10
	ldr r10, [r8]
	ldr r8, =81
	mul r7, r10, r8
	ldr r10, [fp, #-20]
	ldr r8, =0
	ldr r6, =5
	mul r5, r8, r6
	add r8, r5, #1
	ldr r6, =4
	mul r5, r8, r6
	add r8, r5, r10
	ldr r10, [r8]
	ldr r8, =68
	mul r6, r10, r8
	add r10, r7, r6
	ldr r8, [fp, #-20]
	ldr r7, =0
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #2
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r8
	ldr r8, [r7]
	ldr r7, =-102
	mul r6, r8, r7
	add r8, r10, r6
	ldr r10, [fp, #-20]
	ldr r7, =0
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #3
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r10
	ldr r10, [r7]
	ldr r7, =-74
	mul r6, r10, r7
	add r10, r8, r6
	ldr r8, [fp, #-20]
	ldr r7, =0
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #4
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r8
	ldr r8, [r7]
	ldr r7, =121
	mul r6, r8, r7
	add r8, r10, r6
	ldr r10, [fp, #-20]
	ldr r7, =1
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #0
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r10
	ldr r10, [r7]
	ldr r7, =-15
	mul r6, r10, r7
	add r10, r8, r6
	ldr r8, [fp, #-20]
	ldr r7, =1
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #1
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r8
	ldr r8, [r7]
	ldr r7, =55
	mul r6, r8, r7
	add r8, r10, r6
	ldr r10, [fp, #-20]
	ldr r7, =1
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #2
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r10
	ldr r10, [r7]
	ldr r7, =101
	mul r6, r10, r7
	add r10, r8, r6
	ldr r8, [fp, #-20]
	ldr r7, =1
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #3
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r8
	ldr r8, [r7]
	ldr r7, =-13
	mul r6, r8, r7
	add r8, r10, r6
	ldr r10, [fp, #-20]
	ldr r7, =1
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #4
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r10
	ldr r10, [r7]
	ldr r7, =-62
	mul r6, r10, r7
	add r10, r8, r6
	ldr r8, [fp, #-20]
	ldr r7, =2
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #0
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r8
	ldr r8, [r7]
	ldr r7, =64
	mul r6, r8, r7
	add r8, r10, r6
	ldr r10, [fp, #-20]
	ldr r7, =2
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #1
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r10
	ldr r10, [r7]
	ldr r7, =114
	mul r6, r10, r7
	add r10, r8, r6
	ldr r8, [fp, #-20]
	ldr r7, =2
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #2
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r8
	ldr r8, [r7]
	ldr r7, =38
	mul r6, r8, r7
	add r8, r10, r6
	ldr r10, [fp, #-20]
	ldr r7, =2
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #3
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r10
	ldr r10, [r7]
	ldr r7, =-21
	mul r6, r10, r7
	add r10, r8, r6
	ldr r8, [fp, #-20]
	ldr r7, =2
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #4
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r8
	ldr r8, [r7]
	ldr r7, =112
	mul r6, r8, r7
	add r8, r10, r6
	ldr r10, [fp, #-20]
	ldr r7, =3
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #0
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r10
	ldr r10, [r7]
	ldr r7, =114
	mul r6, r10, r7
	add r10, r8, r6
	ldr r8, [fp, #-20]
	ldr r7, =3
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #1
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r8
	ldr r8, [r7]
	ldr r7, =112
	mul r6, r8, r7
	add r8, r10, r6
	ldr r10, [fp, #-20]
	ldr r7, =3
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #2
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r10
	ldr r10, [r7]
	ldr r7, =-10
	mul r6, r10, r7
	add r10, r8, r6
	ldr r8, [fp, #-20]
	ldr r7, =3
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #3
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r8
	ldr r8, [r7]
	ldr r7, =-16
	mul r6, r8, r7
	add r8, r10, r6
	ldr r10, [fp, #-20]
	ldr r7, =3
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #4
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r10
	ldr r10, [r7]
	ldr r7, =-50
	mul r6, r10, r7
	add r10, r8, r6
	ldr r8, [fp, #-20]
	ldr r7, =4
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #0
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r8
	ldr r8, [r7]
	ldr r7, =-112
	mul r6, r8, r7
	add r8, r10, r6
	ldr r10, [fp, #-20]
	ldr r7, =4
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #1
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r10
	ldr r10, [r7]
	ldr r7, =-116
	mul r6, r10, r7
	add r10, r8, r6
	ldr r8, [fp, #-20]
	ldr r7, =4
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #2
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r8
	ldr r8, [r7]
	ldr r7, =-54
	mul r6, r8, r7
	add r8, r10, r6
	ldr r10, [fp, #-20]
	ldr r7, =4
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #3
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r10
	ldr r10, [r7]
	ldr r7, =82
	mul r6, r10, r7
	add r10, r8, r6
	ldr r8, [fp, #-20]
	ldr r7, =4
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #4
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r8
	ldr r8, [r7]
	ldr r7, =-72
	mul r6, r8, r7
	add r8, r10, r6
	mov r0, r8
	bl  relu_reg
	mov r10, r0
	ldr r8, =32
	mul r7, r10, r8
	add r10, r9, r7
	ldr r9, [fp, #-20]
	ldr r8, =0
	ldr r7, =5
	mul r6, r8, r7
	add r8, r6, #0
	ldr r7, =4
	mul r6, r8, r7
	add r8, r6, r9
	ldr r9, [r8]
	ldr r8, =15
	mul r7, r9, r8
	ldr r9, [fp, #-20]
	ldr r8, =0
	ldr r6, =5
	mul r5, r8, r6
	add r8, r5, #1
	ldr r6, =4
	mul r5, r8, r6
	add r8, r5, r9
	ldr r9, [r8]
	ldr r8, =-77
	mul r6, r9, r8
	add r9, r7, r6
	ldr r8, [fp, #-20]
	ldr r7, =0
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #2
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r8
	ldr r8, [r7]
	ldr r7, =66
	mul r6, r8, r7
	add r8, r9, r6
	ldr r9, [fp, #-20]
	ldr r7, =0
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #3
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r9
	ldr r9, [r7]
	ldr r7, =-90
	mul r6, r9, r7
	add r9, r8, r6
	ldr r8, [fp, #-20]
	ldr r7, =0
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #4
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r8
	ldr r8, [r7]
	ldr r7, =-6
	mul r6, r8, r7
	add r8, r9, r6
	ldr r9, [fp, #-20]
	ldr r7, =1
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #0
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r9
	ldr r9, [r7]
	ldr r7, =-30
	mul r6, r9, r7
	add r9, r8, r6
	ldr r8, [fp, #-20]
	ldr r7, =1
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #1
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r8
	ldr r8, [r7]
	ldr r7, =-8
	mul r6, r8, r7
	add r8, r9, r6
	ldr r9, [fp, #-20]
	ldr r7, =1
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #2
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r9
	ldr r9, [r7]
	ldr r7, =81
	mul r6, r9, r7
	add r9, r8, r6
	ldr r8, [fp, #-20]
	ldr r7, =1
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #3
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r8
	ldr r8, [r7]
	ldr r7, =2
	mul r6, r8, r7
	add r8, r9, r6
	ldr r9, [fp, #-20]
	ldr r7, =1
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #4
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r9
	ldr r9, [r7]
	ldr r7, =-110
	mul r6, r9, r7
	add r9, r8, r6
	ldr r8, [fp, #-20]
	ldr r7, =2
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #0
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r8
	ldr r8, [r7]
	ldr r7, =-95
	mul r6, r8, r7
	add r8, r9, r6
	ldr r9, [fp, #-20]
	ldr r7, =2
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #1
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r9
	ldr r9, [r7]
	ldr r7, =59
	mul r6, r9, r7
	add r9, r8, r6
	ldr r8, [fp, #-20]
	ldr r7, =2
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #2
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r8
	ldr r8, [r7]
	ldr r7, =52
	mul r6, r8, r7
	add r8, r9, r6
	ldr r9, [fp, #-20]
	ldr r7, =2
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #3
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r9
	ldr r9, [r7]
	ldr r7, =15
	mul r6, r9, r7
	add r9, r8, r6
	ldr r8, [fp, #-20]
	ldr r7, =2
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #4
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r8
	ldr r8, [r7]
	ldr r7, =55
	mul r6, r8, r7
	add r8, r9, r6
	ldr r9, [fp, #-20]
	ldr r7, =3
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #0
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r9
	ldr r9, [r7]
	ldr r7, =-33
	mul r6, r9, r7
	add r9, r8, r6
	ldr r8, [fp, #-20]
	ldr r7, =3
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #1
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r8
	ldr r8, [r7]
	ldr r7, =14
	mul r6, r8, r7
	add r8, r9, r6
	ldr r9, [fp, #-20]
	ldr r7, =3
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #2
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r9
	ldr r9, [r7]
	ldr r7, =58
	mul r6, r9, r7
	add r9, r8, r6
	ldr r8, [fp, #-20]
	ldr r7, =3
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #3
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r8
	ldr r8, [r7]
	ldr r7, =67
	mul r6, r8, r7
	add r8, r9, r6
	ldr r9, [fp, #-20]
	ldr r7, =3
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #4
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r9
	ldr r9, [r7]
	ldr r7, =86
	mul r6, r9, r7
	add r9, r8, r6
	ldr r8, [fp, #-20]
	ldr r7, =4
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #0
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r8
	ldr r8, [r7]
	ldr r7, =-79
	mul r6, r8, r7
	add r8, r9, r6
	ldr r9, [fp, #-20]
	ldr r7, =4
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #1
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r9
	ldr r9, [r7]
	ldr r7, =48
	mul r6, r9, r7
	add r9, r8, r6
	ldr r8, [fp, #-20]
	ldr r7, =4
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #2
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r8
	ldr r8, [r7]
	ldr r7, =-13
	mul r6, r8, r7
	add r8, r9, r6
	ldr r9, [fp, #-20]
	ldr r7, =4
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #3
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r9
	ldr r9, [r7]
	ldr r7, =-15
	mul r6, r9, r7
	add r9, r8, r6
	ldr r8, [fp, #-20]
	ldr r7, =4
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #4
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r8
	ldr r8, [r7]
	ldr r7, =66
	mul r6, r8, r7
	add r8, r9, r6
	mov r0, r8
	bl  relu_reg
	mov r9, r0
	ldr r8, =-95
	mul r7, r9, r8
	add r9, r10, r7
	ldr r10, [fp, #-20]
	ldr r8, =0
	ldr r7, =5
	mul r6, r8, r7
	add r8, r6, #0
	ldr r7, =4
	mul r6, r8, r7
	add r8, r6, r10
	ldr r10, [r8]
	ldr r8, =33
	mul r7, r10, r8
	ldr r10, [fp, #-20]
	ldr r8, =0
	ldr r6, =5
	mul r5, r8, r6
	add r8, r5, #1
	ldr r6, =4
	mul r5, r8, r6
	add r8, r5, r10
	ldr r10, [r8]
	ldr r8, =82
	mul r6, r10, r8
	add r10, r7, r6
	ldr r8, [fp, #-20]
	ldr r7, =0
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #2
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r8
	ldr r8, [r7]
	ldr r7, =67
	mul r6, r8, r7
	add r8, r10, r6
	ldr r10, [fp, #-20]
	ldr r7, =0
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #3
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r10
	ldr r10, [r7]
	ldr r7, =30
	mul r6, r10, r7
	add r10, r8, r6
	ldr r8, [fp, #-20]
	ldr r7, =0
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #4
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r8
	ldr r8, [r7]
	ldr r7, =-2
	mul r6, r8, r7
	add r8, r10, r6
	ldr r10, [fp, #-20]
	ldr r7, =1
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #0
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r10
	ldr r10, [r7]
	ldr r7, =65
	mul r6, r10, r7
	add r10, r8, r6
	ldr r8, [fp, #-20]
	ldr r7, =1
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #1
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r8
	ldr r8, [r7]
	ldr r7, =120
	mul r6, r8, r7
	add r8, r10, r6
	ldr r10, [fp, #-20]
	ldr r7, =1
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #2
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r10
	ldr r10, [r7]
	ldr r7, =-13
	mul r6, r10, r7
	add r10, r8, r6
	ldr r8, [fp, #-20]
	ldr r7, =1
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #3
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r8
	ldr r8, [r7]
	ldr r7, =18
	mul r6, r8, r7
	add r8, r10, r6
	ldr r10, [fp, #-20]
	ldr r7, =1
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #4
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r10
	ldr r10, [r7]
	ldr r7, =5
	mul r6, r10, r7
	add r10, r8, r6
	ldr r8, [fp, #-20]
	ldr r7, =2
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #0
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r8
	ldr r8, [r7]
	ldr r7, =104
	mul r6, r8, r7
	add r8, r10, r6
	ldr r10, [fp, #-20]
	ldr r7, =2
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #1
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r10
	ldr r10, [r7]
	ldr r7, =-119
	mul r6, r10, r7
	add r10, r8, r6
	ldr r8, [fp, #-20]
	ldr r7, =2
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #2
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r8
	ldr r8, [r7]
	ldr r7, =-7
	mul r6, r8, r7
	add r8, r10, r6
	ldr r10, [fp, #-20]
	ldr r7, =2
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #3
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r10
	ldr r10, [r7]
	ldr r7, =71
	mul r6, r10, r7
	add r10, r8, r6
	ldr r8, [fp, #-20]
	ldr r7, =2
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #4
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r8
	ldr r8, [r7]
	ldr r7, =107
	mul r6, r8, r7
	add r8, r10, r6
	ldr r10, [fp, #-20]
	ldr r7, =3
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #0
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r10
	ldr r10, [r7]
	ldr r7, =24
	mul r6, r10, r7
	add r10, r8, r6
	ldr r8, [fp, #-20]
	ldr r7, =3
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #1
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r8
	ldr r8, [r7]
	ldr r7, =82
	mul r6, r8, r7
	add r8, r10, r6
	ldr r10, [fp, #-20]
	ldr r7, =3
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #2
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r10
	ldr r10, [r7]
	ldr r7, =-96
	mul r6, r10, r7
	add r10, r8, r6
	ldr r8, [fp, #-20]
	ldr r7, =3
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #3
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r8
	ldr r8, [r7]
	ldr r7, =-104
	mul r6, r8, r7
	add r8, r10, r6
	ldr r10, [fp, #-20]
	ldr r7, =3
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #4
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r10
	ldr r10, [r7]
	ldr r7, =-121
	mul r6, r10, r7
	add r10, r8, r6
	ldr r8, [fp, #-20]
	ldr r7, =4
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #0
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r8
	ldr r8, [r7]
	ldr r7, =65
	mul r6, r8, r7
	add r8, r10, r6
	ldr r10, [fp, #-20]
	ldr r7, =4
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #1
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r10
	ldr r10, [r7]
	ldr r7, =97
	mul r6, r10, r7
	add r10, r8, r6
	ldr r8, [fp, #-20]
	ldr r7, =4
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #2
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r8
	ldr r8, [r7]
	ldr r7, =83
	mul r6, r8, r7
	add r8, r10, r6
	ldr r10, [fp, #-20]
	ldr r7, =4
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #3
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r10
	ldr r10, [r7]
	ldr r7, =46
	mul r6, r10, r7
	add r10, r8, r6
	ldr r8, [fp, #-20]
	ldr r7, =4
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #4
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r8
	ldr r8, [r7]
	ldr r7, =-84
	mul r6, r8, r7
	add r8, r10, r6
	mov r0, r8
	bl  relu_reg
	mov r10, r0
	ldr r8, =-50
	mul r7, r10, r8
	add r10, r9, r7
	ldr r9, [fp, #-20]
	ldr r8, =0
	ldr r7, =5
	mul r6, r8, r7
	add r8, r6, #0
	ldr r7, =4
	mul r6, r8, r7
	add r8, r6, r9
	ldr r9, [r8]
	ldr r8, =-29
	mul r7, r9, r8
	ldr r9, [fp, #-20]
	ldr r8, =0
	ldr r6, =5
	mul r5, r8, r6
	add r8, r5, #1
	ldr r6, =4
	mul r5, r8, r6
	add r8, r5, r9
	ldr r9, [r8]
	ldr r8, =7
	mul r6, r9, r8
	add r9, r7, r6
	ldr r8, [fp, #-20]
	ldr r7, =0
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #2
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r8
	ldr r8, [r7]
	ldr r7, =-70
	mul r6, r8, r7
	add r8, r9, r6
	ldr r9, [fp, #-20]
	ldr r7, =0
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #3
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r9
	ldr r9, [r7]
	ldr r7, =38
	mul r6, r9, r7
	add r9, r8, r6
	ldr r8, [fp, #-20]
	ldr r7, =0
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #4
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r8
	ldr r8, [r7]
	ldr r7, =-90
	mul r6, r8, r7
	add r8, r9, r6
	ldr r9, [fp, #-20]
	ldr r7, =1
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #0
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r9
	ldr r9, [r7]
	ldr r7, =-15
	mul r6, r9, r7
	add r9, r8, r6
	ldr r8, [fp, #-20]
	ldr r7, =1
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #1
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r8
	ldr r8, [r7]
	ldr r7, =-32
	mul r6, r8, r7
	add r8, r9, r6
	ldr r9, [fp, #-20]
	ldr r7, =1
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #2
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r9
	ldr r9, [r7]
	ldr r7, =37
	mul r6, r9, r7
	add r9, r8, r6
	ldr r8, [fp, #-20]
	ldr r7, =1
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #3
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r8
	ldr r8, [r7]
	ldr r7, =36
	mul r6, r8, r7
	add r8, r9, r6
	ldr r9, [fp, #-20]
	ldr r7, =1
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #4
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r9
	ldr r9, [r7]
	ldr r7, =-62
	mul r6, r9, r7
	add r9, r8, r6
	ldr r8, [fp, #-20]
	ldr r7, =2
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #0
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r8
	ldr r8, [r7]
	ldr r7, =-125
	mul r6, r8, r7
	add r8, r9, r6
	ldr r9, [fp, #-20]
	ldr r7, =2
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #1
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r9
	ldr r9, [r7]
	ldr r7, =-46
	mul r6, r9, r7
	add r9, r8, r6
	ldr r8, [fp, #-20]
	ldr r7, =2
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #2
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r8
	ldr r8, [r7]
	ldr r7, =-70
	mul r6, r8, r7
	add r8, r9, r6
	ldr r9, [fp, #-20]
	ldr r7, =2
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #3
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r9
	ldr r9, [r7]
	ldr r7, =37
	mul r6, r9, r7
	add r9, r8, r6
	ldr r8, [fp, #-20]
	ldr r7, =2
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #4
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r8
	ldr r8, [r7]
	ldr r7, =-73
	mul r6, r8, r7
	add r8, r9, r6
	ldr r9, [fp, #-20]
	ldr r7, =3
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #0
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r9
	ldr r9, [r7]
	ldr r7, =-34
	mul r6, r9, r7
	add r9, r8, r6
	ldr r8, [fp, #-20]
	ldr r7, =3
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #1
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r8
	ldr r8, [r7]
	ldr r7, =-87
	mul r6, r8, r7
	add r8, r9, r6
	ldr r9, [fp, #-20]
	ldr r7, =3
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #2
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r9
	ldr r9, [r7]
	ldr r7, =-75
	mul r6, r9, r7
	add r9, r8, r6
	ldr r8, [fp, #-20]
	ldr r7, =3
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #3
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r8
	ldr r8, [r7]
	ldr r7, =71
	mul r6, r8, r7
	add r8, r9, r6
	ldr r9, [fp, #-20]
	ldr r7, =3
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #4
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r9
	ldr r9, [r7]
	ldr r7, =-77
	mul r6, r9, r7
	add r9, r8, r6
	ldr r8, [fp, #-20]
	ldr r7, =4
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #0
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r8
	ldr r8, [r7]
	ldr r7, =53
	mul r6, r8, r7
	add r8, r9, r6
	ldr r9, [fp, #-20]
	ldr r7, =4
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #1
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r9
	ldr r9, [r7]
	ldr r7, =37
	mul r6, r9, r7
	add r9, r8, r6
	ldr r8, [fp, #-20]
	ldr r7, =4
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #2
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r8
	ldr r8, [r7]
	ldr r7, =-103
	mul r6, r8, r7
	add r8, r9, r6
	ldr r9, [fp, #-20]
	ldr r7, =4
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #3
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r9
	ldr r9, [r7]
	ldr r7, =-13
	mul r6, r9, r7
	add r9, r8, r6
	ldr r8, [fp, #-20]
	ldr r7, =4
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #4
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r8
	ldr r8, [r7]
	ldr r7, =-114
	mul r6, r8, r7
	add r8, r9, r6
	mov r0, r8
	bl  relu_reg
	mov r9, r0
	ldr r8, =-23
	mul r7, r9, r8
	add r9, r10, r7
	ldr r10, [fp, #-20]
	ldr r8, =0
	ldr r7, =5
	mul r6, r8, r7
	add r8, r6, #0
	ldr r7, =4
	mul r6, r8, r7
	add r8, r6, r10
	ldr r10, [r8]
	ldr r8, =67
	mul r7, r10, r8
	ldr r10, [fp, #-20]
	ldr r8, =0
	ldr r6, =5
	mul r5, r8, r6
	add r8, r5, #1
	ldr r6, =4
	mul r5, r8, r6
	add r8, r5, r10
	ldr r10, [r8]
	ldr r8, =42
	mul r6, r10, r8
	add r10, r7, r6
	ldr r8, [fp, #-20]
	ldr r7, =0
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #2
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r8
	ldr r8, [r7]
	ldr r7, =41
	mul r6, r8, r7
	add r8, r10, r6
	ldr r10, [fp, #-20]
	ldr r7, =0
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #3
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r10
	ldr r10, [r7]
	ldr r7, =-123
	mul r6, r10, r7
	add r10, r8, r6
	ldr r8, [fp, #-20]
	ldr r7, =0
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #4
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r8
	ldr r8, [r7]
	ldr r7, =-92
	mul r6, r8, r7
	add r8, r10, r6
	ldr r10, [fp, #-20]
	ldr r7, =1
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #0
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r10
	ldr r10, [r7]
	ldr r7, =10
	mul r6, r10, r7
	add r10, r8, r6
	ldr r8, [fp, #-20]
	ldr r7, =1
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #1
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r8
	ldr r8, [r7]
	ldr r7, =-77
	mul r6, r8, r7
	add r8, r10, r6
	ldr r10, [fp, #-20]
	ldr r7, =1
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #2
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r10
	ldr r10, [r7]
	ldr r7, =75
	mul r6, r10, r7
	add r10, r8, r6
	ldr r8, [fp, #-20]
	ldr r7, =1
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #3
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r8
	ldr r8, [r7]
	ldr r7, =96
	mul r6, r8, r7
	add r8, r10, r6
	ldr r10, [fp, #-20]
	ldr r7, =1
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #4
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r10
	ldr r10, [r7]
	ldr r7, =-51
	mul r6, r10, r7
	add r10, r8, r6
	ldr r8, [fp, #-20]
	ldr r7, =2
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #0
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r8
	ldr r8, [r7]
	ldr r7, =109
	mul r6, r8, r7
	add r8, r10, r6
	ldr r10, [fp, #-20]
	ldr r7, =2
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #1
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r10
	ldr r10, [r7]
	ldr r7, =-74
	mul r6, r10, r7
	add r10, r8, r6
	ldr r8, [fp, #-20]
	ldr r7, =2
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #2
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r8
	ldr r8, [r7]
	ldr r7, =-7
	mul r6, r8, r7
	add r8, r10, r6
	ldr r10, [fp, #-20]
	ldr r7, =2
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #3
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r10
	ldr r10, [r7]
	ldr r7, =-122
	mul r6, r10, r7
	add r10, r8, r6
	ldr r8, [fp, #-20]
	ldr r7, =2
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #4
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r8
	ldr r8, [r7]
	ldr r7, =67
	mul r6, r8, r7
	add r8, r10, r6
	ldr r10, [fp, #-20]
	ldr r7, =3
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #0
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r10
	ldr r10, [r7]
	ldr r7, =47
	mul r6, r10, r7
	add r10, r8, r6
	ldr r8, [fp, #-20]
	ldr r7, =3
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #1
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r8
	ldr r8, [r7]
	ldr r7, =22
	mul r6, r8, r7
	add r8, r10, r6
	ldr r10, [fp, #-20]
	ldr r7, =3
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #2
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r10
	ldr r10, [r7]
	ldr r7, =-68
	mul r6, r10, r7
	add r10, r8, r6
	ldr r8, [fp, #-20]
	ldr r7, =3
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #3
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r8
	ldr r8, [r7]
	ldr r7, =38
	mul r6, r8, r7
	add r8, r10, r6
	ldr r10, [fp, #-20]
	ldr r7, =3
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #4
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r10
	ldr r10, [r7]
	ldr r7, =29
	mul r6, r10, r7
	add r10, r8, r6
	ldr r8, [fp, #-20]
	ldr r7, =4
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #0
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r8
	ldr r8, [r7]
	ldr r7, =115
	mul r6, r8, r7
	add r8, r10, r6
	ldr r10, [fp, #-20]
	ldr r7, =4
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #1
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r10
	ldr r10, [r7]
	ldr r7, =-121
	mul r6, r10, r7
	add r10, r8, r6
	ldr r8, [fp, #-20]
	ldr r7, =4
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #2
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r8
	ldr r8, [r7]
	ldr r7, =36
	mul r6, r8, r7
	add r8, r10, r6
	ldr r10, [fp, #-20]
	ldr r7, =4
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #3
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r10
	ldr r10, [r7]
	ldr r7, =-49
	mul r6, r10, r7
	add r10, r8, r6
	ldr r8, [fp, #-20]
	ldr r7, =4
	ldr r6, =5
	mul r5, r7, r6
	add r7, r5, #4
	ldr r6, =4
	mul r5, r7, r6
	add r7, r5, r8
	ldr r8, [r7]
	ldr r7, =85
	mul r6, r8, r7
	add r8, r10, r6
	mov r0, r8
	bl  relu_reg
	mov r10, r0
	ldr r8, =46
	mul r7, r10, r8
	add r10, r9, r7
	ldr r9, =0
	cmp r10, r9
	movgt r10, #1
	movle r10, #0
	bgt .L684
	b .L2187
.L684:
	ldr r10, =1
	mov r0, r10
	b .Lmodel_END
.L685:
	ldr r10, =0
	mov r0, r10
	b .Lmodel_END
.L2186:
.L2187:
	b .L685
.L2188:
.Lmodel_END:
	add sp, sp, #20
	pop {r5, r6, r7, r8, r9, r10, fp, lr}
	bx  lr

	.global main
	.type main , %function
main:
	push {r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #112
.L2189:
	bl  getint
	mov r10, r0
	str r10, [fp, #-112]
	b .L2192
.L2192:
	ldr r10, [fp, #-112]
	ldr r9, =0
	cmp r10, r9
	movgt r10, #1
	movle r10, #0
	bgt .L2193
	b .L2197
.L2193:
	ldr r10, =0
	str r10, [fp, #-8]
	b .L2200
.L2194:
	ldr r10, =0
	mov r0, r10
	b .Lmain_END
.L2196:
.L2197:
	b .L2194
.L2198:
.L2200:
	ldr r10, [fp, #-8]
	ldr r9, =5
	cmp r10, r9
	movlt r10, #1
	movge r10, #0
	blt .L2201
	b .L2205
.L2201:
	ldr r10, =0
	str r10, [fp, #-4]
	b .L2208
.L2202:
	ldr r10, =0
	add r9, r10, #-108
	add r10, fp, r9
	mov r0, r10
	bl  model
	mov r10, r0
	ldr r9, =0
	cmp r9, r10
	movne r10, #1
	moveq r10, #0
	bne .L2223
	b .L2229
.L2204:
.L2205:
	b .L2202
.L2206:
.L2208:
	ldr r10, [fp, #-4]
	ldr r9, =5
	cmp r10, r9
	movlt r10, #1
	movge r10, #0
	blt .L2209
	b .L2213
.L2209:
	bl  getint
	mov r10, r0
	ldr r9, [fp, #-8]
	ldr r8, [fp, #-4]
	ldr r7, =5
	mul r6, r9, r7
	add r9, r6, r8
	ldr r8, =4
	mul r7, r9, r8
	add r9, r7, #-108
	add r8, fp, r9
	str r10, [r8]
	ldr r10, [fp, #-4]
	add r9, r10, #1
	str r9, [fp, #-4]
	b .L2208
.L2210:
	ldr r10, [fp, #-8]
	add r9, r10, #1
	str r9, [fp, #-8]
	b .L2200
.L2212:
.L2213:
	b .L2210
.L2214:
.L2223:
	ldr r10, =99
	mov r0, r10
	bl  putch
	ldr r10, =97
	mov r0, r10
	bl  putch
	ldr r10, =116
	mov r0, r10
	bl  putch
	ldr r10, =10
	mov r0, r10
	bl  putch
	b .L2224
.L2224:
	ldr r10, [fp, #-112]
	sub r9, r10, #1
	str r9, [fp, #-112]
	b .L2192
.L2225:
	ldr r10, =100
	mov r0, r10
	bl  putch
	ldr r10, =111
	mov r0, r10
	bl  putch
	ldr r10, =103
	mov r0, r10
	bl  putch
	ldr r10, =10
	mov r0, r10
	bl  putch
	b .L2224
.L2228:
.L2229:
	b .L2225
.L2230:
.Lmain_END:
	add sp, sp, #112
	pop {r6, r7, r8, r9, r10, fp, lr}
	bx  lr

