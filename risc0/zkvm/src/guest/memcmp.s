// Copyright 2026 RISC Zero, Inc.
//
// Licensed under the Apache License, Version 2.0, <LICENSE-APACHE or
// http://apache.org/licenses/LICENSE-2.0> or the MIT license <LICENSE-MIT or
// http://opensource.org/licenses/MIT>, at your option. This file may not be
// copied, modified, or distributed except according to those terms.
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//
// SPDX-License-Identifier: Apache-2.0 OR MIT
//
// Generated from memcmp.c with GCC 13.2.0 from the RISC Zero C++ toolchain
// 2024.1.5:
//
// riscv32-unknown-elf-gcc -march=rv32im -mabi=ilp32 -O3 -S memcmp.c \
//     -nostdlib -fno-builtin -funroll-loops -o memcmp.s
//
// Local labels were then suffixed to avoid conflicts with the other assembly
// files included in the same global_asm! block:
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
	li	a5,7
	bleu	a2,a5,.L9memcmp
	xor	t0,a1,a0
	andi	t1,t0,3
	mv	a6,a0
	bne	t1,zero,.L114memcmp
	andi	a3,a0,3
	bne	a3,zero,.L8memcmp
	j	.L6memcmp
.L7memcmp:
	addi	a1,a1,1
	beq	a7,zero,.L115memcmp
.L8memcmp:
	lbu	t2,0(a0)
	lbu	a3,0(a1)
	addi	a0,a0,1
	andi	a7,a0,3
	beq	t2,a3,.L7memcmp
.L110memcmp:
	sub	a0,t2,a3
	ret
.L115memcmp:
	add	a2,a6,a2
	sub	a2,a2,a0
	li	a4,3
	bgtu	a2,a4,.L6memcmp
.L9memcmp:
	addi	t2,a2,-1
	beq	a2,zero,.L111memcmp
.L3memcmp:
	addi	a2,t2,1
	andi	t3,a2,7
	add	t4,a0,a2
	beq	t3,zero,.L16memcmp
	li	t5,1
	beq	t3,t5,.L98memcmp
	li	t6,2
	beq	t3,t6,.L99memcmp
	li	t0,3
	beq	t3,t0,.L100memcmp
	li	a5,4
	beq	t3,a5,.L101memcmp
	li	t1,5
	beq	t3,t1,.L102memcmp
	li	a6,6
	beq	t3,a6,.L103memcmp
	lbu	t2,0(a0)
	lbu	a3,0(a1)
	addi	a0,a0,1
	addi	a1,a1,1
	bne	t2,a3,.L110memcmp
.L103memcmp:
	lbu	t2,0(a0)
	lbu	a3,0(a1)
	addi	a0,a0,1
	addi	a1,a1,1
	bne	t2,a3,.L110memcmp
.L102memcmp:
	lbu	t2,0(a0)
	lbu	a3,0(a1)
	addi	a0,a0,1
	addi	a1,a1,1
	bne	t2,a3,.L110memcmp
.L101memcmp:
	lbu	t2,0(a0)
	lbu	a3,0(a1)
	addi	a0,a0,1
	addi	a1,a1,1
	bne	t2,a3,.L110memcmp
.L100memcmp:
	lbu	t2,0(a0)
	lbu	a3,0(a1)
	addi	a0,a0,1
	addi	a1,a1,1
	bne	t2,a3,.L110memcmp
.L99memcmp:
	lbu	t2,0(a0)
	lbu	a3,0(a1)
	addi	a0,a0,1
	addi	a1,a1,1
	bne	t2,a3,.L110memcmp
.L98memcmp:
	lbu	t2,0(a0)
	lbu	a3,0(a1)
	bne	t2,a3,.L110memcmp
	addi	a0,a0,1
	addi	a1,a1,1
	beq	a0,t4,.L111memcmp
.L16memcmp:
	lbu	t2,0(a0)
	lbu	a3,0(a1)
	bne	t2,a3,.L110memcmp
	lbu	t2,1(a0)
	lbu	a3,1(a1)
	bne	t2,a3,.L110memcmp
	lbu	t2,2(a0)
	lbu	a3,2(a1)
	bne	t2,a3,.L110memcmp
	lbu	t2,3(a0)
	lbu	a3,3(a1)
	bne	t2,a3,.L110memcmp
	lbu	t2,4(a0)
	lbu	a3,4(a1)
	bne	t2,a3,.L110memcmp
	lbu	t2,5(a0)
	lbu	a3,5(a1)
	bne	t2,a3,.L110memcmp
	lbu	t2,6(a0)
	lbu	a3,6(a1)
	bne	t2,a3,.L110memcmp
	lbu	t2,7(a0)
	lbu	a3,7(a1)
	addi	a0,a0,8
	addi	a1,a1,8
	bne	t2,a3,.L110memcmp
	bne	a0,t4,.L16memcmp
.L111memcmp:
	li	a0,0
	ret
.L114memcmp:
	addi	t2,a2,-1
	j	.L3memcmp
.L6memcmp:
	addi	t3,a2,-4
	srli	t4,t3,2
	addi	t5,t4,1
	andi	t6,t5,7
	li	t0,3
	beq	t6,zero,.L14memcmp
	li	a5,1
	beq	t6,a5,.L92memcmp
	li	t1,2
	beq	t6,t1,.L93memcmp
	beq	t6,t0,.L94memcmp
	li	a6,4
	beq	t6,a6,.L95memcmp
	li	t2,5
	beq	t6,t2,.L96memcmp
	li	a3,6
	beq	t6,a3,.L97memcmp
	lw	a7,0(a0)
	lw	a4,0(a1)
	addi	a0,a0,4
	addi	a1,a1,4
	mv	a2,t3
	bne	a7,a4,.L108memcmp
.L97memcmp:
	lw	a7,0(a0)
	lw	a4,0(a1)
	addi	a0,a0,4
	addi	a1,a1,4
	addi	a2,a2,-4
	bne	a7,a4,.L108memcmp
.L96memcmp:
	lw	a7,0(a0)
	lw	a4,0(a1)
	addi	a0,a0,4
	addi	a1,a1,4
	addi	a2,a2,-4
	bne	a7,a4,.L108memcmp
.L95memcmp:
	lw	a7,0(a0)
	lw	a4,0(a1)
	addi	a0,a0,4
	addi	a1,a1,4
	addi	a2,a2,-4
	bne	a7,a4,.L108memcmp
.L94memcmp:
	lw	a7,0(a0)
	lw	a4,0(a1)
	addi	a0,a0,4
	addi	a1,a1,4
	addi	a2,a2,-4
	bne	a7,a4,.L108memcmp
.L93memcmp:
	lw	a7,0(a0)
	lw	a4,0(a1)
	addi	a0,a0,4
	addi	a1,a1,4
	addi	a2,a2,-4
	bne	a7,a4,.L108memcmp
.L92memcmp:
	lw	a7,0(a0)
	lw	a4,0(a1)
	bne	a7,a4,.L108memcmp
	addi	a2,a2,-4
	addi	a0,a0,4
	addi	a1,a1,4
	bleu	a2,t0,.L9memcmp
.L14memcmp:
	lw	a7,0(a0)
	lw	a4,0(a1)
	addi	a2,a2,-32
	bne	a7,a4,.L108memcmp
	lw	a7,4(a0)
	lw	a4,4(a1)
	bne	a7,a4,.L108memcmp
	lw	a7,8(a0)
	lw	a4,8(a1)
	bne	a7,a4,.L108memcmp
	lw	a7,12(a0)
	lw	a4,12(a1)
	bne	a7,a4,.L108memcmp
	lw	a7,16(a0)
	lw	a4,16(a1)
	bne	a7,a4,.L108memcmp
	lw	a7,20(a0)
	lw	a4,20(a1)
	bne	a7,a4,.L108memcmp
	lw	a7,24(a0)
	lw	a4,24(a1)
	bne	a7,a4,.L108memcmp
	lw	a7,28(a0)
	lw	a4,28(a1)
	addi	a0,a0,32
	addi	a1,a1,32
	bne	a7,a4,.L108memcmp
	bgtu	a2,t0,.L14memcmp
	j	.L9memcmp
.L108memcmp:
	andi	a0,a7,0xff
	andi	a1,a4,0xff
	bne	a0,a1,.L116memcmp
	srli	a2,a7,8
	srli	t5,a4,8
	andi	t3,a2,0xff
	andi	t4,t5,0xff
	bne	t3,t4,.L112memcmp
	srli	a2,a7,16
	srli	t5,a4,16
	andi	t6,a2,0xff
	andi	t0,t5,0xff
	beq	t6,t0,.L13memcmp
.L112memcmp:
	andi	a5,a2,255
	andi	t1,t5,255
	sub	a0,a5,t1
	ret
.L116memcmp:
	andi	a6,a7,255
	andi	t2,a4,255
	sub	a0,a6,t2
	ret
.L13memcmp:
	srli	a7,a7,24
	srli	a4,a4,24
	sub	a0,a7,a4
	ret
	.size	memcmp, .-memcmp
	.align	2
	.globl	bcmp
	.type	bcmp, @function
bcmp:
	tail	memcmp
	.size	bcmp, .-bcmp
	.ident	"GCC: (gc891d8dc23e) 13.2.0"
