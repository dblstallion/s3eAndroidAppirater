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
	.file	"s3eAndroidAppirater_platform.cpp"
	.section	.text._ZL27s3eEdkAndroidFindClass_realPKc,"ax",%progbits
	.align	2
	.type	_ZL27s3eEdkAndroidFindClass_realPKc, %function
_ZL27s3eEdkAndroidFindClass_realPKc:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	sub	sp, sp, #8
	mov	r5, r0
	bl	s3eEdkJNIGetVM(PLT)
	add	r1, sp, #8
	mov	r2, #0
	str	r2, [r1, #-4]!
	ldr	r2, .L9
	ldr	r3, [r0]
	ldr	r3, [r3, #24]
	blx	r3
	ldr	r4, [sp, #4]
	mov	r1, r5
	ldr	r3, [r4]
	mov	r0, r4
	ldr	r3, [r3, #24]
	blx	r3
	ldr	r3, [r4]
	subs	r5, r0, #0
	mov	r0, r4
	beq	.L8
	mov	r1, r5
	ldr	r3, [r3, #84]
	blx	r3
	ldr	r3, [r4]
	mov	r1, r5
	ldr	r3, [r3, #92]
	mov	r6, r0
	mov	r0, r4
	blx	r3
	mov	r5, r6
.L3:
	mov	r0, r5
	add	sp, sp, #8
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, pc}
.L8:
	ldr	r3, [r3, #60]
	blx	r3
	cmp	r0, #0
	beq	.L3
	ldr	r3, [r4]
	mov	r0, r4
	ldr	r3, [r3, #68]
	blx	r3
	mov	r0, r5
	add	sp, sp, #8
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, pc}
.L10:
	.align	2
.L9:
	.word	65538
	.size	_ZL27s3eEdkAndroidFindClass_realPKc, .-_ZL27s3eEdkAndroidFindClass_realPKc
	.section	.text._ZN7_JNIEnv9NewObjectEP7_jclassP10_jmethodIDz,"axG",%progbits,_ZN7_JNIEnv9NewObjectEP7_jclassP10_jmethodIDz,comdat
	.align	2
	.weak	_ZN7_JNIEnv9NewObjectEP7_jclassP10_jmethodIDz
	.hidden	_ZN7_JNIEnv9NewObjectEP7_jclassP10_jmethodIDz
	.type	_ZN7_JNIEnv9NewObjectEP7_jclassP10_jmethodIDz, %function
_ZN7_JNIEnv9NewObjectEP7_jclassP10_jmethodIDz:
	@ args = 4, pretend = 8, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 1
	stmfd	sp!, {r2, r3}
	stmfd	sp!, {r4, lr}
	sub	sp, sp, #8
	ldr	r3, [r0]
	add	ip, sp, #20
	ldr	r4, [r3, #116]
	ldr	r2, [sp, #16]
	mov	r3, ip
	str	ip, [sp, #4]
	blx	r4
	add	sp, sp, #8
	@ sp needed
	ldmfd	sp!, {r4, lr}
	add	sp, sp, #8
	bx	lr
	.size	_ZN7_JNIEnv9NewObjectEP7_jclassP10_jmethodIDz, .-_ZN7_JNIEnv9NewObjectEP7_jclassP10_jmethodIDz
	.section	.text._ZN7_JNIEnv13CallIntMethodEP8_jobjectP10_jmethodIDz,"axG",%progbits,_ZN7_JNIEnv13CallIntMethodEP8_jobjectP10_jmethodIDz,comdat
	.align	2
	.weak	_ZN7_JNIEnv13CallIntMethodEP8_jobjectP10_jmethodIDz
	.hidden	_ZN7_JNIEnv13CallIntMethodEP8_jobjectP10_jmethodIDz
	.type	_ZN7_JNIEnv13CallIntMethodEP8_jobjectP10_jmethodIDz, %function
_ZN7_JNIEnv13CallIntMethodEP8_jobjectP10_jmethodIDz:
	@ args = 4, pretend = 8, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 1
	stmfd	sp!, {r2, r3}
	stmfd	sp!, {r4, lr}
	sub	sp, sp, #8
	ldr	r3, [r0]
	add	ip, sp, #20
	ldr	r4, [r3, #200]
	ldr	r2, [sp, #16]
	mov	r3, ip
	str	ip, [sp, #4]
	blx	r4
	add	sp, sp, #8
	@ sp needed
	ldmfd	sp!, {r4, lr}
	add	sp, sp, #8
	bx	lr
	.size	_ZN7_JNIEnv13CallIntMethodEP8_jobjectP10_jmethodIDz, .-_ZN7_JNIEnv13CallIntMethodEP8_jobjectP10_jmethodIDz
	.section	.text._Z32s3eAndroidAppiraterInit_platformv,"ax",%progbits
	.align	2
	.global	_Z32s3eAndroidAppiraterInit_platformv
	.hidden	_Z32s3eAndroidAppiraterInit_platformv
	.type	_Z32s3eAndroidAppiraterInit_platformv, %function
_Z32s3eAndroidAppiraterInit_platformv:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	sub	sp, sp, #8
	bl	s3eEdkJNIGetVM(PLT)
	mov	r6, #0
	add	r1, sp, #8
	str	r6, [r1, #-4]!
	ldr	r2, .L32
	ldr	r3, [r0]
	ldr	r3, [r3, #24]
	blx	r3
	ldr	r0, .L32+4
	ldr	r2, .L32+8
.LPIC0:
	add	r0, pc, r0
	mov	r1, #1
.LPIC1:
	add	r2, pc, r2
	ldr	r4, [sp, #4]
	bl	s3eEdkThreadRunOnOS(PLT)
	subs	r5, r0, #0
	beq	.L14
	ldr	r3, [r4]
	ldr	r2, .L32+12
	ldr	ip, [r3, #132]
	ldr	r3, .L32+16
.LPIC2:
	add	r2, pc, r2
	mov	r0, r4
	mov	r1, r5
.LPIC3:
	add	r3, pc, r3
	blx	ip
	subs	r2, r0, #0
	beq	.L14
	mov	r0, r4
	mov	r1, r5
	bl	_ZN7_JNIEnv9NewObjectEP7_jclassP10_jmethodIDz(PLT)
	subs	r8, r0, #0
	beq	.L14
	ldr	r3, [r4]
	ldr	r2, .L32+20
	ldr	ip, [r3, #132]
	ldr	r3, .L32+24
	mov	r0, r4
	mov	r1, r5
.LPIC4:
	add	r2, pc, r2
.LPIC5:
	add	r3, pc, r3
	blx	ip
	ldr	r7, .L32+28
.LPIC6:
	add	r7, pc, r7
	cmp	r0, r6
	str	r0, [r7]
	beq	.L14
	ldr	r3, [r4]
	ldr	r2, .L32+32
	ldr	ip, [r3, #132]
	ldr	r3, .L32+36
	mov	r0, r4
	mov	r1, r5
.LPIC7:
	add	r2, pc, r2
.LPIC8:
	add	r3, pc, r3
	blx	ip
	cmp	r0, r6
	str	r0, [r7, #4]
	beq	.L14
	ldr	r3, [r4]
	mov	r1, r8
	mov	r0, r4
	ldr	r3, [r3, #84]
	blx	r3
	ldr	r3, [r4]
	mov	r1, r8
	ldr	r3, [r3, #92]
	str	r0, [r7, #8]
	mov	r0, r4
	blx	r3
	ldr	r3, [r4]
	mov	r0, r4
	mov	r1, r5
	ldr	r3, [r3, #88]
	blx	r3
	mov	r0, r6
	add	sp, sp, #8
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L14:
	ldr	r3, [r4]
	mov	r0, r4
	ldr	r3, [r3, #60]
	blx	r3
	cmp	r0, #0
	moveq	r0, #1
	beq	.L15
	ldr	r3, [r4]
	mov	r0, r4
	ldr	r3, [r3, #64]
	blx	r3
	ldr	r3, [r4]
	mov	r0, r4
	ldr	r3, [r3, #68]
	blx	r3
	mov	r0, #1
.L15:
	add	sp, sp, #8
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L33:
	.align	2
.L32:
	.word	65538
	.word	_ZL27s3eEdkAndroidFindClass_realPKc-(.LPIC0+8)
	.word	.LC0-(.LPIC1+8)
	.word	.LC1-(.LPIC2+8)
	.word	.LC2-(.LPIC3+8)
	.word	.LC3-(.LPIC4+8)
	.word	.LC4-(.LPIC5+8)
	.word	.LANCHOR0-(.LPIC6+8)
	.word	.LC5-(.LPIC7+8)
	.word	.LC6-(.LPIC8+8)
	.size	_Z32s3eAndroidAppiraterInit_platformv, .-_Z32s3eAndroidAppiraterInit_platformv
	.section	.text._Z37s3eAndroidAppiraterTerminate_platformv,"ax",%progbits
	.align	2
	.global	_Z37s3eAndroidAppiraterTerminate_platformv
	.hidden	_Z37s3eAndroidAppiraterTerminate_platformv
	.type	_Z37s3eAndroidAppiraterTerminate_platformv, %function
_Z37s3eAndroidAppiraterTerminate_platformv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	_Z37s3eAndroidAppiraterTerminate_platformv, .-_Z37s3eAndroidAppiraterTerminate_platformv
	.section	.text._Z22AppiraterInit_platformPKcS0_iiiS0_S0_S0_S0_,"ax",%progbits
	.align	2
	.global	_Z22AppiraterInit_platformPKcS0_iiiS0_S0_S0_S0_
	.hidden	_Z22AppiraterInit_platformPKcS0_iiiS0_S0_S0_S0_
	.type	_Z22AppiraterInit_platformPKcS0_iiiS0_S0_S0_S0_, %function
_Z22AppiraterInit_platformPKcS0_iiiS0_S0_S0_S0_:
	@ args = 20, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #44
	mov	r6, r3
	mov	fp, r1
	mov	r10, r2
	ldr	r9, [sp, #84]
	ldr	r8, [sp, #88]
	ldr	r7, [sp, #92]
	mov	r5, r0
	bl	s3eEdkJNIGetVM(PLT)
	add	r1, sp, #40
	mov	r2, #0
	str	r2, [r1, #-4]!
	ldr	r2, .L36
	ldr	lr, [r0]
	ldr	r4, [lr, #24]
	blx	r4
	ldr	r4, [sp, #36]
	mov	r1, r5
	ldr	r2, [r4]
	mov	r0, r4
	ldr	r2, [r2, #668]
	blx	r2
	ldr	r2, [r4]
	mov	r1, fp
	ldr	r2, [r2, #668]
	mov	r5, r0
	mov	r0, r4
	blx	r2
	ldr	r2, [r4]
	mov	r1, r9
	ldr	r2, [r2, #668]
	mov	fp, r0
	mov	r0, r4
	blx	r2
	ldr	r2, [r4]
	mov	r1, r8
	ldr	r2, [r2, #668]
	mov	r9, r0
	mov	r0, r4
	blx	r2
	ldr	r2, [r4]
	mov	r1, r7
	ldr	r2, [r2, #668]
	mov	r8, r0
	mov	r0, r4
	blx	r2
	ldr	r2, [r4]
	ldr	r1, [sp, #96]
	ldr	r2, [r2, #668]
	mov	r7, r0
	mov	r0, r4
	blx	r2
	ldr	r2, .L36+4
	ldr	r3, [sp, #80]
.LPIC11:
	add	r2, pc, r2
	str	r10, [sp, #4]
	ldr	r1, [r2, #8]
	ldr	r2, [r2]
	str	r3, [sp, #12]
	str	fp, [sp]
	str	r6, [sp, #8]
	str	r9, [sp, #16]
	str	r8, [sp, #20]
	str	r7, [sp, #24]
	mov	r3, r5
	str	r0, [sp, #28]
	mov	r0, r4
	bl	_ZN7_JNIEnv13CallIntMethodEP8_jobjectP10_jmethodIDz(PLT)
	add	sp, sp, #44
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L37:
	.align	2
.L36:
	.word	65538
	.word	.LANCHOR0-(.LPIC11+8)
	.size	_Z22AppiraterInit_platformPKcS0_iiiS0_S0_S0_S0_, .-_Z22AppiraterInit_platformPKcS0_iiiS0_S0_S0_S0_
	.section	.text._Z30AppiraterEventOccured_platformv,"ax",%progbits
	.align	2
	.global	_Z30AppiraterEventOccured_platformv
	.hidden	_Z30AppiraterEventOccured_platformv
	.type	_Z30AppiraterEventOccured_platformv, %function
_Z30AppiraterEventOccured_platformv:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	sub	sp, sp, #12
	bl	s3eEdkJNIGetVM(PLT)
	add	r1, sp, #8
	mov	r3, #0
	str	r3, [r1, #-4]!
	ldr	r2, .L39
	ldr	r3, [r0]
	ldr	r3, [r3, #24]
	blx	r3
	ldr	r3, .L39+4
	ldr	r0, [sp, #4]
.LPIC13:
	add	r3, pc, r3
	ldr	r1, [r3, #8]
	ldr	r2, [r3, #4]
	bl	_ZN7_JNIEnv13CallIntMethodEP8_jobjectP10_jmethodIDz(PLT)
	add	sp, sp, #12
	@ sp needed
	ldr	pc, [sp], #4
.L40:
	.align	2
.L39:
	.word	65538
	.word	.LANCHOR0-(.LPIC13+8)
	.size	_Z30AppiraterEventOccured_platformv, .-_Z30AppiraterEventOccured_platformv
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"s3eAndroidAppirater\000"
.LC1:
	.ascii	"<init>\000"
	.space	1
.LC2:
	.ascii	"()V\000"
.LC3:
	.ascii	"AppiraterInit\000"
	.space	2
.LC4:
	.ascii	"(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/"
	.ascii	"String;Ljava/lang/String;Ljava/lang/String;Ljava/la"
	.ascii	"ng/String;)I\000"
	.space	1
.LC5:
	.ascii	"AppiraterEventOccured\000"
	.space	2
.LC6:
	.ascii	"()I\000"
	.bss
	.align	2
.LANCHOR0 = . + 0
	.type	_ZL15g_AppiraterInit, %object
	.size	_ZL15g_AppiraterInit, 4
_ZL15g_AppiraterInit:
	.space	4
	.type	_ZL23g_AppiraterEventOccured, %object
	.size	_ZL23g_AppiraterEventOccured, 4
_ZL23g_AppiraterEventOccured:
	.space	4
	.type	_ZL5g_Obj, %object
	.size	_ZL5g_Obj, 4
_ZL5g_Obj:
	.space	4
	.ident	"GCC: (GNU) 4.8"
	.section	.note.GNU-stack,"",%progbits
