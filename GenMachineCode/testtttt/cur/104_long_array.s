	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm
	.text
	.global long_array
	.type long_array , %function
long_array:
	push {r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #120020
.L42:
	str r0, [fp, #-120020]
	ldr r10, =0
	str r10, [fp, #-16]
	b .L48
.L48:
	ldr r10, [fp, #-16]
	ldr r9, =10000
	cmp r10, r9
	movlt r10, #1
	movge r10, #0
	blt .L49
	b .L53
.L49:
	ldr r10, [fp, #-16]
	ldr r9, [fp, #-16]
	mul r8, r10, r9
	ldr r10, =10
	sdiv r9, r8, r10
	mul r10, r9, r10
	sub r9, r8, r10
	ldr r10, [fp, #-16]
	ldr r8, =4
	mul r7, r10, r8
	add r10, r7, #-120016
	add r8, fp, r10
	str r9, [r8]
	ldr r10, [fp, #-16]
	add r9, r10, #1
	str r9, [fp, #-16]
	b .L48
.L53:
	b .L50
.L50:
	ldr r10, =0
	str r10, [fp, #-16]
	b .L61
.L61:
	ldr r10, [fp, #-16]
	ldr r9, =10000
	cmp r10, r9
	movlt r10, #1
	movge r10, #0
	blt .L62
	b .L66
.L62:
	ldr r10, [fp, #-16]
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-120016
	add r9, fp, r10
	ldr r10, [r9]
	ldr r9, [fp, #-16]
	ldr r8, =4
	mul r7, r9, r8
	add r9, r7, #-120016
	add r8, fp, r9
	ldr r9, [r8]
	mul r8, r10, r9
	ldr r10, =10
	sdiv r9, r8, r10
	mul r9, r9, r10
	sub r10, r8, r9
	ldr r9, [fp, #-16]
	ldr r8, =4
	mul r7, r9, r8
	add r9, r7, #-80016
	add r8, fp, r9
	str r10, [r8]
	ldr r10, [fp, #-16]
	add r9, r10, #1
	str r9, [fp, #-16]
	b .L61
.L66:
	b .L63
.L63:
	ldr r10, =0
	str r10, [fp, #-16]
	b .L80
.L80:
	ldr r10, [fp, #-16]
	ldr r9, =10000
	cmp r10, r9
	movlt r10, #1
	movge r10, #0
	blt .L81
	b .L85
.L81:
	ldr r10, [fp, #-16]
	ldr r9, =4
	mul r8, r10, r9
	add r10, r8, #-80016
	add r9, fp, r10
	ldr r10, [r9]
	ldr r9, [fp, #-16]
	ldr r8, =4
	mul r7, r9, r8
	add r9, r7, #-80016
	add r8, fp, r9
	ldr r9, [r8]
	mul r8, r10, r9
	ldr r10, =100
	sdiv r9, r8, r10
	mul r10, r9, r10
	sub r9, r8, r10
	ldr r10, [fp, #-16]
	ldr r8, =4
	mul r7, r10, r8
	add r10, r7, #-120016
	add r8, fp, r10
	ldr r10, [r8]
	add r8, r9, r10
	ldr r10, [fp, #-16]
	ldr r9, =4
	mul r7, r10, r9
	add r10, r7, #-40016
	add r9, fp, r10
	str r8, [r9]
	ldr r10, [fp, #-16]
	add r9, r10, #1
	str r9, [fp, #-16]
	b .L80
.L85:
	b .L82
.L82:
	ldr r10, =0
	str r10, [fp, #-12]
	ldr r10, =0
	str r10, [fp, #-16]
	b .L104
.L104:
	ldr r10, [fp, #-16]
	ldr r9, =10000
	cmp r10, r9
	movlt r10, #1
	movge r10, #0
	blt .L105
	b .L109
.L105:
	ldr r10, [fp, #-16]
	ldr r9, =10
	cmp r10, r9
	movlt r10, #1
	movge r10, #0
	blt .L111
	b .L116
.L109:
	b .L106
.L111:
	ldr r10, [fp, #-12]
	ldr r9, [fp, #-16]
	ldr r8, =4
	mul r7, r9, r8
	add r9, r7, #-40016
	add r9, fp, r9
	ldr r8, [r9]
	add r9, r10, r8
	ldr r10, =1333
	sdiv r8, r9, r10
	mul r10, r8, r10
	sub r8, r9, r10
	str r8, [fp, #-12]
	ldr r10, [fp, #-12]
	mov r0, r10
	bl  putint
	b .L112
.L116:
	b .L113
.L106:
	ldr r10, [fp, #-12]
	mov r0, r10
	b .Llong_array_END
.L112:
	ldr r10, [fp, #-16]
	add r9, r10, #1
	str r9, [fp, #-16]
	b .L104
.L113:
	ldr r10, [fp, #-16]
	ldr r9, =20
	cmp r10, r9
	movlt r10, #1
	movge r10, #0
	blt .L124
	b .L129
	b .F0
.LTORG
.F0:
.L124:
	ldr r10, =5000
	str r10, [fp, #-8]
	b .L132
.L129:
	b .L126
.L132:
	ldr r10, [fp, #-8]
	ldr r9, =10000
	cmp r10, r9
	movlt r10, #1
	movge r10, #0
	blt .L133
	b .L137
.L126:
	ldr r10, [fp, #-16]
	ldr r9, =30
	cmp r10, r9
	movlt r10, #1
	movge r10, #0
	blt .L150
	b .L155
.L133:
	ldr r10, [fp, #-12]
	ldr r9, [fp, #-16]
	ldr r8, =4
	mul r7, r9, r8
	add r9, r7, #-40016
	add r8, fp, r9
	ldr r9, [r8]
	add r8, r10, r9
	ldr r10, [fp, #-8]
	ldr r9, =4
	mul r7, r10, r9
	add r10, r7, #-120016
	add r9, fp, r10
	ldr r10, [r9]
	sub r9, r8, r10
	str r9, [fp, #-12]
	ldr r10, [fp, #-8]
	add r9, r10, #1
	str r9, [fp, #-8]
	b .L132
.L137:
	b .L134
.L150:
	ldr r10, =5000
	str r10, [fp, #-4]
	b .L158
.L155:
	b .L152
.L134:
	ldr r10, [fp, #-12]
	mov r0, r10
	bl  putint
	b .L125
.L158:
	ldr r10, [fp, #-4]
	ldr r9, =10000
	cmp r10, r9
	movlt r10, #1
	movge r10, #0
	blt .L159
	b .L163
.L152:
	ldr r10, [fp, #-12]
	ldr r9, [fp, #-16]
	ldr r8, =4
	mul r7, r9, r8
	add r9, r7, #-40016
	add r8, fp, r9
	ldr r9, [r8]
	ldr r8, [fp, #-120020]
	mul r7, r9, r8
	add r9, r10, r7
	ldr r10, =99988
	sdiv r8, r9, r10
	mul r8, r8, r10
	sub r10, r9, r8
	str r10, [fp, #-12]
	b .L151
.L125:
	b .L112
.L159:
	ldr r10, [fp, #-4]
	ldr r9, =2233
	cmp r10, r9
	movgt r10, #1
	movle r10, #0
	bgt .L165
	b .L170
.L163:
	b .L160
.L151:
	b .L125
.L165:
	ldr r10, [fp, #-12]
	ldr r9, [fp, #-16]
	ldr r8, =4
	mul r7, r9, r8
	add r9, r7, #-80016
	add r8, fp, r9
	ldr r9, [r8]
	add r8, r10, r9
	ldr r10, [fp, #-4]
	ldr r9, =4
	mul r7, r10, r9
	add r10, r7, #-120016
	add r10, fp, r10
	ldr r9, [r10]
	sub r10, r8, r9
	str r10, [fp, #-12]
	ldr r10, [fp, #-4]
	add r9, r10, #1
	str r9, [fp, #-4]
	b .L166
.L170:
	b .L167
.L160:
	ldr r10, [fp, #-12]
	mov r0, r10
	bl  putint
	b .L151
.L166:
	b .L158
.L167:
	ldr r10, [fp, #-12]
	ldr r9, [fp, #-16]
	ldr r8, =4
	mul r7, r9, r8
	add r9, r7, #-120016
	add r8, fp, r9
	ldr r9, [r8]
	add r8, r10, r9
	ldr r10, [fp, #-4]
	ldr r9, =4
	mul r7, r10, r9
	add r10, r7, #-40016
	add r9, fp, r10
	ldr r10, [r9]
	add r9, r8, r10
	ldr r10, =13333
	sdiv r8, r9, r10
	mul r10, r8, r10
	sub r8, r9, r10
	str r8, [fp, #-12]
	ldr r10, [fp, #-4]
	add r9, r10, #2
	str r9, [fp, #-4]
	b .L166
.Llong_array_END:
	add sp, sp, #120020
	pop {r7, r8, r9, r10, fp, lr}
	bx  lr

	.global main
	.type main , %function
main:
	push {r10, fp, lr}
	mov fp, sp
	sub sp, sp, #0
.L201:
	ldr r10, =9
	mov r0, r10
	bl  long_array
	mov r10, r0
	mov r0, r10
	b .Lmain_END
.Lmain_END:
	add sp, sp, #0
	pop {r10, fp, lr}
	bx  lr

