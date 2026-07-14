// Based on musl libc commit 37e18b7bf307fa4a8c745feebfcba54a0ba74f30:
//
// src/string/memcmp.c
//
// Copyright (c) 2005-2020 Rich Felker, et al.
// SPDX-License-Identifier: MIT
//
// Generated from the adjacent memcmp.c with GCC 13.2.0 from the RISC Zero
// C++ toolchain 2024.1.5:
//
// riscv32-unknown-elf-gcc -march=rv32im -mabi=ilp32 -O3 -S memcmp.c \
//     -nostdlib -fno-builtin -funroll-loops -o memcmp.s
//
// Local labels were then suffixed to avoid conflicts with the other assembly
// files included through global_asm!:
//
// perl -pi -e 's/\.L([0-9]+)/.L$1memcmp/g' memcmp.s

	.file	"memcmp.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	2
	.globl	memcmp
	.type	memcmp, @function
memcmp:
	beq	a2,zero,.L6memcmp
	andi	a5,a2,7
	addi	a3,a2,-1
	beq	a5,zero,.L2memcmp
	li	a4,1
	beq	a5,a4,.L43memcmp
	li	t0,2
	beq	a5,t0,.L44memcmp
	li	t1,3
	beq	a5,t1,.L45memcmp
	li	t2,4
	beq	a5,t2,.L46memcmp
	li	a6,5
	beq	a5,a6,.L47memcmp
	li	a7,6
	bne	a5,a7,.L56memcmp
.L48memcmp:
	lbu	t3,0(a0)
	lbu	t4,0(a1)
	addi	a2,a2,-1
	addi	a0,a0,1
	addi	a1,a1,1
	bne	t3,t4,.L54memcmp
.L47memcmp:
	lbu	t3,0(a0)
	lbu	t4,0(a1)
	addi	a2,a2,-1
	addi	a0,a0,1
	addi	a1,a1,1
	bne	t3,t4,.L54memcmp
.L46memcmp:
	lbu	t3,0(a0)
	lbu	t4,0(a1)
	addi	a2,a2,-1
	addi	a0,a0,1
	addi	a1,a1,1
	bne	t3,t4,.L54memcmp
.L45memcmp:
	lbu	t3,0(a0)
	lbu	t4,0(a1)
	addi	a2,a2,-1
	addi	a0,a0,1
	addi	a1,a1,1
	bne	t3,t4,.L54memcmp
.L44memcmp:
	lbu	t3,0(a0)
	lbu	t4,0(a1)
	addi	a2,a2,-1
	addi	a0,a0,1
	addi	a1,a1,1
	bne	t3,t4,.L54memcmp
.L43memcmp:
	lbu	t3,0(a0)
	lbu	t4,0(a1)
	bne	t3,t4,.L54memcmp
	addi	a2,a2,-1
	addi	a0,a0,1
	addi	a1,a1,1
	beq	a2,zero,.L6memcmp
.L2memcmp:
	lbu	t3,0(a0)
	lbu	t4,0(a1)
	addi	a2,a2,-8
	bne	t3,t4,.L54memcmp
	lbu	t3,1(a0)
	lbu	t4,1(a1)
	bne	t3,t4,.L54memcmp
	lbu	t3,2(a0)
	lbu	t4,2(a1)
	bne	t3,t4,.L54memcmp
	lbu	t3,3(a0)
	lbu	t4,3(a1)
	bne	t3,t4,.L54memcmp
	lbu	t3,4(a0)
	lbu	t4,4(a1)
	bne	t3,t4,.L54memcmp
	lbu	t3,5(a0)
	lbu	t4,5(a1)
	bne	t3,t4,.L54memcmp
	lbu	t3,6(a0)
	lbu	t4,6(a1)
	bne	t3,t4,.L54memcmp
	lbu	t3,7(a0)
	lbu	t4,7(a1)
	addi	a0,a0,8
	addi	a1,a1,8
	bne	t3,t4,.L54memcmp
	bne	a2,zero,.L2memcmp
.L6memcmp:
	li	a0,0
	ret
.L56memcmp:
	lbu	t3,0(a0)
	lbu	t4,0(a1)
	mv	a2,a3
	addi	a0,a0,1
	addi	a1,a1,1
	beq	t3,t4,.L48memcmp
.L54memcmp:
	sub	a0,t3,t4
	ret
	.size	memcmp, .-memcmp
	.ident	"GCC: (gc891d8dc23e) 13.2.0"
