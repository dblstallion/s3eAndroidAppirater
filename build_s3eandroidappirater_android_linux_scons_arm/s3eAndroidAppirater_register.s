	.arch armv5te
	.eabi_attribute 27, 3
	.fpu vfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 2
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"s3eAndroidAppirater_register.cpp"
	.section	.text._ZL26AppiraterEventOccured_wrapv,"ax",%progbits
	.align	2
	.type	_ZL26AppiraterEventOccured_wrapv, %function
_ZL26AppiraterEventOccured_wrapv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L2
	ldr	r2, .L2+4
.LPIC0:
	add	r3, pc, r3
	mov	r1, #0
	ldr	r0, [r3, r2]
	b	s3eEdkThreadRunOnOS(PLT)
.L3:
	.align	2
.L2:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC0+8)
	.word	AppiraterEventOccured(GOT)
	.size	_ZL26AppiraterEventOccured_wrapv, .-_ZL26AppiraterEventOccured_wrapv
	.section	.text._ZL18AppiraterInit_wrapPKcS0_iiiS0_S0_S0_S0_,"ax",%progbits
	.align	2
	.type	_ZL18AppiraterInit_wrapPKcS0_iiiS0_S0_S0_S0_, %function
_ZL18AppiraterInit_wrapPKcS0_iiiS0_S0_S0_S0_:
	@ args = 20, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	ip, .L5
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	ldr	r4, .L5+4
	sub	sp, sp, #32
.LPIC1:
	add	ip, pc, ip
	mov	lr, r0
	ldr	r8, [sp, #56]
	ldr	r0, [ip, r4]
	ldr	r7, [sp, #60]
	ldr	r6, [sp, #64]
	ldr	r5, [sp, #68]
	ldr	r4, [sp, #72]
	stmia	sp, {r2, r3}
	str	r8, [sp, #8]
	mov	r3, r1
	mov	r2, lr
	str	r7, [sp, #12]
	str	r6, [sp, #16]
	str	r5, [sp, #20]
	str	r4, [sp, #24]
	mov	r1, #9
	bl	s3eEdkThreadRunOnOS(PLT)
	add	sp, sp, #32
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L6:
	.align	2
.L5:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC1+8)
	.word	AppiraterInit(GOT)
	.size	_ZL18AppiraterInit_wrapPKcS0_iiiS0_S0_S0_S0_, .-_ZL18AppiraterInit_wrapPKcS0_iiiS0_S0_S0_S0_
	.section	.text._Z30s3eAndroidAppiraterRegisterExtv,"ax",%progbits
	.align	2
	.global	_Z30s3eAndroidAppiraterRegisterExtv
	.hidden	_Z30s3eAndroidAppiraterRegisterExtv
	.type	_Z30s3eAndroidAppiraterRegisterExtv, %function
_Z30s3eAndroidAppiraterRegisterExtv:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	ldr	ip, .L8
	ldr	lr, .L8+4
	ldr	r0, .L8+8
	ldr	r1, .L8+12
	sub	sp, sp, #36
.LPIC5:
	add	ip, pc, ip
	mov	r3, #0
.LPIC2:
	add	lr, pc, lr
.LPIC3:
	add	r0, pc, r0
	ldr	r2, .L8+16
	str	r0, [sp, #20]
	str	r3, [sp, #24]
	str	r3, [sp, #28]
	str	lr, [sp, #16]
	ldr	r1, [ip, r1]
	str	r1, [sp]
	ldr	r0, .L8+20
	ldr	r2, [ip, r2]
.LPIC4:
	add	r0, pc, r0
	stmib	sp, {r2, r3}
	add	r1, sp, #16
	mov	r2, #8
	add	r3, sp, #24
	bl	s3eEdkRegister(PLT)
	add	sp, sp, #36
	@ sp needed
	ldr	pc, [sp], #4
.L9:
	.align	2
.L8:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC5+8)
	.word	_ZL18AppiraterInit_wrapPKcS0_iiiS0_S0_S0_S0_-(.LPIC2+8)
	.word	_ZL26AppiraterEventOccured_wrapv-(.LPIC3+8)
	.word	_Z23s3eAndroidAppiraterInitv(GOT)
	.word	_Z28s3eAndroidAppiraterTerminatev(GOT)
	.word	.LC0-(.LPIC4+8)
	.size	_Z30s3eAndroidAppiraterRegisterExtv, .-_Z30s3eAndroidAppiraterRegisterExtv
	.section	.text.RegisterExt,"ax",%progbits
	.align	2
	.global	RegisterExt
	.type	RegisterExt, %function
RegisterExt:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	ldr	ip, .L11
	ldr	lr, .L11+4
	ldr	r0, .L11+8
	ldr	r1, .L11+12
	sub	sp, sp, #36
.LPIC9:
	add	ip, pc, ip
	mov	r3, #0
.LPIC6:
	add	lr, pc, lr
.LPIC7:
	add	r0, pc, r0
	ldr	r2, .L11+16
	str	r0, [sp, #20]
	str	r3, [sp, #24]
	str	r3, [sp, #28]
	str	lr, [sp, #16]
	ldr	r1, [ip, r1]
	str	r1, [sp]
	ldr	r0, .L11+20
	ldr	r2, [ip, r2]
.LPIC8:
	add	r0, pc, r0
	stmib	sp, {r2, r3}
	add	r1, sp, #16
	mov	r2, #8
	add	r3, sp, #24
	bl	s3eEdkRegister(PLT)
	add	sp, sp, #36
	@ sp needed
	ldr	pc, [sp], #4
.L12:
	.align	2
.L11:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC9+8)
	.word	_ZL18AppiraterInit_wrapPKcS0_iiiS0_S0_S0_S0_-(.LPIC6+8)
	.word	_ZL26AppiraterEventOccured_wrapv-(.LPIC7+8)
	.word	_Z23s3eAndroidAppiraterInitv(GOT)
	.word	_Z28s3eAndroidAppiraterTerminatev(GOT)
	.word	.LC0-(.LPIC8+8)
	.size	RegisterExt, .-RegisterExt
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"s3eAndroidAppirater\000"
	.ident	"GCC: (GNU) 4.8"
	.section	.note.GNU-stack,"",%progbits
