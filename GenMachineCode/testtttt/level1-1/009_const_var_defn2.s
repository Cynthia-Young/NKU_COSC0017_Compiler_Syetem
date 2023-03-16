	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm
	.text
	.global main
	.type main , %function
main:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #0
.L0:
	mov r0, #5
	b .Lmain_END
.Lmain_END:
	add sp, sp, #0
	pop {fp, lr}
	bx  lr

