	.include "asm/macros.inc"
	.include "global.inc"
	.section .text
	.balign 4, 0

	arm_func_start MOD04_021EA55C
MOD04_021EA55C: ; 0x021EA55C
	stmdb sp!, {lr}
	sub sp, sp, #4
	bl MOD04_021DF760
	bl MOD04_021FD444
	ldr r1, _021EA584 ; =0xFFFFFDF9
	add r0, r0, r1
	cmp r0, #0
	movle r0, #0
	add sp, sp, #4
	ldmfd sp!, {pc}
	.align 2, 0
_021EA584: .word 0xFFFFFDF9
	arm_func_end MOD04_021EA55C

	arm_func_start MOD04_021EA588
MOD04_021EA588: ; 0x021EA588
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	mov r4, r1
	bl MOD04_021EA9AC
	ldrb r1, [r0, #0x1e]
	strb r1, [r0, #0x1d]
	ldrh r1, [r0, #0x22]
	cmp r1, #2
	beq _021EA5C4
	cmp r1, #3
	beq _021EA5C4
	cmp r1, #4
	addne sp, sp, #4
	ldmneia sp!, {r4, r5, pc}
_021EA5C4:
	mov r0, r5
	mov r2, r4
	bl MOD04_021E8C08
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	arm_func_end MOD04_021EA588

	arm_func_start MOD04_021EA5D8
MOD04_021EA5D8: ; 0x021EA5D8
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	ldr r3, _021EA6D0 ; =UNK04_02210E3C
	mov r7, r0
	ldr r4, [r3]
	mov r3, #0x30
	mla r4, r7, r3, r4
	mov r6, r1
	mov r5, r2
	bl MOD04_021EA974
	cmp r0, #2
	bne _021EA644
	ldr r3, [r4, #0x10]
	ldr r0, [r4, #8]
	add r1, r3, r5
	cmp r1, r0
	ble _021EA630
	ldr r1, _021EA6D4 ; =0xFFFE82AC
	mov r0, #6
	bl MOD04_021DD6B0
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, pc}
_021EA630:
	ldr r1, [r4, #4]
	mov r0, r6
	mov r2, r5
	add r1, r1, r3
	bl MI_CpuCopy8
_021EA644:
	ldr r0, [r4, #0x10]
	add r0, r0, r5
	str r0, [r4, #0x10]
	ldr r2, [r4, #0x18]
	ldr r0, [r4, #0x10]
	cmp r0, r2
	bne _021EA694
	mov r0, #1
	strb r0, [r4, #0x1d]
	mov r1, #0
	str r1, [r4, #0x10]
	ldr r0, _021EA6D0 ; =UNK04_02210E3C
	str r1, [r4, #0x18]
	ldr r0, [r0]
	ldr r3, [r0, #0x604]
	cmp r3, #0
	beq _021EA694
	ldr r1, [r4, #4]
	mov r0, r7
	blx r3
_021EA694:
	ldr r0, _021EA6D0 ; =UNK04_02210E3C
	ldr r0, [r0]
	ldr r0, [r0, #0x608]
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	ldr r0, [r4, #0x2c]
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	bl OS_GetTick
	str r0, [r4, #0x24]
	str r1, [r4, #0x28]
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_021EA6D0: .word UNK04_02210E3C
_021EA6D4: .word 0xFFFE82AC
	arm_func_end MOD04_021EA5D8

	arm_func_start MOD04_021EA6D8
MOD04_021EA6D8: ; 0x021EA6D8
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0xc
	ldr r4, _021EA79C ; =UNK04_02210E3C
	mov r3, #0x30
	ldr r4, [r4]
	mov r7, r1
	mla r5, r0, r3, r4
	mov r6, r2
	bl MOD04_021EA974
	strb r0, [r5, #0x1e]
	mov r0, r7
	bl MOD04_021EAD6C
	mov r4, r0
	cmp r4, #4
	addls pc, pc, r4, lsl #2
	b _021EA790
_021EA718: ; jump table
	b _021EA790 ; case 0
	b _021EA72C ; case 1
	b _021EA788 ; case 2
	b _021EA788 ; case 3
	b _021EA788 ; case 4
_021EA72C:
	cmp r6, #8
	addne sp, sp, #0xc
	ldmneia sp!, {r4, r5, r6, r7, pc}
	add r1, sp, #0
	mov r0, r7
	mov r2, #8
	bl MI_CpuCopy8
	ldr r1, [sp]
	mov r0, #0
	str r1, [r5, #0x18]
	str r0, [r5, #0x10]
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _021EA77C
	ldr r1, [r5, #8]
	ldr r0, [r5, #0x18]
	cmp r1, r0
	movge r0, #2
	strgeb r0, [r5, #0x1d]
	bge _021EA790
_021EA77C:
	mov r0, #4
	strb r0, [r5, #0x1d]
	b _021EA790
_021EA788:
	mov r0, #3
	strb r0, [r5, #0x1d]
_021EA790:
	strh r4, [r5, #0x22]
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_021EA79C: .word UNK04_02210E3C
	arm_func_end MOD04_021EA6D8

	arm_func_start MOD04_021EA7A0
MOD04_021EA7A0: ; 0x021EA7A0
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	mov r7, r1
	mov r6, r2
	bl MOD04_021DF748
	ldr r1, _021EA854 ; =UNK04_02210E3C
	mov r4, r0
	ldr r1, [r1]
	mov r0, #0x30
	mla r5, r4, r0, r1
	ldr r1, [r5, #4]
	cmp r1, #0
	addeq sp, sp, #4
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	ldr r0, [r5, #8]
	cmp r0, r6
	addlt sp, sp, #4
	ldmltia sp!, {r4, r5, r6, r7, pc}
	mov r0, r7
	mov r2, r6
	bl MI_CpuCopy8
	ldr r0, _021EA854 ; =UNK04_02210E3C
	ldr r0, [r0]
	ldr r3, [r0, #0x604]
	cmp r3, #0
	beq _021EA818
	ldr r1, [r5, #4]
	mov r0, r4
	mov r2, r6
	blx r3
_021EA818:
	ldr r0, _021EA854 ; =UNK04_02210E3C
	ldr r0, [r0]
	ldr r0, [r0, #0x608]
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	ldr r0, [r5, #0x2c]
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	bl OS_GetTick
	str r0, [r5, #0x24]
	str r1, [r5, #0x28]
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_021EA854: .word UNK04_02210E3C
	arm_func_end MOD04_021EA7A0

	arm_func_start MOD04_021EA858
MOD04_021EA858: ; 0x021EA858
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r1
	mov r5, r2
	bl MOD04_021DF748
	mov r4, r0
	bl MOD04_021EA974
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	b _021EA934
_021EA87C: ; jump table
	b _021EA890 ; case 0
	b _021EA8BC ; case 1
	b _021EA8D0 ; case 2
	b _021EA8E4 ; case 3
	b _021EA8F8 ; case 4
_021EA890:
	mov r0, r6
	bl MOD04_021EAD6C
	cmp r0, #2
	ldmloia sp!, {r4, r5, r6, pc}
	cmp r0, #4
	ldmhiia sp!, {r4, r5, r6, pc}
	mov r0, r4
	mov r1, r6
	mov r2, r5
	bl MOD04_021EA6D8
	ldmia sp!, {r4, r5, r6, pc}
_021EA8BC:
	mov r0, r4
	mov r1, r6
	mov r2, r5
	bl MOD04_021EA6D8
	ldmia sp!, {r4, r5, r6, pc}
_021EA8D0:
	mov r0, r4
	mov r1, r6
	mov r2, r5
	bl MOD04_021EA5D8
	ldmia sp!, {r4, r5, r6, pc}
_021EA8E4:
	mov r0, r4
	mov r1, r6
	mov r2, r5
	bl MOD04_021EA588
	ldmia sp!, {r4, r5, r6, pc}
_021EA8F8:
	mov r0, #0x30
	mul ip, r4, r0
	ldr r0, _021EA944 ; =UNK04_02210E3C
	mov r3, #1
	ldr r1, [r0]
	mov r2, #0
	add r1, r1, ip
	strb r3, [r1, #0x1d]
	ldr r1, [r0]
	add r1, r1, ip
	str r2, [r1, #0x10]
	ldr r0, [r0]
	add r0, r0, ip
	str r2, [r0, #0x18]
	ldmia sp!, {r4, r5, r6, pc}
_021EA934:
	ldr r1, _021EA948 ; =0xFFFE82B6
	mov r0, #6
	bl MOD04_021DD6B0
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_021EA944: .word UNK04_02210E3C
_021EA948: .word 0xFFFE82B6
	arm_func_end MOD04_021EA858

	arm_func_start MOD04_021EA94C
MOD04_021EA94C: ; 0x021EA94C
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bl MOD04_021DF760
	mov r1, r6
	mov r2, r5
	mov r3, r4
	bl MOD04_021FD498
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end MOD04_021EA94C

	arm_func_start MOD04_021EA974
MOD04_021EA974: ; 0x021EA974
	ldr r2, _021EA98C ; =UNK04_02210E3C
	mov r1, #0x30
	ldr r2, [r2]
	mla r1, r0, r1, r2
	ldrb r0, [r1, #0x1d]
	bx lr
	.align 2, 0
_021EA98C: .word UNK04_02210E3C
	arm_func_end MOD04_021EA974

	arm_func_start MOD04_021EA990
MOD04_021EA990: ; 0x021EA990
	ldr r2, _021EA9A8 ; =UNK04_02210E3C
	mov r1, #0x30
	ldr r2, [r2]
	mla r1, r0, r1, r2
	ldrb r0, [r1, #0x1c]
	bx lr
	.align 2, 0
_021EA9A8: .word UNK04_02210E3C
	arm_func_end MOD04_021EA990

	arm_func_start MOD04_021EA9AC
MOD04_021EA9AC: ; 0x021EA9AC
	ldr r2, _021EA9C0 ; =UNK04_02210E3C
	mov r1, #0x30
	ldr r2, [r2]
	mla r0, r1, r0, r2
	bx lr
	.align 2, 0
_021EA9C0: .word UNK04_02210E3C
	arm_func_end MOD04_021EA9AC

	arm_func_start MOD04_021EA9C4
MOD04_021EA9C4: ; 0x021EA9C4
	ldr r0, _021EA9D4 ; =UNK04_02210E3C
	mov r1, #0
	str r1, [r0]
	bx lr
	.align 2, 0
_021EA9D4: .word UNK04_02210E3C
	arm_func_end MOD04_021EA9C4

	arm_func_start MOD04_021EA9D8
MOD04_021EA9D8: ; 0x021EA9D8
	ldr r2, _021EAA60 ; =UNK04_02210E3C
	ldr r3, [r2]
	cmp r3, #0
	bxeq lr
	mov r1, #0x30
	mul r1, r0, r1
	add r0, r3, r1
	mov r3, #0
	str r3, [r0, #0xc]
	ldr r0, [r2]
	add r0, r0, r1
	str r3, [r0, #0x10]
	ldr r0, [r2]
	add r0, r0, r1
	str r3, [r0, #0x14]
	ldr r0, [r2]
	add r0, r0, r1
	str r3, [r0, #0x18]
	ldr r0, [r2]
	add r0, r0, r1
	strb r3, [r0, #0x1c]
	ldr r0, [r2]
	add r2, r0, #0x1d
	ldrb r0, [r2, r1]
	add r2, r2, r1
	cmp r0, #0
	movne r0, #1
	strneb r0, [r2]
	ldr r0, _021EAA60 ; =UNK04_02210E3C
	mov r2, #0
	ldr r0, [r0]
	add r0, r0, r1
	strh r2, [r0, #0x22]
	bx lr
	.align 2, 0
_021EAA60: .word UNK04_02210E3C
	arm_func_end MOD04_021EA9D8

	arm_func_start MOD04_021EAA64
MOD04_021EAA64: ; 0x021EAA64
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xc
	ldr r0, _021EAC14 ; =UNK04_02210E3C
	ldr r0, [r0]
	cmp r0, #0
	addeq sp, sp, #0xc
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	add r0, sp, #8
	bl MOD04_021DF8F4
	mov sb, r0
	cmp sb, #0
	mov r8, #0
	addle sp, sp, #0xc
	ldmleia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r4, _021EAC14 ; =UNK04_02210E3C
	str r8, [sp]
	str r8, [sp, #4]
	mov fp, #1
_021EAAAC:
	ldr r0, [sp, #8]
	ldrb r7, [r0, r8]
	mov r0, r7
	bl MOD04_021DF8A8
	cmp r0, #0
	beq _021EAB44
	mov r0, r7
	bl MOD04_021EA9AC
	ldr r1, [r4]
	mov r6, r0
	ldr r0, [r1, #0x608]
	cmp r0, #0
	beq _021EAB44
	ldr r0, [r6, #0x2c]
	cmp r0, #0
	beq _021EAB44
	bl OS_GetTick
	mov sl, r1
	ldr r2, [r6, #0x24]
	mov r5, r0
	subs r2, r5, r2
	ldr r1, [r6, #0x28]
	mov r0, r2, lsl #6
	sbc r1, sl, r1
	mov r1, r1, lsl #6
	orr r1, r1, r2, lsr #26
	ldr r2, _021EAC18 ; =0x000082EA
	ldr r3, [sp]
	bl _ll_udiv
	ldr r1, [r6, #0x2c]
	cmp r0, r1
	bls _021EAB44
	ldr r1, [r4]
	mov r0, r7
	ldr r1, [r1, #0x608]
	blx r1
	str r5, [r6, #0x24]
	str sl, [r6, #0x28]
_021EAB44:
	bl MOD04_021DF95C
	cmp r7, r0
	beq _021EAC00
	mov r0, r7
	bl MOD04_021EA990
	cmp r0, #1
	bne _021EAC00
	mov r0, r7
	bl MOD04_021EA9AC
	mov r5, r0
	ldr r0, [r4]
	ldr r2, [r5, #0x14]
	add r0, r0, #0x600
	ldr r1, [r5, #0xc]
	ldrh r6, [r0, #0x10]
	sub r0, r2, r1
	cmp r0, r6
	movle r6, r0
	mov r0, r7
	bl MOD04_021EA55C
	cmp r0, r6
	blt _021EAC00
	ldr r3, [r5]
	ldr r1, [r5, #0xc]
	mov r0, r7
	mov r2, r6
	add r1, r3, r1
	mov r3, fp
	bl MOD04_021EA94C
	ldr r0, [r5, #0xc]
	add r0, r0, r6
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, [r5, #0xc]
	cmp r1, r0
	bne _021EAC00
	ldr r1, [sp, #4]
	strb r1, [r5, #0x1c]
	str r1, [r5]
	str r1, [r5, #0xc]
	str r1, [r5, #0x14]
	ldr r1, [r4]
	ldr r2, [r1, #0x600]
	cmp r2, #0
	beq _021EAC00
	mov r1, r7
	blx r2
_021EAC00:
	add r8, r8, #1
	cmp r8, sb
	blt _021EAAAC
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_021EAC14: .word UNK04_02210E3C
_021EAC18: .word 0x000082EA
	arm_func_end MOD04_021EAA64

	arm_func_start MOD04_021EAC1C
MOD04_021EAC1C: ; 0x021EAC1C
	stmdb sp!, {r4, lr}
	ldr r2, _021EAC58 ; =UNK04_02210E3C
	mov r4, r1
	ldr r1, [r2]
	ldr r1, [r1, #0x60c]
	cmp r1, #0
	ldmeqia sp!, {r4, pc}
	bl MOD04_021DF748
	ldr r2, _021EAC58 ; =UNK04_02210E3C
	mov r1, r0
	ldr r2, [r2]
	mov r0, r4
	ldr r2, [r2, #0x60c]
	blx r2
	ldmia sp!, {r4, pc}
	.align 2, 0
_021EAC58: .word UNK04_02210E3C
	arm_func_end MOD04_021EAC1C

	arm_func_start MOD04_021EAC5C
MOD04_021EAC5C: ; 0x021EAC5C
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr ip, _021EACB0 ; =UNK04_02210E3C
	ldr ip, [ip]
	cmp ip, #0
	addeq sp, sp, #4
	ldmeqia sp!, {pc}
	cmp r1, #0
	addeq sp, sp, #4
	ldmeqia sp!, {pc}
	cmp r2, #0
	addeq sp, sp, #4
	ldmeqia sp!, {pc}
	cmp r3, #0
	beq _021EACA4
	bl MOD04_021EA858
	add sp, sp, #4
	ldmfd sp!, {pc}
_021EACA4:
	bl MOD04_021EA7A0
	add sp, sp, #4
	ldmfd sp!, {pc}
	.align 2, 0
_021EACB0: .word UNK04_02210E3C
	arm_func_end MOD04_021EAC5C

	arm_func_start MOD04_021EACB4
MOD04_021EACB4: ; 0x021EACB4
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r3, _021EACEC ; =UNK04_02210E3C
	ldr r2, _021EACF0 ; =0x00000614
	mov r1, #0
	str r0, [r3]
	bl MI_CpuFill8
	ldr r0, _021EACEC ; =UNK04_02210E3C
	ldr r1, _021EACF4 ; =0x000005B9
	ldr r0, [r0]
	add r0, r0, #0x600
	strh r1, [r0, #0x10]
	add sp, sp, #4
	ldmfd sp!, {pc}
	.align 2, 0
_021EACEC: .word UNK04_02210E3C
_021EACF0: .word 0x00000614
_021EACF4: .word 0x000005B9
	arm_func_end MOD04_021EACB4

	arm_func_start MOD04_021EACF8
MOD04_021EACF8: ; 0x021EACF8
	stmdb sp!, {r4, lr}
	ldr r2, _021EAD40 ; =UNK04_02210E3C
	ldr r3, [r2]
	cmp r3, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	mov r2, #0x30
	mul r4, r0, r2
	add r0, r3, r4
	str r1, [r0, #0x2c]
	bl OS_GetTick
	ldr r2, _021EAD40 ; =UNK04_02210E3C
	ldr r2, [r2]
	add r2, r2, r4
	str r0, [r2, #0x24]
	str r1, [r2, #0x28]
	mov r0, #1
	ldmia sp!, {r4, pc}
	.align 2, 0
_021EAD40: .word UNK04_02210E3C
	arm_func_end MOD04_021EACF8

	arm_func_start MOD04_021EAD44
MOD04_021EAD44: ; 0x021EAD44
	cmp r0, #2
	beq _021EAD5C
	cmp r0, #3
	beq _021EAD5C
	cmp r0, #4
	bne _021EAD64
_021EAD5C:
	mov r0, #0xc
	bx lr
_021EAD64:
	mov r0, #8
	bx lr
	arm_func_end MOD04_021EAD44

	arm_func_start MOD04_021EAD6C
MOD04_021EAD6C: ; 0x021EAD6C
	stmdb sp!, {lr}
	sub sp, sp, #0xc
	add r1, sp, #0
	mov r2, #8
	bl MI_CpuCopy8
	ldr r1, _021EADA4 ; =UNK04_0220D4BC
	add r0, sp, #6
	mov r2, #2
	bl memcmp
	cmp r0, #0
	ldreqh r0, [sp, #4]
	movne r0, #0
	add sp, sp, #0xc
	ldmfd sp!, {pc}
	.align 2, 0
_021EADA4: .word UNK04_0220D4BC
	arm_func_end MOD04_021EAD6C

	arm_func_start MOD04_021EADA8
MOD04_021EADA8: ; 0x021EADA8
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	ldr r1, _021EADD4 ; =UNK04_0220D4BC
	add r0, r6, #6
	mov r2, #2
	bl strncpy
	strh r5, [r6, #4]
	str r4, [r6]
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_021EADD4: .word UNK04_0220D4BC
	arm_func_end MOD04_021EADA8

	arm_func_start MOD04_021EADD8
MOD04_021EADD8: ; 0x021EADD8
	ldr r1, _021EADF4 ; =UNK04_02210E3C
	ldr r1, [r1]
	cmp r1, #0
	moveq r0, #0
	strne r0, [r1, #0x608]
	movne r0, #1
	bx lr
	.align 2, 0
_021EADF4: .word UNK04_02210E3C
	arm_func_end MOD04_021EADD8

	arm_func_start MOD04_021EADF8
MOD04_021EADF8: ; 0x021EADF8
	ldr r1, _021EAE14 ; =UNK04_02210E3C
	ldr r1, [r1]
	cmp r1, #0
	moveq r0, #0
	strne r0, [r1, #0x604]
	movne r0, #1
	bx lr
	.align 2, 0
_021EAE14: .word UNK04_02210E3C
	arm_func_end MOD04_021EADF8

	arm_func_start MOD04_021EAE18
MOD04_021EAE18: ; 0x021EAE18
	ldr r1, _021EAE34 ; =UNK04_02210E3C
	ldr r1, [r1]
	cmp r1, #0
	moveq r0, #0
	strne r0, [r1, #0x600]
	movne r0, #1
	bx lr
	.align 2, 0
_021EAE34: .word UNK04_02210E3C
	arm_func_end MOD04_021EAE18

	arm_func_start MOD04_021EAE38
MOD04_021EAE38: ; 0x021EAE38
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	mov r7, r0
	mov r6, r1
	mov r5, r2
	bl MOD04_021EA9AC
	mov r4, r0
	mov r0, r7
	bl MOD04_021EA974
	cmp r0, #2
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	str r6, [r4, #4]
	str r5, [r4, #8]
	mov r0, #1
	strb r0, [r4, #0x1d]
	mov r1, #0
	str r1, [r4, #0x10]
	str r1, [r4, #0x18]
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, pc}
	arm_func_end MOD04_021EAE38

	arm_func_start MOD04_021EAE90
MOD04_021EAE90: ; 0x021EAE90
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r0
	mov r6, r1
	mov r4, r2
	bl MOD04_021DD6D4
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
	mov r0, r5
	bl MOD04_021DF8A8
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, _021EAF1C ; =UNK04_02210E3C
	ldr r0, [r0]
	add r0, r0, #0x600
	ldrh r0, [r0, #0x10]
	cmp r4, r0
	movgt r0, #0
	ldmgtia sp!, {r4, r5, r6, pc}
	mov r0, r5
	mov r1, r6
	mov r2, r4
	mov r3, #0
	bl MOD04_021EA94C
	ldr r0, _021EAF1C ; =UNK04_02210E3C
	ldr r0, [r0]
	ldr r2, [r0, #0x600]
	cmp r2, #0
	beq _021EAF14
	mov r0, r4
	mov r1, r5
	blx r2
_021EAF14:
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_021EAF1C: .word UNK04_02210E3C
	arm_func_end MOD04_021EAE90

	arm_func_start MOD04_021EAF20
MOD04_021EAF20: ; 0x021EAF20
	stmdb sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0xc
	mov r7, r1
	mov r8, r0
	mov r0, r7
	mov r6, r2
	mov r5, r3
	bl MOD04_021EA9AC
	mov r4, r0
	mov r0, r7
	mov r1, r8
	bl MOD04_021EB06C
	cmp r0, #0
	addeq sp, sp, #0xc
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, pc}
	mov r0, #1
	strb r0, [r4, #0x1c]
	str r6, [r4]
	mov r0, #0
	str r0, [r4, #0xc]
	add r0, sp, #0
	mov r1, r8
	mov r2, r5
	str r5, [r4, #0x14]
	bl MOD04_021EADA8
	add r1, sp, #0
	mov r0, r7
	mov r2, #8
	mov r3, #1
	bl MOD04_021EA94C
	ldr r0, _021EB040 ; =UNK04_02210E3C
	ldr r0, [r0]
	add r0, r0, #0x600
	ldrh sb, [r0, #0x10]
	mov r0, r7
	cmp r5, sb
	movle sb, r5
	bl MOD04_021EA55C
	cmp sb, r0
	addgt sp, sp, #0xc
	movgt r0, #1
	ldmgtia sp!, {r4, r5, r6, r7, r8, sb, pc}
	mov r0, r7
	mov r1, r6
	mov r2, sb
	mov r3, #1
	bl MOD04_021EA94C
	ldr r0, [r4, #0xc]
	add r0, r0, sb
	str r0, [r4, #0xc]
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0xc]
	cmp r1, r0
	bne _021EB034
	mov r2, #0
	strb r2, [r4, #0x1c]
	str r2, [r4]
	str r2, [r4, #0xc]
	ldr r1, _021EB040 ; =UNK04_02210E3C
	str r2, [r4, #0x14]
	ldr r1, [r1]
	ldr r2, [r1, #0x600]
	cmp r2, #0
	beq _021EB034
	cmp r8, #1
	bne _021EB034
	mov r1, r7
	blx r2
_021EB034:
	mov r0, #1
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_021EB040: .word UNK04_02210E3C
	arm_func_end MOD04_021EAF20

	arm_func_start MOD04_021EB044
MOD04_021EB044: ; 0x021EB044
	stmdb sp!, {lr}
	sub sp, sp, #4
	mov ip, r1
	mov r3, r2
	mov r1, r0
	mov r2, ip
	mov r0, #1
	bl MOD04_021EAF20
	add sp, sp, #4
	ldmfd sp!, {pc}
	arm_func_end MOD04_021EB044

	arm_func_start MOD04_021EB06C
MOD04_021EB06C: ; 0x021EB06C
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r4, r0
	mov r5, r1
	bl MOD04_021DD6D4
	cmp r0, #0
	bne _021EB0B0
	cmp r5, #1
	bne _021EB0A0
	mov r0, r4
	bl MOD04_021DF8A8
	cmp r0, #0
	beq _021EB0B0
_021EB0A0:
	mov r0, r4
	bl MOD04_021DF5F0
	cmp r0, #0
	bne _021EB0BC
_021EB0B0:
	add sp, sp, #4
	mov r0, #0
	ldmia sp!, {r4, r5, pc}
_021EB0BC:
	mov r0, r4
	bl MOD04_021EA990
	cmp r0, #1
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r4, r5, pc}
	mov r0, r4
	bl MOD04_021EA55C
	mov r4, r0
	mov r0, r5
	bl MOD04_021EAD44
	cmp r4, r0
	movge r0, #1
	movlt r0, #0
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	arm_func_end MOD04_021EB06C

	arm_func_start MOD04_021EB0FC
MOD04_021EB0FC: ; 0x021EB0FC
	ldr ip, _021EB108 ; =MOD04_021EB06C
	mov r1, #1
	bx ip
	.align 2, 0
_021EB108: .word MOD04_021EB06C
	arm_func_end MOD04_021EB0FC

	arm_func_start MOD04_021EB10C
MOD04_021EB10C: ; 0x021EB10C
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	ldr r0, _021EB178 ; =UNK04_02210E40
	ldr r7, [r0]
	cmp r7, #0
	beq _021EB164
	mov r5, #4
	mov r4, #0
_021EB12C:
	mov r6, r7
	ldr r1, [r6, #0x10]
	ldr r7, [r7, #0x18]
	cmp r1, #0
	beq _021EB14C
	mov r0, r5
	mov r2, r4
	bl MOD04_021DD904
_021EB14C:
	mov r0, r5
	mov r1, r6
	mov r2, r4
	bl MOD04_021DD904
	cmp r7, #0
	bne _021EB12C
_021EB164:
	ldr r0, _021EB178 ; =UNK04_02210E40
	mov r1, #0
	str r1, [r0]
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_021EB178: .word UNK04_02210E40
	arm_func_end MOD04_021EB10C

	arm_func_start MOD04_021EB17C
MOD04_021EB17C: ; 0x021EB17C
	stmdb sp!, {r4, lr}
	ldr r1, _021EB1FC ; =UNK04_02210E40
	ldr r1, [r1]
	cmp r1, #0
	ldmeqia sp!, {r4, pc}
	cmp r1, r0
	bne _021EB1B4
	mov r0, #4
	mov r2, #0
	ldr r4, [r1, #0x18]
	bl MOD04_021DD904
	ldr r0, _021EB1FC ; =UNK04_02210E40
	str r4, [r0]
	ldmia sp!, {r4, pc}
_021EB1B4:
	ldr r2, [r1, #0x18]
	cmp r2, #0
	ldmeqia sp!, {r4, pc}
_021EB1C0:
	cmp r2, r0
	movne r1, r2
	bne _021EB1EC
	ldr ip, [r1, #0x18]
	mov r0, #4
	ldr r3, [ip, #0x18]
	mov r2, #0
	str r3, [r1, #0x18]
	mov r1, ip
	bl MOD04_021DD904
	ldmia sp!, {r4, pc}
_021EB1EC:
	ldr r2, [r2, #0x18]
	cmp r2, #0
	bne _021EB1C0
	ldmia sp!, {r4, pc}
	.align 2, 0
_021EB1FC: .word UNK04_02210E40
	arm_func_end MOD04_021EB17C

	arm_func_start MOD04_021EB200
MOD04_021EB200: ; 0x021EB200
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r0, #4
	mov r1, #0x1c
	bl MOD04_021DD944
	movs ip, r0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	ldmia r4, {r0, r1, r2, r3}
	stmia ip, {r0, r1, r2, r3}
	mov r0, #0
	str r0, [ip, #0x18]
	ldr r1, _021EB258 ; =UNK04_02210E40
	str r0, [ip, #0x10]
	ldr r0, [r1]
	cmp r0, #0
	moveq r0, ip
	streq ip, [r1]
	strne r0, [ip, #0x18]
	movne r0, ip
	strne ip, [r1]
	ldmia sp!, {r4, pc}
	.align 2, 0
_021EB258: .word UNK04_02210E40
	arm_func_end MOD04_021EB200

	arm_func_start MOD04_021EB25C
MOD04_021EB25C: ; 0x021EB25C
	stmdb sp!, {r4, lr}
	movs r4, r0
	mov r0, #7
	ldr r1, _021EB39C ; =0xFFFE8130
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	add r2, r4, #7
	cmp r2, #0x1a
	addls pc, pc, r2, lsl #2
	b _021EB390
_021EB284: ; jump table
	b _021EB2F0 ; case 0
	b _021EB2F8 ; case 1
	b _021EB304 ; case 2
	b _021EB30C ; case 3
	b _021EB30C ; case 4
	b _021EB30C ; case 5
	b _021EB314 ; case 6
	b _021EB390 ; case 7
	b _021EB320 ; case 8
	b _021EB32C ; case 9
	b _021EB334 ; case 10
	b _021EB340 ; case 11
	b _021EB348 ; case 12
	b _021EB350 ; case 13
	b _021EB358 ; case 14
	b _021EB360 ; case 15
	b _021EB360 ; case 16
	b _021EB360 ; case 17
	b _021EB350 ; case 18
	b _021EB350 ; case 19
	b _021EB36C ; case 20
	b _021EB36C ; case 21
	b _021EB374 ; case 22
	b _021EB380 ; case 23
	b _021EB388 ; case 24
	b _021EB390 ; case 25
	b _021EB320 ; case 26
_021EB2F0:
	sub r1, r1, #0x320
	b _021EB390
_021EB2F8:
	ldr r2, _021EB3A0 ; =0xFFFFFCD6
	add r1, r1, r2
	b _021EB390
_021EB304:
	sub r1, r1, #0x348
	b _021EB390
_021EB30C:
	sub r1, r1, #0x334
	b _021EB390
_021EB314:
	ldr r2, _021EB3A4 ; =0xFFFFFCC2
	add r1, r1, r2
	b _021EB390
_021EB320:
	sub r1, r1, #1
	mov r0, #9
	b _021EB390
_021EB32C:
	sub r1, r1, #0x348
	b _021EB390
_021EB334:
	ldr r2, _021EB3A8 ; =0xFFFFFCAE
	add r1, r1, r2
	b _021EB390
_021EB340:
	sub r1, r1, #0x1e
	b _021EB390
_021EB348:
	sub r1, r1, #0x32
	b _021EB390
_021EB350:
	sub r1, r1, #0x14
	b _021EB390
_021EB358:
	sub r1, r1, #0x35c
	b _021EB390
_021EB360:
	ldr r2, _021EB3AC ; =0xFFFFFC9A
	add r1, r1, r2
	b _021EB390
_021EB36C:
	sub r1, r1, #0x370
	b _021EB390
_021EB374:
	ldr r2, _021EB3B0 ; =0xFFFFFC86
	add r1, r1, r2
	b _021EB390
_021EB380:
	sub r1, r1, #0x384
	b _021EB390
_021EB388:
	ldr r2, _021EB3B4 ; =0xFFFFFC72
	add r1, r1, r2
_021EB390:
	bl MOD04_021DD6B0
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_021EB39C: .word 0xFFFE8130
_021EB3A0: .word 0xFFFFFCD6
_021EB3A4: .word 0xFFFFFCC2
_021EB3A8: .word 0xFFFFFCAE
_021EB3AC: .word 0xFFFFFC9A
_021EB3B0: .word 0xFFFFFC86
_021EB3B4: .word 0xFFFFFC72
	arm_func_end MOD04_021EB25C

	arm_func_start MOD04_021EB3B8
MOD04_021EB3B8: ; 0x021EB3B8
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x14
	mov r5, r0
	mov r7, r1
	mov r6, r2
	bl MOD04_021DD6D4
	cmp r0, #0
	addne sp, sp, #0x14
	mvnne r0, #7
	ldmneia sp!, {r4, r5, r6, r7, pc}
	mov r2, #0
	mov r1, #1
	add r0, sp, #0
	str r6, [sp]
	str r7, [sp, #4]
	str r2, [sp, #8]
	str r1, [sp, #0xc]
	bl MOD04_021EB200
	movs r4, r0
	bne _021EB430
	mvn r0, #4
	bl MOD04_021EB25C
	mov r0, #0
	mov r1, r0
	mov r3, r6
	mvn r2, #4
	blx r7
	add sp, sp, #0x14
	mvn r0, #4
	ldmia sp!, {r4, r5, r6, r7, pc}
_021EB430:
	ldr r2, _021EB47C ; =MOD04_021EB480
	mov r0, r5
	mov r3, r4
	mov r1, #0
	bl MOD79_02213D80
	movs r5, r0
	bpl _021EB46C
	bl MOD04_021EB25C
	mov r0, #0
	mov r1, r0
	mov r2, r5
	mov r3, r6
	blx r7
	mov r0, r4
	bl MOD04_021EB17C
_021EB46C:
	mov r0, r5
	str r5, [r4, #0x14]
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_021EB47C: .word MOD04_021EB480
	arm_func_end MOD04_021EB3B8

	arm_func_start MOD04_021EB480
MOD04_021EB480: ; 0x021EB480
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	ldr r6, [sp, #0x18]
	mov r7, r1
	ldr r5, [r6, #4]
	ldr r4, [r6, #0xc]
	cmp r5, #0
	beq _021EB4DC
	cmp r7, #0
	bne _021EB4C0
	mov r1, r3
	mov r0, r2
	ldr r3, [r6]
	mov r2, r7
	blx r5
	b _021EB4DC
_021EB4C0:
	mov r0, r7
	bl MOD04_021EB25C
	mov r0, #0
	ldr r3, [r6]
	mov r1, r0
	mov r2, r7
	blx r5
_021EB4DC:
	cmp r7, #0
	bne _021EB4EC
	cmp r4, #1
	bne _021EB508
_021EB4EC:
	ldr r1, [r6, #0x10]
	cmp r1, #0
	moveq r4, #1
	beq _021EB508
	mov r0, #4
	mov r2, #0
	bl MOD04_021DD904
_021EB508:
	mov r0, r6
	bl MOD04_021EB17C
	cmp r4, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, pc}
	arm_func_end MOD04_021EB480

	arm_func_start MOD04_021EB524
MOD04_021EB524: ; 0x021EB524
	stmdb sp!, {lr}
	sub sp, sp, #4
	bl MOD04_021DD6D4
	cmp r0, #0
	addne sp, sp, #4
	movne r0, #0
	ldmneia sp!, {pc}
	bl MOD79_02213B08
	mov r0, #1
	add sp, sp, #4
	ldmfd sp!, {pc}
	arm_func_end MOD04_021EB524

	arm_func_start MOD04_021EB550
MOD04_021EB550:
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r0, _021EB598 ; =UNK04_02210E44
	ldr r0, [r0]
	cmp r0, #0
	addle sp, sp, #4
	movle r0, #1
	ldmleia sp!, {pc}
	bl MOD79_02213DBC
	ldr r0, _021EB598 ; =UNK04_02210E44
	ldr r1, [r0]
	subs r1, r1, #1
	str r1, [r0]
	bne _021EB58C
	bl MOD04_021EB10C
_021EB58C:
	mov r0, #1
	add sp, sp, #4
	ldmfd sp!, {pc}
	.align 2, 0
_021EB598: .word UNK04_02210E44
	arm_func_end MOD04_021EB550

	arm_func_start MOD04_021EB59C
MOD04_021EB59C: ; 0x021EB59C
	stmdb sp!, {lr}
	sub sp, sp, #4
	bl MOD79_02213E24
	ldr r1, _021EB5C4 ; =UNK04_02210E44
	mov r0, #1
	ldr r2, [r1]
	add r2, r2, #1
	str r2, [r1]
	add sp, sp, #4
	ldmfd sp!, {pc}
	.align 2, 0
_021EB5C4: .word UNK04_02210E44
	arm_func_end MOD04_021EB59C

	arm_func_start MOD04_021EB5C8
MOD04_021EB5C8: ; 0x021EB5C8
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	ldr r1, _021EB660 ; =UNK04_02210E48
	ldr r0, _021EB664 ; =0x00000474
	ldr sl, [r1]
	mov r4, #0xc0
	ldrb r7, [sl, #0xd13]
	add r5, sl, r0
	ldrb r0, [sl, #0xd0d]
	mla sb, r7, r4, r5
	cmp r0, #6
	movhs r0, #1
	ldmhsia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	ldrb r6, [sl, #0xd12]
	mov r8, #0
	cmp r6, #0
	bls _021EB658
_021EB608:
	cmp r8, r7
	beq _021EB648
	add r0, sl, r8, lsl #2
	ldrb r0, [r0, #0x445]
	cmp r0, #6
	bhs _021EB648
	mul r1, r8, r4
	add r0, sl, r1
	add r0, r0, #0x400
	ldrh r2, [r0, #0x7a]
	mov r0, sb
	add r1, r5, r1
	bl strncmp
	cmp r0, #0
	moveq r0, #2
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_021EB648:
	add r0, r8, #1
	and r8, r0, #0xff
	cmp r8, r6
	blo _021EB608
_021EB658:
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_021EB660: .word UNK04_02210E48
_021EB664: .word 0x00000474
	arm_func_end MOD04_021EB5C8

	arm_func_start MOD04_021EB668
MOD04_021EB668: ; 0x021EB668
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r1, _021EB6A0 ; =UNK04_02210E54
	mov r0, #8
	ldr r1, [r1]
	mov r2, #0xc
	bl MOD04_021EB910
	ldr r0, _021EB6A4 ; =UNK04_02210E48
	ldr r2, _021EB6A8 ; =0x00000D18
	ldr r1, [r0]
	mov r0, #0x10
	bl MOD04_021EB910
	add sp, sp, #4
	ldmfd sp!, {pc}
	.align 2, 0
_021EB6A0: .word UNK04_02210E54
_021EB6A4: .word UNK04_02210E48
_021EB6A8: .word 0x00000D18
	arm_func_end MOD04_021EB668

	arm_func_start MOD04_021EB6AC
MOD04_021EB6AC: ; 0x021EB6AC
	cmp r0, #2
	subhi r0, r0, #3
	andhi r0, r0, #0xff
	bx lr
	arm_func_end MOD04_021EB6AC

	arm_func_start MOD04_021EB6BC
MOD04_021EB6BC: ; 0x021EB6BC
	stmdb sp!, {lr}
	sub sp, sp, #4
	bl MOD04_021EB6AC
	ldr r1, _021EB6DC ; =UNK04_02210E58
	ldr r1, [r1]
	strb r0, [r1, #0x17]
	add sp, sp, #4
	ldmfd sp!, {pc}
	.align 2, 0
_021EB6DC: .word UNK04_02210E58
	arm_func_end MOD04_021EB6BC

	arm_func_start MOD04_021EB6E0
MOD04_021EB6E0: ; 0x021EB6E0
	ldr r0, _021EB6F0 ; =UNK04_02210E58
	ldr r0, [r0]
	ldr r0, [r0, #0xc]
	bx lr
	.align 2, 0
_021EB6F0: .word UNK04_02210E58
	arm_func_end MOD04_021EB6E0

	arm_func_start MOD04_021EB6F4
MOD04_021EB6F4: ; 0x021EB6F4
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	mov r0, #1
	bl MOD04_021EB798
	mov r4, r0
	str r5, [r4, #0xc]
	bl MOD04_021EB720
	strb r0, [r4, #0xa]
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	arm_func_end MOD04_021EB6F4

	arm_func_start MOD04_021EB720
MOD04_021EB720: ; 0x021EB720
	ldr r0, _021EB730 ; =UNK04_02210E58
	ldr r0, [r0]
	ldrb r0, [r0, #9]
	bx lr
	.align 2, 0
_021EB730: .word UNK04_02210E58
	arm_func_end MOD04_021EB720

	arm_func_start MOD04_021EB734
MOD04_021EB734: ; 0x021EB734
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r0, #1
	bl MOD04_021EB798
	mov r5, r0
	mov r0, #0x10
	bl MOD04_021EB798
	mov r4, r0
	strb r6, [r5, #9]
	cmp r6, #0x10
	ldmhsia sp!, {r4, r5, r6, pc}
	ldrb r0, [r5, #0x16]
	cmp r6, r0
	ldmlsia sp!, {r4, r5, r6, pc}
	strb r6, [r5, #0x16]
	cmp r6, #7
	ldmlsia sp!, {r4, r5, r6, pc}
	ldrb r0, [r4, #0xd0d]
	bl MOD04_021EB6AC
	strb r0, [r5, #0x15]
	ldrb r0, [r4, #0xd13]
	add r0, r4, r0, lsl #2
	ldrb r0, [r0, #0x444]
	strb r0, [r5, #0x14]
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end MOD04_021EB734

	arm_func_start MOD04_021EB798
MOD04_021EB798: ; 0x021EB798
	ands r1, r0, #1
	ldrne r0, _021EB7EC ; =UNK04_02210E58
	ldrne r0, [r0]
	bxne lr
	ands r1, r0, #2
	ldrne r0, _021EB7F0 ; =UNK04_02210E4C
	ldrne r0, [r0]
	bxne lr
	ands r1, r0, #4
	ldrne r0, _021EB7F4 ; =UNK04_02210E50
	ldrne r0, [r0]
	bxne lr
	ands r1, r0, #8
	ldrne r0, _021EB7F8 ; =UNK04_02210E54
	ldrne r0, [r0]
	bxne lr
	ands r0, r0, #0x10
	ldrne r0, _021EB7FC ; =UNK04_02210E48
	ldrne r0, [r0]
	moveq r0, #0
	bx lr
	.align 2, 0
_021EB7EC: .word UNK04_02210E58
_021EB7F0: .word UNK04_02210E4C
_021EB7F4: .word UNK04_02210E50
_021EB7F8: .word UNK04_02210E54
_021EB7FC: .word UNK04_02210E48
	arm_func_end MOD04_021EB798

	arm_func_start MOD04_021EB800
MOD04_021EB800: ; 0x021EB800
	stmdb sp!, {r4, lr}
	mov r0, #1
	bl MOD04_021EB798
	mov r4, r0
	ldrb r0, [r4, #8]
	ands r0, r0, #0x10
	beq _021EB844
	mov r0, #0x10
	bl MOD04_021EB798
	ldrb r3, [r4, #8]
	mov r1, r0
	ldr r2, _021EB90C ; =0x00000D18
	bic r0, r3, #0x10
	strb r0, [r4, #8]
	ldr r3, [r4, #4]
	mov r0, #0x10
	blx r3
_021EB844:
	ldrb r0, [r4, #8]
	ands r0, r0, #8
	beq _021EB878
	mov r0, #8
	bl MOD04_021EB798
	ldrb r2, [r4, #8]
	mov r1, r0
	mov r0, #8
	bic r2, r2, #8
	strb r2, [r4, #8]
	ldr r3, [r4, #4]
	mov r2, #0xc
	blx r3
_021EB878:
	ldrb r0, [r4, #8]
	ands r0, r0, #4
	beq _021EB8AC
	mov r0, #4
	bl MOD04_021EB798
	ldrb r2, [r4, #8]
	mov r1, r0
	mov r0, #4
	bic r2, r2, #4
	strb r2, [r4, #8]
	ldr r3, [r4, #4]
	mov r2, #0x58
	blx r3
_021EB8AC:
	ldrb r0, [r4, #8]
	ands r0, r0, #2
	beq _021EB8E0
	mov r0, #2
	bl MOD04_021EB798
	ldrb r2, [r4, #8]
	mov r1, r0
	mov r0, #2
	bic r2, r2, #2
	strb r2, [r4, #8]
	ldr r3, [r4, #4]
	mov r2, #0x2300
	blx r3
_021EB8E0:
	ldrb r0, [r4, #8]
	ands r1, r0, #1
	ldmeqia sp!, {r4, pc}
	bic r0, r0, #1
	strb r0, [r4, #8]
	ldr r3, [r4, #4]
	mov r1, r4
	mov r0, #1
	mov r2, #0x18
	blx r3
	ldmia sp!, {r4, pc}
	.align 2, 0
_021EB90C: .word 0x00000D18
	arm_func_end MOD04_021EB800

	arm_func_start MOD04_021EB910
MOD04_021EB910: ; 0x021EB910
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r0, #1
	mov r5, r1
	mov r4, r2
	bl MOD04_021EB798
	ldrb r2, [r0, #8]
	ands r1, r2, r6
	ldmeqia sp!, {r4, r5, r6, pc}
	mvn r1, r6
	and r1, r2, r1
	strb r1, [r0, #8]
	ldr r3, [r0, #4]
	mov r0, r6
	mov r1, r5
	mov r2, r4
	blx r3
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end MOD04_021EB910

	arm_func_start MOD04_021EB958
MOD04_021EB958: ; 0x021EB958
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	mov r0, #1
	mov r4, r1
	bl MOD04_021EB798
	ldrb r1, [r0, #8]
	ands r2, r1, r5
	addne sp, sp, #4
	movne r0, #0
	ldmneia sp!, {r4, r5, pc}
	orr r1, r1, r5
	strb r1, [r0, #8]
	ldr r2, [r0]
	mov r0, r5
	mov r1, r4
	blx r2
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	arm_func_end MOD04_021EB958

	arm_func_start MOD04_021EB9A4
MOD04_021EB9A4: ; 0x021EB9A4
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	mov r0, #0x10
	mov r4, r1
	bl MOD04_021EB798
	mov r1, r0
	mov r0, r4
	add r1, r1, r5, lsl #8
	mov r2, #0xf0
	bl MIi_CpuCopy32
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	arm_func_end MOD04_021EB9A4

	arm_func_start MOD04_021EB9D8
MOD04_021EB9D8: ; 0x021EB9D8
	stmdb sp!, {lr}
	sub sp, sp, #4
	bl MOD04_021EB720
	strb r0, [sp]
	ldrb r0, [sp]
	cmp r0, #0
	beq _021EB9FC
	cmp r0, #0x12
	bne _021EBA0C
_021EB9FC:
	bl MOD04_021EB800
	add sp, sp, #4
	mov r0, #1
	ldmfd sp!, {pc}
_021EBA0C:
	add r0, sp, #0
	bl MOD04_021ECB38
	ldrb r0, [sp]
	bl MOD04_021EB734
	mov r0, #0
	add sp, sp, #4
	ldmfd sp!, {pc}
	arm_func_end MOD04_021EB9D8

	arm_func_start MOD04_021EBA28
MOD04_021EBA28: ; 0x021EBA28
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r0, #1
	bl MOD04_021EB798
	mov r5, r0
	bl MOD04_021EB720
	cmp r0, #0xa
	blo _021EBAB0
	cmp r0, #0x10
	bhi _021EBAB0
	bl WCM_GetApMacAddress
	mov r4, r0
	mov r1, #6
	bl DC_InvalidateRange
	cmp r4, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r0, r4
	mov r1, r6
	mov r2, #6
	bl MI_CpuCopy8
	ldrb r0, [r5, #0x17]
	cmp r0, #4
	bne _021EBAA8
	mov r0, #0
	bl WCM_GetApEssid
	mov r4, r0
	mov r1, #0x20
	bl DC_InvalidateRange
	mov r0, r4
	add r1, r6, #6
	bl MOD04_021EE5F4
_021EBAA8:
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
_021EBAB0:
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end MOD04_021EBA28

	arm_func_start MOD04_021EBAB8
MOD04_021EBAB8: ; 0x021EBAB8
	stmdb sp!, {r4, lr}
	mov r4, #0xff
	bl MOD04_021EB720
	cmp r0, #0xa
	blo _021EBADC
	cmp r0, #0x10
	ldrls r0, _021EBAE4 ; =UNK04_02210E58
	ldrls r0, [r0]
	ldrlsb r4, [r0, #0x17]
_021EBADC:
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_021EBAE4: .word UNK04_02210E58
	arm_func_end MOD04_021EBAB8

	arm_func_start MOD04_021EBAE8
MOD04_021EBAE8: ; 0x021EBAE8
	stmdb sp!, {lr}
	sub sp, sp, #4
	bl MOD04_021EB720
	cmp r0, #1
	addls sp, sp, #4
	movls r0, #0
	ldmlsia sp!, {pc}
	cmp r0, #7
	addlo sp, sp, #4
	movlo r0, #1
	ldmloia sp!, {pc}
	cmp r0, #9
	addeq sp, sp, #4
	moveq r0, #4
	ldmeqia sp!, {pc}
	cmp r0, #0xa
	addlo sp, sp, #4
	movlo r0, #2
	ldmloia sp!, {pc}
	cmp r0, #0xb
	addeq sp, sp, #4
	moveq r0, #4
	ldmeqia sp!, {pc}
	cmp r0, #0x10
	addlo sp, sp, #4
	movlo r0, #3
	ldmloia sp!, {pc}
	cmp r0, #0x10
	addeq sp, sp, #4
	moveq r0, #5
	ldmeqia sp!, {pc}
	cmp r0, #0x11
	addeq sp, sp, #4
	moveq r0, #4
	ldmeqia sp!, {pc}
	bl MOD04_021ECD54
	add sp, sp, #4
	ldmfd sp!, {pc}
	arm_func_end MOD04_021EBAE8

	arm_func_start MOD04_021EBB80
MOD04_021EBB80: ; 0x021EBB80
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	bl MOD04_021EB720
	mov r5, r0
	cmp r5, #1
	bne _021EBBA4
	bl MOD04_021EDB44
	mov r5, r0
	b _021EBC18
_021EBBA4:
	cmp r5, #7
	bhs _021EBBCC
	bl OS_DisableInterrupts
	mov r4, r0
	bl MOD04_021EDA70
	mov r5, r0
	bl MOD04_021EB734
	mov r0, r4
	bl OS_RestoreInterrupts
	b _021EBC18
_021EBBCC:
	cmp r5, #9
	bhs _021EBBE0
	bl MOD04_021ECA08
	mov r5, r0
	b _021EBC18
_021EBBE0:
	cmp r5, #0xa
	bhs _021EBBF4
	bl MOD04_021ED218
	mov r5, r0
	b _021EBC18
_021EBBF4:
	cmp r5, #0x10
	bhs _021EBC08
	bl MOD04_021EDFBC
	mov r5, r0
	b _021EBC18
_021EBC08:
	cmp r5, #0x11
	bne _021EBC18
	bl MOD04_021ECDA8
	mov r5, r0
_021EBC18:
	mov r0, r5
	bl MOD04_021EB734
	cmp r5, #0x10
	bne _021EBC40
	bl MOD04_021EB5C8
	mov r4, r0
	bl MOD04_021EB668
	add sp, sp, #4
	mov r0, r4
	ldmia sp!, {r4, r5, pc}
_021EBC40:
	cmp r5, #0x12
	addne sp, sp, #4
	movne r0, #0
	ldmneia sp!, {r4, r5, pc}
	bl MOD04_021EB668
	mvn r0, #0
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	arm_func_end MOD04_021EBB80

	arm_func_start MOD04_021EBC60
MOD04_021EBC60: ; 0x021EBC60
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r2, [r4]
	mov r0, #1
	mov r1, #0x18
	blx r2
	mov r1, r0
	ldr r3, _021EBE08 ; =UNK04_02210E58
	mov r0, #0
	mov r2, #0x18
	str r1, [r3]
	bl MIi_CpuClear32
	ldr r0, _021EBE08 ; =UNK04_02210E58
	ldr r1, [r4]
	ldr r3, [r0]
	mov r2, #1
	str r1, [r3]
	ldr r0, [r4, #4]
	ldr r1, _021EBE0C ; =0x00000D18
	str r0, [r3, #4]
	strb r2, [r3, #9]
	strb r2, [r3, #0x16]
	mov r0, #0x10
	strb r2, [r3, #8]
	bl MOD04_021EB958
	ldr r2, _021EBE10 ; =UNK04_02210E48
	mov r1, #0x2300
	str r0, [r2]
	mov r0, #2
	bl MOD04_021EB958
	ldr r2, _021EBE14 ; =UNK04_02210E4C
	mov r1, #0x58
	str r0, [r2]
	mov r0, #4
	bl MOD04_021EB958
	ldr r2, _021EBE18 ; =UNK04_02210E50
	mov r1, #0xc
	str r0, [r2]
	mov r0, #8
	bl MOD04_021EB958
	ldr r2, _021EBE1C ; =UNK04_02210E54
	ldr r1, _021EBE10 ; =UNK04_02210E48
	str r0, [r2]
	ldr r1, [r1]
	mov r0, #0
	ldr r2, _021EBE0C ; =0x00000D18
	bl MIi_CpuClear32
	mov r0, #0
	ldr r1, _021EBE14 ; =UNK04_02210E4C
	mov r2, #0x2300
	ldr r1, [r1]
	bl MIi_CpuClear32
	mov r0, #0
	ldr r1, _021EBE18 ; =UNK04_02210E50
	mov r2, #0x58
	ldr r1, [r1]
	bl MIi_CpuClear32
	mov r0, #0
	ldr r1, _021EBE1C ; =UNK04_02210E54
	mov r2, #0xc
	ldr r1, [r1]
	bl MIi_CpuClear32
	ldr r0, _021EBE10 ; =UNK04_02210E48
	ldrb r1, [r4, #8]
	ldr r0, [r0]
	strb r1, [r0, #0xd0a]
	ldrb r2, [r0, #0xd0b]
	ldrb r1, [r4, #9]
	bic r2, r2, #3
	and r1, r1, #3
	orr r1, r2, r1
	strb r1, [r0, #0xd0b]
	ldr r1, _021EBE1C ; =UNK04_02210E54
	ldr r2, [r4]
	ldr r3, [r1]
	mov r1, #0
	str r2, [r3]
	ldr r2, [r4, #4]
	str r2, [r3, #4]
	str r1, [r3, #8]
	ldrb r2, [r0, #0xd0c]
	ldrb r1, [r4, #0xa]
	bic r2, r2, #0xf
	and r1, r1, #0xf
	orr r1, r2, r1
	strb r1, [r0, #0xd0c]
	ldrb r2, [r0, #0xd0c]
	ldrb r1, [r4, #0xb]
	bic r2, r2, #0x30
	and r1, r1, #3
	orr r1, r2, r1, lsl #4
	strb r1, [r0, #0xd0c]
	bl DWCi_BM_GetApInfo
	ldr r0, _021EBE14 ; =UNK04_02210E4C
	mov r1, #0x2300
	ldr r0, [r0]
	bl WCM_Init
	cmp r0, #1
	beq _021EBDF4
	cmp r0, #4
	blt _021EBE00
_021EBDF4:
	bl MOD04_021EB800
	mov r0, #0
	ldmia sp!, {r4, pc}
_021EBE00:
	mov r0, #1
	ldmia sp!, {r4, pc}
	.align 2, 0
_021EBE08: .word UNK04_02210E58
_021EBE0C: .word 0x00000D18
_021EBE10: .word UNK04_02210E48
_021EBE14: .word UNK04_02210E4C
_021EBE18: .word UNK04_02210E50
_021EBE1C: .word UNK04_02210E54
	arm_func_end MOD04_021EBC60

	arm_func_start MOD04_021EBE20
MOD04_021EBE20: ; 0x021EBE20
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xcc
	ldr r2, _021EBF1C ; =0x00000444
	mov sl, r0
	add r0, r1, #0x470
	add r8, r1, r2
	str r0, [sp]
	subs sb, sl, #1
	bmi _021EBEF0
	mov r4, #0xc0
	mla r6, sb, r4, r0
	add r7, r8, sb, lsl #2
	mov r5, #4
_021EBE54:
	add r1, r8, sl, lsl #2
	add r0, r8, sb, lsl #2
	ldrb r1, [r1, #2]
	ldrb r0, [r0, #2]
	cmp r1, r0
	blo _021EBEF0
	mov r0, r7
	add r1, sp, #4
	mov r2, r5
	bl MIi_CpuCopy32
	add fp, r8, sl, lsl #2
	mov r0, fp
	mov r1, r7
	mov r2, r5
	bl MIi_CpuCopy32
	mov r1, fp
	add r0, sp, #4
	mov r2, r5
	bl MIi_CpuCopy32
	mov r0, r6
	add r1, sp, #8
	mov r2, r4
	bl MIi_CpuCopy32
	ldr r0, [sp]
	mov r1, #0xc0
	mla fp, sl, r1, r0
	mov r0, fp
	mov r1, r6
	mov r2, r4
	bl MIi_CpuCopy32
	mov r1, fp
	add r0, sp, #8
	mov r2, r4
	bl MIi_CpuCopy32
	mov sl, sb
	sub r7, r7, #4
	sub r6, r6, #0xc0
	subs sb, sb, #1
	bpl _021EBE54
_021EBEF0:
	add r1, r8, #0x28
	mov r0, #0
	mov r2, #4
	bl MIi_CpuClear32
	ldr r0, [sp]
	mov r2, #0xc0
	add r1, r0, #0x780
	mov r0, #0
	bl MIi_CpuClear32
	add sp, sp, #0xcc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_021EBF1C: .word 0x00000444
	arm_func_end MOD04_021EBE20

	arm_func_start MOD04_021EBF20
MOD04_021EBF20: ; 0x021EBF20
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	ldrh r4, [r1, #2]
	ldr lr, _021EBF9C ; =0x00000444
	add r5, r3, #0x470
	mov ip, #0xc0
	add r3, r3, lr
	mla ip, r0, ip, r5
	add r0, r3, r0, lsl #2
	ands r3, r4, #2
	movne r3, r4, asr #2
	andne r4, r3, #0xff
	moveq r3, r4, asr #2
	addeq r3, r3, #0x19
	andeq r4, r3, #0xff
	ldrb r3, [r0, #2]
	and lr, r4, #0xff
	cmp lr, r3
	bls _021EBF84
	strb lr, [r0, #2]
	ldrb r3, [r0, #3]
	and r2, r2, #0x7f
	bic r3, r3, #0x7f
	orr r2, r3, r2
	strb r2, [r0, #3]
_021EBF84:
	mov r0, r1
	mov r1, ip
	mov r2, #0xc0
	bl MIi_CpuCopy32
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_021EBF9C: .word 0x00000444
	arm_func_end MOD04_021EBF20

	arm_func_start MOD04_021EBFA0
MOD04_021EBFA0: ; 0x021EBFA0
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr lr, _021EC004 ; =0x0000046C
	add ip, r3, #0xbf0
	add r3, r3, lr
	strb r0, [r3, #1]
	ldrh lr, [r1, #2]
	and r2, r2, #0x7f
	ands r0, lr, #2
	movne r0, lr, asr #2
	andne r0, r0, #0xff
	moveq r0, lr, asr #2
	addeq r0, r0, #0x19
	andeq r0, r0, #0xff
	strb r0, [r3, #2]
	ldrb lr, [r3, #3]
	mov r0, r1
	bic r1, lr, #0x7f
	orr lr, r1, r2
	mov r1, ip
	mov r2, #0xc0
	strb lr, [r3, #3]
	bl MIi_CpuCopy32
	add sp, sp, #4
	ldmfd sp!, {pc}
	.align 2, 0
_021EC004: .word 0x0000046C
	arm_func_end MOD04_021EBFA0

	arm_func_start MOD04_021EC008
MOD04_021EC008: ; 0x021EC008
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r6, r3
	ldrb r3, [r6, #0xd12]
	mvn r4, #0
	mov r5, #0
	cmp r3, #0
	ble _021EC0A0
	ldr lr, _021EC0E4 ; =0x00000474
	ldrb ip, [r1, #4]
	add lr, r6, lr
_021EC030:
	ldrb r7, [lr]
	cmp ip, r7
	bne _021EC090
	ldrb r8, [r1, #5]
	ldrb r7, [lr, #1]
	cmp r8, r7
	bne _021EC090
	ldrb r8, [r1, #6]
	ldrb r7, [lr, #2]
	cmp r8, r7
	bne _021EC090
	ldrb r8, [r1, #7]
	ldrb r7, [lr, #3]
	cmp r8, r7
	bne _021EC090
	ldrb r8, [r1, #8]
	ldrb r7, [lr, #4]
	cmp r8, r7
	bne _021EC090
	ldrb r8, [r1, #9]
	ldrb r7, [lr, #5]
	cmp r8, r7
	moveq r4, r5
	beq _021EC0A0
_021EC090:
	add r5, r5, #1
	cmp r5, r3
	add lr, lr, #0xc0
	blt _021EC030
_021EC0A0:
	mvn r3, #0
	cmp r4, r3
	bne _021EC0D0
	mov r3, r6
	and r0, r0, #0xff
	bl MOD04_021EBFA0
	ldrb r0, [r6, #0xd12]
	mov r4, #0xa
	cmp r0, #0xa
	addlo r0, r0, #1
	strlob r0, [r6, #0xd12]
	b _021EC0DC
_021EC0D0:
	mov r0, r4
	mov r3, r6
	bl MOD04_021EBF20
_021EC0DC:
	mov r0, r4
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_021EC0E4: .word 0x00000474
	arm_func_end MOD04_021EC008

	arm_func_start MOD04_021EC0E8
MOD04_021EC0E8: ; 0x021EC0E8
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	mov r4, r0
	ldrh r2, [r4, #0xa]
	mov sl, r1
	cmp r2, #0x20
	bne _021EC10C
	bl MOD04_021EC210
	cmp r0, #0
	ldmgtia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_021EC10C:
	ldrb r5, [sl, #0xd12]
	mov sb, #0
	cmp r5, #0
	ble _021EC174
	ldr r0, _021EC17C ; =0x0000047C
	ldrh r6, [r4, #0xa]
	mov r8, sl
	add r7, sl, r0
	add r4, r4, #0xc
_021EC130:
	add r0, r8, #0x400
	ldrh r0, [r0, #0x7a]
	cmp r6, r0
	bne _021EC160
	mov r0, r4
	mov r1, r7
	mov r2, r6
	bl strncmp
	cmp r0, #0
	addeq r0, sl, sb, lsl #2
	ldreqb r0, [r0, #0x445]
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_021EC160:
	add sb, sb, #1
	cmp sb, r5
	add r8, r8, #0xc0
	add r7, r7, #0xc0
	blt _021EC130
_021EC174:
	mvn r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_021EC17C: .word 0x0000047C
	arm_func_end MOD04_021EC0E8

	arm_func_start MOD04_021EC180
MOD04_021EC180: ; 0x021EC180
	stmdb sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #4
	mov r6, r0
	ldrh r3, [r6, #0xa]
	mov r5, r1
	mov r4, r2
	cmp r3, #0x20
	bne _021EC1B0
	bl MOD04_021EC210
	cmp r0, #0
	addgt sp, sp, #4
	ldmgtia sp!, {r4, r5, r6, r7, r8, sb, pc}
_021EC1B0:
	cmp r5, #0
	mov sb, #0
	ble _021EC204
	ldrh r8, [r6, #0xa]
	add r6, r6, #0xc
	and r7, r8, #0xff
_021EC1C8:
	ldrb r0, [r4, #3]
	cmp r7, r0
	bne _021EC1F4
	mov r0, r6
	mov r2, r8
	add r1, r4, #4
	bl strncmp
	cmp r0, #0
	addeq sp, sp, #4
	ldreqb r0, [r4, #1]
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, pc}
_021EC1F4:
	add sb, sb, #1
	cmp sb, r5
	add r4, r4, #0x24
	blt _021EC1C8
_021EC204:
	mvn r0, #0
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
	arm_func_end MOD04_021EC180

	arm_func_start MOD04_021EC210
MOD04_021EC210: ; 0x021EC210
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	mov r0, #0x10
	bl MOD04_021EB798
	mov r4, r0
	ldrb r0, [r4, #0xd0c]
	mov r0, r0, lsl #0x1c
	movs r0, r0, lsr #0x1c
	beq _021EC240
	cmp r0, #4
	bne _021EC270
_021EC240:
	ldrh r0, [r5, #0x2c]
	mov r0, r0, asr #4
	and r0, r0, #1
	and r0, r0, #0xff
	cmp r0, #1
	bne _021EC270
	add r0, r5, #0xc
	bl MOD04_021EE5C8
	cmp r0, #1
	addeq sp, sp, #4
	moveq r0, #6
	ldmeqia sp!, {r4, r5, pc}
_021EC270:
	ldrb r0, [r4, #0xd0c]
	mov r0, r0, lsl #0x1c
	movs r0, r0, lsr #0x1c
	beq _021EC288
	cmp r0, #5
	bne _021EC2B8
_021EC288:
	ldrh r0, [r5, #0x2c]
	mov r0, r0, asr #4
	and r0, r0, #1
	and r0, r0, #0xff
	cmp r0, #1
	bne _021EC2B8
	add r0, r5, #0xc
	bl MOD04_021EE668
	cmp r0, #1
	addeq sp, sp, #4
	moveq r0, #7
	ldmeqia sp!, {r4, r5, pc}
_021EC2B8:
	mvn r0, #0
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	arm_func_end MOD04_021EC210

	arm_func_start MOD04_021EC2C4
MOD04_021EC2C4: ; 0x021EC2C4
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	mov r7, r0
	mov r0, #0x10
	mvn r6, #0
	bl MOD04_021EB798
	mov r4, r0
	mov r0, #1
	bl MOD04_021EB798
	mov r1, #1
	strb r1, [r0, #0xb]
	bl MOD04_021EB720
	cmp r0, #3
	beq _021EC314
	cmp r0, #4
	beq _021EC384
	cmp r0, #5
	beq _021EC3D0
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, pc}
_021EC314:
	ldrh r1, [r7, #0xa]
	ldrb r5, [r4, #0xd11]
	cmp r1, #0
	beq _021EC330
	ldrb r0, [r7, #0xc]
	cmp r0, #0
	bne _021EC33C
_021EC330:
	ldrh r0, [r7, #0x36]
	bl MOD04_021EDA3C
	b _021EC418
_021EC33C:
	cmp r1, #1
	beq _021EC34C
	cmp r0, #0x20
	bne _021EC36C
_021EC34C:
	ldrh r0, [r7, #0x36]
	bl MOD04_021EDA3C
	ldrb r1, [r4, #0xd10]
	mov r0, r7
	add r2, r4, #0x300
	bl MOD04_021EC180
	mov r6, r0
	b _021EC418
_021EC36C:
	ldrb r1, [r4, #0xd10]
	mov r0, r7
	add r2, r4, #0x300
	bl MOD04_021EC180
	mov r6, r0
	b _021EC418
_021EC384:
	ldrb r2, [r4, #0xd0f]
	mov r1, #0xc0
	mov r0, r7
	mla r1, r2, r1, r4
	add r1, r1, #0x400
	ldrh r2, [r1, #0xa6]
	mov r1, r4
	sub r2, r2, #1
	and r5, r2, #0xff
	bl MOD04_021EC0E8
	movs r6, r0
	bmi _021EC418
	ldr r0, _021EC448 ; =0x00000447
	ldrb r1, [r4, #0xd0f]
	add r2, r4, r0
	ldrb r0, [r2, r1, lsl #2]
	orr r0, r0, #0x80
	strb r0, [r2, r1, lsl #2]
	b _021EC418
_021EC3D0:
	ldrb r1, [r4, #0xd0f]
	add r2, r4, #0x300
	mov r0, #0x24
	mla r2, r1, r0, r2
	mov r0, r7
	mov r1, #1
	ldrb r5, [r4, #0xd11]
	bl MOD04_021EC180
	movs r6, r0
	bmi _021EC418
	ldrb r1, [r4, #0xd0f]
	mov r0, #0x24
	add r3, r4, #0x300
	mul r2, r1, r0
	ldrb r0, [r3, r2]
	bic r0, r0, #0xf
	orr r0, r0, #1
	strb r0, [r3, r2]
_021EC418:
	cmp r6, #0
	addlt sp, sp, #4
	ldmltia sp!, {r4, r5, r6, r7, pc}
	mov r0, r6
	mov r1, r7
	mov r2, r5
	mov r3, r4
	bl MOD04_021EC008
	mov r1, r4
	bl MOD04_021EBE20
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_021EC448: .word 0x00000447
	arm_func_end MOD04_021EC2C4

	arm_func_start MOD04_021EC44C
MOD04_021EC44C: ; 0x021EC44C
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r0, #0x10
	bl MOD04_021EB798
	ldrsh r1, [r4]
	cmp r1, #5
	bne _021EC4C4
	ldrsh r1, [r4, #2]
	cmp r1, #0
	ldmeqia sp!, {r4, pc}
	ldr r1, [r4, #8]
	cmp r1, #0xd
	beq _021EC494
	cmp r1, #0xf
	beq _021EC4A0
	cmp r1, #0x11
	beq _021EC4AC
	b _021EC4B8
_021EC494:
	mov r1, #1
	strb r1, [r0, #0xd14]
	ldmia sp!, {r4, pc}
_021EC4A0:
	mov r1, #2
	strb r1, [r0, #0xd14]
	ldmia sp!, {r4, pc}
_021EC4AC:
	mov r1, #3
	strb r1, [r0, #0xd14]
	ldmia sp!, {r4, pc}
_021EC4B8:
	mov r1, #4
	strb r1, [r0, #0xd14]
	ldmia sp!, {r4, pc}
_021EC4C4:
	cmp r1, #7
	ldmneia sp!, {r4, pc}
	ldr r0, [r4, #4]
	bl MOD04_021EC2C4
	ldmia sp!, {r4, pc}
	arm_func_end MOD04_021EC44C

	arm_func_start MOD04_021EC4D8
MOD04_021EC4D8: ; 0x021EC4D8
	stmdb sp!, {r4, lr}
	mov r4, r2
	cmp r1, #9
	addls pc, pc, r1, lsl #2
	b _021EC5B8
_021EC4EC: ; jump table
	b _021EC51C ; case 0
	b _021EC518 ; case 1
	b _021EC514 ; case 2
	b _021EC548 ; case 3
	b _021EC544 ; case 4
	b _021EC540 ; case 5
	b _021EC56C ; case 6
	b _021EC594 ; case 7
	b _021EC5B8 ; case 8
	b _021EC5B8 ; case 9
_021EC514:
	add r0, r0, #0x100
_021EC518:
	add r0, r0, #0x100
_021EC51C:
	ldrb r2, [r0, #0xe6]
	add r0, r0, #0x80
	add r1, r4, #2
	mov r2, r2, lsl #0x1e
	mov r3, r2, lsr #0x1e
	mov r2, #0x50
	strb r3, [r4]
	bl MI_CpuCopy8
	b _021EC5B8
_021EC540:
	add r0, r0, #0x100
_021EC544:
	add r0, r0, #0x100
_021EC548:
	mov r3, #1
	add r0, r0, #0xd1
	add r1, r4, #2
	mov r2, #0x14
	strb r3, [r4]
	bl MI_CpuCopy8
	mov r0, #0
	strb r0, [r4, #0x16]
	b _021EC5B8
_021EC56C:
	mov r1, #2
	strb r1, [r4]
	ldr r1, _021EC5CC ; =0x0000047C
	ldrb r2, [r0, #0xd13]
	add r1, r0, r1
	mov r0, #0xc0
	mla r0, r2, r0, r1
	add r1, r4, #2
	bl MOD04_021EE5B8
	b _021EC5B8
_021EC594:
	mov r1, #2
	strb r1, [r4]
	ldr r1, _021EC5CC ; =0x0000047C
	ldrb r2, [r0, #0xd13]
	add r1, r0, r1
	mov r0, #0xc0
	mla r0, r2, r0, r1
	add r1, r4, #2
	bl MOD04_021EE640
_021EC5B8:
	ldrb r0, [r4]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r4, pc}
	.align 2, 0
_021EC5CC: .word 0x0000047C
	arm_func_end MOD04_021EC4D8

	arm_func_start MOD04_021EC5D0
MOD04_021EC5D0: ; 0x021EC5D0
	ldrb r0, [r0, #0xd0b]
	mov r0, r0, lsl #0x1c
	mov r0, r0, lsr #0x1e
	cmp r0, #1
	moveq r0, #0xc0000
	movne r0, #0x80000
	bx lr
	arm_func_end MOD04_021EC5D0

	arm_func_start MOD04_021EC5EC
MOD04_021EC5EC: ; 0x021EC5EC
	ldrb r0, [r0, #0xd0b]
	mov r0, r0, lsl #0x1e
	mov r0, r0, lsr #0x1e
	cmp r0, #1
	moveq r0, #0x30000
	movne r0, #0x20000
	bx lr
	arm_func_end MOD04_021EC5EC

	arm_func_start MOD04_021EC608
MOD04_021EC608: ; 0x021EC608
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #4
	mov sl, r0
	ldrb r2, [sl, #0xd13]
	ldrb r1, [sl, #0xd0c]
	add r3, sl, #0x470
	mov r0, #0xc0
	mla sb, r2, r0, r3
	mov r0, r1, lsl #0x18
	movs r0, r0, lsr #0x1e
	mov r0, #0
	str r0, [sp]
	bne _021EC72C
	ldrh r0, [sb, #0xa]
	ldr r7, [sp]
	cmp r0, #0x20
	bne _021EC66C
	mov r0, sb
	bl MOD04_021EC210
	cmp r0, #0
	str r0, [sp]
	movle r0, #0
	addgt r7, r7, #1
	strle r0, [sp]
	b _021EC690
_021EC66C:
	cmp r0, #8
	bne _021EC690
	mov r0, sb
	bl MOD04_021ED12C
	cmp r0, #0
	str r0, [sp]
	moveq r0, #0
	addne r7, r7, #1
	streq r0, [sp]
_021EC690:
	ldrb r0, [sl, #0xd10]
	mov r8, #0
	cmp r0, #0
	ble _021EC79C
	mov r6, sl
	add r5, sl, #0x304
	add r4, sl, #0x300
	ldr r0, _021EC7AC ; =0x00000D0C
	add fp, sl, r0
_021EC6B4:
	ldrh r2, [sb, #0xa]
	ldrb r0, [r6, #0x303]
	cmp r2, r0
	bne _021EC70C
	mov r1, r5
	add r0, sb, #0xc
	bl strncmp
	cmp r0, #0
	bne _021EC70C
	cmp r7, #0
	ldreqb r0, [r6, #0x301]
	streq r0, [sp]
	beq _021EC708
	ldrb r0, [r4]
	bic r0, r0, #0xf0
	orr r0, r0, #0x10
	strb r0, [r4]
	ldrb r0, [fp]
	bic r0, r0, #0xc0
	orr r0, r0, #0x40
	strb r0, [fp]
_021EC708:
	add r7, r7, #1
_021EC70C:
	ldrb r0, [sl, #0xd10]
	add r8, r8, #1
	add r6, r6, #0x24
	cmp r8, r0
	add r5, r5, #0x24
	add r4, r4, #0x24
	blt _021EC6B4
	b _021EC79C
_021EC72C:
	ldrb r0, [sl, #0xd10]
	ldr r2, [sp]
	mov r3, r2
	cmp r0, #0
	ble _021EC78C
	mov r4, sl
	add r5, sl, #0x300
_021EC748:
	ldrb r0, [r5]
	mov r1, r0, lsl #0x18
	mov r1, r1, lsr #0x1c
	cmp r1, #1
	bne _021EC774
	cmp r3, #0
	biceq r0, r0, #0xf0
	streqb r0, [r5]
	ldreqb r0, [r4, #0x301]
	add r3, r3, #1
	streq r0, [sp]
_021EC774:
	ldrb r0, [sl, #0xd10]
	add r2, r2, #1
	add r5, r5, #0x24
	cmp r2, r0
	add r4, r4, #0x24
	blt _021EC748
_021EC78C:
	cmp r3, #1
	ldreqb r0, [sl, #0xd0c]
	biceq r0, r0, #0xc0
	streqb r0, [sl, #0xd0c]
_021EC79C:
	ldr r0, [sp]
	and r0, r0, #0xff
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_021EC7AC: .word 0x00000D0C
	arm_func_end MOD04_021EC608

	arm_func_start MOD04_021EC7B0
MOD04_021EC7B0: ; 0x021EC7B0
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	bl WCM_GetPhase
	ldrb r2, [r6, #0xd13]
	add r3, r6, #0x470
	mov r1, #0xc0
	mla r5, r2, r1, r3
	cmp r0, #3
	bne _021EC8BC
	mov r0, r6
	bl MOD04_021EC5EC
	ldrb r1, [r6, #0xd15]
	mov r4, r0
	add r0, r1, #1
	strb r0, [r6, #0xd15]
	ldrb r1, [r6, #0xd15]
	cmp r1, #3
	bls _021EC818
	mov r0, #0
	strb r0, [r6, #0xd15]
	ldrb r1, [r6, #0xd13]
	mov r2, #1
	mov r0, #9
	add r1, r6, r1, lsl #2
	strb r2, [r1, #0x444]
	ldmia sp!, {r4, r5, r6, pc}
_021EC818:
	cmp r1, #1
	beq _021EC898
	ldrb r0, [r6, #0xd14]
	cmp r0, #1
	ldreqb r0, [r6, #0xd0b]
	biceq r0, r0, #0xc
	streqb r0, [r6, #0xd0b]
	beq _021EC898
	cmp r0, #2
	bne _021EC860
	mov r0, #0
	strb r0, [r6, #0xd15]
	ldrb r1, [r6, #0xd13]
	mov r2, #3
	mov r0, #9
	add r1, r6, r1, lsl #2
	strb r2, [r1, #0x444]
	ldmia sp!, {r4, r5, r6, pc}
_021EC860:
	cmp r0, #3
	bne _021EC888
	mov r0, #0
	strb r0, [r6, #0xd15]
	ldrb r1, [r6, #0xd13]
	mov r2, #4
	mov r0, #9
	add r1, r6, r1, lsl #2
	strb r2, [r1, #0x444]
	ldmia sp!, {r4, r5, r6, pc}
_021EC888:
	cmp r1, #3
	ldreqb r0, [r6, #0xd0b]
	biceq r0, r0, #0xc
	streqb r0, [r6, #0xd0b]
_021EC898:
	mov r0, r6
	bl MOD04_021EC5D0
	mov r2, r0
	ldr r1, _021EC8E8 ; =0x00000CB8
	mov r0, r5
	add r1, r6, r1
	orr r2, r4, r2
	bl WCM_ConnectAsync
	b _021EC8E0
_021EC8BC:
	cmp r0, #9
	bne _021EC8E0
	mov r0, #0
	strb r0, [r6, #0xd15]
	bl OS_GetTick
	str r0, [r6, #0xcb0]
	str r1, [r6, #0xcb4]
	mov r0, #0xa
	ldmia sp!, {r4, r5, r6, pc}
_021EC8E0:
	mov r0, #8
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_021EC8E8: .word 0x00000CB8
	arm_func_end MOD04_021EC7B0

	arm_func_start MOD04_021EC8EC
MOD04_021EC8EC: ; 0x021EC8EC
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	ldrb r2, [r5, #0xd13]
	add r3, r5, #0x470
	mov r1, #0xc0
	mla r4, r2, r1, r3
	bl MOD04_021EC608
	ldr r1, _021ECA04 ; =0x00000CB8
	strb r0, [r5, #0xd0d]
	add r0, r5, r1
	mov r1, #0
	mov r2, #0x52
	bl MI_CpuFill8
	ldr r2, _021ECA04 ; =0x00000CB8
	ldrb r1, [r5, #0xd0d]
	mov r0, r5
	add r2, r5, r2
	bl MOD04_021EC4D8
	cmp r0, #0
	beq _021EC9B0
	ldrb r0, [r5, #0xd0b]
	bic r0, r0, #0xc
	orr r0, r0, #4
	strb r0, [r5, #0xd0b]
	ldrh r0, [r4, #0x2c]
	mov r0, r0, asr #4
	ands r0, r0, #1
	bne _021EC97C
	ldrb r1, [r5, #0xd13]
	mov r2, #3
	add sp, sp, #4
	add r1, r5, r1, lsl #2
	strb r2, [r1, #0x444]
	mov r0, #9
	ldmia sp!, {r4, r5, pc}
_021EC97C:
	ldrb r0, [r5, #0xd0d]
	cmp r0, #6
	bne _021EC9EC
	ldrb r0, [r4, #0x15]
	cmp r0, #0
	bne _021EC9EC
	ldrb r1, [r5, #0xd13]
	mov r2, #3
	add sp, sp, #4
	add r1, r5, r1, lsl #2
	strb r2, [r1, #0x444]
	mov r0, #9
	ldmia sp!, {r4, r5, pc}
_021EC9B0:
	ldrb r0, [r5, #0xd0b]
	bic r0, r0, #0xc
	strb r0, [r5, #0xd0b]
	ldrh r0, [r4, #0x2c]
	mov r0, r0, asr #4
	and r0, r0, #1
	cmp r0, #1
	bne _021EC9EC
	ldrb r1, [r5, #0xd13]
	mov r2, #3
	add sp, sp, #4
	add r1, r5, r1, lsl #2
	strb r2, [r1, #0x444]
	mov r0, #9
	ldmia sp!, {r4, r5, pc}
_021EC9EC:
	mov r0, #0
	strb r0, [r5, #0xd15]
	strb r0, [r5, #0xd14]
	mov r0, #8
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_021ECA04: .word 0x00000CB8
	arm_func_end MOD04_021EC8EC

	arm_func_start MOD04_021ECA08
MOD04_021ECA08: ; 0x021ECA08
	stmdb sp!, {r4, lr}
	bl MOD04_021EB720
	mov r4, r0
	mov r0, #0x10
	bl MOD04_021EB798
	cmp r4, #7
	beq _021ECA30
	cmp r4, #8
	beq _021ECA3C
	b _021ECA44
_021ECA30:
	bl MOD04_021EC8EC
	mov r4, r0
	b _021ECA44
_021ECA3C:
	bl MOD04_021EC7B0
	mov r4, r0
_021ECA44:
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end MOD04_021ECA08

	arm_func_start MOD04_021ECA4C
MOD04_021ECA4C: ; 0x021ECA4C
	stmdb sp!, {lr}
	sub sp, sp, #4
	bl SOCL_CalmDown
	cmp r0, #0
	addne sp, sp, #4
	movne r0, #0
	ldmneia sp!, {pc}
	bl SOC_Cleanup
	cmp r0, #0
	beq _021ECA80
	mvn r1, #0x26
	cmp r0, r1
	bne _021ECA8C
_021ECA80:
	add sp, sp, #4
	mov r0, #1
	ldmfd sp!, {pc}
_021ECA8C:
	mov r0, #0
	add sp, sp, #4
	ldmfd sp!, {pc}
	arm_func_end MOD04_021ECA4C

	arm_func_start MOD04_021ECA98
MOD04_021ECA98: ; 0x021ECA98
	stmdb sp!, {lr}
	sub sp, sp, #4
	bl WCM_GetPhase
	cmp r0, #0xc
	addls pc, pc, r0, lsl #2
	b _021ECB2C
_021ECAB0: ; jump table
	b _021ECAE4 ; case 0
	b _021ECAF0 ; case 1
	b _021ECB2C ; case 2
	b _021ECAF8 ; case 3
	b _021ECB2C ; case 4
	b _021ECB2C ; case 5
	b _021ECB00 ; case 6
	b _021ECB2C ; case 7
	b _021ECB2C ; case 8
	b _021ECB08 ; case 9
	b _021ECB2C ; case 10
	b _021ECB18 ; case 11
	b _021ECB10 ; case 12
_021ECAE4:
	add sp, sp, #4
	mov r0, #1
	ldmfd sp!, {pc}
_021ECAF0:
	bl WCM_Finish
	b _021ECB2C
_021ECAF8:
	bl WCM_CleanupAsync
	b _021ECB2C
_021ECB00:
	bl WCM_EndSearchAsync
	b _021ECB2C
_021ECB08:
	bl WCM_DisconnectAsync
	b _021ECB2C
_021ECB10:
	bl WCM_TerminateAsync
	b _021ECB2C
_021ECB18:
	mov r0, #0
	bl MOD04_021EB6F4
	add sp, sp, #4
	mvn r0, #0
	ldmfd sp!, {pc}
_021ECB2C:
	mov r0, #0
	add sp, sp, #4
	ldmfd sp!, {pc}
	arm_func_end MOD04_021ECA98

	arm_func_start MOD04_021ECB38
MOD04_021ECB38: ; 0x021ECB38
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldrb r0, [r4]
	cmp r0, #0xa
	bhi _021ECB80
	bl MOD04_021ECA98
	cmp r0, #1
	moveq r0, #0
	streqb r0, [r4]
	moveq r0, #1
	ldmeqia sp!, {r4, pc}
	mvn r1, #0
	cmp r0, r1
	bne _021ECBB4
	mov r0, #0x12
	strb r0, [r4]
	mov r0, #1
	ldmia sp!, {r4, pc}
_021ECB80:
	cmp r0, #0xe
	bne _021ECB9C
	bl MOD04_021DC7F0
	bl MOD04_021DC870
	mov r0, #0xc
	strb r0, [r4]
	b _021ECBB4
_021ECB9C:
	cmp r0, #0x12
	bhs _021ECBB4
	bl MOD04_021ECA4C
	cmp r0, #1
	moveq r0, #0xa
	streqb r0, [r4]
_021ECBB4:
	mov r0, #0
	ldmia sp!, {r4, pc}
	arm_func_end MOD04_021ECB38

	arm_func_start MOD04_021ECBBC
MOD04_021ECBBC: ; 0x021ECBBC
	ldrb r1, [r0, #0x16]
	cmp r1, #0xa
	bhs _021ECC04
	ldrb r1, [r0, #0x14]
	cmp r1, #3
	ldreqb r1, [r0, #0x15]
	ldreq r0, _021ECCC4 ; =0xFFFF3864
	subeq r2, r0, r1
	beq _021ECCBC
	cmp r1, #4
	ldreqb r1, [r0, #0x15]
	moveq r0, #0xc800
	rsbeq r0, r0, #0
	subeq r2, r0, r1
	ldrneb r1, [r0, #0x15]
	ldrne r0, _021ECCC8 ; =0xFFFF379C
	subne r2, r0, r1
	b _021ECCBC
_021ECC04:
	cmp r1, #0xd
	ldrlob r1, [r0, #0x15]
	ldrlo r0, _021ECCCC ; =0xFFFF34E0
	sublo r2, r0, r1
	blo _021ECCBC
	ldr r2, [r0, #0x10]
	cmp r2, #0
	ldreqb r1, [r0, #0x15]
	ldreq r0, _021ECCD0 ; =0xFFFF3CB0
	subeq r2, r0, r1
	beq _021ECCBC
	mvn r1, #0
	cmp r2, r1
	ldreqb r1, [r0, #0x15]
	ldreq r0, _021ECCD4 ; =0xFFFF347C
	subeq r2, r0, r1
	beq _021ECCBC
	mvn r1, #1
	cmp r2, r1
	ldreqb r1, [r0, #0x15]
	ldreq r0, _021ECCD8 ; =0xFFFF3418
	subeq r2, r0, r1
	beq _021ECCBC
	mvn r1, #2
	cmp r2, r1
	ldreqb r1, [r0, #0x15]
	ldreq r0, _021ECCDC ; =0xFFFF33B4
	subeq r2, r0, r1
	beq _021ECCBC
	mvn r1, #3
	cmp r2, r1
	ldreqb r1, [r0, #0x15]
	ldreq r0, _021ECCE0 ; =0xFFFF30F8
	subeq r2, r0, r1
	beq _021ECCBC
	mvn r1, #4
	cmp r2, r1
	ldreqb r1, [r0, #0x15]
	ldreq r0, _021ECCE4 ; =0xFFFF3094
	subeq r2, r0, r1
	beq _021ECCBC
	mvn r1, #5
	cmp r2, r1
	ldreqb r1, [r0, #0x15]
	ldreq r0, _021ECCE8 ; =0xFFFF3030
	subeq r2, r0, r1
_021ECCBC:
	mov r0, r2
	bx lr
	.align 2, 0
_021ECCC4: .word 0xFFFF3864
_021ECCC8: .word 0xFFFF379C
_021ECCCC: .word 0xFFFF34E0
_021ECCD0: .word 0xFFFF3CB0
_021ECCD4: .word 0xFFFF347C
_021ECCD8: .word 0xFFFF3418
_021ECCDC: .word 0xFFFF33B4
_021ECCE0: .word 0xFFFF30F8
_021ECCE4: .word 0xFFFF3094
_021ECCE8: .word 0xFFFF3030
	arm_func_end MOD04_021ECBBC

	arm_func_start MOD04_021ECCEC
MOD04_021ECCEC: ; 0x021ECCEC
	ldrb r0, [r0, #0xb]
	cmp r0, #0
	ldreq r0, _021ECD00 ; =0xFFFF3C4D
	ldrne r0, _021ECD04 ; =0xFFFF3865
	bx lr
	.align 2, 0
_021ECD00: .word 0xFFFF3C4D
_021ECD04: .word 0xFFFF3865
	arm_func_end MOD04_021ECCEC

	arm_func_start MOD04_021ECD08
MOD04_021ECD08: ; 0x021ECD08
	mvn r0, #5
	bx lr
	arm_func_end MOD04_021ECD08

	arm_func_start MOD04_021ECD10
MOD04_021ECD10: ; 0x021ECD10
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _021ECD4C
_021ECD1C: ; jump table
	b _021ECD34 ; case 0
	b _021ECD2C ; case 1
	b _021ECD3C ; case 2
	b _021ECD44 ; case 3
_021ECD2C:
	mvn r0, #8
	bx lr
_021ECD34:
	mvn r0, #9
	bx lr
_021ECD3C:
	mvn r0, #7
	bx lr
_021ECD44:
	mvn r0, #6
	bx lr
_021ECD4C:
	mov r0, #0
	bx lr
	arm_func_end MOD04_021ECD10

	arm_func_start MOD04_021ECD54
MOD04_021ECD54: ; 0x021ECD54
	stmdb sp!, {r4, lr}
	mov r0, #1
	bl MOD04_021EB798
	mov r4, r0
	bl MOD04_021EB6E0
	cmp r0, #4
	bge _021ECD78
	bl MOD04_021ECD10
	ldmia sp!, {r4, pc}
_021ECD78:
	cmp r0, #5
	bge _021ECD88
	bl MOD04_021ECD08
	ldmia sp!, {r4, pc}
_021ECD88:
	cmp r0, #5
	bne _021ECD9C
	mov r0, r4
	bl MOD04_021ECCEC
	ldmia sp!, {r4, pc}
_021ECD9C:
	mov r0, r4
	bl MOD04_021ECBBC
	ldmia sp!, {r4, pc}
	arm_func_end MOD04_021ECD54

	arm_func_start MOD04_021ECDA8
MOD04_021ECDA8: ; 0x021ECDA8
	stmdb sp!, {lr}
	sub sp, sp, #4
	mov r0, #1
	bl MOD04_021EB798
	add r0, r0, #0xa
	bl MOD04_021ECB38
	cmp r0, #1
	moveq r0, #0x12
	movne r0, #0x11
	add sp, sp, #4
	ldmfd sp!, {pc}
	arm_func_end MOD04_021ECDA8

	arm_func_start MOD04_021ECDD4
MOD04_021ECDD4: ; 0x021ECDD4
	ldrb r2, [r0, #0xd12]
	mov r3, #0
	mov ip, r3
	cmp r2, #0
	bls _021ECE10
_021ECDE8:
	add r1, r0, ip, lsl #2
	ldrb r1, [r1, #0x447]
	mov r1, r1, lsl #0x18
	movs r1, r1, lsr #0x1f
	moveq r3, ip
	beq _021ECE10
	add r1, ip, #1
	and ip, r1, #0xff
	cmp ip, r2
	blo _021ECDE8
_021ECE10:
	mov r0, r3
	bx lr
	arm_func_end MOD04_021ECDD4

	arm_func_start MOD04_021ECE18
MOD04_021ECE18: ; 0x021ECE18
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	ldrb r1, [r0, #0xd12]
	mov r3, #0
	mov ip, r3
	cmp r1, #0
	ble _021ECEA0
	ldr r2, _021ECEAC ; =0x00000447
	mov r1, r0
	add r2, r0, r2
_021ECE40:
	add r4, r0, ip, lsl #2
	ldrb r4, [r4, #0x444]
	cmp r4, #0
	bne _021ECE7C
	add lr, r1, #0x400
	ldrh r4, [lr, #0xa6]
	ldrb lr, [r2]
	sub r5, r4, #1
	mov r4, lr, lsl #0x19
	cmp r5, r4, lsr #25
	bicne lr, lr, #0x80
	addne r3, r3, #1
	strneb lr, [r2]
	andne r3, r3, #0xff
	bne _021ECE88
_021ECE7C:
	ldrb lr, [r2]
	orr lr, lr, #0x80
	strb lr, [r2]
_021ECE88:
	ldrb lr, [r0, #0xd12]
	add ip, ip, #1
	add r2, r2, #4
	cmp ip, lr
	add r1, r1, #0xc0
	blt _021ECE40
_021ECEA0:
	mov r0, r3
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_021ECEAC: .word 0x00000447
	arm_func_end MOD04_021ECE18

	arm_func_start MOD04_021ECEB0
MOD04_021ECEB0: ; 0x021ECEB0
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	mov r5, #0
	mov r4, r0
	mov r6, r5
	add lr, r0, #0x300
	mov ip, r5
	mov r2, r5
	mov r1, r5
	mov r7, r5
	mov r3, #1
_021ECED8:
	ldrb r8, [r0, #0xd0c]
	mov r8, r8, lsl #0x1c
	movs sb, r8, lsr #0x1c
	beq _021ECEF4
	add r8, r6, #1
	cmp sb, r8
	bne _021ECFB0
_021ECEF4:
	ldrb r8, [r4, #0xe7]
	cmp r8, #0xff
	beq _021ECFB0
	mov sb, ip
_021ECF04:
	add r8, r4, sb
	ldrb sl, [r8, #0x40]
	cmp sl, #0
	beq _021ECF2C
	add r8, sb, #1
	add sb, lr, sb
	strb sl, [sb, #4]
	and sb, r8, #0xff
	cmp sb, #0x20
	blo _021ECF04
_021ECF2C:
	cmp sb, #0
	strneb sb, [lr, #3]
	movne r8, r3
	strneb r6, [lr, #1]
	moveq r8, r2
	cmp r8, #0
	addne r5, r5, #1
	ldrb r8, [r4, #0xe7]
	andne r5, r5, #0xff
	addne lr, lr, #0x24
	cmp r8, #1
	bne _021ECFB0
	mov sb, r1
_021ECF60:
	add r8, r4, sb
	ldrb sl, [r8, #0x60]
	cmp sl, #0
	beq _021ECF88
	add r8, sb, #1
	add sb, lr, sb
	strb sl, [sb, #4]
	and sb, r8, #0xff
	cmp sb, #0x20
	blo _021ECF60
_021ECF88:
	cmp sb, #0
	strneb sb, [lr, #3]
	movne sb, r3
	addne r8, r6, #3
	moveq sb, r7
	strneb r8, [lr, #1]
	cmp sb, #0
	addne r5, r5, #1
	andne r5, r5, #0xff
	addne lr, lr, #0x24
_021ECFB0:
	add r6, r6, #1
	cmp r6, #3
	add r4, r4, #0x100
	blt _021ECED8
	mov r0, r5
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	arm_func_end MOD04_021ECEB0

	arm_func_start MOD04_021ECFC8
MOD04_021ECFC8: ; 0x021ECFC8
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	add r4, r6, #0x300
	bl MOD04_021ECEB0
	ldrb r1, [r6, #0xd0c]
	mov r5, r0
	mov r0, #0x24
	mov r1, r1, lsl #0x1c
	mla r4, r5, r0, r4
	movs r0, r1, lsr #0x1c
	beq _021ECFFC
	cmp r0, #4
	bne _021ED028
_021ECFFC:
	ldr r0, _021ED0B4 ; =UNK04_0220D4C0
	add r1, r4, #4
	mov r2, #8
	bl MI_CpuCopy8
	mov r1, #8
	add r0, r5, #1
	strb r1, [r4, #3]
	mov r1, #6
	strb r1, [r4, #1]
	and r5, r0, #0xff
	add r4, r4, #0x24
_021ED028:
	ldrb r0, [r6, #0xd0c]
	mov r0, r0, lsl #0x1c
	movs r0, r0, lsr #0x1c
	beq _021ED040
	cmp r0, #7
	bne _021ED06C
_021ED040:
	ldr r0, _021ED0B8 ; =UNK04_0220BADC
	add r1, r4, #4
	mov r2, #8
	bl MI_CpuCopy8
	mov r1, #8
	add r0, r5, #1
	strb r1, [r4, #3]
	mov r1, #9
	strb r1, [r4, #1]
	and r5, r0, #0xff
	add r4, r4, #0x24
_021ED06C:
	ldrb r0, [r6, #0xd0c]
	mov r0, r0, lsl #0x1c
	movs r0, r0, lsr #0x1c
	beq _021ED084
	cmp r0, #8
	bne _021ED0AC
_021ED084:
	ldr r0, _021ED0BC ; =UNK04_0220BAEC
	add r1, r4, #4
	mov r2, #0xb
	bl MI_CpuCopy8
	mov r1, #0xb
	add r0, r5, #1
	strb r1, [r4, #3]
	mov r1, #0xa
	strb r1, [r4, #1]
	and r5, r0, #0xff
_021ED0AC:
	mov r0, r5
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_021ED0B4: .word UNK04_0220D4C0
_021ED0B8: .word UNK04_0220BADC
_021ED0BC: .word UNK04_0220BAEC
	arm_func_end MOD04_021ECFC8

	arm_func_start MOD04_021ED0C0
MOD04_021ED0C0: ; 0x021ED0C0
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	add r4, r5, #0x300
	bl MOD04_021ECEB0
	ldrb r1, [r5, #0xd0c]
	mov r5, r0
	mov r0, #0x24
	mov r1, r1, lsl #0x1c
	mla r4, r5, r0, r4
	movs r0, r1, lsr #0x1c
	beq _021ED0F8
	cmp r0, #6
	bne _021ED11C
_021ED0F8:
	ldr r0, _021ED128 ; =UNK04_0220BAE4
	add r1, r4, #4
	mov r2, #8
	bl MI_CpuCopy8
	mov r1, #8
	strb r1, [r4, #3]
	add r0, r5, #1
	strb r1, [r4, #1]
	and r5, r0, #0xff
_021ED11C:
	mov r0, r5
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_021ED128: .word UNK04_0220BAE4
	arm_func_end MOD04_021ED0C0

	arm_func_start MOD04_021ED12C
MOD04_021ED12C: ; 0x021ED12C
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r0, #0x10
	bl MOD04_021EB798
	ldrb r0, [r0, #0xd0c]
	mov r0, r0, lsl #0x1c
	movs r0, r0, lsr #0x1c
	beq _021ED154
	cmp r0, #6
	bne _021ED170
_021ED154:
	ldr r1, _021ED178 ; =UNK04_0220BAE4
	add r0, r4, #0xc
	mov r2, #8
	bl strncmp
	cmp r0, #0
	moveq r0, #8
	ldmeqia sp!, {r4, pc}
_021ED170:
	mov r0, #0
	ldmia sp!, {r4, pc}
	.align 2, 0
_021ED178: .word UNK04_0220BAE4
	arm_func_end MOD04_021ED12C

	arm_func_start MOD04_021ED17C
MOD04_021ED17C: ; 0x021ED17C
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	mov r0, #0x10
	bl MOD04_021EB798
	mov r4, r0
	cmp r5, #0
	beq _021ED1B0
	cmp r5, #1
	beq _021ED1D0
	cmp r5, #2
	beq _021ED1E8
	b _021ED20C
_021ED1B0:
	add r1, r4, #0x300
	mov r0, #0
	mov r2, #0x144
	bl MIi_CpuClear32
	mov r0, r4
	bl MOD04_021ED0C0
	strb r0, [r4, #0xd10]
	b _021ED20C
_021ED1D0:
	bl MOD04_021ECE18
	strb r0, [r4, #0xd10]
	mov r0, r4
	bl MOD04_021ECDD4
	strb r0, [r4, #0xd0f]
	b _021ED20C
_021ED1E8:
	add r1, r4, #0x300
	mov r0, #0
	mov r2, #0x144
	bl MIi_CpuClear32
	mov r1, #0
	mov r0, r4
	strb r1, [r4, #0xd0f]
	bl MOD04_021ECFC8
	strb r0, [r4, #0xd10]
_021ED20C:
	ldrb r0, [r4, #0xd10]
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	arm_func_end MOD04_021ED17C

	arm_func_start MOD04_021ED218
MOD04_021ED218: ; 0x021ED218
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r0, #0x10
	bl MOD04_021EB798
	mov r4, r0
	mov r5, #9
	bl WCM_GetPhase
	cmp r0, #0xc
	addls pc, pc, r0, lsl #2
	b _021ED2F0
_021ED240: ; jump table
	b _021ED2F0 ; case 0
	b _021ED2F0 ; case 1
	b _021ED2F0 ; case 2
	b _021ED274 ; case 3
	b _021ED2F0 ; case 4
	b _021ED2F0 ; case 5
	b _021ED2C0 ; case 6
	b _021ED2F0 ; case 7
	b _021ED2F0 ; case 8
	b _021ED2C8 ; case 9
	b _021ED2F0 ; case 10
	b _021ED2E4 ; case 11
	b _021ED2D0 ; case 12
_021ED274:
	ldrb r0, [r4, #0xd0c]
	ldrb r5, [r4, #0xd0e]
	mov r0, r0, lsl #0x18
	mov r0, r0, lsr #0x1e
	cmp r0, #1
	bne _021ED2A4
	ldrb r0, [r4, #0xd13]
	mov r1, #0
	mov r5, #7
	add r0, r4, r0, lsl #2
	strb r1, [r0, #0x444]
	b _021ED2F0
_021ED2A4:
	cmp r5, #3
	blo _021ED2F0
	cmp r5, #5
	bhi _021ED2F0
	mov r0, r5
	bl MOD04_021ED8D4
	b _021ED2F0
_021ED2C0:
	bl WCM_EndSearchAsync
	b _021ED2F0
_021ED2C8:
	bl WCM_DisconnectAsync
	b _021ED2F0
_021ED2D0:
	bl WCM_TerminateAsync
	mov r0, #4
	bl MOD04_021EB6F4
	mov r5, #0x11
	b _021ED2F0
_021ED2E4:
	mov r0, #0
	bl MOD04_021EB6F4
	mov r5, #0x11
_021ED2F0:
	mov r0, r5
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	arm_func_end MOD04_021ED218

	arm_func_start MOD04_021ED2FC
MOD04_021ED2FC: ; 0x021ED2FC
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr ip, _021ED324 ; =UNK04_0220BAF8
	cmp r2, #0xc
	movgt r2, #0xc
	ldr r2, [ip, r2, lsl #2]
	orr r2, r3, r2
	bl WCM_SearchAsync
	add sp, sp, #4
	ldmfd sp!, {pc}
	.align 2, 0
_021ED324: .word UNK04_0220BAF8
	arm_func_end MOD04_021ED2FC

	arm_func_start MOD04_021ED328
MOD04_021ED328: ; 0x021ED328
	stmdb sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0xd00
	ldrh r0, [r0, #0x16]
	cmp r0, #0
	beq _021ED364
	mov r0, #2
	bl MOD04_021ED17C
	cmp r0, #0
	beq _021ED364
	mov r0, #0
	bl MOD04_021ED9D0
	strb r0, [r4, #0xd11]
	mov r0, #5
	ldmia sp!, {r4, pc}
_021ED364:
	ldrb r0, [r4, #0xd0b]
	mov r0, r0, lsl #0x18
	mov r0, r0, lsr #0x1c
	cmp r0, #1
	movhs r0, #6
	ldmhsia sp!, {r4, pc}
	mov r0, r4
	bl MOD04_021ED798
	ldmia sp!, {r4, pc}
	arm_func_end MOD04_021ED328

	arm_func_start MOD04_021ED388
MOD04_021ED388: ; 0x021ED388
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r4, r1
	cmp r4, #0x11
	mov r5, r0
	addeq sp, sp, #4
	moveq r0, r4
	ldmeqia sp!, {r4, r5, pc}
	ldrb r1, [r5, #0xd12]
	mov r2, #0
	cmp r1, #0
	bls _021ED3D8
_021ED3B8:
	add r0, r5, r2, lsl #2
	ldrb r0, [r0, #0x444]
	cmp r0, #0
	beq _021ED3D8
	add r0, r2, #1
	and r2, r0, #0xff
	cmp r2, r1
	blo _021ED3B8
_021ED3D8:
	cmp r4, #6
	bne _021ED410
	cmp r1, r2
	bne _021ED448
	cmp r2, #0
	bne _021ED3FC
	mov r0, #5
	bl MOD04_021EB6F4
	b _021ED404
_021ED3FC:
	mov r0, #6
	bl MOD04_021EB6F4
_021ED404:
	add sp, sp, #4
	mov r0, #0x11
	ldmia sp!, {r4, r5, pc}
_021ED410:
	cmp r1, #0
	addeq sp, sp, #4
	moveq r0, r4
	ldmeqia sp!, {r4, r5, pc}
	cmp r1, r2
	addeq sp, sp, #4
	moveq r0, r4
	ldmeqia sp!, {r4, r5, pc}
	add r0, r5, r2, lsl #2
	ldrb r0, [r0, #0x446]
	cmp r0, #0x14
	addlo sp, sp, #4
	movlo r0, r4
	ldmloia sp!, {r4, r5, pc}
_021ED448:
	strb r2, [r5, #0xd13]
	bl WCM_EndSearchAsync
	cmp r0, #1
	strneb r4, [r5, #0xd0e]
	movne r4, #7
	mov r0, r4
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	arm_func_end MOD04_021ED388

	arm_func_start MOD04_021ED468
MOD04_021ED468: ; 0x021ED468
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r4, r1
	mov r5, r0
	cmp r4, #3
	beq _021ED494
	cmp r4, #4
	beq _021ED4F8
	cmp r4, #5
	beq _021ED504
	b _021ED524
_021ED494:
	ldrb r1, [r5, #0xd12]
	cmp r1, #0
	bne _021ED4B0
	add r1, r5, #0xd00
	ldrh r1, [r1, #0x16]
	cmp r1, #0
	beq _021ED4D4
_021ED4B0:
	mov r0, #1
	bl MOD04_021ED17C
	cmp r0, #0
	movne r4, #4
	bne _021ED524
	mov r0, r5
	bl MOD04_021ED328
	mov r4, r0
	b _021ED524
_021ED4D4:
	ldrb r1, [r5, #0xd0b]
	mov r1, r1, lsl #0x18
	mov r1, r1, lsr #0x1c
	cmp r1, #1
	movhs r4, #6
	bhs _021ED524
	bl MOD04_021ED798
	mov r4, r0
	b _021ED524
_021ED4F8:
	bl MOD04_021ED328
	mov r4, r0
	b _021ED524
_021ED504:
	ldrb r1, [r5, #0xd0b]
	mov r1, r1, lsl #0x18
	mov r1, r1, lsr #0x1c
	cmp r1, #1
	movhs r4, #6
	bhs _021ED524
	bl MOD04_021ED798
	mov r4, r0
_021ED524:
	mov r0, r4
	bl MOD04_021ED8D4
	mov r0, r4
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	arm_func_end MOD04_021ED468

	arm_func_start MOD04_021ED538
MOD04_021ED538: ; 0x021ED538
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl OS_GetTick
	ldr r3, [r4, #0xcb0]
	ldr r2, [r4, #0xcb4]
	subs r3, r0, r3
	sbc r0, r1, r2
	mov r1, r0, lsl #6
	ldr r2, _021ED650 ; =0x000082EA
	orr r1, r1, r3, lsr #26
	mov r0, r3, lsl #6
	mov r3, #0
	bl _ll_udiv
	cmp r1, #0
	cmpeq r0, #0x96
	bhs _021ED598
	ldrb r1, [r4, #0xd0f]
	mov r0, #0x24
	mla r0, r1, r0, r4
	ldrb r0, [r0, #0x300]
	mov r0, r0, lsl #0x1c
	mov r0, r0, lsr #0x1c
	cmp r0, #1
	bne _021ED648
_021ED598:
	ldrb r1, [r4, #0xd0f]
	mov r0, #0x24
	add r3, r4, #0x300
	mul r2, r1, r0
	ldrb r0, [r3, r2]
	bic r0, r0, #0xf
	strb r0, [r3, r2]
	ldrb r0, [r4, #0xd0f]
	add r0, r0, #1
	strb r0, [r4, #0xd0f]
	ldrb r1, [r4, #0xd10]
	ldrb r0, [r4, #0xd0f]
	cmp r1, r0
	bhi _021ED5F0
	ldrb r1, [r4, #0xd15]
	mov r0, #0
	add r1, r1, #1
	strb r1, [r4, #0xd15]
	strb r0, [r4, #0xd0f]
	ldrb r0, [r4, #0xd15]
	bl MOD04_021ED9D0
	strb r0, [r4, #0xd11]
_021ED5F0:
	add r0, r4, #0xd00
	ldrsb r0, [r0, #0x11]
	cmp r0, #0
	bge _021ED618
	mov r2, #0
	mov r0, r4
	mov r1, #5
	strb r2, [r4, #0xd15]
	bl MOD04_021ED468
	ldmia sp!, {r4, pc}
_021ED618:
	bl OS_GetTick
	str r0, [r4, #0xcb0]
	str r1, [r4, #0xcb4]
	ldrb r3, [r4, #0xd0f]
	add r1, r4, #0x304
	mov r0, #0x24
	add r2, r4, #0xd00
	mla r1, r3, r0, r1
	ldrsb r2, [r2, #0x11]
	ldr r0, _021ED654 ; =WCM_Bssid_Any
	mov r3, #0x300000
	bl MOD04_021ED2FC
_021ED648:
	mov r0, #5
	ldmia sp!, {r4, pc}
	.align 2, 0
_021ED650: .word 0x000082EA
_021ED654: .word WCM_Bssid_Any
	arm_func_end MOD04_021ED538

	arm_func_start MOD04_021ED658
MOD04_021ED658: ; 0x021ED658
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl OS_GetTick
	ldr r3, [r4, #0xcb0]
	ldr r2, [r4, #0xcb4]
	subs r3, r0, r3
	sbc r0, r1, r2
	mov r1, r0, lsl #6
	ldr r2, _021ED784 ; =0x000082EA
	orr r1, r1, r3, lsr #26
	mov r0, r3, lsl #6
	mov r3, #0
	bl _ll_udiv
	cmp r1, #0
	cmpeq r0, #0x96
	bhs _021ED6B4
	ldrb r0, [r4, #0xd0f]
	add r0, r4, r0, lsl #2
	ldrb r0, [r0, #0x447]
	mov r0, r0, lsl #0x18
	mov r0, r0, lsr #0x1f
	cmp r0, #1
	bne _021ED77C
_021ED6B4:
	ldr r0, _021ED788 ; =0x00000447
	ldrb r1, [r4, #0xd0f]
	add r2, r4, r0
	ldrb r0, [r2, r1, lsl #2]
	orr r0, r0, #0x80
	strb r0, [r2, r1, lsl #2]
	ldrb r2, [r4, #0xd12]
	ldrb r3, [r4, #0xd0f]
	cmp r3, r2
	bhs _021ED714
	ldr r0, _021ED78C ; =0x00000D0F
	add r1, r4, r0
_021ED6E4:
	add r0, r4, r3, lsl #2
	ldrb r0, [r0, #0x447]
	mov r0, r0, lsl #0x18
	movs r0, r0, lsr #0x1f
	beq _021ED714
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldrb r2, [r4, #0xd12]
	ldrb r3, [r4, #0xd0f]
	cmp r3, r2
	blo _021ED6E4
_021ED714:
	cmp r2, r3
	bhi _021ED734
	mov r2, #0
	mov r0, r4
	mov r1, #4
	strb r2, [r4, #0xd0f]
	bl MOD04_021ED468
	ldmia sp!, {r4, pc}
_021ED734:
	bl OS_GetTick
	str r0, [r4, #0xcb0]
	str r1, [r4, #0xcb4]
	ldrb r2, [r4, #0xd0f]
	mov r0, #0xc0
	ldr r1, _021ED790 ; =0x00000474
	mul ip, r2, r0
	add r0, r4, ip
	add r0, r0, #0x400
	ldrh r2, [r0, #0xa6]
	ldr r0, _021ED794 ; =0x0000047C
	add r3, r4, r1
	add r1, r4, r0
	add r0, r3, ip
	add r1, r1, ip
	sub r2, r2, #1
	mov r3, #0x300000
	bl MOD04_021ED2FC
_021ED77C:
	mov r0, #4
	ldmia sp!, {r4, pc}
	.align 2, 0
_021ED784: .word 0x000082EA
_021ED788: .word 0x00000447
_021ED78C: .word 0x00000D0F
_021ED790: .word 0x00000474
_021ED794: .word 0x0000047C
	arm_func_end MOD04_021ED658

	arm_func_start MOD04_021ED798
MOD04_021ED798: ; 0x021ED798
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r0, #0
	strb r0, [r4, #0xd15]
	ldrb r2, [r4, #0xd0b]
	mov r1, r2, lsl #0x18
	mov r1, r1, lsr #0x1c
	add r1, r1, #1
	and r1, r1, #0xff
	bic r2, r2, #0xf0
	and r1, r1, #0xf
	orr r1, r2, r1, lsl #4
	strb r1, [r4, #0xd0b]
	bl MOD04_021ED17C
	mov r0, #1
	strb r0, [r4, #0xd11]
	mov r0, #3
	ldmia sp!, {r4, pc}
	arm_func_end MOD04_021ED798

	arm_func_start MOD04_021ED7E0
MOD04_021ED7E0: ; 0x021ED7E0
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl OS_GetTick
	ldr r3, [r4, #0xcb0]
	ldr r2, [r4, #0xcb4]
	subs r3, r0, r3
	sbc r0, r1, r2
	mov r1, r0, lsl #6
	ldr r2, _021ED878 ; =0x000082EA
	orr r1, r1, r3, lsr #26
	mov r0, r3, lsl #6
	mov r3, #0
	bl _ll_udiv
	cmp r1, #0
	cmpeq r0, #0x12c
	blo _021ED870
	add r0, r4, #0xd00
	ldrsb r1, [r0, #0x11]
	add r1, r1, #2
	strb r1, [r4, #0xd11]
	ldrsb r0, [r0, #0x11]
	cmp r0, #0xd
	blt _021ED84C
	mov r0, r4
	mov r1, #3
	bl MOD04_021ED468
	ldmia sp!, {r4, pc}
_021ED84C:
	bl OS_GetTick
	str r0, [r4, #0xcb0]
	str r1, [r4, #0xcb4]
	add r0, r4, #0xd00
	ldrsb r2, [r0, #0x11]
	ldr r0, _021ED87C ; =WCM_Bssid_Any
	ldr r1, _021ED880 ; =WCM_Essid_Any
	mov r3, #0x200000
	bl MOD04_021ED2FC
_021ED870:
	mov r0, #3
	ldmia sp!, {r4, pc}
	.align 2, 0
_021ED878: .word 0x000082EA
_021ED87C: .word WCM_Bssid_Any
_021ED880: .word WCM_Essid_Any
	arm_func_end MOD04_021ED7E0

	arm_func_start MOD04_021ED884
MOD04_021ED884: ; 0x021ED884
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl OS_GetTick
	str r0, [r4, #0xcb0]
	str r1, [r4, #0xcb4]
	mov r0, #0
	strb r0, [r4, #0xd11]
	bl OS_GetTick
	str r0, [r4, #0xcb0]
	str r1, [r4, #0xcb4]
	add r0, r4, #0xd00
	ldrsb r2, [r0, #0x11]
	ldr r0, _021ED8CC ; =WCM_Bssid_Any
	ldr r1, _021ED8D0 ; =WCM_Essid_Any
	mov r3, #0x200000
	bl MOD04_021ED2FC
	mov r0, #3
	ldmia sp!, {r4, pc}
	.align 2, 0
_021ED8CC: .word WCM_Bssid_Any
_021ED8D0: .word WCM_Essid_Any
	arm_func_end MOD04_021ED884

	arm_func_start MOD04_021ED8D4
MOD04_021ED8D4: ; 0x021ED8D4
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	mov r0, #0x10
	bl MOD04_021EB798
	mov r4, r0
	cmp r5, #3
	beq _021ED90C
	cmp r5, #4
	beq _021ED938
	cmp r5, #5
	beq _021ED988
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
_021ED90C:
	bl OS_GetTick
	str r0, [r4, #0xcb0]
	str r1, [r4, #0xcb4]
	add r0, r4, #0xd00
	ldrsb r2, [r0, #0x11]
	ldr r0, _021ED9C0 ; =WCM_Bssid_Any
	ldr r1, _021ED9C4 ; =WCM_Essid_Any
	mov r3, #0x200000
	bl MOD04_021ED2FC
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
_021ED938:
	bl OS_GetTick
	str r0, [r4, #0xcb0]
	str r1, [r4, #0xcb4]
	ldrb r2, [r4, #0xd0f]
	mov r0, #0xc0
	ldr r1, _021ED9C8 ; =0x00000474
	mul ip, r2, r0
	add r0, r4, ip
	add r0, r0, #0x400
	ldrh r2, [r0, #0xa6]
	ldr r0, _021ED9CC ; =0x0000047C
	add r3, r4, r1
	add r1, r4, r0
	add r0, r3, ip
	add r1, r1, ip
	sub r2, r2, #1
	mov r3, #0x300000
	bl MOD04_021ED2FC
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
_021ED988:
	bl OS_GetTick
	str r0, [r4, #0xcb0]
	str r1, [r4, #0xcb4]
	ldrb r3, [r4, #0xd0f]
	add r1, r4, #0x304
	mov r0, #0x24
	add r2, r4, #0xd00
	mla r1, r3, r0, r1
	ldrsb r2, [r2, #0x11]
	ldr r0, _021ED9C0 ; =WCM_Bssid_Any
	mov r3, #0x300000
	bl MOD04_021ED2FC
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_021ED9C0: .word WCM_Bssid_Any
_021ED9C4: .word WCM_Essid_Any
_021ED9C8: .word 0x00000474
_021ED9CC: .word 0x0000047C
	arm_func_end MOD04_021ED8D4

	arm_func_start MOD04_021ED9D0
MOD04_021ED9D0: ; 0x021ED9D0
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r0, #0x10
	bl MOD04_021EB798
	add r0, r0, #0xd00
	ldrh r2, [r0, #0x16]
	cmp r2, #0
	mvneq r0, #0
	ldmeqia sp!, {r4, pc}
	mov ip, #0
	mov r3, ip
	mov r1, #1
_021EDA00:
	mov r0, r1,lsl  ip
	ands r0, r2, r0
	beq _021EDA24
	cmp r3, r4
	moveq r0, ip, lsl #0x18
	moveq r0, r0, asr #0x18
	ldmeqia sp!, {r4, pc}
	add r0, r3, #1
	and r3, r0, #0xff
_021EDA24:
	add r0, ip, #1
	and ip, r0, #0xff
	cmp ip, #0xd
	blo _021EDA00
	mvn r0, #0
	ldmia sp!, {r4, pc}
	arm_func_end MOD04_021ED9D0

	arm_func_start MOD04_021EDA3C
MOD04_021EDA3C: ; 0x021EDA3C
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r0, #0x10
	bl MOD04_021EB798
	add r0, r0, #0xd00
	cmp r4, #0xd
	movhi r4, #0xd
	ldrh r3, [r0, #0x16]
	sub r1, r4, #1
	mov r2, #1
	orr r1, r3, r2, lsl r1
	strh r1, [r0, #0x16]
	ldmia sp!, {r4, pc}
	arm_func_end MOD04_021EDA3C

	arm_func_start MOD04_021EDA70
MOD04_021EDA70: ; 0x021EDA70
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r0, #0x10
	bl MOD04_021EB798
	mov r5, r0
	bl MOD04_021EB720
	mov r4, r0
	bl WCM_GetPhase
	cmp r4, #2
	bne _021EDAB0
	cmp r0, #3
	bne _021EDAB0
	mov r0, r5
	bl MOD04_021ED884
	mov r4, r0
	b _021EDB38
_021EDAB0:
	cmp r4, #6
	bne _021EDACC
	mov r0, r5
	mov r1, r4
	bl MOD04_021ED388
	mov r4, r0
	b _021EDB38
_021EDACC:
	cmp r0, #3
	beq _021EDADC
	cmp r0, #6
	bne _021EDB38
_021EDADC:
	mov r0, r5
	mov r1, r4
	bl MOD04_021ED388
	mov r4, r0
	cmp r4, #7
	beq _021EDB38
	cmp r4, #3
	bne _021EDB0C
	mov r0, r5
	bl MOD04_021ED7E0
	mov r4, r0
	b _021EDB38
_021EDB0C:
	cmp r4, #4
	bne _021EDB24
	mov r0, r5
	bl MOD04_021ED658
	mov r4, r0
	b _021EDB38
_021EDB24:
	cmp r4, #5
	bne _021EDB38
	mov r0, r5
	bl MOD04_021ED538
	mov r4, r0
_021EDB38:
	mov r0, r4
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	arm_func_end MOD04_021EDA70

	arm_func_start MOD04_021EDB44
MOD04_021EDB44: ; 0x021EDB44
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x10
	bl WCM_GetPhase
	mov r4, r0
	mov r0, #0x10
	bl MOD04_021EB798
	cmp r4, #1
	bne _021EDBB0
	ldrb r1, [r0, #0xd0a]
	mov r0, #0
	str r1, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	bl MOD04_021ED17C
	ldr r1, _021EDBC8 ; =MOD04_021EC44C
	add r0, sp, #0
	bl WCM_StartupAsync
	cmp r0, #1
	beq _021EDB9C
	cmp r0, #4
	blt _021EDBBC
_021EDB9C:
	mov r0, #1
	bl MOD04_021EB6F4
	add sp, sp, #0x10
	mov r0, #0x11
	ldmia sp!, {r4, pc}
_021EDBB0:
	add sp, sp, #0x10
	mov r0, #1
	ldmia sp!, {r4, pc}
_021EDBBC:
	mov r0, #2
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
	.align 2, 0
_021EDBC8: .word MOD04_021EC44C
	arm_func_end MOD04_021EDB44

	arm_func_start MOD04_021EDBCC
MOD04_021EDBCC: ; 0x021EDBCC
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	mov r4, r0
	ldrb r0, [r4, #0xd0d]
	cmp r0, #6
	addhs sp, sp, #8
	ldmhsia sp!, {r4, pc}
	bl MOD04_021EB6AC
	add r4, r4, r0, lsl #8
	ldrb r0, [r4, #0xc0]
	ldrb r2, [r4, #0xc8]
	ldrb r1, [r4, #0xc9]
	cmp r0, #0
	ldrb r3, [r4, #0xca]
	add r1, r2, r1
	ldrb r2, [r4, #0xcb]
	add r1, r3, r1
	addne sp, sp, #8
	add r0, r2, r1
	ldmneia sp!, {r4, pc}
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqia sp!, {r4, pc}
	add r0, r4, #0xc8
	bl MOD04_021EDCA8
	str r0, [sp]
	add r0, r4, #0xcc
	bl MOD04_021EDCA8
	str r0, [sp, #4]
	add r0, sp, #0
	add r1, sp, #4
	bl SOC_GetResolver
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	arm_func_end MOD04_021EDBCC

	arm_func_start MOD04_021EDC54
MOD04_021EDC54: ; 0x021EDC54
	rsb r0, r0, #0x20
	cmp r0, #0
	mvn r3, #0
	mov r1, #0
	ble _021EDC78
_021EDC68:
	add r1, r1, #1
	cmp r1, r0
	mov r3, r3, lsl #1
	blt _021EDC68
_021EDC78:
	mov r1, r3, lsr #0x18
	mov r0, r3, lsr #8
	mov r2, r3, lsl #8
	mov r3, r3, lsl #0x18
	and r1, r1, #0xff
	and r0, r0, #0xff00
	and r2, r2, #0xff0000
	orr r0, r1, r0
	and r1, r3, #0xff000000
	orr r0, r2, r0
	orr r0, r1, r0
	bx lr
	arm_func_end MOD04_021EDC54

	arm_func_start MOD04_021EDCA8
MOD04_021EDCA8: ; 0x021EDCA8
	ldrb r1, [r0]
	ldrb r2, [r0, #1]
	mov r3, #0
	orr r3, r3, r1, lsl #24
	ldrb r1, [r0, #2]
	orr r2, r3, r2, lsl #16
	ldrb r0, [r0, #3]
	orr r1, r2, r1, lsl #8
	orr r3, r1, r0
	mov r1, r3, lsr #0x18
	mov r0, r3, lsr #8
	mov r2, r3, lsl #8
	mov r3, r3, lsl #0x18
	and r1, r1, #0xff
	and r0, r0, #0xff00
	and r2, r2, #0xff0000
	orr r0, r1, r0
	and r1, r3, #0xff000000
	orr r0, r2, r0
	orr r0, r1, r0
	bx lr
	arm_func_end MOD04_021EDCA8

	arm_func_start MOD04_021EDCFC
MOD04_021EDCFC: ; 0x021EDCFC
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r4, r2
	mov r5, r1
	ldr r0, _021EDDB8 ; =UNK04_0220BB2C
	mov r1, r4
	mov r2, #0x58
	bl MI_CpuCopy8
	ldr r0, [r6]
	str r0, [r4, #4]
	ldr r0, [r6, #4]
	str r0, [r4, #8]
	ldrb r0, [r5, #0xd0d]
	cmp r0, #6
	ldmhsia sp!, {r4, r5, r6, pc}
	bl MOD04_021EB6AC
	add r5, r5, r0, lsl #8
	ldrb r0, [r5, #0xc0]
	cmp r0, #0
	beq _021EDD94
	mov r0, #0
	str r0, [r4, #0xc]
	add r0, r5, #0xc0
	bl MOD04_021EDCA8
	str r0, [r4, #0x10]
	ldrb r0, [r5, #0xd0]
	bl MOD04_021EDC54
	str r0, [r4, #0x14]
	add r0, r5, #0xc4
	bl MOD04_021EDCA8
	str r0, [r4, #0x18]
	add r0, r5, #0xc8
	bl MOD04_021EDCA8
	str r0, [r4, #0x1c]
	add r0, r5, #0xcc
	bl MOD04_021EDCA8
	str r0, [r4, #0x20]
	ldmia sp!, {r4, r5, r6, pc}
_021EDD94:
	mov r0, #1
	str r0, [r4, #0xc]
	mov r0, #0
	str r0, [r4, #0x10]
	str r0, [r4, #0x14]
	str r0, [r4, #0x18]
	str r0, [r4, #0x1c]
	str r0, [r4, #0x20]
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_021EDDB8: .word UNK04_0220BB2C
	arm_func_end MOD04_021EDCFC

	arm_func_start MOD04_021EDDBC
MOD04_021EDDBC: ; 0x021EDDBC
	stmdb sp!, {lr}
	sub sp, sp, #4
	bl SOCL_CalmDown
	cmp r0, #0
	addne sp, sp, #4
	movne r0, #0xb
	ldmneia sp!, {pc}
	bl SOC_Cleanup
	cmp r0, #0
	beq _021EDDF0
	mvn r1, #0x26
	cmp r0, r1
	bne _021EDDFC
_021EDDF0:
	add sp, sp, #4
	mov r0, #9
	ldmfd sp!, {pc}
_021EDDFC:
	mov r0, #0xb
	add sp, sp, #4
	ldmfd sp!, {pc}
	arm_func_end MOD04_021EDDBC

	arm_func_start MOD04_021EDE08
MOD04_021EDE08: ; 0x021EDE08
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldrb r0, [r0, #0xd0d]
	bl MOD04_021EB6BC
	mov r0, #0x10
	add sp, sp, #4
	ldmfd sp!, {pc}
	arm_func_end MOD04_021EDE08

	arm_func_start MOD04_021EDE24
MOD04_021EDE24: ; 0x021EDE24
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r0, #1
	bl MOD04_021EB798
	mov r4, r0
	bl MOD04_021DC7AC
	movs r5, r0
	beq _021EDE88
	ldrb r0, [r6, #0xd0d]
	bl MOD04_021EB6AC
	ldrb r1, [r4, #0x15]
	cmp r1, r0
	bne _021EDE60
	bl MOD04_021DC794
	str r0, [r4, #0x10]
_021EDE60:
	bl MOD04_021DC870
	cmp r5, #0xb
	moveq r0, #0xf
	ldmeqia sp!, {r4, r5, r6, pc}
	ldrb r1, [r6, #0xd13]
	mov r2, #1
	mov r0, #0xb
	add r1, r6, r1, lsl #2
	strb r2, [r1, #0x444]
	ldmia sp!, {r4, r5, r6, pc}
_021EDE88:
	mov r0, #0xe
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end MOD04_021EDE24

	arm_func_start MOD04_021EDE90
MOD04_021EDE90: ; 0x021EDE90
	stmdb sp!, {lr}
	sub sp, sp, #4
	mov r0, #8
	bl MOD04_021EB798
	bl MOD04_021DC970
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0xe
	ldmeqia sp!, {pc}
	mov r0, #3
	bl MOD04_021EB6F4
	mov r0, #0x11
	add sp, sp, #4
	ldmfd sp!, {pc}
	arm_func_end MOD04_021EDE90

	arm_func_start MOD04_021EDEC8
MOD04_021EDEC8: ; 0x021EDEC8
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl SOC_GetHostID
	cmp r0, #0
	beq _021EDF00
	mov r0, r4
	bl MOD04_021EDBCC
	ldrb r0, [r4, #0xd0c]
	mov r0, r0, lsl #0x1a
	mov r0, r0, lsr #0x1e
	cmp r0, #1
	moveq r0, #0xf
	movne r0, #0xd
	ldmia sp!, {r4, pc}
_021EDF00:
	bl OS_GetTick
	ldr r3, [r4, #0xcb0]
	ldr r2, [r4, #0xcb4]
	subs r3, r0, r3
	sbc r0, r1, r2
	mov r1, r0, lsl #6
	ldr r2, _021EDF54 ; =0x01FF6210
	orr r1, r1, r3, lsr #26
	mov r0, r3, lsl #6
	mov r3, #0
	bl _ll_udiv
	cmp r1, #0
	cmpeq r0, #0xa
	movlo r0, #0xc
	ldmloia sp!, {r4, pc}
	ldrb r1, [r4, #0xd13]
	mov r2, #1
	mov r0, #0xb
	add r1, r4, r1, lsl #2
	strb r2, [r1, #0x444]
	ldmia sp!, {r4, pc}
	.align 2, 0
_021EDF54: .word 0x01FF6210
	arm_func_end MOD04_021EDEC8

	arm_func_start MOD04_021EDF58
MOD04_021EDF58: ; 0x021EDF58
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r0, #1
	bl MOD04_021EB798
	mov r5, r0
	mov r0, #4
	bl MOD04_021EB798
	mov r4, r0
	mov r0, r5
	mov r1, r6
	mov r2, r4
	bl MOD04_021EDCFC
	ldr r1, _021EDFB8 ; =SOCLiYieldWait
	mov r2, #4
	mov r0, r4
	str r2, [r1]
	bl SOC_Startup
	cmp r0, #0
	moveq r0, #0xc
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r0, #2
	bl MOD04_021EB6F4
	mov r0, #0x11
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_021EDFB8: .word SOCLiYieldWait
	arm_func_end MOD04_021EDF58

	arm_func_start MOD04_021EDFBC
MOD04_021EDFBC: ; 0x021EDFBC
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	bl MOD04_021EB720
	mov r5, r0
	mov r0, #0x10
	bl MOD04_021EB798
	mov r4, r0
	bl WCM_GetPhase
	cmp r0, #9
	bne _021EE064
	sub r0, r5, #0xa
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _021EE0B4
_021EDFF4: ; jump table
	b _021EE00C ; case 0
	b _021EE058 ; case 1
	b _021EE01C ; case 2
	b _021EE02C ; case 3
	b _021EE038 ; case 4
	b _021EE048 ; case 5
_021EE00C:
	mov r0, r4
	bl MOD04_021EDF58
	mov r5, r0
	b _021EE0B4
_021EE01C:
	mov r0, r4
	bl MOD04_021EDEC8
	mov r5, r0
	b _021EE0B4
_021EE02C:
	bl MOD04_021EDE90
	mov r5, r0
	b _021EE0B4
_021EE038:
	mov r0, r4
	bl MOD04_021EDE24
	mov r5, r0
	b _021EE0B4
_021EE048:
	mov r0, r4
	bl MOD04_021EDE08
	mov r5, r0
	b _021EE0B4
_021EE058:
	bl MOD04_021EDDBC
	mov r5, r0
	b _021EE0B4
_021EE064:
	cmp r5, #0xb
	beq _021EE08C
	cmp r5, #0xe
	beq _021EE098
	cmp r5, #0xf
	bne _021EE0A0
	mov r0, r4
	bl MOD04_021EDE08
	mov r5, r0
	b _021EE0B4
_021EE08C:
	bl MOD04_021EDDBC
	mov r5, r0
	b _021EE0B4
_021EE098:
	bl MOD04_021DC7F0
	bl MOD04_021DC870
_021EE0A0:
	ldrb r0, [r4, #0xd13]
	mov r1, #2
	mov r5, #0xb
	add r0, r4, r0, lsl #2
	strb r1, [r0, #0x444]
_021EE0B4:
	mov r0, r5
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	arm_func_end MOD04_021EDFBC

	arm_func_start MOD04_021EE0C0
MOD04_021EE0C0: ; 0x021EE0C0
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x1c
	mov r4, #3
	mul r4, r2, r4
	mov r4, r4, lsr #2
	mov sl, r0
	mov r0, r4
	cmp r3, r0
	andhs fp, r2, #3
	subhs r0, r2, fp
	str r4, [sp, #4]
	mov sb, r1
	strhs r0, [sp]
	bhs _021EE104
	add sp, sp, #0x1c
	mvn r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021EE104:
	cmp r0, #0
	mov r7, #0
	ble _021EE190
	mov r5, r7
	add r4, sp, #0x10
	str r7, [sp, #0xc]
	str r7, [sp, #8]
_021EE120:
	ldr r8, [sp, #8]
	mov r6, r8
_021EE128:
	add r0, r7, r6
	ldrb r0, [sl, r0]
	bl MOD04_021EE234
	rsb r2, r6, #3
	mov r1, #6
	mul r1, r2, r1
	orr r8, r8, r0, lsl r1
	add r6, r6, #1
	cmp r6, #4
	blt _021EE128
	mov r0, #3
	mul r1, r5, r0
	ldr r2, [sp, #0xc]
	str r8, [sp, #0x10]
_021EE160:
	rsb r0, r2, #2
	ldrb r0, [r4, r0]
	add r2, r2, #1
	cmp r2, #3
	strb r0, [sb, r1]
	add r1, r1, #1
	blt _021EE160
	ldr r0, [sp]
	add r7, r7, #4
	cmp r7, r0
	add r5, r5, #1
	blt _021EE120
_021EE190:
	cmp fp, #0
	beq _021EE228
	mov r5, #0
	mov r4, r5
	str r5, [sp, #0x14]
	cmp fp, #0
	ble _021EE1E4
	mov r6, #6
_021EE1B0:
	ldr r0, [sp]
	add r0, r0, r4
	ldrb r0, [sl, r0]
	bl MOD04_021EE234
	rsb r1, r4, #3
	mul r2, r1, r6
	orr r5, r5, r0, lsl r2
	ldr r0, [sp, #0x14]
	add r4, r4, #1
	orr r0, r0, r5
	cmp r4, fp
	str r0, [sp, #0x14]
	blt _021EE1B0
_021EE1E4:
	cmp fp, #0
	mov r2, #0
	ble _021EE228
	ldr r0, [sp]
	mov r1, #3
	mul r1, r0, r1
	mov r0, r1, asr #1
	add r0, r1, r0, lsr #30
	mov r3, r0, asr #2
	add r1, sp, #0x14
_021EE20C:
	rsb r0, r2, #2
	ldrb r0, [r1, r0]
	add r2, r2, #1
	cmp r2, fp
	strb r0, [sb, r3]
	add r3, r3, #1
	blt _021EE20C
_021EE228:
	ldr r0, [sp, #4]
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end MOD04_021EE0C0

	arm_func_start MOD04_021EE234
MOD04_021EE234: ; 0x021EE234
	cmp r0, #0x41
	blo _021EE248
	cmp r0, #0x5a
	subls r0, r0, #0x41
	bxls lr
_021EE248:
	cmp r0, #0x61
	blo _021EE260
	cmp r0, #0x7a
	subls r0, r0, #0x61
	addls r0, r0, #0x1a
	bxls lr
_021EE260:
	cmp r0, #0x30
	blo _021EE278
	cmp r0, #0x39
	subls r0, r0, #0x30
	addls r0, r0, #0x34
	bxls lr
_021EE278:
	cmp r0, #0x2b
	moveq r0, #0x3e
	bxeq lr
	cmp r0, #0x2f
	moveq r0, #0x3f
	bxeq lr
	cmp r0, #0x3d
	movne r0, #1
	moveq r0, #0
	rsb r0, r0, #0
	bx lr
	arm_func_end MOD04_021EE234

	arm_func_start MOD04_021EE2A4
MOD04_021EE2A4: ; 0x021EE2A4
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x10
	mov r4, r1
	mov r1, #0
	ldr lr, _021EE454 ; =0x92492493
	ldr ip, _021EE458 ; =0x00000007
_021EE2BC:
	smull r2, r3, lr, r1
	add r3, r1, r3
	mov r3, r3, asr #2
	mov r2, r1, lsr #0x1f
	add r3, r2, r3
	smull r2, r3, ip, r3
	sub r3, r1, r2
	add r2, r3, #0xd
	ldrb r3, [r0, r1]
	ldrb r2, [r0, r2]
	eor r2, r3, r2
	strb r2, [r4, r1]
	add r1, r1, #1
	cmp r1, #0xd
	blt _021EE2BC
	mov ip, #0
_021EE2FC:
	add r3, ip, #3
	add r1, ip, #0xd
	ldrb r2, [r4, r3]
	ldrb r1, [r0, r1]
	add ip, ip, #1
	cmp ip, #7
	eor r1, r2, r1
	strb r1, [r4, r3]
	blt _021EE2FC
	ldr r0, _021EE45C ; =UNK04_0220D4DC
	mov r3, #0
_021EE328:
	ldr r1, [r0]
	ldrb r2, [r4, r3]
	ldrsb r1, [r1, r3]
	eor r1, r2, r1
	strb r1, [r4, r3]
	add r3, r3, #1
	cmp r3, #0xd
	blt _021EE328
	add r1, sp, #0
	mov r0, r4
	mov r2, #0xd
	bl MI_CpuCopy8
	ldr r3, _021EE460 ; =UNK04_0220BB84
	add ip, sp, #0
	mov r2, #0
_021EE364:
	ldrb r1, [ip]
	ldrb r0, [r3]
	add r2, r2, #1
	cmp r2, #0xd
	strb r1, [r4, r0]
	add ip, ip, #1
	add r3, r3, #1
	blt _021EE364
	ldr r0, _021EE464 ; =UNK04_0220D4E0
	mov r3, #0
_021EE38C:
	ldr r1, [r0]
	ldrb r2, [r4, r3]
	ldrsb r1, [r1, r3]
	eor r1, r2, r1
	strb r1, [r4, r3]
	add r3, r3, #1
	cmp r3, #0xd
	blt _021EE38C
	ldr r2, _021EE468 ; =UNK04_0220BB94
	mov ip, #0
_021EE3B4:
	ldrb r3, [r4, ip]
	mov r0, r3, asr #4
	and r1, r0, #0xf
	and r0, r3, #0xf
	ldrb r1, [r2, r1]
	ldrb r0, [r2, r0]
	orr r0, r0, r1, lsl #4
	strb r0, [r4, ip]
	add ip, ip, #1
	cmp ip, #0xd
	blt _021EE3B4
	mov r0, #0
_021EE3E4:
	add lr, r0, #6
	ldrb r2, [r4, r0]
	ldrb r1, [r4, lr]
	add ip, r0, #9
	add r3, r0, #3
	eor r1, r2, r1
	strb r1, [r4, r0]
	ldrb r2, [r4, r3]
	ldrb r1, [r4, ip]
	eor r1, r2, r1
	strb r1, [r4, r3]
	ldrb r2, [r4, lr]
	ldrb r1, [r4, r3]
	eor r1, r2, r1
	strb r1, [r4, lr]
	ldrb r2, [r4, ip]
	ldrb r1, [r4, r0]
	eor r1, r2, r1
	strb r1, [r4, ip]
	ldrb r1, [r4, r0]
	ldrb r2, [r4, #0xc]
	add r0, r0, #1
	cmp r0, #3
	eor r1, r2, r1
	strb r1, [r4, #0xc]
	blt _021EE3E4
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
	.align 2, 0
_021EE454: .word 0x92492493
_021EE458: .word 0x00000007
_021EE45C: .word UNK04_0220D4DC
_021EE460: .word UNK04_0220BB84
_021EE464: .word UNK04_0220D4E0
_021EE468: .word UNK04_0220BB94
	arm_func_end MOD04_021EE2A4

	arm_func_start MOD04_021EE46C
MOD04_021EE46C: ; 0x021EE46C
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0x6c
	mov r5, r0
	add r0, sp, #0x14
	mov r4, r1
	bl DGT_Hash1Reset
	add r0, sp, #0x14
	mov r1, r5
	mov r2, #0x18
	bl DGT_Hash1SetSource
	add r0, sp, #0
	add r1, sp, #0x14
	bl DGT_Hash1GetDigest_R
	add r0, sp, #3
	mov r1, r4
	mov r2, #0xd
	bl MI_CpuCopy8
	add sp, sp, #0x6c
	ldmia sp!, {r4, r5, pc}
	arm_func_end MOD04_021EE46C

	arm_func_start MOD04_021EE4B8
MOD04_021EE4B8: ; 0x021EE4B8
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x1c
	ldr lr, _021EE5AC ; =UNK04_0220BBA4
	add ip, sp, #0
	mov r4, r1
	mov r3, #0xc
_021EE4D0:
	ldrb r2, [lr], #1
	ldrb r1, [lr], #1
	subs r3, r3, #1
	strb r2, [ip], #1
	strb r1, [ip], #1
	bne _021EE4D0
	mov r1, r4
	mov r2, #0x20
	mov r3, #0x18
	bl MOD04_021EE0C0
	mov r3, #0
	ldr r0, _021EE5B0 ; =UNK04_0220D4E4
_021EE500:
	ldr r1, [r0]
	ldrb r2, [r4, r3]
	ldrsb r1, [r1, r3]
	eor r1, r2, r1
	strb r1, [r4, r3]
	add r3, r3, #1
	cmp r3, #0x18
	blt _021EE500
	mov lr, #0
	add ip, sp, #0
	mov r1, #0xff
_021EE52C:
	and r7, lr, #0xff
	ldrb r0, [ip, r7]
	mov r6, r7
	ldrb r5, [r4, lr]
	cmp r0, #0xff
	beq _021EE570
_021EE544:
	add r3, ip, r6
	ldrb r6, [ip, r6]
	ldrb r0, [ip, r7]
	ldrb r2, [r4, r6]
	mov r7, r6
	strb r5, [r4, r0]
	strb r1, [r3]
	ldrb r0, [ip, r6]
	mov r5, r2
	cmp r0, #0xff
	bne _021EE544
_021EE570:
	add lr, lr, #1
	cmp lr, #0x18
	blt _021EE52C
	ldr r0, _021EE5B4 ; =UNK04_0220D4D8
	mov r3, #0
_021EE584:
	ldr r1, [r0]
	ldrb r2, [r4, r3]
	ldrsb r1, [r1, r3]
	eor r1, r2, r1
	strb r1, [r4, r3]
	add r3, r3, #1
	cmp r3, #0x18
	blt _021EE584
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_021EE5AC: .word UNK04_0220BBA4
_021EE5B0: .word UNK04_0220D4E4
_021EE5B4: .word UNK04_0220D4D8
	arm_func_end MOD04_021EE4B8

	arm_func_start MOD04_021EE5B8
MOD04_021EE5B8: ; 0x021EE5B8
	ldr ip, _021EE5C4 ; =MOD04_021EE2A4
	add r0, r0, #0xc
	bx ip
	.align 2, 0
_021EE5C4: .word MOD04_021EE2A4
	arm_func_end MOD04_021EE5B8

	arm_func_start MOD04_021EE5C8
MOD04_021EE5C8: ; 0x021EE5C8
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r1, _021EE5F0 ; =UNK04_0220D540
	mov r2, #8
	bl memcmp
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	add sp, sp, #4
	ldmfd sp!, {pc}
	.align 2, 0
_021EE5F0: .word UNK04_0220D540
	arm_func_end MOD04_021EE5C8

	arm_func_start MOD04_021EE5F4
MOD04_021EE5F4: ; 0x021EE5F4
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x18
	mov r4, r1
	add r1, sp, #0
	bl MOD04_021EE4B8
	ldr r1, _021EE63C ; =UNK04_0220D54C
	add r0, sp, #0
	mov r2, #8
	bl memcmp
	cmp r0, #0
	addne sp, sp, #0x18
	ldmneia sp!, {r4, pc}
	add r0, sp, #8
	mov r1, r4
	mov r2, #0xa
	bl MI_CpuCopy8
	add sp, sp, #0x18
	ldmia sp!, {r4, pc}
	.align 2, 0
_021EE63C: .word UNK04_0220D54C
	arm_func_end MOD04_021EE5F4

	arm_func_start MOD04_021EE640
MOD04_021EE640: ; 0x021EE640
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x18
	mov r4, r1
	add r1, sp, #0
	bl MOD04_021EE4B8
	add r0, sp, #0
	mov r1, r4
	bl MOD04_021EE46C
	add sp, sp, #0x18
	ldmia sp!, {r4, pc}
	arm_func_end MOD04_021EE640

	arm_func_start MOD04_021EE668
MOD04_021EE668: ; 0x021EE668
	stmdb sp!, {lr}
	sub sp, sp, #0x1c
	add r1, sp, #0
	bl MOD04_021EE4B8
	ldr r1, _021EE69C ; =UNK04_0220D54C
	add r0, sp, #0
	mov r2, #8
	bl memcmp
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	add sp, sp, #0x1c
	ldmfd sp!, {pc}
	.align 2, 0
_021EE69C: .word UNK04_0220D54C
	arm_func_end MOD04_021EE668

	arm_func_start MOD04_021EE6A0
MOD04_021EE6A0: ; 0x021EE6A0
	stmdb sp!, {lr}
	sub sp, sp, #0x5c
	ldr r0, _021EE7D4 ; =UNK04_02210EE0
	mov r2, #8
	ldr r0, [r0]
	mvn r1, #0
	cmp r0, r1
	ldreq r1, _021EE7D8 ; =UNK04_02210E5C
	moveq r0, #1
	str r2, [sp, #0x10]
	streq r0, [r1]
	addeq sp, sp, #0x5c
	ldmeqia sp!, {pc}
	bl MOD04_021EFF2C
	cmp r0, #0
	beq _021EE774
	add r0, sp, #8
	str r0, [sp]
	add r1, sp, #0x10
	str r1, [sp, #4]
	ldr r0, _021EE7D4 ; =UNK04_02210EE0
	add r1, sp, #0x18
	ldr r0, [r0]
	mov r2, #0x40
	mov r3, #0
	bl MOD04_021EFC40
	mov r1, r0
	add r0, sp, #0x18
	add r2, sp, #8
	add r3, sp, #0x14
	bl MOD04_021EE7DC
	cmp r0, #0
	bne _021EE774
	ldr r0, _021EE7D4 ; =UNK04_02210EE0
	ldr r0, [r0]
	bl MOD04_021EFD9C
	ldr r1, [sp, #0x14]
	ands r0, r1, #1
	ldrne r0, _021EE7D8 ; =UNK04_02210E5C
	movne r1, #2
	strne r1, [r0]
	bne _021EE764
	ands r0, r1, #2
	ldrne r0, _021EE7D8 ; =UNK04_02210E5C
	movne r1, #3
	strne r1, [r0]
	ldreq r0, _021EE7D8 ; =UNK04_02210E5C
	moveq r1, #1
	streq r1, [r0]
_021EE764:
	ldr r0, _021EE7D8 ; =UNK04_02210E5C
	add sp, sp, #0x5c
	ldr r0, [r0]
	ldmfd sp!, {pc}
_021EE774:
	bl MOD04_021F025C
	ldr r1, _021EE7D4 ; =UNK04_02210EE0
	ldr r2, [r1, #0x50]
	add r2, r2, #0x7d0
	cmp r0, r2
	bls _021EE7C8
	ldr r0, [r1, #0x54]
	cmp r0, #1
	bne _021EE7B4
	ldr r0, [r1]
	bl MOD04_021EFD9C
	ldr r1, _021EE7D8 ; =UNK04_02210E5C
	mov r0, #1
	str r0, [r1]
	add sp, sp, #0x5c
	ldmfd sp!, {pc}
_021EE7B4:
	bl MOD04_021EE990
	ldr r0, _021EE7D4 ; =UNK04_02210EE0
	ldr r1, [r0, #0x54]
	add r1, r1, #1
	str r1, [r0, #0x54]
_021EE7C8:
	mov r0, #0
	add sp, sp, #0x5c
	ldmfd sp!, {pc}
	.align 2, 0
_021EE7D4: .word UNK04_02210EE0
_021EE7D8: .word UNK04_02210E5C
	arm_func_end MOD04_021EE6A0

	arm_func_start MOD04_021EE7DC
MOD04_021EE7DC: ; 0x021EE7DC
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r0
	cmp r1, #7
	mov r6, r2
	mov r4, r3
	movlt r0, #1
	ldmltia sp!, {r4, r5, r6, pc}
	ldr r1, _021EE88C ; =UNK04_02210EE8
	add r0, r6, #4
	mov r2, #4
	bl memcmp
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r4, r5, r6, pc}
	ldr r0, _021EE890 ; =UNK04_02210EE0
	ldrh r1, [r6, #2]
	ldrh r0, [r0, #6]
	cmp r1, r0
	movne r0, #1
	ldmneia sp!, {r4, r5, r6, pc}
	ldr r1, _021EE894 ; =UNK04_0220D558
	mov r0, r5
	mov r2, #3
	bl memcmp
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r4, r5, r6, pc}
	ldrsb r2, [r5, #3]
	ldrsb r0, [r5, #4]
	ldrsb r1, [r5, #5]
	mov r3, r2, lsl #0x18
	mov r2, r0, lsl #0x10
	ldrsb r0, [r5, #6]
	mov r1, r1, lsl #8
	and r3, r3, #0xff000000
	and r2, r2, #0xff0000
	orr r2, r3, r2
	and r1, r1, #0xff00
	orr r1, r2, r1
	and r0, r0, #0xff
	orr r0, r1, r0
	str r0, [r4]
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_021EE88C: .word UNK04_02210EE8
_021EE890: .word UNK04_02210EE0
_021EE894: .word UNK04_0220D558
	arm_func_end MOD04_021EE7DC

	arm_func_start MOD04_021EE898
MOD04_021EE898: ; 0x021EE898
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0x44
	mov r4, r0
	ldr r0, _021EE974 ; =UNK04_02210EA0
	mov r1, r4
	bl strcpy
	ldr r0, _021EE978 ; =UNK04_02210EE0
	mvn r1, #0
	str r1, [r0]
	bl MOD04_021F024C
	ldr r0, _021EE97C ; =UNK04_02210E60
	ldrsb r5, [r0]
	cmp r5, #0
	bne _021EE8E0
	ldr r1, _021EE980 ; =UNK04_0220D55C
	add r0, sp, #0
	mov r2, r4
	bl sprintf
_021EE8E0:
	cmp r5, #0
	ldrne r0, _021EE97C ; =UNK04_02210E60
	ldr r1, _021EE984 ; =0x00006CFC
	ldr r2, _021EE988 ; =UNK04_02210EE4
	addeq r0, sp, #0
	bl MOD04_021EE9E0
	cmp r0, #0
	addeq sp, sp, #0x44
	ldmeqia sp!, {r4, r5, pc}
	mov r0, #2
	mov r1, r0
	mov r2, #0
	bl MOD04_021EFDB8
	ldr r2, _021EE978 ; =UNK04_02210EE0
	mvn r1, #0
	cmp r0, r1
	str r0, [r2]
	addeq sp, sp, #0x44
	ldmeqia sp!, {r4, r5, pc}
	mov r1, #9
	mov r0, r4
	strb r1, [r2, #0xc]
	bl strlen
	mov r5, r0
	ldr r0, _021EE98C ; =UNK04_02210EF1
	mov r1, r4
	add r2, r5, #1
	bl memcpy
	ldr r0, _021EE978 ; =UNK04_02210EE0
	add r1, r5, #6
	str r1, [r0, #0x4c]
	bl MOD04_021EE990
	ldr r0, _021EE978 ; =UNK04_02210EE0
	mov r1, #0
	str r1, [r0, #0x54]
	add sp, sp, #0x44
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_021EE974: .word UNK04_02210EA0
_021EE978: .word UNK04_02210EE0
_021EE97C: .word UNK04_02210E60
_021EE980: .word UNK04_0220D55C
_021EE984: .word 0x00006CFC
_021EE988: .word UNK04_02210EE4
_021EE98C: .word UNK04_02210EF1
	arm_func_end MOD04_021EE898

	arm_func_start MOD04_021EE990
MOD04_021EE990: ; 0x021EE990
	stmdb sp!, {lr}
	sub sp, sp, #0xc
	ldr r1, _021EE9D4 ; =UNK04_02210EE4
	mov r0, #8
	str r1, [sp]
	ldr r1, _021EE9D8 ; =UNK04_02210EE0
	str r0, [sp, #4]
	ldr r0, [r1]
	ldr r2, [r1, #0x4c]
	ldr r1, _021EE9DC ; =UNK04_02210EEC
	mov r3, #0
	bl MOD04_021EFBD4
	bl MOD04_021F025C
	ldr r1, _021EE9D8 ; =UNK04_02210EE0
	str r0, [r1, #0x50]
	add sp, sp, #0xc
	ldmfd sp!, {pc}
	.align 2, 0
_021EE9D4: .word UNK04_02210EE4
_021EE9D8: .word UNK04_02210EE0
_021EE9DC: .word UNK04_02210EEC
	arm_func_end MOD04_021EE990

	arm_func_start MOD04_021EE9E0
MOD04_021EE9E0: ; 0x021EE9E0
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	mov r3, r1, asr #8
	mov r1, r1, lsl #8
	mov r4, r2
	mov ip, #2
	and r2, r3, #0xff
	and r1, r1, #0xff00
	strb ip, [r4, #1]
	orr r1, r2, r1
	strh r1, [r4, #2]
	mov r5, r0
	bl MOD04_021EFB38
	str r0, [r4, #4]
	ldr r1, [r4, #4]
	mvn r0, #0
	cmp r1, r0
	bne _021EEA58
	mov r0, r5
	bl SOC_GetHostByAddr
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r4, r5, pc}
	ldr r0, [r0, #0xc]
	ldr r0, [r0]
	ldr r0, [r0]
	str r0, [r4, #4]
_021EEA58:
	mov r0, #1
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	arm_func_end MOD04_021EE9E0

	arm_func_start MOD04_021EEA64
MOD04_021EEA64: ; 0x021EEA64
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #4
	ldr r7, [sp, #0x2c]
	mov r6, #0
	str r0, [sp]
	mov sl, r1
	mov sb, r3
	str r6, [r7]
	subs r5, r2, #1
	ldr r8, [sp, #0x28]
	bmi _021EEAC4
	mov fp, #1
_021EEA94:
	add r0, r6, r5
	mov r4, r0, asr #1
	mla r0, r4, sb, sl
	ldr r1, [sp]
	blx r8
	cmp r0, #0
	streq fp, [r7]
	cmp r0, #0
	addlt r6, r4, #1
	subge r5, r4, #1
	cmp r6, r5
	ble _021EEA94
_021EEAC4:
	mla r0, r6, sb, sl
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end MOD04_021EEA64

	arm_func_start MOD04_021EEAD0
MOD04_021EEAD0: ; 0x021EEAD0
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	mov r8, r2
	mov sl, r0
	mov sb, r1
	mov r7, r3
	cmp r8, #0
	ldr r6, [sp, #0x20]
	mov r5, #0
	ble _021EEB20
	mov r4, r5
_021EEAF8:
	mov r0, sl
	add r1, sb, r4
	blx r6
	cmp r0, #0
	mlaeq r0, r7, r5, sb
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	add r5, r5, #1
	cmp r5, r8
	add r4, r4, r7
	blt _021EEAF8
_021EEB20:
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	arm_func_end MOD04_021EEAD0

	arm_func_start MOD04_021EEB28
MOD04_021EEB28: ; 0x021EEB28
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	bl MOD04_021EF06C
	subs r4, r0, #1
	addmi sp, sp, #4
	ldmmiia sp!, {r4, r5, pc}
_021EEB44:
	mov r0, r5
	mov r1, r4
	bl MOD04_021EED84
	subs r4, r4, #1
	bpl _021EEB44
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	arm_func_end MOD04_021EEB28

	arm_func_start MOD04_021EEB60
MOD04_021EEB60: ; 0x021EEB60
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	movs r7, r1
	mov r8, r0
	mov r6, r2
	bne _021EEB88
	ldr r0, _021EEBC8 ; =UNK04_0220D580
	ldr r1, _021EEBCC ; =UNK04_0220D584
	ldr r3, _021EEBD0 ; =0x00000121
	mov r2, #0
	bl __msl_assertion_failed
_021EEB88:
	ldr r0, [r8]
	subs r5, r0, #1
	bmi _021EEBC0
_021EEB94:
	mov r0, r8
	mov r1, r5
	bl MOD04_021EEFFC
	mov r1, r6
	mov r4, r0
	blx r7
	cmp r0, #0
	moveq r0, r4
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	subs r5, r5, #1
	bpl _021EEB94
_021EEBC0:
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_021EEBC8: .word UNK04_0220D580
_021EEBCC: .word UNK04_0220D584
_021EEBD0: .word 0x00000121
	arm_func_end MOD04_021EEB60

	arm_func_start MOD04_021EEBD4
MOD04_021EEBD4: ; 0x021EEBD4
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	movs r6, r1
	mov r7, r0
	mov r5, r2
	bne _021EEC00
	ldr r0, _021EEC34 ; =UNK04_0220D580
	ldr r1, _021EEC38 ; =UNK04_0220D584
	mov r2, #0
	mov r3, #0x104
	bl __msl_assertion_failed
_021EEC00:
	ldr r0, [r7]
	subs r4, r0, #1
	addmi sp, sp, #4
	ldmmiia sp!, {r4, r5, r6, r7, pc}
_021EEC10:
	mov r0, r7
	mov r1, r4
	bl MOD04_021EEFFC
	mov r1, r5
	blx r6
	subs r4, r4, #1
	bpl _021EEC10
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_021EEC34: .word UNK04_0220D580
_021EEC38: .word UNK04_0220D584
	arm_func_end MOD04_021EEBD4

	arm_func_start MOD04_021EEC3C
MOD04_021EEC3C: ; 0x021EEC3C
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x10
	mov ip, #1
	movs r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	str ip, [sp, #8]
	beq _021EEC6C
	ldr r8, [r7]
	cmp r8, #0
	bne _021EEC78
_021EEC6C:
	add sp, sp, #0x10
	mvn r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_021EEC78:
	ldr r1, [sp, #0x28]
	cmp r1, #0
	beq _021EECB0
	mov r1, r4
	bl MOD04_021EEFFC
	add r1, sp, #8
	str r5, [sp]
	str r1, [sp, #4]
	mov r1, r0
	ldr r3, [r7, #8]
	mov r0, r6
	sub r2, r8, r4
	bl MOD04_021EEA64
	b _021EECD0
_021EECB0:
	mov r1, r4
	bl MOD04_021EEFFC
	str r5, [sp]
	mov r1, r0
	ldr r3, [r7, #8]
	mov r0, r6
	sub r2, r8, r4
	bl MOD04_021EEAD0
_021EECD0:
	cmp r0, #0
	beq _021EECFC
	ldr r1, [sp, #8]
	cmp r1, #0
	beq _021EECFC
	ldr r2, [r7, #0x14]
	ldr r1, [r7, #8]
	sub r0, r0, r2
	bl _s32_div_f
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_021EECFC:
	mvn r0, #0
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end MOD04_021EEC3C

	arm_func_start MOD04_021EED08
MOD04_021EED08: ; 0x021EED08
	ldr ip, _021EED24 ; =qsort
	mov r2, r0
	mov r3, r1
	ldr r0, [r2, #0x14]
	ldr r1, [r2]
	ldr r2, [r2, #8]
	bx ip
	.align 2, 0
_021EED24: .word qsort
	arm_func_end MOD04_021EED08

	arm_func_start MOD04_021EED28
MOD04_021EED28: ; 0x021EED28
	stmdb sp!, {r4, r5, r6, lr}
	movs r4, r2
	mov r6, r0
	mov r5, r1
	bmi _021EED48
	ldr r0, [r6]
	cmp r4, r0
	blt _021EED5C
_021EED48:
	ldr r0, _021EED7C ; =UNK04_0220D590
	ldr r1, _021EED80 ; =UNK04_0220D584
	mov r2, #0
	mov r3, #0xd3
	bl __msl_assertion_failed
_021EED5C:
	mov r0, r6
	mov r1, r4
	bl MOD04_021EF240
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl MOD04_021EF1B8
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_021EED7C: .word UNK04_0220D590
_021EED80: .word UNK04_0220D584
	arm_func_end MOD04_021EED28

	arm_func_start MOD04_021EED84
MOD04_021EED84: ; 0x021EED84
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	movs r4, r1
	mov r5, r0
	bmi _021EEDA4
	ldr r0, [r5]
	cmp r4, r0
	blt _021EEDB8
_021EEDA4:
	ldr r0, _021EEDD8 ; =UNK04_0220D590
	ldr r1, _021EEDDC ; =UNK04_0220D584
	mov r2, #0
	mov r3, #0xca
	bl __msl_assertion_failed
_021EEDB8:
	mov r0, r5
	mov r1, r4
	bl MOD04_021EF240
	mov r0, r5
	mov r1, r4
	bl MOD04_021EEDE0
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_021EEDD8: .word UNK04_0220D590
_021EEDDC: .word UNK04_0220D584
	arm_func_end MOD04_021EED84

	arm_func_start MOD04_021EEDE0
MOD04_021EEDE0: ; 0x021EEDE0
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	movs r7, r1
	mov r4, r0
	bmi _021EEE00
	ldr r0, [r4]
	cmp r7, r0
	blt _021EEE14
_021EEE00:
	ldr r0, _021EEE6C ; =UNK04_0220D590
	ldr r1, _021EEE70 ; =UNK04_0220D584
	mov r2, #0
	mov r3, #0xc0
	bl __msl_assertion_failed
_021EEE14:
	ldr r0, [r4]
	sub r6, r0, #1
	cmp r7, r6
	bge _021EEE58
	mov r0, r4
	mov r1, r7
	bl MOD04_021EEFFC
	mov r5, r0
	mov r0, r4
	add r1, r7, #1
	bl MOD04_021EEFFC
	mov r1, r0
	ldr r3, [r4, #8]
	sub r0, r6, r7
	mul r2, r3, r0
	mov r0, r5
	bl memmove
_021EEE58:
	ldr r0, [r4]
	sub r0, r0, #1
	str r0, [r4]
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_021EEE6C: .word UNK04_0220D590
_021EEE70: .word UNK04_0220D584
	arm_func_end MOD04_021EEDE0

	arm_func_start MOD04_021EEE74
MOD04_021EEE74: ; 0x021EEE74
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x10
	movs r4, r2
	mov r6, r0
	mov r5, r1
	bne _021EEEA0
	ldr r0, _021EEEE8 ; =UNK04_0220D5B0
	ldr r1, _021EEEEC ; =UNK04_0220D584
	mov r2, #0
	mov r3, #0xb7
	bl __msl_assertion_failed
_021EEEA0:
	add r0, sp, #8
	str r4, [sp]
	str r0, [sp, #4]
	ldr r1, [r6, #0x14]
	ldr r2, [r6]
	ldr r3, [r6, #8]
	mov r0, r5
	bl MOD04_021EEA64
	ldr r2, [r6, #0x14]
	ldr r1, [r6, #8]
	sub r0, r0, r2
	bl _s32_div_f
	mov r2, r0
	mov r0, r6
	mov r1, r5
	bl MOD04_021EEEF0
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_021EEEE8: .word UNK04_0220D5B0
_021EEEEC: .word UNK04_0220D584
	arm_func_end MOD04_021EEE74

	arm_func_start MOD04_021EEEF0
MOD04_021EEEF0: ; 0x021EEEF0
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	movs r4, r2
	mov r6, r0
	mov r5, r1
	bmi _021EEF10
	ldr r0, [r6]
	cmp r4, r0
	ble _021EEF24
_021EEF10:
	ldr r0, _021EEFA0 ; =UNK04_0220D5BC
	ldr r1, _021EEFA4 ; =UNK04_0220D584
	mov r2, #0
	mov r3, #0xa7
	bl __msl_assertion_failed
_021EEF24:
	ldr r1, [r6]
	ldr r0, [r6, #4]
	cmp r1, r0
	bne _021EEF3C
	mov r0, r6
	bl MOD04_021EF1E4
_021EEF3C:
	ldr r0, [r6]
	add r0, r0, #1
	str r0, [r6]
	ldr r0, [r6]
	sub r8, r0, #1
	cmp r4, r8
	bge _021EEF8C
	mov r0, r6
	add r1, r4, #1
	bl MOD04_021EEFFC
	mov r7, r0
	mov r0, r6
	mov r1, r4
	bl MOD04_021EEFFC
	mov r1, r0
	ldr r3, [r6, #8]
	sub r0, r8, r4
	mul r2, r3, r0
	mov r0, r7
	bl memmove
_021EEF8C:
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl MOD04_021EF1B8
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_021EEFA0: .word UNK04_0220D5BC
_021EEFA4: .word UNK04_0220D584
	arm_func_end MOD04_021EEEF0

	arm_func_start MOD04_021EEFA8
MOD04_021EEFA8: ; 0x021EEFA8
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	movs r5, r0
	mov r4, r1
	bne _021EEFD0
	ldr r0, _021EEFF4 ; =UNK04_0220D5DC
	ldr r1, _021EEFF8 ; =UNK04_0220D584
	mov r2, #0
	mov r3, #0xa0
	bl __msl_assertion_failed
_021EEFD0:
	cmp r5, #0
	addeq sp, sp, #4
	ldmeqia sp!, {r4, r5, pc}
	ldr r2, [r5]
	mov r0, r5
	mov r1, r4
	bl MOD04_021EEEF0
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_021EEFF4: .word UNK04_0220D5DC
_021EEFF8: .word UNK04_0220D584
	arm_func_end MOD04_021EEFA8

	arm_func_start MOD04_021EEFFC
MOD04_021EEFFC: ; 0x021EEFFC
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	movs r4, r1
	mov r5, r0
	bmi _021EF01C
	ldr r0, [r5]
	cmp r4, r0
	blt _021EF030
_021EF01C:
	ldr r0, _021EF064 ; =UNK04_0220D590
	ldr r1, _021EF068 ; =UNK04_0220D584
	mov r2, #0
	mov r3, #0x94
	bl __msl_assertion_failed
_021EF030:
	cmp r4, #0
	blt _021EF044
	ldr r0, [r5]
	cmp r4, r0
	blt _021EF050
_021EF044:
	add sp, sp, #4
	mov r0, #0
	ldmia sp!, {r4, r5, pc}
_021EF050:
	ldr r0, [r5, #0x14]
	ldr r1, [r5, #8]
	mla r0, r1, r4, r0
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_021EF064: .word UNK04_0220D590
_021EF068: .word UNK04_0220D584
	arm_func_end MOD04_021EEFFC

	arm_func_start MOD04_021EF06C
MOD04_021EF06C: ; 0x021EF06C
	ldr r0, [r0]
	bx lr
	arm_func_end MOD04_021EF06C

	arm_func_start MOD04_021EF074
MOD04_021EF074: ; 0x021EF074
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	movs r5, r0
	bne _021EF098
	ldr r0, _021EF0DC ; =UNK04_0220D5DC
	ldr r1, _021EF0E0 ; =UNK04_0220D584
	mov r2, #0
	mov r3, #0x69
	bl __msl_assertion_failed
_021EF098:
	ldr r0, [r5]
	mov r4, #0
	cmp r0, #0
	ble _021EF0C4
_021EF0A8:
	mov r0, r5
	mov r1, r4
	bl MOD04_021EF240
	ldr r0, [r5]
	add r4, r4, #1
	cmp r4, r0
	blt _021EF0A8
_021EF0C4:
	ldr r0, [r5, #0x14]
	bl MOD04_021DD82C
	mov r0, r5
	bl MOD04_021DD82C
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_021EF0DC: .word UNK04_0220D5DC
_021EF0E0: .word UNK04_0220D584
	arm_func_end MOD04_021EF074

	arm_func_start MOD04_021EF0E4
MOD04_021EF0E4: ; 0x021EF0E4
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	mov r7, r0
	mov r0, #0x18
	mov r6, r1
	mov r5, r2
	bl MOD04_021DD860
	movs r4, r0
	bne _021EF11C
	ldr r0, _021EF1A8 ; =UNK04_0220D5DC
	ldr r1, _021EF1AC ; =UNK04_0220D584
	mov r2, #0
	mov r3, #0x52
	bl __msl_assertion_failed
_021EF11C:
	cmp r7, #0
	bne _021EF138
	ldr r0, _021EF1B0 ; =UNK04_0220D5E4
	ldr r1, _021EF1AC ; =UNK04_0220D584
	mov r2, #0
	mov r3, #0x53
	bl __msl_assertion_failed
_021EF138:
	mov r0, #0
	cmp r6, #0
	moveq r6, #8
	str r0, [r4]
	str r6, [r4, #4]
	str r7, [r4, #8]
	str r6, [r4, #0xc]
	str r5, [r4, #0x10]
	ldr r1, [r4, #4]
	cmp r1, #0
	beq _021EF198
	ldr r0, [r4, #8]
	mul r0, r1, r0
	bl MOD04_021DD860
	str r0, [r4, #0x14]
	ldr r0, [r4, #0x14]
	cmp r0, #0
	bne _021EF19C
	ldr r0, _021EF1B4 ; =UNK04_0220D5F0
	ldr r1, _021EF1AC ; =UNK04_0220D584
	mov r2, #0
	mov r3, #0x5e
	bl __msl_assertion_failed
	b _021EF19C
_021EF198:
	str r0, [r4, #0x14]
_021EF19C:
	mov r0, r4
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_021EF1A8: .word UNK04_0220D5DC
_021EF1AC: .word UNK04_0220D584
_021EF1B0: .word UNK04_0220D5E4
_021EF1B4: .word UNK04_0220D5F0
	arm_func_end MOD04_021EF0E4

	arm_func_start MOD04_021EF1B8
MOD04_021EF1B8: ; 0x021EF1B8
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r4, r1
	mov r5, r0
	mov r1, r2
	bl MOD04_021EEFFC
	ldr r2, [r5, #8]
	mov r1, r4
	bl memcpy
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	arm_func_end MOD04_021EF1B8

	arm_func_start MOD04_021EF1E4
MOD04_021EF1E4: ; 0x021EF1E4
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #4]
	ldr r0, [r4, #0xc]
	add r0, r1, r0
	str r0, [r4, #4]
	ldr r2, [r4, #4]
	ldr r1, [r4, #8]
	ldr r0, [r4, #0x14]
	mul r1, r2, r1
	bl MOD04_021DD844
	str r0, [r4, #0x14]
	ldr r0, [r4, #0x14]
	cmp r0, #0
	ldmneia sp!, {r4, pc}
	ldr r0, _021EF238 ; =UNK04_0220D5F0
	ldr r1, _021EF23C ; =UNK04_0220D584
	mov r2, #0
	mov r3, #0x41
	bl __msl_assertion_failed
	ldmia sp!, {r4, pc}
	.align 2, 0
_021EF238: .word UNK04_0220D5F0
_021EF23C: .word UNK04_0220D584
	arm_func_end MOD04_021EF1E4

	arm_func_start MOD04_021EF240
MOD04_021EF240: ; 0x021EF240
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r2, [r4, #0x10]
	cmp r2, #0
	ldmeqia sp!, {r4, pc}
	bl MOD04_021EEFFC
	ldr r1, [r4, #0x10]
	blx r1
	ldmia sp!, {r4, pc}
	arm_func_end MOD04_021EF240

	arm_func_start MOD04_021EF264
MOD04_021EF264: ; 0x021EF264
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	movs r6, r1
	mov r7, r0
	mov r5, r2
	bne _021EF290
	ldr r0, _021EF2DC ; =UNK04_0220D5FC
	ldr r1, _021EF2E0 ; =UNK04_0220D600
	mov r2, #0
	mov r3, #0xd3
	bl __msl_assertion_failed
_021EF290:
	ldr r0, [r7, #4]
	mov r4, #0
	cmp r0, #0
	ble _021EF2D0
_021EF2A0:
	ldr r0, [r7]
	mov r1, r6
	ldr r0, [r0, r4, lsl #2]
	mov r2, r5
	bl MOD04_021EEB60
	cmp r0, #0
	addne sp, sp, #4
	ldmneia sp!, {r4, r5, r6, r7, pc}
	ldr r0, [r7, #4]
	add r4, r4, #1
	cmp r4, r0
	blt _021EF2A0
_021EF2D0:
	mov r0, #0
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_021EF2DC: .word UNK04_0220D5FC
_021EF2E0: .word UNK04_0220D600
	arm_func_end MOD04_021EF264

	arm_func_start MOD04_021EF2E4
MOD04_021EF2E4: ; 0x021EF2E4
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	movs r6, r1
	mov r7, r0
	mov r5, r2
	bne _021EF310
	ldr r0, _021EF350 ; =UNK04_0220D5FC
	ldr r1, _021EF354 ; =UNK04_0220D600
	mov r2, #0
	mov r3, #0xb6
	bl __msl_assertion_failed
_021EF310:
	ldr r0, [r7, #4]
	mov r4, #0
	cmp r0, #0
	addle sp, sp, #4
	ldmleia sp!, {r4, r5, r6, r7, pc}
_021EF324:
	ldr r0, [r7]
	mov r1, r6
	ldr r0, [r0, r4, lsl #2]
	mov r2, r5
	bl MOD04_021EEBD4
	ldr r0, [r7, #4]
	add r4, r4, #1
	cmp r4, r0
	blt _021EF324
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_021EF350: .word UNK04_0220D5FC
_021EF354: .word UNK04_0220D600
	arm_func_end MOD04_021EF2E4

	arm_func_start MOD04_021EF358
MOD04_021EF358: ; 0x021EF358
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	movs r6, r0
	mov r5, r1
	bne _021EF380
	ldr r0, _021EF3EC ; =UNK04_0220D60C
	ldr r1, _021EF3F0 ; =UNK04_0220D600
	mov r2, #0
	mov r3, #0x94
	bl __msl_assertion_failed
_021EF380:
	cmp r6, #0
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r1, [r6, #4]
	ldr r2, [r6, #0xc]
	mov r0, r5
	blx r2
	mov r3, #0
	str r3, [sp]
	ldr r1, [r6]
	mov r4, r0
	ldr r0, [r1, r4, lsl #2]
	ldr r2, [r6, #0x10]
	mov r1, r5
	bl MOD04_021EEC3C
	mov r1, r0
	mvn r0, #0
	cmp r1, r0
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, [r6]
	ldr r0, [r0, r4, lsl #2]
	bl MOD04_021EEFFC
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_021EF3EC: .word UNK04_0220D60C
_021EF3F0: .word UNK04_0220D600
	arm_func_end MOD04_021EF358

	arm_func_start MOD04_021EF3F4
MOD04_021EF3F4: ; 0x021EF3F4
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	movs r6, r0
	mov r5, r1
	bne _021EF41C
	ldr r0, _021EF48C ; =UNK04_0220D60C
	ldr r1, _021EF490 ; =UNK04_0220D600
	mov r2, #0
	mov r3, #0x82
	bl __msl_assertion_failed
_021EF41C:
	cmp r6, #0
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r1, [r6, #4]
	ldr r2, [r6, #0xc]
	mov r0, r5
	blx r2
	mov r3, #0
	str r3, [sp]
	ldr r1, [r6]
	mov r4, r0
	ldr r0, [r1, r4, lsl #2]
	ldr r2, [r6, #0x10]
	mov r1, r5
	bl MOD04_021EEC3C
	mov r1, r0
	mvn r0, #0
	cmp r1, r0
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, [r6]
	ldr r0, [r0, r4, lsl #2]
	bl MOD04_021EED84
	mov r0, #1
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_021EF48C: .word UNK04_0220D60C
_021EF490: .word UNK04_0220D600
	arm_func_end MOD04_021EF3F4

	arm_func_start MOD04_021EF494
MOD04_021EF494: ; 0x021EF494
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	movs r6, r0
	mov r5, r1
	bne _021EF4BC
	ldr r0, _021EF538 ; =UNK04_0220D60C
	ldr r1, _021EF53C ; =UNK04_0220D600
	mov r2, #0
	mov r3, #0x71
	bl __msl_assertion_failed
_021EF4BC:
	cmp r6, #0
	addeq sp, sp, #8
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r1, [r6, #4]
	ldr r2, [r6, #0xc]
	mov r0, r5
	blx r2
	mov r3, #0
	str r3, [sp]
	ldr r1, [r6]
	mov r4, r0
	ldr r0, [r1, r4, lsl #2]
	ldr r2, [r6, #0x10]
	mov r1, r5
	bl MOD04_021EEC3C
	mov r2, r0
	mvn r0, #0
	cmp r2, r0
	bne _021EF520
	ldr r0, [r6]
	mov r1, r5
	ldr r0, [r0, r4, lsl #2]
	bl MOD04_021EEFA8
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}
_021EF520:
	ldr r0, [r6]
	mov r1, r5
	ldr r0, [r0, r4, lsl #2]
	bl MOD04_021EED28
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_021EF538: .word UNK04_0220D60C
_021EF53C: .word UNK04_0220D600
	arm_func_end MOD04_021EF494

	arm_func_start MOD04_021EF540
MOD04_021EF540: ; 0x021EF540
	stmdb sp!, {r4, r5, r6, lr}
	movs r6, r0
	mov r4, #0
	bne _021EF564
	ldr r0, _021EF5A8 ; =UNK04_0220D60C
	ldr r1, _021EF5AC ; =UNK04_0220D600
	mov r2, r4
	mov r3, #0x61
	bl __msl_assertion_failed
_021EF564:
	cmp r6, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, [r6, #4]
	mov r5, #0
	cmp r0, #0
	ble _021EF5A0
_021EF580:
	ldr r0, [r6]
	ldr r0, [r0, r5, lsl #2]
	bl MOD04_021EF06C
	ldr r1, [r6, #4]
	add r5, r5, #1
	cmp r5, r1
	add r4, r4, r0
	blt _021EF580
_021EF5A0:
	mov r0, r4
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_021EF5A8: .word UNK04_0220D60C
_021EF5AC: .word UNK04_0220D600
	arm_func_end MOD04_021EF540

	arm_func_start MOD04_021EF5B0
MOD04_021EF5B0: ; 0x021EF5B0
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	movs r5, r0
	bne _021EF5D4
	ldr r0, _021EF624 ; =UNK04_0220D60C
	ldr r1, _021EF628 ; =UNK04_0220D600
	mov r2, #0
	mov r3, #0x51
	bl __msl_assertion_failed
_021EF5D4:
	cmp r5, #0
	addeq sp, sp, #4
	ldmeqia sp!, {r4, r5, pc}
	ldr r0, [r5, #4]
	mov r4, #0
	cmp r0, #0
	ble _021EF60C
_021EF5F0:
	ldr r0, [r5]
	ldr r0, [r0, r4, lsl #2]
	bl MOD04_021EF074
	ldr r0, [r5, #4]
	add r4, r4, #1
	cmp r4, r0
	blt _021EF5F0
_021EF60C:
	ldr r0, [r5]
	bl MOD04_021DD82C
	mov r0, r5
	bl MOD04_021DD82C
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_021EF624: .word UNK04_0220D60C
_021EF628: .word UNK04_0220D600
	arm_func_end MOD04_021EF5B0

	arm_func_start MOD04_021EF62C
MOD04_021EF62C: ; 0x021EF62C
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	movs r7, r3
	mov sl, r0
	mov sb, r1
	mov r8, r2
	ldr r6, [sp, #0x24]
	bne _021EF65C
	ldr r0, _021EF750 ; =UNK04_0220D614
	ldr r1, _021EF754 ; =UNK04_0220D600
	mov r2, #0
	mov r3, #0x38
	bl __msl_assertion_failed
_021EF65C:
	ldr r0, [sp, #0x20]
	cmp r0, #0
	bne _021EF67C
	ldr r0, _021EF758 ; =UNK04_0220D61C
	ldr r1, _021EF754 ; =UNK04_0220D600
	mov r2, #0
	mov r3, #0x39
	bl __msl_assertion_failed
_021EF67C:
	cmp sl, #0
	bne _021EF698
	ldr r0, _021EF75C ; =UNK04_0220D624
	ldr r1, _021EF754 ; =UNK04_0220D600
	mov r2, #0
	mov r3, #0x3a
	bl __msl_assertion_failed
_021EF698:
	cmp sb, #0
	bne _021EF6B4
	ldr r0, _021EF760 ; =UNK04_0220D630
	ldr r1, _021EF754 ; =UNK04_0220D600
	mov r2, #0
	mov r3, #0x3b
	bl __msl_assertion_failed
_021EF6B4:
	mov r0, #0x14
	bl MOD04_021DD860
	movs r5, r0
	bne _021EF6D8
	ldr r0, _021EF764 ; =UNK04_0220D60C
	ldr r1, _021EF754 ; =UNK04_0220D600
	mov r2, #0
	mov r3, #0x3e
	bl __msl_assertion_failed
_021EF6D8:
	mov r0, sb, lsl #2
	bl MOD04_021DD860
	str r0, [r5]
	ldr r0, [r5]
	cmp r0, #0
	bne _021EF704
	ldr r0, _021EF768 ; =UNK04_0220D63C
	ldr r1, _021EF754 ; =UNK04_0220D600
	mov r2, #0
	mov r3, #0x41
	bl __msl_assertion_failed
_021EF704:
	cmp sb, #0
	mov r4, #0
	ble _021EF734
_021EF710:
	mov r0, sl
	mov r1, r8
	mov r2, r6
	bl MOD04_021EF0E4
	ldr r1, [r5]
	str r0, [r1, r4, lsl #2]
	add r4, r4, #1
	cmp r4, sb
	blt _021EF710
_021EF734:
	str sb, [r5, #4]
	ldr r0, [sp, #0x20]
	str r6, [r5, #8]
	str r0, [r5, #0x10]
	mov r0, r5
	str r7, [r5, #0xc]
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_021EF750: .word UNK04_0220D614
_021EF754: .word UNK04_0220D600
_021EF758: .word UNK04_0220D61C
_021EF75C: .word UNK04_0220D624
_021EF760: .word UNK04_0220D630
_021EF764: .word UNK04_0220D60C
_021EF768: .word UNK04_0220D63C
	arm_func_end MOD04_021EF62C

	arm_func_start MOD04_021EF76C
MOD04_021EF76C: ; 0x021EF76C
	stmdb sp!, {lr}
	sub sp, sp, #0xc
	ldr ip, [sp, #0x10]
	str r3, [sp]
	mov r3, r2
	mov r2, #4
	str ip, [sp, #4]
	bl MOD04_021EF62C
	add sp, sp, #0xc
	ldmfd sp!, {pc}
	arm_func_end MOD04_021EF76C

	arm_func_start MOD04_021EF794
MOD04_021EF794: ; 0x021EF794
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x68
	mov r6, r0
	add r0, sp, #0x10
	mov r5, r1
	mov r4, r2
	bl MD5Init
	add r0, sp, #0x10
	mov r1, r6
	mov r2, r5
	bl MD5Update
	add r0, sp, #0
	add r1, sp, #0x10
	bl MD5Final
	add r0, sp, #0
	mov r1, r4
	bl MOD04_021EF7E0
	add sp, sp, #0x68
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end MOD04_021EF794

	arm_func_start MOD04_021EF7E0
MOD04_021EF7E0: ; 0x021EF7E0
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r6, #0
	mov r8, r0
	mov r7, r1
	mov r5, r6
	ldr r4, _021EF81C ; =UNK04_0220D64C
_021EF7F8:
	ldrb r2, [r8, r6]
	mov r1, r4
	add r0, r7, r5
	bl sprintf
	add r6, r6, #1
	cmp r6, #0x10
	add r5, r5, #2
	blo _021EF7F8
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_021EF81C: .word UNK04_0220D64C
	arm_func_end MOD04_021EF7E0

	arm_func_start MOD04_021EF820
MOD04_021EF820: ; 0x021EF820
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	mov r7, r1
	mov r6, r2
	mov sl, r0
	mov r4, r7
	mov sb, r6
	cmp r3, #1
	beq _021EF84C
	cmp r3, #2
	beq _021EF854
	b _021EF85C
_021EF84C:
	ldr r5, _021EF948 ; =UNK04_0220BBBC
	b _021EF860
_021EF854:
	ldr r5, _021EF94C ; =UNK04_0220BBC0
	b _021EF860
_021EF85C:
	ldr r5, _021EF950 ; =UNK04_0220BBC4
_021EF860:
	cmp r6, #0
	ble _021EF898
	mov r8, #3
_021EF86C:
	cmp r6, #3
	movge r2, r8
	movlt r2, r6
	mov r0, sl
	mov r1, r7
	bl MOD04_021EF95C
	sub sb, sb, #3
	cmp sb, #0
	add r7, r7, #4
	add sl, sl, #3
	bgt _021EF86C
_021EF898:
	ldr r1, _021EF954 ; =0x55555556
	ldr r2, _021EF958 ; =0x00000003
	smull r0, r3, r1, r6
	add r3, r3, r6, lsr #31
	smull r0, r1, r2, r3
	sub r3, r6, r0
	mov r1, r7
	cmp r3, #1
	subeq r1, r7, #2
	beq _021EF8C8
	cmp r3, #2
	subeq r1, r7, #1
_021EF8C8:
	mov r0, #0
	strb r0, [r7]
	cmp r7, r4
	ldmlsia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_021EF8D8:
	sub r7, r7, #1
	cmp r7, r1
	ldrhssb r0, [r5, #2]
	strhsb r0, [r7]
	bhs _021EF93C
	ldrsb r0, [r7]
	cmp r0, #0x19
	addle r0, r0, #0x41
	strleb r0, [r7]
	ble _021EF93C
	cmp r0, #0x33
	addle r0, r0, #0x47
	strleb r0, [r7]
	ble _021EF93C
	cmp r0, #0x3d
	suble r0, r0, #4
	strleb r0, [r7]
	ble _021EF93C
	cmp r0, #0x3e
	ldreqsb r0, [r5]
	streqb r0, [r7]
	beq _021EF93C
	cmp r0, #0x3f
	ldreqsb r0, [r5, #1]
	streqb r0, [r7]
_021EF93C:
	cmp r7, r4
	bhi _021EF8D8
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_021EF948: .word UNK04_0220BBBC
_021EF94C: .word UNK04_0220BBC0
_021EF950: .word UNK04_0220BBC4
_021EF954: .word 0x55555556
_021EF958: .word 0x00000003
	arm_func_end MOD04_021EF820

	arm_func_start MOD04_021EF95C
MOD04_021EF95C: ; 0x021EF95C
	stmdb sp!, {lr}
	sub sp, sp, #4
	cmp r2, #0
	mov lr, #0
	ble _021EF988
	add ip, sp, #0
_021EF974:
	ldrsb r3, [r0, lr]
	add lr, lr, #1
	cmp lr, r2
	strb r3, [ip], #1
	blt _021EF974
_021EF988:
	cmp lr, #3
	bge _021EF9AC
	add r0, sp, #0
	add r2, r0, lr
	mov r0, #0
_021EF99C:
	add lr, lr, #1
	cmp lr, #3
	strb r0, [r2], #1
	blt _021EF99C
_021EF9AC:
	ldrb r0, [sp]
	mov r0, r0, asr #2
	strb r0, [r1]
	ldrb r2, [sp]
	ldrb r0, [sp, #1]
	and r2, r2, #3
	mov r2, r2, lsl #4
	orr r0, r2, r0, asr #4
	strb r0, [r1, #1]
	ldrb r2, [sp, #1]
	ldrb r0, [sp, #2]
	and r2, r2, #0xf
	mov r2, r2, lsl #2
	orr r0, r2, r0, asr #6
	strb r0, [r1, #2]
	ldrb r0, [sp, #2]
	and r0, r0, #0x3f
	strb r0, [r1, #3]
	add sp, sp, #4
	ldmfd sp!, {pc}
	arm_func_end MOD04_021EF95C

	arm_func_start MOD04_021EF9FC
MOD04_021EF9FC: ; 0x021EF9FC
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	subs r4, r1, r5
	addeq sp, sp, #4
	ldmeqia sp!, {r4, r5, pc}
	bl MOD04_021EFA48
	mov r1, r4
	bl _s32_div_f
	add r0, r1, r5
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	arm_func_end MOD04_021EF9FC

	arm_func_start MOD04_021EFA2C
MOD04_021EFA2C: ; 0x021EFA2C
	cmp r0, #0
	bicne r1, r0, #0x80000000
	ldr r0, _021EFA44 ; =UNK04_0220D654
	moveq r1, #1
	str r1, [r0]
	bx lr
	.align 2, 0
_021EFA44: .word UNK04_0220D654
	arm_func_end MOD04_021EFA2C

	arm_func_start MOD04_021EFA48
MOD04_021EFA48: ; 0x021EFA48
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r0, _021EFA6C ; =UNK04_0220D654
	ldr r0, [r0]
	bl MOD04_021EFA70
	ldr r1, _021EFA6C ; =UNK04_0220D654
	str r0, [r1]
	add sp, sp, #4
	ldmfd sp!, {pc}
	.align 2, 0
_021EFA6C: .word UNK04_0220D654
	arm_func_end MOD04_021EFA48

	arm_func_start MOD04_021EFA70
MOD04_021EFA70: ; 0x021EFA70
	ldr r1, _021EFABC ; =0x0000FFFF
	ldr r2, _021EFAC0 ; =0x000041A7
	mov r3, r0, lsr #0x10
	and r1, r0, r1
	mul ip, r3, r2
	mul r2, r1, r2
	ldr r0, _021EFAC4 ; =0x00007FFF
	mvn r1, #0x80000000
	and r0, ip, r0
	add r0, r2, r0, lsl #16
	cmp r0, r1
	bichi r0, r0, #0x80000000
	addhi r0, r0, #1
	add r0, r0, ip, lsr #15
	mvn r1, #0x80000000
	cmp r0, r1
	bichi r0, r0, #0x80000000
	addhi r0, r0, #1
	bx lr
	.align 2, 0
_021EFABC: .word 0x0000FFFF
_021EFAC0: .word 0x000041A7
_021EFAC4: .word 0x00007FFF
	arm_func_end MOD04_021EFA70

	arm_func_start MOD04_021EFAC8
MOD04_021EFAC8: ; 0x021EFAC8
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl OS_IsTickAvailable
	cmp r0, #1
	beq _021EFAF0
	ldr r0, _021EFB18 ; =UNK04_0220D658
	ldr r1, _021EFB1C ; =UNK04_0220D678
	ldr r3, _021EFB20 ; =0x00000667
	mov r2, #0
	bl __msl_assertion_failed
_021EFAF0:
	bl OS_GetTick
	mov r1, r1, lsl #6
	orr r1, r1, r0, lsr #26
	ldr r2, _021EFB24 ; =0x01FF6210
	mov r0, r0, lsl #6
	mov r3, #0
	bl _ll_udiv
	cmp r4, #0
	strne r0, [r4]
	ldmia sp!, {r4, pc}
	.align 2, 0
_021EFB18: .word UNK04_0220D658
_021EFB1C: .word UNK04_0220D678
_021EFB20: .word 0x00000667
_021EFB24: .word 0x01FF6210
	arm_func_end MOD04_021EFAC8

	arm_func_start MOD04_021EFB28
MOD04_021EFB28: ; 0x021EFB28
	ldr r0, _021EFB34 ; =UNK04_02210F3C
	ldr r0, [r0]
	bx lr
	.align 2, 0
_021EFB34: .word UNK04_02210F3C
	arm_func_end MOD04_021EFB28

	arm_func_start MOD04_021EFB38
MOD04_021EFB38: ; 0x021EFB38
	stmdb sp!, {lr}
	sub sp, sp, #4
	add r1, sp, #0
	bl SOC_InetAtoN
	cmp r0, #0
	mvneq r0, #0
	ldrne r0, [sp]
	add sp, sp, #4
	ldmfd sp!, {pc}
	arm_func_end MOD04_021EFB38

	arm_func_start MOD04_021EFB5C
MOD04_021EFB5C: ; 0x021EFB5C
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r4, r2
	ldr r2, [r4]
	mov r5, r1
	strb r2, [r5]
	bl SOC_GetSockName
	ldrb r2, [r5]
	mvn r1, #0
	str r2, [r4]
	bl MOD04_021EFDD4
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	arm_func_end MOD04_021EFB5C

	arm_func_start MOD04_021EFB90
MOD04_021EFB90: ; 0x021EFB90
	ldr ip, _021EFBA0 ; =MOD04_021EFDD4
	mov r0, #0
	mvn r1, #0
	bx ip
	.align 2, 0
_021EFBA0: .word MOD04_021EFDD4
	arm_func_end MOD04_021EFB90

	arm_func_start MOD04_021EFBA4
MOD04_021EFBA4: ; 0x021EFBA4
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r1, [sp, #8]
	mov r0, r3
	ldr r2, [r1]
	mov r1, #0
	bl MI_CpuFill8
	mov r0, #0
	mvn r1, #0
	bl MOD04_021EFDD4
	add sp, sp, #4
	ldmfd sp!, {pc}
	arm_func_end MOD04_021EFBA4

	arm_func_start MOD04_021EFBD4
MOD04_021EFBD4: ; 0x021EFBD4
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x10
	ldr r5, [sp, #0x20]
	add r6, sp, #4
	mov r4, #4
_021EFBE8:
	ldrb lr, [r5], #1
	ldrb ip, [r5], #1
	subs r4, r4, #1
	strb lr, [r6], #1
	strb ip, [r6], #1
	bne _021EFBE8
	ldr lr, [sp, #0x24]
	add ip, sp, #4
	strb lr, [sp, #4]
	str ip, [sp]
	bl SOC_SendTo
	mvn r1, #0
	bl MOD04_021EFDD4
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end MOD04_021EFBD4

	arm_func_start MOD04_021EFC24
MOD04_021EFC24: ; 0x021EFC24
	stmdb sp!, {lr}
	sub sp, sp, #4
	bl SOC_Send
	mvn r1, #0
	bl MOD04_021EFDD4
	add sp, sp, #4
	ldmfd sp!, {pc}
	arm_func_end MOD04_021EFC24

	arm_func_start MOD04_021EFC40
MOD04_021EFC40: ; 0x021EFC40
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	ldr r4, [sp, #0x14]
	ldr r5, [sp, #0x10]
	ldr ip, [r4]
	strb ip, [r5]
	str r5, [sp]
	bl SOC_RecvFrom
	ldrb r2, [r5]
	mvn r1, #0
	str r2, [r4]
	bl MOD04_021EFDD4
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	arm_func_end MOD04_021EFC40

	arm_func_start MOD04_021EFC78
MOD04_021EFC78: ; 0x021EFC78
	stmdb sp!, {lr}
	sub sp, sp, #4
	bl SOC_Read
	mvn r1, #0
	bl MOD04_021EFDD4
	add sp, sp, #4
	ldmfd sp!, {pc}
	arm_func_end MOD04_021EFC78

	arm_func_start MOD04_021EFC94
MOD04_021EFC94: ; 0x021EFC94
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r4, r2
	ldr r2, [r4]
	mov r5, r1
	strb r2, [r5]
	bl SOC_Accept
	ldrb r2, [r5]
	mvn r1, #0
	str r2, [r4]
	bl MOD04_021EFDD4
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	arm_func_end MOD04_021EFC94

	arm_func_start MOD04_021EFCC8
MOD04_021EFCC8: ; 0x021EFCC8
	stmdb sp!, {lr}
	sub sp, sp, #4
	bl SOC_Listen
	mvn r1, #0
	bl MOD04_021EFDD4
	add sp, sp, #4
	ldmfd sp!, {pc}
	arm_func_end MOD04_021EFCC8

	arm_func_start MOD04_021EFCE4
MOD04_021EFCE4: ; 0x021EFCE4
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	add r4, sp, #0
	mov lr, #4
_021EFCF4:
	ldrb ip, [r1], #1
	ldrb r3, [r1], #1
	subs lr, lr, #1
	strb ip, [r4], #1
	strb r3, [r4], #1
	bne _021EFCF4
	add r1, sp, #0
	strb r2, [sp]
	bl SOC_Connect
	mvn r1, #0
	bl MOD04_021EFDD4
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	arm_func_end MOD04_021EFCE4

	arm_func_start MOD04_021EFD28
MOD04_021EFD28: ; 0x021EFD28
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	ldrh r3, [r1, #2]
	cmp r3, #0
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	add r4, sp, #0
	mov lr, #4
_021EFD4C:
	ldrb ip, [r1], #1
	ldrb r3, [r1], #1
	subs lr, lr, #1
	strb ip, [r4], #1
	strb r3, [r4], #1
	bne _021EFD4C
	add r1, sp, #0
	strb r2, [sp]
	bl SOC_Bind
	mvn r1, #0
	bl MOD04_021EFDD4
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	arm_func_end MOD04_021EFD28

	arm_func_start MOD04_021EFD80
MOD04_021EFD80: ; 0x021EFD80
	stmdb sp!, {lr}
	sub sp, sp, #4
	bl SOC_Shutdown
	mvn r1, #0
	bl MOD04_021EFDD4
	add sp, sp, #4
	ldmfd sp!, {pc}
	arm_func_end MOD04_021EFD80

	arm_func_start MOD04_021EFD9C
MOD04_021EFD9C: ; 0x021EFD9C
	stmdb sp!, {lr}
	sub sp, sp, #4
	bl SOC_Close
	mvn r1, #0
	bl MOD04_021EFDD4
	add sp, sp, #4
	ldmfd sp!, {pc}
	arm_func_end MOD04_021EFD9C

	arm_func_start MOD04_021EFDB8
MOD04_021EFDB8: ; 0x021EFDB8
	stmdb sp!, {lr}
	sub sp, sp, #4
	bl SOC_Socket
	mvn r1, #0
	bl MOD04_021EFDD4
	add sp, sp, #4
	ldmfd sp!, {pc}
	arm_func_end MOD04_021EFDB8

	arm_func_start MOD04_021EFDD4
MOD04_021EFDD4: ; 0x021EFDD4
	cmp r0, #0
	ldrlt r2, _021EFDE8 ; =UNK04_02210F3C
	strlt r0, [r2]
	movlt r0, r1
	bx lr
	.align 2, 0
_021EFDE8: .word UNK04_02210F3C
	arm_func_end MOD04_021EFDD4

	arm_func_start MOD04_021EFDEC
MOD04_021EFDEC: ; 0x021EFDEC
	ldr r3, [r0]
	mov r1, r3, lsr #0x18
	mov r0, r3, lsr #8
	mov r2, r3, lsl #8
	and r1, r1, #0xff
	and r0, r0, #0xff00
	mov r3, r3, lsl #0x18
	orr r0, r1, r0
	and r2, r2, #0xff0000
	and r1, r3, #0xff000000
	orr r0, r2, r0
	orr r1, r1, r0
	mov r0, r1, lsr #0x18
	and r2, r0, #0xff
	mov r0, r1, lsr #0x10
	and r0, r0, #0xff
	cmp r2, #0xa
	moveq r0, #1
	bxeq lr
	cmp r2, #0xac
	bne _021EFE54
	cmp r0, #0x10
	blt _021EFE54
	cmp r0, #0x1f
	movle r0, #1
	bxle lr
_021EFE54:
	cmp r2, #0xc0
	bne _021EFE68
	cmp r0, #0xa8
	moveq r0, #1
	bxeq lr
_021EFE68:
	mov r0, #0
	bx lr
	arm_func_end MOD04_021EFDEC

	arm_func_start MOD04_021EFE70
MOD04_021EFE70: ; 0x021EFE70
	stmdb sp!, {r4, lr}
	ldr r4, _021EFEE8 ; =UNK04_0220D684
	ldr r1, _021EFEEC ; =UNK04_02210F40
	ldr lr, _021EFEF0 ; =UNK04_02210F38
	ldr r2, _021EFEF4 ; =UNK04_02210F64
	mov ip, #2
	mov r3, #0
	ldr r0, _021EFEF8 ; =UNK04_02210F50
	str r4, [r1]
	str lr, [r1, #4]
	strh ip, [r1, #8]
	strh r3, [r1, #0xa]
	str r2, [r1, #0xc]
	str r3, [r0]
	bl SOCL_GetHostID
	ldr r1, _021EFEF8 ; =UNK04_02210F50
	bl SOC_U32to4U8
	ldr r2, _021EFEF8 ; =UNK04_02210F50
	ldr r0, [r2]
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r1, _021EFEF4 ; =UNK04_02210F64
	mov r3, #0
	ldr r0, _021EFEEC ; =UNK04_02210F40
	mov ip, #4
	str r2, [r1]
	strh ip, [r0, #0xa]
	str r3, [r1, #4]
	ldmia sp!, {r4, pc}
	.align 2, 0
_021EFEE8: .word UNK04_0220D684
_021EFEEC: .word UNK04_02210F40
_021EFEF0: .word UNK04_02210F38
_021EFEF4: .word UNK04_02210F64
_021EFEF8: .word UNK04_02210F50
	arm_func_end MOD04_021EFE70

	arm_func_start MOD04_021EFEFC
MOD04_021EFEFC: ; 0x021EFEFC
	stmdb sp!, {lr}
	sub sp, sp, #4
	mov r1, #0
	add r2, sp, #0
	mov r3, r1
	str r1, [sp]
	bl MOD04_021EFF5C
	cmp r0, #1
	ldreq r0, [sp]
	movne r0, #0
	add sp, sp, #4
	ldmfd sp!, {pc}
	arm_func_end MOD04_021EFEFC

	arm_func_start MOD04_021EFF2C
MOD04_021EFF2C: ; 0x021EFF2C
	stmdb sp!, {lr}
	sub sp, sp, #4
	mov r2, #0
	add r1, sp, #0
	mov r3, r2
	str r2, [sp]
	bl MOD04_021EFF5C
	cmp r0, #1
	ldreq r0, [sp]
	movne r0, #0
	add sp, sp, #4
	ldmfd sp!, {pc}
	arm_func_end MOD04_021EFF2C

	arm_func_start MOD04_021EFF5C
MOD04_021EFF5C: ; 0x021EFF5C
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	movs r6, r1
	mov r1, #0
	strh r1, [sp, #4]
	str r0, [sp]
	ldrnesh r0, [sp, #4]
	mov r5, r2
	mov r2, #0
	orrne r0, r0, #1
	strneh r0, [sp, #4]
	cmp r5, #0
	ldrnesh r0, [sp, #4]
	mov r4, r3
	mov r3, r2
	orrne r0, r0, #8
	strneh r0, [sp, #4]
	add r0, sp, #0
	mov r1, #1
	strh r2, [sp, #6]
	bl SOC_Poll
	cmp r0, #0
	addlt sp, sp, #8
	mvnlt r0, #0
	ldmltia sp!, {r4, r5, r6, pc}
	cmp r6, #0
	beq _021EFFEC
	cmp r0, #0
	ble _021EFFE4
	ldrsh r1, [sp, #6]
	ands r1, r1, #0x41
	movne r1, #1
	strne r1, [r6]
	bne _021EFFEC
_021EFFE4:
	mov r1, #0
	str r1, [r6]
_021EFFEC:
	cmp r5, #0
	beq _021F0018
	cmp r0, #0
	ble _021F0010
	ldrsh r1, [sp, #6]
	ands r1, r1, #8
	movne r1, #1
	strne r1, [r5]
	bne _021F0018
_021F0010:
	mov r1, #0
	str r1, [r5]
_021F0018:
	cmp r4, #0
	addeq sp, sp, #8
	ldmeqia sp!, {r4, r5, r6, pc}
	cmp r0, #0
	ble _021F0044
	ldrsh r1, [sp, #6]
	ands r1, r1, #0x20
	movne r1, #1
	addne sp, sp, #8
	strne r1, [r4]
	ldmneia sp!, {r4, r5, r6, pc}
_021F0044:
	mov r1, #0
	str r1, [r4]
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end MOD04_021EFF5C

	arm_func_start MOD04_021F0054
MOD04_021F0054: ; 0x021F0054
	stmdb sp!, {lr}
	sub sp, sp, #0xc
	mov r1, #4
	str r1, [sp, #8]
	add ip, sp, #8
	ldr r1, _021F0094 ; =0x0000FFFF
	ldr r2, _021F0098 ; =0x00001001
	add r3, sp, #4
	str ip, [sp]
	bl MOD04_021EFBA4
	mvn r1, #0
	cmp r0, r1
	ldrne r1, [sp, #4]
	mov r0, r1
	add sp, sp, #0xc
	ldmfd sp!, {pc}
	.align 2, 0
_021F0094: .word 0x0000FFFF
_021F0098: .word 0x00001001
	arm_func_end MOD04_021F0054

	arm_func_start MOD04_021F009C
MOD04_021F009C: ; 0x021F009C
	stmdb sp!, {lr}
	sub sp, sp, #0xc
	mov r1, #4
	str r1, [sp, #8]
	add ip, sp, #8
	ldr r1, _021F00DC ; =0x0000FFFF
	ldr r2, _021F00E0 ; =0x00001002
	add r3, sp, #4
	str ip, [sp]
	bl MOD04_021EFBA4
	mvn r1, #0
	cmp r0, r1
	ldrne r1, [sp, #4]
	mov r0, r1
	add sp, sp, #0xc
	ldmfd sp!, {pc}
	.align 2, 0
_021F00DC: .word 0x0000FFFF
_021F00E0: .word 0x00001002
	arm_func_end MOD04_021F009C

	arm_func_start MOD04_021F00E4
MOD04_021F00E4: ; 0x021F00E4
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r1, _021F0128 ; =0x0000FFFF
	mov ip, #4
	ldr r2, _021F012C ; =0x00001001
	add r3, sp, #0xc
	str ip, [sp]
	bl MOD04_021EFB90
	mvn r1, #0
	cmp r0, r1
	movne r0, #1
	moveq r0, #0
	add sp, sp, #4
	ldmia sp!, {lr}
	add sp, sp, #0x10
	bx lr
	.align 2, 0
_021F0128: .word 0x0000FFFF
_021F012C: .word 0x00001001
	arm_func_end MOD04_021F00E4

	arm_func_start MOD04_021F0130
MOD04_021F0130: ; 0x021F0130
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r1, _021F0174 ; =0x0000FFFF
	mov ip, #4
	ldr r2, _021F0178 ; =0x00001002
	add r3, sp, #0xc
	str ip, [sp]
	bl MOD04_021EFB90
	mvn r1, #0
	cmp r0, r1
	movne r0, #1
	moveq r0, #0
	add sp, sp, #4
	ldmia sp!, {lr}
	add sp, sp, #0x10
	bx lr
	.align 2, 0
_021F0174: .word 0x0000FFFF
_021F0178: .word 0x00001002
	arm_func_end MOD04_021F0130

	arm_func_start MOD04_021F017C
MOD04_021F017C: ; 0x021F017C
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r4, r1
	mov r1, #3
	mov r2, #0
	mov r5, r0
	bl SOC_Fcntl
	cmp r4, #0
	bicne r2, r0, #4
	orreq r2, r0, #4
	mov r0, r5
	mov r1, #4
	bl SOC_Fcntl
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	arm_func_end MOD04_021F017C

	arm_func_start MOD04_021F01C4
MOD04_021F01C4: ; 0x021F01C4
	ldrsb r3, [r0]
	mov r2, r0
	cmp r3, #0
	beq _021F01FC
	ldr r1, _021F0204 ; =__lower_mapC
_021F01D8:
	cmp r3, #0
	blt _021F01EC
	cmp r3, #0x80
	bge _021F01EC
	ldrb r3, [r1, r3]
_021F01EC:
	strb r3, [r0]
	ldrsb r3, [r0, #1]!
	cmp r3, #0
	bne _021F01D8
_021F01FC:
	mov r0, r2
	bx lr
	.align 2, 0
_021F0204: .word __lower_mapC
	arm_func_end MOD04_021F01C4

	arm_func_start MOD04_021F0208
MOD04_021F0208: ; 0x021F0208
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	movs r5, r0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r4, r5, pc}
	bl strlen
	add r0, r0, #1
	bl MOD04_021DD860
	movs r4, r0
	beq _021F023C
	mov r1, r5
	bl strcpy
_021F023C:
	mov r0, r4
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	arm_func_end MOD04_021F0208

	arm_func_start MOD04_021F0248
MOD04_021F0248: ; 0x021F0248
	bx lr
	arm_func_end MOD04_021F0248

	arm_func_start MOD04_021F024C
MOD04_021F024C: ; 0x021F024C
	bx lr
	arm_func_end MOD04_021F024C

	arm_func_start MOD04_021F0250
MOD04_021F0250: ; 0x021F0250
	ldr ip, _021F0258 ; =OS_Sleep
	bx ip
	.align 2, 0
_021F0258: .word OS_Sleep
	arm_func_end MOD04_021F0250

	arm_func_start MOD04_021F025C
MOD04_021F025C: ; 0x021F025C
	stmdb sp!, {lr}
	sub sp, sp, #4
	bl OS_IsTickAvailable
	cmp r0, #1
	beq _021F0284
	ldr r0, _021F02A8 ; =UNK04_0220D658
	ldr r1, _021F02AC ; =UNK04_0220D678
	ldr r3, _021F02B0 ; =0x00000109
	mov r2, #0
	bl __msl_assertion_failed
_021F0284:
	bl OS_GetTick
	mov r1, r1, lsl #6
	orr r1, r1, r0, lsr #26
	ldr r2, _021F02B4 ; =0x000082EA
	mov r0, r0, lsl #6
	mov r3, #0
	bl _ll_udiv
	add sp, sp, #4
	ldmfd sp!, {pc}
	.align 2, 0
_021F02A8: .word UNK04_0220D658
_021F02AC: .word UNK04_0220D678
_021F02B0: .word 0x00000109
_021F02B4: .word 0x000082EA
	arm_func_end MOD04_021F025C

	arm_func_start MOD04_021F02B8
MOD04_021F02B8: ; 0x021F02B8
	stmdb sp!, {lr}
	sub sp, sp, #4
	mov r3, r2
	cmp r0, #0
	beq _021F02D8
	ldr ip, [r0]
	cmp ip, #0
	bne _021F02E4
_021F02D8:
	add sp, sp, #4
	mov r0, #2
	ldmfd sp!, {pc}
_021F02E4:
	ldr r2, [ip, #0x108]
	cmp r2, #0
	addne sp, sp, #4
	movne r0, #0
	ldmneia sp!, {pc}
	ldr r2, [ip, #0x1d8]
	cmp r2, #4
	bne _021F0318
	ldr r1, _021F0344 ; =UNK04_0220D690
	bl MOD04_021FAEEC
	add sp, sp, #4
	mov r0, #2
	ldmfd sp!, {pc}
_021F0318:
	cmp r3, #0
	bne _021F0334
	ldr r1, _021F0348 ; =UNK04_0220D6E4
	bl MOD04_021FAEEC
	add sp, sp, #4
	mov r0, #2
	ldmfd sp!, {pc}
_021F0334:
	mov r2, #1
	bl MOD04_021F1A64
	add sp, sp, #4
	ldmfd sp!, {pc}
	.align 2, 0
_021F0344: .word UNK04_0220D690
_021F0348: .word UNK04_0220D6E4
	arm_func_end MOD04_021F02B8

	arm_func_start MOD04_021F034C
MOD04_021F034C: ; 0x021F034C
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x204
	movs r7, r0
	mov r6, r1
	mov r5, r3
	beq _021F0370
	ldr r4, [r7]
	cmp r4, #0
	bne _021F037C
_021F0370:
	add sp, sp, #0x204
	mov r0, #2
	ldmia sp!, {r4, r5, r6, r7, pc}
_021F037C:
	ldr r1, [r4, #0x108]
	cmp r1, #0
	addne sp, sp, #0x204
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, r7, pc}
	ldr r1, [r4, #0x1d8]
	cmp r1, #4
	bne _021F03B0
	ldr r1, _021F0560 ; =UNK04_0220D690
	bl MOD04_021FAEEC
	add sp, sp, #0x204
	mov r0, #2
	ldmia sp!, {r4, r5, r6, r7, pc}
_021F03B0:
	cmp r2, #0
	bne _021F03CC
	ldr r1, _021F0564 ; =UNK04_0220D6F8
	bl MOD04_021FAEEC
	add sp, sp, #0x204
	mov r0, #2
	ldmia sp!, {r4, r5, r6, r7, pc}
_021F03CC:
	cmp r5, #0
	bne _021F03E8
	ldr r1, _021F0568 ; =UNK04_0220D710
	bl MOD04_021FAEEC
	add sp, sp, #0x204
	mov r0, #2
	ldmia sp!, {r4, r5, r6, r7, pc}
_021F03E8:
	mov r1, r2
	add r0, sp, #0
	mov r2, #0x100
	bl MOD04_021FB3DC
	ldrsb r0, [sp]
	cmp r0, #0
	beq _021F0424
	add r2, sp, #0
	mov r1, #0x2f
_021F040C:
	ldrsb r0, [r2]
	cmp r0, #0x5c
	streqb r1, [r2]
	ldrsb r0, [r2, #1]!
	cmp r0, #0
	bne _021F040C
_021F0424:
	add r0, sp, #0x100
	mov r1, r5
	mov r2, #0x100
	bl MOD04_021FB3DC
	add r0, sp, #0x100
	ldrsb r0, [r0]
	cmp r0, #0
	beq _021F0464
	add r2, sp, #0x100
	mov r1, #0x2f
_021F044C:
	ldrsb r0, [r2]
	cmp r0, #0x5c
	streqb r1, [r2]
	ldrsb r0, [r2, #1]!
	cmp r0, #0
	bne _021F044C
_021F0464:
	ldr r0, [r4, #0x214]
	cmp r6, r0
	bne _021F04A0
	add r0, sp, #0
	add r1, r4, #0x218
	bl strcmp
	cmp r0, #0
	bne _021F04A0
	add r0, sp, #0x100
	add r1, r4, #0x318
	bl strcmp
	cmp r0, #0
	addeq sp, sp, #0x204
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, pc}
_021F04A0:
	add r1, sp, #0
	add r0, r4, #0x218
	mov r2, #0x100
	str r6, [r4, #0x214]
	bl MOD04_021FB3DC
	add r1, sp, #0x100
	add r0, r4, #0x318
	mov r2, #0x100
	bl MOD04_021FB3DC
	ldr r2, _021F056C ; =UNK04_0220D728
	mov r0, r7
	add r1, r4, #0x1f4
	bl MOD04_021F2F9C
	mov r0, r7
	mov r2, r6
	add r1, r4, #0x1f4
	bl MOD04_021F2F64
	ldr r2, _021F0570 ; =UNK04_0220D6C0
	mov r0, r7
	add r1, r4, #0x1f4
	bl MOD04_021F2F9C
	ldr r2, [r4, #0x198]
	mov r0, r7
	add r1, r4, #0x1f4
	bl MOD04_021F2F64
	ldr r2, _021F0574 ; =UNK04_0220D734
	mov r0, r7
	add r1, r4, #0x1f4
	bl MOD04_021F2F9C
	mov r0, r7
	add r1, r4, #0x1f4
	add r2, sp, #0
	bl MOD04_021F2F9C
	ldr r2, _021F0578 ; =UNK04_0220D744
	mov r0, r7
	add r1, r4, #0x1f4
	bl MOD04_021F2F9C
	mov r0, r7
	add r1, r4, #0x1f4
	add r2, sp, #0x100
	bl MOD04_021F2F9C
	ldr r2, _021F057C ; =UNK04_0220D6CC
	mov r0, r7
	add r1, r4, #0x1f4
	bl MOD04_021F2F9C
	mov r0, #0
	add sp, sp, #0x204
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_021F0560: .word UNK04_0220D690
_021F0564: .word UNK04_0220D6F8
_021F0568: .word UNK04_0220D710
_021F056C: .word UNK04_0220D728
_021F0570: .word UNK04_0220D6C0
_021F0574: .word UNK04_0220D734
_021F0578: .word UNK04_0220D744
_021F057C: .word UNK04_0220D6CC
	arm_func_end MOD04_021F034C

	arm_func_start MOD04_021F0580
MOD04_021F0580: ; 0x021F0580
	stmdb sp!, {lr}
	sub sp, sp, #4
	cmp r0, #0
	beq _021F059C
	ldr r3, [r0]
	cmp r3, #0
	bne _021F05A8
_021F059C:
	add sp, sp, #4
	mov r0, #2
	ldmfd sp!, {pc}
_021F05A8:
	ldr r2, [r3, #0x108]
	cmp r2, #0
	addne sp, sp, #4
	movne r0, #0
	ldmneia sp!, {pc}
	ldr r2, [r3, #0x1d8]
	cmp r2, #4
	bne _021F05DC
	ldr r1, _021F05F0 ; =UNK04_0220D690
	bl MOD04_021FAEEC
	add sp, sp, #4
	mov r0, #2
	ldmfd sp!, {pc}
_021F05DC:
	bl MOD04_021F17B0
	cmp r0, #0
	moveq r0, #0
	add sp, sp, #4
	ldmfd sp!, {pc}
	.align 2, 0
_021F05F0: .word UNK04_0220D690
	arm_func_end MOD04_021F0580

	arm_func_start MOD04_021F05F4
MOD04_021F05F4: ; 0x021F05F4
	stmdb sp!, {lr}
	sub sp, sp, #4
	cmp r0, #0
	beq _021F0610
	ldr r2, [r0]
	cmp r2, #0
	bne _021F061C
_021F0610:
	add sp, sp, #4
	mov r0, #0
	ldmfd sp!, {pc}
_021F061C:
	ldr r2, [r2, #0x108]
	cmp r2, #0
	addne sp, sp, #4
	movne r0, #0
	ldmneia sp!, {pc}
	add r2, sp, #0
	bl MOD04_021F85E8
	cmp r0, #0
	beq _021F0658
	ldr r0, [sp]
	ldr r0, [r0, #8]
	cmp r0, #0
	addne sp, sp, #4
	movne r0, #1
	ldmneia sp!, {pc}
_021F0658:
	mov r0, #0
	add sp, sp, #4
	ldmfd sp!, {pc}
	arm_func_end MOD04_021F05F4

	arm_func_start MOD04_021F0664
MOD04_021F0664: ; 0x021F0664
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	mov r4, r2
	cmp r0, #0
	beq _021F0684
	ldr r2, [r0]
	cmp r2, #0
	bne _021F0690
_021F0684:
	add sp, sp, #8
	mov r0, #2
	ldmia sp!, {r4, pc}
_021F0690:
	ldr r2, [r2, #0x108]
	cmp r2, #0
	movne r0, #0
	addne sp, sp, #8
	strne r0, [r4]
	ldmneia sp!, {r4, pc}
	add r2, sp, #0
	bl MOD04_021F85E8
	cmp r0, #0
	beq _021F06D0
	ldr r0, [sp]
	ldr r0, [r0, #8]
	cmp r0, #0
	ldrne r0, [r0]
	strne r0, [r4]
	bne _021F06D8
_021F06D0:
	mvn r0, #0
	str r0, [r4]
_021F06D8:
	mov r0, #0
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	arm_func_end MOD04_021F0664

	arm_func_start MOD04_021F06E4
MOD04_021F06E4: ; 0x021F06E4
	stmdb sp!, {r4, r5, r6, lr}
	movs r5, r0
	mov r4, r2
	beq _021F0700
	ldr r3, [r5]
	cmp r3, #0
	bne _021F0708
_021F0700:
	mov r0, #2
	ldmia sp!, {r4, r5, r6, pc}
_021F0708:
	ldr r2, [r3, #0x108]
	cmp r2, #0
	beq _021F072C
	mov r0, r4
	mov r1, #0
	mov r2, #0x210
	bl memset
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
_021F072C:
	cmp r4, #0
	bne _021F0744
	ldr r1, _021F0814 ; =UNK04_0220D750
	bl MOD04_021FAEEC
	mov r0, #2
	ldmia sp!, {r4, r5, r6, pc}
_021F0744:
	cmp r1, #0
	ldr r2, [r3, #0x430]
	blt _021F0758
	cmp r1, r2
	blt _021F076C
_021F0758:
	ldr r1, _021F0818 ; =UNK04_0220D760
	mov r0, r5
	bl MOD04_021FAEEC
	mov r0, #2
	ldmia sp!, {r4, r5, r6, pc}
_021F076C:
	bl MOD04_021F8430
	movs r6, r0
	bne _021F078C
	ldr r1, _021F0818 ; =UNK04_0220D760
	mov r0, r5
	bl MOD04_021FAEEC
	mov r0, #2
	ldmia sp!, {r4, r5, r6, pc}
_021F078C:
	ldr r5, [r6, #8]
	cmp r5, #0
	bne _021F07AC
	ldr r0, _021F081C ; =UNK04_0220D770
	ldr r1, _021F0820 ; =UNK04_0220D77C
	ldr r3, _021F0824 ; =0x000005CF
	mov r2, #0
	bl __msl_assertion_failed
_021F07AC:
	ldr r0, [r6]
	str r0, [r4]
	ldr r0, [r5, #4]
	str r0, [r4, #4]
	ldr r1, [r5, #8]
	cmp r1, #0
	moveq r0, #0
	streqb r0, [r1]
	beq _021F07DC
	add r0, r4, #8
	mov r2, #0x100
	bl MOD04_021FB3DC
_021F07DC:
	ldr r1, [r5, #0xc]
	cmp r1, #0
	moveq r0, #0
	streqb r0, [r1]
	beq _021F07FC
	add r0, r4, #0x108
	mov r2, #0x100
	bl MOD04_021FB3DC
_021F07FC:
	ldr r1, [r5, #0x10]
	mov r0, #0
	str r1, [r4, #0x208]
	ldr r1, [r5, #0x14]
	str r1, [r4, #0x20c]
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_021F0814: .word UNK04_0220D750
_021F0818: .word UNK04_0220D760
_021F081C: .word UNK04_0220D770
_021F0820: .word UNK04_0220D77C
_021F0824: .word 0x000005CF
	arm_func_end MOD04_021F06E4

	arm_func_start MOD04_021F0828
MOD04_021F0828: ; 0x021F0828
	cmp r0, #0
	beq _021F083C
	ldr r2, [r0]
	cmp r2, #0
	bne _021F0844
_021F083C:
	mov r0, #2
	bx lr
_021F0844:
	ldr r0, [r2, #0x108]
	cmp r0, #0
	movne r0, #0
	strne r0, [r1]
	ldreq r2, [r2, #0x430]
	moveq r0, #0
	streq r2, [r1]
	bx lr
	arm_func_end MOD04_021F0828

	arm_func_start MOD04_021F0864
MOD04_021F0864: ; 0x021F0864
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	movs r4, r0
	beq _021F0880
	ldr r5, [r4]
	cmp r5, #0
	bne _021F088C
_021F0880:
	add sp, sp, #4
	mov r0, #2
	ldmia sp!, {r4, r5, pc}
_021F088C:
	ldr r2, [r5, #0x108]
	cmp r2, #0
	addne sp, sp, #4
	movne r0, #0
	ldmneia sp!, {r4, r5, pc}
	ldr r2, [r5, #0x1d8]
	cmp r2, #4
	bne _021F08C0
	ldr r1, _021F0940 ; =UNK04_0220D690
	bl MOD04_021FAEEC
	add sp, sp, #4
	mov r0, #2
	ldmia sp!, {r4, r5, pc}
_021F08C0:
	add r2, sp, #0
	bl MOD04_021F85E8
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r4, r5, pc}
	ldr r1, [sp]
	ldr r0, [r1, #0x14]
	sub r0, r0, #1
	str r0, [r1, #0x14]
	ldr r0, [r5, #0x100]
	cmp r0, #0
	bne _021F0934
	ldr r1, [sp]
	ldr r0, [r1, #0x14]
	cmp r0, #0
	bgt _021F0934
	ldr r0, [r1, #0x10]
	bl MOD04_021DD82C
	ldr r0, [sp]
	mov r1, #0
	str r1, [r0, #0x10]
	ldr r0, [sp]
	bl MOD04_021F83EC
	cmp r0, #0
	beq _021F0934
	ldr r1, [sp]
	mov r0, r4
	bl MOD04_021F85A0
_021F0934:
	mov r0, #0
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_021F0940: .word UNK04_0220D690
	arm_func_end MOD04_021F0864

	arm_func_start MOD04_021F0944
MOD04_021F0944: ; 0x021F0944
	stmdb sp!, {lr}
	sub sp, sp, #4
	cmp r0, #0
	beq _021F0960
	ldr r3, [r0]
	cmp r3, #0
	bne _021F096C
_021F0960:
	add sp, sp, #4
	mov r0, #2
	ldmfd sp!, {pc}
_021F096C:
	ldr r2, [r3, #0x108]
	cmp r2, #0
	addne sp, sp, #4
	movne r0, #0
	ldmneia sp!, {pc}
	ldr r2, [r3, #0x1d8]
	cmp r2, #4
	bne _021F09A0
	ldr r1, _021F09AC ; =UNK04_0220D690
	bl MOD04_021FAEEC
	add sp, sp, #4
	mov r0, #2
	ldmfd sp!, {pc}
_021F09A0:
	bl MOD04_021F1984
	add sp, sp, #4
	ldmfd sp!, {pc}
	.align 2, 0
_021F09AC: .word UNK04_0220D690
	arm_func_end MOD04_021F0944

	arm_func_start MOD04_021F09B0
MOD04_021F09B0: ; 0x021F09B0
	stmdb sp!, {r4, r5, r6, lr}
	ldr ip, _021F0B0C ; =0x00000408
	sub sp, sp, ip
	movs r6, r0
	mov r5, r1
	beq _021F09D4
	ldr r4, [r6]
	cmp r4, #0
	bne _021F09E4
_021F09D4:
	ldr ip, _021F0B0C ; =0x00000408
	mov r0, #2
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, pc}
_021F09E4:
	ldr r1, [r4, #0x108]
	cmp r1, #0
	ldrne ip, _021F0B0C ; =0x00000408
	movne r0, #0
	addne sp, sp, ip
	ldmneia sp!, {r4, r5, r6, pc}
	ldr r1, [r4, #0x1d8]
	cmp r1, #4
	bne _021F0A20
	ldr r1, _021F0B10 ; =UNK04_0220D690
	bl MOD04_021FAEEC
	ldr ip, _021F0B0C ; =0x00000408
	mov r0, #2
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, pc}
_021F0A20:
	cmp r2, #0
	bne _021F0A40
	ldr r1, _021F0B14 ; =UNK04_0220D784
	bl MOD04_021FAEEC
	ldr ip, _021F0B0C ; =0x00000408
	mov r0, #2
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, pc}
_021F0A40:
	mov r1, r2
	ldr r2, _021F0B18 ; =0x00000401
	add r0, sp, #0
	bl MOD04_021FB3DC
	ldrsb r0, [sp]
	cmp r0, #0
	beq _021F0A7C
	add r2, sp, #0
	mov r1, #0x2f
_021F0A64:
	ldrsb r0, [r2]
	cmp r0, #0x5c
	streqb r1, [r2]
	ldrsb r0, [r2, #1]!
	cmp r0, #0
	bne _021F0A64
_021F0A7C:
	ldr r2, _021F0B1C ; =UNK04_0220D794
	mov r0, r6
	add r1, r4, #0x1f4
	bl MOD04_021F2F9C
	ldr r2, _021F0B20 ; =UNK04_0220D6C0
	mov r0, r6
	add r1, r4, #0x1f4
	bl MOD04_021F2F9C
	ldr r2, [r4, #0x198]
	mov r0, r6
	add r1, r4, #0x1f4
	bl MOD04_021F2F64
	ldr r2, _021F0B24 ; =UNK04_0220D7A0
	mov r0, r6
	add r1, r4, #0x1f4
	bl MOD04_021F2F9C
	mov r2, r5
	mov r0, r6
	add r1, r4, #0x1f4
	bl MOD04_021F2F64
	ldr r2, _021F0B28 ; =UNK04_0220D7B0
	mov r0, r6
	add r1, r4, #0x1f4
	bl MOD04_021F2F9C
	mov r0, r6
	add r1, r4, #0x1f4
	add r2, sp, #0
	bl MOD04_021F2F9C
	ldr r2, _021F0B2C ; =UNK04_0220D6CC
	mov r0, r6
	add r1, r4, #0x1f4
	bl MOD04_021F2F9C
	mov r0, #0
	ldr ip, _021F0B0C ; =0x00000408
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_021F0B0C: .word 0x00000408
_021F0B10: .word UNK04_0220D690
_021F0B14: .word UNK04_0220D784
_021F0B18: .word 0x00000401
_021F0B1C: .word UNK04_0220D794
_021F0B20: .word UNK04_0220D6C0
_021F0B24: .word UNK04_0220D7A0
_021F0B28: .word UNK04_0220D7B0
_021F0B2C: .word UNK04_0220D6CC
	arm_func_end MOD04_021F09B0

	arm_func_start MOD04_021F0B30
MOD04_021F0B30: ; 0x021F0B30
	stmdb sp!, {lr}
	sub sp, sp, #4
	cmp r0, #0
	beq _021F0B4C
	ldr ip, [r0]
	cmp ip, #0
	bne _021F0B58
_021F0B4C:
	add sp, sp, #4
	mov r0, #2
	ldmfd sp!, {pc}
_021F0B58:
	ldr r3, [ip, #0x108]
	cmp r3, #0
	addne sp, sp, #4
	movne r0, #0
	ldmneia sp!, {pc}
	ldr r3, [ip, #0x1d8]
	cmp r3, #4
	bne _021F0B8C
	ldr r1, _021F0B98 ; =UNK04_0220D690
	bl MOD04_021FAEEC
	add sp, sp, #4
	mov r0, #2
	ldmfd sp!, {pc}
_021F0B8C:
	bl MOD04_021F50B8
	add sp, sp, #4
	ldmfd sp!, {pc}
	.align 2, 0
_021F0B98: .word UNK04_0220D690
	arm_func_end MOD04_021F0B30

	arm_func_start MOD04_021F0B9C
MOD04_021F0B9C: ; 0x021F0B9C
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0x20c
	movs r5, r0
	beq _021F0BC0
	ldr r4, [r5]
	cmp r4, #0
	beq _021F0BC0
	cmp r1, #0
	bne _021F0BCC
_021F0BC0:
	add sp, sp, #0x20c
	mov r0, #2
	ldmia sp!, {r4, r5, pc}
_021F0BCC:
	ldr lr, [sp, #0x218]
	cmp lr, #0
	bne _021F0BEC
	ldr r1, _021F0C7C ; =UNK04_0220D6D4
	bl MOD04_021FAEEC
	add sp, sp, #0x20c
	mov r0, #2
	ldmia sp!, {r4, r5, pc}
_021F0BEC:
	ldr ip, [r4, #0x108]
	cmp ip, #0
	beq _021F0C44
	mov r0, #0
	add lr, sp, #8
	mov r1, r0
	mov r2, r0
	mov r3, r0
	mov ip, #0x10
_021F0C10:
	stmia lr!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	subs ip, ip, #1
	bne _021F0C10
	ldr r2, [sp, #0x21c]
	str r0, [lr]
	ldr r3, [sp, #0x218]
	add r1, sp, #8
	mov r0, r5
	blx r3
	add sp, sp, #0x20c
	mov r0, #0
	ldmia sp!, {r4, r5, pc}
_021F0C44:
	ldr ip, [r4, #0x1d8]
	cmp ip, #4
	bne _021F0C64
	ldr r1, _021F0C80 ; =UNK04_0220D690
	bl MOD04_021FAEEC
	add sp, sp, #0x20c
	mov r0, #2
	ldmia sp!, {r4, r5, pc}
_021F0C64:
	ldr ip, [sp, #0x21c]
	str lr, [sp]
	str ip, [sp, #4]
	bl MOD04_021F4E64
	add sp, sp, #0x20c
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_021F0C7C: .word UNK04_0220D6D4
_021F0C80: .word UNK04_0220D690
	arm_func_end MOD04_021F0B9C

	arm_func_start MOD04_021F0C84
MOD04_021F0C84: ; 0x021F0C84
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x30
	cmp r0, #0
	beq _021F0CA0
	ldr r4, [r0]
	cmp r4, #0
	bne _021F0CAC
_021F0CA0:
	add sp, sp, #0x30
	mov r0, #2
	ldmia sp!, {r4, pc}
_021F0CAC:
	ldr ip, [sp, #0x48]
	cmp ip, #0
	bne _021F0CCC
	ldr r1, _021F0D4C ; =UNK04_0220D6D4
	bl MOD04_021FAEEC
	add sp, sp, #0x30
	mov r0, #2
	ldmia sp!, {r4, pc}
_021F0CCC:
	ldr r4, [r4, #0x108]
	cmp r4, #0
	beq _021F0D0C
	add r1, sp, #0x1c
	mov r4, #0
	str r4, [r1]
	str r4, [r1, #4]
	str r4, [r1, #8]
	ldr r2, [sp, #0x4c]
	ldr r3, _021F0D50 ; =0x00000601
	str r4, [r1, #0xc]
	str r3, [sp, #0x24]
	blx ip
	add sp, sp, #0x30
	mov r0, r4
	ldmia sp!, {r4, pc}
_021F0D0C:
	ldr r4, [sp, #0x38]
	ldr lr, [sp, #0x3c]
	str r4, [sp]
	ldr r4, [sp, #0x40]
	str lr, [sp, #4]
	str r4, [sp, #8]
	mov r4, #0
	ldr lr, [sp, #0x44]
	str r4, [sp, #0xc]
	str lr, [sp, #0x10]
	ldr lr, [sp, #0x4c]
	str ip, [sp, #0x14]
	str lr, [sp, #0x18]
	bl MOD04_021FA770
	add sp, sp, #0x30
	ldmia sp!, {r4, pc}
	.align 2, 0
_021F0D4C: .word UNK04_0220D6D4
_021F0D50: .word 0x00000601
	arm_func_end MOD04_021F0C84

	arm_func_start MOD04_021F0D54
MOD04_021F0D54: ; 0x021F0D54
	stmdb sp!, {r4, lr}
	movs r4, r0
	ldmeqia sp!, {r4, pc}
	ldr r1, [r4]
	cmp r1, #0
	ldmeqia sp!, {r4, pc}
	ldr r1, [r1, #0x108]
	cmp r1, #0
	ldmneia sp!, {r4, pc}
	mov r1, #1
	bl MOD04_021F35F4
	mov r0, r4
	bl MOD04_021F14C0
	ldmia sp!, {r4, pc}
	arm_func_end MOD04_021F0D54

	arm_func_start MOD04_021F0D8C
MOD04_021F0D8C: ; 0x021F0D8C
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x48
	movs lr, r0
	beq _021F0DA8
	ldr ip, [lr]
	cmp ip, #0
	bne _021F0DB4
_021F0DA8:
	add sp, sp, #0x48
	mov r0, #2
	ldmia sp!, {r4, pc}
_021F0DB4:
	cmp r1, #0
	beq _021F0DC8
	ldrsb r4, [r1]
	cmp r4, #0
	bne _021F0DD4
_021F0DC8:
	add sp, sp, #0x48
	mov r0, #2
	ldmia sp!, {r4, pc}
_021F0DD4:
	cmp r2, #0
	beq _021F0DE8
	ldrsb r4, [r2]
	cmp r4, #0
	bne _021F0DF4
_021F0DE8:
	add sp, sp, #0x48
	mov r0, #2
	ldmia sp!, {r4, pc}
_021F0DF4:
	ldr r4, [sp, #0x54]
	cmp r4, #0
	bne _021F0E14
	ldr r1, _021F0EA8 ; =UNK04_0220D6D4
	bl MOD04_021FAEEC
	add sp, sp, #0x48
	mov r0, #2
	ldmia sp!, {r4, pc}
_021F0E14:
	ldr ip, [ip, #0x108]
	cmp ip, #0
	beq _021F0E5C
	add r3, sp, #0x24
	mov r0, #0
	mov r2, r3
	mov r1, r0
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2, {r0, r1}
	ldr r2, [sp, #0x58]
	mov r0, lr
	mov r1, r3
	blx r4
	add sp, sp, #0x48
	mov r0, #0
	ldmia sp!, {r4, pc}
_021F0E5C:
	ldr lr, _021F0EAC ; =UNK04_0220D7BC
	mov ip, #0
	str lr, [sp]
	str r1, [sp, #4]
	str r2, [sp, #8]
	str ip, [sp, #0xc]
	str r3, [sp, #0x10]
	ldr r1, [sp, #0x50]
	str ip, [sp, #0x14]
	str r1, [sp, #0x18]
	ldr ip, [sp, #0x58]
	str r4, [sp, #0x1c]
	mov r1, lr
	mov r2, lr
	mov r3, lr
	str ip, [sp, #0x20]
	bl MOD04_021F4670
	add sp, sp, #0x48
	ldmia sp!, {r4, pc}
	.align 2, 0
_021F0EA8: .word UNK04_0220D6D4
_021F0EAC: .word UNK04_0220D7BC
	arm_func_end MOD04_021F0D8C

	arm_func_start MOD04_021F0EB0
MOD04_021F0EB0: ; 0x021F0EB0
	stmdb sp!, {lr}
	sub sp, sp, #4
	cmp r0, #0
	beq _021F0ECC
	ldr ip, [r0]
	cmp ip, #0
	bne _021F0ED8
_021F0ECC:
	add sp, sp, #4
	mov r0, #2
	ldmfd sp!, {pc}
_021F0ED8:
	cmp r1, #0
	blt _021F0EE8
	cmp r1, #6
	blt _021F0EFC
_021F0EE8:
	ldr r1, _021F0F14 ; =UNK04_0220D7C0
	bl MOD04_021FAEEC
	add sp, sp, #4
	mov r0, #2
	ldmfd sp!, {pc}
_021F0EFC:
	add r0, ip, r1, lsl #3
	str r2, [r0, #0x1a4]
	str r3, [r0, #0x1a8]
	mov r0, #0
	add sp, sp, #4
	ldmfd sp!, {pc}
	.align 2, 0
_021F0F14: .word UNK04_0220D7C0
	arm_func_end MOD04_021F0EB0

	arm_func_start MOD04_021F0F18
MOD04_021F0F18: ; 0x021F0F18
	stmdb sp!, {lr}
	sub sp, sp, #4
	cmp r0, #0
	beq _021F0F34
	ldr r1, [r0]
	cmp r1, #0
	bne _021F0F40
_021F0F34:
	add sp, sp, #4
	mov r0, #2
	ldmfd sp!, {pc}
_021F0F40:
	ldr r1, [r1, #0x108]
	cmp r1, #0
	addne sp, sp, #4
	movne r0, #0
	ldmneia sp!, {pc}
	mov r1, #0
	bl MOD04_021F0FD4
	add sp, sp, #4
	ldmfd sp!, {pc}
	arm_func_end MOD04_021F0F18

	arm_func_start MOD04_021F0F64
MOD04_021F0F64: ; 0x021F0F64
	stmdb sp!, {lr}
	sub sp, sp, #4
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqia sp!, {pc}
	ldr r1, [r0]
	cmp r1, #0
	addeq sp, sp, #4
	ldmeqia sp!, {pc}
	bl MOD04_021F1620
	add sp, sp, #4
	ldmfd sp!, {pc}
	arm_func_end MOD04_021F0F64

	arm_func_start MOD04_021F0F94
MOD04_021F0F94: ; 0x021F0F94
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r3, _021F0FD0 ; =UNK04_02210E5C
	ldr r3, [r3]
	cmp r3, #1
	addne sp, sp, #4
	movne r0, #2
	ldmneia sp!, {pc}
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #2
	ldmeqia sp!, {pc}
	bl MOD04_021F1668
	add sp, sp, #4
	ldmfd sp!, {pc}
	.align 2, 0
_021F0FD0: .word UNK04_02210E5C
	arm_func_end MOD04_021F0F94

	arm_func_start MOD04_021F0FD4
MOD04_021F0FD4: ; 0x021F0FD4
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #4
	mov sl, r0
	ldr r7, [sl]
	mov sb, r1
	ldr r0, [r7, #0x1d8]
	mov r6, #0
	cmp r0, #4
	bls _021F100C
	ldr r0, _021F117C ; =UNK04_0220D7D0
	ldr r1, _021F1180 ; =UNK04_0220D8C8
	ldr r3, _021F1184 ; =0x000001B5
	mov r2, r6
	bl __msl_assertion_failed
_021F100C:
	ldr r0, [r7, #0x1d8]
	cmp r0, #1
	bne _021F10A8
	mov r4, #0
	mov r5, #1
	mov fp, #0xa
_021F1024:
	mov r0, sl
	bl MOD04_021F3880
	movs r6, r0
	bne _021F104C
	cmp sb, #0
	beq _021F104C
	ldr r0, [r7, #0x1d8]
	cmp r0, #1
	moveq r8, r5
	beq _021F1050
_021F104C:
	mov r8, r4
_021F1050:
	cmp r8, #0
	beq _021F1060
	mov r0, fp
	bl MOD04_021F0250
_021F1060:
	cmp r8, #0
	bne _021F1024
	cmp r6, #0
	beq _021F10A8
	add r1, sp, #0
	mov r0, sl
	mov r2, #1
	bl MOD04_021F6C38
	cmp r0, #0
	ldrne r0, [sp]
	movne r1, #4
	strne r1, [r0, #0x1c]
	bne _021F10A8
	ldr r0, _021F1188 ; =UNK04_0220D8D0
	ldr r1, _021F1180 ; =UNK04_0220D8C8
	ldr r3, _021F118C ; =0x000001DB
	mov r2, #0
	bl __msl_assertion_failed
_021F10A8:
	ldr r0, [r7, #0x1d8]
	sub r0, r0, #2
	cmp r0, #1
	bhi _021F10E0
	cmp r6, #0
	bne _021F10CC
	mov r0, sl
	bl MOD04_021F1190
	mov r6, r0
_021F10CC:
	cmp r6, #0
	bne _021F10E0
	mov r0, sl
	bl MOD04_021F775C
	mov r6, r0
_021F10E0:
	cmp r6, #0
	bne _021F10F4
	mov r0, sl
	bl MOD04_021F8974
	mov r6, r0
_021F10F4:
	ldr r1, [r7, #0x424]
	str r1, [sp]
	cmp r1, #0
	beq _021F1140
_021F1104:
	ldr r0, [r1, #0x1c]
	cmp r0, #0
	ldreq r0, [r1, #0x20]
	streq r0, [sp]
	beq _021F1134
	mov r0, sl
	bl MOD04_021F6E44
	ldr r1, [sp]
	mov r0, sl
	ldr r2, [r1, #0x20]
	str r2, [sp]
	bl MOD04_021F6C84
_021F1134:
	ldr r1, [sp]
	cmp r1, #0
	bne _021F1104
_021F1140:
	mov r0, sl
	mov r1, sb
	bl MOD04_021F3170
	cmp r0, #0
	addne sp, sp, #4
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, [r7, #0x41c]
	cmp r0, #0
	beq _021F1170
	mov r0, sl
	mov r1, #0
	bl MOD04_021F35F4
_021F1170:
	mov r0, r6
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_021F117C: .word UNK04_0220D7D0
_021F1180: .word UNK04_0220D8C8
_021F1184: .word 0x000001B5
_021F1188: .word UNK04_0220D8D0
_021F118C: .word 0x000001DB
	arm_func_end MOD04_021F0FD4

	arm_func_start MOD04_021F1190
MOD04_021F1190: ; 0x021F1190
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x1c
	mov fp, #0
	mov r5, r0
	str fp, [sp, #0x18]
	ldr r4, [r5]
	mov r0, #0x800
	str r0, [sp, #8]
	add sb, r4, #0x1f0
	add r8, r4, #0x1e4
	mov sl, #1
	mov r0, #4
	str r0, [sp, #0xc]
	mov r6, #0xa
_021F11C8:
	mov r0, r5
	add r1, r4, #0x1f4
	bl MOD04_021F5DF8
	ldr r0, _021F1494 ; =UNK04_0220D8D4
	str sl, [sp]
	str r0, [sp, #4]
	ldr r1, [r4, #0x1d4]
	mov r0, r5
	add r2, r4, #0x1f4
	add r3, sp, #0x18
	bl MOD04_021F28AC
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	add r0, sp, #0x18
	str r0, [sp]
	ldr r0, _021F1494 ; =UNK04_0220D8D4
	add r2, r4, #0x1dc
	str r0, [sp, #4]
	ldr r1, [r4, #0x1d4]
	mov r0, r5
	add r3, sp, #0x14
	bl MOD04_021F2A2C
	cmp r0, #0
	beq _021F1264
	cmp r0, #3
	addne sp, sp, #0x1c
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r2, _021F1498 ; =UNK04_0220D8D8
	mov r0, r5
	mov r1, #5
	bl MOD04_021FAF00
	mov r0, r5
	mov r1, #3
	mov r2, #1
	bl MOD04_021F3500
	add sp, sp, #0x1c
	mov r0, #3
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F1264:
	ldr r0, [r4, #0x1dc]
	ldr r1, _021F149C ; =UNK04_0220D904
	bl strstr
	movs r7, r0
	beq _021F1428
_021F1278:
	strb fp, [r7]
	ldr r1, _021F14A0 ; =UNK04_0220D90C
	ldr r2, [r4, #0x1dc]
	mov r0, r5
	bl MOD04_021FB3D0
	ldr r0, [r4, #0x1dc]
	sub r1, r7, r0
	str r1, [sp, #0x14]
	ldr r0, [r4, #0x1f0]
	cmp r1, r0
	ble _021F12EC
	cmp r1, #0x800
	ldrlt r1, [sp, #8]
	ldr r0, [sb]
	add r0, r0, r1
	str r0, [sb]
	ldr r1, [r4, #0x1f0]
	ldr r0, [r4, #0x1ec]
	add r1, r1, #1
	bl MOD04_021DD844
	cmp r0, #0
	bne _021F12E8
	ldr r1, _021F14A4 ; =UNK04_0220D918
	mov r0, r5
	bl MOD04_021FAEEC
	add sp, sp, #0x1c
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F12E8:
	str r0, [r4, #0x1ec]
_021F12EC:
	ldr r2, [sp, #0x14]
	ldr r0, [r4, #0x1ec]
	ldr r1, [r4, #0x1dc]
	add r2, r2, #1
	bl memcpy
	ldr r0, [r4, #0x1dc]
	add r1, r7, #7
	ldr r2, [r8]
	sub r0, r1, r0
	sub r0, r2, r0
	str r0, [r8]
	ldr r2, [r4, #0x1e4]
	ldr r0, [r4, #0x1dc]
	add r2, r2, #1
	bl memmove
	ldr r7, [r4, #0x1ec]
	ldr r1, _021F14A8 ; =UNK04_0220D928
	mov r0, r7
	bl strstr
	cmp r0, #0
	beq _021F1398
	add r0, r0, #4
	bl atol
	mov r7, r0
	mov r0, r5
	add r1, sp, #0x10
	mov r2, r7
	bl MOD04_021F6C38
	cmp r0, #0
	bne _021F1378
	ldr r1, _021F14AC ; =UNK04_0220D930
	mov r2, r7
	mov r0, r5
	bl MOD04_021FB3D0
	b _021F1414
_021F1378:
	mov r0, r5
	ldr r1, [sp, #0x10]
	ldr r2, [r4, #0x1ec]
	bl MOD04_021F6B50
	cmp r0, #0
	beq _021F1414
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F1398:
	mov r1, r7
	mov r0, r5
	mov r2, sl
	bl MOD04_021FB2F8
	cmp r0, #0
	addne sp, sp, #0x1c
	movne r0, #4
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r7, [r4, #0x1ec]
	ldr r1, _021F14B0 ; =UNK04_0220D958
	ldr r2, [sp, #0xc]
	mov r0, r7
	bl strncmp
	cmp r0, #0
	bne _021F13F0
	mov r1, r7
	mov r0, r5
	bl MOD04_021F1C48
	cmp r0, #0
	beq _021F1414
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F13F0:
	ldr r1, _021F14B4 ; =UNK04_0220D960
	mov r0, r7
	mov r2, r6
	bl strncmp
	cmp r0, #0
	beq _021F1414
	ldr r1, _021F14B8 ; =UNK04_0220D968
	mov r0, r5
	bl MOD04_021FB3D0
_021F1414:
	ldr r0, [r4, #0x1dc]
	ldr r1, _021F149C ; =UNK04_0220D904
	bl strstr
	movs r7, r0
	bne _021F1278
_021F1428:
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq _021F1468
	ldr r2, _021F14BC ; =UNK04_0220D998
	mov r3, #4
	mov r0, r5
	mov r1, #7
	str r3, [r4, #0x1d8]
	bl MOD04_021FAF00
	mov r0, r5
	mov r1, #3
	mov r2, #1
	bl MOD04_021F3500
	add sp, sp, #0x1c
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F1468:
	mov r0, r5
	bl MOD04_021F6BF8
	movs r7, r0
	beq _021F1480
	mov r0, r6
	bl MOD04_021F0250
_021F1480:
	cmp r7, #0
	bne _021F11C8
	mov r0, #0
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_021F1494: .word UNK04_0220D8D4
_021F1498: .word UNK04_0220D8D8
_021F149C: .word UNK04_0220D904
_021F14A0: .word UNK04_0220D90C
_021F14A4: .word UNK04_0220D918
_021F14A8: .word UNK04_0220D928
_021F14AC: .word UNK04_0220D930
_021F14B0: .word UNK04_0220D958
_021F14B4: .word UNK04_0220D960
_021F14B8: .word UNK04_0220D968
_021F14BC: .word UNK04_0220D998
	arm_func_end MOD04_021F1190

	arm_func_start MOD04_021F14C0
MOD04_021F14C0: ; 0x021F14C0
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	ldr r4, [r5]
	mov r1, #0
	strb r1, [r4, #0x110]
	strb r1, [r4, #0x12f]
	strb r1, [r4, #0x144]
	mvn r0, #0
	str r0, [r4, #0x1d4]
	str r1, [r4, #0x1d8]
	str r1, [r4, #0x1e4]
	str r1, [r4, #0x1e8]
	str r1, [r4, #0x1e0]
	ldr r0, [r4, #0x1dc]
	bl MOD04_021DD82C
	mov r0, #0
	str r0, [r4, #0x1dc]
	str r0, [r4, #0x1dc]
	str r0, [r4, #0x1f0]
	ldr r0, [r4, #0x1ec]
	bl MOD04_021DD82C
	mov r0, #0
	str r0, [r4, #0x1ec]
	str r0, [r4, #0x1ec]
	str r0, [r4, #0x1fc]
	str r0, [r4, #0x200]
	str r0, [r4, #0x1f8]
	ldr r0, [r4, #0x1f4]
	bl MOD04_021DD82C
	mov r0, #0
	str r0, [r4, #0x1f4]
	str r0, [r4, #0x1f4]
	str r0, [r4, #0x448]
	str r0, [r4, #0x44c]
	str r0, [r4, #0x444]
	ldr r0, [r4, #0x440]
	bl MOD04_021DD82C
	mov r0, #0
	str r0, [r4, #0x440]
	str r0, [r4, #0x440]
	str r0, [r4, #0x458]
	str r0, [r4, #0x45c]
	str r0, [r4, #0x454]
	ldr r0, [r4, #0x450]
	bl MOD04_021DD82C
	mov r0, #0
	str r0, [r4, #0x450]
	str r0, [r4, #0x450]
	mvn r0, #0
	str r0, [r4, #0x204]
	mov r0, #2
	str r0, [r4, #0x20c]
	ldr r1, [r4, #0x424]
	cmp r1, #0
	beq _021F15B4
_021F15A0:
	mov r0, r5
	bl MOD04_021F6C84
	ldr r1, [r4, #0x424]
	cmp r1, #0
	bne _021F15A0
_021F15B4:
	mov r2, #0
	str r2, [r4, #0x424]
	ldr r1, _021F1600 ; =MOD04_021F1604
	mov r0, r5
	str r2, [r4, #0x430]
	bl MOD04_021F848C
	mov r0, #0
	str r0, [r4, #0x19c]
	str r0, [r4, #0x1a0]
	str r0, [r4, #0x198]
	str r0, [r4, #0x210]
	str r0, [r4, #0x41c]
	str r0, [r4, #0x434]
	mvn r1, #0
	str r1, [r4, #0x214]
	strb r0, [r4, #0x218]
	strb r0, [r4, #0x318]
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_021F1600: .word MOD04_021F1604
	arm_func_end MOD04_021F14C0

	arm_func_start MOD04_021F1604
MOD04_021F1604: ; 0x021F1604
	mov r0, #0
	str r0, [r1, #8]
	str r0, [r1, #0x10]
	str r0, [r1, #0x14]
	str r0, [r1, #0x18]
	mov r0, #1
	bx lr
	arm_func_end MOD04_021F1604

	arm_func_start MOD04_021F1620
MOD04_021F1620: ; 0x021F1620
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	ldr r4, [r5]
	mov r1, #1
	bl MOD04_021F35F4
	ldr r0, [r4, #0x460]
	bl MOD04_021DD82C
	mov r0, #0
	str r0, [r4, #0x460]
	ldr r0, [r4, #0x428]
	bl MOD04_021EF5B0
	mov r0, r4
	bl MOD04_021DD82C
	mov r0, #0
	str r0, [r5]
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	arm_func_end MOD04_021F1620

	arm_func_start MOD04_021F1668
MOD04_021F1668: ; 0x021F1668
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	mov r6, r0
	mov r0, #0
	str r0, [r6]
	mov r0, #0x490
	mov r5, r1
	mov r4, r2
	bl MOD04_021DD860
	str r0, [sp]
	cmp r0, #0
	addeq sp, sp, #8
	moveq r0, #1
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r1, #0
	mov r2, #0x490
	bl memset
	ldr r0, [sp]
	mov r3, #0
	strb r3, [r0]
	ldr r0, [sp]
	mov r2, #1
	str r3, [r0, #0x418]
	ldr r1, [sp]
	add r0, sp, #0
	str r2, [r1, #0x100]
	ldr r1, [sp]
	str r3, [r1, #0x104]
	ldr r1, [sp]
	str r3, [r1, #0x108]
	ldr r1, [sp]
	str r3, [r1, #0x10c]
	ldr r1, [sp]
	str r5, [r1, #0x46c]
	ldr r1, [sp]
	str r4, [r1, #0x470]
	bl MOD04_021F8870
	cmp r0, #0
	bne _021F1720
	ldr r0, [sp]
	bl MOD04_021DD82C
	mov r0, #0
	str r0, [sp]
	add sp, sp, #8
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
_021F1720:
	ldr r0, [sp]
	mov r1, #0
	str r1, [r0, #0x420]
	mov r3, r1
_021F1730:
	ldr r0, [sp]
	add r0, r0, r1, lsl #3
	str r3, [r0, #0x1a4]
	ldr r0, [sp]
	add r0, r0, r1, lsl #3
	add r1, r1, #1
	str r3, [r0, #0x1a8]
	cmp r1, #6
	blt _021F1730
	ldr r2, [sp]
	ldr r1, _021F17AC ; =UNK04_0220D9C0
	add r0, sp, #0
	str r3, [r2, #0x460]
	bl MOD04_021FB3D0
	add r0, sp, #0
	bl MOD04_021F14C0
	movs r4, r0
	beq _021F178C
	add r0, sp, #0
	bl MOD04_021F1620
	add sp, sp, #8
	mov r0, r4
	ldmia sp!, {r4, r5, r6, pc}
_021F178C:
	bl MOD04_021F024C
	bl MOD04_021F025C
	bl srand
	ldr r1, [sp]
	mov r0, #0
	str r1, [r6]
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_021F17AC: .word UNK04_0220D9C0
	arm_func_end MOD04_021F1668

	arm_func_start MOD04_021F17B0
MOD04_021F17B0: ; 0x021F17B0
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	mov r6, r0
	add r2, sp, #0
	ldr r5, [r6]
	bl MOD04_021F85E8
	cmp r0, #0
	bne _021F17E8
	ldr r1, _021F1938 ; =UNK04_0220D9E4
	mov r0, r6
	bl MOD04_021FAEEC
	add sp, sp, #8
	mov r0, #2
	ldmia sp!, {r4, r5, r6, pc}
_021F17E8:
	ldr r2, _021F193C ; =UNK04_0220D9F8
	mov r0, r6
	add r1, r5, #0x1f4
	bl MOD04_021F2F9C
	ldr r2, _021F1940 ; =UNK04_0220DA04
	mov r0, r6
	add r1, r5, #0x1f4
	bl MOD04_021F2F9C
	ldr r2, [r5, #0x198]
	mov r0, r6
	add r1, r5, #0x1f4
	bl MOD04_021F2F64
	ldr r2, _021F1944 ; =UNK04_0220DA10
	mov r0, r6
	add r1, r5, #0x1f4
	bl MOD04_021F2F9C
	mov r0, r6
	add r1, r5, #0x1f4
	ldr r2, [sp]
	ldr r2, [r2]
	bl MOD04_021F2F64
	mov r0, r6
	add r1, r5, #0x1f4
	ldr r2, _021F1948 ; =UNK04_0220DA20
	bl MOD04_021F2F9C
	ldr r0, [sp]
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _021F192C
	ldr r4, [r0]
	cmp r4, #0
	bge _021F187C
	ldr r0, _021F194C ; =UNK04_0220DA28
	ldr r1, _021F1950 ; =UNK04_0220DA34
	ldr r3, _021F1954 ; =0x000001FD
	mov r2, #0
	bl __msl_assertion_failed
_021F187C:
	ldr r0, [sp]
	ldr r0, [r0, #8]
	ldr r0, [r0, #8]
	bl MOD04_021DD82C
	ldr r0, [sp]
	mov r1, #0
	ldr r0, [r0, #8]
	str r1, [r0, #8]
	ldr r0, [sp]
	ldr r0, [r0, #8]
	ldr r0, [r0, #0xc]
	bl MOD04_021DD82C
	ldr r0, [sp]
	mov r1, #0
	ldr r0, [r0, #8]
	str r1, [r0, #0xc]
	ldr r0, [sp]
	ldr r0, [r0, #8]
	bl MOD04_021DD82C
	ldr r0, [sp]
	mov r1, #0
	str r1, [r0, #8]
	ldr r0, [sp]
	bl MOD04_021F83EC
	cmp r0, #0
	beq _021F18F0
	ldr r1, [sp]
	mov r0, r6
	bl MOD04_021F85A0
_021F18F0:
	ldr r0, [r5, #0x430]
	sub r0, r0, #1
	str r0, [r5, #0x430]
	ldr r0, [r5, #0x430]
	cmp r0, #0
	bge _021F191C
	ldr r0, _021F1958 ; =UNK04_0220DA40
	ldr r1, _021F1950 ; =UNK04_0220DA34
	mov r2, #0
	mov r3, #0x204
	bl __msl_assertion_failed
_021F191C:
	ldr r1, _021F195C ; =MOD04_021F1960
	mov r0, r6
	mov r2, r4
	bl MOD04_021F848C
_021F192C:
	mov r0, #0
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_021F1938: .word UNK04_0220D9E4
_021F193C: .word UNK04_0220D9F8
_021F1940: .word UNK04_0220DA04
_021F1944: .word UNK04_0220DA10
_021F1948: .word UNK04_0220DA20
_021F194C: .word UNK04_0220DA28
_021F1950: .word UNK04_0220DA34
_021F1954: .word 0x000001FD
_021F1958: .word UNK04_0220DA40
_021F195C: .word MOD04_021F1960
	arm_func_end MOD04_021F17B0

	arm_func_start MOD04_021F1960
MOD04_021F1960: ; 0x021F1960
	ldr r1, [r1, #8]
	cmp r1, #0
	beq _021F197C
	ldr r0, [r1]
	cmp r0, r2
	subgt r0, r0, #1
	strgt r0, [r1]
_021F197C:
	mov r0, #1
	bx lr
	arm_func_end MOD04_021F1960

	arm_func_start MOD04_021F1984
MOD04_021F1984: ; 0x021F1984
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r4, r0
	add r2, sp, #0
	ldr r5, [r4]
	bl MOD04_021F85E8
	cmp r0, #0
	bne _021F19BC
	ldr r1, _021F1A60 ; =UNK04_0220D9E4
	mov r0, r4
	bl MOD04_021FAEEC
	add sp, sp, #4
	mov r0, #2
	ldmia sp!, {r4, r5, pc}
_021F19BC:
	ldr r1, [sp]
	ldr r0, [r1, #0x10]
	cmp r0, #0
	bne _021F19E4
	ldr r1, _021F1A60 ; =UNK04_0220D9E4
	mov r0, r4
	bl MOD04_021FAEEC
	add sp, sp, #4
	mov r0, #2
	ldmia sp!, {r4, r5, pc}
_021F19E4:
	mov r0, r4
	bl MOD04_021F265C
	cmp r0, #0
	addne sp, sp, #4
	ldmneia sp!, {r4, r5, pc}
	ldr r1, [sp]
	ldr r0, [r1, #0x14]
	sub r0, r0, #1
	str r0, [r1, #0x14]
	ldr r0, [r5, #0x100]
	cmp r0, #0
	bne _021F1A54
	ldr r1, [sp]
	ldr r0, [r1, #0x14]
	cmp r0, #0
	bgt _021F1A54
	ldr r0, [r1, #0x10]
	bl MOD04_021DD82C
	ldr r0, [sp]
	mov r1, #0
	str r1, [r0, #0x10]
	ldr r0, [sp]
	bl MOD04_021F83EC
	cmp r0, #0
	beq _021F1A54
	ldr r1, [sp]
	mov r0, r4
	bl MOD04_021F85A0
_021F1A54:
	mov r0, #0
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_021F1A60: .word UNK04_0220D9E4
	arm_func_end MOD04_021F1984

	arm_func_start MOD04_021F1A64
MOD04_021F1A64: ; 0x021F1A64
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bl MOD04_021F7720
	movs r8, r0
	bne _021F1B3C
	add r2, sp, #0
	mov r0, r7
	mov r1, r6
	bl MOD04_021F85E8
	cmp r0, #0
	beq _021F1ABC
	ldr r0, [sp]
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _021F1ABC
	ldr r0, [r0, #0x14]
	cmp r0, #0
	bne _021F1AD8
_021F1ABC:
	mov r0, r7
	mov r1, r6
	mov r2, r5
	mov r3, r4
	bl MOD04_021F1B60
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_021F1AD8:
	mov r0, r7
	mov r1, r6
	mov r2, #1
	bl MOD04_021F7674
	movs r8, r0
	addeq sp, sp, #8
	moveq r0, #1
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, [sp]
	ldr r0, [r0, #0x18]
	cmp r0, #0
	bne _021F1B24
	mov r0, r7
	mov r1, r8
	bl MOD04_021F7610
	cmp r0, #0
	beq _021F1B3C
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_021F1B24:
	mov r0, r7
	mov r1, r8
	bl MOD04_021F7478
	cmp r0, #0
	addne sp, sp, #8
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
_021F1B3C:
	mov r0, r7
	mov r1, r8
	mov r2, r5
	mov r3, r4
	bl MOD04_021F72EC
	cmp r0, #0
	moveq r0, #0
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end MOD04_021F1A64

	arm_func_start MOD04_021F1B60
MOD04_021F1B60: ; 0x021F1B60
	stmdb sp!, {r4, r5, r6, r7, lr}
	ldr ip, _021F1C2C ; =0x00000DB4
	sub sp, sp, ip
	mov r7, r0
	mov r5, r2
	mov r6, r1
	ldr r2, _021F1C30 ; =0x00000DAD
	add r0, sp, #0
	mov r1, r3
	ldr r4, [r7]
	bl MOD04_021FB3DC
	ldr r2, _021F1C34 ; =UNK04_0220DA6C
	mov r0, r7
	add r1, r4, #0x1f4
	bl MOD04_021F2F9C
	mov r0, r7
	mov r2, r5
	add r1, r4, #0x1f4
	bl MOD04_021F2F64
	ldr r2, _021F1C38 ; =UNK04_0220DA04
	mov r0, r7
	add r1, r4, #0x1f4
	bl MOD04_021F2F9C
	ldr r2, [r4, #0x198]
	mov r0, r7
	add r1, r4, #0x1f4
	bl MOD04_021F2F64
	ldr r2, _021F1C3C ; =UNK04_0220DA74
	mov r0, r7
	add r1, r4, #0x1f4
	bl MOD04_021F2F9C
	mov r2, r6
	mov r0, r7
	add r1, r4, #0x1f4
	bl MOD04_021F2F64
	ldr r2, _021F1C40 ; =UNK04_0220DA78
	mov r0, r7
	add r1, r4, #0x1f4
	bl MOD04_021F2F9C
	mov r0, r7
	add r1, r4, #0x1f4
	add r2, sp, #0
	bl MOD04_021F2F9C
	ldr r2, _021F1C44 ; =UNK04_0220DA20
	mov r0, r7
	add r1, r4, #0x1f4
	bl MOD04_021F2F9C
	mov r0, #0
	ldr ip, _021F1C2C ; =0x00000DB4
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_021F1C2C: .word 0x00000DB4
_021F1C30: .word 0x00000DAD
_021F1C34: .word UNK04_0220DA6C
_021F1C38: .word UNK04_0220DA04
_021F1C3C: .word UNK04_0220DA74
_021F1C40: .word UNK04_0220DA78
_021F1C44: .word UNK04_0220DA20
	arm_func_end MOD04_021F1B60

	arm_func_start MOD04_021F1C48
MOD04_021F1C48: ; 0x021F1C48
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	ldr ip, _021F2618 ; =0x0000113C
	sub sp, sp, ip
	mov r4, r1
	mov sl, r0
	ldr r1, _021F261C ; =UNK04_0220DA6C
	add r2, sp, #0x38
	mov r0, r4
	mov r3, #0x1000
	ldr r6, [sl]
	bl MOD04_021FB1F0
	cmp r0, #0
	bne _021F1CAC
	ldr r2, _021F2620 ; =UNK04_0220DA80
	mov r0, sl
	mov r1, #1
	bl MOD04_021FAF00
	mov r0, sl
	mov r1, #3
	mov r2, #1
	bl MOD04_021F3500
	ldr ip, _021F2618 ; =0x0000113C
	mov r0, #3
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F1CAC:
	add r0, sp, #0x38
	bl atol
	mov r5, r0
	ldr r1, _021F2624 ; =UNK04_0220DAB0
	add r2, sp, #0x38
	mov r0, r4
	mov r3, #0x1000
	bl MOD04_021FB1F0
	cmp r0, #0
	bne _021F1D04
	ldr r2, _021F2620 ; =UNK04_0220DA80
	mov r0, sl
	mov r1, #1
	bl MOD04_021FAF00
	mov r0, sl
	mov r1, #3
	mov r2, #1
	bl MOD04_021F3500
	ldr ip, _021F2618 ; =0x0000113C
	mov r0, #3
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F1D04:
	add r0, sp, #0x38
	bl atol
	mov r8, r0
	ldr r1, _021F2628 ; =UNK04_0220DAB4
	add r2, sp, #0x38
	mov r0, r4
	mov r3, #0x1000
	bl MOD04_021FB1F0
	cmp r0, #0
	beq _021F1D3C
	add r0, sp, #0x38
	bl atol
	mov sb, r0
	b _021F1D48
_021F1D3C:
	mov r0, #0
	bl MOD04_021EFAC8
	mov sb, r0
_021F1D48:
	cmp r5, #0x64
	bgt _021F1D7C
	cmp r5, #0x64
	bge _021F2078
	cmp r5, #2
	bgt _021F2608
	cmp r5, #1
	blt _021F2608
	cmp r5, #1
	beq _021F1DA0
	cmp r5, #2
	beq _021F1EB4
	b _021F2608
_021F1D7C:
	cmp r5, #0x66
	bgt _021F2608
	cmp r5, #0x65
	blt _021F2608
	cmp r5, #0x65
	beq _021F2408
	cmp r5, #0x66
	beq _021F25A8
	b _021F2608
_021F1DA0:
	ldr r1, [r6, #0x1bc]
	ldr r0, [r6, #0x1c0]
	cmp r1, #0
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	beq _021F2608
	mov r0, #0xc
	bl MOD04_021DD860
	movs r5, r0
	bne _021F1DE4
	ldr r1, _021F262C ; =UNK04_0220DABC
	mov r0, sl
	bl MOD04_021FAEEC
	ldr ip, _021F2618 ; =0x0000113C
	mov r0, #1
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F1DE4:
	ldr r1, _021F2630 ; =UNK04_0220DA78
	add r2, sp, #0x38
	mov r0, r4
	mov r3, #0x1000
	bl MOD04_021FB1F0
	cmp r0, #0
	bne _021F1E30
	ldr r2, _021F2620 ; =UNK04_0220DA80
	mov r0, sl
	mov r1, #1
	bl MOD04_021FAF00
	mov r0, sl
	mov r1, #3
	mov r2, #1
	bl MOD04_021F3500
	ldr ip, _021F2618 ; =0x0000113C
	mov r0, #3
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F1E30:
	add r0, sp, #0x38
	bl strlen
	add r0, r0, #1
	bl MOD04_021DD860
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	cmp r0, #0
	bne _021F1E6C
	ldr r1, _021F262C ; =UNK04_0220DABC
	mov r0, sl
	bl MOD04_021FAEEC
	ldr ip, _021F2618 ; =0x0000113C
	mov r0, #1
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F1E6C:
	add r1, sp, #0x38
	bl strcpy
	str r8, [r5]
	str sb, [r5, #4]
	mov r0, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	add r1, sp, #8
	mov r0, sl
	mov r3, r5
	ldmia r1, {r1, r2}
	bl MOD04_021F3454
	cmp r0, #0
	beq _021F2608
	ldr ip, _021F2618 ; =0x0000113C
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F1EB4:
	mov r0, sl
	mov r1, r8
	bl MOD04_021F8624
	movs r5, r0
	bne _021F1EE4
	ldr r1, _021F262C ; =UNK04_0220DABC
	mov r0, sl
	bl MOD04_021FAEEC
	ldr ip, _021F2618 ; =0x0000113C
	mov r0, #1
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F1EE4:
	ldr r1, _021F2630 ; =UNK04_0220DA78
	add r2, sp, #0x38
	mov r0, r4
	mov r3, #0x1000
	bl MOD04_021FB1F0
	cmp r0, #0
	bne _021F1F30
	ldr r2, _021F2620 ; =UNK04_0220DA80
	mov r0, sl
	mov r1, #1
	bl MOD04_021FAF00
	mov r0, sl
	mov r1, #3
	mov r2, #1
	bl MOD04_021F3500
	ldr ip, _021F2618 ; =0x0000113C
	mov r0, #3
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F1F30:
	ldr r1, _021F2634 ; =UNK04_0220DACC
	add r0, sp, #0x38
	bl strstr
	movs r4, r0
	bne _021F1F74
	ldr r2, _021F2620 ; =UNK04_0220DA80
	mov r0, sl
	mov r1, #1
	bl MOD04_021FAF00
	mov r0, sl
	mov r1, #3
	mov r2, #1
	bl MOD04_021F3500
	ldr ip, _021F2618 ; =0x0000113C
	mov r0, #3
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F1F74:
	mov r1, #0
	add r0, r4, #8
	strb r1, [r4]
	bl strlen
	cmp r0, #0x20
	beq _021F1FBC
	ldr r2, _021F2620 ; =UNK04_0220DA80
	mov r0, sl
	mov r1, #1
	bl MOD04_021FAF00
	mov r0, sl
	mov r1, #3
	mov r2, #1
	bl MOD04_021F3500
	ldr ip, _021F2618 ; =0x0000113C
	mov r0, #3
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F1FBC:
	ldr r0, [r5, #0x10]
	bl MOD04_021DD82C
	mov r0, #0
	str r0, [r5, #0x10]
	add r0, r4, #8
	bl MOD04_021F0208
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x14]
	add r0, r0, #1
	str r0, [r5, #0x14]
	ldr r1, [r6, #0x1ac]
	ldr r0, [r6, #0x1b0]
	cmp r1, #0
	str r1, [sp, #0x20]
	str r0, [sp, #0x24]
	beq _021F2608
	ldr r0, _021F2638 ; =0x0000040C
	bl MOD04_021DD860
	movs r4, r0
	bne _021F2028
	ldr r1, _021F262C ; =UNK04_0220DABC
	mov r0, sl
	bl MOD04_021FAEEC
	ldr ip, _021F2618 ; =0x0000113C
	mov r0, #1
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F2028:
	ldr r2, _021F263C ; =0x00000401
	add r1, sp, #0x38
	add r0, r4, #8
	bl MOD04_021FB3DC
	str r8, [r4]
	str sb, [r4, #4]
	mov r0, #0
	str r0, [sp]
	mov r0, #6
	str r0, [sp, #4]
	add r1, sp, #0x20
	mov r0, sl
	mov r3, r4
	ldmia r1, {r1, r2}
	bl MOD04_021F3454
	cmp r0, #0
	beq _021F2608
	ldr ip, _021F2618 ; =0x0000113C
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F2078:
	mov r0, sl
	mov r1, r8
	bl MOD04_021F8624
	movs r5, r0
	bne _021F20A8
	ldr r1, _021F262C ; =UNK04_0220DABC
	mov r0, sl
	bl MOD04_021FAEEC
	ldr ip, _021F2618 ; =0x0000113C
	mov r0, #1
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F20A8:
	ldr r0, [r5, #8]
	cmp r0, #0
	bne _021F211C
	mov r0, #0x18
	bl MOD04_021DD860
	str r0, [r5, #8]
	ldr r2, [r5, #8]
	cmp r2, #0
	bne _021F20E8
	ldr r1, _021F262C ; =UNK04_0220DABC
	mov r0, sl
	bl MOD04_021FAEEC
	ldr ip, _021F2618 ; =0x0000113C
	mov r0, #1
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F20E8:
	mov r1, #6
	mov r0, #0
_021F20F0:
	strb r0, [r2], #1
	strb r0, [r2], #1
	strb r0, [r2], #1
	strb r0, [r2], #1
	subs r1, r1, #1
	bne _021F20F0
	ldr r1, [r6, #0x430]
	add r0, r1, #1
	str r0, [r6, #0x430]
	ldr r0, [r5, #8]
	str r1, [r0]
_021F211C:
	ldr r1, _021F2630 ; =UNK04_0220DA78
	add r2, sp, #0x38
	mov r0, r4
	mov r3, #0x1000
	ldr r7, [r5, #8]
	bl MOD04_021FB1F0
	cmp r0, #0
	bne _021F216C
	ldr r2, _021F2620 ; =UNK04_0220DA80
	mov r0, sl
	mov r1, #1
	bl MOD04_021FAF00
	mov r0, sl
	mov r1, #3
	mov r2, #1
	bl MOD04_021F3500
	ldr ip, _021F2618 ; =0x0000113C
	mov r0, #3
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F216C:
	ldr r1, _021F2640 ; =UNK04_0220DAD8
	add r0, sp, #0x38
	add r2, sp, #0x28
	mov r3, #0x10
	bl MOD04_021FB1F0
	cmp r0, #0
	bne _021F21B8
	ldr r2, _021F2620 ; =UNK04_0220DA80
	mov r0, sl
	mov r1, #1
	bl MOD04_021FAF00
	mov r0, sl
	mov r1, #3
	mov r2, #1
	bl MOD04_021F3500
	ldr ip, _021F2618 ; =0x0000113C
	mov r0, #3
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F21B8:
	add r0, sp, #0x28
	bl atol
	str r0, [r7, #4]
	ldr r0, [r7, #8]
	bl MOD04_021DD82C
	mov r0, #0
	add r2, sp, #0x1000
	str r0, [r7, #8]
	ldr r1, _021F2644 ; =UNK04_0220DADC
	add r0, sp, #0x38
	add r2, r2, #0x38
	mov r3, #0x100
	bl MOD04_021FB1F0
	cmp r0, #0
	addeq r0, sp, #0x1000
	moveq r1, #0
	addeq r0, r0, #8
	streqb r1, [r0, #0x30]
	add r0, sp, #0x1000
	add r0, r0, #0x38
	bl MOD04_021F0208
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	cmp r0, #0
	bne _021F2238
	ldr r1, _021F262C ; =UNK04_0220DABC
	mov r0, sl
	bl MOD04_021FAEEC
	ldr ip, _021F2618 ; =0x0000113C
	mov r0, #1
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F2238:
	ldr r0, [r7, #0xc]
	bl MOD04_021DD82C
	add r2, sp, #0x1000
	mov r4, #0
	ldr r1, _021F2648 ; =UNK04_0220DAE4
	add r0, sp, #0x38
	add r2, r2, #0x38
	mov r3, #0x100
	str r4, [r7, #0xc]
	bl MOD04_021FB1F0
	cmp r0, #0
	addeq r0, sp, #0x1000
	moveq r1, r4
	addeq r0, r0, #8
	streqb r1, [r0, #0x30]
	add r0, sp, #0x1000
	add r0, r0, #0x38
	bl MOD04_021F0208
	str r0, [r7, #0xc]
	ldr r0, [r7, #0xc]
	cmp r0, #0
	bne _021F22AC
	ldr r1, _021F262C ; =UNK04_0220DABC
	mov r0, sl
	bl MOD04_021FAEEC
	ldr ip, _021F2618 ; =0x0000113C
	mov r0, #1
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F22AC:
	ldr r1, _021F264C ; =UNK04_0220DAEC
	add r0, sp, #0x38
	add r2, sp, #0x28
	mov r3, #0x10
	bl MOD04_021FB1F0
	cmp r0, #0
	moveq r0, #0
	streq r0, [r7, #0x10]
	beq _021F232C
	add r0, sp, #0x28
	bl atol
	mov r5, r0
	add r0, sp, #0x28
	bl atol
	mov r4, r0
	add r0, sp, #0x28
	bl atol
	mov fp, r0
	add r0, sp, #0x28
	bl atol
	mov r1, fp, lsr #0x18
	mov r0, r0, lsr #8
	mov r2, r4, lsl #8
	and r1, r1, #0xff
	and r0, r0, #0xff00
	mov r3, r5, lsl #0x18
	orr r0, r1, r0
	and r2, r2, #0xff0000
	and r1, r3, #0xff000000
	orr r0, r2, r0
	orr r0, r1, r0
	str r0, [r7, #0x10]
_021F232C:
	ldr r1, _021F2650 ; =UNK04_0220DAF4
	add r0, sp, #0x38
	add r2, sp, #0x28
	mov r3, #0x10
	bl MOD04_021FB1F0
	cmp r0, #0
	moveq r0, #0
	streq r0, [r7, #0x14]
	beq _021F2380
	add r0, sp, #0x28
	bl atol
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r1, r0, asr #8
	mov r0, r0, lsl #8
	and r1, r1, #0xff
	and r0, r0, #0xff00
	orr r0, r1, r0
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	str r0, [r7, #0x14]
_021F2380:
	ldr r1, [r6, #0x1b4]
	ldr r0, [r6, #0x1b8]
	cmp r1, #0
	str r1, [sp, #0x18]
	str r0, [sp, #0x1c]
	beq _021F2608
	mov r0, #0xc
	bl MOD04_021DD860
	movs r3, r0
	bne _021F23C4
	ldr r1, _021F262C ; =UNK04_0220DABC
	mov r0, sl
	bl MOD04_021FAEEC
	ldr ip, _021F2618 ; =0x0000113C
	mov r0, #1
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F23C4:
	str r8, [r3]
	ldr r1, [r7]
	mov r0, #0
	str r1, [r3, #8]
	str sb, [r3, #4]
	str r0, [sp]
	mov r0, #5
	str r0, [sp, #4]
	add r1, sp, #0x18
	mov r0, sl
	ldmia r1, {r1, r2}
	bl MOD04_021F3454
	cmp r0, #0
	beq _021F2608
	ldr ip, _021F2618 ; =0x0000113C
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F2408:
	ldr r1, _021F2630 ; =UNK04_0220DA78
	add r2, sp, #0x38
	mov r0, r4
	mov r3, #0x1000
	bl MOD04_021FB1F0
	cmp r0, #0
	bne _021F2454
	ldr r2, _021F2620 ; =UNK04_0220DA80
	mov r0, sl
	mov r1, #1
	bl MOD04_021FAF00
	mov r0, sl
	mov r1, #3
	mov r2, #1
	bl MOD04_021F3500
	ldr ip, _021F2618 ; =0x0000113C
	mov r0, #3
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F2454:
	ldr r1, _021F2650 ; =UNK04_0220DAF4
	add r0, sp, #0x38
	bl strstr
	cmp r0, #0
	bne _021F2498
	ldr r2, _021F2620 ; =UNK04_0220DA80
	mov r0, sl
	mov r1, #1
	bl MOD04_021FAF00
	mov r0, sl
	mov r1, #3
	mov r2, #1
	bl MOD04_021F3500
	ldr ip, _021F2618 ; =0x0000113C
	mov r0, #3
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F2498:
	ldrsb r1, [r0, #3]
	cmp r1, #0
	bne _021F24D4
	ldr r2, _021F2620 ; =UNK04_0220DA80
	mov r0, sl
	mov r1, #1
	bl MOD04_021FAF00
	mov r0, sl
	mov r1, #3
	mov r2, #1
	bl MOD04_021F3500
	ldr ip, _021F2618 ; =0x0000113C
	mov r0, #3
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F24D4:
	add r0, r0, #3
	bl atol
	mov r4, r0
	ldr r1, _021F2654 ; =UNK04_0220DAF8
	add r0, sp, #0x38
	bl strstr
	movs r1, r0
	addeq r0, sp, #0x1000
	moveq r1, #0
	addeq r0, r0, #8
	streqb r1, [r0, #0x30]
	beq _021F2518
	add r0, sp, #0x1000
	add r0, r0, #0x38
	add r1, r1, #3
	mov r2, #0x100
	bl MOD04_021FB3DC
_021F2518:
	ldr r1, [r6, #0x1c4]
	ldr r0, [r6, #0x1c8]
	cmp r1, #0
	str r1, [sp, #0x10]
	str r0, [sp, #0x14]
	beq _021F2608
	mov r0, #0x108
	bl MOD04_021DD860
	movs r5, r0
	bne _021F255C
	ldr r1, _021F262C ; =UNK04_0220DABC
	mov r0, sl
	bl MOD04_021FAEEC
	ldr ip, _021F2618 ; =0x0000113C
	mov r0, #1
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F255C:
	add r1, sp, #0x1000
	str r8, [r5]
	add r1, r1, #0x38
	add r0, r5, #8
	str r4, [r5, #4]
	bl strcpy
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	add r1, sp, #0x10
	mov r0, sl
	mov r3, r5
	ldmia r1, {r1, r2}
	bl MOD04_021F3454
	cmp r0, #0
	beq _021F2608
	ldr ip, _021F2618 ; =0x0000113C
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F25A8:
	ldr r1, _021F2630 ; =UNK04_0220DA78
	add r2, sp, #0x38
	mov r0, r4
	mov r3, #0x1000
	bl MOD04_021FB1F0
	cmp r0, #0
	bne _021F25F4
	ldr r2, _021F2620 ; =UNK04_0220DA80
	mov r0, sl
	mov r1, #1
	bl MOD04_021FAF00
	mov r0, sl
	mov r1, #3
	mov r2, #1
	bl MOD04_021F3500
	ldr ip, _021F2618 ; =0x0000113C
	mov r0, #3
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F25F4:
	ldr r3, _021F2658 ; =UNK04_0220DAFC
	mov r0, sl
	mov r1, r8
	mov r2, #0x67
	bl MOD04_021F1A64
_021F2608:
	mov r0, #0
	ldr ip, _021F2618 ; =0x0000113C
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_021F2618: .word 0x0000113C
_021F261C: .word UNK04_0220DA6C
_021F2620: .word UNK04_0220DA80
_021F2624: .word UNK04_0220DAB0
_021F2628: .word UNK04_0220DAB4
_021F262C: .word UNK04_0220DABC
_021F2630: .word UNK04_0220DA78
_021F2634: .word UNK04_0220DACC
_021F2638: .word 0x0000040C
_021F263C: .word 0x00000401
_021F2640: .word UNK04_0220DAD8
_021F2644: .word UNK04_0220DADC
_021F2648: .word UNK04_0220DAE4
_021F264C: .word UNK04_0220DAEC
_021F2650: .word UNK04_0220DAF4
_021F2654: .word UNK04_0220DAF8
_021F2658: .word UNK04_0220DAFC
	arm_func_end MOD04_021F1C48

	arm_func_start MOD04_021F265C
MOD04_021F265C: ; 0x021F265C
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r4, [r6]
	ldr r2, _021F26F0 ; =UNK04_0220DB00
	mov r5, r1
	add r1, r4, #0x1f4
	bl MOD04_021F2F9C
	ldr r2, _021F26F4 ; =UNK04_0220DA04
	mov r0, r6
	add r1, r4, #0x1f4
	bl MOD04_021F2F9C
	ldr r2, [r4, #0x198]
	mov r0, r6
	add r1, r4, #0x1f4
	bl MOD04_021F2F64
	ldr r2, _021F26F8 ; =UNK04_0220DB0C
	mov r0, r6
	add r1, r4, #0x1f4
	bl MOD04_021F2F9C
	mov r0, r6
	add r1, r4, #0x1f4
	ldr r2, [r5]
	bl MOD04_021F2F64
	mov r0, r6
	add r1, r4, #0x1f4
	ldr r2, _021F26FC ; =UNK04_0220DB1C
	bl MOD04_021F2F9C
	ldr r2, [r5, #0x10]
	mov r0, r6
	add r1, r4, #0x1f4
	bl MOD04_021F2F9C
	mov r0, r6
	add r1, r4, #0x1f4
	ldr r2, _021F2700 ; =UNK04_0220DA20
	bl MOD04_021F2F9C
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_021F26F0: .word UNK04_0220DB00
_021F26F4: .word UNK04_0220DA04
_021F26F8: .word UNK04_0220DB0C
_021F26FC: .word UNK04_0220DB1C
_021F2700: .word UNK04_0220DA20
	arm_func_end MOD04_021F265C

	arm_func_start MOD04_021F2704
MOD04_021F2704: ; 0x021F2704
	stmdb sp!, {r4, lr}
	movs r4, r1
	beq _021F2728
	ldr r0, [r4]
	cmp r0, #0
	beq _021F2728
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _021F2730
_021F2728:
	mov r0, #0
	ldmia sp!, {r4, pc}
_021F2730:
	ldr r0, [r4, #8]
	sub r0, r0, r1
	str r0, [r4, #8]
	ldr r2, [r4, #8]
	cmp r2, #0
	beq _021F2758
	ldr r0, [r4]
	ldr r1, [r4, #0xc]
	add r1, r0, r1
	bl memmove
_021F2758:
	ldr r2, [r4]
	ldr r1, [r4, #8]
	mov r0, #0
	strb r0, [r2, r1]
	str r0, [r4, #0xc]
	ldmia sp!, {r4, pc}
	arm_func_end MOD04_021F2704

	arm_func_start MOD04_021F2770
MOD04_021F2770: ; 0x021F2770
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x14
	mov r5, r2
	mov r0, #0
	mov r6, r1
	str r0, [r5]
	ldr r1, [r6, #8]
	mov r7, r3
	cmp r1, #5
	addlt sp, sp, #0x14
	ldmltia sp!, {r4, r5, r6, r7, pc}
	ldr r0, [r6]
	mov r1, #0xa
	bl strchr
	movs r4, r0
	beq _021F2894
	ldr r1, _021F28A0 ; =UNK04_0220DB24
	sub r0, r4, #5
	mov r2, #5
	bl strncmp
	cmp r0, #0
	addne sp, sp, #0x14
	movne r0, #3
	ldmneia sp!, {r4, r5, r6, r7, pc}
	mov r0, #0
	strb r0, [r4]
	ldr r0, [r6]
	ldr r1, _021F28A4 ; =UNK04_0220DB2C
	add r2, sp, #0
	mov r3, #0x10
	bl MOD04_021FB1F0
	cmp r0, #0
	addeq sp, sp, #0x14
	moveq r0, #3
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	add r0, sp, #0
	bl atol
	str r0, [r7]
	ldr r0, [r6]
	ldr r1, _021F28A8 ; =UNK04_0220DB30
	add r2, sp, #0
	mov r3, #0x10
	bl MOD04_021FB1F0
	cmp r0, #0
	addeq sp, sp, #0x14
	moveq r0, #3
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	add r0, sp, #0
	bl atol
	ldr r2, [r6]
	add r1, r0, #1
	sub r2, r4, r2
	ldr r3, [r6, #8]
	add r2, r1, r2
	cmp r3, r2
	ble _021F288C
	ldrsb r2, [r4, r1]
	cmp r2, #0
	addne sp, sp, #0x14
	movne r0, #3
	ldmneia sp!, {r4, r5, r6, r7, pc}
	add r3, r4, #1
	ldr r2, [sp, #0x28]
	str r3, [r5]
	str r0, [r2]
	ldr r0, [r6]
	sub r0, r4, r0
	add r0, r1, r0
	add r0, r0, #1
	str r0, [r6, #0xc]
	b _021F2894
_021F288C:
	mov r0, #0xa
	strb r0, [r4]
_021F2894:
	mov r0, #0
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_021F28A0: .word UNK04_0220DB24
_021F28A4: .word UNK04_0220DB2C
_021F28A8: .word UNK04_0220DB30
	arm_func_end MOD04_021F2770

	arm_func_start MOD04_021F28AC
MOD04_021F28AC: ; 0x021F28AC
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x1c
	mov sl, r0
	str r2, [sp, #0xc]
	mov sb, r1
	str r3, [sp, #0x10]
	movs r0, r2
	ldr r8, [sp, #0x44]
	bne _021F28E4
	ldr r0, _021F2A0C ; =UNK04_0220DB38
	ldr r1, _021F2A10 ; =UNK04_0220DB50
	ldr r3, _021F2A14 ; =0x000001B9
	mov r2, #0
	bl __msl_assertion_failed
_021F28E4:
	ldr r0, [sp, #0xc]
	mov r7, #0
	ldr fp, [r0, #8]
	ldr r4, [r0, #0xc]
	ldr r5, [r0]
	subs r6, fp, r4
	addeq sp, sp, #0x1c
	moveq r0, r7
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F2908:
	add r1, sp, #0x14
	str r1, [sp]
	add r0, sp, #0x18
	str r0, [sp, #4]
	add r2, r4, r7
	mov r0, sl
	mov r1, sb
	mov r3, r6
	add r2, r5, r2
	str r8, [sp, #8]
	bl MOD04_021F2E68
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, [sp, #0x18]
	cmp r0, #0
	addne r7, r7, r0
	subne r6, r6, r0
	cmp r0, #0
	beq _021F2960
	cmp r6, #0
	bne _021F2908
_021F2960:
	ldr r0, [sp, #0x40]
	cmp r0, #0
	beq _021F298C
	cmp r7, #0
	ble _021F2990
	mov r0, r5
	add r1, r5, r7
	add r2, r6, #1
	bl memmove
	sub fp, fp, r7
	b _021F2990
_021F298C:
	add r4, r4, r7
_021F2990:
	cmp fp, #0
	bge _021F29AC
	ldr r0, _021F2A18 ; =UNK04_0220DB5C
	ldr r1, _021F2A10 ; =UNK04_0220DB50
	ldr r3, _021F2A1C ; =0x000001DE
	mov r2, #0
	bl __msl_assertion_failed
_021F29AC:
	cmp r4, #0
	bge _021F29C8
	ldr r0, _021F2A20 ; =UNK04_0220DB68
	ldr r1, _021F2A10 ; =UNK04_0220DB50
	ldr r3, _021F2A24 ; =0x000001DF
	mov r2, #0
	bl __msl_assertion_failed
_021F29C8:
	cmp r4, fp
	ble _021F29E4
	ldr r0, _021F2A28 ; =UNK04_0220DB74
	ldr r1, _021F2A10 ; =UNK04_0220DB50
	mov r2, #0
	mov r3, #0x1e0
	bl __msl_assertion_failed
_021F29E4:
	ldr r0, [sp, #0xc]
	str fp, [r0, #8]
	str r4, [r0, #0xc]
	ldr r0, [sp, #0x10]
	cmp r0, #0
	ldrne r1, [sp, #0x14]
	strne r1, [r0]
	mov r0, #0
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_021F2A0C: .word UNK04_0220DB38
_021F2A10: .word UNK04_0220DB50
_021F2A14: .word 0x000001B9
_021F2A18: .word UNK04_0220DB5C
_021F2A1C: .word 0x000001DE
_021F2A20: .word UNK04_0220DB68
_021F2A24: .word 0x000001DF
_021F2A28: .word UNK04_0220DB74
	arm_func_end MOD04_021F28AC

	arm_func_start MOD04_021F2A2C
MOD04_021F2A2C: ; 0x021F2A2C
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x14
	mov fp, r0
	ldr r0, [sp, #0x3c]
	mov sl, r1
	mvn r1, #0
	str r2, [sp]
	str r3, [sp, #4]
	cmp sl, r1
	str r0, [sp, #0x3c]
	bne _021F2A6C
	ldr r0, _021F2C28 ; =UNK04_0220DB80
	ldr r1, _021F2C2C ; =UNK04_0220DB50
	mov r2, #0
	mov r3, #0x150
	bl __msl_assertion_failed
_021F2A6C:
	ldr r0, [sp]
	cmp r0, #0
	bne _021F2A8C
	ldr r0, _021F2C30 ; =UNK04_0220DB98
	ldr r1, _021F2C2C ; =UNK04_0220DB50
	ldr r3, _021F2C34 ; =0x00000151
	mov r2, #0
	bl __msl_assertion_failed
_021F2A8C:
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _021F2AAC
	ldr r0, _021F2C38 ; =UNK04_0220DBAC
	ldr r1, _021F2C2C ; =UNK04_0220DB50
	ldr r3, _021F2C3C ; =0x00000152
	mov r2, #0
	bl __msl_assertion_failed
_021F2AAC:
	ldr r0, [sp, #0x38]
	cmp r0, #0
	bne _021F2ACC
	ldr r0, _021F2C40 ; =UNK04_0220DBC0
	ldr r1, _021F2C2C ; =UNK04_0220DB50
	ldr r3, _021F2C44 ; =0x00000153
	mov r2, #0
	bl __msl_assertion_failed
_021F2ACC:
	ldr r0, [sp]
	mov r5, #0
	ldr sb, [r0]
	ldr r8, [r0, #8]
	ldr r7, [r0, #4]
	mov r0, #1
	mov r4, r5
	str r5, [sp, #8]
	str r5, [sp, #0x10]
	str r0, [sp, #0xc]
_021F2AF4:
	add r0, r8, #0x800
	cmp r0, r7
	ble _021F2B30
	mov r7, r0
	add r1, r0, #1
	mov r0, sb
	bl MOD04_021DD844
	movs sb, r0
	bne _021F2B30
	ldr r1, _021F2C48 ; =UNK04_0220DBD4
	mov r0, fp
	bl MOD04_021FAEEC
	add sp, sp, #0x14
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F2B30:
	ldr r3, [sp, #8]
	mov r0, sl
	add r1, sb, r8
	sub r2, r7, r8
	bl MOD04_021EFC78
	mov r6, r0
	mvn r0, #0
	cmp r6, r0
	bne _021F2B98
	mov r0, sl
	bl MOD04_021EFB28
	mvn r1, #5
	cmp r0, r1
	beq _021F2BBC
	mvn r1, #0x19
	cmp r0, r1
	beq _021F2BBC
	mvn r1, #0x4b
	cmp r0, r1
	beq _021F2BBC
	ldr r1, _021F2C4C ; =UNK04_0220DBE4
	mov r0, fp
	bl MOD04_021FAEEC
	add sp, sp, #0x14
	mov r0, #3
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F2B98:
	cmp r6, #0
	addne r8, r8, r6
	addne r5, r5, r6
	bne _021F2BBC
	ldr r1, _021F2C50 ; =UNK04_0220DC10
	ldr r2, [sp, #0x3c]
	mov r0, fp
	ldr r4, [sp, #0xc]
	bl MOD04_021FB3D0
_021F2BBC:
	ldr r0, [sp, #0x10]
	strb r0, [sb, r8]
	mvn r0, #0
	cmp r6, r0
	beq _021F2BE0
	cmp r4, #0
	bne _021F2BE0
	cmp r5, #0x20000
	blt _021F2AF4
_021F2BE0:
	cmp r5, #0
	beq _021F2BFC
	ldr r1, _021F2C54 ; =UNK04_0220DC34
	ldr r2, [sp, #0x3c]
	mov r0, fp
	mov r3, r5
	bl MOD04_021FB3D0
_021F2BFC:
	ldr r0, [sp]
	ldr r1, [sp, #0x38]
	str sb, [r0]
	str r8, [r0, #8]
	str r7, [r0, #4]
	ldr r0, [sp, #4]
	str r5, [r0]
	str r4, [r1]
	mov r0, #0
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_021F2C28: .word UNK04_0220DB80
_021F2C2C: .word UNK04_0220DB50
_021F2C30: .word UNK04_0220DB98
_021F2C34: .word 0x00000151
_021F2C38: .word UNK04_0220DBAC
_021F2C3C: .word 0x00000152
_021F2C40: .word UNK04_0220DBC0
_021F2C44: .word 0x00000153
_021F2C48: .word UNK04_0220DBD4
_021F2C4C: .word UNK04_0220DBE4
_021F2C50: .word UNK04_0220DC10
_021F2C54: .word UNK04_0220DC34
	arm_func_end MOD04_021F2A2C

	arm_func_start MOD04_021F2C58
MOD04_021F2C58: ; 0x021F2C58
	stmdb sp!, {r4, r5, r6, lr}
	mov r4, r2
	mov r6, r0
	mov r5, r1
	mov r0, r4
	bl strlen
	mov r3, r0
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl MOD04_021F2C88
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end MOD04_021F2C58

	arm_func_start MOD04_021F2C88
MOD04_021F2C88: ; 0x021F2C88
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x14
	mov sb, r1
	ldr r1, [sb, #0x28]
	mov sl, r0
	mov r8, r2
	mov r7, r3
	cmp r1, #0
	bne _021F2CC0
	ldr r0, _021F2D80 ; =UNK04_0220DC4C
	ldr r1, _021F2D84 ; =UNK04_0220DB50
	mov r2, #0
	mov r3, #0xfb
	bl __msl_assertion_failed
_021F2CC0:
	cmp r7, #0
	mov r6, #0
	addeq sp, sp, #0x14
	moveq r0, r6
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, [sb, #0x30]
	ldr r0, [sb, #0x34]
	subs r0, r1, r0
	bne _021F2D4C
	ldr r0, [sb, #0x38]
	bl MOD04_021EF06C
	cmp r0, #0
	bne _021F2D4C
	ldr fp, _021F2D88 ; =UNK04_0220DC70
	add r5, sp, #0xc
	add r4, sp, #0x10
_021F2D00:
	str r5, [sp]
	str r4, [sp, #4]
	str fp, [sp, #8]
	ldr r1, [sb, #8]
	mov r0, sl
	mov r3, r7
	add r2, r8, r6
	bl MOD04_021F2E68
	cmp r0, #0
	addne sp, sp, #0x14
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, [sp, #0x10]
	cmp r0, #0
	addne r6, r6, r0
	subne r7, r7, r0
	cmp r0, #0
	beq _021F2D4C
	cmp r7, #0
	bne _021F2D00
_021F2D4C:
	cmp r7, #0
	beq _021F2D74
	mov r0, sl
	mov r3, r7
	add r1, sb, #0x28
	add r2, r8, r6
	bl MOD04_021F2FCC
	cmp r0, #0
	addne sp, sp, #0x14
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F2D74:
	mov r0, #0
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_021F2D80: .word UNK04_0220DC4C
_021F2D84: .word UNK04_0220DB50
_021F2D88: .word UNK04_0220DC70
	arm_func_end MOD04_021F2C88

	arm_func_start MOD04_021F2D8C
MOD04_021F2D8C: ; 0x021F2D8C
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0x14
	mov r4, r1
	ldr r1, [r4, #0x28]
	mov r5, r0
	cmp r1, #0
	bne _021F2DC0
	ldr r0, _021F2E5C ; =UNK04_0220DC4C
	ldr r1, _021F2E60 ; =UNK04_0220DB50
	mov r2, #0
	mov r3, #0xde
	bl __msl_assertion_failed
_021F2DC0:
	ldr r1, [r4, #0x30]
	ldr r0, [r4, #0x34]
	subs r0, r1, r0
	bne _021F2E3C
	ldr r0, [r4, #0x38]
	bl MOD04_021EF06C
	cmp r0, #0
	bne _021F2E3C
	add r0, sp, #0xc
	str r0, [sp]
	add r1, sp, #0x10
	ldr r0, _021F2E64 ; =UNK04_0220DC70
	str r1, [sp, #4]
	str r0, [sp, #8]
	ldr r1, [r4, #8]
	add r2, sp, #0x28
	mov r0, r5
	mov r3, #1
	bl MOD04_021F2E68
	cmp r0, #0
	addne sp, sp, #0x14
	ldmneia sp!, {r4, r5, lr}
	addne sp, sp, #0x10
	bxne lr
	ldr r0, [sp, #0x10]
	cmp r0, #0
	addne sp, sp, #0x14
	movne r0, #0
	ldmneia sp!, {r4, r5, lr}
	addne sp, sp, #0x10
	bxne lr
_021F2E3C:
	ldrsb r2, [sp, #0x28]
	mov r0, r5
	add r1, r4, #0x28
	bl MOD04_021F30D4
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, lr}
	add sp, sp, #0x10
	bx lr
	.align 2, 0
_021F2E5C: .word UNK04_0220DC4C
_021F2E60: .word UNK04_0220DB50
_021F2E64: .word UNK04_0220DC70
	arm_func_end MOD04_021F2D8C

	arm_func_start MOD04_021F2E68
MOD04_021F2E68: ; 0x021F2E68
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r1
	mov r7, r0
	mov r1, r2
	mov r2, r3
	mov r0, r8
	mov r3, #0
	ldr r6, [sp, #0x18]
	ldr r5, [sp, #0x1c]
	ldr r4, [sp, #0x20]
	bl MOD04_021EFC24
	mvn r1, #0
	cmp r0, r1
	bne _021F2F20
	mov r0, r8
	bl MOD04_021EFB28
	mvn r1, #5
	cmp r0, r1
	beq _021F2F10
	mvn r1, #0x19
	cmp r0, r1
	beq _021F2F10
	mvn r1, #0x4b
	cmp r0, r1
	beq _021F2F10
	ldrsb r0, [r4]
	cmp r0, #0x50
	bne _021F2EE8
	ldrsb r0, [r4, #1]
	cmp r0, #0x52
	moveq r0, #3
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
_021F2EE8:
	ldr r2, _021F2F5C ; =UNK04_0220DC74
	mov r0, r7
	mov r1, #5
	bl MOD04_021FAF00
	mov r0, r7
	mov r1, #3
	mov r2, #0
	bl MOD04_021F3500
	mov r0, #3
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_021F2F10:
	mov r0, #0
	str r0, [r5]
	str r0, [r6]
	b _021F2F54
_021F2F20:
	cmp r0, #0
	strne r0, [r5]
	movne r0, #0
	strne r0, [r6]
	bne _021F2F54
	ldr r1, _021F2F60 ; =UNK04_0220DC9C
	mov r0, r7
	mov r2, r4
	bl MOD04_021FB3D0
	mov r0, #0
	str r0, [r5]
	mov r0, #1
	str r0, [r6]
_021F2F54:
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_021F2F5C: .word UNK04_0220DC74
_021F2F60: .word UNK04_0220DC9C
	arm_func_end MOD04_021F2E68

	arm_func_start MOD04_021F2F64
MOD04_021F2F64: ; 0x021F2F64
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0x14
	mov r4, r1
	mov r5, r0
	ldr r1, _021F2F98 ; =UNK04_0220DC48
	add r0, sp, #0
	bl sprintf
	add r2, sp, #0
	mov r0, r5
	mov r1, r4
	bl MOD04_021F2F9C
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_021F2F98: .word UNK04_0220DC48
	arm_func_end MOD04_021F2F64

	arm_func_start MOD04_021F2F9C
MOD04_021F2F9C: ; 0x021F2F9C
	stmdb sp!, {r4, r5, r6, lr}
	mov r4, r2
	mov r6, r0
	mov r5, r1
	mov r0, r4
	bl strlen
	mov r3, r0
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl MOD04_021F2FCC
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end MOD04_021F2F9C

	arm_func_start MOD04_021F2FCC
MOD04_021F2FCC: ; 0x021F2FCC
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	movs r8, r2
	mov sl, r0
	mov sb, r1
	mov r7, r3
	bne _021F2FF8
	ldr r0, _021F30C0 ; =UNK04_0220DCC0
	ldr r1, _021F30C4 ; =UNK04_0220DB50
	mov r2, #0
	mov r3, #0x51
	bl __msl_assertion_failed
_021F2FF8:
	cmp r7, #0
	bge _021F3014
	ldr r0, _021F30C8 ; =UNK04_0220DCD0
	ldr r1, _021F30C4 ; =UNK04_0220DB50
	mov r2, #0
	mov r3, #0x52
	bl __msl_assertion_failed
_021F3014:
	cmp sb, #0
	bne _021F3030
	ldr r0, _021F30CC ; =UNK04_0220DB38
	ldr r1, _021F30C4 ; =UNK04_0220DB50
	mov r2, #0
	mov r3, #0x53
	bl __msl_assertion_failed
_021F3030:
	cmp r8, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	ldr r6, [sb, #8]
	ldr r5, [sb, #4]
	ldr r4, [sb]
	sub r0, r5, r6
	cmp r0, r7
	bge _021F308C
	cmp r7, #0x800
	movlt r0, #0x800
	movge r0, r7
	add r5, r5, r0
	mov r0, r4
	add r1, r5, #1
	bl MOD04_021DD844
	movs r4, r0
	bne _021F308C
	ldr r1, _021F30D0 ; =UNK04_0220DBD4
	mov r0, sl
	bl MOD04_021FAEEC
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_021F308C:
	mov r1, r8
	mov r2, r7
	add r0, r4, r6
	bl memcpy
	add r1, r6, r7
	mov r0, #0
	strb r0, [r4, r1]
	ldr r1, [sb, #8]
	add r1, r1, r7
	str r1, [sb, #8]
	str r5, [sb, #4]
	str r4, [sb]
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_021F30C0: .word UNK04_0220DCC0
_021F30C4: .word UNK04_0220DB50
_021F30C8: .word UNK04_0220DCD0
_021F30CC: .word UNK04_0220DB38
_021F30D0: .word UNK04_0220DBD4
	arm_func_end MOD04_021F2FCC

	arm_func_start MOD04_021F30D4
MOD04_021F30D4: ; 0x021F30D4
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	movs r4, r1
	mov r8, r0
	mov r7, r2
	bne _021F30FC
	ldr r0, _021F3164 ; =UNK04_0220DB38
	ldr r1, _021F3168 ; =UNK04_0220DB50
	mov r2, #0
	mov r3, #0x25
	bl __msl_assertion_failed
_021F30FC:
	ldr r6, [r4, #8]
	ldr r5, [r4, #4]
	ldr r0, [r4]
	cmp r5, r6
	bne _021F3138
	add r5, r5, #0x800
	add r1, r5, #1
	bl MOD04_021DD844
	cmp r0, #0
	bne _021F3138
	ldr r1, _021F316C ; =UNK04_0220DBD4
	mov r0, r8
	bl MOD04_021FAEEC
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_021F3138:
	strb r7, [r0, r6]
	add r1, r6, #1
	mov r2, #0
	strb r2, [r0, r1]
	ldr r1, [r4, #8]
	add r1, r1, #1
	str r1, [r4, #8]
	str r5, [r4, #4]
	str r0, [r4]
	mov r0, r2
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_021F3164: .word UNK04_0220DB38
_021F3168: .word UNK04_0220DB50
_021F316C: .word UNK04_0220DBD4
	arm_func_end MOD04_021F30D4

	arm_func_start MOD04_021F3170
MOD04_021F3170: ; 0x021F3170
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	mov sl, r0
	movs sb, r1
	ldr r8, [sl]
	beq _021F3214
	ldr r7, [r8, #0x438]
	ldr r6, [r8, #0x43c]
	mov r5, #0
	str r5, [r8, #0x438]
	mov r1, r7
	str r5, [r8, #0x43c]
	cmp r7, #0
	beq _021F31F0
_021F31A4:
	ldr r0, [r1, #0x10]
	ldr r4, [r1, #0x14]
	cmp r0, sb
	beq _021F31C0
	ldr r0, [r1, #0xc]
	cmp r0, #1
	bne _021F31E0
_021F31C0:
	mov r0, sl
	cmp r5, #0
	strne r4, [r5, #0x14]
	moveq r7, r4
	cmp r6, r1
	moveq r6, r5
	bl MOD04_021F3260
	b _021F31E4
_021F31E0:
	mov r5, r1
_021F31E4:
	mov r1, r4
	cmp r4, #0
	bne _021F31A4
_021F31F0:
	ldr r0, [r8, #0x438]
	cmp r0, #0
	ldrne r0, [r8, #0x43c]
	strne r7, [r0, #0x14]
	strne r6, [r8, #0x43c]
	streq r7, [r8, #0x438]
	streq r6, [r8, #0x43c]
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_021F3214:
	ldr r1, [r8, #0x438]
	cmp r1, #0
	beq _021F3258
	mov r4, #0
_021F3224:
	str r4, [r8, #0x438]
	str r4, [r8, #0x43c]
	cmp r1, #0
	beq _021F324C
_021F3234:
	ldr r5, [r1, #0x14]
	mov r0, sl
	bl MOD04_021F3260
	mov r1, r5
	cmp r5, #0
	bne _021F3234
_021F324C:
	ldr r1, [r8, #0x438]
	cmp r1, #0
	bne _021F3224
_021F3258:
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	arm_func_end MOD04_021F3170

	arm_func_start MOD04_021F3260
MOD04_021F3260: ; 0x021F3260
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, r1
	ldr r1, [r7]
	mov r4, r0
	cmp r1, #0
	bne _021F328C
	ldr r0, _021F3448 ; =UNK04_0220DCE0
	ldr r1, _021F344C ; =UNK04_0220DD00
	mov r2, #0
	mov r3, #0x6e
	bl __msl_assertion_failed
_021F328C:
	ldr r0, [r7, #8]
	cmp r0, #0
	bne _021F32AC
	ldr r0, _021F3450 ; =UNK04_0220DD10
	ldr r1, _021F344C ; =UNK04_0220DD00
	mov r2, #0
	mov r3, #0x6f
	bl __msl_assertion_failed
_021F32AC:
	ldr r1, [r7, #8]
	ldr r2, [r7, #4]
	ldr r3, [r7]
	mov r0, r4
	blx r3
	ldr r0, [r7, #0xc]
	cmp r0, #2
	bne _021F32E8
	ldr r0, [r7, #8]
	ldr r0, [r0, #8]
	bl MOD04_021DD82C
	ldr r0, [r7, #8]
	mov r1, #0
	str r1, [r0, #8]
	b _021F342C
_021F32E8:
	cmp r0, #3
	bne _021F3368
	ldr r5, [r7, #8]
	mov r6, #0
	ldr r0, [r5, #0x38]
	cmp r0, #0
	ble _021F3344
	mov r4, r6
	mov r8, r6
_021F330C:
	ldr r0, [r5, #0x3c]
	ldr r0, [r0, r6, lsl #2]
	bl MOD04_021DD82C
	ldr r0, [r5, #0x3c]
	str r4, [r0, r6, lsl #2]
	ldr r0, [r5, #0x40]
	ldr r0, [r0, r6, lsl #2]
	bl MOD04_021DD82C
	ldr r0, [r5, #0x40]
	str r8, [r0, r6, lsl #2]
	ldr r0, [r5, #0x38]
	add r6, r6, #1
	cmp r6, r0
	blt _021F330C
_021F3344:
	ldr r0, [r5, #0x3c]
	bl MOD04_021DD82C
	mov r0, #0
	str r0, [r5, #0x3c]
	ldr r0, [r5, #0x40]
	bl MOD04_021DD82C
	mov r0, #0
	str r0, [r5, #0x40]
	b _021F342C
_021F3368:
	cmp r0, #4
	bne _021F3388
	ldr r4, [r7, #8]
	ldr r0, [r4, #0xc]
	bl MOD04_021DD82C
	mov r0, #0
	str r0, [r4, #0xc]
	b _021F342C
_021F3388:
	cmp r0, #7
	bne _021F33B0
	ldr r4, [r7, #8]
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _021F342C
	bl MOD04_021DD82C
	mov r0, #0
	str r0, [r4, #0x10]
	b _021F342C
_021F33B0:
	cmp r0, #8
	bne _021F33D8
	ldr r4, [r7, #8]
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _021F342C
	bl MOD04_021DD82C
	mov r0, #0
	str r0, [r4, #8]
	b _021F342C
_021F33D8:
	cmp r0, #9
	bne _021F342C
	ldr r4, [r7, #8]
	mov r5, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	ble _021F341C
	mov r6, r5
_021F33F8:
	ldr r0, [r4, #8]
	ldr r0, [r0, r5, lsl #2]
	bl MOD04_021DD82C
	ldr r0, [r4, #8]
	str r6, [r0, r5, lsl #2]
	ldr r0, [r4, #4]
	add r5, r5, #1
	cmp r5, r0
	blt _021F33F8
_021F341C:
	ldr r0, [r4, #8]
	bl MOD04_021DD82C
	mov r0, #0
	str r0, [r4, #8]
_021F342C:
	ldr r0, [r7, #8]
	bl MOD04_021DD82C
	mov r1, #0
	mov r0, r7
	str r1, [r7, #8]
	bl MOD04_021DD82C
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_021F3448: .word UNK04_0220DCE0
_021F344C: .word UNK04_0220DD00
_021F3450: .word UNK04_0220DD10
	arm_func_end MOD04_021F3260

	arm_func_start MOD04_021F3454
MOD04_021F3454: ; 0x021F3454
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r0, #0x18
	mov r5, r3
	ldr r4, [r6]
	bl MOD04_021DD860
	cmp r0, #0
	bne _021F3494
	ldr r1, _021F34FC ; =UNK04_0220DD24
	mov r0, r6
	bl MOD04_021FAEEC
	mov r0, #1
	ldmia sp!, {r4, r5, r6, lr}
	add sp, sp, #0x10
	bx lr
_021F3494:
	ldr r3, [sp, #0x14]
	ldr r2, [sp, #0x18]
	ldr r1, [sp, #0x20]
	str r3, [r0]
	str r2, [r0, #4]
	str r5, [r0, #8]
	cmp r1, #0
	ldrne r1, [r1, #0x18]
	ldr r2, [sp, #0x24]
	strne r1, [r0, #0x10]
	moveq r1, #0
	streq r1, [r0, #0x10]
	mov r1, #0
	str r2, [r0, #0xc]
	str r1, [r0, #0x14]
	ldr r1, [r4, #0x438]
	cmp r1, #0
	streq r0, [r4, #0x438]
	ldr r1, [r4, #0x43c]
	cmp r1, #0
	strne r0, [r1, #0x14]
	str r0, [r4, #0x43c]
	mov r0, #0
	ldmia sp!, {r4, r5, r6, lr}
	add sp, sp, #0x10
	bx lr
	.align 2, 0
_021F34FC: .word UNK04_0220DD24
	arm_func_end MOD04_021F3454

	arm_func_start MOD04_021F3500
MOD04_021F3500: ; 0x021F3500
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x14
	mov r4, r0
	ldr r5, [r4]
	mov r7, r1
	mov r6, r2
	cmp r5, #0
	bne _021F3534
	ldr r0, _021F35E4 ; =UNK04_0220DD34
	ldr r1, _021F35E8 ; =UNK04_0220DD00
	mov r2, #0
	mov r3, #0x23
	bl __msl_assertion_failed
_021F3534:
	cmp r7, #0
	bne _021F3550
	ldr r0, _021F35EC ; =UNK04_0220DD48
	ldr r1, _021F35E8 ; =UNK04_0220DD00
	mov r2, #0
	mov r3, #0x24
	bl __msl_assertion_failed
_021F3550:
	cmp r6, #1
	beq _021F3574
	cmp r6, #0
	beq _021F3574
	ldr r0, _021F35F0 ; =UNK04_0220DD60
	ldr r1, _021F35E8 ; =UNK04_0220DD00
	mov r2, #0
	mov r3, #0x25
	bl __msl_assertion_failed
_021F3574:
	cmp r6, #1
	moveq r0, #1
	streq r0, [r5, #0x41c]
	ldr r1, [r5, #0x1a4]
	ldr r0, [r5, #0x1a8]
	cmp r1, #0
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	addeq sp, sp, #0x14
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	mov r0, #0x10
	bl MOD04_021DD860
	movs r3, r0
	strne r7, [r3]
	strne r6, [r3, #0xc]
	ldrne r0, [r5, #0x418]
	add r1, sp, #8
	strne r0, [r3, #4]
	strne r5, [r3, #8]
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, r4
	ldmia r1, {r1, r2}
	bl MOD04_021F3454
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_021F35E4: .word UNK04_0220DD34
_021F35E8: .word UNK04_0220DD00
_021F35EC: .word UNK04_0220DD48
_021F35F0: .word UNK04_0220DD60
	arm_func_end MOD04_021F3500

	arm_func_start MOD04_021F35F4
MOD04_021F35F4: ; 0x021F35F4
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x10
	mov r5, r0
	ldr r4, [r5]
	ldr r2, [r4, #0x1d8]
	cmp r2, #4
	addeq sp, sp, #0x10
	ldmeqia sp!, {r4, r5, r6, pc}
	cmp r2, #0
	beq _021F36E0
	cmp r1, #0
	beq _021F3658
	cmp r2, #3
	bne _021F3658
	ldr r2, _021F37A8 ; =UNK04_0220DDD0
	add r1, r4, #0x1f4
	bl MOD04_021F2F9C
	ldr r2, [r4, #0x198]
	mov r0, r5
	add r1, r4, #0x1f4
	bl MOD04_021F2F64
	ldr r2, _021F37AC ; =UNK04_0220DDE4
	mov r0, r5
	add r1, r4, #0x1f4
	bl MOD04_021F2F9C
_021F3658:
	mov r1, #1
	ldr r0, _021F37B0 ; =UNK04_0220DDEC
	str r1, [sp]
	str r0, [sp, #4]
	ldr r1, [r4, #0x1d4]
	add r3, sp, #8
	mov r0, r5
	add r2, r4, #0x1f4
	bl MOD04_021F28AC
	ldr r0, [r4, #0x1d4]
	mvn r1, #0
	cmp r0, r1
	beq _021F36A4
	mov r1, #2
	bl MOD04_021EFD80
	ldr r0, [r4, #0x1d4]
	bl MOD04_021EFD9C
	mvn r0, #0
	str r0, [r4, #0x1d4]
_021F36A4:
	ldr r0, [r4, #0x204]
	mvn r1, #0
	cmp r0, r1
	beq _021F36CC
	mov r1, #2
	bl MOD04_021EFD80
	ldr r0, [r4, #0x204]
	bl MOD04_021EFD9C
	mvn r0, #0
	str r0, [r4, #0x204]
_021F36CC:
	mov r0, #4
	str r0, [r4, #0x1d8]
	mov r0, #0
	str r0, [r4, #0x19c]
	str r0, [r4, #0x1a0]
_021F36E0:
	ldr r0, [r4, #0x1dc]
	bl MOD04_021DD82C
	mov r0, #0
	str r0, [r4, #0x1dc]
	ldr r0, [r4, #0x1ec]
	bl MOD04_021DD82C
	mov r0, #0
	str r0, [r4, #0x1ec]
	ldr r0, [r4, #0x1f4]
	bl MOD04_021DD82C
	mov r0, #0
	str r0, [r4, #0x1f4]
	ldr r0, [r4, #0x440]
	bl MOD04_021DD82C
	mov r0, #0
	str r0, [r4, #0x440]
	ldr r0, [r4, #0x450]
	bl MOD04_021DD82C
	mov r0, #0
	str r0, [r4, #0x450]
	ldr r1, [r4, #0x424]
	cmp r1, #0
	beq _021F3750
_021F373C:
	mov r0, r5
	bl MOD04_021F6C84
	ldr r1, [r4, #0x424]
	cmp r1, #0
	bne _021F373C
_021F3750:
	mov r0, #0
	str r0, [r4, #0x424]
	ldr r6, [r4, #0x434]
	cmp r6, #0
	beq _021F377C
_021F3764:
	mov r1, r6
	ldr r6, [r6, #0x3c]
	mov r0, r5
	bl MOD04_021F79E0
	cmp r6, #0
	bne _021F3764
_021F377C:
	mov r6, #0
	str r6, [r4, #0x434]
	ldr r4, _021F37B4 ; =MOD04_021F37B8
_021F3788:
	mov r0, r5
	mov r1, r4
	mov r2, r6
	bl MOD04_021F848C
	cmp r0, #0
	beq _021F3788
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_021F37A8: .word UNK04_0220DDD0
_021F37AC: .word UNK04_0220DDE4
_021F37B0: .word UNK04_0220DDEC
_021F37B4: .word MOD04_021F37B8
	arm_func_end MOD04_021F35F4

	arm_func_start MOD04_021F37B8
MOD04_021F37B8: ; 0x021F37B8
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r1
	ldr r1, [r5, #8]
	mov r6, r0
	cmp r1, #0
	ldr r4, [r6]
	beq _021F381C
	ldr r0, [r4, #0x104]
	cmp r0, #0
	bne _021F381C
	ldr r0, [r1, #8]
	bl MOD04_021DD82C
	ldr r0, [r5, #8]
	mov r1, #0
	str r1, [r0, #8]
	ldr r0, [r5, #8]
	ldr r0, [r0, #0xc]
	bl MOD04_021DD82C
	ldr r0, [r5, #8]
	mov r1, #0
	str r1, [r0, #0xc]
	ldr r0, [r5, #8]
	bl MOD04_021DD82C
	mov r0, #0
	str r0, [r5, #8]
_021F381C:
	ldr r0, [r5, #0x10]
	bl MOD04_021DD82C
	mov r0, #0
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x18]
	bl MOD04_021DD82C
	mov r0, #0
	str r0, [r5, #0x18]
	str r0, [r5, #0x14]
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _021F3864
	ldr r0, [r4, #0x104]
	cmp r0, #1
	bne _021F3878
	ldr r0, [r5, #8]
	cmp r0, #0
	bne _021F3878
_021F3864:
	mov r0, r6
	mov r1, r5
	bl MOD04_021F85A0
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
_021F3878:
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end MOD04_021F37B8

	arm_func_start MOD04_021F3880
MOD04_021F3880: ; 0x021F3880
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	ldr r4, [r5]
	add r2, sp, #0
	ldr r1, [r4, #0x1d4]
	bl MOD04_021FB0FC
	cmp r0, #0
	addne sp, sp, #4
	ldmneia sp!, {r4, r5, pc}
	ldr r0, [sp]
	cmp r0, #4
	bne _021F38E0
	ldr r1, _021F3920 ; =0x00000107
	ldr r2, _021F3924 ; =UNK04_0220DDF0
	mov r0, r5
	bl MOD04_021FAF00
	mov r0, r5
	mov r1, #4
	mov r2, #1
	bl MOD04_021F3500
	add sp, sp, #4
	mov r0, #4
	ldmia sp!, {r4, r5, pc}
_021F38E0:
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r4, r5, pc}
	cmp r0, #3
	beq _021F390C
	ldr r0, _021F3928 ; =UNK04_0220DE18
	ldr r1, _021F392C ; =UNK04_0220DE30
	ldr r3, _021F3930 ; =0x000002EF
	mov r2, #0
	bl __msl_assertion_failed
_021F390C:
	mov r0, #2
	str r0, [r4, #0x1d8]
	mov r0, #0
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_021F3920: .word 0x00000107
_021F3924: .word UNK04_0220DDF0
_021F3928: .word UNK04_0220DE18
_021F392C: .word UNK04_0220DE30
_021F3930: .word 0x000002EF
	arm_func_end MOD04_021F3880

	arm_func_start MOD04_021F3934
MOD04_021F3934: ; 0x021F3934
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x2a0
	mov r6, r2
	mov r8, r0
	mov r7, r1
	mov r1, r6
	mov r2, #0
	ldr r5, [r8]
	bl MOD04_021FB2F8
	cmp r0, #0
	beq _021F3A34
	ldr r2, [r5, #0x418]
	ldr r0, _021F3FC0 ; =0x00000106
	cmp r2, r0
	bne _021F3994
	ldr r1, [r5, #0x1a0]
	cmp r1, #0
	beq _021F3994
	mov r0, r8
	bl MOD04_021F85B4
	mov r0, #0
	str r0, [r5, #0x19c]
	str r0, [r5, #0x1a0]
	b _021F39C8
_021F3994:
	ldr r0, _021F3FC4 ; =0x00000201
	cmp r2, r0
	bne _021F39C8
	ldr r1, _021F3FC8 ; =UNK04_0220DE40
	add r2, sp, #0x4e
	mov r0, r6
	mov r3, #0x200
	bl MOD04_021FB1F0
	cmp r0, #0
	beq _021F39C8
	add r0, sp, #0x4e
	bl atol
	str r0, [r5, #0x1a0]
_021F39C8:
	ldr r1, _021F3FCC ; =UNK04_0220DE48
	mov r0, r6
	bl strstr
	cmp r0, #0
	beq _021F3A08
	ldr r1, [r5, #0x418]
	mov r0, r8
	mov r2, r5
	bl MOD04_021FAF00
	mov r0, r8
	mov r1, #4
	mov r2, #1
	bl MOD04_021F3500
	add sp, sp, #0x2a0
	mov r0, #4
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_021F3A08:
	ldr r1, [r5, #0x418]
	mov r0, r8
	mov r2, r5
	bl MOD04_021FAF00
	mov r0, r8
	mov r1, #4
	mov r2, #0
	bl MOD04_021F3500
	add sp, sp, #0x2a0
	mov r0, #4
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_021F3A34:
	ldr r0, [r7, #0x14]
	ldr r4, [r7, #4]
	cmp r0, #1
	beq _021F3A58
	cmp r0, #2
	beq _021F3C48
	cmp r0, #3
	beq _021F3B38
	b _021F3FB4
_021F3A58:
	ldr r1, _021F3FD0 ; =UNK04_0220DE50
	mov r0, r6
	mov r2, #5
	bl strncmp
	cmp r0, #0
	beq _021F3A9C
	ldr r2, _021F3FD4 ; =UNK04_0220DE58
	mov r0, r8
	mov r1, #1
	bl MOD04_021FAF00
	mov r0, r8
	mov r1, #3
	mov r2, #1
	bl MOD04_021F3500
	add sp, sp, #0x2a0
	mov r0, #3
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_021F3A9C:
	ldr r1, _021F3FD8 ; =UNK04_0220DE88
	mov r0, r6
	mov r2, r4
	mov r3, #0x80
	bl MOD04_021FB1F0
	cmp r0, #0
	bne _021F3AE4
	ldr r2, _021F3FD4 ; =UNK04_0220DE58
	mov r0, r8
	mov r1, #1
	bl MOD04_021FAF00
	mov r0, r8
	mov r1, #3
	mov r2, #1
	bl MOD04_021F3500
	add sp, sp, #0x2a0
	mov r0, #3
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_021F3AE4:
	ldr r0, [r4, #0x304]
	cmp r0, #0
	beq _021F3B14
	mov r0, r8
	mov r1, r4
	bl MOD04_021F401C
	cmp r0, #0
	addne sp, sp, #0x2a0
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, #3
	str r0, [r7, #0x14]
	b _021F3FB4
_021F3B14:
	mov r0, r8
	mov r1, r4
	bl MOD04_021F42B8
	cmp r0, #0
	addne sp, sp, #0x2a0
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, #2
	str r0, [r7, #0x14]
	b _021F3FB4
_021F3B38:
	ldr r1, _021F3FDC ; =UNK04_0220DE94
	mov r0, r6
	mov r2, #5
	bl strncmp
	cmp r0, #0
	beq _021F3B7C
	ldr r2, _021F3FD4 ; =UNK04_0220DE58
	mov r0, r8
	mov r1, #1
	bl MOD04_021FAF00
	mov r0, r8
	mov r1, #3
	mov r2, #1
	bl MOD04_021F3500
	add sp, sp, #0x2a0
	mov r0, #3
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_021F3B7C:
	ldr r1, _021F3FE0 ; =UNK04_0220DE9C
	add r2, sp, #0x4e
	mov r0, r6
	mov r3, #0x200
	bl MOD04_021FB1F0
	cmp r0, #0
	bne _021F3BC4
	ldr r2, _021F3FE4 ; =UNK04_0220DEA8
	mov r0, r8
	mov r1, #1
	bl MOD04_021FAF00
	mov r0, r8
	mov r1, #3
	mov r2, #1
	bl MOD04_021F3500
	add sp, sp, #0x2a0
	mov r0, #3
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_021F3BC4:
	add r0, sp, #0x4e
	bl atol
	str r0, [r5, #0x19c]
	ldr r1, _021F3FE8 ; =UNK04_0220DED8
	add r2, sp, #0x4e
	mov r0, r6
	mov r3, #0x200
	bl MOD04_021FB1F0
	cmp r0, #0
	bne _021F3C18
	ldr r2, _021F3FE4 ; =UNK04_0220DEA8
	mov r0, r8
	mov r1, #1
	bl MOD04_021FAF00
	mov r0, r8
	mov r1, #3
	mov r2, #1
	bl MOD04_021F3500
	add sp, sp, #0x2a0
	mov r0, #3
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_021F3C18:
	add r0, sp, #0x4e
	bl atol
	str r0, [r5, #0x1a0]
	mov r0, r8
	mov r1, r4
	bl MOD04_021F42B8
	cmp r0, #0
	addne sp, sp, #0x2a0
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, #2
	str r0, [r7, #0x14]
	b _021F3FB4
_021F3C48:
	ldr r1, _021F3FEC ; =UNK04_0220DEE4
	mov r0, r6
	mov r2, #5
	bl strncmp
	cmp r0, #0
	beq _021F3C8C
	ldr r2, _021F3FD4 ; =UNK04_0220DE58
	mov r0, r8
	mov r1, #1
	bl MOD04_021FAF00
	mov r0, r8
	mov r1, #3
	mov r2, #1
	bl MOD04_021F3500
	add sp, sp, #0x2a0
	mov r0, #3
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_021F3C8C:
	ldr r1, _021F3FF0 ; =UNK04_0220DEEC
	add r2, sp, #0x4e
	mov r0, r6
	mov r3, #0x200
	bl MOD04_021FB1F0
	cmp r0, #0
	bne _021F3CD4
	ldr r2, _021F3FE4 ; =UNK04_0220DEA8
	mov r0, r8
	mov r1, #1
	bl MOD04_021FAF00
	mov r0, r8
	mov r1, #3
	mov r2, #1
	bl MOD04_021F3500
	add sp, sp, #0x2a0
	mov r0, #3
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_021F3CD4:
	add r0, sp, #0x4e
	bl atol
	str r0, [r5, #0x198]
	ldr r1, _021F3FE0 ; =UNK04_0220DE9C
	add r2, sp, #0x4e
	mov r0, r6
	mov r3, #0x200
	bl MOD04_021FB1F0
	cmp r0, #0
	bne _021F3D28
	ldr r2, _021F3FE4 ; =UNK04_0220DEA8
	mov r0, r8
	mov r1, #1
	bl MOD04_021FAF00
	mov r0, r8
	mov r1, #3
	mov r2, #1
	bl MOD04_021F3500
	add sp, sp, #0x2a0
	mov r0, #3
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_021F3D28:
	add r0, sp, #0x4e
	bl atol
	str r0, [r5, #0x19c]
	ldr r1, _021F3FE8 ; =UNK04_0220DED8
	add r2, sp, #0x4e
	mov r0, r6
	mov r3, #0x200
	bl MOD04_021FB1F0
	cmp r0, #0
	bne _021F3D7C
	ldr r2, _021F3FE4 ; =UNK04_0220DEA8
	mov r0, r8
	mov r1, #1
	bl MOD04_021FAF00
	mov r0, r8
	mov r1, #3
	mov r2, #1
	bl MOD04_021F3500
	add sp, sp, #0x2a0
	mov r0, #3
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_021F3D7C:
	add r0, sp, #0x4e
	bl atol
	str r0, [r5, #0x1a0]
	ldr r1, _021F3FF4 ; =UNK04_0220DEF8
	add r2, sp, #0x39
	mov r0, r6
	mov r3, #0x15
	bl MOD04_021FB1F0
	ldr r2, _021F3FF8 ; =0x00000474
	cmp r0, #0
	moveq r0, #0
	streqb r0, [sp, #0x39]
	ldr r1, _021F3FFC ; =UNK04_0220DF08
	mov r0, r6
	add r2, r5, r2
	mov r3, #0x19
	bl MOD04_021FB1F0
	cmp r0, #0
	moveq r0, #0
	streqb r0, [r5, #0x474]
	ldrsb r0, [r4, #0xc2]
	cmp r0, #0
	addne r0, r4, #0xc2
	bne _021F3E14
	add r0, r5, #0x100
	ldrsb r0, [r0, #0x2f]
	cmp r0, #0
	ldrne r0, _021F4000 ; =0x0000012F
	addne r0, r5, r0
	bne _021F3E14
	add r0, sp, #0x200
	ldr r1, _021F4004 ; =UNK04_0220DF10
	add r0, r0, #0x4e
	add r2, r5, #0x110
	add r3, r5, #0x144
	bl sprintf
	add r0, sp, #0x200
	add r0, r0, #0x4e
_021F3E14:
	str r0, [sp]
	str r4, [sp, #4]
	add r2, r4, #0x80
	str r2, [sp, #8]
	add r2, r4, #0xa1
	ldr r1, _021F4008 ; =UNK04_0220DF18
	ldr r3, _021F400C ; =UNK04_0220DF28
	add r0, sp, #0x4e
	str r2, [sp, #0xc]
	bl sprintf
	add r0, sp, #0x4e
	bl strlen
	mov r1, r0
	add r0, sp, #0x4e
	add r2, sp, #0x18
	bl MOD04_021EF794
	ldr r1, _021F4010 ; =UNK04_0220DF5C
	mov r0, r6
	add r2, sp, #0x4e
	mov r3, #0x200
	bl MOD04_021FB1F0
	cmp r0, #0
	bne _021F3E9C
	ldr r2, _021F3FE4 ; =UNK04_0220DEA8
	mov r0, r8
	mov r1, #1
	bl MOD04_021FAF00
	mov r0, r8
	mov r1, #3
	mov r2, #1
	bl MOD04_021F3500
	add sp, sp, #0x2a0
	mov r0, #3
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_021F3E9C:
	add r0, sp, #0x18
	add r1, sp, #0x4e
	mov r2, #0x20
	bl memcmp
	cmp r0, #0
	beq _021F3EE0
	ldr r2, _021F4014 ; =UNK04_0220DF64
	mov r0, r8
	mov r1, #0x108
	bl MOD04_021FAF00
	mov r0, r8
	mov r1, #3
	mov r2, #1
	bl MOD04_021F3500
	add sp, sp, #0x2a0
	mov r0, #3
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_021F3EE0:
	ldr r0, [r5, #0x100]
	cmp r0, #0
	beq _021F3F08
	ldr r1, [r5, #0x1a0]
	mov r0, r8
	bl MOD04_021F8624
	ldr r1, [r5, #0x1a0]
	str r1, [r0]
	ldr r1, [r5, #0x19c]
	str r1, [r0, #4]
_021F3F08:
	mov r0, #3
	str r0, [r5, #0x1d8]
	ldr r1, [r7, #0xc]
	ldr r0, [r7, #0x10]
	cmp r1, #0
	str r1, [sp, #0x10]
	str r0, [sp, #0x14]
	beq _021F3FA8
	mov r0, #0x20
	bl MOD04_021DD860
	movs r4, r0
	bne _021F3F50
	ldr r1, _021F4018 ; =UNK04_0220DF84
	mov r0, r8
	bl MOD04_021FAEEC
	add sp, sp, #0x2a0
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_021F3F50:
	mov r1, #0
	mov r2, #0x20
	bl memset
	ldr r1, [r5, #0x1a0]
	mov r0, #0
	str r1, [r4, #4]
	str r0, [r4]
	add r1, sp, #0x39
	add r0, r4, #8
	mov r2, #0x15
	bl MOD04_021FB3DC
	str r7, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r1, sp, #0x10
	mov r0, r8
	mov r3, r4
	ldmia r1, {r1, r2}
	bl MOD04_021F3454
	cmp r0, #0
	addne sp, sp, #0x2a0
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
_021F3FA8:
	mov r0, r8
	mov r1, r7
	bl MOD04_021F6C84
_021F3FB4:
	mov r0, #0
	add sp, sp, #0x2a0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_021F3FC0: .word 0x00000106
_021F3FC4: .word 0x00000201
_021F3FC8: .word UNK04_0220DE40
_021F3FCC: .word UNK04_0220DE48
_021F3FD0: .word UNK04_0220DE50
_021F3FD4: .word UNK04_0220DE58
_021F3FD8: .word UNK04_0220DE88
_021F3FDC: .word UNK04_0220DE94
_021F3FE0: .word UNK04_0220DE9C
_021F3FE4: .word UNK04_0220DEA8
_021F3FE8: .word UNK04_0220DED8
_021F3FEC: .word UNK04_0220DEE4
_021F3FF0: .word UNK04_0220DEEC
_021F3FF4: .word UNK04_0220DEF8
_021F3FF8: .word 0x00000474
_021F3FFC: .word UNK04_0220DF08
_021F4000: .word 0x0000012F
_021F4004: .word UNK04_0220DF10
_021F4008: .word UNK04_0220DF18
_021F400C: .word UNK04_0220DF28
_021F4010: .word UNK04_0220DF5C
_021F4014: .word UNK04_0220DF64
_021F4018: .word UNK04_0220DF84
	arm_func_end MOD04_021F3934

	arm_func_start MOD04_021F401C
MOD04_021F401C: ; 0x021F401C
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xec
	mov fp, r0
	ldr r4, [fp]
	ldr r0, _021F4278 ; =0x00000177
	mov r5, r1
	add r0, r4, r0
	bl strlen
	mov sb, r0
	ldr r0, _021F427C ; =0x79707367
	bl MOD04_021EFA2C
	cmp sb, #0
	mov sl, #0
	bls _021F4090
	add r8, sp, #0
	mov r7, sl
	mov r6, #0xff
_021F4060:
	mov r0, r7
	mov r1, r6
	bl MOD04_021EF9FC
	add r1, r4, sl
	add r1, r1, #0x100
	add sl, sl, #1
	ldrsb r1, [r1, #0x77]
	mov r0, r0, lsl #0x18
	cmp sl, sb
	eor r0, r1, r0, asr #24
	strb r0, [r8], #1
	blo _021F4060
_021F4090:
	add r0, sp, #0
	mov r6, #0
	add r1, sp, #0x1f
	mov r2, sb
	mov r3, #1
	strb r6, [r0, sl]
	bl MOD04_021EF820
	ldr r2, _021F4280 ; =UNK04_0220DF94
	mov r0, fp
	add r1, r4, #0x1f4
	bl MOD04_021F2F9C
	ldr r2, _021F4284 ; =UNK04_0220DFA0
	mov r0, fp
	add r1, r4, #0x1f4
	bl MOD04_021F2F9C
	mov r0, fp
	add r1, r4, #0x1f4
	add r2, r4, #0x144
	bl MOD04_021F2F9C
	ldr r2, _021F4288 ; =UNK04_0220DFA8
	mov r0, fp
	add r1, r4, #0x1f4
	bl MOD04_021F2F9C
	mov r0, fp
	add r1, r4, #0x1f4
	add r2, r4, #0x110
	bl MOD04_021F2F9C
	ldr r2, _021F428C ; =UNK04_0220DFB0
	mov r0, fp
	add r1, r4, #0x1f4
	bl MOD04_021F2F9C
	mov r0, fp
	add r1, r4, #0x1f4
	add r2, sp, #0x1f
	bl MOD04_021F2F9C
	ldr r2, _021F4290 ; =UNK04_0220DFC0
	mov r0, fp
	add r1, r4, #0x1f4
	bl MOD04_021F2F9C
	ldr r2, [r4, #0x46c]
	mov r0, fp
	add r1, r4, #0x1f4
	bl MOD04_021F2F64
	ldr r2, _021F4294 ; =UNK04_0220DFCC
	mov r0, fp
	add r1, r4, #0x1f4
	bl MOD04_021F2F9C
	ldr r2, _021F4298 ; =UNK04_02210EA0
	mov r0, fp
	add r1, r4, #0x1f4
	bl MOD04_021F2F9C
	ldr r2, _021F429C ; =UNK04_0220DFD8
	mov r0, fp
	add r1, r4, #0x1f4
	bl MOD04_021F2F9C
	ldr r2, [r4, #0x470]
	mov r0, fp
	add r1, r4, #0x1f4
	bl MOD04_021F2F64
	ldr r2, _021F42A0 ; =UNK04_0220DEF8
	mov r0, fp
	add r1, r4, #0x1f4
	bl MOD04_021F2F9C
	ldr r2, _021F42A4 ; =0x0000012F
	mov r0, fp
	add r1, r4, #0x1f4
	add r2, r4, r2
	bl MOD04_021F2F9C
	add r0, r5, #0x200
	ldrsb r0, [r0, #0xc2]
	cmp r0, #0
	beq _021F424C
	ldr r0, _021F42A8 ; =0x000002C2
	add r0, r5, r0
	bl strlen
	mov sl, r0
	ldr r0, _021F427C ; =0x79707367
	bl MOD04_021EFA2C
	cmp sl, #0
	mov r8, r6
	bls _021F4210
	add sb, sp, #0x4c
	mov r7, r8
	mov r6, #0xff
_021F41E0:
	mov r0, r7
	mov r1, r6
	bl MOD04_021EF9FC
	add r1, r5, r8
	add r1, r1, #0x200
	add r8, r8, #1
	ldrsb r1, [r1, #0xc2]
	mov r0, r0, lsl #0x18
	cmp r8, sl
	eor r0, r1, r0, asr #24
	strb r0, [sb], #1
	blo _021F41E0
_021F4210:
	add r0, sp, #0x4c
	mov r5, #0
	add r1, sp, #0x8d
	mov r2, sl
	mov r3, #1
	strb r5, [r0, r8]
	bl MOD04_021EF820
	ldr r2, _021F42AC ; =UNK04_0220DFE8
	mov r0, fp
	add r1, r4, #0x1f4
	bl MOD04_021F2F9C
	add r2, sp, #0x8d
	mov r0, fp
	add r1, r4, #0x1f4
	bl MOD04_021F2F9C
_021F424C:
	ldr r2, _021F42B0 ; =UNK04_0220DFF4
	mov r0, fp
	add r1, r4, #0x1f4
	bl MOD04_021F2F9C
	ldr r2, _021F42B4 ; =UNK04_0220DDE4
	mov r0, fp
	add r1, r4, #0x1f4
	bl MOD04_021F2F9C
	mov r0, #0
	add sp, sp, #0xec
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_021F4278: .word 0x00000177
_021F427C: .word 0x79707367
_021F4280: .word UNK04_0220DF94
_021F4284: .word UNK04_0220DFA0
_021F4288: .word UNK04_0220DFA8
_021F428C: .word UNK04_0220DFB0
_021F4290: .word UNK04_0220DFC0
_021F4294: .word UNK04_0220DFCC
_021F4298: .word UNK04_02210EA0
_021F429C: .word UNK04_0220DFD8
_021F42A0: .word UNK04_0220DEF8
_021F42A4: .word 0x0000012F
_021F42A8: .word 0x000002C2
_021F42AC: .word UNK04_0220DFE8
_021F42B0: .word UNK04_0220DFF4
_021F42B4: .word UNK04_0220DDE4
	arm_func_end MOD04_021F401C

	arm_func_start MOD04_021F42B8
MOD04_021F42B8: ; 0x021F42B8
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x28c
	mov r5, r1
	mov r6, r0
	add r0, r5, #0x80
	mov r1, #0x20
	ldr r4, [r6]
	bl MOD04_021F4C48
	add r0, r5, #0x100
	ldrsb r0, [r0, #0xc2]
	cmp r0, #0
	ldrne r0, _021F4614 ; =0x000001C2
	addne r7, r5, r0
	ldreq r0, _021F4618 ; =0x00000177
	addeq r7, r4, r0
	mov r0, r7
	bl strlen
	mov r1, r0
	mov r0, r7
	add r2, r5, #0xa1
	bl MOD04_021EF794
	ldrsb r0, [r5, #0xc2]
	cmp r0, #0
	addne r0, r5, #0xc2
	bne _021F4354
	add r0, r4, #0x100
	ldrsb r0, [r0, #0x2f]
	cmp r0, #0
	ldrne r0, _021F461C ; =0x0000012F
	addne r0, r4, r0
	bne _021F4354
	add r0, sp, #0x200
	ldr r1, _021F4620 ; =UNK04_0220DF10
	add r0, r0, #0x35
	add r2, r4, #0x110
	add r3, r4, #0x144
	bl sprintf
	add r0, sp, #0x200
	add r0, r0, #0x35
_021F4354:
	str r0, [sp]
	add r0, r5, #0x80
	str r0, [sp, #4]
	ldr r1, _021F4624 ; =UNK04_0220DF18
	ldr r3, _021F4628 ; =UNK04_0220DF28
	add r0, sp, #0x35
	str r5, [sp, #8]
	add r2, r5, #0xa1
	str r2, [sp, #0xc]
	bl sprintf
	add r0, sp, #0x35
	bl strlen
	mov r1, r0
	add r0, sp, #0x35
	add r2, sp, #0x14
	bl MOD04_021EF794
	ldr r0, [r4, #0x100]
	cmp r0, #0
	beq _021F43D0
	add r3, sp, #0x10
	mov r0, r6
	add r1, r4, #0x110
	add r2, r4, #0x144
	bl MOD04_021F84F4
	ldr r0, [sp, #0x10]
	cmp r0, #0
	ldrne r0, [r0, #4]
	strne r0, [r4, #0x19c]
	ldrne r0, [sp, #0x10]
	ldrne r0, [r0]
	strne r0, [r4, #0x1a0]
_021F43D0:
	ldr r2, _021F462C ; =UNK04_0220DFFC
	mov r0, r6
	add r1, r4, #0x1f4
	bl MOD04_021F2F9C
	ldr r2, _021F4630 ; =UNK04_0220DE88
	mov r0, r6
	add r1, r4, #0x1f4
	bl MOD04_021F2F9C
	mov r0, r6
	add r1, r4, #0x1f4
	add r2, r5, #0x80
	bl MOD04_021F2F9C
	ldrsb r0, [r5, #0xc2]
	cmp r0, #0
	beq _021F4430
	ldr r2, _021F4634 ; =UNK04_0220E004
	mov r0, r6
	add r1, r4, #0x1f4
	bl MOD04_021F2F9C
	mov r0, r6
	add r1, r4, #0x1f4
	add r2, r5, #0xc2
	bl MOD04_021F2F9C
	b _021F44A8
_021F4430:
	add r0, r4, #0x100
	ldrsb r0, [r0, #0x2f]
	cmp r0, #0
	beq _021F4468
	ldr r2, _021F4638 ; =UNK04_0220DEF8
	mov r0, r6
	add r1, r4, #0x1f4
	bl MOD04_021F2F9C
	ldr r2, _021F461C ; =0x0000012F
	mov r0, r6
	add r1, r4, #0x1f4
	add r2, r4, r2
	bl MOD04_021F2F9C
	b _021F44A8
_021F4468:
	ldr r2, _021F463C ; =UNK04_0220E010
	mov r0, r6
	add r1, r4, #0x1f4
	bl MOD04_021F2F9C
	mov r0, r6
	add r1, r4, #0x1f4
	add r2, r4, #0x110
	bl MOD04_021F2F9C
	ldr r2, _021F4640 ; =UNK04_0220E018
	mov r0, r6
	add r1, r4, #0x1f4
	bl MOD04_021F2F9C
	mov r0, r6
	add r1, r4, #0x1f4
	add r2, r4, #0x144
	bl MOD04_021F2F9C
_021F44A8:
	ldr r0, [r4, #0x19c]
	cmp r0, #0
	beq _021F44D4
	ldr r2, _021F4644 ; =UNK04_0220DE9C
	mov r0, r6
	add r1, r4, #0x1f4
	bl MOD04_021F2F9C
	ldr r2, [r4, #0x19c]
	mov r0, r6
	add r1, r4, #0x1f4
	bl MOD04_021F2F64
_021F44D4:
	ldr r0, [r4, #0x1a0]
	cmp r0, #0
	beq _021F4500
	ldr r2, _021F4648 ; =UNK04_0220DED8
	mov r0, r6
	add r1, r4, #0x1f4
	bl MOD04_021F2F9C
	ldr r2, [r4, #0x1a0]
	mov r0, r6
	add r1, r4, #0x1f4
	bl MOD04_021F2F64
_021F4500:
	ldr r2, _021F464C ; =UNK04_0220E01C
	mov r0, r6
	add r1, r4, #0x1f4
	bl MOD04_021F2F9C
	add r2, sp, #0x14
	mov r0, r6
	add r1, r4, #0x1f4
	bl MOD04_021F2F9C
	ldr r0, [r4, #0x10c]
	cmp r0, #1
	bne _021F453C
	ldr r2, _021F4650 ; =UNK04_0220E028
	mov r0, r6
	add r1, r4, #0x1f4
	bl MOD04_021F2F9C
_021F453C:
	ldr r2, _021F4654 ; =UNK04_0220E034
	mov r0, r6
	add r1, r4, #0x1f4
	bl MOD04_021F2F9C
	ldr r1, [r4, #0x208]
	mov r0, r6
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	mov r2, r1, asr #8
	mov r1, r1, lsl #8
	and r2, r2, #0xff
	and r1, r1, #0xff00
	orr r1, r2, r1
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	mov r2, r1, lsl #0x10
	add r1, r4, #0x1f4
	mov r2, r2, asr #0x10
	bl MOD04_021F2F64
	ldr r2, _021F4658 ; =UNK04_0220DFC0
	mov r0, r6
	add r1, r4, #0x1f4
	bl MOD04_021F2F9C
	ldr r2, [r4, #0x46c]
	mov r0, r6
	add r1, r4, #0x1f4
	bl MOD04_021F2F64
	mov r0, r6
	add r1, r4, #0x1f4
	ldr r2, _021F465C ; =UNK04_0220DFCC
	bl MOD04_021F2F9C
	mov r0, r6
	add r1, r4, #0x1f4
	ldr r2, _021F4660 ; =UNK04_02210EA0
	bl MOD04_021F2F9C
	mov r0, r6
	add r1, r4, #0x1f4
	ldr r2, _021F4664 ; =UNK04_0220DFD8
	bl MOD04_021F2F9C
	mov r0, r6
	add r1, r4, #0x1f4
	ldr r2, [r4, #0x470]
	bl MOD04_021F2F64
	mov r0, r6
	add r1, r4, #0x1f4
	ldr r2, _021F4668 ; =UNK04_0220DFF4
	bl MOD04_021F2F9C
	mov r0, r6
	add r1, r4, #0x1f4
	ldr r2, _021F466C ; =UNK04_0220DDE4
	bl MOD04_021F2F9C
	mov r0, #0
	add sp, sp, #0x28c
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_021F4614: .word 0x000001C2
_021F4618: .word 0x00000177
_021F461C: .word 0x0000012F
_021F4620: .word UNK04_0220DF10
_021F4624: .word UNK04_0220DF18
_021F4628: .word UNK04_0220DF28
_021F462C: .word UNK04_0220DFFC
_021F4630: .word UNK04_0220DE88
_021F4634: .word UNK04_0220E004
_021F4638: .word UNK04_0220DEF8
_021F463C: .word UNK04_0220E010
_021F4640: .word UNK04_0220E018
_021F4644: .word UNK04_0220DE9C
_021F4648: .word UNK04_0220DED8
_021F464C: .word UNK04_0220E01C
_021F4650: .word UNK04_0220E028
_021F4654: .word UNK04_0220E034
_021F4658: .word UNK04_0220DFC0
_021F465C: .word UNK04_0220DFCC
_021F4660: .word UNK04_02210EA0
_021F4664: .word UNK04_0220DFD8
_021F4668: .word UNK04_0220DFF4
_021F466C: .word UNK04_0220DDE4
	arm_func_end MOD04_021F42B8

	arm_func_start MOD04_021F4670
MOD04_021F4670: ; 0x021F4670
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x10
	mov r8, r0
	ldr r4, [r8]
	mov r7, r1
	ldr r1, [r4, #0x1d8]
	mov r6, r2
	mov r5, r3
	cmp r1, #4
	bne _021F46A8
	bl MOD04_021F14C0
	cmp r0, #0
	addne sp, sp, #0x10
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
_021F46A8:
	ldr r0, [r4, #0x1d8]
	cmp r0, #0
	beq _021F46CC
	ldr r1, _021F48AC ; =UNK04_0220E03C
	mov r0, r8
	bl MOD04_021FAEEC
	add sp, sp, #0x10
	mov r0, #2
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_021F46CC:
	ldr r0, [sp, #0x38]
	cmp r0, #0
	beq _021F46EC
	cmp r0, #1
	bne _021F46F8
	mov r0, #1
	str r0, [r4, #0x10c]
	b _021F4710
_021F46EC:
	mov r0, #0
	str r0, [r4, #0x10c]
	b _021F4710
_021F46F8:
	ldr r1, _021F48B0 ; =UNK04_0220E050
	mov r0, r8
	bl MOD04_021FAEEC
	add sp, sp, #0x10
	mov r0, #2
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_021F4710:
	mov r3, #1
	mov r1, r7
	add r0, r4, #0x110
	mov r2, #0x1f
	str r3, [r4, #0x10c]
	bl MOD04_021FB3DC
	ldr r0, _021F48B4 ; =0x0000012F
	mov r1, r6
	add r0, r4, r0
	mov r2, #0x15
	bl MOD04_021FB3DC
	mov r1, r5
	add r0, r4, #0x144
	mov r2, #0x33
	bl MOD04_021FB3DC
	ldr r0, _021F48B8 ; =0x00000177
	ldr r1, [sp, #0x28]
	add r0, r4, r0
	mov r2, #0x1f
	bl MOD04_021FB3DC
	add r0, r4, #0x144
	bl MOD04_021F01C4
	mov r0, #0x308
	bl MOD04_021DD860
	movs r4, r0
	bne _021F4790
	ldr r1, _021F48BC ; =UNK04_0220DF84
	mov r0, r8
	bl MOD04_021FAEEC
	add sp, sp, #0x10
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_021F4790:
	mov r1, #0
	mov r2, #0x308
	bl memset
	ldr r0, [sp, #0x3c]
	ldr r1, [sp, #0x2c]
	str r0, [r4, #0x304]
	ldrsb r0, [r1]
	cmp r0, #0
	beq _021F47E4
	ldr r0, [sp, #0x30]
	ldrsb r0, [r0]
	cmp r0, #0
	beq _021F47E4
	add r0, r4, #0xc2
	mov r2, #0x100
	bl MOD04_021FB3DC
	ldr r0, _021F48C0 ; =0x000001C2
	ldr r1, [sp, #0x30]
	add r0, r4, r0
	mov r2, #0x100
	bl MOD04_021FB3DC
_021F47E4:
	ldr r1, [sp, #0x34]
	cmp r1, #0
	beq _021F4800
	ldr r0, _021F48C4 ; =0x000002C2
	mov r2, #0x41
	add r0, r4, r0
	bl MOD04_021FB3DC
_021F4800:
	ldr r1, [sp, #0x40]
	ldr r0, [sp, #0x44]
	str r1, [sp]
	str r0, [sp, #4]
	ldr r5, [sp, #0x48]
	add r3, sp, #0xc
	mov r0, r8
	mov r2, r4
	mov r1, #0
	str r5, [sp, #8]
	bl MOD04_021F6D8C
	cmp r0, #0
	addne sp, sp, #0x10
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r1, [sp, #0xc]
	mov r0, r8
	bl MOD04_021F48C8
	movs r4, r0
	beq _021F4878
	ldr r1, [sp, #0xc]
	mov r0, r8
	str r4, [r1, #0x1c]
	ldr r1, [sp, #0xc]
	bl MOD04_021F6E44
	mov r0, r8
	mov r1, #0
	bl MOD04_021F35F4
	add sp, sp, #0x10
	mov r0, r4
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_021F4878:
	ldr r1, [sp, #0xc]
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _021F48A0
	ldr r1, [r1, #0x18]
	mov r0, r8
	bl MOD04_021F0FD4
	cmp r0, #0
	addne sp, sp, #0x10
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
_021F48A0:
	mov r0, #0
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_021F48AC: .word UNK04_0220E03C
_021F48B0: .word UNK04_0220E050
_021F48B4: .word 0x0000012F
_021F48B8: .word 0x00000177
_021F48BC: .word UNK04_0220DF84
_021F48C0: .word 0x000001C2
_021F48C4: .word 0x000002C2
	arm_func_end MOD04_021F4670

	arm_func_start MOD04_021F48C8
MOD04_021F48C8: ; 0x021F48C8
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x10
	mov r6, r0
	ldr r4, [r6]
	mov r5, r1
	ldr r0, [r4, #0x10c]
	cmp r0, #0
	bne _021F4A70
	mov r0, #2
	mov r1, #1
	mov r2, #0
	bl MOD04_021EFDB8
	str r0, [r4, #0x204]
	ldr r0, [r4, #0x204]
	mvn r1, #0
	cmp r0, r1
	bne _021F4938
	ldr r2, _021F4C1C ; =UNK04_0220E064
	mov r0, r6
	mov r1, #5
	bl MOD04_021FAF00
	mov r0, r6
	mov r1, #3
	mov r2, #1
	bl MOD04_021F3500
	add sp, sp, #0x10
	mov r0, #3
	ldmia sp!, {r4, r5, r6, pc}
_021F4938:
	mov r1, #0
	bl MOD04_021F017C
	cmp r0, #0
	bne _021F4974
	ldr r2, _021F4C20 ; =UNK04_0220E08C
	mov r0, r6
	mov r1, #5
	bl MOD04_021FAF00
	mov r0, r6
	mov r1, #3
	mov r2, #1
	bl MOD04_021F3500
	add sp, sp, #0x10
	mov r0, #3
	ldmia sp!, {r4, r5, r6, pc}
_021F4974:
	add r1, sp, #0
	mov r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	mov r0, #2
	strb r0, [sp, #1]
	ldr r0, [r4, #0x204]
	mov r2, #8
	bl MOD04_021EFD28
	mvn r1, #0
	cmp r0, r1
	bne _021F49D0
	ldr r2, _021F4C24 ; =UNK04_0220E0C0
	mov r0, r6
	mov r1, #5
	bl MOD04_021FAF00
	mov r0, r6
	mov r1, #3
	mov r2, #1
	bl MOD04_021F3500
	add sp, sp, #0x10
	mov r0, #3
	ldmia sp!, {r4, r5, r6, pc}
_021F49D0:
	ldr r0, [r4, #0x204]
	mov r1, #5
	bl MOD04_021EFCC8
	mvn r1, #0
	cmp r0, r1
	bne _021F4A14
	ldr r2, _021F4C28 ; =UNK04_0220E0E8
	mov r0, r6
	mov r1, #5
	bl MOD04_021FAF00
	mov r0, r6
	mov r1, #3
	mov r2, #1
	bl MOD04_021F3500
	add sp, sp, #0x10
	mov r0, #3
	ldmia sp!, {r4, r5, r6, pc}
_021F4A14:
	mov r0, #8
	str r0, [sp, #8]
	ldr r0, [r4, #0x204]
	add r1, sp, #0
	add r2, sp, #8
	bl MOD04_021EFB5C
	mvn r1, #0
	cmp r0, r1
	bne _021F4A64
	ldr r2, _021F4C2C ; =UNK04_0220E114
	mov r0, r6
	mov r1, #5
	bl MOD04_021FAF00
	mov r0, r6
	mov r1, #3
	mov r2, #1
	bl MOD04_021F3500
	add sp, sp, #0x10
	mov r0, #3
	ldmia sp!, {r4, r5, r6, pc}
_021F4A64:
	ldrh r0, [sp, #2]
	str r0, [r4, #0x208]
	b _021F4A80
_021F4A70:
	mvn r0, #0
	str r0, [r4, #0x204]
	mov r0, #0
	str r0, [r4, #0x208]
_021F4A80:
	mov r0, #2
	mov r1, #1
	mov r2, #0
	bl MOD04_021EFDB8
	str r0, [r4, #0x1d4]
	ldr r0, [r4, #0x1d4]
	mvn r1, #0
	cmp r0, r1
	bne _021F4AD0
	ldr r2, _021F4C1C ; =UNK04_0220E064
	mov r0, r6
	mov r1, #5
	bl MOD04_021FAF00
	mov r0, r6
	mov r1, #3
	mov r2, #1
	bl MOD04_021F3500
	add sp, sp, #0x10
	mov r0, #3
	ldmia sp!, {r4, r5, r6, pc}
_021F4AD0:
	mov r1, #0
	bl MOD04_021F017C
	cmp r0, #0
	bne _021F4B0C
	ldr r2, _021F4C20 ; =UNK04_0220E08C
	mov r0, r6
	mov r1, #5
	bl MOD04_021FAF00
	mov r0, r6
	mov r1, #3
	mov r2, #1
	bl MOD04_021F3500
	add sp, sp, #0x10
	mov r0, #3
	ldmia sp!, {r4, r5, r6, pc}
_021F4B0C:
	ldr r0, _021F4C30 ; =UNK04_0220DD90
	bl SOC_GetHostByAddr
	cmp r0, #0
	bne _021F4B48
	ldr r2, _021F4C34 ; =UNK04_0220E144
	mov r0, r6
	mov r1, #5
	bl MOD04_021FAF00
	mov r0, r6
	mov r1, #3
	mov r2, #1
	bl MOD04_021F3500
	add sp, sp, #0x10
	mov r0, #3
	ldmia sp!, {r4, r5, r6, pc}
_021F4B48:
	add r1, sp, #0
	mov r2, #0
	str r2, [r1]
	str r2, [r1, #4]
	mov r1, #2
	strb r1, [sp, #1]
	ldr r0, [r0, #0xc]
	ldr r0, [r0]
	ldr r0, [r0]
	str r0, [sp, #4]
	cmp r0, #0
	bne _021F4B88
	ldr r0, _021F4C38 ; =UNK04_0220E178
	ldr r1, _021F4C3C ; =UNK04_0220DE30
	mov r3, #0x90
	bl __msl_assertion_failed
_021F4B88:
	ldr r0, _021F4C40 ; =0x0000CC74
	add r1, sp, #0
	strh r0, [sp, #2]
	ldr r0, [r4, #0x1d4]
	mov r2, #8
	bl MOD04_021EFCE4
	mvn r1, #0
	cmp r0, r1
	bne _021F4C04
	ldr r0, [r4, #0x1d4]
	bl MOD04_021EFB28
	mvn r1, #5
	cmp r0, r1
	beq _021F4C04
	mvn r1, #0x19
	cmp r0, r1
	beq _021F4C04
	mvn r1, #0x4b
	cmp r0, r1
	beq _021F4C04
	ldr r2, _021F4C44 ; =UNK04_0220E198
	mov r0, r6
	mov r1, #5
	bl MOD04_021FAF00
	mov r0, r6
	mov r1, #3
	mov r2, #1
	bl MOD04_021F3500
	add sp, sp, #0x10
	mov r0, #3
	ldmia sp!, {r4, r5, r6, pc}
_021F4C04:
	mov r0, #1
	str r0, [r5, #0x14]
	str r0, [r4, #0x1d8]
	mov r0, #0
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_021F4C1C: .word UNK04_0220E064
_021F4C20: .word UNK04_0220E08C
_021F4C24: .word UNK04_0220E0C0
_021F4C28: .word UNK04_0220E0E8
_021F4C2C: .word UNK04_0220E114
_021F4C30: .word UNK04_0220DD90
_021F4C34: .word UNK04_0220E144
_021F4C38: .word UNK04_0220E178
_021F4C3C: .word UNK04_0220DE30
_021F4C40: .word 0x0000CC74
_021F4C44: .word UNK04_0220E198
	arm_func_end MOD04_021F48C8

	arm_func_start MOD04_021F4C48
MOD04_021F4C48: ; 0x021F4C48
	stmdb sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #4
	mov r8, r1
	mov sb, r0
	cmp r8, #0
	mov r7, #0
	ble _021F4CA0
	ldr r6, _021F4CB0 ; =UNK04_0220E1C0
	ldr r5, _021F4CB4 ; =0x08421085
	ldr r4, _021F4CB8 ; =0x0000003E
_021F4C70:
	bl rand
	umull r1, r2, r0, r5
	sub r1, r0, r2
	add r2, r2, r1, lsr #1
	mov r2, r2, lsr #5
	umull r1, r2, r4, r2
	sub r2, r0, r1
	ldrsb r0, [r6, r2]
	strb r0, [sb, r7]
	add r7, r7, #1
	cmp r7, r8
	blt _021F4C70
_021F4CA0:
	mov r0, #0
	strb r0, [sb, r7]
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_021F4CB0: .word UNK04_0220E1C0
_021F4CB4: .word 0x08421085
_021F4CB8: .word 0x0000003E
	arm_func_end MOD04_021F4C48

	arm_func_start MOD04_021F4CBC
MOD04_021F4CBC: ; 0x021F4CBC
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0xc]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r0, [r0]
	bl MOD04_021DD82C
	ldr r0, [r4, #0xc]
	mov r1, #0
	str r1, [r0]
	ldr r0, [r4, #0xc]
	ldr r0, [r0, #4]
	bl MOD04_021DD82C
	ldr r0, [r4, #0xc]
	mov r1, #0
	str r1, [r0, #4]
	ldr r0, [r4, #0xc]
	ldr r0, [r0, #8]
	bl MOD04_021DD82C
	ldr r0, [r4, #0xc]
	mov r1, #0
	str r1, [r0, #8]
	ldr r0, [r4, #0xc]
	ldr r0, [r0, #0xc]
	bl MOD04_021DD82C
	ldr r0, [r4, #0xc]
	mov r1, #0
	str r1, [r0, #0xc]
	ldr r0, [r4, #0xc]
	ldr r0, [r0, #0x10]
	bl MOD04_021DD82C
	ldr r0, [r4, #0xc]
	mov r1, #0
	str r1, [r0, #0x10]
	ldr r0, [r4, #0xc]
	ldr r0, [r0, #0x14]
	bl MOD04_021DD82C
	ldr r0, [r4, #0xc]
	mov r1, #0
	str r1, [r0, #0x14]
	ldr r0, [r4, #0xc]
	ldr r0, [r0, #0xc8]
	bl MOD04_021DD82C
	ldr r0, [r4, #0xc]
	mov r1, #0
	str r1, [r0, #0xc8]
	ldr r0, [r4, #0xc]
	bl MOD04_021DD82C
	mov r0, #0
	str r0, [r4, #0xc]
	ldmia sp!, {r4, pc}
	arm_func_end MOD04_021F4CBC

	arm_func_start MOD04_021F4D88
MOD04_021F4D88: ; 0x021F4D88
	stmdb sp!, {r4, r5, r6, lr}
	ldr r0, [r0]
	mov r5, r1
	ldr r0, [r0, #0x100]
	mov r4, r2
	cmp r0, #0
	moveq r0, #1
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r0, r5
	bl MOD04_021F4CBC
	mov r0, #0xf0
	bl MOD04_021DD860
	str r0, [r5, #0xc]
	ldr r6, [r5, #0xc]
	cmp r6, #0
	beq _021F4E50
	mov lr, r4
	mov ip, #0xf
_021F4DD0:
	ldmia lr!, {r0, r1, r2, r3}
	stmia r6!, {r0, r1, r2, r3}
	subs ip, ip, #1
	bne _021F4DD0
	ldr r0, [r4]
	bl MOD04_021F0208
	ldr r1, [r5, #0xc]
	str r0, [r1]
	ldr r0, [r4, #4]
	bl MOD04_021F0208
	ldr r1, [r5, #0xc]
	str r0, [r1, #4]
	ldr r0, [r4, #8]
	bl MOD04_021F0208
	ldr r1, [r5, #0xc]
	str r0, [r1, #8]
	ldr r0, [r4, #0xc]
	bl MOD04_021F0208
	ldr r1, [r5, #0xc]
	str r0, [r1, #0xc]
	ldr r0, [r4, #0x10]
	bl MOD04_021F0208
	ldr r1, [r5, #0xc]
	str r0, [r1, #0x10]
	ldr r0, [r4, #0x14]
	bl MOD04_021F0208
	ldr r1, [r5, #0xc]
	str r0, [r1, #0x14]
	ldr r0, [r4, #0xc8]
	bl MOD04_021F0208
	ldr r1, [r5, #0xc]
	str r0, [r1, #0xc8]
_021F4E50:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end MOD04_021F4D88

	arm_func_start MOD04_021F4E64
MOD04_021F4E64: ; 0x021F4E64
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x20
	mov r8, r0
	ldr r0, [r8]
	mov r4, #0
	str r4, [sp, #0x10]
	ldr r5, [sp, #0x38]
	cmp r2, #1
	ldr r0, [r0, #0x100]
	moveq r4, #1
	cmp r0, #0
	moveq r4, #0
	mov r7, r1
	mov r6, r3
	cmp r5, #0
	beq _021F4F94
	cmp r4, #0
	beq _021F4F94
	add r2, sp, #0xc
	mov r0, r8
	mov r1, r7
	bl MOD04_021F85E8
	cmp r0, #0
	beq _021F4F94
	ldr r0, [sp, #0xc]
	ldr r0, [r0, #0xc]
	cmp r0, #0
	beq _021F4F94
	mov r0, #0x204
	bl MOD04_021DD860
	movs r4, r0
	bne _021F4EFC
	ldr r1, _021F5014 ; =UNK04_0220E200
	mov r0, r8
	bl MOD04_021FAEEC
	add sp, sp, #0x20
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_021F4EFC:
	ldr r0, [sp, #0xc]
	mov r1, r4
	ldr r0, [r0, #0xc]
	bl MOD04_021F66D4
	mov r2, #0
	str r2, [r4]
	str r7, [r4, #4]
	ldr r7, [sp, #0x3c]
	str r5, [sp, #0x14]
	str r7, [sp, #0x18]
	mov r0, #1
	str r0, [sp]
	str r5, [sp, #4]
	add r3, sp, #0x10
	mov r0, r8
	mov r1, #2
	str r7, [sp, #8]
	bl MOD04_021F6D8C
	cmp r0, #0
	addne sp, sp, #0x20
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r2, [sp, #0x10]
	mov r0, #0
	ldr r5, [r2, #0x18]
	add r1, sp, #0x14
	str r2, [sp]
	str r0, [sp, #4]
	mov r0, r8
	mov r3, r4
	ldmia r1, {r1, r2}
	bl MOD04_021F3454
	cmp r0, #0
	addne sp, sp, #0x20
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r1, [sp, #0x10]
	mov r0, r8
	bl MOD04_021F6C84
	b _021F4FE8
_021F4F94:
	str r6, [sp]
	ldr r4, [sp, #0x3c]
	str r5, [sp, #4]
	add r3, sp, #0x10
	mov r0, r8
	mov r1, #2
	mov r2, #0
	str r4, [sp, #8]
	bl MOD04_021F6D8C
	cmp r0, #0
	addne sp, sp, #0x20
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r1, [sp, #0x10]
	mov r0, r8
	ldr r5, [r1, #0x18]
	mov r1, r7
	mov r2, r5
	bl MOD04_021F5018
	cmp r0, #0
	addne sp, sp, #0x20
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
_021F4FE8:
	cmp r6, #0
	beq _021F5008
	mov r0, r8
	mov r1, r5
	bl MOD04_021F0FD4
	cmp r0, #0
	addne sp, sp, #0x20
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
_021F5008:
	mov r0, #0
	add sp, sp, #0x20
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_021F5014: .word UNK04_0220E200
	arm_func_end MOD04_021F4E64

	arm_func_start MOD04_021F5018
MOD04_021F5018: ; 0x021F5018
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	mov r7, r0
	ldr r4, [r7]
	mov r5, r2
	mov r6, r1
	ldr r2, _021F50A8 ; =UNK04_0220E210
	add r1, r4, #0x1f4
	bl MOD04_021F2F9C
	ldr r2, [r4, #0x198]
	mov r0, r7
	add r1, r4, #0x1f4
	bl MOD04_021F2F64
	ldr r2, _021F50AC ; =UNK04_0220E228
	mov r0, r7
	add r1, r4, #0x1f4
	bl MOD04_021F2F9C
	mov r2, r6
	mov r0, r7
	add r1, r4, #0x1f4
	bl MOD04_021F2F64
	mov r0, r7
	add r1, r4, #0x1f4
	ldr r2, _021F50B0 ; =UNK04_0220E234
	bl MOD04_021F2F9C
	mov r2, r5
	mov r0, r7
	add r1, r4, #0x1f4
	bl MOD04_021F2F64
	mov r0, r7
	add r1, r4, #0x1f4
	ldr r2, _021F50B4 ; =UNK04_0220E23C
	bl MOD04_021F2F9C
	mov r0, #0
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_021F50A8: .word UNK04_0220E210
_021F50AC: .word UNK04_0220E228
_021F50B0: .word UNK04_0220E234
_021F50B4: .word UNK04_0220E23C
	arm_func_end MOD04_021F5018

	arm_func_start MOD04_021F50B8
MOD04_021F50B8: ; 0x021F50B8
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x100
	mov r6, r0
	movs r5, r2
	ldr r4, [r6]
	bne _021F50E4
	ldr r1, _021F5810 ; =UNK04_0220E264
	bl MOD04_021FAEEC
	add sp, sp, #0x100
	mov r0, #2
	ldmia sp!, {r4, r5, r6, pc}
_021F50E4:
	sub r1, r1, #0x700
	cmp r1, #0x1e
	addls pc, pc, r1, lsl #2
	b _021F57EC
_021F50F4: ; jump table
	b _021F5170 ; case 0
	b _021F51D0 ; case 1
	b _021F5234 ; case 2
	b _021F529C ; case 3
	b _021F5300 ; case 4
	b _021F5330 ; case 5
	b _021F54BC ; case 6
	b _021F5360 ; case 7
	b _021F5390 ; case 8
	b _021F53C0 ; case 9
	b _021F57EC ; case 10
	b _021F5418 ; case 11
	b _021F57EC ; case 12
	b _021F54EC ; case 13
	b _021F5514 ; case 14
	b _021F553C ; case 15
	b _021F556C ; case 16
	b _021F5594 ; case 17
	b _021F55C4 ; case 18
	b _021F57EC ; case 19
	b _021F55EC ; case 20
	b _021F5614 ; case 21
	b _021F563C ; case 22
	b _021F566C ; case 23
	b _021F569C ; case 24
	b _021F56CC ; case 25
	b _021F56FC ; case 26
	b _021F572C ; case 27
	b _021F575C ; case 28
	b _021F578C ; case 29
	b _021F57BC ; case 30
_021F5170:
	ldrsb r1, [r5]
	cmp r1, #0
	bne _021F5190
	ldr r1, _021F5810 ; =UNK04_0220E264
	bl MOD04_021FAEEC
	add sp, sp, #0x100
	mov r0, #2
	ldmia sp!, {r4, r5, r6, pc}
_021F5190:
	add r0, sp, #0
	mov r1, r5
	mov r2, #0x1f
	bl MOD04_021FB3DC
	add r1, sp, #0
	add r0, r4, #0x110
	mov r2, #0x1f
	bl MOD04_021FB3DC
	ldr r1, _021F5814 ; =UNK04_0220E274
	add r2, sp, #0
	mov r0, r6
	bl MOD04_021F5DB8
	cmp r0, #0
	beq _021F5804
	add sp, sp, #0x100
	ldmia sp!, {r4, r5, r6, pc}
_021F51D0:
	ldrsb r1, [r5]
	cmp r1, #0
	bne _021F51F0
	ldr r1, _021F5810 ; =UNK04_0220E264
	bl MOD04_021FAEEC
	add sp, sp, #0x100
	mov r0, #2
	ldmia sp!, {r4, r5, r6, pc}
_021F51F0:
	add r0, sp, #0
	mov r1, r5
	mov r2, #0x15
	bl MOD04_021FB3DC
	ldr r0, _021F5818 ; =0x0000012F
	add r1, sp, #0
	add r0, r4, r0
	mov r2, #0x15
	bl MOD04_021FB3DC
	ldr r1, _021F581C ; =UNK04_0220E27C
	add r2, sp, #0
	mov r0, r6
	bl MOD04_021F5DB8
	cmp r0, #0
	beq _021F5804
	add sp, sp, #0x100
	ldmia sp!, {r4, r5, r6, pc}
_021F5234:
	ldrsb r1, [r5]
	cmp r1, #0
	bne _021F5254
	ldr r1, _021F5810 ; =UNK04_0220E264
	bl MOD04_021FAEEC
	add sp, sp, #0x100
	mov r0, #2
	ldmia sp!, {r4, r5, r6, pc}
_021F5254:
	add r0, sp, #0
	mov r1, r5
	mov r2, #0x33
	bl MOD04_021FB3DC
	add r0, sp, #0
	bl MOD04_021F01C4
	add r1, sp, #0
	add r0, r4, #0x144
	mov r2, #0x33
	bl MOD04_021FB3DC
	ldr r1, _021F5820 ; =UNK04_0220E28C
	add r2, sp, #0
	mov r0, r6
	bl MOD04_021F5D78
	cmp r0, #0
	beq _021F5804
	add sp, sp, #0x100
	ldmia sp!, {r4, r5, r6, pc}
_021F529C:
	ldrsb r1, [r5]
	cmp r1, #0
	bne _021F52BC
	ldr r1, _021F5810 ; =UNK04_0220E264
	bl MOD04_021FAEEC
	add sp, sp, #0x100
	mov r0, #2
	ldmia sp!, {r4, r5, r6, pc}
_021F52BC:
	add r0, sp, #0
	mov r1, r5
	mov r2, #0x1f
	bl MOD04_021FB3DC
	ldr r0, _021F5824 ; =0x00000177
	add r1, sp, #0
	add r0, r4, r0
	mov r2, #0x1f
	bl MOD04_021FB3DC
	ldr r1, _021F5828 ; =UNK04_0220E294
	add r2, sp, #0
	mov r0, r6
	bl MOD04_021F5D78
	cmp r0, #0
	beq _021F5804
	add sp, sp, #0x100
	ldmia sp!, {r4, r5, r6, pc}
_021F5300:
	add r0, sp, #0
	mov r1, r5
	mov r2, #0x1f
	bl MOD04_021FB3DC
	ldr r1, _021F582C ; =UNK04_0220E2A0
	add r2, sp, #0
	mov r0, r6
	bl MOD04_021F5DB8
	cmp r0, #0
	beq _021F5804
	add sp, sp, #0x100
	ldmia sp!, {r4, r5, r6, pc}
_021F5330:
	add r0, sp, #0
	mov r1, r5
	mov r2, #0x1f
	bl MOD04_021FB3DC
	ldr r1, _021F5830 ; =UNK04_0220E2AC
	add r2, sp, #0
	mov r0, r6
	bl MOD04_021F5DB8
	cmp r0, #0
	beq _021F5804
	add sp, sp, #0x100
	ldmia sp!, {r4, r5, r6, pc}
_021F5360:
	add r0, sp, #0
	mov r1, r5
	mov r2, #0x4c
	bl MOD04_021FB3DC
	ldr r1, _021F5834 ; =UNK04_0220E2B8
	add r2, sp, #0
	mov r0, r6
	bl MOD04_021F5DB8
	cmp r0, #0
	beq _021F5804
	add sp, sp, #0x100
	ldmia sp!, {r4, r5, r6, pc}
_021F5390:
	add r0, sp, #0
	mov r1, r5
	mov r2, #0xb
	bl MOD04_021FB3DC
	ldr r1, _021F5838 ; =UNK04_0220E2C4
	add r2, sp, #0
	mov r0, r6
	bl MOD04_021F5DB8
	cmp r0, #0
	beq _021F5804
	add sp, sp, #0x100
	ldmia sp!, {r4, r5, r6, pc}
_021F53C0:
	mov r0, r5
	bl strlen
	cmp r0, #2
	beq _021F53E8
	ldr r1, _021F583C ; =UNK04_0220E2D0
	mov r0, r6
	bl MOD04_021FAEEC
	add sp, sp, #0x100
	mov r0, #2
	ldmia sp!, {r4, r5, r6, pc}
_021F53E8:
	add r0, sp, #0
	mov r1, r5
	mov r2, #3
	bl MOD04_021FB3DC
	ldr r1, _021F5840 ; =UNK04_0220E2E8
	add r2, sp, #0
	mov r0, r6
	bl MOD04_021F5DB8
	cmp r0, #0
	beq _021F5804
	add sp, sp, #0x100
	ldmia sp!, {r4, r5, r6, pc}
_021F5418:
	ldrsb r1, [r5]
	cmp r1, #0
	blt _021F5434
	cmp r1, #0x80
	bge _021F5434
	ldr r0, _021F5844 ; =__upper_mapC
	ldrb r1, [r0, r1]
_021F5434:
	mov r0, r1, lsl #0x18
	mov r0, r0, asr #0x18
	cmp r0, #0x4d
	bne _021F5460
	ldr r0, _021F5848 ; =UNK04_0220E2F8
	add r2, sp, #0
	ldrb r1, [r0]
	ldrb r0, [r0, #1]
	strb r1, [r2]
	strb r0, [r2, #1]
	b _021F549C
_021F5460:
	cmp r0, #0x46
	bne _021F5484
	ldr r0, _021F584C ; =UNK04_0220E2FC
	add r2, sp, #0
	ldrb r1, [r0]
	ldrb r0, [r0, #1]
	strb r1, [r2]
	strb r0, [r2, #1]
	b _021F549C
_021F5484:
	ldr r0, _021F5850 ; =UNK04_0220E300
	add r2, sp, #0
	ldrb r1, [r0]
	ldrb r0, [r0, #1]
	strb r1, [r2]
	strb r0, [r2, #1]
_021F549C:
	ldr r1, _021F5854 ; =UNK04_0220E304
	add r2, sp, #0
	mov r0, r6
	bl MOD04_021F5DB8
	cmp r0, #0
	beq _021F5804
	add sp, sp, #0x100
	ldmia sp!, {r4, r5, r6, pc}
_021F54BC:
	add r0, sp, #0
	mov r1, r5
	mov r2, #0x100
	bl MOD04_021FB3DC
	ldr r1, _021F5858 ; =UNK04_0220E30C
	add r2, sp, #0
	mov r0, r6
	bl MOD04_021F5DB8
	cmp r0, #0
	beq _021F5804
	add sp, sp, #0x100
	ldmia sp!, {r4, r5, r6, pc}
_021F54EC:
	mov r0, r5
	bl atol
	mov r2, r0
	ldr r1, _021F585C ; =0x0000070D
	mov r0, r6
	bl MOD04_021F58A0
	cmp r0, #0
	beq _021F5804
	add sp, sp, #0x100
	ldmia sp!, {r4, r5, r6, pc}
_021F5514:
	mov r0, r5
	bl atol
	mov r2, r0
	ldr r1, _021F5860 ; =0x0000070E
	mov r0, r6
	bl MOD04_021F58A0
	cmp r0, #0
	beq _021F5804
	add sp, sp, #0x100
	ldmia sp!, {r4, r5, r6, pc}
_021F553C:
	add r0, sp, #0
	mov r1, r5
	mov r2, #0x100
	bl MOD04_021FB3DC
	ldr r1, _021F5864 ; =UNK04_0220E318
	add r2, sp, #0
	mov r0, r6
	bl MOD04_021F5DB8
	cmp r0, #0
	beq _021F5804
	add sp, sp, #0x100
	ldmia sp!, {r4, r5, r6, pc}
_021F556C:
	mov r0, r5
	bl atol
	mov r2, r0
	mov r0, r6
	mov r1, #0x710
	bl MOD04_021F58A0
	cmp r0, #0
	beq _021F5804
	add sp, sp, #0x100
	ldmia sp!, {r4, r5, r6, pc}
_021F5594:
	add r0, sp, #0
	mov r1, r5
	mov r2, #0x100
	bl MOD04_021FB3DC
	ldr r1, _021F5868 ; =UNK04_0220E32C
	add r2, sp, #0
	mov r0, r6
	bl MOD04_021F5DB8
	cmp r0, #0
	beq _021F5804
	add sp, sp, #0x100
	ldmia sp!, {r4, r5, r6, pc}
_021F55C4:
	mov r0, r5
	bl atol
	mov r2, r0
	ldr r1, _021F586C ; =0x00000712
	mov r0, r6
	bl MOD04_021F58A0
	cmp r0, #0
	beq _021F5804
	add sp, sp, #0x100
	ldmia sp!, {r4, r5, r6, pc}
_021F55EC:
	mov r0, r5
	bl atol
	mov r2, r0
	ldr r1, _021F5870 ; =0x00000714
	mov r0, r6
	bl MOD04_021F58A0
	cmp r0, #0
	beq _021F5804
	add sp, sp, #0x100
	ldmia sp!, {r4, r5, r6, pc}
_021F5614:
	mov r0, r5
	bl atol
	mov r2, r0
	ldr r1, _021F5874 ; =0x00000715
	mov r0, r6
	bl MOD04_021F58A0
	cmp r0, #0
	beq _021F5804
	add sp, sp, #0x100
	ldmia sp!, {r4, r5, r6, pc}
_021F563C:
	add r0, sp, #0
	mov r1, r5
	mov r2, #0x100
	bl MOD04_021FB3DC
	ldr r1, _021F5878 ; =UNK04_0220E340
	add r2, sp, #0
	mov r0, r6
	bl MOD04_021F5DB8
	cmp r0, #0
	beq _021F5804
	add sp, sp, #0x100
	ldmia sp!, {r4, r5, r6, pc}
_021F566C:
	add r0, sp, #0
	mov r1, r5
	mov r2, #0x33
	bl MOD04_021FB3DC
	ldr r1, _021F587C ; =UNK04_0220E34C
	add r2, sp, #0
	mov r0, r6
	bl MOD04_021F5DB8
	cmp r0, #0
	beq _021F5804
	add sp, sp, #0x100
	ldmia sp!, {r4, r5, r6, pc}
_021F569C:
	add r0, sp, #0
	mov r1, r5
	mov r2, #0x100
	bl MOD04_021FB3DC
	ldr r1, _021F5880 ; =UNK04_0220E354
	add r2, sp, #0
	mov r0, r6
	bl MOD04_021F5DB8
	cmp r0, #0
	beq _021F5804
	add sp, sp, #0x100
	ldmia sp!, {r4, r5, r6, pc}
_021F56CC:
	add r0, sp, #0
	mov r1, r5
	mov r2, #0x100
	bl MOD04_021FB3DC
	ldr r1, _021F5884 ; =UNK04_0220E35C
	add r2, sp, #0
	mov r0, r6
	bl MOD04_021F5DB8
	cmp r0, #0
	beq _021F5804
	add sp, sp, #0x100
	ldmia sp!, {r4, r5, r6, pc}
_021F56FC:
	add r0, sp, #0
	mov r1, r5
	mov r2, #0x100
	bl MOD04_021FB3DC
	ldr r1, _021F5888 ; =UNK04_0220E364
	add r2, sp, #0
	mov r0, r6
	bl MOD04_021F5DB8
	cmp r0, #0
	beq _021F5804
	add sp, sp, #0x100
	ldmia sp!, {r4, r5, r6, pc}
_021F572C:
	add r0, sp, #0
	mov r1, r5
	mov r2, #0x100
	bl MOD04_021FB3DC
	ldr r1, _021F588C ; =UNK04_0220E36C
	add r2, sp, #0
	mov r0, r6
	bl MOD04_021F5DB8
	cmp r0, #0
	beq _021F5804
	add sp, sp, #0x100
	ldmia sp!, {r4, r5, r6, pc}
_021F575C:
	add r0, sp, #0
	mov r1, r5
	mov r2, #0x100
	bl MOD04_021FB3DC
	ldr r1, _021F5890 ; =UNK04_0220E374
	add r2, sp, #0
	mov r0, r6
	bl MOD04_021F5DB8
	cmp r0, #0
	beq _021F5804
	add sp, sp, #0x100
	ldmia sp!, {r4, r5, r6, pc}
_021F578C:
	add r0, sp, #0
	mov r1, r5
	mov r2, #0x100
	bl MOD04_021FB3DC
	ldr r1, _021F5894 ; =UNK04_0220E37C
	add r2, sp, #0
	mov r0, r6
	bl MOD04_021F5DB8
	cmp r0, #0
	beq _021F5804
	add sp, sp, #0x100
	ldmia sp!, {r4, r5, r6, pc}
_021F57BC:
	add r0, sp, #0
	mov r1, r5
	mov r2, #0x100
	bl MOD04_021FB3DC
	ldr r1, _021F5898 ; =UNK04_0220E384
	add r2, sp, #0
	mov r0, r6
	bl MOD04_021F5DB8
	cmp r0, #0
	beq _021F5804
	add sp, sp, #0x100
	ldmia sp!, {r4, r5, r6, pc}
_021F57EC:
	ldr r1, _021F589C ; =UNK04_0220E248
	mov r0, r6
	bl MOD04_021FAEEC
	add sp, sp, #0x100
	mov r0, #2
	ldmia sp!, {r4, r5, r6, pc}
_021F5804:
	mov r0, #0
	add sp, sp, #0x100
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_021F5810: .word UNK04_0220E264
_021F5814: .word UNK04_0220E274
_021F5818: .word 0x0000012F
_021F581C: .word UNK04_0220E27C
_021F5820: .word UNK04_0220E28C
_021F5824: .word 0x00000177
_021F5828: .word UNK04_0220E294
_021F582C: .word UNK04_0220E2A0
_021F5830: .word UNK04_0220E2AC
_021F5834: .word UNK04_0220E2B8
_021F5838: .word UNK04_0220E2C4
_021F583C: .word UNK04_0220E2D0
_021F5840: .word UNK04_0220E2E8
_021F5844: .word __upper_mapC
_021F5848: .word UNK04_0220E2F8
_021F584C: .word UNK04_0220E2FC
_021F5850: .word UNK04_0220E300
_021F5854: .word UNK04_0220E304
_021F5858: .word UNK04_0220E30C
_021F585C: .word 0x0000070D
_021F5860: .word 0x0000070E
_021F5864: .word UNK04_0220E318
_021F5868: .word UNK04_0220E32C
_021F586C: .word 0x00000712
_021F5870: .word 0x00000714
_021F5874: .word 0x00000715
_021F5878: .word UNK04_0220E340
_021F587C: .word UNK04_0220E34C
_021F5880: .word UNK04_0220E354
_021F5884: .word UNK04_0220E35C
_021F5888: .word UNK04_0220E364
_021F588C: .word UNK04_0220E36C
_021F5890: .word UNK04_0220E374
_021F5894: .word UNK04_0220E37C
_021F5898: .word UNK04_0220E384
_021F589C: .word UNK04_0220E248
	arm_func_end MOD04_021F50B8

	arm_func_start MOD04_021F58A0
MOD04_021F58A0: ; 0x021F58A0
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x10
	ldr r3, _021F5D08 ; =0x00000706
	mov r4, r0
	sub r1, r1, r3
	cmp r1, #0x18
	addls pc, pc, r1, lsl #2
	b _021F5CE4
_021F58C0: ; jump table
	b _021F59F8 ; case 0
	b _021F5CE4 ; case 1
	b _021F5924 ; case 2
	b _021F5CE4 ; case 3
	b _021F5CE4 ; case 4
	b _021F596C ; case 5
	b _021F5A24 ; case 6
	b _021F5A50 ; case 7
	b _021F5A7C ; case 8
	b _021F5CE4 ; case 9
	b _021F5AB4 ; case 10
	b _021F5CE4 ; case 11
	b _021F5AEC ; case 12
	b _021F5B24 ; case 13
	b _021F5B50 ; case 14
	b _021F5B7C ; case 15
	b _021F5CE4 ; case 16
	b _021F5CE4 ; case 17
	b _021F5BB0 ; case 18
	b _021F5BDC ; case 19
	b _021F5C08 ; case 20
	b _021F5C34 ; case 21
	b _021F5C60 ; case 22
	b _021F5C8C ; case 23
	b _021F5CB8 ; case 24
_021F5924:
	cmp r2, #0
	bge _021F5940
	ldr r1, _021F5D0C ; =UNK04_0220E38C
	bl MOD04_021FAEEC
	add sp, sp, #0x10
	mov r0, #2
	ldmia sp!, {r4, pc}
_021F5940:
	ldr r1, _021F5D10 ; =UNK04_0220E244
	add r0, sp, #0
	bl sprintf
	ldr r1, _021F5D14 ; =UNK04_0220E2C4
	add r2, sp, #0
	mov r0, r4
	bl MOD04_021F5DB8
	cmp r0, #0
	beq _021F5CFC
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
_021F596C:
	cmp r2, #0x500
	beq _021F5990
	ldr r1, _021F5D18 ; =0x00000501
	cmp r2, r1
	beq _021F59AC
	ldr r1, _021F5D1C ; =0x00000502
	cmp r2, r1
	beq _021F59C8
	b _021F59E4
_021F5990:
	ldr r1, _021F5D20 ; =UNK04_0220E304
	ldr r2, _021F5D24 ; =UNK04_0220E2F8
	bl MOD04_021F5DB8
	cmp r0, #0
	beq _021F5CFC
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
_021F59AC:
	ldr r1, _021F5D20 ; =UNK04_0220E304
	ldr r2, _021F5D28 ; =UNK04_0220E2FC
	bl MOD04_021F5DB8
	cmp r0, #0
	beq _021F5CFC
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
_021F59C8:
	ldr r1, _021F5D20 ; =UNK04_0220E304
	ldr r2, _021F5D2C ; =UNK04_0220E300
	bl MOD04_021F5DB8
	cmp r0, #0
	beq _021F5CFC
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
_021F59E4:
	ldr r1, _021F5D30 ; =UNK04_0220E3A0
	bl MOD04_021FAEEC
	add sp, sp, #0x10
	mov r0, #2
	ldmia sp!, {r4, pc}
_021F59F8:
	ldr r1, _021F5D10 ; =UNK04_0220E244
	add r0, sp, #0
	bl sprintf
	ldr r1, _021F5D34 ; =UNK04_0220E30C
	add r2, sp, #0
	mov r0, r4
	bl MOD04_021F5DB8
	cmp r0, #0
	beq _021F5CFC
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
_021F5A24:
	ldr r1, _021F5D10 ; =UNK04_0220E244
	add r0, sp, #0
	bl sprintf
	ldr r1, _021F5D38 ; =UNK04_0220E3B0
	add r2, sp, #0
	mov r0, r4
	bl MOD04_021F5D78
	cmp r0, #0
	beq _021F5CFC
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
_021F5A50:
	ldr r1, _021F5D10 ; =UNK04_0220E244
	add r0, sp, #0
	bl sprintf
	ldr r1, _021F5D3C ; =UNK04_0220E3C0
	add r2, sp, #0
	mov r0, r4
	bl MOD04_021F5D78
	cmp r0, #0
	beq _021F5CFC
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
_021F5A7C:
	mov r0, r2, asr #3
	add r2, r2, r0, lsr #28
	ldr r1, _021F5D10 ; =UNK04_0220E244
	add r0, sp, #0
	mov r2, r2, asr #4
	bl sprintf
	ldr r1, _021F5D40 ; =UNK04_0220E3CC
	add r2, sp, #0
	mov r0, r4
	bl MOD04_021F5D78
	cmp r0, #0
	beq _021F5CFC
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
_021F5AB4:
	mov r0, r2, asr #1
	add r2, r2, r0, lsr #30
	ldr r1, _021F5D10 ; =UNK04_0220E244
	add r0, sp, #0
	mov r2, r2, asr #2
	bl sprintf
	ldr r1, _021F5D44 ; =UNK04_0220E3D8
	add r2, sp, #0
	mov r0, r4
	bl MOD04_021F5D78
	cmp r0, #0
	beq _021F5CFC
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
_021F5AEC:
	mov r0, r2, asr #1
	add r2, r2, r0, lsr #30
	ldr r1, _021F5D10 ; =UNK04_0220E244
	add r0, sp, #0
	mov r2, r2, asr #2
	bl sprintf
	ldr r1, _021F5D48 ; =UNK04_0220E3E8
	add r2, sp, #0
	mov r0, r4
	bl MOD04_021F5D78
	cmp r0, #0
	beq _021F5CFC
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
_021F5B24:
	ldr r1, _021F5D10 ; =UNK04_0220E244
	add r0, sp, #0
	bl sprintf
	ldr r1, _021F5D4C ; =UNK04_0220E3F8
	add r2, sp, #0
	mov r0, r4
	bl MOD04_021F5D78
	cmp r0, #0
	beq _021F5CFC
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
_021F5B50:
	ldr r1, _021F5D10 ; =UNK04_0220E244
	add r0, sp, #0
	bl sprintf
	ldr r1, _021F5D50 ; =UNK04_0220E408
	add r2, sp, #0
	mov r0, r4
	bl MOD04_021F5D78
	cmp r0, #0
	beq _021F5CFC
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
_021F5B7C:
	ldr r1, _021F5D10 ; =UNK04_0220E244
	cmp r2, #0
	movne r2, #1
	add r0, sp, #0
	bl sprintf
	ldr r1, _021F5D54 ; =UNK04_0220E41C
	add r2, sp, #0
	mov r0, r4
	bl MOD04_021F5D78
	cmp r0, #0
	beq _021F5CFC
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
_021F5BB0:
	ldr r1, _021F5D10 ; =UNK04_0220E244
	add r0, sp, #0
	bl sprintf
	ldr r1, _021F5D58 ; =UNK04_0220E354
	add r2, sp, #0
	mov r0, r4
	bl MOD04_021F5DB8
	cmp r0, #0
	beq _021F5CFC
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
_021F5BDC:
	ldr r1, _021F5D10 ; =UNK04_0220E244
	add r0, sp, #0
	bl sprintf
	ldr r1, _021F5D5C ; =UNK04_0220E35C
	add r2, sp, #0
	mov r0, r4
	bl MOD04_021F5DB8
	cmp r0, #0
	beq _021F5CFC
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
_021F5C08:
	ldr r1, _021F5D10 ; =UNK04_0220E244
	add r0, sp, #0
	bl sprintf
	ldr r1, _021F5D60 ; =UNK04_0220E364
	add r2, sp, #0
	mov r0, r4
	bl MOD04_021F5DB8
	cmp r0, #0
	beq _021F5CFC
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
_021F5C34:
	ldr r1, _021F5D10 ; =UNK04_0220E244
	add r0, sp, #0
	bl sprintf
	ldr r1, _021F5D64 ; =UNK04_0220E36C
	add r2, sp, #0
	mov r0, r4
	bl MOD04_021F5DB8
	cmp r0, #0
	beq _021F5CFC
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
_021F5C60:
	ldr r1, _021F5D10 ; =UNK04_0220E244
	add r0, sp, #0
	bl sprintf
	ldr r1, _021F5D68 ; =UNK04_0220E374
	add r2, sp, #0
	mov r0, r4
	bl MOD04_021F5DB8
	cmp r0, #0
	beq _021F5CFC
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
_021F5C8C:
	ldr r1, _021F5D10 ; =UNK04_0220E244
	add r0, sp, #0
	bl sprintf
	ldr r1, _021F5D6C ; =UNK04_0220E37C
	add r2, sp, #0
	mov r0, r4
	bl MOD04_021F5DB8
	cmp r0, #0
	beq _021F5CFC
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
_021F5CB8:
	ldr r1, _021F5D10 ; =UNK04_0220E244
	add r0, sp, #0
	bl sprintf
	ldr r1, _021F5D70 ; =UNK04_0220E384
	add r2, sp, #0
	mov r0, r4
	bl MOD04_021F5DB8
	cmp r0, #0
	beq _021F5CFC
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
_021F5CE4:
	ldr r1, _021F5D74 ; =UNK04_0220E248
	mov r0, r4
	bl MOD04_021FAEEC
	add sp, sp, #0x10
	mov r0, #2
	ldmia sp!, {r4, pc}
_021F5CFC:
	mov r0, #0
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
	.align 2, 0
_021F5D08: .word 0x00000706
_021F5D0C: .word UNK04_0220E38C
_021F5D10: .word UNK04_0220E244
_021F5D14: .word UNK04_0220E2C4
_021F5D18: .word 0x00000501
_021F5D1C: .word 0x00000502
_021F5D20: .word UNK04_0220E304
_021F5D24: .word UNK04_0220E2F8
_021F5D28: .word UNK04_0220E2FC
_021F5D2C: .word UNK04_0220E300
_021F5D30: .word UNK04_0220E3A0
_021F5D34: .word UNK04_0220E30C
_021F5D38: .word UNK04_0220E3B0
_021F5D3C: .word UNK04_0220E3C0
_021F5D40: .word UNK04_0220E3CC
_021F5D44: .word UNK04_0220E3D8
_021F5D48: .word UNK04_0220E3E8
_021F5D4C: .word UNK04_0220E3F8
_021F5D50: .word UNK04_0220E408
_021F5D54: .word UNK04_0220E41C
_021F5D58: .word UNK04_0220E354
_021F5D5C: .word UNK04_0220E35C
_021F5D60: .word UNK04_0220E364
_021F5D64: .word UNK04_0220E36C
_021F5D68: .word UNK04_0220E374
_021F5D6C: .word UNK04_0220E37C
_021F5D70: .word UNK04_0220E384
_021F5D74: .word UNK04_0220E248
	arm_func_end MOD04_021F58A0

	arm_func_start MOD04_021F5D78
MOD04_021F5D78: ; 0x021F5D78
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r4, [r6]
	mov r5, r2
	mov r2, r1
	add r1, r4, #0x450
	bl MOD04_021F2F9C
	cmp r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
	mov r0, r6
	mov r2, r5
	add r1, r4, #0x450
	bl MOD04_021F2F9C
	cmp r0, #0
	moveq r0, #0
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end MOD04_021F5D78

	arm_func_start MOD04_021F5DB8
MOD04_021F5DB8: ; 0x021F5DB8
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r4, [r6]
	mov r5, r2
	mov r2, r1
	add r1, r4, #0x440
	bl MOD04_021F2F9C
	cmp r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
	mov r0, r6
	mov r2, r5
	add r1, r4, #0x440
	bl MOD04_021F2F9C
	cmp r0, #0
	moveq r0, #0
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end MOD04_021F5DB8

	arm_func_start MOD04_021F5DF8
MOD04_021F5DF8: ; 0x021F5DF8
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r4, [r6]
	mov r5, r1
	ldr r2, [r4, #0x448]
	cmp r2, #0
	ble _021F5E54
	ldr r2, _021F5EB0 ; =UNK04_0220E42C
	bl MOD04_021F2F9C
	ldr r2, [r4, #0x198]
	mov r0, r6
	mov r1, r5
	bl MOD04_021F2F64
	ldr r2, [r4, #0x440]
	mov r0, r6
	mov r1, r5
	bl MOD04_021F2F9C
	ldr r2, _021F5EB4 ; =UNK04_0220E23C
	mov r0, r6
	mov r1, r5
	bl MOD04_021F2F9C
	mov r0, #0
	str r0, [r4, #0x448]
_021F5E54:
	ldr r0, [r4, #0x458]
	cmp r0, #0
	ble _021F5EA8
	ldr r2, _021F5EB8 ; =UNK04_0220E444
	mov r0, r6
	mov r1, r5
	bl MOD04_021F2F9C
	ldr r2, [r4, #0x198]
	mov r0, r6
	mov r1, r5
	bl MOD04_021F2F64
	ldr r2, [r4, #0x450]
	mov r0, r6
	mov r1, r5
	bl MOD04_021F2F9C
	ldr r2, _021F5EB4 ; =UNK04_0220E23C
	mov r0, r6
	mov r1, r5
	bl MOD04_021F2F9C
	mov r0, #0
	str r0, [r4, #0x458]
_021F5EA8:
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_021F5EB0: .word UNK04_0220E42C
_021F5EB4: .word UNK04_0220E23C
_021F5EB8: .word UNK04_0220E444
	arm_func_end MOD04_021F5DF8

	arm_func_start MOD04_021F5EBC
MOD04_021F5EBC: ; 0x021F5EBC
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x26c
	mov r4, r2
	mov sl, r0
	mov fp, r1
	mov r1, r4
	mov r2, #1
	ldr r8, [sl]
	bl MOD04_021FB2F8
	cmp r0, #0
	addne sp, sp, #0x26c
	movne r0, #4
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, _021F6648 ; =UNK04_0220E458
	mov r0, r4
	mov r2, #4
	bl strncmp
	cmp r0, #0
	beq _021F5F34
	ldr r2, _021F664C ; =UNK04_0220E460
	mov r0, sl
	mov r1, #1
	bl MOD04_021FAF00
	mov r0, sl
	mov r1, #3
	mov r2, #1
	bl MOD04_021F3500
	add sp, sp, #0x26c
	mov r0, #3
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F5F34:
	ldr r1, _021F6650 ; =UNK04_0220E228
	add r2, sp, #0x14
	mov r0, r4
	mov r3, #0x40
	bl MOD04_021FB1F0
	cmp r0, #0
	bne _021F5F7C
	ldr r2, _021F664C ; =UNK04_0220E460
	mov r0, sl
	mov r1, #1
	bl MOD04_021FAF00
	mov r0, sl
	mov r1, #3
	mov r2, #1
	bl MOD04_021F3500
	add sp, sp, #0x26c
	mov r0, #3
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F5F7C:
	add r0, sp, #0x14
	bl atol
	mov sb, r0
	cmp sb, #0
	bgt _021F5FA4
	ldr r0, _021F6654 ; =UNK04_0220E490
	ldr r1, _021F6658 ; =UNK04_0220E4A0
	ldr r3, _021F665C ; =0x0000015A
	mov r2, #0
	bl __msl_assertion_failed
_021F5FA4:
	add r2, sp, #8
	mov r0, sl
	mov r1, sb
	bl MOD04_021F85E8
	mov r0, #0
	add r6, sp, #0x12c
	mov r1, r0
	mov r2, r0
	mov r3, r0
	mov r5, #7
_021F5FCC:
	stmia r6!, {r0, r1, r2, r3}
	stmia r6!, {r0, r1, r2, r3}
	subs r5, r5, #1
	bne _021F5FCC
	stmia r6!, {r0, r1, r2, r3}
	add r3, sp, #0x73
	add r1, sp, #0xbb
	add r2, sp, #0x54
	add r5, sp, #0x88
	add r0, sp, #0xda
	str r3, [sp, #0x130]
	add r3, sp, #0x21c
	str r1, [sp, #0x138]
	str r5, [sp, #0x134]
	add r5, sp, #0xf9
	str r0, [sp, #0x13c]
	str r3, [sp, #0x140]
	ldr r1, _021F6660 ; =UNK04_0220E274
	mov r0, r4
	mov r3, #0x1f
	str r2, [sp, #0x12c]
	str r5, [sp, #0x1f4]
	bl MOD04_021FB1F0
	cmp r0, #0
	ldreq r0, [sp, #0x12c]
	moveq r1, #0
	streqb r1, [r0]
	ldr r2, [sp, #0x130]
	ldr r1, _021F6664 ; =UNK04_0220E27C
	mov r0, r4
	mov r3, #0x15
	bl MOD04_021FB1F0
	cmp r0, #0
	ldreq r0, [sp, #0x130]
	moveq r1, #0
	streqb r1, [r0]
	ldr r2, [sp, #0x134]
	ldr r1, _021F6668 ; =UNK04_0220E28C
	mov r0, r4
	mov r3, #0x33
	bl MOD04_021FB1F0
	cmp r0, #0
	ldreq r0, [sp, #0x134]
	moveq r1, #0
	streqb r1, [r0]
	ldr r2, [sp, #0x138]
	ldr r1, _021F666C ; =UNK04_0220E2A0
	mov r0, r4
	mov r3, #0x1f
	bl MOD04_021FB1F0
	cmp r0, #0
	ldreq r0, [sp, #0x138]
	moveq r1, #0
	streqb r1, [r0]
	ldr r2, [sp, #0x13c]
	ldr r1, _021F6670 ; =UNK04_0220E2AC
	mov r0, r4
	mov r3, #0x1f
	bl MOD04_021FB1F0
	cmp r0, #0
	ldreq r0, [sp, #0x13c]
	moveq r1, #0
	streqb r1, [r0]
	ldr r1, _021F6674 ; =UNK04_0220E30C
	add r2, sp, #0x14
	mov r0, r4
	mov r3, #0x40
	bl MOD04_021FB1F0
	cmp r0, #0
	mvneq r0, #0
	streq r0, [sp, #0x144]
	beq _021F60F8
	add r0, sp, #0x14
	bl atol
	str r0, [sp, #0x144]
_021F60F8:
	ldr r2, [sp, #0x140]
	ldr r1, _021F6678 ; =UNK04_0220E2B8
	mov r0, r4
	mov r3, #0x4c
	bl MOD04_021FB1F0
	cmp r0, #0
	ldreq r0, [sp, #0x140]
	moveq r1, #0
	streqb r1, [r0]
	ldr r1, _021F667C ; =UNK04_0220E2C4
	add r2, sp, #0x148
	mov r0, r4
	mov r3, #0xb
	bl MOD04_021FB1F0
	cmp r0, #0
	moveq r0, #0
	add r2, sp, #0x100
	streqb r0, [sp, #0x148]
	ldr r1, _021F6680 ; =UNK04_0220E2E8
	add r2, r2, #0x53
	mov r0, r4
	mov r3, #3
	bl MOD04_021FB1F0
	cmp r0, #0
	moveq r0, #0
	streqb r0, [sp, #0x153]
	ldr r1, _021F6684 ; =UNK04_0220E4AC
	add r2, sp, #0x14
	mov r0, r4
	mov r3, #0x40
	bl MOD04_021FB1F0
	cmp r0, #0
	moveq r0, #0
	streq r0, [sp, #0x158]
	beq _021F6194
	add r0, sp, #0x14
	bl atod
	bl _d2f
	str r0, [sp, #0x158]
_021F6194:
	ldr r1, _021F6688 ; =UNK04_0220E4B4
	add r2, sp, #0x14
	mov r0, r4
	mov r3, #0x40
	bl MOD04_021FB1F0
	cmp r0, #0
	moveq r0, #0
	streq r0, [sp, #0x15c]
	beq _021F61C8
	add r0, sp, #0x14
	bl atod
	bl _d2f
	str r0, [sp, #0x15c]
_021F61C8:
	ldr r1, _021F668C ; =UNK04_0220E4BC
	add r2, sp, #0x160
	mov r0, r4
	mov r3, #0x80
	bl MOD04_021FB1F0
	cmp r0, #0
	moveq r0, #0
	streqb r0, [sp, #0x160]
	ldr r1, _021F6690 ; =UNK04_0220E258
	add r2, sp, #0x14
	mov r0, r4
	mov r3, #0x40
	bl MOD04_021FB1F0
	cmp r0, #0
	moveq r0, #0
	streq r0, [sp, #0x1e0]
	streq r0, [sp, #0x1e4]
	streq r0, [sp, #0x1e8]
	beq _021F6244
	add r0, sp, #0x14
	bl atol
	add r5, sp, #0x1e8
	mov r1, r0
	add r2, sp, #0x1e0
	add r3, sp, #0x1e4
	mov r0, sl
	str r5, [sp]
	bl MOD04_021F68D8
	cmp r0, #0
	addne sp, sp, #0x26c
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F6244:
	ldr r1, _021F6694 ; =UNK04_0220E304
	add r2, sp, #0x14
	mov r0, r4
	mov r3, #0x40
	bl MOD04_021FB1F0
	cmp r0, #0
	ldreq r0, _021F6698 ; =0x00000502
	streq r0, [sp, #0x1ec]
	beq _021F6290
	ldrsb r0, [sp, #0x14]
	cmp r0, #0x30
	moveq r0, #0x500
	streq r0, [sp, #0x1ec]
	beq _021F6290
	cmp r0, #0x31
	ldreq r0, _021F669C ; =0x00000501
	streq r0, [sp, #0x1ec]
	ldrne r0, _021F6698 ; =0x00000502
	strne r0, [sp, #0x1ec]
_021F6290:
	ldr r1, _021F66A0 ; =UNK04_0220E4C4
	add r2, sp, #0x14
	mov r0, r4
	mov r3, #0x40
	bl MOD04_021FB1F0
	cmp r0, #0
	mvneq r0, #0
	streq r0, [sp, #0x1f0]
	beq _021F62C0
	add r0, sp, #0x14
	bl atol
	str r0, [sp, #0x1f0]
_021F62C0:
	ldr r2, [sp, #0x1f4]
	ldr r1, _021F66A4 ; =UNK04_0220E34C
	mov r0, r4
	mov r3, #0x33
	bl MOD04_021FB1F0
	cmp r0, #0
	ldreq r0, [sp, #0x1f4]
	moveq r1, #0
	streqb r1, [r0]
	ldr r1, _021F66A8 ; =UNK04_0220E354
	add r2, sp, #0x14
	mov r0, r4
	mov r3, #0x40
	bl MOD04_021FB1F0
	cmp r0, #0
	moveq r0, #0
	streq r0, [sp, #0x1f8]
	beq _021F6314
	add r0, sp, #0x14
	bl atol
	str r0, [sp, #0x1f8]
_021F6314:
	ldr r1, _021F66AC ; =UNK04_0220E35C
	add r2, sp, #0x14
	mov r0, r4
	mov r3, #0x40
	bl MOD04_021FB1F0
	cmp r0, #0
	moveq r0, #0
	streq r0, [sp, #0x1fc]
	beq _021F6344
	add r0, sp, #0x14
	bl atol
	str r0, [sp, #0x1fc]
_021F6344:
	ldr r1, _021F66B0 ; =UNK04_0220E364
	add r2, sp, #0x14
	mov r0, r4
	mov r3, #0x40
	bl MOD04_021FB1F0
	cmp r0, #0
	moveq r0, #0
	streq r0, [sp, #0x200]
	beq _021F6374
	add r0, sp, #0x14
	bl atol
	str r0, [sp, #0x200]
_021F6374:
	ldr r1, _021F66B4 ; =UNK04_0220E36C
	add r2, sp, #0x14
	mov r0, r4
	mov r3, #0x40
	bl MOD04_021FB1F0
	cmp r0, #0
	moveq r0, #0
	streq r0, [sp, #0x204]
	beq _021F63A4
	add r0, sp, #0x14
	bl atol
	str r0, [sp, #0x204]
_021F63A4:
	ldr r1, _021F66B8 ; =UNK04_0220E374
	add r2, sp, #0x14
	mov r0, r4
	mov r3, #0x40
	bl MOD04_021FB1F0
	cmp r0, #0
	moveq r0, #0
	streq r0, [sp, #0x208]
	beq _021F63D4
	add r0, sp, #0x14
	bl atol
	str r0, [sp, #0x208]
_021F63D4:
	ldr r1, _021F66BC ; =UNK04_0220E37C
	add r2, sp, #0x14
	mov r0, r4
	mov r3, #0x40
	bl MOD04_021FB1F0
	cmp r0, #0
	moveq r0, #0
	streq r0, [sp, #0x20c]
	beq _021F6404
	add r0, sp, #0x14
	bl atol
	str r0, [sp, #0x20c]
_021F6404:
	ldr r1, _021F66C0 ; =UNK04_0220E384
	add r2, sp, #0x14
	mov r0, r4
	mov r3, #0x40
	bl MOD04_021FB1F0
	cmp r0, #0
	moveq r0, #0
	streq r0, [sp, #0x210]
	beq _021F6434
	add r0, sp, #0x14
	bl atol
	str r0, [sp, #0x210]
_021F6434:
	ldr r1, _021F66C4 ; =UNK04_0220E4CC
	add r2, sp, #0x14
	mov r0, r4
	mov r3, #0x40
	bl MOD04_021FB1F0
	cmp r0, #0
	moveq r0, #0
	streq r0, [sp, #0x214]
	beq _021F6464
	add r0, sp, #0x14
	bl atol
	str r0, [sp, #0x214]
_021F6464:
	ldr r1, _021F66C8 ; =UNK04_0220E4D4
	add r2, sp, #0x14
	mov r0, r4
	mov r3, #0x40
	bl MOD04_021FB1F0
	cmp r0, #0
	moveq r0, #0
	streq r0, [sp, #0x218]
	beq _021F6494
	add r0, sp, #0x14
	bl atol
	str r0, [sp, #0x218]
_021F6494:
	ldr r1, _021F66CC ; =UNK04_0220E4DC
	add r2, sp, #0x14
	mov r0, r4
	mov r3, #0x40
	bl MOD04_021FB1F0
	cmp r0, #0
	bne _021F64DC
	ldr r2, _021F664C ; =UNK04_0220E460
	mov r0, sl
	mov r1, #1
	bl MOD04_021FAF00
	mov r0, sl
	mov r1, #3
	mov r2, #1
	bl MOD04_021F3500
	add sp, sp, #0x26c
	mov r0, #3
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F64DC:
	ldr r7, [r8, #0x434]
	ldr r6, [r8, #0x100]
	cmp r7, #0
	beq _021F653C
	mov r5, #0x66
	mov r4, #1
_021F64F4:
	ldr r0, [r7, #0xc]
	cmp r0, sb
	bne _021F6530
	ldr r0, [r7]
	cmp r0, #0x65
	bne _021F6530
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _021F6528
	mov r0, sl
	mov r1, sb
	bl MOD04_021F8624
	str r0, [sp, #8]
_021F6528:
	mov r6, r4
	str r5, [r7]
_021F6530:
	ldr r7, [r7, #0x3c]
	cmp r7, #0
	bne _021F64F4
_021F653C:
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _021F6564
	ldr r0, [r8, #0x100]
	cmp r0, #0
	beq _021F6564
	mov r0, sl
	mov r1, sb
	bl MOD04_021F8624
	str r0, [sp, #8]
_021F6564:
	cmp r6, #0
	beq _021F6594
	ldr r0, [sp, #8]
	ldr r0, [r0, #0x18]
	bl MOD04_021DD82C
	ldr r1, [sp, #8]
	mov r2, #0
	add r0, sp, #0x14
	str r2, [r1, #0x18]
	bl MOD04_021F0208
	ldr r1, [sp, #8]
	str r0, [r1, #0x18]
_021F6594:
	ldr r0, [r8, #0x100]
	cmp r0, #0
	beq _021F65B0
	ldr r1, [sp, #8]
	add r2, sp, #0x12c
	mov r0, sl
	bl MOD04_021F4D88
_021F65B0:
	ldr r1, [fp, #0xc]
	ldr r0, [fp, #0x10]
	cmp r1, #0
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	beq _021F6630
	mov r0, #0x204
	bl MOD04_021DD860
	movs r4, r0
	bne _021F65F0
	ldr r1, _021F66D0 ; =UNK04_0220E200
	mov r0, sl
	bl MOD04_021FAEEC
	add sp, sp, #0x26c
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F65F0:
	add r0, sp, #0x12c
	mov r1, r4
	bl MOD04_021F66D4
	mov r0, #0
	str r0, [r4]
	str sb, [r4, #4]
	str fp, [sp]
	str r0, [sp, #4]
	add r1, sp, #0xc
	mov r0, sl
	mov r3, r4
	ldmia r1, {r1, r2}
	bl MOD04_021F3454
	cmp r0, #0
	addne sp, sp, #0x26c
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F6630:
	mov r0, sl
	mov r1, fp
	bl MOD04_021F6C84
	mov r0, #0
	add sp, sp, #0x26c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_021F6648: .word UNK04_0220E458
_021F664C: .word UNK04_0220E460
_021F6650: .word UNK04_0220E228
_021F6654: .word UNK04_0220E490
_021F6658: .word UNK04_0220E4A0
_021F665C: .word 0x0000015A
_021F6660: .word UNK04_0220E274
_021F6664: .word UNK04_0220E27C
_021F6668: .word UNK04_0220E28C
_021F666C: .word UNK04_0220E2A0
_021F6670: .word UNK04_0220E2AC
_021F6674: .word UNK04_0220E30C
_021F6678: .word UNK04_0220E2B8
_021F667C: .word UNK04_0220E2C4
_021F6680: .word UNK04_0220E2E8
_021F6684: .word UNK04_0220E4AC
_021F6688: .word UNK04_0220E4B4
_021F668C: .word UNK04_0220E4BC
_021F6690: .word UNK04_0220E258
_021F6694: .word UNK04_0220E304
_021F6698: .word 0x00000502
_021F669C: .word 0x00000501
_021F66A0: .word UNK04_0220E4C4
_021F66A4: .word UNK04_0220E34C
_021F66A8: .word UNK04_0220E354
_021F66AC: .word UNK04_0220E35C
_021F66B0: .word UNK04_0220E364
_021F66B4: .word UNK04_0220E36C
_021F66B8: .word UNK04_0220E374
_021F66BC: .word UNK04_0220E37C
_021F66C0: .word UNK04_0220E384
_021F66C4: .word UNK04_0220E4CC
_021F66C8: .word UNK04_0220E4D4
_021F66CC: .word UNK04_0220E4DC
_021F66D0: .word UNK04_0220E200
	arm_func_end MOD04_021F5EBC

	arm_func_start MOD04_021F66D4
MOD04_021F66D4: ; 0x021F66D4
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	mov r4, r1
	ldr r1, [r5]
	cmp r1, #0
	moveq r0, #0
	streqb r0, [r4, #8]
	beq _021F6704
	add r0, r4, #8
	mov r2, #0x1f
	bl MOD04_021FB3DC
_021F6704:
	ldr r1, [r5, #4]
	cmp r1, #0
	moveq r0, #0
	streqb r0, [r4, #0x27]
	beq _021F6724
	add r0, r4, #0x27
	mov r2, #0x15
	bl MOD04_021FB3DC
_021F6724:
	ldr r1, [r5, #8]
	cmp r1, #0
	moveq r0, #0
	streqb r0, [r4, #0x3c]
	beq _021F6744
	add r0, r4, #0x3c
	mov r2, #0x33
	bl MOD04_021FB3DC
_021F6744:
	ldr r1, [r5, #0xc]
	cmp r1, #0
	moveq r0, #0
	streqb r0, [r4, #0x6f]
	beq _021F6764
	add r0, r4, #0x6f
	mov r2, #0x1f
	bl MOD04_021FB3DC
_021F6764:
	ldr r1, [r5, #0x10]
	cmp r1, #0
	moveq r0, #0
	streqb r0, [r4, #0x8e]
	beq _021F6784
	add r0, r4, #0x8e
	mov r2, #0x1f
	bl MOD04_021FB3DC
_021F6784:
	ldr r1, [r5, #0x14]
	cmp r1, #0
	moveq r0, #0
	streqb r0, [r4, #0xad]
	beq _021F67A4
	add r0, r4, #0xad
	mov r2, #0x4c
	bl MOD04_021FB3DC
_021F67A4:
	ldr r3, [r5, #0x18]
	add r0, r4, #0x100
	add r1, r5, #0x1c
	mov r2, #0xb
	str r3, [r4, #0xfc]
	bl MOD04_021FB3DC
	ldr r0, _021F68D4 ; =0x0000010B
	add r1, r5, #0x27
	add r0, r4, r0
	mov r2, #3
	bl MOD04_021FB3DC
	ldr r0, [r5, #0x2c]
	adds r1, r5, #0x34
	str r0, [r4, #0x110]
	ldr r0, [r5, #0x30]
	str r0, [r4, #0x114]
	moveq r0, #0
	streqb r0, [r4, #0x118]
	beq _021F67FC
	add r0, r4, #0x118
	mov r2, #0x80
	bl MOD04_021FB3DC
_021F67FC:
	ldr r0, [r5, #0xb4]
	str r0, [r4, #0x198]
	ldr r0, [r5, #0xb8]
	str r0, [r4, #0x19c]
	ldr r0, [r5, #0xbc]
	str r0, [r4, #0x1a0]
	ldr r0, [r5, #0xc0]
	str r0, [r4, #0x1a4]
	ldr r0, [r5, #0xc4]
	str r0, [r4, #0x1a8]
	ldr r1, [r5, #0xc8]
	cmp r1, #0
	moveq r0, #0
	streqb r0, [r4, #0x1ac]
	beq _021F6844
	add r0, r4, #0x1ac
	mov r2, #0x33
	bl MOD04_021FB3DC
_021F6844:
	ldr r0, [r5, #0x18]
	str r0, [r4, #0xfc]
	ldr r0, [r5, #0x2c]
	str r0, [r4, #0x110]
	ldr r0, [r5, #0x30]
	str r0, [r4, #0x114]
	ldr r0, [r5, #0xb4]
	str r0, [r4, #0x198]
	ldr r0, [r5, #0xb8]
	str r0, [r4, #0x19c]
	ldr r0, [r5, #0xbc]
	str r0, [r4, #0x1a0]
	ldr r0, [r5, #0xc0]
	str r0, [r4, #0x1a4]
	ldr r0, [r5, #0xc4]
	str r0, [r4, #0x1a8]
	ldr r0, [r5, #0xcc]
	str r0, [r4, #0x1e0]
	ldr r0, [r5, #0xd0]
	str r0, [r4, #0x1e4]
	ldr r0, [r5, #0xd4]
	str r0, [r4, #0x1e8]
	ldr r0, [r5, #0xd8]
	str r0, [r4, #0x1ec]
	ldr r0, [r5, #0xdc]
	str r0, [r4, #0x1f0]
	ldr r0, [r5, #0xe0]
	str r0, [r4, #0x1f4]
	ldr r0, [r5, #0xe4]
	str r0, [r4, #0x1f8]
	ldr r0, [r5, #0xe8]
	str r0, [r4, #0x1fc]
	ldr r0, [r5, #0xec]
	str r0, [r4, #0x200]
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_021F68D4: .word 0x0000010B
	arm_func_end MOD04_021F66D4

	arm_func_start MOD04_021F68D8
MOD04_021F68D8: ; 0x021F68D8
	stmdb sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #4
	ldr ip, _021F6978 ; =0x0000FFFF
	mov r4, r1, asr #0x18
	mov lr, r1, asr #0x10
	and r7, r4, #0xff
	mov r4, r0
	and r6, lr, #0xff
	and r5, r1, ip
	mov sb, r2
	mov r0, r7
	mov r1, r6
	mov r2, r5
	mov r8, r3
	bl MOD04_021F6988
	cmp r0, #0
	bne _021F6930
	ldr r0, _021F697C ; =UNK04_0220E4E4
	ldr r1, _021F6980 ; =UNK04_0220E4A0
	mov r2, #0
	mov r3, #0xb7
	bl __msl_assertion_failed
_021F6930:
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl MOD04_021F6988
	cmp r0, #0
	strne r7, [sb]
	ldrne r0, [sp, #0x20]
	strne r6, [r8]
	strne r5, [r0]
	addne sp, sp, #4
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, pc}
	ldr r1, _021F6984 ; =UNK04_0220E4FC
	mov r0, r4
	bl MOD04_021FAEEC
	mov r0, #2
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_021F6978: .word 0x0000FFFF
_021F697C: .word UNK04_0220E4E4
_021F6980: .word UNK04_0220E4A0
_021F6984: .word UNK04_0220E4FC
	arm_func_end MOD04_021F68D8

	arm_func_start MOD04_021F6988
MOD04_021F6988: ; 0x021F6988
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	cmp r0, #0
	bne _021F69B0
	cmp r1, #0
	bne _021F69B0
	cmp r2, #0
	addeq sp, sp, #4
	moveq r0, #1
	ldmeqia sp!, {r4, r5, pc}
_021F69B0:
	cmp r0, #0
	blt _021F69C8
	cmp r1, #0
	blt _021F69C8
	cmp r2, #0
	bge _021F69D4
_021F69C8:
	add sp, sp, #4
	mov r0, #0
	ldmia sp!, {r4, r5, pc}
_021F69D4:
	cmp r1, #0xc
	addls pc, pc, r1, lsl #2
	b _021F6ACC
_021F69E0: ; jump table
	b _021F6A14 ; case 0
	b _021F6A28 ; case 1
	b _021F6A50 ; case 2
	b _021F6A28 ; case 3
	b _021F6A3C ; case 4
	b _021F6A28 ; case 5
	b _021F6A3C ; case 6
	b _021F6A28 ; case 7
	b _021F6A28 ; case 8
	b _021F6A3C ; case 9
	b _021F6A28 ; case 10
	b _021F6A3C ; case 11
	b _021F6A28 ; case 12
_021F6A14:
	cmp r0, #0
	beq _021F6AD8
	add sp, sp, #4
	mov r0, #0
	ldmia sp!, {r4, r5, pc}
_021F6A28:
	cmp r0, #0x1f
	ble _021F6AD8
	add sp, sp, #4
	mov r0, #0
	ldmia sp!, {r4, r5, pc}
_021F6A3C:
	cmp r0, #0x1e
	ble _021F6AD8
	add sp, sp, #4
	mov r0, #0
	ldmia sp!, {r4, r5, pc}
_021F6A50:
	mov r4, r2, lsr #0x1f
	rsb r3, r4, r2, lsl #30
	adds r3, r4, r3, ror #30
	bne _021F6A80
	ldr ip, _021F6B3C ; =0x51EB851F
	ldr lr, _021F6B40 ; =0x00000064
	smull r3, r5, ip, r2
	mov r5, r5, asr #5
	add r5, r4, r5
	smull r3, ip, lr, r5
	subs r5, r2, r3
	bne _021F6AA4
_021F6A80:
	ldr lr, _021F6B3C ; =0x51EB851F
	mov r3, r2, lsr #0x1f
	smull ip, r4, lr, r2
	mov r4, r4, asr #7
	ldr lr, _021F6B44 ; =0x00000190
	add r4, r3, r4
	smull r3, ip, lr, r4
	subs r4, r2, r3
	bne _021F6AB8
_021F6AA4:
	cmp r0, #0x1d
	ble _021F6AD8
	add sp, sp, #4
	mov r0, #0
	ldmia sp!, {r4, r5, pc}
_021F6AB8:
	cmp r0, #0x1c
	ble _021F6AD8
	add sp, sp, #4
	mov r0, #0
	ldmia sp!, {r4, r5, pc}
_021F6ACC:
	add sp, sp, #4
	mov r0, #0
	ldmia sp!, {r4, r5, pc}
_021F6AD8:
	ldr r3, _021F6B48 ; =0x0000076C
	cmp r2, r3
	addlt sp, sp, #4
	movlt r0, #0
	ldmltia sp!, {r4, r5, pc}
	ldr r3, _021F6B4C ; =0x0000081F
	cmp r2, r3
	addgt sp, sp, #4
	movgt r0, #0
	ldmgtia sp!, {r4, r5, pc}
	cmp r2, r3
	bne _021F6B30
	cmp r1, #6
	addgt sp, sp, #4
	movgt r0, #0
	ldmgtia sp!, {r4, r5, pc}
	cmp r1, #6
	bne _021F6B30
	cmp r0, #6
	addgt sp, sp, #4
	movgt r0, #0
	ldmgtia sp!, {r4, r5, pc}
_021F6B30:
	mov r0, #1
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_021F6B3C: .word 0x51EB851F
_021F6B40: .word 0x00000064
_021F6B44: .word 0x00000190
_021F6B48: .word 0x0000076C
_021F6B4C: .word 0x0000081F
	arm_func_end MOD04_021F6988

	arm_func_start MOD04_021F6B50
MOD04_021F6B50: ; 0x021F6B50
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r1
	ldr r3, [r5]
	mov r4, #0
	cmp r3, #4
	addls pc, pc, r3, lsl #2
	b _021F6BB4
_021F6B70: ; jump table
	b _021F6B84 ; case 0
	b _021F6B90 ; case 1
	b _021F6B9C ; case 2
	b _021F6BB4 ; case 3
	b _021F6BA8 ; case 4
_021F6B84:
	bl MOD04_021F3934
	mov r4, r0
	b _021F6BD4
_021F6B90:
	bl MOD04_021F8710
	mov r4, r0
	b _021F6BD4
_021F6B9C:
	bl MOD04_021F5EBC
	mov r4, r0
	b _021F6BD4
_021F6BA8:
	bl MOD04_021FADE8
	mov r4, r0
	b _021F6BD4
_021F6BB4:
	ldr r1, _021F6BE8 ; =UNK04_0220E50C
	mov r2, r3
	bl MOD04_021FB3D0
	ldr r0, _021F6BEC ; =UNK04_0220E554
	ldr r1, _021F6BF0 ; =UNK04_0220E558
	ldr r3, _021F6BF4 ; =0x00000146
	mov r2, #0
	bl __msl_assertion_failed
_021F6BD4:
	cmp r4, #0
	strne r4, [r5, #0x1c]
	mov r0, r4
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_021F6BE8: .word UNK04_0220E50C
_021F6BEC: .word UNK04_0220E554
_021F6BF0: .word UNK04_0220E558
_021F6BF4: .word 0x00000146
	arm_func_end MOD04_021F6B50

	arm_func_start MOD04_021F6BF8
MOD04_021F6BF8: ; 0x021F6BF8
	ldr r0, [r0]
	ldr r1, [r0, #0x424]
	cmp r1, #0
	beq _021F6C30
_021F6C08:
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _021F6C24
	ldr r0, [r1]
	cmp r0, #3
	movne r0, #1
	bxne lr
_021F6C24:
	ldr r1, [r1, #0x20]
	cmp r1, #0
	bne _021F6C08
_021F6C30:
	mov r0, #0
	bx lr
	arm_func_end MOD04_021F6BF8

	arm_func_start MOD04_021F6C38
MOD04_021F6C38: ; 0x021F6C38
	ldr r0, [r0]
	ldr r3, [r0, #0x424]
	cmp r3, #0
	beq _021F6C70
_021F6C48:
	ldr r0, [r3, #0x18]
	cmp r0, r2
	bne _021F6C64
	cmp r1, #0
	strne r3, [r1]
	mov r0, #1
	bx lr
_021F6C64:
	ldr r3, [r3, #0x20]
	cmp r3, #0
	bne _021F6C48
_021F6C70:
	cmp r1, #0
	movne r0, #0
	strne r0, [r1]
	mov r0, #0
	bx lr
	arm_func_end MOD04_021F6C38

	arm_func_start MOD04_021F6C84
MOD04_021F6C84: ; 0x021F6C84
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr ip, [r0]
	mov r3, #0
	ldr r2, [ip, #0x424]
	cmp r2, #0
	addeq sp, sp, #4
	ldmeqia sp!, {pc}
_021F6CA4:
	cmp r2, r1
	bne _021F6CCC
	cmp r3, #0
	ldreq r2, [r2, #0x20]
	streq r2, [ip, #0x424]
	ldrne r2, [r1, #0x20]
	strne r2, [r3, #0x20]
	bl MOD04_021F6CE4
	add sp, sp, #4
	ldmfd sp!, {pc}
_021F6CCC:
	mov r3, r2
	ldr r2, [r2, #0x20]
	cmp r2, #0
	bne _021F6CA4
	add sp, sp, #4
	ldmfd sp!, {pc}
	arm_func_end MOD04_021F6C84

	arm_func_start MOD04_021F6CE4
MOD04_021F6CE4: ; 0x021F6CE4
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r1
	ldr r1, [r5]
	ldr r2, [r0]
	cmp r1, #3
	bne _021F6D64
	ldr r0, [r2, #0x210]
	ldr r4, [r5, #4]
	sub r0, r0, #1
	str r0, [r2, #0x210]
	ldr r0, [r2, #0x210]
	cmp r0, #0
	bge _021F6D30
	ldr r0, _021F6D84 ; =UNK04_0220E568
	ldr r1, _021F6D88 ; =UNK04_0220E558
	mov r2, #0
	mov r3, #0xb6
	bl __msl_assertion_failed
_021F6D30:
	ldr r0, [r4, #4]
	mov r1, #2
	bl MOD04_021EFD80
	ldr r0, [r4, #4]
	bl MOD04_021EFD9C
	ldr r0, [r4, #0x18]
	bl MOD04_021DD82C
	mov r0, #0
	str r0, [r4, #0x18]
	ldr r0, [r4, #8]
	bl MOD04_021DD82C
	mov r0, #0
	str r0, [r4, #8]
_021F6D64:
	ldr r0, [r5, #4]
	bl MOD04_021DD82C
	mov r1, #0
	mov r0, r5
	str r1, [r5, #4]
	bl MOD04_021DD82C
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_021F6D84: .word UNK04_0220E568
_021F6D88: .word UNK04_0220E558
	arm_func_end MOD04_021F6CE4

	arm_func_start MOD04_021F6D8C
MOD04_021F6D8C: ; 0x021F6D8C
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	mov r0, #0x24
	mov r7, r1
	mov r6, r2
	mov r5, r3
	ldr r4, [r8]
	bl MOD04_021DD860
	cmp r0, #0
	bne _021F6DC8
	ldr r1, _021F6E40 ; =UNK04_0220E588
	mov r0, r8
	bl MOD04_021FAEEC
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_021F6DC8:
	str r7, [r0]
	ldr r1, [sp, #0x18]
	str r6, [r0, #4]
	str r1, [r0, #8]
	mov r1, #0
	str r1, [r0, #0x14]
	cmp r7, #0
	moveq r1, #1
	streq r1, [r0, #0x18]
	beq _021F6E10
	ldr r2, [r4, #0x20c]
	add r1, r2, #1
	str r1, [r4, #0x20c]
	str r2, [r0, #0x18]
	ldr r1, [r4, #0x20c]
	cmp r1, #2
	movlt r1, #2
	strlt r1, [r4, #0x20c]
_021F6E10:
	mov r3, #0
	ldr r2, [sp, #0x1c]
	str r3, [r0, #0x1c]
	ldr r1, [sp, #0x20]
	str r2, [r0, #0xc]
	str r1, [r0, #0x10]
	ldr r1, [r4, #0x424]
	str r1, [r0, #0x20]
	str r0, [r4, #0x424]
	str r0, [r5]
	mov r0, r3
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_021F6E40: .word UNK04_0220E588
	arm_func_end MOD04_021F6D8C

	arm_func_start MOD04_021F6E44
MOD04_021F6E44: ; 0x021F6E44
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x14
	movs r7, r0
	mov r6, r1
	ldr r5, [r7]
	bne _021F6E70
	ldr r0, _021F7168 ; =UNK04_0220E598
	ldr r1, _021F716C ; =UNK04_0220E558
	mov r2, #0
	mov r3, #0x22
	bl __msl_assertion_failed
_021F6E70:
	ldr r0, [r7]
	cmp r0, #0
	bne _021F6E90
	ldr r0, _021F7170 ; =UNK04_0220E5AC
	ldr r1, _021F716C ; =UNK04_0220E558
	mov r2, #0
	mov r3, #0x23
	bl __msl_assertion_failed
_021F6E90:
	cmp r6, #0
	bne _021F6EAC
	ldr r0, _021F7174 ; =UNK04_0220E5C0
	ldr r1, _021F716C ; =UNK04_0220E558
	mov r2, #0
	mov r3, #0x24
	bl __msl_assertion_failed
_021F6EAC:
	ldr r1, [r6, #0xc]
	ldr r0, [r6, #0x10]
	cmp r1, #0
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	beq _021F715C
	ldr r0, [r6]
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	b _021F7148
_021F6ED4: ; jump table
	b _021F6EE8 ; case 0
	b _021F6F70 ; case 1
	b _021F6FEC ; case 2
	b _021F7058 ; case 3
	b _021F70DC ; case 4
_021F6EE8:
	mov r0, #0x20
	bl MOD04_021DD860
	movs r4, r0
	bne _021F6F10
	ldr r1, _021F7178 ; =UNK04_0220E588
	mov r0, r7
	bl MOD04_021FAEEC
	add sp, sp, #0x14
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, pc}
_021F6F10:
	mov r1, #0
	mov r2, #0x20
	bl memset
	ldr r1, [r6, #0x1c]
	ldr r0, _021F717C ; =0x00000201
	str r1, [r4]
	ldr r1, [r5, #0x418]
	mov r3, r4
	cmp r1, r0
	ldreq r1, [r5, #0x1a0]
	moveq r0, #0
	streq r1, [r4, #4]
	streq r0, [r5, #0x1a0]
	str r6, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r1, sp, #8
	mov r0, r7
	ldmia r1, {r1, r2}
	bl MOD04_021F3454
	cmp r0, #0
	beq _021F715C
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, pc}
_021F6F70:
	mov r0, #8
	bl MOD04_021DD860
	movs r3, r0
	bne _021F6F98
	ldr r1, _021F7178 ; =UNK04_0220E588
	mov r0, r7
	bl MOD04_021FAEEC
	add sp, sp, #0x14
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, pc}
_021F6F98:
	mov r2, #0
	strb r2, [r3]
	strb r2, [r3, #1]
	strb r2, [r3, #2]
	strb r2, [r3, #3]
	strb r2, [r3, #4]
	strb r2, [r3, #5]
	strb r2, [r3, #6]
	strb r2, [r3, #7]
	ldr r0, [r6, #0x1c]
	add r1, sp, #8
	str r0, [r3]
	str r6, [sp]
	str r2, [sp, #4]
	mov r0, r7
	ldmia r1, {r1, r2}
	bl MOD04_021F3454
	cmp r0, #0
	beq _021F715C
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, pc}
_021F6FEC:
	mov r0, #0x204
	bl MOD04_021DD860
	movs r4, r0
	bne _021F7014
	ldr r1, _021F7178 ; =UNK04_0220E588
	mov r0, r7
	bl MOD04_021FAEEC
	add sp, sp, #0x14
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, pc}
_021F7014:
	mov r1, #0
	mov r2, #0x204
	bl memset
	ldr r1, [r6, #0x1c]
	mov r0, #0
	str r1, [r4]
	str r6, [sp]
	str r0, [sp, #4]
	add r1, sp, #8
	mov r0, r7
	mov r3, r4
	ldmia r1, {r1, r2}
	bl MOD04_021F3454
	cmp r0, #0
	beq _021F715C
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, pc}
_021F7058:
	mov r0, #0x10
	bl MOD04_021DD860
	movs r3, r0
	bne _021F7080
	ldr r1, _021F7178 ; =UNK04_0220E588
	mov r0, r7
	bl MOD04_021FAEEC
	add sp, sp, #0x14
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, pc}
_021F7080:
	mov r2, r3
	mov r1, #4
	mov r0, #0
_021F708C:
	strb r0, [r2], #1
	strb r0, [r2], #1
	strb r0, [r2], #1
	strb r0, [r2], #1
	subs r1, r1, #1
	bne _021F708C
	ldr r1, [r6, #0x1c]
	mov r0, #0
	str r1, [r3]
	str r0, [r3, #0xc]
	str r6, [sp]
	str r0, [sp, #4]
	add r1, sp, #8
	mov r0, r7
	ldmia r1, {r1, r2}
	bl MOD04_021F3454
	cmp r0, #0
	beq _021F715C
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, pc}
_021F70DC:
	mov r0, #4
	bl MOD04_021DD860
	movs r3, r0
	bne _021F7104
	ldr r1, _021F7178 ; =UNK04_0220E588
	mov r0, r7
	bl MOD04_021FAEEC
	add sp, sp, #0x14
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, pc}
_021F7104:
	mov r2, #0
	strb r2, [r3]
	strb r2, [r3, #1]
	strb r2, [r3, #2]
	strb r2, [r3, #3]
	ldr r0, [r6, #0x1c]
	add r1, sp, #8
	str r0, [r3]
	str r6, [sp]
	str r2, [sp, #4]
	mov r0, r7
	ldmia r1, {r1, r2}
	bl MOD04_021F3454
	cmp r0, #0
	beq _021F715C
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, pc}
_021F7148:
	ldr r0, _021F7180 ; =UNK04_0220E554
	ldr r1, _021F716C ; =UNK04_0220E558
	mov r2, #0
	mov r3, #0x6b
	bl __msl_assertion_failed
_021F715C:
	mov r0, #0
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_021F7168: .word UNK04_0220E598
_021F716C: .word UNK04_0220E558
_021F7170: .word UNK04_0220E5AC
_021F7174: .word UNK04_0220E5C0
_021F7178: .word UNK04_0220E588
_021F717C: .word 0x00000201
_021F7180: .word UNK04_0220E554
	arm_func_end MOD04_021F6E44

	arm_func_start MOD04_021F7184
MOD04_021F7184: ; 0x021F7184
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x24
	movs r6, r1
	mov r7, r0
	mov r5, r2
	mov r4, r3
	bne _021F71B4
	ldr r0, _021F7258 ; =UNK04_0220E5D4
	ldr r1, _021F725C ; =UNK04_0220E5E4
	ldr r3, _021F7260 ; =0x00000389
	mov r2, #0
	bl __msl_assertion_failed
_021F71B4:
	mvn r0, #0
	cmp r5, #0
	ldreq r5, _021F7264 ; =UNK04_0220E5F0
	cmp r4, r0
	bne _021F71D4
	mov r0, r5
	bl strlen
	mov r4, r0
_021F71D4:
	ldr r1, _021F7268 ; =UNK04_0220E5F4
	add r0, sp, #0
	mov r2, r4
	bl sprintf
	add r2, sp, #0
	mov r0, r7
	mov r1, r6
	bl MOD04_021F2C58
	cmp r0, #0
	addne sp, sp, #0x24
	ldmneia sp!, {r4, r5, r6, r7, pc}
	mov r0, r7
	mov r1, r6
	mov r2, r5
	mov r3, r4
	bl MOD04_021F2C88
	cmp r0, #0
	addne sp, sp, #0x24
	ldmneia sp!, {r4, r5, r6, r7, pc}
	mov r0, r7
	mov r1, r6
	mov r2, #0
	bl MOD04_021F2D8C
	cmp r0, #0
	addne sp, sp, #0x24
	ldmneia sp!, {r4, r5, r6, r7, pc}
	mov r0, #0
	bl MOD04_021EFAC8
	add r0, r0, #0x12c
	str r0, [r6, #0x10]
	mov r0, #0
	add sp, sp, #0x24
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_021F7258: .word UNK04_0220E5D4
_021F725C: .word UNK04_0220E5E4
_021F7260: .word 0x00000389
_021F7264: .word UNK04_0220E5F0
_021F7268: .word UNK04_0220E5F4
	arm_func_end MOD04_021F7184

	arm_func_start MOD04_021F726C
MOD04_021F726C: ; 0x021F726C
	stmdb sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x4c
	mov sb, r0
	mov r8, r1
	mov r7, r2
	cmp r3, #0
	ldr r6, [r3, #4]
	ldr r5, [r3]
	ldr r4, [r3, #8]
	bne _021F72A8
	ldr r0, _021F72DC ; =UNK04_0220E604
	ldr r1, _021F72E0 ; =UNK04_0220E5E4
	ldr r3, _021F72E4 ; =0x00000376
	mov r2, #0
	bl __msl_assertion_failed
_021F72A8:
	ldr r1, _021F72E8 ; =UNK04_0220E610
	str r6, [sp]
	add r0, sp, #8
	mov r2, r7
	mov r3, r5
	str r4, [sp, #4]
	bl sprintf
	add r2, sp, #8
	mov r0, sb
	mov r1, r8
	bl MOD04_021F2C58
	add sp, sp, #0x4c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_021F72DC: .word UNK04_0220E604
_021F72E0: .word UNK04_0220E5E4
_021F72E4: .word 0x00000376
_021F72E8: .word UNK04_0220E610
	arm_func_end MOD04_021F726C

	arm_func_start MOD04_021F72EC
MOD04_021F72EC: ; 0x021F72EC
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x18
	movs r7, r1
	mov r8, r0
	mov r6, r2
	mov r5, r3
	bne _021F731C
	ldr r0, _021F745C ; =UNK04_0220E5D4
	ldr r1, _021F7460 ; =UNK04_0220E5E4
	mov r2, #0
	mov r3, #0x340
	bl __msl_assertion_failed
_021F731C:
	cmp r5, #0
	bne _021F7338
	ldr r0, _021F7464 ; =UNK04_0220E624
	ldr r1, _021F7460 ; =UNK04_0220E5E4
	ldr r3, _021F7468 ; =0x00000341
	mov r2, #0
	bl __msl_assertion_failed
_021F7338:
	mov r0, r5
	bl strlen
	add r1, sp, #0
	mov r2, #0
	str r2, [r1]
	str r2, [r1, #4]
	str r2, [r1, #8]
	str r2, [r1, #0xc]
	str r2, [r1, #0x10]
	str r2, [r1, #0x14]
	mov r4, r0
	ldr r2, _021F746C ; =UNK04_0220E634
	mov r0, r8
	str r6, [sp, #0x10]
	bl MOD04_021F2F9C
	cmp r0, #0
	addne sp, sp, #0x18
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
	add r1, sp, #0
	mov r0, r8
	mov r2, r6
	bl MOD04_021F2F64
	cmp r0, #0
	addne sp, sp, #0x18
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r2, _021F7470 ; =UNK04_0220E638
	add r1, sp, #0
	mov r0, r8
	bl MOD04_021F2F9C
	cmp r0, #0
	addne sp, sp, #0x18
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
	add r1, sp, #0
	mov r0, r8
	mov r2, r4
	bl MOD04_021F2F64
	cmp r0, #0
	addne sp, sp, #0x18
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r2, _021F7474 ; =UNK04_0220E640
	add r1, sp, #0
	mov r0, r8
	bl MOD04_021F2F9C
	cmp r0, #0
	addne sp, sp, #0x18
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
	ldr ip, [sp, #8]
	add r1, sp, #0
	mov r0, r8
	mov r2, r5
	mov r3, r4
	str ip, [sp, #0x14]
	bl MOD04_021F2FCC
	cmp r0, #0
	addne sp, sp, #0x18
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
	add r1, sp, #0
	mov r0, r8
	mov r2, #0
	bl MOD04_021F30D4
	cmp r0, #0
	addne sp, sp, #0x18
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, [r7, #0x38]
	add r1, sp, #0
	bl MOD04_021EEFA8
	mov r0, #0
	bl MOD04_021EFAC8
	add r0, r0, #0x12c
	str r0, [r7, #0x10]
	mov r0, #0
	add sp, sp, #0x18
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_021F745C: .word UNK04_0220E5D4
_021F7460: .word UNK04_0220E5E4
_021F7464: .word UNK04_0220E624
_021F7468: .word 0x00000341
_021F746C: .word UNK04_0220E634
_021F7470: .word UNK04_0220E638
_021F7474: .word UNK04_0220E640
	arm_func_end MOD04_021F72EC

	arm_func_start MOD04_021F7478
MOD04_021F7478: ; 0x021F7478
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0xc
	mov r4, r1
	ldr r1, [r4, #0xc]
	add r2, sp, #8
	mov r5, r0
	bl MOD04_021F85E8
	cmp r0, #0
	bne _021F74B4
	ldr r1, _021F7600 ; =UNK04_0220E648
	mov r0, r5
	bl MOD04_021FAEEC
	add sp, sp, #0xc
	mov r0, #3
	ldmia sp!, {r4, r5, pc}
_021F74B4:
	mov r0, #2
	mov r1, #1
	mov r2, #0
	bl MOD04_021EFDB8
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	mvn r1, #0
	cmp r0, r1
	bne _021F7504
	ldr r2, _021F7604 ; =UNK04_0220E664
	mov r0, r5
	mov r1, #5
	bl MOD04_021FAF00
	mov r0, r5
	mov r1, #3
	mov r2, #0
	bl MOD04_021F3500
	add sp, sp, #0xc
	mov r0, #3
	ldmia sp!, {r4, r5, pc}
_021F7504:
	mov r1, #0
	bl MOD04_021F017C
	cmp r0, #0
	bne _021F7540
	ldr r2, _021F7608 ; =UNK04_0220E68C
	mov r0, r5
	mov r1, #5
	bl MOD04_021FAF00
	mov r0, r5
	mov r1, #3
	mov r2, #0
	bl MOD04_021F3500
	add sp, sp, #0xc
	mov r0, #3
	ldmia sp!, {r4, r5, pc}
_021F7540:
	ldr r0, [r4, #8]
	bl MOD04_021F7854
	add r1, sp, #0
	mov r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	mov r0, #2
	ldr r3, [sp, #8]
	strb r0, [sp, #1]
	ldr r0, [r3, #8]
	mov r2, #8
	ldr r0, [r0, #0x10]
	str r0, [sp, #4]
	ldr r0, [r3, #8]
	ldr r0, [r0, #0x14]
	strh r0, [sp, #2]
	ldr r0, [r4, #8]
	bl MOD04_021EFCE4
	mvn r1, #0
	cmp r0, r1
	bne _021F75EC
	ldr r0, [r4, #8]
	bl MOD04_021EFB28
	mvn r1, #5
	cmp r0, r1
	beq _021F75EC
	mvn r1, #0x19
	cmp r0, r1
	beq _021F75EC
	mvn r1, #0x4b
	cmp r0, r1
	beq _021F75EC
	ldr r2, _021F760C ; =UNK04_0220E6C0
	mov r0, r5
	mov r1, #5
	bl MOD04_021FAF00
	mov r0, r5
	mov r1, #3
	mov r2, #1
	bl MOD04_021F3500
	add sp, sp, #0xc
	mov r0, #3
	ldmia sp!, {r4, r5, pc}
_021F75EC:
	mov r0, #0x67
	str r0, [r4]
	mov r0, #0
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_021F7600: .word UNK04_0220E648
_021F7604: .word UNK04_0220E664
_021F7608: .word UNK04_0220E68C
_021F760C: .word UNK04_0220E6C0
	arm_func_end MOD04_021F7478

	arm_func_start MOD04_021F7610
MOD04_021F7610: ; 0x021F7610
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0x14
	mov r2, #0
	str r2, [sp]
	mov r4, r1
	str r2, [sp, #4]
	add r3, sp, #0xc
	mov r1, #2
	mov r5, r0
	str r2, [sp, #8]
	bl MOD04_021F6D8C
	cmp r0, #0
	addne sp, sp, #0x14
	ldmneia sp!, {r4, r5, pc}
	ldr r0, [sp, #0xc]
	ldr r1, [r4, #0xc]
	ldr r2, [r0, #0x18]
	mov r0, r5
	bl MOD04_021F5018
	cmp r0, #0
	moveq r0, #0x65
	streq r0, [r4]
	moveq r0, #0
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, pc}
	arm_func_end MOD04_021F7610

	arm_func_start MOD04_021F7674
MOD04_021F7674: ; 0x021F7674
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	ldr r5, [r0]
	mov r0, #0x40
	mov r7, r1
	mov r6, r2
	bl MOD04_021DD860
	movs r4, r0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	mov r1, #0
	mov r2, #0x40
	bl memset
	mov r0, #0x64
	str r0, [r4]
	str r6, [r4, #4]
	mvn r0, #0
	str r0, [r4, #8]
	mov r0, #0
	str r7, [r4, #0xc]
	bl MOD04_021EFAC8
	add r0, r0, #0x12c
	str r0, [r4, #0x10]
	ldr r3, [r5, #0x434]
	ldr r2, _021F7700 ; =MOD04_021F7704
	mov r0, #0x18
	mov r1, #0
	str r3, [r4, #0x3c]
	bl MOD04_021EF0E4
	str r0, [r4, #0x38]
	mov r0, r4
	str r4, [r5, #0x434]
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_021F7700: .word MOD04_021F7704
	arm_func_end MOD04_021F7674

	arm_func_start MOD04_021F7704
MOD04_021F7704: ; 0x021F7704
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4]
	bl MOD04_021DD82C
	mov r0, #0
	str r0, [r4]
	ldmia sp!, {r4, pc}
	arm_func_end MOD04_021F7704

	arm_func_start MOD04_021F7720
MOD04_021F7720: ; 0x021F7720
	ldr r0, [r0]
	ldr r0, [r0, #0x434]
	cmp r0, #0
	beq _021F7754
_021F7730:
	ldr r2, [r0, #0xc]
	cmp r2, r1
	bne _021F7748
	ldr r2, [r0]
	cmp r2, #0x69
	bxeq lr
_021F7748:
	ldr r0, [r0, #0x3c]
	cmp r0, #0
	bne _021F7730
_021F7754:
	mov r0, #0
	bx lr
	arm_func_end MOD04_021F7720

	arm_func_start MOD04_021F775C
MOD04_021F775C: ; 0x021F775C
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	mov r4, r0
	ldr r7, [r4]
	mvn r1, #0
	ldr r0, [r7, #0x204]
	cmp r0, r1
	beq _021F77E8
	bl MOD04_021EFF2C
	cmp r0, #0
	beq _021F77E8
	mov r1, #0
	ldr r0, [r7, #0x204]
	mov r2, r1
	bl MOD04_021EFC94
	mov r6, r0
	mvn r1, #0
	cmp r6, r1
	beq _021F77E8
	mov r0, r4
	mov r2, #0
	bl MOD04_021F7674
	movs r5, r0
	beq _021F77E0
	mov r0, #0x68
	str r0, [r5]
	mov r0, r6
	str r6, [r5, #8]
	mov r1, #0
	bl MOD04_021F017C
	ldr r0, [r5, #8]
	bl MOD04_021F7854
	b _021F77E8
_021F77E0:
	mov r0, r6
	bl MOD04_021EFD9C
_021F77E8:
	ldr r6, [r7, #0x434]
	cmp r6, #0
	beq _021F7848
	mov r5, #0
_021F77F8:
	mov r0, r4
	mov r1, r6
	ldr r7, [r6, #0x3c]
	bl MOD04_021F7A40
	ldr r1, [r6]
	cmp r1, #0x6a
	beq _021F7830
	cmp r0, #0
	bne _021F7830
	mov r0, r5
	bl MOD04_021EFAC8
	ldr r1, [r6, #0x10]
	cmp r0, r1
	ble _021F783C
_021F7830:
	mov r0, r4
	mov r1, r6
	bl MOD04_021F78CC
_021F783C:
	mov r6, r7
	cmp r7, #0
	bne _021F77F8
_021F7848:
	mov r0, #0
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, pc}
	arm_func_end MOD04_021F775C

	arm_func_start MOD04_021F7854
MOD04_021F7854: ; 0x021F7854
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r1, #0x4000
	bl MOD04_021F0130
	mov r0, r4
	mov r1, #0x8000
	bl MOD04_021F0130
	mov r0, r4
	mov r1, #0x10000
	bl MOD04_021F0130
	mov r0, r4
	mov r1, #0x20000
	bl MOD04_021F0130
	mov r0, r4
	mov r1, #0x40000
	bl MOD04_021F0130
	mov r0, r4
	mov r1, #0x4000
	bl MOD04_021F00E4
	mov r0, r4
	mov r1, #0x8000
	bl MOD04_021F00E4
	mov r0, r4
	mov r1, #0x10000
	bl MOD04_021F00E4
	mov r0, r4
	bl MOD04_021F009C
	mov r0, r4
	bl MOD04_021F0054
	ldmia sp!, {r4, pc}
	arm_func_end MOD04_021F7854

	arm_func_start MOD04_021F78CC
MOD04_021F78CC: ; 0x021F78CC
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r0
	movs r4, r1
	ldr r6, [r5]
	bne _021F78F4
	ldr r0, _021F79C8 ; =UNK04_0220E5D4
	ldr r1, _021F79CC ; =UNK04_0220E5E4
	ldr r3, _021F79D0 ; =0x00000213
	mov r2, #0
	bl __msl_assertion_failed
_021F78F4:
	ldr r1, [r6, #0x434]
	cmp r1, r4
	ldreq r0, [r4, #0x3c]
	streq r0, [r6, #0x434]
	beq _021F7958
	ldr r0, [r1, #0x3c]
	cmp r0, r4
	beq _021F7950
_021F7914:
	cmp r0, #0
	bne _021F7940
	ldr r0, _021F79D4 ; =UNK04_0220E6E8
	ldr r1, _021F79CC ; =UNK04_0220E5E4
	ldr r3, _021F79D8 ; =0x00000225
	mov r2, #0
	bl __msl_assertion_failed
	ldr r1, _021F79DC ; =UNK04_0220E6EC
	mov r0, r5
	bl MOD04_021FB3D0
	ldmia sp!, {r4, r5, r6, pc}
_021F7940:
	mov r1, r0
	ldr r0, [r0, #0x3c]
	cmp r0, r4
	bne _021F7914
_021F7950:
	ldr r0, [r4, #0x3c]
	str r0, [r1, #0x3c]
_021F7958:
	ldr r0, [r4, #0x38]
	bl MOD04_021EF06C
	cmp r0, #0
	beq _021F79B8
	mov r6, #0
_021F796C:
	ldr r0, [r4, #0x38]
	mov r1, r6
	bl MOD04_021EEFFC
	ldr r2, [r0, #0x10]
	cmp r2, #0x64
	bge _021F799C
	ldr ip, [r0]
	ldr r3, [r0, #0x14]
	ldr r1, [r4, #0xc]
	mov r0, r5
	add r3, ip, r3
	bl MOD04_021F1B60
_021F799C:
	ldr r0, [r4, #0x38]
	mov r1, r6
	bl MOD04_021EED84
	ldr r0, [r4, #0x38]
	bl MOD04_021EF06C
	cmp r0, #0
	bne _021F796C
_021F79B8:
	mov r0, r5
	mov r1, r4
	bl MOD04_021F79E0
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_021F79C8: .word UNK04_0220E5D4
_021F79CC: .word UNK04_0220E5E4
_021F79D0: .word 0x00000213
_021F79D4: .word UNK04_0220E6E8
_021F79D8: .word 0x00000225
_021F79DC: .word UNK04_0220E6EC
	arm_func_end MOD04_021F78CC

	arm_func_start MOD04_021F79E0
MOD04_021F79E0: ; 0x021F79E0
	stmdb sp!, {r4, lr}
	mov r4, r1
	ldr r0, [r4, #8]
	mov r1, #2
	bl MOD04_021EFD80
	ldr r0, [r4, #8]
	bl MOD04_021EFD9C
	ldr r0, [r4, #0x18]
	bl MOD04_021DD82C
	mov r0, #0
	str r0, [r4, #0x18]
	ldr r0, [r4, #0x28]
	bl MOD04_021DD82C
	mov r0, #0
	str r0, [r4, #0x28]
	ldr r0, [r4, #0x38]
	cmp r0, #0
	beq _021F7A34
	bl MOD04_021EF074
	mov r0, #0
	str r0, [r4, #0x38]
_021F7A34:
	mov r0, r4
	bl MOD04_021DD82C
	ldmia sp!, {r4, pc}
	arm_func_end MOD04_021F79E0

	arm_func_start MOD04_021F7A40
MOD04_021F7A40: ; 0x021F7A40
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r1
	ldr r1, [r5]
	mov r6, r0
	cmp r1, #0x64
	mov r4, #0
	bne _021F7A70
	ldr r0, _021F7AD8 ; =UNK04_0220E710
	ldr r1, _021F7ADC ; =UNK04_0220E5E4
	ldr r3, _021F7AE0 ; =0x000001D9
	mov r2, r4
	bl __msl_assertion_failed
_021F7A70:
	ldr r0, [r5]
	cmp r0, #0x69
	beq _021F7AAC
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _021F7A9C
	mov r0, r6
	mov r1, r5
	bl MOD04_021F8088
	mov r4, r0
	b _021F7AAC
_021F7A9C:
	mov r0, r6
	mov r1, r5
	bl MOD04_021F7E3C
	mov r4, r0
_021F7AAC:
	cmp r4, #0
	bne _021F7AD0
	ldr r0, [r5]
	cmp r0, #0x69
	bne _021F7AD0
	mov r0, r6
	mov r1, r5
	bl MOD04_021F7AE4
	mov r4, r0
_021F7AD0:
	mov r0, r4
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_021F7AD8: .word UNK04_0220E710
_021F7ADC: .word UNK04_0220E5E4
_021F7AE0: .word 0x000001D9
	arm_func_end MOD04_021F7A40

	arm_func_start MOD04_021F7AE4
MOD04_021F7AE4: ; 0x021F7AE4
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x24
	mov r6, r1
	ldr r1, [r6, #0x30]
	mov r7, r0
	cmp r1, #0
	ldr r5, [r7]
	beq _021F7B4C
	mov r2, #1
	str r2, [sp]
	ldr r1, _021F7D60 ; =UNK04_0220E738
	add r3, sp, #0xc
	str r1, [sp, #4]
	ldr r1, [r6, #8]
	add r2, r6, #0x28
	bl MOD04_021F28AC
	ldr r1, [sp, #0xc]
	cmp r1, #0
	bne _021F7B38
	cmp r0, #0
	beq _021F7B4C
_021F7B38:
	mov r0, #0x6a
	str r0, [r6]
	add sp, sp, #0x24
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, pc}
_021F7B4C:
	ldr r0, [r6, #0x30]
	cmp r0, #0
	bne _021F7B84
	mov r0, r7
	mov r1, r6
	bl MOD04_021F7D6C
	cmp r0, #0
	addne sp, sp, #0x24
	ldmneia sp!, {r4, r5, r6, r7, pc}
	ldr r0, [r6]
	cmp r0, #0x6a
	addeq sp, sp, #0x24
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, pc}
_021F7B84:
	add r1, sp, #0xc
	ldr r0, _021F7D60 ; =UNK04_0220E738
	str r1, [sp]
	str r0, [sp, #4]
	ldr r1, [r6, #8]
	add r3, sp, #8
	mov r0, r7
	add r2, r6, #0x18
	bl MOD04_021F2A2C
	cmp r0, #0
	movne r0, #0x6a
	strne r0, [r6]
	addne sp, sp, #0x24
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, r7, pc}
	ldr r0, [sp, #8]
	cmp r0, #0
	ble _021F7BDC
	mov r0, #0
	bl MOD04_021EFAC8
	add r0, r0, #0x12c
	str r0, [r6, #0x10]
_021F7BDC:
	add r4, sp, #0x20
	add r2, sp, #0x18
	add r3, sp, #0x1c
	mov r0, r7
	add r1, r6, #0x18
	str r4, [sp]
	bl MOD04_021F2770
	cmp r0, #0
	addne sp, sp, #0x24
	ldmneia sp!, {r4, r5, r6, r7, pc}
	ldr r1, [sp, #0x18]
	cmp r1, #0
	beq _021F7D38
	ldr r2, [sp, #0x1c]
	cmp r2, #0x66
	bgt _021F7C30
	cmp r2, #0x66
	bge _021F7CF8
	cmp r2, #1
	beq _021F7C64
	b _021F7D2C
_021F7C30:
	sub r0, r2, #0xc8
	cmp r0, #8
	addls pc, pc, r0, lsl #2
	b _021F7D2C
_021F7C40: ; jump table
	b _021F7D10 ; case 0
	b _021F7D10 ; case 1
	b _021F7D10 ; case 2
	b _021F7D10 ; case 3
	b _021F7D10 ; case 4
	b _021F7D10 ; case 5
	b _021F7D10 ; case 6
	b _021F7D10 ; case 7
	b _021F7D10 ; case 8
_021F7C64:
	ldr r1, [r5, #0x1bc]
	ldr r0, [r5, #0x1c0]
	cmp r1, #0
	str r1, [sp, #0x10]
	str r0, [sp, #0x14]
	beq _021F7D2C
	mov r0, #0xc
	bl MOD04_021DD860
	movs r4, r0
	bne _021F7CA4
	ldr r1, _021F7D64 ; =UNK04_0220E73C
	mov r0, r7
	bl MOD04_021FAEEC
	add sp, sp, #0x24
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, pc}
_021F7CA4:
	ldr r0, [r6, #0xc]
	str r0, [r4]
	ldr r0, [sp, #0x18]
	bl MOD04_021F0208
	str r0, [r4, #8]
	mov r0, #0
	bl MOD04_021EFAC8
	str r0, [r4, #4]
	mov r0, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	add r1, sp, #0x10
	mov r0, r7
	mov r3, r4
	ldmia r1, {r1, r2}
	bl MOD04_021F3454
	cmp r0, #0
	beq _021F7D2C
	add sp, sp, #0x24
	ldmia sp!, {r4, r5, r6, r7, pc}
_021F7CF8:
	ldr r1, [r6, #0xc]
	ldr r3, _021F7D68 ; =UNK04_0220E74C
	mov r0, r7
	mov r2, #0x67
	bl MOD04_021F1A64
	b _021F7D2C
_021F7D10:
	str r1, [sp]
	ldr r1, [sp, #0x20]
	mov r0, r7
	str r1, [sp, #4]
	ldr r3, [r6, #0x18]
	mov r1, r6
	bl MOD04_021FACC0
_021F7D2C:
	mov r0, r7
	add r1, r6, #0x18
	bl MOD04_021F2704
_021F7D38:
	ldr r0, [sp, #0x18]
	cmp r0, #0
	bne _021F7BDC
	ldr r0, [sp, #0xc]
	cmp r0, #0
	movne r0, #0x6a
	strne r0, [r6]
	mov r0, #0
	add sp, sp, #0x24
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_021F7D60: .word UNK04_0220E738
_021F7D64: .word UNK04_0220E73C
_021F7D68: .word UNK04_0220E74C
	arm_func_end MOD04_021F7AE4

	arm_func_start MOD04_021F7D6C
MOD04_021F7D6C: ; 0x021F7D6C
	stmdb sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0xc
	mov r8, r1
	ldr r1, [r8, #0x30]
	mov sb, r0
	cmp r1, #0
	addne sp, sp, #0xc
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, pc}
	ldr r0, [r8, #0x38]
	bl MOD04_021EF06C
	cmp r0, #0
	beq _021F7E2C
	ldr r5, _021F7E38 ; =UNK04_0220E738
	add r4, sp, #8
	mov r7, #0
_021F7DAC:
	ldr r0, [r8, #0x38]
	mov r1, r7
	bl MOD04_021EEFFC
	mov r6, r0
	str r7, [sp]
	str r5, [sp, #4]
	ldr r1, [r8, #8]
	mov r0, sb
	mov r2, r6
	mov r3, r4
	bl MOD04_021F28AC
	ldr r1, [sp, #8]
	cmp r1, #0
	bne _021F7DEC
	cmp r0, #0
	beq _021F7E00
_021F7DEC:
	mov r0, #0x6a
	str r0, [r8]
	add sp, sp, #0xc
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
_021F7E00:
	ldr r1, [r6, #0xc]
	ldr r0, [r6, #8]
	cmp r1, r0
	bne _021F7E2C
	ldr r0, [r8, #0x38]
	mov r1, r7
	bl MOD04_021EED84
	ldr r0, [r8, #0x38]
	bl MOD04_021EF06C
	cmp r0, #0
	bne _021F7DAC
_021F7E2C:
	mov r0, #0
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_021F7E38: .word UNK04_0220E738
	arm_func_end MOD04_021F7D6C

	arm_func_start MOD04_021F7E3C
MOD04_021F7E3C: ; 0x021F7E3C
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x184
	mov r5, r1
	ldr r1, [r5]
	mov r6, r0
	cmp r1, #0x68
	ldr r4, [r6]
	beq _021F7E70
	ldr r0, _021F8058 ; =UNK04_0220E750
	ldr r1, _021F805C ; =UNK04_0220E5E4
	mov r2, #0
	mov r3, #0xc1
	bl __msl_assertion_failed
_021F7E70:
	add r1, sp, #0xc
	ldr r0, _021F8060 ; =UNK04_0220E738
	str r1, [sp]
	str r0, [sp, #4]
	ldr r1, [r5, #8]
	add r3, sp, #8
	mov r0, r6
	add r2, r5, #0x18
	bl MOD04_021F2A2C
	cmp r0, #0
	addne sp, sp, #0x184
	ldmneia sp!, {r4, r5, r6, r7, pc}
	ldr r0, [sp, #0xc]
	cmp r0, #0
	movne r0, #0x6a
	strne r0, [r5]
	addne sp, sp, #0x184
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, r7, pc}
	ldr r0, [r5, #0x18]
	ldr r1, _021F8064 ; =UNK04_0220E770
	bl strstr
	cmp r0, #0
	beq _021F804C
	mov r1, #0
	strb r1, [r0]
	ldr r7, [r5, #0x18]
	ldr r1, _021F8068 ; =UNK04_0220E778
	mov r0, r7
	mov r2, #6
	bl strncmp
	cmp r0, #0
	bne _021F8030
	ldr r1, _021F806C ; =UNK04_0220E780
	add r2, sp, #0x10
	mov r0, r7
	mov r3, #0x10
	bl MOD04_021FB1F0
	cmp r0, #0
	moveq r0, #0x6a
	streq r0, [r5]
	addeq sp, sp, #0x184
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	add r0, sp, #0x10
	bl atol
	mov r7, r0
	ldr r0, [r5, #0x18]
	ldr r1, _021F8070 ; =UNK04_0220E788
	add r2, sp, #0x20
	mov r3, #0x1f
	bl MOD04_021FB1F0
	cmp r0, #0
	moveq r0, #0x6a
	streq r0, [r5]
	addeq sp, sp, #0x184
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	ldr r0, [r5, #0x18]
	ldr r1, _021F8074 ; =UNK04_0220E790
	add r2, sp, #0x3f
	mov r3, #0x21
	bl MOD04_021FB1F0
	cmp r0, #0
	moveq r0, #0x6a
	streq r0, [r5]
	addeq sp, sp, #0x184
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	str r7, [sp]
	ldr r2, _021F8078 ; =0x00000177
	ldr r3, [r4, #0x1a0]
	ldr r1, _021F807C ; =UNK04_0220E798
	add r0, sp, #0x81
	add r2, r4, r2
	bl sprintf
	add r0, sp, #0x81
	bl strlen
	mov r1, r0
	add r0, sp, #0x81
	add r2, sp, #0x60
	bl MOD04_021EF794
	add r0, sp, #0x3f
	add r1, sp, #0x60
	bl strcmp
	cmp r0, #0
	beq _021F8000
	ldr r2, _021F8080 ; =UNK04_0220E7A0
	mov r0, r6
	add r1, r5, #0x28
	bl MOD04_021F2F9C
	ldr r2, _021F8064 ; =UNK04_0220E770
	mov r0, r6
	add r1, r5, #0x28
	bl MOD04_021F2F9C
	mov r0, #0x6a
	str r0, [r5]
	add sp, sp, #0x184
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, pc}
_021F8000:
	ldr r2, _021F8084 ; =UNK04_0220E7A8
	mov r0, r6
	add r1, r5, #0x28
	bl MOD04_021F2F9C
	ldr r2, _021F8064 ; =UNK04_0220E770
	mov r0, r6
	add r1, r5, #0x28
	bl MOD04_021F2F9C
	mov r0, #0x69
	str r0, [r5]
	str r7, [r5, #0xc]
	b _021F8044
_021F8030:
	mov r0, #0x6a
	str r0, [r5]
	add sp, sp, #0x184
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, pc}
_021F8044:
	mov r0, #0
	str r0, [r5, #0x20]
_021F804C:
	mov r0, #0
	add sp, sp, #0x184
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_021F8058: .word UNK04_0220E750
_021F805C: .word UNK04_0220E5E4
_021F8060: .word UNK04_0220E738
_021F8064: .word UNK04_0220E770
_021F8068: .word UNK04_0220E778
_021F806C: .word UNK04_0220E780
_021F8070: .word UNK04_0220E788
_021F8074: .word UNK04_0220E790
_021F8078: .word 0x00000177
_021F807C: .word UNK04_0220E798
_021F8080: .word UNK04_0220E7A0
_021F8084: .word UNK04_0220E7A8
	arm_func_end MOD04_021F7E3C

	arm_func_start MOD04_021F8088
MOD04_021F8088: ; 0x021F8088
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x1c
	mov r6, r1
	ldr r2, [r6]
	mov r7, r0
	sub r2, r2, #0x65
	ldr r5, [r7]
	cmp r2, #3
	addls pc, pc, r2, lsl #2
	b _021F834C
_021F80B0: ; jump table
	b _021F8360 ; case 0
	b _021F80C0 ; case 1
	b _021F80D4 ; case 2
	b _021F8258 ; case 3
_021F80C0:
	bl MOD04_021F7478
	cmp r0, #0
	beq _021F8360
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, pc}
_021F80D4:
	ldr r1, [r6, #8]
	add r2, sp, #8
	bl MOD04_021FB0FC
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmneia sp!, {r4, r5, r6, r7, pc}
	ldr r0, [sp, #8]
	cmp r0, #4
	bne _021F8110
	ldr r1, _021F83B8 ; =UNK04_0220E648
	mov r0, r7
	bl MOD04_021FAEEC
	add sp, sp, #0x1c
	mov r0, #3
	ldmia sp!, {r4, r5, r6, r7, pc}
_021F8110:
	cmp r0, #3
	bne _021F8360
	ldr r1, [r6, #0xc]
	add r2, sp, #0x14
	mov r0, r7
	mov r4, #1
	bl MOD04_021F85E8
	cmp r0, #0
	bne _021F814C
	ldr r1, _021F83B8 ; =UNK04_0220E648
	mov r0, r7
	bl MOD04_021FAEEC
	add sp, sp, #0x1c
	mov r0, #3
	ldmia sp!, {r4, r5, r6, r7, pc}
_021F814C:
	ldr r2, _021F83BC ; =UNK04_0220E778
	mov r0, r7
	add r1, r6, #0x28
	bl MOD04_021F2F9C
	ldr r2, _021F83C0 ; =UNK04_0220E780
	mov r0, r7
	add r1, r6, #0x28
	bl MOD04_021F2F9C
	ldr r2, [r5, #0x1a0]
	mov r0, r7
	add r1, r6, #0x28
	bl MOD04_021F2F64
	ldr r2, _021F83C4 ; =UNK04_0220E788
	mov r0, r7
	add r1, r6, #0x28
	bl MOD04_021F2F9C
	mov r0, r7
	add r1, r6, #0x28
	add r2, r5, #0x110
	bl MOD04_021F2F9C
	mov r0, r7
	add r1, r6, #0x28
	ldr r2, _021F83C8 ; =UNK04_0220E790
	bl MOD04_021F2F9C
	mov r0, r7
	add r1, r6, #0x28
	ldr r2, [sp, #0x14]
	ldr r2, [r2, #0x18]
	bl MOD04_021F2F9C
	mov r0, r7
	add r1, r6, #0x28
	ldr r2, _021F83CC ; =UNK04_0220E770
	bl MOD04_021F2F9C
	ldr r3, [r5, #0x434]
	cmp r3, #0
	beq _021F8210
	ldr r2, [r6, #0xc]
	mov r0, #0
_021F81E4:
	ldr r1, [r3, #0xc]
	cmp r1, r2
	bne _021F8204
	cmp r3, r6
	beq _021F8204
	ldr r1, [r3]
	cmp r1, #0x67
	movle r4, r0
_021F8204:
	ldr r3, [r3, #0x3c]
	cmp r3, #0
	bne _021F81E4
_021F8210:
	cmp r4, #0
	beq _021F824C
	ldr r0, [sp, #0x14]
	ldr r0, [r0, #0x18]
	bl MOD04_021DD82C
	ldr r0, [sp, #0x14]
	mov r1, #0
	str r1, [r0, #0x18]
	ldr r0, [sp, #0x14]
	bl MOD04_021F83EC
	cmp r0, #0
	beq _021F824C
	ldr r1, [sp, #0x14]
	mov r0, r7
	bl MOD04_021F85A0
_021F824C:
	mov r0, #0x68
	str r0, [r6]
	b _021F8360
_021F8258:
	add r2, sp, #0x10
	str r2, [sp]
	ldr r1, _021F83D0 ; =UNK04_0220E738
	add r3, sp, #0xc
	str r1, [sp, #4]
	ldr r1, [r6, #8]
	add r2, r6, #0x18
	bl MOD04_021F2A2C
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmneia sp!, {r4, r5, r6, r7, pc}
	ldr r0, [r6, #0x18]
	ldr r1, _021F83CC ; =UNK04_0220E770
	bl strstr
	cmp r0, #0
	beq _021F8360
	mov r1, #0
	strb r1, [r0]
	ldr r4, [r6, #0x18]
	ldr r1, _021F83D4 ; =UNK04_0220E7A0
	mov r0, r4
	mov r2, #7
	bl strncmp
	cmp r0, #0
	bne _021F8308
	ldr r0, [r6, #0x14]
	add r0, r0, #1
	str r0, [r6, #0x14]
	ldr r0, [r6, #0x14]
	cmp r0, #1
	ble _021F82EC
	ldr r1, _021F83D8 ; =UNK04_0220E7B0
	mov r0, r7
	bl MOD04_021FAEEC
	add sp, sp, #0x1c
	mov r0, #3
	ldmia sp!, {r4, r5, r6, r7, pc}
_021F82EC:
	mov r0, r7
	mov r1, r6
	bl MOD04_021F7610
	cmp r0, #0
	beq _021F8338
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, pc}
_021F8308:
	ldr r1, _021F83DC ; =UNK04_0220E7A8
	mov r0, r4
	mov r2, #6
	bl strncmp
	cmp r0, #0
	beq _021F8338
	ldr r1, _021F83E0 ; =UNK04_0220E7D4
	mov r0, r7
	bl MOD04_021FAEEC
	add sp, sp, #0x1c
	mov r0, #3
	ldmia sp!, {r4, r5, r6, r7, pc}
_021F8338:
	mov r0, #0x69
	str r0, [r6]
	mov r0, #0
	str r0, [r6, #0x20]
	b _021F8360
_021F834C:
	ldr r0, _021F83E4 ; =UNK04_0220E6E8
	ldr r1, _021F83E8 ; =UNK04_0220E5E4
	mov r2, #0
	mov r3, #0x9f
	bl __msl_assertion_failed
_021F8360:
	ldr r0, [r6, #0x30]
	cmp r0, #0
	ble _021F83AC
	mov r1, #1
	ldr r0, _021F83D0 ; =UNK04_0220E738
	str r1, [sp]
	str r0, [sp, #4]
	ldr r1, [r6, #8]
	add r3, sp, #0x10
	mov r0, r7
	add r2, r6, #0x28
	bl MOD04_021F28AC
	ldr r1, [sp, #0x10]
	cmp r1, #0
	bne _021F83A4
	cmp r0, #0
	beq _021F83AC
_021F83A4:
	mov r0, #0x6a
	str r0, [r6]
_021F83AC:
	mov r0, #0
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_021F83B8: .word UNK04_0220E648
_021F83BC: .word UNK04_0220E778
_021F83C0: .word UNK04_0220E780
_021F83C4: .word UNK04_0220E788
_021F83C8: .word UNK04_0220E790
_021F83CC: .word UNK04_0220E770
_021F83D0: .word UNK04_0220E738
_021F83D4: .word UNK04_0220E7A0
_021F83D8: .word UNK04_0220E7B0
_021F83DC: .word UNK04_0220E7A8
_021F83E0: .word UNK04_0220E7D4
_021F83E4: .word UNK04_0220E6E8
_021F83E8: .word UNK04_0220E5E4
	arm_func_end MOD04_021F8088

	arm_func_start MOD04_021F83EC
MOD04_021F83EC: ; 0x021F83EC
	cmp r0, #0
	beq _021F8428
	ldr r1, [r0, #0xc]
	cmp r1, #0
	bne _021F8428
	ldr r1, [r0, #8]
	cmp r1, #0
	bne _021F8428
	ldr r1, [r0, #0x18]
	cmp r1, #0
	bne _021F8428
	ldr r0, [r0, #0x10]
	cmp r0, #0
	moveq r0, #1
	bxeq lr
_021F8428:
	mov r0, #0
	bx lr
	arm_func_end MOD04_021F83EC

	arm_func_start MOD04_021F8430
MOD04_021F8430: ; 0x021F8430
	stmdb sp!, {lr}
	sub sp, sp, #0xc
	str r1, [sp]
	mov r3, #0
	ldr r1, _021F845C ; =MOD04_021F8460
	add r2, sp, #0
	str r3, [sp, #4]
	bl MOD04_021F848C
	ldr r0, [sp, #4]
	add sp, sp, #0xc
	ldmfd sp!, {pc}
	.align 2, 0
_021F845C: .word MOD04_021F8460
	arm_func_end MOD04_021F8430

	arm_func_start MOD04_021F8460
MOD04_021F8460: ; 0x021F8460
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _021F8484
	ldr r3, [r2]
	ldr r0, [r0]
	cmp r3, r0
	streq r1, [r2, #4]
	moveq r0, #0
	bxeq lr
_021F8484:
	mov r0, #1
	bx lr
	arm_func_end MOD04_021F8460

	arm_func_start MOD04_021F848C
MOD04_021F848C: ; 0x021F848C
	stmdb sp!, {lr}
	sub sp, sp, #0xc
	ldr r3, [r0]
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r0, [sp]
	ldr r0, [r3, #0x428]
	ldr r1, _021F84C8 ; =MOD04_021F84CC
	add r2, sp, #0
	bl MOD04_021EF264
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	add sp, sp, #0xc
	ldmfd sp!, {pc}
	.align 2, 0
_021F84C8: .word MOD04_021F84CC
	arm_func_end MOD04_021F848C

	arm_func_start MOD04_021F84CC
MOD04_021F84CC: ; 0x021F84CC
	stmdb sp!, {lr}
	sub sp, sp, #4
	mov ip, r0
	ldr r0, [r1]
	ldr r2, [r1, #8]
	ldr r3, [r1, #4]
	mov r1, ip
	blx r3
	add sp, sp, #4
	ldmfd sp!, {pc}
	arm_func_end MOD04_021F84CC

	arm_func_start MOD04_021F84F4
MOD04_021F84F4: ; 0x021F84F4
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x10
	str r1, [sp]
	mov ip, #0
	str r2, [sp, #4]
	mov r4, r3
	ldr r1, _021F853C ; =MOD04_021F8540
	add r2, sp, #0
	str ip, [sp, #0xc]
	str r4, [sp, #8]
	bl MOD04_021F848C
	ldr r0, [sp, #0xc]
	cmp r0, #0
	moveq r0, #0
	streq r0, [r4]
	mov r0, #0
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
	.align 2, 0
_021F853C: .word MOD04_021F8540
	arm_func_end MOD04_021F84F4

	arm_func_start MOD04_021F8540
MOD04_021F8540: ; 0x021F8540
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r1
	ldr r4, [r6, #0xc]
	mov r5, r2
	cmp r4, #0
	beq _021F8598
	ldr r0, [r5]
	ldr r1, [r4]
	bl strcmp
	cmp r0, #0
	bne _021F8598
	ldr r0, [r5, #4]
	ldr r1, [r4, #8]
	bl strcmp
	cmp r0, #0
	bne _021F8598
	ldr r1, [r5, #8]
	mov r0, #1
	str r6, [r1]
	str r0, [r5, #0xc]
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
_021F8598:
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end MOD04_021F8540

	arm_func_start MOD04_021F85A0
MOD04_021F85A0: ; 0x021F85A0
	ldr r0, [r0]
	ldr ip, _021F85B0 ; =MOD04_021EF3F4
	ldr r0, [r0, #0x428]
	bx ip
	.align 2, 0
_021F85B0: .word MOD04_021EF3F4
	arm_func_end MOD04_021F85A0

	arm_func_start MOD04_021F85B4
MOD04_021F85B4: ; 0x021F85B4
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	add r2, sp, #0
	ldr r4, [r0]
	bl MOD04_021F85E8
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqia sp!, {r4, pc}
	ldr r0, [r4, #0x428]
	ldr r1, [sp]
	bl MOD04_021EF3F4
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	arm_func_end MOD04_021F85B4

	arm_func_start MOD04_021F85E8
MOD04_021F85E8: ; 0x021F85E8
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x20
	ldr r0, [r0]
	mov r4, r2
	str r1, [sp]
	ldr r0, [r0, #0x428]
	add r1, sp, #0
	bl MOD04_021EF358
	cmp r4, #0
	strne r0, [r4]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x20
	ldmia sp!, {r4, pc}
	arm_func_end MOD04_021F85E8

	arm_func_start MOD04_021F8624
MOD04_021F8624: ; 0x021F8624
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x20
	mov r5, r0
	ldr r2, [r5]
	ldr r0, _021F8700 ; =0x00000428
	mov r4, r1
	cmp r4, #0
	add r6, r2, r0
	bgt _021F865C
	ldr r0, _021F8704 ; =UNK04_0220E7F4
	ldr r1, _021F8708 ; =UNK04_0220E7FC
	ldr r3, _021F870C ; =0x000002B5
	mov r2, #0
	bl __msl_assertion_failed
_021F865C:
	cmp r4, #0
	addle sp, sp, #0x20
	movle r0, #0
	ldmleia sp!, {r4, r5, r6, pc}
	add r2, sp, #0
	mov r0, r5
	mov r1, r4
	bl MOD04_021F85E8
	cmp r0, #0
	ldrne r0, [sp]
	addne sp, sp, #0x20
	ldmneia sp!, {r4, r5, r6, pc}
	add r1, sp, #4
	mov r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	str r0, [r1, #0xc]
	str r0, [r1, #0x10]
	str r0, [r1, #0x14]
	str r0, [r1, #0x18]
	str r4, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	str r0, [sp, #0x1c]
	str r0, [sp, #0x18]
	ldr r0, [r6]
	bl MOD04_021EF494
	ldr r0, [r6, #4]
	add r2, sp, #0
	add r3, r0, #1
	mov r0, r5
	mov r1, r4
	str r3, [r6, #4]
	bl MOD04_021F85E8
	cmp r0, #0
	ldrne r0, [sp]
	moveq r0, #0
	add sp, sp, #0x20
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_021F8700: .word 0x00000428
_021F8704: .word UNK04_0220E7F4
_021F8708: .word UNK04_0220E7FC
_021F870C: .word 0x000002B5
	arm_func_end MOD04_021F8624

	arm_func_start MOD04_021F8710
MOD04_021F8710: ; 0x021F8710
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x20
	mov r6, r2
	mov r4, r1
	mov r1, r6
	mov r2, #1
	mov r5, r0
	bl MOD04_021FB2F8
	cmp r0, #0
	addne sp, sp, #0x20
	movne r0, #4
	ldmneia sp!, {r4, r5, r6, pc}
	ldr r1, _021F8860 ; =UNK04_0220E80C
	mov r0, r6
	mov r2, #5
	bl strncmp
	cmp r0, #0
	beq _021F8784
	ldr r2, _021F8864 ; =UNK04_0220E814
	mov r0, r5
	mov r1, #1
	bl MOD04_021FAF00
	mov r0, r5
	mov r1, #3
	mov r2, #1
	bl MOD04_021F3500
	add sp, sp, #0x20
	mov r0, #3
	ldmia sp!, {r4, r5, r6, pc}
_021F8784:
	ldr r1, _021F8868 ; =UNK04_0220E844
	add r2, sp, #0x10
	mov r0, r6
	mov r3, #0x10
	bl MOD04_021FB1F0
	cmp r0, #0
	bne _021F87CC
	ldr r2, _021F8864 ; =UNK04_0220E814
	mov r0, r5
	mov r1, #1
	bl MOD04_021FAF00
	mov r0, r5
	mov r1, #3
	mov r2, #1
	bl MOD04_021F3500
	add sp, sp, #0x20
	mov r0, #3
	ldmia sp!, {r4, r5, r6, pc}
_021F87CC:
	add r0, sp, #0x10
	bl atol
	ldr r2, [r4, #0xc]
	ldr r1, [r4, #0x10]
	mov r6, r0
	str r2, [sp, #8]
	str r1, [sp, #0xc]
	cmp r2, #0
	beq _021F8848
	mov r0, #8
	bl MOD04_021DD860
	movs r3, r0
	bne _021F8818
	ldr r1, _021F886C ; =UNK04_0220E850
	mov r0, r5
	bl MOD04_021FAEEC
	add sp, sp, #0x20
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
_021F8818:
	str r6, [r3, #4]
	mov r0, #0
	str r0, [r3]
	str r4, [sp]
	str r0, [sp, #4]
	add r1, sp, #8
	mov r0, r5
	ldmia r1, {r1, r2}
	bl MOD04_021F3454
	cmp r0, #0
	addne sp, sp, #0x20
	ldmneia sp!, {r4, r5, r6, pc}
_021F8848:
	mov r0, r5
	mov r1, r4
	bl MOD04_021F6C84
	mov r0, #0
	add sp, sp, #0x20
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_021F8860: .word UNK04_0220E80C
_021F8864: .word UNK04_0220E814
_021F8868: .word UNK04_0220E844
_021F886C: .word UNK04_0220E850
	arm_func_end MOD04_021F8710

	arm_func_start MOD04_021F8870
MOD04_021F8870: ; 0x021F8870
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	ldr r4, [r0]
	mov r1, #0
	str r1, [r4, #0x430]
	str r1, [r4, #0x42c]
	ldr r0, _021F88C0 ; =MOD04_021F88CC
	ldr r2, _021F88C4 ; =MOD04_021F8958
	str r0, [sp]
	ldr r3, _021F88C8 ; =MOD04_021F8948
	mov r0, #0x1c
	mov r1, #4
	bl MOD04_021EF76C
	str r0, [r4, #0x428]
	ldr r0, [r4, #0x428]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	.align 2, 0
_021F88C0: .word MOD04_021F88CC
_021F88C4: .word MOD04_021F8958
_021F88C8: .word MOD04_021F8948
	arm_func_end MOD04_021F8870

	arm_func_start MOD04_021F88CC
MOD04_021F88CC: ; 0x021F88CC
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _021F891C
	ldr r0, [r0, #8]
	bl MOD04_021DD82C
	ldr r0, [r4, #8]
	mov r1, #0
	str r1, [r0, #8]
	ldr r0, [r4, #8]
	ldr r0, [r0, #0xc]
	bl MOD04_021DD82C
	ldr r0, [r4, #8]
	mov r1, #0
	str r1, [r0, #0xc]
	ldr r0, [r4, #8]
	bl MOD04_021DD82C
	mov r0, #0
	str r0, [r4, #8]
_021F891C:
	mov r0, r4
	bl MOD04_021F4CBC
	ldr r0, [r4, #0x10]
	bl MOD04_021DD82C
	mov r0, #0
	str r0, [r4, #0x10]
	ldr r0, [r4, #0x18]
	bl MOD04_021DD82C
	mov r0, #0
	str r0, [r4, #0x18]
	ldmia sp!, {r4, pc}
	arm_func_end MOD04_021F88CC

	arm_func_start MOD04_021F8948
MOD04_021F8948: ; 0x021F8948
	ldr r2, [r0]
	ldr r0, [r1]
	sub r0, r2, r0
	bx lr
	arm_func_end MOD04_021F8948

	arm_func_start MOD04_021F8958
MOD04_021F8958: ; 0x021F8958
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r0, [r0]
	bl _s32_div_f
	mov r0, r1
	add sp, sp, #4
	ldmfd sp!, {pc}
	arm_func_end MOD04_021F8958

	arm_func_start MOD04_021F8974
MOD04_021F8974: ; 0x021F8974
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #4
	mov sl, r0
	ldr sb, [sl]
	mov r6, #0
	ldr r0, [sb, #0x210]
	cmp r0, #0
	ble _021F8AB4
	mov r0, r0, lsl #2
	bl MOD04_021DD860
	movs r8, r0
	bne _021F89BC
	ldr r1, _021F8AC0 ; =UNK04_0220E8A0
	mov r0, sl
	bl MOD04_021FAEEC
	add sp, sp, #4
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F89BC:
	ldr r7, [sb, #0x424]
	cmp r7, #0
	beq _021F8A38
	ldr fp, _021F8AC4 ; =UNK04_0220E8B0
	mov r5, r6
	mov r4, #1
_021F89D4:
	ldr r0, [r7]
	cmp r0, #3
	bne _021F8A2C
	ldr r0, [r7, #0x14]
	cmp r0, #5
	beq _021F8A2C
	ldr r0, [r7, #4]
	ldr r0, [r0, #0x13c]
	cmp r0, #0
	bne _021F8A2C
	ldr r0, [sb, #0x210]
	cmp r6, r0
	blt _021F8A1C
	ldr r1, _021F8AC8 ; =UNK04_0220E8D0
	ldr r3, _021F8ACC ; =0x00000563
	mov r0, fp
	mov r2, r5
	bl __msl_assertion_failed
_021F8A1C:
	str r7, [r8, r6, lsl #2]
	ldr r0, [r7, #4]
	add r6, r6, #1
	str r4, [r0, #0x13c]
_021F8A2C:
	ldr r7, [r7, #0x20]
	cmp r7, #0
	bne _021F89D4
_021F8A38:
	cmp r6, #0
	mov r4, #0
	ble _021F8A68
_021F8A44:
	ldr r1, [r8, r4, lsl #2]
	mov r0, sl
	bl MOD04_021F8AD0
	cmp r0, #0
	ldrne r1, [r8, r4, lsl #2]
	add r4, r4, #1
	strne r0, [r1, #0x1c]
	cmp r4, r6
	blt _021F8A44
_021F8A68:
	cmp r6, #0
	mov r4, #0
	ble _021F8AAC
	mov r5, r4
_021F8A78:
	ldr r0, [r8, r4, lsl #2]
	mov r1, r4, lsl #2
	ldr r0, [r0, #4]
	str r5, [r0, #0x13c]
	ldr r0, [r0, #0x140]
	cmp r0, #0
	beq _021F8AA0
	ldr r1, [r8, r1]
	mov r0, sl
	bl MOD04_021F6C84
_021F8AA0:
	add r4, r4, #1
	cmp r4, r6
	blt _021F8A78
_021F8AAC:
	mov r0, r8
	bl MOD04_021DD82C
_021F8AB4:
	mov r0, #0
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_021F8AC0: .word UNK04_0220E8A0
_021F8AC4: .word UNK04_0220E8B0
_021F8AC8: .word UNK04_0220E8D0
_021F8ACC: .word 0x00000563
	arm_func_end MOD04_021F8974

	arm_func_start MOD04_021F8AD0
MOD04_021F8AD0: ; 0x021F8AD0
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	ldr ip, _021F99B4 ; =0x000004EC
	sub sp, sp, ip
	mov sl, r0
	ldr r0, [sl]
	str r1, [sp, #0x1c]
	ldr r1, [r1, #8]
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x1c]
	cmp r1, #0
	movne r4, #1
	ldr sb, [r0, #4]
	moveq r4, #0
_021F8B04:
	mov r1, #1
	ldr r0, _021F99B8 ; =UNK04_0220E8DC
	str r1, [sp]
	str r0, [sp, #4]
	ldr r1, [sb, #4]
	add r3, sp, #0xa0
	mov r0, sl
	add r2, sb, #0x18
	bl MOD04_021F28AC
	cmp r0, #0
	ldrne ip, _021F99B4 ; =0x000004EC
	addne sp, sp, ip
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, [sp, #0x1c]
	ldr r0, [r0, #0x14]
	cmp r0, #1
	bne _021F9174
	ldr r1, [sb, #4]
	add r2, sp, #0x8c
	mov r0, sl
	bl MOD04_021FB0FC
	cmp r0, #0
	ldrne ip, _021F99B4 ; =0x000004EC
	addne sp, sp, ip
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, [sp, #0x8c]
	cmp r0, #4
	bne _021F8BA4
	ldr r1, _021F99BC ; =0x00000D01
	ldr r2, _021F99C0 ; =UNK04_0220E8E0
	mov r0, sl
	bl MOD04_021FAF00
	mov r0, sl
	mov r1, #4
	mov r2, #0
	bl MOD04_021F3500
	ldr ip, _021F99B4 ; =0x000004EC
	mov r0, #4
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F8BA4:
	cmp r0, #3
	bne _021FA704
	ldr r0, [sb]
	cmp r0, #1
	bne _021F8D6C
	ldr r2, _021F99C4 ; =UNK04_0220E90C
	mov r0, sl
	add r1, sb, #0x18
	bl MOD04_021F2F9C
	ldr r2, _021F99C8 ; =UNK04_0220E918
	mov r0, sl
	add r1, sb, #0x18
	bl MOD04_021F2F9C
	ldr r0, [sp, #0x24]
	add r1, sb, #0x18
	ldr r2, [r0, #0x198]
	mov r0, sl
	bl MOD04_021F2F64
	ldr r2, _021F99CC ; =UNK04_0220E924
	mov r0, sl
	add r1, sb, #0x18
	bl MOD04_021F2F9C
	ldr r2, [sp, #0x24]
	mov r0, sl
	ldr r2, [r2, #0x1a0]
	add r1, sb, #0x18
	bl MOD04_021F2F64
	ldr r2, _021F99D0 ; =UNK04_0220E930
	mov r0, sl
	add r1, sb, #0x18
	bl MOD04_021F2F9C
	ldr r2, [sp, #0x24]
	mov r0, sl
	ldr r2, [r2, #0x470]
	add r1, sb, #0x18
	bl MOD04_021F2F64
	ldrsb r0, [sb, #0x28]
	cmp r0, #0
	beq _021F8C60
	ldr r2, _021F99D4 ; =UNK04_0220E940
	mov r0, sl
	add r1, sb, #0x18
	bl MOD04_021F2F9C
	mov r0, sl
	add r1, sb, #0x18
	add r2, sb, #0x28
	bl MOD04_021F2F9C
_021F8C60:
	ldrsb r0, [sb, #0x47]
	cmp r0, #0
	beq _021F8C8C
	ldr r2, _021F99D8 ; =UNK04_0220E948
	mov r0, sl
	add r1, sb, #0x18
	bl MOD04_021F2F9C
	mov r0, sl
	add r1, sb, #0x18
	add r2, sb, #0x47
	bl MOD04_021F2F9C
_021F8C8C:
	ldrsb r0, [sb, #0x5c]
	cmp r0, #0
	beq _021F8CB8
	ldr r2, _021F99DC ; =UNK04_0220E958
	mov r0, sl
	add r1, sb, #0x18
	bl MOD04_021F2F9C
	mov r0, sl
	add r1, sb, #0x18
	add r2, sb, #0x5c
	bl MOD04_021F2F9C
_021F8CB8:
	ldrsb r0, [sb, #0x8f]
	cmp r0, #0
	beq _021F8CE4
	ldr r2, _021F99E0 ; =UNK04_0220E960
	mov r0, sl
	add r1, sb, #0x18
	bl MOD04_021F2F9C
	mov r0, sl
	add r1, sb, #0x18
	add r2, sb, #0x8f
	bl MOD04_021F2F9C
_021F8CE4:
	ldrsb r0, [sb, #0xae]
	cmp r0, #0
	beq _021F8D10
	ldr r2, _021F99E4 ; =UNK04_0220E96C
	mov r0, sl
	add r1, sb, #0x18
	bl MOD04_021F2F9C
	mov r0, sl
	add r1, sb, #0x18
	add r2, sb, #0xae
	bl MOD04_021F2F9C
_021F8D10:
	ldr r0, [sb, #0x130]
	cmp r0, #0
	beq _021F8D3C
	ldr r2, _021F99E8 ; =UNK04_0220E978
	mov r0, sl
	add r1, sb, #0x18
	bl MOD04_021F2F9C
	ldr r2, [sb, #0x130]
	mov r0, sl
	add r1, sb, #0x18
	bl MOD04_021F2F64
_021F8D3C:
	ldr r0, [sb, #0x134]
	cmp r0, #0
	ble _021F9134
	ldr r2, _021F99EC ; =UNK04_0220E984
	mov r0, sl
	add r1, sb, #0x18
	bl MOD04_021F2F9C
	ldr r2, [sb, #0x134]
	mov r0, sl
	add r1, sb, #0x18
	bl MOD04_021F2F64
	b _021F9134
_021F8D6C:
	cmp r0, #2
	bne _021F8DA8
	ldr r2, _021F99F0 ; =UNK04_0220E98C
	mov r0, sl
	add r1, sb, #0x18
	bl MOD04_021F2F9C
	ldr r2, _021F99DC ; =UNK04_0220E958
	mov r0, sl
	add r1, sb, #0x18
	bl MOD04_021F2F9C
	mov r0, sl
	add r1, sb, #0x18
	add r2, sb, #0x5c
	bl MOD04_021F2F9C
	b _021F9134
_021F8DA8:
	cmp r0, #3
	bne _021F8E28
	ldr r2, _021F99F4 ; =UNK04_0220E994
	mov r0, sl
	add r1, sb, #0x18
	bl MOD04_021F2F9C
	ldr r2, _021F99DC ; =UNK04_0220E958
	mov r0, sl
	add r1, sb, #0x18
	bl MOD04_021F2F9C
	mov r0, sl
	add r1, sb, #0x18
	add r2, sb, #0x5c
	bl MOD04_021F2F9C
	ldr r2, _021F99F8 ; =UNK04_0220E99C
	mov r0, sl
	add r1, sb, #0x18
	bl MOD04_021F2F9C
	mov r0, sl
	add r1, sb, #0x18
	add r2, sb, #0xcd
	bl MOD04_021F2F9C
	ldr r2, _021F99D0 ; =UNK04_0220E930
	mov r0, sl
	add r1, sb, #0x18
	bl MOD04_021F2F9C
	ldr r2, [sp, #0x24]
	mov r0, sl
	ldr r2, [r2, #0x470]
	add r1, sb, #0x18
	bl MOD04_021F2F64
	b _021F9134
_021F8E28:
	cmp r0, #4
	bne _021F8EAC
	ldr r2, _021F99FC ; =UNK04_0220E9A4
	mov r0, sl
	add r1, sb, #0x18
	bl MOD04_021F2F9C
	ldr r2, _021F99C8 ; =UNK04_0220E918
	mov r0, sl
	add r1, sb, #0x18
	bl MOD04_021F2F9C
	ldr r0, [sp, #0x24]
	add r1, sb, #0x18
	ldr r2, [r0, #0x198]
	mov r0, sl
	bl MOD04_021F2F64
	ldr r2, _021F99CC ; =UNK04_0220E924
	mov r0, sl
	add r1, sb, #0x18
	bl MOD04_021F2F9C
	ldr r2, [sp, #0x24]
	mov r0, sl
	ldr r2, [r2, #0x1a0]
	add r1, sb, #0x18
	bl MOD04_021F2F64
	ldr r2, _021F9A00 ; =UNK04_0220E9B0
	mov r0, sl
	add r1, sb, #0x18
	bl MOD04_021F2F9C
	ldr r2, [sb, #0x138]
	mov r0, sl
	add r1, sb, #0x18
	bl MOD04_021F2F64
	b _021F9134
_021F8EAC:
	cmp r0, #5
	bne _021F8F28
	ldr r2, _021F9A04 ; =UNK04_0220E9BC
	mov r0, sl
	add r1, sb, #0x18
	bl MOD04_021F2F9C
	ldr r2, _021F99D4 ; =UNK04_0220E940
	mov r0, sl
	add r1, sb, #0x18
	bl MOD04_021F2F9C
	mov r0, sl
	add r1, sb, #0x18
	add r2, sb, #0x28
	bl MOD04_021F2F9C
	mov r0, sl
	add r1, sb, #0x18
	ldr r2, _021F99DC ; =UNK04_0220E958
	bl MOD04_021F2F9C
	mov r0, sl
	add r1, sb, #0x18
	add r2, sb, #0x5c
	bl MOD04_021F2F9C
	mov r0, sl
	add r1, sb, #0x18
	ldr r2, _021F99F8 ; =UNK04_0220E99C
	bl MOD04_021F2F9C
	mov r0, sl
	add r1, sb, #0x18
	add r2, sb, #0xcd
	bl MOD04_021F2F9C
	b _021F9134
_021F8F28:
	cmp r0, #6
	bne _021F9038
	ldr r2, _021F9A08 ; =UNK04_0220E9C4
	mov r0, sl
	add r1, sb, #0x18
	bl MOD04_021F2F9C
	ldr r2, _021F99D4 ; =UNK04_0220E940
	mov r0, sl
	add r1, sb, #0x18
	bl MOD04_021F2F9C
	mov r0, sl
	add r1, sb, #0x18
	add r2, sb, #0x28
	bl MOD04_021F2F9C
	ldr r2, _021F99DC ; =UNK04_0220E958
	mov r0, sl
	add r1, sb, #0x18
	bl MOD04_021F2F9C
	mov r0, sl
	add r1, sb, #0x18
	add r2, sb, #0x5c
	bl MOD04_021F2F9C
	ldr r2, _021F99F8 ; =UNK04_0220E99C
	mov r0, sl
	add r1, sb, #0x18
	bl MOD04_021F2F9C
	mov r0, sl
	add r1, sb, #0x18
	add r2, sb, #0xcd
	bl MOD04_021F2F9C
	ldr r2, _021F9A0C ; =UNK04_0220E9D0
	mov r0, sl
	add r1, sb, #0x18
	bl MOD04_021F2F9C
	ldr r2, [sp, #0x24]
	mov r0, sl
	ldr r2, [r2, #0x46c]
	add r1, sb, #0x18
	bl MOD04_021F2F64
	ldr r2, _021F99D0 ; =UNK04_0220E930
	mov r0, sl
	add r1, sb, #0x18
	bl MOD04_021F2F9C
	ldr r2, [sp, #0x24]
	mov r0, sl
	ldr r2, [r2, #0x470]
	add r1, sb, #0x18
	bl MOD04_021F2F64
	ldr r2, _021F99D8 ; =UNK04_0220E948
	mov r0, sl
	add r1, sb, #0x18
	bl MOD04_021F2F9C
	mov r0, sl
	add r1, sb, #0x18
	add r2, sb, #0x47
	bl MOD04_021F2F9C
	ldrsb r0, [sb, #0xec]
	cmp r0, #0
	beq _021F9134
	ldr r2, _021F9A10 ; =UNK04_0220E9DC
	mov r0, sl
	add r1, sb, #0x18
	bl MOD04_021F2F9C
	mov r0, sl
	add r1, sb, #0x18
	add r2, sb, #0xec
	bl MOD04_021F2F9C
	b _021F9134
_021F9038:
	cmp r0, #7
	bne _021F90C0
	ldr r2, _021F9A14 ; =UNK04_0220E9E4
	mov r0, sl
	add r1, sb, #0x18
	bl MOD04_021F2F9C
	ldr r2, _021F99C8 ; =UNK04_0220E918
	mov r0, sl
	add r1, sb, #0x18
	bl MOD04_021F2F9C
	ldr r0, [sp, #0x24]
	add r1, sb, #0x18
	ldr r2, [r0, #0x198]
	mov r0, sl
	bl MOD04_021F2F64
	ldr r2, _021F99CC ; =UNK04_0220E924
	mov r0, sl
	add r1, sb, #0x18
	bl MOD04_021F2F9C
	ldr r2, [sp, #0x24]
	mov r0, sl
	ldr r2, [r2, #0x1a0]
	add r1, sb, #0x18
	bl MOD04_021F2F64
	ldr r2, _021F99D0 ; =UNK04_0220E930
	mov r0, sl
	add r1, sb, #0x18
	bl MOD04_021F2F9C
	ldr r2, [sp, #0x24]
	mov r0, sl
	ldr r2, [r2, #0x470]
	add r1, sb, #0x18
	bl MOD04_021F2F64
	b _021F9134
_021F90C0:
	cmp r0, #8
	bne _021F9120
	ldr r2, _021F9A18 ; =UNK04_0220E9F0
	mov r0, sl
	add r1, sb, #0x18
	bl MOD04_021F2F9C
	ldr r2, _021F9A1C ; =UNK04_0220EA00
	mov r0, sl
	add r1, sb, #0x18
	bl MOD04_021F2F9C
	mov r0, sl
	add r1, sb, #0x18
	add r2, sb, #0x47
	bl MOD04_021F2F9C
	ldr r2, _021F99D0 ; =UNK04_0220E930
	mov r0, sl
	add r1, sb, #0x18
	bl MOD04_021F2F9C
	ldr r2, [sp, #0x24]
	mov r0, sl
	ldr r2, [r2, #0x470]
	add r1, sb, #0x18
	bl MOD04_021F2F64
	b _021F9134
_021F9120:
	ldr r0, _021F9A20 ; =UNK04_0220EA10
	ldr r1, _021F9A24 ; =UNK04_0220E8D0
	ldr r3, _021F9A28 ; =0x00000275
	mov r2, #0
	bl __msl_assertion_failed
_021F9134:
	ldr r2, _021F9A2C ; =UNK04_0220EA14
	mov r0, sl
	add r1, sb, #0x18
	bl MOD04_021F2F9C
	ldr r2, _021F9A30 ; =UNK04_02210EA0
	mov r0, sl
	add r1, sb, #0x18
	bl MOD04_021F2F9C
	ldr r2, _021F9A34 ; =UNK04_0220EA20
	mov r0, sl
	add r1, sb, #0x18
	bl MOD04_021F2F9C
	ldr r0, [sp, #0x1c]
	mov r1, #4
	str r1, [r0, #0x14]
	b _021FA704
_021F9174:
	cmp r0, #4
	bne _021FA704
	add r1, sp, #0xa0
	ldr r0, _021F99B8 ; =UNK04_0220E8DC
	str r1, [sp]
	str r0, [sp, #4]
	ldr r1, [sb, #4]
	add r3, sp, #0x9c
	mov r0, sl
	add r2, sb, #8
	bl MOD04_021F2A2C
	cmp r0, #0
	beq _021F91E8
	cmp r0, #3
	ldrne ip, _021F99B4 ; =0x000004EC
	addne sp, sp, ip
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, _021F99BC ; =0x00000D01
	ldr r2, _021F9A38 ; =UNK04_0220EA28
	mov r0, sl
	bl MOD04_021FAF00
	mov r0, sl
	mov r1, #3
	mov r2, #0
	bl MOD04_021F3500
	ldr ip, _021F99B4 ; =0x000004EC
	mov r0, #3
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F91E8:
	ldr r0, [sb, #8]
	ldr r1, _021F9A34 ; =UNK04_0220EA20
	bl strstr
	cmp r0, #0
	beq _021FA704
	mov r0, #0
	str r0, [sp, #0x90]
	ldr r0, [sp, #0x1c]
	mov r1, #5
	str r1, [r0, #0x14]
	ldr r1, [sb, #8]
	mov r0, sl
	mov r2, #1
	bl MOD04_021FB2F8
	cmp r0, #0
	ldrne ip, _021F99B4 ; =0x000004EC
	movne r0, #1
	strne r0, [sb, #0x140]
	addne sp, sp, ip
	movne r0, #4
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, [sb]
	cmp r0, #1
	bne _021F9600
	mov r0, #0
	str r0, [sp, #0x20]
	str r0, [sp, #0xdc]
	str r0, [sp, #0xe0]
	str r0, [sp, #0xe8]
	mov r0, #1
	str r0, [sp, #0x3c]
	mov r0, #0x33
	str r0, [sp, #0x50]
	mov r0, #0x15
	str r0, [sp, #0x4c]
	mov r0, #0x600
	str r0, [sp, #0x38]
	ldr r0, [sp, #0x20]
	ldr r1, _021F9A3C ; =0x00000601
	str r0, [sp, #0x40]
	mov r0, #0xac
	str r0, [sp, #0x44]
	ldr r0, [sp, #0x20]
	str r1, [sp, #0xe4]
	add r5, sp, #0xec
	add r6, sp, #0x2ec
	mov r4, #0x1f
	str r0, [sp, #0x48]
_021F92A8:
	str r6, [sp]
	ldr r1, [sb, #8]
	mov r0, sl
	add r2, sp, #0x90
	mov r3, r5
	bl MOD04_021FAF2C
	cmp r0, #0
	ldrne ip, _021F99B4 ; =0x000004EC
	addne sp, sp, ip
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, _021F9A40 ; =UNK04_0220EA54
	mov r0, r5
	bl strcmp
	cmp r0, #0
	bne _021F9344
	str r6, [sp]
	ldr r1, [sb, #8]
	mov r0, sl
	add r2, sp, #0x90
	mov r3, r5
	bl MOD04_021FAF2C
	cmp r0, #0
	ldrne ip, _021F99B4 ; =0x000004EC
	addne sp, sp, ip
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, _021F9A44 ; =UNK04_0220EA5C
	mov r0, r5
	bl strcmp
	cmp r0, #0
	bne _021F9338
	ldr r1, _021F9A20 ; =UNK04_0220EA10
	mov r0, r6
	bl strcmp
	cmp r0, #0
	ldrne r0, [sp, #0x38]
	strne r0, [sp, #0xe4]
_021F9338:
	ldr r0, [sp, #0x3c]
	str r0, [sp, #0x20]
	b _021F9530
_021F9344:
	ldr r1, _021F9A48 ; =UNK04_0220EA64
	mov r0, r5
	bl strcmp
	cmp r0, #0
	bne _021F9500
	ldr r1, [sp, #0xe0]
	ldr r0, [sp, #0xe8]
	add r2, r1, #1
	mov r1, #0xac
	mul r1, r2, r1
	str r2, [sp, #0xe0]
	bl MOD04_021DD844
	movs r8, r0
	str r8, [sp, #0xe8]
	bne _021F939C
	ldr r1, _021F9A4C ; =UNK04_0220E8A0
	mov r0, sl
	bl MOD04_021FAEEC
	ldr ip, _021F99B4 ; =0x000004EC
	mov r0, #1
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F939C:
	ldr r1, [sp, #0xe0]
	mov r0, #0xac
	sub r1, r1, #1
	mul fp, r1, r0
	add r7, r8, fp
	ldr r1, [sp, #0x40]
	ldr r2, [sp, #0x44]
	mov r0, r7
	bl memset
	mov r0, r6
	bl atol
	str r0, [r8, fp]
	ldr r8, [sp, #0x48]
_021F93D0:
	ldr fp, [sp, #0x90]
	mov r0, sl
	str r6, [sp]
	ldr r1, [sb, #8]
	add r2, sp, #0x90
	mov r3, r5
	bl MOD04_021FAF2C
	cmp r0, #0
	ldrne ip, _021F99B4 ; =0x000004EC
	addne sp, sp, ip
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, _021F9A50 ; =UNK04_0220EA68
	mov r0, r5
	bl strcmp
	cmp r0, #0
	bne _021F9424
	add r0, r7, #4
	mov r1, r6
	mov r2, r4
	bl MOD04_021FB3DC
	b _021F94F4
_021F9424:
	ldr r1, _021F9A54 ; =UNK04_0220EA70
	mov r0, r5
	bl strcmp
	cmp r0, #0
	bne _021F944C
	ldr r2, [sp, #0x4c]
	add r0, r7, #0x23
	mov r1, r6
	bl MOD04_021FB3DC
	b _021F94F4
_021F944C:
	ldr r1, _021F9A58 ; =UNK04_0220EA7C
	mov r0, r5
	bl strcmp
	cmp r0, #0
	bne _021F9474
	add r0, r7, #0x38
	mov r1, r6
	mov r2, r4
	bl MOD04_021FB3DC
	b _021F94F4
_021F9474:
	ldr r1, _021F9A5C ; =UNK04_0220EA88
	mov r0, r5
	bl strcmp
	cmp r0, #0
	bne _021F949C
	add r0, r7, #0x57
	mov r1, r6
	mov r2, r4
	bl MOD04_021FB3DC
	b _021F94F4
_021F949C:
	ldr r1, _021F9A60 ; =UNK04_0220EA94
	mov r0, r5
	bl strcmp
	cmp r0, #0
	bne _021F94C4
	ldr r2, [sp, #0x50]
	add r0, r7, #0x76
	mov r1, r6
	bl MOD04_021FB3DC
	b _021F94F4
_021F94C4:
	ldr r1, _021F9A48 ; =UNK04_0220EA64
	mov r0, r5
	bl strcmp
	cmp r0, #0
	beq _021F94EC
	ldr r1, _021F9A40 ; =UNK04_0220EA54
	mov r0, r5
	bl strcmp
	cmp r0, #0
	bne _021F94F4
_021F94EC:
	ldr r8, [sp, #0x3c]
	str fp, [sp, #0x90]
_021F94F4:
	cmp r8, #0
	beq _021F93D0
	b _021F9530
_021F9500:
	ldr r2, _021F9A64 ; =UNK04_0220EA9C
	mov r0, sl
	mov r1, #1
	bl MOD04_021FAF00
	mov r0, sl
	mov r1, #3
	mov r2, #1
	bl MOD04_021F3500
	ldr ip, _021F99B4 ; =0x000004EC
	mov r0, #3
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F9530:
	ldr r0, [sp, #0x20]
	cmp r0, #0
	beq _021F92A8
	ldr r0, [sp, #0x1c]
	ldr r4, [sp, #0xe4]
	ldr r3, [r0, #0xc]
	ldr r2, [r0, #0x10]
	cmp r3, #0
	str r3, [sp, #0x94]
	str r2, [sp, #0x98]
	beq _021F9568
	add r1, sp, #0xdc
	mov r0, sl
	blx r3
_021F9568:
	cmp r4, #0x600
	bne _021F95EC
	ldr r0, [sp, #0xe4]
	cmp r0, #0x600
	bne _021F95EC
	add r0, sb, #0x8f
	str r0, [sp]
	add r0, sb, #0xae
	str r0, [sp, #4]
	ldr r1, [sb, #0x130]
	mov r0, sl
	str r1, [sp, #8]
	ldr r3, [sp, #0xe0]
	ldr r2, [sb, #0x134]
	add r1, sb, #0x28
	add r2, r3, r2
	str r2, [sp, #0xc]
	ldr r2, [sp, #0x1c]
	ldr r3, [r2, #8]
	add r2, sb, #0x47
	str r3, [sp, #0x10]
	ldr r3, [sp, #0x1c]
	ldr r4, [r3, #0xc]
	add r3, sb, #0x5c
	str r4, [sp, #0x14]
	ldr r4, [sp, #0x1c]
	ldr r4, [r4, #0x10]
	str r4, [sp, #0x18]
	bl MOD04_021FA770
	cmp r0, #0
	ldrne ip, _021F99B4 ; =0x000004EC
	addne sp, sp, ip
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F95EC:
	ldr r0, [sp, #0xe8]
	bl MOD04_021DD82C
	mov r0, #0
	str r0, [sp, #0xe8]
	b _021FA6F8
_021F9600:
	cmp r0, #2
	bne _021F972C
	ldr r0, [sp, #0x1c]
	ldr r1, [r0, #0xc]
	ldr r0, [r0, #0x10]
	cmp r1, #0
	str r1, [sp, #0xd4]
	str r0, [sp, #0xd8]
	beq _021FA6F8
	add r0, sp, #0x2ec
	str r0, [sp]
	ldr r1, [sb, #8]
	add r2, sp, #0x90
	add r3, sp, #0xec
	mov r0, sl
	bl MOD04_021FAF2C
	cmp r0, #0
	ldrne ip, _021F99B4 ; =0x000004EC
	addne sp, sp, ip
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, _021F9A68 ; =UNK04_0220EAC4
	add r0, sp, #0xec
	bl strcmp
	cmp r0, #0
	beq _021F9694
	ldr r2, _021F9A64 ; =UNK04_0220EA9C
	mov r0, sl
	mov r1, #1
	bl MOD04_021FAF00
	mov r0, sl
	mov r1, #3
	mov r2, #1
	bl MOD04_021F3500
	ldr ip, _021F99B4 ; =0x000004EC
	mov r0, #3
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F9694:
	mov r0, #0x3c
	bl MOD04_021DD860
	movs r4, r0
	bne _021F96C0
	ldr r1, _021F9A4C ; =UNK04_0220E8A0
	mov r0, sl
	bl MOD04_021FAEEC
	ldr ip, _021F99B4 ; =0x000004EC
	mov r0, #1
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F96C0:
	mov r0, #0
	str r0, [r4]
	add r0, r4, #4
	add r1, sb, #0x5c
	mov r2, #0x33
	bl MOD04_021FB3DC
	add r0, sp, #0x28c
	ldrsb r0, [r0, #0x60]
	add r1, sp, #0xd4
	mov r3, r4
	cmp r0, #0x30
	moveq r0, #0
	streq r0, [r4, #0x38]
	movne r0, #1
	strne r0, [r4, #0x38]
	ldr r0, [sp, #0x1c]
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, sl
	ldmia r1, {r1, r2}
	bl MOD04_021F3454
	cmp r0, #0
	beq _021FA6F8
	ldr ip, _021F99B4 ; =0x000004EC
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F972C:
	cmp r0, #3
	bne _021F9AFC
	ldr r0, [sp, #0x1c]
	ldr r1, [r0, #0xc]
	ldr r0, [r0, #0x10]
	cmp r1, #0
	str r1, [sp, #0xcc]
	str r0, [sp, #0xd0]
	beq _021FA6F8
	mov r0, #0x44
	bl MOD04_021DD860
	movs r8, r0
	bne _021F977C
	ldr r1, _021F9A4C ; =UNK04_0220E8A0
	mov r0, sl
	bl MOD04_021FAEEC
	ldr ip, _021F99B4 ; =0x000004EC
	mov r0, #1
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F977C:
	mov r2, #0
	add r0, r8, #4
	add r1, sb, #0x5c
	str r2, [r8]
	bl strcpy
	mov r1, #0
	str r1, [r8, #0x38]
	str r1, [r8, #0x3c]
	add r0, sp, #0x2ec
	str r1, [r8, #0x40]
	str r0, [sp]
	ldr r1, [sb, #8]
	add r2, sp, #0x90
	add r3, sp, #0xec
	mov r0, sl
	bl MOD04_021FAF2C
	cmp r0, #0
	ldrne ip, _021F99B4 ; =0x000004EC
	addne sp, sp, ip
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, _021F9A6C ; =UNK04_0220EAC8
	add r0, sp, #0xec
	bl strcmp
	cmp r0, #0
	beq _021F9810
	ldr r2, _021F9A64 ; =UNK04_0220EA9C
	mov r0, sl
	mov r1, #1
	bl MOD04_021FAF00
	mov r0, sl
	mov r1, #3
	mov r2, #1
	bl MOD04_021F3500
	ldr ip, _021F99B4 ; =0x000004EC
	mov r0, #3
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F9810:
	mov r0, #1
	mov r7, #0
	add r6, sp, #0xec
	add fp, sp, #0x2ec
	mov r5, #0x1f
	mov r4, #0x15
	str r0, [sp, #0x54]
_021F982C:
	str fp, [sp]
	ldr r1, [sb, #8]
	mov r0, sl
	add r2, sp, #0x90
	mov r3, r6
	bl MOD04_021FAF2C
	cmp r0, #0
	ldrne ip, _021F99B4 ; =0x000004EC
	addne sp, sp, ip
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, _021F9A50 ; =UNK04_0220EA68
	mov r0, r6
	bl strcmp
	cmp r0, #0
	bne _021F9904
	ldr r0, [r8, #0x3c]
	ldr r1, [r8, #0x38]
	add r1, r1, #1
	mov r1, r1, lsl #2
	bl MOD04_021DD844
	cmp r0, #0
	bne _021F98A0
	ldr r1, _021F9A4C ; =UNK04_0220E8A0
	mov r0, sl
	bl MOD04_021FAEEC
	ldr ip, _021F99B4 ; =0x000004EC
	mov r0, #1
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F98A0:
	str r0, [r8, #0x3c]
	mov r0, r5
	bl MOD04_021DD860
	cmp r0, #0
	bne _021F98D0
	ldr r1, _021F9A4C ; =UNK04_0220E8A0
	mov r0, sl
	bl MOD04_021FAEEC
	ldr ip, _021F99B4 ; =0x000004EC
	mov r0, #1
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F98D0:
	ldr r3, [r8, #0x3c]
	ldr r2, [r8, #0x38]
	mov r1, fp
	str r0, [r3, r2, lsl #2]
	ldr r3, [r8, #0x3c]
	ldr r0, [r8, #0x38]
	mov r2, r5
	ldr r0, [r3, r0, lsl #2]
	bl MOD04_021FB3DC
	ldr r0, [r8, #0x38]
	add r0, r0, #1
	str r0, [r8, #0x38]
	b _021F9ABC
_021F9904:
	ldr r1, _021F9A54 ; =UNK04_0220EA70
	mov r0, r6
	bl strcmp
	cmp r0, #0
	bne _021F9A74
	ldr r0, [r8, #0x38]
	cmp r0, #0
	ble _021F9ABC
	mov r1, r0, lsl #2
	ldr r0, [r8, #0x40]
	bl MOD04_021DD844
	cmp r0, #0
	bne _021F9954
	ldr r1, _021F9A4C ; =UNK04_0220E8A0
	mov r0, sl
	bl MOD04_021FAEEC
	ldr ip, _021F99B4 ; =0x000004EC
	mov r0, #1
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F9954:
	str r0, [r8, #0x40]
	mov r0, r4
	bl MOD04_021DD860
	cmp r0, #0
	bne _021F9984
	ldr r1, _021F9A4C ; =UNK04_0220E8A0
	mov r0, sl
	bl MOD04_021FAEEC
	ldr ip, _021F99B4 ; =0x000004EC
	mov r0, #1
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F9984:
	ldr r3, [r8, #0x40]
	ldr r2, [r8, #0x38]
	mov r1, fp
	sub r2, r2, #1
	str r0, [r3, r2, lsl #2]
	ldr r3, [r8, #0x40]
	ldr r0, [r8, #0x38]
	mov r2, r4
	sub r0, r0, #1
	ldr r0, [r3, r0, lsl #2]
	bl MOD04_021FB3DC
	b _021F9ABC
	.align 2, 0
_021F99B4: .word 0x000004EC
_021F99B8: .word UNK04_0220E8DC
_021F99BC: .word 0x00000D01
_021F99C0: .word UNK04_0220E8E0
_021F99C4: .word UNK04_0220E90C
_021F99C8: .word UNK04_0220E918
_021F99CC: .word UNK04_0220E924
_021F99D0: .word UNK04_0220E930
_021F99D4: .word UNK04_0220E940
_021F99D8: .word UNK04_0220E948
_021F99DC: .word UNK04_0220E958
_021F99E0: .word UNK04_0220E960
_021F99E4: .word UNK04_0220E96C
_021F99E8: .word UNK04_0220E978
_021F99EC: .word UNK04_0220E984
_021F99F0: .word UNK04_0220E98C
_021F99F4: .word UNK04_0220E994
_021F99F8: .word UNK04_0220E99C
_021F99FC: .word UNK04_0220E9A4
_021F9A00: .word UNK04_0220E9B0
_021F9A04: .word UNK04_0220E9BC
_021F9A08: .word UNK04_0220E9C4
_021F9A0C: .word UNK04_0220E9D0
_021F9A10: .word UNK04_0220E9DC
_021F9A14: .word UNK04_0220E9E4
_021F9A18: .word UNK04_0220E9F0
_021F9A1C: .word UNK04_0220EA00
_021F9A20: .word UNK04_0220EA10
_021F9A24: .word UNK04_0220E8D0
_021F9A28: .word 0x00000275
_021F9A2C: .word UNK04_0220EA14
_021F9A30: .word UNK04_02210EA0
_021F9A34: .word UNK04_0220EA20
_021F9A38: .word UNK04_0220EA28
_021F9A3C: .word 0x00000601
_021F9A40: .word UNK04_0220EA54
_021F9A44: .word UNK04_0220EA5C
_021F9A48: .word UNK04_0220EA64
_021F9A4C: .word UNK04_0220E8A0
_021F9A50: .word UNK04_0220EA68
_021F9A54: .word UNK04_0220EA70
_021F9A58: .word UNK04_0220EA7C
_021F9A5C: .word UNK04_0220EA88
_021F9A60: .word UNK04_0220EA94
_021F9A64: .word UNK04_0220EA9C
_021F9A68: .word UNK04_0220EAC4
_021F9A6C: .word UNK04_0220EAC8
_021F9A70: .word UNK04_0220EACC
_021F9A74:
	ldr r1, _021F9A70 ; =UNK04_0220EACC
	mov r0, r6
	bl strcmp
	cmp r0, #0
	ldreq r7, [sp, #0x54]
	beq _021F9ABC
	ldr r2, _021F9A64 ; =UNK04_0220EA9C
	mov r0, sl
	mov r1, #1
	bl MOD04_021FAF00
	mov r0, sl
	mov r1, #3
	mov r2, #1
	bl MOD04_021F3500
	ldr ip, _021F99B4 ; =0x000004EC
	mov r0, #3
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F9ABC:
	cmp r7, #0
	beq _021F982C
	ldr r0, [sp, #0x1c]
	add r1, sp, #0xcc
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, sl
	mov r3, r8
	ldmia r1, {r1, r2}
	bl MOD04_021F3454
	cmp r0, #0
	beq _021FA6F8
	ldr ip, _021F99B4 ; =0x000004EC
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F9AFC:
	cmp r0, #4
	bne _021F9DE0
	ldr r0, [sp, #0x1c]
	ldr r1, [r0, #0xc]
	ldr r0, [r0, #0x10]
	cmp r1, #0
	str r1, [sp, #0xc4]
	str r0, [sp, #0xc8]
	beq _021FA6F8
	mov r0, #0x10
	bl MOD04_021DD860
	str r0, [sp, #0x28]
	cmp r0, #0
	bne _021F9B50
	ldr r1, _021F9A4C ; =UNK04_0220E8A0
	mov r0, sl
	bl MOD04_021FAEEC
	ldr ip, _021F99B4 ; =0x000004EC
	mov r0, #1
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F9B50:
	mov r0, #0
	str r0, [sp, #0x34]
	ldr r1, [sb, #0x138]
	ldr r0, [sp, #0x28]
	add r4, sp, #0xec
	str r1, [r0, #4]
	ldr r1, [sp, #0x34]
	add r5, sp, #0x2ec
	str r1, [r0]
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	mov r0, #0x1f
	str r0, [sp, #0x68]
	mov r0, #0x100
	str r0, [sp, #0x64]
	mov r0, r1
	str r0, [sp, #0x58]
	mov r0, #0x128
	str r0, [sp, #0x5c]
	mov r0, r1
	mov fp, #1
	str r0, [sp, #0x60]
_021F9BA8:
	str r5, [sp]
	ldr r1, [sb, #8]
	mov r0, sl
	add r2, sp, #0x90
	mov r3, r4
	bl MOD04_021FAF2C
	cmp r0, #0
	ldrne ip, _021F99B4 ; =0x000004EC
	addne sp, sp, ip
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, _021FA72C ; =UNK04_0220EAD4
	mov r0, r4
	bl strcmp
	cmp r0, #0
	streq fp, [sp, #0x34]
	beq _021F9D9C
	ldr r1, _021FA730 ; =UNK04_0220EADC
	mov r0, r4
	bl strcmp
	cmp r0, #0
	bne _021F9D6C
	ldr r0, [sp, #0x28]
	mov r2, #0x128
	ldr r0, [r0, #8]
	add r1, r0, #1
	ldr r0, [sp, #0x28]
	str r1, [r0, #8]
	ldr r1, [sp, #0x28]
	ldr r0, [r0, #0xc]
	ldr r3, [r1, #8]
	mul r1, r3, r2
	bl MOD04_021DD844
	ldr r1, [sp, #0x28]
	str r0, [r1, #0xc]
	mov r0, r1
	ldr r6, [r0, #0xc]
	cmp r6, #0
	bne _021F9C5C
	ldr r1, _021F9A4C ; =UNK04_0220E8A0
	mov r0, sl
	bl MOD04_021FAEEC
	ldr ip, _021F99B4 ; =0x000004EC
	mov r0, #1
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F9C5C:
	ldr r1, [r0, #8]
	mov r0, #0x128
	sub r1, r1, #1
	mul r7, r1, r0
	add r8, r6, r7
	ldr r1, [sp, #0x58]
	ldr r2, [sp, #0x5c]
	mov r0, r8
	bl memset
	mov r0, r5
	str fp, [r8, #0x24]
	bl atol
	str r0, [r6, r7]
	ldr r7, [sp, #0x60]
_021F9C94:
	ldr r6, [sp, #0x90]
	mov r0, sl
	str r5, [sp]
	ldr r1, [sb, #8]
	add r2, sp, #0x90
	mov r3, r4
	bl MOD04_021FAF2C
	cmp r0, #0
	ldrne ip, _021F99B4 ; =0x000004EC
	addne sp, sp, ip
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, _021FA734 ; =UNK04_0220EAE0
	mov r0, r4
	bl strcmp
	cmp r0, #0
	bne _021F9CE8
	ldr r2, [sp, #0x64]
	add r0, r8, #0x28
	mov r1, r5
	bl MOD04_021FB3DC
	b _021F9D0C
_021F9CE8:
	ldr r1, _021F9A50 ; =UNK04_0220EA68
	mov r0, r4
	bl strcmp
	cmp r0, #0
	bne _021F9D0C
	ldr r2, [sp, #0x68]
	add r0, r8, #4
	mov r1, r5
	bl MOD04_021FB3DC
_021F9D0C:
	ldr r1, _021FA738 ; =UNK04_0220EAE8
	mov r0, r4
	bl strcmp
	cmp r0, #0
	bne _021F9D30
	mov r0, r5
	bl atol
	str r0, [r8, #0x24]
	b _021F9D60
_021F9D30:
	ldr r1, _021FA730 ; =UNK04_0220EADC
	mov r0, r4
	bl strcmp
	cmp r0, #0
	beq _021F9D58
	ldr r1, _021FA72C ; =UNK04_0220EAD4
	mov r0, r4
	bl strcmp
	cmp r0, #0
	bne _021F9D60
_021F9D58:
	str r6, [sp, #0x90]
	mov r7, fp
_021F9D60:
	cmp r7, #0
	beq _021F9C94
	b _021F9D9C
_021F9D6C:
	ldr r2, _021F9A64 ; =UNK04_0220EA9C
	mov r0, sl
	mov r1, #1
	bl MOD04_021FAF00
	mov r0, sl
	mov r1, #3
	mov r2, #1
	bl MOD04_021F3500
	ldr ip, _021F99B4 ; =0x000004EC
	mov r0, #3
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F9D9C:
	ldr r0, [sp, #0x34]
	cmp r0, #0
	beq _021F9BA8
	ldr r0, [sp, #0x1c]
	ldr r3, [sp, #0x28]
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	add r1, sp, #0xc4
	mov r0, sl
	ldmia r1, {r1, r2}
	bl MOD04_021F3454
	cmp r0, #0
	beq _021FA6F8
	ldr ip, _021F99B4 ; =0x000004EC
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F9DE0:
	cmp r0, #5
	bne _021F9F50
	ldr r0, [sp, #0x1c]
	ldr r1, [r0, #0xc]
	ldr r0, [r0, #0x10]
	cmp r1, #0
	str r1, [sp, #0xbc]
	str r0, [sp, #0xc0]
	beq _021FA6F8
	add r0, sp, #0x2ec
	str r0, [sp]
	ldr r1, [sb, #8]
	add r2, sp, #0x90
	add r3, sp, #0xec
	mov r0, sl
	bl MOD04_021FAF2C
	cmp r0, #0
	ldrne ip, _021F99B4 ; =0x000004EC
	addne sp, sp, ip
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, _021FA73C ; =UNK04_0220EAF4
	add r0, sp, #0xec
	bl strcmp
	cmp r0, #0
	beq _021F9E74
	ldr r2, _021F9A64 ; =UNK04_0220EA9C
	mov r0, sl
	mov r1, #1
	bl MOD04_021FAF00
	mov r0, sl
	mov r1, #3
	mov r2, #1
	bl MOD04_021F3500
	ldr ip, _021F99B4 ; =0x000004EC
	mov r0, #3
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F9E74:
	add r0, sp, #0x2ec
	bl atol
	movs r5, r0
	ldrne r0, [sp, #0x24]
	movne r4, #0
	strne r5, [r0, #0x418]
	bne _021F9EE8
	ldr r0, [sb, #8]
	ldr r1, _021FA740 ; =UNK04_0220EAF8
	add r2, sp, #0x2ec
	mov r3, #0x200
	bl MOD04_021FB1F0
	cmp r0, #0
	bne _021F9EDC
	ldr r2, _021F9A64 ; =UNK04_0220EA9C
	mov r0, sl
	mov r1, #1
	bl MOD04_021FAF00
	mov r0, sl
	mov r1, #3
	mov r2, #1
	bl MOD04_021F3500
	ldr ip, _021F99B4 ; =0x000004EC
	mov r0, #3
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F9EDC:
	add r0, sp, #0x2ec
	bl atol
	mov r4, r0
_021F9EE8:
	mov r0, #8
	bl MOD04_021DD860
	movs r3, r0
	bne _021F9F14
	ldr r1, _021F9A4C ; =UNK04_0220E8A0
	mov r0, sl
	bl MOD04_021FAEEC
	ldr ip, _021F99B4 ; =0x000004EC
	mov r0, #1
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F9F14:
	str r5, [r3]
	ldr r0, [sp, #0x1c]
	str r4, [r3, #4]
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r1, sp, #0xbc
	mov r0, sl
	ldmia r1, {r1, r2}
	bl MOD04_021F3454
	cmp r0, #0
	beq _021FA6F8
	ldr ip, _021F99B4 ; =0x000004EC
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F9F50:
	cmp r0, #6
	bne _021FA0C8
	ldr r0, [sp, #0x1c]
	ldr r1, [r0, #0xc]
	ldr r0, [r0, #0x10]
	cmp r1, #0
	str r1, [sp, #0xb4]
	str r0, [sp, #0xb8]
	beq _021FA6F8
	add r0, sp, #0x2ec
	str r0, [sp]
	ldr r1, [sb, #8]
	add r2, sp, #0x90
	add r3, sp, #0xec
	mov r0, sl
	bl MOD04_021FAF2C
	cmp r0, #0
	ldrne ip, _021F99B4 ; =0x000004EC
	addne sp, sp, ip
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, _021FA744 ; =UNK04_0220EB00
	add r0, sp, #0xec
	bl strcmp
	cmp r0, #0
	beq _021F9FE4
	ldr r2, _021F9A64 ; =UNK04_0220EA9C
	mov r0, sl
	mov r1, #1
	bl MOD04_021FAF00
	mov r0, sl
	mov r1, #3
	mov r2, #1
	bl MOD04_021F3500
	ldr ip, _021F99B4 ; =0x000004EC
	mov r0, #3
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F9FE4:
	add r0, sp, #0x2ec
	bl atol
	movs r5, r0
	ldrne r0, [sp, #0x24]
	ldr r1, _021FA740 ; =UNK04_0220EAF8
	strne r5, [r0, #0x418]
	ldr r0, [sb, #8]
	add r2, sp, #0x2ec
	mov r3, #0x200
	bl MOD04_021FB1F0
	cmp r0, #0
	bne _021FA054
	cmp r5, #0
	bne _021FA04C
	ldr r2, _021F9A64 ; =UNK04_0220EA9C
	mov r0, sl
	mov r1, #1
	bl MOD04_021FAF00
	mov r0, sl
	mov r1, #3
	mov r2, #1
	bl MOD04_021F3500
	ldr ip, _021F99B4 ; =0x000004EC
	mov r0, #3
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021FA04C:
	mov r4, #0
	b _021FA060
_021FA054:
	add r0, sp, #0x2ec
	bl atol
	mov r4, r0
_021FA060:
	mov r0, #8
	bl MOD04_021DD860
	movs r3, r0
	bne _021FA08C
	ldr r1, _021F9A4C ; =UNK04_0220E8A0
	mov r0, sl
	bl MOD04_021FAEEC
	ldr ip, _021F99B4 ; =0x000004EC
	mov r0, #1
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021FA08C:
	str r5, [r3]
	ldr r0, [sp, #0x1c]
	str r4, [r3, #4]
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r1, sp, #0xb4
	mov r0, sl
	ldmia r1, {r1, r2}
	bl MOD04_021F3454
	cmp r0, #0
	beq _021FA6F8
	ldr ip, _021F99B4 ; =0x000004EC
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021FA0C8:
	cmp r0, #7
	bne _021FA474
	ldr r0, [sp, #0x1c]
	ldr r1, [r0, #0xc]
	ldr r0, [r0, #0x10]
	cmp r1, #0
	str r1, [sp, #0xac]
	str r0, [sp, #0xb0]
	beq _021FA6F8
	mov r0, #0xc
	bl MOD04_021DD860
	str r0, [sp, #0x2c]
	cmp r0, #0
	bne _021FA11C
	ldr r1, _021F9A4C ; =UNK04_0220E8A0
	mov r0, sl
	bl MOD04_021FAEEC
	ldr ip, _021F99B4 ; =0x000004EC
	mov r0, #1
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021FA11C:
	mov r2, #0
	str r2, [r0]
	str r2, [r0, #4]
	str r2, [r0, #8]
	add r1, sp, #0x2ec
	str r1, [sp]
	ldr r1, [sb, #8]
	add r2, sp, #0x90
	add r3, sp, #0xec
	mov r0, sl
	bl MOD04_021FAF2C
	cmp r0, #0
	ldrne ip, _021F99B4 ; =0x000004EC
	addne sp, sp, ip
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, _021FA748 ; =UNK04_0220EB04
	add r0, sp, #0xec
	bl strcmp
	cmp r0, #0
	beq _021FA19C
	ldr r2, _021F9A64 ; =UNK04_0220EA9C
	mov r0, sl
	mov r1, #1
	bl MOD04_021FAF00
	mov r0, sl
	mov r1, #3
	mov r2, #1
	bl MOD04_021F3500
	ldr ip, _021F99B4 ; =0x000004EC
	mov r0, #3
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021FA19C:
	mov r0, #0
	str r0, [sp, #0x30]
	mov r0, #1
	str r0, [sp, #0x6c]
	mov r0, #0x33
	str r0, [sp, #0x80]
	mov r0, #0x15
	str r0, [sp, #0x7c]
	ldr r0, [sp, #0x30]
	add r5, sp, #0xec
	str r0, [sp, #0x70]
	mov r0, #0xac
	str r0, [sp, #0x74]
	ldr r0, [sp, #0x30]
	add r6, sp, #0x2ec
	mov r4, #0x1f
	str r0, [sp, #0x78]
_021FA1E0:
	str r6, [sp]
	ldr r1, [sb, #8]
	mov r0, sl
	add r2, sp, #0x90
	mov r3, r5
	bl MOD04_021FAF2C
	cmp r0, #0
	ldrne ip, _021F99B4 ; =0x000004EC
	addne sp, sp, ip
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, _021FA74C ; =UNK04_0220EB0C
	mov r0, r5
	bl strcmp
	cmp r0, #0
	ldreq r0, [sp, #0x6c]
	streq r0, [sp, #0x30]
	beq _021FA430
	ldr r1, _021FA750 ; =UNK04_0220EB14
	mov r0, r5
	bl strcmp
	cmp r0, #0
	bne _021FA400
	ldr r1, [sp, #0x2c]
	ldr r0, [sp, #0x2c]
	ldr r2, [r1, #4]
	mov r1, #0xac
	add r2, r2, #1
	mul r1, r2, r1
	ldr r0, [r0, #8]
	bl MOD04_021DD844
	cmp r0, #0
	bne _021FA27C
	ldr r1, _021F9A4C ; =UNK04_0220E8A0
	mov r0, sl
	bl MOD04_021FAEEC
	ldr ip, _021F99B4 ; =0x000004EC
	mov r0, #1
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021FA27C:
	ldr r1, [sp, #0x2c]
	ldr r2, [sp, #0x74]
	str r0, [r1, #8]
	mov r0, r1
	ldr r1, [r0, #4]
	ldr r7, [r0, #8]
	mov r0, #0xac
	mul fp, r1, r0
	add r8, r7, fp
	ldr r1, [sp, #0x70]
	mov r0, r8
	bl memset
	ldr r0, [sp, #0x2c]
	ldr r1, [r0, #4]
	mov r0, r6
	add r2, r1, #1
	ldr r1, [sp, #0x2c]
	str r2, [r1, #4]
	bl atol
	str r0, [r7, fp]
	ldr r7, [sp, #0x78]
_021FA2D0:
	ldr fp, [sp, #0x90]
	mov r0, sl
	str r6, [sp]
	ldr r1, [sb, #8]
	add r2, sp, #0x90
	mov r3, r5
	bl MOD04_021FAF2C
	cmp r0, #0
	ldrne ip, _021F99B4 ; =0x000004EC
	addne sp, sp, ip
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, _021F9A50 ; =UNK04_0220EA68
	mov r0, r5
	bl strcmp
	cmp r0, #0
	bne _021FA324
	add r0, r8, #4
	mov r1, r6
	mov r2, r4
	bl MOD04_021FB3DC
	b _021FA3F4
_021FA324:
	ldr r1, _021F9A54 ; =UNK04_0220EA70
	mov r0, r5
	bl strcmp
	cmp r0, #0
	bne _021FA34C
	ldr r2, [sp, #0x7c]
	add r0, r8, #0x23
	mov r1, r6
	bl MOD04_021FB3DC
	b _021FA3F4
_021FA34C:
	ldr r1, _021FA754 ; =UNK04_0220EB18
	mov r0, r5
	bl strcmp
	cmp r0, #0
	bne _021FA374
	add r0, r8, #0x38
	mov r1, r6
	mov r2, r4
	bl MOD04_021FB3DC
	b _021FA3F4
_021FA374:
	ldr r1, _021FA758 ; =UNK04_0220EB20
	mov r0, r5
	bl strcmp
	cmp r0, #0
	bne _021FA39C
	add r0, r8, #0x57
	mov r1, r6
	mov r2, r4
	bl MOD04_021FB3DC
	b _021FA3F4
_021FA39C:
	ldr r1, _021F9A60 ; =UNK04_0220EA94
	mov r0, r5
	bl strcmp
	cmp r0, #0
	bne _021FA3C4
	ldr r2, [sp, #0x80]
	add r0, r8, #0x76
	mov r1, r6
	bl MOD04_021FB3DC
	b _021FA3F4
_021FA3C4:
	ldr r1, _021FA750 ; =UNK04_0220EB14
	mov r0, r5
	bl strcmp
	cmp r0, #0
	beq _021FA3EC
	ldr r1, _021FA74C ; =UNK04_0220EB0C
	mov r0, r5
	bl strcmp
	cmp r0, #0
	bne _021FA3F4
_021FA3EC:
	ldr r7, [sp, #0x6c]
	str fp, [sp, #0x90]
_021FA3F4:
	cmp r7, #0
	beq _021FA2D0
	b _021FA430
_021FA400:
	ldr r2, _021F9A64 ; =UNK04_0220EA9C
	mov r0, sl
	mov r1, #1
	bl MOD04_021FAF00
	mov r0, sl
	mov r1, #3
	mov r2, #1
	bl MOD04_021F3500
	ldr ip, _021F99B4 ; =0x000004EC
	mov r0, #3
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021FA430:
	ldr r0, [sp, #0x30]
	cmp r0, #0
	beq _021FA1E0
	ldr r0, [sp, #0x1c]
	ldr r3, [sp, #0x2c]
	str r0, [sp]
	mov r0, #8
	str r0, [sp, #4]
	add r1, sp, #0xac
	mov r0, sl
	ldmia r1, {r1, r2}
	bl MOD04_021F3454
	cmp r0, #0
	beq _021FA6F8
	ldr ip, _021F99B4 ; =0x000004EC
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021FA474:
	cmp r0, #8
	bne _021FA6E4
	ldr r0, [sp, #0x1c]
	ldr r1, [r0, #0xc]
	ldr r0, [r0, #0x10]
	cmp r1, #0
	str r1, [sp, #0xa4]
	str r0, [sp, #0xa8]
	beq _021FA6F8
	mov r0, #0xc
	mov r8, #0
	bl MOD04_021DD860
	movs r7, r0
	bne _021FA4C8
	ldr r1, _021F9A4C ; =UNK04_0220E8A0
	mov r0, sl
	bl MOD04_021FAEEC
	ldr ip, _021F99B4 ; =0x000004EC
	mov r0, #1
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021FA4C8:
	mov r1, r8
	str r1, [r7]
	str r1, [r7, #4]
	add r0, sp, #0x2ec
	str r1, [r7, #8]
	str r0, [sp]
	ldr r1, [sb, #8]
	add r2, sp, #0x90
	add r3, sp, #0xec
	mov r0, sl
	bl MOD04_021FAF2C
	cmp r0, #0
	ldrne ip, _021F99B4 ; =0x000004EC
	addne sp, sp, ip
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, _021FA75C ; =UNK04_0220EB28
	add r0, sp, #0xec
	bl strcmp
	cmp r0, #0
	beq _021FA548
	ldr r2, _021F9A64 ; =UNK04_0220EA9C
	mov r0, sl
	mov r1, #1
	bl MOD04_021FAF00
	mov r0, sl
	mov r1, #3
	mov r2, #1
	bl MOD04_021F3500
	ldr ip, _021F99B4 ; =0x000004EC
	mov r0, #3
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021FA548:
	add r0, sp, #0x2ec
	bl atol
	str r0, [r7, #4]
	ldr r0, [r7, #4]
	mov r0, r0, lsl #2
	bl MOD04_021DD860
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	cmp r0, #0
	bne _021FA58C
	ldr r1, _021F9A4C ; =UNK04_0220E8A0
	mov r0, sl
	bl MOD04_021FAEEC
	ldr ip, _021F99B4 ; =0x000004EC
	mov r0, #1
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021FA58C:
	mov r6, r8
	mov r0, #1
	add r5, sp, #0xec
	add fp, sp, #0x2ec
	mov r4, #0x15
	str r6, [sp, #0x84]
	str r0, [sp, #0x88]
_021FA5A8:
	str fp, [sp]
	ldr r1, [sb, #8]
	mov r0, sl
	add r2, sp, #0x90
	mov r3, r5
	bl MOD04_021FAF2C
	cmp r0, #0
	ldrne ip, _021F99B4 ; =0x000004EC
	addne sp, sp, ip
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, _021F9A50 ; =UNK04_0220EA68
	mov r0, r5
	bl strcmp
	cmp r0, #0
	bne _021FA634
	mov r0, r4
	bl MOD04_021DD860
	ldr r1, [r7, #8]
	str r0, [r1, r8, lsl #2]
	ldr r0, [r7, #8]
	ldr r0, [r0, r8, lsl #2]
	cmp r0, #0
	bne _021FA620
	ldr r1, _021F9A4C ; =UNK04_0220E8A0
	mov r0, sl
	bl MOD04_021FAEEC
	ldr ip, _021F99B4 ; =0x000004EC
	mov r0, #1
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021FA620:
	mov r1, fp
	mov r2, r4
	bl MOD04_021FB3DC
	add r8, r8, #1
	b _021FA6A4
_021FA634:
	ldr r1, _021FA760 ; =UNK04_0220EB2C
	mov r0, r5
	bl strcmp
	cmp r0, #0
	bne _021FA674
	ldr r0, [r7, #4]
	cmp r8, r0
	beq _021FA668
	ldr r0, _021FA764 ; =UNK04_0220EB34
	ldr r1, _021F9A24 ; =UNK04_0220E8D0
	ldr r2, [sp, #0x84]
	ldr r3, _021FA768 ; =0x00000515
	bl __msl_assertion_failed
_021FA668:
	str r8, [r7, #4]
	ldr r6, [sp, #0x88]
	b _021FA6A4
_021FA674:
	ldr r2, _021F9A64 ; =UNK04_0220EA9C
	mov r0, sl
	mov r1, #1
	bl MOD04_021FAF00
	mov r0, sl
	mov r1, #3
	mov r2, #1
	bl MOD04_021F3500
	ldr ip, _021F99B4 ; =0x000004EC
	mov r0, #3
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021FA6A4:
	cmp r6, #0
	beq _021FA5A8
	ldr r0, [sp, #0x1c]
	add r1, sp, #0xa4
	str r0, [sp]
	mov r0, #9
	str r0, [sp, #4]
	mov r0, sl
	mov r3, r7
	ldmia r1, {r1, r2}
	bl MOD04_021F3454
	cmp r0, #0
	beq _021FA6F8
	ldr ip, _021F99B4 ; =0x000004EC
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021FA6E4:
	ldr r0, _021F9A20 ; =UNK04_0220EA10
	ldr r1, _021F9A24 ; =UNK04_0220E8D0
	ldr r3, _021FA76C ; =0x0000052A
	mov r2, #0
	bl __msl_assertion_failed
_021FA6F8:
	mov r0, #1
	str r0, [sb, #0x140]
	mov r4, #0
_021FA704:
	cmp r4, #0
	beq _021FA714
	mov r0, #0xa
	bl MOD04_021F0250
_021FA714:
	cmp r4, #0
	bne _021F8B04
	mov r0, #0
	ldr ip, _021F99B4 ; =0x000004EC
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_021FA72C: .word UNK04_0220EAD4
_021FA730: .word UNK04_0220EADC
_021FA734: .word UNK04_0220EAE0
_021FA738: .word UNK04_0220EAE8
_021FA73C: .word UNK04_0220EAF4
_021FA740: .word UNK04_0220EAF8
_021FA744: .word UNK04_0220EB00
_021FA748: .word UNK04_0220EB04
_021FA74C: .word UNK04_0220EB0C
_021FA750: .word UNK04_0220EB14
_021FA754: .word UNK04_0220EB18
_021FA758: .word UNK04_0220EB20
_021FA75C: .word UNK04_0220EB28
_021FA760: .word UNK04_0220EB2C
_021FA764: .word UNK04_0220EB34
_021FA768: .word 0x00000515
_021FA76C: .word 0x0000052A
	arm_func_end MOD04_021F8AD0

	arm_func_start MOD04_021FA770
MOD04_021FA770: ; 0x021FA770
	stmdb sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0xc
	movs r8, r1
	mov sb, r0
	mov r7, r2
	mov r6, r3
	ldr r5, [sp, #0x28]
	ldr r4, [sp, #0x2c]
	beq _021FA7A0
	ldrsb r0, [r8]
	cmp r0, #0
	bne _021FA814
_021FA7A0:
	cmp r6, #0
	beq _021FA7B4
	ldrsb r0, [r6]
	cmp r0, #0
	bne _021FA814
_021FA7B4:
	cmp r5, #0
	beq _021FA7C8
	ldrsb r0, [r5]
	cmp r0, #0
	bne _021FA814
_021FA7C8:
	cmp r4, #0
	beq _021FA7DC
	ldrsb r0, [r4]
	cmp r0, #0
	bne _021FA814
_021FA7DC:
	ldr r0, [sp, #0x30]
	cmp r0, #0
	bne _021FA814
	cmp r7, #0
	beq _021FA7FC
	ldrsb r0, [r7]
	cmp r0, #0
	bne _021FA814
_021FA7FC:
	ldr r1, _021FA958 ; =UNK04_0220EB54
	mov r0, sb
	bl MOD04_021FAEEC
	add sp, sp, #0xc
	mov r0, #2
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
_021FA814:
	add r1, sp, #4
	mov r0, sb
	mov r2, #1
	bl MOD04_021FA9F0
	cmp r0, #0
	addne sp, sp, #0xc
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, pc}
	cmp r8, #0
	ldreq r0, [sp, #4]
	moveq r1, #0
	streqb r1, [r0, #0x28]
	beq _021FA858
	ldr r0, [sp, #4]
	mov r1, r8
	add r0, r0, #0x28
	mov r2, #0x1f
	bl MOD04_021FB3DC
_021FA858:
	cmp r7, #0
	ldreq r0, [sp, #4]
	moveq r1, #0
	streqb r1, [r0, #0x47]
	beq _021FA880
	ldr r0, [sp, #4]
	mov r1, r7
	add r0, r0, #0x47
	mov r2, #0x15
	bl MOD04_021FB3DC
_021FA880:
	cmp r6, #0
	ldreq r0, [sp, #4]
	moveq r1, #0
	streqb r1, [r0, #0x5c]
	beq _021FA8A8
	ldr r0, [sp, #4]
	mov r1, r6
	add r0, r0, #0x5c
	mov r2, #0x33
	bl MOD04_021FB3DC
_021FA8A8:
	ldr r0, [sp, #4]
	add r0, r0, #0x5c
	bl MOD04_021F01C4
	cmp r5, #0
	ldreq r0, [sp, #4]
	moveq r1, #0
	streqb r1, [r0, #0x8f]
	beq _021FA8DC
	ldr r0, [sp, #4]
	mov r1, r5
	add r0, r0, #0x8f
	mov r2, #0x1f
	bl MOD04_021FB3DC
_021FA8DC:
	cmp r4, #0
	ldreq r0, [sp, #4]
	moveq r1, #0
	streqb r1, [r0, #0xae]
	beq _021FA904
	ldr r0, [sp, #4]
	mov r1, r4
	add r0, r0, #0xae
	mov r2, #0x1f
	bl MOD04_021FB3DC
_021FA904:
	ldr r0, [sp, #0x34]
	ldr r2, [sp, #0x30]
	ldr r1, [sp, #4]
	cmp r0, #0
	movlt r0, #0
	strlt r0, [sp, #0x34]
	str r2, [r1, #0x130]
	ldr r2, [sp, #0x34]
	ldr r1, [sp, #4]
	ldr r0, [sp, #0x40]
	str r2, [r1, #0x134]
	str r0, [sp]
	ldr r1, [sp, #4]
	ldr r2, [sp, #0x38]
	ldr r3, [sp, #0x3c]
	mov r0, sb
	bl MOD04_021FA95C
	cmp r0, #0
	moveq r0, #0
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_021FA958: .word UNK04_0220EB54
	arm_func_end MOD04_021FA770

	arm_func_start MOD04_021FA95C
MOD04_021FA95C: ; 0x021FA95C
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0x14
	mov r5, r0
	ldr r4, [r5]
	ldr ip, [sp, #0x20]
	ldr lr, [r4, #0x210]
	add lr, lr, #1
	str lr, [r4, #0x210]
	str r2, [sp]
	str r3, [sp, #4]
	mov r2, r1
	add r3, sp, #0xc
	mov r1, #3
	str ip, [sp, #8]
	bl MOD04_021F6D8C
	cmp r0, #0
	addne sp, sp, #0x14
	ldmneia sp!, {r4, r5, pc}
	ldr r1, [sp, #0xc]
	mov r0, r5
	bl MOD04_021FAAB4
	cmp r0, #0
	addne sp, sp, #0x14
	ldmneia sp!, {r4, r5, pc}
	ldr r1, [sp, #0xc]
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _021FA9E4
	ldr r1, [r1, #0x18]
	mov r0, r5
	bl MOD04_021F0FD4
	cmp r0, #0
	addne sp, sp, #0x14
	ldmneia sp!, {r4, r5, pc}
_021FA9E4:
	mov r0, #0
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, pc}
	arm_func_end MOD04_021FA95C

	arm_func_start MOD04_021FA9F0
MOD04_021FA9F0: ; 0x021FA9F0
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	mov r6, r0
	mov r0, #0x144
	mov r5, r1
	mov r7, r2
	bl MOD04_021DD860
	movs r4, r0
	bne _021FAA2C
	ldr r1, _021FAAB0 ; =UNK04_0220E8A0
	mov r0, r6
	bl MOD04_021FAEEC
	add sp, sp, #4
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, pc}
_021FAA2C:
	mov r1, #0
	mov r2, #0x144
	bl memset
	str r7, [r4]
	mvn r0, #0
	str r0, [r4, #4]
	mov r0, #0
	str r0, [r4, #8]
	str r0, [r4, #0x10]
	str r0, [r4, #0x14]
	str r0, [r4, #0xc]
	str r0, [r4, #0x20]
	str r0, [r4, #0x24]
	mov r0, #0x1000
	str r0, [r4, #0x1c]
	ldr r0, [r4, #0x1c]
	add r0, r0, #1
	bl MOD04_021DD860
	str r0, [r4, #0x18]
	ldr r0, [r4, #0x18]
	cmp r0, #0
	movne r0, #0
	strne r0, [r4, #0x13c]
	strne r0, [r4, #0x140]
	addne sp, sp, #4
	strne r4, [r5]
	ldmneia sp!, {r4, r5, r6, r7, pc}
	ldr r1, _021FAAB0 ; =UNK04_0220E8A0
	mov r0, r6
	bl MOD04_021FAEEC
	mov r0, #1
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_021FAAB0: .word UNK04_0220E8A0
	arm_func_end MOD04_021FA9F0

	arm_func_start MOD04_021FAAB4
MOD04_021FAAB4: ; 0x021FAAB4
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	mov r5, r1
	ldr r4, [r5, #4]
	mov r1, #0x1000
	str r1, [r4, #0xc]
	ldr r1, [r4, #0xc]
	mov r6, r0
	add r0, r1, #1
	bl MOD04_021DD860
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _021FAB04
	ldr r1, _021FAC9C ; =UNK04_0220E8A0
	mov r0, r6
	bl MOD04_021FAEEC
	add sp, sp, #8
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
_021FAB04:
	mov r0, #2
	mov r1, #1
	mov r2, #0
	bl MOD04_021EFDB8
	str r0, [r4, #4]
	ldr r0, [r4, #4]
	mvn r1, #0
	cmp r0, r1
	bne _021FAB54
	ldr r2, _021FACA0 ; =UNK04_0220EB68
	mov r0, r6
	mov r1, #5
	bl MOD04_021FAF00
	mov r0, r6
	mov r1, #3
	mov r2, #1
	bl MOD04_021F3500
	add sp, sp, #8
	mov r0, #3
	ldmia sp!, {r4, r5, r6, pc}
_021FAB54:
	mov r1, #0
	bl MOD04_021F017C
	cmp r0, #0
	bne _021FAB90
	ldr r2, _021FACA4 ; =UNK04_0220EB90
	mov r0, r6
	mov r1, #5
	bl MOD04_021FAF00
	mov r0, r6
	mov r1, #3
	mov r2, #1
	bl MOD04_021F3500
	add sp, sp, #8
	mov r0, #3
	ldmia sp!, {r4, r5, r6, pc}
_021FAB90:
	ldr r0, _021FACA8 ; =UNK04_0220E860
	bl SOC_GetHostByAddr
	cmp r0, #0
	bne _021FABCC
	ldr r2, _021FACAC ; =UNK04_0220EBC4
	mov r0, r6
	mov r1, #5
	bl MOD04_021FAF00
	mov r0, r6
	mov r1, #3
	mov r2, #1
	bl MOD04_021F3500
	add sp, sp, #8
	mov r0, #3
	ldmia sp!, {r4, r5, r6, pc}
_021FABCC:
	add r1, sp, #0
	mov r2, #0
	str r2, [r1]
	str r2, [r1, #4]
	mov r1, #2
	strb r1, [sp, #1]
	ldr r0, [r0, #0xc]
	ldr r0, [r0]
	ldr r0, [r0]
	str r0, [sp, #4]
	cmp r0, #0
	bne _021FAC0C
	ldr r0, _021FACB0 ; =UNK04_0220EBF4
	ldr r1, _021FACB4 ; =UNK04_0220E8D0
	mov r3, #0x59
	bl __msl_assertion_failed
_021FAC0C:
	ldr r0, _021FACB8 ; =0x0000CD74
	add r1, sp, #0
	strh r0, [sp, #2]
	ldr r0, [r4, #4]
	mov r2, #8
	bl MOD04_021EFCE4
	mvn r1, #0
	cmp r0, r1
	bne _021FAC88
	ldr r0, [r4, #4]
	bl MOD04_021EFB28
	mvn r1, #5
	cmp r0, r1
	beq _021FAC88
	mvn r1, #0x19
	cmp r0, r1
	beq _021FAC88
	mvn r1, #0x4b
	cmp r0, r1
	beq _021FAC88
	ldr r2, _021FACBC ; =UNK04_0220EC14
	mov r0, r6
	mov r1, #5
	bl MOD04_021FAF00
	mov r0, r6
	mov r1, #3
	mov r2, #1
	bl MOD04_021F3500
	add sp, sp, #8
	mov r0, #3
	ldmia sp!, {r4, r5, r6, pc}
_021FAC88:
	mov r0, #1
	str r0, [r5, #0x14]
	mov r0, #0
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_021FAC9C: .word UNK04_0220E8A0
_021FACA0: .word UNK04_0220EB68
_021FACA4: .word UNK04_0220EB90
_021FACA8: .word UNK04_0220E860
_021FACAC: .word UNK04_0220EBC4
_021FACB0: .word UNK04_0220EBF4
_021FACB4: .word UNK04_0220E8D0
_021FACB8: .word 0x0000CD74
_021FACBC: .word UNK04_0220EC14
	arm_func_end MOD04_021FAAB4

	arm_func_start MOD04_021FACC0
MOD04_021FACC0: ; 0x021FACC0
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0x54
	mov r4, r1
	mov r5, r0
	mov r0, r3
	ldr r1, _021FAD3C ; =UNK04_0220EC3C
	add r2, sp, #4
	mov r3, #0x40
	bl MOD04_021FB1F0
	cmp r0, #0
	addeq sp, sp, #0x54
	ldmeqia sp!, {r4, r5, pc}
	ldr r1, _021FAD40 ; =UNK04_0220EC44
	add ip, sp, #0x4c
	add r0, sp, #4
	add r2, sp, #0x44
	add r3, sp, #0x48
	str ip, [sp]
	bl sscanf
	cmp r0, #3
	addne sp, sp, #0x54
	ldmneia sp!, {r4, r5, pc}
	mov ip, #0
	add r1, sp, #0x44
	mov r0, r5
	mov r2, r4
	mov r3, #2
	str ip, [sp]
	bl MOD04_021FAD44
	add sp, sp, #0x54
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_021FAD3C: .word UNK04_0220EC3C
_021FAD40: .word UNK04_0220EC44
	arm_func_end MOD04_021FACC0

	arm_func_start MOD04_021FAD44
MOD04_021FAD44: ; 0x021FAD44
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x20
	ldr ip, [sp, #0x30]
	mov r5, r2
	mov r6, r0
	cmp ip, #0
	ldreq r0, _021FADE0 ; =UNK04_0220EC50
	mov lr, r1
	mov r4, r3
	streq r0, [sp, #0x30]
	mov r0, r6
	mov r1, r5
	mov r3, lr
	mov r2, #0xc9
	bl MOD04_021F726C
	cmp r0, #0
	addne sp, sp, #0x20
	ldmneia sp!, {r4, r5, r6, pc}
	ldr r1, _021FADE4 ; =UNK04_0220EC54
	add r0, sp, #0
	mov r3, r4
	mov r2, #1
	bl sprintf
	add r2, sp, #0
	mov r0, r6
	mov r1, r5
	bl MOD04_021F2C58
	cmp r0, #0
	addne sp, sp, #0x20
	ldmneia sp!, {r4, r5, r6, pc}
	ldr r2, [sp, #0x30]
	mov r0, r6
	mov r1, r5
	mvn r3, #0
	bl MOD04_021F7184
	cmp r0, #0
	moveq r0, #0
	add sp, sp, #0x20
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_021FADE0: .word UNK04_0220EC50
_021FADE4: .word UNK04_0220EC54
	arm_func_end MOD04_021FAD44

	arm_func_start MOD04_021FADE8
MOD04_021FADE8: ; 0x021FADE8
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x10
	mov r4, r2
	mov r5, r1
	mov r1, r4
	mov r2, #1
	mov r6, r0
	bl MOD04_021FB2F8
	cmp r0, #0
	addne sp, sp, #0x10
	movne r0, #4
	ldmneia sp!, {r4, r5, r6, pc}
	ldr r1, _021FAEE0 ; =UNK04_0220EC6C
	mov r0, r4
	mov r2, #4
	bl strncmp
	cmp r0, #0
	beq _021FAE5C
	ldr r2, _021FAEE4 ; =UNK04_0220EC74
	mov r0, r6
	mov r1, #1
	bl MOD04_021FAF00
	mov r0, r6
	mov r1, #3
	mov r2, #1
	bl MOD04_021F3500
	add sp, sp, #0x10
	mov r0, #3
	ldmia sp!, {r4, r5, r6, pc}
_021FAE5C:
	ldr r1, [r5, #0xc]
	ldr r0, [r5, #0x10]
	cmp r1, #0
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	beq _021FAEC8
	mov r0, #4
	bl MOD04_021DD860
	movs r3, r0
	bne _021FAE9C
	ldr r1, _021FAEE8 ; =UNK04_0220ECA4
	mov r0, r6
	bl MOD04_021FAEEC
	add sp, sp, #0x10
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
_021FAE9C:
	mov r0, #0
	str r0, [r3]
	str r5, [sp]
	str r0, [sp, #4]
	add r1, sp, #8
	mov r0, r6
	ldmia r1, {r1, r2}
	bl MOD04_021F3454
	cmp r0, #0
	addne sp, sp, #0x10
	ldmneia sp!, {r4, r5, r6, pc}
_021FAEC8:
	mov r0, r6
	mov r1, r5
	bl MOD04_021F6C84
	mov r0, #0
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_021FAEE0: .word UNK04_0220EC6C
_021FAEE4: .word UNK04_0220EC74
_021FAEE8: .word UNK04_0220ECA4
	arm_func_end MOD04_021FADE8

	arm_func_start MOD04_021FAEEC
MOD04_021FAEEC: ; 0x021FAEEC
	ldr ip, _021FAEFC ; =MOD04_021FB3DC
	ldr r0, [r0]
	mov r2, #0x100
	bx ip
	.align 2, 0
_021FAEFC: .word MOD04_021FB3DC
	arm_func_end MOD04_021FAEEC

	arm_func_start MOD04_021FAF00
MOD04_021FAF00: ; 0x021FAF00
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	ldr r4, [r0]
	mov r5, r1
	mov r1, r2
	mov r0, r4
	mov r2, #0x100
	bl MOD04_021FB3DC
	str r5, [r4, #0x418]
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	arm_func_end MOD04_021FAF00

	arm_func_start MOD04_021FAF2C
MOD04_021FAF2C: ; 0x021FAF2C
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	movs r7, r1
	mov r8, r0
	mov r6, r2
	mov r5, r3
	ldr r4, [sp, #0x18]
	bne _021FAF5C
	ldr r0, _021FB0D8 ; =UNK04_0220ECB4
	ldr r1, _021FB0DC ; =UNK04_0220ECC4
	ldr r3, _021FB0E0 ; =0x00000199
	mov r2, #0
	bl __msl_assertion_failed
_021FAF5C:
	cmp r5, #0
	bne _021FAF78
	ldr r0, _021FB0E4 ; =UNK04_0220ECD4
	ldr r1, _021FB0DC ; =UNK04_0220ECC4
	ldr r3, _021FB0E8 ; =0x0000019A
	mov r2, #0
	bl __msl_assertion_failed
_021FAF78:
	cmp r4, #0
	bne _021FAF94
	ldr r0, _021FB0EC ; =UNK04_0220ECE0
	ldr r1, _021FB0DC ; =UNK04_0220ECC4
	ldr r3, _021FB0F0 ; =0x0000019B
	mov r2, #0
	bl __msl_assertion_failed
_021FAF94:
	ldr r1, [r6]
	ldrsb r0, [r7, r1]
	add r3, r7, r1
	cmp r0, #0x5c
	beq _021FAFD0
	ldr r2, _021FB0F4 ; =UNK04_0220ECF0
	mov r0, r8
	mov r1, #1
	bl MOD04_021FAF00
	mov r0, r8
	mov r1, #3
	mov r2, #1
	bl MOD04_021F3500
	mov r0, #3
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_021FAFD0:
	ldrsb r2, [r3, #1]
	add r7, r3, #2
	mov r1, #0
	cmp r2, #0x5c
	beq _021FB05C
	ldr r0, _021FB0F8 ; =0x000001FF
_021FAFE8:
	cmp r2, #0
	bne _021FB018
	ldr r2, _021FB0F4 ; =UNK04_0220ECF0
	mov r0, r8
	mov r1, #1
	bl MOD04_021FAF00
	mov r0, r8
	mov r1, #3
	mov r2, #1
	bl MOD04_021F3500
	mov r0, #3
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_021FB018:
	cmp r1, r0
	bne _021FB048
	ldr r2, _021FB0F4 ; =UNK04_0220ECF0
	mov r0, r8
	mov r1, #1
	bl MOD04_021FAF00
	mov r0, r8
	mov r1, #3
	mov r2, #1
	bl MOD04_021F3500
	mov r0, #3
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_021FB048:
	strb r2, [r5], #1
	ldrsb r2, [r7], #1
	add r1, r1, #1
	cmp r2, #0x5c
	bne _021FAFE8
_021FB05C:
	mov r2, #0
	strb r2, [r5]
	ldr r0, _021FB0F8 ; =0x000001FF
	b _021FB0A4
_021FB06C:
	cmp r2, r0
	bne _021FB09C
	ldr r2, _021FB0F4 ; =UNK04_0220ECF0
	mov r0, r8
	mov r1, #1
	bl MOD04_021FAF00
	mov r0, r8
	mov r1, #3
	mov r2, #1
	bl MOD04_021F3500
	mov r0, #3
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_021FB09C:
	strb r1, [r4], #1
	add r2, r2, #1
_021FB0A4:
	ldrsb r1, [r7], #1
	cmp r1, #0x5c
	beq _021FB0B8
	cmp r1, #0
	bne _021FB06C
_021FB0B8:
	mov r0, #0
	strb r0, [r4]
	sub r1, r7, r3
	ldr r2, [r6]
	sub r1, r1, #1
	add r1, r2, r1
	str r1, [r6]
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_021FB0D8: .word UNK04_0220ECB4
_021FB0DC: .word UNK04_0220ECC4
_021FB0E0: .word 0x00000199
_021FB0E4: .word UNK04_0220ECD4
_021FB0E8: .word 0x0000019A
_021FB0EC: .word UNK04_0220ECE0
_021FB0F0: .word 0x0000019B
_021FB0F4: .word UNK04_0220ECF0
_021FB0F8: .word 0x000001FF
	arm_func_end MOD04_021FAF2C

	arm_func_start MOD04_021FB0FC
MOD04_021FB0FC: ; 0x021FB0FC
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0xc
	mov ip, #0
	mov r4, r2
	mov r5, r0
	mov r0, r1
	add r2, sp, #0
	add r3, sp, #4
	mov r1, ip
	str ip, [sp]
	str ip, [sp, #4]
	bl MOD04_021EFF5C
	mvn r1, #0
	cmp r0, r1
	bne _021FB170
	ldr r1, _021FB1E0 ; =UNK04_0220ED00
	mov r0, r5
	bl MOD04_021FB3D0
	ldr r2, _021FB1E4 ; =UNK04_0220ED14
	mov r0, r5
	mov r1, #5
	bl MOD04_021FAF00
	mov r0, r5
	mov r1, #3
	mov r2, #1
	bl MOD04_021F3500
	add sp, sp, #0xc
	mov r0, #3
	ldmia sp!, {r4, r5, pc}
_021FB170:
	cmp r0, #0
	ble _021FB1D0
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _021FB1A4
	ldr r1, _021FB1E8 ; =UNK04_0220ED4C
	mov r0, r5
	bl MOD04_021FB3D0
	mov r0, #4
	str r0, [r4]
	add sp, sp, #0xc
	mov r0, #0
	ldmia sp!, {r4, r5, pc}
_021FB1A4:
	ldr r0, [sp]
	cmp r0, #0
	beq _021FB1D0
	ldr r1, _021FB1EC ; =UNK04_0220ED64
	mov r0, r5
	bl MOD04_021FB3D0
	mov r0, #3
	str r0, [r4]
	add sp, sp, #0xc
	mov r0, #0
	ldmia sp!, {r4, r5, pc}
_021FB1D0:
	mov r0, #0
	str r0, [r4]
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_021FB1E0: .word UNK04_0220ED00
_021FB1E4: .word UNK04_0220ED14
_021FB1E8: .word UNK04_0220ED4C
_021FB1EC: .word UNK04_0220ED64
	arm_func_end MOD04_021FB0FC

	arm_func_start MOD04_021FB1F0
MOD04_021FB1F0: ; 0x021FB1F0
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	movs r5, r0
	mov r8, r1
	mov r4, r2
	mov r7, r3
	bne _021FB21C
	ldr r0, _021FB2D8 ; =UNK04_0220ED7C
	ldr r1, _021FB2DC ; =UNK04_0220ECC4
	ldr r3, _021FB2E0 ; =0x0000010D
	mov r2, #0
	bl __msl_assertion_failed
_021FB21C:
	cmp r8, #0
	bne _021FB238
	ldr r0, _021FB2E4 ; =UNK04_0220ECD4
	ldr r1, _021FB2DC ; =UNK04_0220ECC4
	ldr r3, _021FB2E8 ; =0x0000010E
	mov r2, #0
	bl __msl_assertion_failed
_021FB238:
	cmp r4, #0
	bne _021FB254
	ldr r0, _021FB2EC ; =UNK04_0220ECE0
	ldr r1, _021FB2DC ; =UNK04_0220ECC4
	ldr r3, _021FB2F0 ; =0x0000010F
	mov r2, #0
	bl __msl_assertion_failed
_021FB254:
	cmp r7, #0
	bgt _021FB270
	ldr r0, _021FB2F4 ; =UNK04_0220ED8C
	ldr r1, _021FB2DC ; =UNK04_0220ECC4
	mov r2, #0
	mov r3, #0x110
	bl __msl_assertion_failed
_021FB270:
	ldrsb r6, [r8]
	mov r0, r5
	mov r1, r8
	bl strstr
	movs r5, r0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r8
	bl strlen
	add r3, r5, r0
	sub r0, r7, #1
	mov r2, #0
	b _021FB2AC
_021FB2A4:
	strb r1, [r4, r2]
	add r2, r2, #1
_021FB2AC:
	cmp r2, r0
	bge _021FB2C8
	ldrsb r1, [r3, r2]
	cmp r1, #0
	beq _021FB2C8
	cmp r1, r6
	bne _021FB2A4
_021FB2C8:
	mov r0, #0
	strb r0, [r4, r2]
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_021FB2D8: .word UNK04_0220ED7C
_021FB2DC: .word UNK04_0220ECC4
_021FB2E0: .word 0x0000010D
_021FB2E4: .word UNK04_0220ECD4
_021FB2E8: .word 0x0000010E
_021FB2EC: .word UNK04_0220ECE0
_021FB2F0: .word 0x0000010F
_021FB2F4: .word UNK04_0220ED8C
	arm_func_end MOD04_021FB1F0

	arm_func_start MOD04_021FB2F8
MOD04_021FB2F8: ; 0x021FB2F8
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x14
	mov r6, r1
	mov r7, r0
	mov r5, r2
	ldr r1, _021FB3C0 ; =UNK04_0220ED94
	mov r0, r6
	mov r2, #7
	ldr r4, [r7]
	bl strncmp
	cmp r0, #0
	bne _021FB3B4
	ldr r1, _021FB3C4 ; =UNK04_0220ED9C
	add r2, sp, #0
	mov r0, r6
	mov r3, #0x10
	bl MOD04_021FB1F0
	cmp r0, #0
	beq _021FB350
	add r0, sp, #0
	bl atol
	str r0, [r4, #0x418]
_021FB350:
	ldr r1, _021FB3C8 ; =UNK04_0220EDA4
	mov r0, r6
	mov r2, r4
	mov r3, #0x100
	bl MOD04_021FB1F0
	cmp r0, #0
	moveq r0, #0
	streqb r0, [r4]
	cmp r5, #0
	beq _021FB3A8
	ldr r1, _021FB3CC ; =UNK04_0220EDB0
	mov r0, r6
	bl strstr
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	movne r2, #1
	moveq r2, #0
	mov r0, r7
	mov r1, #4
	bl MOD04_021F3500
_021FB3A8:
	add sp, sp, #0x14
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, pc}
_021FB3B4:
	mov r0, #0
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_021FB3C0: .word UNK04_0220ED94
_021FB3C4: .word UNK04_0220ED9C
_021FB3C8: .word UNK04_0220EDA4
_021FB3CC: .word UNK04_0220EDB0
	arm_func_end MOD04_021FB2F8

	arm_func_start MOD04_021FB3D0
MOD04_021FB3D0: ; 0x021FB3D0
	stmdb sp!, {r0, r1, r2, r3}
	add sp, sp, #0x10
	bx lr
	arm_func_end MOD04_021FB3D0

	arm_func_start MOD04_021FB3DC
MOD04_021FB3DC: ; 0x021FB3DC
	stmdb sp!, {r4, r5, r6, lr}
	movs r6, r0
	mov r5, r1
	mov r4, r2
	bne _021FB404
	ldr r0, _021FB440 ; =UNK04_0220EDB8
	ldr r1, _021FB444 ; =UNK04_0220ECC4
	mov r2, #0
	mov r3, #0x2f
	bl __msl_assertion_failed
_021FB404:
	cmp r5, #0
	bne _021FB420
	ldr r0, _021FB448 ; =UNK04_0220EDC8
	ldr r1, _021FB444 ; =UNK04_0220ECC4
	mov r2, #0
	mov r3, #0x30
	bl __msl_assertion_failed
_021FB420:
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl strncpy
	add r0, r6, r4
	mov r1, #0
	strb r1, [r0, #-1]
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_021FB440: .word UNK04_0220EDB8
_021FB444: .word UNK04_0220ECC4
_021FB448: .word UNK04_0220EDC8
	arm_func_end MOD04_021FB3DC

	arm_func_start MOD04_021FB44C
MOD04_021FB44C: ; 0x021FB44C
	stmdb sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x24
	ldr r0, _021FB520 ; =UNK04_02210F84
	ldr r0, [r0]
	cmp r0, #0
	addeq sp, sp, #0x24
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, pc}
	bl MOD04_021EF06C
	subs r4, r0, #1
	bmi _021FB500
	ldr r5, _021FB524 ; =UNK04_0220BBC8
	add r3, sp, #0x14
	mov r2, #8
_021FB480:
	ldrb r1, [r5], #1
	ldrb r0, [r5], #1
	subs r2, r2, #1
	strb r1, [r3], #1
	strb r0, [r3], #1
	bne _021FB480
	ldr sb, _021FB528 ; =UNK04_0220EDEC
	ldr r5, _021FB52C ; =UNK04_0220EDD8
	add r8, sp, #4
	mov r7, #0xf
	mov r6, #0
_021FB4AC:
	add ip, sp, #0x14
	add r3, sp, #4
	mov r2, #8
_021FB4B8:
	ldrb r1, [ip], #1
	ldrb r0, [ip], #1
	subs r2, r2, #1
	strb r1, [r3], #1
	strb r0, [r3], #1
	bne _021FB4B8
	mov r0, r8
	mov r1, r7
	str sb, [r5]
	bl MOD04_021FBCB8
	mov r0, r4
	mov r1, r6
	mov r2, r6
	mov r3, r8
	str r6, [sp]
	bl MOD04_021FB530
	subs r4, r4, #1
	bpl _021FB4AC
_021FB500:
	ldr r0, _021FB520 ; =UNK04_02210F84
	ldr r0, [r0]
	bl MOD04_021EF074
	ldr r0, _021FB520 ; =UNK04_02210F84
	mov r1, #0
	str r1, [r0]
	add sp, sp, #0x24
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_021FB520: .word UNK04_02210F84
_021FB524: .word UNK04_0220BBC8
_021FB528: .word UNK04_0220EDEC
_021FB52C: .word UNK04_0220EDD8
	arm_func_end MOD04_021FB44C

	arm_func_start MOD04_021FB530
MOD04_021FB530: ; 0x021FB530
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x14
	movs r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	addmi sp, sp, #0x14
	ldmmiia sp!, {r4, r5, r6, r7, pc}
	ldr r0, _021FB650 ; =UNK04_02210F84
	ldr r0, [r0]
	bl MOD04_021EF06C
	cmp r7, r0
	addge sp, sp, #0x14
	ldmgeia sp!, {r4, r5, r6, r7, pc}
	ldr r0, _021FB650 ; =UNK04_02210F84
	mov r1, r7
	ldr r0, [r0]
	bl MOD04_021EEFFC
	mov r3, r0
	ldr ip, [r3, #0x18]
	cmp ip, #0
	beq _021FB638
	ldr r0, [r3]
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _021FB638
_021FB598: ; jump table
	b _021FB5A8 ; case 0
	b _021FB5C8 ; case 1
	b _021FB5FC ; case 2
	b _021FB624 ; case 3
_021FB5A8:
	ldr r0, [r3, #0x14]
	mov r2, r6
	str r0, [sp]
	ldr r0, [r3, #4]
	ldr r1, [r3, #8]
	mov r3, r4
	blx ip
	b _021FB638
_021FB5C8:
	str r6, [sp]
	str r5, [sp, #4]
	ldr r0, [sp, #0x28]
	str r4, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [r3, #0x14]
	str r0, [sp, #0x10]
	ldr r0, [r3, #4]
	ldr r1, [r3, #8]
	ldr r2, [r3, #0xc]
	ldr r3, [r3, #0x10]
	blx ip
	b _021FB638
_021FB5FC:
	str r6, [sp]
	str r5, [sp, #4]
	ldr r0, [r3, #0x14]
	str r0, [sp, #8]
	ldr r0, [r3, #4]
	ldr r1, [r3, #8]
	ldr r2, [r3, #0xc]
	ldr r3, [r3, #0x10]
	blx ip
	b _021FB638
_021FB624:
	ldr r0, [r3, #4]
	ldr r1, [r3, #8]
	ldr r3, [r3, #0x14]
	mov r2, r6
	blx ip
_021FB638:
	ldr r0, _021FB650 ; =UNK04_02210F84
	mov r1, r7
	ldr r0, [r0]
	bl MOD04_021EED84
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_021FB650: .word UNK04_02210F84
	arm_func_end MOD04_021FB530

	arm_func_start MOD04_021FB654
MOD04_021FB654: ; 0x021FB654
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	mov sb, r1
	mov sl, r0
	mov r7, sb
	bl MOD04_021FBB3C
	mov r8, r0
	ldr r5, _021FB6D4 ; =UNK04_0220EDDC
	ldr r4, _021FB6D8 ; =UNK04_0220EDD8
	b _021FB6BC
_021FB678:
	sub r6, r8, sl
	mov r0, sl
	mov r1, r6
	str r5, [r4]
	bl MOD04_021FBCB8
	mov r0, sl
	mov r1, r6
	bl MOD04_021FB6DC
	add r0, r6, #7
	sub sb, sb, r0
	cmp sb, #0
	add sl, r8, #7
	ble _021FB6BC
	mov r0, sl
	mov r1, sb
	bl MOD04_021FBB3C
	mov r8, r0
_021FB6BC:
	cmp sb, #0
	ble _021FB6CC
	cmp r8, #0
	bne _021FB678
_021FB6CC:
	sub r0, r7, sb
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_021FB6D4: .word UNK04_0220EDDC
_021FB6D8: .word UNK04_0220EDD8
	arm_func_end MOD04_021FB654

	arm_func_start MOD04_021FB6DC
MOD04_021FB6DC: ; 0x021FB6DC
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r4, r1
	ldr r1, _021FB7D0 ; =UNK04_0220EDFC
	mov r5, r0
	mov r3, #0
	mov r2, #8
	strb r3, [r5, r4]
	bl strncmp
	cmp r0, #0
	bne _021FB71C
	mov r0, r5
	mov r1, r4
	bl MOD04_021FBA00
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
_021FB71C:
	ldr r1, _021FB7D4 ; =UNK04_0220EE08
	mov r0, r5
	mov r2, #9
	bl strncmp
	cmp r0, #0
	bne _021FB748
	mov r0, r5
	mov r1, r4
	bl MOD04_021FB968
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
_021FB748:
	ldr r1, _021FB7D4 ; =UNK04_0220EE08
	mov r0, r5
	mov r2, #9
	bl strncmp
	cmp r0, #0
	bne _021FB774
	mov r0, r5
	mov r1, r4
	bl MOD04_021FB968
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
_021FB774:
	ldr r1, _021FB7D8 ; =UNK04_0220EE14
	mov r0, r5
	mov r2, #8
	bl strncmp
	cmp r0, #0
	bne _021FB7A0
	mov r0, r5
	mov r1, r4
	bl MOD04_021FB884
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
_021FB7A0:
	ldr r1, _021FB7DC ; =UNK04_0220EE20
	mov r0, r5
	mov r2, #8
	bl strncmp
	cmp r0, #0
	addne sp, sp, #4
	ldmneia sp!, {r4, r5, pc}
	mov r0, r5
	mov r1, r4
	bl MOD04_021FB7E0
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_021FB7D0: .word UNK04_0220EDFC
_021FB7D4: .word UNK04_0220EE08
_021FB7D8: .word UNK04_0220EE14
_021FB7DC: .word UNK04_0220EE20
	arm_func_end MOD04_021FB6DC

	arm_func_start MOD04_021FB7E0
MOD04_021FB7E0: ; 0x021FB7E0
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	ldr r1, _021FB874 ; =UNK04_0220EE2C
	mov r7, r0
	bl MOD04_021FBBC8
	bl atol
	mov r6, r0
	ldr r1, _021FB878 ; =UNK04_0220EE34
	mov r0, r7
	bl MOD04_021FBBC8
	bl atol
	mov r5, r0
	ldr r1, _021FB87C ; =UNK04_0220EE38
	mov r0, r7
	bl MOD04_021FBBC8
	bl atol
	mov r4, r0
	ldr r1, _021FB880 ; =UNK04_0220EE3C
	mov r0, r7
	bl MOD04_021FBBC8
	bl atol
	mov r1, r4
	mov r4, r0
	mov r2, r5
	mov r0, #2
	bl MOD04_021FBAB0
	mvn r1, #0
	cmp r0, r1
	addeq sp, sp, #4
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	mov r3, #0
	mov r1, r6
	mov r2, r4
	str r3, [sp]
	bl MOD04_021FB530
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_021FB874: .word UNK04_0220EE2C
_021FB878: .word UNK04_0220EE34
_021FB87C: .word UNK04_0220EE38
_021FB880: .word UNK04_0220EE3C
	arm_func_end MOD04_021FB7E0

	arm_func_start MOD04_021FB884
MOD04_021FB884: ; 0x021FB884
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	ldr r1, _021FB94C ; =UNK04_0220EE40
	mov r4, r0
	bl MOD04_021FBBC8
	bl atol
	mov r7, r0
	ldr r1, _021FB950 ; =UNK04_0220EE38
	mov r0, r4
	bl MOD04_021FBBC8
	bl atol
	mov r6, r0
	ldr r1, _021FB954 ; =UNK04_0220EE34
	mov r0, r4
	bl MOD04_021FBBC8
	bl atol
	mov r5, r0
	ldr r1, _021FB958 ; =UNK04_0220EE3C
	mov r0, r4
	bl MOD04_021FBBC8
	bl atol
	mov r2, r5
	mov r5, r0
	mov r1, r6
	mov r0, #1
	bl MOD04_021FBAB0
	mov r8, r0
	mvn r0, #0
	cmp r8, r0
	addeq sp, sp, #8
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r1, _021FB95C ; =UNK04_0220EE48
	mov r0, r4
	bl MOD04_021FBBC8
	bl atol
	mov r6, r0
	ldr r1, _021FB960 ; =UNK04_0220EE50
	mov r0, r4
	bl strstr
	cmp r0, #0
	ldreq r3, _021FB964 ; =UNK04_0220EE58
	moveq r6, #0
	addne r3, r0, #6
	mov r0, r8
	mov r1, r7
	mov r2, r5
	str r6, [sp]
	bl MOD04_021FB530
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_021FB94C: .word UNK04_0220EE40
_021FB950: .word UNK04_0220EE38
_021FB954: .word UNK04_0220EE34
_021FB958: .word UNK04_0220EE3C
_021FB95C: .word UNK04_0220EE48
_021FB960: .word UNK04_0220EE50
_021FB964: .word UNK04_0220EE58
	arm_func_end MOD04_021FB884

	arm_func_start MOD04_021FB968
MOD04_021FB968: ; 0x021FB968
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	ldr r1, _021FB9F4 ; =UNK04_0220EE5C
	mov r5, r0
	bl MOD04_021FBBC8
	bl atol
	mov r4, r0
	ldr r1, _021FB9F8 ; =UNK04_0220EE38
	mov r0, r5
	bl MOD04_021FBBC8
	bl atol
	mov r1, r0
	mov r0, #3
	mov r2, #0
	bl MOD04_021FBAB0
	mov r5, r0
	mvn r0, #0
	cmp r5, r0
	addeq sp, sp, #4
	ldmeqia sp!, {r4, r5, pc}
	ldr r0, _021FB9FC ; =UNK04_02210F84
	mov r1, r5
	ldr r0, [r0]
	bl MOD04_021EEFFC
	cmp r4, #0
	movgt r1, #1
	mov r2, #0
	str r4, [r0, #8]
	movle r1, #0
	mov r0, r5
	mov r3, r2
	str r2, [sp]
	bl MOD04_021FB530
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_021FB9F4: .word UNK04_0220EE5C
_021FB9F8: .word UNK04_0220EE38
_021FB9FC: .word UNK04_02210F84
	arm_func_end MOD04_021FB968

	arm_func_start MOD04_021FBA00
MOD04_021FBA00: ; 0x021FBA00
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	ldr r1, _021FBAA0 ; =UNK04_0220EE64
	mov r6, r0
	bl MOD04_021FBBC8
	bl atol
	mov r5, r0
	ldr r1, _021FBAA4 ; =UNK04_0220EE38
	mov r0, r6
	bl MOD04_021FBBC8
	bl atol
	mov r4, r0
	ldr r1, _021FBAA8 ; =UNK04_0220EE6C
	mov r0, r6
	bl MOD04_021FBBC8
	mov r1, r4
	mov r4, r0
	mov r0, #0
	mov r2, r0
	bl MOD04_021FBAB0
	mov r6, r0
	mvn r0, #0
	cmp r6, r0
	addeq sp, sp, #8
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, _021FBAAC ; =UNK04_02210F84
	mov r1, r6
	ldr r0, [r0]
	bl MOD04_021EEFFC
	cmp r5, #0
	movgt r1, #1
	str r5, [r0, #8]
	mov r2, #0
	movle r1, #0
	mov r0, r6
	mov r3, r4
	str r2, [sp]
	bl MOD04_021FB530
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_021FBAA0: .word UNK04_0220EE64
_021FBAA4: .word UNK04_0220EE38
_021FBAA8: .word UNK04_0220EE6C
_021FBAAC: .word UNK04_02210F84
	arm_func_end MOD04_021FBA00

	arm_func_start MOD04_021FBAB0
MOD04_021FBAB0: ; 0x021FBAB0
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	ldr r3, _021FBB38 ; =UNK04_02210F84
	mov r7, r0
	ldr r0, [r3]
	mov r6, r1
	cmp r0, #0
	mov r5, r2
	mvneq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	mov r4, #0
	bl MOD04_021EF06C
	cmp r0, #0
	ble _021FBB30
	ldr r8, _021FBB38 ; =UNK04_02210F84
_021FBAE8:
	ldr r0, [r8]
	mov r1, r4
	bl MOD04_021EEFFC
	ldr r1, [r0]
	cmp r1, r7
	bne _021FBB1C
	ldr r1, [r0, #4]
	cmp r1, r6
	bne _021FBB1C
	ldr r0, [r0, #8]
	cmp r0, r5
	moveq r0, r4
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
_021FBB1C:
	ldr r0, [r8]
	add r4, r4, #1
	bl MOD04_021EF06C
	cmp r4, r0
	blt _021FBAE8
_021FBB30:
	mvn r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_021FBB38: .word UNK04_02210F84
	arm_func_end MOD04_021FBAB0

	arm_func_start MOD04_021FBB3C
MOD04_021FBB3C: ; 0x021FBB3C
	sub r2, r1, #6
	mov r3, r0
	cmp r2, #0
	ble _021FBBB4
_021FBB4C:
	ldrsb r1, [r3]
	cmp r1, #0x5c
	bne _021FBBA4
	ldrsb r1, [r3, #1]
	cmp r1, #0x66
	bne _021FBBA4
	ldrsb r1, [r3, #2]
	cmp r1, #0x69
	bne _021FBBA4
	ldrsb r1, [r3, #3]
	cmp r1, #0x6e
	bne _021FBBA4
	ldrsb r1, [r3, #4]
	cmp r1, #0x61
	bne _021FBBA4
	ldrsb r1, [r3, #5]
	cmp r1, #0x6c
	bne _021FBBA4
	ldrsb r1, [r3, #6]
	cmp r1, #0x5c
	moveq r0, r3
	bxeq lr
_021FBBA4:
	add r3, r3, #1
	sub r1, r3, r0
	cmp r1, r2
	blt _021FBB4C
_021FBBB4:
	mov r0, #0
	bx lr
	arm_func_end MOD04_021FBB3C

	arm_func_start MOD04_021FBBBC
MOD04_021FBBBC: ; 0x021FBBBC
	ldr ip, _021FBBC4 ; =MOD04_021EFF2C
	bx ip
	.align 2, 0
_021FBBC4: .word MOD04_021EFF2C
	arm_func_end MOD04_021FBBBC

	arm_func_start MOD04_021FBBC8
MOD04_021FBBC8: ; 0x021FBBC8
	stmdb sp!, {lr}
	sub sp, sp, #4
	bl MOD04_021FBBE8
	cmp r0, #0
	ldreq r0, _021FBBE4 ; =UNK04_0220EE58
	add sp, sp, #4
	ldmfd sp!, {pc}
	.align 2, 0
_021FBBE4: .word UNK04_0220EE58
	arm_func_end MOD04_021FBBC8

	arm_func_start MOD04_021FBBE8
MOD04_021FBBE8: ; 0x021FBBE8
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x100
	ldr lr, _021FBCA8 ; =UNK04_0220BBD8
	add ip, sp, #0
	mov r4, r0
	mov r3, #0x80
_021FBC00:
	ldrb r2, [lr], #1
	ldrb r0, [lr], #1
	subs r3, r3, #1
	strb r2, [ip], #1
	strb r0, [ip], #1
	bne _021FBC00
	ldr r2, _021FBCAC ; =UNK04_02210F8C
	add r0, sp, #0
	ldr r3, [r2]
	eor r3, r3, #1
	str r3, [r2]
	bl strcat
	ldr r1, _021FBCB0 ; =UNK04_0220EE74
	add r0, sp, #0
	bl strcat
	add r1, sp, #0
	mov r0, r4
	bl strstr
	movs r4, r0
	addeq sp, sp, #0x100
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	add r0, sp, #0
	bl strlen
	ldr r1, _021FBCAC ; =UNK04_02210F8C
	ldr r2, _021FBCB4 ; =UNK04_02211194
	ldr r1, [r1]
	add r3, r4, r0
	add r0, r2, r1, lsl #8
	mov r2, r0
	b _021FBC84
_021FBC7C:
	ldrsb r1, [r3], #1
	strb r1, [r2], #1
_021FBC84:
	ldrsb r1, [r3]
	cmp r1, #0
	beq _021FBC98
	cmp r1, #0x5c
	bne _021FBC7C
_021FBC98:
	mov r1, #0
	strb r1, [r2]
	add sp, sp, #0x100
	ldmia sp!, {r4, pc}
	.align 2, 0
_021FBCA8: .word UNK04_0220BBD8
_021FBCAC: .word UNK04_02210F8C
_021FBCB0: .word UNK04_0220EE74
_021FBCB4: .word UNK04_02211194
	arm_func_end MOD04_021FBBE8

	arm_func_start MOD04_021FBCB8
MOD04_021FBCB8: ; 0x021FBCB8
	stmdb sp!, {r4, lr}
	ldr r2, _021FBCFC ; =UNK04_0220EDD8
	mov r4, #0
	cmp r1, #0
	ldr lr, [r2]
	ldmleia sp!, {r4, pc}
_021FBCD0:
	ldrsb ip, [r0, r4]
	ldrsb r3, [lr]
	eor r3, ip, r3
	strb r3, [r0, r4]
	ldrsb r3, [lr, #1]!
	add r4, r4, #1
	cmp r3, #0
	ldreq lr, [r2]
	cmp r4, r1
	blt _021FBCD0
	ldmia sp!, {r4, pc}
	.align 2, 0
_021FBCFC: .word UNK04_0220EDD8
	arm_func_end MOD04_021FBCB8

	arm_func_start MOD04_021FBD00
MOD04_021FBD00: ; 0x021FBD00
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	ldr r0, _021FBE48 ; =UNK04_0220EDD4
	mvn r1, #0
	ldr r0, [r0]
	cmp r0, r1
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	ldr r1, _021FBE4C ; =UNK04_02210F88
	ldr r1, [r1]
	cmp r1, #5
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	bl MOD04_021FBBBC
	cmp r0, #0
	beq _021FBE2C
	ldr r8, _021FBE50 ; =UNK04_02210F80
	ldr sl, _021FBE54 ; =UNK04_02210F90
	ldr sb, _021FBE58 ; =UNK04_02210F7C
	ldr r7, _021FBE48 ; =UNK04_0220EDD4
	mov r6, #0x100
	mov r5, #0
_021FBD54:
	ldr r1, [sl]
	ldr r0, [sb]
	sub r0, r1, r0
	cmp r0, #0x80
	bge _021FBD98
	cmp r1, #0x100
	strlt r6, [sl]
	movge r0, r1, lsl #1
	strge r0, [sl]
	ldr r1, [sl]
	ldr r0, [r8]
	add r1, r1, #1
	bl MOD04_021DD844
	str r0, [r8]
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_021FBD98:
	ldr r4, [sb]
	ldr r1, [r8]
	ldr r2, [sl]
	ldr r0, [r7]
	mov r3, r5
	add r1, r1, r4
	sub r2, r2, r4
	bl MOD04_021EFC78
	cmp r0, #0
	bgt _021FBDCC
	bl MOD04_021FBE7C
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_021FBDCC:
	ldr r2, [sb]
	ldr r1, [r8]
	add r0, r2, r0
	str r0, [sb]
	strb r5, [r1, r0]
	ldr r0, [r8]
	ldr r1, [sb]
	bl MOD04_021FB654
	ldr r1, [sb]
	mov r4, r0
	cmp r4, r1
	streq r5, [sb]
	beq _021FBE1C
	ldr r0, [r8]
	sub r2, r1, r4
	add r1, r0, r4
	bl memmove
	ldr r0, [sb]
	sub r0, r0, r4
	str r0, [sb]
_021FBE1C:
	ldr r0, [r7]
	bl MOD04_021FBBBC
	cmp r0, #0
	bne _021FBD54
_021FBE2C:
	ldr r1, _021FBE48 ; =UNK04_0220EDD4
	mvn r0, #0
	ldr r1, [r1]
	cmp r1, r0
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_021FBE48: .word UNK04_0220EDD4
_021FBE4C: .word UNK04_02210F88
_021FBE50: .word UNK04_02210F80
_021FBE54: .word UNK04_02210F90
_021FBE58: .word UNK04_02210F7C
	arm_func_end MOD04_021FBD00

	arm_func_start MOD04_021FBE5C
MOD04_021FBE5C: ; 0x021FBE5C
	ldr r1, _021FBE78 ; =UNK04_0220EDD4
	mvn r0, #0
	ldr r1, [r1]
	cmp r1, r0
	movne r0, #1
	moveq r0, #0
	bx lr
	.align 2, 0
_021FBE78: .word UNK04_0220EDD4
	arm_func_end MOD04_021FBE5C

	arm_func_start MOD04_021FBE7C
MOD04_021FBE7C: ; 0x021FBE7C
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r0, _021FBEF8 ; =UNK04_0220EDD4
	mvn r1, #0
	ldr r0, [r0]
	cmp r0, r1
	beq _021FBEAC
	mov r1, #2
	bl MOD04_021EFD80
	ldr r0, _021FBEF8 ; =UNK04_0220EDD4
	ldr r0, [r0]
	bl MOD04_021EFD9C
_021FBEAC:
	ldr r0, _021FBEF8 ; =UNK04_0220EDD4
	mvn r1, #0
	str r1, [r0]
	bl MOD04_021FB44C
	ldr r0, _021FBEFC ; =UNK04_02210F80
	ldr r0, [r0]
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqia sp!, {pc}
	bl MOD04_021DD82C
	ldr r2, _021FBEFC ; =UNK04_02210F80
	mov r3, #0
	ldr r1, _021FBF00 ; =UNK04_02210F90
	ldr r0, _021FBF04 ; =UNK04_02210F7C
	str r3, [r2]
	str r3, [r1]
	str r3, [r0]
	add sp, sp, #4
	ldmfd sp!, {pc}
	.align 2, 0
_021FBEF8: .word UNK04_0220EDD4
_021FBEFC: .word UNK04_02210F80
_021FBF00: .word UNK04_02210F90
_021FBF04: .word UNK04_02210F7C
	arm_func_end MOD04_021FBE7C

	arm_func_start MOD04_021FBF08
MOD04_021FBF08: ; 0x021FBF08
	mov ip, #0
_021FBF0C:
	cmp ip, #0
	beq _021FBF30
	cmp ip, #0xd
	beq _021FBF30
	ldrb r3, [r0, ip]
	ldrb r2, [r1, ip]
	cmp r3, r2
	movne r0, #0
	bxne lr
_021FBF30:
	add ip, ip, #1
	cmp ip, #0x20
	blt _021FBF0C
	mov r0, #1
	bx lr
	arm_func_end MOD04_021FBF08

	arm_func_start MOD04_021FBF44
MOD04_021FBF44: ; 0x021FBF44
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #4
	mov r5, r0
	ldr r0, _021FC06C ; =UNK04_0220EE78
	mov r4, r1
	bl strlen
	mov r8, r0
	mov r0, r4
	bl MOD04_021FC1BC
	mov sl, #0
	mov fp, r0
	mov r7, sl
_021FBF74:
	cmp fp, #0
	beq _021FBF8C
	cmp sl, #0
	beq _021FBF8C
	cmp sl, #0xd
	bne _021FBFBC
_021FBF8C:
	bl rand
	ldr r1, _021FC070 ; =0x2C0B02C1
	smull r2, r3, r1, r0
	mov r3, r3, asr #4
	mov r1, r0, lsr #0x1f
	add r3, r1, r3
	ldr r1, _021FC074 ; =0x0000005D
	smull r2, r3, r1, r3
	sub r3, r0, r2
	add r0, r3, #0x21
	strb r0, [r5, sl]
	b _021FC04C
_021FBFBC:
	cmp sl, #1
	beq _021FBFCC
	cmp sl, #0xe
	bne _021FBFD4
_021FBFCC:
	ldrsb sb, [r4, sl]
	b _021FBFDC
_021FBFD4:
	sub r0, sl, #1
	ldrsb sb, [r4, r0]
_021FBFDC:
	ldrb r6, [r4, sl]
	mov r1, r8
	add r0, sl, r6
	bl _s32_div_f
	mul r0, sb, r7
	mov sb, r1
	mov r1, r8
	bl _s32_div_f
	ldr r0, _021FC06C ; =UNK04_0220EE78
	ldrsb r3, [r0, sb]
	ldrsb r2, [r0, r1]
	mla r0, sl, r6, r3
	mov r1, r0, lsr #0x1f
	rsb r0, r1, r0, lsl #27
	add r0, r1, r0, ror #27
	ldrb r0, [r4, r0]
	eor r0, r0, r2
	bl abs
	ldr r1, _021FC070 ; =0x2C0B02C1
	smull r2, r3, r1, r0
	mov r3, r3, asr #4
	mov r1, r0, lsr #0x1f
	add r3, r1, r3
	ldr r1, _021FC074 ; =0x0000005D
	smull r2, r3, r1, r3
	sub r3, r0, r2
	add r0, r3, #0x21
	strb r0, [r5, sl]
_021FC04C:
	ldr r0, _021FC078 ; =0x00004647
	add sl, sl, #1
	cmp sl, #0x20
	add r7, r7, r0
	blt _021FBF74
	mov r0, r5
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_021FC06C: .word UNK04_0220EE78
_021FC070: .word 0x2C0B02C1
_021FC074: .word 0x0000005D
_021FC078: .word 0x00004647
	arm_func_end MOD04_021FBF44

	arm_func_start MOD04_021FC07C
MOD04_021FC07C: ; 0x021FC07C
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #4
	movs sl, r0
	bne _021FC0A0
	ldr r0, _021FC1AC ; =UNK04_0220EE9C
	ldr r1, _021FC1B0 ; =UNK04_0220EEA4
	mov r2, #0
	mov r3, #0x2b
	bl __msl_assertion_failed
_021FC0A0:
	bl MOD04_021F025C
	bl srand
	bl rand
	ldr r1, _021FC1B4 ; =0x2C0B02C1
	mov r2, r0, lsr #0x1f
	smull r3, r4, r1, r0
	mov r8, #0
	mov r4, r4, asr #4
	mov sb, #1
	ldr r1, _021FC1B8 ; =0x0000005D
	add r4, r2, r4
	smull r2, r3, r1, r4
	sub r4, r0, r2
	add r0, r4, #0x21
	strb r0, [sl]
	mov r5, r8
	mov r6, sb
	mov fp, r8
	mov r4, sb
_021FC0EC:
	sub r0, sb, #1
	ldrb r2, [sl, r0]
	ldrb r3, [sl]
	add r7, sl, sb
	cmp r2, r3
	eor r2, sb, r2
	movlo r0, r6
	and r2, r2, #1
	movhs r0, r5
	cmp r3, #0x4f
	movlo r1, r4
	and r3, r3, #1
	eor r2, r8, r2
	movhs r1, fp
	eor r2, r3, r2
	eor r1, r2, r1
	eor r8, r1, r0
	bl rand
	ldr r2, _021FC1B4 ; =0x2C0B02C1
	cmp r8, #0
	smull r3, r1, r2, r0
	mov r1, r1, asr #4
	mov r2, r0, lsr #0x1f
	add r1, r2, r1
	ldr r2, _021FC1B8 ; =0x0000005D
	smull r1, r3, r2, r1
	sub r1, r0, r1
	add r0, r1, #0x21
	strb r0, [sl, sb]
	beq _021FC170
	ldrb r0, [r7]
	ands r0, r0, #1
	beq _021FC188
_021FC170:
	cmp r8, #0
	bne _021FC194
	ldrb r0, [r7]
	and r0, r0, #1
	cmp r0, #1
	bne _021FC194
_021FC188:
	ldrb r0, [r7]
	add r0, r0, #1
	strb r0, [r7]
_021FC194:
	add sb, sb, #1
	cmp sb, #0x20
	blt _021FC0EC
	mov r0, sl
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_021FC1AC: .word UNK04_0220EE9C
_021FC1B0: .word UNK04_0220EEA4
_021FC1B4: .word 0x2C0B02C1
_021FC1B8: .word 0x0000005D
	arm_func_end MOD04_021FC07C

	arm_func_start MOD04_021FC1BC
MOD04_021FC1BC: ; 0x021FC1BC
	stmdb sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #4
	ldrb r4, [r0]
	mov r6, #0
	mov r5, #1
	and lr, r4, #1
	mov r3, r6
	mov ip, r5
	mov r1, r6
	mov r2, r5
_021FC1E4:
	sub r7, r5, #1
	ldrb sb, [r0, r7]
	cmp sb, r4
	eor sb, r5, sb
	movlo r7, ip
	and sb, sb, #1
	movhs r7, r3
	cmp r4, #0x4f
	movlo r8, r2
	eor r6, r6, sb
	movhs r8, r1
	eor r6, lr, r6
	eor r6, r6, r8
	eors r6, r6, r7
	beq _021FC22C
	ldrb r7, [r0, r5]
	ands r7, r7, #1
	beq _021FC244
_021FC22C:
	cmp r6, #0
	bne _021FC250
	ldrb r7, [r0, r5]
	and r7, r7, #1
	cmp r7, #1
	bne _021FC250
_021FC244:
	add sp, sp, #4
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
_021FC250:
	add r5, r5, #1
	cmp r5, #0x20
	blt _021FC1E4
	mov r0, #1
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
	arm_func_end MOD04_021FC1BC

	arm_func_start MOD04_021FC268
MOD04_021FC268: ; 0x021FC268
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r1
	mvn r1, #0
	mov r6, r0
	cmp r5, r1
	ldreq r0, [r6, #8]
	mov r4, r2
	subeq r5, r0, r4
	ldr r0, [r6, #8]
	cmp r5, r0
	ble _021FC2A8
	ldr r0, _021FC2F8 ; =UNK04_0220EEB0
	ldr r1, _021FC2FC ; =UNK04_0220EEC8
	mov r2, #0
	mov r3, #0x4f
	bl __msl_assertion_failed
_021FC2A8:
	ldr r0, [r6, #8]
	sub r0, r0, r5
	cmp r4, r0
	ble _021FC2CC
	ldr r0, _021FC300 ; =UNK04_0220EED4
	ldr r1, _021FC2FC ; =UNK04_0220EEC8
	mov r2, #0
	mov r3, #0x50
	bl __msl_assertion_failed
_021FC2CC:
	ldr r0, [r6]
	ldr r1, [r6, #8]
	add r0, r0, r5
	sub r2, r1, r5
	add r1, r0, r4
	sub r2, r2, r4
	bl memmove
	ldr r0, [r6, #8]
	sub r0, r0, r4
	str r0, [r6, #8]
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_021FC2F8: .word UNK04_0220EEB0
_021FC2FC: .word UNK04_0220EEC8
_021FC300: .word UNK04_0220EED4
	arm_func_end MOD04_021FC268

	arm_func_start MOD04_021FC304
MOD04_021FC304: ; 0x021FC304
	stmdb sp!, {r4, r5, r6, lr}
	movs r5, r1
	mov r6, r0
	mov r4, r2
	ldmeqia sp!, {r4, r5, r6, pc}
	cmp r4, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	mvn r0, #0
	cmp r4, r0
	bne _021FC338
	mov r0, r5
	bl strlen
	mov r4, r0
_021FC338:
	ldr r1, [r6, #8]
	ldr r0, [r6, #4]
	add r1, r1, r4
	cmp r1, r0
	ble _021FC360
	ldr r0, _021FC388 ; =UNK04_0220EEF8
	ldr r1, _021FC38C ; =UNK04_0220EEC8
	mov r2, #0
	mov r3, #0x40
	bl __msl_assertion_failed
_021FC360:
	ldr r3, [r6]
	ldr r0, [r6, #8]
	mov r1, r5
	mov r2, r4
	add r0, r3, r0
	bl memcpy
	ldr r0, [r6, #8]
	add r0, r0, r4
	str r0, [r6, #8]
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_021FC388: .word UNK04_0220EEF8
_021FC38C: .word UNK04_0220EEC8
	arm_func_end MOD04_021FC304

	arm_func_start MOD04_021FC390
MOD04_021FC390: ; 0x021FC390
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	ldr r2, [r5, #8]
	ldr r0, [r5, #4]
	add r2, r2, #2
	mov r4, r1
	cmp r2, r0
	ble _021FC3C8
	ldr r0, _021FC3FC ; =UNK04_0220EF1C
	ldr r1, _021FC400 ; =UNK04_0220EEC8
	mov r2, #0
	mov r3, #0x2e
	bl __msl_assertion_failed
_021FC3C8:
	ldr r2, [r5, #8]
	mov r1, r4, asr #8
	add r0, r2, #1
	str r0, [r5, #8]
	ldr r0, [r5]
	strb r1, [r0, r2]
	ldr r1, [r5, #8]
	add r0, r1, #1
	str r0, [r5, #8]
	ldr r0, [r5]
	strb r4, [r0, r1]
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_021FC3FC: .word UNK04_0220EF1C
_021FC400: .word UNK04_0220EEC8
	arm_func_end MOD04_021FC390

	arm_func_start MOD04_021FC404
MOD04_021FC404: ; 0x021FC404
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	ldr r2, [r5, #8]
	ldr r0, [r5, #4]
	mov r4, r1
	cmp r2, r0
	blt _021FC438
	ldr r0, _021FC454 ; =UNK04_0220EF40
	ldr r1, _021FC458 ; =UNK04_0220EEC8
	mov r2, #0
	mov r3, #0x23
	bl __msl_assertion_failed
_021FC438:
	ldr r1, [r5, #8]
	add r0, r1, #1
	str r0, [r5, #8]
	ldr r0, [r5]
	strb r4, [r0, r1]
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_021FC454: .word UNK04_0220EF40
_021FC458: .word UNK04_0220EEC8
	arm_func_end MOD04_021FC404

	arm_func_start MOD04_021FC45C
MOD04_021FC45C: ; 0x021FC45C
	ldr r1, [r0, #4]
	ldr r0, [r0, #8]
	sub r0, r1, r0
	bx lr
	arm_func_end MOD04_021FC45C

	arm_func_start MOD04_021FC46C
MOD04_021FC46C: ; 0x021FC46C
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r4, r1
	mov r5, r0
	mov r0, r4
	bl MOD04_021DD860
	str r0, [r5]
	ldr r0, [r5]
	cmp r0, #0
	moveq r0, #0
	strne r4, [r5, #4]
	movne r0, #1
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	arm_func_end MOD04_021FC46C

	arm_func_start MOD04_021FC4A4
MOD04_021FC4A4: ; 0x021FC4A4
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	ldr r4, [sp, #0x24]
	mov r6, r2
	mov r2, #0
	movs r8, r0
	mov r7, r1
	mov r5, r3
	str r2, [r4]
	bne _021FC4DC
	ldr r0, _021FC590 ; =UNK04_0220EF5C
	ldr r1, _021FC594 ; =UNK04_0220EF64
	ldr r3, _021FC598 ; =0x00000197
	bl __msl_assertion_failed
_021FC4DC:
	cmp r8, #0
	addeq sp, sp, #8
	moveq r0, #1
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, [r8, #0x30]
	cmp r0, #0
	addeq sp, sp, #8
	moveq r0, #1
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, [sp, #0x20]
	cmp r0, #0
	beq _021FC514
	cmp r5, #0
	bne _021FC51C
_021FC514:
	mov r5, #0
	str r5, [sp, #0x20]
_021FC51C:
	ldr r1, [r8, #0x1c]
	ldr r0, [sp, #0x20]
	add r1, r1, #1
	str r1, [r8, #0x1c]
	str r0, [sp]
	ldr ip, [r8, #0x30]
	mov r0, r8
	mov r1, r7
	mov r2, r6
	mov r3, r5
	blx ip
	str r0, [r4]
	ldr r0, [r8, #0x1c]
	sub r0, r0, #1
	str r0, [r8, #0x1c]
	ldr r0, [r8, #0x14]
	cmp r0, #0
	beq _021FC584
	ldr r0, [r8, #0x1c]
	cmp r0, #0
	bne _021FC584
	mov r0, r8
	bl MOD04_021FF9CC
	add sp, sp, #8
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_021FC584:
	mov r0, #1
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_021FC590: .word UNK04_0220EF5C
_021FC594: .word UNK04_0220EF64
_021FC598: .word 0x00000197
	arm_func_end MOD04_021FC4A4

	arm_func_start MOD04_021FC59C
MOD04_021FC59C: ; 0x021FC59C
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0xc
	movs r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bne _021FC5CC
	ldr r0, _021FC6BC ; =UNK04_0220EF5C
	ldr r1, _021FC6C0 ; =UNK04_0220EF64
	mov r2, #0
	mov r3, #0x160
	bl __msl_assertion_failed
_021FC5CC:
	cmp r7, #0
	addeq sp, sp, #0xc
	moveq r0, #1
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	ldr r0, [sp, #0x2c]
	cmp r0, #0
	ldrne ip, [r7, #0x28]
	ldreq ip, [r7, #0x2c]
	cmp ip, #0
	addeq sp, sp, #0xc
	moveq r0, #1
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	ldr r0, [sp, #0x28]
	cmp r0, #0
	beq _021FC614
	ldr r0, [sp, #0x24]
	cmp r0, #0
	bne _021FC620
_021FC614:
	mov r0, #0
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
_021FC620:
	ldr r0, [r7, #0x1c]
	cmp r6, #0
	add r0, r0, #1
	str r0, [r7, #0x1c]
	ldrne r0, [r6, #0x24]
	ldr r1, [sp, #0x20]
	addne r0, r0, #1
	strne r0, [r6, #0x24]
	str r1, [sp]
	ldr r0, [sp, #0x24]
	ldr lr, [sp, #0x28]
	str r0, [sp, #4]
	mov r0, r7
	mov r1, r6
	mov r2, r5
	mov r3, r4
	str lr, [sp, #8]
	blx ip
	ldr r0, [r7, #0x1c]
	cmp r6, #0
	sub r0, r0, #1
	str r0, [r7, #0x1c]
	ldrne r0, [r6, #0x24]
	subne r0, r0, #1
	strne r0, [r6, #0x24]
	ldr r0, [r7, #0x14]
	cmp r0, #0
	beq _021FC6B0
	ldr r0, [r7, #0x1c]
	cmp r0, #0
	bne _021FC6B0
	mov r0, r7
	bl MOD04_021FF9CC
	add sp, sp, #0xc
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, pc}
_021FC6B0:
	mov r0, #1
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_021FC6BC: .word UNK04_0220EF5C
_021FC6C0: .word UNK04_0220EF64
	arm_func_end MOD04_021FC59C

	arm_func_start MOD04_021FC6C4
MOD04_021FC6C4: ; 0x021FC6C4
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	movs r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bne _021FC6F4
	ldr r0, _021FC7C8 ; =UNK04_0220EF74
	ldr r1, _021FC7CC ; =UNK04_0220EF64
	ldr r3, _021FC7D0 ; =0x0000012D
	mov r2, #0
	bl __msl_assertion_failed
_021FC6F4:
	cmp r7, #0
	addeq sp, sp, #4
	moveq r0, #1
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	ldr r0, [r7, #0x9c]
	mov r1, r6
	bl MOD04_021EEFFC
	movs lr, r0
	addeq sp, sp, #4
	moveq r0, #1
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	cmp r4, #0
	beq _021FC730
	cmp r5, #0
	bne _021FC738
_021FC730:
	mov r5, #0
	mov r4, r5
_021FC738:
	ldr r0, [r7, #0x24]
	ldr r2, [sp, #0x18]
	add r0, r0, #1
	str r0, [r7, #0x24]
	ldr ip, [r7, #8]
	mov r0, r7
	ldr r3, [ip, #0x1c]
	mov r1, r6
	add r3, r3, #1
	str r3, [ip, #0x1c]
	str r2, [sp]
	ldr r6, [lr]
	mov r2, r5
	mov r3, r4
	blx r6
	ldr r0, [r7, #0x24]
	sub r0, r0, #1
	str r0, [r7, #0x24]
	ldr r1, [r7, #8]
	ldr r0, [r1, #0x1c]
	sub r0, r0, #1
	str r0, [r1, #0x1c]
	ldr r0, [r7, #8]
	ldr r1, [r0, #0x14]
	cmp r1, #0
	beq _021FC7BC
	ldr r1, [r0, #0x1c]
	cmp r1, #0
	bne _021FC7BC
	bl MOD04_021FF9CC
	add sp, sp, #4
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, pc}
_021FC7BC:
	mov r0, #1
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_021FC7C8: .word UNK04_0220EF74
_021FC7CC: .word UNK04_0220EF64
_021FC7D0: .word 0x0000012D
	arm_func_end MOD04_021FC6C4

	arm_func_start MOD04_021FC7D4
MOD04_021FC7D4: ; 0x021FC7D4
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	movs r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bne _021FC804
	ldr r0, _021FC8D8 ; =UNK04_0220EF74
	ldr r1, _021FC8DC ; =UNK04_0220EF64
	ldr r3, _021FC8E0 ; =0x00000101
	mov r2, #0
	bl __msl_assertion_failed
_021FC804:
	cmp r7, #0
	addeq sp, sp, #4
	moveq r0, #1
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	ldr r0, [r7, #0x98]
	mov r1, r6
	bl MOD04_021EEFFC
	movs lr, r0
	addeq sp, sp, #4
	moveq r0, #1
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	cmp r4, #0
	beq _021FC840
	cmp r5, #0
	bne _021FC848
_021FC840:
	mov r5, #0
	mov r4, r5
_021FC848:
	ldr r0, [r7, #0x24]
	ldr r2, [sp, #0x18]
	add r0, r0, #1
	str r0, [r7, #0x24]
	ldr ip, [r7, #8]
	mov r0, r7
	ldr r3, [ip, #0x1c]
	mov r1, r6
	add r3, r3, #1
	str r3, [ip, #0x1c]
	str r2, [sp]
	ldr r6, [lr]
	mov r2, r5
	mov r3, r4
	blx r6
	ldr r0, [r7, #0x24]
	sub r0, r0, #1
	str r0, [r7, #0x24]
	ldr r1, [r7, #8]
	ldr r0, [r1, #0x1c]
	sub r0, r0, #1
	str r0, [r1, #0x1c]
	ldr r0, [r7, #8]
	ldr r1, [r0, #0x14]
	cmp r1, #0
	beq _021FC8CC
	ldr r1, [r0, #0x1c]
	cmp r1, #0
	bne _021FC8CC
	bl MOD04_021FF9CC
	add sp, sp, #4
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, pc}
_021FC8CC:
	mov r0, #1
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_021FC8D8: .word UNK04_0220EF74
_021FC8DC: .word UNK04_0220EF64
_021FC8E0: .word 0x00000101
	arm_func_end MOD04_021FC7D4

	arm_func_start MOD04_021FC8E4
MOD04_021FC8E4: ; 0x021FC8E4
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	movs r4, r0
	mov r5, r1
	bne _021FC90C
	ldr r0, _021FC9B0 ; =UNK04_0220EF74
	ldr r1, _021FC9B4 ; =UNK04_0220EF64
	mov r2, #0
	mov r3, #0xd9
	bl __msl_assertion_failed
_021FC90C:
	cmp r4, #0
	addeq sp, sp, #4
	moveq r0, #1
	ldmeqia sp!, {r4, r5, pc}
	ldr r0, [r4, #0x34]
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #1
	ldmeqia sp!, {r4, r5, pc}
	ldr r1, [r4, #0x24]
	mov r0, r4
	add r1, r1, #1
	str r1, [r4, #0x24]
	ldr r3, [r4, #8]
	mov r1, r5
	ldr r2, [r3, #0x1c]
	add r2, r2, #1
	str r2, [r3, #0x1c]
	ldr r2, [r4, #0x34]
	blx r2
	ldr r0, [r4, #0x24]
	sub r0, r0, #1
	str r0, [r4, #0x24]
	ldr r1, [r4, #8]
	ldr r0, [r1, #0x1c]
	sub r0, r0, #1
	str r0, [r1, #0x1c]
	ldr r0, [r4, #8]
	ldr r1, [r0, #0x14]
	cmp r1, #0
	beq _021FC9A4
	ldr r1, [r0, #0x1c]
	cmp r1, #0
	bne _021FC9A4
	bl MOD04_021FF9CC
	add sp, sp, #4
	mov r0, #0
	ldmia sp!, {r4, r5, pc}
_021FC9A4:
	mov r0, #1
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_021FC9B0: .word UNK04_0220EF74
_021FC9B4: .word UNK04_0220EF64
	arm_func_end MOD04_021FC8E4

	arm_func_start MOD04_021FC9B8
MOD04_021FC9B8: ; 0x021FC9B8
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	movs r4, r0
	mov r5, r1
	bne _021FC9E0
	ldr r0, _021FCA84 ; =UNK04_0220EF74
	ldr r1, _021FCA88 ; =UNK04_0220EF64
	mov r2, #0
	mov r3, #0xba
	bl __msl_assertion_failed
_021FC9E0:
	cmp r4, #0
	addeq sp, sp, #4
	moveq r0, #1
	ldmeqia sp!, {r4, r5, pc}
	ldr r0, [r4, #0x30]
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #1
	ldmeqia sp!, {r4, r5, pc}
	ldr r1, [r4, #0x24]
	mov r0, r4
	add r1, r1, #1
	str r1, [r4, #0x24]
	ldr r3, [r4, #8]
	mov r1, r5
	ldr r2, [r3, #0x1c]
	add r2, r2, #1
	str r2, [r3, #0x1c]
	ldr r2, [r4, #0x30]
	blx r2
	ldr r0, [r4, #0x24]
	sub r0, r0, #1
	str r0, [r4, #0x24]
	ldr r1, [r4, #8]
	ldr r0, [r1, #0x1c]
	sub r0, r0, #1
	str r0, [r1, #0x1c]
	ldr r0, [r4, #8]
	ldr r1, [r0, #0x14]
	cmp r1, #0
	beq _021FCA78
	ldr r1, [r0, #0x1c]
	cmp r1, #0
	bne _021FCA78
	bl MOD04_021FF9CC
	add sp, sp, #4
	mov r0, #0
	ldmia sp!, {r4, r5, pc}
_021FCA78:
	mov r0, #1
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_021FCA84: .word UNK04_0220EF74
_021FCA88: .word UNK04_0220EF64
	arm_func_end MOD04_021FC9B8

	arm_func_start MOD04_021FCA8C
MOD04_021FCA8C: ; 0x021FCA8C
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	movs r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bne _021FCABC
	ldr r0, _021FCB80 ; =UNK04_0220EF74
	ldr r1, _021FCB84 ; =UNK04_0220EF64
	mov r2, #0
	mov r3, #0x94
	bl __msl_assertion_failed
_021FCABC:
	cmp r7, #0
	addeq sp, sp, #4
	moveq r0, #1
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	ldr r0, [r7, #0x2c]
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #1
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	cmp r5, #0
	beq _021FCAF0
	cmp r6, #0
	bne _021FCAF8
_021FCAF0:
	mov r6, #0
	mov r5, r6
_021FCAF8:
	ldr r1, [r7, #0x24]
	mov r0, r7
	add r1, r1, #1
	str r1, [r7, #0x24]
	ldr ip, [r7, #8]
	mov r1, r6
	ldr r3, [ip, #0x1c]
	mov r2, r5
	add r3, r3, #1
	str r3, [ip, #0x1c]
	ldr r5, [r7, #0x2c]
	mov r3, r4
	blx r5
	ldr r0, [r7, #0x24]
	sub r0, r0, #1
	str r0, [r7, #0x24]
	ldr r1, [r7, #8]
	ldr r0, [r1, #0x1c]
	sub r0, r0, #1
	str r0, [r1, #0x1c]
	ldr r0, [r7, #8]
	ldr r1, [r0, #0x14]
	cmp r1, #0
	beq _021FCB74
	ldr r1, [r0, #0x1c]
	cmp r1, #0
	bne _021FCB74
	bl MOD04_021FF9CC
	add sp, sp, #4
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, pc}
_021FCB74:
	mov r0, #1
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_021FCB80: .word UNK04_0220EF74
_021FCB84: .word UNK04_0220EF64
	arm_func_end MOD04_021FCA8C

	arm_func_start MOD04_021FCB88
MOD04_021FCB88: ; 0x021FCB88
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	movs r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bne _021FCBB8
	ldr r0, _021FCC80 ; =UNK04_0220EF74
	ldr r1, _021FCC84 ; =UNK04_0220EF64
	mov r2, #0
	mov r3, #0x69
	bl __msl_assertion_failed
_021FCBB8:
	cmp r7, #0
	addeq sp, sp, #4
	moveq r0, #1
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	str r6, [r7, #0x18]
	ldr r0, [r7, #0x28]
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #1
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	cmp r4, #0
	beq _021FCBF0
	cmp r5, #0
	bne _021FCBF8
_021FCBF0:
	mov r5, #0
	mov r4, r5
_021FCBF8:
	ldr r1, [r7, #0x24]
	mov r0, r7
	add r1, r1, #1
	str r1, [r7, #0x24]
	ldr ip, [r7, #8]
	mov r1, r6
	ldr r3, [ip, #0x1c]
	mov r2, r5
	add r3, r3, #1
	str r3, [ip, #0x1c]
	ldr r5, [r7, #0x28]
	mov r3, r4
	blx r5
	ldr r0, [r7, #0x24]
	sub r0, r0, #1
	str r0, [r7, #0x24]
	ldr r1, [r7, #8]
	ldr r0, [r1, #0x1c]
	sub r0, r0, #1
	str r0, [r1, #0x1c]
	ldr r0, [r7, #8]
	ldr r1, [r0, #0x14]
	cmp r1, #0
	beq _021FCC74
	ldr r1, [r0, #0x1c]
	cmp r1, #0
	bne _021FCC74
	bl MOD04_021FF9CC
	add sp, sp, #4
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, pc}
_021FCC74:
	mov r0, #1
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_021FCC80: .word UNK04_0220EF74
_021FCC84: .word UNK04_0220EF64
	arm_func_end MOD04_021FCB88

	arm_func_start MOD04_021FCC88
MOD04_021FCC88: ; 0x021FCC88
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0xc
	movs r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	beq _021FCCAC
	cmp r6, #0
	bne _021FCCC0
_021FCCAC:
	ldr r0, _021FCDAC ; =UNK04_0220EF80
	ldr r1, _021FCDB0 ; =UNK04_0220EF64
	mov r2, #0
	mov r3, #0x3d
	bl __msl_assertion_failed
_021FCCC0:
	cmp r7, #0
	beq _021FCCD0
	cmp r6, #0
	bne _021FCCDC
_021FCCD0:
	add sp, sp, #0xc
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, pc}
_021FCCDC:
	ldr r0, [r7, #0x20]
	cmp r0, #0
	addeq sp, sp, #0xc
	moveq r0, #1
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	ldr r0, [sp, #0x28]
	cmp r0, #0
	beq _021FCD08
	ldr r0, [sp, #0x24]
	cmp r0, #0
	bne _021FCD14
_021FCD08:
	mov r0, #0
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
_021FCD14:
	ldr r1, [r7, #0x1c]
	ldr r0, [sp, #0x20]
	add r1, r1, #1
	str r1, [r7, #0x1c]
	ldr r2, [r6, #0x24]
	ldr r1, [sp, #0x24]
	add r2, r2, #1
	str r2, [r6, #0x24]
	str r0, [sp]
	ldr r0, [sp, #0x28]
	str r1, [sp, #4]
	str r0, [sp, #8]
	ldr ip, [r7, #0x20]
	mov r0, r7
	mov r1, r6
	mov r2, r5
	mov r3, r4
	blx ip
	ldr r0, [r7, #0x1c]
	sub r0, r0, #1
	str r0, [r7, #0x1c]
	ldr r0, [r6, #0x24]
	sub r0, r0, #1
	str r0, [r6, #0x24]
	ldr r0, [r7, #0x14]
	cmp r0, #0
	beq _021FCDA0
	ldr r0, [r7, #0x1c]
	cmp r0, #0
	bne _021FCDA0
	mov r0, r7
	bl MOD04_021FF9CC
	add sp, sp, #0xc
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, pc}
_021FCDA0:
	mov r0, #1
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_021FCDAC: .word UNK04_0220EF80
_021FCDB0: .word UNK04_0220EF64
	arm_func_end MOD04_021FCC88

	arm_func_start MOD04_021FCDB4
MOD04_021FCDB4: ; 0x021FCDB4
	stmdb sp!, {r4, lr}
	movs r4, r0
	bne _021FCDD4
	ldr r0, _021FCE44 ; =UNK04_0220EF5C
	ldr r1, _021FCE48 ; =UNK04_0220EF64
	mov r2, #0
	mov r3, #0x1b
	bl __msl_assertion_failed
_021FCDD4:
	cmp r4, #0
	moveq r0, #1
	ldmeqia sp!, {r4, pc}
	ldr r0, [r4, #0x24]
	cmp r0, #0
	moveq r0, #1
	ldmeqia sp!, {r4, pc}
	ldr r1, [r4, #0x1c]
	mov r0, r4
	add r1, r1, #1
	str r1, [r4, #0x1c]
	ldr r1, [r4, #0x24]
	blx r1
	ldr r0, [r4, #0x1c]
	sub r0, r0, #1
	str r0, [r4, #0x1c]
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _021FCE3C
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	bne _021FCE3C
	mov r0, r4
	bl MOD04_021FF9CC
	mov r0, #0
	ldmia sp!, {r4, pc}
_021FCE3C:
	mov r0, #1
	ldmia sp!, {r4, pc}
	.align 2, 0
_021FCE44: .word UNK04_0220EF5C
_021FCE48: .word UNK04_0220EF64
	arm_func_end MOD04_021FCDB4

	arm_func_start MOD04_021FCE4C
MOD04_021FCE4C: ; 0x021FCE4C
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x38]
	cmp r0, #0
	beq _021FCE64
	bl MOD04_021DD82C
_021FCE64:
	ldr r0, [r4, #0x44]
	cmp r0, #0
	beq _021FCE74
	bl MOD04_021DD82C
_021FCE74:
	ldr r0, [r4, #0x50]
	cmp r0, #0
	beq _021FCE84
	bl MOD04_021DD82C
_021FCE84:
	ldr r0, [r4, #0x5c]
	cmp r0, #0
	beq _021FCE94
	bl MOD04_021EF074
_021FCE94:
	ldr r0, [r4, #0x60]
	cmp r0, #0
	beq _021FCEA4
	bl MOD04_021EF074
_021FCEA4:
	ldr r0, [r4, #0x98]
	cmp r0, #0
	beq _021FCEB4
	bl MOD04_021EF074
_021FCEB4:
	ldr r0, [r4, #0x9c]
	cmp r0, #0
	beq _021FCEC4
	bl MOD04_021EF074
_021FCEC4:
	mov r0, r4
	bl MOD04_021DD82C
	ldmia sp!, {r4, pc}
	arm_func_end MOD04_021FCE4C

	arm_func_start MOD04_021FCED0
MOD04_021FCED0: ; 0x021FCED0
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r1, [sp, #8]
	ldr r0, [r1, #0xc]
	cmp r0, #7
	addeq sp, sp, #4
	ldmeqia sp!, {lr}
	addeq sp, sp, #0x10
	bxeq lr
	mov r0, #7
	str r0, [r1, #0xc]
	ldr r0, [sp, #8]
	add r1, sp, #8
	ldr r0, [r0, #8]
	ldr r0, [r0, #0xc]
	bl MOD04_021EF3F4
	ldr r0, [sp, #8]
	add r1, sp, #8
	ldr r0, [r0, #8]
	ldr r0, [r0, #0x10]
	bl MOD04_021EEFA8
	add sp, sp, #4
	ldmia sp!, {lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end MOD04_021FCED0

	arm_func_start MOD04_021FCF38
MOD04_021FCF38: ; 0x021FCF38
	stmdb sp!, {r4, lr}
	mov r4, r0
	cmp r1, #0
	beq _021FCF78
	ldr r1, [r4, #0xc]
	cmp r1, #7
	ldmgeia sp!, {r4, pc}
	bl MOD04_021FCED0
	mov r0, r4
	bl MOD04_021FD828
	mov r0, r4
	mov r1, #0
	bl MOD04_021FC9B8
	mov r0, r4
	bl MOD04_021FF6BC
	ldmia sp!, {r4, pc}
_021FCF78:
	mov r1, #6
	str r1, [r4, #0xc]
	bl MOD04_021FDA74
	ldmia sp!, {r4, pc}
	arm_func_end MOD04_021FCF38

	arm_func_start MOD04_021FCF88
MOD04_021FCF88: ; 0x021FCF88
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	mov r4, r1
	bl MOD04_021FD108
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r4, r5, pc}
	mov r0, r5
	mov r1, r4
	bl MOD04_021FD004
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r4, r5, pc}
	mov r0, r5
	mov r1, r4
	bl MOD04_021FD090
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r4, r5, pc}
	mov r0, r5
	mov r1, r4
	bl MOD04_021FD044
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	arm_func_end MOD04_021FCF88

	arm_func_start MOD04_021FD004
MOD04_021FD004: ; 0x021FD004
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r3, [r0, #0x88]
	ldr r2, _021FD040 ; =0x00007530
	sub r1, r1, r3
	cmp r1, r2
	bls _021FD034
	bl MOD04_021FDA18
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {pc}
_021FD034:
	mov r0, #1
	add sp, sp, #4
	ldmfd sp!, {pc}
	.align 2, 0
_021FD040: .word 0x00007530
	arm_func_end MOD04_021FD004

	arm_func_start MOD04_021FD044
MOD04_021FD044: ; 0x021FD044
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r2, [r0, #0x90]
	cmp r2, #0
	addeq sp, sp, #4
	moveq r0, #1
	ldmeqia sp!, {pc}
	ldr r2, [r0, #0x94]
	sub r1, r1, r2
	cmp r1, #0x64
	bls _021FD084
	bl MOD04_021FD8E4
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {pc}
_021FD084:
	mov r0, #1
	add sp, sp, #4
	ldmfd sp!, {pc}
	arm_func_end MOD04_021FD044

	arm_func_start MOD04_021FD090
MOD04_021FD090: ; 0x021FD090
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	mov r7, r0
	ldr r0, [r7, #0x60]
	mov r6, r1
	bl MOD04_021EF06C
	mov r4, r0
	cmp r4, #0
	mov r5, #0
	ble _021FD0FC
_021FD0B8:
	ldr r0, [r7, #0x60]
	mov r1, r5
	bl MOD04_021EEFFC
	mov r1, r0
	ldr r0, [r1, #0xc]
	sub r0, r6, r0
	cmp r0, #0x3e8
	bls _021FD0F0
	mov r0, r7
	bl MOD04_021FD760
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, pc}
_021FD0F0:
	add r5, r5, #1
	cmp r5, r4
	blt _021FD0B8
_021FD0FC:
	mov r0, #1
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, pc}
	arm_func_end MOD04_021FD090

	arm_func_start MOD04_021FD108
MOD04_021FD108: ; 0x021FD108
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r2, [r4, #0xc]
	cmp r2, #5
	bge _021FD1A0
	ldr r0, [r4, #0x10]
	mov r3, #0
	cmp r0, #0
	beq _021FD14C
	ldr r2, [r4, #0x20]
	cmp r2, #0
	beq _021FD168
	ldr r0, [r4, #0x1c]
	sub r0, r1, r0
	cmp r0, r2
	movhi r3, #1
	b _021FD168
_021FD14C:
	cmp r2, #4
	bge _021FD168
	ldr r2, [r4, #0x1c]
	ldr r0, _021FD1A8 ; =0x0000EA60
	sub r1, r1, r2
	cmp r1, r0
	movhi r3, #1
_021FD168:
	cmp r3, #0
	beq _021FD1A0
	mov r0, r4
	bl MOD04_021FD828
	mov r0, r4
	bl MOD04_021FCED0
	mov r2, #0
	mov r0, r4
	mov r3, r2
	mov r1, #6
	bl MOD04_021FCB88
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
_021FD1A0:
	mov r0, #1
	ldmia sp!, {r4, pc}
	.align 2, 0
_021FD1A8: .word 0x0000EA60
	arm_func_end MOD04_021FD108

	arm_func_start MOD04_021FD1AC
MOD04_021FD1AC: ; 0x021FD1AC
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	mov r4, r0
	str r2, [sp]
	mov r3, r1
	ldrh r2, [r4, #4]
	ldr r0, [r4, #8]
	ldr r1, [r4]
	bl MOD04_021FF50C
	cmp r0, #0
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	bl MOD04_021F025C
	str r0, [r4, #0x88]
	mov r0, #1
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	arm_func_end MOD04_021FD1AC

	arm_func_start MOD04_021FD1F4
MOD04_021FD1F4: ; 0x021FD1F4
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r0, #0
	str r0, [r4, #0x14]
	ldr r0, [r4, #0xc]
	cmp r0, #4
	ldmneia sp!, {r4, lr}
	addne sp, sp, #0x10
	bxne lr
	add r0, sp, #0xc
	add r1, sp, #0x10
	bl MOD04_021FFCDC
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	mov r0, r4
	bl MOD04_021FDAD0
	mov r0, #6
	str r0, [r4, #0xc]
	ldmia sp!, {r4, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end MOD04_021FD1F4

	arm_func_start MOD04_021FD24C
MOD04_021FD24C: ; 0x021FD24C
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	ldr r2, [r5, #0x14]
	mov r4, r1
	cmp r2, #0
	movne r0, #0
	addne sp, sp, #4
	strne r0, [r5, #0x14]
	ldmneia sp!, {r4, r5, pc}
	mov r2, #0
	str r2, [r5, #0x14]
	ldr r1, [r5, #0xc]
	cmp r1, #4
	addne sp, sp, #4
	movne r0, r2
	ldmneia sp!, {r4, r5, pc}
	bl MOD04_021FDB44
	mov r0, #5
	cmp r4, #0
	str r0, [r5, #0xc]
	addne ip, r5, #0x28
	ldmneia r4, {r0, r1, r2, r3}
	stmneia ip, {r0, r1, r2, r3}
	mov r0, #1
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	arm_func_end MOD04_021FD24C

	arm_func_start MOD04_021FD2B8
MOD04_021FD2B8: ; 0x021FD2B8
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0x24
	mov r5, r0
	add r0, sp, #0x34
	add r1, sp, #0x38
	mov r4, r3
	bl MOD04_021FFCDC
	ldr r0, [sp, #0x38]
	cmp r0, #0
	ble _021FD31C
	bl MOD04_021DD860
	str r0, [r5, #0x38]
	ldr r0, [r5, #0x38]
	cmp r0, #0
	addeq sp, sp, #0x24
	moveq r0, #1
	ldmeqia sp!, {r4, r5, lr}
	addeq sp, sp, #0x10
	bxeq lr
	ldr r1, [sp, #0x34]
	ldr r2, [sp, #0x38]
	bl memcpy
	ldr r0, [sp, #0x38]
	str r0, [r5, #0x3c]
_021FD31C:
	cmp r4, #0
	addne ip, r5, #0x28
	ldmneia r4, {r0, r1, r2, r3}
	stmneia ip, {r0, r1, r2, r3}
	add r0, sp, #0
	bl MOD04_021FC07C
	add r1, sp, #0
	add r0, r5, #0x68
	bl MOD04_021FBF44
	add r1, sp, #0
	mov r0, r5
	bl MOD04_021FDCB4
	mov r0, #0
	str r0, [r5, #0xc]
	add sp, sp, #0x24
	ldmia sp!, {r4, r5, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end MOD04_021FD2B8

	arm_func_start MOD04_021FD364
MOD04_021FD364: ; 0x021FD364
	stmdb sp!, {r4, lr}
	mov r4, r1
	bl MOD04_021FF790
	cmp r0, #0
	ldmneia sp!, {r4, pc}
	ldr r0, [r4]
	mov r1, #2
	str r1, [r0, #0xc]
	ldr r1, [r4]
	mov r0, #0
	str r0, [r1, #0x10]
	ldmia sp!, {r4, pc}
	arm_func_end MOD04_021FD364

	arm_func_start MOD04_021FD394
MOD04_021FD394: ; 0x021FD394
	stmdb sp!, {r4, lr}
	mov r4, r1
	bl MOD04_021FF790
	cmp r0, #0
	ldmneia sp!, {r4, pc}
	ldr r1, [r4]
	mov r0, #0
	str r0, [r1, #0xc]
	ldr r1, [r4]
	mov r2, #1
	str r2, [r1, #0x10]
	ldmia sp!, {r4, pc}
	arm_func_end MOD04_021FD394

	arm_func_start MOD04_021FD3C4
MOD04_021FD3C4: ; 0x021FD3C4
	stmdb sp!, {r4, lr}
	movs r4, r0
	bne _021FD3E4
	ldr r0, _021FD3EC ; =UNK04_0220EF98
	ldr r1, _021FD3F0 ; =UNK04_0220EFA4
	ldr r3, _021FD3F4 ; =0x000001A3
	mov r2, #0
	bl __msl_assertion_failed
_021FD3E4:
	ldr r0, [r4, #0x40]
	ldmia sp!, {r4, pc}
	.align 2, 0
_021FD3EC: .word UNK04_0220EF98
_021FD3F0: .word UNK04_0220EFA4
_021FD3F4: .word 0x000001A3
	arm_func_end MOD04_021FD3C4

	arm_func_start MOD04_021FD3F8
MOD04_021FD3F8: ; 0x021FD3F8
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	movs r5, r0
	mov r4, r1
	bne _021FD420
	ldr r0, _021FD42C ; =UNK04_0220EF98
	ldr r1, _021FD430 ; =UNK04_0220EFA4
	mov r2, #0
	mov r3, #0x19c
	bl __msl_assertion_failed
_021FD420:
	str r4, [r5, #0x40]
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_021FD42C: .word UNK04_0220EF98
_021FD430: .word UNK04_0220EFA4
	arm_func_end MOD04_021FD3F8

	arm_func_start MOD04_021FD434
MOD04_021FD434: ; 0x021FD434
	str r1, [r0, #0x30]
	bx lr
	arm_func_end MOD04_021FD434

	arm_func_start MOD04_021FD43C
MOD04_021FD43C: ; 0x021FD43C
	ldr r0, [r0]
	bx lr
	arm_func_end MOD04_021FD43C

	arm_func_start MOD04_021FD444
MOD04_021FD444: ; 0x021FD444
	ldr r1, [r0, #0x54]
	ldr r0, [r0, #0x58]
	sub r0, r1, r0
	bx lr
	arm_func_end MOD04_021FD444

	arm_func_start MOD04_021FD454
MOD04_021FD454: ; 0x021FD454
	ldrh r0, [r0, #8]
	bx lr
	arm_func_end MOD04_021FD454

	arm_func_start MOD04_021FD45C
MOD04_021FD45C: ; 0x021FD45C
	ldr ip, _021FD470 ; =MOD04_021EF2E4
	ldr r0, [r0, #0xc]
	ldr r1, _021FD474 ; =MOD04_021FD478
	mov r2, #0
	bx ip
	.align 2, 0
_021FD470: .word MOD04_021EF2E4
_021FD474: .word MOD04_021FD478
	arm_func_end MOD04_021FD45C

	arm_func_start MOD04_021FD478
MOD04_021FD478: ; 0x021FD478
	ldr ip, _021FD484 ; =MOD04_021FD488
	ldr r0, [r0]
	bx ip
	.align 2, 0
_021FD484: .word MOD04_021FD488
	arm_func_end MOD04_021FD478

	arm_func_start MOD04_021FD488
MOD04_021FD488: ; 0x021FD488
	ldr ip, _021FD494 ; =MOD04_021FCF38
	mov r1, #1
	bx ip
	.align 2, 0
_021FD494: .word MOD04_021FCF38
	arm_func_end MOD04_021FD488

	arm_func_start MOD04_021FD498
MOD04_021FD498: ; 0x021FD498
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	ldr r0, [r5, #0xc]
	mov r4, r3
	cmp r0, #5
	addne sp, sp, #4
	ldmneia sp!, {r4, r5, lr}
	addne sp, sp, #0x10
	bxne lr
	add r0, sp, #0x14
	add r1, sp, #0x18
	bl MOD04_021FFCDC
	ldr r0, [r5, #0x98]
	bl MOD04_021EF06C
	cmp r0, #0
	beq _021FD508
	str r4, [sp]
	ldr r2, [sp, #0x14]
	ldr r3, [sp, #0x18]
	mov r0, r5
	mov r1, #0
	bl MOD04_021FC7D4
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	add sp, sp, #0x10
	bx lr
_021FD508:
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x18]
	mov r0, r5
	mov r3, r4
	bl MOD04_021FD738
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end MOD04_021FD498

	arm_func_start MOD04_021FD52C
MOD04_021FD52C: ; 0x021FD52C
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x10
	mov r6, r0
	mov r5, r1
	mov r0, r2
	add r1, sp, #8
	add r2, sp, #0
	mov r4, r3
	bl MOD04_021FFD28
	cmp r0, #0
	beq _021FD570
	ldr r2, [sp, #8]
	cmp r2, #0
	beq _021FD570
	ldrh r3, [sp]
	cmp r3, #0
	bne _021FD57C
_021FD570:
	add sp, sp, #0x10
	mov r0, #4
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_021FD57C:
	mov r1, r2, lsr #0x18
	mov r0, r2, lsr #8
	mov r7, r2, lsl #8
	and r1, r1, #0xff
	and r0, r0, #0xff00
	mov ip, r2, lsl #0x18
	orr r0, r1, r0
	and r7, r7, #0xff0000
	and r1, ip, #0xff000000
	orr r0, r7, r0
	orr r0, r1, r0
	and r0, r0, #0xe0000000
	cmp r0, #-0x20000000
	addeq sp, sp, #0x10
	moveq r0, #4
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	add r1, sp, #4
	mov r0, r6
	bl MOD04_021FD394
	cmp r0, #0
	addne sp, sp, #0x10
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r1, [sp, #0x2c]
	ldr r0, [sp, #4]
	ldr r2, [sp, #0x28]
	str r1, [r0, #0x20]
	ldr r0, [sp, #4]
	ldr r3, [sp, #0x30]
	mov r1, r4
	bl MOD04_021FD2B8
	movs r4, r0
	beq _021FD610
	ldr r0, [sp, #4]
	bl MOD04_021FF6BC
	add sp, sp, #0x10
	mov r0, r4
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_021FD610:
	ldr r0, [sp, #0x34]
	cmp r0, #0
	bne _021FD634
	cmp r5, #0
	ldrne r0, [sp, #4]
	add sp, sp, #0x10
	strne r0, [r5]
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_021FD634:
	ldr r1, [sp, #4]
	ldr r0, [r1, #0x24]
	add r0, r0, #1
	str r0, [r1, #0x24]
	mov r4, #0
	mov r7, #1
_021FD64C:
	mov r0, r6
	bl MOD04_021FD6D4
	ldr r0, [sp, #4]
	ldr r0, [r0, #0xc]
	cmp r0, #5
	movge r8, r7
	movlt r8, r4
	cmp r8, #0
	bne _021FD678
	mov r0, r7
	bl MOD04_021F0250
_021FD678:
	cmp r8, #0
	beq _021FD64C
	ldr r1, [sp, #4]
	ldr r0, [r1, #0x24]
	sub r0, r0, #1
	str r0, [r1, #0x24]
	ldr r1, [sp, #4]
	ldr r0, [r1, #0xc]
	cmp r0, #5
	streq r1, [r5]
	ldr r0, [sp, #4]
	ldr r0, [r0, #0x18]
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end MOD04_021FD52C

	arm_func_start MOD04_021FD6B0
MOD04_021FD6B0: ; 0x021FD6B0
	ldr ip, _021FD6B8 ; =MOD04_021FD1F4
	bx ip
	.align 2, 0
_021FD6B8: .word MOD04_021FD1F4
	arm_func_end MOD04_021FD6B0

	arm_func_start MOD04_021FD6BC
MOD04_021FD6BC: ; 0x021FD6BC
	ldr ip, _021FD6C4 ; =MOD04_021FD24C
	bx ip
	.align 2, 0
_021FD6C4: .word MOD04_021FD24C
	arm_func_end MOD04_021FD6BC

	arm_func_start MOD04_021FD6C8
MOD04_021FD6C8: ; 0x021FD6C8
	ldr ip, _021FD6D0 ; =MOD04_021FF9C4
	bx ip
	.align 2, 0
_021FD6D0: .word MOD04_021FF9C4
	arm_func_end MOD04_021FD6C8

	arm_func_start MOD04_021FD6D4
MOD04_021FD6D4: ; 0x021FD6D4
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl MOD04_021FDF60
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	mov r0, r4
	bl MOD04_021FF470
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	mov r0, r4
	bl MOD04_021FF42C
	ldmia sp!, {r4, pc}
	arm_func_end MOD04_021FD6D4

	arm_func_start MOD04_021FD704
MOD04_021FD704: ; 0x021FD704
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl MOD04_021FD45C
	mov r0, r4
	bl MOD04_021FF9CC
	ldmia sp!, {r4, pc}
	arm_func_end MOD04_021FD704

	arm_func_start MOD04_021FD71C
MOD04_021FD71C: ; 0x021FD71C
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr ip, [sp, #8]
	str ip, [sp]
	bl MOD04_021FFA10
	add sp, sp, #4
	ldmfd sp!, {pc}
	arm_func_end MOD04_021FD71C

	arm_func_start MOD04_021FD738
MOD04_021FD738: ; 0x021FD738
	stmdb sp!, {lr}
	sub sp, sp, #4
	cmp r3, #0
	beq _021FD754
	bl MOD04_021FDD24
	add sp, sp, #4
	ldmfd sp!, {pc}
_021FD754:
	bl MOD04_021FD94C
	add sp, sp, #4
	ldmfd sp!, {pc}
	arm_func_end MOD04_021FD738

	arm_func_start MOD04_021FD760
MOD04_021FD760: ; 0x021FD760
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r4, r0
	mov r5, r1
	ldr r1, [r5]
	ldrh r2, [r4, #0x66]
	ldr r0, [r4, #0x50]
	add r1, r1, #5
	bl MOD04_021FF3BC
	ldr r3, [r4, #0x50]
	ldr r1, [r5]
	ldr r2, [r5, #4]
	mov r0, r4
	add r1, r3, r1
	bl MOD04_021FD1AC
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r4, r5, pc}
	ldr r0, [r4, #0x88]
	str r0, [r5, #0xc]
	ldr r0, [r5]
	ldr r1, [r4, #0x50]
	add r0, r0, #2
	ldrb r0, [r1, r0]
	cmp r0, #2
	ldreq r0, [r4, #0x88]
	streq r0, [r4, #0x8c]
	mov r0, #1
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	arm_func_end MOD04_021FD760

	arm_func_start MOD04_021FD7DC
MOD04_021FD7DC: ; 0x021FD7DC
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0xc
	ldr r4, _021FD824 ; =UNK04_0220EFB0
	add r3, sp, #4
	ldrb r5, [r4]
	ldrb r4, [r4, #1]
	mov lr, #0x68
	mov ip, #3
	strb r5, [r3]
	strb r4, [r3, #1]
	strb lr, [sp, #6]
	str ip, [sp]
	bl MOD04_021FF50C
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_021FD824: .word UNK04_0220EFB0
	arm_func_end MOD04_021FD7DC

	arm_func_start MOD04_021FD828
MOD04_021FD828: ; 0x021FD828
	ldr ip, _021FD840 ; =MOD04_021FD7DC
	mov r1, r0
	ldrh r2, [r1, #4]
	ldr r0, [r1, #8]
	ldr r1, [r1]
	bx ip
	.align 2, 0
_021FD840: .word MOD04_021FD7DC
	arm_func_end MOD04_021FD828

	arm_func_start MOD04_021FD844
MOD04_021FD844: ; 0x021FD844
	ldr ip, _021FD854 ; =MOD04_021FD1AC
	mov r3, #0x67
	strb r3, [r1, #2]
	bx ip
	.align 2, 0
_021FD854: .word MOD04_021FD1AC
	arm_func_end MOD04_021FD844

	arm_func_start MOD04_021FD858
MOD04_021FD858: ; 0x021FD858
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0xc
	ldr r3, _021FD8E0 ; =UNK04_0220EFB0
	mov r4, r0
	ldrb ip, [r3]
	ldrb r3, [r3, #1]
	add r0, sp, #0
	mov r7, r1
	strb ip, [r0]
	mov r6, r2
	strb r3, [r0, #1]
	mov r3, #0x65
	mov r2, r7
	mov r5, #0
	mov r1, #3
	strb r3, [sp, #2]
	bl MOD04_021FF3BC
	cmp r7, r6
	add r5, r5, #5
	beq _021FD8BC
	add r0, sp, #0
	mov r1, r5
	mov r2, r6
	bl MOD04_021FF3BC
	add r5, r5, #2
_021FD8BC:
	add r1, sp, #0
	mov r0, r4
	mov r2, r5
	bl MOD04_021FD1AC
	cmp r0, #0
	moveq r0, #0
	movne r0, #1
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_021FD8E0: .word UNK04_0220EFB0
	arm_func_end MOD04_021FD858

	arm_func_start MOD04_021FD8E4
MOD04_021FD8E4: ; 0x021FD8E4
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	ldr r1, _021FD948 ; =UNK04_0220EFB0
	mov r4, r0
	ldrb r3, [r1]
	ldrb r2, [r1, #1]
	add r0, sp, #0
	mov r1, #0x64
	strb r3, [r0]
	strb r2, [r0, #1]
	strb r1, [sp, #2]
	ldrh r2, [r4, #0x66]
	mov r1, #3
	bl MOD04_021FF3BC
	add r1, sp, #0
	mov r0, r4
	mov r2, #5
	bl MOD04_021FD1AC
	cmp r0, #0
	moveq r0, #0
	movne r0, #0
	strne r0, [r4, #0x90]
	movne r0, #1
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	.align 2, 0
_021FD948: .word UNK04_0220EFB0
	arm_func_end MOD04_021FD8E4

	arm_func_start MOD04_021FD94C
MOD04_021FD94C: ; 0x021FD94C
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r6, r2
	mov r8, r0
	mov r7, r1
	cmp r6, #2
	blt _021FD97C
	ldr r1, _021FDA14 ; =UNK04_0220EFB0
	mov r0, r7
	mov r2, #2
	bl memcmp
	cmp r0, #0
	beq _021FD99C
_021FD97C:
	mov r0, r8
	mov r1, r7
	mov r2, r6
	bl MOD04_021FD1AC
	cmp r0, #0
	moveq r0, #0
	movne r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_021FD99C:
	add r5, r6, #2
	add r0, r8, #0x50
	bl MOD04_021FC45C
	cmp r0, r5
	movlt r0, #1
	ldmltia sp!, {r4, r5, r6, r7, r8, pc}
	ldr ip, [r8, #0x50]
	ldr r3, [r8, #0x58]
	ldr r1, _021FDA14 ; =UNK04_0220EFB0
	add r0, r8, #0x50
	mov r2, #2
	add r4, ip, r3
	bl MOD04_021FC304
	mov r1, r7
	mov r2, r6
	add r0, r8, #0x50
	bl MOD04_021FC304
	mov r0, r8
	mov r1, r4
	mov r2, r5
	bl MOD04_021FD1AC
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	mov r2, r5
	add r0, r8, #0x50
	mvn r1, #0
	bl MOD04_021FC268
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_021FDA14: .word UNK04_0220EFB0
	arm_func_end MOD04_021FD94C

	arm_func_start MOD04_021FDA18
MOD04_021FDA18: ; 0x021FDA18
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	mov r1, #7
	add r3, sp, #0
	mov r2, r1
	mov r4, r0
	bl MOD04_021FDE18
	cmp r0, #0
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r0, [sp]
	cmp r0, #0
	addne sp, sp, #8
	movne r0, #1
	ldmneia sp!, {r4, pc}
	mov r0, r4
	bl MOD04_021FDD98
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	arm_func_end MOD04_021FDA18

	arm_func_start MOD04_021FDA74
MOD04_021FDA74: ; 0x021FDA74
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	add r3, sp, #0
	mov r1, #6
	mov r2, #7
	mov r4, r0
	bl MOD04_021FDE18
	cmp r0, #0
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r0, [sp]
	cmp r0, #0
	addne sp, sp, #8
	movne r0, #1
	ldmneia sp!, {r4, pc}
	mov r0, r4
	bl MOD04_021FDD98
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	arm_func_end MOD04_021FDA74

	arm_func_start MOD04_021FDAD0
MOD04_021FDAD0: ; 0x021FDAD0
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	mov r4, r2
	mov r5, r1
	add r3, sp, #0
	add r2, r4, #7
	mov r1, #5
	mov r6, r0
	bl MOD04_021FDE18
	cmp r0, #0
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, [sp]
	cmp r0, #0
	addne sp, sp, #8
	movne r0, #1
	ldmneia sp!, {r4, r5, r6, pc}
	mov r1, r5
	mov r2, r4
	add r0, r6, #0x50
	bl MOD04_021FC304
	mov r0, r6
	bl MOD04_021FDD98
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end MOD04_021FDAD0

	arm_func_start MOD04_021FDB44
MOD04_021FDB44: ; 0x021FDB44
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	add r3, sp, #0
	mov r1, #4
	mov r2, #7
	mov r4, r0
	bl MOD04_021FDE18
	cmp r0, #0
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r0, [sp]
	cmp r0, #0
	addne sp, sp, #8
	movne r0, #1
	ldmneia sp!, {r4, pc}
	mov r0, r4
	bl MOD04_021FDD98
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	arm_func_end MOD04_021FDB44

	arm_func_start MOD04_021FDBA0
MOD04_021FDBA0: ; 0x021FDBA0
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	mov r4, r3
	mov r6, r1
	mov r5, r2
	add r3, sp, #0
	add r2, r4, #0x27
	mov r1, #3
	mov r7, r0
	bl MOD04_021FDE18
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	ldr r0, [sp]
	cmp r0, #0
	addne sp, sp, #4
	movne r0, #1
	ldmneia sp!, {r4, r5, r6, r7, pc}
	mov r1, r6
	add r0, r7, #0x50
	mov r2, #0x20
	bl MOD04_021FC304
	mov r1, r5
	mov r2, r4
	add r0, r7, #0x50
	bl MOD04_021FC304
	mov r0, r7
	bl MOD04_021FDD98
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, pc}
	arm_func_end MOD04_021FDBA0

	arm_func_start MOD04_021FDC28
MOD04_021FDC28: ; 0x021FDC28
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	mov r5, r1
	mov r4, r2
	add r3, sp, #0
	mov r1, #2
	mov r2, #0x47
	mov r6, r0
	bl MOD04_021FDE18
	cmp r0, #0
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, [sp]
	cmp r0, #0
	addne sp, sp, #8
	movne r0, #1
	ldmneia sp!, {r4, r5, r6, pc}
	mov r1, r5
	add r0, r6, #0x50
	mov r2, #0x20
	bl MOD04_021FC304
	mov r1, r4
	add r0, r6, #0x50
	mov r2, #0x20
	bl MOD04_021FC304
	mov r0, r6
	bl MOD04_021FDD98
	cmp r0, #0
	ldrne r1, [r6, #0x88]
	moveq r0, #0
	movne r0, #1
	strne r1, [r6, #0x8c]
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end MOD04_021FDC28

	arm_func_start MOD04_021FDCB4
MOD04_021FDCB4: ; 0x021FDCB4
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r4, r1
	add r3, sp, #0
	mov r1, #1
	mov r2, #0x27
	mov r5, r0
	bl MOD04_021FDE18
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r4, r5, pc}
	ldr r0, [sp]
	cmp r0, #0
	addne sp, sp, #4
	movne r0, #1
	ldmneia sp!, {r4, r5, pc}
	mov r1, r4
	add r0, r5, #0x50
	mov r2, #0x20
	bl MOD04_021FC304
	mov r0, r5
	bl MOD04_021FDD98
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	arm_func_end MOD04_021FDCB4

	arm_func_start MOD04_021FDD24
MOD04_021FDD24: ; 0x021FDD24
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	mov r4, r2
	mov r5, r1
	add r3, sp, #0
	add r2, r4, #7
	mov r1, #0
	mov r6, r0
	bl MOD04_021FDE18
	cmp r0, #0
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, [sp]
	cmp r0, #0
	addne sp, sp, #8
	movne r0, #1
	ldmneia sp!, {r4, r5, r6, pc}
	mov r1, r5
	mov r2, r4
	add r0, r6, #0x50
	bl MOD04_021FC304
	mov r0, r6
	bl MOD04_021FDD98
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end MOD04_021FDD24

	arm_func_start MOD04_021FDD98
MOD04_021FDD98: ; 0x021FDD98
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	ldr r0, [r5, #0x60]
	bl MOD04_021EF06C
	mov r4, r0
	cmp r4, #0
	bgt _021FDDCC
	ldr r0, _021FDE0C ; =UNK04_0220EFBC
	ldr r1, _021FDE10 ; =UNK04_0220EFC4
	ldr r3, _021FDE14 ; =0x00000475
	mov r2, #0
	bl __msl_assertion_failed
_021FDDCC:
	ldr r0, [r5, #0x60]
	sub r1, r4, #1
	bl MOD04_021EEFFC
	ldr r3, [r5, #0x50]
	ldr r1, [r0]
	ldr r2, [r0, #4]
	mov r0, r5
	add r1, r3, r1
	bl MOD04_021FD1AC
	cmp r0, #0
	moveq r0, #0
	movne r0, #0
	strne r0, [r5, #0x90]
	movne r0, #1
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_021FDE0C: .word UNK04_0220EFBC
_021FDE10: .word UNK04_0220EFC4
_021FDE14: .word 0x00000475
	arm_func_end MOD04_021FDD98

	arm_func_start MOD04_021FDE18
MOD04_021FDE18: ; 0x021FDE18
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	mov r7, r0
	mov r5, r2
	add r0, r7, #0x50
	mov r6, r1
	mov r4, r3
	bl MOD04_021FC45C
	cmp r0, r5
	bge _021FDE60
	mov r0, r7
	bl MOD04_021FF2D8
	cmp r0, #0
	moveq r0, #0
	movne r0, #1
	add sp, sp, #4
	strne r0, [r4]
	ldmia sp!, {r4, r5, r6, r7, pc}
_021FDE60:
	ldrh r1, [r7, #0x64]
	mov r0, r7
	mov r2, r5
	bl MOD04_021FDEEC
	cmp r0, #0
	bne _021FDE98
	mov r0, r7
	bl MOD04_021FF2D8
	cmp r0, #0
	moveq r0, #0
	movne r0, #1
	add sp, sp, #4
	strne r0, [r4]
	ldmia sp!, {r4, r5, r6, r7, pc}
_021FDE98:
	ldr r1, _021FDEE8 ; =UNK04_0220EFB0
	add r0, r7, #0x50
	mov r2, #2
	bl MOD04_021FC304
	add r0, r7, #0x50
	and r1, r6, #0xff
	bl MOD04_021FC404
	ldrh r1, [r7, #0x64]
	add r0, r7, #0x50
	add r2, r1, #1
	strh r2, [r7, #0x64]
	bl MOD04_021FC390
	ldrh r1, [r7, #0x66]
	add r0, r7, #0x50
	bl MOD04_021FC390
	mov r0, #0
	str r0, [r4]
	mov r0, #1
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_021FDEE8: .word UNK04_0220EFB0
	arm_func_end MOD04_021FDE18

	arm_func_start MOD04_021FDEEC
MOD04_021FDEEC: ; 0x021FDEEC
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0x14
	add r4, sp, #0
	mov r3, #0
	str r3, [r4]
	str r3, [r4, #4]
	str r3, [r4, #8]
	mov r5, r0
	str r3, [r4, #0xc]
	ldr r0, [r5, #0x58]
	str r0, [sp]
	str r2, [sp, #4]
	strh r1, [sp, #8]
	bl MOD04_021F025C
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x60]
	bl MOD04_021EF06C
	mov r4, r0
	ldr r0, [r5, #0x60]
	add r1, sp, #0
	bl MOD04_021EEFA8
	ldr r0, [r5, #0x60]
	bl MOD04_021EF06C
	add r1, r4, #1
	cmp r1, r0
	moveq r0, #1
	movne r0, #0
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, pc}
	arm_func_end MOD04_021FDEEC

	arm_func_start MOD04_021FDF60
MOD04_021FDF60: ; 0x021FDF60
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	ldr ip, _021FE0AC ; =0x000005F4
	sub sp, sp, ip
	mov sl, r0
	ldr r0, [sl]
	bl MOD04_021EFF2C
	cmp r0, #0
	beq _021FE09C
	ldr fp, _021FE0B0 ; =0x000005DC
	add r6, sp, #0x14
	add r8, sp, #8
	add r7, sp, #0x10
	mov sb, #8
	mov r5, #0
	mvn r4, #0xe
_021FDF9C:
	str sb, [sp, #0x10]
	str r8, [sp]
	str r7, [sp, #4]
	ldr r0, [sl]
	mov r1, r6
	mov r2, fp
	mov r3, r5
	bl MOD04_021EFC40
	mov r2, r0
	mvn r0, #0
	cmp r2, r0
	bne _021FE044
	ldr r0, [sl]
	bl MOD04_021EFB28
	cmp r0, r4
	bne _021FE020
	ldrh r2, [sp, #0xa]
	ldr r1, [sp, #0xc]
	mov r0, sl
	mov r3, r2, asr #8
	mov r2, r2, lsl #8
	and r3, r3, #0xff
	and r2, r2, #0xff00
	orr r2, r3, r2
	mov r2, r2, lsl #0x10
	mov r2, r2, lsr #0x10
	bl MOD04_021FE0B4
	cmp r0, #0
	bne _021FE08C
	ldr ip, _021FE0AC ; =0x000005F4
	mov r0, #0
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021FE020:
	mvn r1, #0x22
	cmp r0, r1
	beq _021FE08C
	mov r0, sl
	bl MOD04_021FF3F0
	ldr ip, _021FE0AC ; =0x000005F4
	mov r0, #0
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021FE044:
	ldrh ip, [sp, #0xa]
	mov r0, sl
	mov r1, r6
	mov r3, ip, asr #8
	mov ip, ip, lsl #8
	and r3, r3, #0xff
	and ip, ip, #0xff00
	orr r3, r3, ip
	mov r3, r3, lsl #0x10
	mov r3, r3, lsr #0x10
	str r3, [sp]
	ldr r3, [sp, #0xc]
	bl MOD04_021FE1B4
	cmp r0, #0
	ldreq ip, _021FE0AC ; =0x000005F4
	moveq r0, #0
	addeq sp, sp, ip
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021FE08C:
	ldr r0, [sl]
	bl MOD04_021EFF2C
	cmp r0, #0
	bne _021FDF9C
_021FE09C:
	mov r0, #1
	ldr ip, _021FE0AC ; =0x000005F4
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_021FE0AC: .word 0x000005F4
_021FE0B0: .word 0x000005DC
	arm_func_end MOD04_021FDF60

	arm_func_start MOD04_021FE0B4
MOD04_021FE0B4: ; 0x021FE0B4
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x14
	mov r7, r0
	mov r6, r1
	mov r5, r2
	bl MOD04_021FFC3C
	ldr r1, [r7, #0x2c]
	mov r4, r0
	cmp r1, #0
	beq _021FE118
	mov r0, #1
	str r0, [sp]
	mov ip, #0
	str ip, [sp, #4]
	str ip, [sp, #8]
	mov r0, r7
	mov r1, r4
	mov r2, r6
	mov r3, r5
	str ip, [sp, #0xc]
	bl MOD04_021FC59C
	cmp r0, #0
	addeq sp, sp, #0x14
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, pc}
_021FE118:
	cmp r4, #0
	addeq sp, sp, #0x14
	moveq r0, #1
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bne _021FE188
	ldr r0, [r4, #0x20]
	cmp r0, #0
	beq _021FE158
	bl MOD04_021F025C
	ldr r2, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	sub r0, r0, r2
	cmp r0, r1
	bhs _021FE164
_021FE158:
	add sp, sp, #0x14
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, pc}
_021FE164:
	mov r0, r4
	mov r1, #6
	mov r2, #1
	bl MOD04_021FF318
	cmp r0, #0
	bne _021FE1A8
	add sp, sp, #0x14
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, pc}
_021FE188:
	mov r0, r4
	mov r1, #2
	mov r2, #1
	bl MOD04_021FF318
	cmp r0, #0
	addeq sp, sp, #0x14
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, pc}
_021FE1A8:
	mov r0, #1
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, pc}
	arm_func_end MOD04_021FE0B4

	arm_func_start MOD04_021FE1B4
MOD04_021FE1B4: ; 0x021FE1B4
	stmdb sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x1c
	ldr r5, [sp, #0x38]
	mov r6, r3
	mov r8, r1
	mov r7, r2
	mov r1, r6
	mov r2, r5
	mov sb, r0
	bl MOD04_021FFC3C
	str r0, [sp, #0x10]
	ldr r0, [sb, #0x2c]
	cmp r0, #0
	beq _021FE224
	mov r0, #0
	str r0, [sp]
	str r8, [sp, #4]
	str r7, [sp, #8]
	str r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	mov r0, sb
	mov r2, r6
	mov r3, r5
	bl MOD04_021FC59C
	cmp r0, #0
	addeq sp, sp, #0x1c
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, pc}
_021FE224:
	cmp r7, #2
	ble _021FE248
	ldr r1, _021FE470 ; =UNK04_0220EFB0
	mov r0, r8
	mov r2, #2
	bl memcmp
	cmp r0, #0
	moveq r4, #1
	beq _021FE24C
_021FE248:
	mov r4, #0
_021FE24C:
	ldr r0, [sp, #0x10]
	cmp r0, #0
	bne _021FE354
	add ip, sp, #0x14
	str r7, [sp]
	mov r0, sb
	mov r1, r6
	mov r2, r5
	mov r3, r8
	str ip, [sp, #4]
	bl MOD04_021FC4A4
	cmp r0, #0
	addeq sp, sp, #0x1c
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, pc}
	ldr r0, [sp, #0x14]
	cmp r0, #0
	addne sp, sp, #0x1c
	movne r0, #1
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, pc}
	cmp r4, #0
	beq _021FE2B0
	ldrb r0, [r8, #2]
	cmp r0, #1
	beq _021FE2F0
_021FE2B0:
	cmp r4, #0
	beq _021FE2C4
	ldrb r0, [r8, #2]
	cmp r0, #0x68
	beq _021FE2E4
_021FE2C4:
	mov r0, sb
	mov r1, r6
	mov r2, r5
	bl MOD04_021FD7DC
	cmp r0, #0
	addeq sp, sp, #0x1c
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, pc}
_021FE2E4:
	add sp, sp, #0x1c
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
_021FE2F0:
	ldr r0, [sb, #0x20]
	cmp r0, #0
	addeq sp, sp, #0x1c
	moveq r0, #1
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, pc}
	add r1, sp, #0x10
	mov r0, sb
	mov r2, r6
	mov r3, r5
	bl MOD04_021FD364
	cmp r0, #0
	beq _021FE354
	cmp r0, #5
	beq _021FE348
	mov r0, sb
	mov r1, r6
	mov r2, r5
	bl MOD04_021FD7DC
	cmp r0, #0
	addeq sp, sp, #0x1c
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, pc}
_021FE348:
	add sp, sp, #0x1c
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
_021FE354:
	ldr r5, [sp, #0x10]
	ldr r0, [r5, #0xc]
	cmp r0, #7
	bne _021FE39C
	cmp r4, #0
	beq _021FE378
	ldrb r0, [r8, #2]
	cmp r0, #0x68
	beq _021FE390
_021FE378:
	mov r0, r5
	bl MOD04_021FD828
	cmp r0, #0
	addeq sp, sp, #0x1c
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, pc}
_021FE390:
	add sp, sp, #0x1c
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
_021FE39C:
	cmp r4, #0
	beq _021FE3CC
	cmp r7, #4
	blt _021FE3CC
	ldr r1, _021FE470 ; =UNK04_0220EFB0
	add r0, r8, #2
	mov r2, #2
	bl memcmp
	cmp r0, #0
	addeq r8, r8, #2
	subeq r7, r7, #2
	moveq r4, #0
_021FE3CC:
	cmp r4, #0
	bne _021FE3F8
	mov r0, r5
	mov r1, r8
	mov r2, r7
	bl MOD04_021FF134
	cmp r0, #0
	movne r0, #1
	add sp, sp, #0x1c
	moveq r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
_021FE3F8:
	ldrb r1, [r8, #2]
	cmp r1, #0
	bge _021FE420
	mov r0, r5
	bl MOD04_021FF304
	cmp r0, #0
	movne r0, #1
	add sp, sp, #0x1c
	moveq r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
_021FE420:
	cmp r1, #8
	bge _021FE44C
	mov r0, r5
	mov r2, r8
	mov r3, r7
	bl MOD04_021FE780
	cmp r0, #0
	movne r0, #1
	add sp, sp, #0x1c
	moveq r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
_021FE44C:
	mov r0, r5
	mov r2, r8
	mov r3, r7
	bl MOD04_021FE474
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_021FE470: .word UNK04_0220EFB0
	arm_func_end MOD04_021FE1B4

	arm_func_start MOD04_021FE474
MOD04_021FE474: ; 0x021FE474
	stmdb sp!, {lr}
	sub sp, sp, #4
	cmp r1, #0x64
	add lr, r2, #3
	sub ip, r3, #3
	bne _021FE4AC
	mov r1, lr
	mov r2, ip
	bl MOD04_021FE734
	cmp r0, #0
	bne _021FE540
	add sp, sp, #4
	mov r0, #0
	ldmfd sp!, {pc}
_021FE4AC:
	cmp r1, #0x65
	bne _021FE4D4
	mov r1, lr
	mov r2, ip
	bl MOD04_021FE648
	cmp r0, #0
	bne _021FE540
	add sp, sp, #4
	mov r0, #0
	ldmfd sp!, {pc}
_021FE4D4:
	cmp r1, #0x66
	bne _021FE4FC
	mov r1, r2
	mov r2, r3
	bl MOD04_021FE63C
	cmp r0, #0
	bne _021FE540
	add sp, sp, #4
	mov r0, #0
	ldmfd sp!, {pc}
_021FE4FC:
	cmp r1, #0x67
	bne _021FE524
	mov r1, lr
	mov r2, ip
	bl MOD04_021FE590
	cmp r0, #0
	bne _021FE540
	add sp, sp, #4
	mov r0, #0
	ldmfd sp!, {pc}
_021FE524:
	cmp r1, #0x68
	bne _021FE540
	bl MOD04_021FE54C
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {pc}
_021FE540:
	mov r0, #1
	add sp, sp, #4
	ldmfd sp!, {pc}
	arm_func_end MOD04_021FE474

	arm_func_start MOD04_021FE54C
MOD04_021FE54C: ; 0x021FE54C
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r1, [r0, #0xc]
	cmp r1, #7
	addeq sp, sp, #4
	moveq r0, #1
	ldmeqia sp!, {pc}
	cmp r1, #6
	moveq r2, #0
	movne r2, #1
	mov r1, #2
	bl MOD04_021FF318
	cmp r0, #0
	moveq r0, #0
	movne r0, #1
	add sp, sp, #4
	ldmfd sp!, {pc}
	arm_func_end MOD04_021FE54C

	arm_func_start MOD04_021FE590
MOD04_021FE590: ; 0x021FE590
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r4, r0
	ldr r0, [r4, #0x34]
	mov r5, r1
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #1
	ldmeqia sp!, {r4, r5, pc}
	cmp r2, #8
	addne sp, sp, #4
	movne r0, #1
	ldmneia sp!, {r4, r5, pc}
	ldr r1, _021FE638 ; =UNK04_0220EFB4
	mov r0, r5
	mov r2, #4
	bl memcmp
	cmp r0, #0
	addne sp, sp, #4
	movne r0, #1
	ldmneia sp!, {r4, r5, pc}
	add r2, r5, #4
	ldrb r1, [r5, #4]
	ldrb r0, [r2, #1]
	add r3, sp, #0
	strb r1, [r3]
	strb r0, [r3, #1]
	ldrb r1, [r2, #2]
	ldrb r0, [r2, #3]
	strb r1, [r3, #2]
	strb r0, [r3, #3]
	bl MOD04_021F025C
	mov r2, r0
	ldr r1, [sp]
	mov r0, r4
	sub r1, r2, r1
	bl MOD04_021FC8E4
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_021FE638: .word UNK04_0220EFB4
	arm_func_end MOD04_021FE590

	arm_func_start MOD04_021FE63C
MOD04_021FE63C: ; 0x021FE63C
	ldr ip, _021FE644 ; =MOD04_021FD844
	bx ip
	.align 2, 0
_021FE644: .word MOD04_021FD844
	arm_func_end MOD04_021FE63C

	arm_func_start MOD04_021FE648
MOD04_021FE648: ; 0x021FE648
	stmdb sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #4
	mov r6, r1
	mov r4, r0
	mov r0, r6
	mov r1, #0
	mov r5, r2
	bl MOD04_021FF3D0
	mov sb, r0
	cmp r5, #2
	moveq r8, sb
	beq _021FE6B0
	cmp r5, #4
	bne _021FE694
	mov r0, r6
	mov r1, #2
	bl MOD04_021FF3D0
	mov r8, r0
	b _021FE6B0
_021FE694:
	mov r0, r4
	bl MOD04_021FF304
	cmp r0, #0
	movne r0, #1
	add sp, sp, #4
	moveq r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
_021FE6B0:
	ldr r0, [r4, #0x60]
	bl MOD04_021EF06C
	mov r7, r0
	cmp r7, #0
	mov r6, #0
	ble _021FE728
_021FE6C8:
	ldr r0, [r4, #0x60]
	mov r1, r6
	bl MOD04_021EEFFC
	mov r5, r0
	ldrh r0, [r5, #8]
	mov r1, sb
	bl MOD04_021FF3AC
	cmp r0, #0
	blt _021FE71C
	ldrh r0, [r5, #8]
	mov r1, r8
	bl MOD04_021FF3AC
	cmp r0, #0
	bgt _021FE71C
	mov r0, r4
	mov r1, r5
	bl MOD04_021FD760
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, pc}
_021FE71C:
	add r6, r6, #1
	cmp r6, r7
	blt _021FE6C8
_021FE728:
	mov r0, #1
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
	arm_func_end MOD04_021FE648

	arm_func_start MOD04_021FE734
MOD04_021FE734: ; 0x021FE734
	stmdb sp!, {r4, lr}
	mov r4, r0
	cmp r2, #2
	beq _021FE758
	bl MOD04_021FF304
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r4, pc}
_021FE758:
	mov r0, r1
	mov r1, #0
	bl MOD04_021FF3D0
	mov r1, r0
	mov r0, r4
	bl MOD04_021FF1C8
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r4, pc}
	arm_func_end MOD04_021FE734

	arm_func_start MOD04_021FE780
MOD04_021FE780: ; 0x021FE780
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x10
	mov r6, r3
	mov r4, r0
	mov r8, r1
	mov r7, r2
	cmp r6, #7
	bge _021FE7B8
	bl MOD04_021FF304
	cmp r0, #0
	movne r0, #1
	add sp, sp, #0x10
	moveq r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_021FE7B8:
	mov r0, r7
	mov r1, #3
	bl MOD04_021FF3D0
	mov r5, r0
	mov r0, r7
	mov r1, #5
	bl MOD04_021FF3D0
	mov r1, r0
	mov r0, r4
	bl MOD04_021FF1C8
	cmp r0, #0
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	ldrh r1, [r4, #0x66]
	cmp r5, r1
	bne _021FE844
	mov r0, r4
	bl MOD04_021FE8CC
	mov r0, r4
	mov r1, r8
	add r2, r7, #7
	sub r3, r6, #7
	bl MOD04_021FEBD0
	cmp r0, #0
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r4
	bl MOD04_021FE8F4
	cmp r0, #0
	movne r0, #1
	add sp, sp, #0x10
	moveq r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_021FE844:
	mov r0, r5
	bl MOD04_021FF3AC
	cmp r0, #0
	bge _021FE868
	mov r0, r4
	bl MOD04_021FE8CC
	add sp, sp, #0x10
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_021FE868:
	sub r0, r6, #7
	str r0, [sp]
	add ip, sp, #8
	mov r0, r4
	mov r1, r8
	mov r2, r5
	add r3, r7, #7
	str ip, [sp, #4]
	bl MOD04_021FEA0C
	cmp r0, #0
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _021FE8C0
	mov r0, r4
	bl MOD04_021FF2D8
	cmp r0, #0
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
_021FE8C0:
	mov r0, #1
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end MOD04_021FE780

	arm_func_start MOD04_021FE8CC
MOD04_021FE8CC: ; 0x021FE8CC
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x90]
	cmp r0, #0
	ldmneia sp!, {r4, pc}
	mov r0, #1
	str r0, [r4, #0x90]
	bl MOD04_021F025C
	str r0, [r4, #0x94]
	ldmia sp!, {r4, pc}
	arm_func_end MOD04_021FE8CC

	arm_func_start MOD04_021FE8F4
MOD04_021FE8F4: ; 0x021FE8F4
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
_021FE8FC:
	ldr r0, [r6, #0x5c]
	bl MOD04_021EF06C
	subs r5, r0, #1
	bmi _021FE970
_021FE90C:
	ldr r0, [r6, #0x5c]
	mov r1, r5
	bl MOD04_021EEFFC
	mov r4, r0
	ldrh r1, [r4, #0xc]
	ldrh r0, [r6, #0x66]
	cmp r1, r0
	bne _021FE968
	ldr ip, [r6, #0x44]
	ldr r2, [r4]
	ldr r1, [r4, #8]
	ldr r3, [r4, #4]
	mov r0, r6
	add r2, ip, r2
	bl MOD04_021FEBD0
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl MOD04_021FE978
	b _021FE8FC
_021FE968:
	subs r5, r5, #1
	bpl _021FE90C
_021FE970:
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end MOD04_021FE8F4

	arm_func_start MOD04_021FE978
MOD04_021FE978: ; 0x021FE978
	stmdb sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #4
	mov sb, r0
	ldr r0, [sb, #0x5c]
	ldr r7, [r1]
	ldr r6, [r1, #4]
	mov r1, r2
	mov r8, #0
	bl MOD04_021EED84
	ldr r0, [sb, #0x5c]
	bl MOD04_021EF06C
	mov r5, r0
	cmp r5, #0
	mov r4, r8
	ble _021FE9F4
_021FE9B4:
	ldr r0, [sb, #0x5c]
	mov r1, r4
	bl MOD04_021EEFFC
	ldr r1, [r0]
	cmp r1, r7
	ble _021FE9E8
	sub r1, r1, r6
	str r1, [r0]
	ldr r1, [r0]
	ldr r0, [r0, #4]
	add r0, r1, r0
	cmp r8, r0
	movle r8, r0
_021FE9E8:
	add r4, r4, #1
	cmp r4, r5
	blt _021FE9B4
_021FE9F4:
	mov r1, r7
	mov r2, r6
	add r0, sb, #0x44
	bl MOD04_021FC268
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
	arm_func_end MOD04_021FE978

	arm_func_start MOD04_021FEA0C
MOD04_021FEA0C: ; 0x021FEA0C
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #0x10
	mov sb, r0
	ldr r0, [sb, #0x5c]
	mov r8, r1
	mov r7, r2
	mov r6, r3
	ldr r5, [sp, #0x34]
	bl MOD04_021EF06C
	mov r4, r0
	cmp r4, #0
	mov sl, #0
	ble _021FEA84
_021FEA40:
	ldr r0, [sb, #0x5c]
	mov r1, sl
	bl MOD04_021EEFFC
	ldrh r0, [r0, #0xc]
	cmp r0, r7
	moveq r0, #0
	streq r0, [r5]
	addeq sp, sp, #0x10
	moveq r0, #1
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	mov r1, r7
	bl MOD04_021FF3AC
	cmp r0, #0
	bgt _021FEA84
	add sl, sl, #1
	cmp sl, r4
	blt _021FEA40
_021FEA84:
	add r0, sb, #0x44
	bl MOD04_021FC45C
	ldr r2, [sp, #0x30]
	cmp r0, r2
	movlt r0, #1
	addlt sp, sp, #0x10
	strlt r0, [r5]
	ldmltia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	ldr r0, [sb, #0x4c]
	add r1, sp, #0
	str r2, [sp, #4]
	str r8, [sp, #8]
	strh r7, [sp, #0xc]
	str r0, [sp]
	ldr r0, [sb, #0x5c]
	ldr r2, _021FEBB8 ; =MOD04_021FEBBC
	bl MOD04_021EEE74
	ldr r0, [sb, #0x5c]
	bl MOD04_021EF06C
	add r1, r4, #1
	cmp r1, r0
	movne r0, #1
	addne sp, sp, #0x10
	strne r0, [r5]
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	ldr r2, [sp, #0x30]
	mov r1, r6
	add r0, sb, #0x44
	bl MOD04_021FC304
	cmp r4, #0
	bne _021FEB2C
	sub r0, r7, #1
	mov r2, r0, lsl #0x10
	ldrh r1, [sb, #0x66]
	mov r0, sb
	mov r2, r2, lsr #0x10
	bl MOD04_021FD858
	cmp r0, #0
	bne _021FEBA4
	add sp, sp, #0x10
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_021FEB2C:
	ldr r0, [sb, #0x5c]
	mov r1, r4
	bl MOD04_021EEFFC
	ldrh r0, [r0, #0xc]
	cmp r0, r7
	bne _021FEBA4
	ldr r0, [sb, #0x5c]
	sub r1, r4, #1
	bl MOD04_021EEFFC
	mov r4, r0
	ldrh r1, [r4, #0xc]
	mov r0, r7
	bl MOD04_021FF3AC
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	cmp r0, #1
	bls _021FEBA4
	ldrh r1, [r4, #0xc]
	sub r0, r7, #1
	mov r2, r0, lsl #0x10
	add r0, r1, #1
	mov r1, r0, lsl #0x10
	mov r0, sb
	mov r1, r1, lsr #0x10
	mov r2, r2, lsr #0x10
	bl MOD04_021FD858
	cmp r0, #0
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_021FEBA4:
	mov r0, #0
	str r0, [r5]
	mov r0, #1
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_021FEBB8: .word MOD04_021FEBBC
	arm_func_end MOD04_021FEA0C

	arm_func_start MOD04_021FEBBC
MOD04_021FEBBC: ; 0x021FEBBC
	ldr ip, _021FEBCC ; =MOD04_021FF3AC
	ldrh r0, [r0, #0xc]
	ldrh r1, [r1, #0xc]
	bx ip
	.align 2, 0
_021FEBCC: .word MOD04_021FF3AC
	arm_func_end MOD04_021FEBBC

	arm_func_start MOD04_021FEBD0
MOD04_021FEBD0: ; 0x021FEBD0
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldrh ip, [r0, #0x66]
	cmp r1, #0
	add ip, ip, #1
	strh ip, [r0, #0x66]
	bne _021FEC0C
	mov r1, r2
	mov r2, r3
	bl MOD04_021FF084
	cmp r0, #0
	bne _021FECE8
	add sp, sp, #4
	mov r0, #0
	ldmfd sp!, {pc}
_021FEC0C:
	cmp r1, #1
	bne _021FEC34
	mov r1, r2
	mov r2, r3
	bl MOD04_021FEFEC
	cmp r0, #0
	bne _021FECE8
	add sp, sp, #4
	mov r0, #0
	ldmfd sp!, {pc}
_021FEC34:
	cmp r1, #2
	bne _021FEC5C
	mov r1, r2
	mov r2, r3
	bl MOD04_021FEF10
	cmp r0, #0
	bne _021FECE8
	add sp, sp, #4
	mov r0, #0
	ldmfd sp!, {pc}
_021FEC5C:
	cmp r1, #3
	bne _021FEC84
	mov r1, r2
	mov r2, r3
	bl MOD04_021FEDFC
	cmp r0, #0
	bne _021FECE8
	add sp, sp, #4
	mov r0, #0
	ldmfd sp!, {pc}
_021FEC84:
	cmp r1, #4
	bne _021FECA4
	bl MOD04_021FEDA4
	cmp r0, #0
	bne _021FECE8
	add sp, sp, #4
	mov r0, #0
	ldmfd sp!, {pc}
_021FECA4:
	cmp r1, #5
	bne _021FECCC
	mov r1, r2
	mov r2, r3
	bl MOD04_021FED38
	cmp r0, #0
	bne _021FECE8
	add sp, sp, #4
	mov r0, #0
	ldmfd sp!, {pc}
_021FECCC:
	cmp r1, #6
	bne _021FECE8
	bl MOD04_021FECF4
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {pc}
_021FECE8:
	mov r0, #1
	add sp, sp, #4
	ldmfd sp!, {pc}
	arm_func_end MOD04_021FEBD0

	arm_func_start MOD04_021FECF4
MOD04_021FECF4: ; 0x021FECF4
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl MOD04_021FD828
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r0, [r4, #0xc]
	mov r1, #2
	cmp r0, #6
	moveq r2, #0
	movne r2, #1
	mov r0, r4
	bl MOD04_021FF318
	cmp r0, #0
	moveq r0, #0
	movne r0, #1
	ldmia sp!, {r4, pc}
	arm_func_end MOD04_021FECF4

	arm_func_start MOD04_021FED38
MOD04_021FED38: ; 0x021FED38
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r3, [r6, #0xc]
	mov r5, r1
	mov r4, r2
	cmp r3, #1
	beq _021FED68
	bl MOD04_021FF304
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r4, r5, r6, pc}
_021FED68:
	bl MOD04_021FCED0
	mov r0, r6
	bl MOD04_021FD828
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r0, r6
	mov r2, r5
	mov r3, r4
	mov r1, #2
	bl MOD04_021FCB88
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end MOD04_021FED38

	arm_func_start MOD04_021FEDA4
MOD04_021FEDA4: ; 0x021FEDA4
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r1, [r0, #0xc]
	cmp r1, #1
	beq _021FEDD0
	bl MOD04_021FF304
	cmp r0, #0
	movne r0, #1
	add sp, sp, #4
	moveq r0, #0
	ldmfd sp!, {pc}
_021FEDD0:
	mov r1, #0
	mov ip, #5
	mov r2, r1
	mov r3, r1
	str ip, [r0, #0xc]
	bl MOD04_021FCB88
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #4
	ldmfd sp!, {pc}
	arm_func_end MOD04_021FEDA4

	arm_func_start MOD04_021FEDFC
MOD04_021FEDFC: ; 0x021FEDFC
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x10
	mov r6, r0
	ldr r3, [r6, #0xc]
	mov r5, r1
	mov r4, r2
	cmp r3, #3
	beq _021FEE34
	bl MOD04_021FF304
	cmp r0, #0
	movne r0, #1
	add sp, sp, #0x10
	moveq r0, #0
	ldmia sp!, {r4, r5, r6, pc}
_021FEE34:
	cmp r4, #0x20
	bge _021FEE54
	bl MOD04_021FF304
	cmp r0, #0
	movne r0, #1
	add sp, sp, #0x10
	moveq r0, #0
	ldmia sp!, {r4, r5, r6, pc}
_021FEE54:
	mov r0, r5
	add r1, r6, #0x68
	bl MOD04_021FBF08
	cmp r0, #0
	bne _021FEE84
	mov r0, r6
	bl MOD04_021FF304
	cmp r0, #0
	movne r0, #1
	add sp, sp, #0x10
	moveq r0, #0
	ldmia sp!, {r4, r5, r6, pc}
_021FEE84:
	ldr r0, [r6, #8]
	ldr r0, [r0, #0x20]
	cmp r0, #0
	bne _021FEEC0
	mov r0, r6
	bl MOD04_021FD828
	cmp r0, #0
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r0, r6
	bl MOD04_021FCED0
	add sp, sp, #0x10
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
_021FEEC0:
	mov r0, #4
	str r0, [r6, #0xc]
	bl MOD04_021F025C
	ldr r2, [r6, #0x8c]
	add r1, r5, #0x20
	sub r0, r0, r2
	str r0, [sp]
	str r1, [sp, #4]
	sub r0, r4, #0x20
	str r0, [sp, #8]
	ldrh r3, [r6, #4]
	ldr r0, [r6, #8]
	ldr r2, [r6]
	mov r1, r6
	bl MOD04_021FCC88
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end MOD04_021FEDFC

	arm_func_start MOD04_021FEF10
MOD04_021FEF10: ; 0x021FEF10
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0x24
	mov r5, r0
	ldr r3, [r5, #0xc]
	mov r4, r1
	cmp r3, #0
	beq _021FEF44
	bl MOD04_021FF304
	cmp r0, #0
	movne r0, #1
	add sp, sp, #0x24
	moveq r0, #0
	ldmia sp!, {r4, r5, pc}
_021FEF44:
	cmp r2, #0x40
	bge _021FEF64
	bl MOD04_021FF304
	cmp r0, #0
	movne r0, #1
	add sp, sp, #0x24
	moveq r0, #0
	ldmia sp!, {r4, r5, pc}
_021FEF64:
	mov r0, r4
	add r1, r5, #0x68
	bl MOD04_021FBF08
	cmp r0, #0
	bne _021FEF94
	mov r0, r5
	bl MOD04_021FF304
	cmp r0, #0
	movne r0, #1
	add sp, sp, #0x24
	moveq r0, #0
	ldmia sp!, {r4, r5, pc}
_021FEF94:
	add r0, sp, #0
	add r1, r4, #0x20
	bl MOD04_021FBF44
	ldr r2, [r5, #0x38]
	ldr r3, [r5, #0x3c]
	add r1, sp, #0
	mov r0, r5
	bl MOD04_021FDBA0
	cmp r0, #0
	addeq sp, sp, #0x24
	moveq r0, #0
	ldmeqia sp!, {r4, r5, pc}
	ldr r0, [r5, #0x38]
	cmp r0, #0
	beq _021FEFDC
	bl MOD04_021DD82C
	mov r0, #0
	str r0, [r5, #0x38]
_021FEFDC:
	mov r0, #1
	str r0, [r5, #0xc]
	add sp, sp, #0x24
	ldmia sp!, {r4, r5, pc}
	arm_func_end MOD04_021FEF10

	arm_func_start MOD04_021FEFEC
MOD04_021FEFEC: ; 0x021FEFEC
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x40
	mov r4, r0
	ldr r3, [r4, #0xc]
	cmp r3, #2
	beq _021FF01C
	bl MOD04_021FF304
	cmp r0, #0
	movne r0, #1
	add sp, sp, #0x40
	moveq r0, #0
	ldmia sp!, {r4, pc}
_021FF01C:
	cmp r2, #0x20
	bge _021FF03C
	bl MOD04_021FF304
	cmp r0, #0
	movne r0, #1
	add sp, sp, #0x40
	moveq r0, #0
	ldmia sp!, {r4, pc}
_021FF03C:
	add r0, sp, #0
	bl MOD04_021FBF44
	add r0, sp, #0x20
	bl MOD04_021FC07C
	add r1, sp, #0x20
	add r0, r4, #0x68
	bl MOD04_021FBF44
	add r1, sp, #0
	add r2, sp, #0x20
	mov r0, r4
	bl MOD04_021FDC28
	cmp r0, #0
	moveq r0, #0
	movne r0, #3
	strne r0, [r4, #0xc]
	movne r0, #1
	add sp, sp, #0x40
	ldmia sp!, {r4, pc}
	arm_func_end MOD04_021FEFEC

	arm_func_start MOD04_021FF084
MOD04_021FF084: ; 0x021FF084
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	mov r6, r0
	ldr r3, [r6, #0xc]
	mov r5, r1
	mov r4, r2
	cmp r3, #5
	beq _021FF0C4
	cmp r3, #6
	beq _021FF0C4
	bl MOD04_021FF304
	cmp r0, #0
	bne _021FF128
	add sp, sp, #8
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
_021FF0C4:
	ldr r0, [r6, #0x9c]
	bl MOD04_021EF06C
	cmp r0, #0
	beq _021FF104
	mov ip, #1
	mov r0, r6
	mov r2, r5
	mov r3, r4
	mov r1, #0
	str ip, [sp]
	bl MOD04_021FC6C4
	cmp r0, #0
	movne r0, #1
	add sp, sp, #8
	moveq r0, #0
	ldmia sp!, {r4, r5, r6, pc}
_021FF104:
	mov r0, r6
	mov r1, r5
	mov r2, r4
	mov r3, #1
	bl MOD04_021FCA8C
	cmp r0, #0
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
_021FF128:
	mov r0, #1
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end MOD04_021FF084

	arm_func_start MOD04_021FF134
MOD04_021FF134: ; 0x021FF134
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	mov r6, r0
	ldr r0, [r6, #0xc]
	mov r5, r1
	mov r4, r2
	cmp r0, #5
	beq _021FF164
	cmp r0, #6
	addne sp, sp, #8
	movne r0, #1
	ldmneia sp!, {r4, r5, r6, pc}
_021FF164:
	ldr r0, [r6, #0x9c]
	bl MOD04_021EF06C
	cmp r0, #0
	beq _021FF1A0
	mov r1, #0
	mov r0, r6
	mov r2, r5
	mov r3, r4
	str r1, [sp]
	bl MOD04_021FC6C4
	cmp r0, #0
	movne r0, #1
	add sp, sp, #8
	moveq r0, #0
	ldmia sp!, {r4, r5, r6, pc}
_021FF1A0:
	mov r0, r6
	mov r1, r5
	mov r2, r4
	mov r3, #0
	bl MOD04_021FCA8C
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end MOD04_021FF134

	arm_func_start MOD04_021FF1C8
MOD04_021FF1C8: ; 0x021FF1C8
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	mov r4, r0
	ldr r0, [r4, #0x60]
	mov r7, r1
	bl MOD04_021EF06C
	movs r6, r0
	addeq sp, sp, #4
	moveq r0, #1
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	cmp r6, #0
	mov r5, #0
	ble _021FF228
_021FF1FC:
	ldr r0, [r4, #0x60]
	mov r1, r5
	bl MOD04_021EEFFC
	ldrh r0, [r0, #8]
	mov r1, r7
	bl MOD04_021FF3AC
	cmp r0, #0
	bge _021FF228
	add r5, r5, #1
	cmp r5, r6
	blt _021FF1FC
_021FF228:
	cmp r5, #0
	addeq sp, sp, #4
	moveq r0, #1
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	cmp r5, #0
	sub r5, r5, #1
	beq _021FF25C
_021FF244:
	ldr r0, [r4, #0x60]
	mov r1, r5
	bl MOD04_021EED84
	cmp r5, #0
	sub r5, r5, #1
	bne _021FF244
_021FF25C:
	ldr r0, [r4, #0x60]
	bl MOD04_021EF06C
	movs r6, r0
	moveq r0, #0
	streq r0, [r4, #0x58]
	addeq sp, sp, #4
	moveq r0, #1
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	ldr r0, [r4, #0x60]
	mov r1, #0
	bl MOD04_021EEFFC
	cmp r6, #0
	ldr r7, [r0]
	mov r5, #0
	ble _021FF2BC
_021FF298:
	ldr r0, [r4, #0x60]
	mov r1, r5
	bl MOD04_021EEFFC
	ldr r1, [r0]
	add r5, r5, #1
	sub r1, r1, r7
	str r1, [r0]
	cmp r5, r6
	blt _021FF298
_021FF2BC:
	mov r2, r7
	add r0, r4, #0x50
	mov r1, #0
	bl MOD04_021FC268
	mov r0, #1
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, pc}
	arm_func_end MOD04_021FF1C8

	arm_func_start MOD04_021FF2D8
MOD04_021FF2D8: ; 0x021FF2D8
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl MOD04_021FD828
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	mov r0, r4
	mov r1, #1
	mov r2, #4
	bl MOD04_021FF318
	ldmia sp!, {r4, pc}
	arm_func_end MOD04_021FF2D8

	arm_func_start MOD04_021FF304
MOD04_021FF304: ; 0x021FF304
	ldr ip, _021FF314 ; =MOD04_021FF318
	mov r1, #7
	mov r2, #2
	bx ip
	.align 2, 0
_021FF314: .word MOD04_021FF318
	arm_func_end MOD04_021FF304

	arm_func_start MOD04_021FF318
MOD04_021FF318: ; 0x021FF318
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r3, [r6, #0xc]
	mov r5, r1
	mov r4, r2
	cmp r3, #5
	bge _021FF380
	ldr r1, [r6, #0x10]
	cmp r1, #0
	beq _021FF368
	bl MOD04_021FCED0
	mov r2, #0
	mov r0, r6
	mov r1, r5
	mov r3, r2
	bl MOD04_021FCB88
	cmp r0, #0
	bne _021FF3A4
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
_021FF368:
	cmp r3, #4
	moveq r0, #1
	streq r0, [r6, #0x14]
	mov r0, r6
	bl MOD04_021FCED0
	b _021FF3A4
_021FF380:
	cmp r3, #7
	beq _021FF3A4
	bl MOD04_021FCED0
	mov r0, r6
	mov r1, r4
	bl MOD04_021FC9B8
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
_021FF3A4:
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end MOD04_021FF318

	arm_func_start MOD04_021FF3AC
MOD04_021FF3AC: ; 0x021FF3AC
	sub r0, r0, r1
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	bx lr
	arm_func_end MOD04_021FF3AC

	arm_func_start MOD04_021FF3BC
MOD04_021FF3BC: ; 0x021FF3BC
	mov r3, r2, asr #8
	strb r3, [r0, r1]
	add r1, r1, #1
	strb r2, [r0, r1]
	bx lr
	arm_func_end MOD04_021FF3BC

	arm_func_start MOD04_021FF3D0
MOD04_021FF3D0: ; 0x021FF3D0
	ldrb r2, [r0, r1]
	add r1, r1, #1
	ldrb r1, [r0, r1]
	mov r0, r2, lsl #8
	and r0, r0, #0xff00
	mov r0, r0, lsl #0x10
	orr r0, r1, r0, lsr #16
	bx lr
	arm_func_end MOD04_021FF3D0

	arm_func_start MOD04_021FF3F0
MOD04_021FF3F0: ; 0x021FF3F0
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0x18]
	cmp r1, #0
	ldmneia sp!, {r4, pc}
	mov r1, #1
	str r1, [r4, #0x18]
	bl MOD04_021FD45C
	mov r0, r4
	bl MOD04_021FCDB4
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	mov r0, r4
	bl MOD04_021FF9CC
	ldmia sp!, {r4, pc}
	arm_func_end MOD04_021FF3F0

	arm_func_start MOD04_021FF42C
MOD04_021FF42C: ; 0x021FF42C
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	ldr r0, [r5, #0x10]
	bl MOD04_021EF06C
	subs r4, r0, #1
	addmi sp, sp, #4
	ldmmiia sp!, {r4, r5, pc}
_021FF44C:
	ldr r0, [r5, #0x10]
	mov r1, r4
	bl MOD04_021EEFFC
	ldr r0, [r0]
	bl MOD04_021FF6BC
	subs r4, r4, #1
	bpl _021FF44C
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	arm_func_end MOD04_021FF42C

	arm_func_start MOD04_021FF470
MOD04_021FF470: ; 0x021FF470
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	mov r4, r0
	bl MOD04_021F025C
	str r0, [sp]
	ldr r0, [r4, #0xc]
	ldr r1, _021FF4A8 ; =MOD04_021FF4AC
	add r2, sp, #0
	bl MOD04_021EF264
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	.align 2, 0
_021FF4A8: .word MOD04_021FF4AC
	arm_func_end MOD04_021FF470

	arm_func_start MOD04_021FF4AC
MOD04_021FF4AC: ; 0x021FF4AC
	stmdb sp!, {r4, lr}
	ldr r4, [r0]
	ldr r1, [r1]
	ldr r0, [r4, #0xc]
	cmp r0, #7
	beq _021FF4D8
	mov r0, r4
	bl MOD04_021FCF88
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
_021FF4D8:
	ldr r0, [r4, #0xc]
	cmp r0, #7
	bne _021FF504
	ldr r0, [r4, #0x14]
	cmp r0, #0
	bne _021FF504
	ldr r0, [r4, #0x24]
	cmp r0, #0
	bne _021FF504
	mov r0, r4
	bl MOD04_021FF6BC
_021FF504:
	mov r0, #1
	ldmia sp!, {r4, pc}
	arm_func_end MOD04_021FF4AC

	arm_func_start MOD04_021FF50C
MOD04_021FF50C: ; 0x021FF50C
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x18
	mov r6, r0
	mov r5, r1
	add r0, sp, #0x34
	add r1, sp, #0x38
	mov r4, r2
	bl MOD04_021FFCDC
	ldr r0, [r6]
	bl MOD04_021EFEFC
	cmp r0, #0
	addeq sp, sp, #0x18
	moveq r0, #1
	ldmeqia sp!, {r4, r5, r6, lr}
	addeq sp, sp, #0x10
	bxeq lr
	mov r1, r4, asr #8
	mov r0, r4, lsl #8
	add ip, sp, #0x10
	mov r3, #0
	str r3, [ip]
	str r3, [ip, #4]
	mov r2, #2
	and r1, r1, #0xff
	and r0, r0, #0xff00
	orr r0, r1, r0
	strh r0, [sp, #0x12]
	strb r2, [sp, #0x11]
	str r5, [sp, #0x14]
	str ip, [sp]
	mov r0, #8
	str r0, [sp, #4]
	ldr r0, [r6]
	ldr r1, [sp, #0x34]
	ldr r2, [sp, #0x38]
	bl MOD04_021EFBD4
	mvn r1, #0
	cmp r0, r1
	bne _021FF640
	ldr r0, [r6]
	bl MOD04_021EFB28
	mvn r1, #0xe
	cmp r0, r1
	bne _021FF5EC
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl MOD04_021FE0B4
	cmp r0, #0
	bne _021FF6A8
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r4, r5, r6, lr}
	add sp, sp, #0x10
	bx lr
_021FF5EC:
	mvn r1, #0x29
	cmp r0, r1
	beq _021FF604
	mvn r1, #5
	cmp r0, r1
	bne _021FF618
_021FF604:
	add sp, sp, #0x18
	mov r0, #1
	ldmia sp!, {r4, r5, r6, lr}
	add sp, sp, #0x10
	bx lr
_021FF618:
	mvn r1, #0x22
	cmp r0, r1
	beq _021FF6A8
	mov r0, r6
	bl MOD04_021FF3F0
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r4, r5, r6, lr}
	add sp, sp, #0x10
	bx lr
_021FF640:
	ldr r0, [r6, #0x28]
	cmp r0, #0
	beq _021FF6A8
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl MOD04_021FFC3C
	mov r1, #0
	str r1, [sp]
	ldr r2, [sp, #0x34]
	mov r1, r0
	str r2, [sp, #4]
	ldr ip, [sp, #0x38]
	mov r3, r4
	mov r0, r6
	mov r2, r5
	str ip, [sp, #8]
	mov r4, #1
	str r4, [sp, #0xc]
	bl MOD04_021FC59C
	cmp r0, #0
	addeq sp, sp, #0x18
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, lr}
	addeq sp, sp, #0x10
	bxeq lr
_021FF6A8:
	mov r0, #1
	add sp, sp, #0x18
	ldmia sp!, {r4, r5, r6, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end MOD04_021FF50C

	arm_func_start MOD04_021FF6BC
MOD04_021FF6BC: ; 0x021FF6BC
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {r4, r5, r6, lr}
	ldr r1, [sp, #0x10]
	ldr r0, [r1, #0x14]
	cmp r0, #0
	ldmneia sp!, {r4, r5, r6, lr}
	addne sp, sp, #0x10
	bxne lr
	ldr r0, [r1, #0x24]
	cmp r0, #0
	ldmneia sp!, {r4, r5, r6, lr}
	addne sp, sp, #0x10
	bxne lr
	ldr r0, [r1, #0xc]
	cmp r0, #7
	bne _021FF774
	ldr r0, [r1, #8]
	ldr r0, [r0, #0x10]
	bl MOD04_021EF06C
	mov r6, r0
	mov r5, #0
	cmp r6, #0
	ldmleia sp!, {r4, r5, r6, lr}
	addle sp, sp, #0x10
	bxle lr
_021FF720:
	ldr r4, [sp, #0x10]
	mov r1, r5
	ldr r0, [r4, #8]
	ldr r0, [r0, #0x10]
	bl MOD04_021EEFFC
	ldr r0, [r0]
	cmp r4, r0
	bne _021FF75C
	ldr r0, [r4, #8]
	mov r1, r5
	ldr r0, [r0, #0x10]
	bl MOD04_021EED84
	ldmia sp!, {r4, r5, r6, lr}
	add sp, sp, #0x10
	bx lr
_021FF75C:
	add r5, r5, #1
	cmp r5, r6
	blt _021FF720
	ldmia sp!, {r4, r5, r6, lr}
	add sp, sp, #0x10
	bx lr
_021FF774:
	ldr r0, [r1, #8]
	add r1, sp, #0x10
	ldr r0, [r0, #0xc]
	bl MOD04_021EF3F4
	ldmia sp!, {r4, r5, r6, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end MOD04_021FF6BC

	arm_func_start MOD04_021FF790
MOD04_021FF790: ; 0x021FF790
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	mov r4, r3
	mov r5, r2
	mov r6, r1
	mov r3, #0
	mov r1, r5
	mov r2, r4
	mov r7, r0
	str r3, [sp]
	bl MOD04_021FFC3C
	cmp r0, #0
	addne sp, sp, #4
	movne r0, #5
	ldmneia sp!, {r4, r5, r6, r7, pc}
	bl MOD04_021FF9B4
	str r0, [sp]
	cmp r0, #0
	beq _021FF930
	mov r1, #0
	mov r2, #0xa0
	bl memset
	ldr r0, [sp]
	str r5, [r0]
	ldr r0, [sp]
	strh r4, [r0, #4]
	ldr r0, [sp]
	str r7, [r0, #8]
	bl MOD04_021F025C
	ldr r2, [sp]
	mov r1, #0
	str r0, [r2, #0x1c]
	ldr r2, [sp]
	ldr r0, [r2, #0x1c]
	str r0, [r2, #0x88]
	ldr r0, [sp]
	strh r1, [r0, #0x64]
	ldr r0, [sp]
	strh r1, [r0, #0x66]
	ldr r0, [sp]
	ldr r1, [r7, #0x3c]
	add r0, r0, #0x44
	bl MOD04_021FC46C
	cmp r0, #0
	beq _021FF930
	ldr r0, [sp]
	ldr r1, [r7, #0x38]
	add r0, r0, #0x50
	bl MOD04_021FC46C
	cmp r0, #0
	beq _021FF930
	mov r0, #0x10
	mov r1, #0x40
	mov r2, #0
	bl MOD04_021EF0E4
	ldr r1, [sp]
	str r0, [r1, #0x5c]
	ldr r0, [sp]
	ldr r0, [r0, #0x5c]
	cmp r0, #0
	beq _021FF930
	mov r0, #0x10
	mov r1, #0x40
	mov r2, #0
	bl MOD04_021EF0E4
	ldr r1, [sp]
	str r0, [r1, #0x60]
	ldr r0, [sp]
	ldr r0, [r0, #0x60]
	cmp r0, #0
	beq _021FF930
	mov r0, #4
	mov r1, #2
	mov r2, #0
	bl MOD04_021EF0E4
	ldr r1, [sp]
	str r0, [r1, #0x98]
	ldr r0, [sp]
	ldr r0, [r0, #0x98]
	cmp r0, #0
	beq _021FF930
	mov r0, #4
	mov r1, #2
	mov r2, #0
	bl MOD04_021EF0E4
	ldr r1, [sp]
	str r0, [r1, #0x9c]
	ldr r0, [sp]
	ldr r0, [r0, #0x9c]
	cmp r0, #0
	beq _021FF930
	ldr r0, [r7, #0xc]
	add r1, sp, #0
	bl MOD04_021EF494
	mov r0, r7
	mov r1, r5
	mov r2, r4
	bl MOD04_021FFC3C
	str r0, [r6]
	ldr r0, [r6]
	cmp r0, #0
	addne sp, sp, #4
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, r7, pc}
_021FF930:
	ldr r0, [sp]
	cmp r0, #0
	beq _021FF9A8
	ldr r0, [r0, #0x44]
	bl MOD04_021DD82C
	ldr r0, [sp]
	ldr r0, [r0, #0x50]
	bl MOD04_021DD82C
	ldr r0, [sp]
	ldr r0, [r0, #0x5c]
	cmp r0, #0
	beq _021FF964
	bl MOD04_021EF074
_021FF964:
	ldr r0, [sp]
	ldr r0, [r0, #0x60]
	cmp r0, #0
	beq _021FF978
	bl MOD04_021EF074
_021FF978:
	ldr r0, [sp]
	ldr r0, [r0, #0x98]
	cmp r0, #0
	beq _021FF98C
	bl MOD04_021EF074
_021FF98C:
	ldr r0, [sp]
	ldr r0, [r0, #0x9c]
	cmp r0, #0
	beq _021FF9A0
	bl MOD04_021EF074
_021FF9A0:
	ldr r0, [sp]
	bl MOD04_021DD82C
_021FF9A8:
	mov r0, #1
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, pc}
	arm_func_end MOD04_021FF790

	arm_func_start MOD04_021FF9B4
MOD04_021FF9B4: ; 0x021FF9B4
	ldr ip, _021FF9C0 ; =MOD04_021DD860
	mov r0, #0xa0
	bx ip
	.align 2, 0
_021FF9C0: .word MOD04_021DD860
	arm_func_end MOD04_021FF9B4

	arm_func_start MOD04_021FF9C4
MOD04_021FF9C4: ; 0x021FF9C4
	str r1, [r0, #0x20]
	bx lr
	arm_func_end MOD04_021FF9C4

	arm_func_start MOD04_021FF9CC
MOD04_021FF9CC: ; 0x021FF9CC
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	movne r0, #1
	strne r0, [r4, #0x14]
	ldmneia sp!, {r4, pc}
	ldr r0, [r4]
	bl MOD04_021EFD9C
	ldr r0, [r4, #0xc]
	bl MOD04_021EF5B0
	ldr r0, [r4, #0x10]
	bl MOD04_021EF074
	mov r0, r4
	bl MOD04_021DD82C
	bl MOD04_021F0248
	ldmia sp!, {r4, pc}
	arm_func_end MOD04_021FF9CC

	arm_func_start MOD04_021FFA10
MOD04_021FFA10: ; 0x021FFA10
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x1c
	mov r4, r1
	mov r6, r3
	mov r5, r0
	mov r7, r2
	bl MOD04_021F024C
	cmp r6, #0
	moveq r6, #0x10000
	cmp r7, #0
	add r1, sp, #0x14
	add r2, sp, #8
	mov r0, r4
	moveq r7, #0x10000
	bl MOD04_021FFD28
	cmp r0, #0
	addeq sp, sp, #0x1c
	moveq r0, #4
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	mov r0, #0x44
	bl MOD04_021DD860
	movs r4, r0
	addeq sp, sp, #0x1c
	moveq r0, #1
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	mov r1, #0
	mov r2, #0x44
	bl memset
	mvn r0, #0
	str r0, [r4]
	str r6, [r4, #0x3c]
	ldr r1, [sp, #0x30]
	str r7, [r4, #0x38]
	ldr r0, _021FFC30 ; =MOD04_021FFC84
	str r1, [r4, #0x24]
	str r0, [sp]
	mov r0, #0
	ldr r3, _021FFC34 ; =MOD04_021FFCB4
	str r0, [sp, #4]
	mov r0, #4
	mov r1, #0x20
	mov r2, #2
	bl MOD04_021EF62C
	str r0, [r4, #0xc]
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bne _021FFAE0
	mov r0, r4
	bl MOD04_021DD82C
	add sp, sp, #0x1c
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, pc}
_021FFAE0:
	mov r0, #4
	ldr r2, _021FFC38 ; =MOD04_021FFC74
	mov r1, r0
	bl MOD04_021EF0E4
	str r0, [r4, #0x10]
	ldr r0, [r4, #0x10]
	cmp r0, #0
	bne _021FFB1C
	ldr r0, [r4, #0xc]
	bl MOD04_021EF5B0
	mov r0, r4
	bl MOD04_021DD82C
	add sp, sp, #0x1c
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, pc}
_021FFB1C:
	mov r0, #2
	mov r1, r0
	mov r2, #0
	bl MOD04_021EFDB8
	str r0, [r4]
	ldr r1, [r4]
	mvn r0, #0
	cmp r1, r0
	bne _021FFB64
	ldr r0, [r4, #0xc]
	bl MOD04_021EF5B0
	ldr r0, [r4, #0x10]
	bl MOD04_021EF074
	mov r0, r4
	bl MOD04_021DD82C
	add sp, sp, #0x1c
	mov r0, #3
	ldmia sp!, {r4, r5, r6, r7, pc}
_021FFB64:
	add r1, sp, #0xc
	mov r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	ldrh r0, [sp, #8]
	ldr r3, [sp, #0x14]
	mov ip, #2
	mov r2, r0, asr #8
	mov r0, r0, lsl #8
	and r2, r2, #0xff
	and r0, r0, #0xff00
	orr r0, r2, r0
	strb ip, [sp, #0xd]
	str r3, [sp, #0x10]
	strh r0, [sp, #0xe]
	ldr r0, [r4]
	mov r2, #8
	bl MOD04_021EFD28
	mvn r1, #0
	cmp r0, r1
	bne _021FFBE4
	ldr r0, [r4]
	bl MOD04_021EFD9C
	ldr r0, [r4, #0xc]
	bl MOD04_021EF5B0
	ldr r0, [r4, #0x10]
	bl MOD04_021EF074
	mov r0, r4
	bl MOD04_021DD82C
	add sp, sp, #0x1c
	mov r0, #3
	ldmia sp!, {r4, r5, r6, r7, pc}
_021FFBE4:
	mov r0, #8
	str r0, [sp, #0x18]
	ldr r0, [r4]
	add r1, sp, #0xc
	add r2, sp, #0x18
	bl MOD04_021EFB5C
	ldr r1, [sp, #0x10]
	mov r0, #0
	str r1, [r4, #4]
	ldrh r1, [sp, #0xe]
	mov r2, r1, asr #8
	mov r1, r1, lsl #8
	and r2, r2, #0xff
	and r1, r1, #0xff00
	orr r1, r2, r1
	strh r1, [r4, #8]
	str r4, [r5]
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_021FFC30: .word MOD04_021FFC84
_021FFC34: .word MOD04_021FFCB4
_021FFC38: .word MOD04_021FFC74
	arm_func_end MOD04_021FFA10

	arm_func_start MOD04_021FFC3C
MOD04_021FFC3C: ; 0x021FFC3C
	stmdb sp!, {lr}
	sub sp, sp, #0xa4
	add r3, sp, #4
	str r1, [sp, #4]
	strh r2, [sp, #8]
	str r3, [sp]
	ldr r0, [r0, #0xc]
	add r1, sp, #0
	bl MOD04_021EF358
	cmp r0, #0
	ldrne r0, [r0]
	moveq r0, #0
	add sp, sp, #0xa4
	ldmfd sp!, {pc}
	arm_func_end MOD04_021FFC3C

	arm_func_start MOD04_021FFC74
MOD04_021FFC74: ; 0x021FFC74
	ldr ip, _021FFC80 ; =MOD04_021FCE4C
	ldr r0, [r0]
	bx ip
	.align 2, 0
_021FFC80: .word MOD04_021FCE4C
	arm_func_end MOD04_021FFC74

	arm_func_start MOD04_021FFC84
MOD04_021FFC84: ; 0x021FFC84
	ldr r3, [r0]
	ldr r2, [r1]
	ldr r0, [r3]
	ldr r1, [r2]
	cmp r0, r1
	subne r0, r0, r1
	ldreqh r1, [r3, #4]
	ldreqh r0, [r2, #4]
	subeq r0, r1, r0
	moveq r0, r0, lsl #0x10
	moveq r0, r0, asr #0x10
	bx lr
	arm_func_end MOD04_021FFC84

	arm_func_start MOD04_021FFCB4
MOD04_021FFCB4: ; 0x021FFCB4
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r2, [r0]
	ldrh r0, [r2, #4]
	ldr r2, [r2]
	mul r0, r2, r0
	bl _u32_div_f
	mov r0, r1
	add sp, sp, #4
	ldmfd sp!, {pc}
	arm_func_end MOD04_021FFCB4

	arm_func_start MOD04_021FFCDC
MOD04_021FFCDC: ; 0x021FFCDC
	stmdb sp!, {r4, lr}
	ldr r2, [r0]
	mov r4, r1
	cmp r2, #0
	ldreq r2, _021FFD24 ; =UNK04_0220EFD4
	moveq r1, #0
	streq r2, [r0]
	streq r1, [r4]
	ldmeqia sp!, {r4, pc}
	ldr r1, [r4]
	mvn r0, #0
	cmp r1, r0
	ldmneia sp!, {r4, pc}
	mov r0, r2
	bl strlen
	add r0, r0, #1
	str r0, [r4]
	ldmia sp!, {r4, pc}
	.align 2, 0
_021FFD24: .word UNK04_0220EFD4
	arm_func_end MOD04_021FFCDC

	arm_func_start MOD04_021FFD28
MOD04_021FFD28: ; 0x021FFD28
	stmdb sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x104
	movs r8, r0
	mov r7, r1
	mov r6, r2
	beq _021FFD4C
	ldrsb r1, [r8]
	cmp r1, #0
	bne _021FFD58
_021FFD4C:
	mov r5, #0
	mov r4, r5
	b _021FFE84
_021FFD58:
	mov r1, #0x3a
	bl strchr
	movs r4, r0
	moveq r4, #0
	beq _021FFE40
	cmp r4, r8
	moveq r8, #0
	moveq r5, r8
	beq _021FFDB8
	sub sb, r4, r8
	cmp sb, #0x100
	blt _021FFD9C
	ldr r0, _021FFEA0 ; =UNK04_0220EFD8
	ldr r1, _021FFEA4 ; =UNK04_0220EFF8
	mov r2, #0
	mov r3, #0x81
	bl __msl_assertion_failed
_021FFD9C:
	add r0, sp, #0
	mov r1, r8
	mov r2, sb
	bl memcpy
	add r8, sp, #0
	mov r0, #0
	strb r0, [r8, sb]
_021FFDB8:
	ldrsb r0, [r4, #1]
	add r3, r4, #1
	cmp r0, #0
	beq _021FFE10
	ldr r1, _021FFEA8 ; =__msl_digit
	mov r2, #0
_021FFDD0:
	cmp r0, #0
	blt _021FFDE0
	cmp r0, #0x80
	blt _021FFDE8
_021FFDE0:
	mov r0, r2
	b _021FFDF4
_021FFDE8:
	mov r0, r0, lsl #1
	ldrh r0, [r1, r0]
	and r0, r0, #8
_021FFDF4:
	cmp r0, #0
	addeq sp, sp, #0x104
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, pc}
	ldrsb r0, [r3, #1]!
	cmp r0, #0
	bne _021FFDD0
_021FFE10:
	add r0, r4, #1
	bl atol
	cmp r0, #0
	blt _021FFE2C
	ldr r1, _021FFEAC ; =0x0000FFFF
	cmp r0, r1
	ble _021FFE38
_021FFE2C:
	add sp, sp, #0x104
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
_021FFE38:
	mov r0, r0, lsl #0x10
	mov r4, r0, lsr #0x10
_021FFE40:
	cmp r8, #0
	beq _021FFE84
	mov r0, r8
	bl MOD04_021EFB38
	mov r5, r0
	mvn r0, #0
	cmp r5, r0
	bne _021FFE84
	mov r0, r8
	bl SOC_GetHostByAddr
	cmp r0, #0
	addeq sp, sp, #0x104
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, pc}
	ldr r0, [r0, #0xc]
	ldr r0, [r0]
	ldr r5, [r0]
_021FFE84:
	cmp r7, #0
	strne r5, [r7]
	cmp r6, #0
	strneh r4, [r6]
	mov r0, #1
	add sp, sp, #0x104
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_021FFEA0: .word UNK04_0220EFD8
_021FFEA4: .word UNK04_0220EFF8
_021FFEA8: .word __msl_digit
_021FFEAC: .word 0x0000FFFF
	arm_func_end MOD04_021FFD28

	arm_func_start MOD04_021FFEB0
MOD04_021FFEB0: ; 0x021FFEB0
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	movs r5, r2
	mov r4, r1
	bne _021FFEE0
	ldr r2, _021FFF64 ; =UNK04_02211394
	ldr r3, _021FFF68 ; =UNK04_02211398
	ldr ip, [r2]
	mov r1, #0x16
	eor ip, ip, #1
	mla r5, ip, r1, r3
	str ip, [r2]
_021FFEE0:
	cmp r0, #0
	beq _021FFF38
	str r0, [sp]
	cmp r4, #0
	beq _021FFF18
	add r0, sp, #0
	ldmia r0, {r0}
	bl SOC_InetNtoA
	mov r2, r0
	ldr r1, _021FFF6C ; =UNK04_0220F008
	mov r0, r5
	mov r3, r4
	bl sprintf
	b _021FFF58
_021FFF18:
	add r0, sp, #0
	ldmia r0, {r0}
	bl SOC_InetNtoA
	mov r2, r0
	ldr r1, _021FFF70 ; =UNK04_0220F010
	mov r0, r5
	bl sprintf
	b _021FFF58
_021FFF38:
	cmp r4, #0
	moveq r0, #0
	streqb r0, [r5]
	beq _021FFF58
	ldr r1, _021FFF74 ; =UNK04_0220F014
	mov r0, r5
	mov r2, r4
	bl sprintf
_021FFF58:
	mov r0, r5
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_021FFF64: .word UNK04_02211394
_021FFF68: .word UNK04_02211398
_021FFF6C: .word UNK04_0220F008
_021FFF70: .word UNK04_0220F010
_021FFF74: .word UNK04_0220F014
	arm_func_end MOD04_021FFEB0

	arm_func_start MOD04_021FFF78
MOD04_021FFF78: ; 0x021FFF78
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x2c
	mov r6, r0
	mov r7, r1
	mov r5, r2
	bl MOD04_02200D40
	cmp r0, #0
	addeq sp, sp, #0x2c
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	ldrb r4, [r6, #7]
	cmp r4, #5
	beq _021FFFB0
	cmp r4, #7
	bne _0220004C
_021FFFB0:
	cmp r7, #0x14
	addlt sp, sp, #0x2c
	ldmltia sp!, {r4, r5, r6, r7, pc}
	add r3, sp, #0
	mov r2, #0xa
_021FFFC4:
	ldrb r1, [r6], #1
	ldrb r0, [r6], #1
	subs r2, r2, #1
	strb r1, [r3], #1
	strb r0, [r3], #1
	bne _021FFFC4
	ldr r3, [sp, #8]
	mov r1, r3, lsr #0x18
	mov r0, r3, lsr #8
	mov r2, r3, lsl #8
	and r1, r1, #0xff
	and r0, r0, #0xff00
	mov r3, r3, lsl #0x18
	orr r0, r1, r0
	and r2, r2, #0xff0000
	and r1, r3, #0xff000000
	orr r0, r2, r0
	orr r0, r1, r0
	bl MOD04_02200ED4
	cmp r0, #0
	addeq sp, sp, #0x2c
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	cmp r4, #5
	bne _02200038
	add r1, sp, #0
	mov r2, r5
	bl MOD04_022002CC
	add sp, sp, #0x2c
	ldmia sp!, {r4, r5, r6, r7, pc}
_02200038:
	add r1, sp, #0
	mov r2, r5
	bl MOD04_022001E4
	add sp, sp, #0x2c
	ldmia sp!, {r4, r5, r6, r7, pc}
_0220004C:
	cmp r7, #0x15
	addlt sp, sp, #0x2c
	ldmltia sp!, {r4, r5, r6, r7, pc}
	add r3, sp, #0x14
	mov r2, #0xa
_02200060:
	ldrb r1, [r6], #1
	ldrb r0, [r6], #1
	subs r2, r2, #1
	strb r1, [r3], #1
	strb r0, [r3], #1
	bne _02200060
	ldrb r0, [r6]
	strb r0, [r3]
	ldr r3, [sp, #0x1c]
	mov r1, r3, lsr #0x18
	mov r0, r3, lsr #8
	mov r2, r3, lsl #8
	and r1, r1, #0xff
	and r0, r0, #0xff00
	mov r3, r3, lsl #0x18
	orr r0, r1, r0
	and r2, r2, #0xff0000
	and r1, r3, #0xff000000
	orr r0, r2, r0
	orr r0, r1, r0
	bl MOD04_02200ED4
	cmp r0, #0
	addeq sp, sp, #0x2c
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	add r1, sp, #0x14
	mov r2, r5
	bl MOD04_022000D4
	add sp, sp, #0x2c
	ldmia sp!, {r4, r5, r6, r7, pc}
	arm_func_end MOD04_021FFF78

	arm_func_start MOD04_022000D4
MOD04_022000D4: ; 0x022000D4
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	mov r3, r1
	ldrb r1, [r3, #7]
	mov r4, r0
	cmp r1, #1
	beq _02200100
	cmp r1, #2
	beq _0220019C
	add sp, sp, #8
	ldmia sp!, {r4, pc}
_02200100:
	ldrb r0, [r3, #0xc]
	cmp r0, #2
	addhi sp, sp, #8
	ldmhiia sp!, {r4, pc}
	add r0, r4, r0, lsl #2
	mov r1, #1
	str r1, [r0, #0x14]
	ldr r0, [r4, #0x10]
	cmp r0, #0
	addne sp, sp, #8
	ldmneia sp!, {r4, pc}
	ldr r0, [r4, #0x18]
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqia sp!, {r4, pc}
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqia sp!, {r4, pc}
	ldr r1, [r4, #4]
	mvn r0, #0
	cmp r1, r0
	beq _0220016C
	ldr r0, [r4, #0x14]
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqia sp!, {r4, pc}
_0220016C:
	mov r0, #1
	str r0, [r4, #0x10]
	bl MOD04_021F025C
	ldr r1, _022001E0 ; =0x00002710
	add r0, r0, r1
	str r0, [r4, #0x28]
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x3c]
	ldr r2, [r4, #0x34]
	blx r2
	add sp, sp, #8
	ldmia sp!, {r4, pc}
_0220019C:
	mov r0, #3
	strb r0, [r3, #7]
	ldrh r0, [r2, #2]
	mov ip, #0x15
	mov r1, r0, asr #8
	mov r0, r0, lsl #8
	str ip, [sp]
	and r1, r1, #0xff
	and r0, r0, #0xff00
	orr r0, r1, r0
	mov ip, r0, lsl #0x10
	ldr r1, [r2, #4]
	ldr r0, [r4]
	mov r2, ip, lsr #0x10
	bl MOD04_02200CEC
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	.align 2, 0
_022001E0: .word 0x00002710
	arm_func_end MOD04_022000D4

	arm_func_start MOD04_022001E4
MOD04_022001E4: ; 0x022001E4
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	ldr r3, [r5, #0x10]
	mov r4, r2
	cmp r3, #2
	addlt sp, sp, #4
	ldmltia sp!, {r4, r5, pc}
	ldr r3, [r4, #4]
	mov r2, #1
	str r3, [r5, #0x2c]
	ldrh r3, [r4, #2]
	mov ip, r3, asr #8
	mov r3, r3, lsl #8
	and ip, ip, #0xff
	and r3, r3, #0xff00
	orr r3, ip, r3
	strh r3, [r5, #0x30]
	strb r2, [r5, #0x32]
	ldrb r2, [r1, #0x12]
	cmp r2, #0
	bne _02200248
	bl MOD04_022008D8
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
_02200248:
	ldr r2, [r5, #0x10]
	cmp r2, #2
	bne _022002AC
	ldrb r1, [r5, #0x33]
	cmp r1, #0
	bne _02200264
	bl MOD04_022008D8
_02200264:
	mov r0, #3
	str r0, [r5, #0x10]
	bl MOD04_021F025C
	ldr r1, _022002C8 ; =0x00001388
	mvn r2, #0
	add r0, r0, r1
	str r0, [r5, #0x28]
	ldr r1, [r5, #4]
	cmp r1, r2
	addeq sp, sp, #4
	ldmeqia sp!, {r4, r5, pc}
	ldr r3, [r5, #0x3c]
	ldr r5, [r5, #0x38]
	mov r2, r4
	mov r0, #0
	blx r5
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
_022002AC:
	ldrb r1, [r1, #0x13]
	cmp r1, #0
	addne sp, sp, #4
	ldmneia sp!, {r4, r5, pc}
	bl MOD04_022008D8
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_022002C8: .word 0x00001388
	arm_func_end MOD04_022001E4

	arm_func_start MOD04_022002CC
MOD04_022002CC: ; 0x022002CC
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r1
	ldrb r1, [r5, #0x13]
	mov r4, r0
	cmp r1, #0
	bne _022002F0
	mov r1, r2
	bl MOD04_0220039C
_022002F0:
	ldr r0, [r4, #0x10]
	cmp r0, #2
	addge sp, sp, #4
	ldmgeia sp!, {r4, r5, pc}
	ldrb r1, [r5, #0x13]
	cmp r1, #0
	beq _02200348
	mov r0, #3
	cmp r1, #1
	moveq r0, #1
	beq _02200324
	cmp r1, #2
	moveq r0, #2
_02200324:
	ldr r3, [r4, #0x3c]
	ldr ip, [r4, #0x38]
	mvn r1, #0
	mov r2, #0
	blx ip
	ldr r0, [r4, #8]
	bl MOD04_022006B4
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
_02200348:
	ldr r0, [r5, #0xc]
	mov r1, #0
	str r0, [r4, #0x2c]
	ldrh r2, [r5, #0x10]
	mov r0, #2
	mov r3, r2, asr #8
	mov r2, r2, lsl #8
	and r3, r3, #0xff
	and r2, r2, #0xff00
	orr r2, r3, r2
	strh r2, [r4, #0x30]
	str r1, [r4, #0x20]
	str r0, [r4, #0x10]
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x3c]
	ldr r2, [r4, #0x34]
	blx r2
	mov r0, r4
	bl MOD04_022008D8
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	arm_func_end MOD04_022002CC

	arm_func_start MOD04_0220039C
MOD04_0220039C: ; 0x0220039C
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x20
	ldr r6, _02200464 ; =UNK04_0220F018
	add r3, sp, #4
	ldrb ip, [r6]
	ldrb r2, [r6, #1]
	mov r5, #2
	mov r4, #6
	strb ip, [r3]
	strb r2, [r3, #1]
	ldrb lr, [r6, #2]
	ldrb ip, [r6, #3]
	mov r2, #0x15
	strb lr, [r3, #2]
	strb ip, [r3, #3]
	ldrb lr, [r6, #4]
	ldrb ip, [r6, #5]
	strb lr, [r3, #4]
	strb ip, [r3, #5]
	strb r5, [sp, #0xa]
	strb r4, [sp, #0xb]
	ldr r4, [r0, #0xc]
	strb r4, [sp, #0x11]
	ldr r5, [r0, #8]
	mov lr, r5, lsr #0x18
	mov ip, r5, lsr #8
	mov r4, r5, lsl #8
	mov r5, r5, lsl #0x18
	and lr, lr, #0xff
	and ip, ip, #0xff00
	and r4, r4, #0xff0000
	orr ip, lr, ip
	and r5, r5, #0xff000000
	orr r4, r4, ip
	orr r4, r5, r4
	str r4, [sp, #0xc]
	ldrh lr, [r1, #2]
	str r2, [sp]
	mov ip, lr, asr #8
	mov r2, lr, lsl #8
	and ip, ip, #0xff
	and r2, r2, #0xff00
	orr r2, ip, r2
	mov r2, r2, lsl #0x10
	ldr r0, [r0]
	ldr r1, [r1, #4]
	mov r2, r2, lsr #0x10
	bl MOD04_02200CEC
	add sp, sp, #0x20
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_02200464: .word UNK04_0220F018
	arm_func_end MOD04_0220039C

	arm_func_start MOD04_02200468
MOD04_02200468: ; 0x02200468
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	ldr r0, _022004B8 ; =UNK04_022113D4
	ldr r0, [r0]
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqia sp!, {r4, r5, pc}
	bl MOD04_021EF06C
	subs r5, r0, #1
	addmi sp, sp, #4
	ldmmiia sp!, {r4, r5, pc}
	ldr r4, _022004B8 ; =UNK04_022113D4
_02200498:
	ldr r0, [r4]
	mov r1, r5
	bl MOD04_021EEFFC
	bl MOD04_022004BC
	subs r5, r5, #1
	bpl _02200498
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_022004B8: .word UNK04_022113D4
	arm_func_end MOD04_02200468

	arm_func_start MOD04_022004BC
MOD04_022004BC: ; 0x022004BC
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #0x20
	mov r1, #8
	mov sb, r0
	str r1, [sp, #0x10]
	ldr r1, [sb, #0x10]
	cmp r1, #4
	bne _022004E8
	bl MOD04_02200DA4
	add sp, sp, #0x20
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_022004E8:
	ldr r0, [sb]
	mvn sl, #0
	cmp r0, sl
	beq _02200564
	ldr r6, _022006B0 ; =UNK04_022113D8
	add r8, sp, #8
	add r7, sp, #0x10
	mov r5, #0x200
	mov r4, #0
_0220050C:
	bl MOD04_021EFF2C
	cmp r0, #0
	beq _02200564
	str r8, [sp]
	str r7, [sp, #4]
	ldr r0, [sb]
	mov r1, r6
	mov r2, r5
	mov r3, r4
	bl MOD04_021EFC40
	mov r1, r0
	cmp r1, sl
	beq _02200564
	mov r0, r6
	mov r2, r8
	bl MOD04_021FFF78
	ldr r0, [sb, #0x10]
	cmp r0, #4
	beq _02200564
	ldr r0, [sb]
	cmp r0, sl
	bne _0220050C
_02200564:
	ldr r0, [sb, #0x10]
	cmp r0, #0
	beq _02200578
	cmp r0, #2
	bne _022005E4
_02200578:
	bl MOD04_021F025C
	ldr r1, [sb, #0x28]
	cmp r0, r1
	bls _022005E4
	ldr r1, [sb, #0x20]
	ldr r0, [sb, #0x24]
	cmp r1, r0
	ble _022005BC
	ldr r3, [sb, #0x3c]
	ldr r4, [sb, #0x38]
	mov r0, #2
	mvn r1, #0
	mov r2, #0
	blx r4
	ldr r0, [sb, #8]
	bl MOD04_022006B4
	b _022005E4
_022005BC:
	add r0, r1, #1
	str r0, [sb, #0x20]
	ldr r0, [sb, #0x10]
	cmp r0, #0
	bne _022005DC
	mov r0, sb
	bl MOD04_022009F8
	b _022005E4
_022005DC:
	mov r0, sb
	bl MOD04_022008D8
_022005E4:
	ldr r0, [sb, #0x10]
	cmp r0, #3
	bne _02200664
	bl MOD04_021F025C
	ldr r1, [sb, #0x28]
	cmp r0, r1
	bls _02200664
	ldr r1, [sb, #4]
	mvn r0, #0
	cmp r1, r0
	bne _0220065C
	mov r0, #2
	strb r0, [sp, #0x15]
	ldrh r1, [sb, #0x30]
	add r2, sp, #0x14
	mov r0, #0
	mov r3, r1, asr #8
	mov r1, r1, lsl #8
	and r3, r3, #0xff
	and r1, r1, #0xff00
	orr r1, r3, r1
	strh r1, [sp, #0x16]
	ldr r1, [sb, #0x2c]
	str r1, [sp, #0x18]
	ldr r1, [sb]
	ldr r3, [sb, #0x3c]
	ldr r4, [sb, #0x38]
	blx r4
	mvn r0, #0
	str r0, [sb]
_0220065C:
	ldr r0, [sb, #8]
	bl MOD04_022006B4
_02200664:
	ldr r0, [sb, #0x10]
	cmp r0, #1
	addne sp, sp, #0x20
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	bl MOD04_021F025C
	ldr r1, [sb, #0x28]
	cmp r0, r1
	addls sp, sp, #0x20
	ldmlsia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	ldr r3, [sb, #0x3c]
	ldr r4, [sb, #0x38]
	mov r0, #1
	mvn r1, #0
	mov r2, #0
	blx r4
	ldr r0, [sb, #8]
	bl MOD04_022006B4
	add sp, sp, #0x20
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_022006B0: .word UNK04_022113D8
	arm_func_end MOD04_022004BC

	arm_func_start MOD04_022006B4
MOD04_022006B4: ; 0x022006B4
	stmdb sp!, {r4, lr}
	bl MOD04_02200ED4
	movs r4, r0
	ldmeqia sp!, {r4, pc}
	ldr r0, [r4]
	mvn r1, #0
	cmp r0, r1
	beq _022006D8
	bl MOD04_021EFD9C
_022006D8:
	mvn r0, #0
	str r0, [r4]
	mov r0, #4
	str r0, [r4, #0x10]
	ldmia sp!, {r4, pc}
	arm_func_end MOD04_022006B4

	arm_func_start MOD04_022006EC
MOD04_022006EC: ; 0x022006EC
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	ldr ip, _022007B4 ; =UNK04_02210E5C
	mov r8, r0
	ldr r0, [ip]
	mov r7, r1
	cmp r0, #1
	mov r6, r2
	mov r5, r3
	movne r0, #2
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
	bl MOD04_022007B8
	cmp r0, #0
	moveq r0, #3
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	bl MOD04_02200E0C
	movs r4, r0
	moveq r0, #1
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	str r8, [r4, #4]
	str r6, [r4, #0xc]
	str r7, [r4, #8]
	ldr r1, [sp, #0x18]
	str r5, [r4, #0x34]
	mov r0, #2
	ldr r2, [sp, #0x1c]
	str r1, [r4, #0x38]
	mov r1, r0
	str r2, [r4, #0x3c]
	mov r2, #0
	bl MOD04_021EFDB8
	str r0, [r4]
	mov r0, #0
	str r0, [r4, #0x20]
	strb r0, [r4, #0x32]
	strb r0, [r4, #0x33]
	str r0, [r4, #0x2c]
	strh r0, [r4, #0x30]
	str r0, [r4, #0x24]
	ldr r1, [r4]
	mvn r0, #0
	cmp r1, r0
	bne _022007A4
	mov r0, r4
	bl MOD04_02200DA4
	mov r0, #2
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_022007A4:
	mov r0, r4
	bl MOD04_022009F8
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_022007B4: .word UNK04_02210E5C
	arm_func_end MOD04_022006EC

	arm_func_start MOD04_022007B8
MOD04_022007B8: ; 0x022007B8
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r0, _02200848 ; =UNK04_022113D0
	ldr r0, [r0]
	cmp r0, #0
	bne _022007E8
	ldr r0, _0220084C ; =UNK04_022113C8
	ldr r1, _02200850 ; =UNK04_0220F020
	ldr r0, [r0]
	bl MOD04_02200860
	ldr r1, _02200848 ; =UNK04_022113D0
	str r0, [r1]
_022007E8:
	ldr r0, _02200854 ; =UNK04_022113CC
	ldr r0, [r0]
	cmp r0, #0
	bne _02200810
	ldr r0, _02200858 ; =UNK04_022113C4
	ldr r1, _0220085C ; =UNK04_0220F03C
	ldr r0, [r0]
	bl MOD04_02200860
	ldr r1, _02200854 ; =UNK04_022113CC
	str r0, [r1]
_02200810:
	ldr r0, _02200848 ; =UNK04_022113D0
	ldr r0, [r0]
	cmp r0, #0
	beq _02200830
	ldr r0, _02200854 ; =UNK04_022113CC
	ldr r0, [r0]
	cmp r0, #0
	bne _0220083C
_02200830:
	add sp, sp, #4
	mov r0, #0
	ldmfd sp!, {pc}
_0220083C:
	mov r0, #1
	add sp, sp, #4
	ldmfd sp!, {pc}
	.align 2, 0
_02200848: .word UNK04_022113D0
_0220084C: .word UNK04_022113C8
_02200850: .word UNK04_0220F020
_02200854: .word UNK04_022113CC
_02200858: .word UNK04_022113C4
_0220085C: .word UNK04_0220F03C
	arm_func_end MOD04_022007B8

	arm_func_start MOD04_02200860
MOD04_02200860: ; 0x02200860
	stmdb sp!, {lr}
	sub sp, sp, #0x84
	cmp r0, #0
	bne _0220088C
	ldr r2, _02200898 ; =UNK04_0220F058
	str r1, [sp]
	ldr r3, _0220089C ; =UNK04_02210EA0
	add r0, sp, #4
	mov r1, #0x80
	bl snprintf
	add r0, sp, #4
_0220088C:
	bl MOD04_022008A0
	add sp, sp, #0x84
	ldmfd sp!, {pc}
	.align 2, 0
_02200898: .word UNK04_0220F058
_0220089C: .word UNK04_02210EA0
	arm_func_end MOD04_02200860

	arm_func_start MOD04_022008A0
MOD04_022008A0: ; 0x022008A0
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl MOD04_021EFB38
	mvn r1, #0
	cmp r0, r1
	ldmneia sp!, {r4, pc}
	mov r0, r4
	bl SOC_GetHostByAddr
	cmp r0, #0
	moveq r0, #0
	ldrne r0, [r0, #0xc]
	ldrne r0, [r0]
	ldrne r0, [r0]
	ldmia sp!, {r4, pc}
	arm_func_end MOD04_022008A0

	arm_func_start MOD04_022008D8
MOD04_022008D8: ; 0x022008D8
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0x1c
	ldr lr, _022009F4 ; =UNK04_0220F018
	add r5, sp, #4
	ldrb r4, [lr]
	ldrb r3, [lr, #1]
	mov r2, #2
	mov r1, #7
	strb r4, [r5]
	strb r3, [r5, #1]
	ldrb ip, [lr, #2]
	ldrb r3, [lr, #3]
	mov r4, r0
	strb ip, [r5, #2]
	strb r3, [r5, #3]
	ldrb r3, [lr, #4]
	ldrb r0, [lr, #5]
	strb r3, [r5, #4]
	strb r0, [r5, #5]
	strb r2, [sp, #0xa]
	strb r1, [sp, #0xb]
	ldr r3, [r4, #8]
	mov r1, r3, lsr #0x18
	mov r0, r3, lsr #8
	mov r2, r3, lsl #8
	and r1, r1, #0xff
	and r0, r0, #0xff00
	mov r3, r3, lsl #0x18
	orr r0, r1, r0
	and r2, r2, #0xff0000
	and r1, r3, #0xff000000
	orr r0, r2, r0
	orr r0, r1, r0
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x2c]
	add r3, sp, #4
	str r0, [sp, #0x10]
	ldrh r0, [r4, #0x30]
	mov r1, r0, asr #8
	mov r0, r0, lsl #8
	and r1, r1, #0xff
	and r0, r0, #0xff00
	orr r0, r1, r0
	strh r0, [sp, #0x14]
	ldrb r0, [r4, #0x32]
	mvn r1, #0
	strb r0, [sp, #0x16]
	ldr r0, [r4, #0x10]
	cmp r0, #2
	movne r0, #1
	moveq r0, #0
	strb r0, [sp, #0x17]
	ldr r0, [r4, #4]
	cmp r0, r1
	ldreq r0, [r4]
	mov r1, #0x14
	str r1, [sp]
	ldrh r2, [r4, #0x30]
	ldr r1, [r4, #0x2c]
	bl MOD04_02200CEC
	bl MOD04_021F025C
	add r0, r0, #0x2bc
	str r0, [r4, #0x28]
	mov r0, #0xc
	str r0, [r4, #0x24]
	ldrb r0, [r4, #0x32]
	cmp r0, #0
	movne r0, #1
	strneb r0, [r4, #0x33]
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_022009F4: .word UNK04_0220F018
	arm_func_end MOD04_022008D8

	arm_func_start MOD04_022009F8
MOD04_022009F8: ; 0x022009F8
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x60
	ldr r7, _02200C30 ; =UNK04_0220F018
	mov r6, r0
	ldrb r4, [r7]
	ldrb r3, [r7, #1]
	add r5, sp, #4
	mov r2, #2
	strb r4, [r5]
	strb r3, [r5, #1]
	ldrb r4, [r7, #2]
	ldrb r3, [r7, #3]
	mov r1, #0
	mvn r0, #0
	strb r4, [r5, #2]
	strb r3, [r5, #3]
	ldrb r4, [r7, #4]
	ldrb r3, [r7, #5]
	strb r4, [r5, #4]
	strb r3, [r5, #5]
	strb r2, [r5, #6]
	strb r1, [r5, #7]
	ldr r2, [r6, #0xc]
	strb r2, [r5, #0xd]
	ldr r7, [r6, #8]
	mov r3, r7, lsr #0x18
	mov r2, r7, lsr #8
	mov r4, r7, lsl #8
	and r3, r3, #0xff
	and r2, r2, #0xff00
	mov r7, r7, lsl #0x18
	orr r2, r3, r2
	and r4, r4, #0xff0000
	and r3, r7, #0xff000000
	orr r2, r4, r2
	orr r2, r3, r2
	str r2, [r5, #8]
	ldr r2, [r6, #4]
	cmp r2, r0
	movne r1, #1
	strb r1, [r5, #0xe]
	bl MOD04_02200C78
	mov r7, r0
	bl MOD04_02200C78
	mov r8, r0
	bl MOD04_02200C78
	mov r4, r0
	bl MOD04_02200C78
	mov r2, #0
	mov r1, r7, lsl #0x18
	and r7, r1, #0xff000000
	mov r1, r8, lsl #8
	mov r0, r0, lsr #8
	and r3, r1, #0xff0000
	mov r1, r4, lsr #0x18
	and r1, r1, #0xff
	and r0, r0, #0xff00
	orr r0, r1, r0
	orr r0, r3, r0
	orr r3, r7, r0
	mov r1, r3, lsr #0x18
	strb r1, [sp, #0x13]
	mov r1, r3, lsr #8
	mov r0, r3, lsr #0x10
	strb r1, [sp, #0x15]
	strb r0, [sp, #0x14]
	ldr r1, _02200C34 ; =UNK04_02210EA0
	add r0, sp, #0x19
	strb r3, [sp, #0x16]
	strb r2, [sp, #0x17]
	strb r2, [sp, #0x18]
	bl strcpy
	ldr r0, _02200C34 ; =UNK04_02210EA0
	bl strlen
	ldrb r1, [r5, #0xe]
	add r4, r0, #0x16
	cmp r1, #0
	beq _02200B60
	ldr r0, [r6, #0x14]
	cmp r0, #0
	bne _02200B60
	mov r0, #0
	strb r0, [r5, #0xc]
	str r4, [sp]
	ldr r1, _02200C38 ; =UNK04_022113D0
	ldr r0, [r6, #4]
	ldr r1, [r1]
	ldr r2, _02200C3C ; =0x00006CFD
	mov r3, r5
	bl MOD04_02200CEC
_02200B60:
	ldr r0, [r6, #0x18]
	cmp r0, #0
	bne _02200B90
	mov r0, #1
	strb r0, [r5, #0xc]
	str r4, [sp]
	ldr r1, _02200C38 ; =UNK04_022113D0
	ldr r0, [r6]
	ldr r1, [r1]
	ldr r2, _02200C3C ; =0x00006CFD
	mov r3, r5
	bl MOD04_02200CEC
_02200B90:
	ldrb r0, [r5, #0xe]
	cmp r0, #0
	ldrne r8, [r6, #4]
	ldreq r8, [r6]
	cmp r0, #0
	ldrne r0, [r6, #4]
	ldreq r0, [r6]
	bl MOD04_02200C44
	mov r7, r0
	mov r0, r8
	bl MOD04_02200C44
	mov r1, r7, asr #8
	mov r0, r0, lsl #8
	and r1, r1, #0xff
	and r0, r0, #0xff00
	orr r0, r1, r0
	mov r0, r0, lsl #0x10
	mov r1, r0, lsr #0x10
	mov r0, r1, asr #8
	strb r1, [sp, #0x18]
	strb r0, [sp, #0x17]
	ldr r0, [r6, #0x1c]
	cmp r0, #0
	bne _02200C14
	mov r0, #2
	strb r0, [r5, #0xc]
	str r4, [sp]
	ldr r1, _02200C40 ; =UNK04_022113CC
	ldr r0, [r6]
	ldr r1, [r1]
	ldr r2, _02200C3C ; =0x00006CFD
	mov r3, r5
	bl MOD04_02200CEC
_02200C14:
	bl MOD04_021F025C
	add r0, r0, #0x1f4
	str r0, [r6, #0x28]
	mov r0, #0x1e
	str r0, [r6, #0x24]
	add sp, sp, #0x60
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_02200C30: .word UNK04_0220F018
_02200C34: .word UNK04_02210EA0
_02200C38: .word UNK04_022113D0
_02200C3C: .word 0x00006CFD
_02200C40: .word UNK04_022113CC
	arm_func_end MOD04_022009F8

	arm_func_start MOD04_02200C44
MOD04_02200C44: ; 0x02200C44
	stmdb sp!, {lr}
	sub sp, sp, #0xc
	mov r3, #8
	add r1, sp, #0
	add r2, sp, #8
	str r3, [sp, #8]
	bl MOD04_021EFB5C
	mvn r1, #0
	cmp r0, r1
	moveq r0, #0
	ldrneh r0, [sp, #2]
	add sp, sp, #0xc
	ldmfd sp!, {pc}
	arm_func_end MOD04_02200C44

	arm_func_start MOD04_02200C78
MOD04_02200C78: ; 0x02200C78
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	mov r5, #0
	bl MOD04_021EFE70
	movs r6, r0
	addeq sp, sp, #4
	moveq r0, r5
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	ldr r4, _02200CE8 ; =0x0100007F
	mov r7, r5
_02200CA0:
	ldr r0, [r6, #0xc]
	ldr r0, [r0, r7, lsl #2]
	cmp r0, #0
	beq _02200CDC
	ldr r1, [r0]
	cmp r1, r4
	beq _02200CD4
	mov r5, r1
	bl MOD04_021EFDEC
	cmp r0, #0
	addne sp, sp, #4
	movne r0, r5
	ldmneia sp!, {r4, r5, r6, r7, pc}
_02200CD4:
	add r7, r7, #1
	b _02200CA0
_02200CDC:
	mov r0, r5
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_02200CE8: .word 0x0100007F
	arm_func_end MOD04_02200C78

	arm_func_start MOD04_02200CEC
MOD04_02200CEC: ; 0x02200CEC
	stmdb sp!, {lr}
	sub sp, sp, #0x14
	mov ip, r2, asr #8
	mov r2, r2, lsl #8
	str r1, [sp, #0xc]
	mov r1, r3
	and r3, ip, #0xff
	and r2, r2, #0xff00
	orr r2, r3, r2
	mov lr, #2
	strh r2, [sp, #0xa]
	add r3, sp, #8
	strb lr, [sp, #9]
	str r3, [sp]
	mov ip, #8
	ldr r2, [sp, #0x18]
	mov r3, #0
	str ip, [sp, #4]
	bl MOD04_021EFBD4
	add sp, sp, #0x14
	ldmfd sp!, {pc}
	arm_func_end MOD04_02200CEC

	arm_func_start MOD04_02200D40
MOD04_02200D40: ; 0x02200D40
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r1, _02200D68 ; =UNK04_0220F018
	mov r2, #6
	bl memcmp
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	add sp, sp, #4
	ldmfd sp!, {pc}
	.align 2, 0
_02200D68: .word UNK04_0220F018
	arm_func_end MOD04_02200D40

	arm_func_start MOD04_02200D6C
MOD04_02200D6C: ; 0x02200D6C
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r0, _02200DA0 ; =UNK04_022113D4
	ldr r0, [r0]
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqia sp!, {pc}
	bl MOD04_021EF074
	ldr r0, _02200DA0 ; =UNK04_022113D4
	mov r1, #0
	str r1, [r0]
	add sp, sp, #4
	ldmfd sp!, {pc}
	.align 2, 0
_02200DA0: .word UNK04_022113D4
	arm_func_end MOD04_02200D6C

	arm_func_start MOD04_02200DA4
MOD04_02200DA4: ; 0x02200DA4
	stmdb sp!, {r4, r5, r6, lr}
	ldr r1, _02200E08 ; =UNK04_022113D4
	mov r6, r0
	ldr r0, [r1]
	mov r5, #0
	bl MOD04_021EF06C
	cmp r0, #0
	ldmleia sp!, {r4, r5, r6, pc}
	ldr r4, _02200E08 ; =UNK04_022113D4
_02200DC8:
	ldr r0, [r4]
	mov r1, r5
	bl MOD04_021EEFFC
	cmp r6, r0
	bne _02200DF0
	ldr r0, _02200E08 ; =UNK04_022113D4
	mov r1, r5
	ldr r0, [r0]
	bl MOD04_021EEDE0
	ldmia sp!, {r4, r5, r6, pc}
_02200DF0:
	ldr r0, [r4]
	add r5, r5, #1
	bl MOD04_021EF06C
	cmp r5, r0
	blt _02200DC8
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_02200E08: .word UNK04_022113D4
	arm_func_end MOD04_02200DA4

	arm_func_start MOD04_02200E0C
MOD04_02200E0C: ; 0x02200E0C
	stmdb sp!, {lr}
	sub sp, sp, #0x44
	mov r0, #0
	add r2, sp, #0
	mov r1, r0
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2, {r0, r1}
	ldr r0, _02200E9C ; =UNK04_022113D4
	ldr r0, [r0]
	cmp r0, #0
	bne _02200E68
	ldr r2, _02200EA0 ; =MOD04_02200EA4
	mov r0, #0x40
	mov r1, #4
	bl MOD04_021EF0E4
	ldr r1, _02200E9C ; =UNK04_022113D4
	str r0, [r1]
_02200E68:
	ldr r0, _02200E9C ; =UNK04_022113D4
	add r1, sp, #0
	ldr r0, [r0]
	bl MOD04_021EEFA8
	ldr r0, _02200E9C ; =UNK04_022113D4
	ldr r0, [r0]
	bl MOD04_021EF06C
	ldr r2, _02200E9C ; =UNK04_022113D4
	sub r1, r0, #1
	ldr r0, [r2]
	bl MOD04_021EEFFC
	add sp, sp, #0x44
	ldmfd sp!, {pc}
	.align 2, 0
_02200E9C: .word UNK04_022113D4
_02200EA0: .word MOD04_02200EA4
	arm_func_end MOD04_02200E0C

	arm_func_start MOD04_02200EA4
MOD04_02200EA4: ; 0x02200EA4
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4]
	mvn r1, #0
	cmp r0, r1
	beq _02200EC0
	bl MOD04_021EFD9C
_02200EC0:
	mvn r0, #0
	str r0, [r4]
	mov r0, #4
	str r0, [r4, #0x10]
	ldmia sp!, {r4, pc}
	arm_func_end MOD04_02200EA4

	arm_func_start MOD04_02200ED4
MOD04_02200ED4: ; 0x02200ED4
	stmdb sp!, {r4, r5, r6, lr}
	ldr r1, _02200F38 ; =UNK04_022113D4
	mov r6, r0
	ldr r0, [r1]
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r5, #0
	bl MOD04_021EF06C
	cmp r0, #0
	ble _02200F30
	ldr r4, _02200F38 ; =UNK04_022113D4
_02200F04:
	ldr r0, [r4]
	mov r1, r5
	bl MOD04_021EEFFC
	ldr r1, [r0, #8]
	cmp r1, r6
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, [r4]
	add r5, r5, #1
	bl MOD04_021EF06C
	cmp r5, r0
	blt _02200F04
_02200F30:
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_02200F38: .word UNK04_022113D4
	arm_func_end MOD04_02200ED4

	arm_func_start MOD04_02200F3C
MOD04_02200F3C: ; 0x02200F3C
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	ldr ip, _02201120 ; =0x0000082C
	sub sp, sp, ip
	mov sl, r0
	mov sb, r1
	mov r3, #0
	add r0, sp, #0x24
	add r2, sl, #0x84
	mov r1, #3
	str r3, [sp, #0x824]
	bl MOD04_02201DCC
	ldr r4, _02201124 ; =UNK04_022115D8
	mov r8, #0
	ldr r0, [r4]
	cmp r0, #0
	ble _02200FD0
	ldr fp, _02201128 ; =UNK04_0220F174
	ldr r5, _0220112C ; =UNK04_022115DC
	add r7, sp, #0x10
	add r6, sp, #0x24
_02200F8C:
	mov r0, r7
	mov r1, fp
	mov r2, r8
	bl sprintf
	mov r0, r6
	mov r1, r7
	bl MOD04_022021C0
	add r0, r5, r8, lsl #2
	ldmia r0, {r0}
	bl SOC_InetNtoA
	mov r1, r0
	mov r0, r6
	bl MOD04_022021C0
	add r8, r8, #1
	ldr r0, [r4]
	cmp r8, r0
	blt _02200F8C
_02200FD0:
	ldr r1, _02201130 ; =UNK04_0220F180
	add r0, sp, #0x24
	bl MOD04_022021C0
	ldr r1, [sl, #0xc0]
	add r0, sp, #0x24
	bl MOD04_02202220
	ldr r1, _02201134 ; =UNK04_0220F18C
	add r0, sp, #0x24
	bl MOD04_022021C0
	ldr r0, [sl, #0xc8]
	cmp r0, #0
	ldrne r1, _02201138 ; =UNK04_0220F194
	add r0, sp, #0x24
	ldreq r1, _0220113C ; =UNK04_0220F198
	bl MOD04_022021C0
	cmp sb, #0
	beq _0220102C
	ldr r1, _02201140 ; =UNK04_0220F19C
	add r0, sp, #0x24
	bl MOD04_022021C0
	add r0, sp, #0x24
	mov r1, sb
	bl MOD04_02202220
_0220102C:
	ldr r1, _02201144 ; =UNK04_0220F1AC
	add r0, sp, #0x24
	bl MOD04_022021C0
	add r0, sp, #0x24
	add r1, sl, #4
	bl MOD04_022021C0
	ldr r0, [sl, #0xa8]
	cmp r0, #0
	beq _02201084
	ldr r1, _02201148 ; =UNK04_0220F1B8
	add r0, sp, #0x24
	bl MOD04_022021C0
	ldr r1, [sl, #0x104]
	add r0, sp, #0x24
	bl MOD04_02202220
	ldr r1, _0220114C ; =UNK04_0220F1C4
	add r0, sp, #0x24
	bl MOD04_022021C0
	add r0, sl, #0x100
	ldrh r1, [r0, #8]
	add r0, sp, #0x24
	bl MOD04_02202220
_02201084:
	cmp sb, #2
	beq _022010B4
	mov r2, #0xff
	str r2, [sp]
	mov r3, #0
	str r3, [sp, #4]
	str r2, [sp, #8]
	add r1, sp, #0x24
	mov r0, sl
	str r3, [sp, #0xc]
	bl MOD04_022019B4
	b _022010D4
_022010B4:
	ldr r2, [sp, #0x824]
	rsb r0, r2, #0x800
	cmp r0, #1
	addge r1, r2, #1
	strge r1, [sp, #0x824]
	addge r0, sp, #0x24
	movge r1, #0
	strgeb r1, [r0, r2]
_022010D4:
	add r0, sl, #0xcc
	str r0, [sp]
	mov r0, #8
	str r0, [sp, #4]
	ldr r0, [sl]
	ldr r2, [sp, #0x824]
	add r1, sp, #0x24
	mov r3, #0
	bl MOD04_021EFBD4
	bl MOD04_021F025C
	str r0, [sl, #0xac]
	ldr r0, [sl, #0xac]
	cmp sb, #0
	str r0, [sl, #0xb0]
	movne r0, #0
	strne r0, [sl, #0xb4]
	ldr ip, _02201120 ; =0x0000082C
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02201120: .word 0x0000082C
_02201124: .word UNK04_022115D8
_02201128: .word UNK04_0220F174
_0220112C: .word UNK04_022115DC
_02201130: .word UNK04_0220F180
_02201134: .word UNK04_0220F18C
_02201138: .word UNK04_0220F194
_0220113C: .word UNK04_0220F198
_02201140: .word UNK04_0220F19C
_02201144: .word UNK04_0220F1AC
_02201148: .word UNK04_0220F1B8
_0220114C: .word UNK04_0220F1C4
	arm_func_end MOD04_02200F3C

	arm_func_start MOD04_02201150
MOD04_02201150: ; 0x02201150
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x810
	mov r4, r0
	mov r3, #0
	add r0, sp, #8
	add r2, r4, #0x84
	mov r1, #8
	str r3, [sp, #0x808]
	bl MOD04_02201DCC
	add r0, r4, #0xcc
	str r0, [sp]
	mov r0, #8
	str r0, [sp, #4]
	ldr r0, [r4]
	ldr r2, [sp, #0x808]
	add r1, sp, #8
	mov r3, #0
	bl MOD04_021EFBD4
	bl MOD04_021F025C
	str r0, [r4, #0xb0]
	add sp, sp, #0x810
	ldmia sp!, {r4, pc}
	arm_func_end MOD04_02201150

	arm_func_start MOD04_022011A8
MOD04_022011A8: ; 0x022011A8
	stmdb sp!, {r4, r5, r6, r7, r8, sb, lr}
	ldr ip, _02201504 ; =0x00000814
	sub sp, sp, ip
	movs r8, r0
	mov r0, #0
	str r0, [sp, #0x80c]
	ldreq r0, _02201508 ; =UNK04_0220F060
	mov r7, r2
	ldreq r8, [r0]
	ldrsb r0, [r1]
	mov r6, r3
	cmp r0, #0x3b
	bne _0220120C
	ldr r3, [r8, #0xd4]
	cmp r3, #0
	ldreq ip, _02201504 ; =0x00000814
	addeq sp, sp, ip
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, pc}
	mov r0, r1
	mov r1, r7
	mov r2, r6
	blx r3
	ldr ip, _02201504 ; =0x00000814
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
_0220120C:
	cmp r0, #0x5c
	bne _0220124C
	add r1, sp, #0xc
	mov r0, r8
	bl MOD04_022016A8
	str r6, [sp]
	mov r0, #8
	str r0, [sp, #4]
	ldr r0, [r8]
	ldr r2, [sp, #0x80c]
	add r1, sp, #0xc
	mov r3, #0
	bl MOD04_021EFBD4
	ldr ip, _02201504 ; =0x00000814
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
_0220124C:
	cmp r7, #7
	ldrlt ip, _02201504 ; =0x00000814
	addlt sp, sp, ip
	ldmltia sp!, {r4, r5, r6, r7, r8, sb, pc}
	and r0, r0, #0xff
	cmp r0, #0xfe
	ldrne ip, _02201504 ; =0x00000814
	addne sp, sp, ip
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, pc}
	ldrb r0, [r1, #1]
	cmp r0, #0xfd
	ldrne ip, _02201504 ; =0x00000814
	addne sp, sp, ip
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, pc}
	ldr r0, [r8, #0xb8]
	add r5, r1, #3
	cmp r0, #0
	movgt r0, #0
	strgt r0, [r8, #0xb8]
	ldrsb sb, [r1, #2]
	add r4, r1, #7
	add r0, sp, #0xc
	mov r1, sb
	mov r2, r5
	sub r7, r7, #7
	bl MOD04_02201DCC
	cmp sb, #8
	addls pc, pc, sb, lsl #2
	b _022014CC
_022012C0: ; jump table
	b _022012E4 ; case 0
	b _022012FC ; case 1
	b _02201338 ; case 2
	b _022014CC ; case 3
	b _02201370 ; case 4
	b _022014CC ; case 5
	b _022013F8 ; case 6
	b _022014CC ; case 7
	b _022014CC ; case 8
_022012E4:
	add r1, sp, #0xc
	mov r0, r8
	mov r2, r4
	mov r3, r7
	bl MOD04_022018F0
	b _022014D8
_022012FC:
	cmp r7, #0xd
	blt _02201320
	ldr r0, [r8, #0xa8]
	cmp r0, #0
	beq _02201320
	add r1, r4, r7
	mov r0, r8
	sub r1, r1, #0xd
	bl MOD04_02201C70
_02201320:
	add r1, sp, #0xc
	mov r0, r8
	mov r2, r4
	mov r3, r7
	bl MOD04_02201D2C
	b _022014D8
_02201338:
	ldr r0, [sp, #0x80c]
	cmp r7, #0x20
	movgt r7, #0x20
	add r3, sp, #0xc
	mov r5, #5
	mov r1, r4
	mov r2, r7
	add r0, r3, r0
	strb r5, [sp, #0xc]
	bl memcpy
	ldr r0, [sp, #0x80c]
	add r0, r0, r7
	str r0, [sp, #0x80c]
	b _022014D8
_02201370:
	ldr r1, [r8, #0xb8]
	mvn r0, #0
	cmp r1, r0
	ldreq ip, _02201504 ; =0x00000814
	addeq sp, sp, ip
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, pc}
	mov r0, #0
	str r0, [sp, #8]
_02201390:
	ldr r2, [sp, #8]
	add r0, r8, r2
	ldrsb r1, [r5, r2]
	ldrsb r0, [r0, #0x84]
	cmp r1, r0
	ldrne ip, _02201504 ; =0x00000814
	addne sp, sp, ip
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, pc}
	add r0, r2, #1
	str r0, [sp, #8]
	cmp r0, #4
	blt _02201390
	cmp r7, #2
	ldrlt ip, _02201504 ; =0x00000814
	addlt sp, sp, ip
	ldmltia sp!, {r4, r5, r6, r7, r8, sb, pc}
	mvn r0, #0
	str r0, [r8, #0xb8]
	ldrsb r0, [r4]
	ldr r2, [r8, #0x10c]
	ldr r3, [r8, #0x9c]
	add r1, r4, #1
	blx r3
	ldr ip, _02201504 ; =0x00000814
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
_022013F8:
	mov r0, #0
	str r0, [sp, #8]
_02201400:
	ldr r2, [sp, #8]
	add r0, r8, r2
	ldrsb r1, [r5, r2]
	ldrsb r0, [r0, #0x84]
	cmp r1, r0
	ldrne ip, _02201504 ; =0x00000814
	addne sp, sp, ip
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, pc}
	add r0, r2, #1
	str r0, [sp, #8]
	cmp r0, #4
	blt _02201400
	cmp r7, #4
	ldrlt ip, _02201504 ; =0x00000814
	addlt sp, sp, ip
	ldmltia sp!, {r4, r5, r6, r7, r8, sb, pc}
	mov r0, #7
	strb r0, [sp, #0xc]
	ldrb r1, [r4]
	ldrb r0, [r4, #1]
	ldr r2, [sp, #0x80c]
	add r5, sp, #0xc
	strb r1, [r5, r2]
	add r5, r5, r2
	strb r0, [r5, #1]
	ldrb r2, [r4, #2]
	ldrb r1, [r4, #3]
	add r3, sp, #8
	mov r0, r8
	strb r2, [r5, #2]
	strb r1, [r5, #3]
	ldr r1, [sp, #0x80c]
	add r1, r1, #4
	str r1, [sp, #0x80c]
	ldrb r2, [r4]
	ldrb r1, [r4, #1]
	strb r2, [r3]
	strb r1, [r3, #1]
	ldrb r2, [r4, #2]
	ldrb r1, [r4, #3]
	strb r2, [r3, #2]
	strb r1, [r3, #3]
	ldr r1, [sp, #8]
	bl MOD04_0220150C
	cmp r0, #0
	bne _022014D8
	mov r0, r8
	add r1, r4, #4
	sub r2, r7, #4
	bl MOD04_0220157C
	b _022014D8
_022014CC:
	ldr ip, _02201504 ; =0x00000814
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
_022014D8:
	str r6, [sp]
	mov r0, #8
	str r0, [sp, #4]
	ldr r0, [r8]
	ldr r2, [sp, #0x80c]
	add r1, sp, #0xc
	mov r3, #0
	bl MOD04_021EFBD4
	ldr ip, _02201504 ; =0x00000814
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_02201504: .word 0x00000814
_02201508: .word UNK04_0220F060
	arm_func_end MOD04_022011A8

	arm_func_start MOD04_0220150C
MOD04_0220150C: ; 0x0220150C
	stmdb sp!, {r4, lr}
	mov r3, #0
_02201514:
	add r2, r0, r3, lsl #2
	ldr r2, [r2, #0xd8]
	cmp r1, r2
	moveq r0, #1
	ldmeqia sp!, {r4, pc}
	add r3, r3, #1
	cmp r3, #0xa
	blt _02201514
	ldr r2, [r0, #0x100]
	ldr r3, _02201574 ; =0x66666667
	add lr, r2, #1
	smull r2, r4, r3, lr
	mov r4, r4, asr #2
	mov r2, lr, lsr #0x1f
	ldr ip, _02201578 ; =0x0000000A
	add r4, r2, r4
	smull r2, r3, ip, r4
	sub r4, lr, r2
	str r4, [r0, #0x100]
	ldr r2, [r0, #0x100]
	add r0, r0, r2, lsl #2
	str r1, [r0, #0xd8]
	mov r0, #0
	ldmia sp!, {r4, pc}
	.align 2, 0
_02201574: .word 0x66666667
_02201578: .word 0x0000000A
	arm_func_end MOD04_0220150C

	arm_func_start MOD04_0220157C
MOD04_0220157C: ; 0x0220157C
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0xc
	ldr ip, _022016A4 ; =UNK04_0220BCD8
	mov r3, r0
	ldrb r7, [ip]
	ldrb r6, [ip, #1]
	ldrb r5, [ip, #2]
	ldrb r4, [ip, #3]
	ldrb lr, [ip, #4]
	ldrb r0, [ip, #5]
	strb r5, [sp, #2]
	strb r4, [sp, #3]
	strb r7, [sp]
	strb r6, [sp, #1]
	strb lr, [sp, #4]
	strb r0, [sp, #5]
	cmp r2, #0xa
	add r4, sp, #0
	mov r5, #1
	blt _022015F8
	mov r6, #0
_022015D0:
	ldrb ip, [r4]
	ldrb r0, [r1, r6]
	cmp ip, r0
	movne r5, #0
	bne _022015FC
	add r6, r6, #1
	cmp r6, #6
	add r4, r4, #1
	blt _022015D0
	b _022015FC
_022015F8:
	mov r5, #0
_022015FC:
	cmp r5, #0
	beq _0220167C
	add r2, r1, #6
	ldrb r1, [r1, #6]
	ldrb r0, [r2, #1]
	add ip, sp, #8
	strb r1, [ip]
	strb r0, [ip, #1]
	ldrb r1, [r2, #2]
	ldrb r0, [r2, #3]
	strb r1, [ip, #2]
	strb r0, [ip, #3]
	ldr r2, [r3, #0xa0]
	cmp r2, #0
	addeq sp, sp, #0xc
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	ldr lr, [sp, #8]
	ldr r1, [r3, #0x10c]
	mov r3, lr, lsr #0x18
	mov r0, lr, lsr #8
	mov ip, lr, lsl #8
	and r3, r3, #0xff
	and r0, r0, #0xff00
	mov lr, lr, lsl #0x18
	orr r0, r3, r0
	and ip, ip, #0xff0000
	and r3, lr, #0xff000000
	orr r0, ip, r0
	orr r0, r3, r0
	blx r2
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, pc}
_0220167C:
	ldr ip, [r3, #0xa4]
	cmp ip, #0
	addeq sp, sp, #0xc
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	mov r0, r1
	mov r1, r2
	ldr r2, [r3, #0x10c]
	blx ip
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_022016A4: .word UNK04_0220BCD8
	arm_func_end MOD04_0220157C

	arm_func_start MOD04_022016A8
MOD04_022016A8: ; 0x022016A8
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r4, r1
	mov r2, #1
	mov r5, r0
	str r2, [r4, #0x800]
	mov r3, #0x5c
	mov r2, #0
	strb r3, [r4]
	bl MOD04_02201714
	mov r0, r5
	mov r1, r4
	mov r2, #1
	bl MOD04_02201714
	mov r0, r5
	mov r1, r4
	mov r2, #2
	bl MOD04_02201714
	ldr r1, _02201710 ; =UNK04_0220F1D0
	mov r0, r4
	bl MOD04_022021C0
	ldr r0, [r4, #0x800]
	sub r0, r0, #1
	str r0, [r4, #0x800]
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_02201710: .word UNK04_0220F1D0
	arm_func_end MOD04_022016A8

	arm_func_start MOD04_02201714
MOD04_02201714: ; 0x02201714
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x194
	mov r8, r2
	sub r2, r8, #1
	mov r3, #0
	mov sl, r0
	cmp r2, #1
	movhi r0, #1
	mov sb, r1
	str r3, [sp, #0x18c]
	strhi r0, [sp]
	bhi _02201758
	ldr r1, [sl, #0x10c]
	ldr r2, [sl, #0x98]
	mov r0, r8
	blx r2
	str r0, [sp]
_02201758:
	ldr r2, [sl, #0x10c]
	ldr r3, [sl, #0x94]
	add r1, sp, #0x8c
	mov r0, r8
	blx r3
	ldr r1, [sp, #0x18c]
	mov r0, #0
	str r0, [sp, #4]
	cmp r1, #0
	addle sp, sp, #0x194
	ldmleia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	add r6, sp, #0x8c
	str r0, [sp, #8]
	mov r4, #0x5c
_02201790:
	ldrb r1, [r6]
	ldr r0, _022018E0 ; =UNK04_0220F3A8
	ldr fp, [r0, r1, lsl #2]
	cmp fp, #0
	ldreq fp, _022018E4 ; =UNK04_0220F1E4
	cmp r8, #0
	bne _02201804
	mov r1, fp
	mov r0, sb
	bl MOD04_022021C0
	ldr r0, [sb, #0x800]
	mov r1, sb
	sub r0, r0, #1
	strb r4, [sb, r0]
	ldr r5, [sb, #0x800]
	ldrb r0, [r6]
	ldr r2, [sl, #0x10c]
	ldr r3, [sl, #0x88]
	blx r3
	ldr r0, [sb, #0x800]
	cmp r5, r0
	bne _022017F4
	ldr r1, _022018E8 ; =UNK04_0220F1EC
	mov r0, sb
	bl MOD04_022021C0
_022017F4:
	ldr r0, [sb, #0x800]
	sub r0, r0, #1
	strb r4, [sb, r0]
	b _022018BC
_02201804:
	ldr r0, [sp]
	ldr r7, [sp, #8]
	cmp r0, #0
	ble _022018BC
_02201814:
	ldr r1, _022018EC ; =UNK04_0220F1F0
	add r0, sp, #0xc
	mov r2, fp
	mov r3, r7
	bl sprintf
	mov r0, sb
	add r1, sp, #0xc
	bl MOD04_022021C0
	ldr r0, [sb, #0x800]
	cmp r8, #1
	sub r0, r0, #1
	strb r4, [sb, r0]
	ldr r5, [sb, #0x800]
	bne _02201868
	ldrb r0, [r6]
	mov r1, r7
	mov r2, sb
	ldr r3, [sl, #0x10c]
	ldr ip, [sl, #0x8c]
	blx ip
	b _02201888
_02201868:
	cmp r8, #2
	bne _02201888
	ldrb r0, [r6]
	mov r1, r7
	mov r2, sb
	ldr r3, [sl, #0x10c]
	ldr ip, [sl, #0x90]
	blx ip
_02201888:
	ldr r0, [sb, #0x800]
	cmp r5, r0
	bne _022018A0
	ldr r1, _022018E8 ; =UNK04_0220F1EC
	mov r0, sb
	bl MOD04_022021C0
_022018A0:
	ldr r0, [sb, #0x800]
	add r7, r7, #1
	sub r0, r0, #1
	strb r4, [sb, r0]
	ldr r0, [sp]
	cmp r7, r0
	blt _02201814
_022018BC:
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x18c]
	add r0, r0, #1
	add r6, r6, #1
	str r0, [sp, #4]
	cmp r0, r1
	blt _02201790
	add sp, sp, #0x194
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022018E0: .word UNK04_0220F3A8
_022018E4: .word UNK04_0220F1E4
_022018E8: .word UNK04_0220F1EC
_022018EC: .word UNK04_0220F1F0
	arm_func_end MOD04_02201714

	arm_func_start MOD04_022018F0
MOD04_022018F0: ; 0x022018F0
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x14
	mov r4, #0
	cmp r3, #3
	addlt sp, sp, #0x14
	mov lr, r4
	mov ip, r4
	ldmltia sp!, {r4, r5, r6, r7, pc}
	ldrb r7, [r2], #1
	sub r3, r3, #1
	cmp r7, #0
	beq _02201930
	cmp r7, #0xff
	movne r4, r2
	addne r2, r2, r7
	subne r3, r3, r7
_02201930:
	cmp r3, #2
	addlt sp, sp, #0x14
	ldmltia sp!, {r4, r5, r6, r7, pc}
	ldrb r6, [r2], #1
	sub r3, r3, #1
	cmp r6, #0
	beq _0220195C
	cmp r6, #0xff
	movne lr, r2
	addne r2, r2, r6
	subne r3, r3, r6
_0220195C:
	cmp r3, #1
	addlt sp, sp, #0x14
	ldmltia sp!, {r4, r5, r6, r7, pc}
	ldrb r5, [r2]
	sub r3, r3, #1
	cmp r5, #0
	beq _02201984
	cmp r5, #0xff
	addne ip, r2, #1
	subne r3, r3, r5
_02201984:
	cmp r3, #0
	addlt sp, sp, #0x14
	ldmltia sp!, {r4, r5, r6, r7, pc}
	str r6, [sp]
	str lr, [sp, #4]
	str r5, [sp, #8]
	mov r2, r7
	mov r3, r4
	str ip, [sp, #0xc]
	bl MOD04_022019B4
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, pc}
	arm_func_end MOD04_022018F0

	arm_func_start MOD04_022019B4
MOD04_022019B4: ; 0x022019B4
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	str r3, [sp]
	mov r3, r2
	mov r2, #0
	mov r5, r0
	mov r4, r1
	bl MOD04_02201A14
	ldr ip, [sp, #0x14]
	ldr r3, [sp, #0x10]
	mov r0, r5
	mov r1, r4
	mov r2, #1
	str ip, [sp]
	bl MOD04_02201A14
	ldr r0, [sp, #0x1c]
	ldr r3, [sp, #0x18]
	str r0, [sp]
	mov r0, r5
	mov r1, r4
	mov r2, #2
	bl MOD04_02201A14
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	arm_func_end MOD04_022019B4

	arm_func_start MOD04_02201A14
MOD04_02201A14: ; 0x02201A14
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x114
	movs fp, r3
	mov r3, #0
	ldr r7, [sp, #0x138]
	str r3, [sp, #0x10c]
	mov sl, r0
	mov sb, r1
	mov r8, r2
	addeq sp, sp, #0x114
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	sub r0, r8, #1
	cmp r0, #1
	bhi _02201AC0
	ldr r0, [sb, #0x800]
	rsb r0, r0, #0x800
	cmp r0, #2
	addlo sp, sp, #0x114
	ldmloia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, [sl, #0x10c]
	ldr r2, [sl, #0x98]
	mov r0, r8
	blx r2
	str r0, [sp]
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r1, r0, asr #8
	mov r0, r0, lsl #8
	and r1, r1, #0xff
	and r0, r0, #0xff00
	orr r0, r1, r0
	strh r0, [sp, #8]
	add r0, sp, #8
	ldrb r1, [r0]
	ldr r2, [sb, #0x800]
	ldrb r0, [r0, #1]
	add r3, sb, r2
	strb r1, [sb, r2]
	strb r0, [r3, #1]
	ldr r0, [sb, #0x800]
	add r0, r0, #2
	str r0, [sb, #0x800]
	b _02201AC8
_02201AC0:
	mov r0, #1
	str r0, [sp]
_02201AC8:
	cmp fp, #0xff
	bne _02201B9C
	ldr r2, [sl, #0x10c]
	ldr r3, [sl, #0x94]
	add r1, sp, #0xc
	mov r0, r8
	blx r3
	ldr r0, [sp, #0x10c]
	mov r7, #0
	cmp r0, #0
	ble _02201B64
	ldr fp, _02201C64 ; =UNK04_0220F1E4
	ldr r4, _02201C68 ; =UNK04_0220F3A8
	add r5, sp, #0xc
_02201B00:
	ldrb r0, [r5]
	ldr r1, [r4, r0, lsl #2]
	mov r0, sb
	cmp r1, #0
	moveq r1, fp
	bl MOD04_022021C0
	cmp r8, #0
	bne _02201B50
	ldrb r0, [r5]
	ldr r2, [sl, #0x10c]
	ldr r3, [sl, #0x88]
	mov r1, sb
	ldr r6, [sb, #0x800]
	blx r3
	ldr r0, [sb, #0x800]
	cmp r6, r0
	bne _02201B50
	ldr r1, _02201C6C ; =UNK04_0220F1EC
	mov r0, sb
	bl MOD04_022021C0
_02201B50:
	ldr r0, [sp, #0x10c]
	add r7, r7, #1
	cmp r7, r0
	add r5, r5, #1
	blt _02201B00
_02201B64:
	ldr r1, [sb, #0x800]
	rsb r0, r1, #0x800
	cmp r0, #1
	addlt sp, sp, #0x114
	ldmltia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	add r0, r1, #1
	str r0, [sb, #0x800]
	mov r0, #0
	strb r0, [sb, r1]
	ldr fp, [sp, #0x10c]
	cmp r8, #0
	add r7, sp, #0xc
	addeq sp, sp, #0x114
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02201B9C:
	ldr r0, [sp]
	mov r6, #0
	cmp r0, #0
	addle sp, sp, #0x114
	ldmleia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	str r6, [sp, #4]
_02201BB4:
	ldr r5, [sp, #4]
	cmp fp, #0
	ble _02201C4C
_02201BC0:
	cmp r8, #0
	ldr r4, [sb, #0x800]
	bne _02201BE4
	ldrb r0, [r7, r5]
	ldr r2, [sl, #0x10c]
	ldr r3, [sl, #0x88]
	mov r1, sb
	blx r3
	b _02201C28
_02201BE4:
	cmp r8, #1
	bne _02201C08
	ldrb r0, [r7, r5]
	ldr r3, [sl, #0x10c]
	ldr ip, [sl, #0x8c]
	mov r1, r6
	mov r2, sb
	blx ip
	b _02201C28
_02201C08:
	cmp r8, #2
	bne _02201C28
	ldrb r0, [r7, r5]
	ldr r3, [sl, #0x10c]
	ldr ip, [sl, #0x90]
	mov r1, r6
	mov r2, sb
	blx ip
_02201C28:
	ldr r0, [sb, #0x800]
	cmp r4, r0
	bne _02201C40
	ldr r1, _02201C6C ; =UNK04_0220F1EC
	mov r0, sb
	bl MOD04_022021C0
_02201C40:
	add r5, r5, #1
	cmp r5, fp
	blt _02201BC0
_02201C4C:
	ldr r0, [sp]
	add r6, r6, #1
	cmp r6, r0
	blt _02201BB4
	add sp, sp, #0x114
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02201C64: .word UNK04_0220F1E4
_02201C68: .word UNK04_0220F3A8
_02201C6C: .word UNK04_0220F1EC
	arm_func_end MOD04_02201A14

	arm_func_start MOD04_02201C70
MOD04_02201C70: ; 0x02201C70
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	mov r4, r0
	mov r0, r1
	ldr r1, _02201D28 ; =UNK04_0220F1F8
	add r2, sp, #0
	add r3, sp, #4
	bl sscanf
	ldr r0, [sp]
	ldr lr, [sp, #4]
	mov r2, r0, lsr #0x18
	mov r1, r0, lsr #8
	mov r3, r0, lsl #8
	mov ip, r0, lsl #0x18
	and r2, r2, #0xff
	and r1, r1, #0xff00
	orr r1, r2, r1
	and r3, r3, #0xff0000
	and r2, ip, #0xff000000
	orr r1, r3, r1
	orrs r2, r2, r1
	mov r0, lr, lsl #0x10
	str r2, [sp]
	addeq sp, sp, #8
	mov r1, r0, lsr #0x10
	ldmeqia sp!, {r4, pc}
	cmp r1, #0
	addeq sp, sp, #8
	ldmeqia sp!, {r4, pc}
	ldr r0, [r4, #0x104]
	cmp r0, r2
	bne _02201D04
	add r0, r4, #0x100
	ldrh r0, [r0, #8]
	cmp r0, r1
	addeq sp, sp, #8
	ldmeqia sp!, {r4, pc}
_02201D04:
	str r2, [r4, #0x104]
	add r0, r4, #0x100
	strh r1, [r0, #8]
	ldr r0, [sp]
	ldr r2, [r4, #0x10c]
	ldr r3, [r4, #0xa8]
	blx r3
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	.align 2, 0
_02201D28: .word UNK04_0220F1F8
	arm_func_end MOD04_02201C70

	arm_func_start MOD04_02201D2C
MOD04_02201D2C: ; 0x02201D2C
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x48
	mov r5, r3
	cmp r5, #1
	mov r6, r0
	mov r4, r1
	addlt sp, sp, #0x48
	ldmltia sp!, {r4, r5, r6, pc}
	cmp r5, #0x41
	addgt sp, sp, #0x48
	ldmgtia sp!, {r4, r5, r6, pc}
	sub r0, r5, #1
	ldrsb r0, [r2, r0]
	cmp r0, #0
	addne sp, sp, #0x48
	ldmneia sp!, {r4, r5, r6, pc}
	add r0, sp, #0
	mov r1, r2
	bl strcpy
	add r0, r6, #0x44
	bl strlen
	mov r1, r0
	add r2, sp, #0
	add r0, r6, #0x44
	sub r3, r5, #1
	bl MOD04_02201E0C
	ldr r2, [r4, #0x800]
	sub r1, r5, #1
	add r0, sp, #0
	add r2, r4, r2
	bl MOD04_02201F50
	ldr r0, [r4, #0x800]
	add r0, r4, r0
	bl strlen
	ldr r1, [r4, #0x800]
	add r0, r0, #1
	add r0, r1, r0
	str r0, [r4, #0x800]
	add sp, sp, #0x48
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end MOD04_02201D2C

	arm_func_start MOD04_02201DCC
MOD04_02201DCC: ; 0x02201DCC
	stmdb sp!, {lr}
	sub sp, sp, #4
	strb r1, [r0]
	ldrb ip, [r2]
	ldrb r3, [r2, #1]
	add lr, r0, #1
	mov r1, #5
	strb ip, [r0, #1]
	strb r3, [lr, #1]
	ldrb r3, [r2, #2]
	ldrb r2, [r2, #3]
	strb r3, [lr, #2]
	strb r2, [lr, #3]
	str r1, [r0, #0x800]
	add sp, sp, #4
	ldmfd sp!, {pc}
	arm_func_end MOD04_02201DCC

	arm_func_start MOD04_02201E0C
MOD04_02201E0C: ; 0x02201E0C
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x104
	str r1, [sp]
	add r4, sp, #4
	mov sl, r0
	mov sb, r2
	mov r8, r3
	mov r1, #0
_02201E2C:
	add r0, r1, #1
	mov r0, r0, lsl #0x10
	strb r1, [r4], #1
	mov r1, r0, asr #0x10
	cmp r1, #0x100
	blt _02201E2C
	mov r7, #0
	add r5, sp, #4
	mov r6, r7
	mov r4, r7
	mov fp, r5
_02201E58:
	ldrb r3, [r5]
	ldrb r2, [sl, r7]
	ldr r1, [sp]
	add r0, r7, #1
	add r2, r3, r2
	add r2, r6, r2
	mov r3, r2, lsr #0x1f
	rsb r2, r3, r2, lsl #24
	add r2, r3, r2, ror #24
	and r6, r2, #0xff
	bl _s32_div_f
	and r7, r1, #0xff
	mov r0, r5
	add r1, fp, r6
	bl MOD04_0220206C
	add r0, r4, #1
	mov r0, r0, lsl #0x10
	mov r4, r0, asr #0x10
	cmp r4, #0x100
	add r5, r5, #1
	blt _02201E58
	mov r6, #0
	cmp r8, #0
	mov r5, r6
	mov r7, r6
	addle sp, sp, #0x104
	ldmleia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	add r4, sp, #4
_02201EC8:
	ldrb r0, [sb, r7]
	add r0, r6, r0
	add r0, r0, #1
	mov r1, r0, lsr #0x1f
	rsb r0, r1, r0, lsl #24
	add r0, r1, r0, ror #24
	and r6, r0, #0xff
	ldrb r1, [r4, r6]
	add r0, r4, r6
	add r1, r1, r5
	mov r2, r1, lsr #0x1f
	rsb r1, r2, r1, lsl #24
	add r1, r2, r1, ror #24
	and r5, r1, #0xff
	add r1, r4, r5
	bl MOD04_0220206C
	ldrb r2, [r4, r6]
	ldrb r1, [r4, r5]
	add r3, r7, #1
	ldrb r0, [sb, r7]
	add r1, r2, r1
	mov r2, r1, lsr #0x1f
	rsb r1, r2, r1, lsl #24
	add r1, r2, r1, ror #24
	and r1, r1, #0xff
	ldrb r2, [r4, r1]
	mov r1, r3, lsl #0x10
	eor r0, r0, r2
	strb r0, [sb, r7]
	mov r7, r1, asr #0x10
	cmp r7, r8
	blt _02201EC8
	add sp, sp, #0x104
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end MOD04_02201E0C

	arm_func_start MOD04_02201F50
MOD04_02201F50: ; 0x02201F50
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xc
	mov sb, r1
	mov sl, r0
	mov r8, r2
	cmp sb, #0
	mov r7, #0
	ble _02202010
	mov r4, r7
	str r7, [sp]
	mov fp, r7
_02201F7C:
	mov r2, fp
	add r1, sp, #4
_02201F84:
	cmp r7, sb
	ldrltb r0, [sl], #1
	add r2, r2, #1
	add r7, r7, #1
	strltb r0, [r1]
	strgeb r4, [r1]
	cmp r2, #2
	add r1, r1, #1
	ble _02201F84
	ldrb r5, [sp, #4]
	ldrb r3, [sp, #5]
	ldrb r2, [sp, #6]
	and r1, r5, #3
	and r0, r3, #0xf
	mov r5, r5, asr #2
	mov r1, r1, lsl #4
	strb r5, [sp, #7]
	add r3, r1, r3, asr #4
	mov r0, r0, lsl #2
	add r1, r0, r2, asr #6
	and r0, r2, #0x3f
	ldr r5, [sp]
	add r6, sp, #7
	strb r3, [sp, #8]
	strb r1, [sp, #9]
	strb r0, [sp, #0xa]
_02201FEC:
	ldrb r0, [r6]
	bl MOD04_02202020
	add r5, r5, #1
	cmp r5, #3
	strb r0, [r8], #1
	add r6, r6, #1
	ble _02201FEC
	cmp r7, sb
	blt _02201F7C
_02202010:
	mov r0, #0
	strb r0, [r8]
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end MOD04_02201F50

	arm_func_start MOD04_02202020
MOD04_02202020: ; 0x02202020
	cmp r0, #0x1a
	addlo r0, r0, #0x41
	andlo r0, r0, #0xff
	bxlo lr
	cmp r0, #0x34
	addlo r0, r0, #0x47
	andlo r0, r0, #0xff
	bxlo lr
	cmp r0, #0x3e
	sublo r0, r0, #4
	andlo r0, r0, #0xff
	bxlo lr
	cmp r0, #0x3e
	moveq r0, #0x2b
	bxeq lr
	cmp r0, #0x3f
	moveq r0, #0x2f
	movne r0, #0
	bx lr
	arm_func_end MOD04_02202020

	arm_func_start MOD04_0220206C
MOD04_0220206C: ; 0x0220206C
	ldrb r3, [r0]
	ldrb r2, [r1]
	strb r2, [r0]
	strb r3, [r1]
	bx lr
	arm_func_end MOD04_0220206C

	arm_func_start MOD04_02202080
MOD04_02202080: ; 0x02202080
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	mov r4, r1, asr #8
	mov r1, r1, lsl #8
	mov r6, r2
	mov r5, #2
	and r2, r4, #0xff
	and r1, r1, #0xff00
	strb r5, [r6, #1]
	orr r1, r2, r1
	strh r1, [r6, #2]
	mov r4, #0
	movs r7, r0
	mov r5, r3
	streq r4, [r6, #4]
	beq _022020D0
	bl MOD04_021EFB38
	str r0, [r6, #4]
_022020D0:
	ldr r1, [r6, #4]
	mvn r0, #0
	cmp r1, r0
	bne _0220211C
	ldr r1, _02202130 ; =UNK04_0220F204
	mov r0, r7
	bl strcmp
	cmp r0, #0
	beq _0220211C
	mov r0, r7
	bl SOC_GetHostByAddr
	movs r4, r0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	ldr r0, [r4, #0xc]
	ldr r0, [r0]
	ldr r0, [r0]
	str r0, [r6, #4]
_0220211C:
	cmp r5, #0
	strne r4, [r5]
	mov r0, #1
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_02202130: .word UNK04_0220F204
	arm_func_end MOD04_02202080

	arm_func_start MOD04_02202134
MOD04_02202134: ; 0x02202134
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	bl MOD04_021EFE70
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqia sp!, {r4, r5, pc}
	ldr r1, _022021B8 ; =UNK04_022115D8
	mov r2, #0
	str r2, [r1]
	ldr ip, _022021BC ; =UNK04_022115DC
_0220215C:
	ldr r3, [r1]
	ldr r2, [r0, #0xc]
	mov r5, r3, lsl #2
	ldr r4, [r2, r3, lsl #2]
	cmp r4, #0
	addeq sp, sp, #4
	ldmeqia sp!, {r4, r5, pc}
	ldrb r3, [r4]
	ldrb r2, [r4, #1]
	add lr, ip, r5
	strb r3, [ip, r5]
	strb r2, [lr, #1]
	ldrb r3, [r4, #2]
	ldrb r2, [r4, #3]
	strb r3, [lr, #2]
	strb r2, [lr, #3]
	ldr r2, [r1]
	add r2, r2, #1
	str r2, [r1]
	cmp r2, #5
	blt _0220215C
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_022021B8: .word UNK04_022115D8
_022021BC: .word UNK04_022115DC
	arm_func_end MOD04_02202134

	arm_func_start MOD04_022021C0
MOD04_022021C0: ; 0x022021C0
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r1
	mov r4, r0
	mov r0, r6
	bl strlen
	ldr r3, [r4, #0x800]
	add r5, r0, #1
	rsb r0, r3, #0x800
	cmp r5, r0
	movgt r5, r0
	cmp r5, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r1, r6
	mov r2, r5
	add r0, r4, r3
	bl memcpy
	ldr r0, [r4, #0x800]
	mov r1, #0
	add r0, r0, r5
	str r0, [r4, #0x800]
	ldr r0, [r4, #0x800]
	sub r0, r0, #1
	strb r1, [r4, r0]
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end MOD04_022021C0

	arm_func_start MOD04_02202220
MOD04_02202220: ; 0x02202220
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x18
	mov r2, r1
	mov r4, r0
	ldr r1, _02202250 ; =UNK04_0220F214
	add r0, sp, #0
	bl sprintf
	add r1, sp, #0
	mov r0, r4
	bl MOD04_022021C0
	add sp, sp, #0x18
	ldmia sp!, {r4, pc}
	.align 2, 0
_02202250: .word UNK04_0220F214
	arm_func_end MOD04_02202220

	arm_func_start MOD04_02202254
MOD04_02202254: ; 0x02202254
	ldr r3, [r0, #0x100]
	cmp r3, #0xfe
	bxge lr
	cmp r1, #1
	bxlt lr
	cmp r1, #0xfe
	bxgt lr
	add r2, r3, #1
	str r2, [r0, #0x100]
	strb r1, [r0, r3]
	bx lr
	arm_func_end MOD04_02202254

	arm_func_start MOD04_02202280
MOD04_02202280: ; 0x02202280
	stmdb sp!, {r4, lr}
	movs r4, r0
	ldreq r0, _02202300 ; =UNK04_0220F060
	ldreq r4, [r0]
	ldr r0, [r4, #0xbc]
	cmp r0, #0
	beq _022022A8
	mov r0, r4
	mov r1, #2
	bl MOD04_02200F3C
_022022A8:
	ldr r0, [r4]
	mvn r1, #0
	cmp r0, r1
	beq _022022C8
	ldr r1, [r4, #0xc4]
	cmp r1, #0
	beq _022022C8
	bl MOD04_021EFD9C
_022022C8:
	mvn r0, #0
	str r0, [r4]
	mov r0, #0
	str r0, [r4, #0xac]
	ldr r0, [r4, #0xc4]
	cmp r0, #0
	beq _022022E8
	bl MOD04_021F0248
_022022E8:
	ldr r0, _02202304 ; =UNK04_0220F064
	cmp r4, r0
	ldmeqia sp!, {r4, pc}
	mov r0, r4
	bl MOD04_021DD82C
	ldmia sp!, {r4, pc}
	.align 2, 0
_02202300: .word UNK04_0220F060
_02202304: .word UNK04_0220F064
	arm_func_end MOD04_02202280

	arm_func_start MOD04_02202308
MOD04_02202308: ; 0x02202308
	stmdb sp!, {r4, lr}
	movs r4, r0
	ldreq r0, _0220235C ; =UNK04_0220F060
	ldreq r4, [r0]
	ldr r0, [r4, #0xbc]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	bl MOD04_021F025C
	ldr r2, [r4, #0xac]
	ldr r1, _02202360 ; =0x00002710
	sub r0, r0, r2
	cmp r0, r1
	movlo r0, #1
	strlo r0, [r4, #0xb4]
	ldmloia sp!, {r4, pc}
	mov r0, r4
	mov r1, #1
	bl MOD04_02200F3C
	mov r0, #0
	str r0, [r4, #0xb4]
	ldmia sp!, {r4, pc}
	.align 2, 0
_0220235C: .word UNK04_0220F060
_02202360: .word 0x00002710
	arm_func_end MOD04_02202308

	arm_func_start MOD04_02202364
MOD04_02202364: ; 0x02202364
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	bl MOD04_021F025C
	ldr r2, [r5]
	mvn r1, #0
	cmp r2, r1
	mov r4, r0
	addeq sp, sp, #4
	ldmeqia sp!, {r4, r5, pc}
	ldr r2, [r5, #0xb8]
	cmp r2, #0
	ble _022023F4
	ldr r1, [r5, #0xac]
	ldr r0, _0220247C ; =0x00002710
	sub r1, r4, r1
	cmp r1, r0
	bls _022023F4
	cmp r2, #4
	blt _022023D8
	mov r0, #0
	str r0, [r5, #0xb8]
	ldr r2, [r5, #0x10c]
	ldr r3, [r5, #0x9c]
	ldr r1, _02202480 ; =UNK04_0220F218
	mov r0, #5
	blx r3
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
_022023D8:
	mov r0, r5
	mov r1, #3
	bl MOD04_02200F3C
	ldr r0, [r5, #0xb8]
	add r0, r0, #1
	str r0, [r5, #0xb8]
	b _02202454
_022023F4:
	ldr r0, [r5, #0xb4]
	cmp r0, #0
	beq _02202424
	ldr r1, [r5, #0xac]
	ldr r0, _0220247C ; =0x00002710
	sub r1, r4, r1
	cmp r1, r0
	bls _02202424
	mov r0, r5
	mov r1, #1
	bl MOD04_02200F3C
	b _02202454
_02202424:
	ldr r2, [r5, #0xac]
	ldr r0, _02202484 ; =0x0000EA60
	sub r1, r4, r2
	cmp r1, r0
	bhi _02202448
	cmp r2, #0
	beq _02202448
	cmp r4, r2
	bhs _02202454
_02202448:
	mov r0, r5
	mov r1, #0
	bl MOD04_02200F3C
_02202454:
	ldr r1, [r5, #0xb0]
	ldr r0, _02202488 ; =0x00004E20
	sub r1, r4, r1
	cmp r1, r0
	addls sp, sp, #4
	ldmlsia sp!, {r4, r5, pc}
	mov r0, r5
	bl MOD04_02201150
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_0220247C: .word 0x00002710
_02202480: .word UNK04_0220F218
_02202484: .word 0x0000EA60
_02202488: .word 0x00004E20
	arm_func_end MOD04_02202364

	arm_func_start MOD04_0220248C
MOD04_0220248C: ; 0x0220248C
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #0x18
	mov r1, #8
	mov r4, r0
	str r1, [sp, #0x10]
	ldr r0, [r4, #0xc4]
	cmp r0, #0
	addeq sp, sp, #0x18
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	ldr r0, [r4]
	bl MOD04_021EFF2C
	cmp r0, #0
	addeq sp, sp, #0x18
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	ldr r8, _02202530 ; =UNK04_02211630
	add sl, sp, #8
	add sb, sp, #0x10
	mov r6, #0
	mov r7, #0xff
	mvn r5, #0
_022024DC:
	str sl, [sp]
	str sb, [sp, #4]
	ldr r0, [r4]
	mov r1, r8
	mov r2, r7
	mov r3, r6
	bl MOD04_021EFC40
	mov r2, r0
	cmp r2, r5
	beq _02202518
	mov r0, r4
	mov r1, r8
	mov r3, sl
	strb r6, [r8, r2]
	bl MOD04_022011A8
_02202518:
	ldr r0, [r4]
	bl MOD04_021EFF2C
	cmp r0, #0
	bne _022024DC
	add sp, sp, #0x18
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_02202530: .word UNK04_02211630
	arm_func_end MOD04_0220248C

	arm_func_start MOD04_02202534
MOD04_02202534: ; 0x02202534
	stmdb sp!, {r4, lr}
	movs r4, r0
	ldreq r0, _02202564 ; =UNK04_0220F060
	ldreq r4, [r0]
	ldr r0, [r4, #0xbc]
	cmp r0, #0
	beq _02202558
	mov r0, r4
	bl MOD04_02202364
_02202558:
	mov r0, r4
	bl MOD04_0220248C
	ldmia sp!, {r4, pc}
	.align 2, 0
_02202564: .word UNK04_0220F060
	arm_func_end MOD04_02202534

	arm_func_start MOD04_02202568
MOD04_02202568: ; 0x02202568
	cmp r0, #0
	ldreq r0, _0220257C ; =UNK04_0220F060
	ldreq r0, [r0]
	str r1, [r0, #0xa8]
	bx lr
	.align 2, 0
_0220257C: .word UNK04_0220F060
	arm_func_end MOD04_02202568

	arm_func_start MOD04_02202580
MOD04_02202580: ; 0x02202580
	cmp r0, #0
	ldreq r0, _02202594 ; =UNK04_0220F060
	ldreq r0, [r0]
	str r1, [r0, #0xa4]
	bx lr
	.align 2, 0
_02202594: .word UNK04_0220F060
	arm_func_end MOD04_02202580

	arm_func_start MOD04_02202598
MOD04_02202598: ; 0x02202598
	cmp r0, #0
	ldreq r0, _022025AC ; =UNK04_0220F060
	ldreq r0, [r0]
	str r1, [r0, #0xa0]
	bx lr
	.align 2, 0
_022025AC: .word UNK04_0220F060
	arm_func_end MOD04_02202598

	arm_func_start MOD04_022025B0
MOD04_022025B0: ; 0x022025B0
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x40
	movs r5, r0
	mov r8, r1
	mov r4, r2
	mov r7, r3
	ldreq r5, _02202760 ; =UNK04_0220F064
	beq _022025E0
	mov r0, #0x110
	bl MOD04_021DD860
	str r0, [r5]
	ldr r5, [r5]
_022025E0:
	bl MOD04_021F025C
	bl srand
	mov r1, r7
	add r0, r5, #4
	bl strcpy
	ldr r1, [sp, #0x58]
	add r0, r5, #0x44
	bl strcpy
	str r4, [r5, #0xc0]
	mov r6, #0
	str r6, [r5, #0xac]
	str r6, [r5, #0xb0]
	str r8, [r5]
	mov r1, #1
	ldr r0, [sp, #0x7c]
	str r1, [r5, #0xb8]
	ldr r1, [sp, #0x64]
	str r0, [r5, #0x10c]
	ldr r0, [sp, #0x68]
	str r1, [r5, #0x88]
	ldr r1, [sp, #0x6c]
	str r0, [r5, #0x8c]
	ldr r0, [sp, #0x70]
	str r1, [r5, #0x90]
	ldr r1, [sp, #0x74]
	str r0, [r5, #0x94]
	ldr r0, [sp, #0x78]
	str r1, [r5, #0x98]
	str r0, [r5, #0x9c]
	str r6, [r5, #0xa0]
	str r6, [r5, #0xa4]
	ldr r0, [sp, #0x5c]
	str r6, [r5, #0xd4]
	str r0, [r5, #0xbc]
	ldr r0, [sp, #0x60]
	str r6, [r5, #0xc4]
	str r0, [r5, #0xc8]
	str r6, [r5, #0x104]
	add r0, r5, #0x100
	strh r6, [r0, #8]
	str r6, [r5, #0xa8]
	str r6, [r5, #0xb4]
	ldr r4, _02202764 ; =0x80808081
	ldr r8, _02202768 ; =0x000000FF
_02202690:
	bl rand
	smull r1, r2, r4, r0
	add r2, r0, r2
	add r3, r5, r6
	add r6, r6, #1
	mov r2, r2, asr #7
	mov r1, r0, lsr #0x1f
	add r2, r1, r2
	smull r1, r2, r8, r2
	sub r2, r0, r1
	strb r2, [r3, #0x84]
	cmp r6, #4
	blt _02202690
	mov r2, #0
	mvn r1, #0
_022026CC:
	add r0, r5, r2, lsl #2
	add r2, r2, #1
	str r1, [r0, #0xd8]
	cmp r2, #0xa
	blt _022026CC
	mov r1, #0
	ldr r0, _0220276C ; =UNK04_022115D8
	str r1, [r5, #0x100]
	ldr r0, [r0]
	cmp r0, #0
	bne _022026FC
	bl MOD04_02202134
_022026FC:
	ldr r0, [sp, #0x5c]
	cmp r0, #0
	beq _02202748
	ldr r0, _02202770 ; =UNK04_022115F0
	ldrsb r4, [r0]
	cmp r4, #0
	bne _02202728
	ldr r1, _02202774 ; =UNK04_0220F250
	add r0, sp, #0
	mov r2, r7
	bl sprintf
_02202728:
	cmp r4, #0
	ldrne r0, _02202770 ; =UNK04_022115F0
	ldr r1, _02202778 ; =0x00006CFC
	addeq r0, sp, #0
	add r2, r5, #0xcc
	mov r3, #0
	bl MOD04_02202080
	b _0220274C
_02202748:
	mov r0, #1
_0220274C:
	cmp r0, #0
	movne r0, #0
	moveq r0, #3
	add sp, sp, #0x40
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_02202760: .word UNK04_0220F064
_02202764: .word 0x80808081
_02202768: .word 0x000000FF
_0220276C: .word UNK04_022115D8
_02202770: .word UNK04_022115F0
_02202774: .word UNK04_0220F250
_02202778: .word 0x00006CFC
	arm_func_end MOD04_022025B0

	arm_func_start MOD04_0220277C
MOD04_0220277C: ; 0x0220277C
	cmp r0, #0x32
	bxlt lr
	cmp r0, #0xfe
	bxgt lr
	ldr r2, _02202798 ; =UNK04_0220F3A8
	str r1, [r2, r0, lsl #2]
	bx lr
	.align 2, 0
_02202798: .word UNK04_0220F3A8
	arm_func_end MOD04_0220277C

	arm_func_start MOD04_0220279C
MOD04_0220279C: ; 0x0220279C
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	mov r5, r2
	cmp r5, #0
	mov r7, r0
	mov r6, r1
	mov r4, #0
	addle sp, sp, #4
	ldmleia sp!, {r4, r5, r6, r7, pc}
_022027C0:
	ldrb r1, [r6, r4]
	mov r0, r7
	bl MOD04_022027E4
	strb r0, [r6, r4]
	add r4, r4, #1
	cmp r4, r5
	blt _022027C0
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, pc}
	arm_func_end MOD04_0220279C

	arm_func_start MOD04_022027E4
MOD04_022027E4: ; 0x022027E4
	stmdb sp!, {r4, lr}
	ldrb r4, [r0, #0x100]
	add r2, r4, #1
	strb r2, [r0, #0x100]
	ldrb r3, [r0, #0x101]
	ldrb r2, [r0, r4]
	add r2, r3, r2
	strb r2, [r0, #0x101]
	ldrb r3, [r0, #0x104]
	ldrb r2, [r0, #0x101]
	ldrb r4, [r0, r3]
	ldrb r2, [r0, r2]
	strb r2, [r0, r3]
	ldrb r3, [r0, #0x103]
	ldrb r2, [r0, #0x101]
	ldrb r3, [r0, r3]
	strb r3, [r0, r2]
	ldrb r3, [r0, #0x100]
	ldrb r2, [r0, #0x103]
	ldrb r3, [r0, r3]
	strb r3, [r0, r2]
	ldrb r2, [r0, #0x100]
	strb r4, [r0, r2]
	ldrb r3, [r0, #0x102]
	ldrb r2, [r0, r4]
	add r2, r3, r2
	strb r2, [r0, #0x102]
	ldrb r3, [r0, #0x103]
	ldrb r2, [r0, #0x104]
	ldrb ip, [r0, #0x101]
	ldrb r4, [r0, #0x102]
	ldrb lr, [r0, #0x100]
	ldrb r3, [r0, r3]
	ldrb r2, [r0, r2]
	ldrb ip, [r0, ip]
	ldrb r4, [r0, r4]
	add r2, r3, r2
	ldrb r3, [r0, lr]
	add r2, ip, r2
	and r2, r2, #0xff
	add r3, r4, r3
	ldrb r2, [r0, r2]
	and r3, r3, #0xff
	ldrb r3, [r0, r3]
	ldrb r2, [r0, r2]
	eor r3, r1, r3
	eor r2, r3, r2
	strb r2, [r0, #0x103]
	strb r1, [r0, #0x104]
	ldrb r0, [r0, #0x103]
	ldmia sp!, {r4, pc}
	arm_func_end MOD04_022027E4

	arm_func_start MOD04_022028B0
MOD04_022028B0: ; 0x022028B0
	stmdb sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x14
	mov r7, r2
	mov sb, r0
	mov r8, r1
	cmp r7, #1
	bhs _022028D8
	bl MOD04_02202978
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
_022028D8:
	mov r0, #0
_022028DC:
	strb r0, [sb, r0]
	add r0, r0, #1
	cmp r0, #0x100
	blt _022028DC
	mov r0, #0
	str r0, [sp, #0xc]
	strb r0, [sp, #8]
	mov r6, #0xff
	add r5, sp, #8
	add r4, sp, #0xc
_02202904:
	str r5, [sp]
	mov r0, sb
	mov r1, r6
	mov r2, r8
	mov r3, r7
	str r4, [sp, #4]
	bl MOD04_022029C0
	ldrb r2, [sb, r6]
	ldrb r1, [sb, r0]
	strb r1, [sb, r6]
	strb r2, [sb, r0]
	subs r6, r6, #1
	bpl _02202904
	ldrb r1, [sb, #1]
	mov r0, #0
	strb r1, [sb, #0x100]
	ldrb r1, [sb, #3]
	strb r1, [sb, #0x101]
	ldrb r1, [sb, #5]
	strb r1, [sb, #0x102]
	ldrb r1, [sb, #7]
	strb r1, [sb, #0x103]
	ldrb r1, [sp, #8]
	ldrb r1, [sb, r1]
	strb r1, [sb, #0x104]
	strb r0, [sp, #8]
	str r0, [sp, #0xc]
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
	arm_func_end MOD04_022028B0

	arm_func_start MOD04_02202978
MOD04_02202978: ; 0x02202978
	mov r1, #1
	strb r1, [r0, #0x100]
	mov r1, #3
	strb r1, [r0, #0x101]
	mov r1, #5
	strb r1, [r0, #0x102]
	mov r1, #7
	strb r1, [r0, #0x103]
	mov r1, #0xb
	strb r1, [r0, #0x104]
	mov r2, #0
	mov r1, #0xff
_022029A8:
	strb r1, [r0, r2]
	add r2, r2, #1
	cmp r2, #0x100
	sub r1, r1, #1
	blt _022029A8
	bx lr
	arm_func_end MOD04_02202978

	arm_func_start MOD04_022029C0
MOD04_022029C0: ; 0x022029C0
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #4
	ldr r8, [sp, #0x28]
	ldr r7, [sp, #0x2c]
	movs sl, r1
	mov fp, r0
	str r2, [sp]
	mov sb, r3
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	cmp sl, #1
	mov r6, #0
	mov r5, #1
	bls _02202A0C
_022029FC:
	mov r0, r5, lsl #1
	add r5, r0, #1
	cmp r5, sl
	blo _022029FC
_02202A0C:
	mov r4, #0
_02202A10:
	ldr r2, [r7]
	add r6, r6, #1
	add r0, r2, #1
	str r0, [r7]
	ldrb r1, [r8]
	ldr r0, [sp]
	ldrb r0, [r0, r2]
	ldrb r1, [fp, r1]
	add r0, r1, r0
	strb r0, [r8]
	ldr r0, [r7]
	cmp r0, sb
	strhs r4, [r7]
	ldrhsb r0, [r8]
	addhs r0, r0, sb
	strhsb r0, [r8]
	ldrb r0, [r8]
	cmp r6, #0xb
	and r0, r5, r0
	bls _02202A6C
	mov r1, sl
	bl _u32_div_f
	mov r0, r1
_02202A6C:
	cmp r0, sl
	bhi _02202A10
	and r0, r0, #0xff
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end MOD04_022029C0

	arm_func_start MOD04_02202A80
MOD04_02202A80: ; 0x02202A80
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	add r0, r5, #8
	mov r4, r1
	bl MOD04_022032AC
	cmp r0, #0
	addne sp, sp, #4
	ldmneia sp!, {r4, r5, pc}
	mov r1, r4
	add r0, r5, #0x14
	bl MOD04_022032AC
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	arm_func_end MOD04_02202A80

	arm_func_start MOD04_02202AB8
MOD04_02202AB8: ; 0x02202AB8
	ldr r3, [r0, #0x40]
	cmp r3, #0x14
	addlt r2, r3, #1
	strlt r2, [r0, #0x40]
	addlt r0, r0, r3
	strltb r1, [r0, #0x2c]
	bx lr
	arm_func_end MOD04_02202AB8

	arm_func_start MOD04_02202AD4
MOD04_02202AD4: ; 0x02202AD4
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0x10]
	cmp r1, #0
	ldmeqia sp!, {r4, pc}
	mov r1, #0
	bl MOD04_02202C14
	mov r0, r4
	bl MOD04_02202B84
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	ble _02202B0C
	mov r0, r4
	bl MOD04_02202B34
_02202B0C:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	ldmneia sp!, {r4, pc}
	ldr r3, [r4, #0x48]
	ldr ip, [r4, #0x44]
	mov r0, r4
	mov r1, #2
	mov r2, #0
	blx ip
	ldmia sp!, {r4, pc}
	arm_func_end MOD04_02202AD4

	arm_func_start MOD04_02202B34
MOD04_02202B34: ; 0x02202B34
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	add r4, r5, #0x14
	b _02202B5C
_02202B48:
	mov r0, r4
	bl MOD04_02203318
	mov r1, r0
	mov r0, r5
	bl MOD04_022030C0
_02202B5C:
	ldr r1, [r5, #0x10]
	ldr r0, [r5, #4]
	cmp r1, r0
	addge sp, sp, #4
	ldmgeia sp!, {r4, r5, pc}
	ldr r0, [r5, #0x1c]
	cmp r0, #0
	bgt _02202B48
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	arm_func_end MOD04_02202B34

	arm_func_start MOD04_02202B84
MOD04_02202B84: ; 0x02202B84
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r6, r0
	bl MOD04_021F025C
	ldr r3, [r6, #8]
	mov r5, r0
	cmp r3, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r4, _02202C10 ; =0x000009C4
	add r7, r6, #8
	mov r8, #1
_02202BAC:
	ldr r0, [r3, #0x1c]
	add r0, r0, r4
	cmp r5, r0
	ldmlsia sp!, {r4, r5, r6, r7, r8, pc}
	ldrb r2, [r3, #0x15]
	mov r0, r6
	mov r1, r8
	orr r2, r2, #0x10
	strb r2, [r3, #0x15]
	ldr r2, [r6, #8]
	str r4, [r2, #0x1c]
	ldr r3, [r6, #8]
	ldrb r2, [r3, #0x15]
	and r2, r2, #0xd3
	strb r2, [r3, #0x15]
	ldr r2, [r6, #8]
	ldr r3, [r6, #0x48]
	ldr ip, [r6, #0x44]
	blx ip
	mov r0, r7
	bl MOD04_02203318
	ldr r3, [r6, #8]
	cmp r3, #0
	bne _02202BAC
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_02202C10: .word 0x000009C4
	arm_func_end MOD04_02202B84

	arm_func_start MOD04_02202C14
MOD04_02202C14: ; 0x02202C14
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	ldr ip, _02202DB0 ; =0x00000814
	sub sp, sp, ip
	movs sb, r1
	mov r1, #8
	mov sl, r0
	str r1, [sp, #0x10]
	ldrne r8, [sl, #0x24]
	ldreq r8, [sl, #0x20]
	mov r0, r8
	bl MOD04_021EFF2C
	cmp r0, #0
	ldreq ip, _02202DB0 ; =0x00000814
	addeq sp, sp, ip
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	add r5, sp, #0x14
	add fp, sp, #8
	mov r4, #0
_02202C5C:
	ldr r2, _02202DB4 ; =0x000007FF
	str fp, [sp]
	add r6, sp, #0x10
	mov r0, r8
	mov r1, r5
	mov r3, r4
	str r6, [sp, #4]
	bl MOD04_021EFC40
	mov r7, r0
	mvn r0, #0
	cmp r7, r0
	ldreq ip, _02202DB0 ; =0x00000814
	addeq sp, sp, ip
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	strb r4, [r5, r7]
	ldr r6, [sl, #8]
	cmp r6, #0
	beq _02202D94
_02202CA4:
	cmp sb, #0
	beq _02202CC8
	ldrb r0, [r6, #0x15]
	ands r0, r0, #8
	beq _02202CC8
	ldr r1, [r6, #0x10]
	ldr r0, [sp, #0xc]
	cmp r1, r0
	beq _02202D24
_02202CC8:
	ldr r0, [sp, #0xc]
	ldr r3, [r6]
	cmp r3, r0
	bne _02202CF0
	ldrh r2, [r6, #4]
	ldrh r1, [sp, #0xa]
	cmp r2, r1
	beq _02202D24
	cmp sb, #0
	bne _02202D24
_02202CF0:
	ldr r1, [sl, #0x28]
	cmp r3, r1
	bne _02202D88
	ldrb r1, [r6, #0x15]
	ands r1, r1, #2
	beq _02202D88
	ldr r1, [r6, #8]
	cmp r1, r0
	bne _02202D88
	ldrh r1, [r6, #0xc]
	ldrh r0, [sp, #0xa]
	cmp r1, r0
	bne _02202D88
_02202D24:
	cmp sb, #0
	beq _02202D4C
	mov r0, sl
	mov r1, r6
	mov r2, r5
	mov r3, r7
	bl MOD04_02202DB8
	cmp r0, #0
	beq _02202D88
	b _02202D94
_02202D4C:
	ldr r0, [sl]
	cmp r0, #1
	bne _02202D70
	mov r0, sl
	mov r1, r6
	mov r2, r5
	mov r3, r7
	bl MOD04_02202E68
	b _02202D94
_02202D70:
	mov r0, sl
	mov r1, r6
	mov r2, r5
	mov r3, r7
	bl MOD04_02202DC0
	b _02202D94
_02202D88:
	ldr r6, [r6, #0x20]
	cmp r6, #0
	bne _02202CA4
_02202D94:
	mov r0, r8
	bl MOD04_021EFF2C
	cmp r0, #0
	bne _02202C5C
	ldr ip, _02202DB0 ; =0x00000814
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02202DB0: .word 0x00000814
_02202DB4: .word 0x000007FF
	arm_func_end MOD04_02202C14

	arm_func_start MOD04_02202DB8
MOD04_02202DB8: ; 0x02202DB8
	mov r0, #1
	bx lr
	arm_func_end MOD04_02202DB8

	arm_func_start MOD04_02202DC0
MOD04_02202DC0: ; 0x02202DC0
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	mov r4, r1
	mov r7, r2
	mov r5, r0
	ldr r1, _02202E64 ; =UNK04_0220F7A0
	mov r0, r7
	bl strstr
	cmp r0, #0
	movne r6, #1
	moveq r6, #0
	mov r0, r4
	mov r1, r7
	bl MOD04_02203738
	cmp r6, #0
	addeq sp, sp, #4
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	ldrb r0, [r4, #0x14]
	ands r1, r0, #4
	orrne r0, r0, #0x41
	strneb r0, [r4, #0x14]
	orreq r0, r0, #0x42
	streqb r0, [r4, #0x14]
	ldrb r0, [r4, #0x14]
	and r0, r0, #0xf3
	strb r0, [r4, #0x14]
	bl MOD04_021F025C
	ldr r2, [r4, #0x1c]
	mov r1, r4
	sub r0, r0, r2
	str r0, [r4, #0x1c]
	add r0, r5, #8
	bl MOD04_022032AC
	ldr r3, [r5, #0x48]
	ldr ip, [r5, #0x44]
	mov r0, r5
	mov r2, r4
	mov r1, #0
	blx ip
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_02202E64: .word UNK04_0220F7A0
	arm_func_end MOD04_02202DC0

	arm_func_start MOD04_02202E68
MOD04_02202E68: ; 0x02202E68
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	mov r8, r2
	ldrsb r2, [r8]
	mov sl, r0
	mov sb, r1
	mov r7, r3
	cmp r2, #0
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	ldrb r0, [sb, #0x14]
	add r8, r8, #5
	sub r7, r7, #5
	ands r0, r0, #4
	beq _02202F04
	ldr r0, [sl, #0x40]
	mov r6, #0
	cmp r0, #0
	ble _02202EF4
	ldr r4, _02202F64 ; =UNK04_0220F3A8
_02202EB0:
	mov r0, r8
	mov r1, r7
	bl MOD04_02206378
	movs r5, r0
	bmi _02202EF4
	add r0, sl, r6
	ldrb r1, [r0, #0x2c]
	mov r0, sb
	mov r2, r8
	ldr r1, [r4, r1, lsl #2]
	bl MOD04_02203A80
	ldr r0, [sl, #0x40]
	add r6, r6, #1
	cmp r6, r0
	add r8, r8, r5
	sub r7, r7, r5
	blt _02202EB0
_02202EF4:
	ldrb r0, [sb, #0x14]
	orr r0, r0, #0x41
	strb r0, [sb, #0x14]
	b _02202F20
_02202F04:
	mov r0, sb
	mov r1, r8
	mov r2, r7
	bl MOD04_02203554
	ldrb r0, [sb, #0x14]
	orr r0, r0, #0x43
	strb r0, [sb, #0x14]
_02202F20:
	ldrb r0, [sb, #0x14]
	and r0, r0, #0xf3
	strb r0, [sb, #0x14]
	bl MOD04_021F025C
	ldr r2, [sb, #0x1c]
	mov r1, sb
	sub r0, r0, r2
	str r0, [sb, #0x1c]
	add r0, sl, #8
	bl MOD04_022032AC
	ldr r3, [sl, #0x48]
	ldr r4, [sl, #0x44]
	mov r0, sl
	mov r2, sb
	mov r1, #0
	blx r4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_02202F64: .word UNK04_0220F3A8
	arm_func_end MOD04_02202E68

	arm_func_start MOD04_02202F68
MOD04_02202F68: ; 0x02202F68
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldrb ip, [r1, #0x14]
	add lr, r1, #0x14
	cmp r3, #0
	and ip, ip, #0xc3
	strb ip, [r1, #0x14]
	ldreqb r3, [lr]
	orreq r3, r3, #4
	streqb r3, [lr]
	beq _02202FB4
	cmp r3, #1
	ldreqb r3, [lr]
	orreq r3, r3, #8
	streqb r3, [lr]
	beq _02202FB4
	cmp r3, #2
	addeq sp, sp, #4
	ldmeqia sp!, {pc}
_02202FB4:
	ldr ip, [r0, #0x10]
	ldr r3, [r0, #4]
	cmp ip, r3
	bge _02202FD0
	bl MOD04_022030C0
	add sp, sp, #4
	ldmfd sp!, {pc}
_02202FD0:
	cmp r2, #0
	beq _02202FE8
	add r0, r0, #0x14
	bl MOD04_02203350
	add sp, sp, #4
	ldmfd sp!, {pc}
_02202FE8:
	add r0, r0, #0x14
	bl MOD04_02203378
	add sp, sp, #4
	ldmfd sp!, {pc}
	arm_func_end MOD04_02202F68

	arm_func_start MOD04_02202FF8
MOD04_02202FF8: ; 0x02202FF8
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x20]
	bl MOD04_021EFD9C
	mvn r1, #0
	add r0, r4, #0x14
	str r1, [r4, #0x20]
	bl MOD04_02203294
	add r0, r4, #8
	bl MOD04_02203294
	ldmia sp!, {r4, pc}
	arm_func_end MOD04_02202FF8

	arm_func_start MOD04_02203024
MOD04_02203024: ; 0x02203024
	stmdb sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x14
	bl MOD04_02203294
	add r0, r4, #8
	bl MOD04_02203294
	ldmia sp!, {r4, pc}
	arm_func_end MOD04_02203024

	arm_func_start MOD04_02203040
MOD04_02203040: ; 0x02203040
	str r1, [r0, #0x28]
	bx lr
	arm_func_end MOD04_02203040

	arm_func_start MOD04_02203048
MOD04_02203048: ; 0x02203048
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	cmp r3, #0
	bne _02203070
	ldr r0, _022030BC ; =UNK04_02210E5C
	ldr r0, [r0]
	cmp r0, #1
	ldmneia sp!, {r4, r5, r6, pc}
_02203070:
	bl MOD04_021F024C
	str r4, [r6]
	mov r0, #2
	str r5, [r6, #4]
	mov r2, #0
	ldr r3, [sp, #0x10]
	str r2, [r6, #0x40]
	ldr r1, [sp, #0x14]
	str r3, [r6, #0x44]
	str r1, [r6, #0x48]
	mov r1, r0
	str r2, [r6, #0x28]
	bl MOD04_021EFDB8
	str r0, [r6, #0x20]
	add r0, r6, #0x14
	bl MOD04_02203294
	add r0, r6, #8
	bl MOD04_02203294
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_022030BC: .word UNK04_02210E5C
	arm_func_end MOD04_02203048

	arm_func_start MOD04_022030C0
MOD04_022030C0: ; 0x022030C0
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0x114
	mov r5, r0
	mov r4, r1
	add r0, r5, #8
	bl MOD04_02203378
	bl MOD04_021F025C
	str r0, [r4, #0x1c]
	mov r0, #2
	strb r0, [sp, #9]
	ldrb r1, [r4, #0x14]
	ands r0, r1, #0x20
	addne sp, sp, #0x114
	ldmneia sp!, {r4, r5, pc}
	ldr r0, [r5]
	cmp r0, #1
	bne _022031C8
	mov r2, #0xfe
	mov r1, #0xfd
	mov r0, #0
	strb r2, [sp, #0x10]
	strb r1, [sp, #0x11]
	strb r0, [sp, #0x12]
	add r3, r4, #0x1c
	ldrb r2, [r4, #0x1c]
	ldrb r1, [r3, #1]
	add ip, sp, #0x13
	strb r2, [ip]
	strb r1, [ip, #1]
	ldrb r2, [r3, #2]
	ldrb r1, [r3, #3]
	strb r2, [ip, #2]
	strb r1, [ip, #3]
	ldrb r1, [r4, #0x14]
	ands r1, r1, #4
	beq _022031B0
	ldr r1, [r5, #0x40]
	strb r1, [sp, #0x17]
	ldr r2, [r5, #0x40]
	cmp r2, #0
	ble _02203188
	add r1, sp, #0x10
_02203168:
	add r2, r5, r0
	ldrb r3, [r2, #0x2c]
	add r2, r0, #8
	add r0, r0, #1
	strb r3, [r1, r2]
	ldr r2, [r5, #0x40]
	cmp r0, r2
	blt _02203168
_02203188:
	add r0, r2, #8
	add r1, sp, #0x10
	mov r2, #0
	strb r2, [r1, r0]
	ldr r0, [r5, #0x40]
	add r0, r0, #9
	strb r2, [r1, r0]
	ldr r0, [r5, #0x40]
	add r2, r0, #0xa
	b _0220322C
_022031B0:
	mov r0, #0xff
	strb r0, [sp, #0x17]
	strb r0, [sp, #0x18]
	strb r0, [sp, #0x19]
	mov r2, #0xa
	b _0220322C
_022031C8:
	ands r0, r1, #4
	beq _02203204
	ldr r3, _0220328C ; =UNK04_0220F7A8
	add ip, sp, #0x10
	mov r2, #6
_022031DC:
	ldrb r1, [r3], #1
	ldrb r0, [r3], #1
	subs r2, r2, #1
	strb r1, [ip], #1
	strb r0, [ip], #1
	bne _022031DC
	ldrb r0, [r3]
	mov r2, #0xd
	strb r0, [ip]
	b _0220322C
_02203204:
	ldr r3, _02203290 ; =UNK04_0220F7B8
	add ip, sp, #0x10
	mov r2, #4
_02203210:
	ldrb r1, [r3], #1
	ldrb r0, [r3], #1
	subs r2, r2, #1
	strb r1, [ip], #1
	strb r0, [ip], #1
	bne _02203210
	mov r2, #8
_0220322C:
	ldr r1, [r4]
	ldr r0, [r5, #0x28]
	cmp r1, r0
	bne _02203258
	ldrb r0, [r4, #0x15]
	ands r0, r0, #2
	ldrne r0, [r4, #8]
	strne r0, [sp, #0xc]
	ldrneh r0, [r4, #0xc]
	strneh r0, [sp, #0xa]
	bne _02203264
_02203258:
	str r1, [sp, #0xc]
	ldrh r0, [r4, #4]
	strh r0, [sp, #0xa]
_02203264:
	add r1, sp, #8
	str r1, [sp]
	mov r0, #8
	str r0, [sp, #4]
	ldr r0, [r5, #0x20]
	add r1, sp, #0x10
	mov r3, #0
	bl MOD04_021EFBD4
	add sp, sp, #0x114
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_0220328C: .word UNK04_0220F7A8
_02203290: .word UNK04_0220F7B8
	arm_func_end MOD04_022030C0

	arm_func_start MOD04_02203294
MOD04_02203294: ; 0x02203294
	mov r2, #0
	str r2, [r0, #4]
	ldr r1, [r0, #4]
	str r1, [r0]
	str r2, [r0, #8]
	bx lr
	arm_func_end MOD04_02203294

	arm_func_start MOD04_022032AC
MOD04_022032AC: ; 0x022032AC
	ldr r3, [r0]
	mov r2, #0
	cmp r3, #0
	beq _02203310
_022032BC:
	cmp r3, r1
	bne _02203300
	cmp r2, #0
	ldrne r1, [r3, #0x20]
	strne r1, [r2, #0x20]
	ldr r1, [r0]
	cmp r1, r3
	ldreq r1, [r3, #0x20]
	streq r1, [r0]
	ldr r1, [r0, #4]
	cmp r1, r3
	streq r2, [r0, #4]
	ldr r1, [r0, #8]
	sub r1, r1, #1
	str r1, [r0, #8]
	mov r0, #1
	bx lr
_02203300:
	mov r2, r3
	ldr r3, [r3, #0x20]
	cmp r3, #0
	bne _022032BC
_02203310:
	mov r0, #0
	bx lr
	arm_func_end MOD04_022032AC

	arm_func_start MOD04_02203318
MOD04_02203318: ; 0x02203318
	ldr r2, [r0]
	cmp r2, #0
	beq _02203348
	ldr r1, [r2, #0x20]
	str r1, [r0]
	ldr r1, [r0]
	cmp r1, #0
	moveq r1, #0
	streq r1, [r0, #4]
	ldr r1, [r0, #8]
	sub r1, r1, #1
	str r1, [r0, #8]
_02203348:
	mov r0, r2
	bx lr
	arm_func_end MOD04_02203318

	arm_func_start MOD04_02203350
MOD04_02203350: ; 0x02203350
	ldr r2, [r0]
	str r2, [r1, #0x20]
	str r1, [r0]
	ldr r2, [r0, #4]
	cmp r2, #0
	streq r1, [r0, #4]
	ldr r1, [r0, #8]
	add r1, r1, #1
	str r1, [r0, #8]
	bx lr
	arm_func_end MOD04_02203350

	arm_func_start MOD04_02203378
MOD04_02203378: ; 0x02203378
	ldr r2, [r0, #4]
	cmp r2, #0
	strne r1, [r2, #0x20]
	str r1, [r0, #4]
	mov r2, #0
	str r2, [r1, #0x20]
	ldr r2, [r0]
	cmp r2, #0
	streq r1, [r0]
	ldr r1, [r0, #8]
	add r1, r1, #1
	str r1, [r0, #8]
	bx lr
	arm_func_end MOD04_02203378

	arm_func_start MOD04_022033AC
MOD04_022033AC: ; 0x022033AC
	ldr r1, _022033C4 ; =UNK04_02211738
	ldr r1, [r1]
	cmp r0, r1
	moveq r0, #1
	movne r0, #0
	bx lr
	.align 2, 0
_022033C4: .word UNK04_02211738
	arm_func_end MOD04_022033AC

	arm_func_start MOD04_022033C8
MOD04_022033C8: ; 0x022033C8
	ldrb r0, [r0, #0x14]
	bx lr
	arm_func_end MOD04_022033C8

	arm_func_start MOD04_022033D0
MOD04_022033D0: ; 0x022033D0
	strb r1, [r0, #0x14]
	bx lr
	arm_func_end MOD04_022033D0

	arm_func_start MOD04_022033D8
MOD04_022033D8: ; 0x022033D8
	str r1, [r0, #0x10]
	bx lr
	arm_func_end MOD04_022033D8

	arm_func_start MOD04_022033E0
MOD04_022033E0: ; 0x022033E0
	str r1, [r0, #8]
	strh r2, [r0, #0xc]
	bx lr
	arm_func_end MOD04_022033E0

	arm_func_start MOD04_022033EC
MOD04_022033EC: ; 0x022033EC
	strb r1, [r0, #0x15]
	bx lr
	arm_func_end MOD04_022033EC

	arm_func_start MOD04_022033F4
MOD04_022033F4: ; 0x022033F4
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	mov r0, #0x24
	mov r6, r1
	mov r5, r2
	bl MOD04_021DD860
	movs r4, r0
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, _02203498 ; =MOD04_022034AC
	ldr r2, _0220349C ; =MOD04_022034D0
	str r0, [sp]
	mov r0, #8
	ldr r3, _022034A0 ; =MOD04_022034C0
	mov r1, r0
	str r2, [sp, #4]
	mov r2, #4
	bl MOD04_021EF62C
	str r0, [r4, #0x18]
	ldr r0, [r4, #0x18]
	cmp r0, #0
	bne _02203464
	mov r0, r4
	bl MOD04_021DD82C
	add sp, sp, #8
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
_02203464:
	mov r1, #0
	strb r1, [r4, #0x14]
	strb r1, [r4, #0x15]
	str r1, [r4, #0x20]
	str r1, [r4, #0x1c]
	str r1, [r4, #0x10]
	str r6, [r4]
	strh r5, [r4, #4]
	str r1, [r4, #8]
	mov r0, r4
	strh r1, [r4, #0xc]
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_02203498: .word MOD04_022034AC
_0220349C: .word MOD04_022034D0
_022034A0: .word MOD04_022034C0
	arm_func_end MOD04_022033F4

	arm_func_start MOD04_022034A4
MOD04_022034A4: ; 0x022034A4
	ldr r0, [r0, #0x1c]
	bx lr
	arm_func_end MOD04_022034A4

	arm_func_start MOD04_022034AC
MOD04_022034AC: ; 0x022034AC
	ldr ip, _022034BC ; =strnicmp
	ldr r0, [r0]
	ldr r1, [r1]
	bx ip
	.align 2, 0
_022034BC: .word strnicmp
	arm_func_end MOD04_022034AC

	arm_func_start MOD04_022034C0
MOD04_022034C0: ; 0x022034C0
	ldr ip, _022034CC ; =MOD04_022034F4
	ldr r0, [r0]
	bx ip
	.align 2, 0
_022034CC: .word MOD04_022034F4
	arm_func_end MOD04_022034C0

	arm_func_start MOD04_022034D0
MOD04_022034D0: ; 0x022034D0
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4]
	mov r0, #0
	bl MOD04_022063A8
	ldr r1, [r4, #4]
	mov r0, #0
	bl MOD04_022063A8
	ldmia sp!, {r4, pc}
	arm_func_end MOD04_022034D0

	arm_func_start MOD04_022034F4
MOD04_022034F4: ; 0x022034F4
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldrsb lr, [r0]
	mov ip, #0
	cmp lr, #0
	beq _02203538
	ldr r3, _0220354C ; =__lower_mapC
	ldr r2, _02203550 ; =0x9CCF9319
_02203514:
	cmp lr, #0
	blt _02203528
	cmp lr, #0x80
	bge _02203528
	ldrb lr, [r3, lr]
_02203528:
	mla ip, r2, ip, lr
	ldrsb lr, [r0, #1]!
	cmp lr, #0
	bne _02203514
_02203538:
	mov r0, ip
	bl _u32_div_f
	mov r0, r1
	add sp, sp, #4
	ldmfd sp!, {pc}
	.align 2, 0
_0220354C: .word __lower_mapC
_02203550: .word 0x9CCF9319
	arm_func_end MOD04_022034F4

	arm_func_start MOD04_02203554
MOD04_02203554: ; 0x02203554
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x9c
	mov sl, r1
	ldrsb r1, [sl]
	mov fp, r0
	mov sb, r2
	cmp r1, #0
	beq _022035D4
_02203574:
	mov r0, sl
	mov r1, sb
	bl MOD04_02206378
	cmp r0, #0
	addlt sp, sp, #0x9c
	ldmltia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r4, sl
	sub sb, sb, r0
	add sl, sl, r0
	mov r0, sl
	mov r1, sb
	bl MOD04_02206378
	cmp r0, #0
	addlt sp, sp, #0x9c
	ldmltia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r2, sl
	mov r1, r4
	add sl, sl, r0
	sub sb, sb, r0
	mov r0, fp
	bl MOD04_02203A80
	ldrsb r0, [sl]
	cmp r0, #0
	bne _02203574
_022035D4:
	mov r0, #0
	add sl, sl, #1
	sub sb, sb, #1
	str r0, [sp, #4]
	str r0, [sp, #0x10]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
_022035F0:
	cmp sb, #2
	addlt sp, sp, #0x9c
	ldmltia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldrb r2, [sl]
	ldrb r1, [sl, #1]
	add r0, sp, #0x14
	add sl, sl, #2
	strb r2, [r0]
	strb r1, [r0, #1]
	ldrh r2, [sp, #0x14]
	str sl, [sp]
	ldr r8, [sp, #8]
	mov r0, r2, asr #8
	and r1, r0, #0xff
	mov r0, r2, lsl #8
	and r0, r0, #0xff00
	orr r0, r1, r0
	strh r0, [sp, #0x14]
	ldrsb r0, [sl]
	sub sb, sb, #2
	cmp r0, #0
	beq _02203680
_02203648:
	mov r0, sl
	mov r1, sb
	bl MOD04_02206378
	cmp r0, #0
	addlt sp, sp, #0x9c
	ldmltia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	cmp r0, #0x64
	addgt sp, sp, #0x9c
	ldmgtia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldrsb r1, [sl, r0]!
	sub sb, sb, r0
	add r8, r8, #1
	cmp r1, #0
	bne _02203648
_02203680:
	ldrh r0, [sp, #0x14]
	ldr r7, [sp, #0xc]
	add sl, sl, #1
	cmp r0, #0
	sub sb, sb, #1
	ble _02203718
_02203698:
	ldr r5, [sp]
	cmp r8, #0
	ldr r6, [sp, #0x10]
	ble _02203708
_022036A8:
	mov r0, sl
	mov r1, sb
	bl MOD04_02206378
	movs r4, r0
	addmi sp, sp, #0x9c
	ldmmiia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, _02203734 ; =UNK04_0220F7D4
	add r0, sp, #0x16
	mov r2, r5
	mov r3, r7
	bl sprintf
	mov r0, fp
	add r1, sp, #0x16
	mov r2, sl
	bl MOD04_02203A80
	mov r0, r5
	add sl, sl, r4
	sub sb, sb, r4
	bl strlen
	add r0, r0, #1
	add r6, r6, #1
	add r5, r5, r0
	cmp r6, r8
	blt _022036A8
_02203708:
	ldrh r0, [sp, #0x14]
	add r7, r7, #1
	cmp r7, r0
	blt _02203698
_02203718:
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #2
	blt _022035F0
	add sp, sp, #0x9c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02203734: .word UNK04_0220F7D4
	arm_func_end MOD04_02203554

	arm_func_start MOD04_02203738
MOD04_02203738: ; 0x02203738
	stmdb sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #4
	mov sb, r0
	add r0, r1, #1
	mov r1, #0x5c
	bl MOD04_022037BC
	movs r8, r0
	addeq sp, sp, #4
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, pc}
	ldr r4, _022037B8 ; =UNK04_0220F7DC
	mov r6, #0
	mov r5, #0x5c
_02203768:
	mov r0, r6
	mov r1, r5
	bl MOD04_022037BC
	movs r7, r0
	mov r0, r8
	moveq r7, r4
	bl MOD04_02203828
	cmp r0, #0
	beq _0220379C
	mov r0, sb
	mov r1, r8
	mov r2, r7
	bl MOD04_02203A80
_0220379C:
	mov r0, r6
	mov r1, r5
	bl MOD04_022037BC
	movs r8, r0
	bne _02203768
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_022037B8: .word UNK04_0220F7DC
	arm_func_end MOD04_02203738

	arm_func_start MOD04_022037BC
MOD04_022037BC: ; 0x022037BC
	cmp r0, #0
	ldrne r2, _02203824 ; =UNK04_02211730
	strne r0, [r2]
	ldr r2, _02203824 ; =UNK04_02211730
	ldr r0, [r2]
	b _022037E0
_022037D4:
	ldr r3, [r2]
	add r3, r3, #1
	str r3, [r2]
_022037E0:
	ldr ip, [r2]
	ldrsb r3, [ip]
	cmp r3, #0
	beq _022037F8
	cmp r3, r1
	bne _022037D4
_022037F8:
	cmp ip, r0
	moveq r0, #0
	cmp r3, #0
	bxeq lr
	ldr r1, _02203824 ; =UNK04_02211730
	mov r2, #0
	ldr r3, [r1]
	add r3, r3, #1
	str r3, [r1]
	strb r2, [ip]
	bx lr
	.align 2, 0
_02203824: .word UNK04_02211730
	arm_func_end MOD04_022037BC

	arm_func_start MOD04_02203828
MOD04_02203828: ; 0x02203828
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	ldr r1, _02203884 ; =UNK04_0220BCE0
	add r4, sp, #0
	ldr r2, [r1]
	ldr r1, [r1, #4]
	mov r6, r0
	str r2, [sp]
	str r1, [sp, #4]
	mov r5, #0
_02203850:
	ldr r1, [r4, r5, lsl #2]
	mov r0, r6
	bl strcmp
	cmp r0, #0
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	add r5, r5, #1
	cmp r5, #2
	blo _02203850
	mov r0, #1
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_02203884: .word UNK04_0220BCE0
	arm_func_end MOD04_02203828

	arm_func_start MOD04_02203888
MOD04_02203888: ; 0x02203888
	ldr r0, [r0, #0x20]
	bx lr
	arm_func_end MOD04_02203888

	arm_func_start MOD04_02203890
MOD04_02203890: ; 0x02203890
	str r1, [r0, #0x20]
	bx lr
	arm_func_end MOD04_02203890

	arm_func_start MOD04_02203898
MOD04_02203898: ; 0x02203898
	ldrh r0, [r0, #0xc]
	mov r1, r0, asr #8
	mov r0, r0, lsl #8
	and r1, r1, #0xff
	and r0, r0, #0xff00
	orr r0, r1, r0
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bx lr
	arm_func_end MOD04_02203898

	arm_func_start MOD04_022038BC
MOD04_022038BC: ; 0x022038BC
	ldr r0, [r0, #8]
	bx lr
	arm_func_end MOD04_022038BC

	arm_func_start MOD04_022038C4
MOD04_022038C4: ; 0x022038C4
	ldrb r0, [r0, #0x15]
	and r0, r0, #2
	cmp r0, #2
	moveq r0, #1
	movne r0, #0
	bx lr
	arm_func_end MOD04_022038C4

	arm_func_start MOD04_022038DC
MOD04_022038DC: ; 0x022038DC
	ldrh r0, [r0, #4]
	bx lr
	arm_func_end MOD04_022038DC

	arm_func_start MOD04_022038E4
MOD04_022038E4: ; 0x022038E4
	ldrh r0, [r0, #4]
	mov r1, r0, asr #8
	mov r0, r0, lsl #8
	and r1, r1, #0xff
	and r0, r0, #0xff00
	orr r0, r1, r0
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bx lr
	arm_func_end MOD04_022038E4

	arm_func_start MOD04_02203908
MOD04_02203908: ; 0x02203908
	ldr r0, [r0]
	bx lr
	arm_func_end MOD04_02203908

	arm_func_start MOD04_02203910
MOD04_02203910: ; 0x02203910
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r2
	mov r2, #0
	mov r4, r3
	bl MOD04_022039E0
	cmp r0, #0
	beq _0220393C
	bl atod
	mov r5, r0
	mov r4, r1
_0220393C:
	mov r0, r5
	mov r1, r4
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	arm_func_end MOD04_02203910

	arm_func_start MOD04_0220394C
MOD04_0220394C: ; 0x0220394C
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r1
	mov r6, r0
	ldr r1, _022039D8 ; =UNK04_0220F7E0
	mov r0, r5
	mov r4, r2
	bl strcmp
	cmp r0, #0
	bne _0220397C
	mov r0, r6
	bl MOD04_022034A4
	ldmia sp!, {r4, r5, r6, pc}
_0220397C:
	mov r0, r6
	mov r1, r5
	mov r2, #0
	bl MOD04_022039E0
	cmp r0, #0
	beq _022039C8
	ldrb r2, [r0]
	cmp r2, #0
	blt _022039A8
	cmp r2, #0x80
	blt _022039B0
_022039A8:
	mov r1, #0
	b _022039C0
_022039B0:
	ldr r1, _022039DC ; =__msl_digit
	mov r2, r2, lsl #1
	ldrh r1, [r1, r2]
	and r1, r1, #8
_022039C0:
	cmp r1, #0
	bne _022039D0
_022039C8:
	mov r0, r4
	ldmia sp!, {r4, r5, r6, pc}
_022039D0:
	bl atol
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_022039D8: .word UNK04_0220F7E0
_022039DC: .word __msl_digit
	arm_func_end MOD04_0220394C

	arm_func_start MOD04_022039E0
MOD04_022039E0: ; 0x022039E0
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	movs r6, r0
	mov r5, r1
	mov r4, r2
	bne _02203A0C
	ldr r0, _02203A40 ; =UNK04_0220F7E8
	ldr r1, _02203A44 ; =UNK04_0220F7F0
	mov r2, #0
	mov r3, #0x97
	bl __msl_assertion_failed
_02203A0C:
	cmp r6, #0
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	str r5, [sp]
	ldr r0, [r6, #0x18]
	add r1, sp, #0
	bl MOD04_021EF358
	cmp r0, #0
	ldrne r4, [r0, #4]
	mov r0, r4
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_02203A40: .word UNK04_0220F7E8
_02203A44: .word UNK04_0220F7F0
	arm_func_end MOD04_022039E0

	arm_func_start MOD04_02203A48
MOD04_02203A48: ; 0x02203A48
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0x14
	mov r4, r1
	mov r5, r0
	ldr r1, _02203A7C ; =UNK04_0220F7FC
	add r0, sp, #0
	bl sprintf
	add r2, sp, #0
	mov r0, r5
	mov r1, r4
	bl MOD04_02203A80
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_02203A7C: .word UNK04_0220F7FC
	arm_func_end MOD04_02203A48

	arm_func_start MOD04_02203A80
MOD04_02203A80: ; 0x02203A80
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0xc
	mov r5, r0
	mov r4, r2
	mov r0, #0
	bl MOD04_02206428
	str r0, [sp]
	mov r1, r4
	mov r0, #0
	bl MOD04_02206428
	str r0, [sp, #4]
	ldr r0, [r5, #0x18]
	add r1, sp, #0
	bl MOD04_021EF494
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, pc}
	arm_func_end MOD04_02203A80

	arm_func_start MOD04_02203AC0
MOD04_02203AC0: ; 0x02203AC0
	stmdb sp!, {r4, lr}
	ldr r4, [r0]
	ldr r0, [r4, #0x18]
	bl MOD04_021EF5B0
	mov r1, #0
	mov r0, r4
	str r1, [r4, #0x18]
	bl MOD04_021DD82C
	ldmia sp!, {r4, pc}
	arm_func_end MOD04_02203AC0

	arm_func_start MOD04_02203AE4
MOD04_02203AE4: ; 0x02203AE4
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r0, _02203B30 ; =UNK04_02211734
	ldr r0, [r0]
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqia sp!, {pc}
	bl MOD04_021EF540
	cmp r0, #0
	addne sp, sp, #4
	ldmneia sp!, {pc}
	ldr r0, _02203B30 ; =UNK04_02211734
	ldr r0, [r0]
	bl MOD04_021EF5B0
	ldr r0, _02203B30 ; =UNK04_02211734
	mov r1, #0
	str r1, [r0]
	add sp, sp, #4
	ldmfd sp!, {pc}
	.align 2, 0
_02203B30: .word UNK04_02211734
	arm_func_end MOD04_02203AE4

	arm_func_start MOD04_02203B34
MOD04_02203B34: ; 0x02203B34
	stmdb sp!, {lr}
	sub sp, sp, #0xc
	ldr r0, _02203B88 ; =UNK04_02211734
	ldr r0, [r0]
	cmp r0, #0
	bne _02203B78
	ldr r0, _02203B8C ; =MOD04_02203BA8
	ldr ip, _02203B90 ; =MOD04_02203B98
	str r0, [sp]
	ldr r3, _02203B94 ; =MOD04_02203BBC
	mov r0, #8
	mov r1, #0x64
	mov r2, #2
	str ip, [sp, #4]
	bl MOD04_021EF62C
	ldr r1, _02203B88 ; =UNK04_02211734
	str r0, [r1]
_02203B78:
	ldr r0, _02203B88 ; =UNK04_02211734
	ldr r0, [r0]
	add sp, sp, #0xc
	ldmfd sp!, {pc}
	.align 2, 0
_02203B88: .word UNK04_02211734
_02203B8C: .word MOD04_02203BA8
_02203B90: .word MOD04_02203B98
_02203B94: .word MOD04_02203BBC
	arm_func_end MOD04_02203B34

	arm_func_start MOD04_02203B98
MOD04_02203B98: ; 0x02203B98
	ldr ip, _02203BA4 ; =MOD04_021DD82C
	ldr r0, [r0]
	bx ip
	.align 2, 0
_02203BA4: .word MOD04_021DD82C
	arm_func_end MOD04_02203B98

	arm_func_start MOD04_02203BA8
MOD04_02203BA8: ; 0x02203BA8
	ldr ip, _02203BB8 ; =strnicmp
	ldr r0, [r0]
	ldr r1, [r1]
	bx ip
	.align 2, 0
_02203BB8: .word strnicmp
	arm_func_end MOD04_02203BA8

	arm_func_start MOD04_02203BBC
MOD04_02203BBC: ; 0x02203BBC
	ldr ip, _02203BC8 ; =MOD04_022034F4
	ldr r0, [r0]
	bx ip
	.align 2, 0
_02203BC8: .word MOD04_022034F4
	arm_func_end MOD04_02203BBC

	arm_func_start MOD04_02203BCC
MOD04_02203BCC: ; 0x02203BCC
	ldr r0, [r0, #0x4ec]
	bx lr
	arm_func_end MOD04_02203BCC

	arm_func_start MOD04_02203BD4
MOD04_02203BD4: ; 0x02203BD4
	ldr ip, _02203BE0 ; =MOD04_02206740
	add r0, r0, #0x4c
	bx ip
	.align 2, 0
_02203BE0: .word MOD04_02206740
	arm_func_end MOD04_02203BD4

	arm_func_start MOD04_02203BE4
MOD04_02203BE4: ; 0x02203BE4
	ldr ip, _02203BF0 ; =MOD04_0220658C
	add r0, r0, #0x4c
	bx ip
	.align 2, 0
_02203BF0: .word MOD04_0220658C
	arm_func_end MOD04_02203BE4

	arm_func_start MOD04_02203BF4
MOD04_02203BF4: ; 0x02203BF4
	ldr ip, _02203C00 ; =MOD04_02206570
	add r0, r0, #0x4c
	bx ip
	.align 2, 0
_02203C00: .word MOD04_02206570
	arm_func_end MOD04_02203BF4

	arm_func_start MOD04_02203C04
MOD04_02203C04: ; 0x02203C04
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl MOD04_02203C1C
	add r0, r4, #0x4c
	bl MOD04_022064BC
	ldmia sp!, {r4, pc}
	arm_func_end MOD04_02203C04

	arm_func_start MOD04_02203C1C
MOD04_02203C1C: ; 0x02203C1C
	stmdb sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x4c
	bl MOD04_02205994
	mov r0, r4
	bl MOD04_02203024
	ldmia sp!, {r4, pc}
	arm_func_end MOD04_02203C1C

	arm_func_start MOD04_02203C38
MOD04_02203C38: ; 0x02203C38
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl MOD04_02202AD4
	add r0, r4, #0x4c
	bl MOD04_022041FC
	ldmia sp!, {r4, pc}
	arm_func_end MOD04_02203C38

	arm_func_start MOD04_02203C50
MOD04_02203C50: ; 0x02203C50
	stmdb sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x4c
	bl MOD04_022066A4
	mov r1, r0
	mvn r0, #0
	cmp r1, r0
	ldmeqia sp!, {r4, pc}
	add r0, r4, #0x4c
	bl MOD04_0220659C
	ldmia sp!, {r4, pc}
	arm_func_end MOD04_02203C50

	arm_func_start MOD04_02203C7C
MOD04_02203C7C: ; 0x02203C7C
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r0
	mov r6, r2
	mov r0, r1
	mov r4, r3
	bl MOD04_021EFB38
	mov r3, r6, asr #8
	mov r2, r6, lsl #8
	mov r1, r0
	and r3, r3, #0xff
	and r0, r2, #0xff00
	orr r0, r3, r0
	mov r2, r0, lsl #0x10
	mov r3, r4
	add r0, r5, #0x4c
	mov r2, r2, lsr #0x10
	bl MOD04_02204380
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end MOD04_02203C7C

	arm_func_start MOD04_02203CC4
MOD04_02203CC4: ; 0x02203CC4
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	mov r5, r0
	mov r6, r2
	mov r0, r1
	mov r4, r3
	bl MOD04_021EFB38
	mov r3, r6, asr #8
	mov r2, r6, lsl #8
	ldr ip, [sp, #0x18]
	mov r1, r0
	str ip, [sp]
	and r3, r3, #0xff
	and r0, r2, #0xff00
	orr r0, r3, r0
	mov r2, r0, lsl #0x10
	mov r3, r4
	add r0, r5, #0x4c
	mov r2, r2, lsr #0x10
	bl MOD04_02204438
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end MOD04_02203CC4

	arm_func_start MOD04_02203D1C
MOD04_02203D1C: ; 0x02203D1C
	stmdb sp!, {lr}
	sub sp, sp, #0x14
	ldr lr, [sp, #0x18]
	ldr ip, [sp, #0x1c]
	str lr, [sp]
	str ip, [sp, #4]
	mov lr, #0x80
	ldr ip, [sp, #0x20]
	str lr, [sp, #8]
	str ip, [sp, #0xc]
	bl MOD04_02203D50
	add sp, sp, #0x14
	ldmfd sp!, {pc}
	arm_func_end MOD04_02203D1C

	arm_func_start MOD04_02203D50
MOD04_02203D50: ; 0x02203D50
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x10c
	ldr r8, [sp, #0x130]
	mov sl, r0
	str r1, [sp, #4]
	add r4, sp, #8
	mov sb, r3
	mov r1, #0x40
	mov r0, #0
_02203D74:
	strb r0, [r4], #1
	strb r0, [r4], #1
	strb r0, [r4], #1
	strb r0, [r4], #1
	subs r1, r1, #1
	bne _02203D74
	mov r7, #0
	str r2, [sl, #0x620]
	mov r6, r7
	str r7, [sl, #0x40]
	cmp r8, #0
	ble _02203DFC
	ldr fp, _02203E78 ; =UNK04_0220F3A8
_02203DA8:
	ldrb r0, [sb, r6]
	add r4, sb, r6
	ldr r5, [fp, r0, lsl #2]
	mov r0, r5
	bl strlen
	add r0, r7, r0
	add r0, r0, #1
	cmp r0, #0x100
	bge _02203DFC
	add r0, sp, #8
	ldr r1, _02203E7C ; =UNK04_0220F800
	mov r2, r5
	add r0, r0, r7
	bl sprintf
	add r7, r7, r0
	ldrb r1, [r4]
	mov r0, sl
	bl MOD04_02202AB8
	add r6, r6, #1
	cmp r6, r8
	blt _02203DA8
_02203DFC:
	ldr r4, [sp, #0x13c]
	ldr r2, [sp, #0x134]
	ldr r3, [sp, #0x138]
	add r1, sp, #8
	add r0, sl, #0x4c
	str r4, [sp]
	bl MOD04_02205AB4
	cmp r0, #0
	addne sp, sp, #0x10c
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, [sp, #4]
	cmp r1, #0
	addne sp, sp, #0x10c
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r4, #0xa
	b _02203E4C
_02203E3C:
	mov r0, r4
	bl MOD04_021F0250
	mov r0, sl
	bl MOD04_02203C38
_02203E4C:
	ldr r1, [sl, #0x4c]
	cmp r1, #3
	beq _02203E3C
	ldr r1, [sl, #0x10]
	cmp r1, #0
	addle sp, sp, #0x10c
	ldmleia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	cmp r0, #0
	beq _02203E3C
	add sp, sp, #0x10c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02203E78: .word UNK04_0220F3A8
_02203E7C: .word UNK04_0220F800
	arm_func_end MOD04_02203D50

	arm_func_start MOD04_02203E80
MOD04_02203E80: ; 0x02203E80
	stmdb sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x4c
	bl MOD04_0220595C
	mov r0, r4
	bl MOD04_02202FF8
	mov r0, r4
	bl MOD04_021DD82C
	ldmia sp!, {r4, pc}
	arm_func_end MOD04_02203E80

	arm_func_start MOD04_02203EA4
MOD04_02203EA4: ; 0x02203EA4
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x10
	ldr r4, [sp, #0x30]
	mov r8, r0
	mov r7, r1
	mov r6, r2
	mov r5, r3
	cmp r4, #0
	bne _02203EE0
	ldr r0, _02203F68 ; =UNK04_02210E5C
	ldr r0, [r0]
	cmp r0, #1
	addne sp, sp, #0x10
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
_02203EE0:
	ldr r0, _02203F6C ; =0x00000638
	bl MOD04_021DD860
	movs r4, r0
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r1, [sp, #0x34]
	ldr r0, [sp, #0x38]
	str r1, [r4, #0x630]
	str r0, [r4, #0x634]
	mov r0, #0
	str r0, [r4, #0x624]
	ldr r1, [sp, #0x30]
	str r5, [sp]
	ldr r0, _02203F70 ; =MOD04_02204028
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r1, r8
	mov r2, r7
	mov r3, r6
	add r0, r4, #0x4c
	str r4, [sp, #0xc]
	bl MOD04_02206248
	ldr r0, _02203F74 ; =MOD04_02203F78
	ldr r1, [sp, #0x28]
	str r0, [sp]
	ldr r2, [sp, #0x2c]
	ldr r3, [sp, #0x30]
	mov r0, r4
	str r4, [sp, #4]
	bl MOD04_02203048
	mov r0, r4
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_02203F68: .word UNK04_02210E5C
_02203F6C: .word 0x00000638
_02203F70: .word MOD04_02204028
_02203F74: .word MOD04_02203F78
	arm_func_end MOD04_02203EA4

	arm_func_start MOD04_02203F78
MOD04_02203F78: ; 0x02203F78
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r2
	mov r4, r3
	cmp r1, #0
	beq _02203FBC
	cmp r1, #1
	beq _02203FA4
	cmp r1, #2
	beq _02203FD4
	b _02203FE8
_02203FA4:
	ldr r3, [r4, #0x634]
	ldr ip, [r4, #0x630]
	mov r0, r4
	mov r1, #2
	blx ip
	b _02203FE8
_02203FBC:
	ldr r3, [r4, #0x634]
	ldr ip, [r4, #0x630]
	mov r0, r4
	mov r1, #1
	blx ip
	b _02203FE8
_02203FD4:
	ldr r3, [r4, #0x634]
	ldr ip, [r4, #0x630]
	mov r0, r4
	mov r1, #4
	blx ip
_02203FE8:
	cmp r5, #0
	addeq sp, sp, #4
	ldmeqia sp!, {r4, r5, pc}
	ldr r1, [r5]
	ldr r0, [r4, #0x628]
	cmp r1, r0
	addne sp, sp, #4
	ldmneia sp!, {r4, r5, pc}
	add r0, r4, #0x600
	ldrh r1, [r5, #4]
	ldrh r0, [r0, #0x2c]
	cmp r1, r0
	moveq r0, #0
	streq r0, [r4, #0x628]
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	arm_func_end MOD04_02203F78

	arm_func_start MOD04_02204028
MOD04_02204028: ; 0x02204028
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r2
	mov r4, r3
	cmp r1, #6
	addls pc, pc, r1, lsl #2
	b _022041C8
_02204044: ; jump table
	b _02204060 ; case 0
	b _022040E8 ; case 1
	b _02204124 ; case 2
	b _02204158 ; case 3
	b _022041C8 ; case 4
	b _022041A0 ; case 5
	b _022041BC ; case 6
_02204060:
	ldr r3, [r4, #0x634]
	ldr ip, [r4, #0x630]
	mov r0, r4
	mov r1, #0
	blx ip
	ldrb r1, [r5, #0x14]
	ands r0, r1, #3
	beq _02204088
	ands r0, r1, #0x40
	bne _022041C8
_02204088:
	ands r0, r1, #0x2c
	bne _022041C8
	ldr r0, [r4, #0x624]
	cmp r0, #0
	bne _022041C8
	ldrb r0, [r5, #0x15]
	ands r0, r0, #1
	beq _022040D0
	ldr r0, [r4, #0x4c]
	cmp r0, #0
	beq _022040C0
	ldr r0, [r4, #0x40]
	cmp r0, #0
	bne _022040C8
_022040C0:
	mov r3, #1
	b _022040D4
_022040C8:
	mov r3, #0
	b _022040D4
_022040D0:
	mov r3, #2
_022040D4:
	mov r0, r4
	mov r1, r5
	mov r2, #0
	bl MOD04_02202F68
	b _022041C8
_022040E8:
	ldrb r0, [r5, #0x14]
	ands r0, r0, #0x43
	bne _0220410C
	ldr r3, [r4, #0x634]
	ldr ip, [r4, #0x630]
	mov r0, r4
	mov r1, #2
	blx ip
	b _022041C8
_0220410C:
	ldr r3, [r4, #0x634]
	ldr ip, [r4, #0x630]
	mov r0, r4
	mov r1, #1
	blx ip
	b _022041C8
_02204124:
	ldrb r0, [r5, #0x14]
	ands r0, r0, #0x2c
	beq _0220413C
	mov r0, r4
	mov r1, r5
	bl MOD04_02202A80
_0220413C:
	ldr r3, [r4, #0x634]
	ldr ip, [r4, #0x630]
	mov r0, r4
	mov r2, r5
	mov r1, #3
	blx ip
	b _022041C8
_02204158:
	ldr r1, [r4, #0x620]
	cmp r1, #0
	beq _02204168
	bl MOD04_02205994
_02204168:
	ldr r0, [r6, #4]
	bl MOD04_021EF06C
	cmp r0, #0
	beq _02204184
	ldr r0, [r4, #0x10]
	cmp r0, #0
	bne _022041C8
_02204184:
	ldr r3, [r4, #0x634]
	ldr ip, [r4, #0x630]
	mov r0, r4
	mov r1, #4
	mov r2, #0
	blx ip
	b _022041C8
_022041A0:
	ldr r3, [r4, #0x634]
	ldr ip, [r4, #0x630]
	mov r0, r4
	mov r1, #5
	mov r2, #0
	blx ip
	b _022041C8
_022041BC:
	ldr r1, [r4, #0x4ec]
	mov r0, r4
	bl MOD04_02203040
_022041C8:
	cmp r5, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r1, [r5]
	ldr r0, [r4, #0x628]
	cmp r1, r0
	ldmneia sp!, {r4, r5, r6, pc}
	add r0, r4, #0x600
	ldrh r1, [r5, #4]
	ldrh r0, [r0, #0x2c]
	cmp r1, r0
	moveq r0, #0
	streq r0, [r4, #0x628]
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end MOD04_02204028

	arm_func_start MOD04_022041FC
MOD04_022041FC: ; 0x022041FC
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl MOD04_02206514
	ldr r0, [r4]
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _02204240
_02204218: ; jump table
	b _02204234 ; case 0
	b _02204240 ; case 1
	b _02204228 ; case 2
	b _02204228 ; case 3
_02204228:
	mov r0, r4
	bl MOD04_02204560
	ldmia sp!, {r4, pc}
_02204234:
	mov r0, r4
	bl MOD04_02204248
	ldmia sp!, {r4, pc}
_02204240:
	mov r0, #0
	ldmia sp!, {r4, pc}
	arm_func_end MOD04_022041FC

	arm_func_start MOD04_02204248
MOD04_02204248: ; 0x02204248
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	ldr ip, _02204374 ; =0x000005F4
	sub sp, sp, ip
	mov r1, #8
	mov sl, r0
	str r1, [sp, #0x10]
	ldr r0, [sl, #0x4b0]
	bl MOD04_021EFF2C
	cmp r0, #0
	beq _0220431C
	add sb, sp, #8
	add r8, sp, #0x10
	add fp, sp, #0x14
	mov r5, #0x11
	mov r7, #0
	mvn r4, #0
_02204288:
	str sb, [sp]
	str r8, [sp, #4]
	ldr r0, [sl, #0x4b0]
	ldr r2, _02204378 ; =0x000005DB
	mov r1, fp
	mov r3, r7
	bl MOD04_021EFC40
	mvn r1, #0
	cmp r0, r1
	beq _0220430C
	ldrh r2, [sp, #0xa]
	ldr r1, [sp, #0xc]
	mov r0, sl
	bl MOD04_02206628
	cmp r0, r4
	bne _0220430C
	ldrh r2, [sp, #0xa]
	ldr r1, [sp, #0xc]
	mov r0, sl
	bl MOD04_022033F4
	mov r6, r0
	bl MOD04_022033AC
	cmp r0, #0
	ldrne ip, _02204374 ; =0x000005F4
	movne r0, #5
	addne sp, sp, ip
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r0, r6
	mov r1, r5
	bl MOD04_022033EC
	mov r0, sl
	mov r1, r6
	bl MOD04_02206704
_0220430C:
	ldr r0, [sl, #0x4b0]
	bl MOD04_021EFF2C
	cmp r0, #0
	bne _02204288
_0220431C:
	bl MOD04_021F025C
	ldr r1, [sl, #0x4b4]
	sub r0, r0, r1
	cmp r0, #0x7d0
	bls _02204364
	ldr r0, [sl, #0x4b0]
	bl MOD04_021EFD9C
	mvn r0, #0
	str r0, [sl, #0x4b0]
	mov r0, #1
	str r0, [sl]
	ldr r0, _0220437C ; =UNK04_02211738
	ldr r3, [sl, #0x494]
	ldr r2, [r0]
	ldr r4, [sl, #0x488]
	mov r0, sl
	mov r1, #3
	blx r4
_02204364:
	mov r0, #0
	ldr ip, _02204374 ; =0x000005F4
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02204374: .word 0x000005F4
_02204378: .word 0x000005DB
_0220437C: .word UNK04_02211738
	arm_func_end MOD04_02204248

	arm_func_start MOD04_02204380
MOD04_02204380: ; 0x02204380
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #0x10
	ldr r3, [sp, #0x3c]
	mov r7, #0xfd
	mov sb, r3, lsr #0x18
	mov r8, r3, lsr #8
	mov sl, r3, lsl #8
	and sb, sb, #0xff
	and r8, r8, #0xff00
	mov r6, #0xfc
	mov r5, #0x1e
	mov r4, #0x66
	mov lr, #0x6a
	mov ip, #0xb2
	strb r7, [sp, #4]
	mov r3, r3, lsl #0x18
	orr r8, sb, r8
	and sl, sl, #0xff0000
	and sb, r3, #0xff000000
	orr r3, sl, r8
	orr r3, sb, r3
	str r3, [sp, #0x3c]
	add r8, sp, #0x3c
	strb r6, [sp, #5]
	strb r5, [sp, #6]
	strb r4, [sp, #7]
	strb lr, [sp, #8]
	strb ip, [sp, #9]
	ldrb r5, [r8]
	ldrb r4, [r8, #1]
	add r7, sp, #0xa
	add r3, sp, #4
	strb r5, [r7]
	strb r4, [r7, #1]
	ldrb r6, [r8, #2]
	ldrb r5, [r8, #3]
	mov r4, #0xa
	strb r6, [r7, #2]
	strb r5, [r7, #3]
	str r4, [sp]
	bl MOD04_02204438
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end MOD04_02204380

	arm_func_start MOD04_02204438
MOD04_02204438: ; 0x02204438
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x18
	mov r5, r0
	ldr r1, [r5]
	mov r4, r3
	cmp r1, #1
	bne _0220446C
	mov r1, #0
	mov r2, r1
	mov r3, #2
	str r1, [sp]
	bl MOD04_02205AB4
_0220446C:
	ldr r0, [r5]
	cmp r0, #1
	addeq sp, sp, #0x18
	moveq r0, #3
	ldmeqia sp!, {r4, r5, r6, lr}
	addeq sp, sp, #0x10
	bxeq lr
	ldr r0, [sp, #0x38]
	add r1, sp, #4
	add r0, r0, #9
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r2, r0, asr #8
	mov r0, r0, lsl #8
	and r2, r2, #0xff
	and r0, r0, #0xff00
	orr r0, r2, r0
	strh r0, [sp, #4]
	ldrb r3, [r1]
	ldrb r2, [r1, #1]
	add r1, sp, #6
	mov r0, #2
	strb r3, [r1]
	strb r2, [r1, #1]
	add lr, sp, #0x2c
	strb r0, [sp, #8]
	ldrb r3, [lr]
	ldrb r0, [lr, #1]
	add r6, sp, #9
	add r2, sp, #0x30
	strb r3, [r6]
	strb r0, [r6, #1]
	ldrb ip, [lr, #2]
	ldrb r3, [lr, #3]
	add lr, sp, #0xd
	mov r0, r5
	strb ip, [r6, #2]
	strb r3, [r6, #3]
	ldrb ip, [r2]
	ldrb r3, [r2, #1]
	mov r2, #9
	strb ip, [lr]
	strb r3, [lr, #1]
	bl MOD04_02205D28
	cmp r0, #0
	addne sp, sp, #0x18
	ldmneia sp!, {r4, r5, r6, lr}
	addne sp, sp, #0x10
	bxne lr
	ldr r0, [r5, #0x4b0]
	ldr r2, [sp, #0x38]
	mov r1, r4
	mov r3, #0
	bl MOD04_021EFC24
	cmp r0, #0
	movlt r0, #3
	movge r0, #0
	add sp, sp, #0x18
	ldmia sp!, {r4, r5, r6, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end MOD04_02204438

	arm_func_start MOD04_02204560
MOD04_02204560: ; 0x02204560
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r0, [r6, #0x4b0]
	bl MOD04_021EFF2C
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r4, [r6, #0x80]
	ldr r1, [r6, #0x7c]
	ldr r0, [r6, #0x4b0]
	add r1, r1, r4
	rsb r2, r4, #0x1000
	mov r3, #0
	bl MOD04_021EFC78
	add r1, r0, #1
	cmp r1, #1
	bhi _022045B4
	mov r0, r6
	bl MOD04_02206184
	mov r0, #3
	ldmia sp!, {r4, r5, r6, pc}
_022045B4:
	ldr r1, [r6, #0x80]
	mov r5, #0
	add r0, r1, r0
	str r0, [r6, #0x80]
	ldr r0, [r6]
	cmp r0, #2
	beq _022045DC
	ldr r0, [r6, #0x5c8]
	cmp r0, #0
	ble _022045F8
_022045DC:
	ldr r1, [r6, #0x7c]
	ldr r2, [r6, #0x80]
	ldr r0, _02204648 ; =0x000004BC
	add r1, r1, r4
	add r0, r6, r0
	sub r2, r2, r4
	bl MOD04_0220279C
_022045F8:
	ldr r0, [r6]
	cmp r0, #3
	bne _02204610
	mov r0, r6
	bl MOD04_02204DF0
	mov r5, r0
_02204610:
	cmp r5, #0
	movne r0, r5
	ldmneia sp!, {r4, r5, r6, pc}
	ldr r0, [r6]
	cmp r0, #2
	bne _02204640
	ldr r0, [r6, #0x80]
	cmp r0, #0
	ble _02204640
	mov r0, r6
	bl MOD04_0220464C
	ldmia sp!, {r4, r5, r6, pc}
_02204640:
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_02204648: .word 0x000004BC
	arm_func_end MOD04_02204560

	arm_func_start MOD04_0220464C
MOD04_0220464C: ; 0x0220464C
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #4
	mov sb, r0
	ldr r0, [sb, #0x80]
	mov r8, #0
	cmp r0, #3
	blt _02204800
	ldr sl, _0220481C ; =UNK04_0220F818
	ldr fp, _02204820 ; =UNK04_0220F830
	add r7, sp, #0
	mov r6, r8
	mov r4, r8
	add r5, sb, #0x80
_02204680:
	ldr r0, [sb, #0x7c]
	ldrb r1, [r0]
	ldrb r0, [r0, #1]
	strb r1, [r7]
	strb r0, [r7, #1]
	ldrh r0, [sp]
	mov r1, r0, asr #8
	mov r0, r0, lsl #8
	and r1, r1, #0xff
	and r0, r0, #0xff00
	orr r0, r1, r0
	strh r0, [sp]
	ldrh r2, [sp]
	cmp r2, #0x1000
	movhi r8, #4
	bhi _02204800
	ldr r0, [sb, #0x80]
	cmp r0, r2
	addlt sp, sp, #4
	movlt r0, #0
	ldmltia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, [sb, #0x7c]
	ldrsb r0, [r1, #2]
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	b _02204798
_022046E8: ; jump table
	b _02204798 ; case 0
	b _02204704 ; case 1
	b _0220471C ; case 2
	b _02204734 ; case 3
	b _02204754 ; case 4
	b _0220476C ; case 5
	b _02204784 ; case 6
_02204704:
	mov r0, sb
	add r1, r1, #3
	sub r2, r2, #3
	bl MOD04_02204D10
	mov r8, r0
	b _02204798
_0220471C:
	mov r0, sb
	add r1, r1, #3
	sub r2, r2, #3
	bl MOD04_02204828
	mov r8, r0
	b _02204798
_02204734:
	ldr r0, [sb, #0x4b0]
	mov r3, r6
	bl MOD04_021EFC24
	cmp r0, #0
	bgt _02204798
	add sp, sp, #4
	mov r0, #3
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02204754:
	mov r0, sb
	add r1, r1, #3
	sub r2, r2, #3
	bl MOD04_02204920
	mov r8, r0
	b _02204798
_0220476C:
	mov r0, sb
	add r1, r1, #3
	sub r2, r2, #3
	bl MOD04_022049B0
	mov r8, r0
	b _02204798
_02204784:
	mov r0, sb
	add r1, r1, #3
	sub r2, r2, #3
	bl MOD04_02204B40
	mov r8, r0
_02204798:
	ldrh r0, [sp]
	ldr r1, [r5]
	sub r0, r1, r0
	str r0, [r5]
	ldr r0, [sb, #0x80]
	cmp r0, #0
	bge _022047C8
	ldr r3, _02204824 ; =0x000005B4
	mov r0, sl
	mov r1, fp
	mov r2, r4
	bl __msl_assertion_failed
_022047C8:
	ldr r2, [sb, #0x80]
	cmp r2, #0
	beq _022047EC
	ldr r0, [sb, #0x7c]
	cmp r0, #0
	beq _022047EC
	ldrh r1, [sp]
	add r1, r0, r1
	bl memmove
_022047EC:
	cmp r8, #0
	bne _02204800
	ldr r0, [sb, #0x80]
	cmp r0, #3
	bge _02204680
_02204800:
	cmp r8, #0
	beq _02204810
	mov r0, sb
	bl MOD04_02206184
_02204810:
	mov r0, r8
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0220481C: .word UNK04_0220F818
_02204820: .word UNK04_0220F830
_02204824: .word 0x000005B4
	arm_func_end MOD04_0220464C

	arm_func_start MOD04_02204828
MOD04_02204828: ; 0x02204828
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x10
	mov r6, r2
	cmp r6, #5
	mov r8, r0
	mov r7, r1
	addlt sp, sp, #0x10
	movlt r0, #4
	ldmltia sp!, {r4, r5, r6, r7, r8, pc}
	add r4, sp, #4
	add r3, sp, #8
	str r4, [sp]
	bl MOD04_02205650
	ldrh r2, [sp, #4]
	ldr r1, [sp, #8]
	mov r0, r8
	bl MOD04_02206628
	mov r4, r0
	mvn r0, #0
	cmp r4, r0
	bne _022048A8
	ldrh r2, [sp, #4]
	ldr r1, [sp, #8]
	mov r0, r8
	bl MOD04_022033F4
	mov r5, r0
	bl MOD04_022033AC
	cmp r0, #0
	beq _022048B8
	add sp, sp, #0x10
	mov r0, #5
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_022048A8:
	mov r0, r8
	mov r1, r4
	bl MOD04_02206570
	mov r5, r0
_022048B8:
	mov ip, #0
	mov r0, r8
	mov r1, r5
	mov r2, r7
	mov r3, r6
	str ip, [sp]
	bl MOD04_02205378
	cmp r0, #0
	addlt sp, sp, #0x10
	movlt r0, #4
	ldmltia sp!, {r4, r5, r6, r7, r8, pc}
	mvn r0, #0
	cmp r4, r0
	bne _022048FC
	mov r0, r8
	mov r1, r5
	bl MOD04_02206704
_022048FC:
	ldr r3, [r8, #0x494]
	ldr r4, [r8, #0x488]
	mov r0, r8
	mov r2, r5
	mov r1, #1
	blx r4
	mov r0, #0
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end MOD04_02204828

	arm_func_start MOD04_02204920
MOD04_02204920: ; 0x02204920
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0xc
	cmp r2, #6
	mov r4, r0
	addlt sp, sp, #0xc
	movlt r0, #4
	ldmltia sp!, {r4, r5, pc}
	ldrb ip, [r1]
	ldrb r2, [r1, #1]
	add r5, sp, #4
	add r3, r1, #4
	strb ip, [r5]
	strb r2, [r5, #1]
	ldrb lr, [r1, #2]
	ldrb r2, [r1, #3]
	add ip, sp, #0
	strb lr, [r5, #2]
	strb r2, [r5, #3]
	ldrb r2, [r1, #4]
	ldrb r1, [r3, #1]
	strb r2, [ip]
	strb r1, [ip, #1]
	ldrh r2, [sp]
	ldr r1, [sp, #4]
	bl MOD04_02206628
	mov r1, r0
	mvn r0, #0
	cmp r1, r0
	addeq sp, sp, #0xc
	moveq r0, #0
	ldmeqia sp!, {r4, r5, pc}
	mov r0, r4
	bl MOD04_0220659C
	mov r0, #0
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, pc}
	arm_func_end MOD04_02204920

	arm_func_start MOD04_022049B0
MOD04_022049B0: ; 0x022049B0
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x54
	mov r8, r2
	cmp r8, #0xb
	mov sl, r0
	mov sb, r1
	addlt sp, sp, #0x54
	movlt r0, #4
	ldmltia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldrb r3, [sb]
	ldrb r2, [sb, #1]
	add r5, sp, #0x10
	add r1, sb, #4
	strb r3, [r5]
	strb r2, [r5, #1]
	ldrb r4, [sb, #2]
	ldrb r2, [sb, #3]
	add r3, sp, #8
	strb r4, [r5, #2]
	strb r2, [r5, #3]
	ldrb r2, [sb, #4]
	ldrb r1, [r1, #1]
	strb r2, [r3]
	strb r1, [r3, #1]
	ldrh r2, [sp, #8]
	ldr r1, [sp, #0x10]
	bl MOD04_02206628
	mov r1, r0
	mvn r0, #0
	cmp r1, r0
	addeq sp, sp, #0x54
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r0, sl
	bl MOD04_02206570
	add r3, sb, #6
	ldrb r2, [sb, #6]
	ldrb r1, [r3, #1]
	add r4, sp, #0xc
	mov fp, r0
	strb r2, [r4]
	strb r1, [r4, #1]
	ldrb r1, [r3, #2]
	ldrb r0, [r3, #3]
	sub r8, r8, #0xb
	mov r6, #0
	strb r1, [r4, #2]
	strb r0, [r4, #3]
	ldr r0, [sp, #0xc]
	add r5, sp, #0x14
	mov r2, r0, lsr #0x18
	mov r1, r0, lsr #8
	mov r3, r0, lsl #8
	and r2, r2, #0xff
	and r1, r1, #0xff00
	mov r0, r0, lsl #0x18
	orr r1, r2, r1
	and r3, r3, #0xff0000
	and r2, r0, #0xff000000
	orr r0, r3, r1
	orr r0, r2, r0
	str r0, [sp, #0xc]
	ldrb r7, [sb, #0xa]
	add sb, sb, #0xb
	mvn r4, #0
	b _02204AEC
_02204AB8:
	cmp r8, #1
	blt _02204AFC
	mov r0, sb
	mov r1, r8
	bl MOD04_02206378
	cmp r0, r4
	addeq sp, sp, #0x54
	moveq r0, #4
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	str sb, [r5, r6, lsl #2]
	add sb, sb, r0
	sub r8, r8, r0
	add r6, r6, #1
_02204AEC:
	cmp r6, r7
	bge _02204AFC
	cmp r6, #0x10
	blt _02204AB8
_02204AFC:
	ldr r4, [sl, #0x48c]
	cmp r4, #0
	addeq sp, sp, #0x54
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	add r1, sp, #0x14
	str r1, [sp]
	ldr r2, [sl, #0x494]
	mov r0, sl
	str r2, [sp, #4]
	ldr r2, [sp, #0xc]
	mov r1, fp
	mov r3, r6
	blx r4
	mov r0, #0
	add sp, sp, #0x54
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end MOD04_022049B0

	arm_func_start MOD04_02204B40
MOD04_02204B40: ; 0x02204B40
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x24
	mov r7, r2
	cmp r7, #2
	mov sb, r0
	mov r8, r1
	addlt sp, sp, #0x24
	movlt r0, #4
	ldmltia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldrb r0, [r8, #1]
	sub r7, r7, #2
	mov r6, #0
	str r0, [sp, #0x10]
	ldrb r0, [r8]
	add r8, r8, #2
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	cmp r0, #0
	ble _02204CD0
	add r5, sp, #0x18
	add r4, sp, #0x1c
_02204B94:
	mov r0, r8
	mov r1, r7
	mov fp, r8
	bl MOD04_02206378
	mvn r1, #0
	cmp r0, r1
	addeq sp, sp, #0x24
	moveq r0, #4
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	sub r2, r7, r0
	cmp r2, #0xb
	add lr, r8, r0
	addlt sp, sp, #0x24
	movlt r0, #4
	ldmltia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldrb r1, [lr]
	ldrb r0, [lr, #1]
	sub r7, r2, #0xa
	add r3, lr, #6
	strb r1, [r5]
	strb r0, [r5, #1]
	ldrb r2, [lr, #2]
	ldrb r1, [lr, #3]
	add r0, lr, #4
	add r8, lr, #0xa
	strb r2, [r5, #2]
	strb r1, [r5, #3]
	ldrb sl, [r0, #1]
	ldrb ip, [lr, #4]
	add r2, sp, #0x14
	mov r0, r8
	strb ip, [r2]
	strb sl, [r2, #1]
	ldrb sl, [lr, #6]
	ldrb r2, [r3, #1]
	mov r1, r7
	strb sl, [r4]
	strb r2, [r4, #1]
	ldrb sl, [r3, #2]
	ldrb r2, [r3, #3]
	strb sl, [r4, #2]
	strb r2, [r4, #3]
	ldr ip, [sp, #0x1c]
	mov r3, ip, lsl #0x18
	mov r2, ip, lsr #0x18
	and sl, r3, #0xff000000
	mov r3, ip, lsl #8
	mov ip, ip, lsr #8
	and r2, r2, #0xff
	and ip, ip, #0xff00
	and r3, r3, #0xff0000
	orr r2, r2, ip
	orr r2, r3, r2
	orr r2, sl, r2
	str r2, [sp, #0x1c]
	bl MOD04_02206378
	mov sl, r0
	mvn r0, #0
	cmp sl, r0
	addeq sp, sp, #0x24
	moveq r0, #4
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, [sp, #0x1c]
	mov r0, sb
	str r1, [sp]
	str r8, [sp, #4]
	ldr r2, [sb, #0x494]
	mov r1, fp
	str r2, [sp, #8]
	ldrh r3, [sp, #0x14]
	ldr r2, [sp, #0x18]
	ldr fp, [sb, #0x490]
	blx fp
	ldr r0, [sp, #0x10]
	add r6, r6, #1
	cmp r6, r0
	add r8, r8, sl
	sub r7, r7, sl
	blt _02204B94
_02204CD0:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _02204D04
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	ldr r2, [sb, #0x494]
	mov r0, sb
	str r2, [sp, #8]
	ldr r4, [sb, #0x490]
	mov r2, r1
	mov r3, r1
	blx r4
_02204D04:
	mov r0, #0
	add sp, sp, #0x24
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end MOD04_02204B40

	arm_func_start MOD04_02204D10
MOD04_02204D10: ; 0x02204D10
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xc
	mov sl, r0
	ldr r3, [sl, #8]
	mov sb, r1
	mov r8, r2
	cmp r3, #0
	sub r8, r8, #1
	ldrb r6, [sb], #1
	beq _02204D3C
	bl MOD04_022059F8
_02204D3C:
	mov r1, r6
	mov r0, #8
	mov r2, #0
	bl MOD04_021EF0E4
	str r0, [sl, #8]
	ldr r0, [sl, #8]
	cmp r0, #0
	addeq sp, sp, #0xc
	moveq r0, #5
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	cmp r6, #0
	mov r7, #0
	ble _02204DE4
	add fp, sp, #0
	mvn r4, #0
_02204D78:
	cmp r8, #2
	addlt sp, sp, #0xc
	movlt r0, #4
	ldmltia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	add r0, sb, #1
	sub r1, r8, #1
	bl MOD04_02206378
	mov r5, r0
	cmp r5, r4
	addeq sp, sp, #0xc
	moveq r0, #4
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldrb r2, [sb]
	mov r0, sl
	add r1, sb, #1
	str r2, [sp, #4]
	bl MOD04_02206428
	str r0, [sp]
	ldr r0, [sl, #8]
	mov r1, fp
	bl MOD04_021EEFA8
	add r0, r5, #1
	add r7, r7, #1
	cmp r7, r6
	add sb, sb, r0
	sub r8, r8, r0
	blt _02204D78
_02204DE4:
	mov r0, #0
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end MOD04_02204D10

	arm_func_start MOD04_02204DF0
MOD04_02204DF0: ; 0x02204DF0
	stmdb sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0xc
	mov r8, r0
	ldr r1, [r8, #0x5c8]
	ldr r7, [r8, #0x7c]
	ldr r6, [r8, #0x80]
	cmp r1, #4
	addls pc, pc, r1, lsl #2
	b _022051D0
_02204E14: ; jump table
	b _02204E28 ; case 0
	b _02204E88 ; case 1
	b _02204F98 ; case 2
	b _0220508C ; case 3
	b _02205140 ; case 4
_02204E28:
	cmp r6, #1
	blt _022051D0
	ldrb r1, [r7]
	eor r1, r1, #0xec
	add r3, r1, #2
	cmp r6, r3
	blt _022051D0
	sub r1, r3, #1
	ldrb r1, [r7, r1]
	eor r2, r1, #0xea
	add r4, r3, r2
	cmp r6, r4
	blt _022051D0
	add r1, r7, r3
	bl MOD04_022058B0
	ldr r0, _02205224 ; =0x000004BC
	add r7, r7, r4
	sub r6, r6, r4
	mov r3, #1
	mov r1, r7
	mov r2, r6
	add r0, r8, r0
	str r3, [r8, #0x5c8]
	bl MOD04_0220279C
_02204E88:
	cmp r6, #6
	blt _022051D0
	ldrb r1, [r7]
	ldrb r0, [r7, #1]
	add r5, r8, #0x4a0
	ldr r2, _02205228 ; =UNK04_02211738
	strb r1, [r8, #0x4a0]
	strb r0, [r5, #1]
	ldrb r4, [r7, #2]
	ldrb r3, [r7, #3]
	mov r0, r8
	mov r1, #6
	strb r4, [r5, #2]
	strb r3, [r5, #3]
	ldr r2, [r2]
	ldr r3, [r8, #0x494]
	ldr r4, [r8, #0x488]
	blx r4
	add r1, r7, #4
	ldr r0, _0220522C ; =0x000004A8
	ldrb r2, [r7, #4]
	ldrb r1, [r1, #1]
	add r3, r8, r0
	add r0, r8, #0x400
	strb r2, [r8, #0x4a8]
	strb r1, [r3, #1]
	ldrh r1, [r0, #0xa8]
	ldr r0, _02205230 ; =0x0000FFFF
	cmp r1, r0
	bne _02204F4C
	add r0, r7, #6
	sub r1, r6, #6
	bl MOD04_02206378
	mvn r1, #0
	cmp r0, r1
	beq _022051D0
	mov r0, r8
	add r1, r7, #6
	bl MOD04_02205240
	ldr r0, _02205228 ; =UNK04_02211738
	ldr r3, [r8, #0x494]
	ldr r2, [r0]
	ldr r4, [r8, #0x488]
	mov r0, r8
	mov r1, #5
	blx r4
	ldr r0, [r8, #0x7c]
	cmp r0, #0
	beq _022051D0
_02204F4C:
	ldr r0, [r8, #0x5c4]
	add r7, r7, #6
	sub r6, r6, #6
	ands r0, r0, #2
	bne _02204F74
	add r0, r8, #0x400
	ldrh r1, [r0, #0xa8]
	ldr r0, _02205230 ; =0x0000FFFF
	cmp r1, r0
	bne _02204F88
_02204F74:
	mov r0, #5
	str r0, [r8, #0x5c8]
	mov r0, #2
	str r0, [r8]
	b _022051D0
_02204F88:
	mov r0, #2
	str r0, [r8, #0x5c8]
	mvn r0, #0
	str r0, [r8, #0x484]
_02204F98:
	ldr r1, [r8, #0x484]
	mvn r0, #0
	cmp r1, r0
	bne _02204FE8
	cmp r6, #1
	blt _022051D0
	ldrb r1, [r7]
	mov r0, #8
	mov r2, #0
	str r1, [r8, #0x484]
	ldr r1, [r8, #0x484]
	bl MOD04_021EF0E4
	str r0, [r8, #8]
	ldr r0, [r8, #8]
	cmp r0, #0
	addeq sp, sp, #0xc
	moveq r0, #5
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, pc}
	add r7, r7, #1
	sub r6, r6, #1
_02204FE8:
	ldr r0, [r8, #8]
	bl MOD04_021EF06C
	ldr r1, [r8, #0x484]
	cmp r1, r0
	ble _02205068
	add r5, sp, #0
	mvn r4, #0
_02205004:
	cmp r6, #2
	blt _02205068
	add r0, r7, #1
	sub r1, r6, #1
	bl MOD04_02206378
	mov sb, r0
	cmp sb, r4
	beq _02205068
	ldrb r2, [r7]
	mov r0, r8
	add r1, r7, #1
	str r2, [sp, #4]
	bl MOD04_02206428
	str r0, [sp]
	ldr r0, [r8, #8]
	mov r1, r5
	bl MOD04_021EEFA8
	add r1, sb, #1
	ldr r0, [r8, #8]
	add r7, r7, r1
	sub r6, r6, r1
	bl MOD04_021EF06C
	ldr r1, [r8, #0x484]
	cmp r1, r0
	bgt _02205004
_02205068:
	ldr r0, [r8, #8]
	bl MOD04_021EF06C
	ldr r1, [r8, #0x484]
	cmp r1, r0
	bgt _022051D0
	mov r0, #3
	str r0, [r8, #0x5c8]
	mvn r0, #0
	str r0, [r8, #0x484]
_0220508C:
	ldr r1, [r8, #0x484]
	mvn r0, #0
	cmp r1, r0
	bne _022050BC
	cmp r6, #1
	blt _022051D0
	ldrb r1, [r7]
	mov r0, #0
	add r7, r7, #1
	str r1, [r8, #0x484]
	str r0, [r8, #0x480]
	sub r6, r6, #1
_022050BC:
	ldr r1, [r8, #0x484]
	ldr r0, [r8, #0x480]
	cmp r1, r0
	ble _02205128
	add r4, r8, #0x480
	mvn sb, #0
_022050D4:
	mov r0, r7
	mov r1, r6
	bl MOD04_02206378
	mov r5, r0
	cmp r5, sb
	beq _02205128
	mov r0, r8
	mov r1, r7
	bl MOD04_02206428
	ldr r1, [r4]
	ldr r2, [r8, #0x480]
	add r1, r1, #1
	str r1, [r4]
	add r1, r8, r2, lsl #2
	str r0, [r1, #0x84]
	ldr r1, [r8, #0x484]
	ldr r0, [r8, #0x480]
	add r7, r7, r5
	cmp r1, r0
	sub r6, r6, r5
	bgt _022050D4
_02205128:
	ldr r1, [r8, #0x484]
	ldr r0, [r8, #0x480]
	cmp r1, r0
	bgt _022051D0
	mov r0, #4
	str r0, [r8, #0x5c8]
_02205140:
	cmp r6, #5
	blt _022051D0
	mov sb, #0
	mvn r4, #0
	mvn r5, #1
_02205154:
	mov r0, r8
	mov r1, r7
	mov r2, r6
	bl MOD04_02205248
	cmp r0, r5
	addeq sp, sp, #0xc
	moveq r0, #5
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, pc}
	cmp r0, r4
	bne _022051B4
	mov r0, #5
	str r0, [r8, #0x5c8]
	mov r0, #2
	str r0, [r8]
	ldr r0, _02205228 ; =UNK04_02211738
	ldr r3, [r8, #0x494]
	ldr r2, [r0]
	ldr r4, [r8, #0x488]
	mov r0, r8
	mov r1, #3
	sub r6, r6, #5
	add r7, r7, #5
	blx r4
	b _022051D0
_022051B4:
	ldr r1, [r8, #0x7c]
	add r7, r7, r0
	cmp r1, #0
	sub r6, r6, r0
	moveq r0, sb
	cmp r0, #0
	bne _02205154
_022051D0:
	cmp r6, #0
	bge _022051EC
	ldr r0, _02205234 ; =UNK04_0220F840
	ldr r1, _02205238 ; =UNK04_0220F830
	ldr r3, _0220523C ; =0x000004AF
	mov r2, #0
	bl __msl_assertion_failed
_022051EC:
	ldr r0, [r8, #0x7c]
	cmp r0, #0
	addeq sp, sp, #0xc
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, pc}
	cmp r6, #0
	beq _02205214
	mov r1, r7
	mov r2, r6
	bl memmove
_02205214:
	str r6, [r8, #0x80]
	mov r0, #0
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_02205224: .word 0x000004BC
_02205228: .word UNK04_02211738
_0220522C: .word 0x000004A8
_02205230: .word 0x0000FFFF
_02205234: .word UNK04_0220F840
_02205238: .word UNK04_0220F830
_0220523C: .word 0x000004AF
	arm_func_end MOD04_02204DF0

	arm_func_start MOD04_02205240
MOD04_02205240: ; 0x02205240
	str r1, [r0, #0x4ac]
	bx lr
	arm_func_end MOD04_02205240

	arm_func_start MOD04_02205248
MOD04_02205248: ; 0x02205248
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x10
	mov r4, r2
	cmp r4, #1
	mov r6, r0
	mov r5, r1
	addlt sp, sp, #0x10
	movlt r0, #0
	ldmltia sp!, {r4, r5, r6, r7, r8, pc}
	ldrb r7, [r5]
	mov r0, r7
	bl MOD04_02205884
	mov r8, r0
	cmp r4, r8
	addlt sp, sp, #0x10
	movlt r0, #0
	ldmltia sp!, {r4, r5, r6, r7, r8, pc}
	ands r0, r7, #0x40
	beq _022052B4
	mov r0, r6
	add r1, r5, r8
	sub r2, r4, r8
	bl MOD04_022056DC
	cmp r0, #0
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
_022052B4:
	ands r0, r7, #0x80
	beq _022052D8
	add r0, r5, r8
	sub r1, r4, r8
	bl MOD04_022057EC
	cmp r0, #0
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
_022052D8:
	ldr r1, _02205374 ; =UNK04_0220F84C
	add r0, r5, #1
	mov r2, #4
	bl memcmp
	cmp r0, #0
	addeq sp, sp, #0x10
	mvneq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	add r7, sp, #4
	add r3, sp, #8
	mov r0, r6
	mov r1, r5
	mov r2, r4
	str r7, [sp]
	bl MOD04_02205650
	ldrh r2, [sp, #4]
	ldr r1, [sp, #8]
	mov r0, r6
	bl MOD04_022033F4
	mov r7, r0
	bl MOD04_022033AC
	cmp r0, #0
	addne sp, sp, #0x10
	mvnne r0, #1
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
	mov ip, #1
	mov r0, r6
	mov r1, r7
	mov r2, r5
	mov r3, r4
	str ip, [sp]
	bl MOD04_02205378
	mov r4, r0
	mov r0, r6
	mov r1, r7
	bl MOD04_02206704
	mov r0, r4
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_02205374: .word UNK04_0220F84C
	arm_func_end MOD04_02205248

	arm_func_start MOD04_02205378
MOD04_02205378: ; 0x02205378
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x14
	mov r8, r2
	ldrb r2, [r8]
	mov sb, r1
	mov sl, r0
	mov r7, r3
	str r2, [sp, #4]
	mov r0, sb
	mov r1, r2
	str r7, [sp]
	ldr r6, [sp, #0x38]
	bl MOD04_022033EC
	ldr r0, [sp, #4]
	add r8, r8, #5
	ands r0, r0, #0x10
	sub r7, r7, #5
	ldr r0, [sp, #4]
	addne r8, r8, #2
	subne r7, r7, #2
	ands r0, r0, #2
	moveq r0, #0
	streq r0, [sp, #0xc]
	beq _02205404
	ldrb r1, [r8]
	ldrb r0, [r8, #1]
	add r2, sp, #0xc
	sub r7, r7, #4
	strb r1, [r2]
	strb r0, [r2, #1]
	ldrb r1, [r8, #2]
	ldrb r0, [r8, #3]
	add r8, r8, #4
	strb r1, [r2, #2]
	strb r0, [r2, #3]
_02205404:
	ldr r0, [sp, #4]
	ands r0, r0, #0x20
	addeq r0, sl, #0x400
	ldreqh r0, [r0, #0xa8]
	streqh r0, [sp, #0xa]
	beq _02205438
	ldrb r1, [r8]
	ldrb r0, [r8, #1]
	add r2, sp, #0xa
	add r8, r8, #2
	strb r1, [r2]
	strb r0, [r2, #1]
	sub r7, r7, #2
_02205438:
	ldrh r2, [sp, #0xa]
	ldr r1, [sp, #0xc]
	mov r0, sb
	bl MOD04_022033E0
	ldr r0, [sp, #4]
	ands r0, r0, #8
	beq _0220548C
	ldrb r2, [r8]
	ldrb r1, [r8, #1]
	add r3, sp, #0xc
	mov r0, sb
	strb r2, [r3]
	strb r1, [r3, #1]
	ldrb r2, [r8, #2]
	ldrb r1, [r8, #3]
	add r8, r8, #4
	sub r7, r7, #4
	strb r2, [r3, #2]
	strb r1, [r3, #3]
	ldr r1, [sp, #0xc]
	bl MOD04_022033D8
_0220548C:
	ldr r0, [sp, #4]
	ands r0, r0, #0x40
	beq _022055C4
	ldr r0, [sl, #8]
	bl MOD04_021EF06C
	mov r5, r0
	cmp r5, #0
	mov r4, #0
	ble _022055AC
	mov fp, #0xff
_022054B4:
	ldr r0, [sl, #8]
	mov r1, r4
	bl MOD04_021EEFFC
	mov r1, r0
	ldr r0, [r1, #4]
	cmp r0, #0
	beq _0220554C
	cmp r0, #1
	beq _022054E4
	cmp r0, #2
	beq _02205500
	b _022055A0
_022054E4:
	ldrb r2, [r8]
	ldr r1, [r1]
	mov r0, sb
	bl MOD04_02203A48
	add r8, r8, #1
	sub r7, r7, #1
	b _022055A0
_02205500:
	ldrb ip, [r8]
	ldrb r3, [r8, #1]
	add r2, sp, #8
	mov r0, sb
	strb ip, [r2]
	strb r3, [r2, #1]
	ldrh r3, [sp, #8]
	ldr r1, [r1]
	mov r2, r3, asr #8
	mov r3, r3, lsl #8
	and r2, r2, #0xff
	and r3, r3, #0xff00
	orr r2, r2, r3
	mov r2, r2, lsl #0x10
	mov r2, r2, lsr #0x10
	bl MOD04_02203A48
	add r8, r8, #2
	sub r7, r7, #2
	b _022055A0
_0220554C:
	cmp r6, #0
	ldrneb r0, [r8], #1
	subne r7, r7, #1
	moveq r0, fp
	cmp r0, #0xff
	bne _0220558C
	ldr r1, [r1]
	mov r0, sb
	mov r2, r8
	bl MOD04_02203A80
	mov r0, r8
	bl strlen
	add r0, r0, #1
	add r8, r8, r0
	sub r7, r7, r0
	b _022055A0
_0220558C:
	add r0, sl, r0, lsl #2
	ldr r1, [r1]
	ldr r2, [r0, #0x84]
	mov r0, sb
	bl MOD04_02203A80
_022055A0:
	add r4, r4, #1
	cmp r4, r5
	blt _022054B4
_022055AC:
	mov r0, sb
	bl MOD04_022033C8
	orr r1, r0, #1
	mov r0, sb
	and r1, r1, #0xff
	bl MOD04_022033D0
_022055C4:
	ldr r0, [sp, #4]
	ands r0, r0, #0x80
	beq _02205640
	b _02205610
_022055D4:
	mov r0, r8
	mov r4, r8
	bl strlen
	add r3, r0, #1
	add r8, r8, r3
	mov r0, sb
	mov r1, r4
	mov r2, r8
	sub r7, r7, r3
	bl MOD04_02203A80
	mov r0, r8
	bl strlen
	add r0, r0, #1
	add r8, r8, r0
	sub r7, r7, r0
_02205610:
	ldrsb r0, [r8]
	cmp r0, #0
	beq _02205624
	cmp r7, #0
	bgt _022055D4
_02205624:
	mov r0, sb
	sub r7, r7, #1
	bl MOD04_022033C8
	orr r1, r0, #2
	mov r0, sb
	and r1, r1, #0xff
	bl MOD04_022033D0
_02205640:
	ldr r0, [sp]
	sub r0, r0, r7
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end MOD04_02205378

	arm_func_start MOD04_02205650
MOD04_02205650: ; 0x02205650
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	cmp r2, #5
	addlt sp, sp, #4
	ldmltia sp!, {r4, r5, pc}
	add r5, r1, #1
	ldrb ip, [r1]
	ldrb r4, [r1, #1]
	ldrb lr, [r5, #1]
	ands ip, ip, #0x10
	strb r4, [r3]
	strb lr, [r3, #1]
	ldrb lr, [r5, #2]
	ldrb ip, [r5, #3]
	strb lr, [r3, #2]
	strb ip, [r3, #3]
	beq _022056C4
	sub r0, r2, #5
	cmp r0, #2
	addlt sp, sp, #4
	ldmltia sp!, {r4, r5, pc}
	add r0, r1, #5
	ldrb r1, [r1, #5]
	ldr r2, [sp, #0x10]
	ldrb r0, [r0, #1]
	add sp, sp, #4
	strb r1, [r2]
	strb r0, [r2, #1]
	ldmia sp!, {r4, r5, pc}
_022056C4:
	add r0, r0, #0x400
	ldrh r1, [r0, #0xa8]
	ldr r0, [sp, #0x10]
	strh r1, [r0]
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	arm_func_end MOD04_02205650

	arm_func_start MOD04_022056DC
MOD04_022056DC: ; 0x022056DC
	stmdb sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #4
	mov r8, r0
	ldr r0, [r8, #8]
	mov r7, r1
	mov r6, r2
	bl MOD04_021EF06C
	mov r5, r0
	cmp r5, #0
	mov r4, #0
	ble _022057D4
	mvn sb, #0
_0220570C:
	ldr r0, [r8, #8]
	mov r1, r4
	bl MOD04_021EEFFC
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _02205750
	cmp r0, #1
	beq _02205738
	cmp r0, #2
	beq _02205744
	b _02205798
_02205738:
	add r7, r7, #1
	sub r6, r6, #1
	b _022057B8
_02205744:
	add r7, r7, #2
	sub r6, r6, #2
	b _022057B8
_02205750:
	cmp r6, #1
	addlt sp, sp, #4
	movlt r0, #0
	ldmltia sp!, {r4, r5, r6, r7, r8, sb, pc}
	ldrb r0, [r7], #1
	sub r6, r6, #1
	cmp r0, #0xff
	bne _022057B8
	mov r0, r7
	mov r1, r6
	bl MOD04_02206378
	cmp r0, sb
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, pc}
	add r7, r7, r0
	sub r6, r6, r0
	b _022057B8
_02205798:
	ldr r0, _022057E0 ; =UNK04_0220F854
	ldr r1, _022057E4 ; =UNK04_0220F830
	ldr r3, _022057E8 ; =0x00000317
	mov r2, #0
	bl __msl_assertion_failed
	add sp, sp, #4
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
_022057B8:
	cmp r6, #0
	addlt sp, sp, #4
	movlt r0, #0
	ldmltia sp!, {r4, r5, r6, r7, r8, sb, pc}
	add r4, r4, #1
	cmp r4, r5
	blt _0220570C
_022057D4:
	mov r0, #1
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_022057E0: .word UNK04_0220F854
_022057E4: .word UNK04_0220F830
_022057E8: .word 0x00000317
	arm_func_end MOD04_022056DC

	arm_func_start MOD04_022057EC
MOD04_022057EC: ; 0x022057EC
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	mov r4, r1
	b _02205848
_02205800:
	mov r0, r5
	mov r1, r4
	bl MOD04_02206378
	cmp r0, #0
	addlt sp, sp, #4
	movlt r0, #0
	ldmltia sp!, {r4, r5, pc}
	sub r4, r4, r0
	add r5, r5, r0
	mov r0, r5
	mov r1, r4
	bl MOD04_02206378
	cmp r0, #0
	addlt sp, sp, #4
	movlt r0, #0
	ldmltia sp!, {r4, r5, pc}
	add r5, r5, r0
	sub r4, r4, r0
_02205848:
	cmp r4, #0
	ble _0220585C
	ldrsb r0, [r5]
	cmp r0, #0
	bne _02205800
_0220585C:
	cmp r4, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r4, r5, pc}
	ldrsb r0, [r5]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	arm_func_end MOD04_022057EC

	arm_func_start MOD04_02205884
MOD04_02205884: ; 0x02205884
	mov r2, #5
	ands r1, r0, #2
	addne r2, r2, #4
	ands r1, r0, #8
	addne r2, r2, #4
	ands r1, r0, #0x10
	addne r2, r2, #2
	ands r0, r0, #0x20
	addne r2, r2, #2
	mov r0, r2
	bx lr
	arm_func_end MOD04_02205884

	arm_func_start MOD04_022058B0
MOD04_022058B0: ; 0x022058B0
	stmdb sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #4
	mov sb, r0
	mov r7, r2
	add r0, sb, #0x54
	mov r8, r1
	bl strlen
	mov r5, r0
	cmp r7, #0
	add r4, sb, #0x54
	mov r6, #0
	ble _0220593C
_022058E0:
	mov r0, r6
	mov r1, r5
	bl _s32_div_f
	ldrsb r1, [r4, r1]
	mov r2, r6, lsr #0x1f
	rsb r0, r2, r6, lsl #29
	mul r3, r6, r1
	mov r1, r3, lsr #0x1f
	add r2, r2, r0, ror #29
	rsb r0, r1, r3, lsl #29
	add r2, sb, r2
	add r3, r1, r0, ror #29
	ldrsb r0, [r8, r6]
	ldrsb r1, [r2, #0x74]
	add r2, sb, r3
	add r6, r6, #1
	eor r0, r1, r0
	ldrsb r1, [r2, #0x74]
	mov r0, r0, lsl #0x18
	cmp r6, r7
	eor r0, r1, r0, asr #24
	strb r0, [r2, #0x74]
	blt _022058E0
_0220593C:
	ldr r0, _02205958 ; =0x000004BC
	add r1, sb, #0x74
	add r0, sb, r0
	mov r2, #8
	bl MOD04_022028B0
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_02205958: .word 0x000004BC
	arm_func_end MOD04_022058B0

	arm_func_start MOD04_0220595C
MOD04_0220595C: ; 0x0220595C
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl MOD04_02205994
	mov r0, r4
	bl MOD04_022064BC
	mov r0, r4
	bl MOD04_02203AE4
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _02205988
	bl MOD04_021EF074
_02205988:
	mov r0, #0
	str r0, [r4, #4]
	ldmia sp!, {r4, pc}
	arm_func_end MOD04_0220595C

	arm_func_start MOD04_02205994
MOD04_02205994: ; 0x02205994
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x7c]
	cmp r0, #0
	beq _022059AC
	bl MOD04_021DD82C
_022059AC:
	mov r0, #0
	str r0, [r4, #0x7c]
	str r0, [r4, #0x80]
	ldr r0, [r4, #0x4b0]
	mvn r1, #0
	cmp r0, r1
	beq _022059CC
	bl MOD04_021EFD9C
_022059CC:
	mvn r1, #0
	mov r0, r4
	str r1, [r4, #0x4b0]
	mov r1, #1
	str r1, [r4]
	bl MOD04_022059F8
	mvn r1, #0
	mov r0, r4
	str r1, [r4, #0x484]
	bl MOD04_02205A68
	ldmia sp!, {r4, pc}
	arm_func_end MOD04_02205994

	arm_func_start MOD04_022059F8
MOD04_022059F8: ; 0x022059F8
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	ldr r0, [r5, #8]
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqia sp!, {r4, r5, pc}
	mov r4, #0
	bl MOD04_021EF06C
	cmp r0, #0
	ble _02205A50
_02205A24:
	ldr r0, [r5, #8]
	mov r1, r4
	bl MOD04_021EEFFC
	ldr r1, [r0]
	mov r0, r5
	bl MOD04_022063A8
	ldr r0, [r5, #8]
	add r4, r4, #1
	bl MOD04_021EF06C
	cmp r4, r0
	blt _02205A24
_02205A50:
	ldr r0, [r5, #8]
	bl MOD04_021EF074
	mov r0, #0
	str r0, [r5, #8]
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	arm_func_end MOD04_022059F8

	arm_func_start MOD04_02205A68
MOD04_02205A68: ; 0x02205A68
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	ldr r0, [r5, #0x480]
	mov r4, #0
	cmp r0, #0
	ble _02205AA4
_02205A84:
	add r0, r5, r4, lsl #2
	ldr r1, [r0, #0x84]
	mov r0, r5
	bl MOD04_022063A8
	ldr r0, [r5, #0x480]
	add r4, r4, #1
	cmp r4, r0
	blt _02205A84
_02205AA4:
	mov r0, #0
	str r0, [r5, #0x480]
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	arm_func_end MOD04_02205A68

	arm_func_start MOD04_02205AB4
MOD04_02205AB4: ; 0x02205AB4
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x30c
	mov r5, r0
	ldr r0, [r5]
	mov r7, r1
	mov r6, r2
	mov r4, r3
	cmp r0, #1
	beq _02205AEC
	ldr r0, _02205D18 ; =UNK04_0220F858
	ldr r1, _02205D1C ; =UNK04_0220F830
	ldr r3, _02205D20 ; =0x0000020A
	mov r2, #0
	bl __msl_assertion_failed
_02205AEC:
	cmp r7, #0
	ldreq r7, _02205D24 ; =UNK04_0220F878
	cmp r6, #0
	ldreq r6, _02205D24 ; =UNK04_0220F878
	mov r0, r7
	bl strlen
	cmp r0, #0x100
	addhi sp, sp, #0x30c
	movhi r0, #6
	ldmhiia sp!, {r4, r5, r6, r7, pc}
	mov r0, r6
	bl strlen
	cmp r0, #0x100
	addhi sp, sp, #0x30c
	movhi r0, #6
	ldmhiia sp!, {r4, r5, r6, r7, pc}
	mov r0, r5
	bl MOD04_02205FF0
	cmp r0, #0
	addne sp, sp, #0x30c
	ldmneia sp!, {r4, r5, r6, r7, pc}
	mov r0, r5
	str r4, [r5, #0x5c4]
	bl MOD04_02205DCC
	add r3, sp, #0xe
	mov ip, #2
	add r0, sp, #8
	add r2, sp, #4
	mov r1, #0
	str ip, [sp, #4]
	str r3, [sp, #8]
	bl MOD04_02205F74
	add r0, sp, #8
	add r2, sp, #4
	mov r1, #1
	bl MOD04_02205F74
	add r0, sp, #8
	mov r1, #3
	add r2, sp, #4
	bl MOD04_02205F74
	ldr r1, [r5, #0x4b8]
	add r0, sp, #8
	add r2, sp, #4
	bl MOD04_02205F18
	add r0, sp, #8
	add r1, r5, #0xc
	add r2, sp, #4
	bl MOD04_02205F98
	add r0, sp, #8
	add r1, r5, #0x30
	add r2, sp, #4
	bl MOD04_02205F98
	add r0, sp, #8
	add r1, r5, #0x74
	mov r2, #8
	add r3, sp, #4
	bl MOD04_02205EE4
	mov r1, r6
	add r0, sp, #8
	add r2, sp, #4
	bl MOD04_02205F98
	mov r1, r7
	add r0, sp, #8
	add r2, sp, #4
	bl MOD04_02205F98
	mov r1, r4, lsl #0x18
	and ip, r1, #0xff000000
	mov r1, r4, lsl #8
	and r3, r1, #0xff0000
	mov r1, r4, lsr #0x18
	and r2, r1, #0xff
	mov r1, r4, lsr #8
	and r1, r1, #0xff00
	orr r1, r2, r1
	orr r1, r3, r1
	add r0, sp, #8
	orr r1, ip, r1
	add r2, sp, #4
	bl MOD04_02205F18
	ldr r0, [r5, #0x5c4]
	ands r0, r0, #8
	beq _02205C44
	ldr r1, [r5, #0x4a4]
	add r0, sp, #8
	add r2, sp, #4
	bl MOD04_02205F18
_02205C44:
	ldr r0, [r5, #0x5c4]
	ands r0, r0, #0x80
	beq _02205C60
	ldr r1, [sp, #0x320]
	add r0, sp, #8
	add r2, sp, #4
	bl MOD04_02205F18
_02205C60:
	ldr r0, [sp, #4]
	add r1, sp, #0
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r2, r0, asr #8
	mov r0, r0, lsl #8
	and r2, r2, #0xff
	and r0, r0, #0xff00
	orr r0, r2, r0
	strh r0, [sp]
	ldrb r2, [r1]
	ldrb r0, [r1, #1]
	add r1, sp, #0xc
	mov r3, #0
	strb r2, [r1]
	strb r0, [r1, #1]
	ldr r0, [r5, #0x4b0]
	ldr r2, [sp, #4]
	bl MOD04_021EFC24
	cmp r0, #0
	bgt _02205CC8
	mov r0, r5
	bl MOD04_02205994
	add sp, sp, #0x30c
	mov r0, #3
	ldmia sp!, {r4, r5, r6, r7, pc}
_02205CC8:
	mov r0, #3
	str r0, [r5]
	mov r0, #0
	str r0, [r5, #0x5c8]
	ldr r0, [r5, #0x7c]
	cmp r0, #0
	bne _02205D0C
	mov r0, #0x1000
	bl MOD04_021DD860
	str r0, [r5, #0x7c]
	ldr r0, [r5, #0x7c]
	cmp r0, #0
	addeq sp, sp, #0x30c
	moveq r0, #5
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	mov r0, #0
	str r0, [r5, #0x80]
_02205D0C:
	mov r0, #0
	add sp, sp, #0x30c
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_02205D18: .word UNK04_0220F858
_02205D1C: .word UNK04_0220F830
_02205D20: .word 0x0000020A
_02205D24: .word UNK04_0220F878
	arm_func_end MOD04_02205AB4

	arm_func_start MOD04_02205D28
MOD04_02205D28: ; 0x02205D28
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #4
	mov sl, r0
	mov sb, r1
	mov r8, r2
	mov r6, #1
	mov r5, #0
	mov r4, #2
_02205D48:
	ldr r0, [sl, #0x4b0]
	mov r1, sb
	mov r2, r8
	mov r3, r5
	sub r6, r6, #1
	bl MOD04_021EFC24
	mov r7, r0
	cmp r7, #0
	bgt _02205DB8
	cmp r6, #0
	blt _02205DB8
	mov r0, sl
	bl MOD04_02205994
	mov r0, sl
	mov r1, r5
	mov r2, r5
	mov r3, r4
	str r5, [sp]
	bl MOD04_02205AB4
	movs fp, r0
	beq _02205DB0
	mov r0, sl
	bl MOD04_02206184
	add sp, sp, #4
	mov r0, fp
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02205DB0:
	cmp r6, #0
	bge _02205D48
_02205DB8:
	cmp r7, #0
	movle r0, #3
	movgt r0, #0
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end MOD04_02205D28

	arm_func_start MOD04_02205DCC
MOD04_02205DCC: ; 0x02205DCC
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #4
	mov sl, r0
	bl rand
	ldr r1, _02205EDC ; =0x2C0B02C1
	mov r8, #0
	smull r3, r4, r1, r0
	mov r2, r0, lsr #0x1f
	mov r4, r4, asr #4
	ldr r1, _02205EE0 ; =0x0000005D
	add r4, r2, r4
	smull r2, r3, r1, r4
	sub r4, r0, r2
	add r0, r4, #0x21
	mov sb, #1
	strb r0, [sl, #0x74]
	mov r5, r8
	mov r6, sb
	mov fp, r8
	mov r4, sb
_02205E1C:
	sub r0, sb, #1
	add r0, sl, r0
	ldrsb r2, [r0, #0x74]
	ldrsb r3, [sl, #0x74]
	add r7, sl, sb
	cmp r2, r3
	eor r2, sb, r2
	movlt r0, r6
	and r2, r2, #1
	movge r0, r5
	cmp r3, #0x4f
	movlt r1, r4
	and r3, r3, #1
	eor r2, r8, r2
	movge r1, fp
	eor r2, r3, r2
	eor r1, r2, r1
	eor r8, r1, r0
	bl rand
	ldr r2, _02205EDC ; =0x2C0B02C1
	cmp r8, #0
	smull r3, r1, r2, r0
	mov r1, r1, asr #4
	mov r2, r0, lsr #0x1f
	add r1, r2, r1
	ldr r2, _02205EE0 ; =0x0000005D
	smull r1, r3, r2, r1
	sub r1, r0, r1
	add r0, r1, #0x21
	strb r0, [r7, #0x74]
	beq _02205EA4
	ldrsb r0, [r7, #0x74]
	ands r0, r0, #1
	beq _02205EBC
_02205EA4:
	cmp r8, #0
	bne _02205EC8
	ldrsb r0, [r7, #0x74]
	and r0, r0, #1
	cmp r0, #1
	bne _02205EC8
_02205EBC:
	ldrsb r0, [r7, #0x74]
	add r0, r0, #1
	strb r0, [r7, #0x74]
_02205EC8:
	add sb, sb, #1
	cmp sb, #8
	blt _02205E1C
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02205EDC: .word 0x2C0B02C1
_02205EE0: .word 0x0000005D
	arm_func_end MOD04_02205DCC

	arm_func_start MOD04_02205EE4
MOD04_02205EE4: ; 0x02205EE4
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r0, [r6]
	mov r4, r3
	mov r5, r2
	bl memcpy
	ldr r0, [r4]
	add r0, r0, r5
	str r0, [r4]
	ldr r0, [r6]
	add r0, r0, r5
	str r0, [r6]
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end MOD04_02205EE4

	arm_func_start MOD04_02205F18
MOD04_02205F18: ; 0x02205F18
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {lr}
	sub sp, sp, #4
	add ip, sp, #0xc
	ldrb r3, [ip]
	ldrb r1, [ip, #1]
	ldr lr, [r0]
	strb r3, [lr]
	strb r1, [lr, #1]
	ldrb r3, [ip, #2]
	ldrb r1, [ip, #3]
	strb r3, [lr, #2]
	strb r1, [lr, #3]
	ldr r1, [r2]
	add r1, r1, #4
	str r1, [r2]
	ldr r1, [r0]
	add r1, r1, #4
	str r1, [r0]
	add sp, sp, #4
	ldmia sp!, {lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end MOD04_02205F18

	arm_func_start MOD04_02205F74
MOD04_02205F74: ; 0x02205F74
	ldr r3, [r0]
	strb r1, [r3]
	ldr r1, [r2]
	add r1, r1, #1
	str r1, [r2]
	ldr r1, [r0]
	add r1, r1, #1
	str r1, [r0]
	bx lr
	arm_func_end MOD04_02205F74

	arm_func_start MOD04_02205F98
MOD04_02205F98: ; 0x02205F98
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	movs r7, r1
	ldreq r7, _02205FEC ; =UNK04_0220F878
	mov r4, r0
	mov r0, r7
	mov r6, r2
	bl strlen
	add r5, r0, #1
	ldr r0, [r4]
	mov r1, r7
	mov r2, r5
	bl memcpy
	ldr r0, [r6]
	add r0, r0, r5
	str r0, [r6]
	ldr r0, [r4]
	add r0, r0, r5
	str r0, [r4]
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_02205FEC: .word UNK04_0220F878
	arm_func_end MOD04_02205F98

	arm_func_start MOD04_02205FF0
MOD04_02205FF0: ; 0x02205FF0
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x88
	mov r4, r0
	add r0, r4, #0xc
	mov r1, #0x14
	bl MOD04_02206124
	ldr r1, _02206118 ; =UNK04_0221173C
	mov r3, r0
	ldr r1, [r1]
	cmp r1, #0
	beq _02206028
	add r0, sp, #8
	bl strcpy
	b _02206038
_02206028:
	ldr r1, _0220611C ; =UNK04_0220F87C
	add r0, sp, #8
	add r2, r4, #0xc
	bl sprintf
_02206038:
	ldr r1, _02206120 ; =0x0000EE70
	mov r2, #2
	add r0, sp, #8
	strb r2, [sp, #1]
	strh r1, [sp, #2]
	bl MOD04_021EFB38
	mvn r1, #0
	str r0, [sp, #4]
	cmp r0, r1
	bne _022060A4
	add r0, sp, #8
	bl SOC_GetHostByAddr
	cmp r0, #0
	addeq sp, sp, #0x88
	moveq r0, #2
	ldmeqia sp!, {r4, pc}
	ldr r0, [r0, #0xc]
	add r3, sp, #4
	ldr r2, [r0]
	ldrb r1, [r2]
	ldrb r0, [r2, #1]
	strb r1, [r3]
	strb r0, [r3, #1]
	ldrb r1, [r2, #2]
	ldrb r0, [r2, #3]
	strb r1, [r3, #2]
	strb r0, [r3, #3]
_022060A4:
	ldr r0, [r4, #0x4b0]
	mvn r1, #0
	cmp r0, r1
	bne _022060E0
	mov r0, #2
	mov r1, #1
	mov r2, #0
	bl MOD04_021EFDB8
	str r0, [r4, #0x4b0]
	ldr r0, [r4, #0x4b0]
	mvn r1, #0
	cmp r0, r1
	addeq sp, sp, #0x88
	moveq r0, #1
	ldmeqia sp!, {r4, pc}
_022060E0:
	add r1, sp, #0
	mov r2, #8
	bl MOD04_021EFCE4
	cmp r0, #0
	addeq sp, sp, #0x88
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r0, [r4, #0x4b0]
	bl MOD04_021EFD9C
	mvn r0, #0
	str r0, [r4, #0x4b0]
	mov r0, #3
	add sp, sp, #0x88
	ldmia sp!, {r4, pc}
	.align 2, 0
_02206118: .word UNK04_0221173C
_0220611C: .word UNK04_0220F87C
_02206120: .word 0x0000EE70
	arm_func_end MOD04_02205FF0

	arm_func_start MOD04_02206124
MOD04_02206124: ; 0x02206124
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldrsb lr, [r0]
	mov ip, #0
	cmp lr, #0
	beq _02206168
	ldr r3, _0220617C ; =__lower_mapC
	ldr r2, _02206180 ; =0x9CCF9319
_02206144:
	cmp lr, #0
	blt _02206158
	cmp lr, #0x80
	bge _02206158
	ldrb lr, [r3, lr]
_02206158:
	mla ip, r2, ip, lr
	ldrsb lr, [r0, #1]!
	cmp lr, #0
	bne _02206144
_02206168:
	mov r0, ip
	bl _u32_div_f
	mov r0, r1
	add sp, sp, #4
	ldmfd sp!, {pc}
	.align 2, 0
_0220617C: .word __lower_mapC
_02206180: .word 0x9CCF9319
	arm_func_end MOD04_02206124

	arm_func_start MOD04_02206184
MOD04_02206184: ; 0x02206184
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	mov r4, r0
	ldr r5, [r4, #0x80]
	cmp r5, #0
	ble _02206214
	ldr r0, _02206240 ; =UNK04_0220F804
	ldr r6, [r0]
	mov r0, r6
	bl strlen
	cmp r5, r0
	bls _02206214
	ldr r0, _02206240 ; =UNK04_0220F804
	ldr r7, [r4, #0x7c]
	ldr r5, [r0]
	mov r0, r5
	bl strlen
	mov r2, r0
	mov r0, r7
	mov r1, r5
	bl strncmp
	cmp r0, #0
	bne _02206214
	mov r0, r6
	bl strlen
	mov r1, r0
	mov r0, r4
	add r1, r7, r1
	bl MOD04_02205240
	ldr r0, _02206244 ; =UNK04_02211738
	ldr r3, [r4, #0x494]
	ldr r2, [r0]
	ldr ip, [r4, #0x488]
	mov r0, r4
	mov r1, #5
	blx ip
_02206214:
	ldr r0, _02206244 ; =UNK04_02211738
	ldr r3, [r4, #0x494]
	ldr r2, [r0]
	ldr ip, [r4, #0x488]
	mov r0, r4
	mov r1, #4
	blx ip
	mov r0, r4
	bl MOD04_02205994
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_02206240: .word UNK04_0220F804
_02206244: .word UNK04_02211738
	arm_func_end MOD04_02206184

	arm_func_start MOD04_02206248
MOD04_02206248: ; 0x02206248
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	movs r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bne _02206278
	ldr r0, _02206360 ; =UNK04_0220F898
	ldr r1, _02206364 ; =UNK04_0220F830
	mov r2, #0
	mov r3, #0x11c
	bl __msl_assertion_failed
_02206278:
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	bne _02206298
	ldr r0, _02206368 ; =UNK04_02210E5C
	ldr r0, [r0]
	cmp r0, #1
	addne sp, sp, #4
	ldmneia sp!, {r4, r5, r6, r7, pc}
_02206298:
	mov r1, #1
	mov r0, r7
	str r1, [r7]
	bl MOD04_02206494
	mov r0, r7
	bl MOD04_02203B34
	mov r1, r6
	add r0, r7, #0xc
	bl strcpy
	mov r1, r5
	add r0, r7, #0x30
	bl strcpy
	mov r1, r4
	add r0, r7, #0x54
	bl strcpy
	ldr r0, [sp, #0x20]
	mov r2, #0
	str r0, [r7, #0x488]
	cmp r0, #0
	str r2, [r7, #0x48c]
	bne _022062FC
	ldr r0, _0220636C ; =UNK04_0220F8A8
	ldr r1, _02206364 ; =UNK04_0220F830
	ldr r3, _02206370 ; =0x00000132
	bl __msl_assertion_failed
_022062FC:
	ldr r0, [sp, #0x24]
	ldr r1, _02206374 ; =UNK04_0220F878
	str r0, [r7, #0x494]
	str r1, [r7, #0x498]
	mov r3, #0
	str r3, [r7, #0x4a0]
	mvn r0, #0
	str r0, [r7, #0x4b0]
	str r3, [r7, #0x7c]
	str r3, [r7, #0x80]
	str r3, [r7, #8]
	str r0, [r7, #0x484]
	str r3, [r7, #0x480]
	ldr r2, [sp, #0x18]
	str r3, [r7, #0x4a4]
	mov r0, r7
	str r2, [r7, #0x4b8]
	bl MOD04_02205240
	mov r0, #0
	str r0, [r7, #0x5cc]
	bl MOD04_021F025C
	bl srand
	bl MOD04_021F024C
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_02206360: .word UNK04_0220F898
_02206364: .word UNK04_0220F830
_02206368: .word UNK04_02210E5C
_0220636C: .word UNK04_0220F8A8
_02206370: .word 0x00000132
_02206374: .word UNK04_0220F878
	arm_func_end MOD04_02206248

	arm_func_start MOD04_02206378
MOD04_02206378: ; 0x02206378
	cmp r1, #0
	mov r3, #0
	ble _022063A0
_02206384:
	ldrsb r2, [r0, r3]
	cmp r2, #0
	addeq r0, r3, #1
	bxeq lr
	add r3, r3, #1
	cmp r3, r1
	blt _02206384
_022063A0:
	mvn r0, #0
	bx lr
	arm_func_end MOD04_02206378

	arm_func_start MOD04_022063A8
MOD04_022063A8: ; 0x022063A8
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0xc
	mov r5, r0
	str r1, [sp]
	bl MOD04_02203B34
	add r1, sp, #0
	bl MOD04_021EF358
	movs r4, r0
	bne _022063E0
	ldr r0, _02206420 ; =UNK04_0220F8BC
	ldr r1, _02206424 ; =UNK04_0220F830
	mov r2, #0
	mov r3, #0xf4
	bl __msl_assertion_failed
_022063E0:
	cmp r4, #0
	addeq sp, sp, #0xc
	ldmeqia sp!, {r4, r5, pc}
	ldr r0, [r4, #4]
	sub r0, r0, #1
	str r0, [r4, #4]
	ldr r0, [r4, #4]
	cmp r0, #0
	addne sp, sp, #0xc
	ldmneia sp!, {r4, r5, pc}
	mov r0, r5
	bl MOD04_02203B34
	add r1, sp, #0
	bl MOD04_021EF3F4
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_02206420: .word UNK04_0220F8BC
_02206424: .word UNK04_0220F830
	arm_func_end MOD04_022063A8

	arm_func_start MOD04_02206428
MOD04_02206428: ; 0x02206428
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0xc
	mov r4, r1
	mov r5, r0
	str r4, [sp]
	bl MOD04_02203B34
	add r1, sp, #0
	bl MOD04_021EF358
	cmp r0, #0
	ldrne r1, [r0, #4]
	addne sp, sp, #0xc
	addne r1, r1, #1
	strne r1, [r0, #4]
	ldrne r0, [r0]
	ldmneia sp!, {r4, r5, pc}
	mov r0, r4
	bl MOD04_021F0208
	str r0, [sp]
	mov r1, #1
	mov r0, r5
	str r1, [sp, #4]
	bl MOD04_02203B34
	add r1, sp, #0
	bl MOD04_021EF494
	ldr r0, [sp]
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, pc}
	arm_func_end MOD04_02206428

	arm_func_start MOD04_02206494
MOD04_02206494: ; 0x02206494
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r0, #4
	mov r1, #0x64
	mov r2, #0
	bl MOD04_021EF0E4
	str r0, [r4, #4]
	mov r0, #0
	str r0, [r4, #0x5d0]
	ldmia sp!, {r4, pc}
	arm_func_end MOD04_02206494

	arm_func_start MOD04_022064BC
MOD04_022064BC: ; 0x022064BC
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r0, [r6, #4]
	bl MOD04_021EF06C
	mov r4, r0
	cmp r4, #0
	mov r5, #0
	ble _02206500
_022064DC:
	ldr r0, [r6, #4]
	mov r1, r5
	bl MOD04_021EEFFC
	ldr r1, [r0]
	mov r0, r6
	bl MOD04_022065E8
	add r5, r5, #1
	cmp r5, r4
	blt _022064DC
_02206500:
	ldr r0, [r6, #4]
	bl MOD04_021EEB28
	mov r0, r6
	bl MOD04_02206514
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end MOD04_022064BC

	arm_func_start MOD04_02206514
MOD04_02206514: ; 0x02206514
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	mov r6, r0
	ldr r0, [r6, #0x5d0]
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqia sp!, {r4, r5, r6, pc}
	str r0, [sp]
	cmp r0, #0
	beq _02206560
	add r4, sp, #0
_02206540:
	ldr r0, [sp]
	bl MOD04_02203888
	mov r5, r0
	mov r0, r4
	bl MOD04_02203AC0
	str r5, [sp]
	cmp r5, #0
	bne _02206540
_02206560:
	mov r0, #0
	str r0, [r6, #0x5d0]
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end MOD04_02206514

	arm_func_start MOD04_02206570
MOD04_02206570: ; 0x02206570
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r0, [r0, #4]
	bl MOD04_021EEFFC
	ldr r0, [r0]
	add sp, sp, #4
	ldmfd sp!, {pc}
	arm_func_end MOD04_02206570

	arm_func_start MOD04_0220658C
MOD04_0220658C: ; 0x0220658C
	ldr ip, _02206598 ; =MOD04_021EF06C
	ldr r0, [r0, #4]
	bx ip
	.align 2, 0
_02206598: .word MOD04_021EF06C
	arm_func_end MOD04_0220658C

	arm_func_start MOD04_0220659C
MOD04_0220659C: ; 0x0220659C
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r0, [r6, #4]
	mov r5, r1
	bl MOD04_021EEFFC
	ldr r4, [r0]
	ldr r3, [r6, #0x494]
	ldr ip, [r6, #0x488]
	mov r0, r6
	mov r2, r4
	mov r1, #2
	blx ip
	ldr r0, [r6, #4]
	mov r1, r5
	bl MOD04_021EED84
	mov r0, r6
	mov r1, r4
	bl MOD04_022065E8
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end MOD04_0220659C

	arm_func_start MOD04_022065E8
MOD04_022065E8: ; 0x022065E8
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	mov r4, r1
	ldr r1, [r5, #0x5d0]
	cmp r1, #0
	bne _02206614
	mov r0, r4
	mov r1, #0
	bl MOD04_02203890
	b _0220661C
_02206614:
	mov r0, r4
	bl MOD04_02203890
_0220661C:
	str r4, [r5, #0x5d0]
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	arm_func_end MOD04_022065E8

	arm_func_start MOD04_02206628
MOD04_02206628: ; 0x02206628
	stmdb sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #4
	mov sb, r0
	ldr r0, [sb, #4]
	mov r8, r1
	mov r7, r2
	bl MOD04_021EF06C
	mov r6, r0
	cmp r6, #0
	mov r4, #0
	ble _02206698
_02206654:
	ldr r0, [sb, #4]
	mov r1, r4
	bl MOD04_021EEFFC
	ldr r5, [r0]
	mov r0, r5
	bl MOD04_02203908
	cmp r8, r0
	bne _0220668C
	mov r0, r5
	bl MOD04_022038DC
	cmp r7, r0
	addeq sp, sp, #4
	moveq r0, r4
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, pc}
_0220668C:
	add r4, r4, #1
	cmp r4, r6
	blt _02206654
_02206698:
	mvn r0, #0
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
	arm_func_end MOD04_02206628

	arm_func_start MOD04_022066A4
MOD04_022066A4: ; 0x022066A4
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	mov r7, r0
	ldr r0, [r7, #4]
	mov r6, r1
	bl MOD04_021EF06C
	mov r5, r0
	cmp r5, #0
	mov r4, #0
	ble _022066F8
_022066CC:
	ldr r0, [r7, #4]
	mov r1, r4
	bl MOD04_021EEFFC
	ldr r0, [r0]
	cmp r6, r0
	addeq sp, sp, #4
	moveq r0, r4
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	add r4, r4, #1
	cmp r4, r5
	blt _022066CC
_022066F8:
	mvn r0, #0
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, pc}
	arm_func_end MOD04_022066A4

	arm_func_start MOD04_02206704
MOD04_02206704: ; 0x02206704
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #4]
	add r1, sp, #0xc
	bl MOD04_021EEFA8
	ldr r2, [sp, #0xc]
	ldr r3, [r4, #0x494]
	ldr ip, [r4, #0x488]
	mov r0, r4
	mov r1, #0
	blx ip
	ldmia sp!, {r4, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end MOD04_02206704

	arm_func_start MOD04_02206740
MOD04_02206740: ; 0x02206740
	cmp r3, #3
	addls pc, pc, r3, lsl #2
	b _0220677C
_0220674C: ; jump table
	b _0220675C ; case 0
	b _02206764 ; case 1
	b _0220676C ; case 2
	b _02206774 ; case 3
_0220675C:
	ldr r3, _022067A0 ; =MOD04_02206978
	b _02206780
_02206764:
	ldr r3, _022067A4 ; =MOD04_02206898
	b _02206780
_0220676C:
	ldr r3, _022067A8 ; =MOD04_02206828
	b _02206780
_02206774:
	ldr r3, _022067AC ; =MOD04_022067B8
	b _02206780
_0220677C:
	ldr r3, _022067AC ; =MOD04_022067B8
_02206780:
	str r2, [r0, #0x498]
	str r1, [r0, #0x49c]
	ldr r2, _022067B0 ; =UNK04_02211740
	ldr ip, _022067B4 ; =MOD04_021EED08
	str r0, [r2]
	mov r1, r3
	ldr r0, [r0, #4]
	bx ip
	.align 2, 0
_022067A0: .word MOD04_02206978
_022067A4: .word MOD04_02206898
_022067A8: .word MOD04_02206828
_022067AC: .word MOD04_022067B8
_022067B0: .word UNK04_02211740
_022067B4: .word MOD04_021EED08
	arm_func_end MOD04_02206740

	arm_func_start MOD04_022067B8
MOD04_022067B8: ; 0x022067B8
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	ldr r2, _02206820 ; =UNK04_02211740
	mov r5, r1
	ldr r1, [r2]
	ldr r0, [r0]
	ldr r1, [r1, #0x498]
	ldr r2, _02206824 ; =UNK04_0220F878
	bl MOD04_022039E0
	ldr r1, _02206820 ; =UNK04_02211740
	mov r4, r0
	ldr r1, [r1]
	ldr r0, [r5]
	ldr r1, [r1, #0x498]
	ldr r2, _02206824 ; =UNK04_0220F878
	bl MOD04_022039E0
	mov r1, r0
	mov r0, r4
	bl strnicmp
	ldr r1, _02206820 ; =UNK04_02211740
	ldr r1, [r1]
	ldr r1, [r1, #0x49c]
	cmp r1, #0
	rsbeq r0, r0, #0
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_02206820: .word UNK04_02211740
_02206824: .word UNK04_0220F878
	arm_func_end MOD04_022067B8

	arm_func_start MOD04_02206828
MOD04_02206828: ; 0x02206828
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	ldr r2, _02206890 ; =UNK04_02211740
	mov r5, r1
	ldr r1, [r2]
	ldr r0, [r0]
	ldr r1, [r1, #0x498]
	ldr r2, _02206894 ; =UNK04_0220F878
	bl MOD04_022039E0
	ldr r1, _02206890 ; =UNK04_02211740
	mov r4, r0
	ldr r1, [r1]
	ldr r0, [r5]
	ldr r1, [r1, #0x498]
	ldr r2, _02206894 ; =UNK04_0220F878
	bl MOD04_022039E0
	mov r1, r0
	mov r0, r4
	bl strcmp
	ldr r1, _02206890 ; =UNK04_02211740
	ldr r1, [r1]
	ldr r1, [r1, #0x49c]
	cmp r1, #0
	rsbeq r0, r0, #0
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_02206890: .word UNK04_02211740
_02206894: .word UNK04_0220F878
	arm_func_end MOD04_02206828

	arm_func_start MOD04_02206898
MOD04_02206898: ; 0x02206898
	stmdb sp!, {r4, r5, r6, lr}
	ldr r3, _02206974 ; =UNK04_02211740
	mov r2, #0
	ldr r3, [r3]
	ldr r5, [r1]
	ldr r0, [r0]
	ldr r1, [r3, #0x498]
	mov r3, r2
	bl MOD04_02203910
	ldr r3, _02206974 ; =UNK04_02211740
	mov r2, #0
	mov r4, r0
	ldr r0, [r3]
	mov r6, r1
	ldr r1, [r0, #0x498]
	mov r0, r5
	mov r3, r2
	bl MOD04_02203910
	mov r2, r0
	mov r3, r1
	mov r0, r4
	mov r1, r6
	bl _dsub
	ldr r2, _02206974 ; =UNK04_02211740
	mov r4, r0
	ldr r0, [r2]
	mov r5, r1
	ldr r0, [r0, #0x49c]
	cmp r0, #0
	bne _0220692C
	mov r0, #0
	mov r1, r0
	mov r2, r4
	mov r3, r5
	bl _dsub
	mov r4, r0
	mov r5, r1
_0220692C:
	mov r0, r4
	mov r1, r5
	bl _d2f
	mov r1, #0
	bl _fgr
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r4, r5, r6, pc}
	mov r0, r4
	mov r1, r5
	bl _d2f
	mov r1, #0
	bl _fls
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	rsb r0, r0, #0
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_02206974: .word UNK04_02211740
	arm_func_end MOD04_02206898

	arm_func_start MOD04_02206978
MOD04_02206978: ; 0x02206978
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	ldr r2, _022069D8 ; =UNK04_02211740
	ldr r0, [r0]
	ldr r2, [r2]
	ldr r5, [r1]
	ldr r1, [r2, #0x498]
	mov r2, #0
	bl MOD04_0220394C
	ldr r1, _022069D8 ; =UNK04_02211740
	mov r4, r0
	ldr r1, [r1]
	mov r0, r5
	ldr r1, [r1, #0x498]
	mov r2, #0
	bl MOD04_0220394C
	ldr r1, _022069D8 ; =UNK04_02211740
	sub r0, r4, r0
	ldr r1, [r1]
	ldr r1, [r1, #0x49c]
	cmp r1, #0
	rsbeq r0, r0, #0
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_022069D8: .word UNK04_02211740
	arm_func_end MOD04_02206978

	arm_func_start MOD04_022069DC
MOD04_022069DC: ; 0x022069DC
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl MOD04_02208364
	bl MOD04_02206B14
	mov r1, r6
	mov r0, #0
	bl MOD04_02206A4C
	cmp r0, #0
	beq _02206A3C
	mov r1, r5
	mov r0, #1
	bl MOD04_02206A4C
	cmp r0, #0
	beq _02206A3C
	mov r1, r4
	mov r0, #2
	bl MOD04_02206A4C
	cmp r0, #0
	beq _02206A3C
	bl MOD04_02208350
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
_02206A3C:
	bl MOD04_02206B14
	bl MOD04_02208350
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end MOD04_022069DC

	arm_func_start MOD04_02206A4C
MOD04_02206A4C: ; 0x02206A4C
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r1
	ldrsb r1, [r6]
	mov r4, r0
	cmp r1, #0
	beq _02206B00
	mov r0, r6
	bl MOD04_022083D4
	cmp r0, #0xa
	ldrgt r0, _02206B08 ; =UNK04_02211760
	movgt r1, #7
	strgt r1, [r0]
	movgt r0, #0
	ldmgtia sp!, {r4, r5, r6, pc}
	mov r0, r6
	bl MOD04_022083D4
	mov r5, r0
	cmp r5, #0xa
	ldrgt r0, _02206B08 ; =UNK04_02211760
	movgt r1, #7
	strgt r1, [r0]
	movgt r0, #0
	ldmgtia sp!, {r4, r5, r6, pc}
	bl MOD04_02206DA4
	ldr r1, _02206B0C ; =UNK04_02211750
	add r0, r0, #1
	ldr r2, [r1]
	mov r1, #4
	blx r2
	ldr r1, _02206B10 ; =UNK04_02211778
	str r0, [r1, r4, lsl #2]
	ldr r0, [r1, r4, lsl #2]
	cmp r0, #0
	ldreq r0, _02206B08 ; =UNK04_02211760
	moveq r1, #1
	streq r1, [r0]
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r1, r6
	mov r2, r5
	bl MOD04_02206C98
	ldr r1, _02206B10 ; =UNK04_02211778
	mov r2, #0
	ldr r1, [r1, r4, lsl #2]
	strb r2, [r1, r0]
_02206B00:
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_02206B08: .word UNK04_02211760
_02206B0C: .word UNK04_02211750
_02206B10: .word UNK04_02211778
	arm_func_end MOD04_02206A4C

	arm_func_start MOD04_02206B14
MOD04_02206B14: ; 0x02206B14
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	mov r7, #0
	ldr r4, _02206B58 ; =UNK04_02211764
	ldr r6, _02206B5C ; =UNK04_02211778
	mov r5, r7
_02206B2C:
	ldr r0, [r6, r7, lsl #2]
	cmp r0, #0
	beq _02206B44
	ldr r1, [r4]
	blx r1
	str r5, [r6, r7, lsl #2]
_02206B44:
	add r7, r7, #1
	cmp r7, #3
	blt _02206B2C
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_02206B58: .word UNK04_02211764
_02206B5C: .word UNK04_02211778
	arm_func_end MOD04_02206B14

	arm_func_start MOD04_02206B60
MOD04_02206B60: ; 0x02206B60
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xc
	mov sl, r0
	mov r8, r2
	add r0, sp, #4
	mov r2, #4
	mov r5, #0
	mov sb, r1
	bl MOD04_02206E28
	mov r7, r5
	mov r6, r0
	mov r4, r7
	str r7, [sp]
	mov fp, #4
	b _02206C74
_02206B9C:
	ldrb r0, [sp, #4]
	strb r4, [sp, #8]
	strb r4, [sp, #9]
	strb r4, [sp, #0xa]
	bl MOD04_02206DD0
	movs r7, r0
	bmi _02206C20
	ldrb r0, [sp, #5]
	mov r1, r7, lsl #2
	strb r1, [sp, #8]
	bl MOD04_02206DD0
	movs r7, r0
	bmi _02206C20
	ldrsb r2, [sp, #8]
	ldrb r0, [sp, #6]
	mov r1, r7, lsl #4
	strb r1, [sp, #9]
	orr r1, r2, r7, asr #4
	strb r1, [sp, #8]
	bl MOD04_02206DD0
	movs r7, r0
	bmi _02206C20
	ldrsb r2, [sp, #9]
	ldrb r0, [sp, #7]
	mov r1, r7, lsl #6
	strb r1, [sp, #0xa]
	orr r1, r2, r7, asr #2
	strb r1, [sp, #9]
	bl MOD04_02206DD0
	movs r7, r0
	ldrplsb r0, [sp, #0xa]
	orrpl r0, r0, r7
	strplb r0, [sp, #0xa]
_02206C20:
	sub r1, r6, #1
	ldr r3, [sp]
	cmp r1, #0
	ble _02206C48
	add r2, sp, #8
_02206C34:
	ldrsb r0, [r2], #1
	add r3, r3, #1
	cmp r3, r1
	strb r0, [sl], #1
	blt _02206C34
_02206C48:
	sub r0, r6, #1
	sub r8, r8, #4
	cmp r8, #0
	add sb, sb, r6
	add r5, r5, r0
	ble _02206C84
	add r0, sp, #4
	mov r1, sb
	mov r2, fp
	bl MOD04_02206E28
	mov r6, r0
_02206C74:
	cmp r6, #0
	ble _02206C84
	cmp r7, #0
	bge _02206B9C
_02206C84:
	mov r1, #0
	mov r0, r5
	strb r1, [sl]
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end MOD04_02206B60

	arm_func_start MOD04_02206C98
MOD04_02206C98: ; 0x02206C98
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #4
	mov r8, r2
	mov sb, r1
	mov sl, r0
	cmp r8, #3
	movgt r2, #3
	add r0, sp, #0
	mov r1, sb
	mov r7, #0
	bl MOD04_02206E28
	cmp r0, #0
	ble _02206D8C
	ldr r5, _02206DA0 ; =UNK04_0220BCE8
	mov r6, #0
	mov r4, #0x2a
	mov fp, #3
_02206CDC:
	ldrb r3, [sp]
	cmp r8, #3
	strltb r6, [sp, #2]
	mov r1, r3, asr #2
	cmp r8, #2
	strltb r6, [sp, #1]
	and r1, r1, #0xff
	ldrb ip, [sp, #1]
	mov r3, r3, lsl #4
	ldrb r2, [sp, #2]
	ldrsb r1, [r5, r1]
	orr r3, r3, ip, asr #4
	cmp r0, #1
	strb r1, [sl]
	and r1, r3, #0x3f
	and r1, r1, #0xff
	mov r3, ip, lsl #2
	orr r3, r3, r2, asr #6
	ldrsb r1, [r5, r1]
	and r2, r2, #0x3f
	and r3, r3, #0x3f
	strb r1, [sl, #1]
	and r1, r3, #0xff
	ldrgtsb r1, [r5, r1]
	and r2, r2, #0xff
	add sb, sb, r0
	movle r1, r4
	strb r1, [sl, #2]
	cmp r0, #2
	ldrgtsb r2, [r5, r2]
	add r7, r7, #4
	movle r2, r4
	strb r2, [sl, #3]
	add sl, sl, #4
	subs r8, r8, r0
	beq _02206D8C
	cmp r8, #3
	movgt r2, fp
	movle r2, r8
	add r0, sp, #0
	mov r1, sb
	bl MOD04_02206E28
	cmp r0, #0
	bgt _02206CDC
_02206D8C:
	mov r1, #0
	mov r0, r7
	strb r1, [sl]
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02206DA0: .word UNK04_0220BCE8
	arm_func_end MOD04_02206C98

	arm_func_start MOD04_02206DA4
MOD04_02206DA4: ; 0x02206DA4
	ldr r1, _02206DBC ; =0x55555556
	add r2, r0, #2
	smull r0, r3, r1, r2
	add r3, r3, r2, lsr #31
	mov r0, r3, lsl #2
	bx lr
	.align 2, 0
_02206DBC: .word 0x55555556
	arm_func_end MOD04_02206DA4

	arm_func_start MOD04_02206DC0
MOD04_02206DC0: ; 0x02206DC0
	mov r1, r0, asr #2
	mov r0, #3
	mul r0, r1, r0
	bx lr
	arm_func_end MOD04_02206DC0

	arm_func_start MOD04_02206DD0
MOD04_02206DD0: ; 0x02206DD0
	cmp r0, #0x41
	blo _02206DE4
	cmp r0, #0x5a
	subls r0, r0, #0x41
	bxls lr
_02206DE4:
	cmp r0, #0x61
	blo _02206DF8
	cmp r0, #0x7a
	subls r0, r0, #0x47
	bxls lr
_02206DF8:
	cmp r0, #0x30
	blo _02206E0C
	cmp r0, #0x39
	addls r0, r0, #4
	bxls lr
_02206E0C:
	cmp r0, #0x2e
	moveq r0, #0x3e
	bxeq lr
	cmp r0, #0x2d
	moveq r0, #0x3f
	mvnne r0, #0
	bx lr
	arm_func_end MOD04_02206DD0

	arm_func_start MOD04_02206E28
MOD04_02206E28: ; 0x02206E28
	stmdb sp!, {r4, lr}
	mov lr, #0
	mov r4, lr
	cmp r2, #0
	ble _02206E64
	mov r3, lr
_02206E40:
	ldrsb ip, [r1]
	add r4, r4, #1
	cmp ip, #0
	strneb ip, [r0], #1
	addne lr, lr, #1
	addne r1, r1, #1
	streqb r3, [r0], #1
	cmp r4, r2
	blt _02206E40
_02206E64:
	mov r0, lr
	ldmia sp!, {r4, pc}
	arm_func_end MOD04_02206E28

	arm_func_start MOD04_02206E6C
MOD04_02206E6C: ; 0x02206E6C
	ldr r1, _02206E8C ; =UNK04_02211744
	ldr r2, _02206E90 ; =UNK04_02211758
	str r0, [r1]
	mov r1, #0
	ldr ip, _02206E94 ; =MOD04_02208570
	ldr r0, _02206E98 ; =MOD04_02206E9C
	str r1, [r2]
	bx ip
	.align 2, 0
_02206E8C: .word UNK04_02211744
_02206E90: .word UNK04_02211758
_02206E94: .word MOD04_02208570
_02206E98: .word MOD04_02206E9C
	arm_func_end MOD04_02206E6C

	arm_func_start MOD04_02206E9C
MOD04_02206E9C: ; 0x02206E9C
	stmdb sp!, {lr}
	sub sp, sp, #4
	bl MOD04_02206B14
	bl MOD04_02208378
	bl MOD04_0220831C
	ldr r0, _02206EEC ; =UNK04_0221174C
	ldr r1, _02206EF0 ; =UNK04_02211764
	ldr r0, [r0]
	ldr r1, [r1]
	blx r1
	ldr r0, _02206EF4 ; =UNK04_02211754
	ldr r1, _02206EF0 ; =UNK04_02211764
	ldr r0, [r0]
	ldr r1, [r1]
	blx r1
	ldr r0, _02206EF8 ; =UNK04_02211744
	ldr r0, [r0]
	blx r0
	add sp, sp, #4
	ldmfd sp!, {pc}
	.align 2, 0
_02206EEC: .word UNK04_0221174C
_02206EF0: .word UNK04_02211764
_02206EF4: .word UNK04_02211754
_02206EF8: .word UNK04_02211744
	arm_func_end MOD04_02206E9C

	arm_func_start MOD04_02206EFC
MOD04_02206EFC: ; 0x02206EFC
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #4
	mov r7, r0
	ldr sb, _022070D0 ; =UNK04_02211750
	ldr ip, [sp, #0x30]
	ldr r0, _022070D4 ; =UNK04_0221175C
	mov r6, r1
	str ip, [r0]
	ldr r5, _022070D8 ; =UNK04_02211764
	str r7, [sb]
	str r6, [r5]
	ldr r4, _022070DC ; =UNK04_02211760
	mov r1, #0
	ldr r8, _022070E0 ; =UNK04_02211778
	ldr lr, _022070E4 ; =UNK04_02211748
	ldr sl, _022070E8 ; =UNK04_0221174C
	ldr fp, _022070EC ; =UNK04_02211754
	str r1, [r4]
	ldr ip, _022070F0 ; =UNK04_02211768
	mvn sb, #0
	ldr r0, _022070F4 ; =UNK04_02211784
	mov r5, r2
	mov r4, r3
	str r1, [r8]
	str r1, [r8, #4]
	str r1, [r8, #8]
	str r1, [lr]
	str sb, [ip]
	str r1, [sl]
	str r1, [fp]
	bl MOD04_02208228
	ldr r0, _022070F8 ; =UNK04_022117CC
	bl MOD04_02207194
	mov r0, r5
	bl MOD04_0220710C
	mov r1, fp
	cmp r0, #0
	str r0, [r1]
	beq _02207080
	mov r0, r4
	bl MOD04_0220710C
	mov r1, sl
	cmp r0, #0
	str r0, [r1]
	beq _02207080
	ldr r1, [sp, #0x28]
	ldr r0, _022070FC ; =UNK04_0221176C
	mov r2, #4
	bl MOD04_02206C98
	ldr r1, _022070FC ; =UNK04_0221176C
	mov r2, #0
	strb r2, [r1, r0]
	ldr r1, [sp, #0x2c]
	ldr r0, _02207100 ; =UNK04_022117B0
	mov r2, #0x10
	bl MOD04_02206C98
	ldr r1, _02207100 ; =UNK04_022117B0
	mov r2, #0
	strb r2, [r1, r0]
	bl MOD04_02208320
	cmp r0, #0
	beq _02207040
	bl MOD04_0220837C
	cmp r0, #0
	beq _02207040
	mov r0, r7
	mov r1, r6
	mov r2, #0xa
	bl MOD04_022085B8
	cmp r0, #0
	beq _0220703C
	ldr r0, _02207104 ; =UNK04_02211798
	bl MOD04_0220724C
	ldr r2, _022070E4 ; =UNK04_02211748
	ldr r1, _02207108 ; =UNK04_02211758
	str r0, [r2]
	mov r0, #1
	str r0, [r1]
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0220703C:
	bl MOD04_02208378
_02207040:
	ldr r0, _022070E8 ; =UNK04_0221174C
	ldr r1, _022070D8 ; =UNK04_02211764
	ldr r0, [r0]
	ldr r1, [r1]
	blx r1
	ldr r0, _022070EC ; =UNK04_02211754
	ldr r1, _022070D8 ; =UNK04_02211764
	ldr r0, [r0]
	ldr r1, [r1]
	blx r1
	ldr r0, _022070DC ; =UNK04_02211760
	mov r1, #8
	str r1, [r0]
	add sp, sp, #4
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02207080:
	ldr r0, _022070E8 ; =UNK04_0221174C
	ldr r0, [r0]
	cmp r0, #0
	beq _0220709C
	ldr r1, _022070D8 ; =UNK04_02211764
	ldr r1, [r1]
	blx r1
_0220709C:
	ldr r0, _022070EC ; =UNK04_02211754
	ldr r0, [r0]
	cmp r0, #0
	beq _022070B8
	ldr r1, _022070D8 ; =UNK04_02211764
	ldr r1, [r1]
	blx r1
_022070B8:
	ldr r0, _022070DC ; =UNK04_02211760
	mov r1, #1
	str r1, [r0]
	mov r0, #0
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022070D0: .word UNK04_02211750
_022070D4: .word UNK04_0221175C
_022070D8: .word UNK04_02211764
_022070DC: .word UNK04_02211760
_022070E0: .word UNK04_02211778
_022070E4: .word UNK04_02211748
_022070E8: .word UNK04_0221174C
_022070EC: .word UNK04_02211754
_022070F0: .word UNK04_02211768
_022070F4: .word UNK04_02211784
_022070F8: .word UNK04_022117CC
_022070FC: .word UNK04_0221176C
_02207100: .word UNK04_022117B0
_02207104: .word UNK04_02211798
_02207108: .word UNK04_02211758
	arm_func_end MOD04_02206EFC

	arm_func_start MOD04_0220710C
MOD04_0220710C: ; 0x0220710C
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	bl MOD04_022083D4
	ldr r1, _02207154 ; =UNK04_02211750
	mov r4, r0
	ldr r2, [r1]
	add r0, r4, #1
	mov r1, #4
	blx r2
	movs r5, r0
	beq _0220714C
	mov r1, r6
	mov r2, r4
	bl MOD04_0220839C
	mov r0, #0
	strb r0, [r5, r4]
_0220714C:
	mov r0, r5
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_02207154: .word UNK04_02211750
	arm_func_end MOD04_0220710C

	arm_func_start MOD04_02207158
MOD04_02207158: ; 0x02207158
	stmdb sp!, {r4, lr}
	bl MOD04_022082D4
	cmp r0, #0
	bne _02207184
	bl MOD04_02208364
	ldr r0, _02207190 ; =UNK04_02211768
	ldr r4, [r0]
	bl MOD04_02208350
	mov r0, r4
	bl MOD04_02209218
	ldmia sp!, {r4, pc}
_02207184:
	bl MOD04_022082A0
	mov r0, #0
	ldmia sp!, {r4, pc}
	.align 2, 0
_02207190: .word UNK04_02211768
	arm_func_end MOD04_02207158

	arm_func_start MOD04_02207194
MOD04_02207194: ; 0x02207194
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r2, _022071BC ; =UNK04_0220F9B0
	mov ip, #2
	mov r1, #0x21
	mov r3, #1
	str ip, [sp]
	bl OS_SNPrintf
	add sp, sp, #4
	ldmfd sp!, {pc}
	.align 2, 0
_022071BC: .word UNK04_0220F9B0
	arm_func_end MOD04_02207194

	arm_func_start MOD04_022071C0
MOD04_022071C0: ; 0x022071C0
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0x24
	mov r5, r0
	mov r4, r1
	add r0, sp, #0
	mov r1, #0x14
	bl MOD04_022083B4
	add r0, sp, #0
	bl DWCi_BM_GetWiFiInfo
	ldr r1, [sp]
	ldr r2, [sp, #4]
	mov r0, #0
	cmp r2, r0
	cmpeq r1, r0
	addeq sp, sp, #0x24
	ldmeqia sp!, {r4, r5, pc}
	add r0, sp, #0x14
	mov r3, #0xd
	bl MOD04_0220844C
	cmp r0, #0
	addlt sp, sp, #0x24
	movlt r0, #0
	ldmltia sp!, {r4, r5, pc}
	add r1, sp, #0x14
	mov r0, r4
	mov r2, #0xd
	bl MOD04_02206C98
	ldr r1, _02207248 ; =0x027FFE0C
	mov r0, r5
	mov r2, #4
	bl MOD04_02206C98
	mov r0, #1
	add sp, sp, #0x24
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_02207248: .word 0x027FFE0C
	arm_func_end MOD04_022071C0

	arm_func_start MOD04_0220724C
MOD04_0220724C: ; 0x0220724C
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x10
	ldr ip, _02207324 ; =UNK04_0220BD2C
	add r3, sp, #0
	mov r4, r0
	mov r2, #6
_02207264:
	ldrb r1, [ip], #1
	ldrb r0, [ip], #1
	subs r2, r2, #1
	strb r1, [r3], #1
	strb r0, [r3], #1
	bne _02207264
	ldrb r1, [ip]
	ldr r0, _02207328 ; =UNK04_022117F0
	strb r1, [r3]
	bl MOD04_021DD9DC
	cmp r0, #0
	beq _02207318
	ldr r0, _02207328 ; =UNK04_022117F0
	ldr r1, [r0]
	cmp r1, #0x63
	bgt _022072B8
	cmp r1, #0xa
	blt _022072B8
	add r0, sp, #0
	bl MOD04_02208558
	b _022072CC
_022072B8:
	cmp r1, #0
	addgt r0, r1, #0x30
	movgt r1, #0x30
	strgtb r1, [sp]
	strgtb r0, [sp, #1]
_022072CC:
	ldr r0, _02207328 ; =UNK04_022117F0
	ldr r1, [r0, #4]
	cmp r1, #0
	blt _022072FC
	cmp r1, #0xa
	bge _022072FC
	add r3, r1, #0x30
	ldr r1, _0220732C ; =UNK04_022117F8
	add r0, sp, #4
	mov r2, #9
	strb r3, [sp, #3]
	bl MOD04_0220839C
_022072FC:
	add r1, sp, #0
	mov r0, r4
	mov r2, #0xd
	bl MOD04_02206C98
	add sp, sp, #0x10
	mov r0, #1
	ldmia sp!, {r4, pc}
_02207318:
	mov r0, #0
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
	.align 2, 0
_02207324: .word UNK04_0220BD2C
_02207328: .word UNK04_022117F0
_0220732C: .word UNK04_022117F8
	arm_func_end MOD04_0220724C

	arm_func_start MOD04_02207330
MOD04_02207330: ; 0x02207330
	ldr ip, _02207338 ; =MOD04_0220B55C
	bx ip
	.align 2, 0
_02207338: .word MOD04_0220B55C
	arm_func_end MOD04_02207330

	arm_func_start MOD04_0220733C
MOD04_0220733C: ; 0x0220733C
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x10
	mov r8, r0
	ldr r3, [r8, #0xac]
	mov r7, r1
	cmp r2, r3
	ldrlo r0, _022074D8 ; =UNK04_02211760
	movlo r1, #7
	strlo r1, [r0]
	addlo sp, sp, #0x10
	movlo r0, #0
	ldmloia sp!, {r4, r5, r6, r7, r8, pc}
	bl MOD04_022083D4
	mov r5, r0
	cmp r5, #0x20
	ldrgt r0, _022074D8 ; =UNK04_02211760
	movgt r1, #7
	strgt r1, [r0]
	addgt sp, sp, #0x10
	movgt r0, #0
	ldmgtia sp!, {r4, r5, r6, r7, r8, pc}
	cmp r5, #0
	movle r6, #0
	ble _022073A4
	bl MOD04_02206DA4
	mov r6, r0
_022073A4:
	ldr r1, _022074DC ; =UNK04_02211750
	add r0, r6, #1
	ldr r2, [r1]
	mov r1, #4
	blx r2
	movs r4, r0
	ldreq r0, _022074D8 ; =UNK04_02211760
	moveq r1, #1
	streq r1, [r0]
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	ldr ip, [r8, #0xac]
	ldr r2, _022074E0 ; =UNK04_0220BD54
	add r0, sp, #4
	add r1, sp, #8
	mov r3, r7
	str ip, [sp]
	bl MOD04_0220788C
	cmp r0, #0
	bne _02207414
	ldr r1, _022074E4 ; =UNK04_02211764
	mov r0, r4
	ldr r1, [r1]
	blx r1
	add sp, sp, #0x10
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_02207414:
	cmp r6, #0
	ble _0220744C
	mov r0, r4
	mov r1, r8
	mov r2, r5
	bl MOD04_02206C98
	mov r1, #0
	strb r1, [r4, r0]
	ldr r0, [sp, #8]
	ldr r1, _022074E8 ; =UNK04_0220F9CC
	mov r2, r4
	bl MOD04_022086F0
	cmp r0, #0
	beq _022074A4
_0220744C:
	ldr r0, [sp, #4]
	mov r1, #3
	str r1, [r0, #4]
	ldr r0, [sp, #4]
	str r4, [r0, #0x10]
	ldr r1, [r8, #0xac]
	ldr r0, [sp, #4]
	str r1, [r0, #0x14]
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	bl MOD04_0220781C
	cmp r0, #0
	addne sp, sp, #0x10
	movne r0, #1
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r1, _022074E4 ; =UNK04_02211764
	mov r0, r4
	ldr r1, [r1]
	blx r1
	add sp, sp, #0x10
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_022074A4:
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	bl MOD04_02207BB4
	ldr r1, _022074E4 ; =UNK04_02211764
	mov r0, r4
	ldr r1, [r1]
	blx r1
	ldr r0, _022074D8 ; =UNK04_02211760
	mov r1, #1
	str r1, [r0]
	mov r0, #0
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_022074D8: .word UNK04_02211760
_022074DC: .word UNK04_02211750
_022074E0: .word UNK04_0220BD54
_022074E4: .word UNK04_02211764
_022074E8: .word UNK04_0220F9CC
	arm_func_end MOD04_0220733C

	arm_func_start MOD04_022074EC
MOD04_022074EC: ; 0x022074EC
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #0x18
	mov r7, r2
	mov r4, r1
	ldr r1, _02207790 ; =UNK04_02211750
	mov r6, r7, lsl #8
	cmp r6, #0x80
	ldr r2, [r1]
	movlt r6, #0x80
	mov r8, r0
	mov r0, r6
	mov r1, #4
	blx r2
	movs r5, r0
	ldreq r0, _02207794 ; =UNK04_02211760
	moveq r1, #1
	streq r1, [r0]
	addeq sp, sp, #0x18
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	add r0, sp, #0xc
	mov r1, r4
	bl MOD04_02208558
	mov sb, r0
	bl MOD04_02206DA4
	ldr r1, _02207790 ; =UNK04_02211750
	add r0, r0, #1
	ldr r2, [r1]
	mov r1, #4
	blx r2
	movs r4, r0
	bne _02207594
	ldr r1, _02207798 ; =UNK04_02211764
	mov r0, r5
	ldr r1, [r1]
	blx r1
	ldr r0, _02207794 ; =UNK04_02211760
	mov r1, #1
	str r1, [r0]
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_02207594:
	add r1, sp, #0xc
	mov r2, sb
	bl MOD04_02206C98
	mov r1, #0
	strb r1, [r4, r0]
	add r0, sp, #0xc
	mov r1, r7
	bl MOD04_02208558
	mov sb, r0
	bl MOD04_02206DA4
	ldr r1, _02207790 ; =UNK04_02211750
	add r0, r0, #1
	ldr r2, [r1]
	mov r1, #4
	blx r2
	movs sl, r0
	bne _02207610
	ldr r1, _02207798 ; =UNK04_02211764
	mov r0, r4
	ldr r1, [r1]
	blx r1
	ldr r1, _02207798 ; =UNK04_02211764
	mov r0, r5
	ldr r1, [r1]
	blx r1
	ldr r0, _02207794 ; =UNK04_02211760
	mov r1, #1
	str r1, [r0]
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_02207610:
	add r1, sp, #0xc
	mov r2, sb
	bl MOD04_02206C98
	mov r1, #0
	strb r1, [sl, r0]
	ldr r2, _0220779C ; =UNK04_0220BD3C
	add r0, sp, #4
	add r1, sp, #8
	mov r3, r5
	str r6, [sp]
	bl MOD04_0220788C
	cmp r0, #0
	bne _02207680
	ldr r1, _02207798 ; =UNK04_02211764
	mov r0, sl
	ldr r1, [r1]
	blx r1
	ldr r1, _02207798 ; =UNK04_02211764
	mov r0, r4
	ldr r1, [r1]
	blx r1
	ldr r1, _02207798 ; =UNK04_02211764
	mov r0, r5
	ldr r1, [r1]
	blx r1
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_02207680:
	ldr r0, [sp, #8]
	ldr r1, _022077A0 ; =UNK04_0220F9D8
	mov r2, r4
	bl MOD04_022086F0
	cmp r0, #0
	beq _0220773C
	ldr r0, [sp, #8]
	ldr r1, _022077A4 ; =UNK04_0220F9E0
	mov r2, sl
	bl MOD04_022086F0
	cmp r0, #0
	beq _0220773C
	ldr r0, [sp, #4]
	mov r1, #2
	str r1, [r0, #4]
	ldr r0, [sp, #4]
	str r8, [r0, #0x10]
	ldr r0, [sp, #4]
	str r4, [r0, #0x1c]
	ldr r0, [sp, #4]
	str sl, [r0, #0x20]
	ldr r0, [sp, #4]
	str r7, [r0, #0x14]
	ldr r0, [sp, #4]
	str r5, [r0, #0x18]
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	bl MOD04_0220781C
	cmp r0, #0
	addne sp, sp, #0x18
	movne r0, #1
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	ldr r1, _02207798 ; =UNK04_02211764
	mov r0, sl
	ldr r1, [r1]
	blx r1
	ldr r1, _02207798 ; =UNK04_02211764
	mov r0, r4
	ldr r1, [r1]
	blx r1
	ldr r1, _02207798 ; =UNK04_02211764
	mov r0, r5
	ldr r1, [r1]
	blx r1
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_0220773C:
	ldr r1, _02207798 ; =UNK04_02211764
	mov r0, sl
	ldr r1, [r1]
	blx r1
	ldr r1, _02207798 ; =UNK04_02211764
	mov r0, r4
	ldr r1, [r1]
	blx r1
	ldr r1, _02207798 ; =UNK04_02211764
	mov r0, r5
	ldr r1, [r1]
	blx r1
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	bl MOD04_02207BB4
	ldr r0, _02207794 ; =UNK04_02211760
	mov r1, #1
	str r1, [r0]
	mov r0, #0
	add sp, sp, #0x18
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_02207790: .word UNK04_02211750
_02207794: .word UNK04_02211760
_02207798: .word UNK04_02211764
_0220779C: .word UNK04_0220BD3C
_022077A0: .word UNK04_0220F9D8
_022077A4: .word UNK04_0220F9E0
	arm_func_end MOD04_022074EC

	arm_func_start MOD04_022077A8
MOD04_022077A8: ; 0x022077A8
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x10
	ldr r2, _02207814 ; =UNK04_0220BD48
	mov r4, r0
	mov ip, #0x80
	ldr r3, _02207818 ; =UNK04_02211850
	add r0, sp, #4
	add r1, sp, #8
	str ip, [sp]
	bl MOD04_0220788C
	cmp r0, #0
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r0, [sp, #4]
	mov r1, #1
	str r1, [r0, #4]
	ldr r0, [sp, #4]
	str r4, [r0, #0x10]
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	bl MOD04_0220781C
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
	.align 2, 0
_02207814: .word UNK04_0220BD48
_02207818: .word UNK04_02211850
	arm_func_end MOD04_022077A8

	arm_func_start MOD04_0220781C
MOD04_0220781C: ; 0x0220781C
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r4, r1
	mov r5, r0
	bl MOD04_02208364
	mov r0, r4
	bl MOD04_022092A0
	str r0, [r5]
	ldr r1, [r5]
	ldr r0, _02207884 ; =UNK04_02211768
	str r1, [r0]
	bl MOD04_02208350
	ldr r0, [r5]
	cmp r0, #0
	addge sp, sp, #4
	movge r0, #1
	ldmgeia sp!, {r4, r5, pc}
	mov r0, r5
	mov r1, r4
	bl MOD04_02207BB4
	ldr r0, _02207888 ; =UNK04_02211760
	mov r1, #3
	str r1, [r0]
	mov r0, #0
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_02207884: .word UNK04_02211768
_02207888: .word UNK04_02211760
	arm_func_end MOD04_0220781C

	arm_func_start MOD04_0220788C
MOD04_0220788C: ; 0x0220788C
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	mov r8, r0
	mov r7, r1
	ldr r0, _02207B40 ; =UNK04_0221182C
	ldr r1, _02207B44 ; =UNK04_02211838
	mov r6, r2
	mov r4, r3
	bl MOD04_022071C0
	cmp r0, #0
	ldreq r0, _02207B48 ; =UNK04_02211760
	moveq r1, #8
	streq r1, [r0]
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r1, _02207B4C ; =UNK04_02211750
	mov r0, #0x24
	ldr r2, [r1]
	mov r1, #4
	blx r2
	movs r5, r0
	ldreq r0, _02207B48 ; =UNK04_02211760
	moveq r1, #1
	streq r1, [r0]
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, _02207B50 ; =UNK04_0221175C
	mov r1, #0
	ldr r0, [r0]
	str r0, [r5, #8]
	str r1, [r5, #0xc]
	bl MOD04_022082D4
	cmp r0, #0
	bne _02207944
	ldr r1, _02207B54 ; =UNK04_02211764
	mov r0, r5
	ldr r1, [r1]
	blx r1
	ldr r0, _02207B48 ; =UNK04_02211760
	mov r1, #2
	str r1, [r0]
	add sp, sp, #8
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_02207944:
	ldr r1, _02207B58 ; =MOD04_02207BE0
	ldr r0, _02207B5C ; =UNK04_02211754
	str r1, [sp]
	str r5, [sp, #4]
	ldr r0, [r0]
	ldr r3, [sp, #0x20]
	mov r2, r4
	mov r1, #1
	bl MOD04_02209438
	movs r4, r0
	bne _0220799C
	bl MOD04_022082A0
	ldr r1, _02207B54 ; =UNK04_02211764
	mov r0, r5
	ldr r1, [r1]
	blx r1
	ldr r0, _02207B48 ; =UNK04_02211760
	mov r1, #3
	str r1, [r0]
	add sp, sp, #8
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_0220799C:
	ldr r1, _02207B60 ; =UNK04_0220F9C8
	str r5, [r8]
	mov r2, #1
	str r4, [r7]
	bl MOD04_022086D4
	cmp r0, #0
	beq _02207B1C
	ldr r1, _02207B64 ; =UNK04_0220F9E4
	ldr r2, _02207B68 ; =UNK04_022117CC
	mov r0, r4
	bl MOD04_02208764
	cmp r0, #0
	beq _02207B1C
	ldr r1, _02207B6C ; =UNK04_0220F9F0
	ldr r2, _02207B70 ; =UNK04_0221176C
	mov r0, r4
	bl MOD04_022086F0
	cmp r0, #0
	beq _02207B1C
	ldr r1, _02207B74 ; =UNK04_0220F9F8
	ldr r2, _02207B40 ; =UNK04_0221182C
	mov r0, r4
	bl MOD04_022086F0
	cmp r0, #0
	beq _02207B1C
	ldr r1, _02207B78 ; =UNK04_0220FA04
	ldr r2, _02207B7C ; =UNK04_022117B0
	mov r0, r4
	bl MOD04_022086F0
	cmp r0, #0
	beq _02207B1C
	ldr r0, _02207B80 ; =UNK04_0221174C
	ldr r1, _02207B84 ; =UNK04_0220FA0C
	ldr r2, [r0]
	mov r0, r4
	bl MOD04_022086F0
	cmp r0, #0
	beq _02207B1C
	ldr r1, _02207B88 ; =UNK04_0220FA14
	ldr r2, _02207B44 ; =UNK04_02211838
	mov r0, r4
	bl MOD04_022086F0
	cmp r0, #0
	beq _02207B1C
	ldr r1, _02207B8C ; =UNK04_0220FA1C
	ldr r2, _02207B90 ; =UNK04_02211784
	mov r0, r4
	bl MOD04_022086F0
	cmp r0, #0
	beq _02207B1C
	ldr r1, _02207B94 ; =UNK04_0220FA24
	mov r0, r4
	mov r2, r6
	bl MOD04_022086F0
	cmp r0, #0
	beq _02207B1C
	ldr r0, _02207B98 ; =UNK04_02211778
	ldr r2, [r0]
	cmp r2, #0
	beq _02207AA0
	ldr r1, _02207B9C ; =UNK04_0220FA2C
	mov r0, r4
	bl MOD04_022086F0
	cmp r0, #0
	beq _02207B1C
_02207AA0:
	ldr r0, _02207B98 ; =UNK04_02211778
	ldr r2, [r0, #4]
	cmp r2, #0
	beq _02207AC4
	ldr r1, _02207BA0 ; =UNK04_0220FA34
	mov r0, r4
	bl MOD04_022086F0
	cmp r0, #0
	beq _02207B1C
_02207AC4:
	ldr r0, _02207B98 ; =UNK04_02211778
	ldr r2, [r0, #8]
	cmp r2, #0
	beq _02207AE8
	ldr r1, _02207BA4 ; =UNK04_0220FA3C
	mov r0, r4
	bl MOD04_022086F0
	cmp r0, #0
	beq _02207B1C
_02207AE8:
	ldr r0, _02207BA8 ; =UNK04_02211748
	ldr r0, [r0]
	cmp r0, #0
	beq _02207B10
	ldr r1, _02207BAC ; =UNK04_0220FA44
	ldr r2, _02207BB0 ; =UNK04_02211798
	mov r0, r4
	bl MOD04_022086F0
	cmp r0, #0
	beq _02207B1C
_02207B10:
	add sp, sp, #8
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_02207B1C:
	mov r0, r5
	mov r1, r4
	bl MOD04_02207BB4
	ldr r0, _02207B48 ; =UNK04_02211760
	mov r1, #1
	str r1, [r0]
	mov r0, #0
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_02207B40: .word UNK04_0221182C
_02207B44: .word UNK04_02211838
_02207B48: .word UNK04_02211760
_02207B4C: .word UNK04_02211750
_02207B50: .word UNK04_0221175C
_02207B54: .word UNK04_02211764
_02207B58: .word MOD04_02207BE0
_02207B5C: .word UNK04_02211754
_02207B60: .word UNK04_0220F9C8
_02207B64: .word UNK04_0220F9E4
_02207B68: .word UNK04_022117CC
_02207B6C: .word UNK04_0220F9F0
_02207B70: .word UNK04_0221176C
_02207B74: .word UNK04_0220F9F8
_02207B78: .word UNK04_0220FA04
_02207B7C: .word UNK04_022117B0
_02207B80: .word UNK04_0221174C
_02207B84: .word UNK04_0220FA0C
_02207B88: .word UNK04_0220FA14
_02207B8C: .word UNK04_0220FA1C
_02207B90: .word UNK04_02211784
_02207B94: .word UNK04_0220FA24
_02207B98: .word UNK04_02211778
_02207B9C: .word UNK04_0220FA2C
_02207BA0: .word UNK04_0220FA34
_02207BA4: .word UNK04_0220FA3C
_02207BA8: .word UNK04_02211748
_02207BAC: .word UNK04_0220FA44
_02207BB0: .word UNK04_02211798
	arm_func_end MOD04_0220788C

	arm_func_start MOD04_02207BB4
MOD04_02207BB4: ; 0x02207BB4
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r0, r1
	bl MOD04_02209410
	bl MOD04_022082A0
	ldr r1, _02207BDC ; =UNK04_02211764
	mov r0, r4
	ldr r1, [r1]
	blx r1
	ldmia sp!, {r4, pc}
	.align 2, 0
_02207BDC: .word UNK04_02211764
	arm_func_end MOD04_02207BB4

	arm_func_start MOD04_02207BE0
MOD04_02207BE0: ; 0x02207BE0
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x1c
	mov sl, r2
	str r1, [sp]
	ldr r1, [sl, #8]
	cmp r0, #0
	str r1, [sp, #4]
	ldr r1, [sl, #0xc]
	ldr fp, [sl, #4]
	str r1, [sp, #8]
	mvn r1, #0
	str r1, [sp, #0xc]
	beq _02207C28
	cmp r0, #6
	beq _02207E10
	cmp r0, #8
	beq _02207E08
	b _02207E18
_02207C28:
	ldr r1, _02207F04 ; =UNK04_0220FA4C
	ldr r0, [sp]
	add r2, sp, #0x10
	bl MOD04_02209A98
	cmp r0, #3
	movne r4, #3
	bne _02207E1C
	ldr r0, [sp, #0x10]
	mov r1, #3
	bl MOD04_02208564
	ldr r1, _02207F08 ; =0x0000012E
	cmp r0, r1
	bne _02207D80
	ldr r0, [sp]
	add r1, sp, #0x14
	mov sb, #0
	bl MOD04_02209A68
	movs r8, r0
	movmi r4, #3
	bmi _02207E1C
	cmp r8, #0
	mov r7, sb
	ble _02207D6C
	mov r4, r7
	mov r6, #8
	mov r5, #1
_02207C90:
	ldr r1, [sp, #0x14]
	mov r3, r7
	add r2, r1, r7
	b _02207CA8
_02207CA0:
	add r2, r2, #1
	add r7, r7, #1
_02207CA8:
	ldrsb r0, [r2]
	cmp r0, #0x3d
	beq _02207CBC
	cmp r7, r8
	blt _02207CA0
_02207CBC:
	sub r0, r7, r3
	cmp r0, #8
	add r7, r7, #1
	bne _02207CE8
	add r0, r1, r3
	ldr r1, _02207F0C ; =UNK04_0220FA5C
	mov r2, r6
	bl MOD04_022083C8
	cmp r0, #0
	moveq sb, r5
	movne sb, r4
_02207CE8:
	ldr r3, [sp, #0x14]
	mov r1, r7
	add r2, r3, r7
	b _02207D00
_02207CF8:
	add r2, r2, #1
	add r7, r7, #1
_02207D00:
	ldrsb r0, [r2]
	cmp r0, #0x26
	beq _02207D24
	cmp r0, #0xd
	beq _02207D24
	cmp r0, #0
	beq _02207D24
	cmp r7, r8
	blt _02207CF8
_02207D24:
	cmp sb, #0
	sub r2, r7, r1
	add r7, r7, #1
	beq _02207D64
	cmp r2, #4
	bne _02207D6C
	add r0, sp, #0x18
	add r1, r3, r1
	bl MOD04_02206B60
	mov r1, r0
	add r0, sp, #0x18
	mov r2, #0
	strb r2, [r0, r1]
	bl MOD04_02208564
	str r0, [sp, #0xc]
	b _02207D6C
_02207D64:
	cmp r7, r8
	blt _02207C90
_02207D6C:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	movlt r4, #3
	movge r4, #5
	b _02207E1C
_02207D80:
	cmp r0, #0
	ble _02207D90
	cmp r0, #0xc8
	beq _02207D98
_02207D90:
	mov r4, #3
	b _02207E1C
_02207D98:
	cmp fp, #1
	beq _02207DB4
	cmp fp, #2
	beq _02207DD0
	cmp fp, #3
	beq _02207DEC
	b _02207E1C
_02207DB4:
	ldr r0, [sp]
	mov r1, sl
	bl MOD04_02207F1C
	cmp r0, #0
	movne r4, #0
	moveq r4, #3
	b _02207E1C
_02207DD0:
	ldr r0, [sp]
	mov r1, sl
	bl MOD04_02207F9C
	cmp r0, #0
	movne r4, #0
	moveq r4, #3
	b _02207E1C
_02207DEC:
	ldr r0, [sp]
	mov r1, sl
	bl MOD04_02207F70
	cmp r0, #0
	movne r4, #0
	moveq r4, #3
	b _02207E1C
_02207E08:
	mov r4, #6
	b _02207E1C
_02207E10:
	mov r4, #4
	b _02207E1C
_02207E18:
	mov r4, #3
_02207E1C:
	cmp fp, #1
	beq _02207E8C
	cmp fp, #2
	beq _02207E38
	cmp fp, #3
	beq _02207E7C
	b _02207E8C
_02207E38:
	ldr r0, [sl, #0x20]
	cmp r0, #0
	beq _02207E50
	ldr r1, _02207F10 ; =UNK04_02211764
	ldr r1, [r1]
	blx r1
_02207E50:
	ldr r0, [sl, #0x1c]
	cmp r0, #0
	beq _02207E68
	ldr r1, _02207F10 ; =UNK04_02211764
	ldr r1, [r1]
	blx r1
_02207E68:
	ldr r1, _02207F10 ; =UNK04_02211764
	ldr r0, [sl, #0x18]
	ldr r1, [r1]
	blx r1
	b _02207E8C
_02207E7C:
	ldr r1, _02207F10 ; =UNK04_02211764
	ldr r0, [sl, #0x10]
	ldr r1, [r1]
	blx r1
_02207E8C:
	bl MOD04_02208364
	ldr r0, _02207F14 ; =UNK04_02211768
	mvn r1, #0
	str r1, [r0]
	bl MOD04_02208350
	ldr r0, [sp]
	bl MOD04_02209CC4
	ldr r1, _02207F10 ; =UNK04_02211764
	mov r0, sl
	ldr r1, [r1]
	blx r1
	bl MOD04_022082A0
	cmp r4, #0
	ldrne r0, _02207F18 ; =UNK04_02211760
	strne r4, [r0]
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _02207EE8
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #4]
	mov r0, fp
	mov r1, r4
	blx r3
_02207EE8:
	ldr r0, [sp, #8]
	cmp r0, #0
	addeq sp, sp, #0x1c
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	bl MOD04_0220828C
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02207F04: .word UNK04_0220FA4C
_02207F08: .word 0x0000012E
_02207F0C: .word UNK04_0220FA5C
_02207F10: .word UNK04_02211764
_02207F14: .word UNK04_02211768
_02207F18: .word UNK04_02211760
	arm_func_end MOD04_02207BE0

	arm_func_start MOD04_02207F1C
MOD04_02207F1C: ; 0x02207F1C
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	mov r4, r1
	add r1, sp, #0
	bl MOD04_02209A68
	movs r1, r0
	bmi _02207F64
	ldr r0, [sp]
	bl MOD04_02208564
	ldr r1, [r4, #0x10]
	add sp, sp, #8
	str r0, [r1]
	ldr r0, [r4, #0x10]
	ldr r0, [r0]
	cmp r0, #0
	movge r0, #1
	movlt r0, #0
	ldmia sp!, {r4, pc}
_02207F64:
	mov r0, #0
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	arm_func_end MOD04_02207F1C

	arm_func_start MOD04_02207F70
MOD04_02207F70: ; 0x02207F70
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	mov r4, r1
	add r1, sp, #0
	bl MOD04_02209A68
	ldr r1, [r4, #0x14]
	cmp r0, r1
	moveq r0, #1
	movne r0, #0
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	arm_func_end MOD04_02207F70

	arm_func_start MOD04_02207F9C
MOD04_02207F9C: ; 0x02207F9C
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x24
	ldr r2, [r1, #0x14]
	str r1, [sp]
	mov r1, #0xb0
	mul r1, r2, r1
	mov r4, r0
	ldr r0, [sp]
	mov r2, #0
	ldr r0, [r0, #0x10]
	str r2, [sp, #4]
	bl MOD04_022083B4
	ldr r1, _02208224 ; =UNK04_0220FA68
	add r2, sp, #0x1c
	mov r0, r4
	bl MOD04_02209A98
	cmp r0, #0
	ble _02208008
	ldr r1, [sp, #0x1c]
	ldrsb r0, [r1]
	cmp r0, #0x30
	bne _02208008
	ldrsb r0, [r1, #1]
	cmp r0, #0
	addeq sp, sp, #0x24
	moveq r0, #1
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02208008:
	add r1, sp, #0x18
	mov r0, r4
	bl MOD04_02209A68
	mov sb, r0
	cmp sb, #0
	ble _02208218
	ldr r0, [sp]
	mov r8, #0
	ldr r0, [r0, #0x14]
	str r8, [sp, #8]
	cmp r0, #0
	ble _02208218
	str r8, [sp, #0xc]
	mov fp, r8
	str r8, [sp, #0x14]
	str r8, [sp, #0x10]
	mov sl, #1
_0220804C:
	cmp r8, sb
	movge r0, #1
	strge r0, [sp, #4]
	bge _02208218
	ldr r0, [sp]
	ldr r7, [sp, #0x10]
	ldr r2, [r0, #0x10]
	mov r0, r7
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	mov r6, r8
	mov r1, r7
	add r5, r2, r0
	cmp r8, sb
	bge _022081F0
_02208088:
	ldr r0, [sp, #0x18]
	ldrsb r2, [r0, r8]
	cmp r2, #0xd
	moveq r1, sl
	beq _022081E4
	cmp r1, #0
	beq _022080F0
	cmp r2, #0xa
	bne _022081E0
	cmp r7, #5
	bne _022080D8
	sub r1, r8, #1
	sub r1, r1, r6
	cmp r1, #8
	bgt _02208218
	add r0, r0, r6
	bl MOD04_02208564
	cmp r0, #0
	blt _02208218
	str r0, [r5, #0xac]
_022080D8:
	cmp r7, #5
	ldrlt r0, [sp, #0x14]
	strge sl, [sp, #4]
	add r8, r8, #1
	strlt r0, [sp, #4]
	b _022081F0
_022080F0:
	cmp r2, #9
	bne _022081E0
	cmp r7, #5
	addls pc, pc, r7, lsl #2
	b _022081D8
_02208104: ; jump table
	b _0220811C ; case 0
	b _02208138 ; case 1
	b _02208164 ; case 2
	b _02208180 ; case 3
	b _0220819C ; case 4
	b _022081B8 ; case 5
_0220811C:
	sub r2, r8, r6
	cmp r2, #0x20
	bhs _02208218
	add r1, r0, r6
	mov r0, r5
	bl MOD04_0220839C
	b _022081D8
_02208138:
	sub r4, r8, r6
	mov r0, r4
	bl MOD04_02206DC0
	cmp r0, #0x64
	bhs _02208218
	mov r2, r4
	add r0, r5, #0x22
	ldr r1, [sp, #0x18]
	add r1, r1, r6
	bl MOD04_02206B60
	b _022081D8
_02208164:
	sub r2, r8, r6
	cmp r2, #0xa
	bhs _02208218
	add r1, r0, r6
	add r0, r5, #0x88
	bl MOD04_0220839C
	b _022081D8
_02208180:
	sub r2, r8, r6
	cmp r2, #0xa
	bhs _02208218
	add r1, r0, r6
	add r0, r5, #0x93
	bl MOD04_0220839C
	b _022081D8
_0220819C:
	sub r2, r8, r6
	cmp r2, #0xa
	bhs _02208218
	add r1, r0, r6
	add r0, r5, #0x9e
	bl MOD04_0220839C
	b _022081D8
_022081B8:
	sub r1, r8, r6
	cmp r1, #8
	bgt _02208218
	add r0, r0, r6
	bl MOD04_02208564
	cmp r0, #0
	blt _02208218
	str r0, [r5, #0xac]
_022081D8:
	add r7, r7, #1
	add r6, r8, #1
_022081E0:
	mov r1, fp
_022081E4:
	add r8, r8, #1
	cmp r8, sb
	blt _02208088
_022081F0:
	ldr r0, [sp]
	ldr r1, [r0, #0x14]
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
	cmp r0, r1
	ldr r0, [sp, #0xc]
	add r0, r0, #0xb0
	str r0, [sp, #0xc]
	blt _0220804C
_02208218:
	ldr r0, [sp, #4]
	add sp, sp, #0x24
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02208224: .word UNK04_0220FA68
	arm_func_end MOD04_02207F9C

	arm_func_start MOD04_02208228
MOD04_02208228: ; 0x02208228
	stmdb sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x14
	mov sb, r0
	add r0, sp, #0
	bl OS_GetMacAddress
	mov r8, #0
	add r7, sp, #0
	mov r6, r8
	add r5, sp, #6
	mov r4, #2
_02208250:
	ldrb r1, [r7]
	mov r2, r4
	add r0, r5, r6
	bl MOD04_022083E0
	add r8, r8, #1
	cmp r8, #6
	add r7, r7, #1
	add r6, r6, #2
	blt _02208250
	add r1, sp, #6
	mov r0, sb
	mov r2, #0xc
	bl MOD04_02206C98
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
	arm_func_end MOD04_02208228

	arm_func_start MOD04_0220828C
MOD04_0220828C: ; 0x0220828C
	ldr ip, _0220829C ; =OS_SendMessage
	mov r1, #0
	mov r2, r1
	bx ip
	.align 2, 0
_0220829C: .word OS_SendMessage
	arm_func_end MOD04_0220828C

	arm_func_start MOD04_022082A0
MOD04_022082A0: ; 0x022082A0
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r0, _022082CC ; =UNK04_022118D4
	bl OS_LockMutex
	ldr r1, _022082D0 ; =UNK04_022118D0
	mov r2, #0
	ldr r0, _022082CC ; =UNK04_022118D4
	str r2, [r1]
	bl OS_UnlockMutex
	add sp, sp, #4
	ldmfd sp!, {pc}
	.align 2, 0
_022082CC: .word UNK04_022118D4
_022082D0: .word UNK04_022118D0
	arm_func_end MOD04_022082A0

	arm_func_start MOD04_022082D4
MOD04_022082D4: ; 0x022082D4
	stmdb sp!, {r4, lr}
	ldr r0, _02208314 ; =UNK04_022118D4
	bl OS_LockMutex
	ldr r0, _02208318 ; =UNK04_022118D0
	ldr r0, [r0]
	cmp r0, #0
	moveq r4, #1
	movne r4, #0
	cmp r4, #0
	ldrne r0, _02208318 ; =UNK04_022118D0
	movne r1, #1
	strne r1, [r0]
	ldr r0, _02208314 ; =UNK04_022118D4
	bl OS_UnlockMutex
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_02208314: .word UNK04_022118D4
_02208318: .word UNK04_022118D0
	arm_func_end MOD04_022082D4

	arm_func_start MOD04_0220831C
MOD04_0220831C: ; 0x0220831C
	bx lr
	arm_func_end MOD04_0220831C

	arm_func_start MOD04_02208320
MOD04_02208320: ; 0x02208320
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r0, _02208348 ; =UNK04_022118D4
	bl OS_InitMutex
	ldr r0, _0220834C ; =UNK04_022118D0
	mov r1, #0
	str r1, [r0]
	mov r0, #1
	add sp, sp, #4
	ldmfd sp!, {pc}
	.align 2, 0
_02208348: .word UNK04_022118D4
_0220834C: .word UNK04_022118D0
	arm_func_end MOD04_02208320

	arm_func_start MOD04_02208350
MOD04_02208350: ; 0x02208350
	ldr ip, _0220835C ; =OS_UnlockMutex
	ldr r0, _02208360 ; =UNK04_022118EC
	bx ip
	.align 2, 0
_0220835C: .word OS_UnlockMutex
_02208360: .word UNK04_022118EC
	arm_func_end MOD04_02208350

	arm_func_start MOD04_02208364
MOD04_02208364: ; 0x02208364
	ldr ip, _02208370 ; =OS_LockMutex
	ldr r0, _02208374 ; =UNK04_022118EC
	bx ip
	.align 2, 0
_02208370: .word OS_LockMutex
_02208374: .word UNK04_022118EC
	arm_func_end MOD04_02208364

	arm_func_start MOD04_02208378
MOD04_02208378: ; 0x02208378
	bx lr
	arm_func_end MOD04_02208378

	arm_func_start MOD04_0220837C
MOD04_0220837C: ; 0x0220837C
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r0, _02208398 ; =UNK04_022118EC
	bl OS_InitMutex
	mov r0, #1
	add sp, sp, #4
	ldmfd sp!, {pc}
	.align 2, 0
_02208398: .word UNK04_022118EC
	arm_func_end MOD04_0220837C

	arm_func_start MOD04_0220839C
MOD04_0220839C: ; 0x0220839C
	ldr ip, _022083B0 ; =MI_CpuCopy8
	mov r3, r0
	mov r0, r1
	mov r1, r3
	bx ip
	.align 2, 0
_022083B0: .word MI_CpuCopy8
	arm_func_end MOD04_0220839C

	arm_func_start MOD04_022083B4
MOD04_022083B4: ; 0x022083B4
	ldr ip, _022083C4 ; =MI_CpuFill8
	mov r2, r1
	mov r1, #0
	bx ip
	.align 2, 0
_022083C4: .word MI_CpuFill8
	arm_func_end MOD04_022083B4

	arm_func_start MOD04_022083C8
MOD04_022083C8: ; 0x022083C8
	ldr ip, _022083D0 ; =STD_CompareNString
	bx ip
	.align 2, 0
_022083D0: .word STD_CompareNString
	arm_func_end MOD04_022083C8

	arm_func_start MOD04_022083D4
MOD04_022083D4: ; 0x022083D4
	ldr ip, _022083DC ; =STD_GetStringLength
	bx ip
	.align 2, 0
_022083DC: .word STD_GetStringLength
	arm_func_end MOD04_022083D4

	arm_func_start MOD04_022083E0
MOD04_022083E0: ; 0x022083E0
	stmdb sp!, {lr}
	sub sp, sp, #4
	cmp r2, #8
	addgt sp, sp, #4
	mov ip, #0
	mvngt r0, #0
	ldmgtia sp!, {pc}
	cmp r2, #1
	mov lr, #1
	blt _02208440
_02208408:
	sub r3, r2, lr
	mov r3, r3, lsl #2
	mov r3, r1,lsr  r3
	and r3, r3, #0xf
	cmp r3, #0xa
	addlo r3, r3, #0x30
	strlob r3, [r0, ip]
	addlo ip, ip, #1
	addhs r3, r3, #0x57
	strhsb r3, [r0, ip]
	add lr, lr, #1
	addhs ip, ip, #1
	cmp lr, r2
	ble _02208408
_02208440:
	mov r0, ip
	add sp, sp, #4
	ldmfd sp!, {pc}
	arm_func_end MOD04_022083E0

	arm_func_start MOD04_0220844C
MOD04_0220844C: ; 0x0220844C
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xc
	ldr r4, _02208554 ; =UNK04_0220BD64
	mov r6, #0
	ldr r5, [r4]
	mov r7, #0xa
	umull r4, sl, r5, r7
	mla sl, r5, r6, sl
	ldr r5, _02208554 ; =UNK04_0220BD64
	mov sb, r1
	ldr r5, [r5, #4]
	mov r8, r2
	mla sl, r5, r7, sl
	cmp r8, sl
	mov sl, r0
	cmpeq sb, r4
	str r3, [sp]
	addhs sp, sp, #0xc
	mvnhs r0, #0
	ldmhsia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r7, r6
	mov r0, r6
	mov fp, #0x30
	mov r1, #1
	str r1, [sp, #4]
_022084B0:
	ldr r1, _02208554 ; =UNK04_0220BD64
	add r1, r1, r7, lsl #3
	ldr r4, [r1, #4]
	ldr r1, _02208554 ; =UNK04_0220BD64
	cmp r8, r4
	ldr r5, [r1, r7, lsl #3]
	cmpeq sb, r5
	blo _02208510
	mov r0, sb
	mov r1, r8
	mov r2, r5
	mov r3, r4
	bl _ll_udiv
	umull r2, r1, r0, r5
	mla r1, r0, r4, r1
	add r0, r0, #0x30
	strb r0, [sl, r6]
	mov r0, #0
	mla r1, r0, r5, r1
	subs sb, sb, r2
	ldr r0, [sp, #4]
	sbc r8, r8, r1
	add r6, r6, #1
	b _02208530
_02208510:
	cmp r0, #0
	bne _02208528
	ldr r1, [sp]
	rsb r2, r7, #0x11
	cmp r2, r1
	bgt _02208530
_02208528:
	strb fp, [sl, r6]
	add r6, r6, #1
_02208530:
	add r7, r7, #1
	cmp r7, #0x10
	blt _022084B0
	mov r0, #0x30
	adds r0, sb, r0
	strb r0, [sl, r6]
	add r0, r6, #1
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02208554: .word UNK04_0220BD64
	arm_func_end MOD04_0220844C

	arm_func_start MOD04_02208558
MOD04_02208558: ; 0x02208558
	ldr ip, _02208560 ; =MOD04_0220B788
	bx ip
	.align 2, 0
_02208560: .word MOD04_0220B788
	arm_func_end MOD04_02208558

	arm_func_start MOD04_02208564
MOD04_02208564: ; 0x02208564
	ldr ip, _0220856C ; =MOD04_0220B844
	bx ip
	.align 2, 0
_0220856C: .word MOD04_0220B844
	arm_func_end MOD04_02208564

	arm_func_start MOD04_02208570
MOD04_02208570: ; 0x02208570
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl MOD04_022091BC
	bl MOD04_02208C24
	ldr r0, _022085AC ; =UNK04_0221191C
	ldr r1, _022085B0 ; =UNK04_02211904
	ldr r0, [r0]
	ldr r1, [r1]
	blx r1
	bl MOD04_02208CF4
	ldr r0, _022085B4 ; =UNK04_02211920
	mov r1, #0
	str r1, [r0]
	blx r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_022085AC: .word UNK04_0221191C
_022085B0: .word UNK04_02211904
_022085B4: .word UNK04_02211920
	arm_func_end MOD04_02208570

	arm_func_start MOD04_022085B8
MOD04_022085B8: ; 0x022085B8
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	ldr r3, _022086B0 ; =UNK04_02211908
	mov r7, #0
	ldr r6, _022086B4 ; =UNK04_02211924
	ldr r5, _022086B8 ; =UNK04_02211904
	ldr lr, _022086BC ; =UNK04_02211910
	ldr ip, _022086C0 ; =UNK04_02211914
	str r7, [r3]
	ldr r4, _022086C4 ; =UNK04_0221190C
	ldr r3, _022086C8 ; =UNK04_02211918
	str r7, [r4]
	mov r4, r2
	str r0, [r6]
	str r1, [r5]
	str r7, [lr]
	str r7, [ip]
	str r7, [r3]
	bl MOD04_02208CF8
	cmp r0, #0
	ldreq r0, _022086B0 ; =UNK04_02211908
	moveq r1, #9
	streq r1, [r0]
	addeq sp, sp, #4
	moveq r0, r7
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	mov r1, r6
	ldr r2, [r1]
	mov r0, #0x2000
	mov r1, #8
	blx r2
	movs r1, r0
	ldr r0, _022086CC ; =UNK04_0221191C
	str r1, [r0]
	bne _02208660
	ldr r0, _022086B0 ; =UNK04_02211908
	mov r1, #1
	str r1, [r0]
	bl MOD04_02208CF4
	add sp, sp, #4
	mov r0, r7
	ldmia sp!, {r4, r5, r6, r7, pc}
_02208660:
	mov r0, r4
	bl MOD04_02208C54
	cmp r0, #0
	ldrne r1, _022086D0 ; =UNK04_02211920
	movne r0, #1
	strne r0, [r1]
	addne sp, sp, #4
	ldmneia sp!, {r4, r5, r6, r7, pc}
	ldr r0, _022086CC ; =UNK04_0221191C
	mov r1, r5
	ldr r2, [r1]
	ldr r0, [r0]
	ldr r1, _022086B0 ; =UNK04_02211908
	mov r3, #9
	str r3, [r1]
	blx r2
	bl MOD04_02208CF4
	mov r0, r7
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_022086B0: .word UNK04_02211908
_022086B4: .word UNK04_02211924
_022086B8: .word UNK04_02211904
_022086BC: .word UNK04_02211910
_022086C0: .word UNK04_02211914
_022086C4: .word UNK04_0221190C
_022086C8: .word UNK04_02211918
_022086CC: .word UNK04_0221191C
_022086D0: .word UNK04_02211920
	arm_func_end MOD04_022085B8

	arm_func_start MOD04_022086D4
MOD04_022086D4: ; 0x022086D4
	ldr r3, [r0]
	cmp r3, #0
	movne r0, #0
	streq r1, [r0, #0x1c]
	streq r2, [r0, #0x18]
	moveq r0, #1
	bx lr
	arm_func_end MOD04_022086D4

	arm_func_start MOD04_022086F0
MOD04_022086F0: ; 0x022086F0
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	ldr r0, [r8]
	mov r7, r1
	mov r6, r2
	mov r5, #0
	cmp r0, #0
	movne r0, r5
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r6
	bl MOD04_strlen
	mov r4, r0
	mov r0, r8
	mov r1, r6
	mov r2, r4
	bl MOD04_02208794
	cmp r0, #0
	beq _0220875C
	mov r1, r7
	mov r2, r6
	add r0, r8, #0x38
	mov r3, #0x18
	bl MOD04_022088CC
	movs r5, r0
	ldrne r0, [r8, #0x38]
	ldrne r0, [r0]
	strne r4, [r0, #0x10]
_0220875C:
	mov r0, r5
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end MOD04_022086F0

	arm_func_start MOD04_02208764
MOD04_02208764: ; 0x02208764
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r3, [r0]
	cmp r3, #0
	addne sp, sp, #4
	movne r0, #0
	ldmneia sp!, {pc}
	add r0, r0, #0x34
	mov r3, #0x18
	bl MOD04_022088CC
	add sp, sp, #4
	ldmfd sp!, {pc}
	arm_func_end MOD04_02208764

	arm_func_start MOD04_02208794
MOD04_02208794: ; 0x02208794
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #4
	str r0, [sp]
	mov sb, r2
	mov sl, r1
	ldr r2, [sp]
	mov r0, sl
	mov r1, sb
	add r2, r2, #0x46
	mov r3, #0x12
	bl MOD04_0220B604
	cmp r0, #0
	addlt sp, sp, #4
	movlt r0, #1
	ldmltia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r7, _02208850 ; =UNK04_0220BDF7
	mov fp, #0x13
	ldr r0, [sp]
	add r5, r0, #0x46
	mov r4, #0x12
_022087E4:
	ldr r0, [sp]
	add r6, r0, fp
	ldrsb r8, [r6, #0x44]
_022087F0:
	and r0, r8, #0xff
	bl MOD04_02208854
	mov r8, r0
	strb r8, [r6, #0x44]
	ldrsb r0, [r7]
	cmp r8, r0
	beq _02208834
	mov r0, sl
	mov r1, sb
	mov r2, r5
	mov r3, r4
	bl MOD04_0220B604
	cmp r0, #0
	bge _022087F0
	add sp, sp, #4
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02208834:
	sub fp, fp, #1
	cmp fp, #2
	sub r7, r7, #1
	bge _022087E4
	mov r0, #0
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02208850: .word UNK04_0220BDF7
	arm_func_end MOD04_02208794

	arm_func_start MOD04_02208854
MOD04_02208854: ; 0x02208854
	add r0, r0, #1
	and r0, r0, #0xff
	cmp r0, #0x7b
	moveq r0, #0x30
	beq _0220887C
	cmp r0, #0x5b
	moveq r0, #0x61
	beq _0220887C
	cmp r0, #0x3a
	moveq r0, #0x41
_0220887C:
	mov r0, r0, lsl #0x18
	mov r0, r0, asr #0x18
	bx lr
	arm_func_end MOD04_02208854

	arm_func_start MOD04_02208888
MOD04_02208888: ; 0x02208888
	ldr r3, [r0]
	cmp r3, #0
	beq _022088C4
	ldr r2, [r3]
	cmp r3, r2
	moveq r1, #0
	streq r1, [r0]
	beq _022088C4
	ldr r1, [r3, #4]
	str r1, [r2, #4]
	ldr r2, [r3]
	ldr r1, [r3, #4]
	str r2, [r1]
	ldr r1, [r3, #4]
	str r1, [r0]
_022088C4:
	mov r0, r3
	bx lr
	arm_func_end MOD04_02208888

	arm_func_start MOD04_022088CC
MOD04_022088CC: ; 0x022088CC
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	mov sb, r0
	ldr sl, [sb]
	mov r8, r1
	mov r7, r2
	mov r6, r3
	cmp sl, #0
	mov r5, #0
	beq _02208948
	ldr r1, [sl, #8]
	mov r0, r8
	mov r4, sl
	bl MOD04_0220B704
	cmp r0, #0
	beq _02208944
	ldr r4, [sl, #4]
	ldr r0, [sb]
	cmp r4, r0
	beq _02208948
_02208918:
	ldr r1, [r4, #8]
	mov r0, r8
	bl MOD04_0220B704
	cmp r0, #0
	moveq r5, #1
	beq _02208948
	ldr r4, [r4, #4]
	ldr r0, [sb]
	cmp r4, r0
	bne _02208918
	b _02208948
_02208944:
	mov r5, #1
_02208948:
	cmp r5, #0
	strne r7, [r4, #0xc]
	bne _022089D0
	ldr r1, _022089D8 ; =UNK04_02211924
	mov r0, r6
	ldr r2, [r1]
	mov r1, #4
	blx r2
	cmp r0, #0
	ldreq r0, _022089DC ; =UNK04_02211908
	moveq r1, #1
	streq r1, [r0]
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	str r8, [r0, #8]
	str r7, [r0, #0xc]
	mov r1, #0
	str r1, [r0, #0x10]
	str r1, [r0, #0x14]
	ldr r1, [sb]
	cmp r1, #0
	streq r0, [r0, #4]
	streq r0, [r0]
	streq r0, [sb]
	beq _022089D0
	ldr r1, [r1]
	str r1, [r0]
	ldr r1, [sb]
	str r1, [r0, #4]
	ldr r1, [sb]
	ldr r1, [r1]
	str r0, [r1, #4]
	ldr r1, [sb]
	str r0, [r1]
_022089D0:
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_022089D8: .word UNK04_02211924
_022089DC: .word UNK04_02211908
	arm_func_end MOD04_022088CC

	arm_func_start MOD04_022089E0
MOD04_022089E0: ; 0x022089E0
	ldr ip, _022089EC ; =MOD04_02208888
	ldr r0, _022089F0 ; =UNK04_02211910
	bx ip
	.align 2, 0
_022089EC: .word MOD04_02208888
_022089F0: .word UNK04_02211910
	arm_func_end MOD04_022089E0

	arm_func_start MOD04_022089F4
MOD04_022089F4: ; 0x022089F4
	stmdb sp!, {r4, lr}
	ldr r4, _02208A20 ; =UNK04_02211910
	ldr r0, [r4]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
_02208A08:
	ldr r0, [r0, #8]
	bl MOD04_02208A24
	ldr r0, [r4]
	cmp r0, #0
	bne _02208A08
	ldmia sp!, {r4, pc}
	.align 2, 0
_02208A20: .word UNK04_02211910
	arm_func_end MOD04_022089F4

	arm_func_start MOD04_02208A24
MOD04_02208A24: ; 0x02208A24
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	mov r5, #0
	bl MOD04_02208AD0
	movs r4, r0
	beq _02208ABC
	ldr r0, _02208AC8 ; =UNK04_02211910
	ldr r2, [r0]
	ldr r1, [r2]
	cmp r2, r1
	beq _02208A7C
	ldr r2, [r4, #4]
	ldr r1, [r4]
	str r2, [r1, #4]
	ldr r2, [r4]
	ldr r1, [r4, #4]
	str r2, [r1]
	ldr r1, [r0]
	cmp r1, r4
	ldreq r1, [r4, #4]
	streq r1, [r0]
	b _02208A84
_02208A7C:
	mov r1, r5
	str r1, [r0]
_02208A84:
	ldr r0, [r4, #0xc]
	ldr r7, [r0, #0x3c]
	ldr r6, [r0, #0x30]
	ldr r5, [r0, #0x2c]
	bl MOD04_02209338
	ldr r1, _02208ACC ; =UNK04_02211904
	mov r0, r4
	ldr r1, [r1]
	blx r1
	mov r1, r6
	mov r2, r5
	mov r0, #8
	blx r7
	mov r5, #1
_02208ABC:
	mov r0, r5
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_02208AC8: .word UNK04_02211910
_02208ACC: .word UNK04_02211904
	arm_func_end MOD04_02208A24

	arm_func_start MOD04_02208AD0
MOD04_02208AD0: ; 0x02208AD0
	ldr r1, _02208B24 ; =UNK04_02211910
	mov ip, #0
	ldr r3, [r1]
	cmp r3, #0
	beq _02208B1C
	ldr r1, [r3, #8]
	cmp r1, r0
	moveq ip, r3
	beq _02208B1C
	ldr r2, [r3, #4]
	cmp r2, r3
	beq _02208B1C
_02208B00:
	ldr r1, [r2, #8]
	cmp r1, r0
	moveq ip, r2
	beq _02208B1C
	ldr r2, [r2, #4]
	cmp r2, r3
	bne _02208B00
_02208B1C:
	mov r0, ip
	bx lr
	.align 2, 0
_02208B24: .word UNK04_02211910
	arm_func_end MOD04_02208AD0

	arm_func_start MOD04_02208B28
MOD04_02208B28: ; 0x02208B28
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	ldr r1, _02208BD8 ; =UNK04_02211924
	mov r4, r0
	ldr r2, [r1]
	mov r0, #0x14
	mov r1, #4
	mvn r5, #0
	blx r2
	cmp r0, #0
	beq _02208BCC
	ldr r1, _02208BDC ; =UNK04_02211910
	ldr r2, [r1]
	cmp r2, #0
	streq r0, [r0]
	streq r0, [r0, #4]
	streq r0, [r1]
	beq _02208B94
	ldr r2, [r2]
	str r2, [r0]
	ldr r2, [r1]
	str r2, [r0, #4]
	ldr r2, [r1]
	ldr r2, [r2]
	str r0, [r2, #4]
	ldr r1, [r1]
	str r0, [r1]
_02208B94:
	ldr r1, _02208BE0 ; =UNK04_0221190C
	mvn r2, #0
	ldr ip, [r1]
	ldr r3, [r1]
	add r3, r3, #1
	str r3, [r1]
	str ip, [r0, #8]
	str r4, [r0, #0xc]
	str r2, [r0, #0x10]
	ldr r2, [r1]
	ldr r5, [r0, #8]
	cmp r2, #0
	movlt r0, #0
	strlt r0, [r1]
_02208BCC:
	mov r0, r5
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_02208BD8: .word UNK04_02211924
_02208BDC: .word UNK04_02211910
_02208BE0: .word UNK04_0221190C
	arm_func_end MOD04_02208B28

	arm_func_start MOD04_02208BE4
MOD04_02208BE4: ; 0x02208BE4
	ldr ip, _02208BF8 ; =OS_SendMessage
	mov r1, #0
	ldr r0, _02208BFC ; =UNK04_02211944
	mov r2, r1
	bx ip
	.align 2, 0
_02208BF8: .word OS_SendMessage
_02208BFC: .word UNK04_02211944
	arm_func_end MOD04_02208BE4

	arm_func_start MOD04_02208C00
MOD04_02208C00: ; 0x02208C00
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r0, _02208C20 ; =UNK04_02211944
	add r1, sp, #0
	mov r2, #1
	bl OS_ReceiveMessage
	add sp, sp, #4
	ldmfd sp!, {pc}
	.align 2, 0
_02208C20: .word UNK04_02211944
	arm_func_end MOD04_02208C00

	arm_func_start MOD04_02208C24
MOD04_02208C24: ; 0x02208C24
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r0, _02208C4C ; =UNK04_02211918
	mov r1, #1
	str r1, [r0]
	bl MOD04_02208BE4
	ldr r0, _02208C50 ; =UNK04_02211964
	bl OS_JoinThread
	add sp, sp, #4
	ldmfd sp!, {pc}
	.align 2, 0
_02208C4C: .word UNK04_02211918
_02208C50: .word UNK04_02211964
	arm_func_end MOD04_02208C24

	arm_func_start MOD04_02208C54
MOD04_02208C54: ; 0x02208C54
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0xc
	mov r5, r0
	mov r4, r1
	bl OS_IsThreadAvailable
	cmp r0, #0
	addeq sp, sp, #0xc
	moveq r0, #0
	ldmeqia sp!, {r4, r5, pc}
	ldr r0, _02208CBC ; =UNK04_02211944
	ldr r1, _02208CC0 ; =UNK04_02211928
	mov r2, #1
	bl OS_InitMessageQueue
	mov r0, #0x2000
	str r0, [sp]
	ldr r0, _02208CC4 ; =UNK04_02211964
	ldr r1, _02208CC8 ; =MOD04_0220A044
	add r3, r4, #0x2000
	mov r2, #0
	str r5, [sp, #4]
	bl OS_CreateThread
	ldr r0, _02208CC4 ; =UNK04_02211964
	bl OS_WakeupThreadDirect
	mov r0, #1
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_02208CBC: .word UNK04_02211944
_02208CC0: .word UNK04_02211928
_02208CC4: .word UNK04_02211964
_02208CC8: .word MOD04_0220A044
	arm_func_end MOD04_02208C54

	arm_func_start MOD04_02208CCC
MOD04_02208CCC: ; 0x02208CCC
	ldr ip, _02208CD8 ; =OS_UnlockMutex
	ldr r0, _02208CDC ; =UNK04_0221192C
	bx ip
	.align 2, 0
_02208CD8: .word OS_UnlockMutex
_02208CDC: .word UNK04_0221192C
	arm_func_end MOD04_02208CCC

	arm_func_start MOD04_02208CE0
MOD04_02208CE0: ; 0x02208CE0
	ldr ip, _02208CEC ; =OS_LockMutex
	ldr r0, _02208CF0 ; =UNK04_0221192C
	bx ip
	.align 2, 0
_02208CEC: .word OS_LockMutex
_02208CF0: .word UNK04_0221192C
	arm_func_end MOD04_02208CE0

	arm_func_start MOD04_02208CF4
MOD04_02208CF4: ; 0x02208CF4
	bx lr
	arm_func_end MOD04_02208CF4

	arm_func_start MOD04_02208CF8
MOD04_02208CF8: ; 0x02208CF8
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r0, _02208D14 ; =UNK04_0221192C
	bl OS_InitMutex
	mov r0, #1
	add sp, sp, #4
	ldmfd sp!, {pc}
	.align 2, 0
_02208D14: .word UNK04_0221192C
	arm_func_end MOD04_02208CF8

	arm_func_start MOD04_02208D18
MOD04_02208D18: ; 0x02208D18
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	mov r8, r0
	ldr r4, [r8, #0x30]
	mov r6, r2
	mov r7, r1
	mov r0, r4
	mov r1, r6
	mov r5, r3
	bl MOD04_02208DB8
	cmp r0, #0
	addne sp, sp, #8
	ldrne r0, _02208D84 ; =0xFFFFFC15
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, [r4, #0xc]
	ldr r1, [sp, #0x20]
	sub r3, r0, r6
	str r1, [sp]
	ldr r2, [r4, #0x18]
	cmp r5, r3
	movle r3, r5
	mov r0, r8
	mov r1, r7
	add r2, r2, r6
	bl MOD04_02209DB4
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_02208D84: .word 0xFFFFFC15
	arm_func_end MOD04_02208D18

	arm_func_start MOD04_02208D88
MOD04_02208D88: ; 0x02208D88
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr ip, [r0, #0x30]
	mov lr, r2
	str r3, [sp]
	ldr r2, [ip, #0x18]
	ldr r3, [ip, #0xc]
	add r2, r2, lr
	sub r3, r3, lr
	bl MOD04_02209DB4
	add sp, sp, #4
	ldmfd sp!, {pc}
	arm_func_end MOD04_02208D88

	arm_func_start MOD04_02208DB8
MOD04_02208DB8: ; 0x02208DB8
	ldr r0, [r0, #0xc]
	cmp r0, r1
	movls r0, #1
	movhi r0, #0
	bx lr
	arm_func_end MOD04_02208DB8

	arm_func_start MOD04_02208DCC
MOD04_02208DCC: ; 0x02208DCC
	stmdb sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #4
	mov r4, r0
	mov r7, r2
	mov r6, r3
	ldr r0, [r4]
	add r2, r7, r6
	mov r8, r1
	cmp r2, r0
	bgt _02208EB4
	cmp r6, #0
	beq _02208EA8
	cmp r7, #0x400
	bge _02208E30
	rsb r5, r7, #0x400
	cmp r6, r5
	movle r5, r6
	add r1, r4, #0x20
	mov r0, r8
	mov r2, r5
	add r1, r1, r7
	bl MOD04_memcpy
	add r7, r7, r5
	sub r6, r6, r5
	add r8, r8, r5
_02208E30:
	cmp r6, #0
	beq _02208EA8
	sub r2, r7, #0x400
	ldr r0, _02208EC0 ; =0x000001FF
	movs r1, r2, asr #9
	and r7, r2, r0
	sub r0, r1, #1
	ldr r5, [r4, #0x1c]
	beq _02208E64
_02208E54:
	cmp r0, #0
	sub r0, r0, #1
	ldr r5, [r5]
	bne _02208E54
_02208E64:
	cmp r6, #0
	beq _02208EA8
	ldr sb, _02208EC0 ; =0x000001FF
_02208E70:
	rsb r4, r7, #0x200
	cmp r6, r4
	movle r4, r6
	add r1, r5, #4
	mov r0, r8
	mov r2, r4
	add r1, r1, r7
	bl MOD04_memcpy
	add r0, r7, r4
	and r7, r0, sb
	subs r6, r6, r4
	add r8, r8, r4
	ldr r5, [r5]
	bne _02208E70
_02208EA8:
	add sp, sp, #4
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
_02208EB4:
	mov r0, #0
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_02208EC0: .word 0x000001FF
	arm_func_end MOD04_02208DCC

	arm_func_start MOD04_02208EC4
MOD04_02208EC4: ; 0x02208EC4
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xc
	mov sb, r1
	mov r4, r2
	mov sl, r0
	mov r8, r3
	cmp sb, r4
	ldr r7, [sp, #0x30]
	bge _02208F98
	add r2, sp, #0
	add r3, sp, #4
	bl MOD04_02209158
	add r1, sp, #0
	add r2, sp, #4
	mov r0, sl
	bl MOD04_022090E4
	sub r6, r4, #1
	mov r4, #1
	add fp, sp, #0
	mov r5, #0
	b _02208F5C
_02208F18:
	cmp r1, #0
	beq _02208F38
	cmp r1, #0x20
	beq _02208F38
	cmp r1, r7
	beq _02208F38
	cmp sb, r6
	bne _02208F44
_02208F38:
	add sp, sp, #0xc
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02208F44:
	mov r0, sl
	mov r1, fp
	add r2, sp, #4
	bl MOD04_022090E4
	add sb, sb, #1
	add r8, r8, #1
_02208F5C:
	ldrsb r1, [r8]
	mov r2, r5
	cmp r1, #0x41
	blt _02208F74
	cmp r1, #0x5a
	movle r2, r4
_02208F74:
	cmp r2, #0
	addne r2, r1, #0x20
	moveq r2, r1
	cmp r0, #0x41
	blt _02208F90
	cmp r0, #0x5a
	addle r0, r0, #0x20
_02208F90:
	cmp r0, r2
	beq _02208F18
_02208F98:
	mvn r0, #0
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end MOD04_02208EC4

	arm_func_start MOD04_02208FA4
MOD04_02208FA4: ; 0x02208FA4
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	mov r7, r1
	mov r6, r2
	mov r8, r0
	cmp r7, r6
	bge _02209008
	add r2, sp, #0
	add r3, sp, #4
	bl MOD04_02209158
	cmp r7, r6
	bge _02209008
	add r5, sp, #0
	add r4, sp, #4
_02208FDC:
	mov r0, r8
	mov r1, r5
	mov r2, r4
	bl MOD04_022090E4
	cmp r0, #0x20
	addne sp, sp, #8
	movne r0, r7
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
	add r7, r7, #1
	cmp r7, r6
	blt _02208FDC
_02209008:
	mvn r0, #0
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end MOD04_02208FA4

	arm_func_start MOD04_02209014
MOD04_02209014: ; 0x02209014
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xc
	movs r7, r3
	mov sl, r0
	mvnne r0, #0
	mov sb, r1
	mov r8, r2
	strne r0, [r7]
	mov r6, #0
	cmp sb, r8
	bge _022090D8
	add r2, sp, #0
	add r3, sp, #4
	mov r0, sl
	mov r1, sb
	bl MOD04_02209158
	cmp sb, r8
	bge _022090D8
	add fp, sp, #0
	mov r4, #0
	mov r5, #1
_02209068:
	mov r0, sl
	mov r1, fp
	add r2, sp, #4
	bl MOD04_022090E4
	cmp r0, #0x3a
	bne _02209094
	cmp r7, #0
	beq _02209094
	ldr r1, [r7]
	cmp r1, #0
	strlt sb, [r7]
_02209094:
	cmp r6, #0
	bne _022090A8
	cmp r0, #0xd
	moveq r6, r5
	b _022090CC
_022090A8:
	cmp r0, #0xa
	bne _022090C8
	sub r0, r8, #1
	cmp sb, r0
	moveq r0, #0
	add sp, sp, #0xc
	addne r0, sb, #1
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022090C8:
	mov r6, r4
_022090CC:
	add sb, sb, #1
	cmp sb, r8
	blt _02209068
_022090D8:
	mvn r0, #0
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end MOD04_02209014

	arm_func_start MOD04_022090E4
MOD04_022090E4: ; 0x022090E4
	ldr r3, [r1]
	cmp r3, #0
	bne _02209120
	ldr r3, [r2]
	cmp r3, #0x400
	addlt r1, r3, #1
	strlt r1, [r2]
	addlt r0, r0, r3
	ldrltsb r0, [r0, #0x20]
	bxlt lr
	mov r3, #0
	str r3, [r2]
	ldr r0, [r0, #0x1c]
	str r0, [r1]
	b _0220913C
_02209120:
	ldr r0, [r2]
	cmp r0, #0x200
	moveq r0, #0
	streq r0, [r2]
	ldreq r0, [r1]
	ldreq r0, [r0]
	streq r0, [r1]
_0220913C:
	ldr r3, [r2]
	add r0, r3, #1
	str r0, [r2]
	ldr r0, [r1]
	add r0, r0, r3
	ldrsb r0, [r0, #4]
	bx lr
	arm_func_end MOD04_022090E4

	arm_func_start MOD04_02209158
MOD04_02209158: ; 0x02209158
	stmdb sp!, {lr}
	sub sp, sp, #4
	cmp r1, #0x400
	movlt r0, #0
	strlt r0, [r2]
	strlt r1, [r3]
	addlt sp, sp, #4
	ldmltia sp!, {pc}
	sub ip, r1, #0x400
	movs ip, ip, asr #9
	sub lr, ip, #1
	ldr ip, [r0, #0x1c]
	beq _0220919C
_0220918C:
	cmp lr, #0
	sub lr, lr, #1
	ldr ip, [ip]
	bne _0220918C
_0220919C:
	ldr r0, _022091B8 ; =0x000001FF
	sub r1, r1, #0x400
	str ip, [r2]
	and r0, r1, r0
	str r0, [r3]
	add sp, sp, #4
	ldmfd sp!, {pc}
	.align 2, 0
_022091B8: .word 0x000001FF
	arm_func_end MOD04_02209158

	arm_func_start MOD04_022091BC
MOD04_022091BC: ; 0x022091BC
	stmdb sp!, {lr}
	sub sp, sp, #4
	bl MOD04_02208CE0
	ldr r0, _02209214 ; =UNK04_02211914
	ldr r2, [r0]
	cmp r2, #0
	beq _02209204
	ldr r1, [r2, #0xc]
	ldr r1, [r1, #4]
	cmp r1, #0
	bne _02209204
	ldr r1, [r2, #0xc]
	mov r2, #1
	str r2, [r1, #4]
	ldr r1, [r0]
	ldr r0, [r1, #0xc]
	ldr r1, [r1, #0x10]
	bl MOD04_02209D40
_02209204:
	bl MOD04_022089F4
	bl MOD04_02208CCC
	add sp, sp, #4
	ldmfd sp!, {pc}
	.align 2, 0
_02209214: .word UNK04_02211914
	arm_func_end MOD04_022091BC

	arm_func_start MOD04_02209218
MOD04_02209218: ; 0x02209218
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r4, r0
	mov r5, #0
	bl MOD04_02208CE0
	ldr r0, _0220929C ; =UNK04_02211914
	ldr r2, [r0]
	cmp r2, #0
	beq _02209278
	ldr r1, [r2, #8]
	cmp r1, r4
	bne _02209278
	ldr r1, [r2, #0xc]
	ldr r1, [r1, #4]
	cmp r1, #0
	bne _02209278
	ldr r1, [r2, #0xc]
	mov r2, #1
	str r2, [r1, #4]
	ldr r1, [r0]
	ldr r0, [r1, #0xc]
	ldr r1, [r1, #0x10]
	bl MOD04_02209D40
	mov r5, #1
_02209278:
	cmp r5, #0
	bne _0220928C
	mov r0, r4
	bl MOD04_02208A24
	mov r5, r0
_0220928C:
	bl MOD04_02208CCC
	mov r0, r5
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_0220929C: .word UNK04_02211914
	arm_func_end MOD04_02209218

	arm_func_start MOD04_022092A0
MOD04_022092A0: ; 0x022092A0
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	ldr r0, [r5]
	cmp r0, #0
	ldrne r0, _02209334 ; =UNK04_02211908
	movne r1, #0xb
	strne r1, [r0]
	addne sp, sp, #4
	mvnne r0, #0
	ldmneia sp!, {r4, r5, pc}
	ldr r0, [r5, #0x40]
	cmp r0, #1
	bne _022092F8
	ldr r0, [r5, #0x38]
	cmp r0, #0
	ldreq r0, _02209334 ; =UNK04_02211908
	moveq r1, #0xb
	streq r1, [r0]
	addeq sp, sp, #4
	mvneq r0, #0
	ldmeqia sp!, {r4, r5, pc}
_022092F8:
	bl MOD04_02208CE0
	mov r0, r5
	bl MOD04_02208B28
	movs r4, r0
	ldrmi r0, _02209334 ; =UNK04_02211908
	movmi r1, #1
	strmi r1, [r0]
	bmi _02209324
	mov r0, #1
	str r0, [r5]
	bl MOD04_02208BE4
_02209324:
	bl MOD04_02208CCC
	mov r0, r4
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_02209334: .word UNK04_02211908
	arm_func_end MOD04_022092A0

	arm_func_start MOD04_02209338
MOD04_02209338: ; 0x02209338
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x34]
	bl MOD04_022093B0
	ldr r0, [r4, #0x38]
	bl MOD04_022093B0
	ldr r0, [r4, #0x20]
	cmp r0, #0
	beq _02209384
	ldr r0, [r0, #0x800]
	cmp r0, #0
	beq _02209374
	ldr r1, _022093AC ; =UNK04_02211904
	ldr r1, [r1]
	blx r1
_02209374:
	ldr r1, _022093AC ; =UNK04_02211904
	ldr r0, [r4, #0x20]
	ldr r1, [r1]
	blx r1
_02209384:
	ldr r1, _022093AC ; =UNK04_02211904
	ldr r0, [r4, #0x24]
	ldr r1, [r1]
	blx r1
	ldr r1, _022093AC ; =UNK04_02211904
	mov r0, r4
	ldr r1, [r1]
	blx r1
	mov r0, #1
	ldmia sp!, {r4, pc}
	.align 2, 0
_022093AC: .word UNK04_02211904
	arm_func_end MOD04_02209338

	arm_func_start MOD04_022093B0
MOD04_022093B0: ; 0x022093B0
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	movs r7, r0
	addeq sp, sp, #4
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	ldr r4, _0220940C ; =UNK04_02211904
	mov r5, #0
_022093CC:
	ldr r0, [r7]
	cmp r7, r0
	beq _022093EC
	ldr r6, [r0]
	ldr r1, [r4]
	blx r1
	str r6, [r7]
	b _022093FC
_022093EC:
	ldr r1, [r4]
	mov r0, r7
	blx r1
	mov r7, r5
_022093FC:
	cmp r7, #0
	bne _022093CC
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_0220940C: .word UNK04_02211904
	arm_func_end MOD04_022093B0

	arm_func_start MOD04_02209410
MOD04_02209410: ; 0x02209410
	stmdb sp!, {r4, lr}
	ldr r1, _02209434 ; =UNK04_02211904
	mov r4, r0
	ldr r0, [r4, #0x30]
	ldr r1, [r1]
	blx r1
	mov r0, r4
	bl MOD04_02209338
	ldmia sp!, {r4, pc}
	.align 2, 0
_02209434: .word UNK04_02211904
	arm_func_end MOD04_02209410

	arm_func_start MOD04_02209438
MOD04_02209438: ; 0x02209438
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xc
	mov fp, r0
	str r1, [sp]
	mov r5, r2
	mov r4, r3
	movs r0, r1
	mov r7, #0
	beq _02209478
	cmp r0, #1
	beq _02209478
	cmp r0, #2
	ldrne r0, _022099A0 ; =UNK04_02211908
	movne r1, #0xb
	strne r1, [r0]
	bne _02209918
_02209478:
	cmp r4, #0
	ldreq r0, _022099A0 ; =UNK04_02211908
	moveq r1, #0xb
	streq r1, [r0]
	beq _02209918
	ldr r1, _022099A4 ; =UNK04_02211924
	mov r0, #0x58
	ldr r2, [r1]
	mov r1, #4
	blx r2
	movs r7, r0
	ldreq r0, _022099A0 ; =UNK04_02211908
	moveq r1, #1
	streq r1, [r0]
	beq _02209918
	mov r1, #0x58
	bl MOD04_memclear
	ldr r1, _022099A4 ; =UNK04_02211924
	mov r0, #0x420
	ldr r2, [r1]
	mov r1, #4
	blx r2
	str r0, [r7, #0x30]
	ldr r0, [r7, #0x30]
	cmp r0, #0
	ldreq r0, _022099A0 ; =UNK04_02211908
	moveq r1, #1
	streq r1, [r0]
	beq _02209918
	mov r1, #0x420
	bl MOD04_memclear
	ldr r1, [r7, #0x30]
	mov r0, fp
	str r5, [r1, #0x18]
	ldr r1, [r7, #0x30]
	str r4, [r1, #0xc]
	bl MOD04_strlen
	mov r4, r0
	cmp r4, #7
	ldrle r0, _022099A0 ; =UNK04_02211908
	movle r1, #4
	strle r1, [r0]
	ble _02209918
	mov sl, #7
	mov r3, #0x50
	ldr r1, _022099A8 ; =UNK04_0220FA78
	mov r0, fp
	mov r2, sl
	str r3, [r7, #0x28]
	bl MOD04_strnicmp
	cmp r0, #0
	beq _02209580
	ldr r1, _022099AC ; =UNK04_0220FA80
	mov r0, fp
	mov r2, #8
	bl MOD04_strnicmp
	cmp r0, #0
	ldrne r0, _022099A0 ; =UNK04_02211908
	movne r1, #4
	strne r1, [r0]
	bne _02209918
	mov r1, #1
	ldr r0, _022099B0 ; =0x000001BB
	str r1, [r7, #8]
	str r0, [r7, #0x28]
	mov sl, #8
_02209580:
	sub r0, r4, sl
	cmp r0, #0
	str r0, [sp, #4]
	ldrle r0, _022099A0 ; =UNK04_02211908
	movle r1, #4
	add r8, fp, sl
	strle r1, [r0]
	ble _02209918
	mov sb, #0
	mov r6, sb
	mov r5, sb
	mov r4, #2
	b _02209614
_022095B4:
	cmp r5, #2
	subeq r5, r5, #1
	beq _02209610
	cmp r5, #1
	bne _02209604
	sub r0, sb, #1
	mov r1, r4
	add r0, r8, r0
	bl MOD04_urltostr
	mov r0, r0, lsl #0x18
	movs r0, r0, asr #0x18
	ldrmi r0, _022099A0 ; =UNK04_02211908
	movmi r1, #4
	sub r5, r5, #1
	strmi r1, [r0]
	bmi _02209918
	cmp r0, #0x2f
	bne _02209610
	sub r6, r6, #1
	b _0220962C
_02209604:
	cmp r0, #0x25
	moveq r5, r4
	addeq r6, r6, #1
_02209610:
	add sb, sb, #1
_02209614:
	ldr r0, [sp, #4]
	cmp sb, r0
	bge _0220962C
	ldrsb r0, [r8, sb]
	cmp r0, #0x2f
	bne _022095B4
_0220962C:
	cmp r5, #0
	ldrne r0, _022099A0 ; =UNK04_02211908
	movne r1, #4
	strne r1, [r0]
	bne _02209918
	ldr r0, [sp, #4]
	ldr r1, _022099A4 ; =UNK04_02211924
	add r0, sl, r0
	sub r0, r0, r6, lsl #1
	ldr r2, [r1]
	add r0, r0, #1
	mov r1, #4
	blx r2
	str r0, [r7, #0x24]
	ldr r0, [r7, #0x24]
	cmp r0, #0
	ldreq r0, _022099A0 ; =UNK04_02211908
	moveq r1, #1
	streq r1, [r0]
	beq _02209918
	mov r1, fp
	mov r2, sl
	bl MOD04_memcpy
	mov r6, #0
	ldr r0, [sp, #4]
	mov sb, r6
	mov r5, r6
	str r6, [sp, #8]
	cmp r0, #0
	ble _0220973C
	mov r4, #1
	mov fp, #2
_022096AC:
	cmp r5, #2
	subeq r5, r5, #1
	beq _0220972C
	cmp r5, #1
	bne _022096F8
	sub r0, r6, #1
	mov r1, fp
	add r0, r8, r0
	bl MOD04_urltostr
	mov r0, r0, lsl #0x18
	mov r3, r0, asr #0x18
	add r1, sl, sb
	cmp r3, #0x2f
	ldr r2, [r7, #0x24]
	sub r0, r1, #1
	strb r3, [r2, r0]
	sub r5, r5, #1
	streq r4, [sp, #8]
	b _0220972C
_022096F8:
	ldrsb r2, [r8, r6]
	cmp r2, #0x2f
	streq r4, [sp, #8]
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _0220971C
	cmp r2, #0x25
	moveq r5, fp
	beq _02209728
_0220971C:
	ldr r1, [r7, #0x24]
	add r0, sl, sb
	strb r2, [r1, r0]
_02209728:
	add sb, sb, #1
_0220972C:
	ldr r0, [sp, #4]
	add r6, r6, #1
	cmp r6, r0
	blt _022096AC
_0220973C:
	ldr r1, [r7, #0x24]
	add r0, sl, sb
	mov r2, #0
	strb r2, [r1, r0]
	ldr r0, [r7, #0x24]
	cmp sb, #0
	add r1, r0, sl
	ble _02209788
_0220975C:
	ldrsb r0, [r1, r2]
	cmp r0, #0x2f
	beq _02209770
	cmp r0, #0x3a
	bne _0220977C
_02209770:
	add r0, r2, sl
	str r0, [r7, #0xc]
	b _02209788
_0220977C:
	add r2, r2, #1
	cmp r2, sb
	blt _0220975C
_02209788:
	cmp r2, sb
	addeq r0, r2, sl
	streq r0, [r7, #0xc]
	ldreq r0, [r7, #0xc]
	streq r0, [r7, #0x10]
	beq _02209840
	ldrsb r0, [r1, r2]
	cmp r0, #0x2f
	ldreq r0, [r7, #0xc]
	streq r0, [r7, #0x10]
	beq _02209840
	cmp r0, #0x3a
	bne _02209840
	cmp r2, sb
	bge _022097E4
_022097C4:
	ldrsb r0, [r1, r2]
	cmp r0, #0x2f
	addeq r0, r2, sl
	streq r0, [r7, #0x10]
	beq _022097E4
	add r2, r2, #1
	cmp r2, sb
	blt _022097C4
_022097E4:
	cmp r2, sb
	addeq r0, r2, sl
	streq r0, [r7, #0x10]
	beq _02209840
	ldr r1, [r7, #0xc]
	ldr r0, [r7, #0x24]
	add r2, r1, #1
	ldr r1, [r7, #0x10]
	add r0, r0, r2
	sub r1, r1, r2
	bl MOD04_0220B688
	cmp r0, #0
	ldrlt r0, [r7, #0x28]
	blt _02209834
	ldr r1, _022099B4 ; =0x0000FFFF
	cmp r0, r1
	ldrgt r0, _022099A0 ; =UNK04_02211908
	movgt r1, #4
	strgt r1, [r0]
	bgt _02209918
_02209834:
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	str r0, [r7, #0x28]
_02209840:
	ldr r0, [r7, #8]
	cmp r0, #0
	beq _022098E4
	ldr r0, _022099A4 ; =UNK04_02211924
	ldr r3, [r7, #0xc]
	ldr r2, [r0]
	mov r0, #0x830
	mov r1, #4
	sub r4, r3, sl
	blx r2
	str r0, [r7, #0x20]
	ldr r0, [r7, #0x20]
	cmp r0, #0
	ldreq r0, _022099A0 ; =UNK04_02211908
	moveq r1, #1
	streq r1, [r0]
	beq _02209918
	mov r1, #0x830
	bl MOD04_memclear
	ldr r1, _022099A4 ; =UNK04_02211924
	add r0, r4, #1
	ldr r2, [r1]
	mov r1, #4
	blx r2
	ldr r1, [r7, #0x20]
	str r0, [r1, #0x800]
	ldr r0, [r7, #0x20]
	ldr r0, [r0, #0x800]
	cmp r0, #0
	ldreq r0, _022099A0 ; =UNK04_02211908
	moveq r1, #1
	streq r1, [r0]
	beq _02209918
	ldr r1, [r7, #0x24]
	mov r2, r4
	add r1, r1, sl
	bl MOD04_memcpy
	ldr r0, [r7, #0x20]
	mov r1, #0
	ldr r0, [r0, #0x800]
	strb r1, [r0, r4]
_022098E4:
	ldr r1, _022099B8 ; =UNK04_0220BDE4
	add r0, r7, #0x44
	mov r2, #0x14
	bl MOD04_memcpy
	ldr r0, [sp, #0x34]
	ldr r1, [sp, #0x30]
	str r0, [r7, #0x2c]
	ldr r0, [sp]
	add sp, sp, #0xc
	str r0, [r7, #0x40]
	mov r0, r7
	str r1, [r7, #0x3c]
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02209918:
	cmp r7, #0
	beq _02209994
	ldr r0, [r7, #0x20]
	cmp r0, #0
	beq _02209954
	ldr r0, [r0, #0x800]
	cmp r0, #0
	beq _02209944
	ldr r1, _022099BC ; =UNK04_02211904
	ldr r1, [r1]
	blx r1
_02209944:
	ldr r1, _022099BC ; =UNK04_02211904
	ldr r0, [r7, #0x20]
	ldr r1, [r1]
	blx r1
_02209954:
	ldr r0, [r7, #0x24]
	cmp r0, #0
	beq _0220996C
	ldr r1, _022099BC ; =UNK04_02211904
	ldr r1, [r1]
	blx r1
_0220996C:
	ldr r0, [r7, #0x30]
	cmp r0, #0
	beq _02209984
	ldr r1, _022099BC ; =UNK04_02211904
	ldr r1, [r1]
	blx r1
_02209984:
	ldr r1, _022099BC ; =UNK04_02211904
	mov r0, r7
	ldr r1, [r1]
	blx r1
_02209994:
	mov r0, #0
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022099A0: .word UNK04_02211908
_022099A4: .word UNK04_02211924
_022099A8: .word UNK04_0220FA78
_022099AC: .word UNK04_0220FA80
_022099B0: .word 0x000001BB
_022099B4: .word 0x0000FFFF
_022099B8: .word UNK04_0220BDE4
_022099BC: .word UNK04_02211904
	arm_func_end MOD04_02209438

	arm_func_start MOD04_022099C0
MOD04_022099C0: ; 0x022099C0
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	mov r5, r0
	ldr r2, [r5, #0x24]
	ldr r1, [r5, #0xc]
	mov r0, #0
	ldrsb r4, [r2, r1]
	strb r0, [r2, r1]
	ldr r0, [r5, #8]
	add r1, sp, #0
	cmp r0, #0
	movne r2, #8
	ldr r0, [r5, #0x24]
	moveq r2, #7
	add r6, r0, r2
	mov r0, r6
	bl SOC_InetAtoN
	cmp r0, #0
	ldrne r0, [sp]
	bne _02209A54
	mov r0, r6
	bl SOCL_Resolve
	cmp r0, #0
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r2, r0, lsr #0x18
	mov r1, r0, lsr #8
	mov r3, r0, lsl #8
	mov ip, r0, lsl #0x18
	and r2, r2, #0xff
	and r0, r1, #0xff00
	and r1, r3, #0xff0000
	orr r0, r2, r0
	and r2, ip, #0xff000000
	orr r0, r1, r0
	orr r0, r2, r0
_02209A54:
	ldr r2, [r5, #0x24]
	ldr r1, [r5, #0xc]
	strb r4, [r2, r1]
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end MOD04_022099C0

	arm_func_start MOD04_02209A68
MOD04_02209A68: ; 0x02209A68
	ldr r2, [r0, #8]
	cmp r2, #0
	beq _02209A80
	ldr r2, [r0, #4]
	cmp r2, #0
	bne _02209A88
_02209A80:
	mvn r0, #0
	bx lr
_02209A88:
	ldr r2, [r0, #0x18]
	str r2, [r1]
	ldr r0, [r0, #4]
	bx lr
	arm_func_end MOD04_02209A68

	arm_func_start MOD04_02209A98
MOD04_02209A98: ; 0x02209A98
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	mov r7, r0
	ldr r0, [r7, #8]
	mov r6, r1
	cmp r0, #0
	mov r5, r2
	addeq sp, sp, #4
	mvneq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	ldr r0, [r7, #0x14]
	cmp r0, #0
	beq _02209AE0
	ldr r1, _02209BAC ; =UNK04_02211904
	ldr r1, [r1]
	blx r1
	mov r0, #0
	str r0, [r7, #0x14]
_02209AE0:
	add r2, sp, #0
	mov r0, r7
	mov r1, r6
	bl MOD04_02209BB8
	movs r4, r0
	bmi _02209B44
	ldr r1, _02209BB0 ; =UNK04_02211924
	add r0, r4, #1
	ldr r2, [r1]
	mov r1, #4
	blx r2
	str r0, [r7, #0x14]
	ldr r0, [r7, #0x14]
	mov r1, #0
	strb r1, [r0, r4]
	ldr r1, [r7, #0x14]
	ldr r2, [sp]
	mov r0, r7
	mov r3, r4
	bl MOD04_02208DCC
	ldr r1, [r7, #0x14]
	add sp, sp, #4
	mov r0, r4
	str r1, [r5]
	ldmia sp!, {r4, r5, r6, r7, pc}
_02209B44:
	ldr r0, _02209BB4 ; =UNK04_0220FA8C
	mov r1, r6
	bl MOD04_strcmp
	cmp r0, #0
	addne sp, sp, #4
	mvnne r0, #0
	ldmneia sp!, {r4, r5, r6, r7, pc}
	ldr r1, _02209BB0 ; =UNK04_02211924
	mov r0, #4
	ldr r2, [r1]
	mov r1, r0
	blx r2
	str r0, [r7, #0x14]
	ldr r0, [r7, #0x14]
	mov r1, #0
	strb r1, [r0, #3]
	ldr r1, [r7, #0x14]
	mov r0, r7
	mov r2, #9
	mov r3, #3
	bl MOD04_02208DCC
	ldr r1, [r7, #0x14]
	mov r0, #3
	str r1, [r5]
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_02209BAC: .word UNK04_02211904
_02209BB0: .word UNK04_02211924
_02209BB4: .word UNK04_0220FA8C
	arm_func_end MOD04_02209A98

	arm_func_start MOD04_02209BB8
MOD04_02209BB8: ; 0x02209BB8
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #8
	mov r5, r0
	mov r4, r2
	mov sl, r1
	ldr r2, [r5]
	add r3, sp, #4
	mov r1, #0xc
	bl MOD04_02209014
	mov sb, r0
	cmp sb, #0
	ble _02209CB8
	add r7, sp, #4
	mov r6, #0
_02209BF0:
	ldr r2, [r5]
	mov r0, r5
	mov r1, sb
	mov r3, r7
	bl MOD04_02209014
	ldr r2, [sp, #4]
	mov r8, r0
	cmp r2, #0
	ble _02209CAC
	mov r0, r5
	mov r1, sb
	mov r3, sl
	str r6, [sp]
	bl MOD04_02208EC4
	cmp r0, #0
	bne _02209CAC
	ldr r1, [sp, #4]
	ldr r0, [r5]
	add r1, r1, #1
	cmp r1, r0
	bge _02209CA0
	ldr r2, [r5]
	mov r0, r5
	mov r3, #0
	bl MOD04_02209014
	cmp r0, #0
	ldrle r6, [r5]
	ble _02209C74
	cmp r0, #2
	addlt sp, sp, #8
	mvnlt r0, #0
	ldmltia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	sub r6, r0, #2
_02209C74:
	ldr r1, [sp, #4]
	mov r0, r5
	mov r2, r6
	add r1, r1, #1
	bl MOD04_02208FA4
	cmp r0, #0
	movlt r0, r6
	str r0, [r4]
	add sp, sp, #8
	sub r0, r6, r0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_02209CA0:
	add sp, sp, #8
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_02209CAC:
	mov sb, r8
	cmp r8, #0
	bgt _02209BF0
_02209CB8:
	mvn r0, #0
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	arm_func_end MOD04_02209BB8

	arm_func_start MOD04_02209CC4
MOD04_02209CC4: ; 0x02209CC4
	stmdb sp!, {r4, r5, r6, lr}
	mov r4, r0
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _02209CF8
	ldr r5, _02209D3C ; =UNK04_02211904
_02209CDC:
	ldr r6, [r0]
	ldr r1, [r5]
	blx r1
	str r6, [r4, #0x1c]
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	bne _02209CDC
_02209CF8:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _02209D10
	ldr r1, _02209D3C ; =UNK04_02211904
	ldr r1, [r1]
	blx r1
_02209D10:
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _02209D28
	ldr r1, _02209D3C ; =UNK04_02211904
	ldr r1, [r1]
	blx r1
_02209D28:
	ldr r1, _02209D3C ; =UNK04_02211904
	mov r0, r4
	ldr r1, [r1]
	blx r1
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_02209D3C: .word UNK04_02211904
	arm_func_end MOD04_02209CC4

	arm_func_start MOD04_02209D40
MOD04_02209D40: ; 0x02209D40
	stmdb sp!, {lr}
	sub sp, sp, #4
	cmp r1, #0
	addlt sp, sp, #4
	ldmltia sp!, {pc}
	mov r0, r1
	mov r1, #2
	bl SOC_Shutdown
	add sp, sp, #4
	ldmfd sp!, {pc}
	arm_func_end MOD04_02209D40

	arm_func_start MOD04_02209D68
MOD04_02209D68: ; 0x02209D68
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r0, r1
	mov r1, r2
	mov r2, r3
	ldr r3, [sp, #8]
	bl SOC_Send
	cmp r0, #0
	ldmgeia sp!, {r4, pc}
	ldr r1, [r4, #4]
	cmp r1, #0
	ldrne r0, _02209DB0 ; =0xFFFFFC16
	ldmneia sp!, {r4, pc}
	mvn r1, #0x37
	cmp r0, r1
	moveq r0, #0
	mvnne r0, #0x3e8
	ldmia sp!, {r4, pc}
	.align 2, 0
_02209DB0: .word 0xFFFFFC16
	arm_func_end MOD04_02209D68

	arm_func_start MOD04_02209DB4
MOD04_02209DB4: ; 0x02209DB4
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r0, r1
	mov r1, r2
	mov r2, r3
	ldr r3, [sp, #8]
	bl SOC_Read
	cmp r0, #0
	ldmgeia sp!, {r4, pc}
	ldr r1, [r4, #4]
	cmp r1, #0
	ldrne r0, _02209DFC ; =0xFFFFFC16
	ldmneia sp!, {r4, pc}
	mvn r1, #0x37
	cmp r0, r1
	moveq r0, #0
	mvnne r0, #0x3e8
	ldmia sp!, {r4, pc}
	.align 2, 0
_02209DFC: .word 0xFFFFFC16
	arm_func_end MOD04_02209DB4

	arm_func_start MOD04_02209E00
MOD04_02209E00: ; 0x02209E00
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0xc
	mov r3, r3, lsl #0x10
	mov r3, r3, lsr #0x10
	mov ip, r3, asr #8
	mov r4, r0
	mov r5, #8
	mov lr, #2
	mov r3, r3, lsl #8
	mov r0, r1
	and ip, ip, #0xff
	and r1, r3, #0xff00
	orr r3, ip, r1
	add r1, sp, #0
	strb r5, [sp]
	strb lr, [sp, #1]
	strh r3, [sp, #2]
	str r2, [sp, #4]
	bl SOC_Connect
	cmp r0, #0
	bge _02209E6C
	ldr r0, [r4, #4]
	add sp, sp, #0xc
	cmp r0, #0
	ldrne r0, _02209E78 ; =0xFFFFFC16
	mvneq r0, #0x3e8
	ldmia sp!, {r4, r5, pc}
_02209E6C:
	mov r0, #0
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_02209E78: .word 0xFFFFFC16
	arm_func_end MOD04_02209E00

	arm_func_start MOD04_02209E7C
MOD04_02209E7C: ; 0x02209E7C
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r1
	mov r0, r8
	bl SOC_Close
	cmp r0, #0
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
	mov r7, #0
	mov r6, #0x1f4
	ldr r4, _02209ED0 ; =0x00002710
	mvn r5, #0x19
	b _02209EB4
_02209EA8:
	mov r0, r6
	bl OS_Sleep
	add r7, r7, #0x1f4
_02209EB4:
	mov r0, r8
	bl SOC_Close
	cmp r0, r5
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
	cmp r7, r4
	ble _02209EA8
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_02209ED0: .word 0x00002710
	arm_func_end MOD04_02209E7C

	arm_func_start MOD04_02209ED4
MOD04_02209ED4: ; 0x02209ED4
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	mov r0, #2
	mov r1, #1
	mov r2, #0
	bl SOC_Socket
	movs r4, r0
	bmi _02209F4C
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _02209F4C
	bl MOD04_02209F5C
	ldr r1, [r5, #0x1c]
	ldr r0, [r5, #0x20]
	ldr r2, _02209F58 ; =MOD04_02209F84
	str r1, [r0, #0x814]
	ldr r3, [r5, #0x18]
	ldr r1, [r5, #0x20]
	mov r0, r4
	str r3, [r1, #0x818]
	ldr r1, [r5, #0x20]
	str r2, [r1, #0x810]
	ldr r1, [r5, #0x20]
	bl SOCL_EnableSsl
	cmp r0, #0
	bge _02209F4C
	mov r0, r4
	bl SOC_Close
	mvn r4, #0
_02209F4C:
	mov r0, r4
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_02209F58: .word MOD04_02209F84
	arm_func_end MOD04_02209ED4

	arm_func_start MOD04_02209F5C
MOD04_02209F5C: ; 0x02209F5C
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r0, _02209F80 ; =UNK04_02211A24
	bl OS_GetLowEntropyData
	ldr r0, _02209F80 ; =UNK04_02211A24
	mov r1, #0x20
	bl CPS_SslAddRandomSeed
	add sp, sp, #4
	ldmfd sp!, {pc}
	.align 2, 0
_02209F80: .word UNK04_02211A24
	arm_func_end MOD04_02209F5C

	arm_func_start MOD04_02209F84
MOD04_02209F84: ; 0x02209F84
	ands r1, r0, #0x8000
	bicne r0, r0, #0x8000
	bx lr
	arm_func_end MOD04_02209F84

	arm_func_start MOD04_memcpy
MOD04_memcpy: ; 0x02209F90
	ldr ip, _02209FA4 ; =MI_CpuCopy8
	mov r3, r0
	mov r0, r1
	mov r1, r3
	bx ip
	.align 2, 0
_02209FA4: .word MI_CpuCopy8
	arm_func_end MOD04_memcpy

	arm_func_start MOD04_memclear
MOD04_memclear: ; 0x02209FA8
	ldr ip, _02209FB8 ; =MI_CpuFill8
	mov r2, r1
	mov r1, #0
	bx ip
	.align 2, 0
_02209FB8: .word MI_CpuFill8
	arm_func_end MOD04_memclear

	arm_func_start MOD04_strlen
MOD04_strlen: ; 0x02209FBC
	ldr ip, _02209FC4 ; =STD_GetStringLength
	bx ip
	.align 2, 0
_02209FC4: .word STD_GetStringLength
	arm_func_end MOD04_strlen

	arm_func_start MOD04_strnicmp
MOD04_strnicmp: ; 0x02209FC8
	cmp r2, #0
	ble _0220A030
_02209FD0:
	ldrsb ip, [r0], #1
	ldrsb r3, [r1], #1
	cmp ip, #0
	beq _02209FE8
	cmp r3, #0
	bne _02209FFC
_02209FE8:
	cmp ip, #0
	bne _0220A030
	cmp r3, #0
	moveq r2, #0
	b _0220A030
_02209FFC:
	cmp r3, #0x41
	blt _0220A00C
	cmp r3, #0x5a
	addle r3, r3, #0x20
_0220A00C:
	cmp ip, #0x41
	blt _0220A01C
	cmp ip, #0x5a
	addle ip, ip, #0x20
_0220A01C:
	cmp ip, r3
	bne _0220A030
	sub r2, r2, #1
	cmp r2, #0
	bgt _02209FD0
_0220A030:
	mov r0, r2
	bx lr
	arm_func_end MOD04_strnicmp

	arm_func_start MOD04_strcmp
MOD04_strcmp: ; 0x0220A038
	ldr ip, _0220A040 ; =STD_CompareString
	bx ip
	.align 2, 0
_0220A040: .word STD_CompareString
	arm_func_end MOD04_strcmp

	arm_func_start MOD04_0220A044
MOD04_0220A044: ; 0x0220A044
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x124
	mov r0, #0
	str r0, [sp, #0x14]
	ldr r0, _0220AFFC ; =UNK04_02211918
	mvn r5, #0
	ldr r1, [r0]
	ldr r0, [sp, #0x14]
	str r5, [sp, #0x10]
	str r0, [sp, #8]
	str r0, [sp, #0x18]
	cmp r1, #0
	addne sp, sp, #0x124
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r0, #0x26
	str r0, [sp, #0x74]
	mov r0, #3
	str r0, [sp, #0x3c]
	mov r0, #0x4b
	str r0, [sp, #0x78]
	mov r0, #0x14
	str r0, [sp, #0x70]
	mov r0, #1
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x14]
	add r8, sp, #0x108
	str r0, [sp, #0x80]
	str r0, [sp, #0x7c]
	str r0, [sp, #0x84]
	mov r0, #4
	str r0, [sp, #0x24]
	mov r0, #0x10
	str r0, [sp, #0x6c]
	mov r0, #0x31
	str r0, [sp, #0x68]
	mov r0, #0x12
	str r0, [sp, #0x64]
	ldr r0, [sp, #0x14]
	mov r7, #2
	str r0, [sp, #0x5c]
	mov r0, #0x2c
	str r0, [sp, #0x60]
	mov r0, #7
	str r0, [sp, #0x54]
	mov r0, #8
	str r0, [sp, #0x50]
	mov r0, #6
	str r0, [sp, #0x58]
	mov r0, #0xb
	str r0, [sp, #0x4c]
	mov r0, #5
	str r0, [sp, #0x44]
	mov r0, #0xa
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x14]
	add r6, sp, #0x114
	str r0, [sp, #0x40]
	str r0, [sp, #0x48]
	str r0, [sp, #0x30]
	mov r0, #0x204
	str r0, [sp, #0x90]
	ldr r0, [sp, #0x14]
	str r5, [sp, #0x38]
	str r0, [sp, #0x94]
	str r0, [sp, #0x98]
	str r0, [sp, #0x8c]
	str r0, [sp, #0xe0]
	str r0, [sp, #0xe8]
	str r0, [sp, #0xe4]
	str r0, [sp, #0xdc]
	str r0, [sp, #0xf8]
	str r0, [sp, #0xf0]
	str r0, [sp, #0x28]
	str r0, [sp, #0x88]
	str r0, [sp, #0xb8]
	str r0, [sp, #0xbc]
	str r0, [sp, #0xc0]
	str r0, [sp, #0xb4]
	str r0, [sp, #0xb0]
	mov r0, #0x3b
	str r0, [sp, #0xc8]
	ldr r0, [sp, #0x14]
	str r5, [sp, #0x20]
	str r0, [sp, #0xcc]
	str r0, [sp, #0xd0]
	str r0, [sp, #0xc4]
	str r0, [sp, #0xd4]
	str r0, [sp, #0xf4]
	str r0, [sp, #0xec]
	str r0, [sp, #0xd8]
	str r0, [sp, #0xa8]
	mov r0, #0xc
	str r0, [sp, #0xa4]
	ldr r0, [sp, #0x14]
	str r5, [sp, #0xac]
	str r0, [sp, #0x9c]
	mov r0, #0xe
	str r0, [sp, #0xa0]
	ldr r0, [sp, #0x14]
	str r5, [sp, #0x100]
	str r0, [sp, #0xfc]
	str r0, [sp, #0x104]
_0220A1DC:
	bl MOD04_02208CE0
	bl MOD04_022089E0
	cmp r0, #0
	ldrne sb, [r0, #8]
	ldrne r4, [r0, #0xc]
	ldrne r1, _0220B000 ; =UNK04_02211914
	ldreq sb, [sp, #0x20]
	strne r0, [r1]
	bl MOD04_02208CCC
	cmp sb, #0
	bge _0220A210
	bl MOD04_02208C00
	b _0220B3E8
_0220A210:
	ldr fp, [r4, #0x30]
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _0220B348
	mov r0, r4
	bl MOD04_022099C0
	str r0, [sp, #0xc]
	cmp r0, #0
	ldreq r0, [sp, #0x24]
	streq r0, [sp, #4]
	beq _0220B348
	mov r1, r0
	ldr r0, [sp, #0x10]
	ldr r2, [sp, #0x28]
	cmp r1, r0
	bne _0220A268
	ldr r1, [r4, #8]
	ldr r0, [sp, #0x18]
	cmp r1, r0
	bne _0220A268
	cmp r1, #0
	ldreq r2, [sp, #0x2c]
_0220A268:
	ldr r0, [sp, #8]
	and r0, r0, r2
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [r4, #8]
	str r0, [sp, #0x18]
_0220A284:
	ldr r0, [sp, #8]
	cmp r0, #0
	ldr r0, [sp, #0x30]
	str r0, [sp, #4]
	bne _0220A32C
	cmp r5, #0
	blt _0220A2C8
	mov r1, r5
	mov r0, r4
	bl MOD04_02209E7C
	cmp r0, #0
	ldrlt r0, [sp, #0x34]
	ldr r5, [sp, #0x38]
	strlt r0, [sp, #4]
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _0220B348
_0220A2C8:
	mov r0, r4
	bl MOD04_02209ED4
	movs r5, r0
	ldrmi r0, [sp, #0x3c]
	strmi r0, [sp, #4]
	bmi _0220B348
	bl MOD04_02208CE0
	ldr r0, _0220B000 ; =UNK04_02211914
	ldr r0, [r0]
	str r5, [r0, #0x10]
	bl MOD04_02208CCC
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _0220B348
	ldr r2, [sp, #0xc]
	ldr r3, [r4, #0x28]
	mov r0, r4
	mov r1, r5
	bl MOD04_02209E00
	cmp r0, #0
	ldrge r0, [sp, #0x2c]
	strge r0, [sp, #8]
	ldrlt r0, [sp, #0x40]
	strlt r0, [sp, #8]
	b _0220A344
_0220A32C:
	bl MOD04_02209F5C
	bl MOD04_02208CE0
	ldr r0, _0220B000 ; =UNK04_02211914
	ldr r0, [r0]
	str r5, [r0, #0x10]
	bl MOD04_02208CCC
_0220A344:
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _0220B348
	ldr r0, [sp, #8]
	cmp r0, #0
	ldreq r0, [sp, #0x44]
	streq r0, [sp, #4]
	beq _0220B348
	ldr r0, [sp, #0x48]
	str r0, [sp, #0x108]
	str r0, [sp, #8]
	ldr r0, [r4, #0x24]
	bl MOD04_strlen
	mov sb, r0
	ldr r0, [sp, #0x34]
	str r0, [sp, #4]
	ldr r0, [r4, #0x40]
	cmp r0, #0
	beq _0220A3A4
	cmp r0, #1
	beq _0220A3D4
	cmp r0, #2
	beq _0220A404
	b _0220A430
_0220A3A4:
	ldr r0, [sp, #0x24]
	ldr r3, _0220B004 ; =UNK04_0220FA9C
	str r0, [sp]
	mov r0, r4
	mov r1, r5
	mov r2, r8
	bl MOD04_0220B490
	cmp r0, #0
	blt _0220B348
	cmp r0, #0
	bne _0220A430
	b _0220A284
_0220A3D4:
	ldr r0, [sp, #0x44]
	ldr r3, _0220B008 ; =UNK04_0220FAA4
	str r0, [sp]
	mov r0, r4
	mov r1, r5
	mov r2, r8
	bl MOD04_0220B490
	cmp r0, #0
	blt _0220B348
	cmp r0, #0
	bne _0220A430
	b _0220A284
_0220A404:
	ldr r0, [sp, #0x44]
	ldr r3, _0220B00C ; =UNK04_0220FAAC
	str r0, [sp]
	mov r0, r4
	mov r1, r5
	mov r2, r8
	bl MOD04_0220B490
	cmp r0, #0
	blt _0220B348
	cmp r0, #0
	beq _0220A284
_0220A430:
	ldr sl, [r4, #0x10]
	cmp sb, sl
	ble _0220A474
	subs r0, sb, sl
	beq _0220A4A0
	str r0, [sp]
	mov r0, r4
	mov r1, r5
	mov r2, r8
	ldr r3, [r4, #0x24]
	add r3, r3, sl
	bl MOD04_0220B490
	cmp r0, #0
	blt _0220B348
	cmp r0, #0
	bne _0220A4A0
	b _0220A284
_0220A474:
	ldr r0, [sp, #0x2c]
	ldr r3, _0220B010 ; =UNK04_0220FAB4
	str r0, [sp]
	mov r0, r4
	mov r1, r5
	mov r2, r8
	bl MOD04_0220B490
	cmp r0, #0
	blt _0220B348
	cmp r0, #0
	beq _0220A284
_0220A4A0:
	ldr r0, [sp, #0x4c]
	ldr r3, _0220B014 ; =UNK04_0220FAB8
	str r0, [sp]
	mov r0, r4
	mov r1, r5
	mov r2, r8
	bl MOD04_0220B490
	cmp r0, #0
	blt _0220B348
	cmp r0, #0
	beq _0220A284
	ldr r0, [r4, #8]
	ldr r3, _0220B018 ; =UNK04_0220FAC4
	cmp r0, #0
	ldrne r0, [sp, #0x50]
	mov r1, r5
	ldreq r0, [sp, #0x54]
	mov r2, r8
	str r0, [sp, #0x10c]
	ldr r0, [sp, #0x58]
	str r0, [sp]
	mov r0, r4
	bl MOD04_0220B490
	cmp r0, #0
	blt _0220B348
	cmp r0, #0
	beq _0220A284
	ldr sb, [sp, #0x10c]
	ldr r0, [r4, #0xc]
	subs r0, r0, sb
	beq _0220A548
	str r0, [sp]
	mov r0, r4
	mov r1, r5
	mov r2, r8
	ldr r3, [r4, #0x24]
	add r3, r3, sb
	bl MOD04_0220B490
	cmp r0, #0
	blt _0220B348
	cmp r0, #0
	beq _0220A284
_0220A548:
	ldr r3, _0220B01C ; =UNK04_0220FACC
	mov r0, r4
	mov r1, r5
	mov r2, r8
	str r7, [sp]
	bl MOD04_0220B490
	cmp r0, #0
	blt _0220B348
	cmp r0, #0
	beq _0220A284
	add r0, r4, #0x34
	bl MOD04_02208888
	movs sb, r0
	beq _0220A660
_0220A580:
	ldr r0, [sb, #8]
	bl MOD04_strlen
	cmp r0, #0
	beq _0220A5B8
	str r0, [sp]
	mov r0, r4
	mov r1, r5
	mov r2, r8
	ldr r3, [sb, #8]
	bl MOD04_0220B490
	cmp r0, #0
	blt _0220B348
	cmp r0, #0
	beq _0220A284
_0220A5B8:
	ldr r3, _0220B020 ; =UNK04_0220FAD0
	mov r0, r4
	mov r1, r5
	mov r2, r8
	str r7, [sp]
	bl MOD04_0220B490
	cmp r0, #0
	blt _0220B348
	cmp r0, #0
	beq _0220A284
	ldr r0, [sb, #0xc]
	bl MOD04_strlen
	cmp r0, #0
	beq _0220A618
	str r0, [sp]
	mov r0, r4
	mov r1, r5
	mov r2, r8
	ldr r3, [sb, #0xc]
	bl MOD04_0220B490
	cmp r0, #0
	blt _0220B348
	cmp r0, #0
	beq _0220A284
_0220A618:
	ldr r3, _0220B01C ; =UNK04_0220FACC
	mov r0, r4
	mov r1, r5
	mov r2, r8
	str r7, [sp]
	bl MOD04_0220B490
	cmp r0, #0
	blt _0220B348
	cmp r0, #0
	beq _0220A284
	ldr r1, _0220B024 ; =UNK04_02211904
	mov r0, sb
	ldr r1, [r1]
	blx r1
	add r0, r4, #0x34
	bl MOD04_02208888
	movs sb, r0
	bne _0220A580
_0220A660:
	ldr r0, [r4, #0x40]
	cmp r0, #1
	bne _0220A8A0
	ldr sl, [sp, #0x5c]
	ldr sb, [r4, #0x38]
	mov r0, sl
	str r0, [sp, #0x14]
	cmp sb, #0
	mov r1, sb
	beq _0220A6B4
_0220A688:
	ldr r0, [r1, #0x14]
	cmp r0, #0
	ldrne r0, [sp, #0x2c]
	strne r0, [sp, #0x14]
	bne _0220A6B4
	ldr r0, [sb]
	cmp r1, r0
	beq _0220A6B4
	ldr r1, [r1, #4]
	cmp r1, #0
	bne _0220A688
_0220A6B4:
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _0220A79C
	cmp sb, #0
	beq _0220A714
_0220A6C8:
	ldr r0, [sb, #8]
	add sl, sl, #0x16
	bl MOD04_strlen
	add r0, r0, #0x29
	add sl, sl, r0
	ldr r0, [sb, #0x14]
	ldr r1, [sb, #0x10]
	cmp r0, #0
	ldr r0, [r4, #0x38]
	addne sl, sl, #0x4b
	add r2, sl, #2
	ldr r0, [r0]
	add r1, r2, r1
	add sl, r1, #2
	cmp sb, r0
	beq _0220A714
	ldr sb, [sb, #4]
	cmp sb, #0
	bne _0220A6C8
_0220A714:
	ldr r0, [sp, #0x60]
	ldr r3, _0220B028 ; =UNK04_0220FAD4
	str r0, [sp]
	mov r0, r4
	mov r1, r5
	mov r2, r8
	add sl, sl, #0x18
	bl MOD04_0220B490
	cmp r0, #0
	blt _0220B348
	cmp r0, #0
	beq _0220A284
	ldr r0, [sp, #0x64]
	mov r1, r5
	str r0, [sp]
	mov r0, r4
	mov r2, r8
	add r3, r4, #0x46
	bl MOD04_0220B490
	cmp r0, #0
	blt _0220B348
	cmp r0, #0
	beq _0220A284
	ldr r3, _0220B01C ; =UNK04_0220FACC
	mov r0, r4
	mov r1, r5
	mov r2, r8
	str r7, [sp]
	bl MOD04_0220B490
	cmp r0, #0
	blt _0220B348
	cmp r0, #0
	bne _0220A80C
	b _0220A284
_0220A79C:
	cmp sb, #0
	beq _0220A7E0
_0220A7A4:
	ldr r0, [sb, #8]
	bl MOD04_url_strlen
	add r0, sl, r0
	add sl, r0, #1
	ldr r0, [sb, #0xc]
	bl MOD04_url_strlen
	add sl, sl, r0
	ldr r0, [r4, #0x38]
	ldr r0, [r0]
	cmp sb, r0
	beq _0220A7E0
	add sl, sl, #1
	ldr sb, [sb, #4]
	cmp sb, #0
	bne _0220A7A4
_0220A7E0:
	ldr r0, [sp, #0x68]
	ldr r3, _0220B02C ; =UNK04_0220FB04
	str r0, [sp]
	mov r0, r4
	mov r1, r5
	mov r2, r8
	bl MOD04_0220B490
	cmp r0, #0
	blt _0220B348
	cmp r0, #0
	beq _0220A284
_0220A80C:
	ldr r0, [sp, #0x6c]
	ldr r3, _0220B030 ; =UNK04_0220FB38
	str r0, [sp]
	mov r0, r4
	mov r1, r5
	mov r2, r8
	bl MOD04_0220B490
	cmp r0, #0
	blt _0220B348
	cmp r0, #0
	beq _0220A284
	mov r1, sl
	mov r0, r6
	bl MOD04_0220B788
	str r0, [sp, #0x10c]
	cmp r0, #0
	beq _0220A878
	str r0, [sp]
	mov r0, r4
	mov r1, r5
	mov r2, r8
	mov r3, r6
	bl MOD04_0220B490
	cmp r0, #0
	blt _0220B348
	cmp r0, #0
	beq _0220A284
_0220A878:
	ldr r3, _0220B01C ; =UNK04_0220FACC
	mov r0, r4
	mov r1, r5
	mov r2, r8
	str r7, [sp]
	bl MOD04_0220B490
	cmp r0, #0
	blt _0220B348
	cmp r0, #0
	beq _0220A284
_0220A8A0:
	ldr r3, _0220B01C ; =UNK04_0220FACC
	mov r0, r4
	mov r1, r5
	mov r2, r8
	str r7, [sp]
	bl MOD04_0220B490
	cmp r0, #0
	blt _0220B348
	cmp r0, #0
	beq _0220A284
	ldr r0, [r4, #0x40]
	cmp r0, #1
	bne _0220AC54
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _0220AB04
	ldr sb, [r4, #0x38]
	cmp sb, #0
	beq _0220AAA8
_0220A8EC:
	ldr r0, [sp, #0x70]
	mov r1, r5
	str r0, [sp]
	mov r0, r4
	mov r2, r8
	add r3, r4, #0x44
	bl MOD04_0220B490
	cmp r0, #0
	blt _0220B348
	cmp r0, #0
	beq _0220A284
	ldr r3, _0220B01C ; =UNK04_0220FACC
	mov r0, r4
	mov r1, r5
	mov r2, r8
	str r7, [sp]
	bl MOD04_0220B490
	cmp r0, #0
	blt _0220B348
	cmp r0, #0
	beq _0220A284
	ldr r0, [sp, #0x74]
	ldr r3, _0220B034 ; =UNK04_0220BDFC
	str r0, [sp]
	mov r0, r4
	mov r1, r5
	mov r2, r8
	bl MOD04_0220B490
	cmp r0, #0
	blt _0220B348
	cmp r0, #0
	beq _0220A284
	ldr r0, [sb, #8]
	bl MOD04_strlen
	cmp r0, #0
	beq _0220A9A4
	str r0, [sp]
	mov r0, r4
	mov r1, r5
	mov r2, r8
	ldr r3, [sb, #8]
	bl MOD04_0220B490
	cmp r0, #0
	blt _0220B348
	cmp r0, #0
	beq _0220A284
_0220A9A4:
	ldr r0, [sp, #0x3c]
	ldr r3, _0220B038 ; =UNK04_0220FB4C
	str r0, [sp]
	mov r0, r4
	mov r1, r5
	mov r2, r8
	bl MOD04_0220B490
	cmp r0, #0
	blt _0220B348
	cmp r0, #0
	beq _0220A284
	ldr r0, [sb, #0x14]
	cmp r0, #0
	beq _0220AA08
	ldr r0, [sp, #0x78]
	ldr r3, _0220B03C ; =UNK04_0220BE24
	str r0, [sp]
	mov r0, r4
	mov r1, r5
	mov r2, r8
	bl MOD04_0220B490
	cmp r0, #0
	blt _0220B348
	cmp r0, #0
	beq _0220A284
_0220AA08:
	ldr r3, _0220B01C ; =UNK04_0220FACC
	mov r0, r4
	mov r1, r5
	mov r2, r8
	str r7, [sp]
	bl MOD04_0220B490
	cmp r0, #0
	blt _0220B348
	cmp r0, #0
	beq _0220A284
	ldr r0, [sb, #0x10]
	cmp r0, #0
	beq _0220AA64
	str r0, [sp]
	mov r0, r4
	mov r1, r5
	mov r2, r8
	ldr r3, [sb, #0xc]
	bl MOD04_0220B490
	cmp r0, #0
	blt _0220B348
	cmp r0, #0
	beq _0220A284
_0220AA64:
	ldr r3, _0220B01C ; =UNK04_0220FACC
	mov r0, r4
	mov r1, r5
	mov r2, r8
	str r7, [sp]
	bl MOD04_0220B490
	cmp r0, #0
	blt _0220B348
	cmp r0, #0
	beq _0220A284
	ldr r0, [r4, #0x38]
	ldr r0, [r0]
	cmp sb, r0
	beq _0220AAA8
	ldr sb, [sb, #4]
	cmp sb, #0
	bne _0220A8EC
_0220AAA8:
	ldr r0, [sp, #0x70]
	mov r1, r5
	str r0, [sp]
	mov r0, r4
	mov r2, r8
	add r3, r4, #0x44
	bl MOD04_0220B490
	cmp r0, #0
	blt _0220B348
	cmp r0, #0
	beq _0220A284
	ldr r0, [sp, #0x24]
	ldr r3, _0220B040 ; =UNK04_0220FB50
	str r0, [sp]
	mov r0, r4
	mov r1, r5
	mov r2, r8
	bl MOD04_0220B490
	cmp r0, #0
	blt _0220B348
	cmp r0, #0
	bne _0220AC54
	b _0220A284
_0220AB04:
	ldr sl, [r4, #0x38]
	cmp sl, #0
	beq _0220AC54
_0220AB10:
	ldr r1, [sl, #8]
	ldr sb, [sp, #0x7c]
	ldrsb r0, [r1]
	cmp r0, #0
	beq _0220AB78
_0220AB24:
	ldrsb r1, [r1, sb]
	mov r0, r6
	bl MOD04_strtourl
	str r0, [sp, #0x10c]
	cmp r0, #0
	beq _0220AB64
	str r0, [sp]
	mov r0, r4
	mov r1, r5
	mov r2, r8
	mov r3, r6
	bl MOD04_0220B490
	cmp r0, #0
	blt _0220B348
	cmp r0, #0
	beq _0220A284
_0220AB64:
	add sb, sb, #1
	ldr r1, [sl, #8]
	ldrsb r0, [r1, sb]
	cmp r0, #0
	bne _0220AB24
_0220AB78:
	ldr r0, [sp, #0x2c]
	ldr r3, _0220B044 ; =UNK04_0220FB58
	str r0, [sp]
	mov r0, r4
	mov r1, r5
	mov r2, r8
	bl MOD04_0220B490
	cmp r0, #0
	blt _0220B348
	cmp r0, #0
	beq _0220A284
	ldr r1, [sl, #0xc]
	ldr sb, [sp, #0x80]
	ldrsb r0, [r1]
	cmp r0, #0
	beq _0220AC0C
_0220ABB8:
	ldrsb r1, [r1, sb]
	mov r0, r6
	bl MOD04_strtourl
	str r0, [sp, #0x10c]
	cmp r0, #0
	beq _0220ABF8
	str r0, [sp]
	mov r0, r4
	mov r1, r5
	mov r2, r8
	mov r3, r6
	bl MOD04_0220B490
	cmp r0, #0
	blt _0220B348
	cmp r0, #0
	beq _0220A284
_0220ABF8:
	add sb, sb, #1
	ldr r1, [sl, #0xc]
	ldrsb r0, [r1, sb]
	cmp r0, #0
	bne _0220ABB8
_0220AC0C:
	ldr r0, [r4, #0x38]
	ldr r0, [r0]
	cmp sl, r0
	beq _0220AC54
	ldr r0, [sp, #0x2c]
	ldr r3, _0220B048 ; =UNK04_0220FB5C
	str r0, [sp]
	mov r0, r4
	mov r1, r5
	mov r2, r8
	bl MOD04_0220B490
	cmp r0, #0
	blt _0220B348
	cmp r0, #0
	beq _0220A284
	ldr sl, [sl, #4]
	cmp sl, #0
	bne _0220AB10
_0220AC54:
	ldr r3, [sp, #0x108]
	cmp r3, #0
	ble _0220AC88
	ldr r0, [sp, #0x84]
	ldr r2, _0220B04C ; =UNK04_02211A44
	str r0, [sp]
	mov r0, r4
	mov r1, r5
	bl MOD04_02209D68
	cmp r0, #0
	blt _0220B348
	cmp r0, #0
	beq _0220A284
_0220AC88:
	ldr r0, [sp, #0x88]
	str r0, [fp]
	strb r0, [sp, #0x114]
	strb r0, [sp, #0x115]
	strb r0, [sp, #0x116]
	strb r0, [sp, #0x117]
	ldr r0, [sp, #0x54]
	ldr sb, [fp, #0x1c]
	str r0, [sp, #4]
	ldr r0, [sp, #0x88]
	str r0, [sp, #0x108]
_0220ACB4:
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _0220B348
	ldr r3, [sp, #0x108]
	cmp r3, #0x400
	bge _0220AD04
	ldr r0, [sp, #0x8c]
	add r2, fp, #0x20
	add r2, r2, r3
	str r0, [sp]
	ldr r3, [sp, #0x2c]
	mov r0, r4
	mov r1, r5
	bl MOD04_02209DB4
	ldr r3, [sp, #0x108]
	add r1, fp, r3
	ldrsb r2, [r1, #0x20]
	and r1, r3, #3
	strb r2, [r6, r1]
	b _0220ADA0
_0220AD04:
	ldr r0, _0220B050 ; =0x000001FF
	ands sl, r3, r0
	bne _0220AD6C
	cmp sb, #0
	beq _0220AD38
	ldr r2, _0220B054 ; =UNK04_02211924
	ldr r0, [sp, #0x90]
	ldr r1, [sp, #0x24]
	ldr r2, [r2]
	blx r2
	str r0, [sb]
	ldr sb, [sb]
	b _0220AD54
_0220AD38:
	ldr r2, _0220B054 ; =UNK04_02211924
	ldr r0, [sp, #0x90]
	ldr r1, [sp, #0x24]
	ldr r2, [r2]
	blx r2
	mov sb, r0
	str sb, [fp, #0x1c]
_0220AD54:
	cmp sb, #0
	ldreq r0, [sp, #0x2c]
	streq r0, [sp, #4]
	beq _0220B348
	ldr r0, [sp, #0x94]
	str r0, [sb]
_0220AD6C:
	ldr r0, [sp, #0x98]
	add r2, sb, #4
	str r0, [sp]
	ldr r3, [sp, #0x2c]
	mov r0, r4
	mov r1, r5
	add r2, r2, sl
	bl MOD04_02209DB4
	add r1, sb, sl
	ldrsb r2, [r1, #4]
	ldr r1, [sp, #0x108]
	and r1, r1, #3
	strb r2, [r6, r1]
_0220ADA0:
	cmp r0, #0
	ldrle r0, [sp, #0x34]
	strle r0, [sp, #4]
	ble _0220B348
	ldr r1, [sp, #0x108]
	add r0, r1, r0
	str r0, [sp, #0x108]
	sub r1, r0, #4
	and r1, r1, #3
	ldrsb r1, [r6, r1]
	cmp r1, #0xd
	bne _0220ACB4
	sub r1, r0, #3
	and r1, r1, #3
	ldrsb r1, [r6, r1]
	cmp r1, #0xa
	bne _0220ACB4
	sub r1, r0, #2
	and r1, r1, #3
	ldrsb r1, [r6, r1]
	cmp r1, #0xd
	bne _0220ACB4
	sub r1, r0, #1
	and r1, r1, #3
	ldrsb r1, [r6, r1]
	cmp r1, #0xa
	bne _0220ACB4
	str r0, [fp]
	ldr r0, [fp]
	cmp r0, #0
	beq _0220B348
	ldr r1, _0220B04C ; =UNK04_02211A44
	ldr r2, [sp, #0x9c]
	ldr r3, [sp, #0xa0]
	mov r0, fp
	bl MOD04_02208DCC
	cmp r0, #0
	beq _0220B348
	ldr r0, _0220B04C ; =UNK04_02211A44
	ldr r1, _0220B058 ; =UNK04_0220FB60
	ldr r2, [sp, #0x44]
	bl MOD04_strnicmp
	cmp r0, #0
	bne _0220B348
	ldr r0, _0220B04C ; =UNK04_02211A44
	ldrsb r0, [r0, #8]
	cmp r0, #0x20
	bne _0220B348
	ldr r0, _0220B05C ; =UNK04_02211A4D
	ldr r1, [sp, #0x3c]
	bl MOD04_0220B844
	cmp r0, #0
	blt _0220B348
	ldr r1, [sp, #0xa4]
	ldr r2, [fp]
	mov r0, fp
	add r3, sp, #0x110
	bl MOD04_02209014
	cmp r0, #0
	blt _0220B348
	ldr r1, _0220B060 ; =UNK04_0220FB68
	mov r0, fp
	add r2, sp, #0x10c
	bl MOD04_02209BB8
	movs sb, r0
	ldreq r0, [sp, #0xa8]
	streq r0, [sp, #4]
	beq _0220B348
	cmp sb, #0x400
	bgt _0220B348
	cmp sb, #0
	ble _0220AEF8
	ldr r1, _0220B04C ; =UNK04_02211A44
	ldr r2, [sp, #0x10c]
	mov r0, fp
	mov r3, sb
	bl MOD04_02208DCC
	cmp r0, #0
	beq _0220B348
	ldr r0, _0220B04C ; =UNK04_02211A44
	mov r1, sb
	bl MOD04_0220B844
	movs sb, r0
	bmi _0220B348
	str sb, [r4, #0x14]
	b _0220AF00
_0220AEF8:
	ldr r0, [sp, #0xac]
	str r0, [r4, #0x14]
_0220AF00:
	ldr r0, [r4, #8]
	cmp r0, #0
	ldrne r0, [sp, #0xb0]
	strne r0, [sp, #8]
	bne _0220AF88
	ldr r1, _0220B064 ; =UNK04_0220FB78
	mov r0, fp
	add r2, sp, #0x10c
	bl MOD04_02209BB8
	str r0, [sp, #8]
	cmp r0, #0
	beq _0220B348
	cmp r0, #0x400
	ldrgt r0, [sp, #0xb4]
	strgt r0, [sp, #8]
	bgt _0220AF88
	cmp r0, #0
	ble _0220AF80
	ldr r1, [sp, #0x10c]
	ldr r3, [sp, #0xb8]
	ldr r2, [sp, #8]
	str r3, [sp]
	ldr r3, _0220B068 ; =UNK04_0220FB84
	mov r0, fp
	add r2, r1, r2
	bl MOD04_02208EC4
	cmp r0, #0
	ldreq r0, [sp, #0x2c]
	streq r0, [sp, #8]
	ldrne r0, [sp, #0xbc]
	strne r0, [sp, #8]
	b _0220AF88
_0220AF80:
	ldr r0, [sp, #0xc0]
	str r0, [sp, #8]
_0220AF88:
	ldr r1, _0220B06C ; =UNK04_0220FB90
	mov r0, fp
	add r2, sp, #0x10c
	bl MOD04_02209BB8
	movs r2, r0
	beq _0220B348
	cmp r2, #0x400
	ldrgt r1, [sp, #0xc4]
	bgt _0220AFE4
	cmp r2, #0
	ble _0220AFE0
	ldr r1, [sp, #0x10c]
	ldr r3, [sp, #0xc8]
	mov r0, fp
	str r3, [sp]
	ldr r3, _0220B070 ; =UNK04_0220FBA4
	add r2, r1, r2
	bl MOD04_02208EC4
	cmp r0, #0
	ldreq r1, [sp, #0x2c]
	ldrne r1, [sp, #0xcc]
	b _0220AFE4
_0220AFE0:
	ldr r1, [sp, #0xd0]
_0220AFE4:
	ldr r0, [r4, #0x40]
	cmp r0, #2
	beq _0220B348
	cmp sb, #0
	blt _0220B104
	b _0220B0B0
	.align 2, 0
_0220AFFC: .word UNK04_02211918
_0220B000: .word UNK04_02211914
_0220B004: .word UNK04_0220FA9C
_0220B008: .word UNK04_0220FAA4
_0220B00C: .word UNK04_0220FAAC
_0220B010: .word UNK04_0220FAB4
_0220B014: .word UNK04_0220FAB8
_0220B018: .word UNK04_0220FAC4
_0220B01C: .word UNK04_0220FACC
_0220B020: .word UNK04_0220FAD0
_0220B024: .word UNK04_02211904
_0220B028: .word UNK04_0220FAD4
_0220B02C: .word UNK04_0220FB04
_0220B030: .word UNK04_0220FB38
_0220B034: .word UNK04_0220BDFC
_0220B038: .word UNK04_0220FB4C
_0220B03C: .word UNK04_0220BE24
_0220B040: .word UNK04_0220FB50
_0220B044: .word UNK04_0220FB58
_0220B048: .word UNK04_0220FB5C
_0220B04C: .word UNK04_02211A44
_0220B050: .word 0x000001FF
_0220B054: .word UNK04_02211924
_0220B058: .word UNK04_0220FB60
_0220B05C: .word UNK04_02211A4D
_0220B060: .word UNK04_0220FB68
_0220B064: .word UNK04_0220FB78
_0220B068: .word UNK04_0220FB84
_0220B06C: .word UNK04_0220FB90
_0220B070: .word UNK04_0220FBA4
_0220B074:
	ldr r0, [sp, #0xd4]
	mov r1, r5
	str r0, [sp]
	ldr r2, [fp, #4]
	mov r0, r4
	mov r3, sb
	bl MOD04_02208D18
	cmp r0, #0
	blt _0220B348
	cmp r0, #0
	beq _0220B0CC
	ldr r1, [fp, #4]
	sub sb, sb, r0
	add r0, r1, r0
	str r0, [fp, #4]
_0220B0B0:
	cmp sb, #0
	ble _0220B0CC
	mov r0, fp
	ldr r1, [fp, #4]
	bl MOD04_02208DB8
	cmp r0, #0
	beq _0220B074
_0220B0CC:
	cmp sb, #0
	beq _0220B0F8
	ldr r1, [fp, #4]
	mov r0, fp
	bl MOD04_02208DB8
	cmp r0, #0
	ldrne r0, [sp, #0x58]
	strne r0, [sp, #4]
	ldreq r0, [sp, #0x34]
	streq r0, [sp, #4]
	b _0220B348
_0220B0F8:
	ldr r0, [sp, #0xd8]
	str r0, [sp, #4]
	b _0220B348
_0220B104:
	ldr r0, [sp, #0x34]
	cmp r1, #0
	str r0, [sp, #4]
	beq _0220B2A0
_0220B114:
	ldr r0, [sp, #0xdc]
	strb r0, [sp, #0x114]
	strb r0, [sp, #0x115]
	str r0, [sp, #0x108]
_0220B124:
	ldr r0, [sp, #0xe0]
	ldr r2, _0220B04C ; =UNK04_02211A44
	str r0, [sp]
	ldr sb, [sp, #0x108]
	ldr r3, [sp, #0x2c]
	mov r0, r4
	mov r1, r5
	add r2, r2, sb
	bl MOD04_02209DB4
	cmp r0, #0
	blt _0220B348
	ldr r2, [sp, #0x108]
	ldr r0, _0220B04C ; =UNK04_02211A44
	and r1, r2, #1
	ldrsb r0, [r0, r2]
	strb r0, [r6, r1]
	ldrsb r1, [r6, r1]
	cmp r1, #0x3b
	beq _0220B18C
	cmp r1, #0xa
	bne _0220B1D8
	sub r0, r2, #1
	and r0, r0, #1
	ldrsb r0, [r6, r0]
	cmp r0, #0xd
	bne _0220B1D8
_0220B18C:
	cmp r1, #0xa
	subeq r0, r2, #1
	streq r0, [sp, #0x10c]
	beq _0220B1B4
	str r2, [sp, #0x10c]
	mov r0, r4
	mov r1, r5
	bl MOD04_0220B404
	cmp r0, #0
	ble _0220B348
_0220B1B4:
	ldr r1, [sp, #0x10c]
	cmp r1, #0
	beq _0220B348
	ldr r0, _0220B04C ; =UNK04_02211A44
	bl MOD04_urltostr
	str r0, [sp, #0x1c]
	cmp r0, #0
	bge _0220B1EC
	b _0220B348
_0220B1D8:
	ldr r0, [sp, #0x108]
	add r0, r0, #1
	str r0, [sp, #0x108]
	cmp r0, #0x400
	blt _0220B124
_0220B1EC:
	ldr r0, [sp, #0x108]
	cmp r0, #0x400
	ldreq r0, [sp, #0x54]
	streq r0, [sp, #4]
	beq _0220B348
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	ble _0220B288
	cmp r0, #0
	ble _0220B114
_0220B214:
	ldr r0, [sp, #0xe4]
	ldr r3, [sp, #0x1c]
	str r0, [sp]
	ldr r2, [fp, #4]
	mov r0, r4
	mov r1, r5
	bl MOD04_02208D18
	cmp r0, #0
	ble _0220B348
	ldr r1, [sp, #0x1c]
	ldr r2, [fp, #4]
	subs r1, r1, r0
	add r0, r2, r0
	str r1, [sp, #0x1c]
	str r0, [fp, #4]
	bne _0220B278
	ldr r0, [sp, #0xe8]
	ldr r2, _0220B04C ; =UNK04_02211A44
	str r0, [sp]
	mov r0, r4
	mov r1, r5
	mov r3, r7
	bl MOD04_02209DB4
	cmp r0, #0
	ble _0220B348
_0220B278:
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	bgt _0220B214
	b _0220B114
_0220B288:
	mov r0, r4
	mov r1, r5
	bl MOD04_0220B404
	ldr r0, [sp, #0xec]
	str r0, [sp, #4]
	b _0220B348
_0220B2A0:
	mov r0, fp
	ldr r1, [fp, #4]
	bl MOD04_02208DB8
	cmp r0, #0
	bne _0220B348
_0220B2B4:
	ldr r2, [fp, #4]
	ldr r3, [sp, #0xf0]
	mov r0, r4
	mov r1, r5
	bl MOD04_02208D88
	cmp r0, #0
	blt _0220B348
	cmp r0, #0
	ldreq r0, [sp, #0xf4]
	streq r0, [sp, #4]
	beq _0220B348
	ldr r1, [fp, #4]
	add r0, r1, r0
	str r0, [fp, #4]
	mov r0, fp
	ldr r1, [fp, #4]
	bl MOD04_02208DB8
	cmp r0, #0
	beq _0220B334
	ldr r0, [sp, #0xf8]
	ldr r2, _0220B04C ; =UNK04_02211A44
	str r0, [sp]
	ldr r3, [sp, #0x2c]
	mov r0, r4
	mov r1, r5
	bl MOD04_02209DB4
	cmp r0, #0
	blt _0220B348
	cmp r0, #0
	ldrne r0, [sp, #0x58]
	strne r0, [sp, #4]
	bne _0220B348
_0220B334:
	mov r0, fp
	ldr r1, [fp, #4]
	bl MOD04_02208DB8
	cmp r0, #0
	beq _0220B2B4
_0220B348:
	bl MOD04_02208CE0
	ldr r0, _0220B000 ; =UNK04_02211914
	ldr r1, _0220B024 ; =UNK04_02211904
	ldr r0, [r0]
	ldr r1, [r1]
	blx r1
	ldr r1, [sp, #0xfc]
	ldr r0, _0220B000 ; =UNK04_02211914
	str r1, [r0]
	bl MOD04_02208CCC
	ldr r0, [r4, #4]
	cmp r0, #0
	ldrne r0, [sp, #0x50]
	strne r0, [sp, #4]
	cmp r5, #0
	blt _0220B3A4
	mov r1, r5
	mov r0, r4
	bl MOD04_02209E7C
	cmp r0, #0
	ldrlt r0, [sp, #0x34]
	ldr r5, [sp, #0x100]
	strlt r0, [sp, #4]
_0220B3A4:
	ldr r0, [sp, #4]
	cmp r0, #0
	ldreq r0, [sp, #0x2c]
	ldrne r1, [sp, #4]
	streq r0, [fp, #8]
	ldrne r0, [sp, #0x104]
	strne r0, [fp, #8]
	ldrne r0, _0220B400 ; =UNK04_02211908
	strne r1, [r0]
	ldr sl, [r4, #0x2c]
	mov r0, r4
	ldr sb, [r4, #0x3c]
	bl MOD04_02209338
	ldr r0, [sp, #4]
	mov r1, fp
	mov r2, sl
	blx sb
_0220B3E8:
	ldr r0, _0220AFFC ; =UNK04_02211918
	ldr r0, [r0]
	cmp r0, #0
	beq _0220A1DC
	add sp, sp, #0x124
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0220B400: .word UNK04_02211908
	arm_func_end MOD04_0220A044

	arm_func_start MOD04_0220B404
MOD04_0220B404: ; 0x0220B404
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #8
	mov r7, #0
	mov sl, r0
	mov sb, r1
	mov r8, r7
	mov r6, r7
	strb r7, [sp, #4]
	strb r7, [sp, #5]
	mov r5, #1
	add r4, sp, #4
	b _0220B45C
_0220B434:
	mov r0, sl
	mov r1, sb
	mov r3, r5
	str r6, [sp]
	bl MOD04_02209DB4
	cmp r0, #0
	addle sp, sp, #8
	ldmleia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	add r7, r7, r0
	add r8, r8, #1
_0220B45C:
	and r1, r8, #1
	ldrsb r0, [r4, r1]
	add r2, r4, r1
	cmp r0, #0xd
	bne _0220B434
	sub r0, r8, #1
	and r0, r0, #1
	ldrsb r0, [r4, r0]
	cmp r0, #0xa
	bne _0220B434
	mov r0, r7
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	arm_func_end MOD04_0220B404

	arm_func_start MOD04_0220B490
MOD04_0220B490: ; 0x0220B490
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #4
	ldr r7, [sp, #0x28]
	mov sl, r0
	mov fp, r1
	mov sb, r2
	mov r8, r3
	cmp r7, #0
	ble _0220B54C
	mov r5, #0
	mov r4, #0x400
_0220B4BC:
	ldr r0, [sl, #4]
	cmp r0, #0
	addne sp, sp, #4
	mvnne r0, #0
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r3, [sb]
	ldr r0, _0220B558 ; =UNK04_02211A44
	rsb r6, r3, #0x400
	cmp r7, r6
	movle r6, r7
	mov r1, r8
	mov r2, r6
	add r0, r0, r3
	bl MOD04_memcpy
	ldr r0, [sb]
	add r8, r8, r6
	add r0, r0, r6
	str r0, [sb]
	ldr r0, [sb]
	sub r7, r7, r6
	cmp r0, #0x400
	bne _0220B544
	ldr r2, _0220B558 ; =UNK04_02211A44
	mov r0, sl
	mov r1, fp
	mov r3, r4
	str r5, [sp]
	bl MOD04_02209D68
	cmp r0, #0
	addle sp, sp, #4
	ldmleia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, [sb]
	sub r0, r1, r0
	str r0, [sb]
_0220B544:
	cmp r7, #0
	bgt _0220B4BC
_0220B54C:
	ldr r0, [sp, #0x28]
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0220B558: .word UNK04_02211A44
	arm_func_end MOD04_0220B490

	arm_func_start MOD04_0220B55C
MOD04_0220B55C: ; 0x0220B55C
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	mov r0, #0
	mov r4, r1
	str r0, [r5]
	str r0, [r4]
	bl MOD04_02208CE0
	ldr r1, _0220B5FC ; =UNK04_02211914
	ldr r2, [r1]
	cmp r2, #0
	beq _0220B5D8
	ldr r0, [r2, #0xc]
	ldr r0, [r0, #0x14]
	cmp r0, #0
	beq _0220B5D0
	ldr r2, [r2, #0xc]
	mvn r0, #0
	ldr r2, [r2, #0x30]
	ldr r2, [r2, #4]
	str r2, [r5]
	ldr r2, [r1]
	ldr r1, [r2, #0xc]
	ldr r1, [r1, #0x14]
	cmp r1, r0
	moveq r0, #0
	ldrne r0, [r2, #0xc]
	ldrne r0, [r0, #0x14]
	str r0, [r4]
_0220B5D0:
	mov r4, #1
	b _0220B5EC
_0220B5D8:
	ldr r0, _0220B600 ; =UNK04_02211910
	ldr r0, [r0]
	cmp r0, #0
	movne r4, #1
	moveq r4, #0
_0220B5EC:
	bl MOD04_02208CCC
	mov r0, r4
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_0220B5FC: .word UNK04_02211914
_0220B600: .word UNK04_02211910
	arm_func_end MOD04_0220B55C

	arm_func_start MOD04_0220B604
MOD04_0220B604: ; 0x0220B604
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	cmp r1, r3
	mvnlt r0, #0
	ldmltia sp!, {r4, r5, r6, r7, r8, pc}
	sub r1, r1, r3
	add r4, r1, #1
	cmp r4, #0
	mov r8, #0
	ble _0220B680
	ldrsb r5, [r2]
	mov lr, #1
_0220B630:
	ldrsb r1, [r0, r8]
	cmp r5, r1
	bne _0220B674
	mov r7, lr
	cmp r3, #1
	add r6, r0, r8
	ble _0220B668
_0220B64C:
	ldrsb ip, [r6, r7]
	ldrsb r1, [r2, r7]
	cmp ip, r1
	bne _0220B668
	add r7, r7, #1
	cmp r7, r3
	blt _0220B64C
_0220B668:
	cmp r7, r3
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
_0220B674:
	add r8, r8, #1
	cmp r8, r4
	blt _0220B630
_0220B680:
	mvn r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end MOD04_0220B604

	arm_func_start MOD04_0220B688
MOD04_0220B688: ; 0x0220B688
	stmdb sp!, {lr}
	sub sp, sp, #4
	mov ip, #0
	cmp r1, #0
	mov lr, ip
	sub r1, r1, #1
	beq _0220B6F0
	mov r2, #0xa
_0220B6A8:
	ldrsb r3, [r0]
	cmp r3, #0x20
	beq _0220B6E0
	cmp r3, #0x30
	blt _0220B6E0
	cmp r3, #0x39
	bgt _0220B6E0
	mla r3, lr, r2, r3
	add ip, ip, #1
	cmp ip, #9
	addgt sp, sp, #4
	sub lr, r3, #0x30
	mvngt r0, #0
	ldmgtia sp!, {pc}
_0220B6E0:
	cmp r1, #0
	add r0, r0, #1
	sub r1, r1, #1
	bne _0220B6A8
_0220B6F0:
	cmp ip, #0
	mvneq lr, #0
	mov r0, lr
	add sp, sp, #4
	ldmfd sp!, {pc}
	arm_func_end MOD04_0220B688

	arm_func_start MOD04_0220B704
MOD04_0220B704: ; 0x0220B704
	stmdb sp!, {r4, lr}
	mov r2, #1
	mov r3, #0
	b _0220B734
_0220B714:
	cmp ip, #0
	beq _0220B724
	cmp ip, #0x20
	bne _0220B72C
_0220B724:
	mov r0, #0
	ldmia sp!, {r4, pc}
_0220B72C:
	add r0, r0, #1
	add r1, r1, #1
_0220B734:
	ldrsb r4, [r1]
	mov ip, r3
	cmp r4, #0x41
	blt _0220B74C
	cmp r4, #0x5a
	movle ip, r2
_0220B74C:
	cmp ip, #0
	ldrsb ip, [r0]
	addne r4, r4, #0x20
	mov lr, r3
	cmp ip, #0x41
	blt _0220B76C
	cmp ip, #0x5a
	movle lr, r2
_0220B76C:
	cmp lr, #0
	addne lr, ip, #0x20
	moveq lr, ip
	cmp lr, r4
	beq _0220B714
	mvn r0, #0
	ldmia sp!, {r4, pc}
	arm_func_end MOD04_0220B704

	arm_func_start MOD04_0220B788
MOD04_0220B788: ; 0x0220B788
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x24
	ldr r6, _0220B840 ; =UNK04_0220BE70
	add r4, sp, #0
	mov sl, r0
	mov sb, r1
	ldmia r6!, {r0, r1, r2, r3}
	mov r5, r4
	stmia r4!, {r0, r1, r2, r3}
	ldmia r6!, {r0, r1, r2, r3}
	stmia r4!, {r0, r1, r2, r3}
	mov r7, #0
	ldr r0, [r6]
	mov r8, r7
	str r0, [r4]
	mov r1, r7
	mov fp, #1
	mov r4, #0x30
_0220B7D0:
	ldr r6, [r5, r8, lsl #2]
	cmp sb, r6
	blo _0220B808
	mov r0, sb
	mov r1, r6
	bl _u32_div_f
	mul r2, r0, r6
	cmp sl, #0
	addne r0, r0, #0x30
	strneb r0, [sl, r7]
	mov r1, fp
	sub sb, sb, r2
	add r7, r7, #1
	b _0220B81C
_0220B808:
	cmp r1, #0
	beq _0220B81C
	cmp sl, #0
	strneb r4, [sl, r7]
	add r7, r7, #1
_0220B81C:
	add r8, r8, #1
	cmp r8, #9
	blt _0220B7D0
	cmp sl, #0
	addne r0, sb, #0x30
	strneb r0, [sl, r7]
	add r0, r7, #1
	add sp, sp, #0x24
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0220B840: .word UNK04_0220BE70
	arm_func_end MOD04_0220B788

	arm_func_start MOD04_0220B844
MOD04_0220B844: ; 0x0220B844
	stmdb sp!, {r4, r5, r6, lr}
	cmp r1, #0xa
	mvngt r0, #0
	ldmgtia sp!, {r4, r5, r6, pc}
	mov r6, #0
	mov r5, r6
	mov r4, r6
	cmp r1, #0
	ble _0220B8DC
	mov ip, #1
	mov r2, #0xa
_0220B870:
	cmp r4, #0
	ldrsb r3, [r0, r6]
	beq _0220B88C
	cmp r3, #0x20
	beq _0220B8DC
	cmp r3, #0
	beq _0220B8DC
_0220B88C:
	cmp r4, #0
	bne _0220B89C
	cmp r3, #0x20
	beq _0220B8D0
_0220B89C:
	cmp r3, #0x30
	blt _0220B8AC
	cmp r3, #0x39
	ble _0220B8B4
_0220B8AC:
	mvn r0, #0
	ldmia sp!, {r4, r5, r6, pc}
_0220B8B4:
	mla r3, r5, r2, r3
	mov lr, r5
	sub r5, r3, #0x30
	cmp lr, r5
	mov r4, ip
	mvngt r0, #0
	ldmgtia sp!, {r4, r5, r6, pc}
_0220B8D0:
	add r6, r6, #1
	cmp r6, r1
	blt _0220B870
_0220B8DC:
	mov r0, r5
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end MOD04_0220B844

	arm_func_start MOD04_urltostr
MOD04_urltostr: ; 0x0220B8E4
	stmdb sp!, {r4, r5, r6, lr}
	cmp r1, #8
	mvngt r0, #0
	ldmgtia sp!, {r4, r5, r6, pc}
	cmp r1, #8
	bne _0220B90C
	ldrsb r2, [r0]
	cmp r2, #0x37
	mvngt r0, #0
	ldmgtia sp!, {r4, r5, r6, pc}
_0220B90C:
	mov r5, #0
	mov r4, r5
	mov lr, r5
	cmp r1, #0
	ble _0220B9C4
	mov ip, r5
	mov r3, #1
_0220B928:
	ldrsb r6, [r0, r5]
	mov r2, ip
	cmp r6, #0x41
	blt _0220B940
	cmp r6, #0x5a
	movle r2, r3
_0220B940:
	cmp r2, #0
	addne r6, r6, #0x20
	mov r2, r6, lsl #0x18
	mov r2, r2, asr #0x18
	cmp r2, #0x30
	blt _0220B96C
	cmp r2, #0x39
	addle r2, r2, r4, lsl #4
	movle lr, r3
	suble r4, r2, #0x30
	ble _0220B9B8
_0220B96C:
	cmp r2, #0x61
	blt _0220B988
	cmp r2, #0x66
	addle r2, r2, r4, lsl #4
	movle lr, r3
	suble r4, r2, #0x57
	ble _0220B9B8
_0220B988:
	cmp lr, #0
	beq _0220B9A0
	cmp r2, #0x20
	beq _0220B9C4
	cmp r2, #0
	beq _0220B9C4
_0220B9A0:
	cmp lr, #0
	bne _0220B9B0
	cmp r2, #0x20
	beq _0220B9B8
_0220B9B0:
	mvn r0, #0
	ldmia sp!, {r4, r5, r6, pc}
_0220B9B8:
	add r5, r5, #1
	cmp r5, r1
	blt _0220B928
_0220B9C4:
	mov r0, r4
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end MOD04_urltostr

	arm_func_start MOD04_strtourl
MOD04_strtourl: ; 0x0220B9CC
	cmp r1, #0x20
	moveq r1, #0x2b
	streqb r1, [r0]
	moveq r0, #1
	bxeq lr
	cmp r1, #0x30
	blt _0220B9F0
	cmp r1, #0x39
	ble _0220BA10
_0220B9F0:
	cmp r1, #0x41
	blt _0220BA00
	cmp r1, #0x5a
	ble _0220BA10
_0220BA00:
	cmp r1, #0x61
	blt _0220BA1C
	cmp r1, #0x7a
	bgt _0220BA1C
_0220BA10:
	strb r1, [r0]
	mov r0, #1
	bx lr
_0220BA1C:
	mov r2, r1, asr #4
	and r3, r2, #0xf
	mov r2, #0x25
	strb r2, [r0]
	cmp r3, #0xa
	addlt r2, r3, #0x30
	addge r2, r3, #0x37
	and r1, r1, #0xf
	cmp r1, #0xa
	addlt r1, r1, #0x30
	strb r2, [r0, #1]
	addge r1, r1, #0x37
	strb r1, [r0, #2]
	mov r0, #3
	bx lr
	arm_func_end MOD04_strtourl

	arm_func_start MOD04_url_strlen
MOD04_url_strlen: ; 0x0220BA58
	ldrsb r1, [r0], #1
	mov r2, #0
	cmp r1, #0
	beq _0220BAB8
_0220BA68:
	cmp r1, #0x30
	blt _0220BA78
	cmp r1, #0x39
	ble _0220BAA0
_0220BA78:
	cmp r1, #0x41
	blt _0220BA88
	cmp r1, #0x5a
	ble _0220BAA0
_0220BA88:
	cmp r1, #0x61
	blt _0220BA98
	cmp r1, #0x7a
	ble _0220BAA0
_0220BA98:
	cmp r1, #0x20
	bne _0220BAA8
_0220BAA0:
	add r2, r2, #1
	b _0220BAAC
_0220BAA8:
	add r2, r2, #3
_0220BAAC:
	ldrsb r1, [r0], #1
	cmp r1, #0
	bne _0220BA68
_0220BAB8:
	mov r0, r2
	bx lr
	arm_func_end MOD04_url_strlen

	.section .rodata

	.global UNK04_0220BADC
UNK04_0220BADC: ; 0x0220BADC
	.byte 0x57, 0x61, 0x79, 0x70, 0x6F, 0x72, 0x74, 0x32

	.global UNK_0220BAE4
UNK04_0220BAE4: ; 0x0220BAE4
	.byte 0x46, 0x52, 0x45, 0x45, 0x53, 0x50, 0x4F, 0x54

	.global UNK_0220BAEC
UNK04_0220BAEC: ; 0x0220BAEC
	.byte 0x4E, 0x49, 0x4E, 0x54, 0x45, 0x4E, 0x44, 0x4F, 0x57, 0x46, 0x43, 0x00

	.global UNK_0220BAF8
UNK04_0220BAF8: ; 0x0220BAF8
	.byte 0x02, 0x80, 0x00, 0x00, 0x04, 0x80, 0x00, 0x00, 0x08, 0x80, 0x00, 0x00, 0x10, 0x80, 0x00, 0x00
	.byte 0x20, 0x80, 0x00, 0x00, 0x40, 0x80, 0x00, 0x00, 0x80, 0x80, 0x00, 0x00, 0x00, 0x81, 0x00, 0x00
	.byte 0x00, 0x82, 0x00, 0x00, 0x00, 0x84, 0x00, 0x00, 0x00, 0x88, 0x00, 0x00, 0x00, 0x90, 0x00, 0x00
	.byte 0x00, 0xA0, 0x00, 0x00

	.global UNK_0220BB2C
UNK04_0220BB2C: ; 0x0220BB2C
	.byte 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.word UNK04_0220D4CC
	.byte 0x04, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	.global UNK_0220BB84
UNK04_0220BB84: ; 0x0220BB84
	.byte 0x05, 0x01, 0x0C, 0x04, 0x02, 0x03, 0x0A, 0x00, 0x0B, 0x07, 0x09, 0x08, 0x06, 0x00, 0x00, 0x00

	.global UNK_0220BB94
UNK04_0220BB94: ; 0x0220BB94
	.byte 0x0A, 0x0D, 0x0E, 0x08, 0x09, 0x03, 0x06, 0x00, 0x0C, 0x05, 0x02, 0x07, 0x0B, 0x01, 0x0F, 0x04

	.global UNK_0220BBA4
UNK04_0220BBA4: ; 0x0220BBA4
	.byte 0x17, 0x14, 0x11, 0x0D, 0x0B, 0x06, 0x0F, 0x0E, 0x09, 0x15, 0x0C, 0x04, 0x02, 0x01, 0x12, 0x10
	.byte 0x05, 0x03, 0x13, 0x0A, 0x07, 0x08, 0x00, 0x16

	.global UNK_0220BBBC
UNK04_0220BBBC: ; 0x0220BBBC
	.byte 0x5B, 0x5D, 0x5F, 0x00

	.global UNK_0220BBC0
UNK04_0220BBC0: ; 0x0220BBC0
	.byte 0x2D, 0x5F, 0x3D, 0x00

	.global UNK_0220BBC4
UNK04_0220BBC4: ; 0x0220BBC4
	.byte 0x2B, 0x2F, 0x3D, 0x00

	.global UNK_0220BBC8
UNK04_0220BBC8: ; 0x0220BBC8
	.byte 0x13, 0x1D, 0x01, 0x04, 0x00, 0x00, 0x00, 0x28, 0x1F, 0x06, 0x45, 0x34, 0x3F, 0x01, 0x1B, 0x00

	.global UNK_0220BBD8
UNK04_0220BBD8: ; 0x0220BBD8
	.byte 0x5C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	.global UNK_0220BCD8
UNK04_0220BCD8: ; 0x0220BCD8
	.byte 0xFD, 0xFC, 0x1E, 0x66, 0x6A, 0xB2, 0x00, 0x00

	.global UNK_0220BCE0
UNK04_0220BCE0: ; 0x0220BCE0
	.word UNK04_0220F7CC, UNK04_0220F7C4

	.global UNK_0220BCE8
UNK04_0220BCE8: ; 0x0220BCE8
	.byte 0x41, 0x42, 0x43, 0x44, 0x45, 0x46, 0x47, 0x48, 0x49, 0x4A, 0x4B, 0x4C, 0x4D, 0x4E, 0x4F, 0x50
	.byte 0x51, 0x52, 0x53, 0x54, 0x55, 0x56, 0x57, 0x58, 0x59, 0x5A, 0x61, 0x62, 0x63, 0x64, 0x65, 0x66
	.byte 0x67, 0x68, 0x69, 0x6A, 0x6B, 0x6C, 0x6D, 0x6E, 0x6F, 0x70, 0x71, 0x72, 0x73, 0x74, 0x75, 0x76
	.byte 0x77, 0x78, 0x79, 0x7A, 0x30, 0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37, 0x38, 0x39, 0x2E, 0x2D
	.byte 0x00, 0x00, 0x00, 0x00

	.global UNK_0220BD2C
UNK04_0220BD2C: ; 0x0220BD2C
	.byte 0x30, 0x30, 0x3A, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x2D, 0x30, 0x30, 0x00, 0x00, 0x00

	.global UNK_0220BD3C
UNK04_0220BD3C: ; 0x0220BD3C
	.byte 0x62, 0x47, 0x6C, 0x7A, 0x64, 0x41, 0x2A, 0x2A, 0x00, 0x00, 0x00, 0x00

	.global UNK_0220BD48
UNK04_0220BD48: ; 0x0220BD48
	.byte 0x59, 0x32, 0x39, 0x31, 0x62, 0x6E, 0x51, 0x2A, 0x00, 0x00, 0x00, 0x00

	.global UNK_0220BD54
UNK04_0220BD54: ; 0x0220BD54
	.byte 0x59, 0x32, 0x39, 0x75, 0x64, 0x47, 0x56, 0x75, 0x64, 0x48, 0x4D, 0x2A, 0x00, 0x00, 0x00, 0x00

	.global UNK_0220BD64
UNK04_0220BD64: ; 0x0220BD64
	.byte 0x00, 0x00, 0xC1, 0x6F, 0xF2, 0x86, 0x23, 0x00, 0x00, 0x80, 0xC6, 0xA4, 0x7E, 0x8D, 0x03, 0x00
	.byte 0x00, 0x40, 0x7A, 0x10, 0xF3, 0x5A, 0x00, 0x00, 0x00, 0xA0, 0x72, 0x4E, 0x18, 0x09, 0x00, 0x00
	.byte 0x00, 0x10, 0xA5, 0xD4, 0xE8, 0x00, 0x00, 0x00, 0x00, 0xE8, 0x76, 0x48, 0x17, 0x00, 0x00, 0x00
	.byte 0x00, 0xE4, 0x0B, 0x54, 0x02, 0x00, 0x00, 0x00, 0x00, 0xCA, 0x9A, 0x3B, 0x00, 0x00, 0x00, 0x00 ;pointer???
	.byte 0x00, 0xE1, 0xF5, 0x05, 0x00, 0x00, 0x00, 0x00, 0x80, 0x96, 0x98, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x40, 0x42, 0x0F, 0x00, 0x00, 0x00, 0x00, 0x00, 0xA0, 0x86, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x10, 0x27, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xE8, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x64, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	.global UNK_0220BDE4
UNK04_0220BDE4: ; 0x0220BDE4
	.byte 0x2D, 0x2D, 0x74, 0x39, 0x53, 0x66, 0x34, 0x79, 0x66, 0x6A, 0x66, 0x31, 0x52, 0x74, 0x76, 0x44
	.byte 0x75, 0x33, 0x41

	.global UNK_0220BDF7
UNK04_0220BDF7: ; 0x0220BDF7
	.byte 0x41, 0x00, 0x00, 0x00, 0x00

	.global UNK_0220BDFC
UNK04_0220BDFC: ; 0x0220BDFC
	.byte 0x43, 0x6F, 0x6E, 0x74, 0x65, 0x6E, 0x74, 0x2D, 0x44, 0x69, 0x73, 0x70, 0x6F, 0x73, 0x69, 0x74
	.byte 0x69, 0x6F, 0x6E, 0x3A, 0x20, 0x66, 0x6F, 0x72, 0x6D, 0x2D, 0x64, 0x61, 0x74, 0x61, 0x3B, 0x20
	.byte 0x6E, 0x61, 0x6D, 0x65, 0x3D, 0x22, 0x00, 0x00

	.global UNK_0220BE24
UNK04_0220BE24: ; 0x0220BE24
	.byte 0x43, 0x6F, 0x6E, 0x74, 0x65, 0x6E, 0x74, 0x2D, 0x54, 0x79, 0x70, 0x65, 0x3A, 0x20, 0x61, 0x70
	.byte 0x70, 0x6C, 0x69, 0x63, 0x61, 0x74, 0x69, 0x6F, 0x6E, 0x2F, 0x6F, 0x63, 0x74, 0x65, 0x74, 0x2D
	.byte 0x73, 0x74, 0x72, 0x65, 0x61, 0x6D, 0x0D, 0x0A, 0x43, 0x6F, 0x6E, 0x74, 0x65, 0x6E, 0x74, 0x2D
	.byte 0x54, 0x72, 0x61, 0x6E, 0x73, 0x66, 0x65, 0x72, 0x2D, 0x45, 0x6E, 0x63, 0x6F, 0x64, 0x69, 0x6E
	.byte 0x67, 0x3A, 0x20, 0x62, 0x69, 0x6E, 0x61, 0x72, 0x79, 0x0D, 0x0A, 0x00

	.global UNK_0220BE70
UNK04_0220BE70: ; 0x0220BE70
	.byte 0x00, 0xCA, 0x9A, 0x3B, 0x00, 0xE1, 0xF5, 0x05, 0x80, 0x96, 0x98, 0x00, 0x40, 0x42, 0x0F, 0x00
	.byte 0xA0, 0x86, 0x01, 0x00, 0x10, 0x27, 0x00, 0x00, 0xE8, 0x03, 0x00, 0x00, 0x64, 0x00, 0x00, 0x00
	.byte 0x0A, 0x00, 0x00, 0x00

	.section .data

	.global UNK_0220D4BC
UNK04_0220D4BC: ; 0x0220D4BC
	.byte 0x44, 0x54, 0x00, 0x00

	.global UNK_0220D4C0
UNK04_0220D4C0: ; 0x0220D4C0
	.byte 0x4E, 0x57, 0x43, 0x55, 0x53, 0x42, 0x41, 0x50, 0x00, 0x00, 0x00, 0x00

	.global UNK_0220D4CC
UNK04_0220D4CC: ; 0x0220D4CC
	.byte 0x4E, 0x49, 0x4E, 0x54
	.byte 0x45, 0x4E, 0x44, 0x4F, 0x2D, 0x44, 0x53, 0x00

	.global UNK_0220D4D8
UNK04_0220D4D8: ; 0x0220D4D8
	.word UNK04_0220D508

	.global UNK_0220D4DC
UNK04_0220D4DC: ; 0x0220D4DC
	.word UNK04_0220D4E8

	.global UNK_0220D4E0
UNK04_0220D4E0: ; 0x0220D4E0
	.word UNK04_0220D4F8

	.global UNK_0220D4E4
UNK04_0220D4E4: ; 0x0220D4E4
	.word UNK04_0220D524

	.global UNK_0220D4E8
UNK04_0220D4E8: ; 0x0220D4E8
	.byte 0x67, 0x77, 0x69, 0x27, 0x36, 0x26, 0x66, 0x73, 0x3D, 0x30, 0x4E, 0x66
	.byte 0x7E, 0x00, 0x00, 0x00

	.global UNK_0220D4F8
UNK04_0220D4F8: ; 0x0220D4F8
	.byte 0x25, 0x28, 0x65, 0x67, 0x45, 0x72, 0x29, 0x61, 0x67, 0x28, 0x73, 0x26
	.byte 0x6D, 0x00, 0x00, 0x00

	.global UNK_0220D508
UNK04_0220D508: ; 0x0220D508
	.byte 0x33, 0x38, 0x67, 0x36, 0x7A, 0x78, 0x6A, 0x6B, 0x32, 0x30, 0x67, 0x76
	.byte 0x6D, 0x76, 0x5D, 0x36, 0x5E, 0x3D, 0x6A, 0x26, 0x25, 0x76, 0x59, 0x31, 0x00, 0x00, 0x00, 0x00

	.global UNK_0220D524
UNK04_0220D524: ; 0x0220D524
	.byte 0x39, 0x35, 0x32, 0x75, 0x79, 0x62, 0x6A, 0x6E, 0x70, 0x6D, 0x75, 0x39, 0x30, 0x33, 0x62, 0x69
	.byte 0x61, 0x40, 0x62, 0x6B, 0x35, 0x6D, 0x5B, 0x2D, 0x00, 0x00, 0x00, 0x00

	.global UNK_0220D540
UNK04_0220D540: ; 0x0220D540
	.byte 0x4E, 0x57, 0x43, 0x55, 0x53, 0x42, 0x41, 0x50, 0x00, 0x00, 0x00, 0x00

	.global UNK_0220D54C
UNK04_0220D54C: ; 0x0220D54C
	.byte 0x4E, 0x44, 0x57, 0x43, 0x53, 0x48, 0x41, 0x50, 0x00, 0x00, 0x00, 0x00

	.global UNK_0220D558
UNK04_0220D558: ; 0x0220D558
	.byte 0xFE, 0xFD, 0x09, 0x00

	.global UNK_0220D55C
UNK04_0220D55C: ; 0x0220D55C
	.byte 0x25, 0x73, 0x2E, 0x61, 0x76, 0x61, 0x69, 0x6C, 0x61, 0x62, 0x6C, 0x65, 0x2E, 0x67, 0x73, 0x2E
	.byte 0x6E, 0x69, 0x6E, 0x74, 0x65, 0x6E, 0x64, 0x6F, 0x77, 0x69, 0x66, 0x69, 0x2E, 0x6E, 0x65, 0x74
	.byte 0x00, 0x00, 0x00, 0x00

	.global UNK_0220D580
UNK04_0220D580: ; 0x0220D580
	.byte 0x66, 0x6E, 0x00, 0x00

	.global UNK_0220D584
UNK04_0220D584: ; 0x0220D584
	.byte 0x64, 0x61, 0x72, 0x72, 0x61, 0x79, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x00

	.global UNK_0220D590
UNK04_0220D590: ; 0x0220D590
	.byte 0x28, 0x6E, 0x20, 0x3E, 0x3D, 0x20, 0x30, 0x29, 0x20, 0x26, 0x26, 0x20, 0x28, 0x6E, 0x20, 0x3C
	.byte 0x20, 0x61, 0x72, 0x72, 0x61, 0x79, 0x2D, 0x3E, 0x63, 0x6F, 0x75, 0x6E, 0x74, 0x29, 0x00, 0x00

	.global UNK_0220D5B0
UNK04_0220D5B0: ; 0x0220D5B0
	.byte 0x63, 0x6F, 0x6D, 0x70, 0x61, 0x72, 0x61, 0x74, 0x6F, 0x72, 0x00, 0x00

	.global UNK_0220D5BC
UNK04_0220D5BC: ; 0x0220D5BC
	.byte 0x28, 0x6E, 0x20, 0x3E, 0x3D, 0x20, 0x30, 0x29, 0x20, 0x26, 0x26, 0x20, 0x28, 0x6E, 0x20, 0x3C
	.byte 0x3D, 0x20, 0x61, 0x72, 0x72, 0x61, 0x79, 0x2D, 0x3E, 0x63, 0x6F, 0x75, 0x6E, 0x74, 0x29, 0x00

	.global UNK_0220D5DC
UNK04_0220D5DC: ; 0x0220D5DC
	.byte 0x61, 0x72, 0x72, 0x61, 0x79, 0x00, 0x00, 0x00

	.global UNK_0220D5E4
UNK04_0220D5E4: ; 0x0220D5E4
	.byte 0x65, 0x6C, 0x65, 0x6D, 0x53, 0x69, 0x7A, 0x65, 0x00, 0x00, 0x00, 0x00

	.global UNK_0220D5F0
UNK04_0220D5F0: ; 0x0220D5F0
	.byte 0x61, 0x72, 0x72, 0x61, 0x79, 0x2D, 0x3E, 0x6C, 0x69, 0x73, 0x74, 0x00

	.global UNK_0220D5FC
UNK04_0220D5FC: ; 0x0220D5FC
	.byte 0x66, 0x6E, 0x00, 0x00

	.global UNK_0220D600
UNK04_0220D600: ; 0x0220D600
	.byte 0x68, 0x61, 0x73, 0x68, 0x74, 0x61, 0x62, 0x6C, 0x65, 0x2E, 0x63, 0x00

	.global UNK_0220D60C
UNK04_0220D60C: ; 0x0220D60C
	.byte 0x74, 0x61, 0x62, 0x6C, 0x65, 0x00, 0x00, 0x00

	.global UNK_0220D614
UNK04_0220D614: ; 0x0220D614
	.byte 0x68, 0x61, 0x73, 0x68, 0x46, 0x6E, 0x00, 0x00

	.global UNK_0220D61C
UNK04_0220D61C: ; 0x0220D61C
	.byte 0x63, 0x6F, 0x6D, 0x70, 0x46, 0x6E, 0x00, 0x00

	.global UNK_0220D624
UNK04_0220D624: ; 0x0220D624
	.byte 0x65, 0x6C, 0x65, 0x6D, 0x53, 0x69, 0x7A, 0x65, 0x00, 0x00, 0x00, 0x00

	.global UNK_0220D630
UNK04_0220D630: ; 0x0220D630
	.byte 0x6E, 0x42, 0x75, 0x63, 0x6B, 0x65, 0x74, 0x73, 0x00, 0x00, 0x00, 0x00

	.global UNK_0220D63C
UNK04_0220D63C: ; 0x0220D63C
	.byte 0x74, 0x61, 0x62, 0x6C, 0x65, 0x2D, 0x3E, 0x62, 0x75, 0x63, 0x6B, 0x65, 0x74, 0x73, 0x00, 0x00

	.global UNK_0220D64C
UNK04_0220D64C: ; 0x0220D64C
	.byte 0x25, 0x30, 0x32, 0x78, 0x00, 0x00, 0x00, 0x00

	.global UNK_0220D654
UNK04_0220D654: ; 0x0220D654
	.byte 0x01, 0x00, 0x00, 0x00

	.global UNK_0220D658
UNK04_0220D658: ; 0x0220D658
	.byte 0x4F, 0x53, 0x5F, 0x49, 0x73, 0x54, 0x69, 0x63, 0x6B, 0x41, 0x76, 0x61, 0x69, 0x6C, 0x61, 0x62
	.byte 0x6C, 0x65, 0x28, 0x29, 0x20, 0x3D, 0x3D, 0x20, 0x54, 0x52, 0x55, 0x45, 0x00, 0x00, 0x00, 0x00

	.global UNK_0220D678
UNK04_0220D678: ; 0x0220D678
	.byte 0x6E, 0x6F, 0x6E, 0x70, 0x6F, 0x72, 0x74, 0x2E, 0x63, 0x00, 0x00, 0x00

	.global UNK_0220D684
UNK04_0220D684: ; 0x0220D684
	.byte 0x6C, 0x6F, 0x63, 0x61, 0x6C, 0x68, 0x6F, 0x73, 0x74, 0x00, 0x00, 0x00

	.global UNK_0220D690
UNK04_0220D690: ; 0x0220D690
	.byte 0x54, 0x68, 0x65, 0x20, 0x63, 0x6F, 0x6E, 0x6E, 0x65, 0x63, 0x74, 0x69, 0x6F, 0x6E, 0x20, 0x68
	.byte 0x61, 0x73, 0x20, 0x61, 0x6C, 0x72, 0x65, 0x61, 0x64, 0x79, 0x20, 0x62, 0x65, 0x65, 0x6E, 0x20
	.byte 0x64, 0x69, 0x73, 0x63, 0x6F, 0x6E, 0x6E, 0x65, 0x63, 0x74, 0x65, 0x64, 0x2E, 0x00, 0x00, 0x00

	.global UNK_0220D6C0
UNK04_0220D6C0: ; 0x0220D6C0
	.byte 0x5C, 0x73, 0x65, 0x73, 0x73, 0x6B, 0x65, 0x79, 0x5C, 0x00, 0x00, 0x00

	.global UNK_0220D6CC
UNK04_0220D6CC: ; 0x0220D6CC
	.byte 0x5C, 0x66, 0x69, 0x6E, 0x61, 0x6C, 0x5C, 0x00

	.global UNK_0220D6D4
UNK04_0220D6D4: ; 0x0220D6D4
	.byte 0x4E, 0x6F, 0x20, 0x63, 0x61, 0x6C, 0x6C, 0x62, 0x61, 0x63, 0x6B, 0x2E, 0x00, 0x00, 0x00, 0x00

	.global UNK_0220D6E4
UNK04_0220D6E4: ; 0x0220D6E4
	.byte 0x49, 0x6E, 0x76, 0x61, 0x6C, 0x69, 0x64, 0x20, 0x6D, 0x65, 0x73, 0x73, 0x61, 0x67, 0x65, 0x2E
	.byte 0x00, 0x00, 0x00, 0x00

	.global UNK_0220D6F8
UNK04_0220D6F8: ; 0x0220D6F8
	.byte 0x49, 0x6E, 0x76, 0x61, 0x6C, 0x69, 0x64, 0x20, 0x73, 0x74, 0x61, 0x74, 0x75, 0x73, 0x53, 0x74
	.byte 0x72, 0x69, 0x6E, 0x67, 0x2E, 0x00, 0x00, 0x00

	.global UNK_0220D710
UNK04_0220D710: ; 0x0220D710
	.byte 0x49, 0x6E, 0x76, 0x61, 0x6C, 0x69, 0x64, 0x20, 0x6C, 0x6F, 0x63, 0x61, 0x74, 0x69, 0x6F, 0x6E
	.byte 0x53, 0x74, 0x72, 0x69, 0x6E, 0x67, 0x2E, 0x00

	.global UNK_0220D728
UNK04_0220D728: ; 0x0220D728
	.byte 0x5C, 0x73, 0x74, 0x61, 0x74, 0x75, 0x73, 0x5C, 0x00, 0x00, 0x00, 0x00

	.global UNK_0220D734
UNK04_0220D734: ; 0x0220D734
	.byte 0x5C, 0x73, 0x74, 0x61, 0x74, 0x73, 0x74, 0x72, 0x69, 0x6E, 0x67, 0x5C, 0x00, 0x00, 0x00, 0x00

	.global UNK_0220D744
UNK04_0220D744: ; 0x0220D744
	.byte 0x5C, 0x6C, 0x6F, 0x63, 0x73, 0x74, 0x72, 0x69, 0x6E, 0x67, 0x5C, 0x00

	.global UNK_0220D750
UNK04_0220D750: ; 0x0220D750
	.byte 0x49, 0x6E, 0x76, 0x61, 0x6C, 0x69, 0x64, 0x20, 0x73, 0x74, 0x61, 0x74, 0x75, 0x73, 0x2E, 0x00

	.global UNK_0220D760
UNK04_0220D760: ; 0x0220D760
	.byte 0x49, 0x6E, 0x76, 0x61, 0x6C, 0x69, 0x64, 0x20, 0x69, 0x6E, 0x64, 0x65, 0x78, 0x2E, 0x00, 0x00

	.global UNK_0220D770
UNK04_0220D770: ; 0x0220D770
	.byte 0x62, 0x75, 0x64, 0x64, 0x79, 0x53, 0x74, 0x61, 0x74, 0x75, 0x73, 0x00

	.global UNK_0220D77C
UNK04_0220D77C: ; 0x0220D77C
	.byte 0x67, 0x70, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x00

	.global UNK_0220D784
UNK04_0220D784: ; 0x0220D784
	.byte 0x49, 0x6E, 0x76, 0x61, 0x6C, 0x69, 0x64, 0x20, 0x72, 0x65, 0x61, 0x73, 0x6F, 0x6E, 0x2E, 0x00

	.global UNK_0220D794
UNK04_0220D794: ; 0x0220D794
	.byte 0x5C, 0x61, 0x64, 0x64, 0x62, 0x75, 0x64, 0x64, 0x79, 0x5C, 0x00, 0x00

	.global UNK_0220D7A0
UNK04_0220D7A0: ; 0x0220D7A0
	.byte 0x5C, 0x6E, 0x65, 0x77, 0x70, 0x72, 0x6F, 0x66, 0x69, 0x6C, 0x65, 0x69, 0x64, 0x5C, 0x00, 0x00

	.global UNK_0220D7B0
UNK04_0220D7B0: ; 0x0220D7B0
	.byte 0x5C, 0x72, 0x65, 0x61, 0x73, 0x6F, 0x6E, 0x5C, 0x00, 0x00, 0x00, 0x00

	.global UNK_0220D7BC
UNK04_0220D7BC: ; 0x0220D7BC
	.byte 0x00, 0x00, 0x00, 0x00

	.global UNK_0220D7C0
UNK04_0220D7C0: ; 0x0220D7C0
	.byte 0x49, 0x6E, 0x76, 0x61, 0x6C, 0x69, 0x64, 0x20, 0x66, 0x75, 0x6E, 0x63, 0x2E, 0x00, 0x00, 0x00

	.global UNK_0220D7D0
UNK04_0220D7D0: ; 0x0220D7D0
	.byte 0x28, 0x69, 0x63, 0x6F, 0x6E, 0x6E, 0x65, 0x63, 0x74, 0x69, 0x6F, 0x6E, 0x2D, 0x3E, 0x63, 0x6F
	.byte 0x6E, 0x6E, 0x65, 0x63, 0x74, 0x53, 0x74, 0x61, 0x74, 0x65, 0x20, 0x3D, 0x3D, 0x20, 0x47, 0x50
	.byte 0x49, 0x5F, 0x4E, 0x4F, 0x54, 0x5F, 0x43, 0x4F, 0x4E, 0x4E, 0x45, 0x43, 0x54, 0x45, 0x44, 0x29
	.byte 0x20, 0x7C, 0x7C, 0x20, 0x28, 0x69, 0x63, 0x6F, 0x6E, 0x6E, 0x65, 0x63, 0x74, 0x69, 0x6F, 0x6E
	.byte 0x2D, 0x3E, 0x63, 0x6F, 0x6E, 0x6E, 0x65, 0x63, 0x74, 0x53, 0x74, 0x61, 0x74, 0x65, 0x20, 0x3D
	.byte 0x3D, 0x20, 0x47, 0x50, 0x49, 0x5F, 0x43, 0x4F, 0x4E, 0x4E, 0x45, 0x43, 0x54, 0x49, 0x4E, 0x47
	.byte 0x29, 0x20, 0x7C, 0x7C, 0x20, 0x28, 0x69, 0x63, 0x6F, 0x6E, 0x6E, 0x65, 0x63, 0x74, 0x69, 0x6F
	.byte 0x6E, 0x2D, 0x3E, 0x63, 0x6F, 0x6E, 0x6E, 0x65, 0x63, 0x74, 0x53, 0x74, 0x61, 0x74, 0x65, 0x20
	.byte 0x3D, 0x3D, 0x20, 0x47, 0x50, 0x49, 0x5F, 0x4E, 0x45, 0x47, 0x4F, 0x54, 0x49, 0x41, 0x54, 0x49
	.byte 0x4E, 0x47, 0x29, 0x20, 0x7C, 0x7C, 0x20, 0x28, 0x69, 0x63, 0x6F, 0x6E, 0x6E, 0x65, 0x63, 0x74
	.byte 0x69, 0x6F, 0x6E, 0x2D, 0x3E, 0x63, 0x6F, 0x6E, 0x6E, 0x65, 0x63, 0x74, 0x53, 0x74, 0x61, 0x74
	.byte 0x65, 0x20, 0x3D, 0x3D, 0x20, 0x47, 0x50, 0x49, 0x5F, 0x43, 0x4F, 0x4E, 0x4E, 0x45, 0x43, 0x54
	.byte 0x45, 0x44, 0x29, 0x20, 0x7C, 0x7C, 0x20, 0x28, 0x69, 0x63, 0x6F, 0x6E, 0x6E, 0x65, 0x63, 0x74
	.byte 0x69, 0x6F, 0x6E, 0x2D, 0x3E, 0x63, 0x6F, 0x6E, 0x6E, 0x65, 0x63, 0x74, 0x53, 0x74, 0x61, 0x74
	.byte 0x65, 0x20, 0x3D, 0x3D, 0x20, 0x47, 0x50, 0x49, 0x5F, 0x44, 0x49, 0x53, 0x43, 0x4F, 0x4E, 0x4E
	.byte 0x45, 0x43, 0x54, 0x45, 0x44, 0x29, 0x00, 0x00

	.global UNK_0220D8C8
UNK04_0220D8C8: ; 0x0220D8C8
	.byte 0x67, 0x70, 0x69, 0x2E, 0x63, 0x00, 0x00, 0x00

	.global UNK_0220D8D0
UNK04_0220D8D0: ; 0x0220D8D0
	.byte 0x30, 0x00, 0x00, 0x00

	.global UNK_0220D8D4
UNK04_0220D8D4: ; 0x0220D8D4
	.byte 0x43, 0x4D, 0x00, 0x00

	.global UNK_0220D8D8
UNK04_0220D8D8: ; 0x0220D8D8
	.byte 0x54, 0x68, 0x65, 0x72, 0x65, 0x20, 0x77, 0x61, 0x73, 0x20, 0x61, 0x6E, 0x20, 0x65, 0x72, 0x72
	.byte 0x6F, 0x72, 0x20, 0x72, 0x65, 0x61, 0x64, 0x69, 0x6E, 0x67, 0x20, 0x66, 0x72, 0x6F, 0x6D, 0x20
	.byte 0x74, 0x68, 0x65, 0x20, 0x73, 0x65, 0x72, 0x76, 0x65, 0x72, 0x2E, 0x00

	.global UNK_0220D904
UNK04_0220D904: ; 0x0220D904
	.byte 0x5C, 0x66, 0x69, 0x6E, 0x61, 0x6C, 0x5C, 0x00

	.global UNK_0220D90C
UNK04_0220D90C: ; 0x0220D90C
	.byte 0x43, 0x4D, 0x44, 0x3A, 0x20, 0x25, 0x73, 0x0A, 0x00, 0x00, 0x00, 0x00

	.global UNK_0220D918
UNK04_0220D918: ; 0x0220D918
	.byte 0x4F, 0x75, 0x74, 0x20, 0x6F, 0x66, 0x20, 0x6D, 0x65, 0x6D, 0x6F, 0x72, 0x79, 0x2E, 0x00, 0x00

	.global UNK_0220D928
UNK04_0220D928: ; 0x0220D928
	.byte 0x5C, 0x69, 0x64, 0x5C, 0x00, 0x00, 0x00, 0x00

	.global UNK_0220D930
UNK04_0220D930: ; 0x0220D930
	.byte 0x4E, 0x6F, 0x20, 0x6D, 0x61, 0x74, 0x63, 0x68, 0x69, 0x6E, 0x67, 0x20, 0x6F, 0x70, 0x65, 0x72
	.byte 0x61, 0x74, 0x69, 0x6F, 0x6E, 0x20, 0x66, 0x6F, 0x75, 0x6E, 0x64, 0x20, 0x66, 0x6F, 0x72, 0x20
	.byte 0x69, 0x64, 0x20, 0x25, 0x64, 0x0A, 0x00, 0x00

	.global UNK_0220D958
UNK04_0220D958: ; 0x0220D958
	.byte 0x5C, 0x62, 0x6D, 0x5C, 0x00, 0x00, 0x00, 0x00

	.global UNK_0220D960
UNK04_0220D960: ; 0x0220D960
	.byte 0x5C, 0x6B, 0x61, 0x5C, 0x00, 0x00, 0x00, 0x00

	.global UNK_0220D968
UNK04_0220D968: ; 0x0220D968
	.byte 0x52, 0x65, 0x63, 0x65, 0x69, 0x76, 0x65, 0x64, 0x20, 0x61, 0x6E, 0x20, 0x75, 0x6E, 0x72, 0x65
	.byte 0x63, 0x6F, 0x67, 0x6E, 0x69, 0x7A, 0x65, 0x64, 0x2C, 0x20, 0x75, 0x6E, 0x73, 0x6F, 0x6C, 0x69
	.byte 0x63, 0x69, 0x74, 0x65, 0x64, 0x20, 0x6D, 0x65, 0x73, 0x73, 0x61, 0x67, 0x65, 0x2E, 0x0A, 0x00

	.global UNK_0220D998
UNK04_0220D998: ; 0x0220D998
	.byte 0x54, 0x68, 0x65, 0x20, 0x73, 0x65, 0x72, 0x76, 0x65, 0x72, 0x20, 0x68, 0x61, 0x73, 0x20, 0x63
	.byte 0x6C, 0x6F, 0x73, 0x65, 0x64, 0x20, 0x74, 0x68, 0x65, 0x20, 0x63, 0x6F, 0x6E, 0x6E, 0x65, 0x63
	.byte 0x74, 0x69, 0x6F, 0x6E, 0x2E, 0x00, 0x00, 0x00

	.global UNK_0220D9C0
UNK04_0220D9C0: ; 0x0220D9C0
	.byte 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x2A, 0x2A, 0x2A, 0x2A, 0x2A, 0x2A, 0x2A, 0x2A, 0x2A, 0x2A, 0x2A
	.byte 0x2A, 0x2A, 0x0A, 0x67, 0x70, 0x69, 0x49, 0x6E, 0x69, 0x74, 0x69, 0x61, 0x6C, 0x69, 0x7A, 0x65
	.byte 0x0A, 0x00, 0x00, 0x00

	.global UNK_0220D9E4
UNK04_0220D9E4: ; 0x0220D9E4
	.byte 0x49, 0x6E, 0x76, 0x61, 0x6C, 0x69, 0x64, 0x20, 0x70, 0x72, 0x6F, 0x66, 0x69, 0x6C, 0x65, 0x2E
	.byte 0x00, 0x00, 0x00, 0x00

	.global UNK_0220D9F8
UNK04_0220D9F8: ; 0x0220D9F8
	.byte 0x5C, 0x64, 0x65, 0x6C, 0x62, 0x75, 0x64, 0x64, 0x79, 0x5C, 0x00, 0x00

	.global UNK_0220DA04
UNK04_0220DA04: ; 0x0220DA04
	.byte 0x5C, 0x73, 0x65, 0x73, 0x73, 0x6B, 0x65, 0x79, 0x5C, 0x00, 0x00, 0x00

	.global UNK_0220DA10
UNK04_0220DA10: ; 0x0220DA10
	.byte 0x5C, 0x64, 0x65, 0x6C, 0x70, 0x72, 0x6F, 0x66, 0x69, 0x6C, 0x65, 0x69, 0x64, 0x5C, 0x00, 0x00

	.global UNK_0220DA20
UNK04_0220DA20: ; 0x0220DA20
	.byte 0x5C, 0x66, 0x69, 0x6E, 0x61, 0x6C, 0x5C, 0x00

	.global UNK_0220DA28
UNK04_0220DA28: ; 0x0220DA28
	.byte 0x69, 0x6E, 0x64, 0x65, 0x78, 0x20, 0x3E, 0x3D, 0x20, 0x30, 0x00, 0x00

	.global UNK_0220DA34
UNK04_0220DA34: ; 0x0220DA34
	.byte 0x67, 0x70, 0x69, 0x42, 0x75, 0x64, 0x64, 0x79, 0x2E, 0x63, 0x00, 0x00

	.global UNK_0220DA40
UNK04_0220DA40: ; 0x0220DA40
	.byte 0x69, 0x63, 0x6F, 0x6E, 0x6E, 0x65, 0x63, 0x74, 0x69, 0x6F, 0x6E, 0x2D, 0x3E, 0x70, 0x72, 0x6F
	.byte 0x66, 0x69, 0x6C, 0x65, 0x4C, 0x69, 0x73, 0x74, 0x2E, 0x6E, 0x75, 0x6D, 0x42, 0x75, 0x64, 0x64
	.byte 0x69, 0x65, 0x73, 0x20, 0x3E, 0x3D, 0x20, 0x30, 0x00, 0x00, 0x00, 0x00

	.global UNK_0220DA6C
UNK04_0220DA6C: ; 0x0220DA6C
	.byte 0x5C, 0x62, 0x6D, 0x5C, 0x00, 0x00, 0x00, 0x00

	.global UNK_0220DA74
UNK04_0220DA74: ; 0x0220DA74
	.byte 0x5C, 0x74, 0x5C, 0x00

	.global UNK_0220DA78
UNK04_0220DA78: ; 0x0220DA78
	.byte 0x5C, 0x6D, 0x73, 0x67, 0x5C, 0x00, 0x00, 0x00

	.global UNK_0220DA80
UNK04_0220DA80: ; 0x0220DA80
	.byte 0x55, 0x6E, 0x65, 0x78, 0x70, 0x65, 0x63, 0x74, 0x65, 0x64, 0x20, 0x64, 0x61, 0x74, 0x61, 0x20
	.byte 0x77, 0x61, 0x73, 0x20, 0x72, 0x65, 0x63, 0x65, 0x69, 0x76, 0x65, 0x64, 0x20, 0x66, 0x72, 0x6F
	.byte 0x6D, 0x20, 0x74, 0x68, 0x65, 0x20, 0x73, 0x65, 0x72, 0x76, 0x65, 0x72, 0x2E, 0x00, 0x00, 0x00

	.global UNK_0220DAB0
UNK04_0220DAB0: ; 0x0220DAB0
	.byte 0x5C, 0x66, 0x5C, 0x00

	.global UNK_0220DAB4
UNK04_0220DAB4: ; 0x0220DAB4
	.byte 0x5C, 0x64, 0x61, 0x74, 0x65, 0x5C, 0x00, 0x00

	.global UNK_0220DABC
UNK04_0220DABC: ; 0x0220DABC
	.byte 0x4F, 0x75, 0x74, 0x20, 0x6F, 0x66, 0x20, 0x6D, 0x65, 0x6D, 0x6F, 0x72, 0x79, 0x2E, 0x00, 0x00

	.global UNK_0220DACC
UNK04_0220DACC: ; 0x0220DACC
	.byte 0x7C, 0x73, 0x69, 0x67, 0x6E, 0x65, 0x64, 0x7C, 0x00, 0x00, 0x00, 0x00

	.global UNK_0220DAD8
UNK04_0220DAD8: ; 0x0220DAD8
	.byte 0x7C, 0x73, 0x7C, 0x00

	.global UNK_0220DADC
UNK04_0220DADC: ; 0x0220DADC
	.byte 0x7C, 0x73, 0x73, 0x7C, 0x00, 0x00, 0x00, 0x00

	.global UNK_0220DAE4
UNK04_0220DAE4: ; 0x0220DAE4
	.byte 0x7C, 0x6C, 0x73, 0x7C, 0x00, 0x00, 0x00, 0x00

	.global UNK_0220DAEC
UNK04_0220DAEC: ; 0x0220DAEC
	.byte 0x7C, 0x69, 0x70, 0x7C, 0x00, 0x00, 0x00, 0x00

	.global UNK_0220DAF4
UNK04_0220DAF4: ; 0x0220DAF4
	.byte 0x7C, 0x70, 0x7C, 0x00

	.global UNK_0220DAF8
UNK04_0220DAF8: ; 0x0220DAF8
	.byte 0x7C, 0x6C, 0x7C, 0x00

	.global UNK_0220DAFC
UNK04_0220DAFC: ; 0x0220DAFC
	.byte 0x31, 0x00, 0x00, 0x00

	.global UNK_0220DB00
UNK04_0220DB00: ; 0x0220DB00
	.byte 0x5C, 0x61, 0x75, 0x74, 0x68, 0x61, 0x64, 0x64, 0x5C, 0x00, 0x00, 0x00

	.global UNK_0220DB0C
UNK04_0220DB0C: ; 0x0220DB0C
	.byte 0x5C, 0x66, 0x72, 0x6F, 0x6D, 0x70, 0x72, 0x6F, 0x66, 0x69, 0x6C, 0x65, 0x69, 0x64, 0x5C, 0x00

	.global UNK_0220DB1C
UNK04_0220DB1C: ; 0x0220DB1C
	.byte 0x5C, 0x73, 0x69, 0x67, 0x5C, 0x00, 0x00, 0x00

	.global UNK_0220DB24
UNK04_0220DB24: ; 0x0220DB24
	.byte 0x5C, 0x6D, 0x73, 0x67, 0x5C, 0x00, 0x00, 0x00

	.global UNK_0220DB2C
UNK04_0220DB2C: ; 0x0220DB2C
	.byte 0x5C, 0x6D, 0x5C, 0x00

	.global UNK_0220DB30
UNK04_0220DB30: ; 0x0220DB30
	.byte 0x5C, 0x6C, 0x65, 0x6E, 0x5C, 0x00, 0x00, 0x00

	.global UNK_0220DB38
UNK04_0220DB38: ; 0x0220DB38
	.byte 0x6F, 0x75, 0x74, 0x70, 0x75, 0x74, 0x42, 0x75, 0x66, 0x66, 0x65, 0x72, 0x20, 0x21, 0x3D, 0x20
	.byte 0x4E, 0x55, 0x4C, 0x4C, 0x00, 0x00, 0x00, 0x00

	.global UNK_0220DB50
UNK04_0220DB50: ; 0x0220DB50
	.byte 0x67, 0x70, 0x69, 0x42, 0x75, 0x66, 0x66, 0x65, 0x72, 0x2E, 0x63, 0x00

	.global UNK_0220DB5C
UNK04_0220DB5C: ; 0x0220DB5C
	.byte 0x6C, 0x65, 0x6E, 0x20, 0x3E, 0x3D, 0x20, 0x30, 0x00, 0x00, 0x00, 0x00

	.global UNK_0220DB68
UNK04_0220DB68: ; 0x0220DB68
	.byte 0x70, 0x6F, 0x73, 0x20, 0x3E, 0x3D, 0x20, 0x30, 0x00, 0x00, 0x00, 0x00

	.global UNK_0220DB74
UNK04_0220DB74: ; 0x0220DB74
	.byte 0x70, 0x6F, 0x73, 0x20, 0x3C, 0x3D, 0x20, 0x6C, 0x65, 0x6E, 0x00, 0x00

	.global UNK_0220DB80
UNK04_0220DB80: ; 0x0220DB80
	.byte 0x73, 0x6F, 0x63, 0x6B, 0x20, 0x21, 0x3D, 0x20, 0x49, 0x4E, 0x56, 0x41, 0x4C, 0x49, 0x44, 0x5F
	.byte 0x53, 0x4F, 0x43, 0x4B, 0x45, 0x54, 0x00, 0x00

	.global UNK_0220DB98
UNK04_0220DB98: ; 0x0220DB98
	.byte 0x69, 0x6E, 0x70, 0x75, 0x74, 0x42, 0x75, 0x66, 0x66, 0x65, 0x72, 0x20, 0x21, 0x3D, 0x20, 0x4E
	.byte 0x55, 0x4C, 0x4C, 0x00

	.global UNK_0220DBAC
UNK04_0220DBAC: ; 0x0220DBAC
	.byte 0x62, 0x79, 0x74, 0x65, 0x73, 0x52, 0x65, 0x61, 0x64, 0x20, 0x21, 0x3D, 0x20, 0x4E, 0x55, 0x4C
	.byte 0x4C, 0x00, 0x00, 0x00

	.global UNK_0220DBC0
UNK04_0220DBC0: ; 0x0220DBC0
	.byte 0x63, 0x6F, 0x6E, 0x6E, 0x43, 0x6C, 0x6F, 0x73, 0x65, 0x64, 0x20, 0x21, 0x3D, 0x20, 0x4E, 0x55
	.byte 0x4C, 0x4C, 0x00, 0x00

	.global UNK_0220DBD4
UNK04_0220DBD4: ; 0x0220DBD4
	.byte 0x4F, 0x75, 0x74, 0x20, 0x6F, 0x66, 0x20, 0x6D, 0x65, 0x6D, 0x6F, 0x72, 0x79, 0x2E, 0x00, 0x00

	.global UNK_0220DBE4
UNK04_0220DBE4: ; 0x0220DBE4
	.byte 0x54, 0x68, 0x65, 0x72, 0x65, 0x20, 0x77, 0x61, 0x73, 0x20, 0x61, 0x6E, 0x20, 0x65, 0x72, 0x72
	.byte 0x6F, 0x72, 0x20, 0x72, 0x65, 0x61, 0x64, 0x69, 0x6E, 0x67, 0x20, 0x66, 0x72, 0x6F, 0x6D, 0x20
	.byte 0x61, 0x20, 0x73, 0x6F, 0x63, 0x6B, 0x65, 0x74, 0x2E, 0x00, 0x00, 0x00

	.global UNK_0220DC10
UNK04_0220DC10: ; 0x0220DC10
	.byte 0x52, 0x45, 0x43, 0x56, 0x58, 0x58, 0x58, 0x58, 0x28, 0x25, 0x73, 0x29, 0x3A, 0x20, 0x43, 0x6F
	.byte 0x6E, 0x6E, 0x65, 0x63, 0x74, 0x69, 0x6F, 0x6E, 0x20, 0x63, 0x6C, 0x6F, 0x73, 0x65, 0x64, 0x0A
	.byte 0x00, 0x00, 0x00, 0x00

	.global UNK_0220DC34
UNK04_0220DC34: ; 0x0220DC34
	.byte 0x52, 0x45, 0x43, 0x56, 0x54, 0x4F, 0x54, 0x4C, 0x28, 0x25, 0x73, 0x29, 0x3A, 0x20, 0x25, 0x64
	.byte 0x0A, 0x00, 0x00, 0x00

	.global UNK_0220DC48
UNK04_0220DC48: ; 0x0220DC48
	.byte 0x25, 0x64, 0x00, 0x00

	.global UNK_0220DC4C
UNK04_0220DC4C: ; 0x0220DC4C
	.byte 0x70, 0x65, 0x65, 0x72, 0x2D, 0x3E, 0x6F, 0x75, 0x74, 0x70, 0x75, 0x74, 0x42, 0x75, 0x66, 0x66
	.byte 0x65, 0x72, 0x2E, 0x62, 0x75, 0x66, 0x66, 0x65, 0x72, 0x20, 0x21, 0x3D, 0x20, 0x4E, 0x55, 0x4C
	.byte 0x4C, 0x00, 0x00, 0x00

	.global UNK_0220DC70
UNK04_0220DC70: ; 0x0220DC70
	.byte 0x50, 0x54, 0x00, 0x00

	.global UNK_0220DC74
UNK04_0220DC74: ; 0x0220DC74
	.byte 0x54, 0x68, 0x65, 0x72, 0x65, 0x20, 0x77, 0x61, 0x73, 0x20, 0x61, 0x6E, 0x20, 0x65, 0x72, 0x72
	.byte 0x6F, 0x72, 0x20, 0x73, 0x65, 0x6E, 0x64, 0x69, 0x6E, 0x67, 0x20, 0x6F, 0x6E, 0x20, 0x61, 0x20
	.byte 0x73, 0x6F, 0x63, 0x6B, 0x65, 0x74, 0x2E, 0x00

	.global UNK_0220DC9C
UNK04_0220DC9C: ; 0x0220DC9C
	.byte 0x53, 0x45, 0x4E, 0x44, 0x58, 0x58, 0x58, 0x58, 0x28, 0x25, 0x73, 0x29, 0x3A, 0x20, 0x43, 0x6F
	.byte 0x6E, 0x6E, 0x65, 0x63, 0x74, 0x69, 0x6F, 0x6E, 0x20, 0x63, 0x6C, 0x6F, 0x73, 0x65, 0x64, 0x0A
	.byte 0x00, 0x00, 0x00, 0x00

	.global UNK_0220DCC0
UNK04_0220DCC0: ; 0x0220DCC0
	.byte 0x73, 0x74, 0x72, 0x69, 0x6E, 0x67, 0x20, 0x21, 0x3D, 0x20, 0x4E, 0x55, 0x4C, 0x4C, 0x00, 0x00

	.global UNK_0220DCD0
UNK04_0220DCD0: ; 0x0220DCD0
	.byte 0x73, 0x74, 0x72, 0x69, 0x6E, 0x67, 0x4C, 0x65, 0x6E, 0x20, 0x3E, 0x3D, 0x20, 0x30, 0x00, 0x00

	.global UNK_0220DCE0
UNK04_0220DCE0: ; 0x0220DCE0
	.byte 0x64, 0x61, 0x74, 0x61, 0x2D, 0x3E, 0x63, 0x61, 0x6C, 0x6C, 0x62, 0x61, 0x63, 0x6B, 0x2E, 0x63
	.byte 0x61, 0x6C, 0x6C, 0x62, 0x61, 0x63, 0x6B, 0x20, 0x21, 0x3D, 0x20, 0x4E, 0x55, 0x4C, 0x4C, 0x00

	.global UNK_0220DD00
UNK04_0220DD00: ; 0x0220DD00
	.byte 0x67, 0x70, 0x69, 0x43, 0x61, 0x6C, 0x6C, 0x62, 0x61, 0x63, 0x6B, 0x2E, 0x63, 0x00, 0x00, 0x00

	.global UNK_0220DD10
UNK04_0220DD10: ; 0x0220DD10
	.byte 0x64, 0x61, 0x74, 0x61, 0x2D, 0x3E, 0x61, 0x72, 0x67, 0x20, 0x21, 0x3D, 0x20, 0x4E, 0x55, 0x4C
	.byte 0x4C, 0x00, 0x00, 0x00

	.global UNK_0220DD24
UNK04_0220DD24: ; 0x0220DD24
	.byte 0x4F, 0x75, 0x74, 0x20, 0x6F, 0x66, 0x20, 0x6D, 0x65, 0x6D, 0x6F, 0x72, 0x79, 0x2E, 0x00, 0x00

	.global UNK_0220DD34
UNK04_0220DD34: ; 0x0220DD34
	.byte 0x69, 0x63, 0x6F, 0x6E, 0x6E, 0x65, 0x63, 0x74, 0x69, 0x6F, 0x6E, 0x20, 0x21, 0x3D, 0x20, 0x4E
	.byte 0x55, 0x4C, 0x4C, 0x00

	.global UNK_0220DD48
UNK04_0220DD48: ; 0x0220DD48
	.byte 0x72, 0x65, 0x73, 0x75, 0x6C, 0x74, 0x20, 0x21, 0x3D, 0x20, 0x47, 0x50, 0x5F, 0x4E, 0x4F, 0x5F
	.byte 0x45, 0x52, 0x52, 0x4F, 0x52, 0x00, 0x00, 0x00

	.global UNK_0220DD60
UNK04_0220DD60: ; 0x0220DD60
	.byte 0x28, 0x66, 0x61, 0x74, 0x61, 0x6C, 0x20, 0x3D, 0x3D, 0x20, 0x47, 0x50, 0x5F, 0x46, 0x41, 0x54
	.byte 0x41, 0x4C, 0x29, 0x20, 0x7C, 0x7C, 0x20, 0x28, 0x66, 0x61, 0x74, 0x61, 0x6C, 0x20, 0x3D, 0x3D
	.byte 0x20, 0x47, 0x50, 0x5F, 0x4E, 0x4F, 0x4E, 0x5F, 0x46, 0x41, 0x54, 0x41, 0x4C, 0x29, 0x00, 0x00

	.global UNK_0220DD90
UNK04_0220DD90: ; 0x0220DD90
	.byte 0x67, 0x70, 0x63, 0x6D, 0x2E, 0x67, 0x73, 0x2E, 0x6E, 0x69, 0x6E, 0x74, 0x65, 0x6E, 0x64, 0x6F
	.byte 0x77, 0x69, 0x66, 0x69, 0x2E, 0x6E, 0x65, 0x74, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	.global UNK_0220DDD0
UNK04_0220DDD0: ; 0x0220DDD0
	.byte 0x5C, 0x6C, 0x6F, 0x67, 0x6F, 0x75, 0x74, 0x5C, 0x5C, 0x73, 0x65, 0x73, 0x73, 0x6B, 0x65, 0x79
	.byte 0x5C, 0x00, 0x00, 0x00

	.global UNK_0220DDE4
UNK04_0220DDE4: ; 0x0220DDE4
	.byte 0x5C, 0x66, 0x69, 0x6E, 0x61, 0x6C, 0x5C, 0x00

	.global UNK_0220DDEC
UNK04_0220DDEC: ; 0x0220DDEC
	.byte 0x43, 0x4D, 0x00, 0x00

	.global UNK_0220DDF0
UNK04_0220DDF0: ; 0x0220DDF0
	.byte 0x54, 0x68, 0x65, 0x20, 0x73, 0x65, 0x72, 0x76, 0x65, 0x72, 0x20, 0x68, 0x61, 0x73, 0x20, 0x72
	.byte 0x65, 0x66, 0x75, 0x73, 0x65, 0x64, 0x20, 0x74, 0x68, 0x65, 0x20, 0x63, 0x6F, 0x6E, 0x6E, 0x65
	.byte 0x63, 0x74, 0x69, 0x6F, 0x6E, 0x2E, 0x00, 0x00

	.global UNK_0220DE18
UNK04_0220DE18: ; 0x0220DE18
	.byte 0x73, 0x74, 0x61, 0x74, 0x65, 0x20, 0x3D, 0x3D, 0x20, 0x47, 0x50, 0x49, 0x5F, 0x43, 0x4F, 0x4E
	.byte 0x4E, 0x45, 0x43, 0x54, 0x45, 0x44, 0x00, 0x00

	.global UNK_0220DE30
UNK04_0220DE30: ; 0x0220DE30
	.byte 0x67, 0x70, 0x69, 0x43, 0x6F, 0x6E, 0x6E, 0x65, 0x63, 0x74, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x00

	.global UNK_0220DE40
UNK04_0220DE40: ; 0x0220DE40
	.byte 0x5C, 0x70, 0x69, 0x64, 0x5C, 0x00, 0x00, 0x00

	.global UNK_0220DE48
UNK04_0220DE48: ; 0x0220DE48
	.byte 0x5C, 0x66, 0x61, 0x74, 0x61, 0x6C, 0x5C, 0x00

	.global UNK_0220DE50
UNK04_0220DE50: ; 0x0220DE50
	.byte 0x5C, 0x6C, 0x63, 0x5C, 0x31, 0x00, 0x00, 0x00

	.global UNK_0220DE58
UNK04_0220DE58: ; 0x0220DE58
	.byte 0x55, 0x6E, 0x65, 0x78, 0x70, 0x65, 0x63, 0x74, 0x65, 0x64, 0x20, 0x64, 0x61, 0x74, 0x61, 0x20
	.byte 0x77, 0x61, 0x73, 0x20, 0x72, 0x65, 0x63, 0x65, 0x69, 0x76, 0x65, 0x64, 0x20, 0x66, 0x72, 0x6F
	.byte 0x6D, 0x20, 0x74, 0x68, 0x65, 0x20, 0x73, 0x65, 0x72, 0x76, 0x65, 0x72, 0x2E, 0x00, 0x00, 0x00

	.global UNK_0220DE88
UNK04_0220DE88: ; 0x0220DE88
	.byte 0x5C, 0x63, 0x68, 0x61, 0x6C, 0x6C, 0x65, 0x6E, 0x67, 0x65, 0x5C, 0x00

	.global UNK_0220DE94
UNK04_0220DE94: ; 0x0220DE94
	.byte 0x5C, 0x6E, 0x75, 0x72, 0x5C, 0x00, 0x00, 0x00

	.global UNK_0220DE9C
UNK04_0220DE9C: ; 0x0220DE9C
	.byte 0x5C, 0x75, 0x73, 0x65, 0x72, 0x69, 0x64, 0x5C, 0x00, 0x00, 0x00, 0x00

	.global UNK_0220DEA8
UNK04_0220DEA8: ; 0x0220DEA8
	.byte 0x55, 0x6E, 0x65, 0x78, 0x65, 0x70, 0x65, 0x63, 0x74, 0x65, 0x64, 0x20, 0x64, 0x61, 0x74, 0x61
	.byte 0x20, 0x77, 0x61, 0x73, 0x20, 0x72, 0x65, 0x63, 0x65, 0x69, 0x76, 0x65, 0x64, 0x20, 0x66, 0x72
	.byte 0x6F, 0x6D, 0x20, 0x74, 0x68, 0x65, 0x20, 0x73, 0x65, 0x72, 0x76, 0x65, 0x72, 0x2E, 0x00, 0x00

	.global UNK_0220DED8
UNK04_0220DED8: ; 0x0220DED8
	.byte 0x5C, 0x70, 0x72, 0x6F, 0x66, 0x69, 0x6C, 0x65, 0x69, 0x64, 0x5C, 0x00

	.global UNK_0220DEE4
UNK04_0220DEE4: ; 0x0220DEE4
	.byte 0x5C, 0x6C, 0x63, 0x5C, 0x32, 0x00, 0x00, 0x00

	.global UNK_0220DEEC
UNK04_0220DEEC: ; 0x0220DEEC
	.byte 0x5C, 0x73, 0x65, 0x73, 0x73, 0x6B, 0x65, 0x79, 0x5C, 0x00, 0x00, 0x00

	.global UNK_0220DEF8
UNK04_0220DEF8: ; 0x0220DEF8
	.byte 0x5C, 0x75, 0x6E, 0x69, 0x71, 0x75, 0x65, 0x6E, 0x69, 0x63, 0x6B, 0x5C, 0x00, 0x00, 0x00, 0x00

	.global UNK_0220DF08
UNK04_0220DF08: ; 0x0220DF08
	.byte 0x5C, 0x6C, 0x74, 0x5C, 0x00, 0x00, 0x00, 0x00

	.global UNK_0220DF10
UNK04_0220DF10: ; 0x0220DF10
	.byte 0x25, 0x73, 0x40, 0x25, 0x73, 0x00, 0x00, 0x00

	.global UNK_0220DF18
UNK04_0220DF18: ; 0x0220DF18
	.byte 0x25, 0x73, 0x25, 0x73, 0x25, 0x73, 0x25, 0x73, 0x25, 0x73, 0x25, 0x73, 0x00, 0x00, 0x00, 0x00

	.global UNK_0220DF28
UNK04_0220DF28: ; 0x0220DF28
	.byte 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20
	.byte 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20
	.byte 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20
	.byte 0x00, 0x00, 0x00, 0x00

	.global UNK_0220DF5C
UNK04_0220DF5C: ; 0x0220DF5C
	.byte 0x5C, 0x70, 0x72, 0x6F, 0x6F, 0x66, 0x5C, 0x00

	.global UNK_0220DF64
UNK04_0220DF64: ; 0x0220DF64
	.byte 0x43, 0x6F, 0x75, 0x6C, 0x64, 0x20, 0x6E, 0x6F, 0x74, 0x20, 0x61, 0x75, 0x74, 0x68, 0x65, 0x6E
	.byte 0x74, 0x69, 0x63, 0x61, 0x74, 0x65, 0x20, 0x73, 0x65, 0x72, 0x76, 0x65, 0x72, 0x2E, 0x00, 0x00

	.global UNK_0220DF84
UNK04_0220DF84: ; 0x0220DF84
	.byte 0x4F, 0x75, 0x74, 0x20, 0x6F, 0x66, 0x20, 0x6D, 0x65, 0x6D, 0x6F, 0x72, 0x79, 0x2E, 0x00, 0x00

	.global UNK_0220DF94
UNK04_0220DF94: ; 0x0220DF94
	.byte 0x5C, 0x6E, 0x65, 0x77, 0x75, 0x73, 0x65, 0x72, 0x5C, 0x00, 0x00, 0x00

	.global UNK_0220DFA0
UNK04_0220DFA0: ; 0x0220DFA0
	.byte 0x5C, 0x65, 0x6D, 0x61, 0x69, 0x6C, 0x5C, 0x00

	.global UNK_0220DFA8
UNK04_0220DFA8: ; 0x0220DFA8
	.byte 0x5C, 0x6E, 0x69, 0x63, 0x6B, 0x5C, 0x00, 0x00

	.global UNK_0220DFB0
UNK04_0220DFB0: ; 0x0220DFB0
	.byte 0x5C, 0x70, 0x61, 0x73, 0x73, 0x77, 0x6F, 0x72, 0x64, 0x65, 0x6E, 0x63, 0x5C, 0x00, 0x00, 0x00

	.global UNK_0220DFC0
UNK04_0220DFC0: ; 0x0220DFC0
	.byte 0x5C, 0x70, 0x72, 0x6F, 0x64, 0x75, 0x63, 0x74, 0x69, 0x64, 0x5C, 0x00

	.global UNK_0220DFCC
UNK04_0220DFCC: ; 0x0220DFCC
	.byte 0x5C, 0x67, 0x61, 0x6D, 0x65, 0x6E, 0x61, 0x6D, 0x65, 0x5C, 0x00, 0x00

	.global UNK_0220DFD8
UNK04_0220DFD8: ; 0x0220DFD8
	.byte 0x5C, 0x6E, 0x61, 0x6D, 0x65, 0x73, 0x70, 0x61, 0x63, 0x65, 0x69, 0x64, 0x5C, 0x00, 0x00, 0x00

	.global UNK_0220DFE8
UNK04_0220DFE8: ; 0x0220DFE8
	.byte 0x5C, 0x63, 0x64, 0x6B, 0x65, 0x79, 0x65, 0x6E, 0x63, 0x5C, 0x00, 0x00

	.global UNK_0220DFF4
UNK04_0220DFF4: ; 0x0220DFF4
	.byte 0x5C, 0x69, 0x64, 0x5C, 0x31, 0x00, 0x00, 0x00

	.global UNK_0220DFFC
UNK04_0220DFFC: ; 0x0220DFFC
	.byte 0x5C, 0x6C, 0x6F, 0x67, 0x69, 0x6E, 0x5C, 0x00

	.global UNK_0220E004
UNK04_0220E004: ; 0x0220E004
	.byte 0x5C, 0x61, 0x75, 0x74, 0x68, 0x74, 0x6F, 0x6B, 0x65, 0x6E, 0x5C, 0x00

	.global UNK_0220E010
UNK04_0220E010: ; 0x0220E010
	.byte 0x5C, 0x75, 0x73, 0x65, 0x72, 0x5C, 0x00, 0x00

	.global UNK_0220E018
UNK04_0220E018: ; 0x0220E018
	.byte 0x40, 0x00, 0x00, 0x00

	.global UNK_0220E01C
UNK04_0220E01C: ; 0x0220E01C
	.byte 0x5C, 0x72, 0x65, 0x73, 0x70, 0x6F, 0x6E, 0x73, 0x65, 0x5C, 0x00, 0x00

	.global UNK_0220E028
UNK04_0220E028: ; 0x0220E028
	.byte 0x5C, 0x66, 0x69, 0x72, 0x65, 0x77, 0x61, 0x6C, 0x6C, 0x5C, 0x31, 0x00

	.global UNK_0220E034
UNK04_0220E034: ; 0x0220E034
	.byte 0x5C, 0x70, 0x6F, 0x72, 0x74, 0x5C, 0x00, 0x00

	.global UNK_0220E03C
UNK04_0220E03C: ; 0x0220E03C
	.byte 0x49, 0x6E, 0x76, 0x61, 0x6C, 0x69, 0x64, 0x20, 0x63, 0x6F, 0x6E, 0x6E, 0x65, 0x63, 0x74, 0x69
	.byte 0x6F, 0x6E, 0x2E, 0x00

	.global UNK_0220E050
UNK04_0220E050: ; 0x0220E050
	.byte 0x49, 0x6E, 0x76, 0x61, 0x6C, 0x69, 0x64, 0x20, 0x66, 0x69, 0x72, 0x65, 0x77, 0x61, 0x6C, 0x6C
	.byte 0x2E, 0x00, 0x00, 0x00

	.global UNK_0220E064
UNK04_0220E064: ; 0x0220E064
	.byte 0x54, 0x68, 0x65, 0x72, 0x65, 0x20, 0x77, 0x61, 0x73, 0x20, 0x61, 0x6E, 0x20, 0x65, 0x72, 0x72
	.byte 0x6F, 0x72, 0x20, 0x63, 0x72, 0x65, 0x61, 0x74, 0x69, 0x6E, 0x67, 0x20, 0x61, 0x20, 0x73, 0x6F
	.byte 0x63, 0x6B, 0x65, 0x74, 0x2E, 0x00, 0x00, 0x00

	.global UNK_0220E08C
UNK04_0220E08C: ; 0x0220E08C
	.byte 0x54, 0x68, 0x65, 0x72, 0x65, 0x20, 0x77, 0x61, 0x73, 0x20, 0x61, 0x6E, 0x20, 0x65, 0x72, 0x72
	.byte 0x6F, 0x72, 0x20, 0x6D, 0x61, 0x6B, 0x69, 0x6E, 0x67, 0x20, 0x61, 0x20, 0x73, 0x6F, 0x63, 0x6B
	.byte 0x65, 0x74, 0x20, 0x6E, 0x6F, 0x6E, 0x2D, 0x62, 0x6C, 0x6F, 0x63, 0x6B, 0x69, 0x6E, 0x67, 0x2E
	.byte 0x00, 0x00, 0x00, 0x00

	.global UNK_0220E0C0
UNK04_0220E0C0: ; 0x0220E0C0
	.byte 0x54, 0x68, 0x65, 0x72, 0x65, 0x20, 0x77, 0x61, 0x73, 0x20, 0x61, 0x6E, 0x20, 0x65, 0x72, 0x72
	.byte 0x6F, 0x72, 0x20, 0x62, 0x69, 0x6E, 0x64, 0x69, 0x6E, 0x67, 0x20, 0x61, 0x20, 0x73, 0x6F, 0x63
	.byte 0x6B, 0x65, 0x74, 0x2E, 0x00, 0x00, 0x00, 0x00

	.global UNK_0220E0E8
UNK04_0220E0E8: ; 0x0220E0E8
	.byte 0x54, 0x68, 0x65, 0x72, 0x65, 0x20, 0x77, 0x61, 0x73, 0x20, 0x61, 0x6E, 0x20, 0x65, 0x72, 0x72
	.byte 0x6F, 0x72, 0x20, 0x6C, 0x69, 0x73, 0x74, 0x65, 0x6E, 0x69, 0x6E, 0x67, 0x20, 0x6F, 0x6E, 0x20
	.byte 0x61, 0x20, 0x73, 0x6F, 0x63, 0x6B, 0x65, 0x74, 0x2E, 0x00, 0x00, 0x00

	.global UNK_0220E114
UNK04_0220E114: ; 0x0220E114
	.byte 0x54, 0x68, 0x65, 0x72, 0x65, 0x20, 0x77, 0x61, 0x73, 0x20, 0x61, 0x6E, 0x20, 0x65, 0x72, 0x72
	.byte 0x6F, 0x72, 0x20, 0x67, 0x65, 0x74, 0x74, 0x69, 0x6E, 0x67, 0x20, 0x61, 0x20, 0x73, 0x6F, 0x63
	.byte 0x6B, 0x65, 0x74, 0x27, 0x73, 0x20, 0x61, 0x64, 0x64, 0x72, 0x65, 0x73, 0x2E, 0x00, 0x00, 0x00

	.global UNK_0220E144
UNK04_0220E144: ; 0x0220E144
	.byte 0x43, 0x6F, 0x75, 0x6C, 0x64, 0x20, 0x6E, 0x6F, 0x74, 0x20, 0x72, 0x65, 0x73, 0x6F, 0x6C, 0x76
	.byte 0x65, 0x20, 0x63, 0x6F, 0x6E, 0x6E, 0x65, 0x63, 0x74, 0x69, 0x6F, 0x6E, 0x20, 0x6D, 0x61, 0x6E
	.byte 0x61, 0x6E, 0x67, 0x65, 0x72, 0x20, 0x68, 0x6F, 0x73, 0x74, 0x20, 0x6E, 0x61, 0x6D, 0x65, 0x2E
	.byte 0x00, 0x00, 0x00, 0x00

	.global UNK_0220E178
UNK04_0220E178: ; 0x0220E178
	.byte 0x61, 0x64, 0x64, 0x72, 0x65, 0x73, 0x73, 0x2E, 0x73, 0x69, 0x6E, 0x5F, 0x61, 0x64, 0x64, 0x72
	.byte 0x2E, 0x73, 0x5F, 0x61, 0x64, 0x64, 0x72, 0x20, 0x21, 0x3D, 0x20, 0x30, 0x00, 0x00, 0x00, 0x00

	.global UNK_0220E198
UNK04_0220E198: ; 0x0220E198
	.byte 0x54, 0x68, 0x65, 0x72, 0x65, 0x20, 0x77, 0x61, 0x73, 0x20, 0x61, 0x6E, 0x20, 0x65, 0x72, 0x72
	.byte 0x6F, 0x72, 0x20, 0x63, 0x6F, 0x6E, 0x6E, 0x65, 0x63, 0x74, 0x69, 0x6E, 0x67, 0x20, 0x61, 0x20
	.byte 0x73, 0x6F, 0x63, 0x6B, 0x65, 0x74, 0x2E, 0x00

	.global UNK_0220E1C0
UNK04_0220E1C0: ; 0x0220E1C0
	.byte 0x41, 0x42, 0x43, 0x44, 0x45, 0x46, 0x47, 0x48, 0x49, 0x4A, 0x4B, 0x4C, 0x4D, 0x4E, 0x4F, 0x50
	.byte 0x51, 0x52, 0x53, 0x54, 0x55, 0x56, 0x57, 0x58, 0x59, 0x5A, 0x61, 0x62, 0x63, 0x64, 0x65, 0x66
	.byte 0x67, 0x68, 0x69, 0x6A, 0x6B, 0x6C, 0x6D, 0x6E, 0x6F, 0x70, 0x71, 0x72, 0x73, 0x74, 0x75, 0x76
	.byte 0x77, 0x78, 0x79, 0x7A, 0x30, 0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37, 0x38, 0x39, 0x00, 0x00

	.global UNK_0220E200
UNK04_0220E200: ; 0x0220E200
	.byte 0x4F, 0x75, 0x74, 0x20, 0x6F, 0x66, 0x20, 0x6D, 0x65, 0x6D, 0x6F, 0x72, 0x79, 0x2E, 0x00, 0x00

	.global UNK_0220E210
UNK04_0220E210: ; 0x0220E210
	.byte 0x5C, 0x67, 0x65, 0x74, 0x70, 0x72, 0x6F, 0x66, 0x69, 0x6C, 0x65, 0x5C, 0x5C, 0x73, 0x65, 0x73
	.byte 0x73, 0x6B, 0x65, 0x79, 0x5C, 0x00, 0x00, 0x00

	.global UNK_0220E228
UNK04_0220E228: ; 0x0220E228
	.byte 0x5C, 0x70, 0x72, 0x6F, 0x66, 0x69, 0x6C, 0x65, 0x69, 0x64, 0x5C, 0x00

	.global UNK_0220E234
UNK04_0220E234: ; 0x0220E234
	.byte 0x5C, 0x69, 0x64, 0x5C, 0x00, 0x00, 0x00, 0x00

	.global UNK_0220E23C
UNK04_0220E23C: ; 0x0220E23C
	.byte 0x5C, 0x66, 0x69, 0x6E, 0x61, 0x6C, 0x5C, 0x00

	.global UNK_0220E244
UNK04_0220E244: ; 0x0220E244
	.byte 0x25, 0x64, 0x00, 0x00

	.global UNK_0220E248
UNK04_0220E248: ; 0x0220E248
	.byte 0x49, 0x6E, 0x76, 0x61, 0x6C, 0x69, 0x64, 0x20, 0x69, 0x6E, 0x66, 0x6F, 0x2E, 0x00, 0x00, 0x00

	.global UNK_0220E258
UNK04_0220E258: ; 0x0220E258
	.byte 0x5C, 0x62, 0x69, 0x72, 0x74, 0x68, 0x64, 0x61, 0x79, 0x5C, 0x00, 0x00

	.global UNK_0220E264
UNK04_0220E264: ; 0x0220E264
	.byte 0x49, 0x6E, 0x76, 0x61, 0x6C, 0x69, 0x64, 0x20, 0x76, 0x61, 0x6C, 0x75, 0x65, 0x2E, 0x00, 0x00

	.global UNK_0220E274
UNK04_0220E274: ; 0x0220E274
	.byte 0x5C, 0x6E, 0x69, 0x63, 0x6B, 0x5C, 0x00, 0x00

	.global UNK_0220E27C
UNK04_0220E27C: ; 0x0220E27C
	.byte 0x5C, 0x75, 0x6E, 0x69, 0x71, 0x75, 0x65, 0x6E, 0x69, 0x63, 0x6B, 0x5C, 0x00, 0x00, 0x00, 0x00

	.global UNK_0220E28C
UNK04_0220E28C: ; 0x0220E28C
	.byte 0x5C, 0x65, 0x6D, 0x61, 0x69, 0x6C, 0x5C, 0x00

	.global UNK_0220E294
UNK04_0220E294: ; 0x0220E294
	.byte 0x5C, 0x70, 0x61, 0x73, 0x73, 0x77, 0x6F, 0x72, 0x64, 0x5C, 0x00, 0x00

	.global UNK_0220E2A0
UNK04_0220E2A0: ; 0x0220E2A0
	.byte 0x5C, 0x66, 0x69, 0x72, 0x73, 0x74, 0x6E, 0x61, 0x6D, 0x65, 0x5C, 0x00

	.global UNK_0220E2AC
UNK04_0220E2AC: ; 0x0220E2AC
	.byte 0x5C, 0x6C, 0x61, 0x73, 0x74, 0x6E, 0x61, 0x6D, 0x65, 0x5C, 0x00, 0x00

	.global UNK_0220E2B8
UNK04_0220E2B8: ; 0x0220E2B8
	.byte 0x5C, 0x68, 0x6F, 0x6D, 0x65, 0x70, 0x61, 0x67, 0x65, 0x5C, 0x00, 0x00

	.global UNK_0220E2C4
UNK04_0220E2C4: ; 0x0220E2C4
	.byte 0x5C, 0x7A, 0x69, 0x70, 0x63, 0x6F, 0x64, 0x65, 0x5C, 0x00, 0x00, 0x00

	.global UNK_0220E2D0
UNK04_0220E2D0: ; 0x0220E2D0
	.byte 0x49, 0x6E, 0x76, 0x61, 0x6C, 0x69, 0x64, 0x20, 0x63, 0x6F, 0x75, 0x6E, 0x74, 0x72, 0x79, 0x63
	.byte 0x6F, 0x64, 0x65, 0x2E, 0x00, 0x00, 0x00, 0x00

	.global UNK_0220E2E8
UNK04_0220E2E8: ; 0x0220E2E8
	.byte 0x5C, 0x63, 0x6F, 0x75, 0x6E, 0x74, 0x72, 0x79, 0x63, 0x6F, 0x64, 0x65, 0x5C, 0x00, 0x00, 0x00

	.global UNK_0220E2F8
UNK04_0220E2F8: ; 0x0220E2F8
	.byte 0x30, 0x00, 0x00, 0x00

	.global UNK_0220E2FC
UNK04_0220E2FC: ; 0x0220E2FC
	.byte 0x31, 0x00, 0x00, 0x00

	.global UNK_0220E300
UNK04_0220E300: ; 0x0220E300
	.byte 0x32, 0x00, 0x00, 0x00

	.global UNK_0220E304
UNK04_0220E304: ; 0x0220E304
	.byte 0x5C, 0x73, 0x65, 0x78, 0x5C, 0x00, 0x00, 0x00

	.global UNK_0220E30C
UNK04_0220E30C: ; 0x0220E30C
	.byte 0x5C, 0x69, 0x63, 0x71, 0x75, 0x69, 0x6E, 0x5C, 0x00, 0x00, 0x00, 0x00

	.global UNK_0220E318
UNK04_0220E318: ; 0x0220E318
	.byte 0x5C, 0x76, 0x69, 0x64, 0x65, 0x6F, 0x63, 0x61, 0x72, 0x64, 0x31, 0x73, 0x74, 0x72, 0x69, 0x6E
	.byte 0x67, 0x5C, 0x00, 0x00

	.global UNK_0220E32C
UNK04_0220E32C: ; 0x0220E32C
	.byte 0x5C, 0x76, 0x69, 0x64, 0x65, 0x6F, 0x63, 0x61, 0x72, 0x64, 0x32, 0x73, 0x74, 0x72, 0x69, 0x6E
	.byte 0x67, 0x5C, 0x00, 0x00

	.global UNK_0220E340
UNK04_0220E340: ; 0x0220E340
	.byte 0x5C, 0x6F, 0x73, 0x73, 0x74, 0x72, 0x69, 0x6E, 0x67, 0x5C, 0x00, 0x00

	.global UNK_0220E34C
UNK04_0220E34C: ; 0x0220E34C
	.byte 0x5C, 0x61, 0x69, 0x6D, 0x5C, 0x00, 0x00, 0x00

	.global UNK_0220E354
UNK04_0220E354: ; 0x0220E354
	.byte 0x5C, 0x70, 0x69, 0x63, 0x5C, 0x00, 0x00, 0x00

	.global UNK_0220E35C
UNK04_0220E35C: ; 0x0220E35C
	.byte 0x5C, 0x6F, 0x63, 0x63, 0x5C, 0x00, 0x00, 0x00

	.global UNK_0220E364
UNK04_0220E364: ; 0x0220E364
	.byte 0x5C, 0x69, 0x6E, 0x64, 0x5C, 0x00, 0x00, 0x00

	.global UNK_0220E36C
UNK04_0220E36C: ; 0x0220E36C
	.byte 0x5C, 0x69, 0x6E, 0x63, 0x5C, 0x00, 0x00, 0x00

	.global UNK_0220E374
UNK04_0220E374: ; 0x0220E374
	.byte 0x5C, 0x6D, 0x61, 0x72, 0x5C, 0x00, 0x00, 0x00

	.global UNK_0220E37C
UNK04_0220E37C: ; 0x0220E37C
	.byte 0x5C, 0x63, 0x68, 0x63, 0x5C, 0x00, 0x00, 0x00

	.global UNK_0220E384
UNK04_0220E384: ; 0x0220E384
	.byte 0x5C, 0x69, 0x31, 0x5C, 0x00, 0x00, 0x00, 0x00

	.global UNK_0220E38C
UNK04_0220E38C: ; 0x0220E38C
	.byte 0x49, 0x6E, 0x76, 0x61, 0x6C, 0x69, 0x64, 0x20, 0x7A, 0x69, 0x70, 0x63, 0x6F, 0x64, 0x65, 0x2E
	.byte 0x00, 0x00, 0x00, 0x00

	.global UNK_0220E3A0
UNK04_0220E3A0: ; 0x0220E3A0
	.byte 0x49, 0x6E, 0x76, 0x61, 0x6C, 0x69, 0x64, 0x20, 0x73, 0x65, 0x78, 0x2E, 0x00, 0x00, 0x00, 0x00

	.global UNK_0220E3B0
UNK04_0220E3B0: ; 0x0220E3B0
	.byte 0x5C, 0x63, 0x70, 0x75, 0x62, 0x72, 0x61, 0x6E, 0x64, 0x69, 0x64, 0x5C, 0x00, 0x00, 0x00, 0x00

	.global UNK_0220E3C0
UNK04_0220E3C0: ; 0x0220E3C0
	.byte 0x5C, 0x63, 0x70, 0x75, 0x73, 0x70, 0x65, 0x65, 0x64, 0x5C, 0x00, 0x00

	.global UNK_0220E3CC
UNK04_0220E3CC: ; 0x0220E3CC
	.byte 0x5C, 0x6D, 0x65, 0x6D, 0x6F, 0x72, 0x79, 0x5C, 0x00, 0x00, 0x00, 0x00

	.global UNK_0220E3D8
UNK04_0220E3D8: ; 0x0220E3D8
	.byte 0x5C, 0x76, 0x69, 0x64, 0x65, 0x6F, 0x63, 0x61, 0x72, 0x64, 0x31, 0x72, 0x61, 0x6D, 0x5C, 0x00

	.global UNK_0220E3E8
UNK04_0220E3E8: ; 0x0220E3E8
	.byte 0x5C, 0x76, 0x69, 0x64, 0x65, 0x6F, 0x63, 0x61, 0x72, 0x64, 0x32, 0x72, 0x61, 0x6D, 0x5C, 0x00

	.global UNK_0220E3F8
UNK04_0220E3F8: ; 0x0220E3F8
	.byte 0x5C, 0x63, 0x6F, 0x6E, 0x6E, 0x65, 0x63, 0x74, 0x69, 0x6F, 0x6E, 0x69, 0x64, 0x5C, 0x00, 0x00

	.global UNK_0220E408
UNK04_0220E408: ; 0x0220E408
	.byte 0x5C, 0x63, 0x6F, 0x6E, 0x6E, 0x65, 0x63, 0x74, 0x69, 0x6F, 0x6E, 0x73, 0x70, 0x65, 0x65, 0x64
	.byte 0x5C, 0x00, 0x00, 0x00

	.global UNK_0220E41C
UNK04_0220E41C: ; 0x0220E41C
	.byte 0x5C, 0x68, 0x61, 0x73, 0x6E, 0x65, 0x74, 0x77, 0x6F, 0x72, 0x6B, 0x5C, 0x00, 0x00, 0x00, 0x00

	.global UNK_0220E42C
UNK04_0220E42C: ; 0x0220E42C
	.byte 0x5C, 0x75, 0x70, 0x64, 0x61, 0x74, 0x65, 0x70, 0x72, 0x6F, 0x5C, 0x5C, 0x73, 0x65, 0x73, 0x73
	.byte 0x6B, 0x65, 0x79, 0x5C, 0x00, 0x00, 0x00, 0x00

	.global UNK_0220E444
UNK04_0220E444: ; 0x0220E444
	.byte 0x5C, 0x75, 0x70, 0x64, 0x61, 0x74, 0x65, 0x75, 0x69, 0x5C, 0x5C, 0x73, 0x65, 0x73, 0x73, 0x6B
	.byte 0x65, 0x79, 0x5C, 0x00

	.global UNK_0220E458
UNK04_0220E458: ; 0x0220E458
	.byte 0x5C, 0x70, 0x69, 0x5C, 0x00, 0x00, 0x00, 0x00

	.global UNK_0220E460
UNK04_0220E460: ; 0x0220E460
	.byte 0x55, 0x6E, 0x65, 0x78, 0x70, 0x65, 0x63, 0x74, 0x65, 0x64, 0x20, 0x64, 0x61, 0x74, 0x61, 0x20
	.byte 0x77, 0x61, 0x73, 0x20, 0x72, 0x65, 0x63, 0x65, 0x69, 0x76, 0x65, 0x64, 0x20, 0x66, 0x72, 0x6F
	.byte 0x6D, 0x20, 0x74, 0x68, 0x65, 0x20, 0x73, 0x65, 0x72, 0x76, 0x65, 0x72, 0x2E, 0x00, 0x00, 0x00

	.global UNK_0220E490
UNK04_0220E490: ; 0x0220E490
	.byte 0x70, 0x72, 0x6F, 0x66, 0x69, 0x6C, 0x65, 0x69, 0x64, 0x20, 0x3E, 0x20, 0x30, 0x00, 0x00, 0x00

	.global UNK_0220E4A0
UNK04_0220E4A0: ; 0x0220E4A0
	.byte 0x67, 0x70, 0x69, 0x49, 0x6E, 0x66, 0x6F, 0x2E, 0x63, 0x00, 0x00, 0x00

	.global UNK_0220E4AC
UNK04_0220E4AC: ; 0x0220E4AC
	.byte 0x5C, 0x6C, 0x6F, 0x6E, 0x5C, 0x00, 0x00, 0x00

	.global UNK_0220E4B4
UNK04_0220E4B4: ; 0x0220E4B4
	.byte 0x5C, 0x6C, 0x61, 0x74, 0x5C, 0x00, 0x00, 0x00

	.global UNK_0220E4BC
UNK04_0220E4BC: ; 0x0220E4BC
	.byte 0x5C, 0x6C, 0x6F, 0x63, 0x5C, 0x00, 0x00, 0x00

	.global UNK_0220E4C4
UNK04_0220E4C4: ; 0x0220E4C4
	.byte 0x5C, 0x70, 0x6D, 0x61, 0x73, 0x6B, 0x5C, 0x00

	.global UNK_0220E4CC
UNK04_0220E4CC: ; 0x0220E4CC
	.byte 0x5C, 0x6F, 0x31, 0x5C, 0x00, 0x00, 0x00, 0x00

	.global UNK_0220E4D4
UNK04_0220E4D4: ; 0x0220E4D4
	.byte 0x5C, 0x63, 0x6F, 0x6E, 0x6E, 0x5C, 0x00, 0x00

	.global UNK_0220E4DC
UNK04_0220E4DC: ; 0x0220E4DC
	.byte 0x5C, 0x73, 0x69, 0x67, 0x5C, 0x00, 0x00, 0x00

	.global UNK_0220E4E4
UNK04_0220E4E4: ; 0x0220E4E4
	.byte 0x67, 0x70, 0x69, 0x49, 0x73, 0x56, 0x61, 0x6C, 0x69, 0x64, 0x44, 0x61, 0x74, 0x65, 0x28, 0x64
	.byte 0x2C, 0x20, 0x6D, 0x2C, 0x20, 0x79, 0x29, 0x00

	.global UNK_0220E4FC
UNK04_0220E4FC: ; 0x0220E4FC
	.byte 0x49, 0x6E, 0x76, 0x61, 0x6C, 0x69, 0x64, 0x20, 0x64, 0x61, 0x74, 0x65, 0x2E, 0x00, 0x00, 0x00

	.global UNK_0220E50C
UNK04_0220E50C: ; 0x0220E50C
	.byte 0x67, 0x70, 0x69, 0x50, 0x72, 0x6F, 0x63, 0x65, 0x73, 0x73, 0x4F, 0x70, 0x65, 0x72, 0x61, 0x74
	.byte 0x69, 0x6F, 0x6E, 0x20, 0x77, 0x61, 0x73, 0x20, 0x70, 0x61, 0x73, 0x73, 0x65, 0x64, 0x20, 0x61
	.byte 0x6E, 0x20, 0x6F, 0x70, 0x65, 0x72, 0x61, 0x74, 0x69, 0x6F, 0x6E, 0x20, 0x77, 0x69, 0x74, 0x68
	.byte 0x20, 0x61, 0x6E, 0x20, 0x69, 0x6E, 0x76, 0x61, 0x6C, 0x69, 0x64, 0x20, 0x74, 0x79, 0x70, 0x65
	.byte 0x20, 0x28, 0x25, 0x64, 0x29, 0x0A, 0x00, 0x00

	.global UNK_0220E554
UNK04_0220E554: ; 0x0220E554
	.byte 0x30, 0x00, 0x00, 0x00

	.global UNK_0220E558
UNK04_0220E558: ; 0x0220E558
	.byte 0x67, 0x70, 0x69, 0x4F, 0x70, 0x65, 0x72, 0x61, 0x74, 0x69, 0x6F, 0x6E, 0x2E, 0x63, 0x00, 0x00

	.global UNK_0220E568
UNK04_0220E568: ; 0x0220E568
	.byte 0x69, 0x63, 0x6F, 0x6E, 0x6E, 0x65, 0x63, 0x74, 0x69, 0x6F, 0x6E, 0x2D, 0x3E, 0x6E, 0x75, 0x6D
	.byte 0x53, 0x65, 0x61, 0x72, 0x63, 0x68, 0x65, 0x73, 0x20, 0x3E, 0x3D, 0x20, 0x30, 0x00, 0x00, 0x00

	.global UNK_0220E588
UNK04_0220E588: ; 0x0220E588
	.byte 0x4F, 0x75, 0x74, 0x20, 0x6F, 0x66, 0x20, 0x6D, 0x65, 0x6D, 0x6F, 0x72, 0x79, 0x2E, 0x00, 0x00

	.global UNK_0220E598
UNK04_0220E598: ; 0x0220E598
	.byte 0x63, 0x6F, 0x6E, 0x6E, 0x65, 0x63, 0x74, 0x69, 0x6F, 0x6E, 0x20, 0x21, 0x3D, 0x20, 0x4E, 0x55
	.byte 0x4C, 0x4C, 0x00, 0x00

	.global UNK_0220E5AC
UNK04_0220E5AC: ; 0x0220E5AC
	.byte 0x2A, 0x63, 0x6F, 0x6E, 0x6E, 0x65, 0x63, 0x74, 0x69, 0x6F, 0x6E, 0x20, 0x21, 0x3D, 0x20, 0x4E
	.byte 0x55, 0x4C, 0x4C, 0x00

	.global UNK_0220E5C0
UNK04_0220E5C0: ; 0x0220E5C0
	.byte 0x6F, 0x70, 0x65, 0x72, 0x61, 0x74, 0x69, 0x6F, 0x6E, 0x20, 0x21, 0x3D, 0x20, 0x4E, 0x55, 0x4C
	.byte 0x4C, 0x00, 0x00, 0x00

	.global UNK_0220E5D4
UNK04_0220E5D4: ; 0x0220E5D4
	.byte 0x70, 0x65, 0x65, 0x72, 0x20, 0x21, 0x3D, 0x20, 0x4E, 0x55, 0x4C, 0x4C, 0x00, 0x00, 0x00, 0x00

	.global UNK_0220E5E4
UNK04_0220E5E4: ; 0x0220E5E4
	.byte 0x67, 0x70, 0x69, 0x50, 0x65, 0x65, 0x72, 0x2E, 0x63, 0x00, 0x00, 0x00

	.global UNK_0220E5F0
UNK04_0220E5F0: ; 0x0220E5F0
	.byte 0x00, 0x00, 0x00, 0x00

	.global UNK_0220E5F4
UNK04_0220E5F4: ; 0x0220E5F4
	.byte 0x5C, 0x6C, 0x65, 0x6E, 0x5C, 0x25, 0x64, 0x5C, 0x6D, 0x73, 0x67, 0x5C, 0x0A, 0x00, 0x00, 0x00

	.global UNK_0220E604
UNK04_0220E604: ; 0x0220E604
	.byte 0x74, 0x72, 0x61, 0x6E, 0x73, 0x66, 0x65, 0x72, 0x49, 0x44, 0x00, 0x00

	.global UNK_0220E610
UNK04_0220E610: ; 0x0220E610
	.byte 0x5C, 0x6D, 0x5C, 0x25, 0x64, 0x5C, 0x78, 0x66, 0x65, 0x72, 0x5C, 0x25, 0x64, 0x20, 0x25, 0x75
	.byte 0x20, 0x25, 0x75, 0x00

	.global UNK_0220E624
UNK04_0220E624: ; 0x0220E624
	.byte 0x6D, 0x65, 0x73, 0x73, 0x61, 0x67, 0x65, 0x20, 0x21, 0x3D, 0x20, 0x4E, 0x55, 0x4C, 0x4C, 0x00

	.global UNK_0220E634
UNK04_0220E634: ; 0x0220E634
	.byte 0x5C, 0x6D, 0x5C, 0x00

	.global UNK_0220E638
UNK04_0220E638: ; 0x0220E638
	.byte 0x5C, 0x6C, 0x65, 0x6E, 0x5C, 0x00, 0x00, 0x00

	.global UNK_0220E640
UNK04_0220E640: ; 0x0220E640
	.byte 0x5C, 0x6D, 0x73, 0x67, 0x5C, 0x0A, 0x00, 0x00

	.global UNK_0220E648
UNK04_0220E648: ; 0x0220E648
	.byte 0x45, 0x72, 0x72, 0x6F, 0x72, 0x20, 0x63, 0x6F, 0x6E, 0x6E, 0x65, 0x63, 0x74, 0x69, 0x6E, 0x67
	.byte 0x20, 0x74, 0x6F, 0x20, 0x61, 0x20, 0x70, 0x65, 0x65, 0x72, 0x2E, 0x00

	.global UNK_0220E664
UNK04_0220E664: ; 0x0220E664
	.byte 0x54, 0x68, 0x65, 0x72, 0x65, 0x20, 0x77, 0x61, 0x73, 0x20, 0x61, 0x6E, 0x20, 0x65, 0x72, 0x72
	.byte 0x6F, 0x72, 0x20, 0x63, 0x72, 0x65, 0x61, 0x74, 0x69, 0x6E, 0x67, 0x20, 0x61, 0x20, 0x73, 0x6F
	.byte 0x63, 0x6B, 0x65, 0x74, 0x2E, 0x00, 0x00, 0x00

	.global UNK_0220E68C
UNK04_0220E68C: ; 0x0220E68C
	.byte 0x54, 0x68, 0x65, 0x72, 0x65, 0x20, 0x77, 0x61, 0x73, 0x20, 0x61, 0x6E, 0x20, 0x65, 0x72, 0x72
	.byte 0x6F, 0x72, 0x20, 0x6D, 0x61, 0x6B, 0x69, 0x6E, 0x67, 0x20, 0x61, 0x20, 0x73, 0x6F, 0x63, 0x6B
	.byte 0x65, 0x74, 0x20, 0x6E, 0x6F, 0x6E, 0x2D, 0x62, 0x6C, 0x6F, 0x63, 0x6B, 0x69, 0x6E, 0x67, 0x2E
	.byte 0x00, 0x00, 0x00, 0x00

	.global UNK_0220E6C0
UNK04_0220E6C0: ; 0x0220E6C0
	.byte 0x54, 0x68, 0x65, 0x72, 0x65, 0x20, 0x77, 0x61, 0x73, 0x20, 0x61, 0x6E, 0x20, 0x65, 0x72, 0x72
	.byte 0x6F, 0x72, 0x20, 0x63, 0x6F, 0x6E, 0x6E, 0x65, 0x63, 0x74, 0x69, 0x6E, 0x67, 0x20, 0x61, 0x20
	.byte 0x73, 0x6F, 0x63, 0x6B, 0x65, 0x74, 0x2E, 0x00

	.global UNK_0220E6E8
UNK04_0220E6E8: ; 0x0220E6E8
	.byte 0x30, 0x00, 0x00, 0x00

	.global UNK_0220E6EC
UNK04_0220E6EC: ; 0x0220E6EC
	.byte 0x54, 0x72, 0x69, 0x65, 0x64, 0x20, 0x74, 0x6F, 0x20, 0x72, 0x65, 0x6D, 0x6F, 0x76, 0x65, 0x20
	.byte 0x70, 0x65, 0x65, 0x72, 0x20, 0x6E, 0x6F, 0x74, 0x20, 0x69, 0x6E, 0x20, 0x6C, 0x69, 0x73, 0x74
	.byte 0x2E, 0x00, 0x00, 0x00

	.global UNK_0220E710
UNK04_0220E710: ; 0x0220E710
	.byte 0x70, 0x65, 0x65, 0x72, 0x2D, 0x3E, 0x73, 0x74, 0x61, 0x74, 0x65, 0x20, 0x21, 0x3D, 0x20, 0x47
	.byte 0x50, 0x49, 0x5F, 0x50, 0x45, 0x45, 0x52, 0x5F, 0x4E, 0x4F, 0x54, 0x5F, 0x43, 0x4F, 0x4E, 0x4E
	.byte 0x45, 0x43, 0x54, 0x45, 0x44, 0x00, 0x00, 0x00

	.global UNK_0220E738
UNK04_0220E738: ; 0x0220E738
	.byte 0x50, 0x52, 0x00, 0x00

	.global UNK_0220E73C
UNK04_0220E73C: ; 0x0220E73C
	.byte 0x4F, 0x75, 0x74, 0x20, 0x6F, 0x66, 0x20, 0x6D, 0x65, 0x6D, 0x6F, 0x72, 0x79, 0x2E, 0x00, 0x00

	.global UNK_0220E74C
UNK04_0220E74C: ; 0x0220E74C
	.byte 0x31, 0x00, 0x00, 0x00

	.global UNK_0220E750
UNK04_0220E750: ; 0x0220E750
	.byte 0x70, 0x65, 0x65, 0x72, 0x2D, 0x3E, 0x73, 0x74, 0x61, 0x74, 0x65, 0x20, 0x3D, 0x3D, 0x20, 0x47
	.byte 0x50, 0x49, 0x5F, 0x50, 0x45, 0x45, 0x52, 0x5F, 0x57, 0x41, 0x49, 0x54, 0x49, 0x4E, 0x47, 0x00

	.global UNK_0220E770
UNK04_0220E770: ; 0x0220E770
	.byte 0x5C, 0x66, 0x69, 0x6E, 0x61, 0x6C, 0x5C, 0x00

	.global UNK_0220E778
UNK04_0220E778: ; 0x0220E778
	.byte 0x5C, 0x61, 0x75, 0x74, 0x68, 0x5C, 0x00, 0x00

	.global UNK_0220E780
UNK04_0220E780: ; 0x0220E780
	.byte 0x5C, 0x70, 0x69, 0x64, 0x5C, 0x00, 0x00, 0x00

	.global UNK_0220E788
UNK04_0220E788: ; 0x0220E788
	.byte 0x5C, 0x6E, 0x69, 0x63, 0x6B, 0x5C, 0x00, 0x00

	.global UNK_0220E790
UNK04_0220E790: ; 0x0220E790
	.byte 0x5C, 0x73, 0x69, 0x67, 0x5C, 0x00, 0x00, 0x00

	.global UNK_0220E798
UNK04_0220E798: ; 0x0220E798
	.byte 0x25, 0x73, 0x25, 0x64, 0x25, 0x64, 0x00, 0x00

	.global UNK_0220E7A0
UNK04_0220E7A0: ; 0x0220E7A0
	.byte 0x5C, 0x61, 0x6E, 0x61, 0x63, 0x6B, 0x5C, 0x00

	.global UNK_0220E7A8
UNK04_0220E7A8: ; 0x0220E7A8
	.byte 0x5C, 0x61, 0x61, 0x63, 0x6B, 0x5C, 0x00, 0x00

	.global UNK_0220E7B0
UNK04_0220E7B0: ; 0x0220E7B0
	.byte 0x45, 0x72, 0x72, 0x6F, 0x72, 0x20, 0x67, 0x65, 0x74, 0x74, 0x69, 0x6E, 0x67, 0x20, 0x62, 0x75
	.byte 0x64, 0x64, 0x79, 0x20, 0x61, 0x75, 0x74, 0x68, 0x6F, 0x72, 0x69, 0x7A, 0x61, 0x74, 0x69, 0x6F
	.byte 0x6E, 0x2E, 0x00, 0x00

	.global UNK_0220E7D4
UNK04_0220E7D4: ; 0x0220E7D4
	.byte 0x45, 0x72, 0x72, 0x6F, 0x72, 0x20, 0x70, 0x61, 0x72, 0x73, 0x69, 0x6E, 0x67, 0x20, 0x62, 0x75
	.byte 0x64, 0x64, 0x79, 0x20, 0x6D, 0x65, 0x73, 0x73, 0x61, 0x67, 0x65, 0x2E, 0x00, 0x00, 0x00, 0x00

	.global UNK_0220E7F4
UNK04_0220E7F4: ; 0x0220E7F4
	.byte 0x69, 0x64, 0x20, 0x3E, 0x20, 0x30, 0x00, 0x00

	.global UNK_0220E7FC
UNK04_0220E7FC: ; 0x0220E7FC
	.byte 0x67, 0x70, 0x69, 0x50, 0x72, 0x6F, 0x66, 0x69, 0x6C, 0x65, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x00

	.global UNK_0220E80C
UNK04_0220E80C: ; 0x0220E80C
	.byte 0x5C, 0x6E, 0x70, 0x72, 0x5C, 0x00, 0x00, 0x00

	.global UNK_0220E814
UNK04_0220E814: ; 0x0220E814
	.byte 0x55, 0x6E, 0x65, 0x78, 0x70, 0x65, 0x63, 0x74, 0x65, 0x64, 0x20, 0x64, 0x61, 0x74, 0x61, 0x20
	.byte 0x77, 0x61, 0x73, 0x20, 0x72, 0x65, 0x63, 0x65, 0x69, 0x76, 0x65, 0x64, 0x20, 0x66, 0x72, 0x6F
	.byte 0x6D, 0x20, 0x74, 0x68, 0x65, 0x20, 0x73, 0x65, 0x72, 0x76, 0x65, 0x72, 0x2E, 0x00, 0x00, 0x00

	.global UNK_0220E844
UNK04_0220E844: ; 0x0220E844
	.byte 0x5C, 0x70, 0x72, 0x6F, 0x66, 0x69, 0x6C, 0x65, 0x69, 0x64, 0x5C, 0x00

	.global UNK_0220E850
UNK04_0220E850: ; 0x0220E850
	.byte 0x4F, 0x75, 0x74, 0x20, 0x6F, 0x66, 0x20, 0x6D, 0x65, 0x6D, 0x6F, 0x72, 0x79, 0x2E, 0x00, 0x00

	.global UNK_0220E860
UNK04_0220E860: ; 0x0220E860
	.byte 0x67, 0x70, 0x73, 0x70, 0x2E, 0x67, 0x73, 0x2E, 0x6E, 0x69, 0x6E, 0x74, 0x65, 0x6E, 0x64, 0x6F
	.byte 0x77, 0x69, 0x66, 0x69, 0x2E, 0x6E, 0x65, 0x74, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	.global UNK_0220E8A0
UNK04_0220E8A0: ; 0x0220E8A0
	.byte 0x4F, 0x75, 0x74, 0x20, 0x6F, 0x66, 0x20, 0x6D, 0x65, 0x6D, 0x6F, 0x72, 0x79, 0x2E, 0x00, 0x00

	.global UNK_0220E8B0
UNK04_0220E8B0: ; 0x0220E8B0
	.byte 0x6E, 0x75, 0x6D, 0x20, 0x3C, 0x20, 0x69, 0x63, 0x6F, 0x6E, 0x6E, 0x65, 0x63, 0x74, 0x69, 0x6F
	.byte 0x6E, 0x2D, 0x3E, 0x6E, 0x75, 0x6D, 0x53, 0x65, 0x61, 0x72, 0x63, 0x68, 0x65, 0x73, 0x00, 0x00

	.global UNK_0220E8D0
UNK04_0220E8D0: ; 0x0220E8D0
	.byte 0x67, 0x70, 0x69, 0x53, 0x65, 0x61, 0x72, 0x63, 0x68, 0x2E, 0x63, 0x00

	.global UNK_0220E8DC
UNK04_0220E8DC: ; 0x0220E8DC
	.byte 0x53, 0x4D, 0x00, 0x00

	.global UNK_0220E8E0
UNK04_0220E8E0: ; 0x0220E8E0
	.byte 0x43, 0x6F, 0x75, 0x6C, 0x64, 0x20, 0x6E, 0x6F, 0x74, 0x20, 0x63, 0x6F, 0x6E, 0x6E, 0x65, 0x63
	.byte 0x74, 0x20, 0x74, 0x6F, 0x20, 0x74, 0x68, 0x65, 0x20, 0x73, 0x65, 0x61, 0x72, 0x63, 0x68, 0x20
	.byte 0x6D, 0x61, 0x6E, 0x61, 0x67, 0x65, 0x72, 0x2E, 0x00, 0x00, 0x00, 0x00

	.global UNK_0220E90C
UNK04_0220E90C: ; 0x0220E90C
	.byte 0x5C, 0x73, 0x65, 0x61, 0x72, 0x63, 0x68, 0x5C, 0x00, 0x00, 0x00, 0x00

	.global UNK_0220E918
UNK04_0220E918: ; 0x0220E918
	.byte 0x5C, 0x73, 0x65, 0x73, 0x73, 0x6B, 0x65, 0x79, 0x5C, 0x00, 0x00, 0x00

	.global UNK_0220E924
UNK04_0220E924: ; 0x0220E924
	.byte 0x5C, 0x70, 0x72, 0x6F, 0x66, 0x69, 0x6C, 0x65, 0x69, 0x64, 0x5C, 0x00

	.global UNK_0220E930
UNK04_0220E930: ; 0x0220E930
	.byte 0x5C, 0x6E, 0x61, 0x6D, 0x65, 0x73, 0x70, 0x61, 0x63, 0x65, 0x69, 0x64, 0x5C, 0x00, 0x00, 0x00

	.global UNK_0220E940
UNK04_0220E940: ; 0x0220E940
	.byte 0x5C, 0x6E, 0x69, 0x63, 0x6B, 0x5C, 0x00, 0x00

	.global UNK_0220E948
UNK04_0220E948: ; 0x0220E948
	.byte 0x5C, 0x75, 0x6E, 0x69, 0x71, 0x75, 0x65, 0x6E, 0x69, 0x63, 0x6B, 0x5C, 0x00, 0x00, 0x00, 0x00

	.global UNK_0220E958
UNK04_0220E958: ; 0x0220E958
	.byte 0x5C, 0x65, 0x6D, 0x61, 0x69, 0x6C, 0x5C, 0x00

	.global UNK_0220E960
UNK04_0220E960: ; 0x0220E960
	.byte 0x5C, 0x66, 0x69, 0x72, 0x73, 0x74, 0x6E, 0x61, 0x6D, 0x65, 0x5C, 0x00

	.global UNK_0220E96C
UNK04_0220E96C: ; 0x0220E96C
	.byte 0x5C, 0x6C, 0x61, 0x73, 0x74, 0x6E, 0x61, 0x6D, 0x65, 0x5C, 0x00, 0x00

	.global UNK_0220E978
UNK04_0220E978: ; 0x0220E978
	.byte 0x5C, 0x69, 0x63, 0x71, 0x75, 0x69, 0x6E, 0x5C, 0x00, 0x00, 0x00, 0x00

	.global UNK_0220E984
UNK04_0220E984: ; 0x0220E984
	.byte 0x5C, 0x73, 0x6B, 0x69, 0x70, 0x5C, 0x00, 0x00

	.global UNK_0220E98C
UNK04_0220E98C: ; 0x0220E98C
	.byte 0x5C, 0x76, 0x61, 0x6C, 0x69, 0x64, 0x5C, 0x00

	.global UNK_0220E994
UNK04_0220E994: ; 0x0220E994
	.byte 0x5C, 0x6E, 0x69, 0x63, 0x6B, 0x73, 0x5C, 0x00

	.global UNK_0220E99C
UNK04_0220E99C: ; 0x0220E99C
	.byte 0x5C, 0x70, 0x61, 0x73, 0x73, 0x5C, 0x00, 0x00

	.global UNK_0220E9A4
UNK04_0220E9A4: ; 0x0220E9A4
	.byte 0x5C, 0x70, 0x6D, 0x61, 0x74, 0x63, 0x68, 0x5C, 0x00, 0x00, 0x00, 0x00

	.global UNK_0220E9B0
UNK04_0220E9B0: ; 0x0220E9B0
	.byte 0x5C, 0x70, 0x72, 0x6F, 0x64, 0x75, 0x63, 0x74, 0x69, 0x64, 0x5C, 0x00

	.global UNK_0220E9BC
UNK04_0220E9BC: ; 0x0220E9BC
	.byte 0x5C, 0x63, 0x68, 0x65, 0x63, 0x6B, 0x5C, 0x00

	.global UNK_0220E9C4
UNK04_0220E9C4: ; 0x0220E9C4
	.byte 0x5C, 0x6E, 0x65, 0x77, 0x75, 0x73, 0x65, 0x72, 0x5C, 0x00, 0x00, 0x00

	.global UNK_0220E9D0
UNK04_0220E9D0: ; 0x0220E9D0
	.byte 0x5C, 0x70, 0x72, 0x6F, 0x64, 0x75, 0x63, 0x74, 0x49, 0x44, 0x5C, 0x00

	.global UNK_0220E9DC
UNK04_0220E9DC: ; 0x0220E9DC
	.byte 0x5C, 0x63, 0x64, 0x6B, 0x65, 0x79, 0x5C, 0x00

	.global UNK_0220E9E4
UNK04_0220E9E4: ; 0x0220E9E4
	.byte 0x5C, 0x6F, 0x74, 0x68, 0x65, 0x72, 0x73, 0x5C, 0x00, 0x00, 0x00, 0x00

	.global UNK_0220E9F0
UNK04_0220E9F0: ; 0x0220E9F0
	.byte 0x5C, 0x75, 0x6E, 0x69, 0x71, 0x75, 0x65, 0x73, 0x65, 0x61, 0x72, 0x63, 0x68, 0x5C, 0x00, 0x00

	.global UNK_0220EA00
UNK04_0220EA00: ; 0x0220EA00
	.byte 0x5C, 0x70, 0x72, 0x65, 0x66, 0x65, 0x72, 0x72, 0x65, 0x64, 0x6E, 0x69, 0x63, 0x6B, 0x5C, 0x00

	.global UNK_0220EA10
UNK04_0220EA10: ; 0x0220EA10
	.byte 0x30, 0x00, 0x00, 0x00

	.global UNK_0220EA14
UNK04_0220EA14: ; 0x0220EA14
	.byte 0x5C, 0x67, 0x61, 0x6D, 0x65, 0x6E, 0x61, 0x6D, 0x65, 0x5C, 0x00, 0x00

	.global UNK_0220EA20
UNK04_0220EA20: ; 0x0220EA20
	.byte 0x5C, 0x66, 0x69, 0x6E, 0x61, 0x6C, 0x5C, 0x00

	.global UNK_0220EA28
UNK04_0220EA28: ; 0x0220EA28
	.byte 0x54, 0x68, 0x65, 0x72, 0x65, 0x20, 0x77, 0x61, 0x73, 0x20, 0x61, 0x6E, 0x20, 0x65, 0x72, 0x72
	.byte 0x6F, 0x72, 0x20, 0x72, 0x65, 0x61, 0x64, 0x69, 0x6E, 0x67, 0x20, 0x66, 0x72, 0x6F, 0x6D, 0x20
	.byte 0x74, 0x68, 0x65, 0x20, 0x73, 0x65, 0x72, 0x76, 0x65, 0x72, 0x2E, 0x00

	.global UNK_0220EA54
UNK04_0220EA54: ; 0x0220EA54
	.byte 0x62, 0x73, 0x72, 0x64, 0x6F, 0x6E, 0x65, 0x00

	.global UNK_0220EA5C
UNK04_0220EA5C: ; 0x0220EA5C
	.byte 0x6D, 0x6F, 0x72, 0x65, 0x00, 0x00, 0x00, 0x00

	.global UNK_0220EA64
UNK04_0220EA64: ; 0x0220EA64
	.byte 0x62, 0x73, 0x72, 0x00

	.global UNK_0220EA68
UNK04_0220EA68: ; 0x0220EA68
	.byte 0x6E, 0x69, 0x63, 0x6B, 0x00, 0x00, 0x00, 0x00

	.global UNK_0220EA70
UNK04_0220EA70: ; 0x0220EA70
	.byte 0x75, 0x6E, 0x69, 0x71, 0x75, 0x65, 0x6E, 0x69, 0x63, 0x6B, 0x00, 0x00

	.global UNK_0220EA7C
UNK04_0220EA7C: ; 0x0220EA7C
	.byte 0x66, 0x69, 0x72, 0x73, 0x74, 0x6E, 0x61, 0x6D, 0x65, 0x00, 0x00, 0x00

	.global UNK_0220EA88
UNK04_0220EA88: ; 0x0220EA88
	.byte 0x6C, 0x61, 0x73, 0x74, 0x6E, 0x61, 0x6D, 0x65, 0x00, 0x00, 0x00, 0x00

	.global UNK_0220EA94
UNK04_0220EA94: ; 0x0220EA94
	.byte 0x65, 0x6D, 0x61, 0x69, 0x6C, 0x00, 0x00, 0x00

	.global UNK_0220EA9C
UNK04_0220EA9C: ; 0x0220EA9C
	.byte 0x45, 0x72, 0x72, 0x6F, 0x72, 0x20, 0x72, 0x65, 0x61, 0x64, 0x69, 0x6E, 0x67, 0x20, 0x66, 0x72
	.byte 0x6F, 0x6D, 0x20, 0x74, 0x68, 0x65, 0x20, 0x73, 0x65, 0x61, 0x72, 0x63, 0x68, 0x20, 0x73, 0x65
	.byte 0x72, 0x76, 0x65, 0x72, 0x2E, 0x00, 0x00, 0x00

	.global UNK_0220EAC4
UNK04_0220EAC4: ; 0x0220EAC4
	.byte 0x76, 0x72, 0x00, 0x00

	.global UNK_0220EAC8
UNK04_0220EAC8: ; 0x0220EAC8
	.byte 0x6E, 0x72, 0x00, 0x00

	.global UNK_0220EACC
UNK04_0220EACC: ; 0x0220EACC
	.byte 0x6E, 0x64, 0x6F, 0x6E, 0x65, 0x00, 0x00, 0x00

	.global UNK_0220EAD4
UNK04_0220EAD4: ; 0x0220EAD4
	.byte 0x70, 0x73, 0x72, 0x64, 0x6F, 0x6E, 0x65, 0x00

	.global UNK_0220EADC
UNK04_0220EADC: ; 0x0220EADC
	.byte 0x70, 0x73, 0x72, 0x00

	.global UNK_0220EAE0
UNK04_0220EAE0: ; 0x0220EAE0
	.byte 0x73, 0x74, 0x61, 0x74, 0x75, 0x73, 0x00, 0x00

	.global UNK_0220EAE8
UNK04_0220EAE8: ; 0x0220EAE8
	.byte 0x73, 0x74, 0x61, 0x74, 0x75, 0x73, 0x63, 0x6F, 0x64, 0x65, 0x00, 0x00

	.global UNK_0220EAF4
UNK04_0220EAF4: ; 0x0220EAF4
	.byte 0x63, 0x75, 0x72, 0x00

	.global UNK_0220EAF8
UNK04_0220EAF8: ; 0x0220EAF8
	.byte 0x5C, 0x70, 0x69, 0x64, 0x5C, 0x00, 0x00, 0x00

	.global UNK_0220EB00
UNK04_0220EB00: ; 0x0220EB00
	.byte 0x6E, 0x75, 0x72, 0x00

	.global UNK_0220EB04
UNK04_0220EB04: ; 0x0220EB04
	.byte 0x6F, 0x74, 0x68, 0x65, 0x72, 0x73, 0x00, 0x00

	.global UNK_0220EB0C
UNK04_0220EB0C: ; 0x0220EB0C
	.byte 0x6F, 0x64, 0x6F, 0x6E, 0x65, 0x00, 0x00, 0x00

	.global UNK_0220EB14
UNK04_0220EB14: ; 0x0220EB14
	.byte 0x6F, 0x00, 0x00, 0x00

	.global UNK_0220EB18
UNK04_0220EB18: ; 0x0220EB18
	.byte 0x66, 0x69, 0x72, 0x73, 0x74, 0x00, 0x00, 0x00

	.global UNK_0220EB20
UNK04_0220EB20: ; 0x0220EB20
	.byte 0x6C, 0x61, 0x73, 0x74, 0x00, 0x00, 0x00, 0x00

	.global UNK_0220EB28
UNK04_0220EB28: ; 0x0220EB28
	.byte 0x75, 0x73, 0x00, 0x00

	.global UNK_0220EB2C
UNK04_0220EB2C: ; 0x0220EB2C
	.byte 0x75, 0x73, 0x64, 0x6F, 0x6E, 0x65, 0x00, 0x00

	.global UNK_0220EB34
UNK04_0220EB34: ; 0x0220EB34
	.byte 0x63, 0x6F, 0x75, 0x6E, 0x74, 0x20, 0x3D, 0x3D, 0x20, 0x61, 0x72, 0x67, 0x2D, 0x3E, 0x6E, 0x75
	.byte 0x6D, 0x53, 0x75, 0x67, 0x67, 0x65, 0x73, 0x74, 0x65, 0x64, 0x4E, 0x69, 0x63, 0x6B, 0x73, 0x00

	.global UNK_0220EB54
UNK04_0220EB54: ; 0x0220EB54
	.byte 0x4E, 0x6F, 0x20, 0x73, 0x65, 0x61, 0x72, 0x63, 0x68, 0x20, 0x63, 0x72, 0x69, 0x74, 0x65, 0x72
	.byte 0x69, 0x61, 0x2E, 0x00

	.global UNK_0220EB68
UNK04_0220EB68: ; 0x0220EB68
	.byte 0x54, 0x68, 0x65, 0x72, 0x65, 0x20, 0x77, 0x61, 0x73, 0x20, 0x61, 0x6E, 0x20, 0x65, 0x72, 0x72
	.byte 0x6F, 0x72, 0x20, 0x63, 0x72, 0x65, 0x61, 0x74, 0x69, 0x6E, 0x67, 0x20, 0x61, 0x20, 0x73, 0x6F
	.byte 0x63, 0x6B, 0x65, 0x74, 0x2E, 0x00, 0x00, 0x00

	.global UNK_0220EB90
UNK04_0220EB90: ; 0x0220EB90
	.byte 0x54, 0x68, 0x65, 0x72, 0x65, 0x20, 0x77, 0x61, 0x73, 0x20, 0x61, 0x6E, 0x20, 0x65, 0x72, 0x72
	.byte 0x6F, 0x72, 0x20, 0x6D, 0x61, 0x6B, 0x69, 0x6E, 0x67, 0x20, 0x61, 0x20, 0x73, 0x6F, 0x63, 0x6B
	.byte 0x65, 0x74, 0x20, 0x6E, 0x6F, 0x6E, 0x2D, 0x62, 0x6C, 0x6F, 0x63, 0x6B, 0x69, 0x6E, 0x67, 0x2E
	.byte 0x00, 0x00, 0x00, 0x00

	.global UNK_0220EBC4
UNK04_0220EBC4: ; 0x0220EBC4
	.byte 0x43, 0x6F, 0x75, 0x6C, 0x64, 0x20, 0x6E, 0x6F, 0x74, 0x20, 0x72, 0x65, 0x73, 0x6F, 0x6C, 0x76
	.byte 0x65, 0x20, 0x73, 0x65, 0x61, 0x72, 0x63, 0x68, 0x20, 0x6D, 0x61, 0x6E, 0x61, 0x6E, 0x67, 0x65
	.byte 0x72, 0x20, 0x68, 0x6F, 0x73, 0x74, 0x20, 0x6E, 0x61, 0x6D, 0x65, 0x2E, 0x00, 0x00, 0x00, 0x00

	.global UNK_0220EBF4
UNK04_0220EBF4: ; 0x0220EBF4
	.byte 0x61, 0x64, 0x64, 0x72, 0x65, 0x73, 0x73, 0x2E, 0x73, 0x69, 0x6E, 0x5F, 0x61, 0x64, 0x64, 0x72
	.byte 0x2E, 0x73, 0x5F, 0x61, 0x64, 0x64, 0x72, 0x20, 0x21, 0x3D, 0x20, 0x30, 0x00, 0x00, 0x00, 0x00

	.global UNK_0220EC14
UNK04_0220EC14: ; 0x0220EC14
	.byte 0x54, 0x68, 0x65, 0x72, 0x65, 0x20, 0x77, 0x61, 0x73, 0x20, 0x61, 0x6E, 0x20, 0x65, 0x72, 0x72
	.byte 0x6F, 0x72, 0x20, 0x63, 0x6F, 0x6E, 0x6E, 0x65, 0x63, 0x74, 0x69, 0x6E, 0x67, 0x20, 0x61, 0x20
	.byte 0x73, 0x6F, 0x63, 0x6B, 0x65, 0x74, 0x2E, 0x00

	.global UNK_0220EC3C
UNK04_0220EC3C: ; 0x0220EC3C
	.byte 0x5C, 0x78, 0x66, 0x65, 0x72, 0x5C, 0x00, 0x00

	.global UNK_0220EC44
UNK04_0220EC44: ; 0x0220EC44
	.byte 0x25, 0x64, 0x20, 0x25, 0x75, 0x20, 0x25, 0x75, 0x00, 0x00, 0x00, 0x00

	.global UNK_0220EC50
UNK04_0220EC50: ; 0x0220EC50
	.byte 0x00, 0x00, 0x00, 0x00

	.global UNK_0220EC54
UNK04_0220EC54: ; 0x0220EC54
	.byte 0x5C, 0x76, 0x65, 0x72, 0x73, 0x69, 0x6F, 0x6E, 0x5C, 0x25, 0x64, 0x5C, 0x72, 0x65, 0x73, 0x75
	.byte 0x6C, 0x74, 0x5C, 0x25, 0x64, 0x00, 0x00, 0x00

	.global UNK_0220EC6C
UNK04_0220EC6C: ; 0x0220EC6C
	.byte 0x5C, 0x72, 0x6E, 0x5C, 0x00, 0x00, 0x00, 0x00

	.global UNK_0220EC74
UNK04_0220EC74: ; 0x0220EC74
	.byte 0x55, 0x6E, 0x65, 0x78, 0x70, 0x65, 0x63, 0x74, 0x65, 0x64, 0x20, 0x64, 0x61, 0x74, 0x61, 0x20
	.byte 0x77, 0x61, 0x73, 0x20, 0x72, 0x65, 0x63, 0x65, 0x69, 0x76, 0x65, 0x64, 0x20, 0x66, 0x72, 0x6F
	.byte 0x6D, 0x20, 0x74, 0x68, 0x65, 0x20, 0x73, 0x65, 0x72, 0x76, 0x65, 0x72, 0x2E, 0x00, 0x00, 0x00

	.global UNK_0220ECA4
UNK04_0220ECA4: ; 0x0220ECA4
	.byte 0x4F, 0x75, 0x74, 0x20, 0x6F, 0x66, 0x20, 0x6D, 0x65, 0x6D, 0x6F, 0x72, 0x79, 0x2E, 0x00, 0x00

	.global UNK_0220ECB4
UNK04_0220ECB4: ; 0x0220ECB4
	.byte 0x62, 0x75, 0x66, 0x66, 0x65, 0x72, 0x20, 0x21, 0x3D, 0x20, 0x4E, 0x55, 0x4C, 0x4C, 0x00, 0x00

	.global UNK_0220ECC4
UNK04_0220ECC4: ; 0x0220ECC4
	.byte 0x67, 0x70, 0x69, 0x55, 0x74, 0x69, 0x6C, 0x69, 0x74, 0x79, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x00

	.global UNK_0220ECD4
UNK04_0220ECD4: ; 0x0220ECD4
	.byte 0x6B, 0x65, 0x79, 0x20, 0x21, 0x3D, 0x20, 0x4E, 0x55, 0x4C, 0x4C, 0x00

	.global UNK_0220ECE0
UNK04_0220ECE0: ; 0x0220ECE0
	.byte 0x76, 0x61, 0x6C, 0x75, 0x65, 0x20, 0x21, 0x3D, 0x20, 0x4E, 0x55, 0x4C, 0x4C, 0x00, 0x00, 0x00

	.global UNK_0220ECF0
UNK04_0220ECF0: ; 0x0220ECF0
	.byte 0x50, 0x61, 0x72, 0x73, 0x65, 0x20, 0x45, 0x72, 0x72, 0x6F, 0x72, 0x2E, 0x00, 0x00, 0x00, 0x00

	.global UNK_0220ED00
UNK04_0220ED00: ; 0x0220ED00
	.byte 0x45, 0x72, 0x72, 0x6F, 0x72, 0x20, 0x63, 0x6F, 0x6E, 0x6E, 0x65, 0x63, 0x74, 0x69, 0x6E, 0x67
	.byte 0x0A, 0x00, 0x00, 0x00

	.global UNK_0220ED14
UNK04_0220ED14: ; 0x0220ED14
	.byte 0x54, 0x68, 0x65, 0x72, 0x65, 0x20, 0x77, 0x61, 0x73, 0x20, 0x61, 0x6E, 0x20, 0x65, 0x72, 0x72
	.byte 0x6F, 0x72, 0x20, 0x63, 0x68, 0x65, 0x63, 0x6B, 0x69, 0x6E, 0x67, 0x20, 0x66, 0x6F, 0x72, 0x20
	.byte 0x61, 0x20, 0x63, 0x6F, 0x6D, 0x70, 0x6C, 0x65, 0x74, 0x65, 0x64, 0x20, 0x63, 0x6F, 0x6E, 0x6E
	.byte 0x65, 0x63, 0x74, 0x69, 0x6F, 0x6E, 0x2E, 0x00

	.global UNK_0220ED4C
UNK04_0220ED4C: ; 0x0220ED4C
	.byte 0x43, 0x6F, 0x6E, 0x6E, 0x65, 0x63, 0x74, 0x69, 0x6F, 0x6E, 0x20, 0x72, 0x65, 0x6A, 0x65, 0x63
	.byte 0x74, 0x65, 0x64, 0x0A, 0x00, 0x00, 0x00, 0x00

	.global UNK_0220ED64
UNK04_0220ED64: ; 0x0220ED64
	.byte 0x43, 0x6F, 0x6E, 0x6E, 0x65, 0x63, 0x74, 0x69, 0x6F, 0x6E, 0x20, 0x61, 0x63, 0x63, 0x65, 0x70
	.byte 0x74, 0x65, 0x64, 0x0A, 0x00, 0x00, 0x00, 0x00

	.global UNK_0220ED7C
UNK04_0220ED7C: ; 0x0220ED7C
	.byte 0x63, 0x6F, 0x6D, 0x6D, 0x61, 0x6E, 0x64, 0x20, 0x21, 0x3D, 0x20, 0x4E, 0x55, 0x4C, 0x4C, 0x00

	.global UNK_0220ED8C
UNK04_0220ED8C: ; 0x0220ED8C
	.byte 0x6C, 0x65, 0x6E, 0x20, 0x3E, 0x20, 0x30, 0x00

	.global UNK_0220ED94
UNK04_0220ED94: ; 0x0220ED94
	.byte 0x5C, 0x65, 0x72, 0x72, 0x6F, 0x72, 0x5C, 0x00

	.global UNK_0220ED9C
UNK04_0220ED9C: ; 0x0220ED9C
	.byte 0x5C, 0x65, 0x72, 0x72, 0x5C, 0x00, 0x00, 0x00

	.global UNK_0220EDA4
UNK04_0220EDA4: ; 0x0220EDA4
	.byte 0x5C, 0x65, 0x72, 0x72, 0x6D, 0x73, 0x67, 0x5C, 0x00, 0x00, 0x00, 0x00

	.global UNK_0220EDB0
UNK04_0220EDB0: ; 0x0220EDB0
	.byte 0x5C, 0x66, 0x61, 0x74, 0x61, 0x6C, 0x5C, 0x00

	.global UNK_0220EDB8
UNK04_0220EDB8: ; 0x0220EDB8
	.byte 0x64, 0x65, 0x73, 0x74, 0x20, 0x21, 0x3D, 0x20, 0x4E, 0x55, 0x4C, 0x4C, 0x00, 0x00, 0x00, 0x00

	.global UNK_0220EDC8
UNK04_0220EDC8: ; 0x0220EDC8
	.byte 0x73, 0x72, 0x63, 0x20, 0x21, 0x3D, 0x20, 0x4E, 0x55, 0x4C, 0x4C, 0x00

	.global UNK_0220EDD4
UNK04_0220EDD4: ; 0x0220EDD4
	.byte 0xFF, 0xFF, 0xFF, 0xFF

	.global UNK_0220EDD8
UNK04_0220EDD8: ; 0x0220EDD8
	.word UNK04_0220EDDC

	.global UNK_0220EDDC
UNK04_0220EDDC: ; 0x0220EDDC
	.byte 0x00, 0x61, 0x6D, 0x65, 0x53, 0x70, 0x79, 0x33, 0x44, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	.global UNK_0220EDEC
UNK04_0220EDEC: ; 0x0220EDEC
	.byte 0x00, 0x72, 0x6F, 0x6A, 0x65, 0x63, 0x74, 0x41, 0x70, 0x68, 0x65, 0x78, 0x00, 0x00, 0x00, 0x00

	.global UNK_0220EDFC
UNK04_0220EDFC: ; 0x0220EDFC
	.byte 0x5C, 0x70, 0x61, 0x75, 0x74, 0x68, 0x72, 0x5C, 0x00, 0x00, 0x00, 0x00

	.global UNK_0220EE08
UNK04_0220EE08: ; 0x0220EE08
	.byte 0x5C, 0x67, 0x65, 0x74, 0x70, 0x69, 0x64, 0x72, 0x5C, 0x00, 0x00, 0x00

	.global UNK_0220EE14
UNK04_0220EE14: ; 0x0220EE14
	.byte 0x5C, 0x67, 0x65, 0x74, 0x70, 0x64, 0x72, 0x5C, 0x00, 0x00, 0x00, 0x00

	.global UNK_0220EE20
UNK04_0220EE20: ; 0x0220EE20
	.byte 0x5C, 0x73, 0x65, 0x74, 0x70, 0x64, 0x72, 0x5C, 0x00, 0x00, 0x00, 0x00

	.global UNK_0220EE2C
UNK04_0220EE2C: ; 0x0220EE2C
	.byte 0x73, 0x65, 0x74, 0x70, 0x64, 0x72, 0x00, 0x00

	.global UNK_0220EE34
UNK04_0220EE34: ; 0x0220EE34
	.byte 0x70, 0x69, 0x64, 0x00

	.global UNK_0220EE38
UNK04_0220EE38: ; 0x0220EE38
	.byte 0x6C, 0x69, 0x64, 0x00

	.global UNK_0220EE3C
UNK04_0220EE3C: ; 0x0220EE3C
	.byte 0x6D, 0x6F, 0x64, 0x00

	.global UNK_0220EE40
UNK04_0220EE40: ; 0x0220EE40
	.byte 0x67, 0x65, 0x74, 0x70, 0x64, 0x72, 0x00, 0x00

	.global UNK_0220EE48
UNK04_0220EE48: ; 0x0220EE48
	.byte 0x6C, 0x65, 0x6E, 0x67, 0x74, 0x68, 0x00, 0x00

	.global UNK_0220EE50
UNK04_0220EE50: ; 0x0220EE50
	.byte 0x5C, 0x64, 0x61, 0x74, 0x61, 0x5C, 0x00, 0x00

	.global UNK_0220EE58
UNK04_0220EE58: ; 0x0220EE58
	.byte 0x00, 0x00, 0x00, 0x00

	.global UNK_0220EE5C
UNK04_0220EE5C: ; 0x0220EE5C
	.byte 0x67, 0x65, 0x74, 0x70, 0x69, 0x64, 0x72, 0x00

	.global UNK_0220EE64
UNK04_0220EE64: ; 0x0220EE64
	.byte 0x70, 0x61, 0x75, 0x74, 0x68, 0x72, 0x00, 0x00

	.global UNK_0220EE6C
UNK04_0220EE6C: ; 0x0220EE6C
	.byte 0x65, 0x72, 0x72, 0x6D, 0x73, 0x67, 0x00, 0x00

	.global UNK_0220EE74
UNK04_0220EE74: ; 0x0220EE74
	.byte 0x5C, 0x00, 0x00, 0x00

	.global UNK_0220EE78
UNK04_0220EE78: ; 0x0220EE78
	.byte 0x33, 0x62, 0x38, 0x64, 0x64, 0x38, 0x39, 0x39, 0x35, 0x66, 0x37, 0x63, 0x34, 0x30, 0x61, 0x39
	.byte 0x61, 0x35, 0x63, 0x35, 0x62, 0x37, 0x64, 0x64, 0x35, 0x62, 0x34, 0x38, 0x31, 0x33, 0x34, 0x31
	.byte 0x00, 0x00, 0x00, 0x00

	.global UNK_0220EE9C
UNK04_0220EE9C: ; 0x0220EE9C
	.byte 0x62, 0x75, 0x66, 0x66, 0x65, 0x72, 0x00, 0x00

	.global UNK_0220EEA4
UNK04_0220EEA4: ; 0x0220EEA4
	.byte 0x67, 0x74, 0x32, 0x41, 0x75, 0x74, 0x68, 0x2E, 0x63, 0x00, 0x00, 0x00

	.global UNK_0220EEB0
UNK04_0220EEB0: ; 0x0220EEB0
	.byte 0x73, 0x74, 0x61, 0x72, 0x74, 0x20, 0x3C, 0x3D, 0x20, 0x62, 0x75, 0x66, 0x66, 0x65, 0x72, 0x2D
	.byte 0x3E, 0x6C, 0x65, 0x6E, 0x00, 0x00, 0x00, 0x00

	.global UNK_0220EEC8
UNK04_0220EEC8: ; 0x0220EEC8
	.byte 0x67, 0x74, 0x32, 0x42, 0x75, 0x66, 0x66, 0x65, 0x72, 0x2E, 0x63, 0x00

	.global UNK_0220EED4
UNK04_0220EED4: ; 0x0220EED4
	.byte 0x73, 0x68, 0x6F, 0x72, 0x74, 0x65, 0x6E, 0x42, 0x79, 0x20, 0x3C, 0x3D, 0x20, 0x28, 0x62, 0x75
	.byte 0x66, 0x66, 0x65, 0x72, 0x2D, 0x3E, 0x6C, 0x65, 0x6E, 0x20, 0x2D, 0x20, 0x73, 0x74, 0x61, 0x72
	.byte 0x74, 0x29, 0x00, 0x00

	.global UNK_0220EEF8
UNK04_0220EEF8: ; 0x0220EEF8
	.byte 0x28, 0x62, 0x75, 0x66, 0x66, 0x65, 0x72, 0x2D, 0x3E, 0x6C, 0x65, 0x6E, 0x20, 0x2B, 0x20, 0x6C
	.byte 0x65, 0x6E, 0x29, 0x20, 0x3C, 0x3D, 0x20, 0x62, 0x75, 0x66, 0x66, 0x65, 0x72, 0x2D, 0x3E, 0x73
	.byte 0x69, 0x7A, 0x65, 0x00

	.global UNK_0220EF1C
UNK04_0220EF1C: ; 0x0220EF1C
	.byte 0x28, 0x62, 0x75, 0x66, 0x66, 0x65, 0x72, 0x2D, 0x3E, 0x6C, 0x65, 0x6E, 0x20, 0x2B, 0x20, 0x32
	.byte 0x29, 0x20, 0x3C, 0x3D, 0x20, 0x62, 0x75, 0x66, 0x66, 0x65, 0x72, 0x2D, 0x3E, 0x73, 0x69, 0x7A
	.byte 0x65, 0x00, 0x00, 0x00

	.global UNK_0220EF40
UNK04_0220EF40: ; 0x0220EF40
	.byte 0x62, 0x75, 0x66, 0x66, 0x65, 0x72, 0x2D, 0x3E, 0x6C, 0x65, 0x6E, 0x20, 0x3C, 0x20, 0x62, 0x75
	.byte 0x66, 0x66, 0x65, 0x72, 0x2D, 0x3E, 0x73, 0x69, 0x7A, 0x65, 0x00, 0x00

	.global UNK_0220EF5C
UNK04_0220EF5C: ; 0x0220EF5C
	.byte 0x73, 0x6F, 0x63, 0x6B, 0x65, 0x74, 0x00, 0x00

	.global UNK_0220EF64
UNK04_0220EF64: ; 0x0220EF64
	.byte 0x67, 0x74, 0x32, 0x43, 0x61, 0x6C, 0x6C, 0x62, 0x61, 0x63, 0x6B, 0x2E, 0x63, 0x00, 0x00, 0x00

	.global UNK_0220EF74
UNK04_0220EF74: ; 0x0220EF74
	.byte 0x63, 0x6F, 0x6E, 0x6E, 0x65, 0x63, 0x74, 0x69, 0x6F, 0x6E, 0x00, 0x00

	.global UNK_0220EF80
UNK04_0220EF80: ; 0x0220EF80
	.byte 0x73, 0x6F, 0x63, 0x6B, 0x65, 0x74, 0x20, 0x26, 0x26, 0x20, 0x63, 0x6F, 0x6E, 0x6E, 0x65, 0x63
	.byte 0x74, 0x69, 0x6F, 0x6E, 0x00, 0x00, 0x00, 0x00

	.global UNK_0220EF98
UNK04_0220EF98: ; 0x0220EF98
	.byte 0x63, 0x6F, 0x6E, 0x6E, 0x65, 0x63, 0x74, 0x69, 0x6F, 0x6E, 0x00, 0x00

	.global UNK_0220EFA4
UNK04_0220EFA4: ; 0x0220EFA4
	.byte 0x67, 0x74, 0x32, 0x4D, 0x61, 0x69, 0x6E, 0x2E, 0x63, 0x00, 0x00, 0x00

	.global UNK_0220EFB0
UNK04_0220EFB0: ; 0x0220EFB0
	.byte 0xFE, 0xFE, 0x00, 0x00

	.global UNK_0220EFB4
UNK04_0220EFB4: ; 0x0220EFB4
	.byte 0x74, 0x69, 0x6D, 0x65, 0x00, 0x00, 0x00, 0x00

	.global UNK_0220EFBC
UNK04_0220EFBC: ; 0x0220EFBC
	.byte 0x6C, 0x65, 0x6E, 0x20, 0x3E, 0x20, 0x30, 0x00

	.global UNK_0220EFC4
UNK04_0220EFC4: ; 0x0220EFC4
	.byte 0x67, 0x74, 0x32, 0x4D, 0x65, 0x73, 0x73, 0x61, 0x67, 0x65, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x00

	.global UNK_0220EFD4
UNK04_0220EFD4: ; 0x0220EFD4
	.byte 0x00, 0x00, 0x00, 0x00

	.global UNK_0220EFD8
UNK04_0220EFD8: ; 0x0220EFD8
	.byte 0x6C, 0x65, 0x6E, 0x20, 0x3C, 0x20, 0x47, 0x54, 0x49, 0x32, 0x5F, 0x53, 0x54, 0x41, 0x43, 0x4B
	.byte 0x5F, 0x48, 0x4F, 0x53, 0x54, 0x4C, 0x45, 0x4E, 0x5F, 0x4D, 0x41, 0x58, 0x00, 0x00, 0x00, 0x00

	.global UNK_0220EFF8
UNK04_0220EFF8: ; 0x0220EFF8
	.byte 0x67, 0x74, 0x32, 0x55, 0x74, 0x69, 0x6C, 0x69, 0x74, 0x79, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x00

	.global UNK_0220F008
UNK04_0220F008: ; 0x0220F008
	.byte 0x25, 0x73, 0x3A, 0x25, 0x64, 0x00, 0x00, 0x00

	.global UNK_0220F010
UNK04_0220F010: ; 0x0220F010
	.byte 0x25, 0x73, 0x00, 0x00

	.global UNK_0220F014
UNK04_0220F014: ; 0x0220F014
	.byte 0x3A, 0x25, 0x64, 0x00

	.global UNK04_0220F018
UNK04_0220F018: ; 0x0220F018
	.byte 0xFD, 0xFC, 0x1E, 0x66, 0x6A, 0xB2, 0x00, 0x00

	.global UNK_0220F020
UNK04_0220F020: ; 0x0220F020
	.byte 0x6E, 0x61, 0x74, 0x6E, 0x65, 0x67, 0x31, 0x2E, 0x67, 0x73, 0x2E, 0x6E, 0x69, 0x6E, 0x74, 0x65
	.byte 0x6E, 0x64, 0x6F, 0x77, 0x69, 0x66, 0x69, 0x2E, 0x6E, 0x65, 0x74, 0x00

	.global UNK_0220F03C
UNK04_0220F03C: ; 0x0220F03C
	.byte 0x6E, 0x61, 0x74, 0x6E, 0x65, 0x67, 0x32, 0x2E, 0x67, 0x73, 0x2E, 0x6E, 0x69, 0x6E, 0x74, 0x65
	.byte 0x6E, 0x64, 0x6F, 0x77, 0x69, 0x66, 0x69, 0x2E, 0x6E, 0x65, 0x74, 0x00

	.global UNK_0220F058
UNK04_0220F058: ; 0x0220F058
	.byte 0x25, 0x73, 0x2E, 0x25, 0x73, 0x00, 0x00, 0x00

	.global UNK_0220F060
UNK04_0220F060: ; 0x0220F060
	.word UNK04_0220F064

	.global UNK_0220F064
UNK04_0220F064: ; 0x0220F064
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	.global UNK_0220F174
UNK04_0220F174: ; 0x0220F174
	.byte 0x6C, 0x6F, 0x63, 0x61, 0x6C, 0x69, 0x70, 0x25, 0x64, 0x00, 0x00, 0x00

	.global UNK_0220F180
UNK04_0220F180: ; 0x0220F180
	.byte 0x6C, 0x6F, 0x63, 0x61, 0x6C, 0x70, 0x6F, 0x72, 0x74, 0x00, 0x00, 0x00

	.global UNK_0220F18C
UNK04_0220F18C: ; 0x0220F18C
	.byte 0x6E, 0x61, 0x74, 0x6E, 0x65, 0x67, 0x00, 0x00

	.global UNK_0220F194
UNK04_0220F194: ; 0x0220F194
	.byte 0x31, 0x00, 0x00, 0x00

	.global UNK_0220F198
UNK04_0220F198: ; 0x0220F198
	.byte 0x30, 0x00, 0x00, 0x00

	.global UNK_0220F19C
UNK04_0220F19C: ; 0x0220F19C
	.byte 0x73, 0x74, 0x61, 0x74, 0x65, 0x63, 0x68, 0x61, 0x6E, 0x67, 0x65, 0x64, 0x00, 0x00, 0x00, 0x00

	.global UNK_0220F1AC
UNK04_0220F1AC: ; 0x0220F1AC
	.byte 0x67, 0x61, 0x6D, 0x65, 0x6E, 0x61, 0x6D, 0x65, 0x00, 0x00, 0x00, 0x00

	.global UNK_0220F1B8
UNK04_0220F1B8: ; 0x0220F1B8
	.byte 0x70, 0x75, 0x62, 0x6C, 0x69, 0x63, 0x69, 0x70, 0x00, 0x00, 0x00, 0x00

	.global UNK_0220F1C4
UNK04_0220F1C4: ; 0x0220F1C4
	.byte 0x70, 0x75, 0x62, 0x6C, 0x69, 0x63, 0x70, 0x6F, 0x72, 0x74, 0x00, 0x00

	.global UNK_0220F1D0
UNK04_0220F1D0: ; 0x0220F1D0
	.byte 0x66, 0x69, 0x6E, 0x61, 0x6C, 0x5C, 0x5C, 0x71, 0x75, 0x65, 0x72, 0x79, 0x69, 0x64, 0x5C, 0x31
	.byte 0x2E, 0x31, 0x00, 0x00

	.global UNK_0220F1E4
UNK04_0220F1E4: ; 0x0220F1E4
	.byte 0x75, 0x6E, 0x6B, 0x6E, 0x6F, 0x77, 0x6E, 0x00

	.global UNK_0220F1EC
UNK04_0220F1EC: ; 0x0220F1EC
	.byte 0x00, 0x00, 0x00, 0x00

	.global UNK_0220F1F0
UNK04_0220F1F0: ; 0x0220F1F0
	.byte 0x25, 0x73, 0x25, 0x64, 0x00, 0x00, 0x00, 0x00

	.global UNK_0220F1F8
UNK04_0220F1F8: ; 0x0220F1F8
	.byte 0x25, 0x30, 0x38, 0x58, 0x25, 0x30, 0x34, 0x58, 0x00, 0x00, 0x00, 0x00

	.global UNK_0220F204
UNK04_0220F204: ; 0x0220F204
	.byte 0x32, 0x35, 0x35, 0x2E, 0x32, 0x35, 0x35, 0x2E, 0x32, 0x35, 0x35, 0x2E, 0x32, 0x35, 0x35, 0x00

	.global UNK_0220F214
UNK04_0220F214: ; 0x0220F214
	.byte 0x25, 0x64, 0x00, 0x00

	.global UNK_0220F218
UNK04_0220F218: ; 0x0220F218
	.byte 0x4E, 0x6F, 0x20, 0x63, 0x68, 0x61, 0x6C, 0x6C, 0x65, 0x6E, 0x67, 0x65, 0x20, 0x76, 0x61, 0x6C
	.byte 0x75, 0x65, 0x20, 0x77, 0x61, 0x73, 0x20, 0x72, 0x65, 0x63, 0x65, 0x69, 0x76, 0x65, 0x64, 0x20
	.byte 0x66, 0x72, 0x6F, 0x6D, 0x20, 0x74, 0x68, 0x65, 0x20, 0x6D, 0x61, 0x73, 0x74, 0x65, 0x72, 0x20
	.byte 0x73, 0x65, 0x72, 0x76, 0x65, 0x72, 0x2E, 0x00

	.global UNK_0220F250
UNK04_0220F250: ; 0x0220F250
	.byte 0x25, 0x73, 0x2E, 0x6D, 0x61, 0x73, 0x74, 0x65, 0x72, 0x2E, 0x67, 0x73, 0x2E, 0x6E, 0x69, 0x6E
	.byte 0x74, 0x65, 0x6E, 0x64, 0x6F, 0x77, 0x69, 0x66, 0x69, 0x2E, 0x6E, 0x65, 0x74, 0x00, 0x00, 0x00

	.global UNK_0220F270
UNK04_0220F270: ; 0x0220F270
	.byte 0x00, 0x00, 0x00, 0x00

	.global UNK_0220F274
UNK04_0220F274: ; 0x0220F274
	.byte 0x70, 0x69, 0x64, 0x5F, 0x00, 0x00, 0x00, 0x00

	.global UNK_0220F27C
UNK04_0220F27C: ; 0x0220F27C
	.byte 0x74, 0x65, 0x61, 0x6D
	.byte 0x5F, 0x00, 0x00, 0x00

	.global UNK_0220F284
UNK04_0220F284: ; 0x0220F284
	.byte 0x70, 0x69, 0x6E, 0x67, 0x5F, 0x00, 0x00, 0x00

	.global UNK_0220F28C
UNK04_0220F28C: ; 0x0220F28C
	.byte 0x73, 0x63, 0x6F, 0x72
	.byte 0x65, 0x5F, 0x00, 0x00

	.global UNK_0220F294
UNK04_0220F294: ; 0x0220F294
	.byte 0x74, 0x65, 0x61, 0x6D, 0x5F, 0x74, 0x00, 0x00

	.global UNK_0220F29C
UNK04_0220F29C: ; 0x0220F29C
	.byte 0x73, 0x6B, 0x69, 0x6C
	.byte 0x6C, 0x5F, 0x00, 0x00

	.global UNK_0220F2A4
UNK04_0220F2A4: ; 0x0220F2A4
	.byte 0x6D, 0x61, 0x70, 0x6E, 0x61, 0x6D, 0x65, 0x00

	.global UNK_0220F2AC
UNK04_0220F2AC: ; 0x0220F2AC
	.byte 0x64, 0x65, 0x61, 0x74
	.byte 0x68, 0x73, 0x5F, 0x00

	.global UNK_0220F2B4
UNK04_0220F2B4: ; 0x0220F2B4
	.byte 0x67, 0x61, 0x6D, 0x65, 0x76, 0x65, 0x72, 0x00

	.global UNK_0220F2BC
UNK04_0220F2BC: ; 0x0220F2BC
	.byte 0x70, 0x6C, 0x61, 0x79
	.byte 0x65, 0x72, 0x5F, 0x00

	.global UNK_0220F2C4
UNK04_0220F2C4: ; 0x0220F2C4
	.byte 0x73, 0x63, 0x6F, 0x72, 0x65, 0x5F, 0x74, 0x00

	.global UNK_0220F2CC
UNK04_0220F2CC: ; 0x0220F2CC
	.byte 0x67, 0x72, 0x6F, 0x75
	.byte 0x70, 0x69, 0x64, 0x00

	.global UNK_0220F2D4
UNK04_0220F2D4: ; 0x0220F2D4
	.byte 0x67, 0x61, 0x6D, 0x65, 0x6E, 0x61, 0x6D, 0x65, 0x00, 0x00, 0x00, 0x00

	.global UNK_0220F2E0
UNK04_0220F2E0: ; 0x0220F2E0
	.byte 0x68, 0x6F, 0x73, 0x74, 0x70, 0x6F, 0x72, 0x74, 0x00, 0x00, 0x00, 0x00

	.global UNK_0220F2EC
UNK04_0220F2EC: ; 0x0220F2EC
	.byte 0x70, 0x61, 0x73, 0x73
	.byte 0x77, 0x6F, 0x72, 0x64, 0x00, 0x00, 0x00, 0x00

	.global UNK_0220F2F8
UNK04_0220F2F8: ; 0x0220F2F8
	.byte 0x68, 0x6F, 0x73, 0x74, 0x6E, 0x61, 0x6D, 0x65
	.byte 0x00, 0x00, 0x00, 0x00

	.global UNK_0220F304
UNK04_0220F304: ; 0x0220F304
	.byte 0x6E, 0x75, 0x6D, 0x74, 0x65, 0x61, 0x6D, 0x73, 0x00, 0x00, 0x00, 0x00

	.global UNK_0220F310
UNK04_0220F310: ; 0x0220F310
	.byte 0x67, 0x61, 0x6D, 0x65, 0x6D, 0x6F, 0x64, 0x65, 0x00, 0x00, 0x00, 0x00

	.global UNK_0220F31C
UNK04_0220F31C: ; 0x0220F31C
	.byte 0x74, 0x65, 0x61, 0x6D
	.byte 0x70, 0x6C, 0x61, 0x79, 0x00, 0x00, 0x00, 0x00

	.global UNK_0220F328
UNK04_0220F328: ; 0x0220F328
	.byte 0x67, 0x61, 0x6D, 0x65, 0x74, 0x79, 0x70, 0x65
	.byte 0x00, 0x00, 0x00, 0x00

	.global UNK_0220F334
UNK04_0220F334: ; 0x0220F334
	.byte 0x72, 0x6F, 0x75, 0x6E, 0x64, 0x74, 0x69, 0x6D, 0x65, 0x00, 0x00, 0x00

	.global UNK_0220F340
UNK04_0220F340: ; 0x0220F340
	.byte 0x66, 0x72, 0x61, 0x67, 0x6C, 0x69, 0x6D, 0x69, 0x74, 0x00, 0x00, 0x00

	.global UNK_0220F34C
UNK04_0220F34C: ; 0x0220F34C
	.byte 0x74, 0x69, 0x6D, 0x65
	.byte 0x6C, 0x69, 0x6D, 0x69, 0x74, 0x00, 0x00, 0x00

	.global UNK_0220F358
UNK04_0220F358: ; 0x0220F358
	.byte 0x6E, 0x75, 0x6D, 0x70, 0x6C, 0x61, 0x79, 0x65
	.byte 0x72, 0x73, 0x00, 0x00,

	.global UNK_0220F364
UNK04_0220F364: ; 0x0220F364
	.byte 0x6D, 0x61, 0x78, 0x70, 0x6C, 0x61, 0x79, 0x65, 0x72, 0x73, 0x00, 0x00

	.global UNK_0220F370
UNK04_0220F370: ; 0x0220F370
	.byte 0x67, 0x61, 0x6D, 0x65, 0x76, 0x61, 0x72, 0x69, 0x61, 0x6E, 0x74, 0x00

	.global UNK_0220F37C
UNK04_0220F37C: ; 0x0220F37C
	.byte 0x74, 0x69, 0x6D, 0x65
	.byte 0x65, 0x6C, 0x61, 0x70, 0x73, 0x65, 0x64, 0x00

	.global UNK_0220F388
UNK04_0220F388: ; 0x0220F388
	.byte 0x72, 0x6F, 0x75, 0x6E, 0x64, 0x65, 0x6C, 0x61
	.byte 0x70, 0x73, 0x65, 0x64, 0x00, 0x00, 0x00, 0x00

	.global UNK_0220F398
UNK04_0220F398: ; 0x0220F398
	.byte 0x74, 0x65, 0x61, 0x6D, 0x66, 0x72, 0x61, 0x67
	.byte 0x6C, 0x69, 0x6D, 0x69, 0x74, 0x00, 0x00, 0x00

	.global UNK_0220F3A8
UNK04_0220F3A8: ; 0x0220F3A8
	.word UNK04_0220F270, UNK04_0220F2F8, UNK04_0220F2D4, UNK04_0220F2B4
	.word UNK04_0220F2E0, UNK04_0220F2A4, UNK04_0220F328, UNK04_0220F370
	.word UNK04_0220F358, UNK04_0220F304, UNK04_0220F364, UNK04_0220F310
	.word UNK04_0220F31C, UNK04_0220F340, UNK04_0220F398, UNK04_0220F37C
	.word UNK04_0220F34C, UNK04_0220F334, UNK04_0220F388, UNK04_0220F2EC
	.word UNK04_0220F2CC, UNK04_0220F2BC, UNK04_0220F28C, UNK04_0220F29C
	.word UNK04_0220F284, UNK04_0220F27C, UNK04_0220F2AC, UNK04_0220F274
	.word UNK04_0220F294, UNK04_0220F2C4
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	.global UNK_0220F7A0
UNK04_0220F7A0: ; 0x0220F7A0
	.byte 0x5C, 0x66, 0x69, 0x6E, 0x61, 0x6C, 0x5C, 0x00

	.global UNK_0220F7A8
UNK04_0220F7A8: ; 0x0220F7A8
	.byte 0x5C, 0x62, 0x61, 0x73, 0x69, 0x63, 0x5C, 0x5C, 0x69, 0x6E, 0x66, 0x6F, 0x5C, 0x00, 0x00, 0x00

	.global UNK_0220F7B8
UNK04_0220F7B8: ; 0x0220F7B8
	.byte 0x5C, 0x73, 0x74, 0x61, 0x74, 0x75, 0x73, 0x5C, 0x00, 0x00, 0x00, 0x00

	.global UNK_0220F7C4
UNK04_0220F7C4: ; 0x0220F7C4
	.byte 0x66, 0x69, 0x6E, 0x61
	.byte 0x6C, 0x00, 0x00, 0x00

	.global UNK_0220F7CC
UNK04_0220F7CC: ; 0x0220F7CC
	.byte 0x71, 0x75, 0x65, 0x72, 0x79, 0x69, 0x64, 0x00

	.global UNK_0220F7D4
UNK04_0220F7D4: ; 0x0220F7D4
	.byte 0x25, 0x73, 0x25, 0x64, 0x00, 0x00, 0x00, 0x00

	.global UNK_0220F7DC
UNK04_0220F7DC: ; 0x0220F7DC
	.byte 0x00, 0x00, 0x00, 0x00

	.global UNK_0220F7E0
UNK04_0220F7E0: ; 0x0220F7E0
	.byte 0x70, 0x69, 0x6E, 0x67, 0x00, 0x00, 0x00, 0x00

	.global UNK_0220F7E8
UNK04_0220F7E8: ; 0x0220F7E8
	.byte 0x73, 0x65, 0x72, 0x76, 0x65, 0x72, 0x00, 0x00

	.global UNK_0220F7F0
UNK04_0220F7F0: ; 0x0220F7F0
	.byte 0x73, 0x62, 0x5F, 0x73, 0x65, 0x72, 0x76, 0x65, 0x72, 0x2E, 0x63, 0x00

	.global UNK_0220F7FC
UNK04_0220F7FC: ; 0x0220F7FC
	.byte 0x25, 0x64, 0x00, 0x00

	.global UNK_0220F800
UNK04_0220F800: ; 0x0220F800
	.byte 0x5C, 0x25, 0x73, 0x00

	.global UNK_0220F804
UNK04_0220F804: ; 0x0220F804
	.word UNK04_0220F808

	.global UNK_0220F808
UNK04_0220F808: ; 0x0220F808
	.byte 0x51, 0x75, 0x65, 0x72, 0x79, 0x20, 0x45, 0x72, 0x72, 0x6F, 0x72, 0x3A
	.byte 0x20, 0x00, 0x00, 0x00

	.global UNK_0220F818
UNK04_0220F818: ; 0x0220F818
	.byte 0x73, 0x6C, 0x69, 0x73, 0x74, 0x2D, 0x3E, 0x69, 0x6E, 0x62, 0x75, 0x66, 0x66, 0x65, 0x72, 0x6C
	.byte 0x65, 0x6E, 0x20, 0x3E, 0x3D, 0x20, 0x30, 0x00

	.global UNK_0220F830
UNK04_0220F830: ; 0x0220F830
	.byte 0x73, 0x62, 0x5F, 0x73, 0x65, 0x72, 0x76, 0x65, 0x72, 0x6C, 0x69, 0x73, 0x74, 0x2E, 0x63, 0x00

	.global UNK_0220F840
UNK04_0220F840: ; 0x0220F840
	.byte 0x69, 0x6E, 0x6C, 0x65, 0x6E, 0x20, 0x3E, 0x3D, 0x20, 0x30, 0x00, 0x00

	.global UNK_0220F84C
UNK04_0220F84C: ; 0x0220F84C
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00

	.global UNK_0220F854
UNK04_0220F854: ; 0x0220F854
	.byte 0x30, 0x00, 0x00, 0x00

	.global UNK_0220F858
UNK04_0220F858: ; 0x0220F858
	.byte 0x73, 0x6C, 0x69, 0x73, 0x74, 0x2D, 0x3E, 0x73, 0x74, 0x61, 0x74, 0x65, 0x20, 0x3D, 0x3D, 0x20
	.byte 0x73, 0x6C, 0x5F, 0x64, 0x69, 0x73, 0x63, 0x6F, 0x6E, 0x6E, 0x65, 0x63, 0x74, 0x65, 0x64, 0x00

	.global UNK_0220F878
UNK04_0220F878: ; 0x0220F878
	.byte 0x00, 0x00, 0x00, 0x00

	.global UNK_0220F87C
UNK04_0220F87C: ; 0x0220F87C
	.byte 0x25, 0x73, 0x2E, 0x6D, 0x73, 0x25, 0x64, 0x2E, 0x67, 0x73, 0x2E, 0x6E, 0x69, 0x6E, 0x74, 0x65
	.byte 0x6E, 0x64, 0x6F, 0x77, 0x69, 0x66, 0x69, 0x2E, 0x6E, 0x65, 0x74, 0x00

	.global UNK_0220F898
UNK04_0220F898: ; 0x0220F898
	.byte 0x73, 0x6C, 0x69, 0x73, 0x74, 0x20, 0x21, 0x3D, 0x20, 0x4E, 0x55, 0x4C, 0x4C, 0x00, 0x00, 0x00

	.global UNK_0220F8A8
UNK04_0220F8A8: ; 0x0220F8A8
	.byte 0x63, 0x61, 0x6C, 0x6C, 0x62, 0x61, 0x63, 0x6B, 0x20, 0x21, 0x3D, 0x20, 0x4E, 0x55, 0x4C, 0x4C
	.byte 0x00, 0x00, 0x00, 0x00

	.global UNK_0220F8BC
UNK04_0220F8BC: ; 0x0220F8BC
	.byte 0x76, 0x61, 0x6C, 0x20, 0x21, 0x3D, 0x20, 0x4E, 0x55, 0x4C, 0x4C, 0x00

	.global UNK_0220F8C8
UNK04_0220F8C8: ; 0x0220F8C8
	.byte 0x01, 0x00, 0x01, 0x00

	.global UNK_0220F8CC
UNK04_0220F8CC: ; 0x0220F8CC
	.word UNK04_0220F8E0, 0x00000080, UNK04_0220F930, 0x00000003
	.word UNK04_0220F8C8

	.global UNK_0220F8E0
UNK04_0220F8E0: ; 0x0220F8E0
	.byte 0x55, 0x53, 0x2C, 0x20, 0x57, 0x61, 0x73, 0x68, 0x69, 0x6E, 0x67, 0x74
	.byte 0x6F, 0x6E, 0x2C, 0x20, 0x4E, 0x69, 0x6E, 0x74, 0x65, 0x6E, 0x64, 0x6F, 0x20, 0x6F, 0x66, 0x20
	.byte 0x41, 0x6D, 0x65, 0x72, 0x69, 0x63, 0x61, 0x20, 0x49, 0x6E, 0x63, 0x2C, 0x20, 0x4E, 0x4F, 0x41
	.byte 0x2C, 0x20, 0x4E, 0x69, 0x6E, 0x74, 0x65, 0x6E, 0x64, 0x6F, 0x20, 0x43, 0x41, 0x2C, 0x20, 0x63
	.byte 0x61, 0x40, 0x6E, 0x6F, 0x61, 0x2E, 0x6E, 0x69, 0x6E, 0x74, 0x65, 0x6E, 0x64, 0x6F, 0x2E, 0x63
	.byte 0x6F, 0x6D, 0x00, 0x00

	.global UNK_0220F930
UNK04_0220F930: ; 0x0220F930
	.byte 0xB3, 0xCD, 0x79, 0x97, 0x77, 0x5D, 0x8A, 0xAF, 0x86, 0xA8, 0xE8, 0xD7
	.byte 0x73, 0x1C, 0x77, 0xDF, 0x10, 0x90, 0x1F, 0x81, 0xF8, 0x41, 0x9E, 0x21, 0x55, 0xDF, 0xBC, 0xFC
	.byte 0x63, 0xFB, 0x19, 0x43, 0xF1, 0xF6, 0xC4, 0x72, 0x42, 0x49, 0xBD, 0xAD, 0x44, 0x68, 0x4E, 0xF3
	.byte 0xDA, 0x1D, 0xE6, 0x4D, 0xD8, 0xF9, 0x59, 0x88, 0xDC, 0xAE, 0x3E, 0x9B, 0x38, 0x09, 0xCA, 0x7F
	.byte 0xFF, 0xDC, 0x24, 0xA2, 0x44, 0x78, 0x78, 0x49, 0x93, 0xD4, 0x84, 0x40, 0x10, 0xB8, 0xEC, 0x3E
	.byte 0xDB, 0x2D, 0x93, 0xC8, 0x11, 0xC8, 0xFD, 0x78, 0x2D, 0x61, 0xAD, 0x31, 0xAE, 0x86, 0x26, 0xB0
	.byte 0xFD, 0x5A, 0x3F, 0xA1, 0x3D, 0xBF, 0xE2, 0x4B, 0x49, 0xEC, 0xCE, 0x66, 0x98, 0x58, 0x26, 0x12
	.byte 0xC0, 0xFB, 0xF4, 0x77, 0x65, 0x1B, 0xEA, 0xFB, 0xCB, 0x7F, 0xE0, 0x8C, 0xCB, 0x02, 0xA3, 0x4E
	.byte 0x5E, 0x8C, 0xEA, 0x9B

	.global UNK_0220F9B0
UNK04_0220F9B0: ; 0x0220F9B0
	.byte 0x4E, 0x69, 0x74, 0x72, 0x6F, 0x20, 0x57, 0x69, 0x46, 0x69, 0x20, 0x53, 0x44, 0x4B, 0x2F, 0x25
	.byte 0x64, 0x2E, 0x25, 0x64, 0x00, 0x00, 0x00, 0x00

	.global UNK_0220F9C8
UNK04_0220F9C8: ; 0x0220F9C8
	.word UNK04_0220F8CC

	.global UNK_0220F9CC
UNK04_0220F9CC: ; 0x0220F9CC
	.byte 0x63, 0x6F, 0x6E, 0x74, 0x65, 0x6E, 0x74, 0x73, 0x00, 0x00, 0x00, 0x00

	.global UNK_0220F9D8
UNK04_0220F9D8: ; 0x0220F9D8
	.byte 0x6F, 0x66, 0x66, 0x73, 0x65, 0x74, 0x00, 0x00

	.global UNK_0220F9E0
UNK04_0220F9E0: ; 0x0220F9E0
	.byte 0x6E, 0x75, 0x6D, 0x00

	.global UNK_0220F9E4
UNK04_0220F9E4: ; 0x0220F9E4
	.byte 0x55, 0x73, 0x65, 0x72, 0x2D, 0x41, 0x67, 0x65, 0x6E, 0x74, 0x00, 0x00

	.global UNK_0220F9F0
UNK04_0220F9F0: ; 0x0220F9F0
	.byte 0x67, 0x61, 0x6D, 0x65, 0x63, 0x64, 0x00, 0x00

	.global UNK_0220F9F8
UNK04_0220F9F8: ; 0x0220F9F8
	.byte 0x72, 0x68, 0x67, 0x61, 0x6D, 0x65, 0x63, 0x64, 0x00, 0x00, 0x00, 0x00

	.global UNK_0220FA04
UNK04_0220FA04: ; 0x0220FA04
	.byte 0x70, 0x61, 0x73, 0x73, 0x77, 0x64, 0x00, 0x00

	.global UNK_0220FA0C
UNK04_0220FA0C: ; 0x0220FA0C
	.byte 0x74, 0x6F, 0x6B, 0x65, 0x6E, 0x00, 0x00, 0x00

	.global UNK_0220FA14
UNK04_0220FA14: ; 0x0220FA14
	.byte 0x75, 0x73, 0x65, 0x72, 0x69, 0x64, 0x00, 0x00

	.global UNK_0220FA1C
UNK04_0220FA1C: ; 0x0220FA1C
	.byte 0x6D, 0x61, 0x63, 0x61, 0x64, 0x72, 0x00, 0x00

	.global UNK_0220FA24
UNK04_0220FA24: ; 0x0220FA24
	.byte 0x61, 0x63, 0x74, 0x69, 0x6F, 0x6E, 0x00, 0x00

	.global UNK_0220FA2C
UNK04_0220FA2C: ; 0x0220FA2C
	.byte 0x61, 0x74, 0x74, 0x72, 0x31, 0x00, 0x00, 0x00

	.global UNK_0220FA34
UNK04_0220FA34: ; 0x0220FA34
	.byte 0x61, 0x74, 0x74, 0x72, 0x32, 0x00, 0x00, 0x00

	.global UNK_0220FA3C
UNK04_0220FA3C: ; 0x0220FA3C
	.byte 0x61, 0x74, 0x74, 0x72, 0x33, 0x00, 0x00, 0x00

	.global UNK_0220FA44
UNK04_0220FA44: ; 0x0220FA44
	.byte 0x61, 0x70, 0x69, 0x6E, 0x66, 0x6F, 0x00, 0x00

	.global UNK_0220FA4C
UNK04_0220FA4C: ; 0x0220FA4C
	.byte 0x48, 0x54, 0x54, 0x50, 0x53, 0x54, 0x41, 0x54, 0x55, 0x53, 0x43, 0x4F, 0x44, 0x45, 0x00, 0x00

	.global UNK_0220FA5C
UNK04_0220FA5C: ; 0x0220FA5C
	.byte 0x72, 0x65, 0x74, 0x75, 0x72, 0x6E, 0x63, 0x64, 0x00, 0x00, 0x00, 0x00

	.global UNK_0220FA68
UNK04_0220FA68: ; 0x0220FA68
	.byte 0x43, 0x6F, 0x6E, 0x74, 0x65, 0x6E, 0x74, 0x2D, 0x4C, 0x65, 0x6E, 0x67, 0x74, 0x68, 0x00, 0x00

	.global UNK_0220FA78
UNK04_0220FA78: ; 0x0220FA78
	.byte 0x68, 0x74, 0x74, 0x70, 0x3A, 0x2F, 0x2F, 0x00

	.global UNK_0220FA80
UNK04_0220FA80: ; 0x0220FA80
	.byte 0x68, 0x74, 0x74, 0x70, 0x73, 0x3A, 0x2F, 0x2F, 0x00, 0x00, 0x00, 0x00

	.global UNK_0220FA8C
UNK04_0220FA8C: ; 0x0220FA8C
	.byte 0x48, 0x54, 0x54, 0x50, 0x53, 0x54, 0x41, 0x54, 0x55, 0x53, 0x43, 0x4F, 0x44, 0x45, 0x00, 0x00

	.global UNK_0220FA9C
UNK04_0220FA9C: ; 0x0220FA9C
	.byte 0x47, 0x45, 0x54, 0x20, 0x00, 0x00, 0x00, 0x00

	.global UNK_0220FAA4
UNK04_0220FAA4: ; 0x0220FAA4
	.byte 0x50, 0x4F, 0x53, 0x54, 0x20, 0x00, 0x00, 0x00

	.global UNK_0220FAAC
UNK04_0220FAAC: ; 0x0220FAAC
	.byte 0x48, 0x45, 0x41, 0x44, 0x20, 0x00, 0x00, 0x00

	.global UNK_0220FAB4
UNK04_0220FAB4: ; 0x0220FAB4
	.byte 0x2F, 0x00, 0x00, 0x00

	.global UNK_0220FAB8
UNK04_0220FAB8: ; 0x0220FAB8
	.byte 0x20, 0x48, 0x54, 0x54, 0x50, 0x2F, 0x31, 0x2E, 0x31, 0x0D, 0x0A, 0x00

	.global UNK_0220FAC4
UNK04_0220FAC4: ; 0x0220FAC4
	.byte 0x48, 0x6F, 0x73, 0x74, 0x3A, 0x20, 0x00, 0x00

	.global UNK_0220FACC
UNK04_0220FACC: ; 0x0220FACC
	.byte 0x0D, 0x0A, 0x00, 0x00

	.global UNK_0220FAD0
UNK04_0220FAD0: ; 0x0220FAD0
	.byte 0x3A, 0x20, 0x00, 0x00

	.global UNK_0220FAD4
UNK04_0220FAD4: ; 0x0220FAD4
	.byte 0x43, 0x6F, 0x6E, 0x74, 0x65, 0x6E, 0x74, 0x2D, 0x54, 0x79, 0x70, 0x65, 0x3A, 0x20, 0x6D, 0x75
	.byte 0x6C, 0x74, 0x69, 0x70, 0x61, 0x72, 0x74, 0x2F, 0x66, 0x6F, 0x72, 0x6D, 0x2D, 0x64, 0x61, 0x74
	.byte 0x61, 0x3B, 0x20, 0x62, 0x6F, 0x75, 0x6E, 0x64, 0x61, 0x72, 0x79, 0x3D, 0x00, 0x00, 0x00, 0x00

	.global UNK_0220FB04
UNK04_0220FB04: ; 0x0220FB04
	.byte 0x43, 0x6F, 0x6E, 0x74, 0x65, 0x6E, 0x74, 0x2D, 0x54, 0x79, 0x70, 0x65, 0x3A, 0x20, 0x61, 0x70
	.byte 0x70, 0x6C, 0x69, 0x63, 0x61, 0x74, 0x69, 0x6F, 0x6E, 0x2F, 0x78, 0x2D, 0x77, 0x77, 0x77, 0x2D
	.byte 0x66, 0x6F, 0x72, 0x6D, 0x2D, 0x75, 0x72, 0x6C, 0x65, 0x6E, 0x63, 0x6F, 0x64, 0x65, 0x64, 0x0D
	.byte 0x0A, 0x00, 0x00, 0x00

	.global UNK_0220FB38
UNK04_0220FB38: ; 0x0220FB38
	.byte 0x43, 0x6F, 0x6E, 0x74, 0x65, 0x6E, 0x74, 0x2D, 0x4C, 0x65, 0x6E, 0x67, 0x74, 0x68, 0x3A, 0x20
	.byte 0x00, 0x00, 0x00, 0x00

	.global UNK_0220FB4C
UNK04_0220FB4C: ; 0x0220FB4C
	.byte 0x22, 0x0D, 0x0A, 0x00

	.global UNK_0220FB50
UNK04_0220FB50: ; 0x0220FB50
	.byte 0x2D, 0x2D, 0x0D, 0x0A, 0x00, 0x00, 0x00, 0x00

	.global UNK_0220FB58
UNK04_0220FB58: ; 0x0220FB58
	.byte 0x3D, 0x00, 0x00, 0x00

	.global UNK_0220FB5C
UNK04_0220FB5C: ; 0x0220FB5C
	.byte 0x26, 0x00, 0x00, 0x00

	.global UNK_0220FB60
UNK04_0220FB60: ; 0x0220FB60
	.byte 0x48, 0x54, 0x54, 0x50, 0x2F, 0x00, 0x00, 0x00

	.global UNK_0220FB68
UNK04_0220FB68: ; 0x0220FB68
	.byte 0x43, 0x6F, 0x6E, 0x74, 0x65, 0x6E, 0x74, 0x2D, 0x4C, 0x65, 0x6E, 0x67, 0x74, 0x68, 0x00, 0x00

	.global UNK_0220FB78
UNK04_0220FB78: ; 0x0220FB78
	.byte 0x43, 0x6F, 0x6E, 0x6E, 0x65, 0x63, 0x74, 0x69, 0x6F, 0x6E, 0x00, 0x00

	.global UNK_0220FB84
UNK04_0220FB84: ; 0x0220FB84
	.byte 0x4B, 0x65, 0x65, 0x70, 0x2D, 0x41, 0x6C, 0x69, 0x76, 0x65, 0x00, 0x00

	.global UNK_0220FB90
UNK04_0220FB90: ; 0x0220FB90
	.byte 0x54, 0x72, 0x61, 0x6E, 0x73, 0x66, 0x65, 0x72, 0x2D, 0x45, 0x6E, 0x63, 0x6F, 0x64, 0x69, 0x6E
	.byte 0x67, 0x00, 0x00, 0x00

	.global UNK_0220FBA4
UNK04_0220FBA4: ; 0x0220FBA4
	.byte 0x63, 0x68, 0x75, 0x6E, 0x6B, 0x65, 0x64, 0x00

	.section .bss

	.global UNK04_02210E3C
UNK04_02210E3C: ; 0x02210E3C
	.space 0x4

	.global UNK04_02210E40
UNK04_02210E40: ; 0x02210E40
	.space 0x4

	.global UNK04_02210E44
UNK04_02210E44: ; 0x02210E44
	.space 0x4

	.global UNK04_02210E48
UNK04_02210E48: ; 0x02210E48
	.space 0x4

	.global UNK04_02210E4C
UNK04_02210E4C: ; 0x02210E4C
	.space 0x4

	.global UNK04_02210E50
UNK04_02210E50: ; 0x02210E50
	.space 0x4

	.global UNK04_02210E54
UNK04_02210E54: ; 0x02210E54
	.space 0x4

	.global UNK04_02210E58
UNK04_02210E58: ; 0x02210E58
	.space 0x4

	.global UNK04_02210E5C
UNK04_02210E5C: ; 0x02210E5C
	.space 0x4

	.global UNK04_02210E60
UNK04_02210E60: ; 0x02210E60
	.space 0x40

	.global UNK04_02210EA0
UNK04_02210EA0: ; 0x02210EA0
	.space 0x40

	.global UNK04_02210EE0
UNK04_02210EE0: ; 0x02210EE0
	.space 0x4

	.global UNK04_02210EE4
UNK04_02210EE4: ; 0x02210EE4
	.space 0x4

	.global UNK04_02210EE8
UNK04_02210EE8: ; 0x02210EE8
	.space 0x4

	.global UNK04_02210EEC
UNK04_02210EEC: ; 0x02210EEC
	.space 0x5

	.global UNK04_02210EF1
UNK04_02210EF1: ; 0x02210EF1
	.space 0x47

	.global UNK04_02210F38
UNK04_02210F38: ; 0x02210F38
	.space 0x4

	.global UNK04_02210F3C
UNK04_02210F3C: ; 0x02210F3C
	.space 0x4

	.global UNK04_02210F40
UNK04_02210F40: ; 0x02210F40
	.space 0x10

	.global UNK04_02210F50
UNK04_02210F50: ; 0x02210F50
	.space 0x14

	.global UNK04_02210F64
UNK04_02210F64: ; 0x02210F64
	.space 0x18

	.global UNK04_02210F7C
UNK04_02210F7C: ; 0x02210F7C
	.space 0x4

	.global UNK04_02210F80
UNK04_02210F80: ; 0x02210F80
	.space 0x4

	.global UNK04_02210F84
UNK04_02210F84: ; 0x02210F84
	.space 0x4

	.global UNK04_02210F88
UNK04_02210F88: ; 0x02210F88
	.space 0x4

	.global UNK04_02210F8C
UNK04_02210F8C: ; 0x02210F8C
	.space 0x4

	.global UNK04_02210F90
UNK04_02210F90: ; 0x02210F90
	.space 0x4

	.global UNK04_02210F94
UNK04_02210F94: ; 0x02210F94
	.space 0x100

	.global UNK04_02211094
UNK04_02211094: ; 0x02211094
	.space 0x100

	.global UNK04_02211194
UNK04_02211194: ; 0x02211194
	.space 0x200

	.global UNK04_02211394
UNK04_02211394: ; 0x02211394
	.space 0x4

	.global UNK04_02211398
UNK04_02211398: ; 0x02211398
	.space 0x2C

	.global UNK04_022113C4
UNK04_022113C4: ; 0x022113C4
	.space 0x4

	.global UNK04_022113C8
UNK04_022113C8: ; 0x022113C8
	.space 0x4

	.global UNK04_022113CC
UNK04_022113CC: ; 0x022113CC
	.space 0x4

	.global UNK04_022113D0
UNK04_022113D0: ; 0x022113D0
	.space 0x4

	.global UNK04_022113D4
UNK04_022113D4: ; 0x022113D4
	.space 0x4

	.global UNK04_022113D8
UNK04_022113D8: ; 0x022113D8
	.space 0x200

	.global UNK04_022115D8
UNK04_022115D8: ; 0x022115D8
	.space 0x4

	.global UNK04_022115DC
UNK04_022115DC: ; 0x022115DC
	.space 0x14

	.global UNK04_022115F0
UNK04_022115F0: ; 0x022115F0
	.space 0x40

	.global UNK04_02211630
UNK04_02211630: ; 0x02211630
	.space 0x100

	.global UNK04_02211730
UNK04_02211730: ; 0x02211730
	.space 0x4

	.global UNK04_02211734
UNK04_02211734: ; 0x02211734
	.space 0x4

	.global UNK04_02211738
UNK04_02211738: ; 0x02211738
	.space 0x4

	.global UNK04_0221173C
UNK04_0221173C: ; 0x0221173C
	.space 0x4

	.global UNK04_02211740
UNK04_02211740: ; 0x02211740
	.space 0x4

	.global UNK04_02211744
UNK04_02211744: ; 0x02211744
	.space 0x4

	.global UNK04_02211748
UNK04_02211748: ; 0x02211748
	.space 0x4

	.global UNK04_0221174C
UNK04_0221174C: ; 0x0221174C
	.space 0x4

	.global UNK04_02211750
UNK04_02211750: ; 0x02211750
	.space 0x4

	.global UNK04_02211754
UNK04_02211754: ; 0x02211754
	.space 0x4

	.global UNK04_02211758
UNK04_02211758: ; 0x02211758
	.space 0x4

	.global UNK04_0221175C
UNK04_0221175C: ; 0x0221175C
	.space 0x4

	.global UNK04_02211760
UNK04_02211760: ; 0x02211760
	.space 0x4

	.global UNK04_02211764
UNK04_02211764: ; 0x02211764
	.space 0x4

	.global UNK04_02211768
UNK04_02211768: ; 0x02211768
	.space 0x4

	.global UNK04_0221176C
UNK04_0221176C: ; 0x0221176C
	.space 0xC

	.global UNK04_02211778
UNK04_02211778: ; 0x02211778
	.space 0xC

	.global UNK04_02211784
UNK04_02211784: ; 0x02211784
	.space 0x14

	.global UNK04_02211798
UNK04_02211798: ; 0x02211798
	.space 0x18

	.global UNK04_022117B0
UNK04_022117B0: ; 0x022117B0
	.space 0x1C

	.global UNK04_022117CC
UNK04_022117CC: ; 0x022117CC
	.space 0x24

	.global UNK04_022117F0
UNK04_022117F0: ; 0x022117F0
	.space 0x8

	.global UNK04_022117F8
UNK04_022117F8: ; 0x022117F8
	.space 0x34

	.global UNK04_0221182C
UNK04_0221182C: ; 0x0221182C
	.space 0xC

	.global UNK04_02211838
UNK04_02211838: ; 0x02211838
	.space 0x18

	.global UNK04_02211850
UNK04_02211850: ; 0x02211850
	.space 0x80

	.global UNK04_022118D0
UNK04_022118D0: ; 0x022118D0
	.space 0x4

	.global UNK04_022118D4
UNK04_022118D4: ; 0x022118D4
	.space 0x18

	.global UNK04_022118EC
UNK04_022118EC: ; 0x022118EC
	.space 0x18

; file boundary

	.global UNK04_02211904
UNK04_02211904: ; 0x02211904
	.space 0x4

	.global UNK04_02211908
UNK04_02211908: ; 0x02211908
	.space 0x4

	.global UNK04_0221190C
UNK04_0221190C: ; 0x0221190C
	.space 0x4

	.global UNK04_02211910
UNK04_02211910: ; 0x02211910
	.space 0x4

	.global UNK04_02211914
UNK04_02211914: ; 0x02211914
	.space 0x4

	.global UNK04_02211918
UNK04_02211918: ; 0x02211918
	.space 0x4

	.global UNK04_0221191C
UNK04_0221191C: ; 0x0221191C
	.space 0x4

	.global UNK04_02211920
UNK04_02211920: ; 0x02211920
	.space 0x4

	.global UNK04_02211924
UNK04_02211924: ; 0x02211924
	.space 0x4

	.global UNK04_02211928
UNK04_02211928: ; 0x02211928
	.space 0x4

	.global UNK04_0221192C
UNK04_0221192C: ; 0x0221192C
	.space 0x18

	.global UNK04_02211944
UNK04_02211944: ; 0x02211944
	.space 0x20

	.global UNK04_02211964
UNK04_02211964: ; 0x02211964
	.space 0xC0

	.global UNK04_02211A24
UNK04_02211A24: ; 0x02211A24
	.space 0x20

	.global UNK04_02211A44
UNK04_02211A44: ; 0x02211A44
	.space 0x9

	.global UNK04_02211A4D
UNK04_02211A4D: ; 0x02211A4D
	.space 0x413
