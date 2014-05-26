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
	.file	"s3eAndroidAppirater.cpp"
	.section	.text._Z23s3eAndroidAppiraterInitv,"ax",%progbits
	.align	2
	.global	_Z23s3eAndroidAppiraterInitv
	.hidden	_Z23s3eAndroidAppiraterInitv
	.type	_Z23s3eAndroidAppiraterInitv, %function
_Z23s3eAndroidAppiraterInitv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	_Z32s3eAndroidAppiraterInit_platformv(PLT)
	.size	_Z23s3eAndroidAppiraterInitv, .-_Z23s3eAndroidAppiraterInitv
	.section	.text._Z28s3eAndroidAppiraterTerminatev,"ax",%progbits
	.align	2
	.global	_Z28s3eAndroidAppiraterTerminatev
	.hidden	_Z28s3eAndroidAppiraterTerminatev
	.type	_Z28s3eAndroidAppiraterTerminatev, %function
_Z28s3eAndroidAppiraterTerminatev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	_Z37s3eAndroidAppiraterTerminate_platformv(PLT)
	.size	_Z28s3eAndroidAppiraterTerminatev, .-_Z28s3eAndroidAppiraterTerminatev
	.section	.text.AppiraterInit,"ax",%progbits
	.align	2
	.global	AppiraterInit
	.hidden	AppiraterInit
	.type	AppiraterInit, %function
AppiraterInit:
	@ args = 20, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5, r6}
	ldmfd	sp!, {r4, r5, r6}
	b	_Z22AppiraterInit_platformPKcS0_iiiS0_S0_S0_S0_(PLT)
	.size	AppiraterInit, .-AppiraterInit
	.section	.text.AppiraterEventOccured,"ax",%progbits
	.align	2
	.global	AppiraterEventOccured
	.hidden	AppiraterEventOccured
	.type	AppiraterEventOccured, %function
AppiraterEventOccured:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	_Z30AppiraterEventOccured_platformv(PLT)
	.size	AppiraterEventOccured, .-AppiraterEventOccured
	.ident	"GCC: (GNU) 4.8"
	.section	.note.GNU-stack,"",%progbits
